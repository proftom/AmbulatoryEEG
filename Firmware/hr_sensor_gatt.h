/******************************************************************************
 *  Copyright Cambridge Silicon Radio Limited 2012-2014
 *  Part of CSR uEnergy SDK 2.3.0
 *  Application version 2.3.0.0
 *
 *  FILE
 *      hr_sensor_gatt.h
 *
 *  DESCRIPTION
 *      Header file for Heart Rate sensor GATT-related routines
 *
 ******************************************************************************/

#ifndef __HR_SENSOR_GATT_H__
#define __HR_SENSOR_GATT_H__

/*============================================================================*
 *  SDK Header Files
 *============================================================================*/

#include <types.h>
#include <time.h>
#include <gatt_prim.h>

/*============================================================================*
 *  Public Definitions
 *============================================================================*/

/* Time out values for fast and slow advertisements */
#define BONDED_DEVICE_ADVERT_TIMEOUT_VALUE                (10 * SECOND)
#define FAST_CONNECTION_ADVERT_TIMEOUT_VALUE              (30 * SECOND)
#define SLOW_CONNECTION_ADVERT_TIMEOUT_VALUE              (1 * MINUTE)

/*============================================================================*
 *  Public Function Prototypes
 *============================================================================*/

/* This function handles read operation on attributes (as received in 
 * GATT_ACCESS_IND message) maintained by the application
 */
extern void HandleAccessRead(GATT_ACCESS_IND_T *p_ind);

/* This function handles Write operation on attributes (as received in 
 * GATT_ACCESS_IND message) maintained by the application.
 */
extern void HandleAccessWrite(GATT_ACCESS_IND_T *p_ind);

/* This function is used to start undirected advertisements and moves to 
 * ADVERTISING state
 */
extern void GattStartAdverts(bool fast_connection);

/* This function is used to stop on-going advertisements */
extern void GattStopAdverts(void);

/* This function prepares the list of supported 16-bit service UUIDs to be 
 * added to Advertisement data
 */
extern uint16 GetSupported16BitUUIDServiceList(uint8 *p_service_uuid_ad);

/* This function checks if the address is resolvable random or not */
extern bool GattIsAddressResolvableRandom(TYPED_BD_ADDR_T *p_addr);

/* This function is used to trigger fast advertisements */
extern void GattTriggerFastAdverts(void);

#endif /* __HR_SENSOR_GATT_H__ */
