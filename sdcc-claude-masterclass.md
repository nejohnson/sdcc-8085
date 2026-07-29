# SDCC 8080/8085 Port — Claude Masterclass & Handoff

> A self-contained knowledge transfer for a future Claude (or human) picking up this
> project cold, on any machine or account. Everything here is distilled from the work
> that produced `v1.0.0 "Ares Vallis"`. Paths are **repo-relative** (the git repo root
> contains `sdcc/`, `sdcc-cf/`, `sdcc-extra/`, `README.md`, and this file). The actual
> SDCC source tree is under `sdcc/`.

---

## 0. How to use this document

Read §1–§4 first (what/where/how). Then §10 (regression discipline) and §6 (bug classes)
are the two sections that will save you the most pain. §5, §7, §11–§14 are reference. §17
is the working style that made this go well.

**Golden rule that recurs everywhere below: verify empirically, don't trust memory.**
Compile a tiny test and read the `.asm`. Run it in the simulator. Diff against a baseline.
Grep the generated code for real uptake. Every conclusion in this project was earned that
way, and several "obvious" assumptions were wrong.

---

## 1. What was built (TL;DR)

SDCC gained two new targets, **`-mi8085`** and **`-mi8080`**, implemented as **sub-targets
of the existing z80 back-end** — *not* a new compiler. The 8085/8080 are a strict subset of
the Z80, so the work is **gating** the z80 code generator, assembler (`sdasz80`) and linker
(`sdldz80`) down to that subset, reusing everything else.

- `-mi8085` = 8085 with the documented instruction set. With
  `--allow-undocumented-instructions`, it also emits the 8085's *undocumented* instructions
  and flags for smaller/faster code.
- `-mi8080` = the strict 8080 baseline. **Never** emits undocumented instructions.
- Both pass the **entire SDCC regression suite: 0 failures AND 0 abnormal stops.** The shared
  z80 back-end stays at 0 regressions (every change is gated so z80 output is byte-identical).

Milestone tags (all annotated, on the private GitHub fork, branch `feat/i8085`):
`v0.1.0` documented-only → `v0.2.0` undoc exploited → `v0.2.1` docs + `__banked __sfr` fix →
`v1.0.0 "Ares Vallis"` the release. Naming theme: NASA Mars Pathfinder — **Sojourner** (the
journey) landing at **Ares Vallis** (the destination = 1.0). The 8085 (an 80C85) literally
drove the Sojourner rover in 1997.

---

## 2. Repository & version-control model

- The git repo is a **git overlay on an SVN working copy.** There is **no write access to
  SDCC's SVN**, so **never `svn commit`.** All work is git commits on branch **`feat/i8085`**,
  pushed to a private GitHub fork (originally `nejohnson/sdcc-8085`).
- `.svn/` lives at the **repo root** and is **gitignored** (kept so `svn update`/`svn diff`
  still work). `svn info` should report the baseline revision (r16710 at import).
- `main` = pristine upstream baseline (tagged `svn-r16710`). Upstream syncs would be
  `svn update` → `git commit` on `main` → rebase `feat/i8085`. (Not exercised in this work.)
- **git push uses SSH** (the SSH key has write access). **`gh` (GitHub CLI) uses a token**
  that may *not* have access to the private fork — creating a GitHub *release* via `gh` failed
  with a 404 because the fine-grained PAT lacked repo access, even though SSH push worked.
  If `gh` 404s on the repo, that's a token-scope problem, not a missing repo. Fix: grant the
  token Contents:read/write on the repo, or create the release in the web UI.
- Commit authorship for this project uses **`neilj@ieee.org`** (set as the repo's
  `git config user.email`), NOT any work email. End commit messages with the
  `Co-Authored-By: Claude ...` trailer.

---

## 3. Architecture: 8080/8085 as a Z80 subset

