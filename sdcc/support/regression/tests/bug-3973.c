/* bug-3973
   Only the first of several references to the same string literal in one
   aggregate initializer resolved correctly; later ones (a void* and an
   integer cast of the same literal) emitted garbage bytes instead of the
   literal's address. Root cause: constExprValue()'s "literal array in
   code segment" case marks a string literal's value SPEC_SCLS S_LITERAL
   even though val->sym genuinely points at the literal's own symbol -
   IS_LITERAL alone can't tell that apart from a true numeric constant,
   and two separate consumers (printIvalPtr, printIvalType) each took the
   numeric-literal path instead of emitting a reference to val->sym
   (upstream bug #3973).
 */
#include <testfwk.h>

struct my_data_t
{
  const char *a;
  const void *b;
  unsigned long c;
};

const struct my_data_t my_data2 = { "AAA", "AAA", (unsigned long) "AAA" };

void
testBug (void)
{
  ASSERT ((const void *) my_data2.a == my_data2.b);
  ASSERT ((unsigned long) (unsigned) (void *) my_data2.a == my_data2.c);
  ASSERT (my_data2.a[0] == 'A');
}
