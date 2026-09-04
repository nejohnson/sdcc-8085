#include "./../tests/bug-2529.c"

void
__runSuite(void)
{
  __prints("Running testConst\n");
  testConst();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2529.c";
}
