#include "./../tests/bitwise8reg.c"

void
__runSuite(void)
{
  __prints("Running test8\n");
  test8();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bitwise8reg.c";
}
