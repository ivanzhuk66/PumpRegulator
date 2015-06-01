	.file	"n3310.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.text.LcdSend,"ax",@progbits
	.type	LcdSend, @function
LcdSend:
.LFB3:
.LSM0:
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM1:
	cbi 37-0x20,2
.LSM2:
	cpi r22,lo8(1)
	brne .L2
.LSM3:
	sbi 37-0x20,1
	rjmp .L3
.L2:
.LSM4:
	cbi 37-0x20,1
.L3:
.LSM5:
	out 78-0x20,r24
.L4:
.LSM6:
	in __tmp_reg__,77-0x20
	sbrs __tmp_reg__,7
	rjmp .L4
.LSM7:
	sbi 37-0x20,2
/* epilogue start */
.LSM8:
	ret
.LFE3:
	.size	LcdSend, .-LcdSend
	.section	.text.LcdClear,"ax",@progbits
.global	LcdClear
	.type	LcdClear, @function
LcdClear:
.LFB1:
.LSM9:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM10:
	ldi r24,lo8(504)
	ldi r25,hi8(504)
	ldi r30,lo8(LcdCache)
	ldi r31,hi8(LcdCache)
	movw r26,r30
	movw r18,r24
	st X+,__zero_reg__
	subi r18,1
	sbci r19,0
	brne .-8
.LSM11:
	sts LoWaterMark+1,__zero_reg__
	sts LoWaterMark,__zero_reg__
.LSM12:
	ldi r24,lo8(503)
	ldi r25,hi8(503)
	sts HiWaterMark+1,r25
	sts HiWaterMark,r24
.LSM13:
	ldi r24,lo8(1)
	sts UpdateLcd,r24
/* epilogue start */
.LSM14:
	ret
.LFE1:
	.size	LcdClear, .-LcdClear
	.section	.text.LcdUpdate,"ax",@progbits
.global	LcdUpdate
	.type	LcdUpdate, @function
LcdUpdate:
.LFB2:
.LSM15:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
.LSM16:
	lds r24,LoWaterMark
	lds r25,LoWaterMark+1
	tst r25
	brge .L8
.LSM17:
	sts LoWaterMark+1,__zero_reg__
	sts LoWaterMark,__zero_reg__
	rjmp .L9
.L8:
.LSM18:
	ldi r18,hi8(504)
	cpi r24,lo8(504)
	cpc r25,r18
	brlt .L9
.LSM19:
	ldi r24,lo8(503)
	ldi r25,hi8(503)
	sts LoWaterMark+1,r25
	sts LoWaterMark,r24
.L9:
.LSM20:
	lds r24,HiWaterMark
	lds r25,HiWaterMark+1
	tst r25
	brge .L10
.LSM21:
	sts HiWaterMark+1,__zero_reg__
	sts HiWaterMark,__zero_reg__
	rjmp .L11
.L10:
.LSM22:
	ldi r30,hi8(504)
	cpi r24,lo8(504)
	cpc r25,r30
	brlt .L11
.LSM23:
	ldi r24,lo8(503)
	ldi r25,hi8(503)
	sts HiWaterMark+1,r25
	sts HiWaterMark,r24
.L11:
.LSM24:
	lds r28,LoWaterMark
	lds r29,LoWaterMark+1
	movw r24,r28
	ldi r22,lo8(84)
	ldi r23,hi8(84)
	call __divmodhi4
	mov r16,r22
	ori r24,lo8(-128)
	ldi r22,lo8(0)
	call LcdSend
.LSM25:
	mov r24,r16
	ori r24,lo8(64)
	ldi r22,lo8(0)
	call LcdSend
.LVL1:
.LSM26:
	lds r24,HiWaterMark
	lds r25,HiWaterMark+1
	cp r24,r28
	cpc r25,r29
	brlt .L12
.LSM27:
	movw r16,r28
	subi r16,lo8(-(LcdCache))
	sbci r17,hi8(-(LcdCache))
.L13:
.LSM28:
	movw r30,r16
	ld r24,Z+
	movw r16,r30
	ldi r22,lo8(1)
	call LcdSend
.LSM29:
	adiw r28,1
.LVL2:
	lds r24,HiWaterMark
	lds r25,HiWaterMark+1
	cp r24,r28
	cpc r25,r29
	brge .L13
.L12:
.LSM30:
	ldi r24,lo8(503)
	ldi r25,hi8(503)
	sts LoWaterMark+1,r25
	sts LoWaterMark,r24
.LSM31:
	sts HiWaterMark+1,__zero_reg__
	sts HiWaterMark,__zero_reg__
.LSM32:
	sts UpdateLcd,__zero_reg__
/* epilogue start */
.LSM33:
	pop r29
	pop r28
.LVL3:
	pop r17
	pop r16
	ret
.LFE2:
	.size	LcdUpdate, .-LcdUpdate
	.section	.text.LcdInit,"ax",@progbits
.global	LcdInit
	.type	LcdInit, @function
LcdInit:
.LFB0:
.LSM34:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM35:
	sbi 37-0x20,4
.LSM36:
	in r24,36-0x20
	ori r24,lo8(62)
	out 36-0x20,r24
.LSM37:
	cbi 37-0x20,4
.LSM38:
	sbi 37-0x20,4
.LSM39:
	ldi r24,lo8(80)
	out 76-0x20,r24
.LSM40:
	sbi 37-0x20,2
.LSM41:
	ldi r24,lo8(33)
	ldi r22,lo8(0)
	call LcdSend
.LSM42:
	ldi r24,lo8(-56)
	ldi r22,lo8(0)
	call LcdSend
.LSM43:
	ldi r24,lo8(6)
	ldi r22,lo8(0)
	call LcdSend
.LSM44:
	ldi r24,lo8(19)
	ldi r22,lo8(0)
	call LcdSend
.LSM45:
	ldi r24,lo8(32)
	ldi r22,lo8(0)
	call LcdSend
.LSM46:
	ldi r24,lo8(12)
	ldi r22,lo8(0)
	call LcdSend
