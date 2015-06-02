	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.type	search_sensors_n, @function
search_sensors_n:
.LFB12:
	.file 1 "../main.c"
	.loc 1 160 0
	.cfi_startproc
	push r8
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r11
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 11, -4
	push r12
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 12, -5
	push r14
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r16
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 1 170 0
	cbi 0xb,5
.LVL0:
.LBB112:
.LBB113:
	.file 2 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h"
	.loc 2 83 0
	ldi r24,lo8(10)
/* #APP */
 ;  83 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
.LVL1:
/* #NOAPP */
	mov __tmp_reg__,r31
	ldi r31,lo8(3)
	mov r12,r31
	mov r31,__tmp_reg__
.LBE113:
.LBE112:
	.loc 1 181 0
	mov r11,__zero_reg__
	.loc 1 190 0
	set
	clr r14
	bld r14,3
	mov __tmp_reg__,r31
	ldi r31,lo8(gSensorIDs+8)
	mov r8,r31
	ldi r31,hi8(gSensorIDs+8)
	mov r9,r31
	mov r31,__tmp_reg__
	.loc 1 191 0
	ldi r16,lo8(1)
.LVL2:
.L6:
	.loc 1 182 0
	call OWFirst
.LVL3:
	.loc 1 183 0
	tst r24
	breq .L7
	.loc 1 190 0
	ldi r30,lo8(ROM_NO)
	ldi r31,hi8(ROM_NO)
	ldi r26,lo8(gSensorIDs)
	ldi r27,hi8(gSensorIDs)
	mov r24,r14
.LVL4:
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
.LVL5:
	movw r28,r8
	.loc 1 191 0
	mov r17,r16
	rjmp .L3
.LVL6:
.L5:
	.loc 1 190 0
	ldi r30,lo8(ROM_NO)
	ldi r31,hi8(ROM_NO)
	movw r26,r28
	mov r24,r14
.LVL7:
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 191 0
	subi r17,lo8(-(1))
.LVL8:
	adiw r28,8
	cpi r17,lo8(4)
	breq .L4
.LVL9:
.L3:
	.loc 1 193 0
	call OWNext
.LVL10:
	.loc 1 183 0
	cpse r24,__zero_reg__
	rjmp .L5
	rjmp .L2
.LVL11:
.L7:
	.loc 1 181 0
	mov r17,r11
.LVL12:
.L2:
	dec r12
.LVL13:
	.loc 1 197 0
	brne .L6
.LVL14:
.L4:
	.loc 1 200 0
	sbi 0xb,5
	.loc 1 204 0
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
.LVL15:
	pop r16
	pop r14
	pop r12
	pop r11
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE12:
	.size	search_sensors_n, .-search_sensors_n
.global	LcdPutTemp
	.type	LcdPutTemp, @function
LcdPutTemp:
.LFB13:
	.loc 1 262 0
	.cfi_startproc
.LVL16:
	push r28
.LCFI9:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI11:
	.cfi_def_cfa_register 28
	sbiw r28,10
.LCFI12:
	.cfi_def_cfa_offset 14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	.loc 1 264 0
	ldi r20,lo8(10)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call DS18X20_format_from_decicelsius
.LVL17:
	.loc 1 265 0
	ldi r24,lo8(__c.2783)
	ldi r25,hi8(__c.2783)
	call LCD_draw_string3
.LVL18:
	.loc 1 266 0
	movw r24,r28
	adiw r24,1
	call LCD_draw_string2
.LVL19:
	.loc 1 267 0
	ldi r24,lo8(__c.2785)
	ldi r25,hi8(__c.2785)
	call LCD_draw_string3
.LVL20:
/* epilogue start */
	.loc 1 268 0
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE13:
	.size	LcdPutTemp, .-LcdPutTemp
.global	ShutOffADC
	.type	ShutOffADC, @function
ShutOffADC:
.LFB15:
	.loc 1 1348 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1349 0
	ldi r24,lo8(-128)
	out 0x30,r24
	.loc 1 1350 0
	sts 122,__zero_reg__
	.loc 1 1351 0
	ldi r24,lo8(63)
	sts 126,r24
	.loc 1 1352 0
	ldi r24,lo8(3)
	sts 127,r24
	ret
	.cfi_endproc
.LFE15:
	.size	ShutOffADC, .-ShutOffADC
.global	test_SN_sensors
	.type	test_SN_sensors, @function
test_SN_sensors:
.LFB16:
	.loc 1 1357 0
	.cfi_startproc
	push r15
.LCFI13:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI15:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI16:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI17:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL21:
	.loc 1 1363 0
	lds r28,rSensorIDs
	lds r29,rSensorIDs+1
	.loc 1 1360 0
	ldi r16,0
	.loc 1 1363 0
	ldi r17,0
	mov r15,__zero_reg__
	rjmp .L11
.LVL22:
.L15:
	mov r17,r15
.LVL23:
.L11:
	ldi r18,lo8(8)
	muls r16,r18
	movw r24,r0
	clr __zero_reg__
	ldi r20,lo8(8)
	ldi r21,0
	movw r22,r28
	ldi r18,lo8(8)
	muls r17,r18
	add r22,r0
	adc r23,r1
	clr __zero_reg__
	subi r24,lo8(-(gSensorIDs))
	sbci r25,hi8(-(gSensorIDs))
	call memcmp
.LVL24:
	or r24,r25
	breq .L12
	.loc 1 1362 0
	subi r17,lo8(-(1))
.LVL25:
	cpi r17,lo8(4)
	brlt .L11
	mov r24,r16
	rjmp .L16
.L12:
.LVL26:
	.loc 1 1360 0
	subi r16,lo8(-(1))
.LVL27:
	cpi r16,lo8(4)
	brlt .L15
	.loc 1 1370 0
	ldi r24,lo8(99)
.LVL28:
.L16:
/* epilogue start */
	.loc 1 1371 0
	pop r29
	pop r28
	pop r17
.LVL29:
	pop r16
	pop r15
	ret
	.cfi_endproc
.LFE16:
	.size	test_SN_sensors, .-test_SN_sensors
.global	copyrSNsTogSNs
	.type	copyrSNsTogSNs, @function
copyrSNsTogSNs:
.LFB18:
	.loc 1 1391 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL30:
	.loc 1 1391 0
	ldi r24,0
	ldi r25,0
	.loc 1 1394 0
	ldi r18,lo8(8)
.LVL31:
.L19:
	movw r26,r24
	subi r26,lo8(-(gSensorIDs))
	sbci r27,hi8(-(gSensorIDs))
	.loc 1 1394 0 is_stmt 0 discriminator 2
	lds r30,rSensorIDs
	lds r31,rSensorIDs+1
	add r30,r24
	adc r31,r25
	mov r19,r18
	0:
	ld r0,Z+
	st X+,r0
	dec r19
	brne 0b
	adiw r24,8
	.loc 1 1393 0 is_stmt 1 discriminator 2
	cpi r24,32
	cpc r25,__zero_reg__
	brne .L19
/* epilogue start */
	.loc 1 1396 0
	ret
	.cfi_endproc
.LFE18:
	.size	copyrSNsTogSNs, .-copyrSNsTogSNs
.global	LcdPowerGoneStr
	.type	LcdPowerGoneStr, @function
LcdPowerGoneStr:
.LFB19:
	.loc 1 1400 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1401 0
	call LCD_Clear
.LVL32:
	.loc 1 1402 0
	ldi r22,lo8(2)
	ldi r24,0
	call LCD_set_position2
.LVL33:
	.loc 1 1403 0
	ldi r24,lo8(startPowerGoneStr)
	ldi r25,hi8(startPowerGoneStr)
	push r25
.LCFI18:
	.cfi_def_cfa_offset 3
	push r24
.LCFI19:
	.cfi_def_cfa_offset 4
	ldi r24,lo8(__c.3076)
	ldi r25,hi8(__c.3076)
	push r25
.LCFI20:
	.cfi_def_cfa_offset 5
	push r24
.LCFI21:
	.cfi_def_cfa_offset 6
	call printf_P
.LVL34:
	.loc 1 1404 0
	call LCD_Update
