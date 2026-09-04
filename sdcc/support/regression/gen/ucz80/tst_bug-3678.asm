;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3678
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _h
	.globl _g
	.globl _f
	.globl ___prints
	.globl ___numCases
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_changeBase	=	0x0010
_LCDC_REG	=	0x0011
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
;cases/./../tests/bug-3678.c:18: void f(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f::
;cases/./../tests/bug-3678.c:20: LCDC_REG ^= changeBase;
;	genXor
	in	a, (_LCDC_REG)
	push	af
	in	a, (_changeBase)
	ld	l, a
	pop	af
	xor	a, l
;	genMove_o size 1 result type 5 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	out	(_LCDC_REG), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3678.c:21: }
;	genEndFunction
	ret
;	Total f function size at codegen: 1 bytes.
;cases/./../tests/bug-3678.c:23: void g(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g::
;cases/./../tests/bug-3678.c:25: LCDC_REG |= changeBase;
;	genOr
	in	a, (_changeBase)
	push	af
	in	a, (_LCDC_REG)
	ld	l, a
	pop	af
	or	a, l
;	genMove_o size 1 result type 5 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	out	(_LCDC_REG), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3678.c:26: }
;	genEndFunction
	ret
;	Total g function size at codegen: 1 bytes.
;cases/./../tests/bug-3678.c:28: void h(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function h
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_h::
;cases/./../tests/bug-3678.c:30: LCDC_REG &= changeBase;
;	genAnd
	in	a, (_LCDC_REG)
	push	af
	in	a, (_LCDC_REG)
	ld	l, a
	pop	af
	and	a, l
;	genMove_o size 1 result type 5 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	out	(_LCDC_REG), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3678.c:31: }
;	genEndFunction
	ret
;	Total h function size at codegen: 1 bytes.
;cases/./../tests/bug-3678.c:34: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3678.c:36: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-3678.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3678.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug-3678.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3678.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3678.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3678.c:15: return "bug-3678.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3678.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3678.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
