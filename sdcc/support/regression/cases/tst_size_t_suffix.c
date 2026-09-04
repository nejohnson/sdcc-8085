#include "./../tests/size_t_suffix.c"

void
__runSuite(void)
{
  __prints("Running testSizeTSuffix\n");
  testSizeTSuffix();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "size_t_suffix.c";
}
