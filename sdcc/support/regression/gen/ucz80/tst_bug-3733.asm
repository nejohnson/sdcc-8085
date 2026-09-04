;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3733
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _vdu_patch_crop_impl
	.globl _vdu_sprite_position_set16
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
;cases/./../tests/bug-3733.c:13: void vdu_sprite_position_set16( uint8_t id, uint8_t tile, uint8_t x, uint8_t y, uint8_t colour ) {}
;	genLabel
;	genFunction
;	---------------------------------
; Function vdu_sprite_position_set16
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_vdu_sprite_position_set16::
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	pop	hl
;	adjustStack by 3
	pop	af
	inc	sp
	jp	(hl)
;	Total vdu_sprite_position_set16 function size at codegen: 4 bytes.
;cases/./../tests/bug-3733.c:16: uint8_t vdu_patch_crop_impl( uint8_t id, int8_t col, int8_t row,
;	genLabel
;	genFunction
;	---------------------------------
; Function vdu_patch_crop_impl
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_vdu_patch_crop_impl::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-3733.c:20: int16_t px = col;
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;cases/./../tests/bug-3733.c:23: do {
;	genAssign
;	genLabel
00107$:
;cases/./../tests/bug-3733.c:25: uint8_t x = cols;
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, 11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-3733.c:26: do {
;	genAssign
;	(locations are the same)
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 7 (ix)
	ld	-2 (ix), a
	ld	a, 8 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-3733.c:30: do {
;	genLabel
00118$:
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, 9 (ix)
	ld	h, 10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAssign
;	(locations are the same)
;cases/./../tests/bug-3733.c:31: vdu_sprite_position_set16( id++, tile_offset, px, py, *colours++ ); // The bad asm happened in code for passing parameters here.
;	genPlus
	ld	a, d
	add	a, #0x01
	ld	9 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	10 (ix), a
;	genPlus
	inc	e
;cases/./../tests/bug-3733.c:35: px++;
;	genPlus
	inc	bc
;cases/./../tests/bug-3733.c:36: counts++;
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
	inc	-1 (ix)
00153$:
;cases/./../tests/bug-3733.c:38: } while( --x );
;	genMinus
	dec	l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00118$
;	skipping generated iCode
;cases/./../tests/bug-3733.c:40: } while ( --rows );
;	genAssign
;	(locations are the same)
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	7 (ix), a
	ld	a, -1 (ix)
	ld	8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMinus
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 0
	dec	12 (ix)
; common peephole 7 removed dead load from 12 (ix) into a.
; common peephole 117 decremented in 12 (ix) instead of going through a.
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 0
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;	skipping generated iCode
;cases/./../tests/bug-3733.c:42: return 0;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
; common peephole 159 removed unused label 00110$.
;cases/./../tests/bug-3733.c:43: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 11
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	inc	sp
	jp	(hl)
;	Total vdu_patch_crop_impl function size at codegen: 12 bytes.
;cases/./../tests/bug-3733.c:46: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 1 bytes.
_testBug::
;	adjustStack by -1
	dec	sp
;cases/./../tests/bug-3733.c:48: uint8_t c = 0;
;	genAssign
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;cases/./../tests/bug-3733.c:49: vdu_patch_crop_impl(0, 0, 0, 0, 0, &c, &c, 1, 1, 0, 0);
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3733.c:50: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total testBug function size at codegen: 2 bytes.
;cases/tst_bug-3733.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3733.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug-3733.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3733.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3733.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3733.c:15: return "bug-3733.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3733.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3733.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
