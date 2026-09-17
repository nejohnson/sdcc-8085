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

## 2. Documentation gloss pass: residual Zilog lineage, mnemonic audit, copyright headers

Added 2026-09-16 per Neil's direct request. Three related sub-tasks,
bundled as one pass since they're all "read the files with fresh eyes
looking for leftovers" work rather than behavioral changes:

1. **Sweep for residual Z80/Rabbit/SM83/TLCS90/EZ80/R800/PDK/MOS6502
   (and any other Zilog-family sub-target) lineage, plus IX/IY
   mentions**, across `sdcc/src/i8085/` (comments, docstrings,
   variable/function names) and this repo's own top-level `.md` docs.
   Per [[project_i8085_z80_purge_directive]], this means the full
   lineage, not just the literal string "z80" - Neil's own spot-check
   suggests what remains is mostly comment-only at this point (code
   itself was already proven z80/IY/IX-free by Task #24/#25's
   exhaustive grep sweeps), which is the good case, but needs a real
   pass to confirm, not just Neil's sampling.
2. **Audit sweep for remaining Zilog mnemonics** - two distinct
   things to check, not one: (a) any *valid-on-8085* instruction still
   referenced/emitted in Zilog syntax rather than Intel syntax
   (shouldn't exist post-migration - `intel-mnemonic-migration-plan.md`
   covers that work - but verify, don't assume), and (b) any
   genuinely Z80-*specific*, invalid-on-8085 mnemonic (`ld`, `jr`,
   `djnz`, `ex af,af'`, `exx`, any CB/ED-prefixed op, `ixh`/`ixl`/
   `iyh`/`iyl`, `in a,(c)`-style, 16-bit `adc`/`sbc hl,rr`, etc.) still
   present *anywhere* - dead code, peephole rules
   (`peeph-i8085.def`), comments, or (most importantly, since this
   would be a real bug, not a cleanliness question) anywhere actually
   *reachable* in codegen. (b) reaching real, emittable code would be
   a correctness bug worth its own fix, not just a doc-gloss note -
   escalate immediately if found, don't just log it here.
3. **Add copyright notices to files this project has substantively
   changed.** Spot-checked 2026-09-16: `gen.c`/`main.c`/`peep.c`/
   `ralloc2.cc` already carry pre-existing upstream SDCC copyright
   blocks (Sandeep Dutta, Jean-Louis Vern, Michael Hope, Philipp Klaus
   Krause, Sebastian Riedel) with no line for this project's own
   authorship; `ralloc.c`/`support.c`/`i8085.h` have no copyright
   block at all (`i8085.h` in particular is presumably wholly new,
   created during the z80-purge fork-out). Commit authorship for this
   project uses `neilj@ieee.org` (masterclass doc §2) - that's the
   natural attribution line to add. "Files we have touched" needs an
   operational definition before starting - `git diff --stat
   main...feat/i8085` (or the equivalent against the pristine
   upstream baseline) against `sdcc/src/i8085/` and its close
   neighbors (`device/lib/i8085*`, `device/lib/i8080`,
   `support/regression/ports/i8085*`, `sim/ucsim/src/sims/i8085.src/`,
   `vendor/asxxxx`) is the unambiguous, git-derivable reading, not
   "files touched this session" (too narrow) or "everyone's vague
   memory of what changed" (unreliable).

Not started as of this note - purely a documentation/comment-hygiene
pass (except the escalation clause in item 2b, which is a correctness
question in disguise). Low priority, not blocking, but real: worth
doing before any eventual upstream conversation (explicitly off the
table for now, see [[project_i8085_z80_purge_directive]] and
[[project_upstream_reception]], but this kind of gloss is exactly what
would matter if that ever changed) and generally good hygiene for
anyone reading this code cold.

## Closed

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
