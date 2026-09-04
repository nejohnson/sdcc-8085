#include "./../tests/wcsto.c"

void
__runSuite(void)
{
  __prints("Running testWcsto\n");
  testWcsto();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "wcsto.c";
}
