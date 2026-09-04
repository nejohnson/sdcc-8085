;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_bug3521024
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testBug
	.globl _init_huffman
	.globl _huffman_iterative
	.globl _huffman_recursive
	.globl _get_data2
	.globl _get_data
	.globl ___prints
	.globl ___fail
	.globl ___numCases
	.globl _udata
	.globl _data
	.globl _huffman_tree
	.globl _HUFFMAN_RS
	.globl _HUFFMAN_BS
	.globl _HUFFMAN_LS
	.globl _HUFFMAN_ROOT
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_get_data_i_10000_14:
	.ds 2
_get_data2_i_10000_16:
	.ds 2
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
;cases/./../tests/bug3521024.c:284: unsigned char get_data(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function get_data
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_get_data::
;cases/./../tests/bug3521024.c:287: return(data[i++]);
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_get_data_i_10000_14)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_get_data_i_10000_14)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_get_data_i_10000_14), hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_data
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3521024.c:288: }
;	genEndFunction
	ret
;	Total get_data function size at codegen: 1 bytes.
_HUFFMAN_ROOT:
	.db #0x7c	; 124
_HUFFMAN_LS:
	.db #0x7d	; 125
_HUFFMAN_BS:
	.db #0x7f	; 127
_HUFFMAN_RS:
	.db #0xfd	; 253
