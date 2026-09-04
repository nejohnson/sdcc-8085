;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_falcon_ntt
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testFalconNTT
	.globl ___prints
	.globl ___fail
	.globl _buf
	.globl ___numCases
	.globl _falcon_inner_to_ntt_monty
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_buf::
	.ds 32
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
;cases/./../tests/falcon-ntt.c:587: set_fpu_cw(unsigned x)
;	genLabel
;	genFunction
;	---------------------------------
; Function set_fpu_cw
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_set_fpu_cw:
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:589: return x;
;	genRet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/falcon-ntt.c:590: }
;	genEndFunction
	ret
;	Total set_fpu_cw function size at codegen: 1 bytes.
;cases/./../tests/falcon-ntt.c:1732: mq_conv_small(int x)
;	genLabel
;	genFunction
;	---------------------------------
; Function mq_conv_small
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_mq_conv_small:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1739: y = (uint32_t)x;
;	genCast
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), a
	rlca
	sbc	a, a
	ld	-2 (ix), a
;cases/./../tests/falcon-ntt.c:1740: y += Q & -(y >> 31);
;	genRightShift
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded e from a instead of going through -1 (ix).
	ld	-1 (ix), a
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 1 removed dead load from #0x0000 into hl.
	ld	b, #0x07
00103$:
	srl	e
; common peephole 159 removed unused label 00104$.
	djnz	00103$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	xor	a, a
	sub	a, e
	ld	c, a
	sbc	a, a
	ld	b, a
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into e.
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into d.
;	genAnd
	ld	a, c
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	and	a, #0x30
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genPlus
	ld	a, -4 (ix)
	add	a, c
	ld	e, a
	ld	a, -3 (ix)
	adc	a, b
	ld	d, a
	ld	a, -2 (ix)
	adc	a, l
	ld	l, a
	ld	a, -1 (ix)
	adc	a, h
	ld	h, a
