# Upstream bug tracker: what's actually ours to worry about

**Status:** every candidate bucket fully read (2026-09-30) - `other` (133),
`Front-end` (45), and infra (35), 213 full bodies read and classified. Every
one of the 466 open tickets has now been either excluded by title/category
or read in full at least once. Sizing exercise feeding a work plan, not a
fix list yet - only 20 tickets (of 466) remain genuinely unresolved.

## 1. Why

SDCC's own tracker (SourceForge, `sourceforge.net/p/sdcc/bugs`) has 466 open
tickets as of this pass. This fork didn't file any of them and doesn't owe
the tracker a triage pass on the maintainers' behalf - but it forked from a
point in upstream's history and still shares real code with it (the C
frontend, the optimizer, whatever's left of the shared toolchain), so some
open tickets describe bugs that are sitting in this tree right now, filed
against someone else's port.

**Policy (Neil, 2026-09-30):** only chase what affects us. There will never
be an upstream ticket *about* i8085/i8080 - they're this fork's own
addition, upstream doesn't know they exist. The question is which of the
466 are in code we still share, not how many bugs SDCC has in total. The
rest is the main project's problem to work through, not ours.

## 2. Method

`tools/audit-upstream-bugs.py` pulls every open ticket in one call via
SourceForge's Allura REST API (`.../rest/p/sdcc/bugs/search?q=status:open`,
no auth needed) and splits them by whether the ticket names a backend we
don't build. Two signals, both title-only:

- the ticket's own `_category` custom field, when it names one specific
  port (PIC14/16, MCS51, STM8, Z80, DS390, PDK, GBZ80, HC08, MOS6502,
  Rabbit, f8)
- the summary text itself, checked against a list of sub-target names -
  needed because `_category` is filled in by hand and isn't reliable alone
  (spot-checking found genuine front-end bugs, e.g. #4093 "Overflow in an
  integer constant expression is accepted without a diagnostic", filed
  under `other` rather than `Front-end`)

Everything left over is the candidate set: `Front-end` (unambiguous),
`Build`/`Preprocessor`/`Simulator`/`redundancy elimination`/`Documentation`/
`Tools` (shared infra, plausibly relevant), and `other` - upstream's own
catch-all, and by far the largest bucket.

