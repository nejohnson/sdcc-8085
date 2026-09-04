;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bug_2621_type_unsigned_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _h
	.globl _g
	.globl _f
	.globl _t
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
;cases/bug-2621/bug-2621_type_unsigned_long.c:11: void t(unsigned int i)
;	genLabel
;	genFunction
;	---------------------------------
; Function t
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_t::
;cases/bug-2621/bug-2621_type_unsigned_long.c:13: i;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-2621/bug-2621_type_unsigned_long.c:14: }
;	genEndFunction
	ret
;	Total t function size at codegen: 1 bytes.
;cases/bug-2621/bug-2621_type_unsigned_long.c:17: unsigned long f( unsigned long p)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_f::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bug-2621/bug-2621_type_unsigned_long.c:19: register unsigned long v = p;
;	genAssign
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 50c eliminated dead push/inc sp pair.
	push	de
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/bug-2621/bug-2621_type_unsigned_long.c:21: if(v == 0x0000ffff)
;	genCmpEq
	ld	a, e
	and	a, d
	inc	a
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00136$.
;	skipping generated iCode
;cases/bug-2621/bug-2621_type_unsigned_long.c:23: else if(v == 0x00010000)
;	genCmpEq
	ld	a, e
	or	a, a
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00137$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
; common peephole 81 removed jp by using inverse jump logic
00137$:
;	skipping generated iCode
;cases/bug-2621/bug-2621_type_unsigned_long.c:25: else if(v == 0xffff0001)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
; common peephole 84 jumped to 00110$ directly instead of via 00138$.
	ld	a, l
	and	a, h
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00138$.
;	skipping generated iCode
;cases/bug-2621/bug-2621_type_unsigned_long.c:28: return(v);
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
; common peephole 82 removed jp by using inverse jump logic
00109$:
;cases/bug-2621/bug-2621_type_unsigned_long.c:30: return(v);
;	genRet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00110$:
;cases/bug-2621/bug-2621_type_unsigned_long.c:31: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total f function size at codegen: 5 bytes.
;cases/bug-2621/bug-2621_type_unsigned_long.c:36: unsigned long g(unsigned long p)
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_g::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bug-2621/bug-2621_type_unsigned_long.c:38: register unsigned long v = p;
;	genAssign
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 50c eliminated dead push/inc sp pair.
	push	de
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/bug-2621/bug-2621_type_unsigned_long.c:40: if(v == 0x0000ffff)
;	genCmpEq
	ld	a, e
	and	a, d
	inc	a
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00136$.
;	skipping generated iCode
;cases/bug-2621/bug-2621_type_unsigned_long.c:42: else if(v == 0x00010000)
;	genCmpEq
	ld	a, e
	or	a, a
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00137$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
; common peephole 81 removed jp by using inverse jump logic
00137$:
;	skipping generated iCode
;cases/bug-2621/bug-2621_type_unsigned_long.c:44: else if(v == 0xffff0001)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
; common peephole 84 jumped to 00110$ directly instead of via 00138$.
	ld	a, l
	and	a, h
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00138$.
;	skipping generated iCode
;cases/bug-2621/bug-2621_type_unsigned_long.c:47: return(v);
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
; common peephole 82 removed jp by using inverse jump logic
00109$:
;cases/bug-2621/bug-2621_type_unsigned_long.c:50: return(v >> 16);
;	genRightShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	pop	de
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00110$:
;cases/bug-2621/bug-2621_type_unsigned_long.c:51: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total g function size at codegen: 5 bytes.
;cases/bug-2621/bug-2621_type_unsigned_long.c:54: unsigned long h( unsigned long p)
;	genLabel
;	genFunction
;	---------------------------------
; Function h
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_h::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/bug-2621/bug-2621_type_unsigned_long.c:58: if(v == 0x0000ffff)
;	genCmpEq
	ld	a, c
	and	a, b
	inc	a
	or	a, l
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00136$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00137$.
;	skipping generated iCode
;cases/bug-2621/bug-2621_type_unsigned_long.c:59: v |= 0x55;
;	genOr
	ld	a, c
	or	a, #0x55
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00108$:
;cases/bug-2621/bug-2621_type_unsigned_long.c:60: else if(v == 0x00010000)
;	genCmpEq
	ld	a, c
	or	a, a
	or	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
; common peephole 84 jumped to 00105$ directly instead of via 00138$.
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, h
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00138$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00139$.
;	skipping generated iCode
;cases/bug-2621/bug-2621_type_unsigned_long.c:61: v &= 0x55;
;	genAnd
	ld	a, c
	and	a, #0x55
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
	ld	hl, #0x0000
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00105$:
;cases/bug-2621/bug-2621_type_unsigned_long.c:62: else if(v == 0xffff0001)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
; common peephole 84 jumped to 00102$ directly instead of via 00140$.
	ld	a, l
	and	a, h
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00140$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00141$.
;	skipping generated iCode
;cases/bug-2621/bug-2621_type_unsigned_long.c:63: v |= 0xaa;
;	genOr
	ld	a, c
	or	a, #0xaa
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00102$:
;cases/bug-2621/bug-2621_type_unsigned_long.c:65: return(v);
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00109$:
;cases/bug-2621/bug-2621_type_unsigned_long.c:67: return(v);
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00110$.
;cases/bug-2621/bug-2621_type_unsigned_long.c:68: }
;	genEndFunction
	ret
