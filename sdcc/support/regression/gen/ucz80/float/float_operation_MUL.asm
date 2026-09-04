;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module float_operation_MUL
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testFloatMulRound
	.globl _testFloatMath
	.globl _compare
	.globl ___prints
	.globl ___fail
	.globl _errors
	.globl _tests
	.globl _cases
	.globl _result
	.globl _right
	.globl _left
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
_left::
	.ds 4
_right::
	.ds 4
_result::
	.ds 4
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_cases::
	.ds 448
_tests::
	.ds 2
_errors::
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
;cases/float/float_operation_MUL.c:64: compare (float is, float should)
;	genLabel
;	genFunction
;	---------------------------------
; Function compare
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_compare::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/float/float_operation_MUL.c:66: float diff = should ? is / should : 0;
;	genIfx
	ld	a, 7 (ix)
	res	7, a
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a, 4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 6 (ix)
	ld	b, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 4 (ix)
	ld	b, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsdiv
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00109$:
;	genAssign
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
; common peephole 174a reused value still in bc.
	ld	d, b
	ld	e, c
;	genLabel
00110$:
;	genAssign
;	(locations are the same)
;cases/float/float_operation_MUL.c:67: tests++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_tests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_tests), hl
;cases/float/float_operation_MUL.c:70: if (should == 0)
;	genIfx
	ld	a, 7 (ix)
	res	7, a
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a, 4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/float/float_operation_MUL.c:73: return 0;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00102$:
;cases/float/float_operation_MUL.c:80: ASSERT (1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, (___numTests)
	inc	iy
;cases/float/float_operation_MUL.c:77: if (diff > 0.999999 && diff < 1.00001)
;	genIpush
	push	bc
	push	de
	push	iy
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0xffef
	ld	hl, #0x3f7f
;	genCall
	call	___fslt
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	iy
	pop	de
	pop	bc
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	genIpush
	push	iy
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 0
	ld	hl, #0x3f80
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 0
	ld	hl, #0x0054
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fslt
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	iy
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/float/float_operation_MUL.c:80: ASSERT (1);
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), iy
;cases/float/float_operation_MUL.c:81: return 0;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00104$:
;cases/float/float_operation_MUL.c:85: errors++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_errors)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_errors), hl
;cases/float/float_operation_MUL.c:87: ASSERT (0);
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), iy
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0057
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;cases/float/float_operation_MUL.c:88: return 1;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genLabel
00107$:
;cases/float/float_operation_MUL.c:90: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	bc
	pop	bc
	jp	(hl)
;	Total compare function size at codegen: 6 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/float/float_operation_MUL.c"
	.db 0x00
__str_3:
	.ascii "0"
	.db 0x00
;cases/float/float_operation_MUL.c:94: testFloatMath (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFloatMath
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_testFloatMath::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -5
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;cases/float/float_operation_MUL.c:101: for (i = 0; i < t; i++)
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00103$:
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00105$
;	skipping generated iCode
;cases/float/float_operation_MUL.c:118: result = cases[i].left * cases[i].right;
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMult
;fetchPairLong
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 140 removed ex exploiting commutativity of addition.
	ld	de, #_cases
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #4
	add	hl, de
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	h, (hl)
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/float/float_operation_MUL.c:120: compare (result, cases[i].mul);
;	genCall
	call	___fsmul
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genAssign
;	(locations are the same)
;	genPointerGet
	ld	hl, #16
	add	hl, bc
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	h, (hl)
;	genIpush
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 0
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 0
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	iy
	pop	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_compare
;cases/float/float_operation_MUL.c:101: for (i = 0; i < t; i++)
;	genPlus
	inc	-1 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00105$:
;cases/float/float_operation_MUL.c:137: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testFloatMath function size at codegen: 9 bytes.
;cases/float/float_operation_MUL.c:140: testFloatMulRound (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFloatMulRound
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testFloatMulRound::
;cases/float/float_operation_MUL.c:143: right = 2.0 / 10.61;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_right
	ld	0 (iy), #0x84
	ld	1 (iy), #0x06
	ld	2 (iy), #0x41
	ld	3 (iy), #0x3e
;cases/float/float_operation_MUL.c:144: result = 10.61 * right;
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_right + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_right)
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xc28f
	ld	hl, #0x4129
;	genCall
	call	___fsmul
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_result), de
	ld	(_result + 2), hl
;cases/float/float_operation_MUL.c:145: compare (result, 2.0);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x4000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_result)
	ld	hl, (_result + 2)
;	genCall
	call	_compare
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/float/float_operation_MUL.c:147: }
;	genEndFunction
	ret
