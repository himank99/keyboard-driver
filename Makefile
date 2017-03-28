ifeq ($(KERNELRELEASE),)

KERNELDIR ?= /usr/lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

.PHONY: build clean

build:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c *.order *.symvers
else

obj-m :=    driver.o

endif
