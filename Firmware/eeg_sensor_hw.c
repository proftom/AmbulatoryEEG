/******************************************************************************
 *  Copyright Cambridge Silicon Radio Limited 2012-2014
 *  Part of CSR uEnergy SDK 2.3.0
 *  Application version 2.3.0.0
 *
 *  FILE
 *      hr_sensor_hw.c
 *
 *  DESCRIPTION
 *      This file defines the Heart Rate sensors hardware specific routines.
 *
 *****************************************************************************/

/*============================================================================*
 *  SDK Header Files
 *============================================================================*/

#include <pio.h>
#include <pio_ctrlr.h>
#include <timer.h>

/*============================================================================*
 *  Local Header Files
 *============================================================================*/

#include "eeg_sensor.h"
#include "hr_sensor_gatt.h"
#include "eeg_sensor_hw.h"
#include "eeg_service.h"
#include "app_gatt_db.h"
#include "app_gatt.h"
#include "user_config.h"

/*============================================================================*
 *  Private Definitions
 *============================================================================*/

/* Setup PIOs
 *  PIO3    Buzzer
 *  PIO4    LED 1
 *  PIO9    On Board Input - HR Input
 *  PIO10   LED 2 (Not Used)
 *  PIO11   Button
 */

#define BUZZER_PIO              (3)
#define HR_INPUT_PIO            (9)
#define BUTTON_PIO              (11)

#define PIO_BIT_MASK(pio)       (0x01 << (pio))

#define BUZZER_PIO_MASK         (PIO_BIT_MASK(BUZZER_PIO))
#define HR_INPUT_PIO_MASK       (PIO_BIT_MASK(HR_INPUT_PIO))
#define BUTTON_PIO_MASK         (PIO_BIT_MASK(BUTTON_PIO))

/* PIO direction */
#define PIO_DIRECTION_INPUT     (FALSE)
#define PIO_DIRECTION_OUTPUT    (TRUE)

/* PIO state */
#define PIO_STATE_HIGH          (TRUE)
#define PIO_STATE_LOW           (FALSE)

/* Extra long button press timer */
#define EXTRA_LONG_BUTTON_PRESS_TIMER \
                                (4*SECOND)

#ifdef ENABLE_BUZZER

/* The index (0-3) of the PWM unit to be configured */
#define BUZZER_PWM_INDEX_0      (0)

/* PWM parameters for Buzzer */

/* Dull on. off and hold times */
#define DULL_BUZZ_ON_TIME       (2)    /* 60us */
#define DULL_BUZZ_OFF_TIME      (15)   /* 450us */
#define DULL_BUZZ_HOLD_TIME     (0)

/* Bright on, off and hold times */
#define BRIGHT_BUZZ_ON_TIME     (2)    /* 60us */
#define BRIGHT_BUZZ_OFF_TIME    (15)   /* 450us */
#define BRIGHT_BUZZ_HOLD_TIME   (0)    /* 0us */

#define BUZZ_RAMP_RATE          (0xFF)


#endif /* ENABLE_BUZZER */

/*============================================================================*
 *  Public data
 *============================================================================*/

/* Blood pressure application hardware data instance */
APP_HW_DATA_T                   g_app_hw_data;

/*============================================================================*
 *  Private Function Implementations
 *============================================================================*/

#ifdef ENABLE_BUZZER