.LSM47:
	call LcdClear
.LSM48:
	call LcdUpdate
/* epilogue start */
.LSM49:
	ret
.LFE0:
	.size	LcdInit, .-LcdInit
	.section	.text.LcdContrast,"ax",@progbits
.global	LcdContrast
	.type	LcdContrast, @function
LcdContrast:
.LFB4:
.LSM50:
.LVL4:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r17,r24
.LSM51:
	ldi r24,lo8(33)
.LVL5:
	ldi r22,lo8(0)
	call LcdSend
.LSM52:
	mov r24,r17
	ori r24,lo8(-128)
	ldi r22,lo8(0)
	call LcdSend
.LSM53:
	ldi r24,lo8(32)
	ldi r22,lo8(0)
	call LcdSend
/* epilogue start */
.LSM54:
	pop r17
.LVL6:
	ret
.LFE4:
	.size	LcdContrast, .-LcdContrast
	.section	.text.LcdGotoXYFont,"ax",@progbits
.global	LcdGotoXYFont
	.type	LcdGotoXYFont, @function
LcdGotoXYFont:
.LFB6:
.LSM55:
.LVL7:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM56:
	cpi r24,lo8(14)
	brsh .L19
.LSM57:
	cpi r22,lo8(6)
	brsh .L20
.LSM58:
	ldi r25,lo8(84)
	mul r22,r25
	movw r22,r0
	clr r1
.LVL8:
	ldi r25,lo8(6)
	mul r24,r25
	movw r24,r0
	clr r1
.LVL9:
	add r22,r24
	adc r23,r25
	sts LcdCacheIdx+1,r23
	sts LcdCacheIdx,r22
.LSM59:
	ldi r24,lo8(0)
	ret
.LVL10:
.L19:
.LSM60:
	ldi r24,lo8(1)
.LVL11:
	ret
.LVL12:
.L20:
	ldi r24,lo8(1)
.LVL13:
.LSM61:
	ret
.LFE6:
	.size	LcdGotoXYFont, .-LcdGotoXYFont
	.section	.text.LcdChr,"ax",@progbits
.global	LcdChr
	.type	LcdChr, @function
LcdChr:
.LFB7:
.LSM62:
.LVL14:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
.LSM63:
	lds r18,LcdCacheIdx
	lds r19,LcdCacheIdx+1
	lds r20,LoWaterMark
	lds r21,LoWaterMark+1
	cp r18,r20
	cpc r19,r21
	brge .L22
.LSM64:
	sts LoWaterMark+1,r19
	sts LoWaterMark,r18
.L22:
.LSM65:
	mov r20,r22
	subi r20,lo8(-(-32))
	cpi r20,lo8(96)
	brlo .L23
.LSM66:
	cpi r22,lo8(-64)
	brlo .L32
.LSM67:
	subi r20,lo8(-(-64))
.LVL15:
	rjmp .L23
.LVL16:
.L32:
.LSM68:
	ldi r20,lo8(95)
.LVL17:
.L23:
.LSM69:
	cpi r24,lo8(1)
	brne .L24
	lds r24,LcdCacheIdx
	lds r25,LcdCacheIdx+1
.LVL18:
.LBB2:
.LSM70:
	ldi r30,lo8(5)
	mul r20,r30
	movw r30,r0
	clr r1
.LBE2:
.LSM71:
	subi r30,lo8(-(FontLookup))
	sbci r31,hi8(-(FontLookup))
	movw r26,r24
	subi r26,lo8(-(LcdCache))
	sbci r27,hi8(-(LcdCache))
	ldi r18,lo8(0)
.L25:
.LVL19:
.LBB3:
.LSM72:
/* #APP */
 ;  274 "../n3310/n3310.c" 1
	lpm r19, Z
	
 ;  0 "" 2
.LVL20:
/* #NOAPP */
.LBE3:
	lsl r19
.LVL21:
	st X+,r19
.LSM73:
	subi r18,lo8(-(1))
.LVL22:
	adiw r30,1
.LVL23:
	cpi r18,lo8(5)
	brne .L25
.LSM74:
	adiw r24,5
	sts LcdCacheIdx+1,r25
	sts LcdCacheIdx,r24
	rjmp .L26
.LVL24:
.L24:
.LSM75:
	cpi r24,lo8(2)
	breq .+2
	rjmp .L26
.LSM76:
	movw r26,r18
	subi r26,lo8(-(-84))
	sbci r27,hi8(-(-84))
.LVL25:
.LSM77:
	lds r24,LoWaterMark
	lds r25,LoWaterMark+1
.LVL26:
	cp r26,r24
	cpc r27,r25
	brge .L27
.LSM78:
	sts LoWaterMark+1,r27
	sts LoWaterMark,r26
.L27:
.LSM79:
	tst r27
	brge .+2
	rjmp .L33
.LBB4:
.LSM80:
	ldi r30,lo8(5)
	mul r20,r30
	movw r30,r0
	clr r1
.LBE4:
.LSM81:
	subi r30,lo8(-(FontLookup))
	sbci r31,hi8(-(FontLookup))
	subi r26,lo8(-(LcdCache))
	sbci r27,hi8(-(LcdCache))
.LVL27:
	movw r28,r18
	subi r28,lo8(-(LcdCache))
	sbci r29,hi8(-(LcdCache))
	movw r24,r18
	subi r24,lo8(-(LcdCache-74))
	sbci r25,hi8(-(LcdCache-74))
.LSM82:
	ldi r20,lo8(24)
.LVL28:
.L29:
.LBB5:
.LSM83:
/* #APP */
 ;  288 "../n3310/n3310.c" 1
	lpm r21, Z
	
 ;  0 "" 2
.LVL29:
/* #NOAPP */
.LBE5:
	lsl r21
.LVL30:
.LSM84:
	mov r22,r21
	andi r22,lo8(4)
	mov r23,r22
	lsl r23
	add r22,r23
	lsl r22
	lsl r22
.LSM85:
	mov r23,r21
	andi r23,lo8(2)
	mov r17,r23
	lsl r17
	add r23,r17
	lsl r23
