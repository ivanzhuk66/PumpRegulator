	.file	"timer.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.global	WDT_off
	.type	WDT_off, @function
WDT_off:
.LFB0:
	.file 1 "../timer/timer.c"
	.loc 1 18 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 19 0
/* #APP */
 ;  19 "../timer/timer.c" 1
	cli
 ;  0 "" 2
	.loc 1 20 0
 ;  20 "../timer/timer.c" 1
	wdr
 ;  0 "" 2
	.loc 1 22 0
/* #NOAPP */
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
	.loc 1 26 0
	ldi r30,lo8(96)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(24)
	st Z,r24
	.loc 1 28 0
	st Z,__zero_reg__
	.loc 1 29 0
/* #APP */
 ;  29 "../timer/timer.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.cfi_endproc
.LFE0:
	.size	WDT_off, .-WDT_off
.global	__vector_6
	.type	__vector_6, @function
__vector_6:
.LFB1:
	.loc 1 34 0
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
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	.loc 1 35 0
/* #APP */
 ;  35 "../timer/timer.c" 1
	cli
 ;  0 "" 2
	.loc 1 36 0
 ;  36 "../timer/timer.c" 1
	wdr
 ;  0 "" 2
	.loc 1 37 0
 ;  37 "../timer/timer.c" 1
	sei
 ;  0 "" 2
/* epilogue start */
	.loc 1 38 0
/* #NOAPP */
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE1:
	.size	__vector_6, .-__vector_6
.global	WDT_setup
	.type	WDT_setup, @function
WDT_setup:
.LFB2:
	.loc 1 41 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 43 0
/* #APP */
 ;  43 "../timer/timer.c" 1
	cli
 ;  0 "" 2
	.loc 1 44 0
/* #NOAPP */
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
	.loc 1 45 0
	ldi r30,lo8(96)
	ldi r31,0
	ldi r24,lo8(24)
	st Z,r24
	.loc 1 46 0
	ldi r24,lo8(97)
	st Z,r24
	.loc 1 48 0
/* #APP */
 ;  48 "../timer/timer.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.cfi_endproc
.LFE2:
	.size	WDT_setup, .-WDT_setup
.global	init_clock
	.type	init_clock, @function
init_clock:
.LFB3:
	.loc 1 54 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
	.loc 1 54 0
	ldi r18,lo8(64)
	ldi r19,0
	ldi r21,lo8(-1)
	ldi r20,lo8(-1)
	rjmp .L5
.LVL1:
.L8:
	sbiw r24,1
.LVL2:
	.loc 1 60 0 discriminator 2
	sbiw r24,0
	brne .L8
.LVL3:
	subi r18,1
	sbc r19,__zero_reg__
.LVL4:
	.loc 1 58 0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L7
.LVL5:
.L5:
	.loc 1 54 0 discriminator 1
	mov r24,r21
	mov r25,r20
	rjmp .L8
.LVL6:
.L7:
	.loc 1 63 0
	ldi r30,lo8(112)
	ldi r31,0
	ld r24,Z
.LVL7:
	andi r24,lo8(-8)
	st Z,r24
	.loc 1 64 0
	ldi r30,lo8(-74)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	.loc 1 66 0
	sts 178,__zero_reg__
	.loc 1 67 0
	ldi r24,lo8(5)
	sts 177,r24
.L10:
	.loc 1 69 0 discriminator 1
	ld r24,Z
	andi r24,lo8(31)
	brne .L10
	.loc 1 70 0
	ldi r30,lo8(112)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	.loc 1 71 0
/* #APP */
 ;  71 "../timer/timer.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.cfi_endproc
.LFE3:
	.size	init_clock, .-init_clock
.global	not_leap
	.type	not_leap, @function
not_leap:
.LFB5:
	.loc 1 132 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 133 0
	lds r20,tAsync+5
	lds r21,tAsync+5+1
	movw r18,r20
	lsr r19
	ror r18
	lsr r19
	ror r18
	ldi r26,lo8(123)
	ldi r27,lo8(20)
	call __umulhisi3
	lsr r25
	ror r24
	ldi r22,lo8(100)
	mul r22,r24
	movw r18,r0
	mul r22,r25
	add r19,r0
	clr __zero_reg__
	cp r20,r18
	cpc r21,r19
	brne .L12
	.loc 1 134 0
	movw r18,r20
	swap r19
	swap r18
	andi r18,0x0f
	eor r18,r19
	andi r19,0x0f
	eor r18,r19
	ldi r26,lo8(62)
	ldi r27,lo8(10)
	call __umulhisi3
	mov r25,r20
	ldi r18,lo8(112)
	mul r24,r18
	add r25,r0
	clr __zero_reg__
	mov r24,r25
	ret
