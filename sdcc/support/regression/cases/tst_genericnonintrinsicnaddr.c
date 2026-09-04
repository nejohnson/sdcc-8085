#include "./../tests/genericnonintrinsicnaddr.c"

void
__runSuite(void)
{
  __prints("Running testGeneric\n");
  testGeneric();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "genericnonintrinsicnaddr.c";
}
