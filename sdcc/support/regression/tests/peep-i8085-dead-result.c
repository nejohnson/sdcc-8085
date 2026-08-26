/*
   peep-i8085-dead-result.c

   Targeted regression coverage for src/i8085/peeph-i8085.def's group 1
   (dead-load / dead-result elimination) rules - task #17. These rules
   are not exercised by this file's normal build (options.nopeep stays 1
   by default - see main.c), but this file's own compiled output is one
   of the confirmed real-world triggers found for the "dead 8-bit ALU
   result" rule (mvi/aci/xra-family dead accumulator+flags result) via a
   scan of this whole regression corpus with --peep-file; see also
   bug-2448.c and bug-2031.c, which independently exercise the same rule
   and the "dead dad result" rule respectively. Keeping this file (and
   those two) in the permanent suite means a future gen.c codegen change
   that alters whether/how these rules fire gets caught here once
   options.nopeep flips to 0 at the end of the phase-1 rollout.

   badfunc() below reproduces the exact shape that was found to trigger
   the dead-result rule: an accumulator zero/high-byte computation
   (xra a / aci #0xff-style) whose result and flags are provably unused
   because the value is immediately superseded before ever being read -
   confirmed via ucsim, comparing a build with the rule applied via
   --peep-file against one without: identical ASSERT outcomes (no
   failures introduced either way). The two builds' raw final register
   dumps are not byte-identical - removing the dead instruction shrinks
   the image by one byte, so absolute code-address values elsewhere
   (e.g. a saved return address) shift by one byte too - but that is an
   expected, harmless side effect of code size changing, not a
   behavioral difference; it does not affect what this test actually
   observes or asserts on.
*/

#include <testfwk.h>

typedef unsigned char BYTE;
typedef unsigned int WORD;

volatile BYTE MYDAT[4];

#define MAKEWORD(msb, lsb) (((WORD) (msb) << 8) | (lsb))

WORD badfunc(BYTE cmd)
{
    WORD val = MAKEWORD(MYDAT[1], MYDAT[0]);
    WORD idx = MAKEWORD(MYDAT[3], MYDAT[2]);
    volatile WORD r = val + idx;

    if (cmd == 0)
        return idx;
    else
        return 0;
}

void testBug(void)
{
    MYDAT[0] = 5;
    MYDAT[1] = 0;
    MYDAT[2] = 7;
    MYDAT[3] = 0;

    ASSERT(badfunc(0) == 7);
    ASSERT(badfunc(1) == 0);
}