/*----------------------------------------------------------------------------*
 *  NAME
 *      appBuzzerTimerHandler
 *
 *  DESCRIPTION
 *      This function is used to stop the Buzzer at the expiry of 
 *      timer.
 *
 *  RETURNS/MODIFIES
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/
static void appBuzzerTimerHandler(timer_id tid)
{
    uint32 beep_timer = SHORT_BEEP_TIMER_VALUE;

    g_app_hw_data.buzzer_tid = TIMER_INVALID;

    switch(g_app_hw_data.beep_type)
    {
        case buzzer_beep_short: /* FALLTHROUGH */
        case buzzer_beep_long:
        {
            g_app_hw_data.beep_type = buzzer_beep_off;

            /* Disable buzzer */
            PioEnablePWM(BUZZER_PWM_INDEX_0, FALSE);
        }
        break;
        case buzzer_beep_twice:
        {
            if(g_app_hw_data.beep_count == 0)
            {
                /* First beep sounded. Start the silent gap*/
                g_app_hw_data.beep_count = 1;

                /* Disable buzzer */
                PioEnablePWM(BUZZER_PWM_INDEX_0, FALSE);

                /* Time gap between two beeps */
                beep_timer = BEEP_GAP_TIMER_VALUE;
            }
            else if(g_app_hw_data.beep_count == 1)
            {
                g_app_hw_data.beep_count = 2;

                /* Enable buzzer */
                PioEnablePWM(BUZZER_PWM_INDEX_0, TRUE);

                /* Start another short beep */
                beep_timer = SHORT_BEEP_TIMER_VALUE;
            }
            else
            {
                /* Two beeps have been sounded. Stop buzzer now*/
                g_app_hw_data.beep_count = 0;

                /* Disable buzzer */
                PioEnablePWM(BUZZER_PWM_INDEX_0, FALSE);

                g_app_hw_data.beep_type = buzzer_beep_off;
            }
        }
        break;
        case buzzer_beep_thrice:
        {
            if(g_app_hw_data.beep_count == 0 ||
               g_app_hw_data.beep_count == 2)
            {
                /* First beep sounded. Start the silent gap*/
                ++ g_app_hw_data.beep_count;

                /* Disable buzzer */
                PioEnablePWM(BUZZER_PWM_INDEX_0, FALSE);

                /* Time gap between two beeps */
                beep_timer = BEEP_GAP_TIMER_VALUE;
            }
            else if(g_app_hw_data.beep_count == 1 ||
                    g_app_hw_data.beep_count == 3)
            {
                ++ g_app_hw_data.beep_count;

                /* Enable buzzer */
                PioEnablePWM(BUZZER_PWM_INDEX_0, TRUE);

                beep_timer = SHORT_BEEP_TIMER_VALUE;
            }
            else
            {
                /* Two beeps have been sounded. Stop buzzer now*/
                g_app_hw_data.beep_count = 0;

                /* Disable buzzer */
                PioEnablePWM(BUZZER_PWM_INDEX_0, FALSE);

                g_app_hw_data.beep_type = buzzer_beep_off;
            }
        }
        break;

        default:
        {
            /* No such beep type */
            ReportPanic(app_panic_unexpected_beep_type);
            /* Though break statement will not be executed after panic but this
             * has been kept to avoid any confusion for default case.
             */
        }
        break;
    }

    if(g_app_hw_data.beep_type != buzzer_beep_off)
    {
        /* start the timer */
        g_app_hw_data.buzzer_tid = TimerCreate(beep_timer, TRUE, 
                                               appBuzzerTimerHandler);
    }
}

#endif /* ENABLE_BUZZER*/

/*============================================================================*
 *  Public Function Implementations
 *============================================================================*/

/*----------------------------------------------------------------------------*
 *  NAME
 *      HrInitHardware 
 *
 *  DESCRIPTION
 *      This function is called to initialise heart rate hardware
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern void HrInitHardware(void)
{
    /* Setup PIOs
     * PIO3 - Buzzer
     * PIO4 - LED 1
     * PIO9 - On Board Input - HR input 
     *            when actual measurements 
     *            are enabled
     * PIO10 - LED 2 (Not Used)
     * PIO11 - Button
     */
#ifdef NO_ACTUAL_MEASUREMENT

    PioSetModes(BUTTON_PIO_MASK, pio_mode_user);
    PioSetDir(BUTTON_PIO, PIO_DIRECTION_INPUT);
    PioSetPullModes(BUTTON_PIO_MASK, pio_mode_strong_pull_up);

    /* Setup button on PIO11 */
    PioSetEventMask(BUTTON_PIO_MASK, pio_event_mode_both);

#else /* NO_ACTUAL_MEASUREMENT */

    PioSetModes(HR_INPUT_PIO_MASK, pio_mode_edge_capture); 
    PioSetDir(HR_INPUT_PIO, PIO_DIRECTION_INPUT);
    PioSetPullModes(HR_INPUT_PIO_MASK, pio_mode_strong_pull_up);

    /* Enable the falling edge capture on PIO9 for heart rate */
    PioEnableEdgeCapture(TRUE, FALSE);

    /* Setup event on PIO 9 */
    PioSetEventMask(HR_INPUT_PIO_MASK, pio_event_mode_both);

#endif /* ! NO_ACTUAL_MEASUREMENT */

#ifdef ENABLE_BUZZER
    PioSetModes(BUZZER_PIO_MASK, pio_mode_pwm0);

    /* Configure the buzzer on PIO3 */
    PioConfigPWM(BUZZER_PWM_INDEX_0, pio_pwm_mode_push_pull, DULL_BUZZ_ON_TIME,
                 DULL_BUZZ_OFF_TIME, DULL_BUZZ_HOLD_TIME, BRIGHT_BUZZ_ON_TIME,
                 BRIGHT_BUZZ_OFF_TIME, BRIGHT_BUZZ_HOLD_TIME, BUZZ_RAMP_RATE);


    PioEnablePWM(BUZZER_PWM_INDEX_0, FALSE);
#endif /* ENABLE_BUZZER */


    /* Save power by changing the I2C pull mode to pull down.*/
    PioSetI2CPullMode(pio_i2c_pull_mode_strong_pull_down);

}


/*----------------------------------------------------------------------------*
 *  NAME
 *      HrHwDataInit
 *
 *  DESCRIPTION
 *      This function initialises HR sensor hardware data structure
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern void HrHwDataInit(void)
{

    /* Delete button press timer */
    TimerDelete(g_app_hw_data.button_press_tid);
    g_app_hw_data.button_press_tid = TIMER_INVALID;

}



