obj-m += xt_POLIMI.o
ccflags-y := -std=gnu99 -Wno-declaration-after-statement -Wno-maybe-uninitialized -Wno-unused-variable

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
