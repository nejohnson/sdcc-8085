;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2554
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _testOr
	.globl _fail
	.globl ___prints
	.globl _numTests
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
_numTests::
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
;cases/./../tests/bug-2554.c:12: void fail(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function fail
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fail::
;cases/./../tests/bug-2554.c:14: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total fail function size at codegen: 1 bytes.
;cases/./../tests/bug-2554.c:16: static inline uint16_t llvm_add_u16(uint16_t a, uint16_t b) {
;	genLabel
;	genFunction
;	---------------------------------
; Function llvm_add_u16
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_llvm_add_u16:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2554.c:17: uint16_t r = a + b;
;	genPlus
	add	hl, de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2554.c:18: return r;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2554.c:19: }
;	genEndFunction
	ret
;	Total llvm_add_u16 function size at codegen: 1 bytes.
;cases/./../tests/bug-2554.c:21: static inline uint16_t llvm_or_u16(uint16_t a, uint16_t b) {
;	genLabel
;	genFunction
;	---------------------------------
; Function llvm_or_u16
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_llvm_or_u16:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2554.c:22: uint16_t r = a | b;
;	genOr
	or	a, e
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, h
	or	a, d
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug-2554.c:23: return r;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2554.c:24: }
;	genEndFunction
	ret
;	Total llvm_or_u16 function size at codegen: 1 bytes.
;cases/./../tests/bug-2554.c:26: void testOr(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function testOr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_testOr::
;	adjustStack by -2
	push	af
;cases/./../tests/bug-2554.c:43: llvm_cbe_tmp__88 = numTests;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_numTests)
;cases/./../tests/bug-2554.c:17: uint16_t r = a + b;
;	genPlus
	inc	bc
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_numTests), bc
;cases/./../tests/bug-2554.c:51: llvm_cbe_tmp__90 = *((volatile uint16_t*)&llvm_cbe_a);
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/./../tests/bug-2554.c:63: llvm_cbe_tmp__91 = numTests;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, (_numTests)
;cases/./../tests/bug-2554.c:17: uint16_t r = a + b;
;	genPlus
	inc	bc
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_numTests), bc
;cases/./../tests/bug-2554.c:72: llvm_cbe_tmp__93 = *((volatile uint16_t*)&llvm_cbe_a);
;	genPointerGet
;fetchPairLong
	ld	l, e
	ld	h, d
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/./../tests/bug-2554.c:80: llvm_cbe_tmp__94 = numTests;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, (_numTests)
;cases/./../tests/bug-2554.c:17: uint16_t r = a + b;
;	genPlus
	inc	bc
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_numTests), bc
;cases/./../tests/bug-2554.c:89: llvm_cbe_tmp__96 = *((volatile uint16_t*)&llvm_cbe_a);
;	genPointerGet
;fetchPairLong
; common peephole 157 used ex to load de into hl.
	ex	de, hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
;cases/./../tests/bug-2554.c:97: llvm_cbe_tmp__97 = numTests;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_numTests)
;cases/./../tests/bug-2554.c:17: uint16_t r = a + b;
;	genPlus
	inc	bc
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_numTests), bc
;cases/./../tests/bug-2554.c:107: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00129$.
;cases/./../tests/bug-2554.c:109: }
;	genEndFunction
;	adjustStack by 2
	pop	af
	ret
;	Total testOr function size at codegen: 2 bytes.
;cases/./../tests/bug-2554.c:111: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2554.c:113: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-2554.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2554.c:6: __prints("Running testOr\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_bug-2554.c:7: testOr();
;	genCall
	call	_testOr
;cases/tst_bug-2554.c:8: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
;cases/tst_bug-2554.c:9: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2554.c:10: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testOr"
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2554.c:15: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2554.c:17: return "bug-2554.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2554.c:18: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_2:
	.ascii "bug-2554.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