.LSM86:
	or r22,r23
.LSM87:
	mov r17,r21
	andi r17,lo8(8)
	mul r17,r20
	mov r17,r0
	clr r1
	or r22,r17
.LVL31:
.LSM88:
	swap r21
.LVL32:
	andi r21,lo8(15)
.LVL33:
.LSM89:
	mov r23,r21
	andi r23,lo8(1)
	mov r17,r23
	lsl r17
	add r23,r17
.LSM90:
	mov r17,r21
	andi r17,lo8(2)
	mov r16,r17
	lsl r16
	add r17,r16
	lsl r17
	or r17,r23
.LSM91:
	mov r23,r21
	andi r23,lo8(4)
	mov r16,r23
	lsl r16
	add r23,r16
	mov r16,r23
	lsl r16
	lsl r16
	mov r23,r17
	or r23,r16
.LSM92:
	andi r21,lo8(8)
.LVL34:
	mul r21,r20
	mov r16,r0
	clr r1
	mov r21,r23
	or r21,r16
.LVL35:
.LSM93:
	st X,r22
.LSM94:
	adiw r26,1
	st X,r22
	sbiw r26,1
.LSM95:
	st Y,r21
.LSM96:
	std Y+1,r21
	adiw r30,1
.LVL36:
	adiw r26,2
	adiw r28,2
.LSM97:
	cp r26,r24
	cpc r27,r25
	breq .+2
	rjmp .L29
.LSM98:
	movw r24,r18
	adiw r24,11
	ldi r22,lo8(504)
	ldi r23,hi8(504)
.LVL37:
	call __divmodhi4
.LVL38:
	sts LcdCacheIdx+1,r25
	sts LcdCacheIdx,r24
.LVL39:
.L26:
.LSM99:
	lds r24,LcdCacheIdx
	lds r25,LcdCacheIdx+1
	lds r18,HiWaterMark
	lds r19,HiWaterMark+1
	cp r18,r24
	cpc r19,r25
	brge .L30
.LSM100:
	sts HiWaterMark+1,r25
	sts HiWaterMark,r24
.L30:
.LSM101:
	movw r30,r24
	subi r30,lo8(-(LcdCache))
	sbci r31,hi8(-(LcdCache))
	st Z,__zero_reg__
.LSM102:
	ldi r18,hi8(503)
	cpi r24,lo8(503)
	cpc r25,r18
	brne .L31
.LSM103:
	sts LcdCacheIdx+1,__zero_reg__
	sts LcdCacheIdx,__zero_reg__
.LSM104:
	ldi r24,lo8(2)
	rjmp .L28
.L31:
.LSM105:
	adiw r24,1
	sts LcdCacheIdx+1,r25
	sts LcdCacheIdx,r24
.LSM106:
	ldi r24,lo8(0)
	rjmp .L28
.LVL40:
.L33:
.LSM107:
	ldi r24,lo8(1)
.LVL41:
.L28:
/* epilogue start */
.LSM108:
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.LFE7:
	.size	LcdChr, .-LcdChr
	.section	.text.LcdStr,"ax",@progbits
.global	LcdStr
	.type	LcdStr, @function
LcdStr:
.LFB8:
.LSM109:
.LVL42:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r24
	movw r28,r22
.LVL43:
.LSM110:
	ld r22,Y
.LVL44:
	tst r22
	breq .L39
.LVL45:
.LSM111:
	ldi r17,lo8(0)
.LVL46:
.L38:
.LSM112:
	mov r24,r16
	call LcdChr
.LVL47:
.LSM113:
	cpi r24,lo8(1)
	breq .L40
.LSM114:
	subi r17,lo8(-(1))
.LVL48:
.LSM115:
	movw r30,r28
	add r30,r17
	adc r31,__zero_reg__
	ld r22,Z
	tst r22
	brne .L38
.LSM116:
	ldi r24,lo8(0)
.LVL49:
	rjmp .L37
.LVL50:
.L39:
	ldi r24,lo8(0)
	rjmp .L37
.LVL51:
.L40:
.LSM117:
	ldi r24,lo8(1)
.LVL52:
.L37:
/* epilogue start */
.LSM118:
	pop r29
	pop r28
.LVL53:
	pop r17
	pop r16
.LVL54:
	ret
.LFE8:
	.size	LcdStr, .-LcdStr
	.section	.text.LcdFStr,"ax",@progbits
.global	LcdFStr
	.type	LcdFStr, @function
LcdFStr:
.LFB9:
.LSM119:
.LVL55:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r17,r24
	movw r28,r22
.LVL56:
.LBB6:
.LSM120:
	movw r30,r22
/* #APP */
 ;  364 "../n3310/n3310.c" 1
	lpm r22, Z
	
 ;  0 "" 2
.LVL57:
/* #NOAPP */
.LBE6:
	tst r22
	breq .L45
.LVL58:
.L44:
.LSM121:
	mov r24,r17
	call LcdChr
.LVL59:
.LSM122:
	cpi r24,lo8(1)
	breq .L46
.LSM123:
	adiw r28,1
.LVL60:
.LBB7:
	movw r30,r28
/* #APP */
 ;  364 "../n3310/n3310.c" 1
	lpm r22, Z
	
 ;  0 "" 2
.LVL61:
/* #NOAPP */
.LBE7:
	tst r22
	brne .L44
.LSM124:
	ldi r24,lo8(0)
.LVL62:
	rjmp .L43
.LVL63:
.L45:
	ldi r24,lo8(0)
	rjmp .L43
.LVL64:
.L46:
.LSM125:
	ldi r24,lo8(1)
.LVL65:
.L43:
/* epilogue start */
.LSM126:
	pop r29
	pop r28
.LVL66:
	pop r17
.LVL67:
	ret
.LFE9:
	.size	LcdFStr, .-LcdFStr
	.section	.bss.LcdCacheIdx,"aw",@nobits
	.type	LcdCacheIdx, @object
	.size	LcdCacheIdx, 2
