# Proposal: migrate `sdcc/doc/sdccman.lyx` from LyX to groff

> Research/planning only, per Neil's request. Nothing in `sdcc/doc/` was
> modified to produce this document. Not scheduled - a proposal to review
> and weigh in on before any real work starts, matching the format of
> `intel-mnemonic-migration-plan.md`/`asxxxx-integration-plan.md`.

## Why this is being considered

`sdccman.lyx` is 84,111 lines / 1.2MB, single file, and building it today
(`sdcc/doc/Makefile.in`) requires the full LyX + LaTeX toolchain: `lyx -e
latex` -> `.tex` -> `latex`/`pdflatex` (+ `makeindex` for the back-of-book
index) -> PDF, and separately `latex2html` for HTML, and `lyx -e text` for
plain text. That's a heavy, slow, somewhat fragile dependency chain for a
project that otherwise tries to keep its toolchain lean. groff (already
installed on this machine: `groff`/`pic`/`tbl`/`eqn`/`grap`/`pdfroff`/
`grohtml`/`mmroff`, all GNU groff 1.23.0) is a single small package,
present by default on most Linux distros, and is dramatically faster to
run.

## Part 1: what's actually in `sdccman.lyx` (real inventory, not the rough grep counts)

### Document scale

- 84,111 lines, single `.lyx` file. LyX format version 643 (LyX 2.5).
- 10 Chapters, 68 Sections, 166 Subsections, 85 Subsubsections, 27
  `Subsubsection*` (unnumbered), 2 Paragraph, 7 `Paragraph*` - 365
  heading-level layout paragraphs total, not the "245" figure from the
  earlier rough pass (that undercounted by only checking three of the
  seven heading-ish layout names).
- A previously-built PDF of a nearby SDCC release (`/usr/local/share/sdcc/
  doc/sdccman.pdf`, from sdcc 4.5.0) renders at **139 pages** - useful
  scale reference; this repo's manual, with the 8085/ASxxxx-era additions,
  is likely similar or somewhat larger.

### Tables (38 `Tabular` insets) - straightforward, `tbl`-friendly

Row/column shapes range from `3x2` to `37x4` (largest: `rows="37"
columns="4"`, likely the C99/C23 keyword or option-reference table). No
`multirow` (vertical cell spans) anywhere. Only **one** table (line 44312,
`14x7`) uses horizontal cell-spanning (`multicolumn="2"` cells, 6
occurrences) - a header-grouping table, still well within `tbl`'s `s`
(span) column-spec syntax. Every other table is a plain grid: uniform
columns, `topline`/`bottomline`/`leftline`/`rightline` cell borders that
map directly onto `tbl`'s `box`/line options. **Verdict: `tbl` handles all
38 tables with no structural rework**, confirmed empirically (see Part 2 -
a representative table round-tripped through `pandoc -t ms` came out as
clean `.TS`/`.TE` markup with `T{...T}` cell blocks, ready to feed
`groff -t`).

### Graphics (9 `Graphics` insets) - the same 7 SVGs, all simple line art

All 9 insets reference exactly the 7 SVG files already in `sdcc/doc/`
(`z80-stack-cleanup.svg` is used twice); no other images exist in the
document. Inspected all 7 directly:

| file | size (mm) | shape primitives used |
|---|---|---|
| `MCS51_named.svg` | 103x47 | 7 `rect`, 18 `text` |
| `tlcs90-named-address-spaces.svg` | small | 2 `rect`, 5 `text` |
| `rabbit-memory.svg` | - | 16 `path`, 2 `rect`, 17 `text` |
| `z80-arguments.svg` | - | 28 `path`, 14 `text` |
| `z80-stack-cleanup.svg` | - | 11 `path`, 4 `rect`, 2 `ellipse`, 15 `text` |
| `r3ka-arguments.svg` | - | 34 `path`, 16 `text` |
| `sm83-arguments.svg` | - | 34 `path`, 18 `text` |
| `stm8-arguments.svg` | - | 25 `path`, 12 `text` |

