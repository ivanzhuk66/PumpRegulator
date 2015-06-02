	.file	"crc8.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.global	crc8
	.type	crc8, @function
crc8:
.LFB0:
	.file 1 "../ds18x20/crc8.c"
	.loc 1 9 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 18 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L8
	movw r30,r24
	add r22,r24
	adc r23,r25
.LVL1:
	.loc 1 16 0
	ldi r24,0
.LVL2:
	.loc 1 20 0
	ldi r21,lo8(8)
	.loc 1 27 0
	ldi r20,lo8(24)
.LVL3:
.L6:
	.loc 1 20 0
	ld r18,Z+
.LVL4:
	mov r25,r21
.LVL5:
.L5:
	.loc 1 24 0
	mov r19,r18
	eor r19,r24
	.loc 1 26 0
	sbrs r19,0
	rjmp .L3
	.loc 1 27 0
	eor r24,r20
.LVL6:
	.loc 1 29 0
	lsr r24
.LVL7:
	.loc 1 31 0
	ori r24,lo8(-128)
.LVL8:
.L7:
	.loc 1 34 0
	lsr r18
.LVL9:
	subi r25,lo8(-(-1))
.LVL10:
	.loc 1 37 0
	brne .L5
.LVL11:
	.loc 1 18 0
	cp r30,r22
	cpc r31,r23
	brne .L6
	ret
.LVL12:
.L8:
	.loc 1 16 0
	ldi r24,0
.LVL13:
	ret
.LVL14:
.L3:
	.loc 1 29 0
	lsr r24
.LVL15:
	rjmp .L7
	.cfi_endproc
.LFE0:
	.size	crc8, .-crc8
.Letext0:
	.file 2 "/avr8-gnu-toolchain-linux_x86/avr/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xfc
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF14
	.byte	0x1
	.long	.LASF15
	.long	.LASF16
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
	.long	.LASF17
	.byte	0x1
	.byte	0x8
	.byte	0x1
	.long	0x2c
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xf9
	.uleb128 0x6
	.long	.LASF9
	.byte	0x1
	.byte	0x8
	.long	0xf9
	.long	.LLST0
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.byte	0x8
	.long	0x45
	.long	.LLST1
	.uleb128 0x7
	.string	"crc"
	.byte	0x1
	.byte	0xa
	.long	0x2c
	.long	.LLST2
	.uleb128 0x8
	.long	.LASF11
	.byte	0x1
	.byte	0xb
	.long	0x45
	.long	.LLST3
	.uleb128 0x8
	.long	.LASF12
	.byte	0x1
	.byte	0xc
	.long	0x2c
	.long	.LLST4
	.uleb128 0x7
	.string	"b"
	.byte	0x1
	.byte	0xd
	.long	0x2c
	.long	.LLST5
	.uleb128 0x8
	.long	.LASF13
	.byte	0x1
	.byte	0xe
	.long	0x2c
	.long	.LLST6
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x2c
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0-.Ltext0
	.long	.LVL2-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3-.Ltext0
	.long	.LVL12-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13-.Ltext0
	.long	.LFE0-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0-.Ltext0
	.long	.LVL1-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1-.Ltext0
	.long	.LVL12-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL12-.Ltext0
	.long	.LVL14-.Ltext0
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14-.Ltext0
	.long	.LFE0-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0-.Ltext0
	.long	.LVL3-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3-.Ltext0
	.long	.LVL12-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL12-.Ltext0
	.long	.LVL14-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14-.Ltext0
	.long	.LFE0-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL0-.Ltext0
	.long	.LVL3-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x1c
	.byte	0x9f
	.long	.LVL4-.Ltext0
	.long	.LVL11-.Ltext0
	.word	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x20
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x1c
	.byte	0x9f
	.long	.LVL12-.Ltext0
	.long	.LVL14-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14-.Ltext0
	.long	.LFE0-.Ltext0
	.word	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x20
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL5-.Ltext0
	.long	.LVL9-.Ltext0
	.word	0x1
	.byte	0x69
	.long	.LVL9-.Ltext0
	.long	.LVL10-.Ltext0
	.word	0x3
	.byte	0x89
	.sleb128 -1
	.byte	0x9f
	.long	.LVL10-.Ltext0
	.long	.LVL12-.Ltext0
	.word	0x1
	.byte	0x69
	.long	.LVL14-.Ltext0
	.long	.LFE0-.Ltext0
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST5:
	.long	.LVL4-.Ltext0
	.long	.LVL12-.Ltext0
	.word	0x1
	.byte	0x62
	.long	.LVL14-.Ltext0
	.long	.LFE0-.Ltext0
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST6:
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.word	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x27
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	.LVL14-.Ltext0
	.long	.LVL15-.Ltext0
	.word	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x27
	.byte	0x31
	.byte	0x1a
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
.LASF15:
	.string	"../ds18x20/crc8.c"
.LASF9:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF10:
	.string	"number_of_bytes_in_data"
.LASF16:
	.string	"/home/izhuk/git/PumpRegulator/A328Pn3310DS18x20_n/Debug"
.LASF12:
	.string	"bit_counter"
.LASF4:
	.string	"unsigned int"
.LASF11:
	.string	"loop_count"
.LASF8:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF17:
	.string	"crc8"
.LASF7:
	.string	"long long int"
.LASF3:
	.string	"uint16_t"
.LASF14:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega328p -g2 -gdwarf-2 -g -O1 -std=gnu99 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
.LASF13:
	.string	"feedback_bit"
.LASF5:
	.string	"long int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
