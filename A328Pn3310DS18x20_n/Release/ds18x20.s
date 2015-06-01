	.file	"ds18x20.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.DS18X20_raw_to_decicelsius,"ax",@progbits
	.type	DS18X20_raw_to_decicelsius, @function
DS18X20_raw_to_decicelsius:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	ldd r18,Z+1
	ldi r19,0
	mov r19,r18
	clr r18
	ld r25,Z
	or r18,r25
	cpi r24,lo8(16)
	brne .L2
	andi r18,254
	movw r20,r18
	lsl r20
	rol r21
	lsl r20
	rol r21
	lsl r20
	rol r21
	ldd r25,Z+6
	ldi r18,lo8(12)
	ldi r19,0
	sub r18,r25
	sbc r19,__zero_reg__
	add r18,r20
	adc r19,r21
.L2:
	tst r19
	brge .L12
	neg r19
	neg r18
	sbc r19,__zero_reg__
	ldi r22,lo8(1)
	rjmp .L3
.L12:
	ldi r22,0
.L3:
	cpi r24,lo8(40)
	breq .L4
	cpi r24,lo8(34)
	brne .L5
.L4:
	ldd r24,Z+4
	andi r24,lo8(96)
	cpi r24,lo8(32)
	breq .L6
	cpi r24,lo8(64)
	breq .L7
	cpse r24,__zero_reg__
	rjmp .L5
	andi r18,248
	rjmp .L5
.L6:
	andi r18,252
	rjmp .L5
.L7:
	andi r18,254
.L5:
	movw r24,r18
	swap r25
	swap r24
	andi r24,0x0f
	eor r24,r25
	andi r25,0x0f
	eor r24,r25
	movw r20,r24
	lsl r20
	rol r21
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r24,r20
	adc r25,r21
	andi r18,15
	clr r19
	movw r20,r18
	lsr r21
	mov r21,r20
	clr r20
	ror r21
	ror r20
	mov r19,r18
	clr r18
	lsl r19
	add r18,r20
	adc r19,r21
	cpse r22,__zero_reg__
	rjmp .L9
	subi r19,-2
	mov r18,r19
	clr r19
	lsr r18
	lsr r18
	add r18,r24
	adc r19,r25
.L11:
	movw r24,r18
	subi r24,-38
	sbci r25,-3
	cpi r24,9
	sbci r25,7
	brlo .L13
	ldi r24,lo8(-48)
	ldi r25,lo8(7)
	ret
.L13:
	mov r24,r18
	mov r25,r19
	ret
.L9:
	mov r18,r19
	clr r19
	lsr r18
	lsr r18
	add r24,r18
	adc r25,r19
	clr r18
	clr r19
	sub r18,r24
	sbc r19,r25
	rjmp .L11
	.size	DS18X20_raw_to_decicelsius, .-DS18X20_raw_to_decicelsius
	.section	.text.read_scratchpad,"ax",@progbits
	.type	read_scratchpad, @function
read_scratchpad:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r14,r22
	mov r15,r23
	mov r16,r20
	cbi 0xb,5
	ldi r18,lo8(10)
/* #APP */
 ;  83 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 1
	1: dec r18
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	movw r22,r24
	ldi r24,lo8(-66)
	call ow_command
	tst r16
	breq .L16
	mov r28,r14
	mov r29,r15
	ldi r17,0
.L17:
	call ow_byte_rd
	st Y+,r24
	subi r17,lo8(-(1))
	cpse r17,r16
	rjmp .L17
.L16:
	ldi r22,lo8(9)
	ldi r23,0
	mov r24,r14
	mov r25,r15
	call crc8
	tst r24
	breq .L19
	ldi r24,lo8(3)
	rjmp .L18
.L19:
	ldi r24,0
.L18:
	sbi 0xb,5
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	read_scratchpad, .-read_scratchpad
	.section	.text.send_power_10ms,"ax",@progbits
.global	send_power_10ms
	.type	send_power_10ms, @function
