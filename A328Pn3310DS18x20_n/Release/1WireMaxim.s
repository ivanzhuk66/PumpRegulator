	.file	"1WireMaxim.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.ResetDiscrepancy,"ax",@progbits
.global	ResetDiscrepancy
	.type	ResetDiscrepancy, @function
ResetDiscrepancy:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts LastDiscrepancy,__zero_reg__
	sts LastDeviceFlag,__zero_reg__
	sts LastFamilyDiscrepancy,__zero_reg__
	ret
	.size	ResetDiscrepancy, .-ResetDiscrepancy
	.section	.text.OWReset,"ax",@progbits
.global	OWReset
	.type	OWReset, @function
OWReset:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  282 "../onewire/1WireMaxim.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
/* #APP */
 ;  284 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(124)
	rjmp .L3
.L5:
	subi r24,lo8(-(-1))
	brne .+2
	rjmp .L4
.L3:
	ldi r25,lo8(5)
	1: dec r25
	brne 1b
	nop
	lds r30,OW_IN
	lds r31,OW_IN+1
	ld r18,Z
	lds r25,OW_PIN_MASK
	and r25,r18
	breq .L5
/* #APP */
 ;  292 "../onewire/1WireMaxim.c" 1
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
/* #APP */
 ;  295 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r30,lo8(959)
	ldi r31,hi8(959)
	1: sbiw r30,1
	brne 1b
	rjmp .
	nop
/* #APP */
 ;  297 "../onewire/1WireMaxim.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
	ldi r31,lo8(-70)
	1: dec r31
	brne 1b
	rjmp .
	lds r30,OW_IN
	lds r31,OW_IN+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	and r25,r24
	ldi r24,lo8(1)
	breq .L6
	ldi r24,0
.L6:
/* #APP */
 ;  301 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r30,lo8(819)
	ldi r31,hi8(819)
	1: sbiw r30,1
	brne 1b
	rjmp .
	nop
.L4:
	ret
	.size	OWReset, .-OWReset
	.section	.text.OWWriteBit,"ax",@progbits
.global	OWWriteBit
	.type	OWWriteBit, @function
OWWriteBit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  346 "../onewire/1WireMaxim.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r18,Z
	lds r25,OW_PIN_MASK
	com r25
	and r25,r18
	st Z,r25
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r18,Z
	lds r25,OW_PIN_MASK
	or r25,r18
	st Z,r25
	sbrs r24,0
	rjmp .L8
	ldi r24,lo8(26)
	1: dec r24
	brne 1b
	rjmp .
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
/* #APP */
 ;  354 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(-110)
	1: dec r24
	brne 1b
	rjmp .
	ret
.L8:
	ldi r24,lo8(-83)
	1: dec r24
	brne 1b
	nop
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
/* #APP */
 ;  359 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(13)
	1: dec r24
	brne 1b
	nop
	ret
	.size	OWWriteBit, .-OWWriteBit
	.section	.text.OWWriteByte,"ax",@progbits
.global	OWWriteByte
	.type	OWWriteByte, @function
OWWriteByte:
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
	mov r15,r24
	ldi r28,lo8(8)
	ldi r29,0
	ldi r17,lo8(1)
	ldi r16,lo8(1)
	mov r14,__zero_reg__
.L13:
	mov r24,r16
	mov r25,r17
	and r25,r15
	brne .L11
	mov r24,r14
.L11:
	call OWWriteBit
	lsl r17
	sbiw r28,1
	sbiw r28,0
	brne .L13
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	OWWriteByte, .-OWWriteByte
	.section	.text.OWReadBit,"ax",@progbits
.global	OWReadBit
	.type	OWReadBit, @function
OWReadBit:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  378 "../onewire/1WireMaxim.c" 1
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
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
	ldi r24,lo8(26)
	1: dec r24
	brne 1b
	rjmp .
	lds r30,OW_IN
	lds r31,OW_IN+1
	ld r18,Z
	lds r25,OW_PIN_MASK
