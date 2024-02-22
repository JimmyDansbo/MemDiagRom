
all: diag-rom.bin

SRC_FILES=$(wildcard *.asm) $(wildcard *.inc)

diag-rom.bin: $(SRC_FILES)
	cl65 -C diag.cfg -o $@ --mapfile diag-rom.map mdiagrom.asm

clean:
	rm -f diag-rom.bin

