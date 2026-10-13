# Regression test specification for the enhanced-core pic14 target
# running with gpsim: a PIC16F1788 (16K words of program memory, 2KB of
# RAM), alongside the classic-core 16F877 of the pic14 port.

PIC14_DEVICE = 16f1788
PIC14_LIBS = libsdcce.lib libce.lib libme.lib

include $(PORTS_DIR)/pic14/spec.mk
