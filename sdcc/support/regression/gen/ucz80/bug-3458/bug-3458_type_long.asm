;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module bug_3458_type_long
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _gz_z
	.globl _gz_1
	.globl _gz_0
	.globl _g1_z
	.globl _g1_1
	.globl _g1_0
	.globl _g0_z
	.globl _g0_1
	.globl _g0_0
	.globl _fz
	.globl _f1
	.globl _f0
	.globl ___prints
	.globl ___fail
	.globl _j
	.globl _i
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
_i::
	.ds 4
_j::
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
;cases/bug-3458/bug-3458_type_long.c:14: long f0(void) __sdcccall(0)
;	genLabel
;	genFunction
;	---------------------------------
; Function f0
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f0::
;cases/bug-3458/bug-3458_type_long.c:16: return i;
;	genRet
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_i)
	ld	de, (_i + 2)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:17: }
;	genEndFunction
	ret
;	Total f0 function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:19: long f1(void) __sdcccall(1)
;	genLabel
;	genFunction
;	---------------------------------
; Function f1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_f1::
;cases/bug-3458/bug-3458_type_long.c:21: return i;
;	genRet
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, (_i)
	ld	hl, (_i + 2)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:22: }
;	genEndFunction
	ret
;	Total f1 function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:24: long fz(void) __z88dk_fastcall
;	genLabel
;	genFunction
;	---------------------------------
; Function fz
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_fz::
;cases/bug-3458/bug-3458_type_long.c:26: return i;
;	genRet
;	genMove_o size 4 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_i)
	ld	de, (_i + 2)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:27: }
;	genEndFunction
	ret
;	Total fz function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:29: long g0_0(void) __sdcccall(0)
;	genLabel
;	genFunction
;	---------------------------------
; Function g0_0
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g0_0::
;cases/bug-3458/bug-3458_type_long.c:31: i++; j++; // These j++ help overwrite a value that might happen to be in return registers if those are used for the i++.
;	genPlus
	ld	iy, #_i
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
00103$:
;	genPlus
	ld	iy, #_j
	inc	0 (iy)
	jp	nz, _f0
; common peephole 84 jumped to _f0 directly instead of via 00104$.
	inc	1 (iy)
	jp	nz, _f0
; common peephole 84 jumped to _f0 directly instead of via 00104$.
	inc	2 (iy)
	jp	nz, _f0
; common peephole 84 jumped to _f0 directly instead of via 00104$.
	inc	3 (iy)
; common peephole 159 removed unused label 00104$.
;cases/bug-3458/bug-3458_type_long.c:32: return f0();
;	genCall
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:33: }
;	genEndFunction
	jp	_f0
; common peephole 152 removed unused ret.
;	Total g0_0 function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:35: long g0_1(void) __sdcccall(0)
;	genLabel
;	genFunction
;	---------------------------------
; Function g0_1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g0_1::
;cases/bug-3458/bug-3458_type_long.c:37: i++; j++;
;	genPlus
	ld	iy, #_i
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
00103$:
;	genPlus
	ld	iy, #_j
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
	inc	3 (iy)
00104$:
;cases/bug-3458/bug-3458_type_long.c:38: return f1();
;	genCall
	call	_f1
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:39: }
;	genEndFunction
	ret
;	Total g0_1 function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:41: long g0_z(void) __sdcccall(0)
;	genLabel
;	genFunction
;	---------------------------------
; Function g0_z
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g0_z::
;cases/bug-3458/bug-3458_type_long.c:43: i++; j++;
;	genPlus
	ld	iy, #_i
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
00103$:
;	genPlus
	ld	iy, #_j
	inc	0 (iy)
	jp	nz, _fz
; common peephole 84 jumped to _fz directly instead of via 00104$.
	inc	1 (iy)
	jp	nz, _fz
; common peephole 84 jumped to _fz directly instead of via 00104$.
	inc	2 (iy)
	jp	nz, _fz
; common peephole 84 jumped to _fz directly instead of via 00104$.
	inc	3 (iy)
