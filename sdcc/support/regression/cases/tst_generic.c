#include "./../tests/generic.c"

void
__runSuite(void)
{
  __prints("Running testGeneric\n");
  testGeneric();
  __prints("Running testGenericWithType\n");
  testGenericWithType();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "generic.c";
}
