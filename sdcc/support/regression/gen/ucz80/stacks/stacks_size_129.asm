;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module stacks_size_129
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testStack
	.globl _spoilPtr
	.globl _spoil
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
;cases/stacks/stacks_size_129.c:7: spoil(char a)
;	genLabel
;	genFunction
;	---------------------------------
; Function spoil
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_spoil::
;cases/stacks/stacks_size_129.c:9: UNUSED(a);
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/stacks/stacks_size_129.c:10: }
;	genEndFunction
	ret
;	Total spoil function size at codegen: 1 bytes.
;cases/stacks/stacks_size_129.c:13: spoilPtr(volatile char *p)
;	genLabel
;	genFunction
;	---------------------------------
; Function spoilPtr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_spoilPtr::
;cases/stacks/stacks_size_129.c:15: UNUSED(p);
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/stacks/stacks_size_129.c:16: }
;	genEndFunction
	ret
;	Total spoilPtr function size at codegen: 1 bytes.
;cases/stacks/stacks_size_129.c:19: testStack(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testStack
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 134 bytes.
_testStack::
;	adjustStack by -134
	ld	hl, #-134
	add	hl, sp
	ld	sp, hl
;cases/stacks/stacks_size_129.c:32: spoil(ac[0]);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1 result type 14 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
; common peephole 7 removed dead load from 0 (iy) into a.
;cases/stacks/stacks_size_129.c:36: p = &above2;
;	genAddrOf
	ld	hl, #1
	add	hl, sp
	ex	de, hl
;	genCast
;	genMove_o size 2 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #132
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/stacks/stacks_size_129.c:37: spoilPtr(p);
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/stacks/stacks_size_129.c:38: }
;	genEndFunction
;	adjustStack by 134
	ld	hl, #134
	add	hl, sp
	ld	sp, hl
	ret
;	Total testStack function size at codegen: 6 bytes.
;cases/stacks/stacks_size_129.c:41: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/stacks/stacks_size_129.c:43: __prints("Running testStack\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/stacks/stacks_size_129.c:44: testStack();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/stacks/stacks_size_129.c:45: }
;	genEndFunction
	jp	_testStack
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testStack"
	.db 0x0a
	.db 0x00
;cases/stacks/stacks_size_129.c:50: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/stacks/stacks_size_129.c:52: return "stacks_size_129";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/stacks/stacks_size_129.c:53: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "stacks_size_129"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