;cases/./../tests/falcon-ntt.c:1741: return y;
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/falcon-ntt.c:1742: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total mq_conv_small function size at codegen: 5 bytes.
_GMb:
	.dw #0x0ffb
	.dw #0x1ed0
	.dw #0x2b34
	.dw #0x2bc8
	.dw #0x1b30
	.dw #0x10f6
	.dw #0x1883
	.dw #0x261f
	.dw #0x0637
	.dw #0x18ff
	.dw #0x2505
	.dw #0x1492
	.dw #0x024a
	.dw #0x16c1
	.dw #0x1d72
	.dw #0x25ee
	.dw #0x046e
	.dw #0x1907
	.dw #0x06af
	.dw #0x03c5
	.dw #0x1bbb
	.dw #0x1dfa
	.dw #0x0e9f
	.dw #0x192a
	.dw #0x28ae
	.dw #0x1fa4
	.dw #0x075d
	.dw #0x0698
	.dw #0x0554
	.dw #0x2859
	.dw #0x27b4
	.dw #0x23dc
	.dw #0x2fb2
	.dw #0x1860
	.dw #0x03e5
	.dw #0x0075
	.dw #0x12af
	.dw #0x1137
	.dw #0x060d
	.dw #0x1ba0
	.dw #0x0b0d
	.dw #0x193a
	.dw #0x114f
	.dw #0x22ad
	.dw #0x1be8
	.dw #0x0a04
	.dw #0x1620
	.dw #0x0fca
	.dw #0x2f9d
	.dw #0x01b0
	.dw #0x29ff
	.dw #0x04d5
	.dw #0x1dba
	.dw #0x05fe
	.dw #0x0f8f
	.dw #0x1eb7
	.dw #0x0885
	.dw #0x18a4
	.dw #0x2210
	.dw #0x19aa
	.dw #0x12eb
	.dw #0x069a
	.dw #0x000e
	.dw #0x0f20
	.dw #0x15c1
	.dw #0x2498
	.dw #0x2f83
	.dw #0x07e3
	.dw #0x1d77
	.dw #0x090b
	.dw #0x1241
	.dw #0x1cac
	.dw #0x0611
	.dw #0x0484
	.dw #0x20d1
	.dw #0x2c7d
	.dw #0x03fc
	.dw #0x0b97
	.dw #0x2a14
	.dw #0x1b85
	.dw #0x0cf4
	.dw #0x2be4
	.dw #0x14a5
	.dw #0x2d3a
	.dw #0x298d
	.dw #0x2766
	.dw #0x2515
	.dw #0x1824
	.dw #0x243d
	.dw #0x17f2
	.dw #0x0cfb
	.dw #0x0373
	.dw #0x28e5
	.dw #0x01e9
	.dw #0x05de
	.dw #0x0b23
	.dw #0x2b35
	.dw #0x2601
	.dw #0x0ab6
	.dw #0x2fd1
	.dw #0x136a
	.dw #0x28f1
	.dw #0x275e
	.dw #0x04ab
	.dw #0x02da
	.dw #0x06e2
	.dw #0x0f0e
	.dw #0x07ee
	.dw #0x1704
	.dw #0x2aaa
	.dw #0x233c
	.dw #0x149a
	.dw #0x23db
	.dw #0x0e14
	.dw #0x0ec6
	.dw #0x27de
	.dw #0x0c6c
	.dw #0x0d8b
	.dw #0x123c
	.dw #0x098e
	.dw #0x1dbd
	.dw #0x24aa
	.dw #0x0342
	.dw #0x1e17
	.dw #0x1ab4
	.dw #0x0d4b
	.dw #0x14e7
	.dw #0x2ff4
	.dw #0x0dfc
	.dw #0x06cb
	.dw #0x2a44
	.dw #0x263b
	.dw #0x27e1
	.dw #0x0fe6
	.dw #0x2fda
	.dw #0x214d
	.dw #0x28a1
	.dw #0x0abd
	.dw #0x1caa
	.dw #0x294e
	.dw #0x1798
	.dw #0x03af
	.dw #0x2472
	.dw #0x05c5
	.dw #0x1ad1
	.dw #0x25c4
	.dw #0x0e01
	.dw #0x19e9
	.dw #0x2f71
	.dw #0x0fdf
	.dw #0x0e64
	.dw #0x1e00
	.dw #0x1ffc
	.dw #0x1af6
	.dw #0x0dcd
	.dw #0x264f
	.dw #0x17ca
	.dw #0x02d7
	.dw #0x2773
	.dw #0x1b5b
	.dw #0x1b21
	.dw #0x079d
	.dw #0x2603
	.dw #0x293f
	.dw #0x17a9
	.dw #0x017a
	.dw #0x1ebf
	.dw #0x223b
	.dw #0x22c5
	.dw #0x240d
	.dw #0x228e
	.dw #0x11c7
	.dw #0x2575
	.dw #0x2d90
	.dw #0x1dce
	.dw #0x2275
	.dw #0x1630
	.dw #0x135c
	.dw #0x186b
	.dw #0x20c4
	.dw #0x27ac
	.dw #0x2213
	.dw #0x0925
	.dw #0x0c57
	.dw #0x05bb
	.dw #0x1554
	.dw #0x2169
	.dw #0x1e67
	.dw #0x0a59
	.dw #0x0910
	.dw #0x234c
	.dw #0x182c
	.dw #0x02e1
	.dw #0x0e72
	.dw #0x125b
	.dw #0x1679
	.dw #0x2356
	.dw #0x0e67
	.dw #0x0010
	.dw #0x0392
	.dw #0x1442
	.dw #0x2923
	.dw #0x11c8
	.dw #0x07ac
	.dw #0x0db5
	.dw #0x20f4
	.dw #0x1d5c
	.dw #0x1505
	.dw #0x29ed
	.dw #0x0cd1
	.dw #0x1b7d
	.dw #0x0424
	.dw #0x0b4f
	.dw #0x1bf4
	.dw #0x22b7
	.dw #0x14ed
	.dw #0x1909
	.dw #0x2005
	.dw #0x0b92
	.dw #0x18e7
	.dw #0x13c8
	.dw #0x19ea
	.dw #0x15f9
	.dw #0x0116
	.dw #0x03a4
	.dw #0x27f5
	.dw #0x22df
	.dw #0x1dda
	.dw #0x015f
	.dw #0x2452
	.dw #0x00ed
	.dw #0x16e2
	.dw #0x1e0c
	.dw #0x0c4a
	.dw #0x2f5e
	.dw #0x1da2
	.dw #0x0805
	.dw #0x2c15
	.dw #0x0eda
	.dw #0x1454
	.dw #0x11fa
	.dw #0x06d4
	.dw #0x2c24
	.dw #0x0154
	.dw #0x0e7f
	.dw #0x1206
	.dw #0x012c
	.dw #0x2af1
	.dw #0x13ce
	.dw #0x2741
	.dw #0x2d60
	.dw #0x2fd7
	.dw #0x1cfd
	.dw #0x29d3
	.dw #0x1672
	.dw #0x1616
	.dw #0x0efb
	.dw #0x15b1
	.dw #0x04c8
	.dw #0x211c
	.dw #0x2415
	.dw #0x0f05
	.dw #0x00fa
	.dw #0x2bc9
	.dw #0x1081
	.dw #0x18b6
	.dw #0x25d0
	.dw #0x2fde
	.dw #0x1028
	.dw #0x0ada
	.dw #0x02b4
	.dw #0x2268
	.dw #0x190a
	.dw #0x1a3e
	.dw #0x2779
	.dw #0x28b2
	.dw #0x0eaf
	.dw #0x1cbc
	.dw #0x2c61
	.dw #0x20f1
	.dw #0x1925
	.dw #0x0e44
	.dw #0x18c6
	.dw #0x2312
	.dw #0x150f
	.dw #0x08e0
	.dw #0x194c
	.dw #0x1cf8
	.dw #0x20e2
	.dw #0x2a48
	.dw #0x2ed2
	.dw #0x1665
	.dw #0x036c
	.dw #0x1b76
	.dw #0x0877
	.dw #0x0984
	.dw #0x0d72
	.dw #0x2401
	.dw #0x200e
	.dw #0x12fa
	.dw #0x174c
	.dw #0x0aba
	.dw #0x1c0a
	.dw #0x059a
	.dw #0x1cdd
	.dw #0x22af
	.dw #0x29a5
	.dw #0x2cc1
	.dw #0x107c
	.dw #0x0598
	.dw #0x2a50
	.dw #0x10e8
	.dw #0x216d
	.dw #0x074b
	.dw #0x24ee
	.dw #0x0970
	.dw #0x0ee8
	.dw #0x2374
	.dw #0x02ae
	.dw #0x1511
	.dw #0x09db
	.dw #0x10f3
	.dw #0x17e3
	.dw #0x026b
	.dw #0x03a9
	.dw #0x0b12
	.dw #0x1e5f
	.dw #0x0ccf
	.dw #0x093b
	.dw #0x1d40
	.dw #0x17e0
	.dw #0x13c0
	.dw #0x0338
	.dw #0x27dc
	.dw #0x2daa
	.dw #0x0459
	.dw #0x0aa7
	.dw #0x2678
	.dw #0x0380
	.dw #0x07ec
	.dw #0x13d3
	.dw #0x0a5e
	.dw #0x28e0
	.dw #0x1ecc
	.dw #0x2f89
	.dw #0x153a
	.dw #0x0bfe
	.dw #0x1900
	.dw #0x23ac
	.dw #0x2d98
	.dw #0x2f79
	.dw #0x11a8
	.dw #0x04f9
	.dw #0x260b
	.dw #0x2ccc
	.dw #0x26d1
	.dw #0x2737
	.dw #0x25f8
	.dw #0x08d6
	.dw #0x24b7
	.dw #0x2bb8
	.dw #0x013b
	.dw #0x119f
	.dw #0x0486
	.dw #0x17ad
	.dw #0x1a5f
	.dw #0x2e59
	.dw #0x0165
	.dw #0x1cc7
	.dw #0x11c6
	.dw #0x03d7
	.dw #0x2156
	.dw #0x20a0
	.dw #0x278e
	.dw #0x1d6a
	.dw #0x2425
	.dw #0x110f
	.dw #0x1465
	.dw #0x0f9f
	.dw #0x2249
	.dw #0x0c59
	.dw #0x1b4e
	.dw #0x1022
	.dw #0x2d84
	.dw #0x0d2e
	.dw #0x2cd5
	.dw #0x06d9
	.dw #0x0124
	.dw #0x21e9
	.dw #0x0af6
	.dw #0x288a
	.dw #0x2f9c
	.dw #0x16a8
	.dw #0x2e23
	.dw #0x0c6d
	.dw #0x07c4
	.dw #0x0400
	.dw #0x247c
	.dw #0x09ad
	.dw #0x2ab0
	.dw #0x11e6
	.dw #0x1a5e
	.dw #0x0e23
	.dw #0x157f
	.dw #0x1471
	.dw #0x099f
	.dw #0x2116
	.dw #0x1de2
	.dw #0x1f1c
	.dw #0x18fb
	.dw #0x042f
	.dw #0x04f8
	.dw #0x0d92
	.dw #0x2b25
	.dw #0x0cdb
	.dw #0x2c50
	.dw #0x2136
	.dw #0x2506
	.dw #0x266d
	.dw #0x04e5
	.dw #0x0741
	.dw #0x1859
	.dw #0x1270
	.dw #0x2d29
	.dw #0x1792
	.dw #0x2659
	.dw #0x0d0b
	.dw #0x0705
	.dw #0x0b3f
	.dw #0x1862
	.dw #0x1450
	.dw #0x0842
	.dw #0x1f1a
	.dw #0x2489
	.dw #0x2c63
	.dw #0x1563
	.dw #0x17c4
	.dw #0x2581
	.dw #0x100c
	.dw #0x1c9b
	.dw #0x28c6
	.dw #0x24ff
	.dw #0x04f7
	.dw #0x0198
	.dw #0x1aff
	.dw #0x0c07
	.dw #0x0168
	.dw #0x2054
	.dw #0x2d0f
	.dw #0x23c4
	.dw #0x2359
	.dw #0x2d13
	.dw #0x0352
	.dw #0x21a9
	.dw #0x0310
	.dw #0x1eef
	.dw #0x208e
	.dw #0x2f8a
	.dw #0x0736
	.dw #0x27e5
	.dw #0x2f98
	.dw #0x1e93
	.dw #0x2e7f
	.dw #0x15e0
	.dw #0x2633
	.dw #0x03f4
	.dw #0x02d1
	.dw #0x0ae0
	.dw #0x1a14
	.dw #0x1998
	.dw #0x14e4
	.dw #0x1148
	.dw #0x1aa0
	.dw #0x20d5
	.dw #0x26e7
	.dw #0x141e
	.dw #0x0934
	.dw #0x15b0
	.dw #0x1493
	.dw #0x0535
	.dw #0x2261
	.dw #0x25bd
	.dw #0x1c8c
	.dw #0x169c
	.dw #0x132e
	.dw #0x038d
	.dw #0x2d5d
	.dw #0x112b
	.dw #0x202e
	.dw #0x1a1e
	.dw #0x10ce
	.dw #0x0be4
	.dw #0x08ed
	.dw #0x2fd9
	.dw #0x07ab
	.dw #0x2400
	.dw #0x10c8
	.dw #0x2e8e
	.dw #0x02b7
	.dw #0x1113
	.dw #0x2641
	.dw #0x1314
	.dw #0x096b
	.dw #0x27f6
	.dw #0x0a5a
	.dw #0x0349
	.dw #0x0f32
	.dw #0x27f7
	.dw #0x1c50
	.dw #0x2139
	.dw #0x2bbc
	.dw #0x1a20
	.dw #0x0fdb
	.dw #0x17ac
	.dw #0x0e66
	.dw #0x1272
	.dw #0x2e4d
	.dw #0x16b8
	.dw #0x1b92
	.dw #0x1ad4
	.dw #0x2b81
	.dw #0x1ef6
	.dw #0x131e
	.dw #0x2ffc
	.dw #0x1006
	.dw #0x0f44
	.dw #0x0e1a
	.dw #0x197d
	.dw #0x1f02
	.dw #0x1f2e
	.dw #0x2ec9
	.dw #0x1a63
	.dw #0x0219
	.dw #0x11d2
	.dw #0x0657
	.dw #0x2023
	.dw #0x2cbd
	.dw #0x1d78
	.dw #0x038a
	.dw #0x2e28
	.dw #0x254c
	.dw #0x2a6a
	.dw #0x25e7
	.dw #0x0aff
	.dw #0x2dd8
	.dw #0x1a9d
	.dw #0x1b43
	.dw #0x0333
	.dw #0x22c7
	.dw #0x187f
	.dw #0x2a5b
	.dw #0x015c
	.dw #0x1d5a
	.dw #0x2093
	.dw #0x1927
	.dw #0x02b6
	.dw #0x0354
	.dw #0x161b
	.dw #0x0add
	.dw #0x0e84
	.dw #0x2d45
	.dw #0x0bd0
	.dw #0x05f3
	.dw #0x21d3
	.dw #0x1012
	.dw #0x29f2
	.dw #0x0ce7
	.dw #0x16fd
	.dw #0x0ba2
	.dw #0x1c79
	.dw #0x2e6c
	.dw #0x23a3
	.dw #0x246b
	.dw #0x2e36
	.dw #0x0062
	.dw #0x09de
	.dw #0x0844
	.dw #0x1023
	.dw #0x2c8f
	.dw #0x0734
	.dw #0x0e3d
	.dw #0x0f4c
	.dw #0x1fc5
	.dw #0x08b0
	.dw #0x2a77
	.dw #0x1f9c
	.dw #0x25b3
	.dw #0x1765
	.dw #0x1be4
	.dw #0x2120
	.dw #0x0686
	.dw #0x009f
	.dw #0x2aab
	.dw #0x1336
	.dw #0x0080
	.dw #0x1c90
	.dw #0x02d5
	.dw #0x23c5
	.dw #0x138e
	.dw #0x18f9
	.dw #0x0da6
	.dw #0x179b
	.dw #0x2adc
	.dw #0x1825
	.dw #0x2e3e
	.dw #0x0d5f
	.dw #0x2912
	.dw #0x1df4
	.dw #0x0e6d
	.dw #0x1a02
	.dw #0x1af9
	.dw #0x2eb1
	.dw #0x27e4
	.dw #0x2e92
	.dw #0x238d
	.dw #0x20ad
	.dw #0x13f6
	.dw #0x002d
	.dw #0x0960
	.dw #0x0781
	.dw #0x1119
	.dw #0x0aa0
	.dw #0x069f
	.dw #0x0033
	.dw #0x0af8
	.dw #0x028a
	.dw #0x0768
	.dw #0x270d
	.dw #0x26f3
	.dw #0x2ecc
	.dw #0x1fa2
	.dw #0x12e1
	.dw #0x1027
	.dw #0x10a1
	.dw #0x16ce
	.dw #0x129d
	.dw #0x2ae9
	.dw #0x2d0c
	.dw #0x024e
	.dw #0x2fa6
	.dw #0x01e2
	.dw #0x2f8d
	.dw #0x07d6
	.dw #0x1b98
	.dw #0x2722
	.dw #0x0f48
	.dw #0x2ef0
	.dw #0x2917
	.dw #0x2c62
	.dw #0x1b2a
	.dw #0x08a2
	.dw #0x011c
	.dw #0x1525
	.dw #0x19c9
	.dw #0x0f19
	.dw #0x2863
	.dw #0x2bb4
	.dw #0x1857
	.dw #0x0205
	.dw #0x255c
	.dw #0x2c11
	.dw #0x0f17
	.dw #0x04ba
	.dw #0x11fc
	.dw #0x1fe0
	.dw #0x2cb7
	.dw #0x0099
	.dw #0x1c24
	.dw #0x1683
	.dw #0x13e1
	.dw #0x2420
	.dw #0x2f7a
	.dw #0x2de4
	.dw #0x054a
	.dw #0x1a10
	.dw #0x00b3
	.dw #0x159c
	.dw #0x0a56
	.dw #0x1735
	.dw #0x2f99
	.dw #0x035e
	.dw #0x0c56
	.dw #0x01dd
	.dw #0x1c6f
	.dw #0x162e
	.dw #0x1eea
	.dw #0x109e
	.dw #0x012e
	.dw #0x0b4d
	.dw #0x2782
	.dw #0x1aea
	.dw #0x2558
	.dw #0x25af
	.dw #0x2e81
	.dw #0x1002
	.dw #0x2660
	.dw #0x281d
	.dw #0x0549
	.dw #0x29db
	.dw #0x14cd
	.dw #0x186e
	.dw #0x0f6f
	.dw #0x070f
	.dw #0x1931
	.dw #0x1427
	.dw #0x051c
	.dw #0x207b
	.dw #0x0d4c
	.dw #0x0755
	.dw #0x04cf
	.dw #0x0070
	.dw #0x18fe
	.dw #0x2dcc
	.dw #0x2ff0
	.dw #0x1c76
	.dw #0x05b3
	.dw #0x2ff2
	.dw #0x26a8
	.dw #0x0d80
	.dw #0x0320
	.dw #0x0575
	.dw #0x29b6
	.dw #0x0067
	.dw #0x1cfc
	.dw #0x1f28
	.dw #0x03a8
	.dw #0x02fc
	.dw #0x0278
	.dw #0x1f3c
	.dw #0x201f
	.dw #0x20fd
	.dw #0x1e4e
	.dw #0x2a76
	.dw #0x2563
	.dw #0x09cc
	.dw #0x079a
	.dw #0x197c
	.dw #0x27ae
	.dw #0x0414
	.dw #0x10f2
	.dw #0x0999
	.dw #0x0e39
	.dw #0x067b
	.dw #0x102b
	.dw #0x1250
	.dw #0x2605
	.dw #0x2b8c
	.dw #0x0f6a
	.dw #0x0822
	.dw #0x148d
	.dw #0x07f4
	.dw #0x2e4a
	.dw #0x1dd4
	.dw #0x2fcc
	.dw #0x14f6
	.dw #0x094c
	.dw #0x0577
	.dw #0x1e28
	.dw #0x0834
	.dw #0x0c91
	.dw #0x2aa0
	.dw #0x22c2
	.dw #0x1d9a
	.dw #0x2edb
	.dw #0x0ae7
	.dw #0x04bf
	.dw #0x0d1b
	.dw #0x0a97
	.dw #0x08db
	.dw #0x07d4
	.dw #0x2178
	.dw #0x27c0
	.dw #0x0c8e
	.dw #0x0921
	.dw #0x06d6
	.dw #0x1279
	.dw #0x1385
	.dw #0x1cf7
	.dw #0x18ab
	.dw #0x2f0c
	.dw #0x1116
	.dw #0x1bf5
	.dw #0x12ec
	.dw #0x00d3
	.dw #0x1f43
	.dw #0x27af
	.dw #0x244a
	.dw #0x2cd9
	.dw #0x06c7
	.dw #0x0920
	.dw #0x16a1
	.dw #0x2693
	.dw #0x2000
	.dw #0x03da
	.dw #0x1d67
	.dw #0x0579
	.dw #0x0366
	.dw #0x0e1f
	.dw #0x2111
	.dw #0x0ac4
	.dw #0x262a
	.dw #0x07f2
	.dw #0x27b8
	.dw #0x0cc0
	.dw #0x17f4
	.dw #0x0036
	.dw #0x0b40
	.dw #0x129b
	.dw #0x2e1d
	.dw #0x0c02
	.dw #0x205e
	.dw #0x24d4
	.dw #0x1311
	.dw #0x1b15
	.dw #0x0442
	.dw #0x2736
	.dw #0x0a07
	.dw #0x02c4
	.dw #0x037d
	.dw #0x1941
	.dw #0x1362
	.dw #0x2728
	.dw #0x082a
	.dw #0x1656
	.dw #0x29f7
	.dw #0x030c
	.dw #0x127d
	.dw #0x120f
	.dw #0x0856
	.dw #0x0827
	.dw #0x12c2
	.dw #0x0374
	.dw #0x14fc
	.dw #0x16a3
	.dw #0x1732
	.dw #0x10ed
	.dw #0x199f
	.dw #0x1d7d
	.dw #0x1495
	.dw #0x29a8
	.dw #0x109c
	.dw #0x0cbc
	.dw #0x171d
	.dw #0x2a3e
	.dw #0x1688
	.dw #0x26ff
	.dw #0x1fa0
	.dw #0x1e6f
	.dw #0x1a90
	.dw #0x1d43
	.dw #0x1880
	.dw #0x0773
	.dw #0x2ac3
	.dw #0x1891
	.dw #0x2e1b
	.dw #0x1790
	.dw #0x2cb9
	.dw #0x0493
	.dw #0x23f1
	.dw #0x1efd
	.dw #0x09af
	.dw #0x1f22
	.dw #0x2c49
	.dw #0x1b96
	.dw #0x22cf
	.dw #0x1a48
	.dw #0x198e
	.dw #0x1fb2
	.dw #0x227c
	.dw #0x19c3
	.dw #0x0dd9
	.dw #0x10fc
	.dw #0x1202
	.dw #0x089d
	.dw #0x1b57
	.dw #0x1faa
	.dw #0x15b8
	.dw #0x2896
	.dw #0x2469
	.dw #0x09c3
	.dw #0x096d
	.dw #0x1c68
	.dw #0x1ae1
	.dw #0x2956
	.dw #0x245c
	.dw #0x24dd
	.dw #0x0de2
	.dw #0x0cfe
	.dw #0x1767
	.dw #0x2ec1
	.dw #0x0d57
	.dw #0x2ffb
	.dw #0x266e
	.dw #0x2f1f
	.dw #0x10ec
	.dw #0x1e96
	.dw #0x2c41
	.dw #0x19cd
	.dw #0x2fef
	.dw #0x07fc
	.dw #0x2d5b
	.dw #0x1cb9
	.dw #0x2bc1
	.dw #0x2d3e
	.dw #0x0e95
	.dw #0x22ef
	.dw #0x26fa
	.dw #0x065b
	.dw #0x1c00
	.dw #0x0f5f
	.dw #0x13ba
	.dw #0x0aca
	.dw #0x1d48
	.dw #0x288f
	.dw #0x02f3
	.dw #0x0676
	.dw #0x2f15
	.dw #0x1358
	.dw #0x2796
	.dw #0x112a
	.dw #0x19c0
	.dw #0x1eda
	.dw #0x1d49
	.dw #0x22c8
	.dw #0x2efd
	.dw #0x0dfd
	.dw #0x29fc
	.dw #0x162a
	.dw #0x2876
	.dw #0x1325
	.dw #0x1cf6
	.dw #0x2243
	.dw #0x02c6
	.dw #0x1a6c
	.dw #0x210e
	.dw #0x1c19
	.dw #0x14fb
	.dw #0x1c6a
	.dw #0x2b4c
	.dw #0x0122
	.dw #0x1eb8
	.dw #0x1aab
	.dw #0x2e2e
	.dw #0x09cd
	.dw #0x19b2
	.dw #0x0fba
	.dw #0x16af
	.dw #0x05b2
	.dw #0x1659
	.dw #0x1682
	.dw #0x1052
	.dw #0x0839
	.dw #0x2d65
	.dw #0x12f4
	.dw #0x22c1
	.dw #0x0b28
	.dw #0x2cf6
	.dw #0x2430
	.dw #0x09d8
	.dw #0x2248
	.dw #0x1b63
	.dw #0x0a57
	.dw #0x076a
	.dw #0x1b7f
	.dw #0x173e
	.dw #0x2b9b
	.dw #0x1570
	.dw #0x1885
	.dw #0x23de
	.dw #0x2cc0
	.dw #0x0279
	.dw #0x273e
	.dw #0x2d22
	.dw #0x1601
	.dw #0x2573
	.dw #0x091d
	.dw #0x1b60
	.dw #0x1bac
	.dw #0x13b7
	.dw #0x1c1f
	.dw #0x2689
	.dw #0x2325
	.dw #0x0239
	.dw #0x18f6
	.dw #0x2a5d
	.dw #0x25cf
	.dw #0x204c
	.dw #0x2cd0
	.dw #0x106b
	.dw #0x07cd
	.dw #0x0002
	.dw #0x2473
	.dw #0x00a2
	.dw #0x1826
	.dw #0x07d0
	.dw #0x0e41
	.dw #0x2640
	.dw #0x18db
	.dw #0x1d85
	.dw #0x182b
	.dw #0x213e
	.dw #0x26cf
	.dw #0x15a0
	.dw #0x233b
	.dw #0x0e7a
	.dw #0x2ee9
	.dw #0x05ac
	.dw #0x0bfb
	.dw #0x1576
	.dw #0x25dc
	.dw #0x1301
	.dw #0x1783
	.dw #0x1bc2
	.dw #0x258a
	.dw #0x11ec
	.dw #0x27b5
	.dw #0x1875
	.dw #0x16ff
	.dw #0x0a5c
	.dw #0x27bc
	.dw #0x062c
	.dw #0x288b
	.dw #0x121e
	.dw #0x26dd
