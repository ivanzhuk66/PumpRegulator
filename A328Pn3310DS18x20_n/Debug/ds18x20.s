	.file	"ds18x20.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.type	DS18X20_raw_to_decicelsius, @function
DS18X20_raw_to_decicelsius:
.LFB16:
	.file 1 "../ds18x20/ds18x20.c"
	.loc 1 497 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	.loc 1 503 0
	ldd r18,Z+1
	ldi r19,0
	mov r19,r18
	clr r18
	ld r25,Z
	or r18,r25
.LVL1:
	.loc 1 507 0
	cpi r24,lo8(16)
	brne .L2
	.loc 1 509 0
	andi r18,254
.LVL2:
	.loc 1 510 0
	movw r20,r18
	lsl r20
	rol r21
	lsl r20
	rol r21
	lsl r20
	rol r21
.LVL3:
	.loc 1 511 0
	ldd r25,Z+6
	ldi r18,lo8(12)
	ldi r19,0
	sub r18,r25
	sbc r19,__zero_reg__
	add r18,r20
	adc r19,r21
.LVL4:
.L2:
	.loc 1 515 0
	tst r19
	brge .L12
.LVL5:
	.loc 1 518 0
	neg r19
	neg r18
	sbc r19,__zero_reg__
.LVL6:
	.loc 1 516 0
	ldi r22,lo8(1)
.LVL7:
	rjmp .L3
.LVL8:
.L12:
	.loc 1 521 0
	ldi r22,0
.LVL9:
.L3:
	.loc 1 525 0
	cpi r24,lo8(40)
	breq .L4
	.loc 1 525 0 is_stmt 0 discriminator 1
	cpi r24,lo8(34)
	brne .L5
.L4:
	.loc 1 526 0 is_stmt 1
	ldd r24,Z+4
.LVL10:
	andi r24,lo8(96)
	cpi r24,lo8(32)
	breq .L6
	cpi r24,lo8(64)
	breq .L7
	cpse r24,__zero_reg__
	rjmp .L5
	.loc 1 528 0
	andi r18,248
.LVL11:
	.loc 1 529 0
	rjmp .L5
.L6:
	.loc 1 531 0
	andi r18,252
.LVL12:
	.loc 1 532 0
	rjmp .L5
.L7:
	.loc 1 534 0
	andi r18,254
.LVL13:
.L5:
	.loc 1 542 0
	movw r24,r18
	swap r25
	swap r24
	andi r24,0x0f
	eor r24,r25
	andi r25,0x0f
	eor r24,r25
.LVL14:
	.loc 1 543 0
	movw r20,r24
	lsl r20
	rol r21
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
.LVL15:
	add r24,r20
	adc r25,r21
.LVL16:
	.loc 1 547 0
	andi r18,15
	clr r19
.LVL17:
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
.LVL18:
	.loc 1 548 0
	cpse r22,__zero_reg__
	rjmp .L9
	.loc 1 549 0
	subi r19,-2
.LVL19:
	.loc 1 551 0
	mov r18,r19
	clr r19
	lsr r18
	lsr r18
.LVL20:
	.loc 1 552 0
	add r18,r24
	adc r19,r25
.LVL21:
.L11:
	.loc 1 558 0
	movw r24,r18
	subi r24,-38
	sbci r25,-3
	cpi r24,9
	sbci r25,7
	brlo .L13
	.loc 1 559 0
	ldi r24,lo8(-48)
	ldi r25,lo8(7)
	ret
.L13:
	.loc 1 561 0
	mov r24,r18
	mov r25,r19
	ret
.LVL22:
.L9:
	.loc 1 551 0
	mov r18,r19
	clr r19
	lsr r18
	lsr r18
.LVL23:
	.loc 1 552 0
	add r24,r18
	adc r25,r19
.LVL24:
	.loc 1 555 0
	clr r18
	clr r19
	sub r18,r24
	sbc r19,r25
.LVL25:
	rjmp .L11
	.cfi_endproc
.LFE16:
	.size	DS18X20_raw_to_decicelsius, .-DS18X20_raw_to_decicelsius
	.type	read_scratchpad, @function
read_scratchpad:
.LFB15:
	.loc 1 467 0
	.cfi_startproc
.LVL26:
	push r14
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r14,r22
	mov r15,r23
	mov r16,r20
	.loc 1 472 0
	cbi 0xb,5
.LVL27:
.LBB16:
.LBB17:
	.file 2 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h"
	.loc 2 83 0
	ldi r18,lo8(10)
/* #APP */
 ;  83 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 1
	1: dec r18
	brne 1b
 ;  0 "" 2
.LVL28:
/* #NOAPP */
.LBE17:
.LBE16:
	.loc 1 474 0
	movw r22,r24
.LVL29:
	ldi r24,lo8(-66)
.LVL30:
	call ow_command
.LVL31:
	.loc 1 476 0
	tst r16
	breq .L16
	mov r28,r14
	mov r29,r15
	ldi r17,0
.LVL32:
.L17:
	.loc 1 477 0 discriminator 2
	call ow_byte_rd
.LVL33:
	st Y+,r24
	.loc 1 476 0 discriminator 2
	subi r17,lo8(-(1))
.LVL34:
	cpse r17,r16
	rjmp .L17
.LVL35:
.L16:
	.loc 1 479 0
	ldi r22,lo8(9)
	ldi r23,0
	mov r24,r14
	mov r25,r15
	call crc8
