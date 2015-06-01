	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.search_sensors_n,"ax",@progbits
	.type	search_sensors_n, @function
search_sensors_n:
.LFB12:
	.file 1 "../main.c"
	.loc 1 155 0
	.cfi_startproc
	push r13
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 13, -2
	push r14
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	.loc 1 165 0
	cbi 0xb,5
.LVL0:
.LBB108:
.LBB109:
	.file 2 "/AtmelAvrToolchain/avr/include/util/delay_basic.h"
	.loc 2 83 0
	ldi r24,lo8(10)
/* #APP */
 ;  83 "/AtmelAvrToolchain/avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
.LVL1:
/* #NOAPP */
	ldi r16,lo8(3)
.LBE109:
.LBE108:
	.loc 1 174 0
	mov r13,__zero_reg__
	ldi r28,lo8(ROM_NO+8)
	ldi r29,hi8(ROM_NO+8)
	mov __tmp_reg__,r31
	ldi r31,lo8(ROM_NO)
	mov r14,r31
	ldi r31,hi8(ROM_NO)
	mov r15,r31
	mov r31,__tmp_reg__
.LVL2:
.L8:
	.loc 1 175 0
	call OWFirst
.LVL3:
	.loc 1 176 0
	tst r24
	breq .L9
	.loc 1 174 0
	mov r17,r13
.LVL4:
.L6:
	.loc 1 178 0
	call OWVerify
.LVL5:
	tst r24
	breq .L3
.LVL6:
	.loc 1 179 0 discriminator 1
	cpi r17,lo8(4)
	brsh .L4
	movw r30,r14
	.loc 1 180 0
	mov r26,r17
	ldi r27,0
	lsl r26
	rol r27
	lsl r26
	rol r27
	lsl r26
	rol r27
	subi r26,lo8(-(gSensorIDs))
	sbci r27,hi8(-(gSensorIDs))
.LVL7:
.L5:
	.loc 1 180 0 is_stmt 0 discriminator 1
	ld r25,Z+
.LVL8:
	st X+,r25
.LVL9:
	.loc 1 179 0 is_stmt 1 discriminator 1
	cp r30,r28
	cpc r31,r29
	brne .L5
.LVL10:
.L4:
	.loc 1 182 0
	subi r17,lo8(-(1))
.LVL11:
	cpi r17,lo8(4)
	brsh .L2
.L3:
	.loc 1 184 0
	call OWNext
.LVL12:
	.loc 1 176 0
	cpse r24,__zero_reg__
	rjmp .L6
	rjmp .L2
.LVL13:
.L9:
	.loc 1 174 0
	mov r17,r13
.LVL14:
.L2:
	subi r16,lo8(-(-1))
.LVL15:
	.loc 1 188 0
	brne .L8
	.loc 1 191 0
	sbi 0xb,5
	.loc 1 195 0
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
.LVL16:
	pop r16
.LVL17:
	pop r15
	pop r14
	pop r13
	ret
	.cfi_endproc
.LFE12:
	.size	search_sensors_n, .-search_sensors_n
	.section	.text.LcdPutTemp,"ax",@progbits
.global	LcdPutTemp
	.type	LcdPutTemp, @function
LcdPutTemp:
.LFB13:
	.loc 1 253 0
	.cfi_startproc
.LVL18:
	push r28
.LCFI7:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI8:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI9:
	.cfi_def_cfa_register 28
	sbiw r28,10
.LCFI10:
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
	.loc 1 255 0
	ldi r20,lo8(10)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call DS18X20_format_from_decicelsius
.LVL19:
	.loc 1 256 0
	ldi r24,lo8(__c.2786)
	ldi r25,hi8(__c.2786)
	call LCD_draw_string3
.LVL20:
	.loc 1 257 0
	movw r24,r28
	adiw r24,1
	call LCD_draw_string2
.LVL21:
	.loc 1 258 0
	ldi r24,lo8(__c.2788)
	ldi r25,hi8(__c.2788)
	call LCD_draw_string3
.LVL22:
/* epilogue start */
	.loc 1 259 0
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
	.section	.text.ShutOffADC,"ax",@progbits
.global	ShutOffADC
	.type	ShutOffADC, @function
ShutOffADC:
.LFB18:
	.loc 1 1268 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1269 0
	ldi r24,lo8(-128)
	out 0x30,r24
	.loc 1 1270 0
	sts 122,__zero_reg__
	.loc 1 1271 0
	ldi r24,lo8(63)
	sts 126,r24
	.loc 1 1272 0
	ldi r24,lo8(3)
	sts 127,r24
	ret
	.cfi_endproc
.LFE18:
	.size	ShutOffADC, .-ShutOffADC
	.section	.text.getSleep,"ax",@progbits
.global	getSleep
	.type	getSleep, @function
getSleep:
.LFB17:
	.loc 1 1227 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1229 0
	call ShutOffADC
.LVL23:
	.loc 1 1230 0
/* #APP */
 ;  1230 "../main.c" 1
	cli
 ;  0 "" 2
	.loc 1 1231 0
/* #NOAPP */
	in r24,0x33
	ori r24,lo8(1)
	out 0x33,r24
	.loc 1 1234 0
	ldi r24,lo8(44)
	ldi r25,lo8(1)
	sts SleepTime+1,r25
	sts SleepTime,r24
	.loc 1 1235 0
	sts extstate,__zero_reg__
	.loc 1 1236 0
	call ExtInt0Enable
.LVL24:
.L14:
	.loc 1 1238 0
/* #APP */
 ;  1238 "../main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.LBB110:
	.loc 1 1239 0
/* #APP */
 ;  1239 "../main.c" 1
	in r24, 53
	ori r24, 96
	out 53, r24
	andi r24, -33
	out 53, r24
 ;  0 "" 2
.LVL25:
/* #NOAPP */
.LBE110:
	.loc 1 1240 0
/* #APP */
 ;  1240 "../main.c" 1
	sleep
	
 ;  0 "" 2
	.loc 1 1243 0
 ;  1243 "../main.c" 1
	   nop                    
   nop                    
   nop                    
   nop                    
   nop                    

 ;  0 "" 2
