;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3730
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _myprintf
	.globl _print_hx8
	.globl _print_hx4
	.globl _my_putchar
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _hexTable
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_my_putchar_i_10000_13:
	.ds 2
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
;cases/./../tests/bug-3730.c:12: int my_putchar(int c)
;	genLabel
;	genFunction
;	---------------------------------
; Function my_putchar
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_my_putchar::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3730.c:16: ASSERT (c == e[i++]);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, (_my_putchar_i_10000_13)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_my_putchar_i_10000_13)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_my_putchar_i_10000_13), hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_my_putchar_e_10000_13
	add	hl, bc
;	genPointerGet
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	h, a
	sbc	hl, de
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0010
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3730.c:17: }
;	genEndFunction
	ret
;	Total my_putchar function size at codegen: 1 bytes.
_hexTable:
	.ascii "0123456789ABCDEF"
	.db 0x00
_my_putchar_e_10000_13:
	.ascii "31 32 33 (expected)"
	.db 0x0a
	.ascii "31 32 33"
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "Assertion failed"
	.db 0x00
___str_2:
	.ascii "c == e[i++]"
	.db 0x00
___str_3:
	.ascii "cases/./../tests/bug-3730.c"
	.db 0x00
;cases/./../tests/bug-3730.c:19: void print_hx4(unsigned char u)
;	genLabel
;	genFunction
;	---------------------------------
; Function print_hx4
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_print_hx4::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3730.c:21: u &= 0xf;
;	genAnd
	and	a, #0x0f
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3730.c:22: my_putchar(hexTable[u]);
;	skipping iCode since result will be rematerialized
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	hl, #_hexTable
	ld	b, #0x00
	add	hl, bc
;	genPointerGet
	ld	l, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3730.c:23: }
;	genEndFunction
	jp	_my_putchar
; common peephole 152 removed unused ret.
;	Total print_hx4 function size at codegen: 1 bytes.
;cases/./../tests/bug-3730.c:26: void print_hx8(unsigned char u)
;	genLabel
;	genFunction
;	---------------------------------
; Function print_hx8
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_print_hx8::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3730.c:28: print_hx4(u >> 4);
;	genRightShift
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genSend
	push	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_print_hx4
	pop	bc
;cases/./../tests/bug-3730.c:29: print_hx4(u);
;	genSend
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3730.c:30: }
;	genEndFunction
	jp	_print_hx4
; common peephole 152 removed unused ret.
;	Total print_hx8 function size at codegen: 1 bytes.
;cases/./../tests/bug-3730.c:33: int myprintf(const char *fmt, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function myprintf
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
_myprintf::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -3
	push	af
	dec	sp
;cases/./../tests/bug-3730.c:40: va_start(arg, fmt);
;	genAddrOf
	ld	hl, #9
	add	hl, sp
	ld	c, l
	ld	b, h
;	genCast
;	(locations are the same)
;cases/./../tests/bug-3730.c:42: while ((c = *fmt)) {
;	genLabel
00114$:
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, 4 (ix)
	ld	-3 (ix), a
	ld	a, 5 (ix)
	ld	-2 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded l from a instead of going through -1 (ix).
	ld	-1 (ix), a
	ld	l, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, -1 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
;cases/./../tests/bug-3730.c:43: if (c == '%') {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x25
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00178$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00112$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00179$.
;	skipping generated iCode
;cases/./../tests/bug-3730.c:44: ++fmt;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	4 (ix), l
	ld	5 (ix), h
; common peephole 11 loaded ed from lh directly instead of going through 4 (ix) 5 (ix).
; common peephole 156 used ex to load hl into de.
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00117$:
;cases/./../tests/bug-3730.c:46: c = *fmt;
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-3730.c:47: if (c < '0' || c > '9')
;	genCmpLt
	cp	a, #0x30
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00135$
;	skipping generated iCode
;	genCmpGt
	cp	a, #0x3a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00135$
;	skipping generated iCode
;cases/./../tests/bug-3730.c:49: ++fmt;
;	genPlus
	inc	de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00117$
;	genLabel
00135$:
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	4 (ix), e
	ld	5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3730.c:51: switch (c) {
;	genCmpEq
	cp	a, #0x78
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00180$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00181$.
;	skipping generated iCode
;cases/./../tests/bug-3730.c:53: c = va_arg( arg, int);
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	hl
	inc	hl
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
	dec	hl
	dec	hl
;	genPointerGet
	ld	a, (hl)
;cases/./../tests/bug-3730.c:54: print_hx8(c);
;	genSend
	push	bc
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_print_hx8
	pop	bc
;cases/./../tests/bug-3730.c:55: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;cases/./../tests/bug-3730.c:58: }
;	genLabel
00112$:
;cases/./../tests/bug-3730.c:60: my_putchar(c);
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_my_putchar
	pop	bc
;	genLabel
00113$:
;cases/./../tests/bug-3730.c:62: fmt++;
;	genPlus
	inc	4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
; common peephole 84 jumped to 00114$ directly instead of via 00182$.
	inc	5 (ix)
; common peephole 159 removed unused label 00182$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00116$:
;cases/./../tests/bug-3730.c:64: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genLabel
; common peephole 159 removed unused label 00119$.
;cases/./../tests/bug-3730.c:65: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total myprintf function size at codegen: 5 bytes.
;cases/./../tests/bug-3730.c:69: testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3730.c:73: myprintf( "31 32 33 (expected)\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
	push	hl
;	genCall
	call	_myprintf
;	adjustStack by 2
	pop	af
;cases/./../tests/bug-3730.c:76: myprintf( "%x %x %x\n", a, b, c);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0033
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x32
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, #0x31
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
	push	hl
;	genCall
	call	_myprintf
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3730.c:77: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_5:
	.ascii "31 32 33 (expected)"
	.db 0x0a
	.db 0x00
___str_6:
	.ascii "%x %x %x"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3730.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3730.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
	call	___prints
;cases/tst_bug-3730.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3730.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_7:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3730.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3730.c:15: return "bug-3730.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3730.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_8:
	.ascii "bug-3730.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