;	Total testFloatMulRound function size at codegen: 1 bytes.
;cases/float/float_operation_MUL.c:160: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/float/float_operation_MUL.c:162: __prints("Running testFloatMath\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/float/float_operation_MUL.c:163: testFloatMath();
;	genCall
	call	_testFloatMath
;cases/float/float_operation_MUL.c:164: __prints("Running testFloatMulRound\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;cases/float/float_operation_MUL.c:165: testFloatMulRound();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/float/float_operation_MUL.c:166: }
;	genEndFunction
	jp	_testFloatMulRound
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testFloatMath"
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "Running testFloatMulRound"
	.db 0x0a
	.db 0x00
;cases/float/float_operation_MUL.c:171: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/float/float_operation_MUL.c:173: return "float_operation_MUL";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/float/float_operation_MUL.c:174: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_6:
	.ascii "float_operation_MUL"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__cases:
	.byte #0xcd, #0xcc, #0x4c, #0x41	;  1.280000e+01
	.byte #0xcd, #0xcc, #0xcc, #0x41	;  2.560000e+01
	.byte #0x9a, #0x99, #0x19, #0x42	;  3.840000e+01
	.byte #0xcd, #0xcc, #0x4c, #0xc1	; -1.280000e+01
	.byte #0x0a, #0xd7, #0xa3, #0x43	;  3.276800e+02
	.byte #0x00, #0x00, #0x00, #0x3f	;  5.000000e-01
	.byte #0x00, #0x00, #0x00, #0x40	;  2.000000e+00
	.byte #0xcd, #0xcc, #0x4c, #0x41	;  1.280000e+01
	.byte #0xcd, #0xcc, #0xcc, #0xc1	; -2.560000e+01
	.byte #0xcd, #0xcc, #0x4c, #0xc1	; -1.280000e+01
	.byte #0x9a, #0x99, #0x19, #0x42	;  3.840000e+01
	.byte #0x0a, #0xd7, #0xa3, #0xc3	; -3.276800e+02
	.byte #0x00, #0x00, #0x00, #0xbf	; -5.000000e-01
	.byte #0x00, #0x00, #0x00, #0xc0	; -2.000000e+00
	.byte #0xcd, #0xcc, #0x4c, #0xc1	; -1.280000e+01
	.byte #0xcd, #0xcc, #0xcc, #0x41	;  2.560000e+01
	.byte #0xcd, #0xcc, #0x4c, #0x41	;  1.280000e+01
	.byte #0x9a, #0x99, #0x19, #0xc2	; -3.840000e+01
	.byte #0x0a, #0xd7, #0xa3, #0xc3	; -3.276800e+02
	.byte #0x00, #0x00, #0x00, #0xbf	; -5.000000e-01
	.byte #0x00, #0x00, #0x00, #0xc0	; -2.000000e+00
	.byte #0xcd, #0xcc, #0x4c, #0xc1	; -1.280000e+01
	.byte #0xcd, #0xcc, #0xcc, #0xc1	; -2.560000e+01
	.byte #0x9a, #0x99, #0x19, #0xc2	; -3.840000e+01
	.byte #0xcd, #0xcc, #0x4c, #0x41	;  1.280000e+01
	.byte #0x0a, #0xd7, #0xa3, #0x43	;  3.276800e+02
	.byte #0x00, #0x00, #0x00, #0x3f	;  5.000000e-01
	.byte #0x00, #0x00, #0x00, #0x40	;  2.000000e+00
	.byte #0x00, #0x00, #0xc8, #0x42	;  1.000000e+02
	.byte #0x00, #0x00, #0x20, #0x41	;  1.000000e+01
	.byte #0x00, #0x00, #0xdc, #0x42	;  1.100000e+02
	.byte #0x00, #0x00, #0xb4, #0x42	;  9.000000e+01
	.byte #0x00, #0x00, #0x7a, #0x44	;  1.000000e+03
	.byte #0x00, #0x00, #0x20, #0x41	;  1.000000e+01
	.byte #0xcd, #0xcc, #0xcc, #0x3d	;  1.000000e-01
	.byte #0x00, #0x00, #0x7a, #0x44	;  1.000000e+03
	.byte #0x00, #0x00, #0x20, #0x41	;  1.000000e+01
	.byte #0x00, #0x80, #0x7c, #0x44	;  1.010000e+03
	.byte #0x00, #0x80, #0x77, #0x44	;  9.900000e+02
	.byte #0x00, #0x40, #0x1c, #0x46	;  1.000000e+04
	.byte #0x00, #0x00, #0xc8, #0x42	;  1.000000e+02
	.byte #0x0a, #0xd7, #0x23, #0x3c	;  1.000000e-02
	.byte #0x00, #0x40, #0x1c, #0x46	;  1.000000e+04
	.byte #0x00, #0x00, #0x20, #0x41	;  1.000000e+01
	.byte #0x00, #0x68, #0x1c, #0x46	;  1.001000e+04
	.byte #0x00, #0x18, #0x1c, #0x46	;  9.990000e+03
	.byte #0x00, #0x50, #0xc3, #0x47	;  1.000000e+05
	.byte #0x00, #0x00, #0x7a, #0x44	;  1.000000e+03
	.byte #0x6f, #0x12, #0x83, #0x3a	;  1.000000e-03
	.byte #0x00, #0x50, #0xc3, #0x47	;  1.000000e+05
	.byte #0x00, #0x00, #0x20, #0x41	;  1.000000e+01
	.byte #0x00, #0x55, #0xc3, #0x47	;  1.000100e+05
	.byte #0x00, #0x4b, #0xc3, #0x47	;  9.999000e+04
	.byte #0x00, #0x24, #0x74, #0x49	;  1.000000e+06
	.byte #0x00, #0x40, #0x1c, #0x46	;  1.000000e+04
	.byte #0x17, #0xb7, #0xd1, #0x38	;  1.000000e-04
	.byte #0x00, #0x24, #0x74, #0x49	;  1.000000e+06
	.byte #0x00, #0x00, #0x20, #0x41	;  1.000000e+01
	.byte #0xa0, #0x24, #0x74, #0x49	;  1.000010e+06
	.byte #0x60, #0x23, #0x74, #0x49	;  9.999900e+05
	.byte #0x80, #0x96, #0x18, #0x4b	;  1.000000e+07
	.byte #0x00, #0x50, #0xc3, #0x47	;  1.000000e+05
	.byte #0xac, #0xc5, #0x27, #0x37	;  1.000000e-05
	.byte #0x80, #0x96, #0x18, #0x4b	;  1.000000e+07
	.byte #0x00, #0x00, #0x20, #0x41	;  1.000000e+01
	.byte #0x8a, #0x96, #0x18, #0x4b	;  1.000001e+07
	.byte #0x76, #0x96, #0x18, #0x4b	;  9.999990e+06
	.byte #0x20, #0xbc, #0xbe, #0x4c	;  1.000000e+08
	.byte #0x00, #0x24, #0x74, #0x49	;  1.000000e+06
	.byte #0xbd, #0x37, #0x86, #0x35	;  1.000000e-06
	.byte #0x00, #0x00, #0x80, #0x43	;  2.560000e+02
	.byte #0x00, #0x00, #0x80, #0x41	;  1.600000e+01
	.byte #0x00, #0x00, #0x88, #0x43	;  2.720000e+02
	.byte #0x00, #0x00, #0x70, #0x43	;  2.400000e+02
	.byte #0x00, #0x00, #0x80, #0x45	;  4.096000e+03
	.byte #0x00, #0x00, #0x80, #0x41	;  1.600000e+01
	.byte #0x00, #0x00, #0x80, #0x3d	;  6.250000e-02
	.byte #0x00, #0x00, #0x80, #0x45	;  4.096000e+03
	.byte #0x00, #0x00, #0x80, #0x41	;  1.600000e+01
	.byte #0x00, #0x80, #0x80, #0x45	;  4.112000e+03
	.byte #0x00, #0x00, #0x7f, #0x45	;  4.080000e+03
	.byte #0x00, #0x00, #0x80, #0x47	;  6.553600e+04
	.byte #0x00, #0x00, #0x80, #0x43	;  2.560000e+02
	.byte #0x00, #0x00, #0x80, #0x3b	;  3.906250e-03
	.byte #0x00, #0x00, #0x80, #0x47	;  6.553600e+04
	.byte #0x00, #0x00, #0x80, #0x41	;  1.600000e+01
	.byte #0x00, #0x08, #0x80, #0x47	;  6.555200e+04
	.byte #0x00, #0xf0, #0x7f, #0x47	;  6.552000e+04
	.byte #0x00, #0x00, #0x80, #0x49	;  1.048576e+06
	.byte #0x00, #0x00, #0x80, #0x45	;  4.096000e+03
	.byte #0xd5, #0xff, #0x7f, #0x39	;  2.441400e-04
	.byte #0x00, #0x00, #0x80, #0x49	;  1.048576e+06
	.byte #0x00, #0x00, #0x80, #0x41	;  1.600000e+01
	.byte #0x80, #0x00, #0x80, #0x49	;  1.048592e+06
	.byte #0x00, #0xff, #0x7f, #0x49	;  1.048560e+06
	.byte #0x00, #0x00, #0x80, #0x4b	;  1.677722e+07
	.byte #0x00, #0x00, #0x80, #0x47	;  6.553600e+04
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0x00, #0x00, #0x80, #0x4b	;  1.677722e+07
	.byte #0x00, #0x00, #0x80, #0x41	;  1.600000e+01
	.byte #0x08, #0x00, #0x80, #0x4b	;  1.677723e+07
	.byte #0xf0, #0xff, #0x7f, #0x4b	;  1.677720e+07
	.byte #0x00, #0x00, #0x80, #0x4d	;  2.684355e+08
	.byte #0x00, #0x00, #0x80, #0x49	;  1.048576e+06
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0x00, #0x00, #0x80, #0x4d	;  2.684355e+08
	.byte #0x00, #0x00, #0x80, #0x41	;  1.600000e+01
	.byte #0x00, #0x00, #0x80, #0x4d	;  2.684355e+08
	.byte #0xff, #0xff, #0x7f, #0x4d	;  2.684354e+08
	.byte #0x00, #0x00, #0x80, #0x4f	;  4.294967e+09
	.byte #0x00, #0x00, #0x80, #0x4b	;  1.677722e+07
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
__xinit__tests:
	.dw #0x0000
__xinit__errors:
	.dw #0x0000
	.area _CABS (ABS)
