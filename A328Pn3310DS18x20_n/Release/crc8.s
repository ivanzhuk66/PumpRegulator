	.file	"crc8.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	crc8
	.type	crc8, @function
crc8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L8
	movw r30,r24
	add r22,r24
	adc r23,r25
	ldi r24,0
	ldi r21,lo8(8)
	ldi r20,lo8(24)
.L6:
	ld r18,Z+
	mov r25,r21
.L5:
	mov r19,r18
	eor r19,r24
	sbrs r19,0
	rjmp .L3
	eor r24,r20
	lsr r24
	ori r24,lo8(-128)
.L7:
	lsr r18
	subi r25,lo8(-(-1))
	brne .L5
	cp r30,r22
	cpc r31,r23
	brne .L6
	ret
.L8:
	ldi r24,0
	ret
.L3:
	lsr r24
	rjmp .L7
	.size	crc8, .-crc8
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