The 8085/8080 are the Z80 **minus**:
- **index registers IX/IY** (this is the single most consequential difference — see §6),
- relative jumps (JR/DJNZ),
- the alternate register set (EXX / EX AF,AF'),
- **all ED-prefix ops** (block moves LDIR, 16-bit ADC/SBC HL, `in/out (c)`, ...),
- **all CB-prefix ops** (BIT/SET/RES and the SLA/SRL/RL/RR shift-rotate group).

They have `DAD` (`add hl,rr`), `XCHG` (`ex de,hl`), 8-bit immediate `IN n`/`OUT n`, and the
accumulator rotates (`rlca/rrca/rla/rra`). `INX/DCX` (16-bit inc/dec) do **not** set flags.

**The sm83 (Game Boy) sub-target is the closest precedent** — it's also an IX/IY-less,
ED/CB-restricted z80 variant — so the gating machinery already existed. Adding 8080/8085
meant adding `IS_8080`/`IS_8085` arms alongside existing `IS_SM83` guards, plus extra fallback
code where sm83's fallback doesn't fit (8085 keeps z80-style flags/DAA and lacks sm83's
`swap`/`ldh`/`add sp,d`, and has *none* of sm83's CB-prefix shift group).

### Key predicate macros (`sdcc/src/z80/z80.h`)
- `IS_8080`, `IS_8085` — the two sub-targets.
- `IS_8080LIKE` = `IS_8080 || IS_8085` — use this for anything true of both.
- `IY_RESERVED` includes `IS_8080LIKE` — so IY is never allocated.
- `options.allow_undoc_inst` — the `--allow-undocumented-instructions` flag. **All undoc
  8085 codegen is gated `IS_8085 && options.allow_undoc_inst`.** `-mi8080` therefore never
  emits undoc.

---

## 4. Where things live

```
sdcc/src/z80/gen.c        the code generator — the bulk of the work (~800 KB)
sdcc/src/z80/main.c       PORT structs (i8080_port/i8085_port), _reset_regparm (calling-conv checks)
sdcc/src/z80/z80.h        IS_8080/IS_8085/IS_8080LIKE/IY_RESERVED macros, SUB_8080/SUB_8085
sdcc/src/z80/peep.c       peephole: z80MightRead/MightReadFlag/SurelyWritesFlag/instructionSize
sdcc/src/SDCCerr.{h,c}    error table (E_DYNAMICC_UNSUPPORTED=362, E_SFR_BANKED_UNSUPPORTED=363)
sdcc/sdas/asz80/          the assembler: z80mch.c (opcode gen), z80pst.c (mnemonic table),
                          z80adr.c (operand legality). X_8080/X_8085/X_8085X machine types.
sdcc/sim/ucsim/src/sims/i8085.src/   the simulator (i8085.cc, ialu.cc, i8080cl.h) → ucsim_i8085
sdcc/device/lib/{i8085,i8080,i8085-undoc}/   the three separate runtime-library builds
sdcc/support/regression/ports/{i8085,i8080,i8085-undoc}/   regression port definitions
sdcc/support/regression/MakeList             per-port test EXCLUDE lists
sdcc/doc/sdccman.lyx      the manual (LyX format 643 — see §14)
```

---

## 5. The code generator (`gen.c`) — how gating works

There is **no single choke-point** that rejects an illegal instruction. `emit2()` just formats
text; per-target legality lives in scattered `IS_*` guards and in the positional per-target
**`cost2(...)`** columns. Approach: at each existing `IS_SM83`/`!IS_SM83` guard, add the correct
`IS_8080LIKE`/`IS_8085` behavior.

### cost2() — the cost model
`cost2()` takes per-architecture columns. **For `IS_8080LIKE` it reuses the z80 columns:** the
byte-count is the 1st argument (`z80_bytes`), and states come from the `z80n_states` column
(the 5th argument). When you add a new emission, copy the cost2 pattern from a neighbouring
instruction of the same size; a `-1` slot means "unavailable on that arch". Correctness first;
refine costs later.

### The register allocator
8080/8085 reuse the sm83 reduced register file (no IX/IY). `IY_RESERVED` keeps IY out.
Wide (32/64-bit) values usually land **on the stack** (AOP_STK), addressed via `HL = SP + off`
(`ld hl,#off; add hl,sp` or a DAD-SP fallback). This stack-addressing-through-HL is the source
of a whole bug class — see §6.

### The dry-run cost trick (used to steer allocation)
Adding a **cheap, correctly-gated codegen path lowers the dry-run cost** of an allocation that
uses it, which *nudges the register allocator* to produce that shape. This is how DSUB/LDSI/
LHLX/SHLX/ARHL got real uptake: making the favourable-register path cheap made the allocator
choose it. Conversely, if the shape never occurs, your path fires 0× (see the genPlus-LDHI
dead end in §7).

---

## 6. Recurring bug classes (the expensive lessons)

Almost every miscompile in this port traces to **"there is no IX/IY, so HL (and sometimes DE)
gets repurposed as a pointer, clobbering an operand or a loop counter that was living there."**
Learn to recognise this shape.

### 6a. DE/HL-clobber in binary ops (genPlus / genSub / genCmp / genUminus)
When an operand sits in a register pair and the code path repurposes **DE** (or HL) as a
pointer to walk memory operands, the operand's bytes get read from the clobbered register.
Symptoms: wrong high words, sign flips, garbage fed to helper routines. Fixes throughout the
history: spill the register operand to a stack temp, walk `DE=&left / HL=&right / BC=&result`,
reload the operand after the walk if it's live-after. `setupToPreserveCarry` parking the
compare result in DE was a repeat offender (compare-1, 950607-2, 981001-1, 20041011-1).

### 6b. Variable-count shift of a stack operand — loop counter in L/H (the v1.0 rotate bug)
A variable shift of a **memory** value becomes a shift-by-1 loop whose body re-addresses the
value with `add hl,sp` **every iteration** — clobbering the loop counter if it was allocated
to L or H. Result: the counter is reset each pass and the loop **never terminates** (a ~2e9-tick
hang, which the harness reports as an *abnormal stop*, not a failure). Fixed in **both**
`genLeftShift` and `genRightShift`: reject L/H as the counter register when the operand is in
memory on 8080/8085 (there is already a parallel guard keeping the counter out of A, the
byte-shift scratch). ucz80 was immune because it keeps the frame in IX.

### 6c. A-as-scratch in the 8080 byte-shift
`emit8080Lsh1()` (the 8080 byte left-shift) uses **A** as scratch for any byte not already in A.
So A can't hold a variable-shift loop counter either. Same guard family as 6b.

### The general debugging method that worked
1. Reproduce minimally (a standalone `.c` with the failing pattern).
2. Compile with `-S`, read the `.asm`, find where a register holding a live value gets reused.
3. If it's allocation-sensitive, a Python reference model of the algorithm + per-step sim dumps
   isolates the exact operation (used to crack blake2s / bug #3915).
4. Fix is almost always: gate an `IS_8080LIKE` block that spills/reloads or picks a different
   register; keep it byte-identical for z80.

---

## 7. The 10 undocumented 8085 instructions — status & how each is exploited

All assemble under the `.8085x` directive and are implemented (correctly) in `ucsim_i8085`.
Codegen is gated `IS_8085 && options.allow_undoc_inst`.

| Insn | Meaning | Codegen status |
|------|---------|----------------|
| **DSUB** | `HL = HL - BC` (16-bit sub) | ✅ `genSub` size==2, both operands in reg pairs → stack-bounce into HL/BC, one `dsub`. |
| **ARHL** | arithmetic (signed) `HL >>= 1` | ✅ `emitRsh2`/`shiftR2Left2Result` — signed 16-bit `>>1` in HL. |
| **RDEL** | rotate DE left through carry | ✅ `genLeftShift` wide-shift loop: a carry-in 16-bit DE chunk (the `adc de,de` the 8080/8085 lack). Replaces a 6-instruction A-dance. |
| **LDHI** | `DE = HL + imm8` | ✅ (compound only) — see below. |
| **LDSI** | `DE = SP + imm8` | ✅ `setupPairFromSP` — DE = SP+imm8 in one insn. |
| **LHLX** | `HL = (DE)` | ✅ `genPointerGet` — 16-bit load through a DE pointer; huge uptake (allocator readily keeps pointers in DE). |
| **SHLX** | `(DE) = HL` | ✅ `genPointerSet` — 16-bit store through a DE pointer. |
| **RSTV** | restart-on-overflow (SW interrupt) | ⏸️ unused — no general compiler use. |
| **JX5 / JNX5** | jump on the undocumented X5/K flag | ⏸️ **DROPPED from codegen** — see the lesson below. Still assembler/sim/peephole supported. |

### LDHI is a cautionary tale (measure-first!)
The "obvious" implementation — a `genPlus` fast-path for `DE = HL + imm8` — **fired 0 times**
in the whole regression, because the base pointer always lands in **DE** (recv/return
convention), not HL. It was committed then **reverted as dead code.** The real win was the
**`LDHI`+`LHLX` compound** in `genPointerGet` for the 16-bit member/array-load idiom
`*(base+off)`: `ldhi #off; lhlx` (3 bytes) replacing `ld hl,#off; add hl,ss; ld e,(hl); inc hl;
ld d,(hl)` (~7 bytes). It fires 150+ times. **Lesson: the natural home of an instruction is
not always where it looks; measure real uptake before believing in it.**

### Why JX5/JNX5 were dropped (the most important lesson in the project)
Wiring the X5/K flag into `genCmp` for signed comparisons was **correct in isolation** — every
sign boundary, 8/16/32-bit, verified. But it caused a subtle **second-order register-allocation
regression inside library routines** (`_fs2sint` returned `0x0101` instead of `3`), producing
~105 value-failures. Reverting *only* the `genCmp` jx5 block fixed it. **A change can be locally
correct and still break far-away code by shifting allocation.** This is why every codegen change
gets a full-regression + baseline-diff (§9), not just a unit check.

---

## 8. The V (overflow) and K/X5 flags, and the simulator

The 8085 has two undocumented flags: **V** (overflow, bit 0x02) and **K/X5** (bit 0x20).
`K = V XOR sign(result)` = signed-less-than.

**The sim's V-flag was initially wrong** and was fixed (`sim/ucsim/src/sims/i8085.src/ialu.cc`,
`i8085.cc`): overflow must be **carry-in XOR carry-out of bit 7 of the real ALU op**, *not* the
sign-based formula applied to the two's-complement operand (which loses the carry at INT_MIN /
operand 0x80). The fix computes `ADDV8(A, ~orgb, res)` (one's-complement of the *original*
operand; `res` already carries the +1). Authoritative reference: **Ken Shirriff's silicon
analysis, righto.com/2013/02/looking-at-silicon-to-understanding.html**. After the fix, V and
K are hardware-accurate at all boundaries. **The simulator is trustworthy** — use it as ground
truth for correctness checks.

---

## 9. Methodology: measure-first + baseline-diff

**Measure-first** (used for ARHL, LDHI, RDEL): implement a candidate, build, then **grep the
full regression's generated `.asm` for real uptake** (`grep -cE '^\s+<insn>' gen/<port>/*.asm`).
Keep it only if it fires meaningfully *and* regression is clean. Drop it if uptake is ~0
(genPlus-LDHI) — dead gated code is not worth the risk.

**Baseline-diff** (rules out the JX5-class second-order regression): this is the discipline that
makes codegen changes safe.
1. Run the full undoc regression **with** the change; record failures **and the set of abnormal
   stops** (not just counts).
2. `git stash` the `gen.c` change, **rebuild the compiler AND the undoc lib at baseline**, rerun.
3. **Diff the abnormal-stop sets and the failure sets.** Identical sets + smaller/equal code =
   clean. Any new abnormal stop or failure = a regression to investigate before committing.

A cost change can shift allocation *anywhere*, so "my diff only touches shifts" is not proof —
the baseline-diff is.

---

## 10. Regression discipline (READ THIS — most time lost here)

Ports: **`ucz80`** (mainline z80 sanity), **`i8085`**, **`i8080`**, **`i8085-undoc`**. All run on
`ucsim_i8085` (the 8085 superset runs 8080 code). Run from `sdcc/support/regression/`:
```
make -j<N> test-i8085
make -j<N> test-i8080          # SEPARATE lib build — "i8085 clean" says NOTHING about i8080
make -j<N> test-i8085-undoc
make -j<N> test-ucz80          # must stay 0 — proves z80 untouched
```

### Gotchas that cost real time
- **After a compiler fix you MUST `rm -rf gen/<port>` (not just `results/`)** — otherwise `make`
  reuses stale pre-fix `.asm`/`.rel` and you "fix" nothing. Also rebuild the affected lib
  (`make -C device/lib model-<port>`; the three 8080/8085 libs are **separate builds**).
- **"0 failures" does NOT count "abnormal stops."** An *abnormal stop* = the program ran but
  never printed its `--- Summary:` sentinel (an early `HLT`/crash, or an execution-budget
  timeout). A real timeout-kill shows as a *failure* (`--- Summary: 1/1/1: timeout`); an abnormal
  stop is `collate-results.py` flag==0. **Always check both counts.** The v1.0 shift-hang and
  the whole "0 abnormal stops" achievement came from noticing this blind spot.
- **Exclude-stem naming:** `MakeList` `EXCLUDE_<port>` uses GNU-make `filter-out` = **exact word
  match** against `TEST_STEMS`. Multi-file case directories are **one stem = the directory name**
  (e.g. `dynamic`, `serpent`), NOT per-subcase paths like `dynamic/dynamic_rtype_signed_int`.
  The `.out` subdir paths are misleading. Verify with a probe makefile that includes `Makefile`
  and prints `$(filter-out $(EXCLUDE_<port>),$(TEST_STEMS))`.
- Tests legitimately excluded on 8080/8085 (target-inherent, in `EXCLUDE_ARCH_i8080`):
  `dynamic*`/`dynamiccstructret*`/`tst_dynamicc*` (use `__dynamicc` — needs IX, now rejected),
  `serpent`/`smallserpent`/`gcrypt-serpent` (34–50 KB code overruns `--data-loc 0x8000`),
  `tst_rabbit`/`tst_gcc-torture-execute-arith-rand-ll` (need >2e9 cycles at 1 MHz).
- Layout: 8080/8085 regression links `--code-loc 0x0200 --data-loc 0x8000`, crt0 sets
  `SP=0xffff` growing down, simif memory-mapped at `0xffff`. "Most value of stack pointer=0" in
  a ucsim dump is a **reporting artifact** (shows on passing runs too), NOT stack overflow.

### Standalone sim check (fast correctness spot-check)
Compile with the undoc lib, link `--no-std-crt0` with the port's `crt0.rel`, run in
`ucsim_i8085`, and read a `volatile` result variable at its map address:
```
ucsim_i8085 -t i8085 <file>.ihx    # then at the prompt: run ; dump rom 0x8000 0x800f
```

---

## 11. The assembler (`sdas/asz80`)

- Directives select the CPU: **`.8080`, `.8085`, `.8085x`** (undoc). The compiler emits the
  directive; no command-line flag needed. Machine types `X_8080`, `X_8085`, `X_8085X` in
  `z80.h`; `IS_I8080_FAMILY` macro covers all three.
- **Mnemonics are Zilog-style** (`ld`, `add`, `jp`, `push`), NOT Intel (`mvi/lxi/sui`). Hand-
  written test `.s` must use Zilog syntax.
- **Subset enforcement is per-instruction and was incomplete** — extend it as you find gaps:
  - `z80adr.c` rejects IX/IY *operands* under `IS_I8080_FAMILY`.
  - `z80mch.c` `gixiy()` is the **single choke point that emits the DD/FD prefix** — it now
    rejects DD/FD under `IS_I8080_FAMILY` (catches a stray `push ix` etc.).
  - `z80mch.c` rejects `adc/sbc hl,rr` and the register-indirect `in/out (c)` (ED-prefix) forms
    under `IS_I8080_FAMILY`. The 8-bit `in a,(n)`/`out (n),a` (D3/DB) stay legal.
- Raw-asm tests: link `_CODE` at `0x0000` (ucsim resets PC=0), or they won't run.

---

## 12. Runtime libraries

`i8085`, `i8080`, and `i8085-undoc` are **three independent lib builds**. The 8080/8085 lack
`ldir` and z80-only ops, so several routines are hand-written or aliased. Missing-routine link
failures were resolved by adding, per port:
`__sdcc_call_hl.s` (PCHL indirect call, needed by `printf_large`), `__builtin_memcpy.s`
(alias to `___memcpy`; no `ldir`), `atomic_flag_test_and_set.s` (di/ei RMW), and sourcing
`__memcpy.c`, `__muluint2ulong.c`, `__mulsint2slong.c` in the Makefile.
Rebuild a lib: `make -C sdcc/device/lib model-<port>`; force-clean by deleting its
`*.rel/*.lib/*.lst/*.sym` and regenerating via `./config.status device/lib/<port>/Makefile`.
The three `Makefile.in` drift — consider factoring the shared source list if you touch them.

---

## 13. Calling conventions & I/O intrinsics

- **`__dynamicc`** (Dynamic C convention) is **rejected** on 8080/8085 (`E_DYNAMICC_UNSUPPORTED`,
  in `_reset_regparm` in `main.c`). It has the caller save **IX** as a frame pointer; 8080/8085
  have no index register, so it can't be honoured ABI-compatibly. (A one-line hack made it
  "work" by dropping the `push ix`, but that silently diverges from the real Dynamic C ABI — so
  it's a hard error, not silent adaptation. It was a Rabbit/Z180-only convention anyway.)
- **`__sfr __at(n)`** (8-bit port I/O) **works** — emits documented `out (n),a` / `in a,(n)`
  (D3/DB). **`__banked __sfr`** (16-bit I/O) is **rejected** (`E_SFR_BANKED_UNSUPPORTED`, gated
  at the AOP_SFR setup in `gen.c`): 8080/8085 have an 8-bit I/O space only, and the banked read
  trick relies on Z80 address-line behaviour they lack. Belt-and-suspenders: the assembler also
  rejects the `in/out (c)` it would have emitted.
- **Interrupt handlers work.** `__interrupt` / `__critical __interrupt` return with **`ret`
  preceded by `ei`** (no `reti`/`retn` — those are Z80 ED-prefix). No interrupt vector table is
  generated (same as z80); the user wires the 8085 RST/TRAP vectors. `__critical` uses plain
  `di`/`ei` (no `ld a,i`, which reads Z80 IFF2).

---

## 14. Documentation (`sdcc/doc/sdccman.lyx`)

The 8080/8085 are documented in: §1.1 intro (targets list), §3.5.2 "Z80/Z180/eZ80 **and
8080/8085** intrinsic named address spaces" (`__sfr`), §3.8.7 **"Intel 8080 and 8085 Interrupt
Service Routines"** (its own section), and §4.3.1 **"Intel 8080/8085"** (subset limits, undoc
instructions/flags, `__dynamicc` rejection; label `sub:Intel-8080/8085`, referenced by the
`-mi8085` option entry). ChangeLog has matching entries.

