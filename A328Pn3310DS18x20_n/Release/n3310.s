	.file	"n3310.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text.LcdSend,"ax",@progbits
	.type	LcdSend, @function
LcdSend:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cbi 37-0x20,2
	cpi r22,lo8(1)
	brne .L2
	sbi 37-0x20,1
	rjmp .L3
.L2:
	cbi 37-0x20,1
.L3:
	out 78-0x20,r24
.L4:
	in __tmp_reg__,77-0x20
	sbrs __tmp_reg__,7
	rjmp .L4
	sbi 37-0x20,2
/* epilogue start */
	ret
	.size	LcdSend, .-LcdSend
	.section	.text.LcdClear,"ax",@progbits
.global	LcdClear
	.type	LcdClear, @function
LcdClear:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
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
	sts LoWaterMark+1,__zero_reg__
	sts LoWaterMark,__zero_reg__
	ldi r24,lo8(503)
	ldi r25,hi8(503)
	sts HiWaterMark+1,r25
	sts HiWaterMark,r24
	ldi r24,lo8(1)
	sts UpdateLcd,r24
/* epilogue start */
	ret
	.size	LcdClear, .-LcdClear
	.section	.text.LcdUpdate,"ax",@progbits
.global	LcdUpdate
	.type	LcdUpdate, @function
LcdUpdate:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r24,LoWaterMark
	lds r25,LoWaterMark+1
	tst r25
	brge .L8
	sts LoWaterMark+1,__zero_reg__
	sts LoWaterMark,__zero_reg__
	rjmp .L9
.L8:
	ldi r18,hi8(504)
	cpi r24,lo8(504)
	cpc r25,r18
	brlt .L9
	ldi r24,lo8(503)
	ldi r25,hi8(503)
	sts LoWaterMark+1,r25
	sts LoWaterMark,r24
.L9:
	lds r24,HiWaterMark
	lds r25,HiWaterMark+1
	tst r25
	brge .L10
	sts HiWaterMark+1,__zero_reg__
	sts HiWaterMark,__zero_reg__
	rjmp .L11
.L10:
	ldi r30,hi8(504)
	cpi r24,lo8(504)
	cpc r25,r30
	brlt .L11
	ldi r24,lo8(503)
	ldi r25,hi8(503)
	sts HiWaterMark+1,r25
	sts HiWaterMark,r24
.L11:
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
	mov r24,r16
	ori r24,lo8(64)
	ldi r22,lo8(0)
	call LcdSend
	lds r24,HiWaterMark
	lds r25,HiWaterMark+1
	cp r24,r28
	cpc r25,r29
	brlt .L12
	movw r16,r28
	subi r16,lo8(-(LcdCache))
	sbci r17,hi8(-(LcdCache))
.L13:
	movw r30,r16
	ld r24,Z+
	movw r16,r30
	ldi r22,lo8(1)
	call LcdSend
	adiw r28,1
	lds r24,HiWaterMark
	lds r25,HiWaterMark+1
	cp r24,r28
	cpc r25,r29
	brge .L13
.L12:
	ldi r24,lo8(503)
	ldi r25,hi8(503)
	sts LoWaterMark+1,r25
	sts LoWaterMark,r24
	sts HiWaterMark+1,__zero_reg__
	sts HiWaterMark,__zero_reg__
	sts UpdateLcd,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	LcdUpdate, .-LcdUpdate
	.section	.text.LcdInit,"ax",@progbits
.global	LcdInit
	.type	LcdInit, @function
LcdInit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbi 37-0x20,4
	in r24,36-0x20
	ori r24,lo8(62)
	out 36-0x20,r24
	cbi 37-0x20,4
	sbi 37-0x20,4
	ldi r24,lo8(80)
	out 76-0x20,r24
	sbi 37-0x20,2
	ldi r24,lo8(33)
	ldi r22,lo8(0)
	call LcdSend
	ldi r24,lo8(-56)
	ldi r22,lo8(0)
	call LcdSend
	ldi r24,lo8(6)
	ldi r22,lo8(0)
	call LcdSend
	ldi r24,lo8(19)
	ldi r22,lo8(0)
	call LcdSend
	ldi r24,lo8(32)
	ldi r22,lo8(0)
	call LcdSend
	ldi r24,lo8(12)
	ldi r22,lo8(0)
	call LcdSend
	call LcdClear
	call LcdUpdate
