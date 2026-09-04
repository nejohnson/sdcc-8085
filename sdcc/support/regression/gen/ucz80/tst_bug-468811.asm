;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_468811
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _enemys
	.globl _set_sprite_tile
	.globl ___prints
	.globl _pl
	.globl _pp
	.globl _px
	.globl _pf
	.globl _ey
	.globl _ex
	.globl _ef
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
_ef::
	.ds 10
_ex::
	.ds 10
_ey::
	.ds 10
_pf::
	.ds 1
_px::
	.ds 1
_pp::
	.ds 1
_pl::
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
;cases/./../tests/bug-468811.c:10: set_sprite_tile(UINT8 nb, UINT8 tile)
;	genLabel
;	genFunction
;	---------------------------------
; Function set_sprite_tile
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_set_sprite_tile::
;cases/./../tests/bug-468811.c:12: UNUSED(nb && tile);
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-468811.c:13: }
;	genEndFunction
	ret
;	Total set_sprite_tile function size at codegen: 1 bytes.
;cases/./../tests/bug-468811.c:64: void enemys()
;	genLabel
;	genFunction
;	---------------------------------
; Function enemys
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_enemys::
;cases/./../tests/bug-468811.c:71: set_sprite_tile( i*2+DEF_ES1, DEF_1EC1+(ex[i]-MAX_SX*8-12)+7 );
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00105$:
;cases/./../tests/bug-468811.c:68: for( i=0; i<MAX_ET; i++ ) {
;	genPlus
	inc	a
;	genCmpLt
	cp	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00105$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/bug-468811.c:74: }
;	genEndFunction
	ret
;	Total enemys function size at codegen: 1 bytes.
;cases/./../tests/bug-468811.c:76: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-468811.c:78: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-468811.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-468811.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug-468811.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-468811.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-468811.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-468811.c:15: return "bug-468811.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-468811.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-468811.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
