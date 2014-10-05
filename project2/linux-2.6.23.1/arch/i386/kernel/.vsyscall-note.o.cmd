cmd_arch/i386/kernel/vsyscall-note.o := gcc -m32 -Wp,-MD,arch/i386/kernel/.vsyscall-note.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__ -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -Iinclude/asm-i386/mach-default    -c -o arch/i386/kernel/vsyscall-note.o arch/i386/kernel/vsyscall-note.S

deps_arch/i386/kernel/vsyscall-note.o := \
  arch/i386/kernel/vsyscall-note.S \
    $(wildcard include/config/xen.h) \
  include/linux/version.h \
  include/linux/elfnote.h \

arch/i386/kernel/vsyscall-note.o: $(deps_arch/i386/kernel/vsyscall-note.o)

$(deps_arch/i386/kernel/vsyscall-note.o):
