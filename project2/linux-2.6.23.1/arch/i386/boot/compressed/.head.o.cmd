cmd_arch/i386/boot/compressed/head.o := gcc -m32 -Wp,-MD,arch/i386/boot/compressed/.head.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h -Iinclude  -include include/linux/autoconf.h -g -Os -D_SETUP -D__KERNEL__  -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -include /u/OSLab/aml136/linux-2.6.23.1/arch/i386/boot/code16gcc.h -fno-strict-aliasing -fomit-frame-pointer  -ffreestanding  -fno-toplevel-reorder  -fno-stack-protector  -mpreferred-stack-boundary=2 -D__ASSEMBLY__ -traditional   -c -o arch/i386/boot/compressed/head.o arch/i386/boot/compressed/head.S

deps_arch/i386/boot/compressed/head.o := \
  arch/i386/boot/compressed/head.S \
    $(wildcard include/config/relocatable.h) \
    $(wildcard include/config/physical/align.h) \
  /u/OSLab/aml136/linux-2.6.23.1/arch/i386/boot/code16gcc.h \
  include/linux/linkage.h \
  include/asm/linkage.h \
    $(wildcard include/config/x86/alignment/16.h) \
  include/asm/segment.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/paravirt.h) \
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
  include/asm/boot.h \
    $(wildcard include/config/physical/start.h) \

arch/i386/boot/compressed/head.o: $(deps_arch/i386/boot/compressed/head.o)

$(deps_arch/i386/boot/compressed/head.o):
