#!/bin/sh
# Build the vendor ASxxxx tools this tree's migrated ports drive, and put
# them where SDCC's build expects to find them (sdcc/bin).
#
# Each of these ports invokes a vendor assembler and aslink rather than the
# sdas/sdld forks, both from src/<port>/main.c and from the hand-written .s
# files in device/lib/<port>/Makefile.in:
#
#     asz80   z80, z180, z80n
#     as8085  i8080, i8085
#     as6808  hc08, s08, s08-stack-auto
#     as6500  mos6502, mos65c02, mos6502-stack-auto
#     as8051  the six mcs51 models
#
# SDCC's own build system knows nothing about vendor/asxxxx, so run this once
# before "make" in sdcc/, naming the tools the ports you build need.
#
# Usage:  tools/build-vendor-asxxxx.sh [tool ...]      (default: asz80 aslink)
set -e

root=$(cd "$(dirname "$0")/.." && pwd)
src=$root/vendor/asxxxx
dst=$root/sdcc/bin

[ -f "$src/asxmak/linux/build/makefile" ] || {
    echo "$0: vendor/asxxxx is empty - run 'git submodule update --init'" >&2
    exit 1
}

tools=${*:-"asz80 aslink"}
mkdir -p "$dst"

# ASxxxx's makefile writes into its own build directory; copy from whichever
# of the two output locations it used.
make -C "$src/asxmak/linux/build" $tools
for t in $tools; do
    for d in "$src/asxmak/linux/exe" "$src/asxmak/linux/build"; do
        if [ -x "$d/$t" ]; then cp -f "$d/$t" "$dst/$t"; break; fi
    done
    [ -x "$dst/$t" ] || { echo "$0: $t was not built" >&2; exit 1; }
    echo "installed $dst/$t"
done
