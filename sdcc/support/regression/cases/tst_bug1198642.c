#include "./../tests/bug1198642.c"

void
__runSuite(void)
{
  __prints("Running test_cse_generic_ptr\n");
  test_cse_generic_ptr();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1198642.c";
}
