;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug3403429
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _Sub_9000
	.globl _PTBL
	.globl ___prints
	.globl ___fail
	.globl _i
	.globl _gm
	.globl _C
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
_C::
	.ds 15
_gm::
	.ds 2
_i::
	.ds 1
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
;cases/./../tests/bug3403429.c:7: void PTBL (signed char col, signed char row, unsigned char spN)
;	genLabel
;	genFunction
;	---------------------------------
; Function PTBL
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_PTBL::
;cases/./../tests/bug3403429.c:11: spN;
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3403429.c:12: }
;	genEndFunction
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
;	Total PTBL function size at codegen: 3 bytes.
;cases/./../tests/bug3403429.c:19: void Sub_9000 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function Sub_9000
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_Sub_9000::
;cases/./../tests/bug3403429.c:23: for( i=0; i<=36; i+=4 )
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genLabel
00108$:
;cases/./../tests/bug3403429.c:25: for( j=0; j<=23; j+=8 )
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00106$:
;	genCast
;	(locations are the same)
;	genPlus
	add	a, #0x08
;	genCmpGt
	cp	a, #0x18
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00106$
;	skipping generated iCode
;cases/./../tests/bug3403429.c:23: for( i=0; i<=36; i+=4 )
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	add	a, #0x04
	ld	c, a
;	genCmpGt
	ld	a, #0x24
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00108$
;	skipping generated iCode
;cases/./../tests/bug3403429.c:33: if( gm==0 )
;	genIfx
	ld	a, (_gm+1)
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_gm
	or	a, (hl)
	ret	nz
; common peephole 161 replaced jump by return.
;cases/./../tests/bug3403429.c:35: C[ 1][1]=10; C[ 1][2]=10;
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	hl, #_C + 4
;	genPointerSet
	ld	(hl), #0x0a
;	genPlus
	ld	hl, #_C + 5
;	genPointerSet
	ld	(hl), #0x0a
;cases/./../tests/bug3403429.c:36: C[ 2][1]=10; C[ 2][2]=10;
;	genPlus
	ld	hl, #_C + 7
;	genPointerSet
	ld	(hl), #0x0a
;	genPlus
	ld	hl, #_C + 8
;	genPointerSet
	ld	(hl), #0x0a
;cases/./../tests/bug3403429.c:37: C[ 3][1]=10; C[ 3][2]=10;
;	genPlus
	ld	hl, #_C + 10
;	genPointerSet
	ld	(hl), #0x0a
;	genPlus
	ld	hl, #_C + 11
;	genPointerSet
	ld	(hl), #0x0a
;cases/./../tests/bug3403429.c:38: C[ 4][1]=10; C[ 4][2]=10;
;	genPlus
	ld	hl, #_C + 13
;	genPointerSet
	ld	(hl), #0x0a
;	genPlus
	ld	hl, #_C + 14
;	genPointerSet
	ld	(hl), #0x0a
;cases/./../tests/bug3403429.c:40: for(i=4; i!=0; i--) // <-- BUG IS HERE
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_i
	ld	(hl), #0x04
;	genLabel
00110$:
;cases/./../tests/bug3403429.c:45: C[i][1]=0;
;	genMult
	ld	iy, #_i
	ld	c, 0 (iy)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_C
	add	hl, de
;	genPlus
	inc	hl
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/bug3403429.c:46: C[i][2]=0;
;	genMult
	ld	c, 0 (iy)
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_C
	add	hl, de
;	genPlus
	inc	hl
	inc	hl
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/bug3403429.c:40: for(i=4; i!=0; i--) // <-- BUG IS HERE
;	genMinus
;	Shift into pair
	ld	hl, #_i
	dec	(hl)
;	genIfx
	ld	a, (_i+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;	genLabel
; common peephole 159 removed unused label 00112$.
;cases/./../tests/bug3403429.c:49: }
;	genEndFunction
	ret
;	Total Sub_9000 function size at codegen: 1 bytes.
;cases/./../tests/bug3403429.c:51: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_testBug::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -1
	dec	sp
;cases/./../tests/bug3403429.c:57: gm = 0;
;	genAssign
;fetchPairLong
	ld	hl, #0x0000
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_gm), hl
;cases/./../tests/bug3403429.c:59: Sub_9000();
;	genCall
	call	_Sub_9000
;cases/./../tests/bug3403429.c:61: for(i = 1; i <= 4; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x01
;	genLabel
00102$:
;cases/./../tests/bug3403429.c:63: ASSERT(C[i][1] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMult
	ld	c, a
	add	a, a
	add	a, c
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genPlus
	add	a, #<(_C)
	ld	c, a
	ld	a, #0x00
	adc	a, #>(_C)
	ld	b, a
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00107$
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
	pop	bc
;	genLabel
00107$:
;cases/./../tests/bug3403429.c:64: ASSERT(C[i][2] == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	inc	bc
	inc	bc
	ld	a, (bc)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0040
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00103$:
;cases/./../tests/bug3403429.c:61: for(i = 1; i <= 4; i++)
;	genPlus
	inc	-1 (ix)
;	genCmpGt
	ld	a, #0x04
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/bug3403429.c:66: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	ix
	ret
;	Total testBug function size at codegen: 4 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "C[i][1] == 0"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug3403429.c"
	.db 0x00
___str_3:
	.ascii "C[i][2] == 0"
	.db 0x00
;cases/tst_bug3403429.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug3403429.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug3403429.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3403429.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug3403429.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug3403429.c:15: return "bug3403429.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3403429.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug3403429.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
