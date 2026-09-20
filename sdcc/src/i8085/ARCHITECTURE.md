# i8085 backend architecture

How SDCC's frontend hands work to this backend, what data structures
cross that boundary, what this backend actually does with them, and
how register allocation works here specifically. Written 2026-09-20
after a session spent tracing the real call chains (not just reading
comments) through `ralloc.c`, `ralloc2.cc`, and `gen.c`.

## The frontend/backend contract

SDCC's backend interface is a single, large `PORT` struct
(`src/port.h`) - a bag of function pointers and configuration fields,
one instance per target (`i8085_port`/`i8080_port` in `main.c`). Most
of it is plumbing: type sizes, assembler/linker commands, memory-space
names, peephole-condition callbacks. The actual code generation entry
point is one field:

```c
void (*assignRegisters) (struct ebbIndex *);
```

The frontend calls this **once per function**, after it has finished
parsing, type-checking, and doing frontend-level optimizations
(constant folding, common-subexpression elimination, etc.) on that
function. Everything from "here is the IR for this function" onward is
entirely this backend's problem - the frontend does not know or care
how i8085 turns it into bytes.

## What the frontend hands over

- **`iCode`** (`SDCCicode.h`): a doubly-linked list of three-address-
  code-style instructions. Each has an `op` (`'+'`, `'='`, `CALL`,
  `IFX`, `GOTO`, `GET_VALUE_AT_ADDRESS`, etc. - a fairly high-level
  vocabulary, not RISC-like micro-ops) and `IC_LEFT`/`IC_RIGHT`/
  `IC_RESULT` operand fields.
- **`operand`/`symbol`**: a C-level value - a real variable (with
  type, storage class, and liveness range already computed by the
  frontend) or a compiler-generated temporary ("iTemp").
- **`eBBlock`** (extended basic blocks) plus the `ebbIndex`: the
  control-flow graph - blocks linked by predecessor/successor edges,
  carrying live-in/live-out bitvectors from the frontend's liveness
  analysis.

So this backend never sees raw syntax trees - it sees a CFG of
near-linear IR with symbols already tagged with type/size/liveness
information.

## What this backend does with it

`i8085_assignRegisters` (`ralloc.c`) calls `i8085_ralloc()`, which runs
a five-stage pipeline:

1. **`packRegisters()`** - classic SDCC (originally mcs51-derived)
   peephole-style optimization directly on `iCode`, merging away some
   live ranges before allocation.
2. **`recomputeLiveRanges()` / `regTypeNum()`** - re-run liveness,
   compute how many registers of what kind each live range needs.
   Inherited, frontend-shared infrastructure.
3. **`serialRegMark()` / `joinPushes()`** - more preparation for the
   allocator.
4. **`i8085_ralloc2_cc()`** (`ralloc2.cc`) - the actual, bespoke
   register allocator for this port (see below).
5. **`i8085_genCode()`** (`gen.c`) - walks the now-assigned `iCode`
   list for real via `genICode()`'s big switch statement, dispatching
   each op to a `genXXX()` function (`genPlus`, `genAssign`,
   `genCall`, `genIfx`, ...). Each of these emits real 8080/8085 text
   via `emit2()`/`emit3()` into a line list, using this port's own
   `asmop`/`AOP_*` abstraction (`AOP_REG`, `AOP_DIR`, `AOP_EXSTK`,
   `AOP_HL`, `AOP_LIT`, ...) to represent "where does this operand
   actually live" - built per-operand by `aopOp()`/`newAsmop()`.

Once every `iCode` is walked, `peepHole()` runs the peephole optimizer
(`peeph-i8085.def`'s pattern rules) over the emitted line list for
local cleanup, then the result is printed.

## Register allocation - the interesting part

This is where the design gets genuinely unusual. `i8085_ralloc2_cc()`
is a tree-decomposition-based allocator. For most `iCode` ops, when it
needs to know "what would this candidate register assignment cost me,"
it does not consult a hand-written cost table (the way most backends -
GCC's `rtx_cost`, LLVM's `TargetTransformInfo`, textbook treatments -
do it). Instead (`ralloc2.cc` ~line 1243):

```cpp
assign_operands_for_cost (a, i, G, I);
set_surviving_regs (a, i, G, I);
c = i8085_dryICode (ic);   // actually runs the real code generator
```

`i8085_dryICode()` calls the *exact same* `genICode()` used for real
emission, in a mode (`regalloc_dry_run = true`) where `emit2()` etc.
no-op but `cost2()` calls still accumulate bytes/T-states. So the
allocator's cost oracle *is* the real code generator, run
speculatively per candidate. That is a genuinely clever design: the
estimate can never drift from reality for anything that goes through
it, because it is not a separate model - it is the same code.

This port has 7 general registers (A, B, C, D, E, H, L -
`port->num_regs = 7`), with HL/DE/BC usable as 16-bit pairs. There are
no index registers, so no hardware frame pointer - locals live at
HL-relative offsets from SP (`AOP_EXSTK`) instead of `[FP+n]`.

## Does this make sense? Could it be better?

The core idea is genuinely good - better, in principle, than what most
backends do. But a full session of tracing real bugs through this code
found the exact cost of its implementation's seams:

- **It's expensive.** Re-running the whole code generator per
  candidate per iCode is inherently slower than a table lookup. Not
  benchmarked here, but it is a structural consequence of the design.
- **The escape hatches are where the bugs live.** Not every cost
  decision goes through the expensive dry-run. There is a cheaper
  `regalloc_dry_run_cost` scalar (documented in `gen.c` as "legacy,
  bytes only, states ignored") used at a couple dozen sites, and
  pre-decision heuristics like `genAssign`'s `cyclecost_l`/
  `cyclecost_n` used to pick *which static code shape* to generate
  before the real per-candidate cost even applies. Essentially every
  concrete bug found while working through this code - an unexamined
  Z80-inherited timing constant, silently-dropped T-states at a couple
  dozen sites, an outright invalid `"clr c"` mnemonic that had never
  been reached in the entire regression corpus - lived in one of these
  escape hatches, never in the dry-run path itself. That is not a
  coincidence: it is the direct cost of stepping outside the "one
  source of truth" guarantee the core design otherwise gives for free.
  (See `i8085-open-items.md`'s closed entries from 2026-09-18/19 for
  the full trace of each.)
- **Mixing old (`ralloc.c`, mcs51-inherited) and new (`ralloc2.cc`)
  allocator machinery in one pipeline is real accidental complexity.**
  It works, but it is not obvious *why* both exist without archaeology
  - a fresh reader has no way to know `packRegisters`/`regTypeNum` are
  legacy plumbing feeding a completely different, bespoke allocator
  underneath, short of reading both files end to end.
- **Even the "ground truth" path has a subtle sharp edge.**
  `_G.pairs[]` (the pointer-caching state `pointPairToAop()` reads and
  writes) is global and order-dependent, so a candidate probed in
  isolation during allocator search could in principle get a different
  real cost than it gets during final emission, depending on what else
  ran in between. No direct evidence this causes real misbehavior was
  found, but it means even the "elegant" path is not perfectly
  self-consistent in theory.

If this were being redesigned, the two honest options are: commit
fully to the dry-run-as-cost-oracle idea (route the remaining escape
hatches through it too, accepting the compile-time cost), or, short of
that, add some kind of periodic cross-check - a debug mode that
compares the cheap estimates against a real dry-run and flags
divergence - so the next drift gets caught by a build, not by someone
spending a session tracing it by hand.
