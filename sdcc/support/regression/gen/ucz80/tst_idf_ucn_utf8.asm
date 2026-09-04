;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_idf_ucn_utf8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testSquared
	.globl _testAssignment
	.globl _testShadowing
	.globl ___prints
	.globl ___numCases
	.globl _µ_div
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
;cases/./../tests/idf_ucn_utf8.c:13: testShadowing(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testShadowing
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testShadowing::
;cases/./../tests/idf_ucn_utf8.c:17: ASSERT(µ_div == 1000000uL);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/idf_ucn_utf8.c:18: ASSERT(\u00B5_div == 1000000uL);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/idf_ucn_utf8.c:20: }
;	genEndFunction
	ret
;	Total testShadowing function size at codegen: 1 bytes.
_µ_div:
	.byte #0xe8, #0x03, #0x00, #0x00	; 1000
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.db 0xc2
	.db 0xb5
	.ascii "_div == 1000000uL"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/idf_ucn_utf8.c"
	.db 0x00
;cases/./../tests/idf_ucn_utf8.c:23: testAssignment(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testAssignment
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testAssignment::
;cases/./../tests/idf_ucn_utf8.c:29: ASSERT(\U000000F6 == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/idf_ucn_utf8.c:31: }
;	genEndFunction
	ret
;	Total testAssignment function size at codegen: 1 bytes.
___str_3:
	.ascii "Assertion failed"
	.db 0x00
___str_4:
	.db 0xc3
	.db 0xb6
	.ascii " == 2"
	.db 0x00
___str_5:
	.ascii "cases/./../tests/idf_ucn_utf8.c"
	.db 0x00
;cases/./../tests/idf_ucn_utf8.c:34: testSquared(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSquared
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testSquared::
;cases/./../tests/idf_ucn_utf8.c:40: ASSERT(e\u00B2 == e_squared);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/idf_ucn_utf8.c:42: }
;	genEndFunction
	ret
;	Total testSquared function size at codegen: 1 bytes.
___str_6:
	.ascii "Assertion failed"
	.db 0x00
___str_7:
	.ascii "e"
	.db 0xc2
	.db 0xb2
	.ascii " == e_squared"
	.db 0x00
___str_8:
	.ascii "cases/./../tests/idf_ucn_utf8.c"
	.db 0x00
;cases/tst_idf_ucn_utf8.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_idf_ucn_utf8.c:6: __prints("Running testShadowing\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genCall
	call	___prints
;cases/tst_idf_ucn_utf8.c:7: testShadowing();
;	genCall
	call	_testShadowing
;cases/tst_idf_ucn_utf8.c:8: __prints("Running testAssignment\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___prints
;cases/tst_idf_ucn_utf8.c:9: testAssignment();
;	genCall
	call	_testAssignment
;cases/tst_idf_ucn_utf8.c:10: __prints("Running testSquared\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_11
;	genCall
	call	___prints
;cases/tst_idf_ucn_utf8.c:11: testSquared();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_idf_ucn_utf8.c:12: }
;	genEndFunction
	jp	_testSquared
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_9:
	.ascii "Running testShadowing"
	.db 0x0a
	.db 0x00
___str_10:
	.ascii "Running testAssignment"
	.db 0x0a
	.db 0x00
___str_11:
	.ascii "Running testSquared"
	.db 0x0a
	.db 0x00
;cases/tst_idf_ucn_utf8.c:17: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_idf_ucn_utf8.c:19: return "idf_ucn_utf8.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_idf_ucn_utf8.c:20: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0003
___str_12:
	.ascii "idf_ucn_utf8.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
