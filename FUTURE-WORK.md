# Future work

Things that were found, measured and deliberately not done.  Each entry
says what is known, what it would cost and why it was parked, so that
picking one up does not start with rediscovery.  Dated so that a claim
can be re-checked against the tree it was made about.

Ordered by size, not priority.

---


## stm8 on vendor asst8 and aslink (2026-10-17) - FIXED 2026-11-02

stm8 and stm8-large ran at 2 failures each, tst_bug-3803 and
tst_p99-conformance.  bug-3803 was a front-end fault on every port: a
struct rvalue through a pointer was loaded as a whole object into an
iTemp that the rest of the compiler takes to hold an address.
geniCodeDerefPtr now yields the address, and a struct return goes via a
variable.  p99-conformance runs with SKIP_UNIVERSAL on the ASxxxx ports.
All five ports at 0 failures.  `--out-fmt-elf --debug` works with the
vendor tools (LEB128, NOLOAD, ELF output from aslink), and the start-up
code is in a crt0.

---

## Calling a no-prototype function with an argument (2026-10-09) - FIXED 2026-11-02

decorateType makes a function type from the promoted arguments and calls
through it (`noPrototypeCallType` in `src/SDCCast.c`); test
`noproto-call.c`.  Error 379, `E_NOPROTO_PARM_UNSUPPORTED`, remains only
for a non-reentrant callee on a port without `--stack-auto`, where the
arguments would need the callee's parameter variables.

---

## `asxxsrc/aslex.c`: `strcpy` with overlapping arguments (2026-10-08) - FIXED 2026-10-16

Fixed in ASxxxx `b711951`.  The copy was of `afn` onto itself, and the
same line set the included file's path length without its path, so a
file included from another directory could not `.include` or `.incbin`
anything beside itself - a real bug the undefined behaviour sat next
to.  New astest cases `incpath`, `itst`, `incsym` (52 of 52); all 54
assemblers byte-identical over their 171 sources.  See ASxxxx
`VENDOR.md`.  The original entry:

ASan reports `strcpy-param-overlap` in `strcpy (afn, asmc->afn)` at
`asxxsrc/aslex.c:901`, where source and destination are the same pointer
at the outermost `.include` level.  Six of `aspic`'s sample sources trip
it; **a `master`-built assembler does the same**, so it is not from any
recent change.  Undefined behaviour that happens to work.  `asxxsrc/` is
shared by 56 assemblers, so it needs the usual byte-identical sweep.

---

## Act 3: upstreaming to Baldwin

Deliberately on hold.  `VENDOR.md` is current and grouped by what each
change would be upstream - 51 entries, with four that need squashing or
splitting first.  The reasoning for waiting: it costs political capital,
and the case is stronger with a fully working system than with one whose
remaining faults are merely well documented.
