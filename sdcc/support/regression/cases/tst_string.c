#include "./../tests/string.c"

void
__runSuite(void)
{
  __prints("Running teststr\n");
  teststr();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "string.c";
}
