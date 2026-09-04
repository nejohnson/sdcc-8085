/* bug 3007
  type: char, int, long, long long
 */
#include <testfwk.h>

int a = 0;

void inc(void)
{
  a++;
}

void testBug(void)
{
  int i;
  for (i = 0; i < (int)300; i++)
    inc();
  ASSERT (a == (int)300);
}

int a1, a2;

void inc2(void)
{
  while(--a1)
    a2++;
}

void testBug2(void)
{
  a1 = 31;
  inc2();
  ASSERT(a1 == 0);
  ASSERT(a2 == 30);
}


void
__runSuite(void)
{
  __prints("Running testBug\n");
  testBug();
  __prints("Running testBug2\n");
  testBug2();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "bug-3007_type_int";
}
