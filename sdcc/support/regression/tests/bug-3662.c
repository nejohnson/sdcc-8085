/* bug-3662
   flushStatics() (SDCCglue.c) is called mid-codegen, from each port's own
   genXXXCode(), to flush and clear currently-pending static symbols
   (bounding memory use on files with many statics) - but it clears
   statsg->syms on every call, not just the last one, and
   outputDebugSymbols() (called once at the very end, from glue()) expects
   everything ever declared to still be there. A static/const array
   declared before the first function in the file got flushed - and its
   debug symbol silently lost - before outputDebugSymbols() ever got a
   chance to see it.

   Honest limitation: this harness (compile, link, simulate, assert on
   runtime values) has no way to check --debug output content - a test
   here can only confirm the triggering pattern still compiles, links,
   and runs correctly after the fix, which is real but doesn't guard
   against this exact bug recurring. The actual verification for this
   fix was direct inspection of the generated .adb file (compiled with
   --debug, grepped for each symbol, confirmed every one of 12 statics
   declared both before and after a function appeared exactly once) -
   recorded in the commit message, not re-checked here automatically.
 */
#include <testfwk.h>

unsigned char array_ram_1[4];
static unsigned char array_s_ram_1[4];
const unsigned char array_const_1[] = { 1, 2, 3, 4 };
static const unsigned char array_s_const_1[] = { 1, 2, 3, 4 };

void
dummyFunc (void)
{
}

void
testBug (void)
{
  array_ram_1[0] = array_const_1[0];
  array_s_ram_1[0] = array_s_const_1[0];
  ASSERT (array_ram_1[0] == 1);
  ASSERT (array_s_ram_1[0] == 1);
}
