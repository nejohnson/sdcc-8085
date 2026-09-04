#include "./../tests/constmodifiers.c"

void
__runSuite(void)
{
  __prints("Running testUMod\n");
  testUMod();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "constmodifiers.c";
}
