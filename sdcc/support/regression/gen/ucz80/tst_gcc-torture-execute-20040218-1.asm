;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20040218_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _xb
	.globl _xw
	.globl _yb
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
;cases/./../tests/gcc-torture-execute-20040218-1.c:19: long int xb (long int *y)
;	genLabel
;	genFunction
;	---------------------------------
; Function xb
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_xb::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20040218-1.c:21: long int xx = *y & 255;
;	genPointerGet
	push	hl
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
; common peephole 2c removed inc hl due to unused result.
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into d.
; common peephole 5 removed dead inc hl.
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into c.
; common peephole 2c removed inc hl due to unused result.
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into b.
	pop	hl
;	genAnd
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
	ld	bc, #0x0000
;cases/./../tests/gcc-torture-execute-20040218-1.c:22: return xx + y[1];
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	hl
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, 4 (iy)
	ld	-4 (ix), a
	ld	a, 5 (iy)
	ld	-3 (ix), a
	ld	a, 6 (iy)
	ld	-2 (ix), a
	ld	a, 7 (iy)
	ld	-1 (ix), a
;	genPlus
	ld	a, e
	add	a, -4 (ix)
	ld	e, a
	ld	a, d
	adc	a, -3 (ix)
	ld	d, a
	ld	a, c
	adc	a, -2 (ix)
	ld	l, a
	ld	a, b
	adc	a, -1 (ix)
	ld	h, a
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20040218-1.c:23: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total xb function size at codegen: 5 bytes.
;cases/./../tests/gcc-torture-execute-20040218-1.c:25: long int xw (long int *y)
;	genLabel
;	genFunction
;	---------------------------------
; Function xw
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_xw::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20040218-1.c:27: long int xx = *y & 65535;
;	genPointerGet
	push	hl
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
; common peephole 5 removed dead inc hl.
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into c.
; common peephole 2c removed inc hl due to unused result.
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into b.
;	genAnd
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20040218-1.c:28: return xx + y[1];
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 51a eliminated dead pop/push hl pair.
	ld	bc, #0x0000
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, 4 (iy)
	ld	-4 (ix), a
	ld	a, 5 (iy)
	ld	-3 (ix), a
	ld	a, 6 (iy)
	ld	-2 (ix), a
	ld	a, 7 (iy)
	ld	-1 (ix), a
;	genPlus
	ld	a, e
	add	a, -4 (ix)
	ld	e, a
	ld	a, d
	adc	a, -3 (ix)
	ld	d, a
	ld	a, c
	adc	a, -2 (ix)
	ld	l, a
	ld	a, b
	adc	a, -1 (ix)
	ld	h, a
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20040218-1.c:29: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total xw function size at codegen: 5 bytes.
;cases/./../tests/gcc-torture-execute-20040218-1.c:31: short int yb (short int *y)
;	genLabel
;	genFunction
;	---------------------------------
; Function yb
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_yb::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20040218-1.c:33: short int xx = *y & 255;
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into b.
;	genCast
;	(locations are the same)
;	genAnd
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;cases/./../tests/gcc-torture-execute-20040218-1.c:34: return xx + y[1];
;	genAssign
;	(locations are the same)
;	genPointerGet
;fetchPairLong
; common peephole 96b move inc hl before ld b, #0x00
; common peephole 156a swap dec hl / inc hl pair.
	inc	hl
; common peephole 96b move inc hl before ld b, #0x00
; common peephole 156a swap dec hl / inc hl pair.
; common peephole 156b removed inc hl / dec hl pair.
	ld	b, #0x00
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPlus
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20040218-1.c:35: }
;	genEndFunction
	ret
;	Total yb function size at codegen: 4 bytes.
;cases/./../tests/gcc-torture-execute-20040218-1.c:37: void testTortureExecute (void)
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
;cases/./../tests/gcc-torture-execute-20040218-1.c:39: long int y[] = {-1, 16000};
;	genAddrOf
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), #0xff
	inc	hl
	ld	(hl), #0xff
	inc	hl
	ld	(hl), #0xff
	inc	hl
	ld	(hl), #0xff
;	genPlus
;fetchPairLong
	ld	hl, #0x0004
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), #0x80
	inc	hl
	ld	(hl), #0x3e
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-20040218-1.c:40: short int yw[] = {-1, 16000};
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), #0xff
	ld	-3 (ix), #0xff
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x80
	ld	-1 (ix), #0x3e
;cases/./../tests/gcc-torture-execute-20040218-1.c:42: if (xb (y) != 16255
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_xb
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x7f
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00123$.
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x3f
	or	a, c
	or	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20040218-1.c:43: || xw (y) != 81535
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_xw
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	bc, #0x3e7f
	cp	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 84 jumped to 00101$ directly instead of via 00125$.
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00125$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00126$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20040218-1.c:44: || yb (yw) != 16255)
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_yb
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	de, #0x3f7f
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00127$.
;	skipping generated iCode
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-20040218-1.c:45: ASSERT (0);
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
	ld	hl, #0x002d
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
;cases/./../tests/gcc-torture-execute-20040218-1.c:46: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/gcc-torture-execute-20040218-1.c:47: }
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
	.ascii "cases/./../tests/gcc-torture-execute-20040218-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20040218-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20040218-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20040218-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20040218-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20040218-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20040218-1.c:15: return "gcc-torture-execute-20040218-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20040218-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-20040218-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