No gradients, filters, embedded raster images, or photographic content in
any of them - all 7 are Inkscape-authored (`inkscape:version` in the XML)
box/line/text technical diagrams. The `path` elements are Inkscape's
arrowhead markers (small transformed triangles) plus straight connector
lines between labeled boxes - i.e. classic "stack frame argument layout"
and "memory map" diagrams. **These are realistically redrawable in `pic`**
(boxes, lines/arrows, text are `pic`'s core primitives) - none of the 7
need to stay raster/vector-embedded for technical reasons. That said,
groff does support embedding existing images directly (`.PSPIC`/`grohtml`
image handling, or converting the SVGs to EPS/PDF for inclusion) as a
fallback if redrawing turns out to be more effort than it's worth for any
individual diagram - noted as an option, not required.

### `CommandInset` (139 total) - full breakdown

```
 67  LatexCommand ref            - internal cross-references ("see Section X.Y")
 54  LatexCommand label          - the targets those refs point to
  9  LatexCommand href           - external hyperlinks (all to https:// URLs,
                                    e.g. WG14 C standard papers on open-std.org)
  4  LatexCommand vpageref       - "see page N" (varioref page-number refs)
  2  LatexCommand vref           - combined "see Section X.Y on page N"
  1  LatexCommand tableofcontents - the auto-generated TOC
  1  LatexCommand printindex     - the index-generation command
  1  LatexCommand input          - \input{sdcc_version}, a build-time-generated
                                    file (Makefile does `echo $(VERSION) >
                                    sdcc_version`) holding just the version string
---
139  total (matches the raw count exactly)
```

**Internal cross-references (67 `ref` + 4 `vpageref` + 2 `vref` = 73 live
uses, resolving against 54 `label` targets)** are the one place groff has
no built-in equivalent to LaTeX's `\ref`/`\label` - but it's not a dead
end: `groff`'s **`mm` macro package has this natively**. `mm` provides
`INITR`/`SETR`/`GETPN`/`GETHN`/`GETR`/`GETST` cross-reference macros, and
ships a purpose-built two-pass wrapper, **`mmroff(1)`** (present on this
machine), which runs `groff -mm` twice - once to collect reference
targets into a `.qrf` file, once to resolve and print them - fully
automated, no external tooling needed. This is a first-class reason to
prefer `-mm` over other macro packages for this document (see Part 2).

### Code / verbatim content - pervasive, four different LyX mechanisms

This matters a lot given how much C code and shell/command-line examples
a compiler manual has. Found **four** distinct mechanisms in use, not
one:

1. **`LyX-Code` paragraph layout - 128 uses.** Dedicated verbatim/monospace
   paragraph style, typically single-line shell commands (e.g. `make
   install DESTDIR=$(HOME)/sdcc.rpm/`).
2. **`Verse` paragraph layout - 179 uses.** Repurposed (not for poetry) as
   a manual multi-line code-block substitute: body text is set in
   `\family typewriter`, line breaks are explicit `\begin_inset Newline
   newline` insets, and indentation is faked with non-breaking `\begin_inset
   space ~` insets (confirmed by direct inspection of multiple samples -
   this is LyX's pre-"Program Listing"-module way of getting a
   fill-preserving multi-line code block). This is the bulk of the
   in-document multi-line C examples.
3. **`Flex Code` inline character-style inset - 57 uses.** Inline `code`
   spans inside running prose (e.g. referencing a single identifier or
   flag inline).
4. **Raw `\family typewriter` ... `\family default` character-formatting
   switches - 355 occurrences**, used directly in running text for
   shorter inline monospace spans without going through the `Flex Code`
   inset wrapper at all.

**Verdict**: there is no syntax-highlighting today (LyX exports this as
plain monospace, unstyled beyond font family) - so a plain groff `.nf`/
`.fi` (no-fill) block, or `mm`'s `DS`/`DE` display macros (which groff's
own `groff_mm(7)` documents as the static/floating-display mechanism,
supporting a `fill`/`nofill` format argument), reproduces the *current*
fidelity exactly. No syntax-highlighting preprocessor is needed to match
today's output. (`source-highlight` is present as a library on this
machine but not as a CLI tool, and none of GNU groff's own macro packages
emit highlighted troff either - if syntax highlighting is ever wanted, it
would be new work beyond "faithfully reproduce what LyX/LaTeX produces
today," which is plain monospace text.)

