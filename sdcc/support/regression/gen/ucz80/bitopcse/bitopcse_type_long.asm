;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bitopcse_type_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testcse
	.globl ___prints
	.globl ___fail
	.globl _ub
	.globl _b
	.globl _ua6
	.globl _ua5
	.globl _ua4
	.globl _ua3
	.globl _ua2
	.globl _ua1
	.globl _ua0
	.globl _a20
	.globl _a19
	.globl _a18
	.globl _a17
	.globl _a16
	.globl _a14
	.globl _a13
	.globl _a12
	.globl _a15
	.globl _a11
	.globl _a10
	.globl _a9
	.globl _a8
	.globl _a7
	.globl _a6
	.globl _a5
	.globl _a4
	.globl _a3
	.globl _a2
	.globl _a1
	.globl _a0
	.globl _uv
	.globl _v
	.globl ___numCases
	.globl _mask
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_v::
	.ds 4
_uv::
	.ds 4
_a0::
	.ds 4
_a1::
	.ds 4
_a2::
	.ds 4
_a3::
	.ds 4
_a4::
	.ds 4
_a5::
	.ds 4
_a6::
	.ds 4
_a7::
	.ds 4
_a8::
	.ds 4
_a9::
	.ds 4
_a10::
	.ds 4
_a11::
	.ds 4
_a15::
	.ds 4
_a12::
	.ds 4
_a13::
	.ds 4
_a14::
	.ds 4
_a16::
	.ds 4
_a17::
	.ds 4
_a18::
	.ds 4
_a19::
	.ds 4
_a20::
	.ds 4
_ua0::
	.ds 4
_ua1::
	.ds 4
_ua2::
	.ds 4
_ua3::
	.ds 4
_ua4::
	.ds 4
_ua5::
	.ds 4
_ua6::
	.ds 4
_b::
	.ds 4
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_ub::
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
;cases/bitopcse/bitopcse_type_long.c:67: testcse(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testcse
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testcse::
;cases/bitopcse/bitopcse_type_long.c:70: b = 0xeb;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_b
	ld	(hl), #0xeb
	xor	a, a
	ld	(_b+1), a
	ld	(_b+2), a
	ld	(_b+3), a
;cases/bitopcse/bitopcse_type_long.c:71: ub = 0xbe;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_ub
	ld	(hl), #0xbe
	xor	a, a
	ld	(_ub+1), a
	ld	(_ub+2), a
	ld	(_ub+3), a
;cases/bitopcse/bitopcse_type_long.c:72: v = 0x33;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_v
	ld	(hl), #0x33
	xor	a, a
	ld	(_v+1), a
	ld	(_v+2), a
	ld	(_v+3), a
;cases/bitopcse/bitopcse_type_long.c:73: uv = 0x7b;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_uv
	ld	(hl), #0x7b
	xor	a, a
	ld	(_uv+1), a
	ld	(_uv+2), a
	ld	(_uv+3), a
;cases/bitopcse/bitopcse_type_long.c:75: a0   =    0 & b;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_a0+0), a
	ld	(_a0+1), a
	ld	(_a0+2), a
	ld	(_a0+3), a
;cases/bitopcse/bitopcse_type_long.c:76: a1   =    0 & v;
;	genDummyRead
; common peephole 1 removed dead load from #_v into iy.
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_a1+0), a
	ld	(_a1+1), a
	ld	(_a1+2), a
	ld	(_a1+3), a
;cases/bitopcse/bitopcse_type_long.c:78: a2   = MASK &  b;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_a2
	ld	(hl), #0xeb
	xor	a, a
	ld	(_a2+1), a
	ld	(_a2+2), a
	ld	(_a2+3), a
;cases/bitopcse/bitopcse_type_long.c:79: a3   = MASK &  v;
;	genAssign
	ld	de, #_a3
	ld	hl, #_v
	ld	bc, #4
	ldir
;cases/bitopcse/bitopcse_type_long.c:80: ua0   = MASK & ub;
;	genAssign
	ld	de, #_ua0
	ld	hl, #_ub
	ld	bc, #4
	ldir
;cases/bitopcse/bitopcse_type_long.c:81: ua1   = MASK & uv;
;	genAssign
	ld	de, #_ua1
	ld	hl, #_uv
	ld	bc, #4
	ldir
;cases/bitopcse/bitopcse_type_long.c:83: a4   =    b & b;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_a4
	ld	(hl), #0xeb
	xor	a, a
	ld	(_a4+1), a
	ld	(_a4+2), a
	ld	(_a4+3), a
;cases/bitopcse/bitopcse_type_long.c:84: a5   =    v & v;
;	genAssign
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_v)
	ld	de, (_v + 2)
;	genDummyRead
; common peephole 1 removed dead load from #_v into iy.
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;	genAssign
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_a5), bc
	ld	(_a5 + 2), de
