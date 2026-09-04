#include "./../tests/bug-2807.c"

void
__runSuite(void)
{
  __prints("Running testBuzzer\n");
  testBuzzer();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2807.c";
}
