#include "./../tests/modulong.c"

void
__runSuite(void)
{
  __prints("Running testMod\n");
  testMod();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "modulong.c";
}