/* epilogue start */
	ret
	.size	LcdInit, .-LcdInit
	.section	.text.LcdContrast,"ax",@progbits
.global	LcdContrast
	.type	LcdContrast, @function
LcdContrast:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r17,r24
	ldi r24,lo8(33)
	ldi r22,lo8(0)
	call LcdSend
	mov r24,r17
	ori r24,lo8(-128)
	ldi r22,lo8(0)
	call LcdSend
	ldi r24,lo8(32)
	ldi r22,lo8(0)
	call LcdSend
/* epilogue start */
	pop r17
	ret
	.size	LcdContrast, .-LcdContrast
	.section	.text.LcdGotoXYFont,"ax",@progbits
.global	LcdGotoXYFont
	.type	LcdGotoXYFont, @function
LcdGotoXYFont:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(14)
	brsh .L19
	cpi r22,lo8(6)
	brsh .L20
	ldi r25,lo8(84)
	mul r22,r25
	movw r22,r0
	clr r1
	ldi r25,lo8(6)
	mul r24,r25
	movw r24,r0
	clr r1
	add r22,r24
	adc r23,r25
	sts LcdCacheIdx+1,r23
	sts LcdCacheIdx,r22
	ldi r24,lo8(0)
	ret
.L19:
	ldi r24,lo8(1)
	ret
.L20:
	ldi r24,lo8(1)
	ret
	.size	LcdGotoXYFont, .-LcdGotoXYFont
	.section	.text.LcdChr,"ax",@progbits
.global	LcdChr
	.type	LcdChr, @function
LcdChr:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r18,LcdCacheIdx
	lds r19,LcdCacheIdx+1
	lds r20,LoWaterMark
	lds r21,LoWaterMark+1
	cp r18,r20
	cpc r19,r21
	brge .L22
	sts LoWaterMark+1,r19
	sts LoWaterMark,r18
.L22:
	mov r20,r22
	subi r20,lo8(-(-32))
	cpi r20,lo8(96)
	brlo .L23
	cpi r22,lo8(-64)
	brlo .L32
	subi r20,lo8(-(-64))
	rjmp .L23
.L32:
	ldi r20,lo8(95)
.L23:
	cpi r24,lo8(1)
	brne .L24
	lds r24,LcdCacheIdx
	lds r25,LcdCacheIdx+1
	ldi r30,lo8(5)
	mul r20,r30
	movw r30,r0
	clr r1
	subi r30,lo8(-(FontLookup))
	sbci r31,hi8(-(FontLookup))
	movw r26,r24
	subi r26,lo8(-(LcdCache))
	sbci r27,hi8(-(LcdCache))
	ldi r18,lo8(0)
.L25:
/* #APP */
 ;  274 "../n3310/n3310.c" 1
	lpm r19, Z
	
 ;  0 "" 2
/* #NOAPP */
	lsl r19
	st X+,r19
	subi r18,lo8(-(1))
	adiw r30,1
	cpi r18,lo8(5)
	brne .L25
	adiw r24,5
	sts LcdCacheIdx+1,r25
	sts LcdCacheIdx,r24
	rjmp .L26
.L24:
	cpi r24,lo8(2)
	breq .+2
	rjmp .L26
	movw r26,r18
	subi r26,lo8(-(-84))
	sbci r27,hi8(-(-84))
	lds r24,LoWaterMark
	lds r25,LoWaterMark+1
	cp r26,r24
	cpc r27,r25
	brge .L27
	sts LoWaterMark+1,r27
	sts LoWaterMark,r26
.L27:
	tst r27
	brge .+2
	rjmp .L33
	ldi r30,lo8(5)
	mul r20,r30
	movw r30,r0
	clr r1
	subi r30,lo8(-(FontLookup))
	sbci r31,hi8(-(FontLookup))
	subi r26,lo8(-(LcdCache))
	sbci r27,hi8(-(LcdCache))
	movw r28,r18
	subi r28,lo8(-(LcdCache))
	sbci r29,hi8(-(LcdCache))
	movw r24,r18
	subi r24,lo8(-(LcdCache-74))
	sbci r25,hi8(-(LcdCache-74))
	ldi r20,lo8(24)
