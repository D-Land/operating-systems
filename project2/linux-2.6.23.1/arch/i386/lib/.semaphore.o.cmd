cmd_arch/i386/lib/semaphore.o := gcc -m32 -Wp,-MD,arch/i386/lib/.semaphore.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__ -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -Iinclude/asm-i386/mach-default    -c -o arch/i386/lib/semaphore.o arch/i386/lib/semaphore.S

deps_arch/i386/lib/semaphore.o := \
  arch/i386/lib/semaphore.S \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/rwsem/xchgadd/algorithm.h) \
  include/linux/linkage.h \
  include/asm/linkage.h \
    $(wildcard include/config/x86/alignment/16.h) \
  include/asm/rwlock.h \
  include/asm/alternative-asm.i \
  include/asm/frame.i \
    $(wildcard include/config/frame/pointer.h) \
  include/asm/dwarf2.h \
    $(wildcard include/config/unwind/info.h) \
    $(wildcard include/config/as/cfi/signal/frame.h) \

arch/i386/lib/semaphore.o: $(deps_arch/i386/lib/semaphore.o)

$(deps_arch/i386/lib/semaphore.o):