.L12:
	.loc 1 136 0
	mov r24,r20
	andi r24,lo8(3)
	.loc 1 137 0
	ret
	.cfi_endproc
.LFE5:
	.size	not_leap, .-not_leap
.global	__vector_9
	.type	__vector_9, @function
__vector_9:
.LFB4:
	.loc 1 75 0
	.cfi_startproc
	push r1
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI5:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI6:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI8:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI9:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI10:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI11:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI12:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI13:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI14:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI15:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 77 0
	lds r24,tAsync
	subi r24,lo8(-(1))
	cpi r24,lo8(60)
	breq .L15
	sts tAsync,r24
	rjmp .L14
.L15:
	.loc 1 79 0
	sts tAsync,__zero_reg__
	.loc 1 80 0
	lds r24,TimeKeyPressed
	subi r24,lo8(-(1))
	sts TimeKeyPressed,r24
	.loc 1 81 0
	lds r24,CheckNoReadySNCounter
	subi r24,lo8(-(1))
	sts CheckNoReadySNCounter,r24
	.loc 1 82 0
	lds r24,tAsync+1
	subi r24,lo8(-(1))
	cpi r24,lo8(60)
	breq .L17
	sts tAsync+1,r24
	rjmp .L18
.L17:
	.loc 1 84 0
	sts tAsync+1,__zero_reg__
	.loc 1 85 0
	lds r24,tAsync+2
	subi r24,lo8(-(1))
	cpi r24,lo8(24)
	breq .L19
	sts tAsync+2,r24
	rjmp .L18
.L19:
	.loc 1 87 0
	sts tAsync+2,__zero_reg__
	.loc 1 88 0
	ldi r30,lo8(tAsync+3)
	ldi r31,hi8(tAsync+3)
	ld r24,Z
	subi r24,lo8(-(1))
	st Z,r24
	cpi r24,lo8(32)
	brne .L20
	.loc 1 90 0
	ldi r30,lo8(tAsync+4)
	ldi r31,hi8(tAsync+4)
	ld r24,Z
	subi r24,lo8(-(1))
	st Z,r24
	.loc 1 91 0
	ldi r24,lo8(1)
	sts tAsync+3,r24
	rjmp .L21
.L20:
	.loc 1 93 0
	cpi r24,lo8(31)
	brne .L22
	.loc 1 95 0
	lds r24,tAsync+4
	mov r25,r24
	andi r25,lo8(-3)
	cpi r25,lo8(4)
	breq .L23
	.loc 1 95 0 is_stmt 0 discriminator 1
	cpi r25,lo8(9)
	brne .L21
.L23:
	.loc 1 97 0 is_stmt 1
	subi r24,lo8(-(1))
	sts tAsync+4,r24
	.loc 1 98 0
	ldi r24,lo8(1)
	sts tAsync+3,r24
	rjmp .L21
.L22:
	.loc 1 101 0
	cpi r24,lo8(30)
	brne .L24
	.loc 1 103 0
	lds r24,tAsync+4
	cpi r24,lo8(2)
	brne .L21
	.loc 1 105 0
	ldi r24,lo8(3)
	sts tAsync+4,r24
	.loc 1 106 0
	ldi r24,lo8(1)
	sts tAsync+3,r24
	rjmp .L21
.L24:
	.loc 1 109 0
	cpi r24,lo8(29)
	brne .L21
	.loc 1 111 0
	lds r24,tAsync+4
	cpi r24,lo8(2)
	brne .L21
	.loc 1 111 0 is_stmt 0 discriminator 1
	call not_leap
.LVL8:
	tst r24
	breq .L18
	.loc 1 113 0 is_stmt 1
	ldi r24,lo8(3)
	sts tAsync+4,r24
	.loc 1 114 0
	ldi r24,lo8(1)
	sts tAsync+3,r24
.L21:
	.loc 1 117 0
	lds r24,tAsync+4
	cpi r24,lo8(13)
	brne .L18
	.loc 1 119 0
	ldi r24,lo8(1)
	sts tAsync+4,r24
	.loc 1 120 0
	ldi r30,lo8(tAsync+5)
	ldi r31,hi8(tAsync+5)
	ld r24,Z
	ldd r25,Z+1
	adiw r24,1
	std Z+1,r25
	st Z,r24
.L18:
	.loc 1 125 0
	lds r24,wait_powergone
	tst r24
	breq .L14
	.loc 1 125 0 is_stmt 0 discriminator 1
	subi r24,lo8(-(1))
	sts wait_powergone,r24
