# pic14 on gputils — the first measurement

Measured 2026-10-08 in an isolated worktree (`feat/pic-baseline`), with
gputils 1.4.0 (`gpasm`/`gplink`) and gpsim 0.32.1.

`pic14` and `pic16` sit in `EXCLUDE_PORTS` in
`support/regression/Makefile` under the comment `# unstable`.  Nobody had
established that the ports are unstable.  Three defects in the
*scaffolding* stopped the suite before it reached a single line of PIC
code, and with those fixed it builds, links, simulates and finishes.
What it then reports is below.

## The three that were in the way

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

## The numbers

| | |
|---|---|
| failures | **2074** of 19301 tests |
| test cases | 4809 |
| abnormal stops | 415 |
| **cannot compile/link** | **1703** |
| compiler crashes | **5** - 4x SIGSEGV, 1x SIGABRT |
| internal compiler errors | **69** |

`0 bytes, 0 ticks` in the summary is structural, not the stale-result
trap: gpsim reports neither, so that column is always zero for PIC.
Read the case counts instead.

**1703 of the 2074 never reached the simulator.**  This is not a port
that computes the wrong answers;  it is a port that largely does not
compile the corpus.

## What the failures are made of

The internal errors cluster at two sites, not sixty-nine:

| count | site | message |
|---|---|---|
| 59 | `gen.c:1205` | Setting of register parameter vs. other parameter not yet implemented for functions without prototype |
| 8 | `gen.c:1924` | `rsize > 0 && rsize <= 4` |
| 1 | `gen.c:1083` | illegal pointer type |
| 1 | `gen.c:6997` | code generator internal error |

The 59 are one unimplemented case - K&R style calls - reached many
times.  The 8 are the same four-register limit as the crash below.

## The crash: the register allocator overruns the heap

`gte/pr57860.c` aborts the compiler:

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

It is **intermittent without a heap checker** - it aborted under `-j8`
and not on a later hand re-run - and **deterministic with one**:
`MALLOC_CHECK_` 1, 2 and 3 all abort.  Use that when working on it.

The four SIGSEGVs are elsewhere: `rotate2_size_16_...`, and
`satcounteroverflow` for `unsigned char` and `unsigned int`.

## What it means for moving PIC off gputils

Replacing `gpasm`/`gplink` with `aspic`/`aslink` would leave all of
this untouched - 1703 compile failures are upstream of any assembler.
The dependency is also three tools, not one: `gpsim` has no uCsim
equivalent, so the test path needs it whatever happens to the build
path.

`aspic` is further along than expected (it assembles and links a
PIC16F877 end to end, and the enhanced 14-bit core is now implemented),
but the honest order of work is the back end first.  `long long` is the
largest single cluster: the four-register limit, the `rsize` assertion
and the heap overflow all look like one fault.
