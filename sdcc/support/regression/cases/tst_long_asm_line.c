#include "./../tests/long_asm_line.c"

void
__runSuite(void)
{
  __prints("Running testLongAsmLine\n");
  testLongAsmLine();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "long_asm_line.c";
}
