;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3606
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl ___prints
	.globl _player
	.globl _k
	.globl _j
	.globl _i
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
_i::
	.ds 1
_j::
	.ds 1
_k::
	.ds 1
_playGrid:
	.ds 1024
_roomId:
	.ds 1
_gridW:
	.ds 1
_gridH:
	.ds 1
_redraw:
	.ds 1
_player::
	.ds 22
_func_2_playerTopMetatileIndex_10000_19:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_camera_max_x:
	.ds 2
_camera_max_y:
	.ds 2
_walkableTileCount:
	.ds 1
_camera_x:
	.ds 2
_camera_y:
	.ds 2
_new_camera_x:
	.ds 2
_new_camera_y:
	.ds 2
_map_pos_x:
	.ds 1
_map_pos_y:
	.ds 1
_new_map_pos_x:
	.ds 1
_new_map_pos_y:
	.ds 1
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
;cases/./../tests/bug-3606.c:81: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3606.c:83: player.ySpr = 16;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0010
	ld	((_player + 4)), hl
;cases/./../tests/bug-3606.c:84: func_1();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3606.c:85: }
;	genEndFunction
	jp	_func_1
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
;cases/./../tests/bug-3606.c:87: static void func_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function func_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_func_1:
;cases/./../tests/bug-3606.c:89: player.xVel = player.moveSpeed;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_player + 17)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#(_player + 18)), a
; common peephole 19 loaded (#(_player + 18)) from a directly instead of using hl.
;cases/./../tests/bug-3606.c:90: player.yVel = 0;
;	genPlus
	ld	hl, #_player + 19
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/bug-3606.c:91: player.dir = DIR_RIGHT;
;	genPlus
	ld	hl, #_player + 16
;	genPointerSet
	ld	(hl), #0x0c
;cases/./../tests/bug-3606.c:93: func_2();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3606.c:94: }
;	genEndFunction
	jp	_func_2
; common peephole 152 removed unused ret.
;	Total func_1 function size at codegen: 1 bytes.
;cases/./../tests/bug-3606.c:96: static void func_2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function func_2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 16 bytes.
_func_2:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -16
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-3606.c:99: int16_t x = player.xSpr + player.xVel;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#(_player + 2) + 0)
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_player + 18) + 0)
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
	rlca
	sbc	a, a
	ld	h, a
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), l
	ld	-13 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3606.c:100: int16_t y = player.ySpr + player.yVel;
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#(_player + 4) + 0)
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_player + 19) + 0)
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
	rlca
	sbc	a, a
	ld	h, a
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genPlus
	add	hl, bc
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), l
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3606.c:109: playerTopMetatileIndex = (y) - 16U;
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	add	a, #0xf0
;	genAssign
;	genMove_o size 1 result type 11 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded a from a instead of going through -10 (ix).
	ld	-10 (ix), a
