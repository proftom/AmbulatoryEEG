/******************************************************************************
 *  Copyright Cambridge Silicon Radio Limited 2012-2014
 *  Part of CSR uEnergy SDK 2.3.0
 *  Application version 2.3.0.0
 *
 *  FILE
 *      heart_rate_service_uuids.h
 *
 *  DESCRIPTION
 *      UUID MACROs for Heart Rate service
 *
 *****************************************************************************/

#ifndef __HEART_RATE_SERVICE_UUID_H__
#define __HEART_RATE_SERVICE_UUID_H__

/*============================================================================*
 *  Public Definitions
 *============================================================================*/

/* Brackets should not be used around the value of a macro. The parser 
 * which creates .c and .h files from .db file doesn't understand  brackets 
 * and will raise syntax errors.
 */

/* For UUID and characteristic values, refer http://developer.bluetooth.org/
 * gatt/services/Pages/ServiceViewer.aspx?u=org.bluetooth.service.heart_rate.xml
 */

/* UUIDs for Heart Rate Service and Characteristics*/

#define UUID_HEART_RATE_SERVICE                       0x180D

#define UUID_HEART_RATE_MEASUREMENT                   0x2A37

#define UUID_HEART_RATE_BODY_SENSOR_LOCATION          0x2A38

#define UUID_HEART_RATE_CONTROL_POINT                 0x2A39

/* Heart Rate Sensor Location characteristic values */

/* Body Sensor Location unknown */
#define BODY_SENSOR_LOCATION_OTHER                    0x00
/* Body Sensor Location chest */
#define BODY_SENSOR_LOCATION_CHEST                    0x01
/* Body Sensor Location wrist */
#define BODY_SENSOR_LOCATION_WRIST                    0x02
/* Body Sensor Location finger */
#define BODY_SENSOR_LOCATION_FINGER                   0x03
/* Body Sensor Location hand */
#define BODY_SENSOR_LOCATION_HAND                     0x04
/* Body Sensor Location ear lobe */
#define BODY_SENSOR_LOCATION_EAR_LOBE                 0x05
/* Body Sensor Location foot */
#define BODY_SENSOR_LOCATION_FOOT                     0x06


/* A user should change the following macro expansion to change the body 
 * location of HR sensor.
 */
#define CURRENT_BODY_SENSOR_LOCATION_VALUE            BODY_SENSOR_LOCATION_CHEST


#endif /* __HEART_RATE_SERVICE_UUID_H__ */
