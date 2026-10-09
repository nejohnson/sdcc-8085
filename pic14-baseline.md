# pic14 on gputils — measuring the port

First measured 2026-10-08 in an isolated worktree (`feat/pic-baseline`);
**corrected and re-measured 2026-10-09**, on `feat/i8085`.  gputils 1.4.0
(`gpasm`/`gplink`) and gpsim 0.32.1 throughout.

`pic14` and `pic16` sit in `EXCLUDE_PORTS` in
`support/regression/Makefile` under the comment `# unstable`.  Nobody had
established that the ports are unstable.  **Four** defects in the
*scaffolding* stopped the suite before it reached a single line of PIC
code, and with those fixed it builds, links, simulates and finishes.

Read the 2026-10-09 column.  The earlier one is kept beside it because
several of this document's original conclusions were drawn from it and
turned out to be wrong - they are marked where they appear, since a
corrected figure is worth less than a corrected argument.

## The four that were in the way

1. **`sdcpp` latched the `__asm` marker** after `#pragma preproc_asm -`
   (`6e921bd3`).  The pragma makes the preprocessor keep an `__asm`
   block as one token, so no `__endasm` is ever lexed, nothing cleared
   `_in_asm`, and the `0x87` marker went on every line of C that
   followed - `error 329: stray character`.  `ports/pic14/support.c` is
   the only user of that pragma in the tree, so the suite died
   compiling its own support file.  Not port specific: nine lines
   reproduce it on mcs51, z80, stm8, hc08 and mos6502 too.
2. **gpsim was invoked in uCsim's argument order** (`35b8bffd`), so `-c`
   took the `.cod` as its command file and gpsim sat at an interactive
   prompt until the timeout, writing `**gpsim>` - 36MB per test.
3. **`-c` changes directory** to the command file's own, after which the
   harness's relative paths stop resolving.  `-I` is the same thing
   without the chdir.  `pic16` had the argument order right and only
   this half wrong.
4. **The C library was never linked** (`d24ebb33`), found 2026-10-09.
   `LINKFLAGS` listed `libsdcc.lib libm.lib` under `--nostdlib` and not
   `libc.lib`, so any test that copied a struct, compared memory or
   called a string function failed to link.  pic16 links `libc18f.lib`;
   mcs51 links its whole set.  Unchanged since the trunk import, so not
   a recent regression.  **152 test cases had never executed once.**

## The numbers

Two measurements, because the second corrects the first.  "first" is
2026-10-08, before the asmop fix and before `libc.lib` was linked;
"now" is 2026-10-09 with both.

| | first | now |
|---|---|---|
| failures | 2074 | **2117** |
| tests | 19301 | 19843 |
| test cases | 4809 | **4967** |
| abnormal stops | 415 | **278** |
| compiler crashes | 5 - 4x SIGSEGV, 1x SIGABRT | **4** - 4x SIGSEGV |
| internal compiler errors | 69 | 69 |
| `validateOpType` failures | 48 | 48 |

**The failure count going up is the measurement improving, not the port
getting worse.**  152 cases that had never once executed now run, and
about 120 of them pass;  the 32 extra failures are tests that reach the
simulator and fail there honestly.  Prefer the case count to the
failure count when comparing across these two rows.

`0 bytes, 0 ticks` in the summary is structural, not the stale-result
trap: gpsim reports neither, so that column is always zero for PIC.
Read the case counts instead.

**What "1703 cannot compile/link" and "415 abnormal stops" meant.**
Not two problems: largely the same tests counted twice.  An abnormal
stop is a `--- Simulator:` line with no `--- Summary:` before it
(`collate-results.py:98`), and a test that fails to link still runs
gpsim, which prints `failed to open program file` and exactly that
pair.  416 of the 423 abnormal stops in the 2026-10-08 run were
binaries that had never been produced.

So the first measurement's headline - a port that "largely does not
compile the corpus" - was **wrong about the cause**.  A large part of
it was the harness not linking the C library.  What remains after that
is still substantial, but it is a smaller and better understood number,
and it is listed below rather than asserted.

## What the failures are made of

The internal errors cluster at two sites, not sixty-nine:

| count | site | message |
|---|---|---|
| 59 | `gen.c:1205` | Setting of register parameter vs. other parameter not yet implemented for functions without prototype |
| 8 | `gen.c:1924` | `rsize > 0 && rsize <= 4` |
| 1 | `gen.c:1083` | illegal pointer type |
| 1 | `gen.c:6997` | code generator internal error |

The 59 are one unimplemented case - K&R style calls - reached many
times.

