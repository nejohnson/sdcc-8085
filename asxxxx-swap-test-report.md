# ASxxxx realignment: end-to-end build-and-swap test results

> The concrete next step flagged at the end of
> `asxxxx-noice-linker-followup-report.md`: take real SDCC-generated
> z80/8080/8085 `.asm` output, assemble it with vendored `asz80` instead
> of `sdasz80`, link with SDCC's existing `sdldz80`, and see whether a
> working binary comes out. Method and full findings below. The vendored
> submodule itself was never modified - one local, throwaway, scratch
> patch was applied to a *copy* of vendor source purely to keep testing
> past one specific bug (noted explicitly where used), and `bin/sdasz80`
> in the build worktree was temporarily swapped and fully restored
> afterward (checksum-verified, and the normal pipeline re-confirmed to
> reproduce the exact pre-test baseline byte-for-byte).

## Method

1. Built a standalone vendored `asz80` from `vendor/asxxxx` source with
   plain `gcc` (`asxxsrc/{asdata,asdbg,asexpr,aslex,aslist,asmain,asmcro,
   asout,assubr,assym}.c` + `asz80/{z80adr,z80mch,z80pst}.c` - confirmed
   this is the exact upstream file list via a current Visual Studio
   project file in `asxmak/vs22/build/asz80/`). Built and ran cleanly,
   zero warnings.
2. Compiled a small real regression test case (`cases/tst_swap.c`, plus
   its `testfwk`/`support` support objects and the prebuilt `fwk.lib`)
   for `-mi8085` with the worktree's own `bin/sdcc`, producing real,
   unmodified SDCC-generated `.asm`.
3. Backed up the worktree's real `bin/sdasz80`, ran the baseline pipeline
   once for a known-good reference (0 failures out of 6 tests, `tst_swap.
   ihx` recorded and its MD5 saved), then swapped the vendored binary
   into `bin/sdasz80` and rebuilt the same test case from scratch so
   every `.rel` file was produced by the vendored assembler.
4. Linked with SDCC's real, untouched `sdldz80`.
5. Restored the real `bin/sdasz80` afterward and re-verified the normal
   pipeline reproduces the exact original baseline `.ihx` byte-for-byte
   (MD5-confirmed) - the worktree was left in a fully clean state.

## Three tractable issues found and worked around

1. **SDAS's assembler invocation syntax is non-standard.** Traced via
   `strace`: SDCC invokes `sdasz80 -plosgffw <output.rel> <input.asm>` -
   an explicit output-filename positional argument before the source
   file. Upstream's syntax is just `asz80 [-options] file1 [file2...]`,
   deriving the output name from the input. Passing SDAS's exact
   argument list to vendored `asz80` made it try to treat the `.rel`
   path as a second *input* file ("cannot open"). Fix for testing: just
   drop the explicit output argument and let it default - which produces
   exactly the filename SDCC needs anyway. If this path were pursued for
   real, `src/i8085/main.c`'s `_z80AsmCmd`-equivalent invocation template
   would need adjusting.

2. **`.optsdcc` is an SDCC-only assembler directive**, unrecognized
   upstream (`.optsdcc -mi8085 sdcccall(1)`, emitted at the top of every
   SDCC-generated `.asm` file to record compiler options for later
   tooling). Worked around by stripping the line before assembly. A real
   integration would need either upstream to gain an equivalent directive
   (unlikely to be accepted for something this SDCC-specific) or SDCC to
   stop emitting it when targeting the vendored assembler.

3. **Long comment lines break vendor's lexer.** `--fverbose-asm
   --i-code-in-asm` (used throughout this whole project's regression
   suite, for human-readable iCode-annotated listings) produces comment
   lines up to ~380 characters. Assembling such a file with vendored
   `asz80` produced a bogus "directive/mnemonic error" *inside* what
   should be a plain `;`-prefixed comment - consistent with a
   fixed/short line-buffer limitation in the older lexer (not
   root-caused further; SDAS's own `aslex.c` diverged ~16% from upstream
   per the original realignment report, plausibly including exactly this
   kind of buffer-size fix). Fully avoided by compiling without those two
   debug-verbosity flags (a ~100-character max line length worked fine) -
   not a blocker for normal (non-debug-verbose) compilation.

## One genuine upstream bug found (not applied to the vendored submodule)

`asz80/z80mch.c`'s per-opcode 8085-legality table `i85pg1[256]` has
**`i85pg1[0x11] == UN`** (marks `LD DE,nn` / `LXI D,nnnn` as "not a
standard 8085 instruction"). This is wrong: `LXI D,d16` is a completely
ordinary, documented 8085 instruction, timing-identical to `LXI B`/`LXI
H` (both correctly `10` in the same table). The neighbouring
"8085-with-undocumented-instructions-enabled" table, `x85pg1[0x11]`,
correctly has `10` at the same position - so this looks like an isolated
transcription error in the *standard*-only table, not a deliberate
restriction. Confirmed this is why the very first real test file failed
to assemble under vendored `asz80` even after fixing the two issues
above (`SDCC's own baseline sdasz80` accepts this exact code, has for
this whole project's regression suite, and does not have this bug - its
own 8080/8085 legality-checking mechanism was independently rewritten,
see below). Patched in a local, throwaway *copy* of the vendor source
purely to keep the test moving (not applied to `vendor/asxxxx` itself,
per the read-only vendoring policy) - worth reporting to the ASxxxx
author via the channel in `VENDOR.md` if this project ever re-engages
upstream.