LcdCacheIdx:
	.skip 2,0
	.section	.bss.LoWaterMark,"aw",@nobits
	.type	LoWaterMark, @object
	.size	LoWaterMark, 2
LoWaterMark:
	.skip 2,0
	.section	.progmem.data,"a",@progbits
	.type	FontLookup, @object
	.size	FontLookup, 800
FontLookup:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	95
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	7
	.byte	0
	.byte	20
	.byte	127
	.byte	20
	.byte	127
	.byte	20
	.byte	36
	.byte	42
	.byte	127
	.byte	42
	.byte	18
	.byte	76
	.byte	44
	.byte	16
	.byte	104
	.byte	100
	.byte	54
	.byte	73
	.byte	85
	.byte	34
	.byte	80
	.byte	0
	.byte	5
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	28
	.byte	34
	.byte	65
	.byte	0
	.byte	0
	.byte	65
	.byte	34
	.byte	28
	.byte	0
	.byte	20
	.byte	8
	.byte	62
	.byte	8
	.byte	20
	.byte	8
	.byte	8
	.byte	62
	.byte	8
	.byte	8
	.byte	0
	.byte	0
	.byte	80
	.byte	48
	.byte	0
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	0
	.byte	96
	.byte	96
	.byte	0
	.byte	0
	.byte	32
	.byte	16
	.byte	8
	.byte	4
	.byte	2
	.byte	62
	.byte	81
	.byte	73
	.byte	69
	.byte	62
	.byte	0
	.byte	66
	.byte	127
	.byte	64
	.byte	0
	.byte	66
	.byte	97
	.byte	81
	.byte	73
	.byte	70
	.byte	33
	.byte	65
	.byte	69
	.byte	75
	.byte	49
	.byte	24
	.byte	20
	.byte	18
	.byte	127
	.byte	16
	.byte	39
	.byte	69
	.byte	69
	.byte	69
	.byte	57
	.byte	60
	.byte	74
	.byte	73
	.byte	73
	.byte	48
	.byte	1
	.byte	113
	.byte	9
	.byte	5
	.byte	3
	.byte	54
	.byte	73
	.byte	73
	.byte	73
	.byte	54
	.byte	6
	.byte	73
	.byte	73
	.byte	41
	.byte	30
	.byte	0
	.byte	54
	.byte	54
	.byte	0
	.byte	0
	.byte	0
	.byte	86
	.byte	54
	.byte	0
	.byte	0
	.byte	8
	.byte	20
	.byte	34
	.byte	65
	.byte	0
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	0
	.byte	65
	.byte	34
	.byte	20
	.byte	8
	.byte	2
	.byte	1
	.byte	81
	.byte	9
	.byte	6
	.byte	50
	.byte	73
	.byte	121
	.byte	65
	.byte	62
	.byte	126
	.byte	17
	.byte	17
	.byte	17
	.byte	126
	.byte	127
	.byte	73
	.byte	73
	.byte	73
	.byte	54
	.byte	62
	.byte	65
	.byte	65
	.byte	65
	.byte	34
	.byte	127
	.byte	65
	.byte	65
	.byte	34
	.byte	28
	.byte	127
	.byte	73
	.byte	73
	.byte	73
	.byte	65
	.byte	127
	.byte	9
	.byte	9
	.byte	9
	.byte	1
	.byte	62
	.byte	65
	.byte	73
	.byte	73
	.byte	122
	.byte	127
	.byte	8
	.byte	8
	.byte	8
	.byte	127
	.byte	0
	.byte	65
	.byte	127
	.byte	65
	.byte	0
	.byte	32
	.byte	64
	.byte	65
	.byte	63
	.byte	1
	.byte	127
	.byte	8
	.byte	20
	.byte	34
	.byte	65
	.byte	127
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	127
	.byte	2
	.byte	12
	.byte	2
	.byte	127
	.byte	127
	.byte	4
	.byte	8
	.byte	16
	.byte	127
	.byte	62
	.byte	65
	.byte	65
	.byte	65
	.byte	62
	.byte	127
	.byte	9
	.byte	9
	.byte	9
	.byte	6
	.byte	62
	.byte	65
	.byte	81
	.byte	33
	.byte	94
	.byte	127
	.byte	9
	.byte	25
	.byte	41
	.byte	70
	.byte	70
	.byte	73
	.byte	73
	.byte	73
	.byte	49
	.byte	1
	.byte	1
	.byte	127
	.byte	1
	.byte	1
	.byte	63
	.byte	64
	.byte	64
	.byte	64
	.byte	63
	.byte	31
	.byte	32
	.byte	64
	.byte	32
	.byte	31
	.byte	63
	.byte	64
	.byte	56
	.byte	64
	.byte	63
	.byte	99
	.byte	20
	.byte	8
	.byte	20
	.byte	99
	.byte	7
	.byte	8
	.byte	112
	.byte	8
	.byte	7
	.byte	97
	.byte	81
	.byte	73
	.byte	69
	.byte	67
	.byte	0
	.byte	127
	.byte	65
	.byte	65
	.byte	0
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	0
	.byte	65
	.byte	65
	.byte	127
	.byte	0
	.byte	4
	.byte	2
	.byte	1
	.byte	2
	.byte	4
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	0
	.byte	1
	.byte	2
	.byte	4
	.byte	0
	.byte	32
	.byte	84
	.byte	84
	.byte	84
	.byte	120
	.byte	127
	.byte	72
	.byte	68
	.byte	68
	.byte	56
	.byte	56
	.byte	68
	.byte	68
	.byte	68
	.byte	32
	.byte	56
	.byte	68
	.byte	68
	.byte	72
	.byte	127
	.byte	56
	.byte	84
	.byte	84
	.byte	84
	.byte	24
	.byte	8
	.byte	126
	.byte	9
	.byte	1
	.byte	2
	.byte	12
	.byte	82
	.byte	82
	.byte	82
	.byte	62
	.byte	127
	.byte	8
	.byte	4
	.byte	4
	.byte	120
	.byte	0
	.byte	68
	.byte	125
	.byte	64
	.byte	0
	.byte	32
	.byte	64
	.byte	68
	.byte	61
	.byte	0
	.byte	127
	.byte	16
	.byte	40
	.byte	68
	.byte	0
	.byte	0
	.byte	65
	.byte	127
	.byte	64
	.byte	0
	.byte	124
	.byte	4
	.byte	24
	.byte	4
	.byte	120
	.byte	124
	.byte	8
	.byte	4
	.byte	4
	.byte	120
	.byte	56
	.byte	68
	.byte	68
	.byte	68
	.byte	56
	.byte	124
	.byte	20
	.byte	20
	.byte	20
	.byte	8
	.byte	8
	.byte	20
	.byte	20
	.byte	24
	.byte	124
	.byte	124
	.byte	8
	.byte	4
	.byte	4
	.byte	8
	.byte	72
	.byte	84
	.byte	84
	.byte	84
	.byte	32
	.byte	4
	.byte	63
	.byte	68
	.byte	64
	.byte	32
	.byte	60
	.byte	64
	.byte	64
	.byte	32
	.byte	124
	.byte	28
	.byte	32
	.byte	64
	.byte	32
	.byte	28
	.byte	60
	.byte	64
	.byte	48
	.byte	64
	.byte	60
	.byte	68
	.byte	40
	.byte	16
	.byte	40
	.byte	68
	.byte	12
	.byte	80
	.byte	80
	.byte	80
	.byte	60
	.byte	68
	.byte	100
	.byte	84
	.byte	76
	.byte	68
	.byte	0
	.byte	8
	.byte	54
	.byte	65
	.byte	0
	.byte	0
	.byte	0
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	65
	.byte	54
	.byte	8
	.byte	0
	.byte	8
	.byte	4
	.byte	8
	.byte	16
	.byte	8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	124
	.byte	18
	.byte	17
	.byte	18
	.byte	124
	.byte	127
	.byte	73
	.byte	73
	.byte	73
	.byte	49
	.byte	127
	.byte	73
	.byte	73
	.byte	73
	.byte	54
	.byte	127
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	96
	.byte	63
	.byte	33
	.byte	63
	.byte	96
	.byte	127
	.byte	73
	.byte	73
	.byte	73
	.byte	65
	.byte	119
	.byte	8
	.byte	127
	.byte	8
	.byte	119
	.byte	34
	.byte	65
	.byte	73
	.byte	73
	.byte	54
	.byte	127
	.byte	16
	.byte	8
	.byte	4
	.byte	127
	.byte	126
	.byte	16
	.byte	9
	.byte	4
	.byte	126
	.byte	127
	.byte	8
	.byte	20
	.byte	34
	.byte	65
	.byte	64
	.byte	62
	.byte	1
	.byte	1
	.byte	127
	.byte	127
	.byte	2
	.byte	12
	.byte	2
	.byte	127
	.byte	127
	.byte	8
	.byte	8
	.byte	8
	.byte	127
	.byte	62
	.byte	65
	.byte	65
	.byte	65
	.byte	62
	.byte	127
	.byte	1
	.byte	1
	.byte	1
	.byte	127
	.byte	127
	.byte	9
	.byte	9
	.byte	9
	.byte	6
	.byte	62
	.byte	65
	.byte	65
	.byte	65
	.byte	34
	.byte	1
	.byte	1
	.byte	127
	.byte	1
	.byte	1
	.byte	7
	.byte	72
	.byte	72
	.byte	72
	.byte	63
	.byte	14
	.byte	17
	.byte	127
	.byte	17
	.byte	14
	.byte	99
	.byte	20
	.byte	8
	.byte	20
	.byte	99
	.byte	63
	.byte	32
	.byte	32
	.byte	63
	.byte	96
	.byte	7
	.byte	8
	.byte	8
	.byte	8
	.byte	127
	.byte	127
	.byte	64
	.byte	126
	.byte	64
	.byte	127
	.byte	63
	.byte	32
	.byte	63
	.byte	32
	.byte	127
	.byte	1
	.byte	127
	.byte	72
	.byte	72
	.byte	48
	.byte	127
	.byte	72
	.byte	48
	.byte	0
	.byte	127
	.byte	0
	.byte	127
	.byte	72
	.byte	72
	.byte	48
	.byte	34
	.byte	65
	.byte	73
	.byte	73
	.byte	62
	.byte	127
	.byte	8
	.byte	62
	.byte	65
	.byte	62
	.byte	70
	.byte	41
	.byte	25
	.byte	9
	.byte	127
	.byte	32
	.byte	84
	.byte	84
	.byte	84
	.byte	120
	.byte	60
	.byte	74
	.byte	74
	.byte	74
	.byte	49
	.byte	124
	.byte	84
	.byte	84
	.byte	40
	.byte	0
	.byte	124
	.byte	4
	.byte	4
	.byte	12
	.byte	0
	.byte	96
	.byte	60
	.byte	36
	.byte	60
	.byte	96
	.byte	56
	.byte	84
	.byte	84
	.byte	84
	.byte	24
	.byte	108
	.byte	16
	.byte	124
	.byte	16
	.byte	108
	.byte	0
	.byte	68
	.byte	84
	.byte	84
	.byte	40
	.byte	124
	.byte	32
	.byte	16
	.byte	8
	.byte	124
	.byte	124
	.byte	33
	.byte	18
	.byte	9
	.byte	124
	.byte	124
	.byte	16
	.byte	40
	.byte	68
	.byte	0
	.byte	64
	.byte	56
	.byte	4
	.byte	4
	.byte	124
	.byte	124
	.byte	8
	.byte	16
	.byte	8
	.byte	124
	.byte	124
	.byte	16
	.byte	16
	.byte	16
	.byte	124
	.byte	56
	.byte	68
	.byte	68
	.byte	68
	.byte	56
	.byte	124
	.byte	4
	.byte	4
	.byte	4
	.byte	124
	.byte	124
	.byte	20
	.byte	20
	.byte	20
	.byte	8
	.byte	56
	.byte	68
	.byte	68
	.byte	68
	.byte	0
	.byte	4
	.byte	4
	.byte	124
	.byte	4
	.byte	4
	.byte	12
	.byte	80
	.byte	80
	.byte	80
	.byte	60
	.byte	8
	.byte	20
	.byte	124
	.byte	20
	.byte	8
	.byte	68
	.byte	40
	.byte	16
	.byte	40
	.byte	68
	.byte	60
	.byte	32
	.byte	32
	.byte	60
	.byte	96
	.byte	12
	.byte	16
	.byte	16
	.byte	16
	.byte	124
	.byte	124
	.byte	64
	.byte	124
	.byte	64
	.byte	124
	.byte	60
	.byte	32
	.byte	60
	.byte	32
	.byte	124
	.byte	4
	.byte	124
	.byte	80
	.byte	80
	.byte	32
	.byte	124
	.byte	80
	.byte	32
	.byte	0
	.byte	124
	.byte	0
	.byte	124
	.byte	80
	.byte	80
	.byte	32
	.byte	40
	.byte	68
	.byte	84
	.byte	84
	.byte	56
	.byte	124
	.byte	16
	.byte	56
	.byte	68
	.byte	56
	.byte	72
	.byte	84
	.byte	52
	.byte	20
	.byte	124
	.section	.bss.LcdCache,"aw",@nobits
	.type	LcdCache, @object
	.size	LcdCache, 504