.L14:
/* epilogue start */
	.loc 1 129 0 is_stmt 1
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE4:
	.size	__vector_9, .-__vector_9
.global	wait_powergone
	.section .bss
	.type	wait_powergone, @object
	.size	wait_powergone, 1
wait_powergone:
	.zero	1
	.comm	CheckNoReadySNCounter,1,1
	.comm	TimeKeyPressed,1,1
.global	tAsync
	.data
	.type	tAsync, @object
	.size	tAsync, 7
tAsync:
	.byte	0
	.byte	25
	.byte	11
	.byte	1
	.byte	1
	.word	2014
	.text
.Letext0:
	.file 2 "../timer/timer.h"
	.file 3 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1d5
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF27
	.byte	0x1
	.long	.LASF28
	.long	.LASF29
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.byte	0xb
	.long	0xc5
	.uleb128 0x6
	.long	.LASF7
	.byte	0x2
	.byte	0xc
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF8
	.byte	0x2
	.byte	0xd
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF9
	.byte	0x2
	.byte	0xe
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF10
	.byte	0x2
	.byte	0xf
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.long	.LASF11
	.byte	0x2
	.byte	0x10
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0x11
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF14
	.byte	0x2
	.byte	0x12
	.long	0x68
	.uleb128 0x7
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.long	.LLST0
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x14b
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0x38
	.long	0x3e
	.long	.LLST1
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0x38
	.long	0x3e
	.long	.LLST2
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.long	0x165
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF20
	.uleb128 0xc
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.long	.LLST3
	.byte	0x1
	.long	0x190
	.uleb128 0xd
	.long	.LVL8
	.long	0x14b
	.byte	0
	.uleb128 0xe
	.long	.LASF23
	.byte	0x1
	.byte	0xc
	.long	0xc5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	tAsync
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.byte	0xd
	.long	0x2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TimeKeyPressed
	.uleb128 0xe
	.long	.LASF25
	.byte	0x1
	.byte	0xe
	.long	0x2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	CheckNoReadySNCounter
	.uleb128 0xe
	.long	.LASF26
	.byte	0x1
	.byte	0xf
	.long	0x165
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	wait_powergone
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.long	.LFE1-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL0-.Ltext0
	.long	.LVL1-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1-.Ltext0
	.long	.LVL3-.Ltext0
	.word	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.word	0x6
	.byte	0x8
	.byte	0x41
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL4-.Ltext0
	.long	.LFE3-.Ltext0
	.word	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.word	0x4
	.byte	0x88
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.long	.LVL2-.Ltext0
	.long	.LVL5-.Ltext0
	.word	0x4
	.byte	0x88
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6-.Ltext0
	.long	.LVL7-.Ltext0
	.word	0x4
	.byte	0x88
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB4-.Ltext0
	.long	.LCFI2-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2-.Ltext0
	.long	.LCFI3-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4-.Ltext0
	.long	.LCFI5-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI5-.Ltext0
	.long	.LCFI6-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI8-.Ltext0
	.long	.LCFI9-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI12-.Ltext0
	.long	.LCFI13-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI14-.Ltext0
	.long	.LCFI15-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI15-.Ltext0
	.long	.LFE4-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
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
.LASF28:
	.string	"../timer/timer.c"
.LASF12:
	.string	"year"
.LASF8:
	.string	"minute"
.LASF15:
	.string	"WDT_off"
.LASF11:
	.string	"month"
.LASF10:
	.string	"date"
.LASF1:
	.string	"unsigned char"
.LASF24:
	.string	"TimeKeyPressed"
.LASF30:
	.string	"not_leap"
.LASF4:
	.string	"long unsigned int"
.LASF17:
	.string	"WDT_setup"
.LASF7:
	.string	"second"
.LASF21:
	.string	"init_clock"
.LASF29:
	.string	"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/Debug"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF9:
	.string	"hour"
.LASF14:
	.string	"time"
.LASF5:
	.string	"long long int"
.LASF20:
	.string	"char"
.LASF18:
	.string	"temp0"
.LASF19:
	.string	"temp1"
.LASF27:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega328p -g2 -gdwarf-2 -g -O1 -std=gnu99 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
.LASF23:
	.string	"tAsync"
.LASF16:
	.string	"__vector_6"
.LASF3:
	.string	"long int"
.LASF22:
	.string	"__vector_9"
.LASF0:
	.string	"signed char"
.LASF26:
	.string	"wait_powergone"
.LASF25:
	.string	"CheckNoReadySNCounter"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
