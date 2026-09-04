;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug3410878
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _mainx
	.globl _get_tile_data
	.globl _cvu_vmemtomemcpy
	.globl _cvu_memtovmemcpy
	.globl ___prints
	.globl _cs
	.globl _step
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
_step::
	.ds 1
_cs::
	.ds 4
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
;cases/./../tests/bug3410878.c:33: extern void cvu_memtovmemcpy(cv_vmemp dest, const void * src, size_t n)
;	genLabel
;	genFunction
;	---------------------------------
; Function cvu_memtovmemcpy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_cvu_memtovmemcpy::
;cases/./../tests/bug3410878.c:35: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total cvu_memtovmemcpy function size at codegen: 3 bytes.
;cases/./../tests/bug3410878.c:37: extern void cvu_vmemtomemcpy(void *dest, cv_vmemp src, size_t n)
;	genLabel
;	genFunction
;	---------------------------------
; Function cvu_vmemtomemcpy
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_cvu_vmemtomemcpy::
;cases/./../tests/bug3410878.c:39: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total cvu_vmemtomemcpy function size at codegen: 3 bytes.
;cases/./../tests/bug3410878.c:41: uint8_t *get_tile_data(uint16_t x, uint16_t y)
;	genLabel
;	genFunction
;	---------------------------------
; Function get_tile_data
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_get_tile_data::
;cases/./../tests/bug3410878.c:43: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total get_tile_data function size at codegen: 1 bytes.
;cases/./../tests/bug3410878.c:51: void mainx(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function mainx
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 42 bytes.
_mainx::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -42
	ld	hl, #-42
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug3410878.c:58: x = 16;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), #0x10
	ld	-3 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/bug3410878.c:59: y = 12;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), #0x0c
	ld	-1 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/bug3410878.c:60: mapx = 0;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;cases/./../tests/bug3410878.c:61: mapy = 0;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
;cases/./../tests/bug3410878.c:66: while(!step);
;	genLabel
00101$:
;	genIfx
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_step
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
;cases/./../tests/bug3410878.c:67: step = false;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_step), a
; common peephole 19 loaded (#_step) from a directly instead of using hl.
;cases/./../tests/bug3410878.c:69: if(cs.joystick & CV_RIGHT)
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_cs + 1) + 0)
;	genAnd
	bit	1, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00477$.
;	skipping generated iCode
;cases/./../tests/bug3410878.c:70: x++;
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00478$
	inc	-3 (ix)
00478$:
;	genLabel
00105$:
;cases/./../tests/bug3410878.c:71: if(cs.joystick & CV_DOWN)
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_cs + 1) + 0)
;	genAnd
	bit	2, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00479$.
;	skipping generated iCode
;cases/./../tests/bug3410878.c:72: y++;
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00480$
	inc	-1 (ix)
00480$:
;	genLabel
00107$:
;cases/./../tests/bug3410878.c:73: if(cs.joystick & CV_LEFT && x > 8)
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_cs + 1) + 0)
;	genAnd
	bit	3, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00481$.
;	skipping generated iCode
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -4 (ix)
	ld	b, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpGt
	ld	a, #0x08
	cp	a, c
	ld	a, #0x00
	sbc	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00109$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:74: x--;
;	genMinus
;fetchPairLong
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	dec	hl
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genLabel
00109$:
;cases/./../tests/bug3410878.c:75: if(cs.joystick & CV_UP && y > 8)
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#(_cs + 1) + 0)
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00112$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00482$.
;	skipping generated iCode
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -2 (ix)
	ld	b, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpGt
	ld	a, #0x08
	cp	a, c
	ld	a, #0x00
	sbc	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00112$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:76: y--;
;	genMinus
;fetchPairLong
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	dec	hl
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genLabel
00112$:
;cases/./../tests/bug3410878.c:78: if(x > mapx + 24)
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), e
	ld	-7 (ix), d