### Back-of-book index - real, and the single largest labor item

968 `Index idx` insets confirmed to be a genuine, populated back-of-book
index (not boilerplate) - sample entries include CPU family names
("8031, 8032, 8051, 8052, mcs51 CPU"), license names ("GPLv2 license",
"LGPLv2.1 license", "Boost Software License 1.0 (BSL-1.0)"), and C-level
terms ("type conversion", "type promotion"). A handful of entries use
LyX `ERT` (raw LaTeX) insets internally purely to escape LaTeX-special
characters inside the index key itself (e.g. `\/` before a literal `-` in
a `--flag`-style index term, so LaTeX doesn't treat the double-dash as a
ligature) - not additional structural complexity.

groff's answer to LaTeX's `makeindex` is, again, **`mm`'s native
indexing**: `INITI` (initialize, choose page-number vs. heading-mark
location tracking), `IND` (mark one index entry, written to a side
channel), `INDP` (typeset the collected, sorted index) - and `mmroff`
handles the required two-pass build (collect entries pass, then print
pass) automatically, the same wrapper that handles cross-references.
This is a real, decades-old troff-ecosystem feature (`groff_mm(7)`
documents it in full), not something to hand-roll.

**However**: tooling existing does not mean this is low-effort. Every one
of the 968 `.IND "term"` calls has to be **physically placed** at the
right point in the converted document text - LaTeX's `\index{}` markers
sit inline in the source exactly like `mm`'s `IND` calls would, so there
is a real one-for-one re-insertion job here, and it's exactly the kind of
content that automated LaTeX/DocBook-intermediate conversion tools (see
Part 2) are likely to mishandle or drop silently. This is flagged as the
**highest-effort single item** in the whole migration (see Part 3).

### Other LyX-specific features checked and resolved

- **Formula insets (7) - fully trivial, confirmed not real math.** 4x
  `$^{\text{TM}}$` (trademark superscript, always immediately followed by
  "PIC" or similar), 1x `$^{\textrm{2}}$` (superscript "2", in
  "I\ :sup:`2`\ C"-style bus name), 2x `$\Omega$` (ohm symbol, describing
  resistor values in an oscilloscope-probing tip). groff's built-in
  special-character escapes cover all of these directly (`\[tm]`, a raised
  `\s-2...\s0` for the superscript-2, `\[*W]` for capital Omega) - no
  `eqn` preprocessor needed at all, despite `eqn` being available.
- **`ERT` (raw LaTeX) insets - 981 total, confirmed 979/981 (99.8%) are
  single-character escapes.** Extracted and counted every `ERT` block's
  content directly: 513x `\/` (discretionary-break escape, almost all
  before literal hyphens in `--long-options`), 251x `\_` (escaped
  underscore), 161x `!` (escaping the LaTeX/`\index` special meaning of
  `!` inside plain index-entry text), 45x `\#` (escaped `#`, e.g. before
  `#include` inside inline code), plus single-digit counts of `\,`, `|`,
  `{`, `}`, `\&`, and one `\ \` (escaped space). **Not one of the 981 ERT
  insets contains real embedded LaTeX logic, macros, or math** - this is
  entirely mechanical character-escaping that groff's own escape syntax
  (`\-`, `\[rs]`, etc.) replaces one-for-one.
- **Footnotes - 28 `Foot` insets**, all simple one-paragraph notes (e.g.
  "Incomplete support in the pic14 and pic16 backends."). `mm`'s `FS`/`FE`
  (footnote start/end) macros are a direct match; `pandoc`'s LaTeX->`ms`
  converter (see Part 2) already emits `.FS`/`.FE` for `\footnote{}`
  automatically.
- **Internal editorial comments - 15 `Note Note` insets**, all genuinely
  internal (LyX's non-exporting comment type, confirmed - not
  "Greyedout"/"Comment" which *do* export). These never appear in the
  built PDF/HTML/txt today and can simply be dropped (or kept as `\"`
  troff comments) rather than migrated.
