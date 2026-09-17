# 🚀 SDCC for the Intel 8085 & 8080

> **Small Device C Compiler — now speaking to the chips that started it all.**

Real, honest-to-goodness **C for the Intel 8085 and 8080** — the 8-bit CPUs that predate the Z80 and helped launch the microcomputer age. This project teaches [SDCC](https://sdcc.sourceforge.net/) to target the `8085` and `8080` as first-class members of the Z80 family, complete with an optional unlockable stash of **undocumented instructions**. 🕹️✨

<p>
  <img alt="version" src="https://img.shields.io/badge/version-1.0.0%20%22Ares%20Vallis%22-blue">
  <img alt="targets" src="https://img.shields.io/badge/targets-i8085%20%7C%20i8080-orange">
  <img alt="regression" src="https://img.shields.io/badge/i8085%20%2B%20i8080%20regression-0%20failures%20%7C%200%20abnormal%20stops-brightgreen">
  <img alt="undocumented" src="https://img.shields.io/badge/undocumented%20instructions-exploited-purple">
  <img alt="backend" src="https://img.shields.io/badge/backend-independent%20(src%2Fi8085)-brightgreen">
</p>

---

## 🌟 Why this is exciting

The 8085 has **no index registers, no relative jumps, no alternate register set, and none of the CB/ED-prefix instruction groups** its z80 cousin has — just `DAD` for 16-bit math and a handful of accumulator rotates. Getting a modern optimizing C compiler to produce **correct, working code** on a CPU this spare is a genuinely fun engineering problem. This port started life gated down from SDCC's Z80 backend rather than written from scratch, then went further: `src/i8085/` is now its own independent backend directory with its own code generator, register allocator, and toolchain wiring — no shared source with `src/z80/` remains.

- 🎯 **Two targets:** `-mi8085` (8085 + documented set) and `-mi8080` (the strict 8080 baseline).
- ✅ **Rock-solid:** the **entire SDCC regression suite passes for both `-mi8085` and `-mi8080` — 0 failures *and* 0 abnormal stops** (value, compile, link, *and* run-to-completion).
- 🏗️ **Independent backend:** its own `src/i8085/` directory, own code generator and register allocator - no shared code with `src/z80/` to regress.
- 🧪 **Fully simulated:** cycle-accurate testing on the bundled `ucsim_i8085` simulator.
- 🔓 **Undocumented goodies — now put to work:** the code generator actively *emits* the 8085's secret instructions for measurably smaller, faster code (opt-in, see below).

---

## 🪐 About the name — "Sojourner"

The release names come from NASA's **Mars Pathfinder** mission, and the story is too good not to tell. 🌌

When NASA's **Mars Pathfinder** touched down on the Red Planet on **July 4, 1997**, it delivered the first-ever robotic rover to another world: **Sojourner**. The little six-wheeled explorer that rolled down the ramp and trundled across Ares Vallis was driven by a **radiation-hardened Intel 80C85** — a CMOS 8085, clocked at a whisper-quiet ~2 MHz.

So the very same instruction set this compiler targets **literally took humanity's first drive on Mars.** 🔴🤖 There was no better name.

The pre-1.0 releases were codenamed **Sojourner** — the journey. And now we've landed: **`v1.0.0` "Ares Vallis"**, named for the very channel Sojourner rolled into, marks touchdown. 🛬🔴 Both `-mi8085` and `-mi8080` pass the full regression suite (0 failures, 0 abnormal stops), the undocumented instructions are exploited for measurably tighter code, the manual is written, and the port is ready for real-hardware bring-up.

> 📖 Read the mission story straight from NASA: **[NASA — Mars Pathfinder](https://science.nasa.gov/mission/mars-pathfinder/)**

---

## ⚡ Quick start

```sh
# Compile a C file for the 8085
sdcc -mi8085 hello.c

# ...or the strict documented-only 8080
sdcc -mi8080 hello.c

# Unlock the 8085's undocumented instructions and flags
sdcc -mi8085 --allow-undocumented-instructions hello.c

# Inspect the generated assembly
sdcc -mi8085 -S hello.c
```

The toolchain uses the vendor ASxxxx suite's `as8085` assembler and `aslink` linker directly (Intel-mnemonic syntax, emitting a `.8085` / `.8085x` / `.8080` CPU directive), and links against a runtime library hand-tuned for the subset.

---

## 🔩 What's inside

| Piece | Status |
|------|--------|
| 🧠 **Compiler** — independent `src/i8085/` backend (`-mi8085`, `-mi8080`) | ✅ |
| 🛠️ **Assembler** — vendor ASxxxx's `as8085` with `.8080` / `.8085` / `.8085x` directives | ✅ |
| 🔗 **Linker** — vendor ASxxxx's `aslink` | ✅ |
| 📚 **Runtime library** — mul/div/shift/mem/atomics ported to the subset | ✅ |
| 🖥️ **Simulator** — `ucsim_i8085` for regression testing | ✅ |
| 🧾 **Documentation & ChangeLog** — `sdccman` port section + entry | ✅ |

---

## 🔓 The undocumented set

The 8085 shipped with **ten undocumented instructions and two undocumented flags** that Intel never published. They're gated behind `--allow-undocumented-instructions` (and never emitted for `-mi8080`), so a plain `-mi8085` build stays strictly documented:

| Instruction | What it does |
|---|---|
| `DSUB` | `HL -= BC` (16-bit subtract) |
| `ARHL` | Arithmetic shift right of `HL` |
| `RDEL` | Rotate `DE` left through carry |
| `LDHI` / `LDSI` | `DE = HL/SP + immediate` in one op |
| `LHLX` / `SHLX` | Load/store `HL` via `(DE)` |
| `RSTV` | Restart on overflow |
| `JX5` / `JNX5` | Jump on the undocumented **X5/K** flag |

…plus the **V (overflow)** and **K/X5** flags — a real gift on a CPU that otherwise makes signed comparisons awkward.

As of **v0.2.0**, the code generator actively emits **`DSUB`, `ARHL`, `RDEL`, `LDHI`+`LHLX`, `LDSI`, `LHLX`/`SHLX`** wherever they pay off — 16-bit member loads, signed shifts, wide shifts, and `DE` as a second data pointer — with measurable code-size savings across the regression suite. The V/K flags are hardware-accurate in the simulator. (`RSTV` is a software-interrupt with no general compiler use; `JX5`/`JNX5` are assembler- and simulator-supported but left out of code generation.)

---

## 🗺️ Roadmap

- [x] 🏗️ Port registration, assembler, linker, runtime library
- [x] 🎯 Documented-only code generation — full regression sweep green
- [x] 🔓 Exploit the undocumented instructions & flags for tighter code — **v0.2.0**
- [x] 📚 User documentation & ChangeLog
- [x] 🛬 Touchdown — **v1.0.0 "Ares Vallis"**
- [ ] 🔴 Real-hardware bring-up (a separate project) — and, perhaps, upstreaming

---

## 🙏 Built on giants

This work stands on the shoulders of the **[SDCC](https://sdcc.sourceforge.net/)** project — its Z80 backend (the starting point this port was originally gated down from, before going independent) and the `ucsim` simulator made targeting the 8085/8080 a matter of careful subsetting rather than starting over. The toolchain itself comes from Alan Baldwin's **ASxxxx** cross-assembler suite. And, of course, on **Federico Faggin, Masatoshi Shima**, and the Intel teams who gave us the 8080 (1974) and 8085 (1976) in the first place. 🎩

---

<p align="center"><i>From a desk on Earth to a rover on Mars — same instruction set, new C compiler. 🌍→🔴</i></p>
