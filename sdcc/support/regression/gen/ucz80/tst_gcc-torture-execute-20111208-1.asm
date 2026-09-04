;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20111208_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _pack_unpack
	.globl _strlen
	.globl ___prints
	.globl ___fail
	.globl _a
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
_a::
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
;cases/./../tests/gcc-torture-execute-20111208-1.c:21: do_something (int item)
;	genLabel
;	genFunction
;	---------------------------------
; Function do_something
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_do_something:
;	genReceive
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_a), hl
;cases/./../tests/gcc-torture-execute-20111208-1.c:23: a = item;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20111208-1.c:24: }
;	genEndFunction
	ret
;	Total do_something function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20111208-1.c:27: pack_unpack (char *s, char *p)
;	genLabel
;	genFunction
;	---------------------------------
; Function pack_unpack
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 10 bytes.
_pack_unpack::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -10
	ld	iy, #-10
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20111208-1.c:33: send = s + strlen (s);
;	genSend
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strlen
	pop	de
;cases/./../tests/gcc-torture-execute-20111208-1.c:34: pend = p + strlen (p);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 157 used ex to load de into hl.
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_strlen
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
;	genPlus
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20111208-1.c:36: while (p < pend)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), e
	ld	-1 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00108$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, -6 (ix)
	ld	a, -1 (ix)
	sbc	a, -5 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00110$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20111208-1.c:38: type = *p++;
;	genPointerGet
;fetchPairLong
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00162$
	inc	-1 (ix)
00162$:
;cases/./../tests/gcc-torture-execute-20111208-1.c:40: switch (type)
;	genCmpEq
	cp	a, #0x6c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00163$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x73
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00164$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00108$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00165$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20111208-1.c:43: integer_size = 2;
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
;cases/./../tests/gcc-torture-execute-20111208-1.c:44: goto unpack_integer;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;cases/./../tests/gcc-torture-execute-20111208-1.c:46: case 'l':
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-20111208-1.c:47: integer_size = 4;
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x04
;cases/./../tests/gcc-torture-execute-20111208-1.c:50: unpack_integer:
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-20111208-1.c:61: memcpy (v.a, s, sizeof (int16_t));
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20111208-1.c:51: switch (integer_size)
;	genCmpEq
	cp	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00166$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00167$.
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;cases/./../tests/gcc-torture-execute-20111208-1.c:53: case 2:
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-20111208-1.c:61: memcpy (v.a, s, sizeof (int16_t));
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genBuiltIn
	ex	de, hl
	ldi
	ld	a, (hl)
	ld	(de), a
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20111208-1.c:62: s += sizeof (int16_t);
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/gcc-torture-execute-20111208-1.c:63: do_something (v.i);
;	genPointerGet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_do_something
;cases/./../tests/gcc-torture-execute-20111208-1.c:65: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;cases/./../tests/gcc-torture-execute-20111208-1.c:67: case 4:
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-20111208-1.c:75: memcpy (v.a, s, sizeof (int32_t));
;	genCast
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genBuiltIn
	ex	de, hl
;fetchPairLong
	ld	bc, #0x0004
	ldir
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20111208-1.c:76: s += sizeof (int32_t);
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #0x0004
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/gcc-torture-execute-20111208-1.c:77: do_something (v.i);
;	genPointerGet
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	push	hl
; common peephole 7 removed dead load from -8 (ix) into a.
; common peephole 7 removed dead load from -7 (ix) into c.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_do_something
;cases/./../tests/gcc-torture-execute-20111208-1.c:82: }
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00110$:
;cases/./../tests/gcc-torture-execute-20111208-1.c:84: return (int) *s;
;	genPointerGet
;fetchPairLong
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	_moveFrom_tpair_()
	ld	e, (hl)
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00111$.
;cases/./../tests/gcc-torture-execute-20111208-1.c:85: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total pack_unpack function size at codegen: 7 bytes.
;cases/./../tests/gcc-torture-execute-20111208-1.c:89: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20111208-1.c:92: int n = pack_unpack ("\200\001\377\376\035\300", "sl");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	_pack_unpack
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20111208-1.c:93: if (n != 0)
;	genIfx
	ld	a, d
	or	a, e
	ret	z
; common peephole 161 replaced jump by return.
;cases/./../tests/gcc-torture-execute-20111208-1.c:94: ASSERT (0);
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
	ld	hl, #0x005e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_4
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_2
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00102$.
;cases/./../tests/gcc-torture-execute-20111208-1.c:95: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-20111208-1.c:97: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
___str_0:
	.db 0x80
	.db 0x01
	.db 0xff
	.db 0xfe
	.db 0x1d
	.db 0xc0
	.db 0x00
___str_1:
	.ascii "sl"
	.db 0x00
__str_2:
	.ascii "Assertion failed"
	.db 0x00
__str_3:
	.ascii "0"
	.db 0x00
__str_4:
	.ascii "cases/./../tests/gcc-torture-execute-20111208-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20111208-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20111208-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_5
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20111208-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20111208-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_5:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20111208-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20111208-1.c:15: return "gcc-torture-execute-20111208-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20111208-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_6:
	.ascii "gcc-torture-execute-20111208-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
