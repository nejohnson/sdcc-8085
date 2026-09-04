;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module shifts3_type_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testShift
	.globl _r3
	.globl _r2
	.globl _r1
	.globl _r0
	.globl ___prints
	.globl ___fail
	.globl _S3
	.globl _S2
	.globl _S1
	.globl _S0
	.globl ___numCases
	.globl _C3
	.globl _C2
	.globl _C1
	.globl _C0
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_r0_cy_10000_13:
	.ds 4
_r0_sy_10000_13:
	.ds 4
_r0_x0_10000_13:
	.ds 1
_r0_x1_10000_13:
	.ds 1
_r0_xx0_10000_13:
	.ds 1
_r0_xx1_10000_13:
	.ds 1
_r1_cy_10000_16:
	.ds 4
_r1_sy_10000_16:
	.ds 4
_r1_x0_10000_16:
	.ds 1
_r1_x1_10000_16:
	.ds 1
_r1_xx0_10000_16:
	.ds 1
_r1_xx1_10000_16:
	.ds 1
_r2_cy_10000_19:
	.ds 4
_r2_sy_10000_19:
	.ds 4
_r2_x0_10000_19:
	.ds 1
_r2_x1_10000_19:
	.ds 1
_r2_xx0_10000_19:
	.ds 1
_r2_xx1_10000_19:
	.ds 1
_r3_cy_10000_22:
	.ds 4
_r3_sy_10000_22:
	.ds 4
_r3_x0_10000_22:
	.ds 1
_r3_x1_10000_22:
	.ds 1
_r3_xx0_10000_22:
	.ds 1
_r3_xx1_10000_22:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_S0::
	.ds 6
_S1::
	.ds 6
_S2::
	.ds 6
_S3::
	.ds 6
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
;cases/shifts3/shifts3_type_long.c:14: int r0(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function r0
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_r0::
;cases/shifts3/shifts3_type_long.c:24: while(y<3)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00101$:
;	genCmpLt
	ld	a, c
	sub	a, #0x03
	jp	nc, 00103$
;	skipping generated iCode
;cases/shifts3/shifts3_type_long.c:27: cy = C0[y];		
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
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_C0
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_r0_cy_10000_13+0), a
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	(_r0_cy_10000_13+1), a
	rlca
	sbc	hl, hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	(_r0_cy_10000_13 + 2), hl
;cases/shifts3/shifts3_type_long.c:28: sy = S0[y];
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_S0
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_r0_sy_10000_13+0), a
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_r0_sy_10000_13+1), a
	rlca
	sbc	hl, hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 0
	ld	(_r0_sy_10000_13 + 2), hl
;cases/shifts3/shifts3_type_long.c:30: x0 = cy/64;
;	genCast
;	genMove_o size 3 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_r0_cy_10000_13)
	ld	hl, (_r0_cy_10000_13 + 2)
;	genCmpLt
	bit	7, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;	skipping generated iCode
;	genPlus
	ld	a, e
	add	a, #0x3f
	ld	e, a
	ld	a, d
	adc	a, #0x00
	ld	d, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00141$
	inc	l
00141$:
;	genLabel
00106$:
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
; common peephole 6b removed dead xor a, a
	add	hl, hl
; common peephole 2d removed rla due to unused result.
	add	hl, hl
; common peephole 2d removed rla due to unused result.
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from a into e.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r0_x0_10000_13), a
;cases/shifts3/shifts3_type_long.c:31: x1 = sy/32;  
;	genCast
;	genMove_o size 3 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_r0_sy_10000_13)
	ld	hl, (_r0_sy_10000_13 + 2)
;	genCmpLt
	bit	7, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	skipping generated iCode
;	genPlus
	ld	a, e
	add	a, #0x1f
	ld	e, a
	ld	a, d
	adc	a, #0x00
	ld	d, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00142$
	inc	l
