;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2897
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _printhex_leq
	.globl _printhex_le
	.globl _pc
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
_expect:
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
;cases/./../tests/bug-2897.c:9: int pc(int c)
;	genLabel
;	genFunction
;	---------------------------------
; Function pc
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_pc::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2897.c:11: ASSERT (c == *expect++);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_expect)
;	genPointerGet
	ld	c, (hl)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, (_expect)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
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
	ld	hl, #0x000b
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2897.c:12: }
;	genEndFunction
	ret
;	Total pc function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "c == *expect++"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-2897.c"
	.db 0x00
;cases/./../tests/bug-2897.c:14: void printhex_le(unsigned char x)
;	genLabel
;	genFunction
;	---------------------------------
; Function printhex_le
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_printhex_le::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2897.c:16: unsigned char n = x>>4;
;	genRightShift
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;cases/./../tests/bug-2897.c:17: if( n>9 ) pc('A'-10+n); else pc('0'+n); // Bug for n == 'a'. Works when >9 is replaced by >=10
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genCmpGt
	cp	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00102$
;	skipping generated iCode
;	genPlus
;fetchPairLong
	ld	hl, #0x0037
	add	hl, de
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_pc
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	genPlus
;fetchPairLong
	ld	hl, #0x0030
	add	hl, de
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_pc
	pop	bc
;	genLabel
00103$:
;cases/./../tests/bug-2897.c:18: n = x&0xF;
;	genAnd
	ld	a, c
	and	a, #0x0f
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2897.c:17: if( n>9 ) pc('A'-10+n); else pc('0'+n); // Bug for n == 'a'. Works when >9 is replaced by >=10
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;cases/./../tests/bug-2897.c:19: if( n>9 ) pc('A'-10+n); else pc('0'+n); // Bug for n == 'a'. Works when >9 is replaced by >=10
;	genCmpGt
	cp	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00105$
;	skipping generated iCode
;	genPlus
;fetchPairLong
	ld	hl, #0x0037
	add	hl, bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genGoto
	jp	_pc
; common peephole 152 removed unused ret.
; common peephole 160 replaced jump by return.
;	genLabel
00105$:
;	genPlus
;fetchPairLong
	ld	hl, #0x0030
	add	hl, bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/bug-2897.c:20: }
;	genEndFunction
	jp	_pc
; common peephole 152 removed unused ret.
;	Total printhex_le function size at codegen: 1 bytes.
;cases/./../tests/bug-2897.c:22: void printhex_leq(unsigned char x)
;	genLabel
;	genFunction
;	---------------------------------
; Function printhex_leq
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_printhex_leq::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2897.c:24: unsigned char n = x>>4;
;	genRightShift
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;cases/./../tests/bug-2897.c:25: if( n>=10 ) pc('A'-10+n); else pc('0'+n);
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genCmpLt
	sub	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00102$
;	skipping generated iCode
;	genPlus
;fetchPairLong
	ld	hl, #0x0037
	add	hl, de
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_pc
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
;	genPlus
;fetchPairLong
	ld	hl, #0x0030
	add	hl, de
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_pc
	pop	bc
;	genLabel
00103$:
;cases/./../tests/bug-2897.c:26: n = x&0xF;
;	genAnd
	ld	a, c
	and	a, #0x0f
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2897.c:25: if( n>=10 ) pc('A'-10+n); else pc('0'+n);
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x00
;cases/./../tests/bug-2897.c:27: if( n>=10 ) pc('A'-10+n); else pc('0'+n);
;	genCmpLt
	sub	a, #0x0a
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00105$
;	skipping generated iCode
;	genPlus
;fetchPairLong
	ld	hl, #0x0037
	add	hl, bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genGoto
	jp	_pc
; common peephole 152 removed unused ret.
; common peephole 160 replaced jump by return.
;	genLabel
00105$:
;	genPlus
;fetchPairLong
	ld	hl, #0x0030
	add	hl, bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/bug-2897.c:28: }
;	genEndFunction
	jp	_pc
; common peephole 152 removed unused ret.
;	Total printhex_leq function size at codegen: 1 bytes.
;cases/./../tests/bug-2897.c:30: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2897.c:32: expect = "01";
;	genAddrOf
	ld	hl, #___str_3+0
;	genCast
;	(locations are the same)
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:33: printhex_le (0x01);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:34: expect = "23";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_4)
	ld	1 (iy), #>(___str_4)
;cases/./../tests/bug-2897.c:35: printhex_le (0x23);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x23
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:36: expect = "45";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_5)
	ld	1 (iy), #>(___str_5)
;cases/./../tests/bug-2897.c:37: printhex_le (0x45);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x45
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:38: expect = "56";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_6)
	ld	1 (iy), #>(___str_6)
;cases/./../tests/bug-2897.c:39: printhex_le (0x56);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x56
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:40: expect = "78";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_7)
	ld	1 (iy), #>(___str_7)