### Building/rendering the manual — the format-643 trap
`sdccman.lyx` is **LyX document format 643**, which is **LyX 2.5.x**. Distro packages are often
older (e.g. Ubuntu 24.04 ships LyX **2.4.0~RC3**, whose `lyx2lyx` tops out at ~620 and **cannot
even load the file**). There is **no official LyX AppImage**, and `ftp.lyx.org` has had a broken
TLS cert (do **not** fetch an executable over it). What worked: **build LyX 2.5.1 from the Debian
pool source** (valid cert):
```
curl -sSL -o lyx_2.5.1.orig.tar.xz https://deb.debian.org/debian/pool/main/l/lyx/lyx_2.5.1.orig.tar.xz
tar xf lyx_2.5.1.orig.tar.xz && cd lyx-2.5.1 && mkdir build && cd build
../configure --without-included-boost      # needs qtbase5-dev + libqt5svg5-dev (REQUIRED) + libmagic-dev; Qt5 is fine
make -j<N>                                  # binary: build/src/lyx
```
Render headless (point at the *source* lib dir + a throwaway userdir):
```
QT_QPA_PLATFORM=offscreen build/src/lyx -userdir <tmp> -sysdir <lyx-2.5.1>/lib \
  -E pdf2 out.pdf sdcc/doc/sdccman.lyx
```
The `doc/Makefile`'s `LYX` var is empty (configured before LyX existed), so `make -C doc` won't
work — invoke the built `lyx` directly. **Quick structural check without LyX:** the counts of
`\begin_inset`/`\end_inset` and `\begin_layout`/`\end_layout` must balance. **Validate a render**
by grepping the LaTeX log for 0 `undefined` references and `pdftotext out.pdf - | grep 'See ??'`
== 0. Literal `__underscores` in body text render fine (LyX escapes them).

