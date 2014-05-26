/******************************************************************************
 *  Copyright Cambridge Silicon Radio Limited 2012-2014
 *  Part of CSR uEnergy SDK 2.3.0
 *  Application version 2.3.0.0
 *
 *  FILE
 *      heart_rate_service.c
 *
 * DESCRIPTION
 *      This file defines routines for using Heart rate service.
 *
 ****************************************************************************/

/*============================================================================*
 *  SDK Header Files
 *============================================================================*/

#include <gatt.h>
#include <gatt_prim.h>
#include <buf_utils.h>
#include <debug.h>          /* Simple host interface to the UART driver */
/*============================================================================*
 *  Local Header Files
 *============================================================================*/

#include "app_gatt.h"
#include "heart_rate_service.h"
#include "app_gatt_db.h"
#include "nvm_access.h"
#include "hr_sensor_hw.h"
/*============================================================================*
 *  Private Data Types
 *============================================================================*/

/*Heart Rate service data type */
typedef struct
{
    /* Energy Expended Value */
    uint16                         energy_expended;

    /* Boolean flag which tells if the remote HR client has reset the energy 
     * expended flag. In a normal scenario where a HR client does not reset the 
     * Energy expended, the application sends Energy expended data at regular 
     * intervals in HR Measurements. but in a scenario where the connected HR 
     * client resets the Energy expended, the application should include energy 
     * expended data in the very next measurement notification. The following 
     * variable will tell if it should send energy expended data in the 
     * measurement notification.
     */
    bool                           reset_energy_expended_received;

    /* Heart rate measurement client configuration */
    gatt_client_config             hr_meas_client_config; 

    /* Offset at which Battery data is stored in NVM */
    uint16                         nvm_offset;

} HR_SERV_DATA_T;


    
    /*meas_report[0] = 0x00; meas_report[1] = 0x1; meas_report[2] = 0x02; meas_report[3] = 0x03;
    meas_report[4] = 0x04; meas_report[5] = 0x05; meas_report[6] = 0x06; meas_report[7] = 0x07;
    meas_report[8] = 0x08; meas_report[9] = 0x09; meas_report[10] = 0x0a;
    meas_report[10] = 0x0a; meas_report[11] = 0x0a; meas_report[12] = 0x0b;
    meas_report[13] = 0x0c; meas_report[14] = 0x0d; meas_report[15] = 0x0e;
    meas_report[16] = 0x0f; meas_report[17] = 0x10; meas_report[18] = 0x11;
    meas_report[19] = 0x12; */


/*============================================================================*
 *  Private Data
 *============================================================================*/

/* Heart Rate service data instance */
static HR_SERV_DATA_T g_hr_serv_data;

int credits = 8;
/* Heart Rate Control Point Type */
typedef enum
{

    hr_control_point_reserved      = 0x00,
    hr_control_point_reset_energy  = 0x01

} hr_control_point;

/*============================================================================*
 *  Private Definitions
 *============================================================================*/

/* Number of words of memory used by Heart Rate Service */
#define HEART_RATE_SERVICE_NVM_MEMORY_WORDS               (2)

/* The offset of data being stored in NVM for HR service. This offset is 
 * added to HR service offset to NVM region to get the absolute offset
 * at which this data is stored in NVM
 */
#define HR_NVM_HR_MEAS_CLIENT_CONFIG_OFFSET               (0)

#define HR_NVM_ENERGY_EXPENDED_OFFSET                     (1)

/*============================================================================*
 *  Public Function Implementations
 *============================================================================*/

/*----------------------------------------------------------------------------*
 *  NAME
 *      HRDataInit
 *
 *  DESCRIPTION
 *      This function is used to initialise heart rate service data 
 *      structure.
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern void HRDataInit(void)
{
    if(!AppIsDeviceBonded())
    {
        g_hr_serv_data.hr_meas_client_config = gatt_client_config_none;
    }

    /* As per section 3.1.1.3 of HR Service spec ver 1.0, "The energy expended 
     * field represents the accumulated energy expended in kilo Joules since the 
     * last time it was reset". So, there is a need to maintain energy expended 
     * characteristic value across power cycles. As per application design, it 
     * will be sufficient to write energy expended value whenever device 
     * disconnects with the remote host (bonded or not-bonded).
     */

    /* Write Energy Expended to NVM */
    Nvm_Write(&g_hr_serv_data.energy_expended, 
              sizeof(g_hr_serv_data.energy_expended),
              g_hr_serv_data.nvm_offset + 
              HR_NVM_ENERGY_EXPENDED_OFFSET);


}


