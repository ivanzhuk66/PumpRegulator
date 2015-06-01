	.file	"1WireMaxim.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ResetDiscrepancy,"ax",@progbits
.global	ResetDiscrepancy
	.type	ResetDiscrepancy, @function
ResetDiscrepancy:
.LFB16:
	.file 1 "../onewire/1WireMaxim.c"
	.loc 1 76 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 78 0
	sts LastDiscrepancy,__zero_reg__
	.loc 1 79 0
	sts LastDeviceFlag,__zero_reg__
	.loc 1 80 0
	sts LastFamilyDiscrepancy,__zero_reg__
	ret
	.cfi_endproc
.LFE16:
	.size	ResetDiscrepancy, .-ResetDiscrepancy
	.section	.text.OWReset,"ax",@progbits
.global	OWReset
	.type	OWReset, @function
OWReset:
.LFB20:
	.loc 1 277 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
	.loc 1 282 0
/* #APP */
 ;  282 "../onewire/1WireMaxim.c" 1
	cli
 ;  0 "" 2
	.loc 1 283 0
/* #NOAPP */
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
	.loc 1 284 0
/* #APP */
 ;  284 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
.LVL1:
/* #NOAPP */
	ldi r24,lo8(124)
	rjmp .L3
.LVL2:
.L5:
	subi r24,lo8(-(-1))
.LVL3:
	.loc 1 287 0
	brne .+2
	rjmp .L4
.LVL4:
.L3:
.LBB24:
.LBB25:
	.file 2 "/AtmelAvrToolchain/avr/include/util/delay.h"
	.loc 2 245 0
	ldi r25,lo8(5)
	1: dec r25
	brne 1b
	nop
.LBE25:
.LBE24:
	.loc 1 290 0
	lds r30,OW_IN
	lds r31,OW_IN+1
	ld r18,Z
	lds r25,OW_PIN_MASK
	and r25,r18
	breq .L5
	.loc 1 292 0
/* #APP */
 ;  292 "../onewire/1WireMaxim.c" 1
	cli
 ;  0 "" 2
	.loc 1 293 0
/* #NOAPP */
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
.LVL5:
	com r24
	and r24,r25
	st Z,r24
	.loc 1 294 0
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
	.loc 1 295 0
/* #APP */
 ;  295 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
.LVL6:
/* #NOAPP */
.LBB26:
.LBB27:
	.loc 2 245 0
	ldi r30,lo8(959)
	ldi r31,hi8(959)
	1: sbiw r30,1
	brne 1b
	rjmp .
	nop
.LBE27:
.LBE26:
	.loc 1 297 0
/* #APP */
 ;  297 "../onewire/1WireMaxim.c" 1
	cli
 ;  0 "" 2
	.loc 1 298 0
/* #NOAPP */
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
.LVL7:
.LBB28:
.LBB29:
	.loc 2 245 0
	ldi r31,lo8(-70)
	1: dec r31
	brne 1b
	rjmp .
.LBE29:
.LBE28:
	.loc 1 300 0
	lds r30,OW_IN
	lds r31,OW_IN+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	and r25,r24
	ldi r24,lo8(1)
	breq .L6
	ldi r24,0
.L6:
.LVL8:
	.loc 1 301 0
/* #APP */
 ;  301 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
.LVL9:
/* #NOAPP */
.LBB30:
.LBB31:
	.loc 2 245 0
	ldi r30,lo8(819)
	ldi r31,hi8(819)
	1: sbiw r30,1
	brne 1b
	rjmp .
	nop
.LVL10:
.L4:
.LBE31:
.LBE30:
	.loc 1 305 0
	ret
	.cfi_endproc
.LFE20:
	.size	OWReset, .-OWReset
	.section	.text.OWWriteBit,"ax",@progbits
.global	OWWriteBit
	.type	OWWriteBit, @function
OWWriteBit:
.LFB22:
	.loc 1 343 0
	.cfi_startproc
.LVL11:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 346 0
/* #APP */
 ;  346 "../onewire/1WireMaxim.c" 1
	cli
 ;  0 "" 2
	.loc 1 348 0
/* #NOAPP */
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r18,Z
	lds r25,OW_PIN_MASK
	com r25
	and r25,r18
	st Z,r25
	.loc 1 349 0
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r18,Z
	lds r25,OW_PIN_MASK
	or r25,r18
	st Z,r25
	.loc 1 351 0
	sbrs r24,0
	rjmp .L8
.LVL12:
.LBB32:
.LBB33:
	.loc 2 245 0
	ldi r24,lo8(26)
	1: dec r24
	brne 1b
.LVL13:
	rjmp .
.LBE33:
.LBE32:
	.loc 1 353 0
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
	.loc 1 354 0
/* #APP */
 ;  354 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
.LVL14:
/* #NOAPP */
.LBB34:
.LBB35:
	.loc 2 245 0
	ldi r24,lo8(-110)
	1: dec r24
	brne 1b
	rjmp .
	ret
.LVL15:
.L8:
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	ldi r24,lo8(-83)
	1: dec r24
	brne 1b
.LVL16:
	nop
.LBE37:
.LBE36:
	.loc 1 358 0
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
	.loc 1 359 0
/* #APP */
 ;  359 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
