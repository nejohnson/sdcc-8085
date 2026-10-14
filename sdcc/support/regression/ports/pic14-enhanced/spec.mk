# Regression test specification for the enhanced-core pic14 target
# running with gpsim: a PIC16F1788 (16K words of program memory, 2KB of
# RAM), alongside the classic-core 16F877 of the pic14 port.

PIC14_DEVICE = 16f1788
PIC14_LIBS = libsdcce.lib libce.lib libme.lib

include $(PORTS_DIR)/pic14/spec.mk

# gpsim cannot reach program memory above 8K words on this part; link
# within 8K words so larger programs are rejected rather than mis-run.
LINKFLAGS += -Wl-s,$(PORTS_DIR)/pic14-enhanced/16f1788_8k.lkr
