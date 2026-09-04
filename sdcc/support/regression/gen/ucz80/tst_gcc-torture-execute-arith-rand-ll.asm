;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_arith_rand_ll
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _random_bitstring
	.globl _simple_rand
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
_simple_rand_seed_10000_12:
	.ds 8
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
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:11: static unsigned long long seed = 47114711;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_simple_rand_seed_10000_12
	ld	0 (iy), #0xd7
	ld	1 (iy), #0xe9
	ld	2 (iy), #0xce
	ld	3 (iy), #0x02
	xor	a, a
	ld	(_simple_rand_seed_10000_12+4), a
	ld	(_simple_rand_seed_10000_12+5), a
	ld	(_simple_rand_seed_10000_12+6), a
	ld	(_simple_rand_seed_10000_12+7), a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:9: simple_rand ()
;	genLabel
;	genFunction
;	---------------------------------
; Function simple_rand
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_simple_rand::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:12: unsigned long long this = seed * 1103515245 + 12345;
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_simple_rand_seed_10000_12 + 6)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_simple_rand_seed_10000_12 + 4)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_simple_rand_seed_10000_12 + 2)
	push	hl
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_simple_rand_seed_10000_12)
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x41c6
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x4e6d
	push	hl
;	genCall
	ld	hl, #0x0010
	add	hl, sp
	push	hl
	call	__mullonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genPlus
	ld	iy, #0
	add	iy, sp
	ld	a, 0 (iy)
	add	a, #0x39
	ld	0 (iy), a
	ld	a, 1 (iy)
	adc	a, #0x30
	ld	1 (iy), a
	ld	a, 2 (iy)
	adc	a, #0x00
	ld	2 (iy), a
	ld	a, 3 (iy)
	adc	a, #0x00
	ld	3 (iy), a
	ld	a, 4 (iy)
	adc	a, #0x00
	ld	4 (iy), a
	ld	a, 5 (iy)
	adc	a, #0x00
	ld	5 (iy), a
	ld	a, 6 (iy)
	adc	a, #0x00
	ld	6 (iy), a
	ld	a, 7 (iy)
	adc	a, #0x00
	ld	7 (iy), a
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:13: seed = this;
;	genAssign
	ld	de, #_simple_rand_seed_10000_12
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:14: return this >> 8;
;	genRightShift
	ld	b, #0x08
00103$:
	srl	7 (iy)
	rr	6 (iy)
	rr	5 (iy)
	rr	4 (iy)
	rr	3 (iy)
	rr	2 (iy)
	rr	1 (iy)
	rr	0 (iy)
; common peephole 159 removed unused label 00104$.
	djnz	00103$
;	genMove_o size 8 result type 12 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:15: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total simple_rand function size at codegen: 22 bytes.
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:18: random_bitstring ()
;	genLabel
;	genFunction
;	---------------------------------
; Function random_bitstring
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 24 bytes.
_random_bitstring::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -24
	ld	hl, #-24
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:23: int tot_bits = 0;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:25: x = 0;
;	genAssign
;	genMove_o size 8 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:28: ran = simple_rand ();
;	genCall
	push	hl
	ld	hl, #0x0002
	add	hl, sp
	push	hl
	call	_simple_rand
;	adjustStack by 2
	pop	af
	pop	hl
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:29: n_bits = (ran >> 1) % 16;
;	genRightShift
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -24 (ix)
	ld	-16 (ix), a
	ld	a, -23 (ix)
	ld	-15 (ix), a
	ld	a, -22 (ix)
	ld	-14 (ix), a
	ld	a, -21 (ix)
	ld	-13 (ix), a
	ld	a, -20 (ix)
	ld	-12 (ix), a
	ld	a, -19 (ix)
	ld	-11 (ix), a
	ld	a, -18 (ix)
	ld	-10 (ix), a
	ld	a, -17 (ix)
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	sra	-9 (ix)
	rr	-10 (ix)
	rr	-11 (ix)
	rr	-12 (ix)
	rr	-13 (ix)
	rr	-14 (ix)
	rr	-15 (ix)
	rr	-16 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
	push	de
