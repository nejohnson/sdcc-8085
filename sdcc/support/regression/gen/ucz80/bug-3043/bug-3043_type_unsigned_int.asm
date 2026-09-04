;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bug_3043_type_unsigned_int
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _fl
	.globl _fr
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
;cases/bug-3043/bug-3043_type_unsigned_int.c:9: void g(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function g
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g::
;cases/bug-3043/bug-3043_type_unsigned_int.c:11: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total g function size at codegen: 1 bytes.
;cases/bug-3043/bug-3043_type_unsigned_int.c:13: void fr(unsigned int x)
;	genLabel
;	genFunction
;	---------------------------------
; Function fr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fr::
;cases/bug-3043/bug-3043_type_unsigned_int.c:16: g();
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/bug-3043/bug-3043_type_unsigned_int.c:17: }
;	genEndFunction
	ret
;	Total fr function size at codegen: 1 bytes.
;cases/bug-3043/bug-3043_type_unsigned_int.c:19: void fl(unsigned int x)
;	genLabel
;	genFunction
;	---------------------------------
; Function fl
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fl::
;cases/bug-3043/bug-3043_type_unsigned_int.c:22: g();
;	genLabel
; common peephole 159 removed unused label 00103$.
;cases/bug-3043/bug-3043_type_unsigned_int.c:23: }
;	genEndFunction
	ret
;	Total fl function size at codegen: 1 bytes.
;cases/bug-3043/bug-3043_type_unsigned_int.c:25: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 1 bytes.
_testBug::
;	adjustStack by -1
	dec	sp
;cases/bug-3043/bug-3043_type_unsigned_int.c:27: volatile _Bool b = 0;
;	genAssign
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;cases/bug-3043/bug-3043_type_unsigned_int.c:29: if (b)
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
;cases/bug-3043/bug-3043_type_unsigned_int.c:31: if (b)
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
;cases/bug-3043/bug-3043_type_unsigned_int.c:32: fl(i);
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/bug-3043/bug-3043_type_unsigned_int.c:33: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total testBug function size at codegen: 2 bytes.
;cases/bug-3043/bug-3043_type_unsigned_int.c:37: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bug-3043/bug-3043_type_unsigned_int.c:39: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/bug-3043/bug-3043_type_unsigned_int.c:40: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3043/bug-3043_type_unsigned_int.c:41: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/bug-3043/bug-3043_type_unsigned_int.c:46: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bug-3043/bug-3043_type_unsigned_int.c:48: return "bug-3043_type_unsigned_int";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3043/bug-3043_type_unsigned_int.c:49: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3043_type_unsigned_int"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
