/*
   980617-1.c from the execute part of the gcc torture suite.
 */

#include <testfwk.h>

#ifdef __SDCC
#pragma std_c99
#pragma disable_warning 244 /* &i (int*) passed to foo's unsigned int* param - upstream torture test code, preserved as-is */
#endif

void foo (unsigned int * p)
{
  if ((signed char)(*p & 0xFF) == 17 || (signed char)(*p & 0xFF) == 18)
    return;
  else
    ASSERT (0);
}

void
testTortureExecute (void)
{
  int i = 0x30011;
  foo(&i);
  return;
}