.L29:
/* #APP */
 ;  288 "../n3310/n3310.c" 1
	lpm r21, Z
	
 ;  0 "" 2
/* #NOAPP */
	lsl r21
	mov r22,r21
	andi r22,lo8(4)
	mov r23,r22
	lsl r23
	add r22,r23
	lsl r22
	lsl r22
	mov r23,r21
	andi r23,lo8(2)
	mov r17,r23
	lsl r17
	add r23,r17
	lsl r23
	or r22,r23
	mov r17,r21
	andi r17,lo8(8)
	mul r17,r20
	mov r17,r0
	clr r1
	or r22,r17
	swap r21
	andi r21,lo8(15)
	mov r23,r21
	andi r23,lo8(1)
	mov r17,r23
	lsl r17
	add r23,r17
	mov r17,r21
	andi r17,lo8(2)
	mov r16,r17
	lsl r16
	add r17,r16
	lsl r17
	or r17,r23
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
	andi r21,lo8(8)
	mul r21,r20
	mov r16,r0
	clr r1
	mov r21,r23
	or r21,r16
	st X,r22
	adiw r26,1
	st X,r22
	sbiw r26,1
	st Y,r21
	std Y+1,r21
	adiw r30,1
	adiw r26,2
	adiw r28,2
	cp r26,r24
	cpc r27,r25
	breq .+2
	rjmp .L29
	movw r24,r18
	adiw r24,11
	ldi r22,lo8(504)
	ldi r23,hi8(504)
	call __divmodhi4
	sts LcdCacheIdx+1,r25
	sts LcdCacheIdx,r24
.L26:
	lds r24,LcdCacheIdx
	lds r25,LcdCacheIdx+1
	lds r18,HiWaterMark
	lds r19,HiWaterMark+1
	cp r18,r24
	cpc r19,r25
	brge .L30
	sts HiWaterMark+1,r25
	sts HiWaterMark,r24
.L30:
	movw r30,r24
	subi r30,lo8(-(LcdCache))
	sbci r31,hi8(-(LcdCache))
	st Z,__zero_reg__
	ldi r18,hi8(503)
	cpi r24,lo8(503)
	cpc r25,r18
	brne .L31
	sts LcdCacheIdx+1,__zero_reg__
	sts LcdCacheIdx,__zero_reg__
	ldi r24,lo8(2)
	rjmp .L28
.L31:
	adiw r24,1
	sts LcdCacheIdx+1,r25
	sts LcdCacheIdx,r24
	ldi r24,lo8(0)
	rjmp .L28
.L33:
	ldi r24,lo8(1)
.L28:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	LcdChr, .-LcdChr
	.section	.text.LcdStr,"ax",@progbits
.global	LcdStr
	.type	LcdStr, @function
LcdStr:
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
	ld r22,Y
	tst r22
	breq .L39
	ldi r17,lo8(0)
.L38:
	mov r24,r16
	call LcdChr
	cpi r24,lo8(1)
	breq .L40
	subi r17,lo8(-(1))
	movw r30,r28
	add r30,r17
	adc r31,__zero_reg__
	ld r22,Z
	tst r22
	brne .L38
	ldi r24,lo8(0)
	rjmp .L37
.L39:
	ldi r24,lo8(0)
	rjmp .L37
.L40:
	ldi r24,lo8(1)
.L37:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	LcdStr, .-LcdStr
	.section	.text.LcdFStr,"ax",@progbits
.global	LcdFStr
	.type	LcdFStr, @function
LcdFStr:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r17,r24
	movw r28,r22
	movw r30,r22
/* #APP */
 ;  364 "../n3310/n3310.c" 1
	lpm r22, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r22
	breq .L45
.L44:
	mov r24,r17
	call LcdChr
	cpi r24,lo8(1)
	breq .L46
	adiw r28,1
	movw r30,r28
/* #APP */
 ;  364 "../n3310/n3310.c" 1
	lpm r22, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r22
	brne .L44
	ldi r24,lo8(0)
	rjmp .L43
.L45:
	ldi r24,lo8(0)
	rjmp .L43
.L46:
	ldi r24,lo8(1)
.L43:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
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
