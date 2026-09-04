;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20080719_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _xxx
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
;cases/./../tests/gcc-torture-execute-20080719-1.c:48: const u32 *xxx(int bpp)
;	genLabel
;	genFunction
;	---------------------------------
; Function xxx
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_xxx::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20080719-1.c:54: switch (bpp) {
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x08
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00126$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x10
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00127$.
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;cases/./../tests/gcc-torture-execute-20080719-1.c:55: case 8:
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-20080719-1.c:56: tab = cfb_tab8_be;
;	genAddrOf
	ld	de, #_cfb_tab8_be+0
;	genCast
;	(locations are the same)
;cases/./../tests/gcc-torture-execute-20080719-1.c:57: break;
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-20080719-1.c:58: case 16:
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-20080719-1.c:59: tab = cfb_tab16_be;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_cfb_tab16_be
;cases/./../tests/gcc-torture-execute-20080719-1.c:60: break;
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-20080719-1.c:62: default:
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-20080719-1.c:63: tab = cfb_tab32;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_cfb_tab32
;cases/./../tests/gcc-torture-execute-20080719-1.c:65: }
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/gcc-torture-execute-20080719-1.c:67: return tab;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00108$.
;cases/./../tests/gcc-torture-execute-20080719-1.c:68: }
;	genEndFunction
	ret
;	Total xxx function size at codegen: 1 bytes.
_deadfish:
	.byte #0x55, #0xf1, #0xad, #0xde	; 3735941461
_cfb_tab8_be:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0xff, #0x00, #0x00, #0x00	; 255
	.byte #0x00, #0xff, #0x00, #0x00	; 65280
	.byte #0xff, #0xff, #0x00, #0x00	; 65535
	.byte #0x00, #0x00, #0xff, #0x00	; 16711680
	.byte #0xff, #0x00, #0xff, #0x00	; 16711935
	.byte #0x00, #0xff, #0xff, #0x00	; 16776960
	.byte #0xff, #0xff, #0xff, #0x00	; 16777215
	.byte #0x00, #0x00, #0x00, #0xff	; 4278190080
	.byte #0xff, #0x00, #0x00, #0xff	; 4278190335
	.byte #0x00, #0xff, #0x00, #0xff	; 4278255360
	.byte #0xff, #0xff, #0x00, #0xff	; 4278255615
	.byte #0x00, #0x00, #0xff, #0xff	; 4294901760
	.byte #0xff, #0x00, #0xff, #0xff	; 4294902015
	.byte #0x00, #0xff, #0xff, #0xff	; 4294967040
	.byte #0xff, #0xff, #0xff, #0xff	; 4294967295
_cfb_tab8_le:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0x00, #0xff	; 4278190080
	.byte #0x00, #0x00, #0xff, #0x00	; 16711680
	.byte #0x00, #0x00, #0xff, #0xff	; 4294901760
	.byte #0x00, #0xff, #0x00, #0x00	; 65280
	.byte #0x00, #0xff, #0x00, #0xff	; 4278255360
	.byte #0x00, #0xff, #0xff, #0x00	; 16776960
	.byte #0x00, #0xff, #0xff, #0xff	; 4294967040
	.byte #0xff, #0x00, #0x00, #0x00	; 255
	.byte #0xff, #0x00, #0x00, #0xff	; 4278190335
	.byte #0xff, #0x00, #0xff, #0x00	; 16711935
	.byte #0xff, #0x00, #0xff, #0xff	; 4294902015
	.byte #0xff, #0xff, #0x00, #0x00	; 65535
	.byte #0xff, #0xff, #0x00, #0xff	; 4278255615
	.byte #0xff, #0xff, #0xff, #0x00	; 16777215
	.byte #0xff, #0xff, #0xff, #0xff	; 4294967295
_cfb_tab16_be:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0xff, #0xff, #0x00, #0x00	; 65535
	.byte #0x00, #0x00, #0xff, #0xff	; 4294901760
	.byte #0xff, #0xff, #0xff, #0xff	; 4294967295
_cfb_tab16_le:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0x00, #0x00, #0xff, #0xff	; 4294901760
	.byte #0xff, #0xff, #0x00, #0x00	; 65535
	.byte #0xff, #0xff, #0xff, #0xff	; 4294967295
_cfb_tab32:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.byte #0xff, #0xff, #0xff, #0xff	; 4294967295
;cases/./../tests/gcc-torture-execute-20080719-1.c:71: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/./../tests/gcc-torture-execute-20080719-1.c:73: const u32 *a = xxx(8);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0008
;	genCall
	call	_xxx
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20080719-1.c:74: int32_t b = a[0];
;	genPointerGet
;fetchPairLong
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
;cases/./../tests/gcc-torture-execute-20080719-1.c:75: if (b != cfb_tab8_be[0])
;	skipping iCode since result will be rematerialized
;	genPointerGet
	push	de
	push	bc
; common peephole 130a removed unnecessary +0 from constant
	ld	de, #_cfb_tab8_be
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
;	genCast
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	pop	hl
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	cp	a, a
	sbc	hl, bc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -2 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, d
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
00113$:
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20080719-1.c:76: ASSERT (0);
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
	ld	hl, #0x004c
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
00102$:
;cases/./../tests/gcc-torture-execute-20080719-1.c:77: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-20080719-1.c:78: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 9 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-20080719-1.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20080719-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20080719-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20080719-1.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20080719-1.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20080719-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20080719-1.c:15: return "gcc-torture-execute-20080719-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20080719-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-20080719-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
