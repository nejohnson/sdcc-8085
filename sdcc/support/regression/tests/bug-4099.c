/* bug-4099 / bug-4051
   A function declarator must not specify an array return type (N3886
   6.7.7.4p1).  SDCC used to accept this silently and then crash deep in
   the type system on the malformed return type (bug-4051's "Internal
   error: validateLink failed"), instead of diagnosing it.  This test
   covers the one shape of the fix that's runtime-testable: a function
   correctly returning a pointer to an array must still compile, link,
   and behave correctly - the array-return check must not misfire on it.
 */
#include <testfwk.h>

static int arr[3] = { 1, 2, 3 };

int (*returns_pointer_to_array (void))[3]
{
  return &arr;
}

void
testBug (void)
{
  int (*p)[3] = returns_pointer_to_array ();
  ASSERT ((*p)[0] == 1);
  ASSERT ((*p)[1] == 2);
  ASSERT ((*p)[2] == 3);
}