.LVL17:
/* #NOAPP */
.LBB38:
.LBB39:
	.loc 2 245 0
	ldi r24,lo8(13)
	1: dec r24
	brne 1b
	nop
	ret
.LBE39:
.LBE38:
	.cfi_endproc
.LFE22:
	.size	OWWriteBit, .-OWWriteBit
	.section	.text.OWWriteByte,"ax",@progbits
.global	OWWriteByte
	.type	OWWriteByte, @function
OWWriteByte:
.LFB21:
	.loc 1 311 0
	.cfi_startproc
.LVL18:
	push r14
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r15,r24
.LVL19:
	.loc 1 311 0
	ldi r28,lo8(8)
	ldi r29,0
	.loc 1 327 0
	ldi r17,lo8(1)
	.loc 1 328 0
	ldi r16,lo8(1)
	mov r14,__zero_reg__
.LVL20:
.L13:
	.loc 1 328 0 is_stmt 0 discriminator 2
	mov r24,r16
	mov r25,r17
	and r25,r15
	brne .L11
	mov r24,r14
.L11:
	call OWWriteBit
.LVL21:
	.loc 1 327 0 is_stmt 1 discriminator 2
	lsl r17
.LVL22:
	sbiw r28,1
	sbiw r28,0
	brne .L13
/* epilogue start */
	.loc 1 337 0
	pop r29
	pop r28
	pop r17
.LVL23:
	pop r16
	pop r15
.LVL24:
	pop r14
	ret
	.cfi_endproc
.LFE21:
	.size	OWWriteByte, .-OWWriteByte
	.section	.text.OWReadBit,"ax",@progbits
.global	OWReadBit
	.type	OWReadBit, @function
OWReadBit:
.LFB23:
	.loc 1 373 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 378 0
/* #APP */
 ;  378 "../onewire/1WireMaxim.c" 1
	cli
 ;  0 "" 2
	.loc 1 379 0
/* #NOAPP */
	lds r30,OW_OUT
	lds r31,OW_OUT+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
	.loc 1 380 0
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	or r24,r25
	st Z,r24
.LVL25:
.LBB40:
.LBB41:
	.loc 2 245 0
	ldi r24,lo8(5)
	1: dec r24
	brne 1b
	nop
.LBE41:
.LBE40:
	.loc 1 382 0
	lds r30,OW_DDR
	lds r31,OW_DDR+1
	ld r25,Z
	lds r24,OW_PIN_MASK
	com r24
	and r24,r25
	st Z,r24
.LVL26:
.LBB42:
.LBB43:
	.loc 2 245 0
	ldi r24,lo8(26)
	1: dec r24
	brne 1b
	rjmp .
.LBE43:
.LBE42:
	.loc 1 384 0
	lds r30,OW_IN
	lds r31,OW_IN+1
	ld r18,Z
	lds r25,OW_PIN_MASK
.LVL27:
	.loc 1 385 0
/* #APP */
 ;  385 "../onewire/1WireMaxim.c" 1
	sei
 ;  0 "" 2
.LVL28:
/* #NOAPP */
.LBB44:
.LBB45:
	.loc 2 245 0
	ldi r24,lo8(-115)
	1: dec r24
	brne 1b
	nop
.LBE45:
.LBE44:
	.loc 1 384 0
	and r18,r25
.LVL29:
	ldi r24,lo8(1)
	cpse r25,r18
	ldi r24,0
.L15:
	.loc 1 390 0
	ret
	.cfi_endproc
.LFE23:
	.size	OWReadBit, .-OWReadBit
	.section	.text.OWMatchRom,"ax",@progbits
.global	OWMatchRom
	.type	OWMatchRom, @function
OWMatchRom:
.LFB24:
	.loc 1 393 0
	.cfi_startproc
.LVL30:
	push r16
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r16,r24
.LVL31:
	.loc 1 397 0
	ldi r24,lo8(85)
.LVL32:
	call OWWriteByte
.LVL33:
	movw r28,r16
	subi r16,-8
	sbci r17,-1
.LVL34:
.L18:
	.loc 1 403 0
	ld r24,Y+
.LVL35:
	call OWWriteByte
.LVL36:
	.loc 1 400 0
	cp r28,r16
	cpc r29,r17
	brne .L18
/* epilogue start */
	.loc 1 406 0
	pop r29
	pop r28
.LVL37:
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE24:
	.size	OWMatchRom, .-OWMatchRom
	.section	.text.docrc8,"ax",@progbits
.global	docrc8
	.type	docrc8, @function
docrc8:
.LFB25:
	.loc 1 434 0
	.cfi_startproc
.LVL38:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 435 0
	lds r30,crc8m
	eor r24,r30
.LVL39:
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(dscrc_table))
	sbci r31,hi8(-(dscrc_table))
	ld r24,Z
	sts crc8m,r24
	.loc 1 437 0
	ret
	.cfi_endproc
.LFE25:
	.size	docrc8, .-docrc8
	.section	.text.OWSearch,"ax",@progbits
.global	OWSearch
	.type	OWSearch, @function
OWSearch:
.LFB18:
	.loc 1 101 0
	.cfi_startproc
	push r13