.LVL26:
/* #NOAPP */
.LBB111:
.LBB112:
	.file 3 "/AtmelAvrToolchain/avr/include/util/delay.h"
	.loc 3 163 0
	ldi r18,lo8(79999)
	ldi r24,hi8(79999)
	ldi r25,hlo8(79999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LBE112:
.LBE111:
	.loc 1 1251 0
	lds r24,extstate
	cpse r24,__zero_reg__
	rjmp .L13
	.loc 1 1253 0
	lds r24,SleepTime
	lds r25,SleepTime+1
	sbiw r24,1
	sts SleepTime+1,r25
	sts SleepTime,r24
	.loc 1 1254 0
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brlt .L14
.L13:
	.loc 1 1256 0
	in r24,0x33
	andi r24,lo8(-2)
	out 0x33,r24
	.loc 1 1258 0
	call ExtInt0Disable
.LVL27:
	.loc 1 1259 0
	ldi r24,lo8(7)
	call InitAdc
.LVL28:
	.loc 1 1260 0
	call InitAnalogComp
.LVL29:
	ret
	.cfi_endproc
.LFE17:
	.size	getSleep, .-getSleep
	.section	.text.sleepPWS,"ax",@progbits
.global	sleepPWS
	.type	sleepPWS, @function
sleepPWS:
.LFB15:
	.loc 1 1215 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1216 0
	sts extstate,__zero_reg__
	.loc 1 1217 0
	in r24,0x33
	andi r24,lo8(-15)
	ori r24,lo8(6)
	out 0x33,r24
	.loc 1 1218 0
	call getSleep
.LVL30:
	ret
	.cfi_endproc
.LFE15:
	.size	sleepPWS, .-sleepPWS
	.section	.text.sleepPWRDown,"ax",@progbits
.global	sleepPWRDown
	.type	sleepPWRDown, @function
sleepPWRDown:
.LFB16:
	.loc 1 1221 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1222 0
	sts extstate,__zero_reg__
	.loc 1 1223 0
	in r24,0x33
	andi r24,lo8(-15)
	ori r24,lo8(4)
	out 0x33,r24
	.loc 1 1224 0
	call getSleep
.LVL31:
	ret
	.cfi_endproc
.LFE16:
	.size	sleepPWRDown, .-sleepPWRDown
	.section	.text.test_SN_sensors,"ax",@progbits
.global	test_SN_sensors
	.type	test_SN_sensors, @function
test_SN_sensors:
.LFB19:
	.loc 1 1277 0
	.cfi_startproc
	push r15
.LCFI11:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI13:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI14:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI15:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL32:
	.loc 1 1283 0
	lds r28,rSensorIDs
	lds r29,rSensorIDs+1
	.loc 1 1280 0
	ldi r16,0
	.loc 1 1283 0
	ldi r17,0
	mov r15,__zero_reg__
	rjmp .L18
.LVL33:
.L22:
	mov r17,r15
.LVL34:
.L18:
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
.LVL35:
	or r24,r25
	breq .L19
	.loc 1 1282 0
	subi r17,lo8(-(1))
.LVL36:
	cpi r17,lo8(4)
	brlt .L18
	mov r24,r16
	rjmp .L23
.L19:
.LVL37:
	.loc 1 1280 0
	subi r16,lo8(-(1))
.LVL38:
	cpi r16,lo8(4)
	brlt .L22
	.loc 1 1290 0
	ldi r24,lo8(99)
.LVL39:
.L23:
/* epilogue start */
	.loc 1 1291 0
	pop r29
	pop r28
	pop r17
.LVL40:
	pop r16
	pop r15
	ret
	.cfi_endproc
.LFE19:
	.size	test_SN_sensors, .-test_SN_sensors
	.section	.text.copyrSNsTogSNs,"ax",@progbits
.global	copyrSNsTogSNs
	.type	copyrSNsTogSNs, @function
copyrSNsTogSNs:
.LFB21:
	.loc 1 1311 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL41:
	.loc 1 1311 0
	ldi r24,0
	ldi r25,0
	.loc 1 1314 0
	ldi r18,lo8(8)
.LVL42:
.L26:
	movw r26,r24
	subi r26,lo8(-(gSensorIDs))
	sbci r27,hi8(-(gSensorIDs))
	.loc 1 1314 0 is_stmt 0 discriminator 2
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
	.loc 1 1313 0 is_stmt 1 discriminator 2
	cpi r24,32
	cpc r25,__zero_reg__
	brne .L26
/* epilogue start */
	.loc 1 1316 0
	ret
	.cfi_endproc
.LFE21:
	.size	copyrSNsTogSNs, .-copyrSNsTogSNs
	.section	.text.LcdPowerGoneStr,"ax",@progbits
.global	LcdPowerGoneStr
	.type	LcdPowerGoneStr, @function
LcdPowerGoneStr:
.LFB22:
	.loc 1 1320 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1321 0
	call LCD_Clear
.LVL43:
	.loc 1 1322 0
	ldi r22,lo8(2)
	ldi r24,0
	call LCD_set_position2
.LVL44:
	.loc 1 1323 0
	ldi r24,lo8(startPowerGoneStr)
	ldi r25,hi8(startPowerGoneStr)
	push r25
.LCFI16:
	.cfi_def_cfa_offset 3
	push r24
.LCFI17:
	.cfi_def_cfa_offset 4
	ldi r24,lo8(__c.3076)
	ldi r25,hi8(__c.3076)
	push r25
.LCFI18:
	.cfi_def_cfa_offset 5
	push r24
.LCFI19:
	.cfi_def_cfa_offset 6
	call printf_P
.LVL45:
	.loc 1 1324 0
	call LCD_Update
.LVL46:
.LBB113:
.LBB114:
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
.LCFI20:
	.cfi_def_cfa_offset 2
	ret
.LBE114:
.LBE113:
	.cfi_endproc
.LFE22:
	.size	LcdPowerGoneStr, .-LcdPowerGoneStr
	.section	.text.DisplayTemperature,"ax",@progbits
.global	DisplayTemperature
	.type	DisplayTemperature, @function
DisplayTemperature:
.LFB23:
	.loc 1 1328 0
	.cfi_startproc
	push r28
.LCFI21:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 1330 0
	lds r24,mausure_temperature_ok
	tst r24
	brne .+2
	rjmp .L29
	ldi r30,lo8(temper)
	ldi r31,hi8(temper)
	ldi r18,lo8(temper+8)
	ldi r19,hi8(temper+8)
	ldi r28,0
.L32:
	.loc 1 1332 0 discriminator 2
	ld r24,Z+
	ld r25,Z+
	cpi r24,99
	cpc r25,__zero_reg__
	breq .L30
	.loc 1 1332 0 is_stmt 0 discriminator 1
	subi r28,lo8(-(1))
.L30:
	.loc 1 1332 0 discriminator 2
	cp r30,r18
	cpc r31,r19
	brne .L32
	.loc 1 1334 0 is_stmt 1
	lds r24,oldDisplaySens
	cp r28,r24
	brsh .L33
	.loc 1 1334 0 is_stmt 0 discriminator 1
	call LCD_Clear
	rjmp .L34
.L33:
	.loc 1 1335 0 is_stmt 1
	call LcdFirstLine
.L34:
	.loc 1 1336 0
	sts oldDisplaySens,r28
	.loc 1 1338 0
	lds r24,tAsync
	push __zero_reg__
.LCFI22:
	.cfi_def_cfa_offset 4
	push r24
.LCFI23:
	.cfi_def_cfa_offset 5
	lds r24,tAsync+1
	push __zero_reg__
.LCFI24:
	.cfi_def_cfa_offset 6
	push r24
.LCFI25:
	.cfi_def_cfa_offset 7
	lds r24,tAsync+2
	push __zero_reg__
.LCFI26:
	.cfi_def_cfa_offset 8
	push r24
.LCFI27:
	.cfi_def_cfa_offset 9
	ldi r24,lo8(__c.3086)
	ldi r25,hi8(__c.3086)
	push r25
.LCFI28:
	.cfi_def_cfa_offset 10
	push r24
.LCFI29:
	.cfi_def_cfa_offset 11
	call printf_P
	.loc 1 1339 0
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
.LCFI30:
	.cfi_def_cfa_offset 3
	lds r24,sn_presence
	tst r24
	breq .L35
	.loc 1 1340 0
	lds r24,temper
	lds r25,temper+1
	cpi r24,99
	cpc r25,__zero_reg__
	brge .L35
	.loc 1 1341 0
	push r25
.LCFI31:
	.cfi_def_cfa_offset 4
	push r24
.LCFI32:
	.cfi_def_cfa_offset 5
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
.LCFI33:
	.cfi_def_cfa_offset 6
	push r24
.LCFI34:
	.cfi_def_cfa_offset 7
	ldi r24,lo8(__c.3088)
	ldi r25,hi8(__c.3088)
	push r25
.LCFI35:
	.cfi_def_cfa_offset 8
	push r24
.LCFI36:
	.cfi_def_cfa_offset 9
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI37:
	.cfi_def_cfa_offset 3
.L35:
	.loc 1 1343 0
	lds r24,sn_presence+1
	tst r24
	breq .L36
	.loc 1 1344 0
	lds r24,temper+2
	lds r25,temper+2+1
	cpi r24,99
	cpc r25,__zero_reg__
	brge .L36
	.loc 1 1345 0
	push r25
.LCFI38:
	.cfi_def_cfa_offset 4
	push r24
.LCFI39:
	.cfi_def_cfa_offset 5
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
.LCFI40:
	.cfi_def_cfa_offset 6
	push r24
.LCFI41:
	.cfi_def_cfa_offset 7
	ldi r24,lo8(__c.3090)
	ldi r25,hi8(__c.3090)
	push r25
.LCFI42:
	.cfi_def_cfa_offset 8
	push r24
.LCFI43:
	.cfi_def_cfa_offset 9
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI44:
	.cfi_def_cfa_offset 3
.L36:
	.loc 1 1347 0
	lds r24,sn_presence+2
	tst r24
	breq .L37
	.loc 1 1348 0
	lds r24,temper+4
	lds r25,temper+4+1
	cpi r24,99
	cpc r25,__zero_reg__
	brge .L37
	.loc 1 1349 0
	push r25
.LCFI45:
	.cfi_def_cfa_offset 4
	push r24
.LCFI46:
	.cfi_def_cfa_offset 5
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
.LCFI47:
	.cfi_def_cfa_offset 6
	push r24
.LCFI48:
	.cfi_def_cfa_offset 7
	ldi r24,lo8(__c.3092)
	ldi r25,hi8(__c.3092)
	push r25
.LCFI49:
	.cfi_def_cfa_offset 8
	push r24
.LCFI50:
	.cfi_def_cfa_offset 9
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI51:
	.cfi_def_cfa_offset 3
.L37:
	.loc 1 1351 0
	lds r24,sn_presence+3
	tst r24
	breq .L38
	.loc 1 1352 0
	lds r24,temper+6
	lds r25,temper+6+1
	cpi r24,99
	cpc r25,__zero_reg__
	brge .L38
	.loc 1 1353 0
	push r25
.LCFI52:
	.cfi_def_cfa_offset 4
	push r24
.LCFI53:
	.cfi_def_cfa_offset 5
	ldi r24,lo8(returnStr)
	ldi r25,hi8(returnStr)
	push r25
.LCFI54:
	.cfi_def_cfa_offset 6
	push r24
.LCFI55:
	.cfi_def_cfa_offset 7
	ldi r24,lo8(__c.3094)
	ldi r25,hi8(__c.3094)
	push r25
.LCFI56:
	.cfi_def_cfa_offset 8
	push r24
.LCFI57:
	.cfi_def_cfa_offset 9
	call printf_P
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI58:
	.cfi_def_cfa_offset 3
.L38:
	.loc 1 1356 0
	sts mausure_temperature_ok,__zero_reg__
	rjmp .L28
.L29:
.LBB115:
.LBB116:
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
.L28:
/* epilogue start */
.LBE116:
.LBE115:
	.loc 1 1358 0
	pop r28
	ret
	.cfi_endproc
.LFE23:
	.size	DisplayTemperature, .-DisplayTemperature
	.section	.text.DoWatchDog,"ax",@progbits
.global	DoWatchDog
	.type	DoWatchDog, @function
DoWatchDog:
.LFB27:
	.loc 1 1552 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1553 0
	lds r24,ReadyWATCHDOG
	tst r24
	breq .L40
	.loc 1 1554 0
	lds r24,WATCHDOG_STATE
	tst r24
	breq .L42
	.loc 1 1555 0
	sbi 0x5,0
	sts WATCHDOG_STATE,__zero_reg__
	ret
.L42:
	.loc 1 1557 0
	cbi 0x5,0
	ldi r24,lo8(1)
	sts WATCHDOG_STATE,r24
.L40:
	ret
	.cfi_endproc
.LFE27:
	.size	DoWatchDog, .-DoWatchDog
	.section	.text.getTemperature,"ax",@progbits
.global	getTemperature
	.type	getTemperature, @function
getTemperature:
.LFB24:
	.loc 1 1362 0
	.cfi_startproc
.LVL47:
	push r15
.LCFI59:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI60:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI61:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI62:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI63:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI64:
	.cfi_def_cfa_register 28
	sbiw r28,12
.LCFI65:
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
.LVL48:
	.loc 1 1362 0
	set
	clr r15
	bld r15,2
.LVL49:
.L46:
	.loc 1 1368 0
	movw r22,r16
	ldi r24,0
	call DS18X20_start_meas
.LVL50:
	cpse r24,__zero_reg__
	rjmp .L44
.LVL51:
.LBB117:
.LBB118:
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
.LBE118:
.LBE117:
	.loc 1 1370 0
	call DoWatchDog
.LVL52:
	.loc 1 1371 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call DS18X20_read_decicelsius
.LVL53:
	cpse r24,__zero_reg__
	rjmp .L44
	.loc 1 1372 0
	ldi r20,lo8(10)
	movw r22,r28
	subi r22,-3
	sbci r23,-1
	ldd r24,Y+1
	ldd r25,Y+2
	call DS18X20_format_from_decicelsius
.LVL54:
	cpse r24,__zero_reg__
	rjmp .L44
	.loc 1 1373 0
	movw r24,r28
	adiw r24,3
	call atoi
.LVL55:
	rjmp .L45
.LVL56:
.L44:
	dec r15
.LVL57:
	.loc 1 1376 0
	brne .L46
	.loc 1 1377 0
	ldi r24,lo8(99)
	ldi r25,0
.LVL58:
.L45:
/* epilogue start */
	.loc 1 1378 0
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
.LVL59:
	pop r15
	ret
	.cfi_endproc
.LFE24:
	.size	getTemperature, .-getTemperature
	.section	.text.manageTemperatureEvent,"ax",@progbits
.global	manageTemperatureEvent
	.type	manageTemperatureEvent, @function
manageTemperatureEvent:
.LFB25:
	.loc 1 1398 0
	.cfi_startproc
	push r28
.LCFI66:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI67:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 1401 0
	lds r24,kg
	cpi r24,lo8(3)
	brge .L49
	.loc 1 1401 0 is_stmt 0 discriminator 1
	subi r24,lo8(-(1))
	sts kg,r24
	rjmp .L50
.L49:
	.loc 1 1402 0 is_stmt 1
	sts kg,__zero_reg__
.L50:
	.loc 1 1404 0
	lds r28,kg
	clr r29
	sbrc r28,7
	com r29
	movw r30,r28
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	ld r24,Z
	tst r24
	breq .L51
	.loc 1 1405 0
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
.LVL60:
	lsl r28
	rol r29
	subi r28,lo8(-(temper))
	sbci r29,hi8(-(temper))
	std Y+1,r25
	st Y,r24
	.loc 1 1406 0
	lds r24,kg
	clr r25
	sbrc r24,7
	com r25
	movw r30,r24
	lsl r30
	rol r31
	subi r30,lo8(-(temper))
	sbci r31,hi8(-(temper))
	ld r18,Z
	ldd r19,Z+1
	cpi r18,99
	cpc r19,__zero_reg__
	brne .L51
	.loc 1 1407 0
	movw r30,r24
	subi r30,lo8(-(sn_noready_counter))
	sbci r31,hi8(-(sn_noready_counter))
	ld r18,Z
	cpi r18,lo8(2)
	brsh .L52
	.loc 1 1408 0
	movw r30,r24
	subi r30,lo8(-(sn_noready_counter))
	sbci r31,hi8(-(sn_noready_counter))
	subi r18,lo8(-(1))
	st Z,r18
	rjmp .L51
.L52:
	.loc 1 1410 0
	movw r30,r24
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	st Z,__zero_reg__
	.loc 1 1411 0
	movw r30,r24
	subi r30,lo8(-(noready_sens))
	sbci r31,hi8(-(noready_sens))
	ldi r18,lo8(1)
	st Z,r18
	.loc 1 1412 0
	movw r30,r24
	lsl r30
	rol r31
	subi r30,lo8(-(temper))
	sbci r31,hi8(-(temper))
	ldi r24,lo8(99)
	ldi r25,0
	std Z+1,r25
	st Z,r24
.L51:
	.loc 1 1418 0
	lds r24,PrefHeatting
	tst r24
	breq .L53
	.loc 1 1420 0
	lds r24,temper
	lds r25,temper+1
	lds r18,rTempInDoorMax
	ldi r19,0
	subi r18,-5
	sbci r19,-1
	cp r18,r24
	cpc r19,r25
	brge .L54
	.loc 1 1420 0 is_stmt 0 discriminator 1
	cpi r24,99
	cpc r25,__zero_reg__
	brne .L55
.L54:
	.loc 1 1422 0 is_stmt 1
	cbi 0x8,3
	.loc 1 1423 0
	sbi 0x8,5
	.loc 1 1424 0
	sbi 0x8,4
	.loc 1 1425 0
	rjmp .L48
.L53:
	.loc 1 1430 0
	lds r24,temper
	lds r25,temper+1
	cpi r24,99
	cpc r25,__zero_reg__
	breq .L57
.L55:
	.loc 1 1431 0
	lds r18,rTempInDoorMin
	ldi r19,0
	cp r24,r18
	cpc r25,r19
	brge .L58
	.loc 1 1432 0
	cbi 0x8,3
	.loc 1 1433 0
	sbi 0x8,5
	.loc 1 1434 0
	sbi 0x8,4
	rjmp .L57
.L58:
	.loc 1 1436 0
	lds r18,rTempInDoorMax
	ldi r19,0
	cp r24,r18
	cpc r25,r19
	brlt .L59
	.loc 1 1437 0
	cbi 0x8,5
	.loc 1 1438 0
	cbi 0x8,4
	rjmp .L57
.L59:
	.loc 1 1440 0
	cbi 0x8,5
	.loc 1 1441 0
	cbi 0x8,3
	.loc 1 1442 0
	sbi 0x8,4
.L57:
	.loc 1 1447 0
	lds r24,temper+4
	lds r25,temper+4+1
	cpi r24,99
	cpc r25,__zero_reg__
	breq .L48
	.loc 1 1447 0 is_stmt 0 discriminator 1
	lds r18,temper+6
	lds r19,temper+6+1
	cpi r18,99
	cpc r19,__zero_reg__
	breq .L48
	.loc 1 1448 0 is_stmt 1
	sub r24,r18
.LVL61:
	.loc 1 1449 0
	lds r25,rTempDiffSupplyReturnMin
	cp r24,r25
	brsh .L60
	.loc 1 1449 0 is_stmt 0 discriminator 1
	lds r18,rTempInDoorMin
	ldi r19,0
	lds r20,temper
	lds r21,temper+1
	cp r18,r20
	cpc r19,r21
	brge .L60
	.loc 1 1450 0 is_stmt 1
	sbi 0x8,5
	.loc 1 1451 0
	sbi 0x8,3
	.loc 1 1452 0
	cbi 0x8,4
.L60:
	.loc 1 1454 0
	lds r25,rTempDiffSupplyReturnMax
	cp r25,r24
	brsh .L48
	.loc 1 1454 0 is_stmt 0 discriminator 1
	lds r24,rTempInDoorMax
.LVL62:
	ldi r25,0
	lds r18,temper
	lds r19,temper+1
	cp r18,r24
	cpc r19,r25
	brge .L48
	.loc 1 1455 0 is_stmt 1
	cbi 0x8,3
	.loc 1 1456 0
	sbi 0x8,5
	.loc 1 1457 0
	sbi 0x8,4
.L48:
/* epilogue start */
	.loc 1 1460 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE25:
	.size	manageTemperatureEvent, .-manageTemperatureEvent
	.section	.text.ValidSensorCode,"ax",@progbits
.global	ValidSensorCode
	.type	ValidSensorCode, @function
ValidSensorCode:
.LFB28:
	.loc 1 1561 0
	.cfi_startproc
.LVL63:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1564 0
	movw r30,r24
	ld r18,Z
	subi r18,lo8(-(-1))
	cpi r18,lo8(-2)
	brlo .L64
	adiw r30,1
	ldi r24,lo8(7)
.LVL64:
.L63:
	ld r25,Z+
.LVL65:
	subi r25,lo8(-(-1))
	cpi r25,lo8(-2)
	brlo .L65
.LVL66:
	subi r24,lo8(-(-1))
	.loc 1 1563 0 discriminator 1
	brne .L63
	rjmp .L66
.LVL67:
.L64:
	.loc 1 1565 0
	ldi r24,lo8(1)
.LVL68:
	ret
.LVL69:
.L65:
	ldi r24,lo8(1)
	ret
.LVL70:
.L66:
	.loc 1 1567 0
	ldi r24,0
	.loc 1 1568 0
	ret
	.cfi_endproc
.LFE28:
	.size	ValidSensorCode, .-ValidSensorCode
	.section	.text.checkPresenceSN,"ax",@progbits
.global	checkPresenceSN
	.type	checkPresenceSN, @function
checkPresenceSN:
.LFB20:
	.loc 1 1293 0
	.cfi_startproc
	push r8
.LCFI68:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI69:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI70:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI71:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r12
.LCFI72:
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
.LCFI73:
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
.LCFI74:
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
.LCFI75:
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
	push r16
.LCFI76:
	.cfi_def_cfa_offset 11
	.cfi_offset 16, -10
	push r17
.LCFI77:
	.cfi_def_cfa_offset 12
	.cfi_offset 17, -11
	push r28
.LCFI78:
	.cfi_def_cfa_offset 13
	.cfi_offset 28, -12
	push r29
.LCFI79:
	.cfi_def_cfa_offset 14
	.cfi_offset 29, -13
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
.LVL71:
	ldi r16,lo8(temper)
	ldi r17,hi8(temper)
	mov __tmp_reg__,r31
	ldi r31,lo8(sn_presence)
	mov r14,r31
	ldi r31,hi8(sn_presence)
	mov r15,r31
	mov r31,__tmp_reg__
	.loc 1 1293 0
	ldi r28,0
	ldi r29,0
	.loc 1 1297 0
	mov r11,__zero_reg__
	.loc 1 1298 0
	clr r10
	inc r10
	.loc 1 1302 0
	mov r8,__zero_reg__
	.loc 1 1303 0
	clr r9
	inc r9
.LVL72:
.L72:
	.loc 1 1300 0
	lds r12,rSensorIDs
	lds r13,rSensorIDs+1
	add r12,r28
	adc r13,r29
	movw r24,r12
	call ValidSensorCode
.LVL73:
	tst r24
	breq .L68
	.loc 1 1301 0
	movw r24,r12
	call getTemperature
.LVL74:
	movw r30,r16
	std Z+1,r25
	st Z,r24
	cpi r24,99
	cpc r25,__zero_reg__
	breq .L74
	.loc 1 1303 0
	movw r30,r14
	st Z,r9
	rjmp .L69
.L74:
	.loc 1 1302 0
	mov r10,r8
.LVL75:
.L69:
.LBB119:
.LBB120:
	.loc 3 163 0 discriminator 1
	ldi r24,lo8(5999)
	ldi r25,hi8(5999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
	rjmp .L70
.LVL76:
.L68:
.LBE120:
.LBE119:
	.loc 1 1305 0
	inc r11
.LVL77:
.L70:
	adiw r28,8
	subi r16,-2
	sbci r17,-1
	ldi r25,-1
	sub r14,r25
	sbc r15,r25
.LVL78:
	.loc 1 1299 0
	cpi r28,32
	cpc r29,__zero_reg__
	brne .L72
	.loc 1 1307 0
	tst r11
	breq .L75
	ldi r24,0
	rjmp .L73
.L75:
	mov r24,r10
.L73:
/* epilogue start */
	.loc 1 1309 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
.LVL79:
	pop r13
	pop r12
	pop r11
.LVL80:
	pop r10
.LVL81:
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE20:
	.size	checkPresenceSN, .-checkPresenceSN
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%02X%02X%02X%02X%02X%02X%02X"
	.section	.text.manage_new_sensors,"ax",@progbits
.global	manage_new_sensors
	.type	manage_new_sensors, @function
manage_new_sensors:
.LFB26:
	.loc 1 1465 0
	.cfi_startproc
.LVL82:
	push r2
.LCFI80:
	.cfi_def_cfa_offset 3
	.cfi_offset 2, -2
	push r3
.LCFI81:
	.cfi_def_cfa_offset 4
	.cfi_offset 3, -3
	push r4
.LCFI82:
	.cfi_def_cfa_offset 5
	.cfi_offset 4, -4
	push r5
.LCFI83:
	.cfi_def_cfa_offset 6
	.cfi_offset 5, -5
	push r6
.LCFI84:
	.cfi_def_cfa_offset 7
	.cfi_offset 6, -6
	push r7
.LCFI85:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -7
	push r8
.LCFI86:
	.cfi_def_cfa_offset 9
	.cfi_offset 8, -8
	push r9
.LCFI87:
	.cfi_def_cfa_offset 10
	.cfi_offset 9, -9
	push r10
.LCFI88:
	.cfi_def_cfa_offset 11
	.cfi_offset 10, -10
	push r11
.LCFI89:
	.cfi_def_cfa_offset 12
	.cfi_offset 11, -11
	push r12
.LCFI90:
	.cfi_def_cfa_offset 13
	.cfi_offset 12, -12
	push r13
.LCFI91:
	.cfi_def_cfa_offset 14
	.cfi_offset 13, -13
	push r14
.LCFI92:
	.cfi_def_cfa_offset 15
	.cfi_offset 14, -14
	push r15
.LCFI93:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -15
	push r16
.LCFI94:
	.cfi_def_cfa_offset 17
	.cfi_offset 16, -16
	push r17
.LCFI95:
	.cfi_def_cfa_offset 18
	.cfi_offset 17, -17
	push r28
.LCFI96:
	.cfi_def_cfa_offset 19
	.cfi_offset 28, -18
	push r29
.LCFI97:
	.cfi_def_cfa_offset 20
	.cfi_offset 29, -19
	rcall .
.LCFI98:
	.cfi_def_cfa_offset 22
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI99:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 20 */
.L__stack_usage = 20
	.loc 1 1469 0
	lds r25,nwSen_Phase
	cpi r25,lo8(2)
	brne .+2
	rjmp .L78
	brsh .L79
	tst r25
	breq .L80
	cpi r25,lo8(1)
	breq .L81
	rjmp .L95
.L79:
	cpi r25,lo8(3)
	brne .+2
	rjmp .L82
	cpi r25,lo8(5)
	brne .+2
	rjmp .L83
	rjmp .L95
.L80:
	.loc 1 1471 0
	sts kg,__zero_reg__
	.loc 1 1472 0
	ldi r24,lo8(1)
.LVL83:
	sts nwSen_Phase,r24
	.loc 1 1548 0
	ldi r24,0
	.loc 1 1473 0
	rjmp .L77
.LVL84:
.L81:
	.loc 1 1476 0
	lds r5,kg
	mov r16,r5
	clr r17
	sbrc r16,7
	com r17
	movw r24,r16
.LVL85:
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	movw r18,r24
	subi r18,lo8(-(gSensorIDs))
	sbci r19,hi8(-(gSensorIDs))
	movw r14,r18
	movw r24,r18
	call ValidSensorCode
.LVL86:
	tst r24
	brne .+2
	rjmp .L96
	.loc 1 1480 0
	lds r12,rSensorIDs
	lds r13,rSensorIDs+1
	mov __tmp_reg__,r31
	ldi r31,lo8(sn_presence)
	mov r10,r31
	ldi r31,hi8(sn_presence)
	mov r11,r31
	mov r31,__tmp_reg__
	std Y+2,r11
	std Y+1,r10
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	clr r3
	inc r3
	clr r4
	inc r4
	movw r6,r14
	.loc 1 1488 0
	subi r16,lo8(-(sn_presence))
	sbci r17,hi8(-(sn_presence))
	.loc 1 1491 0
	mov r2,__zero_reg__
.L88:
.LVL87:
	.loc 1 1480 0
	ldi r20,lo8(8)
	ldi r21,0
	movw r22,r12
	add r22,r8
	adc r23,r9
	movw r24,r14
	call memcmp
.LVL88:
	or r24,r25
	brne .L84
.LVL89:
	ldd r24,Y+1
	sub r24,r10
	.loc 1 1482 0
	cp r24,r5
	breq .L85
	movw r26,r6
	movw r20,r8
	subi r20,lo8(-(gSensorIDs))
	sbci r21,hi8(-(gSensorIDs))
	ldi r24,lo8(8)
.L86:
.LVL90:
	.loc 1 1484 0 discriminator 2
	movw r30,r20
	ld r25,Z
.LVL91:
	.loc 1 1485 0 discriminator 2
	ld r18,X
	st Z+,r18
	movw r20,r30
.LVL92:
	.loc 1 1486 0 discriminator 2
	st X+,r25
	.loc 1 1487 0 discriminator 2
	ldd r30,Y+1
	ldd r31,Y+2
	ld r25,Z
.LVL93:
	.loc 1 1488 0 discriminator 2
	movw r30,r16
	ld r18,Z
	ldd r30,Y+1
	ldd r31,Y+2
	st Z,r18
	.loc 1 1489 0 discriminator 2
	movw r30,r16
	st Z,r25
.LVL94:
	subi r24,lo8(-(-1))
	.loc 1 1483 0 discriminator 2
	brne .L86
	.loc 1 1491 0
	mov r3,r2
.LVL95:
	.loc 1 1481 0
	mov r4,r2
.LVL96:
.L84:
	ldi r31,8
	add r8,r31
	adc r9,__zero_reg__
	ldd r18,Y+1
	ldd r19,Y+2
	subi r18,-1
	sbci r19,-1
	std Y+2,r19
	std Y+1,r18
.LVL97:
	.loc 1 1479 0
	ldi r19,32
	cp r8,r19
	cpc r9,__zero_reg__
	brne .L88
	.loc 1 1494 0
	tst r4
	breq .L85
	.loc 1 1494 0 is_stmt 0 discriminator 1
	ldi r24,lo8(2)
	sts nwSen_Phase,r24
	.loc 1 1548 0 is_stmt 1 discriminator 1
	ldi r24,0
	rjmp .L77
.L85:
.LVL98:
	.loc 1 1496 0
	tst r3
	brne .+2
	rjmp .L98
	.loc 1 1497 0
	ldi r24,lo8(2)
	cp r24,r5
	brge .+2
	rjmp .L99
	.loc 1 1497 0 is_stmt 0 discriminator 1
	inc r5
	sts kg,r5
	.loc 1 1548 0 is_stmt 1 discriminator 1
	ldi r24,0
	rjmp .L77
.LVL99:
.L78:
	.loc 1 1505 0
	call LCD_Clear
.LVL100:
	.loc 1 1512 0
	lds r30,kg
	ldi r25,lo8(8)
	muls r30,r25
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(gSensorIDs))
	sbci r31,hi8(-(gSensorIDs))
	.loc 1 1508 0
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
.LVL101:
	.loc 1 1516 0
	ldi r24,lo8(assignStr)
	ldi r25,hi8(assignStr)
	push r25
	push r24
	ldi r24,lo8(setStr)
	ldi r25,hi8(setStr)
	push r25
	push r24
	ldi r24,lo8(__c.3127)
	ldi r25,hi8(__c.3127)
	push r25
	push r24
	call printf_P
.LVL102:
	.loc 1 1518 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	lds r24,sn_presence
	cpse r24,__zero_reg__
	rjmp .L89
	.loc 1 1518 0 is_stmt 0 discriminator 1
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	push __zero_reg__
	push __zero_reg__
	ldi r24,lo8(__c.3129)
	ldi r25,hi8(__c.3129)
	push r25
	push r24
	call printf_P
.LVL103:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L89:
	.loc 1 1519 0 is_stmt 1
	lds r24,sn_presence+1
	cpse r24,__zero_reg__
	rjmp .L90
	.loc 1 1519 0 is_stmt 0 discriminator 1
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(1)
	push r24
	ldi r24,lo8(__c.3131)
	ldi r25,hi8(__c.3131)
	push r25
	push r24
	call printf_P
.LVL104:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L90:
	.loc 1 1520 0 is_stmt 1
	lds r24,sn_presence+2
	cpse r24,__zero_reg__
	rjmp .L91
	.loc 1 1520 0 is_stmt 0 discriminator 1
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(2)
	push r24
	ldi r24,lo8(__c.3133)
	ldi r25,hi8(__c.3133)
	push r25
	push r24
	call printf_P
.LVL105:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L91:
	.loc 1 1521 0 is_stmt 1
	lds r24,sn_presence+3
	cpse r24,__zero_reg__
	rjmp .L92
	.loc 1 1521 0 is_stmt 0 discriminator 1
	ldi r24,lo8(returnStr)
	ldi r25,hi8(returnStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(3)
	push r24
	ldi r24,lo8(__c.3135)
	ldi r25,hi8(__c.3135)
	push r25
	push r24
	call printf_P
.LVL106:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.L92:
	.loc 1 1522 0 is_stmt 1
	call LCD_Update
.LVL107:
	.loc 1 1523 0
	ldi r24,lo8(3)
	sts nwSen_Phase,r24
	.loc 1 1548 0
	ldi r24,0
	.loc 1 1524 0
	rjmp .L77
.LVL108:
.L82:
	.loc 1 1526 0
	ldi r25,lo8(-48)
	add r25,r24
	cpi r25,lo8(4)
	brlo .+2
	rjmp .L100
	.loc 1 1532 0
	mov r24,r25
.LVL109:
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	ld r18,Z
	cpse r18,__zero_reg__
	rjmp .L94
	.loc 1 1533 0
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
	.loc 1 1534 0
	movw r30,r24
	subi r30,lo8(-(sn_presence))
	sbci r31,hi8(-(sn_presence))
	ldi r18,lo8(1)
	st Z,r18
.L94:
	.loc 1 1536 0
	ldi r24,lo8(5)
	sts nwSen_Phase,r24
	.loc 1 1548 0
	ldi r24,0
	.loc 1 1537 0
	rjmp .L77
.LVL110:
.L83:
	.loc 1 1542 0
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
.LVL111:
	call __eeupd_block_m328p
.LVL112:
	.loc 1 1543 0
	lds r24,kg
	cpi r24,lo8(3)
	brge .L101
	.loc 1 1544 0
	ldi r24,lo8(1)
	sts nwSen_Phase,r24
	.loc 1 1548 0
	ldi r24,0
	.loc 1 1546 0
	rjmp .L77
.LVL113:
.L95:
	.loc 1 1548 0
	ldi r24,0
.LVL114:
	rjmp .L77
.L96:
	.loc 1 1501 0
	ldi r24,lo8(1)
	rjmp .L77
.LVL115:
.L98:
	.loc 1 1548 0
	ldi r24,0
	rjmp .L77
.L99:
	.loc 1 1498 0
	ldi r24,lo8(1)
	rjmp .L77
.LVL116:
.L100:
	.loc 1 1548 0
	ldi r24,0
.LVL117:
	rjmp .L77
.L101:
	.loc 1 1545 0
	ldi r24,lo8(1)
.L77:
/* epilogue start */
	.loc 1 1550 0
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
.LFE26:
	.size	manage_new_sensors, .-manage_new_sensors
	.section	.text.resetSensNumber,"ax",@progbits
.global	resetSensNumber
	.type	resetSensNumber, @function
resetSensNumber:
.LFB30:
	.loc 1 1594 0
	.cfi_startproc
.LVL118:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(8)
	mul r24,r18
	movw r24,r0
	clr __zero_reg__
.LVL119:
	movw r30,r24
	subi r30,lo8(-(gSensorIDs))
	sbci r31,hi8(-(gSensorIDs))
	.loc 1 1596 0
	ldi r24,0
.LVL120:
.L104:
	.loc 1 1597 0 discriminator 2
	st Z+,__zero_reg__
	.loc 1 1596 0 discriminator 2
	subi r24,lo8(-(1))
.LVL121:
	cpi r24,lo8(8)
	brne .L104
/* epilogue start */
	.loc 1 1598 0
	ret
	.cfi_endproc
.LFE30:
	.size	resetSensNumber, .-resetSensNumber
	.section	.text.sms_noready_sens,"ax",@progbits
.global	sms_noready_sens
	.type	sms_noready_sens, @function
sms_noready_sens:
.LFB29:
	.loc 1 1570 0
	.cfi_startproc
	push r11
.LCFI100:
	.cfi_def_cfa_offset 3
	.cfi_offset 11, -2
	push r12
.LCFI101:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI102:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI103:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI104:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI105:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI106:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI107:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI108:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r11,r24
	.loc 1 1574 0
	ldi r24,lo8(-49)
	ldi r25,0
	call malloc
	movw r28,r24
	sbiw r24,0
	brne .+2
	rjmp .L106
	.loc 1 1575 0
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
	.loc 1 1578 0
	ldi r20,lo8(-96)
	ldi r21,0
	ldi r22,lo8(notReadyStr)
	ldi r23,hi8(notReadyStr)
	movw r24,r28
	call strncpy_P
	.loc 1 1579 0
	ldi r20,lo8(30)
	ldi r21,0
	ldi r22,lo8(snStr)
	ldi r23,hi8(snStr)
	ldi r24,lo8(wbuffer)
	ldi r25,hi8(wbuffer)
	call strncpy_P
	.loc 1 1580 0
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
	.loc 1 1581 0
	push __zero_reg__
.LCFI109:
	.cfi_def_cfa_offset 12
	push r11
.LCFI110:
	.cfi_def_cfa_offset 13
	ldi r24,lo8(__c.3160)
	ldi r25,hi8(__c.3160)
	push r25
.LCFI111:
	.cfi_def_cfa_offset 14
	push r24
.LCFI112:
	.cfi_def_cfa_offset 15
	ldi r16,lo8(wbuffer)
	ldi r17,hi8(wbuffer)
	push r17
.LCFI113:
	.cfi_def_cfa_offset 16
	push r16
.LCFI114:
	.cfi_def_cfa_offset 17
	call sprintf_P
	.loc 1 1582 0
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
	.loc 1 1583 0
	lds r24,tAsync
	push __zero_reg__
.LCFI115:
	.cfi_def_cfa_offset 18
	push r24
.LCFI116:
	.cfi_def_cfa_offset 19
	lds r24,tAsync+1
	push __zero_reg__
.LCFI117:
	.cfi_def_cfa_offset 20
	push r24
.LCFI118:
	.cfi_def_cfa_offset 21
	lds r24,tAsync+2
	push __zero_reg__
.LCFI119:
	.cfi_def_cfa_offset 22
	push r24
.LCFI120:
	.cfi_def_cfa_offset 23
	ldi r18,lo8(__c.3162)
	ldi r19,hi8(__c.3162)
	push r19
.LCFI121:
	.cfi_def_cfa_offset 24
	push r18
.LCFI122:
	.cfi_def_cfa_offset 25
	push r17
.LCFI123:
	.cfi_def_cfa_offset 26
	push r16
.LCFI124:
	.cfi_def_cfa_offset 27
	call sprintf_P
	.loc 1 1584 0
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
	.loc 1 1585 0
	call DoWatchDog
	.loc 1 1586 0
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	movw r24,r12
	call gsm_send_sms
	.loc 1 1587 0
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
.LCFI125:
	.cfi_def_cfa_offset 11
.L106:
	.loc 1 1589 0
	mov r30,r11
	ldi r31,0
	subi r30,lo8(-(noready_sens))
	sbci r31,hi8(-(noready_sens))
	st Z,__zero_reg__
	.loc 1 1590 0
	mov r24,r11
	call resetSensNumber
/* epilogue start */
	.loc 1 1592 0
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
.LFE29:
	.size	sms_noready_sens, .-sms_noready_sens
	.section	.text.sms_pumpStarted,"ax",@progbits
.global	sms_pumpStarted
	.type	sms_pumpStarted, @function
sms_pumpStarted:
.LFB31:
	.loc 1 1600 0
	.cfi_startproc
	push r16
.LCFI126:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI127:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI128:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI129:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
.LVL122:
	.loc 1 1604 0
	ldi r24,lo8(-49)
	ldi r25,0
	call malloc
.LVL123:
	movw r28,r24
.LVL124:
	sbiw r24,0
	breq .L107
	.loc 1 1605 0
	movw r16,r24
	subi r16,96
	sbci r17,-1
	ldi r20,lo8(20)
	ldi r21,0
	ldi r22,lo8(telNumber)
	ldi r23,hi8(telNumber)
	movw r24,r16
.LVL125:
	call strncpy
.LVL126:
	.loc 1 1606 0
	ldi r20,lo8(-96)
	ldi r21,0
	ldi r22,lo8(startRegulatorStr)
	ldi r23,hi8(startRegulatorStr)
	movw r24,r28
	call strncpy_P
.LVL127:
	.loc 1 1609 0
	ldi r20,lo8(2)
	ldi r21,0
	movw r22,r28
	movw r24,r16
	call gsm_send_sms
.LVL128:
	.loc 1 1610 0
	movw r24,r28
	call free
.LVL129:
.L107:
/* epilogue start */
	.loc 1 1612 0
	pop r29
	pop r28
.LVL130:
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE31:
	.size	sms_pumpStarted, .-sms_pumpStarted
	.section	.text.sms_powerGone,"ax",@progbits
.global	sms_powerGone
	.type	sms_powerGone, @function
sms_powerGone:
.LFB32:
	.loc 1 1614 0
	.cfi_startproc
	push r16
.LCFI130:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI131:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI132:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI133:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 1618 0
	ldi r24,lo8(-49)
	ldi r25,0
	call malloc
	movw r28,r24
	sbiw r24,0
	brne .+2
	rjmp .L109
	.loc 1 1619 0
	movw r16,r24
	subi r16,96
	sbci r17,-1
	ldi r20,lo8(20)
	ldi r21,0
	ldi r22,lo8(telNumber)
	ldi r23,hi8(telNumber)
	movw r24,r16
	call strncpy
	.loc 1 1620 0
	ldi r20,lo8(-96)
	ldi r21,0
	ldi r22,lo8(startPowerGoneStr)
	ldi r23,hi8(startPowerGoneStr)
	movw r24,r28
	call strncpy_P
	.loc 1 1621 0
	lds r24,tAsync
	push __zero_reg__
.LCFI134:
	.cfi_def_cfa_offset 7
	push r24
.LCFI135:
	.cfi_def_cfa_offset 8
	lds r24,tAsync+1
	push __zero_reg__
.LCFI136:
	.cfi_def_cfa_offset 9
	push r24
.LCFI137:
	.cfi_def_cfa_offset 10
	lds r24,tAsync+2
	push __zero_reg__
.LCFI138:
	.cfi_def_cfa_offset 11
	push r24
.LCFI139:
	.cfi_def_cfa_offset 12
	ldi r24,lo8(__c.3179)
	ldi r25,hi8(__c.3179)
	push r25
.LCFI140:
	.cfi_def_cfa_offset 13
	push r24
.LCFI141:
	.cfi_def_cfa_offset 14
	ldi r24,lo8(wbuffer)
	ldi r25,hi8(wbuffer)
	push r25
.LCFI142:
	.cfi_def_cfa_offset 15
	push r24
.LCFI143:
	.cfi_def_cfa_offset 16
	call sprintf_P
	.loc 1 1622 0
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
	.loc 1 1623 0
	ldi r20,lo8(2)
	ldi r21,0
	movw r22,r28
	movw r24,r16
	call gsm_send_sms
	.loc 1 1624 0
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
.LCFI144:
	.cfi_def_cfa_offset 6
.L109:
/* epilogue start */
	.loc 1 1626 0
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE32:
	.size	sms_powerGone, .-sms_powerGone
	.section	.text.ManageOutdoorTempEvent,"ax",@progbits
.global	ManageOutdoorTempEvent
	.type	ManageOutdoorTempEvent, @function
ManageOutdoorTempEvent:
.LFB33:
	.loc 1 1629 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1630 0
	lds r24,temper+2
	lds r25,temper+2+1
	cpi r24,99
	cpc r25,__zero_reg__
	brge .L111
	.loc 1 1631 0
	lds r18,temp_for_hour
	ldi r19,0
	movw r20,r18
	sub r20,r24
	sbc r21,r25
	cpi r20,10
	cpc r21,__zero_reg__
	brlt .L113
	.loc 1 1632 0
	ldi r24,lo8(1)
	sts PrefHeatting,r24
	ret
.L113:
	.loc 1 1633 0
	sts PrefHeatting,__zero_reg__
.L111:
	ret
	.cfi_endproc
.LFE33:
	.size	ManageOutdoorTempEvent, .-ManageOutdoorTempEvent
	.section	.text.TestNoReadySensors,"ax",@progbits
.global	TestNoReadySensors
	.type	TestNoReadySensors, @function
TestNoReadySensors:
.LFB34:
	.loc 1 1638 0
	.cfi_startproc
	push r9
.LCFI145:
	.cfi_def_cfa_offset 3
	.cfi_offset 9, -2
	push r10
.LCFI146:
	.cfi_def_cfa_offset 4
	.cfi_offset 10, -3
	push r11
.LCFI147:
	.cfi_def_cfa_offset 5
	.cfi_offset 11, -4
	push r12
.LCFI148:
	.cfi_def_cfa_offset 6
	.cfi_offset 12, -5
	push r13
.LCFI149:
	.cfi_def_cfa_offset 7
	.cfi_offset 13, -6
	push r14
.LCFI150:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -7
	push r15
.LCFI151:
	.cfi_def_cfa_offset 9
	.cfi_offset 15, -8
	push r16
.LCFI152:
	.cfi_def_cfa_offset 10
	.cfi_offset 16, -9
	push r17
.LCFI153:
	.cfi_def_cfa_offset 11
	.cfi_offset 17, -10
	push r28
.LCFI154:
	.cfi_def_cfa_offset 12
	.cfi_offset 28, -11
	push r29
.LCFI155:
	.cfi_def_cfa_offset 13
	.cfi_offset 29, -12
/* prologue: function */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
.LVL131:
	ldi r28,lo8(sn_presence)
	ldi r29,hi8(sn_presence)
	mov __tmp_reg__,r31
	ldi r31,lo8(temper)
	mov r14,r31
	ldi r31,hi8(temper)
	mov r15,r31
	mov r31,__tmp_reg__
	.loc 1 1638 0
	ldi r16,0
	ldi r17,0
	.loc 1 1645 0
	clr r9
	inc r9
.LVL132:
.L118:
	.loc 1 1642 0
	ld r24,Y
	cpse r24,__zero_reg__
	rjmp .L115
	.loc 1 1643 0
	lds r12,rSensorIDs
	lds r13,rSensorIDs+1
	add r12,r16
	adc r13,r17
	movw r24,r12
	call ValidSensorCode
.LVL133:
	tst r24
	breq .L115
	.loc 1 1644 0
	movw r24,r12
	call getTemperature
.LVL134:
	movw r30,r14
	std Z+1,r25
	st Z,r24
	cpi r24,99
	cpc r25,__zero_reg__
	breq .L116
	.loc 1 1645 0
	st Y,r9
.L116:
.LVL135:
.LBB121:
.LBB122:
	.loc 3 163 0
	ldi r24,lo8(5999)
	ldi r25,hi8(5999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL136:
.L115:
	adiw r28,1
.LVL137:
	subi r16,-8
	sbci r17,-1
	ldi r25,2
	add r14,r25
	adc r15,__zero_reg__
.LBE122:
.LBE121:
	.loc 1 1641 0
	cpi r16,32
	cpc r17,__zero_reg__
	brne .L118
/* epilogue start */
	.loc 1 1649 0
	pop r29
	pop r28
.LVL138:
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	ret
	.cfi_endproc
.LFE34:
	.size	TestNoReadySensors, .-TestNoReadySensors
	.section	.rodata.str1.1
.LC1:
	.string	"%02X "
.LC2:
	.string	"\n%02X%02X%02X%02X%02X%02X%02X"
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB14:
	.loc 1 264 0
	.cfi_startproc
	push r28
.LCFI156:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI157:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI158:
	.cfi_def_cfa_register 28
	sbiw r28,19
.LCFI159:
	.cfi_def_cfa_offset 23
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 19 */
/* stack size = 21 */
.L__stack_usage = 21
	.loc 1 275 0
	ldi r24,lo8(lcd_str)
	ldi r25,hi8(lcd_str)
	sts __iob+2+1,r25
	sts __iob+2,r24
	.loc 1 277 0
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
	.loc 1 278 0
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
	.loc 1 281 0
	sts ReadyWATCHDOG,__zero_reg__
	.loc 1 282 0
	sts x+1,__zero_reg__
	sts x,__zero_reg__
	sts y+1,__zero_reg__
	sts y,__zero_reg__
	.loc 1 283 0
	call LCD_initialize2
.LVL139:
	.loc 1 285 0
	sbis 0x9,3
	rjmp .L120
	.loc 1 286 0
	call LcdPowerGoneStr
.LVL140:
	.loc 1 287 0
	call abort
.LVL141:
.L120:
	.loc 1 290 0
	ldi r24,lo8(1)
	sts MainLoopPhase,r24
	.loc 1 291 0
	sts LastPhase,r24
	.loc 1 292 0
	sts MenuPhase,__zero_reg__
	.loc 1 294 0
	ldi r24,lo8(33)
	ldi r25,0
	call malloc
.LVL142:
	sts rSensorIDs+1,r25
	sts rSensorIDs,r24
	sbiw r24,0
	brne .+2
	rjmp .L121
	.loc 1 295 0
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	call __eerd_block_m328p
.LVL143:
	.loc 1 298 0
	ldi r24,lo8(TempInDoorMin)
	ldi r25,hi8(TempInDoorMin)
	call __eerd_byte_m328p
.LVL144:
	sts rTempInDoorMin,r24
	.loc 1 299 0
	ldi r24,lo8(TempInDoorMax)
	ldi r25,hi8(TempInDoorMax)
	call __eerd_byte_m328p
.LVL145:
	sts rTempInDoorMax,r24
	.loc 1 300 0
	ldi r24,lo8(TempOutDoorMin)
	ldi r25,hi8(TempOutDoorMin)
	call __eerd_byte_m328p
.LVL146:
	sts rTempOutDoorMin,r24
	.loc 1 301 0
	ldi r24,lo8(TempOutDoorMax)
	ldi r25,hi8(TempOutDoorMax)
	call __eerd_byte_m328p
.LVL147:
	sts rTempOutDoorMax,r24
	.loc 1 302 0
	ldi r24,lo8(TempSupplyMin)
	ldi r25,hi8(TempSupplyMin)
	call __eerd_byte_m328p
.LVL148:
	sts rTempSupplyMin,r24
	.loc 1 303 0
	ldi r24,lo8(TempSupplyMax)
	ldi r25,hi8(TempSupplyMax)
	call __eerd_byte_m328p
.LVL149:
	sts rTempSupplyMax,r24
	.loc 1 304 0
	ldi r24,lo8(TempDiffSupplyReturnMin)
	ldi r25,hi8(TempDiffSupplyReturnMin)
	call __eerd_byte_m328p
.LVL150:
	sts rTempDiffSupplyReturnMin,r24
	.loc 1 305 0
	ldi r24,lo8(TempDiffSupplyReturnMax)
	ldi r25,hi8(TempDiffSupplyReturnMax)
	call __eerd_byte_m328p
.LVL151:
	sts rTempDiffSupplyReturnMax,r24
	.loc 1 307 0
	ldi r20,lo8(14)
	ldi r21,0
	ldi r22,lo8(etelNumber)
	ldi r23,hi8(etelNumber)
	ldi r24,lo8(telNumber)
	ldi r25,hi8(telNumber)
	call __eerd_block_m328p
.LVL152:
	.loc 1 314 0
	sts fl,__zero_reg__
.LVL153:
	.loc 1 323 0
	ldi r30,lo8(100)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-88)
	st Z,r24
	.loc 1 326 0
	in r24,0x7
	ori r24,lo8(48)
	out 0x7,r24
	.loc 1 327 0
	sbi 0x7,3
	.loc 1 333 0
	call WDT_off
.LVL154:
	.loc 1 338 0
	sbi 0xa,5
	.loc 1 339 0
	sbi 0xb,5
	.loc 1 344 0
	call LCD_Clear
.LVL155:
	.loc 1 345 0
	ldi r22,lo8(1)
	ldi r24,lo8(5)
	call LCD_set_position2
.LVL156:
	.loc 1 346 0
	ldi r24,lo8(helloStr1)
	ldi r25,hi8(helloStr1)
	push r25
	push r24
	ldi r24,lo8(__c.2807)
	ldi r25,hi8(__c.2807)
	push r25
	push r24
	call printf_P
.LVL157:
	.loc 1 347 0
	ldi r22,lo8(2)
	ldi r24,lo8(3)
	call LCD_set_position2
.LVL158:
	.loc 1 348 0
	ldi r24,lo8(helloStr2)
	ldi r25,hi8(helloStr2)
	push r25
	push r24
	ldi r24,lo8(__c.2809)
	ldi r25,hi8(__c.2809)
	push r25
	push r24
	call printf_P
.LVL159:
	.loc 1 349 0
	call LCD_Update
.LVL160:
	.loc 1 352 0
	ldi r24,lo8(51)
	ldi r25,0
	call uart_init
.LVL161:
	.loc 1 356 0
	call gsm_text_sms
.LVL162:
	.loc 1 357 0
	call sms_pumpStarted
.LVL163:
	.loc 1 408 0
	ldi r18,lo8(4)
	ldi r20,lo8(42)
	ldi r21,0
	ldi r22,lo8(43)
	ldi r23,0
	ldi r24,lo8(41)
	ldi r25,0
	call ow_set_bus
.LVL164:
	.loc 1 411 0
/* #APP */
 ;  411 "../main.c" 1
	sei
 ;  0 "" 2
	.loc 1 412 0
/* #NOAPP */
	call checkPresenceSN
.LVL165:
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	tst r24
	breq .L122
	rjmp .L242
.LVL166:
.L121:
	.loc 1 296 0
	call abort
.LVL167:
.L122:
	.loc 1 422 0
	call search_sensors_n
.LVL168:
	sts nSensors,r24
	.loc 1 413 0
	mov r15,__zero_reg__
	mov r17,r15
	.loc 1 423 0
	rjmp .L124
.LVL169:
.L126:
	.loc 1 424 0
	call ResetDiscrepancy
.LVL170:
.LBB123:
.LBB124:
	.loc 3 163 0
	ldi r30,lo8(5999)
	ldi r31,hi8(5999)
	1: sbiw r30,1
	brne 1b
	rjmp .
	nop
.LBE124:
.LBE123:
	.loc 1 426 0
	call search_sensors_n
.LVL171:
	sts nSensors,r24
	.loc 1 427 0
	subi r17,lo8(-(1))
.LVL172:
	cpi r17,lo8(5)
	breq .L125
.LVL173:
.L124:
	.loc 1 423 0 discriminator 1
	lds r24,nSensors
	cpi r24,lo8(4)
	brne .L126
.L125:
	mov r15,r17
.LVL174:
	.loc 1 429 0
	ldi r24,lo8(1)
	sts btest_new_sensors,r24
	rjmp .L127
.LVL175:
.L242:
	.loc 1 432 0
	call copyrSNsTogSNs
.LVL176:
	.loc 1 433 0
	ldi r24,lo8(4)
	sts nSensors,r24
	.loc 1 313 0
	mov r15,__zero_reg__
.LVL177:
.L127:
	.loc 1 436 0
	ldi r24,lo8(7)
	call InitAdc
.LVL178:
	.loc 1 437 0
	call InitAnalogComp
.LVL179:
	.loc 1 438 0
	call init_clock
.LVL180:
	.loc 1 440 0
	call LCD_Clear
.LVL181:
	.loc 1 441 0
	call LcdFirstLine
.LVL182:
	.loc 1 443 0
	lds r24,nSensors
	ldi r25,0
	call LcdPutInt
.LVL183:
	.loc 1 445 0
	ldi r24,lo8(Sensorsfound)
	ldi r25,hi8(Sensorsfound)
	call LCD_draw_string3
.LVL184:
	.loc 1 446 0
	call LCD_Update
.LVL185:
	.loc 1 452 0
	lds r24,nSensors
	cpi r24,lo8(4)
	breq .+2
	rjmp .L128
	.loc 1 453 0
	call test_SN_sensors
.LVL186:
	mov r14,r24
	mov r16,r24
	clr r17
	sbrc r16,7
	com r17
.LVL187:
	cpi r16,99
	cpc r17,__zero_reg__
	breq .+2
	rjmp .L129
.LVL188:
	.loc 1 453 0 is_stmt 0 discriminator 1
	mov r14,__zero_reg__
.LVL189:
.L136:
	.loc 1 456 0 is_stmt 1
	call LcdNextStr
.LVL190:
	.loc 1 457 0
	mov r16,r14
	ldi r17,0
	movw r24,r16
	adiw r24,1
	call LcdPutInt
.LVL191:
	.loc 1 458 0
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
	brne .L130
	.loc 1 459 0
	ldi r24,lo8(DS18S20)
	ldi r25,hi8(DS18S20)
	call LCD_draw_string3
.LVL192:
	rjmp .L131
.L130:
	.loc 1 461 0
	cpi r24,lo8(34)
	brne .L132
	.loc 1 462 0
	ldi r24,lo8(DS1822)
	ldi r25,hi8(DS1822)
	call LCD_draw_string3
.LVL193:
	rjmp .L131
.L132:
	.loc 1 466 0
	ldi r24,lo8(DS18B20)
	ldi r25,hi8(DS18B20)
	call LCD_draw_string3
.LVL194:
.L131:
	.loc 1 470 0
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
.LVL195:
	cpse r24,__zero_reg__
	rjmp .L133
	.loc 1 471 0
	ldi r24,lo8(PAR)
	ldi r25,hi8(PAR)
	call LCD_draw_string3
.LVL196:
	rjmp .L134
.L133:
	.loc 1 474 0
	ldi r24,lo8(EXT)
	ldi r25,hi8(EXT)
	call LCD_draw_string3
.LVL197:
.L134:
	.loc 1 455 0
	inc r14
.LVL198:
	lds r24,nSensors
	cp r14,r24
	brlo .L136
	.loc 1 478 0
	call LCD_Update
.LVL199:
	rjmp .L137
.LVL200:
.L129:
	.loc 1 481 0
	ldi r18,lo8(alarmStr)
	ldi r19,hi8(alarmStr)
	push r19
	push r18
	ldi r18,lo8(__c.2817)
	ldi r19,hi8(__c.2817)
	push r19
	push r18
	call printf_P
.LVL201:
	.loc 1 482 0
	push r17
	push r14
	ldi r24,lo8(sensorStr)
	ldi r25,hi8(sensorStr)
	push r25
	push r24
	ldi r24,lo8(__c.2819)
	ldi r25,hi8(__c.2819)
	push r25
	push r24
	call printf_P
.LVL202:
	.loc 1 483 0
	ldi r24,lo8(missingStr)
	ldi r25,hi8(missingStr)
	push r25
	push r24
	ldi r24,lo8(__c.2821)
	ldi r25,hi8(__c.2821)
	push r25
	push r24
	call printf_P
.LVL203:
	.loc 1 484 0
	call LCD_Update
.LVL204:
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L137
.LVL205:
.L128:
	.loc 1 487 0
	ldi r24,lo8(alarmStr)
	ldi r25,hi8(alarmStr)
	push r25
	push r24
	ldi r24,lo8(__c.2823)
	ldi r25,hi8(__c.2823)
	push r25
	push r24
	call printf_P
.LVL206:
	.loc 1 488 0
	ldi r24,lo8(sensorStr)
	ldi r25,hi8(sensorStr)
	push r25
	push r24
	ldi r24,lo8(__c.2825)
	ldi r25,hi8(__c.2825)
	push r25
	push r24
	call printf_P
.LVL207:
	.loc 1 489 0
	ldi r24,lo8(absenceStr)
	ldi r25,hi8(absenceStr)
	push r25
	push r24
	ldi r24,lo8(__c.2827)
	ldi r25,hi8(__c.2827)
	push r25
	push r24
	call printf_P
.LVL208:
	.loc 1 490 0
	call LCD_Update
.LVL209:
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
.L137:
.LVL210:
.LBB125:
.LBB126:
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
.LBE126:
.LBE125:
	.loc 1 500 0
	call LCD_Clear
.LVL211:
	.loc 1 502 0
	sbi 0x4,0
	.loc 1 503 0
	sts TimeKeyPressed,__zero_reg__
	.loc 1 504 0
	sts extstate,__zero_reg__
	.loc 1 505 0
	sts powergone,__zero_reg__
	.loc 1 506 0
	call ExtInt0Enable
.LVL212:
	.loc 1 507 0
	call ExtInt1Enable
.LVL213:
	.loc 1 509 0
	sts PrefHeatting,__zero_reg__
	.loc 1 510 0
	lds r24,temper+2
	sts temp_for_hour,r24
	.loc 1 512 0
	lds r24,btest_new_sensors
	cpse r24,__zero_reg__
	rjmp .L138
	.loc 1 513 0
	call manageTemperatureEvent
.LVL214:
	.loc 1 514 0
	ldi r24,lo8(1)
	sts ReadyWATCHDOG,r24
	rjmp .L139
.L138:
	.loc 1 516 0
	ldi r24,lo8(3)
	sts MainLoopPhase,r24
	.loc 1 517 0
	sts nwSen_Phase,__zero_reg__
.L139:
	.loc 1 1172 0
	std Y+18,__zero_reg__
	ldi r26,lo8(1)
	std Y+16,r26
	mov __tmp_reg__,r31
	ldi r31,lo8(99)
	mov r8,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(99)
	mov r9,r31
	mov r31,__tmp_reg__
	std Y+15,__zero_reg__
	std Y+14,__zero_reg__
	std Y+17,__zero_reg__
	std Y+19,__zero_reg__
	ldi r16,lo8(noready_sens)
	ldi r17,hi8(noready_sens)
	mov __tmp_reg__,r31
	ldi r31,lo8(noready_sens+4)
	mov r6,r31
	ldi r31,hi8(noready_sens+4)
	mov r7,r31
	mov r31,__tmp_reg__
	.loc 1 1196 0
	mov __tmp_reg__,r31
	ldi r31,lo8(tAsync+1)
	mov r4,r31
	ldi r31,hi8(tAsync+1)
	mov r5,r31
	mov r31,__tmp_reg__
	.loc 1 1207 0
	mov __tmp_reg__,r31
	ldi r31,lo8(tAsync+2)
	mov r2,r31
	ldi r31,hi8(tAsync+2)
	mov r3,r31
	mov r31,__tmp_reg__
	rjmp .L140
.LVL215:
.L241:
	.loc 1 1172 0
	set
	clr r15
	bld r15,2
.LVL216:
.L140:
	.loc 1 524 0
	lds r24,wait_powergone
	cpse r24,__zero_reg__
	jmp .L141
	.loc 1 524 0 is_stmt 0 discriminator 1
	lds r24,powergone
	tst r24
	breq .L142
	.loc 1 525 0 is_stmt 1
	ldi r24,lo8(1)
	sts wait_powergone,r24
	rjmp .L142
.L233:
	.loc 1 530 0
	cpi r25,lo8(3)
	brlo .L142
	.loc 1 531 0
	sbis 0x9,3
	rjmp .L143
	.loc 1 532 0
	call LcdPowerGoneStr
.LVL217:
	.loc 1 533 0
	call sms_powerGone
.LVL218:
	.loc 1 534 0
	call abort
.LVL219:
.L143:
	.loc 1 536 0
/* #APP */
 ;  536 "../main.c" 1
	cli
 ;  0 "" 2
	.loc 1 537 0
/* #NOAPP */
	sts powergone,__zero_reg__
	.loc 1 538 0
	sts wait_powergone,__zero_reg__
	.loc 1 539 0
/* #APP */
 ;  539 "../main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.L142:
	.loc 1 550 0
	call GetKeyCode
.LVL220:
	mov r13,r24
.LVL221:
	.loc 1 552 0
	ldi r27,lo8(42)
	cpse r24,r27
	rjmp .L144
	.loc 1 552 0 is_stmt 0 discriminator 1
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L144
	.loc 1 553 0 is_stmt 1
	lds r24,MainLoopPhase
	sts LastPhase,r24
	.loc 1 554 0
	ldi r25,lo8(1)
	sts MainLoopPhase,r25
	.loc 1 555 0
	cpi r24,lo8(1)
	brne .+2
	rjmp .L145
	.loc 1 556 0
	call LCD_Clear
.LVL222:
.L144:
	.loc 1 559 0
	lds r24,MainLoopPhase
	cpi r24,lo8(1)
	breq .L147
	brlo .L148
	cpi r24,lo8(3)
	breq .+4
	jmp .L146
	.loc 1 567 0
	mov r24,r13
	call manage_new_sensors
.LVL223:
	tst r24
	brne .+2
	rjmp .L140
	.loc 1 568 0
	call manageTemperatureEvent
.LVL224:
	.loc 1 569 0
	lds r24,temper+2
	sts temp_for_hour,r24
	.loc 1 570 0
	lds r24,MainLoopPhase
	sts LastPhase,r24
	.loc 1 571 0
	ldi r24,lo8(1)
	sts MainLoopPhase,r24
	.loc 1 572 0
	sts MenuPhase,__zero_reg__
	.loc 1 573 0
	sts ReadyWATCHDOG,r24
	.loc 1 574 0
	lds r24,rSensorIDs
	lds r25,rSensorIDs+1
	call free
.LVL225:
	.loc 1 577 0
	jmp .L146
.L148:
	.loc 1 580 0
	call DisplayTemperature
.LVL226:
	.loc 1 581 0
	jmp .L146
.L147:
	.loc 1 585 0
	mov r24,r13
	ldi r25,0
	movw r30,r24
	sbiw r30,35
	cpi r30,23
	cpc r31,__zero_reg__
	brlo .+2
	rjmp .L145
	subi r30,lo8(-(gs(.L152)))
	sbci r31,hi8(-(gs(.L152)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table.main,"a",@progbits
	.p2align	1
.L152:
	.word gs(.L151)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L145)
	.word gs(.L153)
	.word gs(.L154)
	.word gs(.L155)
	.word gs(.L156)
	.word gs(.L157)
	.word gs(.L158)
	.word gs(.L159)
	.word gs(.L160)
	.word gs(.L161)
	.section	.text.main
.L153:
	.loc 1 588 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L145
	.loc 1 589 0
	ldi r24,lo8(8)
	sts MenuPhase,r24
	rjmp .L162
.L154:
	.loc 1 592 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L145
	.loc 1 593 0
	ldi r24,lo8(2)
	sts MenuPhase,r24
	rjmp .L163
.L155:
	.loc 1 596 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L145
	.loc 1 597 0
	ldi r24,lo8(5)
	sts MenuPhase,r24
	rjmp .L164
.L156:
	.loc 1 600 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L145
	.loc 1 601 0
	ldi r24,lo8(4)
	sts MenuPhase,r24
	rjmp .L165
.L157:
	.loc 1 604 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L145
	.loc 1 605 0
	ldi r24,lo8(4)
	sts MenuPhase,r24
.LVL227:
	.loc 1 607 0
	ldi r24,lo8(1)
	sts fl,r24
	.loc 1 606 0
	ldi r30,lo8(10)
	std Y+14,r30
	rjmp .L145
.LVL228:
.L158:
	.loc 1 611 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L145
	.loc 1 612 0
	ldi r24,lo8(6)
	sts MenuPhase,r24
	rjmp .L166
.L159:
	.loc 1 615 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L145
	.loc 1 616 0
	ldi r24,lo8(3)
	sts MenuPhase,r24
	rjmp .L167
.L160:
	.loc 1 619 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L145
	.loc 1 620 0
	ldi r24,lo8(7)
	sts MenuPhase,r24
	rjmp .L168
.L161:
	.loc 1 623 0
	lds r24,MenuPhase
	cpse r24,__zero_reg__
	rjmp .L145
	.loc 1 624 0
	ldi r24,lo8(1)
	sts MenuPhase,r24
	rjmp .L169
.L151:
	.loc 1 628 0
	call LCD_Clear
.LVL229:
	.loc 1 629 0
	call LCD_Update
.LVL230:
	.loc 1 630 0
	lds r24,fl
	tst r24
	breq .L170
	.loc 1 631 0
	sts MenuPhase,__zero_reg__
	.loc 1 632 0
	sts fl,__zero_reg__
	.loc 1 634 0
	rjmp .L145
.L170:
	.loc 1 633 0
	sts MainLoopPhase,__zero_reg__
	ldi r24,lo8(1)
	sts mausure_temperature_ok,r24
	rjmp .L140
.LVL231:
.L145:
	.loc 1 637 0
	lds r20,MenuPhase
	ldi r21,0
	cpi r20,10
	cpc r21,__zero_reg__
	brlo .+4
	jmp .L146
	movw r30,r20
	subi r30,lo8(-(gs(.L172)))
	sbci r31,hi8(-(gs(.L172)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table.main
	.p2align	1
.L172:
	.word gs(.L171)
	.word gs(.L169)
	.word gs(.L163)
	.word gs(.L167)
	.word gs(.L165)
	.word gs(.L164)
	.word gs(.L166)
	.word gs(.L168)
	.word gs(.L162)
	.word gs(.L173)
	.section	.text.main
.L171:
	.loc 1 639 0
	lds r24,fl
	tst r24
	breq .L174
	.loc 1 639 0 is_stmt 0 discriminator 1
	call LCD_Clear
.LVL232:
	sts fl,__zero_reg__
.L174:
	.loc 1 640 0 is_stmt 1
	call LcdFirstLine
.LVL233:
	.loc 1 642 0
	ldi r24,lo8(telStr)
	ldi r25,hi8(telStr)
	push r25
	push r24
	mov __tmp_reg__,r31
	ldi r31,lo8(setStr)
	mov r12,r31
	ldi r31,hi8(setStr)
	mov r13,r31
	mov r31,__tmp_reg__
	push r13
	push r12
	push __zero_reg__
	ldi r24,lo8(1)
	push r24
	ldi r24,lo8(__c.2846)
	ldi r25,hi8(__c.2846)
	push r25
	push r24
	call printf_P
.LVL234:
	.loc 1 643 0
	ldi r24,lo8(snStr)
	ldi r25,hi8(snStr)
	push r25
	push r24
	mov __tmp_reg__,r31
	ldi r31,lo8(viewStr)
	mov r14,r31
	ldi r31,hi8(viewStr)
	mov r15,r31
	mov r31,__tmp_reg__
	push r15
	push r14
	push __zero_reg__
	ldi r24,lo8(2)
	push r24
	ldi r24,lo8(__c.2848)
	ldi r25,hi8(__c.2848)
	push r25
	push r24
	call printf_P
.LVL235:
	.loc 1 644 0
	mov __tmp_reg__,r31
	ldi r31,lo8(timeStr)
	mov r10,r31
	ldi r31,hi8(timeStr)
	mov r11,r31
	mov r31,__tmp_reg__
	push r11
	push r10
	push r13
	push r12
	push __zero_reg__
	ldi r24,lo8(3)
	push r24
	ldi r24,lo8(__c.2850)
	ldi r25,hi8(__c.2850)
	push r25
	push r24
	call printf_P
.LVL236:
	.loc 1 645 0
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	push r13
	push r12
	push __zero_reg__
	ldi r24,lo8(4)
	push r24
	ldi r24,lo8(__c.2852)
	ldi r25,hi8(__c.2852)
	push r25
	push r24
	call printf_P
.LVL237:
	.loc 1 646 0
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
	ldi r24,lo8(__c.2854)
	ldi r25,hi8(__c.2854)
	push r25
	push r24
	call printf_P
.LVL238:
	.loc 1 648 0
	push r11
	push r10
	push r15
	push r14
	push __zero_reg__
	ldi r24,lo8(6)
	push r24
	ldi r24,lo8(__c.2856)
	ldi r25,hi8(__c.2856)
	push r25
	push r24
	call printf_P
.LVL239:
	.loc 1 649 0
	ldi r24,lo8(assignStr)
	ldi r25,hi8(assignStr)
	push r25
	push r24
	push r15
	push r14
	push __zero_reg__
	ldi r24,lo8(7)
	push r24
	ldi r24,lo8(__c.2858)
	ldi r25,hi8(__c.2858)
	push r25
	push r24
	call printf_P
.LVL240:
	.loc 1 650 0
	ldi r24,lo8(temperStr)
	ldi r25,hi8(temperStr)
	push r25
	push r24
	push r15
	push r14
	push __zero_reg__
	ldi r24,lo8(8)
	push r24
	ldi r24,lo8(__c.2860)
	ldi r25,hi8(__c.2860)
	push r25
	push r24
	call printf_P
.LVL241:
	.loc 1 655 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L146
.L162:
	.loc 1 657 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L175
.LVL242:
	.loc 1 659 0
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L176
.LVL243:
.L175:
	.loc 1 661 0
	ldd r23,Y+14
	cpi r23,lo8(1)
	breq .L177
	brlo .L176
	cpi r23,lo8(2)
	brne .+2
	rjmp .L178
	rjmp .L146
.LVL244:
.L176:
	.loc 1 663 0
	call LCD_Clear
.LVL245:
	.loc 1 664 0
	call LcdFirstLine
.LVL246:
	.loc 1 665 0
	ldi r24,lo8(telStr)
	ldi r25,hi8(telStr)
	push r25
	push r24
	ldi r24,lo8(setStr)
	ldi r25,hi8(setStr)
	push r25
	push r24
	ldi r24,lo8(__c.2865)
	ldi r25,hi8(__c.2865)
	push r25
	push r24
	call printf_P
.LVL247:
	.loc 1 668 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 667 0
	std Y+15,__zero_reg__
	.loc 1 666 0
	ldi r24,lo8(1)
	std Y+14,r24
	.loc 1 668 0
	rjmp .L146
.LVL248:
.L177:
	.loc 1 670 0
	ldi r24,lo8(-48)
	add r24,r13
	cpi r24,lo8(10)
	brsh .L179
	.loc 1 671 0
	ldd r25,Y+15
	cpi r25,lo8(14)
	brsh .L179
	.loc 1 672 0
	mov r24,r13
	ldi r25,0
	call putchar
.LVL249:
	.loc 1 673 0
	ldd r26,Y+15
	mov r30,r26
	ldi r31,0
	subi r30,lo8(-(telNumber))
	sbci r31,hi8(-(telNumber))
	st Z,r13
	.loc 1 674 0
	subi r26,lo8(-(1))
	std Y+15,r26
.LVL250:
.L179:
	.loc 1 677 0
	ldi r27,lo8(42)
	cpse r13,r27
	rjmp .L146
	.loc 1 679 0
	ldd r18,Y+15
	mov r30,r18
	ldi r31,0
	mov __tmp_reg__,r31
	ldi r31,lo8(telNumber)
	mov r14,r31
	ldi r31,hi8(telNumber)
	mov r15,r31
	mov r31,__tmp_reg__
	subi r30,lo8(-(telNumber))
	sbci r31,hi8(-(telNumber))
	st Z,__zero_reg__
	.loc 1 680 0
	ldi r24,lo8(toeepromStr)
	ldi r25,hi8(toeepromStr)
	push r25
	push r24
	ldi r24,lo8(saveStr)
	ldi r25,hi8(saveStr)
	push r25
	push r24
	ldi r24,lo8(__c.2869)
	ldi r25,hi8(__c.2869)
	push r25
	push r24
	call printf_P
.LVL251:
	.loc 1 681 0
	push r15
	push r14
	ldi r24,lo8(__c.2871)
	ldi r25,hi8(__c.2871)
	push r25
	push r24
	call printf_P
.LVL252:
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 682 0
	ldi r23,lo8(2)
	std Y+14,r23
	rjmp .L146
.LVL253:
.L178:
	.loc 1 687 0
	ldi r24,lo8(42)
	cpse r13,r24
	rjmp .L146
	.loc 1 689 0
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
.LVL254:
	.loc 1 690 0
	ldi r24,lo8(okStr)
	ldi r25,hi8(okStr)
	push r25
	push r24
	ldi r24,lo8(saveStr)
	ldi r25,hi8(saveStr)
	push r25
	push r24
	ldi r24,lo8(__c.2874)
	ldi r25,hi8(__c.2874)
	push r25
	push r24
	call printf_P
.LVL255:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 691 0
	ldi r25,lo8(3)
	std Y+14,r25
	rjmp .L146
.LVL256:
.L169:
	.loc 1 701 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L180
.LVL257:
	.loc 1 703 0
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L181
.LVL258:
.L180:
	.loc 1 706 0
	ldd r26,Y+14
	cpi r26,lo8(2)
	brne .+2
	rjmp .L182
	brsh .L183
	tst r26
	breq .L181
	cpi r26,lo8(1)
	breq .L184
	rjmp .L146
.L183:
	ldd r27,Y+14
	cpi r27,lo8(4)
	brne .+2
	rjmp .L185
	brsh .+2
	rjmp .L186
	cpi r27,lo8(5)
	brne .+2
	rjmp .L187
	rjmp .L146
.LVL259:
.L181:
	.loc 1 709 0
	call LCD_Clear
.LVL260:
	.loc 1 710 0
	call LcdFirstLine
.LVL261:
	.loc 1 711 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2879)
	ldi r25,hi8(__c.2879)
	push r25
	push r24
	call printf_P
.LVL262:
	.loc 1 712 0
	ldi r24,lo8(snStr)
	ldi r25,hi8(snStr)
	push r25
	push r24
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	ldi r24,lo8(__c.2881)
	ldi r25,hi8(__c.2881)
	push r25
	push r24
	call printf_P
.LVL263:
	.loc 1 719 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 717 0
	std Y+18,__zero_reg__
	.loc 1 716 0
	ldi r31,lo8(1)
	std Y+16,r31
	.loc 1 714 0
	std Y+15,__zero_reg__
	.loc 1 718 0
	ldi r18,lo8(5)
	std Y+14,r18
	.loc 1 715 0
	std Y+17,__zero_reg__
	.loc 1 719 0
	rjmp .L146
.LVL264:
.L184:
	.loc 1 721 0
	call LCD_Clear
.LVL265:
	.loc 1 722 0
	call LcdFirstLine
.LVL266:
	.loc 1 723 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2885)
	ldi r25,hi8(__c.2885)
	push r25
	push r24
	call printf_P
.LVL267:
	.loc 1 724 0
	ldi r24,lo8(snStr)
	ldi r25,hi8(snStr)
	push r25
	push r24
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
	push r24
	ldi r24,lo8(__c.2887)
	ldi r25,hi8(__c.2887)
	push r25
	push r24
	call printf_P
.LVL268:
	.loc 1 731 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 729 0
	ldi r23,lo8(1)
	std Y+18,r23
	.loc 1 728 0
	ldi r24,lo8(2)
	std Y+16,r24
	.loc 1 726 0
	std Y+15,__zero_reg__
	.loc 1 730 0
	ldi r25,lo8(5)
	std Y+14,r25
	.loc 1 727 0
	std Y+17,__zero_reg__
	.loc 1 731 0
	rjmp .L146
.LVL269:
.L182:
	.loc 1 733 0
	call LCD_Clear
.LVL270:
	.loc 1 734 0
	call LcdFirstLine
.LVL271:
	.loc 1 735 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2890)
	ldi r25,hi8(__c.2890)
	push r25
	push r24
	call printf_P
.LVL272:
	.loc 1 736 0
	ldi r24,lo8(snStr)
	ldi r25,hi8(snStr)
	push r25
	push r24
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
	push r24
	ldi r24,lo8(__c.2892)
	ldi r25,hi8(__c.2892)
	push r25
	push r24
	call printf_P
.LVL273:
	.loc 1 743 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 741 0
	ldi r27,lo8(2)
	std Y+18,r27
	.loc 1 740 0
	ldi r30,lo8(3)
	std Y+16,r30
	.loc 1 738 0
	std Y+15,__zero_reg__
	.loc 1 742 0
	ldi r31,lo8(5)
	std Y+14,r31
	.loc 1 739 0
	std Y+17,__zero_reg__
	.loc 1 743 0
	rjmp .L146
.LVL274:
.L186:
	.loc 1 745 0
	call LCD_Clear
.LVL275:
	.loc 1 746 0
	call LcdFirstLine
.LVL276:
	.loc 1 747 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2895)
	ldi r25,hi8(__c.2895)
	push r25
	push r24
	call printf_P
.LVL277:
	.loc 1 748 0
	ldi r24,lo8(snStr)
	ldi r25,hi8(snStr)
	push r25
	push r24
	ldi r24,lo8(returnStr)
	ldi r25,hi8(returnStr)
	push r25
	push r24
	ldi r24,lo8(__c.2897)
	ldi r25,hi8(__c.2897)
	push r25
	push r24
	call printf_P
.LVL278:
	.loc 1 755 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 753 0
	ldi r19,lo8(3)
	std Y+18,r19
	.loc 1 752 0
	std Y+16,__zero_reg__
	.loc 1 750 0
	std Y+15,__zero_reg__
	.loc 1 754 0
	ldi r20,lo8(5)
	std Y+14,r20
	.loc 1 751 0
	std Y+17,__zero_reg__
	.loc 1 755 0
	rjmp .L146
.LVL279:
.L187:
	.loc 1 758 0
	ldi r24,lo8(-48)
	add r24,r13
	cpi r24,lo8(10)
	brlo .+2
	rjmp .L188
	.loc 1 759 0
	ldd r22,Y+17
	cpi r22,lo8(7)
	brlo .+2
	rjmp .L234
	.loc 1 760 0
	mov r24,r13
	ldi r25,0
	call putchar
.LVL280:
	.loc 1 761 0
	ldd r23,Y+15
	mov r24,r23
	ldi r25,0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,r13
	.loc 1 762 0
	cpi r23,lo8(2)
	brsh .L189
	.loc 1 762 0 is_stmt 0 discriminator 1
	subi r23,lo8(-(1))
	std Y+15,r23
.LVL281:
	rjmp .L188
.LVL282:
.L189:
	.loc 1 764 0 is_stmt 1
	ldi r30,lo8(2)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	.loc 1 765 0
	movw r24,r28
	adiw r24,1
	call atoi
.LVL283:
	.loc 1 766 0
	cpi r24,-1
	cpc r25,__zero_reg__
	breq .+4
	brlt .+2
	rjmp .L190
	.loc 1 767 0
	mov __tmp_reg__,r31
	ldi r31,lo8(6)
	mov r14,r31
	mov r15,__zero_reg__
	mov r31,__tmp_reg__
	add r14,r28
	adc r15,r29
	ldd r26,Y+17
	add r14,r26
	adc r15,__zero_reg__
	movw r30,r14
	st Z,r24
	.loc 1 768 0
	ldi r24,lo8(3)
.LVL284:
	call ReturnXPos
.LVL285:
	.loc 1 769 0
	movw r26,r14
	ld r24,X
	push __zero_reg__
	push r24
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
	push r24
	call printf
.LVL286:
	.loc 1 770 0
	ldi r24,lo8(1)
	call ReturnXPos
.LVL287:
	.loc 1 771 0
	ldd r27,Y+17
	subi r27,lo8(-(1))
	std Y+17,r27
.LVL288:
	.loc 1 772 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	cpi r27,lo8(7)
	breq .+2
	rjmp .L235
	.loc 1 773 0
	std Y+13,__zero_reg__
.LVL289:
	movw r30,r28
	adiw r30,6
	ldd r19,Y+18
	ldi r18,lo8(8)
	mul r19,r18
	movw r20,r0
	clr __zero_reg__
	subi r20,lo8(-(gSensorIDs))
	sbci r21,hi8(-(gSensorIDs))
	ldi r24,0
	ldi r25,0
	.loc 1 775 0
	mov r18,r19
	ldi r19,0
.LVL290:
.L192:
	.loc 1 775 0 is_stmt 0 discriminator 2
	movw r14,r18
	ld r22,Z+
	movw r26,r20
	add r26,r24
	adc r27,r25
	st X,r22
.LVL291:
	adiw r24,1
.LVL292:
	.loc 1 774 0 is_stmt 1 discriminator 2
	cpi r24,7
	cpc r25,__zero_reg__
	brne .L192
	.loc 1 776 0
	ldi r22,lo8(7)
	ldi r23,0
	movw r24,r28
.LVL293:
	adiw r24,6
	call crc8
.LVL294:
	mov r13,r24
.LVL295:
	.loc 1 777 0
	movw r30,r14
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(gSensorIDs))
	sbci r31,hi8(-(gSensorIDs))
	std Z+7,r24
	.loc 1 778 0
	push __zero_reg__
	push r24
	ldi r24,lo8(checksumStr)
	ldi r25,hi8(checksumStr)
	push r25
	push r24
	ldi r24,lo8(__c.2903)
	ldi r25,hi8(__c.2903)
	push r25
	push r24
	call printf_P
