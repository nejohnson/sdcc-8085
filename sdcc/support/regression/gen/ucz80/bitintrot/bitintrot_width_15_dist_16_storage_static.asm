;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitintrot_width_15_dist_16_storage_static
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testRot
	.globl ___prints
	.globl ___fail
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
_testRot_t1_10000_13:
	.ds 2
_testRot_t2_10000_13:
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
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:38: volatile static bitinttype t1 = TESTVECT1;
;	genAssign
;fetchPairLong
	ld	hl, #0x00a5
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testRot_t1_10000_13), hl
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:39: volatile static bitinttype t2 = TESTVECT2;
;	genAssign
;fetchPairLong
	ld	hl, #0x2a55
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testRot_t2_10000_13), hl
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:36: testRot (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testRot
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testRot::
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:41: ASSERT (ROL (t1) == ROL (TESTVECT1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_testRot_t1_10000_13)
	add	hl, hl
	ld	a, h
	and	a, #0x7f
	ld	h, a
;	genRightShift
	ld	a, (_testRot_t1_10000_13+1)
	rlca
	rlca
	and	a, #0x03
; common peephole 1 removed dead load from #0x00 into c.
;	genOr
	or	a, l
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x4a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00223$
	dec	h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00223$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0029
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
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:42: ASSERT (ROL (t2) == ROL (TESTVECT2));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_testRot_t2_10000_13)
	add	hl, hl
	ld	a, h
	and	a, #0x7f
	ld	h, a
;	genRightShift
	ld	a, (_testRot_t2_10000_13+1)
	rlca
	rlca
	and	a, #0x03
; common peephole 1 removed dead load from #0x00 into c.
;	genOr
	or	a, l
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	de, #0x54aa
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00224$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002a
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
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:43: ASSERT (ROR (t1) == ROR (TESTVECT1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;fetchPairLong
	ld	hl, (_testRot_t1_10000_13)
	srl	h
	rr	l
;	genLeftShift
	ld	a, (_testRot_t1_10000_13+0)
	rrca
	rrca
; common peephole 40a combined redundant ANDs #0xc0 and #0x7f.
	and	a, #0x40
; common peephole 1 removed dead load from #0x00 into c.
;	genOr
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	or	a, h
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00225$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x52
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
00225$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002b
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
00108$:
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:44: ASSERT (ROR (t2) == ROR (TESTVECT2));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
;fetchPairLong
	ld	hl, (_testRot_t2_10000_13)
	srl	h
	rr	l
;	genLeftShift
	ld	a, (_testRot_t2_10000_13+0)
	rrca
	rrca
; common peephole 40a combined redundant ANDs #0xc0 and #0x7f.
	and	a, #0x40
; common peephole 1 removed dead load from #0x00 into c.
;	genOr
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	or	a, h
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x55
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00226$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
00226$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:45: ASSERT (NROL (t1) == NROL (TESTVECT1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
	ld	a, (_testRot_t1_10000_13+0)
	and	a, #0x7f
; common peephole 1 removed dead load from #0x00 into e.
;	genRightShift
	push	af
	ld	a, (_testRot_t1_10000_13+1)
	rlca
	rlca
	and	a, #0x03
	ld	c, a
	pop	af
; common peephole 1 removed dead load from #0x00 into b.
;	genOr
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x25
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
00227$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:46: ASSERT (NROL (t2) == NROL (TESTVECT2));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
	ld	a, (_testRot_t2_10000_13+0)
	and	a, #0x7f
; common peephole 1 removed dead load from #0x00 into e.
;	genRightShift
	push	af
	ld	a, (_testRot_t2_10000_13+1)
	rlca
	rlca
	and	a, #0x03
	ld	c, a
	pop	af
; common peephole 1 removed dead load from #0x00 into b.
;	genOr
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x55
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00228$
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
00228$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00114$:
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:47: ASSERT (NROL2 (t1) == NROL2 (TESTVECT1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
; common peephole 53 used direct memory load instead of indirect.
	ld	a, (#_testRot_t1_10000_13 + 1)
	ld	c, a
; common peephole 1 removed dead load from #0x00 into b.
;	genLeftShift
	ld	a, (_testRot_t1_10000_13+0)
	rrca
	rrca
; common peephole 40a combined redundant ANDs #0xc0 and #0x7f.
	and	a, #0x40
; common peephole 1 removed dead load from #0x00 into e.
;	genOr
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00229$
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
00229$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00116$:
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:48: ASSERT (NROL2 (t2) == NROL2 (TESTVECT2));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genRightShift
; common peephole 53 used direct memory load instead of indirect.
	ld	a, (#_testRot_t2_10000_13 + 1)
	ld	l, a
; common peephole 1 removed dead load from #0x00 into h.
;	genLeftShift
	ld	a, (_testRot_t2_10000_13+0)
	rrca
	rrca
; common peephole 40a combined redundant ANDs #0xc0 and #0x7f.
	and	a, #0x40
; common peephole 1 removed dead load from #0x00 into c.
;	genOr
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	de, #0x402a
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00230$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0030
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00118$:
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:50: t1 = ROL(t1);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_testRot_t1_10000_13)
	add	hl, hl
	ld	a, h
	and	a, #0x7f
	ld	h, a
;	genRightShift
	ld	a, (_testRot_t1_10000_13+1)
	rlca
	rlca
	and	a, #0x03
; common peephole 1 removed dead load from #0x00 into c.
;	genOr
	or	a, l
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testRot_t1_10000_13+0), a
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 57 used direct memory store instead of indirect.
	ld	a, h
	ld	(#_testRot_t1_10000_13 + 1), a
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:51: t2 = ROL(t2);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_testRot_t2_10000_13)
	add	hl, hl
	ld	a, h
	and	a, #0x7f
	ld	h, a
;	genRightShift
	ld	a, (_testRot_t2_10000_13+1)
	rlca
	rlca
	and	a, #0x03
; common peephole 1 removed dead load from #0x00 into c.
;	genOr
	or	a, l
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testRot_t2_10000_13+0), a
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 57 used direct memory store instead of indirect.
	ld	a, h
	ld	(#_testRot_t2_10000_13 + 1), a
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:52: ASSERT (t1 == ROL (TESTVECT1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testRot_t1_10000_13)
	sub	a, #0x4a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00231$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testRot_t1_10000_13 + 1)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
; common peephole 81 removed jp by using inverse jump logic
00231$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0034
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00120$:
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:53: ASSERT (t2 == ROL (TESTVECT2));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testRot_t2_10000_13)
	sub	a, #0xaa
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00232$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testRot_t2_10000_13 + 1)
	sub	a, #0x54
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00122$
; common peephole 81 removed jp by using inverse jump logic
00232$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0035
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00122$:
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:55: t1 = ROR(t1);
;	genRightShift
;fetchPairLong
	ld	hl, (_testRot_t1_10000_13)
	srl	h
	rr	l
;	genLeftShift
	ld	a, (_testRot_t1_10000_13+0)
	rrca
	rrca
; common peephole 9 loaded a from a directly instead of going through b.
; common peephole 0a removed redundant load from a into a.
; common peephole 40a combined redundant ANDs #0xc0 and #0x7f.
	and	a, #0x40
	ld	b, a
; common peephole 1 removed dead load from #0x00 into c.
;	genOr
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 57 used direct memory store instead of indirect.
	ld	a, l
; common peephole 130h removed unnecessary +0 to immediate
	ld	(#_testRot_t1_10000_13), a
	ld	a, h
	or	a, b
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testRot_t1_10000_13+1), a
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:56: t2 = ROR(t2);
;	genRightShift
;fetchPairLong
	ld	hl, (_testRot_t2_10000_13)
	srl	h
	rr	l
;	genLeftShift
	ld	a, (_testRot_t2_10000_13+0)
	rrca
	rrca
; common peephole 9 loaded a from a directly instead of going through b.
; common peephole 0a removed redundant load from a into a.
; common peephole 40a combined redundant ANDs #0xc0 and #0x7f.
	and	a, #0x40
	ld	b, a
; common peephole 1 removed dead load from #0x00 into c.
;	genOr
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 57 used direct memory store instead of indirect.
	ld	a, l
; common peephole 130h removed unnecessary +0 to immediate
	ld	(#_testRot_t2_10000_13), a
	ld	a, h
	or	a, b
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_testRot_t2_10000_13+1), a
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:57: ASSERT (t1 == TESTVECT1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testRot_t1_10000_13)
	sub	a, #0xa5
; common peephole 54 used hl instead of iy.
	ld	hl, #_testRot_t1_10000_13 + 1
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00233$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0039
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00124$:
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:58: ASSERT (t2 == TESTVECT2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testRot_t2_10000_13)
	sub	a, #0x55
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00234$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testRot_t2_10000_13 + 1)
	sub	a, #0x2a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00234$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:60: }
;	genEndFunction
	ret
;	Total testRot function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "ROL (t1) == ROL (TESTVECT1)"
	.db 0x00
___str_2:
	.ascii "cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c"
	.db 0x00
___str_3:
	.ascii "ROL (t2) == ROL (TESTVECT2)"
	.db 0x00
___str_4:
	.ascii "ROR (t1) == ROR (TESTVECT1)"
	.db 0x00
___str_5:
	.ascii "ROR (t2) == ROR (TESTVECT2)"
	.db 0x00
___str_6:
	.ascii "NROL (t1) == NROL (TESTVECT1)"
	.db 0x00
___str_7:
	.ascii "NROL (t2) == NROL (TESTVECT2)"
	.db 0x00
___str_8:
	.ascii "NROL2 (t1) == NROL2 (TESTVECT1)"
	.db 0x00
___str_9:
	.ascii "NROL2 (t2) == NROL2 (TESTVECT2)"
	.db 0x00
___str_10:
	.ascii "t1 == ROL (TESTVECT1)"
	.db 0x00
___str_11:
	.ascii "t2 == ROL (TESTVECT2)"
	.db 0x00
___str_12:
	.ascii "t1 == TESTVECT1"
	.db 0x00
___str_13:
	.ascii "t2 == TESTVECT2"
	.db 0x00
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:64: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:66: __prints("Running testRot\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_14
;	genCall
	call	___prints
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:67: testRot();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:68: }
;	genEndFunction
	jp	_testRot
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_14:
	.ascii "Running testRot"
	.db 0x0a
	.db 0x00
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:73: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:75: return "bitintrot_width_15_dist_16_storage_static";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitintrot/bitintrot_width_15_dist_16_storage_static.c:76: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_15:
	.ascii "bitintrot_width_15_dist_16_storage_static"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
