/*
 * timer.c
 *
 *  Created on: Dec 13, 2014
 *      Author: izhuk
 */
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include "timer.h"

time tAsync = {0,25,11,1,1,2014};
uint8_t TimeKeyPressed;
uint8_t CheckNoReadySNCounter;
char wait_powergone = 0;

void WDT_off(void)
{
	cli();
	wdt_reset();
/* Clear WDRF in MCUSR */
	MCUSR &= ~(1<<WDRF);
/* Write logical one to WDCE and WDE */
/* Keep old prescaler setting to prevent unintentional
time-out */
	WDTCSR |= (1<<WDCE) | (1<<WDE);
/* Turn off WDT */
	WDTCSR = 0x00;
	sei();
}

// watchdog interrupt
ISR (WDT_vect)
{
   cli();
   wdt_reset();
   sei();
}  // end of WDT_vect
//
void WDT_setup()
{

	cli();
	MCUSR &= ~(1 << WDRF);                           // reset status flag
	WDTCSR = (1 << WDCE) | (1 << WDE);              // enable configuration changes
	WDTCSR = (1 << WDIE) | (1<< WDP0) | (1 << WDP3); // set the prescalar  8s
	//WDTCSR = (1<<WDE) | (1<< WDP0) | (1 << WDP3); // set the prescalar  8s
	sei();

}
//

void init_clock(void)
{                                   
//    init_rtc();   
    int temp0,temp1;      
        
    for(temp0=0;temp0<0x0040;temp0++)   // Wait for external clock crystal to stabilize   
    {   
        for(temp1=0;temp1<0xFFFF;temp1++);   
    }   
//    DDRB=0xFF;
    TIMSK2 &=~((1<<TOIE2)|(1<<OCIE2A)|(1<<OCIE2B));     //Disable TC2 interrupt
    ASSR |= (1<<AS2);           //set Timer/Counter2 to be asynchronous from the CPU clock
                                //with a second external clock(32,768kHz)driving it.     
    TCNT2 = 0x00;
    TCCR2B = 0x05;                 //prescale the timer to be clock source / 1024 to make it
                                //exactly 1 second for every overflow to occur
    while(ASSR&0x1F);           //Wait until TC2 is updated
    TIMSK2 |= (1<<TOIE2);        //set 8-bit Timer/Counter2 Overflow Interrupt Enable
    sei();                     //set the Global Interrupt Enable Bit
}   
   
ISR (TIMER2_OVF_vect) //void counter(void) //overflow interrupt vector
{    
       
    if (++tAsync.second==60)        //keep track of time, date, month, and year   
    {   
        tAsync.second=0;
        TimeKeyPressed++;
        CheckNoReadySNCounter++;
        if (++tAsync.minute==60)    
        {   
            tAsync.minute=0;   
            if (++tAsync.hour==24)   
            {   
                tAsync.hour=0;   
                if (++tAsync.date==32)   
                {   
                    tAsync.month++;   
                    tAsync.date=1;   
                }   
                else if (tAsync.date==31)    
                {                       
                    if ((tAsync.month==4) || (tAsync.month==6) || (tAsync.month==9) || (tAsync.month==11))    
                    {   
                        tAsync.month++;   
                        tAsync.date=1;   
                    }   
                }   
                else if (tAsync.date==30)   
                {   
                    if(tAsync.month==2)   
                    {   
                       tAsync.month++;   
                       tAsync.date=1;   
                    }   
                }                 
                else if (tAsync.date==29)    
                {   
                    if((tAsync.month==2) && (not_leap()))   
                    {   
                        tAsync.month++;   
                        tAsync.date=1;   
                    }                   
                }                             
                if (tAsync.month==13)   
                {   
                    tAsync.month=1;   
                    tAsync.year++;   
                }   
            }   
        }   
//wwwwwwwww
        if(wait_powergone) wait_powergone++;
//wwwwwwwww
    }     
   
}     
    
char not_leap(void)      //check for leap year   
{   
    if (!(tAsync.year%100))   
        return (char)(tAsync.year%400);   
    else   
        return (char)(tAsync.year%4);   
} 

