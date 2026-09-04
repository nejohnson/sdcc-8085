;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitfields_dead_loop_struct_1_varType_3
	
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
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:114: loop_test_byte(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function loop_test_byte
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 1 bytes.
_loop_test_byte::
;	adjustStack by -1
	dec	sp
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:118: AS_UINT8(volatileBits) = 0x00;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:119: while(AS_UINT8(volatileBits) != 0x00);
;	genLabel
00101$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:120: while(volatileBits.high != 0x00);
;	genLabel
00104$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
;	genIfx
	and	a, #0x0f
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:121: while(volatileBits.bit0);
;	genLabel
00107$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00107$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:122: while(volatileBits.bit1);
;	genLabel
00110$:
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #0
	add	hl, sp
	ld	a, (hl)
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00110$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:123: while(volatileBits.bit2);
;	genLabel
00113$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00113$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:124: while(volatileBits.bit3);
;	genLabel
00116$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
	rrca
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00116$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:126: AS_UINT8(volatileBits) = 0xFF;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0xff
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:127: while(AS_UINT8(volatileBits) != 0xFF);
;	genLabel
00119$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
	ld	c, (hl)
;	genCmpEq
	inc	c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00473$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00119$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00474$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:128: while(volatileBits.high != 0x0F);
;	genLabel
00122$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00475$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00122$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00476$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:129: while(!volatileBits.bit0);
;	genLabel
00125$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00125$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:130: while(!volatileBits.bit1);
;	genLabel
00128$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00128$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:131: while(!volatileBits.bit2);
;	genLabel
00131$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00131$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:132: while(!volatileBits.bit3);
;	genLabel
00134$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
	rrca
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00134$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:134: AS_UINT8(volatileBits) = 0x01;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x01
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:135: while(AS_UINT8(volatileBits) != 0x01);
;	genLabel
00137$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
	ld	c, (hl)
;	genCmpEq
	dec	c
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00477$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00137$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00478$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:136: while(volatileBits.high != 0x00);
;	genLabel
00140$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
;	genIfx
	and	a, #0x0f
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00140$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:137: while(!volatileBits.bit0);
;	genLabel
00143$:
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #0
	add	hl, sp
	ld	a, (hl)
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00143$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:138: while( volatileBits.bit1);
;	genLabel
00146$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00146$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:139: while( volatileBits.bit2);
;	genLabel
00149$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00149$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:140: while( volatileBits.bit3);
;	genLabel
00152$:
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #0
	add	hl, sp
	ld	a, (hl)
	rrca
	rrca
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00152$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:142: AS_UINT8(volatileBits) = 0x02;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x02
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:143: while(AS_UINT8(volatileBits) != 0x02);
;	genLabel
00155$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
	ld	a, (hl)
;	genCmpEq
	cp	a, #0x02
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00479$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00155$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00480$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:144: while(volatileBits.high != 0x00);
;	genLabel
00158$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
;	genIfx
	and	a, #0x0f
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00158$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:145: while( volatileBits.bit0);
;	genLabel
00161$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00161$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:146: while(!volatileBits.bit1);
;	genLabel
00164$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00164$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:147: while( volatileBits.bit2);
;	genLabel
00167$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00167$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:148: while( volatileBits.bit3);
;	genLabel
00170$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
	rrca
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00170$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:150: AS_UINT8(volatileBits) = 0xF0;
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0xf0
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:151: while(AS_UINT8(volatileBits) != 0xF0);
;	genLabel
00173$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
	ld	a, (hl)
;	genCmpEq
	cp	a, #0xf0
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00481$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00173$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00482$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:152: while(volatileBits.high != 0x0F);
;	genLabel
00176$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
;	genCmpEq
	cp	a, #0x0f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00483$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00176$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00484$.
;	skipping generated iCode
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:153: while(volatileBits.bit0);
;	genLabel
00179$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00179$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:154: while(volatileBits.bit1);
;	genLabel
00182$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00182$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:155: while(volatileBits.bit2);
;	genLabel
00185$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00185$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:156: while(volatileBits.bit3);
;	genLabel
00188$:
;	genAddrOf
	ld	hl, #0
	add	hl, sp
;	genPointerGet
;fetchPairLong
	ld	a, (hl)
	rrca
	rrca
	rrca
;	genIfx
	and	a, #0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00188$
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:158: ASSERT(1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genLabel
; common peephole 159 removed unused label 00191$.
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:159: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	ret
;	Total loop_test_byte function size at codegen: 2 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "1"
	.db 0x00
__str_2:
	.ascii "cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varTy"
	.ascii "pe_3.c"
	.db 0x00
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:214: testBitfieldsDeadLoop(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBitfieldsDeadLoop
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBitfieldsDeadLoop:
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:217: loop_test_byte();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:219: }
;	genEndFunction
	jp	_loop_test_byte
; common peephole 152 removed unused ret.
;	Total testBitfieldsDeadLoop function size at codegen: 1 bytes.
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:223: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:225: __prints("Running testBitfieldsDeadLoop\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:226: testBitfieldsDeadLoop();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:227: }
;	genEndFunction
	jp	_testBitfieldsDeadLoop
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testBitfieldsDeadLoop"
	.db 0x0a
	.db 0x00
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:232: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:234: return "bitfields-dead-loop_struct_1_varType_3";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitfields-dead-loop/bitfields-dead-loop_struct_1_varType_3.c:235: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "bitfields-dead-loop_struct_1_varType_3"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
