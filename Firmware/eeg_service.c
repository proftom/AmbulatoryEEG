/******************************************************************************
 *  Copyright Cambridge Silicon Radio Limited 2012-2014
 *  Part of CSR uEnergy SDK 2.3.0
 *  Application version 2.3.0.0
 *
 *  FILE
 *      eeg_service.c
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
#include <debug.h>
#include <aio.h>
#include <i2c.h>
#include <timer.h> 
/* Simple host interface to the UART driver */
/*============================================================================*
 *  Local Header Files
 *============================================================================*/

#include "app_gatt.h"
#include "eeg_service.h"
#include "app_gatt_db.h"
#include "nvm_access.h"
#include "eeg_sensor_hw.h"
/*============================================================================*
 *  Private Data Types
 *============================================================================*/
#define DEBUG
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
    
    uint16                         channel_map; 
    
    uint16                         acquisition_rate;
    
    timer_id                       acq_tmr;
    
    uint8                          measurement_buffer_1[160];
   
    uint8                          measurement_buffer_2[160];
    
    uint8                          current_packet;
    
    uint8                          current_buffer;

} EEG_SERV_DATA_T;


    
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
static EEG_SERV_DATA_T g_eeg_serv_data;

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
        g_eeg_serv_data.hr_meas_client_config = gatt_client_config_none;
    }

    /* As per section 3.1.1.3 of HR Service spec ver 1.0, "The energy expended 
     * field represents the accumulated energy expended in kilo Joules since the 
     * last time it was reset". So, there is a need to maintain energy expended 
     * characteristic value across power cycles. As per application design, it 
     * will be sufficient to write energy expended value whenever device 
     * disconnects with the remote host (bonded or not-bonded).
     */

    /* Write Energy Expended to NVM */
    Nvm_Write(&g_eeg_serv_data.energy_expended, 
              sizeof(g_eeg_serv_data.energy_expended),
              g_eeg_serv_data.nvm_offset + 
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
    g_eeg_serv_data.energy_expended = 0;
    g_eeg_serv_data.reset_energy_expended_received = FALSE;
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
    return (g_eeg_serv_data.hr_meas_client_config & 
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

        g_eeg_serv_data.energy_expended += energy_exp;
    

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
    return g_eeg_serv_data.energy_expended;
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

     g_eeg_serv_data.nvm_offset = *p_offset;

    /* Read NVM only if devices are bonded */
    if(AppIsDeviceBonded())
    {

        /* Read Heart Rate Measurement Client Configuration */
        Nvm_Read((uint16*)&g_eeg_serv_data.hr_meas_client_config,
                 sizeof(g_eeg_serv_data.hr_meas_client_config),
                 g_eeg_serv_data.nvm_offset +
                 HR_NVM_HR_MEAS_CLIENT_CONFIG_OFFSET);

    }

    if(nvm_fresh_start)
    {
        /* As NVM is being written for the first time, update NVM with the 
         * energy expended value [initialised in HRInitChipReset() function]
         */

        Nvm_Write(&g_eeg_serv_data.energy_expended, 
                 sizeof(g_eeg_serv_data.energy_expended),
                 g_eeg_serv_data.nvm_offset +
                 HR_NVM_ENERGY_EXPENDED_OFFSET);
    }
    else
    {
        /* Read Energy Expended charcteristic value */
        Nvm_Read(&g_eeg_serv_data.energy_expended,
                 sizeof(g_eeg_serv_data.energy_expended),
                 g_eeg_serv_data.nvm_offset +
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
#ifdef DEBUG
static uint8 writeASCIICodedNumber(uint32 value)
{
#define BUFFER_SIZE 11          /* Buffer size required to hold maximum value */
    
    uint8  i = BUFFER_SIZE;     /* Loop counter */
    uint32 remainder = value;   /* Remaining value to send */
    char   buffer[BUFFER_SIZE]; /* Buffer for ASCII string */

    /* Ensure the string is correctly terminated */    
    buffer[--i] = '\0';
    
    /* Loop at least once and until the whole value has been converted */
    do
    {
        /* Convert the unit value into ASCII and store in the buffer */
        buffer[--i] = (remainder % 10) + '0';
        
        /* Shift the value right one decimal */
        remainder /= 10;
    } while (remainder > 0);

    /* Send the string to the UART */
    DebugWriteString(buffer + i);
    
    /* Return length of ASCII string sent to UART */
    return (BUFFER_SIZE - 1) - i;
}
#endif

static uint8 meas_report[20] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19};
extern void HeartRateSendMeasValue(uint16 ucid, uint8 hrm_length, 
                                   uint8 *p_hr_meas)
{
int i = 0;
     
    /*if(credits < 8)
        return;
        
    meas_report[1] = test++;

    uint16 testy  =  AioRead((aio_select) 1);
    meas_report[1] = testy;
    uint16* add = &testy;
    add++;
    meas_report[2] = *add;*/    

    
    
    for (i = 0; i < 4; i++) {
       /*DebugWriteString("\n\rTransmit.."); */
       GattCharValueNotification(ucid, 
              HANDLE_EEG_MEASUREMENT, 
              (uint16)16, 
              meas_report);   
       credits--;
    }
    /*credits = 0;*/

}

extern int count(int a){ return a == 0 ? 0 : 1 + count(a&(a-1)); }

extern void acquireData(timer_id tid) {
    
    uint8 channelsActive = count(g_eeg_serv_data.channel_map);
    
    TimerDelete(g_eeg_serv_data.acq_tmr);
    g_eeg_serv_data.acq_tmr = TimerCreate((uint32) (1000000/g_eeg_serv_data.acquisition_rate),
                                 TRUE, 
                                 acquireData);     
    meas_report[3] = channelsActive;    
    uint8 i = 0;    
    for(i = 0; i < channelsActive; i++)
    {
        
    }
        
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
        case HANDLE_EEG_MEASUREMENT_C_CFG:
        {
            p_val = value;

            /* copy the client configuration value in response buffer */
            BufWriteUint16(&p_val, g_eeg_serv_data.hr_meas_client_config);
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
        case HANDLE_EEG_MEASUREMENT_C_CFG:
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
                g_eeg_serv_data.hr_meas_client_config = client_config;

                /* Write Heart Rate Measurement Client configuration to NVM if 
                 * the device is bonded.
                 */
                if(AppIsDeviceBonded())
                {
                     Nvm_Write((uint16*)&client_config,
                              sizeof(client_config),
                              g_eeg_serv_data.nvm_offset + 
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

        /* EEG channels Control point is being written */
        case HANDLE_EEG_CHANNELS:
        {
            /* Extract the written value */
            g_eeg_serv_data.channel_map = BufReadUint16(&p_value);
            DebugWriteString("\n\rChannel map updated");
            break;
        }
		
		case HANDLE_EEG_ACQUISITION_RATE:
		{
            g_eeg_serv_data.acquisition_rate = BufReadUint16(&p_value);
            TimerDelete(g_eeg_serv_data.acq_tmr);
            g_eeg_serv_data.acq_tmr = TimerCreate((uint32) (1000000/g_eeg_serv_data.acquisition_rate),
                                 TRUE, 
                                 acquireData); 
			DebugWriteString("\n\rAcq Rate changed");
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
    return ((handle >= HANDLE_EEG_SERVICE) &&
            (handle <= HANDLE_EEG_SERVICE_END))
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
        Nvm_Write((uint16*)&g_eeg_serv_data.hr_meas_client_config, 
                  sizeof(g_eeg_serv_data.hr_meas_client_config),
                  g_eeg_serv_data.nvm_offset + 
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
    return(g_eeg_serv_data.reset_energy_expended_received);
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
    g_eeg_serv_data.reset_energy_expended_received = FALSE;
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
    Nvm_Write((uint16*)&g_eeg_serv_data.hr_meas_client_config, 
              sizeof(g_eeg_serv_data.hr_meas_client_config),
              g_eeg_serv_data.nvm_offset + 
              HR_NVM_HR_MEAS_CLIENT_CONFIG_OFFSET);

    /* Write Energy Expended to NVM */
    Nvm_Write(&g_eeg_serv_data.energy_expended, 
              sizeof(g_eeg_serv_data.energy_expended),
              g_eeg_serv_data.nvm_offset + 
              HR_NVM_ENERGY_EXPENDED_OFFSET);

}
#endif /* NVM_TYPE_FLASH */

static int bitcount(uint8 byte)
{ 
      int bitCount=0;
      while(byte)
      {
           bitCount += byte & 0x1u;
           byte >>= 1;
      }
      return bitCount;
 }

extern void readChannels(uint8 channel_map, uint8 *data) {

    I2cReset();
    I2cRawCommand(i2c_cmd_send_start, TRUE, I2C_WAIT_CMD_TIMEOUT);
    I2cRawWriteByte((0b0100011 << 1) | 0);
    I2cRawCommand(i2c_cmd_wait_ack, TRUE, I2C_WAIT_ACK_TIMEOUT);
    I2cRawWriteByte(0b01110010);
    I2cRawCommand(i2c_cmd_wait_ack, TRUE, I2C_WAIT_ACK_TIMEOUT);  
    /*Channel map*/
    I2cRawWriteByte((channel_map >> 4) & 0x0F);
    I2cRawCommand(i2c_cmd_wait_ack, TRUE, I2C_WAIT_ACK_TIMEOUT);  
    I2cRawWriteByte(((channel_map << 4) & 0xF0) | 0b1000);
    I2cRawCommand(i2c_cmd_wait_ack, TRUE, I2C_WAIT_ACK_TIMEOUT);  
    I2cRawCommand(i2c_cmd_send_stop, TRUE, I2C_WAIT_CMD_TIMEOUT);
    
    /*Setup conversion register for read access*/
    I2cRawCommand(i2c_cmd_send_start, TRUE, I2C_WAIT_CMD_TIMEOUT);
    I2cRawWriteByte(0b01000110);
    I2cRawCommand(i2c_cmd_wait_ack, TRUE, I2C_WAIT_ACK_TIMEOUT);    
    I2cRawWriteByte(0b01110000);
    I2cRawCommand(i2c_cmd_wait_ack, TRUE, I2C_WAIT_ACK_TIMEOUT);
    
    /*read*/
    I2cRawCommand( i2c_cmd_send_restart, TRUE, I2C_WAIT_CMD_TIMEOUT);
    I2cRawWriteByte(0b01000111);
    #ifdef DEBUG
    DebugWriteString("\r\n");    
    writeASCIICodedNumber(bitcount(channel_map));
    DebugWriteString("\r\nMAP: "); 
    writeASCIICodedNumber(channel_map);
    DebugWriteString("\r\n");
    #endif
    I2cRawCommand(i2c_cmd_wait_ack, TRUE, I2C_WAIT_ACK_TIMEOUT);
    I2cRawRead(&data[0], bitcount(channel_map)*2);
    I2cRawCommand(i2c_cmd_send_stop, TRUE, I2C_WAIT_CMD_TIMEOUT);
    
    DebugWriteString("\r\nDAT ");    
    writeASCIICodedNumber(data[3]);    
    DebugWriteString("\r\n");  
    I2cRawTerminate();

}

extern void proc() {
        uint8 data[16];

    
    readChannels(0b11001000, &data[0]);
}

extern void timerCallback(timer_id const id) 
{
    uint8 hacksplack = 1;    
    uint8 minimap =  (g_eeg_serv_data.channel_map & 0x00FF);

    if ((minimap & 0x01) == 1)
        hacksplack += 1;
    if ((minimap & 0x02) == 2)
        hacksplack += 2;
    if ((minimap & 0x04) == 4)
        hacksplack += 4;
    if ((minimap & 0x08) == 8)
        hacksplack += 8;
    if ((minimap & 0x10) == 16)
        hacksplack += 16;
    if ((minimap & 0x20) == 32)
        hacksplack += 32;
    if ((minimap & 0x40) == 64)
        hacksplack += 64;
    if ((minimap & 0x80) == 128)
        hacksplack += 128;
    
    readChannels((hacksplack) , &meas_report[0]);
    
#ifdef DEBUG
    writeASCIICodedNumber(minimap);
    DebugWriteString("\r\n");
    writeASCIICodedNumber(hacksplack);
    DebugWriteString("\r\n");
    writeASCIICodedNumber(meas_report[0]);
    DebugWriteString(" ");
    writeASCIICodedNumber(meas_report[1]);
    DebugWriteString("\r\n");
    writeASCIICodedNumber(meas_report[2]);
    DebugWriteString(" ");
    writeASCIICodedNumber(meas_report[3]);
    DebugWriteString("\r\n");
    writeASCIICodedNumber(meas_report[4]);
    DebugWriteString(" ");
    writeASCIICodedNumber(meas_report[5]);
    DebugWriteString("\r\n"); /**/
#endif
    TimerCreate(10000, TRUE, timerCallback);
}