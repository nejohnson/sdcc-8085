#include "./../tests/blake2s.c"

void
__runSuite(void)
{
  __prints("Running testBlake\n");
  testBlake();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "blake2s.c";
}
