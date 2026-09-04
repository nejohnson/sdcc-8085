;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug3166208
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _bug3150679
	.globl _bug3166208
	.globl ___prints
	.globl _p
	.globl _a
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
_a::
	.ds 1
_p::
	.ds 2
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
;cases/./../tests/bug3166208.c:11: void bug3166208(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug3166208
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bug3166208::
;cases/./../tests/bug3166208.c:13: if ((* (char __xdata *)0xDF53))
;	genPointerGet
	ld	a, (#0xdf53)
;	genIfx
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;cases/./../tests/bug3166208.c:15: a = 2;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_a
	ld	(hl), #0x02
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/bug3166208.c:17: }
;	genEndFunction
	ret
;	Total bug3166208 function size at codegen: 1 bytes.
;cases/./../tests/bug3166208.c:23: void bug3150679(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug3150679
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bug3150679::
;cases/./../tests/bug3166208.c:25: while(1)
;	genLabel
00102$:
;cases/./../tests/bug3166208.c:27: *((unsigned char __data *)2) = *p;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_p)
;	genPointerGet
	ld	a, (hl)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#0x0002), a
; common peephole 19 loaded (#0x0002) from a directly instead of using hl.
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/bug3166208.c:29: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00102$
; common peephole 152 removed unused ret.
;	Total bug3150679 function size at codegen: 1 bytes.
;cases/./../tests/bug3166208.c:32: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug3166208.c:34: ASSERT (1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3166208.c:35: }
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
	.ascii "cases/./../tests/bug3166208.c"
	.db 0x00
;cases/tst_bug3166208.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug3166208.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug3166208.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3166208.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug3166208.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug3166208.c:15: return "bug3166208.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3166208.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug3166208.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
