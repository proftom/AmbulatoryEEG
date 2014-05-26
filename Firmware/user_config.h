/*******************************************************************************
 *  Copyright Cambridge Silicon Radio Limited 2012-2014
 *  Part of CSR uEnergy SDK 2.3.0
 *  Application version 2.3.0.0
 *
 * FILE
 *      user_config.h
 *
 * DESCRIPTION
 *      This file contains definitions which will enable customization of the
 *      application.
 *
 ******************************************************************************/

#ifndef __USER_CONFIG_H__
#define __USER_CONFIG_H__

/*=============================================================================*
 *  Public Definitions
 *============================================================================*/

/* Buzzer code has been put under compiler flag ENABLE_BUZZER. If required
 * this flag can be disabled like at the time of current consumption 
 * measurement 
 */
#define ENABLE_BUZZER

/* Heart Rate used as a base for HR Measurements */
#define HEART_RATE_IN_BPM               (78)

/* Idle time out period in Connected state. Device will disconnect with the
 * connected host at the expiry of this timer
 */
#define CONNECTED_IDLE_TIMEOUT_VALUE    (10 * SECOND)

/* Static value for Energy Expended in KJoules used by example application */
#define ENERGY_EXP_PER_HR_MEAS          (2)

/* The following macro should be defined to enable simulation of Heart rate 
 * sensor data
 */
#define NO_ACTUAL_MEASUREMENT

#ifdef ENABLE_BUZZER
/* TIMER values for Buzzer */
#define SHORT_BEEP_TIMER_VALUE          (100* MILLISECOND)
#define LONG_BEEP_TIMER_VALUE           (500* MILLISECOND)
#define BEEP_GAP_TIMER_VALUE            (25* MILLISECOND)
#endif /* ENABLE_BUZZER */


/* Macro to enable dormant mode functionality */
#define ENABLE_DORMANT_MODE_FUNCTIONALITY

/* Timer value for the No HR input idle timer which the application starts on 
 * entering the idle mode. On expiry of this timer, the application shall enter 
 * the dormant mode.
 */
#define IDLE_DORMANT_TIMER_VALUE        (30*MINUTE)

/* The application is expecting the Wake pin to be in shorted state with the 
 * HR Input Pio. Since the application is pulling up the HR input PIO, the 
 * wake pin default state will also be HIGH. Configure the wake on Low value.
 */
#define WAKE_SIGNAL_LEVEL               (FALSE)

#endif /* __USER_CONFIG_H__ */
