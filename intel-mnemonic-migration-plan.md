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
