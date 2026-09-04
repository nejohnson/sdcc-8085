;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr90949
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _walk
	.globl _my_malloc
	.globl _my_free
	.globl _my_puts
	.globl ___prints
	.globl _space
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
_space::
	.ds 4
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
;cases/./../tests/gcc-torture-execute-pr90949.c:11: void my_puts (const char *str) { }
;	genLabel
;	genFunction
;	---------------------------------
; Function my_puts
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_my_puts::
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total my_puts function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr90949.c:13: void my_free (void *p) { }
;	genLabel
;	genFunction
;	---------------------------------
; Function my_free
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_my_free::
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total my_free function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr90949.c:23: struct Node *my_malloc (int bytes)
;	genLabel
;	genFunction
;	---------------------------------
; Function my_malloc
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_my_malloc::
;cases/./../tests/gcc-torture-execute-pr90949.c:25: return &space[0];
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_space
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr90949.c:26: }
;	genEndFunction
	ret
;	Total my_malloc function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr90949.c:29: walk (struct Node *module, int cleanup)
;	genLabel
;	genFunction
;	---------------------------------
; Function walk
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_walk::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr90949.c:31: if (module == 0)
;	genIfx
	ld	a, h
	or	a, l
;cases/./../tests/gcc-torture-execute-pr90949.c:33: return;
;	genRet
;cases/./../tests/gcc-torture-execute-pr90949.c:37: my_puts ("No cleanup");
;	genLabel
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-pr90949.c:39: walk (module->child, cleanup);
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
;cases/./../tests/gcc-torture-execute-pr90949.c:42: my_free (module);
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/gcc-torture-execute-pr90949.c:44: }
;	genEndFunction
; common peephole 162 changed absolute to relative unconditional jump.
	jr	_walk
; common peephole 152 removed unused ret.
;	Total walk function size at codegen: 7 bytes.
;cases/./../tests/gcc-torture-execute-pr90949.c:47: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr90949.c:49: struct Node *node = my_malloc (sizeof (struct Node));
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0002
;	genCall
	call	_my_malloc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr90949.c:50: node->child = 0;
;	genPointerSet
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
	dec	hl
;cases/./../tests/gcc-torture-execute-pr90949.c:51: walk (node, 1);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-pr90949.c:52: }
;	genEndFunction
	jp	_walk
; common peephole 152 removed unused ret.
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-pr90949.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr90949.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_1
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr90949.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr90949.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_1:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr90949.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr90949.c:15: return "gcc-torture-execute-pr90949.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_2
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr90949.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_2:
	.ascii "gcc-torture-execute-pr90949.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__space:
	.dw #0x0000
	.db 0x00
	.db 0x00
	.area _CABS (ABS)