; common peephole 0a removed redundant load from a into a.
	ld	(#_func_2_playerTopMetatileIndex_10000_19), a
; common peephole 19 loaded (#_func_2_playerTopMetatileIndex_10000_19) from a directly instead of using hl.
;cases/./../tests/bug-3606.c:111: uint8_t playerBottomMetatileIndex = y;
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3606.c:112: uint8_t playerLeftMetatileIndex = x;
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded a from a instead of going through -8 (ix).
	ld	-8 (ix), a
; common peephole 0a removed redundant load from a into a.
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3606.c:113: uint8_t playerRightMetatileIndex = x;
;	genAssign
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3606.c:115: uint8_t collided = TRUE;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x01
;cases/./../tests/bug-3606.c:116: switch (player.dir)
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	_moveFrom_tpair_()
; common peephole 18 loaded 0 into a directly instead of using hl.
	ld	a, (#(_player + 16) + 0)
	ld	-15 (ix), a
;cases/./../tests/bug-3606.c:119: if ((playGrid[playerTopMetatileIndex][playerLeftMetatileIndex] < walkableTileCount)
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_func_2_playerTopMetatileIndex_10000_19)
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3606.c:116: switch (player.dir)
;	genIfx
	ld	a, -15 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
;cases/./../tests/bug-3606.c:124: if ((playGrid[playerBottomMetatileIndex][playerLeftMetatileIndex] < walkableTileCount)
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3606.c:116: switch (player.dir)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0c
	jp	z, 00113$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00265$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x18
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00266$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x24
	jp	z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00267$.
;	skipping generated iCode
;	genGoto
	jp	00117$
;cases/./../tests/bug-3606.c:118: case DIR_UP:
;	genLabel
00101$:
;cases/./../tests/bug-3606.c:119: if ((playGrid[playerTopMetatileIndex][playerLeftMetatileIndex] < walkableTileCount)
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	a, #<(_playGrid)
	add	a, -2 (ix)
	ld	c, a
	ld	a, #>(_playGrid)
	adc	a, -1 (ix)
	ld	b, a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -7 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
	add	hl, bc
;	genPointerGet
;	genCmpLt
; common peephole 9 loaded a from (hl) directly instead of going through e.
	ld	a, (hl)
	ld	iy, #_walkableTileCount
	sub	a, 0 (iy)
	jp	nc, 00117$
;	skipping generated iCode
;cases/./../tests/bug-3606.c:120: && (playGrid[playerTopMetatileIndex][playerRightMetatileIndex] < walkableTileCount))
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
	add	hl, bc
;	genPointerGet
;	genCmpLt
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (hl)
	sub	a, 0 (iy)
	jp	nc, 00117$
;	skipping generated iCode
;cases/./../tests/bug-3606.c:121: collided = FALSE;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x00
;cases/./../tests/bug-3606.c:122: break;
;	genGoto
	jp	00117$
;cases/./../tests/bug-3606.c:123: case DIR_DOWN:
;	genLabel
00105$:
;cases/./../tests/bug-3606.c:124: if ((playGrid[playerBottomMetatileIndex][playerLeftMetatileIndex] < walkableTileCount)
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	a, #<(_playGrid)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, #>(_playGrid)
	adc	a, -3 (ix)
	ld	-1 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -7 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-4 (ix), l
	ld	-3 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -4 (ix) -3 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpLt
; common peephole 33 loaded a from a instead of going through -3 (ix).
	ld	-3 (ix), a
; common peephole 0a removed redundant load from a into a.
	ld	iy, #_walkableTileCount
	sub	a, 0 (iy)
	jp	nc, 00117$
;	skipping generated iCode
;cases/./../tests/bug-3606.c:125: && (playGrid[playerBottomMetatileIndex][playerRightMetatileIndex] < walkableTileCount))
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -8 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-4 (ix), l
	ld	-3 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -4 (ix) -3 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpLt
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	sub	a, 0 (iy)
	jp	nc, 00117$
;	skipping generated iCode
;cases/./../tests/bug-3606.c:126: collided = FALSE;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x00
;cases/./../tests/bug-3606.c:127: break;
;	genGoto
	jp	00117$
;cases/./../tests/bug-3606.c:128: case DIR_LEFT:
;	genLabel
00109$:
;cases/./../tests/bug-3606.c:129: if ((playGrid[playerTopMetatileIndex][playerLeftMetatileIndex] < walkableTileCount)
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	a, #<(_playGrid)
	add	a, -2 (ix)
	ld	-16 (ix), a
	ld	a, #>(_playGrid)
	adc	a, -1 (ix)
	ld	-15 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -7 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-2 (ix), l
	ld	-1 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -2 (ix) -1 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpLt
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	ld	iy, #_walkableTileCount
	sub	a, 0 (iy)
	jp	nc, 00117$
;	skipping generated iCode
;cases/./../tests/bug-3606.c:130: && (playGrid[playerBottomMetatileIndex][playerLeftMetatileIndex] < walkableTileCount))
;	genPlus
	ld	a, #<(_playGrid)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, #>(_playGrid)
	adc	a, -3 (ix)
	ld	-1 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -7 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-4 (ix), l
	ld	-3 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -4 (ix) -3 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpLt
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00117$
;	skipping generated iCode
;cases/./../tests/bug-3606.c:131: collided = FALSE;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x00
;cases/./../tests/bug-3606.c:132: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00117$
;cases/./../tests/bug-3606.c:133: case DIR_RIGHT:
;	genLabel
00113$:
;cases/./../tests/bug-3606.c:134: if ((playGrid[playerTopMetatileIndex][playerRightMetatileIndex] < walkableTileCount)
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	a, #<(_playGrid)
	add	a, -2 (ix)
	ld	-16 (ix), a
	ld	a, #>(_playGrid)
	adc	a, -1 (ix)
	ld	-15 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -8 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-2 (ix), l
	ld	-1 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -2 (ix) -1 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpLt
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	ld	iy, #_walkableTileCount
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00117$
;	skipping generated iCode
;cases/./../tests/bug-3606.c:135: && (playGrid[playerBottomMetatileIndex][playerRightMetatileIndex] < walkableTileCount))
;	genPlus
	ld	a, #<(_playGrid)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, #>(_playGrid)
	adc	a, -3 (ix)
	ld	-1 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -8 (ix)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	d, #0x00
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-4 (ix), l
	ld	-3 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -4 (ix) -3 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpLt
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00117$
;	skipping generated iCode
;cases/./../tests/bug-3606.c:136: collided = FALSE;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), #0x00
;cases/./../tests/bug-3606.c:138: }
;	genLabel
00117$:
;cases/./../tests/bug-3606.c:141: i = (x) - 8U;
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	add	a, #0xf8
	ld	(#_i), a
; common peephole 19 loaded (#_i) from a directly instead of using hl.
;cases/./../tests/bug-3606.c:142: j = (y) - 16U;
;	genAssign
;	genMove_o size 1 result type 11 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	(#_j), a
; common peephole 19 loaded (#_j) from a directly instead of using hl.
;cases/./../tests/bug-3606.c:144: if (collided == FALSE)
;	genIfx
	ld	a, -5 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00125$
;cases/./../tests/bug-3606.c:146: player.xSpr = x;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_player + 2)
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug-3606.c:147: player.ySpr = y;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00127$
;	genLabel
00125$:
;cases/./../tests/bug-3606.c:151: switch (player.dir)
;	genPointerGet
;	_moveFrom_tpair_()
; common peephole 18 loaded 0 into a directly instead of using hl.
	ld	a, (#(_player + 16) + 0)
;	genIfx
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00121$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00268$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x18
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00119$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00269$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x24
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00270$.
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00123$
;cases/./../tests/bug-3606.c:153: case DIR_UP:    player.ySpr = (playerTopMetatileIndex);   break;
;	genLabel
00118$:
;	genCast
;	genMove_o size 1 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_func_2_playerTopMetatileIndex_10000_19+0)
	ld	-2 (ix), a
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_player + 4)
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00123$
;cases/./../tests/bug-3606.c:154: case DIR_DOWN:  player.ySpr = (playerBottomMetatileIndex);  break;
;	genLabel
00119$:
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	ld	-2 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_player + 4)
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00123$
;cases/./../tests/bug-3606.c:155: case DIR_LEFT:  player.xSpr = (playerLeftMetatileIndex + 1U); break;
;	genLabel
00120$:
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genPlus
	inc	hl
;	genCast
;	(locations are the same)
;	genPointerSet
	ld	((_player + 2)), hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00123$
;cases/./../tests/bug-3606.c:156: case DIR_RIGHT: player.xSpr = (playerRightMetatileIndex);     break;
;	genLabel
00121$:
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genPointerSet
	ld	((_player + 2)), hl
;cases/./../tests/bug-3606.c:158: }
;	genLabel
00123$:
;cases/./../tests/bug-3606.c:160: player.xVel = 0U;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #(_player + 18)
	ld	(hl), #0x00
;cases/./../tests/bug-3606.c:161: player.yVel = 0U;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
	ld	(hl), #0x00
;	genLabel
00127$:
;cases/./../tests/bug-3606.c:164: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total func_2 function size at codegen: 11 bytes.
;cases/tst_bug-3606.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3606.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_bug-3606.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3606.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3606.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3606.c:15: return "bug-3606.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3606.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3606.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__camera_max_x:
	.dw #0x00a0
__xinit__camera_max_y:
	.dw #0x0090
__xinit__walkableTileCount:
	.db #0x06	; 6
__xinit__camera_x:
	.dw #0x0000
__xinit__camera_y:
	.dw #0x0000
__xinit__new_camera_x:
	.dw #0x0000
__xinit__new_camera_y:
	.dw #0x0000
__xinit__map_pos_x:
	.db #0x00	; 0
__xinit__map_pos_y:
	.db #0x00	; 0
__xinit__new_map_pos_x:
	.db #0x00	; 0
__xinit__new_map_pos_y:
	.db #0x00	; 0
	.area _CABS (ABS)