.LVL296:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 782 0
	std Y+15,__zero_reg__
.LVL297:
	.loc 1 779 0
	ldi r20,lo8(4)
	std Y+14,r20
	rjmp .L188
.LVL298:
.L190:
	.loc 1 781 0
	ldi r24,lo8(3)
.LVL299:
	call ReturnXPos
.LVL300:
	ldi r24,lo8(__c.2905)
	ldi r25,hi8(__c.2905)
	push r25
	push r24
	call printf_P
.LVL301:
	ldi r24,lo8(3)
	call ReturnXPos
.LVL302:
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 782 0
	std Y+15,__zero_reg__
.LVL303:
	rjmp .L188
.LVL304:
.L234:
	.loc 1 784 0
	ldi r22,lo8(4)
	std Y+14,r22
	rjmp .L188
.LVL305:
.L235:
	.loc 1 782 0
	std Y+15,__zero_reg__
.LVL306:
.L188:
	.loc 1 788 0
	ldi r23,lo8(42)
	cpse r13,r23
	rjmp .L146
	rjmp .L236
.LVL307:
.L185:
	.loc 1 793 0
	ldi r24,lo8(42)
	cpse r13,r24
	rjmp .L146
	rjmp .L237
.LVL308:
.L163:
	.loc 1 801 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L193
	.loc 1 802 0
	ldi r24,lo8(1)
	sts fl,r24
	.loc 1 803 0
	call LCD_Clear
