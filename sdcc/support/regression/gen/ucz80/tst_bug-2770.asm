;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2770
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _fooO
	.globl _fooA
	.globl _fooX
	.globl ___prints
	.globl ___numCases
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_rtc_secl	=	0x00b0
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
;cases/./../tests/bug-2770.c:10: void fooX(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function fooX
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fooX::
;cases/./../tests/bug-2770.c:13: do {
;	genLabel
00101$:
;cases/./../tests/bug-2770.c:14: r = rtc_secl;
;	genAssign
	in	a, (_rtc_secl)
	ld	c, a
;cases/./../tests/bug-2770.c:15: } while((r ^ rtc_secl) & 0x0F);
;	genXor
	in	a, (_rtc_secl)
	xor	a, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	and	a, #0x0f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00115$.
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/bug-2770.c:16: }
;	genEndFunction
	ret
;	Total fooX function size at codegen: 4 bytes.
;cases/./../tests/bug-2770.c:18: void fooA(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function fooA
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fooA::
;cases/./../tests/bug-2770.c:21: do {
;	genLabel
00101$:
;cases/./../tests/bug-2770.c:22: r = rtc_secl;
;	genAssign
	in	a, (_rtc_secl)
	ld	c, a
;cases/./../tests/bug-2770.c:23: } while((r & rtc_secl) & 0x0F);
;	genAnd
	in	a, (_rtc_secl)
	and	a, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	and	a, #0x0f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00115$.
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/bug-2770.c:24: }
;	genEndFunction
	ret
;	Total fooA function size at codegen: 4 bytes.
;cases/./../tests/bug-2770.c:26: void fooO(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function fooO
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fooO::
;cases/./../tests/bug-2770.c:29: do {
;	genLabel
00101$:
;cases/./../tests/bug-2770.c:30: r = rtc_secl;
;	genAssign
	in	a, (_rtc_secl)
	ld	c, a
;cases/./../tests/bug-2770.c:31: } while((r | rtc_secl) & 0x0F);
;	genOr
	in	a, (_rtc_secl)
	or	a, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	and	a, #0x0f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00115$.
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/bug-2770.c:32: }
;	genEndFunction
	ret
;	Total fooO function size at codegen: 4 bytes.
;cases/./../tests/bug-2770.c:35: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2770.c:37: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 4 bytes.
;cases/tst_bug-2770.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2770.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug-2770.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2770.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2770.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2770.c:15: return "bug-2770.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2770.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-2770.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