.LVL36:
	tst r24
	breq .L19
	.loc 1 480 0
	ldi r24,lo8(3)
	rjmp .L18
.L19:
	.loc 1 482 0
	ldi r24,0
.L18:
.LVL37:
	.loc 1 486 0
	sbi 0xb,5
/* epilogue start */
	.loc 1 490 0
	pop r29
	pop r28
	pop r17
	pop r16
.LVL38:
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE15:
	.size	read_scratchpad, .-read_scratchpad
.global	send_power_10ms
	.type	send_power_10ms, @function
send_power_10ms:
.LFB11:
	.loc 1 44 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 46 0
	sbi 0xa,5
	.loc 1 47 0
	sbi 0xb,5
.LVL39:
.LBB18:
.LBB19:
	.file 3 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h"
	.loc 3 163 0
	ldi r24,lo8(17999)
	ldi r25,hi8(17999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LBE19:
.LBE18:
	.loc 1 53 0
	cbi 0xb,5
.LVL40:
.LBB20:
.LBB21:
	.loc 2 83 0
	ldi r24,lo8(10)
/* #APP */
 ;  83 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
.LVL41:
/* #NOAPP */
	ret
.LBE21:
.LBE20:
	.cfi_endproc
.LFE11:
	.size	send_power_10ms, .-send_power_10ms
.global	DS18X20_get_power_status
	.type	DS18X20_get_power_status, @function
DS18X20_get_power_status:
.LFB12:
	.loc 1 374 0
	.cfi_startproc
.LVL42:
	push r28
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 378 0
	cbi 0xb,5
.LVL43:
.LBB22:
.LBB23:
	.loc 2 83 0
	ldi r24,lo8(10)
.LVL44:
/* #APP */
 ;  83 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
.LVL45:
/* #NOAPP */
.LBE23:
.LBE22:
	.loc 1 380 0
/* #APP */
 ;  380 "../ds18x20/ds18x20.c" 1
	cli
 ;  0 "" 2
	.loc 1 382 0
/* #NOAPP */
	call OWReset
.LVL46:
	.loc 1 387 0
	movw r22,r28
	ldi r24,lo8(-76)
	call ow_command
.LVL47:
	.loc 1 388 0
	ldi r24,lo8(1)
	call ow_bit_io
.LVL48:
	mov r28,r24
.LVL49:
	.loc 1 390 0
	call OWReset
.LVL50:
	.loc 1 395 0
/* #APP */
 ;  395 "../ds18x20/ds18x20.c" 1
	sei
 ;  0 "" 2
	.loc 1 398 0
/* #NOAPP */
	sbi 0xb,5
	.loc 1 401 0
	ldi r24,lo8(1)
	cpse r28,__zero_reg__
	rjmp .L22
	ldi r24,0
.L22:
/* epilogue start */
	.loc 1 402 0
	pop r29
	pop r28
.LVL51:
	ret
	.cfi_endproc
.LFE12:
	.size	DS18X20_get_power_status, .-DS18X20_get_power_status
.global	DS18X20_start_meas
	.type	DS18X20_start_meas, @function
DS18X20_start_meas:
.LFB13:
	.loc 1 407 0
	.cfi_startproc
.LVL52:
	push r17
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI10:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r17,r24
	movw r28,r22
	.loc 1 411 0
	cbi 0xb,5
.LVL53:
.LBB24:
.LBB25:
	.loc 2 83 0
	ldi r25,lo8(10)
/* #APP */
 ;  83 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 1
	1: dec r25
	brne 1b
 ;  0 "" 2
.LVL54:
/* #NOAPP */
.LBE25:
.LBE24:
	.loc 1 413 0
/* #APP */
 ;  413 "../ds18x20/ds18x20.c" 1
	cli
 ;  0 "" 2
	.loc 1 415 0
/* #NOAPP */
	call OWReset
.LVL55:
	.loc 1 420 0
/* #APP */
 ;  420 "../ds18x20/ds18x20.c" 1
	sei
 ;  0 "" 2
	.loc 1 421 0
/* #NOAPP */
	call ow_input_pin_state
.LVL56:
	tst r24
	breq .L26
	.loc 1 422 0
	cpi r17,lo8(1)
	breq .L25
	.loc 1 423 0
/* #APP */
 ;  423 "../ds18x20/ds18x20.c" 1
	cli
 ;  0 "" 2
	.loc 1 424 0
/* #NOAPP */
	movw r22,r28
	ldi r24,lo8(68)
	call ow_command_with_parasite_enable
.LVL57:
	.loc 1 425 0
/* #APP */
 ;  425 "../ds18x20/ds18x20.c" 1
	sei
 ;  0 "" 2
	.loc 1 433 0
/* #NOAPP */
	ldi r24,0
	rjmp .L24
.L25:
	.loc 1 428 0
/* #APP */
 ;  428 "../ds18x20/ds18x20.c" 1
	cli
 ;  0 "" 2
	.loc 1 429 0
/* #NOAPP */
	movw r22,r28
	ldi r24,lo8(68)
	call ow_command
.LVL58:
	.loc 1 430 0
/* #APP */
 ;  430 "../ds18x20/ds18x20.c" 1
	sei
 ;  0 "" 2
	.loc 1 433 0
/* #NOAPP */
	ldi r24,0
	rjmp .L24
.L26:
	.loc 1 439 0
	ldi r24,lo8(2)
.L24:
.LVL59:
	.loc 1 443 0
	sbi 0xb,5
/* epilogue start */
	.loc 1 447 0
	pop r29
	pop r28
.LVL60:
	pop r17
.LVL61:
	ret
	.cfi_endproc
.LFE13:
	.size	DS18X20_start_meas, .-DS18X20_start_meas
.global	DS18X20_conversion_in_progress
	.type	DS18X20_conversion_in_progress, @function
DS18X20_conversion_in_progress:
.LFB14:
	.loc 1 452 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 456 0
	cbi 0xb,5
.LVL62:
.LBB26:
.LBB27:
	.loc 2 83 0
	ldi r24,lo8(10)
/* #APP */
 ;  83 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
.LVL63:
/* #NOAPP */
.LBE27:
.LBE26:
	.loc 1 458 0
	ldi r24,lo8(1)
	call ow_bit_io
.LVL64:
	.loc 1 461 0
	sbi 0xb,5
	.loc 1 458 0
	ldi r25,lo8(1)
	cpse r24,__zero_reg__
	ldi r25,0
.L28:
	.loc 1 464 0
	mov r24,r25
.LVL65:
	ret
	.cfi_endproc
.LFE14:
	.size	DS18X20_conversion_in_progress, .-DS18X20_conversion_in_progress
.global	DS18X20_format_from_decicelsius
	.type	DS18X20_format_from_decicelsius, @function
DS18X20_format_from_decicelsius:
.LFB17:
	.loc 1 570 0
	.cfi_startproc
.LVL66:
	push r14
.LCFI11:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI13:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI14:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI15:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI16:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI17:
	.cfi_def_cfa_register 28
	sbiw r28,7
.LCFI18:
	.cfi_def_cfa_offset 15
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
.LVL67:
	.loc 1 579 0
	cpi r20,lo8(7)
	brsh .+2
	rjmp .L41
	.loc 1 579 0 is_stmt 0 discriminator 1
	movw r18,r24
	subi r18,25
	sbci r19,-4
	cpi r18,-9
	sbci r19,42
.LVL68:
	brlo .+2
	rjmp .L42
	.loc 1 581 0 is_stmt 1
	tst r25
	brge .L43
.LVL69:
	.loc 1 583 0
	neg r25
	neg r24
	sbc r25,__zero_reg__
.LVL70:
	.loc 1 582 0
	clr r14
	inc r14
	rjmp .L31
.LVL71:
.L43:
	.loc 1 571 0
	mov r14,__zero_reg__
.LVL72:
.L31:
	.loc 1 582 0 discriminator 1
	mov r15,__zero_reg__
.LVL73:
.L33:
	.loc 1 588 0 discriminator 1
	ldi r22,lo8(10)
	ldi r23,0
	call __divmodhi4
.LVL74:
	.loc 1 589 0 discriminator 1
	ldi r18,lo8(1)
	add r18,r15
.LVL75:
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
	.loc 1 590 0 discriminator 1
	mov r24,r22
	mov r25,r23
.LVL76:
	.loc 1 591 0 discriminator 1
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brge .L32
	.loc 1 589 0
	mov r15,r18
	rjmp .L33
.L32:
	mov r24,r18
	.loc 1 593 0
	tst r14
	breq .L34
	.loc 1 594 0
	ldi r25,lo8(45)
	movw r30,r28
	add r30,r18
	adc r31,__zero_reg__
	sbrc r18,7
	dec r31
	std Z+1,r25
.L37:
	.loc 1 601 0 discriminator 1
	tst r24
	brge .L35
	.loc 1 601 0 is_stmt 0
	ldi r19,0
	rjmp .L36
.L34:
	.loc 1 597 0 is_stmt 1
	ldi r25,lo8(43)
	movw r30,r28
	add r30,r18
	adc r31,__zero_reg__
	sbrc r18,7
	dec r31
	std Z+1,r25
	rjmp .L37
.L35:
	.loc 1 601 0
	ldi r25,0
	.loc 1 604 0
	ldi r20,lo8(46)
	rjmp .L38
.LVL77:
.L40:
	mov r25,r19
	mov r18,r24
.LVL78:
.L38:
	.loc 1 602 0
	ldi r19,lo8(1)
	add r19,r25
.LVL79:
	ldi r24,lo8(-1)
	add r24,r18
.LVL80:
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
	.loc 1 603 0
	cpse r24,__zero_reg__
	rjmp .L39
.LVL81:
	.loc 1 604 0
	movw r30,r16
	add r30,r19
	adc r31,__zero_reg__
	st Z,r20
.LVL82:
	ldi r19,lo8(2)
	add r19,r25
.LVL83:
	rjmp .L40
.LVL84:
.L39:
	.loc 1 601 0 discriminator 1
	tst r24
	brge .L40
.LVL85:
.L36:
	.loc 1 607 0
	movw r30,r16
	add r30,r19
	adc r31,__zero_reg__
	st Z,__zero_reg__
.LVL86:
	.loc 1 609 0
	ldi r24,0
.LVL87:
	rjmp .L30
.LVL88:
.L41:
	.loc 1 611 0
	ldi r24,lo8(1)
.LVL89:
	rjmp .L30
.LVL90:
.L42:
	ldi r24,lo8(1)
.LVL91:
.L30:
/* epilogue start */
	.loc 1 615 0
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
.LVL92:
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE17:
	.size	DS18X20_format_from_decicelsius, .-DS18X20_format_from_decicelsius
.global	DS18X20_read_decicelsius
	.type	DS18X20_read_decicelsius, @function
DS18X20_read_decicelsius:
.LFB18:
	.loc 1 621 0
	.cfi_startproc
.LVL93:
	push r13
.LCFI19:
	.cfi_def_cfa_offset 3
	.cfi_offset 13, -2
	push r14
.LCFI20:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI21:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI22:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI23:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI24:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI25:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI26:
	.cfi_def_cfa_register 28
	sbiw r28,9
.LCFI27:
	.cfi_def_cfa_offset 18
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
	.loc 1 626 0
	cbi 0xb,5
.LVL94:
.LBB28:
.LBB29:
	.loc 2 83 0
	ldi r24,lo8(10)
.LVL95:
/* #APP */
 ;  83 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
.LVL96:
/* #NOAPP */
.LBE29:
.LBE28:
	.loc 1 629 0
	call OWReset
.LVL97:
	.loc 1 635 0
	ldi r20,lo8(9)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call read_scratchpad
.LVL98:
	mov r13,r24
.LVL99:
	.loc 1 636 0
	cpse r24,__zero_reg__
	rjmp .L45
	.loc 1 637 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r30,r16
	ld r24,Z
	call DS18X20_raw_to_decicelsius
.LVL100:
	movw r30,r14
	std Z+1,r25
	st Z,r24
.L45:
	.loc 1 641 0
	sbi 0xb,5
	.loc 1 644 0
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
.LVL101:
	pop r15
	pop r14
.LVL102:
	pop r13
.LVL103:
	ret
	.cfi_endproc
.LFE18:
	.size	DS18X20_read_decicelsius, .-DS18X20_read_decicelsius
.global	DS18X20_read_decicelsius_single
	.type	DS18X20_read_decicelsius_single, @function
DS18X20_read_decicelsius_single:
.LFB19:
	.loc 1 650 0
	.cfi_startproc
.LVL104:
	push r14
.LCFI28:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI29:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI30:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI31:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI32:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI33:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI34:
	.cfi_def_cfa_register 28
	sbiw r28,9
.LCFI35:
	.cfi_def_cfa_offset 17
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
	.loc 1 654 0
	ldi r20,lo8(9)
	movw r22,r28
.LVL105:
	subi r22,-1
	sbci r23,-1
	ldi r24,0
	ldi r25,0
.LVL106:
	call read_scratchpad
.LVL107:
	mov r15,r24
.LVL108:
	.loc 1 655 0
	cpse r24,__zero_reg__
	rjmp .L47
	.loc 1 656 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	mov r24,r14
	call DS18X20_raw_to_decicelsius
.LVL109:
	movw r30,r16
	std Z+1,r25
	st Z,r24
.L47:
	.loc 1 659 0
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
.LVL110:
	pop r15
.LVL111:
	pop r14
.LVL112:
	ret
	.cfi_endproc
.LFE19:
	.size	DS18X20_read_decicelsius_single, .-DS18X20_read_decicelsius_single
.Letext0:
	.file 4 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h"
	.file 5 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h"
	.file 6 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/onewire/onewire.h"
	.file 7 "../ds18x20/crc8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x78f
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF50
	.byte	0x1
	.long	.LASF51
	.long	.LASF52
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x44
	.long	0x58
	.uleb128 0x5
	.long	.LASF1
	.byte	0x4
	.byte	0x45
	.long	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"rem"
	.byte	0x4
	.byte	0x46
	.long	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF3
	.byte	0x4
	.byte	0x47
	.long	0x33
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF2
	.uleb128 0x7
	.long	.LASF4
	.byte	0x5
	.byte	0x79
	.long	0x75
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x7
	.long	.LASF6
	.byte	0x5
	.byte	0x7a
	.long	0x87
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF7
	.uleb128 0x7
	.long	.LASF8
	.byte	0x5
	.byte	0x7b
	.long	0x2c
	.uleb128 0x7
	.long	.LASF9
	.byte	0x5
	.byte	0x7c
	.long	0x25
	.uleb128 0x7
	.long	.LASF10
	.byte	0x5
	.byte	0x7e
	.long	0xaf
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0x51
	.byte	0x1
	.byte	0x3
	.long	0xdd
	.uleb128 0x9
	.long	.LASF16
	.byte	0x2
	.byte	0x51
	.long	0x7c
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.byte	0x8e
	.byte	0x1
	.byte	0x3
	.long	0x116
	.uleb128 0x9
	.long	.LASF17
	.byte	0x3
	.byte	0x8e
	.long	0x116
	.uleb128 0xa
	.long	.LASF18
	.byte	0x3
	.byte	0x90
	.long	0x116
	.uleb128 0xa
	.long	.LASF19
	.byte	0x3
	.byte	0x94
	.long	0xa4
	.uleb128 0xb
	.byte	0x1
	.long	.LASF53
	.byte	0x3
	.byte	0x95
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF20
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.word	0x1f0
	.byte	0x1
	.long	0x8e
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x19b
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.word	0x1f0
	.long	0x7c
	.long	.LLST0
	.uleb128 0xe
	.string	"sp"
	.byte	0x1
	.word	0x1f0
	.long	0x19b
	.long	.LLST1
	.uleb128 0xf
	.long	.LASF22
	.byte	0x1
	.word	0x1f2
	.long	0x99
	.long	.LLST2
	.uleb128 0xf
	.long	.LASF23
	.byte	0x1
	.word	0x1f3
	.long	0x7c
	.long	.LLST3
	.uleb128 0xf
	.long	.LASF24
	.byte	0x1
	.word	0x1f4
	.long	0x8e
	.long	.LLST4
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.word	0x1f5
	.long	0x99
	.long	.LLST5
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.long	0x7c
	.uleb128 0x11
	.long	.LASF27
	.byte	0x1
	.word	0x1d2
	.byte	0x1
	.long	0x7c
	.long	.LFB15
	.long	.LFE15
	.long	.LLST6
	.byte	0x1
	.long	0x263
	.uleb128 0xe
	.string	"id"
	.byte	0x1
	.word	0x1d2
	.long	0x19b
	.long	.LLST7
	.uleb128 0xe
	.string	"sp"
	.byte	0x1
	.word	0x1d2
	.long	0x19b
	.long	.LLST8
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.word	0x1d2
	.long	0x7c
	.long	.LLST9
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.word	0x1d4
	.long	0x7c
	.long	.LLST10
	.uleb128 0x13
	.string	"ret"
	.byte	0x1
	.word	0x1d5
	.long	0x7c
	.byte	0x1
	.byte	0x68
	.uleb128 0x14
	.long	0xc4
	.long	.LBB16
	.long	.LBE16
	.byte	0x1
	.word	0x1d8
	.long	0x225
	.uleb128 0x15
	.long	0xd1
	.long	.LLST11
	.byte	0
	.uleb128 0x16
	.long	.LVL31
	.long	0x6df
	.long	0x245
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xbe
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.uleb128 0x18
	.long	.LVL33
	.long	0x6f8
	.uleb128 0x19
	.long	.LVL36
	.long	0x706
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0x2c
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2d1
	.uleb128 0x1b
	.long	0xdd
	.long	.LBB18
	.long	.LBE18
	.byte	0x1
	.byte	0x33
	.long	0x2b7
	.uleb128 0x1c
	.long	0xea
	.byte	0x4
	.long	0x41100000
	.uleb128 0x1d
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x1e
	.long	0xf5
	.byte	0x4
	.long	0x478ca000
	.uleb128 0x1f
	.long	0x100
	.long	0x11940
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xc4
	.long	.LBB20
	.long	.LBE20
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.long	0xd1
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.word	0x175
	.byte	0x1
	.long	0x7c
	.long	.LFB12
	.long	.LFE12
	.long	.LLST13
	.byte	0x1
	.long	0x372
	.uleb128 0xe
	.string	"id"
	.byte	0x1
	.word	0x175
	.long	0x19b
	.long	.LLST14
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.word	0x177
	.long	0x7c
	.long	.LLST15
	.uleb128 0x14
	.long	0xc4
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.word	0x17a
	.long	0x32d
	.uleb128 0x15
	.long	0xd1
	.long	.LLST16
	.byte	0
	.uleb128 0x18
	.long	.LVL46
	.long	0x723
	.uleb128 0x16
	.long	.LVL47
	.long	0x6df
	.long	0x355
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xb4
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL48
	.long	0x736
	.long	0x368
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x18
	.long	.LVL50
	.long	0x723
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.word	0x196
	.byte	0x1
	.long	0x7c
	.long	.LFB13
	.long	.LFE13
	.long	.LLST17
	.byte	0x1
	.long	0x429
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.word	0x196
	.long	0x7c
	.long	.LLST18
	.uleb128 0xe
	.string	"id"
	.byte	0x1
	.word	0x196
	.long	0x19b
	.long	.LLST19
	.uleb128 0x13
	.string	"ret"
	.byte	0x1
	.word	0x198
	.long	0x7c
	.byte	0x1
	.byte	0x68
	.uleb128 0x14
	.long	0xc4
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.word	0x19b
	.long	0x3dc
	.uleb128 0x15
	.long	0xd1
	.long	.LLST20
	.byte	0
	.uleb128 0x18
	.long	.LVL55
	.long	0x723
	.uleb128 0x18
	.long	.LVL56
	.long	0x74e
	.uleb128 0x16
	.long	.LVL57
	.long	0x75c
	.long	0x40d
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x44
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL58
	.long	0x6df
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x44
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.word	0x1c3
	.byte	0x1
	.long	0x7c
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x486
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.word	0x1c5
	.long	0x7c
	.long	.LLST21
	.uleb128 0x14
	.long	0xc4
	.long	.LBB26
	.long	.LBE26
	.byte	0x1
	.word	0x1c8
	.long	0x476
	.uleb128 0x15
	.long	0xd1
	.long	.LLST22
	.byte	0
	.uleb128 0x19
	.long	.LVL64
	.long	0x736
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.word	0x239
	.byte	0x1
	.long	0x7c
	.long	.LFB17
	.long	.LFE17
	.long	.LLST23
	.byte	0x1
	.long	0x542
	.uleb128 0xd
	.long	.LASF24
	.byte	0x1
	.word	0x239
	.long	0x8e
	.long	.LLST24
	.uleb128 0xe
	.string	"str"
	.byte	0x1
	.word	0x239
	.long	0x542
	.long	.LLST25
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.word	0x239
	.long	0x7c
	.long	.LLST26
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.word	0x23b
	.long	0x7c
	.long	.LLST27
	.uleb128 0x23
	.long	.LASF36
	.byte	0x1
	.word	0x23c
	.long	0x54f
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0xf
	.long	.LASF37
	.byte	0x1
	.word	0x23d
	.long	0x6a
	.long	.LLST28
	.uleb128 0xf
	.long	.LASF38
	.byte	0x1
	.word	0x23e
	.long	0x7c
	.long	.LLST29
	.uleb128 0x24
	.string	"dt"
	.byte	0x1
	.word	0x23f
	.long	0x58
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.word	0x240
	.long	0x7c
	.long	.LLST30
	.uleb128 0x19
	.long	.LVL74
	.long	0x775
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.long	0x548
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF39
	.uleb128 0x25
	.long	0x548
	.long	0x55f
	.uleb128 0x26
	.long	0x55f
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF40
	.uleb128 0x21
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.word	0x26c
	.byte	0x1
	.long	0x7c
	.long	.LFB18
	.long	.LFE18
	.long	.LLST31
	.byte	0x1
	.long	0x628
	.uleb128 0xe
	.string	"id"
	.byte	0x1
	.word	0x26c
	.long	0x19b
	.long	.LLST32
	.uleb128 0xd
	.long	.LASF24
	.byte	0x1
	.word	0x26c
	.long	0x628
	.long	.LLST33
	.uleb128 0x13
	.string	"sp"
	.byte	0x1
	.word	0x26e
	.long	0x62e
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.word	0x26f
	.long	0x7c
	.long	.LLST34
	.uleb128 0x14
	.long	0xc4
	.long	.LBB28
	.long	.LBE28
	.byte	0x1
	.word	0x272
	.long	0x5e0
	.uleb128 0x15
	.long	0xd1
	.long	.LLST35
	.byte	0
	.uleb128 0x18
	.long	.LVL97
	.long	0x723
	.uleb128 0x16
	.long	.LVL98
	.long	0x1a1
	.long	0x612
	.uleb128 0x17
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x19
	.long	.LVL100
	.long	0x11d
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.long	0x8e
	.uleb128 0x25
	.long	0x7c
	.long	0x63e
	.uleb128 0x26
	.long	0x55f
	.byte	0x8
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.word	0x289
	.byte	0x1
	.long	0x7c
	.long	.LFB19
	.long	.LFE19
	.long	.LLST36
	.byte	0x1
	.long	0x6df
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.word	0x289
	.long	0x7c
	.long	.LLST37
	.uleb128 0xd
	.long	.LASF24
	.byte	0x1
	.word	0x289
	.long	0x628
	.long	.LLST38
	.uleb128 0x13
	.string	"sp"
	.byte	0x1
	.word	0x28b
	.long	0x62e
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.word	0x28c
	.long	0x7c
	.long	.LLST39
	.uleb128 0x16
	.long	.LVL107
	.long	0x1a1
	.long	0x6c3
	.uleb128 0x17
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x19
	.long	.LVL109
	.long	0x11d
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF43
	.byte	0x6
	.byte	0x55
	.byte	0x1
	.byte	0x1
	.long	0x6f8
	.uleb128 0x28
	.long	0x7c
	.uleb128 0x28
	.long	0x19b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF47
	.byte	0x6
	.byte	0x50
	.byte	0x1
	.long	0x7c
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF45
	.byte	0x7
	.byte	0xa
	.byte	0x1
	.long	0x7c
	.byte	0x1
	.long	0x723
	.uleb128 0x28
	.long	0x19b
	.uleb128 0x28
	.long	0x99
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x3d
	.long	0x7c
	.byte	0x1
	.long	0x736
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF46
	.byte	0x6
	.byte	0x4e
	.byte	0x1
	.long	0x7c
	.byte	0x1
	.long	0x74e
	.uleb128 0x28
	.long	0x7c
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF48
	.byte	0x6
	.byte	0x5a
	.byte	0x1
	.long	0x7c
	.byte	0x1
	.uleb128 0x27
	.byte	0x1
	.long	.LASF49
	.byte	0x6
	.byte	0x56
	.byte	0x1
	.byte	0x1
	.long	0x775
	.uleb128 0x28
	.long	0x7c
	.uleb128 0x28
	.long	0x19b
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"div"
	.byte	0x4
	.byte	0xa0
	.long	.LASF55
	.byte	0x1
	.long	0x58
	.byte	0x1
	.uleb128 0x28
	.long	0x2c
	.uleb128 0x28
	.long	0x2c
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0-.Ltext0
	.long	.LVL10-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL10-.Ltext0
	.long	.LFE16-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0-.Ltext0
	.long	.LVL7-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8-.Ltext0
	.long	.LVL9-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9-.Ltext0
	.long	.LFE16-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL1-.Ltext0
	.long	.LVL3-.Ltext0
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.word	0x4
	.byte	0x82
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL6-.Ltext0
	.long	.LVL17-.Ltext0
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL5-.Ltext0
	.long	.LVL8-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL9-.Ltext0
	.long	.LFE16-.Ltext0
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST4:
	.long	.LVL14-.Ltext0
	.long	.LVL15-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.word	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.long	.LVL16-.Ltext0
	.long	.LVL21-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22-.Ltext0
	.long	.LVL25-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25-.Ltext0
	.long	.LFE16-.Ltext0
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19-.Ltext0
	.long	.LVL20-.Ltext0
	.word	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0x9f
	.long	.LVL20-.Ltext0
	.long	.LVL21-.Ltext0
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22-.Ltext0
	.long	.LVL23-.Ltext0
	.word	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0x9f
	.long	.LVL23-.Ltext0
	.long	.LVL25-.Ltext0
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LFB15-.Ltext0
	.long	.LCFI0-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1-.Ltext0
	.long	.LCFI2-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2-.Ltext0
	.long	.LCFI3-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4-.Ltext0
	.long	.LCFI5-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5-.Ltext0
	.long	.LFE15-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST7:
	.long	.LVL26-.Ltext0
	.long	.LVL30-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30-.Ltext0
	.long	.LVL31-1-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31-1-.Ltext0
	.long	.LFE15-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL26-.Ltext0
	.long	.LVL29-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29-.Ltext0
	.long	.LFE15-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL26-.Ltext0
	.long	.LVL31-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL31-1-.Ltext0
	.long	.LVL38-.Ltext0
	.word	0x1
	.byte	0x60
	.long	.LVL38-.Ltext0
	.long	.LFE15-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL31-.Ltext0
	.long	.LVL32-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL32-.Ltext0
	.long	.LVL35-.Ltext0
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST11:
	.long	.LVL27-.Ltext0
	.long	.LVL28-.Ltext0
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL40-.Ltext0
	.long	.LVL41-.Ltext0
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LFB12-.Ltext0
	.long	.LCFI6-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7-.Ltext0
	.long	.LFE12-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST14:
	.long	.LVL42-.Ltext0
	.long	.LVL44-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44-.Ltext0
	.long	.LVL49-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49-.Ltext0
	.long	.LFE12-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL49-.Ltext0
	.long	.LVL50-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL50-1-.Ltext0
	.long	.LVL51-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST16:
	.long	.LVL43-.Ltext0
	.long	.LVL45-.Ltext0
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LFB13-.Ltext0
	.long	.LCFI8-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI8-.Ltext0
	.long	.LCFI9-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI10-.Ltext0
	.long	.LFE13-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST18:
	.long	.LVL52-.Ltext0
	.long	.LVL55-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL55-1-.Ltext0
	.long	.LVL61-.Ltext0
	.word	0x1
	.byte	0x61
	.long	.LVL61-.Ltext0
	.long	.LFE13-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL52-.Ltext0
	.long	.LVL55-1-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55-1-.Ltext0
	.long	.LVL60-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL60-.Ltext0
	.long	.LFE13-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL53-.Ltext0
	.long	.LVL54-.Ltext0
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL64-.Ltext0
	.long	.LVL65-.Ltext0
	.word	0x7
	.byte	0x88
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL62-.Ltext0
	.long	.LVL63-.Ltext0
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LFB17-.Ltext0
	.long	.LCFI11-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI12-.Ltext0
	.long	.LCFI13-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI14-.Ltext0
	.long	.LCFI15-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI16-.Ltext0
	.long	.LCFI17-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI17-.Ltext0
	.long	.LCFI18-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 8
	.long	.LCFI18-.Ltext0
	.long	.LFE17-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 15
	.long	0
	.long	0
.LLST24:
	.long	.LVL66-.Ltext0
	.long	.LVL70-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70-.Ltext0
	.long	.LVL74-1-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76-.Ltext0
	.long	.LVL88-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL88-.Ltext0
	.long	.LVL89-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL89-.Ltext0
	.long	.LVL90-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL90-.Ltext0
	.long	.LVL91-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LVL66-.Ltext0
	.long	.LVL73-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL73-.Ltext0
	.long	.LVL92-.Ltext0
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL92-.Ltext0
	.long	.LFE17-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL66-.Ltext0
	.long	.LVL68-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL68-.Ltext0
	.long	.LVL88-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL88-.Ltext0
	.long	.LVL90-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL90-.Ltext0
	.long	.LFE17-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL67-.Ltext0
	.long	.LVL69-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL69-.Ltext0
	.long	.LVL71-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL71-.Ltext0
	.long	.LVL72-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL73-.Ltext0
	.long	.LVL88-.Ltext0
	.word	0x1
	.byte	0x5e
	.long	.LVL88-.Ltext0
	.long	.LVL91-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL67-.Ltext0
	.long	.LVL73-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL73-.Ltext0
	.long	.LVL75-.Ltext0
	.word	0x1
	.byte	0x5f
	.long	.LVL75-.Ltext0
	.long	.LVL77-.Ltext0
	.word	0x1
	.byte	0x62
	.long	.LVL78-.Ltext0
	.long	.LVL80-.Ltext0
	.word	0x1
	.byte	0x62
	.long	.LVL80-.Ltext0
	.long	.LVL82-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL82-.Ltext0
	.long	.LVL84-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL84-.Ltext0
	.long	.LVL87-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL88-.Ltext0
	.long	.LVL91-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL67-.Ltext0
	.long	.LVL77-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL77-.Ltext0
	.long	.LVL78-.Ltext0
	.word	0x1
	.byte	0x63
	.long	.LVL78-.Ltext0
	.long	.LVL79-.Ltext0
	.word	0x1
	.byte	0x69
	.long	.LVL79-.Ltext0
	.long	.LVL81-.Ltext0
	.word	0x1
	.byte	0x63
	.long	.LVL81-.Ltext0
	.long	.LVL83-.Ltext0
	.word	0x3
	.byte	0x89
	.sleb128 2
	.byte	0x9f
	.long	.LVL83-.Ltext0
	.long	.LVL85-.Ltext0
	.word	0x1
	.byte	0x63
	.long	.LVL88-.Ltext0
	.long	.LVL91-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL86-.Ltext0
	.long	.LVL88-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL91-.Ltext0
	.long	.LFE17-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST31:
	.long	.LFB18-.Ltext0
	.long	.LCFI19-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI19-.Ltext0
	.long	.LCFI20-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI20-.Ltext0
	.long	.LCFI21-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI21-.Ltext0
	.long	.LCFI22-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI22-.Ltext0
	.long	.LCFI23-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI23-.Ltext0
	.long	.LCFI24-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI24-.Ltext0
	.long	.LCFI25-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI25-.Ltext0
	.long	.LCFI26-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI26-.Ltext0
	.long	.LCFI27-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 9
	.long	.LCFI27-.Ltext0
	.long	.LFE18-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 18
	.long	0
	.long	0
.LLST32:
	.long	.LVL93-.Ltext0
	.long	.LVL95-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL95-.Ltext0
	.long	.LVL101-.Ltext0
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL101-.Ltext0
	.long	.LFE18-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL93-.Ltext0
	.long	.LVL97-1-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL97-1-.Ltext0
	.long	.LVL102-.Ltext0
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL102-.Ltext0
	.long	.LFE18-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL99-.Ltext0
	.long	.LVL103-.Ltext0
	.word	0x1
	.byte	0x5d
	.long	.LVL103-.Ltext0
	.long	.LFE18-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST35:
	.long	.LVL94-.Ltext0
	.long	.LVL96-.Ltext0
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LFB19-.Ltext0
	.long	.LCFI28-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI28-.Ltext0
	.long	.LCFI29-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI29-.Ltext0
	.long	.LCFI30-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI30-.Ltext0
	.long	.LCFI31-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI31-.Ltext0
	.long	.LCFI32-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI32-.Ltext0
	.long	.LCFI33-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI33-.Ltext0
	.long	.LCFI34-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI34-.Ltext0
	.long	.LCFI35-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 8
	.long	.LCFI35-.Ltext0
	.long	.LFE19-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 17
	.long	0
	.long	0
.LLST37:
	.long	.LVL104-.Ltext0
	.long	.LVL106-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL106-.Ltext0
	.long	.LVL112-.Ltext0
	.word	0x1
	.byte	0x5e
	.long	.LVL112-.Ltext0
	.long	.LFE19-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL104-.Ltext0
	.long	.LVL105-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL105-.Ltext0
	.long	.LVL110-.Ltext0
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110-.Ltext0
	.long	.LFE19-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL108-.Ltext0
	.long	.LVL111-.Ltext0
	.word	0x1
	.byte	0x5f
	.long	.LVL111-.Ltext0
	.long	.LFE19-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"DS18X20_get_power_status"
.LASF1:
	.string	"quot"
.LASF33:
	.string	"ibit"
.LASF27:
	.string	"read_scratchpad"
.LASF28:
	.string	"pstat"
.LASF4:
	.string	"int8_t"
.LASF53:
	.string	"__builtin_avr_delay_cycles"
.LASF21:
	.string	"familycode"
.LASF18:
	.string	"__tmp"
.LASF49:
	.string	"ow_command_with_parasite_enable"
.LASF40:
	.string	"sizetype"
.LASF47:
	.string	"ow_byte_rd"
.LASF51:
	.string	"../ds18x20/ds18x20.c"
.LASF25:
	.string	"fract"
.LASF16:
	.string	"__count"
.LASF32:
	.string	"DS18X20_conversion_in_progress"
.LASF14:
	.string	"_delay_loop_1"
.LASF43:
	.string	"ow_command"
.LASF30:
	.string	"DS18X20_start_meas"
.LASF6:
	.string	"uint8_t"
.LASF50:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega328p -g2 -gdwarf-2 -g -O1 -std=gnu99 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
.LASF34:
	.string	"DS18X20_format_from_decicelsius"
.LASF48:
	.string	"ow_input_pin_state"
.LASF36:
	.string	"temp"
.LASF12:
	.string	"long long int"
.LASF2:
	.string	"long int"
.LASF54:
	.string	"send_power_10ms"
.LASF15:
	.string	"_delay_ms"
.LASF23:
	.string	"negative"
.LASF22:
	.string	"measure"
.LASF7:
	.string	"unsigned char"
.LASF3:
	.string	"div_t"
.LASF37:
	.string	"temp_loc"
.LASF5:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"uint16_t"
.LASF52:
	.string	"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/Debug"
.LASF39:
	.string	"char"
.LASF42:
	.string	"DS18X20_read_decicelsius_single"
.LASF8:
	.string	"int16_t"
.LASF55:
	.string	"__divmodhi4"
.LASF26:
	.string	"DS18X20_raw_to_decicelsius"
.LASF46:
	.string	"ow_bit_io"
.LASF38:
	.string	"str_loc"
.LASF11:
	.string	"long unsigned int"
.LASF35:
	.string	"sign"
.LASF20:
	.string	"double"
.LASF45:
	.string	"crc8"
.LASF44:
	.string	"OWReset"
.LASF17:
	.string	"__ms"
.LASF19:
	.string	"__ticks_dc"
.LASF41:
	.string	"DS18X20_read_decicelsius"
.LASF24:
	.string	"decicelsius"
.LASF31:
	.string	"with_power_extern"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
