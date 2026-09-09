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
    int reserveIY;
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

/* The 8080/8085 have no IY (or IX) at all, so treat IY as permanently
   reserved: every "IY not usable" fallback then applies to them too. */
#define IY_RESERVED (i8085_opts.reserveIY || IS_8080LIKE)

