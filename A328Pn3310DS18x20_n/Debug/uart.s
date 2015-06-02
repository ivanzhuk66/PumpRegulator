	.file	"uart.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.global	__vector_18
	.type	__vector_18, @function
__vector_18:
.LFB1:
	.file 1 "../uart/uart.c"
	.loc 1 324 0
	.cfi_startproc
	push r1
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r24
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 332 0
	lds r24,192
.LVL0:
	.loc 1 333 0
	lds r18,198
.LVL1:
	.loc 1 341 0
	andi r24,lo8(24)
.LVL2:
	.loc 1 347 0
	lds r30,UART_RxHead
	subi r30,lo8(-(1))
	andi r30,lo8(31)
.LVL3:
	.loc 1 349 0
	lds r25,UART_RxTail
	cp r30,r25
	breq .L3
	.loc 1 354 0
	sts UART_RxHead,r30
	.loc 1 356 0
	ldi r31,0
	subi r30,lo8(-(UART_RxBuf))
	sbci r31,hi8(-(UART_RxBuf))
.LVL4:
	st Z,r18
.LVL5:
	rjmp .L2
.LVL6:
.L3:
	.loc 1 351 0
	ldi r24,lo8(2)
.LVL7:
.L2:
	.loc 1 358 0
	sts UART_LastRxError,r24
/* epilogue start */
	.loc 1 359 0
	pop r31
	pop r30
	pop r25
	pop r24
.LVL8:
	pop r18
.LVL9:
	pop r0
	out __SREG__,r0
.LVL10:
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE1:
	.size	__vector_18, .-__vector_18
.global	__vector_19
	.type	__vector_19, @function
__vector_19:
.LFB2:
	.loc 1 367 0
	.cfi_startproc
	push r1
.LCFI7:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI8:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
.LCFI9:
	.cfi_def_cfa_offset 5
	.cfi_offset 24, -4
	push r25
.LCFI10:
	.cfi_def_cfa_offset 6
	.cfi_offset 25, -5
	push r30
.LCFI11:
	.cfi_def_cfa_offset 7
	.cfi_offset 30, -6
	push r31
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 31, -7
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	.loc 1 371 0
	lds r25,UART_TxHead
	lds r24,UART_TxTail
	cp r25,r24
	breq .L5
	.loc 1 373 0
	lds r30,UART_TxTail
	subi r30,lo8(-(1))
	andi r30,lo8(31)
.LVL11:
	.loc 1 374 0
	sts UART_TxTail,r30
	.loc 1 376 0
	ldi r31,0
	subi r30,lo8(-(UART_TxBuf))
	sbci r31,hi8(-(UART_TxBuf))
.LVL12:
	ld r24,Z
	sts 198,r24
.LVL13:
	rjmp .L4
.L5:
	.loc 1 379 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.L4:
/* epilogue start */
	.loc 1 381 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE2:
	.size	__vector_19, .-__vector_19
.global	uart_init
	.type	uart_init, @function
uart_init:
.LFB3:
	.loc 1 391 0
	.cfi_startproc
.LVL14:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 392 0
	sts UART_TxHead,__zero_reg__
	.loc 1 393 0
	sts UART_TxTail,__zero_reg__
	.loc 1 394 0
	sts UART_RxHead,__zero_reg__
	.loc 1 395 0
	sts UART_RxTail,__zero_reg__
	.loc 1 426 0
	tst r25
	brge .L8
	.loc 1 428 0
	ldi r18,lo8(2)
	sts 192,r18
	.loc 1 429 0
	andi r25,127
.LVL15:
.L8:
	.loc 1 431 0
	sts 197,r25
	.loc 1 432 0
	sts 196,r24
	.loc 1 435 0
	ldi r24,lo8(-104)
.LVL16:
	sts 193,r24
	.loc 1 441 0
	ldi r24,lo8(6)
	sts 194,r24
	ret
	.cfi_endproc
.LFE3:
	.size	uart_init, .-uart_init
.global	uart_getc
	.type	uart_getc, @function
