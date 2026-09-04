;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitfields_dead_loop_struct_0_varType_2
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _loop_test_byte
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
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:163: loop_test_byte(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function loop_test_byte
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_loop_test_byte::
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:167: volatileBits = 0x00;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xca04
	ld	(hl), #0x00
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:168: while(volatileBits != 0x00);
;	genLabel
00101$:
;	genPointerGet
	ld	a, (#0xca04)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:169: while((volatileBits & 0xF0) != 0x00);
;	genLabel
00104$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	and	a, #0xf0
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00473$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00474$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:170: while((volatileBits & 0x01) != 0x00);
;	genLabel
00107$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	rrca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00475$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00107$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00476$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:171: while((volatileBits & 0x02) != 0x00);
;	genLabel
00110$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00477$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00478$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:172: while((volatileBits & 0x04) != 0x00);
;	genLabel
00113$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	bit	2, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00479$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00480$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:173: while((volatileBits & 0x08) != 0x00);
;	genLabel
00116$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	bit	3, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00481$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00482$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:175: volatileBits = 0xFF;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xca04
	ld	(hl), #0xff
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:176: while(volatileBits != 0xFF);
;	genLabel
00119$:
;	genPointerGet
;fetchPairLong
	ld	hl, #0xca04
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCmpEq
	inc	c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00483$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00119$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00484$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:177: while((uint8_t)(volatileBits & 0xF0) != 0xF0);
;	genLabel
00122$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	and	a, #0xf0
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf0
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00485$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00122$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00486$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:178: while((uint8_t)(volatileBits & 0x01) != 0x01);
;	genLabel
00125$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x01
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00487$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00125$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00488$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:179: while((uint8_t)(volatileBits & 0x02) != 0x02);
;	genLabel
00128$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	and	a, #0x02
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x02
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00489$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00128$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00490$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:180: while((uint8_t)(volatileBits & 0x04) != 0x04);
;	genLabel
00131$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	and	a, #0x04
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x04
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00491$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00131$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00492$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:181: while((uint8_t)(volatileBits & 0x08) != 0x08);
;	genLabel
00134$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	and	a, #0x08
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x08
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00493$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00134$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00494$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:183: volatileBits = 0x01;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xca04
	ld	(hl), #0x01
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:184: while(volatileBits != 0x01);
;	genLabel
00137$:
;	genPointerGet
;fetchPairLong
	ld	hl, #0xca04
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCmpEq
	dec	c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00495$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00137$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00496$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:185: while(         (volatileBits & 0xF0) != 0x00);
;	genLabel
00140$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	and	a, #0xf0
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00497$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00140$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00498$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:186: while((uint8_t)(volatileBits & 0x01) != 0x01);
;	genLabel
00143$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x01
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00499$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00143$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00500$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:187: while(         (volatileBits & 0x02) != 0x00);
;	genLabel
00146$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00501$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00146$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00502$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:188: while(         (volatileBits & 0x04) != 0x00);
;	genLabel
00149$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	bit	2, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00503$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00149$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00504$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:189: while(         (volatileBits & 0x08) != 0x00);
;	genLabel
00152$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	bit	3, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00505$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00152$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00506$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:191: volatileBits = 0x02;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xca04
	ld	(hl), #0x02
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:192: while(volatileBits != 0x02);
;	genLabel
00155$:
;	genPointerGet
	ld	a, (#0xca04)
;	genCmpEq
	cp	a, #0x02
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00507$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00155$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00508$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:193: while(         (volatileBits & 0xF0) != 0x00);
;	genLabel
00158$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	and	a, #0xf0
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00509$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00158$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00510$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:194: while(         (volatileBits & 0x01) != 0x00);
;	genLabel
00161$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	rrca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00511$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00161$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00512$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:195: while((uint8_t)(volatileBits & 0x02) != 0x02);
;	genLabel
00164$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	and	a, #0x02
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x02
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00513$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00164$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00514$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:196: while(         (volatileBits & 0x04) != 0x00);
;	genLabel
00167$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	bit	2, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00515$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00167$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00516$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:197: while(         (volatileBits & 0x08) != 0x00);
;	genLabel
00170$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	bit	3, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00517$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00170$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00518$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:199: volatileBits = 0xF0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0xca04
	ld	(hl), #0xf0
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:200: while(volatileBits != 0xF0);
;	genLabel
00173$:
;	genPointerGet
	ld	a, (#0xca04)
;	genCmpEq
	cp	a, #0xf0
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00519$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00173$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00520$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:201: while((uint8_t)(volatileBits & 0xF0) != 0xF0);
;	genLabel
00176$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	and	a, #0xf0
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0xf0
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00521$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00176$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00522$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:202: while(         (volatileBits & 0x01) != 0x00);
;	genLabel
00179$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	rrca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00523$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00179$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00524$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:203: while(         (volatileBits & 0x02) != 0x00);
;	genLabel
00182$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00525$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00182$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00526$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:204: while(         (volatileBits & 0x04) != 0x00);
;	genLabel
00185$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	bit	2, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00527$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00185$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00528$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:205: while(         (volatileBits & 0x08) != 0x00);
;	genLabel
00188$:
;	genPointerGet
	ld	a, (#0xca04)
;	genAnd
	bit	3, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00529$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00188$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00530$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:207: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00191$.
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:208: }
;	genEndFunction
	ret
;	Total loop_test_byte function size at codegen: 52 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varTy"
	.ascii "pe_2.c"
	.db 0x00
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:214: testBitfieldsDeadLoop(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBitfieldsDeadLoop
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBitfieldsDeadLoop:
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:217: loop_test_byte();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:219: }
;	genEndFunction
	jp	_loop_test_byte
; common peephole 152 removed unused ret.
;	Total testBitfieldsDeadLoop function size at codegen: 1 bytes.
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:223: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:225: __prints("Running testBitfieldsDeadLoop\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:226: testBitfieldsDeadLoop();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:227: }
;	genEndFunction
	jp	_testBitfieldsDeadLoop
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBitfieldsDeadLoop"
	.db 0x0a
	.db 0x00
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:232: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:234: return "bitfields-dead-loop_struct_0_varType_2";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_0_varType_2.c:235: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bitfields-dead-loop_struct_0_varType_2"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