; common peephole 11 loaded lh from ed directly instead of going through -8 (ix) -7 (ix).
	ld	l, e
	ld	h, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0018
	add	hl, bc
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCmpGt
	ld	a, l
	sub	a, -6 (ix)
	ld	a, h
	sbc	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00119$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:80: for(i = 0; i < 24; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00137$:
;	genPlus
	inc	a
;	genCmpLt
	cp	a, #0x18
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00137$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:85: mapx += 8;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0008
	add	hl, de
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3410878.c:87: for(i = 0; i < 8; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00139$:
;	genPlus
	inc	a
;	genCmpLt
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00139$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:92: for(i = 0; i < 8; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00141$:
;	genPlus
	inc	a
;	genCmpLt
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00141$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:97: for(i = 0; i < 8; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00143$:
;	genPlus
	inc	a
;	genCmpLt
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00143$
;	skipping generated iCode
;	genLabel
00119$:
;cases/./../tests/bug3410878.c:78: if(x > mapx + 24)
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug3410878.c:102: if(x < mapx + 8)
;	genPlus
;fetchPairLong
	ld	hl, #0x0008
	add	hl, bc
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, l
	ld	a, -5 (ix)
	sbc	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00125$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:104: for(i = 0; i < 24; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x00
;	genLabel
00145$:
;	genPlus
	inc	e
;	genCmpLt
	ld	a, e
	sub	a, #0x18
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00145$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:109: mapx -= 8;
;	genMinus
	ld	a, c
	add	a, #0xf8
	ld	e, a
	ld	a, b
	adc	a, #0xff
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3410878.c:111: for(i = 0; i < 8; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00147$:
;	genPlus
	inc	a
;	genCmpLt
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00147$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:116: for(i = 0; i < 8; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00149$:
;	genPlus
	inc	a
;	genCmpLt
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00149$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:121: for(i = 0; i < 8; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00151$:
;	genPlus
	inc	a
;	genCmpLt
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00151$
;	skipping generated iCode
;	genLabel
00125$:
;cases/./../tests/bug3410878.c:126: if(y > mapy + 16)
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, l
	add	a, #0x10
	ld	c, a
	ld	a, h
	adc	a, #0x00
	ld	b, a
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCmpGt
	ld	a, c
	sub	a, -6 (ix)
	ld	a, b
	sbc	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00130$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:128: for(i = 0; i < 16; i++)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genLabel
00153$:
;	genPlus
	inc	c
;	genCmpLt
	ld	a, c
	sub	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00153$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:133: mapy += 8;
;	genPlus
;fetchPairLong
	ld	bc, #0x0008
	add	hl, bc
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug3410878.c:134: for(j = 0; j < 32; j += 8)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, #0x00
;cases/./../tests/bug3410878.c:137: for(i = 0; i < 8; i++)
;	genLabel
00233$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00155$:
;	genPlus
	inc	a
;	genCmpLt
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00155$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:134: for(j = 0; j < 32; j += 8)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	a, #0x08
;	genCmpLt
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	sub	a, #0x20
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00233$
;	skipping generated iCode
;	genLabel
00130$:
;cases/./../tests/bug3410878.c:126: if(y > mapy + 16)
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -10 (ix)
	ld	b, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug3410878.c:144: if(y < mapy + 8)
;	genPlus
;fetchPairLong
	ld	hl, #0x0008
	add	hl, bc
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, l
	ld	a, -5 (ix)
	sbc	a, h
	jp	nc, 00101$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:146: for(i = 23; i >= 8; i--)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x17
;	genLabel
00159$:
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
;	genCmpLt
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00159$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:151: mapy -= 8;
;	genMinus
	ld	a, c
	add	a, #0xf8
	ld	c, a
	ld	a, b
	adc	a, #0xff
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), c
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug3410878.c:152: for(j = 0; j < 32; j += 8)
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, #0x00
;cases/./../tests/bug3410878.c:155: for(i = 0; i < 8; i++)
;	genLabel
00239$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00161$:
;	genPlus
	inc	a
;	genCmpLt
	cp	a, #0x08
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00161$
;	skipping generated iCode
;cases/./../tests/bug3410878.c:152: for(j = 0; j < 32; j += 8)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	add	a, #0x08
;	genCmpLt
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	sub	a, #0x20
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00239$
;	skipping generated iCode
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00167$.
;cases/./../tests/bug3410878.c:163: }
;	genEndFunction
	jp	00101$
; common peephole 153 removed unused ret.
;	Total mainx function size at codegen: 17 bytes.
;cases/./../tests/bug3410878.c:167: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug3410878.c:169: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 13 bytes.
;cases/tst_bug3410878.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug3410878.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug3410878.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3410878.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug3410878.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug3410878.c:15: return "bug3410878.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3410878.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug3410878.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
