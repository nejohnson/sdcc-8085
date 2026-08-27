/*
   peep-i8085-groups2to7.c

   Targeted regression coverage for src/i8085/peeph-i8085.def's phase-1
   groups 2-7 (task #17): register-to-register mov loads, immediate
   loads, direct-address (lda/sta), indirect (ldax/stax), push/pop, and
   add hl,rr (dad with a used result). Like peep-i8085-dead-result.c,
   none of this fires in this file's normal build (options.nopeep stays
   1 by default - see main.c).

   Confirmed real trigger instances for each group, found via a scan of
   this whole regression corpus with --peep-file and confirmed via ucsim
   (comparing --peep-file on vs. off preserves ASSERT outcomes) live in
   already-permanent, pre-existing files rather than purpose-built ones
   here - deliberately constructed C source for each pattern kept
   compiling to something else entirely (SDCC's own front-end already
   produces the *optimal* form directly for the natural ways of writing
   each shape, e.g. imm_combine() below folds two adjacent byte
   constants straight into one lxi without ever emitting the two mvi's
   group 3's rule would need to see - this was found out the hard way,
   after a first draft of this file claimed to exercise all of groups
   2/3/6 and none of the constructed functions actually did):
     - group 2 (register-to-register mov loads): bug1546986.c
       ("mov c, m" / "add c" -> "add m")
     - group 3 (immediate loads): bug-2825.c
       ("mvi c, #0x22" / "mvi b, #0x00" -> "lxi bc, #0x22")
     - group 4 (direct-address): direct_addr() below, and bug-2205.c
     - group 6 (push/pop): bug-2569.c
       ("pop hl" / "push hl" removed, x4)
   Groups 5 (dead ldax) and 7 (dad commutativity/constant-folding) are
   validated by hand-reasoning and by confirming zero misfires across
   this same ~1500-file corpus scan, same as several of group 1's rules
   - no naturally-occurring trigger was found for either.

   direct_addr() below is kept as this file's one purpose-built function:
   it does reliably reproduce group 4's trigger shape (a global written
   through hl, with hl then unused) and gives that group a clear,
   intentional home rather than relying only on incidental bug-fix-test
   coverage. Also exercises a volatile write, on purpose (a rule
   converting how a store is *expressed* - lxi+mov vs. sta - never
   removes or reorders the underlying access, so is expected to be
   volatile-safe; see this file's own note in peeph-i8085.def).
*/

#include <testfwk.h>

volatile unsigned char v;
unsigned char g_direct;

void direct_addr(unsigned char x)
{
    g_direct = x;
    v = g_direct;
}

/* Kept as a plain sanity check even though it doesn't itself exercise
   group 3's rule with this compiler's current front-end (see the header
   comment above) - two adjacent byte constants combined into one 16-bit
   value, one way or another. */
unsigned int imm_combine(void)
{
    return 0x0022;
}

void testBug(void)
{
    direct_addr(42);
    ASSERT(g_direct == 42);
    ASSERT(v == 42);

    ASSERT(imm_combine() == 0x0022);
}
