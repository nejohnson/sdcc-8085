;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.2 #16710 (Linux)
;--------------------------------------------------------
	.module tst_p99_conformance
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _testP99
	.globl _has_func_macro
	.globl _has_for_declaration
	.globl _has_mixed_declaration
	.globl _has_restrict_parameter
	.globl _has_volatile_parameter
	.globl _has_const_parameter
	.globl _has_static_parameter
	.globl ___prints
	.globl _has_punctuation_trigraph
	.globl _has_punctuation_digraph
	.globl _has_long_long
	.globl _has_idempotent_restrict
	.globl _has_idempotent_volatile
	.globl _has_restrict_keyword
	.globl _has_flexible_array
	.globl _has_initializer_trailing_commas
	.globl _has_preprocessor_placeholder
	.globl _has_preprocessor_no_placeholder_on_recursion
	.globl _has_preprocessor_expands_before_concatenation2
	.globl _has_preprocessor_expands_before_concatenation1
	.globl _has_concat_of_floats_iterative
	.globl _has_concat_of_floats_1Ep
	.globl _has_concat_of_floats_1E
	.globl _has_designated_struct_initializer
	.globl _A1
	.globl _has_designated_array_initializer
	.globl _has_Bool
	.globl _has_hash_hash_interpretedCorrectly
	.globl _has_preprocessor_uintmax
	.globl _has_ullong_max
	.globl _has_cpp_comment
	.globl _restrict_buffer
	.globl _has_enum_trailing_commas
	.globl _has_determines_macro_arguments_first
	.globl _has_length_from_initializer
	.globl ___numCases
	.globl _has_trigraph_stringfy
	.globl _has_digraph_stringify
	.globl _has_evaluated_comma_expression_assign
	.globl _has_non_evaluated_comma_expression_prepro
	.globl _has_non_evaluated_comma_expression_assign
	.globl _has_preprocessor_logical_signed
	.globl _has_preprocessor_ternary_signed
	.globl _has_preprocessor_ternary_unsigned
	.globl _has_preprocessor_bitneg
	.globl _has_preprocessor_minus
	.globl _has_idempotent_const
	.globl _has_stringify_empty
	.globl _has_concat_of_hash_hash
	.globl _has_hash_hash_as_argument
	.globl _has_concat_of_floats_1Ep3Em
	.globl ___runSuite
	.globl ___getSuiteName
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA (BANK=_DSEG)
_has_length_from_initializer::
	.ds 2
_has_determines_macro_arguments_first::
	.ds 2
_has_enum_trailing_commas::
	.ds 1
_restrict_buffer::
	.ds 4
_has_cpp_comment::
	.ds 2
_has_ullong_max::
	.ds 8
_has_preprocessor_uintmax::
	.ds 2
_has_hash_hash_interpretedCorrectly::
	.ds 4
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_has_Bool::
	.ds 1
_has_designated_array_initializer::
	.ds 8
_A1::
	.ds 8
_has_designated_struct_initializer::
	.ds 6
_has_concat_of_floats_1E::
	.ds 4
_has_concat_of_floats_1Ep::
	.ds 4
_has_concat_of_floats_iterative::
	.ds 4
_has_preprocessor_expands_before_concatenation1::
	.ds 2
_has_preprocessor_expands_before_concatenation2::
	.ds 2
_has_preprocessor_no_placeholder_on_recursion::
	.ds 2
_has_preprocessor_placeholder::
	.ds 2
_has_initializer_trailing_commas::
	.ds 2
_has_flexible_array::
	.ds 10
_has_restrict_keyword::
	.ds 2
_has_idempotent_volatile::
	.ds 2
_has_idempotent_restrict::
	.ds 2
_has_long_long::
	.ds 8
_has_punctuation_digraph::
	.ds 4
