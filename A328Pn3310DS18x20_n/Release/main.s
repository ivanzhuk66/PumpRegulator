	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.search_sensors_n,"ax",@progbits
	.type	search_sensors_n, @function
search_sensors_n:
	push r8
	push r9
	push r11
	push r12
	push r14
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	cbi 0xb,5
	ldi r24,lo8(10)
/* #APP */
 ;  83 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
/* #NOAPP */
	mov __tmp_reg__,r31
	ldi r31,lo8(3)
	mov r12,r31
	mov r31,__tmp_reg__
	mov r11,__zero_reg__
	set
	clr r14
	bld r14,3
	mov __tmp_reg__,r31
	ldi r31,lo8(gSensorIDs+8)
	mov r8,r31
	ldi r31,hi8(gSensorIDs+8)
	mov r9,r31
	mov r31,__tmp_reg__
	ldi r16,lo8(1)
.L6:
	call OWFirst
	tst r24
	breq .L7
	ldi r30,lo8(ROM_NO)
	ldi r31,hi8(ROM_NO)
	ldi r26,lo8(gSensorIDs)
	ldi r27,hi8(gSensorIDs)
	mov r24,r14
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	movw r28,r8
	mov r17,r16
	rjmp .L3
.L5:
	ldi r30,lo8(ROM_NO)
	ldi r31,hi8(ROM_NO)
	movw r26,r28
	mov r24,r14
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	subi r17,lo8(-(1))
	adiw r28,8
	cpi r17,lo8(4)
	breq .L4
.L3:
	call OWNext
	cpse r24,__zero_reg__
	rjmp .L5
	rjmp .L2
.L7:
	mov r17,r11
.L2:
	dec r12
	brne .L6
.L4:
	sbi 0xb,5
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r14
	pop r12
	pop r11
	pop r9
	pop r8
	ret
	.size	search_sensors_n, .-search_sensors_n
	.section	.text.LcdPutTemp,"ax",@progbits
.global	LcdPutTemp
	.type	LcdPutTemp, @function
LcdPutTemp:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	ldi r20,lo8(10)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call DS18X20_format_from_decicelsius
	ldi r24,lo8(__c.2783)
	ldi r25,hi8(__c.2783)
	call LCD_draw_string3
	movw r24,r28
	adiw r24,1
	call LCD_draw_string2
	ldi r24,lo8(__c.2785)
	ldi r25,hi8(__c.2785)
	call LCD_draw_string3
/* epilogue start */
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	LcdPutTemp, .-LcdPutTemp
	.section	.text.ShutOffADC,"ax",@progbits
.global	ShutOffADC
	.type	ShutOffADC, @function
ShutOffADC:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(-128)
	out 0x30,r24
	sts 122,__zero_reg__
	ldi r24,lo8(63)
	sts 126,r24
	ldi r24,lo8(3)
	sts 127,r24
	ret
	.size	ShutOffADC, .-ShutOffADC
	.section	.text.test_SN_sensors,"ax",@progbits
.global	test_SN_sensors
	.type	test_SN_sensors, @function
test_SN_sensors:
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	lds r28,rSensorIDs
	lds r29,rSensorIDs+1
	ldi r16,0
	ldi r17,0
	mov r15,__zero_reg__
	rjmp .L11
.L15:
	mov r17,r15
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
	or r24,r25
	breq .L12
	subi r17,lo8(-(1))
	cpi r17,lo8(4)
	brlt .L11
	mov r24,r16
	rjmp .L16
.L12:
	subi r16,lo8(-(1))
	cpi r16,lo8(4)
	brlt .L15
	ldi r24,lo8(99)
.L16:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
	.size	test_SN_sensors, .-test_SN_sensors
	.section	.text.copyrSNsTogSNs,"ax",@progbits
.global	copyrSNsTogSNs
	.type	copyrSNsTogSNs, @function
copyrSNsTogSNs:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,0
	ldi r25,0
	ldi r18,lo8(8)
.L19:
	movw r26,r24
	subi r26,lo8(-(gSensorIDs))
	sbci r27,hi8(-(gSensorIDs))
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
	cpi r24,32
	cpc r25,__zero_reg__
	brne .L19
/* epilogue start */
	ret
	.size	copyrSNsTogSNs, .-copyrSNsTogSNs
	.section	.text.LcdPowerGoneStr,"ax",@progbits
.global	LcdPowerGoneStr
	.type	LcdPowerGoneStr, @function
LcdPowerGoneStr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call LCD_Clear
	ldi r22,lo8(2)
	ldi r24,0
	call LCD_set_position2
	ldi r24,lo8(startPowerGoneStr)
	ldi r25,hi8(startPowerGoneStr)
	push r25
	push r24
	ldi r24,lo8(__c.3076)
	ldi r25,hi8(__c.3076)
	push r25
	push r24
	call printf_P
	call LCD_Update
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
	ret
	.size	LcdPowerGoneStr, .-LcdPowerGoneStr
	.section	.text.DisplayTemperature,"ax",@progbits
.global	DisplayTemperature
	.type	DisplayTemperature, @function
DisplayTemperature:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
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
	ld r18,Z+
	cpi r18,lo8(127)
	breq .L23
	subi r28,lo8(-(1))
.L23:
	cp r30,r24
	cpc r31,r25
	brne .L25
	lds r24,oldDisplaySens
	cp r28,r24
	brsh .L26
	call LCD_Clear
	rjmp .L27
.L26:
	call LcdFirstLine
.L27:
	sts oldDisplaySens,r28
	lds r24,tAsync
	push __zero_reg__
	push r24
	lds r24,tAsync+1
	push __zero_reg__
	push r24
	lds r24,tAsync+2
	push __zero_reg__
	push r24
	ldi r24,lo8(__c.3086)
	ldi r25,hi8(__c.3086)
	push r25
	push r24
	call printf_P
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
	lds r24,sn_presence
	tst r24
	breq .L28
	lds r18,temper
	cpi r18,lo8(127)
	breq .L28
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	ldi r24,lo8(__c.3088)
	ldi r25,hi8(__c.3088)
	push r25
	push r24
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L28:
	lds r24,sn_presence+1
	tst r24
	breq .L29
	lds r18,temper+1
	cpi r18,lo8(127)
	breq .L29
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
	push r24
	ldi r24,lo8(__c.3090)
	ldi r25,hi8(__c.3090)
	push r25
	push r24
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L29:
	lds r24,sn_presence+2
	tst r24
	breq .L30
	lds r18,temper+2
	cpi r18,lo8(127)
	breq .L30
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
	push r24
	ldi r24,lo8(__c.3092)
	ldi r25,hi8(__c.3092)
	push r25
	push r24
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L30:
	lds r24,sn_presence+3
	tst r24
	breq .L31
	lds r18,temper+3
	cpi r18,lo8(127)
	breq .L31
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	ldi r24,lo8(returnStr)
	ldi r25,hi8(returnStr)
	push r25
	push r24
	ldi r24,lo8(__c.3094)
	ldi r25,hi8(__c.3094)
	push r25
	push r24
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L31:
	sts mausure_temperature_ok,__zero_reg__
	rjmp .L21
.L22:
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
	pop r28
	ret
	.size	DisplayTemperature, .-DisplayTemperature
	.section	.text.DoWatchDog,"ax",@progbits
.global	DoWatchDog
	.type	DoWatchDog, @function
DoWatchDog:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r25,tAsync
	lds r24,TLastWatchDog
	cp r25,r24
	breq .L33
	lds r24,ReadyWATCHDOG
	tst r24
	breq .L33
	lds r24,WATCHDOG_STATE
	tst r24
	breq .L35
	sbi 0x5,0
	sts WATCHDOG_STATE,__zero_reg__
	rjmp .L36
.L35:
	cbi 0x5,0
	ldi r24,lo8(1)
	sts WATCHDOG_STATE,r24
.L36:
	lds r24,tAsync
	sts TLastWatchDog,r24
.L33:
	ret
	.size	DoWatchDog, .-DoWatchDog
	.section	.text.getTemperature,"ax",@progbits
.global	getTemperature
	.type	getTemperature, @function
getTemperature:
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
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
	set
	clr r15
	bld r15,2
