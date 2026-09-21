#!/bin/sh
# Build the vendor ASxxxx tools this tree's z80-family ports drive, and put
# them where SDCC's build expects to find them (sdcc/bin).
#
# The z80, z180 and z80n ports invoke asz80/aslink rather than the sdas/sdld
# forks (src/z80/main.c), and device/lib/{z80,z180,z80n}/Makefile.in assembles
# its hand-written .s files with bin/asz80 directly.  SDCC's own build system
# knows nothing about vendor/asxxxx, so run this once before "make" in sdcc/.
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
