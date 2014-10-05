cmd_arch/i386/boot/setup.bin := objcopy -O binary -R .note -R .comment -S -O binary arch/i386/boot/setup.elf arch/i386/boot/setup.bin