/* #APP */
 ;  385 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(-115)
	1: dec r24
	brne 1b
	nop
	and r18,r25
	ldi r24,lo8(1)
	cpse r25,r18
	ldi r24,0
.L15:
	ret
	.size	OWReadBit, .-OWReadBit
	.section	.text.OWMatchRom,"ax",@progbits
.global	OWMatchRom
	.type	OWMatchRom, @function
OWMatchRom:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24
	ldi r24,lo8(85)
	call OWWriteByte
	movw r28,r16
	subi r16,-8
	sbci r17,-1
.L18:
	ld r24,Y+
	call OWWriteByte
	cp r28,r16
	cpc r29,r17
	brne .L18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	OWMatchRom, .-OWMatchRom
	.section	.text.docrc8,"ax",@progbits
.global	docrc8
	.type	docrc8, @function
docrc8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r30,crc8m
	eor r24,r30
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(dscrc_table))
	sbci r31,hi8(-(dscrc_table))
	ld r24,Z
	sts crc8m,r24
	ret
	.size	docrc8, .-docrc8
	.section	.text.OWSearch,"ax",@progbits
.global	OWSearch
	.type	OWSearch, @function
OWSearch:
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	sts crc8m,__zero_reg__
	lds r24,LastDeviceFlag
	cpse r24,__zero_reg__
	rjmp .L38
	call OWReset
	cpse r24,__zero_reg__
	rjmp .L22
	sts LastDiscrepancy,__zero_reg__
	sts LastDeviceFlag,__zero_reg__
	sts LastFamilyDiscrepancy,__zero_reg__
	rjmp .L39
.L22:
	ldi r24,lo8(-16)
	call OWWriteByte
	clr r14
	inc r14
	ldi r28,0
	mov r15,__zero_reg__
	ldi r29,lo8(1)
	ldi r17,lo8(1)
	mov r13,__zero_reg__
.L36:
	call OWReadBit
	mov r16,r24
	call OWReadBit
	cpi r16,lo8(1)
	brne .L24
	cpi r24,lo8(1)
	brne .L26
	rjmp .L25
.L24:
	cpse r16,r24
	rjmp .L27
	lds r24,LastDiscrepancy
	cp r29,r24
	brsh .L28
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(ROM_NO))
	sbci r31,hi8(-(ROM_NO))
	ld r24,Z
	and r24,r14
	mov r16,r17
	brne .L30
	mov r16,r13
	rjmp .L30
.L28:
	mov r16,r17
	cpse r29,r24
	mov r16,r13
.L30:
	cpse r16,__zero_reg__
	rjmp .L32
	cpi r29,lo8(9)
	brlo .+2
	rjmp .L33
	sts LastFamilyDiscrepancy,r29
	rjmp .L33
.L32:
	cpi r16,lo8(1)
	brne .L27
.L26:
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(ROM_NO))
	sbci r31,hi8(-(ROM_NO))
	ld r24,Z
	or r24,r14
	st Z,r24
	mov r16,r17
	rjmp .L34
.L27:
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(ROM_NO))
	sbci r31,hi8(-(ROM_NO))
	ld r25,Z
	mov r24,r14
	com r24
	and r24,r25
	st Z,r24
.L34:
	mov r24,r16
	call OWWriteBit
	subi r29,lo8(-(1))
	lsl r14
	brne .L35
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(ROM_NO))
	sbci r31,hi8(-(ROM_NO))
	ld r24,Z
	call docrc8
	subi r28,lo8(-(1))
	mov r14,r17
.L35:
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L36
.L25:
	cpi r29,lo8(65)
	brlo .L38
	lds r24,crc8m
	cpse r24,__zero_reg__
	rjmp .L38
	sts LastDiscrepancy,r15
	cpse r15,__zero_reg__
	rjmp .L37
	ldi r24,lo8(1)
	sts LastDeviceFlag,r24
	rjmp .L37
.L38:
	sts LastDiscrepancy,__zero_reg__
	sts LastDeviceFlag,__zero_reg__
	sts LastFamilyDiscrepancy,__zero_reg__
	ldi r24,0
	rjmp .L39