.LVL35:
.LBB114:
.LBB115:
	.file 3 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h"
	.loc 3 163 0
	ldi r18,lo8(7999999)
	ldi r24,hi8(7999999)
	ldi r25,hlo8(7999999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI22:
	.cfi_def_cfa_offset 2
	ret
.LBE115:
.LBE114:
	.cfi_endproc
.LFE19:
	.size	LcdPowerGoneStr, .-LcdPowerGoneStr
.global	DisplayTemperature
	.type	DisplayTemperature, @function
DisplayTemperature:
.LFB20:
	.loc 1 1408 0
	.cfi_startproc
	push r28
.LCFI23:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 1410 0
	lds r24,mausure_temperature_ok
	tst r24
	brne .+2
	rjmp .L22
	ldi r30,lo8(temper)
	ldi r31,hi8(temper)
	ldi r24,lo8(temper+4)
	ldi r25,hi8(temper+4)
	ldi r28,0
.L25:
	.loc 1 1412 0 discriminator 2
	ld r18,Z+
	cpi r18,lo8(127)
	breq .L23
	.loc 1 1412 0 is_stmt 0 discriminator 1
	subi r28,lo8(-(1))
.L23:
	.loc 1 1412 0 discriminator 2
	cp r30,r24
	cpc r31,r25
	brne .L25
	.loc 1 1414 0 is_stmt 1
	lds r24,oldDisplaySens
	cp r28,r24
	brsh .L26
	.loc 1 1414 0 is_stmt 0 discriminator 1
	call LCD_Clear
	rjmp .L27
.L26:
	.loc 1 1415 0 is_stmt 1
	call LcdFirstLine
.L27:
	.loc 1 1416 0
	sts oldDisplaySens,r28
	.loc 1 1418 0
	lds r24,tAsync
	push __zero_reg__
.LCFI24:
	.cfi_def_cfa_offset 4
	push r24
.LCFI25:
	.cfi_def_cfa_offset 5
	lds r24,tAsync+1
	push __zero_reg__
.LCFI26:
	.cfi_def_cfa_offset 6
	push r24
.LCFI27:
	.cfi_def_cfa_offset 7
	lds r24,tAsync+2
	push __zero_reg__
.LCFI28:
	.cfi_def_cfa_offset 8
	push r24
.LCFI29:
	.cfi_def_cfa_offset 9
	ldi r24,lo8(__c.3086)
	ldi r25,hi8(__c.3086)
	push r25
.LCFI30:
	.cfi_def_cfa_offset 10
	push r24
.LCFI31:
	.cfi_def_cfa_offset 11
	call printf_P
	.loc 1 1419 0
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
.LCFI32:
	.cfi_def_cfa_offset 3
	lds r24,sn_presence
	tst r24
	breq .L28
	.loc 1 1420 0
	lds r18,temper
	cpi r18,lo8(127)
	breq .L28
	.loc 1 1421 0
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
.LCFI33:
	.cfi_def_cfa_offset 4
	push r18
.LCFI34:
	.cfi_def_cfa_offset 5
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
.LCFI35:
	.cfi_def_cfa_offset 6
	push r24
.LCFI36:
	.cfi_def_cfa_offset 7
	ldi r24,lo8(__c.3088)
	ldi r25,hi8(__c.3088)
	push r25
.LCFI37:
	.cfi_def_cfa_offset 8
	push r24
.LCFI38:
	.cfi_def_cfa_offset 9
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI39:
	.cfi_def_cfa_offset 3
.L28:
	.loc 1 1423 0
	lds r24,sn_presence+1
	tst r24
	breq .L29
	.loc 1 1424 0
	lds r18,temper+1
	cpi r18,lo8(127)
	breq .L29
	.loc 1 1425 0
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
.LCFI40:
	.cfi_def_cfa_offset 4
	push r18
.LCFI41:
	.cfi_def_cfa_offset 5
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
.LCFI42:
	.cfi_def_cfa_offset 6
	push r24
.LCFI43:
	.cfi_def_cfa_offset 7
	ldi r24,lo8(__c.3090)
	ldi r25,hi8(__c.3090)
	push r25
.LCFI44:
	.cfi_def_cfa_offset 8
	push r24
.LCFI45:
	.cfi_def_cfa_offset 9
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI46:
	.cfi_def_cfa_offset 3
.L29:
	.loc 1 1427 0
	lds r24,sn_presence+2
	tst r24
	breq .L30
	.loc 1 1428 0
	lds r18,temper+2
	cpi r18,lo8(127)
	breq .L30
	.loc 1 1429 0
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
.LCFI47:
	.cfi_def_cfa_offset 4
	push r18
.LCFI48:
	.cfi_def_cfa_offset 5
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
.LCFI49:
	.cfi_def_cfa_offset 6
	push r24
.LCFI50:
	.cfi_def_cfa_offset 7
	ldi r24,lo8(__c.3092)
	ldi r25,hi8(__c.3092)
	push r25
.LCFI51:
	.cfi_def_cfa_offset 8
	push r24
.LCFI52:
	.cfi_def_cfa_offset 9
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI53:
	.cfi_def_cfa_offset 3
.L30:
	.loc 1 1431 0
	lds r24,sn_presence+3
	tst r24
	breq .L31
	.loc 1 1432 0
	lds r18,temper+3
	cpi r18,lo8(127)
	breq .L31
	.loc 1 1433 0
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
.LCFI54:
	.cfi_def_cfa_offset 4
	push r18
.LCFI55:
	.cfi_def_cfa_offset 5
	ldi r24,lo8(returnStr)
	ldi r25,hi8(returnStr)
	push r25
.LCFI56:
	.cfi_def_cfa_offset 6
	push r24
.LCFI57:
	.cfi_def_cfa_offset 7
	ldi r24,lo8(__c.3094)
	ldi r25,hi8(__c.3094)
	push r25
.LCFI58:
	.cfi_def_cfa_offset 8
	push r24
.LCFI59:
	.cfi_def_cfa_offset 9
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI60:
	.cfi_def_cfa_offset 3
.L31:
	.loc 1 1436 0
	sts mausure_temperature_ok,__zero_reg__
	rjmp .L21
.L22:
.LBB116:
.LBB117:
	.loc 3 163 0
	ldi r25,lo8(3199999)
	ldi r18,hi8(3199999)
	ldi r24,hlo8(3199999)
	1: subi r25,1
	sbci r18,0
	sbci r24,0
	brne 1b
	rjmp .
	nop
.L21:
/* epilogue start */
.LBE117:
.LBE116:
	.loc 1 1438 0
	pop r28
	ret
	.cfi_endproc
.LFE20:
	.size	DisplayTemperature, .-DisplayTemperature
.global	DoWatchDog
	.type	DoWatchDog, @function
DoWatchDog:
.LFB24:
	.loc 1 1635 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1636 0
	lds r25,tAsync
	lds r24,TLastWatchDog
	cp r25,r24
	breq .L33
	.loc 1 1637 0
	lds r24,ReadyWATCHDOG
	tst r24
	breq .L33
	.loc 1 1638 0
	lds r24,WATCHDOG_STATE
	tst r24
	breq .L35
	.loc 1 1639 0
	sbi 0x5,0
	sts WATCHDOG_STATE,__zero_reg__
	rjmp .L36
.L35:
	.loc 1 1641 0
	cbi 0x5,0
	ldi r24,lo8(1)
	sts WATCHDOG_STATE,r24
.L36:
	.loc 1 1642 0
	lds r24,tAsync
	sts TLastWatchDog,r24
.L33:
	ret
	.cfi_endproc
.LFE24:
	.size	DoWatchDog, .-DoWatchDog
.global	getTemperature
	.type	getTemperature, @function
getTemperature:
.LFB21:
	.loc 1 1442 0
	.cfi_startproc
.LVL36:
	push r15
.LCFI61:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI62:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI63:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI64:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI65:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI66:
	.cfi_def_cfa_register 28
	sbiw r28,12
.LCFI67:
	.cfi_def_cfa_offset 19
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 17 */
.L__stack_usage = 17
	movw r16,r24
.LVL37:
	.loc 1 1442 0
	set
	clr r15
	bld r15,2
.LVL38:
.L40:
	.loc 1 1448 0
	movw r22,r16
	ldi r24,0
	call DS18X20_start_meas
.LVL39:
	cpse r24,__zero_reg__
	rjmp .L38
.LVL40:
.LBB118:
.LBB119:
	.loc 3 163 0
	ldi r18,lo8(1199999)
	ldi r24,hi8(1199999)
	ldi r25,hlo8(1199999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LBE119:
.LBE118:
	.loc 1 1450 0
	call DoWatchDog
.LVL41:
	.loc 1 1451 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call DS18X20_read_decicelsius
.LVL42:
	cpse r24,__zero_reg__
	rjmp .L38
	.loc 1 1452 0
	ldi r20,lo8(10)
	movw r22,r28
	subi r22,-3
	sbci r23,-1
	ldd r24,Y+1
	ldd r25,Y+2
	call DS18X20_format_from_decicelsius
.LVL43:
	cpse r24,__zero_reg__
	rjmp .L38
	.loc 1 1453 0
	movw r24,r28
	adiw r24,3
	call atoi
.LVL44:
	rjmp .L39
.LVL45:
.L38:
	dec r15
.LVL46:
	.loc 1 1456 0
	brne .L40
	.loc 1 1457 0
	ldi r24,lo8(127)
	ldi r25,0
.LVL47:
.L39:
/* epilogue start */
	.loc 1 1458 0
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
.LVL48:
	pop r15
	ret
	.cfi_endproc
.LFE21:
	.size	getTemperature, .-getTemperature
.global	manageTemperatureEvent
	.type	manageTemperatureEvent, @function
manageTemperatureEvent:
.LFB22:
	.loc 1 1460 0
	.cfi_startproc
	push r16
.LCFI68:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI69:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI70:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI71:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 1465 0
	lds r17,rTempInDoorMin
	lds r16,rTempInDoorMax
.LVL49:
	.loc 1 1467 0
	lds r24,kg
	cpi r24,lo8(3)
	brge .L43
	.loc 1 1467 0 is_stmt 0 discriminator 1
	subi r24,lo8(-(1))
	sts kg,r24
	rjmp .L44
.L43:
	.loc 1 1468 0 is_stmt 1
	sts kg,__zero_reg__
.L44:
	.loc 1 1470 0
	lds r28,kg
	clr r29
	sbrc r28,7
	com r29
	movw r30,r28
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	ld r24,Z
	tst r24
	breq .L45
	.loc 1 1471 0
	movw r24,r28
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	subi r24,lo8(-(gSensorIDs))
	sbci r25,hi8(-(gSensorIDs))
	call getTemperature
.LVL50:
	subi r28,lo8(-(temper))
	sbci r29,hi8(-(temper))
	st Y,r24
	.loc 1 1472 0
	lds r18,kg
	clr r19
	sbrc r18,7
	com r19
	movw r30,r18
	subi r30,lo8(-(temper))
	sbci r31,hi8(-(temper))
	ld r24,Z
	cpi r24,lo8(127)
	brne .L45
	.loc 1 1473 0
	movw r30,r18
	subi r30,lo8(-(sn_noready_counter))
	sbci r31,hi8(-(sn_noready_counter))
	ld r24,Z
	cpi r24,lo8(2)
	brsh .L46
	.loc 1 1474 0
	movw r30,r18
	subi r30,lo8(-(sn_noready_counter))
	sbci r31,hi8(-(sn_noready_counter))
	subi r24,lo8(-(1))
	st Z,r24
	rjmp .L45
.L46:
	.loc 1 1476 0
	movw r30,r18
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	st Z,__zero_reg__
	.loc 1 1477 0
	movw r30,r18
	subi r30,lo8(-(noready_sens))
	sbci r31,hi8(-(noready_sens))
	ldi r24,lo8(1)
	st Z,r24
	.loc 1 1478 0
	movw r30,r18
	subi r30,lo8(-(sn_noready_counter))
	sbci r31,hi8(-(sn_noready_counter))
	st Z,__zero_reg__
.L45:
.LVL51:
	.loc 1 1485 0
	lds r24,PrefHeatting
	tst r24
	breq .L60
	.loc 1 1487 0
	lds r22,temper
	mov r20,r22
	clr r21
	sbrc r20,7
	com r21
	lds r18,rTempInDoorMax
	clr r19
	sbrc r18,7
	com r19
	subi r18,-5
	sbci r19,-1
	cp r18,r20
	cpc r19,r21
	brge .L61
	.loc 1 1487 0 is_stmt 0 discriminator 1
	cpi r22,lo8(127)
	breq .L62
	.loc 1 1484 0 is_stmt 1
	ldi r20,lo8(5)
	rjmp .L49
.L60:
	ldi r20,lo8(5)
	rjmp .L47
.L61:
	.loc 1 1488 0
	ldi r20,lo8(4)
.L47:
.LVL52:
	.loc 1 1492 0
	lds r22,temper
	cpi r22,lo8(127)
	breq .L48
.LVL53:
.L49:
	.loc 1 1493 0
	lds r24,rTempInDoorMin
	cp r24,r22
	brlt .+2
	rjmp .L63
	.loc 1 1494 0
	mov r18,r22
	clr r19
	sbrc r18,7
	com r19
	.loc 1 1465 0
	mov r24,r16
	clr r25
	sbrc r24,7
	com r25
	add r24,r17
	adc r25,__zero_reg__
	sbrc r17,7
	dec r25
	tst r25
	brge .L51
	adiw r24,1
.L51:
	asr r25
	ror r24
	.loc 1 1494 0
	clr r25
	cp r24,r18
	cpc r25,r19
	brlt .+2
	rjmp .L64
	.loc 1 1495 0
	lds r24,rTempInDoorMax
	cp r24,r22
	brlt .+2
	rjmp .L65
	.loc 1 1496 0
	cpi r20,lo8(4)
	breq .+2
	rjmp .L66
	rjmp .L52
.LVL54:
.L62:
	.loc 1 1488 0
	ldi r20,lo8(4)
.LVL55:
.L48:
	.loc 1 1497 0
	lds r18,temper+2
	cpi r18,lo8(127)
	brne .+2
	rjmp .L67
	.loc 1 1497 0 is_stmt 0 discriminator 2
	lds r19,temper+3
	cpi r19,lo8(127)
	brne .+2
	rjmp .L68
	.loc 1 1499 0 is_stmt 1
	cpi r20,lo8(5)
	brne .L52
	.loc 1 1501 0
	lds r20,rTempDiffSupplyReturnMin
.LVL56:
	lds r24,rTempDiffSupplyReturnMax
	clr r25
	sbrc r24,7
	com r25
.LVL57:
	.loc 1 1502 0
	mov r22,r18
	sub r22,r19
.LVL58:
	.loc 1 1503 0
	mov r18,r22
	ldi r19,0
	cp r24,r18
	cpc r25,r19
	brlt .L53
	.loc 1 1501 0
	clr r21
	sbrc r20,7
	com r21
.LVL59:
	add r24,r20
	adc r25,r21
.LVL60:
	tst r25
	brge .L55
	adiw r24,1
.L55:
	asr r25
	ror r24
	.loc 1 1504 0
	cp r24,r22
	brlo .L54
	.loc 1 1505 0
	cp r20,r18
	cpc r21,r19
	brlt .L56
	rjmp .L57
.LVL61:
.L52:
	.loc 1 1510 0
	cpi r20,lo8(2)
	breq .L56
	brsh .L59
	tst r20
	breq .L53
	cpi r20,lo8(1)
	breq .L54
	rjmp .L42
.L59:
	cpi r20,lo8(3)
	breq .L57
	cpi r20,lo8(4)
	brne .L42
.LVL62:
.L53:
	.loc 1 1513 0
	cbi 0x8,3
	.loc 1 1514 0
	sbi 0x8,5
	.loc 1 1515 0
	sbi 0x8,4
	.loc 1 1516 0
	rjmp .L42
.L54:
.LVL63:
	.loc 1 1518 0
	sbi 0x8,5
	.loc 1 1519 0
	cbi 0x8,3
	.loc 1 1520 0
	cbi 0x8,4
	.loc 1 1521 0
	rjmp .L42
.LVL64:
.L56:
	.loc 1 1523 0
	cbi 0x8,5
	.loc 1 1524 0
	cbi 0x8,3
	.loc 1 1525 0
	cbi 0x8,4
	.loc 1 1526 0
	rjmp .L42
.LVL65:
.L57:
	.loc 1 1528 0
	sbi 0x8,5
	.loc 1 1529 0
	sbi 0x8,3
	.loc 1 1530 0
	cbi 0x8,4
	.loc 1 1531 0
	rjmp .L42
.LVL66:
.L63:
	.loc 1 1493 0
	ldi r20,0
.LVL67:
	rjmp .L52
.LVL68:
.L64:
	.loc 1 1494 0
	ldi r20,lo8(1)
.LVL69:
	rjmp .L52
.LVL70:
.L65:
	.loc 1 1495 0
	ldi r20,lo8(2)
.LVL71:
	rjmp .L52
.LVL72:
.L66:
	.loc 1 1496 0
	ldi r20,lo8(3)
.LVL73:
	rjmp .L52
.LVL74:
.L67:
	.loc 1 1497 0
	ldi r20,0
.LVL75:
	rjmp .L52
.LVL76:
.L68:
	ldi r20,0
.LVL77:
	rjmp .L52
.LVL78:
.L42:
/* epilogue start */
	.loc 1 1533 0
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE22:
	.size	manageTemperatureEvent, .-manageTemperatureEvent
.global	ValidSensorCode
	.type	ValidSensorCode, @function
ValidSensorCode:
.LFB25:
	.loc 1 1646 0
	.cfi_startproc
.LVL79:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1649 0
	movw r30,r24
	ld r18,Z
	subi r18,lo8(-(-1))
	cpi r18,lo8(-2)
	brlo .L72
	adiw r30,1
	ldi r24,lo8(7)
.LVL80:
.L71:
	ld r25,Z+
.LVL81:
	subi r25,lo8(-(-1))
	cpi r25,lo8(-2)
	brlo .L73
.LVL82:
	subi r24,lo8(-(-1))
	.loc 1 1648 0 discriminator 1
	brne .L71
	rjmp .L74
.LVL83:
.L72:
	.loc 1 1650 0
	ldi r24,lo8(1)
.LVL84:
	ret
.LVL85:
.L73:
	ldi r24,lo8(1)
	ret
.LVL86:
.L74:
	.loc 1 1652 0
	ldi r24,0
	.loc 1 1653 0
	ret
	.cfi_endproc
.LFE25:
	.size	ValidSensorCode, .-ValidSensorCode
.global	checkPresenceSN
	.type	checkPresenceSN, @function
checkPresenceSN:
.LFB17:
	.loc 1 1373 0
	.cfi_startproc
	push r10
.LCFI72:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI73:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI74:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI75:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI76:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI77:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI78:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI79:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI80:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI81:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
.LVL87:
	.loc 1 1373 0
	ldi r28,0
	ldi r29,0
	ldi r16,0
	ldi r17,0
	.loc 1 1377 0
	mov r13,__zero_reg__
	.loc 1 1378 0
	clr r12
	inc r12
	.loc 1 1382 0
	mov r10,__zero_reg__
	.loc 1 1383 0
	clr r11
	inc r11
.LVL88:
.L80:
	.loc 1 1380 0
	lds r14,rSensorIDs
	lds r15,rSensorIDs+1
	add r14,r28
	adc r15,r29
	movw r24,r14
	call ValidSensorCode
.LVL89:
	tst r24
	breq .L76
	.loc 1 1381 0
	movw r24,r14
	call getTemperature
.LVL90:
	movw r30,r16
	subi r30,lo8(-(temper))
	sbci r31,hi8(-(temper))
	st Z,r24
	cpi r24,lo8(127)
	breq .L82
	movw r30,r16
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	.loc 1 1383 0
	st Z,r11
	rjmp .L77
.L82:
	.loc 1 1382 0
	mov r12,r10
.LVL91:
.L77:
.LBB120:
.LBB121:
	.loc 3 163 0 discriminator 1
	ldi r24,lo8(5999)
	ldi r25,hi8(5999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
	rjmp .L78
.LVL92:
.L76:
.LBE121:
.LBE120:
	.loc 1 1385 0
	inc r13
.LVL93:
.L78:
	subi r16,-1
	sbci r17,-1
.LVL94:
	adiw r28,8
	.loc 1 1379 0
	cpi r28,32
	cpc r29,__zero_reg__
	brne .L80
	.loc 1 1387 0
	tst r13
	breq .L83
	ldi r24,0
	rjmp .L81
.L83:
	mov r24,r12
.L81:
/* epilogue start */
	.loc 1 1389 0
	pop r29
	pop r28
	pop r17
	pop r16
.LVL95:
	pop r15
	pop r14
	pop r13
.LVL96:
	pop r12
.LVL97:
	pop r11
	pop r10
	ret
	.cfi_endproc
.LFE17:
	.size	checkPresenceSN, .-checkPresenceSN
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%02X%02X%02X%02X%02X%02X%02X"
	.text
.global	manage_new_sensors
	.type	manage_new_sensors, @function
manage_new_sensors:
.LFB23:
	.loc 1 1540 0
	.cfi_startproc
.LVL98:
	push r2
.LCFI82:
	.cfi_def_cfa_offset 3
	.cfi_offset 2, -2
	push r3
.LCFI83:
	.cfi_def_cfa_offset 4
	.cfi_offset 3, -3
	push r4
.LCFI84:
	.cfi_def_cfa_offset 5
	.cfi_offset 4, -4
	push r5
.LCFI85:
	.cfi_def_cfa_offset 6
	.cfi_offset 5, -5
	push r6
.LCFI86:
	.cfi_def_cfa_offset 7
	.cfi_offset 6, -6
	push r7
.LCFI87:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -7
	push r8
.LCFI88:
	.cfi_def_cfa_offset 9
	.cfi_offset 8, -8
	push r9
.LCFI89:
	.cfi_def_cfa_offset 10
	.cfi_offset 9, -9
	push r10
.LCFI90:
	.cfi_def_cfa_offset 11
	.cfi_offset 10, -10
	push r11
.LCFI91:
	.cfi_def_cfa_offset 12
	.cfi_offset 11, -11
	push r12
.LCFI92:
	.cfi_def_cfa_offset 13
	.cfi_offset 12, -12
	push r13
.LCFI93:
	.cfi_def_cfa_offset 14
	.cfi_offset 13, -13
	push r14
.LCFI94:
	.cfi_def_cfa_offset 15
	.cfi_offset 14, -14
	push r15
.LCFI95:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -15
	push r16
.LCFI96:
	.cfi_def_cfa_offset 17
	.cfi_offset 16, -16
	push r17
.LCFI97:
	.cfi_def_cfa_offset 18
	.cfi_offset 17, -17
	push r28
.LCFI98:
	.cfi_def_cfa_offset 19
	.cfi_offset 28, -18
	push r29
.LCFI99:
	.cfi_def_cfa_offset 20
	.cfi_offset 29, -19
	rcall .
	rcall .
.LCFI100:
	.cfi_def_cfa_offset 24
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI101:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 4 */
/* stack size = 22 */
.L__stack_usage = 22
	.loc 1 1544 0
	lds r25,nwSen_Phase
	cpi r25,lo8(2)
	brne .+2
	rjmp .L86
	brsh .L87
	tst r25
	breq .L88
	cpi r25,lo8(1)
	breq .L89
	rjmp .L105
.L87:
	cpi r25,lo8(3)
	brne .+2
	rjmp .L90
	cpi r25,lo8(5)
	brne .+2
	rjmp .L91
	rjmp .L105
.L88:
	.loc 1 1546 0
	sts kg,__zero_reg__
	.loc 1 1547 0
	ldi r24,lo8(1)
.LVL99:
	sts nwSen_Phase,r24
	.loc 1 1631 0
	ldi r24,0
	.loc 1 1548 0
	rjmp .L85
.LVL100:
.L89:
	.loc 1 1551 0
	lds r3,kg
	mov r16,r3
	clr r17
	sbrc r16,7
	com r17
	movw r24,r16
.LVL101:
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	movw r18,r24
	subi r18,lo8(-(gSensorIDs))
	sbci r19,hi8(-(gSensorIDs))
	movw r12,r18
	movw r24,r18
	call ValidSensorCode
.LVL102:
	tst r24
	brne .+2
	rjmp .L106
	lds r14,rSensorIDs
	lds r15,rSensorIDs+1
	mov __tmp_reg__,r31
	ldi r31,lo8(gSensorIDs)
	mov r8,r31
	ldi r31,hi8(gSensorIDs)
	mov r9,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(sn_presence)
	mov r10,r31
	ldi r31,hi8(sn_presence)
	mov r11,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(gSensorIDs+32)
	mov r6,r31
	ldi r31,hi8(gSensorIDs+32)
	mov r7,r31
	mov r31,__tmp_reg__
	.loc 1 1555 0
	std Y+4,r11
	std Y+3,r10
	ldi r25,lo8(1)
	std Y+2,r25
	ldi r26,lo8(1)
	std Y+1,r26
	movw r4,r12
	.loc 1 1564 0
	subi r16,lo8(-(sn_presence))
	sbci r17,hi8(-(sn_presence))
	.loc 1 1574 0
	mov r2,__zero_reg__
.L98:
.LVL103:
	.loc 1 1555 0
	ldi r20,lo8(8)
	ldi r21,0
	movw r22,r14
	movw r24,r12
	call memcmp
.LVL104:
	or r24,r25
	brne .L92
.LVL105:
	ldd r24,Y+3
	sub r24,r10
	.loc 1 1557 0
	cp r3,r24
	breq .L93
	.loc 1 1558 0
	ldi r20,lo8(8)
	ldi r21,0
	movw r22,r8
	movw r24,r12
	call memcmp
.LVL106:
	movw r30,r4
	movw r22,r8
	ldi r18,lo8(8)
.LVL107:
.L96:
	.loc 1 1561 0
	movw r26,r22
	ld r21,X
.LVL108:
	.loc 1 1562 0
	ld r19,Z
	st X+,r19
	movw r22,r26
.LVL109:
	.loc 1 1563 0
	ldd r26,Y+3
	ldd r27,Y+4
	ld r20,X
.LVL110:
	.loc 1 1564 0
	movw r26,r16
	ld r19,X
	ldd r26,Y+3
	ldd r27,Y+4
	st X,r19
	.loc 1 1566 0
	sbiw r24,0
	brne .L94
	.loc 1 1567 0
	st Z,__zero_reg__
	.loc 1 1568 0
	movw r26,r16
	st X,__zero_reg__
	rjmp .L95
.L94:
	.loc 1 1570 0
	st Z,r21
	.loc 1 1571 0
	movw r26,r16
	st X,r20
.L95:
.LVL111:
	subi r18,lo8(-(-1))
	adiw r30,1
	.loc 1 1560 0
	cpse r18,__zero_reg__
	rjmp .L96
	.loc 1 1574 0
	std Y+2,r2
.LVL112:
	.loc 1 1556 0
	std Y+1,r2
.LVL113:
.L92:
	ldi r27,8
	add r14,r27
	adc r15,__zero_reg__
	ldi r30,8
	add r8,r30
	adc r9,__zero_reg__
	ldd r18,Y+3
	ldd r19,Y+4
	subi r18,-1
	sbci r19,-1
	std Y+4,r19
	std Y+3,r18
.LVL114:
	.loc 1 1554 0
	cp r8,r6
	cpc r9,r7
	breq .+2
	rjmp .L98
	.loc 1 1577 0
	ldd r19,Y+1
	tst r19
	breq .L93
	.loc 1 1577 0 is_stmt 0 discriminator 1
	ldi r24,lo8(2)
	sts nwSen_Phase,r24
	.loc 1 1631 0 is_stmt 1 discriminator 1
	ldi r24,0
	rjmp .L85
.L93:
.LVL115:
	.loc 1 1579 0
	ldd r24,Y+2
	tst r24
	brne .+2
	rjmp .L108
	.loc 1 1580 0
	lds r24,kg
	cpi r24,lo8(3)
	brlt .+2
	rjmp .L109
	.loc 1 1580 0 is_stmt 0 discriminator 1
	subi r24,lo8(-(1))
	sts kg,r24
	.loc 1 1631 0 is_stmt 1 discriminator 1
	ldi r24,0
	rjmp .L85
.LVL116:
.L86:
	.loc 1 1588 0
	call LCD_Clear
.LVL117:
	.loc 1 1595 0
	lds r30,kg
	ldi r25,lo8(8)
	muls r30,r25
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(gSensorIDs))
	sbci r31,hi8(-(gSensorIDs))
	.loc 1 1591 0
	ldd r24,Z+6
	push __zero_reg__
	push r24
	ldd r24,Z+5
	push __zero_reg__
	push r24
	ldd r24,Z+4
	push __zero_reg__
	push r24
	ldd r24,Z+3
	push __zero_reg__
	push r24
	ldd r24,Z+2
	push __zero_reg__
	push r24
	ldd r24,Z+1
	push __zero_reg__
	push r24
	ld r24,Z
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	push r25
	push r24
	call printf
.LVL118:
	.loc 1 1599 0
	ldi r24,lo8(assignStr)
	ldi r25,hi8(assignStr)
	push r25
	push r24
	ldi r24,lo8(setStr)
	ldi r25,hi8(setStr)
	push r25
	push r24
	ldi r24,lo8(__c.3136)
	ldi r25,hi8(__c.3136)
	push r25
	push r24
	call printf_P
.LVL119:
	.loc 1 1601 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	lds r24,sn_presence
	cpse r24,__zero_reg__
	rjmp .L99
	.loc 1 1601 0 is_stmt 0 discriminator 1
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(__c.3138)
	ldi r25,hi8(__c.3138)
	push r25
	push r24
	call printf_P
.LVL120:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L99:
	.loc 1 1602 0 is_stmt 1
	lds r24,sn_presence+1
	cpse r24,__zero_reg__
	rjmp .L100
	.loc 1 1602 0 is_stmt 0 discriminator 1
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(1)
	push r24
	ldi r24,lo8(__c.3140)
	ldi r25,hi8(__c.3140)
	push r25
	push r24
	call printf_P
.LVL121:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L100:
	.loc 1 1603 0 is_stmt 1
	lds r24,sn_presence+2
	cpse r24,__zero_reg__
	rjmp .L101
	.loc 1 1603 0 is_stmt 0 discriminator 1
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(2)
	push r24
	ldi r24,lo8(__c.3142)
	ldi r25,hi8(__c.3142)
	push r25
	push r24
	call printf_P
.LVL122:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L101:
	.loc 1 1604 0 is_stmt 1
	lds r24,sn_presence+3
	cpse r24,__zero_reg__
	rjmp .L102
	.loc 1 1604 0 is_stmt 0 discriminator 1
	ldi r24,lo8(returnStr)
	ldi r25,hi8(returnStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(3)
	push r24
	ldi r24,lo8(__c.3144)
	ldi r25,hi8(__c.3144)
	push r25
	push r24
	call printf_P
.LVL123:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L102:
	.loc 1 1605 0 is_stmt 1
	call LCD_Update
.LVL124:
	.loc 1 1606 0
	ldi r24,lo8(3)
	sts nwSen_Phase,r24
	.loc 1 1631 0
	ldi r24,0
	.loc 1 1607 0
	rjmp .L85
.LVL125:
.L90:
	.loc 1 1609 0
	ldi r25,lo8(-48)
	add r25,r24
	cpi r25,lo8(4)
	brlo .+2
	rjmp .L110
	.loc 1 1615 0
	mov r24,r25
.LVL126:
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	ld r18,Z
	cpse r18,__zero_reg__
	rjmp .L104
	.loc 1 1616 0
	movw r18,r24
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
	lds r26,rSensorIDs
	lds r27,rSensorIDs+1
	add r26,r18
	adc r27,r19
	lds r30,kg
	ldi r18,lo8(8)
	muls r30,r18
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(gSensorIDs))
	sbci r31,hi8(-(gSensorIDs))
	ldi r18,lo8(8)
	0:
	ld r0,Z+
	st X+,r0
	dec r18
	brne 0b
	.loc 1 1617 0
	movw r30,r24
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	ldi r18,lo8(1)
	st Z,r18
.L104:
	.loc 1 1619 0
	ldi r24,lo8(5)
	sts nwSen_Phase,r24
	.loc 1 1631 0
	ldi r24,0
	.loc 1 1620 0
	rjmp .L85
.LVL127:
.L91:
	.loc 1 1625 0
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
.LVL128:
	call __eeupd_block_m328p
.LVL129:
	.loc 1 1626 0
	lds r24,kg
	cpi r24,lo8(3)
	brge .L111
	.loc 1 1627 0
	ldi r24,lo8(1)
	sts nwSen_Phase,r24
	.loc 1 1631 0
	ldi r24,0
	.loc 1 1629 0
	rjmp .L85
.LVL130:
.L105:
	.loc 1 1631 0
	ldi r24,0
.LVL131:
	rjmp .L85
.L106:
	.loc 1 1584 0
	ldi r24,lo8(1)
	rjmp .L85
.LVL132:
.L108:
	.loc 1 1631 0
	ldi r24,0
	rjmp .L85
.L109:
	.loc 1 1581 0
	ldi r24,lo8(1)
	rjmp .L85
.LVL133:
.L110:
	.loc 1 1631 0
	ldi r24,0
.LVL134:
	rjmp .L85
.L111:
	.loc 1 1628 0
	ldi r24,lo8(1)
.L85:
/* epilogue start */
	.loc 1 1633 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.cfi_endproc
.LFE23:
	.size	manage_new_sensors, .-manage_new_sensors
.global	resetSensNumber
	.type	resetSensNumber, @function
resetSensNumber:
.LFB27:
	.loc 1 1679 0
	.cfi_startproc
.LVL135:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(8)
	mul r24,r18
	movw r24,r0
	clr __zero_reg__
.LVL136:
	movw r30,r24
	subi r30,lo8(-(gSensorIDs))
	sbci r31,hi8(-(gSensorIDs))
	.loc 1 1681 0
	ldi r24,0
.LVL137:
.L114:
	.loc 1 1682 0 discriminator 2
	st Z+,__zero_reg__
	.loc 1 1681 0 discriminator 2
	subi r24,lo8(-(1))
.LVL138:
	cpi r24,lo8(8)
	brne .L114
/* epilogue start */
	.loc 1 1683 0
	ret
	.cfi_endproc
.LFE27:
	.size	resetSensNumber, .-resetSensNumber
.global	sms_noready_sens
	.type	sms_noready_sens, @function
sms_noready_sens:
.LFB26:
	.loc 1 1655 0
	.cfi_startproc
	push r11
.LCFI102:
	.cfi_def_cfa_offset 3
	.cfi_offset 11, -2
	push r12
.LCFI103:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI104:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI105:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI106:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI107:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI108:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI109:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI110:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r11,r24
	.loc 1 1659 0
	ldi r24,lo8(-49)
	ldi r25,0
	call malloc
	movw r28,r24
	sbiw r24,0
	brne .+2
	rjmp .L116
	.loc 1 1660 0
	movw r12,r24
	ldi r24,-96
	add r12,r24
	adc r13,__zero_reg__
	ldi r20,lo8(20)
	ldi r21,0
	ldi r22,lo8(telNumber)
	ldi r23,hi8(telNumber)
	movw r24,r12
	call strncpy
	.loc 1 1663 0
	ldi r20,lo8(-96)
	ldi r21,0
	ldi r22,lo8(notReadyStr)
	ldi r23,hi8(notReadyStr)
	movw r24,r28
	call strncpy_P
	.loc 1 1664 0
	ldi r20,lo8(30)
	ldi r21,0
	ldi r22,lo8(snStr)
	ldi r23,hi8(snStr)
	ldi r24,lo8(wbuffer)
	ldi r25,hi8(wbuffer)
	call strncpy_P
	.loc 1 1665 0
	movw r30,r28
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	sub r30,r28
	sbc r31,r29
	mov __tmp_reg__,r31
	ldi r31,lo8(-96)
	mov r14,r31
	mov r15,__zero_reg__
	mov r31,__tmp_reg__
	movw r20,r14
	sub r20,r30
	sbc r21,r31
	ldi r22,lo8(wbuffer)
	ldi r23,hi8(wbuffer)
	movw r24,r28
	call strncat
	.loc 1 1666 0
	push __zero_reg__
.LCFI111:
	.cfi_def_cfa_offset 12
	push r11
.LCFI112:
	.cfi_def_cfa_offset 13
	ldi r24,lo8(__c.3169)
	ldi r25,hi8(__c.3169)
	push r25
.LCFI113:
	.cfi_def_cfa_offset 14
	push r24
.LCFI114:
	.cfi_def_cfa_offset 15
	ldi r16,lo8(wbuffer)
	ldi r17,hi8(wbuffer)
	push r17
.LCFI115:
	.cfi_def_cfa_offset 16
	push r16
.LCFI116:
	.cfi_def_cfa_offset 17
	call sprintf_P
	.loc 1 1667 0
	movw r30,r28
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	sub r30,r28
	sbc r31,r29
	movw r20,r14
	sub r20,r30
	sbc r21,r31
	movw r22,r16
	movw r24,r28
	call strncat
	.loc 1 1668 0
	lds r24,tAsync
	push __zero_reg__
.LCFI117:
	.cfi_def_cfa_offset 18
	push r24
.LCFI118:
	.cfi_def_cfa_offset 19
	lds r24,tAsync+1
	push __zero_reg__
.LCFI119:
	.cfi_def_cfa_offset 20
	push r24
.LCFI120:
	.cfi_def_cfa_offset 21
	lds r24,tAsync+2
	push __zero_reg__
.LCFI121:
	.cfi_def_cfa_offset 22
	push r24
.LCFI122:
	.cfi_def_cfa_offset 23
	ldi r18,lo8(__c.3171)
	ldi r19,hi8(__c.3171)
	push r19
.LCFI123:
	.cfi_def_cfa_offset 24
	push r18
.LCFI124:
	.cfi_def_cfa_offset 25
	push r17
.LCFI125:
	.cfi_def_cfa_offset 26
	push r16
.LCFI126:
	.cfi_def_cfa_offset 27
	call sprintf_P
	.loc 1 1669 0
	movw r30,r28
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	sub r30,r28
	sbc r31,r29
	movw r20,r14
	sub r20,r30
	sbc r21,r31
	movw r22,r16
	movw r24,r28
	call strncat
	.loc 1 1670 0
	call DoWatchDog
	.loc 1 1671 0
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	movw r24,r12
	call gsm_send_sms
	.loc 1 1672 0
	movw r24,r28
	call free
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,16
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
.LCFI127:
	.cfi_def_cfa_offset 11
.L116:
	.loc 1 1674 0
	mov r30,r11
	ldi r31,0
	subi r30,lo8(-(noready_sens))
	sbci r31,hi8(-(noready_sens))
	st Z,__zero_reg__
	.loc 1 1675 0
	mov r24,r11
	call resetSensNumber
/* epilogue start */
	.loc 1 1677 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	ret
	.cfi_endproc
.LFE26:
	.size	sms_noready_sens, .-sms_noready_sens
.global	sms_pumpStarted
	.type	sms_pumpStarted, @function
sms_pumpStarted:
.LFB28:
	.loc 1 1685 0
	.cfi_startproc
	push r16
.LCFI128:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI129:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI130:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI131:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
.LVL139:
	.loc 1 1689 0
	ldi r24,lo8(-49)
	ldi r25,0
	call malloc
.LVL140:
	movw r28,r24
.LVL141:
	sbiw r24,0
	breq .L117
	.loc 1 1690 0
	movw r16,r24
	subi r16,96
	sbci r17,-1
	ldi r20,lo8(20)
	ldi r21,0
	ldi r22,lo8(telNumber)
	ldi r23,hi8(telNumber)
	movw r24,r16
.LVL142:
	call strncpy
.LVL143:
	.loc 1 1691 0
	ldi r20,lo8(-96)
	ldi r21,0
	ldi r22,lo8(startRegulatorStr)
	ldi r23,hi8(startRegulatorStr)
	movw r24,r28
	call strncpy_P
.LVL144:
	.loc 1 1694 0
	ldi r20,lo8(2)
	ldi r21,0
	movw r22,r28
	movw r24,r16
	call gsm_send_sms
.LVL145:
	.loc 1 1695 0
	movw r24,r28
	call free
.LVL146:
.L117:
/* epilogue start */
	.loc 1 1697 0
	pop r29
	pop r28
.LVL147:
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE28:
	.size	sms_pumpStarted, .-sms_pumpStarted
.global	sms_powerGone
	.type	sms_powerGone, @function
sms_powerGone:
.LFB29:
	.loc 1 1699 0
	.cfi_startproc
	push r16
.LCFI132:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI133:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI134:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI135:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 1703 0
	ldi r24,lo8(-49)
	ldi r25,0
	call malloc
	movw r28,r24
	sbiw r24,0
	brne .+2
	rjmp .L119
	.loc 1 1704 0
	movw r16,r24
	subi r16,96
	sbci r17,-1
	ldi r20,lo8(20)
	ldi r21,0
	ldi r22,lo8(telNumber)
	ldi r23,hi8(telNumber)
	movw r24,r16
	call strncpy
	.loc 1 1705 0
	ldi r20,lo8(-96)
	ldi r21,0
	ldi r22,lo8(startPowerGoneStr)
	ldi r23,hi8(startPowerGoneStr)
	movw r24,r28
	call strncpy_P
	.loc 1 1706 0
	lds r24,tAsync
	push __zero_reg__
.LCFI136:
	.cfi_def_cfa_offset 7
	push r24
.LCFI137:
	.cfi_def_cfa_offset 8
	lds r24,tAsync+1
	push __zero_reg__
.LCFI138:
	.cfi_def_cfa_offset 9
	push r24
.LCFI139:
	.cfi_def_cfa_offset 10
	lds r24,tAsync+2
	push __zero_reg__
.LCFI140:
	.cfi_def_cfa_offset 11
	push r24
.LCFI141:
	.cfi_def_cfa_offset 12
	ldi r24,lo8(__c.3188)
	ldi r25,hi8(__c.3188)
	push r25
.LCFI142:
	.cfi_def_cfa_offset 13
	push r24
.LCFI143:
	.cfi_def_cfa_offset 14
	ldi r24,lo8(wbuffer)
	ldi r25,hi8(wbuffer)
	push r25
.LCFI144:
	.cfi_def_cfa_offset 15
	push r24
.LCFI145:
	.cfi_def_cfa_offset 16
	call sprintf_P
	.loc 1 1707 0
	movw r30,r28
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	movw r20,r28
	sub r20,r30
	sbc r21,r31
	subi r20,95
	sbci r21,-1
	ldi r22,lo8(wbuffer)
	ldi r23,hi8(wbuffer)
	movw r24,r28
	call strncat
	.loc 1 1708 0
	ldi r20,lo8(2)
	ldi r21,0
	movw r22,r28
	movw r24,r16
	call gsm_send_sms
	.loc 1 1709 0
	movw r24,r28
	call free
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
.LCFI146:
	.cfi_def_cfa_offset 6
.L119:
/* epilogue start */
	.loc 1 1711 0
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE29:
	.size	sms_powerGone, .-sms_powerGone
.global	ManageOutdoorTempEvent
	.type	ManageOutdoorTempEvent, @function
ManageOutdoorTempEvent:
.LFB30:
	.loc 1 1714 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1715 0
	lds r18,temper+1
	cpi r18,lo8(127)
	breq .L121
	.loc 1 1716 0
	lds r24,temp_for_hour
	cpi r24,lo8(127)
	brne .L123
	.loc 1 1716 0 is_stmt 0 discriminator 1
	sts temp_for_hour,r18
.L123:
	.loc 1 1717 0 is_stmt 1
	lds r19,temp_for_hour
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	sub r24,r19
	sbc r25,__zero_reg__
	sbiw r24,10
	brlt .L124
	.loc 1 1718 0
	ldi r24,lo8(1)
	sts PrefHeatting,r24
	.loc 1 1719 0
	sts temp_for_hour,r18
	ret
.L124:
	.loc 1 1721 0
	sts PrefHeatting,__zero_reg__
.L121:
	ret
	.cfi_endproc
.LFE30:
	.size	ManageOutdoorTempEvent, .-ManageOutdoorTempEvent
.global	TestNoReadySensors
	.type	TestNoReadySensors, @function
TestNoReadySensors:
.LFB31:
	.loc 1 1726 0
	.cfi_startproc
	push r8
.LCFI147:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI148:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI149:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI150:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r12
.LCFI151:
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
.LCFI152:
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
.LCFI153:
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
.LCFI154:
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
	push r16
.LCFI155:
	.cfi_def_cfa_offset 11
	.cfi_offset 16, -10
	push r17
.LCFI156:
	.cfi_def_cfa_offset 12
	.cfi_offset 17, -11
	push r28
.LCFI157:
	.cfi_def_cfa_offset 13
	.cfi_offset 28, -12
	push r29
.LCFI158:
	.cfi_def_cfa_offset 14
	.cfi_offset 29, -13
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	.loc 1 1729 0
	ldi r24,lo8(33)
	ldi r25,0
	call malloc
.LVL148:
	sts rSensorIDs+1,r25
	sts rSensorIDs,r24
	sbiw r24,0
	brne .+2
	rjmp .L125
	.loc 1 1730 0
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	call __eerd_block_m328p
.LVL149:
	ldi r28,lo8(sn_presence)
	ldi r29,hi8(sn_presence)
	mov __tmp_reg__,r31
	ldi r31,lo8(temper)
	mov r14,r31
	ldi r31,hi8(temper)
	mov r15,r31
	mov r31,__tmp_reg__
	ldi r16,0
	ldi r17,0
	.loc 1 1736 0
	set
	clr r8
	bld r8,3
	.loc 1 1737 0
	clr r9
	inc r9
.LVL150:
.L129:
	.loc 1 1733 0
	ld r24,Y
	cpse r24,__zero_reg__
	rjmp .L127
	.loc 1 1734 0
	lds r12,rSensorIDs
	lds r13,rSensorIDs+1
	add r12,r16
	adc r13,r17
	movw r24,r12
	call ValidSensorCode
.LVL151:
	tst r24
	breq .L127
	.loc 1 1735 0
	movw r24,r12
	call getTemperature
.LVL152:
	movw r30,r14
	st Z,r24
	cpi r24,lo8(127)
	breq .L127
	.loc 1 1736 0
	lds r30,rSensorIDs
	lds r31,rSensorIDs+1
	add r30,r16
	adc r31,r17
	movw r26,r16
	subi r26,lo8(-(gSensorIDs))
	sbci r27,hi8(-(gSensorIDs))
	mov r24,r8
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 1737 0
	st Y,r9
.L127:
.LVL153:
.LBB122:
.LBB123:
	.loc 3 163 0
	ldi r24,lo8(5999)
	ldi r25,hi8(5999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL154:
	adiw r28,1
.LVL155:
	subi r16,-8
	sbci r17,-1
	ldi r25,-1
	sub r14,r25
	sbc r15,r25
.LBE123:
.LBE122:
	.loc 1 1732 0
	cpi r16,32
	cpc r17,__zero_reg__
	brne .L129
	.loc 1 1742 0
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
	call free
.LVL156:
.L125:
/* epilogue start */
	.loc 1 1744 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE31:
	.size	TestNoReadySensors, .-TestNoReadySensors
.global	ClearEEPROMSensCodes
	.type	ClearEEPROMSensCodes, @function
ClearEEPROMSensCodes:
.LFB32:
	.loc 1 1746 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1748 0
	ldi r24,lo8(33)
	ldi r25,0
	call malloc
.LVL157:
	sts rSensorIDs+1,r25
	sts rSensorIDs,r24
	sbiw r24,0
	breq .L132
	.loc 1 1749 0
	movw r26,r24
	st X+,__zero_reg__
	.loc 1 1750 0
	ldi r18,lo8(32)
	movw r30,r24
	0:
	ld r0,Z+
	st X+,r0
	dec r18
	brne 0b
	.loc 1 1751 0
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	call __eewr_block_m328p
.LVL158:
	.loc 1 1752 0
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
	call free
.LVL159:
	.loc 1 1753 0
	ldi r24,lo8(1)
	ret
.L132:
	.loc 1 1755 0
	ldi r24,0
	.loc 1 1756 0
	ret
	.cfi_endproc
.LFE32:
	.size	ClearEEPROMSensCodes, .-ClearEEPROMSensCodes
	.section	.rodata.str1.1
.LC1:
	.string	"%02X "
.LC2:
	.string	"\n%02X%02X%02X%02X%02X%02X%02X"
	.text
.global	main
	.type	main, @function
main:
.LFB14:
	.loc 1 273 0
	.cfi_startproc
	push r28
.LCFI159:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI160:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI161:
	.cfi_def_cfa_register 28
	sbiw r28,20
.LCFI162:
	.cfi_def_cfa_offset 24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 20 */
/* stack size = 22 */
.L__stack_usage = 22
	.loc 1 284 0
	ldi r24,lo8(lcd_str)
	ldi r25,hi8(lcd_str)
	sts __iob+2+1,r25
	sts __iob+2,r24
	.loc 1 286 0
	in r20,0xa
	in r18,0x9
	ldi r24,lo8(1)
	ldi r25,0
	movw r22,r24
	rjmp 2f
	1:
	lsl r22
	rol r23
	2:
	dec r18
	brpl 1b
	movw r18,r22
	com r18
	and r18,r20
	out 0xa,r18
	.loc 1 287 0
	in r18,0xb
	in r19,0x9
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r19
	brpl 1b
	or r24,r18
	out 0xb,r24
	.loc 1 290 0
	sts ReadyWATCHDOG,__zero_reg__
	.loc 1 291 0
	sts x+1,__zero_reg__
	sts x,__zero_reg__
	sts y+1,__zero_reg__
	sts y,__zero_reg__
	.loc 1 293 0
	sts CheckNoReadySNCounter,__zero_reg__
	.loc 1 295 0
	call LCD_initialize2
.LVL160:
	.loc 1 297 0
	sbis 0x9,3
	rjmp .L134
	.loc 1 298 0
	call LcdPowerGoneStr
.LVL161:
	.loc 1 299 0
	call abort
.LVL162:
.L134:
	.loc 1 302 0
	ldi r24,lo8(1)
	sts MainLoopPhase,r24
	.loc 1 303 0
	sts LastPhase,r24
	.loc 1 304 0
	sts MenuPhase,__zero_reg__
	.loc 1 306 0
	ldi r24,lo8(33)
	ldi r25,0
	call malloc
.LVL163:
	sts rSensorIDs+1,r25
	sts rSensorIDs,r24
	sbiw r24,0
	brne .+2
	rjmp .L135
	.loc 1 307 0
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	call __eerd_block_m328p
.LVL164:
	.loc 1 311 0
	sts sn_presence,__zero_reg__
	.loc 1 312 0
	ldi r24,lo8(127)
	sts temper,r24
.LVL165:
	.loc 1 311 0
	sts sn_presence+1,__zero_reg__
	.loc 1 312 0
	sts temper+1,r24
.LVL166:
	.loc 1 311 0
	sts sn_presence+2,__zero_reg__
	.loc 1 312 0
	sts temper+2,r24
.LVL167:
	.loc 1 311 0
	sts sn_presence+3,__zero_reg__
	.loc 1 312 0
	sts temper+3,r24
.LVL168:
	.loc 1 315 0
	ldi r24,lo8(TempInDoorMin)
	ldi r25,hi8(TempInDoorMin)
	call __eerd_byte_m328p
.LVL169:
	sts rTempInDoorMin,r24
	.loc 1 316 0
	ldi r24,lo8(TempInDoorMax)
	ldi r25,hi8(TempInDoorMax)
	call __eerd_byte_m328p
.LVL170:
	sts rTempInDoorMax,r24
	.loc 1 317 0
	ldi r24,lo8(TempOutDoorMin)
	ldi r25,hi8(TempOutDoorMin)
	call __eerd_byte_m328p
.LVL171:
	sts rTempOutDoorMin,r24
	.loc 1 318 0
	ldi r24,lo8(TempOutDoorMax)
	ldi r25,hi8(TempOutDoorMax)
	call __eerd_byte_m328p
.LVL172:
	sts rTempOutDoorMax,r24
	.loc 1 319 0
	ldi r24,lo8(TempSupplyMin)
	ldi r25,hi8(TempSupplyMin)
	call __eerd_byte_m328p
.LVL173:
	sts rTempSupplyMin,r24
	.loc 1 320 0
	ldi r24,lo8(TempSupplyMax)
	ldi r25,hi8(TempSupplyMax)
	call __eerd_byte_m328p
.LVL174:
	sts rTempSupplyMax,r24
	.loc 1 321 0
	ldi r24,lo8(TempDiffSupplyReturnMin)
	ldi r25,hi8(TempDiffSupplyReturnMin)
	call __eerd_byte_m328p
.LVL175:
	sts rTempDiffSupplyReturnMin,r24
	.loc 1 322 0
	ldi r24,lo8(TempDiffSupplyReturnMax)
	ldi r25,hi8(TempDiffSupplyReturnMax)
	call __eerd_byte_m328p
.LVL176:
	sts rTempDiffSupplyReturnMax,r24
	.loc 1 324 0
	ldi r20,lo8(14)
	ldi r21,0
	ldi r22,lo8(etelNumber)
	ldi r23,hi8(etelNumber)
	ldi r24,lo8(telNumber)
	ldi r25,hi8(telNumber)
	call __eerd_block_m328p
.LVL177:
	.loc 1 331 0
	sts fl,__zero_reg__
.LVL178:
	.loc 1 340 0
	ldi r30,lo8(100)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-88)
	st Z,r24
	.loc 1 343 0
	in r24,0x7
	ori r24,lo8(48)
	out 0x7,r24
	.loc 1 344 0
	sbi 0x7,3
	.loc 1 350 0
	call WDT_off
.LVL179:
	.loc 1 355 0
	sbi 0xa,5
	.loc 1 356 0
	sbi 0xb,5
	.loc 1 361 0
	call LCD_Clear
.LVL180:
	.loc 1 362 0
	ldi r22,lo8(1)
	ldi r24,lo8(5)
	call LCD_set_position2
.LVL181:
	.loc 1 363 0
	ldi r24,lo8(helloStr1)
	ldi r25,hi8(helloStr1)
	push r25
	push r24
	ldi r24,lo8(__c.2807)
	ldi r25,hi8(__c.2807)
	push r25
	push r24
	call printf_P
.LVL182:
	.loc 1 364 0
	ldi r22,lo8(2)
	ldi r24,lo8(3)
	call LCD_set_position2
.LVL183:
	.loc 1 365 0
	ldi r24,lo8(helloStr2)
	ldi r25,hi8(helloStr2)
	push r25
	push r24
	ldi r24,lo8(__c.2809)
	ldi r25,hi8(__c.2809)
	push r25
	push r24
	call printf_P
.LVL184:
	.loc 1 366 0
	call LCD_Update
.LVL185:
	.loc 1 425 0
	ldi r18,lo8(4)
	ldi r20,lo8(42)
	ldi r21,0
	ldi r22,lo8(43)
	ldi r23,0
	ldi r24,lo8(41)
	ldi r25,0
	call ow_set_bus
.LVL186:
	.loc 1 428 0
/* #APP */
 ;  428 "../main.c" 1
	sei
 ;  0 "" 2
	.loc 1 429 0
/* #NOAPP */
	call checkPresenceSN
.LVL187:
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	tst r24
	breq .L136
	rjmp .L264
.LVL188:
.L135:
	.loc 1 308 0
	call abort
.LVL189:
.L136:
	.loc 1 441 0
	call search_sensors_n
.LVL190:
	sts nSensors,r24
	.loc 1 430 0
	ldi r27,lo8(3)
	std Y+14,r27
	ldi r17,lo8(3)
	.loc 1 443 0
	rjmp .L138
.LVL191:
.L140:
.LBB124:
.LBB125:
	.loc 3 163 0
	ldi r30,lo8(5999)
	ldi r31,hi8(5999)
	1: sbiw r30,1
	brne 1b
	rjmp .
	nop
.LBE125:
.LBE124:
	.loc 1 445 0
	call search_sensors_n
.LVL192:
	sts nSensors,r24
	.loc 1 446 0
.LVL193:
	subi r17,1
	brcs .L139
.L138:
	.loc 1 443 0 discriminator 1
	lds r24,nSensors
	cpi r24,lo8(4)
	brne .L140
.L139:
	std Y+14,r17
.LVL194:
	.loc 1 449 0
	ldi r24,lo8(1)
	sts btest_new_sensors,r24
	rjmp .L141
.LVL195:
.L264:
	.loc 1 452 0
	call copyrSNsTogSNs
.LVL196:
	.loc 1 453 0
	ldi r24,lo8(4)
	sts nSensors,r24
	.loc 1 330 0
	std Y+14,__zero_reg__
.LVL197:
.L141:
	.loc 1 457 0
	ldi r24,lo8(51)
	ldi r25,0
	call uart_init
.LVL198:
	.loc 1 512 0
	ldi r24,lo8(7)
	call InitAdc
.LVL199:
	.loc 1 513 0
	call InitAnalogComp
.LVL200:
	.loc 1 514 0
	call init_clock
.LVL201:
	.loc 1 516 0
	call LCD_Clear
.LVL202:
	.loc 1 519 0
	lds r24,nSensors
	clr r25
	sbrc r24,7
	com r25
	call LcdPutInt
.LVL203:
	.loc 1 521 0
	ldi r24,lo8(Sensorsfound)
	ldi r25,hi8(Sensorsfound)
	call LCD_draw_string3
.LVL204:
	.loc 1 522 0
	call LCD_Update
.LVL205:
	.loc 1 528 0
	lds r24,nSensors
	cpi r24,lo8(4)
	breq .+2
	rjmp .L142
	.loc 1 529 0
	call test_SN_sensors
.LVL206:
	mov r15,r24
	mov r16,r24
	clr r17
	sbrc r16,7
	com r17
.LVL207:
	cpi r16,99
	cpc r17,__zero_reg__
	breq .+2
	rjmp .L143
.LVL208:
	.loc 1 531 0 discriminator 1
	ldi r16,0
	ldi r17,0
.LVL209:
	.loc 1 529 0 discriminator 1
	mov r15,__zero_reg__
.LVL210:
.L150:
	.loc 1 532 0
	call LcdNextStr
.LVL211:
	.loc 1 533 0
	movw r24,r16
	adiw r24,1
	call LcdPutInt
.LVL212:
	.loc 1 534 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(gSensorIDs))
	sbci r31,hi8(-(gSensorIDs))
	ld r24,Z
	cpi r24,lo8(16)
	brne .L144
	.loc 1 535 0
	ldi r24,lo8(DS18S20)
	ldi r25,hi8(DS18S20)
	call LCD_draw_string3
.LVL213:
	rjmp .L145
.L144:
	.loc 1 537 0
	cpi r24,lo8(34)
	brne .L146
	.loc 1 538 0
	ldi r24,lo8(DS1822)
	ldi r25,hi8(DS1822)
	call LCD_draw_string3
.LVL214:
	rjmp .L145
.L146:
	.loc 1 542 0
	ldi r24,lo8(DS18B20)
	ldi r25,hi8(DS18B20)
	call LCD_draw_string3
.LVL215:
.L145:
	.loc 1 546 0
	movw r24,r16
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	subi r24,lo8(-(gSensorIDs))
	sbci r25,hi8(-(gSensorIDs))
	call DS18X20_get_power_status
.LVL216:
	cpse r24,__zero_reg__
	rjmp .L147
	.loc 1 547 0
	ldi r24,lo8(PAR)
	ldi r25,hi8(PAR)
	call LCD_draw_string3
.LVL217:
	rjmp .L148
.L147:
	.loc 1 550 0
	ldi r24,lo8(EXT)
	ldi r25,hi8(EXT)
	call LCD_draw_string3
.LVL218:
.L148:
	.loc 1 531 0
	inc r15
.LVL219:
	mov r16,r15
	ldi r17,0
	lds r24,nSensors
	clr r25
	sbrc r24,7
	com r25
	cp r16,r24
	cpc r17,r25
	brge .+2
	rjmp .L150
	.loc 1 554 0
	call LCD_Update
.LVL220:
	rjmp .L151
.LVL221:
.L143:
	.loc 1 557 0
	ldi r18,lo8(alarmStr)
	ldi r19,hi8(alarmStr)
	push r19
	push r18
	ldi r18,lo8(__c.2817)
	ldi r19,hi8(__c.2817)
	push r19
	push r18
	call printf_P
.LVL222:
	.loc 1 558 0
	push r17
	push r15
	ldi r24,lo8(sensorStr)
	ldi r25,hi8(sensorStr)
	push r25
	push r24
	ldi r24,lo8(__c.2819)
	ldi r25,hi8(__c.2819)
	push r25
	push r24
	call printf_P
.LVL223:
	.loc 1 559 0
	ldi r24,lo8(missingStr)
	ldi r25,hi8(missingStr)
	push r25
	push r24
	ldi r24,lo8(__c.2821)
	ldi r25,hi8(__c.2821)
	push r25
	push r24
	call printf_P
.LVL224:
	.loc 1 560 0
	call LCD_Update
.LVL225:
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L151
.LVL226:
.L142:
	.loc 1 563 0
	ldi r24,lo8(alarmStr)
	ldi r25,hi8(alarmStr)
	push r25
	push r24
	ldi r24,lo8(__c.2823)
	ldi r25,hi8(__c.2823)
	push r25
	push r24
	call printf_P
.LVL227:
	.loc 1 564 0
	ldi r24,lo8(sensorStr)
	ldi r25,hi8(sensorStr)
	push r25
	push r24
	ldi r24,lo8(__c.2825)
	ldi r25,hi8(__c.2825)
	push r25
	push r24
	call printf_P
.LVL228:
	.loc 1 565 0
	ldi r24,lo8(absenceStr)
	ldi r25,hi8(absenceStr)
	push r25
	push r24
	ldi r24,lo8(__c.2827)
	ldi r25,hi8(__c.2827)
	push r25
	push r24
	call printf_P
.LVL229:
	.loc 1 566 0
	call LCD_Update
.LVL230:
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
.LVL231:
.L151:
.LBB126:
.LBB127:
	.loc 3 163 0
	ldi r23,lo8(1599999)
	ldi r24,hi8(1599999)
	ldi r25,hlo8(1599999)
	1: subi r23,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LBE127:
.LBE126:
	.loc 1 576 0
	call LCD_Clear
.LVL232:
	.loc 1 578 0
	sbi 0x4,0
	.loc 1 579 0
	sts TimeKeyPressed,__zero_reg__
	.loc 1 580 0
	sts extstate,__zero_reg__
	.loc 1 581 0
	sts powergone,__zero_reg__
	.loc 1 582 0
	call ExtInt0Enable
.LVL233:
	.loc 1 583 0
	call ExtInt1Enable
.LVL234:
	.loc 1 585 0
	sts kg,__zero_reg__
	.loc 1 586 0
	lds r24,btest_new_sensors
	cpse r24,__zero_reg__
	rjmp .L152
	.loc 1 587 0
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
	call free
.LVL235:
	.loc 1 588 0
	call manageTemperatureEvent
.LVL236:
	.loc 1 589 0
	ldi r24,lo8(1)
	sts ReadyWATCHDOG,r24
	rjmp .L153
.L152:
	.loc 1 591 0
	ldi r24,lo8(3)
	sts MainLoopPhase,r24
	.loc 1 592 0
	sts nwSen_Phase,__zero_reg__
.L153:
	.loc 1 594 0
	sts PrefHeatting,__zero_reg__
	.loc 1 595 0
	lds r24,temper+1
	sts temp_for_hour,r24
	.loc 1 335 0
	std Y+19,__zero_reg__
	.loc 1 334 0
	ldi r26,lo8(1)
	std Y+17,r26
	.loc 1 337 0
	mov __tmp_reg__,r31
	ldi r31,lo8(127)
	mov r7,r31
	mov r31,__tmp_reg__
	.loc 1 336 0
	mov __tmp_reg__,r31
	ldi r31,lo8(127)
	mov r6,r31
	mov r31,__tmp_reg__
	.loc 1 329 0
	std Y+16,__zero_reg__
	.loc 1 333 0
	std Y+15,__zero_reg__
	.loc 1 328 0
	std Y+18,__zero_reg__
	.loc 1 332 0
	std Y+20,__zero_reg__
	ldi r16,lo8(noready_sens)
	ldi r17,hi8(noready_sens)
	mov __tmp_reg__,r31
	ldi r31,lo8(noready_sens+4)
	mov r14,r31
	ldi r31,hi8(noready_sens+4)
	mov r15,r31
	mov r31,__tmp_reg__
	.loc 1 1265 0
	mov __tmp_reg__,r31
	ldi r31,lo8(tAsync+1)
	mov r2,r31
	ldi r31,hi8(tAsync+1)
	mov r3,r31
	mov r31,__tmp_reg__
	.loc 1 1285 0
	mov __tmp_reg__,r31
	ldi r31,lo8(tAsync+2)
	mov r4,r31
	ldi r31,hi8(tAsync+2)
	mov r5,r31
	mov r31,__tmp_reg__
	rjmp .L154
.LVL237:
.L263:
	.loc 1 1238 0
	ldi r27,lo8(4)
	std Y+14,r27
.LVL238:
.L154:
	.loc 1 601 0
	lds r24,wait_powergone
	cpse r24,__zero_reg__
	jmp .L155
	.loc 1 601 0 is_stmt 0 discriminator 1
	lds r24,powergone
	tst r24
	breq .L156
	.loc 1 602 0 is_stmt 1
	ldi r24,lo8(1)
	sts wait_powergone,r24
	rjmp .L156
.L255:
	.loc 1 607 0
	cpi r25,lo8(3)
	brlo .L156
	.loc 1 608 0
	sbis 0x9,3
	rjmp .L157
	.loc 1 609 0
	call LcdPowerGoneStr
.LVL239:
	.loc 1 610 0
	call sms_powerGone
.LVL240:
	.loc 1 611 0
	call abort
.LVL241:
.L157:
	.loc 1 613 0
/* #APP */
 ;  613 "../main.c" 1
	cli
 ;  0 "" 2
	.loc 1 614 0
/* #NOAPP */
	sts powergone,__zero_reg__
	.loc 1 615 0
	sts wait_powergone,__zero_reg__
	.loc 1 616 0
/* #APP */
 ;  616 "../main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L156:
	.loc 1 627 0
	call GetKeyCode
.LVL242:
	mov r11,r24
.LVL243:
	.loc 1 629 0
	ldi r30,lo8(42)
	cpse r24,r30
	rjmp .L158
	.loc 1 629 0 is_stmt 0 discriminator 1
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L158
	.loc 1 630 0 is_stmt 1
	lds r24,MainLoopPhase
	sts LastPhase,r24
	.loc 1 631 0
	ldi r25,lo8(1)
	sts MainLoopPhase,r25
	.loc 1 632 0
	cpi r24,lo8(1)
	brne .+2
	rjmp .L159
	.loc 1 633 0
	call LCD_Clear
.LVL244:
.L158:
	.loc 1 636 0
	lds r24,MainLoopPhase
	cpi r24,lo8(1)
	breq .L161
	brlo .L162
	cpi r24,lo8(3)
	breq .+4
	jmp .L160
	.loc 1 640 0
	mov r24,r11
	call manage_new_sensors
.LVL245:
	tst r24
	brne .+2
	rjmp .L154
	.loc 1 641 0
	call manageTemperatureEvent
.LVL246:
	.loc 1 642 0
	sts PrefHeatting,__zero_reg__
	.loc 1 643 0
	lds r24,temper+1
	sts temp_for_hour,r24
	.loc 1 644 0
	sts kg,__zero_reg__
	.loc 1 645 0
	lds r24,MainLoopPhase
	sts LastPhase,r24
	.loc 1 646 0
	ldi r24,lo8(1)
	sts MainLoopPhase,r24
	.loc 1 647 0
	sts MenuPhase,__zero_reg__
	.loc 1 648 0
	sts ReadyWATCHDOG,r24
	.loc 1 649 0
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
	call free
.LVL247:
	rjmp .L154
.L162:
	.loc 1 655 0
	call DisplayTemperature
.LVL248:
	.loc 1 656 0
	jmp .L160
.L161:
	.loc 1 660 0
	mov r24,r11
	ldi r25,0
	movw r30,r24
	sbiw r30,35
	cpi r30,23
	cpc r31,__zero_reg__
	brlo .+2
	rjmp .L159
	subi r30,lo8(-(gs(.L166)))
	sbci r31,hi8(-(gs(.L166)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table,"a",@progbits
	.p2align	1
.L166:
	.word gs(.L165)
	.word gs(.L159)
	.word gs(.L159)
	.word gs(.L159)
	.word gs(.L159)
	.word gs(.L159)
	.word gs(.L159)
	.word gs(.L159)
	.word gs(.L159)
	.word gs(.L159)
	.word gs(.L159)
	.word gs(.L159)
	.word gs(.L159)
	.word gs(.L167)
	.word gs(.L168)
	.word gs(.L169)
	.word gs(.L170)
	.word gs(.L171)
	.word gs(.L172)
	.word gs(.L173)
	.word gs(.L174)
	.word gs(.L175)
	.word gs(.L176)
	.text
.L167:
	.loc 1 662 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	.loc 1 663 0
	ldi r24,lo8(9)
	sts MenuPhase,r24
	rjmp .L159
.L168:
	.loc 1 666 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	.loc 1 667 0
	ldi r24,lo8(8)
	sts MenuPhase,r24
	rjmp .L178
.L169:
	.loc 1 670 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	.loc 1 671 0
	ldi r24,lo8(2)
	sts MenuPhase,r24
	rjmp .L179
.L170:
	.loc 1 674 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	.loc 1 675 0
	ldi r24,lo8(5)
	sts MenuPhase,r24
	rjmp .L180
.L171:
	.loc 1 678 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	.loc 1 679 0
	ldi r24,lo8(4)
	sts MenuPhase,r24
	rjmp .L181
.L172:
	.loc 1 682 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	.loc 1 683 0
	ldi r24,lo8(4)
	sts MenuPhase,r24
.LVL249:
	.loc 1 685 0
	ldi r24,lo8(1)
	sts fl,r24
	.loc 1 684 0
	ldi r31,lo8(10)
	std Y+15,r31
	rjmp .L159
.LVL250:
.L173:
	.loc 1 689 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	.loc 1 690 0
	ldi r24,lo8(6)
	sts MenuPhase,r24
	rjmp .L182
.L174:
	.loc 1 693 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	.loc 1 694 0
	ldi r24,lo8(3)
	sts MenuPhase,r24
	rjmp .L183
.L175:
	.loc 1 697 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	.loc 1 698 0
	ldi r24,lo8(7)
	sts MenuPhase,r24
	rjmp .L184
.L176:
	.loc 1 701 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	.loc 1 702 0
	ldi r24,lo8(1)
	sts MenuPhase,r24
	rjmp .L185
.L165:
	.loc 1 706 0
	call LCD_Clear
.LVL251:
	.loc 1 707 0
	call LCD_Update
.LVL252:
	.loc 1 708 0
	lds r24,fl
	tst r24
	breq .L186
	.loc 1 709 0
	sts MenuPhase,__zero_reg__
	.loc 1 710 0
	sts fl,__zero_reg__
	.loc 1 712 0
	rjmp .L159
.L186:
	.loc 1 711 0
	sts MainLoopPhase,__zero_reg__
	ldi r24,lo8(1)
	sts mausure_temperature_ok,r24
	rjmp .L154
.LVL253:
.L159:
	.loc 1 715 0
	lds r20,MenuPhase
	ldi r21,0
	cpi r20,12
	cpc r21,__zero_reg__
	brlo .+4
	jmp .L160
	movw r30,r20
	subi r30,lo8(-(gs(.L188)))
	sbci r31,hi8(-(gs(.L188)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table,"a",@progbits
	.p2align	1
.L188:
	.word gs(.L187)
	.word gs(.L185)
	.word gs(.L179)
	.word gs(.L183)
	.word gs(.L181)
	.word gs(.L180)
	.word gs(.L182)
	.word gs(.L184)
	.word gs(.L178)
	.word gs(.L189)
	.word gs(.L190)
	.word gs(.L191)
	.text
.L187:
	.loc 1 717 0
	lds r24,fl
	tst r24
	breq .L192
	.loc 1 717 0 is_stmt 0 discriminator 1
	call LCD_Clear
.LVL254:
	sts fl,__zero_reg__
.L192:
	.loc 1 718 0 is_stmt 1
	call LcdFirstLine
.LVL255:
	.loc 1 720 0
	ldi r24,lo8(telStr)
	ldi r25,hi8(telStr)
	push r25
	push r24
	mov __tmp_reg__,r31
	ldi r31,lo8(setStr)
	mov r10,r31
	ldi r31,hi8(setStr)
	mov r11,r31
	mov r31,__tmp_reg__
	push r11
	push r10
	push __zero_reg__
	ldi r24,lo8(1)
	push r24
	ldi r24,lo8(__c.2847)
	ldi r25,hi8(__c.2847)
	push r25
	push r24
	call printf_P
.LVL256:
	.loc 1 721 0
	ldi r24,lo8(snStr)
	ldi r25,hi8(snStr)
	push r25
	push r24
	mov __tmp_reg__,r31
	ldi r31,lo8(viewStr)
	mov r12,r31
	ldi r31,hi8(viewStr)
	mov r13,r31
	mov r31,__tmp_reg__
	push r13
	push r12
	push __zero_reg__
	ldi r24,lo8(2)
	push r24
	ldi r24,lo8(__c.2849)
	ldi r25,hi8(__c.2849)
	push r25
	push r24
	call printf_P
.LVL257:
	.loc 1 722 0
	mov __tmp_reg__,r31
	ldi r31,lo8(timeStr)
	mov r8,r31
	ldi r31,hi8(timeStr)
	mov r9,r31
	mov r31,__tmp_reg__
	push r9
	push r8
	push r11
	push r10
	push __zero_reg__
	ldi r24,lo8(3)
	push r24
	ldi r24,lo8(__c.2851)
	ldi r25,hi8(__c.2851)
	push r25
	push r24
	call printf_P
.LVL258:
	.loc 1 723 0
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	push r11
	push r10
	push __zero_reg__
	ldi r24,lo8(4)
	push r24
	ldi r24,lo8(__c.2853)
	ldi r25,hi8(__c.2853)
	push r25
	push r24
	call printf_P
.LVL259:
	.loc 1 724 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r24,lo8(toeepromStr)
	ldi r25,hi8(toeepromStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(5)
	push r24
	ldi r24,lo8(__c.2855)
	ldi r25,hi8(__c.2855)
	push r25
	push r24
	call printf_P
.LVL260:
	.loc 1 726 0
	push r9
	push r8
	push r13
	push r12
	push __zero_reg__
	ldi r24,lo8(6)
	push r24
	ldi r24,lo8(__c.2857)
	ldi r25,hi8(__c.2857)
	push r25
	push r24
	call printf_P
.LVL261:
	.loc 1 727 0
	ldi r24,lo8(assignStr)
	ldi r25,hi8(assignStr)
	push r25
	push r24
	push r13
	push r12
	push __zero_reg__
	ldi r24,lo8(7)
	push r24
	ldi r24,lo8(__c.2859)
	ldi r25,hi8(__c.2859)
	push r25
	push r24
	call printf_P
.LVL262:
	.loc 1 728 0
	ldi r24,lo8(temperStr)
	ldi r25,hi8(temperStr)
	push r25
	push r24
	push r13
	push r12
	push __zero_reg__
	ldi r24,lo8(8)
	push r24
	ldi r24,lo8(__c.2861)
	ldi r25,hi8(__c.2861)
	push r25
	push r24
	call printf_P
.LVL263:
	.loc 1 733 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L160
.L189:
	.loc 1 735 0
	call LCD_Clear
.LVL264:
	.loc 1 736 0
	ldi r24,lo8(snStr)
	ldi r25,hi8(snStr)
	push r25
	push r24
	ldi r24,lo8(clearStr)
	ldi r25,hi8(clearStr)
	push r25
	push r24
	ldi r24,lo8(__c.2865)
	ldi r25,hi8(__c.2865)
	push r25
	push r24
	call printf_P
.LVL265:
	.loc 1 737 0
	ldi r24,lo8(10)
	sts MenuPhase,r24
	.loc 1 738 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L160
.L190:
	.loc 1 740 0
	ldi r23,lo8(42)
	cpse r11,r23
	rjmp .L193
	.loc 1 741 0
	call ClearEEPROMSensCodes
.LVL266:
	tst r24
	breq .L194
	.loc 1 742 0
	ldi r24,lo8(okStr)
	ldi r25,hi8(okStr)
	push r25
	push r24
	ldi r24,lo8(clearStr)
	ldi r25,hi8(clearStr)
	push r25
	push r24
	ldi r24,lo8(__c.2868)
	ldi r25,hi8(__c.2868)
	push r25
	push r24
	call printf_P
.LVL267:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L195
.L194:
	.loc 1 743 0
	ldi r24,lo8(errStr)
	ldi r25,hi8(errStr)
	push r25
	push r24
	ldi r24,lo8(clearStr)
	ldi r25,hi8(clearStr)
	push r25
	push r24
	ldi r24,lo8(__c.2870)
	ldi r25,hi8(__c.2870)
	push r25
	push r24
	call printf_P
.LVL268:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L195:
	.loc 1 744 0
	ldi r24,lo8(1)
	sts fl,r24
	.loc 1 745 0
	sts MenuPhase,__zero_reg__
.L193:
.LVL269:
.LBB128:
.LBB129:
	.loc 3 163 0
	ldi r24,lo8(1599999)
	ldi r25,hi8(1599999)
	ldi r26,hlo8(1599999)
	1: subi r24,1
	sbci r25,0
	sbci r26,0
	brne 1b
	rjmp .
	nop
	rjmp .L160
.LVL270:
.L178:
.LBE129:
.LBE128:
	.loc 1 750 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L196
.LVL271:
	.loc 1 752 0
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L197
.LVL272:
.L196:
	.loc 1 754 0
	ldd r27,Y+15
	cpi r27,lo8(1)
	breq .L198
	brlo .L197
	cpi r27,lo8(2)
	brne .+2
	rjmp .L199
	rjmp .L160
.LVL273:
.L197:
	.loc 1 756 0
	call LCD_Clear
.LVL274:
	.loc 1 758 0
	ldi r24,lo8(telStr)
	ldi r25,hi8(telStr)
	push r25
	push r24
	ldi r24,lo8(setStr)
	ldi r25,hi8(setStr)
	push r25
	push r24
	ldi r24,lo8(__c.2874)
	ldi r25,hi8(__c.2874)
	push r25
	push r24
	call printf_P
.LVL275:
	.loc 1 761 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 760 0
	std Y+16,__zero_reg__
	.loc 1 759 0
	ldi r30,lo8(1)
	std Y+15,r30
	.loc 1 761 0
	rjmp .L160
.LVL276:
.L198:
	.loc 1 763 0
	ldi r24,lo8(-48)
	add r24,r11
	cpi r24,lo8(10)
	brsh .L200
	.loc 1 764 0
	ldd r31,Y+16
	cpi r31,lo8(14)
	brsh .L200
	.loc 1 765 0
	mov r24,r11
	ldi r25,0
	call putchar
.LVL277:
	.loc 1 766 0
	ldd r18,Y+16
	mov r30,r18
	ldi r31,0
	subi r30,lo8(-(telNumber))
	sbci r31,hi8(-(telNumber))
	st Z,r11
	.loc 1 767 0
	subi r18,lo8(-(1))
	std Y+16,r18
.LVL278:
.L200:
	.loc 1 770 0
	ldi r19,lo8(42)
	cpse r11,r19
	rjmp .L160
	.loc 1 772 0
	ldd r20,Y+16
	mov r30,r20
	ldi r31,0
	mov __tmp_reg__,r31
	ldi r31,lo8(telNumber)
	mov r12,r31
	ldi r31,hi8(telNumber)
	mov r13,r31
	mov r31,__tmp_reg__
	subi r30,lo8(-(telNumber))
	sbci r31,hi8(-(telNumber))
	st Z,__zero_reg__
	.loc 1 773 0
	ldi r24,lo8(toeepromStr)
	ldi r25,hi8(toeepromStr)
	push r25
	push r24
	ldi r24,lo8(saveStr)
	ldi r25,hi8(saveStr)
	push r25
	push r24
	ldi r24,lo8(__c.2878)
	ldi r25,hi8(__c.2878)
	push r25
	push r24
	call printf_P
.LVL279:
	.loc 1 774 0
	push r13
	push r12
	ldi r24,lo8(__c.2880)
	ldi r25,hi8(__c.2880)
	push r25
	push r24
	call printf_P
.LVL280:
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 775 0
	ldi r23,lo8(2)
	std Y+15,r23
	rjmp .L160
.LVL281:
.L199:
	.loc 1 780 0
	ldi r24,lo8(42)
	cpse r11,r24
	rjmp .L160
	.loc 1 782 0
	ldi r30,lo8(telNumber)
	ldi r31,hi8(telNumber)
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	movw r20,r30
	subi r20,lo8(telNumber)
	sbci r21,hi8(telNumber)
	ldi r22,lo8(etelNumber)
	ldi r23,hi8(etelNumber)
	ldi r24,lo8(telNumber)
	ldi r25,hi8(telNumber)
	call __eewr_block_m328p
.LVL282:
	.loc 1 783 0
	ldi r24,lo8(okStr)
	ldi r25,hi8(okStr)
	push r25
	push r24
	ldi r24,lo8(saveStr)
	ldi r25,hi8(saveStr)
	push r25
	push r24
	ldi r24,lo8(__c.2883)
	ldi r25,hi8(__c.2883)
	push r25
	push r24
	call printf_P
.LVL283:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 784 0
	ldi r25,lo8(3)
	std Y+15,r25
	rjmp .L160
.LVL284:
.L185:
	.loc 1 794 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L201
.LVL285:
	.loc 1 796 0
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L202
.LVL286:
.L201:
	.loc 1 799 0
	ldd r26,Y+15
	cpi r26,lo8(2)
	brne .+2
	rjmp .L203
	brsh .L204
	tst r26
	breq .L202
	cpi r26,lo8(1)
	breq .L205
	rjmp .L160
.L204:
	ldd r27,Y+15
	cpi r27,lo8(4)
	brne .+2
	rjmp .L206
	brsh .+2
	rjmp .L207
	cpi r27,lo8(5)
	brne .+2
	rjmp .L208
	rjmp .L160
.LVL287:
.L202:
	.loc 1 802 0
	call LCD_Clear
.LVL288:
	.loc 1 804 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2888)
	ldi r25,hi8(__c.2888)
	push r25
	push r24
	call printf_P
.LVL289:
	.loc 1 805 0
	ldi r24,lo8(snStr)
	ldi r25,hi8(snStr)
	push r25
	push r24
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	ldi r24,lo8(__c.2890)
	ldi r25,hi8(__c.2890)
	push r25
	push r24
	call printf_P
.LVL290:
	.loc 1 812 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 810 0
	std Y+19,__zero_reg__
	.loc 1 809 0
	ldi r31,lo8(1)
	std Y+17,r31
	.loc 1 807 0
	std Y+16,__zero_reg__
	.loc 1 811 0
	ldi r18,lo8(5)
	std Y+15,r18
	.loc 1 808 0
	std Y+18,__zero_reg__
	.loc 1 812 0
	rjmp .L160
.LVL291:
.L205:
	.loc 1 814 0
	call LCD_Clear
.LVL292:
	.loc 1 816 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2894)
	ldi r25,hi8(__c.2894)
	push r25
	push r24
	call printf_P
.LVL293:
	.loc 1 817 0
	ldi r24,lo8(snStr)
	ldi r25,hi8(snStr)
	push r25
	push r24
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
	push r24
	ldi r24,lo8(__c.2896)
	ldi r25,hi8(__c.2896)
	push r25
	push r24
	call printf_P
.LVL294:
	.loc 1 824 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 822 0
	ldi r23,lo8(1)
	std Y+19,r23
	.loc 1 821 0
	ldi r24,lo8(2)
	std Y+17,r24
	.loc 1 819 0
	std Y+16,__zero_reg__
	.loc 1 823 0
	ldi r25,lo8(5)
	std Y+15,r25
	.loc 1 820 0
	std Y+18,__zero_reg__
	.loc 1 824 0
	rjmp .L160
.LVL295:
.L203:
	.loc 1 826 0
	call LCD_Clear
.LVL296:
	.loc 1 828 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2899)
	ldi r25,hi8(__c.2899)
	push r25
	push r24
	call printf_P
.LVL297:
	.loc 1 829 0
	ldi r24,lo8(snStr)
	ldi r25,hi8(snStr)
	push r25
	push r24
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
	push r24
	ldi r24,lo8(__c.2901)
	ldi r25,hi8(__c.2901)
	push r25
	push r24
	call printf_P
.LVL298:
	.loc 1 836 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 834 0
	ldi r27,lo8(2)
	std Y+19,r27
	.loc 1 833 0
	ldi r30,lo8(3)
	std Y+17,r30
	.loc 1 831 0
	std Y+16,__zero_reg__
	.loc 1 835 0
	ldi r31,lo8(5)
	std Y+15,r31
	.loc 1 832 0
	std Y+18,__zero_reg__
	.loc 1 836 0
	rjmp .L160
.LVL299:
.L207:
	.loc 1 838 0
	call LCD_Clear
.LVL300:
	.loc 1 840 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2904)
	ldi r25,hi8(__c.2904)
	push r25
	push r24
	call printf_P
.LVL301:
	.loc 1 841 0
	ldi r24,lo8(snStr)
	ldi r25,hi8(snStr)
	push r25
	push r24
	ldi r24,lo8(returnStr)
	ldi r25,hi8(returnStr)
	push r25
	push r24
	ldi r24,lo8(__c.2906)
	ldi r25,hi8(__c.2906)
	push r25
	push r24
	call printf_P
.LVL302:
	.loc 1 848 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 846 0
	ldi r19,lo8(3)
	std Y+19,r19
	.loc 1 845 0
	std Y+17,__zero_reg__
	.loc 1 843 0
	std Y+16,__zero_reg__
	.loc 1 847 0
	ldi r20,lo8(5)
	std Y+15,r20
	.loc 1 844 0
	std Y+18,__zero_reg__
	.loc 1 848 0
	rjmp .L160
.LVL303:
.L208:
	.loc 1 851 0
	ldi r24,lo8(-48)
	add r24,r11
	cpi r24,lo8(10)
	brlo .+2
	rjmp .L209
	.loc 1 852 0
	ldd r22,Y+18
	cpi r22,lo8(7)
	brlo .+2
	rjmp .L256
	.loc 1 853 0
	mov r24,r11
	ldi r25,0
	call putchar
.LVL304:
	.loc 1 854 0
	ldd r23,Y+16
	mov r24,r23
	ldi r25,0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,r11
	.loc 1 855 0
	cpi r23,lo8(2)
	brsh .L210
	.loc 1 855 0 is_stmt 0 discriminator 1
	subi r23,lo8(-(1))
	std Y+16,r23
.LVL305:
	rjmp .L209
.LVL306:
.L210:
	.loc 1 857 0 is_stmt 1
	ldi r30,lo8(2)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	.loc 1 858 0
	movw r24,r28
	adiw r24,1
	call atoi
.LVL307:
	.loc 1 859 0
	cpi r24,-1
	cpc r25,__zero_reg__
	breq .+4
	brlt .+2
	rjmp .L211
	.loc 1 860 0
	mov __tmp_reg__,r31
	ldi r31,lo8(6)
	mov r12,r31
	mov r13,__zero_reg__
	mov r31,__tmp_reg__
	add r12,r28
	adc r13,r29
	ldd r26,Y+18
	add r12,r26
	adc r13,__zero_reg__
	movw r30,r12
	st Z,r24
	.loc 1 861 0
	ldi r24,lo8(3)
.LVL308:
	call ReturnXPos
.LVL309:
	.loc 1 862 0
	movw r26,r12
	ld r24,X
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printf
.LVL310:
	.loc 1 863 0
	ldi r24,lo8(1)
	call ReturnXPos
.LVL311:
	.loc 1 864 0
	ldd r27,Y+18
	subi r27,lo8(-(1))
	std Y+18,r27
.LVL312:
	.loc 1 865 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	cpi r27,lo8(7)
	breq .+2
	rjmp .L257
	.loc 1 866 0
	std Y+13,__zero_reg__
.LVL313:
	movw r30,r28
	adiw r30,6
	ldd r19,Y+19
	ldi r18,lo8(8)
	mul r19,r18
	movw r20,r0
	clr __zero_reg__
	subi r20,lo8(-(gSensorIDs))
	sbci r21,hi8(-(gSensorIDs))
	ldi r24,0
	ldi r25,0
	.loc 1 868 0
	mov r18,r19
	ldi r19,0
.LVL314:
.L213:
	.loc 1 868 0 is_stmt 0 discriminator 2
	movw r12,r18
	ld r22,Z+
	movw r26,r20
	add r26,r24
	adc r27,r25
	st X,r22
.LVL315:
	adiw r24,1
.LVL316:
	.loc 1 867 0 is_stmt 1 discriminator 2
	cpi r24,7
	cpc r25,__zero_reg__
	brne .L213
	.loc 1 869 0
	ldi r22,lo8(7)
	ldi r23,0
	movw r24,r28
.LVL317:
	adiw r24,6
	call crc8
.LVL318:
	mov r11,r24
.LVL319:
	.loc 1 870 0
	movw r30,r12
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(gSensorIDs))
	sbci r31,hi8(-(gSensorIDs))
	std Z+7,r24
	.loc 1 871 0
	push __zero_reg__
	push r24
	ldi r24,lo8(checksumStr)
	ldi r25,hi8(checksumStr)
	push r25
	push r24
	ldi r24,lo8(__c.2912)
	ldi r25,hi8(__c.2912)
	push r25
	push r24
	call printf_P
.LVL320:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 875 0
	std Y+16,__zero_reg__
.LVL321:
	.loc 1 872 0
	ldi r20,lo8(4)
	std Y+15,r20
	.loc 1 867 0
	ldi r22,lo8(7)
	std Y+14,r22
	rjmp .L209
.LVL322:
.L211:
	.loc 1 874 0
	ldi r24,lo8(3)
.LVL323:
	call ReturnXPos
.LVL324:
	ldi r24,lo8(__c.2914)
	ldi r25,hi8(__c.2914)
	push r25
	push r24
	call printf_P
.LVL325:
	ldi r24,lo8(3)
	call ReturnXPos
.LVL326:
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 875 0
	std Y+16,__zero_reg__
.LVL327:
	rjmp .L209
.LVL328:
.L256:
	.loc 1 877 0
	ldi r23,lo8(4)
	std Y+15,r23
	rjmp .L209
.LVL329:
.L257:
	.loc 1 875 0
	std Y+16,__zero_reg__
.LVL330:
.L209:
	.loc 1 881 0
	ldi r24,lo8(42)
	cpse r11,r24
	rjmp .L160
	rjmp .L258
.LVL331:
.L206:
	.loc 1 886 0
	ldi r25,lo8(42)
	cpse r11,r25
	rjmp .L160
	rjmp .L259
.LVL332:
.L179:
	.loc 1 894 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L214
	.loc 1 895 0
	ldi r24,lo8(1)
	sts fl,r24
	.loc 1 896 0
	call LCD_Clear
.LVL333:
	.loc 1 910 0
	ldi r24,lo8(nsupdownStr)
	ldi r25,hi8(nsupdownStr)
	push r25
	push r24
	ldi r24,lo8(__c.2918)
	ldi r25,hi8(__c.2918)
	push r25
	push r24
	call printf_P
.LVL334:
	mov __tmp_reg__,r31
	ldi r31,lo8(gSensorIDs+6)
	mov r12,r31
	ldi r31,hi8(gSensorIDs+6)
	mov r13,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(gSensorIDs+38)
	mov r10,r31
	ldi r31,hi8(gSensorIDs+38)
	mov r11,r31
	mov r31,__tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LVL335:
.L216:
	.loc 1 919 0 discriminator 2
	movw r26,r12
	ld r24,X
	push __zero_reg__
	push r24
	movw r30,r12
	sbiw r30,1
	ld r24,Z
	push __zero_reg__
	push r24
	sbiw r30,1
	ld r24,Z
	push __zero_reg__
	push r24
	sbiw r30,1
	ld r24,Z
	push __zero_reg__
	push r24
	sbiw r30,1
	ld r24,Z
	push __zero_reg__
	push r24
	sbiw r30,1
	ld r24,Z
	push __zero_reg__
	push r24
	sbiw r30,1
	ld r24,Z
	push __zero_reg__
	push r24
	ldi r26,lo8(.LC2)
	ldi r27,hi8(.LC2)
	push r27
	push r26
	call printf
.LVL336:
	ldi r31,8
	add r12,r31
	adc r13,__zero_reg__
	.loc 1 913 0 discriminator 2
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	cp r12,r10
	cpc r13,r11
	brne .L216
	.loc 1 928 0
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2923)
	ldi r25,hi8(__c.2923)
	push r25
	push r24
	call printf_P
