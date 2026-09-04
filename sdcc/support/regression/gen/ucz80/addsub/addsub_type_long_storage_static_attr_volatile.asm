;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module addsub_type_long_storage_static_attr_volatile
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testSub
	.globl _testAdd
	.globl _add_func
	.globl ___prints
	.globl ___fail
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
_testAdd_left_10000_15:
	.ds 4
_testAdd_right_10000_15:
	.ds 4
_testAdd_result_10000_15:
	.ds 4
_testSub_left_10000_17:
	.ds 4
_testSub_right_10000_17:
	.ds 4
_testSub_result_10000_17:
	.ds 4
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
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:9: long add_func(long i)
;	genLabel
;	genFunction
;	---------------------------------
; Function add_func
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_add_func::
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:11: return(i + (5ul << 16));
;	genCast
;	(locations are the same)
;	genPlus
	push	bc
;fetchPairLong
	ld	bc, #0x0005
	add	hl, bc
	pop	bc
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:12: }
;	genEndFunction
	ret
;	Total add_func function size at codegen: 1 bytes.
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:15: testAdd(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testAdd
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testAdd::
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:19: left = 5;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_testAdd_left_10000_15
	ld	(hl), #0x05
	xor	a, a
	ld	(_testAdd_left_10000_15+1), a
	ld	(_testAdd_left_10000_15+2), a
	ld	(_testAdd_left_10000_15+3), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:20: right = 26;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_testAdd_right_10000_15
	ld	(hl), #0x1a
	xor	a, a
	ld	(_testAdd_right_10000_15+1), a
	ld	(_testAdd_right_10000_15+2), a
	ld	(_testAdd_right_10000_15+3), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:22: result = left+right;
;	genPlus
;	Shift into pair
	ld	hl, #_testAdd_right_10000_15
;	Shift into pair
	push	de
	ld	iy, #_testAdd_result_10000_15
	push	iy
	pop	de
	ld	a, (_testAdd_left_10000_15+0)
	add	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+1)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+2)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+3)
	adc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:23: ASSERT(result == 31);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15+0)
	sub	a, #0x1f
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00183$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0017
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
;	genLabel
00104$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:25: left = 39;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_testAdd_left_10000_15
	ld	(hl), #0x27
	xor	a, a
	ld	(_testAdd_left_10000_15+1), a
	ld	(_testAdd_left_10000_15+2), a
	ld	(_testAdd_left_10000_15+3), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:26: right = -120;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_testAdd_right_10000_15
	ld	0 (iy), #0x88
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:28: result = left+right;
;	genPlus
;	Shift into pair
	ld	hl, #_testAdd_right_10000_15
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_testAdd_result_10000_15
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (_testAdd_left_10000_15+0)
	add	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+1)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+2)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+3)
	adc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:29: ASSERT(result == (39-120));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15+0)
	sub	a, #0xaf
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00184$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00184$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00184$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
00184$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x001d
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
00106$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:31: left = -39;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_testAdd_left_10000_15
	ld	0 (iy), #0xd9
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:32: right = 80;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_testAdd_right_10000_15
	ld	(hl), #0x50
	xor	a, a
	ld	(_testAdd_right_10000_15+1), a
	ld	(_testAdd_right_10000_15+2), a
	ld	(_testAdd_right_10000_15+3), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:34: result = left+right;
;	genPlus
;	Shift into pair
	ld	hl, #_testAdd_right_10000_15
;	Shift into pair
	push	de
	ld	iy, #_testAdd_result_10000_15
	push	iy
	pop	de
	ld	a, (_testAdd_left_10000_15+0)
	add	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+1)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+2)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+3)
	adc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:35: ASSERT(result == (-39+80));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15+0)
	sub	a, #0x29
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00185$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0023
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:37: left = -39;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_testAdd_left_10000_15
	ld	0 (iy), #0xd9
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:38: right = -70;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_testAdd_right_10000_15
	ld	0 (iy), #0xba
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:40: result = left+right;
;	genPlus
;	Shift into pair
	ld	hl, #_testAdd_right_10000_15
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_testAdd_result_10000_15
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (_testAdd_left_10000_15+0)
	add	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+1)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+2)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+3)
	adc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:41: ASSERT(result == (-39-70));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15+0)
	sub	a, #0x93
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00186$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00186$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00186$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
00186$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0029
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:43: result += 0xab00;
;	genPlus
;	Shift into pair
	ld	hl, #_testAdd_result_10000_15
	ld	a, (hl)
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	add	a, #0xab
	ld	(hl), a
	inc	hl
	ld	a, (hl)
	adc	a, #0x00
	ld	(hl), a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00187$
	inc	hl
	inc	(hl)
00187$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:44: ASSERT(result == (long)(0xab00-39-70));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15)
	sub	a, #0x93
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00188$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15 + 1)
	sub	a, #0xaa
	ld	iy, #_testAdd_result_10000_15
	or	a, 2 (iy)
	or	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
