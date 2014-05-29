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

#ifndef __EEG_SERVICE_UUID_H__
#define __EEG_SERVICE_UUID_H__

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

#define UUID_EEG_SERVICE                              0x0EE4

#define UUID_EEG_MEASUREMENT                     0x0EE1

#define UUID_EEG_ACQUISITION_RATE          0x0EE2

#define UUID_EEG_CHANNELS                 0x0EE3

#define DEFAULT_ACQUISITION_RATE 			0xFF



#endif /* __EEG_SERVICE_UUID_H__ */