---

## 15. Release / tag history & naming

| Tag | Meaning |
|-----|---------|
| `svn-r16710` | baseline SVN import |
| `v0.1.0 "Sojourner"` | documented-only 8080/8085; both targets regression-clean |
| `v0.2.0 "Sojourner"` | undocumented instructions exploited in codegen |
| `v0.2.1 "Sojourner"` | docs + `__banked __sfr` rejection |
| `v1.0.0 "Ares Vallis"` | the release — touchdown; ready for real hardware |

Annotated tags; tagger `neilj@ieee.org`. A GitHub Release was created for `v1.0.0` (manually via
the web UI, because the `gh` token lacked repo access — see §2).

---

## 16. What's next

- **Real-hardware bring-up** — a separate project (real 8085/8080 silicon or an FPGA soft-core).
  The sim is accurate, but real hardware will surface timing/peripheral/vector-table realities
  (RST5.5/6.5/7.5, TRAP, RIM/SIM) the compiler doesn't model.
- **Possible upstreaming** to SDCC. If so: clean ChangeLog entries per SDCC convention, and note
  that every 8080/8085 change is gated so the z80 back-end is byte-identical (that's the argument
  for acceptance). `RIM`/`SIM` are documented 8085 ops; ensure they assemble under `.8085`.
- **Loose ends noted along the way:** the three lib `Makefile.in` drift; `RSTV` is unused;
  `JX5/JNX5` are supported everywhere except codegen (see §7 for *why* — don't re-enable them in
  `genCmp` without solving the second-order allocation problem).