LcdCache:
	.skip 504,0
	.section	.bss.HiWaterMark,"aw",@nobits
	.type	HiWaterMark, @object
	.size	HiWaterMark, 2
HiWaterMark:
	.skip 2,0
	.section	.bss.UpdateLcd,"aw",@nobits
	.type	UpdateLcd, @object
	.size	UpdateLcd, 1
UpdateLcd:
	.skip 1,0
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -1
	.byte	0x24
	.byte	0xc
	.uleb128 0x20
	.uleb128 0x0
	.p2align	2
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.p2align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.p2align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.p2align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.p2align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.p2align	2
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.p2align	2
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.p2align	2
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.p2align	2
.LEFDE16:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x61
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL7
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x68
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x66
	.long	.LVL10
	.long	.LFE6
	.word	0x1
	.byte	0x66
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL14
	.long	.LVL18
	.word	0x1
	.byte	0x68
	.long	.LVL24
	.long	.LVL26
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL14
	.long	.LVL15
	.word	0x1
	.byte	0x66
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x64
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x66
	.long	.LVL17
	.long	.LVL28
	.word	0x1
	.byte	0x64
	.long	.LVL40
	.long	.LVL41
	.word	0x1
	.byte	0x64
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL22
	.long	.LVL24
	.word	0x1
	.byte	0x62
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL30
	.long	.LVL32
	.word	0x1
	.byte	0x65
	.long	.LVL33
	.long	.LVL34
	.word	0x1
	.byte	0x65
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL30
	.long	.LVL31
	.word	0xe
	.byte	0x85
	.sleb128 0
	.byte	0x34
	.byte	0x1a
	.byte	0x3c
	.byte	0x1e
	.byte	0x85
	.sleb128 0
	.byte	0x32
	.byte	0x1a
	.byte	0x36
	.byte	0x1e
	.byte	0x21
	.byte	0x9f
	.long	.LVL31
	.long	.LVL37
	.word	0x1
	.byte	0x66
	.long	.LVL37
	.long	.LVL38
	.word	0x5
	.byte	0x3
	.long	LcdCache
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL33
	.long	.LVL34
	.word	0x15
	.byte	0x85
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x85
	.sleb128 0
	.byte	0x32
	.byte	0x1a
	.byte	0x36
	.byte	0x1e
	.byte	0x21
	.byte	0x85
	.sleb128 0
	.byte	0x34
	.byte	0x1a
	.byte	0x3c
	.byte	0x1e
	.byte	0x21
	.byte	0x9f
	.long	.LVL35
	.long	.LVL38
	.word	0x1
	.byte	0x65
	.long	.LVL38
	.long	.LVL39
	.word	0x5
	.byte	0x3
	.long	LcdCache
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL25
	.long	.LVL27
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LVL28
	.word	0x9
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.long	LcdCache
	.byte	0x1c
	.byte	0x9f
	.long	.LVL40
	.long	.LVL41
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL19
	.long	.LVL23
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL24
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL20
	.long	.LVL21
	.word	0x1
	.byte	0x63
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL28
	.long	.LVL36
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL39
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL29
	.long	.LVL30
	.word	0x1
	.byte	0x65
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL42
	.long	.LVL45
	.word	0x1
	.byte	0x68
	.long	.LVL45
	.long	.LVL54
	.word	0x1
	.byte	0x60
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL42
	.long	.LVL44
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44
	.long	.LVL53
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL43
	.long	.LVL46
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL48
	.long	.LVL50
	.word	0x1
	.byte	0x61
	.long	.LVL50
	.long	.LVL51
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL47
	.long	.LVL49
	.word	0x1
	.byte	0x68
	.long	.LVL51
	.long	.LVL52
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL55
	.long	.LVL58
	.word	0x1
	.byte	0x68
	.long	.LVL58
	.long	.LVL67
	.word	0x1
	.byte	0x61
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL55
	.long	.LVL57
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL57
	.long	.LVL60
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL60
	.long	.LVL66
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL57
	.long	.LVL59-1
	.word	0x1
	.byte	0x66
	.long	.LVL61
	.long	.LVL64
	.word	0x1
	.byte	0x66
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL59
	.long	.LVL62
	.word	0x1
	.byte	0x68
	.long	.LVL64
	.long	.LVL65
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL56
	.long	.LVL57
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL57
	.long	.LVL58
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL63
	.long	.LVL64
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL57
	.long	.LVL58
	.word	0x1
	.byte	0x66
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x66
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL60
	.long	.LVL63
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL61
	.long	.LVL63
	.word	0x1
	.byte	0x66
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x433
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF39
	.byte	0x1
	.long	.LASF40
	.long	.LASF41
	.long	0x0
	.long	0x0
	.long	.Ldebug_ranges0+0x30
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7a
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7c
	.long	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x3
	.byte	0x36
	.long	0x3b
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x39
	.long	0x9d
	.uleb128 0x7
	.long	.LASF10
	.sleb128 0
	.uleb128 0x7
	.long	.LASF11
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x3c
	.long	0x88
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x44
	.long	0xbd
	.uleb128 0x7
	.long	.LASF13
	.sleb128 1
	.uleb128 0x7
	.long	.LASF14
	.sleb128 2
	.byte	0x0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x47
	.long	0xa8
	.uleb128 0x8
	.long	.LASF42
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xfa
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0xb5
	.long	0x7d
	.byte	0x1
	.byte	0x68
	.uleb128 0xa
	.string	"cd"
	.byte	0x1
	.byte	0xb5
	.long	0x9d
	.byte	0x1
	.byte	0x66
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x136
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x77
	.long	0x42
	.long	.LLST0
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x174
	.uleb128 0xe
	.long	.LASF21
	.byte	0x1
	.byte	0xce
	.long	0x7d
	.long	.LLST1
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.long	0x7d
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1ac
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0xe5
	.long	0x7d
	.long	.LLST2
	.uleb128 0x10
	.string	"y"
	.byte	0x1
	.byte	0xe5
	.long	0x7d
	.long	.LLST3
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.long	0x7d
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x27c
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.byte	0xf4
	.long	0xbd
	.long	.LLST4
	.uleb128 0x10
	.string	"ch"
	.byte	0x1
	.byte	0xf4
	.long	0x7d
	.long	.LLST5
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0xf6
	.long	0x7d
	.long	.LLST6
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0xf6
	.long	0x7d
	.long	.LLST7
	.uleb128 0xd
	.string	"b1"
	.byte	0x1
	.byte	0xf7
	.long	0x7d
	.long	.LLST8
	.uleb128 0xd
	.string	"b2"
	.byte	0x1
	.byte	0xf7
	.long	0x7d
	.long	.LLST9
	.uleb128 0x11
	.long	.LASF25
	.byte	0x1
	.byte	0xf8
	.long	0x42
	.long	.LLST10
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x0
	.long	0x255
	.uleb128 0x13
	.long	.LASF26
	.byte	0x1
	.word	0x112
	.long	0x49
	.long	.LLST11
	.uleb128 0x13
	.long	.LASF27
	.byte	0x1
	.word	0x112
	.long	0x30
	.long	.LLST12
	.byte	0x0
	.uleb128 0x14
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x13
	.long	.LASF26
	.byte	0x1
	.word	0x120
	.long	0x49
	.long	.LLST13
	.uleb128 0x13
	.long	.LASF27
	.byte	0x1
	.word	0x120
	.long	0x30
	.long	.LLST14
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.word	0x14e
	.byte	0x1
	.long	0x7d
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x2db
	.uleb128 0x16
	.long	.LASF24
	.byte	0x1
	.word	0x14e
	.long	0xbd
	.long	.LLST15
	.uleb128 0x16
	.long	.LASF29
	.byte	0x1
	.word	0x14e
	.long	0x2db
	.long	.LLST16
	.uleb128 0x13
	.long	.LASF25
	.byte	0x1
	.word	0x150
	.long	0x7d
	.long	.LLST17
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.word	0x151
	.long	0x7d
	.long	.LLST18
	.byte	0x0
	.uleb128 0x17
	.byte	0x2
	.long	0x7d
	.uleb128 0x15
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.word	0x168
	.byte	0x1
	.long	0x7d
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x396
	.uleb128 0x16
	.long	.LASF24
	.byte	0x1
	.word	0x168
	.long	0xbd
	.long	.LLST19
	.uleb128 0x16
	.long	.LASF32
	.byte	0x1
	.word	0x168
	.long	0x396
	.long	.LLST20
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.word	0x16a
	.long	0x7d
	.long	.LLST21
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.word	0x16b
	.long	0x7d
	.long	.LLST22
	.uleb128 0x19
	.long	.LBB6
	.long	.LBE6
	.long	0x36b
	.uleb128 0x13
	.long	.LASF26
	.byte	0x1
	.word	0x16c
	.long	0x49
	.long	.LLST23
	.uleb128 0x13
	.long	.LASF27
	.byte	0x1
	.word	0x16c
	.long	0x30
	.long	.LLST24
	.byte	0x0
	.uleb128 0x1a
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x13
	.long	.LASF26
	.byte	0x1
	.word	0x16c
	.long	0x49
	.long	.LLST25
	.uleb128 0x13
	.long	.LASF27
	.byte	0x1
	.word	0x16c
	.long	0x30
	.long	.LLST26
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.byte	0x2
	.long	0x39c
	.uleb128 0x1b
	.long	0x7d
	.uleb128 0x1c
	.long	0x7d
	.long	0x3b7
	.uleb128 0x1d
	.long	0x3b7
	.byte	0x9f
	.uleb128 0x1d
	.long	0x3b7
	.byte	0x4
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.uleb128 0x1e
	.long	.LASF33
	.byte	0x3
	.byte	0x5e
	.long	0x3cb
	.byte	0x5
	.byte	0x3
	.long	FontLookup
	.uleb128 0x1b
	.long	0x3a1
	.uleb128 0x1c
	.long	0x7d
	.long	0x3e1
	.uleb128 0x1f
	.long	0x3b7
	.word	0x1f7
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF34
	.byte	0x1
	.byte	0x2d
	.long	0x3d0
	.byte	0x5
	.byte	0x3
	.long	LcdCache
	.uleb128 0x1e
	.long	.LASF35
	.byte	0x1
	.byte	0x31
	.long	0x42
	.byte	0x5
	.byte	0x3
	.long	LoWaterMark
	.uleb128 0x1e
	.long	.LASF36
	.byte	0x1
	.byte	0x32
	.long	0x42
	.byte	0x5
	.byte	0x3
	.long	HiWaterMark
	.uleb128 0x1e
	.long	.LASF37
	.byte	0x1
	.byte	0x34
	.long	0x42
	.byte	0x5
	.byte	0x3
	.long	LcdCacheIdx
	.uleb128 0x1e
	.long	.LASF38
	.byte	0x1
	.byte	0x36
	.long	0x7d
	.byte	0x5
	.byte	0x3
	.long	UpdateLcd
	.byte	0x0
	.section	.debug_abbrev
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
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x79
	.word	0x2
	.long	.Ldebug_info0
	.long	0x437
	.long	0xfa
	.string	"LcdClear"
	.long	0x10f
	.string	"LcdUpdate"
	.long	0x136
	.string	"LcdInit"
	.long	0x14b
	.string	"LcdContrast"
	.long	0x174
	.string	"LcdGotoXYFont"
	.long	0x1ac
	.string	"LcdChr"
	.long	0x27c
	.string	"LcdStr"
	.long	0x2e1
	.string	"LcdFStr"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x4f
	.word	0x2
	.long	.Ldebug_info0
	.long	0x437
	.long	0x30
	.string	"uint8_t"
	.long	0x49
	.string	"uint16_t"
	.long	0x7d
	.string	"byte"
	.long	0x9d
	.string	"LcdCmdData"
	.long	0xbd
	.string	"LcdFontSize"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2
	.long	.LBE2
	.long	.LBB3
	.long	.LBE3
	.long	0x0
	.long	0x0
	.long	.LBB4
	.long	.LBE4
	.long	.LBB5
	.long	.LBE5
	.long	0x0
	.long	0x0
	.long	.LFB3
	.long	.LFE3
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB0
	.long	.LFE0
	.long	.LFB4
	.long	.LFE4
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	0x0
	.long	0x0
	.section	.debug_line
	.long	.LELT0-.LSLT0
