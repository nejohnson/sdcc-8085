;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr28982a
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _foo
	.globl ___prints
	.globl ___fail
	.globl _input
	.globl _incs
	.globl _results
	.globl _ptrs
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
_ptrs::
	.ds 40
_results::
	.ds 80
_incs::
	.ds 40
_input::
	.ds 320
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
;cases/./../tests/gcc-torture-execute-pr28982a.c:57: foo (int n)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 164 bytes.
_foo::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -164
	ld	iy, #-164
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-42 (ix), l
	ld	-41 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr28982a.c:59: int MULTI (DECLAREI);
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	de, (#_incs + 0)
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	bc, (#_incs + 2)
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 4
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-78 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-77 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 6
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-76 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-75 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 8
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-74 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-73 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 10
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-72 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-71 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 12
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-70 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-69 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 14
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-68 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-67 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 16
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-66 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-65 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 18
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-64 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-63 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 20
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-62 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-61 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 22
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-60 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-59 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 24
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-58 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-57 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 26
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-56 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-55 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 28
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-54 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-53 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 30
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-52 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-51 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 32
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-50 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-49 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 34
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-48 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-47 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 36
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-46 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-45 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_incs + 38
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-44 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-43 (ix), a
;cases/./../tests/gcc-torture-execute-pr28982a.c:60: float MULTI (DECLAREF);
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ptrs
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-40 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-39 (ix), a
;	genAssign
;	genMove_o size 4 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 2
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-38 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-37 (ix), a
;	genAssign
;	genMove_o size 4 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #4
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 4
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-36 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-35 (ix), a
;	genAssign
;	genMove_o size 4 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #8
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 6
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-34 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-33 (ix), a
;	genAssign
;	genMove_o size 4 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #12
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 8
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-32 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-31 (ix), a
;	genAssign
;	genMove_o size 4 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #16
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 10
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-30 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-29 (ix), a
;	genAssign
;	genMove_o size 4 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #20
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 12
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-28 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-27 (ix), a
;	genAssign
;	genMove_o size 4 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #24
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 14
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-26 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-25 (ix), a
;	genAssign
;	genMove_o size 4 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #28
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 16
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-24 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-23 (ix), a
;	genAssign
;	genMove_o size 4 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	iy, #32
	add	iy, sp
	ld	0 (iy), a
	ld	1 (iy), a
	ld	2 (iy), a
	ld	3 (iy), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 18
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-22 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-21 (ix), a
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-128 (ix), a
	ld	-127 (ix), a
	ld	-126 (ix), a
	ld	-125 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 20
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-20 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-19 (ix), a
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-124 (ix), a
	ld	-123 (ix), a
	ld	-122 (ix), a
	ld	-121 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 22
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-18 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-17 (ix), a
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-120 (ix), a
	ld	-119 (ix), a
	ld	-118 (ix), a
	ld	-117 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 24
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-16 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-15 (ix), a
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-116 (ix), a
	ld	-115 (ix), a
	ld	-114 (ix), a
	ld	-113 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 26
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-14 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-13 (ix), a
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-112 (ix), a
	ld	-111 (ix), a
	ld	-110 (ix), a
	ld	-109 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 28
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-11 (ix), a
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-108 (ix), a
	ld	-107 (ix), a
	ld	-106 (ix), a
	ld	-105 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 30
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-9 (ix), a
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-104 (ix), a
	ld	-103 (ix), a
	ld	-102 (ix), a
	ld	-101 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 32
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-7 (ix), a
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-100 (ix), a
	ld	-99 (ix), a
	ld	-98 (ix), a
	ld	-97 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 34
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-5 (ix), a
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-96 (ix), a
	ld	-95 (ix), a
	ld	-94 (ix), a
	ld	-93 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 36
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-92 (ix), a
	ld	-91 (ix), a
	ld	-90 (ix), a
	ld	-89 (ix), a
;	skipping iCode since result will be rematerialized
;	genPointerGet
	ld	hl, #_ptrs + 38
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-1 (ix), a
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-88 (ix), a
	ld	-87 (ix), a
	ld	-86 (ix), a
	ld	-85 (ix), a
;cases/./../tests/gcc-torture-execute-pr28982a.c:61: while (n--)
;	genLeftShift
	ex	de, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-84 (ix), e
	ld	-83 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
	sla	c
	rl	b
	sla	c
	rl	b
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-82 (ix), c
	ld	-81 (ix), b
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -78 (ix)
	ld	-80 (ix), a
	ld	a, -77 (ix)
	ld	-79 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00124$:
	sla	-80 (ix)
	rl	-79 (ix)
	djnz	00124$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -76 (ix)
	ld	-78 (ix), a
	ld	a, -75 (ix)
	ld	-77 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00125$:
	sla	-78 (ix)
	rl	-77 (ix)
	djnz	00125$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -74 (ix)
	ld	-76 (ix), a
	ld	a, -73 (ix)
	ld	-75 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00126$:
	sla	-76 (ix)
	rl	-75 (ix)
	djnz	00126$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -72 (ix)
	ld	-74 (ix), a
	ld	a, -71 (ix)
	ld	-73 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00127$:
	sla	-74 (ix)
	rl	-73 (ix)
	djnz	00127$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -70 (ix)
	ld	-72 (ix), a
	ld	a, -69 (ix)
	ld	-71 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00128$:
	sla	-72 (ix)
	rl	-71 (ix)
	djnz	00128$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -68 (ix)
	ld	-70 (ix), a
	ld	a, -67 (ix)
	ld	-69 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00129$:
	sla	-70 (ix)
	rl	-69 (ix)
	djnz	00129$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -66 (ix)
	ld	-68 (ix), a
	ld	a, -65 (ix)
	ld	-67 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00130$:
	sla	-68 (ix)
	rl	-67 (ix)
	djnz	00130$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -64 (ix)
	ld	-66 (ix), a
	ld	a, -63 (ix)
	ld	-65 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00131$:
	sla	-66 (ix)
	rl	-65 (ix)
	djnz	00131$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -62 (ix)
	ld	-64 (ix), a
	ld	a, -61 (ix)
	ld	-63 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00132$:
	sla	-64 (ix)
	rl	-63 (ix)
	djnz	00132$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -60 (ix)
	ld	-62 (ix), a
	ld	a, -59 (ix)
	ld	-61 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00133$:
	sla	-62 (ix)
	rl	-61 (ix)
	djnz	00133$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -58 (ix)
	ld	-60 (ix), a
	ld	a, -57 (ix)
	ld	-59 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00134$:
	sla	-60 (ix)
	rl	-59 (ix)
	djnz	00134$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -56 (ix)
	ld	-58 (ix), a
	ld	a, -55 (ix)
	ld	-57 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00135$:
	sla	-58 (ix)
	rl	-57 (ix)
	djnz	00135$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -54 (ix)
	ld	-56 (ix), a
	ld	a, -53 (ix)
	ld	-55 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00136$:
	sla	-56 (ix)
	rl	-55 (ix)
	djnz	00136$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -52 (ix)
	ld	-54 (ix), a
	ld	a, -51 (ix)
	ld	-53 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00137$:
	sla	-54 (ix)
	rl	-53 (ix)
	djnz	00137$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -50 (ix)
	ld	-52 (ix), a
	ld	a, -49 (ix)
	ld	-51 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00138$:
	sla	-52 (ix)
	rl	-51 (ix)
	djnz	00138$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -48 (ix)
	ld	-50 (ix), a
	ld	a, -47 (ix)
	ld	-49 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00139$:
	sla	-50 (ix)
	rl	-49 (ix)
	djnz	00139$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -46 (ix)
	ld	-48 (ix), a
	ld	a, -45 (ix)
	ld	-47 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00140$:
	sla	-48 (ix)
	rl	-47 (ix)
	djnz	00140$
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -44 (ix)
	ld	-46 (ix), a
	ld	a, -43 (ix)
	ld	-45 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, #0x02
00141$:
	sla	-46 (ix)
	rl	-45 (ix)
	djnz	00141$
;	genLabel
00101$:
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -42 (ix)
	ld	-44 (ix), a
	ld	a, -41 (ix)
	ld	-43 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMinus
;fetchPairLong
	ld	l, -42 (ix)
	ld	h, -41 (ix)
	dec	hl
	ld	-42 (ix), l
	ld	-41 (ix), h
;	genIfx
	ld	a, -43 (ix)
	or	a, -44 (ix)
	jp	z, 00103$
;cases/./../tests/gcc-torture-execute-pr28982a.c:62: MULTI (LOOP);
;	genPointerGet
;fetchPairLong
	ld	l, -40 (ix)
	ld	h, -39 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #4
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	sp
	inc	sp
	push	de
	ld	a, l
	ld	iy, #0
	add	iy, sp
	ld	2 (iy), a
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -84 (ix)
	ld	d, -83 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -40 (ix)
	ld	h, -39 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-40 (ix), l
	ld	-39 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -38 (ix)
	ld	h, -37 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #8
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #4
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
; common peephole 13 loaded l into 2 (iy) directly instead of going through a.
	ld	2 (iy), l
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -82 (ix)
	ld	d, -81 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -38 (ix)
	ld	h, -37 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-38 (ix), l
	ld	-37 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -36 (ix)
	ld	h, -35 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #12
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #8
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
; common peephole 13 loaded l into 2 (iy) directly instead of going through a.
	ld	2 (iy), l
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -80 (ix)
	ld	d, -79 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -36 (ix)
	ld	h, -35 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-36 (ix), l
	ld	-35 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -34 (ix)
	ld	h, -33 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #16
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #12
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
; common peephole 13 loaded l into 2 (iy) directly instead of going through a.
	ld	2 (iy), l
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -78 (ix)
	ld	d, -77 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -34 (ix)
	ld	h, -33 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-34 (ix), l
	ld	-33 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -32 (ix)
	ld	h, -31 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #20
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #16
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
; common peephole 13 loaded l into 2 (iy) directly instead of going through a.
	ld	2 (iy), l
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -76 (ix)
	ld	d, -75 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -32 (ix)
	ld	h, -31 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-32 (ix), l
	ld	-31 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -30 (ix)
	ld	h, -29 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #24
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #20
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
; common peephole 13 loaded l into 2 (iy) directly instead of going through a.
	ld	2 (iy), l
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -74 (ix)
	ld	d, -73 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -30 (ix)
	ld	h, -29 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-30 (ix), l
	ld	-29 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -28 (ix)
	ld	h, -27 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #28
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #24
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
; common peephole 13 loaded l into 2 (iy) directly instead of going through a.
	ld	2 (iy), l
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -72 (ix)
	ld	d, -71 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -28 (ix)
	ld	h, -27 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-28 (ix), l
	ld	-27 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -26 (ix)
	ld	h, -25 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #32
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #28
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
; common peephole 13 loaded l into 2 (iy) directly instead of going through a.
	ld	2 (iy), l
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -70 (ix)
	ld	d, -69 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -26 (ix)
	ld	h, -25 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-26 (ix), l
	ld	-25 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -24 (ix)
	ld	h, -23 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 12 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #36
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	ld	l, 2 (iy)
; common peephole 14 loaded 2 (iy) into l directly instead of going through a.
	ld	h, 3 (iy)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 12 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #32
	add	iy, sp
	ld	0 (iy), e
	ld	1 (iy), d
; common peephole 13 loaded l into 2 (iy) directly instead of going through a.
	ld	2 (iy), l
; common peephole 13 loaded h into 3 (iy) directly instead of going through a.
	ld	3 (iy), h
;	genMove_o size 0 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -68 (ix)
	ld	d, -67 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -24 (ix)
	ld	h, -23 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-24 (ix), l
	ld	-23 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -22 (ix)
	ld	h, -21 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -128 (ix)
	ld	d, -127 (ix)
	ld	l, -126 (ix)
	ld	h, -125 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-128 (ix), e
	ld	-127 (ix), d
	ld	-126 (ix), l
	ld	-125 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -66 (ix)
	ld	d, -65 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -22 (ix)
	ld	h, -21 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-22 (ix), l
	ld	-21 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -20 (ix)
	ld	h, -19 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -124 (ix)
	ld	d, -123 (ix)
	ld	l, -122 (ix)
	ld	h, -121 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-124 (ix), e
	ld	-123 (ix), d
	ld	-122 (ix), l
	ld	-121 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -64 (ix)
	ld	d, -63 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -20 (ix)
	ld	h, -19 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-20 (ix), l
	ld	-19 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -18 (ix)
	ld	h, -17 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -120 (ix)
	ld	d, -119 (ix)
	ld	l, -118 (ix)
	ld	h, -117 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-120 (ix), e
	ld	-119 (ix), d
	ld	-118 (ix), l
	ld	-117 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -62 (ix)
	ld	d, -61 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -18 (ix)
	ld	h, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-18 (ix), l
	ld	-17 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -116 (ix)
	ld	d, -115 (ix)
	ld	l, -114 (ix)
	ld	h, -113 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-116 (ix), e
	ld	-115 (ix), d
	ld	-114 (ix), l
	ld	-113 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -60 (ix)
	ld	d, -59 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -16 (ix)
	ld	h, -15 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-16 (ix), l
	ld	-15 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -112 (ix)
	ld	d, -111 (ix)
	ld	l, -110 (ix)
	ld	h, -109 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-112 (ix), e
	ld	-111 (ix), d
	ld	-110 (ix), l
	ld	-109 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -58 (ix)
	ld	d, -57 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-14 (ix), l
	ld	-13 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -108 (ix)
	ld	d, -107 (ix)
	ld	l, -106 (ix)
	ld	h, -105 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-108 (ix), e
	ld	-107 (ix), d
	ld	-106 (ix), l
	ld	-105 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -56 (ix)
	ld	d, -55 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-12 (ix), l
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -104 (ix)
	ld	d, -103 (ix)
	ld	l, -102 (ix)
	ld	h, -101 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-104 (ix), e
	ld	-103 (ix), d
	ld	-102 (ix), l
	ld	-101 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -54 (ix)
	ld	d, -53 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -100 (ix)
	ld	d, -99 (ix)
	ld	l, -98 (ix)
	ld	h, -97 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-100 (ix), e
	ld	-99 (ix), d
	ld	-98 (ix), l
	ld	-97 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -52 (ix)
	ld	d, -51 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-8 (ix), l
	ld	-7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -96 (ix)
	ld	d, -95 (ix)
	ld	l, -94 (ix)
	ld	h, -93 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-96 (ix), e
	ld	-95 (ix), d
	ld	-94 (ix), l
	ld	-93 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -50 (ix)
	ld	d, -49 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-6 (ix), l
	ld	-5 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -92 (ix)
	ld	d, -91 (ix)
	ld	l, -90 (ix)
	ld	h, -89 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-92 (ix), e
	ld	-91 (ix), d
	ld	-90 (ix), l
	ld	-89 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -48 (ix)
	ld	d, -47 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genIpush
	push	de
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -88 (ix)
	ld	d, -87 (ix)
	ld	l, -86 (ix)
	ld	h, -85 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fsadd
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-88 (ix), e
	ld	-87 (ix), d
	ld	-86 (ix), l
	ld	-85 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -46 (ix)
	ld	d, -45 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genGoto
	jp	00101$
;	genLabel
00103$:
;cases/./../tests/gcc-torture-execute-pr28982a.c:63: MULTI (COPYOUT);
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_results
	ld	hl, #0
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 4)
	ld	hl, #4
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 8)
	ld	hl, #8
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 12)
	ld	hl, #12
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 16)
	ld	hl, #16
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 20)
	ld	hl, #20
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 24)
	ld	hl, #24
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 28)
	ld	hl, #28
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 32)
	ld	hl, #32
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 36)
	ld	hl, #36
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 40)
	ld	hl, #40
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 44)
	ld	hl, #44
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 48)
	ld	hl, #48
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 52)
	ld	hl, #52
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 56)
	ld	hl, #56
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 60)
	ld	hl, #60
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 64)
	ld	hl, #64
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 68)
	ld	hl, #68
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 72)
	ld	hl, #72
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #(_results + 76)
	ld	hl, #76
	add	hl, sp
	ld	bc, #0x0004
	ldir
