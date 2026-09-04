#include "./../tests/far_rabbit_fields.c"

void
__runSuite(void)
{
  __prints("Running testRead\n");
  testRead();
  __prints("Running testWrite\n");
  testWrite();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "far_rabbit_fields.c";
}