00142$:
;	genLabel
00107$:
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
	xor	a, a
	add	hl, hl
	rla
	add	hl, hl
	rla
	add	hl, hl
	rla
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	af
	ld	a, h
	ld	(#_r0_x1_10000_13), a
; common peephole 19 loaded (#_r0_x1_10000_13) from a directly instead of using hl.
	pop	af
;cases/shifts3/shifts3_type_long.c:33: xx0 = (cy<<2)>>8;
;	genLeftShift
;	genMove_o size 4 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_r0_cy_10000_13)
	ld	de, (_r0_cy_10000_13 + 2)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x02
00143$:
	add	hl, hl
	rl	e
	rl	d
; common peephole 159 removed unused label 00144$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGetByte
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r0_xx0_10000_13), a
;cases/shifts3/shifts3_type_long.c:34: xx1 = (sy<<3)>>8;
;	genLeftShift
;	genMove_o size 4 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_r0_sy_10000_13)
	ld	de, (_r0_sy_10000_13 + 2)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x03
00145$:
	add	hl, hl
	rl	e
	rl	d
; common peephole 159 removed unused label 00146$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00145$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGetByte
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r0_xx1_10000_13), a
;cases/shifts3/shifts3_type_long.c:35: y++;
;	genPlus
	inc	bc
;	genGoto
	jp	00101$
;	genLabel
00103$:
;cases/shifts3/shifts3_type_long.c:40: return x0+x1;
;	genCast
;	genMove_o size 0 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_r0_x0_10000_13)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genCast
;	genMove_o size 0 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_r0_x1_10000_13)
	ld	l, a
	rlca
	sbc	a, a
	ld	h, a
;	genPlus
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/shifts3/shifts3_type_long.c:41: }
;	genEndFunction
	ret
;	Total r0 function size at codegen: 1 bytes.
_C0:
	.dw #0x0000
	.dw #0x0001
	.dw #0x0002
;cases/shifts3/shifts3_type_long.c:47: int r1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function r1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_r1::
;cases/shifts3/shifts3_type_long.c:57: while(y<3)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00101$:
;	genCmpLt
	ld	a, c
	sub	a, #0x03
	jp	nc, 00103$
;	skipping generated iCode
;cases/shifts3/shifts3_type_long.c:60: cy = C1[y];		
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
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_C1
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_r1_cy_10000_16+0), a
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	(_r1_cy_10000_16+1), a
	rlca
	sbc	hl, hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	(_r1_cy_10000_16 + 2), hl
;cases/shifts3/shifts3_type_long.c:61: sy = S1[y];
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_S1
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_r1_sy_10000_16+0), a
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_r1_sy_10000_16+1), a
	rlca
	sbc	hl, hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 0
	ld	(_r1_sy_10000_16 + 2), hl
;cases/shifts3/shifts3_type_long.c:63: x0 = cy/64;
;	genCast
;	genMove_o size 3 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_r1_cy_10000_16)
	ld	hl, (_r1_cy_10000_16 + 2)
;	genCmpLt
	bit	7, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;	skipping generated iCode
;	genPlus
	ld	a, e
	add	a, #0x3f
	ld	e, a
	ld	a, d
	adc	a, #0x00
	ld	d, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00141$
	inc	l
00141$:
;	genLabel
00106$:
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
; common peephole 6b removed dead xor a, a
	add	hl, hl
; common peephole 2d removed rla due to unused result.
	add	hl, hl
; common peephole 2d removed rla due to unused result.
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from a into e.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r1_x0_10000_16), a
;cases/shifts3/shifts3_type_long.c:64: x1 = sy/32;  
;	genCast
;	genMove_o size 3 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_r1_sy_10000_16)
	ld	hl, (_r1_sy_10000_16 + 2)
;	genCmpLt
	bit	7, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	skipping generated iCode
;	genPlus
	ld	a, e
	add	a, #0x1f
	ld	e, a
	ld	a, d
	adc	a, #0x00
	ld	d, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00142$
	inc	l
