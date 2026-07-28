;--------------------------------------------------------------------------
;  __sdcc_call_hl.s - indirect call through HL for the Intel 8080/8085.
;
;  The z80 port keeps this in device/lib/z80/__sdcc_call_hl.s, but that module
;  is built with .optsdcc -mz80 and is not part of the 8080/8085 library. The
;  body is a single PCHL (jp (hl)), which is valid on the 8080/8085, so we just
;  provide an -mi8080 copy here. Used by printf_large and other code that calls
;  through a function pointer left in HL.
;--------------------------------------------------------------------------

	.module __sdcc_call_hl
	.optsdcc -mi8080 sdcccall(1)

	.globl ___sdcc_call_hl

	.area _CODE

___sdcc_call_hl:
	jp	(hl)