;cases/bitopcse/bitopcse_type_long.c:86: a6  &= 0;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_a6+0), a
	ld	(_a6+1), a
	ld	(_a6+2), a
	ld	(_a6+3), a
;cases/bitopcse/bitopcse_type_long.c:87: v   &= 0;
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_v+0), a
	ld	(_v+1), a
	ld	(_v+2), a
	ld	(_v+3), a
;cases/bitopcse/bitopcse_type_long.c:88: a7  &= MASK;
;	genAssign
;cases/bitopcse/bitopcse_type_long.c:89: v   &= MASK;
;	genAssign
;cases/bitopcse/bitopcse_type_long.c:90: ua2  &= MASK;
;	genAssign
;cases/bitopcse/bitopcse_type_long.c:91: uv   &= MASK;
;	genAssign
;cases/bitopcse/bitopcse_type_long.c:94: a8   =    0 | b;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_a8
	ld	(hl), #0xeb
	xor	a, a
	ld	(_a8+1), a
	ld	(_a8+2), a
	ld	(_a8+3), a
;cases/bitopcse/bitopcse_type_long.c:95: a9   =    0 | v;
;	genAssign
	ld	de, #_a9
	ld	hl, #_v
	ld	bc, #4
	ldir
;cases/bitopcse/bitopcse_type_long.c:98: a10  = MASK |  b;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_a10
	ld	0 (iy), #0xff
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/bitopcse/bitopcse_type_long.c:99: a11  = MASK |  v;
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 41a remove double load to iy.
	ld	iy, #_a11
	ld	0 (iy), #0xff
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/bitopcse/bitopcse_type_long.c:100: ua3   = MASK | ub;
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 41a remove double load to iy.
	ld	iy, #_ua3
	ld	0 (iy), #0xff
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/bitopcse/bitopcse_type_long.c:101: ua4   = MASK | uv;
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 41a remove double load to iy.
	ld	iy, #_ua4
	ld	0 (iy), #0xff
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/bitopcse/bitopcse_type_long.c:102: a12  =    b | b;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_a12
	ld	(hl), #0xeb
	xor	a, a
	ld	(_a12+1), a
	ld	(_a12+2), a
	ld	(_a12+3), a
;cases/bitopcse/bitopcse_type_long.c:103: a13  =    v | v;
;	genAssign
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_v)
	ld	de, (_v + 2)
;	genDummyRead
; common peephole 1 removed dead load from #_v into iy.
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;	genAssign
;	genMove_o size 4 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_a13), bc
	ld	(_a13 + 2), de
;cases/bitopcse/bitopcse_type_long.c:105: a14 |= 0;
;	genAssign
;cases/bitopcse/bitopcse_type_long.c:107: v   |= 0;
;	genAssign
;cases/bitopcse/bitopcse_type_long.c:109: a15 |= MASK;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_a15
	ld	0 (iy), #0xff
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/bitopcse/bitopcse_type_long.c:111: v   |= MASK;
;	genDummyRead
	ld	iy, #_v
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	0 (iy), #0xff
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/bitopcse/bitopcse_type_long.c:112: ua5  |= MASK;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #_ua5
	ld	0 (iy), #0xff
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/bitopcse/bitopcse_type_long.c:113: uv   |= MASK;
;	genDummyRead
	ld	iy, #_uv
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	0 (iy), #0xff
	ld	1 (iy), #0xff
	ld	2 (iy), #0xff
	ld	3 (iy), #0xff
;cases/bitopcse/bitopcse_type_long.c:116: a16  = 0 ^ b;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 56 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_a16
	ld	(hl), #0xeb
	xor	a, a
	ld	(_a16+1), a
	ld	(_a16+2), a
	ld	(_a16+3), a
;cases/bitopcse/bitopcse_type_long.c:117: a17  = 0 ^ v;
;	genAssign
	ld	de, #_a17
	ld	hl, #_v
	ld	bc, #4
	ldir
;cases/bitopcse/bitopcse_type_long.c:119: a18  = b ^ b;
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_a18+0), a
	ld	(_a18+1), a
	ld	(_a18+2), a
	ld	(_a18+3), a
;cases/bitopcse/bitopcse_type_long.c:120: a19  = v ^ v;
;	genDummyRead
; common peephole 1 removed dead load from #_v into iy.
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;	genDummyRead
; common peephole 7 removed dead load from 0 (iy) into a.
; common peephole 7 removed dead load from 1 (iy) into a.
; common peephole 7 removed dead load from 2 (iy) into a.
; common peephole 7 removed dead load from 3 (iy) into a.
;	genAssign
;	genMove_o size 4 result type 10 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(_a19+0), a
	ld	(_a19+1), a
	ld	(_a19+2), a
	ld	(_a19+3), a
