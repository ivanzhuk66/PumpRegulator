	.file	"lcd.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	LCD_send_bit
	.type	LCD_send_bit, @function
LCD_send_bit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	tst r24
	breq .L2
	sbi 0x5,3
	rjmp .L3
.L2:
	cbi 0x5,3
.L3:
	ldi r24,lo8(106)
	1: dec r24
	brne 1b
	rjmp .
	sbi 0x5,5
	ldi r24,lo8(53)
	1: dec r24
	brne 1b
	nop
	cbi 0x5,5
	ldi r24,lo8(106)
	1: dec r24
	brne 1b
	rjmp .
	ret
	.size	LCD_send_bit, .-LCD_send_bit
.global	LCD_send_byte
	.type	LCD_send_byte, @function
LCD_send_byte:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r24
	mov r24,r22
	cbi 0x5,2
	call LCD_send_bit
	ldi r28,lo8(8)
	ldi r29,0
	ldi r17,lo8(-128)
.L6:
	mov r24,r17
	and r24,r16
	call LCD_send_bit
	lsr r17
	sbiw r28,1
	sbiw r28,0
	brne .L6
	sbi 0x5,2
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	LCD_send_byte, .-LCD_send_byte
.global	LCD_send_command
	.type	LCD_send_command, @function
LCD_send_command:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,0
	call LCD_send_byte
	ret
	.size	LCD_send_command, .-LCD_send_command
.global	LCD_send_data
	.type	LCD_send_data, @function
LCD_send_data:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(1)
	call LCD_send_byte
	ret
	.size	LCD_send_data, .-LCD_send_data
.global	LCD_Clear_Screen
	.type	LCD_Clear_Screen, @function
LCD_Clear_Screen:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r24,lo8(64)
	call LCD_send_command
	ldi r24,lo8(-80)
	call LCD_send_command
	ldi r24,lo8(16)
	call LCD_send_command
	ldi r24,0
	call LCD_send_command
	ldi r28,lo8(96)
	ldi r29,lo8(3)
.L11:
	ldi r24,0
	call LCD_send_data
	sbiw r28,1
	sbiw r28,0
	brne .L11
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	LCD_Clear_Screen, .-LCD_Clear_Screen
.global	LCD_initialize2
	.type	LCD_initialize2, @function