.L40:
	movw r22,r16
	ldi r24,0
	call DS18X20_start_meas
	cpse r24,__zero_reg__
	rjmp .L38
	ldi r18,lo8(1199999)
	ldi r24,hi8(1199999)
	ldi r25,hlo8(1199999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	call DoWatchDog
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call DS18X20_read_decicelsius
	cpse r24,__zero_reg__
	rjmp .L38
	ldi r20,lo8(10)
	movw r22,r28
	subi r22,-3
	sbci r23,-1
	ldd r24,Y+1
	ldd r25,Y+2
	call DS18X20_format_from_decicelsius
	cpse r24,__zero_reg__
	rjmp .L38
	movw r24,r28
	adiw r24,3
	call atoi
	rjmp .L39
.L38:
	dec r15
	brne .L40
	ldi r24,lo8(127)
	ldi r25,0
.L39:
/* epilogue start */
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
	pop r15
	ret
	.size	getTemperature, .-getTemperature
	.section	.text.manageTemperatureEvent,"ax",@progbits
.global	manageTemperatureEvent
	.type	manageTemperatureEvent, @function
manageTemperatureEvent:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r17,rTempInDoorMin
	lds r16,rTempInDoorMax
	lds r24,kg
	cpi r24,lo8(3)
	brge .L43
	subi r24,lo8(-(1))
	sts kg,r24
	rjmp .L44
.L43:
	sts kg,__zero_reg__
.L44:
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
	subi r28,lo8(-(temper))
	sbci r29,hi8(-(temper))
	st Y,r24
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
	movw r30,r18
	subi r30,lo8(-(sn_noready_counter))
	sbci r31,hi8(-(sn_noready_counter))
	ld r24,Z
	cpi r24,lo8(2)
	brsh .L46
	movw r30,r18
	subi r30,lo8(-(sn_noready_counter))
	sbci r31,hi8(-(sn_noready_counter))
	subi r24,lo8(-(1))
	st Z,r24
	rjmp .L45
.L46:
	movw r30,r18
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	st Z,__zero_reg__
	movw r30,r18
	subi r30,lo8(-(noready_sens))
	sbci r31,hi8(-(noready_sens))
	ldi r24,lo8(1)
	st Z,r24
	movw r30,r18
	subi r30,lo8(-(sn_noready_counter))
	sbci r31,hi8(-(sn_noready_counter))
	st Z,__zero_reg__
.L45:
	lds r24,PrefHeatting
	tst r24
	breq .L60
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
	cpi r22,lo8(127)
	breq .L62
	ldi r20,lo8(5)
	rjmp .L49
.L60:
	ldi r20,lo8(5)
	rjmp .L47
.L61:
	ldi r20,lo8(4)
.L47:
	lds r22,temper
	cpi r22,lo8(127)
	breq .L48
.L49:
	lds r24,rTempInDoorMin
	cp r24,r22
	brlt .+2
	rjmp .L63
	mov r18,r22
	clr r19
	sbrc r18,7
	com r19
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
	clr r25
	cp r24,r18
	cpc r25,r19
	brlt .+2
	rjmp .L64
	lds r24,rTempInDoorMax
	cp r24,r22
	brlt .+2
	rjmp .L65
	cpi r20,lo8(4)
	breq .+2
	rjmp .L66
	rjmp .L52
.L62:
	ldi r20,lo8(4)
.L48:
	lds r18,temper+2
	cpi r18,lo8(127)
	brne .+2
	rjmp .L67
	lds r19,temper+3
	cpi r19,lo8(127)
	brne .+2
	rjmp .L68
	cpi r20,lo8(5)
	brne .L52
	lds r20,rTempDiffSupplyReturnMin
	lds r24,rTempDiffSupplyReturnMax
	clr r25
	sbrc r24,7
	com r25
	mov r22,r18
	sub r22,r19
	mov r18,r22
	ldi r19,0
	cp r24,r18
	cpc r25,r19
	brlt .L53
	clr r21
	sbrc r20,7
	com r21
	add r24,r20
	adc r25,r21
	tst r25
	brge .L55
	adiw r24,1
.L55:
	asr r25
	ror r24
	cp r24,r22
	brlo .L54
	cp r20,r18
	cpc r21,r19
	brlt .L56
	rjmp .L57
.L52:
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
.L53:
	cbi 0x8,3
	sbi 0x8,5
	sbi 0x8,4
	rjmp .L42
.L54:
	sbi 0x8,5
	cbi 0x8,3
	cbi 0x8,4
	rjmp .L42
.L56:
	cbi 0x8,5
	cbi 0x8,3
	cbi 0x8,4
	rjmp .L42
.L57:
	sbi 0x8,5
	sbi 0x8,3
	cbi 0x8,4
	rjmp .L42
.L63:
	ldi r20,0
	rjmp .L52
.L64:
	ldi r20,lo8(1)
	rjmp .L52
.L65:
	ldi r20,lo8(2)
	rjmp .L52
.L66:
	ldi r20,lo8(3)
	rjmp .L52
.L67:
	ldi r20,0
	rjmp .L52
.L68:
	ldi r20,0
	rjmp .L52
.L42:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	manageTemperatureEvent, .-manageTemperatureEvent
	.section	.text.ValidSensorCode,"ax",@progbits
.global	ValidSensorCode
	.type	ValidSensorCode, @function
ValidSensorCode:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r18,Z
	subi r18,lo8(-(-1))
	cpi r18,lo8(-2)
	brlo .L72
	adiw r30,1
	ldi r24,lo8(7)
.L71:
	ld r25,Z+
	subi r25,lo8(-(-1))
	cpi r25,lo8(-2)
	brlo .L73
	subi r24,lo8(-(-1))
	brne .L71
	rjmp .L74
.L72:
	ldi r24,lo8(1)
	ret
.L73:
	ldi r24,lo8(1)
	ret
.L74:
	ldi r24,0
	ret
	.size	ValidSensorCode, .-ValidSensorCode
	.section	.text.checkPresenceSN,"ax",@progbits
.global	checkPresenceSN
	.type	checkPresenceSN, @function
checkPresenceSN:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	ldi r28,0
	ldi r29,0
	ldi r16,0
	ldi r17,0
	mov r13,__zero_reg__
	clr r12
	inc r12
	mov r10,__zero_reg__
	clr r11
	inc r11
.L80:
	lds r14,rSensorIDs
	lds r15,rSensorIDs+1
	add r14,r28
	adc r15,r29
	movw r24,r14
	call ValidSensorCode
	tst r24
	breq .L76
	movw r24,r14
	call getTemperature
	movw r30,r16
	subi r30,lo8(-(temper))
	sbci r31,hi8(-(temper))
	st Z,r24
	cpi r24,lo8(127)
	breq .L82
	movw r30,r16
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	st Z,r11
	rjmp .L77
.L82:
	mov r12,r10
.L77:
	ldi r24,lo8(5999)
	ldi r25,hi8(5999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
	rjmp .L78
.L76:
	inc r13
.L78:
	subi r16,-1
	sbci r17,-1
	adiw r28,8
	cpi r28,32
	cpc r29,__zero_reg__
	brne .L80
	tst r13
	breq .L83
	ldi r24,0
	rjmp .L81
.L83:
	mov r24,r12
.L81:
/* epilogue start */
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
	ret
	.size	checkPresenceSN, .-checkPresenceSN
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%02X%02X%02X%02X%02X%02X%02X"
	.section	.text.manage_new_sensors,"ax",@progbits
.global	manage_new_sensors
	.type	manage_new_sensors, @function
manage_new_sensors:
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 22 */
.L__stack_usage = 22
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
	sts kg,__zero_reg__
	ldi r24,lo8(1)
	sts nwSen_Phase,r24
	ldi r24,0
	rjmp .L85
.L89:
	lds r3,kg
	mov r16,r3
	clr r17
	sbrc r16,7
	com r17
	movw r24,r16
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
	std Y+4,r11
	std Y+3,r10
	ldi r25,lo8(1)
	std Y+2,r25
	ldi r26,lo8(1)
	std Y+1,r26
	movw r4,r12
	subi r16,lo8(-(sn_presence))
	sbci r17,hi8(-(sn_presence))
	mov r2,__zero_reg__
.L98:
	ldi r20,lo8(8)
	ldi r21,0
	movw r22,r14
	movw r24,r12
	call memcmp
	or r24,r25
	brne .L92
	ldd r24,Y+3
	sub r24,r10
	cp r3,r24
	breq .L93
	ldi r20,lo8(8)
	ldi r21,0
	movw r22,r8
	movw r24,r12
	call memcmp
	movw r30,r4
	movw r22,r8
	ldi r18,lo8(8)
.L96:
	movw r26,r22
	ld r21,X
	ld r19,Z
	st X+,r19
	movw r22,r26
	ldd r26,Y+3
	ldd r27,Y+4
	ld r20,X
	movw r26,r16
	ld r19,X
	ldd r26,Y+3
	ldd r27,Y+4
	st X,r19
	sbiw r24,0
	brne .L94
	st Z,__zero_reg__
	movw r26,r16
	st X,__zero_reg__
	rjmp .L95
.L94:
	st Z,r21
	movw r26,r16
	st X,r20
.L95:
	subi r18,lo8(-(-1))
	adiw r30,1
	cpse r18,__zero_reg__
	rjmp .L96
	std Y+2,r2
	std Y+1,r2
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
	cp r8,r6
	cpc r9,r7
	breq .+2
	rjmp .L98
	ldd r19,Y+1
	tst r19
	breq .L93
	ldi r24,lo8(2)
	sts nwSen_Phase,r24
	ldi r24,0
	rjmp .L85
.L93:
	ldd r24,Y+2
	tst r24
	brne .+2
	rjmp .L108
	lds r24,kg
	cpi r24,lo8(3)
	brlt .+2
	rjmp .L109
	subi r24,lo8(-(1))
	sts kg,r24
	ldi r24,0
	rjmp .L85
.L86:
	call LCD_Clear
	lds r30,kg
	ldi r25,lo8(8)
	muls r30,r25
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(gSensorIDs))
	sbci r31,hi8(-(gSensorIDs))
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
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	lds r24,sn_presence
	cpse r24,__zero_reg__
	rjmp .L99
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L99:
	lds r24,sn_presence+1
	cpse r24,__zero_reg__
	rjmp .L100
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L100:
	lds r24,sn_presence+2
	cpse r24,__zero_reg__
	rjmp .L101
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L101:
	lds r24,sn_presence+3
	cpse r24,__zero_reg__
	rjmp .L102
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L102:
	call LCD_Update
	ldi r24,lo8(3)
	sts nwSen_Phase,r24
	ldi r24,0
	rjmp .L85
.L90:
	ldi r25,lo8(-48)
	add r25,r24
	cpi r25,lo8(4)
	brlo .+2
	rjmp .L110
	mov r24,r25
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	ld r18,Z
	cpse r18,__zero_reg__
	rjmp .L104
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
	movw r30,r24
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	ldi r18,lo8(1)
	st Z,r18
.L104:
	ldi r24,lo8(5)
	sts nwSen_Phase,r24
	ldi r24,0
	rjmp .L85
.L91:
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
	call __eeupd_block_m328p
	lds r24,kg
	cpi r24,lo8(3)
	brge .L111
	ldi r24,lo8(1)
	sts nwSen_Phase,r24
	ldi r24,0
	rjmp .L85
.L105:
	ldi r24,0
	rjmp .L85
.L106:
	ldi r24,lo8(1)
	rjmp .L85
.L108:
	ldi r24,0
	rjmp .L85
.L109:
	ldi r24,lo8(1)
	rjmp .L85
.L110:
	ldi r24,0
	rjmp .L85
.L111:
	ldi r24,lo8(1)
.L85:
/* epilogue start */
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
	.size	manage_new_sensors, .-manage_new_sensors
	.section	.text.resetSensNumber,"ax",@progbits
.global	resetSensNumber
	.type	resetSensNumber, @function
resetSensNumber:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(8)
	mul r24,r18
	movw r24,r0
	clr __zero_reg__
	movw r30,r24
	subi r30,lo8(-(gSensorIDs))
	sbci r31,hi8(-(gSensorIDs))
	ldi r24,0
.L114:
	st Z+,__zero_reg__
	subi r24,lo8(-(1))
	cpi r24,lo8(8)
	brne .L114
/* epilogue start */
	ret
	.size	resetSensNumber, .-resetSensNumber
	.section	.text.sms_noready_sens,"ax",@progbits
.global	sms_noready_sens
	.type	sms_noready_sens, @function
sms_noready_sens:
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r11,r24
	ldi r24,lo8(-49)
	ldi r25,0
	call malloc
	movw r28,r24
	sbiw r24,0
	brne .+2
	rjmp .L116
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
	ldi r20,lo8(-96)
	ldi r21,0
	ldi r22,lo8(notReadyStr)
	ldi r23,hi8(notReadyStr)
	movw r24,r28
	call strncpy_P
	ldi r20,lo8(30)
	ldi r21,0
	ldi r22,lo8(snStr)
	ldi r23,hi8(snStr)
	ldi r24,lo8(wbuffer)
	ldi r25,hi8(wbuffer)
	call strncpy_P
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
	push __zero_reg__
	push r11
	ldi r24,lo8(__c.3169)
	ldi r25,hi8(__c.3169)
	push r25
	push r24
	ldi r16,lo8(wbuffer)
	ldi r17,hi8(wbuffer)
	push r17
	push r16
	call sprintf_P
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
	lds r24,tAsync
	push __zero_reg__
	push r24
	lds r24,tAsync+1
	push __zero_reg__
	push r24
	lds r24,tAsync+2
	push __zero_reg__
	push r24
	ldi r18,lo8(__c.3171)
	ldi r19,hi8(__c.3171)
	push r19
	push r18
	push r17
	push r16
	call sprintf_P
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
	call DoWatchDog
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	movw r24,r12
	call gsm_send_sms
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
.L116:
	mov r30,r11
	ldi r31,0
	subi r30,lo8(-(noready_sens))
	sbci r31,hi8(-(noready_sens))
	st Z,__zero_reg__
	mov r24,r11
	call resetSensNumber
/* epilogue start */
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
	.size	sms_noready_sens, .-sms_noready_sens
	.section	.text.sms_pumpStarted,"ax",@progbits
.global	sms_pumpStarted
	.type	sms_pumpStarted, @function
sms_pumpStarted:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r24,lo8(-49)
	ldi r25,0
	call malloc
	movw r28,r24
	sbiw r24,0
	breq .L117
	movw r16,r24
	subi r16,96
	sbci r17,-1
	ldi r20,lo8(20)
	ldi r21,0
	ldi r22,lo8(telNumber)
	ldi r23,hi8(telNumber)
	movw r24,r16
	call strncpy
	ldi r20,lo8(-96)
	ldi r21,0
	ldi r22,lo8(startRegulatorStr)
	ldi r23,hi8(startRegulatorStr)
	movw r24,r28
	call strncpy_P
	ldi r20,lo8(2)
	ldi r21,0
	movw r22,r28
	movw r24,r16
	call gsm_send_sms
	movw r24,r28
	call free
.L117:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	sms_pumpStarted, .-sms_pumpStarted
	.section	.text.sms_powerGone,"ax",@progbits
.global	sms_powerGone
	.type	sms_powerGone, @function
sms_powerGone:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r24,lo8(-49)
	ldi r25,0
	call malloc
	movw r28,r24
	sbiw r24,0
	brne .+2
	rjmp .L119
	movw r16,r24
	subi r16,96
	sbci r17,-1
	ldi r20,lo8(20)
	ldi r21,0
	ldi r22,lo8(telNumber)
	ldi r23,hi8(telNumber)
	movw r24,r16
	call strncpy
	ldi r20,lo8(-96)
	ldi r21,0
	ldi r22,lo8(startPowerGoneStr)
	ldi r23,hi8(startPowerGoneStr)
	movw r24,r28
	call strncpy_P
	lds r24,tAsync
	push __zero_reg__
	push r24
	lds r24,tAsync+1
	push __zero_reg__
	push r24
	lds r24,tAsync+2
	push __zero_reg__
	push r24
	ldi r24,lo8(__c.3188)
	ldi r25,hi8(__c.3188)
	push r25
	push r24
	ldi r24,lo8(wbuffer)
	ldi r25,hi8(wbuffer)
	push r25
	push r24
	call sprintf_P
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
	ldi r20,lo8(2)
	ldi r21,0
	movw r22,r28
	movw r24,r16
	call gsm_send_sms
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
.L119:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	sms_powerGone, .-sms_powerGone
	.section	.text.ManageOutdoorTempEvent,"ax",@progbits
.global	ManageOutdoorTempEvent
	.type	ManageOutdoorTempEvent, @function
ManageOutdoorTempEvent:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r18,temper+1
	cpi r18,lo8(127)
	breq .L121
	lds r24,temp_for_hour
	cpi r24,lo8(127)
	brne .L123
	sts temp_for_hour,r18
.L123:
	lds r19,temp_for_hour
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	sub r24,r19
	sbc r25,__zero_reg__
	sbiw r24,10
	brlt .L124
	ldi r24,lo8(1)
	sts PrefHeatting,r24
	sts temp_for_hour,r18
	ret
.L124:
	sts PrefHeatting,__zero_reg__
.L121:
	ret
	.size	ManageOutdoorTempEvent, .-ManageOutdoorTempEvent
	.section	.text.TestNoReadySensors,"ax",@progbits
.global	TestNoReadySensors
	.type	TestNoReadySensors, @function
TestNoReadySensors:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	ldi r24,lo8(33)
	ldi r25,0
	call malloc
	sts rSensorIDs+1,r25
	sts rSensorIDs,r24
	sbiw r24,0
	brne .+2
	rjmp .L125
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	call __eerd_block_m328p
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
	set
	clr r8
	bld r8,3
	clr r9
	inc r9
.L129:
	ld r24,Y
	cpse r24,__zero_reg__
	rjmp .L127
	lds r12,rSensorIDs
	lds r13,rSensorIDs+1
	add r12,r16
	adc r13,r17
	movw r24,r12
	call ValidSensorCode
	tst r24
	breq .L127
	movw r24,r12
	call getTemperature
	movw r30,r14
	st Z,r24
	cpi r24,lo8(127)
	breq .L127
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
	st Y,r9
.L127:
	ldi r24,lo8(5999)
	ldi r25,hi8(5999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
	adiw r28,1
	subi r16,-8
	sbci r17,-1
	ldi r25,-1
	sub r14,r25
	sbc r15,r25
	cpi r16,32
	cpc r17,__zero_reg__
	brne .L129
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
	call free
.L125:
/* epilogue start */
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
	.size	TestNoReadySensors, .-TestNoReadySensors
	.section	.text.ClearEEPROMSensCodes,"ax",@progbits
.global	ClearEEPROMSensCodes
	.type	ClearEEPROMSensCodes, @function
ClearEEPROMSensCodes:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(33)
	ldi r25,0
	call malloc
	sts rSensorIDs+1,r25
	sts rSensorIDs,r24
	sbiw r24,0
	breq .L132
	movw r26,r24
	st X+,__zero_reg__
	ldi r18,lo8(32)
	movw r30,r24
	0:
	ld r0,Z+
	st X+,r0
	dec r18
	brne 0b
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	call __eewr_block_m328p
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
	call free
	ldi r24,lo8(1)
	ret
.L132:
	ldi r24,0
	ret
	.size	ClearEEPROMSensCodes, .-ClearEEPROMSensCodes
	.section	.rodata.str1.1
.LC1:
	.string	"%02X "
.LC2:
	.string	"\n%02X%02X%02X%02X%02X%02X%02X"
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 20 */
/* stack size = 22 */
.L__stack_usage = 22
	ldi r24,lo8(lcd_str)
	ldi r25,hi8(lcd_str)
	sts __iob+2+1,r25
	sts __iob+2,r24
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
	sts ReadyWATCHDOG,__zero_reg__
	sts x+1,__zero_reg__
	sts x,__zero_reg__
	sts y+1,__zero_reg__
	sts y,__zero_reg__
	sts CheckNoReadySNCounter,__zero_reg__
	call LCD_initialize2
	sbis 0x9,3
	rjmp .L134
	call LcdPowerGoneStr
	call abort
.L134:
	ldi r24,lo8(1)
	sts MainLoopPhase,r24
	sts LastPhase,r24
	sts MenuPhase,__zero_reg__
	ldi r24,lo8(33)
	ldi r25,0
	call malloc
	sts rSensorIDs+1,r25
	sts rSensorIDs,r24
	sbiw r24,0
	brne .+2
	rjmp .L135
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	call __eerd_block_m328p
	sts sn_presence,__zero_reg__
	ldi r24,lo8(127)
	sts temper,r24
	sts sn_presence+1,__zero_reg__
	sts temper+1,r24
	sts sn_presence+2,__zero_reg__
	sts temper+2,r24
	sts sn_presence+3,__zero_reg__
	sts temper+3,r24
	ldi r24,lo8(TempInDoorMin)
	ldi r25,hi8(TempInDoorMin)
	call __eerd_byte_m328p
	sts rTempInDoorMin,r24
	ldi r24,lo8(TempInDoorMax)
	ldi r25,hi8(TempInDoorMax)
	call __eerd_byte_m328p
	sts rTempInDoorMax,r24
	ldi r24,lo8(TempOutDoorMin)
	ldi r25,hi8(TempOutDoorMin)
	call __eerd_byte_m328p
	sts rTempOutDoorMin,r24
	ldi r24,lo8(TempOutDoorMax)
	ldi r25,hi8(TempOutDoorMax)
	call __eerd_byte_m328p
	sts rTempOutDoorMax,r24
	ldi r24,lo8(TempSupplyMin)
	ldi r25,hi8(TempSupplyMin)
	call __eerd_byte_m328p
	sts rTempSupplyMin,r24
	ldi r24,lo8(TempSupplyMax)
	ldi r25,hi8(TempSupplyMax)
	call __eerd_byte_m328p
	sts rTempSupplyMax,r24
	ldi r24,lo8(TempDiffSupplyReturnMin)
	ldi r25,hi8(TempDiffSupplyReturnMin)
	call __eerd_byte_m328p
	sts rTempDiffSupplyReturnMin,r24
	ldi r24,lo8(TempDiffSupplyReturnMax)
	ldi r25,hi8(TempDiffSupplyReturnMax)
	call __eerd_byte_m328p
	sts rTempDiffSupplyReturnMax,r24
	ldi r20,lo8(14)
	ldi r21,0
	ldi r22,lo8(etelNumber)
	ldi r23,hi8(etelNumber)
	ldi r24,lo8(telNumber)
	ldi r25,hi8(telNumber)
	call __eerd_block_m328p
	sts fl,__zero_reg__
	ldi r30,lo8(100)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-88)
	st Z,r24
	in r24,0x7
	ori r24,lo8(48)
	out 0x7,r24
	sbi 0x7,3
	call WDT_off
	sbi 0xa,5
	sbi 0xb,5
	call LCD_Clear
	ldi r22,lo8(1)
	ldi r24,lo8(5)
	call LCD_set_position2
	ldi r24,lo8(helloStr1)
	ldi r25,hi8(helloStr1)
	push r25
	push r24
	ldi r24,lo8(__c.2807)
	ldi r25,hi8(__c.2807)
	push r25
	push r24
	call printf_P
	ldi r22,lo8(2)
	ldi r24,lo8(3)
	call LCD_set_position2
	ldi r24,lo8(helloStr2)
	ldi r25,hi8(helloStr2)
	push r25
	push r24
	ldi r24,lo8(__c.2809)
	ldi r25,hi8(__c.2809)
	push r25
	push r24
	call printf_P
	call LCD_Update
	ldi r18,lo8(4)
	ldi r20,lo8(42)
	ldi r21,0
	ldi r22,lo8(43)
	ldi r23,0
	ldi r24,lo8(41)
	ldi r25,0
	call ow_set_bus
/* #APP */
 ;  426 "../main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call checkPresenceSN
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	tst r24
	breq .L136
	rjmp .L264
.L135:
	call abort
.L136:
	call search_sensors_n
	sts nSensors,r24
	ldi r27,lo8(3)
	std Y+14,r27
	ldi r17,lo8(3)
	rjmp .L138
.L140:
	ldi r30,lo8(5999)
	ldi r31,hi8(5999)
	1: sbiw r30,1
	brne 1b
	rjmp .
	nop
	call search_sensors_n
	sts nSensors,r24
	subi r17,1
	brcs .L139
.L138:
	lds r24,nSensors
	cpi r24,lo8(4)
	brne .L140
.L139:
	std Y+14,r17
	ldi r24,lo8(1)
	sts btest_new_sensors,r24
	rjmp .L141
.L264:
	call copyrSNsTogSNs
	ldi r24,lo8(4)
	sts nSensors,r24
	std Y+14,__zero_reg__
.L141:
	ldi r24,lo8(51)
	ldi r25,0
	call uart_init
	ldi r24,lo8(7)
	call InitAdc
	call InitAnalogComp
	call init_clock
	call LCD_Clear
	lds r24,nSensors
	clr r25
	sbrc r24,7
	com r25
	call LcdPutInt
	ldi r24,lo8(Sensorsfound)
	ldi r25,hi8(Sensorsfound)
	call LCD_draw_string3
	call LCD_Update
	lds r24,nSensors
	cpi r24,lo8(4)
	breq .+2
	rjmp .L142
	call test_SN_sensors
	mov r15,r24
	mov r16,r24
	clr r17
	sbrc r16,7
	com r17
	cpi r16,99
	cpc r17,__zero_reg__
	breq .+2
	rjmp .L143
	ldi r16,0
	ldi r17,0
	mov r15,__zero_reg__
.L150:
	call LcdNextStr
	movw r24,r16
	adiw r24,1
	call LcdPutInt
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
	ldi r24,lo8(DS18S20)
	ldi r25,hi8(DS18S20)
	call LCD_draw_string3
	rjmp .L145
.L144:
	cpi r24,lo8(34)
	brne .L146
	ldi r24,lo8(DS1822)
	ldi r25,hi8(DS1822)
	call LCD_draw_string3
	rjmp .L145
.L146:
	ldi r24,lo8(DS18B20)
	ldi r25,hi8(DS18B20)
	call LCD_draw_string3
.L145:
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
	cpse r24,__zero_reg__
	rjmp .L147
	ldi r24,lo8(PAR)
	ldi r25,hi8(PAR)
	call LCD_draw_string3
	rjmp .L148
.L147:
	ldi r24,lo8(EXT)
	ldi r25,hi8(EXT)
	call LCD_draw_string3
.L148:
	inc r15
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
	call LCD_Update
	rjmp .L151
.L143:
	ldi r18,lo8(alarmStr)
	ldi r19,hi8(alarmStr)
	push r19
	push r18
	ldi r18,lo8(__c.2817)
	ldi r19,hi8(__c.2817)
	push r19
	push r18
	call printf_P
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
	ldi r24,lo8(missingStr)
	ldi r25,hi8(missingStr)
	push r25
	push r24
	ldi r24,lo8(__c.2821)
	ldi r25,hi8(__c.2821)
	push r25
	push r24
	call printf_P
	call LCD_Update
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L151
.L142:
	ldi r24,lo8(alarmStr)
	ldi r25,hi8(alarmStr)
	push r25
	push r24
	ldi r24,lo8(__c.2823)
	ldi r25,hi8(__c.2823)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(sensorStr)
	ldi r25,hi8(sensorStr)
	push r25
	push r24
	ldi r24,lo8(__c.2825)
	ldi r25,hi8(__c.2825)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(absenceStr)
	ldi r25,hi8(absenceStr)
	push r25
	push r24
	ldi r24,lo8(__c.2827)
	ldi r25,hi8(__c.2827)
	push r25
	push r24
	call printf_P
	call LCD_Update
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
.L151:
	ldi r23,lo8(1599999)
	ldi r24,hi8(1599999)
	ldi r25,hlo8(1599999)
	1: subi r23,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	call LCD_Clear
	sbi 0x4,0
	sts TimeKeyPressed,__zero_reg__
	sts extstate,__zero_reg__
	sts powergone,__zero_reg__
	call ExtInt0Enable
	call ExtInt1Enable
	sts kg,__zero_reg__
	lds r24,btest_new_sensors
	cpse r24,__zero_reg__
	rjmp .L152
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
	call free
	call manageTemperatureEvent
	ldi r24,lo8(1)
	sts ReadyWATCHDOG,r24
	rjmp .L153
.L152:
	ldi r24,lo8(3)
	sts MainLoopPhase,r24
	sts nwSen_Phase,__zero_reg__
.L153:
	sts PrefHeatting,__zero_reg__
	lds r24,temper+1
	sts temp_for_hour,r24
	std Y+19,__zero_reg__
	ldi r26,lo8(1)
	std Y+17,r26
	mov __tmp_reg__,r31
	ldi r31,lo8(127)
	mov r7,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(127)
	mov r6,r31
	mov r31,__tmp_reg__
	std Y+16,__zero_reg__
	std Y+15,__zero_reg__
	std Y+18,__zero_reg__
	std Y+20,__zero_reg__
	ldi r16,lo8(noready_sens)
	ldi r17,hi8(noready_sens)
	mov __tmp_reg__,r31
	ldi r31,lo8(noready_sens+4)
	mov r14,r31
	ldi r31,hi8(noready_sens+4)
	mov r15,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(tAsync+1)
	mov r2,r31
	ldi r31,hi8(tAsync+1)
	mov r3,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(tAsync+2)
	mov r4,r31
	ldi r31,hi8(tAsync+2)
	mov r5,r31
	mov r31,__tmp_reg__
	rjmp .L154
.L263:
	ldi r27,lo8(4)
	std Y+14,r27
.L154:
	lds r24,wait_powergone
	cpse r24,__zero_reg__
	jmp .L155
	lds r24,powergone
	tst r24
	breq .L156
	ldi r24,lo8(1)
	sts wait_powergone,r24
	rjmp .L156
.L255:
	cpi r25,lo8(3)
	brlo .L156
	sbis 0x9,3
	rjmp .L157
	call LcdPowerGoneStr
	call sms_powerGone
	call abort
.L157:
/* #APP */
 ;  611 "../main.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	sts powergone,__zero_reg__
	sts wait_powergone,__zero_reg__
/* #APP */
 ;  614 "../main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L156:
	call GetKeyCode
	mov r11,r24
	ldi r30,lo8(42)
	cpse r24,r30
	rjmp .L158
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L158
	lds r24,MainLoopPhase
	sts LastPhase,r24
	ldi r25,lo8(1)
	sts MainLoopPhase,r25
	cpi r24,lo8(1)
	brne .+2
	rjmp .L159
	call LCD_Clear
.L158:
	lds r24,MainLoopPhase
	cpi r24,lo8(1)
	breq .L161
	brlo .L162
	cpi r24,lo8(3)
	breq .+4
	jmp .L160
	mov r24,r11
	call manage_new_sensors
	tst r24
	brne .+2
	rjmp .L154
	call manageTemperatureEvent
	sts PrefHeatting,__zero_reg__
	lds r24,temper+1
	sts temp_for_hour,r24
	sts kg,__zero_reg__
	lds r24,MainLoopPhase
	sts LastPhase,r24
	ldi r24,lo8(1)
	sts MainLoopPhase,r24
	sts MenuPhase,__zero_reg__
	sts ReadyWATCHDOG,r24
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
	call free
	rjmp .L154
.L162:
	call DisplayTemperature
	jmp .L160
.L161:
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
	.section	.progmem.gcc_sw_table.main,"a",@progbits
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
	.section	.text.main
.L167:
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	ldi r24,lo8(9)
	sts MenuPhase,r24
	rjmp .L159
.L168:
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	ldi r24,lo8(8)
	sts MenuPhase,r24
	rjmp .L178
.L169:
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	ldi r24,lo8(2)
	sts MenuPhase,r24
	rjmp .L179
.L170:
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	ldi r24,lo8(5)
	sts MenuPhase,r24
	rjmp .L180
.L171:
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	ldi r24,lo8(4)
	sts MenuPhase,r24
	rjmp .L181
.L172:
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	ldi r24,lo8(4)
	sts MenuPhase,r24
	ldi r24,lo8(1)
	sts fl,r24
	ldi r31,lo8(10)
	std Y+15,r31
	rjmp .L159
.L173:
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	ldi r24,lo8(6)
	sts MenuPhase,r24
	rjmp .L182
.L174:
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	ldi r24,lo8(3)
	sts MenuPhase,r24
	rjmp .L183
.L175:
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	ldi r24,lo8(7)
	sts MenuPhase,r24
	rjmp .L184
.L176:
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L159
	ldi r24,lo8(1)
	sts MenuPhase,r24
	rjmp .L185
.L165:
	call LCD_Clear
	call LCD_Update
	lds r24,fl
	tst r24
	breq .L186
	sts MenuPhase,__zero_reg__
	sts fl,__zero_reg__
	rjmp .L159
.L186:
	sts MainLoopPhase,__zero_reg__
	ldi r24,lo8(1)
	sts mausure_temperature_ok,r24
	rjmp .L154
.L159:
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
	.section	.progmem.gcc_sw_table.main
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
	.section	.text.main
.L187:
	lds r24,fl
	tst r24
	breq .L192
	call LCD_Clear
	sts fl,__zero_reg__
.L192:
	call LcdFirstLine
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
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L160
.L189:
	call LCD_Clear
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
	ldi r24,lo8(10)
	sts MenuPhase,r24
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L160
.L190:
	ldi r23,lo8(42)
	cpse r11,r23
	rjmp .L193
	call ClearEEPROMSensCodes
	tst r24
	breq .L194
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L195
.L194:
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L195:
	ldi r24,lo8(1)
	sts fl,r24
	sts MenuPhase,__zero_reg__
.L193:
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
.L178:
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L196
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L197
.L196:
	ldd r27,Y+15
	cpi r27,lo8(1)
	breq .L198
	brlo .L197
	cpi r27,lo8(2)
	brne .+2
	rjmp .L199
	rjmp .L160
.L197:
	call LCD_Clear
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	std Y+16,__zero_reg__
	ldi r30,lo8(1)
	std Y+15,r30
	rjmp .L160
.L198:
	ldi r24,lo8(-48)
	add r24,r11
	cpi r24,lo8(10)
	brsh .L200
	ldd r31,Y+16
	cpi r31,lo8(14)
	brsh .L200
	mov r24,r11
	ldi r25,0
	call putchar
	ldd r18,Y+16
	mov r30,r18
	ldi r31,0
	subi r30,lo8(-(telNumber))
	sbci r31,hi8(-(telNumber))
	st Z,r11
	subi r18,lo8(-(1))
	std Y+16,r18
.L200:
	ldi r19,lo8(42)
	cpse r11,r19
	rjmp .L160
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
	push r13
	push r12
	ldi r24,lo8(__c.2880)
	ldi r25,hi8(__c.2880)
	push r25
	push r24
	call printf_P
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r23,lo8(2)
	std Y+15,r23
	rjmp .L160
.L199:
	ldi r24,lo8(42)
	cpse r11,r24
	rjmp .L160
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r25,lo8(3)
	std Y+15,r25
	rjmp .L160
.L185:
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L201
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L202
.L201:
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
.L202:
	call LCD_Clear
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
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	std Y+19,__zero_reg__
	ldi r31,lo8(1)
	std Y+17,r31
	std Y+16,__zero_reg__
	ldi r18,lo8(5)
	std Y+15,r18
	std Y+18,__zero_reg__
	rjmp .L160
.L205:
	call LCD_Clear
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
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r23,lo8(1)
	std Y+19,r23
	ldi r24,lo8(2)
	std Y+17,r24
	std Y+16,__zero_reg__
	ldi r25,lo8(5)
	std Y+15,r25
	std Y+18,__zero_reg__
	rjmp .L160
.L203:
	call LCD_Clear
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
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r27,lo8(2)
	std Y+19,r27
	ldi r30,lo8(3)
	std Y+17,r30
	std Y+16,__zero_reg__
	ldi r31,lo8(5)
	std Y+15,r31
	std Y+18,__zero_reg__
	rjmp .L160
.L207:
	call LCD_Clear
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
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r19,lo8(3)
	std Y+19,r19
	std Y+17,__zero_reg__
	std Y+16,__zero_reg__
	ldi r20,lo8(5)
	std Y+15,r20
	std Y+18,__zero_reg__
	rjmp .L160
.L208:
	ldi r24,lo8(-48)
	add r24,r11
	cpi r24,lo8(10)
	brlo .+2
	rjmp .L209
	ldd r22,Y+18
	cpi r22,lo8(7)
	brlo .+2
	rjmp .L256
	mov r24,r11
	ldi r25,0
	call putchar
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
	cpi r23,lo8(2)
	brsh .L210
	subi r23,lo8(-(1))
	std Y+16,r23
	rjmp .L209
.L210:
	ldi r30,lo8(2)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	movw r24,r28
	adiw r24,1
	call atoi
	cpi r24,-1
	cpc r25,__zero_reg__
	breq .+4
	brlt .+2
	rjmp .L211
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
	ldi r24,lo8(3)
	call ReturnXPos
	movw r26,r12
	ld r24,X
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printf
	ldi r24,lo8(1)
	call ReturnXPos
	ldd r27,Y+18
	subi r27,lo8(-(1))
	std Y+18,r27
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	cpi r27,lo8(7)
	breq .+2
	rjmp .L257
	std Y+13,__zero_reg__
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
	mov r18,r19
	ldi r19,0
.L213:
	movw r12,r18
	ld r22,Z+
	movw r26,r20
	add r26,r24
	adc r27,r25
	st X,r22
	adiw r24,1
	cpi r24,7
	cpc r25,__zero_reg__
	brne .L213
	ldi r22,lo8(7)
	ldi r23,0
	movw r24,r28
	adiw r24,6
	call crc8
	mov r11,r24
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	std Y+16,__zero_reg__
	ldi r20,lo8(4)
	std Y+15,r20
	ldi r22,lo8(7)
	std Y+14,r22
	rjmp .L209
.L211:
	ldi r24,lo8(3)
	call ReturnXPos
	ldi r24,lo8(__c.2914)
	ldi r25,hi8(__c.2914)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(3)
	call ReturnXPos
	pop __tmp_reg__
	pop __tmp_reg__
	std Y+16,__zero_reg__
	rjmp .L209
.L256:
	ldi r23,lo8(4)
	std Y+15,r23
	rjmp .L209
.L257:
	std Y+16,__zero_reg__
.L209:
	ldi r24,lo8(42)
	cpse r11,r24
	rjmp .L160
	rjmp .L258
.L206:
	ldi r25,lo8(42)
	cpse r11,r25
	rjmp .L160
	rjmp .L259
.L179:
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L214
	ldi r24,lo8(1)
	sts fl,r24
	call LCD_Clear
	ldi r24,lo8(nsupdownStr)
	ldi r25,hi8(nsupdownStr)
	push r25
	push r24
	ldi r24,lo8(__c.2918)
	ldi r25,hi8(__c.2918)
	push r25
	push r24
	call printf_P
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
.L216:
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
	ldi r31,8
	add r12,r31
	adc r13,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	cp r12,r10
	cpc r13,r11
	brne .L216
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2923)
	ldi r25,hi8(__c.2923)
	push r25
	push r24
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r19,lo8(4)
	std Y+14,r19
	rjmp .L160
