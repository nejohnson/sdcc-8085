# i8085 backend: known open items

> A single, deliberately short list of everything currently known to be
> unfinished, uncertain, or left as a conscious trade-off in
> `sdcc/src/i8085/` and its regression harness. Every numbered task
> (#16-#36) is closed as of 2026-09-15 - nothing below is task-numbered,
> and nothing below is blocking or urgent. This file exists so these
> don't only live in commit messages or session memory, where they're
> easy to lose track of (in particular: moving this project to a new
> machine carries the git history over automatically, but does *not*
> carry over Claude Code's per-project memory unless that's copied
> separately - this file is the durable, git-tracked record).

Update this file whenever one of these is resolved (move it to a
"closed" note or just delete the entry - git history keeps the
resolution) or a new one is found worth tracking here rather than only
in a commit message.

## 1. UTF-8-in-identifiers: documented gap, not a fix

The vendor ASxxxx assembler's `ctype`/`ccase` tables don't cover the
full byte range needed for UTF-8 continuation bytes in identifiers, so
`tcc_83_utf8_in_identifiers`/`tst_p99-conformance` are excluded from
the regression corpus (`support/regression/MakeList`'s
`EXCLUDE_ARCH_i8080`-family lists, shared across i8080/i8085/i8085-undoc)
rather than fixed. Already tracked in detail in
`intel-mnemonic-migration-plan.md` (the authoritative writeup - both
`get()`s and both `ctype`/`ccase` table pairs in the vendor assembler
source, plus redundant re-masking in `assym.c` and presumably
`linksrc`'s equivalent symbol code, would need extending). Listed here
only so it appears in one consolidated place alongside the other four -
see that doc for the real detail if this is ever picked up.

## 2. `genAssign`'s l-path cost (`cyclecost_l`/`sizecost_l`) - unclear what it's even modeling

Residual from item 3's 2026-09-16 finding (n-path half fixed 2026-09-17,
commit `6b9a763` - see the closed entry below). `cyclecost_l`'s
`21 * size` term structurally matches a per-iteration cost for the
hand-rolled `emit8080Ldir()` loop this port uses (no hardware block-
move instruction on 8080/8085) - but Z80 has real hardware `LDIR`, so a
genuine Z80 cost model would never have needed this loop shape at all.
That casts real doubt on whether "21" was ever modeling *this*
8080/8085-specific code path, as opposed to being a generic Z80-family
byte-copy estimate inherited unexamined when `emit8080Ldi()`/
`emit8080Ldir()` were added for this port. Unlike the n-path fix,
re-deriving this with confidence would mean guessing what the numbers
were originally for, not correcting a known-right shape's wrong
values - a materially different, riskier kind of change. Left alone,
reasoning documented inline in `gen.c`. Purely a dry-run cost-
estimation input (affects which of two already-correct codegen shapes
`genAssign` picks, never correctness), so still low priority - pending
someone actually tracing `emit8080Ldi()`/`emit8080Ldir()`'s real
per-iteration cost in enough depth to derive a properly `size`-scaled
formula, which the current `sizecost_l` doesn't even attempt (it has
no `* size` term at all, unlike `cyclecost_l` - a separate, pre-
existing structural gap noticed but not investigated further here).

## 3. Documentation gloss pass round 2: comment noise standard was applied too loosely

Added 2026-09-17, per Neil's direct review of the actual source after
the round-1 gloss pass (commit `e0cd824`) claimed item "residual
Zilog lineage" done. It wasn't, by the standard Neil actually wants
applied - see [[feedback_comment_noise_standard]] for the full
correction. Round 1 judged most of the 103 z80/zilog grep hits in
`src/i8085/` as legitimate necessary documentation (explaining *why*
a Zilog-only instruction doesn't exist on 8080/8085, or citing real
current cross-file facts like "vendor's as8085, not sdasz80") and left
them in place. Neil's own direct read disagreed, citing concrete
examples: `gen.c:147`'s long narrative comment block explaining
historical migration rationale (git history covers this, not source
comments), and the `A_CCF`/`A_CPL`/etc. mnemonic table's "Zilog's ccf
-> Intel's cmc, same operation"-style comments (noise for a reader who
only cares about the Intel mnemonic). Also flagged: "SM83" alone still
has many hits, evidence the sweep wasn't thorough.

