#include "./../tests/arraybounds.c"

void
__runSuite(void)
{
  __prints("Running testArraybounds\n");
  testArraybounds();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "arraybounds.c";
}
