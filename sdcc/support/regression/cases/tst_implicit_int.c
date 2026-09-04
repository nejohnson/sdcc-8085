#include "./../tests/implicit_int.c"

void
__runSuite(void)
{
  __prints("Running testint\n");
  testint();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "implicit_int.c";
}
