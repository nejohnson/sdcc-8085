;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2208
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _SDCCBUG_DealCardsTo
	.globl ___prints
	.globl ___fail
	.globl _SDCCBUG_skill
	.globl _SDCCBUG_hand
	.globl _SDCCBUG_handN
	.globl _SDCCBUG_packN
	.globl _SDCCBUG_pack
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
_SDCCBUG_pack::
	.ds 74
_SDCCBUG_packN::
	.ds 1
_SDCCBUG_handN::
	.ds 2
_SDCCBUG_hand::
	.ds 148
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_SDCCBUG_skill::
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
;cases/./../tests/bug-2208.c:22: void SDCCBUG_DealCardsTo (unsigned char player)
;	genLabel
;	genFunction
;	---------------------------------
; Function SDCCBUG_DealCardsTo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 7 bytes.
_SDCCBUG_DealCardsTo::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -7
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2208.c:26: if ((int)SDCCBUG_handN[player] >= 6 || (int)SDCCBUG_packN == 0) {
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	e, a
; common peephole 98 removed redundant load from e into a.
	add	a, #<(_SDCCBUG_handN)
	ld	c, a
	ld	a, #0x00
	adc	a, #>(_SDCCBUG_handN)
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
; common peephole 98 removed redundant load from d into a.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	sub	a, #0x06
	jp	nc, 00113$
; common peephole 84 jumped to 00113$ directly instead of via 00101$.
;	skipping generated iCode
;	genIfx
	ld	a, (_SDCCBUG_packN+0)
	or	a, a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2208.c:27: return;
;	genRet
;	genLabel
	jp	z, 00113$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00102$.
;cases/./../tests/bug-2208.c:29: i = (int)SDCCBUG_handN[player] + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	a
	ld	-5 (ix), a
;cases/./../tests/bug-2208.c:30: while ((int)i <= 6) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genMult
;fetchPairLong
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_SDCCBUG_hand
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00110$:
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpGt
	cp	a, #0x07
	jp	nc, 00113$
;	skipping generated iCode
;cases/./../tests/bug-2208.c:31: if (SDCCBUG_skill == 4) {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_SDCCBUG_skill)
	sub	a, #0x04
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00163$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00164$.
;	skipping generated iCode
;cases/./../tests/bug-2208.c:32: j = (int)SDCCBUG_packN - 3;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_SDCCBUG_packN)
;	genMinus
	add	a, #0xfd
	ld	-4 (ix), a
;cases/./../tests/bug-2208.c:33: if (SDCCBUG_pack[SDCCBUG_packN].rank > SDCCBUG_pack[j].rank) {
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_SDCCBUG_packN)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, #0x00
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	a, a
	rl	l
;	genPlus
	add	a, #<(_SDCCBUG_pack)
	ld	-3 (ix), a
	ld	a, l
	adc	a, #>(_SDCCBUG_pack)
	ld	-2 (ix), a
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-1 (ix), a
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
;fetchPairLong
;	genPlus
	push	de
;fetchPairLong
	ld	de, #_SDCCBUG_pack
	add	hl, de
;	genPointerGet
;fetchPairLong
; common peephole 96d move inc hl before pop de
	inc	hl
	pop	de
;	_moveFrom_tpair_()
;	genCmpGt
; common peephole 9 loaded a from (hl) directly instead of going through l.
	ld	a, (hl)
	sub	a, -1 (ix)
	jp	po, 00166$
	xor	a, #0x80
00166$:
	jp	p, 00107$
;	skipping generated iCode
;cases/./../tests/bug-2208.c:34: tmp.suit = SDCCBUG_pack[SDCCBUG_packN].suit;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;fetchPairLong
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPointerSet
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLabel
00107$:
;cases/./../tests/bug-2208.c:38: SDCCBUG_hand[player][i].suit = SDCCBUG_pack[SDCCBUG_packN].suit;
;	genLeftShift
	ld	a, -5 (ix)
	add	a, a