_iGMb:
	.dw #0x0ffb
	.dw #0x1131
	.dw #0x0439
	.dw #0x04cd
	.dw #0x09e2
	.dw #0x177e
	.dw #0x1f0b
	.dw #0x14d1
	.dw #0x0a13
	.dw #0x128f
	.dw #0x1940
	.dw #0x2db7
	.dw #0x1b6f
	.dw #0x0afc
	.dw #0x1702
	.dw #0x29ca
	.dw #0x0c25
	.dw #0x084d
	.dw #0x07a8
	.dw #0x2aad
	.dw #0x2969
	.dw #0x28a4
	.dw #0x105d
	.dw #0x0753
	.dw #0x16d7
	.dw #0x2162
	.dw #0x1207
	.dw #0x1446
	.dw #0x2c3c
	.dw #0x2952
	.dw #0x16fa
	.dw #0x2b93
	.dw #0x20e1
	.dw #0x2ff3
	.dw #0x2967
	.dw #0x1d16
	.dw #0x1657
	.dw #0x0df1
	.dw #0x175d
	.dw #0x277c
	.dw #0x114a
	.dw #0x2072
	.dw #0x2a03
	.dw #0x1247
	.dw #0x2b2c
	.dw #0x0602
	.dw #0x2e51
	.dw #0x0064
	.dw #0x2037
	.dw #0x19e1
	.dw #0x25fd
	.dw #0x1419
	.dw #0x0d54
	.dw #0x1eb2
	.dw #0x16c7
	.dw #0x24f4
	.dw #0x1461
	.dw #0x29f4
	.dw #0x1eca
	.dw #0x1d52
	.dw #0x2f8c
	.dw #0x2c1c
	.dw #0x17a1
	.dw #0x004f
	.dw #0x000d
	.dw #0x1b1a
	.dw #0x22b6
	.dw #0x154d
	.dw #0x11ea
	.dw #0x2cbf
	.dw #0x0b57
	.dw #0x1244
	.dw #0x2673
	.dw #0x1dc5
	.dw #0x2276
	.dw #0x2395
	.dw #0x0823
	.dw #0x213b
	.dw #0x21ed
	.dw #0x0c26
	.dw #0x1b67
	.dw #0x0cc5
	.dw #0x0557
	.dw #0x18fd
	.dw #0x2813
	.dw #0x20f3
	.dw #0x291f
	.dw #0x2d27
	.dw #0x2b56
	.dw #0x08a3
	.dw #0x0710
	.dw #0x1c97
	.dw #0x0030
	.dw #0x254b
	.dw #0x0a00
	.dw #0x04cc
	.dw #0x24de
	.dw #0x2a23
	.dw #0x2e18
	.dw #0x071c
	.dw #0x2c8e
	.dw #0x2306
	.dw #0x180f
	.dw #0x0bc4
	.dw #0x17dd
	.dw #0x0aec
	.dw #0x089b
	.dw #0x0674
	.dw #0x02c7
	.dw #0x1b5c
	.dw #0x041d
	.dw #0x230d
	.dw #0x147c
	.dw #0x05ed
	.dw #0x246a
	.dw #0x2c05
	.dw #0x0384
	.dw #0x0f30
	.dw #0x2b7d
	.dw #0x29f0
	.dw #0x1355
	.dw #0x1dc0
	.dw #0x26f6
	.dw #0x128a
	.dw #0x281e
	.dw #0x007e
	.dw #0x0b69
	.dw #0x1a40
	.dw #0x19eb
	.dw #0x198f
	.dw #0x062e
	.dw #0x1304
	.dw #0x002a
	.dw #0x02a1
	.dw #0x08c0
	.dw #0x1c33
	.dw #0x0510
	.dw #0x2ed5
	.dw #0x1dfb
	.dw #0x2182
	.dw #0x2ead
	.dw #0x03dd
	.dw #0x292d
	.dw #0x1e07
	.dw #0x1bad
	.dw #0x2127
	.dw #0x03ec
	.dw #0x27fc
	.dw #0x125f
	.dw #0x00a3
	.dw #0x23b7
	.dw #0x11f5
	.dw #0x191f
	.dw #0x2f14
	.dw #0x0baf
	.dw #0x2ea2
	.dw #0x1227
	.dw #0x0d22
	.dw #0x080c
	.dw #0x2c5d
	.dw #0x2eeb
	.dw #0x1a08
	.dw #0x1617
	.dw #0x1c39
	.dw #0x171a
	.dw #0x246f
	.dw #0x0ffc
	.dw #0x16f8
	.dw #0x1b14
	.dw #0x0d4a
	.dw #0x140d
	.dw #0x24b2
	.dw #0x2bdd
	.dw #0x1484
	.dw #0x2330
	.dw #0x0614
	.dw #0x1afc
	.dw #0x12a5
	.dw #0x0f0d
	.dw #0x224c
	.dw #0x2855
	.dw #0x1e39
	.dw #0x06de
	.dw #0x1bbf
	.dw #0x2c6f
	.dw #0x2ff1
	.dw #0x219a
	.dw #0x0cab
	.dw #0x1988
	.dw #0x1da6
	.dw #0x218f
	.dw #0x2d20
	.dw #0x17d5
	.dw #0x0cb5
	.dw #0x26f1
	.dw #0x25a8
	.dw #0x119a
	.dw #0x0e98
	.dw #0x1aad
	.dw #0x2a46
	.dw #0x23aa
	.dw #0x26dc
	.dw #0x0dee
	.dw #0x0855
	.dw #0x0f3d
	.dw #0x1796
	.dw #0x1ca5
	.dw #0x19d1
	.dw #0x0d8c
	.dw #0x1233
	.dw #0x0271
	.dw #0x0a8c
	.dw #0x1e3a
	.dw #0x0d73
	.dw #0x0bf4
	.dw #0x0d3c
	.dw #0x0dc6
	.dw #0x1142
	.dw #0x2e87
	.dw #0x1858
	.dw #0x06c2
	.dw #0x09fe
	.dw #0x2864
	.dw #0x14e0
	.dw #0x14a6
	.dw #0x088e
	.dw #0x2d2a
	.dw #0x1837
	.dw #0x09b2
	.dw #0x2234
	.dw #0x150b
	.dw #0x1005
	.dw #0x1201
	.dw #0x219d
	.dw #0x2022
	.dw #0x0090
	.dw #0x1618
	.dw #0x2200
	.dw #0x0a3d
	.dw #0x1530
	.dw #0x2a3c
	.dw #0x0b8f
	.dw #0x2c52
	.dw #0x1869
	.dw #0x06b3
	.dw #0x1357
	.dw #0x2544
	.dw #0x0760
	.dw #0x0eb4
	.dw #0x0027
	.dw #0x201b
	.dw #0x0820
	.dw #0x09c6
	.dw #0x05bd
	.dw #0x2936
	.dw #0x2205
	.dw #0x15e1
	.dw #0x0445
	.dw #0x0ec8
	.dw #0x13b1
	.dw #0x080a
	.dw #0x20cf
	.dw #0x2cb8
	.dw #0x25a7
	.dw #0x080b
	.dw #0x2696
	.dw #0x1ced
	.dw #0x09c0
	.dw #0x1eee
	.dw #0x2d4a
	.dw #0x0173
	.dw #0x1f39
	.dw #0x0c01
	.dw #0x2856
	.dw #0x0028
	.dw #0x2714
	.dw #0x241d
	.dw #0x1f33
	.dw #0x15e3
	.dw #0x0fd3
	.dw #0x1ed6
	.dw #0x02a4
	.dw #0x2c74
	.dw #0x1cd3
	.dw #0x1965
	.dw #0x1375
	.dw #0x0a44
	.dw #0x0da0
	.dw #0x2acc
	.dw #0x1b6e
	.dw #0x1a51
	.dw #0x26cd
	.dw #0x1be3
	.dw #0x091a
	.dw #0x0f2c
	.dw #0x1561
	.dw #0x1eb9
	.dw #0x1b1d
	.dw #0x1669
	.dw #0x15ed
	.dw #0x2521
	.dw #0x2d30
	.dw #0x2c0d
	.dw #0x09ce
	.dw #0x1a21
	.dw #0x0182
	.dw #0x116e
	.dw #0x0069
	.dw #0x081c
	.dw #0x28cb
	.dw #0x0077
	.dw #0x0f73
	.dw #0x1112
	.dw #0x2cf1
	.dw #0x0e58
	.dw #0x2caf
	.dw #0x02ee
	.dw #0x0ca8
	.dw #0x0c3d
	.dw #0x02f2
	.dw #0x0fad
	.dw #0x2e99
	.dw #0x23fa
	.dw #0x1502
	.dw #0x2e69
	.dw #0x2b0a
	.dw #0x0b02
	.dw #0x073b
	.dw #0x1366
	.dw #0x1ff5
	.dw #0x0a80
	.dw #0x183d
	.dw #0x1a9e
	.dw #0x039e
	.dw #0x0b78
	.dw #0x10e7
	.dw #0x27bf
	.dw #0x1bb1
	.dw #0x179f
	.dw #0x24c2
	.dw #0x28fc
	.dw #0x22f6
	.dw #0x09a8
	.dw #0x186f
	.dw #0x02d8
	.dw #0x1d91
	.dw #0x17a8
	.dw #0x28c0
	.dw #0x2b1c
	.dw #0x0994
	.dw #0x0afb
	.dw #0x0ecb
	.dw #0x03b1
	.dw #0x2326
	.dw #0x04dc
	.dw #0x226f
	.dw #0x2b09
	.dw #0x2bd2
	.dw #0x1706
	.dw #0x10e5
	.dw #0x121f
	.dw #0x0eeb
	.dw #0x2662
	.dw #0x1b90
	.dw #0x1a82
	.dw #0x21de
	.dw #0x15a3
	.dw #0x1e1b
	.dw #0x0551
	.dw #0x2654
	.dw #0x0b85
	.dw #0x2c01
	.dw #0x283d
	.dw #0x2394
	.dw #0x01de
	.dw #0x1959
	.dw #0x0065
	.dw #0x0777
	.dw #0x250b
	.dw #0x0e18
	.dw #0x2edd
	.dw #0x2928
	.dw #0x032c
	.dw #0x22d3
	.dw #0x027d
	.dw #0x1fdf
	.dw #0x14b3
	.dw #0x23a8
	.dw #0x0db8
	.dw #0x2062
	.dw #0x1b9c
	.dw #0x1ef2
	.dw #0x0bdc
	.dw #0x1297
	.dw #0x0873
	.dw #0x0f61
	.dw #0x0eab
	.dw #0x2c2a
	.dw #0x1e3b
	.dw #0x133a
	.dw #0x2e9c
	.dw #0x01a8
	.dw #0x15a2
	.dw #0x1854
	.dw #0x2b7b
	.dw #0x1e62
	.dw #0x2ec6
	.dw #0x0449
	.dw #0x0b4a
	.dw #0x272b
	.dw #0x0a09
	.dw #0x08ca
	.dw #0x0930
	.dw #0x0335
	.dw #0x09f6
	.dw #0x2b08
	.dw #0x1e59
	.dw #0x0088
	.dw #0x0269
	.dw #0x0c55
	.dw #0x1701
	.dw #0x2403
	.dw #0x1ac7
	.dw #0x0078
	.dw #0x1135
	.dw #0x0721
	.dw #0x25a3
	.dw #0x1c2e
	.dw #0x2815
	.dw #0x2c81
	.dw #0x0989
	.dw #0x255a
	.dw #0x2ba8
	.dw #0x0257
	.dw #0x0825
	.dw #0x2cc9
	.dw #0x1c41
	.dw #0x1821
	.dw #0x12c1
	.dw #0x26c6
	.dw #0x2332
	.dw #0x11a2
	.dw #0x24ef
	.dw #0x2c58
	.dw #0x2d96
	.dw #0x181e
	.dw #0x1f0e
	.dw #0x2626
	.dw #0x1af0
	.dw #0x2d53
	.dw #0x0c8d
	.dw #0x2119
	.dw #0x2691
	.dw #0x0b13
	.dw #0x28b6
	.dw #0x0e94
	.dw #0x1f19
	.dw #0x05b1
	.dw #0x2a69
	.dw #0x1f85
	.dw #0x0340
	.dw #0x065c
	.dw #0x0d52
	.dw #0x1324
	.dw #0x2a67
	.dw #0x13f7
	.dw #0x2547
	.dw #0x18b5
	.dw #0x1d07
	.dw #0x0ff3
	.dw #0x0c00
	.dw #0x228f
	.dw #0x267d
	.dw #0x278a
	.dw #0x148b
	.dw #0x2c95
	.dw #0x199c
	.dw #0x012f
	.dw #0x05b9
	.dw #0x0f1f
	.dw #0x1309
	.dw #0x16b5
	.dw #0x2721
	.dw #0x1af2
	.dw #0x0cef
	.dw #0x173b
	.dw #0x21bd
	.dw #0x16dc
	.dw #0x0f10
	.dw #0x03a0
	.dw #0x1345
	.dw #0x2152
	.dw #0x074f
	.dw #0x0888
	.dw #0x15c3
	.dw #0x16f7
	.dw #0x0d99
	.dw #0x2d4d
	.dw #0x2527
	.dw #0x1fd9
	.dw #0x0023
	.dw #0x0a31
	.dw #0x174b
	.dw #0x1f80
	.dw #0x0438
	.dw #0x2f07
	.dw #0x20fc
	.dw #0x0bec
	.dw #0x0ee5
	.dw #0x2b39
	.dw #0x1a50
	.dw #0x2106
	.dw #0x0924
	.dw #0x1de3
	.dw #0x0776
	.dw #0x29d5
	.dw #0x0845
	.dw #0x25a5
	.dw #0x1902
	.dw #0x178c
	.dw #0x084c
	.dw #0x1e15
	.dw #0x0a77
	.dw #0x143f
	.dw #0x187e
	.dw #0x1d00
	.dw #0x0a25
	.dw #0x1a8b
	.dw #0x2406
	.dw #0x2a55
	.dw #0x0118
	.dw #0x2187
	.dw #0x0cc6
	.dw #0x1a61
	.dw #0x0932
	.dw #0x0ec3
	.dw #0x17d6
	.dw #0x127c
	.dw #0x1726
	.dw #0x09c1
	.dw #0x21c0
	.dw #0x2831
	.dw #0x17db
	.dw #0x2f5f
	.dw #0x0b8e
	.dw #0x2fff
	.dw #0x2834
	.dw #0x1f96
	.dw #0x0331
	.dw #0x0fb5
	.dw #0x0a32
	.dw #0x05a4
	.dw #0x170b
	.dw #0x2dc8
	.dw #0x0cdc
	.dw #0x0978
	.dw #0x13e2
	.dw #0x1c4a
	.dw #0x1455
	.dw #0x14a1
	.dw #0x26e4
	.dw #0x0a8e
	.dw #0x1a00
	.dw #0x02df
	.dw #0x08c3
	.dw #0x2d88
	.dw #0x0341
	.dw #0x0c23
	.dw #0x177c
	.dw #0x1a91
	.dw #0x0466
	.dw #0x18c3
	.dw #0x1482
	.dw #0x2897
	.dw #0x25aa
	.dw #0x149e
	.dw #0x0db9
	.dw #0x2629
	.dw #0x0bd1
	.dw #0x030b
	.dw #0x24d9
	.dw #0x0d40
	.dw #0x1d0d
	.dw #0x029c
	.dw #0x27c8
	.dw #0x1faf
	.dw #0x197f
	.dw #0x19a8
	.dw #0x2a4f
	.dw #0x1952
	.dw #0x2047
	.dw #0x164f
	.dw #0x2634
	.dw #0x01d3
	.dw #0x1556
	.dw #0x1149
	.dw #0x2edf
	.dw #0x04b5
	.dw #0x1397
	.dw #0x1b06
	.dw #0x13e8
	.dw #0x0ef3
	.dw #0x1595
	.dw #0x2d3b
	.dw #0x0dbe
	.dw #0x130b
	.dw #0x1cdc
	.dw #0x078b
	.dw #0x19d7
	.dw #0x0605
	.dw #0x2204
	.dw #0x0104
	.dw #0x0d39
	.dw #0x12b8
	.dw #0x1127
	.dw #0x1641
	.dw #0x1ed7
	.dw #0x086b
	.dw #0x1ca9
	.dw #0x00ec
	.dw #0x298b
	.dw #0x2d0e
	.dw #0x0772
	.dw #0x12b9
	.dw #0x2537
	.dw #0x1c47
	.dw #0x20a2
	.dw #0x1401
	.dw #0x29a6
	.dw #0x0907
	.dw #0x0d12
	.dw #0x216c
	.dw #0x02c3
	.dw #0x0440
	.dw #0x1348
	.dw #0x02a6
	.dw #0x2805
	.dw #0x0012
	.dw #0x1634
	.dw #0x03c0
	.dw #0x116b
	.dw #0x1f15
	.dw #0x00e2
	.dw #0x0993
	.dw #0x0006
	.dw #0x22aa
	.dw #0x0140
	.dw #0x189a
	.dw #0x2303
	.dw #0x221f
	.dw #0x0b24
	.dw #0x0ba5
	.dw #0x06ab
	.dw #0x1520
	.dw #0x1399
	.dw #0x2694
	.dw #0x263e
	.dw #0x0b98
	.dw #0x076b
	.dw #0x1a49
	.dw #0x1057
	.dw #0x14aa
	.dw #0x2764
	.dw #0x1dff
	.dw #0x1f05
	.dw #0x2228
	.dw #0x163e
	.dw #0x0d85
	.dw #0x104f
	.dw #0x1673
	.dw #0x15b9
	.dw #0x0d32
	.dw #0x146b
	.dw #0x03b8
	.dw #0x10df
	.dw #0x2652
	.dw #0x1104
	.dw #0x0c10
	.dw #0x2b6e
	.dw #0x0348
	.dw #0x1871
	.dw #0x01e6
	.dw #0x1770
	.dw #0x053e
	.dw #0x288e
	.dw #0x1781
	.dw #0x12be
	.dw #0x1571
	.dw #0x1192
	.dw #0x1061
	.dw #0x0902
	.dw #0x1979
	.dw #0x05c3
	.dw #0x18e4
	.dw #0x2345
	.dw #0x1f65
	.dw #0x0659
	.dw #0x1b6c
	.dw #0x1284
	.dw #0x1662
	.dw #0x1f14
	.dw #0x18cf
	.dw #0x195e
	.dw #0x1b05
	.dw #0x2c8d
	.dw #0x1d3f
	.dw #0x27da
	.dw #0x27ab
	.dw #0x1df2
	.dw #0x1d84
	.dw #0x2cf5
	.dw #0x060a
	.dw #0x19ab
	.dw #0x27d7
	.dw #0x08d9
	.dw #0x1c9f
	.dw #0x16c0
	.dw #0x2c84
	.dw #0x2d3d
	.dw #0x25fa
	.dw #0x08cb
	.dw #0x2bbf
	.dw #0x14ec
	.dw #0x1cf0
	.dw #0x0b2d
	.dw #0x0fa3
	.dw #0x23ff
	.dw #0x01e4
	.dw #0x1d66
	.dw #0x24c1
	.dw #0x2fcb
	.dw #0x180d
	.dw #0x2341
	.dw #0x0849
	.dw #0x280f
	.dw #0x09d7
	.dw #0x253d
	.dw #0x0ef0
	.dw #0x21e2
	.dw #0x2c9b
	.dw #0x2a88
	.dw #0x129a
	.dw #0x2c27
	.dw #0x1001
	.dw #0x096e
	.dw #0x1960
	.dw #0x26e1
	.dw #0x293a
	.dw #0x0328
	.dw #0x0bb7
	.dw #0x0852
	.dw #0x10be
	.dw #0x2f2e
	.dw #0x1d15
	.dw #0x140c
	.dw #0x1eeb
	.dw #0x00f5
	.dw #0x1756
	.dw #0x130a
	.dw #0x1c7c
	.dw #0x1d88
	.dw #0x292b
	.dw #0x26e0
	.dw #0x2373
	.dw #0x0841
	.dw #0x0e89
	.dw #0x282d
	.dw #0x2726
	.dw #0x256a
	.dw #0x22e6
	.dw #0x2b42
	.dw #0x251a
	.dw #0x0126
	.dw #0x1267
	.dw #0x0d3f
	.dw #0x0561
	.dw #0x2370
	.dw #0x27cd
	.dw #0x11d9
	.dw #0x2a8a
	.dw #0x26b5
	.dw #0x1b0b
	.dw #0x0035
	.dw #0x122d
	.dw #0x01b7
	.dw #0x280d
	.dw #0x1b74
	.dw #0x27df
	.dw #0x2097
	.dw #0x0475
	.dw #0x09fc
	.dw #0x1db1
	.dw #0x1fd6
	.dw #0x2986
	.dw #0x21c8
	.dw #0x2668
	.dw #0x1f0f
	.dw #0x2bed
	.dw #0x0853
	.dw #0x1685
	.dw #0x2867
	.dw #0x2635
	.dw #0x0a9e
	.dw #0x058b
	.dw #0x11b3
	.dw #0x0f04
	.dw #0x0fe2
	.dw #0x10c5
	.dw #0x2d89
	.dw #0x2d05
	.dw #0x2c59
	.dw #0x10d9
	.dw #0x1305
	.dw #0x2f9a
	.dw #0x064b
	.dw #0x2a8c
	.dw #0x2ce1
	.dw #0x2281
	.dw #0x0959
	.dw #0x000f
	.dw #0x2a4e
	.dw #0x138b
	.dw #0x0011
	.dw #0x0235
	.dw #0x1703
	.dw #0x2f91
	.dw #0x2b32
	.dw #0x28ac
	.dw #0x22b5
	.dw #0x0f86
	.dw #0x2ae5
	.dw #0x1bda
	.dw #0x16d0
	.dw #0x28f2
	.dw #0x2092
	.dw #0x1793
	.dw #0x1b34
	.dw #0x0626
	.dw #0x2ab8
	.dw #0x07e4
	.dw #0x09a1
	.dw #0x1fff
	.dw #0x0180
	.dw #0x0a52
	.dw #0x0aa9
	.dw #0x1517
	.dw #0x087f
	.dw #0x24b4
	.dw #0x2ed3
	.dw #0x1f63
	.dw #0x1117
	.dw #0x19d3
	.dw #0x1392
	.dw #0x2e24
	.dw #0x23ab
	.dw #0x2ca3
	.dw #0x0068
	.dw #0x18cc
	.dw #0x25ab
	.dw #0x1a65
	.dw #0x2f4e
	.dw #0x15f1
	.dw #0x2ab7
	.dw #0x021d
	.dw #0x0087
	.dw #0x0be1
	.dw #0x1c20
	.dw #0x197e
	.dw #0x13dd
	.dw #0x2f68
	.dw #0x034a
	.dw #0x1021
	.dw #0x1e05
	.dw #0x2b47
	.dw #0x20ea
	.dw #0x03f0
	.dw #0x0aa5
	.dw #0x2dfc
	.dw #0x17aa
	.dw #0x044d
	.dw #0x079e
	.dw #0x20e8
	.dw #0x1638
	.dw #0x1adc
	.dw #0x2ee5
	.dw #0x275f
	.dw #0x14d7
	.dw #0x039f
	.dw #0x06ea
	.dw #0x0111
	.dw #0x20b9
	.dw #0x08df
	.dw #0x1469
	.dw #0x282b
	.dw #0x0074
	.dw #0x2e1f
	.dw #0x005b
	.dw #0x2db3
	.dw #0x02f5
	.dw #0x0518
	.dw #0x1d64
	.dw #0x1933
	.dw #0x1f60
	.dw #0x1fda
	.dw #0x1d20
	.dw #0x105f
	.dw #0x0135
	.dw #0x090e
	.dw #0x08f4
	.dw #0x2899
	.dw #0x2d77
	.dw #0x2509
	.dw #0x2fce
	.dw #0x2962
	.dw #0x2561
	.dw #0x1ee8
	.dw #0x2880
	.dw #0x26a1
	.dw #0x2fd4
	.dw #0x1c0b
	.dw #0x0f54
	.dw #0x0c74
	.dw #0x016f
	.dw #0x081d
	.dw #0x0150
	.dw #0x1508
	.dw #0x15ff
	.dw #0x2194
	.dw #0x120d
	.dw #0x06ef
	.dw #0x22a2
	.dw #0x01c3
	.dw #0x17dc
	.dw #0x0525
	.dw #0x1866
	.dw #0x225b
	.dw #0x1708
	.dw #0x1c73
	.dw #0x0c3c
	.dw #0x2d2c
	.dw #0x1371
	.dw #0x2f81
	.dw #0x1ccb
	.dw #0x0556
	.dw #0x2f62
	.dw #0x297b
	.dw #0x0ee1
	.dw #0x141d
	.dw #0x189c
	.dw #0x0a4e
	.dw #0x1065
	.dw #0x058a
	.dw #0x2751
	.dw #0x103c
	.dw #0x20b5
	.dw #0x21c4
	.dw #0x28cd
	.dw #0x0372
	.dw #0x1fde
	.dw #0x27bd
	.dw #0x2623
	.dw #0x2f9f
	.dw #0x01cb
	.dw #0x0b96
	.dw #0x0c5e
	.dw #0x0195
	.dw #0x1388
	.dw #0x245f
	.dw #0x1904
	.dw #0x231a
	.dw #0x060f
	.dw #0x1fef
	.dw #0x0e2e
	.dw #0x2a0e
	.dw #0x2431
	.dw #0x02bc
	.dw #0x217d
	.dw #0x2524
	.dw #0x19e6
	.dw #0x2cad
	.dw #0x2d4b
	.dw #0x16da
	.dw #0x0f6e
	.dw #0x12a7
	.dw #0x2ea5
	.dw #0x05a6
	.dw #0x1782
	.dw #0x0d3a
	.dw #0x2cce
	.dw #0x14be
	.dw #0x1564
	.dw #0x0229
	.dw #0x2502
	.dw #0x0a1a
	.dw #0x0597
	.dw #0x0ab5
	.dw #0x01d9
	.dw #0x2c77
	.dw #0x1289
	.dw #0x0344
	.dw #0x0fde
	.dw #0x29aa
	.dw #0x1e2f
	.dw #0x2de8
	.dw #0x159e
	.dw #0x0138
	.dw #0x10d3
	.dw #0x10ff
	.dw #0x1684
	.dw #0x21e7
	.dw #0x20bd
	.dw #0x1ffb
	.dw #0x0005
	.dw #0x1ce3
	.dw #0x110b
	.dw #0x0480
	.dw #0x152d
	.dw #0x146f
	.dw #0x1949
	.dw #0x01b4
	.dw #0x1d8f
	.dw #0x219b
	.dw #0x1855
	.dw #0x2026
