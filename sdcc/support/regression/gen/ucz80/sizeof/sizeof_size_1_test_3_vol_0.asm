;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module sizeof_size_1_test_3_vol_0
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___prints
	.globl _pi
	.globl _pc
	.globl _pb
	.globl _it
	.globl _i2
	.globl _i
	.globl _ct
	.globl _c2
	.globl _c
	.globl _bt
	.globl _b
	.globl _bf
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
_bf::
	.ds 1
_b::
	.ds 1
_bt::
	.ds 1
_c::
	.ds 1
_c2::
	.ds 1
_ct::
	.ds 1
_i::
	.ds 2
_i2::
	.ds 2
_it::
	.ds 2
_pb::
	.ds 2
_pc::
	.ds 2
_pi::
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
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:151: testSizeof(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSizeof
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testSizeof:
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:250: TEST_OP (!8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:251: TEST_OP (!0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:253: TEST_OP (8 > 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:254: TEST_OP (8 < 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:255: TEST_OP (8 >= 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:256: TEST_OP (8 <= 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:257: TEST_OP (8 == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:258: TEST_OP (8 != 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:260: TEST_OP (1 > 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:261: TEST_OP (1 < 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:262: TEST_OP (1 >= 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:263: TEST_OP (1 <= 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:264: TEST_OP (1 == 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:265: TEST_OP (1 != 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:268: TEST_OP (1 && 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:269: TEST_OP (1 && 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:270: TEST_OP (0 && 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:272: TEST_OP (1 || 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:273: TEST_OP (1 || 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:274: TEST_OP (0 || 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_c2
	ld	(hl), #0x02
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:389: }
;	genEndFunction
	ret
;	Total testSizeof function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "(c2 = sizeof (!8), sizeof (int) == c2)"
	.db 0x00
___str_2:
	.ascii "cases/sizeof/sizeof_size_1_test_3_vol_0.c"
	.db 0x00
___str_3:
	.ascii "(c2 = sizeof (!0), sizeof (int) == c2)"
	.db 0x00
___str_4:
	.ascii "(c2 = sizeof (8 > 1), sizeof (int) == c2)"
	.db 0x00
___str_5:
	.ascii "(c2 = sizeof (8 < 1), sizeof (int) == c2)"
	.db 0x00
___str_6:
	.ascii "(c2 = sizeof (8 >= 1), sizeof (int) == c2)"
	.db 0x00
___str_7:
	.ascii "(c2 = sizeof (8 <= 1), sizeof (int) == c2)"
	.db 0x00
___str_8:
	.ascii "(c2 = sizeof (8 == 1), sizeof (int) == c2)"
	.db 0x00
___str_9:
	.ascii "(c2 = sizeof (8 != 1), sizeof (int) == c2)"
	.db 0x00
___str_10:
	.ascii "(c2 = sizeof (1 > 8), sizeof (int) == c2)"
	.db 0x00
___str_11:
	.ascii "(c2 = sizeof (1 < 8), sizeof (int) == c2)"
	.db 0x00
___str_12:
	.ascii "(c2 = sizeof (1 >= 8), sizeof (int) == c2)"
	.db 0x00
___str_13:
	.ascii "(c2 = sizeof (1 <= 8), sizeof (int) == c2)"
	.db 0x00
___str_14:
	.ascii "(c2 = sizeof (1 == 8), sizeof (int) == c2)"
	.db 0x00
___str_15:
	.ascii "(c2 = sizeof (1 != 8), sizeof (int) == c2)"
	.db 0x00
___str_16:
	.ascii "(c2 = sizeof (1 && 1), sizeof (int) == c2)"
	.db 0x00
___str_17:
	.ascii "(c2 = sizeof (1 && 0), sizeof (int) == c2)"
	.db 0x00
___str_18:
	.ascii "(c2 = sizeof (0 && 0), sizeof (int) == c2)"
	.db 0x00
___str_19:
	.ascii "(c2 = sizeof (1 || 1), sizeof (int) == c2)"
	.db 0x00
___str_20:
	.ascii "(c2 = sizeof (1 || 0), sizeof (int) == c2)"
	.db 0x00
___str_21:
	.ascii "(c2 = sizeof (0 || 0), sizeof (int) == c2)"
	.db 0x00
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:393: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:395: __prints("Running testSizeof\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_22
;	genCall
	call	___prints
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:396: testSizeof();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:397: }
;	genEndFunction
	jp	_testSizeof
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_22:
	.ascii "Running testSizeof"
	.db 0x0a
	.db 0x00
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:402: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:404: return "sizeof_size_1_test_3_vol_0";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_23
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/sizeof/sizeof_size_1_test_3_vol_0.c:405: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_23:
	.ascii "sizeof_size_1_test_3_vol_0"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
