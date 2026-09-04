#include "./../tests/sfr16.c"

void
__runSuite(void)
{
  __prints("Running test_sfr\n");
  test_sfr();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "sfr16.c";
}