**The 8 are not the same fault as the crash below**, which the first
version of this document claimed.  `gen.c`'s `rsize` assert is on the
size of a called function's *return type*, and the eight are struct and
`long` returns - `dynamiccstructret_rtype_signed_long`,
`structreturn_type_long`, `gte/pr58365` and five torture tests.  No
`long long` among them.  The count is unchanged by the asmop fix, 69
before and 69 after, because it is reached by a different path.  It has
its own entry in `FUTURE-WORK.md`.

A second diagnostic, counted separately because it is not a FATAL
internal error: **48 `validateOpType failed in OP_SYM_ETYPE(left)`**.
117 lines in total carry the words "internal error" in either case.
Quote 69 or 48 or 117, but say which.

## The crash: an asmop overrun — fixed 2026-10-09 (`51d4dfd3`)

`gte/pr57860.c` *used to* abort the compiler:

```
allocated more than 4 or 0 registers for type longlong-int fixed
allocated more than 4 or 0 registers for type longlong-int fixed
...
malloc(): corrupted top size
Caught signal 6: SIGABRT
```

`malloc(): corrupted top size` is glibc finding that something wrote
past the end of a heap allocation and trampled the top chunk's size
field.  The warning above it is the pic14 register allocator saying it
has allocated more than four registers for a `long long` - the same
four that `gen.c:1924` asserts on.  A four-register array written with
eight registers' worth would produce exactly this pair.

It was **intermittent without a heap checker** - it aborted under `-j8`
and not on a later hand re-run - and **deterministic with one**:
`MALLOC_CHECK_` 1, 2 and 3 all abort.  Valgrind named it exactly: 20
invalid writes, *"0 bytes after a block of size 40"*, in `pic14AopOp`.

`pic14AopOp` copied `sym->nRegs` register pointers into an `aop_reg`
that holds four.  It now declines the operand instead - `error 369`,
five sites, one file in the whole corpus - and valgrind reports 0
errors.  Note the recovery matters as much as the refusal: handing back
a *zero-sized* asmop merely traded the SIGABRT for a SIGSEGV, because
every caller indexes `aop_reg` by the operand's own size.

The four SIGSEGVs are elsewhere and remain: `satcounteroverflow` for
`unsigned char` and `unsigned int`, and two others that the `-j8` log
attributes inconsistently between runs.  **Do not trust a per-case
crash attribution from a parallel log** - compile the case alone.

## What still cannot link (2026-10-09)

133 tests, after `libc.lib` was added.  None of them is the same bug:

| symbol | tests | what it is |
|---|---|---|
| `___setjmp`, `_longjmp` | 56 | genuinely unimplemented;  `device/include/pic14/setjmp.h` says so in a `#warning` |
| `_printf` | 52 | **in `libc.lib` as a member, absent from its archive symbol index** |
| `_sprintf` | 13 | same |
| `_qsort`, `_memalignment`, `_memccpy`, `_get_indexed` | 3/3/2/2 | same |

The second row is a real and separate defect, and it is easy to get
wrong:  grepping `libc.lib` for `_printf` finds it, because the string
occurs inside member objects' own symbol tables.  Parsing the archive
index - the leading member, before `libc_a-__assert.o/` - gives 96
exported symbols, and `_printf`, `_sprintf` and `_qsort` are not among
them while `_vprintf`, `___memcpy` and `_memset` are.  `libc_a-printf.o`
is in the archive;  nothing points at it.

Not investigated further.  Whoever picks it up should start by asking
why `sdcclib`/`gplib` indexed some members and not others.

## What it means for moving PIC off gputils

Replacing `gpasm`/`gplink` with `aspic`/`aslink` would leave all of
this untouched - 1703 compile failures are upstream of any assembler.
The dependency is also three tools, not one: `gpsim` has no uCsim
equivalent, so the test path needs it whatever happens to the build
path.

`aspic` is further along than expected (it assembles and links a
PIC16F877 end to end, and the enhanced 14-bit core is now implemented),
but the honest order of work is the back end first.

**The first version of this document ended by calling `long long` "the
largest single cluster - the four-register limit, the `rsize` assertion
and the heap overflow all look like one fault".  Measured, that is
false, twice over.**  The `rsize` assertion is struct and `long`
returns, not `long long`.  And declaring `long long` unsupported - the
obvious conclusion from the heap overflow - *costs* 321 failures across
201 files that compile today, so most of it works by way of SDCC's
generic multi-byte lowering.  Only the operands that reach
`pic14AopOp` in registers cannot be encoded, and that is one file in
4967.  See `FUTURE-WORK.md`;  the question of which `long long`
operations pic14 actually gets right is open and wants measuring, not
assuming.

The pattern worth carrying forward from this document's own errors:
three numbers here were quoted for a week before anyone asked what
produced them - 1703, 415 and 69 - and two of the three meant something
other than what they were used to argue.
