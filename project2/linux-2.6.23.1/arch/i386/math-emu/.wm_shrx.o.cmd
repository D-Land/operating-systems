cmd_arch/i386/math-emu/wm_shrx.o := gcc -m32 -Wp,-MD,arch/i386/math-emu/.wm_shrx.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h -D__ASSEMBLY__ -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -Iinclude/asm-i386/mach-default -DPARANOID   -c -o arch/i386/math-emu/wm_shrx.o arch/i386/math-emu/wm_shrx.S

deps_arch/i386/math-emu/wm_shrx.o := \
  arch/i386/math-emu/wm_shrx.S \
  arch/i386/math-emu/fpu_emu.h \
  arch/i386/math-emu/fpu_asm.h \
  include/linux/linkage.h \
  include/asm/linkage.h \
    $(wildcard include/config/x86/alignment/16.h) \

arch/i386/math-emu/wm_shrx.o: $(deps_arch/i386/math-emu/wm_shrx.o)

$(deps_arch/i386/math-emu/wm_shrx.o):
