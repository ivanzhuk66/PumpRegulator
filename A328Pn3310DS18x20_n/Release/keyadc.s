	.file	"keyadc.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.__vector_21,"ax",@progbits
.global	__vector_21
	.type	__vector_21, @function
__vector_21:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  15 "../keypad/keyadc.c" 1
	   jmp IntAdc;                   

 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	.size	__vector_21, .-__vector_21
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  22 "../keypad/keyadc.c" 1
		jmp	IntAnalogComp				

 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	.size	__vector_23, .-__vector_23
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
