#include "./../tests/lonesha256.c"

void
__runSuite(void)
{
  __prints("Running testSha\n");
  testSha();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "lonesha256.c";
}
