;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2684
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl __vfnprintf
	.globl ___ultostr
	.globl ___ltostr
	.globl _fflush
	.globl _fputc
	.globl _strcat
	.globl ___prints
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
;cases/./../tests/bug-2684.c:47: int fputc(int c, FILE *stream)
;	genLabel
;	genFunction
;	---------------------------------
; Function fputc
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fputc::
;cases/./../tests/bug-2684.c:49: return (0);
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2684.c:50: }
;	genEndFunction
	ret
;	Total fputc function size at codegen: 1 bytes.
;cases/./../tests/bug-2684.c:52: int fflush(FILE *stream)
;	genLabel
;	genFunction
;	---------------------------------
; Function fflush
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fflush::
;cases/./../tests/bug-2684.c:54: return (0);
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2684.c:55: }
;	genEndFunction
	ret
;	Total fflush function size at codegen: 1 bytes.
;cases/./../tests/bug-2684.c:61: extern char *__ltostr(long __value, int __radix)
;	genLabel
;	genFunction
;	---------------------------------
; Function __ltostr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___ltostr::
;cases/./../tests/bug-2684.c:63: return ("");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_0
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2684.c:64: }
;	genEndFunction
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total __ltostr function size at codegen: 3 bytes.
___str_0:
	.db 0x00
;cases/./../tests/bug-2684.c:66: extern char *__ultostr(unsigned long value, int __radix)
;	genLabel
;	genFunction
;	---------------------------------
; Function __ultostr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___ultostr::
;cases/./../tests/bug-2684.c:68: return ("");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2684.c:69: }
;	genEndFunction
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total __ultostr function size at codegen: 3 bytes.
___str_1:
	.db 0x00
;cases/./../tests/bug-2684.c:76: static int prtfld(FILE * op, size_t maxlen, size_t ct, unsigned char *buf, int ljustf, char sign,
;	genLabel
;	genFunction
;	---------------------------------
; Function prtfld
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_prtfld:
;cases/./../tests/bug-2684.c:79: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2684.c:80: }
;	genEndFunction
	pop	hl
;	adjustStack by 14
	pop	af
	pop	af
	pop	af
	pop	af
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total prtfld function size at codegen: 9 bytes.
;cases/./../tests/bug-2684.c:83: int _vfnprintf(FILE * op, size_t maxlen, const char *fmt, va_list ap)
;	genLabel
;	genFunction
;	---------------------------------
; Function _vfnprintf
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 95 bytes.
__vfnprintf::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -95
	ld	iy, #-95
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2684.c:85: register int i, ljustf, lval, preci, dpoint, width, radix, cnt = 0;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;cases/./../tests/bug-2684.c:93: buffer_mode = (op->mode & __MODE_BUF);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000c
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	dec	hl
;	genAnd
	ld	a, c
	and	a, #0x03
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-27 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-26 (ix), #0x00
;cases/./../tests/bug-2684.c:94: op->mode &= (~__MODE_BUF);
;	genAnd
	ld	a, c
	and	a, #0xfc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
	ld	(hl), b
;cases/./../tests/bug-2684.c:95: while (*fmt) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genLabel
00177$:
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
	jp	z, 00179$
;cases/./../tests/bug-2684.c:96: if (*fmt == '%') {
;	genCmpEq
	cp	a, #0x25
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00559$.
	jp	nz, 00170$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00560$.
;	skipping generated iCode
;cases/./../tests/bug-2684.c:99: ljustf = 0;	/* left justify flag */
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-25 (ix), a
	ld	-24 (ix), a
;cases/./../tests/bug-2684.c:100: sign = '\0';	/* sign char & status */
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-23 (ix), #0x00
;cases/./../tests/bug-2684.c:101: pad = ' ';	/* justification padding char */
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), #0x20
;cases/./../tests/bug-2684.c:102: width = -1;	/* min field width */
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-21 (ix), #0xff
	ld	-20 (ix), #0xff