.LSLT0:
	.word	0x2
	.long	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"../n3310"
	.byte	0
	.ascii	"/usr/lib/gcc/avr/4.5.0/../../../../avr/include"
	.byte	0
	.byte	0x0
	.string	"n3310.c"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"n3310.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM0
	.byte	0xc9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM1
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM2
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM3
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM4
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM5
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM6
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM7
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM8
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE3
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM9
	.byte	0x73
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM10
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM11
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM12
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM13
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM14
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE1
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM15
	.byte	0x89
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM16
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM17
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM18
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM19
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM20
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM21
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM22
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM23
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM24
	.byte	0x33
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM25
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM26
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM27
	.byte	0x3
	.sleb128 -44
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM28
	.byte	0x44
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM29
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM30
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM31
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM32
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM33
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE2
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM34
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM35
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM36
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM37
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM38
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM39
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM40
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM41
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM42
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM43
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM44
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM45
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM46
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM47
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM48
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM49
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM50
	.byte	0xe2
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM51
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM52
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM53
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM54
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE4
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM55
	.byte	0xf9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM56
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM57
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM58
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM59
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM60
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM61
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE6
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM62
	.byte	0x3
	.sleb128 244
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM63
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM64
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM65
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM66
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM67
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM68
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM69
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM70
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM71
	.byte	0x3
	.sleb128 -30
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM72
	.byte	0x32
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM73
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM74
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM75
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM76
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM77
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM78
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM79
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM80
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM81
	.byte	0x3
	.sleb128 -44
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM82
	.byte	0x46
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM83
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM84
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM85
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM86
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM87
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM88
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM89
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM90
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM91
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM92
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM93
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM94
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM95
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM96
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM97
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM98
	.byte	0x2b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM99
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM100
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM101
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM102
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM103
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM104
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM105
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM106
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM107
	.byte	0x3
	.sleb128 -41
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM108
	.byte	0x3e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE7
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM109
	.byte	0x3
	.sleb128 334
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM110
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM111
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM112
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM113
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM114
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM115
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM116
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM117
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM118
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE8
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM119
	.byte	0x3
	.sleb128 360
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM120
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM121
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM122
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM123
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM124
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM125
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM126
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE9
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"FONT_1X"
.LASF33:
	.string	"FontLookup"