uart_getc:
.LFB4:
	.loc 1 469 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 474 0
	lds r25,UART_RxHead
	lds r24,UART_RxTail
	cp r25,r24
	breq .L11
	.loc 1 479 0
	lds r30,UART_RxTail
	subi r30,lo8(-(1))
	andi r30,lo8(31)
.LVL17:
	.loc 1 480 0
	sts UART_RxTail,r30
	.loc 1 483 0
	ldi r31,0
	subi r30,lo8(-(UART_RxBuf))
	sbci r31,hi8(-(UART_RxBuf))
.LVL18:
	ld r18,Z
.LVL19:
	.loc 1 485 0
	lds r24,UART_LastRxError
	ldi r25,0
	mov r25,r24
	clr r24
	add r24,r18
	adc r25,__zero_reg__
	ret
.LVL20:
.L11:
	.loc 1 475 0
	ldi r24,0
	ldi r25,lo8(1)
	.loc 1 487 0
	ret
	.cfi_endproc
.LFE4:
	.size	uart_getc, .-uart_getc
.global	uart_putc
	.type	uart_putc, @function
uart_putc:
.LFB5:
	.loc 1 497 0
	.cfi_startproc
.LVL21:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 501 0
	lds r18,UART_TxHead
	subi r18,lo8(-(1))
	andi r18,lo8(31)
.LVL22:
.L14:
	.loc 1 503 0 discriminator 1
	lds r25,UART_TxTail
	cp r18,r25
	breq .L14
	.loc 1 507 0
	mov r30,r18
	ldi r31,0
	subi r30,lo8(-(UART_TxBuf))
	sbci r31,hi8(-(UART_TxBuf))
	st Z,r24
	.loc 1 508 0
	sts UART_TxHead,r18
	.loc 1 511 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
.LVL23:
	ori r24,lo8(32)
	st Z,r24
	ret
	.cfi_endproc
.LFE5:
	.size	uart_putc, .-uart_putc
.global	uart_puts
	.type	uart_puts, @function
uart_puts:
.LFB6:
	.loc 1 523 0
	.cfi_startproc
.LVL24:
	push r28
.LCFI13:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 524 0
	ld r24,Y
.LVL25:
	tst r24
	breq .L15
	adiw r28,1
.LVL26:
.L17:
	.loc 1 525 0
	call uart_putc
.LVL27:
	.loc 1 524 0
	ld r24,Y+
.LVL28:
	cpse r24,__zero_reg__
	rjmp .L17
.LVL29:
.L15:
/* epilogue start */
	.loc 1 527 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE6:
	.size	uart_puts, .-uart_puts
.global	uart_puts_p
	.type	uart_puts_p, @function
uart_puts_p:
.LFB7:
	.loc 1 537 0
	.cfi_startproc
.LVL30:
	push r28
.LCFI15:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI16:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LBB2:
	.loc 1 540 0
	movw r28,r24
	adiw r28,1
.LVL31:
	movw r30,r24
/* #APP */
 ;  540 "../uart/uart.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL32:
/* #NOAPP */
.LBE2:
	tst r24
	breq .L18
.L20:
.LVL33:
	.loc 1 541 0
	call uart_putc
.LVL34:
.LBB3:
	.loc 1 540 0
	movw r30,r28
/* #APP */
 ;  540 "../uart/uart.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL35:
/* #NOAPP */
	adiw r28,1
.LVL36:
.LBE3:
	cpse r24,__zero_reg__
	rjmp .L20
.L18:
/* epilogue start */
	.loc 1 543 0
	pop r29
	pop r28
.LVL37:
	ret
	.cfi_endproc
.LFE7:
	.size	uart_puts_p, .-uart_puts_p
.global	uart_available
	.type	uart_available, @function
uart_available:
.LFB8:
	.loc 1 554 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 555 0
	lds r24,UART_RxHead
	lds r18,UART_RxTail
	ldi r25,0
	adiw r24,31
	sub r24,r18
	sbc r25,__zero_reg__
	ldi r22,lo8(31)
	ldi r23,0
	call __divmodhi4
	.loc 1 556 0
	ret
	.cfi_endproc
.LFE8:
	.size	uart_available, .-uart_available
