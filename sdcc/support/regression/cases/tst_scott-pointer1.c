#include "./../tests/scott-pointer1.c"

void
__runSuite(void)
{
  __prints("Running testPointer1\n");
  testPointer1();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "scott-pointer1.c";
}
