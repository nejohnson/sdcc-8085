#include "./../tests/push_pop_sp.c"

void
__runSuite(void)
{
  __prints("Running test\n");
  test();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "push_pop_sp.c";
}
