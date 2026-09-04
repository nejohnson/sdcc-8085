/** Tests argument passing to functions.
    Assumes that up to the first two arguments can be passed in registers.

    type1: char, int, long
    type2: char, int, long
    type3: char, int, long
 */
#include <testfwk.h>

#define TYPE3_char

static char
returnFirstArg(char arg1, long arg2, char arg3)
{
    UNUSED(arg2);
    UNUSED(arg3);
    return arg1;
}

static long
returnSecondArg(char arg1, long arg2, char arg3)
{
    UNUSED(arg1);
    UNUSED(arg3);
    return arg2;
}

static char
returnThirdArg(char arg1, long arg2, char arg3)
{
    UNUSED(arg1);
    UNUSED(arg2);
    return arg3;
}

static void
testArgs(void)
{
#if !(defined(__SDCC_pdk14) && defined(TYPE3_long)) // Not enough RAM
    ASSERT(returnFirstArg(123, 45, 67) == (char)123);
    ASSERT(returnFirstArg(-123, 45, 67) == (char)-123);

    ASSERT(returnSecondArg(1, -23, 64) == (long)-23);
    ASSERT(returnSecondArg(1, 8, 64) == (long)8);

    ASSERT(returnThirdArg(-33, -34, -35) == (char)-35);
    ASSERT(returnThirdArg(-33, -34, 35) == (char)35);
#endif
}


void
__runSuite(void)
{
  __prints("Running testArgs\n");
  testArgs();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "args_type1_char_type2_long_type3_char";
}
