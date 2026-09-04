;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bug_3040_type_signed_long_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _g
	.globl _f
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
;cases/bug-3040/bug-3040_type_signed_long_long.c:7: signed long long f(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_f::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/bug-3040/bug-3040_type_signed_long_long.c:11: return a + b;
;	genPlus
;	Shift into pair
	ld	hl, #_f_b_10000_13
;	Shift into pair
	push	de
	ld	iy, #2
	add	iy, sp
	push	iy
	pop	de
	ld	a, (_f_a_10000_13+0)
	add	a, (hl)
; common peephole 96b move inc hl before ld a, (_f_a_10000_13+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_f_a_10000_13+1)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_f_a_10000_13+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_f_a_10000_13+2)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_f_a_10000_13+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_f_a_10000_13+3)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_f_a_10000_13+4)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_f_a_10000_13+4)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_f_a_10000_13+5)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_f_a_10000_13+5)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_f_a_10000_13+6)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_f_a_10000_13+6)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_f_a_10000_13+7)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_f_a_10000_13+7)
	adc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3040/bug-3040_type_signed_long_long.c:12: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total f function size at codegen: 13 bytes.
_f_a_10000_13:
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
_f_b_10000_13:
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
;cases/bug-3040/bug-3040_type_signed_long_long.c:14: signed long long g(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_g::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/bug-3040/bug-3040_type_signed_long_long.c:18: return a - b;
;	genMinus
;	Shift into pair
	ld	hl, #_g_b_10000_15
;	Shift into pair
	push	de
	ld	iy, #2
	add	iy, sp
	push	iy
	pop	de
	ld	a, (_g_a_10000_15+0)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (_g_a_10000_15+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_g_a_10000_15+1)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_g_a_10000_15+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_g_a_10000_15+2)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_g_a_10000_15+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_g_a_10000_15+3)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_g_a_10000_15+4)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_g_a_10000_15+4)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_g_a_10000_15+5)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_g_a_10000_15+5)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_g_a_10000_15+6)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_g_a_10000_15+6)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_g_a_10000_15+7)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_g_a_10000_15+7)
	sbc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3040/bug-3040_type_signed_long_long.c:19: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total g function size at codegen: 13 bytes.
_g_a_10000_15:
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
_g_b_10000_15:
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
;cases/bug-3040/bug-3040_type_signed_long_long.c:21: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testBug::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/bug-3040/bug-3040_type_signed_long_long.c:23: ASSERT(!f());
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	ld	hl, #0x0000
	add	hl, sp
	push	hl
	call	_f
;	adjustStack by 2
	pop	af
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0017
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
;cases/bug-3040/bug-3040_type_signed_long_long.c:24: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testBug function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!f()"
	.db 0x00
___str_2:
	.ascii "cases/bug-3040/bug-3040_type_signed_long_long.c"
	.db 0x00
;cases/bug-3040/bug-3040_type_signed_long_long.c:28: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bug-3040/bug-3040_type_signed_long_long.c:30: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/bug-3040/bug-3040_type_signed_long_long.c:31: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3040/bug-3040_type_signed_long_long.c:32: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/bug-3040/bug-3040_type_signed_long_long.c:37: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bug-3040/bug-3040_type_signed_long_long.c:39: return "bug-3040_type_signed_long_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3040/bug-3040_type_signed_long_long.c:40: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-3040_type_signed_long_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
