#include "./../tests/c2xkeywords.c"

void
__runSuite(void)
{
  __prints("Running testC2Xkey\n");
  testC2Xkey();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "c2xkeywords.c";
}