.LVL337:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 913 0
	ldi r19,lo8(4)
	std Y+14,r19
	rjmp .L160
.LVL338:
.L214:
.LBB130:
.LBB131:
	.loc 3 163 0
	ldi r20,lo8(1599999)
	ldi r22,hi8(1599999)
	ldi r23,hlo8(1599999)
	1: subi r20,1
	sbci r22,0
	sbci r23,0
	brne 1b
	rjmp .
	nop
	rjmp .L160
.LVL339:
.L183:
.LBE131:
.LBE130:
	.loc 1 936 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L160
	.loc 1 937 0
	call LCD_Clear
.LVL340:
	.loc 1 939 0
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	push __zero_reg__
	clr r11
	inc r11
.LVL341:
	push r11
	mov __tmp_reg__,r31
	ldi r31,lo8(snStr)
	mov r12,r31
	ldi r31,hi8(snStr)
	mov r13,r31
	mov r31,__tmp_reg__
	push r13
	push r12
	ldi r24,lo8(__c.2926)
	ldi r25,hi8(__c.2926)
	push r25
	push r24
	call printf_P
.LVL342:
	.loc 1 940 0
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(2)
	push r24
	push r13
	push r12
	ldi r24,lo8(__c.2928)
	ldi r25,hi8(__c.2928)
	push r25
	push r24
	call printf_P
.LVL343:
	.loc 1 941 0
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(3)
	push r24
	push r13
	push r12
	ldi r24,lo8(__c.2930)
	ldi r25,hi8(__c.2930)
	push r25
	push r24
	call printf_P
.LVL344:
	.loc 1 942 0
	ldi r24,lo8(returnStr)
	ldi r25,hi8(returnStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(4)
	push r24
	push r13
	push r12
	ldi r24,lo8(__c.2932)
	ldi r25,hi8(__c.2932)
	push r25
	push r24
	call printf_P
.LVL345:
	.loc 1 943 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2934)
	ldi r25,hi8(__c.2934)
	push r25
	push r24
	call printf_P