- **Nested lists - 13 `\begin_deeper` blocks** (one level of indent
  nesting under `Itemize`/`Enumerate`/`Labeling`). Shallow, unremarkable -
  `mm`'s list macros (`LB`/`LE`) and `ms`'s indent macros both nest
  cleanly.
- **`Labeling` layout - 220 uses.** This is the command-line-flag
  reference-list style (`\labelwidthstring`-based description lists, e.g.
  "`--stack-auto` - description..."), i.e. the option-reference sections
  throughout the manual. Maps directly onto `mm`'s tagged-paragraph
  macros or `ms`'s `.IP` with a hanging-indent label.
- **No real color/highlight requirement.** 60 raw hits for `\color`/
  `\backgroundcolor` all turned out to be either document-default
  declarations (`\backgroundcolor none`) or `\color none` reset markers
  inside character-formatting stacks - no actual colored/highlighted body
  text anywhere.
- **No real multi-column layout.** All 38 raw hits for `columns=` are
  `<lyxtabular ... columns="N">` table-column-count attributes, not page
  layout (`\multicols`) - false positive from the initial grep.
- **5 `Marginal` insets** - short marginal notes/warning markers (e.g. a
  bold "!" in the margin next to an important callout). `ms`/`mm` don't
  have a marginal-note macro out of the box; these would become an inline
  callout (bold "Note:" paragraph) rather than a true margin annotation,
  a small, deliberate fidelity change to flag with the project owner.
- **6 `VSpace defskip` insets** - simple default vertical-spacing
  adjustments, trivially replaced by `.sp`.
- **1 `\input{sdcc_version}`** - confirms the manual already has one
  build-time-generated fragment (the version string); the groff build
  would need the equivalent (`.so version.tmac` or a `-d` string
  definition passed on the `groff` command line).

## Part 2: groff/pic/tbl feasibility and tooling, researched and spot-tested

### Macro package comparison: recommend `-mm`, not `-mom`

Compared `-ms`, `-me`, `-mm`, and `-mom` against this document's actual
feature list (tables, figures, code listings, footnotes, **internal
cross-references, and a real back-of-book index** - the two hardest
requirements found in Part 1):

| package | tables/figures | footnotes | cross-refs | back-of-book index | modern/maintained |
|---|---|---|---|---|---|
| `-ms` | via `tbl`/`.PS` | `.FS`/`.FE` | none built in | none built in | classic, stable, minimal |
| `-me` | via `tbl`/`.PS` | yes | none built in | none built in | older, less common today |
| `-mm` | via `tbl`/`.PS`, plus its own `TS`/`TE`/`TH` docs | `FS`/`FE` | **`INITR`/`SETR`/`GETPN`/`GETHN`/`GETR`/`GETST`, auto-driven by `mmroff(1)`** | **`INITI`/`IND`/`INDP`, same `mmroff(1)` two-pass driver, handles PIC images too** | mature, actively documented in `groff_mm(7)`, ships `mmroff` |
| `-mom` (mom) | yes, good typographic defaults | yes, well-documented | none built in | **none - confirmed by direct inspection of `contrib/mom/momdoc/`: no index-generation macro anywhere, only a table-of-contents facility and `refer`-based bibliography** | the most modern/actively-developed package, best default typography and PDF bookmark support |

