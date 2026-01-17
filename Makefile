.PHONY: all
all: sys

.PHONY: sys
sys:
	cd sys/; make

.PHONY: run
run:
	qemu-system-x86_64 -hda sys/boot/mbr.bin
