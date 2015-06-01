	.file	"sms.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.gsm_init,"ax",@progbits
.global	gsm_init
	.type	gsm_init, @function
gsm_init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts gsm_send_byte+1,r25
	sts gsm_send_byte,r24
	sts gsm_get_byte+1,r23
	sts gsm_get_byte,r22
	ret
	.size	gsm_init, .-gsm_init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\n"
	.section	.text.gsm_del_sms,"ax",@progbits
.global	gsm_del_sms
	.type	gsm_del_sms, @function
gsm_del_sms:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldi r24,lo8(__c.2382)
	ldi r25,hi8(__c.2382)
	call uart_puts_p
	movw r24,r28
	call uart_put_int
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	call uart_puts_p
	call DoWatchDog
	ldi r18,lo8(799999)
	ldi r24,hi8(799999)
	ldi r25,hlo8(799999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	gsm_del_sms, .-gsm_del_sms
	.section	.text.gsm_read_token,"ax",@progbits
.global	gsm_read_token
	.type	gsm_read_token, @function
gsm_read_token:
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
	movw r28,r24
	movw r10,r22
	mov r9,r20
	mov r14,r18
	movw r30,r24
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	movw r24,r30
	sbiw r24,1
	sub r24,r28
	sbc r25,r29
	call malloc
	movw r12,r24
	movw r22,r28
	call strcpy
	movw r22,r16
	movw r24,r12
	call strtok
	mov r15,__zero_reg__
	cp __zero_reg__,r14
	cpc __zero_reg__,r15
	brge .L4
	ldi r28,lo8(1)
	ldi r29,0
.L5:
	movw r22,r16
	ldi r24,0
	ldi r25,0
	call strtok
	adiw r28,1
	cp r14,r28
	cpc r15,r29
	brge .L5
.L4:
	sbiw r24,0
	breq .L6
	movw r30,r24
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	sub r30,r24
	sbc r31,r25
	mov r18,r9
	ldi r19,0
	cp r30,r18
	cpc r31,r19
	brsh .L6
	movw r22,r24
	movw r24,r10
	call strcpy
	movw r24,r12
	call free
	ldi r24,0
	ldi r25,0
	rjmp .L7
.L6:
	movw r30,r10
	st Z,__zero_reg__
	movw r24,r12
	call free
	ldi r24,lo8(1)
	ldi r25,0
.L7:
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
	.size	gsm_read_token, .-gsm_read_token
	.section	.text.gsm_remove_char,"ax",@progbits
.global	gsm_remove_char
	.type	gsm_remove_char, @function
gsm_remove_char:
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r16,r24
	movw r28,r22
	mov r15,r20
	movw r30,r22
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r24,r30
	sub r24,r22
	sbc r25,r23
	call malloc
	mov r13,r24
	mov r14,r25
	movw r24,r28
	call puts
	ld r18,Y
	tst r18
	breq .L12
	movw r30,r28
	adiw r30,1
	mov r26,r13
	mov r27,r14
.L11:
	cpse r18,r15
	st X+,r18
.L10:
	ld r18,Z+
	cpse r18,__zero_reg__
	rjmp .L11
	rjmp .L9
.L12:
	mov r26,r13
	mov r27,r14
.L9:
	st X,__zero_reg__
	mov r22,r13
	mov r23,r14
	movw r24,r16
	call strcpy
	mov r24,r13
	mov r25,r14
	call free
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
	.size	gsm_remove_char, .-gsm_remove_char
	.section	.text.gsm_command,"ax",@progbits
.global	gsm_command
	.type	gsm_command, @function
gsm_command:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call uart_puts
	ldi r24,lo8(10)
	call uart_putc
	call DoWatchDog
	ldi r18,lo8(1599999)
	ldi r24,hi8(1599999)
	ldi r25,hlo8(1599999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	call DoWatchDog
	ldi r24,lo8(1)
	ldi r25,0
	ret
	.size	gsm_command, .-gsm_command
	.section	.rodata.str1.1
.LC1:
	.string	"AT+CMGF=1"
	.section	.text.gsm_text_sms,"ax",@progbits
.global	gsm_text_sms
	.type	gsm_text_sms, @function
gsm_text_sms:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call gsm_command
	ret
	.size	gsm_text_sms, .-gsm_text_sms
	.section	.text.gsm_flush_buffer,"ax",@progbits
.global	gsm_flush_buffer
	.type	gsm_flush_buffer, @function
gsm_flush_buffer:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L17:
	lds r30,gsm_get_byte
	lds r31,gsm_get_byte+1
	icall
	cp r24,__zero_reg__
	sbci r25,1
	brne .L17
/* epilogue start */
	ret
	.size	gsm_flush_buffer, .-gsm_flush_buffer
	.section	.text.gsm_readline,"ax",@progbits
.global	gsm_readline
	.type	gsm_readline, @function
gsm_readline:
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
/* stack size = 8 */
.L__stack_usage = 8
	movw r12,r24
	movw r14,r22
	movw r26,r24
	st X,__zero_reg__
	movw r16,r24
	ldi r28,0
	ldi r29,0
.L19:
	lds r30,gsm_get_byte
	lds r31,gsm_get_byte+1
	icall
	cp r24,__zero_reg__
	ldi r27,1
	cpc r25,r27
	breq .L20
	movw r18,r24
	subi r18,32
	sbc r19,__zero_reg__
	cpi r18,96
	cpc r19,__zero_reg__
	brsh .L21
	cp r28,r14
	cpc r29,r15
	brge .L19
	movw r30,r16
	st Z+,r24
	adiw r28,1
	movw r26,r16
	adiw r26,1
	st X,__zero_reg__
	movw r16,r30
	rjmp .L19
.L21:
	cpi r24,13
	cpc r25,__zero_reg__
	breq .L20
	sbiw r24,10
	brne .L19
.L20:
	ldi r24,lo8(1)
	ldi r25,0
	movw r30,r12
	ld r18,Z
	cpse r18,__zero_reg__
	rjmp .L23
	ldi r24,0
	ldi r25,0
.L23:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	gsm_readline, .-gsm_readline
	.section	.rodata.str1.1
.LC2:
	.string	"+CMGR"
.LC3:
	.string	"REC READ"
.LC4:
	.string	"REC UNREAD"
.LC5:
	.string	","
	.section	.text.gsm_read_sms,"ax",@progbits
.global	gsm_read_sms
	.type	gsm_read_sms, @function
gsm_read_sms:
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
	subi r28,-112
	sbci r29,1
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 400 */
/* stack size = 408 */
.L__stack_usage = 408
	movw r16,r24
	movw r12,r22
	call gsm_flush_buffer
	ldi r24,lo8(__c.2332)
	ldi r25,hi8(__c.2332)
	call uart_puts_p
	movw r24,r16
	call uart_put_int
	ldi r24,lo8(__c.2334)
	ldi r25,hi8(__c.2334)
	call uart_puts_p
	call DoWatchDog
	ldi r18,lo8(1599999)
	ldi r24,hi8(1599999)
	ldi r25,hlo8(1599999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	call DoWatchDog
	ldi r16,lo8(-56)
	ldi r17,0
.L31:
	ldi r22,lo8(-56)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call gsm_readline
	movw r14,r24
	cpi r24,1
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L25
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	movw r24,r28
	adiw r24,1
	call strstr
	or r24,r25
	brne .+2
	rjmp .L25
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
	movw r24,r28
	adiw r24,1
	call strstr
	or r24,r25
	breq .L26
	ldi r24,lo8(1)
	movw r30,r12
	subi r30,51
	sbci r31,-1
	st Z,r24
	rjmp .L27
.L26:
	ldi r22,lo8(.LC4)
	ldi r23,hi8(.LC4)
	movw r24,r28
	adiw r24,1
	call strstr
	or r24,r25
	breq .L27
	movw r30,r12
	subi r30,51
	sbci r31,-1
	st Z,__zero_reg__
.L27:
	ldi r16,lo8(.LC5)
	ldi r17,hi8(.LC5)
	ldi r18,lo8(1)
	ldi r20,lo8(-56)
	movw r22,r28
	subi r22,55
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call gsm_read_token
	ldi r20,lo8(34)
	movw r22,r28
	subi r22,55
	sbci r23,-1
	movw r24,r22
	call gsm_remove_char
	movw r22,r28
	subi r22,55
	sbci r23,-1
	movw r24,r12
	subi r24,96
	sbci r25,-1
	call strcpy
	ldi r18,lo8(3)
	ldi r20,lo8(-56)
	movw r22,r28
	subi r22,55
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call gsm_read_token
	ldi r20,lo8(34)
	movw r22,r28
	subi r22,55
	sbci r23,-1
	movw r24,r22
	call gsm_remove_char
	movw r22,r28
	subi r22,55
	sbci r23,-1
	movw r24,r12
	subi r24,76
	sbci r25,-1
	call strcpy
.L29:
	ldi r22,lo8(-56)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call gsm_readline
	or r24,r25
	breq .L29
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r12
	call strcpy
	rjmp .L30
.L25:
	subi r16,1
	sbc r17,__zero_reg__
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .+2
	rjmp .L31
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L30:
	movw r24,r14
/* epilogue start */
	subi r28,112
	sbci r29,-2
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
	ret
	.size	gsm_read_sms, .-gsm_read_sms
	.section	.rodata.str1.1
.LC6:
	.string	"AT+CMGL"
.LC7:
	.string	":"
	.section	.text.gsm_check_new_sms,"ax",@progbits
.global	gsm_check_new_sms
	.type	gsm_check_new_sms, @function
gsm_check_new_sms:
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
	subi r28,94
	sbci r29,1
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 350 */
/* stack size = 360 */
.L__stack_usage = 360
	movw r14,r24
	lds r24,index.2312
	cpse r24,__zero_reg__
	rjmp .L45
	ldi r30,lo8(index.2312+1)
	ldi r31,hi8(index.2312+1)
	ldi r16,lo8(1)
	ldi r17,0
.L38:
	ld r24,Z+
	tst r24
	breq .L35
	rjmp .L34
.L45:
	ldi r16,0
	ldi r17,0
.L34:
	movw r22,r14
	ldi r25,0
	call gsm_read_sms
	movw r30,r16
	subi r30,lo8(-(index.2312))
	sbci r31,hi8(-(index.2312))
	ld r24,Z
	st Z,__zero_reg__
	ldi r25,0
	rjmp .L36
.L35:
	subi r16,-1
	sbci r17,-1
	cpi r16,15
	cpc r17,__zero_reg__
	brne .L38
	ldi r24,lo8(.LC6)
	ldi r25,hi8(.LC6)
	call gsm_command
	call DoWatchDog
	ldi r18,lo8(1599999)
	ldi r24,hi8(1599999)
	ldi r25,hlo8(1599999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	call DoWatchDog
	mov __tmp_reg__,r31
	ldi r31,lo8(index.2312)
	mov r12,r31
	ldi r31,hi8(index.2312)
	mov r13,r31
	mov r31,__tmp_reg__
	ldi r16,0
	ldi r17,0
	clr r10
	inc r10
	mov r11,__zero_reg__
.L39:
	ldi r22,lo8(44)
	ldi r23,lo8(1)
	movw r24,r28
	adiw r24,1
	call gsm_readline
	sbiw r24,1
	brne .L40
	ldi r22,lo8(.LC4)
	ldi r23,hi8(.LC4)
	movw r24,r28
	adiw r24,1
	call strstr
	or r24,r25
	breq .L40
	ldi r16,lo8(.LC5)
	ldi r17,hi8(.LC5)
	ldi r18,0
	ldi r20,lo8(50)
	movw r22,r28
	subi r22,-45
	sbci r23,-2
	movw r24,r28
	adiw r24,1
	call gsm_read_token
	ldi r16,lo8(.LC7)
	ldi r17,hi8(.LC7)
	ldi r18,lo8(1)
	ldi r20,lo8(50)
	movw r22,r28
	subi r22,-45
	sbci r23,-2
	movw r24,r22
	call gsm_read_token
	movw r24,r28
	subi r24,-45
	sbci r25,-2
	call atoi
	movw r30,r12
	st Z+,r24
	movw r12,r30
	mov r16,r10
	mov r17,r11
	rjmp .L39
.L40:
	subi r16,-1
	sbci r17,-1
	cpi r16,-56
	cpc r17,__zero_reg__
	brlt .L39
	lds r24,index.2312
	cpse r24,__zero_reg__
	rjmp .L46
	ldi r30,lo8(index.2312+1)
	ldi r31,hi8(index.2312+1)
	ldi r16,lo8(1)
	ldi r17,0
.L44:
	ld r24,Z+
	tst r24
	breq .L43
	rjmp .L42
.L46:
	ldi r16,0
	ldi r17,0
.L42:
	movw r22,r14
	ldi r25,0
	call gsm_read_sms
	movw r30,r16
	subi r30,lo8(-(index.2312))
	sbci r31,hi8(-(index.2312))
	ld r24,Z
	st Z,__zero_reg__
	ldi r25,0
	rjmp .L36
.L43:
	subi r16,-1
	sbci r17,-1
	cpi r16,15
	cpc r17,__zero_reg__
	brne .L44
	ldi r24,0
	ldi r25,0
.L36:
/* epilogue start */
	subi r28,-94
	sbci r29,-2
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
	ret
	.size	gsm_check_new_sms, .-gsm_check_new_sms
	.section	.rodata.str1.1
.LC8:
	.string	"ERROR"
.LC9:
	.string	"+CMGS"
.LC10:
	.string	"+CDS: 6"
	.section	.text.gsm_send_sms,"ax",@progbits
.global	gsm_send_sms
	.type	gsm_send_sms, @function
gsm_send_sms:
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
	subi r28,-106
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 150 */
/* stack size = 168 */
.L__stack_usage = 168
	movw r6,r24
	movw r2,r22
	movw r4,r20
	tst r21
	brge .+2
	rjmp .L58
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r8,__zero_reg__
	mov r9,__zero_reg__
.L57:
	call gsm_flush_buffer
	ldi r24,lo8(__c.2352)
	ldi r25,hi8(__c.2352)
	call uart_puts_p
	movw r24,r6
	call uart_puts
	ldi r24,lo8(__c.2354)
	ldi r25,hi8(__c.2354)
	call uart_puts_p
	movw r24,r2
	call uart_puts
	lds r30,gsm_send_byte
	lds r31,gsm_send_byte+1
	ldi r24,lo8(26)
	icall
	call DoWatchDog
	ldi r18,lo8(1599999)
	ldi r24,hi8(1599999)
	ldi r25,hlo8(1599999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	call DoWatchDog
	ldi r18,lo8(1599999)
	ldi r24,hi8(1599999)
	ldi r25,hlo8(1599999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	call DoWatchDog
	ldi r18,lo8(1599999)
	ldi r24,hi8(1599999)
	ldi r25,hlo8(1599999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	call DoWatchDog
	ldi r16,lo8(50)
	ldi r17,0
.L52:
	call DoWatchDog
	ldi r18,lo8(159999)
	ldi r24,hi8(159999)
	ldi r25,hlo8(159999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	ldi r22,lo8(100)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call gsm_readline
	sbiw r24,1
	brne .L50
	ldi r22,lo8(.LC8)
	ldi r23,hi8(.LC8)
	movw r24,r28
	adiw r24,1
	call strstr
	or r24,r25
	breq .+2
	rjmp .L59
	ldi r22,lo8(.LC9)
	ldi r23,hi8(.LC9)
	movw r24,r28
	adiw r24,1
	call strstr
	or r24,r25
	breq .L50
	ldi r16,lo8(.LC7)
	ldi r17,hi8(.LC7)
	ldi r18,lo8(1)
	ldi r20,lo8(50)
	movw r22,r28
	subi r22,-101
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call gsm_read_token
	movw r24,r28
	subi r24,-101
	sbci r25,-1
	call atoi
	movw r10,r24
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	brne .L51
	rjmp .L60
.L50:
	subi r16,1
	sbc r17,__zero_reg__
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L52
.L51:
	cp __zero_reg__,r10
	cpc __zero_reg__,r11
	brlt .+2
	rjmp .L61
	mov __tmp_reg__,r31
	ldi r31,lo8(40)
	mov r14,r31
	mov r15,__zero_reg__
	mov r31,__tmp_reg__
.L56:
	call DoWatchDog
	ldi r18,lo8(799999)
	ldi r24,hi8(799999)
	ldi r25,hlo8(799999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
	ldi r22,lo8(100)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call gsm_readline
	movw r12,r24
	cpi r24,1
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L53
	ldi r22,lo8(.LC10)
	ldi r23,hi8(.LC10)
	movw r24,r28
	adiw r24,1
	call strstr
	or r24,r25
	breq .L53
	ldi r16,lo8(.LC5)
	ldi r17,hi8(.LC5)
	ldi r18,lo8(1)
	ldi r20,lo8(50)
	movw r22,r28
	subi r22,-101
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call gsm_read_token
	or r24,r25
	brne .L53
	movw r24,r28
	subi r24,-101
	sbci r25,-1
	call atoi
	cp r24,r10
	cpc r25,r11
	brne .L53
	ldi r18,lo8(8)
	ldi r20,lo8(50)
	movw r22,r28
	subi r22,-101
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call gsm_read_token
	or r24,r25
	brne .L54
	movw r24,r28
	subi r24,-101
	sbci r25,-1
	call atoi
	or r24,r25
	breq .L49
.L54:
	ldi r16,lo8(.LC5)
	ldi r17,hi8(.LC5)
	ldi r18,lo8(6)
	ldi r20,lo8(50)
	movw r22,r28
	subi r22,-101
	sbci r23,-1
	movw r24,r28
	adiw r24,1
	call gsm_read_token
	or r24,r25
	brne .L53
	movw r24,r28
	subi r24,-101
	sbci r25,-1
	call atoi
	or r24,r25
	breq .L49
.L53:
	ldi r24,1
	sub r14,r24
	sbc r15,__zero_reg__
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	rjmp .L56
	ldi r25,-1
	sub r8,r25
	sbc r9,r25
	cp r4,r8
	cpc r5,r9
	brlt .+2
	rjmp .L57
	rjmp .L62
.L58:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	rjmp .L49
.L59:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	rjmp .L49
.L60:
	movw r12,r24
	rjmp .L49
.L61:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	rjmp .L49
.L62:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
.L49:
	movw r24,r12
/* epilogue start */
	subi r28,106
	sbci r29,-1
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
	.size	gsm_send_sms, .-gsm_send_sms
	.section	.rodata.str1.1
.LC11:
	.string	"AT+CPMS?"
.LC12:
	.string	"+CPMS"
.LC13:
	.string	"SM"
	.section	.text.gsm_SIM_mem_used,"ax",@progbits
.global	gsm_SIM_mem_used
	.type	gsm_SIM_mem_used, @function
gsm_SIM_mem_used:
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
	subi r28,-106
	sbc r29,__zero_reg__
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 150 */
/* stack size = 160 */
.L__stack_usage = 160
	movw r12,r24
	ldi r24,lo8(.LC11)
	ldi r25,hi8(.LC11)
	call gsm_command
	ldi r16,lo8(-56)
	ldi r17,0
.L66:
	ldi r22,lo8(100)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call gsm_readline
	sbiw r24,1
	breq .+2
	rjmp .L64
	ldi r22,lo8(.LC12)
	ldi r23,hi8(.LC12)
	movw r24,r28
	adiw r24,1
	call strstr
	or r24,r25
	breq .L64
	ldi r22,lo8(.LC13)
	ldi r23,hi8(.LC13)
	movw r24,r28
	adiw r24,1
	call strstr
	movw r14,r24
	ldi r16,lo8(.LC5)
	ldi r17,hi8(.LC5)
	ldi r18,lo8(1)
	ldi r20,lo8(50)
	movw r22,r28
	subi r22,-101
	sbci r23,-1
	call gsm_read_token
	or r24,r25
	brne .L67
	movw r24,r28
	subi r24,-101
	sbci r25,-1
	call atoi
	movw r10,r24
	ldi r18,lo8(2)
	ldi r20,lo8(50)
	movw r22,r28
	subi r22,-101
	sbci r23,-1
	movw r24,r14
	call gsm_read_token
	or r24,r25
	brne .L68
	movw r24,r28
	subi r24,-101
	sbci r25,-1
	call atoi
	movw r22,r24
	sbiw r24,0
	breq .L69
	movw r30,r12
	std Z+1,r25
	st Z,r24
	ldi r18,lo8(100)
	mul r18,r10
	movw r24,r0
	mul r18,r11
	add r25,r0
	clr __zero_reg__
	call __divmodhi4
	movw r24,r22
	rjmp .L65
.L64:
	subi r16,1
	sbc r17,__zero_reg__
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .+2
	rjmp .L66
	rjmp .L70
.L67:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L65
.L68:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L65
.L69:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L65
.L70:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.L65:
/* epilogue start */
	subi r28,106
	sbci r29,-1
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
	ret
	.size	gsm_SIM_mem_used, .-gsm_SIM_mem_used
	.section	.progmem.data.__c.2382,"a",@progbits
	.type	__c.2382, @object
	.size	__c.2382, 9
__c.2382:
	.string	"AT+CMGD="
	.section	.progmem.data.__c.2354,"a",@progbits
	.type	__c.2354, @object
	.size	__c.2354, 3
__c.2354:
	.string	"\"\n"
	.section	.progmem.data.__c.2352,"a",@progbits
	.type	__c.2352, @object
	.size	__c.2352, 10
__c.2352:
	.string	"AT+CMGS=\""
	.section	.progmem.data.__c.2334,"a",@progbits
	.type	__c.2334, @object
	.size	__c.2334, 2
__c.2334:
	.string	"\n"
	.section	.progmem.data.__c.2332,"a",@progbits
	.type	__c.2332, @object
	.size	__c.2332, 9
__c.2332:
	.string	"AT+CMGR="
	.section	.bss.index.2312,"aw",@nobits
	.type	index.2312, @object
	.size	index.2312, 15
index.2312:
	.zero	15
.global	gsm_send_byte
	.section	.data.gsm_send_byte,"aw",@progbits
	.type	gsm_send_byte, @object
	.size	gsm_send_byte, 2
gsm_send_byte:
	.word	gs(uart_putc)
.global	gsm_get_byte
	.section	.data.gsm_get_byte,"aw",@progbits
	.type	gsm_get_byte, @object
	.size	gsm_get_byte, 2
gsm_get_byte:
	.word	gs(uart_getc)
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
