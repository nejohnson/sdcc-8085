;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module sizeof_size_8_test_0_vol_0
	
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
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:151: testSizeof(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSizeof
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testSizeof:
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:156: TEST_OP_NOPROMO (VAR_TYPE);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:157: TEST_OP_CHAR_PTR (VAR_TYPE *);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:158: TEST_OP_INT_PTR (VAR_TYPE *);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:166: TEST_OP_NOPROMO (TEST_VAR = 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:167: TEST_OP_NOPROMO (TEST_VAR = 1 + 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:169: TEST_OP_NOPROMO (TEST_VAR += 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:170: TEST_OP_NOPROMO (TEST_VAR -= 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:171: TEST_OP_NOPROMO (TEST_VAR &= 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:172: TEST_OP_NOPROMO (TEST_VAR |= 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:173: TEST_OP_NOPROMO (TEST_VAR ^= 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:174: TEST_OP_NOPROMO (TEST_VAR *= 5);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:175: TEST_OP_NOPROMO (TEST_VAR /= 5);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:176: TEST_OP_NOPROMO (TEST_VAR /= 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:178: TEST_OP_NOPROMO (TEST_VAR <<= 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:179: TEST_OP_NOPROMO (TEST_VAR >>= 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:181: TEST_OP_NOPROMO ((TEST_VAR_OTHER++, TEST_VAR += 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:188: TEST_OP_CHAR_PTR(VAR_TYPE *);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:189: TEST_OP_INT_PTR (VAR_TYPE *);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:191: TEST_OP (+(*TEST_PTR_VAR));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:192: TEST_OP (-(*TEST_PTR_VAR));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:193: TEST_OP (~(*TEST_PTR_VAR));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:195: TEST_OP_CHAR_PTR(TEST_PTR_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:196: TEST_OP_INT_PTR (TEST_PTR_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:198: TEST_OP_CHAR_PTR(TEST_PTR_VAR + 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:199: TEST_OP_INT_PTR (TEST_PTR_VAR + 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:201: TEST_OP_CHAR_PTR(TEST_PTR_VAR - 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:202: TEST_OP_INT_PTR (TEST_PTR_VAR - 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:204: TEST_OP_CHAR_PTR(TEST_PTR_VAR++);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:205: TEST_OP_INT_PTR (TEST_PTR_VAR--);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:207: TEST_OP_CHAR_PTR(TEST_PTR_VAR += 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:208: TEST_OP_INT_PTR (TEST_PTR_VAR -= 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:210: TEST_OP_CHAR_PTR(TEST_PTR_VAR = (void *)1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:211: TEST_OP_INT_PTR (TEST_PTR_VAR = (void *)1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:213: TEST_OP_CHAR_PTR_DAS(&TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:214: TEST_OP_INT_PTR_DAS (&TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:216: TEST_OP_CHAR_PTR_DAS(&TEST_VAR + 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:217: TEST_OP_INT_PTR_DAS (&TEST_VAR + 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:218: TEST_OP_CHAR_PTR_DAS(&TEST_VAR - 1);
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
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:219: TEST_OP_INT_PTR_DAS (&TEST_VAR - 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genAssign
;fetchPairLong
	ld	hl, #0x0002
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_i2), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:389: }
;	genEndFunction
	ret
;	Total testSizeof function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "(c2 = sizeof (uint8_t), sizeof (uint8_t) == c2)"
	.db 0x00
___str_2:
	.ascii "cases/sizeof/sizeof_size_8_test_0_vol_0.c"
	.db 0x00
___str_3:
	.ascii "(c2 = sizeof (uint8_t *), sizeof (uint8_t *) == c2)"
	.db 0x00
___str_4:
	.ascii "(i2 = sizeof (uint8_t *), sizeof (uint8_t *) == i2)"
	.db 0x00
___str_5:
	.ascii "(c2 = sizeof (c = 1), sizeof (uint8_t) == c2)"
	.db 0x00
___str_6:
	.ascii "(c2 = sizeof (c = 1 + 1), sizeof (uint8_t) == c2)"
	.db 0x00
___str_7:
	.ascii "(c2 = sizeof (c += 1), sizeof (uint8_t) == c2)"
	.db 0x00
___str_8:
	.ascii "(c2 = sizeof (c -= 1), sizeof (uint8_t) == c2)"
	.db 0x00
___str_9:
	.ascii "(c2 = sizeof (c &= 1), sizeof (uint8_t) == c2)"
	.db 0x00
___str_10:
	.ascii "(c2 = sizeof (c |= 1), sizeof (uint8_t) == c2)"
	.db 0x00
___str_11:
	.ascii "(c2 = sizeof (c ^= 1), sizeof (uint8_t) == c2)"
	.db 0x00
___str_12:
	.ascii "(c2 = sizeof (c *= 5), sizeof (uint8_t) == c2)"
	.db 0x00
___str_13:
	.ascii "(c2 = sizeof (c /= 5), sizeof (uint8_t) == c2)"
	.db 0x00
___str_14:
	.ascii "(c2 = sizeof (c /= 2), sizeof (uint8_t) == c2)"
	.db 0x00
___str_15:
	.ascii "(c2 = sizeof (c <<= 2), sizeof (uint8_t) == c2)"
	.db 0x00
___str_16:
	.ascii "(c2 = sizeof (c >>= 2), sizeof (uint8_t) == c2)"
	.db 0x00
___str_17:
	.ascii "(c2 = sizeof ((i++, c += 1)), sizeof (uint8_t) == c2)"
	.db 0x00
___str_18:
	.ascii "(c2 = sizeof (+(*pc)), sizeof (int) == c2)"
	.db 0x00
___str_19:
	.ascii "(c2 = sizeof (-(*pc)), sizeof (int) == c2)"
	.db 0x00
___str_20:
	.ascii "(c2 = sizeof (~(*pc)), sizeof (int) == c2)"
	.db 0x00
___str_21:
	.ascii "(c2 = sizeof (pc), sizeof (uint8_t *) == c2)"
	.db 0x00
___str_22:
	.ascii "(i2 = sizeof (pc), sizeof (uint8_t *) == i2)"
	.db 0x00
___str_23:
	.ascii "(c2 = sizeof (pc + 1), sizeof (uint8_t *) == c2)"
	.db 0x00
___str_24:
	.ascii "(i2 = sizeof (pc + 1), sizeof (uint8_t *) == i2)"
	.db 0x00
___str_25:
	.ascii "(c2 = sizeof (pc - 1), sizeof (uint8_t *) == c2)"
	.db 0x00
___str_26:
	.ascii "(i2 = sizeof (pc - 1), sizeof (uint8_t *) == i2)"
	.db 0x00
___str_27:
	.ascii "(c2 = sizeof (pc++), sizeof (uint8_t *) == c2)"
	.db 0x00
___str_28:
	.ascii "(i2 = sizeof (pc--), sizeof (uint8_t *) == i2)"
	.db 0x00
___str_29:
	.ascii "(c2 = sizeof (pc += 1), sizeof (uint8_t *) == c2)"
	.db 0x00
___str_30:
	.ascii "(i2 = sizeof (pc -= 1), sizeof (uint8_t *) == i2)"
	.db 0x00
___str_31:
	.ascii "(c2 = sizeof (pc = (void *)1), sizeof (uint8_t *) == c2)"
	.db 0x00
___str_32:
	.ascii "(i2 = sizeof (pc = (void *)1), sizeof (uint8_t *) == i2)"
	.db 0x00
___str_33:
	.ascii "(c2 = sizeof (&c), sizeof (uint8_t *) == c2)"
	.db 0x00
___str_34:
	.ascii "(i2 = sizeof (&c), sizeof (uint8_t *) == i2)"
	.db 0x00
___str_35:
	.ascii "(c2 = sizeof (&c + 1), sizeof (uint8_t *) == c2)"
	.db 0x00
___str_36:
	.ascii "(i2 = sizeof (&c + 1), sizeof (uint8_t *) == i2)"
	.db 0x00
___str_37:
	.ascii "(c2 = sizeof (&c - 1), sizeof (uint8_t *) == c2)"
	.db 0x00
___str_38:
	.ascii "(i2 = sizeof (&c - 1), sizeof (uint8_t *) == i2)"
	.db 0x00
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:393: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:395: __prints("Running testSizeof\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_39
;	genCall
	call	___prints
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:396: testSizeof();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:397: }
;	genEndFunction
	jp	_testSizeof
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_39:
	.ascii "Running testSizeof"
	.db 0x0a
	.db 0x00
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:402: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:404: return "sizeof_size_8_test_0_vol_0";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_40
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/sizeof/sizeof_size_8_test_0_vol_0.c:405: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_40:
	.ascii "sizeof_size_8_test_0_vol_0"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