.global	uart_flush
	.type	uart_flush, @function
uart_flush:
.LFB9:
	.loc 1 567 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 568 0
	lds r24,UART_RxTail
	sts UART_RxHead,r24
	ret
	.cfi_endproc
.LFE9:
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
.Letext0:
	.file 2 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x326
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF32
	.byte	0x1
	.long	.LASF33
	.long	.LASF34
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7a
	.long	0x37
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
	.long	0x50
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
	.long	.LASF12
	.byte	0x1
	.word	0x13f
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.long	.LLST0
	.byte	0x1
	.long	0xcf
	.uleb128 0x6
	.long	.LASF9
	.byte	0x1
	.word	0x145
	.long	0x37
	.long	.LLST1
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.word	0x146
	.long	0x37
	.long	.LLST2
	.uleb128 0x7
	.string	"usr"
	.byte	0x1
	.word	0x147
	.long	0x37
	.long	.LLST3
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.word	0x148
	.long	0x37
	.long	.LLST4
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.word	0x16a
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.long	.LLST5
	.byte	0x1
	.long	0xfb
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.word	0x170
	.long	0x37
	.long	.LLST6
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.word	0x186
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x127
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.word	0x186
	.long	0x50
	.long	.LLST7
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.word	0x1d4
	.byte	0x1
	.long	0x3e
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x167
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.word	0x1d6
	.long	0x37
	.long	.LLST8
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.word	0x1d7
	.long	0x37
	.long	.LLST9
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.word	0x1f0
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1a1
	.uleb128 0x9
	.long	.LASF10
	.byte	0x1
	.word	0x1f0
	.long	0x37
	.long	.LLST10
	.uleb128 0xb
	.long	.LASF9
	.byte	0x1
	.word	0x1f2
	.long	0x37
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.word	0x20a
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST11
	.byte	0x1
	.long	0x1d4
	.uleb128 0xc
	.string	"s"
	.byte	0x1
	.word	0x20a
	.long	0x1d4
	.long	.LLST12
	.uleb128 0xd
	.long	.LVL27
	.long	0x167
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x1da
	.uleb128 0xf
	.long	0x1df
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF19
	.uleb128 0x5
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.word	0x218
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST13
	.byte	0x1
	.long	0x253
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.word	0x218
	.long	0x1d4
	.long	.LLST14
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.word	0x21a
	.long	0x1df
	.long	.LLST15
	.uleb128 0x10
	.long	.Ldebug_ranges0+0
	.long	0x249
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.word	0x21c
	.long	0x45
	.long	.LLST16
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.word	0x21c
	.long	0x2c
	.long	.LLST15
	.byte	0
	.uleb128 0xd
	.long	.LVL34
	.long	0x167
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.word	0x229
	.byte	0x1
	.long	0x3e
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.word	0x236
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x13
	.long	0x37
	.long	0x295
	.uleb128 0x14
	.long	0x295
	.byte	0x1f
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF24
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.word	0x12b
	.long	0x2ae
	.byte	0x5
	.byte	0x3
	.long	UART_TxBuf
	.uleb128 0x15
	.long	0x285
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.word	0x12c
	.long	0x2c5
	.byte	0x5
	.byte	0x3
	.long	UART_RxBuf
	.uleb128 0x15
	.long	0x285
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.word	0x12d
	.long	0x2dc
	.byte	0x5
	.byte	0x3
	.long	UART_TxHead
	.uleb128 0x15
	.long	0x37
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.word	0x12e
	.long	0x2dc
	.byte	0x5
	.byte	0x3
	.long	UART_TxTail
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.word	0x12f
	.long	0x2dc
	.byte	0x5
	.byte	0x3
	.long	UART_RxHead
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.word	0x130
	.long	0x2dc
	.byte	0x5
	.byte	0x3
	.long	UART_RxTail
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.word	0x131
	.long	0x2dc
	.byte	0x5
	.byte	0x3
	.long	UART_LastRxError
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB1-.Ltext0
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
	.long	.LFE1-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST1:
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.word	0x1
	.byte	0x6e
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.word	0x5
	.byte	0x3
	.long	UART_RxHead
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST2:
	.long	.LVL1-.Ltext0
	.long	.LVL9-.Ltext0
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST3:
	.long	.LVL0-.Ltext0
	.long	.LVL2-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST4:
	.long	.LVL2-.Ltext0
	.long	.LVL8-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL8-.Ltext0
	.long	.LVL10-.Ltext0
	.word	0x5
	.byte	0x3
	.long	UART_LastRxError
	.long	0
	.long	0
