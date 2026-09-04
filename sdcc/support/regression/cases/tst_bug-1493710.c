#include "./../tests/bug-1493710.c"

void
__runSuite(void)
{
  __prints("Running testFindPointerSet\n");
  testFindPointerSet();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-1493710.c";
}
