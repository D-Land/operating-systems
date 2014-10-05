cmd_arch/i386/kernel/vsyscall.lds := gcc -m32 -E -Wp,-MD,arch/i386/kernel/.vsyscall.lds.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h  -P -C -Ui386 -D__ASSEMBLY__ -o arch/i386/kernel/vsyscall.lds arch/i386/kernel/vsyscall.lds.S

deps_arch/i386/kernel/vsyscall.lds := \
  arch/i386/kernel/vsyscall.lds.S \
  include/asm/asm-offsets.h \

arch/i386/kernel/vsyscall.lds: $(deps_arch/i386/kernel/vsyscall.lds)

$(deps_arch/i386/kernel/vsyscall.lds):
