;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr83383
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _foo
	.globl ___prints
	.globl ___fail
	.globl _g
	.globl _f
	.globl _e
	.globl _d
	.globl _c
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
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_a::
	.ds 8
_b::
	.ds 1
_c::
	.ds 8
_d::
	.ds 1
_e::
	.ds 16
_f::
	.ds 16
_g::
	.ds 8
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
;cases/./../tests/gcc-torture-execute-pr83383.c:19: foo ()
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 16 bytes.
_foo::
;	adjustStack by -16
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-pr83383.c:21: a = ((signed char) a) < b;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a)
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_b)
	ld	e, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genCmpLt
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	po, 00123$
	xor	a, #0x80
00123$:
	rlca
	and	a, #0x01
; common peephole 109 replaced zero load, rla by and since rlca writes the same value to carry bit and least significant bit.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_a+0), a
;	genMove_o size 7 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_a+1), a
	ld	(_a+2), a
	ld	(_a+3), a
	ld	(_a+4), a
	ld	(_a+5), a
	ld	(_a+6), a
	ld	(_a+7), a
;cases/./../tests/gcc-torture-execute-pr83383.c:22: c = (d ? e[0] : 0) - (f[1] * a ? 1 : g);
;	genIfx
	ld	a, (_d+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #_e
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
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
;	genLabel
00104$:
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_f + 8)
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_a + 6)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_a + 4)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_a + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_a)
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #16
	add	iy, sp
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x0018
	add	hl, sp
	push	hl
	call	__mullonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genIfx
	ld	iy, #8
	add	iy, sp
	ld	a, 7 (iy)
	or	a, 6 (iy)
	or	a, 5 (iy)
	or	a, 4 (iy)
	or	a, 3 (iy)
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;	genAssign
;	genMove_o size 8 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	0 (iy), #0x01
	xor	a, a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
	ld	4 (iy), a
	ld	5 (iy), a
	ld	6 (iy), a
	ld	7 (iy), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	genAssign
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	hl, #_g
	ld	bc, #8
	ldir
;	genLabel
00106$:
;	genMinus
;	Shift into pair
	ld	hl, #8
	add	hl, sp
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_c
; common peephole 50b eliminated dead push/pop pair.
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	sub	a, (hl)
	ld	(de), a
	ld	a, 1 (iy)
	inc	hl
	sbc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 2 (iy)
	inc	hl
	sbc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 3 (iy)
	inc	hl
	sbc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 4 (iy)
	inc	hl
	sbc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 5 (iy)
	inc	hl
	sbc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 6 (iy)
	inc	hl
	sbc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 7 (iy)
	inc	hl
	sbc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr83383.c:23: }
;	genEndFunction
;	adjustStack by 16
	ld	hl, #16
	add	hl, sp
	ld	sp, hl
	ret
;	Total foo function size at codegen: 23 bytes.
;cases/./../tests/gcc-torture-execute-pr83383.c:27: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr83383.c:30: foo ();
;	genCall
	call	_foo
;cases/./../tests/gcc-torture-execute-pr83383.c:31: if (a != 1 || c != 3625445792498952485ULL)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a)
	dec	a
	ld	iy, #_a
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
	or	a, 4 (iy)
	or	a, 5 (iy)
	or	a, 6 (iy)
	or	a, 7 (iy)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00115$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c)
	sub	a, #0x25
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c + 1)
	sub	a, #0xa9
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c + 2)
	sub	a, #0x55
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c + 3)
	sub	a, #0x66
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c + 4)
	sub	a, #0xbd
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c + 5)
	sub	a, #0x2b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c + 6)
	sub	a, #0x50
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_c + 7)
	sub	a, #0x32
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00116$:
;	skipping generated iCode
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-pr83383.c:32: ASSERT (0);
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
	ld	hl, #0x0020
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
; common peephole 159 removed unused label 00102$.
;cases/./../tests/gcc-torture-execute-pr83383.c:33: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-pr83383.c:35: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr83383.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr83383.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr83383.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr83383.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr83383.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr83383.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr83383.c:15: return "gcc-torture-execute-pr83383.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr83383.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr83383.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__a:
	.byte #0x10, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
__xinit__b:
	.db #0xc3	; 195
__xinit__c:
	.byte #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff, #0xff
__xinit__d:
	.db #0x01	; 1
__xinit__e:
	.byte #0x26, #0xa9, #0x55, #0x66, #0xbd, #0x2b, #0x50, #0x32
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
__xinit__f:
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
	.byte #0x47, #0xa5, #0xf9, #0x9f, #0xe7, #0x43, #0xb1, #0x7c
__xinit__g:
	.byte #0xc0, #0xf6, #0xf0, #0x4b, #0xb4, #0xc4, #0x1d, #0x46
	.area _CABS (ABS)