.LVL309:
	.loc 1 817 0
	ldi r24,lo8(nsupdownStr)
	ldi r25,hi8(nsupdownStr)
	push r25
	push r24
	ldi r24,lo8(__c.2909)
	ldi r25,hi8(__c.2909)
	push r25
	push r24
	call printf_P
.LVL310:
	mov __tmp_reg__,r31
	ldi r31,lo8(gSensorIDs+6)
	mov r14,r31
	ldi r31,hi8(gSensorIDs+6)
	mov r15,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(gSensorIDs+38)
	mov r12,r31
	ldi r31,hi8(gSensorIDs+38)
	mov r13,r31
	mov r31,__tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LVL311:
.L195:
	.loc 1 826 0 discriminator 2
	movw r26,r14
	ld r24,X
	push __zero_reg__
	push r24
	movw r30,r14
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
.LVL312:
	ldi r31,8
	add r14,r31
	adc r15,__zero_reg__
	.loc 1 820 0 discriminator 2
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	cp r14,r12
	cpc r15,r13
	brne .L195
	.loc 1 835 0
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2914)
	ldi r25,hi8(__c.2914)
	push r25
	push r24
	call printf_P
.LVL313:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L146
.LVL314:
.L193:
.LBB127:
.LBB128:
	.loc 3 163 0
	ldi r19,lo8(1599999)
	ldi r20,hi8(1599999)
	ldi r22,hlo8(1599999)
	1: subi r19,1
	sbci r20,0
	sbci r22,0
	brne 1b
	rjmp .
	nop
	rjmp .L146
.LVL315:
.L167:
.LBE128:
.LBE127:
	.loc 1 843 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L146
	.loc 1 844 0
	call LCD_Clear
.LVL316:
	.loc 1 845 0
	call LcdFirstLine
.LVL317:
	.loc 1 846 0
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	push __zero_reg__
	clr r13
	inc r13
.LVL318:
	push r13
	mov __tmp_reg__,r31
	ldi r31,lo8(snStr)
	mov r14,r31
	ldi r31,hi8(snStr)
	mov r15,r31
	mov r31,__tmp_reg__
	push r15
	push r14
	ldi r24,lo8(__c.2917)
	ldi r25,hi8(__c.2917)
	push r25
	push r24
	call printf_P
.LVL319:
	.loc 1 847 0
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(2)
	push r24
	push r15
	push r14
	ldi r24,lo8(__c.2919)
	ldi r25,hi8(__c.2919)
	push r25
	push r24
	call printf_P
.LVL320:
	.loc 1 848 0
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(3)
	push r24
	push r15
	push r14
	ldi r24,lo8(__c.2921)
	ldi r25,hi8(__c.2921)
	push r25
	push r24
	call printf_P
.LVL321:
	.loc 1 849 0
	ldi r24,lo8(returnStr)
	ldi r25,hi8(returnStr)
	push r25
	push r24
	push __zero_reg__
	ldi r24,lo8(4)
	push r24
	push r15
	push r14
	ldi r24,lo8(__c.2923)
	ldi r25,hi8(__c.2923)
	push r25
	push r24
	call printf_P
.LVL322:
	.loc 1 850 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2925)
	ldi r25,hi8(__c.2925)
	push r25
	push r24
	call printf_P
.LVL323:
	.loc 1 851 0
	sts fl,r13
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	rjmp .L146
.LVL324:
.L168:
	.loc 1 855 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L196
	.loc 1 856 0
	call LCD_Clear
.LVL325:
	.loc 1 857 0
	call LcdFirstLine
.LVL326:
	.loc 1 859 0
	lds r18,rTempInDoorMin
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	mov __tmp_reg__,r31
	ldi r31,lo8(minStr)
	mov r12,r31
	ldi r31,hi8(minStr)
	mov r13,r31
	mov r31,__tmp_reg__
	push r13
	push r12
	mov __tmp_reg__,r31
	ldi r31,lo8(indoorStr)
	mov r10,r31
	ldi r31,hi8(indoorStr)
	mov r11,r31
	mov r31,__tmp_reg__
	push r11
	push r10
	ldi r24,lo8(__c.2928)
	ldi r25,hi8(__c.2928)
	push r25
	push r24
	call printf_P
.LVL327:
	.loc 1 860 0
	lds r18,rTempInDoorMax
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	mov __tmp_reg__,r31
	ldi r31,lo8(maxStr)
	mov r14,r31
	ldi r31,hi8(maxStr)
	mov r15,r31
	mov r31,__tmp_reg__
	push r15
	push r14
	push r11
	push r10
	ldi r24,lo8(__c.2930)
	ldi r25,hi8(__c.2930)
	push r25
	push r24
	call printf_P
.LVL328:
	.loc 1 861 0
	lds r18,rTempOutDoorMin
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	push r13
	push r12
	mov __tmp_reg__,r31
	ldi r31,lo8(outdoorStr)
	mov r10,r31
	ldi r31,hi8(outdoorStr)
	mov r11,r31
	mov r31,__tmp_reg__
	push r11
	push r10
	ldi r24,lo8(__c.2932)
	ldi r25,hi8(__c.2932)
	push r25
	push r24
	call printf_P
.LVL329:
	.loc 1 872 0
	lds r18,rTempOutDoorMax
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	push r15
	push r14
	push r11
	push r10
	ldi r24,lo8(__c.2934)
	ldi r25,hi8(__c.2934)
	push r25
	push r24
	call printf_P
.LVL330:
	.loc 1 873 0
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
	push r13
	push r12
	mov __tmp_reg__,r31
	ldi r31,lo8(supplyStr)
	mov r10,r31
	ldi r31,hi8(supplyStr)
	mov r11,r31
	mov r31,__tmp_reg__
	push r11
	push r10
	ldi r24,lo8(__c.2936)
	ldi r25,hi8(__c.2936)
	push r25
	push r24
	call printf_P
.LVL331:
	.loc 1 875 0
	lds r18,rTempSupplyMax
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	push r15
	push r14
	push r11
	push r10
	ldi r24,lo8(__c.2938)
	ldi r25,hi8(__c.2938)
	push r25
	push r24
	call printf_P
.LVL332:
	.loc 1 877 0
	lds r18,rTempDiffSupplyReturnMin
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	push r13
	push r12
	mov __tmp_reg__,r31
	ldi r31,lo8(diffStr)
	mov r12,r31
	ldi r31,hi8(diffStr)
	mov r13,r31
	mov r31,__tmp_reg__
	push r13
	push r12
	ldi r24,lo8(__c.2940)
	ldi r25,hi8(__c.2940)
	push r25
	push r24
	call printf_P
.LVL333:
	.loc 1 878 0
	lds r18,rTempDiffSupplyReturnMax
	mov r24,r18
	clr r25
	sbrc r24,7
	com r25
	push r25
	push r18
	push r15
	push r14
	push r13
	push r12
	ldi r24,lo8(__c.2942)
	ldi r25,hi8(__c.2942)
	push r25
	push r24
	call printf_P
.LVL334:
	.loc 1 881 0
	ldi r24,lo8(1)
	sts fl,r24
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L146
.L196:
.LVL335:
.LBB129:
.LBB130:
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
	rjmp .L146
.LVL336:
.L165:
.LBE130:
.LBE129:
	.loc 1 885 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L197
.LVL337:
	.loc 1 887 0
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L198
.LVL338:
.L197:
	.loc 1 890 0
	ldd r20,Y+14
	mov r24,r20
	ldi r25,0
	cpi r24,12
	cpc r25,__zero_reg__
	brlo .+2
	rjmp .L146
	movw r30,r24
	subi r30,lo8(-(gs(.L199)))
	sbci r31,hi8(-(gs(.L199)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table.main
	.p2align	1
.L199:
	.word gs(.L198)
	.word gs(.L200)
	.word gs(.L201)
	.word gs(.L202)
	.word gs(.L203)
	.word gs(.L204)
	.word gs(.L205)
	.word gs(.L206)
	.word gs(.L207)
	.word gs(.L208)
	.word gs(.L209)
	.word gs(.L210)
	.section	.text.main
.LVL339:
.L198:
	.loc 1 892 0
	call LCD_Clear
.LVL340:
	.loc 1 893 0
	call LcdFirstLine
.LVL341:
	.loc 1 894 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2946)
	ldi r25,hi8(__c.2946)
	push r25
	push r24
	call printf_P
.LVL342:
	.loc 1 895 0
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2948)
	ldi r25,hi8(__c.2948)
	push r25
	push r24
	call printf_P
.LVL343:
	.loc 1 896 0
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.2950)
	ldi r25,hi8(__c.2950)
	push r25
	push r24
	call printf_P
.LVL344:
	.loc 1 902 0
	ldi r24,lo8(rTempInDoorMin)
	ldi r25,hi8(rTempInDoorMin)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 903 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 900 0
	ldi r23,lo8(1)
	std Y+16,r23
	.loc 1 898 0
	std Y+15,__zero_reg__
	.loc 1 901 0
	ldi r24,lo8(9)
	std Y+14,r24
	.loc 1 903 0
	rjmp .L146
.LVL345:
.L200:
	.loc 1 905 0
	call LCD_Clear
.LVL346:
	.loc 1 906 0
	call LcdFirstLine
.LVL347:
	.loc 1 907 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2954)
	ldi r25,hi8(__c.2954)
	push r25
	push r24
	call printf_P
.LVL348:
	.loc 1 908 0
	ldi r24,lo8(indoorStr)
	ldi r25,hi8(indoorStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2956)
	ldi r25,hi8(__c.2956)
	push r25
	push r24
	call printf_P
.LVL349:
	.loc 1 909 0
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.2958)
	ldi r25,hi8(__c.2958)
	push r25
	push r24
	call printf_P
.LVL350:
	.loc 1 913 0
	ldi r24,lo8(rTempInDoorMax)
	ldi r25,hi8(rTempInDoorMax)
	sts TempAct+1,r25
	sts TempAct,r24
.LVL351:
	.loc 1 916 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 911 0
	ldi r27,lo8(2)
	std Y+16,r27
	.loc 1 914 0
	std Y+15,__zero_reg__
	.loc 1 912 0
	ldi r30,lo8(9)
	std Y+14,r30
	.loc 1 916 0
	rjmp .L146
.LVL352:
.L201:
	.loc 1 918 0
	call LCD_Clear
.LVL353:
	.loc 1 919 0
	call LcdFirstLine
.LVL354:
	.loc 1 920 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2961)
	ldi r25,hi8(__c.2961)
	push r25
	push r24
	call printf_P
.LVL355:
	.loc 1 921 0
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2963)
	ldi r25,hi8(__c.2963)
	push r25
	push r24
	call printf_P
.LVL356:
	.loc 1 922 0
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.2965)
	ldi r25,hi8(__c.2965)
	push r25
	push r24
	call printf_P
.LVL357:
	.loc 1 928 0
	ldi r24,lo8(rTempOutDoorMin)
	ldi r25,hi8(rTempOutDoorMin)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 929 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 924 0
	ldi r19,lo8(3)
	std Y+16,r19
	.loc 1 926 0
	std Y+15,__zero_reg__
	.loc 1 925 0
	ldi r20,lo8(9)
	std Y+14,r20
	.loc 1 929 0
	rjmp .L146
.LVL358:
.L202:
	.loc 1 931 0
	call LCD_Clear
.LVL359:
	.loc 1 932 0
	call LcdFirstLine
.LVL360:
	.loc 1 933 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2968)
	ldi r25,hi8(__c.2968)
	push r25
	push r24
	call printf_P
.LVL361:
	.loc 1 934 0
	ldi r24,lo8(outdoorStr)
	ldi r25,hi8(outdoorStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2970)
	ldi r25,hi8(__c.2970)
	push r25
	push r24
	call printf_P
.LVL362:
	.loc 1 935 0
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.2972)
	ldi r25,hi8(__c.2972)
	push r25
	push r24
	call printf_P
.LVL363:
	.loc 1 941 0
	ldi r24,lo8(rTempOutDoorMax)
	ldi r25,hi8(rTempOutDoorMax)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 942 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 937 0
	ldi r23,lo8(4)
	std Y+16,r23
	.loc 1 939 0
	std Y+15,__zero_reg__
	.loc 1 938 0
	ldi r24,lo8(9)
	std Y+14,r24
	.loc 1 942 0
	rjmp .L146
.LVL364:
.L203:
	.loc 1 944 0
	call LCD_Clear
.LVL365:
	.loc 1 945 0
	call LcdFirstLine
.LVL366:
	.loc 1 946 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2975)
	ldi r25,hi8(__c.2975)
	push r25
	push r24
	call printf_P
.LVL367:
	.loc 1 947 0
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2977)
	ldi r25,hi8(__c.2977)
	push r25
	push r24
	call printf_P
.LVL368:
	.loc 1 948 0
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.2979)
	ldi r25,hi8(__c.2979)
	push r25
	push r24
	call printf_P
.LVL369:
	.loc 1 954 0
	ldi r24,lo8(rTempSupplyMin)
	ldi r25,hi8(rTempSupplyMin)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 955 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 950 0
	ldi r27,lo8(5)
	std Y+16,r27
	.loc 1 952 0
	std Y+15,__zero_reg__
	.loc 1 951 0
	ldi r30,lo8(9)
	std Y+14,r30
	.loc 1 955 0
	rjmp .L146
.LVL370:
.L204:
	.loc 1 957 0
	call LCD_Clear
.LVL371:
	.loc 1 958 0
	call LcdFirstLine
.LVL372:
	.loc 1 959 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2982)
	ldi r25,hi8(__c.2982)
	push r25
	push r24
	call printf_P
.LVL373:
	.loc 1 960 0
	ldi r24,lo8(supplyStr)
	ldi r25,hi8(supplyStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2984)
	ldi r25,hi8(__c.2984)
	push r25
	push r24
	call printf_P
.LVL374:
	.loc 1 961 0
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.2986)
	ldi r25,hi8(__c.2986)
	push r25
	push r24
	call printf_P
.LVL375:
	.loc 1 965 0
	ldi r24,lo8(rTempSupplyMax)
	ldi r25,hi8(rTempSupplyMax)
	sts TempAct+1,r25
	sts TempAct,r24
.LVL376:
	.loc 1 968 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 963 0
	ldi r19,lo8(6)
	std Y+16,r19
	.loc 1 966 0
	std Y+15,__zero_reg__
	.loc 1 964 0
	ldi r20,lo8(9)
	std Y+14,r20
	.loc 1 968 0
	rjmp .L146
.LVL377:
.L205:
	.loc 1 970 0
	call LCD_Clear
.LVL378:
	.loc 1 971 0
	call LcdFirstLine
.LVL379:
	.loc 1 972 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2989)
	ldi r25,hi8(__c.2989)
	push r25
	push r24
	call printf_P
.LVL380:
	.loc 1 973 0
	ldi r24,lo8(diffStr)
	ldi r25,hi8(diffStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2991)
	ldi r25,hi8(__c.2991)
	push r25
	push r24
	call printf_P
.LVL381:
	.loc 1 974 0
	ldi r24,lo8(minStr)
	ldi r25,hi8(minStr)
	push r25
	push r24
	ldi r24,lo8(__c.2993)
	ldi r25,hi8(__c.2993)
	push r25
	push r24
	call printf_P
.LVL382:
	.loc 1 980 0
	ldi r24,lo8(rTempDiffSupplyReturnMin)
	ldi r25,hi8(rTempDiffSupplyReturnMin)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 981 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 976 0
	ldi r23,lo8(7)
	std Y+16,r23
	.loc 1 978 0
	std Y+15,__zero_reg__
	.loc 1 977 0
	ldi r24,lo8(9)
	std Y+14,r24
	.loc 1 981 0
	rjmp .L146
.LVL383:
.L206:
	.loc 1 983 0
	call LCD_Clear
.LVL384:
	.loc 1 984 0
	call LcdFirstLine
.LVL385:
	.loc 1 985 0
	ldi r24,lo8(nextStr)
	ldi r25,hi8(nextStr)
	push r25
	push r24
	ldi r24,lo8(exitStr)
	ldi r25,hi8(exitStr)
	push r25
	push r24
	ldi r24,lo8(__c.2996)
	ldi r25,hi8(__c.2996)
	push r25
	push r24
	call printf_P
.LVL386:
	.loc 1 986 0
	ldi r24,lo8(diffStr)
	ldi r25,hi8(diffStr)
	push r25
	push r24
	ldi r24,lo8(tempStr)
	ldi r25,hi8(tempStr)
	push r25
	push r24
	ldi r24,lo8(__c.2998)
	ldi r25,hi8(__c.2998)
	push r25
	push r24
	call printf_P
.LVL387:
	.loc 1 987 0
	ldi r24,lo8(maxStr)
	ldi r25,hi8(maxStr)
	push r25
	push r24
	ldi r24,lo8(__c.3000)
	ldi r25,hi8(__c.3000)
	push r25
	push r24
	call printf_P
.LVL388:
	.loc 1 993 0
	ldi r24,lo8(rTempDiffSupplyReturnMax)
	ldi r25,hi8(rTempDiffSupplyReturnMax)
	sts TempAct+1,r25
	sts TempAct,r24
	.loc 1 994 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	.loc 1 989 0
	ldi r27,lo8(10)
	std Y+16,r27
	.loc 1 991 0
	std Y+15,__zero_reg__
	.loc 1 990 0
	ldi r30,lo8(9)
	std Y+14,r30
	.loc 1 994 0
	rjmp .L146
.LVL389:
.L209:
	.loc 1 996 0
	call LCD_Clear
.LVL390:
	.loc 1 997 0
	call LcdFirstLine
.LVL391:
	.loc 1 998 0
	ldi r24,lo8(toeepromStr)
	ldi r25,hi8(toeepromStr)
	push r25
	push r24
	ldi r24,lo8(saveStr)
	ldi r25,hi8(saveStr)
	push r25
	push r24
	ldi r24,lo8(__c.3003)
	ldi r25,hi8(__c.3003)
	push r25
	push r24
	call printf_P
.LVL392:
	.loc 1 1001 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 999 0
	std Y+16,__zero_reg__
	.loc 1 1000 0
	ldi r31,lo8(11)
	std Y+14,r31
	.loc 1 1001 0
	rjmp .L146
.LVL393:
.L210:
	.loc 1 1003 0
	ldi r18,lo8(42)
	cpse r13,r18
	rjmp .L146
	.loc 1 1004 0
	lds r22,rTempInDoorMin
	ldi r24,lo8(TempInDoorMin)
	ldi r25,hi8(TempInDoorMin)
	call __eeupd_byte_m328p
.LVL394:
	.loc 1 1005 0
	lds r22,rTempInDoorMax
	ldi r24,lo8(TempInDoorMax)
	ldi r25,hi8(TempInDoorMax)
	call __eeupd_byte_m328p
.LVL395:
	.loc 1 1006 0
	lds r22,rTempOutDoorMin
	ldi r24,lo8(TempOutDoorMin)
	ldi r25,hi8(TempOutDoorMin)
	call __eeupd_byte_m328p
.LVL396:
	.loc 1 1007 0
	lds r22,rTempOutDoorMax
	ldi r24,lo8(TempOutDoorMax)
	ldi r25,hi8(TempOutDoorMax)
	call __eeupd_byte_m328p
.LVL397:
	.loc 1 1008 0
	lds r22,rTempSupplyMin
	ldi r24,lo8(TempSupplyMin)
	ldi r25,hi8(TempSupplyMin)
	call __eeupd_byte_m328p
.LVL398:
	.loc 1 1009 0
	lds r22,rTempSupplyMax
	ldi r24,lo8(TempSupplyMax)
	ldi r25,hi8(TempSupplyMax)
	call __eeupd_byte_m328p
.LVL399:
	.loc 1 1010 0
	lds r22,rTempDiffSupplyReturnMin
	ldi r24,lo8(TempDiffSupplyReturnMin)
	ldi r25,hi8(TempDiffSupplyReturnMin)
	call __eeupd_byte_m328p
.LVL400:
	.loc 1 1011 0
	lds r22,rTempDiffSupplyReturnMax
	ldi r24,lo8(TempDiffSupplyReturnMax)
	ldi r25,hi8(TempDiffSupplyReturnMax)
	call __eeupd_byte_m328p
.LVL401:
	.loc 1 1012 0
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,lo8(eSensorIDs)
	ldi r23,hi8(eSensorIDs)
	ldi r24,lo8(gSensorIDs)
	ldi r25,hi8(gSensorIDs)
	call __eeupd_block_m328p
.LVL402:
	.loc 1 1013 0
	ldi r24,lo8(okStr)
	ldi r25,hi8(okStr)
	push r25
	push r24
	ldi r24,lo8(saveStr)
	ldi r25,hi8(saveStr)
	push r25
	push r24
	ldi r24,lo8(__c.3006)
	ldi r25,hi8(__c.3006)
	push r25
	push r24
	call printf_P
.LVL403:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1014 0
	ldi r19,lo8(8)
	std Y+14,r19
	rjmp .L146
.LVL404:
.L207:
	.loc 1 1018 0
	ldi r20,lo8(42)
.LVL405:
	cpse r13,r20
	rjmp .L146
	rjmp .L238
.LVL406:
.L208:
	.loc 1 1022 0
	ldi r24,lo8(-48)
	add r24,r13
	cpi r24,lo8(10)
	brlo .+2
	rjmp .L211
	.loc 1 1024 0
	ldd r22,Y+15
	cp r22,r15
	brsh .L212
	.loc 1 1025 0
	cpse r22,__zero_reg__
	rjmp .L213
	.loc 1 1025 0 is_stmt 0 discriminator 1
	ldi r23,lo8(57)
	cpse r13,r23
	rjmp .L213
	.loc 1 1026 0 is_stmt 1
	ldi r24,lo8(45)
	std Y+1,r24
.LVL407:
	ldi r24,lo8(45)
	ldi r25,0
	call putchar
.LVL408:
	rjmp .L214
.LVL409:
.L213:
	.loc 1 1027 0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	ldd r24,Y+15
	add r30,r24
	adc r31,__zero_reg__
	st Z,r13
	mov r24,r13
	ldi r25,0
	call putchar
.LVL410:
.L214:
	.loc 1 1028 0
	ldd r25,Y+15
	subi r25,lo8(-(1))
	std Y+15,r25
.LVL411:
	rjmp .L211
.LVL412:
.L212:
	.loc 1 1030 0
	ldd r26,Y+15
	mov r24,r26
	ldi r25,0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,r13
	.loc 1 1031 0
	ldi r30,lo8(2)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	.loc 1 1032 0
	mov r24,r13
	ldi r25,0
	call putchar
.LVL413:
	.loc 1 1033 0
	movw r24,r28
	adiw r24,1
	call atoi
.LVL414:
	.loc 1 1034 0
	lds r30,TempAct
	lds r31,TempAct+1
	st Z,r24
.LVL415:
	.loc 1 1036 0
	push r25
	push r24
	ldi r24,lo8(__c.3010)
	ldi r25,hi8(__c.3010)
.LVL416:
	push r25
.LVL417:
	push r24
.LVL418:
	call printf_P
.LVL419:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1035 0
	std Y+15,__zero_reg__
	.loc 1 1037 0
	ldi r27,lo8(8)
	std Y+14,r27
.LVL420:
.L211:
	.loc 1 1040 0
	ldi r30,lo8(42)
	cpse r13,r30
	rjmp .L146
	rjmp .L239
.LVL421:
.L166:
	.loc 1 1046 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L215
	.loc 1 1046 0 is_stmt 0 discriminator 1
	call LCD_Clear
.LVL422:
	ldi r24,lo8(1)
	sts fl,r24
.L215:
	.loc 1 1049 0 is_stmt 1
	ldi r24,lo8(2)
	call LCD_setTextSize
.LVL423:
	.loc 1 1051 0
	call LcdFirstLine
.LVL424:
	.loc 1 1053 0
	lds r24,tAsync
	push __zero_reg__
	push r24
	movw r26,r4
	ld r24,X
	push __zero_reg__
	push r24
	movw r30,r2
	ld r24,Z
	push __zero_reg__
	push r24
	ldi r24,lo8(__c.3013)
	ldi r25,hi8(__c.3013)
	push r25
	push r24
	call printf_P
.LVL425:
	.loc 1 1054 0
	ldi r24,lo8(1)
	call LCD_setTextSize
.LVL426:
	.loc 1 1058 0
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	rjmp .L146
.L164:
	.loc 1 1060 0
	lds r24,fl
	cpse r24,__zero_reg__
	rjmp .L216
	.loc 1 1061 0
	call LCD_Clear
.LVL427:
	.loc 1 1064 0
	ldi r24,lo8(1)
	sts fl,r24
	rjmp .L217
.LVL428:
.L216:
	.loc 1 1067 0
	ldd r19,Y+14
	cpi r19,lo8(2)
	brne .+2
	rjmp .L218
	brsh .L219
	tst r19
	breq .L217
	cpi r19,lo8(1)
	breq .L220
	rjmp .L146
.L219:
	ldd r20,Y+14
	cpi r20,lo8(3)
	brne .+2
	rjmp .L221
	cpi r20,lo8(4)
	brne .+2
	rjmp .L222
	rjmp .L146
.LVL429:
.L217:
	.loc 1 1069 0
	ldi r26,lo8(hourStr)
	ldi r27,hi8(hourStr)
	push r27
	push r26
	ldi r26,lo8(__c.3017)
	ldi r27,hi8(__c.3017)
	push r27
	push r26
	call printf_P
.LVL430:
	.loc 1 1073 0
	sts TempAct+1,r3
	sts TempAct,r2
.LVL431:
	.loc 1 1076 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1074 0
	ldi r31,lo8(1)
	std Y+16,r31
	.loc 1 1071 0
	std Y+15,__zero_reg__
	.loc 1 1075 0
	ldi r18,lo8(3)
	std Y+14,r18
	.loc 1 1072 0
	ldi r19,lo8(23)
	std Y+19,r19
	.loc 1 1076 0
	rjmp .L146
.LVL432:
.L220:
	.loc 1 1078 0
	ldi r24,lo8(minuteStr)
	ldi r25,hi8(minuteStr)
	push r25
	push r24
	ldi r24,lo8(__c.3021)
	ldi r25,hi8(__c.3021)
	push r25
	push r24
	call printf_P
.LVL433:
	.loc 1 1082 0
	sts TempAct+1,r5
	sts TempAct,r4
.LVL434:
	.loc 1 1085 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1083 0
	ldi r20,lo8(2)
	std Y+16,r20
	.loc 1 1080 0
	std Y+15,__zero_reg__
	.loc 1 1084 0
	ldi r22,lo8(3)
	std Y+14,r22
	.loc 1 1081 0
	ldi r23,lo8(60)
	std Y+19,r23
	.loc 1 1085 0
	rjmp .L146
.LVL435:
.L218:
	.loc 1 1087 0
	ldi r26,lo8(secondStr)
	ldi r27,hi8(secondStr)
	push r27
	push r26
	ldi r26,lo8(__c.3024)
	ldi r27,hi8(__c.3024)
	push r27
	push r26
	call printf_P
.LVL436:
	.loc 1 1091 0
	ldi r24,lo8(tAsync)
	ldi r25,hi8(tAsync)
	sts TempAct+1,r25
	sts TempAct,r24
.LVL437:
	.loc 1 1094 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1092 0
	ldi r31,lo8(4)
	std Y+16,r31
	.loc 1 1089 0
	std Y+15,__zero_reg__
	.loc 1 1093 0
	ldi r18,lo8(3)
	std Y+14,r18
	.loc 1 1090 0
	ldi r19,lo8(60)
	std Y+19,r19
	.loc 1 1094 0
	rjmp .L146
.LVL438:
.L221:
	.loc 1 1097 0
	ldi r24,lo8(-48)
	add r24,r13
	cpi r24,lo8(10)
	brlo .+2
	rjmp .L223
	.loc 1 1099 0
	ldd r20,Y+15
	cp r20,r15
	brsh .L224
	.loc 1 1100 0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r20
	adc r31,__zero_reg__
	st Z,r13
	.loc 1 1101 0
	mov r24,r13
	ldi r25,0
	call putchar
.LVL439:
	.loc 1 1102 0
	ldd r23,Y+15
	subi r23,lo8(-(1))
	std Y+15,r23
.LVL440:
	rjmp .L223
.LVL441:
.L224:
	.loc 1 1104 0
	ldd r26,Y+15
	mov r24,r26
	ldi r25,0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,r13
	.loc 1 1105 0
	ldi r30,lo8(2)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	.loc 1 1106 0
	mov r24,r13
	ldi r25,0
	call putchar
.LVL442:
	.loc 1 1107 0
	movw r24,r28
	adiw r24,1
	call atoi
.LVL443:
	.loc 1 1109 0
	tst r25
	brlt .L225
	.loc 1 1109 0 is_stmt 0 discriminator 1
	ldd r27,Y+19
	mov r18,r27
	ldi r19,0
	cp r18,r24
	cpc r19,r25
	brlt .L225
	.loc 1 1110 0 is_stmt 1
	lds r30,TempAct
	lds r31,TempAct+1
	st Z,r24
.LVL444:
	.loc 1 1111 0
	ldd r30,Y+16
	std Y+14,r30
	.loc 1 1108 0
	std Y+15,__zero_reg__
	.loc 1 1111 0
	rjmp .L223
.LVL445:
.L225:
	.loc 1 1113 0
	ldi r24,lo8(2)
.LVL446:
	call ReturnXPos
.LVL447:
	.loc 1 1114 0
	ldi r24,lo8(__c.3027)
	ldi r25,hi8(__c.3027)
	push r25
	push r24
	call printf_P
.LVL448:
	.loc 1 1115 0
	ldi r24,lo8(2)
	call ReturnXPos
.LVL449:
	pop __tmp_reg__
	pop __tmp_reg__
	.loc 1 1108 0
	std Y+15,__zero_reg__
.LVL450:
.L223:
	.loc 1 1119 0
	ldi r31,lo8(42)
	cpse r13,r31
	rjmp .L146
	rjmp .L240
.LVL451:
.L222:
	.loc 1 1122 0
	ldi r18,lo8(42)
	cpse r13,r18
	rjmp .L146
	.loc 1 1122 0 is_stmt 0 discriminator 1
	ldi r24,lo8(6)
	sts MenuPhase,r24
	sts fl,__zero_reg__
	rjmp .L146
.LVL452:
.L173:
	.loc 1 1128 0 is_stmt 1
	call LCD_Clear
.LVL453:
	.loc 1 1129 0
	lds r24,MainLoopPhase
	sts LastPhase,r24
	.loc 1 1130 0
	sts MainLoopPhase,__zero_reg__
	.loc 1 1131 0
	sts MenuPhase,__zero_reg__
	.loc 1 1132 0
	jmp .L140
.LVL454:
.L236:
	.loc 1 789 0
	ldd r19,Y+16
	std Y+14,r19
.LVL455:
	rjmp .L146
.LVL456:
.L237:
	.loc 1 794 0
	ldd r20,Y+16
	std Y+14,r20
	rjmp .L146
.LVL457:
.L238:
	.loc 1 1018 0
	ldd r22,Y+16
	std Y+14,r22
	rjmp .L146
.LVL458:
.L239:
	.loc 1 1040 0
	ldd r23,Y+16
	std Y+14,r23