_huffman_tree:
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x82	; 130
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x85	; 133
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x8a	; 138
	.db #0x8b	; 139
	.db #0x8c	; 140
	.db #0x8d	; 141
	.db #0x8e	; 142
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x91	; 145
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x94	; 148
	.db #0x95	; 149
	.db #0x96	; 150
	.db #0x97	; 151
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0x9a	; 154
	.db #0x9b	; 155
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x9e	; 158
	.db #0x9f	; 159
	.db #0xa0	; 160
	.db #0xa1	; 161
	.db #0xa2	; 162
	.db #0xa3	; 163
	.db #0xa4	; 164
	.db #0xa5	; 165
	.db #0xa6	; 166
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0xa9	; 169
	.db #0xaa	; 170
	.db #0xab	; 171
	.db #0xac	; 172
	.db #0xad	; 173
	.db #0xae	; 174
	.db #0xaf	; 175
	.db #0xb0	; 176
	.db #0xb1	; 177
	.db #0xb2	; 178
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0xb5	; 181
	.db #0xb6	; 182
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0xbb	; 187
	.db #0xbc	; 188
	.db #0xbd	; 189
	.db #0xbe	; 190
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xc1	; 193
	.db #0xc2	; 194
	.db #0xc3	; 195
	.db #0xc4	; 196
	.db #0xc5	; 197
	.db #0xc6	; 198
	.db #0xc7	; 199
	.db #0xc8	; 200
	.db #0xc9	; 201
	.db #0xca	; 202
	.db #0xcb	; 203
	.db #0xcc	; 204
	.db #0xcd	; 205
	.db #0xce	; 206
	.db #0xcf	; 207
	.db #0xd0	; 208
	.db #0xd1	; 209
	.db #0xd2	; 210
	.db #0xd3	; 211
	.db #0xd4	; 212
	.db #0xd5	; 213
	.db #0xd6	; 214
	.db #0xd7	; 215
	.db #0xd8	; 216
	.db #0xd9	; 217
	.db #0xda	; 218
	.db #0xdb	; 219
	.db #0xdc	; 220
	.db #0xdd	; 221
	.db #0xde	; 222
	.db #0xdf	; 223
	.db #0xe0	; 224
	.db #0xe1	; 225
	.db #0xe2	; 226
	.db #0xe3	; 227
	.db #0xe4	; 228
	.db #0xe5	; 229
	.db #0xe6	; 230
	.db #0xe7	; 231
	.db #0xe8	; 232
	.db #0xe9	; 233
	.db #0xea	; 234
	.db #0xeb	; 235
	.db #0xec	; 236
	.db #0xed	; 237
	.db #0xee	; 238
	.db #0xef	; 239
	.db #0xf0	; 240
	.db #0xf1	; 241
	.db #0xf2	; 242
	.db #0xf3	; 243
	.db #0xf4	; 244
	.db #0xf5	; 245
	.db #0xf6	; 246
	.db #0xf7	; 247
	.db #0xf8	; 248
	.db #0xf9	; 249
	.db #0x7d	; 125
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
	.db #0x5b	; 91
	.db #0x5c	; 92
	.db #0x5d	; 93
	.db #0x5e	; 94
	.db #0x5f	; 95
	.db #0x60	; 96
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x6b	; 107	'k'
	.db #0x6c	; 108	'l'
	.db #0x6d	; 109	'm'
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x73	; 115	's'
	.db #0x74	; 116	't'
	.db #0x75	; 117	'u'
	.db #0x76	; 118	'v'
	.db #0x77	; 119	'w'
	.db #0x78	; 120	'x'
	.db #0xfd	; 253
	.db #0xfa	; 250
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xaa	; 170
	.db #0x7b	; 123
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
	.db #0x5b	; 91
	.db #0x5c	; 92
	.db #0x5d	; 93
	.db #0x5e	; 94
	.db #0x5f	; 95
	.db #0x60	; 96
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x6b	; 107	'k'
	.db #0x6c	; 108	'l'
	.db #0x6d	; 109	'm'
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x73	; 115	's'
	.db #0x74	; 116	't'
	.db #0x75	; 117	'u'
	.db #0x76	; 118	'v'
	.db #0x77	; 119	'w'
	.db #0x78	; 120	'x'
	.db #0x79	; 121	'y'
	.db #0x7a	; 122	'z'
	.db #0x7b	; 123
	.db #0x7c	; 124
	.db #0x7d	; 125
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x82	; 130
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x85	; 133
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x8a	; 138
	.db #0x8b	; 139
	.db #0x8c	; 140
	.db #0x8d	; 141
	.db #0x8e	; 142
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x91	; 145
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x94	; 148
	.db #0x95	; 149
	.db #0x96	; 150
	.db #0x97	; 151
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0x9a	; 154
	.db #0x9b	; 155
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x9e	; 158
	.db #0x9f	; 159
	.db #0xa0	; 160
	.db #0xa1	; 161
	.db #0xa2	; 162
	.db #0xa3	; 163
	.db #0xa4	; 164
	.db #0xa5	; 165
	.db #0xa6	; 166
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0xa9	; 169
	.db #0xab	; 171
	.db #0xac	; 172
	.db #0xad	; 173
	.db #0xae	; 174
	.db #0xaf	; 175
	.db #0xb0	; 176
	.db #0xb1	; 177
	.db #0xb2	; 178
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0xb5	; 181
	.db #0xb6	; 182
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0xbb	; 187
	.db #0xbc	; 188
	.db #0xbd	; 189
	.db #0xbe	; 190
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xc1	; 193
	.db #0xc2	; 194
	.db #0xc3	; 195
	.db #0xc4	; 196
	.db #0xc5	; 197
	.db #0xc6	; 198
	.db #0xc7	; 199
	.db #0xc8	; 200
	.db #0xc9	; 201
	.db #0xca	; 202
	.db #0xcb	; 203
	.db #0xcc	; 204
	.db #0xcd	; 205
	.db #0xce	; 206
	.db #0xcf	; 207
	.db #0xd0	; 208
	.db #0xd1	; 209
	.db #0xd2	; 210
	.db #0xd3	; 211
	.db #0xd4	; 212
	.db #0xd5	; 213
	.db #0xd6	; 214
	.db #0xd7	; 215
	.db #0xd8	; 216
	.db #0xd9	; 217
	.db #0xda	; 218
	.db #0xdb	; 219
	.db #0xdc	; 220
	.db #0xdd	; 221
	.db #0xde	; 222
	.db #0xdf	; 223
	.db #0xe0	; 224
	.db #0xe1	; 225
	.db #0xe2	; 226
	.db #0xe3	; 227
	.db #0xe4	; 228
	.db #0xe5	; 229
	.db #0xe6	; 230
	.db #0xe7	; 231
	.db #0xe8	; 232
	.db #0xe9	; 233
	.db #0xea	; 234
	.db #0xeb	; 235
	.db #0xec	; 236
	.db #0xed	; 237
	.db #0xee	; 238
	.db #0xef	; 239
	.db #0xf0	; 240
	.db #0xf1	; 241
	.db #0xf2	; 242
	.db #0xf3	; 243
	.db #0xf4	; 244
	.db #0xf5	; 245
	.db #0xf6	; 246
	.db #0xf7	; 247
	.db #0xf8	; 248
	.db #0xf9	; 249
	.db #0xfa	; 250
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xfd	; 253
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x79	; 121	'y'
	.db #0x01	; 1
	.db #0x7a	; 122	'z'
	.db #0x55	; 85	'U'