;cases/./../tests/falcon-ntt.c:1748: mq_add(uint32_t x, uint32_t y)
;	genLabel
;	genFunction
;	---------------------------------
; Function mq_add
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_mq_add:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1759: d = x + y - Q;
;	genPlus
	ld	a, e
	add	a, 4 (ix)
	ld	e, a
	ld	a, d
	adc	a, 5 (ix)
	ld	d, a
	ld	a, c
	adc	a, 6 (ix)
	ld	c, a
	ld	a, b
	adc	a, 7 (ix)
	ld	b, a
;	genMinus
	ld	a, e
	add	a, #0xff
	ld	-4 (ix), a
	ld	a, d
	adc	a, #0xcf
	ld	-3 (ix), a
	ld	a, c
	adc	a, #0xff
	ld	-2 (ix), a
	ld	a, b
	adc	a, #0xff
;cases/./../tests/falcon-ntt.c:1760: d += Q & -(d >> 31);
;	genRightShift
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded e from a instead of going through -1 (ix).
	ld	-1 (ix), a
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 1 removed dead load from #0x0000 into hl.
	ld	b, #0x07
00103$:
	srl	e
; common peephole 159 removed unused label 00104$.
	djnz	00103$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	xor	a, a
	sub	a, e
	ld	c, a
	sbc	a, a
	ld	b, a
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into e.
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into d.
;	genAnd
	ld	a, c
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	and	a, #0x30
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genPlus
	ld	a, -4 (ix)
	add	a, c
	ld	e, a
	ld	a, -3 (ix)
	adc	a, b
	ld	d, a
	ld	a, -2 (ix)
	adc	a, l
	ld	l, a
	ld	a, -1 (ix)
	adc	a, h
	ld	h, a