**The corrected standard:** comments should describe only *current*
8080/8085 behavior. No comparisons to what Z80/SM83/Rabbit/TLCS90/
eZ80/Z80N/R800 do or did, no "how we got here" migration narrative,
even when accurate - git history and this repo's own planning docs
(`intel-mnemonic-migration-plan.md` etc.) already preserve that story
for anyone who wants it. Real, current, actionable cross-file facts
about *this* port's own toolchain/build (e.g. "vendor's as8085, not
sdasz80") stay; anything that spends its words explaining another
processor's behavior for comparison doesn't.

Not started as of this note - queued explicitly for "once the current
task is complete" (the `genAssign` cost-heuristic work above). Needs a
genuinely more aggressive re-sweep of `src/i8085/`'s comments against
this corrected standard, not just re-running the same grep with a
stricter eye - see the memory note for the full worked examples and
how to apply the line.

## Closed

### `i8085_instructionSize()` was entirely unreachable (removed 2026-09-17, `6747b80`)

Was item 2 on this list, opened during the round-1 doc-gloss pass
(which had only confirmed the `"ld"`-mnemonic branch specifically was
empirically dead across the regression corpus, leaving open whether
the whole function might still be reachable via user inline asm).
Traced the complete call chain by code, not just corpus-grepping:
`port->peep.getSize` (only ever `i8085_instructionSize`) has exactly
one caller anywhere in the shared frontend - `SDCCpeeph.c`'s
`interpretLine()` - itself only called from `pcDistance()` - itself
only called from the `labelInRange`/`labelJTInRange` FBYNAME condition
functions (relative/short-jump-range checks). Those two are dispatched
purely by name, parsed directly out of a peephole rule's own condition
clause (`callFuncByName(pr->cond, ...)`) - never called implicitly.
`peeph-i8085.def`, this port's complete and exclusive rule set, never
names either condition. So the entire chain - including the "ld"
branch's inline-asm concern - was unreachable for any input
whatsoever: i8085/i8080 have no relative/short jump to range-check
against in the first place, which is exactly why no rule here would
ever need this machinery. Removed the 237-line function entirely, its
declaration, and repointed both `PORT` struct `getSize` fields to
`NULL`. Verified: i8085+i8085-undoc regression, 0 failures, 0 abnormal
stops, byte- and tick-identical to the pre-removal baseline.

### `genAssign`'s n-path `cyclecost_n` was still the Z80 value (fixed 2026-09-17, `6b9a763`)

Half of item 3 on this list (the other half, the l-path, remains open
- see item 2 above). Traced the n-path (byte-copy loop, taken when
`result` is `AOP_DIR`) through `cheapMove()` for the case this
estimate's own accuracy comment is scoped to (both operands
`AOP_DIR`): that path always goes through A - `lda addr` (3 bytes, 13
T-states) then `sta addr` (3 bytes, 13 T-states), both fixed,
undisputed 8085 timings with no Z80-vs-8085 ambiguity.
`sizecost_n`'s byte count (6/size unit) was already correct;
`cyclecost_n`'s state count (38/size unit, the inherited Z80 value)
was not - fixed to 26 (13+13). Verified: i8085+i8085-undoc regression,
0 failures, 0 abnormal stops; bytes shifted up slightly on i8085
(8196012->8201484), ticks down slightly (2663791074->2663784739) - the
`l_better` decision now correctly favors the cheaper-in-cycles path
more often under this build's default speed-optimization goal, exactly
the expected signature of a genuine cost-model correction.

### `device/lib`'s model-i8080/i8085/i8085-undoc targets silently no-op'd (fixed 2026-09-15, `94b0db9`)

