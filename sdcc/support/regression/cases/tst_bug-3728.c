#include "./../tests/bug-3728.c"

void
__runSuite(void)
{
  __prints("Running teststrcmp\n");
  teststrcmp();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-3728.c";
}
