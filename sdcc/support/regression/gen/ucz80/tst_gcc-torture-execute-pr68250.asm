;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr68250
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _fn2
	.globl _fn1
	.globl ___prints
	.globl ___fail
	.globl _q
	.globl _j
	.globl _g
	.globl _f
	.globl _e
	.globl _n
	.globl _d
	.globl _c
	.globl _o
	.globl _m
	.globl _l
	.globl _k
	.globl _h
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
	.ds 1
_b::
	.ds 1
_h::
	.ds 1
_k::
	.ds 1
_l::
	.ds 1
_m::
	.ds 1
_o::
	.ds 1
_c::
	.ds 2
_d::
	.ds 2
_n::
	.ds 2
_e::
	.ds 2
_f::
	.ds 2
_g::
	.ds 2
_j::
	.ds 2
_q::
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
;cases/./../tests/gcc-torture-execute-pr68250.c:18: fn1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function fn1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_fn1::
;cases/./../tests/gcc-torture-execute-pr68250.c:20: int p = b || a;
;	genIfx
	ld	a, (_b+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
;	genIfx
	ld	a, (_a+0)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
	ld	c, a
; common peephole 121a replaced constant #0x00 by a (which has just been tested to be #0x00).
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00112$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x01
;	genLabel
00113$:
;	genCast
;	(locations are the same)
;cases/./../tests/gcc-torture-execute-pr68250.c:21: n = o > 0 || d > 1 >> o ? d : d << o;
;	genCmpGt
	xor	a, a
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_o
	sub	a, (hl)
	jp	po, 00206$
	xor	a, #0x80
00206$:
	jp	m, 00117$
;	skipping generated iCode
;	genRightShift
; common peephole 53 used direct memory load instead of indirect.
	ld	a, (#_o + 0)
	ld	b, a
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00208$
00207$:
	sra	d
	rr	e
00208$:
	djnz	00207$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_d)
;	genCmpGt
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	po, 00209$
	xor	a, #0x80
00209$:
	jp	p, 00114$
;	skipping generated iCode
;	genLabel
00117$:
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_d)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00114$:
;	genLeftShift
; common peephole 53 used direct memory load instead of indirect.
	ld	a, (#_o + 0)
	ld	b, a
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_d)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00211$
00210$:
	add	hl, hl
00211$:
	djnz	00210$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00115$:
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_n), hl
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-pr68250.c:22: for (; j; j++)
;	genIfx
	ld	a, (_j+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
;cases/./../tests/gcc-torture-execute-pr68250.c:23: m = c < 0 || m || c << p;
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_c)
;	genCmpLt
	bit	7, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00120$
;	skipping generated iCode
;	genIfx
	ld	a, (_m+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00120$
;	genLeftShift
	ld	b, c
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_c)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00213$
00212$:
	add	hl, hl
00213$:
	djnz	00212$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, h
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a,l
; common peephole 154a removed redundant zeroing of a (which has just been tested to be #0x00).
;	genGoto
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00121$
; common peephole 81 removed jp by using inverse jump logic
00120$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genLabel
00121$:
;	genCast
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_m), a
; common peephole 19 loaded (#_m) from a directly instead of using hl.
;cases/./../tests/gcc-torture-execute-pr68250.c:22: for (; j; j++)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_j)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_j), hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-pr68250.c:24: l = f + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_f)
;	genPlus
	inc	a
	ld	(#_l), a
; common peephole 19 loaded (#_l) from a directly instead of using hl.
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-pr68250.c:25: for (; f < 1; f = 1)
;	genCmpLt
	ld	a, (_f+0)
	sub	a, #0x01
	ld	a, (_f+1)
	rla
	ccf
	rra
	sbc	a, #0x80
	ret	nc
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr68250.c:26: k = h + 1;
;	genPlus
	ld	a, (_h+0)
	inc	a
	ld	(#_k), a
; common peephole 19 loaded (#_k) from a directly instead of using hl.
;cases/./../tests/gcc-torture-execute-pr68250.c:25: for (; f < 1; f = 1)
;	genAssign
;fetchPairLong
	ld	hl, #0x0001
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_f), hl
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00109$.
;cases/./../tests/gcc-torture-execute-pr68250.c:27: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
; common peephole 152 removed unused ret.
;	Total fn1 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr68250.c:30: fn2 (int k)
;	genLabel
;	genFunction
;	---------------------------------
; Function fn2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_fn2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr68250.c:32: ASSERT (k == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, d
	ret	z
; common peephole 161 replaced jump by return.
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr68250.c:33: }
;	genEndFunction
	ret
;	Total fn2 function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "k == 1"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr68250.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-pr68250.c:36: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr68250.c:47: fn2 (k);
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-pr68250.c:39: for (; e < 1; e++)
;	genCmpLt
	ld	a, (_e+0)
	sub	a, #0x01
	ld	a, (_e+1)
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00105$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr68250.c:41: fn1 ();
;	genCall
	push	bc
	call	_fn1
	pop	bc
;cases/./../tests/gcc-torture-execute-pr68250.c:42: if (k)
;	genIfx
	ld	a, (_k+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/gcc-torture-execute-pr68250.c:43: i = k;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_k)
	ld	c, a
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr68250.c:44: if (i > q)
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
	rlca
	sbc	a, a
	ld	e, a
;	genCmpGt
;	Shift into pair
	ld	hl, #_q
	ld	a, (hl)
; common peephole 96b move inc hl before sub a, b
	inc	hl
	sub	a, b
	ld	a, (hl)
	sbc	a, e
	jp	po, 00143$
	xor	a, #0x80
00143$:
	jp	p, 00108$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr68250.c:45: g = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_g), hl
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-pr68250.c:39: for (; e < 1; e++)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_e)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_e), hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-pr68250.c:47: fn2 (k);
;	genCast
;	genMove_o size 0 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_k)
	ld	l, a
	rlca
	sbc	a, a
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;cases/./../tests/gcc-torture-execute-pr68250.c:48: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00109$.
;cases/./../tests/gcc-torture-execute-pr68250.c:49: }
;	genEndFunction
	jp	_fn2
; common peephole 152 removed unused ret.
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-pr68250.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr68250.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr68250.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr68250.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr68250.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr68250.c:15: return "gcc-torture-execute-pr68250.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr68250.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr68250.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
