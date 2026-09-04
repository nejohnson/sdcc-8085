#include "./../tests/rand.c"

void
__runSuite(void)
{
  __prints("Running testRand\n");
  testRand();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "rand.c";
}