.LCFI10:
	.cfi_def_cfa_offset 3
	.cfi_offset 13, -2
	push r14
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI12:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI13:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI14:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI16:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
.LVL40:
	.loc 1 113 0
	sts crc8m,__zero_reg__
	.loc 1 116 0
	lds r24,LastDeviceFlag
	cpse r24,__zero_reg__
	rjmp .L38
	.loc 1 119 0
	call OWReset
.LVL41:
	cpse r24,__zero_reg__
	rjmp .L22
	.loc 1 122 0
	sts LastDiscrepancy,__zero_reg__
	.loc 1 123 0
	sts LastDeviceFlag,__zero_reg__
	.loc 1 124 0
	sts LastFamilyDiscrepancy,__zero_reg__
	.loc 1 125 0
	rjmp .L39
.L22:
	.loc 1 129 0
	ldi r24,lo8(-16)
	call OWWriteByte
.LVL42:
	.loc 1 111 0
	clr r14
	inc r14
	.loc 1 110 0
	ldi r28,0
	.loc 1 109 0
	mov r15,__zero_reg__
	.loc 1 108 0
	ldi r29,lo8(1)
	ldi r17,lo8(1)
	.loc 1 154 0
	mov r13,__zero_reg__
.LVL43:
.L36:
	.loc 1 135 0
	call OWReadBit
.LVL44:
	mov r16,r24
.LVL45:
	.loc 1 136 0
	call OWReadBit
.LVL46:
	.loc 1 139 0
	cpi r16,lo8(1)
	brne .L24
	.loc 1 139 0 is_stmt 0 discriminator 1
	cpi r24,lo8(1)
	brne .L26
	rjmp .L25
.L24:
	.loc 1 144 0 is_stmt 1
	cpse r16,r24
	rjmp .L27
	.loc 1 150 0
	lds r24,LastDiscrepancy
.LVL47:
	cp r29,r24
	brsh .L28
	.loc 1 151 0
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(ROM_NO))
	sbci r31,hi8(-(ROM_NO))
	ld r24,Z
	and r24,r14
	mov r16,r17
.LVL48:
	brne .L30
	mov r16,r13
.LVL49:
	rjmp .L30
.LVL50:
.L28:
	.loc 1 154 0
	mov r16,r17
.LVL51:
	cpse r29,r24
	mov r16,r13
.LVL52:
.L30:
	.loc 1 157 0
	cpse r16,__zero_reg__
	rjmp .L32
.LVL53:
	.loc 1 162 0
	cpi r29,lo8(9)
	brlo .+2
	rjmp .L33
	.loc 1 163 0
	sts LastFamilyDiscrepancy,r29
	rjmp .L33
.LVL54:
.L32:
	.loc 1 169 0
	cpi r16,lo8(1)
	brne .L27
.LVL55:
.L26:
	.loc 1 170 0
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(ROM_NO))
	sbci r31,hi8(-(ROM_NO))
	ld r24,Z
	or r24,r14
	st Z,r24
	mov r16,r17
	rjmp .L34
.LVL56:
.L27:
	.loc 1 172 0
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(ROM_NO))
	sbci r31,hi8(-(ROM_NO))
	ld r25,Z
	mov r24,r14
	com r24
	and r24,r25
	st Z,r24
.LVL57:
.L34:
	.loc 1 175 0
	mov r24,r16
	call OWWriteBit
.LVL58:
	.loc 1 179 0
	subi r29,lo8(-(1))
.LVL59:
	.loc 1 180 0
	lsl r14
.LVL60:
	.loc 1 183 0
	brne .L35
	.loc 1 185 0
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(ROM_NO))
	sbci r31,hi8(-(ROM_NO))
	ld r24,Z
	call docrc8
.LVL61:
	.loc 1 186 0
	subi r28,lo8(-(1))
.LVL62:
	.loc 1 187 0
	mov r14,r17
.LVL63:
.L35:
	.loc 1 191 0
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L36
.L25:
	.loc 1 194 0
	cpi r29,lo8(65)
	brlo .L38
	.loc 1 194 0 is_stmt 0 discriminator 1
	lds r24,crc8m
	cpse r24,__zero_reg__
	rjmp .L38
	.loc 1 197 0 is_stmt 1
	sts LastDiscrepancy,r15
	.loc 1 200 0
	cpse r15,__zero_reg__
	rjmp .L37
	.loc 1 201 0
	ldi r24,lo8(1)
	sts LastDeviceFlag,r24
	rjmp .L37
.LVL64:
.L38:
	.loc 1 210 0
	sts LastDiscrepancy,__zero_reg__
	.loc 1 211 0
	sts LastDeviceFlag,__zero_reg__
	.loc 1 212 0
	sts LastFamilyDiscrepancy,__zero_reg__
.LVL65:
	.loc 1 213 0
	ldi r24,0
	rjmp .L39
.LVL66:
.L33:
	.loc 1 108 0
	mov r15,r29
	rjmp .L27
.LVL67:
.L37:
	.loc 1 208 0
	lds r24,ROM_NO
	tst r24
	breq .L38
	ldi r24,lo8(1)
.LVL68:
.L39:
/* epilogue start */
	.loc 1 217 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
	.cfi_endproc
.LFE18:
	.size	OWSearch, .-OWSearch
	.section	.text.OWFirst,"ax",@progbits
.global	OWFirst
	.type	OWFirst, @function
OWFirst:
.LFB15:
	.loc 1 66 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 68 0
	sts LastDiscrepancy,__zero_reg__
	.loc 1 69 0
	sts LastDeviceFlag,__zero_reg__
	.loc 1 70 0
	sts LastFamilyDiscrepancy,__zero_reg__
	.loc 1 72 0
	call OWSearch
.LVL69:
	.loc 1 73 0
	ret
	.cfi_endproc
.LFE15:
	.size	OWFirst, .-OWFirst
	.section	.text.OWNext,"ax",@progbits
.global	OWNext
	.type	OWNext, @function
OWNext:
.LFB17:
	.loc 1 89 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 91 0
	call OWSearch
.LVL70:
	.loc 1 92 0
	ret
	.cfi_endproc
.LFE17:
	.size	OWNext, .-OWNext
	.section	.text.OWVerify,"ax",@progbits
.global	OWVerify
	.type	OWVerify, @function
OWVerify:
.LFB19:
	.loc 1 225 0
	.cfi_startproc
	push r15
.LCFI17:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI18:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI19:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI20:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI21:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI22:
	.cfi_def_cfa_register 28
	sbiw r28,8
.LCFI23:
	.cfi_def_cfa_offset 15
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 13 */
.L__stack_usage = 13
.LVL71:
	ldi r24,lo8(ROM_NO+8)
	ldi r25,hi8(ROM_NO+8)
	.loc 1 225 0
	movw r26,r28
	adiw r26,1
	ldi r30,lo8(ROM_NO)
	ldi r31,hi8(ROM_NO)
.LVL72:
.L44:
	.loc 1 231 0 discriminator 2
	ld r18,Z+
.LVL73:
	st X+,r18
.LVL74:
	.loc 1 230 0 discriminator 2
	cp r30,r24
	cpc r31,r25
	brne .L44
	.loc 1 232 0
	lds r15,LastDiscrepancy
.LVL75:
	.loc 1 233 0
	lds r16,LastDeviceFlag
.LVL76:
	.loc 1 234 0
	lds r17,LastFamilyDiscrepancy
.LVL77:
	.loc 1 237 0
	ldi r24,lo8(64)
	sts LastDiscrepancy,r24
	.loc 1 238 0
	sts LastDeviceFlag,__zero_reg__
	.loc 1 240 0
	call OWSearch
.LVL78:
	tst r24
	breq .L49
.LVL79:
	.loc 1 246 0 discriminator 1
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
.LVL80:
.L46:
	.loc 1 246 0 is_stmt 0
	ld r19,Z+
.LVL81:
	ld r18,X+
	cpse r19,r18
	rjmp .L51
.LVL82:
	.loc 1 244 0 is_stmt 1
	cp r30,r24
	cpc r31,r25
	brne .L46
	rjmp .L52
.LVL83:
.L49:
	.loc 1 254 0
	ldi r24,0
	rjmp .L45
.LVL84:
.L50:
	.loc 1 248 0
	ldi r24,0
	rjmp .L45
.LVL85:
.L51:
	ldi r24,0
	rjmp .L45
.LVL86:
.L52:
	.loc 1 243 0
	ldi r24,lo8(1)
.LVL87:
.L45:
	movw r18,r28
	subi r18,-9
	sbci r19,-1
	.loc 1 248 0
	ldi r26,lo8(ROM_NO)
	ldi r27,hi8(ROM_NO)
	movw r30,r28
	adiw r30,1
.LVL88:
.L48:
	.loc 1 258 0 discriminator 2
	ld r25,Z+
	st X+,r25
	.loc 1 257 0 discriminator 2
	cp r30,r18
	cpc r31,r19
	brne .L48
	.loc 1 259 0
	sts LastDiscrepancy,r15
	.loc 1 260 0
	sts LastDeviceFlag,r16
	.loc 1 261 0
	sts LastFamilyDiscrepancy,r17
/* epilogue start */
	.loc 1 265 0
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
.LVL89:
	pop r16
.LVL90:
	pop r15
.LVL91:
	ret
	.cfi_endproc
.LFE19:
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
	.text
.Letext0:
	.file 3 "/AtmelAvrToolchain/avr/include/stdint.h"
	.file 4 "../onewire/onewire.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x72d
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF51
	.byte	0x1
	.long	.LASF52
	.long	.LASF53
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
	.byte	0x3
	.byte	0x7a
	.long	0x3b
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
	.byte	0x7e
	.long	0x62
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
	.long	.LASF54
	.byte	0x2
	.byte	0xe0
	.byte	0x1
	.byte	0x3
	.long	0xb0
	.uleb128 0x6
	.long	.LASF55
	.byte	0x2
	.byte	0xe0
	.long	0xb0
	.uleb128 0x7
	.long	.LASF9
	.byte	0x2
	.byte	0xe2
	.long	0xb0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.byte	0xe6
	.long	0x57
	.uleb128 0x8
	.byte	0x1
	.long	.LASF56
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x9
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x4b
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.word	0x114
	.long	0x30
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1ec
	.uleb128 0xb
	.string	"r"
	.byte	0x1
	.word	0x117
	.long	0x30
	.long	.LLST0
	.uleb128 0xc
	.long	.LASF12
	.byte	0x1
	.word	0x118
	.long	0x30
	.long	.LLST1
	.uleb128 0xd
	.long	0x77
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.word	0x120
	.long	0x141
	.uleb128 0xe
	.long	0x84
	.byte	0x4
	.long	0x40000000
	.uleb128 0xf
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x10
	.long	0x8f
	.byte	0x4
	.long	0x41800000
	.uleb128 0x11
	.long	0x9a
	.byte	0x10
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x77
	.long	.LBB26
	.long	.LBE26
	.byte	0x1
	.word	0x128
	.long	0x17b
	.uleb128 0x12
	.long	0x84
	.long	.LLST2
	.uleb128 0xf
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x13
	.long	0x8f
	.long	.LLST3
	.uleb128 0x13
	.long	0x9a
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x77
	.long	.LBB28
	.long	.LBE28
	.byte	0x1
	.word	0x12b
	.long	0x1b5
	.uleb128 0x12
	.long	0x84
	.long	.LLST5
	.uleb128 0xf
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x13
	.long	0x8f
	.long	.LLST6
	.uleb128 0x13
	.long	0x9a
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x77
	.long	.LBB30
	.long	.LBE30
	.byte	0x1
	.word	0x12e
	.uleb128 0x12
	.long	0x84
	.long	.LLST8
	.uleb128 0xf
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x13
	.long	0x8f
	.long	.LLST9
	.uleb128 0x13
	.long	0x9a
	.long	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.word	0x156
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2f9
	.uleb128 0x16
	.string	"v"
	.byte	0x1
	.word	0x156
	.long	0x3b
	.long	.LLST11
	.uleb128 0xd
	.long	0x77
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.word	0x160
	.long	0x24f
	.uleb128 0x12
	.long	0x84
	.long	.LLST12
	.uleb128 0xf
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x13
	.long	0x8f
	.long	.LLST13
	.uleb128 0x13
	.long	0x9a
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x77
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.word	0x163
	.long	0x289
	.uleb128 0x12
	.long	0x84
	.long	.LLST15
	.uleb128 0xf
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x13
	.long	0x8f
	.long	.LLST16
	.uleb128 0x13
	.long	0x9a
	.long	.LLST17
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x77
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.word	0x165
	.long	0x2c3
	.uleb128 0xe
	.long	0x84
	.byte	0x4
	.long	0x42820000
	.uleb128 0xf
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x10
	.long	0x8f
	.byte	0x4
	.long	0x44020000
	.uleb128 0x17
	.long	0x9a
	.word	0x208
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x77
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.word	0x168
	.uleb128 0xe
	.long	0x84
	.byte	0x4
	.long	0x40a00000
	.uleb128 0xf
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x10
	.long	0x8f
	.byte	0x4
	.long	0x42200000
	.uleb128 0x11
	.long	0x9a
	.byte	0x28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.word	0x136
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST18
	.byte	0x1
	.long	0x349
	.uleb128 0x16
	.string	"v"
	.byte	0x1
	.word	0x136
	.long	0x3b
	.long	.LLST19
	.uleb128 0x19
	.long	.LASF16
	.byte	0x1
	.word	0x141
	.long	0x30
	.byte	0x1
	.uleb128 0xc
	.long	.LASF17
	.byte	0x1
	.word	0x142
	.long	0x30
	.long	.LLST20
	.uleb128 0x1a
	.long	.LVL21
	.long	0x1ec
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.word	0x174
	.long	0x3b
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x41e
	.uleb128 0xb
	.string	"r"
	.byte	0x1
	.word	0x179
	.long	0x30
	.long	.LLST21
	.uleb128 0xd
	.long	0x77
	.long	.LBB40
	.long	.LBE40
	.byte	0x1
	.word	0x17d
	.long	0x3ae
	.uleb128 0xe
	.long	0x84
	.byte	0x4
	.long	0x40000000
	.uleb128 0xf
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x10
	.long	0x8f
	.byte	0x4
	.long	0x41800000
	.uleb128 0x11
	.long	0x9a
	.byte	0x10
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x77
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.word	0x17f
	.long	0x3e7
	.uleb128 0xe
	.long	0x84
	.byte	0x4
	.long	0x41200000
	.uleb128 0xf
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x10
	.long	0x8f
	.byte	0x4
	.long	0x42a00000
	.uleb128 0x11
	.long	0x9a
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x77
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.word	0x182
	.uleb128 0xe
	.long	0x84
	.byte	0x4
	.long	0x42540000
	.uleb128 0xf
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x10
	.long	0x8f
	.byte	0x4
	.long	0x43d40000
	.uleb128 0x17
	.long	0x9a
	.word	0x1a8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.word	0x188
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST22
	.byte	0x1
	.long	0x477
	.uleb128 0x1b
	.long	.LASF20
	.byte	0x1
	.word	0x188
	.long	0x477
	.long	.LLST23
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.word	0x18a
	.long	0x3b
	.long	.LLST24
	.uleb128 0x1c
	.long	.LVL33
	.long	0x2f9
	.long	0x46d
	.uleb128 0x1d
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.uleb128 0x1a
	.long	.LVL36
	.long	0x2f9
	.byte	0
	.uleb128 0x1e
	.byte	0x2
	.long	0x3b
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.word	0x1b1
	.byte	0x1
	.long	0x3b
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x4ad
	.uleb128 0x1b
	.long	.LASF22
	.byte	0x1
	.word	0x1b1
	.long	0x3b
	.long	.LLST25
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0x64
	.long	0x30
	.long	.LFB18
	.long	.LFE18
	.long	.LLST26
	.byte	0x1
	.long	0x58f
	.uleb128 0x21
	.long	.LASF24
	.byte	0x1
	.byte	0x66
	.long	0x30
	.long	.LLST27
	.uleb128 0x21
	.long	.LASF25
	.byte	0x1
	.byte	0x67
	.long	0x30
	.long	.LLST28
	.uleb128 0x21
	.long	.LASF26
	.byte	0x1
	.byte	0x67
	.long	0x30
	.long	.LLST29
	.uleb128 0x21
	.long	.LASF27
	.byte	0x1
	.byte	0x67
	.long	0x30
	.long	.LLST30
	.uleb128 0x21
	.long	.LASF28
	.byte	0x1
	.byte	0x68
	.long	0x30
	.long	.LLST31
	.uleb128 0x21
	.long	.LASF29
	.byte	0x1
	.byte	0x68
	.long	0x30
	.long	.LLST32
	.uleb128 0x21
	.long	.LASF30
	.byte	0x1
	.byte	0x69
	.long	0x3b
	.long	.LLST33
	.uleb128 0x21
	.long	.LASF31
	.byte	0x1
	.byte	0x69
	.long	0x3b
	.long	.LLST34
	.uleb128 0x1a
	.long	.LVL41
	.long	0xcc
	.uleb128 0x1c
	.long	.LVL42
	.long	0x2f9
	.long	0x55f
	.uleb128 0x1d
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xf0
	.byte	0
	.uleb128 0x1a
	.long	.LVL44
	.long	0x349
	.uleb128 0x1a
	.long	.LVL46
	.long	0x349
	.uleb128 0x1c
	.long	.LVL58
	.long	0x1ec
	.long	0x585
	.uleb128 0x1d
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.long	.LVL61
	.long	0x47d
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0x41
	.long	0x30
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x5b6
	.uleb128 0x1a
	.long	.LVL69
	.long	0x4ad
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x58
	.long	0x30
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x5dd
	.uleb128 0x1a
	.long	.LVL70
	.long	0x4ad
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0xe0
	.long	0x30
	.long	.LFB19
	.long	.LFE19
	.long	.LLST35
	.byte	0x1
	.long	0x659
	.uleb128 0x23
	.long	.LASF35
	.byte	0x1
	.byte	0xe2
	.long	0x659
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xe3
	.long	0x30
	.long	.LLST36
	.uleb128 0x23
	.long	.LASF36
	.byte	0x1
	.byte	0xe3
	.long	0x30
	.byte	0x1
	.byte	0x68
	.uleb128 0x21
	.long	.LASF37
	.byte	0x1
	.byte	0xe3
	.long	0x30
	.long	.LLST37
	.uleb128 0x21
	.long	.LASF38
	.byte	0x1
	.byte	0xe3
	.long	0x30
	.long	.LLST38
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.byte	0xe3
	.long	0x30
	.long	.LLST39
	.uleb128 0x1a
	.long	.LVL78
	.long	0x4ad
	.byte	0
	.uleb128 0x25
	.long	0x3b
	.long	0x669
	.uleb128 0x26
	.long	0x669
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF40
	.uleb128 0x25
	.long	0x3b
	.long	0x680
	.uleb128 0x26
	.long	0x669
	.byte	0xff
	.byte	0
	.uleb128 0x27
	.long	.LASF41
	.byte	0x1
	.word	0x19a
	.long	0x692
	.byte	0x5
	.byte	0x3
	.long	dscrc_table
	.uleb128 0x28
	.long	0x670
	.uleb128 0x29
	.long	.LASF42
	.byte	0x4
	.byte	0x68
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF43
	.byte	0x4
	.byte	0x69
	.long	0x6b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.byte	0x2
	.long	0x6b7
	.uleb128 0x2a
	.long	0x30
	.uleb128 0x29
	.long	.LASF44
	.byte	0x4
	.byte	0x6a
	.long	0x6b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	.LASF45
	.byte	0x4
	.byte	0x6b
	.long	0x6b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF46
	.byte	0x1
	.byte	0x36
	.long	0x659
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ROM_NO
	.uleb128 0x2b
	.long	.LASF47
	.byte	0x1
	.byte	0x37
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LastDiscrepancy
	.uleb128 0x2b
	.long	.LASF48
	.byte	0x1
	.byte	0x38
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LastFamilyDiscrepancy
	.uleb128 0x2b
	.long	.LASF49
	.byte	0x1
	.byte	0x39
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LastDeviceFlag
	.uleb128 0x2b
	.long	.LASF50
	.byte	0x1
	.byte	0x3a
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	crc8m
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
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x34
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
	.uleb128 0xc
	.uleb128 0x34
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
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL8
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x3
	.byte	0x8
	.byte	0x7d
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2
	.word	0x3
	.byte	0x8
	.byte	0x7c
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL3
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL10
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x43f00000
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL10
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x45700000
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL10
	.word	0x4
	.byte	0xa
	.word	0xf00
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL10
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x428c0000
	.long	0
	.long	0
.LLST6:
	.long	.LVL7
	.long	.LVL10
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x440c0000
	.long	0
	.long	0
.LLST7:
	.long	.LVL7
	.long	.LVL10
	.word	0x4
	.byte	0xa
	.word	0x230
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL9
	.long	.LVL10
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x43cd0000
	.long	0
	.long	0
.LLST9:
	.long	.LVL9
	.long	.LVL10
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x454d0000
	.long	0
	.long	0
.LLST10:
	.long	.LVL9
	.long	.LVL10
	.word	0x4
	.byte	0xa
	.word	0xcd0
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL11
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LVL15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	.LVL16
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL12
	.long	.LVL15
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST13:
	.long	.LVL12
	.long	.LVL15
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42a00000
	.long	0
	.long	0
.LLST14:
	.long	.LVL12
	.long	.LVL15
	.word	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x425c0000
	.long	0
	.long	0
.LLST16:
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x43dc0000
	.long	0
	.long	0
.LLST17:
	.long	.LVL14
	.long	.LVL15
	.word	0x4
	.byte	0xa
	.word	0x1b8
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LFB21
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LFE21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST19:
	.long	.LVL18
	.long	.LVL20
	.word	0x1
	.byte	0x68
	.long	.LVL20
	.long	.LVL24
	.word	0x1
	.byte	0x5f
	.long	.LVL24
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL19
	.long	.LVL20
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL20
	.long	.LVL23
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST21:
	.long	.LVL27
	.long	.LVL29
	.word	0xd
	.byte	0x89
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x89
	.sleb128 0
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x29
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LFB24
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST23:
	.long	.LVL30
	.long	.LVL32
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LVL34
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34
	.long	.LVL35
	.word	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.long	.LVL35
	.long	.LVL37
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST24:
	.long	.LVL31
	.long	.LVL34
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35
	.word	0x6
	.byte	0x80
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.word	0x8
	.byte	0x80
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL36
	.long	.LVL37
	.word	0x6
	.byte	0x80
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL38
	.long	.LVL39
	.word	0x1
	.byte	0x68
	.long	.LVL39
	.long	.LFE25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LFB18
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI16
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST27:
	.long	.LVL40
	.long	.LVL43
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL43
	.long	.LVL64
	.word	0x1
	.byte	0x6d
	.long	.LVL66
	.long	.LVL68
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST28:
	.long	.LVL40
	.long	.LVL43
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL43
	.long	.LVL53
	.word	0x1
	.byte	0x5f
	.long	.LVL53
	.long	.LVL54
	.word	0x1
	.byte	0x6d
	.long	.LVL54
	.long	.LVL64
	.word	0x1
	.byte	0x5f
	.long	.LVL66
	.long	.LVL67
	.word	0x1
	.byte	0x6d
	.long	.LVL67
	.long	.LVL68
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST29:
	.long	.LVL40
	.long	.LVL43
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL43
	.long	.LVL64
	.word	0x1
	.byte	0x6c
	.long	.LVL66
	.long	.LVL68
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST30:
	.long	.LVL40
	.long	.LVL64
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL65
	.long	.LVL67
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL67
	.long	.LVL68
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL45
	.long	.LVL48
	.word	0x1
	.byte	0x60
	.long	.LVL50
	.long	.LVL51
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST32:
	.long	.LVL46
	.long	.LVL47
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST33:
	.long	.LVL40
	.long	.LVL43
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL43
	.long	.LVL62
	.word	0x1
	.byte	0x5e
	.long	.LVL62
	.long	.LVL63
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x5e
	.long	.LVL66
	.long	.LVL68
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST34:
	.long	.LVL49
	.long	.LVL50
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL52
	.long	.LVL55
	.word	0x1
	.byte	0x60
	.long	.LVL55
	.long	.LVL56
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x60
	.long	.LVL66
	.long	.LVL67
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LFB19
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI22
	.long	.LCFI23
	.word	0x2
	.byte	0x8c
	.sleb128 7
	.long	.LCFI23
	.long	.LFE19
	.word	0x2
	.byte	0x8c
	.sleb128 15
	.long	0
	.long	0
.LLST36:
	.long	.LVL71
	.long	.LVL72
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL72
	.long	.LVL73
	.word	0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	ROM_NO
	.byte	0x1c
	.byte	0x9f
	.long	.LVL73
	.long	.LVL74
	.word	0xa
	.byte	0x3
	.long	ROM_NO
	.byte	0x20
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL74
	.long	.LVL78-1
	.word	0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	ROM_NO
	.byte	0x1c
	.byte	0x9f
	.long	.LVL79
	.long	.LVL80
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL80
	.long	.LVL81
	.word	0x8
	.byte	0x8e
	.sleb128 0
	.byte	0x91
	.sleb128 1
	.byte	0x1c
	.byte	0x23
	.uleb128 0xf
	.byte	0x9f
	.long	.LVL81
	.long	.LVL82
	.word	0x8
	.byte	0x8e
	.sleb128 0
	.byte	0x91
	.sleb128 1
	.byte	0x1c
	.byte	0x23
	.uleb128 0xe
	.byte	0x9f
	.long	.LVL82
	.long	.LVL83
	.word	0x8
	.byte	0x8e
	.sleb128 0
	.byte	0x91
	.sleb128 1
	.byte	0x1c
	.byte	0x23
	.uleb128 0xf
	.byte	0x9f
	.long	.LVL84
	.long	.LVL85
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL85
	.long	.LVL86
	.word	0x8
	.byte	0x8e
	.sleb128 0
	.byte	0x91
	.sleb128 1
	.byte	0x1c
	.byte	0x23
	.uleb128 0xe
	.byte	0x9f
	.long	.LVL86
	.long	.LVL87
	.word	0x8
	.byte	0x8e
	.sleb128 0
	.byte	0x91
	.sleb128 1
	.byte	0x1c
	.byte	0x23
	.uleb128 0xf
	.byte	0x9f
	.long	.LVL87
	.long	.LVL88
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL75
	.long	.LVL91
	.word	0x1
	.byte	0x5f
	.long	.LVL91
	.long	.LFE19
	.word	0x5
	.byte	0x3
	.long	LastDiscrepancy
	.long	0
	.long	0
.LLST38:
	.long	.LVL76
	.long	.LVL90
	.word	0x1
	.byte	0x60
	.long	.LVL90
	.long	.LFE19
	.word	0x5
	.byte	0x3
	.long	LastDeviceFlag
	.long	0
	.long	0
.LLST39:
	.long	.LVL77
	.long	.LVL89
	.word	0x1
	.byte	0x61
	.long	.LVL89
	.long	.LFE19
	.word	0x5
	.byte	0x3
	.long	LastFamilyDiscrepancy
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB16
	.long	.LFE16
	.long	.LFB20
	.long	.LFE20
	.long	.LFB22
	.long	.LFE22
	.long	.LFB21
	.long	.LFE21
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB18
	.long	.LFE18
	.long	.LFB15
	.long	.LFE15
	.long	.LFB17
	.long	.LFE17
	.long	.LFB19
	.long	.LFE19
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"bitMask"
.LASF19:
	.string	"OWMatchRom"
.LASF24:
	.string	"id_bit_number"
.LASF25:
	.string	"last_zero"
.LASF29:
	.string	"cmp_id_bit"
.LASF56:
	.string	"__builtin_avr_delay_cycles"
.LASF9:
	.string	"__tmp"
.LASF40:
	.string	"sizetype"
.LASF23:
	.string	"OWSearch"
.LASF26:
	.string	"rom_byte_number"
.LASF53:
	.string	"/home/izhuk/workspace/A328Pn3310DS18x20_n/Debug"
.LASF47:
	.string	"LastDiscrepancy"
.LASF41:
	.string	"dscrc_table"
.LASF22:
	.string	"value"
.LASF46:
	.string	"ROM_NO"
.LASF50:
	.string	"crc8m"
.LASF4:
	.string	"uint8_t"
.LASF21:
	.string	"bytesLeft"
.LASF20:
	.string	"romValue"
.LASF48:
	.string	"LastFamilyDiscrepancy"
.LASF30:
	.string	"rom_byte_mask"
.LASF44:
	.string	"OW_OUT"
.LASF37:
	.string	"ld_backup"
.LASF7:
	.string	"long long int"
.LASF3:
	.string	"long int"
.LASF51:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega328p -g2 -gdwarf-2 -g -O1 -std=gnu99 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields"
.LASF57:
	.string	"ResetDiscrepancy"
.LASF34:
	.string	"OWVerify"
.LASF39:
	.string	"lfd_backup"
.LASF1:
	.string	"unsigned char"
.LASF32:
	.string	"OWFirst"
.LASF0:
	.string	"signed char"
.LASF54:
	.string	"_delay_us"
.LASF8:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint32_t"
.LASF2:
	.string	"unsigned int"
.LASF45:
	.string	"OW_DDR"
.LASF38:
	.string	"ldf_backup"
.LASF42:
	.string	"OW_PIN_MASK"
.LASF27:
	.string	"search_result"
.LASF12:
	.string	"retries"
.LASF43:
	.string	"OW_IN"
.LASF58:
	.string	"docrc8"
.LASF36:
	.string	"rslt"
.LASF16:
	.string	"power"
.LASF49:
	.string	"LastDeviceFlag"
.LASF6:
	.string	"long unsigned int"
.LASF11:
	.string	"double"
.LASF35:
	.string	"rom_backup"
.LASF33:
	.string	"OWNext"
.LASF14:
	.string	"OWWriteBit"
.LASF13:
	.string	"OWReset"
.LASF15:
	.string	"OWWriteByte"
.LASF31:
	.string	"search_direction"
.LASF10:
	.string	"__ticks_dc"
.LASF18:
	.string	"OWReadBit"
.LASF28:
	.string	"id_bit"
.LASF52:
	.string	"../onewire/1WireMaxim.c"
.LASF55:
	.string	"__us"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
