;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module sizeof_size_8_test_2_vol_0
	
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
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:151: testSizeof(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSizeof
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testSizeof:
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:299: TEST_OP_NOPROMO (TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:300: TEST_OP (+TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:301: TEST_OP (-TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:302: TEST_OP (~TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:304: TEST_OP_NOPROMO (TEST_VAR++);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:305: TEST_OP_NOPROMO (TEST_VAR--);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:307: TEST_OP_NOPROMO (++TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:308: TEST_OP_NOPROMO (--TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:310: TEST_OP (TEST_VAR ? 0 : 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:311: TEST_OP (TEST_VAR ? 0 : 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:312: TEST_OP (TEST_VAR ? 1 : 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:313: TEST_OP (TEST_VAR ? 1 : 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:314: TEST_OP (1 ? TEST_VAR : 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:315: TEST_OP (1 ? TEST_VAR : 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:316: TEST_OP (1 ? 1 : TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:317: TEST_OP (1 ? 1 : TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:318: TEST_OP (0 ? TEST_VAR : 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:319: TEST_OP (0 ? TEST_VAR : 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:320: TEST_OP (0 ? 1 : TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:321: TEST_OP (0 ? 1 : TEST_VAR);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:323: TEST_OP (TEST_VAR << 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:324: TEST_OP (TEST_VAR << (2 + 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:325: TEST_OP (TEST_VAR << (2 << 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:327: TEST_OP (TEST_VAR >> 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:328: TEST_OP (TEST_VAR >> (2 + 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:329: TEST_OP (TEST_VAR >> (2 << 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:331: TEST_OP (TEST_VAR & 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:332: TEST_OP (TEST_VAR & (2 + 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:333: TEST_OP (TEST_VAR & (2 << 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:335: TEST_OP (TEST_VAR | 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:336: TEST_OP (TEST_VAR | (2 + 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:337: TEST_OP (TEST_VAR | (2 << 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:339: TEST_OP (TEST_VAR ^ 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:340: TEST_OP (TEST_VAR ^ (2 + 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:341: TEST_OP (TEST_VAR ^ (2 << 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:343: TEST_OP (TEST_VAR + 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:344: TEST_OP (TEST_VAR + (2 + 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:345: TEST_OP (TEST_VAR + (2 << 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:347: TEST_OP (TEST_VAR - 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:348: TEST_OP (TEST_VAR - (2 + 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:349: TEST_OP (TEST_VAR - (2 << 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:351: TEST_OP (TEST_VAR * 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:352: TEST_OP (TEST_VAR * (2 + 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:353: TEST_OP (TEST_VAR * (2 << 1));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:355: TEST_OP (TEST_VAR - TEST_VAR2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(___numTests), hl
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:357: TEST_OP ((TEST_VAR >> 1) | (TEST_VAR << 7));
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
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:389: }
;	genEndFunction
	ret
;	Total testSizeof function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "(c2 = sizeof (c), sizeof (uint8_t) == c2)"
	.db 0x00
___str_2:
	.ascii "cases/sizeof/sizeof_size_8_test_2_vol_0.c"
	.db 0x00
___str_3:
	.ascii "(c2 = sizeof (+c), sizeof (int) == c2)"
	.db 0x00
___str_4:
	.ascii "(c2 = sizeof (-c), sizeof (int) == c2)"
	.db 0x00
___str_5:
	.ascii "(c2 = sizeof (~c), sizeof (int) == c2)"
	.db 0x00
___str_6:
	.ascii "(c2 = sizeof (c++), sizeof (uint8_t) == c2)"
	.db 0x00
___str_7:
	.ascii "(c2 = sizeof (c--), sizeof (uint8_t) == c2)"
	.db 0x00
___str_8:
	.ascii "(c2 = sizeof (++c), sizeof (uint8_t) == c2)"
	.db 0x00
___str_9:
	.ascii "(c2 = sizeof (--c), sizeof (uint8_t) == c2)"
	.db 0x00
___str_10:
	.ascii "(c2 = sizeof (c ? 0 : 0), sizeof (int) == c2)"
	.db 0x00
___str_11:
	.ascii "(c2 = sizeof (c ? 0 : 1), sizeof (int) == c2)"
	.db 0x00
___str_12:
	.ascii "(c2 = sizeof (c ? 1 : 0), sizeof (int) == c2)"
	.db 0x00
___str_13:
	.ascii "(c2 = sizeof (c ? 1 : 1), sizeof (int) == c2)"
	.db 0x00
___str_14:
	.ascii "(c2 = sizeof (1 ? c : 1), sizeof (int) == c2)"
	.db 0x00
___str_15:
	.ascii "(c2 = sizeof (1 ? 1 : c), sizeof (int) == c2)"
	.db 0x00
___str_16:
	.ascii "(c2 = sizeof (0 ? c : 1), sizeof (int) == c2)"
	.db 0x00
___str_17:
	.ascii "(c2 = sizeof (0 ? 1 : c), sizeof (int) == c2)"
	.db 0x00
___str_18:
	.ascii "(c2 = sizeof (c << 1), sizeof (int) == c2)"
	.db 0x00
___str_19:
	.ascii "(c2 = sizeof (c << (2 + 1)), sizeof (int) == c2)"
	.db 0x00
___str_20:
	.ascii "(c2 = sizeof (c << (2 << 1)), sizeof (int) == c2)"
	.db 0x00
___str_21:
	.ascii "(c2 = sizeof (c >> 1), sizeof (int) == c2)"
	.db 0x00
___str_22:
	.ascii "(c2 = sizeof (c >> (2 + 1)), sizeof (int) == c2)"
	.db 0x00
___str_23:
	.ascii "(c2 = sizeof (c >> (2 << 1)), sizeof (int) == c2)"
	.db 0x00
___str_24:
	.ascii "(c2 = sizeof (c & 8), sizeof (int) == c2)"
	.db 0x00
___str_25:
	.ascii "(c2 = sizeof (c & (2 + 1)), sizeof (int) == c2)"
	.db 0x00
___str_26:
	.ascii "(c2 = sizeof (c & (2 << 1)), sizeof (int) == c2)"
	.db 0x00
___str_27:
	.ascii "(c2 = sizeof (c | 8), sizeof (int) == c2)"
	.db 0x00
___str_28:
	.ascii "(c2 = sizeof (c | (2 + 1)), sizeof (int) == c2)"
	.db 0x00
___str_29:
	.ascii "(c2 = sizeof (c | (2 << 1)), sizeof (int) == c2)"
	.db 0x00
___str_30:
	.ascii "(c2 = sizeof (c ^ 8), sizeof (int) == c2)"
	.db 0x00
___str_31:
	.ascii "(c2 = sizeof (c ^ (2 + 1)), sizeof (int) == c2)"
	.db 0x00
___str_32:
	.ascii "(c2 = sizeof (c ^ (2 << 1)), sizeof (int) == c2)"
	.db 0x00
___str_33:
	.ascii "(c2 = sizeof (c + 8), sizeof (int) == c2)"
	.db 0x00
___str_34:
	.ascii "(c2 = sizeof (c + (2 + 1)), sizeof (int) == c2)"
	.db 0x00
___str_35:
	.ascii "(c2 = sizeof (c + (2 << 1)), sizeof (int) == c2)"
	.db 0x00
___str_36:
	.ascii "(c2 = sizeof (c - 8), sizeof (int) == c2)"
	.db 0x00
___str_37:
	.ascii "(c2 = sizeof (c - (2 + 1)), sizeof (int) == c2)"
	.db 0x00
___str_38:
	.ascii "(c2 = sizeof (c - (2 << 1)), sizeof (int) == c2)"
	.db 0x00
___str_39:
	.ascii "(c2 = sizeof (c * 8), sizeof (int) == c2)"
	.db 0x00
___str_40:
	.ascii "(c2 = sizeof (c * (2 + 1)), sizeof (int) == c2)"
	.db 0x00
___str_41:
	.ascii "(c2 = sizeof (c * (2 << 1)), sizeof (int) == c2)"
	.db 0x00
___str_42:
	.ascii "(c2 = sizeof (c - ct), sizeof (int) == c2)"
	.db 0x00
___str_43:
	.ascii "(c2 = sizeof ((c >> 1) | (c << 7)), sizeof (int) == c2)"
	.db 0x00
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:393: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:395: __prints("Running testSizeof\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_44
;	genCall
	call	___prints
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:396: testSizeof();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:397: }
;	genEndFunction
	jp	_testSizeof
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_44:
	.ascii "Running testSizeof"
	.db 0x0a
	.db 0x00
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:402: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:404: return "sizeof_size_8_test_2_vol_0";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_45
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/sizeof/sizeof_size_8_test_2_vol_0.c:405: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_45:
	.ascii "sizeof_size_8_test_2_vol_0"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
