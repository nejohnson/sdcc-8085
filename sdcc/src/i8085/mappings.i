/* Token-substitution table for the vendor ASxxxx assembler's pseudo-ops
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
    /* "*ixx"/"*iyx" (IX/IY-indexed displacement addressing, inherited from
       z80) removed (#32): confirmed zero emit2() callers anywhere in
       gen.c - i8080/i8085 has no index registers at all, so nothing ever
       emits "!*ixx"/"!*iyx". The only remaining mentions of "!*iyx" in
       gen.c are two historical comments describing already-removed dead
       fast paths. */
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
    /* "ldaspsp" (iy-relative stack-to-stack move, inherited from z80)
       removed (#32): confirmed zero emit2() callers anywhere in gen.c -
       same "no index register" reasoning as "*ixx"/"*iyx" above. */
    { "mems", "(%s)" },
    { "enter",
      "push\tix\n"
      "ld\tix, #0\n"
      "add\tix, sp" },
    { "enters",
      "call\t___sdcc_enter_ix\n" },
    { "adjustsp", "lda sp,-%d(sp)" },
    { "here", "." },
    { "optsdcc", ".optsdcc" },
    { NULL, NULL }
};

static const ASM_MAPPINGS _i8085_asm_mappings = {
    &asm_asxxxx_mapping,
    _i8085_asm_mapping
};
