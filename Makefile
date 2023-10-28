TARGET_BASE=examples/rosco_m68k_examples
TARFILE=$(TARGET_BASE).tar.gz
ZIPFILE=$(TARGET_BASE).zip

.PHONY: all clean

all: clean $(TARFILE) $(ZIPFILE)

clean:
	rm -rf $(TARFILE) $(ZIPFILE)

$(TARFILE): firmware-* README.txt
	tar czf $@ $^

$(ZIPFILE): firmware-* README.txt
	zip -r $@ $^

