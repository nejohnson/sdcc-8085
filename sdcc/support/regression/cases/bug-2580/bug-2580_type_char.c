/** bug-2569.c
   An error in code generation for assignment of register parameters to global variables
   in __z88dk_fastcall functions when using --reserve-regs-iy

   type: char, int, long
 */

#include <testfwk.h>

unsigned char game_menu_sel;
unsigned char s_lin1;

void game_menu_back(unsigned char f_start) __z88dk_fastcall
{
    game_menu_sel = 0;
    s_lin1 = f_start;
}

void testBug(void)
{
    game_menu_back(0x55aaa5a5ul);
    ASSERT(game_menu_sel == 0);
    ASSERT(s_lin1 == (unsigned char)0x55aaa5a5ul);
}


void
__runSuite(void)
{
  __prints("Running testBug\n");
  testBug();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2580_type_char";
}
