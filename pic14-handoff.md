# pic14: what changed, and what it is good for

Written 2026-10-09 for whoever works on the front end next. Detail and
the measurements behind it are in `pic14-baseline.md`; this is the short
version and the two traps.

## The port runs now. It did not before.

Four defects in the regression scaffolding stopped the pic14 suite
before it reached any PIC code. The last of them: `ports/pic14/spec.mk`
linked `libsdcc.lib` and `libm.lib` under `--nostdlib` and **never
linked `libc.lib`**, so every test that copied a struct, compared memory
or called a string function failed to link. pic16 links `libc18f.lib`;
mcs51 links its whole set. pic14 had been the odd one out since the
trunk import (`c3c9e098`, SVN r16710).

That one line was **152 test cases that had never executed once**.

Baseline at `3180c9f8`:

| | |
|---|---|
| failures | 2117 of 19843 tests |
| test cases | 4967 |
| abnormal stops | 278 |
| compiler crashes | 4, all SIGSEGV |
| FATAL internal errors | 69 |
| `validateOpType` failures | 48 |

```
make -C device/lib model-pic14
make -j24 -C support/regression test-pic14
```

Needs gputils and gpsim. About 20 minutes. `pic14` and `pic16` are still
in `EXCLUDE_PORTS` in `support/regression/Makefile`, so an ordinary run
skips them.

**Why you might want it.** It is a third register allocator and a back
end with different constraints from z80 and mcs51 — four registers per
asmop, no varargs, no indirect calls. Front-end work that is correct on
the other ports can still be wrong here, and until today nothing would
have told you.

## Two traps

**The summary always reads `0 bytes, 0 ticks`.** gpsim reports neither,
so that column is structurally zero for PIC. Compare **test cases**, not
bytes. On other ports byte counts are the sensitive instrument; here
they are noise.

**`make -C src` does not rebuild `support/cpp`.** pic14's harness is the
only user of `#pragma preproc_asm -` in the tree, so pic14 is the only
port that notices a stale preprocessor — it fails with `error 329: stray
character` in its own `support.c`. Build from the top. A green run on
mcs51 and z80 says nothing about a change under `support/cpp`.

## What is left is not fixable in the harness

133 tests still cannot link, and all of it is port capability:

| | tests | |
|---|---|---|
| `setjmp` / `longjmp` | 56 | unimplemented; the pic14 header says so in a `#warning` |
| `printf`, `sprintf` | 65 | no varargs — `__SDCC_PIC14_HAS_VARARGS` is defined nowhere, so the sources compile to empty objects |
| `qsort` | 3 | no calls through function pointers (`__SDCC_PIC14_HAS_PCALL`) |
| `memalignment`, `memccpy`, `get_indexed` | 7 | no source in the pic14 library |

`printf` on pic14 means implementing varargs. It is not a build fix.

## The corpus is moving under both of us

pic14 went 4809 → 4815 → 4967 test cases in a single day, partly from
the `libc.lib` fix and partly from new tests in
`support/regression/tests/`. Any baseline either of us quotes is good
for hours, not days.

Worth adopting: **cite the commit a measurement was taken at**, in the
commit message that uses it. Otherwise we compare numbers from different
corpora, and one of us spends an afternoon chasing a regression that is
three new test cases. That happened here — a Rabbit port looked to have
moved and had not.
