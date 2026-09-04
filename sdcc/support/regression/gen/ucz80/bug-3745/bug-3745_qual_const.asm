;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bug_3745_qual_const
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _i
	.globl _f
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
;cases/bug-3745/bug-3745_qual_const.c:18: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 8 bytes.
_testBug::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -8
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;cases/bug-3745/bug-3745_qual_const.c:20: ASSERT (i * 2 >= f && f >= i / 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLeftShift
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i+0)
	ld	-8 (ix), a
	ld	a, (_i+1)
	ld	-7 (ix), a
	ld	a, (_i+2)
	ld	-6 (ix), a
	ld	a, (_i+3)
	ld	-5 (ix), a
	ld	a, (_i+4)
	ld	-4 (ix), a
	ld	a, (_i+5)
	ld	-3 (ix), a
	ld	a, (_i+6)
	ld	-2 (ix), a
	ld	a, (_i+7)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-8 (ix)
	rl	-7 (ix)
	rl	-6 (ix)
	rl	-5 (ix)
	rl	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
;	Shift into pair
	ld	hl, #_f
	ld	a, -8 (ix)
	sub	a, (hl)
	ld	a, -7 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -6 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -5 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -4 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -3 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -2 (ix)
	inc	hl
	sbc	a, (hl)
	ld	a, -1 (ix)
	inc	hl
	sbc	a, (hl)
	jp	c, 00103$
;	skipping generated iCode
;	genRightShift
;	genMove_o size 8 result type 6 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_i+0)
	ld	-8 (ix), a
	ld	a, (_i+1)
	ld	-7 (ix), a
	ld	a, (_i+2)
	ld	-6 (ix), a
	ld	a, (_i+3)
	ld	-5 (ix), a
	ld	a, (_i+4)
	ld	-4 (ix), a
	ld	a, (_i+5)
	ld	-3 (ix), a
	ld	a, (_i+6)
	ld	-2 (ix), a
	ld	a, (_i+7)
	ld	-1 (ix), a
	srl	-1 (ix)
	rr	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
;	genMove_o size 8 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpLt
	ld	a, (_f+0)
	sub	a, -8 (ix)
	ld	a, (_f+1)
	sbc	a, -7 (ix)
	ld	a, (_f+2)
	sbc	a, -6 (ix)
	ld	a, (_f+3)
	sbc	a, -5 (ix)
	ld	a, (_f+4)
	sbc	a, -4 (ix)
	ld	a, (_f+5)
	sbc	a, -3 (ix)
	ld	a, (_f+6)
	sbc	a, -2 (ix)
	ld	a, (_f+7)
	sbc	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00101$
;	skipping generated iCode
;	genLabel
00103$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0014
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
00101$:
;cases/bug-3745/bug-3745_qual_const.c:21: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testBug function size at codegen: 5 bytes.
_f:
	.byte #0x00, #0x00, #0x64, #0xa7, #0xb3, #0xb6, #0xe0, #0x0d
_i:
	.byte #0x00, #0x00, #0x64, #0xa7, #0xb3, #0xb6, #0xe0, #0x0d
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "i * 2 >= f && f >= i / 2"
	.db 0x00
___str_2:
	.ascii "cases/bug-3745/bug-3745_qual_const.c"
	.db 0x00
;cases/bug-3745/bug-3745_qual_const.c:25: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bug-3745/bug-3745_qual_const.c:27: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/bug-3745/bug-3745_qual_const.c:28: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3745/bug-3745_qual_const.c:29: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/bug-3745/bug-3745_qual_const.c:34: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bug-3745/bug-3745_qual_const.c:36: return "bug-3745_qual_const";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3745/bug-3745_qual_const.c:37: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-3745_qual_const"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
