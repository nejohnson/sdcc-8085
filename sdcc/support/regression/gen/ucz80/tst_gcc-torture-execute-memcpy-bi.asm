;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_memcpy_bi
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _check
	.globl _memcmp
	.globl ___prints
	.globl ___fail
	.globl _dst
	.globl _src
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
_src::
	.ds 80
_dst::
	.ds 80
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
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:21: check (char *test, char *match, int n)
;	genLabel
;	genFunction
;	---------------------------------
; Function check
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_check::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:23: if (memcmp (test, match, n))
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 4 (ix)
	ld	b, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_memcmp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:24: ASSERT (0);
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
	ld	hl, #0x0018
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
00103$:
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:25: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total check function size at codegen: 5 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-memcpy-bi.c"
	.db 0x00
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:37: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:42: for (i = 0; i < sizeof (src); ++i)
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:43: src[i] = 'a' + i % 26;
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_src
	add	hl, bc
;	genSend
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x001a
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	__modsint
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	pop	hl
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	add	a, #0x61
;	genPointerSet
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:42: for (i = 0; i < sizeof (src); ++i)
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x50
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00102$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:45: T (0);
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genIpush
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
	push	de
; common peephole 94d pushed register pair twice.
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_memset
	pop	hl
;	skipping iCode since result will be rematerialized
;	genIpush
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
	push	de
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_src
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	___memcpy
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	skipping iCode since result will be rematerialized
;	genIpush
; common peephole 51a eliminated dead pop/push hl pair.
	ld	de, #_src
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	(hl), #0x00
; common peephole 177b bubbled down push
; common peephole 50b eliminated dead push/pop pair.
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, (#_src)
; common peephole 17 loaded a from (#_src) directly instead of using hl.
	ld	(de), a
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0001
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	(hl), #0x00
; common peephole 177b bubbled down push
	push	hl
	inc	hl
	ld	(hl), #0x00
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
	ldi
	ld	a, (hl)
	ld	(de), a
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0002
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	(hl), #0x00
; common peephole 177b bubbled down push
	push	hl
	inc	hl
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0003
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0003
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:46: T (4);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x04
00123$:
	ld	(hl), #0x00
	inc	hl
	djnz	00123$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0004
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0004
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x05
00125$:
	ld	(hl), #0x00
	inc	hl
	djnz	00125$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0005
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0005
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x06
00127$:
	ld	(hl), #0x00
	inc	hl
	djnz	00127$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0006
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0006
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x07
00129$:
	ld	(hl), #0x00
	inc	hl
	djnz	00129$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0007
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0007
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:47: T (8);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x08
00131$:
	ld	(hl), #0x00
	inc	hl
	djnz	00131$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0008
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0008
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x09
00133$:
	ld	(hl), #0x00
	inc	hl
	djnz	00133$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0009
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0009
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x0a
00135$:
	ld	(hl), #0x00
	inc	hl
	djnz	00135$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x000a
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x000a
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x0b
00137$:
	ld	(hl), #0x00
	inc	hl
	djnz	00137$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x000b
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x000b
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:48: T (12);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x0c
00139$:
	ld	(hl), #0x00
	inc	hl
	djnz	00139$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x000c
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x000c
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x0d
00141$:
	ld	(hl), #0x00
	inc	hl
	djnz	00141$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x000d
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x000d
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x0e
00143$:
	ld	(hl), #0x00
	inc	hl
	djnz	00143$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x000e
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x000e
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x0f
00145$:
	ld	(hl), #0x00
	inc	hl
	djnz	00145$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x000f
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x000f
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:49: T (16);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x10
00147$:
	ld	(hl), #0x00
	inc	hl
	djnz	00147$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0010
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0010
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x11
00149$:
	ld	(hl), #0x00
	inc	hl
	djnz	00149$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0011
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0011
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x12
00151$:
	ld	(hl), #0x00
	inc	hl
	djnz	00151$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0012
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0012
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x13
00153$:
	ld	(hl), #0x00
	inc	hl
	djnz	00153$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0013
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0013
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:50: T (20);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x14
00155$:
	ld	(hl), #0x00
	inc	hl
	djnz	00155$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0014
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0014
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x15
00157$:
	ld	(hl), #0x00
	inc	hl
	djnz	00157$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0015
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0015
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x16
00159$:
	ld	(hl), #0x00
	inc	hl
	djnz	00159$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0016
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0016
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x17
00161$:
	ld	(hl), #0x00
	inc	hl
	djnz	00161$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0017
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0017
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:51: T (24);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x18
00163$:
	ld	(hl), #0x00
	inc	hl
	djnz	00163$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0018
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0018
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x19
00165$:
	ld	(hl), #0x00
	inc	hl
	djnz	00165$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0019
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0019
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x1a
00167$:
	ld	(hl), #0x00
	inc	hl
	djnz	00167$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x001a
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x001a
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x1b
00169$:
	ld	(hl), #0x00
	inc	hl
	djnz	00169$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x001b
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x001b
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:52: T (28);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x1c
00171$:
	ld	(hl), #0x00
	inc	hl
	djnz	00171$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x001c
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x001c
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x1d
00173$:
	ld	(hl), #0x00
	inc	hl
	djnz	00173$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x001d
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x001d
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x1e
00175$:
	ld	(hl), #0x00
	inc	hl
	djnz	00175$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x001e
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x001e
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x1f
00177$:
	ld	(hl), #0x00
	inc	hl
	djnz	00177$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x001f
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x001f
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:53: T (32);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x20
00179$:
	ld	(hl), #0x00
	inc	hl
	djnz	00179$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0020
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0020
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x21
00181$:
	ld	(hl), #0x00
	inc	hl
	djnz	00181$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0021
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0021
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x22
00183$:
	ld	(hl), #0x00
	inc	hl
	djnz	00183$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0022
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0022
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x23
00185$:
	ld	(hl), #0x00
	inc	hl
	djnz	00185$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0023
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0023
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:54: T (36);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x24
00187$:
	ld	(hl), #0x00
	inc	hl
	djnz	00187$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0024
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0024
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x25
00189$:
	ld	(hl), #0x00
	inc	hl
	djnz	00189$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0025
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0025
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x26
00191$:
	ld	(hl), #0x00
	inc	hl
	djnz	00191$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0026
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0026
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x27
00193$:
	ld	(hl), #0x00
	inc	hl
	djnz	00193$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0027
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0027
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:55: T (40);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x28
00195$:
	ld	(hl), #0x00
	inc	hl
	djnz	00195$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0028
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0028
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x29
00197$:
	ld	(hl), #0x00
	inc	hl
	djnz	00197$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0029
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0029
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x2a
00199$:
	ld	(hl), #0x00
	inc	hl
	djnz	00199$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x002a
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x002a
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x2b
00201$:
	ld	(hl), #0x00
	inc	hl
	djnz	00201$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x002b
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x002b
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:56: T (44);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x2c
00203$:
	ld	(hl), #0x00
	inc	hl
	djnz	00203$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x002c
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x002c
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x2d
00205$:
	ld	(hl), #0x00
	inc	hl
	djnz	00205$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x002d
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x002d
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x2e
00207$:
	ld	(hl), #0x00
	inc	hl
	djnz	00207$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x002e
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x002e
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x2f
00209$:
	ld	(hl), #0x00
	inc	hl
	djnz	00209$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x002f
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x002f
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:57: T (48);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x30
00211$:
	ld	(hl), #0x00
	inc	hl
	djnz	00211$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0030
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0030
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x31
00213$:
	ld	(hl), #0x00
	inc	hl
	djnz	00213$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0031
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0031
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x32
00215$:
	ld	(hl), #0x00
	inc	hl
	djnz	00215$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0032
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0032
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x33
00217$:
	ld	(hl), #0x00
	inc	hl
	djnz	00217$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0033
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0033
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:58: T (52);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x34
00219$:
	ld	(hl), #0x00
	inc	hl
	djnz	00219$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0034
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0034
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x35
00221$:
	ld	(hl), #0x00
	inc	hl
	djnz	00221$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0035
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0035
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x36
00223$:
	ld	(hl), #0x00
	inc	hl
	djnz	00223$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0036
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0036
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x37
00225$:
	ld	(hl), #0x00
	inc	hl
	djnz	00225$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0037
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0037
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:59: T (56);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x38
00227$:
	ld	(hl), #0x00
	inc	hl
	djnz	00227$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0038
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0038
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x39
00229$:
	ld	(hl), #0x00
	inc	hl
	djnz	00229$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0039
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0039
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x3a
00231$:
	ld	(hl), #0x00
	inc	hl
	djnz	00231$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x003a
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x003a
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x3b
00233$:
	ld	(hl), #0x00
	inc	hl
	djnz	00233$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x003b
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x003b
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:60: T (60);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x3c
00235$:
	ld	(hl), #0x00
	inc	hl
	djnz	00235$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x003c
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x003c
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x3d
00237$:
	ld	(hl), #0x00
	inc	hl
	djnz	00237$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x003d
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x003d
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x3e
00239$:
	ld	(hl), #0x00
	inc	hl
	djnz	00239$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x003e
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x003e
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x3f
00241$:
	ld	(hl), #0x00
	inc	hl
	djnz	00241$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x003f
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x003f
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:61: T (64);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x40
00243$:
	ld	(hl), #0x00
	inc	hl
	djnz	00243$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0040
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0040
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x41
00245$:
	ld	(hl), #0x00
	inc	hl
	djnz	00245$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0041
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0041
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x42
00247$:
	ld	(hl), #0x00
	inc	hl
	djnz	00247$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0042
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0042
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x43
00249$:
	ld	(hl), #0x00
	inc	hl
	djnz	00249$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0043
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0043
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:62: T (68);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x44
00251$:
	ld	(hl), #0x00
	inc	hl
	djnz	00251$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0044
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0044
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x45
00253$:
	ld	(hl), #0x00
	inc	hl
	djnz	00253$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0045
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0045
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x46
00255$:
	ld	(hl), #0x00
	inc	hl
	djnz	00255$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0046
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0046
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x47
00257$:
	ld	(hl), #0x00
	inc	hl
	djnz	00257$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0047
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0047
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:63: T (72);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x48
00259$:
	ld	(hl), #0x00
	inc	hl
	djnz	00259$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0048
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0048
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x49
00261$:
	ld	(hl), #0x00
	inc	hl
	djnz	00261$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x0049
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0049
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x4a
00263$:
	ld	(hl), #0x00
	inc	hl
	djnz	00263$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x004a
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x004a
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x4b
00265$:
	ld	(hl), #0x00
	inc	hl
	djnz	00265$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x004b
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x004b
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:64: T (76);
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x4c
00267$:
	ld	(hl), #0x00
	inc	hl
	djnz	00267$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x004c
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x004c
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x4d
00269$:
	ld	(hl), #0x00
	inc	hl
	djnz	00269$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x004d
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x004d
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x4e
00271$:
	ld	(hl), #0x00
	inc	hl
	djnz	00271$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
; common peephole 26c moved push after de/hl swap.
	ex	de, hl
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x004e
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
	push	de
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x004e
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
	pop	de
	pop	hl
;	genBuiltIn
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	b, #0x4f
00273$:
	ld	(hl), #0x00
	inc	hl
	djnz	00273$
	pop	hl
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genBuiltIn
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 26b moved push after de/hl swap.
	ex	de, hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_src
;fetchPairLong
	ld	bc, #0x004f
	ldir
	pop	de
;	skipping generated iCode
;	skipping generated iCode
;	skipping generated iCode
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x004f
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #_dst
;	genCall
	call	_check
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:66: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-memcpy-bi.c:67: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 459 bytes.
;cases/tst_gcc-torture-execute-memcpy-bi.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-memcpy-bi.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-memcpy-bi.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-memcpy-bi.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-memcpy-bi.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-memcpy-bi.c:15: return "gcc-torture-execute-memcpy-bi.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-memcpy-bi.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-memcpy-bi.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