/*----------------------------------------------------------------------------*
 *  NAME
 *      HRInitChipReset
 *
 *  DESCRIPTION
 *      This function is used to initialise heart rate service data 
 *      structure at chip reset
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern void HRInitChipReset(void)
{
    /* Reset energy expended value at chip reset for initialisation */
    g_hr_serv_data.energy_expended = 0;
    g_hr_serv_data.reset_energy_expended_received = FALSE;
}


/*----------------------------------------------------------------------------*
 *  NAME
 *      IsHeartRateNotifyEnabled
 *
 *  DESCRIPTION
 *      This function returns whether notifications are enabled for heart rate 
 *      measurement characteristic.
 *
 *  RETURNS
 *      TRUE/FALSE: Notification configured or not
 *
 *---------------------------------------------------------------------------*/

extern bool IsHeartRateNotifyEnabled(void)
{
    return (g_hr_serv_data.hr_meas_client_config & 
                    gatt_client_config_notification);
}


/*----------------------------------------------------------------------------*
 *  NAME
 *      HeartRateIncEnergyExpended
 *
 *  DESCRIPTION
 *      This function increments energy expended value for every HR measurement
 *
 *  RETURNS
 *      Nothing
 *
 *---------------------------------------------------------------------------*/

extern void HeartRateIncEnergyExpended(uint16 energy_exp)
{
    /* Energy expended in Kilo Joules */

    if(((uint32)g_hr_serv_data.energy_expended + energy_exp) > 
                            MAX_ENERGY_EXPENDED_IN_KJOULES)
    {
        /* Since Energy Expended is a UINT16, the highest value that can be 
         * represented is 65535 kilo Joules. If the maximum value of 65535 
         * kilo Joules is attained (0xFFFF), the field value should remain at 
         * 0xFFFF so that the client can be made aware that a reset of the 
         * Energy Expended Field is require.
         */
        g_hr_serv_data.energy_expended = MAX_ENERGY_EXPENDED_IN_KJOULES;
    }
    else
    {
        g_hr_serv_data.energy_expended += energy_exp;
    }

}


/*----------------------------------------------------------------------------*
 *  NAME
 *      HeartRateGetEnergyExpended
 *
 *  DESCRIPTION
 *      This function returns energy expended value
 *
 *  RETURNS
 *      Energy expended value.
 *
 *---------------------------------------------------------------------------*/

extern uint16 HeartRateGetEnergyExpended(void)
{
    return g_hr_serv_data.energy_expended;
}


/*----------------------------------------------------------------------------*
 *  NAME
 *      HeartRateReadDataFromNVM
 *
 *  DESCRIPTION
 *      This function is used to read heart rate service specific data store in 
 *      NVM
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern void HeartRateReadDataFromNVM(bool nvm_fresh_start, uint16 *p_offset)
{

     g_hr_serv_data.nvm_offset = *p_offset;

    /* Read NVM only if devices are bonded */
    if(AppIsDeviceBonded())
    {

        /* Read Heart Rate Measurement Client Configuration */
        Nvm_Read((uint16*)&g_hr_serv_data.hr_meas_client_config,
                 sizeof(g_hr_serv_data.hr_meas_client_config),
                 g_hr_serv_data.nvm_offset +
                 HR_NVM_HR_MEAS_CLIENT_CONFIG_OFFSET);

    }

    if(nvm_fresh_start)
    {
        /* As NVM is being written for the first time, update NVM with the 
         * energy expended value [initialised in HRInitChipReset() function]
         */

        Nvm_Write(&g_hr_serv_data.energy_expended, 
                 sizeof(g_hr_serv_data.energy_expended),
                 g_hr_serv_data.nvm_offset +
                 HR_NVM_ENERGY_EXPENDED_OFFSET);
    }
    else
    {
        /* Read Energy Expended charcteristic value */
        Nvm_Read(&g_hr_serv_data.energy_expended,
                 sizeof(g_hr_serv_data.energy_expended),
                 g_hr_serv_data.nvm_offset +
                 HR_NVM_ENERGY_EXPENDED_OFFSET);
    }

    /* Increment the offset by the number of words of NVM memory required 
     * by heart rate service 
     */
    *p_offset += HEART_RATE_SERVICE_NVM_MEMORY_WORDS;

}


