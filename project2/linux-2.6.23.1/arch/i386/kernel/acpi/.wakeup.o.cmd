cmd_arch/i386/kernel/acpi/wakeup.o := gcc -m32 -Wp,-MD,arch/i386/kernel/acpi/.wakeup.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__ -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -Iinclude/asm-i386/mach-default    -c -o arch/i386/kernel/acpi/wakeup.o arch/i386/kernel/acpi/wakeup.S

deps_arch/i386/kernel/acpi/wakeup.o := \
  arch/i386/kernel/acpi/wakeup.S \
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

arch/i386/kernel/acpi/wakeup.o: $(deps_arch/i386/kernel/acpi/wakeup.o)

$(deps_arch/i386/kernel/acpi/wakeup.o):