;	genIpush identical value again
	push	de
;	genIpush identical value again
	push	de
;	genIpush similar value again
	ld	e, #0x10
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -12 (ix)
	ld	d, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -16 (ix)
	ld	d, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genCall
	ld	hl, #0x001a
	add	hl, sp
	push	hl
	call	__modslonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
	pop	hl
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -16 (ix)
	ld	d, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:30: tot_bits += n_bits;
;	genPlus
	add	hl, de
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:32: if (n_bits == 0)
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:33: return x;
;	genRet
	ld	hl, #28
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #16
	add	hl, sp
	ld	bc, #8
	ldir
	jp	00111$
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:36: x <<= n_bits;
;	genLeftShift
	ld	b, e
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00148$
00147$:
	sla	-8 (ix)
	rl	-7 (ix)
	rl	-6 (ix)
	rl	-5 (ix)
	rl	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
00148$:
	djnz	00147$
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:37: if (ran & 1)
;	genAnd
	bit	0, -24 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00149$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:38: x |= (1 << n_bits) - 1;
;	genLeftShift
	ld	b, e
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x01
	xor	a, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00151$
00150$:
	sla	e
	adc	a, a
00151$:
	djnz	00150$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
;fetchPairLong
	ld	d, a
	dec	de
;	genCast
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-15 (ix), a
	rlca
	sbc	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
	ld	-12 (ix), a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), a
;	genOr
	ld	a, -8 (ix)
	or	a, -16 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
	or	a, -15 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	or	a, -14 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	or	a, -13 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	or	a, -12 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
	or	a, -11 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	or	a, -10 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
	or	a, -9 (ix)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:40: if (tot_bits > 8 * sizeof (long long) + 6)
;	genCmpGt
	ld	a, #0x46
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	po, 00152$
	xor	a, #0x80
00152$:
	jp	p, 00109$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:41: return x;
