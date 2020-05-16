# Make all the releasable example programs and place them in the 
# `examples` directory. 
#
# Copyright (c)2020 Ross Bamford. See LICENSE
#

SRC=../rosco_m68k/code/software
LIBS=$(SRC)/libs
PROGS=$(SRC)/memcheck $(SRC)/68010-test $(SRC)/adventure $(SRC)/ehbasic
TARGET=examples
BASENAME=rosco_m68k_examples
TARBALL=$(TARGET)/$(BASENAME).tar.gz
ZIP=$(TARGET)/$(BASENAME).zip

CP?=cp
RM?=rm -f

all: $(TARGET) bins
	tar czf $(TARBALL) $(TARGET)/*.bin README.txt 
	zip $(ZIP) $(TARGET)/*.bin README.txt

bins: $(PROGS) $(LIBS)/build
	for d in $(PROGS); do 																			\
		$(MAKE) -C $$d clean all && $(CP) $$d/*.bin $(TARGET);		\
	done

$(TARGET):
	mkdir $@

$(LIBS)/build : $(LIBS)
	$(MAKE) -C $< install

clean:
	$(RM) $(TARGET)/*.bin $(TARBALL) $(ZIP)

.PHONY: all bins clean
