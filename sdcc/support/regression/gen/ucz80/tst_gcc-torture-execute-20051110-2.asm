;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20051110_2
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl ___fail
	.globl _flag
	.globl _bytes
	.globl ___numCases
	.globl _add_unwind_adjustsp
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_bytes::
	.ds 5
_flag::
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
;cases/./../tests/gcc-torture-execute-20051110-2.c:18: add_unwind_adjustsp (long offset)
;	genLabel
;	genFunction
;	---------------------------------
; Function add_unwind_adjustsp
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_add_unwind_adjustsp::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -2
	push	af
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20051110-2.c:23: o = (long) ((offset - 0x204) >> 2);
;	genMinus
	ld	a, e
	add	a, #0xfc
	ld	c, a
	ld	a, d
	adc	a, #0xfd
	ld	b, a
	ld	a, l
	adc	a, #0xff
	ld	e, a
	ld	a, h
	adc	a, #0xff
	ld	d, a
;	genRightShift
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x02
00128$:
	sra	d
	rr	e
	rr	b
	rr	c
; common peephole 159 removed unused label 00129$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00128$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20051110-2.c:28: a:
;	skipping iCode since result will be rematerialized
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-20051110-2.c:29: bytes[n] = o & 0x7f;
;	genPlus
	ld	a, #<(_bytes)
	add	a, -2 (ix)
	ld	l, a
	ld	a, #>(_bytes)
	adc	a, -1 (ix)
	ld	h, a
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genAnd
	res	7, a
;	genPointerSet
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-20051110-2.c:30: o >>= 7;
;	genRightShift
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x07
00130$:
	srl	d
	rr	e
	rr	b
	rr	c
; common peephole 159 removed unused label 00131$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00130$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20051110-2.c:31: if (o)
;	genIfx
	ld	a, d
	or	a, e
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00105$
;cases/./../tests/gcc-torture-execute-20051110-2.c:33: bytes[n] |= 0x80;
;	genPointerGet
;	genOr
;	genPointerSet
; common peephole 75 set bit 7 of (hl) directly instead of going through a.
	set	7, (hl)
; common peephole 1 removed dead load from (hl) into a.
;cases/./../tests/gcc-torture-execute-20051110-2.c:34: if (flag)
;	genIfx
	ld	a, (_flag+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_flag
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;cases/./../tests/gcc-torture-execute-20051110-2.c:35: goto a;
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-20051110-2.c:37: n++;
;	genPlus
	inc	-2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00132$
	inc	-1 (ix)
00132$:
;cases/./../tests/gcc-torture-execute-20051110-2.c:39: while (o);
;	genIfx
	ld	a, d
	or	a, e
	or	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;	genLabel
; common peephole 159 removed unused label 00109$.
;cases/./../tests/gcc-torture-execute-20051110-2.c:40: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total add_unwind_adjustsp function size at codegen: 5 bytes.
;cases/./../tests/gcc-torture-execute-20051110-2.c:42: void testTortureExecute(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20051110-2.c:44: add_unwind_adjustsp (4132);
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x1024
	ld	hl, #0x0000
;	genCall
	call	_add_unwind_adjustsp
;cases/./../tests/gcc-torture-execute-20051110-2.c:45: if (bytes[0] != 0x88 || bytes[1] != 0x07)
;	genAddrOf
	ld	hl, #_bytes+0
;	genPointerGet
	ld	a, (hl)
;	genCmpEq
	cp	a, #0x88
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00115$.
;	skipping generated iCode
;	genAssign
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpEq
	cp	a, #0x07
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00116$.
;	skipping generated iCode
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-20051110-2.c:46: ASSERT (0);
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
	ld	hl, #0x002e
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
; common peephole 159 removed unused label 00102$.
;cases/./../tests/gcc-torture-execute-20051110-2.c:47: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-20051110-2.c:48: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-20051110-2.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20051110-2.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20051110-2.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20051110-2.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20051110-2.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20051110-2.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20051110-2.c:15: return "gcc-torture-execute-20051110-2.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20051110-2.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-20051110-2.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