.LVL459:
	rjmp .L146
.LVL460:
.L240:
	ldd r24,Y+16
	std Y+14,r24
.LVL461:
.L146:
	.loc 1 1140 0
	call LCD_Update
.LVL462:
	.loc 1 1170 0
	call DoWatchDog
.LVL463:
	movw r14,r16
.LVL464:
.L228:
	mov r24,r14
	sub r24,r16
.LVL465:
	.loc 1 1173 0
	movw r26,r14
	ld r25,X+
	movw r14,r26
	cpse r25,__zero_reg__
	.loc 1 1174 0
	call sms_noready_sens
.LVL466:
.L226:
	.loc 1 1172 0
	cp r14,r6
	cpc r15,r7
	brne .L228
	.loc 1 1177 0
	lds r24,MainLoopPhase
	cpi r24,lo8(1)
	brne .L229
	.loc 1 1178 0
	lds r24,TimeKeyPressed
	cpi r24,lo8(3)
	brlo .L229
	.loc 1 1179 0
	ldi r24,lo8(1)
	sts LastPhase,r24
	.loc 1 1180 0
	sts MainLoopPhase,__zero_reg__
	.loc 1 1181 0
	sts fl,__zero_reg__
	.loc 1 1182 0
	sts TimeKeyPressed,__zero_reg__
	.loc 1 1183 0
	call LCD_Clear
.LVL467:
.L229:
	.loc 1 1186 0
	lds r24,extstate
	tst r24
	breq .L230
	.loc 1 1187 0
	lds r24,MainLoopPhase
	sts LastPhase,r24
	.loc 1 1188 0
	ldi r24,lo8(1)
	sts MainLoopPhase,r24
	.loc 1 1189 0
	sts fl,__zero_reg__
	.loc 1 1190 0
	sts TimeKeyPressed,__zero_reg__
	.loc 1 1191 0
	sts extstate,__zero_reg__
	.loc 1 1192 0
	call LCD_Clear
.LVL468:
.L230:
	.loc 1 1196 0
	movw r30,r4
	ld r18,Z
	ldi r19,0
	mov r24,r9
	clr r25
	sbrc r24,7
	com r25
	cp r18,r24
	cpc r19,r25
	breq .L231
	.loc 1 1197 0
	call manageTemperatureEvent
.LVL469:
	.loc 1 1198 0
	movw r26,r4
	ld r9,X
.LVL470:
	.loc 1 1199 0
	ldi r24,lo8(1)
	sts mausure_temperature_ok,r24
.L231:
	.loc 1 1202 0
	movw r30,r4
	ld r24,Z
	ldi r25,lo8(-51)
	mul r24,r25
	mov r25,r1
	clr __zero_reg__
	lsr r25
	lsr r25
	lsr r25
	lsl r25
	mov r18,r25
	lsl r18
	lsl r18
	add r25,r18
	cpse r24,r25
	rjmp .L232
	.loc 1 1203 0
	call TestNoReadySensors
.LVL471:
.L232:
	.loc 1 1207 0
	movw r26,r2
	ld r18,X
	ldi r19,0
	mov r24,r8
	clr r25
	sbrc r24,7
	com r25
	cp r18,r24
	cpc r19,r25
	brne .+4
	jmp .L241
	.loc 1 1208 0
	call ManageOutdoorTempEvent
.LVL472:
	.loc 1 1209 0
	movw r30,r2
	ld r8,Z
.LVL473:
	.loc 1 1172 0
	set
	clr r15
	bld r15,2
	jmp .L140
.LVL474:
.L141:
	.loc 1 528 0
	lds r25,wait_powergone
	.loc 1 529 0
	lds r24,powergone
	cpse r24,__zero_reg__
	jmp .L233
	jmp .L142
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.progmem.data.__c.3179,"a",@progbits
	.type	__c.3179, @object
	.size	__c.3179, 19
__c.3179:
	.string	" at %02d:%02d:%02d"
	.section	.progmem.data.__c.3162,"a",@progbits
	.type	__c.3162, @object
	.size	__c.3162, 19
__c.3162:
	.string	" at %02d:%02d:%02d"
	.section	.progmem.data.__c.3160,"a",@progbits
	.type	__c.3160, @object
	.size	__c.3160, 5
__c.3160:
	.string	"%d: "
	.section	.progmem.data.__c.3135,"a",@progbits
	.type	__c.3135, @object
	.size	__c.3135, 7
__c.3135:
	.string	"\n%i-%S"
	.section	.progmem.data.__c.3133,"a",@progbits
	.type	__c.3133, @object
	.size	__c.3133, 7
__c.3133:
	.string	"\n%i-%S"
	.section	.progmem.data.__c.3131,"a",@progbits
	.type	__c.3131, @object
	.size	__c.3131, 7
__c.3131:
	.string	"\n%i-%S"
	.section	.progmem.data.__c.3129,"a",@progbits
	.type	__c.3129, @object
	.size	__c.3129, 7
__c.3129:
	.string	"\n%i-%S"
	.section	.progmem.data.__c.3127,"a",@progbits
	.type	__c.3127, @object
	.size	__c.3127, 7
__c.3127:
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
	.section	.progmem.data.__c.3027,"a",@progbits
	.type	__c.3027, @object
	.size	__c.3027, 3
__c.3027:
	.string	"  "
	.section	.progmem.data.__c.3024,"a",@progbits
	.type	__c.3024, @object
	.size	__c.3024, 5
__c.3024:
	.string	"\n%S:"
	.section	.progmem.data.__c.3021,"a",@progbits
	.type	__c.3021, @object
	.size	__c.3021, 5
__c.3021:
	.string	"\n%S:"
	.section	.progmem.data.__c.3017,"a",@progbits
	.type	__c.3017, @object
	.size	__c.3017, 5
__c.3017:
	.string	"\n%S:"
	.section	.progmem.data.__c.3013,"a",@progbits
	.type	__c.3013, @object
	.size	__c.3013, 16
__c.3013:
	.string	"\n%02d:%02d:%02d"
	.section	.progmem.data.__c.3010,"a",@progbits
	.type	__c.3010, @object
	.size	__c.3010, 13
__c.3010:
	.string	"\nValue is:%i"
	.section	.progmem.data.__c.3006,"a",@progbits
	.type	__c.3006, @object
	.size	__c.3006, 9
__c.3006:
	.string	"\n%SD %S!"
	.section	.progmem.data.__c.3003,"a",@progbits
	.type	__c.3003, @object
	.size	__c.3003, 8
__c.3003:
	.string	"%S %S?\n"
	.section	.progmem.data.__c.3000,"a",@progbits
	.type	__c.3000, @object
	.size	__c.3000, 5
__c.3000:
	.string	" %S:"
	.section	.progmem.data.__c.2998,"a",@progbits
	.type	__c.2998, @object
	.size	__c.2998, 7
__c.2998:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2996,"a",@progbits
	.type	__c.2996, @object
	.size	__c.2996, 7
__c.2996:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2993,"a",@progbits
	.type	__c.2993, @object
	.size	__c.2993, 5
__c.2993:
	.string	" %S:"
	.section	.progmem.data.__c.2991,"a",@progbits
	.type	__c.2991, @object
	.size	__c.2991, 7
__c.2991:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2989,"a",@progbits
	.type	__c.2989, @object
	.size	__c.2989, 7
__c.2989:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2986,"a",@progbits
	.type	__c.2986, @object
	.size	__c.2986, 5
__c.2986:
	.string	" %S:"
	.section	.progmem.data.__c.2984,"a",@progbits
	.type	__c.2984, @object
	.size	__c.2984, 7
__c.2984:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2982,"a",@progbits
	.type	__c.2982, @object
	.size	__c.2982, 7
__c.2982:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2979,"a",@progbits
	.type	__c.2979, @object
	.size	__c.2979, 5
__c.2979:
	.string	" %S:"
	.section	.progmem.data.__c.2977,"a",@progbits
	.type	__c.2977, @object
	.size	__c.2977, 7
__c.2977:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2975,"a",@progbits
	.type	__c.2975, @object
	.size	__c.2975, 7
__c.2975:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2972,"a",@progbits
	.type	__c.2972, @object
	.size	__c.2972, 5
__c.2972:
	.string	" %S:"
	.section	.progmem.data.__c.2970,"a",@progbits
	.type	__c.2970, @object
	.size	__c.2970, 7
__c.2970:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2968,"a",@progbits
	.type	__c.2968, @object
	.size	__c.2968, 7
__c.2968:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2965,"a",@progbits
	.type	__c.2965, @object
	.size	__c.2965, 5
__c.2965:
	.string	" %S:"
	.section	.progmem.data.__c.2963,"a",@progbits
	.type	__c.2963, @object
	.size	__c.2963, 7
__c.2963:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2961,"a",@progbits
	.type	__c.2961, @object
	.size	__c.2961, 7
__c.2961:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2958,"a",@progbits
	.type	__c.2958, @object
	.size	__c.2958, 5
__c.2958:
	.string	" %S:"
	.section	.progmem.data.__c.2956,"a",@progbits
	.type	__c.2956, @object
	.size	__c.2956, 7
__c.2956:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2954,"a",@progbits
	.type	__c.2954, @object
	.size	__c.2954, 7
__c.2954:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2950,"a",@progbits
	.type	__c.2950, @object
	.size	__c.2950, 5
__c.2950:
	.string	" %S:"
	.section	.progmem.data.__c.2948,"a",@progbits
	.type	__c.2948, @object
	.size	__c.2948, 7
__c.2948:
	.string	" %S%S\n"
	.section	.progmem.data.__c.2946,"a",@progbits
	.type	__c.2946, @object
	.size	__c.2946, 7
__c.2946:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2942,"a",@progbits
	.type	__c.2942, @object
	.size	__c.2942, 9
__c.2942:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2940,"a",@progbits
	.type	__c.2940, @object
	.size	__c.2940, 9
__c.2940:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2938,"a",@progbits
	.type	__c.2938, @object
	.size	__c.2938, 9
__c.2938:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2936,"a",@progbits
	.type	__c.2936, @object
	.size	__c.2936, 9
__c.2936:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2934,"a",@progbits
	.type	__c.2934, @object
	.size	__c.2934, 9
__c.2934:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2932,"a",@progbits
	.type	__c.2932, @object
	.size	__c.2932, 9
__c.2932:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2930,"a",@progbits
	.type	__c.2930, @object
	.size	__c.2930, 9
__c.2930:
	.string	"\n%S%S:%i"
	.section	.progmem.data.__c.2928,"a",@progbits
	.type	__c.2928, @object
	.size	__c.2928, 8
__c.2928:
	.string	"%S%S:%i"
	.section	.progmem.data.__c.2925,"a",@progbits
	.type	__c.2925, @object
	.size	__c.2925, 7
__c.2925:
	.string	"\n   %S"
	.section	.progmem.data.__c.2923,"a",@progbits
	.type	__c.2923, @object
	.size	__c.2923, 11
__c.2923:
	.string	"\n%S%i - %S"
	.section	.progmem.data.__c.2921,"a",@progbits
	.type	__c.2921, @object
	.size	__c.2921, 11
__c.2921:
	.string	"\n%S%i - %S"
	.section	.progmem.data.__c.2919,"a",@progbits
	.type	__c.2919, @object
	.size	__c.2919, 11
__c.2919:
	.string	"\n%S%i - %S"
	.section	.progmem.data.__c.2917,"a",@progbits
	.type	__c.2917, @object
	.size	__c.2917, 10
__c.2917:
	.string	"%S%i - %S"
	.section	.progmem.data.__c.2914,"a",@progbits
	.type	__c.2914, @object
	.size	__c.2914, 7
__c.2914:
	.string	"    %S"
	.section	.progmem.data.__c.2909,"a",@progbits
	.type	__c.2909, @object
	.size	__c.2909, 3
__c.2909:
	.string	"%S"
	.section	.progmem.data.__c.2905,"a",@progbits
	.type	__c.2905, @object
	.size	__c.2905, 4
__c.2905:
	.string	"   "
	.section	.progmem.data.__c.2903,"a",@progbits
	.type	__c.2903, @object
	.size	__c.2903, 10
__c.2903:
	.string	"\n %S:%02X"
	.section	.progmem.data.__c.2897,"a",@progbits
	.type	__c.2897, @object
	.size	__c.2897, 9
__c.2897:
	.string	" %S %S:\n"
	.section	.progmem.data.__c.2895,"a",@progbits
	.type	__c.2895, @object
	.size	__c.2895, 7
__c.2895:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2892,"a",@progbits
	.type	__c.2892, @object
	.size	__c.2892, 9
__c.2892:
	.string	" %S %S:\n"
	.section	.progmem.data.__c.2890,"a",@progbits
	.type	__c.2890, @object
	.size	__c.2890, 7
__c.2890:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2887,"a",@progbits
	.type	__c.2887, @object
	.size	__c.2887, 9
__c.2887:
	.string	" %S %S:\n"
	.section	.progmem.data.__c.2885,"a",@progbits
	.type	__c.2885, @object
	.size	__c.2885, 7
__c.2885:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2881,"a",@progbits
	.type	__c.2881, @object
	.size	__c.2881, 9
__c.2881:
	.string	" %S %S:\n"
	.section	.progmem.data.__c.2879,"a",@progbits
	.type	__c.2879, @object
	.size	__c.2879, 7
__c.2879:
	.string	"%S %S\n"
	.section	.progmem.data.__c.2874,"a",@progbits
	.type	__c.2874, @object
	.size	__c.2874, 9
__c.2874:
	.string	"\n%SD %S!"
	.section	.progmem.data.__c.2871,"a",@progbits
	.type	__c.2871, @object
	.size	__c.2871, 4
__c.2871:
	.string	"\n%s"
	.section	.progmem.data.__c.2869,"a",@progbits
	.type	__c.2869, @object
	.size	__c.2869, 7
__c.2869:
	.string	"\n%S%S?"
	.section	.progmem.data.__c.2865,"a",@progbits
	.type	__c.2865, @object
	.size	__c.2865, 8
__c.2865:
	.string	"%S %S:\n"
	.section	.progmem.data.__c.2860,"a",@progbits
	.type	__c.2860, @object
	.size	__c.2860, 9
__c.2860:
	.string	"%i.%S %S"
	.section	.progmem.data.__c.2858,"a",@progbits
	.type	__c.2858, @object
	.size	__c.2858, 10
__c.2858:
	.string	"%i.%S %S\n"
	.section	.progmem.data.__c.2856,"a",@progbits
	.type	__c.2856, @object
	.size	__c.2856, 10
__c.2856:
	.string	"%i.%S %S\n"
	.section	.progmem.data.__c.2854,"a",@progbits
	.type	__c.2854, @object
	.size	__c.2854, 7
__c.2854:
	.string	"%i.%S\n"
	.section	.progmem.data.__c.2852,"a",@progbits
	.type	__c.2852, @object
	.size	__c.2852, 13
__c.2852:
	.string	"%i.%S %S-%S\n"
	.section	.progmem.data.__c.2850,"a",@progbits
	.type	__c.2850, @object
	.size	__c.2850, 10
__c.2850:
	.string	"%i.%S %S\n"
	.section	.progmem.data.__c.2848,"a",@progbits
	.type	__c.2848, @object
	.size	__c.2848, 11
__c.2848:
	.string	"%i.%S %Ss\n"
	.section	.progmem.data.__c.2846,"a",@progbits
	.type	__c.2846, @object
	.size	__c.2846, 10
__c.2846:
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
	.section	.progmem.data.__c.2788,"a",@progbits
	.type	__c.2788, @object
	.size	__c.2788, 2
__c.2788:
	.string	"C"
	.section	.progmem.data.__c.2786,"a",@progbits
	.type	__c.2786, @object
	.size	__c.2786, 2
__c.2786:
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
	.section	.bss.SleepTime,"aw",@nobits
	.type	SleepTime, @object
	.size	SleepTime, 2
SleepTime:
	.zero	2
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
	.comm	temper,8,1
	.comm	nSensors,1,1
	.comm	rTempDiffSupplyReturnMax,1,1
	.comm	rTempDiffSupplyReturnMin,1,1
	.comm	rTempSupplyMax,1,1
	.comm	rTempSupplyMin,1,1
	.comm	rTempOutDoorMax,1,1
	.comm	rTempOutDoorMin,1,1
	.comm	rTempInDoorMax,1,1
	.comm	rTempInDoorMin,1,1
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
	.text
