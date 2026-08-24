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

6. **Rename `z80`-prefixed functions/identifiers** (found by Neil via
   `grep -i z80 * | wc -l` in `src/i8085/` - 452 hits, not all comments).
   Confirmed real, live, called functions, not dead code: `peep.c`'s
   whole `z80MightRead`/`z80MightReadFlag`/`z80MightReadFlagCondition`/
   `z80MightBeParmInCallFromCurrentFunction`/`z80UncondJump`/
   `z80CondJump`/`z80SurelyWrites`/`z80SurelyWritesFlag`/
   `z80SurelyReturns` family, `gen.c`'s `z80_init_reg_asmop`, `main.c`'s
   `_z80_genAssemblerStart`. Rename each and update every call site -
   this is mechanical but touches a real number of call sites per
   function, verify each rename's call sites are all caught (a grep for
   the old name after the rename should come back empty).

7. **Audit the `IS_Z80`/`IS_Z180`/`IS_R2K`/`IS_R2KA`/`IS_R3KA`/`IS_R4K`/
   `IS_R5K`/`IS_R6K`/`IS_SM83`/`IS_TLCS90`/`IS_TLCS870`/`IS_TLCS870C`/
   `IS_TLCS870C1`/`IS_EZ80`/`IS_Z80N`/`IS_R800` macro family** (defined
   in `i8085.h`, checking `i8085_opts.sub` against sibling z80-family
   sub-targets this port can never actually be). Each is still
   referenced in 1-3 files outside `i8085.h` itself. The clean-sweep
   phase (task #14) never specifically targeted this macro family - it
   was scoped to dead-*branch* pruning (`IS_EZ80`/`IS_TLCS90`/`IS_RAB`/
   `IS_R4K`-style), not identifier/macro-definition cleanup, so some of
   these references may be genuine leftovers never audited, not
   confirmed-necessary category-2 exceptions like `ld_cost_form`'s
   `AOP_STK`/`AOP_IY` cost stubs. Use the exact same reachability-
   tracing discipline as the clean-sweep for each: prove a macro
   reference dead before removing it (and remove the macro's own
   definition from `i8085.h` too, once nothing outside references it),
   don't assume - some may turn out to be genuine category-2 keepers
   like the clean-sweep found elsewhere.

8. **REVISED (2026-08-22, Neil) - do NOT delete `mappings.i`. Repurpose
   it to break the `extern` coupling instead.** Original plan (delete
   the orphaned local file, leave `main.c`'s `extern const ASM_MAPPINGS
   _asxxxx_z80;` pointing at `src/z80/main.c`'s table) was wrong -
   deleting the dead local copy does nothing about the actual problem:
   i8085/i8080 codegen currently depends on `src/z80/mappings.i`'s
   content at build time, with zero signal to a future z80 maintainer
   editing that file for a z80-only reason that they're also changing
   i8085/i8080 output. Same category of implicit coupling `z80.h` ->
   `i8085.h` was already fixed for.

   **Correct fix**: give i8085 its own independent mapping table.
   - Repurpose `mappings.i` (don't delete): keep/rename the
     `_asxxxx_z80_mapping` table (the one i8085 actually relies on
     today, confirmed via `gen.c`'s existing "shared, un-touchable
     `_asxxxx_z80_mapping` table" comments) to something like
     `_i8085_asm_mapping`. Drop the other tables in the file i8085 has
     never used (`_asxxxx_gb_mapping`, `_asxxxx_r2k_mapping`,
     `_rgbds_mapping`, `_rgbds_gb_mapping`, `_isas_mapping`,
     `_isas_gb_mapping`, `_z80asm_mapping`, `_z80asm_z80_mapping`,
     `_gas_gb_mapping`, `_gas_z80_mapping`, and the `_isas`/`_rgbds`/
     `_z80asm` `ASM_MAPPINGS` wrapper structs - verify each is
     genuinely unused by i8085 before dropping, same discipline as
     everything else in this plan).
   - `main.c`: replace `extern const ASM_MAPPINGS _asxxxx_z80;` +
     the `asm_addTree (&_asxxxx_z80);` call sites with a locally-defined
     table and `#include "mappings.i"` (matching how `z80/main.c` does
     it for its own copy).
   - **Do NOT change the table's actual content/values** - keep the
     Zilog-flavored text (`"ld a, (hl)\ninc\thl"` etc.) exactly as-is.
     `gen.c`'s `intelOperand()` machinery already correctly translates
     the leftover Zilog text at the point of use - this is proven,
     regression-verified logic from the mnemonic migration itself. This
     fix is about *ownership* (who defines the table, so an i8085-only
     backend never silently changes when someone edits `z80/`), not
     about the table's content being wrong.
   - Validate exactly like every other item: full 3-port regression,
     unchanged 2/6356 baseline. If the extern removal changes anything
     at all, that's a sign of a mistake in the copy, not a real
     divergence to accept.

**Peephole files (`peeph.def`, `peeph-z80.def`) - deliberately left
untouched (2026-08-22, Neil)**: still entirely Zilog-syntax (`peeph.def`
alone has 921 hits of `ld`/`jr`/`jp`/`ldir`/`ex` across 3193 lines), with
generic headers giving no signal they're currently inert in this
directory. Not addressed in this tidy-up phase - the real fix (a genuine
Intel-syntax rewrite) is real, separate engineering work, formally
tracked as task #17, not something to paper over with a comment or
quietly skip. **The project is not considered fully "done" until that
rewrite happens** - this is an explicit open item, not a closed one.

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

**Checkpoint 2 committed and pushed as `83ee902`**:
- `mappings.i` repurposed (not deleted) - `i8085` now has its own
  independent `ASM_MAPPINGS` table instead of `extern`-linking to
  `src/z80/main.c`'s copy, fixing the implicit-coupling risk Neil
  flagged (table content unchanged, still correctly consumed via the
  existing `intelOperand()` translation).
- Item 6 (rename `z80`-prefixed identifiers) done: `peep.c`'s whole
  `z80MightRead`/`z80SurelyWrites`/`z80UncondJump`/`z80CondJump`
  family, `gen.c`'s `z80_init_reg_asmop`, `main.c`'s
  `_z80_genAssemblerStart` - all file-local `static`, zero cross-file
  linkage risk, verified zero leftover references anywhere.
- Item 5 done for `peep.c`, `ralloc.c`, `ralloc2.cc`. `main.c`/`gen.c`
  not yet started.
- Item 7 (macro-family audit) scoped, not executed - spot-checks on
  the smaller macros found every occurrence outside `i8085.h` is
  inside a comment, not live code, but unverified for the two largest
  (`IS_SM83`: 209 occurrences, `IS_TLCS870`-family: ~97) pending
  `gen.c`'s comment pass, which will answer this as a side effect -
  doing items 5 and 7 together for `gen.c` rather than as separate
  sweeps.

Independently verified before committing: zero leftover `z80`-prefixed
references, all three `.sum` files at 0/6354 (UTF-8 exclusion landed
too), 0 abnormal stops.

Next: `main.c`'s comment pass (small), then `gen.c` as one combined
comment-pass-plus-macro-audit effort (~18,400 lines, the largest
remaining piece of the whole plan) - checkpointed by logical section.

**Checkpoint 3 committed and pushed as `6f5b3a9`** - `main.c`'s comment
pass done, including finding and fixing a genuinely broken reference
(a comment pointing at `_z80AsmCmd above`, an array removed earlier in
the project - not just stale, actively wrong). Verified: 0/6354 on all
three ports, 0 abnormal stops, only `main.c` modified. `gen.c` next -
the largest remaining piece.

## Workflow

Same incremental-checkpoint pattern as the clean-sweep phase: commit
and push verified checkpoints as they land rather than holding
everything for one giant commit. Item 1-4 are mechanical and low-risk
(rename/delete/fix-header); item 5 is the real editorial work and will
likely take the most time - fine to split across multiple commits by
file or by logical grouping.