.L33:
	mov r15,r29
	rjmp .L27
.L37:
	lds r24,ROM_NO
	tst r24
	breq .L38
	ldi r24,lo8(1)
.L39:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
	.size	OWSearch, .-OWSearch
	.section	.text.OWFirst,"ax",@progbits
.global	OWFirst
	.type	OWFirst, @function
OWFirst:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts LastDiscrepancy,__zero_reg__
	sts LastDeviceFlag,__zero_reg__
	sts LastFamilyDiscrepancy,__zero_reg__
	call OWSearch
	ret
	.size	OWFirst, .-OWFirst
	.section	.text.OWNext,"ax",@progbits
.global	OWNext
	.type	OWNext, @function
OWNext:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call OWSearch
	ret
	.size	OWNext, .-OWNext
	.section	.text.OWVerify,"ax",@progbits
.global	OWVerify
	.type	OWVerify, @function
OWVerify:
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 13 */
.L__stack_usage = 13
	ldi r24,lo8(ROM_NO+8)
	ldi r25,hi8(ROM_NO+8)
	movw r26,r28
	adiw r26,1
	ldi r30,lo8(ROM_NO)
	ldi r31,hi8(ROM_NO)
.L44:
	ld r18,Z+
	st X+,r18
	cp r30,r24
	cpc r31,r25
	brne .L44
	lds r15,LastDiscrepancy
	lds r16,LastDeviceFlag
	lds r17,LastFamilyDiscrepancy
	ldi r24,lo8(64)
	sts LastDiscrepancy,r24
	sts LastDeviceFlag,__zero_reg__
	call OWSearch
	tst r24
	breq .L49
	ldd r25,Y+1
	lds r24,ROM_NO
	cpse r25,r24
	rjmp .L50
	movw r30,r28
	adiw r30,2
	ldi r26,lo8(ROM_NO+1)
	ldi r27,hi8(ROM_NO+1)
	movw r24,r28
	adiw r24,9
.L46:
	ld r19,Z+
	ld r18,X+
	cpse r19,r18
	rjmp .L51
	cp r30,r24
	cpc r31,r25
	brne .L46
	rjmp .L52
.L49:
	ldi r24,0
	rjmp .L45
.L50:
	ldi r24,0
	rjmp .L45
.L51:
	ldi r24,0
	rjmp .L45
.L52:
	ldi r24,lo8(1)
.L45:
	movw r18,r28
	subi r18,-9
	sbci r19,-1
	ldi r26,lo8(ROM_NO)
	ldi r27,hi8(ROM_NO)
	movw r30,r28
	adiw r30,1
.L48:
	ld r25,Z+
	st X+,r25
	cp r30,r18
	cpc r31,r19
	brne .L48
	sts LastDiscrepancy,r15
	sts LastDeviceFlag,r16
	sts LastFamilyDiscrepancy,r17
/* epilogue start */
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
	.size	OWVerify, .-OWVerify
	.section	.rodata.dscrc_table,"a",@progbits
	.type	dscrc_table, @object
	.size	dscrc_table, 256