_has_punctuation_trigraph::
	.ds 8
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
;cases/./../tests/p99-conformance.c:287: void has_static_parameter(double A[static 10]){
;	genLabel
;	genFunction
;	---------------------------------
; Function has_static_parameter
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_has_static_parameter::
;cases/./../tests/p99-conformance.c:289: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total has_static_parameter function size at codegen: 1 bytes.
_has_concat_of_floats_1Ep3Em:
	.ascii "1E+3E-3"
	.db 0x00
_has_hash_hash_as_argument:
	.ascii "A ## B"
	.db 0x00
_has_concat_of_hash_hash:
	.ascii "##"
	.db 0x00
_has_stringify_empty:
	.db 0x00
;cases/./../tests/p99-conformance.c:292: void has_const_parameter(double A[const 10]){
;	genLabel
;	genFunction
;	---------------------------------
; Function has_const_parameter
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_has_const_parameter::
;cases/./../tests/p99-conformance.c:294: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total has_const_parameter function size at codegen: 1 bytes.
;cases/./../tests/p99-conformance.c:297: void has_volatile_parameter(double A[volatile 10]){
;	genLabel
;	genFunction
;	---------------------------------
; Function has_volatile_parameter
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 2 bytes.
_has_volatile_parameter::
;	adjustStack by -2
;cases/./../tests/p99-conformance.c:299: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
;	adjustStack by 2
; common peephole 50b eliminated dead push/pop pair.
	ret
;	Total has_volatile_parameter function size at codegen: 2 bytes.
;cases/./../tests/p99-conformance.c:303: void has_restrict_parameter(double A[restrict 10]){
;	genLabel
;	genFunction
;	---------------------------------
; Function has_restrict_parameter
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_has_restrict_parameter::
;cases/./../tests/p99-conformance.c:305: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total has_restrict_parameter function size at codegen: 1 bytes.
;cases/./../tests/p99-conformance.c:319: unsigned has_mixed_declaration(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function has_mixed_declaration
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_has_mixed_declaration::
;cases/./../tests/p99-conformance.c:321: has_mixed_declaration();
;	genCall
	call	_has_mixed_declaration
;cases/./../tests/p99-conformance.c:323: return a;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x000a
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/p99-conformance.c:324: }
;	genEndFunction
	ret
;	Total has_mixed_declaration function size at codegen: 1 bytes.
;cases/./../tests/p99-conformance.c:328: unsigned has_for_declaration(void) {
;	genLabel
;	genFunction
;	---------------------------------
; Function has_for_declaration
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_has_for_declaration::
;cases/./../tests/p99-conformance.c:329: unsigned a = 10;
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #0x000a
;cases/./../tests/p99-conformance.c:330: for (unsigned i = 0; i < a; ++i) {
;	genAssign
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 0 de_dead 1 iy_dead 1 f_dead 1
	ld	bc, #0x0000
;	genLabel
00108$:
;	genCmpLt
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
; common peephole 163 changed absolute to relative conditional jump.
	jr	nc, 00102$
;	skipping generated iCode
;cases/./../tests/p99-conformance.c:331: a -= i;
;	genMinus
	cp	a, a
	sbc	hl, bc
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 0 iy_dead 1 f_dead 1
;cases/./../tests/p99-conformance.c:330: for (unsigned i = 0; i < a; ++i) {
;	genPlus
	inc	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;cases/./../tests/p99-conformance.c:335: default:
;	genLabel
00102$:
;cases/./../tests/p99-conformance.c:338: return var;
;	genRet
;	genMove_o size 2 result type 2 source type 1 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #0x0000
;cases/./../tests/p99-conformance.c:340: return a;
;	genLabel
; common peephole 159 removed unused label 00113$.
;cases/./../tests/p99-conformance.c:341: }
;	genEndFunction
	ret
;	Total has_for_declaration function size at codegen: 1 bytes.
;cases/./../tests/p99-conformance.c:359: void has_func_macro(char const* where[]) {
;	genLabel
;	genFunction
;	---------------------------------
; Function has_func_macro
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_has_func_macro::
;	genReceive
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
;cases/./../tests/p99-conformance.c:360: *where = __func__;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerSet
;	genMove_o size 2 result type 2 source type 2 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	(hl), #<(___str_4)
	inc	hl
	ld	(hl), #>(___str_4)
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/./../tests/p99-conformance.c:361: }
;	genEndFunction
	ret
;	Total has_func_macro function size at codegen: 1 bytes.
_has_idempotent_const:
	.dw #0x0001
___str_4:
	.ascii "has_func_macro"
	.db 0x00
;cases/./../tests/p99-conformance.c:549: void testP99(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function testP99
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_testP99::
;cases/./../tests/p99-conformance.c:551: }
;	genLabel
; common peephole 159 removed unused label 00101$.
;	genEndFunction
	ret
;	Total testP99 function size at codegen: 1 bytes.
_has_preprocessor_minus:
	.dw #0x0001
_has_preprocessor_bitneg:
	.dw #0x0001
_has_preprocessor_ternary_unsigned:
	.dw #0x0001
_has_preprocessor_ternary_signed:
	.dw #0x0001
_has_preprocessor_logical_signed:
	.dw #0x0001
_has_non_evaluated_comma_expression_assign:
	.dw #0x0000
_has_non_evaluated_comma_expression_prepro:
	.dw #0x0000
_has_evaluated_comma_expression_assign:
	.dw #0x0001
_has_digraph_stringify:
	.ascii "digraph"
	.db 0x00
_has_trigraph_stringfy:
	.ascii "trigraph"
	.db 0x00
;cases/tst_p99-conformance.c:4: __runSuite(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __runSuite
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___runSuite::
;cases/tst_p99-conformance.c:6: __prints("Running testP99\n");
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	hl, #___str_7
;	genCall
;cases/tst_p99-conformance.c:7: testP99();
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_p99-conformance.c:8: }
;	genEndFunction
	jp	___prints
; common peephole 152 removed unused ret.
;	Total __runSuite function size at codegen: 1 bytes.
___str_7:
	.ascii "Running testP99"
	.db 0x0a
	.db 0x00
;cases/tst_p99-conformance.c:13: __getSuiteName(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function __getSuiteName
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
___getSuiteName::
;cases/tst_p99-conformance.c:15: return "p99-conformance.c";
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genRet
;	genMove_o size 2 result type 2 source type 7 a_dead 1 hl_dead 1 de_dead 1 iy_dead 1 f_dead 1
	ld	de, #___str_8
;	genLabel
; common peephole 159 removed unused label 00101$.
;cases/tst_p99-conformance.c:16: }
;	genEndFunction
	ret
;	Total __getSuiteName function size at codegen: 1 bytes.
___numCases:
	.dw #0x0001
___str_8:
	.ascii "p99-conformance.c"
	.db 0x00
	.area _CODE (BANK=_CSEG)
	.area _INITIALIZER
__xinit__has_Bool:
	.db #0x00	;  0
__xinit__has_designated_array_initializer:
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0001
__xinit__A1:
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0001
__xinit__has_designated_struct_initializer:
	.dw #0x0002
	.byte #0x00, #0x00, #0x80, #0x3f	;  1.000000e+00
__xinit__has_concat_of_floats_1E:
	.byte #0x00, #0x00, #0x7a, #0x44	;  1.000000e+03
__xinit__has_concat_of_floats_1Ep:
	.byte #0x00, #0x00, #0x7a, #0x44	;  1.000000e+03
__xinit__has_concat_of_floats_iterative:
	.byte #0x00, #0x00, #0x7a, #0x44	;  1.000000e+03
__xinit__has_preprocessor_expands_before_concatenation1:
	.dw #0x0000
__xinit__has_preprocessor_expands_before_concatenation2:
	.dw #0x0000
__xinit__has_preprocessor_no_placeholder_on_recursion:
	.dw #0x0000
__xinit__has_preprocessor_placeholder:
	.dw #0x0000
__xinit__has_initializer_trailing_commas:
	.dw #0x0000
__xinit__has_flexible_array:
	.dw #0x0002
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__has_restrict_keyword:
	.dw _restrict_buffer
__xinit__has_idempotent_volatile:
	.dw #0x0001
__xinit__has_idempotent_restrict:
	.dw #0x0000
__xinit__has_long_long:
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
__xinit__has_punctuation_digraph:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
__xinit__has_punctuation_trigraph:
	.dw #0x0001
	.dw #0x0001
	.dw #0xffff
	.dw #0x0000
	.area _CABS (ABS)
