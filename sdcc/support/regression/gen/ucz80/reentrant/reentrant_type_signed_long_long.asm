;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module reentrant_type_signed_long_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testReent
	.globl _fib
	.globl _div2n
	.globl _fact
	.globl _sum
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
;cases/reentrant/reentrant_type_signed_long_long.c:12: signed long long sum(signed long long a) __reentrant
;	genLabel
;	genFunction
;	---------------------------------
; Function sum
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_sum::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/reentrant/reentrant_type_signed_long_long.c:14: if(a>1) return a+sum(a-1);
;	genCmpGt
	ld	a, #0x01
	ld	iy, #12
	add	iy, sp
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	ld	a, #0x00
	sbc	a, 2 (iy)
	ld	a, #0x00
	sbc	a, 3 (iy)
	ld	a, #0x00
	sbc	a, 4 (iy)
	ld	a, #0x00
	sbc	a, 5 (iy)
	ld	a, #0x00
	sbc	a, 6 (iy)
	ld	a, #0x00
	sbc	a, 7 (iy)
	jp	po, 00113$
	xor	a, #0x80
00113$:
	jp	p, 00102$
;	skipping generated iCode
;	genMinus
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #12
	add	hl, sp
	ld	a, (hl)
	add	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	0 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 1 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	1 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 2 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	2 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 3 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	3 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 4 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	4 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 5 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	5 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 6 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	6 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 7 (iy)
	adc	a, #0xff
	ld	iy, #0
	add	iy, sp
	ld	7 (iy), a
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x0008
	add	hl, sp
	push	hl
	call	_sum
;	adjustStack by 10
	ld	hl, #10
	add	hl, sp
;	genPlus
;	Shift into pair
	ld	sp, hl
; common peephole 9c reused value still in hl.
;	Shift into pair
	push	de
	ld	iy, #2
	add	iy, sp
	push	iy
	pop	de
	ld	iy, #14
	add	iy, sp
	ld	a, 0 (iy)
	add	a, (hl)
	ld	(de), a
	ld	a, 1 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 2 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 3 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 4 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 5 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 6 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 7 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
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
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;cases/reentrant/reentrant_type_signed_long_long.c:15: return 1;
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;	genLabel
00103$:
;cases/reentrant/reentrant_type_signed_long_long.c:16: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total sum function size at codegen: 21 bytes.
;cases/reentrant/reentrant_type_signed_long_long.c:18: signed long long fact(signed long long a) __reentrant
;	genLabel
;	genFunction
;	---------------------------------
; Function fact
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_fact::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/reentrant/reentrant_type_signed_long_long.c:20: if(a>1) return a*fact(a-1);
;	genCmpGt
	ld	a, #0x01
	ld	iy, #12
	add	iy, sp
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	ld	a, #0x00
	sbc	a, 2 (iy)
	ld	a, #0x00
	sbc	a, 3 (iy)
	ld	a, #0x00
	sbc	a, 4 (iy)
	ld	a, #0x00
	sbc	a, 5 (iy)
	ld	a, #0x00
	sbc	a, 6 (iy)
	ld	a, #0x00
	sbc	a, 7 (iy)
	jp	po, 00113$
	xor	a, #0x80
00113$:
	jp	p, 00102$
;	skipping generated iCode
;	genMinus
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #12
	add	hl, sp
	ld	a, (hl)
	add	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	0 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 1 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	1 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 2 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	2 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 3 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	3 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 4 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	4 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 5 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	5 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 6 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #2
	add	iy, sp
	pop	af
	ld	6 (iy), a
	push	af
	ld	iy, #14
	add	iy, sp
	pop	af
	ld	a, 7 (iy)
	adc	a, #0xff
	ld	iy, #0
	add	iy, sp
	ld	7 (iy), a
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x0008
	add	hl, sp
	push	hl
	call	_fact