;cases/./../tests/bug-2684.c:103: dpoint = 0;	/* found decimal point */
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-19 (ix), #0x00
;cases/./../tests/bug-2684.c:104: preci = -1;	/* max data width */
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), #0xff
	ld	-17 (ix), #0xff
;cases/./../tests/bug-2684.c:105: radix = 10;	/* number base */
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), #0x0a
	xor	a, a
	ld	-15 (ix), a
;cases/./../tests/bug-2684.c:106: ptmp = tmp;	/* pointer to area to print */
;	skipping iCode since result will be rematerialized
;	genAssign
	push	hl
	push	af
	ld	hl, #8
	add	hl, sp
; common peephole 50a eliminated dead pop/push hl pair.
; common peephole 51 eliminated dead pop/push af pair.
	ld	-14 (ix), l
	ld	hl, #8
	add	hl, sp
	pop	af
	ld	-13 (ix), h
	pop	hl
;cases/./../tests/bug-2684.c:107: hash = 0;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), #0x00
;cases/./../tests/bug-2684.c:108: lval = (sizeof(int) == sizeof(long));	/* long value flagged */
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;cases/./../tests/bug-2684.c:109: fmtnxt:for (i = 0, ++fmt;;
;	genLabel
00103$:
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
;	genPlus
	inc	4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00561$
	inc	5 (ix)
00561$:
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -22 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x20
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00563$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00562$.
	xor	a, a
00563$:
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 4 (ix)
	ld	d, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00184$:
;cases/./../tests/bug-2684.c:111: if (*fmt < '0' || *fmt > '9')
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	ld	b, a
; common peephole 98 removed redundant load from b into a.
	sub	a, #0x30
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00114$
;	skipping generated iCode
;	genCmpGt
	ld	a, #0x39
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00114$
;	skipping generated iCode
;cases/./../tests/bug-2684.c:113: i *= 10;
;	genMult
	push	de
;fetchPairLong
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-2684.c:114: i += (*fmt - '0');
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x00
;	genMinus
	add	a, #0xd0
	ld	-8 (ix), a
	ld	a, b
	adc	a, #0xff
	ld	-7 (ix), a
;	genPlus
	ld	a, l
	add	a, -8 (ix)
	ld	-11 (ix), a
	ld	a, h
	adc	a, -7 (ix)
	ld	-10 (ix), a
;cases/./../tests/bug-2684.c:115: if (dpoint)
;	genIfx
	ld	a, -19 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
;cases/./../tests/bug-2684.c:116: preci = i;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	ld	-18 (ix), a
	ld	a, -10 (ix)
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00185$
;	genLabel
00112$:
;cases/./../tests/bug-2684.c:117: else if (!i && (pad == ' ')) {
;	genIfx
	ld	a, -10 (ix)
	or	a, -11 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
;	genIfx
	ld	a, -9 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
;cases/./../tests/bug-2684.c:118: pad = '0';
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), #0x30
;cases/./../tests/bug-2684.c:119: goto fmtnxt;
;	genGoto
	jp	00103$
;	genLabel
00108$:
;cases/./../tests/bug-2684.c:121: width = i;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
	ld	-21 (ix), a
	ld	a, -10 (ix)
	ld	-20 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLabel
00185$:
;cases/./../tests/bug-2684.c:110: ++fmt) {
;	genPlus
	inc	de
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	4 (ix), e
	ld	5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00184$
;	genLabel
00114$:
;cases/./../tests/bug-2684.c:123: switch (*fmt) {
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00115$
;	genCmpEq
	cp	a, #0x20
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00564$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x21
	jp	z, 00155$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00565$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x23
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00119$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00566$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x2a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00567$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x2b
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00568$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x2d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00569$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x2e
	jp	z, 00126$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00570$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x58
	jp	z, 00134$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00571$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x62
	jp	z, 00131$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00572$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x63
	jp	z, 00158$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00573$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x64
	jp	z, 00130$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00574$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x68
	jp	z, 00128$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00575$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x69
	jp	z, 00130$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00576$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x6c
	jp	z, 00127$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00577$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x6f
	jp	z, 00132$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00578$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x70
	jp	z, 00133$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00579$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x73
	jp	z, 00162$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00580$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x75
	jp	z, 00137$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00581$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x78
	jp	z, 00135$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00582$.
;	skipping generated iCode
;	genGoto
	jp	00170$
;cases/./../tests/bug-2684.c:124: case '\0':	/* early EOS */
;	genLabel
00115$:
;cases/./../tests/bug-2684.c:125: --fmt;
;	genMinus
	ld	a, l
	add	a, #0xff
	ld	4 (ix), a
	ld	a, h
	adc	a, #0xff
	ld	5 (ix), a
;cases/./../tests/bug-2684.c:126: goto charout;
;	genGoto
	jp	00170$
;cases/./../tests/bug-2684.c:128: case '-':	/* left justification */
;	genLabel
00116$:
;cases/./../tests/bug-2684.c:129: ljustf = 1;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-25 (ix), #0x01
	ld	-24 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/bug-2684.c:130: goto fmtnxt;
;	genGoto
	jp	00103$
;cases/./../tests/bug-2684.c:133: case '+':	/* leading sign flag */
;	genLabel
00118$:
;cases/./../tests/bug-2684.c:134: sign = *fmt;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, 4 (ix)
	ld	d, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-23 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2684.c:135: goto fmtnxt;
;	genGoto
	jp	00103$
;cases/./../tests/bug-2684.c:137: case '#':
;	genLabel
00119$:
;cases/./../tests/bug-2684.c:138: hash = 1;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), #0x01
;cases/./../tests/bug-2684.c:139: goto fmtnxt;
;	genGoto
	jp	00103$
;cases/./../tests/bug-2684.c:141: case '*':	/* parameter width value */
;	genLabel
00120$:
;cases/./../tests/bug-2684.c:142: i = va_arg(ap, int);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
	inc	hl
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), l
	ld	7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	dec	hl
	dec	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;cases/./../tests/bug-2684.c:143: if (dpoint)
