# Regression test specification for the Intel 8085 target running with uCsim

# simulation timeout in cycles
SIM_CYCLES = 1000000000

ifdef SDCC_BIN_PATH
  AS = $(SDCC_BIN_PATH)/as8085$(EXEEXT)
  UC85 = $(SDCC_BIN_PATH)/ucsim_i8085$(EXEEXT)
else
  ifdef UCSIM_DIR
    UC85 = $(UCSIM_DIR)/src/sims/i8085.src/ucsim_i8085$(EXEEXT)
  else
    UC85 = $(top_builddir)/sim/ucsim/src/sims/i8085.src/ucsim_i8085$(EXEEXT)
  endif
  # Vendor as8085, not sdasz80 - the i8085 port assembles/links with the
  # vendor ASxxxx toolchain (see src/i8085/main.c _i808xVendorAsmCmd).
  AS = $(WINE) $(top_builddir)/bin/as8085$(EXEEXT)
ifndef CROSSCOMPILING
  SDCCFLAGS += --nostdinc -I$(top_srcdir)
  LINKFLAGS += --nostdlib -L$(top_builddir)/device/lib/build/i8085
endif
endif

  EMU = $(WINE) $(UC85)

ifdef CROSSCOMPILING
  SDCCFLAGS += -I$(top_srcdir)
endif

SDCCFLAGS += -mi8085 --less-pedantic --code-loc 0x0200 --data-loc 0x8000 --i-code-in-asm
LINKFLAGS += i8085.lib

OBJEXT = .rel
BINEXT = .ihx

# otherwise `make` deletes testfwk.rel and `make -j` will fail
.PRECIOUS: $(PORT_CASES_DIR)/%$(OBJEXT)

# Required extras
EXTRAS = $(PORT_CASES_DIR)/testfwk$(OBJEXT) $(PORT_CASES_DIR)/support$(OBJEXT)
include $(srcdir)/fwk/lib/spec.mk

%$(OBJEXT): %.asm
	$(AS) -plosgffw $<

_clean:
