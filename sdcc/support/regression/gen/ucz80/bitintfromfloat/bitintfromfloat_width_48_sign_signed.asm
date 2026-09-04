;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitintfromfloat_width_48_sign_signed
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testCast
	.globl _from_float
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area _DABS (ABS)
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:20: bitinttype from_float(float f)
;	genLabel
;	genFunction
;	---------------------------------
; Function from_float
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_from_float::
;	adjustStack by -8
	ld	iy, #-8
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:22: return(f);
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	push	hl
	ld	hl, #0x0002
	add	hl, sp
	ld	c, l
	ld	b, h
	pop	hl
	push	bc
	call	___fs2slonglong
;	adjustStack by 2
	pop	af
;	genCast
;	genMove_o size 6 result type 12 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	a, 5 (iy)
	inc	iy
	inc	iy
	ld	5 (iy), a
; common peephole 179 moved decrement of iy after ld instruction
; common peephole 179 moved decrement of iy after ld instruction
	ld	a, 2 (iy)
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156b removed inc iy / dec iy pair.
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156b removed inc iy / dec iy pair.
	ld	4 (iy), a
; common peephole 179 moved decrement of iy after ld instruction
; common peephole 179 moved decrement of iy after ld instruction
	ld	a, 1 (iy)
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156b removed inc iy / dec iy pair.
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156b removed inc iy / dec iy pair.
	ld	3 (iy), a
; common peephole 179 moved decrement of iy after ld instruction
; common peephole 179 moved decrement of iy after ld instruction
	ld	a, 0 (iy)
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156b removed inc iy / dec iy pair.
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156b removed inc iy / dec iy pair.
	ld	2 (iy), a
; common peephole 179 moved decrement of iy after ld instruction
; common peephole 179 moved decrement of iy after ld instruction
	ld	a, -1 (iy)
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156b removed inc iy / dec iy pair.
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156b removed inc iy / dec iy pair.
	ld	1 (iy), a
; common peephole 179 moved decrement of iy after ld instruction
; common peephole 179 moved decrement of iy after ld instruction
	ld	a, -2 (iy)
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156b removed inc iy / dec iy pair.
; common peephole 156a swap dec iy / inc iy pair.
; common peephole 156b removed inc iy / dec iy pair.
	ld	0 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #2
	add	hl, sp
	ld	bc, #6
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:23: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total from_float function size at codegen: 13 bytes.
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:26: void testCast (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testCast
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
_testCast::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -6
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:32: ASSERT (from_float (f) == (bitinttype)f);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
	ld	hl, #0x3f80
;	genCall
	push	hl
	ld	hl, #0x0002
	add	hl, sp
	ld	c, l
	ld	b, h
	pop	hl
	push	bc
	call	_from_float
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0020
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:34: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testCast function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "from_float (f) == (bitinttype)f"
	.db 0x00
___str_2:
	.ascii "cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c"
	.db 0x00
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:38: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:40: __prints("Running testCast\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:41: testCast();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:42: }
;	genEndFunction
	jp	_testCast
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testCast"
	.db 0x0a
	.db 0x00
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:47: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:49: return "bitintfromfloat_width_48_sign_signed";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintfromfloat/bitintfromfloat_width_48_sign_signed.c:50: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bitintfromfloat_width_48_sign_signed"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