_data:
	.db #0x48	; 72	'H'
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x66	; 102	'f'
	.db #0x7b	; 123
	.db #0x0f	; 15
_udata:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
;cases/./../tests/bug3521024.c:290: unsigned char get_data2(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function get_data2
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_get_data2::
;cases/./../tests/bug3521024.c:293: return(data[i++]);
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, (_get_data2_i_10000_16)
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (_get_data2_i_10000_16)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(_get_data2_i_10000_16), hl
;	genPlus
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #_data
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3521024.c:294: }
;	genEndFunction
	ret
;	Total get_data2 function size at codegen: 1 bytes.
;cases/./../tests/bug3521024.c:299: unsigned char huffman_recursive(struct cvu_huffman_state *state)
;	genLabel
;	genFunction
;	---------------------------------
; Function huffman_recursive
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
_huffman_recursive::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -6
	push	af
	push	af
	push	af
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, l
	ld	b, h
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3521024.c:304: state->buffer >>= 1;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0009
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genRightShift
	srl	a
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/bug3521024.c:305: if(state->bit == 8)
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	ld	-3 (ix), l
	ld	-2 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -3 (ix) -2 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpEq
	cp	a, #0x08
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00155$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00156$.
;	skipping generated iCode
;cases/./../tests/bug3521024.c:307: state->buffer = (state->input)();
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genCall
	push	bc
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	call	___sdcc_call_hl
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/bug3521024.c:308: state->bit = 0;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
	ld	h, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), #0x00
;	genLabel
00102$:
;cases/./../tests/bug3521024.c:310: direction = state->buffer & 0x01;
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAnd
	and	a, #0x01
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3521024.c:311: state->bit++;
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
;	genPlus
;	genPointerSet
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	inc	(hl)
; common peephole 114 incremented in (hl) instead of going through a.
;cases/./../tests/bug3521024.c:315: if(state->current >= state->ls && state->current < state->rs)
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x000a
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3521024.c:317: ret = state->nodes[state->current].left;
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug3521024.c:318: state->current = state->root;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	iy, #0x0004
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	add	iy, bc
;cases/./../tests/bug3521024.c:315: if(state->current >= state->ls && state->current < state->rs)
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	-6 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug3521024.c:317: ret = state->nodes[state->current].left;
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	l, -6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 0 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	-3 (ix), l
	ld	-2 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/bug3521024.c:313: if(!direction)	/* Left */
;	genIfx
	ld	a, -1 (ix)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00111$
;cases/./../tests/bug3521024.c:315: if(state->current >= state->ls && state->current < state->rs)
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-1 (ix), a
;cases/./../tests/bug3521024.c:317: ret = state->nodes[state->current].left;
;	genPlus
	ld	a, -5 (ix)
	add	a, -3 (ix)
	ld	l, a
	ld	a, -4 (ix)
	adc	a, -2 (ix)