.L214:
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
.L183:
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L160
	call LCD_Clear
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	push __zero_reg__
	clr r11
	inc r11
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
	sts fl,r11
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L160
.L184:
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L217
	call LCD_Clear
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
	ldi r24,lo8(1)
	sts fl,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L160
.L217:
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
.L181:
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L218
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L219
.L218:
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
	.section	.progmem.gcc_sw_table.main
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
	.section	.text.main
.L219:
	call LCD_Clear
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
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.2959)
	ldi r25,hi8(__c.2959)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(rTempInDoorMin)
	ldi r25,hi8(rTempInDoorMin)
	sts TempAct+1,r25
	sts TempAct,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r23,lo8(1)
	std Y+17,r23
	std Y+16,__zero_reg__
	ldi r24,lo8(9)
	std Y+15,r24
	ldi r25,lo8(1)
	std Y+14,r25
	rjmp .L160
.L221:
	call LCD_Clear
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
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.2967)
	ldi r25,hi8(__c.2967)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(rTempInDoorMax)
	ldi r25,hi8(rTempInDoorMax)
	sts TempAct+1,r25
	sts TempAct,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r27,lo8(2)
	std Y+17,r27
	std Y+16,__zero_reg__
	ldi r30,lo8(9)
	std Y+15,r30
	ldi r31,lo8(1)
	std Y+14,r31
	rjmp .L160