.LVL346:
	.loc 1 944 0
	sts fl,r11
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L160
.LVL347:
.L184:
	.loc 1 948 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L217
	.loc 1 949 0
	call LCD_Clear
.LVL348:
	.loc 1 952 0
	lds r18,rTempInDoorMin
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	mov __tmp_reg__,r31
	ldi r31,lo8(minStr)
	mov r10,r31
	ldi r31,hi8(minStr)
	mov r11,r31
	mov r31,__tmp_reg__
	push r11
	push r10
	mov __tmp_reg__,r31
	ldi r31,lo8(indoorStr)
	mov r8,r31
	ldi r31,hi8(indoorStr)
	mov r9,r31
	mov r31,__tmp_reg__
	push r9
	push r8
	ldi r24,lo8(__c.2937)
	ldi r25,hi8(__c.2937)
	push r25
	push r24
	call printf_P
.LVL349:
	.loc 1 953 0
	lds r18,rTempInDoorMax
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	mov __tmp_reg__,r31
	ldi r31,lo8(maxStr)
	mov r12,r31
	ldi r31,hi8(maxStr)
	mov r13,r31
	mov r31,__tmp_reg__
	push r13
	push r12
	push r9
	push r8
	ldi r24,lo8(__c.2939)
	ldi r25,hi8(__c.2939)
	push r25
	push r24
	call printf_P
.LVL350:
	.loc 1 954 0
	lds r18,rTempOutDoorMin
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	push r11
	push r10
	mov __tmp_reg__,r31
	ldi r31,lo8(outdoorStr)
	mov r8,r31
	ldi r31,hi8(outdoorStr)
	mov r9,r31
	mov r31,__tmp_reg__
	push r9
	push r8
	ldi r24,lo8(__c.2941)
	ldi r25,hi8(__c.2941)
	push r25
	push r24
	call printf_P
.LVL351:
	.loc 1 965 0
	lds r18,rTempOutDoorMax
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	push r13
	push r12
	push r9
	push r8
	ldi r24,lo8(__c.2943)
	ldi r25,hi8(__c.2943)
	push r25
	push r24
	call printf_P
.LVL352:
	.loc 1 966 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	lds r18,rTempSupplyMin
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	push r11
	push r10
	mov __tmp_reg__,r31
	ldi r31,lo8(supplyStr)
	mov r8,r31
	ldi r31,hi8(supplyStr)
	mov r9,r31
	mov r31,__tmp_reg__
	push r9
	push r8
	ldi r24,lo8(__c.2945)
	ldi r25,hi8(__c.2945)
	push r25
	push r24
	call printf_P
.LVL353:
	.loc 1 968 0
	lds r18,rTempSupplyMax
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	push r13
	push r12
	push r9
	push r8
	ldi r24,lo8(__c.2947)
	ldi r25,hi8(__c.2947)
	push r25
	push r24
	call printf_P
.LVL354:
	.loc 1 970 0
	lds r18,rTempDiffSupplyReturnMin
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	push r11
	push r10
	mov __tmp_reg__,r31
	ldi r31,lo8(diffStr)
	mov r10,r31
	ldi r31,hi8(diffStr)
	mov r11,r31
	mov r31,__tmp_reg__
	push r11
	push r10
	ldi r24,lo8(__c.2949)
	ldi r25,hi8(__c.2949)
	push r25
	push r24
	call printf_P
.LVL355:
	.loc 1 971 0
	lds r18,rTempDiffSupplyReturnMax
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	push r13
	push r12
	push r11
	push r10
	ldi r24,lo8(__c.2951)
	ldi r25,hi8(__c.2951)
	push r25
	push r24
	call printf_P
.LVL356:
	.loc 1 974 0
	ldi r24,lo8(1)
	sts fl,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L160
.L217:
.LVL357:
.LBB132:
.LBB133:
	.loc 3 163 0
	ldi r31,lo8(1599999)
	ldi r18,hi8(1599999)
	ldi r19,hlo8(1599999)
	1: subi r31,1
	sbci r18,0
	sbci r19,0
	brne 1b
	rjmp .
	nop
	rjmp .L160
.LVL358:
.L181:
.LBE133:
.LBE132:
	.loc 1 978 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L218
.LVL359:
	.loc 1 980 0
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L219
.LVL360:
.L218:
	.loc 1 983 0
	ldd r20,Y+15
	mov r24,r20
	ldi r25,0
	cpi r24,12
	cpc r25,__zero_reg__
	brlo .+2
	rjmp .L160
	movw r30,r24
	subi r30,lo8(-(gs(.L220)))
	sbci r31,hi8(-(gs(.L220)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table,"a",@progbits
	.p2align	1
.L220:
	.word gs(.L219)
	.word gs(.L221)
	.word gs(.L222)
	.word gs(.L223)
	.word gs(.L224)
	.word gs(.L225)
	.word gs(.L226)
	.word gs(.L227)
	.word gs(.L228)
	.word gs(.L229)
	.word gs(.L230)
	.word gs(.L231)
	.text
.LVL361:
.L219:
	.loc 1 985 0
	call LCD_Clear
.LVL362:
	.loc 1 987 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2955)
	ldi r25,hi8(__c.2955)
	push r25
	push r24
	call printf_P
.LVL363:
	.loc 1 988 0
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2957)
	ldi r25,hi8(__c.2957)
	push r25
	push r24
	call printf_P
.LVL364:
	.loc 1 989 0
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.2959)
	ldi r25,hi8(__c.2959)
	push r25
	push r24
	call printf_P
.LVL365:
	.loc 1 995 0
	ldi r24,lo8(rTempInDoorMin)
	ldi r25,hi8(rTempInDoorMin)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 996 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 993 0
	ldi r23,lo8(1)
	std Y+17,r23
	.loc 1 991 0
	std Y+16,__zero_reg__
	.loc 1 994 0
	ldi r24,lo8(9)
	std Y+15,r24
	.loc 1 992 0
	ldi r25,lo8(1)
	std Y+14,r25
	.loc 1 996 0
	rjmp .L160
.LVL366:
.L221:
	.loc 1 998 0
	call LCD_Clear
.LVL367:
	.loc 1 1000 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2963)
	ldi r25,hi8(__c.2963)
	push r25
	push r24
	call printf_P
.LVL368:
	.loc 1 1001 0
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2965)
	ldi r25,hi8(__c.2965)
	push r25
	push r24
	call printf_P
.LVL369:
	.loc 1 1002 0
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.2967)
	ldi r25,hi8(__c.2967)
	push r25
	push r24
	call printf_P
.LVL370:
	.loc 1 1006 0
	ldi r24,lo8(rTempInDoorMax)
	ldi r25,hi8(rTempInDoorMax)
	sts TempAct+1,r25
	sts TempAct,r24
.LVL371:
	.loc 1 1009 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 1004 0
	ldi r27,lo8(2)
	std Y+17,r27
	.loc 1 1007 0
	std Y+16,__zero_reg__
	.loc 1 1005 0
	ldi r30,lo8(9)
	std Y+15,r30
	.loc 1 1008 0
	ldi r31,lo8(1)
	std Y+14,r31
	.loc 1 1009 0
	rjmp .L160
.LVL372:
.L222:
	.loc 1 1011 0
	call LCD_Clear
.LVL373:
	.loc 1 1013 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2970)
	ldi r25,hi8(__c.2970)
	push r25
	push r24
	call printf_P
.LVL374:
	.loc 1 1014 0
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2972)
	ldi r25,hi8(__c.2972)
	push r25
	push r24
	call printf_P
.LVL375:
	.loc 1 1015 0
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.2974)
	ldi r25,hi8(__c.2974)
	push r25
	push r24
	call printf_P
.LVL376:
	.loc 1 1021 0
	ldi r24,lo8(rTempOutDoorMin)
	ldi r25,hi8(rTempOutDoorMin)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 1022 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 1017 0
	ldi r19,lo8(3)
	std Y+17,r19
	.loc 1 1019 0
	std Y+16,__zero_reg__
	.loc 1 1018 0
	ldi r20,lo8(9)
	std Y+15,r20
	.loc 1 1020 0
	ldi r22,lo8(1)
	std Y+14,r22
	.loc 1 1022 0
	rjmp .L160
.LVL377:
.L223:
	.loc 1 1024 0
	call LCD_Clear
.LVL378:
	.loc 1 1026 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2977)
	ldi r25,hi8(__c.2977)
	push r25
	push r24
	call printf_P
.LVL379:
	.loc 1 1027 0
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2979)
	ldi r25,hi8(__c.2979)
	push r25
	push r24
	call printf_P
.LVL380:
	.loc 1 1028 0
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.2981)
	ldi r25,hi8(__c.2981)
	push r25
	push r24
	call printf_P
.LVL381:
	.loc 1 1034 0
	ldi r24,lo8(rTempOutDoorMax)
	ldi r25,hi8(rTempOutDoorMax)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 1035 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 1030 0
	ldi r25,lo8(4)
	std Y+17,r25
	.loc 1 1032 0
	std Y+16,__zero_reg__
	.loc 1 1031 0
	ldi r26,lo8(9)
	std Y+15,r26
	.loc 1 1033 0
	ldi r27,lo8(1)
	std Y+14,r27
	.loc 1 1035 0
	rjmp .L160
.LVL382:
.L224:
	.loc 1 1037 0
	call LCD_Clear
.LVL383:
	.loc 1 1039 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2984)
	ldi r25,hi8(__c.2984)
	push r25
	push r24
	call printf_P
.LVL384:
	.loc 1 1040 0
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2986)
	ldi r25,hi8(__c.2986)
	push r25
	push r24
	call printf_P
.LVL385:
	.loc 1 1041 0
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.2988)
	ldi r25,hi8(__c.2988)
	push r25
	push r24
	call printf_P
.LVL386:
	.loc 1 1047 0
	ldi r24,lo8(rTempSupplyMin)
	ldi r25,hi8(rTempSupplyMin)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 1048 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 1043 0
	ldi r31,lo8(5)
	std Y+17,r31
	.loc 1 1045 0
	std Y+16,__zero_reg__
	.loc 1 1044 0
	ldi r18,lo8(9)
	std Y+15,r18
	.loc 1 1046 0
	ldi r19,lo8(1)
	std Y+14,r19
	.loc 1 1048 0
	rjmp .L160
.LVL387:
.L225:
	.loc 1 1050 0
	call LCD_Clear
.LVL388:
	.loc 1 1052 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2991)
	ldi r25,hi8(__c.2991)
	push r25
	push r24
	call printf_P
.LVL389:
	.loc 1 1053 0
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2993)
	ldi r25,hi8(__c.2993)
	push r25
	push r24
	call printf_P
.LVL390:
	.loc 1 1054 0
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.2995)
	ldi r25,hi8(__c.2995)
	push r25
	push r24
	call printf_P
.LVL391:
	.loc 1 1058 0
	ldi r24,lo8(rTempSupplyMax)
	ldi r25,hi8(rTempSupplyMax)
	sts TempAct+1,r25
	sts TempAct,r24
.LVL392:
	.loc 1 1061 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 1056 0
	ldi r23,lo8(6)
	std Y+17,r23
	.loc 1 1059 0
	std Y+16,__zero_reg__
	.loc 1 1057 0
	ldi r24,lo8(9)
	std Y+15,r24
	.loc 1 1060 0
	ldi r25,lo8(1)
	std Y+14,r25
	.loc 1 1061 0
	rjmp .L160
.LVL393:
.L226:
	.loc 1 1063 0
	call LCD_Clear
.LVL394:
	.loc 1 1065 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2998)
	ldi r25,hi8(__c.2998)
	push r25
	push r24
	call printf_P
.LVL395:
	.loc 1 1066 0
	ldi r24,lo8(diffStr)
	ldi r25,hi8(diffStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.3000)
	ldi r25,hi8(__c.3000)
	push r25
	push r24
	call printf_P
.LVL396:
	.loc 1 1067 0
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.3002)
	ldi r25,hi8(__c.3002)
	push r25
	push r24
	call printf_P
.LVL397:
	.loc 1 1073 0
	ldi r24,lo8(rTempDiffSupplyReturnMin)
	ldi r25,hi8(rTempDiffSupplyReturnMin)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 1074 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 1069 0
	ldi r27,lo8(7)
	std Y+17,r27
	.loc 1 1071 0
	std Y+16,__zero_reg__
	.loc 1 1070 0
	ldi r30,lo8(9)
	std Y+15,r30
	.loc 1 1072 0
	ldi r31,lo8(1)
	std Y+14,r31
	.loc 1 1074 0
	rjmp .L160
.LVL398:
.L227:
	.loc 1 1076 0
	call LCD_Clear
.LVL399:
	.loc 1 1078 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.3005)
	ldi r25,hi8(__c.3005)
	push r25
	push r24
	call printf_P
.LVL400:
	.loc 1 1079 0
	ldi r24,lo8(diffStr)
	ldi r25,hi8(diffStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.3007)
	ldi r25,hi8(__c.3007)
	push r25
	push r24
	call printf_P
.LVL401:
	.loc 1 1080 0
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.3009)
	ldi r25,hi8(__c.3009)
	push r25
	push r24
	call printf_P
.LVL402:
	.loc 1 1086 0
	ldi r24,lo8(rTempDiffSupplyReturnMax)
	ldi r25,hi8(rTempDiffSupplyReturnMax)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 1087 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 1082 0
	ldi r19,lo8(10)
	std Y+17,r19
	.loc 1 1084 0
	std Y+16,__zero_reg__
	.loc 1 1083 0
	ldi r20,lo8(9)
	std Y+15,r20
	.loc 1 1085 0
	ldi r22,lo8(1)
	std Y+14,r22
	.loc 1 1087 0
	rjmp .L160
.LVL403:
.L230:
	.loc 1 1089 0
	call LCD_Clear
.LVL404:
	.loc 1 1091 0
	ldi r24,lo8(toeepromStr)
	ldi r25,hi8(toeepromStr)
	push r25
	push r24
	ldi r24,lo8(saveStr)
	ldi r25,hi8(saveStr)
	push r25
	push r24
	ldi r24,lo8(__c.3012)
	ldi r25,hi8(__c.3012)
	push r25
	push r24
	call printf_P
.LVL405:
	.loc 1 1094 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1092 0
	std Y+17,__zero_reg__
	.loc 1 1093 0
	ldi r23,lo8(11)
	std Y+15,r23
	.loc 1 1094 0
	rjmp .L160
.LVL406:
.L231:
	.loc 1 1096 0
	ldi r24,lo8(42)
	cpse r11,r24
	rjmp .L232
	.loc 1 1097 0
	lds r22,rTempInDoorMin
	ldi r24,lo8(TempInDoorMin)
	ldi r25,hi8(TempInDoorMin)
	call __eeupd_byte_m328p
.LVL407:
	.loc 1 1098 0
	lds r22,rTempInDoorMax
	ldi r24,lo8(TempInDoorMax)
	ldi r25,hi8(TempInDoorMax)
	call __eeupd_byte_m328p
.LVL408:
	.loc 1 1099 0
	lds r22,rTempOutDoorMin
	ldi r24,lo8(TempOutDoorMin)
	ldi r25,hi8(TempOutDoorMin)
	call __eeupd_byte_m328p
.LVL409:
	.loc 1 1100 0
	lds r22,rTempOutDoorMax
	ldi r24,lo8(TempOutDoorMax)
	ldi r25,hi8(TempOutDoorMax)
	call __eeupd_byte_m328p
.LVL410:
	.loc 1 1101 0
	lds r22,rTempSupplyMin
	ldi r24,lo8(TempSupplyMin)
	ldi r25,hi8(TempSupplyMin)
	call __eeupd_byte_m328p
.LVL411:
	.loc 1 1102 0
	lds r22,rTempSupplyMax
	ldi r24,lo8(TempSupplyMax)
	ldi r25,hi8(TempSupplyMax)
	call __eeupd_byte_m328p
.LVL412:
	.loc 1 1103 0
	lds r22,rTempDiffSupplyReturnMin
	ldi r24,lo8(TempDiffSupplyReturnMin)
	ldi r25,hi8(TempDiffSupplyReturnMin)
	call __eeupd_byte_m328p
.LVL413:
	.loc 1 1104 0
	lds r22,rTempDiffSupplyReturnMax
	ldi r24,lo8(TempDiffSupplyReturnMax)
	ldi r25,hi8(TempDiffSupplyReturnMax)
	call __eeupd_byte_m328p
.LVL414:
	.loc 1 1105 0
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	ldi r24,lo8(gSensorIDs)
	ldi r25,hi8(gSensorIDs)
	call __eeupd_block_m328p
.LVL415:
	.loc 1 1106 0
	ldi r24,lo8(okStr)
	ldi r25,hi8(okStr)
	push r25
	push r24
	ldi r24,lo8(saveStr)
	ldi r25,hi8(saveStr)
	push r25
	push r24
	ldi r24,lo8(__c.3015)
	ldi r25,hi8(__c.3015)
	push r25
	push r24
	call printf_P
.LVL416:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1107 0
	ldi r25,lo8(8)
	std Y+15,r25
	rjmp .L160
.LVL417:
.L232:
.LBB134:
.LBB135:
	.loc 3 163 0
	ldi r26,lo8(1599999)
	ldi r27,hi8(1599999)
	ldi r30,hlo8(1599999)
	1: subi r26,1
	sbci r27,0
	sbci r30,0
	brne 1b
	rjmp .
	nop
	rjmp .L160
.LVL418:
.L228:
.LBE135:
.LBE134:
	.loc 1 1111 0
	ldi r31,lo8(42)
	cpse r11,r31
	rjmp .L160
	rjmp .L260
.L229:
	.loc 1 1115 0
	ldi r24,lo8(-48)
	add r24,r11
	cpi r24,lo8(10)
	brlo .+2
	rjmp .L233
	.loc 1 1117 0
	ldd r18,Y+14
	ldd r19,Y+16
	cp r19,r18
	brsh .L234
	.loc 1 1118 0
	cpse r19,__zero_reg__
	rjmp .L235
	.loc 1 1118 0 is_stmt 0 discriminator 1
	ldi r20,lo8(57)
.LVL419:
	cpse r11,r20
	rjmp .L235
	.loc 1 1119 0 is_stmt 1
	ldi r24,lo8(45)
	std Y+1,r24
.LVL420:
	ldi r24,lo8(45)
	ldi r25,0
	call putchar
.LVL421:
	ldi r22,lo8(2)
	std Y+14,r22
	rjmp .L236
.LVL422:
.L235:
	.loc 1 1120 0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	ldd r23,Y+16
	add r30,r23
	adc r31,__zero_reg__
	st Z,r11
	mov r24,r11
	ldi r25,0
	call putchar
.LVL423:
.L236:
	.loc 1 1121 0
	ldd r24,Y+16
	subi r24,lo8(-(1))
	std Y+16,r24
.LVL424:
	rjmp .L233
.LVL425:
.L234:
	.loc 1 1123 0
	ldd r26,Y+16
	mov r24,r26
	ldi r25,0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,r11
	.loc 1 1124 0
	ldi r30,lo8(2)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	.loc 1 1125 0
	mov r24,r11
	ldi r25,0
	call putchar
.LVL426:
	.loc 1 1126 0
	movw r24,r28
	adiw r24,1
	call atoi
.LVL427:
	.loc 1 1127 0
	lds r30,TempAct
	lds r31,TempAct+1
	st Z,r24
.LVL428:
	.loc 1 1129 0
	push r25
	push r24
	ldi r24,lo8(__c.3019)
	ldi r25,hi8(__c.3019)
.LVL429:
	push r25
.LVL430:
	push r24
.LVL431:
	call printf_P
.LVL432:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1128 0
	std Y+16,__zero_reg__
	.loc 1 1130 0
	ldi r27,lo8(8)
	std Y+15,r27
.LVL433:
.L233:
	.loc 1 1133 0
	ldi r30,lo8(42)
	cpse r11,r30
	rjmp .L160
	rjmp .L261
.L182:
	.loc 1 1139 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L237
	.loc 1 1139 0 is_stmt 0 discriminator 1
	call LCD_Clear
.LVL434:
	ldi r24,lo8(1)
	sts fl,r24
.L237:
	.loc 1 1142 0 is_stmt 1
	ldi r24,lo8(2)
	call LCD_setTextSize
.LVL435:
	.loc 1 1144 0
	call LcdFirstLine
.LVL436:
	.loc 1 1146 0
	lds r24,tAsync
	push __zero_reg__
	push r24
	movw r26,r2
	ld r24,X
	push __zero_reg__
	push r24
	movw r30,r4
	ld r24,Z
	push __zero_reg__
	push r24
	ldi r24,lo8(__c.3022)
	ldi r25,hi8(__c.3022)
	push r25
	push r24
	call printf_P
.LVL437:
	.loc 1 1147 0
	ldi r24,lo8(1)
	call LCD_setTextSize
.LVL438:
	.loc 1 1151 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L160
.L180:
	.loc 1 1153 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L238
	.loc 1 1154 0
	call LCD_Clear
.LVL439:
	.loc 1 1157 0
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L239
.LVL440:
.L238:
	.loc 1 1160 0
	ldd r19,Y+15
	cpi r19,lo8(2)
	brne .+2
	rjmp .L240
	brsh .L241
	tst r19
	breq .L239
	cpi r19,lo8(1)
	breq .L242
	rjmp .L160
.L241:
	ldd r20,Y+15
	cpi r20,lo8(3)
	brne .+2
	rjmp .L243
	cpi r20,lo8(4)
	brne .+2
	rjmp .L244
	rjmp .L160
.LVL441:
.L239:
	.loc 1 1162 0
	ldi r26,lo8(hourStr)
	ldi r27,hi8(hourStr)
	push r27
	push r26
	ldi r26,lo8(__c.3026)
	ldi r27,hi8(__c.3026)
	push r27
	push r26
	call printf_P
.LVL442:
	.loc 1 1166 0
	sts TempAct+1,r5
	sts TempAct,r4
.LVL443:
	.loc 1 1169 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1167 0
	ldi r31,lo8(1)
	std Y+17,r31
	.loc 1 1164 0
	std Y+16,__zero_reg__
	.loc 1 1168 0
	ldi r18,lo8(3)
	std Y+15,r18
	.loc 1 1165 0
	ldi r19,lo8(23)
	std Y+20,r19
	.loc 1 1163 0
	ldi r20,lo8(1)
	std Y+14,r20
	.loc 1 1169 0
	rjmp .L160
.LVL444:
.L242:
	.loc 1 1171 0
	ldi r24,lo8(minuteStr)
	ldi r25,hi8(minuteStr)
	push r25
	push r24
	ldi r24,lo8(__c.3030)
	ldi r25,hi8(__c.3030)
	push r25
	push r24
	call printf_P
.LVL445:
	.loc 1 1175 0
	sts TempAct+1,r3
	sts TempAct,r2
.LVL446:
	.loc 1 1178 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1176 0
	ldi r22,lo8(2)
	std Y+17,r22
	.loc 1 1173 0
	std Y+16,__zero_reg__
	.loc 1 1177 0
	ldi r23,lo8(3)
	std Y+15,r23
	.loc 1 1174 0
	ldi r24,lo8(60)
	std Y+20,r24
	.loc 1 1172 0
	ldi r25,lo8(1)
	std Y+14,r25
	.loc 1 1178 0
	rjmp .L160
.LVL447:
.L240:
	.loc 1 1180 0
	ldi r26,lo8(secondStr)
	ldi r27,hi8(secondStr)
	push r27
	push r26
	ldi r26,lo8(__c.3033)
	ldi r27,hi8(__c.3033)
	push r27
	push r26
	call printf_P
.LVL448:
	.loc 1 1184 0
	ldi r24,lo8(tAsync)
	ldi r25,hi8(tAsync)
	sts TempAct+1,r25
	sts TempAct,r24
.LVL449:
	.loc 1 1187 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1185 0
	ldi r31,lo8(4)
	std Y+17,r31
	.loc 1 1182 0
	std Y+16,__zero_reg__
	.loc 1 1186 0
	ldi r18,lo8(3)
	std Y+15,r18
	.loc 1 1183 0
	ldi r19,lo8(60)
	std Y+20,r19
	.loc 1 1181 0
	ldi r20,lo8(1)
	std Y+14,r20
	.loc 1 1187 0
	rjmp .L160
.LVL450:
.L243:
	.loc 1 1190 0
	ldi r24,lo8(-48)
	add r24,r11
	cpi r24,lo8(10)
	brlo .+2
	rjmp .L245
	.loc 1 1192 0
	ldd r22,Y+14
	ldd r23,Y+16
	cp r23,r22
	brsh .L246
	.loc 1 1193 0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r23
	adc r31,__zero_reg__
	st Z,r11
	.loc 1 1194 0
	mov r24,r11
	ldi r25,0
	call putchar
.LVL451:
	.loc 1 1195 0
	ldd r25,Y+16
	subi r25,lo8(-(1))
	std Y+16,r25
.LVL452:
	rjmp .L245
.LVL453:
.L246:
	.loc 1 1197 0
	ldd r26,Y+16
	mov r24,r26
	ldi r25,0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,r11
	.loc 1 1198 0
	ldi r30,lo8(2)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	.loc 1 1199 0
	mov r24,r11
	ldi r25,0
	call putchar
.LVL454:
	.loc 1 1200 0
	movw r24,r28
	adiw r24,1
	call atoi
.LVL455:
	.loc 1 1202 0
	tst r25
	brlt .L247
	.loc 1 1202 0 is_stmt 0 discriminator 1
	ldd r27,Y+20
	mov r18,r27
	ldi r19,0
	cp r18,r24
	cpc r19,r25
	brlt .L247
	.loc 1 1203 0 is_stmt 1
	lds r30,TempAct
	lds r31,TempAct+1
	st Z,r24
.LVL456:
	.loc 1 1204 0
	ldd r30,Y+17
	std Y+15,r30
	.loc 1 1201 0
	std Y+16,__zero_reg__
	.loc 1 1204 0
	rjmp .L245
.LVL457:
.L247:
	.loc 1 1206 0
	ldi r24,lo8(2)
.LVL458:
	call ReturnXPos
.LVL459:
	.loc 1 1207 0
	ldi r24,lo8(__c.3036)
	ldi r25,hi8(__c.3036)
	push r25
	push r24
	call printf_P
.LVL460:
	.loc 1 1208 0
	ldi r24,lo8(2)
	call ReturnXPos
.LVL461:
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1201 0
	std Y+16,__zero_reg__
.LVL462:
.L245:
	.loc 1 1212 0
	ldi r31,lo8(42)
	cpse r11,r31
	rjmp .L160
	rjmp .L262
.LVL463:
.L244:
	.loc 1 1215 0
	ldi r18,lo8(42)
	cpse r11,r18
	rjmp .L160
	.loc 1 1215 0 is_stmt 0 discriminator 1
	ldi r24,lo8(6)
	sts MenuPhase,r24
	sts fl,__zero_reg__
	rjmp .L160
.LVL464:
.L191:
	.loc 1 1221 0 is_stmt 1
	call LCD_Clear
.LVL465:
	.loc 1 1222 0
	lds r24,MainLoopPhase
	sts LastPhase,r24
	.loc 1 1223 0
	sts MainLoopPhase,__zero_reg__
	.loc 1 1224 0
	sts MenuPhase,__zero_reg__
	.loc 1 1225 0
	jmp .L154
.L258:
	.loc 1 882 0
	ldd r19,Y+17
	std Y+15,r19
.LVL466:
	rjmp .L160
.LVL467:
.L259:
	.loc 1 887 0
	ldd r20,Y+17
	std Y+15,r20
	rjmp .L160
.LVL468:
.L260:
	.loc 1 1111 0
	ldd r22,Y+17
	std Y+15,r22
	rjmp .L160
.LVL469:
.L261:
	.loc 1 1133 0
	ldd r23,Y+17
	std Y+15,r23
.LVL470:
	rjmp .L160
.LVL471:
.L262:
	ldd r24,Y+17
	std Y+15,r24
.LVL472:
.L160:
	.loc 1 1233 0
	call LCD_Update
.LVL473:
	.loc 1 1235 0
	lds r24,MainLoopPhase
	cpi r24,lo8(3)
	brne .+4
	jmp .L154
	.loc 1 1236 0
	call DoWatchDog
.LVL474:
	movw r12,r16
.LVL475:
.L250:
	mov r24,r12
	sub r24,r16
.LVL476:
	.loc 1 1239 0
	movw r26,r12
	ld r25,X+
	movw r12,r26
	cpse r25,__zero_reg__
	.loc 1 1240 0
	call sms_noready_sens
.LVL477:
.L248:
	.loc 1 1238 0
	cp r12,r14
	cpc r13,r15
	brne .L250
	.loc 1 1243 0
	lds r24,MainLoopPhase
	cpi r24,lo8(1)
	brne .L251
	.loc 1 1244 0
	lds r24,TimeKeyPressed
	cpi r24,lo8(3)
	brlo .L251
	.loc 1 1245 0
	ldi r24,lo8(1)
	sts LastPhase,r24
	.loc 1 1246 0
	sts MainLoopPhase,__zero_reg__
	.loc 1 1247 0
	sts fl,__zero_reg__
	.loc 1 1248 0
/* #APP */
 ;  1248 "../main.c" 1
	cli
 ;  0 "" 2
	.loc 1 1249 0
/* #NOAPP */
	sts TimeKeyPressed,__zero_reg__
	.loc 1 1250 0
/* #APP */
 ;  1250 "../main.c" 1
	sei
 ;  0 "" 2
	.loc 1 1251 0
/* #NOAPP */
	call LCD_Clear
.LVL478:
.L251:
	.loc 1 1254 0
	lds r24,extstate
	tst r24
	breq .L252
	.loc 1 1255 0
	lds r24,MainLoopPhase
	sts LastPhase,r24
	.loc 1 1256 0
	ldi r24,lo8(1)
	sts MainLoopPhase,r24
	.loc 1 1257 0
	sts fl,__zero_reg__
	.loc 1 1258 0
/* #APP */
 ;  1258 "../main.c" 1
	cli
 ;  0 "" 2
	.loc 1 1259 0
/* #NOAPP */
	sts TimeKeyPressed,__zero_reg__
	.loc 1 1260 0
	sts extstate,__zero_reg__
	.loc 1 1261 0
/* #APP */
 ;  1261 "../main.c" 1
	sei
 ;  0 "" 2
	.loc 1 1262 0
/* #NOAPP */
	call LCD_Clear
.LVL479:
.L252:
	.loc 1 1265 0
	movw r30,r2
	ld r18,Z
	ldi r19,0
	mov r24,r6
	clr r25
	sbrc r24,7
	com r25
	cp r18,r24
	cpc r19,r25
	breq .L253
	.loc 1 1266 0
	call manageTemperatureEvent
.LVL480:
	.loc 1 1267 0
	movw r26,r2
	ld r6,X
.LVL481:
	.loc 1 1268 0
	ldi r24,lo8(1)
	sts mausure_temperature_ok,r24
.L253:
	.loc 1 1278 0
	lds r24,CheckNoReadySNCounter
	cpi r24,lo8(16)
	brlo .L254
	.loc 1 1279 0
	call TestNoReadySensors
.LVL482:
	.loc 1 1280 0
/* #APP */
 ;  1280 "../main.c" 1
	cli
 ;  0 "" 2
	.loc 1 1281 0
/* #NOAPP */
	sts CheckNoReadySNCounter,__zero_reg__
	.loc 1 1282 0
/* #APP */
 ;  1282 "../main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L254:
	.loc 1 1285 0
	movw r30,r4
	ld r18,Z
	ldi r19,0
	mov r24,r7
	clr r25
	sbrc r24,7
	com r25
	cp r18,r24
	cpc r19,r25
	brne .+4
	jmp .L263
	.loc 1 1286 0
	call ManageOutdoorTempEvent
.LVL483:
	.loc 1 1287 0
	movw r26,r4
	ld r7,X
.LVL484:
	.loc 1 1238 0
	ldi r27,lo8(4)
	std Y+14,r27
	jmp .L154
.LVL485:
.L155:
	.loc 1 605 0
	lds r25,wait_powergone
	.loc 1 606 0
	lds r24,powergone
	cpse r24,__zero_reg__
	jmp .L255
	jmp .L156
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.progmem.data,"a",@progbits
	.type	__c.3188, @object
	.size	__c.3188, 19
__c.3188:
	.string	" at %02d:%02d:%02d"
	.type	__c.3171, @object
	.size	__c.3171, 19
__c.3171:
	.string	" at %02d:%02d:%02d"
	.type	__c.3169, @object
	.size	__c.3169, 5
__c.3169:
	.string	"%d: "
	.type	__c.3144, @object
	.size	__c.3144, 7
__c.3144:
	.string	"\n%i-%S"
	.type	__c.3142, @object
	.size	__c.3142, 7
__c.3142:
	.string	"\n%i-%S"
	.type	__c.3140, @object
	.size	__c.3140, 7
__c.3140:
	.string	"\n%i-%S"
	.type	__c.3138, @object
	.size	__c.3138, 7
__c.3138:
	.string	"\n%i-%S"
	.type	__c.3136, @object
	.size	__c.3136, 7
__c.3136:
	.string	"\n%S %S"
	.type	__c.3094, @object
	.size	__c.3094, 9
__c.3094:
	.string	"\n %S: %i"
	.type	__c.3092, @object
	.size	__c.3092, 9
__c.3092:
	.string	"\n %S: %i"
	.type	__c.3090, @object
	.size	__c.3090, 9
__c.3090:
	.string	"\n %S: %i"
	.type	__c.3088, @object
	.size	__c.3088, 9
__c.3088:
	.string	"\n %S: %i"
	.type	__c.3086, @object
	.size	__c.3086, 18
__c.3086:
	.string	"  %02d:%02d:%02d\n"
	.type	__c.3076, @object
	.size	__c.3076, 3
__c.3076:
	.string	"%S"
	.type	__c.3036, @object
	.size	__c.3036, 3
__c.3036:
	.string	"  "
	.type	__c.3033, @object
	.size	__c.3033, 5
__c.3033:
	.string	"\n%S:"
	.type	__c.3030, @object
	.size	__c.3030, 5
__c.3030:
	.string	"\n%S:"
	.type	__c.3026, @object
	.size	__c.3026, 5
__c.3026:
	.string	"\n%S:"
	.type	__c.3022, @object
	.size	__c.3022, 16
