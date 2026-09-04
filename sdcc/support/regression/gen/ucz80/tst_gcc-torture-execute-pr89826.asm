;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr89826
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _foo
	.globl ___prints
	.globl ___fail
	.globl _b
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
_b::
	.ds 2
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
;cases/./../tests/gcc-torture-execute-pr89826.c:13: foo (u32 d)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_foo::
;	adjustStack by -8
	ld	iy, #-8
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr89826.c:15: a -= d ? 0 : ~a;
;	genIfx
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;	genAssign
;	genMove_o size 8 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
	ld	4 (iy), a
	ld	5 (iy), a
	ld	6 (iy), a
	ld	7 (iy), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	genXor
	ld	a, (_a+0)
	cpl
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a+1)
	cpl
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	1 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a+2)
	cpl
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	2 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a+3)
	cpl
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	3 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a+4)
	cpl
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	4 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a+5)
	cpl
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	5 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a+6)
	cpl
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a+7)
	cpl
;	genMove_o size 1 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	7 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00104$:
;	genMinus
;	Shift into pair
	ld	hl, #0
	add	hl, sp
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_a
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (de)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	(de), a
	pop	de
;cases/./../tests/gcc-torture-execute-pr89826.c:16: return a + b;
;	genCast
;	genMove_o size 2 result type 12 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_b+0)
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
	ld	a, (_b+1)
	ld	1 (iy), a
;	genMove_o size 6 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	2 (iy), a
	ld	3 (iy), a
	ld	4 (iy), a
	ld	5 (iy), a
	ld	6 (iy), a
	ld	7 (iy), a
;	genPlus
;	Shift into pair
	ld	hl, #0
	add	hl, sp
;	Shift into pair
	push	de
	push	iy
	pop	de
	ld	a, (_a+0)
	add	a, (hl)
; common peephole 96b move inc hl before ld a, (_a+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_a+1)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_a+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_a+2)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_a+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_a+3)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_a+4)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_a+4)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_a+5)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_a+5)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_a+6)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_a+6)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_a+7)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_a+7)
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
;cases/./../tests/gcc-torture-execute-pr89826.c:17: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total foo function size at codegen: 13 bytes.
;cases/./../tests/gcc-torture-execute-pr89826.c:20: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-pr89826.c:22: u64 x = foo (2);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	ld	hl, #0x0002
	push	hl
; common peephole 94d pushed register pair twice.
	add	hl, sp
; common peephole 156 used ex to load hl into de.
	ex	de, hl
	pop	hl
	push	de
	call	_foo
;	adjustStack by 2
	pop	af
;cases/./../tests/gcc-torture-execute-pr89826.c:23: if (x != 0)
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
	jr	z, 00102$
;cases/./../tests/gcc-torture-execute-pr89826.c:24: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0018
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr89826.c:25: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-pr89826.c:26: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 5 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr89826.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr89826.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr89826.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr89826.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr89826.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr89826.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr89826.c:15: return "gcc-torture-execute-pr89826.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr89826.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr89826.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
