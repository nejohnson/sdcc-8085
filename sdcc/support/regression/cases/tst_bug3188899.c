#include "./../tests/bug3188899.c"

void
__runSuite(void)
{
  __prints("Running testBug3188899\n");
  testBug3188899();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug3188899.c";
}