; common peephole 159 removed unused label 00104$.
;cases/bug-3458/bug-3458_type_long.c:44: return fz();
;	genCall
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:45: }
;	genEndFunction
	jp	_fz
; common peephole 152 removed unused ret.
;	Total g0_z function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:47: long g1_0(void) __sdcccall(1)
;	genLabel
;	genFunction
;	---------------------------------
; Function g1_0
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g1_0::
;cases/bug-3458/bug-3458_type_long.c:49: i++;
;	genPlus
	ld	iy, #_i
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
00103$:
;cases/bug-3458/bug-3458_type_long.c:50: return f0();
;	genCall
	call	_f0
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:51: }
;	genEndFunction
	ret
;	Total g1_0 function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:53: long g1_1(void) __sdcccall(1)
;	genLabel
;	genFunction
;	---------------------------------
; Function g1_1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g1_1::
;cases/bug-3458/bug-3458_type_long.c:55: i++; j++;
;	genPlus
	ld	iy, #_i
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
00103$:
;	genPlus
	ld	iy, #_j
	inc	0 (iy)
	jp	nz, _f1
; common peephole 84 jumped to _f1 directly instead of via 00104$.
	inc	1 (iy)
	jp	nz, _f1
; common peephole 84 jumped to _f1 directly instead of via 00104$.
	inc	2 (iy)
	jp	nz, _f1
; common peephole 84 jumped to _f1 directly instead of via 00104$.
	inc	3 (iy)
; common peephole 159 removed unused label 00104$.
;cases/bug-3458/bug-3458_type_long.c:56: return f1();
;	genCall
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:57: }
;	genEndFunction
	jp	_f1
; common peephole 152 removed unused ret.
;	Total g1_1 function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:59: long g1_z(void) __sdcccall(1)
;	genLabel
;	genFunction
;	---------------------------------
; Function g1_z
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_g1_z::
;cases/bug-3458/bug-3458_type_long.c:61: i++; j++;
;	genPlus
	ld	iy, #_i
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
00103$:
;	genPlus
	ld	iy, #_j
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
	inc	3 (iy)
00104$:
;cases/bug-3458/bug-3458_type_long.c:62: return fz();
;	genCall
	call	_fz
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:63: }
;	genEndFunction
	ret
;	Total g1_z function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:65: long gz_0(void) __z88dk_fastcall
;	genLabel
;	genFunction
;	---------------------------------
; Function gz_0
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_gz_0::
;cases/bug-3458/bug-3458_type_long.c:67: i++; j++;
;	genPlus
	ld	iy, #_i
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
00103$:
;	genPlus
	ld	iy, #_j
	inc	0 (iy)
	jp	nz, _f0
; common peephole 84 jumped to _f0 directly instead of via 00104$.
	inc	1 (iy)
	jp	nz, _f0
; common peephole 84 jumped to _f0 directly instead of via 00104$.
	inc	2 (iy)
	jp	nz, _f0
; common peephole 84 jumped to _f0 directly instead of via 00104$.
	inc	3 (iy)
; common peephole 159 removed unused label 00104$.
;cases/bug-3458/bug-3458_type_long.c:68: return f0();
;	genCall
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:69: }
;	genEndFunction
	jp	_f0
; common peephole 152 removed unused ret.
;	Total gz_0 function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:71: long gz_1(void) __z88dk_fastcall
;	genLabel
;	genFunction
;	---------------------------------
; Function gz_1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_gz_1::
;cases/bug-3458/bug-3458_type_long.c:73: i++; j++;
;	genPlus
	ld	iy, #_i
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
00103$:
;	genPlus
	ld	iy, #_j
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
	inc	3 (iy)
00104$:
;cases/bug-3458/bug-3458_type_long.c:74: return f1();
;	genCall
	call	_f1
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:75: }
;	genEndFunction
	ret
