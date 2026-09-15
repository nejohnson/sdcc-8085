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

## 1. `cost2()`'s shrunk body duplicates the pre-existing `cost()` helper

Since Task #21 part (a) (commit `a6401025`) shrunk `cost2()` to its two
live parameters, its body is byte-for-byte identical to a separate,
already-used helper named `cost()` (gen.c, 4 call sites + the
`UNIMPLEMENTED` macro). Flagged as a unification candidate at the time,
deliberately not folded into that checkpoint (unrelated to the
mechanical shrink it was doing). Nothing currently forces a decision
either way - unifying them is a pure duplicate-function cleanup
whenever someone's next in that part of the file.

## 2. PUSH/RST `cost2()` timing values are unverified

Task #21's timing-accuracy pass (commit `b7c27a67`) fixed several
confirmed Z80-inherited timing bugs, but explicitly left `PUSH`
(`cost2(1,11)`, several sites) and `RST` alone: sources disagreed on
the real i8085 value for `PUSH` (one source said 12, others said the
inherited 11), and confidence wasn't high enough either way to touch
it. Currently still running on the Z80-inherited `11`. Needs either a
third, tie-breaking 8085-specific source, or a decision that the
uncertainty is small enough not to matter.

**Methodology reminder from that checkpoint, worth repeating for
whoever picks this up**: 8080 and 8085 genuinely differ on several
instruction timings (`MOV r,r'`, `INR`/`DCR`, `INX`/`DCX` all differ),
and this port's `cost2()` table has no per-sub-target differentiation -
a single shared table serves both `SUB_8080`/`SUB_8085`. Do not trust a
single source (especially an 8080-only datasheet) for an i8085 value;
seek 2+ independent 8085-specific sources before changing anything
here. See `feedback_8085_vs_8080_timing_data` for the fuller write-up
of why this matters (a naive first pass at this exact task nearly
"fixed" three values that were already correct for i8085 and only wrong
for 8080).

## 3. `HLinst_ok()`'s 9 removed hatches aren't minimized per-failure

Task #29's `ralloc2.cc` fixes (commits `dd406145`, `93fdeabd`) removed 9
separate escape hatches from `HLinst_ok()` together, as a group,
because repro-by-repro bisection proved unreliable as a substitute for
the full 3-port regression (a 4-hatch minimal set that satisfied 4 hand
-picked repros actually regressed 2 larger, unrelated tests the repros
never exercised). All 9 stay removed together, verified only as a
whole. Finding the *minimal* subset each specific historical failure
actually needed - rather than all 9 removed unconditionally - is real,
deferred follow-up work. Purely a tidiness/precision question, not a
correctness one: the current state is proven correct (0 failures, 0
abnormal stops, full 3-port regression), just not proven *minimal*.

## 4. UTF-8-in-identifiers: documented gap, not a fix

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