;	genIfx
	ld	a, -19 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
;cases/./../tests/bug-2684.c:144: preci = i;
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), e
	ld	-17 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00103$
;	genLabel
00124$:
;cases/./../tests/bug-2684.c:145: else if ((width = i) < 0) {
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-21 (ix), e
	ld	-20 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpLt
	bit	7, d
	jp	z, 00103$
;	skipping generated iCode
;cases/./../tests/bug-2684.c:146: ljustf = 1;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-25 (ix), #0x01
	ld	-24 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/bug-2684.c:147: width = -i;
;	genUminus
	xor	a, a
	sub	a, e
	ld	-21 (ix), a
	sbc	a, a
	sub	a, d
	ld	-20 (ix), a
;cases/./../tests/bug-2684.c:149: goto fmtnxt;
;	genGoto
	jp	00103$
;cases/./../tests/bug-2684.c:151: case '.':	/* secondary width field */
;	genLabel
00126$:
;cases/./../tests/bug-2684.c:152: dpoint = 1;
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-19 (ix), #0x01
;cases/./../tests/bug-2684.c:153: goto fmtnxt;
;	genGoto
	jp	00103$
;cases/./../tests/bug-2684.c:155: case 'l':	/* long data */
;	genLabel
00127$:
;cases/./../tests/bug-2684.c:156: lval = 1;
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x01
;cases/./../tests/bug-2684.c:157: goto fmtnxt;
;	genGoto
	jp	00103$
;cases/./../tests/bug-2684.c:159: case 'h':	/* short data */
;	genLabel
00128$:
;cases/./../tests/bug-2684.c:160: lval = 0;
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;cases/./../tests/bug-2684.c:161: goto fmtnxt;
;	genGoto
	jp	00103$
;cases/./../tests/bug-2684.c:164: case 'i':
;	genLabel
00130$:
;cases/./../tests/bug-2684.c:165: ptmp = __ltostr((long) ((lval) ?
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00188$
;cases/./../tests/bug-2684.c:166: va_arg(ap, long) :
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0004
	add	hl, de
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), l
	ld	7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	ld	a, l
	add	a, #0xfc
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00189$
;	genLabel
00188$:
;cases/./../tests/bug-2684.c:167: va_arg(ap, int)), 10);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
	inc	hl
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), l
	ld	7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	dec	hl
	dec	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
	rlca
	sbc	a, a
	ld	c, a
	ld	b, a
