cmd_drivers/acpi/built-in.o :=  ld -m elf_i386 -m elf_i386  -r -o drivers/acpi/built-in.o drivers/acpi/tables.o drivers/acpi/blacklist.o drivers/acpi/osl.o drivers/acpi/utils.o drivers/acpi/dispatcher/built-in.o drivers/acpi/events/built-in.o drivers/acpi/executer/built-in.o drivers/acpi/hardware/built-in.o drivers/acpi/namespace/built-in.o drivers/acpi/parser/built-in.o drivers/acpi/resources/built-in.o drivers/acpi/tables/built-in.o drivers/acpi/utilities/built-in.o drivers/acpi/sleep/built-in.o drivers/acpi/bus.o drivers/acpi/glue.o drivers/acpi/scan.o drivers/acpi/ec.o drivers/acpi/fan.o drivers/acpi/pci_root.o drivers/acpi/pci_link.o drivers/acpi/pci_irq.o drivers/acpi/pci_bind.o drivers/acpi/power.o drivers/acpi/processor.o drivers/acpi/thermal.o drivers/acpi/system.o drivers/acpi/event.o drivers/acpi/cm_sbs.o
