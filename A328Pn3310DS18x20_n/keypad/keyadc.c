/*
 * keyadc.c
 *
 *  Created on: Dec 2, 2014
 *      Author: izhuk
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include "adc.h"

ISR(ADC_vect, ISR_NAKED)
{
    asm volatile(
    "   jmp IntAdc;                   \n"
    ::);
}
//
ISR(ANALOG_COMP_vect, ISR_NAKED)
{
    asm volatile(
    "	jmp	IntAnalogComp				\n"
    ::);
}