;cases/./../tests/falcon-ntt.c:1761: return d;
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/falcon-ntt.c:1762: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total mq_add function size at codegen: 5 bytes.
;cases/./../tests/falcon-ntt.c:1768: mq_sub(uint32_t x, uint32_t y)
;	genLabel
;	genFunction
;	---------------------------------
; Function mq_sub
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_mq_sub:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1776: d = x - y;
;	genMinus
	ld	a, e
	sub	a, 4 (ix)
	ld	-4 (ix), a
	ld	a, d
	sbc	a, 5 (ix)
	ld	-3 (ix), a
	ld	a, l
	sbc	a, 6 (ix)
	ld	-2 (ix), a
	ld	a, h
	sbc	a, 7 (ix)
;cases/./../tests/falcon-ntt.c:1777: d += Q & -(d >> 31);
;	genRightShift
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded e from a instead of going through -1 (ix).
	ld	-1 (ix), a
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 1 removed dead load from #0x0000 into hl.
	ld	b, #0x07
00103$:
	srl	e
; common peephole 159 removed unused label 00104$.
	djnz	00103$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	xor	a, a
	sub	a, e
	ld	c, a
	sbc	a, a
	ld	b, a
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into e.
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into d.
;	genAnd
	ld	a, c
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	and	a, #0x30
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genPlus
	ld	a, -4 (ix)
	add	a, c
	ld	e, a
	ld	a, -3 (ix)
	adc	a, b
	ld	d, a
	ld	a, -2 (ix)
	adc	a, l
	ld	l, a
	ld	a, -1 (ix)
	adc	a, h
	ld	h, a
;cases/./../tests/falcon-ntt.c:1778: return d;
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/falcon-ntt.c:1779: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total mq_sub function size at codegen: 5 bytes.
;cases/./../tests/falcon-ntt.c:1785: mq_rshift1(uint32_t x)
;	genLabel
;	genFunction
;	---------------------------------
; Function mq_rshift1
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_mq_rshift1:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
;	genReceive
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 50c eliminated dead push/inc sp pair.
	push	de
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1787: x += Q & -(x & 1);
;	genAnd
	ld	a, -4 (ix)
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into b.
	ld	hl, #0x0000
;	genUminus
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	ld	b, a
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into e.
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into d.
;	genAnd
	ld	a, c
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	and	a, #0x30
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -4 (ix)
	add	a, c
	ld	e, a
	ld	a, -3 (ix)
	adc	a, b
	ld	d, a
	ld	a, -2 (ix)
	adc	a, l
	ld	l, a
	ld	a, -1 (ix)
	adc	a, h
	ld	h, a
;cases/./../tests/falcon-ntt.c:1788: return (x >> 1);
;	genRightShift
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	srl	h
	rr	l
	rr	d
	rr	e
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/falcon-ntt.c:1789: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total mq_rshift1 function size at codegen: 5 bytes.
;cases/./../tests/falcon-ntt.c:1797: mq_montymul(uint32_t x, uint32_t y)
;	genLabel
;	genFunction
;	---------------------------------
; Function mq_montymul
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
_mq_montymul:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -4
	push	af
	push	af
;	genReceive
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1808: z = x * y;
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 6 (ix)
	ld	b, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	c, 4 (ix)
	ld	b, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	push	bc
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1809: w = ((z * Q0I) & 0xFFFF) * Q;
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
	push	bc
	push	de
	push	bc
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x2fff
	ld	hl, #0x0000
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	de
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genIpush
; common peephole 51a eliminated dead pop/push bc pair.
; common peephole 51a eliminated dead pop/push de pair.
	ld	hl, #0x0000
	push	hl
	push	iy
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x3001
;cases/./../tests/falcon-ntt.c:1817: z = (z + w) >> 16;
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	de
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genPlus
	push	iy
	ld	a, -6 (ix)
	pop	iy
	add	a, e
; common peephole 1 removed dead load from a into e.
	push	iy
	ld	a, -5 (ix)
	pop	iy
	adc	a, d
; common peephole 1 removed dead load from a into d.
	ld	a, l
	adc	a, c
	ld	c, a
	ld	a, h
	adc	a, b
	ld	b, a
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1824: z -= Q;
;	genMinus
	ld	a, c
	add	a, #0xff
	ld	-4 (ix), a
	ld	a, b
	adc	a, #0xcf
	ld	-3 (ix), a
	ld	a, e
	adc	a, #0xff
	ld	-2 (ix), a
	ld	a, d
	adc	a, #0xff
;cases/./../tests/falcon-ntt.c:1825: z += Q & -(z >> 31);
;	genRightShift
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded e from a instead of going through -1 (ix).
	ld	-1 (ix), a
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 1 removed dead load from #0x0000 into hl.
	ld	b, #0x07
00105$:
	srl	e
; common peephole 159 removed unused label 00106$.
	djnz	00105$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	xor	a, a
	sub	a, e
	ld	c, a
	sbc	a, a
	ld	b, a
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into e.
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into d.
;	genAnd
	ld	a, c
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	and	a, #0x30
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0000
;	genPlus
	ld	a, -4 (ix)
	add	a, c
	ld	e, a
	ld	a, -3 (ix)
	adc	a, b
	ld	d, a
	ld	a, -2 (ix)
	adc	a, l
	ld	l, a
	ld	a, -1 (ix)
	adc	a, h
	ld	h, a
;cases/./../tests/falcon-ntt.c:1826: return z;
;	genRet
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/falcon-ntt.c:1827: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total mq_montymul function size at codegen: 5 bytes.
;cases/./../tests/falcon-ntt.c:1910: mq_NTT(uint16_t *a, unsigned logn)
;	genLabel
;	genFunction
;	---------------------------------
; Function mq_NTT
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 44 bytes.
_mq_NTT:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -44
	ld	iy, #-44
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1914: n = (size_t)1 << logn;
;	genLeftShift
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-44 (ix), #0x01
	ld	-43 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	e
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00169$
00168$:
	sla	-44 (ix)
	rl	-43 (ix)
00169$:
	dec	e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00168$
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1915: t = n;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -44 (ix)
	ld	-42 (ix), a
	ld	a, -43 (ix)
	ld	-41 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1916: for (m = 1; m < n; m <<= 1) {
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), #0x01
	ld	-7 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	skipping iCode since result will be rematerialized
;	genLabel
00114$:
;	genCmpLt
	ld	a, -8 (ix)
	sub	a, -44 (ix)
	ld	a, -7 (ix)
	sbc	a, -43 (ix)
	jp	nc, 00116$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:1919: ht = t >> 1;
;	genRightShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -42 (ix)
	ld	-40 (ix), a
	ld	a, -41 (ix)
	ld	-39 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	srl	-39 (ix)
	rr	-40 (ix)
;cases/./../tests/falcon-ntt.c:1920: for (i = 0, j1 = 0; i < m; i ++, j1 += t) {
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;	genLabel
00111$:
;	genCmpLt
	ld	a, -4 (ix)
	sub	a, -8 (ix)
	ld	a, -3 (ix)
	sbc	a, -7 (ix)
	jp	nc, 00102$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:1924: s = GMb[m + i];
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-12 (ix), a
	ld	a, -1 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-12 (ix)
	rl	-11 (ix)
;	genPlus
	ld	a, #<(_GMb)
	add	a, -12 (ix)
	ld	-2 (ix), a
	ld	a, #>(_GMb)
	adc	a, -11 (ix)
	ld	-1 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-38 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-37 (ix), a
;cases/./../tests/falcon-ntt.c:1925: j2 = j1 + ht;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -40 (ix)
	ld	d, -39 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-36 (ix), l
	ld	-35 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/falcon-ntt.c:1926: for (j = j1; j < j2; j ++) {
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00108$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, -36 (ix)
	ld	a, -1 (ix)
	sbc	a, -35 (ix)
	jp	nc, 00112$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:1929: u = a[j];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, -10 (ix)
	ld	-34 (ix), a
	ld	a, h
	adc	a, -9 (ix)
	ld	-33 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -34 (ix)
	ld	h, -33 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-32 (ix), a
	ld	-31 (ix), c
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-30 (ix), a
	ld	-29 (ix), a
;cases/./../tests/falcon-ntt.c:1930: v = mq_montymul(a[j + ht], s);
;	genPlus
	ld	a, -2 (ix)
	add	a, -40 (ix)
	ld	l, a
	ld	a, -1 (ix)
	adc	a, -39 (ix)
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	h, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, -10 (ix)
	ld	-28 (ix), a
	ld	a, h
	adc	a, -9 (ix)
	ld	-27 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;cases/./../tests/falcon-ntt.c:1808: z = x * y;
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -38 (ix)
	ld	d, -37 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1809: w = ((z * Q0I) & 0xFFFF) * Q;
;	genCall
	call	___muluint2ulong
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), e
	ld	-21 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-20 (ix), l
	ld	-19 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -20 (ix) -19 (ix).
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 29 pushed hl directly instead of going through hl.
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -22 (ix)
	ld	h, -21 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x2fff
	ld	hl, #0x0000
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), e
	ld	-17 (ix), d
	ld	-16 (ix), l
	ld	-15 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
	ld	-14 (ix), a
	ld	a, -17 (ix)
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	hl, #0x0
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x3001
	ld	hl, #0x0000