__c.3022:
	.string	"\n%02d:%02d:%02d"
	.type	__c.3019, @object
	.size	__c.3019, 13
__c.3019:
	.string	"\nValue is:%i"
	.type	__c.3015, @object
	.size	__c.3015, 9
__c.3015:
	.string	"\n%SD %S!"
	.type	__c.3012, @object
	.size	__c.3012, 8
__c.3012:
	.string	"%S %S?\n"
	.type	__c.3009, @object
	.size	__c.3009, 5
__c.3009:
	.string	" %S:"
	.type	__c.3007, @object
	.size	__c.3007, 7
__c.3007:
	.string	" %S%S\n"
	.type	__c.3005, @object
	.size	__c.3005, 7
__c.3005:
	.string	"%S %S\n"
	.type	__c.3002, @object
	.size	__c.3002, 5
__c.3002:
	.string	" %S:"
	.type	__c.3000, @object
	.size	__c.3000, 7
__c.3000:
	.string	" %S%S\n"
	.type	__c.2998, @object
	.size	__c.2998, 7
__c.2998:
	.string	"%S %S\n"
	.type	__c.2995, @object
	.size	__c.2995, 5
__c.2995:
	.string	" %S:"
	.type	__c.2993, @object
	.size	__c.2993, 7
__c.2993:
	.string	" %S%S\n"
	.type	__c.2991, @object
	.size	__c.2991, 7
__c.2991:
	.string	"%S %S\n"
	.type	__c.2988, @object
	.size	__c.2988, 5
__c.2988:
	.string	" %S:"
	.type	__c.2986, @object
	.size	__c.2986, 7
__c.2986:
	.string	" %S%S\n"
	.type	__c.2984, @object
	.size	__c.2984, 7
__c.2984:
	.string	"%S %S\n"
	.type	__c.2981, @object
	.size	__c.2981, 5
__c.2981:
	.string	" %S:"
	.type	__c.2979, @object
	.size	__c.2979, 7
__c.2979:
	.string	" %S%S\n"
	.type	__c.2977, @object
	.size	__c.2977, 7
__c.2977:
	.string	"%S %S\n"
	.type	__c.2974, @object
	.size	__c.2974, 5
__c.2974:
	.string	" %S:"
	.type	__c.2972, @object
	.size	__c.2972, 7
__c.2972:
	.string	" %S%S\n"
	.type	__c.2970, @object
	.size	__c.2970, 7
__c.2970:
	.string	"%S %S\n"
	.type	__c.2967, @object
	.size	__c.2967, 5
__c.2967:
	.string	" %S:"
	.type	__c.2965, @object
	.size	__c.2965, 7
__c.2965:
	.string	" %S%S\n"
	.type	__c.2963, @object
	.size	__c.2963, 7
__c.2963:
	.string	"%S %S\n"
	.type	__c.2959, @object
	.size	__c.2959, 5
__c.2959:
	.string	" %S:"
	.type	__c.2957, @object
	.size	__c.2957, 7
__c.2957:
	.string	" %S%S\n"
	.type	__c.2955, @object
	.size	__c.2955, 7
__c.2955:
	.string	"%S %S\n"
	.type	__c.2951, @object
	.size	__c.2951, 9
__c.2951:
	.string	"\n%S%S:%i"
	.type	__c.2949, @object
	.size	__c.2949, 9
__c.2949:
	.string	"\n%S%S:%i"
	.type	__c.2947, @object
	.size	__c.2947, 9
__c.2947:
	.string	"\n%S%S:%i"
	.type	__c.2945, @object
	.size	__c.2945, 9
__c.2945:
	.string	"\n%S%S:%i"
	.type	__c.2943, @object
	.size	__c.2943, 9
__c.2943:
	.string	"\n%S%S:%i"
	.type	__c.2941, @object
	.size	__c.2941, 9
__c.2941:
	.string	"\n%S%S:%i"
	.type	__c.2939, @object
	.size	__c.2939, 9
__c.2939:
	.string	"\n%S%S:%i"
	.type	__c.2937, @object
	.size	__c.2937, 8
__c.2937:
	.string	"%S%S:%i"
	.type	__c.2934, @object
	.size	__c.2934, 7
__c.2934:
	.string	"\n   %S"
	.type	__c.2932, @object
	.size	__c.2932, 11
__c.2932:
	.string	"\n%S%i - %S"
	.type	__c.2930, @object
	.size	__c.2930, 11
__c.2930:
	.string	"\n%S%i - %S"
	.type	__c.2928, @object
	.size	__c.2928, 11
__c.2928:
	.string	"\n%S%i - %S"
	.type	__c.2926, @object
	.size	__c.2926, 10
__c.2926:
	.string	"%S%i - %S"
	.type	__c.2923, @object
	.size	__c.2923, 7
__c.2923:
	.string	"    %S"
	.type	__c.2918, @object
	.size	__c.2918, 3
__c.2918:
	.string	"%S"
	.type	__c.2914, @object
	.size	__c.2914, 4
__c.2914:
	.string	"   "
	.type	__c.2912, @object
	.size	__c.2912, 10
__c.2912:
	.string	"\n %S:%02X"
	.type	__c.2906, @object
	.size	__c.2906, 9
__c.2906:
	.string	" %S %S:\n"
	.type	__c.2904, @object
	.size	__c.2904, 7
__c.2904:
	.string	"%S %S\n"
	.type	__c.2901, @object
	.size	__c.2901, 9
__c.2901:
	.string	" %S %S:\n"
	.type	__c.2899, @object
	.size	__c.2899, 7
__c.2899:
	.string	"%S %S\n"
	.type	__c.2896, @object
	.size	__c.2896, 9
__c.2896:
	.string	" %S %S:\n"
	.type	__c.2894, @object
	.size	__c.2894, 7
__c.2894:
	.string	"%S %S\n"
	.type	__c.2890, @object
	.size	__c.2890, 9
__c.2890:
	.string	" %S %S:\n"
	.type	__c.2888, @object
	.size	__c.2888, 7
__c.2888:
	.string	"%S %S\n"
	.type	__c.2883, @object
	.size	__c.2883, 9
__c.2883:
	.string	"\n%SD %S!"
	.type	__c.2880, @object
	.size	__c.2880, 4
__c.2880:
	.string	"\n%s"
	.type	__c.2878, @object
	.size	__c.2878, 7
__c.2878:
	.string	"\n%S%S?"
	.type	__c.2874, @object
	.size	__c.2874, 8
__c.2874:
	.string	"%S %S:\n"
	.type	__c.2870, @object
	.size	__c.2870, 9
__c.2870:
	.string	"\n%SD %S!"
	.type	__c.2868, @object
	.size	__c.2868, 9
__c.2868:
	.string	"\n%SD %S!"
	.type	__c.2865, @object
	.size	__c.2865, 9
__c.2865:
	.string	"%S %Ss?\n"
	.type	__c.2861, @object
	.size	__c.2861, 9
__c.2861:
	.string	"%i.%S %S"
	.type	__c.2859, @object
	.size	__c.2859, 10
__c.2859:
	.string	"%i.%S %S\n"
	.type	__c.2857, @object
	.size	__c.2857, 10
__c.2857:
	.string	"%i.%S %S\n"
	.type	__c.2855, @object
	.size	__c.2855, 7
__c.2855:
	.string	"%i.%S\n"
	.type	__c.2853, @object
	.size	__c.2853, 13
__c.2853:
	.string	"%i.%S %S-%S\n"
	.type	__c.2851, @object
	.size	__c.2851, 10
__c.2851:
	.string	"%i.%S %S\n"
	.type	__c.2849, @object
	.size	__c.2849, 11
__c.2849:
	.string	"%i.%S %Ss\n"
	.type	__c.2847, @object
	.size	__c.2847, 10
__c.2847:
	.string	"%i.%S %S\n"
	.type	__c.2827, @object
	.size	__c.2827, 7
__c.2827:
	.string	"\n   %S"
	.type	__c.2825, @object
	.size	__c.2825, 8
__c.2825:
	.string	"\n   %Ss"
	.type	__c.2823, @object
	.size	__c.2823, 8
__c.2823:
	.string	"\n    %S"
	.type	__c.2821, @object
	.size	__c.2821, 7
__c.2821:
	.string	"\n   %S"
	.type	__c.2819, @object
	.size	__c.2819, 12
__c.2819:
	.string	"\n   %S:%01i"
	.type	__c.2817, @object
	.size	__c.2817, 8
__c.2817:
	.string	"\n    %S"
	.type	__c.2809, @object
	.size	__c.2809, 3
__c.2809:
	.string	"%S"
	.type	__c.2807, @object
	.size	__c.2807, 3
__c.2807:
	.string	"%S"
	.type	__c.2785, @object
	.size	__c.2785, 2
__c.2785:
	.string	"C"
	.type	__c.2783, @object
	.size	__c.2783, 2
__c.2783:
	.string	" "
	.comm	PrefHeatting,1,1
	.comm	temp_for_hour,1,1
	.comm	telNumber,15,1
	.data
	.type	mausure_temperature_ok, @object
	.size	mausure_temperature_ok, 1
mausure_temperature_ok:
	.byte	1
	.local	fl
	.comm	fl,1,1
	.local	MenuPhase
	.comm	MenuPhase,1,1
	.local	LastPhase
	.comm	LastPhase,1,1
	.local	MainLoopPhase
	.comm	MainLoopPhase,1,1
	.section	.progmem.data,"a",@progbits
	.type	notReadyStr, @object
	.size	notReadyStr, 12
notReadyStr:
	.string	"02-NotReady"
	.type	startPowerGoneStr, @object
	.size	startPowerGoneStr, 15
startPowerGoneStr:
	.string	"01-Power Gone!"
	.type	startRegulatorStr, @object
	.size	startRegulatorStr, 22
startRegulatorStr:
	.string	"00-Regulator Started!"
	.type	errStr, @object
	.size	errStr, 4
errStr:
	.string	"Err"
	.type	clearStr, @object
	.size	clearStr, 6
clearStr:
	.string	"Clear"
	.type	telStr, @object
	.size	telStr, 6
telStr:
	.string	"PHONE"
	.type	EXT, @object
	.size	EXT, 5
EXT:
	.string	"-EXT"
	.type	PAR, @object
	.size	PAR, 5
PAR:
	.string	"-PAR"
	.type	DS1822, @object
	.size	DS1822, 8
DS1822:
	.string	"-DS1822"
	.type	DS18B20, @object
	.size	DS18B20, 9
DS18B20:
	.string	"-DS18B20"
	.type	DS18S20, @object
	.size	DS18S20, 9
DS18S20:
	.string	"-DS18S20"
	.type	Sensorsfound, @object
	.size	Sensorsfound, 14
Sensorsfound:
	.string	" Sensorsfound"
	.type	temperStr, @object
	.size	temperStr, 8
temperStr:
	.string	"T-EDGES"
	.type	missingStr, @object
	.size	missingStr, 8
missingStr:
	.string	"MISSING"
	.type	absenceStr, @object
	.size	absenceStr, 8
absenceStr:
	.string	"ABSENCE"
	.type	sensorStr, @object
	.size	sensorStr, 7
sensorStr:
	.string	"Sensor"
	.type	alarmStr, @object
	.size	alarmStr, 6
alarmStr:
	.string	"ALARM"
	.type	secondStr, @object
	.size	secondStr, 7
secondStr:
	.string	"SECOND"
	.type	hourStr, @object
	.size	hourStr, 5
hourStr:
	.string	"HOUR"
	.type	minuteStr, @object
	.size	minuteStr, 7
minuteStr:
	.string	"MINUTE"
	.type	timeStr, @object
	.size	timeStr, 5
timeStr:
	.string	"TIME"
	.type	saveStr, @object
	.size	saveStr, 5
saveStr:
	.string	"SAVE"
	.type	toeepromStr, @object
	.size	toeepromStr, 10
toeepromStr:
	.string	"TO EEPROM"
	.type	diffStr, @object
	.size	diffStr, 5
diffStr:
	.string	"DIFF"
	.type	tempStr, @object
	.size	tempStr, 5
tempStr:
	.string	"TEMP"
	.type	maxStr, @object
	.size	maxStr, 4
maxStr:
	.string	"MAX"
	.type	minStr, @object
	.size	minStr, 4
minStr:
	.string	"MIN"
	.type	assignStr, @object
	.size	assignStr, 8
assignStr:
	.string	"ASSIGNs"
	.type	viewStr, @object
	.size	viewStr, 5
viewStr:
	.string	"VIEW"
	.type	setStr, @object
	.size	setStr, 4
setStr:
	.string	"SET"
	.type	checksumStr, @object
	.size	checksumStr, 9
checksumStr:
	.string	"CHECKSUM"
	.type	nsupdownStr, @object
	.size	nsupdownStr, 15
nsupdownStr:
	.string	"Ns-UPSIDE-DOWN"
	.type	returnStr, @object
	.size	returnStr, 7
returnStr:
	.string	"RETURN"
	.type	supplyStr, @object
	.size	supplyStr, 7
supplyStr:
	.string	"SUPPLY"
	.type	outdoorStr, @object
	.size	outdoorStr, 8
outdoorStr:
	.string	"OUTDOOR"
	.type	indoorStr, @object
	.size	indoorStr, 7
indoorStr:
	.string	"INDOOR"
	.type	snStr, @object
	.size	snStr, 3
snStr:
	.string	"SN"
	.type	nextStr, @object
	.size	nextStr, 7
nextStr:
	.string	"*-NEXT"
	.type	exitStr, @object
	.size	exitStr, 7
exitStr:
	.string	"#-EXIT"
	.type	helloStr2, @object
	.size	helloStr2, 10
helloStr2:
	.string	"REGULATOR"
	.type	helloStr1, @object
	.size	helloStr1, 5
helloStr1:
	.string	"PUMP"
	.type	okStr, @object
	.size	okStr, 3
okStr:
	.string	"OK"
.global	etelNumber
	.section	.eeprom,"aw",@progbits
	.type	etelNumber, @object
	.size	etelNumber, 15
etelNumber:
	.string	"111111111111"
	.zero	2
.global	eSensorIDs
	.type	eSensorIDs, @object
	.size	eSensorIDs, 32
eSensorIDs:
	.byte	16
	.byte	68
	.byte	64
	.byte	48
	.byte	-59
	.byte	0
	.byte	0
	.byte	-107
	.byte	40
	.byte	34
	.byte	32
	.byte	48
	.byte	-59
	.byte	0
	.byte	0
	.byte	16
	.byte	40
	.byte	17
	.byte	16
	.byte	48
	.byte	-59
	.byte	0
	.byte	0
	.byte	32
	.byte	40
	.byte	51
	.byte	48
	.byte	48
	.byte	21
	.byte	0
	.byte	0
	.byte	25
.global	TempDiffSupplyReturnMax
	.type	TempDiffSupplyReturnMax, @object
	.size	TempDiffSupplyReturnMax, 1
TempDiffSupplyReturnMax:
	.byte	20
.global	TempDiffSupplyReturnMin
	.type	TempDiffSupplyReturnMin, @object
	.size	TempDiffSupplyReturnMin, 1
TempDiffSupplyReturnMin:
	.byte	10
.global	TempSupplyMax
	.type	TempSupplyMax, @object
	.size	TempSupplyMax, 1
TempSupplyMax:
	.byte	80
.global	TempSupplyMin
	.type	TempSupplyMin, @object
	.size	TempSupplyMin, 1
TempSupplyMin:
	.byte	50
.global	TempOutDoorMax
	.type	TempOutDoorMax, @object
	.size	TempOutDoorMax, 1
TempOutDoorMax:
	.byte	-35
.global	TempOutDoorMin
	.type	TempOutDoorMin, @object
	.size	TempOutDoorMin, 1
TempOutDoorMin:
	.byte	-5
.global	TempInDoorMax
	.type	TempInDoorMax, @object
	.size	TempInDoorMax, 1
TempInDoorMax:
	.byte	25
.global	TempInDoorMin
	.type	TempInDoorMin, @object
	.size	TempInDoorMin, 1
TempInDoorMin:
	.byte	18
	.local	TempAct
	.comm	TempAct,2,1
	.comm	rSensorIDs,2,1
	.local	gSensorIDs
	.comm	gSensorIDs,32,1
	.comm	wbuffer,31,1
	.data
	.type	lcd_str, @object
	.size	lcd_str, 14
lcd_str:
	.zero	3
	.byte	2
	.zero	4
	.word	gs(LcdWrite)
	.word	0
	.word	0
	.local	oldDisplaySens
	.comm	oldDisplaySens,1,1
	.local	kg
	.comm	kg,1,1
	.local	noready_sens
	.comm	noready_sens,4,1
	.local	btest_new_sensors
	.comm	btest_new_sensors,1,1
	.local	nwSen_Phase
	.comm	nwSen_Phase,1,1
	.local	sn_noready_counter
	.comm	sn_noready_counter,4,1
	.local	sn_presence
	.comm	sn_presence,4,1
	.comm	temper,4,1
	.comm	nSensors,1,1
	.comm	rTempDiffSupplyReturnMax,1,1
	.comm	rTempDiffSupplyReturnMin,1,1
	.comm	rTempSupplyMax,1,1
	.comm	rTempSupplyMin,1,1
	.comm	rTempOutDoorMax,1,1
	.comm	rTempOutDoorMin,1,1
	.comm	rTempInDoorMax,1,1
	.comm	rTempInDoorMin,1,1
.global	TLastWatchDog
	.section .bss
	.type	TLastWatchDog, @object
	.size	TLastWatchDog, 1
TLastWatchDog:
	.zero	1
.global	WATCHDOG_STATE
	.type	WATCHDOG_STATE, @object
	.size	WATCHDOG_STATE, 1
WATCHDOG_STATE:
	.zero	1
	.comm	ReadyWATCHDOG,1,1
.global	__fuse
	.section	.fuse,"aw",@progbits
	.type	__fuse, @object
	.size	__fuse, 3
__fuse:
	.byte	-30
	.byte	-39
	.byte	-1
	.text
