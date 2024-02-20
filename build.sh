#!/bin/bash
echo "Building standalone ROM MEMDIAGROM.BIN"
cl65 -t none -o MEMDIAGROM.BIN mdiagrom.asm
echo "Appending Mem Diag Rom to official ROM as page 16 - ROMwDIAG.BIN"
cat x16-rom/build/x16/rom.bin MEMDIAGROM.BIN > ROMwDIAG.BIN

