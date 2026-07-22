/* Regression-test support for the Intel 8085 running under ucsim_i8085.
   ucsim's simif for the 8085 is memory-mapped (like the mos6502 port), so we
   talk to it through a byte pointer rather than an I/O port. Writing 'p'
   followed by a character emits that character; writing 's' stops. */

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
  sif = (unsigned char *) 0xfff0;
}

void
_exitEmu (void)
{
  *sif = 's';
}
