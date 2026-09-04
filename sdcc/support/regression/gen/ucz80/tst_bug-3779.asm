;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3779
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _m
	.globl ___prints
	.globl ___fail
	.globl _reg
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
_state:
	.ds 3
_glob_var:
	.ds 1
_reg::
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
;cases/./../tests/bug-3779.c:20: void m(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function m
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_m::
;cases/./../tests/bug-3779.c:22: state.b = 0;
;	skipping iCode since result will be rematerialized
;	genPlus
	ld	bc, #_state + 2
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(bc), a
;cases/./../tests/bug-3779.c:24: if (glob_var) {
;	genIfx
	ld	a, (_glob_var+0)
	or	a, a
	ret	z
; common peephole 161 replaced jump by return.
;cases/./../tests/bug-3779.c:26: state.a += 1;
;	skipping iCode since result will be rematerialized
;cases/./../tests/bug-3779.c:25: if (glob_var) {
;	genIfx
	ld	a, (_glob_var+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;cases/./../tests/bug-3779.c:26: state.a += 1;
;	genPointerGet
	ld	hl, (#_state + 0)
;	genCast
;	(locations are the same)
;	genPlus
	inc	hl
;	genCast
;	(locations are the same)
;	genPointerSet
	ld	(_state), hl
;	genLabel
00102$:
;cases/./../tests/bug-3779.c:28: if (glob_var) {
;	genIfx
	ld	a, (_glob_var+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;cases/./../tests/bug-3779.c:29: state.b = 0;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(bc), a
;	genLabel
00104$:
;cases/./../tests/bug-3779.c:32: unsigned char foo = state.a >> 1;
;	genPointerGet
	ld	hl, (#_state + 0)
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	srl	h
	rr	a
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-3779.c:33: foo -= reg;
;	genMinus
;	Shift into pair
	ld	hl, #_reg
	sub	a, (hl)
	ld	(hl), a
;cases/./../tests/bug-3779.c:34: reg = foo;
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/bug-3779.c:36: }
;	genEndFunction
	ret
;	Total m function size at codegen: 4 bytes.
;cases/./../tests/bug-3779.c:38: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3779.c:40: reg = 0x00;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_reg), a
; common peephole 19 loaded (#_reg) from a directly instead of using hl.
;cases/./../tests/bug-3779.c:41: glob_var = 1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_glob_var
	ld	(hl), #0x01
;cases/./../tests/bug-3779.c:42: state.a = 1;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;fetchPairLong
	ld	hl, #0x0001
	ld	(_state), hl
;cases/./../tests/bug-3779.c:43: m();
;	genCall
	call	_m
;cases/./../tests/bug-3779.c:44: ASSERT(reg == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_reg)
	dec	a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002c
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-3779.c:45: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "reg == 1"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug-3779.c"
	.db 0x00
;cases/tst_bug-3779.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3779.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_bug-3779.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3779.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3779.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3779.c:15: return "bug-3779.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3779.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bug-3779.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