;	genRet
	ld	hl, #28
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #16
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
00111$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:44: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total random_bitstring function size at codegen: 16 bytes.
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:50: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 77 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -77
	ld	hl, #-77
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:56: for (i = 0; i < 10 /* GCC original was 10000 - take too much time */; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 8 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00146$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:59: x = random_bitstring ();
;	genCall
	ld	hl, #0x0028
	add	hl, sp
	push	hl
	call	_random_bitstring
;	adjustStack by 2
	pop	af
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:60: y = random_bitstring ();
;	genCall
	ld	hl, #0x0030
	add	hl, sp
	push	hl
	call	_random_bitstring
;	adjustStack by 2
	pop	af
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:66: if (yy == 0) continue;
;	genIfx
	ld	a, -22 (ix)
	or	a, -23 (ix)
	or	a, -24 (ix)
	or	a, -25 (ix)
	or	a, -26 (ix)
	or	a, -27 (ix)
	or	a, -28 (ix)
	or	a, -29 (ix)
	jp	z, 00144$
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:67: r1 = xx / yy;
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -23 (ix)
	ld	h, -22 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -25 (ix)
	ld	h, -24 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -27 (ix)
	ld	h, -26 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -29 (ix)
	ld	h, -28 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -31 (ix)
	ld	h, -30 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -33 (ix)
	ld	h, -32 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -35 (ix)
	ld	h, -34 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -37 (ix)
	ld	h, -36 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:68: r2 = xx % yy;
;	genCall
	ld	hl, #0x004d
	add	hl, sp
	push	hl
	call	__divulonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -23 (ix)
	ld	h, -22 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -25 (ix)
	ld	h, -24 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -27 (ix)
	ld	h, -26 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -29 (ix)
	ld	h, -28 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -31 (ix)
	ld	h, -30 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -33 (ix)
	ld	h, -32 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -35 (ix)
	ld	h, -34 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -37 (ix)
	ld	h, -36 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:69: if (r2 >= yy || r1 * yy + r2 != xx)
;	genCall
	ld	hl, #0x0030
	add	hl, sp
	push	hl
	call	__modulonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpLt
	ld	a, -45 (ix)
	sub	a, -29 (ix)
	ld	a, -44 (ix)
	sbc	a, -28 (ix)
	ld	a, -43 (ix)
	sbc	a, -27 (ix)
	ld	a, -42 (ix)
	sbc	a, -26 (ix)
	ld	a, -41 (ix)
	sbc	a, -25 (ix)
	ld	a, -40 (ix)
	sbc	a, -24 (ix)
	ld	a, -39 (ix)
	sbc	a, -23 (ix)
	ld	a, -38 (ix)
	sbc	a, -22 (ix)
	jp	nc, 00105$
;	skipping generated iCode
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -23 (ix)
	ld	h, -22 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -25 (ix)
	ld	h, -24 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -27 (ix)
	ld	h, -26 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -29 (ix)
	ld	h, -28 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x004d
	add	hl, sp
	push	hl
	call	__mullonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -45 (ix)
	ld	d, -44 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-16 (ix), l
	ld	-15 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -14 (ix)
	adc	a, -43 (ix)
	ld	-14 (ix), a
	ld	a, -13 (ix)
	adc	a, -42 (ix)
	ld	-13 (ix), a
	ld	a, -12 (ix)
	adc	a, -41 (ix)
	ld	-12 (ix), a
	ld	a, -11 (ix)
	adc	a, -40 (ix)
	ld	-11 (ix), a
	ld	a, -10 (ix)
	adc	a, -39 (ix)
	ld	-10 (ix), a
	ld	a, -9 (ix)
	adc	a, -38 (ix)
	ld	-9 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -37 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00374$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -36 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00374$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -35 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00374$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -34 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00374$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -33 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00374$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -32 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00374$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -31 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00374$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -30 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
00374$:
;	skipping generated iCode
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:70: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0046
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
00106$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:72: { signed long long xx = x, yy = y, r1, r2;
;	genAssign
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	hl, #40
	add	hl, sp
	ld	bc, #8
	ldir
;	genAssign
	ld	hl, #8
	add	hl, sp
	ex	de, hl
	ld	hl, #48
	add	hl, sp
	ld	bc, #8
	ldir
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:73: if ((unsigned long long) xx << 1 == 0 && yy == -1)
;	genCast
	ld	hl, #61
	add	hl, sp
	ex	de, hl
	ld	hl, #0
	add	hl, sp
	ld	bc, #8
	ldir
;	genLeftShift
	sla	-16 (ix)
	rl	-15 (ix)
	rl	-14 (ix)
	rl	-13 (ix)
	rl	-12 (ix)
	rl	-11 (ix)
	rl	-10 (ix)
	rl	-9 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, -9 (ix)
	or	a, -10 (ix)
	or	a, -11 (ix)
	or	a, -12 (ix)
	or	a, -13 (ix)
	or	a, -14 (ix)
	or	a, -15 (ix)
	or	a, -16 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00109$
;	genCmpEq
	ld	a, -29 (ix)
	and	a, -28 (ix)
	and	a, -27 (ix)
	and	a, -26 (ix)
	and	a, -25 (ix)
	and	a, -24 (ix)
	and	a, -23 (ix)
	and	a, -22 (ix)
	inc	a
	jp	z, 00144$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00377$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:74: continue;
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:75: r1 = xx / yy;
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -63 (ix)
	ld	h, -62 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -65 (ix)
	ld	h, -64 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -67 (ix)
	ld	h, -66 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -69 (ix)
	ld	h, -68 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -71 (ix)
	ld	h, -70 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -73 (ix)
	ld	h, -72 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -75 (ix)
	ld	h, -74 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -77 (ix)
	ld	h, -76 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:76: r2 = xx % yy;
;	genCall
	ld	hl, #0x0020
	add	hl, sp
	push	hl
	call	__divslonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -63 (ix)
	ld	h, -62 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -65 (ix)
	ld	h, -64 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -67 (ix)
	ld	h, -66 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -69 (ix)
	ld	h, -68 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -71 (ix)
	ld	h, -70 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -73 (ix)
	ld	h, -72 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -75 (ix)
	ld	h, -74 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -77 (ix)
	ld	h, -76 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:77: if (ABS (r2) >= (unsigned long long) ABS (yy) || (signed long long) (r1 * yy + r2) != xx)
;	genCall
	ld	hl, #0x0028
	add	hl, sp
	push	hl
	call	__modslonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genCmpLt
	bit	7, -46 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00149$
;	skipping generated iCode
;	genAssign
	ld	hl, #61
	add	hl, sp
	ex	de, hl
	ld	hl, #24
	add	hl, sp
	ld	bc, #8
	ldir
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00150$
;	genLabel
00149$:
;	genUminus
	xor	a, a
	sub	a, -53 (ix)
	ld	-16 (ix), a
	ld	a, #0x00
	sbc	a, -52 (ix)
	ld	-15 (ix), a
	ld	a, #0x00
	sbc	a, -51 (ix)
	ld	-14 (ix), a
	ld	a, #0x00
	sbc	a, -50 (ix)
	ld	-13 (ix), a
	ld	a, #0x00
	sbc	a, -49 (ix)
	ld	-12 (ix), a
	ld	a, #0x00
	sbc	a, -48 (ix)
	ld	-11 (ix), a
	ld	a, #0x00
	sbc	a, -47 (ix)
	ld	-10 (ix), a
	sbc	a, a
	sub	a, -46 (ix)
	ld	-9 (ix), a
;	genLabel
00150$:
;	genCmpLt
	bit	7, -62 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00151$
;	skipping generated iCode
;	genAssign
	ld	hl, #32
	add	hl, sp
	ex	de, hl
	ld	hl, #8
	add	hl, sp
	ld	bc, #8
	ldir
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00152$
;	genLabel
00151$:
;	genUminus
	xor	a, a
	sub	a, -69 (ix)
	ld	-45 (ix), a
	ld	a, #0x00
	sbc	a, -68 (ix)
	ld	-44 (ix), a
	ld	a, #0x00
	sbc	a, -67 (ix)
	ld	-43 (ix), a
	ld	a, #0x00
	sbc	a, -66 (ix)
	ld	-42 (ix), a
	ld	a, #0x00
	sbc	a, -65 (ix)
	ld	-41 (ix), a
	ld	a, #0x00
	sbc	a, -64 (ix)
	ld	-40 (ix), a
	ld	a, #0x00
	sbc	a, -63 (ix)
	ld	-39 (ix), a
	sbc	a, a
	sub	a, -62 (ix)
	ld	-38 (ix), a
;	genLabel
00152$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genCmpLt
	ld	a, -16 (ix)
	sub	a, -45 (ix)
	ld	a, -15 (ix)
	sbc	a, -44 (ix)
	ld	a, -14 (ix)
	sbc	a, -43 (ix)
	ld	a, -13 (ix)
	sbc	a, -42 (ix)
	ld	a, -12 (ix)
	sbc	a, -41 (ix)
	ld	a, -11 (ix)
	sbc	a, -40 (ix)
	ld	a, -10 (ix)
	sbc	a, -39 (ix)
	ld	a, -9 (ix)
	sbc	a, -38 (ix)
	jp	nc, 00111$
;	skipping generated iCode
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -63 (ix)
	ld	h, -62 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -65 (ix)
	ld	h, -64 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -67 (ix)
	ld	h, -66 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -69 (ix)
	ld	h, -68 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -55 (ix)
	ld	h, -54 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -57 (ix)
	ld	h, -56 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -59 (ix)
	ld	h, -58 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -61 (ix)
	ld	h, -60 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x004d
	add	hl, sp
	push	hl
	call	__mullonglong
;	adjustStack by 18
	ld	hl, #18
	add	hl, sp
	ld	sp, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -53 (ix)
	ld	d, -52 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-16 (ix), l
	ld	-15 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -14 (ix)
	adc	a, -51 (ix)
	ld	-14 (ix), a
	ld	a, -13 (ix)
	adc	a, -50 (ix)
	ld	-13 (ix), a
	ld	a, -12 (ix)
	adc	a, -49 (ix)
	ld	-12 (ix), a
	ld	a, -11 (ix)
	adc	a, -48 (ix)
	ld	-11 (ix), a
	ld	a, -10 (ix)
	adc	a, -47 (ix)
	ld	-10 (ix), a
	ld	a, -9 (ix)
	adc	a, -46 (ix)
	ld	-9 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -77 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00378$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -76 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00378$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -75 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00378$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -74 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00378$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -73 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00378$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -72 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00378$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -71 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00378$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -70 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
00378$:
;	skipping generated iCode
;	genLabel
00111$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:78: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004e
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
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:80: save_time:
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:81: { unsigned int xx = x, yy = y, r1, r2;
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -37 (ix)
	ld	b, -36 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -29 (ix)
	ld	d, -28 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:82: if (yy == 0) continue;
;	genIfx
	ld	a, d
	or	a, e
	jp	z, 00144$
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:83: r1 = xx / yy;
;	genSend
	push	bc
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:84: r2 = xx % yy;
;	genCall
	call	__divuint
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), e
	ld	-11 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genSend
	push	bc
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:85: if (r2 >= yy || r1 * yy + r2 != xx)
;	genCall
	call	__moduint
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), e
	ld	-9 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genCmpLt
	ld	a, -10 (ix)
	sub	a, e
	ld	a, -9 (ix)
	sbc	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00117$
;	skipping generated iCode
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__mulint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00379$.
;	skipping generated iCode
;	genLabel
00117$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:86: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0056
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
00118$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:88: { signed int xx = x, yy = y, r1, r2;
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -37 (ix)
	ld	-21 (ix), a
	ld	a, -36 (ix)
	ld	-20 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -29 (ix)
	ld	-19 (ix), a
	ld	a, -28 (ix)
	ld	-18 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:89: if ((unsigned int) xx << 1 == 0 && yy == -1)
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -21 (ix)
	ld	h, -20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00121$
;	genCmpEq
	ld	a, -19 (ix)
	and	a, -18 (ix)
	inc	a
	jp	z, 00144$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00380$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:90: continue;
;	genLabel
00121$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:91: r1 = xx / yy;
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -19 (ix)
	ld	d, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -21 (ix)
	ld	h, -20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:92: r2 = xx % yy;
;	genCall
	call	__divsint
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-17 (ix), e
	ld	-16 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -19 (ix)
	ld	d, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -21 (ix)
	ld	h, -20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:93: if (ABS (r2) >= (unsigned int) ABS (yy) || (signed int) (r1 * yy + r2) != xx || ((xx < 0) != (r2 < 0) && r2))
;	genCall
	call	__modsint
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-15 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
; common peephole 33 loaded a from d instead of going through -14 (ix).
	ld	-14 (ix), d
	ld	a, d
	rlca
	and	a, #0x01
; common peephole 109 replaced zero load, rla by and since rlca writes the same value to carry bit and least significant bit.
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
	bit	0, -13 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
	ld	-12 (ix), a
	ld	a, -14 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00154$
;	genLabel
00153$:
;	genUminus
	xor	a, a
	sub	a, -15 (ix)
	ld	-12 (ix), a
	sbc	a, a
	sub	a, -14 (ix)
	ld	-11 (ix), a
;	genLabel
00154$:
;	genCmpLt
	bit	7, -18 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00155$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -19 (ix)
	ld	-10 (ix), a
	ld	a, -18 (ix)
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00156$
;	genLabel
00155$:
;	genUminus
	xor	a, a
	sub	a, -19 (ix)
	ld	-10 (ix), a
	sbc	a, a
	sub	a, -18 (ix)
	ld	-9 (ix), a
;	genLabel
00156$:
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	xor	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00123$
;	skipping generated iCode
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -19 (ix)
	ld	d, -18 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -17 (ix)
	ld	h, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__mulint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	ld	a, e
	add	a, -15 (ix)
	ld	c, a
	ld	a, d
	adc	a, -14 (ix)
	ld	b, a
;	genCmpEq
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -21 (ix)
	ld	h, -20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, bc
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00381$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00382$.
;	skipping generated iCode
;	genCmpLt
	ld	a, -20 (ix)
	rlca
	and	a, #0x01
; common peephole 109 replaced zero load, rla by and since rlca writes the same value to carry bit and least significant bit.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -13 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00383$.
;	skipping generated iCode
;	genIfx
	ld	a, -14 (ix)
	or	a, -15 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
;	genLabel
00123$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:94: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005e
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
00124$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:96: { unsigned short xx = x, yy = y, r1, r2;
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -37 (ix)
	ld	-16 (ix), a
	ld	a, -36 (ix)
	ld	-15 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -29 (ix)
	ld	-14 (ix), a
	ld	a, -28 (ix)
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:97: if (yy == 0) continue;
;	genIfx
; common peephole 33 loaded a from a instead of going through -13 (ix).
	ld	-13 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, -14 (ix)
	jp	z, 00144$
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:98: r1 = xx / yy;
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:99: r2 = xx % yy;
;	genCall
	call	__divuint
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), e
	ld	-11 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:100: if (r2 >= yy || r1 * yy + r2 != xx)
;	genCall
	call	__moduint
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), e
	ld	-9 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, -10 (ix)
	sub	a, -14 (ix)
	ld	a, -9 (ix)
	sbc	a, -13 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00130$
;	skipping generated iCode
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__mulint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	ld	a, e
	add	a, -10 (ix)
	ld	c, a
	ld	a, d
	adc	a, -9 (ix)
	ld	b, a
;	genCmpEq
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00131$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00384$.
;	skipping generated iCode
;	genLabel
00130$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:101: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0065
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
00131$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:103: { signed short xx = x, yy = y, r1, r2;
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -37 (ix)
	ld	-16 (ix), a
	ld	a, -36 (ix)
	ld	-15 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -29 (ix)
	ld	-14 (ix), a
	ld	a, -28 (ix)
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:104: r1 = xx / yy;
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:105: r2 = xx % yy;
;	genCall
	call	__divsint
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), e
	ld	-11 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:106: if (ABS (r2) >= (unsigned short) ABS (yy) || (signed short) (r1 * yy + r2) != xx)
;	genCall
	call	__modsint
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 7 removed dead load from -10 (ix) into c.
; common peephole 33 loaded b from d instead of going through -9 (ix).
	ld	-9 (ix), d
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	bit	7, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00157$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00158$
;	genLabel
00157$:
;	genUminus
	xor	a, a
	sub	a, -10 (ix)
	ld	c, a
	sbc	a, a
	sub	a, -9 (ix)
	ld	b, a
;	genLabel
00158$:
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 7 removed dead load from -14 (ix) into e.
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00159$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00160$
;	genLabel
00159$:
;	genUminus
	xor	a, a
	sub	a, -14 (ix)
	ld	e, a
	sbc	a, a
	sub	a, -13 (ix)
	ld	d, a
;	genLabel
00160$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genCmpLt
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00133$
;	skipping generated iCode
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__mulint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	ld	a, e
	add	a, -10 (ix)
	ld	c, a
	ld	a, d
	adc	a, -9 (ix)
	ld	b, a
;	genCmpEq
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00134$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00385$.
;	skipping generated iCode
;	genLabel
00133$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:107: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006b
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
00134$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:109: { unsigned char xx = x, yy = y, r1, r2;
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -37 (ix)
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -29 (ix)
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:110: if (yy == 0) continue;
;	genIfx
; common peephole 33 loaded a from a instead of going through -11 (ix).
	ld	-11 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, a
	jp	z, 00144$
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:111: r1 = xx / yy;
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:112: r2 = xx % yy;
;	genCall
	call	__divuchar
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:113: if (r2 >= yy || r1 * yy + r2 != xx)
;	genCall
	call	__moduchar
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
; common peephole 33 loaded a from e instead of going through -9 (ix).
	ld	-9 (ix), e
	ld	a, e
	sub	a, -11 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00138$
;	skipping generated iCode
;	genMult
	ld	e, -11 (ix)
	ld	h, -10 (ix)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00386$:
	add	hl, hl
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00387$
	add	hl, de
00387$:
	djnz	00386$
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genPlus
	add	hl, de
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	b, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00139$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00388$.
;	skipping generated iCode
;	genLabel
00138$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:114: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0072
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
00139$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:116: { signed char xx = x, yy = y, r1, r2;
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -37 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -29 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:117: r1 = xx / yy;
;	genSend
	push	bc
	push	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:118: r2 = xx % yy;
;	genCall
	call	__divschar
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-11 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genSend
	push	bc
	push	de
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:119: if (ABS (r2) >= (unsigned char) ABS (yy) || (signed char) (r1 * yy + r2) != xx)
;	genCall
	call	__modschar
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), e
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	bit	7, -10 (ix)
;	skipping generated iCode
;	genAssign
;	(locations are the same)
;	genGoto
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00162$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00161$.
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genUminus
	neg
	ld	-9 (ix), a
;	genLabel
00162$:
;	genCmpLt
	bit	7, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00163$
;	skipping generated iCode
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00164$
;	genLabel
00163$:
;	genUminus
	xor	a, a
	sub	a, e
	ld	b, a
;	genLabel
00164$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genCmpLt
	ld	a, -9 (ix)
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00141$
;	skipping generated iCode
;	genMult
	ld	h, -11 (ix)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00389$:
	add	hl, hl
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00390$
	add	hl, de
00390$:
	djnz	00389$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	ld	a, l
	add	a, -10 (ix)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00144$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00391$.
;	skipping generated iCode
;	genLabel
00141$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:120: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0078
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
00144$:
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:56: for (i = 0; i < 10 /* GCC original was 10000 - take too much time */; i++)
;	genPlus
	inc	-8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00392$
	inc	-7 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00392$
	inc	-6 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00392$
	inc	-5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00392$
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00392$
	inc	-3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00392$
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00392$
	inc	-1 (ix)
00392$:
;	genCmpLt
	ld	a, -8 (ix)
	sub	a, #0x0a
	ld	a, -7 (ix)
	sbc	a, #0x00
	ld	a, -6 (ix)
	sbc	a, #0x00
	ld	a, -5 (ix)
	sbc	a, #0x00
	ld	a, -4 (ix)
	sbc	a, #0x00
	ld	a, -3 (ix)
	sbc	a, #0x00
	ld	a, -2 (ix)
	sbc	a, #0x00
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	c, 00146$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:125: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00147$.
;cases/./../tests/gcc-torture-execute-arith-rand-ll.c:126: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 70 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-arith-rand-ll.c"
	.db 0x00
;cases/tst_gcc-torture-execute-arith-rand-ll.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-arith-rand-ll.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-arith-rand-ll.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-arith-rand-ll.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-arith-rand-ll.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-arith-rand-ll.c:15: return "gcc-torture-execute-arith-rand-ll.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-arith-rand-ll.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-arith-rand-ll.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