;cases/bitopcse/bitopcse_type_long.c:122: a20 ^= 0;
;	genAssign
;cases/bitopcse/bitopcse_type_long.c:124: v   ^= 0;
;	genAssign
;cases/bitopcse/bitopcse_type_long.c:126: ASSERT( a0  ==  0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/bitopcse/bitopcse_type_long.c:127: ASSERT( a1  ==  0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/bitopcse/bitopcse_type_long.c:128: ASSERT( a2  ==  b);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;cases/bitopcse/bitopcse_type_long.c:138: ASSERT( a3  == (long) 0x33);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a3)
	sub	a, #0x33
	ld	iy, #_a3
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00340$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x008a
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
;cases/bitopcse/bitopcse_type_long.c:139: ASSERT(ua1  == (long) 0x7b);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua1)
	sub	a, #0x7b
	ld	iy, #_ua1
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00341$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x008b
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
;cases/bitopcse/bitopcse_type_long.c:140: ASSERT( a5  == (long) 0x33);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a5)
	sub	a, #0x33
	ld	iy, #_a5
	or	a, 1 (iy)
	or	a, 2 (iy)
	or	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00342$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x008c
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
;cases/bitopcse/bitopcse_type_long.c:142: ASSERT(ua0  == ub);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ua0)
	ld	iy, #_ub
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00343$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ua0 + 1)
	sub	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00343$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ua0 + 2)
	sub	a, 2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00343$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_ua0 + 3)
	sub	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
00343$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x008e
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
;cases/bitopcse/bitopcse_type_long.c:143: ASSERT( a4  ==  b);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a4)
	ld	iy, #_b
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00344$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a4 + 1)
	sub	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00344$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a4 + 2)
	sub	a, 2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00344$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a4 + 3)
	sub	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
00344$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x008f
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
00118$:
;cases/bitopcse/bitopcse_type_long.c:144: ASSERT( a6  ==  0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_a6+3)
	ld	iy, #_a6
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00120$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0090
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_10
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00120$:
;cases/bitopcse/bitopcse_type_long.c:147: ASSERT( a8  ==  b);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a8)
	ld	iy, #_b
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00345$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a8 + 1)
	sub	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00345$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a8 + 2)
	sub	a, 2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00345$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a8 + 3)
	sub	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00122$
; common peephole 81 removed jp by using inverse jump logic
00345$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0093
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_11
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00122$:
;cases/bitopcse/bitopcse_type_long.c:148: ASSERT( a9  ==  0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_a9+3)
	ld	iy, #_a9
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00124$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0094
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00124$:
;cases/bitopcse/bitopcse_type_long.c:150: ASSERT( a10 == (long) MASK);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a10)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00346$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a10 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00346$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a10 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00346$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a10 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00126$
; common peephole 81 removed jp by using inverse jump logic
00346$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0096
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_13
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00126$:
;cases/bitopcse/bitopcse_type_long.c:151: ASSERT( a11 == (long) MASK);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a11)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00347$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a11 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00347$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a11 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00347$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a11 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00128$
; common peephole 81 removed jp by using inverse jump logic
00347$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0097
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_14
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00128$:
;cases/bitopcse/bitopcse_type_long.c:152: ASSERT(ua3  == MASK);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00348$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua3 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00348$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua3 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00348$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua3 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00130$
; common peephole 81 removed jp by using inverse jump logic
00348$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0098
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_15
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00130$:
;cases/bitopcse/bitopcse_type_long.c:153: ASSERT(ua4  == MASK);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua4)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00349$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua4 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00349$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua4 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00349$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua4 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00132$
; common peephole 81 removed jp by using inverse jump logic
00349$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0099
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_16
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00132$:
;cases/bitopcse/bitopcse_type_long.c:154: ASSERT( a12 ==  b);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a12)
	ld	iy, #_b
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00350$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a12 + 1)
	sub	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00350$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a12 + 2)
	sub	a, 2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00350$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a12 + 3)
	sub	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00134$
; common peephole 81 removed jp by using inverse jump logic
00350$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x009a
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_17
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00134$:
;cases/bitopcse/bitopcse_type_long.c:155: ASSERT( a13 ==  0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_a13+3)
	ld	iy, #_a13
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00136$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x009b
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_18
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00136$:
;cases/bitopcse/bitopcse_type_long.c:157: ASSERT( a15 == (long) MASK);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a15)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00351$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a15 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00351$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a15 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00351$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a15 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00138$
; common peephole 81 removed jp by using inverse jump logic
00351$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x009d
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_19
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00138$:
;cases/bitopcse/bitopcse_type_long.c:158: ASSERT(ua5  == MASK);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua5)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00352$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua5 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00352$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua5 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00352$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_ua5 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00140$
; common peephole 81 removed jp by using inverse jump logic
00352$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x009e
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_20
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00140$:
;cases/bitopcse/bitopcse_type_long.c:159: ASSERT( a16 == b);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a16)
	ld	iy, #_b
	sub	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00353$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a16 + 1)
	sub	a, 1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00353$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a16 + 2)
	sub	a, 2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00353$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_a16 + 3)
	sub	a, 3 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00142$