;	adjustStack by 10
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #20
	add	iy, sp
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
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
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;cases/reentrant/reentrant_type_signed_long_long.c:21: return 1;
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;	genLabel
00103$:
;cases/reentrant/reentrant_type_signed_long_long.c:22: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total fact function size at codegen: 21 bytes.
;cases/reentrant/reentrant_type_signed_long_long.c:24: signed long long div2n(signed long long a, int n) __reentrant
;	genLabel
;	genFunction
;	---------------------------------
; Function div2n
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_div2n::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/reentrant/reentrant_type_signed_long_long.c:26: if(n>0) return div2n(a/2,n-1);
;	genCmpGt
	xor	a, a
	ld	iy, #20
	add	iy, sp
	cp	a, 0 (iy)
	sbc	a, 1 (iy)
	jp	po, 00122$
	xor	a, #0x80
00122$:
	jp	p, 00102$
;	skipping generated iCode
;	genMinus
;fetchPairLong
; common peephole 62 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #20
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
;	genAssign
	push	bc
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	hl, #14
	add	hl, sp
	ld	bc, #8
	ldir
	pop	bc
;	genCmpLt
	ld	iy, #0
	add	iy, sp
; common peephole 72 tested bit 7 of 7 (iy) directly instead of going through a.
	bit	7, 7 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;	skipping generated iCode
;	genPlus
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
	inc	3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
	inc	4 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
	inc	5 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
	inc	6 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
	inc	7 (iy)
00123$:
;	genLabel
00105$:
;	genRightShift
	ld	iy, #0
	add	iy, sp
	sra	7 (iy)
	rr	6 (iy)
	rr	5 (iy)
	rr	4 (iy)
	rr	3 (iy)
	rr	2 (iy)
	rr	1 (iy)
	rr	0 (iy)
;	genMove_o size 8 result type 12 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_div2n
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
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
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;cases/reentrant/reentrant_type_signed_long_long.c:27: return a;
;	genRet
	ld	hl, #10
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #12
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
00103$:
;cases/reentrant/reentrant_type_signed_long_long.c:28: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total div2n function size at codegen: 26 bytes.
;cases/reentrant/reentrant_type_signed_long_long.c:30: signed long long fib(signed long long a) __reentrant
;	genLabel
;	genFunction
;	---------------------------------
; Function fib
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 17 bytes.
_fib::
;	adjustStack by -17
	ld	hl, #-17
	add	hl, sp
	ld	sp, hl
;cases/reentrant/reentrant_type_signed_long_long.c:32: if(a>1) return fib(a-1)+fib(a-2);
;	genCmpGt
	ld	a, #0x01
	ld	iy, #21
	add	iy, sp
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	ld	a, #0x00
	sbc	a, 2 (iy)
	ld	a, #0x00
	sbc	a, 3 (iy)
	ld	a, #0x00
	sbc	a, 4 (iy)
	ld	a, #0x00
	sbc	a, 5 (iy)
	ld	a, #0x00
	sbc	a, 6 (iy)
	ld	a, #0x00
	sbc	a, 7 (iy)
	jp	po, 00113$
	xor	a, #0x80
00113$:
	jp	p, 00102$
;	skipping generated iCode
;	genMinus
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #21
	add	hl, sp
	ld	a, (hl)
	add	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	0 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 1 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	1 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 2 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	2 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 3 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	3 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 4 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	4 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 5 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	5 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 6 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	6 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 7 (iy)
	adc	a, #0xff
	ld	iy, #9
	add	iy, sp
	ld	7 (iy), a
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x0008
	add	hl, sp
	push	hl
	call	_fib
;	adjustStack by 10
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;	genMinus
; common peephole 63 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #21
	add	hl, sp
	ld	a, (hl)
	add	a, #0xfe
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	0 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 1 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	1 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 2 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	2 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 3 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	3 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 4 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	4 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 5 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	5 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 6 (iy)
	adc	a, #0xff
	push	af
	ld	iy, #11
	add	iy, sp
	pop	af
	ld	6 (iy), a
	push	af
	ld	iy, #23
	add	iy, sp
	pop	af
	ld	a, 7 (iy)
	adc	a, #0xff
	ld	iy, #9
	add	iy, sp
	ld	7 (iy), a
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (iy)
; common peephole 14 loaded 6 (iy) into l directly instead of going through a.
	ld	h, 7 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (iy)