;	genLabel
00189$:
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x000a
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___ltostr
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), e
	ld	-13 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2684.c:168: goto printit;
;	genGoto
	jp	00165$
;cases/./../tests/bug-2684.c:170: case 'b':	/* Unsigned binary */
;	genLabel
00131$:
;cases/./../tests/bug-2684.c:171: radix = 2;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), #0x02
	ld	-15 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/bug-2684.c:172: goto usproc;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00137$
;cases/./../tests/bug-2684.c:174: case 'o':	/* Unsigned octal */
;	genLabel
00132$:
;cases/./../tests/bug-2684.c:175: radix = 8;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), #0x08
	ld	-15 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/bug-2684.c:176: goto usproc;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00137$
;cases/./../tests/bug-2684.c:178: case 'p':	/* Pointer */
;	genLabel
00133$:
;cases/./../tests/bug-2684.c:179: lval = (sizeof(char *) == sizeof(long));
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;cases/./../tests/bug-2684.c:180: pad = '0';
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), #0x30
;cases/./../tests/bug-2684.c:181: width = 5;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-21 (ix), #0x05
	ld	-20 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/bug-2684.c:182: preci = 8;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), #0x08
	ld	-17 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/bug-2684.c:185: case 'X':	/* Unsigned hexadecimal 'ABC' */
;	genLabel
00134$:
;cases/./../tests/bug-2684.c:186: radix = 16;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), #0x10
	ld	-15 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/bug-2684.c:187: goto usproc;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00137$
;cases/./../tests/bug-2684.c:189: case 'x':	/* Unsigned hexadecimal 'abc' */
;	genLabel
00135$:
;cases/./../tests/bug-2684.c:190: radix = -16;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), #0xf0
	ld	-15 (ix), #0xff
;cases/./../tests/bug-2684.c:194: usproc:
;	genLabel
00137$:
;cases/./../tests/bug-2684.c:195: val = lval ? va_arg(ap, unsigned long) :
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00190$
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0004
	add	hl, de
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), l
	ld	7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	ld	a, l
	add	a, #0xfc
	ld	l, a
	ld	a, h
	adc	a, #0xff
;	genPointerGet
;fetchPairLong
	ld	h, a
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00191$
;	genLabel
00190$:
;cases/./../tests/bug-2684.c:196: va_arg(ap, unsigned int);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
	inc	hl
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), l
	ld	7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	dec	hl
	dec	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
00191$:
;	genAssign
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	bc
	ld	-93 (ix), e
	ld	-92 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2684.c:197: ptmp = __ultostr(val, radix < 0 ? -radix : radix);
;	genCmpLt
	bit	7, -15 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00192$
;	skipping generated iCode
;	genUminus
	xor	a, a
	sub	a, -16 (ix)
	ld	c, a
	sbc	a, a
	sub	a, -15 (ix)
	ld	b, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00193$
;	genLabel
00192$:
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, -16 (ix)
	ld	b, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00193$:
;	genIpush
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
; common peephole 52a replaced push/pop pair by loads.
	pop	de
	push	de
	push	hl
	ld	l, -93 (ix)
	ld	h, -92 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___ultostr
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), e
	ld	-13 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2684.c:198: add = "";
;	genCast
;	genMove_o size 2 result type 6 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #<(___str_2)
	ld	-7 (ix), #>(___str_2)