LCD_initialize2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0x4
	ori r24,lo8(60)
	out 0x4,r24
	cbi 0x5,2
	ldi r24,lo8(9999)
	ldi r25,hi8(9999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
	cbi 0x5,4
	ldi r24,lo8(19999)
	ldi r25,hi8(19999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
	sbi 0x5,4
	ldi r24,lo8(32)
	call LCD_send_command
	ldi r24,lo8(-112)
	call LCD_send_command
	ldi r24,lo8(-92)
	call LCD_send_command
	ldi r24,lo8(47)
	call LCD_send_command
	ldi r24,lo8(64)
	call LCD_send_command
	ldi r24,lo8(-80)
	call LCD_send_command
	ldi r24,lo8(16)
	call LCD_send_command
	ldi r24,0
	call LCD_send_command
	ldi r24,lo8(-56)
	call LCD_send_command
	ldi r24,lo8(-95)
	call LCD_send_command
	ldi r24,lo8(-84)
	call LCD_send_command
	ldi r24,lo8(7)
	call LCD_send_command
	ldi r24,lo8(-81)
	call LCD_send_command
	call LCD_Clear_Screen
	ldi r24,lo8(-89)
	call LCD_send_command
	ldi r25,lo8(799999)
	ldi r18,hi8(799999)
	ldi r24,hlo8(799999)
	1: subi r25,1
	sbci r18,0
	sbci r24,0
	brne 1b
	rjmp .
	nop
	ldi r24,lo8(-90)
	call LCD_send_command
	ldi r25,lo8(1599999)
	ldi r18,hi8(1599999)
	ldi r24,hlo8(1599999)
	1: subi r25,1
	sbci r18,0
	sbci r24,0
	brne 1b
	rjmp .
	nop
	ret
	.size	LCD_initialize2, .-LCD_initialize2
.global	LCD_Update
	.type	LCD_Update, @function
LCD_Update:
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
/* stack size = 11 */
.L__stack_usage = 11
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r9,__zero_reg__
	ldi r24,0
	ldi r25,0
.L17:
	movw r12,r24
	ldi r18,8
	add r12,r18
	adc r13,__zero_reg__
	lds r18,yUpdateMin
	clr r19
	sbrc r18,7
	com r19
	cp r18,r12
	cpc r19,r13
	brge .L14
	lds r18,yUpdateMax
	clr r19
	sbrc r18,7
	com r19
	cp r18,r24
	cpc r19,r25
	brlt .L15
	mov r24,r9
	ori r24,lo8(-80)
	call LCD_send_command
	lds r17,xUpdateMin
	mov r28,r17
	clr r29
	sbrc r28,7
	com r29
	lds r14,xUpdateMax
	clr r15
	sbrc r14,7
	com r15
	movw r24,r28
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	asr r25
	ror r24
	ori r24,lo8(16)
	call LCD_send_command
	mov r24,r17
	andi r24,lo8(15)
	call LCD_send_command
	cp r14,r28
	cpc r15,r29
	brlt .L14
	movw r16,r28
	add r16,r10
	adc r17,r11
	subi r16,lo8(-(LCDCache))
	sbci r17,hi8(-(LCDCache))
.L16:
	movw r30,r16
	ld r24,Z+
	movw r16,r30
	call LCD_send_data
	adiw r28,1
	cp r14,r28
	cpc r15,r29
	brge .L16
.L14:
	inc r9
	ldi r31,96
	add r10,r31
	adc r11,__zero_reg__
	ldi r18,72
	cp r12,r18
	cpc r13,__zero_reg__
	breq .L15
	movw r24,r12
	rjmp .L17
.L15:
	ldi r24,lo8(95)
	sts xUpdateMin,r24
	sts xUpdateMax,__zero_reg__
	ldi r24,lo8(64)
	sts yUpdateMin,r24
	sts yUpdateMax,__zero_reg__
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
	ret
	.size	LCD_Update, .-LCD_Update
.global	LCD_UpdateBox
	.type	LCD_UpdateBox, @function
LCD_UpdateBox:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,xUpdateMin
	clr r31
	sbrc r30,7
	com r31
	cp r24,r30
	cpc r25,r31
	brge .L19
	sts xUpdateMin,r24
.L19:
	lds r24,xUpdateMax
	clr r25
	sbrc r24,7
	com r25
	cp r24,r20
	cpc r25,r21
	brge .L20
	sts xUpdateMax,r20
.L20:
	lds r24,yUpdateMin
	clr r25
	sbrc r24,7
	com r25
	cp r22,r24
	cpc r23,r25
	brge .L21
	sts yUpdateMin,r22
.L21:
	lds r24,yUpdateMax
	clr r25
	sbrc r24,7
	com r25
	cp r24,r18
	cpc r25,r19
	brge .L18
	sts yUpdateMax,r18
.L18:
	ret
	.size	LCD_UpdateBox, .-LCD_UpdateBox
.global	LCD_Clear
	.type	LCD_Clear, @function
LCD_Clear:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r30,lo8(LCDCache)
	ldi r31,hi8(LCDCache)
	ldi r24,lo8(LCDCache+864)
	ldi r25,hi8(LCDCache+864)
.L25:
	st Z+,__zero_reg__
	cp r30,r24
	cpc r31,r25
	brne .L25
	ldi r18,lo8(64)
	ldi r19,0
	ldi r20,lo8(95)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call LCD_UpdateBox
	sts Cursor_X,__zero_reg__
	sts Cursor_Y,__zero_reg__
	sts x+1,__zero_reg__
	sts x,__zero_reg__
	sts y+1,__zero_reg__
	sts y,__zero_reg__
	ret
	.size	LCD_Clear, .-LCD_Clear
.global	LCD_drawPixel
	.type	LCD_drawPixel, @function
LCD_drawPixel:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,96
	cpc r25,__zero_reg__
	brlo .+2
	rjmp .L26
	cpi r22,65
	cpc r23,__zero_reg__
	brlo .+2
	rjmp .L26
	or r20,r21
	breq .L28
	movw r18,r22
	tst r23
	brge .L29
	subi r18,-7
	sbci r19,-1
.L29:
	asr r19
	ror r18
	asr r19
	ror r18
	asr r19
	ror r18
	ldi r20,lo8(96)
	mul r20,r18
	movw r30,r0
	mul r20,r19
	add r31,r0
	clr __zero_reg__
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(LCDCache))
	sbci r31,hi8(-(LCDCache))
	movw r18,r22
	andi r18,7
	andi r19,128
	tst r19
	brge .L30
	subi r18,1
	sbc r19,__zero_reg__
	ori r18,248
	ori r19,255
	subi r18,-1
	sbci r19,-1
.L30:
	ldi r20,lo8(1)
	ldi r21,0
	movw r26,r20
	rjmp 2f
	1:
	lsl r26
	rol r27
	2:
	dec r18
	brpl 1b
	movw r18,r26
	ld r19,Z
	or r18,r19
	st Z,r18
	rjmp .L31
.L28:
	movw r18,r22
	tst r23
	brge .L32
	subi r18,-7
	sbci r19,-1
.L32:
	asr r19
	ror r18
	asr r19
	ror r18
	asr r19
	ror r18
	ldi r20,lo8(96)
	mul r20,r18
	movw r30,r0
	mul r20,r19
	add r31,r0
	clr __zero_reg__
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(LCDCache))
	sbci r31,hi8(-(LCDCache))
	movw r18,r22
	andi r18,7
	andi r19,128
	tst r19
	brge .L33
	subi r18,1
	sbc r19,__zero_reg__
	ori r18,248
	ori r19,255
	subi r18,-1
	sbci r19,-1
