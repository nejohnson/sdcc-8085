;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_longlong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _alpha_ep_extbl_i_eq_0
	.globl ___prints
	.globl ___fail
	.globl _r
	.globl _b
	.globl _pars
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
_pars::
	.ds 4
_b::
	.ds 256
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_r::
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
;cases/./../tests/gcc-torture-execute-longlong.c:16: void alpha_ep_extbl_i_eq_0()
;	genLabel
;	genFunction
;	---------------------------------
; Function alpha_ep_extbl_i_eq_0
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 19 bytes.
_alpha_ep_extbl_i_eq_0::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -19
	ld	hl, #-19
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-longlong.c:20: rb  = (((unsigned long)(pars) >> 27)) & 0x1fUL;
;	genRightShift
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_pars + 3)
	ld	e, a
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 6b removed dead xor a, a
; common peephole 1 removed dead load from a into c.
	ld	b, #0x03
00113$:
	srl	e
; common peephole 159 removed unused label 00114$.
	djnz	00113$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	ld	a, e
	and	a, #0x1f
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;cases/./../tests/gcc-torture-execute-longlong.c:21: ra  = (((unsigned int)(pars) >> 5)) & 0x1fUL;
;	genCast
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_pars)
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
	ld	c, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	srl	c
	rr	a
	srl	c
	rr	a
	srl	c
	rr	a
	srl	c
	rr	a
	srl	c
	rr	a
;	genAnd
	and	a, #0x1f
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;cases/./../tests/gcc-torture-execute-longlong.c:22: rc  = (((unsigned int)(pars) >> 0)) & 0x1fUL;
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genAnd
	and	a, #0x1f
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, #0x00
;cases/./../tests/gcc-torture-execute-longlong.c:24: uint64 temp = ((r[ra] >> ((r[rb] & 0x7) << 3)) & 0x00000000000000FFLL); 
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_r)
	add	hl, de
;	genPointerGet
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	bc
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_r)
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genAnd
	and	a, #0x07
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
	add	a, a
	add	a, a
	add	a, a
;	genRightShift
;	genMove_o size 8 result type 6 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	-19 (ix), l
	ld	l, -9 (ix)
	ld	-18 (ix), l
	ld	l, -8 (ix)
	ld	-17 (ix), l
	ld	l, -7 (ix)
	ld	-16 (ix), l
	ld	l, -6 (ix)
	ld	-15 (ix), l
	ld	l, -5 (ix)
	ld	-14 (ix), l
	ld	l, -4 (ix)
	ld	-13 (ix), l
	ld	l, -3 (ix)
	ld	-12 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	srl	a
	srl	a
	srl	a
	inc	a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
00115$:
;	genMove_o size 8 result type 6 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -18 (ix)
	ld	-19 (ix), l
	ld	l, -17 (ix)
	ld	-18 (ix), l
	ld	l, -16 (ix)
	ld	-17 (ix), l
	ld	l, -15 (ix)
	ld	-16 (ix), l
	ld	l, -14 (ix)
	ld	-15 (ix), l
	ld	l, -13 (ix)
	ld	-14 (ix), l
	ld	l, -12 (ix)
	ld	-13 (ix), l
;	genMove_o size 1 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-12 (ix), #0x00
00116$:
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00115$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -19 (ix)
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;cases/./../tests/gcc-torture-execute-longlong.c:25: if (rc != 31) 
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x1f
	or	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00117$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-longlong.c:26: r[rc] = temp;  
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_r)
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #11
	add	hl, sp
	ld	bc, #0x0008
	ldir
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-longlong.c:28: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total alpha_ep_extbl_i_eq_0 function size at codegen: 13 bytes.
;cases/./../tests/gcc-torture-execute-longlong.c:32: testTortureExecute (void)
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
;cases/./../tests/gcc-torture-execute-longlong.c:37: b[17] = 0x0000000000303882ULL; /* rb */
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_b + 136)
	ld	(hl), #0x82
	inc	hl
	ld	(hl), #0x38
	inc	hl
	ld	(hl), #0x30
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-longlong.c:38: b[2] = 0x534f4f4c494d000aULL; /* ra & rc */
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_b + 16)
	ld	(hl), #0x0a
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x4d
	inc	hl
	ld	(hl), #0x49
	inc	hl
	ld	(hl), #0x4c
	inc	hl
	ld	(hl), #0x4f
	inc	hl
	ld	(hl), #0x4f
	inc	hl
	ld	(hl), #0x53
;cases/./../tests/gcc-torture-execute-longlong.c:40: pars = 0x88000042;	/* 17, 2, 2 coded */
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_pars
	ld	0 (iy), #0x42
	xor	a, a
	ld	(_pars+1), a
	ld	(_pars+2), a
	ld	3 (iy), #0x88
;cases/./../tests/gcc-torture-execute-longlong.c:41: alpha_ep_extbl_i_eq_0();
;	genCall
	call	_alpha_ep_extbl_i_eq_0
;cases/./../tests/gcc-torture-execute-longlong.c:43: if (b[2] != 0x4d)
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #(_b + 16)
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x4d
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00115$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-longlong.c:44: ASSERT (0);
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
	ld	hl, #0x002c
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
00104$:
;cases/./../tests/gcc-torture-execute-longlong.c:47: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/gcc-torture-execute-longlong.c:48: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 9 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-longlong.c"
	.db 0x00
;cases/tst_gcc-torture-execute-longlong.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-longlong.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-longlong.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-longlong.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-longlong.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-longlong.c:15: return "gcc-torture-execute-longlong.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-longlong.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-longlong.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__r:
	.dw _b
	.area _CABS (ABS)
