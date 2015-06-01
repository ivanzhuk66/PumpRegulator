/*
 * extint.c
 *
 *  Created on: Dec 24, 2014
 *      Author: izhuk
 */
#include <avr/io.h>
#include <avr/interrupt.h>
#include "extint.h"

uint8_t extstate = 0;
uint8_t powergone = 0;
extern char wait_powergone;

void ExtInt0Enable(){
		EIMSK &= ~(1 << INT0); 						// DISABLE INT0
//	    EICRA |= ( (1 << ISC01) | (1 << ISC00) );	// INTERRUPT ON RISING EDGE
//		EICRA |= (1 << ISC00);		// Any logical change on INT0 generates an interrupt request.
		EICRA &= ~( (1 << ISC01) | (1 << ISC00) );	// Low Level on INT0 generates an interrupt request.
//		EICRA |= (1 << ISC00);		// Any logical change on INT0 generates an interrupt request.
//	    DDRD &= ~(1 << PD2);						// PD2 as input
		INT0_DDR &= ~(1 << INT0_DDR_PIN);				// INT0_PIN as input
	    EIFR |= (1 << INTF0);
	    EIMSK |= (1 << INT0); 						// ENABLE INT0
	sei();
}
//
void ExtInt0Disable(){
	//PCMSK0 &= 0x00;			// DISABLE PCINT7-0
	EIMSK &= ~(1 << INT0); 	//DISABLE INT0
	EIFR |= (1 << INTF0);
}
//

ISR(INT0_vect) {
	if(extstate >= EXT_STATE_COUNT)
		extstate=0;
	else
		extstate++;

}
//
void ExtInt1Enable(){
		EIMSK &= ~(1 << INT1); 						// DISABLE INT1
//	    EICRA |= ( (1 << ISC01) | (1 << ISC00) );	// INTERRUPT ON RISING EDGE
//		EICRA |= (1 << ISC00);		// Any logical change on INT0 generates an interrupt request.
//		EICRA &= ~( (1 << ISC11) | (1 << ISC10) );	// Low Level on INT1 generates an interrupt request.
		EICRA &= ~( (1 << ISC11)); EICRA |= (1 << ISC10);//Any logical change on INT1 generates an interrupt request.
//	    DDRD &= ~(1 << PD3);						// PD3 as input
		INT1_DDR &= ~(1 << INT1_DDR_PIN);				// INT1_PIN as input
	    // PD1 (PCINT0 pin) is now an input
	    //PORTD |= (1 << PORTD3);    // turn On the Pull-up
				// PD3 is now an input with pull-up enabled
	    INT1_PORT |= (1 << INT1_PORT_PIN);    // turn On the Pull-up
	        	// INT1_PIN is now an input with pull-up enabled
	    EIFR |= (1 << INTF1);
	    EIMSK |= (1 << INT1); 						// ENABLE INT1
	sei();
}
//
void ExtInt1Disable(){
	EIMSK &= ~(1 << INT1); 	//DISABLE INT1
	EIFR |= (1 << INTF1);
}
//
ISR(INT1_vect) {
	//if(PORTD & (1 << PD3)){ // rising edge Power Phase Gone!
	if(INT1_PIN & (1 << INT1_PIN_PIN)){ // rising edge Power Phase Gone!
		if(powergone >= POWERGONE_STATE_COUNT)
			powergone=1;
		else
			powergone++;
	} else {wait_powergone = 0; powergone=0;}	// falling edge Power Power Phase OK !

}
