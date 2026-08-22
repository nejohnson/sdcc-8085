# i8085 backend: naming, header, and comment tidy-up

> Follow-on to `intel-mnemonic-migration-plan.md`'s clean-sweep phase.
> Now that the mnemonic migration and dead-code removal are both done and
> regression-verified, this pass is about making `sdcc/src/i8085/` read
> like a purpose-built i8085 backend rather than a forked-and-patched
> copy of `src/z80/`. Naming and doc-comment cleanup only - no behavior
> change, so the validation bar is simple: same 2/6356-failure baseline
> on all three ports, unchanged, throughout.

## Editorial philosophy (Neil, 2026-08-22)

"With github we have the history stored already, so I think we should
aim for clean readable code that talks about the current context, not
what happened a long time ago. Clarity, not history."

Concretely: comments should describe **what the code does and why it's
shaped the way it is now** - not narrate the migration ("was Zilog `X`,
changed to Intel `Y`", "removed because `IS_TLCS90` is dead here",
"predates this migration", "confirmed via the corpus sweep"). Git
already owns that story permanently; repeating it in-source is noise,
not documentation.

**One real distinction to preserve, not blanket-strip**: comments
explaining genuinely non-obvious *current* behavior stay, because a
reader hits the same confusion regardless of whether they know the
history. Example of a keeper: `ld_cost_form`'s `AOP_STK`/`AOP_IY` cases
still exist because the register allocator's cost-only dry-run path
visits that switch arm even though real emission never does - that's
not history, it's an active fact about how the code behaves today that
isn't visible from reading the code alone.

Test for each comment: "if this reader had no idea this file used to be
`z80/gen.c`, would they still need this sentence to understand the code
in front of them?" If yes, keep (rewritten to drop the "used to
be"/"was changed from" framing if present). If no - it's pure
migration narration - cut it.

## Scope

1. **Rename `z80.h`** (e.g. to `i8085.h`) - update all 6 `#include
   "z80.h"` sites (`gen.c`, `main.c`, `peep.c`, `ralloc.c`,
   `ralloc2.cc`, `support.c`). Fix its own header comment (currently
   `/** @file z80/z80.h    Common definitions for the the z80-related
   ports. */` - wrong path, wrong scope description, and a "the the"
   typo, all inherited verbatim from `src/z80/z80.h`). Fix the
   `#ifndef Z80GEN_H`/`#define Z80GEN_H`-style include guards this file
   and others use, if named after the old path.

2. **`support.c`/`support.h`** - same stale `@file z80/...` header
   pattern, same fix.

3. **`gen.h`** - fix the `SDCCgen51.h`/"header file for code generation
   for 8051"/Sandeep Dutta 1998 header comment (genuine upstream SDCC
   artifact from the z80 backend's own 1998-era mcs51 fork - present
   verbatim in `main`'s real `src/z80/gen.h` too, so this is decades of
   inherited history, not something this project introduced - still
   worth fixing in our own independent copy). Fix the `Z80GEN_H`
   include guard.

4. **Delete 5 orphaned peephole rule files**: `peeph-ez80.def`,
   `peeph-r2k.def`, `peeph-sm83.def`, `peeph-tlcs90.def`,
   `peeph-z80n.def` (1,012 lines total) - confirmed via `main.c`'s
   actual `#include` list that only `peeph.rul`/`peeph-z80.rul` are
   ever consumed; `port.mk`'s wildcard `.def`-to-`.rul` build rule
   compiles all five needlessly on every build regardless. Verify this
   finding directly (don't just trust this doc) before deleting -
   confirm no other file in the port `#include`s their compiled `.rul`
   forms under a different name, and confirm removing them doesn't
   break the build. `peeph-z80.def` itself (28 lines, actually used)
   stays - not in scope for renaming right now, just noting it's
   real, unlike its 5 siblings.

5. **Full comment pass** across `gen.c`, `main.c`, `peep.c`, `ralloc.c`,
   `ralloc2.cc` (and anything else touched above) applying the
   editorial philosophy above. This is the biggest item - go
   file-by-file, comment-by-comment where migration narration is
   present, not just a mechanical find/replace of the word "z80". Where
   "z80" appears as part of legitimate current-state fact (e.g. this
   backend's own family lineage, a real shared-infrastructure reference
   that's still accurate today), leave it - only cut the narration
   framing, not every literal occurrence of the word.

## Validation bar

Same as every other phase of this project: full `test-i8085`/
`test-i8085-undoc`/`test-i8080` regression, 2 failures/6356 cases on
each port (the known UTF-8 limitation only, unchanged), 0 abnormal
stops. This is a pure naming/comment/dead-file pass with zero intended
behavior change, so any regression-suite delta at all means something
went wrong in the rename (a missed `#include` site, a broken guard,
etc.) - investigate immediately, don't just accept a different number.

## Progress

**Checkpoint 1 committed and pushed as `23d040b`** - items 1-4 done:
`z80.h` renamed to `i8085.h` (all 6 include sites updated, no stray
references left, both include guards fixed), `support.c`/`support.h`
header comments and guard fixed, `gen.h`'s inherited-1998-mcs51-fork
header fixed (copyright/license text kept intact as genuine history,
only the misdescription corrected), 5 orphaned `peeph-*.def` files
deleted (confirmed unused via `port.mk`'s wildcard build rule and
`main.c`'s actual `#include` list). Independently verified before
committing: no stray `z80.h` includes anywhere, both new include
guards present, all three `.sum` files at 2/6356, 0 abnormal stops.

Item 5 (the full editorial comment pass) not yet started - next.

## Workflow

Same incremental-checkpoint pattern as the clean-sweep phase: commit
and push verified checkpoints as they land rather than holding
everything for one giant commit. Item 1-4 are mechanical and low-risk
(rename/delete/fix-header); item 5 is the real editorial work and will
likely take the most time - fine to split across multiple commits by
file or by logical grouping.
