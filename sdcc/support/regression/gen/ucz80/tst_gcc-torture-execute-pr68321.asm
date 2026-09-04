;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr68321
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _fn1
	.globl ___prints
	.globl ___fail
	.globl _u
	.globl _e
	.globl _t
	.globl _n
	.globl _m
	.globl _b
	.globl _a
	.globl _k
	.globl _i
	.globl _t5
	.globl _t2
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
_t2::
	.ds 2
_t5::
	.ds 2
_i::
	.ds 2
_k::
	.ds 2
_a::
	.ds 2
_b::
	.ds 2
_m::
	.ds 2
_n::
	.ds 1
_t::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_e::
	.ds 2
_u::
	.ds 2
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
;cases/./../tests/gcc-torture-execute-pr68321.c:18: fn1 (int p1)
;	genLabel
;	genFunction
;	---------------------------------
; Function fn1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_fn1::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	ld	a, l
	and	a, #0x04
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0003
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__divsint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genLabel
00110$:
;cases/./../tests/gcc-torture-execute-pr68321.c:23: if (p1 / 3)
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-pr68321.c:24: for (; t5;)
;	genIfx
	ld	a, (_t5+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_t5
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;cases/./../tests/gcc-torture-execute-pr68321.c:25: u || n;
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-pr68321.c:26: t2 = p1 & 4;
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_t2), bc
;cases/./../tests/gcc-torture-execute-pr68321.c:27: if (b + 1)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_b)
	inc	hl
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;cases/./../tests/gcc-torture-execute-pr68321.c:28: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-pr68321.c:29: u = g[0];
;	genPointerGet
;	genMove_o size 2 result type 10 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	(_u+0), a
	ld	a, -1 (ix)
	ld	(_u+1), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00112$:
;cases/./../tests/gcc-torture-execute-pr68321.c:31: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total fn1 function size at codegen: 5 bytes.
;cases/./../tests/gcc-torture-execute-pr68321.c:34: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr68321.c:44: ASSERT (a[t2] == 0);
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-pr68321.c:36: for (; e >= 0; e--)
;	genCmpLt
	ld	a, (_e+1)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr68321.c:39: if (!m)
;	genIfx
	ld	a, (_m+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_m
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/gcc-torture-execute-pr68321.c:40: c = t;
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_t)
	ld	c, a
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr68321.c:41: fn1 (c);
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_fn1
	pop	bc
;cases/./../tests/gcc-torture-execute-pr68321.c:36: for (; e >= 0; e--)
;	genMinus
;fetchPairLong
	ld	hl, (_e)
	dec	hl
	ld	(_e), hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-pr68321.c:44: ASSERT (a[t2] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAddrOf
	ld	bc, #_a+0
;	genLeftShift
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_t2)
	add	hl, hl
;	genPlus
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
;	_moveFrom_tpair_()
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through b.
	ld	a, (hl)
	inc	hl
; common peephole 99a removed load by reordering or arguments.
	or	a, (hl)
	ret	z
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002c
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
; common peephole 159 removed unused label 00110$.
;cases/./../tests/gcc-torture-execute-pr68321.c:46: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/gcc-torture-execute-pr68321.c:47: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "a[t2] == 0"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr68321.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr68321.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr68321.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr68321.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr68321.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr68321.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr68321.c:15: return "gcc-torture-execute-pr68321.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr68321.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr68321.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__e:
	.dw #0x0001
__xinit__u:
	.dw #0x0005
	.area _CABS (ABS)