---

## 17. Working style & principles that made this go well

- **Correctness first, always.** A measurably-smaller-code win is worthless if it miscompiles a
  library routine three layers away. When in doubt, drop the optimization (JX5) rather than ship
  a subtle bug.
- **Verify empirically; never trust a claim (including your own memory).** Read the `.asm`. Run
  the sim. Diff the baseline. Grep for real uptake. Several confident assumptions here were flat
  wrong until tested (LDHI's home, the "0 failures ≠ clean" blind spot, the format-643 LyX trap,
  `gh` vs SSH access).
- **Measure before you optimize, and after.** Uptake grep + full regression + baseline-diff.
- **Gate everything.** Every 8080/8085 change must leave z80 output byte-identical. If a z80
  regression appears, your guard is wrong.
- **Report faithfully.** "0 failures but 23 abnormal stops" is the truth; "100% clean" was not.
  Surface blind spots rather than hide them — that instinct found the real shift bug.
- **Be decisive once the evidence is in.** Long analysis, then act; don't re-litigate settled
  decisions.
- The maintainer preferred concise Slack updates during long unattended runs (regressions,
  builds), and short-interval self-paced check-ins over idle polling. Match the cadence to what
  you're actually waiting on.

Good luck, and mind the DE register. 🔴🛰️