;	genPointerGet
;fetchPairLong
	ld	h, a
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-2 (ix), a
;cases/./../tests/bug3521024.c:315: if(state->current >= state->ls && state->current < state->rs)
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	push	bc
	ld	bc, #0x0007
	add	hl, bc
	pop	bc
;	_moveFrom_tpair_()
;	genCmpLt
	ld	a,-6 (ix)
; common peephole 22 used (hl) in sub directly instead of going through l.
	sub	a,(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
;	skipping generated iCode
;cases/./../tests/bug3521024.c:317: ret = state->nodes[state->current].left;
;	genAssign
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	c, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;cases/./../tests/bug3521024.c:318: state->current = state->root;
;	genPointerGet
	ld	a, (iy)
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00104$:
;cases/./../tests/bug3521024.c:322: state->current = state->nodes[state->current].left;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/bug3521024.c:323: ret = huffman_recursive(state);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_huffman_recursive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00111$:
;cases/./../tests/bug3521024.c:328: if(state->current >= state->bs)
;	genAssign
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPointerGet
;fetchPairLong
	push	bc
	ld	bc, #0x0006
	add	hl, bc
	pop	bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-1 (ix), a
;cases/./../tests/bug3521024.c:330: ret = state->nodes[state->current].right;
;	genPlus
	ld	a, -5 (ix)
	add	a, -3 (ix)
	ld	l, a
	ld	a, -4 (ix)
	adc	a, -2 (ix)
;	genPointerGet
;fetchPairLong
	ld	h, a
	inc	hl
;	_moveFrom_tpair_()
	ld	l, (hl)
;cases/./../tests/bug3521024.c:328: if(state->current >= state->bs)
;	genCmpLt
	ld	a, -6 (ix)
	sub	a, -1 (ix)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00108$
;	skipping generated iCode
;cases/./../tests/bug3521024.c:330: ret = state->nodes[state->current].right;
;	genAssign
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	c, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
;cases/./../tests/bug3521024.c:331: state->current = state->root;
;	genPointerGet
	ld	a, (iy)
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00108$:
;cases/./../tests/bug3521024.c:335: state->current = state->nodes[state->current].right;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, l
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/bug3521024.c:336: ret = huffman_recursive(state);
;	genSend
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, c
	ld	h, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_huffman_recursive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00112$:
;cases/./../tests/bug3521024.c:340: return(ret);
;	genRet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, c
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00113$.
;cases/./../tests/bug3521024.c:341: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total huffman_recursive function size at codegen: 8 bytes.
;cases/./../tests/bug3521024.c:343: unsigned char huffman_iterative(struct cvu_huffman_state *state)
;	genLabel
;	genFunction
;	---------------------------------
; Function huffman_iterative
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 18 bytes.
_huffman_iterative::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -18
	ld	iy, #-18
	add	iy, sp
	ld	sp, iy
;	genReceive
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3521024.c:348: current = state->root;
;	genAssign
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-2 (ix), l
	ld	-1 (ix), h
; common peephole 11 loaded cb from lh directly instead of going through -2 (ix) -1 (ix).
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerGet
; common peephole 119 removed loads by exploiting commutativity of addition.
	ld	bc, #4
	add	hl, bc
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-18 (ix), a
	ld	a, -1 (ix)
	ld	-17 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-16 (ix), a
	ld	a, -1 (ix)
	ld	-15 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	inc	hl
	inc	hl
;	genMove_o size 2 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
	ld	-14 (ix), l
	ld	-13 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 0 f_dead 0
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -2 (ix)
	ld	-12 (ix), a
	ld	a, -1 (ix)
	ld	-11 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genAssign
;	genMove_o size 2 result type 6 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	ld	-9 (ix), a
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
00112$:
;cases/./../tests/bug3521024.c:352: state->buffer >>= 1;
;	genPlus
	ld	a, -2 (ix)
	add	a, #0x09
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	b, a
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genRightShift
	srl	a
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/./../tests/bug3521024.c:353: if(state->bit == 8)
;	genPlus
	ld	a, -2 (ix)
	add	a, #0x08
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	d, a
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCmpEq
	cp	a, #0x08
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00164$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	nz, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00165$.
;	skipping generated iCode
;cases/./../tests/bug3521024.c:355: state->buffer = (state->input)();
;	genPointerGet
;fetchPairLong
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;	genCall
	push	bc
	push	de
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	call	___sdcc_call_hl
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	de
	pop	bc
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(bc), a
;cases/./../tests/bug3521024.c:356: state->bit = 0;
;	genPointerSet
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	xor	a, a
	ld	(de), a
;	genLabel
00102$:
;cases/./../tests/bug3521024.c:358: state->bit++;
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genPlus
	inc	a
;	genPointerSet
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/bug3521024.c:360: if(!(state->buffer & 0x01))	/* Left */
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3521024.c:364: ret = state->nodes[current].left;
;	genCast
;	genMove_o size 1 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	l, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 1 a_dead 0 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	h, #0x00
;	genLeftShift
	add	hl, hl
;	genMove_o size 2 result type 6 source type 2 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-8 (ix), l
	ld	-7 (ix), h
;	genMove_o size 0 result type 6 source type 1 a_dead 0 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3521024.c:360: if(!(state->buffer & 0x01))	/* Left */
;	genAnd
	rrca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00166$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00109$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00167$.
;	skipping generated iCode
;cases/./../tests/bug3521024.c:362: if(current >= state->ls && current < state->rs)
;	genPointerGet
;fetchPairLong
	pop	de
	pop	hl
	push	hl
	push	de
	ld	de, #0x0005
	add	hl, de
;	_moveFrom_tpair_()
	ld	b, (hl)
;cases/./../tests/bug3521024.c:364: ret = state->nodes[current].left;
;	genPointerGet
;fetchPairLong
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	_moveFrom_tpair_()
	ld	e, (hl)
	inc	hl
;	_moveFrom_tpair_()
	ld	d, (hl)
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	add	hl, de
;	genPointerGet
	ld	c, (hl)
;cases/./../tests/bug3521024.c:362: if(current >= state->ls && current < state->rs)
;	genCmpLt
	ld	a, -3 (ix)
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00104$
;	skipping generated iCode
;	genPointerGet
;fetchPairLong
	pop	hl
	push	hl
	ld	de, #0x0007
	add	hl, de
;	_moveFrom_tpair_()
;	genCmpLt
	ld	a,-3 (ix)
; common peephole 22 used (hl) in sub directly instead of going through b.
	sub	a,(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00104$
;	skipping generated iCode
;cases/./../tests/bug3521024.c:364: ret = state->nodes[current].left;
;	genAssign
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), c
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3521024.c:365: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00104$:
;cases/./../tests/bug3521024.c:368: current = state->nodes[current].left;
;	genAssign
;	genMove_o size 1 result type 6 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-3 (ix), c
;	genMove_o size 0 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00109$:
;cases/./../tests/bug3521024.c:372: if(current >= state->bs)
;	genPointerGet
;fetchPairLong
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	de, #0x0006
	add	hl, de
;	_moveFrom_tpair_()
;	genCmpLt
	ld	a,-3 (ix)
; common peephole 22 used (hl) in sub directly instead of going through c.
	sub	a,(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00107$
;	skipping generated iCode
;cases/./../tests/bug3521024.c:374: ret = state->nodes[current].right;
;	genPointerGet
;fetchPairLong
	ld	l, -14 (ix)
	ld	h, -13 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
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
	ld	-6 (ix), l
	ld	-5 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -6 (ix) -5 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
;cases/./../tests/bug3521024.c:375: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00107$:
;cases/./../tests/bug3521024.c:378: current = state->nodes[current].right;
;	genPointerGet
;fetchPairLong
	ld	l, -10 (ix)
	ld	h, -9 (ix)
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-5 (ix), a
;	genPlus
;	genMove_o size 2 result type 2 source type 6 a_dead 0 hl_dead 1 de_dead 0 iy_dead 0 f_dead 1
	ld	e, -6 (ix)
	ld	d, -5 (ix)
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
	ld	-4 (ix), l
	ld	-3 (ix), h
; common peephole 11 loaded lh from lh directly instead of going through -4 (ix) -3 (ix).
; common peephole 0a removed redundant load from l into l.
; common peephole 0a removed redundant load from h into h.
	inc	hl
;	_moveFrom_tpair_()
	ld	a, (hl)
	ld	-3 (ix), a
;	genGoto
	jp	00112$
;	genLabel
00111$:
;cases/./../tests/bug3521024.c:382: return(ret);
;	genRet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	a, -3 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genLabel
; common peephole 159 removed unused label 00114$.
;cases/./../tests/bug3521024.c:383: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total huffman_iterative function size at codegen: 11 bytes.
;cases/./../tests/bug3521024.c:387: void init_huffman(struct cvu_huffman_state *state, unsigned char (*input)(void), const struct cvu_huffman_node *tree, unsigned char root, unsigned char ls, unsigned char bs, unsigned char rs)
;	genLabel
;	genFunction
;	---------------------------------
; Function init_huffman
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_init_huffman::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/bug3521024.c:389: state->input = input;
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	c,l
	ld	b,h
; common peephole 104 removed redundant load from bc into hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), e
	inc	hl
	ld	(hl), d
;cases/./../tests/bug3521024.c:390: state->nodes = tree;
;	genPlus
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, c
	ld	d, b
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	inc	de
	inc	de
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 4 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
	inc	de
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 5 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/bug3521024.c:391: state->root = root;
;	genPlus
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0004
	add	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ex	de, hl
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 6 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(de), a
;cases/./../tests/bug3521024.c:392: state->ls = ls;
;	genPlus
;fetchPairLong
	ld	hl, #0x0005
	add	hl, bc
;	genPointerSet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 7 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug3521024.c:393: state->bs = bs;
;	genPlus
;fetchPairLong
	ld	hl, #0x0006
	add	hl, bc
;	genPointerSet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 8 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug3521024.c:394: state->rs = rs;
;	genPlus
;fetchPairLong
	ld	hl, #0x0007
	add	hl, bc
;	genPointerSet
;	genMove_o size 1 result type 2 source type 6 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	a, 9 (ix)
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 0 iy_dead 1 f_dead 1
	ld	(hl), a
;cases/./../tests/bug3521024.c:395: state->bit = 8;
;	genPlus
;fetchPairLong
	ld	hl, #0x0008
	add	hl, bc
;	genPointerSet
	ld	(hl), #0x08
;cases/./../tests/bug3521024.c:396: state->current = state->root;
;	genPlus
;fetchPairLong
	ld	hl, #0x000a
	add	hl, bc
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
;	genPointerSet
	ld	(hl), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/bug3521024.c:397: }
