;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module testfwk
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl __exitEmu
	.globl __initEmu
	.globl __putchar
	.globl ___runSuite
	.globl ___getSuiteName
	.globl ___numTests
	.globl ___prints
	.globl ___printu
	.globl ___fail
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
___printu_buf_30000_22:
	.ds 6
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
___numTests::
	.ds 2
___numFailures:
	.ds 2
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
;fwk/lib/testfwk.c:31: __prints (const char *s)
;	genLabel
;	genFunction
;	---------------------------------
; Function __prints
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
___prints::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;fwk/lib/testfwk.c:35: while ('\0' != (c = *s))
;	genLabel
00101$:
;	genPointerGet
	ld	a, (hl)
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;fwk/lib/testfwk.c:37: _putchar(c);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	__putchar
	pop	hl
;fwk/lib/testfwk.c:38: ++s;
;	genPlus
	inc	hl
;	genGoto
;	genLabel
; common peephole 159 removed unused label 00104$.
;fwk/lib/testfwk.c:40: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
; common peephole 152 removed unused ret.
;	Total __prints function size at codegen: 1 bytes.
;fwk/lib/testfwk.c:113: __printu (unsigned int n)
;	genLabel
;	genFunction
;	---------------------------------
; Function __printu
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
___printu::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;fwk/lib/testfwk.c:115: if (0 == n)
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
;fwk/lib/testfwk.c:117: _putchar('0');
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genGoto
	ld	a, #0x30
	jp	__putchar
; common peephole 87a removed unreachable jump to 00107$
;	genLabel
00105$:
;fwk/lib/testfwk.c:122: char MEMSPACE_BUF *p = &buf[sizeof (buf) - 1];
;	genAddrOf
	ld	de, #___printu_buf_30000_22+5
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;fwk/lib/testfwk.c:124: buf[sizeof(buf) - 1] = '\0';
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(de), a
;fwk/lib/testfwk.c:126: while (0 != n)
;	genLabel
00101$:
;	genIfx
	ld	a, h
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;fwk/lib/testfwk.c:128: *--p = '0' + __mod (n, 10);
;	genMinus
	dec	bc
;	genSend
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000a
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__moduint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	pop	hl
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPlus
	add	a, #0x30
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;fwk/lib/testfwk.c:129: n = __div (n, 10);
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000a
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__divuint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00103$:
;fwk/lib/testfwk.c:132: __prints(p);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genLabel
; common peephole 159 removed unused label 00107$.
;fwk/lib/testfwk.c:134: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __printu function size at codegen: 1 bytes.
;fwk/lib/testfwk.c:215: __fail (__code const char *szMsg, __code const char *szCond, __code const char *szFile, int line)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fail
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
___fail::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;fwk/lib/testfwk.c:217: __prints("--- FAIL: \"");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
	push	hl
	push	de
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
	pop	de
	pop	hl
;fwk/lib/testfwk.c:218: __prints(szMsg);
;	genSend
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___prints
;fwk/lib/testfwk.c:219: __prints("\" on ");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
; common peephole 50a eliminated dead pop/push de pair.
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
	call	___prints
	pop	de
;fwk/lib/testfwk.c:220: __prints(szCond);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___prints
;fwk/lib/testfwk.c:221: __prints(" at ");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
;	genCall
	call	___prints
;fwk/lib/testfwk.c:222: __prints(szFile);
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 4 (ix)
	ld	h, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___prints
;fwk/lib/testfwk.c:223: _putchar(':');
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x3a
;	genCall
	call	__putchar
;fwk/lib/testfwk.c:224: __printu(line);
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 6 (ix)
	ld	h, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___printu
;fwk/lib/testfwk.c:225: _putchar('\n');
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x0a
;	genCall
	call	__putchar
;fwk/lib/testfwk.c:227: __numFailures++;
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numFailures)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numFailures), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;fwk/lib/testfwk.c:228: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total __fail function size at codegen: 6 bytes.
___str_0:
	.ascii "--- FAIL: "
	.db 0x22
	.db 0x00
___str_1:
	.db 0x22
	.ascii " on "
	.db 0x00
___str_2:
	.ascii " at "
	.db 0x00
;fwk/lib/testfwk.c:231: main (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function main
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_main::
;fwk/lib/testfwk.c:233: _initEmu();
;	genCall
	call	__initEmu
;fwk/lib/testfwk.c:235: __prints("--- Running: ");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;fwk/lib/testfwk.c:236: __prints(__getSuiteName());
;	genCall
	call	___getSuiteName
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___prints
;fwk/lib/testfwk.c:237: _putchar('\n');
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x0a
;	genCall
	call	__putchar
;fwk/lib/testfwk.c:239: __runSuite();
;	genCall
	call	___runSuite
;fwk/lib/testfwk.c:241: __prints("--- Summary: ");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;fwk/lib/testfwk.c:242: __printu(__numFailures);
;	genSend
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numFailures)
;	genCall
	call	___printu
;fwk/lib/testfwk.c:243: _putchar('/');
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x2f
;	genCall
	call	__putchar
;fwk/lib/testfwk.c:244: __printu(__numTests);
;	genSend
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
;	genCall
	call	___printu
;fwk/lib/testfwk.c:245: _putchar('/');
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x2f
;	genCall
	call	__putchar
;fwk/lib/testfwk.c:246: __printu(__numCases);
;	genSend
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numCases)
;	genCall
	call	___printu
;fwk/lib/testfwk.c:249: __prints(": ");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;fwk/lib/testfwk.c:250: __printu(__numFailures);
;	genSend
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numFailures)
;	genCall
	call	___printu
;fwk/lib/testfwk.c:251: __prints(" failed of ");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	___prints
;fwk/lib/testfwk.c:252: __printu(__numTests);
;	genSend
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
;	genCall
	call	___printu
;fwk/lib/testfwk.c:253: __prints(" tests in ");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
	call	___prints
;fwk/lib/testfwk.c:254: __printu(__numCases);
;	genSend
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numCases)
;	genCall
	call	___printu
;fwk/lib/testfwk.c:255: __prints(" cases.\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	___prints
;fwk/lib/testfwk.c:260: _exitEmu();
;	genCall
	call	__exitEmu
;fwk/lib/testfwk.c:262: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00101$.
;fwk/lib/testfwk.c:263: }
;	genEndFunction
	ret
;	Total main function size at codegen: 1 bytes.
___str_3:
	.ascii "--- Running: "
	.db 0x00
___str_4:
	.ascii "--- Summary: "
	.db 0x00
___str_5:
	.ascii ": "
	.db 0x00
___str_6:
	.ascii " failed of "
	.db 0x00
___str_7:
	.ascii " tests in "
	.db 0x00
___str_8:
	.ascii " cases."
	.db 0x0a
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit____numTests:
	.dw #0x0000
__xinit____numFailures:
	.dw #0x0000
	.area _CABS (ABS)
