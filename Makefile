all: run

clean: FORCE
	rm -rf out

bootimage:
	gn gen out
	ninja -C out

run: bootimage
	qemu-system-aarch64 \
		-machine virt   \
		-m 4096m        \
		-cpu cortex-a53 \
		-nographic -s   \
		-kernel out/bootloader

FORCE:
	

.PHONY := all clean bootimage run FORCE