; common peephole 14 loaded 4 (iy) into l directly instead of going through a.
	ld	h, 5 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	ld	hl, #0x0011
	add	hl, sp
	push	hl
	call	_fib
;	adjustStack by 10
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;	genPlus
;	Shift into pair
	ld	hl, #9
	add	hl, sp
;	Shift into pair
	push	de
	ld	iy, #11
	add	iy, sp
	push	iy
	pop	de
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	add	a, (hl)
	ld	(de), a
	ld	a, 1 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 2 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 3 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 4 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 5 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 6 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	ld	a, 7 (iy)
	inc	hl
	adc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;	genRet
	ld	hl, #19
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #9
	add	hl, sp
	ld	bc, #8
	ldir
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;cases/reentrant/reentrant_type_signed_long_long.c:33: return a;
;	genRet
	ld	hl, #19
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #21
	add	hl, sp
	ld	bc, #8
	ldir
;	genLabel
00103$:
;cases/reentrant/reentrant_type_signed_long_long.c:34: }
;	genEndFunction
;	adjustStack by 17
	ld	hl, #17
	add	hl, sp
	ld	sp, hl
	ret
;	Total fib function size at codegen: 18 bytes.
;cases/reentrant/reentrant_type_signed_long_long.c:40: testReent(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testReent
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testReent::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/reentrant/reentrant_type_signed_long_long.c:44: ASSERT(sum(9) == 45);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x09
	push	hl
;	genCall
	ld	hl, #0x0008
	add	hl, sp
	push	hl
	call	_sum
;	adjustStack by 10
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x2d
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
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
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/reentrant/reentrant_type_signed_long_long.c:45: ASSERT(fact(5) == 120);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x05
	push	hl
;	genCall
	ld	hl, #0x0008
	add	hl, sp
	push	hl
	call	_fact
;	adjustStack by 10
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x78
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00144$.
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
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/reentrant/reentrant_type_signed_long_long.c:46: ASSERT(div2n(128, 7) == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0007
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, h
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x80
	push	hl
;	genCall
	ld	hl, #0x000a
	add	hl, sp
	push	hl
	call	_div2n
;	adjustStack by 12
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00145$.
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
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/reentrant/reentrant_type_signed_long_long.c:47: ASSERT(fib(7) == 13);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x07
	push	hl
;	genCall
	ld	hl, #0x0008
	add	hl, sp
	push	hl
	call	_fib
;	adjustStack by 10
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x0d
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
	or	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00146$.
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
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00101$:
;cases/reentrant/reentrant_type_signed_long_long.c:50: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testReent function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "sum(9) == 45"
	.db 0x00
___str_2:
	.ascii "cases/reentrant/reentrant_type_signed_long_long.c"
	.db 0x00
___str_3:
	.ascii "fact(5) == 120"
	.db 0x00
___str_4:
	.ascii "div2n(128, 7) == 1"
	.db 0x00
___str_5:
	.ascii "fib(7) == 13"
	.db 0x00
;cases/reentrant/reentrant_type_signed_long_long.c:54: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/reentrant/reentrant_type_signed_long_long.c:56: __prints("Running testReent\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/reentrant/reentrant_type_signed_long_long.c:57: testReent();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/reentrant/reentrant_type_signed_long_long.c:58: }
;	genEndFunction
	jp	_testReent
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testReent"
	.db 0x0a
	.db 0x00
;cases/reentrant/reentrant_type_signed_long_long.c:63: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/reentrant/reentrant_type_signed_long_long.c:65: return "reentrant_type_signed_long_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/reentrant/reentrant_type_signed_long_long.c:66: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "reentrant_type_signed_long_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
