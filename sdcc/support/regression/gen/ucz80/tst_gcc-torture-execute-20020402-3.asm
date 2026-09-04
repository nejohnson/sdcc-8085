;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20020402_3
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _blockvector_for_pc_sect
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
;cases/./../tests/gcc-torture-execute-20020402-3.c:48: struct blockvector *blockvector_for_pc_sect(register CORE_ADDR pc,
;	genLabel
;	genFunction
;	---------------------------------
; Function blockvector_for_pc_sect
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 16 bytes.
_blockvector_for_pc_sect::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -16
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-20020402-3.c:55: bl = symtab->blockvector;
;	genPointerGet
;fetchPairLong
	ld	l, 12 (ix)
	ld	h, 13 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-7 (ix), a
;cases/./../tests/gcc-torture-execute-20020402-3.c:58: bot = 0;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;cases/./../tests/gcc-torture-execute-20020402-3.c:59: top = bl->nblocks;
;	genPointerGet
;fetchPairLong
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;cases/./../tests/gcc-torture-execute-20020402-3.c:61: while (top - bot > 1)
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genLabel
00104$:
;	genMinus
	ld	a, e
	sub	a, c
	ld	l, a
	ld	a, d
	sbc	a, b
	ld	h, a
;	genCmpGt
	ld	a, #0x01
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00162$
	xor	a, #0x80
00162$:
	jp	p, 00125$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20020402-3.c:63: half = (top - bot + 1) >> 1;
;	genPlus
	inc	hl
;	genRightShift
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sra	-3 (ix)
	rr	-4 (ix)
;cases/./../tests/gcc-torture-execute-20020402-3.c:64: b = bl->block[bot + half];
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	a, l
;	genLeftShift
	add	a, a
;	genPlus
	add	a, -6 (ix)
	ld	l, a
	ld	a, #0x00
	adc	a, -5 (ix)
;	genPointerGet
;fetchPairLong
	ld	h, a
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;cases/./../tests/gcc-torture-execute-20020402-3.c:65: if (b->startaddr <= pc)
;	genPointerGet
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	bc
	pop	de
;cases/./../tests/gcc-torture-execute-20020402-3.c:66: bot += half;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/gcc-torture-execute-20020402-3.c:65: if (b->startaddr <= pc)
;	genCmpGt
	ld	a, 4 (ix)
	sub	a, -16 (ix)
	ld	a, 5 (ix)
	sbc	a, -15 (ix)
	ld	a, 6 (ix)
	sbc	a, -14 (ix)
	ld	a, 7 (ix)
	sbc	a, -13 (ix)
	ld	a, 8 (ix)
	sbc	a, -12 (ix)
	ld	a, 9 (ix)
	sbc	a, -11 (ix)
	ld	a, 10 (ix)
	sbc	a, -10 (ix)
	ld	a, 11 (ix)
	sbc	a, -9 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00102$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20020402-3.c:66: bot += half;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -2 (ix)
	ld	b, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genGoto
	jp	00104$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-20020402-3.c:68: top = bot + half;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00104$
;cases/./../tests/gcc-torture-execute-20020402-3.c:71: while (bot >= 0)
;	genLabel
00125$:
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), c
	ld	-1 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00109$:
;	genCmpLt
	bit	7, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00111$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20020402-3.c:73: b = bl->block[bot];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 0 f_dead 1
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;cases/./../tests/gcc-torture-execute-20020402-3.c:74: if (b->endaddr > pc)
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	add	hl, bc
	ld	bc, #0x0008
	ldir
;	genCmpGt
	ld	a, 4 (ix)
	sub	a, -16 (ix)
	ld	a, 5 (ix)
	sbc	a, -15 (ix)
	ld	a, 6 (ix)
	sbc	a, -14 (ix)
	ld	a, 7 (ix)
	sbc	a, -13 (ix)
	ld	a, 8 (ix)
	sbc	a, -12 (ix)
	ld	a, 9 (ix)
	sbc	a, -11 (ix)
	ld	a, 10 (ix)
	sbc	a, -10 (ix)
	ld	a, 11 (ix)
	sbc	a, -9 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00108$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20020402-3.c:76: return bl;
;	genRet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -8 (ix)
	ld	d, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-20020402-3.c:78: bot--;