.Letext0:
	.file 4 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h"
	.file 5 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/fuse.h"
	.file 6 "/avr8-gnu-toolchain-linux_x86/lib/gcc/avr/4.8.1/include/stddef.h"
	.file 7 "/avr8-gnu-toolchain-linux_x86/avr/include/stdio.h"
	.file 8 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/lcd/lcdconf.h"
	.file 9 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/timer/timer.h"
	.file 10 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/gsm-sms/sms.h"
	.file 11 "../main.h"
	.file 12 "/avr8-gnu-toolchain-linux_x86/avr/include/string.h"
	.file 13 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/ds18x20/ds18x20.h"
	.file 14 "/avr8-gnu-toolchain-linux_x86/avr/include/stdlib.h"
	.file 15 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/eeprom.h"
	.file 16 "/avr8-gnu-toolchain-linux_x86/avr/include/avr/pgmspace.h"
	.file 17 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/n1110/lcd8814.h"
	.file 18 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/onewire/onewire.h"
	.file 19 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/uart/uart.h"
	.file 20 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/extint/extint.h"
	.file 21 "<built-in>"
	.file 22 "/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/ds18x20/crc8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x27c4
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF263
	.byte	0x1
	.long	.LASF264
	.long	.LASF265
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x79
	.long	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x4
	.byte	0x7a
	.long	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x4
	.byte	0x7b
	.long	0x54
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF5
	.byte	0x4
	.byte	0x7c
	.long	0x66
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x7e
	.long	0x7f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.byte	0x3
	.byte	0x5
	.byte	0xef
	.long	0xc7
	.uleb128 0x6
	.string	"low"
	.byte	0x5
	.byte	0xf1
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF12
	.byte	0x5
	.byte	0xf2
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF13
	.byte	0x5
	.byte	0xf3
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x5
	.byte	0xf4
	.long	0x94
	.uleb128 0x2
	.long	.LASF15
	.byte	0x6
	.byte	0xd4
	.long	0x66
	.uleb128 0x8
	.long	.LASF29
	.byte	0xe
	.byte	0x7
	.byte	0xf2
	.long	0x15f
	.uleb128 0x6
	.string	"buf"
	.byte	0x7
	.byte	0xf3
	.long	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF16
	.byte	0x7
	.byte	0xf4
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF17
	.byte	0x7
	.byte	0xf5
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.long	.LASF18
	.byte	0x7
	.word	0x105
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"len"
	.byte	0x7
	.word	0x106
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"put"
	.byte	0x7
	.word	0x107
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"get"
	.byte	0x7
	.word	0x108
	.long	0x19d
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.long	.LASF19
	.byte	0x7
	.word	0x109
	.long	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x165
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF20
	.uleb128 0xc
	.byte	0x1
	.long	0x54
	.long	0x181
	.uleb128 0xd
	.long	0x165
	.uleb128 0xd
	.long	0x181
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0xdd
	.uleb128 0xb
	.byte	0x2
	.long	0x16c
	.uleb128 0xc
	.byte	0x1
	.long	0x54
	.long	0x19d
	.uleb128 0xd
	.long	0x181
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x18d
	.uleb128 0xe
	.byte	0x2
	.uleb128 0xb
	.byte	0x2
	.long	0x1ab
	.uleb128 0xf
	.uleb128 0x2
	.long	.LASF21
	.byte	0x8
	.byte	0x15
	.long	0x42
	.uleb128 0x5
	.byte	0x7
	.byte	0x9
	.byte	0xb
	.long	0x214
	.uleb128 0x7
	.long	.LASF22
	.byte	0x9
	.byte	0xc
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x9
	.byte	0xd
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF24
	.byte	0x9
	.byte	0xe
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF25
	.byte	0x9
	.byte	0xf
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.long	.LASF26
	.byte	0x9
	.byte	0x10
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.long	.LASF27
	.byte	0x9
	.byte	0x11
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x9
	.byte	0x12
	.long	0x1b7
	.uleb128 0x8
	.long	.LASF30
	.byte	0xce
	.byte	0xa
	.byte	0x29
	.long	0x267
	.uleb128 0x7
	.long	.LASF31
	.byte	0xa
	.byte	0x2a
	.long	0x267
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF32
	.byte	0xa
	.byte	0x2b
	.long	0x27e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x7
	.long	.LASF25
	.byte	0xa
	.byte	0x2c
	.long	0x28e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x7
	.long	.LASF33
	.byte	0xa
	.byte	0x2d
	.long	0x165
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd
	.byte	0
	.uleb128 0x10
	.long	0x165
	.long	0x277
	.uleb128 0x11
	.long	0x277
	.byte	0x9f
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF34
	.uleb128 0x10
	.long	0x165
	.long	0x28e
	.uleb128 0x11
	.long	0x277
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.long	0x165
	.long	0x29e
	.uleb128 0x11
	.long	0x277
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.string	"SMS"
	.byte	0xa
	.byte	0x2e
	.long	0x21f
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x42
	.long	0x2ca
	.uleb128 0x14
	.long	.LASF35
	.sleb128 0
	.uleb128 0x14
	.long	.LASF36
	.sleb128 1
	.uleb128 0x14
	.long	.LASF37
	.sleb128 2
	.uleb128 0x14
	.long	.LASF38
	.sleb128 3
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x44
	.long	0x31b
	.uleb128 0x14
	.long	.LASF39
	.sleb128 0
	.uleb128 0x14
	.long	.LASF40
	.sleb128 1
	.uleb128 0x14
	.long	.LASF41
	.sleb128 2
	.uleb128 0x14
	.long	.LASF42
	.sleb128 3
	.uleb128 0x14
	.long	.LASF43
	.sleb128 4
	.uleb128 0x14
	.long	.LASF44
	.sleb128 5
	.uleb128 0x14
	.long	.LASF45
	.sleb128 6
	.uleb128 0x14
	.long	.LASF46
	.sleb128 7
	.uleb128 0x14
	.long	.LASF47
	.sleb128 8
	.uleb128 0x14
	.long	.LASF48
	.sleb128 9
	.uleb128 0x14
	.long	.LASF49
	.sleb128 10
	.uleb128 0x14
	.long	.LASF50
	.sleb128 11
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x46
	.long	0x348
	.uleb128 0x14
	.long	.LASF51
	.sleb128 0
	.uleb128 0x14
	.long	.LASF52
	.sleb128 1
	.uleb128 0x14
	.long	.LASF53
	.sleb128 2
	.uleb128 0x14
	.long	.LASF54
	.sleb128 3
	.uleb128 0x14
	.long	.LASF55
	.sleb128 4
	.uleb128 0x14
	.long	.LASF56
	.sleb128 5
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x48
	.long	0x399
	.uleb128 0x14
	.long	.LASF57
	.sleb128 0
	.uleb128 0x14
	.long	.LASF58
	.sleb128 1
	.uleb128 0x14
	.long	.LASF59
	.sleb128 2
	.uleb128 0x14
	.long	.LASF60
	.sleb128 3
	.uleb128 0x14
	.long	.LASF61
	.sleb128 4
	.uleb128 0x14
	.long	.LASF62
	.sleb128 5
	.uleb128 0x14
	.long	.LASF63
	.sleb128 6
	.uleb128 0x14
	.long	.LASF64
	.sleb128 7
	.uleb128 0x14
	.long	.LASF65
	.sleb128 8
	.uleb128 0x14
	.long	.LASF66
	.sleb128 9
	.uleb128 0x14
	.long	.LASF67
	.sleb128 10
	.uleb128 0x14
	.long	.LASF68
	.sleb128 11
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x4b
	.long	0x3c0
	.uleb128 0x14
	.long	.LASF69
	.sleb128 0
	.uleb128 0x14
	.long	.LASF70
	.sleb128 1
	.uleb128 0x14
	.long	.LASF71
	.sleb128 2
	.uleb128 0x14
	.long	.LASF72
	.sleb128 3
	.uleb128 0x14
	.long	.LASF73
	.sleb128 4
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x4c
	.long	0x3f3
	.uleb128 0x14
	.long	.LASF74
	.sleb128 0
	.uleb128 0x14
	.long	.LASF75
	.sleb128 1
	.uleb128 0x14
	.long	.LASF76
	.sleb128 2
	.uleb128 0x14
	.long	.LASF77
	.sleb128 3
	.uleb128 0x14
	.long	.LASF78
	.sleb128 4
	.uleb128 0x14
	.long	.LASF79
	.sleb128 5
	.uleb128 0x14
	.long	.LASF80
	.sleb128 6
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x4d
	.long	0x414
	.uleb128 0x14
	.long	.LASF81
	.sleb128 0
	.uleb128 0x14
	.long	.LASF82
	.sleb128 1
	.uleb128 0x14
	.long	.LASF83
	.sleb128 2
	.uleb128 0x14
	.long	.LASF84
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.long	.LASF85
	.byte	0x2
	.byte	0x51
	.byte	0x1
	.byte	0x3
	.long	0x42d
	.uleb128 0x16
	.long	.LASF87
	.byte	0x2
	.byte	0x51
	.long	0x37
	.byte	0
	.uleb128 0x15
	.long	.LASF86
	.byte	0x3
	.byte	0x8e
	.byte	0x1
	.byte	0x3
	.long	0x466
	.uleb128 0x16
	.long	.LASF88
	.byte	0x3
	.byte	0x8e
	.long	0x466
	.uleb128 0x17
	.long	.LASF89
	.byte	0x3
	.byte	0x90
	.long	0x466
	.uleb128 0x17
	.long	.LASF90
	.byte	0x3
	.byte	0x94
	.long	0x74
	.uleb128 0x18
	.byte	0x1
	.long	.LASF242
	.byte	0x3
	.byte	0x95
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF91
	.uleb128 0x19
	.long	.LASF266
	.byte	0x1
	.byte	0x9f
	.long	0x37
	.long	.LFB12
	.long	.LFE12
	.long	.LLST0
	.byte	0x1
	.long	0x4e4
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.byte	0xa2
	.long	0x37
	.long	.LLST1
	.uleb128 0x1a
	.long	.LASF93
	.byte	0x1
	.byte	0xa3
	.long	0x37
	.long	.LLST2
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.byte	0xaf
	.long	0x37
	.long	.LLST3
	.uleb128 0x1c
	.long	0x414
	.long	.LBB112
	.long	.LBE112
	.byte	0x1
	.byte	0xaa
	.long	0x4d1
	.uleb128 0x1d
	.long	0x421
	.long	.LLST4
	.byte	0
	.uleb128 0x1e
	.long	.LVL3
	.long	0x23ea
	.uleb128 0x1e
	.long	.LVL10
	.long	0x23fd
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.word	0x105
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST5
	.byte	0x1
	.long	0x594
	.uleb128 0x20
	.long	.LASF103
	.byte	0x1
	.word	0x105
	.long	0x49
	.long	.LLST6
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.word	0x107
	.long	0x594
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x22
	.long	.LVL17
	.long	0x2410
	.long	0x546
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x22
	.long	.LVL18
	.long	0x2432
	.long	0x562
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	__c.2783
	.byte	0
	.uleb128 0x22
	.long	.LVL19
	.long	0x2451
	.long	0x57b
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x24
	.long	.LVL20
	.long	0x2432
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	__c.2785
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x165
	.long	0x5a4
	.uleb128 0x11
	.long	0x277
	.byte	0x9
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.word	0x543
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.word	0x54d
	.byte	0x1
	.long	0x25
	.long	.LFB16
	.long	.LFE16
	.long	.LLST7
	.byte	0x1
	.long	0x646
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.word	0x54e
	.long	0x25
	.long	.LLST8
	.uleb128 0x27
	.string	"k"
	.byte	0x1
	.word	0x54e
	.long	0x25
	.long	.LLST9
	.uleb128 0x28
	.long	.LASF94
	.byte	0x1
	.word	0x54f
	.long	0x25
	.long	.LLST10
	.uleb128 0x24
	.long	.LVL24
	.long	0x2465
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0xe
	.byte	0x80
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	gSensorIDs
	.byte	0x22
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0xb
	.byte	0x81
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x33
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF96
	.byte	0x1
	.word	0x56f
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x670
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.word	0x570
	.long	0x37
	.long	.LLST11
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.word	0x578
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST12
	.byte	0x1
	.long	0x6fb
	.uleb128 0x2a
	.long	0x42d
	.long	.LBB114
	.long	.LBE114
	.byte	0x1
	.word	0x57d
	.long	0x6c7
	.uleb128 0x2b
	.long	0x43a
	.byte	0x4
	.long	0x459c4000
	.uleb128 0x2c
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x2d
	.long	0x445
	.byte	0x4
	.long	0x4c189680
	.uleb128 0x2e
	.long	0x450
	.long	0x2625a00
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL32
	.long	0x2487
	.uleb128 0x22
	.long	.LVL33
	.long	0x2496
	.long	0x6e8
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LVL34
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL35
	.long	0x24c9
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF98
	.byte	0x1
	.word	0x580
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST13
	.byte	0x1
	.long	0x757
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.word	0x581
	.long	0x37
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.word	0x581
	.long	0x37
	.byte	0x1
	.byte	0x6c
	.uleb128 0x31
	.long	0x42d
	.long	.LBB116
	.long	.LBE116
	.byte	0x1
	.word	0x59d
	.uleb128 0x32
	.long	0x43a
	.uleb128 0x2c
	.long	.LBB117
	.long	.LBE117
	.uleb128 0x33
	.long	0x445
	.uleb128 0x33
	.long	0x450
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.word	0x663
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.word	0x5a1
	.byte	0x1
	.long	0x49
	.long	.LFB21
	.long	.LFE21
	.long	.LLST14
	.byte	0x1
	.long	0x880
	.uleb128 0x20
	.long	.LASF104
	.byte	0x1
	.word	0x5a1
	.long	0x880
	.long	.LLST15
	.uleb128 0x34
	.long	.LASF105
	.byte	0x1
	.word	0x5a3
	.long	0x49
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.word	0x5a4
	.long	0x594
	.byte	0x2
	.byte	0x8c
	.sleb128 3
	.uleb128 0x27
	.string	"k"
	.byte	0x1
	.word	0x5a4
	.long	0x165
	.long	.LLST16
	.uleb128 0x2a
	.long	0x42d
	.long	.LBB118
	.long	.LBE118
	.byte	0x1
	.word	0x5a9
	.long	0x801
	.uleb128 0x1d
	.long	0x43a
	.long	.LLST17
	.uleb128 0x2c
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x35
	.long	0x445
	.long	.LLST18
	.uleb128 0x35
	.long	0x450
	.long	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL39
	.long	0x24d8
	.long	0x81f
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.long	.LVL41
	.long	0x757
	.uleb128 0x22
	.long	.LVL42
	.long	0x24f5
	.long	0x84c
	.uleb128 0x23
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
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x22
	.long	.LVL43
	.long	0x2410
	.long	0x86a
	.uleb128 0x23
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
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x24
	.long	.LVL44
	.long	0x2518
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x37
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.word	0x5b4
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST20
	.byte	0x1
	.long	0x8ec
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.word	0x5b5
	.long	0x37
	.long	.LLST21
	.uleb128 0x28
	.long	.LASF107
	.byte	0x1
	.word	0x5b6
	.long	0x37
	.long	.LLST22
	.uleb128 0x27
	.string	"sh"
	.byte	0x1
	.word	0x5b7
	.long	0x37
	.long	.LLST23
	.uleb128 0x24
	.long	.LVL50
	.long	0x76e
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0xa
	.byte	0x8c
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	gSensorIDs
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.long	.LASF108
	.byte	0x1
	.word	0x66e
	.byte	0x1
	.long	0x165
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x92a
	.uleb128 0x20
	.long	.LASF104
	.byte	0x1
	.word	0x66e
	.long	0x880
	.long	.LLST24
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.word	0x66f
	.long	0x37
	.long	.LLST25
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.word	0x55d
	.byte	0x1
	.long	0x165
	.long	.LFB17
	.long	.LFE17
	.long	.LLST26
	.byte	0x1
	.long	0x9de
	.uleb128 0x28
	.long	.LASF94
	.byte	0x1
	.word	0x55e
	.long	0x165
	.long	.LLST27
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.word	0x55f
	.long	0x37
	.long	.LLST28
	.uleb128 0x27
	.string	"k"
	.byte	0x1
	.word	0x55f
	.long	0x37
	.long	.LLST29
	.uleb128 0x2a
	.long	0x42d
	.long	.LBB120
	.long	.LBE120
	.byte	0x1
	.word	0x568
	.long	0x9af
	.uleb128 0x1d
	.long	0x43a
	.long	.LLST30
	.uleb128 0x2c
	.long	.LBB121
	.long	.LBE121
	.uleb128 0x35
	.long	0x445
	.long	.LLST31
	.uleb128 0x35
	.long	0x450
	.long	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL89
	.long	0x8ec
	.long	0x9c8
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LVL90
	.long	0x76e
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF110
	.byte	0x1
	.word	0x604
	.byte	0x1
	.long	0x37
	.long	.LFB23
	.long	.LFE23
	.long	.LLST33
	.byte	0x1
	.long	0xb59
	.uleb128 0x37
	.string	"ch"
	.byte	0x1
	.word	0x604
	.long	0x165
	.long	.LLST34
	.uleb128 0x28
	.long	.LASF111
	.byte	0x1
	.word	0x605
	.long	0x37
	.long	.LLST35
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.word	0x605
	.long	0x37
	.long	.LLST36
	.uleb128 0x27
	.string	"val"
	.byte	0x1
	.word	0x605
	.long	0x37
	.long	.LLST37
	.uleb128 0x28
	.long	.LASF94
	.byte	0x1
	.word	0x606
	.long	0x25
	.long	.LLST38
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.word	0x606
	.long	0x25
	.long	.LLST39
	.uleb128 0x27
	.string	"fl4"
	.byte	0x1
	.word	0x606
	.long	0x25
	.long	.LLST40
	.uleb128 0x27
	.string	"fl3"
	.byte	0x1
	.word	0x606
	.long	0x25
	.long	.LLST41
	.uleb128 0x22
	.long	.LVL102
	.long	0x8ec
	.long	0xa91
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL104
	.long	0x2465
	.long	0xabf
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x22
	.long	.LVL106
	.long	0x2465
	.long	0xaed
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1e
	.long	.LVL117
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL118
	.long	0x2531
	.uleb128 0x1e
	.long	.LVL119
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL120
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL121
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL122
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL123
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL124
	.long	0x24c9
	.uleb128 0x24
	.long	.LVL129
	.long	0x254b
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	eSensorIDs
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF112
	.byte	0x1
	.word	0x68f
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xb93
	.uleb128 0x20
	.long	.LASF113
	.byte	0x1
	.word	0x68f
	.long	0x37
	.long	.LLST42
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.word	0x690
	.long	0x25
	.long	.LLST43
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF114
	.byte	0x1
	.word	0x677
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST44
	.byte	0x1
	.long	0xbdc
	.uleb128 0x38
	.long	.LASF113
	.byte	0x1
	.word	0x677
	.long	0x37
	.byte	0x1
	.byte	0x5b
	.uleb128 0x39
	.long	.LASF18
	.byte	0x1
	.word	0x678
	.long	0xd2
	.uleb128 0x34
	.long	.LASF115
	.byte	0x1
	.word	0x679
	.long	0xbdc
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x29e
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.word	0x695
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST45
	.byte	0x1
	.long	0xcda
	.uleb128 0x3a
	.long	.LASF18
	.byte	0x1
	.word	0x696
	.long	0xd2
	.byte	0xcf
	.uleb128 0x28
	.long	.LASF115
	.byte	0x1
	.word	0x697
	.long	0xbdc
	.long	.LLST46
	.uleb128 0x22
	.long	.LVL140
	.long	0x256a
	.long	0xc33
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0xcf
	.byte	0
	.uleb128 0x22
	.long	.LVL143
	.long	0x2583
	.long	0xc64
	.uleb128 0x23
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
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	telNumber
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x22
	.long	.LVL144
	.long	0x25a5
	.long	0xc96
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	startRegulatorStr
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.uleb128 0x22
	.long	.LVL145
	.long	0x25c8
	.long	0xcc4
	.uleb128 0x23
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
	.uleb128 0x23
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
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x24
	.long	.LVL146
	.long	0x25ea
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF117
	.byte	0x1
	.word	0x6a3
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST47
	.byte	0x1
	.long	0xd15
	.uleb128 0x39
	.long	.LASF18
	.byte	0x1
	.word	0x6a4
	.long	0xd2
	.uleb128 0x34
	.long	.LASF115
	.byte	0x1
	.word	0x6a5
	.long	0xbdc
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.long	.LASF267
	.byte	0x1
	.word	0x6b2
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF257
	.byte	0x1
	.word	0x6be
	.long	.LFB31
	.long	.LFE31
	.long	.LLST48
	.byte	0x1
	.long	0xe09
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.word	0x6bf
	.long	0x37
	.long	.LLST49
	.uleb128 0x2a
	.long	0x42d
	.long	.LBB122
	.long	.LBE122
	.byte	0x1
	.word	0x6cc
	.long	0xd8d
	.uleb128 0x1d
	.long	0x43a
	.long	.LLST50
	.uleb128 0x2c
	.long	.LBB123
	.long	.LBE123
	.uleb128 0x35
	.long	0x445
	.long	.LLST51
	.uleb128 0x35
	.long	0x450
	.long	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL148
	.long	0x256a
	.long	0xda6
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x22
	.long	.LVL149
	.long	0x25ff
	.long	0xdcd
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	eSensorIDs
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.long	.LVL151
	.long	0x8ec
	.long	0xde6
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL152
	.long	0x76e
	.long	0xdff
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.long	.LVL156
	.long	0x25ea
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.word	0x6d2
	.long	0x25
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xe71
	.uleb128 0x22
	.long	.LVL157
	.long	0x256a
	.long	0xe40
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x22
	.long	.LVL158
	.long	0x261e
	.long	0xe67
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	eSensorIDs
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1e
	.long	.LVL159
	.long	0x25ea
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF119
	.byte	0x1
	.word	0x110
	.byte	0x1
	.long	0x54
	.long	.LFB14
	.long	.LFE14
	.long	.LLST53
	.byte	0x1
	.long	0x1b81
	.uleb128 0x27
	.string	"ch"
	.byte	0x1
	.word	0x112
	.long	0x165
	.long	.LLST54
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.word	0x113
	.long	0x37
	.long	.LLST55
	.uleb128 0x27
	.string	"k"
	.byte	0x1
	.word	0x113
	.long	0x37
	.long	.LLST56
	.uleb128 0x27
	.string	"ks"
	.byte	0x1
	.word	0x113
	.long	0x37
	.long	.LLST57
	.uleb128 0x28
	.long	.LASF120
	.byte	0x1
	.word	0x113
	.long	0x37
	.long	.LLST58
	.uleb128 0x28
	.long	.LASF121
	.byte	0x1
	.word	0x113
	.long	0x37
	.long	.LLST59
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.word	0x113
	.long	0x37
	.long	.LLST60
	.uleb128 0x28
	.long	.LASF122
	.byte	0x1
	.word	0x114
	.long	0x25
	.long	.LLST61
	.uleb128 0x28
	.long	.LASF123
	.byte	0x1
	.word	0x115
	.long	0x25
	.long	.LLST62
	.uleb128 0x28
	.long	.LASF124
	.byte	0x1
	.word	0x116
	.long	0x37
	.long	.LLST63
	.uleb128 0x28
	.long	.LASF125
	.byte	0x1
	.word	0x116
	.long	0x37
	.long	.LLST64
	.uleb128 0x34
	.long	.LASF126
	.byte	0x1
	.word	0x117
	.long	0x1b81
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x27
	.string	"ki"
	.byte	0x1
	.word	0x118
	.long	0x54
	.long	.LLST65
	.uleb128 0x34
	.long	.LASF127
	.byte	0x1
	.word	0x119
	.long	0x1b91
	.byte	0x2
	.byte	0x8c
	.sleb128 6
	.uleb128 0x2a
	.long	0x42d
	.long	.LBB124
	.long	.LBE124
	.byte	0x1
	.word	0x1bc
	.long	0xf9f
	.uleb128 0x1d
	.long	0x43a
	.long	.LLST66
	.uleb128 0x2c
	.long	.LBB125
	.long	.LBE125
	.uleb128 0x35
	.long	0x445
	.long	.LLST67
	.uleb128 0x35
	.long	0x450
	.long	.LLST68
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x42d
	.long	.LBB126
	.long	.LBE126
	.byte	0x1
	.word	0x239
	.long	0xfdb
	.uleb128 0x2b
	.long	0x43a
	.byte	0x4
	.long	0x447a0000
	.uleb128 0x2c
	.long	.LBB127
	.long	.LBE127
	.uleb128 0x2d
	.long	0x445
	.byte	0x4
	.long	0x4af42400
	.uleb128 0x2e
	.long	0x450
	.long	0x7a1200
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x42d
	.long	.LBB128
	.long	.LBE128
	.byte	0x1
	.word	0x2eb
	.long	0x1015
	.uleb128 0x1d
	.long	0x43a
	.long	.LLST69
	.uleb128 0x2c
	.long	.LBB129
	.long	.LBE129
	.uleb128 0x35
	.long	0x445
	.long	.LLST70
	.uleb128 0x35
	.long	0x450
	.long	.LLST71
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x42d
	.long	.LBB130
	.long	.LBE130
	.byte	0x1
	.word	0x3a3
	.long	0x104f
	.uleb128 0x1d
	.long	0x43a
	.long	.LLST72
	.uleb128 0x2c
	.long	.LBB131
	.long	.LBE131
	.uleb128 0x35
	.long	0x445
	.long	.LLST73
	.uleb128 0x35
	.long	0x450
	.long	.LLST74
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x42d
	.long	.LBB132
	.long	.LBE132
	.byte	0x1
	.word	0x3cf
	.long	0x1089
	.uleb128 0x1d
	.long	0x43a
	.long	.LLST75
	.uleb128 0x2c
	.long	.LBB133
	.long	.LBE133
	.uleb128 0x35
	.long	0x445
	.long	.LLST76
	.uleb128 0x35
	.long	0x450
	.long	.LLST77
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x42d
	.long	.LBB134
	.long	.LBE134
	.byte	0x1
	.word	0x454
	.long	0x10c3
	.uleb128 0x1d
	.long	0x43a
	.long	.LLST78
	.uleb128 0x2c
	.long	.LBB135
	.long	.LBE135
	.uleb128 0x35
	.long	0x445
	.long	.LLST79
	.uleb128 0x35
	.long	0x450
	.long	.LLST80
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL160
	.long	0x263d
	.uleb128 0x1e
	.long	.LVL161
	.long	0x670
	.uleb128 0x1e
	.long	.LVL162
	.long	0x264c
	.uleb128 0x22
	.long	.LVL163
	.long	0x256a
	.long	0x10f7
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x22
	.long	.LVL164
	.long	0x25ff
	.long	0x111e
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	eSensorIDs
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.long	.LVL169
	.long	0x2656
	.long	0x113a
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempInDoorMin
	.byte	0
	.uleb128 0x22
	.long	.LVL170
	.long	0x2656
	.long	0x1156
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempInDoorMax
	.byte	0
	.uleb128 0x22
	.long	.LVL171
	.long	0x2656
	.long	0x1172
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempOutDoorMin
	.byte	0
	.uleb128 0x22
	.long	.LVL172
	.long	0x2656
	.long	0x118e
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempOutDoorMax
	.byte	0
	.uleb128 0x22
	.long	.LVL173
	.long	0x2656
	.long	0x11aa
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempSupplyMin
	.byte	0
	.uleb128 0x22
	.long	.LVL174
	.long	0x2656
	.long	0x11c6
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempSupplyMax
	.byte	0
	.uleb128 0x22
	.long	.LVL175
	.long	0x2656
	.long	0x11e2
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempDiffSupplyReturnMin
	.byte	0
	.uleb128 0x22
	.long	.LVL176
	.long	0x2656
	.long	0x11fe
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempDiffSupplyReturnMax
	.byte	0
	.uleb128 0x22
	.long	.LVL177
	.long	0x25ff
	.long	0x1232
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	telNumber
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	etelNumber
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x1e
	.long	.LVL179
	.long	0x267a
	.uleb128 0x1e
	.long	.LVL180
	.long	0x2487
	.uleb128 0x22
	.long	.LVL181
	.long	0x2496
	.long	0x125c
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.long	.LVL182
	.long	0x24af
	.uleb128 0x22
	.long	.LVL183
	.long	0x2496
	.long	0x127d
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LVL184
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL185
	.long	0x24c9
	.uleb128 0x22
	.long	.LVL186
	.long	0x2684
	.long	0x12c3
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x29
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x2b
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x2a
	.uleb128 0x23
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1e
	.long	.LVL187
	.long	0x92a
	.uleb128 0x1e
	.long	.LVL189
	.long	0x264c
	.uleb128 0x1e
	.long	.LVL190
	.long	0x46d
	.uleb128 0x1e
	.long	.LVL192
	.long	0x46d
	.uleb128 0x1e
	.long	.LVL196
	.long	0x646
	.uleb128 0x22
	.long	.LVL198
	.long	0x26b2
	.long	0x1309
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.long	.LVL199
	.long	0x26c6
	.long	0x131c
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x1e
	.long	.LVL200
	.long	0x26da
	.uleb128 0x1e
	.long	.LVL201
	.long	0x26e4
	.uleb128 0x1e
	.long	.LVL202
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL203
	.long	0x26ee
	.uleb128 0x22
	.long	.LVL204
	.long	0x2432
	.long	0x135c
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Sensorsfound
	.byte	0
	.uleb128 0x1e
	.long	.LVL205
	.long	0x24c9
	.uleb128 0x1e
	.long	.LVL206
	.long	0x5bb
	.uleb128 0x1e
	.long	.LVL211
	.long	0x2702
	.uleb128 0x22
	.long	.LVL212
	.long	0x26ee
	.long	0x1390
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 1
	.byte	0
	.uleb128 0x22
	.long	.LVL213
	.long	0x2432
	.long	0x13ac
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	DS18S20
	.byte	0
	.uleb128 0x22
	.long	.LVL214
	.long	0x2432
	.long	0x13c8
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	DS1822
	.byte	0
	.uleb128 0x22
	.long	.LVL215
	.long	0x2432
	.long	0x13e4
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	DS18B20
	.byte	0
	.uleb128 0x22
	.long	.LVL216
	.long	0x270c
	.long	0x1405
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0xa
	.byte	0x80
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	gSensorIDs
	.byte	0x22
	.byte	0
	.uleb128 0x22
	.long	.LVL217
	.long	0x2432
	.long	0x1421
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	PAR
	.byte	0
	.uleb128 0x22
	.long	.LVL218
	.long	0x2432
	.long	0x143d
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	EXT
	.byte	0
	.uleb128 0x1e
	.long	.LVL220
	.long	0x24c9
	.uleb128 0x1e
	.long	.LVL222
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL223
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL224
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL225
	.long	0x24c9
	.uleb128 0x1e
	.long	.LVL227
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL228
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL229
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL230
	.long	0x24c9
	.uleb128 0x1e
	.long	.LVL232
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL233
	.long	0x2724
	.uleb128 0x1e
	.long	.LVL234
	.long	0x272e
	.uleb128 0x1e
	.long	.LVL235
	.long	0x25ea
	.uleb128 0x1e
	.long	.LVL236
	.long	0x886
	.uleb128 0x1e
	.long	.LVL239
	.long	0x670
	.uleb128 0x1e
	.long	.LVL240
	.long	0xcda
	.uleb128 0x1e
	.long	.LVL241
	.long	0x264c
	.uleb128 0x1e
	.long	.LVL242
	.long	0x2738
	.uleb128 0x1e
	.long	.LVL244
	.long	0x2487
	.uleb128 0x22
	.long	.LVL245
	.long	0x9de
	.long	0x14fc
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.long	.LVL246
	.long	0x886
	.uleb128 0x1e
	.long	.LVL247
	.long	0x25ea
	.uleb128 0x1e
	.long	.LVL248
	.long	0x6fb
	.uleb128 0x1e
	.long	.LVL251
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL252
	.long	0x24c9
	.uleb128 0x1e
	.long	.LVL254
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL255
	.long	0x2746
	.uleb128 0x1e
	.long	.LVL256
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL257
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL258
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL259
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL260
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL261
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL262
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL263
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL264
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL265
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL266
	.long	0xe09
	.uleb128 0x1e
	.long	.LVL267
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL268
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL274
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL275
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL277
	.long	0x2750
	.uleb128 0x1e
	.long	.LVL279
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL280
	.long	0x24af
	.uleb128 0x22
	.long	.LVL282
	.long	0x261e
	.long	0x1607
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	telNumber
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	etelNumber
	.byte	0
	.uleb128 0x1e
	.long	.LVL283
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL288
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL289
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL290
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL292
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL293
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL294
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL296
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL297
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL298
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL300
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL301
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL302
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL304
	.long	0x2750
	.uleb128 0x22
	.long	.LVL307
	.long	0x2518
	.long	0x169e
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x22
	.long	.LVL309
	.long	0x276c
	.long	0x16b1
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.long	.LVL310
	.long	0x2531
	.uleb128 0x22
	.long	.LVL311
	.long	0x276c
	.long	0x16cd
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.long	.LVL318
	.long	0x2780
	.long	0x16f0
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x1e
	.long	.LVL320
	.long	0x24af
	.uleb128 0x22
	.long	.LVL324
	.long	0x276c
	.long	0x170c
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.long	.LVL325
	.long	0x24af
	.uleb128 0x22
	.long	.LVL326
	.long	0x276c
	.long	0x1728
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.long	.LVL333
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL334
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL336
	.long	0x2531
	.uleb128 0x1e
	.long	.LVL337
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL340
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL342
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL343
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL344
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL345
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL346
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL348
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL349
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL350
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL351
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL352
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL353
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL354
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL355
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL356
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL362
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL363
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL364
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL365
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL367
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL368
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL369
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL370
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL373
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL374
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL375
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL376
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL378
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL379
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL380
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL381
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL383
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL384
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL385
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL386
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL388
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL389
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL390
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL391
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL394
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL395
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL396
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL397
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL399
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL400
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL401
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL402
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL404
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL405
	.long	0x24af
	.uleb128 0x22
	.long	.LVL407
	.long	0x279d
	.long	0x1921
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempInDoorMin
	.byte	0
	.uleb128 0x22
	.long	.LVL408
	.long	0x279d
	.long	0x193d
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempInDoorMax
	.byte	0
	.uleb128 0x22
	.long	.LVL409
	.long	0x279d
	.long	0x1959
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempOutDoorMin
	.byte	0
	.uleb128 0x22
	.long	.LVL410
	.long	0x279d
	.long	0x1975
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempOutDoorMax
	.byte	0
	.uleb128 0x22
	.long	.LVL411
	.long	0x279d
	.long	0x1991
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempSupplyMin
	.byte	0
	.uleb128 0x22
	.long	.LVL412
	.long	0x279d
	.long	0x19ad
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempSupplyMax
	.byte	0
	.uleb128 0x22
	.long	.LVL413
	.long	0x279d
	.long	0x19c9
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempDiffSupplyReturnMin
	.byte	0
	.uleb128 0x22
	.long	.LVL414
	.long	0x279d
	.long	0x19e5
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	TempDiffSupplyReturnMax
	.byte	0
	.uleb128 0x22
	.long	.LVL415
	.long	0x254b
	.long	0x1a1a
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	gSensorIDs
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	eSensorIDs
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1e
	.long	.LVL416
	.long	0x24af
	.uleb128 0x22
	.long	.LVL421
	.long	0x2750
	.long	0x1a3c
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x1e
	.long	.LVL423
	.long	0x2750
	.uleb128 0x1e
	.long	.LVL426
	.long	0x2750
	.uleb128 0x22
	.long	.LVL427
	.long	0x2518
	.long	0x1a67
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x1e
	.long	.LVL432
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL434
	.long	0x2487
	.uleb128 0x22
	.long	.LVL435
	.long	0x27b7
	.long	0x1a8c
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LVL436
	.long	0x2746
	.uleb128 0x1e
	.long	.LVL437
	.long	0x24af
	.uleb128 0x22
	.long	.LVL438
	.long	0x27b7
	.long	0x1ab1
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.long	.LVL439
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL442
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL445
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL448
	.long	0x24af
	.uleb128 0x1e
	.long	.LVL451
	.long	0x2750
	.uleb128 0x1e
	.long	.LVL454
	.long	0x2750
	.uleb128 0x22
	.long	.LVL455
	.long	0x2518
	.long	0x1b00
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x22
	.long	.LVL459
	.long	0x276c
	.long	0x1b13
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LVL460
	.long	0x24af
	.uleb128 0x22
	.long	.LVL461
	.long	0x276c
	.long	0x1b2f
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LVL465
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL473
	.long	0x24c9
	.uleb128 0x1e
	.long	.LVL474
	.long	0x757
	.uleb128 0x1e
	.long	.LVL477
	.long	0xb93
	.uleb128 0x1e
	.long	.LVL478
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL479
	.long	0x2487
	.uleb128 0x1e
	.long	.LVL480
	.long	0x886
	.uleb128 0x1e
	.long	.LVL482
	.long	0xd2b
	.uleb128 0x1e
	.long	.LVL483
	.long	0xd15
	.byte	0
	.uleb128 0x10
	.long	0x165
	.long	0x1b91
	.uleb128 0x11
	.long	0x277
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	0x1ac
	.long	0x1ba1
	.uleb128 0x11
	.long	0x277
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	0x37
	.long	0x1bb1
	.uleb128 0x11
	.long	0x277
	.byte	0x3
	.byte	0
	.uleb128 0x3e
	.long	.LASF128
	.byte	0x1
	.byte	0x45
	.long	0x1ba1
	.byte	0x5
	.byte	0x3
	.long	sn_presence
	.uleb128 0x3e
	.long	.LASF129
	.byte	0x1
	.byte	0x46
	.long	0x1ba1
	.byte	0x5
	.byte	0x3
	.long	sn_noready_counter
	.uleb128 0x3e
	.long	.LASF130
	.byte	0x1
	.byte	0x47
	.long	0x37
	.byte	0x5
	.byte	0x3
	.long	nwSen_Phase
	.uleb128 0x3e
	.long	.LASF131
	.byte	0x1
	.byte	0x48
	.long	0x37
	.byte	0x5
	.byte	0x3
	.long	btest_new_sensors
	.uleb128 0x3e
	.long	.LASF132
	.byte	0x1
	.byte	0x49
	.long	0x1ba1
	.byte	0x5
	.byte	0x3
	.long	noready_sens
	.uleb128 0x3f
	.string	"kg"
	.byte	0x1
	.byte	0x4a
	.long	0x25
	.byte	0x5
	.byte	0x3
	.long	kg
	.uleb128 0x3e
	.long	.LASF133
	.byte	0x1
	.byte	0x4b
	.long	0x37
	.byte	0x5
	.byte	0x3
	.long	oldDisplaySens
	.uleb128 0x3e
	.long	.LASF134
	.byte	0x1
	.byte	0x4d
	.long	0xdd
	.byte	0x5
	.byte	0x3
	.long	lcd_str
	.uleb128 0x10
	.long	0x37
	.long	0x1c4e
	.uleb128 0x11
	.long	0x277
	.byte	0x3
	.uleb128 0x11
	.long	0x277
	.byte	0x7
	.byte	0
	.uleb128 0x3e
	.long	.LASF135
	.byte	0x1
	.byte	0x4f
	.long	0x1c38
	.byte	0x5
	.byte	0x3
	.long	gSensorIDs
	.uleb128 0x3e
	.long	.LASF136
	.byte	0x1
	.byte	0x51
	.long	0x1c70
	.byte	0x5
	.byte	0x3
	.long	TempAct
	.uleb128 0xb
	.byte	0x2
	.long	0x25
	.uleb128 0x10
	.long	0x165
	.long	0x1c86
	.uleb128 0x11
	.long	0x277
	.byte	0x2
	.byte	0
	.uleb128 0x3e
	.long	.LASF137
	.byte	0x1
	.byte	0x67
	.long	0x1c97
	.byte	0x5
	.byte	0x3
	.long	okStr
	.uleb128 0x40
	.long	0x1c76
	.uleb128 0x3e
	.long	.LASF138
	.byte	0x1
	.byte	0x68
	.long	0x1cad
	.byte	0x5
	.byte	0x3
	.long	helloStr1
	.uleb128 0x40
	.long	0x1b81
	.uleb128 0x3e
	.long	.LASF139
	.byte	0x1
	.byte	0x69
	.long	0x1cc3
	.byte	0x5
	.byte	0x3
	.long	helloStr2
	.uleb128 0x40
	.long	0x594
	.uleb128 0x10
	.long	0x165
	.long	0x1cd8
	.uleb128 0x11
	.long	0x277
	.byte	0x6
	.byte	0
	.uleb128 0x3e
	.long	.LASF140
	.byte	0x1
	.byte	0x6a
	.long	0x1ce9
	.byte	0x5
	.byte	0x3
	.long	exitStr
	.uleb128 0x40
	.long	0x1cc8
	.uleb128 0x3e
	.long	.LASF141
	.byte	0x1
	.byte	0x6b
	.long	0x1cff
	.byte	0x5
	.byte	0x3
	.long	nextStr
	.uleb128 0x40
	.long	0x1cc8
	.uleb128 0x3e
	.long	.LASF142
	.byte	0x1
	.byte	0x6c
	.long	0x1d15
	.byte	0x5
	.byte	0x3
	.long	snStr
	.uleb128 0x40
	.long	0x1c76
	.uleb128 0x3e
	.long	.LASF143
	.byte	0x1
	.byte	0x6d
	.long	0x1d2b
	.byte	0x5
	.byte	0x3
	.long	indoorStr
	.uleb128 0x40
	.long	0x1cc8
	.uleb128 0x10
	.long	0x165
	.long	0x1d40
	.uleb128 0x11
	.long	0x277
	.byte	0x7
	.byte	0
	.uleb128 0x3e
	.long	.LASF144
	.byte	0x1
	.byte	0x6e
	.long	0x1d51
	.byte	0x5
	.byte	0x3
	.long	outdoorStr
	.uleb128 0x40
	.long	0x1d30
	.uleb128 0x3e
	.long	.LASF145
	.byte	0x1
	.byte	0x6f
	.long	0x1d67
	.byte	0x5
	.byte	0x3
	.long	supplyStr
	.uleb128 0x40
	.long	0x1cc8
	.uleb128 0x3e
	.long	.LASF146
	.byte	0x1
	.byte	0x70
	.long	0x1d7d
	.byte	0x5
	.byte	0x3
	.long	returnStr
	.uleb128 0x40
	.long	0x1cc8
	.uleb128 0x10
	.long	0x165
	.long	0x1d92
	.uleb128 0x11
	.long	0x277
	.byte	0xe
	.byte	0
	.uleb128 0x3e
	.long	.LASF147
	.byte	0x1
	.byte	0x71
	.long	0x1da3
	.byte	0x5
	.byte	0x3
	.long	nsupdownStr
	.uleb128 0x40
	.long	0x1d82
	.uleb128 0x10
	.long	0x165
	.long	0x1db8
	.uleb128 0x11
	.long	0x277
	.byte	0x8
	.byte	0
	.uleb128 0x3e
	.long	.LASF148
	.byte	0x1
	.byte	0x72
	.long	0x1dc9
	.byte	0x5
	.byte	0x3
	.long	checksumStr
	.uleb128 0x40
	.long	0x1da8
	.uleb128 0x10
	.long	0x165
	.long	0x1dde
	.uleb128 0x11
	.long	0x277
	.byte	0x3
	.byte	0
	.uleb128 0x3e
	.long	.LASF149
	.byte	0x1
	.byte	0x73
	.long	0x1def
	.byte	0x5
	.byte	0x3
	.long	setStr
	.uleb128 0x40
	.long	0x1dce
	.uleb128 0x3e
	.long	.LASF150
	.byte	0x1
	.byte	0x74
	.long	0x1e05
	.byte	0x5
	.byte	0x3
	.long	viewStr
	.uleb128 0x40
	.long	0x1b81
	.uleb128 0x3e
	.long	.LASF151
	.byte	0x1
	.byte	0x75
	.long	0x1e1b
	.byte	0x5
	.byte	0x3
	.long	assignStr
	.uleb128 0x40
	.long	0x1d30
	.uleb128 0x3e
	.long	.LASF152
	.byte	0x1
	.byte	0x76
	.long	0x1e31
	.byte	0x5
	.byte	0x3
	.long	minStr
	.uleb128 0x40
	.long	0x1dce
	.uleb128 0x3e
	.long	.LASF153
	.byte	0x1
	.byte	0x77
	.long	0x1e47
	.byte	0x5
	.byte	0x3
	.long	maxStr
	.uleb128 0x40
	.long	0x1dce
	.uleb128 0x3e
	.long	.LASF154
	.byte	0x1
	.byte	0x78
	.long	0x1e5d
	.byte	0x5
	.byte	0x3
	.long	tempStr
	.uleb128 0x40
	.long	0x1b81
	.uleb128 0x3e
	.long	.LASF155
	.byte	0x1
	.byte	0x79
	.long	0x1e73
	.byte	0x5
	.byte	0x3
	.long	diffStr
	.uleb128 0x40
	.long	0x1b81
	.uleb128 0x3e
	.long	.LASF156
	.byte	0x1
	.byte	0x7a
	.long	0x1e89
	.byte	0x5
	.byte	0x3
	.long	toeepromStr
	.uleb128 0x40
	.long	0x594
	.uleb128 0x3e
	.long	.LASF157
	.byte	0x1
	.byte	0x7b
	.long	0x1e9f
	.byte	0x5
	.byte	0x3
	.long	saveStr
	.uleb128 0x40
	.long	0x1b81
	.uleb128 0x3e
	.long	.LASF158
	.byte	0x1
	.byte	0x7c
	.long	0x1eb5
	.byte	0x5
	.byte	0x3
	.long	timeStr
	.uleb128 0x40
	.long	0x1b81
	.uleb128 0x3e
	.long	.LASF159
	.byte	0x1
	.byte	0x7d
	.long	0x1ecb
	.byte	0x5
	.byte	0x3
	.long	minuteStr
	.uleb128 0x40
	.long	0x1cc8
	.uleb128 0x3e
	.long	.LASF160
	.byte	0x1
	.byte	0x7e
	.long	0x1ee1
	.byte	0x5
	.byte	0x3
	.long	hourStr
	.uleb128 0x40
	.long	0x1b81
	.uleb128 0x3e
	.long	.LASF161
	.byte	0x1
	.byte	0x7f
	.long	0x1ef7
	.byte	0x5
	.byte	0x3
	.long	secondStr
	.uleb128 0x40
	.long	0x1cc8
	.uleb128 0x10
	.long	0x165
	.long	0x1f0c
	.uleb128 0x11
	.long	0x277
	.byte	0x5
	.byte	0
	.uleb128 0x3e
	.long	.LASF162
	.byte	0x1
	.byte	0x80
	.long	0x1f1d
	.byte	0x5
	.byte	0x3
	.long	alarmStr
	.uleb128 0x40
	.long	0x1efc
	.uleb128 0x3e
	.long	.LASF163
	.byte	0x1
	.byte	0x81
	.long	0x1f33
	.byte	0x5
	.byte	0x3
	.long	sensorStr
	.uleb128 0x40
	.long	0x1cc8
	.uleb128 0x3e
	.long	.LASF164
	.byte	0x1
	.byte	0x82
	.long	0x1f49
	.byte	0x5
	.byte	0x3
	.long	absenceStr
	.uleb128 0x40
	.long	0x1d30
	.uleb128 0x3e
	.long	.LASF165
	.byte	0x1
	.byte	0x83
	.long	0x1f5f
	.byte	0x5
	.byte	0x3
	.long	missingStr
	.uleb128 0x40
	.long	0x1d30
	.uleb128 0x3e
	.long	.LASF166
	.byte	0x1
	.byte	0x84
	.long	0x1f75
	.byte	0x5
	.byte	0x3
	.long	temperStr
	.uleb128 0x40
	.long	0x1d30
	.uleb128 0x10
	.long	0x165
	.long	0x1f8a
	.uleb128 0x11
	.long	0x277
	.byte	0xd
	.byte	0
	.uleb128 0x3e
	.long	.LASF167
	.byte	0x1
	.byte	0x85
	.long	0x1f9b
	.byte	0x5
	.byte	0x3
	.long	Sensorsfound
	.uleb128 0x40
	.long	0x1f7a
	.uleb128 0x3e
	.long	.LASF168
	.byte	0x1
	.byte	0x86
	.long	0x1fb1
	.byte	0x5
	.byte	0x3
	.long	DS18S20
	.uleb128 0x40
	.long	0x1da8
	.uleb128 0x3e
	.long	.LASF169
	.byte	0x1
	.byte	0x87
	.long	0x1fc7
	.byte	0x5
	.byte	0x3
	.long	DS18B20
	.uleb128 0x40
	.long	0x1da8
	.uleb128 0x3e
	.long	.LASF170
	.byte	0x1
	.byte	0x88
	.long	0x1fdd
	.byte	0x5
	.byte	0x3
	.long	DS1822
	.uleb128 0x40
	.long	0x1d30
	.uleb128 0x3f
	.string	"PAR"
	.byte	0x1
	.byte	0x89
	.long	0x1ff3
	.byte	0x5
	.byte	0x3
	.long	PAR
	.uleb128 0x40
	.long	0x1b81
	.uleb128 0x17
	.long	.LASF171
	.byte	0x1
	.byte	0x8a
	.long	0x2003
	.uleb128 0x40
	.long	0x1d30
	.uleb128 0x3f
	.string	"EXT"
	.byte	0x1
	.byte	0x8b
	.long	0x2019
	.byte	0x5
	.byte	0x3
	.long	EXT
	.uleb128 0x40
	.long	0x1b81
	.uleb128 0x3e
	.long	.LASF172
	.byte	0x1
	.byte	0x8c
	.long	0x202f
	.byte	0x5
	.byte	0x3
	.long	telStr
	.uleb128 0x40
	.long	0x1efc
	.uleb128 0x3e
	.long	.LASF173
	.byte	0x1
	.byte	0x8d
	.long	0x2045
	.byte	0x5
	.byte	0x3
	.long	clearStr
	.uleb128 0x40
	.long	0x1efc
	.uleb128 0x3e
	.long	.LASF174
	.byte	0x1
	.byte	0x8e
	.long	0x205b
	.byte	0x5
	.byte	0x3
	.long	errStr
	.uleb128 0x40
	.long	0x1dce
	.uleb128 0x10
	.long	0x165
	.long	0x2070
	.uleb128 0x11
	.long	0x277
	.byte	0x15
	.byte	0
	.uleb128 0x3e
	.long	.LASF175
	.byte	0x1
	.byte	0x8f
	.long	0x2081
	.byte	0x5
	.byte	0x3
	.long	startRegulatorStr
	.uleb128 0x40
	.long	0x2060
	.uleb128 0x3e
	.long	.LASF176
	.byte	0x1
	.byte	0x90
	.long	0x2097
	.byte	0x5
	.byte	0x3
	.long	startPowerGoneStr
	.uleb128 0x40
	.long	0x1d82
	.uleb128 0x10
	.long	0x165
	.long	0x20ac
	.uleb128 0x11
	.long	0x277
	.byte	0xb
	.byte	0
	.uleb128 0x3e
	.long	.LASF177
	.byte	0x1
	.byte	0x91
	.long	0x20bd
	.byte	0x5
	.byte	0x3
	.long	notReadyStr
	.uleb128 0x40
	.long	0x209c
	.uleb128 0x3e
	.long	.LASF178
	.byte	0x1
	.byte	0x93
	.long	0x37
	.byte	0x5
	.byte	0x3
	.long	MainLoopPhase
	.uleb128 0x3e
	.long	.LASF179
	.byte	0x1
	.byte	0x93
	.long	0x37
	.byte	0x5
	.byte	0x3
	.long	LastPhase
	.uleb128 0x3e
	.long	.LASF180
	.byte	0x1
	.byte	0x93
	.long	0x37
	.byte	0x5
	.byte	0x3
	.long	MenuPhase
	.uleb128 0x3f
	.string	"fl"
	.byte	0x1
	.byte	0x94
	.long	0x37
	.byte	0x5
	.byte	0x3
	.long	fl
	.uleb128 0x3e
	.long	.LASF181
	.byte	0x1
	.byte	0x95
	.long	0x165
	.byte	0x5
	.byte	0x3
	.long	mausure_temperature_ok
	.uleb128 0x10
	.long	0x181
	.long	0x2121
	.uleb128 0x41
	.byte	0
	.uleb128 0x42
	.long	.LASF182
	.byte	0x7
	.word	0x195
	.long	0x2116
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x42
	.long	0x213f
	.uleb128 0x11
	.long	0x277
	.byte	0x7
	.byte	0
	.uleb128 0x43
	.long	.LASF183
	.byte	0xb
	.byte	0x17
	.long	0x212f
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF184
	.byte	0xb
	.byte	0x22
	.long	0x37
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF185
	.byte	0xb
	.byte	0x23
	.long	0x37
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF186
	.byte	0xb
	.byte	0x24
	.long	0x214
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF187
	.byte	0xb
	.byte	0x25
	.long	0x165
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF188
	.byte	0xb
	.byte	0x26
	.long	0x37
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"x"
	.byte	0xb
	.byte	0x27
	.long	0x66
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.string	"y"
	.byte	0xb
	.byte	0x27
	.long	0x66
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.long	.LASF189
	.byte	0x1
	.byte	0x2a
	.long	0xc7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__fuse
	.uleb128 0x45
	.long	.LASF190
	.byte	0x1
	.byte	0x36
	.long	0x165
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ReadyWATCHDOG
	.uleb128 0x45
	.long	.LASF191
	.byte	0x1
	.byte	0x37
	.long	0x165
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	WATCHDOG_STATE
	.uleb128 0x45
	.long	.LASF192
	.byte	0x1
	.byte	0x38
	.long	0x42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TLastWatchDog
	.uleb128 0x45
	.long	.LASF193
	.byte	0x1
	.byte	0x39
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempInDoorMin
	.uleb128 0x45
	.long	.LASF194
	.byte	0x1
	.byte	0x3a
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempInDoorMax
	.uleb128 0x45
	.long	.LASF195
	.byte	0x1
	.byte	0x3b
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempOutDoorMin
	.uleb128 0x45
	.long	.LASF196
	.byte	0x1
	.byte	0x3c
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempOutDoorMax
	.uleb128 0x45
	.long	.LASF197
	.byte	0x1
	.byte	0x3d
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempSupplyMin
	.uleb128 0x45
	.long	.LASF198
	.byte	0x1
	.byte	0x3e
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempSupplyMax
	.uleb128 0x45
	.long	.LASF199
	.byte	0x1
	.byte	0x3f
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempDiffSupplyReturnMin
	.uleb128 0x45
	.long	.LASF200
	.byte	0x1
	.byte	0x40
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempDiffSupplyReturnMax
	.uleb128 0x45
	.long	.LASF201
	.byte	0x1
	.byte	0x41
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	nSensors
	.uleb128 0x10
	.long	0x25
	.long	0x229d
	.uleb128 0x11
	.long	0x277
	.byte	0x3
	.byte	0
	.uleb128 0x45
	.long	.LASF202
	.byte	0x1
	.byte	0x43
	.long	0x228d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	temper
	.uleb128 0x10
	.long	0x165
	.long	0x22bf
	.uleb128 0x11
	.long	0x277
	.byte	0x1e
	.byte	0
	.uleb128 0x45
	.long	.LASF203
	.byte	0x1
	.byte	0x4e
	.long	0x22af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	wbuffer
	.uleb128 0x45
	.long	.LASF204
	.byte	0x1
	.byte	0x50
	.long	0x880
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rSensorIDs
	.uleb128 0x45
	.long	.LASF205
	.byte	0x1
	.byte	0x54
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempInDoorMin
	.uleb128 0x45
	.long	.LASF206
	.byte	0x1
	.byte	0x55
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempInDoorMax
	.uleb128 0x45
	.long	.LASF207
	.byte	0x1
	.byte	0x56
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempOutDoorMin
	.uleb128 0x45
	.long	.LASF208
	.byte	0x1
	.byte	0x57
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempOutDoorMax
	.uleb128 0x45
	.long	.LASF209
	.byte	0x1
	.byte	0x58
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempSupplyMin
	.uleb128 0x45
	.long	.LASF210
	.byte	0x1
	.byte	0x59
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempSupplyMax
	.uleb128 0x45
	.long	.LASF211
	.byte	0x1
	.byte	0x5a
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempDiffSupplyReturnMin
	.uleb128 0x45
	.long	.LASF212
	.byte	0x1
	.byte	0x5b
	.long	0x25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempDiffSupplyReturnMax
	.uleb128 0x45
	.long	.LASF213
	.byte	0x1
	.byte	0x5c
	.long	0x1c38
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	eSensorIDs
	.uleb128 0x10
	.long	0x37
	.long	0x2395
	.uleb128 0x11
	.long	0x277
	.byte	0xe
	.byte	0
	.uleb128 0x45
	.long	.LASF214
	.byte	0x1
	.byte	0x63
	.long	0x2385
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	etelNumber
	.uleb128 0x45
	.long	.LASF215
	.byte	0x1
	.byte	0x96
	.long	0x1d82
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	telNumber
	.uleb128 0x45
	.long	.LASF216
	.byte	0x1
	.byte	0x97
	.long	0x37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	temp_for_hour
	.uleb128 0x45
	.long	.LASF217
	.byte	0x1
	.byte	0x98
	.long	0x37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PrefHeatting
	.uleb128 0x43
	.long	.LASF218
	.byte	0x1
	.byte	0x9a
	.long	0x37
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.byte	0x1
	.long	.LASF219
	.byte	0xb
	.byte	0x12
	.long	0x54
	.byte	0x1
	.long	0x23fd
	.uleb128 0x47
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.long	.LASF220
	.byte	0xb
	.byte	0x13
	.long	0x54
	.byte	0x1
	.long	0x2410
	.uleb128 0x47
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.long	.LASF223
	.byte	0x8
	.byte	0x81
	.byte	0x1
	.long	0x37
	.byte	0x1
	.long	0x2432
	.uleb128 0xd
	.long	0x49
	.uleb128 0xd
	.long	0x15f
	.uleb128 0xd
	.long	0x37
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.long	.LASF221
	.byte	0x8
	.byte	0x7f
	.byte	0x1
	.byte	0x1
	.long	0x2446
	.uleb128 0xd
	.long	0x2446
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x244c
	.uleb128 0x40
	.long	0x165
	.uleb128 0x49
	.byte	0x1
	.long	.LASF222
	.byte	0x8
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.long	0x2465
	.uleb128 0xd
	.long	0x15f
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.long	.LASF224
	.byte	0xc
	.byte	0x74
	.byte	0x1
	.long	0x54
	.byte	0x1
	.long	0x2487
	.uleb128 0xd
	.long	0x1a5
	.uleb128 0xd
	.long	0x1a5
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.long	.LASF227
	.byte	0x8
	.byte	0x65
	.byte	0x1
	.long	0x2496
	.uleb128 0x47
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.long	.LASF225
	.byte	0x8
	.byte	0x7b
	.byte	0x1
	.byte	0x1
	.long	0x24af
	.uleb128 0xd
	.long	0x37
	.uleb128 0xd
	.long	0x37
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF226
	.byte	0x7
	.word	0x28f
	.byte	0x1
	.long	0x54
	.byte	0x1
	.long	0x24c9
	.uleb128 0xd
	.long	0x2446
	.uleb128 0x47
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.long	.LASF228
	.byte	0x8
	.byte	0x68
	.byte	0x1
	.long	0x24d8
	.uleb128 0x47
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.long	.LASF229
	.byte	0xd
	.byte	0x6e
	.byte	0x1
	.long	0x37
	.byte	0x1
	.long	0x24f5
	.uleb128 0xd
	.long	0x37
	.uleb128 0xd
	.long	0x880
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.long	.LASF230
	.byte	0xd
	.byte	0x76
	.byte	0x1
	.long	0x37
	.byte	0x1
	.long	0x2512
	.uleb128 0xd
	.long	0x880
	.uleb128 0xd
	.long	0x2512
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x49
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF231
	.byte	0xe
	.word	0x112
	.byte	0x1
	.long	0x54
	.byte	0x1
	.long	0x2531
	.uleb128 0xd
	.long	0x2446
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF232
	.byte	0x7
	.word	0x289
	.byte	0x1
	.long	0x54
	.byte	0x1
	.long	0x254b
	.uleb128 0xd
	.long	0x2446
	.uleb128 0x47
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF233
	.byte	0xf
	.word	0x2dc
	.byte	0x1
	.byte	0x1
	.long	0x256a
	.uleb128 0xd
	.long	0x1a5
	.uleb128 0xd
	.long	0x1a3
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF234
	.byte	0xe
	.word	0x12a
	.byte	0x1
	.long	0x1a3
	.byte	0x1
	.long	0x2583
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.long	.LASF235
	.byte	0xc
	.byte	0x89
	.byte	0x1
	.long	0x15f
	.byte	0x1
	.long	0x25a5
	.uleb128 0xd
	.long	0x15f
	.uleb128 0xd
	.long	0x2446
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF236
	.byte	0x10
	.word	0x486
	.byte	0x1
	.long	0x15f
	.byte	0x1
	.long	0x25c8
	.uleb128 0xd
	.long	0x15f
	.uleb128 0xd
	.long	0x2446
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.long	.LASF237
	.byte	0xa
	.byte	0x48
	.byte	0x1
	.long	0x54
	.byte	0x1
	.long	0x25ea
	.uleb128 0xd
	.long	0x15f
	.uleb128 0xd
	.long	0x15f
	.uleb128 0xd
	.long	0x54
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF238
	.byte	0xe
	.word	0x131
	.byte	0x1
	.byte	0x1
	.long	0x25ff
	.uleb128 0xd
	.long	0x1a3
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF239
	.byte	0xf
	.word	0x2a6
	.byte	0x1
	.byte	0x1
	.long	0x261e
	.uleb128 0xd
	.long	0x1a3
	.uleb128 0xd
	.long	0x1a5
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF240
	.byte	0xf
	.word	0x2c1
	.byte	0x1
	.byte	0x1
	.long	0x263d
	.uleb128 0xd
	.long	0x1a5
	.uleb128 0xd
	.long	0x1a3
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.long	.LASF241
	.byte	0x11
	.byte	0x21
	.byte	0x1
	.long	0x264c
	.uleb128 0x47
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF243
	.byte	0xe
	.byte	0x72
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF244
	.byte	0xf
	.word	0x291
	.byte	0x1
	.long	0x37
	.byte	0x1
	.long	0x266f
	.uleb128 0xd
	.long	0x266f
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x2675
	.uleb128 0x40
	.long	0x37
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF245
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.byte	0x1
	.long	.LASF246
	.byte	0x12
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.long	0x26a7
	.uleb128 0xd
	.long	0x26a7
	.uleb128 0xd
	.long	0x26a7
	.uleb128 0xd
	.long	0x26a7
	.uleb128 0xd
	.long	0x37
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x26ad
	.uleb128 0x4e
	.long	0x37
	.uleb128 0x49
	.byte	0x1
	.long	.LASF247
	.byte	0x13
	.byte	0x8e
	.byte	0x1
	.byte	0x1
	.long	0x26c6
	.uleb128 0xd
	.long	0x66
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.long	.LASF248
	.byte	0xb
	.byte	0x1d
	.byte	0x1
	.byte	0x1
	.long	0x26da
	.uleb128 0xd
	.long	0x37
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF249
	.byte	0xb
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF250
	.byte	0x9
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.byte	0x1
	.long	.LASF251
	.byte	0x8
	.byte	0x85
	.byte	0x1
	.byte	0x1
	.long	0x2702
	.uleb128 0xd
	.long	0x54
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF252
	.byte	0x8
	.byte	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.byte	0x1
	.long	.LASF253
	.byte	0xd
	.byte	0x6d
	.byte	0x1
	.long	0x37
	.byte	0x1
	.long	0x2724
	.uleb128 0xd
	.long	0x880
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF254
	.byte	0x14
	.byte	0x1c
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF255
	.byte	0x14
	.byte	0x20
	.byte	0x1
	.byte	0x1
	.uleb128 0x4f
	.byte	0x1
	.long	.LASF268
	.byte	0xb
	.byte	0x1f
	.byte	0x1
	.long	0x37
	.byte	0x1
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF256
	.byte	0x8
	.byte	0x87
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.byte	0x1
	.long	.LASF258
	.byte	0x15
	.byte	0
	.long	.LASF269
	.byte	0x1
	.long	0x54
	.byte	0x1
	.long	0x276c
	.uleb128 0xd
	.long	0x54
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.long	.LASF259
	.byte	0x8
	.byte	0x89
	.byte	0x1
	.byte	0x1
	.long	0x2780
	.uleb128 0xd
	.long	0x37
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.long	.LASF260
	.byte	0x16
	.byte	0xa
	.byte	0x1
	.long	0x37
	.byte	0x1
	.long	0x279d
	.uleb128 0xd
	.long	0x880
	.uleb128 0xd
	.long	0x5b
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF261
	.byte	0xf
	.word	0x2c7
	.byte	0x1
	.byte	0x1
	.long	0x27b7
	.uleb128 0xd
	.long	0x880
	.uleb128 0xd
	.long	0x37
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.long	.LASF262
	.byte	0x8
	.byte	0x71
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x37
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x51
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB12-.Ltext0
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
	.long	.LCFI6-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8-.Ltext0
	.long	.LFE12-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST1:
	.long	.LVL2-.Ltext0
	.long	.LVL5-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL6-.Ltext0
	.long	.LVL11-.Ltext0
	.word	0x1
	.byte	0x61
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL12-.Ltext0
	.long	.LVL15-.Ltext0
	.word	0x1
	.byte	0x61
	.long	.LVL15-.Ltext0
	.long	.LFE12-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL10-.Ltext0
	.long	.LVL14-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL2-.Ltext0
	.long	.LVL12-.Ltext0
	.word	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
	.word	0x1
	.byte	0x5c
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.word	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL0-.Ltext0
	.long	.LVL1-.Ltext0
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LFB13-.Ltext0
	.long	.LCFI9-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LCFI12-.Ltext0
	.long	.LFE13-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 14
	.long	0
	.long	0