;	genPlus
	add	a, e
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, d
	ld	-3 (ix), a
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_SDCCBUG_packN)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	push	de
;fetchPairLong
	ld	de, #_SDCCBUG_pack
	add	hl, de
	pop	de
;	genPointerGet
	ld	a, (hl)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug-2208.c:39: SDCCBUG_hand[player][i].rank = SDCCBUG_pack[SDCCBUG_packN].rank;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_SDCCBUG_packN)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	push	de
;fetchPairLong
	ld	de, #_SDCCBUG_pack
	add	hl, de
;	genPointerGet
;fetchPairLong
; common peephole 96d move inc hl before pop de
	inc	hl
	pop	de
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug-2208.c:40: SDCCBUG_handN[player] = i;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/./../tests/bug-2208.c:41: SDCCBUG_packN -= 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (_SDCCBUG_packN)
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
	ld	(#_SDCCBUG_packN), a
; common peephole 19 loaded (#_SDCCBUG_packN) from a directly instead of using hl.
;cases/./../tests/bug-2208.c:43: if ((int)SDCCBUG_packN == 0) {
;	genIfx
	ld	a, (_SDCCBUG_packN+0)
	or	a, a
;cases/./../tests/bug-2208.c:44: return;
;	genRet
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00109$.
;cases/./../tests/bug-2208.c:46: i += 1;
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	-5 (ix)
; common peephole 7 removed dead load from -5 (ix) into a.
; common peephole 116 incremented in -5 (ix) instead of going through a.
;	genGoto
	jp	00110$
;	genLabel
00113$:
;cases/./../tests/bug-2208.c:48: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total SDCCBUG_DealCardsTo function size at codegen: 5 bytes.
;cases/./../tests/bug-2208.c:51: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2208.c:54: SDCCBUG_packN = 1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_SDCCBUG_packN
	ld	(hl), #0x01
;cases/./../tests/bug-2208.c:55: SDCCBUG_skill = 1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_SDCCBUG_skill
	ld	(hl), #0x01
;cases/./../tests/bug-2208.c:56: SDCCBUG_pack[SDCCBUG_packN].suit = 23;
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	hl, #_SDCCBUG_pack + 2
;	genPointerSet
	ld	(hl), #0x17
;cases/./../tests/bug-2208.c:57: SDCCBUG_pack[SDCCBUG_packN].rank = 42;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_SDCCBUG_packN)
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_SDCCBUG_pack
	add	hl, de
;	genPlus
	inc	hl
;	genPointerSet
	ld	(hl), #0x2a
;cases/./../tests/bug-2208.c:58: SDCCBUG_handN[0] = 0;
;	genAddrOf
	ld	hl, #_SDCCBUG_handN+0
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/bug-2208.c:60: SDCCBUG_DealCardsTo (0);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genCall
	call	_SDCCBUG_DealCardsTo
;cases/./../tests/bug-2208.c:62: ASSERT(SDCCBUG_hand[0][1].suit == 23);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_SDCCBUG_hand + 2)
;	genCmpEq
	cp	a, #0x17
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00133$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003e
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
;	genLabel
00104$:
;cases/./../tests/bug-2208.c:63: ASSERT(SDCCBUG_hand[0][1].rank == 42);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_SDCCBUG_hand + 3)
;	genCmpEq
	cp	a, #0x2a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00134$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003f
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
00106$:
;cases/./../tests/bug-2208.c:64: ASSERT(!SDCCBUG_packN);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_SDCCBUG_packN+0)
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0040
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2208.c:66: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "SDCCBUG_hand[0][1].suit == 23"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-2208.c"
	.db 0x00
___str_3:
	.ascii "SDCCBUG_hand[0][1].rank == 42"
	.db 0x00
___str_4:
	.ascii "!SDCCBUG_packN"
	.db 0x00
;cases/tst_bug-2208.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2208.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;cases/tst_bug-2208.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2208.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_5:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2208.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2208.c:15: return "bug-2208.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2208.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_6:
	.ascii "bug-2208.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__SDCCBUG_skill:
	.db #0x01	;  1
	.area _CABS (ABS)