;	genLabel
; common peephole 159 removed unused label 00104$.
;cases/./../tests/gcc-torture-execute-pr28982a.c:64: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total foo function size at codegen: 199 bytes.
;cases/./../tests/gcc-torture-execute-pr28982a.c:70: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_testTortureExecute::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;cases/./../tests/gcc-torture-execute-pr28982a.c:75: for (i = 0; i < NVARS; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-pr28982a.c:76: ptrs[i] = input + i, incs[i] = i;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, #<(_ptrs)
	ld	-2 (ix), a
	ld	a, h
	adc	a, #>(_ptrs)
	ld	-1 (ix), a
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
;	genPlus
	ld	a, #<(_input)
	add	a, e
	ld	e, a
	ld	a, #>(_input)
	adc	a, d
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
	pop	hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_incs
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/gcc-torture-execute-pr28982a.c:75: for (i = 0; i < NVARS; i++)
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x14
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00106$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr28982a.c:77: for (i = 0; i < NITER * NVARS; i++)
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genLabel
00108$:
;cases/./../tests/gcc-torture-execute-pr28982a.c:78: input[i] = i;
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
;	genPlus
	ld	a, e
	add	a, #<(_input)
	ld	-2 (ix), a
	ld	a, d
	adc	a, #>(_input)
	ld	-1 (ix), a
;	genSend
	push	hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___sint2fs
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
; common peephole 50a eliminated dead pop/push hl pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
	inc	hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
	pop	hl
;cases/./../tests/gcc-torture-execute-pr28982a.c:77: for (i = 0; i < NITER * NVARS; i++)
;	genPlus
	inc	hl
;	genCmpLt
	ld	a, l
	sub	a, #0x50
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00108$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr28982a.c:79: foo (NITER);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0004
;	genCall
	call	_foo
;cases/./../tests/gcc-torture-execute-pr28982a.c:80: for (i = 0; i < NVARS; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00110$:
;cases/./../tests/gcc-torture-execute-pr28982a.c:81: if (results[i] != i * NITER * (NITER + 1) / 2)
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_results
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	iy, de
;	genPointerGet
	ld	a, 0 (iy)
	ld	-4 (ix), a
	ld	a, 1 (iy)
	ld	-3 (ix), a
	ld	a, 2 (iy)
	ld	-2 (ix), a
	ld	a, 3 (iy)
	ld	-1 (ix), a
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMult
;fetchPairLong
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCast
;	(locations are the same)
;	genRightShift
;fetchPairLong
	sra	h
	rr	l
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___sint2fs
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
; common peephole 50a eliminated dead pop/push bc pair.
	push	hl
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	___fseq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genIfx
	bit	0, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00111$
;cases/./../tests/gcc-torture-execute-pr28982a.c:82: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0052
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #__str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #__str_1
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #__str_0
;	genCall
	call	___fail
	pop	bc
;	genLabel
00111$:
;cases/./../tests/gcc-torture-execute-pr28982a.c:80: for (i = 0; i < NVARS; i++)
;	genPlus
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x14
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00110$
;	skipping generated iCode
;cases/./../tests/gcc-torture-execute-pr28982a.c:83: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00112$.
;cases/./../tests/gcc-torture-execute-pr28982a.c:85: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testTortureExecute function size at codegen: 5 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr28982a.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr28982a.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr28982a.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr28982a.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr28982a.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr28982a.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr28982a.c:15: return "gcc-torture-execute-pr28982a.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr28982a.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr28982a.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
