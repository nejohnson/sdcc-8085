# Regression test specification for the pic14 target running with gpsim

# path to gpsim
ifdef GPSIM_PATH
  GPSIM = $(GPSIM_PATH)/gpsim$(EXEEXT)
else
  GPSIM = gpsim$(EXEEXT)
endif

# The generic rule puts EMU_FLAGS before the image and EMU_INPUT after
# it, which suits uCsim, where EMU_INPUT is a "< file" redirect.  gpsim
# takes both as options, so the image needs -s and the command file -I:
# with "-i -c" the -c landed immediately before the image and gpsim took
# the .cod as its command file, then sat at an interactive prompt until
# the timeout, writing "**gpsim>" forever - 36MB per test.
#
# -I rather than -c because -c changes directory to the command file's
# own, after which the relative paths the harness passes stop resolving.
EMU_INPUT = -I $(PORTS_DIR)/$(PORT_BASE)/gpsim.cmd
EMU_FLAGS = -i -s
EMU = ${WINE} ${GPSIM}

ifndef SDCC_BIN_PATH
  ifndef CROSSCOMPILING
    SDCCFLAGS += --nostdinc -I$(top_srcdir)/device/include/pic14 -I$(top_srcdir)/device/non-free/include/pic14 -I$(top_srcdir)
    LINKFLAGS += --nostdlib -L$(top_builddir)/device/lib/build/pic14 -L$(top_builddir)/device/non-free/lib/build/pic14
  else
    SDCCFLAGS += --use-non-free
  endif
else
  SDCCFLAGS += --use-non-free
endif

ifdef CROSSCOMPILING
  SDCCFLAGS += -I$(top_srcdir)
endif

SDCCFLAGS += -mpic14 -pp16f877 --less-pedantic
SDCCFLAGS += --no-warn-non-free
LINKFLAGS += libsdcc.lib libc.lib libm.lib

OBJEXT = .o
BINEXT = .cod

EXTRAS = $(PORT_CASES_DIR)/testfwk$(OBJEXT) $(PORT_CASES_DIR)/support$(OBJEXT)

# Rule to link into .ihx
%$(BINEXT): %$(OBJEXT) $(EXTRAS)
	-$(SDCC) $(SDCCFLAGS) $(LINKFLAGS) $(EXTRAS) $< -o $@

%$(OBJEXT): %.c
	-$(SDCC) $(SDCCFLAGS) -c $< -o $@

$(PORT_CASES_DIR)/%$(OBJEXT): $(PORTS_DIR)/$(PORT)/%.c
	-$(SDCC) $(SDCCFLAGS) -c $< -o $@

.PRECIOUS: gen/pic14/testfwk.o gen/pic14/support.o

$(PORT_CASES_DIR)/%$(OBJEXT): fwk/lib/%.c
	$(SDCC) $(SDCCFLAGS) -c $< -o $@

_clean:
