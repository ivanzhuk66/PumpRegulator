	.file	"lcd.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LCD_send_bit,"ax",@progbits
.global	LCD_send_bit
	.type	LCD_send_bit, @function
LCD_send_bit:
.LFB12:
	.file 1 "/home/izhuk/workspace/A328Pn3310DS18x20_n/n1110/lcd8814c.h"
	.loc 1 28 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 29 0
	tst r24
	breq .L2
	.loc 1 31 0
	sbi 0x5,3
	rjmp .L3
.L2:
	.loc 1 33 0
	cbi 0x5,3
.L3:
.LVL1:
.LBB20:
.LBB21:
	.file 2 "/AtmelAvrToolchain/avr/include/util/delay.h"
	.loc 2 245 0
	ldi r24,lo8(106)
	1: dec r24
	brne 1b
.LVL2:
	rjmp .
.LBE21:
.LBE20:
	.loc 1 35 0
	sbi 0x5,5
.LVL3:
.LBB22:
.LBB23:
	.loc 2 245 0
	ldi r24,lo8(53)
	1: dec r24
	brne 1b
	nop
.LBE23:
.LBE22:
	.loc 1 37 0
	cbi 0x5,5
.LVL4:
.LBB24:
.LBB25:
	.loc 2 245 0
	ldi r24,lo8(106)
	1: dec r24
	brne 1b
	rjmp .
	ret
.LBE25:
.LBE24:
	.cfi_endproc
.LFE12:
	.size	LCD_send_bit, .-LCD_send_bit
	.section	.text.LCD_send_byte,"ax",@progbits
.global	LCD_send_byte
	.type	LCD_send_byte, @function
LCD_send_byte:
.LFB13:
	.loc 1 42 0
	.cfi_startproc
.LVL5:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r24
	mov r24,r22
.LVL6:
	.loc 1 43 0
	cbi 0x5,2
	.loc 1 45 0
	call LCD_send_bit
.LVL7:
	ldi r28,lo8(8)
	ldi r29,0
.LBB26:
	.loc 1 47 0
	ldi r17,lo8(-128)
.LVL8:
.L6:
	.loc 1 49 0 discriminator 2
	mov r24,r17
	and r24,r16
	call LCD_send_bit
.LVL9:
	.loc 1 47 0 discriminator 2
	lsr r17
.LVL10:
	sbiw r28,1
	sbiw r28,0
	brne .L6
.LBE26:
	.loc 1 52 0
	sbi 0x5,2
/* epilogue start */
	.loc 1 53 0
	pop r29
	pop r28
	pop r17
.LVL11:
	pop r16
.LVL12:
	ret
	.cfi_endproc
.LFE13:
	.size	LCD_send_byte, .-LCD_send_byte
	.section	.text.LCD_send_command,"ax",@progbits
.global	LCD_send_command
	.type	LCD_send_command, @function
LCD_send_command:
.LFB14:
	.loc 1 86 0
	.cfi_startproc
.LVL13:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 87 0
	ldi r22,0
	call LCD_send_byte
.LVL14:
	ret
	.cfi_endproc
.LFE14:
	.size	LCD_send_command, .-LCD_send_command
	.section	.text.LCD_send_data,"ax",@progbits
.global	LCD_send_data
	.type	LCD_send_data, @function
LCD_send_data:
.LFB15:
	.loc 1 91 0
	.cfi_startproc
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 92 0
	ldi r22,lo8(1)
	call LCD_send_byte
.LVL16:
	ret
	.cfi_endproc
.LFE15:
	.size	LCD_send_data, .-LCD_send_data
	.section	.text.LCD_Clear_Screen,"ax",@progbits
.global	LCD_Clear_Screen
	.type	LCD_Clear_Screen, @function
LCD_Clear_Screen:
.LFB17:
	.loc 1 176 0
	.cfi_startproc
	push r28
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 177 0
	ldi r24,lo8(64)
	call LCD_send_command
.LVL17:
	.loc 1 178 0
	ldi r24,lo8(-80)
	call LCD_send_command
.LVL18:
	.loc 1 179 0
	ldi r24,lo8(16)
	call LCD_send_command
.LVL19:
	.loc 1 180 0
	ldi r24,0
	call LCD_send_command
.LVL20:
	ldi r28,lo8(96)
	ldi r29,lo8(3)
.LVL21:
.L11:
.LBB27:
	.loc 1 183 0 discriminator 2
	ldi r24,0
	call LCD_send_data
.LVL22:
	sbiw r28,1
.LVL23:
	sbiw r28,0
	brne .L11
/* epilogue start */
.LBE27:
	.loc 1 187 0
	pop r29
	pop r28
.LVL24:
	ret
	.cfi_endproc
.LFE17:
	.size	LCD_Clear_Screen, .-LCD_Clear_Screen
	.section	.text.LCD_initialize2,"ax",@progbits
.global	LCD_initialize2
	.type	LCD_initialize2, @function
LCD_initialize2:
.LFB16:
	.loc 1 137 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 138 0
	in r24,0x4
	ori r24,lo8(60)
	out 0x4,r24
	.loc 1 140 0
	cbi 0x5,2