**Recommendation: `-mm`.** It's the only package on this system whose
manual documents native, tool-assisted answers to *both* of this
document's genuinely hard structural requirements (cross-references and a
back-of-book index), with an existing driver (`mmroff`) already installed
and already understanding how to run the two `groff` passes involved.
`mom` is nicer for general typesetting but has no path to the index at
all short of hand-building the entire indexing mechanism from scratch -
not worth trading away the one feature this specific document actually
needs. This was verified by reading `man groff_mm` directly (not assumed
from memory) and grepping `contrib/mom/momdoc/*.html` (the mom manual
source, available locally at `~/Projects/groff/contrib/mom/momdoc/`) for
any index-related macro - found none beyond the phrase "index to the
quick reference guide" (mom's own manual's index, not a feature it
offers document authors).

### Is there an existing lyx2groff / docbook2groff tool? No.

Searched directly - no maintained `lyx2groff`, `docbook2groff`, or
equivalent conversion tool exists. The one closely-related tool found is
**`doclifter`** (Eric S. Raymond), which runs in the *opposite* direction
(lifts troff/man/mdoc documents up to DocBook XML) - not usable here.
LyX's own DocBook exporter has open, currently-tracked quality problems:
an LyX mailing-list thread from February 2025 (LyX 2.4.2.1, DocBook 5
export) reports embedded code/inline elements not surviving the export
cleanly - a live, unresolved rough edge, not settled tooling. Given that
and given this document's `.lyx` header already declares LyX 2.5 format,
DocBook was not pursued further as the intermediate format.

### Recommended intermediate: LyX's existing LaTeX export, then `pandoc`

`sdcc/doc/Makefile.in` already runs `lyx -e latex` today (that's the very
first step of the current PDF/HTML pipeline) - a mature, already-exercised
export path, unlike DocBook. `pandoc` (already installed, 3.1.3) reads
LaTeX and has **dedicated `ms` and `man` output writers** (no `mm`/`mom`
writer exists in pandoc). This gives a concrete, low-friction first-pass
pipeline: `lyx -e latex` (unchanged, existing step) -> `pandoc -f latex -t
ms` (new) -> hand-adapt the `ms` output to `mm` syntax where `mm`-specific
features are wanted (indexing, cross-refs) -> `groff -mm`.

**Empirically tested this end to end**, not just described. Built a small
representative LaTeX sample (chapter/section, a bordered 3-column table,
a `\footnote{}`, a `verbatim` code block, an itemized list, a `\ref{}`
cross-reference, and an `\index{}` entry) and ran the real tools:

- `pandoc -f latex -t ms` converted the table into genuine `tbl` markup
  (`.TS` / `tab(\t)` / `T{...T}` cell blocks / `.TE`), the footnote into
  `.FS`/`.FE`, the verbatim block into `.nf`/`\f[C]`/`.fi`, and the
  itemized list into `.IP \[bu]` bullets - all clean, usable-as-is
  translations of exactly the constructs found in Part 1.
- The `\ref{}` cross-reference came out as a **PDF hyperlink**
  (`.pdfhref L -D "sec:cliopts" ...`) rather than a print-style "see
  Section 1.1" - i.e. pandoc's `ms` writer solves cross-references its
  own way (clickable links via `pdf.tmac`/`gropdf`), different from `mm`'s
  `INITR`/`GETHN` print-oriented approach. Either is usable, but it's a
  real decision point (see open questions).
- **The `\index{SDCC}` entry was silently dropped entirely** - it does
  not appear anywhere in the converted `.ms` output, and `\printindex`
  produced nothing. This directly confirms the Part-1 conclusion: no
  automated conversion path is going to carry the 968 index entries
  across for free, regardless of which macro package or intermediate
  format is chosen. That re-insertion work has to happen by hand (or by a
  purpose-written script operating on the original `.lyx` source, matching
  index-marker positions against the converted text) no matter what.
