cmd_arch/i386/mm/built-in.o :=  ld -m elf_i386 -m elf_i386  -r -o arch/i386/mm/built-in.o arch/i386/mm/init.o arch/i386/mm/pgtable.o arch/i386/mm/fault.o arch/i386/mm/ioremap.o arch/i386/mm/extable.o arch/i386/mm/pageattr.o arch/i386/mm/mmap.o