;	Total gz_1 function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:77: long gz_z(void) __z88dk_fastcall
;	genLabel
;	genFunction
;	---------------------------------
; Function gz_z
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_gz_z::
;cases/bug-3458/bug-3458_type_long.c:79: i++; j++;
;	genPlus
	ld	iy, #_i
	inc	0 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	1 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	2 (iy)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00103$
	inc	3 (iy)
00103$:
;	genPlus
	ld	iy, #_j
	inc	0 (iy)
	jp	nz, _fz
; common peephole 84 jumped to _fz directly instead of via 00104$.
	inc	1 (iy)
	jp	nz, _fz
; common peephole 84 jumped to _fz directly instead of via 00104$.
	inc	2 (iy)
	jp	nz, _fz
; common peephole 84 jumped to _fz directly instead of via 00104$.
	inc	3 (iy)
; common peephole 159 removed unused label 00104$.
;cases/bug-3458/bug-3458_type_long.c:80: return fz();
;	genCall
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:81: }
;	genEndFunction
	jp	_fz
; common peephole 152 removed unused ret.
;	Total gz_z function size at codegen: 1 bytes.
;cases/bug-3458/bug-3458_type_long.c:83: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/bug-3458/bug-3458_type_long.c:85: ASSERT(g0_0() == 1);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_g0_0
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	dec	a
	or	a, h
	or	a, e
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00193$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0055
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
;cases/bug-3458/bug-3458_type_long.c:86: ASSERT(g0_1() == 2);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_g0_1
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x02
	or	a, h
	or	a, e
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00194$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0056
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
;cases/bug-3458/bug-3458_type_long.c:87: ASSERT(g0_z() == 3);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_g0_z
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x03
	or	a, h
	or	a, e
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00195$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0057
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
;cases/bug-3458/bug-3458_type_long.c:88: ASSERT(g1_0() == 4);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_g1_0
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x04
	or	a, d
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00196$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0058
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
;cases/bug-3458/bug-3458_type_long.c:89: ASSERT(g1_1() == 5);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_g1_1
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x05
	or	a, d
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00197$.
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
;cases/bug-3458/bug-3458_type_long.c:90: ASSERT(g1_z() == 6);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_g1_z
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x06
	or	a, d
	or	a, l
	or	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00198$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005a
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
;cases/bug-3458/bug-3458_type_long.c:91: ASSERT(gz_0() == 7);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_gz_0
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x07
	or	a, h
	or	a, e
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00199$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005b
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
;cases/bug-3458/bug-3458_type_long.c:92: ASSERT(gz_1() == 8);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_gz_1
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x08
	or	a, h
	or	a, e
	or	a, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00200$.
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
;cases/bug-3458/bug-3458_type_long.c:93: ASSERT(gz_z() == 9);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_gz_z
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x09
	or	a, h
	or	a, e
	or	a, d
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00201$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x005d
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
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:94: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "g0_0() == 1"
	.db 0x00
___str_2:
	.ascii "cases/bug-3458/bug-3458_type_long.c"
	.db 0x00
___str_3:
	.ascii "g0_1() == 2"
	.db 0x00
___str_4:
	.ascii "g0_z() == 3"
	.db 0x00
___str_5:
	.ascii "g1_0() == 4"
	.db 0x00
___str_6:
	.ascii "g1_1() == 5"
	.db 0x00
___str_7:
	.ascii "g1_z() == 6"
	.db 0x00
___str_8:
	.ascii "gz_0() == 7"
	.db 0x00
___str_9:
	.ascii "gz_1() == 8"
	.db 0x00
___str_10:
	.ascii "gz_z() == 9"
	.db 0x00
;cases/bug-3458/bug-3458_type_long.c:98: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/bug-3458/bug-3458_type_long.c:100: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_11
;	genCall
	call	___prints
;cases/bug-3458/bug-3458_type_long.c:101: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:102: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_11:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/bug-3458/bug-3458_type_long.c:107: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/bug-3458/bug-3458_type_long.c:109: return "bug-3458_type_long";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_12
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/bug-3458/bug-3458_type_long.c:110: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_12:
	.ascii "bug-3458_type_long"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
