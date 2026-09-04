;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_2687
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
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
;cases/./../tests/bug-2687.c:13: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-2687.c:15: ASSERT(0x7fffu == (unsigned int)(0x7fff));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2687.c:16: ASSERT(TYPEOF(0x7fffu) == TYPE_UINT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2687.c:17: ASSERT(0xffffu == (unsigned int)(0xffff));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2687.c:18: ASSERT(TYPEOF(0xffffu) == TYPE_UINT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2687.c:20: ASSERT(0x7fffffffu == (unsigned long)(0x7fffffff));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2687.c:21: ASSERT(TYPEOF(0x7fffffffu) == TYPE_ULONG || TYPEOF(0x7fffffffu) == TYPE_UINT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2687.c:22: ASSERT(0xffffffffu == (unsigned long)(0xffffffff));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2687.c:23: ASSERT(TYPEOF(0xffffffffu) == TYPE_ULONG || TYPEOF(0xffffffffu) == TYPE_UINT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2687.c:25: ASSERT(0x7fffffffffffffffu == (unsigned long long)(0x7fffffffffffffff));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2687.c:26: ASSERT(TYPEOF(0x7fffffffffffffffu) == TYPE_ULONGLONG || TYPEOF(0x7fffffffffffffffu) == TYPE_ULONG || TYPEOF(0x7fffffffffffffffu) == TYPE_UINT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2687.c:27: ASSERT(0xffffffffffffffffu == (unsigned long long)(0xffffffffffffffff));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug-2687.c:28: ASSERT(TYPEOF(0xffffffffffffffffu) == TYPE_ULONGLONG || TYPEOF(0xffffffffffffffffu) == TYPE_ULONG || TYPEOF(0xffffffffffffffffu) == TYPE_UINT);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug-2687.c:29: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0x7fffu == (unsigned int)(0x7fff)"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/bug-2687.c"
	.db 0x00
__str_3:
	.ascii "TYPEOF(0x7fffu) == TYPE_UINT"
	.db 0x00
__str_4:
	.ascii "0xffffu == (unsigned int)(0xffff)"
	.db 0x00
__str_5:
	.ascii "TYPEOF(0xffffu) == TYPE_UINT"
	.db 0x00
__str_6:
	.ascii "0x7fffffffu == (unsigned long)(0x7fffffff)"
	.db 0x00
__str_7:
	.ascii "TYPEOF(0x7fffffffu) == TYPE_ULONG || TYPEOF(0x7fffffffu) == "
	.ascii "TYPE_UINT"
	.db 0x00
__str_8:
	.ascii "0xffffffffu == (unsigned long)(0xffffffff)"
	.db 0x00
__str_9:
	.ascii "TYPEOF(0xffffffffu) == TYPE_ULONG || TYPEOF(0xffffffffu) == "
	.ascii "TYPE_UINT"
	.db 0x00
__str_10:
	.ascii "0x7fffffffffffffffu == (unsigned long long)(0x7fffffffffffff"
	.ascii "ff)"
	.db 0x00
__str_11:
	.ascii "TYPEOF(0x7fffffffffffffffu) == TYPE_ULONGLONG || TYPEOF(0x7f"
	.ascii "ffffffffffffffu) == TYPE_ULONG || TYPEOF(0x7fffffffffffffffu"
	.ascii ") == TYPE_UINT"
	.db 0x00
__str_12:
	.ascii "0xffffffffffffffffu == (unsigned long long)(0xffffffffffffff"
	.ascii "ff)"
	.db 0x00
__str_13:
	.ascii "TYPEOF(0xffffffffffffffffu) == TYPE_ULONGLONG || TYPEOF(0xff"
	.ascii "ffffffffffffffu) == TYPE_ULONG || TYPEOF(0xffffffffffffffffu"
	.ascii ") == TYPE_UINT"
	.db 0x00
;cases/tst_bug-2687.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-2687.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_14
;	genCall
	call	___prints
;cases/tst_bug-2687.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2687.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_14:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-2687.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-2687.c:15: return "bug-2687.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-2687.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_15:
	.ascii "bug-2687.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
