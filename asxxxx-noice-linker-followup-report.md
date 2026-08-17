# ASxxxx realignment follow-up: NoICE/debug extensions and linker drift

> Follow-up to `asxxxx-realignment-report.md`, closing its two "not yet
> done" items: whether `as8085`'s object-format usage supports SDCC's
> NoICE/debug extensions, and how much `linksrc`/`sdldz80` has drifted from
> upstream. Research only — no compiler/assembler/linker code was changed
> producing this report. Comparison is `vendor/asxxxx` (upstream ASxxxx
> v6.10, pinned submodule) vs `sdcc/sdas/` (SDCC's fork).

## Headline finding: NoICE debug support is fully native upstream, unchanged

`lknoice.c` (the NoICE debug-file generator, in `linksrc/`) exists in the
vendored tree already, actively maintained by the original author (dated
as recently as March 2025 per its own changelog comment). Diffed
LF-normalized against SDAS's copy: **4 diff-lines out of 670**, and that
one difference is a copyright-year bump in a comment (`1989-2025` vs
`1989-2026`) - otherwise byte-for-byte identical. NoICE support was never
an SDCC-specific addition; it's genuine, current upstream functionality.
The related NoICE-aware code on the assembler side (`asdbg.c`, `asdata.c`,
`asmain.c`, `asxxxx.h`) is present upstream too, for the same reason.

This fully resolves the "NoICE debug records" half of the original
report's open question - there is nothing to re-verify against `as8085`
here; the feature is upstream, current, and untouched by SDAS's fork.

## The three `asout.c` "SDCC-specific extensions" - none are real blockers

The original report flagged `outradix`, `outrwp`, and `write_rmode` in
`asxxsrc/asout.c` as SDCC additions not present upstream, without checking
their actual relevance. Closer look:

- **`outradix`**: the *functionality* (writing the `.rel` file's radix
  header line, `X`/`Q`/`D` + hi/lo + byte count) is present upstream too -
  just inlined at the call site rather than factored into its own named
  function. Not a capability gap, just a refactor SDAS did at some point.
- **`outrwp`**: genuinely SDCC-specific, and genuinely absent upstream.
  But it is called *exclusively* by the PADAUK (PDK) target family
  (`aspdk`, `aspdk13/14/15/16` - `pdkmch.c`/`pdk*mch.c`), an entirely
  separate, unrelated microcontroller architecture. Never called from
  `z80mch.c` or any z80-family code path.
- **`write_rmode`**: genuinely SDCC-specific escape machinery for
  relocation-mode values that exceed a byte (`R_ESCAPE_MASK`, defined in
  `asxxxx.h` as "used to escape relocation modes greater than 0xff").
  Traced every flag that can produce a >0xff relocation value:
  `R_J19`/`R_C24`/`R_J11` are explicitly DS80C390/8051-only per their own
  `#define` comments; `R_HIB` is a DS80C390 24-bit-addressing flag; `R_BIT`
  is MCS-51's bit-addressable-space flag; the `R_0100`-`R_0F00` "extended
  relocation mode" range is used *only* by `xa51/xa_link.c` (confirmed via
  `grep -rl "R_0[0-9A-F]00" sdcc/sdas/*/*.c`, one hit, not z80). z80's own
  `z80pst.c` defines zero extended relocation modes. `write_rmode` is
  still *called* generically for every relocation write (all targets
  share `asout.c`), but for z80/8080/8085 its one behaviorally-different
  branch (the escape path) is provably dead code - the values z80-family
  relocations ever carry never trigger it.

None of the three flagged extensions are actual capability gaps for
8080/8085 specifically.

## Structural finding that reframes the linker-swap question: there is no separate "z80 linker"

`sdldz80`, `sdld` (the 8051/generic linker), `sdldgb`, `sdldstm8`,
`sdld6808`, `sdldpdk`, and `sdldf8` are **literal copies of one single
compiled binary** (`sdcc/sdas/linksrc/Makefile.in`: one `$(ASLINK)` target
built from one shared `$(LKOBJECTS)` set, then `cp -p $(ASLINK) $@` for
every target name). This isn't an SDCC-ism either - vendored upstream's
own build description (`asxmak/symantec/build/aslink.mak`, `PROJ =
aslink`) shows the same one-binary-for-everything shape going back to
ASxxxx's DOS-era build tooling. A linker, unlike a compiler, doesn't need
target-specific code to understand a `.rel` file's relocation records -
the format itself is the abstraction layer, so one binary can process
output from any of ASxxxx's 60-odd assembler targets.

**Consequence: "swap the linker for z80/8080/8085" is not a scoped,
per-target decision the way the assembler question was.** Any linker
replacement is a whole-toolchain decision affecting every SDCC backend
(mcs51, z80-family, PDK, STM8, HC08, F8, ...) simultaneously, since they
all run through the exact same binary. This is a materially different,
larger-scope undertaking than realigning `asz80`/`as8085` in isolation.

## Linker source drift, given that context

