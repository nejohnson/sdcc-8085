;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module iobit_pin_5
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _bar0
	.globl _bar1
	.globl _foo_b
	.globl _foo_a
	.globl ___prints
	.globl ___numCases
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_PORT	=	0x0010
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_foo_a_cnt_10000_13:
	.ds 1
_foo_b_cnt_10000_15:
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
;cases/iobit/iobit_pin_5.c:19: void foo_a(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function foo_a
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_foo_a::
;cases/iobit/iobit_pin_5.c:21: PORT = (cnt++ & 5) ? (PORT | (1<<PIN)) : (PORT & ~(1<<PIN));
;	genAssign
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_foo_a_cnt_10000_13)
	ld	c, a
;	genPlus
	ld	hl, #_foo_a_cnt_10000_13
	inc	(hl)
;	genAnd
	ld	a, c
	and	a, #0x05
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	genOr
;	genMove_o size 1 result type 2 source type 5 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	in	a, (_PORT)
	set	5, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	genAnd
	in	a, (_PORT)
	and	a, #0xdf
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00104$:
;	genAssign
	out	(_PORT), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iobit/iobit_pin_5.c:22: }
;	genEndFunction
	ret
;	Total foo_a function size at codegen: 4 bytes.
;cases/iobit/iobit_pin_5.c:24: void foo_b(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function foo_b
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_foo_b::
;cases/iobit/iobit_pin_5.c:26: PORT = (cnt & (1<<5)) ? (PORT | (1<<PIN)) : (PORT & ~(1<<PIN));
;	genAnd
; common peephole 61 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_foo_b_cnt_10000_15
	bit	5, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;	genOr
;	genMove_o size 1 result type 2 source type 5 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	in	a, (_PORT)
	set	5, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	genAnd
	in	a, (_PORT)
	and	a, #0xdf
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00104$:
;	genAssign
	out	(_PORT), a
;cases/iobit/iobit_pin_5.c:27: cnt++;
;	genPlus
	ld	hl, #_foo_b_cnt_10000_15
	inc	(hl)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iobit/iobit_pin_5.c:28: }
;	genEndFunction
	ret
;	Total foo_b function size at codegen: 4 bytes.
;cases/iobit/iobit_pin_5.c:30: void bar1(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function bar1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bar1::
;cases/iobit/iobit_pin_5.c:31: if (PORT & (1 << PIN))
;	genAnd
	in	a, (_PORT)
	and	a, #0x20
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;cases/iobit/iobit_pin_5.c:32: foo_a();
;	genCall
;	genLabel
	jp	nz, _foo_a
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00103$.
;cases/iobit/iobit_pin_5.c:33: }
;	genEndFunction
	ret
;	Total bar1 function size at codegen: 4 bytes.
;cases/iobit/iobit_pin_5.c:35: void bar0(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function bar0
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_bar0::
;cases/iobit/iobit_pin_5.c:36: if (!(PORT & (1 << PIN)))
;	genAnd
	in	a, (_PORT)
	and	a, #0x20
	jp	z, _foo_a
; common peephole 84 jumped to _foo_a directly instead of via 00114$.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;cases/iobit/iobit_pin_5.c:37: foo_a();
;	genCall
; common peephole 87b removed unreachable jump to _foo_a
;	genLabel
; common peephole 85a eliminated jump.
; common peephole 159 removed unused label 00103$.
;cases/iobit/iobit_pin_5.c:38: }
;	genEndFunction
	ret
;	Total bar0 function size at codegen: 4 bytes.
;cases/iobit/iobit_pin_5.c:41: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/iobit/iobit_pin_5.c:43: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 4 bytes.
;cases/iobit/iobit_pin_5.c:47: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/iobit/iobit_pin_5.c:49: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/iobit/iobit_pin_5.c:50: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iobit/iobit_pin_5.c:51: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/iobit/iobit_pin_5.c:56: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/iobit/iobit_pin_5.c:58: return "iobit_pin_5";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/iobit/iobit_pin_5.c:59: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "iobit_pin_5"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
