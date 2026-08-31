/** @file i8085.h
    Common definitions for the i8080/i8085 port.
*/
#include "common.h"
#include "ralloc.h"
#include "gen.h"
#include "peep.h"
#include "support.h"

/* This port only ever targets one of two sub-architectures - Intel's 8080
   or 8085 - selected once at startup (main.c) and never changed. It used
   to be a whole Zilog-family sub-target enum (SUB_Z80, SUB_Z180, SUB_R2K/
   R2KA/R3KA/R4K/R5K/R6K, SUB_SM83, SUB_TLCS90/870/870C/870C1, SUB_EZ80(_Z80),
   SUB_Z80N, SUB_R800) inherited wholesale from src/z80/main.c, but only
   SUB_8080/SUB_8085 were ever assigned - the other 17 values, and their
   IS_* macros below, were provably dead by construction. Collapsed down to
   just the two values this port actually uses. */
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

/* i8085_opts is this port's own copy of the option state - it used to share
   storage with src/z80/main.c's z80_opts via a plain extern (the last piece
   of mutable state shared between the two ports); it is now cloned and
   defined once in i8085/main.c, so i8080/i8085 no longer read or write z80's
   copy (or vice versa) at all. */
extern I8085_OPTS i8085_opts;

#define IS_R4K_NOTYET false // Replace when we have r4k/r5k assembler support (function by function in gen.c, to make debugging easier)
#define IS_R5K_NOTYET false // Replace when we have r4k/r5k assembler support (")
#define IS_R6K_NOTYET false // Replace when we have r6k assembler support (")
#define IS_8080 (i8085_opts.sub == SUB_8080)
#define IS_8085 (i8085_opts.sub == SUB_8085)
/* Intel 8080/8085: a subset of the Z80 with no index registers, no relative
   jumps, no alternate register set, and no CB/ED-prefix instructions. */
#define IS_8080LIKE (IS_8080 || IS_8085)
/* This port has no IY (or IX) hardware at all, so none of the sub-targets
   that could ever make HAS_IYL_INST true (Z80N/eZ80/R800/undoc-Z80) exist
   here any more - permanently 0. Left as a named macro (rather than
   deleted outright) so its handful of call sites - each already documented
   as unreachable, see their own comments - don't need editing. */
#define HAS_IYL_INST 0

/* The 8080/8085 have no IY (or IX) at all, so treat IY as permanently
   reserved: every "IY not usable" fallback then applies to them too. */
#define IY_RESERVED (i8085_opts.reserveIY || IS_8080LIKE)

