/** Tests argument passing to functions via va_args.
    Assumes that up to the first two arguments can be passed in registers.

    type1: va_char, int, long
    type2: va_char, int, long
    type3: va_char, int, long
 */
#include <testfwk.h>
#include <stdarg.h>

#pragma std_c23

#if (__STDC_VERSION_STDARG_H__ >= 202311L)

#if defined(__SDCC_mcs51) || defined (__SDCC_ds390) || defined (__SDCC_mos6502) || defined (__SDCC_mos65c02) || defined (__SDCC_pic14) || defined (__SDCC_pic16)
# define va_char char
#else
# define va_char int
#endif

#ifndef __SDCC_pic16
static int
returnFirstArg(...)
{
    va_list ap;
    int i;

    va_start(ap);
    i = va_arg(ap, int);

    va_end(ap);

    LOG(("Returning %d\n", i));
    return i;
}

static va_char
returnSecondArg(...)
{
    va_list ap;
    va_char i;

    va_start(ap);
    UNUSED(va_arg(ap, int));
    i = va_arg(ap, va_char);

    va_end(ap);

    LOG(("Returning %d\n", i));
    return i;
}

#if !defined( __SDCC_pdk13) && !defined( __SDCC_pdk14) // Lack of memory
static va_char
returnSecondArgCopy(...)
{
    va_list ap1, ap2;
    va_char i;

    va_start(ap1);
    UNUSED(va_arg(ap1, int));
    va_copy(ap2, ap1);
    i = va_arg(ap2, va_char);

    va_end(ap1);
    va_end(ap2);

    LOG(("Returning %d\n", i));
    return i;
}

static long
returnThirdArg(...)
{
    va_list ap;
    long i;

    va_start(ap);
    UNUSED(va_arg(ap, int));
    UNUSED(va_arg(ap, va_char));
    i = va_arg(ap, long);

    va_end(ap);

    LOG(("Returning %d\n", i));
    return i;
}
#endif
#endif
#endif

void
testArgs(void)
{
#if (__STDC_VERSION_STDARG_H__ >= 202311L)
#ifndef __SDCC_pic16
    LOG(("First arg: %u\n", returnFirstArg((int)123, (va_char)45, (long)67)));
    ASSERT(returnFirstArg((int)123, (va_char)45, (long)67) == (int)123);
    ASSERT(returnFirstArg((int)-123, (va_char)45, (long)67) == (int)-123);
#if !defined( __SDCC_pdk13) && !defined( __SDCC_pdk14) // Lack of memory
    ASSERT(returnSecondArg((int)1, (va_char)-23, (long)64) == (va_char)-23);
    ASSERT(returnSecondArg((int)1, (va_char)8, (long)64) == (va_char)8);
    
    ASSERT(returnSecondArgCopy((int)1, (va_char)-23, (long)64) == (va_char)-23);
    ASSERT(returnSecondArgCopy((int)1, (va_char)8, (long)64) == (va_char)8);

    ASSERT(returnThirdArg((int)-33, (va_char)-34, (long)-35) == (long)-35);
    ASSERT(returnThirdArg((int)-33, (va_char)-34, (long)35) == (long)35);
#endif
#endif
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
  return "vaargs-c23_type1_int_type2_va_char_type3_long";
}