send_power_10ms:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbi 0xa,5
	sbi 0xb,5
	ldi r24,lo8(17999)
	ldi r25,hi8(17999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
	cbi 0xb,5
	ldi r24,lo8(10)
/* #APP */
 ;  83 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	ret
	.size	send_power_10ms, .-send_power_10ms
	.section	.text.DS18X20_get_power_status,"ax",@progbits
.global	DS18X20_get_power_status
	.type	DS18X20_get_power_status, @function
DS18X20_get_power_status:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	cbi 0xb,5
	ldi r24,lo8(10)
/* #APP */
 ;  83 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
 ;  380 "../ds18x20/ds18x20.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call OWReset
	movw r22,r28
	ldi r24,lo8(-76)
	call ow_command
	ldi r24,lo8(1)
	call ow_bit_io
	mov r28,r24
	call OWReset
/* #APP */
 ;  395 "../ds18x20/ds18x20.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	sbi 0xb,5
	ldi r24,lo8(1)
	cpse r28,__zero_reg__
	rjmp .L22
	ldi r24,0
.L22:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	DS18X20_get_power_status, .-DS18X20_get_power_status
	.section	.text.DS18X20_start_meas,"ax",@progbits
.global	DS18X20_start_meas
	.type	DS18X20_start_meas, @function
DS18X20_start_meas:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r17,r24
	movw r28,r22
	cbi 0xb,5
	ldi r25,lo8(10)
/* #APP */
 ;  83 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 1
	1: dec r25
	brne 1b
 ;  0 "" 2
 ;  413 "../ds18x20/ds18x20.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	call OWReset
/* #APP */
 ;  420 "../ds18x20/ds18x20.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call ow_input_pin_state
	tst r24
	breq .L26
	cpi r17,lo8(1)
	breq .L25
/* #APP */
 ;  423 "../ds18x20/ds18x20.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r22,r28
	ldi r24,lo8(68)
	call ow_command_with_parasite_enable
/* #APP */
 ;  425 "../ds18x20/ds18x20.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r24,0
	rjmp .L24
.L25:
/* #APP */
 ;  428 "../ds18x20/ds18x20.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	movw r22,r28
	ldi r24,lo8(68)
	call ow_command
/* #APP */
 ;  430 "../ds18x20/ds18x20.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r24,0
	rjmp .L24
.L26:
	ldi r24,lo8(2)
.L24:
	sbi 0xb,5
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	DS18X20_start_meas, .-DS18X20_start_meas
	.section	.text.DS18X20_conversion_in_progress,"ax",@progbits
.global	DS18X20_conversion_in_progress
	.type	DS18X20_conversion_in_progress, @function
DS18X20_conversion_in_progress:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cbi 0xb,5
	ldi r24,lo8(10)
/* #APP */
 ;  83 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(1)
	call ow_bit_io
	sbi 0xb,5
	ldi r25,lo8(1)
	cpse r24,__zero_reg__
	ldi r25,0
.L28:
	mov r24,r25
	ret
	.size	DS18X20_conversion_in_progress, .-DS18X20_conversion_in_progress
	.section	.text.DS18X20_format_from_decicelsius,"ax",@progbits
.global	DS18X20_format_from_decicelsius
	.type	DS18X20_format_from_decicelsius, @function
DS18X20_format_from_decicelsius:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 7 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r16,r22
	cpi r20,lo8(7)
	brsh .+2
	rjmp .L41
	movw r18,r24
	subi r18,25
	sbci r19,-4
	cpi r18,-9
	sbci r19,42
	brlo .+2
	rjmp .L42
	tst r25
	brge .L43
	neg r25
	neg r24
	sbc r25,__zero_reg__
	clr r14
	inc r14
	rjmp .L31
.L43:
	mov r14,__zero_reg__
.L31:
	mov r15,__zero_reg__
.L33:
	ldi r22,lo8(10)
	ldi r23,0
	call __divmodhi4
	ldi r18,lo8(1)
	add r18,r15
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r15
	adc r31,__zero_reg__
	sbrc r15,7
	dec r31
	subi r24,lo8(-(48))
	st Z,r24
	mov r24,r22
	mov r25,r23
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brge .L32
	mov r15,r18
	rjmp .L33
.L32:
	mov r24,r18
	tst r14
	breq .L34
	ldi r25,lo8(45)
	movw r30,r28
	add r30,r18
	adc r31,__zero_reg__
	sbrc r18,7
	dec r31
	std Z+1,r25
.L37:
	tst r24
	brge .L35
	ldi r19,0
	rjmp .L36
.L34:
	ldi r25,lo8(43)
	movw r30,r28
	add r30,r18
	adc r31,__zero_reg__
	sbrc r18,7
	dec r31
	std Z+1,r25
	rjmp .L37
.L35:
	ldi r25,0
	ldi r20,lo8(46)
	rjmp .L38
.L40:
	mov r25,r19
	mov r18,r24
.L38:
	ldi r19,lo8(1)
	add r19,r25
	ldi r24,lo8(-1)
	add r24,r18
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r18
	adc r31,__zero_reg__
	ld r18,Z
	movw r30,r16
	add r30,r25
	adc r31,__zero_reg__
	st Z,r18
	cpse r24,__zero_reg__
	rjmp .L39
	movw r30,r16
	add r30,r19
	adc r31,__zero_reg__
	st Z,r20
	ldi r19,lo8(2)
	add r19,r25
	rjmp .L40
.L39:
	tst r24
	brge .L40
.L36:
	movw r30,r16
	add r30,r19
	adc r31,__zero_reg__
	st Z,__zero_reg__
	ldi r24,0
	rjmp .L30
.L41:
	ldi r24,lo8(1)
	rjmp .L30
.L42:
	ldi r24,lo8(1)
.L30:
/* epilogue start */
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	DS18X20_format_from_decicelsius, .-DS18X20_format_from_decicelsius
	.section	.text.DS18X20_read_decicelsius,"ax",@progbits
.global	DS18X20_read_decicelsius
	.type	DS18X20_read_decicelsius, @function
DS18X20_read_decicelsius:
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
/* stack size = 16 */
.L__stack_usage = 16
	movw r16,r24
	movw r14,r22
	cbi 0xb,5
	ldi r24,lo8(10)
/* #APP */
 ;  83 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	call OWReset
	ldi r20,lo8(9)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call read_scratchpad
	mov r13,r24
	cpse r24,__zero_reg__
	rjmp .L45
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r30,r16
	ld r24,Z
	call DS18X20_raw_to_decicelsius
	movw r30,r14
	std Z+1,r25
	st Z,r24
.L45:
	sbi 0xb,5
	mov r24,r13
/* epilogue start */
	adiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
	.size	DS18X20_read_decicelsius, .-DS18X20_read_decicelsius
	.section	.text.DS18X20_read_decicelsius_single,"ax",@progbits
.global	DS18X20_read_decicelsius_single
	.type	DS18X20_read_decicelsius_single, @function
DS18X20_read_decicelsius_single:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
/* stack size = 15 */
.L__stack_usage = 15
	mov r14,r24
	movw r16,r22
	ldi r20,lo8(9)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,0
	ldi r25,0
	call read_scratchpad
	mov r15,r24
	cpse r24,__zero_reg__
	rjmp .L47
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	mov r24,r14
	call DS18X20_raw_to_decicelsius
	movw r30,r16
	std Z+1,r25
	st Z,r24
.L47:
	mov r24,r15
/* epilogue start */
	adiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	DS18X20_read_decicelsius_single, .-DS18X20_read_decicelsius_single
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
