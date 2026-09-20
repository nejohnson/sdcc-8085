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

## 1. UTF-8-in-identifiers: out of scope by policy, not a deferred fix

**Policy decision (Neil, 2026-09-20): this fork's C source is ASCII
only.** UTF-8 (or any non-ASCII byte) in an identifier is rejected as
out of scope by design, not tracked as future work to eventually pick
up. This supersedes the "tracked as real future work, not closed
permanently" framing in `intel-mnemonic-migration-plan.md`'s
2026-08-22 investigation - that investigation's technical findings
still stand (see below for what they found), only the disposition
changed: it's not that fixing it is too risky to attempt yet, it's
that this project has no intention of supporting non-ASCII identifiers
regardless of cost.

Background, for anyone wondering why `tcc_83_utf8_in_identifiers`/
`tst_p99-conformance` are excluded from the regression corpus
(`support/regression/MakeList`'s `EXCLUDE_ARCH_i8080`-family lists,
shared across i8080/i8085/i8085-undoc): the vendor ASxxxx assembler
masks every identifier character to 7 bits in three independent
places (`asxxsrc/aslex.c`'s `get()`, a separate copy of the same
pattern in `linksrc/lklex.c`'s own `get()`, and `assym.c`'s symbol
comparison/hashing functions re-masking independently at their own
call sites) - so UTF-8 identifiers don't cleanly fail to compile, they
silently get mangled into a degraded byte sequence, with a real risk
of two genuinely different identifiers colliding into the same masked
symbol name. Full technical detail in
`intel-mnemonic-migration-plan.md`'s 2026-08-22 entry.

## 2. `genAssign`'s size-4 memcpy special case: cost genuinely state-dependent, not a fix

`gen.c`'s `size == 4 && requiresHL(...)` branch (the "simple memcpy"
special case) has a `regalloc_dry_run_cost += 8` covering two
`aopGet()` calls whose emitted pointer-setup code depends on the
operand's real type: `requiresHL()` is true for `AOP_HL`, `AOP_EXSTK`,
`AOP_STL`, and `AOP_PAIRPTR`-pointing-at-HL, so right/result here can
each be any of those four, and each drives a different `aopGet()` code
path (`AOP_HL` through `fetchLitPair()`; `AOP_EXSTK` through
`setupPairFromSP()`/`adjustPair()`, whose own cost further depends on
`_G.pairs[]`'s cached pointer state at that exact point in the
instruction stream). Investigated 2026-09-18/19 as part of closing out
the rest of the `regalloc_dry_run_cost` cluster (see the closed entries
below) - unlike every other site in that cluster, this one has no
single static formula to derive; giving it one would mean either
replicating a large chunk of the pointer-caching logic into the cost
estimator, or picking one type's cost as a stand-in and being
systematically wrong whenever a different type is the real one at
runtime, which is worse than the current honest (if imprecise) flat
estimate. Purely a dry-run cost-*estimate* input, not known to affect
correctness - the actual emission is unaffected either way.

## Closed

### `genBuiltInMemcpy`'s unexplained `regalloc_dry_run_cost += 2`, removed (2026-09-19)

