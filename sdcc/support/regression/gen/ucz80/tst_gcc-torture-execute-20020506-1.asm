;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20020506_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _fest1
	.globl _fest2
	.globl _fest3
	.globl _fest4
	.globl _fest5
	.globl _fest6
	.globl _fest7
	.globl _fest8
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
;cases/./../tests/gcc-torture-execute-20020506-1.c:42: fest1 (signed char c, int set)
;	genLabel
;	genFunction
;	---------------------------------
; Function fest1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_fest1::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:44: if ((c & (SCHAR_MAX+1)) == 0)
;	genAnd
	and	a, #0x80
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:46: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (___numTests)
	inc	de
;cases/./../tests/gcc-torture-execute-20020506-1.c:44: if ((c & (SCHAR_MAX+1)) == 0)
;	genIfx
	ld	a, -1 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/./../tests/gcc-torture-execute-20020506-1.c:46: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
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
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:49: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0031
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
	pop	bc
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:46: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:51: if ((c & (SCHAR_MAX+1)) != 0)
;	genIfx
	ld	a, -1 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
;cases/./../tests/gcc-torture-execute-20020506-1.c:53: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0035
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
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:56: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0038
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
	pop	bc
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:58: if ((unsigned char) (c & (SCHAR_MAX+1)) == (SCHAR_MAX+1))
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:46: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:58: if ((unsigned char) (c & (SCHAR_MAX+1)) == (SCHAR_MAX+1))
;	genCmpEq
	cp	a, #0x80
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00228$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00227$.
	xor	a, a
00228$:
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;cases/./../tests/gcc-torture-execute-20020506-1.c:60: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003c
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
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
;	genLabel
00120$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:63: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003f
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
	pop	bc
;	genLabel
00121$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:46: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:65: if ((unsigned char) (c & (SCHAR_MAX+1)) != (SCHAR_MAX+1))
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00127$
;cases/./../tests/gcc-torture-execute-20020506-1.c:67: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
;	genAssign
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
	ld	hl, #0x0043
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
;	genLabel
00127$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:70: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00129$
;	genAssign
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
	ld	hl, #0x0046
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
00129$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:71: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	ret
;	Total fest1 function size at codegen: 4 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-20020506-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20020506-1.c:74: fest2 (unsigned char c, int set)
;	genLabel
;	genFunction
;	---------------------------------
; Function fest2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_fest2::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:76: if ((c & (SCHAR_MAX+1)) == 0)
;	genAnd
	and	a, #0x80
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:78: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (___numTests)
	inc	de
;cases/./../tests/gcc-torture-execute-20020506-1.c:76: if ((c & (SCHAR_MAX+1)) == 0)
;	genIfx
	ld	a, -1 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/./../tests/gcc-torture-execute-20020506-1.c:78: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004e
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
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:81: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0051
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
	pop	bc
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:78: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:83: if ((c & (SCHAR_MAX+1)) != 0)
;	genIfx
	ld	a, -1 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
;cases/./../tests/gcc-torture-execute-20020506-1.c:85: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0055
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
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:88: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0058
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
	pop	bc
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:78: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:90: if ((c & (SCHAR_MAX+1)) == (SCHAR_MAX+1))
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x80
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00228$
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00227$.
	xor	a, a
00228$:
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
; common peephole 33 loaded a from a instead of going through -1 (ix).
	ld	-1 (ix), a
; common peephole 0a removed redundant load from a into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;cases/./../tests/gcc-torture-execute-20020506-1.c:92: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005c
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
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
;	genLabel
00120$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:95: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005f
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
	pop	bc
;	genLabel
00121$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:78: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:97: if ((c & (SCHAR_MAX+1)) != (SCHAR_MAX+1))
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00127$
;cases/./../tests/gcc-torture-execute-20020506-1.c:99: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
;	genAssign
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
	ld	hl, #0x0063
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
;	genLabel
00127$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:102: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00129$
;	genAssign
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
	ld	hl, #0x0066
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
00129$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:103: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	ret
;	Total fest2 function size at codegen: 4 bytes.
__str_3:
	.ascii "Assertion failed"
	.db 0x00
__str_4:
	.ascii "0"
	.db 0x00
__str_5:
	.ascii "cases/./../tests/gcc-torture-execute-20020506-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20020506-1.c:106: fest3 (short s, int set)
