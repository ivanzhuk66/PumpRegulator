	.file	"onewire.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.global	ow_set_bus
	.type	ow_set_bus, @function
ow_set_bus:
.LFB11:
	.file 1 "../onewire/onewire.c"
	.loc 1 38 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 39 0
	sts OW_DDR+1,r21
	sts OW_DDR,r20
	.loc 1 40 0
	sts OW_OUT+1,r23
	sts OW_OUT,r22
	.loc 1 41 0
	sts OW_IN+1,r25
	sts OW_IN,r24
	.loc 1 42 0
	ldi r24,lo8(1)
.LVL1:
	mov r0,r18
	rjmp 2f
	1:
	lsl r24
	2:
	dec r0
	brpl 1b
	sts OW_PIN_MASK,r24
	.loc 1 43 0
	sts OW_PIN,r18
	ret
	.cfi_endproc
.LFE11:
	.size	ow_set_bus, .-ow_set_bus
.global	ow_input_pin_state
	.type	ow_input_pin_state, @function
ow_input_pin_state:
.LFB12:
	.loc 1 50 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 51 0
	lds r30,OW_IN
	lds r31,OW_IN+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	.loc 1 52 0
	and r24,r25
	ret
	.cfi_endproc
.LFE12:
	.size	ow_input_pin_state, .-ow_input_pin_state
.global	ow_parasite_enable
	.type	ow_parasite_enable, @function
ow_parasite_enable:
.LFB13:
	.loc 1 55 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 56 0
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
	.loc 1 57 0
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
	ret
	.cfi_endproc
.LFE13:
	.size	ow_parasite_enable, .-ow_parasite_enable
	.type	ow_bit_io_intern, @function
ow_bit_io_intern:
.LFB15:
	.loc 1 110 0
	.cfi_startproc
.LVL2:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r24
.LBB15:
	.loc 1 111 0
	in r29,__SREG__
.LVL3:
.LBB16:
.LBB17:
	.file 2 "/avr8-gnu-toolchain-linux_x86/avr/include/util/atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "/avr8-gnu-toolchain-linux_x86/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL4:
/* #NOAPP */
.LBE17:
.LBE16:
	.loc 1 113 0
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
.LVL5:
	com r24
	and r24,r25
	st Z,r24
	.loc 1 115 0
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
.LVL6:
.LBB18:
.LBB19:
	.file 3 "/avr8-gnu-toolchain-linux_x86/avr/include/util/delay.h"
	.loc 3 245 0
	ldi r24,lo8(5)
	1: dec r24
	brne 1b
	nop
.LBE19:
.LBE18:
	.loc 1 117 0
	tst r28
	breq .L5
	.loc 1 118 0
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
	.loc 1 120 0
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
.L5:
.LVL7:
.LBB20:
.LBB21:
	.loc 3 245 0
	ldi r24,lo8(32)
	1: dec r24
	brne 1b
.LBE21:
.LBE20:
	.loc 1 130 0
	lds r30,OW_IN
	lds r31,OW_IN+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	and r24,r25
	brne .L6
	.loc 1 131 0
	ldi r28,0
.LVL8:
.L6:
.LBB22:
.LBB23:
	.loc 3 245 0
	ldi r24,lo8(117)
	1: dec r24
	brne 1b
	nop
.LBE23:
.LBE22:
	.loc 1 136 0
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
	.loc 1 138 0
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r18,Z
	lds r25,OW_PIN_MASK
	com r25
	and r25,r18
	st Z,r25
	.loc 1 140 0
	cpse r22,__zero_reg__
	.loc 1 141 0
	call ow_parasite_enable
.LVL9:
.L7:
.LBB24:
.LBB25:
	.loc 2 70 0
	out __SREG__,r29
	.loc 2 71 0
.LVL10:
.LBE25:
.LBE24:
.LBE15:
.LBB26:
.LBB27:
	.loc 3 245 0
	ldi r24,lo8(26)
	1: dec r24
	brne 1b
	rjmp .
.LBE27:
.LBE26:
	.loc 1 149 0
	mov r24,r28
/* epilogue start */
	pop r29
.LVL11:
	pop r28
.LVL12:
	ret
	.cfi_endproc
