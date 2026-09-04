;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module extern1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _has_undefined_symbol2
	.globl _inlined_function
	.globl _bug_2591
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
;fwk/lib/extern1.c:13: extern long bug_2591 (long a, long b, long c)
;	genLabel
;	genFunction
;	---------------------------------
; Function bug_2591
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_bug_2591::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;fwk/lib/extern1.c:15: return a | b | c;
;	genOr
	ld	a, e
	or	a, 4 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
	or	a, 5 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
	or	a, 6 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	or	a, 7 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genOr
	ld	a, c
	or	a, 8 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	or	a, 9 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
	or	a, 10 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	or	a, 11 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;fwk/lib/extern1.c:16: }
;	genEndFunction
	pop	ix
	ret
;	Total bug_2591 function size at codegen: 3 bytes.
;fwk/lib/extern1.c:18: extern char inlined_function (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function inlined_function
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_inlined_function::
;fwk/lib/extern1.c:20: return 2;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
;	genLabel
; common peephole 159 removed unused label 00101$.
;fwk/lib/extern1.c:21: }
;	genEndFunction
	ret
;	Total inlined_function function size at codegen: 1 bytes.
;fwk/lib/extern1.c:25: has_undefined_symbol2(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function has_undefined_symbol2
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_has_undefined_symbol2::
;fwk/lib/extern1.c:27: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total has_undefined_symbol2 function size at codegen: 1 bytes.
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