00142$:
;	genLabel
00107$:
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
	xor	a, a
	add	hl, hl
	rla
	add	hl, hl
	rla
	add	hl, hl
	rla
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	af
	ld	a, h
	ld	(#_r1_x1_10000_16), a
; common peephole 19 loaded (#_r1_x1_10000_16) from a directly instead of using hl.
	pop	af
;cases/shifts3/shifts3_type_long.c:66: xx0 = (cy<<2)>>8;
;	genLeftShift
;	genMove_o size 4 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_r1_cy_10000_16)
	ld	de, (_r1_cy_10000_16 + 2)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x02
00143$:
	add	hl, hl
	rl	e
	rl	d
; common peephole 159 removed unused label 00144$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGetByte
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r1_xx0_10000_16), a
;cases/shifts3/shifts3_type_long.c:67: xx1 = (sy<<3)>>8;
;	genLeftShift
;	genMove_o size 4 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_r1_sy_10000_16)
	ld	de, (_r1_sy_10000_16 + 2)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x03
00145$:
	add	hl, hl
	rl	e
	rl	d
; common peephole 159 removed unused label 00146$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00145$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGetByte
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r1_xx1_10000_16), a
;cases/shifts3/shifts3_type_long.c:68: y++;
;	genPlus
	inc	bc
;	genGoto
	jp	00101$
;	genLabel
00103$:
;cases/shifts3/shifts3_type_long.c:73: return x0+x1;
;	genCast
;	genMove_o size 0 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_r1_x0_10000_16)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genCast
;	genMove_o size 0 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_r1_x1_10000_16)
	ld	l, a
	rlca
	sbc	a, a
	ld	h, a
;	genPlus
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/shifts3/shifts3_type_long.c:74: }
;	genEndFunction
	ret
;	Total r1 function size at codegen: 1 bytes.
_C1:
	.dw #0x0000
	.dw #0x0001
	.dw #0x0050
;cases/shifts3/shifts3_type_long.c:80: int r2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function r2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_r2::
;cases/shifts3/shifts3_type_long.c:90: while(y<3)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00101$:
;	genCmpLt
	ld	a, c
	sub	a, #0x03
	jp	nc, 00103$
;	skipping generated iCode
;cases/shifts3/shifts3_type_long.c:93: cy = C2[y];		
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
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_C2
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_r2_cy_10000_19+0), a
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	(_r2_cy_10000_19+1), a
	rlca
	sbc	hl, hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	(_r2_cy_10000_19 + 2), hl
;cases/shifts3/shifts3_type_long.c:94: sy = S2[y];
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_S2
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_r2_sy_10000_19+0), a
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_r2_sy_10000_19+1), a
	rlca
	sbc	hl, hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 0
	ld	(_r2_sy_10000_19 + 2), hl
;cases/shifts3/shifts3_type_long.c:96: x0 = cy/64;
;	genCast
;	genMove_o size 3 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_r2_cy_10000_19)
	ld	hl, (_r2_cy_10000_19 + 2)
;	genCmpLt
	bit	7, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;	skipping generated iCode
;	genPlus
	ld	a, e
	add	a, #0x3f
	ld	e, a
	ld	a, d
	adc	a, #0x00
	ld	d, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00141$
	inc	l
00141$:
;	genLabel
00106$:
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
; common peephole 6b removed dead xor a, a
	add	hl, hl
; common peephole 2d removed rla due to unused result.
	add	hl, hl
; common peephole 2d removed rla due to unused result.
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from a into e.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r2_x0_10000_19), a
;cases/shifts3/shifts3_type_long.c:97: x1 = sy/32;  
;	genCast
;	genMove_o size 3 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_r2_sy_10000_19)
	ld	hl, (_r2_sy_10000_19 + 2)
;	genCmpLt
	bit	7, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	skipping generated iCode
;	genPlus
	ld	a, e
	add	a, #0x1f
	ld	e, a
	ld	a, d
	adc	a, #0x00
	ld	d, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00142$
	inc	l
