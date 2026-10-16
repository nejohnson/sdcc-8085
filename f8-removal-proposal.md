# Proposal: remove SDCC's "f8" / "f8l" ports

## The problem

SDCC ships an `f8` backend (plus its `f8l` large-model variant) — a
hobby instruction set created by one of SDCC's own maintainers, unrelated
to any real historical chip. ASxxxx (the vendor assembler/linker toolchain
this fork is migrating to, replacing the bundled `sdas`/`sdld`) ships
`asf8`, which targets the real, vintage **Fairchild F8 / Mostek 3870**
processor family — confirmed directly from ASxxxx's own documentation
(`asxhtml/asf8.htm`: "The ASF8 assembler supports the F8 and 3870
processor cores").

Both tools use the literal string `f8` as their target identifier for
two *different, unrelated* processors. Cross-referencing every other
SDCC port name against every ASxxxx target name (ds390, hc08, i8085,
mcs51, mos6502, z80 and its whole family, pic14/pic16, stm8, pdk13-15 vs.
ASxxxx's as1802 through asz280) turns up no other collision — `f8` is
the only one. This was raised live, apparently without a convincing
resolution, when SDCC's f8 author was directly asked about the name
clash at a public talk.

Since this fork's whole point is migrating fully onto ASxxxx and
dropping `sdas`/`sdld`, keeping SDCC's `f8` means keeping an assembler
target name that permanently disagrees with ASxxxx about which chip
`f8` means. That's not a cosmetic issue — it's exactly the kind of
ambiguity a toolchain migration is supposed to eliminate.

## Decision

Remove SDCC's `f8`/`f8l` ports entirely from this fork. If the original
maintainer wants it reinstated, the condition is: (a) pick a target name
that doesn't collide with any real chip ASxxxx already supports, and
(b) port the instruction set into ASxxxx itself under that name, so the
toolchain and the compiler agree on what the name means. This is not a
request upstream has agreed to — this fork stays private (per standing
practice), so this is a decision for this fork only, not a patch
proposed to sdcc-devel.

## Technical scope of removal

Everything below was confirmed by grepping the actual tree, not assumed.

**Compiler core**
- `src/f8/` — delete the whole directory (the port's `main.c`, `gen.c`,
  etc.)
- `src/SDCCmain.c` — remove `&f8_port,` and `&f8l_port,` from the
  `_ports[]` table (`NUM_PORTS` is `sizeof(_ports)/sizeof(_ports[0])`,
  so it needs no separate update)
- `src/port.h` — remove the `extern PORT f8_port;` / `extern PORT
  f8l_port;` declarations

**Runtime library**
- `device/lib/f8/`, `device/lib/f8l/` — delete both directories
- `device/lib/Makefile.in` — remove the `model-f8`/`model-f8l` and
  `objects-f8`/`objects-f8l` targets, and drop `f8`/`f8l` from the
  `TARGETS`, `MODELS`-copy, and `for src in ...` lines (~lines 319, 323,
  589-604, 763, 765, 767)
- `device/include/asm/f8/` — delete (just `features.h`)
- `device/include/sdcc-lib.h`, `stdarg.h`, `setjmp.h`, `math.h`,
  `stdatomic.h` — drop `__SDCC_f8`/`__SDCC_f8l` from each `#if`/`#elif`
  condition (five files, one or two conditions each)

**Build configuration**
- `configure.ac` — remove the two `AC_DO_PORT(f8, ...)` /
  `AC_DO_PORT(f8l, ...)` lines (~752-753), the three
  `AC_CONFIG_FILES([src/f8/Makefile` / `device/lib/f8/Makefile` /
  `device/lib/f8l/Makefile])` lines (~925, 930, 934), and the two
  summary-print lines (~1035-1036)
- Regenerate `configure` from the edited `configure.ac` (autoconf) and
  re-run `config.status` rather than hand-editing the generated script

**Regression suite**
- `support/regression/ports/f8/`, `support/regression/ports/f8l/` —
  delete both directories
- `support/regression/Makefile` — drop `$(EXCLUDE_f8)` /
  `$(EXCLUDE_f8l)` from the `random-test-%` exclusion list (~line 472)

**Documentation**
- `doc/sdccman.lyx` — remove the f8/f8l port section(s)

**Not touched**
- `ChangeLog` — historical record, left as-is
- Nothing else in this fork's own `i8085`/`i8080` port, docs, or
  regression tests references f8 at all

## Verification plan

1. Delete/edit per the scope above.
2. `autoreconf` + fresh `./configure` + full rebuild — confirm it
   configures and builds clean with `f8`/`f8l` gone (no dangling
   Makefile/config references).
3. Confirm `sdcc -mf8` now fails cleanly with "unknown port" rather than
   silently doing something stale.
4. Full 3-port (i8085/i8085-undoc/i8080) regression — confirm 0
   failures, same as the current baseline; this change should have zero
   effect on the i8085/i8080 ports since they share no code with `f8`.
5. Commit as a single, clearly-scoped removal, not bundled with
   unrelated work.

## Open question for Neil

Scope is confirmed and the mechanical steps are listed above — this is
ready to execute on your go-ahead. One thing worth deciding first: do
you want the git history's old `src/f8/`/`device/lib/f8*` content left
alone (removal is just a new commit, history still has it, matching
how this fork has handled other deletions), or is there any reason to
want it scrubbed further back? Default assumption is the former
(ordinary `git rm`, nothing rewritten).