Found doing a from-scratch build/regression validation on a freshly
migrated machine. `device/lib/Makefile.in`'s `model-i8080`, `model-i8085`,
and `model-i8085-undoc` targets each guarded their build with `if grep
'^z80$$' $(top_builddir)/ports.build`, a leftover from when i8085/i8080
lived inside the z80 port. Since the z80-purge fork-out gave i8085 its own
top-level `ports.build` entry (`i8085`, registering both `i8080_port` and
`i8085_port`), and this project's builds run with z80 disabled, that guard
was always false - all three device-lib builds silently no-op'd with exit
0 and no error, every time, on every machine this was ever built on since
the fork-out. Never caught before because every prior session's build/lib/
regression directory already had libraries left over from before the
fork-out; a truly fresh machine with no pre-existing `device/lib/build/`
was needed to expose it. Fixed by checking for `i8085` instead of `z80`.
Re-verified with a full 3-port regression after the fix: 0 failures, 0
abnormal stops, 36366 tests/6358 cases/port on i8085/i8085-undoc/i8080 -
see git history for the full commit message.

### `--fno-omit-frame-pointer` was a silent no-op (retired 2026-09-15, `339faaa`)

Was item 1 on this list. The frame pointer is unconditionally omitted
on this port (no index register to hold one), so the flag never did
anything - it was silently accepted and ignored. Decided to retire it
entirely rather than warn or leave it documented-inert, matching a
direct precedent already in this codebase: `sm83` (Game Boy), the
closest architectural cousin to this port (also IX/IY-less), already
declines to register this same flag in its own `_sm83_options[]`
table in `src/z80/main.c`, and `gen.c`'s real z80 frame-pointer check
is explicitly gated `!IS_SM83` to skip it. Removed
`OPTION_FRAMEPOINTER` and both its registrations from i8080/i8085's
`OPTION` tables, plus the now-fully-dead `i8085_opts.noOmitFramePtr`
field. Passing `--fno-omit-frame-pointer` now produces a normal
"unknown compiler option ... ignored" warning instead of silent
acceptance. Full 3-port regression after the change: 0 failures, 0
abnormal stops, byte- and tick-identical to the pre-change baseline -
pure option-plumbing removal, zero codegen impact, exactly as
expected.

### PUSH/RST `cost2()` timing values were wrong (fixed 2026-09-16, `ea32c0c`)

Was item 2 on this list. Task #21 had left `PUSH`/`RST` on the
Z80-inherited `cost2(1,11)`, uncertain whether the real 8085 value was
11 or 12. Cross-checked multiple independent 8085-specific instruction-
timing references (not 8080 or Z80 datasheets - real 8085 sources
only, per this list's own methodology reminder, formerly here):
all converge on **12 T-states / 3 machine cycles** (Opcode Fetch,
Memory Write, Memory Write) for both `PUSH rp` and `RST n` on genuine
8085 hardware - the opcode-fetch cycle for these two specific
instructions is internally extended to 6 T-states rather than the
base 4 used by simpler one-byte instructions. No source found
supports 11 for real 8085; that value was purely the uncorrected
Z80-inherited one. Updated all 13 genuine PUSH/RST `cost2(1,11)` call
sites to `cost2(1,12)`, leaving the one coincidentally-identical site
(`ADD HL,SP`, unrelated) alone. Full 3-port regression: 0 failures, 0
abnormal stops - tick counts rose as expected (real cost increased);
byte counts shifted slightly too, since `cost2()`'s state argument
also feeds the register allocator's dry-run cost comparisons between
candidate codegen shapes - not a regression, the expected signal for
a genuine cost-model correction (unlike the byte-identical signal
expected of pure dead-code removal).

**The 8080/8085-differ methodology reminder this item used to carry
is still generally relevant** for anyone touching `cost2()` again:
8080 and 8085 genuinely differ on several instruction timings (`MOV
r,r'`, `INR`/`DCR`, `INX`/`DCX` all differ), and this port's `cost2()`
table has no per-sub-target differentiation - a single shared table
serves both `SUB_8080`/`SUB_8085`. Do not trust a single source
(especially an 8080-only datasheet) for an i8085 value; seek 2+
independent 8085-specific sources before changing anything here. See
`feedback_8085_vs_8080_timing_data` for the fuller write-up of why
this matters (a naive first pass at a past version of this exact task
nearly "fixed" three values that were already correct for i8085 and
only wrong for 8080).

### `bit8_cost()`'s `AOP_EXSTK` "add hl, sp" leftover was wrong too (fixed 2026-09-16, `4323145`)

Found incidentally while re-verifying which `cost2(1,11)` sites were
genuinely PUSH/RST for the fix above - not a previously-tracked item,
first surfaces here. Task #21's earlier DAD-timing pass (`b7c27a67`)
had fixed 5 of 6 "add hl, sp"-commented `cost2()` sites to the correct
8085 DAD value (`cost2(1,10)`, 10 T-states) but missed a 6th:
`bit8_cost()`'s `AOP_EXSTK` case (gen.c ~1486), still sitting at the
old Z80-inherited `cost2(1,11)`. Fixed. Full 3-port regression: 0
failures, 0 abnormal stops, byte/tick-identical to baseline - this
`AOP_EXSTK` path isn't exercised by the current test corpus, so no
visible size/tick effect, but the value is now correct for when it is
reached.

### `cost2()`'s shrunk body duplicated the pre-existing `cost()` helper (fixed 2026-09-16, `87b4531`)

Was item 1 on this list. Since Task #21 part (a) shrunk `cost2()` to
its two live parameters, its accumulation body became byte-for-byte
identical to a separate, pre-existing helper named `cost()` (bar an
int-vs-unsigned-int bytes parameter and `cost2()`'s extra sanity
`wassert()`). Repointed `cost()`'s 3 direct call sites and the
`UNIMPLEMENTED` macro to `cost2()` instead, then deleted `cost()`
entirely - `cost2()` is now the sole cost-accounting function in the
file. Full 3-port regression: 0 failures, 0 abnormal stops, byte- and
tick-identical to the pre-change baseline - exactly the expected
signal for a pure duplicate-function removal with zero behavioral
difference.

### `HLinst_ok()`'s 9 removed hatches, minimized (fixed 2026-09-16/17, `e28f9ad` + `8d9957c`)

Was item 1 on this list. Task #29's `ralloc2.cc` fixes (`dd406145`,
`93fdeabd`) had removed 9 escape hatches together as a group, verified
only as a whole - repro-by-repro bisection had already proven
unreliable as a substitute for the full regression once, so no attempt
was made at the time to find which of the 9 were actually necessary
vs. safe to restore. This pass tested all 9 individually, restoring
each alone against the current best-known state and reverting on any
regression:

- **2 were provably dead code before they were ever removed**
  (`ADDRESS_OF`'s narrower second case, `CALL`) - both gated by opcodes
  an earlier, still-present unconditional check (inherited unchanged
  from upstream SDCC, predates this project) already approves
  unconditionally. Verified empirically too: restoring both produced a
  full 3-port regression byte- and tick-identical to baseline, not just
  "0 failures" - the expected signal for genuinely dead code.
- **2 more were safe AND genuinely improved code quality when
  restored** (`LEFT_OP` with a literal shift count; `<`/`>` against an
  ITEMP/literal) - 0 failures, and measurably smaller/faster output
  each time. Their removal had been an unnecessarily conservative
  over-restriction.
- **1 was safe for correctness but made code *worse* when restored**
  (`GET_VALUE_AT_ADDRESS`'s "ld a,(dd)" case) - counterintuitive, since
  more valid register-assignment options should in principle only let
  the allocator find equal-or-cheaper solutions; suggests the tree-
  decomposition search isn't a perfect global optimum, or the dry-run
  cost model doesn't perfectly track real output size here. Per Neil's
  explicit call: kept removed, since restoring it doesn't serve this
  pass's actual goal.
- **4 confirmed genuinely necessary**, not just asserted from the
  original repro-based bisection: `IFX` (154 failures restored alone -
  `bug-3459`, `gte_loop-ivopts-2`, 2 gcc-torture cases), the
  `result_only_HL` group (5 failures - `bug-3873`), the `=`-family
  group (25-26 failures AND a genuine abnormal stop -
  `gcc-torture-execute-loop-3c.c` hangs), and `=`/CAST-`!input_in_HL`
  (6 failures - `bug-2712`, `bug-3873`).

Interesting side finding: several tests the original bisection tied to
one specific hatch (`bug-2452`, `bug-136564`) no longer fail when that
hatch alone is restored, now that `LEFT_OP`/`<`/`>` are back in the
mix - hatches interact, so this isn't a contradiction of the original
findings, just evidence the failure surface shifts as other hatches
change.

Final state: 4 of the original 9 restored, 5 confirmed necessary and
permanently removed. Closing full 3-port regression: 0 failures, 0
abnormal stops, and a genuine net improvement over the original
all-9-removed baseline (i8080/i8085: 8198291->8196012 bytes,
2680822032->2663791074 ticks). Each of the 7 non-dead-code candidates
needed its own full i8085+i8085-undoc regression (~35 min each at
`-j4`) to verify - the full suite remains the only validation this
kind of change trusts, exactly as the original #29 investigation found.

### Documentation gloss pass (done 2026-09-16, `7082ddd` + `56eaf0d`)

Per Neil's direct request. Three sub-tasks:

1. **Residual Zilog-family lineage sweep** across `sdcc/src/i8085/`
   (103 grep hits for z80/zilog/rabbit/etc., reviewed individually)
   and this repo's top-level `.md` docs. Verdict: the vast majority of
   the 103 hits are legitimate, necessary technical documentation -
   explaining *why* a Zilog-only instruction/addressing mode doesn't
   exist on 8080/8085, or documenting removed dead code's real origin
   - not the "wrong lens" comparative framing Task #26's earlier
   comment scrub already purged. No further code-comment changes made
   in `src/i8085/` itself. One specifically-checked identifier,
   `ralloc2.cc`'s `wassert (TARGET_Z80_LIKE)`, is correct as-is: a
   shared upstream frontend macro (`port.h`) that explicitly folds in
   `TARGET_I8080_LIKE` by design (this port genuinely is
   frontend-level "Z80-like" for memory-model purposes, even though
   codegen itself was purged of Z80 instructions) - out of scope to
   rename regardless, since it's shared across dozens of frontend
   files. **README.md, however, had genuinely false (not just stale)
   technical claims** - it still described the toolchain as SDCC's own
   `sdasz80`/`sdldz80` and the compiler as "8080/8085 as Z80
   sub-targets", both incorrect since the vendor-toolchain migration
   and the z80-purge fork-out. Fixed (`56eaf0d`): toolchain description,
   assembler/linker table rows, the "Z80 backend: 0 regressions" badge
   (now moot - no shared code left to regress), and the "gating Z80
   backend" framing - while keeping the honest origin story and
   crediting ASxxxx/Alan Baldwin in acknowledgments.
2. **Zilog-mnemonic audit.** (a) No leftover valid-on-8085 Zilog-syntax
   emission found - the Intel-mnemonic migration held. (b) No
   genuinely-invalid Z80-only mnemonic reaches real generated output
   *anywhere*: verified empirically across the entire regression
   corpus (~17000 `.asm` files per port x3 ports, the full 6358-test-
   case corpus) for every Z80-only mnemonic/addressing form (`ld`,
   `jr`, `djnz`, `exx`, CB-prefix ops, ED-prefix ops, `ixh`/`ixl`/
   `iyh`/`iyl`, `(ix`/`(iy`, `reti`/`retn`, `im`, word-level `adc`/`sbc
   hl`, Z80 `in`/`out` forms, `ex af`) - zero matches, all patterns, all
   ports. No correctness bug to escalate. Did surface 2 new, non-
   urgent tracked candidates from this same search - see items 2 and 3
   above (not fixed here - each needs its own reachability-tracing
   pass, out of scope for a doc-gloss pass).
3. **Copyright notices** (`7082ddd`): added "Copyright (C) 2026, Neil
   Johnson <neil.johnson71@gmail.com>" to 33 files this project
   substantively wrote or changed - all 13 non-Makefile files in
   `src/i8085/`, all 6 device/lib `.s` files across i8085/i8085-undoc/
   i8080 (18 edits), and the 2 genuinely-modified `sim/ucsim` files
   (real DSUB/JX5/JNX5/LDHI bug fixes, not cosmetic). Added alongside,
   never replacing, existing copyright holders. Deliberately skipped
   `Makefile.in` files and `support/regression/ports/*/{support.c,
   spec.mk,uCsim.cmd}`, matching this project's own established
   convention (verified: no other SDCC port's equivalent files carry a
   copyright header either). Verified: full rebuild (compiler, ucsim,
   all three device libs) clean after the comment-only additions.
