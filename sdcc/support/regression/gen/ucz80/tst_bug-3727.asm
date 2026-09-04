;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3727
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _SatUpdate
	.globl _fake
	.globl ___prints
	.globl _bad
	.globl _n1
	.globl ___numCases
	.globl _VDP_Poke_16K
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_n1::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_bad::
	.ds 2
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
;cases/./../tests/bug-3727.c:15: void fake (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function fake
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fake::
;cases/./../tests/bug-3727.c:17: n1 = 32;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_n1
	ld	(hl), #0x20
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3727.c:18: }
;	genEndFunction
	ret
;	Total fake function size at codegen: 1 bytes.
;cases/./../tests/bug-3727.c:20: void SatUpdate(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function SatUpdate
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_SatUpdate::
;cases/./../tests/bug-3727.c:22: n1=0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_n1), a
; common peephole 19 loaded (#_n1) from a directly instead of using hl.
;cases/./../tests/bug-3727.c:24: if ( bad )
;	genIfx
	ld	a, (_bad+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_bad
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;cases/./../tests/bug-3727.c:26: for (u8 j=0; j<1; j++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00105$:
;	genCmpLt
	sub	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00103$
;	skipping generated iCode
;cases/./../tests/bug-3727.c:28: fake();
;	genCall
	call	_fake
;cases/./../tests/bug-3727.c:26: for (u8 j=0; j<1; j++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00103$:
;cases/./../tests/bug-3727.c:31: VDP_Poke_16K( 2*n1 );
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genCall
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/bug-3727.c:32: }
;	genEndFunction
	jp	_VDP_Poke_16K
; common peephole 152 removed unused ret.
;	Total SatUpdate function size at codegen: 1 bytes.
;cases/./../tests/bug-3727.c:34: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3727.c:36: SatUpdate();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3727.c:37: }
;	genEndFunction
	jp	_SatUpdate
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
;cases/./../tests/bug-3727.c:40: void VDP_Poke_16K( u8 dest )
;	genLabel
;	genFunction
;	---------------------------------
; Function VDP_Poke_16K
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_VDP_Poke_16K::
;cases/./../tests/bug-3727.c:45: (void)dest;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3727.c:47: }
;	genEndFunction
	ret
;	Total VDP_Poke_16K function size at codegen: 1 bytes.
;cases/tst_bug-3727.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3727.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_bug-3727.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3727.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3727.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3727.c:15: return "bug-3727.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3727.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3727.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__bad:
	.dw #0x0001
	.area _CABS (ABS)