.Letext0:
	.file 4 "/AtmelAvrToolchain/avr/include/stdint.h"
	.file 5 "/AtmelAvrToolchain/avr/include/avr/fuse.h"
	.file 6 "/AtmelAvrToolchain/lib/gcc/avr/4.8.1/include/stddef.h"
	.file 7 "/AtmelAvrToolchain/avr/include/stdio.h"
	.file 8 "/home/izhuk/workspace/A328Pn3310DS18x20_n/lcd/lcdconf.h"
	.file 9 "/home/izhuk/workspace/A328Pn3310DS18x20_n/timer/timer.h"
	.file 10 "/home/izhuk/workspace/A328Pn3310DS18x20_n/gsm-sms/sms.h"
	.file 11 "../main.h"
	.file 12 "/home/izhuk/workspace/A328Pn3310DS18x20_n/extint/extint.h"
	.file 13 "/AtmelAvrToolchain/avr/include/string.h"
	.file 14 "/home/izhuk/workspace/A328Pn3310DS18x20_n/ds18x20/ds18x20.h"
	.file 15 "/AtmelAvrToolchain/avr/include/stdlib.h"
	.file 16 "/AtmelAvrToolchain/avr/include/avr/eeprom.h"
	.file 17 "/AtmelAvrToolchain/avr/include/avr/pgmspace.h"
	.file 18 "/home/izhuk/workspace/A328Pn3310DS18x20_n/n1110/lcd8814.h"
	.file 19 "/home/izhuk/workspace/A328Pn3310DS18x20_n/uart/uart.h"
	.file 20 "/home/izhuk/workspace/A328Pn3310DS18x20_n/onewire/onewire.h"
	.file 21 "<built-in>"
	.file 22 "/home/izhuk/workspace/A328Pn3310DS18x20_n/ds18x20/crc8.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x27d1
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF268
	.byte	0x1
	.long	.LASF269
	.long	.LASF270
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x4
	.byte	0x7a
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x4
	.byte	0x7b
	.long	0x58
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF5
	.byte	0x4
	.byte	0x7c
	.long	0x6a
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
	.long	0x83
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
	.long	0xcb
	.uleb128 0x6
	.string	"low"
	.byte	0x5
	.byte	0xf1
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF12
	.byte	0x5
	.byte	0xf2
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF13
	.byte	0x5
	.byte	0xf3
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x5
	.byte	0xf4
	.long	0x98
	.uleb128 0x2
	.long	.LASF15
	.byte	0x6
	.byte	0xd4
	.long	0x6a
	.uleb128 0x8
	.long	.LASF29
	.byte	0xe
	.byte	0x7
	.byte	0xf2
	.long	0x163
	.uleb128 0x6
	.string	"buf"
	.byte	0x7
	.byte	0xf3
	.long	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF16
	.byte	0x7
	.byte	0xf4
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF17
	.byte	0x7
	.byte	0xf5
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.long	.LASF18
	.byte	0x7
	.word	0x105
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"len"
	.byte	0x7
	.word	0x106
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"put"
	.byte	0x7
	.word	0x107
	.long	0x18b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"get"
	.byte	0x7
	.word	0x108
	.long	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.long	.LASF19
	.byte	0x7
	.word	0x109
	.long	0x1a7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x169
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF20
	.uleb128 0xc
	.byte	0x1
	.long	0x58
	.long	0x185
	.uleb128 0xd
	.long	0x169
	.uleb128 0xd
	.long	0x185
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0xe1
	.uleb128 0xb
	.byte	0x2
	.long	0x170
	.uleb128 0xc
	.byte	0x1
	.long	0x58
	.long	0x1a1
	.uleb128 0xd
	.long	0x185
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x191
	.uleb128 0xe
	.byte	0x2
	.uleb128 0xb
	.byte	0x2
	.long	0x1af
	.uleb128 0xf
	.uleb128 0x2
	.long	.LASF21
	.byte	0x8
	.byte	0x15
	.long	0x46
	.uleb128 0x5
	.byte	0x7
	.byte	0x9
	.byte	0xb
	.long	0x218
	.uleb128 0x7
	.long	.LASF22
	.byte	0x9
	.byte	0xc
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x9
	.byte	0xd
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF24
	.byte	0x9
	.byte	0xe
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF25
	.byte	0x9
	.byte	0xf
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.long	.LASF26
	.byte	0x9
	.byte	0x10
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.long	.LASF27
	.byte	0x9
	.byte	0x11
	.long	0x6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x9
	.byte	0x12
	.long	0x1bb
	.uleb128 0x8
	.long	.LASF30
	.byte	0xce
	.byte	0xa
	.byte	0x29
	.long	0x26b
	.uleb128 0x7
	.long	.LASF31
	.byte	0xa
	.byte	0x2a
	.long	0x26b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF32
	.byte	0xa
	.byte	0x2b
	.long	0x282
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x7
	.long	.LASF25
	.byte	0xa
	.byte	0x2c
	.long	0x292
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x7
	.long	.LASF33
	.byte	0xa
	.byte	0x2d
	.long	0x169
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd
	.byte	0
	.uleb128 0x10
	.long	0x169
	.long	0x27b
	.uleb128 0x11
	.long	0x27b
	.byte	0x9f
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF34
	.uleb128 0x10
	.long	0x169
	.long	0x292
	.uleb128 0x11
	.long	0x27b
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.long	0x169
	.long	0x2a2
	.uleb128 0x11
	.long	0x27b
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.string	"SMS"
	.byte	0xa
	.byte	0x2e
	.long	0x223
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x42
	.long	0x2ce
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
	.long	0x313
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
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x46
	.long	0x340
	.uleb128 0x14
	.long	.LASF49
	.sleb128 0
	.uleb128 0x14
	.long	.LASF50
	.sleb128 1
	.uleb128 0x14
	.long	.LASF51
	.sleb128 2
	.uleb128 0x14
	.long	.LASF52
	.sleb128 3
	.uleb128 0x14
	.long	.LASF53
	.sleb128 4
	.uleb128 0x14
	.long	.LASF54
	.sleb128 5
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x48
	.long	0x391
	.uleb128 0x14
	.long	.LASF55
	.sleb128 0
	.uleb128 0x14
	.long	.LASF56
	.sleb128 1
	.uleb128 0x14
	.long	.LASF57
	.sleb128 2
	.uleb128 0x14
	.long	.LASF58
	.sleb128 3
	.uleb128 0x14
	.long	.LASF59
	.sleb128 4
	.uleb128 0x14
	.long	.LASF60
	.sleb128 5
	.uleb128 0x14
	.long	.LASF61
	.sleb128 6
	.uleb128 0x14
	.long	.LASF62
	.sleb128 7
	.uleb128 0x14
	.long	.LASF63
	.sleb128 8
	.uleb128 0x14
	.long	.LASF64
	.sleb128 9
	.uleb128 0x14
	.long	.LASF65
	.sleb128 10
	.uleb128 0x14
	.long	.LASF66
	.sleb128 11
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x4b
	.long	0x3b8
	.uleb128 0x14
	.long	.LASF67
	.sleb128 0
	.uleb128 0x14
	.long	.LASF68
	.sleb128 1
	.uleb128 0x14
	.long	.LASF69
	.sleb128 2
	.uleb128 0x14
	.long	.LASF70
	.sleb128 3
	.uleb128 0x14
	.long	.LASF71
	.sleb128 4
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x4c
	.long	0x3eb
	.uleb128 0x14
	.long	.LASF72
	.sleb128 0
	.uleb128 0x14
	.long	.LASF73
	.sleb128 1
	.uleb128 0x14
	.long	.LASF74
	.sleb128 2
	.uleb128 0x14
	.long	.LASF75
	.sleb128 3
	.uleb128 0x14
	.long	.LASF76
	.sleb128 4
	.uleb128 0x14
	.long	.LASF77
	.sleb128 5
	.uleb128 0x14
	.long	.LASF78
	.sleb128 6
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x4d
	.long	0x40c
	.uleb128 0x14
	.long	.LASF79
	.sleb128 0
	.uleb128 0x14
	.long	.LASF80
	.sleb128 1
	.uleb128 0x14
	.long	.LASF81
	.sleb128 2
	.uleb128 0x14
	.long	.LASF82
	.sleb128 3
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0xb
	.byte	0x4f
	.long	0x42d
	.uleb128 0x14
	.long	.LASF83
	.sleb128 0
	.uleb128 0x14
	.long	.LASF84
	.sleb128 1
	.uleb128 0x14
	.long	.LASF85
	.sleb128 2
	.uleb128 0x14
	.long	.LASF86
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.long	.LASF87
	.byte	0x2
	.byte	0x51
	.byte	0x1
	.byte	0x3
	.long	0x446
	.uleb128 0x16
	.long	.LASF89
	.byte	0x2
	.byte	0x51
	.long	0x3b
	.byte	0
	.uleb128 0x15
	.long	.LASF88
	.byte	0x3
	.byte	0x8e
	.byte	0x1
	.byte	0x3
	.long	0x47f
	.uleb128 0x16
	.long	.LASF90
	.byte	0x3
	.byte	0x8e
	.long	0x47f
	.uleb128 0x17
	.long	.LASF91
	.byte	0x3
	.byte	0x90
	.long	0x47f
	.uleb128 0x17
	.long	.LASF92
	.byte	0x3
	.byte	0x94
	.long	0x78
	.uleb128 0x18
	.byte	0x1
	.long	.LASF226
	.byte	0x3
	.byte	0x95
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF93
	.uleb128 0x19
	.long	.LASF271
	.byte	0x1
	.byte	0x9a
	.long	0x3b
	.long	.LFB12
	.long	.LFE12
	.long	.LLST0
	.byte	0x1
	.long	0x513
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.long	.LLST1
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.byte	0x9e
	.long	0x3b
	.long	.LLST2
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.byte	0xa8
	.long	0x3b
	.long	.LLST3
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xa8
	.long	0x3b
	.long	.LLST4
	.uleb128 0x1c
	.long	0x42d
	.long	.LBB108
	.long	.LBE108
	.byte	0x1
	.byte	0xa5
	.long	0x4f7
	.uleb128 0x1d
	.long	0x43a
	.long	.LLST5
	.byte	0
	.uleb128 0x1e
	.long	.LVL3
	.long	0x23c1
	.uleb128 0x1e
	.long	.LVL5
	.long	0x23d4
	.uleb128 0x1e
	.long	.LVL12
	.long	0x23e7
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST6
	.byte	0x1
	.long	0x5c0
	.uleb128 0x20
	.long	.LASF109
	.byte	0x1
	.byte	0xfc
	.long	0x4d
	.long	.LLST7
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.byte	0xfe
	.long	0x5c0
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x22
	.long	.LVL19
	.long	0x23fa
	.long	0x572
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
	.long	.LVL20
	.long	0x241c
	.long	0x58e
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
	.long	__c.2786
	.byte	0
	.uleb128 0x22
	.long	.LVL21
	.long	0x243b
	.long	0x5a7
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
	.long	.LVL22
	.long	0x241c
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
	.long	__c.2788
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x169
	.long	0x5d0
	.uleb128 0x11
	.long	0x27b
	.byte	0x9
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.word	0x4f3
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.word	0x4cb
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x68f
	.uleb128 0x27
	.long	.LBB110
	.long	.LBE110
	.long	0x61b
	.uleb128 0x28
	.long	.LASF96
	.byte	0x1
	.word	0x4d7
	.long	0x3b
	.byte	0
	.uleb128 0x29
	.long	0x446
	.long	.LBB111
	.long	.LBE111
	.byte	0x1
	.word	0x4e2
	.long	0x657
	.uleb128 0x2a
	.long	0x453
	.byte	0x4
	.long	0x42480000
	.uleb128 0x2b
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x2c
	.long	0x45e
	.byte	0x4
	.long	0x48c35000
	.uleb128 0x2d
	.long	0x469
	.long	0x61a80
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL23
	.long	0x5d0
	.uleb128 0x1e
	.long	.LVL24
	.long	0x244f
	.uleb128 0x1e
	.long	.LVL27
	.long	0x2459
	.uleb128 0x22
	.long	.LVL28
	.long	0x2463
	.long	0x685
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x1e
	.long	.LVL29
	.long	0x2477
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF98
	.byte	0x1
	.word	0x4bf
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6b3
	.uleb128 0x1e
	.long	.LVL30
	.long	0x5e7
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.word	0x4c5
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6d7
	.uleb128 0x1e
	.long	.LVL31
	.long	0x5e7
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF107
	.byte	0x1
	.word	0x4fd
	.byte	0x1
	.long	0x29
	.long	.LFB19
	.long	.LFE19
	.long	.LLST8
	.byte	0x1
	.long	0x762
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.word	0x4fe
	.long	0x29
	.long	.LLST9
	.uleb128 0x2f
	.string	"k"
	.byte	0x1
	.word	0x4fe
	.long	0x29
	.long	.LLST10
	.uleb128 0x30
	.long	.LASF100
	.byte	0x1
	.word	0x4ff
	.long	0x29
	.long	.LLST11
	.uleb128 0x24
	.long	.LVL35
	.long	0x2481
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
	.uleb128 0x31
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.word	0x51f
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x78c
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.word	0x520
	.long	0x3b
	.long	.LLST12
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.word	0x528
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST13
	.byte	0x1
	.long	0x817
	.uleb128 0x29
	.long	0x446
	.long	.LBB113
	.long	.LBE113
	.byte	0x1
	.word	0x52d
	.long	0x7e3
	.uleb128 0x2a
	.long	0x453
	.byte	0x4
	.long	0x459c4000
	.uleb128 0x2b
	.long	.LBB114
	.long	.LBE114
	.uleb128 0x2c
	.long	0x45e
	.byte	0x4
	.long	0x4c189680
	.uleb128 0x2d
	.long	0x469
	.long	0x2625a00
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL43
	.long	0x24a3
	.uleb128 0x22
	.long	.LVL44
	.long	0x24b2
	.long	0x804
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
	.long	.LVL45
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL46
	.long	0x24e5
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.word	0x530
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST14
	.byte	0x1
	.long	0x873
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.word	0x531
	.long	0x3b
	.uleb128 0x35
	.string	"k"
	.byte	0x1
	.word	0x531
	.long	0x3b
	.byte	0x1
	.byte	0x6c
	.uleb128 0x36
	.long	0x446
	.long	.LBB115
	.long	.LBE115
	.byte	0x1
	.word	0x54d
	.uleb128 0x37
	.long	0x453
	.uleb128 0x2b
	.long	.LBB116
	.long	.LBE116
	.uleb128 0x38
	.long	0x45e
	.uleb128 0x38
	.long	0x469
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.word	0x610
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF108
	.byte	0x1
	.word	0x551
	.byte	0x1
	.long	0x4d
	.long	.LFB24
	.long	.LFE24
	.long	.LLST15
	.byte	0x1
	.long	0x99c
	.uleb128 0x39
	.long	.LASF110
	.byte	0x1
	.word	0x551
	.long	0x99c
	.long	.LLST16
	.uleb128 0x3a
	.long	.LASF111
	.byte	0x1
	.word	0x553
	.long	0x4d
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.word	0x554
	.long	0x5c0
	.byte	0x2
	.byte	0x8c
	.sleb128 3
	.uleb128 0x2f
	.string	"k"
	.byte	0x1
	.word	0x554
	.long	0x169
	.long	.LLST17
	.uleb128 0x29
	.long	0x446
	.long	.LBB117
	.long	.LBE117
	.byte	0x1
	.word	0x559
	.long	0x91d
	.uleb128 0x1d
	.long	0x453
	.long	.LLST18
	.uleb128 0x2b
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x3b
	.long	0x45e
	.long	.LLST19
	.uleb128 0x3b
	.long	0x469
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL50
	.long	0x24f4
	.long	0x93b
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
	.long	.LVL52
	.long	0x873
	.uleb128 0x22
	.long	.LVL53
	.long	0x2511
	.long	0x968
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
	.long	.LVL54
	.long	0x23fa
	.long	0x986
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
	.long	.LVL55
	.long	0x2534
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
	.long	0x3b
	.uleb128 0x32
	.byte	0x1
	.long	.LASF112
	.byte	0x1
	.word	0x576
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST21
	.byte	0x1
	.long	0x9e9
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.word	0x577
	.long	0x3b
	.long	.LLST22
	.uleb128 0x24
	.long	.LVL60
	.long	0x88a
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
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF113
	.byte	0x1
	.word	0x619
	.byte	0x1
	.long	0x169
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xa27
	.uleb128 0x39
	.long	.LASF110
	.byte	0x1
	.word	0x619
	.long	0x99c
	.long	.LLST23
	.uleb128 0x2f
	.string	"l"
	.byte	0x1
	.word	0x61a
	.long	0x3b
	.long	.LLST24
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF114
	.byte	0x1
	.word	0x50d
	.byte	0x1
	.long	0x169
	.long	.LFB20
	.long	.LFE20
	.long	.LLST25
	.byte	0x1
	.long	0xadb
	.uleb128 0x30
	.long	.LASF100
	.byte	0x1
	.word	0x50e
	.long	0x169
	.long	.LLST26
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.word	0x50f
	.long	0x3b
	.long	.LLST27
	.uleb128 0x2f
	.string	"k"
	.byte	0x1
	.word	0x50f
	.long	0x3b
	.long	.LLST28
	.uleb128 0x29
	.long	0x446
	.long	.LBB119
	.long	.LBE119
	.byte	0x1
	.word	0x518
	.long	0xaac
	.uleb128 0x1d
	.long	0x453
	.long	.LLST29
	.uleb128 0x2b
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x3b
	.long	0x45e
	.long	.LLST30
	.uleb128 0x3b
	.long	0x469
	.long	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL73
	.long	0x9e9
	.long	0xac5
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
	.uleb128 0x24
	.long	.LVL74
	.long	0x88a
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
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF115
	.byte	0x1
	.word	0x5b9
	.byte	0x1
	.long	0x3b
	.long	.LFB26
	.long	.LFE26
	.long	.LLST32
	.byte	0x1
	.long	0xc1b
	.uleb128 0x3d
	.string	"ch"
	.byte	0x1
	.word	0x5b9
	.long	0x169
	.long	.LLST33
	.uleb128 0x30
	.long	.LASF116
	.byte	0x1
	.word	0x5ba
	.long	0x3b
	.long	.LLST34
	.uleb128 0x2f
	.string	"l"
	.byte	0x1
	.word	0x5ba
	.long	0x3b
	.long	.LLST35
	.uleb128 0x2f
	.string	"val"
	.byte	0x1
	.word	0x5ba
	.long	0x3b
	.long	.LLST36
	.uleb128 0x30
	.long	.LASF100
	.byte	0x1
	.word	0x5bb
	.long	0x29
	.long	.LLST37
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.word	0x5bb
	.long	0x29
	.long	.LLST38
	.uleb128 0x2f
	.string	"fl4"
	.byte	0x1
	.word	0x5bb
	.long	0x29
	.long	.LLST39
	.uleb128 0x22
	.long	.LVL86
	.long	0x9e9
	.long	0xb7e
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
	.uleb128 0x22
	.long	.LVL88
	.long	0x2481
	.long	0xbaf
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
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x78
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
	.uleb128 0x1e
	.long	.LVL100
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL101
	.long	0x254d
	.uleb128 0x1e
	.long	.LVL102
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL103
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL104
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL105
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL106
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL107
	.long	0x24e5
	.uleb128 0x24
	.long	.LVL112
	.long	0x2567
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
	.uleb128 0x31
	.byte	0x1
	.long	.LASF117
	.byte	0x1
	.word	0x63a
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xc55
	.uleb128 0x39
	.long	.LASF118
	.byte	0x1
	.word	0x63a
	.long	0x3b
	.long	.LLST40
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.word	0x63b
	.long	0x29
	.long	.LLST41
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF119
	.byte	0x1
	.word	0x622
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST42
	.byte	0x1
	.long	0xc9e
	.uleb128 0x3e
	.long	.LASF118
	.byte	0x1
	.word	0x622
	.long	0x3b
	.byte	0x1
	.byte	0x5b
	.uleb128 0x28
	.long	.LASF18
	.byte	0x1
	.word	0x623
	.long	0xd6
	.uleb128 0x3a
	.long	.LASF120
	.byte	0x1
	.word	0x624
	.long	0xc9e
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
	.long	0x2a2
	.uleb128 0x32
	.byte	0x1
	.long	.LASF121
	.byte	0x1
	.word	0x640
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST43
	.byte	0x1
	.long	0xd9c
	.uleb128 0x3f
	.long	.LASF18
	.byte	0x1
	.word	0x641
	.long	0xd6
	.byte	0xcf
	.uleb128 0x30
	.long	.LASF120
	.byte	0x1
	.word	0x642
	.long	0xc9e
	.long	.LLST44
	.uleb128 0x22
	.long	.LVL123
	.long	0x2586
	.long	0xcf5
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
	.long	.LVL126
	.long	0x259f
	.long	0xd26
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
	.long	.LVL127
	.long	0x25c1
	.long	0xd58
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
	.long	.LVL128
	.long	0x25e4
	.long	0xd86
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
	.long	.LVL129
	.long	0x2606
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
	.uleb128 0x33
	.byte	0x1
	.long	.LASF122
	.byte	0x1
	.word	0x64e
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST45
	.byte	0x1
	.long	0xdd7
	.uleb128 0x28
	.long	.LASF18
	.byte	0x1
	.word	0x64f
	.long	0xd6
	.uleb128 0x3a
	.long	.LASF120
	.byte	0x1
	.word	0x650
	.long	0xc9e
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.long	.LASF272
	.byte	0x1
	.word	0x65d
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x41
	.byte	0x1
	.long	.LASF123
	.byte	0x1
	.word	0x666
	.long	.LFB34
	.long	.LFE34
	.long	.LLST46
	.byte	0x1
	.long	0xe7e
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.word	0x667
	.long	0x3b
	.long	.LLST47
	.uleb128 0x29
	.long	0x446
	.long	.LBB121
	.long	.LBE121
	.byte	0x1
	.word	0x66e
	.long	0xe4f
	.uleb128 0x1d
	.long	0x453
	.long	.LLST48
	.uleb128 0x2b
	.long	.LBB122
	.long	.LBE122
	.uleb128 0x3b
	.long	0x45e
	.long	.LLST49
	.uleb128 0x3b
	.long	0x469
	.long	.LLST50
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL133
	.long	0x9e9
	.long	0xe68
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
	.uleb128 0x24
	.long	.LVL134
	.long	0x88a
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
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF124
	.byte	0x1
	.word	0x107
	.byte	0x1
	.long	0x58
	.long	.LFB14
	.long	.LFE14
	.long	.LLST51
	.byte	0x1
	.long	0x1b98
	.uleb128 0x2f
	.string	"ch"
	.byte	0x1
	.word	0x109
	.long	0x169
	.long	.LLST52
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.word	0x10a
	.long	0x3b
	.long	.LLST53
	.uleb128 0x2f
	.string	"k"
	.byte	0x1
	.word	0x10a
	.long	0x3b
	.long	.LLST54
	.uleb128 0x2f
	.string	"ks"
	.byte	0x1
	.word	0x10a
	.long	0x3b
	.long	.LLST55
	.uleb128 0x30
	.long	.LASF125
	.byte	0x1
	.word	0x10a
	.long	0x3b
	.long	.LLST56
	.uleb128 0x30
	.long	.LASF126
	.byte	0x1
	.word	0x10a
	.long	0x3b
	.long	.LLST57
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.word	0x10a
	.long	0x3b
	.long	.LLST58
	.uleb128 0x30
	.long	.LASF127
	.byte	0x1
	.word	0x10b
	.long	0x29
	.long	.LLST59
	.uleb128 0x30
	.long	.LASF128
	.byte	0x1
	.word	0x10c
	.long	0x29
	.long	.LLST60
	.uleb128 0x30
	.long	.LASF129
	.byte	0x1
	.word	0x10d
	.long	0x3b
	.long	.LLST61
	.uleb128 0x30
	.long	.LASF130
	.byte	0x1
	.word	0x10d
	.long	0x3b
	.long	.LLST62
	.uleb128 0x3a
	.long	.LASF131
	.byte	0x1
	.word	0x10e
	.long	0x1b98
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2f
	.string	"ki"
	.byte	0x1
	.word	0x10f
	.long	0x58
	.long	.LLST63
	.uleb128 0x3a
	.long	.LASF132
	.byte	0x1
	.word	0x110
	.long	0x1ba8
	.byte	0x2
	.byte	0x8c
	.sleb128 6
	.uleb128 0x29
	.long	0x446
	.long	.LBB123
	.long	.LBE123
	.byte	0x1
	.word	0x1a9
	.long	0xfac
	.uleb128 0x1d
	.long	0x453
	.long	.LLST64
	.uleb128 0x2b
	.long	.LBB124
	.long	.LBE124
	.uleb128 0x3b
	.long	0x45e
	.long	.LLST65
	.uleb128 0x3b
	.long	0x469
	.long	.LLST66
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x446
	.long	.LBB125
	.long	.LBE125
	.byte	0x1
	.word	0x1ed
	.long	0xfe8
	.uleb128 0x2a
	.long	0x453
	.byte	0x4
	.long	0x447a0000
	.uleb128 0x2b
	.long	.LBB126
	.long	.LBE126
	.uleb128 0x2c
	.long	0x45e
	.byte	0x4
	.long	0x4af42400
	.uleb128 0x2d
	.long	0x469
	.long	0x7a1200
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x446
	.long	.LBB127
	.long	.LBE127
	.byte	0x1
	.word	0x346
	.long	0x1022
	.uleb128 0x1d
	.long	0x453
	.long	.LLST67
	.uleb128 0x2b
	.long	.LBB128
	.long	.LBE128
	.uleb128 0x3b
	.long	0x45e
	.long	.LLST68
	.uleb128 0x3b
	.long	0x469
	.long	.LLST69
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x446
	.long	.LBB129
	.long	.LBE129
	.byte	0x1
	.word	0x372
	.long	0x105c
	.uleb128 0x1d
	.long	0x453
	.long	.LLST70
	.uleb128 0x2b
	.long	.LBB130
	.long	.LBE130
	.uleb128 0x3b
	.long	0x45e
	.long	.LLST71
	.uleb128 0x3b
	.long	0x469
	.long	.LLST72
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL139
	.long	0x261b
	.uleb128 0x1e
	.long	.LVL140
	.long	0x78c
	.uleb128 0x1e
	.long	.LVL141
	.long	0x262a
	.uleb128 0x22
	.long	.LVL142
	.long	0x2586
	.long	0x1090
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
	.long	.LVL143
	.long	0x2634
	.long	0x10b7
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
	.long	.LVL144
	.long	0x2653
	.long	0x10d3
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
	.long	.LVL145
	.long	0x2653
	.long	0x10ef
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
	.long	.LVL146
	.long	0x2653
	.long	0x110b
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
	.long	.LVL147
	.long	0x2653
	.long	0x1127
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
	.long	.LVL148
	.long	0x2653
	.long	0x1143
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
	.long	.LVL149
	.long	0x2653
	.long	0x115f
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
	.long	.LVL150
	.long	0x2653
	.long	0x117b
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
	.long	.LVL151
	.long	0x2653
	.long	0x1197
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
	.long	.LVL152
	.long	0x2634
	.long	0x11cb
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
	.long	.LVL154
	.long	0x2677
	.uleb128 0x1e
	.long	.LVL155
	.long	0x24a3
	.uleb128 0x22
	.long	.LVL156
	.long	0x24b2
	.long	0x11f5
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
	.long	.LVL157
	.long	0x24cb
	.uleb128 0x22
	.long	.LVL158
	.long	0x24b2
	.long	0x1216
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
	.long	.LVL159
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL160
	.long	0x24e5
	.uleb128 0x22
	.long	.LVL161
	.long	0x2681
	.long	0x1241
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
	.uleb128 0x1e
	.long	.LVL162
	.long	0x2695
	.uleb128 0x1e
	.long	.LVL163
	.long	0xca4
	.uleb128 0x22
	.long	.LVL164
	.long	0x269f
	.long	0x1287
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
	.long	.LVL165
	.long	0xa27
	.uleb128 0x1e
	.long	.LVL167
	.long	0x262a
	.uleb128 0x1e
	.long	.LVL168
	.long	0x486
	.uleb128 0x1e
	.long	.LVL170
	.long	0x26cd
	.uleb128 0x1e
	.long	.LVL171
	.long	0x486
	.uleb128 0x1e
	.long	.LVL176
	.long	0x762
	.uleb128 0x22
	.long	.LVL178
	.long	0x2463
	.long	0x12d0
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x1e
	.long	.LVL179
	.long	0x2477
	.uleb128 0x1e
	.long	.LVL180
	.long	0x26dc
	.uleb128 0x1e
	.long	.LVL181
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL182
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL183
	.long	0x26f0
	.uleb128 0x22
	.long	.LVL184
	.long	0x241c
	.long	0x1319
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
	.long	.LVL185
	.long	0x24e5
	.uleb128 0x1e
	.long	.LVL186
	.long	0x6d7
	.uleb128 0x1e
	.long	.LVL190
	.long	0x2704
	.uleb128 0x22
	.long	.LVL191
	.long	0x26f0
	.long	0x134d
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
	.long	.LVL192
	.long	0x241c
	.long	0x1369
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
	.long	.LVL193
	.long	0x241c
	.long	0x1385
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
	.long	.LVL194
	.long	0x241c
	.long	0x13a1
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
	.long	.LVL195
	.long	0x270e
	.long	0x13c2
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
	.long	.LVL196
	.long	0x241c
	.long	0x13de
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
	.long	.LVL197
	.long	0x241c
	.long	0x13fa
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
	.long	.LVL199
	.long	0x24e5
	.uleb128 0x1e
	.long	.LVL201
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL202
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL203
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL204
	.long	0x24e5
	.uleb128 0x1e
	.long	.LVL206
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL207
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL208
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL209
	.long	0x24e5
	.uleb128 0x1e
	.long	.LVL211
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL212
	.long	0x244f
	.uleb128 0x1e
	.long	.LVL213
	.long	0x2726
	.uleb128 0x1e
	.long	.LVL214
	.long	0x9a2
	.uleb128 0x1e
	.long	.LVL217
	.long	0x78c
	.uleb128 0x1e
	.long	.LVL218
	.long	0xd9c
	.uleb128 0x1e
	.long	.LVL219
	.long	0x262a
	.uleb128 0x1e
	.long	.LVL220
	.long	0x2730
	.uleb128 0x1e
	.long	.LVL222
	.long	0x24a3
	.uleb128 0x22
	.long	.LVL223
	.long	0xadb
	.long	0x14b0
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.long	.LVL224
	.long	0x9a2
	.uleb128 0x1e
	.long	.LVL225
	.long	0x2606
	.uleb128 0x1e
	.long	.LVL226
	.long	0x817
	.uleb128 0x1e
	.long	.LVL229
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL230
	.long	0x24e5
	.uleb128 0x1e
	.long	.LVL232
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL233
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL234
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL235
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL236
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL237
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL238
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL239
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL240
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL241
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL245
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL246
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL247
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL249
	.long	0x273e
	.uleb128 0x1e
	.long	.LVL251
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL252
	.long	0x24cb
	.uleb128 0x22
	.long	.LVL254
	.long	0x275a
	.long	0x1597
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
	.long	.LVL255
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL260
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL261
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL262
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL263
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL265
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL266
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL267
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL268
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL270
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL271
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL272
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL273
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL275
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL276
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL277
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL278
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL280
	.long	0x273e
	.uleb128 0x22
	.long	.LVL283
	.long	0x2534
	.long	0x1652
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
	.sleb128 -22
	.byte	0
	.uleb128 0x22
	.long	.LVL285
	.long	0x2779
	.long	0x1665
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.long	.LVL286
	.long	0x254d
	.uleb128 0x22
	.long	.LVL287
	.long	0x2779
	.long	0x1681
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.long	.LVL294
	.long	0x278d
	.long	0x16a4
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
	.sleb128 -17
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
	.long	.LVL296
	.long	0x24cb
	.uleb128 0x22
	.long	.LVL300
	.long	0x2779
	.long	0x16c0
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.long	.LVL301
	.long	0x24cb
	.uleb128 0x22
	.long	.LVL302
	.long	0x2779
	.long	0x16dc
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.long	.LVL309
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL310
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL312
	.long	0x254d
	.uleb128 0x1e
	.long	.LVL313
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL316
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL317
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL319
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL320
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL321
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL322
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL323
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL325
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL326
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL327
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL328
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL329
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL330
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL331
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL332
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL333
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL334
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL340
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL341
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL342
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL343
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL344
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL346
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL347
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL348
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL349
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL350
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL353
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL354
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL355
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL356
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL357
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL359
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL360
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL361
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL362
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL363
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL365
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL366
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL367
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL368
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL369
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL371
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL372
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL373
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL374
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL375
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL378
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL379
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL380
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL381
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL382
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL384
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL385
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL386
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL387
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL388
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL390
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL391
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL392
	.long	0x24cb
	.uleb128 0x22
	.long	.LVL394
	.long	0x27aa
	.long	0x1938
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
	.long	.LVL395
	.long	0x27aa
	.long	0x1954
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
	.long	.LVL396
	.long	0x27aa
	.long	0x1970
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
	.long	.LVL397
	.long	0x27aa
	.long	0x198c
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
	.long	.LVL398
	.long	0x27aa
	.long	0x19a8
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
	.long	.LVL399
	.long	0x27aa
	.long	0x19c4
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
	.long	.LVL400
	.long	0x27aa
	.long	0x19e0
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
	.long	.LVL401
	.long	0x27aa
	.long	0x19fc
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
	.long	.LVL402
	.long	0x2567
	.long	0x1a31
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
	.long	.LVL403
	.long	0x24cb
	.uleb128 0x22
	.long	.LVL408
	.long	0x273e
	.long	0x1a53
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
	.long	.LVL410
	.long	0x273e
	.uleb128 0x1e
	.long	.LVL413
	.long	0x273e
	.uleb128 0x22
	.long	.LVL414
	.long	0x2534
	.long	0x1a7e
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
	.sleb128 -22
	.byte	0
	.uleb128 0x1e
	.long	.LVL419
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL422
	.long	0x24a3
	.uleb128 0x22
	.long	.LVL423
	.long	0x27c4
	.long	0x1aa3
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LVL424
	.long	0x26e6
	.uleb128 0x1e
	.long	.LVL425
	.long	0x24cb
	.uleb128 0x22
	.long	.LVL426
	.long	0x27c4
	.long	0x1ac8
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.long	.LVL427
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL430
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL433
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL436
	.long	0x24cb
	.uleb128 0x1e
	.long	.LVL439
	.long	0x273e
	.uleb128 0x1e
	.long	.LVL442
	.long	0x273e
	.uleb128 0x22
	.long	.LVL443
	.long	0x2534
	.long	0x1b17
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
	.sleb128 -22
	.byte	0
	.uleb128 0x22
	.long	.LVL447
	.long	0x2779
	.long	0x1b2a
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LVL448
	.long	0x24cb
	.uleb128 0x22
	.long	.LVL449
	.long	0x2779
	.long	0x1b46
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LVL453
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL462
	.long	0x24e5
	.uleb128 0x1e
	.long	.LVL463
	.long	0x873
	.uleb128 0x1e
	.long	.LVL466
	.long	0xc55
	.uleb128 0x1e
	.long	.LVL467
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL468
	.long	0x24a3
	.uleb128 0x1e
	.long	.LVL469
	.long	0x9a2
	.uleb128 0x1e
	.long	.LVL471
	.long	0xded
	.uleb128 0x1e
	.long	.LVL472
	.long	0xdd7
	.byte	0
	.uleb128 0x10
	.long	0x169
	.long	0x1ba8
	.uleb128 0x11
	.long	0x27b
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	0x1b0
	.long	0x1bb8
	.uleb128 0x11
	.long	0x27b
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	0x3b
	.long	0x1bc8
	.uleb128 0x11
	.long	0x27b
	.byte	0x3
	.byte	0
	.uleb128 0x42
	.long	.LASF133
	.byte	0x1
	.byte	0x42
	.long	0x1bb8
	.byte	0x5
	.byte	0x3
	.long	sn_presence
	.uleb128 0x42
	.long	.LASF134
	.byte	0x1
	.byte	0x43
	.long	0x1bb8
	.byte	0x5
	.byte	0x3
	.long	sn_noready_counter
	.uleb128 0x42
	.long	.LASF135
	.byte	0x1
	.byte	0x44
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	nwSen_Phase
	.uleb128 0x42
	.long	.LASF136
	.byte	0x1
	.byte	0x45
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	btest_new_sensors
	.uleb128 0x42
	.long	.LASF137
	.byte	0x1
	.byte	0x46
	.long	0x1bb8
	.byte	0x5
	.byte	0x3
	.long	noready_sens
	.uleb128 0x21
	.string	"kg"
	.byte	0x1
	.byte	0x47
	.long	0x29
	.byte	0x5
	.byte	0x3
	.long	kg
	.uleb128 0x42
	.long	.LASF138
	.byte	0x1
	.byte	0x48
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	oldDisplaySens
	.uleb128 0x42
	.long	.LASF139
	.byte	0x1
	.byte	0x4a
	.long	0xe1
	.byte	0x5
	.byte	0x3
	.long	lcd_str
	.uleb128 0x10
	.long	0x3b
	.long	0x1c65
	.uleb128 0x11
	.long	0x27b
	.byte	0x3
	.uleb128 0x11
	.long	0x27b
	.byte	0x7
	.byte	0
	.uleb128 0x42
	.long	.LASF140
	.byte	0x1
	.byte	0x4d
	.long	0x1c4f
	.byte	0x5
	.byte	0x3
	.long	gSensorIDs
	.uleb128 0x42
	.long	.LASF141
	.byte	0x1
	.byte	0x50
	.long	0x99c
	.byte	0x5
	.byte	0x3
	.long	TempAct
	.uleb128 0x42
	.long	.LASF142
	.byte	0x1
	.byte	0x63
	.long	0x58
	.byte	0x5
	.byte	0x3
	.long	SleepTime
	.uleb128 0x10
	.long	0x169
	.long	0x1ca8
	.uleb128 0x11
	.long	0x27b
	.byte	0x2
	.byte	0
	.uleb128 0x42
	.long	.LASF143
	.byte	0x1
	.byte	0x66
	.long	0x1cb9
	.byte	0x5
	.byte	0x3
	.long	okStr
	.uleb128 0x43
	.long	0x1c98
	.uleb128 0x42
	.long	.LASF144
	.byte	0x1
	.byte	0x67
	.long	0x1ccf
	.byte	0x5
	.byte	0x3
	.long	helloStr1
	.uleb128 0x43
	.long	0x1b98
	.uleb128 0x42
	.long	.LASF145
	.byte	0x1
	.byte	0x68
	.long	0x1ce5
	.byte	0x5
	.byte	0x3
	.long	helloStr2
	.uleb128 0x43
	.long	0x5c0
	.uleb128 0x10
	.long	0x169
	.long	0x1cfa
	.uleb128 0x11
	.long	0x27b
	.byte	0x6
	.byte	0
	.uleb128 0x42
	.long	.LASF146
	.byte	0x1
	.byte	0x69
	.long	0x1d0b
	.byte	0x5
	.byte	0x3
	.long	exitStr
	.uleb128 0x43
	.long	0x1cea
	.uleb128 0x42
	.long	.LASF147
	.byte	0x1
	.byte	0x6a
	.long	0x1d21
	.byte	0x5
	.byte	0x3
	.long	nextStr
	.uleb128 0x43
	.long	0x1cea
	.uleb128 0x42
	.long	.LASF148
	.byte	0x1
	.byte	0x6b
	.long	0x1d37
	.byte	0x5
	.byte	0x3
	.long	snStr
	.uleb128 0x43
	.long	0x1c98
	.uleb128 0x42
	.long	.LASF149
	.byte	0x1
	.byte	0x6c
	.long	0x1d4d
	.byte	0x5
	.byte	0x3
	.long	indoorStr
	.uleb128 0x43
	.long	0x1cea
	.uleb128 0x10
	.long	0x169
	.long	0x1d62
	.uleb128 0x11
	.long	0x27b
	.byte	0x7
	.byte	0
	.uleb128 0x42
	.long	.LASF150
	.byte	0x1
	.byte	0x6d
	.long	0x1d73
	.byte	0x5
	.byte	0x3
	.long	outdoorStr
	.uleb128 0x43
	.long	0x1d52
	.uleb128 0x42
	.long	.LASF151
	.byte	0x1
	.byte	0x6e
	.long	0x1d89
	.byte	0x5
	.byte	0x3
	.long	supplyStr
	.uleb128 0x43
	.long	0x1cea
	.uleb128 0x42
	.long	.LASF152
	.byte	0x1
	.byte	0x6f
	.long	0x1d9f
	.byte	0x5
	.byte	0x3
	.long	returnStr
	.uleb128 0x43
	.long	0x1cea
	.uleb128 0x10
	.long	0x169
	.long	0x1db4
	.uleb128 0x11
	.long	0x27b
	.byte	0xe
	.byte	0
	.uleb128 0x42
	.long	.LASF153
	.byte	0x1
	.byte	0x70
	.long	0x1dc5
	.byte	0x5
	.byte	0x3
	.long	nsupdownStr
	.uleb128 0x43
	.long	0x1da4
	.uleb128 0x10
	.long	0x169
	.long	0x1dda
	.uleb128 0x11
	.long	0x27b
	.byte	0x8
	.byte	0
	.uleb128 0x42
	.long	.LASF154
	.byte	0x1
	.byte	0x71
	.long	0x1deb
	.byte	0x5
	.byte	0x3
	.long	checksumStr
	.uleb128 0x43
	.long	0x1dca
	.uleb128 0x10
	.long	0x169
	.long	0x1e00
	.uleb128 0x11
	.long	0x27b
	.byte	0x3
	.byte	0
	.uleb128 0x42
	.long	.LASF155
	.byte	0x1
	.byte	0x72
	.long	0x1e11
	.byte	0x5
	.byte	0x3
	.long	setStr
	.uleb128 0x43
	.long	0x1df0
	.uleb128 0x42
	.long	.LASF156
	.byte	0x1
	.byte	0x73
	.long	0x1e27
	.byte	0x5
	.byte	0x3
	.long	viewStr
	.uleb128 0x43
	.long	0x1b98
	.uleb128 0x42
	.long	.LASF157
	.byte	0x1
	.byte	0x74
	.long	0x1e3d
	.byte	0x5
	.byte	0x3
	.long	assignStr
	.uleb128 0x43
	.long	0x1d52
	.uleb128 0x42
	.long	.LASF158
	.byte	0x1
	.byte	0x75
	.long	0x1e53
	.byte	0x5
	.byte	0x3
	.long	minStr
	.uleb128 0x43
	.long	0x1df0
	.uleb128 0x42
	.long	.LASF159
	.byte	0x1
	.byte	0x76
	.long	0x1e69
	.byte	0x5
	.byte	0x3
	.long	maxStr
	.uleb128 0x43
	.long	0x1df0
	.uleb128 0x42
	.long	.LASF160
	.byte	0x1
	.byte	0x77
	.long	0x1e7f
	.byte	0x5
	.byte	0x3
	.long	tempStr
	.uleb128 0x43
	.long	0x1b98
	.uleb128 0x42
	.long	.LASF161
	.byte	0x1
	.byte	0x78
	.long	0x1e95
	.byte	0x5
	.byte	0x3
	.long	diffStr
	.uleb128 0x43
	.long	0x1b98
	.uleb128 0x42
	.long	.LASF162
	.byte	0x1
	.byte	0x79
	.long	0x1eab
	.byte	0x5
	.byte	0x3
	.long	toeepromStr
	.uleb128 0x43
	.long	0x5c0
	.uleb128 0x42
	.long	.LASF163
	.byte	0x1
	.byte	0x7a
	.long	0x1ec1
	.byte	0x5
	.byte	0x3
	.long	saveStr
	.uleb128 0x43
	.long	0x1b98
	.uleb128 0x42
	.long	.LASF164
	.byte	0x1
	.byte	0x7b
	.long	0x1ed7
	.byte	0x5
	.byte	0x3
	.long	timeStr
	.uleb128 0x43
	.long	0x1b98
	.uleb128 0x42
	.long	.LASF165
	.byte	0x1
	.byte	0x7c
	.long	0x1eed
	.byte	0x5
	.byte	0x3
	.long	minuteStr
	.uleb128 0x43
	.long	0x1cea
	.uleb128 0x42
	.long	.LASF166
	.byte	0x1
	.byte	0x7d
	.long	0x1f03
	.byte	0x5
	.byte	0x3
	.long	hourStr
	.uleb128 0x43
	.long	0x1b98
	.uleb128 0x42
	.long	.LASF167
	.byte	0x1
	.byte	0x7e
	.long	0x1f19
	.byte	0x5
	.byte	0x3
	.long	secondStr
	.uleb128 0x43
	.long	0x1cea
	.uleb128 0x10
	.long	0x169
	.long	0x1f2e
	.uleb128 0x11
	.long	0x27b
	.byte	0x5
	.byte	0
	.uleb128 0x42
	.long	.LASF168
	.byte	0x1
	.byte	0x7f
	.long	0x1f3f
	.byte	0x5
	.byte	0x3
	.long	alarmStr
	.uleb128 0x43
	.long	0x1f1e
	.uleb128 0x42
	.long	.LASF169
	.byte	0x1
	.byte	0x80
	.long	0x1f55
	.byte	0x5
	.byte	0x3
	.long	sensorStr
	.uleb128 0x43
	.long	0x1cea
	.uleb128 0x42
	.long	.LASF170
	.byte	0x1
	.byte	0x81
	.long	0x1f6b
	.byte	0x5
	.byte	0x3
	.long	absenceStr
	.uleb128 0x43
	.long	0x1d52
	.uleb128 0x42
	.long	.LASF171
	.byte	0x1
	.byte	0x82
	.long	0x1f81
	.byte	0x5
	.byte	0x3
	.long	missingStr
	.uleb128 0x43
	.long	0x1d52
	.uleb128 0x42
	.long	.LASF172
	.byte	0x1
	.byte	0x83
	.long	0x1f97
	.byte	0x5
	.byte	0x3
	.long	temperStr
	.uleb128 0x43
	.long	0x1d52
	.uleb128 0x10
	.long	0x169
	.long	0x1fac
	.uleb128 0x11
	.long	0x27b
	.byte	0xd
	.byte	0
	.uleb128 0x42
	.long	.LASF173
	.byte	0x1
	.byte	0x84
	.long	0x1fbd
	.byte	0x5
	.byte	0x3
	.long	Sensorsfound
	.uleb128 0x43
	.long	0x1f9c
	.uleb128 0x42
	.long	.LASF174
	.byte	0x1
	.byte	0x85
	.long	0x1fd3
	.byte	0x5
	.byte	0x3
	.long	DS18S20
	.uleb128 0x43
	.long	0x1dca
	.uleb128 0x42
	.long	.LASF175
	.byte	0x1
	.byte	0x86
	.long	0x1fe9
	.byte	0x5
	.byte	0x3
	.long	DS18B20
	.uleb128 0x43
	.long	0x1dca
	.uleb128 0x42
	.long	.LASF176
	.byte	0x1
	.byte	0x87
	.long	0x1fff
	.byte	0x5
	.byte	0x3
	.long	DS1822
	.uleb128 0x43
	.long	0x1d52
	.uleb128 0x21
	.string	"PAR"
	.byte	0x1
	.byte	0x88
	.long	0x2015
	.byte	0x5
	.byte	0x3
	.long	PAR
	.uleb128 0x43
	.long	0x1b98
	.uleb128 0x17
	.long	.LASF177
	.byte	0x1
	.byte	0x89
	.long	0x2025
	.uleb128 0x43
	.long	0x1d52
	.uleb128 0x21
	.string	"EXT"
	.byte	0x1
	.byte	0x8a
	.long	0x203b
	.byte	0x5
	.byte	0x3
	.long	EXT
	.uleb128 0x43
	.long	0x1b98
	.uleb128 0x42
	.long	.LASF178
	.byte	0x1
	.byte	0x8b
	.long	0x2051
	.byte	0x5
	.byte	0x3
	.long	telStr
	.uleb128 0x43
	.long	0x1f1e
	.uleb128 0x10
	.long	0x169
	.long	0x2066
	.uleb128 0x11
	.long	0x27b
	.byte	0x15
	.byte	0
	.uleb128 0x42
	.long	.LASF179
	.byte	0x1
	.byte	0x8c
	.long	0x2077
	.byte	0x5
	.byte	0x3
	.long	startRegulatorStr
	.uleb128 0x43
	.long	0x2056
	.uleb128 0x42
	.long	.LASF180
	.byte	0x1
	.byte	0x8d
	.long	0x208d
	.byte	0x5
	.byte	0x3
	.long	startPowerGoneStr
	.uleb128 0x43
	.long	0x1da4
	.uleb128 0x10
	.long	0x169
	.long	0x20a2
	.uleb128 0x11
	.long	0x27b
	.byte	0xb
	.byte	0
	.uleb128 0x42
	.long	.LASF181
	.byte	0x1
	.byte	0x8e
	.long	0x20b3
	.byte	0x5
	.byte	0x3
	.long	notReadyStr
	.uleb128 0x43
	.long	0x2092
	.uleb128 0x42
	.long	.LASF182
	.byte	0x1
	.byte	0x90
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	MainLoopPhase
	.uleb128 0x42
	.long	.LASF183
	.byte	0x1
	.byte	0x90
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	LastPhase
	.uleb128 0x42
	.long	.LASF184
	.byte	0x1
	.byte	0x90
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	MenuPhase
	.uleb128 0x21
	.string	"fl"
	.byte	0x1
	.byte	0x91
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	fl
	.uleb128 0x42
	.long	.LASF185
	.byte	0x1
	.byte	0x92
	.long	0x169
	.byte	0x5
	.byte	0x3
	.long	mausure_temperature_ok
	.uleb128 0x10
	.long	0x185
	.long	0x2117
	.uleb128 0x44
	.byte	0
	.uleb128 0x45
	.long	.LASF186
	.byte	0x7
	.word	0x195
	.long	0x210c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x46
	.long	0x2135
	.uleb128 0x11
	.long	0x27b
	.byte	0x7
	.byte	0
	.uleb128 0x46
	.long	.LASF187
	.byte	0xb
	.byte	0x17
	.long	0x2125
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.long	.LASF188
	.byte	0xb
	.byte	0x22
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.long	.LASF189
	.byte	0xb
	.byte	0x23
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.long	.LASF190
	.byte	0xb
	.byte	0x24
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.long	.LASF191
	.byte	0xb
	.byte	0x25
	.long	0x169
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.long	.LASF192
	.byte	0xb
	.byte	0x26
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"x"
	.byte	0xb
	.byte	0x27
	.long	0x6a
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"y"
	.byte	0xb
	.byte	0x27
	.long	0x6a
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.long	.LASF193
	.byte	0x1
	.byte	0x28
	.long	0xcb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__fuse
	.uleb128 0x48
	.long	.LASF194
	.byte	0x1
	.byte	0x34
	.long	0x169
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ReadyWATCHDOG
	.uleb128 0x48
	.long	.LASF195
	.byte	0x1
	.byte	0x35
	.long	0x169
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	WATCHDOG_STATE
	.uleb128 0x48
	.long	.LASF196
	.byte	0x1
	.byte	0x36
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempInDoorMin
	.uleb128 0x48
	.long	.LASF197
	.byte	0x1
	.byte	0x37
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempInDoorMax
	.uleb128 0x48
	.long	.LASF198
	.byte	0x1
	.byte	0x38
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempOutDoorMin
	.uleb128 0x48
	.long	.LASF199
	.byte	0x1
	.byte	0x39
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempOutDoorMax
	.uleb128 0x48
	.long	.LASF200
	.byte	0x1
	.byte	0x3a
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempSupplyMin
	.uleb128 0x48
	.long	.LASF201
	.byte	0x1
	.byte	0x3b
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempSupplyMax
	.uleb128 0x48
	.long	.LASF202
	.byte	0x1
	.byte	0x3c
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempDiffSupplyReturnMin
	.uleb128 0x48
	.long	.LASF203
	.byte	0x1
	.byte	0x3d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rTempDiffSupplyReturnMax
	.uleb128 0x48
	.long	.LASF204
	.byte	0x1
	.byte	0x3e
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	nSensors
	.uleb128 0x10
	.long	0x58
	.long	0x2281
	.uleb128 0x11
	.long	0x27b
	.byte	0x3
	.byte	0
	.uleb128 0x48
	.long	.LASF205
	.byte	0x1
	.byte	0x40
	.long	0x2271
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	temper
	.uleb128 0x10
	.long	0x169
	.long	0x22a3
	.uleb128 0x11
	.long	0x27b
	.byte	0x1e
	.byte	0
	.uleb128 0x48
	.long	.LASF206
	.byte	0x1
	.byte	0x4c
	.long	0x2293
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	wbuffer
	.uleb128 0x48
	.long	.LASF207
	.byte	0x1
	.byte	0x4f
	.long	0x99c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rSensorIDs
	.uleb128 0x48
	.long	.LASF208
	.byte	0x1
	.byte	0x53
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempInDoorMin
	.uleb128 0x48
	.long	.LASF209
	.byte	0x1
	.byte	0x54
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempInDoorMax
	.uleb128 0x48
	.long	.LASF210
	.byte	0x1
	.byte	0x55
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempOutDoorMin
	.uleb128 0x48
	.long	.LASF211
	.byte	0x1
	.byte	0x56
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempOutDoorMax
	.uleb128 0x48
	.long	.LASF212
	.byte	0x1
	.byte	0x57
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempSupplyMin
	.uleb128 0x48
	.long	.LASF213
	.byte	0x1
	.byte	0x58
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempSupplyMax
	.uleb128 0x48
	.long	.LASF214
	.byte	0x1
	.byte	0x59
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempDiffSupplyReturnMin
	.uleb128 0x48
	.long	.LASF215
	.byte	0x1
	.byte	0x5a
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TempDiffSupplyReturnMax
	.uleb128 0x48
	.long	.LASF216
	.byte	0x1
	.byte	0x5b
	.long	0x1c4f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	eSensorIDs
	.uleb128 0x10
	.long	0x3b
	.long	0x2379
	.uleb128 0x11
	.long	0x27b
	.byte	0xe
	.byte	0
	.uleb128 0x48
	.long	.LASF217
	.byte	0x1
	.byte	0x62
	.long	0x2369
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	etelNumber
	.uleb128 0x48
	.long	.LASF218
	.byte	0x1
	.byte	0x93
	.long	0x1da4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	telNumber
	.uleb128 0x48
	.long	.LASF219
	.byte	0x1
	.byte	0x94
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	temp_for_hour
	.uleb128 0x48
	.long	.LASF220
	.byte	0x1
	.byte	0x95
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PrefHeatting
	.uleb128 0x49
	.byte	0x1
	.long	.LASF221
	.byte	0xb
	.byte	0x12
	.long	0x58
	.byte	0x1
	.long	0x23d4
	.uleb128 0x4a
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.long	.LASF222
	.byte	0xb
	.byte	0x15
	.long	0x3b
	.byte	0x1
	.long	0x23e7
	.uleb128 0x4a
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.long	.LASF223
	.byte	0xb
	.byte	0x13
	.long	0x58
	.byte	0x1
	.long	0x23fa
	.uleb128 0x4a
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF231
	.byte	0x8
	.byte	0x81
	.byte	0x1
	.long	0x3b
	.byte	0x1
	.long	0x241c
	.uleb128 0xd
	.long	0x4d
	.uleb128 0xd
	.long	0x163
	.uleb128 0xd
	.long	0x3b
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF224
	.byte	0x8
	.byte	0x7f
	.byte	0x1
	.byte	0x1
	.long	0x2430
	.uleb128 0xd
	.long	0x2430
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x2436
	.uleb128 0x43
	.long	0x169
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF225
	.byte	0x8
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.long	0x244f
	.uleb128 0xd
	.long	0x163
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF227
	.byte	0xc
	.byte	0x1c
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF228
	.byte	0xc
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF229
	.byte	0xb
	.byte	0x1d
	.byte	0x1
	.byte	0x1
	.long	0x2477
	.uleb128 0xd
	.long	0x3b
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF230
	.byte	0xb
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF232
	.byte	0xd
	.byte	0x74
	.byte	0x1
	.long	0x58
	.byte	0x1
	.long	0x24a3
	.uleb128 0xd
	.long	0x1a9
	.uleb128 0xd
	.long	0x1a9
	.uleb128 0xd
	.long	0xd6
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.long	.LASF235
	.byte	0x8
	.byte	0x65
	.byte	0x1
	.long	0x24b2
	.uleb128 0x4a
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF233
	.byte	0x8
	.byte	0x7b
	.byte	0x1
	.byte	0x1
	.long	0x24cb
	.uleb128 0xd
	.long	0x3b
	.uleb128 0xd
	.long	0x3b
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.long	.LASF234
	.byte	0x7
	.word	0x28f
	.byte	0x1
	.long	0x58
	.byte	0x1
	.long	0x24e5
	.uleb128 0xd
	.long	0x2430
	.uleb128 0x4a
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.long	.LASF236
	.byte	0x8
	.byte	0x68
	.byte	0x1
	.long	0x24f4
	.uleb128 0x4a
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF237
	.byte	0xe
	.byte	0x6e
	.byte	0x1
	.long	0x3b
	.byte	0x1
	.long	0x2511
	.uleb128 0xd
	.long	0x3b
	.uleb128 0xd
	.long	0x99c
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF238
	.byte	0xe
	.byte	0x76
	.byte	0x1
	.long	0x3b
	.byte	0x1
	.long	0x252e
	.uleb128 0xd
	.long	0x99c
	.uleb128 0xd
	.long	0x252e
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x4d
	.uleb128 0x4f
	.byte	0x1
	.long	.LASF239
	.byte	0xf
	.word	0x112
	.byte	0x1
	.long	0x58
	.byte	0x1
	.long	0x254d
	.uleb128 0xd
	.long	0x2430
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.long	.LASF240
	.byte	0x7
	.word	0x289
	.byte	0x1
	.long	0x58
	.byte	0x1
	.long	0x2567
	.uleb128 0xd
	.long	0x2430
	.uleb128 0x4a
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.long	.LASF241
	.byte	0x10
	.word	0x2dc
	.byte	0x1
	.byte	0x1
	.long	0x2586
	.uleb128 0xd
	.long	0x1a9
	.uleb128 0xd
	.long	0x1a7
	.uleb128 0xd
	.long	0xd6
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.long	.LASF242
	.byte	0xf
	.word	0x12a
	.byte	0x1
	.long	0x1a7
	.byte	0x1
	.long	0x259f
	.uleb128 0xd
	.long	0xd6
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF243
	.byte	0xd
	.byte	0x89
	.byte	0x1
	.long	0x163
	.byte	0x1
	.long	0x25c1
	.uleb128 0xd
	.long	0x163
	.uleb128 0xd
	.long	0x2430
	.uleb128 0xd
	.long	0xd6
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.long	.LASF244
	.byte	0x11
	.word	0x486
	.byte	0x1
	.long	0x163
	.byte	0x1
	.long	0x25e4
	.uleb128 0xd
	.long	0x163
	.uleb128 0xd
	.long	0x2430
	.uleb128 0xd
	.long	0xd6
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF245
	.byte	0xa
	.byte	0x48
	.byte	0x1
	.long	0x58
	.byte	0x1
	.long	0x2606
	.uleb128 0xd
	.long	0x163
	.uleb128 0xd
	.long	0x163
	.uleb128 0xd
	.long	0x58
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.long	.LASF246
	.byte	0xf
	.word	0x131
	.byte	0x1
	.byte	0x1
	.long	0x261b
	.uleb128 0xd
	.long	0x1a7
	.byte	0
	.uleb128 0x4e
	.byte	0x1
	.long	.LASF247
	.byte	0x12
	.byte	0x21
	.byte	0x1
	.long	0x262a
	.uleb128 0x4a
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF248
	.byte	0xf
	.byte	0x72
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.byte	0x1
	.long	.LASF249
	.byte	0x10
	.word	0x2a6
	.byte	0x1
	.byte	0x1
	.long	0x2653
	.uleb128 0xd
	.long	0x1a7
	.uleb128 0xd
	.long	0x1a9
	.uleb128 0xd
	.long	0xd6
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.long	.LASF250
	.byte	0x10
	.word	0x291
	.byte	0x1
	.long	0x3b
	.byte	0x1
	.long	0x266c
	.uleb128 0xd
	.long	0x266c
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x2672
	.uleb128 0x43
	.long	0x3b
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF251
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF252
	.byte	0x13
	.byte	0x8e
	.byte	0x1
	.byte	0x1
	.long	0x2695
	.uleb128 0xd
	.long	0x6a
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF253
	.byte	0xa
	.byte	0x45
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF254
	.byte	0x14
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.long	0x26c2
	.uleb128 0xd
	.long	0x26c2
	.uleb128 0xd
	.long	0x26c2
	.uleb128 0xd
	.long	0x26c2
	.uleb128 0xd
	.long	0x3b
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x26c8
	.uleb128 0x51
	.long	0x3b
	.uleb128 0x4e
	.byte	0x1
	.long	.LASF255
	.byte	0xb
	.byte	0x16
	.byte	0x1
	.long	0x26dc
	.uleb128 0x4a
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF256
	.byte	0x9
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF257
	.byte	0x8
	.byte	0x87
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF258
	.byte	0x8
	.byte	0x85
	.byte	0x1
	.byte	0x1
	.long	0x2704
	.uleb128 0xd
	.long	0x58
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF259
	.byte	0x8
	.byte	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF260
	.byte	0xe
	.byte	0x6d
	.byte	0x1
	.long	0x3b
	.byte	0x1
	.long	0x2726
	.uleb128 0xd
	.long	0x99c
	.byte	0
	.uleb128 0x4d
	.byte	0x1
	.long	.LASF261
	.byte	0xc
	.byte	0x20
	.byte	0x1
	.byte	0x1
	.uleb128 0x52
	.byte	0x1
	.long	.LASF273
	.byte	0xb
	.byte	0x1f
	.byte	0x1
	.long	0x3b
	.byte	0x1
	.uleb128 0x53
	.byte	0x1
	.long	.LASF262
	.byte	0x15
	.byte	0
	.long	.LASF274
	.byte	0x1
	.long	0x58
	.byte	0x1
	.long	0x275a
	.uleb128 0xd
	.long	0x58
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.long	.LASF263
	.byte	0x10
	.word	0x2c1
	.byte	0x1
	.byte	0x1
	.long	0x2779
	.uleb128 0xd
	.long	0x1a9
	.uleb128 0xd
	.long	0x1a7
	.uleb128 0xd
	.long	0xd6
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.long	.LASF264
	.byte	0x8
	.byte	0x89
	.byte	0x1
	.byte	0x1
	.long	0x278d
	.uleb128 0xd
	.long	0x3b
	.byte	0
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF265
	.byte	0x16
	.byte	0xa
	.byte	0x1
	.long	0x3b
	.byte	0x1
	.long	0x27aa
	.uleb128 0xd
	.long	0x99c
	.uleb128 0xd
	.long	0x5f
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.long	.LASF266
	.byte	0x10
	.word	0x2c7
	.byte	0x1
	.byte	0x1
	.long	0x27c4
	.uleb128 0xd
	.long	0x99c
	.uleb128 0xd
	.long	0x3b
	.byte	0
	.uleb128 0x54
	.byte	0x1
	.long	.LASF267
	.byte	0x8
	.byte	0x71
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x3b
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
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x4f
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
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
	.long	.LFB12
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL4
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4
	.long	.LVL13
	.word	0x1
	.byte	0x61
	.long	.LVL13
	.long	.LVL14
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14
	.long	.LVL16
	.word	0x1
	.byte	0x61
	.long	.LVL16
	.long	.LFE12
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.word	0x1
	.byte	0x68
	.long	.LVL12
	.long	.LVL14
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL2
	.long	.LVL14
	.word	0x1
	.byte	0x60
	.long	.LVL14
	.long	.LVL15
	.word	0x3
	.byte	0x80
	.sleb128 -1
	.byte	0x9f
	.long	.LVL15
	.long	.LVL17
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LFB13
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI9
	.long	.LCFI10
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LCFI10
	.long	.LFE13
	.word	0x2
	.byte	0x8c
	.sleb128 14
	.long	0
	.long	0
