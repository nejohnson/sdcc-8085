;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_20020402_2
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _InitCache
	.globl ___prints
	.globl _MyPte
	.globl _Workspace
	.globl _RDbf12
	.globl _RDbf11
	.globl _Lom10
	.globl _Lom9
	.globl _Lom8
	.globl _Lom7
	.globl _Lom6
	.globl _Lom5
	.globl _Lom4
	.globl _Lom3
	.globl _Lom2
	.globl _Lom1
	.globl _IntCode6
	.globl _IntCode5
	.globl _IntCode4
	.globl _IntCode3
	.globl _IntVc2
	.globl _IntVc1
	.globl _RDbf3
	.globl _RDbf2
	.globl _RDbf1
	.globl _Local3
	.globl _Local2
	.globl _Local1
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
_Local1::
	.ds 2
_Local2::
	.ds 2
_Local3::
	.ds 2
_RDbf1::
	.ds 2
_RDbf2::
	.ds 2
_RDbf3::
	.ds 2
_IntVc1::
	.ds 2
_IntVc2::
	.ds 2
_IntCode3::
	.ds 2
_IntCode4::
	.ds 2
_IntCode5::
	.ds 2
_IntCode6::
	.ds 2
_Lom1::
	.ds 2
_Lom2::
	.ds 2
_Lom3::
	.ds 2
_Lom4::
	.ds 2
_Lom5::
	.ds 2
_Lom6::
	.ds 2
_Lom7::
	.ds 2
_Lom8::
	.ds 2
_Lom9::
	.ds 2
_Lom10::
	.ds 2
_RDbf11::
	.ds 2
_RDbf12::
	.ds 2
_Workspace::
	.ds 22
_MyPte::
	.ds 388
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
;cases/./../tests/gcc-torture-execute-20020402-2.c:166: setStatPointers (ShrPcStatsSType * statsPtr, long sessionId)
;	genLabel
;	genFunction
;	---------------------------------
; Function setStatPointers
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_setStatPointers:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020402-2.c:168: statsPtr->sessionId = sessionId;
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	hl
	inc	hl
;	genCast
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 4 (ix)
	ld	c, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
	ld	(hl), c
;cases/./../tests/gcc-torture-execute-20020402-2.c:169: statsPtr->cmn.a1 = 0;
;	genPlus
;fetchPairLong
	ld	hl, #0x0004
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-20020402-2.c:170: statsPtr->cmn.n1 = 5;
;	genPlus
;fetchPairLong
	ld	hl, #0x0008
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), #0x05
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-20020402-2.c:172: Local1 = &statsPtr->cmn.local1;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x000c
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Local1), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:173: Local2 = &statsPtr->cmn.local2;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0010
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Local2), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:174: Local3 = &statsPtr->cmn.local3;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0014
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Local3), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:175: RDbf1 = &statsPtr->cmn.rdbf1;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0018
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_RDbf1), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:176: RDbf2 = &statsPtr->cmn.rdbf2;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x001c
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_RDbf2), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:177: RDbf3 = &statsPtr->cmn.milli;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0020
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020402-2.c:178: *RDbf3 = 1;
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 9b reused value still in hl.
	ld	(_RDbf3), hl
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), #0x01
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	inc	hl
	ld	(hl), a
;cases/./../tests/gcc-torture-execute-20020402-2.c:180: IntVc1 = &statsPtr->u.gem.a1;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0098
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_IntVc1), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:181: IntVc2 = &statsPtr->u.gem.a2;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x009c
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_IntVc2), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:182: IntCode3 = &statsPtr->u.gem.a3;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x00a0
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_IntCode3), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:183: IntCode4 = &statsPtr->u.gem.a4;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x00a4
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_IntCode4), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:184: IntCode5 = &statsPtr->u.gem.a5;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x00a8
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_IntCode5), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:185: IntCode6 = &statsPtr->u.gem.a6;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x00ac
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_IntCode6), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:189: workSpPtr = &Workspace;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/./../tests/gcc-torture-execute-20020402-2.c:190: workSpPtr->p1 = &statsPtr->u.gem.a7;
;	genPlus
;fetchPairLong
	ld	hl, #0x00b0
	add	hl, de
;	genPointerSet
	ld	(_Workspace), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:191: workSpPtr->p2 = &statsPtr->u.gem.a8;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchPairLong
	ld	hl, #0x00b4
	add	hl, de
;	genPointerSet
	ld	((_Workspace + 2)), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:192: workSpPtr->p3 = &statsPtr->u.gem.a9;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchPairLong
	ld	hl, #0x00b8
	add	hl, de
;	genPointerSet
	ld	((_Workspace + 4)), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:193: workSpPtr->p4 = &statsPtr->u.gem.a10;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchPairLong
	ld	hl, #0x00bc
	add	hl, de
