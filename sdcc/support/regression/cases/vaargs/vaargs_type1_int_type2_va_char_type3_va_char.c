/** Tests argument passing to functions via va_args.
    Assumes that up to the first two arguments can be passed in registers.

    type1: va_char, int
    type2: va_char, int
    type3: va_char, int
 */
#include <testfwk.h>
#include <stdarg.h>

#pragma disable_warning 85

#if defined(__SDCC_mcs51) || defined (__SDCC_ds390) || defined (__SDCC_mos6502) || defined (__SDCC_mos65c02) || defined (__SDCC_pic14) || defined (__SDCC_pic16)
# define va_char char
#else
# define va_char int
#endif

#ifndef __SDCC_pic16
static int
returnFirstArg(int marker, ...)
{
    va_list ap;
    int i;

    va_start(ap, marker);
    i = va_arg(ap, int);

    va_end(ap);

    LOG(("Returning %d\n", i));
    return i;
}

static va_char
returnSecondArg(int marker, ...)
{
    va_list ap;
    va_char i;

    va_start(ap, marker);
    UNUSED(va_arg(ap, int));
    i = va_arg(ap, va_char);

    va_end(ap);

    LOG(("Returning %d\n", i));
    return i;
}

#if !defined( __SDCC_pdk13) && !defined( __SDCC_pdk14) // Lack of memory
static va_char
returnSecondArgCopy(int marker, ...)
{
    va_list ap1, ap2;
    va_char i;

    va_start(ap1, marker);
    UNUSED(va_arg(ap1, int));
    va_copy(ap2, ap1);
    i = va_arg(ap2, va_char);

    va_end(ap1);
    va_end(ap2);

    LOG(("Returning %d\n", i));
    return i;
}

static va_char
returnThirdArg(int marker, ...)
{
    va_list ap;
    va_char i;

    va_start(ap, marker);
    UNUSED(va_arg(ap, int));
    UNUSED(va_arg(ap, va_char));
    i = va_arg(ap, va_char);

    va_end(ap);

    LOG(("Returning %d\n", i));
    return i;
}
#endif
#endif

void
testArgs(void)
{
#ifndef __SDCC_pic16
    int marker = 12;

    LOG(("First arg: %u\n", returnFirstArg(marker, (int)123, (va_char)45, (va_char)67)));
    ASSERT(returnFirstArg(marker, (int)123, (va_char)45, (va_char)67) == (int)123);
    ASSERT(returnFirstArg(marker, (int)-123, (va_char)45, (va_char)67) == (int)-123);
#if !defined( __SDCC_pdk13) && !defined( __SDCC_pdk14) // Lack of memory
    ASSERT(returnSecondArg(marker, (int)1, (va_char)-23, (va_char)64) == (va_char)-23);
    ASSERT(returnSecondArg(marker, (int)1, (va_char)8, (va_char)64) == (va_char)8);
    
    ASSERT(returnSecondArgCopy(marker, (int)1, (va_char)-23, (va_char)64) == (va_char)-23);
    ASSERT(returnSecondArgCopy(marker, (int)1, (va_char)8, (va_char)64) == (va_char)8);

    ASSERT(returnThirdArg(marker, (int)-33, (va_char)-34, (va_char)-35) == (va_char)-35);
    ASSERT(returnThirdArg(marker, (int)-33, (va_char)-34, (va_char)35) == (va_char)35);
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
  return "vaargs_type1_int_type2_va_char_type3_va_char";
}
