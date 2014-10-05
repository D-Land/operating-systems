cmd_arch/i386/boot/header.o := gcc -m32 -Wp,-MD,arch/i386/boot/.header.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h -Iinclude  -include include/linux/autoconf.h -g -Os -D_SETUP -D__KERNEL__  -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -include /u/OSLab/aml136/linux-2.6.23.1/arch/i386/boot/code16gcc.h -fno-strict-aliasing -fomit-frame-pointer  -ffreestanding  -fno-toplevel-reorder  -fno-stack-protector  -mpreferred-stack-boundary=2 -D__ASSEMBLY__ -DSVGA_MODE=NORMAL_VGA  -D__BIG_KERNEL__   -c -o arch/i386/boot/header.o arch/i386/boot/header.S

deps_arch/i386/boot/header.o := \
  arch/i386/boot/header.S \
    $(wildcard include/config/physical/align.h) \
    $(wildcard include/config/relocatable.h) \
  /u/OSLab/aml136/linux-2.6.23.1/arch/i386/boot/code16gcc.h \
  include/asm/segment.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/paravirt.h) \
  include/linux/utsrelease.h \
  include/asm/boot.h \
    $(wildcard include/config/physical/start.h) \
  include/asm/e820.h \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/hibernation.h) \
  include/asm/page.h \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/highmem4g.h) \
    $(wildcard include/config/highmem64g.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/flatmem.h) \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/out/of/line/pfn/to/page.h) \
  include/asm-generic/page.h \
  include/asm/setup.h \
  include/linux/pfn.h \
  arch/i386/boot/boot.h \

arch/i386/boot/header.o: $(deps_arch/i386/boot/header.o)

$(deps_arch/i386/boot/header.o):
