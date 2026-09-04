;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module support
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __exitEmu
	.globl __initEmu
	.globl __putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_sif	=	0x00ff
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
;ports/ucz80/support.c:4: _putchar(unsigned char c)
;	genLabel
;	genFunction
;	---------------------------------
; Function _putchar
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
__putchar::
;	genReceive
;	genMove_o size 1 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	c, a
;	genMove_o size 0 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;ports/ucz80/support.c:6: sif= 'p';
;	genAssign
	ld	a, #0x70
	out	(_sif), a
;ports/ucz80/support.c:7: sif= c;
;	genAssign
	ld	a, c
	out	(_sif), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;ports/ucz80/support.c:8: }
;	genEndFunction
	ret
;	Total _putchar function size at codegen: 1 bytes.
;ports/ucz80/support.c:11: _initEmu(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function _initEmu
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
__initEmu::
;ports/ucz80/support.c:13: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total _initEmu function size at codegen: 1 bytes.
;ports/ucz80/support.c:16: _exitEmu(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function _exitEmu
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
__exitEmu::
;ports/ucz80/support.c:18: sif= 's';
;	genAssign
	ld	a, #0x73
	out	(_sif), a
;	genLabel
; common peephole 159 removed unused label 00101$.
;ports/ucz80/support.c:19: }
;	genEndFunction
	ret
;	Total _exitEmu function size at codegen: 1 bytes.
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
	.area _CABS (ABS)
