/* Regression-test support for the Intel 8085 running under ucsim_i8085.
   ucsim's i8085 has a single memory address space ("rom"), so its simif is
   memory-mapped rather than an I/O port. We talk to it through a byte pointer:
   writing 'p' followed by a character emits that character; writing 's' stops.

   The simif cell is placed at 0xffff (the very top of memory). crt0 sets
   SP = 0xffff and the stack grows downward, so PUSH writes 0xfffe and below and
   never touches 0xffff - the simif cell stays clear of the stack. uCsim.cmd
   must match this address: "set hw simif rom 0xffff". */

volatile static unsigned char *sif;

void
_putchar (unsigned char c)
{
  *sif = 'p';
  *sif = c;
}

void
_initEmu (void)
{
  sif = (unsigned char *) 0xffff;
}

void
_exitEmu (void)
{
  *sif = 's';
}
