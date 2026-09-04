/*
   bug-2601.c
   mem: __idata, __xdata,
*/

#include <testfwk.h>

unsigned char __idata *p;
unsigned char __idata *a;
signed char b;

void f(void)
{
    p = a + b;
}

void g(void)
{
    p = b + a;
}

unsigned char __idata c[2] = {23, 42};

void testBug(void)
{
	a = c + 1;
	b = -1;

	p = 0;
	f();
	ASSERT(*p == 23);

	p = 0;
	g();
	ASSERT(*p == 23);
}

void
__runSuite(void)
{
  __prints("Running testBug\n");
  testBug();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2601_mem___idata";
}