.LLST6:
	.long	.LVL16-.Ltext0
	.long	.LVL17-1-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17-1-.Ltext0
	.long	.LFE13-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LFB16-.Ltext0
	.long	.LCFI13-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI14-.Ltext0
	.long	.LCFI15-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI16-.Ltext0
	.long	.LCFI17-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI17-.Ltext0
	.long	.LFE16-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST8:
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22-.Ltext0
	.long	.LVL29-.Ltext0
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST9:
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22-.Ltext0
	.long	.LVL23-.Ltext0
	.word	0x1
	.byte	0x60
	.long	.LVL27-.Ltext0
	.long	.LVL28-.Ltext0
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST10:
	.long	.LVL22-.Ltext0
	.long	.LVL23-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26-.Ltext0
	.long	.LVL28-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LFB19-.Ltext0
	.long	.LCFI18-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI18-.Ltext0
	.long	.LCFI19-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI19-.Ltext0
	.long	.LCFI20-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI20-.Ltext0
	.long	.LCFI21-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI21-.Ltext0
	.long	.LCFI22-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI22-.Ltext0
	.long	.LFE19-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0
	.long	0
.LLST13:
	.long	.LFB20-.Ltext0
	.long	.LCFI23-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI23-.Ltext0
	.long	.LCFI24-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI24-.Ltext0
	.long	.LCFI25-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI25-.Ltext0
	.long	.LCFI26-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI26-.Ltext0
	.long	.LCFI27-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI27-.Ltext0
	.long	.LCFI28-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI28-.Ltext0
	.long	.LCFI29-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI29-.Ltext0
	.long	.LCFI30-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI30-.Ltext0
	.long	.LCFI31-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI31-.Ltext0
	.long	.LCFI32-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI32-.Ltext0
	.long	.LCFI33-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI33-.Ltext0
	.long	.LCFI34-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI34-.Ltext0
	.long	.LCFI35-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI35-.Ltext0
	.long	.LCFI36-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI36-.Ltext0
	.long	.LCFI37-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI37-.Ltext0
	.long	.LCFI38-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI38-.Ltext0
	.long	.LCFI39-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI39-.Ltext0
	.long	.LCFI40-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI40-.Ltext0
	.long	.LCFI41-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI41-.Ltext0
	.long	.LCFI42-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI42-.Ltext0
	.long	.LCFI43-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI43-.Ltext0
	.long	.LCFI44-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI44-.Ltext0
	.long	.LCFI45-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI45-.Ltext0
	.long	.LCFI46-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI46-.Ltext0
	.long	.LCFI47-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI47-.Ltext0
	.long	.LCFI48-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI48-.Ltext0
	.long	.LCFI49-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI49-.Ltext0
	.long	.LCFI50-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI50-.Ltext0
	.long	.LCFI51-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI51-.Ltext0
	.long	.LCFI52-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI52-.Ltext0
	.long	.LCFI53-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI53-.Ltext0
	.long	.LCFI54-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI54-.Ltext0
	.long	.LCFI55-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI55-.Ltext0
	.long	.LCFI56-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI56-.Ltext0
	.long	.LCFI57-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI57-.Ltext0
	.long	.LCFI58-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI58-.Ltext0
	.long	.LCFI59-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI59-.Ltext0
	.long	.LCFI60-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI60-.Ltext0
	.long	.LFE20-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST14:
	.long	.LFB21-.Ltext0
	.long	.LCFI61-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI61-.Ltext0
	.long	.LCFI62-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI62-.Ltext0
	.long	.LCFI63-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI63-.Ltext0
	.long	.LCFI64-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI64-.Ltext0
	.long	.LCFI65-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI65-.Ltext0
	.long	.LCFI66-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI66-.Ltext0
	.long	.LCFI67-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 7
	.long	.LCFI67-.Ltext0
	.long	.LFE21-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 19
	.long	0
	.long	0
.LLST15:
	.long	.LVL36-.Ltext0
	.long	.LVL38-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL38-.Ltext0
	.long	.LVL48-.Ltext0
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL48-.Ltext0
	.long	.LFE21-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL37-.Ltext0
	.long	.LVL38-.Ltext0
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL38-.Ltext0
	.long	.LVL45-.Ltext0
	.word	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.long	.LVL45-.Ltext0
	.long	.LVL46-.Ltext0
	.word	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.long	.LVL46-.Ltext0
	.long	.LVL47-.Ltext0
	.word	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL40-.Ltext0
	.long	.LVL45-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x443b8000
	.long	0
	.long	0
.LLST18:
	.long	.LVL40-.Ltext0
	.long	.LVL45-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4ab71b00
	.long	0
	.long	0
.LLST19:
	.long	.LVL40-.Ltext0
	.long	.LVL45-.Ltext0
	.word	0x6
	.byte	0xc
	.long	0x5b8d80
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LFB22-.Ltext0
	.long	.LCFI68-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI68-.Ltext0
	.long	.LCFI69-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI69-.Ltext0
	.long	.LCFI70-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI70-.Ltext0
	.long	.LCFI71-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI71-.Ltext0
	.long	.LFE22-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST21:
	.long	.LVL58-.Ltext0
	.long	.LVL61-.Ltext0
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST22:
	.long	.LVL49-.Ltext0
	.long	.LVL57-.Ltext0
	.word	0x10
	.byte	0x81
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x80
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x22
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.long	.LVL57-.Ltext0
	.long	.LVL59-.Ltext0
	.word	0xc
	.byte	0x84
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.long	.LVL59-.Ltext0
	.long	.LVL60-.Ltext0
	.word	0x8
	.byte	0x84
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.long	.LVL60-.Ltext0
	.long	.LVL61-.Ltext0
	.word	0x11
	.byte	0x3
	.long	rTempDiffSupplyReturnMax
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.long	.LVL61-.Ltext0
	.long	.LVL62-.Ltext0
	.word	0x10
	.byte	0x81
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x80
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x22
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.long	.LVL66-.Ltext0
	.long	.LVL78-.Ltext0
	.word	0x10
	.byte	0x81
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x80
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x22
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL51-.Ltext0
	.long	.LVL52-.Ltext0
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL52-.Ltext0
	.long	.LVL54-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL54-.Ltext0
	.long	.LVL55-.Ltext0
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL55-.Ltext0
	.long	.LVL56-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL61-.Ltext0
	.long	.LVL62-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL63-.Ltext0
	.long	.LVL64-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL64-.Ltext0
	.long	.LVL65-.Ltext0
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL65-.Ltext0
	.long	.LVL66-.Ltext0
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL66-.Ltext0
	.long	.LVL67-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL68-.Ltext0
	.long	.LVL69-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL70-.Ltext0
	.long	.LVL71-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL72-.Ltext0
	.long	.LVL73-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL74-.Ltext0
	.long	.LVL75-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL76-.Ltext0
	.long	.LVL77-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL77-.Ltext0
	.long	.LVL78-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL79-.Ltext0
	.long	.LVL80-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL80-.Ltext0
	.long	.LVL83-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL83-.Ltext0
	.long	.LVL84-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL84-.Ltext0
	.long	.LVL85-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL85-.Ltext0
	.long	.LFE25-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL79-.Ltext0
	.long	.LVL80-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL80-.Ltext0
	.long	.LVL81-.Ltext0
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x1c
	.byte	0x9f
	.long	.LVL81-.Ltext0
	.long	.LVL82-.Ltext0
	.word	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x20
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL82-.Ltext0
	.long	.LVL83-.Ltext0
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x1c
	.byte	0x9f
	.long	.LVL83-.Ltext0
	.long	.LVL85-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL85-.Ltext0
	.long	.LVL86-.Ltext0
	.word	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x20
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL86-.Ltext0
	.long	.LFE25-.Ltext0
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LFB17-.Ltext0
	.long	.LCFI72-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI72-.Ltext0
	.long	.LCFI73-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI73-.Ltext0
	.long	.LCFI74-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI74-.Ltext0
	.long	.LCFI75-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI75-.Ltext0
	.long	.LCFI76-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI76-.Ltext0
	.long	.LCFI77-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI77-.Ltext0
	.long	.LCFI78-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI78-.Ltext0
	.long	.LCFI79-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI79-.Ltext0
	.long	.LCFI80-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI80-.Ltext0
	.long	.LCFI81-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI81-.Ltext0
	.long	.LFE17-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST27:
	.long	.LVL87-.Ltext0
	.long	.LVL88-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL88-.Ltext0
	.long	.LVL97-.Ltext0
	.word	0x1
	.byte	0x5c
	.long	0
	.long	0
.LLST28:
	.long	.LVL87-.Ltext0
	.long	.LVL88-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL88-.Ltext0
	.long	.LVL93-.Ltext0
	.word	0x1
	.byte	0x60
	.long	.LVL93-.Ltext0
	.long	.LVL94-.Ltext0
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL94-.Ltext0
	.long	.LVL95-.Ltext0
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST29:
	.long	.LVL87-.Ltext0
	.long	.LVL88-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL88-.Ltext0
	.long	.LVL96-.Ltext0
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST30:
	.long	.LVL91-.Ltext0
	.long	.LVL92-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40400000
	.long	0
	.long	0
.LLST31:
	.long	.LVL91-.Ltext0
	.long	.LVL92-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46bb8000
	.long	0
	.long	0
.LLST32:
	.long	.LVL91-.Ltext0
	.long	.LVL92-.Ltext0
	.word	0x4
	.byte	0xa
	.word	0x5dc0
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LFB23-.Ltext0
	.long	.LCFI82-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI82-.Ltext0
	.long	.LCFI83-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI83-.Ltext0
	.long	.LCFI84-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI84-.Ltext0
	.long	.LCFI85-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI85-.Ltext0
	.long	.LCFI86-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI86-.Ltext0
	.long	.LCFI87-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI87-.Ltext0
	.long	.LCFI88-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI88-.Ltext0
	.long	.LCFI89-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI89-.Ltext0
	.long	.LCFI90-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI90-.Ltext0
	.long	.LCFI91-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI91-.Ltext0
	.long	.LCFI92-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI92-.Ltext0
	.long	.LCFI93-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI93-.Ltext0
	.long	.LCFI94-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI94-.Ltext0
	.long	.LCFI95-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI95-.Ltext0
	.long	.LCFI96-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI96-.Ltext0
	.long	.LCFI97-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI97-.Ltext0
	.long	.LCFI98-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI98-.Ltext0
	.long	.LCFI99-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI99-.Ltext0
	.long	.LCFI100-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI100-.Ltext0
	.long	.LCFI101-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 24
	.long	.LCFI101-.Ltext0
	.long	.LFE23-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 24
	.long	0
	.long	0
.LLST34:
	.long	.LVL98-.Ltext0
	.long	.LVL99-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL99-.Ltext0
	.long	.LVL100-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL100-.Ltext0
	.long	.LVL101-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL101-.Ltext0
	.long	.LVL116-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL116-.Ltext0
	.long	.LVL117-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL117-1-.Ltext0
	.long	.LVL125-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL125-.Ltext0
	.long	.LVL126-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL126-.Ltext0
	.long	.LVL127-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL127-.Ltext0
	.long	.LVL128-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL128-.Ltext0
	.long	.LVL130-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL130-.Ltext0
	.long	.LVL131-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL131-.Ltext0
	.long	.LVL133-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL133-.Ltext0
	.long	.LVL134-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL134-.Ltext0
	.long	.LFE23-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL108-.Ltext0
	.long	.LVL113-.Ltext0
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST36:
	.long	.LVL106-.Ltext0
	.long	.LVL107-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL107-.Ltext0
	.long	.LVL109-.Ltext0
	.word	0x16
	.byte	0x86
	.sleb128 0
	.byte	0x8c
	.sleb128 3
	.byte	0x94
	.byte	0x2
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x1c
	.byte	0x3
	.long	gSensorIDs
	.byte	0x1c
	.byte	0x9f
	.long	.LVL109-.Ltext0
	.long	.LVL111-.Ltext0
	.word	0x17
	.byte	0x3
	.long	gSensorIDs
	.byte	0x20
	.byte	0x8c
	.sleb128 3
	.byte	0x94
	.byte	0x2
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x1c
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL111-.Ltext0
	.long	.LVL113-.Ltext0
	.word	0x16
	.byte	0x86
	.sleb128 0
	.byte	0x8c
	.sleb128 3
	.byte	0x94
	.byte	0x2
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x1c
	.byte	0x3
	.long	gSensorIDs
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL110-.Ltext0
	.long	.LVL113-.Ltext0
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST38:
	.long	.LVL105-.Ltext0
	.long	.LVL113-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL115-.Ltext0
	.long	.LVL116-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL132-.Ltext0
	.long	.LVL133-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL103-.Ltext0
	.long	.LVL113-.Ltext0
	.word	0xb
	.byte	0x8c
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x9f
	.long	.LVL113-.Ltext0
	.long	.LVL114-.Ltext0
	.word	0xd
	.byte	0x8c
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL103-.Ltext0
	.long	.LVL112-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 2
	.long	.LVL113-.Ltext0
	.long	.LVL116-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 2
	.long	.LVL132-.Ltext0
	.long	.LVL133-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 2
	.long	0
	.long	0
.LLST41:
	.long	.LVL106-.Ltext0
	.long	.LVL113-.Ltext0
	.word	0x7
	.byte	0x88
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL135-.Ltext0
	.long	.LVL136-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL136-.Ltext0
	.long	.LFE27-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL135-.Ltext0
	.long	.LVL137-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL137-.Ltext0
	.long	.LFE27-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST44:
	.long	.LFB26-.Ltext0
	.long	.LCFI102-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI102-.Ltext0
	.long	.LCFI103-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI103-.Ltext0
	.long	.LCFI104-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI104-.Ltext0
	.long	.LCFI105-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI105-.Ltext0
	.long	.LCFI106-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI106-.Ltext0
	.long	.LCFI107-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI107-.Ltext0
	.long	.LCFI108-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI108-.Ltext0
	.long	.LCFI109-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI109-.Ltext0
	.long	.LCFI110-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI110-.Ltext0
	.long	.LCFI111-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI111-.Ltext0
	.long	.LCFI112-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI112-.Ltext0
	.long	.LCFI113-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI113-.Ltext0
	.long	.LCFI114-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI114-.Ltext0
	.long	.LCFI115-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI115-.Ltext0
	.long	.LCFI116-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI116-.Ltext0
	.long	.LCFI117-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI117-.Ltext0
	.long	.LCFI118-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI118-.Ltext0
	.long	.LCFI119-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI119-.Ltext0
	.long	.LCFI120-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI120-.Ltext0
	.long	.LCFI121-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 21
	.long	.LCFI121-.Ltext0
	.long	.LCFI122-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 22
	.long	.LCFI122-.Ltext0
	.long	.LCFI123-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 23
	.long	.LCFI123-.Ltext0
	.long	.LCFI124-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 24
	.long	.LCFI124-.Ltext0
	.long	.LCFI125-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 25
	.long	.LCFI125-.Ltext0
	.long	.LCFI126-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 26
	.long	.LCFI126-.Ltext0
	.long	.LCFI127-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 27
	.long	.LCFI127-.Ltext0
	.long	.LFE26-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST45:
	.long	.LFB28-.Ltext0
	.long	.LCFI128-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI128-.Ltext0
	.long	.LCFI129-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI129-.Ltext0
	.long	.LCFI130-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI130-.Ltext0
	.long	.LCFI131-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI131-.Ltext0
	.long	.LFE28-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST46:
	.long	.LVL141-.Ltext0
	.long	.LVL142-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL142-.Ltext0
	.long	.LVL147-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST47:
	.long	.LFB29-.Ltext0
	.long	.LCFI132-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI132-.Ltext0
	.long	.LCFI133-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI133-.Ltext0
	.long	.LCFI134-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI134-.Ltext0
	.long	.LCFI135-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI135-.Ltext0
	.long	.LCFI136-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI136-.Ltext0
	.long	.LCFI137-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI137-.Ltext0
	.long	.LCFI138-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI138-.Ltext0
	.long	.LCFI139-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI139-.Ltext0
	.long	.LCFI140-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI140-.Ltext0
	.long	.LCFI141-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI141-.Ltext0
	.long	.LCFI142-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI142-.Ltext0
	.long	.LCFI143-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI143-.Ltext0
	.long	.LCFI144-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI144-.Ltext0
	.long	.LCFI145-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI145-.Ltext0
	.long	.LCFI146-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI146-.Ltext0
	.long	.LFE29-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST48:
	.long	.LFB31-.Ltext0
	.long	.LCFI147-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI147-.Ltext0
	.long	.LCFI148-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI148-.Ltext0
	.long	.LCFI149-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI149-.Ltext0
	.long	.LCFI150-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI150-.Ltext0
	.long	.LCFI151-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI151-.Ltext0
	.long	.LCFI152-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI152-.Ltext0
	.long	.LCFI153-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI153-.Ltext0
	.long	.LCFI154-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI154-.Ltext0
	.long	.LCFI155-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI155-.Ltext0
	.long	.LCFI156-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI156-.Ltext0
	.long	.LCFI157-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI157-.Ltext0
	.long	.LCFI158-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI158-.Ltext0
	.long	.LFE31-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	0
	.long	0
.LLST49:
	.long	.LVL149-.Ltext0
	.long	.LVL150-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL150-.Ltext0
	.long	.LVL154-.Ltext0
	.word	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x9f
	.long	.LVL154-.Ltext0
	.long	.LVL155-.Ltext0
	.word	0xb
	.byte	0x8c
	.sleb128 0
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL155-.Ltext0
	.long	.LVL156-.Ltext0
	.word	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL153-.Ltext0
	.long	.LVL156-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40400000
	.long	0
	.long	0
.LLST51:
	.long	.LVL153-.Ltext0
	.long	.LVL156-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46bb8000
	.long	0
	.long	0
.LLST52:
	.long	.LVL153-.Ltext0
	.long	.LVL156-.Ltext0
	.word	0x4
	.byte	0xa
	.word	0x5dc0
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LFB14-.Ltext0
	.long	.LCFI159-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI159-.Ltext0
	.long	.LCFI160-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI160-.Ltext0
	.long	.LCFI161-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI161-.Ltext0
	.long	.LCFI162-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LCFI162-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x2
	.byte	0x8c
	.sleb128 24
	.long	0
	.long	0
