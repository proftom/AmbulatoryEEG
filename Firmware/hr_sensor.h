/*****************************************************************************
 *  Copyright Cambridge Silicon Radio Limited 2012-2014
 *  Part of CSR uEnergy SDK 2.3.0
 *  Application version 2.3.0.0
 *
 *  FILE
 *      hr_sensor.h
 *
 *  DESCRIPTION
 *      This file defines a simple implementation of Heart Rate sensor device
 *
 *****************************************************************************/

#ifndef __HR_SENSOR_H__
#define __HR_SENSOR_H__

/*============================================================================*
 *  SDK Header Files
 *============================================================================*/

#include <types.h>
#include <bt_event_types.h>
#include <timer.h>

/*============================================================================*
 *  Local Header File
 *============================================================================*/

#include "hr_sensor_gatt.h"
#include "user_config.h"

/*============================================================================*
 *  Public Definitions
 *============================================================================*/

/* Maximum number of words in central device IRK */
#define MAX_WORDS_IRK                                     (8)

/* As per Heart Rate profile spec, the maximum number of RR-Interval Values 
 * that can be notified if Energy Expended is present is 8 and the maximum 
 * number of RR-Interval Values that can be notified if Energy Expended is 
 * not present is 9.
 */
#define MAX_RR_VALUES                                     (8)

 /* The following macro should be defined to enable simulation of Heart rate 
  * sensor data
  */

/* Max HR data that can be send in one ATT notification */
#define MAX_ATT_HR_NOTI_LEN                               (20)

/*============================================================================*
 *  Public Data Types
 *============================================================================*/

typedef enum
{

    /* Application Initial State */
    app_state_init = 0,

    /* Enters when fast undirected advertisements are configured */
    app_state_fast_advertising,

    /* Enters when slow Undirected advertisements are configured */
    app_state_slow_advertising,

    /* Enters when connection is established with the host */
    app_state_connected,

    /* Enters when disconnect is initiated by the application */
    app_state_disconnecting,

    /* Enters when the application is not connected to remote host */
    app_state_idle

} app_state;


/* Structure defined for Central device IRK */
typedef struct
{
    uint16                         irk[MAX_WORDS_IRK];

} CENTRAL_DEVICE_IRK_T;

/* Circular queue defined for RR values */
typedef struct
{
    /* Circular queue buffer */
    uint16                         rr_value[MAX_RR_VALUES];

    /* Starting index of circular queue carrying the 
     * oldest RR interval value 
     */
    uint8                          start_idx;

    /* Out-standing RR Interval values in the queue */
    uint8                          num;

} CQUEUE_RR_VALUES_T;

/* HR Sensor application data structure */
typedef struct
{
    /* Current state of application */
    app_state                      state;

    /* Value for which advertisement timer needs to be started. 
     *
     * For bonded devices, the timer is initially started for 10 seconds to 
     * enable fast connection by bonded device to the sensor. If bonded device 
     * doesn't connect within this time, another 20 seconds timer is started 
     * to enable fast connections from any collector device in the vicinity. 
     * This is then followed by reduced power advertisements.
     *
     * For non-bonded devices, the timer is initially started for 30 seconds 
     * to enable fast connections from any collector device in the vicinity.
     * This is then followed by reduced power advertisements.
     */
    uint32                         advert_timer_value;

    /* Store timer id while doing 'UNDIRECTED ADVERTS' and for Idle timer 
     * in CONNECTED' states.
     */
    timer_id                       app_tid;

    /* TYPED_BD_ADDR_T of the host to which device is connected */
    TYPED_BD_ADDR_T                con_bd_addr;

    /* Track the UCID as Clients connect and disconnect */
    uint16                         st_ucid;

    /* Boolean flag to indicated whether the device is bonded */
    bool                           bonded;

    /* TYPED_BD_ADDR_T of the host to which device is bonded. Heart rate
     * sensor can only bond to one collector 
     */
    TYPED_BD_ADDR_T                bonded_bd_addr;

    /* Diversifier associated with the LTK of the bonded device */
    uint16                         diversifier;

    /* Boolean flag to indicated whether to set white list with the bonded 
     * device. This flag is used in an interim basis while configuring 
     * advertisements
     */
    bool                           enable_white_list;

    /* Store timer id for Connection Parameter Update timer in Connected 
     * state
     */
    timer_id                       con_param_update_tid;

    /* Connection Parameter Update timer value. Upon a connection, it's started
     * for a period of TGAP_CPP_PERIOD, upon the expiry of which it's restarted
     * for TGAP_CPC_PERIOD. When this timer is running, if a GATT_ACCESS_IND is
     * received, it means, the central device is still doing the service discov-
     * -ery procedure. So, the connection parameter update timer is deleted and
     * recreated. Upon the expiry of this timer, a connection parameter update
     * request is sent to the central device.
     */
    uint32                         cpu_timer_value;


    /* Store timer id for HR Measurement transmission timer in 'CONNECTED' 
     * state 
     */
    timer_id                       hr_meas_tid;

    /*Central Private Address Resolution IRK  Will only be used when
     *central device used resolvable random address. 
     */
    CENTRAL_DEVICE_IRK_T           central_device_irk;

    /* Variable to keep track of number of connection parameter update requests 
     * made 
     */
    uint8                          num_conn_update_req;

        /* Circular queue for storing pending RR intervals */
    CQUEUE_RR_VALUES_T             pending_rr_values;

    /* Heart Rate measurement data */
    uint8                          hr_meas_data[MAX_ATT_HR_NOTI_LEN];

    /* Boolean flag set to indicate pairing button press */
    bool                           pairing_button_pressed;

    /* Varibale to store the current connection interval being used. */
    uint16                         conn_interval;

    /* Variable to store the current slave latency. */
    uint16                         conn_latency;

    /*Variable to store the current connection timeout value. */
    uint16                         conn_timeout;

#ifdef ENABLE_DORMANT_MODE_FUNCTIONALITY
    /* Timer ID for the timer which the application starts on entering idle 
     * state. On expiry of this timer, the application enters the dormant mode.
     */
    timer_id                       idle_dormant_tid;
#endif /* ENABLE_DORMANT_MODE_FUNCTIONALITY */

} HR_DATA_T;


/*============================================================================*
 *  Public Data
 *============================================================================*/

extern HR_DATA_T g_hr_data;

/*============================================================================*
 *  Public Function Prototypes
 *============================================================================*/

/* This function is used to set the state of the application */
extern void AppSetState(app_state new_state);

#ifndef NO_ACTUAL_MEASUREMENT

/* This function is used to reset idle timer run by application in
 * app_state_connected state
 */
extern void ResetIdleTimer(void);

/* This function is used to handle HR Input PIO event */
extern void HandleHRInputEvent(void);

#endif /* !NO_ACTUAL_MEASUREMENT */

/* This function contains handling of short button press */
extern void HandleShortButtonPress(void);

/* This function contains handling of extra long button press */
extern void HandleExtraLongButtonPress(timer_id tid);
#endif /* __HR_SENSOR_H__ */

