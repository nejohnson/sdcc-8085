#include "./../tests/ast_constant_folding.c"

void
__runSuite(void)
{
  __prints("Running test_ast_cf\n");
  test_ast_cf();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "ast_constant_folding.c";
}