- Round-tripped the generated `.ms` file through the real `groff`
  toolchain confirmed present on this machine: `groff -ms -t -Tpdf` and
  `groff -ms -t -Thtml` (`t` flag pre-processes through `tbl`) both
  produced valid output with **zero errors** (one harmless `pnmcrop`
  informational message from the HTML image pipeline, not an error).

This means the mechanical, low-risk 80% of the document (headings,
prose, tables, footnotes, plain lists, verbatim code blocks) has a real,
tested, working conversion path today. The remaining 20% - the index, the
`mm`-specific cross-reference wiring, the 7 redrawn `pic` diagrams, and
general cleanup of pandoc's LaTeX-preamble-driven quirks - is where the
real hand effort concentrates.

### Build pipeline: today vs. proposed

**Today** (`sdcc/doc/Makefile.in`):
```
sdccman.lyx --[lyx -e latex]--> sdccman.tex
sdccman.tex --[latex, twice]--> sdccman.dvi
sdccman.dvi --[latex + makeindex, if .idx exists]--> sdccman.ind
sdccman.tex/.dvi/.ind --[pdflatex or dvipdfm]--> sdccman.pdf
sdccman.tex --[latex2html]--> sdccman.html/index.html
sdccman.lyx --[lyx -e text]--> sdccman.txt
```
Dependencies: LyX, a full LaTeX distribution (`latex`, `pdflatex`,
`makeindex`, `dvipdfm`), `latex2html`.

**Proposed** (groff-based, once migration is done - i.e. hand-authored
`.mm` source replaces the `.lyx` file as the source of truth, the
`pandoc`/LaTeX intermediate step is a one-time migration aid, not part of
the ongoing build):
```
sdccman.mm (+ *.pic diagrams, included via .PS/.PE or pic(1) -mm)
  --[groff -mm -t -Tpdf, i.e. mmroff for the 2-pass index/xref build]--> sdccman.pdf
  --[groff -mm -t -Thtml]--> sdccman.html/
  --[groff -mm -t -Tascii, or -Tutf8]--> sdccman.txt
```
Dependencies: `groff` alone (already includes `pic`, `tbl`, `eqn`,
`mmroff`, `grohtml`, `gropdf`) - no LaTeX, no LyX, no `latex2html`. This
is the direct realization of "simpler, faster, present on most distros."
Build speed difference was not benchmarked this session (no `.mm` source
exists yet to time), but is expected to be dramatic given `groff` is a
single-pass-per-format C program versus LaTeX's iterative multi-pass
`.aux`/`.toc`/`.idx` resolution plus a separate Perl-based `latex2html`
run for the HTML target.

## Part 3: migration strategy and effort/risk assessment

### Strategy options

1. **One-shot full hand rewrite.** Write `sdccman.mm` from scratch,
   section by section, referring to the `.lyx`/rendered PDF as source
   material. Highest fidelity, highest total effort, no tooling risk.
2. **Scripted first-pass via `lyx -e latex` + `pandoc -f latex -t ms`,
   then manual cleanup and `-mm` adaptation.** Recommended. The empirical
   test in Part 2 shows this mechanically handles the bulk of the
   document (headings, prose, tables, footnotes, verbatim blocks, plain
   lists) with real, inspectable output - cutting the hand-authoring
   surface down to: re-inserting all 968 index entries, wiring up `mm`'s
   cross-reference macros in place of pandoc's PDF-hyperlink style
   (or deliberately keeping the hyperlink style and accepting `mm`'s
   native indexing without also adopting its cross-ref macros - an open
   question below), redrawing the 7 `pic` diagrams, and a general editing
   pass to fix anything pandoc's LaTeX reader mis-parses from LyX's
   generated `.tex` (not yet characterized against the *real* 84K-line
   document - only against a small hand-built representative sample).
