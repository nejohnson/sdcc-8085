;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2235
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug2235
	.globl _foo
	.globl ___prints
	.globl _SFR32
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
_SFR32::
	.ds 4
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
;cases/./../tests/bug-2235.c:12: void foo(unsigned long u1, unsigned long u2, unsigned long u3)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_foo::
;cases/./../tests/bug-2235.c:16: u3;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2235.c:17: }
;	genEndFunction
	pop	hl
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total foo function size at codegen: 6 bytes.
;cases/./../tests/bug-2235.c:20: void testBug2235(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug2235
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug2235::
;cases/./../tests/bug-2235.c:24: U1 = 0xABCDEF01 + SFR32;
;	genDummyRead
; common peephole 1 removed dead load from #_SFR32 into iy.
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;cases/./../tests/bug-2235.c:25: U2 = U1 + SFR32;
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;cases/./../tests/bug-2235.c:26: U3 = U2 + SFR32;
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;cases/./../tests/bug-2235.c:28: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2235.c:29: }
;	genEndFunction
	ret
;	Total testBug2235 function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/bug-2235.c"
	.db 0x00
;cases/tst_bug-2235.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2235.c:6: __prints("Running testBug2235\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-2235.c:7: testBug2235();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2235.c:8: }
;	genEndFunction
	jp	_testBug2235
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug2235"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2235.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2235.c:15: return "bug-2235.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2235.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-2235.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