Was the other half of item 2's prior entry. A second, more thorough
pass - this time also tracing `setupForMemcpy()` (called just before
this whole branch, previously unchecked) - found it too self-costs
fully via `regMove()`/`genMove()`/`fetchPair()`/`cheapMove()`, all
already-established self-costing functions. With every instruction on
every path into this branch confirmed self-costing (`fetchPair()`,
`emit3()`'s zero-check, `emitJP()`, `emit8080Ldir()`), the `+= 2` had
no remaining candidate to explain it. Removed as stale/erroneous rather
than guessed a replacement - verified via full 3-port regression that
its removal changes nothing (byte/tick counts identical to the prior
commit's baseline on all three ports), consistent with it having been
dead weight. Also cleaned up a broken `// file).` comment fragment
(same class as the round-2 gloss pass's finds) immediately above this
branch.

Verified: full 3-port regression, 0 failures, 0 abnormal stops,
byte/tick-identical to baseline.

### `regalloc_dry_run_cost`'s "legacy, bytes-only" sites, swept (2026-09-18)

Was item 2 on this list. `regalloc_dry_run_cost` (`gen.c` ~line 371) is
explicitly documented as `// Legacy: cost counted in bytes only (i.e.
states have been ignored for corresponding instructions and will be
estimated)`, and folds only into `regalloc_dry_run_cost_bytes` at the
end of a dry-run pass - never into `regalloc_dry_run_cost_states`.
Dozens of `regalloc_dry_run_cost += N` sites throughout `gen.c` used
this instead of a proper `cost2(bytes, states)` call, silently omitting
their real T-state cost from this port's actual reported cycle counts
- not a dry-run *estimate* used for a decision, but the *real*
accounting behind the compiled program's final reported cost.

Traced 16 of 18 remaining sites (2 already fixed inside `genAssign`'s
l-path in the prior pass) instruction-by-instruction, cross-checking
every timing against other already-verified `cost2()` sites in this
file (`call`=3B/17T, `mvi`=2B/7T, `lxi`=3B/10T, `push`=1B/12T,
`pop`=1B/10T, conditional jumps=3B/10T, `mov`/`ldax`/`stax`=1B/7T,
`inx`/`dcx`=1B/6T, register-form ALU ops=1B/4T). Several sites were
wrong even by the "bytes only" convention they were supposed to
follow, not just missing states - e.g. two `"mov a, m"`/`"inx"` pairs
counted `+3` where the byte count alone is 2; a `strncpy`-style loop's
byte count counted only its copy phase (14 bytes), missing its pad
phase (12 bytes) entirely, undercounting real code size by 12 bytes.

Found one genuine correctness bug along the way: `emit2 ("clr c")` -
not a valid 8085/Intel mnemonic on this port at all, and unlike most
`emit2()` calls here it wasn't gated behind `if (!regalloc_dry_run)`,
so it would have written that literal invalid text into real,
non-dry-run output if ever reached (this port's `emit2()` itself
no-ops during dry runs, but not during real emission). Never hit by
the regression corpus, so latent until now. Replaced with `emit3 (A_OR,
ASMOP_A, ASMOP_A)` - the same "ora a" clear-carry idiom this exact
function already uses one branch away, with its own `// For the
flags` comment.

2 of the 18 sites resisted confident derivation and were left alone
rather than guessed - see item 2 above for the narrower follow-up.

Verified: full 3-port regression, 0 failures, 0 abnormal stops. Unlike
the l-path fix, this one *did* shift byte/tick counts slightly
(i8085: 8201484->8201440 bytes, 2663784739->2663784305 ticks, and
proportionally on the other two ports) - smaller and faster, the
expected signature of the allocator making marginally better decisions
once fed accurate costs, confirming this fix has real, corpus-visible
effect rather than being corpus-uncovered.

### `genAssign`'s l-path cost (`cyclecost_l`/`sizecost_l`), fully re-derived (2026-09-18)

Was item 2 on this list. Traced (not guessed) by reading the real
emission instruction-by-instruction and cross-checking every timing
against other already-verified `cost2()` sites in this file. Found
along the way that the l-path's outer guard (`AOP_EXSTK` **or**
`AOP_DIR` for both operands) was structurally too loose: `AOP_DIR` is
only ever constructed for size-1 symbols (its one construction site,
`aopForSym()`, gates it on `getSize(sym->type) == 1`), but `size`
(`== result->aop->size`, and `right->aop->size` must match it - SDCC
never emits a raw `'='` icode with mismatched operand sizes) is `>= 2`
to even reach the l-path at all. So of the four nominal combinations
the old guard allowed, only `(EXSTK, EXSTK)` was ever actually
reachable - not corpus-dependent, provable by construction. Simplified
the guard to require `AOP_EXSTK` on both sides directly, removing the
now-dead `pointPairToAop()` fallback branches and the cost formula's
dead `AOP_DIR` adjustment terms.

With only one combination left to model, re-derived both costs fully:
fixed overhead is conditional `push`/`pop` of hl/de/bc (12/10 states
each) plus result's pointer setup (`lxi h,#nn`+`dad sp`+`xchg` =
5 bytes/24 states) and right's (`lxi h,#nn`+`dad sp` = 4 bytes/20
states, no xchg needed); the copy itself is either unrolled
(`emit8080Ldi()` x size, each 5 bytes/32 states) or looped (one-time
`lxi b,#size` at 3 bytes/10 states, then `emit8080Ldir()`'s body -
10 bytes/50 states - executed size times), matching the same
`size <= 2 + optimize.codeSpeed` threshold the real emission branches
on. `sizecost_l` now has the `* size` scaling term it was previously
missing entirely (a separate, pre-existing gap the old item text had
also flagged).