.LLST7:
	.long	.LVL18
	.long	.LVL19-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19-1
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LFB19
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI15
	.long	.LFE19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST9:
	.long	.LVL32
	.long	.LVL33
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LVL40
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST10:
	.long	.LVL32
	.long	.LVL33
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LVL34
	.word	0x1
	.byte	0x60
	.long	.LVL38
	.long	.LVL39
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST11:
	.long	.LVL33
	.long	.LVL34
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LVL39
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL41
	.long	.LVL42
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LFB22
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI20
	.long	.LFE22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0
	.long	0
.LLST14:
	.long	.LFB23
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI58
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST15:
	.long	.LFB24
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI60
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI61
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI62
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI63
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI64
	.long	.LCFI65
	.word	0x2
	.byte	0x8c
	.sleb128 7
	.long	.LCFI65
	.long	.LFE24
	.word	0x2
	.byte	0x8c
	.sleb128 19
	.long	0
	.long	0
.LLST16:
	.long	.LVL47
	.long	.LVL49
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LVL59
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL48
	.long	.LVL49
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL49
	.long	.LVL56
	.word	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.long	.LVL56
	.long	.LVL57
	.word	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.long	.LVL57
	.long	.LVL58
	.word	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL51
	.long	.LVL56
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x443b8000
	.long	0
	.long	0
.LLST19:
	.long	.LVL51
	.long	.LVL56
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4ab71b00
	.long	0
	.long	0
.LLST20:
	.long	.LVL51
	.long	.LVL56
	.word	0x6
	.byte	0xc
	.long	0x5b8d80
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LFB25
	.long	.LCFI66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI66
	.long	.LCFI67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI67
	.long	.LFE25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST22:
	.long	.LVL61
	.long	.LVL62
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST23:
	.long	.LVL63
	.long	.LVL64
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL64
	.long	.LVL67
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL67
	.long	.LVL68
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL68
	.long	.LVL69
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL69
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL63
	.long	.LVL64
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL64
	.long	.LVL65
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x1c
	.byte	0x9f
	.long	.LVL65
	.long	.LVL66
	.word	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x20
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL66
	.long	.LVL67
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x1c
	.byte	0x9f
	.long	.LVL67
	.long	.LVL69
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL69
	.long	.LVL70
	.word	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x20
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL70
	.long	.LFE28
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
.LLST25:
	.long	.LFB20
	.long	.LCFI68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI68
	.long	.LCFI69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI69
	.long	.LCFI70
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI70
	.long	.LCFI71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI71
	.long	.LCFI72
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI72
	.long	.LCFI73
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI73
	.long	.LCFI74
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI74
	.long	.LCFI75
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI75
	.long	.LCFI76
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI76
	.long	.LCFI77
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI77
	.long	.LCFI78
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI78
	.long	.LCFI79
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI79
	.long	.LFE20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	0
	.long	0
.LLST26:
	.long	.LVL71
	.long	.LVL72
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL72
	.long	.LVL81
	.word	0x1
	.byte	0x5a
	.long	0
	.long	0
.LLST27:
	.long	.LVL71
	.long	.LVL72
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL72
	.long	.LVL77
	.word	0x9
	.byte	0x7e
	.sleb128 0
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x9f
	.long	.LVL77
	.long	.LVL78
	.word	0xb
	.byte	0x7e
	.sleb128 0
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.word	0x9
	.byte	0x7e
	.sleb128 0
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL71
	.long	.LVL72
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL72
	.long	.LVL80
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST29:
	.long	.LVL75
	.long	.LVL76
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40400000
	.long	0
	.long	0
.LLST30:
	.long	.LVL75
	.long	.LVL76
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46bb8000
	.long	0
	.long	0
.LLST31:
	.long	.LVL75
	.long	.LVL76
	.word	0x4
	.byte	0xa
	.word	0x5dc0
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LFB26
	.long	.LCFI80
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI80
	.long	.LCFI81
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI81
	.long	.LCFI82
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI82
	.long	.LCFI83
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI83
	.long	.LCFI84
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI84
	.long	.LCFI85
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI85
	.long	.LCFI86
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI86
	.long	.LCFI87
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI87
	.long	.LCFI88
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI88
	.long	.LCFI89
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI89
	.long	.LCFI90
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI90
	.long	.LCFI91
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI91
	.long	.LCFI92
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI92
	.long	.LCFI93
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI93
	.long	.LCFI94
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI94
	.long	.LCFI95
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI95
	.long	.LCFI96
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI96
	.long	.LCFI97
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI97
	.long	.LCFI98
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI98
	.long	.LCFI99
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 22
	.long	.LCFI99
	.long	.LFE26
	.word	0x2
	.byte	0x8c
	.sleb128 22
	.long	0
	.long	0
.LLST33:
	.long	.LVL82
	.long	.LVL83
	.word	0x1
	.byte	0x68
	.long	.LVL83
	.long	.LVL84
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL84
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	.LVL85
	.long	.LVL99
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL99
	.long	.LVL100-1
	.word	0x1
	.byte	0x68
	.long	.LVL100-1
	.long	.LVL108
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL108
	.long	.LVL109
	.word	0x1
	.byte	0x68
	.long	.LVL109
	.long	.LVL110
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL110
	.long	.LVL111
	.word	0x1
	.byte	0x68
	.long	.LVL111
	.long	.LVL113
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL113
	.long	.LVL114
	.word	0x1
	.byte	0x68
	.long	.LVL114
	.long	.LVL116
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL116
	.long	.LVL117
	.word	0x1
	.byte	0x68
	.long	.LVL117
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL91
	.long	.LVL93
	.word	0x1
	.byte	0x69
	.long	.LVL93
	.long	.LVL96
	.word	0x2
	.byte	0x8a
	.sleb128 -1
	.long	0
	.long	0
.LLST35:
	.long	.LVL90
	.long	.LVL92
	.word	0x16
	.byte	0x84
	.sleb128 0
	.byte	0x8c
	.sleb128 1
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
	.long	.LVL92
	.long	.LVL94
	.word	0x17
	.byte	0x3
	.long	gSensorIDs
	.byte	0x20
	.byte	0x8c
	.sleb128 1
	.byte	0x94
	.byte	0x2
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x33
	.byte	0x24
	.byte	0x1c
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL94
	.long	.LVL96
	.word	0x16
	.byte	0x84
	.sleb128 0
	.byte	0x8c
	.sleb128 1
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
.LLST36:
	.long	.LVL93
	.long	.LVL96
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST37:
	.long	.LVL89
	.long	.LVL96
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL98
	.long	.LVL99
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL115
	.long	.LVL116
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL87
	.long	.LVL96
	.word	0xb
	.byte	0x8c
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x9f
	.long	.LVL96
	.long	.LVL97
	.word	0xd
	.byte	0x8c
	.sleb128 1
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
.LLST39:
	.long	.LVL87
	.long	.LVL95
	.word	0x1
	.byte	0x53
	.long	.LVL96
	.long	.LVL99
	.word	0x1
	.byte	0x53
	.long	.LVL115
	.long	.LVL116
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST40:
	.long	.LVL118
	.long	.LVL119
	.word	0x1
	.byte	0x68
	.long	.LVL119
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL118
	.long	.LVL120
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL120
	.long	.LFE30
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST42:
	.long	.LFB29
	.long	.LCFI100
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI100
	.long	.LCFI101
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI101
	.long	.LCFI102
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI102
	.long	.LCFI103
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI103
	.long	.LCFI104
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI104
	.long	.LCFI105
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI105
	.long	.LCFI106
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI106
	.long	.LCFI107
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI107
	.long	.LCFI108
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI108
	.long	.LCFI109
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI109
	.long	.LCFI110
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI110
	.long	.LCFI111
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI111
	.long	.LCFI112
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI112
	.long	.LCFI113
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI113
	.long	.LCFI114
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI114
	.long	.LCFI115
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI115
	.long	.LCFI116
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI116
	.long	.LCFI117
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI117
	.long	.LCFI118
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI118
	.long	.LCFI119
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 21
	.long	.LCFI119
	.long	.LCFI120
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 22
	.long	.LCFI120
	.long	.LCFI121
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 23
	.long	.LCFI121
	.long	.LCFI122
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 24
	.long	.LCFI122
	.long	.LCFI123
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 25
	.long	.LCFI123
	.long	.LCFI124
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 26
	.long	.LCFI124
	.long	.LCFI125
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 27
	.long	.LCFI125
	.long	.LFE29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST43:
	.long	.LFB31
	.long	.LCFI126
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI126
	.long	.LCFI127
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI127
	.long	.LCFI128
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI128
	.long	.LCFI129
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI129
	.long	.LFE31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST44:
	.long	.LVL124
	.long	.LVL125
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL125
	.long	.LVL130
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST45:
	.long	.LFB32
	.long	.LCFI130
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI130
	.long	.LCFI131
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI131
	.long	.LCFI132
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI132
	.long	.LCFI133
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI133
	.long	.LCFI134
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI134
	.long	.LCFI135
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI135
	.long	.LCFI136
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI136
	.long	.LCFI137
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI137
	.long	.LCFI138
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI138
	.long	.LCFI139
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI139
	.long	.LCFI140
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI140
	.long	.LCFI141
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI141
	.long	.LCFI142
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI142
	.long	.LCFI143
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI143
	.long	.LCFI144
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI144
	.long	.LFE32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST46:
	.long	.LFB34
	.long	.LCFI145
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI145
	.long	.LCFI146
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI146
	.long	.LCFI147
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI147
	.long	.LCFI148
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI148
	.long	.LCFI149
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI149
	.long	.LCFI150
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI150
	.long	.LCFI151
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI151
	.long	.LCFI152
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI152
	.long	.LCFI153
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI153
	.long	.LCFI154
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI154
	.long	.LCFI155
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI155
	.long	.LFE34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	0
	.long	0
.LLST47:
	.long	.LVL131
	.long	.LVL132
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL132
	.long	.LVL136
	.word	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x9f
	.long	.LVL136
	.long	.LVL137
	.word	0xb
	.byte	0x8c
	.sleb128 0
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL137
	.long	.LVL138
	.word	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0x3
	.long	sn_presence
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL135
	.long	.LVL136
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40400000
	.long	0
	.long	0
.LLST49:
	.long	.LVL135
	.long	.LVL136
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46bb8000
	.long	0
	.long	0
.LLST50:
	.long	.LVL135
	.long	.LVL136
	.word	0x4
	.byte	0xa
	.word	0x5dc0
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LFB14
	.long	.LCFI156
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI156
	.long	.LCFI157
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI157
	.long	.LCFI158
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI158
	.long	.LCFI159
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LCFI159
	.long	.LFE14
	.word	0x2
	.byte	0x8c
	.sleb128 23
	.long	0
	.long	0
