;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_gcc_torture_execute_pr48809
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testTortureExecute
	.globl _foo
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
;cases/./../tests/gcc-torture-execute-pr48809.c:14: foo (signed char x)
;	genLabel
;	genFunction
;	---------------------------------
; Function foo
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_foo::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/gcc-torture-execute-pr48809.c:16: int y = 0;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;cases/./../tests/gcc-torture-execute-pr48809.c:17: switch (x)
;	genCmpEq
	cp	a, #0xc2
	jp	z, 00135$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00419$.
;	skipping generated iCode
;	genIfx
	or	a, a
	jp	z, 00101$
;	genCmpEq
	cp	a, #0x01
	jp	z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00420$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x02
	jp	z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00421$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x03
	jp	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00422$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x04
	jp	z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00423$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x05
	jp	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00424$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x06
	jp	z, 00107$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00425$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x07
	jp	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00426$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x08
	jp	z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00427$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x09
	jp	z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00428$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x0a
	jp	z, 00111$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00429$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x0b
	jp	z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00430$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x0c
	jp	z, 00113$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00431$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x0d
	jp	z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00432$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x0e
	jp	z, 00115$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00433$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x0f
	jp	z, 00116$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00434$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x10
	jp	z, 00117$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00435$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x11
	jp	z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00436$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x12
	jp	z, 00119$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00437$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x13
	jp	z, 00120$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00438$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x14
	jp	z, 00121$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00439$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x15
	jp	z, 00122$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00440$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x16
	jp	z, 00123$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00441$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x17
	jp	z, 00124$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00442$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x18
	jp	z, 00125$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00443$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x19
	jp	z, 00126$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00444$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x1a
	jp	z, 00127$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00445$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x1b
	jp	z, 00128$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00446$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x1c
	jp	z, 00129$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00447$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x1d
	jp	z, 00130$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00448$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x1e
	jp	z, 00131$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00449$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x1f
	jp	z, 00132$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00450$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x20
	jp	z, 00133$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00451$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x62
	jp	z, 00134$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00452$.
;	skipping generated iCode
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:19: case 0: y = 1; break;
;	genLabel
00101$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0001
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:20: case 1: y = 7; break;
;	genLabel
00102$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0007
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:21: case 2: y = 2; break;
;	genLabel
00103$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0002
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:22: case 3: y = 19; break;
;	genLabel
00104$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0013
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:23: case 4: y = 5; break;
;	genLabel
00105$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0005
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:24: case 5: y = 17; break;
;	genLabel
00106$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0011
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:25: case 6: y = 31; break;
;	genLabel
00107$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x001f
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:26: case 7: y = 8; break;
;	genLabel
00108$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0008
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:27: case 8: y = 28; break;
;	genLabel
00109$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x001c
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:28: case 9: y = 16; break;
;	genLabel
00110$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0010
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:29: case 10: y = 31; break;
;	genLabel
00111$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x001f
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:30: case 11: y = 12; break;
;	genLabel
00112$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000c
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:31: case 12: y = 15; break;
;	genLabel
00113$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000f
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:32: case 13: y = 111; break;
;	genLabel
00114$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x006f
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:33: case 14: y = 17; break;
;	genLabel
00115$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0011
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:34: case 15: y = 10; break;
;	genLabel
00116$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:35: case 16: y = 31; break;
;	genLabel
00117$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x001f
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:36: case 17: y = 7; break;
;	genLabel
00118$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0007
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:37: case 18: y = 2; break;
;	genLabel
00119$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0002
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:38: case 19: y = 19; break;
;	genLabel
00120$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0013
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:39: case 20: y = 5; break;
;	genLabel
00121$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0005
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:40: case 21: y = 107; break;
;	genLabel
00122$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x006b
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:41: case 22: y = 31; break;
;	genLabel
00123$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x001f
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:42: case 23: y = 8; break;
;	genLabel
00124$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0008
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:43: case 24: y = 28; break;
;	genLabel
00125$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x001c
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:44: case 25: y = 106; break;
;	genLabel
00126$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x006a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:45: case 26: y = 31; break;
;	genLabel
00127$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x001f
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:46: case 27: y = 102; break;
;	genLabel
00128$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0066
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:47: case 28: y = 105; break;
;	genLabel
00129$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0069
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:48: case 29: y = 111; break;
;	genLabel
00130$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x006f
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:49: case 30: y = 17; break;
;	genLabel
00131$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0011
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:50: case 31: y = 10; break;
;	genLabel
00132$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:51: case 32: y = 31; break;
;	genLabel
00133$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x001f
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:52: case 98: y = 18; break;
;	genLabel
00134$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0012
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;cases/./../tests/gcc-torture-execute-pr48809.c:53: case -62: y = 19; break;
;	genLabel
00135$:
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0013
;cases/./../tests/gcc-torture-execute-pr48809.c:54: }
;	genLabel
; common peephole 159 removed unused label 00136$.
;cases/./../tests/gcc-torture-execute-pr48809.c:55: return y;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00137$.
;cases/./../tests/gcc-torture-execute-pr48809.c:56: }
;	genEndFunction
	ret
