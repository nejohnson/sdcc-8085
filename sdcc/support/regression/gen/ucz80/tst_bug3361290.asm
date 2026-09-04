;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug3361290
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl __MiniRun
	.globl _KickDog
	.globl ___prints
	.globl __bTimer
	.globl _rWatchDog
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
_rWatchDog::
	.ds 1
__bTimer::
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
;cases/./../tests/bug3361290.c:10: void KickDog()
;	genLabel
;	genFunction
;	---------------------------------
; Function KickDog
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_KickDog::
;cases/./../tests/bug3361290.c:12: rWatchDog |= 0x08; // kick dog
;	genOr
	ld	a, (_rWatchDog+0)
	or	a, #0x08
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_rWatchDog+0), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3361290.c:13: }
;	genEndFunction
	ret
;	Total KickDog function size at codegen: 1 bytes.
;cases/./../tests/bug3361290.c:16: void _MiniRun()
;	genLabel
;	genFunction
;	---------------------------------
; Function _MiniRun
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
__MiniRun::
;cases/./../tests/bug3361290.c:18: if (_bTimer)
;	genIfx
	ld	a, (__bTimer+0)
	or	a, a
	jp	z, _KickDog
; common peephole 84 jumped to _KickDog directly instead of via 00102$.
;cases/./../tests/bug3361290.c:20: _bTimer = FALSE;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#__bTimer), a
; common peephole 19 loaded (#__bTimer) from a directly instead of using hl.
;	genLabel
; common peephole 159 removed unused label 00102$.
;cases/./../tests/bug3361290.c:22: KickDog();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/bug3361290.c:23: }
;	genEndFunction
	jp	_KickDog
; common peephole 152 removed unused ret.
;	Total _MiniRun function size at codegen: 1 bytes.
;cases/./../tests/bug3361290.c:26: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug3361290.c:28: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3361290.c:29: }
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
	.ascii "cases/./../tests/bug3361290.c"
	.db 0x00
;cases/tst_bug3361290.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug3361290.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug3361290.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3361290.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug3361290.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug3361290.c:15: return "bug3361290.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3361290.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug3361290.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