/*----------------------------------------------------------------------------*
 *  NAME
 *      HeartRateSendMeasValue
 *
 *  DESCRIPTION
 *      This functions sends the heart rate measurement value to the connected 
 *      client.
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/
static uint8 test = 0; 
static uint8 meas_report[20] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19};
extern void HeartRateSendMeasValue(uint16 ucid, uint8 hrm_length, 
                                   uint8 *p_hr_meas)
{
int i = 0;
     meas_report[1] = test++;
    if(credits < 8)
        return;
       DebugWriteString("\n\rTransmit..");  
    for (i = 0; i < credits; i++) {
       
        GattCharValueNotification(ucid, 
              HANDLE_HEART_RATE_MEASUREMENT, 
              (uint16)20, 
              meas_report);  /* heart rate */
    }
    credits = 0;

}


/*----------------------------------------------------------------------------*
 *  NAME
 *      HeartRateHandleAccessRead
 *
 *  DESCRIPTION
 *      This function handles read operation on heart rate service attributes
 *      maintained by the application and responds with the GATT_ACCESS_RSP 
 *      message.
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern void HeartRateHandleAccessRead(GATT_ACCESS_IND_T *p_ind)
{
    /* Initialise to 2 octets for Client Configuration */
    uint16 length = 2;
    uint8  value[2];
    uint8  *p_val = NULL;
    sys_status rc = sys_status_success;

    switch(p_ind->handle)
    {
        /* Client configuration of the Heart Rate Measurement Characteristic is 
         * being read.
         */
        case HANDLE_HEART_RATE_MEASUREMENT_C_CFG:
        {
            p_val = value;

            /* copy the client configuration value in response buffer */
            BufWriteUint16(&p_val, g_hr_serv_data.hr_meas_client_config);
        }
        break;

        default:
        {   
            /* Let the firmware handle.the request
             */
            rc = gatt_status_irq_proceed;
        }
        break;

    }

    /* Send GATT Response for the received request */
    GattAccessRsp(p_ind->cid, p_ind->handle, rc,
                          length, value);

}


/*----------------------------------------------------------------------------*
 *  NAME
 *      HeartRateHandleAccessWrite
 *
 *  DESCRIPTION
 *      This function handles write operation on heart rate service attributes 
 *      maintained by the application.and responds with the GATT_ACCESS_RSP 
 *      message.
 *
 *  RETURNS
 *      Nothing
 *
 *---------------------------------------------------------------------------*/

extern void HeartRateHandleAccessWrite(GATT_ACCESS_IND_T *p_ind)
{
    uint8 *p_value = p_ind->value;
    gatt_client_config client_config;
    sys_status rc = sys_status_success;

    switch(p_ind->handle)
    {
        /* Heart Rate measurement characteristic client configuration is being 
         * written 
         */
        case HANDLE_HEART_RATE_MEASUREMENT_C_CFG:
        {
            client_config = BufReadUint16(&p_value);


            /* Client Configuration is bit field value so ideally bitwise 
             * comparison should be used but since the application supports only 
             * notifications, direct comparison is being used.
             */
            if((client_config == gatt_client_config_notification) ||
               (client_config == gatt_client_config_none))
            {
                /* Store the new client configuration */
                g_hr_serv_data.hr_meas_client_config = client_config;

                /* Write Heart Rate Measurement Client configuration to NVM if 
                 * the device is bonded.
                 */
                if(AppIsDeviceBonded())
                {
                     Nvm_Write((uint16*)&client_config,
                              sizeof(client_config),
                              g_hr_serv_data.nvm_offset + 
                              HR_NVM_HR_MEAS_CLIENT_CONFIG_OFFSET);
                }

                /* Start sending the HR measurement notifications if they are 
                 * not being sent currently. 
                 */
                StartSendingHRMeasurements();
            }
            else
            {
                /* INDICATION or RESERVED */

                /* Return Error as only Notifications are supported */
                rc = gatt_status_desc_improper_config;
            }

            break;
        }

        /* Heart Rate Control point is being written */
        case HANDLE_HEART_RATE_CONTROL_POINT:
        {
            /* Extract the written value */
            uint8 cntl_point_val = BufReadUint8(&p_value);

            /* Check if the HR client has reset the expended energy. */
            if(cntl_point_val == hr_control_point_reset_energy)
            {
                /* Yes, it has. Make a note of it. */
                g_hr_serv_data.energy_expended = 0;
                g_hr_serv_data.reset_energy_expended_received = TRUE;
            }
            else /* Reserved Value */
            {
                rc  = gatt_status_desc_improper_config;
            }

            break;
        }

        default:
        {
            /* Write is not permitted on any other characteristic/attribute */
            rc = gatt_status_write_not_permitted;
            break;
        }
    }

    /* Send ACCESS RESPONSE */
    GattAccessRsp(p_ind->cid, p_ind->handle, rc, 0, NULL);

}


