cmd_arch/i386/boot/copy.o := gcc -m32 -Wp,-MD,arch/i386/boot/.copy.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h -Iinclude  -include include/linux/autoconf.h -g -Os -D_SETUP -D__KERNEL__  -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -include /u/OSLab/aml136/linux-2.6.23.1/arch/i386/boot/code16gcc.h -fno-strict-aliasing -fomit-frame-pointer  -ffreestanding  -fno-toplevel-reorder  -fno-stack-protector  -mpreferred-stack-boundary=2 -D__ASSEMBLY__ -DSVGA_MODE=NORMAL_VGA  -D__BIG_KERNEL__   -c -o arch/i386/boot/copy.o arch/i386/boot/copy.S

deps_arch/i386/boot/copy.o := \
  arch/i386/boot/copy.S \
  /u/OSLab/aml136/linux-2.6.23.1/arch/i386/boot/code16gcc.h \

arch/i386/boot/copy.o: $(deps_arch/i386/boot/copy.o)

$(deps_arch/i386/boot/copy.o):