.LLST52:
	.long	.LVL221
	.long	.LVL263
	.word	0x1
	.byte	0x5d
	.long	.LVL263
	.long	.LVL264
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL264
	.long	.LVL268
	.word	0x1
	.byte	0x5d
	.long	.LVL268
	.long	.LVL269
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL269
	.long	.LVL273
	.word	0x1
	.byte	0x5d
	.long	.LVL273
	.long	.LVL274
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL274
	.long	.LVL278
	.word	0x1
	.byte	0x5d
	.long	.LVL278
	.long	.LVL279
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL279
	.long	.LVL318
	.word	0x1
	.byte	0x5d
	.long	.LVL324
	.long	.LVL344
	.word	0x1
	.byte	0x5d
	.long	.LVL344
	.long	.LVL345
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL345
	.long	.LVL350
	.word	0x1
	.byte	0x5d
	.long	.LVL350
	.long	.LVL352
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL352
	.long	.LVL357
	.word	0x1
	.byte	0x5d
	.long	.LVL357
	.long	.LVL358
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL358
	.long	.LVL363
	.word	0x1
	.byte	0x5d
	.long	.LVL363
	.long	.LVL364
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL364
	.long	.LVL369
	.word	0x1
	.byte	0x5d
	.long	.LVL369
	.long	.LVL370
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL370
	.long	.LVL375
	.word	0x1
	.byte	0x5d
	.long	.LVL375
	.long	.LVL377
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL377
	.long	.LVL382
	.word	0x1
	.byte	0x5d
	.long	.LVL382
	.long	.LVL383
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL383
	.long	.LVL388
	.word	0x1
	.byte	0x5d
	.long	.LVL388
	.long	.LVL389
	.word	0x3
	.byte	0x8
	.byte	0x7a
	.byte	0x9f
	.long	.LVL389
	.long	.LVL461
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST53:
	.long	.LVL188
	.long	.LVL189
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL189
	.long	.LVL200
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST54:
	.long	.LVL152
	.long	.LVL166
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL167
	.long	.LVL169
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL169
	.long	.LVL174
	.word	0x1
	.byte	0x61
	.long	.LVL174
	.long	.LVL175
	.word	0x1
	.byte	0x5f
	.long	.LVL175
	.long	.LVL177
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL177
	.long	.LVL215
	.word	0x1
	.byte	0x5f
	.long	.LVL215
	.long	.LVL216
	.word	0x9
	.byte	0x7e
	.sleb128 0
	.byte	0x3
	.long	noready_sens
	.byte	0x1c
	.byte	0x9f
	.long	.LVL216
	.long	.LVL289
	.word	0x1
	.byte	0x5f
	.long	.LVL289
	.long	.LVL290
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL290
	.long	.LVL291
	.word	0x1
	.byte	0x68
	.long	.LVL291
	.long	.LVL292
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL292
	.long	.LVL293
	.word	0x1
	.byte	0x68
	.long	.LVL298
	.long	.LVL306
	.word	0x1
	.byte	0x5f
	.long	.LVL307
	.long	.LVL310
	.word	0x1
	.byte	0x5f
	.long	.LVL310
	.long	.LVL311
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL314
	.long	.LVL344
	.word	0x1
	.byte	0x5f
	.long	.LVL344
	.long	.LVL345
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL345
	.long	.LVL351
	.word	0x1
	.byte	0x5f
	.long	.LVL351
	.long	.LVL352
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL352
	.long	.LVL357
	.word	0x1
	.byte	0x5f
	.long	.LVL357
	.long	.LVL358
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL358
	.long	.LVL363
	.word	0x1
	.byte	0x5f
	.long	.LVL363
	.long	.LVL364
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL364
	.long	.LVL369
	.word	0x1
	.byte	0x5f
	.long	.LVL369
	.long	.LVL370
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL370
	.long	.LVL376
	.word	0x1
	.byte	0x5f
	.long	.LVL376
	.long	.LVL377
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL377
	.long	.LVL382
	.word	0x1
	.byte	0x5f
	.long	.LVL382
	.long	.LVL383
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL383
	.long	.LVL388
	.word	0x1
	.byte	0x5f
	.long	.LVL388
	.long	.LVL389
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL389
	.long	.LVL407
	.word	0x1
	.byte	0x5f
	.long	.LVL407
	.long	.LVL409
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL409
	.long	.LVL410
	.word	0x1
	.byte	0x5f
	.long	.LVL412
	.long	.LVL420
	.word	0x1
	.byte	0x5f
	.long	.LVL421
	.long	.LVL430
	.word	0x1
	.byte	0x5f
	.long	.LVL430
	.long	.LVL432
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL432
	.long	.LVL433
	.word	0x1
	.byte	0x5f
	.long	.LVL433
	.long	.LVL435
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL435
	.long	.LVL436
	.word	0x1
	.byte	0x5f
	.long	.LVL436
	.long	.LVL438
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL438
	.long	.LVL454
	.word	0x1
	.byte	0x5f
	.long	.LVL456
	.long	.LVL458
	.word	0x1
	.byte	0x5f
	.long	.LVL460
	.long	.LVL461
	.word	0x1
	.byte	0x5f
	.long	.LVL463
	.long	.LVL464
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL465
	.long	.LVL466-1
	.word	0x1
	.byte	0x68
	.long	.LVL466
	.long	.LVL474
	.word	0x9
	.byte	0x7e
	.sleb128 0
	.byte	0x3
	.long	noready_sens
	.byte	0x1c
	.byte	0x9f
	.long	.LVL474
	.long	.LFE14
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST55:
	.long	.LVL153
	.long	.LVL166
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL167
	.long	.LVL215
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL215
	.long	.LVL430
	.word	0x2
	.byte	0x91
	.sleb128 -4
	.long	.LVL430
	.long	.LVL432
	.word	0x2
	.byte	0x47
	.byte	0x9f
	.long	.LVL432
	.long	.LVL433
	.word	0x2
	.byte	0x91
	.sleb128 -4
	.long	.LVL433
	.long	.LVL435
	.word	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.long	.LVL435
	.long	.LVL436
	.word	0x2
	.byte	0x91
	.sleb128 -4
	.long	.LVL436
	.long	.LVL438
	.word	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.long	.LVL438
	.long	.LFE14
	.word	0x2
	.byte	0x91
	.sleb128 -4
	.long	0
	.long	0
.LLST56:
	.long	.LVL152
	.long	.LVL166
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL167
	.long	.LVL215
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL215
	.long	.LVL263
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL263
	.long	.LVL264
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL264
	.long	.LVL268
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL268
	.long	.LVL269
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL269
	.long	.LVL273
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL273
	.long	.LVL274
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL274
	.long	.LVL278
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL278
	.long	.LVL279
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL279
	.long	.LVL288
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL288
	.long	.LVL294-1
	.word	0x1
	.byte	0x6b
	.long	.LVL294-1
	.long	.LVL305
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	.LVL305
	.long	.LVL306
	.word	0x1
	.byte	0x6b
	.long	.LVL306
	.long	.LFE14
	.word	0x2
	.byte	0x91
	.sleb128 -6
	.long	0
	.long	0
.LLST57:
	.long	.LVL153
	.long	.LVL166
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL167
	.long	.LVL215
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL215
	.long	.LVL227
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL227
	.long	.LVL228
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	.LVL228
	.long	.LVL242
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL242
	.long	.LVL243
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL243
	.long	.LVL244
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL244
	.long	.LVL247
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL247
	.long	.LVL248
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL248
	.long	.LVL249-1
	.word	0x1
	.byte	0x67
	.long	.LVL249-1
	.long	.LVL252
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL252
	.long	.LVL253
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL253
	.long	.LVL254-1
	.word	0x1
	.byte	0x67
	.long	.LVL254-1
	.long	.LVL255
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL255
	.long	.LVL256
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL256
	.long	.LVL257
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL257
	.long	.LVL258
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL258
	.long	.LVL259
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL259
	.long	.LVL263
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL263
	.long	.LVL264
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL264
	.long	.LVL265-1
	.word	0x1
	.byte	0x6a
	.long	.LVL265-1
	.long	.LVL268
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL268
	.long	.LVL269
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL269
	.long	.LVL270-1
	.word	0x1
	.byte	0x6a
	.long	.LVL270-1
	.long	.LVL273
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL273
	.long	.LVL274
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL274
	.long	.LVL275-1
	.word	0x1
	.byte	0x6a
	.long	.LVL275-1
	.long	.LVL278
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL278
	.long	.LVL279
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL279
	.long	.LVL280-1
	.word	0x1
	.byte	0x6a
	.long	.LVL280-1
	.long	.LVL296
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL296
	.long	.LVL298
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL298
	.long	.LVL304
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL304
	.long	.LVL305
	.word	0x1
	.byte	0x6a
	.long	.LVL305
	.long	.LVL307
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL307
	.long	.LVL308
	.word	0x1
	.byte	0x6a
	.long	.LVL308
	.long	.LVL337
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL337
	.long	.LVL338
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL338
	.long	.LVL339
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL339
	.long	.LVL344
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL344
	.long	.LVL345
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL345
	.long	.LVL346-1
	.word	0x1
	.byte	0x64
	.long	.LVL346-1
	.long	.LVL350
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL350
	.long	.LVL352
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL352
	.long	.LVL353-1
	.word	0x1
	.byte	0x64
	.long	.LVL353-1
	.long	.LVL357
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL357
	.long	.LVL358
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL358
	.long	.LVL359-1
	.word	0x1
	.byte	0x64
	.long	.LVL359-1
	.long	.LVL363
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL363
	.long	.LVL364
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL364
	.long	.LVL365-1
	.word	0x1
	.byte	0x64
	.long	.LVL365-1
	.long	.LVL369
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL369
	.long	.LVL370
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL370
	.long	.LVL371-1
	.word	0x1
	.byte	0x64
	.long	.LVL371-1
	.long	.LVL375
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL375
	.long	.LVL377
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL377
	.long	.LVL378-1
	.word	0x1
	.byte	0x64
	.long	.LVL378-1
	.long	.LVL382
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL382
	.long	.LVL383
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL383
	.long	.LVL384-1
	.word	0x1
	.byte	0x64
	.long	.LVL384-1
	.long	.LVL388
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL388
	.long	.LVL389
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL389
	.long	.LVL390-1
	.word	0x1
	.byte	0x64
	.long	.LVL390-1
	.long	.LVL392
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL392
	.long	.LVL393
	.word	0x2
	.byte	0x3b
	.byte	0x9f
	.long	.LVL393
	.long	.LVL394-1
	.word	0x1
	.byte	0x64
	.long	.LVL394-1
	.long	.LVL403
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL403
	.long	.LVL404
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL404
	.long	.LVL405
	.word	0x1
	.byte	0x64
	.long	.LVL405
	.long	.LVL406
	.word	0x1
	.byte	0x68
	.long	.LVL406
	.long	.LVL408-1
	.word	0x1
	.byte	0x64
	.long	.LVL408-1
	.long	.LVL409
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL409
	.long	.LVL410-1
	.word	0x1
	.byte	0x64
	.long	.LVL410-1
	.long	.LVL412
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL412
	.long	.LVL413-1
	.word	0x1
	.byte	0x64
	.long	.LVL413-1
	.long	.LVL419
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL419
	.long	.LVL420
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL420
	.long	.LVL427
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL427
	.long	.LVL428
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL428
	.long	.LVL429
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL429
	.long	.LVL431
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL431
	.long	.LVL432
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL432
	.long	.LVL433-1
	.word	0x1
	.byte	0x63
	.long	.LVL433-1
	.long	.LVL434
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL434
	.long	.LVL435
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL435
	.long	.LVL436-1
	.word	0x1
	.byte	0x63
	.long	.LVL436-1
	.long	.LVL437
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL437
	.long	.LVL438
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL438
	.long	.LVL439-1
	.word	0x1
	.byte	0x63
	.long	.LVL439-1
	.long	.LVL441
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL441
	.long	.LVL442-1
	.word	0x1
	.byte	0x63
	.long	.LVL442-1
	.long	.LVL444
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL444
	.long	.LVL445
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL445
	.long	.LVL451
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL451
	.long	.LVL452
	.word	0x1
	.byte	0x63
	.long	.LVL452
	.long	.LVL455
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL456
	.long	.LVL457
	.word	0x1
	.byte	0x6a
	.long	.LVL457
	.long	.LVL458
	.word	0x1
	.byte	0x68
	.long	.LVL458
	.long	.LVL459
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL460
	.long	.LFE14
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	0
	.long	0
.LLST58:
	.long	.LVL152
	.long	.LVL166
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL167
	.long	.LVL215
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL215
	.long	.LVL247
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL247
	.long	.LVL248
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL248
	.long	.LVL263
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL263
	.long	.LVL264
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL264
	.long	.LVL268
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL268
	.long	.LVL269
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL269
	.long	.LVL273
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL273
	.long	.LVL274
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL274
	.long	.LVL278
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL278
	.long	.LVL279
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL279
	.long	.LVL281
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL281
	.long	.LVL282
	.word	0x1
	.byte	0x67
	.long	.LVL282
	.long	.LVL297
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL298
	.long	.LVL303
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL304
	.long	.LVL344
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL344
	.long	.LVL345
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL345
	.long	.LVL351
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL351
	.long	.LVL352
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL352
	.long	.LVL357
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL357
	.long	.LVL358
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL358
	.long	.LVL363
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL363
	.long	.LVL364
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL364
	.long	.LVL369
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL369
	.long	.LVL370
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL370
	.long	.LVL376
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL376
	.long	.LVL377
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL377
	.long	.LVL382
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL382
	.long	.LVL383
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL383
	.long	.LVL388
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL388
	.long	.LVL389
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL389
	.long	.LVL411
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL411
	.long	.LVL412
	.word	0x1
	.byte	0x69
	.long	.LVL412
	.long	.LVL415
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL415
	.long	.LVL420
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL420
	.long	.LVL430
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL430
	.long	.LVL432
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL432
	.long	.LVL433
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL433
	.long	.LVL435
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL435
	.long	.LVL436
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL436
	.long	.LVL438
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL438
	.long	.LVL440
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL440
	.long	.LVL441
	.word	0x1
	.byte	0x67
	.long	.LVL441
	.long	.LVL443
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL443
	.long	.LVL450
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL450
	.long	.LFE14
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	0
	.long	0
.LLST59:
	.long	.LVL153
	.long	.LVL166
	.word	0x3
	.byte	0x8
	.byte	0x63
	.byte	0x9f
	.long	.LVL167
	.long	.LVL215
	.word	0x3
	.byte	0x8
	.byte	0x63
	.byte	0x9f
	.long	.LVL215
	.long	.LFE14
	.word	0x1
	.byte	0x59
	.long	0
	.long	0
.LLST60:
	.long	.LVL153
	.long	.LVL166
	.word	0x3
	.byte	0x8
	.byte	0x63
	.byte	0x9f
	.long	.LVL167
	.long	.LVL215
	.word	0x3
	.byte	0x8
	.byte	0x63
	.byte	0x9f
	.long	.LVL215
	.long	.LFE14
	.word	0x1
	.byte	0x58
	.long	0
	.long	0
.LLST61:
	.long	.LVL153
	.long	.LVL166
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL167
	.long	.LVL215
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL215
	.long	.LVL263
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL263
	.long	.LVL264
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL264
	.long	.LVL268
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL268
	.long	.LVL269
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL269
	.long	.LVL273
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL273
	.long	.LVL274
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL274
	.long	.LVL278
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL278
	.long	.LVL279
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL279
	.long	.LVL344
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL344
	.long	.LVL345
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL345
	.long	.LVL350
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL350
	.long	.LVL352
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL352
	.long	.LVL357
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL357
	.long	.LVL358
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL358
	.long	.LVL363
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL363
	.long	.LVL364
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL364
	.long	.LVL369
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL369
	.long	.LVL370
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL370
	.long	.LVL375
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL375
	.long	.LVL377
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL377
	.long	.LVL382
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL382
	.long	.LVL383
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL383
	.long	.LVL388
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL388
	.long	.LVL389
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	.LVL389
	.long	.LVL392
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL392
	.long	.LVL393
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL393
	.long	.LVL427
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL427
	.long	.LVL428
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL428
	.long	.LVL429
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL431
	.long	.LVL432
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL432
	.long	.LVL434
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL434
	.long	.LVL435
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL435
	.long	.LVL437
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	.LVL437
	.long	.LVL438
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL438
	.long	.LFE14
	.word	0x2
	.byte	0x91
	.sleb128 -7
	.long	0
	.long	0
.LLST62:
	.long	.LVL153
	.long	.LVL166
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL167
	.long	.LVL215
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL215
	.long	.LVL263
	.word	0x2
	.byte	0x91
	.sleb128 -5
	.long	.LVL263
	.long	.LVL264
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL264
	.long	.LVL268
	.word	0x2
	.byte	0x91
	.sleb128 -5
	.long	.LVL268
	.long	.LVL269
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL269
	.long	.LVL273
	.word	0x2
	.byte	0x91
	.sleb128 -5
	.long	.LVL273
	.long	.LVL274
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL274
	.long	.LVL278
	.word	0x2
	.byte	0x91
	.sleb128 -5
	.long	.LVL278
	.long	.LVL279
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL279
	.long	.LFE14
	.word	0x2
	.byte	0x91
	.sleb128 -5
	.long	0
	.long	0
.LLST63:
	.long	.LVL187
	.long	.LVL189
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL200
	.long	.LVL205
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL283
	.long	.LVL284
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL298
	.long	.LVL299
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL414
	.long	.LVL416
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL416
	.long	.LVL417
	.word	0x8
	.byte	0x92
	.uleb128 0x20
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL417
	.long	.LVL418
	.word	0x8
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL418
	.long	.LVL419-1
	.word	0x8
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL443
	.long	.LVL446
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST64:
	.long	.LVL170
	.long	.LVL173
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40400000
	.long	0
	.long	0
.LLST65:
	.long	.LVL170
	.long	.LVL173
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46bb8000
	.long	0
	.long	0
.LLST66:
	.long	.LVL170
	.long	.LVL173
	.word	0x4
	.byte	0xa
	.word	0x5dc0
	.byte	0x9f
	.long	0
	.long	0
.LLST67:
	.long	.LVL314
	.long	.LVL315
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST68:
	.long	.LVL314
	.long	.LVL315
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4af42400
	.long	0
	.long	0
.LLST69:
	.long	.LVL314
	.long	.LVL315
	.word	0x6
	.byte	0xc
	.long	0x7a1200
	.byte	0x9f
	.long	0
	.long	0
.LLST70:
	.long	.LVL335
	.long	.LVL336
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST71:
	.long	.LVL335
	.long	.LVL336
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4af42400
	.long	0
	.long	0
.LLST72:
	.long	.LVL335
	.long	.LVL336
	.word	0x6
	.byte	0xc
	.long	0x7a1200
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xcc
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB18
	.long	.LFE18
	.long	.LFB17
	.long	.LFE17
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB19
	.long	.LFE19
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB27
	.long	.LFE27
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB28
	.long	.LFE28
	.long	.LFB20
	.long	.LFE20
	.long	.LFB26
	.long	.LFE26
	.long	.LFB30
	.long	.LFE30
	.long	.LFB29
	.long	.LFE29
	.long	.LFB31
	.long	.LFE31
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB14
	.long	.LFE14
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF240:
	.string	"printf"
.LASF39:
	.string	"MMENU_SHOW"
.LASF237:
	.string	"DS18X20_start_meas"
.LASF242:
	.string	"malloc"
.LASF31:
	.string	"body"
.LASF182:
	.string	"MainLoopPhase"
.LASF268:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega328p -g2 -gdwarf-2 -g -O1 -std=gnu99 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields"
.LASF71:
	.string	"MTIME_EXIT"
.LASF15:
	.string	"size_t"
.LASF249:
	.string	"__eerd_block_m328p"
.LASF179:
	.string	"startRegulatorStr"
.LASF225:
	.string	"LCD_draw_string2"
.LASF117:
	.string	"resetSensNumber"
.LASF64:
	.string	"ENTER_TEMP"
.LASF151:
	.string	"supplyStr"
.LASF47:
	.string	"MTELPHONE_SET"
.LASF139:
	.string	"lcd_str"
.LASF216:
	.string	"eSensorIDs"
.LASF132:
	.string	"gSensNumb"
.LASF236:
	.string	"LCD_Update"
.LASF211:
	.string	"TempOutDoorMax"
.LASF243:
	.string	"strncpy"
.LASF58:
	.string	"OUTDOORTEMPMAX"
.LASF79:
	.string	"TELPRNSTR"
.LASF16:
	.string	"unget"
.LASF53:
	.string	"SN_EXIT"
.LASF255:
	.string	"ResetDiscrepancy"
.LASF269:
	.string	"../main.c"
.LASF11:
	.string	"long long unsigned int"
.LASF258:
	.string	"LcdPutInt"
.LASF210:
	.string	"TempOutDoorMin"
.LASF190:
	.string	"tAsync"
.LASF37:
	.string	"DISPLAY_KBD"
.LASF107:
	.string	"test_SN_sensors"
.LASF57:
	.string	"OUTDOORTEMPMIN"
.LASF257:
	.string	"LcdFirstLine"
.LASF185:
	.string	"mausure_temperature_ok"
.LASF262:
	.string	"__builtin_putchar"
.LASF168:
	.string	"alarmStr"
.LASF246:
	.string	"free"
.LASF228:
	.string	"ExtInt0Disable"
.LASF197:
	.string	"rTempInDoorMax"
.LASF223:
	.string	"OWNext"
.LASF122:
	.string	"sms_powerGone"
.LASF128:
	.string	"mtemp_hour"
.LASF33:
	.string	"stat"
.LASF4:
	.string	"int16_t"
.LASF204:
	.string	"nSensors"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF86:
	.string	"N_RETURN"
.LASF230:
	.string	"InitAnalogComp"
.LASF60:
	.string	"SUPPLYTEMPMAX"
.LASF172:
	.string	"temperStr"
.LASF131:
	.string	"wStr"
.LASF219:
	.string	"temp_for_hour"
.LASF196:
	.string	"rTempInDoorMin"
.LASF141:
	.string	"TempAct"
.LASF108:
	.string	"getTemperature"
.LASF92:
	.string	"__ticks_dc"
.LASF248:
	.string	"abort"
.LASF22:
	.string	"second"
.LASF27:
	.string	"year"
.LASF66:
	.string	"SAVE_EEPROM"
.LASF110:
	.string	"sensorID"
.LASF207:
	.string	"rSensorIDs"
.LASF7:
	.string	"long int"
.LASF98:
	.string	"sleepPWS"
.LASF19:
	.string	"udata"
.LASF227:
	.string	"ExtInt0Enable"
.LASF85:
	.string	"N_SUPPLY"
.LASF178:
	.string	"telStr"
.LASF174:
	.string	"DS18S20"
.LASF263:
	.string	"__eewr_block_m328p"
.LASF274:
	.string	"putchar"
.LASF261:
	.string	"ExtInt1Enable"
.LASF73:
	.string	"REORDER_NWSENS2"
.LASF5:
	.string	"uint16_t"
.LASF78:
	.string	"EXIT_NWSENS"
.LASF161:
	.string	"diffStr"
.LASF41:
	.string	"MVIEW_SNs"
.LASF42:
	.string	"MASSIGN"
.LASF83:
	.string	"N_INDOOR"
.LASF105:
	.string	"ShutOffADC"
.LASF104:
	.string	"DisplayTemperature"
.LASF184:
	.string	"MenuPhase"
.LASF21:
	.string	"byte"
.LASF192:
	.string	"TimeKeyPressed"
.LASF137:
	.string	"noready_sens"
.LASF160:
	.string	"tempStr"
.LASF91:
	.string	"__tmp"
.LASF191:
	.string	"wait_powergone"
.LASF94:
	.string	"nSenss"
.LASF203:
	.string	"rTempDiffSupplyReturnMax"
.LASF156:
	.string	"viewStr"
.LASF111:
	.string	"temp"
.LASF74:
	.string	"ASSIGN_NEWSENS"
.LASF208:
	.string	"TempInDoorMin"
.LASF259:
	.string	"LcdNextStr"
.LASF162:
	.string	"toeepromStr"
.LASF26:
	.string	"month"
.LASF273:
	.string	"GetKeyCode"
.LASF6:
	.string	"unsigned int"
.LASF72:
	.string	"REORDER_NWSENS"
.LASF118:
	.string	"sensNumber"
.LASF9:
	.string	"long unsigned int"
.LASF224:
	.string	"LCD_draw_string3"
.LASF75:
	.string	"ASSIGN_NEWSENS2"
.LASF175:
	.string	"DS18B20"
.LASF103:
	.string	"LcdPowerGoneStr"
.LASF241:
	.string	"__eeupd_block_m328p"
.LASF88:
	.string	"_delay_ms"
.LASF202:
	.string	"rTempDiffSupplyReturnMin"
.LASF102:
	.string	"copyrSNsTogSNs"
.LASF173:
	.string	"Sensorsfound"
.LASF18:
	.string	"size"
.LASF25:
	.string	"date"
.LASF51:
	.string	"SUPPLY"
.LASF218:
	.string	"telNumber"
.LASF157:
	.string	"assignStr"
.LASF84:
	.string	"N_OUTDOOR"
.LASF145:
	.string	"helloStr2"
.LASF148:
	.string	"snStr"
.LASF90:
	.string	"__ms"
.LASF229:
	.string	"InitAdc"
.LASF116:
	.string	"sensID"
.LASF96:
	.string	"tempreg"
.LASF32:
	.string	"number"
.LASF235:
	.string	"LCD_Clear"
.LASF231:
	.string	"DS18X20_format_from_decicelsius"
.LASF147:
	.string	"nextStr"
.LASF222:
	.string	"OWVerify"
.LASF146:
	.string	"exitStr"
.LASF62:
	.string	"DIFFTEMPMAX"
.LASF234:
	.string	"printf_P"
.LASF180:
	.string	"startPowerGoneStr"
.LASF140:
	.string	"gSensorIDs"
.LASF254:
	.string	"ow_set_bus"
.LASF45:
	.string	"MVIEW_TIME"
.LASF238:
	.string	"DS18X20_read_decicelsius"
.LASF119:
	.string	"sms_noready_sens"
.LASF169:
	.string	"sensorStr"
.LASF61:
	.string	"DIFFTEMPMIN"
.LASF82:
	.string	"EXITTELSET"
.LASF188:
	.string	"extstate"
.LASF212:
	.string	"TempSupplyMin"
.LASF177:
	.string	"crcErrStr"
.LASF123:
	.string	"TestNoReadySensors"
.LASF129:
	.string	"ActSN_next"
.LASF253:
	.string	"gsm_text_sms"
.LASF126:
	.string	"ActSN"
.LASF34:
	.string	"sizetype"
.LASF112:
	.string	"manageTemperatureEvent"
.LASF36:
	.string	"DISPLAY_MAINMENU"
.LASF186:
	.string	"__iob"
.LASF214:
	.string	"TempDiffSupplyReturnMin"
.LASF195:
	.string	"WATCHDOG_STATE"
.LASF200:
	.string	"rTempSupplyMin"
.LASF201:
	.string	"rTempSupplyMax"
.LASF69:
	.string	"MSET_SECOND"
.LASF189:
	.string	"powergone"
.LASF233:
	.string	"LCD_set_position2"
.LASF267:
	.string	"LCD_setTextSize"
.LASF209:
	.string	"TempInDoorMax"
.LASF40:
	.string	"MSNs_SET"
.LASF154:
	.string	"checksumStr"
.LASF106:
	.string	"DoWatchDog"
.LASF28:
	.string	"time"
.LASF159:
	.string	"maxStr"
.LASF24:
	.string	"hour"
.LASF198:
	.string	"rTempOutDoorMin"
.LASF170:
	.string	"absenceStr"
.LASF152:
	.string	"returnStr"
.LASF63:
	.string	"TEMP_EXIT"
.LASF272:
	.string	"ManageOutdoorTempEvent"
.LASF155:
	.string	"setStr"
.LASF54:
	.string	"ENTER_SN"
.LASF68:
	.string	"MSET_MINUTE"
.LASF215:
	.string	"TempDiffSupplyReturnMax"
.LASF121:
	.string	"sms_pumpStarted"
.LASF245:
	.string	"gsm_send_sms"
.LASF76:
	.string	"GETKEY_NWSENS"
.LASF144:
	.string	"helloStr1"
.LASF149:
	.string	"indoorStr"
.LASF226:
	.string	"__builtin_avr_delay_cycles"
.LASF52:
	.string	"RETURN"
.LASF87:
	.string	"_delay_loop_1"
.LASF153:
	.string	"nsupdownStr"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"__file"
.LASF217:
	.string	"etelNumber"
.LASF220:
	.string	"PrefHeatting"
.LASF136:
	.string	"btest_new_sensors"
.LASF134:
	.string	"sn_noready_counter"
.LASF244:
	.string	"strncpy_P"
.LASF171:
	.string	"missingStr"
.LASF59:
	.string	"SUPPLYTEMPMIN"
.LASF56:
	.string	"INDOORTEMPMAX"
.LASF150:
	.string	"outdoorStr"
.LASF35:
	.string	"DISPLAY_TEMPERATURE"
.LASF266:
	.string	"__eeupd_byte_m328p"
.LASF81:
	.string	"TELTOEEPROM"
.LASF38:
	.string	"ENTER_NEW_SENSOR"
.LASF251:
	.string	"WDT_off"
.LASF114:
	.string	"checkPresenceSN"
.LASF142:
	.string	"SleepTime"
.LASF55:
	.string	"INDOORTEMPMIN"
.LASF247:
	.string	"LCD_initialize2"
.LASF176:
	.string	"DS1822"
.LASF260:
	.string	"DS18X20_get_power_status"
.LASF89:
	.string	"__count"
.LASF256:
	.string	"init_clock"
.LASF8:
	.string	"uint32_t"
.LASF127:
	.string	"mtemp_minute"
.LASF80:
	.string	"TELENTERNUM"
.LASF166:
	.string	"hourStr"
.LASF135:
	.string	"nwSen_Phase"
.LASF48:
	.string	"MEXIT"
.LASF49:
	.string	"INDOOR"
.LASF252:
	.string	"uart_init"
.LASF20:
	.string	"char"
.LASF109:
	.string	"decicelsius"
.LASF250:
	.string	"__eerd_byte_m328p"
.LASF187:
	.string	"ROM_NO"
.LASF99:
	.string	"sleepPWRDown"
.LASF70:
	.string	"ENTER_NUMB"
.LASF183:
	.string	"LastPhase"
.LASF50:
	.string	"OUTDOOR"
.LASF181:
	.string	"notReadyStr"
.LASF265:
	.string	"crc8"
.LASF165:
	.string	"minuteStr"
.LASF12:
	.string	"high"
.LASF193:
	.string	"__fuse"
.LASF232:
	.string	"memcmp"
.LASF194:
	.string	"ReadyWATCHDOG"
.LASF113:
	.string	"ValidSensorCode"
.LASF14:
	.string	"__fuse_t"
.LASF270:
	.string	"/home/izhuk/workspace/A328Pn3310DS18x20_n/Debug"
.LASF13:
	.string	"extended"
.LASF164:
	.string	"timeStr"
.LASF0:
	.string	"int8_t"
.LASF43:
	.string	"MSETTEMP"
.LASF163:
	.string	"saveStr"
.LASF213:
	.string	"TempSupplyMax"
.LASF23:
	.string	"minute"
.LASF199:
	.string	"rTempOutDoorMax"
.LASF205:
	.string	"temper"
.LASF138:
	.string	"oldDisplaySens"
.LASF95:
	.string	"rslt"
.LASF67:
	.string	"MSET_HOUR"
.LASF206:
	.string	"wbuffer"
.LASF97:
	.string	"getSleep"
.LASF65:
	.string	"TOEEPROM"
.LASF46:
	.string	"MVIEWTEMPR"
.LASF100:
	.string	"retcode"
.LASF133:
	.string	"sn_presence"
.LASF1:
	.string	"uint8_t"
.LASF158:
	.string	"minStr"
.LASF239:
	.string	"atoi"
.LASF17:
	.string	"flags"
.LASF101:
	.string	"LcdPutTemp"
.LASF143:
	.string	"okStr"
.LASF120:
	.string	"psms"
.LASF167:
	.string	"secondStr"
.LASF221:
	.string	"OWFirst"
.LASF125:
	.string	"nSNpos"
.LASF115:
	.string	"manage_new_sensors"
.LASF77:
	.string	"ASSIGN_TOEEPROM"
.LASF44:
	.string	"MSET_TIME"
.LASF124:
	.string	"main"
.LASF30:
	.string	"struct_sms"
.LASF93:
	.string	"double"
.LASF271:
	.string	"search_sensors_n"
.LASF130:
	.string	"aSN_num"
.LASF264:
	.string	"ReturnXPos"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
