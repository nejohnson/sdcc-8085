/** Tests covering the shift operators.

    sign: signed, unsigned
    type: char, int, long
    storage: static,
    attr: volatile

    vals: 3

    pending - 1792, 851968, 1560281088, -3, -1792, -851968, -1560000000
*/
#include <testfwk.h>

void
test1ShiftClasses(void)
{
    volatile static unsigned char i, result;

    i = 30;
    ASSERT(i>>3 == 3);
    ASSERT(i<<2 == 120);

    result = i;
    result >>= 2;
    ASSERT(result == 7);

    result = i;
    result <<= 2;
    ASSERT(result == 120);
}

/* This tests for implementation-defined behaviour (right-shifting negative values).
   For sdcc the implementation defined behaviour is that right shift for arithmetic
   types is arithmetic. */
void
test2ShiftRight(void)
{
#if !defined(__SDCC_pdk13) && !defined(__SDCC_pdk14) // Lack of memory
#if !(defined (__SDCC_pdk15) && defined(__SDCC_STACK_AUTO)) // Lack of code memory
    volatile static signed char i, result;

    i = -120;
    ASSERT(i>>1 == -60);
    ASSERT(i>>2 == -30);
    ASSERT(i>>3 == -15);
    ASSERT(i>>4 == -8);
    ASSERT(i>>5 == -4);
    ASSERT(i>>6 == -2);
    ASSERT(i>>7 == -1);
    ASSERT(i>>8 == -1);
    result = i;
    result >>= 3;
    ASSERT(result == -15);
#endif
#endif
}

void
test3ShiftByteMultiples(void)
{
#if !defined(__SDCC_pdk13) // Lack of memory; we are close, though, sowith a bit more optimization, this might work.
    volatile static char i;

    i = (char)3;
    ASSERT(i>>8  == (char)(3 >> 8));
    ASSERT(i>>16 == (char)(3 >> 16));
    ASSERT(i>>24 == (char)(3 >> 24));

    i = (char)3;
    ASSERT( (char)(i<<8)  ==  (char)(3 << 8));;
    ASSERT(((char) i<<16) == ((char) 3 << 16));
    ASSERT(((char) i<<24) == ((char) 3 << 24));
#endif
}

void
test4ShiftOne(void)
{
#if !defined(__SDCC_pdk13) && !defined(__SDCC_pdk14) // Lack of memory
#if !(defined (__SDCC_pdk15) && defined(__SDCC_STACK_AUTO)) // Lack of code memory
    volatile static unsigned char i;
    unsigned char result;

    i = (char)3;

    result = i >> 1;
    ASSERT(result == (char)((char)3 >> 1));

    result = i;
    result >>= 1;
    ASSERT(result == (char)((char)3 >> 1));

    result = i << 1;
    ASSERT(result == (char)((char)3 << 1));

    result = i;
    result <<= 1;
    ASSERT(result == (char)((char)3 << 1));
#endif
#endif
}

#if !defined(__SDCC_pdk13) && !defined(__SDCC_pdk14) // Lack of memory
#if !(defined (__SDCC_pdk15) && defined(__SDCC_STACK_AUTO)) // Lack of code memory
static char ShiftLeftByParam (char count)
{
    volatile static char i;
    i = (char)3;
    return (i << count);
}

static char ShiftRightByParam (char count)
{
    volatile static char i;
    i = (char)3;
    return (i >> count);
}
#endif
#endif

void
testShiftByParam(void)
{
#if !defined(__SDCC_pdk13) && !defined(__SDCC_pdk14) // Lack of memory
#if !(defined (__SDCC_pdk15) && defined(__SDCC_STACK_AUTO)) // Lack of code memory
    ASSERT(ShiftLeftByParam(2)  == (char)(3 << 2));
    ASSERT(ShiftRightByParam(2) == (char)(3 >> 2));
#endif
#endif
}


void
__runSuite(void)
{
  __prints("Running test1ShiftClasses\n");
  test1ShiftClasses();
  __prints("Running test2ShiftRight\n");
  test2ShiftRight();
  __prints("Running test3ShiftByteMultiples\n");
  test3ShiftByteMultiples();
  __prints("Running test4ShiftOne\n");
  test4ShiftOne();
  __prints("Running testShiftByParam\n");
  testShiftByParam();
}

const int __numCases = 5;

__code const char *
__getSuiteName(void)
{
  return "shifts_sign_unsigned_type_char_storage_static_attr_volatile_vals_3";
}
