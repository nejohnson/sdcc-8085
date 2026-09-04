#include "./../tests/new_wide.c"

void
__runSuite(void)
{
  __prints("Running testW\n");
  testW();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "new_wide.c";
}