;	genLabel
;	genFunction
;	---------------------------------
; Function fest3
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_fest3::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -5
	push	af
	push	af
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), e
	ld	-1 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:108: if ((s & (SHRT_MAX+1)) == 0)
;	genCast
;	(locations are the same)
;	genAnd
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
	and	a, #0x80
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:110: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (___numTests)
	inc	de
;cases/./../tests/gcc-torture-execute-20020506-1.c:108: if ((s & (SHRT_MAX+1)) == 0)
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/./../tests/gcc-torture-execute-20020506-1.c:110: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:113: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0071
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genCall
	call	___fail
	pop	bc
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:110: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (___numTests)
	inc	de
;cases/./../tests/gcc-torture-execute-20020506-1.c:115: if ((s & (SHRT_MAX+1)) != 0)
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
;cases/./../tests/gcc-torture-execute-20020506-1.c:117: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0075
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:120: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0078
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genCall
	call	___fail
	pop	bc
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:110: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:122: if ((s & (SHRT_MAX+1)) == (SHRT_MAX+1))
;	genCmpEq
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x80
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00228$
; common peephole 169xnz used double assignment in case of nz condition.
00227$:
	xor	a, a
00228$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;cases/./../tests/gcc-torture-execute-20020506-1.c:124: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x007c
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_8
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
;	genLabel
00120$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:127: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x007f
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_8
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
	pop	bc
;	genLabel
00121$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:110: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:129: if ((s & (SHRT_MAX+1)) != (SHRT_MAX+1))
;	genAssign
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), c
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00127$
;cases/./../tests/gcc-torture-execute-20020506-1.c:131: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
;	genAssign
;fetchPairLong
	pop	hl
	push	hl
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
	ld	hl, #0x0083
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genCall
	call	___fail
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
;	genLabel
00127$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:134: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00129$
;	genAssign
;fetchPairLong
	pop	hl
	push	hl
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
	ld	hl, #0x0086
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_8
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_6
;	genCall
	call	___fail
;	genLabel
00129$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:135: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total fest3 function size at codegen: 5 bytes.
__str_6:
	.ascii "Assertion failed"
	.db 0x00
__str_7:
	.ascii "0"
	.db 0x00
__str_8:
	.ascii "cases/./../tests/gcc-torture-execute-20020506-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20020506-1.c:138: fest4 (unsigned short s, int set)
;	genLabel
;	genFunction
;	---------------------------------
; Function fest4
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_fest4::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, e
	ld	b, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:140: if ((s & (SHRT_MAX+1)) == 0)
;	genAnd
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), #0x00
	ld	a, -1 (ix)
	and	a, #0x80
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:142: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (___numTests)
	inc	de
;cases/./../tests/gcc-torture-execute-20020506-1.c:140: if ((s & (SHRT_MAX+1)) == 0)
;	genIfx
	ld	a, -3 (ix)
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/./../tests/gcc-torture-execute-20020506-1.c:142: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x008e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_11
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_9
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:145: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0091
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_11
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_9
;	genCall
	call	___fail
	pop	bc
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:142: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:147: if ((s & (SHRT_MAX+1)) != 0)
;	genIfx
	ld	a, -3 (ix)
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
;cases/./../tests/gcc-torture-execute-20020506-1.c:149: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_9
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0095
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_11
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_10
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:152: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_11
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_9
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 49a pushed bc instead of iy.
	ld	bc, #0x0098
	push	bc
;	genIpush
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_10
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
	pop	bc
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:154: if ((s & (SHRT_MAX+1)) == (SHRT_MAX+1))
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	hl
	pop	de
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, #0x00
	ld	a, d
	and	a, #0x80
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:142: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (___numTests)
	inc	de
;cases/./../tests/gcc-torture-execute-20020506-1.c:154: if ((s & (SHRT_MAX+1)) == (SHRT_MAX+1))
;	genCmpEq
	cp	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
	ld	a, l
	or	a, a
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00228$
; common peephole 169xnz used double assignment in case of nz condition.
00227$:
	xor	a, a
00228$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
	ld	l, a
; common peephole 98 removed redundant load from l into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;cases/./../tests/gcc-torture-execute-20020506-1.c:156: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x009c
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_11
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_9
;	genCall
	call	___fail
	pop	bc
	pop	hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
;	genLabel
00120$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:159: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x009f
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_11
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_9
;	genCall
	call	___fail
	pop	bc
	pop	hl
