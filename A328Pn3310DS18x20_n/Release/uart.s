	.file	"uart.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	__vector_18
	.type	__vector_18, @function
__vector_18:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	lds r24,192
	lds r18,198
	andi r24,lo8(24)
	lds r30,UART_RxHead
	subi r30,lo8(-(1))
	andi r30,lo8(31)
	lds r25,UART_RxTail
	cp r30,r25
	breq .L3
	sts UART_RxHead,r30
	ldi r31,0
	subi r30,lo8(-(UART_RxBuf))
	sbci r31,hi8(-(UART_RxBuf))
	st Z,r18
	rjmp .L2
.L3:
	ldi r24,lo8(2)
.L2:
	sts UART_LastRxError,r24
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_18, .-__vector_18
.global	__vector_19
	.type	__vector_19, @function
__vector_19:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	lds r25,UART_TxHead
	lds r24,UART_TxTail
	cp r25,r24
	breq .L5
	lds r30,UART_TxTail
	subi r30,lo8(-(1))
	andi r30,lo8(31)
	sts UART_TxTail,r30
	ldi r31,0
	subi r30,lo8(-(UART_TxBuf))
	sbci r31,hi8(-(UART_TxBuf))
	ld r24,Z
	sts 198,r24
	rjmp .L4
.L5:
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.L4:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_19, .-__vector_19
.global	uart_init
	.type	uart_init, @function
uart_init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts UART_TxHead,__zero_reg__
	sts UART_TxTail,__zero_reg__
	sts UART_RxHead,__zero_reg__
	sts UART_RxTail,__zero_reg__
	tst r25
	brge .L8
	ldi r18,lo8(2)
	sts 192,r18
	andi r25,127
.L8:
	sts 197,r25
	sts 196,r24
	ldi r24,lo8(-104)
	sts 193,r24
	ldi r24,lo8(6)
	sts 194,r24
	ret
	.size	uart_init, .-uart_init
.global	uart_getc
	.type	uart_getc, @function
uart_getc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r25,UART_RxHead
	lds r24,UART_RxTail
	cp r25,r24
	breq .L11
	lds r30,UART_RxTail
	subi r30,lo8(-(1))
	andi r30,lo8(31)
	sts UART_RxTail,r30
	ldi r31,0
	subi r30,lo8(-(UART_RxBuf))
	sbci r31,hi8(-(UART_RxBuf))
	ld r18,Z
	lds r24,UART_LastRxError
	ldi r25,0
	mov r25,r24
	clr r24
	add r24,r18
	adc r25,__zero_reg__
	ret
.L11:
	ldi r24,0
	ldi r25,lo8(1)
	ret
	.size	uart_getc, .-uart_getc
.global	uart_putc
	.type	uart_putc, @function
uart_putc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r18,UART_TxHead
	subi r18,lo8(-(1))
	andi r18,lo8(31)
.L14:
	lds r25,UART_TxTail
	cp r18,r25
	breq .L14
	mov r30,r18
	ldi r31,0
	subi r30,lo8(-(UART_TxBuf))
	sbci r31,hi8(-(UART_TxBuf))
	st Z,r24
	sts UART_TxHead,r18
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	ret
	.size	uart_putc, .-uart_putc
.global	uart_puts
	.type	uart_puts, @function
uart_puts:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ld r24,Y
	tst r24
	breq .L15
	adiw r28,1
.L17:
	call uart_putc
	ld r24,Y+
	cpse r24,__zero_reg__
	rjmp .L17
.L15:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	uart_puts, .-uart_puts
.global	uart_puts_p
	.type	uart_puts_p, @function
uart_puts_p:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	adiw r28,1
	movw r30,r24
/* #APP */
 ;  540 "../uart/uart.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r24
	breq .L18
.L20:
	call uart_putc
	movw r30,r28
/* #APP */
 ;  540 "../uart/uart.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	adiw r28,1
	cpse r24,__zero_reg__
	rjmp .L20
.L18:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	uart_puts_p, .-uart_puts_p
.global	uart_available
	.type	uart_available, @function
uart_available:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,UART_RxHead
	lds r18,UART_RxTail
	ldi r25,0
	adiw r24,31
	sub r24,r18
	sbc r25,__zero_reg__
	ldi r22,lo8(31)
	ldi r23,0
	call __divmodhi4
	ret
	.size	uart_available, .-uart_available
.global	uart_flush
	.type	uart_flush, @function
uart_flush:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,UART_RxTail
	sts UART_RxHead,r24
	ret
	.size	uart_flush, .-uart_flush
	.local	UART_LastRxError
	.comm	UART_LastRxError,1,1
	.local	UART_RxTail
	.comm	UART_RxTail,1,1
	.local	UART_RxHead
	.comm	UART_RxHead,1,1
	.local	UART_TxTail
	.comm	UART_TxTail,1,1
	.local	UART_TxHead
	.comm	UART_TxHead,1,1
	.local	UART_RxBuf
	.comm	UART_RxBuf,32,1
	.local	UART_TxBuf
	.comm	UART_TxBuf,32,1
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
