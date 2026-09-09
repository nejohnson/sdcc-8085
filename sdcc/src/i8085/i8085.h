/** @file i8085.h
    Common definitions for the i8080/i8085 port.
*/
#include "common.h"
#include "ralloc.h"
#include "gen.h"
#include "peep.h"
#include "support.h"

/* This port only ever targets one of two sub-architectures - Intel's 8080
   or 8085 - selected once at startup (main.c) and never changed. */
typedef enum
  {
    SUB_8080,
    SUB_8085
  }
I808X_SUB;

typedef struct
  {
    I808X_SUB sub;
    int calleeSavesBC;
    int noOmitFramePtr;
    int legacyBanking;
  }
I8085_OPTS;

/* i8085_opts is this port's own copy of the option state, defined once
   in i8085/main.c (see I8085_OPTS above). */
extern I8085_OPTS i8085_opts;

#define IS_8080 (i8085_opts.sub == SUB_8080)
#define IS_8085 (i8085_opts.sub == SUB_8085)
#define IS_8080LIKE (IS_8080 || IS_8085)
/* HAS_IYL_INST removed (#25): its last live call sites (wassert(
   HAS_IYL_INST) guards in gen.c's ld_cost_form()) were removed in an
   earlier #25 checkpoint once the outer conditions they gated were
   themselves proven dead - no reference of any kind remains. */

/* IY_RESERVED and the reserveIY option it was built on removed (#25):
   the 8080/8085 have no IY at all - not a runtime choice, so there was
   nothing for a "reserve it or not" option to control. reserveIY was
   never assigned anywhere (--reserve-regs-iy was never even registered
   in either port's OPTION table), making IY_RESERVED's definition
   (i8085_opts.reserveIY || IS_8080LIKE) unconditionally true via the
   IS_8080LIKE tautology alone. Its two call sites (gen.c's genCall(),
   guarding the bc/de tail-call-via-register fallbacks) were wassert()s
   that could never fire - removed along with the macro. Investigating
   this also found a second, real bug of the same z80-lineage-copy
   origin - see main.c's _finaliseOptions() for the num_regs arithmetic
   mistake this uncovered, and why it's deliberately left unfixed for
   now rather than "fixed" here alongside this cleanup. */

