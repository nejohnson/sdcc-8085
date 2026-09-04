;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module asconhash256_impl_opt8_lowsize
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testAscon
	.globl ___prints
	.globl _buf
	.globl ___numCases
	.globl _md
	.globl _msglen
	.globl _msg
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
;cases/asconhash256/asconhash256_impl_opt8_lowsize.c:3881: void testAscon(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testAscon
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testAscon::
;cases/asconhash256/asconhash256_impl_opt8_lowsize.c:3887: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testAscon function size at codegen: 1 bytes.
_msg:
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
_msglen:
	.byte #0x29, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
_md:
	.db #0xd3	; 211
	.db #0xc0	; 192
	.db #0x61	; 97	'a'
	.db #0x33	; 51	'3'
	.db #0x3d	; 61
	.db #0x56	; 86	'V'
	.db #0x3a	; 58
	.db #0xfe	; 254
	.db #0xda	; 218
	.db #0xe0	; 224
	.db #0x90	; 144
	.db #0x7a	; 122	'z'
	.db #0xed	; 237
	.db #0x1b	; 27
	.db #0x39	; 57	'9'
	.db #0x8a	; 138
	.db #0x0d	; 13
	.db #0x9b	; 155
	.db #0xba	; 186
	.db #0x6a	; 106	'j'
	.db #0x7b	; 123
	.db #0xf3	; 243
	.db #0x81	; 129
	.db #0x11	; 17
	.db #0xc1	; 193
	.db #0x98	; 152
	.db #0xd3	; 211
	.db #0x73	; 115	's'
	.db #0x49	; 73	'I'
	.db #0x85	; 133
	.db #0xaa	; 170
	.db #0x30	; 48	'0'
;cases/asconhash256/asconhash256_impl_opt8_lowsize.c:3891: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/asconhash256/asconhash256_impl_opt8_lowsize.c:3893: __prints("Running testAscon\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_0
;	genCall
;cases/asconhash256/asconhash256_impl_opt8_lowsize.c:3894: testAscon();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/asconhash256/asconhash256_impl_opt8_lowsize.c:3895: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_0:
	.ascii "Running testAscon"
	.db 0x0a
	.db 0x00
;cases/asconhash256/asconhash256_impl_opt8_lowsize.c:3900: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/asconhash256/asconhash256_impl_opt8_lowsize.c:3902: return "asconhash256_impl_opt8_lowsize";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_1
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/asconhash256/asconhash256_impl_opt8_lowsize.c:3903: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_1:
	.ascii "asconhash256_impl_opt8_lowsize"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
