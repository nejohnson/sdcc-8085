;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_shiftopt_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _stest
	.globl _utest
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _link_error
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
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:20: utest (unsigned int x)
;	genLabel
;	genFunction
;	---------------------------------
; Function utest
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_utest::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:22: if (x >> 0 != x)
;	genRightShift
;fetchPairLong
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00158$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:23: link_error ();
;	genCall
	push	de
	call	_link_error
	pop	de
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:25: if (x << 0 != x)
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00159$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:26: link_error ();
;	genCall
	push	de
	call	_link_error
	pop	de
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:28: if (0 << x != 0)
;	genLeftShift
	ld	b, e
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00161$
00160$:
	add	a, a
	rl	c
00161$:
	djnz	00160$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:29: link_error ();
;	genCall
	push	de
	call	_link_error
	pop	de
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:32: link_error ();
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:34: if (-1 >> x != -1)
;	genRightShift
	ld	b, e
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, #0xff
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00163$
00162$:
	sra	c
00163$:
	djnz	00162$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
	inc	c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00164$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:35: link_error ();
;	genCall
	push	de
	call	_link_error
	pop	de
;	genLabel
00110$:
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:37: if (~0 >> x != ~0)
;	genRightShift
	ld	b, e
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00166$
00165$:
	sra	d
	rr	e
00166$:
	djnz	00165$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	a, e
	and	a, d
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00167$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:38: link_error ();
;	genCall
;	genLabel
	jp	nz, _link_error
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:39: }
;	genEndFunction
	ret
;	Total utest function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:42: stest (int x)
;	genLabel
;	genFunction
;	---------------------------------
; Function stest
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_stest::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:44: if (x >> 0 != x)
;	genRightShift
;fetchPairLong
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:45: link_error ();
;	genCall
	push	de
	call	_link_error
	pop	de
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:47: if (x << 0 != x)
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00144$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:48: link_error ();
;	genCall
	push	de
	call	_link_error
	pop	de
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:50: if (0 << x != 0)
;	genLeftShift
	ld	b, e
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00146$
00145$:
	add	a, a
	rl	c
00146$:
	djnz	00145$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:51: link_error ();
;	genCall
	push	de
	call	_link_error
	pop	de
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:53: if (0 >> x != 0)
;	genRightShift
	ld	b, e
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	e, a
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00148$
00147$:
	sra	e
	rr	a
00148$:
	djnz	00147$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, e
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:54: link_error ();
;	genCall
;	genLabel
	jp	nz, _link_error
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00109$.
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:55: }
;	genEndFunction
	ret
;	Total stest function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:58: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:60: utest(9);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0009
;	genCall
	call	_utest
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:61: utest(0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genCall
	call	_utest
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:63: stest(9);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0009
;	genCall
	call	_stest
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:64: stest(0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genCall
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:66: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:67: }
;	genEndFunction
	jp	_stest
; common peephole 152 removed unused ret.
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:70: link_error ()
;	genLabel
;	genFunction
;	---------------------------------
; Function link_error
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_link_error::
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:72: ASSERT (0);
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
	ld	hl, #0x0048
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-shiftopt-1.c:73: }
;	genEndFunction
	ret
;	Total link_error function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-shiftopt-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-shiftopt-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-shiftopt-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-shiftopt-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-shiftopt-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-shiftopt-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-shiftopt-1.c:15: return "gcc-torture-execute-shiftopt-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-shiftopt-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-shiftopt-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