.LFE15:
	.size	ow_bit_io_intern, .-ow_bit_io_intern
.global	ow_parasite_disable
	.type	ow_parasite_disable, @function
ow_parasite_disable:
.LFB14:
	.loc 1 61 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 62 0
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
	ret
	.cfi_endproc
.LFE14:
	.size	ow_parasite_disable, .-ow_parasite_disable
.global	ow_bit_io
	.type	ow_bit_io, @function
ow_bit_io:
.LFB16:
	.loc 1 152 0
	.cfi_startproc
.LVL13:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 153 0
	ldi r22,0
	andi r24,lo8(1)
.LVL14:
	call ow_bit_io_intern
.LVL15:
	.loc 1 154 0
	ret
	.cfi_endproc
.LFE16:
	.size	ow_bit_io, .-ow_bit_io
.global	ow_byte_wr
	.type	ow_byte_wr, @function
ow_byte_wr:
.LFB17:
	.loc 1 157 0
	.cfi_startproc
.LVL16:
	push r28
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r24
.LVL17:
	.loc 1 157 0
	ldi r29,lo8(8)
.LVL18:
.L14:
	.loc 1 161 0
	mov r24,r28
	andi r24,lo8(1)
	call ow_bit_io
.LVL19:
	.loc 1 162 0
	lsr r28
.LVL20:
	.loc 1 163 0
	cpse r24,__zero_reg__
	.loc 1 164 0
	ori r28,lo8(-128)
.LVL21:
.L12:
	subi r29,lo8(-(-1))
.LVL22:
	.loc 1 166 0
	brne .L14
	.loc 1 169 0
	mov r24,r28
.LVL23:
/* epilogue start */
	pop r29
.LVL24:
	pop r28
.LVL25:
	ret
	.cfi_endproc
.LFE17:
	.size	ow_byte_wr, .-ow_byte_wr
.global	ow_byte_wr_with_parasite_enable
	.type	ow_byte_wr_with_parasite_enable, @function
ow_byte_wr_with_parasite_enable:
.LFB18:
	.loc 1 172 0
	.cfi_startproc
.LVL26:
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
	mov r28,r24
.LVL27:
	.loc 1 173 0
	ldi r29,lo8(8)
.LVL28:
.L20:
	.loc 1 176 0
	cpi r29,lo8(1)
	breq .L16
	.loc 1 177 0
	ldi r22,0
	mov r24,r28
	andi r24,lo8(1)
	call ow_bit_io_intern
.LVL29:
	rjmp .L17
.LVL30:
.L16:
	.loc 1 179 0
	ldi r22,lo8(1)
	mov r24,r28
	andi r24,lo8(1)
	call ow_bit_io_intern
.LVL31:
.L17:
	.loc 1 181 0
	lsr r28
.LVL32:
	.loc 1 182 0
	cpse r24,__zero_reg__
	.loc 1 183 0
	ori r28,lo8(-128)
.LVL33:
.L18:
	.loc 1 185 0
	subi r29,lo8(-(-1))
.LVL34:
	brne .L20
	.loc 1 188 0
	mov r24,r28
.LVL35:
/* epilogue start */
	pop r29
.LVL36:
	pop r28
.LVL37:
	ret
	.cfi_endproc
.LFE18:
	.size	ow_byte_wr_with_parasite_enable, .-ow_byte_wr_with_parasite_enable
	.type	ow_command_intern, @function
ow_command_intern:
.LFB20:
	.loc 1 253 0
	.cfi_startproc
.LVL38:
	push r14
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI10:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r14,r24
	movw r28,r22
	mov r15,r20
	.loc 1 257 0
	call OWReset
.LVL39:
	.loc 1 263 0
	sbiw r28,0
	breq .L22
	.loc 1 264 0
	ldi r24,lo8(85)
	call ow_byte_wr
.LVL40:
	movw r16,r28
	subi r16,-8
	sbci r17,-1
.L24:
	.loc 1 267 0 discriminator 1
	ld r24,Y+
.LVL41:
	call ow_byte_wr
.LVL42:
	.loc 1 269 0 discriminator 1
	cp r28,r16
	cpc r29,r17
	brne .L24
	rjmp .L23
