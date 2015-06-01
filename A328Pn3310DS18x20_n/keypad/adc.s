/*
 * adc.s
 *
 *  Created on: Dec 3, 2014
 *      Author: izhuk
 */
//.include "m8def.inc"
/*
; usage: InReg reg, addr
.macro InReg
    .if @1 < 0x40
        in @0, @1
    .elif ((@1 >= 0x60) && (@1 < SRAM_START))
        lds @0,@1
    .else
       .error "InReg: Invalid I/O register address"
    .endif
.endmacro

; usage: OutReg addr, reg
.macro OutReg
    .if @0 < 0x40
        out @0, @1
    .elif ((@0 >= 0x60) && (@0 < SRAM_START))
        sts @0,@1
    .else
       .error "OutReg: Invalid I/O register address"
    .endif
.endmacro
*/
#define _SFR_ASM_COMPAT 1
//#define __SFR_OFFSET 0
#include <avr/io.h>
#include "adc.h"

.extern .byte TimeKeyPressed;

.section .text
;
; Interrupt Service Routine AD conversion
;
.global IntAdc
IntAdc:
;	in rKey,ADCH ; read AD converter MSB

	push	R16
	push	R15
	lds	r15,SREG
	lds R16,_SFR_MEM_ADDR(KeyPressed)
	cli
	or	R16,R16
	brne	IntAdcExit
	lds	R16,ADCH
	sts	AdcVal,R16
	ldi	R16,0x1
	sts _SFR_MEM_ADDR(KeyPressed),R16
	cli
	eor	R1,R1
	sts _SFR_MEM_ADDR(TimeKeyPressed),R1
	sei
IntAdcExit:
	ldi R16,0b00000000 ; stop ADC
	sts ADCSRA,R16 ;
	sei
	sts	SREG,R15
	pop	R15
	pop	R16
	reti ; return from interrupt
;
.global IntAnalogComp
IntAnalogComp:
	push	R16
	push	R17
	lds	r17,SREG
	cli
	ldi R16,0b11110111 ; Start ADC
	sts ADCSRA,R16
	ori	R16,(1<<ADIE)
	sts ADCSRA,R16 ;  Enable ADC and ADC Interrupt
	sei
	sts	SREG,R17
	pop	R17
	pop	R16
	reti
;
.global InitAnalogComp
InitAnalogComp:
	push	R16
;	push	R17
	ldi	R16, (1<<AIN0D) | (1<<AIN1D)			//Disable the digital input on D6 (AIN0), and on D7 (AIN1)
	sts	DIDR1,R16
	ldi	R16,(1<<ACI) |	(1<<ACIS1) | (1<<ACIS0)
	sts	ACSR,R16
	ori	R16,(1<<ACIE)			//Enable the comparator interrupt and capture on a rising edge
	//ldi	R16,(1<<ACIE) |	(1<<ACIS1) | (1<<ACIS0) | (1<<ACBG)	//Enable the comparator interrupt and capture on a rising edge
	sts	ACSR,R16
;	pop	R17
	pop	R16
	ret

.global InitAdc
;
; Start AD converter with interrupt
;

InitAdc:
	push	R16
	push	R17
	andi r24,0x0F
	; ADC{R24} is used for the conversion
	; disconnect the PB3 digital driver, saves supply current
	mov R17,R24
	subi R17,0x06
	brge	AdcInitSkip
	ldi R17,0b00000000
	mov	R16,R24
AdcInitLoop:
	or	R16,R16
	breq	AdcPineDisconnected
	lsl	R17
	dec	R16
	jmp	AdcInitLoop
AdcPineDisconnected:
	lds	R16,DIDR0
	or	R16,R17
	sts	DIDR0,R16		; disconnect the digital driver, saves supply current
AdcInitSkip:
;
	ldi R16,(1<<REFS0)|(1<<ADLAR) 		; ADMUX channel in com, AREF from AVCC
										; Reference = supply voltage, Left-adjust the result
	or R16,R24
	sts ADMUX,R16
	; select autostart option
	ldi R16,0b00000000 //free-running conversion (autostart)
	sts ADCSRB,R16
	; ADC, allow interrupt, select clock divider - will bei in IntAnalogComp
	ldi R16,0b01101111 	; ADC, autostart,
	sts ADCSRA,R16 		;  Int Enable, clock divider to 128
; initiation complete
	pop	R17
	pop	R16
	ret
;
; Converting a AD result to a key code
;
.global GetKeyCode ;
GetKeyCode:
	; if the AD result can change in between, the result must be copied first
	push	R0
	push	R1
	push	ZH
	push	ZL
	eor	R24,R24
	lds	R1,_SFR_MEM_ADDR(KeyPressed)
	or	R1,R1
	breq GetKeyCodeExit		; No key pressed
	lds R1,_SFR_MEM_ADDR(AdcVal) ; copy AD result to R1
	ldi ZH,hi8(_SFR_MEM_ADDR(KeyTable)) ; Z points to conversion table
	ldi ZL,lo8(_SFR_MEM_ADDR(KeyTable))
GetKeyCode1:
	lpm ; read one table value from flash ram
	cp R1,R0 ; compare AD result with table value
	brcs GetKeyCode2 ; less than table value, key identified
	inc R0 ; test, if table end is reached
	breq GetKeyCode2 ; reached end of table
	adiw ZL,2 ; point to next table entry
	rjmp GetKeyCode1 ; go on comparing next entry
GetKeyCode2:
	adiw ZL,1 ; point to MSB = key code
	lpm ; read key code to R0
	mov	R24,R0
	eor	R1,R1
	cli
	sts	_SFR_MEM_ADDR(KeyPressed),R1
	sei
GetKeyCodeExit:
	pop	ZL
	pop	ZH
	pop	R1
	pop	R0
	ret
;
.global resetKbd
resetKbd:
	eor	R1,R1
	cli
	sts	_SFR_MEM_ADDR(KeyPressed),R1
	sei
	ret

KeyTable:
.byte 7, 0 , 18, '1', 28, '2', 42, '3', 64, '4', 91, '5'
.byte 121, '6', 156, '7', 185, '8', 207, '9', 225, '*', 237, '0', 255, '#'

.section .data
.global AdcVal
.global KeyPressed

AdcVal:
.byte	0
KeyPressed:
.byte	0