; common peephole 81 removed jp by using inverse jump logic
00353$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x009f
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_21
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00142$:
;cases/bitopcse/bitopcse_type_long.c:160: ASSERT( a17 == (long) MASK);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a17)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00354$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a17 + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00354$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a17 + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00354$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_a17 + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00144$
; common peephole 81 removed jp by using inverse jump logic
00354$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00a0
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_22
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00144$:
;cases/bitopcse/bitopcse_type_long.c:161: ASSERT( a18 == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_a18+3)
	ld	iy, #_a18
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00146$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00a1
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_23
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00146$:
;cases/bitopcse/bitopcse_type_long.c:162: ASSERT( a19 == 0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genIfx
	ld	a, (_a19+3)
	ld	iy, #_a19
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a, 0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00148$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00a2
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_24
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00148$:
;cases/bitopcse/bitopcse_type_long.c:165: ASSERT( v   == (long) MASK);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_v)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00355$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_v + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00355$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_v + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00355$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_v + 3)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00150$
; common peephole 81 removed jp by using inverse jump logic
00355$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00a5
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_25
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
00150$:
;cases/bitopcse/bitopcse_type_long.c:166: ASSERT(uv   == MASK);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_uv)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00356$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_uv + 1)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00356$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_uv + 2)
	inc	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00356$
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, (_uv + 3)
	inc	a
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
00356$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x00a6
	push	hl
;	genIpush
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_2
	push	hl
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_26
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
	call	___fail
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitopcse/bitopcse_type_long.c:168: }
;	genEndFunction
	ret
;	Total testcse function size at codegen: 26 bytes.
_mask:
	.byte #0xff, #0xff, #0xff, #0xff	; 4294967295
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "a0 == 0"
	.db 0x00
___str_2:
	.ascii "cases/bitopcse/bitopcse_type_long.c"
	.db 0x00
___str_5:
	.ascii "a3 == (long) 0x33"
	.db 0x00
___str_6:
	.ascii "ua1 == (long) 0x7b"
	.db 0x00
___str_7:
	.ascii "a5 == (long) 0x33"
	.db 0x00
___str_8:
	.ascii "ua0 == ub"
	.db 0x00
___str_9:
	.ascii "a4 == b"
	.db 0x00
___str_10:
	.ascii "a6 == 0"
	.db 0x00
___str_11:
	.ascii "a8 == b"
	.db 0x00
___str_12:
	.ascii "a9 == 0"
	.db 0x00
___str_13:
	.ascii "a10 == (long) MASK"
	.db 0x00
___str_14:
	.ascii "a11 == (long) MASK"
	.db 0x00
___str_15:
	.ascii "ua3 == MASK"
	.db 0x00
___str_16:
	.ascii "ua4 == MASK"
	.db 0x00
___str_17:
	.ascii "a12 == b"
	.db 0x00
___str_18:
	.ascii "a13 == 0"
	.db 0x00
___str_19:
	.ascii "a15 == (long) MASK"
	.db 0x00
___str_20:
	.ascii "ua5 == MASK"
	.db 0x00
___str_21:
	.ascii "a16 == b"
	.db 0x00
___str_22:
	.ascii "a17 == (long) MASK"
	.db 0x00
___str_23:
	.ascii "a18 == 0"
	.db 0x00
___str_24:
	.ascii "a19 == 0"
	.db 0x00
___str_25:
	.ascii "v == (long) MASK"
	.db 0x00
___str_26:
	.ascii "uv == MASK"
	.db 0x00
;cases/bitopcse/bitopcse_type_long.c:172: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bitopcse/bitopcse_type_long.c:174: __prints("Running testcse\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_27
;	genCall
	call	___prints
;cases/bitopcse/bitopcse_type_long.c:175: testcse();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitopcse/bitopcse_type_long.c:176: }
;	genEndFunction
	jp	_testcse
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_27:
	.ascii "Running testcse"
	.db 0x0a
	.db 0x00
;cases/bitopcse/bitopcse_type_long.c:181: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bitopcse/bitopcse_type_long.c:183: return "bitopcse_type_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_28
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bitopcse/bitopcse_type_long.c:184: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_28:
	.ascii "bitopcse_type_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__ub:
	.byte #0xbe, #0x00, #0x00, #0x00	; 190
	.area _CABS (ABS)