.L33:
	ldi r20,lo8(1)
	ldi r21,0
	movw r26,r20
	rjmp 2f
	1:
	lsl r26
	rol r27
	2:
	dec r18
	brpl 1b
	movw r18,r26
	com r18
	ld r19,Z
	and r18,r19
	st Z,r18
.L31:
	movw r18,r22
	movw r20,r24
	call LCD_UpdateBox
.L26:
	ret
	.size	LCD_drawPixel, .-LCD_drawPixel
.global	LCD_set_position2
	.type	LCD_set_position2, @function
LCD_set_position2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	ldi r19,0
	sts x+1,r19
	sts x,r18
	mov r18,r22
	ldi r19,0
	sts y+1,r19
	sts y,r18
	lds r25,textsize
	mov r18,r25
	lsl r18
	add r18,r25
	lsl r18
	mul r18,r24
	mov r24,r0
	clr r1
	sts Cursor_X,r24
	lsl r25
	lsl r25
	lsl r25
	mul r25,r22
	mov r22,r0
	clr r1
	sts Cursor_Y,r22
	ret
	.size	LCD_set_position2, .-LCD_set_position2
.global	LCD_drawLine
	.type	LCD_drawLine, @function
LCD_drawLine:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 18 */
.L__stack_usage = 18
	movw r28,r24
	movw r14,r22
	movw r12,r20
	movw r24,r18
	sub r24,r22
	sbc r25,r23
	movw r20,r24
	brpl .L36
	clr r20
	clr r21
	sub r20,r24
	sbc r21,r25
.L36:
	movw r22,r12
	sub r22,r28
	sbc r23,r29
	movw r24,r22
	tst r25
	brge .L37
	clr r24
	clr r25
	sub r24,r22
	sbc r25,r23
.L37:
	ldi r23,lo8(1)
	ldi r22,0
	cp r24,r20
	cpc r25,r21
	brlt .L38
	ldi r23,0
.L38:
	mov r10,r23
	mov r11,r22
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .L39
	mov r25,r12
	mov r24,r13
	movw r12,r18
	mov r18,r25
	mov r19,r24
	mov r25,r28
	mov r24,r29
	movw r28,r14
	mov r14,r25
	mov r15,r24
.L39:
	cp r12,r28
	cpc r13,r29
	brge .L40
	mov r25,r14
	mov r24,r15
	movw r14,r18
	mov r18,r25
	mov r19,r24
	mov r25,r28
	mov r24,r29
	movw r28,r12
	mov r12,r25
	mov r13,r24
.L40:
	movw r2,r12
	sub r2,r28
	sbc r3,r29
	movw r24,r18
	sub r24,r14
	sbc r25,r15
	movw r6,r24
	brpl .L41
	clr r6
	clr r7
	sub r6,r24
	sbc r7,r25
.L41:
	movw r8,r2
	tst r3
	brge .L42
	ldi r24,-1
	sub r8,r24
	sbc r9,r24
.L42:
	asr r9
	ror r8
	cp r14,r18
	cpc r15,r19
	brge .L51
	clr r4
	inc r4
	mov r5,__zero_reg__
	rjmp .L43
.L51:
	clr r4
	dec r4
	mov r5,r4
.L43:
	cp r12,r28
	cpc r13,r29
	brlt .L35
.L48:
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .L45
	movw r20,r16
	movw r22,r28
	movw r24,r14
	call LCD_drawPixel
	rjmp .L46
.L45:
	movw r20,r16
	movw r22,r14
	movw r24,r28
	call LCD_drawPixel
.L46:
	sub r8,r6
	sbc r9,r7
	brpl .L47
	add r14,r4
	adc r15,r5
	add r8,r2
	adc r9,r3
.L47:
	adiw r28,1
	cp r12,r28
	cpc r13,r29
	brge .L48
.L35:
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
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	LCD_drawLine, .-LCD_drawLine
.global	LCD_drawFastVLine
	.type	LCD_drawFastVLine, @function
