/* Copyright (C) 2026, Neil Johnson <neil.johnson71@gmail.com>

   Token-substitution table for the vendor ASxxxx assembler's pseudo-ops
   (!area, !*hl, !mems, ...) used throughout gen.c's emit2() calls. The
   replacement text below is deliberately left as-is (e.g. "ld a, (hl)");
   gen.c's intelOperand()/emit_intel_move() machinery translates the
   handful of forms that still reach real output (chiefly "(hl)") to
   Intel syntax at the point of use - this table is not itself
   Intel-aware, and isn't meant to be. */
static const ASM_MAPPING _i8085_asm_mapping[] = {
    /* We want to prepend the _ */
    { "area", ".area _%s" },
    { "areacode", ".area _%s" },
    { "areadata", ".area _%s" },
    { "areahome", ".area _%s" },
    { "*hl", "(hl)" },
    { "jphl", "jp (hl)" },
    { "di", "di" },
    { "ei", "ei" },
    { "ldahli",
      "ld a, (hl)\n"
      "inc\thl" },
    { "ldahld",
      "ld a, (hl)\n"
      "dec\thl" },
    { "lldahli",
      "ld (hl), a\n"
      "inc\thl" },
    { "lldahld",
      "ld (hl), a\n"
      "dec\thl" },
    { "ldahlsp",
      "ld hl, #%d\n"
      "add\thl, sp" },
    { "mems", "(%s)" },
    { "adjustsp", "lda sp,-%d(sp)" },
    { "here", "." },
    { "optsdcc", ".optsdcc" },
    { NULL, NULL }
};

static const ASM_MAPPINGS _i8085_asm_mappings = {
    &asm_asxxxx_mapping,
    _i8085_asm_mapping
};
