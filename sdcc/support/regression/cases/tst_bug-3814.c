#include "./../tests/bug-3814.c"

void
__runSuite(void)
{
  __prints("Running testisxdigit\n");
  testisxdigit();
  __prints("Running testBug\n");
  testBug();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "bug-3814.c";
}
