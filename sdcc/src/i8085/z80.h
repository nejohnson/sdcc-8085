/** @file z80/z80.h
    Common definitions for the the z80-related ports.
*/
#include "common.h"
#include "ralloc.h"
#include "gen.h"
#include "peep.h"
#include "support.h"

typedef enum
  {
    SUB_Z80,
    SUB_Z180,
    SUB_R2K,
    SUB_R2KA,
    SUB_R3KA,
    SUB_R4K,
    SUB_R5K,
    SUB_R6K,
    SUB_SM83,
    SUB_TLCS90,
    SUB_TLCS870,
    SUB_TLCS870C,
    SUB_TLCS870C1,
    SUB_EZ80_Z80,
    SUB_EZ80,
    SUB_Z80N,
    SUB_R800,
    SUB_8080,
    SUB_8085
  }
Z80_SUB_PORT;

typedef struct
  {
    Z80_SUB_PORT sub;
    int calleeSavesBC;
    int port_mode;
    int port_back;
    int reserveIY;
    int noOmitFramePtr;
    int legacyBanking;
    int nmosZ80;
  }
I8085_OPTS;

/* i8085_opts is this port's own copy of the option state - it used to share
   storage with src/z80/main.c's z80_opts via a plain extern (the last piece
   of mutable state shared between the two ports); it is now cloned and
   defined once in i8085/main.c, so i8080/i8085 no longer read or write z80's
   copy (or vice versa) at all. */
extern I8085_OPTS i8085_opts;

#define IS_Z80 (i8085_opts.sub == SUB_Z80)
#define IS_Z180 (i8085_opts.sub == SUB_Z180)
#define IS_R2K (i8085_opts.sub == SUB_R2K)
#define IS_R2KA (i8085_opts.sub == SUB_R2KA)
#define IS_R3KA (i8085_opts.sub == SUB_R3KA)
#define IS_R4K (i8085_opts.sub == SUB_R4K)
#define IS_R5K (i8085_opts.sub == SUB_R5K)
#define IS_R6K (i8085_opts.sub == SUB_R6K)
#define IS_R4K_NOTYET false // Replace when we have r4k/r5k assembler support (function by function in gen.c, to make debugging easier)
#define IS_R5K_NOTYET false // Replace when we have r4k/r5k assembler support (")
#define IS_R6K_NOTYET false // Replace when we have r6k assembler support (")
#define IS_RAB (IS_R2K || IS_R2KA || IS_R3KA || IS_R4K || IS_R5K || IS_R6K)
#define IS_SM83 (i8085_opts.sub == SUB_SM83)
#define IS_TLCS90 (i8085_opts.sub == SUB_TLCS90)
#define IS_TLCS870 (i8085_opts.sub == SUB_TLCS870)
#define IS_TLCS870C (i8085_opts.sub == SUB_TLCS870C)
#define IS_TLCS870C1 (i8085_opts.sub == SUB_TLCS870C1)
#define IS_TLCS (IS_TLCS90 || IS_TLCS870 || IS_TLCS870C || IS_TLCS870C1)
#define IS_EZ80 (i8085_opts.sub == SUB_EZ80)
#define IS_Z80N (i8085_opts.sub == SUB_Z80N)
#define IS_R800 (i8085_opts.sub == SUB_R800)
#define IS_8080 (i8085_opts.sub == SUB_8080)
#define IS_8085 (i8085_opts.sub == SUB_8085)
/* Intel 8080/8085: a subset of the Z80 with no index registers, no relative
   jumps, no alternate register set, and no CB/ED-prefix instructions. */
#define IS_8080LIKE (IS_8080 || IS_8085)
#define HAS_IYL_INST (IS_Z80N || IS_EZ80 || IS_R800 || IS_Z80 && options.allow_undoc_inst)

/* The 8080/8085 have no IY (or IX) at all, so treat IY as permanently
   reserved: every "IY not usable" fallback then applies to them too. */
#define IY_RESERVED (i8085_opts.reserveIY || IS_8080LIKE)

#define OPTRALLOC_IY !(IY_RESERVED || IS_SM83 || IS_TLCS870 || IS_8080LIKE)

