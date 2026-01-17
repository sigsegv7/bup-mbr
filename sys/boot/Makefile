.PHONY: all
all: artifacts mbr image

.PHONY: mbr
mbr:
	bup -fbin -s mbr.bup
	cat bupgen kernel.img >mbr.bin
	rm bupgen

.PHONY: image
image:
	../../unistrap/unistrap \
		-b payload.bin		\
		-k kernel.sys

.PHONY: artifacts
artifacts:
	bup -fbin -s bootstrap.bup
	mv bupgen payload.bin
	bup -felf64 kstub.bup
	ld bupgen.o -o kernel.sys -Tlink.ld
	rm bupgen.o
