;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3985
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _ShipDraw
	.globl _PlayerGet
	.globl ___prints
	.globl ___fail
	.globl _shipData
	.globl ___numCases
	.globl _playerColors
	.globl _StateBonusModeGet
	.globl _SpriteSet
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_shipData::
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
;cases/./../tests/bug-3985.c:26: ShipData *PlayerGet(void) { return &shipData; }
;	genLabel
;	genFunction
;	---------------------------------
; Function PlayerGet
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_PlayerGet::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_shipData
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total PlayerGet function size at codegen: 1 bytes.
_playerColors:
	.db #0x01	; 1
;cases/./../tests/bug-3985.c:37: void ShipDraw(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ShipDraw
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_ShipDraw::
;cases/./../tests/bug-3985.c:39: ShipData *ship = PlayerGet();
;	genCall
	call	_PlayerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3985.c:42: u16 width = TO_SCREEN( SPRITE_WIDTH );
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x02
;cases/./../tests/bug-3985.c:43: u16 shipx = TO_SCREEN( ship->position.x );
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genCast
;	(locations are the same)
;	genRightShift
;fetchPairLong
	srl	d
	rr	e
	srl	d
	rr	e
	srl	d
	rr	e
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3985.c:45: if ( StateBonusModeGet())
;	genCall
	push	bc
	call	_StateBonusModeGet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/bug-3985.c:46: width += TO_SCREEN( SHIP_ENLARGE_WIDTH );
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x05
;	genLabel
00102$:
;cases/./../tests/bug-3985.c:49: u16 shipxm = shipxl + width;
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPlus
	add	a, c
	ld	c, a
;cases/./../tests/bug-3985.c:53: SpriteSet( shipxm, playerColors[0] );
;	genAddrOf
	ld	hl, #_playerColors+0
;	genPointerGet
	ld	l, (hl)
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/bug-3985.c:54: }
;	genEndFunction
	jp	_SpriteSet
; common peephole 152 removed unused ret.
;	Total ShipDraw function size at codegen: 1 bytes.
;cases/./../tests/bug-3985.c:57: testBug (void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3985.c:58: shipData.position.x = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0000
	ld	(_shipData), hl
;cases/./../tests/bug-3985.c:59: ShipDraw();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3985.c:60: }
;	genEndFunction
	jp	_ShipDraw
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
;cases/./../tests/bug-3985.c:62: u8 StateBonusModeGet(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function StateBonusModeGet
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_StateBonusModeGet::
;cases/./../tests/bug-3985.c:64: return 1;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3985.c:65: }
;	genEndFunction
	ret
;	Total StateBonusModeGet function size at codegen: 1 bytes.
;cases/./../tests/bug-3985.c:67: void SpriteSet(uint8_t x, uint8_t colour)
;	genLabel
;	genFunction
;	---------------------------------
; Function SpriteSet
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_SpriteSet::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3985.c:69: ASSERT (x == TO_SCREEN( 0 ) + TO_SCREEN( SPRITE_WIDTH ) + TO_SCREEN( SHIP_ENLARGE_WIDTH ));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x05
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00123$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0045
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
	pop	bc
;	genLabel
00104$:
;cases/./../tests/bug-3985.c:70: ASSERT (colour == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
	dec	c
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0046
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3985.c:71: }
;	genEndFunction
	ret
;	Total SpriteSet function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "x == TO_SCREEN( 0 ) + TO_SCREEN( SPRITE_WIDTH ) + TO_SCREEN("
	.ascii " SHIP_ENLARGE_WIDTH )"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-3985.c"
	.db 0x00
___str_3:
	.ascii "colour == 1"
	.db 0x00
;cases/tst_bug-3985.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3985.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug-3985.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3985.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3985.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3985.c:15: return "bug-3985.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3985.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug-3985.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
