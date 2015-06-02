	.file	"extint.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.global	ExtInt0Enable
	.type	ExtInt0Enable, @function
ExtInt0Enable:
.LFB0:
	.file 1 "../extint/extint.c"
	.loc 1 15 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 16 0
	cbi 0x1d,0
	.loc 1 19 0
	ldi r30,lo8(105)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-4)
	st Z,r24
	.loc 1 22 0
	cbi 0xa,2
	.loc 1 23 0
	sbi 0x1c,0
	.loc 1 24 0
	sbi 0x1d,0
	.loc 1 25 0
/* #APP */
 ;  25 "../extint/extint.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.cfi_endproc
.LFE0:
	.size	ExtInt0Enable, .-ExtInt0Enable
.global	ExtInt0Disable
	.type	ExtInt0Disable, @function
ExtInt0Disable:
.LFB1:
	.loc 1 28 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 30 0
	cbi 0x1d,0
	.loc 1 31 0
	sbi 0x1c,0
	ret
	.cfi_endproc
.LFE1:
	.size	ExtInt0Disable, .-ExtInt0Disable
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
.LFB2:
	.loc 1 35 0
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
	push r24
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 24, -4
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 36 0
	lds r24,extstate
	cpi r24,lo8(3)
	brlo .L4
	.loc 1 37 0
	sts extstate,__zero_reg__
	rjmp .L3
.L4:
	.loc 1 39 0
	subi r24,lo8(-(1))
	sts extstate,r24
.L3:
/* epilogue start */
	.loc 1 41 0
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE2:
	.size	__vector_1, .-__vector_1
.global	ExtInt1Enable
	.type	ExtInt1Enable, @function
ExtInt1Enable:
.LFB3:
	.loc 1 43 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 44 0
	cbi 0x1d,1
	.loc 1 48 0
	ldi r30,lo8(105)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-9)
	st Z,r24
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	.loc 1 50 0
	cbi 0xa,3
	.loc 1 54 0
	sbi 0xb,3
	.loc 1 56 0
	sbi 0x1c,1
	.loc 1 57 0
	sbi 0x1d,1
	.loc 1 58 0
/* #APP */
 ;  58 "../extint/extint.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.cfi_endproc
.LFE3:
	.size	ExtInt1Enable, .-ExtInt1Enable
.global	ExtInt1Disable
	.type	ExtInt1Disable, @function
ExtInt1Disable:
.LFB4:
	.loc 1 61 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 62 0
	cbi 0x1d,1
	.loc 1 63 0
	sbi 0x1c,1
	ret
	.cfi_endproc
.LFE4:
	.size	ExtInt1Disable, .-ExtInt1Disable
.global	__vector_2
	.type	__vector_2, @function
__vector_2:
.LFB5:
	.loc 1 66 0
	.cfi_startproc
	push r1
.LCFI3:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
.LCFI5:
	.cfi_def_cfa_offset 5
	.cfi_offset 24, -4
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 68 0
	sbis 0x9,3
	rjmp .L9
	.loc 1 69 0
	lds r24,powergone
	cpi r24,lo8(100)
	brlo .L10
	.loc 1 70 0
	ldi r24,lo8(1)
	sts powergone,r24
	rjmp .L8
.L10:
	.loc 1 72 0
	subi r24,lo8(-(1))
	sts powergone,r24
	rjmp .L8
.L9:
	.loc 1 73 0
	sts wait_powergone,__zero_reg__
	sts powergone,__zero_reg__
.L8:
/* epilogue start */
	.loc 1 75 0
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE5:
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
	.text
.Letext0:
	.file 2 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x121
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF17
	.byte	0x1
	.long	.LASF18
	.long	.LASF19
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF20
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
	.byte	0x1
	.long	.LASF7
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.long	.LASF8
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF9
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.long	.LLST0
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.long	.LASF10
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST1
	.byte	0x1
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0xb
	.long	0x2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	extstate
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0xc
	.long	0x2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	powergone
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0xd
	.long	0x11d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF16
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB2-.Ltext0
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
	.long	.LFE2-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST1:
	.long	.LFB5-.Ltext0
	.long	.LCFI3-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI4-.Ltext0
	.long	.LCFI5-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI5-.Ltext0
	.long	.LFE5-.Ltext0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
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
.LASF13:
	.string	"extstate"
.LASF11:
	.string	"ExtInt1Disable"
.LASF18:
	.string	"../extint/extint.c"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"ExtInt0Disable"
.LASF4:
	.string	"long unsigned int"
.LASF19:
	.string	"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/Debug"
.LASF14:
	.string	"powergone"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF20:
	.string	"uint8_t"
.LASF7:
	.string	"ExtInt0Enable"
.LASF5:
	.string	"long long int"
.LASF16:
	.string	"char"
.LASF10:
	.string	"ExtInt1Enable"
.LASF9:
	.string	"__vector_1"
.LASF12:
	.string	"__vector_2"
.LASF17:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega328p -g2 -gdwarf-2 -g -O1 -std=gnu99 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
.LASF3:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"wait_powergone"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