00142$:
;	genLabel
00107$:
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
	xor	a, a
	add	hl, hl
	rla
	add	hl, hl
	rla
	add	hl, hl
	rla
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	af
	ld	a, h
	ld	(#_r2_x1_10000_19), a
; common peephole 19 loaded (#_r2_x1_10000_19) from a directly instead of using hl.
	pop	af
;cases/shifts3/shifts3_type_long.c:99: xx0 = (cy<<2)>>8;
;	genLeftShift
;	genMove_o size 4 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_r2_cy_10000_19)
	ld	de, (_r2_cy_10000_19 + 2)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x02
00143$:
	add	hl, hl
	rl	e
	rl	d
; common peephole 159 removed unused label 00144$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGetByte
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r2_xx0_10000_19), a
;cases/shifts3/shifts3_type_long.c:100: xx1 = (sy<<3)>>8;
;	genLeftShift
;	genMove_o size 4 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_r2_sy_10000_19)
	ld	de, (_r2_sy_10000_19 + 2)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x03
00145$:
	add	hl, hl
	rl	e
	rl	d
; common peephole 159 removed unused label 00146$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00145$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGetByte
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r2_xx1_10000_19), a
;cases/shifts3/shifts3_type_long.c:101: y++;
;	genPlus
	inc	bc
;	genGoto
	jp	00101$
;	genLabel
00103$:
;cases/shifts3/shifts3_type_long.c:106: return x0+x1;
;	genCast
;	genMove_o size 0 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_r2_x0_10000_19)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genCast
;	genMove_o size 0 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_r2_x1_10000_19)
	ld	l, a
	rlca
	sbc	a, a
	ld	h, a
;	genPlus
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/shifts3/shifts3_type_long.c:107: }
;	genEndFunction
	ret
;	Total r2 function size at codegen: 1 bytes.
_C2:
	.dw #0x0000
	.dw #0x0001
	.dw #0xfffe
;cases/shifts3/shifts3_type_long.c:112: int r3(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function r3
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_r3::
;cases/shifts3/shifts3_type_long.c:122: while(y<3)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00101$:
;	genCmpLt
	ld	a, c
	sub	a, #0x03
	jp	nc, 00103$
;	skipping generated iCode
;cases/shifts3/shifts3_type_long.c:125: cy = C3[y];		
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
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_C3
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_r3_cy_10000_22+0), a
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	(_r3_cy_10000_22+1), a
	rlca
	sbc	hl, hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	(_r3_cy_10000_22 + 2), hl
;cases/shifts3/shifts3_type_long.c:126: sy = S3[y];
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_S3
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
;	genCast
;	genMove_o size 1 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_r3_sy_10000_22+0), a
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_r3_sy_10000_22+1), a
	rlca
	sbc	hl, hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 0
	ld	(_r3_sy_10000_22 + 2), hl
;cases/shifts3/shifts3_type_long.c:128: x0 = cy/64;
;	genCast
;	genMove_o size 3 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_r3_cy_10000_22)
	ld	hl, (_r3_cy_10000_22 + 2)
;	genCmpLt
	bit	7, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;	skipping generated iCode
;	genPlus
	ld	a, e
	add	a, #0x3f
	ld	e, a
	ld	a, d
	adc	a, #0x00
	ld	d, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00141$
	inc	l
00141$:
;	genLabel
00106$:
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
; common peephole 6b removed dead xor a, a
	add	hl, hl
; common peephole 2d removed rla due to unused result.
	add	hl, hl
; common peephole 2d removed rla due to unused result.
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from a into e.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r3_x0_10000_22), a
;cases/shifts3/shifts3_type_long.c:129: x1 = sy/32;  
;	genCast
;	genMove_o size 3 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_r3_sy_10000_22)
	ld	hl, (_r3_sy_10000_22 + 2)
;	genCmpLt
	bit	7, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	skipping generated iCode
;	genPlus
	ld	a, e
	add	a, #0x1f
	ld	e, a
	ld	a, d
	adc	a, #0x00
	ld	d, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00142$
	inc	l
