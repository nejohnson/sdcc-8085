;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug_3547
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _f
	.globl _render
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
;cases/./../tests/bug-3547.c:23: void render(Point3D p1, Point3D p2)
;	genLabel
;	genFunction
;	---------------------------------
; Function render
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_render::
;cases/./../tests/bug-3547.c:25: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	pop	hl
;	adjustStack by 12
	pop	af
	pop	af
	pop	af
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total render function size at codegen: 8 bytes.
;cases/./../tests/bug-3547.c:27: void f(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function f
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 134 bytes.
_f::
;	adjustStack by -134
	ld	hl, #-134
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug-3547.c:29: unsigned int  angles[3] = {47, 10, 0};
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x2f
	xor	a, a
	ld	1 (iy), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x0a
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genPlus
	ld	hl, #4
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(de), a
	inc	de
	ld	(de), a
;cases/./../tests/bug-3547.c:30: const unsigned char sides[][2] = {
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	iy, #6
	add	iy, sp
	ld	0 (iy), #0x07
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x08
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x08
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x09
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x08
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x0a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x0a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x0b
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x0b
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x09
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x09
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x06
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x06
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x00
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x00
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x01
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x01
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x07
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x07
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x04
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x06
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x05
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x00
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x03
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x01
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x02
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x04
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x05
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x05
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x0c
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x0c
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x04
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x0d
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x02
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x0d
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x03
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x0d
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x0c
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x05
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x03
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x03
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x02
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	ld	0 (iy), #0x02
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 1 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 157b merged offset into storage instruction.
	ld	1 (iy), #0x04
;cases/./../tests/bug-3547.c:54: Point3D points[POINT_AMOUNT] = {
;	genAddrOf
	ld	hl, #50
	add	hl, sp
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 32b removed de/hl swap.
	ld	e, l
	ld	d, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), #0x20
	inc	hl
	ld	(hl), #0x00
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 65 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #52
	add	hl, sp
	ld	(hl), #0x20
	inc	hl
	ld	(hl), #0
; peephole 178 direct load zero constant to memory addressed by index register
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
;	genPlus
;fetchPairLong
	ld	hl, #0x0006
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 65 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #58
	add	hl, sp
	ld	(hl), #0x20
	inc	hl
	ld	(hl), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genPlus
;fetchPairLong
	ld	hl, #0x000a
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genPlus
;fetchPairLong
	ld	hl, #0x000c
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #64
	add	iy, sp
	ld	0 (iy), #0x20
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x20
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x20
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x20
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x20
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genPlus
;fetchPairLong
	ld	hl, #0x0018
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genPlus
;fetchPairLong
	ld	hl, #0x001a
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #78
	add	iy, sp
	ld	0 (iy), #0x20
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x20
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genPlus
;fetchPairLong
	ld	hl, #0x0020
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #84
	add	iy, sp
	ld	0 (iy), #0x20
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x20
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genPlus
;fetchPairLong
	ld	hl, #0x0026
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genPlus
;fetchPairLong
	ld	hl, #0x0028
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genPlus
;fetchPairLong
	ld	hl, #0x002a
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genPlus
;fetchPairLong
	ld	hl, #0x002c
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genPlus
;fetchPairLong
	ld	hl, #0x002e
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 65 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #98
	add	hl, sp
	ld	(hl), #0x08
	inc	hl
	ld	(hl), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genPlus
;fetchPairLong
	ld	hl, #0x0032
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genPlus
;fetchPairLong
	ld	hl, #0x0034
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 65 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #104
	add	hl, sp
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genPlus
;fetchPairLong
	ld	hl, #0x0038
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	genPlus
;fetchPairLong
	ld	hl, #0x003a
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 65 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #110
	add	hl, sp
	ld	(hl), #0x08
	inc	hl
	ld	(hl), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genPlus
;fetchPairLong
	ld	hl, #0x003e
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #114
	add	iy, sp
	ld	0 (iy), #0x10
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x10
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genPlus
;fetchPairLong
	ld	hl, #0x0044
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #120
	add	iy, sp
	ld	0 (iy), #0x10
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x10
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genPlus
;fetchPairLong
	ld	hl, #0x004a
	add	hl, de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #126
	add	iy, sp
	ld	0 (iy), #0x30
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x10
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x20
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 12 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	iy
	inc	iy
	ld	0 (iy), #0x30
	ld	1 (iy), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/bug-3547.c:72: for (unsigned char i = 0; i < SIDE_AMOUNT; i++)
;	genLabel
00115$:
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
;	genLabel
00106$:
;	genCmpLt
	cp	a, #0x16
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00115$
;	skipping generated iCode
;	genPlus
	inc	a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
; common peephole 159 removed unused label 00108$.
;cases/./../tests/bug-3547.c:77: }
;	genEndFunction
;	adjustStack by 134
	ld	hl, #134
	add	hl, sp
	ld	sp, hl
	ret
;	Total f function size at codegen: 6 bytes.
;cases/./../tests/bug-3547.c:81: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug-3547.c:83: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
;cases/tst_bug-3547.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug-3547.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/tst_bug-3547.c:7: testBug();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3547.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug-3547.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug-3547.c:15: return "bug-3547.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug-3547.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "bug-3547.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