00188$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x002c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_6
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00112$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:46: left = 0x5500;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_testAdd_left_10000_15
	ld	0 (iy), #0x00
	ld	1 (iy), #0x55
	xor	a, a
	ld	(_testAdd_left_10000_15+2), a
	ld	(_testAdd_left_10000_15+3), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:47: right = 0x0a00;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_testAdd_right_10000_15
	ld	0 (iy), #0x00
	ld	1 (iy), #0x0a
	xor	a, a
	ld	(_testAdd_right_10000_15+2), a
	ld	(_testAdd_right_10000_15+3), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:49: result = left + right;
;	genPlus
;	Shift into pair
	ld	hl, #_testAdd_right_10000_15
;	Shift into pair
	push	de
	ld	iy, #_testAdd_result_10000_15
	push	iy
	pop	de
	ld	a, (_testAdd_left_10000_15+0)
	add	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+1)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+2)
	adc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testAdd_left_10000_15+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testAdd_left_10000_15+3)
	adc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:50: ASSERT(result == (long)(0x5500 + 0x0a00));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
	ld	a, (_testAdd_result_10000_15+0)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00189$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15 + 1)
	sub	a, #0x5f
	or	a, 2 (iy)
	or	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
00189$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0032
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_7
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00114$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:52: left = 0x550000ul;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_testAdd_left_10000_15+0), a
	ld	(_testAdd_left_10000_15+1), a
; common peephole 56 used hl instead of iy.
	ld	hl, #_testAdd_left_10000_15 + 2
	ld	(hl), #0x55
	xor	a, a
	ld	(_testAdd_left_10000_15+3), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:54: result = left + 0x0a0000ul;
;	genCast
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_testAdd_left_10000_15)
	ld	de, (_testAdd_left_10000_15 + 2)
;	genPlus
	ld	a, c
;	Shift into pair
	ld	hl, #_testAdd_result_10000_15
	ld	(hl), a
	inc	hl
	ld	(hl), b
; common peephole 96b move inc hl before add a, #0x0a
; common peephole 96b move inc hl before ld a, e
	inc	hl
	ld	a, e
	add	a, #0x0a
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0x00
; common peephole 96b move inc hl before ld a, d
	inc	hl
	ld	a, d
	adc	a, #0x00
	ld	(hl), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:55: ASSERT(result == (long)(0x550000ul + 0x0a0000ul));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
	ld	a, (_testAdd_result_10000_15+0)
	or	a, a
	ld	iy, #_testAdd_result_10000_15
	or	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00190$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testAdd_result_10000_15 + 2)
	sub	a, #0x5f
	or	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
00190$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0037
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00116$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:57: ASSERT(add_func(0) == (long)(5ul << 16));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
; common peephole 174a reused value still in de.
	ld	h, d
	ld	l, e
;	genCall
	call	_add_func
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
	ld	a, e
	or	a, a
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00191$
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x05
	or	a, h
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00191$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0039
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_9
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:59: }
;	genEndFunction
	ret
;	Total testAdd function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "result == 31"
	.db 0x00
___str_2:
	.ascii "cases/addsub/addsub_type_long_storage_static_attr_volatile.c"
	.db 0x00
___str_3:
	.ascii "result == (39-120)"
	.db 0x00
___str_4:
	.ascii "result == (-39+80)"
	.db 0x00
___str_5:
	.ascii "result == (-39-70)"
	.db 0x00
___str_6:
	.ascii "result == (long)(0xab00-39-70)"
	.db 0x00
___str_7:
	.ascii "result == (long)(0x5500 + 0x0a00)"
	.db 0x00
___str_8:
	.ascii "result == (long)(0x550000ul + 0x0a0000ul)"
	.db 0x00
___str_9:
	.ascii "add_func(0) == (long)(5ul << 16)"
	.db 0x00
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:62: testSub(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testSub
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testSub::
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:67: left = 5;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_testSub_left_10000_17
	ld	(hl), #0x05
	xor	a, a
	ld	(_testSub_left_10000_17+1), a
	ld	(_testSub_left_10000_17+2), a
	ld	(_testSub_left_10000_17+3), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:68: right = 26;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_testSub_right_10000_17
	ld	(hl), #0x1a
	xor	a, a
	ld	(_testSub_right_10000_17+1), a
	ld	(_testSub_right_10000_17+2), a
	ld	(_testSub_right_10000_17+3), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:70: result = left-right;
;	genMinus
;	Shift into pair
	ld	hl, #_testSub_right_10000_17
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_testSub_result_10000_17
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (_testSub_left_10000_17+0)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_testSub_left_10000_17+1)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testSub_left_10000_17+2)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testSub_left_10000_17+3)
	sbc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:71: ASSERT(result == (5-26));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17+0)
	sub	a, #0xeb
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00153$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
00153$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0047
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_12
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___fail
;	genLabel
00104$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:73: left = 39;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_testSub_left_10000_17
	ld	(hl), #0x27
	xor	a, a
	ld	(_testSub_left_10000_17+1), a
	ld	(_testSub_left_10000_17+2), a
	ld	(_testSub_left_10000_17+3), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:74: right = -76;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_testSub_right_10000_17
	ld	0 (iy), #0xb4
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:76: result = left-right;
;	genMinus
;	Shift into pair
	ld	hl, #_testSub_right_10000_17
