/*
 * extint.h
 *
 *  Created on: Dec 24, 2014
 *      Author: izhuk
 */

#ifndef EXTINT_H_
#define EXTINT_H_
//
#define INT0_PORT	PORTD
#define	INT0_PORT_PIN	PORTD2
#define	INT0_PIN	PIND
#define	INT0_PIN_PIN	PIND2
#define INT0_DDR	DDRD
#define INT0_DDR_PIN DDD2

#define INT1_PORT	PORTD
#define	INT1_PORT_PIN	PORTD3
#define INT1_DDR	DDRD
#define INT1_DDR_PIN DDD3
#define INT1_PIN	PIND
#define INT1_PIN_PIN	PIND3

#define EXT_STATE_COUNT	3
#define POWERGONE_STATE_COUNT	100
//
void ExtInt0Enable(void);
//
void ExtInt0Disable(void);
//
void ExtInt1Enable(void);
//
void ExtInt1Disable(void);


#endif /* EXTINT_H_ */
