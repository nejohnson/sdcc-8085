/** dynamicc.c.in - test Dynamic C calling convention support.
    AFAIK the original Dynamic C only supported Z180 and the Rabbits.
    We support this calling convention for all Z80-like architectures, though.

    rtype: signed char, unsigned char, signed int, unsigned int, signed long, unsigned long
*/
#include <testfwk.h>
#include <stdarg.h>

#define VAL 0xaa55a55a

void fnoret (void) __dynamicc
{
}

signed char fret (void) __dynamicc
{
  return ((signed char)VAL);
}

signed char fpar (signed char p0, signed char p1) __dynamicc
{
  return (p0 + p1);
}

// A function that uses the stack a lot, so the frame pointer is unlikely to be omitted.
int frameptruser (char i, int j, long k, long long l)
{
  volatile int a[5];
  a[0] = i; a[1] = j; a[2] = k, a[3] = l;
  
  // __dynamicc has the caller save ix (used as framepointer by SDCC).
  a[4] = fret ();
  fnoret ();
  
  return (a[0] + a[1] + a[2] + a[3] + a[4]); // The reads from the array should use the frame pointer.
}

int fvarg(int i, ...)
{
  va_list va;
  va_start (va, i);
  i += va_arg (va, int);
  va_end (va);
  return (i);
}

void testDynamicC(void)
{
  ASSERT (fret () == (signed char)VAL);
  ASSERT (frameptruser (1, 2, 3, 4) == 1 + 2 + 3 + 4 + (int)(signed char)VAL);
  ASSERT (fpar (0x5a, 1) == 0x5b);
  ASSERT (fvarg (1, 2) == 3);
}


void
__runSuite(void)
{
  __prints("Running testDynamicC\n");
  testDynamicC();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "dynamic_rtype_signed_char";
}