.LVL43:
.L22:
	.loc 1 272 0
	ldi r24,lo8(-52)
	call ow_byte_wr
.LVL44:
.L23:
	.loc 1 275 0
	tst r15
	breq .L25
	.loc 1 276 0
	mov r24,r14
	call ow_byte_wr_with_parasite_enable
.LVL45:
	rjmp .L21
.L25:
	.loc 1 278 0
	mov r24,r14
	call ow_byte_wr
.LVL46:
.L21:
/* epilogue start */
	.loc 1 280 0
	pop r29
	pop r28
.LVL47:
	pop r17
	pop r16
	pop r15
.LVL48:
	pop r14
.LVL49:
	ret
	.cfi_endproc
.LFE20:
	.size	ow_command_intern, .-ow_command_intern
.global	ow_byte_rd
	.type	ow_byte_rd, @function
ow_byte_rd:
.LFB19:
	.loc 1 192 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 195 0
	ldi r24,lo8(-1)
	call ow_byte_wr
.LVL50:
	.loc 1 196 0
	ret
	.cfi_endproc
.LFE19:
	.size	ow_byte_rd, .-ow_byte_rd
.global	ow_command
	.type	ow_command, @function
ow_command:
.LFB21:
	.loc 1 283 0
	.cfi_startproc
.LVL51:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 284 0
	ldi r20,0
	call ow_command_intern
.LVL52:
	ret
	.cfi_endproc
.LFE21:
	.size	ow_command, .-ow_command
.global	ow_command_with_parasite_enable
	.type	ow_command_with_parasite_enable, @function
ow_command_with_parasite_enable:
.LFB22:
	.loc 1 288 0
	.cfi_startproc
.LVL53:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 289 0
	ldi r20,lo8(1)
	call ow_command_intern
.LVL54:
	ret
	.cfi_endproc
.LFE22:
	.size	ow_command_with_parasite_enable, .-ow_command_with_parasite_enable
	.comm	OW_DDR,2,1
	.comm	OW_OUT,2,1
	.comm	OW_IN,2,1
	.comm	OW_PIN_MASK,1,1
	.comm	OW_PIN,1,1