;cases/./../tests/bug-2684.c:199: if (hash) {
;	genIfx
	ld	a, -12 (ix)
	or	a, a
	jp	z, 00165$
;cases/./../tests/bug-2684.c:200: if (radix == 2)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, -15 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00583$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00149$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00584$.
;	skipping generated iCode
;cases/./../tests/bug-2684.c:201: add = "0b";
;	genCast
;	genMove_o size 2 result type 6 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #<(___str_3)
	ld	-7 (ix), #>(___str_3)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00150$
;	genLabel
00149$:
;cases/./../tests/bug-2684.c:202: else if (radix == 8) {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x08
	or	a, -15 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00585$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00146$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00586$.
;	skipping generated iCode
;cases/./../tests/bug-2684.c:203: if (val != 0)
;	genIfx
	ld	a, -92 (ix)
	or	a, -93 (ix)
	or	a, -94 (ix)
	or	a, -95 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00150$
;cases/./../tests/bug-2684.c:204: add = "0";
;	genCast
;	genMove_o size 2 result type 6 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #<(___str_4)
	ld	-7 (ix), #>(___str_4)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00150$
;	genLabel
00146$:
;cases/./../tests/bug-2684.c:205: } else if (radix == 16)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x10
	or	a, -15 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00587$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00588$.
;	skipping generated iCode
;cases/./../tests/bug-2684.c:206: add = "0x";
;	genCast
;	genMove_o size 2 result type 6 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #<(___str_5)
	ld	-7 (ix), #>(___str_5)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00150$
;	genLabel
00143$:
;cases/./../tests/bug-2684.c:207: else if (radix == -16)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -16 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0xf0
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00150$
; common peephole 84 jumped to 00150$ directly instead of via 00589$.
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00589$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00150$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00590$.
;	skipping generated iCode
;cases/./../tests/bug-2684.c:208: add = "0X";
;	genCast
;	genMove_o size 2 result type 6 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #<(___str_6)
	ld	-7 (ix), #>(___str_6)
;	genLabel
00150$:
;cases/./../tests/bug-2684.c:209: if (*add) {
;	genPointerGet
;fetchPairLong
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genIfx
	or	a, a
	jp	z, 00165$
;cases/./../tests/bug-2684.c:210: pad = '\0';
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), #0x00
;cases/./../tests/bug-2684.c:211: strcpy(tmp, add);
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
	ex	de, hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
00591$:
	cp	a, (hl)
	ldi
	jr	nz, 00591$
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/bug-2684.c:212: ptmp = strcat(tmp, ptmp);
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #4
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strcat
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), e
	ld	-13 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2684.c:215: goto printit;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00165$
;cases/./../tests/bug-2684.c:217: case '!':	/* inline Character */
;	genLabel
00155$:
;cases/./../tests/bug-2684.c:218: if ((i = fmt[1]) != 0)
;	genPlus
	inc	hl
;	genPointerGet
	ld	e, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
; common peephole 1 removed dead load from d into b.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00159$
;cases/./../tests/bug-2684.c:219: ++fmt;
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	4 (ix), l
	ld	5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2684.c:220: goto Chr;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00159$
