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

1. **#3662 looked at first like one of a cluster of four duplicate
   debug-info tickets (#4061/#3662/#3153/#3107) - it isn't.** Reading all
   four tickets' full descriptions (not just titles) shows #3662 is a
   `flushStatics()`/`outputDebugSymbols()` *timing* bug (static symbols
   silently dropped from `.adb` output, fixed this pass), while
   #4061/#3153/#3107 are a genuinely different mechanism: duplicate debug
   *label* names for inline functions under specific conditional/switch
   control flow. Fixing #3662 does not close the other three; they need
   their own separate investigation.
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
| [4072](https://sourceforge.net/p/sdcc/bugs/4072/) | CORE | _Generic incorrectly sees an unqualified union array member as volatile | _Generic misjudges volatile on union array member - fix ready (ported upstream's reviewed patch), but confirmed ~3.4x compile-time slowdown on an already-pathological CSE case - pending commit/park decision |
| [4064](https://sourceforge.net/p/sdcc/bugs/4064/) | CORE | Incorrect code generated for assembly inline functions | inline param elimination too eager; reproduces on 2 unrelated backend families |
| [4061](https://sourceforge.net/p/sdcc/bugs/4061/) | CORE | Multiple definition error for header inline funcs in conditionals in multiple source files | duplicate inline-fn debug labels under conditional flow; cluster w/ #3153/#3107 (NOT #3662, different mechanism), cross-family |
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
| [3917](https://sourceforge.net/p/sdcc/bugs/3917/) | CORE | FATAL Compiler Internal Error caused by typeof_unqual on function (pointer) type names | FATAL ICE, typeof_unqual on fn type - FIXED (SDCC.y grammar, same root cause as #3916) |
| [3916](https://sourceforge.net/p/sdcc/bugs/3916/) | CORE | Syntax error if a function type name is the operand of typeof | syntax error, typeof on fn type - FIXED, same root cause as #3917 |
| [3892](https://sourceforge.net/p/sdcc/bugs/3892/) | CORE | Dwarf inlined subroutine tag is wrong | wrong DWARF tag constant in SDCCdwarf2.h; trivially shared, one-line fix |
| [3877](https://sourceforge.net/p/sdcc/bugs/3877/) | CORE | Duplication of static objects in inline functions | static-object duplication in inline functions; general inlining semantics |
| [3868](https://sourceforge.net/p/sdcc/bugs/3868/) | CORE | pragma save and pragma restore do not affect pragma disable_warning | pragma save/restore doesn't affect disable_warning; frontend pragma handling |
| [3837](https://sourceforge.net/p/sdcc/bugs/3837/) | CORE | compound literals as constant expressions | compound literals as constant expressions; frontend const-expr evaluation |
| [3835](https://sourceforge.net/p/sdcc/bugs/3835/) | CORE | Internal error: validateOpType failed | Internal error in SDCCopt.c (confirmed core file) |
| [3811](https://sourceforge.net/p/sdcc/bugs/3811/) | CORE | Divide by 2 then see EVELYN the modified DOG | 'EVELYN the modified DOG' warning; shared conditional-flow optimizer infra |
| [3803](https://sourceforge.net/p/sdcc/bugs/3803/) | CORE | segfault on pointer to struct | segfault on pointer-to-struct; reproduces on 3 independent backends (stm8,f8,z80-fam) |
| [3701](https://sourceforge.net/p/sdcc/bugs/3701/) | CORE | multiple identical externs in function fail to compile | multiple identical externs fail to compile; cross-family (z80-fam+mos6502-fam) |
| [3674](https://sourceforge.net/p/sdcc/bugs/3674/) | CORE | Explicit cast ignored when va args argument is a function return value | explicit cast ignored for varargs return-value arg; cross-family, frontend varargs |
| [3662](https://sourceforge.net/p/sdcc/bugs/3662/) | CORE | Adding a function removes const arrays above it from .adb/.cdb output | flushStatics()/debug-output timing bug - FIXED; distinct from #4061/#3153/#3107's label-collision bug |
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
| [3153](https://sourceforge.net/p/sdcc/bugs/3153/) | CORE | --debug produces same lable names for inline functions | duplicate inline-fn debug labels; cluster w/ #4061/#3107 (NOT #3662, different mechanism), broad multi-port |
| [3108](https://sourceforge.net/p/sdcc/bugs/3108/) | CORE | warning: missing terminating ' character in asm | false-positive 'unterminated quote' warning on asm apostrophe; shared inline-asm text scan |
| [3107](https://sourceforge.net/p/sdcc/bugs/3107/) | CORE | --debug switch generate duplicate labels for the lines of code that contain equal text | duplicate debug labels for identical-text lines; same cluster as #4061/#3153 (NOT #3662, different mechanism) |
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
| [4090](https://sourceforge.net/p/sdcc/bugs/4090/) | CORE | sizeof applied to a function is accepted without a diagnostic | sizeof on function type undiagnosed - FIXED (new E_SIZEOF_FUNCTION, SDCCast.c); also now catches sizeof(&func), consistent with SDCC's own pre-existing "&func == func" design |
| [4089](https://sourceforge.net/p/sdcc/bugs/4089/) | CORE | Undiagnosed constraint violation on cast from struct to scalar type | undiagnosed struct-to-scalar cast - FIXED (CAST case, SDCCast.c, source-side IS_STRUCT check; void-discard still valid) |
| [4088](https://sourceforge.net/p/sdcc/bugs/4088/) | CORE | Internal error instead of constraint violation reported when pointer cast to float | ICE instead of diagnostic on pointer-to-float cast - FIXED (new E_CAST_PTR_FLOAT, SDCCast.c CAST case, both directions) |
| [4087](https://sourceforge.net/p/sdcc/bugs/4087/) | CORE | Undiagnosed constraint violation when _Alignof applied to an incomplete type | _Alignof on incomplete type undiagnosed - FIXED (alignofOp, SDCCast.c, new E_ALIGNOF_INCOMPLETE_TYPE; _Alignof(void) deliberately left alone, same as sizeof(void)) |
| [4086](https://sourceforge.net/p/sdcc/bugs/4086/) | CORE | Undiagnosed constraint violation when [] used on an incomplete type | [] on incomplete-type pointer undiagnosed - FIXED ('[' case, SDCCast.c, new E_SUBSCRIPT_INCOMPLETE_TYPE; void* deliberately left alone) |
| [4085](https://sourceforge.net/p/sdcc/bugs/4085/) | CORE | Undiagnosed constraint violations on arithmetic operations | pointer arithmetic constraint violations undiagnosed - FIXED (3 sub-cases: ptr+float, incompatible ptr-ptr, incomplete ptr-ptr; SDCCast.c '+'/'-' cases) |
| [4084](https://sourceforge.net/p/sdcc/bugs/4084/) | CORE | No diagnostic when the first operand of ?: has struct type | ?: first operand struct type undiagnosed - FIXED ('?' case, SDCCast.c, reuses #4083's E_NONSCALAR_CONTROLLING_EXPR - same constraint) |
| [4083](https://sourceforge.net/p/sdcc/bugs/4083/) | CORE | Non-scalar type of if or loop controlling expression is not diagnosed | non-scalar if/loop condition undiagnosed - FIXED (new E_NONSCALAR_CONTROLLING_EXPR, SDCCast.c, covers if/while/do/for in two checks since the latter three desugar to one AST shape) |
| [4078](https://sourceforge.net/p/sdcc/bugs/4078/) | CORE | SDCC accepts storage class on return type | storage class on return type silently accepted; frontend parser |
| [4071](https://sourceforge.net/p/sdcc/bugs/4071/) | CORE | Array conversion of an array reached through a generic pointer produces an address-space-specific pointer | array-to-pointer decay through generic pointer loses genericness; frontend type system |
| [3992](https://sourceforge.net/p/sdcc/bugs/3992/) | CORE | error 0: Duplicate symbol | spurious duplicate-symbol in nested for-loop scope; frontend symbol table |
| [3989](https://sourceforge.net/p/sdcc/bugs/3989/) | CORE | function attributes are not handled in type casting | function attributes (__reentrant) dropped in explicit cast; frontend |
| [3986](https://sourceforge.net/p/sdcc/bugs/3986/) | CORE | error 158: overflow in implicit constant conversion | false overflow warning on in-range uint8_t init - FIXED (fixupCharLiteralSign, SDCCval.c), same root cause as #2733/#3094 |
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
| [3094](https://sourceforge.net/p/sdcc/bugs/3094/) | CORE | ulong2fs gives incorrect warning 158 overflow in implicit constant conversion | false overflow warning compiling own device/lib source (_ulong2fs.c) - FIXED, same root cause as #3986/#2733 |
| [2976](https://sourceforge.net/p/sdcc/bugs/2976/) | CORE | Support VS Code's $msCompile message format | feature request: VS Code $msCompile-compatible message format; frontend diagnostics output |
| [2975](https://sourceforge.net/p/sdcc/bugs/2975/) | CORE | Ability to include full path in output messages | feature request: full path in diagnostic messages; frontend diagnostics output |
| [2952](https://sourceforge.net/p/sdcc/bugs/2952/) | CORE | attribute arguments other than string literals and identifiers | C2X attribute-argument token forms not accepted; frontend parser |
| [2951](https://sourceforge.net/p/sdcc/bugs/2951/) | CORE | keyword in attributes | keyword-as-identifier in attributes not accepted per C2X; frontend parser |
| [2893](https://sourceforge.net/p/sdcc/bugs/2893/) | CORE | Bogus error messages when a file starts with a ';' | bogus "empty source file" error when file starts with ';'; frontend |
| [2877](https://sourceforge.net/p/sdcc/bugs/2877/) | CORE | (Regression) Incorrect overflow warning when adding two numbers  | regression: false overflow warning adding two in-range constants - PARKED, same symptom as #3986/#2733/#3094 but a different root cause (RESULT_TYPE_CHAR pre-truncation), not fixed |
| [2768](https://sourceforge.net/p/sdcc/bugs/2768/) | CORE | Missing type mismatch report | mistyped initializer accepted without warning in some cases; frontend |
| [2733](https://sourceforge.net/p/sdcc/bugs/2733/) | CORE | False "overflow in implicit constant conversion" warning | false overflow warning on in-range 1<<7 shift - FIXED, same root cause as #3986/#3094 |
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
| [3884](https://sourceforge.net/p/sdcc/bugs/3884/) | CORE | CSE taking  a lot of time | CSE (cseAllBlocks) pathologically slow on one gcc-torture test - FIXED (worklist computeDataFlow + batched delGetPointerSucc, SDCCdflow.c/SDCCcse.c) |
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
- **#3645 fixed** (`abe70a5`) - SIGSEGV initializing a flexible array
  member with a non-literal const array. `createIvalCharPtr()`'s
  "is this a code-segment string literal" guard checked only
  `SPEC_SCLS == S_CODE`, which any const array also has on this port -
  added the real distinguishing fact, `AST_SYMBOL(iexpr)->isstrlit`.
  Found via GDB backtrace. Shared code.
- **#2639 fixed** (`47cf1ea`) - crash on an implicitly-declared function
  called with arguments. `resolveSymbols()`'s synthesized function type
  for an undeclared call was never marked `FUNC_NOPROTOTYPE`, so it was
  treated as a strict zero-parameter prototype instead of old-K&R
  "unspecified parameters" - matches the exact precedent this codebase
  already has for an explicit empty-parens declarator. Real behavior
  change, verified carefully: the common zero-arg case is unaffected;
  calling an implicit declaration WITH arguments now correctly hits the
  pre-existing #3021/#3481 limitation instead of silently guessing.
  Full regression byte/tick-identical to the pre-fix baseline - this
  fork's own corpus never exercised the broken pattern. Shared code.
- **#3470 / #3370 / #2860 / #3016 - all already fixed upstream,
  inherited.** Each ticket's reported reproducer, tried verbatim on
  i8085, now either compiles cleanly or gets a proper diagnostic instead
  of crashing. No action needed.
- **#3021 / #3481 parked, not fixed** - both are the same deliberate
  `wassertl` guard ("Setting of register parameter vs. other parameter
  not yet implemented for functions without prototype"), not a true
  crash (a controlled FATAL stop, not SIGSEGV) - for calling conventions
  on K&R-style no-prototype functions, a feature upstream has left
  genuinely unimplemented. Obsolete C style; not worth building out for
  this fork.
- **#3715 parked, not fixed** - crash in `support/cpp/gcc/
  cc1_dummies.cc`, a stub in SDCC's *vendored GCC preprocessor* source,
  not SDCC's own code. `__has_attribute` calls a `get_identifier` stub
  explicitly marked "unreachable dummy". Affects every target
  identically (confirmed port-independent, including i8085). No
  upstream fix in 2+ years; a known, documented user-level workaround
  exists (`&& !defined(__SDCC)`). Out of scope - real preprocessor-
  maintainer territory, not an i8085-backend concern.

**Tier 1 is fully worked through as of this pass - every item above has
a final disposition.** 5 genuine fixes landed (4 shared-code, 1
i8085-specific), 5 already fixed upstream and inherited, 1 confirmed
non-reproducing, 4 deliberately parked with reasons recorded above.
Moving to Tier 2 next.

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

**Tier 2 progress - every item resolved, full sweep done:**

- **#3727 fixed** (`3668789`, see the Tier 1 progress note above for
  detail) - the GCSE miscompilation. Shared code.
- **#2948 fixed** (`84f9c74`) - a union whose first alternative is a
  flattened multi-member anonymous struct only got its first flattened
  member's real value; every member after it was silently zeroed
  instead of consuming its own share of the initializer. Traced the
  exact nested-initList shape with GDB (the field-grouping logic looked
  right on paper and wasn't - the real gap was structural, not a typo).
  **First attempt regressed `tst_bug-2569`** (an ordinary standalone
  array union member's own braced sub-initializer looks structurally
  identical to the flattened case from the outside) - caught by the
  full suite, not assumed safe; the corrected version leaves the first
  member's own handling completely untouched and only engages extra
  logic when there's a genuine further nested item to hand to a truly
  contiguous sibling field. Shared code (`SDCCglue.c`).
- **#3973 fixed** (`626db99`) - found while finishing this sweep, not on
  the original list (via #3971's own "maybe related" cross-reference).
  Same root defect as #3971 (a string literal's value gets marked
  `SPEC_SCLS` `S_LITERAL` even though it's genuinely a symbol address),
  surfacing in two different consumers (`printIvalPtr`, `printIvalType`)
  - a second or later reference to the same literal in one aggregate
  initializer got garbage bytes instead of the address. Shared code.
- **#3892 fixed** (`cd528a7`) - trivial typo'd constant
  (`DW_TAG_inlined_subroutine`), confirmed unused anywhere in this tree.
  Byte/tick-identical regression, as expected.
- **#3920 - already passing, no action needed.** All Ascon crypto test
  variants (`asconaead128`, `asconhash256`) run 0 failures across all
  three ports in every regression this session. Whatever fix landed
  upstream between the report and this fork's baseline, it's already
  inherited.
- **#2646 / #2442 - not this fork's item**, per the placement-audit
  cross-reference already noted above; routed there, not duplicated.
- **#3005 parked, not fixed** - a `static` local struct/union
  initialized with a designated initializer referencing a non-constant
  (e.g. a function parameter) silently generates nonsensical code
  (the generated assignment AST gets misplaced into `_GSINIT`, which
  runs before any function call and has no stack frame to read a
  parameter from) instead of the `E_CONST_EXPECTED` diagnostic a plain
  scalar already correctly gets for the identical mistake. Root cause
  confirmed: `createIval()` never distinguishes static from automatic
  storage before dispatching struct/union fields to `createIvalStruct()`
  (an AST-generating, runtime-assignment-style function). A correct fix
  needs a new recursive constant-validation pass over the initializer
  tree in the same delicate, already-twice-touched `createIval*` family
  - real new logic, not a narrow guard, for a case that's already
  illegal C. Not worth the risk for a missing-diagnostic-only issue.
- **#2519 parked, not a bug** - a 10-year-old maintainer design debate
  (should inline asm be treated as having unknown side effects, or does
  using it carry the responsibility to mark shared state `volatile`,
  same as every other compiler's inline-asm convention) with no
  consensus to change the current behavior. The original reporter
  accepted the standard `volatile` workaround and suggested documenting
  it, not fixing it.
- **#2354 - not applicable to this fork.** The bug is specific to
  assemblers with separate PUBLIC/EXTERN directives (asz80/z80asm-
  style); this port uses vendor ASxxxx's `as8085`/`aslink`, which emits
  a single `.globl` uniformly and lets the linker resolve public vs.
  extern automatically - confirmed by direct reproduction, exactly
  matching the original thread's own observation that "the bug is not
  apparent when using asxxx."
- **#3513 parked, not fixed** - reproduces on i8085 too (confirmed), but
  it's architecturally deep: the preprocessor has no concept of a
  *target assembler's* comment syntax (which varies per port) at the
  point it expands macros, so it can't distinguish a comment inside an
  `__asm` block from code a user legitimately wants macro-expanded
  there. No way to recover the original text after the fact either -
  the corruption happens before the backend ever sees it. Same class of
  risk as #3715.
- **#3268 - not applicable to this fork.** Confirmed Windows-only by the
  reporter's own follow-up (a `\` vs `/` path-separator inconsistency
  in `-MD` dependency-file generation); sanity-checked `-MD` on Linux
  here and it correctly emits forward slashes throughout.

Tier 2 is fully worked through: **4 genuine fixes landed this pass**
(all shared code), 1 already passing, 2 routed elsewhere, 5 parked with
reasons recorded above.

**Tier 2.5 - performance/resource pathologies (5 tickets, 1 fix).**
Not wrong output, but real usability failures: the compiler hangs, runs out
of memory, or takes pathologically long on valid input. #3884
(`cseAllBlocks` pathologically slow on one gcc-torture case) is FIXED:
passive background analysis (gprof-profiled, not guessed) found the true
bottleneck was `delGetPointerSucc` (97.1% of `deleteItemIf` calls), not
the originally-suspected `mergeInExprs`. Fix is two parts applied
together - a worklist-based rewrite of `computeDataFlow()` (`SDCCdflow.c`)
and batched `delGetPointerSucc`/`ifPointerGetKeys`/`delGetPointerSuccSet`
(`SDCCcse.c`) - verified with a clean (uncontended) re-measurement on the
repro case (113.7s/448MB baseline -> ~46-50s/378MB, ~2.4x faster, ~16%
less memory) and a full 3-port i8085/i8085-undoc/i8080 regression:
0 failures, byte-for-byte identical generated code to the pre-fix
baseline on every test case - this is a pure internal performance
improvement, no behavior change.

#2815 (CSE/`computeDataFlow` hangs and unbounded-allocates, "happens for
all targets") is in the same function Candidate A rewrote, so this fix
may well help it too - but #2815 needs ~20GB RAM just to reproduce,
more than this box has, so that's not verified and #2815 stays parked.
#2686/#2555 (compiler-wide excessive-but-finite memory use, reproduces
across multiple independent backends) and #3015 (extremely long compile
times for large array initializers) are still open, not yet confirmed
to share this root cause.

**Tier 3 - debug-info bugs (4 tickets, 1 fix; originally mis-grouped as
one 4-ticket cluster).** Reading all four tickets' full descriptions
(not just titles) shows #3662 is a genuinely different bug from the
other three, not a fourth report of the same thing: #3662 is a
`flushStatics()`/`outputDebugSymbols()` *timing* bug - static symbols
silently dropped from `.adb` output, FIXED this pass - while
#4061/#3153/#3107 are duplicate debug *label* names for inline functions
under specific conditional/switch control flow, a different mechanism -
investigated this pass, parked (see below). Related but distinct
debug-info bugs exist too
(#2229 wrong `.cdb` format, #2700 debug info for multi-iTemp variables,
#3892 wrong DWARF tag constant [fixed], #2739 missing CDB record for
`__at`-placed variables) - likely share adjacent code in
`SDCCdebug.c`/`SDCCdwarf2.c` with #4061/#3153/#3107, but are not the same
bug and shouldn't be bundled into one fix.

**#4061/#3153/#3107 investigated and PARKED.** Reproduced on i8085 with
GDB (not just read about): `if (cond) { inline_func(...); } else {
inline_func(...); }` and `switch` wrongly label debug lines with the
*header's* file/line instead of the call site's; the same call used
sequentially does not. Root mechanism found: `cdbWriteCLine()`
(`cdbFile.c`) skips emitting a label when `ic->inlined` is set, but
`ic->inlined` comes from a single global toggle (`inlinedActive` in
`SDCCicode.c`) that `ast2iCode()` only flips when it walks a
`BLOCK`/`NULLOP` node whose `tree->inlined` is set. `fixupInline()`
(`SDCCast.c`) marks `tree->inlined = 1` on every node of a duplicated
inline body, but that marking only has any effect if a `BLOCK`/`NULLOP`
ancestor is on the path to the generated iCode - for every other node
type it's silently ignored. Confirmed with GDB: the inline body's iCode
in the if/else/switch case has `ic->inlined == 0` and a sentinel
`level == 20000` (an un-fixed-up placeholder); ruled out GCSE as the
cause (`--nogcse` reproduces identically). What's still missing: *why*
if/else and switch specifically fail to route through a `BLOCK`/`NULLOP`
ancestor for the inlined body while sequential code does - that's an
AST-shape question that could take a while longer to pin down exactly,
on a bug that's survived three separate upstream reports over ~4 years
unfixed. Parked because it's `--debug`-output-only (no effect on
generated code or program behavior) and only bites when linking
multiple translation units whose block/level counters happen to
coincide - real but narrow. Pick back up by re-running the repro in
`/home/neil/.claude/jobs/cb828c82/tmp/bug4061/` (`main.c`/`someheader.h`)
with the GDB commands above as a starting point, not from scratch.

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

**Tier 4 progress: #3986/#2733/#3094 fixed (one root cause, 3 tickets),
#2877 parked (different mechanism).** All four report the same visible
symptom - a false "overflow in implicit constant conversion" warning on
a small all-literal expression that's actually in range (`30*8-1==239`,
`1<<7==128`, `24+126==150`, `192+41==233`). Traced three of the four
(#3986, #2733, #3094 - covering `-`, `<<`, `+`) to a real, shared root
cause: `valPlus`/`valMinus`/`valShift` (`SDCCval.c`) keep small
all-literal arithmetic at char width for smaller runtime code, picking
the folded result's sign from the *operands'* types (to stay safe for
genuinely unknown runtime values), not the actual computed value - so a
fully-known compile-time result like 239 can come back typed `signed
char`, is read back later via a `(signed char)` cast, and silently
becomes -17. Fixed with `fixupCharLiteralSign()`: once a char-typed
literal arithmetic result is computed, if it's signed and the value
doesn't fit signed char but does fit unsigned char (128-255), pick the
sign that can hold it - the same convention `cheapestVal()` already
uses for its own int-to-char reduction. Verified empirically with GDB
on i8085 (not just reasoned about): confirmed the exact mis-signed,
wrapped value at each of the three call sites before the fix, confirmed
corrected after; checked for regressions with a second set of genuinely-
out-of-range/sign-changing test cases (`300` into `unsigned char`,
`-5` into `unsigned char`, a widening cast, `200` into `signed char`) -
all four still correctly warn, so this isn't a blanket suppression.

#2877 (`192 + 41`) reproduces the identical symptom through a
*different* mechanism found but not fixed: GDB showed the literal `192`
already corrupted to `signed char` value -64 (192 mod 256, reinterpreted
signed) *before* `valPlus` even runs, apparently via a `RESULT_TYPE_CHAR`
hint (propagated down from the `uint8_t` assignment target through
`decorateType`'s `resultTypePropagate`) causing a blind truncating
pre-cast of each operand ahead of the addition, rather than folding at
full precision and narrowing once at the end. This is a separate rabbit
hole from the fixed three - parked rather than chased further this pass.
Regression test: `support/regression/tests/bug-3986.c` (covers all three
fixed cases; #2877 is not fixed so isn't asserted there).

**The `cs99cjb` C23/`_Optional` sweep: full list confirmed, 2 fixed so
far, no single shared chokepoint found.** Checked every candidate
ticket's actual `reported:` field (not assumed from title/category) to
build the real list - 27 tickets, not "roughly 20+": #4094, #4093,
#4090, #4089, #4088, #4087, #4086, #4085, #4084, #4083, #4072, #4071,
#4006, #4005, #4004, #4003, #4002, #3963, #3962, #3960, #3958, #3957,
#3955, #3954, #3952, #3917, #3916. The hoped-for "one investigation,
not 20+ fixes" shortcut doesn't quite hold: there's no single function
that validates constraints across the frontend - each construct's
missing check lives wherever `decorateType` (`SDCCast.c`) handles that
AST node, so each ticket still needs its own targeted fix, but the
*pattern* is now established and fast to apply: reproduce, find the
relevant `case` in `decorateType`, add an `IS_xxx` type-shape check,
`werrorfl` with a new `E_xxx` code (next free number, currently 366).

Fixed so far:
- **#4090** (`sizeof` on a function type) - added `E_SIZEOF_FUNCTION`
  in the existing `SIZEOF` case. Also now correctly catches
  `sizeof(&func)`, not just bare `sizeof(func)` - confirmed by reading
  SDCCast.c's unary `&` handling that this is consistent, not a new
  false positive: it already has a comment saying `&function` "ought
  to be ignored" and returns the function operand unchanged, so SDCC
  never gave `&function` a distinct pointer type to lose here. Taking
  the address of a function and storing it in an actual function
  pointer *variable* is unaffected either way.
- **#4083** (non-scalar `if`/loop controlling expression) - added
  `E_NONSCALAR_CONTROLLING_EXPR` in the `IFX` case (covers `if`) and
  the `FOR` case (covers `while`/`do`/`for` too - the parser desugars
  all three to `FOR`, confirmed empirically rather than assumed, so one
  check covers all of them; a missing `condExpr`, i.e. `for (;;)`, is
  the valid infinite-loop case and is explicitly left alone). Found
  and worked around two sharp edges along the way: (1) `createIf()`
  silently drops an if-statement with an empty, side-effect-free body
  *before* it's even turned into an `IFX` node, so a naive `if (s) {}`
  test case never reaches the new check at all - needs a body that
  does something; (2) both the `IFX` and `FOR` AST nodes are
  synthesized by the parser without their own source position, so
  `werrorfl` using the node's own `tree->filename`/`lineno` prints
  `-:0:` - fixed by using the *condition expression's* position
  instead (`tree->left->filename` / `AST_FOR(tree,condExpr)->filename`).

- **#4088** (ICE on pointer<->float cast, `(float)pointer`) - fixed.
  `checkTypeSanity`/the CAST case had no check at all for this
  direction; downstream code then tried to treat the pointer's
  DECLARATOR as a numeric SPECIFIER via `SPEC_LONG`, crashing with
  "validateLink failed ... expected SPECIFIER, got DECLARATOR"
  (SDCCopt.c). Added a dedicated `IS_PTR`/`IS_FLOAT` check for both
  cast directions, raising a new `E_CAST_PTR_FLOAT` - deliberately
  *not* reusing the existing `E_CAST_ILLEGAL` ("cast cannot be
  aggregate"), since that message would be factually wrong for a
  pointer/float mismatch. Hit the same test-file infrastructure quirk
  as above a second way: `cases/generate-cases.py`'s naive per-line
  `name: value` header-comment parser (used to scan for parameterized
  test substitutions) chokes on any header-comment line with *two or
  more* colons, not just lines with a colon at all (single-colon lines
  are harmlessly misparsed as a no-op substitution) - had quoted the
  crash's own "file:line: message" form verbatim, which broke
  `cases/MakeList` generation outright (`ValueError: too many values to
  unpack`) rather than just miscounting a test. Fixed by rewording,
  not escaping - worth remembering for any future test comment that
  quotes a compiler diagnostic verbatim.

- **#3917/#3916 fixed together** - not actually "missing diagnostic"
  tickets at all: the reporter wants `typeof`/`typeof_unqual` applied
  to a bare function type (e.g. `typeof_unqual (int (int)) *pfoo;`) to
  be *accepted*, per C23 - Clang/GCC permit it, SDCC crashed instead.
  Root cause was in the grammar itself (`SDCC.y`), not the `typeof`
  handling: `function_abstract_declarator`'s alternative for a bare
  function type with no preceding pointer/declarator -
  `'(' parameter_type_list ')'`, exactly the shape of `(int)` in
  `int (int)` - just discarded the parameter list and returned `NULL`,
  unlike every sibling alternative (which all build a proper
  `FUNCTION` `DECLARATOR` link). That `NULL` propagated up through
  `type_name`'s type-chain-walking code into a malformed type that
  crashed whatever touched it downstream. Fixed by building the
  `FUNCTION` declarator the same way the sibling rules do. Verified
  the resulting type is actually usable, not just non-crashing: wrote
  a function, declared a pointer to it via
  `typeof_unqual (int (int)) *`, called it, got the right answer back.
  Checked for regressions in ordinary (non-`typeof`) function-pointer
  declarations, including varargs - unaffected. This is a grammar
  change, so it got the full 3-port regression treatment rather than
  being assumed safe from the unit-level test alone.

- **#4089** (undiagnosed cast from struct to scalar, `(int)some_struct`)
  - fixed with a source-side `IS_STRUCT(RTYPE(tree))` check next to
    the pre-existing target-side one, reusing `E_CAST_ILLEGAL`.
    `(void)some_struct;` (discarding a struct value) is explicitly
    excluded and stays valid. First attempt used `IS_AGGREGATE`
    (struct-or-array) instead of `IS_STRUCT` - caught immediately by
    the full regression, not assumed safe: it broke the test
    framework's own `fwk/lib/testfwk.c` wholesale, because
    `IS_AGGREGATE` also matches arrays, and passing a string literal
    anywhere (ordinary array-to-pointer decay) is represented as a
    `CAST` node here too. Worth remembering for the rest of this
    cluster: `IS_AGGREGATE` is almost never actually what a
    struct/union-specific constraint check wants - decay-eligible
    arrays will false-positive on the entire codebase instantly, and
    this regression suite's own infrastructure is proof it will be
    caught, but better to reach for `IS_STRUCT` directly from the
    start for this class of check.

- **#4087** (`_Alignof` on an incomplete type) - fixed the same way
  as the analogous `sizeof` check: `alignofOp()` already had the type
  in hand via `checkTypeSanity()`'s call, just needed the same
  `getSize()==0`-and-not-void incomplete-type test SIZEOF uses, raising
  a new, dedicated `E_ALIGNOF_INCOMPLETE_TYPE` (reusing
  `E_SIZEOF_INCOMPLETE_TYPE` would have named the wrong operator in the
  message - same lesson as `E_CAST_ILLEGAL` earlier in this cluster).
  `_Alignof(void)` is deliberately left alone, matching this fork's
  existing `sizeof(void)` behavior (permitted with just a warning, as a
  GNU-style extension, not the strict standard reading that void is
  itself incomplete) - not stricter than `sizeof` for no reason. Side
  note, out of scope for this ticket: `alignofOp()` unconditionally
  returns the literal constant `1` for every type regardless of its
  actual alignment - `_Alignof` doesn't compute a real answer on this
  fork at all. Not touched here; this ticket is only about the missing
  diagnostic.

- **#4086** (`[]` on a pointer to an incomplete type) - same shape as
  #4089/#4087: added a `getSize()==0` incomplete-type check on the
  pointee type in the `'['` case, alongside the pre-existing "need
  array or pointer" check, raising a new `E_SUBSCRIPT_INCOMPLETE_TYPE`.
  `void*[0]` is deliberately left alone - it was already silently
  accepted before this fix (separate, pre-existing gap, not widened by
  this change) and is out of scope for this ticket either way.

- **#4072** (`_Generic` sees an unqualified union member as volatile) -
  fixed differently from the rest of this cluster: rather than writing
  a fix from scratch, found and ported upstream's own reviewed patch
  (the ticket's status is `pending-fixed`; the fix just hasn't reached
  this fork via a sync yet). The upstream discussion is worth reading
  for the "why" - the maintainers went through two review rounds
  before settling on a new `sym_link::volatileAccess` flag that marks
  a union member as volatile for *internal optimization purposes only*
  (keeping one member's write from invalidating cached knowledge about
  others), without changing the member's actual C-visible type -
  `_Generic`, `_Static_assert`, etc. now see the true, unqualified
  type. An earlier, simpler attempt (just keeping `SPEC_VOLATILE` set,
  which is what this fork had) was rejected because it's visible to
  `_Generic`; a different simple attempt the reporter tried instead
  was found to silently let a union member's value escape through a
  non-volatile pointer with no diagnostic - confirmed that specific
  gap already exists on this fork's *unpatched* baseline too (plain
  non-union `volatile char[]` to non-volatile pointer), so it's a
  separate, pre-existing, broader issue, not something this patch
  introduced or was meant to fix.

  Ported the patch's hunks to `SDCCast.c`/`SDCCcse.c`/`SDCCicode.c`/
  `SDCCsalloc.hpp` cleanly (`git apply`); `SDCCsymt.c`/`SDCCsymt.h`
  needed manual adaptation since this fork's `compStructSize()` has a
  different signature (`int su` parameter vs. upstream's
  `sdef->type`) - same fix, adjusted to match. The patch's own 8
  per-port `ralloc.c` hunks (clearing the new flag in
  `createStackSpil()`, so a spilled temporary doesn't inherit a
  union's volatile-for-optimization marking) don't apply to this fork
  at all (none of those backends are built here) - added the
  equivalent one-line fix to our own independent `i8085/ralloc.c`
  instead, the only port that actually needed it. Verified our i8085
  backend has no other direct `isVolatile`/`IS_VOLATILE` call sites
  that would need touching beyond what the shared-code hunks already
  cover.

  Full 3-port regression: 0 failures, and generated code across the
  whole suite came out very slightly smaller and faster than the
  pre-fix baseline (8215190->8214118 bytes, ~20M fewer ticks) -
  consistent with the fix correctly letting the optimizer treat
  genuinely-non-volatile union accesses as non-volatile again,
  something the old blunt "mark the whole member volatile" hack was
  unnecessarily blocking.

  But the same regression run took far longer than this session's
  norm (previous full runs finished in well under an hour; this one
  needed the full 2-hour background ceiling), entirely due to the
  `asconaead128`/`asconhash256` crypto test family. Measured directly,
  isolating the variable (same file, same machine, nothing else
  running): compiling `asconaead128_op_encrypt_impl_opt8_lowsize.c`
  takes 47s without this fix and **2m41s with it - a confirmed ~3.4x
  slowdown**, not a pre-existing condition. Ordinary files are
  unaffected (confirmed by watching the regression move at normal
  speed through everything else once past this one test family).
  Likely cause: `IS_VOLATILE` now calls the new `isVolatileAccess()`,
  which walks array-type-derivation chains, from a hot loop in
  `SDCCcse.c`'s `algebraicOpts` - ascon's heavy use of large
  byte-array unions means that chain-walk runs very often on long
  chains, in code this fork's own triage already flagged as having a
  separate, serious CSE/dataflow performance pathology (`#2815`
  hangs/unbounded-allocates, `#3884` fixed this pass, `#2686`/`#2555`
  excessive-but-finite memory - all four are this exact shared code).
  This fix plausibly makes that pre-existing pathology meaningfully
  worse on the specific inputs that already trigger it, without
  affecting anything else.

  Decision point, not yet resolved: correctness gain (and even a
  slight general speedup) against a real, confirmed ~3.4x slowdown
  that only bites on inputs already known to be pathological for an
  unrelated reason. Options: (a) commit as-is, since it doesn't harm
  anything outside the already-flagged-pathological case; (b) commit
  and flag the interaction with `#2815`/`#3884`/`#2686`/`#2555` as a
  reason to revisit that cluster's priority; (c) park #4072 until the
  underlying CSE/dataflow pathology is itself better understood. Left
  for Neil to decide rather than picked unilaterally.

  Resolved: Neil chose "commit as-is" - the correctness gain stands on
  its own, and the slowdown only bites inputs already known to be
  pathological for the pre-existing, separately-tracked CSE/dataflow
  reason. Committed and pushed (`fb7a9aa8`). A follow-up task was
  created to revisit the CSE/dataflow performance cluster given this
  confirmed interaction, deferred until the rest of this C23 sweep is
  done.

- **#4094** - "Structure with a flexible array member is accepted as
  an array element type" (N3886 6.7.3.2p3: a structure containing a
  flexible array member shall not be a member of a structure or an
  element of an array). This fork already enforced the "member of a
  structure" half via `checkStructFlexArray()` (SDCCsymt.c), called
  only from the struct-member grammar path - but the "element of an
  array" half had no check at all. Fixed in `addSymChain()`
  (SDCCsymt.c), the central choke point for every ordinary object
  declaration (globals and locals): after the existing
  `checkTypeSanity()` call, walk any array-of-array chain down to its
  element type and raise the existing `W_INVALID_FLEXARRAY` warning if
  that element is a struct with `b_flexArrayMember` set. Reused the
  existing warning rather than adding a new error code, since its
  message ("invalid use of structure with flexible array member") is
  already generic enough. Verified: `struct flexible array[2];` now
  warns; a plain (non-array) flex-struct variable, a pointer to one, an
  array of a *complete* struct, and the pre-existing struct-member
  check (flex-struct as a struct member, still rejected independently)
  all continue to behave exactly as before - confirmed via targeted
  manual compiles of each case before trusting the fix. Regression test
  `bug-4094.c` added and registered in `MakeList`; full 3-port
  regression (i8085/i8085-undoc/i8080) on a freshly wiped `gen`/`results`
  tree came back 0 failures on all three (36417 tests each), including
  the new test itself passing on all three ports.

- **#4093** - "Overflow in an integer constant expression is accepted
  without a diagnostic" (N3886 6.6.1p20). More involved than the rest
  of this cluster: the reporter's own first patch (signed-int-only)
  was withdrawn after review flagged it as incomplete (missed
  unsigned int wraparound too), and the reporter split the real fix
  into three separate precondition tickets rather than attach a
  "rather big and complicated" combined patch. Neil chose to port all
  three preconditions plus a proper fix for #4093 itself, rather than
  skip or apply the withdrawn partial patch:
  - **#4100** (closed-fixed upstream) - unsigned `_BitInt` negation
    (`valUnaryPM`, SDCCval.c) didn't mask the negated result to the
    type's declared bit width, e.g. `-(unsigned _BitInt(8))1` produced
    the 64-bit pattern instead of wrapping to 255. Ported directly
    (our `valUnaryPM` matched upstream's at this point): mask with
    `SPEC_BITINTWIDTH` when `IS_BITINT`.
  - **#4101** (closed-fixed upstream) - a constant `?:` expression's
    literal-condition fast path (`decorateType`'s `'?'` case,
    SDCCast.c) truncated the condition to `int` via
    `(int) ulFromVal(...)` before testing truthiness, so a wide
    constant like `4294967296ULL` (2^32, truncates to 0) or a
    fractional float like `0.5f` (truncates to 0 via `ulFromVal`)
    wrongly took the false branch. Ported directly: replaced with
    `!isEqualVal(valFromType(LETYPE(tree)), 0)`, which tests the
    value's own full representation.
  - **#4102** (open upstream, patch attached) - folding a constant
    `unsigned int * unsigned int` multiplication (`valMult`,
    SDCCval.c) cast both 16-bit operands to `TYPE_TARGET_UINT`
    (`uint16_t`) *before* multiplying; `uint16_t * uint16_t` promotes
    to the HOST's native `int` under the host compiler's own
    promotion rules, so `65535 * 65535` overflowed a 32-bit signed
    host `int` - undefined behaviour in the compiler itself, not just
    a missing diagnostic. Ported directly: widen each operand to
    `TYPE_TARGET_ULONG` (`uint32_t`) before multiplying.
  - **#4093 itself**: fixed `valPlus`'s plain int/unsigned-int branch
    (SDCCval.c) - the only branch with no overflow check at all (the
    `SPEC_LONG`/`SPEC_LONGLONG`/`IS_BITINT` branches already handle
    their own wraparound). Rather than port the withdrawn
    signed-only patch, extended the existing widen-and-compare idiom
    already used by `valMult`'s own unsigned-overflow check (just
    above `valPlus` in the same file) to both the signed and unsigned
    case: widen each already-narrowed operand to the next-larger
    target type (`TYPE_TARGET_LONG`/`TYPE_TARGET_ULONG`, each wide
    enough to hold the sum of any two 16-bit operands without host
    overflow), add, and compare the widened sum's truncation back to
    the narrow type against itself, warning `W_INT_OVL` on mismatch.
    This closes the exact gap the withdrawn patch's own reviewer
    flagged (unsigned wraparound, e.g. `65535u + 1u`), not just the
    signed case from the ticket's literal repro.
  Verified all four fixes individually against every case from
  upstream's own test files (`32767+1` warns, `32767+0` doesn't,
  `-32767+-1` doesn't - it's exactly `INT_MIN` - `65535u+1u` now also
  warns, the `_BitInt` negation/`?:` truthiness/unsigned-multiply
  repro cases all match expected results) plus targeted non-regressing
  cases (ordinary runtime addition/multiplication, in-range constants,
  signed `_BitInt` negation, non-wide/non-float `?:` conditions).
  Regression tests `bug-4100.c`, `bug-4101.c`, `bug-4102.c`, and
  `bug-4093.c` added and registered in `MakeList`; full 3-port
  regression (i8085/i8085-undoc/i8080) on a freshly wiped
  `gen`/`results` tree pending - see commit for the result.

**CSE/dataflow performance cluster revisited (per #4072's confirmed
interaction) - re-attributed, no fix landed.** #4072's own writeup
guessed the ~3.4x slowdown it caused on ascon-family code came from
`isVolatileAccess()`'s array-chain walk, called from a hot loop in
`SDCCcse.c`'s `algebraicOpts`, and linked it to the shared
CSE/dataflow performance cluster (`#2815`/`#2686`/`#2555`, all
explicitly "happens for all targets"). Direct gprof profiling (same
ascon file, `-pg`-instrumented, A/B'd with #4072's diff reverse-applied
and re-applied on the identical tree) disproved that guess:
`isVolatileAccess` itself shows 0.00% self-time across 285797 calls in
both profiles - negligible. The real cost is `boost::graph_detail::push`
(inserting into the register allocator's interference graph), which
went from 4.11s to 49.00s - by far the largest share of the added time
- inside `i8085/ralloc2.cc`'s tree-decomposition register allocator
(`SDCCralloc.hpp`, shared with z80/stm8/pdk/mos6502/hc08, but NOT the
same code as the `computeDataFlow()` cluster the task was originally
scoped around). Mechanism: #4072 correctly lets CSE cache more
genuinely-non-volatile union-member values across a wider scope in
ascon's code, which increases how many variables are simultaneously
live at once - and the register allocator's conflict-graph
construction (`SDCCralloc.hpp`'s "Construct conflict graph" loop) is
`O(Σ|alive(i)|²)`, so a modest increase in live-range width causes a
much larger increase in edge-insertion cost.

Found and tried one concrete, narrowly-scoped optimization: the
construction loop visits every ordered pair `(v, v2)` from the same
`alive` set (full `n×n`, skipping only `v==v2`), even though the
conflict graph is undirected - so each unordered pair gets inserted
twice. Changing the inner loop to `v2 = v + 1` (upper-triangle only)
looked safe (confirmed byte-identical codegen on the one slow ascon
file, both via direct `.rel` diff and the file's own timing: 2m41s ->
2m18s, ~14%) - but the **full regression caught a real correctness
bug** the single-file spot-check missed: `coremark_mem_method_MEM_STACK`
and `coremark_mem_method_MEM_STATIC` failed their `!total_errors`
assertion on all 3 ports, and the generated byte count shifted
slightly. Root cause: the loop's `goto next_var` skip (operand-result
check, line ~581-586) is checked only for the outer `v`, not `v2` -
asymmetric. In the original full `n×n` loop, pair `{a,b}` got its edge
if **either** direction's checks passed (the edge only vanished if
*both* directions were blocked); the upper-triangle rewrite only ever
tries one fixed direction per pair (by sort order), so if that
direction happens to hit the asymmetric skip while the other direction
wouldn't have, the edge silently never gets added - letting the
allocator assign two genuinely-conflicting live variables to the same
register. Reverted immediately (clean `git apply -R`, confirmed
zero diff, rebuilt) rather than attempting a same-night fix-forward on
a correctness-critical register-allocator path; the pre-revert state
(before this attempt) was already full-regression-confirmed clean, so
no new regression run was needed after reverting.

Net result: the #4072-to-CSE/dataflow-cluster link in that commit's
own message was incorrect and should not be relied on; the real
interaction is with `ralloc2.cc`'s pre-existing (not #4072-introduced)
quadratic conflict-graph construction, a port-local, not shared-frontend,
cost. `#2815`/`#2686`/`#2555` remain exactly as before - still
unreproducible on this box's 15GB RAM (need ~20GB/16GB+/8GB+
respectively) - this investigation didn't change their status either
way. A correct fix for the conflict-graph loop's `O(n²)` cost would need
to either preserve the asymmetric skip's semantics while still halving
redundant inserts (e.g., check both directions' skip conditions before
deciding to add once) or restructure the skip itself - real, but needs
careful, supervised work, not attempted further tonight.

- **#4071 - not applicable to this fork.** "Array conversion of an
  array reached through a generic pointer produces an
  address-space-specific pointer" - closed-fixed upstream, but it's
  about mcs51/ds390-style ports that have multiple address spaces
  (`__data`/`__xdata`/generic), where an address-space-specific
  pointer can lose its generic-pointer provenance on array-to-pointer
  decay. i8085 has a flat memory model: `src/i8085/main.c` treats
  every unqualified pointer as already generic (`GPOINTER`), so there
  is no address-space-specific-vs-generic distinction for this bug to
  manifest in. Confirmed directly: the ticket's own repro (`_Generic`
  on `p->m` vs `*p` for a pointer-to-array parameter) compiles clean
  on i8085, no warning, matching the "same type" expectation already.

**#3960 attempted and REVERTED - exposed a latent dead-check bug in
the `=` case, not fixed.** "Inconsistent diagnostic messages when
constraint on unary & operator is violated": `&f(0)` (address of a
function call's result) was silently accepted while `&(const int)i`
correctly errors with "'lvalue' required for 'address of' operation" -
confirmed directly on i8085, and the ticket's own "wrong code" angle
also reproduced (`char *j = &f(0); *j = 1;` silently misinterprets the
returned `char` as a pointer). Root cause: `decorateType`'s `CALL`
case (`SDCCast.c`) never sets `tree->rvalue`, so `LRVAL(tree)` reads
false for any CALL operand and the unary `&` case's existing lvalue
check never fires for it. The obvious, minimal fix - `TRVAL(tree) = 1`
at the end of the `CALL` case, mirroring every other
non-lvalue-producing operator in the same switch - looked correct and
passed every hand-written test (both the bad cases and a broad set of
valid ones: `&function` without a call, using a call result without
`&`, calling through a function pointer). **The full regression caught
71 failures on all 3 ports** that none of that manual testing surfaced:
every struct assignment (`g->f = t;` for struct-typed `f`) started
failing with "'lvalue' required for '=' operation".

Root cause, isolated with a minimal repro: `rewriteStructAssignment`
(`SDCCast.c` ~3616) rewrites a struct assignment into
`(__memcpy(&dest, &src, size), *dest)` - a comma expression whose left
child is a `CALL` node - and returns that rewritten, fully-decorated
tree in place of the original `=` node. Back in the outer `case '=':`
block, a *second* lvalue check unconditionally runs on whatever `tree`
now is: `if (TRVAL(tree) = LRVAL(tree))` (note: assignment, not
comparison) reads `tree->left->rvalue` - which, after the rewrite, is
the `memcpy` call's own rvalue flag, not anything about the user's
original left-hand side. Before this fix, `CALL` never set `rvalue`,
so this check was always false here - dead code, silently never
firing, for every struct assignment on this fork. Making `CALL`
correctly report rvalue=1 (semantically correct on its own) exposed
that this post-rewrite recheck was never actually validating what it
appears to validate, and started firing on every single struct
assignment instead.

Reverted cleanly (`SDCCast.c` back to its already-regression-confirmed
state; the untracked, not-yet-committed `bug-3960.c` test was deleted
and `MakeList` regenerated) rather than attempt a same-night fix to
this second, more tangled issue unsupervised - the `=` case's
post-struct-rewrite check needs either removing (if it's genuinely
inert/unneeded after the rewrite, since `rewriteStructAssignment`
already fully decorates its own result) or rewriting to check the
*right* thing, and that call deserves Neil's input rather than a guess
at 1am. #3960 itself is still worth fixing - the underlying
missing-diagnostic bug is real and independently confirmed - but needs
a fix that also audits or removes the `=` case's redundant post-rewrite
recheck first.

- **#3954 - not applicable to this fork, already correct.** "Mismatch
  in generic selection when array-to-pointer decay expected" -
  closed-fixed upstream. Confirmed directly: the ticket's own repro
  (`_Generic` on a plain array `acc` vs. `*pacc` for a pointer-to-array
  parameter, both `const char (*)[64]`-derived) compiles clean with
  both `_Static_assert`s passing on i8085 - this fork's array-to-pointer
  decay already produces the same type in both forms, nothing to fix.

- **#4004 - confirmed reproducing, deferred, not attempted.** "Missing
  diagnostic when qualifier is discarded from pointer target on
  function call" (the `_Optional`/`typeof`/`optional_cast` macro
  example from the `_Optional` TS). Confirmed directly: the ticket's
  repro compiles with no diagnostic at all for the `const`-qualifier
  loss passed into `free()`. Unlike #3954/#4071, this one genuinely
  reproduces - but it sits squarely inside the same tangled
  `_Optional`-TS checker cluster as #4002/#4003/#4005/#4006/#3952/
  #3955/#3957/#3958 (parameter/argument qualifier checking interacting
  with `_Optional`, `typeof`, and macro-expanded casts), which cs99cjb
  themselves spent months restructuring across multiple interdependent
  tickets (including one, #4109, outside this fork's original 27).
  Given tonight already produced two fix attempts (the `ralloc2.cc`
  conflict-graph optimization and #3960's `CALL`-node rvalue fix) that
  each passed careful manual testing but were caught by the full
  regression hiding a real correctness bug, deliberately not
  attempting a fix for #4004 or the rest of this cluster unsupervised
  tonight - this needs Neil's input on scope and approach, not a solo
  overnight guess.

**The `_Optional`-TS cluster, picked up with Neil directly (same
session).** Mapped the real dependency chain by reading each ticket's
own patch, not just its stated "order": the chain is actually
`#4109 -> #4004 -> #3952 -> #4003 -> #4005 -> #4006`. cs99cjb's own
"tested application order" note on the #4006 thread omitted #4004 only
because it had already been merged separately by the time that note
was written - #3952's own patch calls a helper
(`argumentTypeAfterDecay`) that doesn't exist anywhere in this fork,
and tracing it back led straight to #4004.

- **#4109 - FIXED.** "No recommended diagnostic for &* when its result
  is returned through a local pointer." `&*` on an `_Optional` pointer
  removes the `_Optional` qualifier and marks the operand
  (`isSemDeref`) so `checkStaticArrayParams` (SDCCopt.c) can warn (355)
  if the pointer isn't proven non-null at that point - but CSE could
  replace a local pointer at its use without carrying the marker, and
  `killDeadCode` then deleted the marked assignment before the
  diagnostic pass ever ran, so the warning was lost whenever the
  dereferenced result was returned through a local pointer instead of
  used directly. Fixed by keeping a marked instruction alive through
  dead-code elimination until the diagnostic pass runs, then clearing
  the markers and running dead-code elimination once more so none of
  this adds actual generated code. Ported directly from upstream's own
  patch (merged as r16961, confirmed no code-size regression there
  either); our SDCCopt.c matched upstream's pre-patch state at every
  touched point. Regression test folds in all 8 of upstream's own
  valdiag coverage cases (this fork has no separate valdiag suite) as
  real, runtime-asserted functions - 3 that must still warn no matter
  how the pointer flows afterwards, and 5 that correctly must not.
  Full 3-port regression: 0 failures. Committed as `91f06a01`.

- **#4004 - FIXED.** "Missing diagnostic when qualifier is discarded
  from pointer target on function call." Not `_Optional`-specific
  despite its title - the general case (`volatile char *`/`const
  char *` passed where an unqualified pointer is expected, even to
  `void *`) was undiagnosed too. `processParms` (SDCCast.c) only
  rejected completely incompatible pointer types; it never compared
  qualifiers on the referenced type at all. Fixed by adding
  `checkPtrTargetQualifiers`, `compatibleStdQualifiers`,
  `compatibleInnerQualifiers`, `sameQualifiers`, and
  `argumentTypeAfterDecay` (all new, static, in `SDCCast.c`) - the
  last one is also the exact helper #3952's patch depends on, applying
  array-to-pointer decay to an argument's type before comparison so an
  array argument is checked against the type it will actually have at
  the call, not its undecayed array type.

  This went through 7 upstream patch revisions over a month (the
  maintainer's last visible review comment, asking for a rename and a
  move to SDCCsymt.c, has no visible follow-up confirming what the
  final merged shape actually was) - ported from the latest available
  revision as the closest approximation to what's actually merged
  upstream, per Neil's explicit call to proceed on that basis.

  Verified: the ticket's own repro (`f(t)`/`g(t)`/`h(t)` for a
  `volatile char *`, and the same for `const char *`) now warns on all
  6 previously-silent calls; common valid patterns (`T* -> void*`,
  `NULL` to any pointer, `T* -> const T*`, exact matches) stay silent.
  Full 3-port regression: 0 failures, byte-identical output - but the
  diagnostic is genuinely active, firing ~12000 times across the
  existing suite (all warnings, never a failure) on files that already
  had implicit incompatible-pointer-argument calls: `bitfields-bits1`,
  `bitfields-bits2`, `largeoddstruct`, `memory`, `bug-2590`,
  `bug-3495411`, `bug-3560`, `bug-3685`, `far_rabbit_pointers`,
  `strnlen`, `wcsnlen`, and one gcc-torture case. None of these are
  failures, so they're not a blocker for this fix landing - Neil chose
  to commit as-is and track the per-file triage (cast vs.
  `#pragma disable_warning 196`, the same case-by-case judgment call
  upstream went through) as a separate follow-up task rather than
  doing it inline.

- **#3952 - FIXED.** "No diagnostic message when type constraint on
  assignment violated." C23 6.7.2 says two types are compatible only
  if they're the same, so e.g. `return i;` from a function returning
  `float *` when `i` is `int *` is a constraint violation - but
  `compareType` (SDCCsymt.c) never actually compared the *referenced*
  type of two pointers for assignment/initialisation/return/argument
  compatibility, only checked for complete incompatibility (pointer
  vs. non-pointer), so this went entirely undiagnosed.

  Fixed by adding `diagnoseDissimilarPtrTargetTypes` (SDCCsymt.c, with
  its helpers `similarTypes`/`similarPtrTargetTypes`/
  `compatibleTypes`), called from `decorateType`'s `'='` and `RETURN`
  cases and from `processParms` (argument passing). It applies
  array-to-pointer decay to the source via `argumentTypeAfterDecay` -
  the exact helper #4004 introduced, which had to be made non-static
  and moved into `SDCCsymt.h` since #4004 originally left it `static`
  to `SDCCast.c` but #3952 needs to call it from `SDCCsymt.c` too
  (discovering this mismatch, by tracing why #3952's own patch
  referenced a function that didn't exist anywhere in this fork, is
  what led to #4004 in the first place - see above). Also tightened
  `compareFuncType` (now requires compatible return types via a new
  `compatibleFunctionReturnTypes`, and checks parameter atomicity) and
  re-enabled two blocks of dead code in `compareTypeExact` that had
  been disabled (`#if 0`) for unknown reasons, replacing them with
  calls to the new `similarTypes`.

  Ported from upstream's own, several-times-reworked patch for this
  ticket (the same patch #4003/#4005/#4006 build on next). Verified:
  the ticket's own repro (`return i;` for `int*`→`float*`, `t = f;`
  for `float*`→`int*`, `t = itof(f);` for both an incompatible
  argument and an incompatible result) now warns on all 4 previously-
  silent cases; common valid patterns (`void*` conversions, `NULL`,
  exact matches) stay silent; a maintainer-flagged case from the
  ticket's own discussion (`volatile int *f2(void)` redefining a
  function declared `const int *f2(void)`) is now correctly diagnosed
  as a declaration conflict too. Full 3-port regression: 0 failures -
  the diagnostic is genuinely active (186 new "incompatible pointer
  types" warnings across ~23 existing test files, largely overlapping
  #4004's own fallout), never a failure. Folded into the same Task #2
  follow-up as #4004's warning triage.

Not yet investigated: the remaining 10 (27 total, 15 fixed and
committed so far: #4090, #4083, #4088, #3917, #3916, #4089, #4087,
#4086, #4085, #4084, #4072, #4094, #4093, #4004, #3952 - #4093 also
brought in 3 upstream preconditions outside the original 27,
#4100/#4101/#4102; #4109 is a 4th out-of-list ticket, fixed separately
as the first link in the `_Optional`-TS chain above; plus #4071 and
#3954 found not applicable, see above). Remaining, all part of
or adjacent to the interdependent `_Optional`-TS cluster except #3960
(independent, attempted and reverted - see above): #4006, #4005,
#4003, #4002, #3963, #3962, #3960, #3958, #3957, #3955.

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
