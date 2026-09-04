#include "./../tests/unreachable.c"

void
__runSuite(void)
{
  __prints("Running testUnreachable\n");
  testUnreachable();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "unreachable.c";
}