.LLST5:
	.long	.LFB2-.Ltext0
	.long	.LCFI7-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI8-.Ltext0
	.long	.LCFI9-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI12-.Ltext0
	.long	.LFE2-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST6:
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.word	0x1
	.byte	0x6e
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
	.word	0x5
	.byte	0x3
	.long	UART_TxTail
	.long	0
	.long	0
.LLST7:
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
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL17-.Ltext0
	.long	.LVL18-.Ltext0
	.word	0x1
	.byte	0x6e
	.long	.LVL18-.Ltext0
	.long	.LVL20-.Ltext0
	.word	0x5
	.byte	0x3
	.long	UART_RxTail
	.long	0
	.long	0
.LLST9:
	.long	.LVL19-.Ltext0
	.long	.LVL20-.Ltext0
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST10:
	.long	.LVL21-.Ltext0
	.long	.LVL23-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL23-.Ltext0
	.long	.LFE5-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST12:
	.long	.LVL24-.Ltext0
	.long	.LVL25-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25-.Ltext0
	.long	.LVL28-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LFB7-.Ltext0
	.long	.LCFI15-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI16-.Ltext0
	.long	.LFE7-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST14:
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31-.Ltext0
	.long	.LVL34-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34-.Ltext0
	.long	.LVL36-.Ltext0
	.word	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.long	.LVL36-.Ltext0
	.long	.LVL37-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST15:
	.long	.LVL32-.Ltext0
	.long	.LVL34-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL35-.Ltext0
	.long	.LFE7-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST16:
	.long	.LVL31-.Ltext0
	.long	.LVL32-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32-.Ltext0
	.long	.LVL33-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33-.Ltext0
	.long	.LVL34-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL34-.Ltext0
	.long	.LVL36-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36-.Ltext0
	.long	.LFE7-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2-.Ltext0
	.long	.LBE2-.Ltext0
	.long	.LBB3-.Ltext0
	.long	.LBE3-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"__addr16"
.LASF31:
	.string	"UART_LastRxError"
.LASF26:
	.string	"UART_RxBuf"
.LASF25:
	.string	"UART_TxBuf"
.LASF9:
	.string	"tmphead"
.LASF15:
	.string	"uart_init"
.LASF10:
	.string	"data"
.LASF12:
	.string	"__vector_18"
.LASF13:
	.string	"__vector_19"
.LASF1:
	.string	"unsigned char"
.LASF37:
	.string	"uart_flush"
.LASF27:
	.string	"UART_TxHead"
.LASF6:
	.string	"long unsigned int"
.LASF35:
	.string	"uart_getc"
.LASF23:
	.string	"__result"
.LASF30:
	.string	"UART_RxTail"
.LASF34:
	.string	"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/Debug"
.LASF33:
	.string	"../uart/uart.c"
.LASF4:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF24:
	.string	"sizetype"
.LASF14:
	.string	"tmptail"
.LASF7:
	.string	"long long int"
.LASF17:
	.string	"baudrate"
.LASF11:
	.string	"lastRxError"
.LASF20:
	.string	"uart_puts_p"
.LASF21:
	.string	"progmem_s"
.LASF3:
	.string	"uint16_t"
.LASF36:
	.string	"uart_available"
.LASF32:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega328p -g2 -gdwarf-2 -g -O1 -std=gnu99 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
.LASF16:
	.string	"uart_putc"
.LASF5:
	.string	"long int"
.LASF19:
	.string	"char"
.LASF28:
	.string	"UART_TxTail"
.LASF0:
	.string	"signed char"
.LASF29:
	.string	"UART_RxHead"
.LASF18:
	.string	"uart_puts"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