;	Total h function size at codegen: 1 bytes.
;cases/bug-2621/bug-2621_type_unsigned_long.c:73: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/bug-2621/bug-2621_type_unsigned_long.c:76: ASSERT(f(0x55aa55aa) == 0x55aa55aa);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x55aa
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_f
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xaa
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00193$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x55
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00193$
	ld	de, #0x55aa
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00193$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004c
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
;cases/bug-2621/bug-2621_type_unsigned_long.c:77: ASSERT(f(0x0000ffff) == 0x0000ffff);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
	ld	hl, #0x0000
;	genCall
	call	_f
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	a, e
	and	a, d
	inc	a
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00194$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004d
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
;cases/bug-2621/bug-2621_type_unsigned_long.c:80: ASSERT(f(0xffff0001) == 0xffff0001);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
	ld	hl, #0xffff
;	genCall
	call	_f
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00195$
	ld	a, l
	and	a, h
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
00195$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0050
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
;cases/bug-2621/bug-2621_type_unsigned_long.c:82: ASSERT(g(0x55aa55aa) == 0x55aa55aa);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x55aa
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_g
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xaa
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00196$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x55
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00196$
	ld	de, #0x55aa
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
00196$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0052
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
;cases/bug-2621/bug-2621_type_unsigned_long.c:83: ASSERT(g(0x0000ffff) == 0x00000000);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
	ld	hl, #0x0000
;	genCall
	call	_g
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, h
	or	a, l
	or	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAddrOf
	ld	de, #___str_6+0
;	genCast
;	(locations are the same)
;	genAddrOf
	ld	hl, #___str_0+0
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0053
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #___str_2
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/bug-2621/bug-2621_type_unsigned_long.c:84: ASSERT(g(0xffff0001) == 0x0000ffff);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
	ld	hl, #0xffff
;	genCall
	call	_g
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	a, e
	and	a, d
	inc	a
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00197$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0054
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
;cases/bug-2621/bug-2621_type_unsigned_long.c:86: ASSERT(h(0x55aa55aa) == 0x55aa55aa);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x55aa
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_h
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xaa
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00198$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x55
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00198$
	ld	de, #0x55aa
	cp	a, a
	sbc	hl, de
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
00198$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0056
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
;cases/bug-2621/bug-2621_type_unsigned_long.c:87: ASSERT(h(0x0000ffff) == 0x0000ffff);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0xffff
	ld	hl, #0x0000
;	genCall
	call	_h
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	a, e
	and	a, d
	inc	a
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00199$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0057
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
;cases/bug-2621/bug-2621_type_unsigned_long.c:88: ASSERT(h(0xffff0001) == 0xffff00ab);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
	ld	hl, #0xffff
;	genCall
	call	_h
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xab
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00200$
	ld	a, l
	and	a, h
	inc	a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00200$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0058
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
; common peephole 159 removed unused label 00101$.
;cases/bug-2621/bug-2621_type_unsigned_long.c:92: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "f(0x55aa55aa) == 0x55aa55aa"
	.db 0x00
___str_2:
	.ascii "cases/bug-2621/bug-2621_type_unsigned_long.c"
	.db 0x00
___str_3:
	.ascii "f(0x0000ffff) == 0x0000ffff"
	.db 0x00
___str_4:
	.ascii "f(0xffff0001) == 0xffff0001"
	.db 0x00
___str_5:
	.ascii "g(0x55aa55aa) == 0x55aa55aa"
	.db 0x00
___str_6:
	.ascii "g(0x0000ffff) == 0x00000000"
	.db 0x00
___str_7:
	.ascii "g(0xffff0001) == 0x0000ffff"
	.db 0x00
___str_8:
	.ascii "h(0x55aa55aa) == 0x55aa55aa"
	.db 0x00
___str_9:
	.ascii "h(0x0000ffff) == 0x0000ffff"
	.db 0x00
___str_10:
	.ascii "h(0xffff0001) == 0xffff00ab"
	.db 0x00
;cases/bug-2621/bug-2621_type_unsigned_long.c:96: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bug-2621/bug-2621_type_unsigned_long.c:98: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_11
;	genCall
	call	___prints
;cases/bug-2621/bug-2621_type_unsigned_long.c:99: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-2621/bug-2621_type_unsigned_long.c:100: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_11:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/bug-2621/bug-2621_type_unsigned_long.c:105: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bug-2621/bug-2621_type_unsigned_long.c:107: return "bug-2621_type_unsigned_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-2621/bug-2621_type_unsigned_long.c:108: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_12:
	.ascii "bug-2621_type_unsigned_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