.L222:
	call LCD_Clear
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
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.2974)
	ldi r25,hi8(__c.2974)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(rTempOutDoorMin)
	ldi r25,hi8(rTempOutDoorMin)
	sts TempAct+1,r25
	sts TempAct,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r19,lo8(3)
	std Y+17,r19
	std Y+16,__zero_reg__
	ldi r20,lo8(9)
	std Y+15,r20
	ldi r22,lo8(1)
	std Y+14,r22
	rjmp .L160
.L223:
	call LCD_Clear
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
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.2981)
	ldi r25,hi8(__c.2981)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(rTempOutDoorMax)
	ldi r25,hi8(rTempOutDoorMax)
	sts TempAct+1,r25
	sts TempAct,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r25,lo8(4)
	std Y+17,r25
	std Y+16,__zero_reg__
	ldi r26,lo8(9)
	std Y+15,r26
	ldi r27,lo8(1)
	std Y+14,r27
	rjmp .L160
.L224:
	call LCD_Clear
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
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.2988)
	ldi r25,hi8(__c.2988)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(rTempSupplyMin)
	ldi r25,hi8(rTempSupplyMin)
	sts TempAct+1,r25
	sts TempAct,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r31,lo8(5)
	std Y+17,r31
	std Y+16,__zero_reg__
	ldi r18,lo8(9)
	std Y+15,r18
	ldi r19,lo8(1)
	std Y+14,r19
	rjmp .L160
