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
	.optsdcc -mi8080 sdcccall(1)

	.globl ___builtin_memcpy
	.globl ___memcpy

	.area _CODE

___builtin_memcpy:
	jp	___memcpy