.Letext0:
	.file 4 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x62f
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF34
	.byte	0x1
	.long	.LASF35
	.long	.LASF36
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x4
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
	.byte	0x4
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
	.uleb128 0x3
	.long	.LASF6
	.byte	0x4
	.byte	0x7e
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.long	.LASF37
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x2c
	.byte	0x3
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0xe0
	.byte	0x1
	.byte	0x3
	.long	0xc4
	.uleb128 0x7
	.long	.LASF15
	.byte	0x3
	.byte	0xe0
	.long	0xc4
	.uleb128 0x8
	.long	.LASF10
	.byte	0x3
	.byte	0xe2
	.long	0xc4
	.uleb128 0x8
	.long	.LASF11
	.byte	0x3
	.byte	0xe6
	.long	0x5e
	.uleb128 0x9
	.byte	0x1
	.long	.LASF38
	.byte	0x3
	.byte	0xe7
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0xe4
	.uleb128 0xa
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0xe4
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0xea
	.uleb128 0xc
	.long	0x2c
	.uleb128 0xd
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x149
	.uleb128 0xe
	.string	"in"
	.byte	0x1
	.byte	0x22
	.long	0x149
	.long	.LLST0
	.uleb128 0xf
	.string	"out"
	.byte	0x1
	.byte	0x23
	.long	0x149
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xf
	.string	"ddr"
	.byte	0x1
	.byte	0x24
	.long	0x149
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xf
	.string	"pin"
	.byte	0x1
	.byte	0x25
	.long	0x2c
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x14f
	.uleb128 0x10
	.long	0x2c
	.uleb128 0x11
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.long	0x2c
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x13
	.long	.LASF40
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x2c
	.long	.LFB15
	.long	.LFE15
	.long	.LLST1
	.byte	0x1
	.long	0x2ff
	.uleb128 0xe
	.string	"b"
	.byte	0x1
	.byte	0x6d
	.long	0x2c
	.long	.LLST2
	.uleb128 0x14
	.long	.LASF16
	.byte	0x1
	.byte	0x6d
	.long	0x2c
	.long	.LLST3
	.uleb128 0x15
	.long	.LBB15
	.long	.LBE15
	.long	0x2ca
	.uleb128 0x16
	.long	.LASF17
	.byte	0x1
	.byte	0x6f
	.long	0x2c
	.long	.LLST4
	.uleb128 0x16
	.long	.LASF18
	.byte	0x1
	.byte	0x6f
	.long	0x2c
	.long	.LLST5
	.uleb128 0x17
	.long	0x7e
	.long	.LBB16
	.long	.LBE16
	.byte	0x1
	.byte	0x6f
	.uleb128 0x18
	.long	0x8b
	.long	.LBB18
	.long	.LBE18
	.byte	0x1
	.byte	0x74
	.long	0x22f
	.uleb128 0x19
	.long	0x98
	.byte	0x4
	.long	0x40000000
	.uleb128 0x1a
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x1b
	.long	0xa3
	.byte	0x4
	.long	0x41800000
	.uleb128 0x1c
	.long	0xae
	.byte	0x10
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x8b
	.long	.LBB20
	.long	.LBE20
	.byte	0x1
	.byte	0x80
	.long	0x267
	.uleb128 0x19
	.long	0x98
	.byte	0x4
	.long	0x41400000
	.uleb128 0x1a
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x1b
	.long	0xa3
	.byte	0x4
	.long	0x42c00000
	.uleb128 0x1c
	.long	0xae
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x8b
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.byte	0x86
	.long	0x2a0
	.uleb128 0x19
	.long	0x98
	.byte	0x4
	.long	0x42300000
	.uleb128 0x1a
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x1b
	.long	0xa3
	.byte	0x4
	.long	0x43b00000
	.uleb128 0x1d
	.long	0xae
	.word	0x160
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0xcb
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.byte	0x6f
	.long	0x2c0
	.uleb128 0x1e
	.long	0xd8
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+458
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL9
	.long	0x16e
	.byte	0
	.uleb128 0x20
	.long	0x8b
	.long	.LBB26
	.long	.LBE26
	.byte	0x1
	.byte	0x92
	.uleb128 0x19
	.long	0x98
	.byte	0x4
	.long	0x41200000
	.uleb128 0x1a
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x1b
	.long	0xa3
	.byte	0x4
	.long	0x42a00000
	.uleb128 0x1c
	.long	0xae
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.long	0x2c
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x359
	.uleb128 0xe
	.string	"b"
	.byte	0x1
	.byte	0x97
	.long	0x2c
	.long	.LLST6
	.uleb128 0x22
	.long	.LVL15
	.long	0x184
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x31
	.byte	0x1a
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2c
	.long	.LFB17
	.long	.LFE17
	.long	.LLST7
	.byte	0x1
	.long	0x3b1
	.uleb128 0xe
	.string	"b"
	.byte	0x1
	.byte	0x9c
	.long	0x2c
	.long	.LLST8
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x9e
	.long	0x2c
	.long	.LLST9
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.byte	0x9e
	.long	0x2c
	.long	.LLST10
	.uleb128 0x22
	.long	.LVL19
	.long	0x315
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.long	0x2c
	.long	.LFB18
	.long	.LFE18
	.long	.LLST11
	.byte	0x1
	.long	0x429
	.uleb128 0xe
	.string	"b"
	.byte	0x1
	.byte	0xab
	.long	0x2c
	.long	.LLST12
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0xad
	.long	0x2c
	.long	.LLST13
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.byte	0xad
	.long	0x2c
	.long	.LLST14
	.uleb128 0x26
	.long	.LVL29
	.long	0x184
	.long	0x411
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.long	.LVL31
	.long	0x184
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF41
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.byte	0x1
	.long	0x4da
	.uleb128 0x14
	.long	.LASF24
	.byte	0x1
	.byte	0xfc
	.long	0x2c
	.long	.LLST16
	.uleb128 0xe
	.string	"id"
	.byte	0x1
	.byte	0xfc
	.long	0x4da
	.long	.LLST17
	.uleb128 0x14
	.long	.LASF16
	.byte	0x1
	.byte	0xfc
	.long	0x2c
	.long	.LLST18
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0xfe
	.long	0x2c
	.long	.LLST19
	.uleb128 0x1f
	.long	.LVL39
	.long	0x623
	.uleb128 0x26
	.long	.LVL40
	.long	0x359
	.long	0x498
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.uleb128 0x1f
	.long	.LVL42
	.long	0x359
	.uleb128 0x26
	.long	.LVL44
	.long	0x359
	.long	0x4b5
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xcc
	.byte	0
	.uleb128 0x26
	.long	.LVL45
	.long	0x3b1
	.long	0x4c9
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL46
	.long	0x359
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x2c
	.uleb128 0x21
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	0x2c
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x50f
	.uleb128 0x22
	.long	.LVL50
	.long	0x359
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.word	0x11a
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x56c
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.word	0x11a
	.long	0x2c
	.long	.LLST20
	.uleb128 0x2a
	.string	"id"
	.byte	0x1
	.word	0x11a
	.long	0x4da
	.long	.LLST21
	.uleb128 0x22
	.long	.LVL52
	.long	0x429
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x23
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
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.word	0x11f
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x5c9
	.uleb128 0x29
	.long	.LASF24
	.byte	0x1
	.word	0x11f
	.long	0x2c
	.long	.LLST22
	.uleb128 0x2a
	.string	"id"
	.byte	0x1
	.word	0x11f
	.long	0x4da
	.long	.LLST23
	.uleb128 0x22
	.long	.LVL54
	.long	0x429
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x23
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
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF29
	.byte	0x1
	.byte	0x1c
	.long	0x2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	OW_PIN
	.uleb128 0x2b
	.long	.LASF30
	.byte	0x1
	.byte	0x1d
	.long	0x2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	OW_PIN_MASK
	.uleb128 0x2b
	.long	.LASF31
	.byte	0x1
	.byte	0x1e
	.long	0x149
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	OW_IN
	.uleb128 0x2b
	.long	.LASF32
	.byte	0x1
	.byte	0x1f
	.long	0x149
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	OW_OUT
	.uleb128 0x2b
	.long	.LASF33
	.byte	0x1
	.byte	0x20
	.long	0x149
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	OW_DDR
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x15
	.long	0x2c
	.byte	0x1
	.uleb128 0x2d
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
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
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
	.uleb128 0xf
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0-.Ltext0
	.long	.LVL1-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1-.Ltext0
	.long	.LFE11-.Ltext0
	.word	0x5
	.byte	0x3
	.long	OW_IN
	.long	0
	.long	0