.LVL25:
.LBB28:
.LBB29:
	.loc 2 163 0
	ldi r24,lo8(9999)
	ldi r25,hi8(9999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LBE29:
.LBE28:
	.loc 1 142 0
	cbi 0x5,4
.LVL26:
.LBB30:
.LBB31:
	.loc 2 163 0
	ldi r24,lo8(19999)
	ldi r25,hi8(19999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
.LBE31:
.LBE30:
	.loc 1 146 0
	sbi 0x5,4
	.loc 1 148 0
	ldi r24,lo8(32)
	call LCD_send_command
.LVL27:
	.loc 1 149 0
	ldi r24,lo8(-112)
	call LCD_send_command
.LVL28:
	.loc 1 150 0
	ldi r24,lo8(-92)
	call LCD_send_command
.LVL29:
	.loc 1 151 0
	ldi r24,lo8(47)
	call LCD_send_command
.LVL30:
	.loc 1 152 0
	ldi r24,lo8(64)
	call LCD_send_command
.LVL31:
	.loc 1 153 0
	ldi r24,lo8(-80)
	call LCD_send_command
.LVL32:
	.loc 1 154 0
	ldi r24,lo8(16)
	call LCD_send_command
.LVL33:
	.loc 1 155 0
	ldi r24,0
	call LCD_send_command
.LVL34:
	.loc 1 159 0
	ldi r24,lo8(-56)
	call LCD_send_command
.LVL35:
	.loc 1 161 0
	ldi r24,lo8(-95)
	call LCD_send_command
.LVL36:
	.loc 1 162 0
	ldi r24,lo8(-84)
	call LCD_send_command
.LVL37:
	.loc 1 163 0
	ldi r24,lo8(7)
	call LCD_send_command
.LVL38:
	.loc 1 165 0
	ldi r24,lo8(-81)
	call LCD_send_command
.LVL39:
	.loc 1 167 0
	call LCD_Clear_Screen
.LVL40:
	.loc 1 169 0
	ldi r24,lo8(-89)
	call LCD_send_command
.LVL41:
.LBB32:
.LBB33:
	.loc 2 163 0
	ldi r25,lo8(799999)
	ldi r18,hi8(799999)
	ldi r24,hlo8(799999)
	1: subi r25,1
	sbci r18,0
	sbci r24,0
	brne 1b
	rjmp .
	nop
.LBE33:
.LBE32:
	.loc 1 171 0
	ldi r24,lo8(-90)
	call LCD_send_command
.LVL42:
.LBB34:
.LBB35:
	.loc 2 163 0
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
.LBE35:
.LBE34:
	.cfi_endproc
.LFE16:
	.size	LCD_initialize2, .-LCD_initialize2
	.section	.text.LCD_Update,"ax",@progbits
.global	LCD_Update
	.type	LCD_Update, @function
LCD_Update:
.LFB18:
	.loc 1 191 0
	.cfi_startproc
	push r9
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 9, -2
	push r10
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 10, -3
	push r11
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 11, -4
	push r12
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 12, -5
	push r13
.LCFI10:
	.cfi_def_cfa_offset 7
	.cfi_offset 13, -6
	push r14
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -7
	push r15
.LCFI12:
	.cfi_def_cfa_offset 9
	.cfi_offset 15, -8
	push r16
.LCFI13:
	.cfi_def_cfa_offset 10
	.cfi_offset 16, -9
	push r17
.LCFI14:
	.cfi_def_cfa_offset 11
	.cfi_offset 17, -10
	push r28
.LCFI15:
	.cfi_def_cfa_offset 12
	.cfi_offset 28, -11
	push r29
.LCFI16:
	.cfi_def_cfa_offset 13
	.cfi_offset 29, -12
/* prologue: function */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
.LVL43:
	.loc 1 191 0
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r9,__zero_reg__
	ldi r24,0
	ldi r25,0
.LVL44:
.L17:
	movw r12,r24
	ldi r18,8
	add r12,r18
	adc r13,__zero_reg__
.LBB36:
.LBB37:
	.loc 1 193 0
	lds r18,yUpdateMin
	clr r19
	sbrc r18,7
	com r19
	cp r18,r12
	cpc r19,r13
	brge .L14
	.loc 1 196 0
	lds r18,yUpdateMax
	clr r19
	sbrc r18,7
	com r19
	cp r18,r24
	cpc r19,r25
	brlt .L15
	.loc 1 200 0
	mov r24,r9
	ori r24,lo8(-80)
	call LCD_send_command
.LVL45:
	.loc 1 202 0
	lds r17,xUpdateMin
	mov r28,r17
	clr r29
	sbrc r28,7
	com r29
.LVL46:
	.loc 1 203 0
	lds r14,xUpdateMax
	clr r15
	sbrc r14,7
	com r15
.LVL47:
	.loc 1 206 0
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
.LVL48:
	.loc 1 208 0
	mov r24,r17
	andi r24,lo8(15)
	call LCD_send_command
.LVL49:
	.loc 1 212 0
	cp r14,r28
	cpc r15,r29
	brlt .L14
.LBE37:
.LBE36:
	.loc 1 213 0
	movw r16,r28
	add r16,r10
	adc r17,r11
	subi r16,lo8(-(LCDCache))
	sbci r17,hi8(-(LCDCache))
.L16:
.LBB39:
.LBB38:
	.loc 1 213 0 is_stmt 0 discriminator 2
	movw r30,r16
	ld r24,Z+
	movw r16,r30
	call LCD_send_data
.LVL50:
	.loc 1 212 0 is_stmt 1 discriminator 2
	adiw r28,1
.LVL51:
	cp r14,r28
	cpc r15,r29
	brge .L16
.LVL52:
.L14:
	inc r9
	ldi r31,96
	add r10,r31
	adc r11,__zero_reg__
.LBE38:
	.loc 1 192 0 discriminator 1
	ldi r18,72
	cp r12,r18
	cpc r13,__zero_reg__
	breq .L15
	movw r24,r12
	rjmp .L17
.L15:
.LBE39:
	.loc 1 217 0
	ldi r24,lo8(95)
	sts xUpdateMin,r24
	.loc 1 218 0
	sts xUpdateMax,__zero_reg__
	.loc 1 219 0
	ldi r24,lo8(64)
	sts yUpdateMin,r24
	.loc 1 220 0
	sts yUpdateMax,__zero_reg__
/* epilogue start */
	.loc 1 221 0
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
	.cfi_endproc
.LFE18:
	.size	LCD_Update, .-LCD_Update
	.section	.text.LCD_UpdateBox,"ax",@progbits
.global	LCD_UpdateBox
	.type	LCD_UpdateBox, @function
LCD_UpdateBox:
.LFB20:
	.file 3 "../lcd/lcd.c"
	.loc 3 319 0
	.cfi_startproc
.LVL53:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 320 0
	lds r30,xUpdateMin
	clr r31
	sbrc r30,7
	com r31
	cp r24,r30
	cpc r25,r31
	brge .L19
	.loc 3 320 0 is_stmt 0 discriminator 1
	sts xUpdateMin,r24
.L19:
	.loc 3 321 0 is_stmt 1
	lds r24,xUpdateMax
.LVL54:
	clr r25
	sbrc r24,7
	com r25
	cp r24,r20
	cpc r25,r21
	brge .L20
	.loc 3 321 0 is_stmt 0 discriminator 1
	sts xUpdateMax,r20
.L20:
	.loc 3 322 0 is_stmt 1
	lds r24,yUpdateMin
	clr r25
	sbrc r24,7
	com r25
	cp r22,r24
	cpc r23,r25
	brge .L21
	.loc 3 322 0 is_stmt 0 discriminator 1
	sts yUpdateMin,r22
.L21:
	.loc 3 323 0 is_stmt 1
	lds r24,yUpdateMax
	clr r25
	sbrc r24,7
	com r25
	cp r24,r18
	cpc r25,r19
	brge .L18
	.loc 3 323 0 is_stmt 0 discriminator 1
	sts yUpdateMax,r18
.L18:
	ret
	.cfi_endproc
.LFE20:
	.size	LCD_UpdateBox, .-LCD_UpdateBox
	.section	.text.LCD_Clear,"ax",@progbits
.global	LCD_Clear
	.type	LCD_Clear, @function
LCD_Clear:
.LFB19:
	.loc 3 307 0 is_stmt 1
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL55:
	ldi r30,lo8(LCDCache)
	ldi r31,hi8(LCDCache)
	ldi r24,lo8(LCDCache+864)
	ldi r25,hi8(LCDCache+864)
.LVL56:
.L25:
.LBB40:
	.loc 3 310 0 discriminator 2
	st Z+,__zero_reg__
.LVL57:
	.loc 3 308 0 discriminator 2
	cp r30,r24
	cpc r31,r25
	brne .L25
.LBE40:
	.loc 3 312 0
	ldi r18,lo8(64)
	ldi r19,0
	ldi r20,lo8(95)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call LCD_UpdateBox
.LVL58:
	.loc 3 313 0
	sts Cursor_X,__zero_reg__
	.loc 3 314 0
	sts Cursor_Y,__zero_reg__
	.loc 3 315 0
	sts x+1,__zero_reg__
	sts x,__zero_reg__
	.loc 3 316 0
	sts y+1,__zero_reg__
	sts y,__zero_reg__
	ret
	.cfi_endproc
.LFE19:
	.size	LCD_Clear, .-LCD_Clear
	.section	.text.LCD_drawPixel,"ax",@progbits
.global	LCD_drawPixel
	.type	LCD_drawPixel, @function
LCD_drawPixel:
.LFB21:
	.loc 3 326 0
	.cfi_startproc
.LVL59:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 327 0
	cpi r24,96
	cpc r25,__zero_reg__
	brlo .+2
	rjmp .L26
	.loc 3 327 0 is_stmt 0 discriminator 1
	cpi r22,65
	cpc r23,__zero_reg__
	brlo .+2
	rjmp .L26
	.loc 3 330 0 is_stmt 1
	or r20,r21
	breq .L28
	.loc 3 331 0
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
.LVL60:
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
.LVL61:
.L28:
	.loc 3 333 0
	movw r18,r22
	tst r23
	brge .L32
.LVL62:
	subi r18,-7
	sbci r19,-1
.LVL63:
.L32:
	asr r19
	ror r18
	asr r19
	ror r18
	asr r19
	ror r18
	ldi r20,lo8(96)
.LVL64:
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
	.loc 3 335 0
	movw r18,r22
	movw r20,r24
	call LCD_UpdateBox
.LVL65:
.L26:
	ret
	.cfi_endproc
.LFE21:
	.size	LCD_drawPixel, .-LCD_drawPixel
	.section	.text.LCD_set_position2,"ax",@progbits
.global	LCD_set_position2
	.type	LCD_set_position2, @function
LCD_set_position2:
.LFB23:
	.loc 3 399 0
	.cfi_startproc
.LVL66:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 400 0
	mov r18,r24
	ldi r19,0
	sts x+1,r19
	sts x,r18
	.loc 3 401 0
	mov r18,r22
	ldi r19,0
	sts y+1,r19
	sts y,r18
	.loc 3 402 0
	lds r25,textsize
	mov r18,r25
	lsl r18
	add r18,r25
	lsl r18
	mul r18,r24
	mov r24,r0
	clr r1
.LVL67:
	sts Cursor_X,r24
	.loc 3 403 0
	lsl r25
	lsl r25
	lsl r25
	mul r25,r22
	mov r22,r0
	clr r1
.LVL68:
	sts Cursor_Y,r22
	ret
	.cfi_endproc
.LFE23:
	.size	LCD_set_position2, .-LCD_set_position2
	.section	.text.LCD_drawLine,"ax",@progbits
.global	LCD_drawLine
	.type	LCD_drawLine, @function
LCD_drawLine:
.LFB27:
	.loc 3 457 0
	.cfi_startproc
.LVL69:
	push r2
.LCFI17:
	.cfi_def_cfa_offset 3
	.cfi_offset 2, -2
	push r3
.LCFI18:
	.cfi_def_cfa_offset 4
	.cfi_offset 3, -3
	push r4
.LCFI19:
	.cfi_def_cfa_offset 5
	.cfi_offset 4, -4
	push r5
.LCFI20:
	.cfi_def_cfa_offset 6
	.cfi_offset 5, -5
	push r6
.LCFI21:
	.cfi_def_cfa_offset 7
	.cfi_offset 6, -6
	push r7
.LCFI22:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -7
	push r8
.LCFI23:
	.cfi_def_cfa_offset 9
	.cfi_offset 8, -8
	push r9
.LCFI24:
	.cfi_def_cfa_offset 10
	.cfi_offset 9, -9
	push r10
.LCFI25:
	.cfi_def_cfa_offset 11
	.cfi_offset 10, -10
	push r11
.LCFI26:
	.cfi_def_cfa_offset 12
	.cfi_offset 11, -11
	push r12
.LCFI27:
	.cfi_def_cfa_offset 13
	.cfi_offset 12, -12
	push r13
.LCFI28:
	.cfi_def_cfa_offset 14
	.cfi_offset 13, -13
	push r14
.LCFI29:
	.cfi_def_cfa_offset 15
	.cfi_offset 14, -14
	push r15
.LCFI30:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -15
	push r16
.LCFI31:
	.cfi_def_cfa_offset 17
	.cfi_offset 16, -16
	push r17
.LCFI32:
	.cfi_def_cfa_offset 18
	.cfi_offset 17, -17
	push r28
.LCFI33:
	.cfi_def_cfa_offset 19
	.cfi_offset 28, -18
	push r29
.LCFI34:
	.cfi_def_cfa_offset 20
	.cfi_offset 29, -19
/* prologue: function */
/* frame size = 0 */
/* stack size = 18 */
.L__stack_usage = 18
	movw r28,r24
	movw r14,r22
	movw r12,r20
	.loc 3 458 0
	movw r24,r18
.LVL70:
	sub r24,r22
	sbc r25,r23
	movw r20,r24
.LVL71:
	brpl .L36
	clr r20
	clr r21
	sub r20,r24
	sbc r21,r25
.L36:
	movw r22,r12
.LVL72:
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
.LVL73:
	.loc 3 459 0
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .L39
	mov r25,r12
	mov r24,r13
.LBB41:
	.loc 3 461 0
	movw r12,r18
.LVL74:
	mov r18,r25
.LVL75:
	mov r19,r24
.LBE41:
	mov r25,r28
	mov r24,r29
.LBB42:
	.loc 3 460 0
	movw r28,r14
.LVL76:
	mov r14,r25
.LVL77:
	mov r15,r24
.LVL78:
.L39:
.LBE42:
	.loc 3 464 0
	cp r12,r28
	cpc r13,r29
	brge .L40
	mov r25,r14
	mov r24,r15
.LBB43:
	.loc 3 466 0
	movw r14,r18
.LVL79:
	mov r18,r25
.LVL80:
	mov r19,r24
.LBE43:
	mov r25,r28
	mov r24,r29
.LBB44:
	.loc 3 465 0
	movw r28,r12
.LVL81:
	mov r12,r25
.LVL82:
	mov r13,r24
.LVL83:
.L40:
.LBE44:
	.loc 3 470 0
	movw r2,r12
	sub r2,r28
	sbc r3,r29
.LVL84:
	.loc 3 471 0
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
.LVL85:
	.loc 3 473 0
	movw r8,r2
	tst r3
	brge .L42
	ldi r24,-1
	sub r8,r24
	sbc r9,r24
.L42:
	asr r9
	ror r8
.LVL86:
	.loc 3 476 0
	cp r14,r18
	cpc r15,r19
	brge .L51
	.loc 3 477 0
	clr r4
	inc r4
	mov r5,__zero_reg__
	rjmp .L43
.L51:
	.loc 3 479 0
	clr r4
	dec r4
	mov r5,r4
.L43:
.LVL87:
	.loc 3 482 0 discriminator 1
	cp r12,r28
	cpc r13,r29
	brlt .L35
.LVL88:
.L48:
	.loc 3 483 0
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .L45
	.loc 3 484 0
	movw r20,r16
	movw r22,r28
	movw r24,r14
	call LCD_drawPixel
.LVL89:
	rjmp .L46
.L45:
	.loc 3 486 0
	movw r20,r16
	movw r22,r14
	movw r24,r28
	call LCD_drawPixel
.LVL90:
.L46:
	.loc 3 488 0
	sub r8,r6
	sbc r9,r7
.LVL91:
	.loc 3 489 0
	brpl .L47
	.loc 3 490 0
	add r14,r4
	adc r15,r5
.LVL92:
	.loc 3 491 0
	add r8,r2
	adc r9,r3
.LVL93:
.L47:
	.loc 3 482 0
	adiw r28,1
.LVL94:
	cp r12,r28
	cpc r13,r29
	brge .L48
.L35:
/* epilogue start */
	.loc 3 494 0
	pop r29
	pop r28
.LVL95:
	pop r17
	pop r16
.LVL96:
	pop r15
	pop r14
.LVL97:
	pop r13
	pop r12
.LVL98:
	pop r11
	pop r10
	pop r9
	pop r8
.LVL99:
	pop r7
	pop r6
.LVL100:
	pop r5
	pop r4
.LVL101:
	pop r3
	pop r2
.LVL102:
	ret
	.cfi_endproc
.LFE27:
	.size	LCD_drawLine, .-LCD_drawLine
	.section	.text.LCD_drawFastVLine,"ax",@progbits
.global	LCD_drawFastVLine
	.type	LCD_drawFastVLine, @function
LCD_drawFastVLine:
.LFB29:
	.loc 3 502 0
	.cfi_startproc
.LVL103:
	push r16
.LCFI35:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI36:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r16,r18
	.loc 3 503 0
	movw r18,r22
.LVL104:
	add r18,r20
	adc r19,r21
	subi r18,1
	sbc r19,__zero_reg__
	movw r20,r24
.LVL105:
	call LCD_drawLine
.LVL106:
/* epilogue start */
	.loc 3 504 0
	pop r17
	pop r16
.LVL107:
	ret
	.cfi_endproc
.LFE29:
	.size	LCD_drawFastVLine, .-LCD_drawFastVLine
	.section	.text.LCD_fillRect,"ax",@progbits
.global	LCD_fillRect
	.type	LCD_fillRect, @function
LCD_fillRect:
.LFB28:
	.loc 3 496 0
	.cfi_startproc
.LVL108:
	push r10
.LCFI37:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI38:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI39:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI40:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI41:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI42:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI43:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI44:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI45:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI46:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r28,r24
	movw r10,r22
	movw r12,r18
.LVL109:
.LBB45:
	.loc 3 497 0
	movw r14,r24
	add r14,r20
	adc r15,r21
	cp r24,r14
	cpc r25,r15
	brge .L53
.LVL110:
.L55:
	.loc 3 498 0 discriminator 2
	movw r18,r16
	movw r20,r12
	movw r22,r10
	movw r24,r28
	call LCD_drawFastVLine
.LVL111:
	.loc 3 497 0 discriminator 2
	adiw r28,1
.LVL112:
	cp r28,r14
	cpc r29,r15
	brlt .L55
.L53:
/* epilogue start */
.LBE45:
	.loc 3 500 0
	pop r29
	pop r28
.LVL113:
	pop r17
	pop r16
.LVL114:
	pop r15
	pop r14
	pop r13
	pop r12
.LVL115:
	pop r11
	pop r10
.LVL116:
	ret
	.cfi_endproc
.LFE28:
	.size	LCD_fillRect, .-LCD_fillRect
	.section	.text.LCD_drawChar,"ax",@progbits
.global	LCD_drawChar
	.type	LCD_drawChar, @function
LCD_drawChar:
.LFB22:
	.loc 3 367 0
	.cfi_startproc
.LVL117:
	push r2
.LCFI47:
	.cfi_def_cfa_offset 3
	.cfi_offset 2, -2
	push r3
.LCFI48:
	.cfi_def_cfa_offset 4
	.cfi_offset 3, -3
	push r4
.LCFI49:
	.cfi_def_cfa_offset 5
	.cfi_offset 4, -4
	push r5
.LCFI50:
	.cfi_def_cfa_offset 6
	.cfi_offset 5, -5
	push r6
.LCFI51:
	.cfi_def_cfa_offset 7
	.cfi_offset 6, -6
	push r7
.LCFI52:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -7
	push r8
.LCFI53:
	.cfi_def_cfa_offset 9
	.cfi_offset 8, -8
	push r9
.LCFI54:
	.cfi_def_cfa_offset 10
	.cfi_offset 9, -9
	push r10
.LCFI55:
	.cfi_def_cfa_offset 11
	.cfi_offset 10, -10
	push r11
.LCFI56:
	.cfi_def_cfa_offset 12
	.cfi_offset 11, -11
	push r12
.LCFI57:
	.cfi_def_cfa_offset 13
	.cfi_offset 12, -12
	push r13
.LCFI58:
	.cfi_def_cfa_offset 14
	.cfi_offset 13, -13
	push r14
.LCFI59:
	.cfi_def_cfa_offset 15
	.cfi_offset 14, -14
	push r15
.LCFI60:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -15
	push r16
.LCFI61:
	.cfi_def_cfa_offset 17
	.cfi_offset 16, -16
	push r17
.LCFI62:
	.cfi_def_cfa_offset 18
	.cfi_offset 17, -17
	push r28
.LCFI63:
	.cfi_def_cfa_offset 19
	.cfi_offset 28, -18
	push r29
.LCFI64:
	.cfi_def_cfa_offset 20
	.cfi_offset 29, -19
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI65:
	.cfi_def_cfa_register 28
	sbiw r28,12
.LCFI66:
	.cfi_def_cfa_offset 32
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
	.loc 3 369 0
	cpi r24,96
	cpc r25,__zero_reg__
	brlt .+2
	rjmp .L56
	.loc 3 369 0 is_stmt 0 discriminator 1
	cpi r22,65
	cpc r23,__zero_reg__
	brlt .+2
	rjmp .L56
	mov r10,r14
	mov r11,__zero_reg__
	movw r18,r10
.LVL118:
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
.LBB46:
.LBB47:
.LBB48:
	.loc 3 377 0 is_stmt 1
	ldi r21,0
	movw r18,r20
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r20,r18
	adc r21,r19
.LVL119:
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
.LBE48:
.LBB49:
	.loc 3 383 0
	movw r4,r16
	mov r17,r14
.LVL120:
.L64:
.LBE49:
	.loc 3 374 0
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
.LBB50:
	.loc 3 377 0
/* #APP */
 ;  377 "../lcd/lcd.c" 1
	lpm r16, Z
	
 ;  0 "" 2
.LVL121:
/* #NOAPP */
	rjmp .L58
.LVL122:
.L65:
.LBE50:
.LBB51:
	.loc 3 379 0
	ldd r25,Y+12
	sbrs r25,0
	rjmp .L59
	.loc 3 380 0
	ldd r26,Y+11
	cpi r26,lo8(1)
	brne .L60
	.loc 3 381 0
	movw r20,r2
	movw r22,r12
	ldd r24,Y+2
	ldd r25,Y+3
	call LCD_drawPixel
.LVL123:
	rjmp .L61
.LVL124:
.L60:
	.loc 3 383 0
	movw r16,r2
	movw r18,r10
	movw r20,r10
	movw r22,r14
	ldd r24,Y+1
	mov r25,r6
.LVL125:
	call LCD_fillRect
.LVL126:
	rjmp .L61
.LVL127:
.L59:
	.loc 3 385 0
	cp r4,r2
	cpc r5,r3
	breq .L61
	.loc 3 386 0
	ldd r27,Y+11
	cpi r27,lo8(1)
	brne .L62
	.loc 3 387 0
	movw r20,r4
	movw r22,r12
	ldd r24,Y+2
	ldd r25,Y+3
	call LCD_drawPixel
.LVL128:
	rjmp .L61
.LVL129:
.L62:
	.loc 3 389 0
	movw r16,r4
	movw r18,r10
	movw r20,r10
	movw r22,r14
	ldd r24,Y+1
	mov r25,r6
.LVL130:
	call LCD_fillRect
.LVL131:
.L61:
	.loc 3 392 0
	ldd r30,Y+12
	lsr r30
	std Y+12,r30
.LVL132:
	dec r7
	add r14,r8
	adc r15,r9
	ldi r31,-1
	sub r12,r31
	sbc r13,r31
	.loc 3 378 0
	cpse r7,__zero_reg__
	rjmp .L65
	ldd r17,Y+11
.LBE51:
.LBE47:
	.loc 3 372 0
	ldd r18,Y+6
	subi r18,lo8(-(1))
	std Y+6,r18
.LVL133:
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
.LVL134:
.L66:
.LBB53:
	.loc 3 375 0
	ldi r16,0
.L58:
.LVL135:
.LBB52:
	.loc 3 383 0
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
.LVL136:
.L56:
/* epilogue start */
.LBE52:
.LBE53:
.LBE46:
	.loc 3 395 0
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
.LVL137:
	ret
	.cfi_endproc
.LFE22:
	.size	LCD_drawChar, .-LCD_drawChar
	.section	.text.LCD_write2,"ax",@progbits
.global	LCD_write2
	.type	LCD_write2, @function
LCD_write2:
.LFB24:
	.loc 3 406 0
	.cfi_startproc
.LVL138:
	push r14
.LCFI67:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI68:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI69:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI70:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI71:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI72:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	.loc 3 408 0
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
.LVL139:
	call LCD_drawChar
.LVL140:
	.loc 3 410 0
	mov r14,r28
	mov r15,__zero_reg__
	movw r28,r14
	lsl r28
	rol r29
	add r28,r14
	adc r29,r15
	lsl r28
	rol r29
.LVL141:
	.loc 3 411 0
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
	.loc 3 413 0
	lds r24,x
	lds r25,x+1
	adiw r24,1
	cpi r24,16
	cpc r25,__zero_reg__
	brsh .L68
	.loc 3 413 0 is_stmt 0 discriminator 1
	sts x+1,r25
	sts x,r24
	rjmp .L69
.L68:
	.loc 3 414 0 is_stmt 1
	sts x+1,__zero_reg__
	sts x,__zero_reg__
	.loc 3 415 0
	lds r24,y
	lds r25,y+1
	cpi r24,7
	cpc r25,__zero_reg__
	brsh .L70
	.loc 3 415 0 is_stmt 0 discriminator 1
	adiw r24,1
	sts y+1,r25
	sts y,r24
	rjmp .L69
.L70:
	.loc 3 416 0 is_stmt 1
	call LCD_Clear
.LVL142:
.L69:
	.loc 3 418 0
	lds r24,x
	mul r24,r28
	mov r28,r0
	clr r1
	sts Cursor_X,r28
	.loc 3 419 0
	lds r24,y
	mul r24,r14
	mov r14,r0
	clr r1
	sts Cursor_Y,r14
	.loc 3 430 0
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE24:
	.size	LCD_write2, .-LCD_write2
	.section	.text.LCD_draw_string2,"ax",@progbits
.global	LCD_draw_string2
	.type	LCD_draw_string2, @function
LCD_draw_string2:
.LFB25:
	.loc 3 441 0
	.cfi_startproc
.LVL143:
	push r17
.LCFI73:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI74:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI75:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
.LVL144:
.LBB54:
	.loc 3 442 0
	ld r24,Y
.LVL145:
	tst r24
	breq .L71
	ldi r17,0
.LVL146:
.L73:
	.loc 3 444 0 discriminator 2
	call LCD_write2
.LVL147:
	.loc 3 442 0 discriminator 2
	subi r17,lo8(-(1))
.LVL148:
	movw r30,r28
	add r30,r17
	adc r31,__zero_reg__
	ld r24,Z
	cpse r24,__zero_reg__
	rjmp .L73
.LVL149:
.L71:
/* epilogue start */
.LBE54:
	.loc 3 446 0
	pop r29
	pop r28
.LVL150:
	pop r17
	ret
	.cfi_endproc
.LFE25:
	.size	LCD_draw_string2, .-LCD_draw_string2
	.section	.text.LCD_draw_string3,"ax",@progbits
.global	LCD_draw_string3
	.type	LCD_draw_string3, @function
LCD_draw_string3:
.LFB26:
	.loc 3 449 0
	.cfi_startproc
.LVL151:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 450 0
	ldi r20,lo8(16)
	ldi r21,0
	movw r22,r24
	ldi r24,lo8(wbuffer)
	ldi r25,hi8(wbuffer)
.LVL152:
	call strncpy_P
.LVL153:
	.loc 3 451 0
	sts wbuffer+16,__zero_reg__
	.loc 3 452 0
	ldi r24,lo8(wbuffer)
	ldi r25,hi8(wbuffer)
	call LCD_draw_string2
.LVL154:
	ret
	.cfi_endproc
.LFE26:
	.size	LCD_draw_string3, .-LCD_draw_string3
	.section	.text.LCD_drawFastHLine,"ax",@progbits
.global	LCD_drawFastHLine
	.type	LCD_drawFastHLine, @function
LCD_drawFastHLine:
.LFB30:
	.loc 3 506 0
	.cfi_startproc
.LVL155:
	push r16
.LCFI76:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI77:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 3 507 0
	add r20,r24
	adc r21,r25
.LVL156:
	subi r20,1
	sbc r21,__zero_reg__
	movw r16,r18
	movw r18,r22
.LVL157:
	call LCD_drawLine
.LVL158:
/* epilogue start */
	.loc 3 508 0
	pop r17
	pop r16
.LVL159:
	ret
	.cfi_endproc
.LFE30:
	.size	LCD_drawFastHLine, .-LCD_drawFastHLine
	.section	.text.LCD_setTextSize,"ax",@progbits
.global	LCD_setTextSize
	.type	LCD_setTextSize, @function
LCD_setTextSize:
.LFB31:
	.loc 3 554 0
	.cfi_startproc
.LVL160:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 555 0
	cpse r24,__zero_reg__
	rjmp .L77
	ldi r24,lo8(1)
.LVL161:
.L77:
	.loc 3 555 0 is_stmt 0 discriminator 3
	sts textsize,r24
	ret
	.cfi_endproc
.LFE31:
	.size	LCD_setTextSize, .-LCD_setTextSize
	.section	.text.NoneFunc,"ax",@progbits
.global	NoneFunc
	.type	NoneFunc, @function
NoneFunc:
.LFB32:
	.loc 3 793 0 is_stmt 1
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE32:
	.size	NoneFunc, .-NoneFunc
	.section	.text.LcdPutInt,"ax",@progbits
.global	LcdPutInt
	.type	LcdPutInt, @function
LcdPutInt:
.LFB33:
	.loc 3 798 0
	.cfi_startproc
.LVL162:
	.loc 3 798 0
	push r28
.LCFI78:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI79:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI80:
	.cfi_def_cfa_register 28
	sbiw r28,17
.LCFI81:
	.cfi_def_cfa_offset 21
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 17 */
/* stack size = 19 */
.L__stack_usage = 19
.LVL163:
.LBB55:
.LBB56:
	.file 4 "/AtmelAvrToolchain/avr/include/stdlib.h"
	.loc 4 428 0
	ldi r20,lo8(10)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call __itoa_ncheck
.LVL164:
.LBE56:
.LBE55:
	.loc 3 803 0
	movw r24,r28
	adiw r24,1
	call LCD_draw_string2
.LVL165:
/* epilogue start */
	.loc 3 812 0
	adiw r28,17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE33:
	.size	LcdPutInt, .-LcdPutInt
	.section	.text.LcdNextStr,"ax",@progbits
.global	LcdNextStr
	.type	LcdNextStr, @function
LcdNextStr:
.LFB34:
	.loc 3 822 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 823 0
	lds r22,y
	lds r23,y+1
	cpi r22,7
	cpc r23,__zero_reg__
	brsh .L82
	.loc 3 824 0
	subi r22,-1
	sbci r23,-1
	sts y+1,r23
	sts y,r22
	.loc 3 825 0
	ldi r24,0
	call LCD_set_position2
.LVL166:
	ret
.L82:
	.loc 3 826 0
	call LCD_Clear
.LVL167:
	ret
	.cfi_endproc
.LFE34:
	.size	LcdNextStr, .-LcdNextStr
	.section	.text.LcdFirstLine,"ax",@progbits
.global	LcdFirstLine
	.type	LcdFirstLine, @function
LcdFirstLine:
.LFB35:
	.loc 3 831 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 837 0
	ldi r22,0
	ldi r24,0
	call LCD_set_position2
.LVL168:
	ret
	.cfi_endproc
.LFE35:
	.size	LcdFirstLine, .-LcdFirstLine
	.section	.text.ReturnXPos,"ax",@progbits
.global	ReturnXPos
	.type	ReturnXPos, @function
ReturnXPos:
.LFB36:
	.loc 3 841 0
	.cfi_startproc
.LVL169:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 842 0
	ldi r25,0
	lds r18,x
	lds r19,x+1
	cp r18,r24
	cpc r19,r25
	brlo .L86
	.loc 3 842 0 is_stmt 0 discriminator 1
	sub r18,r24
	sbc r19,r25
	sts x+1,r19
	sts x,r18
	rjmp .L87
.L86:
	.loc 3 844 0 is_stmt 1
	lds r20,y
	lds r21,y+1
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L88
	.loc 3 844 0 is_stmt 0 discriminator 1
	subi r20,1
	sbc r21,__zero_reg__
	sts y+1,r21
	sts y,r20
.L88:
	.loc 3 845 0 is_stmt 1
	subi r18,-16
	sbci r19,-1
	sub r18,r24
	sbc r19,r25
	sts x+1,r19
	sts x,r18
.L87:
	.loc 3 847 0
	lds r22,y
	lds r24,x
.LVL170:
	call LCD_set_position2
.LVL171:
	ret
	.cfi_endproc
.LFE36:
	.size	ReturnXPos, .-ReturnXPos
	.section	.text.LcdWrite,"ax",@progbits
.global	LcdWrite
	.type	LcdWrite, @function
LcdWrite:
.LFB37:
	.loc 3 851 0
	.cfi_startproc
.LVL172:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 852 0
	cpi r24,lo8(10)
	brne .L90
	.loc 3 853 0
	call LcdNextStr
.LVL173:
	rjmp .L91
.LVL174:
.L90:
	.loc 3 854 0
	cpi r24,lo8(32)
	brlo .L91
	.loc 3 855 0
	call LCD_write2
.LVL175:
.L91:
	.loc 3 866 0
	ldi r24,0
	ldi r25,0
	ret
	.cfi_endproc
.LFE37:
	.size	LcdWrite, .-LcdWrite
	.section	.progmem.data.font,"a",@progbits
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
	.section	.data.textsize,"aw",@progbits
	.type	textsize, @object
	.size	textsize, 1
textsize:
	.byte	1
	.section	.bss.Cursor_Y,"aw",@nobits
	.type	Cursor_Y, @object
	.size	Cursor_Y, 1
Cursor_Y:
	.zero	1
	.section	.bss.Cursor_X,"aw",@nobits
	.type	Cursor_X, @object
	.size	Cursor_X, 1
Cursor_X:
	.zero	1
.global	yUpdateMax
	.section	.data.yUpdateMax,"aw",@progbits
	.type	yUpdateMax, @object
	.size	yUpdateMax, 1
yUpdateMax:
	.byte	64
.global	xUpdateMax
	.section	.data.xUpdateMax,"aw",@progbits
	.type	xUpdateMax, @object
	.size	xUpdateMax, 1
xUpdateMax:
	.byte	95
.global	yUpdateMin
	.section	.bss.yUpdateMin,"aw",@nobits
	.type	yUpdateMin, @object
	.size	yUpdateMin, 1
yUpdateMin:
	.zero	1
.global	xUpdateMin
	.section	.bss.xUpdateMin,"aw",@nobits
	.type	xUpdateMin, @object
	.size	xUpdateMin, 1
xUpdateMin:
	.zero	1
	.comm	LCDCache,864,1
.global	y
	.section	.bss.y,"aw",@nobits
	.type	y, @object
	.size	y, 2
y:
	.zero	2
.global	x
	.section	.bss.x,"aw",@nobits
	.type	x, @object
	.size	x, 2
x:
	.zero	2
	.text
.Letext0:
	.file 5 "/AtmelAvrToolchain/avr/include/stdint.h"
	.file 6 "/AtmelAvrToolchain/lib/gcc/avr/4.8.1/include/stddef.h"
	.file 7 "/AtmelAvrToolchain/avr/include/stdio.h"
	.file 8 "../lcd/lcdconf.h"
	.file 9 "/AtmelAvrToolchain/avr/include/avr/pgmspace.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12a4
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF92
	.byte	0x1
	.long	.LASF93
	.long	.LASF94
	.long	.Ldebug_ranges0+0x80
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x5
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x5
	.byte	0x7a
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x5
	.byte	0x7b
	.long	0x58
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF5
	.byte	0x5
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
	.byte	0x5
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6
	.byte	0xd4
	.long	0x6a
	.uleb128 0x5
	.long	.LASF95
	.byte	0xe
	.byte	0x7
	.byte	0xf2
	.long	0x125
	.uleb128 0x6
	.string	"buf"
	.byte	0x7
	.byte	0xf3
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x7
	.byte	0xf4
	.long	0x46
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF14
	.byte	0x7
	.byte	0xf5
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF15
	.byte	0x7
	.word	0x105
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"len"
	.byte	0x7
	.word	0x106
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.string	"put"
	.byte	0x7
	.word	0x107
	.long	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"get"
	.byte	0x7
	.word	0x108
	.long	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF16
	.byte	0x7
	.word	0x109
	.long	0x169
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.byte	0x2
	.long	0x12b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF17
	.uleb128 0xb
	.byte	0x1
	.long	0x58
	.long	0x147
	.uleb128 0xc
	.long	0x12b
	.uleb128 0xc
	.long	0x147
	.byte	0
	.uleb128 0xa
	.byte	0x2
	.long	0xa3
	.uleb128 0xa
	.byte	0x2
	.long	0x132
	.uleb128 0xb
	.byte	0x1
	.long	0x58
	.long	0x163
	.uleb128 0xc
	.long	0x147
	.byte	0
	.uleb128 0xa
	.byte	0x2
	.long	0x153
	.uleb128 0xd
	.byte	0x2
	.uleb128 0x2
	.long	.LASF18
	.byte	0x8
	.byte	0x15
	.long	0x46
	.uleb128 0xe
	.long	.LASF22
	.byte	0x2
	.byte	0xe0
	.byte	0x1
	.byte	0x3
	.long	0x1af
	.uleb128 0xf
	.long	.LASF24
	.byte	0x2
	.byte	0xe0
	.long	0x1af
	.uleb128 0x10
	.long	.LASF19
	.byte	0x2
	.byte	0xe2
	.long	0x1af
	.uleb128 0x10
	.long	.LASF20
	.byte	0x2
	.byte	0xe6
	.long	0x78
	.uleb128 0x11
	.byte	0x1
	.long	.LASF26
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF21
	.uleb128 0xe
	.long	.LASF23
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x3
	.long	0x1ef
	.uleb128 0xf
	.long	.LASF25
	.byte	0x2
	.byte	0x8e
	.long	0x1af
	.uleb128 0x10
	.long	.LASF19
	.byte	0x2
	.byte	0x90
	.long	0x1af
	.uleb128 0x10
	.long	.LASF20
	.byte	0x2
	.byte	0x94
	.long	0x78
	.uleb128 0x11
	.byte	0x1
	.long	.LASF26
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF88
	.byte	0x4
	.word	0x1a2
	.byte	0x1
	.long	0x125
	.byte	0x3
	.long	0x25d
	.uleb128 0x13
	.long	.LASF27
	.byte	0x4
	.word	0x1a2
	.long	0x58
	.uleb128 0x14
	.string	"__s"
	.byte	0x4
	.word	0x1a2
	.long	0x125
	.uleb128 0x13
	.long	.LASF28
	.byte	0x4
	.word	0x1a2
	.long	0x58
	.uleb128 0x15
	.long	0x24b
	.uleb128 0x16
	.byte	0x1
	.long	.LASF90
	.byte	0x4
	.word	0x1a5
	.byte	0x1
	.long	0x125
	.byte	0x1
	.uleb128 0xc
	.long	0x58
	.uleb128 0xc
	.long	0x125
	.uleb128 0xc
	.long	0x58
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0x1
	.long	.LASF91
	.byte	0x4
	.word	0x1ab
	.byte	0x1
	.long	0x125
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x32d
	.uleb128 0x1a
	.long	.LASF31
	.byte	0x1
	.byte	0x1b
	.long	0x3b
	.long	.LLST0
	.uleb128 0x1b
	.long	0x176
	.long	.LBB20
	.long	.LBE20
	.byte	0x1
	.byte	0x22
	.long	0x2bf
	.uleb128 0x1c
	.long	0x183
	.byte	0x4
	.long	0x42200000
	.uleb128 0x1d
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x1e
	.long	0x18e
	.byte	0x4
	.long	0x43a00000
	.uleb128 0x1f
	.long	0x199
	.word	0x140
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x176
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.byte	0x24
	.long	0x2f7
	.uleb128 0x1c
	.long	0x183
	.byte	0x4
	.long	0x41a00000
	.uleb128 0x1d
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x1e
	.long	0x18e
	.byte	0x4
	.long	0x43200000
	.uleb128 0x20
	.long	0x199
	.byte	0xa0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x176
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.byte	0x26
	.uleb128 0x1c
	.long	0x183
	.byte	0x4
	.long	0x42200000
	.uleb128 0x1d
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x1e
	.long	0x18e
	.byte	0x4
	.long	0x43a00000
	.uleb128 0x1f
	.long	0x199
	.word	0x140
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST1
	.byte	0x1
	.long	0x3a5
	.uleb128 0x1a
	.long	.LASF31
	.byte	0x1
	.byte	0x29
	.long	0x3b
	.long	.LLST2
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x1
	.byte	0x29
	.long	0x3b
	.long	.LLST3
	.uleb128 0x23
	.long	.LBB26
	.long	.LBE26
	.long	0x393
	.uleb128 0x24
	.string	"m"
	.byte	0x1
	.byte	0x2f
	.long	0x3b
	.long	.LLST4
	.uleb128 0x25
	.long	.LVL9
	.long	0x25d
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x80
	.sleb128 0
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL7
	.long	0x25d
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3e5
	.uleb128 0x1a
	.long	.LASF31
	.byte	0x1
	.byte	0x55
	.long	0x3b
	.long	.LLST5
	.uleb128 0x25
	.long	.LVL14
	.long	0x32d
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x26
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x425
	.uleb128 0x1a
	.long	.LASF31
	.byte	0x1
	.byte	0x5a
	.long	0x3b
	.long	.LLST6
	.uleb128 0x25
	.long	.LVL16
	.long	0x32d
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x26
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST7
	.byte	0x1
	.long	0x4b4
	.uleb128 0x23
	.long	.LBB27
	.long	.LBE27
	.long	0x469
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xb7
	.long	0x6a
	.long	.LLST8
	.uleb128 0x25
	.long	.LVL22
	.long	0x3e5
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LVL17
	.long	0x3a5
	.long	0x47d
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.long	.LVL18
	.long	0x3a5
	.long	0x491
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xb0
	.byte	0
	.uleb128 0x27
	.long	.LVL19
	.long	0x3a5
	.long	0x4a4
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x25
	.long	.LVL20
	.long	0x3a5
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0x89
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6e6
	.uleb128 0x1b
	.long	0x1b6
	.long	.LBB28
	.long	.LBE28
	.byte	0x1
	.byte	0x8d
	.long	0x506
	.uleb128 0x1c
	.long	0x1c3
	.byte	0x4
	.long	0x40a00000
	.uleb128 0x1d
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x1e
	.long	0x1ce
	.byte	0x4
	.long	0x471c4000
	.uleb128 0x1f
	.long	0x1d9
	.word	0x9c40
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x1b6
	.long	.LBB30
	.long	.LBE30
	.byte	0x1
	.byte	0x90
	.long	0x541
	.uleb128 0x1c
	.long	0x1c3
	.byte	0x4
	.long	0x41200000
	.uleb128 0x1d
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x1e
	.long	0x1ce
	.byte	0x4
	.long	0x479c4000
	.uleb128 0x29
	.long	0x1d9
	.long	0x13880
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x1b6
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.byte	0xaa
	.long	0x57c
	.uleb128 0x1c
	.long	0x1c3
	.byte	0x4
	.long	0x43fa0000
	.uleb128 0x1d
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x1e
	.long	0x1ce
	.byte	0x4
	.long	0x4a742400
	.uleb128 0x29
	.long	0x1d9
	.long	0x3d0900
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x1b6
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.byte	0xac
	.long	0x5b7
	.uleb128 0x1c
	.long	0x1c3
	.byte	0x4
	.long	0x447a0000
	.uleb128 0x1d
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x1e
	.long	0x1ce
	.byte	0x4
	.long	0x4af42400
	.uleb128 0x29
	.long	0x1d9
	.long	0x7a1200
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LVL27
	.long	0x3a5
	.long	0x5cb
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x27
	.long	.LVL28
	.long	0x3a5
	.long	0x5df
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x90
	.byte	0
	.uleb128 0x27
	.long	.LVL29
	.long	0x3a5
	.long	0x5f3
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xa4
	.byte	0
	.uleb128 0x27
	.long	.LVL30
	.long	0x3a5
	.long	0x607
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x2f
	.byte	0
	.uleb128 0x27
	.long	.LVL31
	.long	0x3a5
	.long	0x61b
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.long	.LVL32
	.long	0x3a5
	.long	0x62f
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xb0
	.byte	0
	.uleb128 0x27
	.long	.LVL33
	.long	0x3a5
	.long	0x642
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x27
	.long	.LVL34
	.long	0x3a5
	.long	0x655
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.long	.LVL35
	.long	0x3a5
	.long	0x669
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xc8
	.byte	0
	.uleb128 0x27
	.long	.LVL36
	.long	0x3a5
	.long	0x67d
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xa1
	.byte	0
	.uleb128 0x27
	.long	.LVL37
	.long	0x3a5
	.long	0x691
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xac
	.byte	0
	.uleb128 0x27
	.long	.LVL38
	.long	0x3a5
	.long	0x6a4
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x27
	.long	.LVL39
	.long	0x3a5
	.long	0x6b8
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xaf
	.byte	0
	.uleb128 0x2a
	.long	.LVL40
	.long	0x425
	.uleb128 0x27
	.long	.LVL41
	.long	0x3a5
	.long	0x6d5
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xa7
	.byte	0
	.uleb128 0x25
	.long	.LVL42
	.long	0x3a5
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xa6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0xbf
	.long	.LFB18
	.long	.LFE18
	.long	.LLST9
	.byte	0x1
	.long	0x776
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.byte	0xc0
	.long	0x58
	.long	.LLST10
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.string	"col"
	.byte	0x1
	.byte	0xca
	.long	0x58
	.long	.LLST11
	.uleb128 0x2d
	.long	.LASF38
	.byte	0x1
	.byte	0xcb
	.long	0x58
	.long	.LLST12
	.uleb128 0x27
	.long	.LVL45
	.long	0x3a5
	.long	0x74b
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x9
	.byte	0xb0
	.byte	0x21
	.byte	0
	.uleb128 0x2a
	.long	.LVL48
	.long	0x3a5
	.uleb128 0x27
	.long	.LVL49
	.long	0x3a5
	.long	0x76a
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x81
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x2a
	.long	.LVL50
	.long	0x3e5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF39
	.byte	0x3
	.word	0x13f
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x7db
	.uleb128 0x2f
	.long	.LASF40
	.byte	0x3
	.word	0x13f
	.long	0x58
	.long	.LLST13
	.uleb128 0x30
	.long	.LASF41
	.byte	0x3
	.word	0x13f
	.long	0x58
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x30
	.long	.LASF42
	.byte	0x3
	.word	0x13f
	.long	0x58
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x30
	.long	.LASF43
	.byte	0x3
	.word	0x13f
	.long	0x58
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF44
	.byte	0x3
	.word	0x133
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x848
	.uleb128 0x23
	.long	.LBB40
	.long	.LBE40
	.long	0x813
	.uleb128 0x32
	.long	.LASF45
	.byte	0x3
	.word	0x134
	.long	0x58
	.long	.LLST14
	.byte	0
	.uleb128 0x25
	.long	.LVL58
	.long	0x776
	.uleb128 0x26
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x5f
	.uleb128 0x26
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF46
	.byte	0x3
	.word	0x146
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x8cc
	.uleb128 0x33
	.string	"xc"
	.byte	0x3
	.word	0x146
	.long	0x4d
	.long	.LLST15
	.uleb128 0x33
	.string	"yc"
	.byte	0x3
	.word	0x146
	.long	0x4d
	.long	.LLST16
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x3
	.word	0x146
	.long	0x5f
	.long	.LLST17
	.uleb128 0x25
	.long	.LVL65
	.long	0x776
	.uleb128 0x26
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
	.uleb128 0x26
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
	.byte	0x66
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x26
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF48
	.byte	0x3
	.word	0x18e
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x908
	.uleb128 0x2f
	.long	.LASF49
	.byte	0x3
	.word	0x18e
	.long	0x3b
	.long	.LLST18
	.uleb128 0x2f
	.long	.LASF50
	.byte	0x3
	.word	0x18e
	.long	0x3b
	.long	.LLST19
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF51
	.byte	0x3
	.word	0x1c9
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST20
	.byte	0x1
	.long	0xa74
	.uleb128 0x33
	.string	"x0"
	.byte	0x3
	.word	0x1c9
	.long	0x4d
	.long	.LLST21
	.uleb128 0x33
	.string	"y0"
	.byte	0x3
	.word	0x1c9
	.long	0x4d
	.long	.LLST22
	.uleb128 0x33
	.string	"x1"
	.byte	0x3
	.word	0x1c9
	.long	0x4d
	.long	.LLST23
	.uleb128 0x33
	.string	"y1"
	.byte	0x3
	.word	0x1c9
	.long	0x4d
	.long	.LLST24
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x3
	.word	0x1c9
	.long	0x5f
	.long	.LLST25
	.uleb128 0x35
	.long	.LASF52
	.byte	0x3
	.word	0x1ca
	.long	0x4d
	.uleb128 0x36
	.string	"dx"
	.byte	0x3
	.word	0x1d5
	.long	0x4d
	.long	.LLST26
	.uleb128 0x36
	.string	"dy"
	.byte	0x3
	.word	0x1d5
	.long	0x4d
	.long	.LLST27
	.uleb128 0x36
	.string	"err"
	.byte	0x3
	.word	0x1d9
	.long	0x4d
	.long	.LLST28
	.uleb128 0x32
	.long	.LASF53
	.byte	0x3
	.word	0x1da
	.long	0x4d
	.long	.LLST29
	.uleb128 0x23
	.long	.LBB41
	.long	.LBE41
	.long	0x9d1
	.uleb128 0x37
	.string	"t"
	.byte	0x3
	.word	0x1cd
	.long	0x4d
	.byte	0
	.uleb128 0x23
	.long	.LBB42
	.long	.LBE42
	.long	0x9e9
	.uleb128 0x37
	.string	"t"
	.byte	0x3
	.word	0x1cc
	.long	0x4d
	.byte	0
	.uleb128 0x23
	.long	.LBB43
	.long	.LBE43
	.long	0xa01
	.uleb128 0x37
	.string	"t"
	.byte	0x3
	.word	0x1d2
	.long	0x4d
	.byte	0
	.uleb128 0x23
	.long	.LBB44
	.long	.LBE44
	.long	0xa19
	.uleb128 0x37
	.string	"t"
	.byte	0x3
	.word	0x1d1
	.long	0x4d
	.byte	0
	.uleb128 0x27
	.long	.LVL89
	.long	0x848
	.long	0xa48
	.uleb128 0x26
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
	.uleb128 0x26
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
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL90
	.long	0x848
	.uleb128 0x26
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
	.uleb128 0x26
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
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF54
	.byte	0x3
	.word	0x1f6
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST30
	.byte	0x1
	.long	0xb17
	.uleb128 0x33
	.string	"xq"
	.byte	0x3
	.word	0x1f6
	.long	0x4d
	.long	.LLST31
	.uleb128 0x33
	.string	"yq"
	.byte	0x3
	.word	0x1f6
	.long	0x4d
	.long	.LLST32
	.uleb128 0x33
	.string	"h"
	.byte	0x3
	.word	0x1f6
	.long	0x4d
	.long	.LLST33
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x3
	.word	0x1f6
	.long	0x5f
	.long	.LLST34
	.uleb128 0x25
	.long	.LVL106
	.long	0x908
	.uleb128 0x26
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
	.uleb128 0x26
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
	.byte	0x66
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x26
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uleb128 0x26
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF55
	.byte	0x3
	.word	0x1f0
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST35
	.byte	0x1
	.long	0xbcb
	.uleb128 0x33
	.string	"xq"
	.byte	0x3
	.word	0x1f0
	.long	0x4d
	.long	.LLST36
	.uleb128 0x33
	.string	"yq"
	.byte	0x3
	.word	0x1f0
	.long	0x4d
	.long	.LLST37
	.uleb128 0x33
	.string	"w"
	.byte	0x3
	.word	0x1f0
	.long	0x4d
	.long	.LLST38
	.uleb128 0x33
	.string	"h"
	.byte	0x3
	.word	0x1f0
	.long	0x4d
	.long	.LLST39
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x3
	.word	0x1f0
	.long	0x5f
	.long	.LLST40
	.uleb128 0x1d
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x36
	.string	"i"
	.byte	0x3
	.word	0x1f1
	.long	0x4d
	.long	.LLST41
	.uleb128 0x25
	.long	.LVL111
	.long	0xa74
	.uleb128 0x26
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
	.uleb128 0x26
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x26
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF56
	.byte	0x3
	.word	0x16f
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST42
	.byte	0x1
	.long	0xd7c
	.uleb128 0x33
	.string	"xs"
	.byte	0x3
	.word	0x16f
	.long	0x4d
	.long	.LLST43
	.uleb128 0x33
	.string	"ys"
	.byte	0x3
	.word	0x16f
	.long	0x4d
	.long	.LLST44
	.uleb128 0x33
	.string	"c"
	.byte	0x3
	.word	0x16f
	.long	0x46
	.long	.LLST45
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x3
	.word	0x16f
	.long	0x5f
	.long	.LLST46
	.uleb128 0x33
	.string	"bg"
	.byte	0x3
	.word	0x16f
	.long	0x5f
	.long	.LLST47
	.uleb128 0x2f
	.long	.LASF15
	.byte	0x3
	.word	0x16f
	.long	0x3b
	.long	.LLST48
	.uleb128 0x1d
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x36
	.string	"i"
	.byte	0x3
	.word	0x174
	.long	0x29
	.long	.LLST49
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x32
	.long	.LASF57
	.byte	0x3
	.word	0x175
	.long	0x3b
	.long	.LLST50
	.uleb128 0x38
	.long	.Ldebug_ranges0+0x48
	.long	0xc93
	.uleb128 0x35
	.long	.LASF58
	.byte	0x3
	.word	0x179
	.long	0x5f
	.uleb128 0x32
	.long	.LASF59
	.byte	0x3
	.word	0x179
	.long	0x3b
	.long	.LLST51
	.byte	0
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x36
	.string	"j"
	.byte	0x3
	.word	0x17a
	.long	0x29
	.long	.LLST52
	.uleb128 0x27
	.long	.LVL123
	.long	0x848
	.long	0xcd7
	.uleb128 0x26
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -30
	.byte	0x94
	.byte	0x2
	.uleb128 0x26
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.long	.LVL126
	.long	0xb17
	.long	0xd11
	.uleb128 0x26
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
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x26
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x26
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.long	.LVL128
	.long	0x848
	.long	0xd42
	.uleb128 0x26
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -30
	.byte	0x94
	.byte	0x2
	.uleb128 0x26
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL131
	.long	0xb17
	.uleb128 0x26
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
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x26
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x26
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.long	.LASF73
	.byte	0x3
	.word	0x196
	.byte	0x1
	.long	0x3b
	.long	.LFB24
	.long	.LFE24
	.long	.LLST53
	.byte	0x1
	.long	0xe03
	.uleb128 0x33
	.string	"c"
	.byte	0x3
	.word	0x196
	.long	0x3b
	.long	.LLST54
	.uleb128 0x35
	.long	.LASF60
	.byte	0x3
	.word	0x197
	.long	0x58
	.uleb128 0x3a
	.long	.LASF61
	.byte	0x3
	.word	0x197
	.long	0x58
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x27
	.long	.LVL140
	.long	0xbcb
	.long	0xdf9
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x26
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x26
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x26
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.long	.LVL142
	.long	0x7db
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF62
	.byte	0x3
	.word	0x1b8
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST55
	.byte	0x1
	.long	0xe50
	.uleb128 0x2f
	.long	.LASF63
	.byte	0x3
	.word	0x1b8
	.long	0x125
	.long	.LLST56
	.uleb128 0x1d
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x36
	.string	"i"
	.byte	0x3
	.word	0x1ba
	.long	0x46
	.long	.LLST57
	.uleb128 0x2a
	.long	.LVL147
	.long	0xd7c
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF64
	.byte	0x3
	.word	0x1c0
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xea9
	.uleb128 0x2f
	.long	.LASF63
	.byte	0x3
	.word	0x1c0
	.long	0xea9
	.long	.LLST58
	.uleb128 0x27
	.long	.LVL153
	.long	0x1265
	.long	0xe9f
	.uleb128 0x26
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
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2a
	.long	.LVL154
	.long	0xe03
	.byte	0
	.uleb128 0xa
	.byte	0x2
	.long	0xeaf
	.uleb128 0x3b
	.long	0x12b
	.uleb128 0x34
	.byte	0x1
	.long	.LASF65
	.byte	0x3
	.word	0x1fa
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST59
	.byte	0x1
	.long	0xf57
	.uleb128 0x33
	.string	"xq"
	.byte	0x3
	.word	0x1fa
	.long	0x4d
	.long	.LLST60
	.uleb128 0x33
	.string	"yq"
	.byte	0x3
	.word	0x1fa
	.long	0x4d
	.long	.LLST61
	.uleb128 0x33
	.string	"w"
	.byte	0x3
	.word	0x1fa
	.long	0x4d
	.long	.LLST62
	.uleb128 0x2f
	.long	.LASF47
	.byte	0x3
	.word	0x1fa
	.long	0x5f
	.long	.LLST63
	.uleb128 0x25
	.long	.LVL158
	.long	0x908
	.uleb128 0x26
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
	.uleb128 0x26
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
	.byte	0x66
	.uleb128 0x26
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.uleb128 0x26
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x26
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF66
	.byte	0x3
	.word	0x22a
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xf81
	.uleb128 0x33
	.string	"s"
	.byte	0x3
	.word	0x22a
	.long	0x3b
	.long	.LLST64
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.long	.LASF96
	.byte	0x3
	.word	0x318
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x34
	.byte	0x1
	.long	.LASF67
	.byte	0x3
	.word	0x31d
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST65
	.byte	0x1
	.long	0x1043
	.uleb128 0x33
	.string	"i"
	.byte	0x3
	.word	0x31d
	.long	0x58
	.long	.LLST66
	.uleb128 0x3a
	.long	.LASF68
	.byte	0x3
	.word	0x320
	.long	0x1043
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x3d
	.long	0x1ef
	.long	.LBB55
	.long	.LBE55
	.byte	0x3
	.word	0x322
	.long	0x102d
	.uleb128 0x3e
	.long	0x21a
	.byte	0xa
	.uleb128 0x3f
	.long	0x20e
	.byte	0x3
	.byte	0x91
	.sleb128 -20
	.byte	0x9f
	.uleb128 0x40
	.long	0x202
	.long	.LLST67
	.uleb128 0x1d
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x25
	.long	.LVL164
	.long	0x1288
	.uleb128 0x26
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
	.uleb128 0x26
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL165
	.long	0xe03
	.uleb128 0x26
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x12b
	.long	0x1053
	.uleb128 0x42
	.long	0x1053
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF69
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF70
	.byte	0x3
	.word	0x335
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1092
	.uleb128 0x27
	.long	.LVL166
	.long	0x8cc
	.long	0x1088
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.long	.LVL167
	.long	0x7db
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF71
	.byte	0x3
	.word	0x33e
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x10c2
	.uleb128 0x25
	.long	.LVL168
	.long	0x8cc
	.uleb128 0x26
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF72
	.byte	0x3
	.word	0x349
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x10f6
	.uleb128 0x33
	.string	"ps"
	.byte	0x3
	.word	0x349
	.long	0x3b
	.long	.LLST68
	.uleb128 0x2a
	.long	.LVL171
	.long	0x8cc
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.long	.LASF74
	.byte	0x3
	.word	0x353
	.byte	0x1
	.long	0x58
	.long	.LFB37
	.long	.LFE37
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1146
	.uleb128 0x33
	.string	"c"
	.byte	0x3
	.word	0x353
	.long	0x12b
	.long	.LLST69
	.uleb128 0x2f
	.long	.LASF75
	.byte	0x3
	.word	0x353
	.long	0x147
	.long	.LLST70
	.uleb128 0x2a
	.long	.LVL173
	.long	0x105a
	.uleb128 0x2a
	.long	.LVL175
	.long	0xd7c
	.byte	0
	.uleb128 0x44
	.long	.LASF76
	.byte	0x3
	.byte	0x1c
	.long	0x29
	.byte	0x5
	.byte	0x3
	.long	Cursor_X
	.uleb128 0x44
	.long	.LASF77
	.byte	0x3
	.byte	0x1c
	.long	0x29
	.byte	0x5
	.byte	0x3
	.long	Cursor_Y
	.uleb128 0x45
	.long	.LASF78
	.byte	0x3
	.byte	0x1f
	.long	0x1174
	.byte	0xff
	.uleb128 0x3b
	.long	0x5f
	.uleb128 0x45
	.long	.LASF79
	.byte	0x3
	.byte	0x1f
	.long	0x1185
	.byte	0
	.uleb128 0x3b
	.long	0x5f
	.uleb128 0x44
	.long	.LASF80
	.byte	0x3
	.byte	0x20
	.long	0x3b
	.byte	0x5
	.byte	0x3
	.long	textsize
	.uleb128 0x41
	.long	0x12b
	.long	0x11ac
	.uleb128 0x46
	.long	0x1053
	.word	0x4fa
	.byte	0
	.uleb128 0x44
	.long	.LASF81
	.byte	0x3
	.byte	0x25
	.long	0x11bd
	.byte	0x5
	.byte	0x3
	.long	font
	.uleb128 0x3b
	.long	0x119b
	.uleb128 0x47
	.string	"x"
	.byte	0x3
	.byte	0xa
	.long	0x6a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	x
	.uleb128 0x47
	.string	"y"
	.byte	0x3
	.byte	0xa
	.long	0x6a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	y
	.uleb128 0x48
	.long	.LASF82
	.byte	0x3
	.byte	0x1a
	.long	0x29
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	xUpdateMin
	.uleb128 0x48
	.long	.LASF83
	.byte	0x3
	.byte	0x1a
	.long	0x29
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	yUpdateMin
	.uleb128 0x48
	.long	.LASF84
	.byte	0x3
	.byte	0x1b
	.long	0x29
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	xUpdateMax
	.uleb128 0x48
	.long	.LASF85
	.byte	0x3
	.byte	0x1b
	.long	0x29
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	yUpdateMax
	.uleb128 0x41
	.long	0x16b
	.long	0x123b
	.uleb128 0x46
	.long	0x1053
	.word	0x35f
	.byte	0
	.uleb128 0x48
	.long	.LASF86
	.byte	0x3
	.byte	0x16
	.long	0x122a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LCDCache
	.uleb128 0x41
	.long	0x12b
	.long	0x1258
	.uleb128 0x49
	.byte	0
	.uleb128 0x4a
	.long	.LASF87
	.byte	0x3
	.byte	0x22
	.long	0x124d
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.byte	0x1
	.long	.LASF89
	.byte	0x9
	.word	0x486
	.byte	0x1
	.long	0x125
	.byte	0x1
	.long	0x1288
	.uleb128 0xc
	.long	0x125
	.uleb128 0xc
	.long	0xea9
	.uleb128 0xc
	.long	0x98
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF91
	.byte	0x4
	.word	0x1ab
	.byte	0x1
	.long	0x125
	.byte	0x1
	.uleb128 0xc
	.long	0x58
	.uleb128 0xc
	.long	0x125
	.uleb128 0xc
	.long	0x46
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LFB13
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
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	.LVL6
	.long	.LVL12
	.word	0x1
	.byte	0x60
	.long	.LVL12
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL7-1
	.word	0x1
	.byte	0x66
	.long	.LVL7-1
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL8
	.word	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.long	.LVL8
	.long	.LVL11
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST5:
	.long	.LVL13
	.long	.LVL14-1
	.word	0x1
	.byte	0x68
	.long	.LVL14-1
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL15
	.long	.LVL16-1
	.word	0x1
	.byte	0x68
	.long	.LVL16-1
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LFB17
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LFE17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST8:
	.long	.LVL20
	.long	.LVL21
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.word	0x7
	.byte	0xa
	.word	0x360
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x7
	.byte	0xa
	.word	0x361
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x7
	.byte	0xa
	.word	0x360
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LFB18
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI16
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	0
	.long	0
.LLST10:
	.long	.LVL43
	.long	.LVL44
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL46
	.long	.LVL52
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LVL47
	.long	.LVL52
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL53
	.long	.LVL54
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL54
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL55
	.long	.LVL56
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL56
	.long	.LVL58-1
	.word	0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	LCDCache
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL59
	.long	.LVL65-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65-1
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL59
	.long	.LVL62
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL62
	.long	.LVL63
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL63
	.long	.LVL65-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65-1
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL59
	.long	.LVL60
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL60
	.long	.LVL61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL61
	.long	.LVL64
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL64
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL66
	.long	.LVL67
	.word	0x1
	.byte	0x68
	.long	.LVL67
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL66
	.long	.LVL68
	.word	0x1
	.byte	0x66
	.long	.LVL68
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LFB27
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI34
	.long	.LFE27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	0
	.long	0
.LLST21:
	.long	.LVL69
	.long	.LVL70
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70
	.long	.LVL76
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76
	.long	.LVL78
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL78
	.long	.LVL81
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL83
	.long	.LVL95
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST22:
	.long	.LVL69
	.long	.LVL72
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LVL77
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL77
	.long	.LVL78
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL78
	.long	.LVL79
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL83
	.long	.LVL97
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST23:
	.long	.LVL69
	.long	.LVL71
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL71
	.long	.LVL74
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL74
	.long	.LVL78
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL78
	.long	.LVL82
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL82
	.long	.LVL83
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL83
	.long	.LVL98
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST24:
	.long	.LVL69
	.long	.LVL75
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL75
	.long	.LVL78
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL78
	.long	.LVL80
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL80
	.long	.LVL83
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL83
	.long	.LVL88
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LVL69
	.long	.LVL96
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL96
	.long	.LFE27
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL84
	.long	.LVL102
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST27:
	.long	.LVL85
	.long	.LVL100
	.word	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST28:
	.long	.LVL86
	.long	.LVL99
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST29:
	.long	.LVL87
	.long	.LVL101
	.word	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST30:
	.long	.LFB29
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI36
	.long	.LFE29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST31:
	.long	.LVL103
	.long	.LVL106-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL106-1
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL103
	.long	.LVL106-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL106-1
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL103
	.long	.LVL105
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL105
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL103
	.long	.LVL104
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL104
	.long	.LVL107
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL107
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LFB28
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
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
	.sleb128 10
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI46
	.long	.LFE28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST36:
	.long	.LVL108
	.long	.LVL110
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL108
	.long	.LVL110
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110
	.long	.LVL116
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL116
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL108
	.long	.LVL110
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL108
	.long	.LVL110
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110
	.long	.LVL115
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL115
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL108
	.long	.LVL114
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL114
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL109
	.long	.LVL110
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110
	.long	.LVL113
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST42:
	.long	.LFB22
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI60
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI61
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI62
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI63
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI64
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI65
	.long	.LCFI66
	.word	0x2
	.byte	0x8c
	.sleb128 20
	.long	.LCFI66
	.long	.LFE22
	.word	0x2
	.byte	0x8c
	.sleb128 32
	.long	0
	.long	0
.LLST43:
	.long	.LVL117
	.long	.LVL120
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL120
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL117
	.long	.LVL120
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL120
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL117
	.long	.LVL119
	.word	0x1
	.byte	0x64
	.long	.LVL119
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL117
	.long	.LVL118
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL118
	.long	.LVL137
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL137
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL117
	.long	.LVL120
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL120
	.long	.LVL136
	.word	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.long	.LVL136
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL117
	.long	.LVL120
	.word	0x1
	.byte	0x5e
	.long	.LVL120
	.long	.LVL136
	.word	0x1
	.byte	0x5a
	.long	.LVL136
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL120
	.long	.LVL133
	.word	0x2
	.byte	0x91
	.sleb128 -26
	.long	.LVL133
	.long	.LVL134
	.word	0x1
	.byte	0x62
	.long	.LVL134
	.long	.LVL136
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST50:
	.long	.LVL121
	.long	.LVL122
	.word	0x1
	.byte	0x60
	.long	.LVL122
	.long	.LVL124
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	.LVL124
	.long	.LVL125
	.word	0x1
	.byte	0x69
	.long	.LVL125
	.long	.LVL127
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	.LVL127
	.long	.LVL128-1
	.word	0x1
	.byte	0x69
	.long	.LVL128-1
	.long	.LVL129
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	.LVL129
	.long	.LVL130
	.word	0x1
	.byte	0x69
	.long	.LVL130
	.long	.LVL132
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	.LVL132
	.long	.LVL134
	.word	0x1
	.byte	0x6e
	.long	.LVL135
	.long	.LVL136
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST51:
	.long	.LVL121
	.long	.LVL122
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST52:
	.long	.LVL135
	.long	.LVL136
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LFB24
	.long	.LCFI67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI67
	.long	.LCFI68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI68
	.long	.LCFI69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI69
	.long	.LCFI70
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI70
	.long	.LCFI71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI71
	.long	.LCFI72
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI72
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST54:
	.long	.LVL138
	.long	.LVL139
	.word	0x1
	.byte	0x68
	.long	.LVL139
	.long	.LVL140-1
	.word	0x1
	.byte	0x64
	.long	.LVL140-1
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LFB25
	.long	.LCFI73
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI73
	.long	.LCFI74
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI74
	.long	.LCFI75
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI75
	.long	.LFE25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST56:
	.long	.LVL143
	.long	.LVL145
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL145
	.long	.LVL150
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL150
	.long	.LFE25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL144
	.long	.LVL146
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL146
	.long	.LVL149
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST58:
	.long	.LVL151
	.long	.LVL152
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL152
	.long	.LVL153-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL153-1
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LFB30
	.long	.LCFI76
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI76
	.long	.LCFI77
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI77
	.long	.LFE30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST60:
	.long	.LVL155
	.long	.LVL158-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL158-1
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST61:
	.long	.LVL155
	.long	.LVL158-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL158-1
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LVL155
	.long	.LVL156
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL156
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST63:
	.long	.LVL155
	.long	.LVL157
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL157
	.long	.LVL159
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL159
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST64:
	.long	.LVL160
	.long	.LVL161
	.word	0x1
	.byte	0x68
	.long	.LVL161
	.long	.LFE31
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LFB33
	.long	.LCFI78
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI78
	.long	.LCFI79
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI79
	.long	.LCFI80
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI80
	.long	.LCFI81
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LCFI81
	.long	.LFE33
	.word	0x2
	.byte	0x8c
	.sleb128 21
	.long	0
	.long	0
.LLST66:
	.long	.LVL162
	.long	.LVL164-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL164-1
	.long	.LFE33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST67:
	.long	.LVL163
	.long	.LVL164-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL164-1
	.long	.LFE33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST68:
	.long	.LVL169
	.long	.LVL170
	.word	0x1
	.byte	0x68
	.long	.LVL170
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST69:
	.long	.LVL172
	.long	.LVL173-1
	.word	0x1
	.byte	0x68
	.long	.LVL173-1
	.long	.LVL174
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL174
	.long	.LVL175-1
	.word	0x1
	.byte	0x68
	.long	.LVL175-1
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST70:
	.long	.LVL172
	.long	.LVL173-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL173-1
	.long	.LVL174
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL174
	.long	.LVL175-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL175-1
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xe4
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
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB36
	.long	.LBE36
	.long	.LBB39
	.long	.LBE39
	.long	0
	.long	0
	.long	.LBB37
	.long	.LBE37
	.long	.LBB38
	.long	.LBE38
	.long	0
	.long	0
	.long	.LBB47
	.long	.LBE47
	.long	.LBB53
	.long	.LBE53
	.long	0
	.long	0
	.long	.LBB48
	.long	.LBE48
	.long	.LBB50
	.long	.LBE50
	.long	0
	.long	0
	.long	.LBB49
	.long	.LBE49
	.long	.LBB51
	.long	.LBE51
	.long	.LBB52
	.long	.LBE52
	.long	0
	.long	0
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB17
	.long	.LFE17
	.long	.LFB16
	.long	.LFE16
	.long	.LFB18
	.long	.LFE18
	.long	.LFB20
	.long	.LFE20
	.long	.LFB19
	.long	.LFE19
	.long	.LFB21
	.long	.LFE21
	.long	.LFB23
	.long	.LFE23
	.long	.LFB27
	.long	.LFE27
	.long	.LFB29
	.long	.LFE29
	.long	.LFB28
	.long	.LFE28
	.long	.LFB22
	.long	.LFE22
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB30
	.long	.LFE30
	.long	.LFB31
	.long	.LFE31
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"LCD_send_data"
.LASF33:
	.string	"LCD_send_command"
.LASF42:
	.string	"xmax"
.LASF48:
	.string	"LCD_set_position2"
.LASF29:
	.string	"LCD_send_bit"
.LASF0:
	.string	"int8_t"
.LASF61:
	.string	"tysize"
.LASF45:
	.string	"index"
.LASF74:
	.string	"LcdWrite"
.LASF26:
	.string	"__builtin_avr_delay_cycles"
.LASF72:
	.string	"ReturnXPos"
.LASF12:
	.string	"size_t"
.LASF47:
	.string	"color"
.LASF40:
	.string	"xmin"
.LASF91:
	.string	"__itoa_ncheck"
.LASF75:
	.string	"stream"
.LASF76:
	.string	"Cursor_X"
.LASF81:
	.string	"font"
.LASF94:
	.string	"/home/izhuk/workspace/A328Pn3310DS18x20_n/Debug"
.LASF46:
	.string	"LCD_drawPixel"
.LASF68:
	.string	"printbuff"
.LASF1:
	.string	"uint8_t"
.LASF63:
	.string	"text"
.LASF55:
	.string	"LCD_fillRect"
.LASF67:
	.string	"LcdPutInt"
.LASF57:
	.string	"line"
.LASF85:
	.string	"yUpdateMax"
.LASF43:
	.string	"ymax"
.LASF19:
	.string	"__tmp"
.LASF80:
	.string	"textsize"
.LASF10:
	.string	"long long int"
.LASF77:
	.string	"Cursor_Y"
.LASF7:
	.string	"long int"
.LASF78:
	.string	"textcolor"
.LASF83:
	.string	"yUpdateMin"
.LASF69:
	.string	"sizetype"
.LASF41:
	.string	"ymin"
.LASF92:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega328p -g2 -gdwarf-2 -g -O1 -std=gnu99 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields"
.LASF49:
	.string	"xpos"
.LASF36:
	.string	"LCD_initialize2"
.LASF18:
	.string	"byte"
.LASF28:
	.string	"__radix"
.LASF58:
	.string	"__addr16"
.LASF88:
	.string	"itoa"
.LASF3:
	.string	"unsigned char"
.LASF95:
	.string	"__file"
.LASF62:
	.string	"LCD_draw_string2"
.LASF35:
	.string	"LCD_Clear_Screen"
.LASF2:
	.string	"signed char"
.LASF14:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF5:
	.string	"uint16_t"
.LASF32:
	.string	"dorc"
.LASF13:
	.string	"unget"
.LASF23:
	.string	"_delay_ms"
.LASF16:
	.string	"udata"
.LASF89:
	.string	"strncpy_P"
.LASF17:
	.string	"char"
.LASF27:
	.string	"__val"
.LASF52:
	.string	"steep"
.LASF50:
	.string	"ypos"
.LASF4:
	.string	"int16_t"
.LASF70:
	.string	"LcdNextStr"
.LASF73:
	.string	"LCD_write2"
.LASF31:
	.string	"data"
.LASF60:
	.string	"txsize"
.LASF30:
	.string	"LCD_send_byte"
.LASF96:
	.string	"NoneFunc"
.LASF9:
	.string	"long unsigned int"
.LASF44:
	.string	"LCD_Clear"
.LASF21:
	.string	"double"
.LASF39:
	.string	"LCD_UpdateBox"
.LASF66:
	.string	"LCD_setTextSize"
.LASF93:
	.string	"../lcd/lcd.c"
.LASF90:
	.string	"__itoa"
.LASF15:
	.string	"size"
.LASF59:
	.string	"__result"
.LASF71:
	.string	"LcdFirstLine"
.LASF37:
	.string	"LCD_Update"
.LASF25:
	.string	"__ms"
.LASF20:
	.string	"__ticks_dc"
.LASF22:
	.string	"_delay_us"
.LASF56:
	.string	"LCD_drawChar"
.LASF84:
	.string	"xUpdateMax"
.LASF38:
	.string	"maxcol"
.LASF54:
	.string	"LCD_drawFastVLine"
.LASF79:
	.string	"textbgcolor"
.LASF51:
	.string	"LCD_drawLine"
.LASF53:
	.string	"ystep"
.LASF86:
	.string	"LCDCache"
.LASF82:
	.string	"xUpdateMin"
.LASF87:
	.string	"wbuffer"
.LASF24:
	.string	"__us"
.LASF64:
	.string	"LCD_draw_string3"
.LASF65:
	.string	"LCD_drawFastHLine"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
