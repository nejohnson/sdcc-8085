#include "./../tests/strnlen.c"

void
__runSuite(void)
{
  __prints("Running testStr\n");
  testStr();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "strnlen.c";
}
