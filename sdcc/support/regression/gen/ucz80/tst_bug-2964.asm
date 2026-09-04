;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2964
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _f3
	.globl _f2
	.globl _f1
	.globl _g
	.globl ___prints
	.globl ___fail
	.globl _i
	.globl _c
	.globl _j
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
_j::
	.ds 8
_c::
	.ds 1
_i::
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/bug-2964.c:16: void g(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_g::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
;cases/./../tests/bug-2964.c:18: j += 42 + i;
;	genPlus
;	Shift into pair
	ld	sp, hl
; common peephole 9c reused value still in hl.
	ld	a, (_i+0)
	add	a, #0x2a
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+1)
	inc	hl
	ld	a, (_i+1)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+2)
	inc	hl
	ld	a, (_i+2)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+3)
	inc	hl
	ld	a, (_i+3)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+4)
	inc	hl
	ld	a, (_i+4)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+5)
	inc	hl
	ld	a, (_i+5)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+6)
	inc	hl
	ld	a, (_i+6)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+7)
	inc	hl
	ld	a, (_i+7)
	adc	a, #0x00
	ld	(hl), a
;	genPlus
;	Shift into pair
	ld	hl, #0
	add	hl, sp
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_j
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (de)
	add	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (de)
; common peephole 96c move inc hl before inc de
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	inc	de
	ld	a, (de)
	adc	a, (hl)
	ld	(de), a
	pop	de
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2964.c:19: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total g function size at codegen: 5 bytes.
;cases/./../tests/bug-2964.c:21: unsigned long long f1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_f1::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-2964.c:23: unsigned char d = c + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c)
;	genPlus
	ld	b, a
	inc	b
;cases/./../tests/bug-2964.c:24: j |= 7;
;	genOr
	ld	a, (_j+0)
	or	a, #0x07
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_j+0), a
;	genMove_o size 7 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2964.c:25: unsigned long long l1 = i + 1;
;	genPlus
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	ld	a, (_i+0)
	add	a, #0x01
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+1)
	inc	hl
	ld	a, (_i+1)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+2)
	inc	hl
	ld	a, (_i+2)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+3)
	inc	hl
	ld	a, (_i+3)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+4)
	inc	hl
	ld	a, (_i+4)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+5)
	inc	hl
	ld	a, (_i+5)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+6)
	inc	hl
	ld	a, (_i+6)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+7)
	inc	hl
	ld	a, (_i+7)
	adc	a, #0x00
	ld	(hl), a
;cases/./../tests/bug-2964.c:26: g();
;	genCall
	push	bc
	call	_g
;cases/./../tests/bug-2964.c:27: g();
;	genCall
; common peephole 50a eliminated dead pop/push bc pair.
	call	_g
	pop	bc
;cases/./../tests/bug-2964.c:28: unsigned long long l2 = l1 << d;
;	genLeftShift
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
00103$:
	ld	iy, #0
	add	iy, sp
	sla	0 (iy)
	rl	1 (iy)
	rl	2 (iy)
	rl	3 (iy)
	rl	4 (iy)
	rl	5 (iy)
	rl	6 (iy)
	rl	7 (iy)
00104$:
	djnz	00103$
;	genMove_o size 8 result type 12 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2964.c:30: return l2;
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
;cases/./../tests/bug-2964.c:31: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total f1 function size at codegen: 13 bytes.
;cases/./../tests/bug-2964.c:34: unsigned long long f2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_f2::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-2964.c:36: unsigned char d = c + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c)
;	genPlus
	ld	b, a
	inc	b
;cases/./../tests/bug-2964.c:37: j |= 7;
;	genOr
	ld	a, (_j+0)
	or	a, #0x07
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_j+0), a
;	genMove_o size 7 result type 10 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2964.c:38: unsigned long long l1 = i + 1;
;	genPlus
;	Shift into pair
	ld	hl, #0
	add	hl, sp
	ld	a, (_i+0)
	add	a, #0x01
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+1)
	inc	hl
	ld	a, (_i+1)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+2)
	inc	hl
	ld	a, (_i+2)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+3)
	inc	hl
	ld	a, (_i+3)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+4)
	inc	hl
	ld	a, (_i+4)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+5)
	inc	hl
	ld	a, (_i+5)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+6)
	inc	hl
	ld	a, (_i+6)
	adc	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, (_i+7)
	inc	hl
	ld	a, (_i+7)
	adc	a, #0x00
	ld	(hl), a
;cases/./../tests/bug-2964.c:39: g();
;	genCall
	push	bc
	call	_g
;cases/./../tests/bug-2964.c:40: g();
;	genCall
; common peephole 50a eliminated dead pop/push bc pair.
	call	_g
;cases/./../tests/bug-2964.c:41: g();
;	genCall
; common peephole 50a eliminated dead pop/push bc pair.
	call	_g
;cases/./../tests/bug-2964.c:42: g();
;	genCall
; common peephole 50a eliminated dead pop/push bc pair.
	call	_g
	pop	bc
