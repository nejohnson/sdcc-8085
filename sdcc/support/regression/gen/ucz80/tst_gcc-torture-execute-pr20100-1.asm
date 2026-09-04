;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr20100_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _get_n
	.globl _frob
	.globl ___prints
	.globl ___fail
	.globl _e
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
_e::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g:
	.ds 2
_p:
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
;cases/./../tests/gcc-torture-execute-pr20100-1.c:20: next_g (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function next_g
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_next_g:
;cases/./../tests/gcc-torture-execute-pr20100-1.c:22: return g == e - 1 ? 0 : g + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_e)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genMinus
;fetchPairLong
	ld	l, a
	dec	hl
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_g)
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00103$:
;	genPlus
	inc	de
;	genLabel
; common peephole 159 removed unused label 00104$.
;	genCast
;	(locations are the same)
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:23: }
;	genEndFunction
	ret
;	Total next_g function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:26: curr_p (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function curr_p
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_curr_p:
;cases/./../tests/gcc-torture-execute-pr20100-1.c:28: return p;
;	genRet
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_p)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:29: }
;	genEndFunction
	ret
;	Total curr_p function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:32: inc_g (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function inc_g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_inc_g:
;cases/./../tests/gcc-torture-execute-pr20100-1.c:34: return g = next_g ();
;	genCall
	call	_next_g
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_g), de
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:35: }
;	genEndFunction
	ret
;	Total inc_g function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:38: curr_g (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function curr_g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_curr_g:
;cases/./../tests/gcc-torture-execute-pr20100-1.c:40: return g;
;	genRet
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_g)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:41: }
;	genEndFunction
	ret
;	Total curr_g function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:44: ring_empty (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function ring_empty
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_ring_empty:
;cases/./../tests/gcc-torture-execute-pr20100-1.c:46: if (curr_p () == curr_g ())
;	genCall
	call	_curr_p
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	push	de
	call	_curr_g
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00115$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20100-1.c:47: return 1;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
;cases/./../tests/gcc-torture-execute-pr20100-1.c:49: return 0;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00102$.
	xor	a, a
	sbc	hl, de
	ret	nz
; common peephole 161 replaced jump by return.
	inc	a
; common peephole 157d reused 0 in a.
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:50: }
;	genEndFunction
	ret
;	Total ring_empty function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:53: frob (unsigned short a, unsigned short b)
;	genLabel
;	genFunction
;	---------------------------------
; Function frob
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_frob::
;	genReceive
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_g), hl
;	genReceive
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_p), de
;cases/./../tests/gcc-torture-execute-pr20100-1.c:57: inc_g ();
;	genCall
	call	_inc_g
;cases/./../tests/gcc-torture-execute-pr20100-1.c:58: return ring_empty ();
;	genCall
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:59: }
;	genEndFunction
	jp	_ring_empty
; common peephole 152 removed unused ret.
;	Total frob function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:62: get_n (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function get_n
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_get_n::
;cases/./../tests/gcc-torture-execute-pr20100-1.c:66: org_g = curr_g ();
;	genCall
	call	_curr_g
;cases/./../tests/gcc-torture-execute-pr20100-1.c:67: while (!ring_empty () && n < 5)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00102$:
;	genCall
	push	de
	call	_ring_empty
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genIfx
	or	a, a
	ret	nz
; common peephole 161 replaced jump by return.
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, c
	sub	a, #0x05
	ld	a, b
	sbc	a, #0x00
	ret	nc
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20100-1.c:69: inc_g ();
;	genCall
	push	de
	call	_inc_g
	pop	de
;cases/./../tests/gcc-torture-execute-pr20100-1.c:70: n++;
;	genPlus
	inc	de
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:73: return n;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:74: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00102$
; common peephole 152 removed unused ret.
;	Total get_n function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:77: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr20100-1.c:79: e = 3;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_e
	ld	(hl), #0x03
;cases/./../tests/gcc-torture-execute-pr20100-1.c:80: if (frob (0, 2) != 0 || g != 1 || p != 2 || e != 3
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0002
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genCall
	call	_frob
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_g)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00159$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00160$.
;	skipping generated iCode
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_p)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00161$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00162$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20100-1.c:81: || get_n () != 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_e)
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00163$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00164$.
;	skipping generated iCode
;	genCall
	call	_get_n
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00165$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00166$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr20100-1.c:82: || g != 2 || p != 2)
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_g)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00167$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00168$.
;	skipping generated iCode
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_p)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00169$.
;	skipping generated iCode
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-pr20100-1.c:83: ASSERT (0);
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
	ld	hl, #0x0053
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
;cases/./../tests/gcc-torture-execute-pr20100-1.c:84: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00109$.
;cases/./../tests/gcc-torture-execute-pr20100-1.c:85: }
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
	.ascii "cases/./../tests/gcc-torture-execute-pr20100-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr20100-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr20100-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr20100-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr20100-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr20100-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr20100-1.c:15: return "gcc-torture-execute-pr20100-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr20100-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr20100-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__g:
	.dw #0x0000
__xinit__p:
	.dw #0x0000
	.area _CABS (ABS)
