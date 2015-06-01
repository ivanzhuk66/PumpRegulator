	.file	"onewire.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.ow_set_bus,"ax",@progbits
.global	ow_set_bus
	.type	ow_set_bus, @function
ow_set_bus:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts OW_DDR+1,r21
	sts OW_DDR,r20
	sts OW_OUT+1,r23
	sts OW_OUT,r22
	sts OW_IN+1,r25
	sts OW_IN,r24
	ldi r24,lo8(1)
	mov r0,r18
	rjmp 2f
	1:
	lsl r24
	2:
	dec r0
	brpl 1b
	sts OW_PIN_MASK,r24
	sts OW_PIN,r18
	ret
	.size	ow_set_bus, .-ow_set_bus
	.section	.text.ow_input_pin_state,"ax",@progbits
.global	ow_input_pin_state
	.type	ow_input_pin_state, @function
ow_input_pin_state:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,OW_IN
	lds r31,OW_IN+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	and r24,r25
	ret
	.size	ow_input_pin_state, .-ow_input_pin_state
	.section	.text.ow_parasite_enable,"ax",@progbits
.global	ow_parasite_enable
	.type	ow_parasite_enable, @function
ow_parasite_enable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
	ret
	.size	ow_parasite_enable, .-ow_parasite_enable
	.section	.text.ow_bit_io_intern,"ax",@progbits
	.type	ow_bit_io_intern, @function
ow_bit_io_intern:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r24
	in r29,__SREG__
/* #APP */
 ;  50 "/AtmelAvrToolchain/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
	ldi r24,lo8(5)
	1: dec r24
	brne 1b
	nop
	tst r28
	breq .L5
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
.L5:
	ldi r24,lo8(32)
	1: dec r24
	brne 1b
	lds r30,OW_IN
	lds r31,OW_IN+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	and r24,r25
	brne .L6
	ldi r28,0
.L6:
	ldi r24,lo8(117)
	1: dec r24
	brne 1b
	nop
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r18,Z
	lds r25,OW_PIN_MASK
	com r25
	and r25,r18
	st Z,r25
	cpse r22,__zero_reg__
	call ow_parasite_enable
.L7:
	out __SREG__,r29
	ldi r24,lo8(26)
	1: dec r24
	brne 1b
	rjmp .
	mov r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	ow_bit_io_intern, .-ow_bit_io_intern
	.section	.text.ow_parasite_disable,"ax",@progbits
.global	ow_parasite_disable
	.type	ow_parasite_disable, @function
ow_parasite_disable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
	ret
	.size	ow_parasite_disable, .-ow_parasite_disable
	.section	.text.ow_bit_io,"ax",@progbits
.global	ow_bit_io
	.type	ow_bit_io, @function
ow_bit_io:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,0
	andi r24,lo8(1)
	call ow_bit_io_intern
	ret
	.size	ow_bit_io, .-ow_bit_io
	.section	.text.ow_byte_wr,"ax",@progbits
.global	ow_byte_wr
	.type	ow_byte_wr, @function
ow_byte_wr:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r24
	ldi r29,lo8(8)
.L14:
	mov r24,r28
	andi r24,lo8(1)
	call ow_bit_io
	lsr r28
	cpse r24,__zero_reg__
	ori r28,lo8(-128)
.L12:
	subi r29,lo8(-(-1))
	brne .L14
	mov r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	ow_byte_wr, .-ow_byte_wr
	.section	.text.ow_byte_wr_with_parasite_enable,"ax",@progbits
.global	ow_byte_wr_with_parasite_enable
	.type	ow_byte_wr_with_parasite_enable, @function
ow_byte_wr_with_parasite_enable:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r24
	ldi r29,lo8(8)
.L20:
	cpi r29,lo8(1)
	breq .L16
	ldi r22,0
	mov r24,r28
	andi r24,lo8(1)
	call ow_bit_io_intern
	rjmp .L17
.L16:
	ldi r22,lo8(1)
	mov r24,r28
	andi r24,lo8(1)
	call ow_bit_io_intern
.L17:
	lsr r28
	cpse r24,__zero_reg__
	ori r28,lo8(-128)
.L18:
	subi r29,lo8(-(-1))
	brne .L20
	mov r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	ow_byte_wr_with_parasite_enable, .-ow_byte_wr_with_parasite_enable
	.section	.text.ow_command_intern,"ax",@progbits
	.type	ow_command_intern, @function
ow_command_intern:
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
	mov r14,r24
	movw r28,r22
	mov r15,r20
	call OWReset
	sbiw r28,0
	breq .L22
	ldi r24,lo8(85)
	call ow_byte_wr
	movw r16,r28
	subi r16,-8
	sbci r17,-1
.L24:
	ld r24,Y+
	call ow_byte_wr
	cp r28,r16
	cpc r29,r17
	brne .L24
	rjmp .L23
.L22:
	ldi r24,lo8(-52)
	call ow_byte_wr
.L23:
	tst r15
	breq .L25
	mov r24,r14
	call ow_byte_wr_with_parasite_enable
	rjmp .L21
.L25:
	mov r24,r14
	call ow_byte_wr
.L21:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	ow_command_intern, .-ow_command_intern
	.section	.text.ow_byte_rd,"ax",@progbits
.global	ow_byte_rd
	.type	ow_byte_rd, @function
ow_byte_rd:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(-1)
	call ow_byte_wr
	ret
	.size	ow_byte_rd, .-ow_byte_rd
	.section	.text.ow_command,"ax",@progbits
.global	ow_command
	.type	ow_command, @function
ow_command:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,0
	call ow_command_intern
	ret
	.size	ow_command, .-ow_command
	.section	.text.ow_command_with_parasite_enable,"ax",@progbits
.global	ow_command_with_parasite_enable
	.type	ow_command_with_parasite_enable, @function
ow_command_with_parasite_enable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(1)
	call ow_command_intern
	ret
	.size	ow_command_with_parasite_enable, .-ow_command_with_parasite_enable
	.comm	OW_DDR,2,1
	.comm	OW_OUT,2,1
	.comm	OW_IN,2,1
	.comm	OW_PIN_MASK,1,1
	.comm	OW_PIN,1,1
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
