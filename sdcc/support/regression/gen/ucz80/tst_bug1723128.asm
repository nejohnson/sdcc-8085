;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug1723128
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _NotZero
	.globl _VerifyCRC
	.globl ___prints
	.globl ___fail
	.globl _AutoCal_CFG
	.globl _crc
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
_crc::
	.ds 1
_rx_buffer:
	.ds 8
_rx_index:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_crc_table:
	.ds 256
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area _DABS (ABS)
	.org 0x8000
_AutoCal_CFG::
	.ds 10
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;cases/./../tests/bug1723128.c:35: __code AUTOCAL_CFG __at (0x8000) AutoCal_CFG = {0};
;	genAddrOf
	ld	hl, #_AutoCal_CFG+0
;	genPointerSet
	ld	(hl), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME (BANK=_CSEG)
	.area _HOME (BANK=_CSEG)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE (BANK=_CSEG)
;cases/./../tests/bug1723128.c:85: VerifyCRC (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function VerifyCRC
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_VerifyCRC::
;cases/./../tests/bug1723128.c:89: crc = 0 ;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	xor	a, a
	ld	(#_crc), a
; common peephole 19 loaded (#_crc) from a directly instead of using hl.
;cases/./../tests/bug1723128.c:91: for (i = 0; i < (rx_index - 1); i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, #0x00
;	genLabel
00103$:
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_rx_index)
	ld	e, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	d, #0x00
;	genMinus
	dec	de
;	genCast
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
;	genCmpLt
	ld	a, c
; common peephole 10 loaded a from c directly instead of going through l.
	ld	b, #0x00
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	po, 00124$
	xor	a, #0x80
00124$:
	jp	p, 00101$
;	skipping generated iCode
;cases/./../tests/bug1723128.c:92: crc = crc_table[rx_buffer[i] ^ crc];
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 0 hl_dead 1 de_dead 1 iy_dead 0 f_dead 1
	ld	hl, #_rx_buffer
	ld	b, #0x00
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genXor
; common peephole 54 used hl instead of iy.
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_crc
	xor	a, (hl)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, a
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_crc_table
	add	hl, de
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1 result type 11 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(#_crc), a
; common peephole 19 loaded (#_crc) from a directly instead of using hl.
;cases/./../tests/bug1723128.c:91: for (i = 0; i < (rx_index - 1); i++)
;	genPlus
	inc	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00101$:
;cases/./../tests/bug1723128.c:93: return (crc == rx_buffer[rx_index-1]) ;
;	genCast
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_rx_index)
;	genMinus
; common peephole 155c turned add into dec.
	dec	a
;	genCast
;	genMove_o size 0 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_rx_buffer
	add	hl, bc
;	genPointerGet
;	genCmpEq
;	genMove_o size 1 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, (_crc)
; common peephole 115a used (hl) in sub instead of going through c.
	sub	a, (hl)
	ld	a, #0x01
	ret	z
; common peephole 161 replaced jump by return.
; common peephole 169xnz used double assignment in case of nz condition.
; common peephole 159 removed unused label 00125$.
	xor	a, a
; common peephole 159 removed unused label 00126$.
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00105$.
;cases/./../tests/bug1723128.c:94: }
;	genEndFunction
	ret
;	Total VerifyCRC function size at codegen: 1 bytes.
;cases/./../tests/bug1723128.c:97: NotZero (unsigned int t)
;	genLabel
;	genFunction
;	---------------------------------
; Function NotZero
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_NotZero::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug1723128.c:99: return (t != 0);
;	genNot
	or	a, h
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;	genNot
	xor	a, #0x01
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug1723128.c:100: }
;	genEndFunction
	ret
;	Total NotZero function size at codegen: 1 bytes.
;cases/./../tests/bug1723128.c:106: testBug (void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_testBug::
;cases/./../tests/bug1723128.c:110: rx_index = 1;
;	genAssign
;	genMove_o size 1 result type 11 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_rx_index
	ld	(hl), #0x01
;cases/./../tests/bug1723128.c:111: ASSERT (VerifyCRC ());
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genCall
	call	_VerifyCRC
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00104$
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x006f
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
;cases/./../tests/bug1723128.c:112: ASSERT (NotZero (300));
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x012c
;	genCall
	call	_NotZero
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIfx
	bit	0,a
; common peephole 149 tested bit 0 of a directly instead of going through c.
	ret	nz
; common peephole 161 replaced jump by return.
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0070
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
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug1723128.c:115: }
;	genEndFunction
	ret
;	Total testBug function size at codegen: 1 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "VerifyCRC ()"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug1723128.c"
	.db 0x00
___str_3:
	.ascii "NotZero (300)"
	.db 0x00
;cases/tst_bug1723128.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug1723128.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug1723128.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1723128.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug1723128.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug1723128.c:15: return "bug1723128.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug1723128.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug1723128.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__crc_table:
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x5e	; 94
	.db #0x71	; 113	'q'
	.db #0xbc	; 188
	.db #0x93	; 147
	.db #0xe2	; 226
	.db #0xcd	; 205
	.db #0x57	; 87	'W'
	.db #0x78	; 120	'x'
	.db #0x09	; 9
	.db #0x26	; 38
	.db #0xeb	; 235
	.db #0xc4	; 196
	.db #0xb5	; 181
	.db #0x9a	; 154
	.db #0xae	; 174
	.db #0x81	; 129
	.db #0xf0	; 240
	.db #0xdf	; 223
	.db #0x12	; 18
	.db #0x3d	; 61
	.db #0x4c	; 76	'L'
	.db #0x63	; 99	'c'
	.db #0xf9	; 249
	.db #0xd6	; 214
	.db #0xa7	; 167
	.db #0x88	; 136
	.db #0x45	; 69	'E'
	.db #0x6a	; 106	'j'
	.db #0x1b	; 27
	.db #0x34	; 52	'4'
	.db #0x73	; 115	's'
	.db #0x5c	; 92
	.db #0x2d	; 45
	.db #0x02	; 2
	.db #0xcf	; 207
	.db #0xe0	; 224
	.db #0x91	; 145
	.db #0xbe	; 190
	.db #0x24	; 36
	.db #0x0b	; 11
	.db #0x7a	; 122	'z'
	.db #0x55	; 85	'U'
	.db #0x98	; 152
	.db #0xb7	; 183
	.db #0xc6	; 198
	.db #0xe9	; 233
	.db #0xdd	; 221
	.db #0xf2	; 242
	.db #0x83	; 131
	.db #0xac	; 172
	.db #0x61	; 97	'a'
	.db #0x4e	; 78	'N'
	.db #0x3f	; 63
	.db #0x10	; 16
	.db #0x8a	; 138
	.db #0xa5	; 165
	.db #0xd4	; 212
	.db #0xfb	; 251
	.db #0x36	; 54	'6'
	.db #0x19	; 25
	.db #0x68	; 104	'h'
	.db #0x47	; 71	'G'
	.db #0xe6	; 230
	.db #0xc9	; 201
	.db #0xb8	; 184
	.db #0x97	; 151
	.db #0x5a	; 90	'Z'
	.db #0x75	; 117	'u'
	.db #0x04	; 4
	.db #0x2b	; 43
	.db #0xb1	; 177
	.db #0x9e	; 158
	.db #0xef	; 239
	.db #0xc0	; 192
	.db #0x0d	; 13
	.db #0x22	; 34
	.db #0x53	; 83	'S'
	.db #0x7c	; 124
	.db #0x48	; 72	'H'
	.db #0x67	; 103	'g'
	.db #0x16	; 22
	.db #0x39	; 57	'9'
	.db #0xf4	; 244
	.db #0xdb	; 219
	.db #0xaa	; 170
	.db #0x85	; 133
	.db #0x1f	; 31
	.db #0x30	; 48	'0'
	.db #0x41	; 65	'A'
	.db #0x6e	; 110	'n'
	.db #0xa3	; 163
	.db #0x8c	; 140
	.db #0xfd	; 253
	.db #0xd2	; 210
	.db #0x95	; 149
	.db #0xba	; 186
	.db #0xcb	; 203
	.db #0xe4	; 228
	.db #0x29	; 41
	.db #0x06	; 6
	.db #0x77	; 119	'w'
	.db #0x58	; 88	'X'
	.db #0xc2	; 194
	.db #0xed	; 237
	.db #0x9c	; 156
	.db #0xb3	; 179
	.db #0x7e	; 126
	.db #0x51	; 81	'Q'
	.db #0x20	; 32
	.db #0x0f	; 15
	.db #0x3b	; 59
	.db #0x14	; 20
	.db #0x65	; 101	'e'
	.db #0x4a	; 74	'J'
	.db #0x87	; 135
	.db #0xa8	; 168
	.db #0xd9	; 217
	.db #0xf6	; 246
	.db #0x6c	; 108	'l'
	.db #0x43	; 67	'C'
	.db #0x32	; 50	'2'
	.db #0x1d	; 29
	.db #0xd0	; 208
	.db #0xff	; 255
	.db #0x8e	; 142
	.db #0xa1	; 161
	.db #0xe3	; 227
	.db #0xcc	; 204
	.db #0xbd	; 189
	.db #0x92	; 146
	.db #0x5f	; 95
	.db #0x70	; 112	'p'
	.db #0x01	; 1
	.db #0x2e	; 46
	.db #0xb4	; 180
	.db #0x9b	; 155
	.db #0xea	; 234
	.db #0xc5	; 197
	.db #0x08	; 8
	.db #0x27	; 39
	.db #0x56	; 86	'V'
	.db #0x79	; 121	'y'
	.db #0x4d	; 77	'M'
	.db #0x62	; 98	'b'
	.db #0x13	; 19
	.db #0x3c	; 60
	.db #0xf1	; 241
	.db #0xde	; 222
	.db #0xaf	; 175
	.db #0x80	; 128
	.db #0x1a	; 26
	.db #0x35	; 53	'5'
	.db #0x44	; 68	'D'
	.db #0x6b	; 107	'k'
	.db #0xa6	; 166
	.db #0x89	; 137
	.db #0xf8	; 248
	.db #0xd7	; 215
	.db #0x90	; 144
	.db #0xbf	; 191
	.db #0xce	; 206
	.db #0xe1	; 225
	.db #0x2c	; 44
	.db #0x03	; 3
	.db #0x72	; 114	'r'
	.db #0x5d	; 93
	.db #0xc7	; 199
	.db #0xe8	; 232
	.db #0x99	; 153
	.db #0xb6	; 182
	.db #0x7b	; 123
	.db #0x54	; 84	'T'
	.db #0x25	; 37
	.db #0x0a	; 10
	.db #0x3e	; 62
	.db #0x11	; 17
	.db #0x60	; 96
	.db #0x4f	; 79	'O'
	.db #0x82	; 130
	.db #0xad	; 173
	.db #0xdc	; 220
	.db #0xf3	; 243
	.db #0x69	; 105	'i'
	.db #0x46	; 70	'F'
	.db #0x37	; 55	'7'
	.db #0x18	; 24
	.db #0xd5	; 213
	.db #0xfa	; 250
	.db #0x8b	; 139
	.db #0xa4	; 164
	.db #0x05	; 5
	.db #0x2a	; 42
	.db #0x5b	; 91
	.db #0x74	; 116	't'
	.db #0xb9	; 185
	.db #0x96	; 150
	.db #0xe7	; 231
	.db #0xc8	; 200
	.db #0x52	; 82	'R'
	.db #0x7d	; 125
	.db #0x0c	; 12
	.db #0x23	; 35
	.db #0xee	; 238
	.db #0xc1	; 193
	.db #0xb0	; 176
	.db #0x9f	; 159
	.db #0xab	; 171
	.db #0x84	; 132
	.db #0xf5	; 245
	.db #0xda	; 218
	.db #0x17	; 23
	.db #0x38	; 56	'8'
	.db #0x49	; 73	'I'
	.db #0x66	; 102	'f'
	.db #0xfc	; 252
	.db #0xd3	; 211
	.db #0xa2	; 162
	.db #0x8d	; 141
	.db #0x40	; 64
	.db #0x6f	; 111	'o'
	.db #0x1e	; 30
	.db #0x31	; 49	'1'
	.db #0x76	; 118	'v'
	.db #0x59	; 89	'Y'
	.db #0x28	; 40
	.db #0x07	; 7
	.db #0xca	; 202
	.db #0xe5	; 229
	.db #0x94	; 148
	.db #0xbb	; 187
	.db #0x21	; 33
	.db #0x0e	; 14
	.db #0x7f	; 127
	.db #0x50	; 80	'P'
	.db #0x9d	; 157
	.db #0xb2	; 178
	.db #0xc3	; 195
	.db #0xec	; 236
	.db #0xd8	; 216
	.db #0xf7	; 247
	.db #0x86	; 134
	.db #0xa9	; 169
	.db #0x64	; 100	'd'
	.db #0x4b	; 75	'K'
	.db #0x3a	; 58
	.db #0x15	; 21
	.db #0x8f	; 143
	.db #0xa0	; 160
	.db #0xd1	; 209
	.db #0xfe	; 254
	.db #0x33	; 51	'3'
	.db #0x1c	; 28
	.db #0x6d	; 109	'm'
	.db #0x42	; 66	'B'
	.area _CABS (ABS)
