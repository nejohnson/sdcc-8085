;--------------------------------------------------------------------------
;  __builtin_memcpy.s - the compiler's __builtin_memcpy for the Intel 8080/8085.
;
;  The z80 family declares __builtin_memcpy as a compiler __builtin__ (see
;  src/z80/main.c). On the z80 it is always expanded inline (ldir), so no call
;  to ___builtin_memcpy is ever emitted and no library symbol is needed. The
;  8080/8085 has no ldir, so the builtin cannot be inlined and the compiler
;  emits "call ___builtin_memcpy" instead. Provide that symbol as a thin alias
;  for ___memcpy (device/lib/__memcpy.c): both have the identical signature
;  (void *, const void *, size_t/unsigned int) and calling convention, and
;  ___memcpy already returns the destination pointer, so a plain jump suffices.
;--------------------------------------------------------------------------

	.module __builtin_memcpy
	;; vendor's asz80/as8085 (used for this port now - see asxxxx-integration-plan.md) doesn't recognize .optsdcc, an SDCC-only extension; kept as a comment for a human reading this file.
	;.optsdcc -mi8085 sdcccall(1)

	.globl ___builtin_memcpy
	.globl ___memcpy

	.area _CODE

___builtin_memcpy:
	jmp	___memcpy
