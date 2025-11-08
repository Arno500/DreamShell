#
# DreamShell ISO Loader
# dc-load
# (c) 2009-2020 SWAT
#

include Makefile.cfg

TARGETCFLAGS += $(DCL_CFLAGS)
LOBJECTS += $(DCL)

NAME ?= dcl

all: $(BUILD)/$(NAME).bin

$(BUILD)/$(NAME).elf: $(OBJECTS)
	$(TARGETCC) $(TARGETCFLAGS) $(TARGETLDFLAGS) -o $@ $(OBJECTS) $(LIBS)
	$(TARGETSIZE) $@