.L225:
	call LCD_Clear
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
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.2995)
	ldi r25,hi8(__c.2995)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(rTempSupplyMax)
	ldi r25,hi8(rTempSupplyMax)
	sts TempAct+1,r25
	sts TempAct,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r23,lo8(6)
	std Y+17,r23
	std Y+16,__zero_reg__
	ldi r24,lo8(9)
	std Y+15,r24
	ldi r25,lo8(1)
	std Y+14,r25
	rjmp .L160
.L226:
	call LCD_Clear
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
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.3002)
	ldi r25,hi8(__c.3002)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(rTempDiffSupplyReturnMin)
	ldi r25,hi8(rTempDiffSupplyReturnMin)
	sts TempAct+1,r25
	sts TempAct,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r27,lo8(7)
	std Y+17,r27
	std Y+16,__zero_reg__
	ldi r30,lo8(9)
	std Y+15,r30
	ldi r31,lo8(1)
	std Y+14,r31
	rjmp .L160
.L227:
	call LCD_Clear
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
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.3009)
	ldi r25,hi8(__c.3009)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(rTempDiffSupplyReturnMax)
	ldi r25,hi8(rTempDiffSupplyReturnMax)
	sts TempAct+1,r25
	sts TempAct,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r19,lo8(10)
	std Y+17,r19
	std Y+16,__zero_reg__
	ldi r20,lo8(9)
	std Y+15,r20
	ldi r22,lo8(1)
	std Y+14,r22
	rjmp .L160
.L230:
	call LCD_Clear
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	std Y+17,__zero_reg__
	ldi r23,lo8(11)
	std Y+15,r23
	rjmp .L160
.L231:
	ldi r24,lo8(42)
	cpse r11,r24
	rjmp .L232
	lds r22,rTempInDoorMin
	ldi r24,lo8(TempInDoorMin)
	ldi r25,hi8(TempInDoorMin)
	call __eeupd_byte_m328p
	lds r22,rTempInDoorMax
	ldi r24,lo8(TempInDoorMax)
	ldi r25,hi8(TempInDoorMax)
	call __eeupd_byte_m328p
	lds r22,rTempOutDoorMin
	ldi r24,lo8(TempOutDoorMin)
	ldi r25,hi8(TempOutDoorMin)
	call __eeupd_byte_m328p
	lds r22,rTempOutDoorMax
	ldi r24,lo8(TempOutDoorMax)
	ldi r25,hi8(TempOutDoorMax)
	call __eeupd_byte_m328p
	lds r22,rTempSupplyMin
	ldi r24,lo8(TempSupplyMin)
	ldi r25,hi8(TempSupplyMin)
	call __eeupd_byte_m328p
	lds r22,rTempSupplyMax
	ldi r24,lo8(TempSupplyMax)
	ldi r25,hi8(TempSupplyMax)
	call __eeupd_byte_m328p
	lds r22,rTempDiffSupplyReturnMin
	ldi r24,lo8(TempDiffSupplyReturnMin)
	ldi r25,hi8(TempDiffSupplyReturnMin)
	call __eeupd_byte_m328p
	lds r22,rTempDiffSupplyReturnMax
	ldi r24,lo8(TempDiffSupplyReturnMax)
	ldi r25,hi8(TempDiffSupplyReturnMax)
	call __eeupd_byte_m328p
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	ldi r24,lo8(gSensorIDs)
	ldi r25,hi8(gSensorIDs)
	call __eeupd_block_m328p
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
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r25,lo8(8)
	std Y+15,r25
	rjmp .L160
.L232:
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
.L228:
	ldi r31,lo8(42)
	cpse r11,r31
	rjmp .L160
	rjmp .L260
.L229:
	ldi r24,lo8(-48)
	add r24,r11
	cpi r24,lo8(10)
	brlo .+2
	rjmp .L233
	ldd r18,Y+14
	ldd r19,Y+16
	cp r19,r18
	brsh .L234
	cpse r19,__zero_reg__
	rjmp .L235
	ldi r20,lo8(57)
	cpse r11,r20
	rjmp .L235
	ldi r24,lo8(45)
	std Y+1,r24
	ldi r24,lo8(45)
	ldi r25,0
	call putchar
	ldi r22,lo8(2)
	std Y+14,r22
	rjmp .L236