dscrc_table:
	.byte	0
	.byte	94
	.byte	-68
	.byte	-30
	.byte	97
	.byte	63
	.byte	-35
	.byte	-125
	.byte	-62
	.byte	-100
	.byte	126
	.byte	32
	.byte	-93
	.byte	-3
	.byte	31
	.byte	65
	.byte	-99
	.byte	-61
	.byte	33
	.byte	127
	.byte	-4
	.byte	-94
	.byte	64
	.byte	30
	.byte	95
	.byte	1
	.byte	-29
	.byte	-67
	.byte	62
	.byte	96
	.byte	-126
	.byte	-36
	.byte	35
	.byte	125
	.byte	-97
	.byte	-63
	.byte	66
	.byte	28
	.byte	-2
	.byte	-96
	.byte	-31
	.byte	-65
	.byte	93
	.byte	3
	.byte	-128
	.byte	-34
	.byte	60
	.byte	98
	.byte	-66
	.byte	-32
	.byte	2
	.byte	92
	.byte	-33
	.byte	-127
	.byte	99
	.byte	61
	.byte	124
	.byte	34
	.byte	-64
	.byte	-98
	.byte	29
	.byte	67
	.byte	-95
	.byte	-1
	.byte	70
	.byte	24
	.byte	-6
	.byte	-92
	.byte	39
	.byte	121
	.byte	-101
	.byte	-59
	.byte	-124
	.byte	-38
	.byte	56
	.byte	102
	.byte	-27
	.byte	-69
	.byte	89
	.byte	7
	.byte	-37
	.byte	-123
	.byte	103
	.byte	57
	.byte	-70
	.byte	-28
	.byte	6
	.byte	88
	.byte	25
	.byte	71
	.byte	-91
	.byte	-5
	.byte	120
	.byte	38
	.byte	-60
	.byte	-102
	.byte	101
	.byte	59
	.byte	-39
	.byte	-121
	.byte	4
	.byte	90
	.byte	-72
	.byte	-26
	.byte	-89
	.byte	-7
	.byte	27
	.byte	69
	.byte	-58
	.byte	-104
	.byte	122
	.byte	36
	.byte	-8
	.byte	-90
	.byte	68
	.byte	26
	.byte	-103
	.byte	-57
	.byte	37
	.byte	123
	.byte	58
	.byte	100
	.byte	-122
	.byte	-40
	.byte	91
	.byte	5
	.byte	-25
	.byte	-71
	.byte	-116
	.byte	-46
	.byte	48
	.byte	110
	.byte	-19
	.byte	-77
	.byte	81
	.byte	15
	.byte	78
	.byte	16
	.byte	-14
	.byte	-84
	.byte	47
	.byte	113
	.byte	-109
	.byte	-51
	.byte	17
	.byte	79
	.byte	-83
	.byte	-13
	.byte	112
	.byte	46
	.byte	-52
	.byte	-110
	.byte	-45
	.byte	-115
	.byte	111
	.byte	49
	.byte	-78
	.byte	-20
	.byte	14
	.byte	80
	.byte	-81
	.byte	-15
	.byte	19
	.byte	77
	.byte	-50
	.byte	-112
	.byte	114
	.byte	44
	.byte	109
	.byte	51
	.byte	-47
	.byte	-113
	.byte	12
	.byte	82
	.byte	-80
	.byte	-18
	.byte	50
	.byte	108
	.byte	-114
	.byte	-48
	.byte	83
	.byte	13
	.byte	-17
	.byte	-79
	.byte	-16
	.byte	-82
	.byte	76
	.byte	18
	.byte	-111
	.byte	-49
	.byte	45
	.byte	115
	.byte	-54
	.byte	-108
	.byte	118
	.byte	40
	.byte	-85
	.byte	-11
	.byte	23
	.byte	73
	.byte	8
	.byte	86
	.byte	-76
	.byte	-22
	.byte	105
	.byte	55
	.byte	-43
	.byte	-117
	.byte	87
	.byte	9
	.byte	-21
	.byte	-75
	.byte	54
	.byte	104
	.byte	-118
	.byte	-44
	.byte	-107
	.byte	-53
	.byte	41
	.byte	119
	.byte	-12
	.byte	-86
	.byte	72
	.byte	22
	.byte	-23
	.byte	-73
	.byte	85
	.byte	11
	.byte	-120
	.byte	-42
	.byte	52
	.byte	106
	.byte	43
	.byte	117
	.byte	-105
	.byte	-55
	.byte	74
	.byte	20
	.byte	-10
	.byte	-88
	.byte	116
	.byte	42
	.byte	-56
	.byte	-106
	.byte	21
	.byte	75
	.byte	-87
	.byte	-9
	.byte	-74
	.byte	-24
	.byte	10
	.byte	84
	.byte	-41
	.byte	-119
	.byte	107
	.byte	53
	.comm	crc8m,1,1
	.comm	LastDeviceFlag,1,1
	.comm	LastFamilyDiscrepancy,1,1
	.comm	LastDiscrepancy,1,1
	.comm	ROM_NO,8,1
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
