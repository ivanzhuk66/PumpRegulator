/*
 * timer.h
 *
 *  Created on: Dec 14, 2014
 *      Author: izhuk
 */

#ifndef TIMER_H_
#define TIMER_H_

typedef struct{
unsigned char second;   //enter the current time, date, month, and year
unsigned char minute;
unsigned char hour;
unsigned char date;
unsigned char month;
unsigned int year;
            }time;

void WDT_setup(void);
void WDT_off(void);
void init_clock(void);
char not_leap(void);
#define TIME_TO_SLEEP	300
#define TIMEOUT_POWERGON	2

#endif /* TIMER_H_ */