;	Shift into pair
	push	de
	ld	iy, #_testSub_result_10000_17
	push	iy
	pop	de
	ld	a, (_testSub_left_10000_17+0)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_testSub_left_10000_17+1)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testSub_left_10000_17+2)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testSub_left_10000_17+3)
	sbc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:77: ASSERT(result == (39+76));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17+0)
	sub	a, #0x73
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00154$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x004d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_12
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___fail
;	genLabel
00106$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:79: left = -12;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_testSub_left_10000_17
	ld	0 (iy), #0xf4
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:80: right = 56;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_testSub_right_10000_17
	ld	(hl), #0x38
	xor	a, a
	ld	(_testSub_right_10000_17+1), a
	ld	(_testSub_right_10000_17+2), a
	ld	(_testSub_right_10000_17+3), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:82: result = left-right;
;	genMinus
;	Shift into pair
	ld	hl, #_testSub_right_10000_17
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_testSub_result_10000_17
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (_testSub_left_10000_17+0)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_testSub_left_10000_17+1)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testSub_left_10000_17+2)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testSub_left_10000_17+3)
	sbc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:83: ASSERT(result == (-12-56));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17+0)
	sub	a, #0xbc
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00155$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00155$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00155$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
00155$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0053
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_12
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_14
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___fail
;	genLabel
00108$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:85: left = -39;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_testSub_left_10000_17
	ld	0 (iy), #0xd9
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:86: right = -20;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_testSub_right_10000_17
	ld	0 (iy), #0xec
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:88: result = left-right;
;	genMinus
;	Shift into pair
	ld	hl, #_testSub_right_10000_17
;	Shift into pair
	push	de
; common peephole 49a pushed de instead of iy.
	ld	de, #_testSub_result_10000_17
; common peephole 50b eliminated dead push/pop pair.
	ld	a, (_testSub_left_10000_17+0)
	sub	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+1)
; common peephole 96b move inc hl before ld (de), a
	inc	hl
	ld	(de), a
	ld	a, (_testSub_left_10000_17+1)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+2)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testSub_left_10000_17+2)
	sbc	a, (hl)
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+3)
; common peephole 96b move inc hl before ld (de), a
; common peephole 96c move inc hl before inc de
	inc	hl
	inc	de
	ld	(de), a
	ld	a, (_testSub_left_10000_17+3)
	sbc	a, (hl)
	inc	de
	ld	(de), a
	pop	de
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:89: ASSERT(result == (-39+20));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17+0)
	sub	a, #0xed
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00156$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00156$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00156$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
00156$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0059
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_12
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___fail
;	genLabel
00110$:
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:91: result = left-(signed)0x1200;
;	genMinus
;	Shift into pair
	ld	hl, #_testSub_result_10000_17
	ld	a, (_testSub_left_10000_17+0)
	add	a, #0x00
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xee
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+1)
	inc	hl
	ld	a, (_testSub_left_10000_17+1)
	adc	a, #0xee
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+2)
	inc	hl
	ld	a, (_testSub_left_10000_17+2)
	adc	a, #0xff
	ld	(hl), a
; common peephole 96b move inc hl before adc a, #0xff
; common peephole 96b move inc hl before ld a, (_testSub_left_10000_17+3)
	inc	hl
	ld	a, (_testSub_left_10000_17+3)
	adc	a, #0xff
	ld	(hl), a
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:92: ASSERT(result == (long)(-39-(signed)0x1200));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17)
	sub	a, #0xd9
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00157$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 1)
	sub	a, #0xed
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00157$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00157$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_testSub_result_10000_17 + 3)
	inc	a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00157$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005c
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_12
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_10
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:94: }
;	genEndFunction
	ret
;	Total testSub function size at codegen: 1 bytes.
___str_10:
	.ascii "Assertion failed"
	.db 0x00
___str_11:
	.ascii "result == (5-26)"
	.db 0x00
___str_12:
	.ascii "cases/addsub/addsub_type_long_storage_static_attr_volatile.c"
	.db 0x00
___str_13:
	.ascii "result == (39+76)"
	.db 0x00
___str_14:
	.ascii "result == (-12-56)"
	.db 0x00
___str_15:
	.ascii "result == (-39+20)"
	.db 0x00
___str_16:
	.ascii "result == (long)(-39-(signed)0x1200)"
	.db 0x00
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:98: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:100: __prints("Running testAdd\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_17
;	genCall
	call	___prints
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:101: testAdd();
;	genCall
	call	_testAdd
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:102: __prints("Running testSub\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_18
;	genCall
	call	___prints
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:103: testSub();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:104: }
;	genEndFunction
	jp	_testSub
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_17:
	.ascii "Running testAdd"
	.db 0x0a
	.db 0x00
___str_18:
	.ascii "Running testSub"
	.db 0x0a
	.db 0x00
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:109: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:111: return "addsub_type_long_storage_static_attr_volatile";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_19
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/addsub/addsub_type_long_storage_static_attr_volatile.c:112: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0002
___str_19:
	.ascii "addsub_type_long_storage_static_attr_volatile"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
