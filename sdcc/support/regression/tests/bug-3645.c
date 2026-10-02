/* bug-3645
   createIvalCharPtr()'s "is this a code-segment string literal" guard
   checked only SPEC_SCLS == S_CODE, which any const array object also
   has on this port (const data defaults to the code segment) - not just
   compiler-synthesized string literals. Assigning an ordinary const
   array (not a string literal) to a flexible array member took the
   string-literal branch anyway and read character data out of
   SPEC_CVAL(...).v_char, which is only meaningfully populated for real
   literals - segfault (upstream bug #3645). Fixed by also requiring
   AST_SYMBOL(iexpr)->isstrlit, the actual distinguishing fact.

   Covers the fix (assigning a const array, not a literal, to a flexible
   array member - must be diagnosed, not crash) and the legitimate case
   the code path exists for in the first place (a real string literal
   assigned to a flexible array member must still work).
 */
#include <testfwk.h>

typedef struct
{
  unsigned char x;
  const char maps[];
} test_struct;

test_struct test = {
  .x = 0,
  .maps = "hello"
};

void
testBug (void)
{
  ASSERT (test.x == 0);
  ASSERT (test.maps[0] == 'h');
  ASSERT (test.maps[4] == 'o');
  ASSERT (test.maps[5] == '\0');
}