.LLST1:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL2-.Ltext0
	.long	.LVL5-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL5-.Ltext0
	.long	.LVL12-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	.LVL12-.Ltext0
	.long	.LFE15-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL2-.Ltext0
	.long	.LVL9-1-.Ltext0
	.word	0x1
	.byte	0x66
	.long	.LVL9-1-.Ltext0
	.long	.LFE15-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL3-.Ltext0
	.long	.LVL11-.Ltext0
	.word	0x1
	.byte	0x6d
	.long	.LVL11-.Ltext0
	.long	.LFE15-.Ltext0
	.word	0x2
	.byte	0x8
	.byte	0x5f
	.long	0
	.long	0
.LLST5:
	.long	.LVL4-.Ltext0
	.long	.LVL9-.Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL9-.Ltext0
	.long	.LFE15-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL13-.Ltext0
	.long	.LVL14-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL14-.Ltext0
	.long	.LFE16-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST8:
	.long	.LVL16-.Ltext0
	.long	.LVL18-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL18-.Ltext0
	.long	.LVL25-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	.LVL25-.Ltext0
	.long	.LFE17-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST9:
	.long	.LVL17-.Ltext0
	.long	.LVL18-.Ltext0
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL18-.Ltext0
	.long	.LVL21-.Ltext0
	.word	0x1
	.byte	0x6d
	.long	.LVL21-.Ltext0
	.long	.LVL22-.Ltext0
	.word	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.long	.LVL22-.Ltext0
	.long	.LVL24-.Ltext0
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST10:
	.long	.LVL19-.Ltext0
	.long	.LVL23-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST11:
	.long	.LFB18-.Ltext0
	.long	.LCFI4-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4-.Ltext0
	.long	.LCFI5-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5-.Ltext0
	.long	.LFE18-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST12:
	.long	.LVL26-.Ltext0
	.long	.LVL28-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL28-.Ltext0
	.long	.LVL37-.Ltext0
	.word	0x1
	.byte	0x6c
	.long	.LVL37-.Ltext0
	.long	.LFE18-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST13:
	.long	.LVL27-.Ltext0
	.long	.LVL28-.Ltext0
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL28-.Ltext0
	.long	.LVL36-.Ltext0
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST14:
	.long	.LVL29-.Ltext0
	.long	.LVL30-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL31-.Ltext0
	.long	.LVL35-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST15:
	.long	.LFB20-.Ltext0
	.long	.LCFI6-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8-.Ltext0
	.long	.LCFI9-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI11-.Ltext0
	.long	.LFE20-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST16:
	.long	.LVL38-.Ltext0
	.long	.LVL39-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL39-1-.Ltext0
	.long	.LVL49-.Ltext0
	.word	0x1
	.byte	0x5e
	.long	.LVL49-.Ltext0
	.long	.LFE20-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL38-.Ltext0
	.long	.LVL39-1-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39-1-.Ltext0
	.long	.LVL41-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL41-.Ltext0
	.long	.LVL42-.Ltext0
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL42-.Ltext0
	.long	.LVL47-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST18:
	.long	.LVL38-.Ltext0
	.long	.LVL39-1-.Ltext0
	.word	0x1
	.byte	0x64
	.long	.LVL39-1-.Ltext0
	.long	.LVL48-.Ltext0
	.word	0x1
	.byte	0x5f
	.long	.LVL48-.Ltext0
	.long	.LFE20-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL40-.Ltext0
	.long	.LVL43-.Ltext0
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL51-.Ltext0
	.long	.LVL52-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL52-1-.Ltext0
	.long	.LFE21-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL51-.Ltext0
	.long	.LVL52-1-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52-1-.Ltext0
	.long	.LFE21-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL53-.Ltext0
	.long	.LVL54-1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL54-1-.Ltext0
	.long	.LFE22-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL53-.Ltext0
	.long	.LVL54-1-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL54-1-.Ltext0
	.long	.LFE22-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
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
.LASF30:
	.string	"OW_PIN_MASK"