.LASF31:
	.string	"LcdFStr"
.LASF12:
	.string	"LcdCmdData"
.LASF36:
	.string	"HiWaterMark"
.LASF38:
	.string	"UpdateLcd"
.LASF34:
	.string	"LcdCache"
.LASF41:
	.string	"/home/izhuk/workspace/A328Pn3310DS18x20_n/Debug"
.LASF15:
	.string	"LcdFontSize"
.LASF2:
	.string	"uint8_t"
.LASF25:
	.string	"tmpIdx"
.LASF14:
	.string	"FONT_2X"
.LASF26:
	.string	"__addr16"
.LASF20:
	.string	"LcdContrast"
.LASF7:
	.string	"long long int"
.LASF29:
	.string	"dataArray"
.LASF5:
	.string	"long int"
.LASF23:
	.string	"LcdChr"
.LASF9:
	.string	"byte"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"uint16_t"
.LASF27:
	.string	"__result"
.LASF32:
	.string	"dataPtr"
.LASF35:
	.string	"LoWaterMark"
.LASF16:
	.string	"data"
.LASF42:
	.string	"LcdSend"
.LASF28:
	.string	"LcdStr"
.LASF6:
	.string	"long unsigned int"
.LASF11:
	.string	"LCD_DATA"
.LASF30:
	.string	"response"
.LASF39:
	.string	"GNU C 4.5.0"
.LASF24:
	.string	"size"
.LASF21:
	.string	"contrast"
.LASF10:
	.string	"LCD_CMD"
.LASF19:
	.string	"LcdUpdate"
.LASF40:
	.string	"../n3310/n3310.c"
.LASF18:
	.string	"LcdInit"
.LASF17:
	.string	"LcdClear"
.LASF22:
	.string	"LcdGotoXYFont"
.LASF37:
	.string	"LcdCacheIdx"