;	Total foo function size at codegen: 1 bytes.
;cases/./../tests/gcc-torture-execute-pr48809.c:59: testTortureExecute (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testTortureExecute
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testTortureExecute::
;cases/./../tests/gcc-torture-execute-pr48809.c:62: if (foo (98) != 18 || foo (97) != 0 || foo (99) != 0)
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x62
;	genCall
	call	_foo
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x12
	or	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00163$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00164$.
;	skipping generated iCode
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x61
;	genCall
	call	_foo
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00101$
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x63
;	genCall
	call	_foo
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00102$
;	genLabel
00101$:
;cases/./../tests/gcc-torture-execute-pr48809.c:63: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x003f
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
;	genLabel
00102$:
;cases/./../tests/gcc-torture-execute-pr48809.c:64: if (foo (-62) != 19 || foo (-63) != 0 || foo (-61) != 0)
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc2
;	genCall
	call	_foo
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x13
	or	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00165$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00166$.
;	skipping generated iCode
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc1
;	genCall
	call	_foo
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00105$
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0xc3
;	genCall
	call	_foo
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	ld	a, d
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
;	genLabel
00105$:
;cases/./../tests/gcc-torture-execute-pr48809.c:65: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0041
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
;	genLabel
00106$:
;cases/./../tests/gcc-torture-execute-pr48809.c:66: if (foo (28) != 105 || foo (27) != 102 || foo (29) != 111)
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x1c
;	genCall
	call	_foo
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x69
	or	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00167$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00109$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00168$.
;	skipping generated iCode
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x1b
;	genCall
	call	_foo
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x66
	or	a, d
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00169$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00109$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00170$.
;	skipping generated iCode
;	genSend
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, #0x1d
;	genCall
	call	_foo
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	sub	a, #0x6f
	or	a, d
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00171$.
;	skipping generated iCode
;	genLabel
00109$:
;cases/./../tests/gcc-torture-execute-pr48809.c:67: ASSERT (0);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0043
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
;	genLabel
; common peephole 159 removed unused label 00110$.
;cases/./../tests/gcc-torture-execute-pr48809.c:68: return;
;	genRet
;	genLabel
; common peephole 159 removed unused label 00113$.
;cases/./../tests/gcc-torture-execute-pr48809.c:70: }
;	genEndFunction
	ret
;	Total testTortureExecute function size at codegen: 1 bytes.
__str_0:
	.ascii "Assertion failed"
	.db 0x00
__str_1:
	.ascii "0"
	.db 0x00
__str_2:
	.ascii "cases/./../tests/gcc-torture-execute-pr48809.c"
	.db 0x00
;cases/tst_gcc-torture-execute-pr48809.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_gcc-torture-execute-pr48809.c:6: __prints("Running testTortureExecute\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_gcc-torture-execute-pr48809.c:7: testTortureExecute();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr48809.c:8: }
;	genEndFunction
	jp	_testTortureExecute
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testTortureExecute"
	.db 0x0a
	.db 0x00
;cases/tst_gcc-torture-execute-pr48809.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_gcc-torture-execute-pr48809.c:15: return "gcc-torture-execute-pr48809.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_gcc-torture-execute-pr48809.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "gcc-torture-execute-pr48809.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
