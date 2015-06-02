	.file	"timer.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	WDT_off
	.type	WDT_off, @function
WDT_off:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  19 "../timer/timer.c" 1
	cli
 ;  0 "" 2
 ;  20 "../timer/timer.c" 1
	wdr
 ;  0 "" 2
/* #NOAPP */
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
	ldi r30,lo8(96)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(24)
	st Z,r24
	st Z,__zero_reg__
/* #APP */
 ;  29 "../timer/timer.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.size	WDT_off, .-WDT_off
.global	__vector_6
	.type	__vector_6, @function
__vector_6:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
/* #APP */
 ;  35 "../timer/timer.c" 1
	cli
 ;  0 "" 2
 ;  36 "../timer/timer.c" 1
	wdr
 ;  0 "" 2
 ;  37 "../timer/timer.c" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_6, .-__vector_6
.global	WDT_setup
	.type	WDT_setup, @function
WDT_setup:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  43 "../timer/timer.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
	ldi r30,lo8(96)
	ldi r31,0
	ldi r24,lo8(24)
	st Z,r24
	ldi r24,lo8(97)
	st Z,r24
/* #APP */
 ;  48 "../timer/timer.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.size	WDT_setup, .-WDT_setup
.global	init_clock
	.type	init_clock, @function
init_clock:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(64)
	ldi r19,0
	ldi r21,lo8(-1)
	ldi r20,lo8(-1)
	rjmp .L5
.L8:
	sbiw r24,1
	sbiw r24,0
	brne .L8
	subi r18,1
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L7
.L5:
	mov r24,r21
	mov r25,r20
	rjmp .L8
.L7:
	ldi r30,lo8(112)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-8)
	st Z,r24
	ldi r30,lo8(-74)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	sts 178,__zero_reg__
	ldi r24,lo8(5)
	sts 177,r24
.L10:
	ld r24,Z
	andi r24,lo8(31)
	brne .L10
	ldi r30,lo8(112)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
/* #APP */
 ;  71 "../timer/timer.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.size	init_clock, .-init_clock
.global	not_leap
	.type	not_leap, @function
not_leap:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
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
	mov r24,r20
	andi r24,lo8(3)
	ret
	.size	not_leap, .-not_leap
.global	__vector_9
	.type	__vector_9, @function
__vector_9:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	lds r24,tAsync
	subi r24,lo8(-(1))
	cpi r24,lo8(60)
	breq .L15
	sts tAsync,r24
	rjmp .L14
.L15:
	sts tAsync,__zero_reg__
	lds r24,TimeKeyPressed
	subi r24,lo8(-(1))
	sts TimeKeyPressed,r24
	lds r24,CheckNoReadySNCounter
	subi r24,lo8(-(1))
	sts CheckNoReadySNCounter,r24
	lds r24,tAsync+1
	subi r24,lo8(-(1))
	cpi r24,lo8(60)
	breq .L17
	sts tAsync+1,r24
	rjmp .L18
.L17:
	sts tAsync+1,__zero_reg__
	lds r24,tAsync+2
	subi r24,lo8(-(1))
	cpi r24,lo8(24)
	breq .L19
	sts tAsync+2,r24
	rjmp .L18
.L19:
	sts tAsync+2,__zero_reg__
	ldi r30,lo8(tAsync+3)
	ldi r31,hi8(tAsync+3)
	ld r24,Z
	subi r24,lo8(-(1))
	st Z,r24
	cpi r24,lo8(32)
	brne .L20
	ldi r30,lo8(tAsync+4)
	ldi r31,hi8(tAsync+4)
	ld r24,Z
	subi r24,lo8(-(1))
	st Z,r24
	ldi r24,lo8(1)
	sts tAsync+3,r24
	rjmp .L21
.L20:
	cpi r24,lo8(31)
	brne .L22
	lds r24,tAsync+4
	mov r25,r24
	andi r25,lo8(-3)
	cpi r25,lo8(4)
	breq .L23
	cpi r25,lo8(9)
	brne .L21
.L23:
	subi r24,lo8(-(1))
	sts tAsync+4,r24
	ldi r24,lo8(1)
	sts tAsync+3,r24
	rjmp .L21
.L22:
	cpi r24,lo8(30)
	brne .L24
	lds r24,tAsync+4
	cpi r24,lo8(2)
	brne .L21
	ldi r24,lo8(3)
	sts tAsync+4,r24
	ldi r24,lo8(1)
	sts tAsync+3,r24
	rjmp .L21
.L24:
	cpi r24,lo8(29)
	brne .L21
	lds r24,tAsync+4
	cpi r24,lo8(2)
	brne .L21
	call not_leap
	tst r24
	breq .L18
	ldi r24,lo8(3)
	sts tAsync+4,r24
	ldi r24,lo8(1)
	sts tAsync+3,r24
.L21:
	lds r24,tAsync+4
	cpi r24,lo8(13)
	brne .L18
	ldi r24,lo8(1)
	sts tAsync+4,r24
	ldi r30,lo8(tAsync+5)
	ldi r31,hi8(tAsync+5)
	ld r24,Z
	ldd r25,Z+1
	adiw r24,1
	std Z+1,r25
	st Z,r24
.L18:
	lds r24,wait_powergone
	tst r24
	breq .L14
	subi r24,lo8(-(1))
	sts wait_powergone,r24
.L14:
/* epilogue start */
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
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