;cases/./../tests/falcon-ntt.c:1817: z = (z + w) >> 16;
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), e
	ld	-17 (ix), d
	ld	-16 (ix), l
	ld	-15 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -22 (ix)
	ld	d, -21 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -18 (ix)
	ld	h, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-14 (ix), l
	ld	-13 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -16 (ix)
	adc	a, -20 (ix)
	ld	-12 (ix), a
	ld	a, -15 (ix)
	adc	a, -19 (ix)
	ld	-11 (ix), a
;	genRightShift
	ld	b, #0x10
00171$:
	srl	-11 (ix)
	rr	-12 (ix)
	rr	-13 (ix)
	rr	-14 (ix)
; common peephole 159 removed unused label 00172$.
	djnz	00171$
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1824: z -= Q;
;	genMinus
	ld	a, -14 (ix)
	add	a, #0xff
	ld	-18 (ix), a
	ld	a, -13 (ix)
	adc	a, #0xcf
	ld	-17 (ix), a
	ld	a, #0x00
	adc	a, #0xff
	ld	-16 (ix), a
	ld	a, #0x00
	adc	a, #0xff
;cases/./../tests/falcon-ntt.c:1825: z += Q & -(z >> 31);
;	genRightShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded a from a instead of going through -15 (ix).
	ld	-15 (ix), a
; common peephole 0a removed redundant load from a into a.
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-13 (ix), a
	ld	-12 (ix), a
	ld	-11 (ix), a
	ld	b, #0x07
00173$:
	srl	-14 (ix)
; common peephole 159 removed unused label 00174$.
	djnz	00173$
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	xor	a, a
	sub	a, -14 (ix)
	ld	-22 (ix), a
	sbc	a, a
	ld	-21 (ix), a
	sbc	a, a
	ld	-20 (ix), a
	sbc	a, a
	ld	-19 (ix), a
;	genAnd
	ld	a, -22 (ix)
	and	a, #0x01
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -21 (ix)
	and	a, #0x30
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -18 (ix)
	ld	d, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-26 (ix), l
	ld	-25 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, #0x00
	adc	a, -16 (ix)
	ld	-24 (ix), a
	ld	a, #0x00
	adc	a, -15 (ix)
	ld	-23 (ix), a
;cases/./../tests/falcon-ntt.c:1759: d = x + y - Q;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -26 (ix)
	ld	d, -25 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -32 (ix)
	ld	h, -31 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-14 (ix), l
	ld	-13 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, #0x00
	adc	a, -24 (ix)
	ld	-12 (ix), a
	ld	a, #0x00
	adc	a, -23 (ix)
	ld	-11 (ix), a
;	genMinus
	ld	a, -14 (ix)
	add	a, #0xff
	ld	-22 (ix), a
	ld	a, -13 (ix)
	adc	a, #0xcf
	ld	-21 (ix), a
	ld	a, -12 (ix)
	adc	a, #0xff
	ld	-20 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xff
;cases/./../tests/falcon-ntt.c:1760: d += Q & -(d >> 31);
;	genRightShift
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded e from a instead of going through -19 (ix).
	ld	-19 (ix), a
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 1 removed dead load from #0x0000 into hl.
	ld	b, #0x07
00175$:
	srl	e
; common peephole 159 removed unused label 00176$.
	djnz	00175$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	xor	a, a
	sub	a, e
	ld	-14 (ix), a
	sbc	a, a
	ld	-13 (ix), a
	sbc	a, a
	ld	-12 (ix), a
	sbc	a, a
	ld	-11 (ix), a
;	genAnd
	ld	a, -14 (ix)
	and	a, #0x01
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -13 (ix)
	and	a, #0x30
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-16 (ix), a
	ld	-15 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -22 (ix)
	ld	d, -21 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -18 (ix)
	ld	h, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-14 (ix), l
	ld	-13 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, #0x00
	adc	a, -20 (ix)
	ld	-12 (ix), a
	ld	a, #0x00
	adc	a, -19 (ix)
	ld	-11 (ix), a
;cases/./../tests/falcon-ntt.c:1931: a[j] = (uint16_t)mq_add(u, v);
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -34 (ix)
	ld	h, -33 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/falcon-ntt.c:1776: d = x - y;
;	genMinus
	ld	a, -32 (ix)
	sub	a, -26 (ix)
	ld	-14 (ix), a
	ld	a, -31 (ix)
	sbc	a, -25 (ix)
	ld	-13 (ix), a
	ld	a, #0x00
	sbc	a, -24 (ix)
	ld	-12 (ix), a
	sbc	a, a
	sub	a, -23 (ix)
;cases/./../tests/falcon-ntt.c:1777: d += Q & -(d >> 31);
;	genRightShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded a from a instead of going through -11 (ix).
	ld	-11 (ix), a
; common peephole 0a removed redundant load from a into a.
	ld	-22 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-21 (ix), a
	ld	-20 (ix), a
	ld	-19 (ix), a
	ld	b, #0x07
00177$:
	srl	-22 (ix)
; common peephole 159 removed unused label 00178$.
	djnz	00177$
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	xor	a, a
	sub	a, -22 (ix)
	ld	-18 (ix), a
	sbc	a, a
	ld	-17 (ix), a
	sbc	a, a
	ld	-16 (ix), a
	sbc	a, a
	ld	-15 (ix), a
;	genAnd
	ld	a, -18 (ix)
	and	a, #0x01
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -17 (ix)
	and	a, #0x30
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-21 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-20 (ix), a
	ld	-19 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -22 (ix)
	ld	h, -21 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-18 (ix), l
	ld	-17 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, #0x00
	adc	a, -12 (ix)
	ld	-16 (ix), a
	ld	a, #0x00
	adc	a, -11 (ix)
	ld	-15 (ix), a
