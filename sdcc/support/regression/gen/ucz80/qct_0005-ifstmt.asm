;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module qct_0005_ifstmt
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main_
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl ___getSuiteName
	.globl ___runSuite
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
;cases/qct_0005-ifstmt.c:6: __code const char * __getSuiteName(void) { return "qct/0005-ifstmt"; }
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_0
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_0:
	.ascii "qct/0005-ifstmt"
	.db 0x00
;cases/../qct/0005-ifstmt.c:3: main()
;	genLabel
;	genFunction
;	---------------------------------
; Function main_
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_main_::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/../qct/0005-ifstmt.c:9: x = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	(sp), hl
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../qct/0005-ifstmt.c:10: p = &x;
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/../qct/0005-ifstmt.c:11: pp = &p;
;	genAddrOf
	ld	hl, #2
	add	hl, sp
	ld	c, l
	ld	b, h
;	genCast
;	(locations are the same)
;cases/../qct/0005-ifstmt.c:13: if(*p)
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
;	_moveFrom_tpair_()
;	genIfx
; common peephole 9 loaded a from (hl) directly instead of going through d.
	ld	a, (hl)
	inc	hl
; common peephole 99a removed load by reordering or arguments.
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/../qct/0005-ifstmt.c:14: return 1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00102$:
;cases/../qct/0005-ifstmt.c:15: if(**pp)
;	genPointerGet
;fetchPairLong
	ld	a, (bc)
	ld	l, a
	inc	bc
	ld	a, (bc)
	ld	h, a
; common peephole 23 optimize 16-bit load from bc.
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
	dec	hl
;	genIfx
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/../qct/0005-ifstmt.c:16: return 1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00104$:
;cases/../qct/0005-ifstmt.c:18: **pp = 1;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #0x01
	inc	hl
;cases/../qct/0005-ifstmt.c:20: if(x)
;	genIfx
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl),a
; common peephole 103 loaded value in a first and used it next
	or	a, -4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
;cases/../qct/0005-ifstmt.c:21: return 0;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00107$:
;cases/../qct/0005-ifstmt.c:23: return 1;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genLabel
00109$:
;cases/../qct/0005-ifstmt.c:24: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total main_ function size at codegen: 8 bytes.
;cases/qct_0005-ifstmt.c:10: void __runSuite(void) { __prints("Running main\n"); ASSERT(!main_(MAINARGS)); }
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
___runSuite::
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
	call	___prints
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_main_
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
	ret	z
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x000a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_2
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total __runSuite function size at codegen: 1 bytes.
___str_1:
	.ascii "Running main"
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "Assertion failed"
	.db 0x00
___str_3:
	.ascii "!main_(MAINARGS)"
	.db 0x00
___str_4:
	.ascii "cases/qct_0005-ifstmt.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
