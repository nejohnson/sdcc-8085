;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug1810965
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _bug1810965
	.globl ___prints
	.globl _dataPacket
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
_dataPacket::
	.ds 1
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
;cases/./../tests/bug1810965.c:22: void bug1810965(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug1810965
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bug1810965::
;cases/./../tests/bug1810965.c:29: }
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/bug1810965.c:30: }
;	genEndFunction
	ret
;	Total bug1810965 function size at codegen: 1 bytes.
;cases/./../tests/bug1810965.c:33: static void foo(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 1 bytes.
_foo:
;	adjustStack by -1
	dec	sp
;cases/./../tests/bug1810965.c:36: volatile unsigned char a = e_foo;
;	genAssign
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug1810965.c:37: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total foo function size at codegen: 2 bytes.
;cases/./../tests/bug1810965.c:39: static void bar(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bar
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 1 bytes.
_bar:
;	adjustStack by -1
	dec	sp
;cases/./../tests/bug1810965.c:44: volatile unsigned char a = e_foo;
;	genAssign
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug1810965.c:45: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total bar function size at codegen: 2 bytes.
;cases/./../tests/bug1810965.c:47: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug1810965.c:49: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug1810965.c:50: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/bug1810965.c"
	.db 0x00
;cases/tst_bug1810965.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug1810965.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug1810965.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1810965.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug1810965.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug1810965.c:15: return "bug1810965.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1810965.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug1810965.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