00142$:
;	genLabel
00107$:
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
	xor	a, a
	add	hl, hl
	rla
	add	hl, hl
	rla
	add	hl, hl
	rla
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	af
	ld	a, h
	ld	(#_r3_x1_10000_22), a
; common peephole 19 loaded (#_r3_x1_10000_22) from a directly instead of using hl.
	pop	af
;cases/shifts3/shifts3_type_long.c:131: xx0 = (cy<<2)>>8;
;	genLeftShift
;	genMove_o size 4 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_r3_cy_10000_22)
	ld	de, (_r3_cy_10000_22 + 2)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x02
00143$:
	add	hl, hl
	rl	e
	rl	d
; common peephole 159 removed unused label 00144$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGetByte
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r3_xx0_10000_22), a
;cases/shifts3/shifts3_type_long.c:132: xx1 = (sy<<3)>>8;
;	genLeftShift
;	genMove_o size 4 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_r3_sy_10000_22)
	ld	de, (_r3_sy_10000_22 + 2)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x03
00145$:
	add	hl, hl
	rl	e
	rl	d
; common peephole 159 removed unused label 00146$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00145$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGetByte
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
	ld	(_r3_xx1_10000_22), a
;cases/shifts3/shifts3_type_long.c:133: y++;
;	genPlus
	inc	bc
;	genGoto
	jp	00101$
;	genLabel
00103$:
;cases/shifts3/shifts3_type_long.c:138: return x0+x1;
;	genCast
;	genMove_o size 0 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_r3_x0_10000_22)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genCast
;	genMove_o size 0 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_r3_x1_10000_22)
	ld	l, a
	rlca
	sbc	a, a
	ld	h, a
;	genPlus
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/shifts3/shifts3_type_long.c:139: }
;	genEndFunction
	ret
;	Total r3 function size at codegen: 1 bytes.
_C3:
	.dw #0x0000
	.dw #0x0001
	.dw #0xffb0
;cases/shifts3/shifts3_type_long.c:144: void testShift(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testShift
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testShift::
;cases/shifts3/shifts3_type_long.c:147: ASSERT (r0() == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_r0
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0093
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
;cases/shifts3/shifts3_type_long.c:149: ASSERT (r1() == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_r1
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
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
	ld	hl, #0x0095
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
;cases/shifts3/shifts3_type_long.c:151: ASSERT (r2() == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_r2
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0097
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
;cases/shifts3/shifts3_type_long.c:152: ASSERT (r3() == -2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_r3
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xfe
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00144$
	inc	d
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00144$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0098
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
; common peephole 159 removed unused label 00101$.
;cases/shifts3/shifts3_type_long.c:156: }
;	genEndFunction
	ret
;	Total testShift function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "r0() == 0"
	.db 0x00
___str_2:
	.ascii "cases/shifts3/shifts3_type_long.c"
	.db 0x00
___str_3:
	.ascii "r1() == 2"
	.db 0x00
___str_4:
	.ascii "r2() == 0"
	.db 0x00
___str_5:
	.ascii "r3() == -2"
	.db 0x00
;cases/shifts3/shifts3_type_long.c:160: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/shifts3/shifts3_type_long.c:162: __prints("Running testShift\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;cases/shifts3/shifts3_type_long.c:163: testShift();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts3/shifts3_type_long.c:164: }
;	genEndFunction
	jp	_testShift
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_6:
	.ascii "Running testShift"
	.db 0x0a
	.db 0x00
;cases/shifts3/shifts3_type_long.c:169: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/shifts3/shifts3_type_long.c:171: return "shifts3_type_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/shifts3/shifts3_type_long.c:172: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_7:
	.ascii "shifts3_type_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__S0:
	.dw #0x0005
	.dw #0x0000
	.dw #0x0001
__xinit__S1:
	.dw #0x0005
	.dw #0x0000
	.dw #0x0028
__xinit__S2:
	.dw #0x0005
	.dw #0x0000
	.dw #0xffff
__xinit__S3:
	.dw #0x0005
	.dw #0x0000
	.dw #0xffd8
	.area _CABS (ABS)
