;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr44468
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _test3
	.globl _test2
	.globl _test1
	.globl ___prints
	.globl _s
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
_s::
	.ds 8
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
;cases/./../tests/gcc-torture-execute-pr44468.c:27: test1 (void *q)
;	genLabel
;	genFunction
;	---------------------------------
; Function test1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test1::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr44468.c:29: struct S *b = (struct S *)((char *)q + sizeof (int));
;	genPlus
	inc	hl
	inc	hl
;cases/./../tests/gcc-torture-execute-pr44468.c:30: s.a.i = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	de, #0x0000
	ld	((_s + 4)), de
;cases/./../tests/gcc-torture-execute-pr44468.c:31: b->i = 3;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x03
	inc	hl
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-pr44468.c:32: return s.a.i;
;	genPointerGet
	ld	de, (#(_s + 4) + 0)
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr44468.c:33: }
;	genEndFunction
	ret
;	Total test1 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr44468.c:35: test2 (void *q)
;	genLabel
;	genFunction
;	---------------------------------
; Function test2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test2::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr44468.c:37: struct S *b = &((struct R *)q)->a;
;	genPlus
	inc	hl
	inc	hl
;cases/./../tests/gcc-torture-execute-pr44468.c:38: s.a.i = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	de, #0x0000
	ld	((_s + 4)), de
;cases/./../tests/gcc-torture-execute-pr44468.c:39: b->i = 3;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x03
	inc	hl
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-pr44468.c:40: return s.a.i;
;	genPointerGet
	ld	de, (#(_s + 4) + 0)
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr44468.c:41: }
;	genEndFunction
	ret
;	Total test2 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr44468.c:43: test3 (void *q)
;	genLabel
;	genFunction
;	---------------------------------
; Function test3
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_test3::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr44468.c:45: s.a.i = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
;cases/./../tests/gcc-torture-execute-pr44468.c:46: ((struct S *)((char *)q + sizeof (int)))->i = 3;
;	genPlus
; common peephole 96b move inc hl before ld ((_s + 4)), de
; common peephole 96b move inc hl before ld de, #0x0000
	inc	hl
; common peephole 96b move inc hl before ld ((_s + 4)), de
; common peephole 96b move inc hl before ld de, #0x0000
	inc	hl
	ld	de, #0x0000
	ld	((_s + 4)), de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x03
	inc	hl
	ld	(hl), #0x00
;cases/./../tests/gcc-torture-execute-pr44468.c:47: return s.a.i;
;	genPointerGet
	ld	de, (#(_s + 4) + 0)
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr44468.c:48: }
;	genEndFunction
	ret
;	Total test3 function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr44468.c:51: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr44468.c:57: return;
;	genRet
;cases/./../tests/gcc-torture-execute-pr44468.c:70: return;
;	genLabel
; common peephole 159 removed unused label 00111$.
;cases/./../tests/gcc-torture-execute-pr44468.c:72: }
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
	.ascii "cases/./../tests/gcc-torture-execute-pr44468.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr44468.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr44468.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
;cases/tst_gcc-torture-execute-pr44468.c:7: testTortureExecute();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr44468.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr44468.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr44468.c:15: return "gcc-torture-execute-pr44468.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr44468.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr44468.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