.L235:
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
.L236:
	ldd r24,Y+16
	subi r24,lo8(-(1))
	std Y+16,r24
	rjmp .L233
.L234:
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
	ldi r30,lo8(2)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	mov r24,r11
	ldi r25,0
	call putchar
	movw r24,r28
	adiw r24,1
	call atoi
	lds r30,TempAct
	lds r31,TempAct+1
	st Z,r24
	push r25
	push r24
	ldi r24,lo8(__c.3019)
	ldi r25,hi8(__c.3019)
	push r25
	push r24
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	std Y+16,__zero_reg__
	ldi r27,lo8(8)
	std Y+15,r27
.L233:
	ldi r30,lo8(42)
	cpse r11,r30
	rjmp .L160
	rjmp .L261
.L182:
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L237
	call LCD_Clear
	ldi r24,lo8(1)
	sts fl,r24
.L237:
	ldi r24,lo8(2)
	call LCD_setTextSize
	call LcdFirstLine
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
	ldi r24,lo8(1)
	call LCD_setTextSize
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L160
.L180:
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L238
	call LCD_Clear
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L239
.L238:
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
.L239:
	ldi r26,lo8(hourStr)
	ldi r27,hi8(hourStr)
	push r27
	push r26
	ldi r26,lo8(__c.3026)
	ldi r27,hi8(__c.3026)
	push r27
	push r26
	call printf_P
	sts TempAct+1,r5
	sts TempAct,r4
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r31,lo8(1)
	std Y+17,r31
	std Y+16,__zero_reg__
	ldi r18,lo8(3)
	std Y+15,r18
	ldi r19,lo8(23)
	std Y+20,r19
	ldi r20,lo8(1)
	std Y+14,r20
	rjmp .L160
.L242:
	ldi r24,lo8(minuteStr)
	ldi r25,hi8(minuteStr)
	push r25
	push r24
	ldi r24,lo8(__c.3030)
	ldi r25,hi8(__c.3030)
	push r25
	push r24
	call printf_P
	sts TempAct+1,r3
	sts TempAct,r2
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r22,lo8(2)
	std Y+17,r22
	std Y+16,__zero_reg__
	ldi r23,lo8(3)
	std Y+15,r23
	ldi r24,lo8(60)
	std Y+20,r24
	ldi r25,lo8(1)
	std Y+14,r25
	rjmp .L160
.L240:
	ldi r26,lo8(secondStr)
	ldi r27,hi8(secondStr)
	push r27
	push r26
	ldi r26,lo8(__c.3033)
	ldi r27,hi8(__c.3033)
	push r27
	push r26
	call printf_P
	ldi r24,lo8(tAsync)
	ldi r25,hi8(tAsync)
	sts TempAct+1,r25
	sts TempAct,r24
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	ldi r31,lo8(4)
	std Y+17,r31
	std Y+16,__zero_reg__
	ldi r18,lo8(3)
	std Y+15,r18
	ldi r19,lo8(60)
	std Y+20,r19
	ldi r20,lo8(1)
	std Y+14,r20
	rjmp .L160
.L243:
	ldi r24,lo8(-48)
	add r24,r11
	cpi r24,lo8(10)
	brlo .+2
	rjmp .L245
	ldd r22,Y+14
	ldd r23,Y+16
	cp r23,r22
	brsh .L246
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r23
	adc r31,__zero_reg__
	st Z,r11
	mov r24,r11
	ldi r25,0
	call putchar
	ldd r25,Y+16
	subi r25,lo8(-(1))
	std Y+16,r25
	rjmp .L245
.L246:
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
	ldi r30,lo8(2)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	mov r24,r11
	ldi r25,0
	call putchar
	movw r24,r28
	adiw r24,1
	call atoi
	tst r25
	brlt .L247
	ldd r27,Y+20
	mov r18,r27
	ldi r19,0
	cp r18,r24
	cpc r19,r25
	brlt .L247
	lds r30,TempAct
	lds r31,TempAct+1
	st Z,r24
	ldd r30,Y+17
	std Y+15,r30
	std Y+16,__zero_reg__
	rjmp .L245
.L247:
	ldi r24,lo8(2)
	call ReturnXPos
	ldi r24,lo8(__c.3036)
	ldi r25,hi8(__c.3036)
	push r25
	push r24
	call printf_P
	ldi r24,lo8(2)
	call ReturnXPos
	pop __tmp_reg__
	pop __tmp_reg__
	std Y+16,__zero_reg__
.L245:
	ldi r31,lo8(42)
	cpse r11,r31
	rjmp .L160
	rjmp .L262
.L244:
	ldi r18,lo8(42)
	cpse r11,r18
	rjmp .L160
	ldi r24,lo8(6)
	sts MenuPhase,r24
	sts fl,__zero_reg__
	rjmp .L160
.L191:
	call LCD_Clear
	lds r24,MainLoopPhase
	sts LastPhase,r24
	sts MainLoopPhase,__zero_reg__
	sts MenuPhase,__zero_reg__
	jmp .L154
.L258:
	ldd r19,Y+17
	std Y+15,r19
	rjmp .L160
.L259:
	ldd r20,Y+17
	std Y+15,r20
	rjmp .L160
.L260:
	ldd r22,Y+17
	std Y+15,r22
	rjmp .L160
.L261:
	ldd r23,Y+17
	std Y+15,r23
	rjmp .L160
.L262:
	ldd r24,Y+17
	std Y+15,r24
.L160:
	call LCD_Update
	lds r24,MainLoopPhase
	cpi r24,lo8(3)
	brne .+4
	jmp .L154
	call DoWatchDog
	movw r12,r16
.L250:
	mov r24,r12
	sub r24,r16
	movw r26,r12
	ld r25,X+
	movw r12,r26
	cpse r25,__zero_reg__
	call sms_noready_sens
.L248:
	cp r12,r14
	cpc r13,r15
	brne .L250
	lds r24,MainLoopPhase
	cpi r24,lo8(1)
	brne .L251
	lds r24,TimeKeyPressed
	cpi r24,lo8(3)
	brlo .L251
	ldi r24,lo8(1)
	sts LastPhase,r24
	sts MainLoopPhase,__zero_reg__
	sts fl,__zero_reg__
/* #APP */
 ;  1246 "../main.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	sts TimeKeyPressed,__zero_reg__
/* #APP */
 ;  1248 "../main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call LCD_Clear
.L251:
	lds r24,extstate
	tst r24
	breq .L252
	lds r24,MainLoopPhase
	sts LastPhase,r24
	ldi r24,lo8(1)
	sts MainLoopPhase,r24
	sts fl,__zero_reg__
/* #APP */
 ;  1256 "../main.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	sts TimeKeyPressed,__zero_reg__
	sts extstate,__zero_reg__
/* #APP */
 ;  1259 "../main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call LCD_Clear
.L252:
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
	call manageTemperatureEvent
	movw r26,r2
	ld r6,X
	ldi r24,lo8(1)
	sts mausure_temperature_ok,r24
.L253:
	lds r24,CheckNoReadySNCounter
	cpi r24,lo8(16)
	brlo .L254
	call TestNoReadySensors
/* #APP */
 ;  1278 "../main.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	sts CheckNoReadySNCounter,__zero_reg__
/* #APP */
 ;  1280 "../main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L254:
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
	call ManageOutdoorTempEvent
	movw r26,r4
	ld r7,X
	ldi r27,lo8(4)
	std Y+14,r27
	jmp .L154
.L155:
	lds r25,wait_powergone
	lds r24,powergone
	cpse r24,__zero_reg__
	jmp .L255
	jmp .L156
	.size	main, .-main
	.section	.progmem.data.__c.3188,"a",@progbits
	.type	__c.3188, @object
	.size	__c.3188, 19
__c.3188:
	.string	" at %02d:%02d:%02d"
	.section	.progmem.data.__c.3171,"a",@progbits
	.type	__c.3171, @object
	.size	__c.3171, 19
__c.3171:
	.string	" at %02d:%02d:%02d"
	.section	.progmem.data.__c.3169,"a",@progbits
	.type	__c.3169, @object
	.size	__c.3169, 5
__c.3169:
	.string	"%d: "
	.section	.progmem.data.__c.3144,"a",@progbits
	.type	__c.3144, @object
	.size	__c.3144, 7
__c.3144:
	.string	"\n%i-%S"
	.section	.progmem.data.__c.3142,"a",@progbits
	.type	__c.3142, @object
	.size	__c.3142, 7
__c.3142:
	.string	"\n%i-%S"
	.section	.progmem.data.__c.3140,"a",@progbits
	.type	__c.3140, @object
	.size	__c.3140, 7
__c.3140:
	.string	"\n%i-%S"
	.section	.progmem.data.__c.3138,"a",@progbits
	.type	__c.3138, @object
	.size	__c.3138, 7
__c.3138:
	.string	"\n%i-%S"
	.section	.progmem.data.__c.3136,"a",@progbits
	.type	__c.3136, @object
	.size	__c.3136, 7
__c.3136:
	.string	"\n%S %S"
	.section	.progmem.data.__c.3094,"a",@progbits
	.type	__c.3094, @object
	.size	__c.3094, 9
__c.3094:
	.string	"\n %S: %i"
	.section	.progmem.data.__c.3092,"a",@progbits
	.type	__c.3092, @object
	.size	__c.3092, 9
__c.3092:
	.string	"\n %S: %i"
	.section	.progmem.data.__c.3090,"a",@progbits
	.type	__c.3090, @object
	.size	__c.3090, 9
__c.3090:
	.string	"\n %S: %i"
	.section	.progmem.data.__c.3088,"a",@progbits
	.type	__c.3088, @object
	.size	__c.3088, 9
__c.3088:
	.string	"\n %S: %i"
	.section	.progmem.data.__c.3086,"a",@progbits
	.type	__c.3086, @object
	.size	__c.3086, 18
__c.3086:
	.string	"  %02d:%02d:%02d\n"
	.section	.progmem.data.__c.3076,"a",@progbits
	.type	__c.3076, @object
	.size	__c.3076, 3
__c.3076:
	.string	"%S"
	.section	.progmem.data.__c.3036,"a",@progbits
	.type	__c.3036, @object
	.size	__c.3036, 3
__c.3036:
	.string	"  "
	.section	.progmem.data.__c.3033,"a",@progbits
	.type	__c.3033, @object
	.size	__c.3033, 5
__c.3033:
	.string	"\n%S:"
	.section	.progmem.data.__c.3030,"a",@progbits
	.type	__c.3030, @object
	.size	__c.3030, 5
__c.3030:
	.string	"\n%S:"
	.section	.progmem.data.__c.3026,"a",@progbits
	.type	__c.3026, @object
	.size	__c.3026, 5
__c.3026:
	.string	"\n%S:"
	.section	.progmem.data.__c.3022,"a",@progbits
	.type	__c.3022, @object
	.size	__c.3022, 16