;	genLabel
00121$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:142: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (___numTests)
	inc	de
;cases/./../tests/gcc-torture-execute-20020506-1.c:161: if ((s & (SHRT_MAX+1)) != (SHRT_MAX+1))
;	genAssign
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-3 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genIfx
	bit	0, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00127$
;cases/./../tests/gcc-torture-execute-20020506-1.c:163: if (set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00a3
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_11
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_9
;	genCall
	call	___fail
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
;	genLabel
00127$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:166: if (!set) ASSERT (0);
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00129$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00a6
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_11
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_9
;	genCall
	call	___fail
;	genLabel
00129$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:167: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total fest4 function size at codegen: 5 bytes.
__str_9:
	.ascii "Assertion failed"
	.db 0x00
__str_10:
	.ascii "0"
	.db 0x00
__str_11:
	.ascii "cases/./../tests/gcc-torture-execute-20020506-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20020506-1.c:170: fest5 (int i, int set)
;	genLabel
;	genFunction
;	---------------------------------
; Function fest5
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_fest5::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -5
	push	af
	push	af
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), e
	ld	-1 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:172: if ((i & (INT_MAX+1U)) == 0)
;	genAnd
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
	and	a, #0x80
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:174: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (___numTests)
	inc	de
;cases/./../tests/gcc-torture-execute-20020506-1.c:172: if ((i & (INT_MAX+1U)) == 0)
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/./../tests/gcc-torture-execute-20020506-1.c:174: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ae
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_12
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:177: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_12
;	genCall
	call	___fail
	pop	bc
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:174: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (___numTests)
	inc	de
;cases/./../tests/gcc-torture-execute-20020506-1.c:179: if ((i & (INT_MAX+1U)) != 0)
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
;cases/./../tests/gcc-torture-execute-20020506-1.c:181: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b5
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_12
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:184: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00b8
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_12
;	genCall
	call	___fail
	pop	bc
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:186: if ((i & (INT_MAX+1U)) == (INT_MAX+1U))
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:174: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:186: if ((i & (INT_MAX+1U)) == (INT_MAX+1U))
;	genCmpEq
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x80
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00228$
; common peephole 169xnz used double assignment in case of nz condition.
00227$:
	xor	a, a
00228$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;cases/./../tests/gcc-torture-execute-20020506-1.c:188: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_12
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x00bc
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_14
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_13
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
;	genLabel
00120$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:191: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_12
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x00bf
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_14
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_13
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
	pop	bc
;	genLabel
00121$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:174: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:193: if ((i & (INT_MAX+1U)) != (INT_MAX+1U))
;	genAssign
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), c
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00127$
;cases/./../tests/gcc-torture-execute-20020506-1.c:195: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
;	genAssign
;fetchPairLong
	pop	hl
	push	hl
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
	ld	hl, #0x00c3
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_12
;	genCall
	call	___fail
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
;	genLabel
00127$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:198: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00129$
;	genAssign
;fetchPairLong
	pop	hl
	push	hl
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
	ld	hl, #0x00c6
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_14
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_12
;	genCall
	call	___fail
;	genLabel
00129$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:199: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total fest5 function size at codegen: 5 bytes.
__str_12:
	.ascii "Assertion failed"
	.db 0x00
__str_13:
	.ascii "0"
	.db 0x00
__str_14:
	.ascii "cases/./../tests/gcc-torture-execute-20020506-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20020506-1.c:202: fest6 (unsigned int i, int set)
;	genLabel
;	genFunction
;	---------------------------------
; Function fest6
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
_fest6::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -5
	push	af
	push	af
	dec	sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), e
	ld	-1 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:204: if ((i & (INT_MAX+1U)) == 0)
;	genAnd
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
	and	a, #0x80
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:206: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (___numTests)
	inc	de
;cases/./../tests/gcc-torture-execute-20020506-1.c:204: if ((i & (INT_MAX+1U)) == 0)
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/./../tests/gcc-torture-execute-20020506-1.c:206: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ce
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_17
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_15
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:209: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00d1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_17
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_15
;	genCall
	call	___fail
	pop	bc
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:206: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (___numTests)
	inc	de
