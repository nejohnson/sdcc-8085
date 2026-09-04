;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3660
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _EnemyRender
	.globl ___prints
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
;cases/./../tests/bug-3660.c:18: void EnemyRender( Enemy *enemy ) {
;	genLabel
;	genFunction
;	---------------------------------
; Function EnemyRender
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_EnemyRender::
;cases/./../tests/bug-3660.c:24: uint8_t frameDirection = direction ? 1 : 0;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3660.c:25: }
;	genEndFunction
	ret
;	Total EnemyRender function size at codegen: 1 bytes.
;cases/./../tests/bug-3660.c:28: testBug( void )
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_testBug::
;	adjustStack by -2
	push	af
;cases/./../tests/bug-3660.c:31: e.facing = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3660.c:32: e.frame = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 157b merged offset into storage instruction.
; common peephole 65 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #0
	add	hl, sp
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;cases/./../tests/bug-3660.c:33: EnemyRender( &e );
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3660.c:34: }
;	genEndFunction
;	adjustStack by 2
	pop	af
	ret
;	Total testBug function size at codegen: 2 bytes.
;cases/tst_bug-3660.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3660.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_bug-3660.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3660.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3660.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3660.c:15: return "bug-3660.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3660.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3660.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