.LASF33:
	.string	"OW_DDR"
.LASF16:
	.string	"with_parasite_enable"
.LASF17:
	.string	"sreg_save"
.LASF21:
	.string	"ow_bit_io"
.LASF27:
	.string	"ow_command"
.LASF24:
	.string	"command"
.LASF15:
	.string	"__us"
.LASF40:
	.string	"ow_bit_io_intern"
.LASF38:
	.string	"__builtin_avr_delay_cycles"
.LASF42:
	.string	"OWReset"
.LASF26:
	.string	"ow_set_bus"
.LASF1:
	.string	"unsigned char"
.LASF23:
	.string	"ow_byte_wr_with_parasite_enable"
.LASF7:
	.string	"long unsigned int"
.LASF18:
	.string	"__ToDo"
.LASF39:
	.string	"ow_input_pin_state"
.LASF32:
	.string	"OW_OUT"
.LASF37:
	.string	"__iCliRetVal"
.LASF35:
	.string	"../onewire/onewire.c"
.LASF29:
	.string	"OW_PIN"
.LASF12:
	.string	"double"
.LASF10:
	.string	"__tmp"
.LASF36:
	.string	"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/Debug"
.LASF4:
	.string	"unsigned int"
.LASF14:
	.string	"__iRestore"
.LASF13:
	.string	"_delay_us"
.LASF9:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF28:
	.string	"ow_command_with_parasite_enable"
.LASF25:
	.string	"ow_byte_rd"
.LASF19:
	.string	"ow_parasite_enable"
.LASF31:
	.string	"OW_IN"
.LASF20:
	.string	"ow_parasite_disable"
.LASF8:
	.string	"long long int"
.LASF11:
	.string	"__ticks_dc"
.LASF3:
	.string	"uint16_t"
.LASF34:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega328p -g2 -gdwarf-2 -g -O1 -std=gnu99 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
.LASF6:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF41:
	.string	"ow_command_intern"
.LASF22:
	.string	"ow_byte_wr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
