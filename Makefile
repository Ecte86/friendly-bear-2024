PROJECT=friendlyBear
CC=oscar64
SRCDIR=src
SOURCES=$(wildcard $(SRCDIR)/*.c*)
BINDIR=bin
BIN=$(BINDIR)/$(PROJECT).prg

.PHONY: build clean run

build:
	@mkdir -p $(BINDIR)
	$(CC) -o=$(BIN) $(SOURCES)

run: build
	$(shell x64sc $(BIN) &)

clean:
	rm -rf $(BINDIR)