;	genPointerSet
	ld	((_Workspace + 6)), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:194: workSpPtr->p5 = &statsPtr->u.gem.a11;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchPairLong
	ld	hl, #0x00c0
	add	hl, de
;	genPointerSet
	ld	((_Workspace + 8)), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:195: workSpPtr->p6 = &statsPtr->u.gem.a12;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchPairLong
	ld	hl, #0x00c4
	add	hl, de
;	genPointerSet
	ld	((_Workspace + 10)), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:196: workSpPtr->p7 = &statsPtr->u.gem.a13;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchPairLong
	ld	hl, #0x00c8
	add	hl, de
;	genPointerSet
	ld	((_Workspace + 12)), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:197: workSpPtr->p8 = &statsPtr->u.gem.a14;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchPairLong
	ld	hl, #0x00cc
	add	hl, de
;	genPointerSet
	ld	((_Workspace + 14)), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:198: workSpPtr->p9 = &statsPtr->u.gem.a15;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchPairLong
	ld	hl, #0x00d0
	add	hl, de
;	genPointerSet
	ld	((_Workspace + 16)), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:199: workSpPtr->p10 = &statsPtr->u.gem.a16;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchPairLong
	ld	hl, #0x00d4
	add	hl, de
;	genPointerSet
	ld	((_Workspace + 18)), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:200: workSpPtr->p11 = &statsPtr->u.gem.a17;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchPairLong
	ld	hl, #0x00d8
	add	hl, de
;	genPointerSet
	ld	((_Workspace + 20)), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:202: Lom1 = &statsPtr->u.gem.c1;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0068
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Lom1), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:203: Lom2 = &statsPtr->u.gem.c2;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x006c
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Lom2), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:204: Lom3 = &statsPtr->u.gem.c3;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0070
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Lom3), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:205: Lom4 = &statsPtr->u.gem.c4;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0074
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Lom4), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:206: Lom5 = &statsPtr->u.gem.c5;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0078
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Lom5), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:207: Lom6 = &statsPtr->u.gem.c6;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x007c
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Lom6), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:208: Lom7 = &statsPtr->u.gem.c7;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0080
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Lom7), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:209: Lom8 = &statsPtr->u.gem.c8;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0084
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Lom8), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:210: Lom9 = &statsPtr->u.gem.c9;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0088
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Lom9), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:211: Lom10 = &statsPtr->u.gem.c10;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x008c
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_Lom10), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:212: RDbf11 = &statsPtr->u.gem.c11;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0090
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_RDbf11), hl
;cases/./../tests/gcc-torture-execute-20020402-2.c:213: RDbf12 = &statsPtr->u.gem.c12;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0094
	add	hl, de
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(_RDbf12), hl
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20020402-2.c:214: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total setStatPointers function size at codegen: 6 bytes.
;cases/./../tests/gcc-torture-execute-20020402-2.c:224: initPte (void *shrpcPtr, long sessionId)
;	genLabel
;	genFunction
;	---------------------------------
; Function initPte
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_initPte:
;cases/./../tests/gcc-torture-execute-20020402-2.c:228: ptePtr = &MyPte;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;cases/./../tests/gcc-torture-execute-20020402-2.c:229: setStatPointers (&ptePtr->stats, sessionId);
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #2
	add	iy, sp
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, 0 (iy)
; common peephole 14 loaded 0 (iy) into l directly instead of going through a.
	ld	h, 1 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_MyPte
;	genCall
	call	_setStatPointers
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20020402-2.c:230: }
;	genEndFunction
	pop	hl
;	adjustStack by 4
	pop	af
	pop	af
	jp	(hl)
;	Total initPte function size at codegen: 4 bytes.
;cases/./../tests/gcc-torture-execute-20020402-2.c:233: InitCache (int sessionId)
;	genLabel
;	genFunction
;	---------------------------------
; Function InitCache
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_InitCache::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-20020402-2.c:235: initPte (0, sessionId);
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	rlca
	sbc	a, a
	ld	b, a
;	genIpush
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	bc
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genCall
	call	_initPte
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20020402-2.c:236: }
;	genEndFunction
	ret
;	Total InitCache function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-20020402-2.c:240: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-20020402-2.c:243: InitCache (5);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0005
;	genCall
;cases/./../tests/gcc-torture-execute-20020402-2.c:244: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/gcc-torture-execute-20020402-2.c:246: }
;	genEndFunction
	jp	_InitCache
; common peephole 152 removed unused ret.
;	Total testTortureExecute function size at codegen: 1 bytes.
;cases/tst_gcc-torture-execute-20020402-2.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-20020402-2.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-20020402-2.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020402-2.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-20020402-2.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-20020402-2.c:15: return "gcc-torture-execute-20020402-2.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-20020402-2.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "gcc-torture-execute-20020402-2.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
