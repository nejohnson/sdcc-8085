;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_assert
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testAssert
	.globl _testStaticAssert2X
	.globl _testStaticAssert
	.globl ___prints
	.globl _a
	.globl _i
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
_i::
	.ds 2
_a::
	.ds 4
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
;cases/./../tests/assert.c:12: void testStaticAssert (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testStaticAssert
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testStaticAssert::
;cases/./../tests/assert.c:19: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testStaticAssert function size at codegen: 1 bytes.
;cases/./../tests/assert.c:23: void testStaticAssert2X (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testStaticAssert2X
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testStaticAssert2X::
;cases/./../tests/assert.c:29: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testStaticAssert2X function size at codegen: 1 bytes.
;cases/./../tests/assert.c:33: void testAssert (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testAssert
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testAssert::
;cases/./../tests/assert.c:38: assert (a[1, 0]); // C23 requires C23 to be implemented as variadic macro, which is meant for the use of compound literals in the argument. But the easiest way to test that is by using a comma operator not surrounded by ().
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/assert.c:40: }
;	genEndFunction
	ret
;	Total testAssert function size at codegen: 1 bytes.
;cases/tst_assert.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_assert.c:6: __prints("Running testStaticAssert\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_assert.c:8: __prints("Running testStaticAssert2X\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
	call	___prints
;cases/tst_assert.c:10: __prints("Running testAssert\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
;	genCall
;cases/tst_assert.c:11: testAssert();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_assert.c:12: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testStaticAssert"
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "Running testStaticAssert2X"
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "Running testAssert"
	.db 0x0a
	.db 0x00
;cases/tst_assert.c:17: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_assert.c:19: return "assert.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_assert.c:20: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0003
___str_3:
	.ascii "assert.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__i:
	.dw #0x002a
__xinit__a:
	.dw #0x0001
	.dw #0x0000
	.area _CABS (ABS)
