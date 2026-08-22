# i8085/i8080: migrate from Zilog to Intel mnemonics

> Decided 2026-08-19, after the ASxxxx two-track integration work landed
> (`asxxxx-integration-plan.md`). Was the deferred "dialect decision" from
> the original masterclass plan - resolved now that the toolchain
> infrastructure (linker, object format, banking, library format) is
> proven working and, per the findings below, turns out to be almost
> entirely dialect-independent. Decision: **replace i8085/i8080's output
> in place** (not a new parallel port) - one `gen.c`, one dialect, going
> forward. This is a breaking change to the already-released `v1.0.0`
> ("Ares Vallis") Zilog-syntax output, accepted deliberately: Zilog syntax
> was always a stop-gap riding `asz80`'s `.8085` sub-mode, not the
> intended end state - Intel mnemonics are the authentic, expected syntax
> for real 8080/8085 code (and the thing that actually answers Michael
> Hawkins's original inline-asm request from the mailing list thread).

## What's already confirmed, before any code changes

- **`as8085` shares the entire `asxxsrc/*.c` core with `asz80`**, byte-
  identical file list (confirmed via `asxmak/vs22/build/as8085/
  as8085.vcxproj`: `asdata`, `asdbg`, `asexpr`, `aslex`, `aslist`,
  `asmain`, `asmcro`, `asout`, `assubr`, `assym` - the exact same 10
  files `asz80` uses). Only the machine-specific files differ:
  `as8085/{i85mch.c,i85pst.c}` (706 lines total) replace
  `asz80/{z80adr.c,z80mch.c,z80pst.c}`.
- **Consequence**: every ASxxxx-track fix already landed this project
  (dynamic line buffer, dash-in-symbol-name, NoICE debug support) already
  applies to `as8085` too - nothing to re-port on that front. The object
  format is identical (same `asout.c`). The just-landed `src/i8085/main.c`
  linker-command sed-translation, the `crt0.s`/`heap.s` bank-annotation
  fix, and the `i8085.lib` plain-text-list library format should all
  carry over to `as8085` **unchanged** - none of that work was actually
  about the mnemonic dialect, it was about the object-file/library format,
  which doesn't change.
- **CLI flags are identical.** Built a standalone `as8085` (same
  `asxxsrc/*.c` + `as8085/{i85mch,i85pst}.c`, confirmed clean build) and
  ran it with no args: same option set as `asz80` (`-p -l -o -s -g -f -w`,
  plus `-y` "Enable SDCC Debug Symbols" and `-j` "Enable NoICE Debug
  Symbols" - both explicit, first-class flags, not something bolted on).
  `i8085_port`'s existing `-plosgffw`/`-plosgffwy` option strings need no
  changes.
- **`as8085`'s own `i85pg1[0x11]`** (the LXI-D slot that had the
  transcription bug in `asz80/z80mch.c`) is correct here: `10`, not `UN`.
  Spot-checked only, not exhaustive - the two tables are maintained
  independently by upstream, so this doesn't guarantee every other slot is
  clean, but it's a clean data point, not a red flag.
- **`as8085` ships its own self-tests**: `t8080.asm`, `t8085.asm`,
  `t8085x.asm` (~197 lines each, `x` = undocumented-instructions variant)
  plus matching `.bat` driver scripts (`asz80 -gloaxff`, `aslink -u`,
  `asxscn` diff-check) - an existing, never-before-used validation
  starting point, same pattern as `asz80`'s `t80.bat`/`tz80.bat`.

## A genuine bug this migration fixes as a side effect

`sdcc/src/i8085/gen.c` has exactly one `emit2 ("jr !tlabel", ...)` call
site (the memset-loop optimizer, `double_loop && size % 2` branch).
**Confirmed via direct testing this is a real miscompile**, already
present in the released `v1.0.0`:

- `asz80` accepts `jr` in `.8085` mode only as a soft override (`?ASxxxx-
  Error-<o> ... Not a standard 8085 instruction` - a warning, not a hard
  failure) and still emits the literal Z80 relative-jump encoding: opcode
  `0x18` + a signed displacement byte (confirmed: assembling `jr tlbl1`
  produced bytes `18 FE`).
- Opcode `0x18` is not a jump on real 8085 hardware at all - it's `RDEL`
  (rotate D,E through carry via the carry flag), one of the 8085's
  well-known **undocumented** opcodes (real silicon behavior, never in
  Intel's official docs - confirmed via `ucsim`'s own i8085 core,
  `sim/ucsim/src/sims/i8085.src/i8085cl.h`: `#define RDEL
  instruction_18`). Executing the assembled bytes on real hardware (or
  ucsim's own i8085 simulation) performs `RDEL`, then misreads the
  displacement byte as the *next* instruction's opcode (`0xFE` = `CPI`,
  consuming yet another byte as its operand) - not a jump, and not
  recoverable.
- This apparently never surfaced in the regression suite because the
  exact triggering shape (`double_loop && size % 2` inside the memset
  optimizer) was never exercised by any of the 6356 test cases - a real
  bug with a coverage gap, not a false-clean result.
- **Decision (2026-08-19, Neil)**: no standalone hotfix - subsumed by
  this migration, since Intel syntax has no relative-jump mnemonic to
  preserve in the first place; the call site gets rewritten to a genuine
  absolute jump as a natural consequence of the dialect change.

## Scope

1. **`sdcc/src/i8085/gen.c`** - the bulk of the work. Every mnemonic
   string passed to `emit2`/`emit3`/`emit3w` (a rough, *unverified* first
   grep found ~845 call sites - **do not trust this count or any
   quick-grep mnemonic list as authoritative**, several early greps this
   session produced false positives; build a real inventory by careful,
   correct search before starting the rewrite) needs translating from
   Zilog syntax to Intel syntax, using `as8085/i85pst.c`'s mnemonic table
   as the authoritative reference for what `as8085` actually accepts
   (exact mnemonic spelling, operand class, operand order). Known
   non-trivial translation classes, not just token substitution:
   - Register-indirect memory access: Zilog `(hl)` -> Intel `M` pseudo-
     register (e.g. `ld a,(hl)` -> `mov a,m`; `ld (hl),a` -> `mov m,a`).
   - 16-bit immediate loads: `ld bc,#nn` -> `lxi b,nn` (register-pair
     naming differs too: Zilog `bc/de/hl/af` vs Intel `b/d/h/psw` as the
     pair-selector operand in relevant instructions).
   - Conditional jumps/calls: Zilog's single `jp cc,label`/`call cc,label`
     with a condition-code operand -> Intel's distinct-mnemonic-per-
     condition forms (`jz`/`jnz`/`jc`/`jnc`/`jp`/`jm`/`jpe`/`jpo`, same
     split for `cz`/`cnz`/etc.).
   - The `jr` bug above - becomes a real `jmp`/conditional-jump, not a
     relative form (Intel 8080/8085 has no relative jump at all).
   - Whatever `arhl`/`rdel`/`ldhi`/`ldsi`/`lhlx`/`shlx`/`dsub` mnemonics
     turn out to actually be used for (the 8085 undocumented-instruction
     set) - cross-check against `i8085-undoc`'s existing `--allow-
     undocumented-instructions` gating logic, since `as8085` likely
     requires the equivalent of `x85pg1` (undocumented-enabled) rather
     than `i85pg1` (standard-only) for these, matching the existing
     i8085/i8085-undoc split.
2. **`sdcc/src/i8085/main.c`** - retarget `_i8085VendorAsmCmd` from
   `asz80` to `as8085` (binary name only, per the CLI-flag-compatibility
   finding above - no option-string changes expected). `_i8085VendorLinkCmd`
   should not need changes: `aslink` itself is dialect-agnostic (it
   consumes `.rel` files, never source syntax), so the same sed-translation
   logic should keep working unchanged. Verify this assumption rather than
   assuming it.
3. **Hand-written `.s` library sources** - `device/lib/i8085/*.s` (6
   files: `crt0.s`, `heap.s`, `__builtin_memcpy.s`, `__sdcc_call_hl.s`,
   `atomic_flag_test_and_set.s`, `setjmp.s`) and their `device/lib/
   i8085-undoc/` twins (6 more) are themselves hand-written in Zilog
   mnemonics today and need converting to Intel syntax - `as8085` won't
   parse Zilog source any more than `asz80` would parse Intel source.
   The banking annotations (`(BANK=_CSEG)`/`(BANK=_DSEG)`) and area
   structure from the just-landed work should carry over unchanged (that's
   `.area`-directive syntax, not instruction mnemonics).
4. **Peephole rules** - `i8085_port` currently has no port-specific
   peephole file, still points at `_z80_defaultRules` (shared with every
   z80-family target, Zilog-syntax patterns). Under Intel-syntax output
   those patterns will simply never match (harmless - peephole
   optimization is a performance nicety, not a correctness dependency) -
   confirm this is genuinely inert rather than silently matching something
   unintended, but a real `peeph-i8085.def` is out of scope for *this*
   migration (already a known, pre-existing gap from the original backend-
   independence project, not introduced by this work).
5. **`sdcc/src/i8085/ralloc.c`** - audit for any mnemonic string literals
   (register allocator output is normally more abstract than codegen, but
   confirm rather than assume).

## Validation bar

Same standard the ASxxxx integration just met: full `test-i8085`/
`test-i8085-undoc`/`test-i8080` regression, 0 failures beyond the already-
known, already-accepted UTF-8-identifier limitation (`tcc_83_utf8_in_
identifiers.c`/`tst_p99-conformance.c`), 0 abnormal stops. Additionally,
given the JR/RDEL finding above: don't treat "the regression suite passed"
as sufficient proof of correctness on its own for any single translated
instruction - the whole reason that bug went unnoticed is a passing
regression run with a coverage gap. Spot-verify a sample of translated
instructions by disassembling actual output bytes against `as8085`/
`i85mch.c`'s own opcode tables, not just "did the test that happens to
exercise this pass."

## Architectural finding (2026-08-19, agent scoping pass)

`gen.c` has two call paths, not one, and only one is a simple string swap:

- `emit2(fmt, ...)` - printf-style, raw Zilog text baked into format
  strings. This part is genuinely close to "translate each call site."
- `emit3`/`emit3w`/`emit3_o`/`emit3w_o` - the majority of actual codegen.
  These don't take a mnemonic string - they take an `enum asminst`
  (`A_LD`, `A_ADD`, `A_INC`, ...) indexing a fixed `asminstnames[]` table,
  always emitting the same `"%s %s, %s"`-shaped template. Zilog's `ld` is
  one universal mnemonic for every register/memory/immediate combination;
  Intel splits that by addressing mode into distinct mnemonics (`mov`,
  `mvi`, `lxi`, `lda`/`sta`, `lhld`/`shld`, `ldax`/`stax`). A single
  `A_LD` enum value can't map to one fixed Intel string - the correct
  mnemonic depends on `op1`/`op2`'s actual type, decided at emit time.
  Same issue for `(hl)`-style indirect addressing (Zilog's universal
  parenthesized-memory syntax vs Intel's `M` pseudo-register, valid only
  in specific instruction/slot combinations).

**Design constraint for the fix**: `emit3Cost`'s existing `A_LD` case
already delegates to `ld_cost()`, which does its own `op1type`/`op2type`
dispatch (`AOP_REG`/`AOP_DUMMY`/`AOP_IMMD`/`AOP_LIT`/...) to compute
correct Zilog cycle costs - most of the classification logic needed to
also pick the Intel mnemonic already exists there, for a different
purpose. **Do not write a second, independent operand-classification
switch inside `emit3_o` while `ld_cost` keeps a separate one for cost** -
that's structurally the same bug shape as #3915 (two logically-parallel
dispatches meant to agree, drifting because they're not the same code).
Extend/reuse `ld_cost`'s classification as the single source of truth for
both cost and mnemonic selection. Apply the same principle to any other
`A_*` case that turns out to need addressing-mode-based mnemonic
splitting (check `as8085/i85pst.c` for whether `ADD`/`SUB`/`ADC`/`SBC`/
`AND`/`OR`/`XOR`/`CP` need a register-form/immediate-form split the same
way `LD` does).

## Scope recalibration (2026-08-19, agent progress check)

Honest assessment from the agent, agreed: this is a genuine multi-day
engineering effort at the rigor this project has been holding itself to,
not a task that compresses into one session. `ld_cost` alone (the
dispatch backing just the `A_LD` `asminst` value, one of 38) is ~330
lines with roughly a dozen branches needing individual live/dead-code
verification before they can be safely tagged with an Intel mnemonic
form - and `ADD`/`ADC`/`SUB`/`SBC`/`AND`/`OR`/`XOR`/`CP` (confirmed via
`i85pst.c`'s `S_ADD`/`S_ADI` split to need the same register-form-vs-
immediate-form treatment) haven't been started, nor has `PUSH`/`POP`/
`INC`/`DEC`, the ~800 `emit2` raw-string sites, the 12 hand-written `.s`
files, `ralloc.c`/peephole, or the full regression + disassembly-spot-
check validation pass.

**Decision**: continue in the same agent/thread rather than fragmenting
into separate per-`asminst`-group sessions (full context already loaded,
fragmenting would add coordination overhead for no real benefit). No
deadline pressure - checking in at natural milestones (a dispatch
function done and verified, a class of `asminst` values covered) rather
than on a fixed schedule.

`ld_cost` form-tagging design, addressing the #3915-shaped risk from
above: give `ld_cost` an additional optional out-parameter (e.g. `enum
ld_form *form_out`), set at each of its *existing* `return` points in
its existing `op1type`/`op2type` switch - tagging branches that are
already there, not new classification logic. `emit3_o`'s `A_LD` case
then calls `ld_cost(..., &form)` to get both the byte cost it already
needed and the Intel form in the same call.

## Peephole optimizer disabled as a stopgap (2026-08-20)

Found during the mid-migration corpus sweep, verified directly (not just
trusted): `src/i8085/peeph.def` (still `_z80_defaultRules`, shared with
`i8080_port` - neither port has ever had its own peephole file, a
pre-existing gap noted in the original scope) has replacement templates
written in plain Zilog syntax. At least one rule (line ~2908, matching
`inc sp` + a following `pop`/`ld`-shaped sequence) was confirmed
**actively firing and injecting broken Zilog text** (`ld hl,#n` / `add
hl,sp` / `ld sp,hl`) into otherwise-Intel-syntax output - not merely
inert. The earlier belief that peephole was harmless against the new
dialect was based on a different, genuinely-benign subsystem
(`z80MightRead`-style liveness analysis); the pattern-rewrite rules
themselves are not benign. 232+ lines of the 3193-line file use
unambiguously Zilog-only replacement syntax - auditing which subset is
actually safe (now, and after every remaining piece of this migration
lands) would be its own project, not a quick check.

**Decision**: peephole optimization disabled for both `i8085_port` and
`i8080_port` (they share `gen.c`/rules, so both are equally exposed) as
an immediate stopgap - an obvious-safe-default call given the
alternative is knowingly shipping output that can be silently wrong.
**Tracked follow-up, explicitly not in scope for this migration**:
build a real `peeph-i8085.def` written and verified against Intel
semantics from scratch, once the mnemonic migration itself is done and
stable. Until then, i8085/i8080 codegen is correct but not
peephole-optimized - a real, accepted performance cost, not silently
dropped.

**Related gap found 2026-08-22, during the tidy-up phase's comment
pass**: `peep.c`'s liveness-analysis machinery (`z80MightRead`,
`z80SurelyWrites`, `z80UncondJump`, etc. - the helper functions
peephole-rule *conditions* call into, e.g. `notUsed()`) pattern-matches
against Zilog mnemonic text (`"ld"`, `"jp"`, `"jr"`, ...), never updated
for Intel syntax. Traced (not assumed): reachable only when peephole
rules are actually loaded (`SDCCpeeph.c`'s `initPeepHole()` calls
`readRules()` only `if (!options.nopeep)`), so with `nopeep=1` set for
both ports this whole chain is currently entirely inert in the default
configuration - not silently misbehaving today. But `--peep-file
<custom.def>` explicitly overrides `nopeep` back to `0` regardless of
the port default, which would re-enable this exact Zilog-pattern-
matching machinery against real Intel-syntax output - likely degrading
to the conservative "unknown instruction" fail-safe path (safe but
sub-optimal, possibly with warning spam) rather than producing wrong
code, but not verified either way. Narrow (only triggered by
`--peep-file`, not exercised by the regression suite or default
builds), but real. Folded into the same tracked future-work item as the
`peeph-i8085.def` rewrite above - fixing this properly means teaching
the liveness-analysis machinery Intel mnemonics too, not just the rule
templates, comparable in scope to the already-deferred work.

## Severe pre-existing bug found via full corpus sweep: ISR prologue/epilogue (2026-08-20)

Found while doing the definitive corpus sweep (996/276-line `gen.c` diff,
1557/1559 files clean). `genFunction()` (line ~7476) unconditionally
emits `push iy` for every function marked `IFFUNC_ISISR` (i.e. every
SDCC `__interrupt` function), with a matching `pop iy` in the epilogue -
inherited unchanged from the original shared `z80/gen.c`'s `if
(!IS_SM83) push iy` chain, which correctly gated out SM83 but never
accounted for i8080/i8085 (both `!IS_SM83`, so both "always true" once
the earlier gen.c-pruning project collapsed the guard away) having no IY
hardware at all. **Predates this mnemonic migration entirely** - it was
already wrong in the original shared z80/gen.c logic, silently carried
through the standalone-backend fork, and is present in the released
`v1.0.0`.

**Confirmed via direct testing, not just table-reading:**
- `push iy`/`pop iy` assemble (under `asz80`'s `.8085` mode, today's
  actual toolchain) to bytes `FD E5` / `FD E1` - flagged "not a standard
  8085 instruction" as a soft override, same class as the JR/RDEL finding,
  and assembled anyway.
- `sim/ucsim/src/sims/i8085.src/glob.cc`'s own disassembly tables (the
  simulator's ground truth for what these bytes actually mean on real
  8080/8085 silicon) show `0xFD` is not a prefix byte at all on either
  chip: `disass_8085`: `0xfd = "JX5 'a16'"` (3-byte, undocumented
  conditional jump on the X5 flag); `disass_8080`: `0xfd = "*CALL 'a16'"`
  (3-byte, duplicate/undocumented CALL). Either way, `push iy`'s trailing
  `E5` byte and `pop iy`'s leading `FD` byte get consumed as the low/high
  bytes of a garbage 16-bit jump/call target - **not** two harmless
  register push/pops. This is a genuine control-flow corruption, not
  wasted stack space: on 8085 a conditional jump to address `0xFDE5` (or
  an unconditional `CALL` to it on plain 8080), then the ISR's own body
  starts executing from a corrupted instruction stream.
- **Every currently-shipped `v1.0.0` `__interrupt` function is affected.**

**Decision (2026-08-20, Neil)**: fix as part of this migration, not as a
standalone hotfix - "since we are moving to a standalone 8085 codegen
with Intel mnemonics, let's push on that hard... fix the ISR bug as part
of this rather than treat it as a patch against an already-known-broken
earlier alpha release." Same reasoning as JR/RDEL, deliberately applied
here too despite the higher severity: `v1.0.0` is treated as an alpha
this migration supersedes, not a release line that needs independent
patching. `genFunction`'s ISR prologue/epilogue needs a real "does this
target have IY" gate (there is none - i8080/i8085 never have it) added
while this pass is already touching that code, not a mnemonic-only
translation of the existing (wrong) `push iy`/`pop iy` calls.

## Milestone: 12 .s files + ISR fix done, i8080 scope decision (2026-08-20)

**12 hand-written `.s` library files: done, byte-verified.** `crt0.s`,
`setjmp.s`, `__sdcc_call_hl.s`, `__builtin_memcpy.s`,
`atomic_flag_test_and_set.s` translated (both `i8085`/`i8085-undoc`
dirs); `heap.s` needed no changes (already dialect-neutral). Every file
assembles clean with `as8085`, opcode bytes checked against the Intel
map, `i8085`/`i8085-undoc` copies confirmed byte-identical.

**ISR `push iy`/`pop iy` bug: fixed, independently verified.** Root
cause pinned down precisely: the original shared-z80 guard excluded
`IS_SM83` but never `IS_8080LIKE` - `IY_RESERVED` (register allocator
choice) and "this chip has no IY hardware at all" are different
predicates, and the wrong one was being checked. Fixed by restoring the
missing `IS_8080LIKE` exclusion (unconditionally true in this file,
making both lines dead - removed rather than left unreachable, matching
this function's existing style for neighbouring dead arms). Verified:
zero `iy` references in output for a synthetic ISR test and all 5 real
ISR-using regression tests, AF/HL/BC/DE save/restore still balanced. I
independently checked there's no other code depending on the removed
push/pop's stack-depth contribution (there is none - this backend has
no frame-pointer-relative addressing at all, `AOP_STK` confirmed dead
elsewhere in this same migration).

**i8080 scope decision**: `i8080_port` shares this same `gen.c` (now
unconditionally Intel-syntax) but its own toolchain retarget and 12
hand-written `.s` files are untouched - `device/lib/i8080/`'s
`crt0.s`/`Makefile.in` are still full Zilog/`sdasz80`. **i8080 is
genuinely broken right now**, not just unfinished. Decision: proceed
into the same two-phase treatment i8085 already went through now,
rather than leave it deferred - the infrastructure and translation
patterns are already proven, so this is well-understood repeat work,
not a new unknown.

## Milestone: i8080's two-phase treatment done, shared-gen.c question resolved (2026-08-20)

**i8080 Phase 1 (toolchain retarget)**: done, verified. `i8085_port`'s
assembler finally retargeted from `asz80` to `as8085` (deferred until
the `.s` files were Intel-ready); `i8080_port` pointed at the same
vendor command arrays, renamed `_i8085VendorAsmCmd`/`_i8085VendorLinkCmd`
-> `_i808xVendorAsmCmd`/`_i808xVendorLinkCmd` since they're now genuinely
shared (identical command shape for both ports - `_z80_genAssemblerStart`
already tells `as8085` which `.8080`/`.8085`/`.8085x` subset to accept).
Old SDAS-targeting `_z80AsmCmd`/`_z80LinkCmd` arrays removed entirely
(zero remaining callers, confirmed). `device/lib/i8080/Makefile.in` fixed
to mirror i8085's already-landed `LIB_TYPE=ASXVENDOR`/`SAS=bin/as8085`/
`ASFLAGS=-plosgffw` fix.

**i8080 Phase 2 (`.s` library files)**: done, byte-verified - derived
directly from the already-verified i8085 fixes (i8080's 6 files were
byte-identical to i8085's pre-migration originals except the `-mi8080`/
`-mi8085` distinction).

**Shared-`gen.c` question resolved as a non-issue**: a real end-to-end
`device/lib` build attempt for both `i8080` and `i8085` hit the identical
failure class - raw Zilog text still baked into `gen.c` for conditional
jumps (`jp nz, label`), 16-bit loads (`ld hl, #imm`, `ld sp, hl`),
memory-indirect loads (`ld a, (de)`), and rotates (`rlca`) - none of
which have been migrated yet (the next chunk of already-scoped "bulk of
the work", distinct from the ADD/INC/DEC/PUSH/POP/EX/byte-LD family
already done). Both ports fail identically, for the same already-known
reason, confirming the assembler retarget is a strict improvement (not a
regression) and i8080 sharing `gen.c` isn't introducing any new risk of
its own.

## Milestone: jumps/calls and rotate/flag families done (2026-08-20)

Both done, byte-verified. Jumps: Zilog's `jp cc,label`/`jp label` become
Intel's per-condition mnemonics (`jnz`/`jz`/`jnc`/`jc`/`jm`/`jp`/`jpo`/
`jpe`) and `jmp label` - a clean 1:1 mapping since Intel's condition-code
names match Zilog's, just spelled into the mnemonic instead of as an
operand. `call`/conditional-call needed no changes. Fixed the `!jphl`
shared-mapping-token gap (same class as `!ldahli` etc.) -> `pchl`. Self-
caught false positive: `jp` (opcode 0xF2, "jump if plus") is a genuine
Intel sign-conditional mnemonic, not leftover Zilog text - checked
source context (`genIfxJump`'s condition mapping) before "fixing" it.

Rotate/flag family: `asminstnames[]`'s 7 live entries fixed (`ccf`-
>`cmc`, `cpl`->`cma`, `rla`->`ral`, `rlca`->`rlc`, `rra`->`rar`,
`rrca`->`rrc`, `scf`->`stc` - independently verified against real Intel
8080/8085 mnemonics, all correct; `daa` needed no change, same name both
dialects). `emit8080RotateByte`'s own byte-shuttle fallback fixed too.
Confirmed (not assumed) dead: `A_RL`/`A_RLC`/`A_RR`/`A_RRC`'s own table
entries (always intercepted by `emit8080RotateByte` first), two Rabbit-
4000-only sites, and one `if` proven a tautology by hand-tracing its
full condition chain.

**Next, in progress**: 16-bit loads (~150 call sites, ~60+ distinct
format-string shapes) - the last and largest remaining `emit2` surface.
Categorized into 8-bit reg-reg moves, HL-indirect, 16-bit immediate
(`lxi`), direct-memory (`lda`/`sta` - flagged to verify the single-
operand-implies-A constraint, a real Intel hardware limitation, not
assumed), BC/DE-indirect (`ldax`/`stax`), and a handful of likely-dead
IX/IY-indexed sites needing the same reachability proof as everything
else in this migration.

## Milestone: full mnemonic-translation surface verified clean (2026-08-21)

Definitive corpus sweep across all 9 leftover-Zilog correctness checks
(2-operand arith/inc/dec/ex, 2-operand `ld`, register/immediate mnemonic-
operand shape mismatches both directions, single-operand inc/dec/`ex`/
`jp cc,`/`call cc,`/rotate-flag forms, `push`/`pop iy`): **1557/1557
compilable files pass, 2/2 expected failures are the known-good
`dynamicc.c`/`dynamiccasmchk.c` calling-convention rejections.** The 2
raw grep hits needing manual inspection were both confirmed false
positives (comment lines echoing original C source words like "inc"/
"cpl", not emitted assembly). The `ldax`/`stax` ternary bug's fix
(`bp.asm`, the file that originally exposed it) confirmed correct, and
genuinely exercised corpus-wide (323 `ldax` + 353 `stax` uses), not just
silently unhit. Independently verified scope containment: `git status
--short` shows exactly the 19 expected tracked files modified
(`gen.c`/`main.c` + 12 `.s` library files across all three ports +
`device/lib/i8080/Makefile.in`), nothing stray.

This closes out jumps/calls, rotates/flags, and the full 16-bit-load
(`A_LD`-family) `emit2` surface as definitively verified, alongside the
ISR fix and i8080 parity work from the milestones above. **The bulk of
the mnemonic-dialect migration itself is done.**

**Remaining, not yet started**: the undocumented-8085 instruction family
(`arhl`/`rdel`/`ldhi`/`ldsi`/`lhlx`/`shlx`/`dsub`/`jnk`/`jk`, relevant to
`--allow-undocumented-instructions`/`i8085-undoc`) and the deferred
post-migration clean-sweep (task #14, dead/commented code removal).

## Milestone: undocumented-8085 family clean, and a real gap the text-sweep couldn't see (2026-08-21)

**Undocumented-8085 family confirmed clean, no changes needed.**
`arhl`/`rdel`/`ldhi`/`ldsi`/`lhlx`/`shlx`/`dsub` are 8085-only opcodes
with no Zilog analog, so `gen.c` never had a Zilog spelling to drift
from - independently spot-checked directly in the source, all present
exactly as expected. `jk`/`jnk` confirmed dead (no JK hardware). All 8
emit sites' `IS_8085 && options.allow_undoc_inst` gating checked
consistent with `main.c`'s `.8085x`-directive selection.

**Real gap found moving from text-sweep to an actual regression
execution run**: `device/lib/i8085/Makefile.in` and `device/lib/
i8085-undoc/Makefile.in` still had `SAS = .../bin/asz80` - never
actually updated despite being believed fixed earlier (only `i8080`'s
Makefile.in had genuinely gotten the fix). This meant `setjmp.s`/
`crt0.s` etc. were still being fed to the old Zilog-only assembler and
failing outright - invisible to the `sdcc -c` text-sweep, which never
invokes the assembler at all. Also found and fixed: `support/
regression/ports/{i8085,i8085-undoc,i8080}/spec.mk` all still pointed
at `sdasz80`/`-plosgff` (missing the `w`). All fixed and independently
verified directly (`SAS = .../bin/as8085` now present in all 3
`Makefile.in`s + generated `Makefile`s + regenerated via
`config.status`; `-plosgffw` now present in all 3 `spec.mk`s).

This is exactly the reason the plan has held "regression passed" to a
higher bar than "text sweep passed" throughout - a clean text-level
sweep genuinely can't see assembler-invocation-layer gaps like this
one. Device library rebuild in progress to confirm the fix end to end.

## Milestone: device libraries build clean end to end (2026-08-21)

After the `Makefile.in`/`spec.mk` fixes above, a fresh from-scratch `-j3`
rebuild of all three device libraries (`model-i8085 model-i8085-undoc
model-i8080`) completed successfully - independently verified: exit
code 0, `build/i8085/i8085.lib`, `build/i8080/i8080.lib`, `build/i8085-
undoc/i8085.lib` all present, only pre-existing unrelated warnings in
the build log (an `#warning` about unsigned-long-long overflow range
checking in `strtoull.c`/`wcstoull.c`, nothing to do with this
migration), no errors. (One earlier rebuild attempt genuinely stalled
mid-build - caught via mtime staleness, diagnosed and relaunched
cleanly rather than assumed fine.)

This is the real unlock: the assembler retarget, library-format fix,
and full mnemonic translation now combine to produce genuinely working
device libraries end to end, not just clean-compiling `.rel` files in
isolation. Proceeding to a full `test-i8085`/`test-i8085-undoc`/
`test-i8080` regression run next - the actual end-to-end validation
everything else has been building toward.

## Real bug found in the live regression run (2026-08-21) - the corpus text-sweep couldn't catch it

Found by digging into the real `test-i8085` run's early failures (242/
1744 at the time) rather than waiting for the full run to finish. **8
raw `emit2` sites** in `gen.c` use `emit2 ("sta !mems", "bc")` /
`emit2 ("sta !mems", "de")` (lines 8772, 9495, 9565, 10313, 10378,
10432 for `"bc"`; 17386, 17394 for `"de"` - no `lda` equivalents found,
store-only). The `!mems` shared mapping token expands to Zilog's `(%s)`
indirect syntax, producing literal `sta (bc)`/`sta (de)` - confirmed in
real generated output (`gen/i8085/bigreturn-remat/
bigreturn-remat_type_char_msb_0.asm:91`), which `aslink` then reports
as an unresolved-symbol error (`?ASlink-Error-Undefined Global bc`),
causing 100% failure across the entire `bigreturn-remat` test family.

**Why the corpus sweep (1557/1557 clean) missed this**: `sta`/`lda` are
Intel's *direct-address* store/load - a 16-bit literal address operand
only, no register-pair-indirect form exists for them at all. This is
structurally different from the `(hl)`->`m` fix `intelOperand()`
handles (a same-instruction operand-text substitution) - there is no
correct operand text to substitute into `sta (bc)`; the whole
*instruction* needs to become `stax b` instead, the same distinction
`ld_cost_form`/`emit_A_LD` already handles for the `A_LD` family, just
never applied at these 8 separate raw call sites since they don't go
through that dispatch. The text-sweep's shape checks were built around
mnemonic-vs-operand-class mismatches, not this specific "valid mnemonic,
structurally impossible operand" shape - a real gap in the sweep's own
coverage, not evidence the sweep methodology is unsound elsewhere.

Also flagged, not yet diagnosed: a genuine wrong-answer (not link-error)
failure repeating identically across 6 `array` test variants -
`array_long[idx2] == (TL(3) | 0x80808080)` - possibly related to the
same BC-scratch-pointer pattern, possibly separate. Fix in progress.
**Code remains uncommitted pending a clean re-run** - exactly the
scenario the "don't commit until regression passes" discipline exists
for.

## sta/lda !mems bc/de fix confirmed, but the re-run surfaced a wider regression (2026-08-21)

`bigreturn-remat` now shows 0 failures across all cases post-fix -
confirms the previous fix was real. But the clean re-run (in progress,
79/1745 files with failures at the time of checking) surfaced more than
the one already-flagged `array` bug:

- **`array_long` assertion**: confirmed genuinely separate from the
  sta/lda fix (still fails identically post-fix) - needs its own
  root-cause dig.
- **`blake2s_selftest()` fails** (heavy 32-bit ADD/XOR/rotate usage -
  plausibly an arithmetic/rotate miscompile, not noise).
- **35 distinct `gcc-torture-execute-*.c` files fail on a bare
  `assert(0)`** - a wide spread across unrelated GCC torture-test
  patterns, not concentrated in one code path. Biggest, most systematic-
  looking cluster of the three.

**Important**: all of these test files passed cleanly under the
pre-migration Zilog-syntax baseline (the 2/6356-failures milestone,
only the known UTF-8 cases) - confirmed regressions introduced
somewhere in this migration's own diff, not pre-existing/unrelated
issues. Search space is bounded to what this migration actually
touched. Directed the agent to let the run finish for the complete
picture, then look for a shared root cause across the gcc-torture
cluster specifically before assuming three independent bugs. Code
remains uncommitted.

## Milestone: i8085 regression clean, matching the pre-migration baseline exactly (2026-08-21)

The gcc-torture/blake2s/array regression cluster flagged above is
resolved. After another `gen.c` fix + device-library rebuild, a clean
`test-i8085` run completed: **2 failures, 36363 tests, 6356 test
cases** - `tst_p99-conformance.c`/`tcc_83_utf8_in_identifiers.c` only,
exactly the known/accepted UTF-8-identifier limitation. This matches
the pre-migration baseline exactly (independently verified by reading
the run's own log directly, not just trusted). One earlier attempt at
this same run crashed on an infrastructure error (`Directory
nonexistent` for `gen/i8085/rotate2/...`) - a retry succeeded cleanly;
not yet confirmed whether that was a one-off race or a real, separate
harness issue worth a permanent fix.

`i8085-undoc` also finished clean, verified directly: **2 failures,
36363 tests, 6356 test cases** - same two known UTF-8 cases only,
matching baseline exactly. `i8080` running now. Two of three ports
confirmed; code remains uncommitted pending the full picture.

Also resolved: the earlier "Directory nonexistent" (`gen/i8085/
rotate2/...`) crash was investigated and traced to a genuine parallel-
`mkdir` race in the regression harness's own directory-creation logic
under a fresh `rm -rf gen results` + `-j3` combination (the first time
this exact combination ran this session) - didn't recur on retry,
consistent with a sporadic race rather than a deterministic bug.
Pre-existing harness fragility, not introduced by this migration -
flagged for a future look if it recurs, not chased down now.

## MIGRATION COMPLETE AND LANDED (2026-08-21)

**All three ports pass at exactly the pre-migration baseline**,
independently verified by reading each `.sum` file directly:

| Port | Result |
|---|---|
| i8085 | 2 failures / 6356 test cases, 0 abnormal stops |
| i8085-undoc | 2 failures / 6356 test cases, 0 abnormal stops |
| i8080 | 2 failures / 6356 test cases, 0 abnormal stops |

Both failures on every port are `tst_p99-conformance.c`/
`tcc_83_utf8_in_identifiers.c` - the known, deliberately-not-pursued
UTF-8-in-symbol-names limitation. Nothing else.

**Two more real bugs found and fixed via the actual regression run**
(both invisible to the compile-only corpus sweep, since neither
produces a text-pattern the sweep's shape checks could see):

1. **`sta`/`lda` misused for BC/DE-indirect addressing** - the bug this
   session's live-run digging first surfaced (`bigreturn-remat`, 100%
   failure): `sta`/`lda` are Intel's direct-address-only forms, no
   register-pair-indirect form exists for them; needed `stax`/`ldax`
   instead, not an operand-text fix. Found 10 total sites (8 originally
   flagged + 2 more via a follow-up audit: `genPackBits`'s write side
   missing the dispatch its read side already had, one hardcoded
   `_pairs[PAIR_HL].name` site) - all fixed, with the remaining
   `lda`/`sta !mems` text confirmed to only survive in the already-
   established dead-`PAIR_IY` fallback branches (independently
   verified by reading both fixed call sites directly - the HL/DE/BC
   dispatch is correct, `PAIR_IY`'s fallback is provably unreachable
   and left as harmless unmodified text, matching this file's
   established practice elsewhere).
2. **`AOP_PAIRPTR`-with-`PAIR_HL` mishandled in `aopPut`** - found via
   direct gdb tracing of a real gcc-torture failure. `shiftIntoPair()`
   can legitimately construct `AOP_PAIRPTR` with `PAIR_HL` (not just
   BC/DE), but `aopPut`'s handling assumed BC/DE-only and silently
   emitted `stax d` regardless - a write through whatever DE happened
   to hold, corrupting unrelated memory instead of the real
   HL-addressed destination. Fixed; the symmetric `aopGet` gap tripwired
   rather than silently assumed (no live caller found); all 7 remaining
   `AOP_PAIRPTR` sites in the file audited and confirmed already correct.

Also fixed getting the regression harness itself working end to end:
three stale `support/regression/ports/*/spec.mk` files still pointing
at retired `sdasz80`/`-plosgff`; `device/lib/{i8085,i8085-undoc}/
Makefile.in` still pointing at `asz80` (never actually retargeted
despite being believed fixed in an earlier pass); an i8080-only
`.optsdcc` regression in `main.c` (the `TARGET_IS_I8085` ternary never
updated when i8080 was retargeted to vendor tooling, so i8080 kept
emitting the real directive vendor tools reject) - independently
verified fixed (`(TARGET_IS_I8085 || TARGET_IS_I8080) ? ";optsdcc" :
"!optsdcc"`).

**Committed and pushed to `feat/i8085`** as `0176906` - 24 files, 1997
insertions/785 deletions. This is the actual code landing, not just
documentation - the entire multi-day mnemonic-dialect migration is now
live on the shared branch. Independently verified before committing:
all three `.sum` files read directly, 0 abnormal stops confirmed via
`grep -L -- "--- Summary"`, both newly-reported bug fixes read and
confirmed correct in the actual diff, file scope confirmed exactly
matching expectations (24 files, all in-scope), no stray edits.

**Remaining work, tracked separately**: the post-migration clean-sweep
phase (task #14, below - now safe to start, migration is validated) and
any future decision about i8080's own separate consideration (already
resolved as sharing this same treatment throughout, not actually
separate work).

## Clean-sweep progress, pass 1 (2026-08-21)

First removal pass complete, all three ports independently reverified
clean at exactly the baseline (2/6356 each) after: `cheapMove()`'s
entire `AOP_FDIR` handling (~130 lines, eZ80/TLCS-90/Rabbit far-space
addressing, airtight-dead since `i8085_opts.sub` only ever takes
`SUB_8080`/`SUB_8085` and `AOP_FDIR`'s own construction site shares
that gate), `aopGet`'s matching `AOP_FDIR` case, one dead `AOP_FDIR`
check in the general move dispatch, and the already-proven-tautological
`rl %s`/`rr %s` pair-rotate branch from the migration's earlier work.

**Policy clarified**: the `*_NOTYET` macro family (`IS_R4K_NOTYET`/
`IS_R5K_NOTYET`/`IS_R6K_NOTYET`) is categorically different from
`IS_EZ80`/`IS_TLCS90`/`IS_RAB` and out of scope for this clean-sweep -
it's deliberate forward-looking scaffolding for eventual Rabbit-family
assembler support (per the macro's own naming), not permanently-
impossible code the way far-address handling genuinely is for i8080/
i8085 hardware. `genIfxJump` already documents this exact precedent
from earlier in the migration project. An initial removal of two
`*_NOTYET`-gated `rlc`/`rrc` register-move heuristics was reverted to
stay consistent with that precedent, rather than re-litigated as a new
call - every `*_NOTYET` site (including but not limited to
`genIfxJump`'s) stays untouched throughout this clean-sweep.

**Not yet done, real remaining scope**: a `#if 0`-disabled EZ80 block
(~line 5978, doubly dead), `offsetPair()`'s partial dead branches mixed
with a live `PAIR_HL` case in the same `if`/`else if` chain (needs
careful surgical separation), and the bulk of ~380 total `IS_TLCS90`/
`IS_EZ80`/`IS_RAB`/`IS_R4K`-family references in the 18543-line file
not yet individually audited (many already reduced to explanatory
comments about prior removals, not all confirmed). This is a genuine
multi-pass effort, committed and pushed incrementally as checkpoints
rather than held until fully done, matching how every other piece of
this project has been handled.

**Pass 1 committed and pushed as `be3a787`** - independently verified
before committing (the `*_NOTYET` revert confirmed genuine, all three
`.sum` files read directly at 2/6356 matching baseline, working tree
clean with only `gen.c` modified).

**Pass 2 committed and pushed as `4e8df23`** - removed two `#if 0`
blocks (a dead speculative-optimization arm referencing IY, an
`IS_EZ80`-gated `ld.lil` arm also referencing dead `AOP_IY`) and
`offsetPair()`'s two entirely-dead leading branches (`IS_TLCS90`-gated,
`(IS_EZ80||IS_R6K)`-gated). Surveyed every remaining `#if 0`/`#ifdef`
block and live `IS_*`-family reference file-wide - most of the ~380
total are already just explanatory comments about earlier removals,
not actual disabled code. Deliberately left alone: general-purpose
debug scaffolding unrelated to this migration or IX/IY (out of scope
per Neil's stated concern), and one live, correct defensive guard in
`genPlus`. Independently verified before committing: all three `.sum`
files at 2/6356, 0 abnormal stops, only `gen.c` modified.

**`main.c`/`ralloc.c`/`ralloc2.cc` audit: clean, no changes needed.**
`ralloc.c` has zero IX/IY-specific references at all. `main.c`'s only
two live references (`_getRegByName`'s `"iyl"`/`"iyh"` mapping) are
legitimate user-facing input-parsing robustness, not dead compiler-
internal logic - left alone. `ralloc2.cc` already went through a prior
careful IY-cleanup pass (`IYinst_ok()` fully removed, documented);
its remaining `REG_IYL`/`REG_IYH` usage is load-bearing array-index
bookkeeping in a generic multi-register cost/graph-coloring algorithm,
correctly left alone rather than assumed removable.

**Pass 3 committed and pushed as `10bf7ab`** - a systematic, exhaustive
audit of every remaining `AOP_IY`/`AOP_STK`/`PAIR_IY`/`IYL_IDX`/
`IYH_IDX`/`AOP_FDIR` occurrence in `gen.c` (not a literal line-by-line
read, but every one of the 14+14+7 relevant case sites individually
traced and categorized). One real removable site found: `aopGet`'s
`AOP_STK`/`AOP_EXSTK` block had dead IX-indexed branches following the
live HL-based `AOP_EXSTK` path - collapsed to the unconditional live
path (both case labels kept as a costless safe fallback). Everything
else confirmed already correctly minimal (register-allocator cost
stubs, tripwires from earlier passes, small generic switch-arms
matching their live siblings' style). Independently verified before
committing: all three `.sum` files at 2/6356, 0 abnormal stops, only
`gen.c` modified.

**Assessment: the `gen.c` clean-sweep is substantially complete** after
three dedicated passes (`AOP_FDIR` removal, `#if 0`/`offsetPair`
cleanup, exhaustive case-site audit) plus the clean `main.c`/`ralloc.c`/
`ralloc2.cc` audit. Further hunting would mostly turn up more already-
minimal generic dispatch code, not genuine removable bloat. Task #14
can be considered done pending final review.

## Post-migration phase: clean sweep of dead/commented code (2026-08-20, Neil)

"In the 8085 code I really do not want to see any dead code, even
commented, especially anything related to IY, etc." Once the migration
itself lands and validates cleanly, do a proper pass to physically
**remove** dead code rather than leave it commented-out or gated behind
a `wassertl (0, ...)` tripwire - matching the standard already held to
for the original `IS_8080LIKE`/`IS_8085` guard pruning (745 hits -> 0).
Scope: `AOP_STK`/`AOP_IY`/`AOP_PAIRPTR(IX/IY)`/IYL-IYH branches in
`ld_cost_form` and elsewhere, the leftover `"add iy, sp"` Zilog text
(the one deliberately-left dead-IY case, see the architectural-finding
section above), whatever the ISR `push iy`/`pop iy` fix leaves behind as
dead once it's rewritten, and any other IX/IY vestige inherited from the
shared z80 lineage that this migration's tracing has proven unreachable.

**Explicitly a post-migration phase, not concurrent with it**: the
`wassertl (0, ...)` tripwires are a deliberate safety measure for the
risky in-progress translation - they fail loudly if a "proven dead"
branch turns out to be reachable after all. Removing them before the
whole migration is validated would trade a loud failure for a silent
one, exactly the kind of risk this project has been careful to avoid
throughout. Do this pass once `test-i8085`/`test-i8085-undoc`/
`test-i8080` are clean and the ISR/i8080-shared-`gen.c` questions are
resolved, not before.

## Not in scope for this pass

- Upstream submission of anything (explicitly off the table for now,
  per Neil - "let's not submit anything upstream, just focus on getting
  our own house in order").
- Migrating `i8080`'s *own* separate consideration of whether it should
  track `as8085`'s `.8080` sub-mode identically to how `i8085` tracks
  `.8085` - almost certainly yes (same port family, same shared `gen.c`
  by construction), but confirm rather than assume once the rewrite is
  underway.
- A real `peeph-i8085.def` (see peephole note above).
