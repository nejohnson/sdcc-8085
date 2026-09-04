#include "./../tests/offsetof.c"

void
__runSuite(void)
{
  __prints("Running testOffsetOf\n");
  testOffsetOf();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "offsetof.c";
}
