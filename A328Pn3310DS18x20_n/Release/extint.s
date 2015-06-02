	.file	"extint.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	ExtInt0Enable
	.type	ExtInt0Enable, @function
ExtInt0Enable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cbi 0x1d,0
	ldi r30,lo8(105)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-4)
	st Z,r24
	cbi 0xa,2
	sbi 0x1c,0
	sbi 0x1d,0
/* #APP */
 ;  25 "../extint/extint.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.size	ExtInt0Enable, .-ExtInt0Enable
.global	ExtInt0Disable
	.type	ExtInt0Disable, @function
ExtInt0Disable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cbi 0x1d,0
	sbi 0x1c,0
	ret
	.size	ExtInt0Disable, .-ExtInt0Disable
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	lds r24,extstate
	cpi r24,lo8(3)
	brlo .L4
	sts extstate,__zero_reg__
	rjmp .L3
.L4:
	subi r24,lo8(-(1))
	sts extstate,r24
.L3:
/* epilogue start */
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_1, .-__vector_1
.global	ExtInt1Enable
	.type	ExtInt1Enable, @function
ExtInt1Enable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cbi 0x1d,1
	ldi r30,lo8(105)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-9)
	st Z,r24
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	cbi 0xa,3
	sbi 0xb,3
	sbi 0x1c,1
	sbi 0x1d,1
/* #APP */
 ;  58 "../extint/extint.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.size	ExtInt1Enable, .-ExtInt1Enable
.global	ExtInt1Disable
	.type	ExtInt1Disable, @function
ExtInt1Disable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cbi 0x1d,1
	sbi 0x1c,1
	ret
	.size	ExtInt1Disable, .-ExtInt1Disable
.global	__vector_2
	.type	__vector_2, @function
__vector_2:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	sbis 0x9,3
	rjmp .L9
	lds r24,powergone
	cpi r24,lo8(100)
	brlo .L10
	ldi r24,lo8(1)
	sts powergone,r24
	rjmp .L8
.L10:
	subi r24,lo8(-(1))
	sts powergone,r24
	rjmp .L8
.L9:
	sts wait_powergone,__zero_reg__
	sts powergone,__zero_reg__
.L8:
/* epilogue start */
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_2, .-__vector_2
.global	powergone
	.section .bss
	.type	powergone, @object
	.size	powergone, 1
powergone:
	.zero	1
.global	extstate
	.type	extstate, @object
	.size	extstate, 1
extstate:
	.zero	1
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