3. **Incremental, chapter-by-chapter, both formats buildable during a
   transition.** Judged **not practical** as a sustained state: LyX
   sources and hand-authored `.mm` sources would immediately diverge
   (edits to one wouldn't propagate to the other), and there is no
   partial-file mechanism where some chapters live in `.lyx` and others
   in `.mm` and still produce one coherent PDF+HTML+txt build without
   real plumbing work of its own. More realistic middle ground: do the
   *migration* work incrementally (chapter-by-chapter conversion, checked
   into a scratch/WIP location) while `.lyx` stays the sole
   build-of-record until the whole document is done and verified - i.e.
   incremental *authoring*, atomic *cutover*.

**Recommendation: option 2 (scripted first pass + manual cleanup),
atomic cutover once complete** (option 3's "both buildable" middle
ground during authoring, not as a long-lived dual-build state).

### Honest effort/risk assessment, by item

| item | risk/effort | why |
|---|---|---|
| Headings, prose, plain lists, `Labeling` option-reference sections | **Low** | Direct structural mapping, confirmed by the pandoc test; `mm`'s tagged-paragraph/list macros are a close match |
| 38 tables | **Low** | All simple grids bar one; `tbl` output confirmed clean in the empirical test; only the one `14x7` spanning table needs any hand attention |
| 28 footnotes | **Low** | `.FS`/`.FE` is a direct, confirmed-working match |
| 979/981 trivial `ERT` escapes | **Low, but high volume** | Entirely mechanical substitution (`\/`, `\_`, `!`, `\#` -> groff escapes), a scriptable find/replace once the surrounding text is in groff form, but touches ~980 spots |
| Code/verbatim content (128 `LyX-Code` + 179 `Verse` + 57 `Flex Code` + 355 inline-typewriter spans) | **Medium** | No fidelity loss (plain monospace both before and after), but high volume and split across four different LyX source mechanisms that all need recognizing and normalizing into one consistent groff convention (`DS`/`DE` for blocks, a font-change macro for inline spans) |
| Internal cross-references (73 live `ref`/`vref`/`vpageref` against 54 `label`s) | **Medium** | Tooling exists (`mm`'s `INITR`/`mmroff`) and is confirmed real, but every one of the 73 use sites needs its target re-linked by hand/script, and a project-level decision on print-style ("see Section X.Y") vs. pandoc-style PDF-hyperlink cross-refs is needed first |
| 9 external hyperlinks | **Low** | 9 total, trivial `\c`-style URL macros in any package |
| 7 `pic`-redrawn SVG diagrams | **High** | Confirmed simple (box/line/arrow/text, no gradients/photos) so *technically* low-complexity per diagram, but redrawing 7 diagrams by hand in `pic`'s DSL, checking visual fidelity against the originals, is inherently manual, one-at-a-time work - no shortcut found. (Fallback: keep them as embedded images via `.PSPIC`/EPS conversion instead of redrawing, trading fidelity-to-the-"redraw-everything-in-pic" vision for near-zero effort on this item - a real option, see open questions.) |
| 968-entry back-of-book index | **Highest** | Tooling exists and is real (`mm`'s `IND`/`INDP`/`mmroff`), but pandoc's LaTeX->`ms` path was directly shown to drop index markers entirely - there is no found automated path from the `.lyx` source's 968 `Index idx` insets to 968 correctly-placed `.IND` calls. Realistic options are (a) a purpose-written script that walks the *raw* `.lyx` source (not the LaTeX/pandoc intermediate) matching each `Index idx` inset to its surrounding paragraph text and emitting a `.IND` call at the equivalent point in the hand-converted groff text, which is buildable but is itself a real piece of one-off tooling to write and trust, or (b) fully manual re-entry. Either way this is the single largest labor item in the whole migration. |
| 5 `Marginal` notes | **Low, with a fidelity change** | No direct `mm`/`ms` equivalent; becomes an inline bold-note callout instead of a true margin annotation - small, deliberate visual difference to flag, not a blocker |
| Overall structural/pandoc-quirk cleanup | **Unknown, needs a real test** | The Part-2 pandoc test used a small hand-built representative sample, not the actual 84K-line `sdccman.tex` that `lyx -e latex` would produce - running the real export through the real pandoc pipeline (which needs a working LyX+LaTeX install, not present on this machine right now) is a necessary next step before effort here can be sized honestly |

**Bottom line**: this is a real, multi-week-scale documentation project
if done properly (in the same spirit as the honest scope recalibration in
`intel-mnemonic-migration-plan.md` for the i8085 mnemonic work), not a
weekend script run. The mechanical bulk of the document converts cleanly
and cheaply; the diagrams and the index are where genuine, non-shortcuttable
manual labor lives, and both were independently flagged as the likely hot
spots before this investigation started and are confirmed as such now
with direct evidence.

## Open questions / decisions for the project owner

1. **Is the ~139-page, 968-index-entry, 7-diagram manual worth this
   effort now, or is this a "someday" project?** Nothing in Part 1/2
   found a reason this couldn't be done well - the question is purely
   whether it's worth scheduling given the size of the index/diagram
   work specifically.
2. **`mm` vs. `mom` vs. a hybrid** - this proposal recommends `-mm` purely
   because it's the only package with native indexing, which this
   document genuinely needs. If the index were ever dropped or
   handled some other way, `mom`'s nicer default typography and more
   modern PDF output might become the better default. Worth deciding
   explicitly rather than defaulting silently.
3. **Cross-reference style**: print-oriented "see Section X.Y" (via
   `mm`'s `INITR`/`GETHN`, matching the current LaTeX `\ref` output's
   *print* fidelity) vs. PDF-hyperlink style (matching what pandoc's `ms`
   writer produces automatically, better for the HTML/PDF-on-screen
   reading experience but a change in what the *printed*/text output
   looks like, since a plain-text build has nothing to hyperlink).
   Given the manual ships as PDF+HTML+txt today, this affects all three
   output targets differently.
4. **Diagram fidelity bar**: redraw all 7 SVGs faithfully in `pic` (the
   "as advertised" version of this migration), or accept embedding the
   existing SVGs (converted to EPS/PDF) for some/all of them as a
   pragmatic shortcut, at the cost of not being "pure groff diagrams"
   throughout?
5. **Index migration method**: commission a one-off script that mines the
   968 `Index idx` insets' positions out of the raw `.lyx` source and
   emits matching `.IND` calls against the hand-converted groff text
   (real but nontrivial tooling work, one-time cost), or accept manual
   re-entry of all 968 entries during the conversion pass (spread across
   the same effort as converting the surrounding prose, but a large,
   easy-to-get-wrong-by-omission checklist)?
6. **A real pandoc test against the actual document** hasn't happened yet
   - this proposal's pandoc findings are from a small representative
   sample, not the real `sdccman.tex`. Producing that real `.tex` needs a
   working LyX+LaTeX install (not present on this machine), which is
   itself worth doing once before committing to the option-2 strategy
   above, to see how pandoc's LaTeX reader handles the *actual* 84K lines
   (particularly LyX's own boilerplate LaTeX preamble, seen at the top of
   `sdccman.lyx`, which includes custom `\newcommand`s for underlining -
   pandoc's reaction to that hasn't been tested).
7. **HTML output fidelity** - the current build uses `latex2html` with
   specific flags (`-split 5 -show_section_numbers -local_icons`,
   producing a multi-page HTML tree). `grohtml`'s output shape/style
   hasn't been compared against that in any depth this session (only
   confirmed it runs without error) - worth a side-by-side look before
   committing.
