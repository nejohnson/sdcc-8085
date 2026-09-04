;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2320
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _buffer_invariants
	.globl _p
	.globl _as
	.globl ___prints
	.globl ___fail
	.globl _buffer_gap
	.globl _buffer_len
	.globl _buffer_p
	.globl _buffer
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
_buffer::
	.ds 2
_buffer_p::
	.ds 2
_buffer_len::
	.ds 2
_buffer_gap::
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
;cases/./../tests/bug-2320.c:10: void as(char *c1, const char *c2, unsigned int i)
;	genLabel
;	genFunction
;	---------------------------------
; Function as
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_as::
	push	ix
	ld	ix,	#0
	add	ix, sp
;cases/./../tests/bug-2320.c:12: ASSERT(0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x000c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2320.c:13: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total as function size at codegen: 5 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/bug-2320.c"
	.db 0x00
;cases/./../tests/bug-2320.c:15: extern void p(char *c,...)
;	genLabel
;	genFunction
;	---------------------------------
; Function p
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_p::
	push	ix
	ld	ix,	#0
	add	ix, sp
;cases/./../tests/bug-2320.c:17: ASSERT(0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0011
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_5
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_3
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2320.c:18: }
;	genEndFunction
	pop	ix
	ret
;	Total p function size at codegen: 3 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "0"
	.db 0x00
__str_5:
	.ascii "cases/./../tests/bug-2320.c"
	.db 0x00
;cases/./../tests/bug-2320.c:28: void buffer_invariants()
;	genLabel
;	genFunction
;	---------------------------------
; Function buffer_invariants
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_buffer_invariants::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;cases/./../tests/bug-2320.c:30: a(buffer_len <= buffer_size);
;	genCmpGt
	ld	a, #0xfe
	ld	iy, #_buffer_len
	cp	a, 0 (iy)
	ld	a, #0x1f
	sbc	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00106$
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x001e
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_6
;	genCall
	call	_as
;	genLabel
00106$:
;cases/./../tests/bug-2320.c:31: a(buffer_p <= buffer_len);
;	genCmpGt
;	Shift into pair
	ld	hl, #_buffer_len
	ld	a, (hl)
	ld	iy, #_buffer_p
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00108$
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x001f
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_8
;	genCall
	call	_as
;	genLabel
00108$:
;cases/./../tests/bug-2320.c:33: if (buffer_gap != buffer + buffer_size - buffer_len + buffer_p) {
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_buffer)
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x1ffe
	add	hl, de
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_buffer_len)
;	genMinus
	cp	a, a
	sbc	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	ld	a, e
	ld	iy, #_buffer_p
	add	a, 0 (iy)
	ld	c, a
	ld	a, d
	adc	a, 1 (iy)
	ld	b, a
;	genCmpEq
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_buffer_gap)
	xor	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00143$.
;	skipping generated iCode
;cases/./../tests/bug-2320.c:34: p("%04x + %04x - %04x + %04x = %04x, not %04x\n",
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_buffer_gap)
	push	hl
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_buffer_p)
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_buffer_len)
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x1ffe
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_buffer)
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_9
	push	hl
;	genCall
	call	_p
;	adjustStack by 14
	ld	hl, #14
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-2320.c:38: a(buffer_gap == buffer + buffer_size - buffer_len + buffer_p);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_buffer)
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x1ffe
	add	hl, de
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_buffer_len)
;	genMinus
	ld	a, l
	sub	a, c
	ld	-2 (ix), a
	ld	a, h
	sbc	a, b
	ld	-1 (ix), a
;	genPlus
	ld	a, -2 (ix)
;	Shift into pair
	ld	hl, #_buffer_p
	add	a, (hl)
	ld	c, a
	ld	a, -1 (ix)
	inc	hl
	adc	a, (hl)
	ld	b, a
;	genCmpEq
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_buffer_gap)
	xor	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00144$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAddrOf
	ld	hl, #___str_10+0
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0026
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_as
;	genLabel
00103$:
;cases/./../tests/bug-2320.c:40: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total buffer_invariants function size at codegen: 5 bytes.
___str_6:
	.ascii "buffer_len <= buffer_size"
	.db 0x00
___str_7:
	.ascii "cases/./../tests/bug-2320.c"
	.db 0x00
___str_8:
	.ascii "buffer_p <= buffer_len"
	.db 0x00
___str_9:
	.ascii "%04x + %04x - %04x + %04x = %04x, not %04x"
	.db 0x0a
	.db 0x00
___str_10:
	.ascii "buffer_gap == buffer + buffer_size - buffer_len + buffer_p"
	.db 0x00
;cases/./../tests/bug-2320.c:42: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2320.c:44: buffer = (unsigned char __xdata *)(0xa5a5);
;	genAssign
;fetchPairLong
	ld	hl, #0xa5a5
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_buffer), hl
;cases/./../tests/bug-2320.c:45: buffer_len = 1;
;	genAssign
;fetchPairLong
	ld	hl, #0x0001
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_buffer_len), hl
;cases/./../tests/bug-2320.c:46: buffer_p = 0;
;	genAssign
;fetchPairLong
	ld	l, h
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_buffer_p), hl
;cases/./../tests/bug-2320.c:47: buffer_gap = buffer + buffer_size - buffer_len + buffer_p;
;	genAssign
;fetchPairLong
	ld	hl, #0xc5a2
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_buffer_gap), hl
;cases/./../tests/bug-2320.c:48: buffer_invariants();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2320.c:49: }
;	genEndFunction
	jp	_buffer_invariants
; common peephole 152 removed unused ret.
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-2320.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2320.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_11
;	genCall
	call	___prints
;cases/tst_bug-2320.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2320.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_11:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2320.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2320.c:15: return "bug-2320.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2320.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_12:
	.ascii "bug-2320.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