LCD_drawFastVLine:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r16,r18
	movw r18,r22
	add r18,r20
	adc r19,r21
	subi r18,1
	sbc r19,__zero_reg__
	movw r20,r24
	call LCD_drawLine
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	LCD_drawFastVLine, .-LCD_drawFastVLine
.global	LCD_fillRect
	.type	LCD_fillRect, @function
LCD_fillRect:
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
	movw r28,r24
	movw r10,r22
	movw r12,r18
	movw r14,r24
	add r14,r20
	adc r15,r21
	cp r24,r14
	cpc r25,r15
	brge .L53
.L55:
	movw r18,r16
	movw r20,r12
	movw r22,r10
	movw r24,r28
	call LCD_drawFastVLine
	adiw r28,1
	cp r28,r14
	cpc r29,r15
	brlt .L55
.L53:
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
	.size	LCD_fillRect, .-LCD_fillRect
.global	LCD_drawChar
	.type	LCD_drawChar, @function
LCD_drawChar:
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
/* stack size = 30 */
.L__stack_usage = 30
	movw r2,r18
	cpi r24,96
	cpc r25,__zero_reg__
	brlt .+2
	rjmp .L56
	cpi r22,65
	cpc r23,__zero_reg__
	brlt .+2
	rjmp .L56
	mov r10,r14
	mov r11,__zero_reg__
	movw r18,r10
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r18,r10
	adc r19,r11
	add r18,r24
	adc r19,r25
	subi r18,1
	sbc r19,__zero_reg__
	tst r19
	brge .+2
	rjmp .L56
	movw r18,r10
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r18,r22
	adc r19,r23
	subi r18,1
	sbc r19,__zero_reg__
	tst r19
	brge .+2
	rjmp .L56
	ldi r21,0
	movw r18,r20
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r20,r18
	adc r21,r19
	movw r8,r10
	std Y+3,r25
	std Y+2,r24
	std Y+5,r25
	std Y+4,r24
	std Y+6,__zero_reg__
	subi r20,lo8(-(font))
	sbci r21,hi8(-(font))
	movw r18,r20
	sub r18,r24
	sbc r19,r25
	std Y+10,r19
	std Y+9,r18
	std Y+7,r22
	std Y+8,r23
	movw r4,r16
	mov r17,r14
.L64:
	ldd r19,Y+6
	cpi r19,lo8(5)
	brne .+2
	rjmp .L66
	ldd r30,Y+9
	ldd r31,Y+10
	ldd r24,Y+2
	ldd r25,Y+3
	add r30,r24
	adc r31,r25
/* #APP */
 ;  377 "../lcd/lcd.c" 1
	lpm r16, Z
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L58
.L65:
	ldd r25,Y+12
	sbrs r25,0
	rjmp .L59
	ldd r26,Y+11
	cpi r26,lo8(1)
	brne .L60
	movw r20,r2
	movw r22,r12
	ldd r24,Y+2
	ldd r25,Y+3
	call LCD_drawPixel
	rjmp .L61
.L60:
	movw r16,r2
	movw r18,r10
	movw r20,r10
	movw r22,r14
	ldd r24,Y+1
	mov r25,r6
	call LCD_fillRect
	rjmp .L61
.L59:
	cp r4,r2
	cpc r5,r3
	breq .L61
	ldd r27,Y+11
	cpi r27,lo8(1)
	brne .L62
	movw r20,r4
	movw r22,r12
	ldd r24,Y+2
	ldd r25,Y+3
	call LCD_drawPixel
	rjmp .L61
.L62:
	movw r16,r4
	movw r18,r10
	movw r20,r10
	movw r22,r14
	ldd r24,Y+1
	mov r25,r6
	call LCD_fillRect
.L61:
	ldd r30,Y+12
	lsr r30
	std Y+12,r30
	dec r7
	add r14,r8
	adc r15,r9
	ldi r31,-1
	sub r12,r31
	sbc r13,r31
	cpse r7,__zero_reg__
	rjmp .L65
	ldd r17,Y+11
	ldd r18,Y+6
	subi r18,lo8(-(1))
	std Y+6,r18
	ldd r24,Y+4
	ldd r25,Y+5
	add r24,r8
	adc r25,r9
	std Y+5,r25
	std Y+4,r24
	ldd r26,Y+2
	ldd r27,Y+3
	adiw r26,1
	std Y+3,r27
	std Y+2,r26
	cpi r18,lo8(6)
	breq .+2
	rjmp .L64
	rjmp .L56
.L66:
	ldi r16,0
.L58:
	ldd r27,Y+4
	std Y+1,r27
	ldd r6,Y+5
	ldd r14,Y+7
	ldd r15,Y+8
	mov r12,r14
	mov r13,r15
	set
	clr r7
	bld r7,3
	std Y+12,r16
	std Y+11,r17
	rjmp .L65