.LLST54:
	.long	.LVL243-.Ltext0
	.long	.LVL290-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL290-.Ltext0
	.long	.LVL291-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL291-.Ltext0
	.long	.LVL294-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL294-.Ltext0
	.long	.LVL295-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL295-.Ltext0
	.long	.LVL298-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL298-.Ltext0
	.long	.LVL299-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL299-.Ltext0
	.long	.LVL302-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL302-.Ltext0
	.long	.LVL303-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL303-.Ltext0
	.long	.LVL341-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL347-.Ltext0
	.long	.LVL365-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL365-.Ltext0
	.long	.LVL366-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL366-.Ltext0
	.long	.LVL370-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL370-.Ltext0
	.long	.LVL372-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL372-.Ltext0
	.long	.LVL376-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL376-.Ltext0
	.long	.LVL377-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL377-.Ltext0
	.long	.LVL381-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL381-.Ltext0
	.long	.LVL382-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL382-.Ltext0
	.long	.LVL386-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL386-.Ltext0
	.long	.LVL387-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL387-.Ltext0
	.long	.LVL391-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL391-.Ltext0
	.long	.LVL393-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL393-.Ltext0
	.long	.LVL397-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL397-.Ltext0
	.long	.LVL398-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL398-.Ltext0
	.long	.LVL402-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	.LVL402-.Ltext0
	.long	.LVL403-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL403-.Ltext0
	.long	.LVL472-.Ltext0
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST55:
	.long	.LVL164-.Ltext0
	.long	.LVL165-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL165-.Ltext0
	.long	.LVL166-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL166-.Ltext0
	.long	.LVL167-.Ltext0
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL167-.Ltext0
	.long	.LVL168-.Ltext0
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL168-.Ltext0
	.long	.LVL188-.Ltext0
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL189-.Ltext0
	.long	.LVL208-.Ltext0
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL208-.Ltext0
	.long	.LVL210-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL210-.Ltext0
	.long	.LVL221-.Ltext0
	.word	0x1
	.byte	0x5f
	.long	.LVL221-.Ltext0
	.long	.LVL231-.Ltext0
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL177-.Ltext0
	.long	.LVL188-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL189-.Ltext0
	.long	.LVL191-.Ltext0
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL191-.Ltext0
	.long	.LVL194-.Ltext0
	.word	0x1
	.byte	0x61
	.long	.LVL194-.Ltext0
	.long	.LVL195-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL195-.Ltext0
	.long	.LVL197-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL197-.Ltext0
	.long	.LVL237-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL237-.Ltext0
	.long	.LVL238-.Ltext0
	.word	0x9
	.byte	0x7c
	.sleb128 0
	.byte	0x3
	.long	noready_sens
	.byte	0x1c
	.byte	0x9f
	.long	.LVL238-.Ltext0
	.long	.LVL313-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL313-.Ltext0
	.long	.LVL314-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL314-.Ltext0
	.long	.LVL315-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL315-.Ltext0
	.long	.LVL316-.Ltext0
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL316-.Ltext0
	.long	.LVL317-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL322-.Ltext0
	.long	.LVL334-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL334-.Ltext0
	.long	.LVL335-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL338-.Ltext0
	.long	.LVL365-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL365-.Ltext0
	.long	.LVL366-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL366-.Ltext0
	.long	.LVL371-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL371-.Ltext0
	.long	.LVL372-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL372-.Ltext0
	.long	.LVL376-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL376-.Ltext0
	.long	.LVL377-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL377-.Ltext0
	.long	.LVL381-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL381-.Ltext0
	.long	.LVL382-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL382-.Ltext0
	.long	.LVL386-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL386-.Ltext0
	.long	.LVL387-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL387-.Ltext0
	.long	.LVL392-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL392-.Ltext0
	.long	.LVL393-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL393-.Ltext0
	.long	.LVL397-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL397-.Ltext0
	.long	.LVL398-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL398-.Ltext0
	.long	.LVL402-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL402-.Ltext0
	.long	.LVL403-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL403-.Ltext0
	.long	.LVL420-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL420-.Ltext0
	.long	.LVL422-.Ltext0
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL422-.Ltext0
	.long	.LVL442-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL442-.Ltext0
	.long	.LVL444-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL444-.Ltext0
	.long	.LVL445-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL445-.Ltext0
	.long	.LVL447-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL447-.Ltext0
	.long	.LVL448-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL448-.Ltext0
	.long	.LVL450-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL450-.Ltext0
	.long	.LVL474-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	.LVL474-.Ltext0
	.long	.LVL475-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL476-.Ltext0
	.long	.LVL477-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL477-.Ltext0
	.long	.LVL485-.Ltext0
	.word	0x9
	.byte	0x7c
	.sleb128 0
	.byte	0x3
	.long	noready_sens
	.byte	0x1c
	.byte	0x9f
	.long	.LVL485-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	0
	.long	0
.LLST57:
	.long	.LVL178-.Ltext0
	.long	.LVL188-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL189-.Ltext0
	.long	.LVL237-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL237-.Ltext0
	.long	.LVL442-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -4
	.long	.LVL442-.Ltext0
	.long	.LVL444-.Ltext0
	.word	0x2
	.byte	0x47
	.byte	0x9f
	.long	.LVL444-.Ltext0
	.long	.LVL445-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -4
	.long	.LVL445-.Ltext0
	.long	.LVL447-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.long	.LVL447-.Ltext0
	.long	.LVL448-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -4
	.long	.LVL448-.Ltext0
	.long	.LVL450-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.long	.LVL450-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -4
	.long	0
	.long	0
.LLST58:
	.long	.LVL177-.Ltext0
	.long	.LVL188-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL189-.Ltext0
	.long	.LVL237-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL237-.Ltext0
	.long	.LVL290-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL290-.Ltext0
	.long	.LVL291-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL291-.Ltext0
	.long	.LVL294-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL294-.Ltext0
	.long	.LVL295-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL295-.Ltext0
	.long	.LVL298-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL298-.Ltext0
	.long	.LVL299-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL299-.Ltext0
	.long	.LVL302-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL302-.Ltext0
	.long	.LVL303-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL303-.Ltext0
	.long	.LVL312-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL312-.Ltext0
	.long	.LVL318-1-.Ltext0
	.word	0x1
	.byte	0x6b
	.long	.LVL318-1-.Ltext0
	.long	.LVL329-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL329-.Ltext0
	.long	.LVL330-.Ltext0
	.word	0x1
	.byte	0x6b
	.long	.LVL330-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	0
	.long	0
.LLST59:
	.long	.LVL178-.Ltext0
	.long	.LVL188-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL189-.Ltext0
	.long	.LVL237-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL237-.Ltext0
	.long	.LVL249-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL249-.Ltext0
	.long	.LVL250-.Ltext0
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	.LVL250-.Ltext0
	.long	.LVL271-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL271-.Ltext0
	.long	.LVL272-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL272-.Ltext0
	.long	.LVL273-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL273-.Ltext0
	.long	.LVL275-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL275-.Ltext0
	.long	.LVL276-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL276-.Ltext0
	.long	.LVL277-1-.Ltext0
	.word	0x1
	.byte	0x6b
	.long	.LVL277-1-.Ltext0
	.long	.LVL280-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL280-.Ltext0
	.long	.LVL281-.Ltext0
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL281-.Ltext0
	.long	.LVL282-1-.Ltext0
	.word	0x1
	.byte	0x6b
	.long	.LVL282-1-.Ltext0
	.long	.LVL283-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL283-.Ltext0
	.long	.LVL284-.Ltext0
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL284-.Ltext0
	.long	.LVL285-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL285-.Ltext0
	.long	.LVL286-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL286-.Ltext0
	.long	.LVL287-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL287-.Ltext0
	.long	.LVL290-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL290-.Ltext0
	.long	.LVL291-.Ltext0
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL291-.Ltext0
	.long	.LVL292-1-.Ltext0
	.word	0x1
	.byte	0x6a
	.long	.LVL292-1-.Ltext0
	.long	.LVL294-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL294-.Ltext0
	.long	.LVL295-.Ltext0
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL295-.Ltext0
	.long	.LVL296-1-.Ltext0
	.word	0x1
	.byte	0x6a
	.long	.LVL296-1-.Ltext0
	.long	.LVL298-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL298-.Ltext0
	.long	.LVL299-.Ltext0
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL299-.Ltext0
	.long	.LVL300-1-.Ltext0
	.word	0x1
	.byte	0x6a
	.long	.LVL300-1-.Ltext0
	.long	.LVL302-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL302-.Ltext0
	.long	.LVL303-.Ltext0
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL303-.Ltext0
	.long	.LVL304-1-.Ltext0
	.word	0x1
	.byte	0x6a
	.long	.LVL304-1-.Ltext0
	.long	.LVL320-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL320-.Ltext0
	.long	.LVL322-.Ltext0
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL322-.Ltext0
	.long	.LVL328-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL328-.Ltext0
	.long	.LVL329-.Ltext0
	.word	0x1
	.byte	0x6a
	.long	.LVL329-.Ltext0
	.long	.LVL331-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL331-.Ltext0
	.long	.LVL332-.Ltext0
	.word	0x1
	.byte	0x6a
	.long	.LVL332-.Ltext0
	.long	.LVL359-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL359-.Ltext0
	.long	.LVL360-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL360-.Ltext0
	.long	.LVL361-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL361-.Ltext0
	.long	.LVL365-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL365-.Ltext0
	.long	.LVL366-.Ltext0
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL366-.Ltext0
	.long	.LVL367-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL367-1-.Ltext0
	.long	.LVL370-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL370-.Ltext0
	.long	.LVL372-.Ltext0
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL372-.Ltext0
	.long	.LVL373-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL373-1-.Ltext0
	.long	.LVL376-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL376-.Ltext0
	.long	.LVL377-.Ltext0
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL377-.Ltext0
	.long	.LVL378-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL378-1-.Ltext0
	.long	.LVL381-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL381-.Ltext0
	.long	.LVL382-.Ltext0
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL382-.Ltext0
	.long	.LVL383-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL383-1-.Ltext0
	.long	.LVL386-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL386-.Ltext0
	.long	.LVL387-.Ltext0
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL387-.Ltext0
	.long	.LVL388-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL388-1-.Ltext0
	.long	.LVL391-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL391-.Ltext0
	.long	.LVL393-.Ltext0
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL393-.Ltext0
	.long	.LVL394-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL394-1-.Ltext0
	.long	.LVL397-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL397-.Ltext0
	.long	.LVL398-.Ltext0
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL398-.Ltext0
	.long	.LVL399-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL399-1-.Ltext0
	.long	.LVL402-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL402-.Ltext0
	.long	.LVL403-.Ltext0
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL403-.Ltext0
	.long	.LVL404-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL404-1-.Ltext0
	.long	.LVL405-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL405-.Ltext0
	.long	.LVL406-.Ltext0
	.word	0x2
	.byte	0x3b
	.byte	0x9f
	.long	.LVL406-.Ltext0
	.long	.LVL407-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL407-1-.Ltext0
	.long	.LVL416-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL416-.Ltext0
	.long	.LVL417-.Ltext0
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL417-.Ltext0
	.long	.LVL419-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL419-.Ltext0
	.long	.LVL425-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL425-.Ltext0
	.long	.LVL426-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL426-1-.Ltext0
	.long	.LVL432-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL432-.Ltext0
	.long	.LVL433-.Ltext0
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL433-.Ltext0
	.long	.LVL439-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL439-.Ltext0
	.long	.LVL440-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL440-.Ltext0
	.long	.LVL441-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL441-.Ltext0
	.long	.LVL443-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL443-.Ltext0
	.long	.LVL444-.Ltext0
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL444-.Ltext0
	.long	.LVL445-1-.Ltext0
	.word	0x1
	.byte	0x63
	.long	.LVL445-1-.Ltext0
	.long	.LVL446-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL446-.Ltext0
	.long	.LVL447-.Ltext0
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL447-.Ltext0
	.long	.LVL448-1-.Ltext0
	.word	0x1
	.byte	0x63
	.long	.LVL448-1-.Ltext0
	.long	.LVL449-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL449-.Ltext0
	.long	.LVL450-.Ltext0
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL450-.Ltext0
	.long	.LVL451-1-.Ltext0
	.word	0x1
	.byte	0x63
	.long	.LVL451-1-.Ltext0
	.long	.LVL453-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL453-.Ltext0
	.long	.LVL454-1-.Ltext0
	.word	0x1
	.byte	0x63
	.long	.LVL454-1-.Ltext0
	.long	.LVL456-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL456-.Ltext0
	.long	.LVL457-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL457-.Ltext0
	.long	.LVL463-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL463-.Ltext0
	.long	.LVL464-.Ltext0
	.word	0x1
	.byte	0x63
	.long	.LVL464-.Ltext0
	.long	.LVL466-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL467-.Ltext0
	.long	.LVL468-.Ltext0
	.word	0x1
	.byte	0x6a
	.long	.LVL468-.Ltext0
	.long	.LVL469-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL469-.Ltext0
	.long	.LVL470-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL471-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	0
	.long	0
.LLST60:
	.long	.LVL177-.Ltext0
	.long	.LVL188-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL189-.Ltext0
	.long	.LVL237-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL237-.Ltext0
	.long	.LVL275-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL275-.Ltext0
	.long	.LVL276-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL276-.Ltext0
	.long	.LVL290-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL290-.Ltext0
	.long	.LVL291-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL291-.Ltext0
	.long	.LVL294-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL294-.Ltext0
	.long	.LVL295-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL295-.Ltext0
	.long	.LVL298-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL298-.Ltext0
	.long	.LVL299-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL299-.Ltext0
	.long	.LVL302-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL302-.Ltext0
	.long	.LVL303-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL303-.Ltext0
	.long	.LVL305-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL305-.Ltext0
	.long	.LVL306-.Ltext0
	.word	0x1
	.byte	0x67
	.long	.LVL306-.Ltext0
	.long	.LVL321-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL322-.Ltext0
	.long	.LVL327-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL328-.Ltext0
	.long	.LVL365-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL365-.Ltext0
	.long	.LVL366-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL366-.Ltext0
	.long	.LVL371-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL371-.Ltext0
	.long	.LVL372-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL372-.Ltext0
	.long	.LVL376-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL376-.Ltext0
	.long	.LVL377-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL377-.Ltext0
	.long	.LVL381-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL381-.Ltext0
	.long	.LVL382-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL382-.Ltext0
	.long	.LVL386-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL386-.Ltext0
	.long	.LVL387-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL387-.Ltext0
	.long	.LVL392-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL392-.Ltext0
	.long	.LVL393-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL393-.Ltext0
	.long	.LVL397-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL397-.Ltext0
	.long	.LVL398-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL398-.Ltext0
	.long	.LVL402-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL402-.Ltext0
	.long	.LVL403-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL403-.Ltext0
	.long	.LVL424-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL424-.Ltext0
	.long	.LVL425-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL425-.Ltext0
	.long	.LVL428-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL428-.Ltext0
	.long	.LVL433-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL433-.Ltext0
	.long	.LVL442-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL442-.Ltext0
	.long	.LVL444-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL444-.Ltext0
	.long	.LVL445-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL445-.Ltext0
	.long	.LVL447-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL447-.Ltext0
	.long	.LVL448-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL448-.Ltext0
	.long	.LVL450-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL450-.Ltext0
	.long	.LVL452-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL452-.Ltext0
	.long	.LVL453-.Ltext0
	.word	0x1
	.byte	0x69
	.long	.LVL453-.Ltext0
	.long	.LVL455-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL455-.Ltext0
	.long	.LVL462-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL462-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	0
	.long	0
.LLST61:
	.long	.LVL178-.Ltext0
	.long	.LVL188-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.long	.LVL189-.Ltext0
	.long	.LVL237-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.long	.LVL237-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST62:
	.long	.LVL178-.Ltext0
	.long	.LVL188-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.long	.LVL189-.Ltext0
	.long	.LVL237-.Ltext0
	.word	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.long	.LVL237-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST63:
	.long	.LVL178-.Ltext0
	.long	.LVL188-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL189-.Ltext0
	.long	.LVL237-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL237-.Ltext0
	.long	.LVL290-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL290-.Ltext0
	.long	.LVL291-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL291-.Ltext0
	.long	.LVL294-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL294-.Ltext0
	.long	.LVL295-.Ltext0
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL295-.Ltext0
	.long	.LVL298-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL298-.Ltext0
	.long	.LVL299-.Ltext0
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL299-.Ltext0
	.long	.LVL302-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL302-.Ltext0
	.long	.LVL303-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL303-.Ltext0
	.long	.LVL365-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL365-.Ltext0
	.long	.LVL366-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL366-.Ltext0
	.long	.LVL370-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL370-.Ltext0
	.long	.LVL372-.Ltext0
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL372-.Ltext0
	.long	.LVL376-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL376-.Ltext0
	.long	.LVL377-.Ltext0
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL377-.Ltext0
	.long	.LVL381-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL381-.Ltext0
	.long	.LVL382-.Ltext0
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL382-.Ltext0
	.long	.LVL386-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL386-.Ltext0
	.long	.LVL387-.Ltext0
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL387-.Ltext0
	.long	.LVL391-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL391-.Ltext0
	.long	.LVL393-.Ltext0
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL393-.Ltext0
	.long	.LVL397-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL397-.Ltext0
	.long	.LVL398-.Ltext0
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL398-.Ltext0
	.long	.LVL402-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL402-.Ltext0
	.long	.LVL403-.Ltext0
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	.LVL403-.Ltext0
	.long	.LVL405-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL405-.Ltext0
	.long	.LVL406-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL406-.Ltext0
	.long	.LVL439-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL439-.Ltext0
	.long	.LVL440-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL440-.Ltext0
	.long	.LVL441-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL443-.Ltext0
	.long	.LVL444-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL444-.Ltext0
	.long	.LVL446-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL446-.Ltext0
	.long	.LVL447-.Ltext0
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL447-.Ltext0
	.long	.LVL449-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL449-.Ltext0
	.long	.LVL450-.Ltext0
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL450-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	0
	.long	0
.LLST64:
	.long	.LVL178-.Ltext0
	.long	.LVL188-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL189-.Ltext0
	.long	.LVL237-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL237-.Ltext0
	.long	.LVL290-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -5
	.long	.LVL290-.Ltext0
	.long	.LVL291-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL291-.Ltext0
	.long	.LVL294-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -5
	.long	.LVL294-.Ltext0
	.long	.LVL295-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL295-.Ltext0
	.long	.LVL298-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -5
	.long	.LVL298-.Ltext0
	.long	.LVL299-.Ltext0
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL299-.Ltext0
	.long	.LVL302-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -5
	.long	.LVL302-.Ltext0
	.long	.LVL303-.Ltext0
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL303-.Ltext0
	.long	.LFE14-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -5
	.long	0
	.long	0
.LLST65:
	.long	.LVL207-.Ltext0
	.long	.LVL209-.Ltext0
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL209-.Ltext0
	.long	.LVL210-.Ltext0
	.word	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.long	.LVL221-.Ltext0
	.long	.LVL226-.Ltext0
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL307-.Ltext0
	.long	.LVL308-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL322-.Ltext0
	.long	.LVL323-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL427-.Ltext0
	.long	.LVL429-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL429-.Ltext0
	.long	.LVL430-.Ltext0
	.word	0x8
	.byte	0x92
	.uleb128 0x20
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL430-.Ltext0
	.long	.LVL431-.Ltext0
	.word	0x8
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL431-.Ltext0
	.long	.LVL432-1-.Ltext0
	.word	0x8
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL455-.Ltext0
	.long	.LVL458-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST66:
	.long	.LVL191-.Ltext0
	.long	.LVL193-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40400000
	.long	0
	.long	0
.LLST67:
	.long	.LVL191-.Ltext0
	.long	.LVL193-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46bb8000
	.long	0
	.long	0
.LLST68:
	.long	.LVL191-.Ltext0
	.long	.LVL193-.Ltext0
	.word	0x4
	.byte	0xa
	.word	0x5dc0
	.byte	0x9f
	.long	0
	.long	0
.LLST69:
	.long	.LVL269-.Ltext0
	.long	.LVL270-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST70:
	.long	.LVL269-.Ltext0
	.long	.LVL270-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4af42400
	.long	0
	.long	0
.LLST71:
	.long	.LVL269-.Ltext0
	.long	.LVL270-.Ltext0
	.word	0x6
	.byte	0xc
	.long	0x7a1200
	.byte	0x9f
	.long	0
	.long	0
.LLST72:
	.long	.LVL338-.Ltext0
	.long	.LVL339-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST73:
	.long	.LVL338-.Ltext0
	.long	.LVL339-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4af42400
	.long	0
	.long	0
.LLST74:
	.long	.LVL338-.Ltext0
	.long	.LVL339-.Ltext0
	.word	0x6
	.byte	0xc
	.long	0x7a1200
	.byte	0x9f
	.long	0
	.long	0
.LLST75:
	.long	.LVL357-.Ltext0
	.long	.LVL358-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST76:
	.long	.LVL357-.Ltext0
	.long	.LVL358-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4af42400
	.long	0
	.long	0
.LLST77:
	.long	.LVL357-.Ltext0
	.long	.LVL358-.Ltext0
	.word	0x6
	.byte	0xc
	.long	0x7a1200
	.byte	0x9f
	.long	0
	.long	0
.LLST78:
	.long	.LVL417-.Ltext0
	.long	.LVL418-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST79:
	.long	.LVL417-.Ltext0
	.long	.LVL418-.Ltext0
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4af42400
	.long	0
	.long	0
.LLST80:
	.long	.LVL417-.Ltext0
	.long	.LVL418-.Ltext0
	.word	0x6
	.byte	0xc
	.long	0x7a1200
	.byte	0x9f
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
.LASF232:
	.string	"printf"
.LASF39:
	.string	"MMENU_SHOW"
.LASF229:
	.string	"DS18X20_start_meas"
.LASF234:
	.string	"malloc"
.LASF31:
	.string	"body"
.LASF178:
	.string	"MainLoopPhase"
.LASF73:
	.string	"MTIME_EXIT"
.LASF15:
	.string	"size_t"
.LASF239:
	.string	"__eerd_block_m328p"
.LASF175:
	.string	"startRegulatorStr"
.LASF173:
	.string	"clearStr"
.LASF112:
	.string	"resetSensNumber"
.LASF66:
	.string	"ENTER_TEMP"
.LASF170:
	.string	"DS1822"
.LASF47:
	.string	"MTELPHONE_SET"
.LASF134:
	.string	"lcd_str"
.LASF213:
	.string	"eSensorIDs"
.LASF127:
	.string	"gSensNumb"
.LASF228:
	.string	"LCD_Update"
.LASF208:
	.string	"TempOutDoorMax"
.LASF235:
	.string	"strncpy"
.LASF60:
	.string	"OUTDOORTEMPMAX"
.LASF81:
	.string	"TELPRNSTR"
.LASF16:
	.string	"unget"
.LASF55:
	.string	"SN_EXIT"
.LASF264:
	.string	"../main.c"
.LASF11:
	.string	"long long unsigned int"
.LASF251:
	.string	"LcdPutInt"
.LASF207:
	.string	"TempOutDoorMin"
.LASF186:
	.string	"tAsync"
.LASF37:
	.string	"DISPLAY_KBD"
.LASF101:
	.string	"test_SN_sensors"
.LASF59:
	.string	"OUTDOORTEMPMIN"
.LASF256:
	.string	"LcdFirstLine"
.LASF181:
	.string	"mausure_temperature_ok"
.LASF258:
	.string	"__builtin_putchar"
.LASF162:
	.string	"alarmStr"
.LASF238:
	.string	"free"
.LASF194:
	.string	"rTempInDoorMax"
.LASF220:
	.string	"OWNext"
.LASF117:
	.string	"sms_powerGone"
.LASF123:
	.string	"mtemp_hour"
.LASF33:
	.string	"stat"
.LASF4:
	.string	"int16_t"
.LASF201:
	.string	"nSensors"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF145:
	.string	"supplyStr"
.LASF236:
	.string	"strncpy_P"
.LASF62:
	.string	"SUPPLYTEMPMAX"
.LASF166:
	.string	"temperStr"
.LASF126:
	.string	"wStr"
.LASF216:
	.string	"temp_for_hour"
.LASF193:
	.string	"rTempInDoorMin"
.LASF136:
	.string	"TempAct"
.LASF102:
	.string	"getTemperature"
.LASF148:
	.string	"checksumStr"
.LASF90:
	.string	"__ticks_dc"
.LASF243:
	.string	"abort"
.LASF22:
	.string	"second"
.LASF27:
	.string	"year"
.LASF68:
	.string	"SAVE_EEPROM"
.LASF104:
	.string	"sensorID"
.LASF204:
	.string	"rSensorIDs"
.LASF7:
	.string	"long int"
.LASF19:
	.string	"udata"
.LASF254:
	.string	"ExtInt0Enable"
.LASF107:
	.string	"inTA"
.LASF172:
	.string	"telStr"
.LASF168:
	.string	"DS18S20"
.LASF240:
	.string	"__eewr_block_m328p"
.LASF269:
	.string	"putchar"
.LASF75:
	.string	"REORDER_NWSENS2"
.LASF5:
	.string	"uint16_t"
.LASF80:
	.string	"EXIT_NWSENS"
.LASF155:
	.string	"diffStr"
.LASF222:
	.string	"LCD_draw_string2"
.LASF41:
	.string	"MVIEW_SNs"
.LASF42:
	.string	"MASSIGN"
.LASF141:
	.string	"nextStr"
.LASF99:
	.string	"ShutOffADC"
.LASF98:
	.string	"DisplayTemperature"
.LASF180:
	.string	"MenuPhase"
.LASF21:
	.string	"byte"
.LASF188:
	.string	"TimeKeyPressed"
.LASF132:
	.string	"noready_sens"
.LASF154:
	.string	"tempStr"
.LASF89:
	.string	"__tmp"
.LASF187:
	.string	"wait_powergone"
.LASF92:
	.string	"nSenss"
.LASF200:
	.string	"rTempDiffSupplyReturnMax"
.LASF150:
	.string	"viewStr"
.LASF105:
	.string	"temp"
.LASF76:
	.string	"ASSIGN_NEWSENS"
.LASF205:
	.string	"TempInDoorMin"
.LASF252:
	.string	"LcdNextStr"
.LASF156:
	.string	"toeepromStr"
.LASF26:
	.string	"month"
.LASF268:
	.string	"GetKeyCode"
.LASF6:
	.string	"unsigned int"
.LASF74:
	.string	"REORDER_NWSENS"
.LASF113:
	.string	"sensNumber"
.LASF9:
	.string	"long unsigned int"
.LASF221:
	.string	"LCD_draw_string3"
.LASF77:
	.string	"ASSIGN_NEWSENS2"
.LASF169:
	.string	"DS18B20"
.LASF97:
	.string	"LcdPowerGoneStr"
.LASF233:
	.string	"__eeupd_block_m328p"
.LASF86:
	.string	"_delay_ms"
.LASF199:
	.string	"rTempDiffSupplyReturnMin"
.LASF140:
	.string	"exitStr"
.LASF167:
	.string	"Sensorsfound"
.LASF18:
	.string	"size"
.LASF25:
	.string	"date"
.LASF53:
	.string	"SUPPLY"
.LASF215:
	.string	"telNumber"
.LASF151:
	.string	"assignStr"
.LASF138:
	.string	"helloStr1"
.LASF139:
	.string	"helloStr2"
.LASF142:
	.string	"snStr"
.LASF88:
	.string	"__ms"
.LASF248:
	.string	"InitAdc"
.LASF111:
	.string	"sensID"
.LASF96:
	.string	"copyrSNsTogSNs"
.LASF32:
	.string	"number"
.LASF227:
	.string	"LCD_Clear"
.LASF191:
	.string	"WATCHDOG_STATE"
.LASF223:
	.string	"DS18X20_format_from_decicelsius"
.LASF118:
	.string	"ClearEEPROMSensCodes"
.LASF64:
	.string	"DIFFTEMPMAX"
.LASF226:
	.string	"printf_P"
.LASF176:
	.string	"startPowerGoneStr"
.LASF135:
	.string	"gSensorIDs"
.LASF246:
	.string	"ow_set_bus"
.LASF45:
	.string	"MVIEW_TIME"
.LASF230:
	.string	"DS18X20_read_decicelsius"
.LASF114:
	.string	"sms_noready_sens"
.LASF218:
	.string	"CheckNoReadySNCounter"
.LASF163:
	.string	"sensorStr"
.LASF63:
	.string	"DIFFTEMPMIN"
.LASF84:
	.string	"EXITTELSET"
.LASF184:
	.string	"extstate"
.LASF209:
	.string	"TempSupplyMin"
.LASF171:
	.string	"crcErrStr"
.LASF257:
	.string	"TestNoReadySensors"
.LASF124:
	.string	"ActSN_next"
.LASF265:
	.string	"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/Debug"
.LASF121:
	.string	"ActSN"
.LASF34:
	.string	"sizetype"
.LASF106:
	.string	"manageTemperatureEvent"
.LASF36:
	.string	"DISPLAY_MAINMENU"
.LASF182:
	.string	"__iob"
.LASF211:
	.string	"TempDiffSupplyReturnMin"
.LASF48:
	.string	"CLRIDS_EEPROM"
.LASF197:
	.string	"rTempSupplyMin"
.LASF198:
	.string	"rTempSupplyMax"
.LASF71:
	.string	"MSET_SECOND"
.LASF185:
	.string	"powergone"
.LASF225:
	.string	"LCD_set_position2"
.LASF262:
	.string	"LCD_setTextSize"
.LASF206:
	.string	"TempInDoorMax"
.LASF40:
	.string	"MSNs_SET"
.LASF100:
	.string	"DoWatchDog"
.LASF28:
	.string	"time"
.LASF153:
	.string	"maxStr"
.LASF24:
	.string	"hour"
.LASF195:
	.string	"rTempOutDoorMin"
.LASF164:
	.string	"absenceStr"
.LASF146:
	.string	"returnStr"
.LASF65:
	.string	"TEMP_EXIT"
.LASF267:
	.string	"ManageOutdoorTempEvent"
.LASF149:
	.string	"setStr"
.LASF56:
	.string	"ENTER_SN"
.LASF70:
	.string	"MSET_MINUTE"
.LASF212:
	.string	"TempDiffSupplyReturnMax"
.LASF116:
	.string	"sms_pumpStarted"
.LASF237:
	.string	"gsm_send_sms"
.LASF78:
	.string	"GETKEY_NWSENS"
.LASF143:
	.string	"indoorStr"
.LASF242:
	.string	"__builtin_avr_delay_cycles"
.LASF54:
	.string	"RETURN"
.LASF85:
	.string	"_delay_loop_1"
.LASF147:
	.string	"nsupdownStr"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"__file"
.LASF214:
	.string	"etelNumber"
.LASF217:
	.string	"PrefHeatting"
.LASF131:
	.string	"btest_new_sensors"
.LASF129:
	.string	"sn_noready_counter"
.LASF174:
	.string	"errStr"
.LASF165:
	.string	"missingStr"
.LASF61:
	.string	"SUPPLYTEMPMIN"
.LASF58:
	.string	"INDOORTEMPMAX"
.LASF144:
	.string	"outdoorStr"
.LASF35:
	.string	"DISPLAY_TEMPERATURE"
.LASF103:
	.string	"decicelsius"
.LASF261:
	.string	"__eeupd_byte_m328p"
.LASF83:
	.string	"TELTOEEPROM"
.LASF38:
	.string	"ENTER_NEW_SENSOR"
.LASF245:
	.string	"WDT_off"
.LASF109:
	.string	"checkPresenceSN"
.LASF57:
	.string	"INDOORTEMPMIN"
.LASF241:
	.string	"LCD_initialize2"
.LASF255:
	.string	"ExtInt1Enable"
.LASF253:
	.string	"DS18X20_get_power_status"
.LASF87:
	.string	"__count"
.LASF250:
	.string	"init_clock"
.LASF8:
	.string	"uint32_t"
.LASF122:
	.string	"mtemp_minute"
.LASF82:
	.string	"TELENTERNUM"
.LASF160:
	.string	"hourStr"
.LASF130:
	.string	"nwSen_Phase"
.LASF50:
	.string	"MEXIT"
.LASF51:
	.string	"INDOOR"
.LASF247:
	.string	"uart_init"
.LASF20:
	.string	"char"
.LASF244:
	.string	"__eerd_byte_m328p"
.LASF183:
	.string	"ROM_NO"
.LASF72:
	.string	"ENTER_NUMB"
.LASF179:
	.string	"LastPhase"
.LASF52:
	.string	"OUTDOOR"
.LASF177:
	.string	"notReadyStr"
.LASF260:
	.string	"crc8"
.LASF159:
	.string	"minuteStr"
.LASF12:
	.string	"high"
.LASF189:
	.string	"__fuse"
.LASF224:
	.string	"memcmp"
.LASF49:
	.string	"CLRIDS_EEPROM2"
.LASF249:
	.string	"InitAnalogComp"
.LASF190:
	.string	"ReadyWATCHDOG"
.LASF108:
	.string	"ValidSensorCode"
.LASF14:
	.string	"__fuse_t"
.LASF13:
	.string	"extended"
.LASF158:
	.string	"timeStr"
.LASF0:
	.string	"int8_t"
.LASF43:
	.string	"MSETTEMP"
.LASF157:
	.string	"saveStr"
.LASF210:
	.string	"TempSupplyMax"
.LASF23:
	.string	"minute"
.LASF263:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega328p -g2 -gdwarf-2 -g -O1 -std=gnu99 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
.LASF196:
	.string	"rTempOutDoorMax"
.LASF202:
	.string	"temper"
.LASF133:
	.string	"oldDisplaySens"
.LASF93:
	.string	"rslt"
.LASF69:
	.string	"MSET_HOUR"
.LASF203:
	.string	"wbuffer"
.LASF67:
	.string	"TOEEPROM"
.LASF46:
	.string	"MVIEWTEMPR"
.LASF94:
	.string	"retcode"
.LASF128:
	.string	"sn_presence"
.LASF1:
	.string	"uint8_t"
.LASF152:
	.string	"minStr"
.LASF231:
	.string	"atoi"
.LASF17:
	.string	"flags"
.LASF95:
	.string	"LcdPutTemp"
.LASF137:
	.string	"okStr"
.LASF115:
	.string	"psms"
.LASF161:
	.string	"secondStr"
.LASF219:
	.string	"OWFirst"
.LASF120:
	.string	"nSNpos"
.LASF110:
	.string	"manage_new_sensors"
.LASF79:
	.string	"ASSIGN_TOEEPROM"
.LASF44:
	.string	"MSET_TIME"
.LASF119:
	.string	"main"
.LASF30:
	.string	"struct_sms"
.LASF91:
	.string	"double"
.LASF266:
	.string	"search_sensors_n"
.LASF192:
	.string	"TLastWatchDog"
.LASF125:
	.string	"aSN_num"
.LASF259:
	.string	"ReturnXPos"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
