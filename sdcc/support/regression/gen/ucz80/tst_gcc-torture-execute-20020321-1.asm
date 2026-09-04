;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20020321_1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _f
	.globl _g
	.globl ___prints
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
;cases/./../tests/gcc-torture-execute-20020321-1.c:18: float g (void *a, void *b, int e, int c, float d)
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g::
;cases/./../tests/gcc-torture-execute-20020321-1.c:20: return d;
;	genRet
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #6
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20020321-1.c:21: }
;	genEndFunction
	ret
;	Total g function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20020321-1.c:23: float f (void *a, void *b, int c, float d)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_f::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020321-1.c:25: return g (a, b, 0, c, d);
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #4
	add	iy, sp
	ld	c, 2 (iy)
	ld	b, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 0 (iy)
	ld	b, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
; common peephole 179 moved decrement of iy after ld instruction
; common peephole 179 moved decrement of iy after ld instruction
	ld	c, -2 (iy)
; common peephole 179 moved decrement of iy after ld instruction
; common peephole 179 moved decrement of iy after ld instruction
	ld	b, -1 (iy)
; common peephole 2c removed dec iy due to unused result.
; common peephole 2c removed dec iy due to unused result.
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_g
;	adjustStack by 8
	pop	af
	pop	af
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20020321-1.c:26: }
;	genEndFunction
	ret
;	Total f function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20020321-1.c:29: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20020321-1.c:32: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20020321-1.c:33: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-20020321-1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20020321-1.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_gcc-torture-execute-20020321-1.c:7: testTortureExecute();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020321-1.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20020321-1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20020321-1.c:15: return "gcc-torture-execute-20020321-1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020321-1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "gcc-torture-execute-20020321-1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
