;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2590
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _poner_texto_tiles
	.globl _msx_vwrite_direct
	.globl _msx_vfill
	.globl ___prints
	.globl _letras_tiles01
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
_letras_tiles01::
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
;cases/./../tests/bug-2590.c:11: extern void msx_vfill(unsigned int addr, unsigned int value, unsigned int count) __smallc
;	genLabel
;	genFunction
;	---------------------------------
; Function msx_vfill
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_msx_vfill::
;cases/./../tests/bug-2590.c:13: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total msx_vfill function size at codegen: 1 bytes.
;cases/./../tests/bug-2590.c:15: extern void msx_vwrite_direct(void* source, unsigned int dest, unsigned int count) __smallc
;	genLabel
;	genFunction
;	---------------------------------
; Function msx_vwrite_direct
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_msx_vwrite_direct::
;cases/./../tests/bug-2590.c:17: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total msx_vwrite_direct function size at codegen: 1 bytes.
;cases/./../tests/bug-2590.c:19: void poner_texto_tiles(unsigned char *texto, unsigned int size, unsigned int posicion, unsigned char color)
;	genLabel
;	genFunction
;	---------------------------------
; Function poner_texto_tiles
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_poner_texto_tiles::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2590.c:23: while (size)
;	genLabel
00104$:
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;cases/./../tests/bug-2590.c:35: size--;
;	genMinus
	dec	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00107$:
;cases/./../tests/bug-2590.c:37: }
;	genEndFunction
	pop	hl
;	adjustStack by 3
	pop	af
	inc	sp
	jp	(hl)
;	Total poner_texto_tiles function size at codegen: 4 bytes.
;cases/./../tests/bug-2590.c:39: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2590.c:41: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-2590.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2590.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug-2590.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2590.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2590.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2590.c:15: return "bug-2590.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2590.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-2590.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