.L56:
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
	.size	LCD_drawChar, .-LCD_drawChar
.global	LCD_write2
	.type	LCD_write2, @function
LCD_write2:
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
	lds r28,textsize
	lds r22,Cursor_Y
	clr r23
	sbrc r22,7
	com r23
	lds r25,Cursor_X
	mov r14,r28
	ldi r16,0
	ldi r17,0
	ldi r18,lo8(-1)
	ldi r19,0
	mov r20,r24
	mov r24,r25
	clr r25
	sbrc r24,7
	com r25
	call LCD_drawChar
	mov r14,r28
	mov r15,__zero_reg__
	movw r28,r14
	lsl r28
	rol r29
	add r28,r14
	adc r29,r15
	lsl r28
	rol r29
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
	lds r24,x
	lds r25,x+1
	adiw r24,1
	cpi r24,16
	cpc r25,__zero_reg__
	brsh .L68
	sts x+1,r25
	sts x,r24
	rjmp .L69
.L68:
	sts x+1,__zero_reg__
	sts x,__zero_reg__
	lds r24,y
	lds r25,y+1
	cpi r24,7
	cpc r25,__zero_reg__
	brsh .L70
	adiw r24,1
	sts y+1,r25
	sts y,r24
	rjmp .L69
.L70:
	call LCD_Clear
.L69:
	lds r24,x
	mul r24,r28
	mov r28,r0
	clr r1
	sts Cursor_X,r28
	lds r24,y
	mul r24,r14
	mov r14,r0
	clr r1
	sts Cursor_Y,r14
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	LCD_write2, .-LCD_write2
.global	LCD_draw_string2
	.type	LCD_draw_string2, @function
LCD_draw_string2:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	ld r24,Y
	tst r24
	breq .L71
	ldi r17,0
.L73:
	call LCD_write2
	subi r17,lo8(-(1))
	movw r30,r28
	add r30,r17
	adc r31,__zero_reg__
	ld r24,Z
	cpse r24,__zero_reg__
	rjmp .L73
.L71:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	LCD_draw_string2, .-LCD_draw_string2
.global	LCD_draw_string3
	.type	LCD_draw_string3, @function
LCD_draw_string3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(16)
	ldi r21,0
	movw r22,r24
	ldi r24,lo8(wbuffer)
	ldi r25,hi8(wbuffer)
	call strncpy_P
	sts wbuffer+16,__zero_reg__
	ldi r24,lo8(wbuffer)
	ldi r25,hi8(wbuffer)
	call LCD_draw_string2
	ret
	.size	LCD_draw_string3, .-LCD_draw_string3
.global	LCD_drawFastHLine
	.type	LCD_drawFastHLine, @function
LCD_drawFastHLine:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	add r20,r24
	adc r21,r25
	subi r20,1
	sbc r21,__zero_reg__
	movw r16,r18
	movw r18,r22
	call LCD_drawLine
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	LCD_drawFastHLine, .-LCD_drawFastHLine
.global	LCD_setTextSize
	.type	LCD_setTextSize, @function
LCD_setTextSize:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpse r24,__zero_reg__
	rjmp .L77
	ldi r24,lo8(1)
.L77:
	sts textsize,r24
	ret
	.size	LCD_setTextSize, .-LCD_setTextSize
.global	NoneFunc
	.type	NoneFunc, @function
NoneFunc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.size	NoneFunc, .-NoneFunc
.global	LcdPutInt
	.type	LcdPutInt, @function
LcdPutInt:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 17 */
/* stack size = 19 */
.L__stack_usage = 19
	ldi r20,lo8(10)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call __itoa_ncheck
	movw r24,r28
	adiw r24,1
	call LCD_draw_string2
/* epilogue start */
	adiw r28,17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	LcdPutInt, .-LcdPutInt
.global	LcdNextStr
	.type	LcdNextStr, @function
LcdNextStr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r22,y
	lds r23,y+1
	cpi r22,7
	cpc r23,__zero_reg__
	brsh .L82
	subi r22,-1
	sbci r23,-1
	sts y+1,r23
	sts y,r22
	ldi r24,0
	call LCD_set_position2
	ret
.L82:
	call LCD_Clear
	ret
	.size	LcdNextStr, .-LcdNextStr
.global	LcdFirstLine
	.type	LcdFirstLine, @function
LcdFirstLine:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,0
	ldi r24,0
	call LCD_set_position2
	ret
	.size	LcdFirstLine, .-LcdFirstLine
.global	ReturnXPos
	.type	ReturnXPos, @function
