;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_scott_struct1
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testStruct1
	.globl _add_chars
	.globl _struct_test
	.globl ___prints
	.globl ___fail
	.globl _acharP
	.globl _achar1
	.globl _achar0
	.globl _aint1
	.globl _aint0
	.globl _struct1
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
_struct1::
	.ds 6
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_aint0::
	.ds 2
_aint1::
	.ds 2
_achar0::
	.ds 1
_achar1::
	.ds 1
_acharP::
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
;cases/./../tests/scott-struct1.c:47: struct_test (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function struct_test
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_struct_test::
;cases/./../tests/scott-struct1.c:50: ASSERT (!(struct1.c0 || struct1.c1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #_struct1
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00106$
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	a, (#_struct1 + 1)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
;	genLabel
00106$:
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0032
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
	pop	bc
;	genLabel
00104$:
;cases/./../tests/scott-struct1.c:52: struct1.c0++;
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	inc	a
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/./../tests/scott-struct1.c:54: ASSERT (!(struct1.c0 != 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x01
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00129$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0036
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_3
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-struct1.c:55: }
;	genEndFunction
	ret
;	Total struct_test function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "!(struct1.c0 || struct1.c1)"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/scott-struct1.c"
	.db 0x00
___str_3:
	.ascii "!(struct1.c0 != 1)"
	.db 0x00
;cases/./../tests/scott-struct1.c:57: void add_chars(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function add_chars
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_add_chars::
;cases/./../tests/scott-struct1.c:60: achar0 = struct1.c0 + struct1.c1;
;	genAddrOf
	ld	hl, #_struct1+0
;	genPointerGet
	ld	a, (hl)
;	genAssign
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	inc	hl
;	_moveFrom_tpair_()
;	genPlus
; common peephole 22a used (hl) in add directly instead of going through c.
	add	a, (hl)
	ld	(#_achar0), a
; common peephole 19 loaded (#_achar0) from a directly instead of using hl.
;cases/./../tests/scott-struct1.c:62: ASSERT(!(achar0 != 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_achar0)
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
	ld	hl, #0x003e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_6
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-struct1.c:63: }
;	genEndFunction
	ret
;	Total add_chars function size at codegen: 1 bytes.
___str_4:
	.ascii "Assertion failed"
	.db 0x00
___str_5:
	.ascii "!(achar0 != 1)"
	.db 0x00
___str_6:
	.ascii "cases/./../tests/scott-struct1.c"
	.db 0x00
;cases/./../tests/scott-struct1.c:66: testStruct1 (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testStruct1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testStruct1::
;cases/./../tests/scott-struct1.c:70: struct1.c0 = 0;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #_struct1
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(bc), a
;cases/./../tests/scott-struct1.c:71: struct1.c1 = 0;
;	genPlus
	ld	hl, #_struct1 + 1
;	genPointerSet
	ld	(hl), #0x00
;cases/./../tests/scott-struct1.c:72: struct_test ();
;	genCall
	push	hl
	push	bc
	call	_struct_test
	pop	bc
	pop	hl
;cases/./../tests/scott-struct1.c:75: struct1.c0 = 0;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(bc), a
;cases/./../tests/scott-struct1.c:76: struct1.c1 = 1;
;	genPointerSet
	ld	(hl), #0x01
;cases/./../tests/scott-struct1.c:77: add_chars();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/scott-struct1.c:78: }
;	genEndFunction
	jp	_add_chars
; common peephole 152 removed unused ret.
;	Total testStruct1 function size at codegen: 1 bytes.
;cases/tst_scott-struct1.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_scott-struct1.c:6: __prints("Running testStruct1\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
	call	___prints
;cases/tst_scott-struct1.c:7: testStruct1();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-struct1.c:8: }
;	genEndFunction
	jp	_testStruct1
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_7:
	.ascii "Running testStruct1"
	.db 0x0a
	.db 0x00
;cases/tst_scott-struct1.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_scott-struct1.c:15: return "scott-struct1.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_scott-struct1.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_8:
	.ascii "scott-struct1.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__aint0:
	.dw #0x0000
__xinit__aint1:
	.dw #0x0000
__xinit__achar0:
	.db #0x00	; 0
__xinit__achar1:
	.db #0x00	; 0
__xinit__acharP:
	.dw #0x0000
	.area _CABS (ABS)
