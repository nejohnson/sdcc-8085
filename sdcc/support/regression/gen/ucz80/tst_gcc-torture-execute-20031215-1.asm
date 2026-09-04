;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20031215_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _test3
	.globl _test2
	.globl _test1
	.globl ___prints
	.globl ___numCases
	.globl _a
	.globl _ao
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
;cases/./../tests/gcc-torture-execute-20031215-1.c:20: void test1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test1::
;cases/./../tests/gcc-torture-execute-20031215-1.c:22: if (a->ch[a->l]) {
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_a)
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0x0004
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	iy, bc
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	iy, de
;	genPointerGet
	ld	a, (iy)
;	genIfx
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;cases/./../tests/gcc-torture-execute-20031215-1.c:23: ((char *)a->ch)[a->l] = 0;
;	genPlus
;fetchPairLong
	ld	hl, #0x0004
	add	hl, bc
;	genPlus
	add	hl, de
;	genPointerSet
	ld	(hl), #0x00
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-20031215-1.c:25: }
;	genEndFunction
	ret
;	Total test1 function size at codegen: 1 bytes.
_ao:
	.dw #0x0002
	.dw #0x0002
	.ascii "OK"
	.db 0x00
_a:
	.dw _ao
;cases/./../tests/gcc-torture-execute-20031215-1.c:27: void test2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test2::
;cases/./../tests/gcc-torture-execute-20031215-1.c:29: if (a->ch[a->l]) {
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_a)
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0x0004
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	iy, bc
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	iy, de
;	genPointerGet
	ld	a, (iy)
;	genIfx
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;cases/./../tests/gcc-torture-execute-20031215-1.c:30: ((char *)a->ch)[a->l] = -1;
;	genPlus
;fetchPairLong
	ld	hl, #0x0004
	add	hl, bc
;	genPlus
	add	hl, de
;	genPointerSet
	ld	(hl), #0xff
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-20031215-1.c:32: }
;	genEndFunction
	ret
;	Total test2 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20031215-1.c:34: void test3(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function test3
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test3::
;cases/./../tests/gcc-torture-execute-20031215-1.c:36: if (a->ch[a->l]) {
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_a)
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0x0004
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	iy, bc
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	iy, de
;	genPointerGet
	ld	a, (iy)
;	genIfx
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;cases/./../tests/gcc-torture-execute-20031215-1.c:37: ((char *)a->ch)[a->l] = 1;
;	genPlus
;fetchPairLong
	ld	hl, #0x0004
	add	hl, bc
;	genPlus
	add	hl, de
;	genPointerSet
	ld	(hl), #0x01
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-20031215-1.c:39: }
;	genEndFunction
	ret
;	Total test3 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20031215-1.c:42: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20031215-1.c:44: test1();
;	genCall
	call	_test1
;cases/./../tests/gcc-torture-execute-20031215-1.c:45: test2();
;	genCall
	call	_test2
;cases/./../tests/gcc-torture-execute-20031215-1.c:46: test3();
;	genCall
;cases/./../tests/gcc-torture-execute-20031215-1.c:47: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20031215-1.c:48: }
;	genEndFunction
	jp	_test3
; common peephole 152 removed unused ret.
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-20031215-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20031215-1.c:6: __prints("Running test1\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20031215-1.c:7: test1();
;	genCall
	call	_test1
;cases/tst_gcc-torture-execute-20031215-1.c:8: __prints("Running test2\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20031215-1.c:9: test2();
;	genCall
	call	_test2
;cases/tst_gcc-torture-execute-20031215-1.c:10: __prints("Running test3\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20031215-1.c:11: test3();
;	genCall
	call	_test3
;cases/tst_gcc-torture-execute-20031215-1.c:12: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20031215-1.c:13: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20031215-1.c:14: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_1:
	.ascii "Running test1"
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "Running test2"
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "Running test3"
	.db 0x0a
	.db 0x00
___str_4:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20031215-1.c:19: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20031215-1.c:21: return "gcc-torture-execute-20031215-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20031215-1.c:22: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0004
___str_5:
	.ascii "gcc-torture-execute-20031215-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
