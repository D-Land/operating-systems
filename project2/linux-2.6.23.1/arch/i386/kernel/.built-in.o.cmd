cmd_arch/i386/kernel/built-in.o :=  ld -m elf_i386 -m elf_i386  -R arch/i386/kernel/vsyscall-syms.o -r -o arch/i386/kernel/built-in.o arch/i386/kernel/process.o arch/i386/kernel/signal.o arch/i386/kernel/entry.o arch/i386/kernel/traps.o arch/i386/kernel/irq.o arch/i386/kernel/ptrace.o arch/i386/kernel/time.o arch/i386/kernel/ioport.o arch/i386/kernel/ldt.o arch/i386/kernel/setup.o arch/i386/kernel/i8259.o arch/i386/kernel/sys_i386.o arch/i386/kernel/pci-dma.o arch/i386/kernel/i386_ksyms.o arch/i386/kernel/i387.o arch/i386/kernel/bootflag.o arch/i386/kernel/e820.o arch/i386/kernel/quirks.o arch/i386/kernel/i8237.o arch/i386/kernel/topology.o arch/i386/kernel/alternative.o arch/i386/kernel/i8253.o arch/i386/kernel/tsc.o arch/i386/kernel/cpu/built-in.o arch/i386/kernel/acpi/built-in.o arch/i386/kernel/reboot.o arch/i386/kernel/sysenter.o arch/i386/kernel/vsyscall.o arch/i386/kernel/doublefault.o arch/i386/kernel/vm86.o arch/i386/kernel/early_printk.o arch/i386/kernel/pcspeaker.o
