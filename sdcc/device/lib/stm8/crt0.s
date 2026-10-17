; crt0.s - start-up code for the STM8, medium model
;
; The compiler writes the interrupt vector table into the module that
; holds main, because only it knows which functions are interrupt
; handlers; its reset vector is __sdcc_gs_init_startup, here.  This
; file is linked first, so the area order below is the program's.
;
; A program linked with --no-std-crt0 supplies its own file defining
; __sdcc_gs_init_startup and __sdcc_program_startup.

	.module crt0
	.globl	_main
	.globl	___sdcc_external_startup

	; The order the linker lays the areas down in.
	.area	DATA
	.area	INITIALIZED
	.area	SSEG
	.area	HOME
	.area	GSINIT
	.area	GSFINAL
	.area	CONST
	.area	INITIALIZER
	.area	CODE

	.area	GSINIT
__sdcc_gs_init_startup::
	; A non-zero return from __sdcc_external_startup skips the
	; initialisation of static storage.
	call	___sdcc_external_startup
	tnz	a
	jreq	__sdcc_init_data
	jp	__sdcc_program_startup
__sdcc_init_data:
	; Zero DATA.
	ldw	x, #l_DATA
	jreq	00002$
00001$:
	clr	(a_DATA - 1, x)
	decw	x
	jrne	00001$
00002$:
	; Copy INITIALIZER, in ROM, to INITIALIZED, in RAM.
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (a_INITIALIZER - 1, x)
	ld	(a_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
	; Every module's own GSINIT code follows, then GSFINAL.

	.area	GSFINAL
__sdcc_program_startup::
	jp	_main
