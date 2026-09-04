;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2804
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _f
	.globl ___prints
	.globl ___fail
	.globl _a
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
_a::
	.ds 8
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
;cases/./../tests/bug-2804.c:12: unsigned long long f(_Bool c)
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
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2804.c:14: if(c)
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/bug-2804.c:15: return(a + (ULLONG_MAX - 2));
;	genPlus
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	ld	a, (_a+0)
	add	a, #0xfd
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+1)
	inc	hl
	ld	a, (_a+1)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+2)
	inc	hl
	ld	a, (_a+2)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+3)
	inc	hl
	ld	a, (_a+3)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+4)
	inc	hl
	ld	a, (_a+4)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+5)
	inc	hl
	ld	a, (_a+5)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+6)
	inc	hl
	ld	a, (_a+6)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+7)
	inc	hl
	ld	a, (_a+7)
	adc	a, #0xff
	ld	(hl), a
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
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00102$:
;cases/./../tests/bug-2804.c:17: return(a + (ULLONG_MAX - 3));
;	genPlus
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	ld	a, (_a+0)
	add	a, #0xfc
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+1)
	inc	hl
	ld	a, (_a+1)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+2)
	inc	hl
	ld	a, (_a+2)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+3)
	inc	hl
	ld	a, (_a+3)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+4)
	inc	hl
	ld	a, (_a+4)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+5)
	inc	hl
	ld	a, (_a+5)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+6)
	inc	hl
	ld	a, (_a+6)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_a+7)
	inc	hl
	ld	a, (_a+7)
	adc	a, #0xff
	ld	(hl), a
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
00104$:
;cases/./../tests/bug-2804.c:18: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total f function size at codegen: 17 bytes.
;cases/./../tests/bug-2804.c:20: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 16 bytes.
_testBug::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -16
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-2804.c:22: a = 0;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_a+0), a
	ld	(_a+1), a
	ld	(_a+2), a
	ld	(_a+3), a
	ld	(_a+4), a
	ld	(_a+5), a
	ld	(_a+6), a
	ld	(_a+7), a
;cases/./../tests/bug-2804.c:23: ASSERT(f(true) != f(false));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genCall
	ld	hl, #0x0000
	add	hl, sp
	push	hl
	call	_f
;	adjustStack by 2
	pop	af
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genCall
	ld	hl, #0x0008
	add	hl, sp
	push	hl
	call	_f
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00113$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00113$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00113$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00113$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00113$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00113$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00113$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -1 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
;	skipping generated iCode
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
;cases/./../tests/bug-2804.c:24: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testBug function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "f(true) != f(false)"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-2804.c"
	.db 0x00
;cases/tst_bug-2804.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2804.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-2804.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2804.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2804.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2804.c:15: return "bug-2804.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2804.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-2804.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
