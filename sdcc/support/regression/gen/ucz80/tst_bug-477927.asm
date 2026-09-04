;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_477927
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testLoopInit
	.globl _spoil
	.globl _randish
	.globl ___prints
	.globl _accu
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
_randish_count_10000_13:
	.ds 2
_accu::
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
;cases/./../tests/bug-477927.c:12: randish(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function randish
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_randish::
;cases/./../tests/bug-477927.c:16: if ((++count)&3) {
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_randish_count_10000_13)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_randish_count_10000_13), hl
;	genAnd
	ld	a, (_randish_count_10000_13+0)
	and	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00114$.
;	skipping generated iCode
;cases/./../tests/bug-477927.c:17: return 1;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
;cases/./../tests/bug-477927.c:20: return 0;
;	genRet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
	ld	a, #0x01
	ret	nz
; common peephole 161 replaced jump by return.
; common peephole 169xz used double assignment in case of z condition.
; common peephole 159 removed unused label 00102$.
	xor	a, a
; common peephole 159 removed unused label 00104$.
;cases/./../tests/bug-477927.c:22: }
;	genEndFunction
	ret
;	Total randish function size at codegen: 4 bytes.
;cases/./../tests/bug-477927.c:25: spoil(UBYTE ignored)
;	genLabel
;	genFunction
;	---------------------------------
; Function spoil
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_spoil::
;cases/./../tests/bug-477927.c:27: UNUSED(ignored);
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-477927.c:28: }
;	genEndFunction
	ret
;	Total spoil function size at codegen: 4 bytes.
;cases/./../tests/bug-477927.c:37: testLoopInit(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testLoopInit
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testLoopInit::
;cases/./../tests/bug-477927.c:41: do {
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genLabel
00103$:
;cases/./../tests/bug-477927.c:42: r = randish();
;	genCall
	push	bc
	call	_randish
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;cases/./../tests/bug-477927.c:44: if(r != 1) {
;	genCmpEq
	cp	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00124$.
;	skipping generated iCode
;cases/./../tests/bug-477927.c:45: t = ++accu[r];
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_accu
	add	hl, de
;	genPointerGet
;	genPlus
;	genPointerSet
	inc	(hl)
	ld	c, (hl)
; common peephole 104b inc (hl) directly to remove redundant load from c into (hl)
;	genAssign
;	(locations are the same)
;cases/./../tests/bug-477927.c:46: spoil(t);
;	genLabel
00104$:
;cases/./../tests/bug-477927.c:49: while(t != 3);
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00125$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00126$.
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/bug-477927.c:50: }
;	genEndFunction
	ret
;	Total testLoopInit function size at codegen: 1 bytes.
;cases/tst_bug-477927.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-477927.c:6: __prints("Running testLoopInit\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_bug-477927.c:7: testLoopInit();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-477927.c:8: }
;	genEndFunction
	jp	_testLoopInit
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testLoopInit"
	.db 0x0a
	.db 0x00
;cases/tst_bug-477927.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-477927.c:15: return "bug-477927.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-477927.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-477927.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