ReturnXPos:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,0
	lds r18,x
	lds r19,x+1
	cp r18,r24
	cpc r19,r25
	brlo .L86
	sub r18,r24
	sbc r19,r25
	sts x+1,r19
	sts x,r18
	rjmp .L87
.L86:
	lds r20,y
	lds r21,y+1
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L88
	subi r20,1
	sbc r21,__zero_reg__
	sts y+1,r21
	sts y,r20
.L88:
	subi r18,-16
	sbci r19,-1
	sub r18,r24
	sbc r19,r25
	sts x+1,r19
	sts x,r18
.L87:
	lds r22,y
	lds r24,x
	call LCD_set_position2
	ret
	.size	ReturnXPos, .-ReturnXPos
.global	LcdWrite
	.type	LcdWrite, @function
LcdWrite:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(10)
	brne .L90
	call LcdNextStr
	rjmp .L91
.L90:
	cpi r24,lo8(32)
	brlo .L91
	call LCD_write2
.L91:
	ldi r24,0
	ldi r25,0
	ret
	.size	LcdWrite, .-LcdWrite
	.section	.progmem.data,"a",@progbits
	.type	font, @object
	.size	font, 1275
font:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	62
	.byte	91
	.byte	79
	.byte	91
	.byte	62
	.byte	62
	.byte	107
	.byte	79
	.byte	107
	.byte	62
	.byte	28
	.byte	62
	.byte	124
	.byte	62
	.byte	28
	.byte	24
	.byte	60
	.byte	126
	.byte	60
	.byte	24
	.byte	28
	.byte	87
	.byte	125
	.byte	87
	.byte	28
	.byte	28
	.byte	94
	.byte	127
	.byte	94
	.byte	28
	.byte	0
	.byte	24
	.byte	60
	.byte	24
	.byte	0
	.byte	-1
	.byte	-25
	.byte	-61
	.byte	-25
	.byte	-1
	.byte	0
	.byte	24
	.byte	36
	.byte	24
	.byte	0
	.byte	-1
	.byte	-25
	.byte	-37
	.byte	-25
	.byte	-1
	.byte	48
	.byte	72
	.byte	58
	.byte	6
	.byte	14
	.byte	38
	.byte	41
	.byte	121
	.byte	41
	.byte	38
	.byte	64
	.byte	127
	.byte	5
	.byte	5
	.byte	7
	.byte	64
	.byte	127
	.byte	5
	.byte	37
	.byte	63
	.byte	90
	.byte	60
	.byte	-25
	.byte	60
	.byte	90
	.byte	127
	.byte	62
	.byte	28
	.byte	28
	.byte	8
	.byte	8
	.byte	28
	.byte	28
	.byte	62
	.byte	127
	.byte	20
	.byte	34
	.byte	127
	.byte	34
	.byte	20
	.byte	95
	.byte	95
	.byte	0
	.byte	95
	.byte	95
	.byte	6
	.byte	9
	.byte	127
	.byte	1
	.byte	127
	.byte	0
	.byte	102
	.byte	-119
	.byte	-107
	.byte	106
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	96
	.byte	-108
	.byte	-94
	.byte	-1
	.byte	-94
	.byte	-108
	.byte	8
	.byte	4
	.byte	126
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	126
	.byte	32
	.byte	16
	.byte	8
	.byte	8
	.byte	42
	.byte	28
	.byte	8
	.byte	8
	.byte	28
	.byte	42
	.byte	8
	.byte	8
	.byte	30
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	12
	.byte	30
	.byte	12
	.byte	30
	.byte	12
	.byte	48
	.byte	56
	.byte	62
	.byte	56
	.byte	48
	.byte	6
	.byte	14
	.byte	62
	.byte	14
	.byte	6
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
	.byte	35
	.byte	19
	.byte	8
	.byte	100
	.byte	98
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
	.byte	80
	.byte	48
	.byte	0
	.byte	0
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
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
	.byte	16
	.byte	8
	.byte	8
	.byte	16
	.byte	8
	.byte	120
	.byte	70
	.byte	65
	.byte	70
	.byte	120
	.byte	30
	.byte	-95
	.byte	-95
	.byte	97
	.byte	18
	.byte	58
	.byte	64
	.byte	64
	.byte	32
	.byte	122
	.byte	56
	.byte	84
	.byte	84
	.byte	85
	.byte	89
	.byte	33
	.byte	85
	.byte	85
	.byte	121
	.byte	65
	.byte	33
	.byte	84
	.byte	84
	.byte	120
	.byte	65
	.byte	33
	.byte	85
	.byte	84
	.byte	120
	.byte	64
	.byte	32
	.byte	84
	.byte	85
	.byte	121
	.byte	64
	.byte	12
	.byte	30
	.byte	82
	.byte	114
	.byte	18
	.byte	57
	.byte	85
	.byte	85
	.byte	85
	.byte	89
	.byte	57
	.byte	84
	.byte	84
	.byte	84
	.byte	89
	.byte	57
	.byte	85
	.byte	84
	.byte	84
	.byte	88
	.byte	0
	.byte	0
	.byte	69
	.byte	124
	.byte	65
	.byte	0
	.byte	2
	.byte	69
	.byte	125
	.byte	66
	.byte	0
	.byte	1
	.byte	69
	.byte	124
	.byte	64
	.byte	-16
	.byte	41
	.byte	36
	.byte	41
	.byte	-16
	.byte	-16
	.byte	40
	.byte	37
	.byte	40
	.byte	-16
	.byte	124
	.byte	84
	.byte	85
	.byte	69
	.byte	0
	.byte	32
	.byte	84
	.byte	84
	.byte	124
	.byte	84
	.byte	124
	.byte	10
	.byte	9
	.byte	127
	.byte	73
	.byte	50
	.byte	73
	.byte	73
	.byte	73
	.byte	50
	.byte	50
	.byte	72
	.byte	72
	.byte	72
	.byte	50
	.byte	50
	.byte	74
	.byte	72
	.byte	72
	.byte	48
	.byte	58
	.byte	65
	.byte	65
	.byte	33
	.byte	122
	.byte	58
	.byte	66
	.byte	64
	.byte	32
	.byte	120
	.byte	0
	.byte	-99
	.byte	-96
	.byte	-96
	.byte	125
	.byte	57
	.byte	68
	.byte	68
	.byte	68
	.byte	57
	.byte	61
	.byte	64
	.byte	64
	.byte	64
	.byte	61
	.byte	60
	.byte	36
	.byte	-1
	.byte	36
	.byte	36
	.byte	72
	.byte	126
	.byte	73
	.byte	67
	.byte	102
	.byte	43
	.byte	47
	.byte	-4
	.byte	47
	.byte	43
	.byte	-1
	.byte	9
	.byte	41
	.byte	-10
	.byte	32
	.byte	-64
	.byte	-120
	.byte	126
	.byte	9
	.byte	3
	.byte	32
	.byte	84
	.byte	84
	.byte	121
	.byte	65
	.byte	0
	.byte	0
	.byte	68
	.byte	125
	.byte	65
	.byte	48
	.byte	72
	.byte	72
	.byte	74
	.byte	50
	.byte	56
	.byte	64
	.byte	64
	.byte	34
	.byte	122
	.byte	0
	.byte	122
	.byte	10
	.byte	10
	.byte	114
	.byte	125
	.byte	13
	.byte	25
	.byte	49
	.byte	125
	.byte	38
	.byte	41
	.byte	41
	.byte	47
	.byte	40
	.byte	38
	.byte	41
	.byte	41
	.byte	41
	.byte	38
	.byte	48
	.byte	72
	.byte	77
	.byte	64
	.byte	32
	.byte	56
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	56
	.byte	47
	.byte	16
	.byte	-56
	.byte	-84
	.byte	-70
	.byte	47
	.byte	16
	.byte	40
	.byte	52
	.byte	-6
	.byte	0
	.byte	0
	.byte	123
	.byte	0
	.byte	0
	.byte	8
	.byte	20
	.byte	42
	.byte	20
	.byte	34
	.byte	34
	.byte	20
	.byte	42
	.byte	20
	.byte	8
	.byte	-86
	.byte	0
	.byte	85
	.byte	0
	.byte	-86
	.byte	-86
	.byte	85
	.byte	-86
	.byte	85
	.byte	-86
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	16
	.byte	16
	.byte	16
	.byte	-1
	.byte	0
	.byte	20
	.byte	20
	.byte	20
	.byte	-1
	.byte	0
	.byte	16
	.byte	16
	.byte	-1
	.byte	0
	.byte	-1
	.byte	16
	.byte	16
	.byte	-16
	.byte	16
	.byte	-16
	.byte	20
	.byte	20
	.byte	20
	.byte	-4
	.byte	0
	.byte	20
	.byte	20
	.byte	-9
	.byte	0
	.byte	-1
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	-1
	.byte	20
	.byte	20
	.byte	-12
	.byte	4
	.byte	-4
	.byte	20
	.byte	20
	.byte	23
	.byte	16
	.byte	31
	.byte	16
	.byte	16
	.byte	31
	.byte	16
	.byte	31
	.byte	20
	.byte	20
	.byte	20
	.byte	31
	.byte	0
	.byte	16
	.byte	16
	.byte	16
	.byte	-16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	31
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	-16
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	-1
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	-1
	.byte	0
	.byte	0
	.byte	31
	.byte	16
	.byte	23
	.byte	0
	.byte	0
	.byte	-4
	.byte	4
	.byte	-12
	.byte	20
	.byte	20
	.byte	23
	.byte	16
	.byte	23
	.byte	20
	.byte	20
	.byte	-12
	.byte	4
	.byte	-12
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	-9
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	-9
	.byte	0
	.byte	-9
	.byte	20
	.byte	20
	.byte	20
	.byte	23
	.byte	20
	.byte	16
	.byte	16
	.byte	31
	.byte	16
	.byte	31
	.byte	20
	.byte	20
	.byte	20
	.byte	-12
	.byte	20
	.byte	16
	.byte	16
	.byte	-16
	.byte	16
	.byte	-16
	.byte	0
	.byte	0
	.byte	31
	.byte	16
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	-4
	.byte	20
	.byte	0
	.byte	0
	.byte	-16
	.byte	16
	.byte	-16
	.byte	16
	.byte	16
	.byte	-1
	.byte	16
	.byte	-1
	.byte	20
	.byte	20
	.byte	20
	.byte	-1
	.byte	20
	.byte	16
	.byte	16
	.byte	16
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-16
	.byte	16
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-16
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	56
	.byte	68
	.byte	68
	.byte	56
	.byte	68
	.byte	124
	.byte	42
	.byte	42
	.byte	62
	.byte	20
	.byte	126
	.byte	2
	.byte	2
	.byte	6
	.byte	6
	.byte	2
	.byte	126
	.byte	2
	.byte	126
	.byte	2
	.byte	99
	.byte	85
	.byte	73
	.byte	65
	.byte	99
	.byte	56
	.byte	68
	.byte	68
	.byte	60
	.byte	4
	.byte	64
	.byte	126
	.byte	32
	.byte	30
	.byte	32
	.byte	6
	.byte	2
	.byte	126
	.byte	2
	.byte	2
	.byte	-103
	.byte	-91
	.byte	-25
	.byte	-91
	.byte	-103
	.byte	28
	.byte	42
	.byte	73
	.byte	42
	.byte	28
	.byte	76
	.byte	114
	.byte	1
	.byte	114
	.byte	76
	.byte	48
	.byte	74
	.byte	77
	.byte	77
	.byte	48
	.byte	48
	.byte	72
	.byte	120
	.byte	72
	.byte	48
	.byte	-68
	.byte	98
	.byte	90
	.byte	70
	.byte	61
	.byte	62
	.byte	73
	.byte	73
	.byte	73
	.byte	0
	.byte	126
	.byte	1
	.byte	1
	.byte	1
	.byte	126
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	68
	.byte	68
	.byte	95
	.byte	68
	.byte	68
	.byte	64
	.byte	81
	.byte	74
	.byte	68
	.byte	64
	.byte	64
	.byte	68
	.byte	74
	.byte	81
	.byte	64
	.byte	0
	.byte	0
	.byte	-1
	.byte	1
	.byte	3
	.byte	-32
	.byte	-128
	.byte	-1
	.byte	0
	.byte	0
	.byte	8
	.byte	8
	.byte	107
	.byte	107
	.byte	8
	.byte	54
	.byte	18
	.byte	54
	.byte	36
	.byte	54
	.byte	6
	.byte	15
	.byte	9
	.byte	15
	.byte	6
	.byte	0
	.byte	0
	.byte	24
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	16
	.byte	0
	.byte	48
	.byte	64
	.byte	-1
	.byte	1
	.byte	1
	.byte	0
	.byte	31
	.byte	1
	.byte	1
	.byte	30
	.byte	0
	.byte	25
	.byte	29
	.byte	23
	.byte	18
	.byte	0
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.data
	.type	textsize, @object
	.size	textsize, 1
textsize:
	.byte	1
	.local	Cursor_Y
	.comm	Cursor_Y,1,1
	.local	Cursor_X
	.comm	Cursor_X,1,1
.global	yUpdateMax
	.type	yUpdateMax, @object
	.size	yUpdateMax, 1
yUpdateMax:
	.byte	64
.global	xUpdateMax
	.type	xUpdateMax, @object
	.size	xUpdateMax, 1
xUpdateMax:
	.byte	95
.global	yUpdateMin
	.section .bss
	.type	yUpdateMin, @object
	.size	yUpdateMin, 1
yUpdateMin:
	.zero	1
.global	xUpdateMin
	.type	xUpdateMin, @object
	.size	xUpdateMin, 1
xUpdateMin:
	.zero	1
	.comm	LCDCache,864,1
.global	y
	.type	y, @object
	.size	y, 2
y:
	.zero	2
.global	x
	.type	x, @object
	.size	x, 2
x:
	.zero	2
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