;cases/./../tests/bug-2897.c:41: printhex_le (0x78);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x78
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:42: expect = "9A";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_8)
	ld	1 (iy), #>(___str_8)
;cases/./../tests/bug-2897.c:43: printhex_le (0x9a);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x9a
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:44: expect = "BC";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_9)
	ld	1 (iy), #>(___str_9)
;cases/./../tests/bug-2897.c:45: printhex_le (0xbc);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xbc
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:46: expect = "DE";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_10)
	ld	1 (iy), #>(___str_10)
;cases/./../tests/bug-2897.c:47: printhex_le (0xde);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xde
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:49: expect = "10";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_11)
	ld	1 (iy), #>(___str_11)
;cases/./../tests/bug-2897.c:50: printhex_le (0x10);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x10
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:51: expect = "32";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_12)
	ld	1 (iy), #>(___str_12)
;cases/./../tests/bug-2897.c:52: printhex_le (0x32);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x32
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:53: expect = "54";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_13)
	ld	1 (iy), #>(___str_13)
;cases/./../tests/bug-2897.c:54: printhex_le (0x54);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x54
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:55: expect = "65";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_14)
	ld	1 (iy), #>(___str_14)
;cases/./../tests/bug-2897.c:56: printhex_le (0x65);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x65
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:57: expect = "87";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_15)
	ld	1 (iy), #>(___str_15)
;cases/./../tests/bug-2897.c:58: printhex_le (0x87);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x87
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:59: expect = "A9";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_16)
	ld	1 (iy), #>(___str_16)
;cases/./../tests/bug-2897.c:60: printhex_le (0xa9);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa9
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:61: expect = "CB";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_17)
	ld	1 (iy), #>(___str_17)
;cases/./../tests/bug-2897.c:62: printhex_le (0xcb);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xcb
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:63: expect = "ED";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_expect
	ld	0 (iy), #<(___str_18)
	ld	1 (iy), #>(___str_18)
;cases/./../tests/bug-2897.c:64: printhex_le (0xed);
;	genSend
	push	hl
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xed
;	genCall
	call	_printhex_le
	pop	hl
;cases/./../tests/bug-2897.c:66: expect = "01";
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:67: printhex_leq (0x01);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x01
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:68: expect = "23";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:69: printhex_leq (0x23);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x23
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:70: expect = "45";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:71: printhex_leq (0x45);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x45
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:72: expect = "56";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:73: printhex_leq (0x56);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x56
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:74: expect = "78";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:75: printhex_leq (0x78);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x78
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:76: expect = "9A";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:77: printhex_leq (0x9a);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x9a
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:78: expect = "BC";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_9
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:79: printhex_leq (0xbc);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xbc
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:80: expect = "DE";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:81: printhex_leq (0xde);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xde
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:83: expect = "10";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_11
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:84: printhex_leq (0x10);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x10
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:85: expect = "32";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_12
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:86: printhex_leq (0x32);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x32
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:87: expect = "54";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_13
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:88: printhex_leq (0x54);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x54
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:89: expect = "65";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_14
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:90: printhex_leq (0x65);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x65
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:91: expect = "87";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_15
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:92: printhex_leq (0x87);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x87
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:93: expect = "A9";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_16
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:94: printhex_leq (0xa9);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xa9
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:95: expect = "CB";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_17
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:96: printhex_leq (0xcb);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xcb
;	genCall
	call	_printhex_leq
;cases/./../tests/bug-2897.c:97: expect = "ED";
;	genAssign
;	genMove_o size 2 result type 10 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_18
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_expect), hl
;cases/./../tests/bug-2897.c:98: printhex_leq (0xed);
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xed
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2897.c:99: }
;	genEndFunction
	jp	_printhex_leq
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
___str_3:
	.ascii "01"
	.db 0x00
___str_4:
	.ascii "23"
	.db 0x00
___str_5:
	.ascii "45"
	.db 0x00
___str_6:
	.ascii "56"
	.db 0x00
___str_7:
	.ascii "78"
	.db 0x00
___str_8:
	.ascii "9A"
	.db 0x00
___str_9:
	.ascii "BC"
	.db 0x00
___str_10:
	.ascii "DE"
	.db 0x00
___str_11:
	.ascii "10"
	.db 0x00
___str_12:
	.ascii "32"
	.db 0x00
___str_13:
	.ascii "54"
	.db 0x00
___str_14:
	.ascii "65"
	.db 0x00
___str_15:
	.ascii "87"
	.db 0x00
___str_16:
	.ascii "A9"
	.db 0x00
___str_17:
	.ascii "CB"
	.db 0x00
___str_18:
	.ascii "ED"
	.db 0x00
;cases/tst_bug-2897.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2897.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_19
;	genCall
	call	___prints
;cases/tst_bug-2897.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2897.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_19:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2897.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2897.c:15: return "bug-2897.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_20
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2897.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_20:
	.ascii "bug-2897.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