;	genMinus
;fetchPairLong
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	dec	hl
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00111$:
;cases/./../tests/gcc-torture-execute-20020402-3.c:80: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00112$:
;cases/./../tests/gcc-torture-execute-20020402-3.c:81: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 10
	pop	af
	pop	af
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total blockvector_for_pc_sect function size at codegen: 22 bytes.
;cases/./../tests/gcc-torture-execute-20020402-3.c:84: void testTortureExecute(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 70 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -70
	ld	hl, #-70
	add	hl, sp
;cases/./../tests/gcc-torture-execute-20020402-3.c:89: struct block a = { 0, 0x10000, 0, 0, 1, 20 };
;	genAddrOf
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), #0x01
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-54 (ix), a
	ld	-53 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-52 (ix), a
	ld	-51 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-50 (ix), #0x01
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-49 (ix), #0x14
	ld	-48 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-47 (ix), a
	ld	-46 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-45 (ix), a
	ld	-44 (ix), a
;cases/./../tests/gcc-torture-execute-20020402-3.c:90: struct block b = { 0x10000, 0x20000, 0, 0, 1, 20 };
;	genAddrOf
	ld	hl, #27
	add	hl, sp
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c,l
	ld	b,h
; common peephole 104 removed redundant load from bc into hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), #0x01
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #35
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), #0x02
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-27 (ix), a
	ld	-26 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-25 (ix), a
	ld	-24 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-23 (ix), #0x01
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-22 (ix), #0x14
	ld	-21 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-20 (ix), a
	ld	-19 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-18 (ix), a
	ld	-17 (ix), a
;cases/./../tests/gcc-torture-execute-20020402-3.c:91: struct blockvector bv = { 2, { &a, &b } };
;	genAddrOf
	ld	hl, #54
	add	hl, sp
;	genPointerSet
	ld	(hl), #0x02
	inc	hl
	ld	(hl), #0x00
	dec	hl
;	skipping iCode since result will be rematerialized
;	genCast
;	(locations are the same)
;	genPointerSet
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), e
	ld	-13 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genCast
;	(locations are the same)
;	genPointerSet
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), c
	ld	-11 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020402-3.c:92: struct symtab s = { &bv };
;	skipping iCode since result will be rematerialized
;	genCast
;	(locations are the same)
;	genPointerSet
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020402-3.c:96: ret = blockvector_for_pc_sect(0x500, &s);
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #60
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x05
	push	hl
;	genCall
	call	_blockvector_for_pc_sect
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020402-3.c:98: ASSERT (ret != NULL && ret->nblocks == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00162$.
;	skipping generated iCode
;	genLabel
00103$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0062
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
;cases/./../tests/gcc-torture-execute-20020402-3.c:99: ASSERT (ret->block[0] != NULL && ret->block[0]->startaddr == 0LL && ret->block[0]->endaddr == 65536LL);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;	genPointerGet
	push	de
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #66
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	bc
	pop	de
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;	genAssign
;	(locations are the same)
;	genPointerGet
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #64
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	add	hl, bc
	ld	bc, #0x0008
	ldir
	pop	bc
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
; common peephole 81 removed jp by using inverse jump logic
00163$:
;	skipping generated iCode
;	genLabel
00108$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0063
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
	pop	bc
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-20020402-3.c:100: ASSERT (ret->block[1] != NULL && ret->block[1]->startaddr == 65536LL && ret->block[1]->endaddr == 131072LL);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	(locations are the same)
;	genPointerGet
	ld	hl, #4
	add	hl, bc
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
;	genPointerGet
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #64
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	ldir
	pop	de
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
; common peephole 84 jumped to 00116$ directly instead of via 00164$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00164$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00165$.
;	skipping generated iCode
;	genAssign
;	(locations are the same)
;	genPointerGet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #62
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0008
	add	hl, bc
	ld	bc, #0x0008
	ldir
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00166$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00117$
; common peephole 81 removed jp by using inverse jump logic
00166$:
;	skipping generated iCode
;	genLabel
00116$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0064
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
00117$:
;cases/./../tests/gcc-torture-execute-20020402-3.c:102: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20020402-3.c:106: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 21 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "ret != NULL && ret->nblocks == 2"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/gcc-torture-execute-20020402-3.c"
	.db 0x00
___str_3:
	.ascii "ret->block[0] != NULL && ret->block[0]->startaddr == 0LL && "
	.ascii "ret->block[0]->endaddr == 65536LL"
	.db 0x00
___str_4:
	.ascii "ret->block[1] != NULL && ret->block[1]->startaddr == 65536LL"
	.ascii " && ret->block[1]->endaddr == 131072LL"
	.db 0x00
;cases/tst_gcc-torture-execute-20020402-3.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20020402-3.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20020402-3.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020402-3.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_5:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20020402-3.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20020402-3.c:15: return "gcc-torture-execute-20020402-3.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020402-3.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_6:
	.ascii "gcc-torture-execute-20020402-3.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