;cases/./../tests/gcc-torture-execute-20020506-1.c:211: if ((i & (INT_MAX+1U)) != 0)
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
;cases/./../tests/gcc-torture-execute-20020506-1.c:213: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00d5
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_17
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_15
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:216: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), de
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00d8
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_17
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_15
;	genCall
	call	___fail
	pop	bc
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:206: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:218: if ((i & (INT_MAX+1U)) == (INT_MAX+1U))
;	genCmpEq
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x80
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00228$
; common peephole 169xnz used double assignment in case of nz condition.
00227$:
	xor	a, a
00228$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;cases/./../tests/gcc-torture-execute-20020506-1.c:220: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_15
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x00dc
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_17
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_16
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
;	genLabel
00120$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:223: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_15
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x00df
	push	de
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_17
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_16
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___fail
	pop	bc
;	genLabel
00121$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:206: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:225: if ((i & (INT_MAX+1U)) != (INT_MAX+1U))
;	genAssign
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), c
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00127$
;cases/./../tests/gcc-torture-execute-20020506-1.c:227: if (set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
;	genAssign
;fetchPairLong
	pop	hl
	push	hl
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
	ld	hl, #0x00e3
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_17
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_15
;	genCall
	call	___fail
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
;	genLabel
00127$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:230: if (!set) ASSERT (0);
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00129$
;	genAssign
;fetchPairLong
	pop	hl
	push	hl
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
	ld	hl, #0x00e6
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_17
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_15
;	genCall
	call	___fail
;	genLabel
00129$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:231: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total fest6 function size at codegen: 5 bytes.
__str_15:
	.ascii "Assertion failed"
	.db 0x00
__str_16:
	.ascii "0"
	.db 0x00
__str_17:
	.ascii "cases/./../tests/gcc-torture-execute-20020506-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20020506-1.c:234: fest7 (long long l, int set)
;	genLabel
;	genFunction
;	---------------------------------
; Function fest7
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_fest7::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:236: if ((l & (LONG_LONG_MAX+1ULL)) == 0)
;	genAnd
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	a, 11 (ix)
	and	a, #0x80
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:238: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (___numTests)
	inc	bc
;cases/./../tests/gcc-torture-execute-20020506-1.c:236: if ((l & (LONG_LONG_MAX+1ULL)) == 0)
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/./../tests/gcc-torture-execute-20020506-1.c:238: if (set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), bc
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ee
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_18
;	genCall
	call	___fail
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:241: if (!set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), bc
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00f1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_18
;	genCall
	call	___fail
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:238: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:243: if ((l & (LONG_LONG_MAX+1ULL)) != 0)
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
;cases/./../tests/gcc-torture-execute-20020506-1.c:245: if (!set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
;	genAssign
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
	ld	hl, #0x00f5
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_18
;	genCall
	call	___fail
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:248: if (set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;	genAssign
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
	ld	hl, #0x00f8
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_18
;	genCall
	call	___fail
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:250: if ((l & (LONG_LONG_MAX+1ULL)) == (LONG_LONG_MAX+1ULL))
;	genCast
;	(locations are the same)
;cases/./../tests/gcc-torture-execute-20020506-1.c:238: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:250: if ((l & (LONG_LONG_MAX+1ULL)) == (LONG_LONG_MAX+1ULL))
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x80
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00228$
; common peephole 169xnz used double assignment in case of nz condition.
00227$:
	xor	a, a
00228$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
;cases/./../tests/gcc-torture-execute-20020506-1.c:252: ASSERT (set);
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00119$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00fc
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_21
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_18
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00119$
;	genLabel
00118$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:255: if (set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00119$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00ff
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_18
;	genCall
	call	___fail
	pop	bc
;	genLabel
00119$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:238: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:257: if ((l & (LONG_LONG_MAX+1ULL)) != (LONG_LONG_MAX+1ULL))
;	genAssign
;	(locations are the same)
;	genIfx
	bit	0, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00123$
;cases/./../tests/gcc-torture-execute-20020506-1.c:259: if (set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00125$
;	genAssign
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
	ld	hl, #0x0103
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_18
;	genCall
	call	___fail
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00125$
;	genLabel
00123$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:262: ASSERT (set);
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00125$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0106
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_20
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_21
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_18
;	genCall
	call	___fail
;	genLabel
00125$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:263: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 10
	pop	af
	pop	af
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total fest7 function size at codegen: 11 bytes.
__str_18:
	.ascii "Assertion failed"
	.db 0x00
__str_19:
	.ascii "0"
	.db 0x00
__str_20:
	.ascii "cases/./../tests/gcc-torture-execute-20020506-1.c"
	.db 0x00
___str_21:
	.ascii "set"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20020506-1.c:266: fest8 (unsigned long long l, int set)
;	genLabel
;	genFunction
;	---------------------------------
; Function fest8
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_fest8::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:268: if ((l & (LONG_LONG_MAX+1ULL)) == 0)
;	genAnd
;	genMove_o size 7 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	a, 11 (ix)
	and	a, #0x80
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020506-1.c:270: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (___numTests)
	inc	bc
;cases/./../tests/gcc-torture-execute-20020506-1.c:268: if ((l & (LONG_LONG_MAX+1ULL)) == 0)
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;cases/./../tests/gcc-torture-execute-20020506-1.c:270: if (set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), bc
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x010e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_24
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_22
;	genCall
	call	___fail
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:273: if (!set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), bc
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0111
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_24
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_22
;	genCall
	call	___fail
;	genLabel
00107$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:270: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:275: if ((l & (LONG_LONG_MAX+1ULL)) != 0)
;	genIfx
	ld	a, -1 (ix)
	or	a, -2 (ix)
	or	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	or	a, -7 (ix)
	or	a, -8 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00113$
;cases/./../tests/gcc-torture-execute-20020506-1.c:277: if (!set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00114$
;	genAssign
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
	ld	hl, #0x0115
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_24
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_22
;	genCall
	call	___fail
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:280: if (set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
;	genAssign
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
	ld	hl, #0x0118
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_24
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_22
;	genCall
	call	___fail
;	genLabel
00114$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:270: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:282: if ((l & (LONG_LONG_MAX+1ULL)) == (LONG_LONG_MAX+1ULL))
;	genCmpEq
	ld	a, -8 (ix)
	or	a, a
	or	a, -7 (ix)
	or	a, -6 (ix)
	or	a, -5 (ix)
	or	a, -4 (ix)
	or	a, -3 (ix)
	or	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x80
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00228$
; common peephole 169xnz used double assignment in case of nz condition.
00227$:
	xor	a, a
00228$:
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;cases/./../tests/gcc-torture-execute-20020506-1.c:284: if (!set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x011c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_24
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_22
;	genCall
	call	___fail
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00121$
;	genLabel
00120$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:287: if (set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00121$
;	genAssign
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x011f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_24
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_22
;	genCall
	call	___fail
	pop	bc
;	genLabel
00121$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:270: if (set) ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;cases/./../tests/gcc-torture-execute-20020506-1.c:289: if ((l & (LONG_LONG_MAX+1ULL)) != (LONG_LONG_MAX+1ULL))
;	genAssign
;	(locations are the same)
;	genIfx
	bit	0, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00127$
;cases/./../tests/gcc-torture-execute-20020506-1.c:291: if (set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00129$
;	genAssign
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
	ld	hl, #0x0123
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_24
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_22
;	genCall
	call	___fail
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00129$
;	genLabel
00127$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:294: if (!set) ASSERT (0);
;	genIfx
	ld	a, 13 (ix)
	or	a, 12 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00129$
;	genAssign
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
	ld	hl, #0x0126
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_24
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_22
;	genCall
	call	___fail
;	genLabel
00129$:
;cases/./../tests/gcc-torture-execute-20020506-1.c:295: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 10
	pop	af
	pop	af
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total fest8 function size at codegen: 11 bytes.
__str_22:
	.ascii "Assertion failed"
	.db 0x00
__str_23:
	.ascii "0"
	.db 0x00
__str_24:
	.ascii "cases/./../tests/gcc-torture-execute-20020506-1.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20020506-1.c:300: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20020506-1.c:303: fest1 (0, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genCall
	call	_fest1
;cases/./../tests/gcc-torture-execute-20020506-1.c:304: fest1 (SCHAR_MAX, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x7f
;	genCall
	call	_fest1
;cases/./../tests/gcc-torture-execute-20020506-1.c:305: fest1 (SCHAR_MIN, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x80
;	genCall
	call	_fest1
;cases/./../tests/gcc-torture-execute-20020506-1.c:306: fest1 (UCHAR_MAX, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0xff
;	genCall
	call	_fest1
;cases/./../tests/gcc-torture-execute-20020506-1.c:308: fest2 (0, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
;	genCall
	call	_fest2
;cases/./../tests/gcc-torture-execute-20020506-1.c:309: fest2 (SCHAR_MAX, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x7f
;	genCall
	call	_fest2
;cases/./../tests/gcc-torture-execute-20020506-1.c:310: fest2 (SCHAR_MIN, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0x80
;	genCall
	call	_fest2
;cases/./../tests/gcc-torture-execute-20020506-1.c:311: fest2 (UCHAR_MAX, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, #0xff
;	genCall
	call	_fest2
;cases/./../tests/gcc-torture-execute-20020506-1.c:313: fest3 (0, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_fest3
;cases/./../tests/gcc-torture-execute-20020506-1.c:314: fest3 (SHRT_MAX, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x7fff
;	genCall
	call	_fest3
;cases/./../tests/gcc-torture-execute-20020506-1.c:315: fest3 (SHRT_MIN, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x8000
;	genCall
	call	_fest3
;cases/./../tests/gcc-torture-execute-20020506-1.c:316: fest3 (USHRT_MAX, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0xffff
;	genCall
	call	_fest3
;cases/./../tests/gcc-torture-execute-20020506-1.c:318: fest4 (0, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_fest4
;cases/./../tests/gcc-torture-execute-20020506-1.c:319: fest4 (SHRT_MAX, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x7fff
;	genCall
	call	_fest4
;cases/./../tests/gcc-torture-execute-20020506-1.c:320: fest4 (SHRT_MIN, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x8000
;	genCall
	call	_fest4
;cases/./../tests/gcc-torture-execute-20020506-1.c:321: fest4 (USHRT_MAX, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0xffff
;	genCall
	call	_fest4
;cases/./../tests/gcc-torture-execute-20020506-1.c:323: fest5 (0, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_fest5
;cases/./../tests/gcc-torture-execute-20020506-1.c:324: fest5 (INT_MAX, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x7fff
;	genCall
	call	_fest5
;cases/./../tests/gcc-torture-execute-20020506-1.c:325: fest5 (INT_MIN, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x8000
;	genCall
	call	_fest5
;cases/./../tests/gcc-torture-execute-20020506-1.c:326: fest5 (UINT_MAX, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0xffff
;	genCall
	call	_fest5
;cases/./../tests/gcc-torture-execute-20020506-1.c:328: fest6 (0, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_fest6
;cases/./../tests/gcc-torture-execute-20020506-1.c:329: fest6 (INT_MAX, 0);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x7fff
;	genCall
	call	_fest6
;cases/./../tests/gcc-torture-execute-20020506-1.c:330: fest6 (INT_MIN, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x8000
;	genCall
	call	_fest6
;cases/./../tests/gcc-torture-execute-20020506-1.c:331: fest6 (UINT_MAX, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0xffff
;	genCall
	call	_fest6
;cases/./../tests/gcc-torture-execute-20020506-1.c:333: fest7 (0, 0);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_fest7
;cases/./../tests/gcc-torture-execute-20020506-1.c:334: fest7 (LONG_LONG_MAX, 0);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7fff
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_fest7
;cases/./../tests/gcc-torture-execute-20020506-1.c:335: fest7 (LONG_LONG_MIN, 1);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x8000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_fest7
;cases/./../tests/gcc-torture-execute-20020506-1.c:336: fest7 (ULONG_LONG_MAX, 1);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffff
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_fest7
;cases/./../tests/gcc-torture-execute-20020506-1.c:338: fest8 (0, 0);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_fest8
;cases/./../tests/gcc-torture-execute-20020506-1.c:339: fest8 (LONG_LONG_MAX, 0);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x7fff
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_fest8
;cases/./../tests/gcc-torture-execute-20020506-1.c:340: fest8 (LONG_LONG_MIN, 1);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x8000
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, l
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_fest8
;cases/./../tests/gcc-torture-execute-20020506-1.c:341: fest8 (ULONG_LONG_MAX, 1);
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0001
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xffff
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genCall
	call	_fest8
;cases/./../tests/gcc-torture-execute-20020506-1.c:343: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20020506-1.c:346: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-20020506-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20020506-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_25
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20020506-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020506-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_25:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20020506-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20020506-1.c:15: return "gcc-torture-execute-20020506-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_26
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020506-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_26:
	.ascii "gcc-torture-execute-20020506-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