`sdas`/`sdld` (SDCC's bundled assembler/linker) get their own bucket,
separate from both: **i8085/i8080 don't use either** - `main.c` targets
vendor ASxxxx's `as8085`/`aslink` directly - so bugs filed there are
plausibly moot for us specifically, whatever they mean for ports still on
the bundled toolchain.

**Title-only classification has a real, measured blind spot.** Reading all
213 candidate bodies in full (§4/§4a/§4b) found 11 that are genuinely
backend-specific once read - and of those, 10 had *zero* backend name
anywhere in the title (the 11th, #4075, at least named a real 6502-variant
sub-target once read - still missed by the keyword list before this pass).
No amount of growing the keyword list fully fixes this class of miss; the
port sometimes only shows up in a stack trace, a command line, or a "tested
on" line inside the body. Treat this script's own title-only CANDIDATE count
as an upper bound, not a measurement - the definitive numbers below come
from reading, not from the script.

## 3. Results (2026-09-30, 466 open tickets, all now resolved by reading)

| Bucket | Count | % | Disposition |
|---|---:|---:|---|
| Backend-specific (title/category match, excluded automatically) | 250 | 54% | **Excluded** - someone else's port |
| Backend-specific (found only by reading the body) | 11 | 2% | **Excluded** - see §4/§4b, title-only missed these |
| Legacy `sdas`/`sdld` toolchain (separate `_category`, never body-read) | 3 | 1% | **Not applicable** - we don't run either |
| Upstream build/CI/documentation/tool infra, or scoped to a tool we don't run (found by reading) | 57 | 12% | **Not applicable** - see §4/§4b |
| **CORE - genuinely shared code** | **125** | **27%** | **Confirmed relevant** - see §4/§4a/§4b tables |
| NEEDS-VERIFICATION | 20 | 4% | One small specific check each - see §6 |
| **Total** | **466** | **100%** | |

**Definitive, tracker-wide: 125 of 466 open tickets (27%) are confirmed to be
in code this fork shares with upstream.** 261 (56%) are excluded as someone
else's backend, 60 (13%) are not applicable for other reasons (upstream's
own build/CI/documentation infrastructure, or tools this fork doesn't run),
and 20 (4%) remain genuinely unresolved, each needing one specific check
(§6) rather than more reading. This is lower than the first title-only
pass's "roughly half" estimate and lower still than the "~114" estimate
after `other` alone was read - `Front-end` turned out to be exactly as
reliable as its name suggested (45/45 CORE), but the infra buckets pulled
the total back down (19 of 35 there are upstream's own build/CI noise, not
shared runtime code).

## 4. `other` (133/133 read in full, 2026-09-30)

Every ticket's actual `ticket.description` (not just the title) was fetched
from the API and read. Four buckets:

- **CORE (69)** - genuinely in code this fork shares with upstream: the C
  frontend/parser/semantic analysis, the optimizer, debug-info generation,
  or infrastructure not tied to one target. The strongest signal throughout
  was cross-backend reproduction (a bug hitting stm8 *and* f8 *and* the
  z80-family - three independently-implemented backends - cannot plausibly
  be three coincidentally-identical backend bugs) or an explicit core-file
  citation in the error text (`SDCCast.c`, `SDCCsymt.c`, `SDCCopt.c`,
  `SDCCglue.c`).
- **NEEDS-VERIFICATION (16)** - genuinely ambiguous even after reading the
  full body; each needs one small, specific check (see the table) before it
  can be sorted.
- **BACKEND-SPECIFIC (10)** - scoped to a backend we don't build, revealed
  only by reading the body. **Every one of these was missed by title-only
  keyword matching** - see the methodology note in §2. `f8` has been added
  to the keyword list as the one straightforward fix available; the rest
  have no fixable keyword (the port name simply isn't in the title).
- **NOT-APPLICABLE (38)** - upstream's own build/CI/packaging/documentation
  noise (Windows/Cygwin/Haiku cross-builds, wine-hosted test runs, the HTML
  manual build, `sdcdb`/legacy `sdas`/`sdld` issues) with no bearing on a
  compiler defect in code we run.

Two things worth calling out on their own, not buried in the table:

1. **A single debug-info bug has been reported four separate times**
   (#4061, #3662, #3153, #3107) - duplicate/colliding symbol names for
   inline functions under `--debug`, across at least three different SDCC
   eras and reporter bases. Fixing the real root cause (almost certainly in
   `SDCCdebug.c`/`SDCCglue.c`'s inline-function symbol-naming, per #3662's
   own trace into `flushStatics()`) plausibly closes all four at once.
2. **Two tickets (#2646, #2442) describe the exact bug class the
   placement-audit work already found independently** (see
   `sdcc-placement-audit.md`): `__at()`-placed data silently overlapping
   adjacent code/variables instead of the linker refusing the link. These
   are upstream reports of the *same* "nothing bounds an allocation against
   the space it's going into" defect, years apart, on z80. Worth handing to
   whoever owns that audit rather than treating as a separate item.

### Full classification table

| # | Classification | Summary | Why |
|---:|---|---|---|
| [4093](https://sourceforge.net/p/sdcc/bugs/4093/) | CORE | Overflow in an integer constant expression is accepted without a diagnostic | integer constant-expr overflow undiagnosed; constraint check spans 15+ unrelated ports |
| [4077](https://sourceforge.net/p/sdcc/bugs/4077/) | CORE | No diagnostic for missing static function definition and false linkage to definition in another TU | no diagnostic for false internal/external linkage resolution; frontend symbol table |
| [4072](https://sourceforge.net/p/sdcc/bugs/4072/) | CORE | _Generic incorrectly sees an unqualified union array member as volatile | _Generic misjudges volatile on union array member; frontend type system |
| [4064](https://sourceforge.net/p/sdcc/bugs/4064/) | CORE | Incorrect code generated for assembly inline functions | inline param elimination too eager; reproduces on 2 unrelated backend families |
| [4061](https://sourceforge.net/p/sdcc/bugs/4061/) | CORE | Multiple definition error for header inline funcs in conditionals in multiple source files | duplicate inline-fn debug symbols; cluster w/ #3662/#3153/#3107, cross-family |
| [4051](https://sourceforge.net/p/sdcc/bugs/4051/) | CORE | Internal error: validateLink failed | Internal error in SDCCsymt.c (confirmed core file) |
| [4043](https://sourceforge.net/p/sdcc/bugs/4043/) | CORE | Unexpected uninitialized variable warning | spurious uninitialized-var warning; frontend dataflow warning heuristic |
| [4042](https://sourceforge.net/p/sdcc/bugs/4042/) | CORE | Weird uninitialized variable warning on local function prototype | same class: spurious warning on local fn prototype |
| [4037](https://sourceforge.net/p/sdcc/bugs/4037/) | CORE | dataseg option not respected when global variable initialised | dataseg option ignored for initialized globals; general placement logic |
| [4006](https://sourceforge.net/p/sdcc/bugs/4006/) | CORE | Loss of qualifiers from pointer target is not reported in cases of array-to-pointer decay | pointer-target qualifier loss undiagnosed on array decay; C23 frontend |
| [4005](https://sourceforge.net/p/sdcc/bugs/4005/) | CORE | Array to pointer conversion does not remove the _Optional qualifier from the element type | _Optional qualifier lost on array-to-pointer decay; frontend type system |
| [4004](https://sourceforge.net/p/sdcc/bugs/4004/) | CORE | Missing diagnostic when qualifier is discarded from pointer target on function call | missing diagnostic on qualifier discard at call; frontend |
| [4003](https://sourceforge.net/p/sdcc/bugs/4003/) | CORE | Wrong diagnostic message when adding 0 to a pointer to an _Optional type | wrong diagnostic msg, pointer+0 with _Optional; frontend |
| [4002](https://sourceforge.net/p/sdcc/bugs/4002/) | CORE | No diagnostic message when subtracting 0 from a pointer to an _Optional type | same class, pointer-0 subtraction |
| [4001](https://sourceforge.net/p/sdcc/bugs/4001/) | CORE | Diagnostics regression from next branch merge | diagnostics regression from own trunk merge; frontend |
| [4000](https://sourceforge.net/p/sdcc/bugs/4000/) | CORE | Spurious "block-scope variable'i' declared extern and intialized" | spurious extern/typeof interaction error; frontend |
| [3973](https://sourceforge.net/p/sdcc/bugs/3973/) | CORE | Wrong initialization data | wrong struct-init data; likely shared printIvalPtr, reporter suspects not mcs51-only |
| [3971](https://sourceforge.net/p/sdcc/bugs/3971/) | CORE | Crash with const string initializer with offset | crash w/ const string initializer + offset; same printIvalPtr area |
| [3962](https://sourceforge.net/p/sdcc/bugs/3962/) | CORE | Parameter is not taken as having the unqualified version of its declared type in _Generic | _Generic param-type adjustment bug; frontend |
| [3958](https://sourceforge.net/p/sdcc/bugs/3958/) | CORE | No-write implications of const on the escaping address of local pointer-to-optional are ignored | _Optional TS non-null inference bug; frontend dataflow |
| [3957](https://sourceforge.net/p/sdcc/bugs/3957/) | CORE | Indirect assignment of a non-null value through a pointer discards non-null inference | same class, indirect assignment |
| [3952](https://sourceforge.net/p/sdcc/bugs/3952/) | CORE | No diagnostic message when type constraint on assignment violated | missing diagnostic on assignment type-constraint violation; frontend |
| [3920](https://sourceforge.net/p/sdcc/bugs/3920/) | CORE | Ascon regression test issues | Ascon crypto test fails across opt8/opt32/bi8 variants; likely shared optimizer |
| [3917](https://sourceforge.net/p/sdcc/bugs/3917/) | CORE | FATAL Compiler Internal Error caused by typeof_unqual on function (pointer) type names | FATAL ICE, typeof_unqual on fn type; frontend parser |
| [3916](https://sourceforge.net/p/sdcc/bugs/3916/) | CORE | Syntax error if a function type name is the operand of typeof | syntax error, typeof on fn type; frontend parser |
| [3892](https://sourceforge.net/p/sdcc/bugs/3892/) | CORE | Dwarf inlined subroutine tag is wrong | wrong DWARF tag constant in SDCCdwarf2.h; trivially shared, one-line fix |
| [3877](https://sourceforge.net/p/sdcc/bugs/3877/) | CORE | Duplication of static objects in inline functions | static-object duplication in inline functions; general inlining semantics |
| [3868](https://sourceforge.net/p/sdcc/bugs/3868/) | CORE | pragma save and pragma restore do not affect pragma disable_warning | pragma save/restore doesn't affect disable_warning; frontend pragma handling |
| [3837](https://sourceforge.net/p/sdcc/bugs/3837/) | CORE | compound literals as constant expressions | compound literals as constant expressions; frontend const-expr evaluation |
| [3835](https://sourceforge.net/p/sdcc/bugs/3835/) | CORE | Internal error: validateOpType failed | Internal error in SDCCopt.c (confirmed core file) |
| [3811](https://sourceforge.net/p/sdcc/bugs/3811/) | CORE | Divide by 2 then see EVELYN the modified DOG | 'EVELYN the modified DOG' warning; shared conditional-flow optimizer infra |
| [3803](https://sourceforge.net/p/sdcc/bugs/3803/) | CORE | segfault on pointer to struct | segfault on pointer-to-struct; reproduces on 3 independent backends (stm8,f8,z80-fam) |
| [3701](https://sourceforge.net/p/sdcc/bugs/3701/) | CORE | multiple identical externs in function fail to compile | multiple identical externs fail to compile; cross-family (z80-fam+mos6502-fam) |
| [3674](https://sourceforge.net/p/sdcc/bugs/3674/) | CORE | Explicit cast ignored when va args argument is a function return value | explicit cast ignored for varargs return-value arg; cross-family, frontend varargs |
| [3662](https://sourceforge.net/p/sdcc/bugs/3662/) | CORE | Adding a function removes const arrays above it from .adb/.cdb output | flushStatics()/debug-output ordering bug; cluster w/ #4061/#3153/#3107 |
| [3645](https://sourceforge.net/p/sdcc/bugs/3645/) | CORE | SDCC Crash during compile with incorrect type assignment in struct | SIGSEGV + FATAL error both cite SDCCast.c:1637 (confirmed core file) |
| [3630](https://sourceforge.net/p/sdcc/bugs/3630/) | CORE | UB in the compiler | UB findings include SDCCval.c + SDCCralloc.hpp (shared w/ i8085's ralloc2.cc) |
| [3495](https://sourceforge.net/p/sdcc/bugs/3495/) | CORE | "error 0: Duplicate symbol" for no obvious reason | duplicate-symbol false positive in nested block scope; frontend symbol table |
| [3489](https://sourceforge.net/p/sdcc/bugs/3489/) | CORE | Optional file type override -x stopped working | -x file-type-override option regression; general driver option handling |
| [3470](https://sourceforge.net/p/sdcc/bugs/3470/) | CORE | Compiler crash | csmith-fuzzed crash reproduces on 2 independent backends (stm8+z80-fam) |
| [3409](https://sourceforge.net/p/sdcc/bugs/3409/) | CORE | peep hole optimizer removes used labels | peephole optimizer removes used labels; shared label-liveness tracking |
| [3408](https://sourceforge.net/p/sdcc/bugs/3408/) | CORE | Missing line number when initialization needs curly braces | missing line number in initializer-braces diagnostic; frontend |
| [3393](https://sourceforge.net/p/sdcc/bugs/3393/) | CORE | union-in-struct initalization issue | union-in-struct init fails; cross-family (pdk+mcs51) |
| [3370](https://sourceforge.net/p/sdcc/bugs/3370/) | CORE | crash on array declaration with extra braces after function definition | crash/ICE citing SDCCsymt.c:3819; manifests differently per port = shared root cause |
| [3351](https://sourceforge.net/p/sdcc/bugs/3351/) | CORE | pagma callee_saves sensitive to spaces | pragma callee_saves whitespace-sensitive parsing; frontend pragma tokenizer |
| [3293](https://sourceforge.net/p/sdcc/bugs/3293/) | CORE | Bug in .rst file | .rst debug-listing missing signed-var info; shared listing-generation code |
| [3162](https://sourceforge.net/p/sdcc/bugs/3162/) | CORE | Missing loop optimization and missing debug informations | loop-reversal optimizer limitation; generic SDCCloop.c heuristic |
| [3153](https://sourceforge.net/p/sdcc/bugs/3153/) | CORE | --debug produces same lable names for inline functions | duplicate inline-fn debug labels; cluster w/ #4061/#3662/#3107, broad multi-port |
| [3108](https://sourceforge.net/p/sdcc/bugs/3108/) | CORE | warning: missing terminating ' character in asm | false-positive 'unterminated quote' warning on asm apostrophe; shared inline-asm text scan |
| [3107](https://sourceforge.net/p/sdcc/bugs/3107/) | CORE | --debug switch generate duplicate labels for the lines of code that contain equal text | duplicate debug labels for identical-text lines; same cluster as #4061/#3662/#3153 |
| [3021](https://sourceforge.net/p/sdcc/bugs/3021/) | CORE | SIGSEGV on passing certain types to vari | SIGSEGV parsing K&R decl + ternary + call; no port mentioned, frontend crash |
| [3016](https://sourceforge.net/p/sdcc/bugs/3016/) | CORE | Internal error when compiling array with function call in array declaration | Internal error citing SDCCast.c:1858 (confirmed core file) |
| [3015](https://sourceforge.net/p/sdcc/bugs/3015/) | CORE | Extremely long compile times for big arrays | extreme compile time for large array init; shared initializer processing |
| [3005](https://sourceforge.net/p/sdcc/bugs/3005/) | CORE | initialization for static local variables is generated in wrong section | duplicate .area _HOME emission + static-init placement bug; shared SDCCglue.c |
| [2948](https://sourceforge.net/p/sdcc/bugs/2948/) | CORE | struct in union initialization: gcc-torture-execute-pr87053.c fails | struct-in-union init bug; explicitly 'fails for all targets' |
| [2860](https://sourceforge.net/p/sdcc/bugs/2860/) | CORE | segfault on missing parameter type in function prototype (and on old-style functions) | segfault on missing-param-type/K&R prototype; frontend parser crash, no port mentioned |
| [2810](https://sourceforge.net/p/sdcc/bugs/2810/) | CORE | Using designated initalizers with anonymous union | designated initializers + anonymous union incorrectly rejected; frontend |
| [2734](https://sourceforge.net/p/sdcc/bugs/2734/) | CORE | Missing warning on right shift by more than width of type | missing warning on excessive right-shift; frontend constant-folding/warnings |
| [2723](https://sourceforge.net/p/sdcc/bugs/2723/) | CORE | Issue with Motorola S-Record file | Motorola S-record output format bug; shared output-writer code |
| [2700](https://sourceforge.net/p/sdcc/bugs/2700/) | CORE | Debug info for local variables that live in multiple iTemps | debug-info gaps for vars split across multiple iTemps; shared IR/debug interaction |
| [2686](https://sourceforge.net/p/sdcc/bugs/2686/) | CORE | SDCC uses far too much, but finite memory | excessive (8GB+) but finite memory use; explicitly 'no matter which target' |
| [2671](https://sourceforge.net/p/sdcc/bugs/2671/) | CORE | wrong command line parsing of preprocessor options | wrong -MMD/-Wp-MMD dependency-file option parsing; generic driver option handling |
| [2646](https://sourceforge.net/p/sdcc/bugs/2646/) | CORE | __at can't place some data at a specific location amidst some code | __at()-placed data silently overlaps surrounding code instead of erroring - SAME CLASS as Claudette's placement audit |
| [2641](https://sourceforge.net/p/sdcc/bugs/2641/) | CORE | Incompatible pointer types, even though one is void * | confusing pointer-incompatibility diagnostic + type-printing bug; cross-family (stm8+z80-fam+hc08, 3 independent backends) |
| [2555](https://sourceforge.net/p/sdcc/bugs/2555/) | CORE | SDCC uses far too much memory | excessive (16GB+) memory use; reproduces on 2 independent backends (mcs51+stm8) |
| [2536](https://sourceforge.net/p/sdcc/bugs/2536/) | CORE | hexdouble issue | 'hexdouble' unknown-size-allocation error from P99 snippet; frontend type-system edge case |
| [2519](https://sourceforge.net/p/sdcc/bugs/2519/) | CORE | SDCC optimizes away statement even tough it shouldn't when mixing C with inline assembly | optimizer eliminates a 'dead' store that's actually read via inline asm; shared DCE gap |
| [2442](https://sourceforge.net/p/sdcc/bugs/2442/) | CORE | Overlapping variables | __at()-placed var overlaps auto-placed var undetected - SAME CLASS as #2646/Claudette's audit |
| [2229](https://sourceforge.net/p/sdcc/bugs/2229/) | CORE | Wrong cdb file format? | wrong .cdb debug-database format; shared cdb-writer code |
| [4063](https://sourceforge.net/p/sdcc/bugs/4063/) | NEEDS-VERIFICATION | New test tests/bug-3393-designated.c | reporter themselves suspects the *test* is wrong, not the compiler |
| [3977](https://sourceforge.net/p/sdcc/bugs/3977/) | NEEDS-VERIFICATION | strtoull.c is needlessly shouting | noisy #warning in strtoull.c; cosmetic, applicability to our device/lib unclear |
| [3895](https://sourceforge.net/p/sdcc/bugs/3895/) | NEEDS-VERIFICATION | Crash when creating a variable | crash creating variable under mcs51 --opt-code-size; frontend vs backend unclear |
| [3862](https://sourceforge.net/p/sdcc/bugs/3862/) | NEEDS-VERIFICATION | inlining function with struct cast fails to compile | inline fn + struct cast fails on z80; inliner(shared) vs z80 gen.c unclear |
| [3857](https://sourceforge.net/p/sdcc/bugs/3857/) | NEEDS-VERIFICATION | Ternary operator in struct assignment using a function call fails | ternary in struct assignment wrong value on z80; IR vs gen.c unclear |
| [3849](https://sourceforge.net/p/sdcc/bugs/3849/) | NEEDS-VERIFICATION | Reading the bytes of one type as another causes a compiler segfault | struct-bitcast segfault; sm83-only reproduction, single port |
| [3527](https://sourceforge.net/p/sdcc/bugs/3527/) | NEEDS-VERIFICATION | >> ASxx shift bug | 24-bit signed-shift truncation in 'sdas' constant evaluator - check if vendor ASxxxx's asexpr.c shares this (common ancestry) |
| [3510](https://sourceforge.net/p/sdcc/bugs/3510/) | NEEDS-VERIFICATION | Stdlib _modulong() loops endlessly with divisor of zero | infinite loop in generic-C _modulong.c fallback on div-by-zero - confirm i8085 doesn't use this fallback |
| [3490](https://sourceforge.net/p/sdcc/bugs/3490/) | NEEDS-VERIFICATION | #line in assembler with peep-asm | #line + --peep-asm not recognized by assembler; shared peep-asm output vs sdasz80 parsing unclear |
| [3285](https://sourceforge.net/p/sdcc/bugs/3285/) | NEEDS-VERIFICATION | Suspected quadratic performance hog when compiling inline functions | possible quadratic inliner performance issue; reported on mcs51 only but inliner is shared |
| [3136](https://sourceforge.net/p/sdcc/bugs/3136/) | NEEDS-VERIFICATION | _GSINIT not at right place in crt0.s | crt0.s _GSINIT/gsinit:: ordering mistake - cheap to sanity-check our own crt0.s |
| [3077](https://sourceforge.net/p/sdcc/bugs/3077/) | NEEDS-VERIFICATION | _ultoa, etc. | namespace/portability nits for _itoa/_ultoa family; applicability to our device/lib unclear |
| [2987](https://sourceforge.net/p/sdcc/bugs/2987/) | NEEDS-VERIFICATION | gcc-torture-execute-strlen-4.c fails | test failure of uncertain status per reporter's own admission |
| [2741](https://sourceforge.net/p/sdcc/bugs/2741/) | NEEDS-VERIFICATION | Assembler can't handle debug info for large surce files: <r> relocation error | assembler relocation-error w/ debug info for large sources; toolchain scope ambiguous |
| [2701](https://sourceforge.net/p/sdcc/bugs/2701/) | NEEDS-VERIFICATION | dwarf debugging: local variables has wrong scope | dwarf debug wrong var scope; confirm i8085 supports DWARF/ELF output at all |
| [2527](https://sourceforge.net/p/sdcc/bugs/2527/) | NEEDS-VERIFICATION | Compiler stability under Windows 10 | vague nondeterministic-output report under Windows 10; no reproducer |
| [3912](https://sourceforge.net/p/sdcc/bugs/3912/) | BACKEND-SPECIFIC | smallserpent test fails for f8 | f8 port test failure specifically |
| [3909](https://sourceforge.net/p/sdcc/bugs/3909/) | BACKEND-SPECIFIC | HOME segment silently moved, producing unbootable image | mcs51/ds390 atomic-fn HOME-segment placement conflict (hw-specific) |
| [3624](https://sourceforge.net/p/sdcc/bugs/3624/) | BACKEND-SPECIFIC | Regression on play_music | mcs51 code-size regression for one console test |
| [3573](https://sourceforge.net/p/sdcc/bugs/3573/) | BACKEND-SPECIFIC | Need to declare a 32-bit variable in the first file | stm8 hardware-specific display bug (W1209 board) |
| [3435](https://sourceforge.net/p/sdcc/bugs/3435/) | BACKEND-SPECIFIC | bug - inconsistent implementation of __data and __idata qualifiers | mcs51 __data/__idata qualifier bug; explicitly names src/mcs51/gen.c |
| [3329](https://sourceforge.net/p/sdcc/bugs/3329/) | BACKEND-SPECIFIC | --callee-saves-bc broken since at least 4.1.0 | sm83/z80/gbz80 --callee-saves-bc calling-convention option |
| [3205](https://sourceforge.net/p/sdcc/bugs/3205/) | BACKEND-SPECIFIC | crash on 2048 subsequent assignments of 0 to pointer | gbz80 + FreeBSD-ARM-host-specific crash |
| [3163](https://sourceforge.net/p/sdcc/bugs/3163/) | BACKEND-SPECIFIC | Variable in different places with --debug and all optimizations disabled | gbz80/sdldgb-specific debug-info-location test setup |
| [2691](https://sourceforge.net/p/sdcc/bugs/2691/) | BACKEND-SPECIFIC | Csmith (fuzzing tool) exposes errors | csmith ICE citing 'gen.c...need pointerCode'; mcs51-flavored terminology |
| [2605](https://sourceforge.net/p/sdcc/bugs/2605/) | BACKEND-SPECIFIC | SDCC_PARMS_IN_BANK1 non-compliant | mcs51-only SDCC_PARMS_IN_BANK1 macro/option |
| [4050](https://sourceforge.net/p/sdcc/bugs/4050/) | NOT-APPLICABLE | SDASxxx assembler crashes! maybe? | SDASZ80 (legacy bundled asm) crash - we use vendor as8085 |
| [4048](https://sourceforge.net/p/sdcc/bugs/4048/) | NOT-APPLICABLE | Latest SDCC Source Code (sdcc-src) not being deployed to website | website source-zip deployment lag |
| [3896](https://sourceforge.net/p/sdcc/bugs/3896/) | NOT-APPLICABLE | SDCC 4.5.0: Build failure at support/cpp/gcc | build-environment LTO/exec failure |
| [3817](https://sourceforge.net/p/sdcc/bugs/3817/) | NOT-APPLICABLE | Regression test failures with 64-bit Windows build in nativecrosstools branch | Windows 64-bit cross-build regression-test infra failures |
| [3797](https://sourceforge.net/p/sdcc/bugs/3797/) | NOT-APPLICABLE | Regression test failures with 32-bit Windows build in nativecrosstools branch | Windows 32-bit cross-build regression-test infra failures |
| [3760](https://sourceforge.net/p/sdcc/bugs/3760/) | NOT-APPLICABLE | SDCDB parsing  cdb newlines | SDCDB debugger cdb-parsing bug (old mcs51-era tool, unused by us) |
| [3759](https://sourceforge.net/p/sdcc/bugs/3759/) | NOT-APPLICABLE | SDCDB hardcoded settings | SDCDB hardcoded model settings (debugger tool, unused by us) |
| [3725](https://sourceforge.net/p/sdcc/bugs/3725/) | NOT-APPLICABLE | Building sdcc with LTO fails due to ODR violations | LTO build-flag build failure; build infra |
| [3714](https://sourceforge.net/p/sdcc/bugs/3714/) | NOT-APPLICABLE | SDCC 4.4.0 on Windows: Sdar tool crashes because of missing DLLs | Windows DLL-missing crash for sdar tool; packaging |
| [3646](https://sourceforge.net/p/sdcc/bugs/3646/) | NOT-APPLICABLE | Regression test infrastructure should give an error onmissing python | regression infra: missing python not errored clearly |
| [3632](https://sourceforge.net/p/sdcc/bugs/3632/) | NOT-APPLICABLE | sdcc.exe can't compile if it's full path contains spaces. | Windows path-with-spaces invocation issue |
| [3629](https://sourceforge.net/p/sdcc/bugs/3629/) | NOT-APPLICABLE | UB in the assembler and linker | UB in legacy sdas/sdld (we use vendor ASxxxx) |
| [3625](https://sourceforge.net/p/sdcc/bugs/3625/) | NOT-APPLICABLE | wchar.c.in test fails for test-host on FreeBSD on aarch64 | upstream FreeBSD kernel/libc bug, not SDCC's |
| [3589](https://sourceforge.net/p/sdcc/bugs/3589/) | NOT-APPLICABLE | Regression testing cross-compiled win32 sdcc on GNU/Linux | win32 cross-build regression infra |
| [3588](https://sourceforge.net/p/sdcc/bugs/3588/) | NOT-APPLICABLE | Cygwin regression testing doesn't work | Cygwin regression infra |
| [3587](https://sourceforge.net/p/sdcc/bugs/3587/) | NOT-APPLICABLE | Cygwin build fails | Cygwin build failure |
| [3586](https://sourceforge.net/p/sdcc/bugs/3586/) | NOT-APPLICABLE | Regression tests gte/960405-1.c and tests/bug-2516.c fail to link for 32-Bit Windows | Windows-hosted regression link failures; infra |
| [3578](https://sourceforge.net/p/sdcc/bugs/3578/) | NOT-APPLICABLE | Support for Haiku as an host system | Haiku host-platform support request |
| [3572](https://sourceforge.net/p/sdcc/bugs/3572/) | NOT-APPLICABLE | Nodescriptive error when src/sdcc build fails | unclear build-failure error message; build UX |
| [3553](https://sourceforge.net/p/sdcc/bugs/3553/) | NOT-APPLICABLE | Running regression tests using wine | wine-hosted regression testing infra |
| [3552](https://sourceforge.net/p/sdcc/bugs/3552/) | NOT-APPLICABLE | SIGABRT crash on a regression test on OpenBSD 6.6 on PowerPC | stm8-large test, OpenBSD/PowerPC host-specific crash |
| [3546](https://sourceforge.net/p/sdcc/bugs/3546/) | NOT-APPLICABLE | No listing for certain typos | sdasz80-specific listing bug (legacy toolchain) |
| [3519](https://sourceforge.net/p/sdcc/bugs/3519/) | NOT-APPLICABLE | test-host failures in snapshot only | aarch64 snapshot-build-only test infra flakiness |
| [3499](https://sourceforge.net/p/sdcc/bugs/3499/) | NOT-APPLICABLE | Code is overwritten by initialized const variable at absolute location | stm8 + legacy sdld placement overlap |
| [3491](https://sourceforge.net/p/sdcc/bugs/3491/) | NOT-APPLICABLE | Fresh build with --disable-sdbinutils will fail. | --disable-sdbinutils build-flag not honored; build infra |
| [3479](https://sourceforge.net/p/sdcc/bugs/3479/) | NOT-APPLICABLE | support/scripts/keil2sdcc.pl outdated | outdated Keil-conversion helper script |
| [3475](https://sourceforge.net/p/sdcc/bugs/3475/) | NOT-APPLICABLE | Debugging sdcc got harder since cpp branch merge | bin/sdcc wrapper script complicates gdb debugging; tooling workflow nit |
| [3472](https://sourceforge.net/p/sdcc/bugs/3472/) | NOT-APPLICABLE | HTML manual build fails | HTML manual LaTeX build failure |
| [3415](https://sourceforge.net/p/sdcc/bugs/3415/) | NOT-APPLICABLE | Interrupts, Section 3.8 | documentation issue, mostly 8051-specific manual section |
| [3384](https://sourceforge.net/p/sdcc/bugs/3384/) | NOT-APPLICABLE | Regression tests failing, but green dots on snapshots page | CI/snapshot-page reporting mismatch (infra) |
| [3366](https://sourceforge.net/p/sdcc/bugs/3366/) | NOT-APPLICABLE | Regression testing of windows binaries false positives: graphics | wine-hosted graphics-driver false-positive test failures |
| [3347](https://sourceforge.net/p/sdcc/bugs/3347/) | NOT-APPLICABLE | Building SDCC generates an awful lot of warnings | build-warning cleanliness cosmetic complaint |
| [3337](https://sourceforge.net/p/sdcc/bugs/3337/) | NOT-APPLICABLE | sdcdb crashes upon setting bp | SDCDB debugger crash; old tool, unused by us |
| [3219](https://sourceforge.net/p/sdcc/bugs/3219/) | NOT-APPLICABLE | Peephole distance issue results in invalid asm (relative jump out of range) | peephole jump-range issue in shared engine - but PROVEN unreachable for i8085 (port->peep.getSize is NULL, our own 2026-09-17 finding) |
| [2870](https://sourceforge.net/p/sdcc/bugs/2870/) | NOT-APPLICABLE | sdas uses the wrong file name for errors in some cases | sdasz80-specific wrong-filename-in-errors (legacy toolchain) |
| [2824](https://sourceforge.net/p/sdcc/bugs/2824/) | NOT-APPLICABLE | a regression test might be failing | regression-test failure-reporting clarity nit (infra/process) |
| [2726](https://sourceforge.net/p/sdcc/bugs/2726/) | NOT-APPLICABLE | regression test bug1981238.c warns about a lurking bug | testing-practice suggestion (use -Werror); not itself a described defect |
| [2677](https://sourceforge.net/p/sdcc/bugs/2677/) | NOT-APPLICABLE | SDCC configure | annoying third-party gputils build-time warning; build UX |

## 4a. `Front-end` (45/45 read in full, 2026-09-30)

Confirms the category tag: **45 of 45 are genuinely CORE.** Unlike `other`,
`Front-end` turned out to be a reliably-applied category - every ticket is a
real parser/semantic-analysis/diagnostics bug in shared frontend code, mostly
C23/`_Optional`/constraint-violation conformance gaps (missing or wrong
diagnostics, not wrong codegen), plus a handful of real crashes (#3481, #2639)
and one shared-glue-code bug (#2354, `SDCCglue.c` linkage-attribute emission).

| # | Classification | Summary | Why |
|---:|---|---|---|
| [4094](https://sourceforge.net/p/sdcc/bugs/4094/) | CORE | Structure with a flexible array member is accepted as an array element type | frontend type/decl check; array of flexible-array-member struct undiagnosed; reproduces on 18 unrelated ports |
| [4090](https://sourceforge.net/p/sdcc/bugs/4090/) | CORE | sizeof applied to a function is accepted without a diagnostic | sizeof on function type undiagnosed; frontend constraint check; cross-port |
| [4089](https://sourceforge.net/p/sdcc/bugs/4089/) | CORE | Undiagnosed constraint violation on cast from struct to scalar type | undiagnosed struct-to-scalar cast; frontend constraint check; cross-port |
| [4088](https://sourceforge.net/p/sdcc/bugs/4088/) | CORE | Internal error instead of constraint violation reported when pointer cast to float | ICE instead of diagnostic on pointer-to-float cast; frontend |
| [4087](https://sourceforge.net/p/sdcc/bugs/4087/) | CORE | Undiagnosed constraint violation when _Alignof applied to an incomplete type | _Alignof on incomplete type undiagnosed; frontend |
| [4086](https://sourceforge.net/p/sdcc/bugs/4086/) | CORE | Undiagnosed constraint violation when [] used on an incomplete type | [] on incomplete-type pointer undiagnosed; frontend |
| [4085](https://sourceforge.net/p/sdcc/bugs/4085/) | CORE | Undiagnosed constraint violations on arithmetic operations | pointer arithmetic constraint violations undiagnosed; frontend |
| [4084](https://sourceforge.net/p/sdcc/bugs/4084/) | CORE | No diagnostic when the first operand of ?: has struct type | ?: first operand struct type undiagnosed; frontend |
| [4083](https://sourceforge.net/p/sdcc/bugs/4083/) | CORE | Non-scalar type of if or loop controlling expression is not diagnosed | non-scalar if/loop condition undiagnosed; frontend |
| [4078](https://sourceforge.net/p/sdcc/bugs/4078/) | CORE | SDCC accepts storage class on return type | storage class on return type silently accepted; frontend parser |
| [4071](https://sourceforge.net/p/sdcc/bugs/4071/) | CORE | Array conversion of an array reached through a generic pointer produces an address-space-specific pointer | array-to-pointer decay through generic pointer loses genericness; frontend type system |
| [3992](https://sourceforge.net/p/sdcc/bugs/3992/) | CORE | error 0: Duplicate symbol | spurious duplicate-symbol in nested for-loop scope; frontend symbol table |
| [3989](https://sourceforge.net/p/sdcc/bugs/3989/) | CORE | function attributes are not handled in type casting | function attributes (__reentrant) dropped in explicit cast; frontend |
| [3986](https://sourceforge.net/p/sdcc/bugs/3986/) | CORE | error 158: overflow in implicit constant conversion | false overflow warning on in-range uint8_t init; frontend constant folding |
| [3979](https://sourceforge.net/p/sdcc/bugs/3979/) | CORE | error 147: excess elements in struct initializer | false "excess elements" on nested designated union initializer; frontend |
| [3963](https://sourceforge.net/p/sdcc/bugs/3963/) | CORE | Parameter is not taken as having the unqualified version of its declared type in assignment or initialisation | qualifier-drop not applied to param type in assignment; frontend C23 type rules |
| [3960](https://sourceforge.net/p/sdcc/bugs/3960/) | CORE | Inconsistent diagnostic messages when constraint on unary & operator is violated | inconsistent & constraint diagnostics; frontend |
| [3955](https://sourceforge.net/p/sdcc/bugs/3955/) | CORE | Inconsistent production of warnings about optional-qualified return types | inconsistent _Optional-qualified-return warnings; frontend C23 |
| [3954](https://sourceforge.net/p/sdcc/bugs/3954/) | CORE | Mismatch in generic selection when array-to-pointer decay expected | _Generic array-decay mismatch; frontend type system |
| [3902](https://sourceforge.net/p/sdcc/bugs/3902/) | CORE | Overlong identifier issue | overlong identifier silently truncated with no warning; frontend lexer |
| [3878](https://sourceforge.net/p/sdcc/bugs/3878/) | CORE | static in non-static inline | static-in-non-static-inline not diagnosed (C23 constraint); frontend |
| [3676](https://sourceforge.net/p/sdcc/bugs/3676/) | CORE | error using structs in macros | struct member access inside macro fails to compile (gcc accepts); frontend macro/parser interaction |
| [3584](https://sourceforge.net/p/sdcc/bugs/3584/) | CORE | Initialization of union / struct with anoymous members | anonymous-member struct/union init semantics diverge from C23 direction; frontend |
| [3481](https://sourceforge.net/p/sdcc/bugs/3481/) | CORE | Caught signal 11: SIGSEGV | SIGSEGV on implicit-declared-function-with-args pattern; frontend crash |
| [3369](https://sourceforge.net/p/sdcc/bugs/3369/) | CORE | Array of incomplete element type does not give error in the frontend | array of incomplete element type not diagnosed at declaration; frontend |
| [3358](https://sourceforge.net/p/sdcc/bugs/3358/) | CORE | Function parameter gives syntax error instead of decaying to function pointer | function-type parameter should decay to fn pointer, gives syntax error instead; frontend parser |
| [3266](https://sourceforge.net/p/sdcc/bugs/3266/) | CORE | Unknown character escapes treated like \\, etc | unknown backslash escapes silently treated as literal char, no warning; frontend lexer |
| [3226](https://sourceforge.net/p/sdcc/bugs/3226/) | CORE | too many parameters error | K&R-style empty-parens declaration wrongly rejected as too-many-params; frontend |
| [3172](https://sourceforge.net/p/sdcc/bugs/3172/) | CORE | explicitly cast varargs promoted even in --std-sdccXX mode | explicit cast on vararg still promoted even under strict std mode; frontend |
| [3121](https://sourceforge.net/p/sdcc/bugs/3121/) | CORE | -:0: error 69: struct/union/array '': initialization needs curly braces | wrong/duplicated diagnostic for nested designated initializer; frontend |
| [3094](https://sourceforge.net/p/sdcc/bugs/3094/) | CORE | ulong2fs gives incorrect warning 158 overflow in implicit constant conversion | false overflow warning compiling own device/lib source (_ulong2fs.c); frontend constant-conversion check |
| [2976](https://sourceforge.net/p/sdcc/bugs/2976/) | CORE | Support VS Code's $msCompile message format | feature request: VS Code $msCompile-compatible message format; frontend diagnostics output |
| [2975](https://sourceforge.net/p/sdcc/bugs/2975/) | CORE | Ability to include full path in output messages | feature request: full path in diagnostic messages; frontend diagnostics output |
| [2952](https://sourceforge.net/p/sdcc/bugs/2952/) | CORE | attribute arguments other than string literals and identifiers | C2X attribute-argument token forms not accepted; frontend parser |
| [2951](https://sourceforge.net/p/sdcc/bugs/2951/) | CORE | keyword in attributes | keyword-as-identifier in attributes not accepted per C2X; frontend parser |
| [2893](https://sourceforge.net/p/sdcc/bugs/2893/) | CORE | Bogus error messages when a file starts with a ';' | bogus "empty source file" error when file starts with ';'; frontend |
| [2877](https://sourceforge.net/p/sdcc/bugs/2877/) | CORE | (Regression) Incorrect overflow warning when adding two numbers  | regression: false overflow warning adding two in-range constants; frontend constant folding |
| [2768](https://sourceforge.net/p/sdcc/bugs/2768/) | CORE | Missing type mismatch report | mistyped initializer accepted without warning in some cases; frontend |
| [2733](https://sourceforge.net/p/sdcc/bugs/2733/) | CORE | False "overflow in implicit constant conversion" warning | false overflow warning on in-range 1<<7 shift; frontend constant folding |
| [2663](https://sourceforge.net/p/sdcc/bugs/2663/) | CORE | Function pointer initialization issue | function-pointer-vs-function-value initializer inconsistency; frontend type system |
| [2660](https://sourceforge.net/p/sdcc/bugs/2660/) | CORE | pointer type incompatible with itself | "pointer types incompatible" on a type against itself; frontend type-name printing/comparison |
| [2639](https://sourceforge.net/p/sdcc/bugs/2639/) | CORE | FATAL Compiler Internal Error in file 'SDCCast.c' line number '5513' : node PARAM shouldn't be processed here | FATAL ICE in SDCCast.c on malformed call after missing declaration; frontend, confirmed core file |
| [2497](https://sourceforge.net/p/sdcc/bugs/2497/) | CORE | typedef of function should be allowed - resolution of #2440 is too strict | typedef of bare function type rejected, C99 explicitly allows it; frontend |
| [2354](https://sourceforge.net/p/sdcc/bugs/2354/) | CORE | extern function prototypes improperly marked as public as well as extern | extern fn prototype marked both public and extern in emitted glue; shared SDCCglue.c linkage logic |
| [1900](https://sourceforge.net/p/sdcc/bugs/1900/) | CORE | calling inline function | inline function call before its definition mishandled; frontend inlining |

## 4b. Infra: `Build`/`Preprocessor`/`Simulator`/`redundancy elimination`/`Documentation`/`Tools`/uncategorized (35/35 read in full, 2026-09-30)

A different shape from `Front-end`: **19 of 35 are NOT-APPLICABLE** - almost
all of `Build` (14/16) is upstream's own configure/make/cross-build/snapshot
infrastructure, which this fork doesn't share (we have our own diverged build
path, per `tools/build-vendor-asxxxx.sh` and this project's own discipline).
`redundancy elimination` (3/3) and most of `Preprocessor` (6/7) are genuinely
CORE - and redundancy elimination in particular surfaced the single most
serious finding of this whole pass (#3727, below).

| # | Classification | Summary | Why |
|---:|---|---|---|
| [4067](https://sourceforge.net/p/sdcc/bugs/4067/) | NOT-APPLICABLE | make distclean error | make distclean error in upstream build tree; build infra |
| [3816](https://sourceforge.net/p/sdcc/bugs/3816/) | NOT-APPLICABLE | configure should check for GNU make | configure should check for GNU make; build infra |
| [3702](https://sourceforge.net/p/sdcc/bugs/3702/) | NOT-APPLICABLE | Cross-build requires todos, needs better error message | cross-build todos dependency missing, unclear error; build infra |
| [3659](https://sourceforge.net/p/sdcc/bugs/3659/) | NOT-APPLICABLE | pic port configuration fails on big-endian host | pic16 configure fails on big-endian host; build infra + PIC-specific |
| [3647](https://sourceforge.net/p/sdcc/bugs/3647/) | NOT-APPLICABLE | configure fails complainign about boost wher there is no C++ compiler | misleading configure error for missing C++ compiler; build infra |
| [3476](https://sourceforge.net/p/sdcc/bugs/3476/) | NOT-APPLICABLE | Build fails after make clean | build fails after make clean, upstream cpp subtree; build infra |
| [3288](https://sourceforge.net/p/sdcc/bugs/3288/) | NOT-APPLICABLE | [Build] Make reports "makeinfo" is missing but it means "texinfo" | misleading makeinfo/texinfo error message; build infra |
| [3284](https://sourceforge.net/p/sdcc/bugs/3284/) | NOT-APPLICABLE | Regression tests should check for simulator binaries first | regression harness should check simulator binaries exist first; upstream CI UX |
| [3204](https://sourceforge.net/p/sdcc/bugs/3204/) | NOT-APPLICABLE | Snapshot build infrastructure should complain about missing hostname.mk | snapshot build infra missing-hostname.mk error unclear; build infra |
| [3200](https://sourceforge.net/p/sdcc/bugs/3200/) | NEEDS-VERIFICATION | SDCC generates ELF with invalid DWARF info | SDCC emits invalid DWARF in ELF output on stm8; shared SDCCdwarf2.c plausible root cause, but only one report (stm8) and ELF/DWARF output support on i8085 itself unconfirmed |
| [3192](https://sourceforge.net/p/sdcc/bugs/3192/) | NOT-APPLICABLE | configure should check for makeinfo | configure should check for makeinfo; build infra |
| [3133](https://sourceforge.net/p/sdcc/bugs/3133/) | NOT-APPLICABLE | Run-time seg fault with sdar when building SDCC under MSys2 | sdar segfault under MSYS2, fixed by upgrading vendored binutils; build/packaging |
| [2955](https://sourceforge.net/p/sdcc/bugs/2955/) | NOT-APPLICABLE | configure depends on make | configure depends on make with unclear error when absent; build infra |
| [2739](https://sourceforge.net/p/sdcc/bugs/2739/) | NEEDS-VERIFICATION | CDB file symbol record not generated for absolute addressed variables | CDB symbol record not emitted for __at-placed variables under --debug; plausibly shared debug-info logic but only tested on mcs51 |
| [2616](https://sourceforge.net/p/sdcc/bugs/2616/) | NOT-APPLICABLE | Single-quoting CCAS variable breaks mingw64 build | mingw64/MSYS2 CCAS quoting breaks SDCC's own build; build infra |
| [2606](https://sourceforge.net/p/sdcc/bugs/2606/) | NOT-APPLICABLE | linker build dependencies | sdas/linksrc Makefile header-dependency tracking gap; legacy-toolchain build infra |
| [3844](https://sourceforge.net/p/sdcc/bugs/3844/) | CORE | ICE when using __has_attribute in conditional preprocessing | ICE using __has_attribute in conditional preprocessing; shared cpp |
| [3715](https://sourceforge.net/p/sdcc/bugs/3715/) | CORE | Crash with "internal compiler error" when compiling | ICE/crash compiling a small header-only file, regression since 4.2; shared cpp/frontend |
| [3633](https://sourceforge.net/p/sdcc/bugs/3633/) | NOT-APPLICABLE | Unexpected "Makeinfo is missing or too old" | misleading "Makeinfo is missing" configure warning; build/doc infra, mistagged Preprocessor |
| [3513](https://sourceforge.net/p/sdcc/bugs/3513/) | CORE | c macro expansion in asm comments | cpp macro expansion reaches into asm-block comments, corrupting emitted asm; shared cpp-to-asm-text interaction |
| [3512](https://sourceforge.net/p/sdcc/bugs/3512/) | CORE | warning: missing terminating ' character in asm comment | false "missing terminating quote" warning on apostrophe inside asm comment; same bug class as already-CORE #3108 in the other-bucket table - near-duplicate report |
| [3268](https://sourceforge.net/p/sdcc/bugs/3268/) | CORE | Backslash in target path using -MD | -MD dependency-file target path gets backslashes on Windows, breaks make; shared driver -MD/-MMD handling |
| [2490](https://sourceforge.net/p/sdcc/bugs/2490/) | CORE | Macro invocation split over many files | macro invocation split across multiple lines/tokens rejected, DR482 says valid; shared cpp |
| [4075](https://sourceforge.net/p/sdcc/bugs/4075/) | BACKEND-SPECIFIC | uCsim incorrect STA ZP,X for HuC6280 | uCsim STA ZP,X address bug specific to the HuC6280 (6502-variant) simulator model |
| [3818](https://sourceforge.net/p/sdcc/bugs/3818/) | NEEDS-VERIFICATION | Can't quit windows uCsim build | ucsim_z80 Windows build hangs on quit under wine; could be shared uCsim core command-loop or Windows/wine-hosting-specific - unclear without reading uCsim source |
| [3670](https://sourceforge.net/p/sdcc/bugs/3670/) | NOT-APPLICABLE | read_cdb_file always assigns var to "rom" without considering banking | ucsim read_cdb_file mishandles banked ROM variables; i8085/i8080 have no banking |
| [3884](https://sourceforge.net/p/sdcc/bugs/3884/) | CORE | CSE taking  a lot of time | CSE (cseAllBlocks) pathologically slow on one gcc-torture test; shared optimizer performance |
| [3727](https://sourceforge.net/p/sdcc/bugs/3727/) | CORE | Incorrect loop optimization (probably in GCSE) | GCSE incorrectly assumes globals unmodified across a function call - silent miscompilation in shared optimizer |
| [2815](https://sourceforge.net/p/sdcc/bugs/2815/) | CORE | SDCC hangs in CSE (and keeps allocating more and more memory) | CSE/computeDataFlow hangs and unbounded-allocates, explicitly "assume it happens for all targets"; shared dataflow analysis |
| [3518](https://sourceforge.net/p/sdcc/bugs/3518/) | NOT-APPLICABLE | PIC headers are no longer "non-free"? | doc content question about PIC header licensing; documentation, PIC-specific |
| [3514](https://sourceforge.net/p/sdcc/bugs/3514/) | NOT-APPLICABLE | SDCDB command line options documentation missing options | SDCDB manual section missing option docs; documentation for a tool we don't use |
| [3270](https://sourceforge.net/p/sdcc/bugs/3270/) | NOT-APPLICABLE | SDCDB SegFault on  4.1.0 | SDCDB segfault; debugger tool we don't use |
| [3411](https://sourceforge.net/p/sdcc/bugs/3411/) | CORE | makebin offset parameter doesn't work as expected | makebin -o/-s (offset/romsize) interaction bug; shared support/makebin tool |
| [2009](https://sourceforge.net/p/sdcc/bugs/2009/) | CORE | Leaking memory in a thousand places | compiler-wide memory leaks, explicitly reproduces "for any target"; shared allocation code |
| [1873](https://sourceforge.net/p/sdcc/bugs/1873/) | NEEDS-VERIFICATION | iCodes redundantly processed using new register allocator | old/"new" shared register allocator double-processes iCodes (RegFix/createRegMask/dumpEbbsToFileExt); i8085 has its own independent ralloc2.cc allocator (see ARCHITECTURE.md) - confirm these functions are even reachable from this port before assuming relevance |

## 5. Work plan (planning only - nothing here has been fixed)

Scoped to all 125 confirmed-CORE findings now that every candidate bucket
has been read, grouped by what kind of defect they are rather than by SDCC
subsystem - severity is the more useful axis for deciding what to look at
first. This supersedes the `other`-only version of this plan; the tiers
below absorb Front-end's and infra's CORE findings rather than sitting
alongside them.

**Progress (updated as items close - see git log for the actual commits):**

- **#3727 fixed** (`3668789`) - the Tier 2 GCSE miscompilation. Textbook
  fix already sat commented-out in `SDCCdflow.c`'s `mergeInExprs()`;
  re-enabled it. Shared code, fixes it for every port.
- **#4051 / #4099 fixed** (`5f08369`) - function-returning-array ICE.
  Upstream fixed #4099 (the same root cause) the day before this triage;
  ported the equivalent 3-part patch (`SDCCsymt.c` + two `SDCC.y` grammar
  rules) rather than inventing a narrower one. Shared code.
- **#3971 fixed** (`dc1eced`) - SIGSEGV on `"literal" + constant` pointer
  initializers. One-line `IS_AST_VALUE` guard in `SDCCast.c`'s
  `constExprValue()`; `initPointer()`'s existing `(ptr + constant)`
  fallback already handled the rest correctly once reached. Shared code.
- **#3803 fixed, i8085-only** (`ef58abb`) - segfault on `return *p;` for a
  struct pointer. No upstream reference patch exists - the real frontend
  fix is still undesigned there (since Jan 2025). Fixed narrowly in this
  port's own `genRet()` by trusting `currFunc`'s declared return type
  instead of the frontend-corrupted operand type, which exposed a second,
  previously-dormant register-conflict bug in the same function (fixed
  too). **Not fixed upstream or for any other port** - this is a targeted
  mitigation for this backend specifically, not a general solution.
- **#3916 / #3917 parked, not fixed** - #3917's own crash (function
  *pointer* type as `typeof_unqual` operand) turned out to already be
  fixed on this fork by inheritance from the baseline. The remaining
  crash (bare function type, same root cause as #3916) has only an
  explicitly-unstable combined patch upstream (maintainer-reported test
  regressions, author-suspected bug in their own diff as of 2026-09-29) -
  deliberately not ported. Revisit once that patch stabilizes upstream.
- **#3835 - doesn't reproduce on i8085/i8080.** Both of the two
  independently-reported minimal cases compile cleanly here. Likely
  specific to stm8's codegen path through the shared optimizer code the
  crash cites. No action taken, nothing to fix for this fork.

**Tier 1 - crashes/ICEs (14 tickets).** Unambiguous defects, no judgment
calls about whether they're "real" - the compiler hard-crashes or aborts on
valid or near-valid input. Several (#3803, #3470, #3715, and the
debug-symbol cluster below) reproduce across independently-implemented
backends, meaning a fix plausibly can't be accidentally scoped too
narrowly. List: #4051, #3971, #3917, #3835, #3803, #3645, #3470, #3370,
#3021, #2860, #3016 (from `other`), plus three new from this pass: #3481
(SIGSEGV on an implicit-declaration-with-args pattern), #2639 (FATAL ICE in
`SDCCast.c`, PARAM node misuse), #3715 (ICE compiling a small header-only
file, a regression since 4.2).

**Tier 2 - silent miscompilation / wrong output (12 tickets).** No crash,
no diagnostic - just a wrong answer or wrong emitted text, which is worse
than a crash because nothing tells the user it happened. **#3727 is the
single highest-value finding of this whole triage pass**: GCSE
(`redundancy elimination`) incorrectly assumes a global variable can't be
modified by a called function and optimizes based on the stale value - a
real, silent miscompilation in the shared optimizer, not a diagnostics gap.
#2948 ("fails for all targets") and #3920 (crypto test wrong across every
optimization variant) are the next most concerning, both already confirmed
port-independent. #2646/#2442 (see §4's placement-audit cross-reference)
belong here too but are arguably not this fork's item to fix - flag to
whoever owns the placement-audit thread instead of duplicating work. Full
list: #3727, #3973, #3920, #3005, #2948, #2519, #2646, #2442, #3892
(trivial one-line constant fix), plus three new from infra: #2354 (extern
function wrongly marked both public and extern in emitted glue), #3513
(cpp macro expansion corrupts text inside `__asm` comments), #3268 (`-MD`
dependency-file paths get Windows backslashes, breaking `make`).

**Tier 2.5 - performance/resource pathologies (5 tickets), new this pass.**
Not wrong output, but real usability failures: the compiler hangs, runs out
of memory, or takes pathologically long on valid input. #2815 (CSE/
`computeDataFlow` hangs and unbounded-allocates, "happens for all
targets") and #3884 (`cseAllBlocks` pathologically slow on one
gcc-torture case) are both in the shared optimizer's dataflow analysis -
worth investigating together, might share a root cause. #2686/#2555
(compiler-wide excessive-but-finite memory use, reproduces across multiple
independent backends) and #3015 (extremely long compile times for large
array initializers) round this out.

**Tier 3 - the duplicate debug-symbol cluster (4 tickets, 1 fix).**
#4061/#3662/#3153/#3107 - same bug, reported four times over what looks
like several SDCC eras. Investigate #3662's trace into `flushStatics()`
first since it's the only one of the four with a specific code pointer
already in hand. Related but distinct debug-info bugs exist too (#2229
wrong `.cdb` format, #2700 debug info for multi-iTemp variables, #3892
wrong DWARF tag constant, #2739 missing CDB record for `__at`-placed
variables) - worth a look once the cluster itself is fixed, since they
likely share adjacent code in `SDCCdebug.c`/`SDCCdwarf2.c`, but they are
not the same bug and shouldn't be bundled into one fix.

**Tier 4 - everything else (90 tickets).** Dominated by missing or wrong
*diagnostic messages* for real-but-narrow C23/`_Optional` constraint
violations - doesn't affect generated code, just doesn't tell the user
about a mistake as clearly as it should - plus a long tail of low-severity
misc CORE findings that don't fit tiers 1-3 (feature requests like
#2975/#2976, minor option-parsing bugs, `makebin`'s #3411). Individually
low value; collectively this is where most of the 125 actually live. A
large fraction of the `Front-end` bucket (#4093 through #3952 in the
`other` table, plus most of `Front-end`'s own 45, roughly 20+ tickets) are
a single reporter's (`cs99cjb`) systematic C23-conformance sweep, filed
close together and almost certainly touching the same few
`SDCCsymt.c`/`SDCCast.c` type-compatibility functions repeatedly - worth
attacking as one investigation into "how are constraint violations
diagnosed here," not 20+ separate fixes.

**Before fixing anything:** for every tier, check it against this fork's
actual `sdcc/src/` state first (per §7) - some may already not reproduce
here, either because the fork has diverged in the relevant file or because
the bug needs a target this fork doesn't build. §6 already has one example
done (#3219, proven unreachable for i8085).

## 6. Caveats

- **Every candidate ticket has now been read at least once** - `other`
  (133), `Front-end` (45), and infra (35), 213 total. The only tickets in
  this file that haven't been individually read are the 250 excluded by
  title/category match automatically (a much weaker signal, but backend
  category names in particular - PIC16/PIC14/MCS51/etc. - are applied
  carefully enough upstream that spot-checking during this pass found no
  reason to distrust them).
- **20 NEEDS-VERIFICATION tickets** (16 from `other`, 4 from Front-end/
  infra) each need one specific, usually cheap check before they can move
  to CORE/BACKEND-SPECIFIC/NOT-APPLICABLE - see the "Why" column in the
  relevant table for what each one needs. A few representative examples:
  #3527 (check whether vendor ASxxxx's `asexpr.c` shares SDCC's bundled
  `sdas`'s 24-bit shift-truncation bug), #3510 (confirm i8085 doesn't fall
  back to the generic-C `_modulong.c`), #2701 (confirm i8085 supports
  `--out-fmt-elf`/DWARF output at all before caring whether its scope
  tracking is wrong), #1873 (confirm `RegFix`/`createRegMask`/
  `dumpEbbsToFileExt` are even reachable from i8085's own independent
  `ralloc2.cc` allocator - plausibly another `#3219`).
- **One NOT-APPLICABLE finding already answered itself against our own
  prior work**: #3219 describes a real bug in the shared peephole engine's
  jump-range/distance tracking - but this fork already proved (2026-09-17,
  removing `i8085_instructionSize()`) that `port->peep.getSize` is `NULL`
  for i8085/i8080 and that code path is structurally unreachable here (no
  relative/short jump exists on this hardware to range-check). Real bug,
  proven moot for us specifically - the kind of cross-check §7 asks for,
  already done for this one ticket. #1873 above is a plausible second case
  of the same pattern, not yet checked.
- **Reading reduces false positives but not to zero.** A ticket read and
  marked CORE is a claim that the *symptom* looks shared-code, not
  confirmation the bug still reproduces on this fork's current, diverged
  `sdcc/src/` - some tickets are years old and upstream (or this fork)
  may have already fixed the underlying issue as a side effect of
  unrelated work. §7's step 1 is exactly this check, not yet done for any
  of the 125.
- **This is a snapshot.** 466 open tickets as of 2026-09-30; the tracker
  moves. Re-run `tools/audit-upstream-bugs.py` rather than trusting this
  file's top-level numbers after any real gap in time - the per-ticket
  tables are a point-in-time read and won't self-update.

## 7. Next

1. **Check each of the 125 CORE findings against this fork's actual
   `sdcc/src/` state**, starting with Tier 1 (crashes) - some may already
   not reproduce here, either because the fork has diverged in the
   relevant file or because the bug needs a target this fork doesn't
   build. Cross-reference `sdcc-placement-audit.md` for #2646/#2442 rather
   than duplicating that thread.
2. Resolve the 20 NEEDS-VERIFICATION tickets against this fork's actual
   source (each is a small, specific check - see §6).
3. Once Tier 1 is confirmed, prioritize #3727 (Tier 2, the real
   miscompilation in GCSE) - of everything found in this pass, it's the
   one most likely to be silently affecting real i8085/i8080 output today.
4. Decide a re-run cadence (upstream's tracker doesn't stand still) rather
   than treating any single pass as final - new tickets since 2026-09-30
   won't be in this file until the next pass.
