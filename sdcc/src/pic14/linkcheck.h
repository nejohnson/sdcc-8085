/*-------------------------------------------------------------------------

  linkcheck.h - whole-program checks before gplink runs

   This program is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by the
   Free Software Foundation; either version 2, or (at your option) any
   later version.
-------------------------------------------------------------------------*/

#ifndef PIC14_LINKCHECK_H
#define PIC14_LINKCHECK_H

#include "common.h"

/* Check the program made of <objects> and the members of <libraries>
   (searched for in <libDirs>) that it uses; returns the number of
   errors reported. */
int pic14_linkCheck (set *objects, set *libraries, set *libDirs);

#endif
