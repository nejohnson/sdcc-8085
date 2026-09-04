;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_compare_3
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _all_tests
	.globl _test6
	.globl _test5
	.globl _test4
	.globl _test3
	.globl _test2
	.globl _test1
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _link_error0
	.globl _link_error1
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
;cases/./../tests/gcc-torture-execute-compare-3.c:21: test1 (int x, int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function test1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_test1::
;cases/./../tests/gcc-torture-execute-compare-3.c:24: link_error0();
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-compare-3.c:25: }
;	genEndFunction
	ret
;	Total test1 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-compare-3.c:28: test2 (int x, int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function test2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_test2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-compare-3.c:30: if ((x<y) && (x>y))
;	genCmpLt
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	po, 00122$
	xor	a, #0x80
00122$:
	ret	p
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	genCmpGt
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	po, 00123$
	xor	a, #0x80
00123$:
	ret	p
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-compare-3.c:31: link_error0();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-compare-3.c:32: }
;	genEndFunction
	jp	_link_error0
; common peephole 152 removed unused ret.
;	Total test2 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-compare-3.c:35: test3 (int x, int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function test3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_test3::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-compare-3.c:37: if ((x<y) && (y<x))
;	genCmpLt
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	po, 00122$
	xor	a, #0x80
00122$:
	ret	p
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	genCmpLt
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	po, 00123$
	xor	a, #0x80
00123$:
	ret	p
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-compare-3.c:38: link_error0();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-compare-3.c:39: }
;	genEndFunction
	jp	_link_error0
; common peephole 152 removed unused ret.
;	Total test3 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-compare-3.c:42: test4 (int x, int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function test4
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_test4::
;cases/./../tests/gcc-torture-execute-compare-3.c:48: link_error1 ();
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/gcc-torture-execute-compare-3.c:49: }
;	genEndFunction
	ret
;	Total test4 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-compare-3.c:52: test5 (int x, int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function test5
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_test5::
;cases/./../tests/gcc-torture-execute-compare-3.c:58: link_error1 ();
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/gcc-torture-execute-compare-3.c:59: }
;	genEndFunction
	ret
;	Total test5 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-compare-3.c:62: test6 (int x, int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function test6
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_test6::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-compare-3.c:64: if ((x<=y) || (y<x))
;	genCmpGt
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	po, 00123$
	xor	a, #0x80
00123$:
	ret	p
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;	genCmpLt
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	po, 00124$
	xor	a, #0x80
00124$:
	ret	m
; common peephole 161 replaced jump by return.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-compare-3.c:68: link_error1 ();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/gcc-torture-execute-compare-3.c:69: }
;	genEndFunction
	jp	_link_error1
; common peephole 152 removed unused ret.
;	Total test6 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-compare-3.c:72: all_tests (int x, int y)
;	genLabel
;	genFunction
;	---------------------------------
; Function all_tests
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_all_tests::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-compare-3.c:74: test1 (x, y);
;	genSend
	push	hl
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test1
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-compare-3.c:75: test2 (x, y);
;	genSend
	push	hl
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test2
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-compare-3.c:76: test3 (x, y);
;	genSend
	push	hl
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test3
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-compare-3.c:77: test4 (x, y);
;	genSend
	push	hl
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test4
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-compare-3.c:78: test5 (x, y);
;	genSend
	push	hl
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_test5
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-compare-3.c:79: test6 (x, y);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-compare-3.c:80: }
;	genEndFunction
	jp	_test6
; common peephole 152 removed unused ret.
;	Total all_tests function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-compare-3.c:83: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-compare-3.c:85: all_tests (0, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_all_tests
;cases/./../tests/gcc-torture-execute-compare-3.c:86: all_tests (1, 2);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0002
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0001
;	genCall
	call	_all_tests
;cases/./../tests/gcc-torture-execute-compare-3.c:87: all_tests (4, 3);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0003
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0004
;	genCall
;cases/./../tests/gcc-torture-execute-compare-3.c:89: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-compare-3.c:90: }
;	genEndFunction
	jp	_all_tests
; common peephole 152 removed unused ret.
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-compare-3.c:92: void link_error0() {ASSERT (0);}
;	genLabel
;	genFunction
;	---------------------------------
; Function link_error0
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_link_error0::
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
	ld	hl, #0x005c
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
;	genEndFunction
	ret
;	Total link_error0 function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-compare-3.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-compare-3.c:93: void link_error1() {ASSERT (0);}
;	genLabel
;	genFunction
;	---------------------------------
; Function link_error1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_link_error1::
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
	ld	hl, #0x005d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total link_error1 function size at codegen: 1 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "0"
	.db 0x00
__str_5:
	.ascii "cases/./../tests/gcc-torture-execute-compare-3.c"
	.db 0x00
;cases/tst_gcc-torture-execute-compare-3.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-compare-3.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-compare-3.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-compare-3.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-compare-3.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-compare-3.c:15: return "gcc-torture-execute-compare-3.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-compare-3.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "gcc-torture-execute-compare-3.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
