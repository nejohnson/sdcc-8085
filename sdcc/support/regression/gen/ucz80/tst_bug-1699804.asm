;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_1699804
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testFoo
	.globl ___prints
	.globl _s2
	.globl _s1
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
_s1::
	.ds 1
_s2::
	.ds 1
_testFoo_str1_10000_13:
	.ds 7
_testFoo_str2_10000_13:
	.ds 7
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
;cases/./../tests/bug-1699804.c:11: testFoo (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFoo
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testFoo::
;cases/./../tests/bug-1699804.c:18: s1 = sizeof (Str_global);
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_s1
	ld	(hl), #0x07
;cases/./../tests/bug-1699804.c:19: s2 = sizeof (str_local);              // no error and proper result when line causing error (above) is removed
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_s2
	ld	(hl), #0x07
;cases/./../tests/bug-1699804.c:21: ASSERT (s1 == 7);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-1699804.c:22: ASSERT (s2 == 7);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-1699804.c:23: }
;	genEndFunction
	ret
;	Total testFoo function size at codegen: 1 bytes.
_Str_global:
	.ascii "Hello1"
	.db 0x00
_testFoo_str_local_10000_13:
	.ascii "Hello2"
	.db 0x00
___str_1:
	.ascii "Assertion failed"
	.db 0x00
___str_2:
	.ascii "s1 == 7"
	.db 0x00
___str_3:
	.ascii "cases/./../tests/bug-1699804.c"
	.db 0x00
___str_4:
	.ascii "s2 == 7"
	.db 0x00
;cases/tst_bug-1699804.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-1699804.c:6: __prints("Running testFoo\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/tst_bug-1699804.c:7: testFoo();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-1699804.c:8: }
;	genEndFunction
	jp	_testFoo
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testFoo"
	.db 0x0a
	.db 0x00
;cases/tst_bug-1699804.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-1699804.c:15: return "bug-1699804.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-1699804.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "bug-1699804.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