;cases/./../tests/bug-2964.c:43: unsigned long long l2 = l1 << d;
;	genLeftShift
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
00103$:
	ld	iy, #0
	add	iy, sp
	sla	0 (iy)
	rl	1 (iy)
	rl	2 (iy)
	rl	3 (iy)
	rl	4 (iy)
	rl	5 (iy)
	rl	6 (iy)
	rl	7 (iy)
00104$:
	djnz	00103$
;	genMove_o size 8 result type 12 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2964.c:45: return l2;
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
;cases/./../tests/bug-2964.c:46: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total f2 function size at codegen: 13 bytes.
;cases/./../tests/bug-2964.c:48: unsigned long long f3(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f3
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 8 bytes.
_f3::
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-2964.c:50: unsigned char d = c + 1;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_c)
;	genPlus
	ld	b, a
	inc	b
;cases/./../tests/bug-2964.c:51: g();
;	genCall
	push	bc
	call	_g
;cases/./../tests/bug-2964.c:52: g();
;	genCall
; common peephole 50a eliminated dead pop/push bc pair.
	call	_g
	pop	bc
;cases/./../tests/bug-2964.c:53: unsigned long long l2 = i << d;
;	genLeftShift
;	genMove_o size 8 result type 12 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i+0)
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
	ld	a, (_i+1)
	ld	1 (iy), a
	ld	a, (_i+2)
	ld	2 (iy), a
	ld	a, (_i+3)
	ld	3 (iy), a
	ld	a, (_i+4)
	ld	4 (iy), a
	ld	a, (_i+5)
	ld	5 (iy), a
	ld	a, (_i+6)
	ld	6 (iy), a
	ld	a, (_i+7)
	ld	7 (iy), a
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
00103$:
	sla	0 (iy)
	rl	1 (iy)
	rl	2 (iy)
	rl	3 (iy)
	rl	4 (iy)
	rl	5 (iy)
	rl	6 (iy)
	rl	7 (iy)
00104$:
	djnz	00103$
;	genMove_o size 8 result type 12 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2964.c:55: return l2;
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
;cases/./../tests/bug-2964.c:56: }
;	genEndFunction
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
	ret
;	Total f3 function size at codegen: 13 bytes.
;cases/./../tests/bug-2964.c:59: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testBug::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-2964.c:61: j = 1;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_j
	ld	(hl), #0x01
	xor	a, a
	ld	(_j+1), a
	ld	(_j+2), a
	ld	(_j+3), a
	ld	(_j+4), a
	ld	(_j+5), a
	ld	(_j+6), a
	ld	(_j+7), a
;cases/./../tests/bug-2964.c:63: c = 0;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_c), a
; common peephole 19 loaded (#_c) from a directly instead of using hl.
;cases/./../tests/bug-2964.c:64: i = 1;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_i
	ld	(hl), #0x01
	xor	a, a
	ld	(_i+1), a
	ld	(_i+2), a
	ld	(_i+3), a
	ld	(_i+4), a
	ld	(_i+5), a
	ld	(_i+6), a
	ld	(_i+7), a
;cases/./../tests/bug-2964.c:65: ASSERT(f1() == 4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	ld	hl, #0x0000
	add	hl, sp
	push	hl
	call	_f1
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x04
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
	ld	hl, #0x0041
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
;cases/./../tests/bug-2964.c:68: c = 1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_c
	ld	(hl), #0x01
;cases/./../tests/bug-2964.c:69: i = 3;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_i
	ld	(hl), #0x03
	xor	a, a
	ld	(_i+1), a
	ld	(_i+2), a
	ld	(_i+3), a
	ld	(_i+4), a
	ld	(_i+5), a
	ld	(_i+6), a
	ld	(_i+7), a
;cases/./../tests/bug-2964.c:70: ASSERT(f2() == 16);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	ld	hl, #0x0000
	add	hl, sp
	push	hl
	call	_f2
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x10
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
00106$:
;cases/./../tests/bug-2964.c:72: c = 1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_c
	ld	(hl), #0x01
;cases/./../tests/bug-2964.c:73: i = 8;
;	genAssign
;	genMove_o size 8 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_i
	ld	(hl), #0x08
	xor	a, a
	ld	(_i+1), a
	ld	(_i+2), a
	ld	(_i+3), a
	ld	(_i+4), a
	ld	(_i+5), a
	ld	(_i+6), a
	ld	(_i+7), a
;cases/./../tests/bug-2964.c:74: ASSERT(f3() == 32);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	ld	hl, #0x0000
	add	hl, sp
	push	hl
	call	_f3
;	adjustStack by 2
	pop	af
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x20
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
; common peephole 159 removed unused label 00135$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004a
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
00101$:
;cases/./../tests/bug-2964.c:76: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testBug function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "f1() == 4"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-2964.c"
	.db 0x00
___str_3:
	.ascii "f2() == 16"
	.db 0x00
___str_4:
	.ascii "f3() == 32"
	.db 0x00
;cases/tst_bug-2964.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2964.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;cases/tst_bug-2964.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2964.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_5:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2964.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2964.c:15: return "bug-2964.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2964.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_6:
	.ascii "bug-2964.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
