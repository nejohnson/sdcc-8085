;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20000422_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl ___fail
	.globl _num
	.globl _correct
	.globl _ops
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
_ops::
	.ds 26
_correct::
	.ds 26
_num::
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
;cases/./../tests/gcc-torture-execute-20000422-1.c:26: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 12 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -12
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-20000422-1.c:31: for (i = 0; i < num; i++)
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;	genLabel
00112$:
;	genCmpLt
;	Shift into pair
	ld	hl, #_num
	ld	a, -4 (ix)
	sub	a, (hl)
	ld	a, -3 (ix)
	inc	hl
	sbc	a, (hl)
	jp	po, 00186$
	xor	a, #0x80
00186$:
	jp	p, 00104$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20000422-1.c:35: for (j = num - 1; j > i; j--)
;	genMinus
	ld	a, (_num+0)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, (_num+1)
	adc	a, #0xff
	ld	-1 (ix), a
;	genLabel
00109$:
;	genCmpGt
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jp	po, 00187$
	xor	a, #0x80
00187$:
	jp	p, 00113$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20000422-1.c:37: if (ops[j-1] < ops[j])
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	dec	l
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	rlca
	sbc	a, a
	ld	h, a
;	genLeftShift
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	add	a, #<(_ops)
	ld	-12 (ix), a
	ld	a, h
	adc	a, #>(_ops)
	ld	-11 (ix), a
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-9 (ix), a
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	ld	a, #<(_ops)
	add	a, l
	ld	-8 (ix), a
	ld	a, #>(_ops)
	adc	a, h
	ld	-7 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCmpLt
	ld	a, -10 (ix)
	sub	a, c
	ld	a, -9 (ix)
	sbc	a, b
	jp	po, 00188$
	xor	a, #0x80
00188$:
	jp	p, 00110$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20000422-1.c:39: int op = ops[j];
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), c
	ld	-5 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20000422-1.c:40: ops[j] = ops[j-1];
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-20000422-1.c:41: ops[j-1] = op;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;	genLabel
00110$:
;cases/./../tests/gcc-torture-execute-20000422-1.c:35: for (j = num - 1; j > i; j--)
;	genMinus
;fetchPairLong
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	dec	hl
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genGoto
	jp	00109$
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-20000422-1.c:31: for (i = 0; i < num; i++)
;	genPlus
	inc	-4 (ix)
	jp	nz, 00112$
; common peephole 84 jumped to 00112$ directly instead of via 00189$.
	inc	-3 (ix)
; common peephole 159 removed unused label 00189$.
;	genGoto
	jp	00112$
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-20000422-1.c:47: for (i = 0; i < num; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00115$:
;	genCmpLt
;	Shift into pair
	ld	hl, #_num
	ld	a, c
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, b
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jp	po, 00190$
	xor	a, #0x80
00190$:
	jp	p, 00107$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20000422-1.c:48: if (ops[i] != correct[i])
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_ops
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-1 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_correct
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genCmpEq
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00191$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20000422-1.c:49: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0031
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
	pop	bc
;	genLabel
00116$:
;cases/./../tests/gcc-torture-execute-20000422-1.c:47: for (i = 0; i < num; i++)
;	genPlus
	inc	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-20000422-1.c:51: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00117$.
;cases/./../tests/gcc-torture-execute-20000422-1.c:53: }
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
	.ascii "cases/./../tests/gcc-torture-execute-20000422-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20000422-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20000422-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20000422-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20000422-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20000422-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20000422-1.c:15: return "gcc-torture-execute-20000422-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20000422-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-20000422-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__ops:
	.dw #0x000b
	.dw #0x000c
	.dw #0x002e
	.dw #0x0003
	.dw #0x0002
	.dw #0x0002
	.dw #0x0003
	.dw #0x0002
	.dw #0x0001
	.dw #0x0003
	.dw #0x0002
	.dw #0x0001
	.dw #0x0002
__xinit__correct:
	.dw #0x002e
	.dw #0x000c
	.dw #0x000b
	.dw #0x0003
	.dw #0x0003
	.dw #0x0003
	.dw #0x0002
	.dw #0x0002
	.dw #0x0002
	.dw #0x0002
	.dw #0x0002
	.dw #0x0001
	.dw #0x0001
__xinit__num:
	.dw #0x000d
	.area _CABS (ABS)
