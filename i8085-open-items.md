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

## 1. `--fno-omit-frame-pointer` is a silent no-op

`i8085_opts.noOmitFramePtr` (set by this flag, registered in both the
i8080 and i8085 `OPTION` tables in `main.c`) has had nothing reading it
since Task #36 removed `_G.omitFramePtr`/`omit_frame_ptr()` - the frame
pointer is unconditionally omitted on this port regardless of this
flag, and always has been (the flag never did anything on i8085, #36
just made that explicit by removing the dead machinery it used to
feed). Anyone who has ever passed `--fno-omit-frame-pointer` on this
port got silent non-behavior.

**Needs a decision**, not further investigation: retire the flag
entirely (clean, but a breaking CLI change for anyone relying on it
being merely *accepted*), make it warn when passed (`options.no_std_crt0`-
style diagnostic), or leave it documented-inert (add a one-line comment
at its `OPTION_FRAMEPOINTER` registration in `main.c` noting it's
accepted-and-ignored, so the next person doesn't have to rediscover
this). No source comment currently flags this at all - it reads like a
completely ordinary, functioning option.

## 2. `cost2()`'s shrunk body duplicates the pre-existing `cost()` helper

Since Task #21 part (a) (commit `a6401025`) shrunk `cost2()` to its two
live parameters, its body is byte-for-byte identical to a separate,
already-used helper named `cost()` (gen.c, 4 call sites + the
`UNIMPLEMENTED` macro). Flagged as a unification candidate at the time,
deliberately not folded into that checkpoint (unrelated to the
mechanical shrink it was doing). Nothing currently forces a decision
either way - unifying them is a pure duplicate-function cleanup
whenever someone's next in that part of the file.

## 3. PUSH/RST `cost2()` timing values are unverified

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

## 4. `HLinst_ok()`'s 9 removed hatches aren't minimized per-failure

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

## 5. UTF-8-in-identifiers: documented gap, not a fix

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
