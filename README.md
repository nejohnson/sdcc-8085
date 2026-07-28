# 🚀 SDCC for the Intel 8085 & 8080

> **Small Device C Compiler — now speaking to the chips that started it all.**

Real, honest-to-goodness **C for the Intel 8085 and 8080** — the 8-bit CPUs that predate the Z80 and helped launch the microcomputer age. This project teaches [SDCC](https://sdcc.sourceforge.net/) to target the `8085` and `8080` as first-class members of the Z80 family, complete with an optional unlockable stash of **undocumented instructions**. 🕹️✨

<p>
  <img alt="version" src="https://img.shields.io/badge/version-0.1.0%20%22Sojourner%22-blue">
  <img alt="targets" src="https://img.shields.io/badge/targets-i8085%20%7C%20i8080-orange">
  <img alt="regression" src="https://img.shields.io/badge/i8085%20regression-100%25%20passing-brightgreen">
  <img alt="z80" src="https://img.shields.io/badge/z80%20backend-0%20regressions-brightgreen">
</p>

---

## 🌟 Why this is exciting

The 8085 has **no index registers, no relative jumps, no alternate register set, and none of the Z80's CB/ED instruction groups** — just `DAD` for 16-bit math and a handful of accumulator rotates. Getting a modern optimizing C compiler to produce **correct, working code** on a CPU this spare is a genuinely fun engineering problem, and it's done here by *gating* SDCC's battle-tested Z80 backend down to the 8080/8085 subset rather than writing a new compiler from scratch.

- 🎯 **Two targets:** `-mi8085` (8085 + documented set) and `-mi8080` (the strict 8080 baseline).
- ✅ **Rock-solid:** the **entire SDCC regression suite passes for `-mi8085` with zero failures** — value, compile, *and* link.
- 🛡️ **Good neighbour:** the shared Z80 backend stays at **0 regressions** — verified from clean trees.
- 🧪 **Fully simulated:** cycle-accurate testing on the bundled `ucsim_i8085` simulator.
- 🔓 **Undocumented goodies:** an opt-in flag unlocks the 8085's secret instructions and flags (see below).

---

## 🪐 About the name — "Sojourner"

The `v0.1.0` release is codenamed **Sojourner**, and the story is too good not to tell. 🌌

When NASA's **Mars Pathfinder** touched down on the Red Planet on **July 4, 1997**, it delivered the first-ever robotic rover to another world: **Sojourner**. The little six-wheeled explorer that rolled down the ramp and trundled across Ares Vallis was driven by a **radiation-hardened Intel 80C85** — a CMOS 8085, clocked at a whisper-quiet ~2 MHz.

So the very same instruction set this compiler targets **literally took humanity's first drive on Mars.** 🔴🤖 For a project's first steps, there was no better name.

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

The toolchain reuses SDCC's `sdasz80` assembler and `sdldz80` linker (emitting a `.8085` / `.8080` CPU directive), and links against a runtime library hand-tuned for the subset.

---

## 🔩 What's inside

| Piece | Status |
|------|--------|
| 🧠 **Compiler** — 8080/8085 as Z80 sub-targets (`-mi8085`, `-mi8080`) | ✅ |
| 🛠️ **Assembler** — `sdasz80` with `.8080` / `.8085` / `.8085x` directives | ✅ |
| 🔗 **Linker** — `sdldz80` | ✅ |
| 📚 **Runtime library** — mul/div/shift/mem/atomics ported to the subset | ✅ |
| 🖥️ **Simulator** — `ucsim_i8085` for regression testing | ✅ |
| 🧾 **Documentation & ChangeLog** | 🔜 |

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

---

## 🗺️ Roadmap

- [x] 🏗️ Port registration, assembler, linker, runtime library
- [x] 🎯 Documented-only code generation — full regression sweep green
- [ ] 🔓 Exploit the undocumented instructions & flags for tighter code
- [ ] 📚 User documentation & ChangeLog

---

## 🙏 Built on giants

This work stands on the shoulders of the **[SDCC](https://sdcc.sourceforge.net/)** project — its Z80 backend, assembler, linker, and the `ucsim` simulator made targeting the 8085/8080 a matter of careful subsetting rather than starting over. And, of course, on **Federico Faggin, Masatoshi Shima**, and the Intel teams who gave us the 8080 (1974) and 8085 (1976) in the first place. 🎩

---

<p align="center"><i>From a desk on Earth to a rover on Mars — same instruction set, new C compiler. 🌍→🔴</i></p>