Found and fixed two related real bugs in the same code while tracing
it: the pointer-setup sequences used `regalloc_dry_run_cost += 4` (a
"bytes only, states ignored" legacy pattern - see the new item 2 above)
instead of proper `cost2()` calls, silently dropping 20 real T-states
from this port's actual reported cycle count each time the l-path
fired; the loop-form's `lxi b,#size` setup had the same issue
(`+= 5`, and 5 doesn't even match its real 3-byte cost). Both replaced
with accurate `cost2(3, 10)`/`cost2(1, 10)` calls.

Verified: full 3-port regression, 0 failures, 0 abnormal stops - but
byte- and tick-identical to baseline on all three ports, meaning the
current 6358-case corpus never actually exercises this l-path (both
operands `AOP_EXSTK`, size >= 2, `l_better` favoring it) at all. The
fix is confirmed *safe* (nothing broke) and correct by direct
derivation, but not confirmed to change any real register-allocation
decision in practice, since nothing in the corpus reaches it - the
same "real but corpus-uncovered" character as `bit8_cost()`'s
`AOP_EXSTK` fix (closed entry further below).

### Remaining `PAIR_IY`/`PAIR_IX`-style underscore-joined comment mentions (closed 2026-09-17/18, `94fb4f1` + `b3eca67`)

Was item 3 on this list. Overtaken by two subsequent passes that
together swept essentially everything this item was tracking, found
via direct source review rather than a dedicated grep sweep:

- A `djnz` sighting in `peep.c` led to a full trace-and-verify of its
  classifier-function family (`mightRead`/`mightReadFlag`/
  `uncondJump`/`condJump`/`surelyWritesFlag`/`surelyWrites`/
  `callSurelyWrites`) - all inherited a complete Z80-mnemonic
  classification from this file's shared origin with `z80/peep.c`.
  Every one of these functions is only ever reached on lines that
  already passed `scan4op()`'s `isInline` guard, so they can only ever
  see this port's own Intel-syntax output. Removed the entire dead
  Z80-mnemonic surface (`djnz`, `ldir`/`lddr`, the `cpi`/`cpd` family,
  `ex`/`exx`, `reti`/`retn`, `ccf`/`scf`, `bit`/`set`/`res`, the
  CB-prefix shift group, `rld`/`rrd`, and more), fixed a genuine
  duplicate/inconsistent `daa` check found along the way, and cleaned
  up `i8085_canAssign()`/`registerBaseName()`'s dead `(bc)`/`(de)`/
  `(hl+)`/`(hl-)` checks (no post-inc/post-dec addressing or
  parenthesised-pair operand syntax exists on this hardware).
- Separately, direct review of `gen.c` found `AOP_IY` (a different
  enum from `PAIR_IY`, one Task #25 never reached) still present with
  ~14 dead switch-case/if-check sites. Exhaustively confirmed nothing
  can ever construct one (all 12 `newAsmop()` call sites enumerated,
  none pass it; dedicated storage already deleted) and removed the
  enum member entirely from `gen.h` - turning every remaining
  reference into a compile error, which the compiler then found with
  certainty across `ld_cost_form`, `op8_cost`, `incdec_cost`,
  `bit8_cost`, `requiresHL`, `setupPair`, `aopGet`, `aopPut`,
  `cheapMove`, `genMove_o`, and `genPlusIncr`.

Both passes verified via full 3-port regression, 0 failures, 0
abnormal stops, byte- and tick-identical to baseline. What remains of
"iy"/"ix" anywhere in `src/i8085/` at this point is exclusively
current-fact statements (e.g. "no IY register exists on this CPU
family") consistent with the comment-noise standard - nothing left to
sweep.

### Broken/dangling comment fragments + more dead ix/iy code, fixed (2026-09-17, `f7666c5`)

Was item 3 on this list. Swept `gen.c`, `peep.c`, `gen.h`, `i8085.h`
for the `IS_8080LIKE`-dead-code-removal comment fragments this item
described, plus several genuinely dead ix/iy-related code paths found
along the way (not just comments): `gen.c`'s `isPtr()` had unreachable
"ix"/"iy" checks (both call sites proven to only ever pass "hl");
`i8085_IsReturned()`/`i8085_IsRegArg()` had dead "iy"-special-case
branches (`peeph-i8085.def` never references iy/ix/iyl/iyh/ixl/ixh
anywhere); `peep.c`'s `i8085_symmParmStack()` had a dead
`"___sdcc_enter_ix"`-named-function special case. Also fixed 3 broken/
dangling comment fragments (`shiftIntoPair`'s PAIR_DE case, a garbled
`no_mlt` reference, a compound break in `unpackMaskA`), 4 CB-prefix/
ED-prefix comments rewritten to drop Z80 opcode-encoding framing, and
2 stale IY-related comments in `gen.h`/`i8085.h`. Verified: full
3-port regression, 0 failures, 0 abnormal stops, 36366 tests/6358
cases per port; i8085/i8080 byte- and tick-identical to baseline
(8201484 bytes/2663784739 ticks), i8085-undoc likewise unchanged
(8186322 bytes/2591684279 ticks) - exactly expected for dead-code
removal plus comment-only fixes.

This pass surfaced item 3 above (the underscore-joined `PAIR_IY`/
`PAIR_IX` mentions neither the original word-boundary grep nor a
subagent's follow-up sweep caught) as a separate, still-open
follow-up.

### Documentation gloss pass round 2 (done 2026-09-17, `a4065bb`)

Was item 3 on this list. Neil's direct review of round 1 (`e0cd824`)
found it too loose - see [[feedback_comment_noise_standard]] for the
full correction with worked examples. Corrected standard applied:
comments describe only *current* 8080/8085 behavior, no Z80/SM83/
Rabbit/TLCS90/eZ80/Z80N/R800/etc. comparisons or migration narrative
even when accurate. Delegated to a subagent (full standard + concrete
flagged examples in the brief, e.g. `gen.c:147`'s narrative block and
the `A_CCF`/etc. mnemonic-table comments); it needed two passes (hit
its turn limit mid-file, resumed cleanly) to sweep all of
`sdcc/src/i8085/`. Two categories fixed: broken/dangling comment
fragments left over from earlier dead-code-removal passes (deleted
rather than reconstructed - the content was migration narrative
anyway), and complete-but-noisy comparison comments (rewritten to
state only the current fact, e.g. `wassertl` messages naming eZ80/
Rabbits/TLCS-90 trimmed to "not supported on this target"). Correctly
left alone, not stripped by fiat: the `cyclecost_n`/`cyclecost_l`
comment block in `genAssign` (its Z80 comparison is load-bearing
reasoning for item 2 above, not decorative), `TARGET_Z80_LIKE`
(`ralloc2.cc:1213`, already-confirmed correct shared-frontend macro
usage), and the "vendor's as8085, not sdasz80/sdldz80" toolchain facts
in `main.c` (6 sites - real, current, actionable facts about this
port's own build, the explicit example of what should stay). Final
grep down from ~150 hits to exactly 10, all pre-approved.

10 files touched (gen.c the bulk - 586 lines changed, net -364 lines;
9 smaller files). Verified: full 3-port regression (i8080/i8085/
i8085-undoc), 0 failures, 0 abnormal stops, byte- and tick-identical
to the pre-change baseline - exactly expected for a comment-only pass.
Surfaced a new, narrower follow-up (item 3 above): a separate
population of broken comment fragments tied to `IS_8080LIKE`
dead-code-removal narrative, outside this pass's Zilog-keyword grep,
deliberately left untouched as out of scope.

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