;cases/./../tests/falcon-ntt.c:1932: a[j + ht] = (uint16_t)mq_sub(u, v);
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -18 (ix)
	ld	-12 (ix), a
	ld	a, -17 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -28 (ix)
	ld	h, -27 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -12 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/falcon-ntt.c:1926: for (j = j1; j < j2; j ++) {
;	genPlus
	inc	-2 (ix)
	jp	nz, 00108$
; common peephole 84 jumped to 00108$ directly instead of via 00179$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00179$.
;	genGoto
	jp	00108$
;	genLabel
00112$:
;cases/./../tests/falcon-ntt.c:1920: for (i = 0, j1 = 0; i < m; i ++, j1 += t) {
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00180$
	inc	-3 (ix)
00180$:
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	pop	hl
	pop	de
	push	de
	push	hl
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
;	genGoto
	jp	00111$
;	genLabel
00102$:
;cases/./../tests/falcon-ntt.c:1935: t = ht;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -40 (ix)
	ld	-42 (ix), a
	ld	a, -39 (ix)
	ld	-41 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1916: for (m = 1; m < n; m <<= 1) {
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-8 (ix)
	rl	-7 (ix)
;	genGoto
	jp	00114$
;	genLabel
00116$:
;cases/./../tests/falcon-ntt.c:1937: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total mq_NTT function size at codegen: 8 bytes.
;cases/./../tests/falcon-ntt.c:1943: mq_iNTT(uint16_t *a, unsigned logn)
;	genLabel
;	genFunction
;	---------------------------------
; Function mq_iNTT
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 42 bytes.
_mq_iNTT:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -42
	ld	iy, #-42
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-8 (ix), l
	ld	-7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1948: n = (size_t)1 << logn;
;	genLeftShift
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-42 (ix), #0x01
	ld	-41 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00211$
00210$:
	sla	-42 (ix)
	rl	-41 (ix)
00211$:
	djnz	00210$
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1949: t = 1;
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-40 (ix), #0x01
	ld	-39 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;cases/./../tests/falcon-ntt.c:1950: m = n;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -42 (ix)
	ld	-2 (ix), a
	ld	a, -41 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1951: while (m > 1) {
;	skipping iCode since result will be rematerialized
;	genLabel
00103$:
;	genCmpGt
	ld	a, #0x01
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	nc, 00105$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:1954: hm = m >> 1;
;	genRightShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-38 (ix), a
	ld	a, -1 (ix)
	ld	-37 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	srl	-37 (ix)
	rr	-38 (ix)
;cases/./../tests/falcon-ntt.c:1955: dt = t << 1;
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -40 (ix)
	ld	-36 (ix), a
	ld	a, -39 (ix)
	ld	-35 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-36 (ix)
	rl	-35 (ix)
;cases/./../tests/falcon-ntt.c:1956: for (i = 0, j1 = 0; i < hm; i ++, j1 += dt) {
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;	genLabel
00117$:
;	genCmpLt
	ld	a, -4 (ix)
	sub	a, -38 (ix)
	ld	a, -3 (ix)
	sbc	a, -37 (ix)
	jp	nc, 00102$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:1960: j2 = j1 + t;
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	pop	hl
	pop	de
	push	de
	push	hl
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-34 (ix), l
	ld	-33 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;cases/./../tests/falcon-ntt.c:1961: s = iGMb[hm + i];
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -38 (ix)
	ld	h, -37 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-10 (ix), a
	ld	a, -1 (ix)
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-10 (ix)
	rl	-9 (ix)
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	de, #_iGMb
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-2 (ix), l
	ld	-1 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -2 (ix) -1 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-1 (ix), a
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-32 (ix), a
	ld	a, -1 (ix)
	ld	-31 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-30 (ix), a
	ld	-29 (ix), a
;cases/./../tests/falcon-ntt.c:1962: for (j = j1; j < j2; j ++) {
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00114$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, -34 (ix)
	ld	a, -1 (ix)
	sbc	a, -33 (ix)
	jp	nc, 00118$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:1965: u = a[j];
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	c, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	a, a
	rl	c
;	genPlus
	add	a, -8 (ix)
	ld	-28 (ix), a
	ld	a, c
	adc	a, -7 (ix)
	ld	-27 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -28 (ix)
	ld	h, -27 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-26 (ix), a
	ld	-25 (ix), c
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-24 (ix), a
	ld	-23 (ix), a
;cases/./../tests/falcon-ntt.c:1966: v = a[j + t];
;	genPlus
	ld	a, -2 (ix)
	add	a, -40 (ix)
	ld	c, a
	ld	a, -1 (ix)
	adc	a, -39 (ix)
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	a, a
	rl	b
;	genPlus
	add	a, -8 (ix)
	ld	-22 (ix), a
	ld	a, b
	adc	a, -7 (ix)
	ld	-21 (ix), a
;	genPointerGet
;fetchPairLong
	ld	l, -22 (ix)
	ld	h, -21 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	c, (hl)
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-20 (ix), a
	ld	-19 (ix), c
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-18 (ix), a
	ld	-17 (ix), a
;cases/./../tests/falcon-ntt.c:1759: d = x + y - Q;
;	genPlus
	ld	a, -26 (ix)
	add	a, -20 (ix)
	ld	c, a
	ld	a, -25 (ix)
	adc	a, -19 (ix)
	ld	b, a
	ld	a, #0x00
	adc	a, -18 (ix)
	ld	e, a
	ld	a, #0x00
	adc	a, -17 (ix)
	ld	d, a
;	genMinus
	ld	a, c
	add	a, #0xff
	ld	c, a
	ld	a, b
	adc	a, #0xcf
	ld	b, a
	ld	a, e
	adc	a, #0xff
; common peephole 1 removed dead load from a into e.
	ld	a, d
	adc	a, #0xff
;cases/./../tests/falcon-ntt.c:1760: d += Q & -(d >> 31);
;	genRightShift
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 13 loaded a into -12 (ix) directly instead of going through d.
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	a, #0x07
00216$:
	srl	-12 (ix)
; common peephole 159 removed unused label 00217$.
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genUminus
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00216$
; common peephole 154b removed redundant zeroing of a (which has just been tested to be #0x00).
	sub	a, -12 (ix)
	ld	-16 (ix), a
	sbc	a, a
	ld	-15 (ix), a
	sbc	a, a
	ld	-14 (ix), a
	sbc	a, a
	ld	-13 (ix), a
;	genAnd
	ld	a, -16 (ix)
	and	a, #0x01
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
	and	a, #0x30
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
;	genPlus
	ld	a, c
	add	a, -12 (ix)
	ld	c, a
	ld	a, b
	adc	a, -11 (ix)
	ld	b, a
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 2c removed inc de due to unused result.
; common peephole 159 removed unused label 00218$.
; common peephole 164 eliminated relative conditional jump.
;cases/./../tests/falcon-ntt.c:1967: a[j] = (uint16_t)mq_add(u, v);
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -28 (ix)
	ld	h, -27 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/falcon-ntt.c:1776: d = x - y;
;	genMinus
	ld	a, -26 (ix)
	sub	a, -20 (ix)
	ld	-12 (ix), a
	ld	a, -25 (ix)
	sbc	a, -19 (ix)
	ld	-11 (ix), a
	sbc	a, a
	ld	-10 (ix), a
	sbc	a, a
;cases/./../tests/falcon-ntt.c:1777: d += Q & -(d >> 31);
;	genRightShift
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded e from a instead of going through -9 (ix).
	ld	-9 (ix), a
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 1 removed dead load from #0x0000 into hl.
	ld	b, #0x07
00219$:
	srl	e
; common peephole 159 removed unused label 00220$.
	djnz	00219$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	xor	a, a
	sub	a, e
	ld	c, a
	sbc	a, a
	ld	b, a
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into l.
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into h.
;	genAnd
	ld	a, c
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	and	a, #0x30
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genPlus
	ld	a, -12 (ix)
	add	a, e
	ld	e, a
	ld	a, -11 (ix)
	adc	a, d
	ld	d, a
	ld	a, -10 (ix)
	adc	a, c
	ld	c, a
	ld	a, -9 (ix)
	adc	a, b
	ld	b, a
;cases/./../tests/falcon-ntt.c:1808: z = x * y;
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	hl, #0x0
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -32 (ix)
	ld	h, -31 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1809: w = ((z * Q0I) & 0xFFFF) * Q;
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
	push	bc
	push	de
	push	bc
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x2fff
	ld	hl, #0x0000
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), e
	ld	-15 (ix), d
	ld	-14 (ix), l
	ld	-13 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genAnd
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -16 (ix)
	ld	-12 (ix), a
	ld	a, -15 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
;	genIpush
	push	bc
	push	de
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	hl, #0x0
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -12 (ix)
	ld	h, -11 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x3001
	ld	hl, #0x0000
;cases/./../tests/falcon-ntt.c:1817: z = (z + w) >> 16;
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-12 (ix), e
	ld	-11 (ix), d
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genPlus
	ld	a, e
	add	a, -12 (ix)
; common peephole 1 removed dead load from a into e.
	ld	a, d
	adc	a, -11 (ix)
; common peephole 1 removed dead load from a into d.
	ld	a, c
	adc	a, -10 (ix)
	ld	c, a
	ld	a, b
	adc	a, -9 (ix)
	ld	b, a
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1824: z -= Q;
;	genMinus
	ld	a, c
	add	a, #0xff
	ld	c, a
	ld	a, b
	adc	a, #0xcf
	ld	b, a
	ld	a, e
	adc	a, #0xff
; common peephole 1 removed dead load from a into e.
	ld	a, d
	adc	a, #0xff
;cases/./../tests/falcon-ntt.c:1825: z += Q & -(z >> 31);
;	genRightShift
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 13 loaded a into -12 (ix) directly instead of going through d.
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	a, #0x07
00223$:
	srl	-12 (ix)
; common peephole 159 removed unused label 00224$.
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genUminus
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00223$
; common peephole 154b removed redundant zeroing of a (which has just been tested to be #0x00).
	sub	a, -12 (ix)
	ld	-16 (ix), a
	sbc	a, a
	ld	-15 (ix), a
	sbc	a, a
	ld	-14 (ix), a
	sbc	a, a
	ld	-13 (ix), a
;	genAnd
	ld	a, -16 (ix)
	and	a, #0x01
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-12 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -15 (ix)
	and	a, #0x30
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
;	genPlus
	ld	a, c
	add	a, -12 (ix)
	ld	c, a
	ld	a, b
	adc	a, -11 (ix)
	ld	b, a
; common peephole 163 changed absolute to relative conditional jump.
; common peephole 2c removed inc de due to unused result.
; common peephole 159 removed unused label 00225$.
; common peephole 164 eliminated relative conditional jump.
;cases/./../tests/falcon-ntt.c:1970: mq_montymul(w, s);
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -22 (ix)
	ld	h, -21 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/falcon-ntt.c:1962: for (j = j1; j < j2; j ++) {
;	genPlus
	inc	-2 (ix)
	jp	nz, 00114$
; common peephole 84 jumped to 00114$ directly instead of via 00226$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00226$.
;	genGoto
	jp	00114$
;	genLabel
00118$:
;cases/./../tests/falcon-ntt.c:1956: for (i = 0, j1 = 0; i < hm; i ++, j1 += dt) {
;	genPlus
	inc	-4 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00227$
	inc	-3 (ix)
00227$:
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -36 (ix)
	ld	d, -35 (ix)
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
;	genGoto
	jp	00117$
;	genLabel
00102$:
;cases/./../tests/falcon-ntt.c:1973: t = dt;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -36 (ix)
	ld	-40 (ix), a
	ld	a, -35 (ix)
	ld	-39 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1974: m = hm;
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -38 (ix)
	ld	-2 (ix), a
	ld	a, -37 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
	jp	00103$
;	genLabel
00105$:
;cases/./../tests/falcon-ntt.c:1986: ni = R;
;	genAssign
;	genMove_o size 4 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), #0xfb
	ld	-13 (ix), #0x0f
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
;cases/./../tests/falcon-ntt.c:1987: for (m = n; m > 1; m >>= 1) {
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -42 (ix)
	ld	-2 (ix), a
	ld	a, -41 (ix)
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00120$:
;	genCmpGt
	ld	a, #0x01
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00146$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:1787: x += Q & -(x & 1);
;	genAnd
	ld	a, -14 (ix)
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into b.
; common peephole 1 removed dead load from #0x0000 into hl.
;	genUminus
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	ld	b, a
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into l.
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into h.
;	genAnd
	ld	a, c
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	and	a, #0x30
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genPlus
	ld	a, -14 (ix)
	add	a, e
	ld	e, a
	ld	a, -13 (ix)
	adc	a, d
	ld	d, a
	ld	a, #0x00
	adc	a, c
	ld	c, a
	ld	a, #0x00
	adc	a, b
;cases/./../tests/falcon-ntt.c:1788: return (x >> 1);
;	genRightShift
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	srl	a
	rr	c
	rr	d
	rr	e
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), e
	ld	-13 (ix), d
	ld	-12 (ix), c
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1987: for (m = n; m > 1; m >>= 1) {
;	genRightShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	srl	-1 (ix)
	rr	-2 (ix)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
;cases/./../tests/falcon-ntt.c:1990: for (m = 0; m < n; m ++) {
;	genLabel
00146$:
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00123$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, -42 (ix)
	ld	a, -1 (ix)
	sbc	a, -41 (ix)
	jp	nc, 00125$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:1991: a[m] = (uint16_t)mq_montymul(a[m], ni);
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-4 (ix)
	rl	-3 (ix)
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -4 (ix)
	ld	d, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genPointerGet
;fetchPairLong
	ld	-10 (ix), l
	ld	-9 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -10 (ix) -9 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;cases/./../tests/falcon-ntt.c:1808: z = x * y;
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	hl, #0x0
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
; common peephole 92a combined constant loads into register pair.
	ld	hl, #0x0
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1809: w = ((z * Q0I) & 0xFFFF) * Q;
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -4 (ix) -3 (ix).
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 29 pushed hl directly instead of going through hl.
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -6 (ix)
	ld	h, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x2fff
	ld	hl, #0x0000
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genIpush
	push	bc
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x3001
	ld	hl, #0x0000
;cases/./../tests/falcon-ntt.c:1817: z = (z + w) >> 16;
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	ld	a, -6 (ix)
	add	a, e
; common peephole 1 removed dead load from a into e.
	ld	a, -5 (ix)
	adc	a, d
; common peephole 1 removed dead load from a into d.
	ld	a, -4 (ix)
	adc	a, c
	ld	c, a
	ld	a, -3 (ix)
	adc	a, b
;	genRightShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1824: z -= Q;
;	genMinus
	ld	a, c
	add	a, #0xff
	ld	-6 (ix), a
	ld	a, b
	adc	a, #0xcf
	ld	-5 (ix), a
	ld	a, e
	adc	a, #0xff
	ld	-4 (ix), a
	ld	a, d
	adc	a, #0xff
;cases/./../tests/falcon-ntt.c:1825: z += Q & -(z >> 31);
;	genRightShift
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded e from a instead of going through -3 (ix).
	ld	-3 (ix), a
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 1 removed dead load from #0x0000 into hl.
	ld	b, #0x07
00233$:
	srl	e
; common peephole 159 removed unused label 00234$.
	djnz	00233$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	xor	a, a
	sub	a, e
	ld	c, a
	sbc	a, a
	ld	b, a
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into e.
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into d.
;	genAnd
	ld	a, c
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, b
	and	a, #0x30
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	b, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	de, #0x0000
;	genPlus
	ld	a, -6 (ix)
	add	a, c
	ld	c, a
	ld	a, -5 (ix)
	adc	a, b
	ld	b, a
	ld	a, -4 (ix)
	adc	a, e
; common peephole 1 removed dead load from a into e.
	ld	a, -3 (ix)
	adc	a, d
;cases/./../tests/falcon-ntt.c:1991: a[m] = (uint16_t)mq_montymul(a[m], ni);
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), c
	inc	hl
	ld	(hl), b
;cases/./../tests/falcon-ntt.c:1990: for (m = 0; m < n; m ++) {
;	genPlus
	inc	-2 (ix)
	jp	nz, 00123$
; common peephole 84 jumped to 00123$ directly instead of via 00235$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00235$.
;	genGoto
	jp	00123$
;	genLabel
00125$:
;cases/./../tests/falcon-ntt.c:1993: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total mq_iNTT function size at codegen: 5 bytes.
;cases/./../tests/falcon-ntt.c:1999: mq_poly_tomonty(uint16_t *f, unsigned logn)
;	genLabel
;	genFunction
;	---------------------------------
; Function mq_poly_tomonty
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 16 bytes.
_mq_poly_tomonty:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -16
	ld	iy, #-16
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:2003: n = (size_t)1 << logn;
;	genLeftShift
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-16 (ix), #0x01
	ld	-15 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	inc	e
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00126$
00125$:
	sla	-16 (ix)
	rl	-15 (ix)
00126$:
	dec	e
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00125$
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:2004: for (u = 0; u < n; u ++) {
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00104$:
;	genCmpLt
	ld	a, c
	sub	a, -16 (ix)
	ld	a, b
	sbc	a, -15 (ix)
	jp	nc, 00106$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:2005: f[u] = (uint16_t)mq_montymul(f[u], R2);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -2 (ix)
	ld	d, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 0 f_dead 1
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
	dec	hl
;cases/./../tests/falcon-ntt.c:1808: z = x * y;
;	genSend
	push	hl
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x2ac8
;	genSend
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -4 (ix)
	ld	h, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1809: w = ((z * Q0I) & 0xFFFF) * Q;
;	genCall
	call	___muluint2ulong
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-10 (ix), e
	ld	-9 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
; common peephole 50a eliminated dead pop/push hl pair.
; common peephole 50a eliminated dead pop/push bc pair.
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), l
	ld	-7 (ix), h
; common peephole 11 loaded ed from lh directly instead of going through -8 (ix) -7 (ix).
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 29 pushed hl directly instead of going through de.
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	e, -10 (ix)
	ld	d, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x2fff
	ld	hl, #0x0000
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 142 used ex to move hl onto the stack.
	ex	(sp),hl
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genIpush
; common peephole 51a eliminated dead pop/push hl pair.
; common peephole 51a eliminated dead pop/push bc pair.
; common peephole 49a pushed hl instead of iy.
	ld	hl, #0x0000
	push	hl
	push	de
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x3001
	ld	hl, #0x0000
;cases/./../tests/falcon-ntt.c:1817: z = (z + w) >> 16;
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 142 used ex to move hl onto the stack.
	ex	(sp),hl
	pop	iy
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
	pop	hl
;	genPlus
	ld	a, e
	add	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, d
	adc	a, -9 (ix)
	ld	-5 (ix), a
	push	iy
	ld	a, -18 (ix)
	pop	iy
	adc	a, -8 (ix)
	ld	-4 (ix), a
	push	iy
	ld	a, -17 (ix)
	pop	iy
	adc	a, -7 (ix)
	ld	-3 (ix), a
;	genRightShift
	ld	a, #0x10
00127$:
	srl	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
; common peephole 159 removed unused label 00128$.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00127$
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1824: z -= Q;
;	genMinus
	ld	a, -6 (ix)
	add	a, #0xff
	ld	-14 (ix), a
	ld	a, -5 (ix)
	adc	a, #0xcf
	ld	-13 (ix), a
	ld	a, #0x00
	adc	a, #0xff
	ld	-12 (ix), a
	ld	a, #0x00
	adc	a, #0xff
;cases/./../tests/falcon-ntt.c:1825: z += Q & -(z >> 31);
;	genRightShift
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded a from a instead of going through -11 (ix).
	ld	-11 (ix), a
; common peephole 0a removed redundant load from a into a.
	ld	-10 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	-9 (ix), a
	ld	-8 (ix), a
	ld	-7 (ix), a
	ld	a, #0x07
00129$:
	srl	-10 (ix)
; common peephole 159 removed unused label 00130$.
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00129$
; common peephole 154b removed redundant zeroing of a (which has just been tested to be #0x00).
	sub	a, -10 (ix)
	ld	-6 (ix), a
	sbc	a, a
	ld	-5 (ix), a
	sbc	a, a
	ld	-4 (ix), a
	sbc	a, a
	ld	-3 (ix), a
;	genAnd
	ld	a, -6 (ix)
	and	a, #0x01
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -5 (ix)
	and	a, #0x30
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #0x0000
;	genPlus
	ld	a, e
	add	a, -14 (ix)
	ld	e, a
	ld	a, d
	adc	a, -13 (ix)
	ld	d, a
	push	iy
	ld	a, -18 (ix)
	pop	iy
	adc	a, -12 (ix)
	push	iy
	ld	-18 (ix), a
; common peephole 50a eliminated dead pop/push iy pair.
	ld	a, -17 (ix)
	pop	iy
	adc	a, -11 (ix)
;cases/./../tests/falcon-ntt.c:2005: f[u] = (uint16_t)mq_montymul(f[u], R2);
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
;cases/./../tests/falcon-ntt.c:2004: for (u = 0; u < n; u ++) {
;	genPlus
	inc	bc
;	genGoto
	jp	00104$
;	genLabel
00106$:
;cases/./../tests/falcon-ntt.c:2007: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total mq_poly_tomonty function size at codegen: 5 bytes.
;cases/./../tests/falcon-ntt.c:2014: mq_poly_montymul_ntt(uint16_t *f, const uint16_t *g, unsigned logn)
;	genLabel
;	genFunction
;	---------------------------------
; Function mq_poly_montymul_ntt
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 22 bytes.
_mq_poly_montymul_ntt:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -22
	ld	iy, #-22
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:2018: n = (size_t)1 << logn;
;	genLeftShift
	ld	b, 4 (ix)
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), #0x01
	ld	-21 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00126$
00125$:
	sla	-22 (ix)
	rl	-21 (ix)
00126$:
	djnz	00125$
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:2019: for (u = 0; u < n; u ++) {
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00104$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, -22 (ix)
	ld	a, -1 (ix)
	sbc	a, -21 (ix)
	jp	nc, 00106$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:2020: f[u] = (uint16_t)mq_montymul(f[u], g[u]);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, -4 (ix)
	ld	-20 (ix), a
	ld	a, h
	adc	a, -3 (ix)
	ld	-19 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 0 f_dead 1
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genPointerGet
;fetchPairLong
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;cases/./../tests/falcon-ntt.c:1808: z = x * y;
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1809: w = ((z * Q0I) & 0xFFFF) * Q;
;	genCall
	call	___muluint2ulong
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-18 (ix), e
	ld	-17 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-16 (ix), l
	ld	-15 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -16 (ix) -15 (ix).
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 29 pushed hl directly instead of going through hl.
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -18 (ix)
	ld	h, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x2fff
	ld	hl, #0x0000
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), e
	ld	-13 (ix), d
	ld	-12 (ix), l
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;	genIpush
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 92a combined constant loads into register pair.
	ld	hl, #0x0
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	push	hl
;	genSend
;	genMove_o size 4 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x3001
	ld	hl, #0x0000
;cases/./../tests/falcon-ntt.c:1817: z = (z + w) >> 16;
;	genCall
	call	__mullong
;	adjustStack by 4
	pop	af
	pop	af
;	genMove_o size 4 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), e
	ld	-13 (ix), d
	ld	-12 (ix), l
	ld	-11 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -18 (ix)
	ld	d, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, -12 (ix)
	adc	a, -16 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	adc	a, -15 (ix)
	ld	-7 (ix), a
;	genRightShift
	ld	b, #0x10
00127$:
	srl	-7 (ix)
	rr	-8 (ix)
	rr	-9 (ix)
	rr	-10 (ix)
; common peephole 159 removed unused label 00128$.
	djnz	00127$
;	genMove_o size 4 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:1824: z -= Q;
;	genMinus
	ld	a, -10 (ix)
	add	a, #0xff
	ld	-18 (ix), a
	ld	a, -9 (ix)
	adc	a, #0xcf
	ld	-17 (ix), a
	ld	a, #0x00
	adc	a, #0xff
	ld	-16 (ix), a
	ld	a, #0x00
	adc	a, #0xff
;cases/./../tests/falcon-ntt.c:1825: z += Q & -(z >> 31);
;	genRightShift
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded e from a instead of going through -15 (ix).
	ld	-15 (ix), a
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 1 removed dead load from #0x0000 into hl.
	ld	b, #0x07
00129$:
	srl	e
; common peephole 159 removed unused label 00130$.
	djnz	00129$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	xor	a, a
	sub	a, e
	ld	-10 (ix), a
	sbc	a, a
	ld	-9 (ix), a
	sbc	a, a
	ld	-8 (ix), a
	sbc	a, a
	ld	-7 (ix), a
;	genAnd
	ld	a, -10 (ix)
	and	a, #0x01
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	and	a, #0x30
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -18 (ix)
	ld	d, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, #0x00
	adc	a, -16 (ix)
	ld	-8 (ix), a
	ld	a, #0x00
	adc	a, -15 (ix)
	ld	-7 (ix), a
;cases/./../tests/falcon-ntt.c:2020: f[u] = (uint16_t)mq_montymul(f[u], g[u]);
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/falcon-ntt.c:2019: for (u = 0; u < n; u ++) {
;	genPlus
	inc	-2 (ix)
	jp	nz, 00104$
; common peephole 84 jumped to 00104$ directly instead of via 00131$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00131$.
;	genGoto
	jp	00104$
;	genLabel
00106$:
;cases/./../tests/falcon-ntt.c:2022: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total mq_poly_montymul_ntt function size at codegen: 10 bytes.
;cases/./../tests/falcon-ntt.c:2028: mq_poly_sub(uint16_t *f, const uint16_t *g, unsigned logn)
;	genLabel
;	genFunction
;	---------------------------------
; Function mq_poly_sub
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 22 bytes.
_mq_poly_sub:
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -22
	ld	iy, #-22
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-4 (ix), l
	ld	-3 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-6 (ix), e
	ld	-5 (ix), d
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:2032: n = (size_t)1 << logn;
;	genLeftShift
	ld	b, 4 (ix)
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-22 (ix), #0x01
	ld	-21 (ix), #0
; peephole 178 direct load zero constant to memory addressed by index register
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	b
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00126$
00125$:
	sla	-22 (ix)
	rl	-21 (ix)
00126$:
	djnz	00125$
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:2033: for (u = 0; u < n; u ++) {
;	genAssign
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00104$:
;	genCmpLt
	ld	a, -2 (ix)
	sub	a, -22 (ix)
	ld	a, -1 (ix)
	sbc	a, -21 (ix)
	jp	nc, 00106$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:2034: f[u] = (uint16_t)mq_sub(f[u], g[u]);
;	genLeftShift
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	add	hl, hl
;	genPlus
	ld	a, l
	add	a, -4 (ix)
	ld	-20 (ix), a
	ld	a, h
	adc	a, -3 (ix)
	ld	-19 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 0 f_dead 1
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	c, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x0000 into de.
;	genPointerGet
;fetchPairLong
	ld	l, -20 (ix)
	ld	h, -19 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;	genCast
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-10 (ix), a
	ld	-9 (ix), l
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;cases/./../tests/falcon-ntt.c:1776: d = x - y;
;	genMinus
	ld	a, -10 (ix)
	sub	a, c
	ld	-18 (ix), a
	ld	a, -9 (ix)
	sbc	a, b
	ld	-17 (ix), a
	sbc	a, a
	ld	-16 (ix), a
	sbc	a, a
;cases/./../tests/falcon-ntt.c:1777: d += Q & -(d >> 31);
;	genRightShift
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 33 loaded e from a instead of going through -15 (ix).
	ld	-15 (ix), a
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 3 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
; common peephole 1 removed dead load from #0x00 into d.
; common peephole 1 removed dead load from #0x0000 into hl.
	ld	b, #0x07
00127$:
	srl	e
; common peephole 159 removed unused label 00128$.
	djnz	00127$
;	genMove_o size 4 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genUminus
	xor	a, a
	sub	a, e
	ld	-10 (ix), a
	sbc	a, a
	ld	-9 (ix), a
	sbc	a, a
	ld	-8 (ix), a
	sbc	a, a
	ld	-7 (ix), a
;	genAnd
	ld	a, -10 (ix)
	and	a, #0x01
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-14 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -9 (ix)
	and	a, #0x30
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-13 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 2 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-12 (ix), a
	ld	-11 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -18 (ix)
	ld	d, -17 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	add	hl, de
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	-10 (ix), l
	ld	-9 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	a, #0x00
	adc	a, -16 (ix)
	ld	-8 (ix), a
	ld	a, #0x00
	adc	a, -15 (ix)
	ld	-7 (ix), a
;cases/./../tests/falcon-ntt.c:2034: f[u] = (uint16_t)mq_sub(f[u], g[u]);
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	hl
	push	hl
	push	de
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
	inc	hl
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/falcon-ntt.c:2033: for (u = 0; u < n; u ++) {
;	genPlus
	inc	-2 (ix)
	jp	nz, 00104$
; common peephole 84 jumped to 00104$ directly instead of via 00129$.
	inc	-1 (ix)
; common peephole 159 removed unused label 00129$.
;	genGoto
	jp	00104$
;	genLabel
00106$:
;cases/./../tests/falcon-ntt.c:2036: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	pop	hl
;	adjustStack by 2
	pop	af
	jp	(hl)
;	Total mq_poly_sub function size at codegen: 7 bytes.
;cases/./../tests/falcon-ntt.c:2042: Zf(to_ntt_monty)(uint16_t *h, unsigned logn)
;	genLabel
;	genFunction
;	---------------------------------
; Function falcon_inner_to_ntt_monty
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_falcon_inner_to_ntt_monty::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/falcon-ntt.c:2044: mq_NTT(h, logn);
;	genSend
	push	hl
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_mq_NTT
	pop	de
	pop	hl
;cases/./../tests/falcon-ntt.c:2045: mq_poly_tomonty(h, logn);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/falcon-ntt.c:2046: }
;	genEndFunction
	jp	_mq_poly_tomonty
; common peephole 152 removed unused ret.
;	Total falcon_inner_to_ntt_monty function size at codegen: 1 bytes.
;cases/./../tests/falcon-ntt.c:2289: void testFalconNTT(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testFalconNTT
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 7 bytes.
_testFalconNTT::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -7
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;cases/./../tests/falcon-ntt.c:2292: for(int32_t i = 0; i < (1 << LOGN); i++)
;	genAddrOf
	ld	bc, #_buf+0
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, #0x00
;	genLabel
00104$:
;	genCmpLt
	ld	a, e
	sub	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00101$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:2293: buf[i] = i/*montgomery_reduce(i)*/;
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, e
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
;fetchPairLong
;	genPlus
	add	hl, bc
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	d, e
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	xor	a, a
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 0 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), d
	inc	hl
	ld	(hl), a
;cases/./../tests/falcon-ntt.c:2292: for(int32_t i = 0; i < (1 << LOGN); i++)
;	genPlus
	inc	e
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00101$:
;cases/./../tests/falcon-ntt.c:2295: mq_NTT(buf, LOGN);
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_buf
;	genSend
	push	hl
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0004
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_mq_NTT
	pop	hl
;cases/./../tests/falcon-ntt.c:2297: mq_iNTT(buf, LOGN);
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0004
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_mq_iNTT
;cases/./../tests/falcon-ntt.c:2299: for(int32_t i = 0; i < (1 << LOGN); i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 3 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), a
;	genLabel
00107$:
;	genCmpLt
	ld	a, -3 (ix)
	sub	a, #0x10
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00109$
;	skipping generated iCode
;cases/./../tests/falcon-ntt.c:2300: ASSERT(buf[i] == i);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCast
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLeftShift
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sla	-7 (ix)
	rl	-6 (ix)
;	genPlus
	ld	a, #<(_buf)
	add	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, #>(_buf)
	adc	a, -6 (ix)
	ld	-4 (ix), a
;	genPointerGet
;fetchPairLong
	pop	bc
	pop	hl
	push	hl
	push	bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
;	genCast
;	genMove_o size 1 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-5 (ix), a
	rlca
	sbc	a, a
	ld	-4 (ix), a
;	genCmpEq
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, -3 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00156$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00156$
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00108$
; common peephole 81 removed jp by using inverse jump logic
00156$:
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x08fc
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
00108$:
;cases/./../tests/falcon-ntt.c:2299: for(int32_t i = 0; i < (1 << LOGN); i++)
;	genPlus
	inc	-3 (ix)
; common peephole 84 jumped to 00107$ directly instead of via 00157$.
; common peephole 159 removed unused label 00157$.
;	genGoto
; common peephole 78 removed redundant jp
	jp	00107$
;	genLabel
00109$:
;cases/./../tests/falcon-ntt.c:2302: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testFalconNTT function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "buf[i] == i"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/falcon-ntt.c"
	.db 0x00
;cases/tst_falcon-ntt.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_falcon-ntt.c:6: __prints("Running testFalconNTT\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_3
;	genCall
	call	___prints
;cases/tst_falcon-ntt.c:7: testFalconNTT();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_falcon-ntt.c:8: }
;	genEndFunction
	jp	_testFalconNTT
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_3:
	.ascii "Running testFalconNTT"
	.db 0x0a
	.db 0x00
;cases/tst_falcon-ntt.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_falcon-ntt.c:15: return "falcon-ntt.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_4
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_falcon-ntt.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_4:
	.ascii "falcon-ntt.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