/*----------------------------------------------------------------------------*
 *  NAME
 *      SoundBuzzer
 *
 *  DESCRIPTION
 *      This function is called to trigger beeps of different types 
 *      'buzzer_beep_type'.
 *
 *  RETURNS/MODIFIES
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern void SoundBuzzer(buzzer_beep_type beep_type)
{
#ifdef ENABLE_BUZZER
    uint32 beep_timer = SHORT_BEEP_TIMER_VALUE;

    PioEnablePWM(BUZZER_PWM_INDEX_0, FALSE);

    TimerDelete(g_app_hw_data.buzzer_tid);
    g_app_hw_data.buzzer_tid = TIMER_INVALID;

    g_app_hw_data.beep_count = 0;

    /* Store the beep type in some global variable. It will used on timer 
     * expiry to check the type of beeps being sounded.
     */
    g_app_hw_data.beep_type = beep_type;

    switch(g_app_hw_data.beep_type)
    {
        case buzzer_beep_off:
        {
            /* Don't do anything */
        }
        break;

        case buzzer_beep_short: /* One short beep will be sounded */
            /* FALLTHROUGH */
        case buzzer_beep_twice: /* Two short beeps will be sounded */
            /* FALLTHROUGH */
        case buzzer_beep_thrice: /* Three short beeps will be sounded */
        {
            beep_timer = SHORT_BEEP_TIMER_VALUE;
        }
        break;

        case buzzer_beep_long:
        {
            /* One long beep will be sounded */
            beep_timer = LONG_BEEP_TIMER_VALUE;
        }
        break;

        default:
        {
            /* No such beep type defined */
            ReportPanic(app_panic_unexpected_beep_type);
            /* Though break statement will not be executed after panic but this
             * has been kept to avoid any confusion for default case.
             */
        }
        break;
    }

    if(g_app_hw_data.beep_type != buzzer_beep_off)
    {
        /* Initialize beep count to zero */
        g_app_hw_data.beep_count = 0;

        /* Enable buzzer */
        PioEnablePWM(BUZZER_PWM_INDEX_0, TRUE);

        TimerDelete(g_app_hw_data.buzzer_tid);
        g_app_hw_data.buzzer_tid = TimerCreate(beep_timer, TRUE, 
                                               appBuzzerTimerHandler);
    }
#endif /* ENABLE_BUZZER */
}


#ifndef NO_ACTUAL_MEASUREMENT

/*----------------------------------------------------------------------------*
 *  NAME
 *      GetRRValue
 *
 *  DESCRIPTION
 *      Get RR value by reading the HR_INPUT_PIO
 *
 *  RETURNS
 *      UINT32: RR value 
 *
 *---------------------------------------------------------------------------*/

extern uint32 GetRRValue(void)
{

    /* handle heartrate events ie changes to HR_INPUT_PIO */
    /* value is in 30.517us (32768KHz) intervals */

    return (PioReadEdgeCapture());

}

#endif /* !NO_ACTUAL_MEASUREMENT */


/*----------------------------------------------------------------------------*
 *  NAME
 *      HandlePIOChangedEvent
 *
 *  DESCRIPTION
 *      This function handles PIO Changed event
 *
 *  RETURNS
 *      Nothing.
 *
 *---------------------------------------------------------------------------*/

extern void HandlePIOChangedEvent(uint32 pio_changed)
{
    /* PIO changed */
    uint32 pios = PioGets();

    if(pio_changed & BUTTON_PIO_MASK)
    {
        if(!(pios & BUTTON_PIO_MASK))
        {
            /* This event comes when a button is pressed */

            /* Start a timer for LONG_BUTTON_PRESS_TIMER seconds. If timer expi-
             * res before we receive a button release event then it was a long -
             * press and if we receive a button release pio changed event, it -
             * means it was a short press.
             */
            TimerDelete(g_app_hw_data.button_press_tid);

            g_app_hw_data.button_press_tid = TimerCreate(
                                           EXTRA_LONG_BUTTON_PRESS_TIMER,
                                           TRUE,
                                           HandleExtraLongButtonPress);
        }
        else
        {
            /* This event comes when a button is released */
            if(g_app_hw_data.button_press_tid != TIMER_INVALID)
            {
                /* Timer was already running. This means it was a short button 
                 * press.
                 */
                TimerDelete(g_app_hw_data.button_press_tid);
                g_app_hw_data.button_press_tid = TIMER_INVALID;

                HandleShortButtonPress();
            }
        }
    }
#ifndef NO_ACTUAL_MEASUREMENT
    else if(pio_changed & HR_INPUT_PIO_MASK) /* check is HR input pios have 
                                              * changed. 
                                              */
    {
        if(!(pios & HR_INPUT_PIO_MASK)) /* Only Falling edge should be handled, 
                                         * rising edge shall be ignored. 
                                         */
        {
            HandleHRInputEvent();
        }
    }
#endif

}

