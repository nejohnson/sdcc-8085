;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module statics
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _get_indexed
	.globl _get_float_1
	.globl _get_long_1
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
_long_1:
	.ds 4
_float_1:
	.ds 4
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
;fwk/lib/statics.c:5: static long s_get_long_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function s_get_long_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_s_get_long_1:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
;fwk/lib/statics.c:7: long alfa = long_1;
;	genAssign
	ld	sp, hl
; common peephole 9c reused value still in hl.
	ex	de, hl
	ld	hl, #_long_1
	ld	bc, #4
	ldir
;fwk/lib/statics.c:8: long beta = long_1 + alfa;
;	genPlus
	ld	a, -8 (ix)
;	Shift into pair
	ld	hl, #_long_1
	add	a, (hl)
	ld	e, a
	ld	a, -7 (ix)
	inc	hl
	adc	a, (hl)
	ld	d, a
	ld	a, -6 (ix)
	inc	hl
	adc	a, (hl)
	ld	c, a
	ld	a, -5 (ix)
	inc	hl
	adc	a, (hl)
	ld	b, a
;fwk/lib/statics.c:9: long gamma = long_1 + beta;
;	genPlus
	ld	a, e
;	Shift into pair
	ld	hl, #_long_1
	add	a, (hl)
	ld	-4 (ix), a
; common peephole 96b move inc hl before ld a, d
	inc	hl
	ld	a, d
	adc	a, (hl)
	ld	-3 (ix), a
; common peephole 96b move inc hl before ld a, c
	inc	hl
	ld	a, c
	adc	a, (hl)
	ld	-2 (ix), a
; common peephole 96b move inc hl before ld a, b
	inc	hl
	ld	a, b
	adc	a, (hl)
	ld	-1 (ix), a
;fwk/lib/statics.c:10: return alfa + beta + gamma;
;	genPlus
	ld	a, -8 (ix)
	add	a, e
	ld	e, a
	ld	a, -7 (ix)
	adc	a, d
	ld	d, a
	ld	a, -6 (ix)
	adc	a, c
	ld	c, a
	ld	a, -5 (ix)
	adc	a, b
	ld	b, a
;	genPlus
	ld	a, e
	add	a, -4 (ix)
	ld	e, a
	ld	a, d
	adc	a, -3 (ix)
	ld	d, a
	ld	a, c
	adc	a, -2 (ix)
	ld	l, a
	ld	a, b
	adc	a, -1 (ix)
	ld	h, a
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;fwk/lib/statics.c:11: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total s_get_long_1 function size at codegen: 14 bytes.
;fwk/lib/statics.c:13: long get_long_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function get_long_1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_get_long_1::
;fwk/lib/statics.c:15: return s_get_long_1();
;	genCall
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;fwk/lib/statics.c:16: }
;	genEndFunction
	jp	_s_get_long_1
; common peephole 152 removed unused ret.
;	Total get_long_1 function size at codegen: 1 bytes.
;fwk/lib/statics.c:20: static float s_get_float_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function s_get_float_1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_s_get_float_1:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;fwk/lib/statics.c:22: float alfa = float_1;
;	genAssign
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_float_1)
	ld	hl, (_float_1 + 2)
;fwk/lib/statics.c:23: float beta = float_1 + alfa;
;	genIpush
	push	hl
	push	bc
	push	hl
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_float_1)
	ld	hl, (_float_1 + 2)
;fwk/lib/statics.c:24: float gamma = float_1 + beta;
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
; common peephole 50a eliminated dead pop/push bc pair.
	push	de
	push	iy
	push	iy
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	de, (_float_1)
	ld	hl, (_float_1 + 2)
;fwk/lib/statics.c:25: return alfa + beta + gamma;
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	iy
	pop	de
	pop	bc
	pop	hl
;	genIpush
	push	iy
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -2 (ix)
	ld	b, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, -4 (ix)
	ld	b, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;fwk/lib/statics.c:26: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total s_get_float_1 function size at codegen: 5 bytes.
;fwk/lib/statics.c:28: float get_float_1(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function get_float_1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_get_float_1::
;fwk/lib/statics.c:30: return s_get_float_1();
;	genCall
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;fwk/lib/statics.c:31: }
;	genEndFunction
	jp	_s_get_float_1
; common peephole 152 removed unused ret.
;	Total get_float_1 function size at codegen: 1 bytes.
;fwk/lib/statics.c:34: static char s_get_indexed(char index, char *msg)
;	genLabel
;	genFunction
;	---------------------------------
; Function s_get_indexed
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_s_get_indexed:
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;fwk/lib/statics.c:36: return msg[index];
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, #0x00
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;fwk/lib/statics.c:37: }
;	genEndFunction
	ret
;	Total s_get_indexed function size at codegen: 1 bytes.
;fwk/lib/statics.c:39: char get_indexed(char index, char *msg)
;	genLabel
;	genFunction
;	---------------------------------
; Function get_indexed
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_get_indexed::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;fwk/lib/statics.c:41: return s_get_indexed(index, msg);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;fwk/lib/statics.c:42: }
;	genEndFunction
	jp	_s_get_indexed
; common peephole 152 removed unused ret.
;	Total get_indexed function size at codegen: 1 bytes.
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__long_1:
	.byte #0x01, #0x00, #0x00, #0x00	;  1
__xinit__float_1:
	.byte #0x00, #0x00, #0x80, #0x3f	;  1.000000e+00
	.area _CABS (ABS)