__c.3022:
	.string	"\n%02d:%02d:%02d"
	.section	.progmem.data.__c.3019,"a",@progbits
	.type	__c.3019, @object
	.size	__c.3019, 13
__c.3019:
	.string	"\nValue is:%i"
	.section	.progmem.data.__c.3015,"a",@progbits
	.type	__c.3015, @object
	.size	__c.3015, 9
__c.3015:
	.string	"\n%SD %S!"
	.section	.progmem.data.__c.3012,"a",@progbits
	.type	__c.3012, @object
	.size	__c.3012, 8
__c.3012:
	.string	"%S %S?\n"
	.section	.progmem.data.__c.3009,"a",@progbits
	.type	__c.3009, @object
	.size	__c.3009, 5
__c.3009:
	.string	" %S:"
	.section	.progmem.data.__c.3007,"a",@progbits
	.type	__c.3007, @object
	.size	__c.3007, 7
__c.3007:
	.string	" %S%S\n"
	.section	.progmem.data.__c.3005,"a",@progbits
	.type	__c.3005, @object
	.size	__c.3005, 7
__c.3005:
	.string	"%S %S\n"
	.section	.progmem.data.__c.3002,"a",@progbits
	.type	__c.3002, @object
	.size	__c.3002, 5
__c.3002:
	.string	" %S:"
	.section	.progmem.data.__c.3000,"a",@progbits
	.type	__c.3000, @object
	.size	__c.3000, 7
__c.3000:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2998,"a",@progbits
	.type	__c.2998, @object
	.size	__c.2998, 7
__c.2998:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2995,"a",@progbits
	.type	__c.2995, @object
	.size	__c.2995, 5
__c.2995:
	.string	" %S:"
	.section	.progmem.data.__c.2993,"a",@progbits
	.type	__c.2993, @object
	.size	__c.2993, 7
__c.2993:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2991,"a",@progbits
	.type	__c.2991, @object
	.size	__c.2991, 7
__c.2991:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2988,"a",@progbits
	.type	__c.2988, @object
	.size	__c.2988, 5
__c.2988:
	.string	" %S:"
	.section	.progmem.data.__c.2986,"a",@progbits
	.type	__c.2986, @object
	.size	__c.2986, 7
__c.2986:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2984,"a",@progbits
	.type	__c.2984, @object
	.size	__c.2984, 7
__c.2984:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2981,"a",@progbits
	.type	__c.2981, @object
	.size	__c.2981, 5
__c.2981:
	.string	" %S:"
	.section	.progmem.data.__c.2979,"a",@progbits
	.type	__c.2979, @object
	.size	__c.2979, 7
__c.2979:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2977,"a",@progbits
	.type	__c.2977, @object
	.size	__c.2977, 7
__c.2977:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2974,"a",@progbits
	.type	__c.2974, @object
	.size	__c.2974, 5
__c.2974:
	.string	" %S:"
	.section	.progmem.data.__c.2972,"a",@progbits
	.type	__c.2972, @object
	.size	__c.2972, 7
__c.2972:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2970,"a",@progbits
	.type	__c.2970, @object
	.size	__c.2970, 7
__c.2970:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2967,"a",@progbits
	.type	__c.2967, @object
	.size	__c.2967, 5
__c.2967:
	.string	" %S:"
	.section	.progmem.data.__c.2965,"a",@progbits
	.type	__c.2965, @object
	.size	__c.2965, 7
__c.2965:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2963,"a",@progbits
	.type	__c.2963, @object
	.size	__c.2963, 7
__c.2963:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2959,"a",@progbits
	.type	__c.2959, @object
	.size	__c.2959, 5
__c.2959:
	.string	" %S:"
	.section	.progmem.data.__c.2957,"a",@progbits
	.type	__c.2957, @object
	.size	__c.2957, 7
__c.2957:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2955,"a",@progbits
	.type	__c.2955, @object
	.size	__c.2955, 7
__c.2955:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2951,"a",@progbits
	.type	__c.2951, @object
	.size	__c.2951, 9
__c.2951:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2949,"a",@progbits
	.type	__c.2949, @object
	.size	__c.2949, 9
__c.2949:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2947,"a",@progbits
	.type	__c.2947, @object
	.size	__c.2947, 9
__c.2947:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2945,"a",@progbits
	.type	__c.2945, @object
	.size	__c.2945, 9
__c.2945:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2943,"a",@progbits
	.type	__c.2943, @object
	.size	__c.2943, 9
__c.2943:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2941,"a",@progbits
	.type	__c.2941, @object
	.size	__c.2941, 9
__c.2941:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2939,"a",@progbits
	.type	__c.2939, @object
	.size	__c.2939, 9
__c.2939:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2937,"a",@progbits
	.type	__c.2937, @object
	.size	__c.2937, 8
__c.2937:
	.string	"%S%S:%i"
	.section	.progmem.data.__c.2934,"a",@progbits
	.type	__c.2934, @object
	.size	__c.2934, 7
__c.2934:
	.string	"\n   %S"
	.section	.progmem.data.__c.2932,"a",@progbits
	.type	__c.2932, @object
	.size	__c.2932, 11
__c.2932:
	.string	"\n%S%i - %S"
	.section	.progmem.data.__c.2930,"a",@progbits
	.type	__c.2930, @object
	.size	__c.2930, 11
__c.2930:
	.string	"\n%S%i - %S"
	.section	.progmem.data.__c.2928,"a",@progbits
	.type	__c.2928, @object
	.size	__c.2928, 11
__c.2928:
	.string	"\n%S%i - %S"
	.section	.progmem.data.__c.2926,"a",@progbits
	.type	__c.2926, @object
	.size	__c.2926, 10
__c.2926:
	.string	"%S%i - %S"
	.section	.progmem.data.__c.2923,"a",@progbits
	.type	__c.2923, @object
	.size	__c.2923, 7
__c.2923:
	.string	"    %S"
	.section	.progmem.data.__c.2918,"a",@progbits
	.type	__c.2918, @object
	.size	__c.2918, 3
__c.2918:
	.string	"%S"
	.section	.progmem.data.__c.2914,"a",@progbits
	.type	__c.2914, @object
	.size	__c.2914, 4
__c.2914:
	.string	"   "
	.section	.progmem.data.__c.2912,"a",@progbits
	.type	__c.2912, @object
	.size	__c.2912, 10
__c.2912:
	.string	"\n %S:%02X"
	.section	.progmem.data.__c.2906,"a",@progbits
	.type	__c.2906, @object
	.size	__c.2906, 9
__c.2906:
	.string	" %S %S:\n"
	.section	.progmem.data.__c.2904,"a",@progbits
	.type	__c.2904, @object
	.size	__c.2904, 7
__c.2904:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2901,"a",@progbits
	.type	__c.2901, @object
	.size	__c.2901, 9
__c.2901:
	.string	" %S %S:\n"
	.section	.progmem.data.__c.2899,"a",@progbits
	.type	__c.2899, @object
	.size	__c.2899, 7
__c.2899:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2896,"a",@progbits
	.type	__c.2896, @object
	.size	__c.2896, 9
__c.2896:
	.string	" %S %S:\n"
	.section	.progmem.data.__c.2894,"a",@progbits
	.type	__c.2894, @object
	.size	__c.2894, 7
__c.2894:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2890,"a",@progbits
	.type	__c.2890, @object
	.size	__c.2890, 9
__c.2890:
	.string	" %S %S:\n"
	.section	.progmem.data.__c.2888,"a",@progbits
	.type	__c.2888, @object
	.size	__c.2888, 7
__c.2888:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2883,"a",@progbits
	.type	__c.2883, @object
	.size	__c.2883, 9
__c.2883:
	.string	"\n%SD %S!"
	.section	.progmem.data.__c.2880,"a",@progbits
	.type	__c.2880, @object
	.size	__c.2880, 4
__c.2880:
	.string	"\n%s"
	.section	.progmem.data.__c.2878,"a",@progbits
	.type	__c.2878, @object
	.size	__c.2878, 7
__c.2878:
	.string	"\n%S%S?"
	.section	.progmem.data.__c.2874,"a",@progbits
	.type	__c.2874, @object
	.size	__c.2874, 8
__c.2874:
	.string	"%S %S:\n"
	.section	.progmem.data.__c.2870,"a",@progbits
	.type	__c.2870, @object
	.size	__c.2870, 9
__c.2870:
	.string	"\n%SD %S!"
	.section	.progmem.data.__c.2868,"a",@progbits
	.type	__c.2868, @object
	.size	__c.2868, 9
__c.2868:
	.string	"\n%SD %S!"
	.section	.progmem.data.__c.2865,"a",@progbits
	.type	__c.2865, @object
	.size	__c.2865, 9
__c.2865:
	.string	"%S %Ss?\n"
	.section	.progmem.data.__c.2861,"a",@progbits
	.type	__c.2861, @object
	.size	__c.2861, 9
__c.2861:
	.string	"%i.%S %S"
	.section	.progmem.data.__c.2859,"a",@progbits
	.type	__c.2859, @object
	.size	__c.2859, 10
__c.2859:
	.string	"%i.%S %S\n"
	.section	.progmem.data.__c.2857,"a",@progbits
	.type	__c.2857, @object
	.size	__c.2857, 10
__c.2857:
	.string	"%i.%S %S\n"
	.section	.progmem.data.__c.2855,"a",@progbits
	.type	__c.2855, @object
	.size	__c.2855, 7
__c.2855:
	.string	"%i.%S\n"
	.section	.progmem.data.__c.2853,"a",@progbits
	.type	__c.2853, @object
	.size	__c.2853, 13
__c.2853:
	.string	"%i.%S %S-%S\n"
	.section	.progmem.data.__c.2851,"a",@progbits
	.type	__c.2851, @object
	.size	__c.2851, 10
__c.2851:
	.string	"%i.%S %S\n"
	.section	.progmem.data.__c.2849,"a",@progbits
	.type	__c.2849, @object
	.size	__c.2849, 11
__c.2849:
	.string	"%i.%S %Ss\n"
	.section	.progmem.data.__c.2847,"a",@progbits
	.type	__c.2847, @object
	.size	__c.2847, 10
__c.2847:
	.string	"%i.%S %S\n"
	.section	.progmem.data.__c.2827,"a",@progbits
	.type	__c.2827, @object
	.size	__c.2827, 7
__c.2827:
	.string	"\n   %S"
	.section	.progmem.data.__c.2825,"a",@progbits
	.type	__c.2825, @object
	.size	__c.2825, 8
__c.2825:
	.string	"\n   %Ss"
	.section	.progmem.data.__c.2823,"a",@progbits
	.type	__c.2823, @object
	.size	__c.2823, 8
__c.2823:
	.string	"\n    %S"
	.section	.progmem.data.__c.2821,"a",@progbits
	.type	__c.2821, @object
	.size	__c.2821, 7
__c.2821:
	.string	"\n   %S"
	.section	.progmem.data.__c.2819,"a",@progbits
	.type	__c.2819, @object
	.size	__c.2819, 12