| file | vendor lines | sdcc lines | diff-lines | note |
|---|---|---|---|---|
| `lknoice.c` | 670 | 670 | 4 | copyright year only |
| `lkhead.c` | 311 | 313 | 10 | negligible |
| `lkrloc.c` | 518 | 519 | 11 | negligible |
| `lksdcdb.c` | 180 | 181 | 21 | negligible |
| `lkdata.c` | 639 | 684 | 97 | |
| `lkout.c` | 960 | 959 | 115 | |
| `lksym.c` | 685 | 601 | 112 | |
| `lklex.c` | 590 | 688 | 168 | |
| `aslink.h` | 1272 | 1407 | 281 | shared header, additive (new struct fields/prototypes for the SDCC-only files below) |
| `lkbank.c` | 719 | 653 | 242 | |
| `lkeval.c` | 654 | 449 | 457 | shrank - possible simplification, not inspected further |
| `lklist.c` | 2156 | 2194 | 472 | |
| `lklibr.c` | 576 | 838 | 766 | |
| `lkrloc3.c` | 1065 | 1597 | 766 | |
| `lkarea.c` | 650 | 1310 | 1138 | dominated by MCS-51 register-bank/overlay handling (`REG_BANK_0`-`3`, `BIT_BANK`, internal-RAM overlays) - confirmed via keyword sampling of the diff's added lines, not z80-relevant |
| `lkmain.c` | 1694 | 1914 | 1246 | new functions include `bassav`/`iramsav`/`iramcheck`/`xramsav` (iram/xram = classic MCS-51 internal/external RAM terms) alongside more generic-sounding `link_main`/`copyfile`/`codesav`/`gblsav` - mixed, not fully characterized |

SDCC-only new files, all part of the same shared `LKOBJECTS` build:
`lkaomf51.c` (1130 lines, AOMF51 - an 8051 debug object format),
`lkar.c`/`lklib.c`/`lklibr.h` (archive/library handling, credited to Ken
Hornstein in-file - likely a different vintage of ASxxxx's own archive
support that both sides may have separately absorbed, not verified),
`lkelf.c` (949 lines, ELF output), `lkihx.c` (278 lines, Intel HEX
output - notably *not* in the `Makefile.in` `SRC` list checked, worth
re-verifying if pursued further), `lkmem.c` (719 lines, memory-usage
summary reporting), `lk_readnl.c`/`.h` (93 lines, small utility, Borut
Razem attribution), `lkrel.c`/`.h` (156 lines), `lksdcclib.c` (396 lines),
`sdld.c`/`.h` (148 lines - looks like the actual `main()` entry point
SDCC's build wraps around `lkmain.c`'s `link_main()`).

Vendor-only: `lkrloc4.c` - present upstream, absent from SDCC's fork
entirely (the mirror image of the `outr4b`/`outr4bm`/`outrbm`/`outrxbm`
newer-relocation-variant gap the original report found in `asout.c` -
consistent pattern of upstream having moved on with newer relocation
record types SDAS never picked up).

## Assessment: how tractable is replacing SDAS with vendored ASxxxx?

**Assembler side (`asz80`/`as8085`): looks genuinely tractable**, per the
original report plus this pass's `asout.c` finding - the three flagged
"SDCC extensions" all turn out to be either present upstream in a
different shape, or scoped to other, unrelated targets. Nothing found so
far blocks 8080/8085 specifically from using vendored `asz80` or `as8085`
as-is.

**Linker side: not really a "how tractable for z80/8080/8085" question at
all**, because there is no z80-specific linker to swap - `sdldz80` *is*
SDCC's one universal linker binary wearing a different name. Pursuing
this would mean deciding whether to replace SDCC's entire linker
toolchain (affecting every backend at once), which is a fundamentally
bigger, more centralized decision than the assembler question, and would
need buy-in/testing across targets this project has no stake in (mcs51,
STM8, HC08, PDK, F8). The bulk of the linker's drift traced so far
(`lkarea.c`'s register-bank/overlay handling, several of `lkmain.c`'s new
functions) is attributable to MCS-51's memory model specifically, not to
anything z80-family needs - suggesting that *if* a whole-toolchain linker
swap were ever pursued, the z80-relevant parts of it are probably a small
fraction of the total drift, but that's a different question from
"should this project pursue it," given the scope mismatch.

## Not yet done (possible follow-ups, not started)

- Confirm `lkihx.c` (Intel HEX output)'s actual build membership - it
  didn't appear in the `Makefile.in` `SRC` list this pass checked, worth
  double-checking before assuming it's dead/unused.
- Characterize `lkmain.c`'s drift function-by-function rather than by
  keyword sample - `link_main`/`copyfile`/`codesav`/`gblsav` weren't
  confirmed either way as z80-relevant or MCS-51-specific.
- Check whether `lkar.c`/`lklib.c` (both crediting Ken Hornstein) are a
  genuine SDCC addition or an different-vintage absorption of upstream's
  own archive-library support that both trees picked up independently -
  not verified this pass.
- No end-to-end build-and-swap test was performed for either the
  assembler or linker question - everything above is static/structural
  analysis. Before committing to this path, the concrete next step is a
  real test: take SDCC-generated z80/8080/8085 `.asm` output, assemble it
  with vendored `asz80` (or `as8085`) instead of `sdasz80`, link with
  SDCC's existing `sdldz80` (already confirmed relocation-format
  compatible per the NoICE/write_rmode findings above), and confirm a
  working binary comes out.
