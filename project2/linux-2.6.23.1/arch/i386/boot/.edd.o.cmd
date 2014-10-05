cmd_arch/i386/boot/edd.o := gcc -m32 -Wp,-MD,arch/i386/boot/.edd.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h -Iinclude  -include include/linux/autoconf.h -g -Os -D_SETUP -D__KERNEL__  -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -include /u/OSLab/aml136/linux-2.6.23.1/arch/i386/boot/code16gcc.h -fno-strict-aliasing -fomit-frame-pointer  -ffreestanding  -fno-toplevel-reorder  -fno-stack-protector  -mpreferred-stack-boundary=2 -D__BIG_KERNEL__   -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(edd)"  -D"KBUILD_MODNAME=KBUILD_STR(edd)" -c -o arch/i386/boot/edd.o arch/i386/boot/edd.c

deps_arch/i386/boot/edd.o := \
  arch/i386/boot/edd.c \
    $(wildcard include/config/edd.h) \
  /u/OSLab/aml136/linux-2.6.23.1/arch/i386/boot/code16gcc.h \
  arch/i386/boot/boot.h \
  /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stdarg.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbd.h) \
    $(wildcard include/config/lsf.h) \
    $(wildcard include/config/resources/64bit.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/enable/must/check.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/forced/inlining.h) \
  include/linux/compiler-gcc.h \
  include/asm/posix_types.h \
  include/asm/types.h \
    $(wildcard include/config/highmem64g.h) \
  include/linux/edd.h \
  include/asm/boot.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/physical/align.h) \
  include/asm/bootparam.h \
  include/linux/screen_info.h \
  include/linux/apm_bios.h \
  include/linux/ioctl.h \
  include/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/asm/e820.h \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/hibernation.h) \
  include/asm/ist.h \
  include/video/edid.h \
    $(wildcard include/config/x86.h) \

arch/i386/boot/edd.o: $(deps_arch/i386/boot/edd.o)

$(deps_arch/i386/boot/edd.o):
