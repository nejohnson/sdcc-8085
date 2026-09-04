;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr33870_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _sort_pagelist
	.globl ___prints
	.globl ___fail
	.globl _vx
	.globl _xx
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
_xx::
	.ds 2
_vx::
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
;cases/./../tests/gcc-torture-execute-pr33870-1.c:32: static inline PgHdr *merge_pagelist(PgHdr *pA, PgHdr *pB)
;	genLabel
;	genFunction
;	---------------------------------
; Function merge_pagelist
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 27 bytes.
_merge_pagelist:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -27
	ld	iy, #-27
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), e
	ld	-1 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:36: xx = &result.x.pDirty;
;	genAddrOf
	ld	hl, #0
	add	hl, sp
	ex	de, hl
;	skipping iCode since result will be rematerialized
;	genCast
	push	hl
	push	af
	ld	hl, #21
	add	hl, sp
	pop	af
	ld	iy, #_xx
	ld	0 (iy), l
; common peephole 50a eliminated dead pop/push hl pair.
	push	af
	ld	hl, #21
	add	hl, sp
	pop	af
	ld	1 (iy), h
	pop	hl
;cases/./../tests/gcc-torture-execute-pr33870-1.c:37: pTail = &result;
;	genCast
;	(locations are the same)
;cases/./../tests/gcc-torture-execute-pr33870-1.c:38: while( pA && pB ){
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:40: pTail->x.pDirty = pA;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0011
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:38: while( pA && pB ){
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:39: if( pA->x.pgno<pB->x.pgno ){
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	bc
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, 2 (iy)
	ld	-4 (ix), a
	ld	a, 3 (iy)
	ld	-3 (ix), a
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genCmpLt
	ld	a, -4 (ix)
	sub	a, l
	ld	a, -3 (ix)
	sbc	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr33870-1.c:40: pTail->x.pDirty = pA;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:41: pTail = pA;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:42: pA = pA->x.pDirty;
;	genAssign
;	(locations are the same)
;	genPointerGet
	ld	hl, #17
	add	hl, bc
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:44: pTail->x.pDirty = pB;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:45: pTail = pB;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:46: pB = pB->x.pDirty;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	push	bc
	ld	bc, #0x0011
	add	hl, bc
	pop	bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-1 (ix), a
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:48: vx = (*xx)->y;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_xx)
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_vx+0), a
	inc	hl
	ld	(_vx+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_vx+1), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:50: if( pA ){
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:51: pTail->x.pDirty = pA;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00112$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:52: }else if( pB ){
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:53: pTail->x.pDirty = pB;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:55: pTail->x.pDirty = 0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:57: return result.x.pDirty;
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00114$.
;cases/./../tests/gcc-torture-execute-pr33870-1.c:58: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total merge_pagelist function size at codegen: 11 bytes.
;cases/./../tests/gcc-torture-execute-pr33870-1.c:60: PgHdr *sort_pagelist(PgHdr *pIn)
;	genLabel
;	genFunction
;	---------------------------------
; Function sort_pagelist
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 87 bytes.
_sort_pagelist::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -87
	ld	iy, #-87
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:64: memset (a, 0, sizeof (a));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x32
00360$:
	ld	(hl), #0x00
	inc	hl
	djnz	00360$
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr33870-1.c:65: while( pIn ){
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00107$:
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	jp	z, 00109$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:66: p = pIn;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:67: pIn = p->x.pDirty;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -2 (ix)
	ld	b, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #17
	add	hl, bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-1 (ix), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:68: p->x.pDirty = 0;
;	genPlus
;fetchPairLong
	ld	hl, #0x0011
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:69: for(i=0; i<25 -1; i++){
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;	genLabel
00153$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:70: if( a[i]==0 ){
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -4 (ix)
	ld	b, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	-12 (ix), l
	ld	-11 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -12 (ix) -11 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:71: a[i] = p;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
;cases/./../tests/gcc-torture-execute-pr33870-1.c:72: break;
;	genGoto
	jp	00104$
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:74: p = merge_pagelist(a[i], p);
;	genAssign
;	(locations are the same)
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), e
	ld	-9 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:36: xx = &result.x.pDirty;
;	genCast
	push	hl
	push	af
	ld	hl, #71
	add	hl, sp
	pop	af
	ld	iy, #_xx
	ld	0 (iy), l
; common peephole 50a eliminated dead pop/push hl pair.
	push	af
	ld	hl, #71
	add	hl, sp
	pop	af
	ld	1 (iy), h
	pop	hl
;cases/./../tests/gcc-torture-execute-pr33870-1.c:37: pTail = &result;
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #50
	add	hl, sp
	ex	de, hl
;cases/./../tests/gcc-torture-execute-pr33870-1.c:38: while( pA && pB ){
;	genLabel
00112$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:40: pTail->x.pDirty = pA;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0011
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:38: while( pA && pB ){
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00117$
;	genIfx
	ld	a, -9 (ix)
	or	a, -10 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00117$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:39: if( pA->x.pgno<pB->x.pgno ){
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-7 (ix), a
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-5 (ix), a
;	genCmpLt
	ld	a, -8 (ix)
	sub	a, -6 (ix)
	ld	a, -7 (ix)
	sbc	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00114$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr33870-1.c:40: pTail->x.pDirty = pA;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:41: pTail = pA;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:42: pA = pA->x.pDirty;
;	genAssign
;	(locations are the same)
;	genPointerGet
	ld	hl, #17
	add	hl, bc
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:44: pTail->x.pDirty = pB;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:45: pTail = pB;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:46: pB = pB->x.pDirty;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	push	bc
	ld	bc, #0x0011
	add	hl, bc
	pop	bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-9 (ix), a
;	genLabel
00115$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:48: vx = (*xx)->y;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_xx)
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_vx+0), a
	inc	hl
	ld	(_vx+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_vx+1), a
;	genGoto
	jp	00112$
;	genLabel
00117$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:50: if( pA ){
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00122$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:51: pTail->x.pDirty = pA;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00123$
;	genLabel
00122$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:52: }else if( pB ){
;	genIfx
	ld	a, -9 (ix)
	or	a, -10 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:53: pTail->x.pDirty = pB;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00123$
;	genLabel
00120$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:55: pTail->x.pDirty = 0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
;	genLabel
00123$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:57: return result.x.pDirty;
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -20 (ix)
	ld	d, -19 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:75: a[i] = 0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:76: a[i] = 0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:69: for(i=0; i<25 -1; i++){
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00363$.
; common peephole 164 eliminated relative conditional jump.
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, -4 (ix)
	sub	a, #0x18
	jp	c, 00153$
;	skipping generated iCode
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:79: if( i==25 -1 ){
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x18
	or	a, -5 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00364$.
	jp	nz, 00107$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00365$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr33870-1.c:80: a[i] = merge_pagelist(a[i], p);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -6 (ix)
	ld	b, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	-14 (ix), l
	ld	-13 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -14 (ix) -13 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-11 (ix), a
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), e
	ld	-9 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:36: xx = &result.x.pDirty;
;	genCast
	push	hl
	push	af
	ld	hl, #71
	add	hl, sp
	pop	af
	ld	iy, #_xx
	ld	0 (iy), l
; common peephole 50a eliminated dead pop/push hl pair.
	push	af
	ld	hl, #71
	add	hl, sp
	pop	af
	ld	1 (iy), h
;cases/./../tests/gcc-torture-execute-pr33870-1.c:37: pTail = &result;
;	genCast
; common peephole 50a eliminated dead pop/push hl pair.
	push	af
	ld	hl, #54
	add	hl, sp
; common peephole 50a eliminated dead pop/push hl pair.
; common peephole 51 eliminated dead pop/push af pair.
	ld	-4 (ix), l
	ld	hl, #54
	add	hl, sp
	pop	af
	ld	-3 (ix), h
	pop	hl
;cases/./../tests/gcc-torture-execute-pr33870-1.c:38: while( pA && pB ){
;	genLabel
00126$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:40: pTail->x.pDirty = pA;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0011
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-8 (ix), l
	ld	-7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/gcc-torture-execute-pr33870-1.c:38: while( pA && pB ){
;	genIfx
	ld	a, -11 (ix)
	or	a, -12 (ix)
	jp	z, 00131$
;	genIfx
	ld	a, -9 (ix)
	or	a, -10 (ix)
	jp	z, 00131$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:39: if( pA->x.pgno<pB->x.pgno ){
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -11 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-5 (ix), a
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-4 (ix), a
	ld	a, -9 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00128$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr33870-1.c:40: pTail->x.pDirty = pA;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:41: pTail = pA;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -11 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:42: pA = pA->x.pDirty;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -12 (ix)
	ld	b, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #17
	add	hl, bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-11 (ix), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
;	genLabel
00128$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:44: pTail->x.pDirty = pB;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:45: pTail = pB;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-4 (ix), a
	ld	a, -9 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:46: pB = pB->x.pDirty;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x0011
	add	hl, de
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-9 (ix), a
;	genLabel
00129$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:48: vx = (*xx)->y;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_xx)
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_vx+0), a
	inc	hl
	ld	(_vx+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_vx+1), a
;	genGoto
	jp	00126$
;	genLabel
00131$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:50: if( pA ){
;	genIfx
	ld	a, -11 (ix)
	or	a, -12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00136$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:51: pTail->x.pDirty = pA;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
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
	jr	00137$
;	genLabel
00136$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:52: }else if( pB ){
;	genIfx
	ld	a, -9 (ix)
	or	a, -10 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00134$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:53: pTail->x.pDirty = pB;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00137$
;	genLabel
00134$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:55: pTail->x.pDirty = 0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genLabel
00137$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:57: return result.x.pDirty;
;	genPointerGet
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -20 (ix)
	ld	-4 (ix), a
	ld	a, -19 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:80: a[i] = merge_pagelist(a[i], p);
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;	genGoto
	jp	00107$
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:83: p = a[0];
;	genPointerGet
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -87 (ix)
	ld	-6 (ix), a
	ld	a, -86 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:84: for(i=1; i<25; i++){
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), #0x01
	ld	-3 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genLabel
00155$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:85: p = merge_pagelist (p, a[i]);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;fetchPairLong
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-9 (ix), a
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:36: xx = &result.x.pDirty;
;	genCast
	push	hl
	push	af
	ld	hl, #71
	add	hl, sp
	pop	af
	ld	iy, #_xx
	ld	0 (iy), l
; common peephole 50a eliminated dead pop/push hl pair.
	push	af
	ld	hl, #71
	add	hl, sp
	pop	af
	ld	1 (iy), h
	pop	hl
;cases/./../tests/gcc-torture-execute-pr33870-1.c:37: pTail = &result;
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #50
	add	hl, sp
	ex	de, hl
;cases/./../tests/gcc-torture-execute-pr33870-1.c:38: while( pA && pB ){
;	genLabel
00140$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:40: pTail->x.pDirty = pA;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0011
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:38: while( pA && pB ){
;	genIfx
	ld	a, -7 (ix)
	or	a, -8 (ix)
	jp	z, 00145$
;	genIfx
	ld	a, -9 (ix)
	or	a, -10 (ix)
	jp	z, 00145$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:39: if( pA->x.pgno<pB->x.pgno ){
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
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
;	genCmpLt
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00142$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr33870-1.c:40: pTail->x.pDirty = pA;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:41: pTail = pA;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -8 (ix)
	ld	d, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:42: pA = pA->x.pDirty;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -8 (ix)
	ld	b, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #17
	add	hl, bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-7 (ix), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00143$
;	genLabel
00142$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:44: pTail->x.pDirty = pB;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:45: pTail = pB;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:46: pB = pB->x.pDirty;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #17
	add	hl, bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-9 (ix), a
;	genLabel
00143$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:48: vx = (*xx)->y;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_xx)
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
; common peephole 96b move inc hl before ld (_vx+0), a
	inc	hl
	ld	(_vx+0), a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	(_vx+1), a
;	genGoto
	jp	00140$
;	genLabel
00145$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:50: if( pA ){
;	genIfx
	ld	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00150$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:51: pTail->x.pDirty = pA;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00151$
;	genLabel
00150$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:52: }else if( pB ){
;	genIfx
	ld	a, -9 (ix)
	or	a, -10 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00148$
;cases/./../tests/gcc-torture-execute-pr33870-1.c:53: pTail->x.pDirty = pB;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00151$
;	genLabel
00148$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:55: pTail->x.pDirty = 0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genLabel
00151$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:57: return result.x.pDirty;
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -20 (ix)
	ld	d, -19 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:85: p = merge_pagelist (p, a[i]);
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:84: for(i=1; i<25; i++){
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 159 removed unused label 00367$.
; common peephole 164 eliminated relative conditional jump.
;	genCmpLt
	ld	a, -4 (ix)
	sub	a, #0x19
	jp	c, 00155$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr33870-1.c:87: return p;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00157$.
;cases/./../tests/gcc-torture-execute-pr33870-1.c:88: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total sort_pagelist function size at codegen: 18 bytes.
;cases/./../tests/gcc-torture-execute-pr33870-1.c:93: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 115 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -115
	ld	hl, #-115
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-pr33870-1.c:99: a[0].x.pgno = 5;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-113 (ix), #0x05
	ld	-112 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/gcc-torture-execute-pr33870-1.c:100: a[0].x.pDirty = &a[1];
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #23
	add	hl, sp
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-98 (ix), l
	ld	-97 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:101: a[1].x.pgno = 4;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-90 (ix), #0x04
	ld	-89 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/gcc-torture-execute-pr33870-1.c:102: a[1].x.pDirty = &a[2];
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #46
	add	hl, sp
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-75 (ix), l
	ld	-74 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:103: a[2].x.pgno = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-67 (ix), #0x01
	ld	-66 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/gcc-torture-execute-pr33870-1.c:104: a[2].x.pDirty = &a[3];
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #69
	add	hl, sp
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-52 (ix), l
	ld	-51 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:105: a[3].x.pgno = 3;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-44 (ix), #0x03
	ld	-43 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/gcc-torture-execute-pr33870-1.c:106: a[3].x.pDirty = 0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-29 (ix), a
	ld	-28 (ix), a
;cases/./../tests/gcc-torture-execute-pr33870-1.c:107: p = sort_pagelist (&a[0]);
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_sort_pagelist
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr33870-1.c:108: if (p->x.pDirty == p)
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	de
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
	ld	l, 17 (iy)
	ld	h, 18 (iy)
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, de
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr33870-1.c:109: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr33870-1.c:110: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-pr33870-1.c:113: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 5 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr33870-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr33870-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr33870-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr33870-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr33870-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr33870-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr33870-1.c:15: return "gcc-torture-execute-pr33870-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr33870-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr33870-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
