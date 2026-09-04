#include "./../tests/bug-500536.c"

void
__runSuite(void)
{
  __prints("Running testfs2long\n");
  testfs2long();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-500536.c";
}