;	genEndFunction
	pop	ix
	pop	hl
;	adjustStack by 6
	pop	af
	pop	af
	pop	af
	jp	(hl)
;	Total init_huffman function size at codegen: 7 bytes.
;cases/./../tests/bug3521024.c:399: void testBug(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testBug
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 12 bytes.
_testBug::
	push	ix
	ld	ix,	#0
	add	ix, sp
;	adjustStack by -12
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;cases/./../tests/bug3521024.c:406: init_huffman(&state, &get_data, huffman_tree, HUFFMAN_ROOT, HUFFMAN_LS, HUFFMAN_BS, HUFFMAN_RS);
;	genAddrOf
	ld	bc, #_huffman_tree+0
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 1 removed dead load from #0xfd into a.
	ld	hl, #0xfd7f
; common peephole 93d combined constant loads into register pair.
	push	hl
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 1 removed dead load from #0x7d into a.
	ld	hl, #0x7d7c
; common peephole 93d combined constant loads into register pair.
	push	hl
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_get_data
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #8
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_init_huffman
	pop	bc
;cases/./../tests/bug3521024.c:408: for(i = 0; i < 15; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00103$:
;cases/./../tests/bug3521024.c:409: ASSERT(huffman_recursive(&state) == udata[i]);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
	push	bc
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_huffman_recursive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	e, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	pop	bc
;	genPlus
	ld	a, #<(_udata)
	add	a, -1 (ix)
	ld	l, a
	ld	a, #>(_udata)
	adc	a, #0x00
;	genPointerGet
;fetchPairLong
	ld	h, a
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	sub	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00155$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x0199
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
	pop	bc
;	genLabel
00104$:
;cases/./../tests/bug3521024.c:408: for(i = 0; i < 15; i++)
;	genPlus
	inc	-1 (ix)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00103$
;	skipping generated iCode
;cases/./../tests/bug3521024.c:411: init_huffman(&state, &get_data2, huffman_tree, HUFFMAN_ROOT, HUFFMAN_LS, HUFFMAN_BS, HUFFMAN_RS);
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 1 removed dead load from #0xfd into a.
	ld	hl, #0xfd7f
; common peephole 93d combined constant loads into register pair.
	push	hl
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genIpush
;	genMove_o size 1 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 1 removed dead load from #0x7d into a.
	ld	hl, #0x7d7c
; common peephole 93d combined constant loads into register pair.
	push	hl
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #_get_data2
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
	ld	hl, #6
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;	genCall
	call	_init_huffman
;cases/./../tests/bug3521024.c:413: for(i = 0; i < 15; i++)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1 result type 6 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	-1 (ix), #0x00
;	genLabel
00105$:
;cases/./../tests/bug3521024.c:414: ASSERT(huffman_iterative(&state) == udata[i]);
;	genPlus
;	genMove_o size 2 result type 2 source type 10 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, (___numTests)
	inc	hl
;	genMove_o size 2 result type 10 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(___numTests), hl
;	genSend
;	genMove_o size 2 result type 2 source type 8 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genCall
	call	_huffman_iterative
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;	genPlus
	ld	a, #<(_udata)
	add	a, -1 (ix)
	ld	l, a
	ld	a, #>(_udata)
	adc	a, #0x00
;	genPointerGet
;fetchPairLong
	ld	h, a
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCmpEq
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 159 removed unused label 00156$.
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x019e
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
;cases/./../tests/bug3521024.c:413: for(i = 0; i < 15; i++)
;	genPlus
	inc	-1 (ix)
;	genCmpLt
	ld	a, -1 (ix)
	sub	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	c, 00105$
;	skipping generated iCode
;	genLabel
; common peephole 159 removed unused label 00107$.
;cases/./../tests/bug3521024.c:417: }
;	genEndFunction
	ld	sp, ix
	pop	ix
	ret
;	Total testBug function size at codegen: 5 bytes.
___str_0:
	.ascii "Assertion failed"
	.db 0x00
___str_1:
	.ascii "huffman_recursive(&state) == udata[i]"
	.db 0x00
___str_2:
	.ascii "cases/./../tests/bug3521024.c"
	.db 0x00
___str_3:
	.ascii "huffman_iterative(&state) == udata[i]"
	.db 0x00
;cases/tst_bug3521024.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_bug3521024.c:6: __prints("Running testBug\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_4
;	genCall
	call	___prints
;cases/tst_bug3521024.c:7: testBug();
;	genCall
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3521024.c:8: }
;	genEndFunction
	jp	_testBug
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_4:
	.ascii "Running testBug"
	.db 0x0a
	.db 0x00
;cases/tst_bug3521024.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_bug3521024.c:15: return "bug3521024.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_5
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_bug3521024.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_5:
	.ascii "bug3521024.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