__c.2819:
	.string	"\n   %S:%01i"
	.section	.progmem.data.__c.2817,"a",@progbits
	.type	__c.2817, @object
	.size	__c.2817, 8
__c.2817:
	.string	"\n    %S"
	.section	.progmem.data.__c.2809,"a",@progbits
	.type	__c.2809, @object
	.size	__c.2809, 3
__c.2809:
	.string	"%S"
	.section	.progmem.data.__c.2807,"a",@progbits
	.type	__c.2807, @object
	.size	__c.2807, 3
__c.2807:
	.string	"%S"
	.section	.progmem.data.__c.2785,"a",@progbits
	.type	__c.2785, @object
	.size	__c.2785, 2
__c.2785:
	.string	"C"
	.section	.progmem.data.__c.2783,"a",@progbits
	.type	__c.2783, @object
	.size	__c.2783, 2
__c.2783:
	.string	" "
	.comm	PrefHeatting,1,1
	.comm	temp_for_hour,1,1
	.comm	telNumber,15,1
	.section	.data.mausure_temperature_ok,"aw",@progbits
	.type	mausure_temperature_ok, @object
	.size	mausure_temperature_ok, 1
mausure_temperature_ok:
	.byte	1
	.section	.bss.fl,"aw",@nobits
	.type	fl, @object
	.size	fl, 1
fl:
	.zero	1
	.section	.bss.MenuPhase,"aw",@nobits
	.type	MenuPhase, @object
	.size	MenuPhase, 1
MenuPhase:
	.zero	1
	.section	.bss.LastPhase,"aw",@nobits
	.type	LastPhase, @object
	.size	LastPhase, 1
LastPhase:
	.zero	1
	.section	.bss.MainLoopPhase,"aw",@nobits
	.type	MainLoopPhase, @object
	.size	MainLoopPhase, 1
MainLoopPhase:
	.zero	1
	.section	.progmem.data.notReadyStr,"a",@progbits
	.type	notReadyStr, @object
	.size	notReadyStr, 12
notReadyStr:
	.string	"02-NotReady"
	.section	.progmem.data.startPowerGoneStr,"a",@progbits
	.type	startPowerGoneStr, @object
	.size	startPowerGoneStr, 15
startPowerGoneStr:
	.string	"01-Power Gone!"
	.section	.progmem.data.startRegulatorStr,"a",@progbits
	.type	startRegulatorStr, @object
	.size	startRegulatorStr, 22
startRegulatorStr:
	.string	"00-Regulator Started!"
	.section	.progmem.data.errStr,"a",@progbits
	.type	errStr, @object
	.size	errStr, 4
errStr:
	.string	"Err"
	.section	.progmem.data.clearStr,"a",@progbits
	.type	clearStr, @object
	.size	clearStr, 6
clearStr:
	.string	"Clear"
	.section	.progmem.data.telStr,"a",@progbits
	.type	telStr, @object
	.size	telStr, 6
telStr:
	.string	"PHONE"
	.section	.progmem.data.EXT,"a",@progbits
	.type	EXT, @object
	.size	EXT, 5
EXT:
	.string	"-EXT"
	.section	.progmem.data.PAR,"a",@progbits
	.type	PAR, @object
	.size	PAR, 5
PAR:
	.string	"-PAR"
	.section	.progmem.data.DS1822,"a",@progbits
	.type	DS1822, @object
	.size	DS1822, 8
DS1822:
	.string	"-DS1822"
	.section	.progmem.data.DS18B20,"a",@progbits
	.type	DS18B20, @object
	.size	DS18B20, 9
DS18B20:
	.string	"-DS18B20"
	.section	.progmem.data.DS18S20,"a",@progbits
	.type	DS18S20, @object
	.size	DS18S20, 9
DS18S20:
	.string	"-DS18S20"
	.section	.progmem.data.Sensorsfound,"a",@progbits
	.type	Sensorsfound, @object
	.size	Sensorsfound, 14
Sensorsfound:
	.string	" Sensorsfound"
	.section	.progmem.data.temperStr,"a",@progbits
	.type	temperStr, @object
	.size	temperStr, 8
temperStr:
	.string	"T-EDGES"
	.section	.progmem.data.missingStr,"a",@progbits
	.type	missingStr, @object
	.size	missingStr, 8
missingStr:
	.string	"MISSING"
	.section	.progmem.data.absenceStr,"a",@progbits
	.type	absenceStr, @object
	.size	absenceStr, 8
absenceStr:
	.string	"ABSENCE"
	.section	.progmem.data.sensorStr,"a",@progbits
	.type	sensorStr, @object
	.size	sensorStr, 7
sensorStr:
	.string	"Sensor"
	.section	.progmem.data.alarmStr,"a",@progbits
	.type	alarmStr, @object
	.size	alarmStr, 6
alarmStr:
	.string	"ALARM"
	.section	.progmem.data.secondStr,"a",@progbits
	.type	secondStr, @object
	.size	secondStr, 7
secondStr:
	.string	"SECOND"
	.section	.progmem.data.hourStr,"a",@progbits
	.type	hourStr, @object
	.size	hourStr, 5
hourStr:
	.string	"HOUR"
	.section	.progmem.data.minuteStr,"a",@progbits
	.type	minuteStr, @object
	.size	minuteStr, 7
minuteStr:
	.string	"MINUTE"
	.section	.progmem.data.timeStr,"a",@progbits
	.type	timeStr, @object
	.size	timeStr, 5
timeStr:
	.string	"TIME"
	.section	.progmem.data.saveStr,"a",@progbits
	.type	saveStr, @object
	.size	saveStr, 5
saveStr:
	.string	"SAVE"
	.section	.progmem.data.toeepromStr,"a",@progbits
	.type	toeepromStr, @object
	.size	toeepromStr, 10
toeepromStr:
	.string	"TO EEPROM"
	.section	.progmem.data.diffStr,"a",@progbits
	.type	diffStr, @object
	.size	diffStr, 5
diffStr:
	.string	"DIFF"
	.section	.progmem.data.tempStr,"a",@progbits
	.type	tempStr, @object
	.size	tempStr, 5
tempStr:
	.string	"TEMP"
	.section	.progmem.data.maxStr,"a",@progbits
	.type	maxStr, @object
	.size	maxStr, 4
maxStr:
	.string	"MAX"
	.section	.progmem.data.minStr,"a",@progbits
	.type	minStr, @object
	.size	minStr, 4
minStr:
	.string	"MIN"
	.section	.progmem.data.assignStr,"a",@progbits
	.type	assignStr, @object
	.size	assignStr, 8
assignStr:
	.string	"ASSIGNs"
	.section	.progmem.data.viewStr,"a",@progbits
	.type	viewStr, @object
	.size	viewStr, 5
viewStr:
	.string	"VIEW"
	.section	.progmem.data.setStr,"a",@progbits
	.type	setStr, @object
	.size	setStr, 4
setStr:
	.string	"SET"
	.section	.progmem.data.checksumStr,"a",@progbits
	.type	checksumStr, @object
	.size	checksumStr, 9
checksumStr:
	.string	"CHECKSUM"
	.section	.progmem.data.nsupdownStr,"a",@progbits
	.type	nsupdownStr, @object
	.size	nsupdownStr, 15
nsupdownStr:
	.string	"Ns-UPSIDE-DOWN"
	.section	.progmem.data.returnStr,"a",@progbits
	.type	returnStr, @object
	.size	returnStr, 7
returnStr:
	.string	"RETURN"
	.section	.progmem.data.supplyStr,"a",@progbits
	.type	supplyStr, @object
	.size	supplyStr, 7
supplyStr:
	.string	"SUPPLY"
	.section	.progmem.data.outdoorStr,"a",@progbits
	.type	outdoorStr, @object
	.size	outdoorStr, 8
outdoorStr:
	.string	"OUTDOOR"
	.section	.progmem.data.indoorStr,"a",@progbits
	.type	indoorStr, @object
	.size	indoorStr, 7
indoorStr:
	.string	"INDOOR"
	.section	.progmem.data.snStr,"a",@progbits
	.type	snStr, @object
	.size	snStr, 3
snStr:
	.string	"SN"
	.section	.progmem.data.nextStr,"a",@progbits
	.type	nextStr, @object
	.size	nextStr, 7
nextStr:
	.string	"*-NEXT"
	.section	.progmem.data.exitStr,"a",@progbits
	.type	exitStr, @object
	.size	exitStr, 7
exitStr:
	.string	"#-EXIT"
	.section	.progmem.data.helloStr2,"a",@progbits
	.type	helloStr2, @object
	.size	helloStr2, 10
helloStr2:
	.string	"REGULATOR"
	.section	.progmem.data.helloStr1,"a",@progbits
	.type	helloStr1, @object
	.size	helloStr1, 5
helloStr1:
	.string	"PUMP"
	.section	.progmem.data.okStr,"a",@progbits
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
	.section	.bss.TempAct,"aw",@nobits
	.type	TempAct, @object
	.size	TempAct, 2
TempAct:
	.zero	2
	.comm	rSensorIDs,2,1
	.section	.bss.gSensorIDs,"aw",@nobits
	.type	gSensorIDs, @object
	.size	gSensorIDs, 32
gSensorIDs:
	.zero	32
	.comm	wbuffer,31,1
	.section	.data.lcd_str,"aw",@progbits
	.type	lcd_str, @object
	.size	lcd_str, 14
lcd_str:
	.zero	3
	.byte	2
	.zero	4
	.word	gs(LcdWrite)
	.word	0
	.word	0
	.section	.bss.oldDisplaySens,"aw",@nobits
	.type	oldDisplaySens, @object
	.size	oldDisplaySens, 1
oldDisplaySens:
	.zero	1
	.section	.bss.kg,"aw",@nobits
	.type	kg, @object
	.size	kg, 1
kg:
	.zero	1
	.section	.bss.noready_sens,"aw",@nobits
	.type	noready_sens, @object
	.size	noready_sens, 4
noready_sens:
	.zero	4
	.section	.bss.btest_new_sensors,"aw",@nobits
	.type	btest_new_sensors, @object
	.size	btest_new_sensors, 1
btest_new_sensors:
	.zero	1
	.section	.bss.nwSen_Phase,"aw",@nobits
	.type	nwSen_Phase, @object
	.size	nwSen_Phase, 1
nwSen_Phase:
	.zero	1
	.section	.bss.sn_noready_counter,"aw",@nobits
	.type	sn_noready_counter, @object
	.size	sn_noready_counter, 4
sn_noready_counter:
	.zero	4
	.section	.bss.sn_presence,"aw",@nobits
	.type	sn_presence, @object
	.size	sn_presence, 4
sn_presence:
	.zero	4
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
	.section	.bss.TLastWatchDog,"aw",@nobits
	.type	TLastWatchDog, @object
	.size	TLastWatchDog, 1
TLastWatchDog:
	.zero	1
.global	WATCHDOG_STATE
	.section	.bss.WATCHDOG_STATE,"aw",@nobits
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
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