## The real blocker: the object-file format itself has moved on

Once all three tractable issues above were worked around and the bug
patched in the scratch copy, every `.rel` file assembled cleanly with
vendored `asz80` - but **linking against SDCC's prebuilt `i8085.lib`
device library failed** with `?ASlink-Error-Conflicting flags in area`
for every area (`_CODE`, `_DATA`, `_INITIALIZED`, `_HOME`, `_GSINIT`,
`_GSFINAL`, `_INITIALIZER`, `_DABS`, `_CABS`).

Comparing the `.rel` file's `A` (area declaration) line directly:

```
vendor:  A _CODE size 348 flags CD80 bank 0
SDAS:    A _CODE size 348 flags 0    addr 0
```

SDCC's own documented object-format spec
(`sdcc/sdas/doc/format.txt` §2.5.5) defines the area flags field as a
small bitmask (OVR/CON, ABS/REL, PAG - three bits total, values 0-0x1C),
matching exactly what SDAS emits. Vendor's *current* assembler emits a
far richer encoding (`CD80` uses bits well beyond what's documented) and
a `bank <n>` field where SDAS has `addr <hex>` - genuine, structural
**area-flags format evolution upstream that postdates SDAS's ~20-year-old
fork point**, most plausibly tied to memory-banking support (consistent
with this report's earlier finding that `linksrc/lkarea.c`'s biggest
divergence area-handling code is dominated by bank/overlay concepts, and
with the original realignment report's finding that upstream `asout.c`
has newer relocation-record variants - `outr4b`/`outr4bm`/`outrbm`/
`outrxbm` - SDAS never absorbed). This is not a bug on either side; it's
two independent lineages of the same object format that have each
evolved past the point of silent interchangeability.

## Assessment

**Swapping in vendored `asz80` as a drop-in replacement for `sdasz80`
does not work today, without further work**, specifically because its
current object-file output isn't binary-compatible with SDCC's linker
and prebuilt libraries at the area-declaration level. This is a
materially different and more fundamental finding than anything the
static/structural analysis in the two earlier reports turned up - it
took an actual build-and-link attempt to surface, exactly as flagged.

The three smaller issues (invocation syntax, `.optsdcc`, long-comment
lexer limit) are all real but straightforwardly workable-around or
fixable. The one confirmed upstream bug (`i85pg1[0x11]`) is narrow and
worth reporting regardless of what happens with the larger question.

**If this path is pursued further**, the object-format mismatch is the
thing to resolve first, and there seem to be three shapes that could
take:
1. Find/pin an *older* upstream ASxxxx release whose area-flags encoding
   still matches what SDAS's linker expects - trading away whatever
   improvements motivated tracking current upstream in the first place,
   and not yet confirmed such a version exists in an easily obtainable
   form.
2. Teach SDCC's linker (`sdldz80`, i.e. `linksrc/lkarea.c` and friends)
   to understand vendor's newer area-flags encoding - real development
   work, and (per the earlier follow-up report's structural finding)
   `sdldz80` is literally the same binary as every other SDCC backend's
   linker, so this would need to not break every other target.
3. Use vendor's *own* linker (`linksrc/aslink`) end-to-end alongside its
   own assembler, rather than mixing vendor's assembler with SDCC's
   linker - untested this pass; would need its own from-scratch
   build-and-link-and-run verification, and would mean giving up SDCC's
   own linker-side extensions (NoICE debug records, memory-usage
   reporting, etc. - though NoICE itself is confirmed present natively
   upstream too, per the earlier report, so that specific piece may
   carry over).

None of this is impossible, but it's real, non-trivial follow-on work,
not a drop-in swap - which is exactly the answer this test was run to
get.
