;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3470
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl ___prints
	.globl ___numCases
	.globl _func_5
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
_g_2:
	.ds 4
_g_22:
	.ds 4
_g_33:
	.ds 8
_g_38:
	.ds 4
_g_37:
	.ds 2
_g_36:
	.ds 2
_g_39:
	.ds 4
_g_53:
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
;cases/./../tests/bug-3470.c:34: static uint64_t func_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function func_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 27 bytes.
_func_1:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -27
	ld	hl, #-27
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-3470.c:40: for (i = 0; i < 2; i++)
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00108$:
;cases/./../tests/bug-3470.c:41: l_52[i] = 0x33B75CABL;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0xab
	inc	hl
	ld	(hl), #0x5c
	inc	hl
	ld	(hl), #0xb7
	inc	hl
	ld	(hl), #0x33
;cases/./../tests/bug-3470.c:40: for (i = 0; i < 2; i++)
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00108$
;	skipping generated iCode
;cases/./../tests/bug-3470.c:42: for (g_2 = 0; (g_2 != (-23)); g_2--)
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_g_2+0), a
	ld	(_g_2+1), a
	ld	(_g_2+2), a
	ld	(_g_2+3), a
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00114$:
;cases/./../tests/bug-3470.c:45: struct S0 l_13 = {1,18};
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #16
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (hl)
	and	a, #0xf8
	or	a, #0x01
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x12
	inc	hl
	rrd
	ld	a, #0x00
	rld
;cases/./../tests/bug-3470.c:46: int32_t *l_42 = &g_22;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/./../tests/bug-3470.c:47: if (func_5(l_11, g_2, l_12, l_13, g_2))
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genPointerPush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 96c move dec hl before inc sp
; common peephole 96d move dec hl before push af
; common peephole 96b move dec hl before ld a, (_g_2)
; common peephole 96c move dec hl before inc sp
; common peephole 96d move dec hl before push af
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push af
; common peephole 156a swap dec hl / inc hl pair.
; common peephole 96b move inc hl before ld a, (_g_2)
; common peephole 156a swap dec hl / inc hl pair.
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (_g_2)
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push af
; common peephole 156a swap dec hl / inc hl pair.
; common peephole 156b removed inc hl / dec hl pair.
	push	af
	inc	sp
	ld	b, (hl)
	dec	hl
	ld	c, (hl)
; common peephole 96d move dec hl before push bc
	dec	hl
	push	bc
	ld	a, (hl)
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x58ed
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xfe01
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_g_2 + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_g_2)
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffff
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0xfe
	push	hl
;	genCall
	call	_func_5
;	adjustStack by 20
	ld	iy, #20
	add	iy, sp
	ld	sp, iy
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
; common peephole 9 loaded a from h directly instead of going through b.
	ld	a, h
	or	a, c
	or	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;cases/./../tests/bug-3470.c:51: for (i = 0; i < 2; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;cases/./../tests/bug-3470.c:53: for (j = 0; j < 1; j++)
;	genLabel
00130$:
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #19
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;cases/./../tests/bug-3470.c:54: l_31[i][j] = &g_22;
;	genPlus
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #<(_g_22)
	inc	hl
	ld	(hl), #>(_g_22)
;cases/./../tests/bug-3470.c:51: for (i = 0; i < 2; i++)
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00130$
;	skipping generated iCode
;cases/./../tests/bug-3470.c:56: --g_33;
;	genMinus
;	Shift into pair
	ld	hl, #_g_33
	ld	a, (hl)
	add	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;cases/./../tests/bug-3470.c:60: volatile int32_t ***l_40 = &g_36;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/./../tests/bug-3470.c:61: (*l_40) = g_36;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_g_36
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_g_36)
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_g_36 + 1)
	ld	(hl), a
;cases/./../tests/bug-3470.c:62: (**g_36) = (**g_36);
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_g_36)
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #25
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #23
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	genLabel
00106$:
;cases/./../tests/bug-3470.c:64: (*l_42) ^= (((l_41 |= (l_11 >= 0xB0L)) != l_11) ^ g_38);
;	genPointerGet
	ld	bc, (#_g_22 + 0)
	ld	hl, (#_g_22 + 2)
;	genXor
	ld	a, (_g_38+0)
	xor	a, #0x01
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_g_38+1)
	ld	-3 (ix), a
	ld	a, (_g_38+2)
	ld	-2 (ix), a
	ld	a, (_g_38+3)
	ld	-1 (ix), a
;	genXor
	ld	a, c
	xor	a, -4 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, b
	xor	a, -3 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
	xor	a, -2 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	xor	a, -1 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(_g_22), bc
	ld	(_g_22+2), hl
;cases/./../tests/bug-3470.c:42: for (g_2 = 0; (g_2 != (-23)); g_2--)
;	genMinus
;	Shift into pair
	ld	hl, #_g_2
	ld	a, (hl)
	add	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0xff
	ld	(hl), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_g_2)
	sub	a, #0xe9
	jp	nz, 00114$
; common peephole 84 jumped to 00114$ directly instead of via 00183$.
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_g_2 + 1)
	inc	a
	jp	nz, 00114$
; common peephole 84 jumped to 00114$ directly instead of via 00183$.
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_g_2 + 2)
	inc	a
	jp	nz, 00114$
; common peephole 84 jumped to 00114$ directly instead of via 00183$.
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_g_2 + 3)
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00183$.
	jp	nz, 00114$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00184$.
;	skipping generated iCode
;cases/./../tests/bug-3470.c:67: return l_52[0];
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -19 (ix)
	ld	b, -18 (ix)
	ld	e, -17 (ix)
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 3 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	bc
	ld	-25 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-24 (ix), a
	rlca
	sbc	a, a
	ld	-23 (ix), a
	ld	-22 (ix), a
	ld	-21 (ix), a
	ld	-20 (ix), a
;	genRet
	ld	hl, #31
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00116$.
;cases/./../tests/bug-3470.c:68: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total func_1 function size at codegen: 22 bytes.
;cases/./../tests/bug-3470.c:70: int32_t func_5(const int64_t p_6, int32_t p_7, uint32_t p_8, struct S0 p_9, int8_t p_10)
;	genLabel
;	genFunction
;	---------------------------------
; Function func_5
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_func_5::
;cases/./../tests/bug-3470.c:72: return 0;
;	genRet
;fetchPairLong
	ld	de, #0x0000
	ld	l, e
	ld	h, e
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3470.c:73: }
;	genEndFunction
	ret
;	Total func_5 function size at codegen: 1 bytes.
;cases/./../tests/bug-3470.c:78: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_testBug::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-3470.c:82: func_1();
;	genCall
	ld	hl, #0x0000
	add	hl, sp
	push	hl
	call	_func_1
;	adjustStack by 2
	pop	af
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3470.c:85: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total testBug function size at codegen: 5 bytes.
;cases/tst_bug-3470.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3470.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_bug-3470.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3470.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3470.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3470.c:15: return "bug-3470.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3470.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3470.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__g_2:
	.byte #0xb4, #0xfb, #0xc3, #0x09	;  163838900
__xinit__g_22:
	.byte #0x56, #0x2b, #0xe6, #0xd9	; -639227050
__xinit__g_33:
	.byte #0x01, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
__xinit__g_38:
	.byte #0xf7, #0xff, #0xff, #0xff	; -9
__xinit__g_37:
	.dw _g_38
__xinit__g_36:
	.dw (_g_37 + 0)
__xinit__g_39:
	.dw _g_36
	.dw _g_36
__xinit__g_53:
	.db #0xa6	; 166
	.area _CABS (ABS)
