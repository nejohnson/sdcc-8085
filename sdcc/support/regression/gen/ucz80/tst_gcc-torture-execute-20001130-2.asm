;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20001130_2
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
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
_which_alternative:
	.ds 2
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
;cases/./../tests/gcc-torture-execute-20001130-2.c:16: output_25 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function output_25
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_output_25:
;cases/./../tests/gcc-torture-execute-20001130-2.c:18: switch (which_alternative)
;	genIfx
	ld	a, (_which_alternative+1)
	ld	iy, #_which_alternative
	or	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00101$
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_which_alternative+0)
	dec	a
	or	a, 1 (iy)
	jp	z, _i960_output_ldconst
; common peephole 84 jumped to _i960_output_ldconst directly instead of via 00102$.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00140$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_which_alternative+0)
	sub	a, #0x02
	or	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00141$.
;	skipping generated iCode
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_which_alternative+0)
	sub	a, #0x03
	or	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00142$.
;	skipping generated iCode
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-20001130-2.c:20: case 0:
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-20001130-2.c:21: return "mov	%1,%0";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20001130-2.c:22: case 1:
;	genLabel
;cases/./../tests/gcc-torture-execute-20001130-2.c:23: return i960_output_ldconst ();
;	genCall
; common peephole 87b removed unreachable jump to _i960_output_ldconst
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_0
	ret
; common peephole 160 replaced jump by return.
; common peephole 87a removed unreachable jump to 00106$
;cases/./../tests/gcc-torture-execute-20001130-2.c:24: case 2:
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-20001130-2.c:25: return "ld	%1,%0";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-20001130-2.c:26: case 3:
;	genLabel
00104$:
;cases/./../tests/gcc-torture-execute-20001130-2.c:27: return "st	%1,%0";      
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;cases/./../tests/gcc-torture-execute-20001130-2.c:28: }
;	genLabel
; common peephole 159 removed unused label 00106$.
;cases/./../tests/gcc-torture-execute-20001130-2.c:29: }
;	genEndFunction
	ret
;	Total output_25 function size at codegen: 1 bytes.
___str_0:
	.ascii "mov"
	.db 0x09
	.ascii "%1,%0"
	.db 0x00
___str_1:
	.ascii "ld"
	.db 0x09
	.ascii "%1,%0"
	.db 0x00
___str_2:
	.ascii "st"
	.db 0x09
	.ascii "%1,%0"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20001130-2.c:31: static const char *i960_output_ldconst (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function i960_output_ldconst
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_i960_output_ldconst:
;cases/./../tests/gcc-torture-execute-20001130-2.c:33: return "foo";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20001130-2.c:34: }
;	genEndFunction
	ret
;	Total i960_output_ldconst function size at codegen: 1 bytes.
___str_3:
	.ascii "foo"
	.db 0x00
;cases/./../tests/gcc-torture-execute-20001130-2.c:37: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20001130-2.c:39: const char *s = output_25 () ;
;	genCall
	call	_output_25
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20001130-2.c:40: if (s[0] != 's')
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x73
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00113$.
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-20001130-2.c:41: ASSERT (0);
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
	ld	hl, #0x0029
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_6
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_4
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00102$.
;cases/./../tests/gcc-torture-execute-20001130-2.c:42: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/./../tests/gcc-torture-execute-20001130-2.c:43: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
__str_4:
	.ascii "Assertion failed"
	.db 0x00
__str_5:
	.ascii "0"
	.db 0x00
__str_6:
	.ascii "cases/./../tests/gcc-torture-execute-20001130-2.c"
	.db 0x00
;cases/tst_gcc-torture-execute-20001130-2.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20001130-2.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20001130-2.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20001130-2.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_7:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20001130-2.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20001130-2.c:15: return "gcc-torture-execute-20001130-2.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20001130-2.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_8:
	.ascii "gcc-torture-execute-20001130-2.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__which_alternative:
	.dw #0x0003
	.area _CABS (ABS)