;cases/./../tests/bug-2684.c:222: case 'c':	/* Character */
;	genLabel
00158$:
;cases/./../tests/bug-2684.c:223: i = va_arg(ap, int);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, 6 (ix)
	ld	b, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	bc
	inc	bc
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), c
	ld	7 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	dec	bc
	dec	bc
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	c, (hl)
; common peephole 2c removed inc hl due to unused result.
;	_moveFrom_tpair_()
; common peephole 1 removed dead load from (hl) into b.
;cases/./../tests/bug-2684.c:224: Chr:ptmp[0] =
;	genLabel
00159$:
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
;cases/./../tests/bug-2684.c:226: ptmp[1] = '\0';
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/bug-2684.c:227: if (hash) {
;	genIfx
	ld	a, -12 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00163$
;cases/./../tests/bug-2684.c:228: pad = *ptmp;
;	genPointerGet
;fetchPairLong
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-22 (ix), a
;cases/./../tests/bug-2684.c:229: goto chrpad;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00164$
;cases/./../tests/bug-2684.c:233: case 's':	/* String */
;	genLabel
00162$:
;cases/./../tests/bug-2684.c:234: ptmp = va_arg(ap, char *);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, 6 (ix)
	ld	b, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	bc
	inc	bc
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	6 (ix), c
	ld	7 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	dec	bc
	dec	bc
;	genPointerGet
;	_moveFrom_tpair_()
	ld	a, (bc)
	ld	-14 (ix), a
	inc	bc
;	_moveFrom_tpair_()
	ld	a, (bc)
	ld	-13 (ix), a
;cases/./../tests/bug-2684.c:235: nopad:pad =
;	genLabel
00163$:
;cases/./../tests/bug-2684.c:236: ' ';
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), #0x20
;cases/./../tests/bug-2684.c:237: chrpad:sign =
;	genLabel
00164$:
;cases/./../tests/bug-2684.c:238: '\0';
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-23 (ix), #0x00
;cases/./../tests/bug-2684.c:239: printit:cnt +=
;	genLabel
00165$:
;cases/./../tests/bug-2684.c:240: prtfld(op, maxlen, cnt, (unsigned char *) ptmp,
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -27 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -18 (ix)
	ld	h, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -21 (ix)
	ld	h, -20 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 47a pushed -22 (ix), -23 (ix) through hl instead of af.
	ld	h, -22 (ix)
	ld	l, -23 (ix)
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -25 (ix)
	ld	h, #0x00
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_prtfld
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/bug-2684.c:243: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00176$
;cases/./../tests/bug-2684.c:252: fputc(*fmt, op);
;	genLabel
00170$:
;cases/./../tests/bug-2684.c:253: ++cnt;
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00592$
	inc	-1 (ix)
00592$:
;cases/./../tests/bug-2684.c:255: fflush(op);
;	genLabel
00176$:
;cases/./../tests/bug-2684.c:257: ++fmt;
;	genPlus
	inc	4 (ix)
	jp	nz, 00177$
; common peephole 84 jumped to 00177$ directly instead of via 00593$.
	inc	5 (ix)
; common peephole 159 removed unused label 00593$.
;	genGoto
	jp	00177$
;	genLabel
00179$:
;cases/./../tests/bug-2684.c:259: op->mode |= buffer_mode;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000c
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	dec	hl
;	genOr
	or	a, -27 (ix)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
	ld	(hl), c
;cases/./../tests/bug-2684.c:262: if (buffer_mode == _IOLBF)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -27 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, -26 (ix)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00594$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00183$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00595$.
;	skipping generated iCode
;cases/./../tests/bug-2684.c:263: op->bufwrite = op->bufstart;
;	genPlus
	ld	a, -4 (ix)
	add	a, #0x04
	ld	b, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	c, a
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	hl, #6
	add	hl, de
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, b
	ld	h, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
;	genLabel
00183$:
;cases/./../tests/bug-2684.c:264: return (cnt);
;	genRet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00186$.
;cases/./../tests/bug-2684.c:265: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total _vfnprintf function size at codegen: 13 bytes.
___str_2:
	.db 0x00
___str_3:
	.ascii "0b"
	.db 0x00
___str_4:
	.ascii "0"
	.db 0x00
___str_5:
	.ascii "0x"
	.db 0x00
___str_6:
	.ascii "0X"
	.db 0x00
;cases/./../tests/bug-2684.c:269: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2684.c:271: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 6 bytes.
;cases/tst_bug-2684.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2684.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
;cases/tst_bug-2684.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2684.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_7:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2684.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2684.c:15: return "bug-2684.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2684.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_8:
	.ascii "bug-2684.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
