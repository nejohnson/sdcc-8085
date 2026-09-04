;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3482
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _PlayerHit
	.globl ___prints
	.globl ___numCases
	.globl _fast_rand
	.globl _StatePlayerHit
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
;cases/./../tests/bug-3482.c:17: void PlayerHit( int8_t percent ) {
;	genLabel
;	genFunction
;	---------------------------------
; Function PlayerHit
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_PlayerHit::
;cases/./../tests/bug-3482.c:19: percent = fast_rand() % 8 + 8;
;	genCall
	call	_fast_rand
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genAnd
	ld	a, e
	and	a, #0x07
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into c.
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPlus
	add	a, #0x08
;cases/./../tests/bug-3482.c:21: StatePlayerHit( percent ); // Code that corrupts the stack was generated for this call.
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3482.c:22: }
;	genEndFunction
	jp	_StatePlayerHit
; common peephole 152 removed unused ret.
;	Total PlayerHit function size at codegen: 1 bytes.
;cases/./../tests/bug-3482.c:25: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3482.c:27: PlayerHit( 0 );
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3482.c:28: }
;	genEndFunction
	jp	_PlayerHit
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
;cases/./../tests/bug-3482.c:30: uint16_t fast_rand( void ) {
;	genLabel
;	genFunction
;	---------------------------------
; Function fast_rand
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fast_rand::
;cases/./../tests/bug-3482.c:31: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3482.c:32: }
;	genEndFunction
	ret
;	Total fast_rand function size at codegen: 1 bytes.
;cases/./../tests/bug-3482.c:34: void StatePlayerHit( uint8_t amount ) {
;	genLabel
;	genFunction
;	---------------------------------
; Function StatePlayerHit
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_StatePlayerHit::
;cases/./../tests/bug-3482.c:35: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total StatePlayerHit function size at codegen: 1 bytes.
;cases/tst_bug-3482.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3482.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_bug-3482.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3482.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3482.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3482.c:15: return "bug-3482.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3482.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3482.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