/*----------------------------------------------------------------------------*
 *  NAME
 *      HeartRateCheckHandleRange
 *
 *  DESCRIPTION
 *      This function is used to check if the handle belongs to the heart rate 
 *      service
 *
 *  RETURNS
 *      Boolean - Indicating whether handle falls in range or not.
 *
 *---------------------------------------------------------------------------*/

extern bool HeartRateCheckHandleRange(uint16 handle)
{
    return ((handle >= HANDLE_HEART_RATE_SERVICE) &&
            (handle <= HANDLE_HEART_RATE_SERVICE_END))
            ? TRUE : FALSE;
}


/*----------------------------------------------------------------------------*
 *  NAME
 *      HeartRateBondingNotify
 *
 *  DESCRIPTION
 *      This function is used by application to notify bonding status to 
 *      heart rate service
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern void HeartRateBondingNotify(void)
{

    /* Write data to NVM if bond is established */
    if(AppIsDeviceBonded())
    {
        /* Write to NVM the client configuration value of HR measurement 
         * state if it was configured prior to bonding 
         */
        Nvm_Write((uint16*)&g_hr_serv_data.hr_meas_client_config, 
                  sizeof(g_hr_serv_data.hr_meas_client_config),
                  g_hr_serv_data.nvm_offset + 
                  HR_NVM_HR_MEAS_CLIENT_CONFIG_OFFSET);
    }

}


/*----------------------------------------------------------------------------*
 *  NAME
 *      HasExpendedEnergyBeenReset
 *
 *  DESCRIPTION
 *      This function tells if the remote HR client has reset the Energy 
 *      expended.
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern bool HasExpendedEnergyBeenReset(void)
{
    return(g_hr_serv_data.reset_energy_expended_received);
}

/*----------------------------------------------------------------------------*
 *  NAME
 *      ClearTheEnergyExpendedResetFlag
 *
 *  DESCRIPTION
 *      This function resets the Reset Energy Expended flag.
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern void ClearTheEnergyExpendedResetFlag(void)
{
    g_hr_serv_data.reset_energy_expended_received = FALSE;
}


#ifdef NVM_TYPE_FLASH
/*----------------------------------------------------------------------------*
 *  NAME
 *      WriteHRServiceDataInNvm
 *
 *  DESCRIPTION
 *      This function writes HR service data in NVM
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern void WriteHRServiceDataInNvm(void)
{
    /* Write to NVM the client configuration value. */
    Nvm_Write((uint16*)&g_hr_serv_data.hr_meas_client_config, 
              sizeof(g_hr_serv_data.hr_meas_client_config),
              g_hr_serv_data.nvm_offset + 
              HR_NVM_HR_MEAS_CLIENT_CONFIG_OFFSET);

    /* Write Energy Expended to NVM */
    Nvm_Write(&g_hr_serv_data.energy_expended, 
              sizeof(g_hr_serv_data.energy_expended),
              g_hr_serv_data.nvm_offset + 
              HR_NVM_ENERGY_EXPENDED_OFFSET);

}
#endif /* NVM_TYPE_FLASH */

