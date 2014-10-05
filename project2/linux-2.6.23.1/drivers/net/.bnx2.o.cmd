cmd_drivers/net/bnx2.o := gcc -m32 -Wp,-MD,drivers/net/.bnx2.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h -m32 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Os -pipe -msoft-float -mregparm=3 -freg-struct-return -mpreferred-stack-boundary=2  -march=i386 -ffreestanding -maccumulate-outgoing-args -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -Iinclude/asm-i386/mach-default -fomit-frame-pointer  -fno-stack-protector -Wdeclaration-after-statement -Wno-pointer-sign    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(bnx2)"  -D"KBUILD_MODNAME=KBUILD_STR(bnx2)" -c -o drivers/net/bnx2.o drivers/net/bnx2.c

deps_drivers/net/bnx2.o := \
  drivers/net/bnx2.c \
    $(wildcard include/config/acpi/ena.h) \
    $(wildcard include/config/reg/window/ena.h) \
    $(wildcard include/config/target/mb/word/swap.h) \
    $(wildcard include/config/core/rst/req.h) \
    $(wildcard include/config/core/rst/bsy.h) \
    $(wildcard include/config/data/byte/swap.h) \
    $(wildcard include/config/data/word/swap.h) \
    $(wildcard include/config/cntl/byte/swap.h) \
    $(wildcard include/config/cntl/word/swap.h) \
    $(wildcard include/config/cntl/ping/pong/dma.h) \
    $(wildcard include/config/one/dma.h) \
    $(wildcard include/config/knl/byp/blk/size.h) \
    $(wildcard include/config/knl/byp/blk/size/256.h) \
    $(wildcard include/config/halt/dis.h) \
    $(wildcard include/config/page/size.h) \
    $(wildcard include/config/collect/stats.h) \
    $(wildcard include/config/rx/tmr/mode.h) \
    $(wildcard include/config/tx/tmr/mode.h) \
    $(wildcard include/config/one/shot.h) \
    $(wildcard include/config/net/poll/controller.h) \
  include/linux/module.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/sysfs.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/enable/must/check.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/forced/inlining.h) \
  include/linux/compiler-gcc.h \
  include/linux/poison.h \
  include/linux/prefetch.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbd.h) \
    $(wildcard include/config/lsf.h) \
    $(wildcard include/config/resources/64bit.h) \
  include/linux/posix_types.h \
  include/asm/posix_types.h \
  include/asm/types.h \
    $(wildcard include/config/highmem64g.h) \
  include/asm/processor.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/x86/ht.h) \
    $(wildcard include/config/paravirt.h) \
    $(wildcard include/config/mk8.h) \
    $(wildcard include/config/mk7.h) \
  include/asm/vm86.h \
    $(wildcard include/config/vm86.h) \
  include/asm/ptrace.h \
  include/asm/ptrace-abi.h \
  include/asm/segment.h \
  include/asm/math_emu.h \
  include/asm/sigcontext.h \
  include/asm/page.h \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/highmem4g.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/flatmem.h) \
  include/asm-generic/pgtable-nopmd.h \
  include/asm-generic/pgtable-nopud.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/out/of/line/pfn/to/page.h) \
  include/asm-generic/page.h \
  include/asm/cpufeature.h \
  include/linux/bitops.h \
  include/asm/bitops.h \
  include/asm/alternative.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/ext2-non-atomic.h \
  include/asm-generic/bitops/le.h \
  include/asm/byteorder.h \
    $(wildcard include/config/x86/bswap.h) \
  include/linux/byteorder/little_endian.h \
  include/linux/byteorder/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/minix.h \
  include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/cmov.h) \
  include/asm/msr.h \
  include/asm/msr-index.h \
  include/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  include/linux/errno.h \
  include/asm/system.h \
    $(wildcard include/config/x86/oostore.h) \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/spinlock/sleep.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/numa.h) \
  /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include/stdarg.h \
  include/linux/linkage.h \
  include/asm/linkage.h \
    $(wildcard include/config/x86/alignment/16.h) \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  include/asm-generic/bug.h \
  include/asm/cmpxchg.h \
    $(wildcard include/config/x86/cmpxchg.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
    $(wildcard include/config/x86.h) \
  include/asm/irqflags.h \
  include/asm/processor-flags.h \
  include/linux/cache.h \
  include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/asm/percpu.h \
  include/asm-generic/percpu.h \
  include/linux/cpumask.h \
    $(wildcard include/config/hotplug/cpu.h) \
  include/linux/bitmap.h \
  include/linux/string.h \
  include/asm/string.h \
  include/linux/init.h \
    $(wildcard include/config/hotplug.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/acpi/hotplug/memory.h) \
  include/linux/stat.h \
  include/asm/stat.h \
  include/linux/time.h \
  include/linux/seqlock.h \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
  include/asm/thread_info.h \
    $(wildcard include/config/4kstacks.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  include/linux/stringify.h \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  include/linux/spinlock_types_up.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/generic/hardirqs.h) \
    $(wildcard include/config/prove/locking.h) \
  include/linux/spinlock_up.h \
  include/linux/spinlock_api_up.h \
  include/asm/atomic.h \
    $(wildcard include/config/m386.h) \
  include/asm-generic/atomic.h \
  include/linux/kmod.h \
    $(wildcard include/config/kmod.h) \
  include/linux/elf.h \
  include/linux/auxvec.h \
  include/asm/auxvec.h \
  include/linux/elf-em.h \
  include/asm/elf.h \
  include/asm/user.h \
  include/asm/desc.h \
  include/asm/ldt.h \
  include/linux/smp.h \
  include/linux/percpu.h \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/highmem.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/arch/populates/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
  include/linux/wait.h \
  include/asm/current.h \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/nodemask.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
  include/linux/notifier.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/linux/rwsem-spinlock.h \
  include/linux/srcu.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
  include/asm/topology.h \
  include/asm-generic/topology.h \
  include/linux/slab_def.h \
  include/linux/kmalloc_sizes.h \
  include/asm/mmu.h \
  include/asm/semaphore.h \
  include/linux/kobject.h \
  include/linux/sysfs.h \
  include/linux/kref.h \
  include/linux/moduleparam.h \
  include/asm/local.h \
  include/asm/module.h \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/m586.h) \
    $(wildcard include/config/m586tsc.h) \
    $(wildcard include/config/m586mmx.h) \
    $(wildcard include/config/mcore2.h) \
    $(wildcard include/config/m686.h) \
    $(wildcard include/config/mpentiumii.h) \
    $(wildcard include/config/mpentiumiii.h) \
    $(wildcard include/config/mpentiumm.h) \
    $(wildcard include/config/mpentium4.h) \
    $(wildcard include/config/mk6.h) \
    $(wildcard include/config/x86/elan.h) \
    $(wildcard include/config/mcrusoe.h) \
    $(wildcard include/config/mefficeon.h) \
    $(wildcard include/config/mwinchipc6.h) \
    $(wildcard include/config/mwinchip2.h) \
    $(wildcard include/config/mwinchip3d.h) \
    $(wildcard include/config/mcyrixiii.h) \
    $(wildcard include/config/mviac3/2.h) \
    $(wildcard include/config/mviac7.h) \
    $(wildcard include/config/mgeodegx1.h) \
    $(wildcard include/config/mgeode/lx.h) \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/jiffies.h \
  include/linux/calc64.h \
  include/asm/div64.h \
  include/linux/timex.h \
    $(wildcard include/config/no/hz.h) \
  include/asm/param.h \
    $(wildcard include/config/hz.h) \
  include/asm/timex.h \
  include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
    $(wildcard include/config/x86/generic.h) \
  include/linux/ioport.h \
  include/linux/vmalloc.h \
  include/linux/interrupt.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/proc/fs.h) \
  include/linux/irqreturn.h \
  include/linux/hardirq.h \
    $(wildcard include/config/preempt/bkl.h) \
    $(wildcard include/config/virt/cpu/accounting.h) \
  include/linux/smp_lock.h \
    $(wildcard include/config/lock/kernel.h) \
  include/asm/hardirq.h \
  include/linux/irq.h \
    $(wildcard include/config/s390.h) \
    $(wildcard include/config/irq/per/cpu.h) \
    $(wildcard include/config/irq/release/method.h) \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/irqbalance.h) \
    $(wildcard include/config/auto/irq/affinity.h) \
    $(wildcard include/config/generic/hardirqs/no//do/irq.h) \
  include/asm/irq.h \
    $(wildcard include/config/x86/local/apic.h) \
  include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/detect/softlockup.h) \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/fault/injection.h) \
  include/linux/capability.h \
  include/linux/rbtree.h \
  include/asm/cputime.h \
  include/asm-generic/cputime.h \
  include/linux/sem.h \
  include/linux/ipc.h \
  include/asm/ipcbuf.h \
  include/asm/sembuf.h \
  include/linux/signal.h \
  include/asm/signal.h \
  include/asm-generic/signal.h \
  include/asm/siginfo.h \
  include/asm-generic/siginfo.h \
  include/linux/securebits.h \
  include/linux/fs_struct.h \
  include/linux/completion.h \
  include/linux/pid.h \
  include/linux/rcupdate.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
  include/linux/futex.h \
    $(wildcard include/config/futex.h) \
  include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  include/linux/param.h \
  include/linux/resource.h \
  include/asm/resource.h \
  include/asm-generic/resource.h \
  include/linux/hrtimer.h \
  include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  include/linux/aio.h \
  include/linux/workqueue.h \
  include/linux/aio_abi.h \
  include/linux/uio.h \
  include/asm-i386/mach-default/irq_vectors.h \
  include/asm-i386/mach-default/irq_vectors_limits.h \
    $(wildcard include/config/x86/io/apic.h) \
  include/asm/irq_regs.h \
  include/asm/hw_irq.h \
  include/linux/profile.h \
    $(wildcard include/config/profiling.h) \
  include/asm/sections.h \
  include/asm-generic/sections.h \
  include/linux/irq_cpustat.h \
  include/linux/pci.h \
    $(wildcard include/config/pci/msi.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/ht/irq.h) \
    $(wildcard include/config/pci/domains.h) \
  include/linux/pci_regs.h \
  include/linux/mod_devicetable.h \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
  include/linux/klist.h \
  include/linux/pm.h \
    $(wildcard include/config/suspend.h) \
    $(wildcard include/config/pm/sleep.h) \
  include/asm/device.h \
    $(wildcard include/config/acpi.h) \
  include/linux/pci_ids.h \
  include/linux/dmapool.h \
  include/asm/io.h \
    $(wildcard include/config/x86/ppro/fence.h) \
    $(wildcard include/config/x86/numaq.h) \
  include/asm-generic/iomap.h \
  include/asm/scatterlist.h \
  include/asm/pci.h \
  include/linux/mm.h \
    $(wildcard include/config/sysctl.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/debug/pagealloc.h) \
  include/linux/prio_tree.h \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/backing-dev.h \
  include/linux/mm_types.h \
  include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  include/asm/fixmap.h \
    $(wildcard include/config/x86/visws/apic.h) \
    $(wildcard include/config/x86/f00f/bug.h) \
    $(wildcard include/config/x86/cyclone/timer.h) \
    $(wildcard include/config/pci/mmconfig.h) \
  include/asm/acpi.h \
  include/acpi/pdc_intel.h \
  include/asm/apicdef.h \
  include/asm/paravirt.h \
  include/asm/pgtable-2level-defs.h \
  include/asm/pgtable-2level.h \
  include/asm-generic/pgtable.h \
  include/linux/page-flags.h \
    $(wildcard include/config/swap.h) \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
  include/asm-generic/pci-dma-compat.h \
  include/linux/dma-mapping.h \
    $(wildcard include/config/has/dma.h) \
  include/linux/err.h \
  include/asm/dma-mapping.h \
  include/asm-generic/pci.h \
  include/linux/netdevice.h \
    $(wildcard include/config/ax25.h) \
    $(wildcard include/config/tr.h) \
    $(wildcard include/config/net/ipip.h) \
    $(wildcard include/config/net/ipgre.h) \
    $(wildcard include/config/ipv6/sit.h) \
    $(wildcard include/config/ipv6/tunnel.h) \
    $(wildcard include/config/wireless/ext.h) \
    $(wildcard include/config/netpoll.h) \
    $(wildcard include/config/netpoll/trap.h) \
    $(wildcard include/config/net/dma.h) \
    $(wildcard include/config/netdevices/multiqueue.h) \
  include/linux/if.h \
  include/linux/socket.h \
  include/asm/socket.h \
  include/asm/sockios.h \
  include/linux/sockios.h \
  include/linux/hdlc/ioctl.h \
  include/linux/if_ether.h \
  include/linux/skbuff.h \
    $(wildcard include/config/nf/conntrack.h) \
    $(wildcard include/config/bridge/netfilter.h) \
    $(wildcard include/config/vlan/8021q.h) \
    $(wildcard include/config/net/sched.h) \
    $(wildcard include/config/net/cls/act.h) \
    $(wildcard include/config/network/secmark.h) \
  include/linux/net.h \
  include/linux/random.h \
  include/linux/ioctl.h \
  include/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/linux/sysctl.h \
  include/linux/textsearch.h \
  include/net/checksum.h \
  include/asm/uaccess.h \
    $(wildcard include/config/x86/intel/usercopy.h) \
    $(wildcard include/config/x86/wp/works/ok.h) \
  include/asm/checksum.h \
  include/linux/in6.h \
  include/linux/dmaengine.h \
  include/linux/if_packet.h \
  include/linux/etherdevice.h \
  include/linux/delay.h \
  include/asm/delay.h \
  include/linux/ethtool.h \
  include/linux/mii.h \
  include/linux/if_vlan.h \
  include/net/ip.h \
    $(wildcard include/config/inet.h) \
    $(wildcard include/config/ipv6.h) \
  include/linux/ip.h \
  include/linux/in.h \
  include/net/inet_sock.h \
  include/linux/jhash.h \
  include/net/flow.h \
  include/net/sock.h \
    $(wildcard include/config/security/network.h) \
  include/linux/security.h \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/security/network/xfrm.h) \
  include/linux/fs.h \
    $(wildcard include/config/dnotify.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/inotify.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  include/linux/limits.h \
  include/linux/kdev_t.h \
  include/linux/dcache.h \
  include/linux/namei.h \
  include/linux/radix-tree.h \
  include/linux/quota.h \
  include/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/nfs_fs_i.h \
  include/linux/nfs.h \
  include/linux/sunrpc/msg_prot.h \
  include/linux/fcntl.h \
  include/asm/fcntl.h \
  include/asm-generic/fcntl.h \
    $(wildcard include/config/64bit.h) \
  include/linux/binfmts.h \
  include/linux/shm.h \
  include/asm/shmparam.h \
  include/asm/shmbuf.h \
  include/linux/msg.h \
  include/asm/msgbuf.h \
  include/linux/key.h \
  include/linux/xfrm.h \
  include/linux/filter.h \
  include/net/dst.h \
    $(wildcard include/config/net/cls/route.h) \
    $(wildcard include/config/xfrm.h) \
  include/linux/rtnetlink.h \
  include/linux/netlink.h \
  include/linux/if_link.h \
  include/linux/if_addr.h \
  include/linux/neighbour.h \
  include/net/neighbour.h \
  include/linux/seq_file.h \
  include/net/rtnetlink.h \
  include/net/netlink.h \
  include/net/request_sock.h \
  include/net/snmp.h \
  include/linux/snmp.h \
  include/net/tcp.h \
    $(wildcard include/config/tcp/md5sig.h) \
  include/linux/tcp.h \
  include/net/inet_connection_sock.h \
  include/linux/poll.h \
  include/asm/poll.h \
  include/asm-generic/poll.h \
  include/net/inet_timewait_sock.h \
  include/net/tcp_states.h \
  include/net/timewait_sock.h \
  include/linux/crypto.h \
    $(wildcard include/config/crypto.h) \
  include/linux/uaccess.h \
  include/net/inet_hashtables.h \
  include/linux/ipv6.h \
    $(wildcard include/config/ipv6/privacy.h) \
    $(wildcard include/config/ipv6/router/pref.h) \
    $(wildcard include/config/ipv6/route/info.h) \
    $(wildcard include/config/ipv6/optimistic/dad.h) \
    $(wildcard include/config/ipv6/mip6.h) \
    $(wildcard include/config/ipv6/subtrees.h) \
  include/linux/icmpv6.h \
  include/linux/udp.h \
  include/net/route.h \
  include/net/inetpeer.h \
  include/linux/in_route.h \
  include/linux/route.h \
  include/net/tcp_ecn.h \
  include/net/inet_ecn.h \
  include/net/dsfield.h \
  include/linux/crc32.h \
  include/linux/bitrev.h \
  include/linux/zlib.h \
  include/linux/zconf.h \
  drivers/net/bnx2.h \
    $(wildcard include/config/target/byte/swap.h) \
    $(wildcard include/config/reserved1.h) \
    $(wildcard include/config/clock/ctl/ena.h) \
    $(wildcard include/config/target/grc/word/swap.h) \
    $(wildcard include/config/grc/win1/swap/en.h) \
    $(wildcard include/config/grc/win2/swap/en.h) \
    $(wildcard include/config/grc/win3/swap/en.h) \
    $(wildcard include/config/asic/metal/rev.h) \
    $(wildcard include/config/asic/base/rev.h) \
    $(wildcard include/config/asic/id.h) \
    $(wildcard include/config/1.h) \
    $(wildcard include/config/1/reserved0.h) \
    $(wildcard include/config/1/read/boundary.h) \
    $(wildcard include/config/1/read/boundary/off.h) \
    $(wildcard include/config/1/read/boundary/16.h) \
    $(wildcard include/config/1/read/boundary/32.h) \
    $(wildcard include/config/1/read/boundary/64.h) \
    $(wildcard include/config/1/read/boundary/128.h) \
    $(wildcard include/config/1/read/boundary/256.h) \
    $(wildcard include/config/1/read/boundary/512.h) \
    $(wildcard include/config/1/read/boundary/1024.h) \
    $(wildcard include/config/1/write/boundary.h) \
    $(wildcard include/config/1/write/boundary/off.h) \
    $(wildcard include/config/1/write/boundary/16.h) \
    $(wildcard include/config/1/write/boundary/32.h) \
    $(wildcard include/config/1/write/boundary/64.h) \
    $(wildcard include/config/1/write/boundary/128.h) \
    $(wildcard include/config/1/write/boundary/256.h) \
    $(wildcard include/config/1/write/boundary/512.h) \
    $(wildcard include/config/1/write/boundary/1024.h) \
    $(wildcard include/config/1/reserved1.h) \
    $(wildcard include/config/2.h) \
    $(wildcard include/config/2/bar1/size.h) \
    $(wildcard include/config/2/bar1/size/disabled.h) \
    $(wildcard include/config/2/bar1/size/64k.h) \
    $(wildcard include/config/2/bar1/size/128k.h) \
    $(wildcard include/config/2/bar1/size/256k.h) \
    $(wildcard include/config/2/bar1/size/512k.h) \
    $(wildcard include/config/2/bar1/size/1m.h) \
    $(wildcard include/config/2/bar1/size/2m.h) \
    $(wildcard include/config/2/bar1/size/4m.h) \
    $(wildcard include/config/2/bar1/size/8m.h) \
    $(wildcard include/config/2/bar1/size/16m.h) \
    $(wildcard include/config/2/bar1/size/32m.h) \
    $(wildcard include/config/2/bar1/size/64m.h) \
    $(wildcard include/config/2/bar1/size/128m.h) \
    $(wildcard include/config/2/bar1/size/256m.h) \
    $(wildcard include/config/2/bar1/size/512m.h) \
    $(wildcard include/config/2/bar1/size/1g.h) \
    $(wildcard include/config/2/bar1/64ena.h) \
    $(wildcard include/config/2/exp/rom/retry.h) \
    $(wildcard include/config/2/cfg/cycle/retry.h) \
    $(wildcard include/config/2/first/cfg/done.h) \
    $(wildcard include/config/2/exp/rom/size.h) \
    $(wildcard include/config/2/exp/rom/size/disabled.h) \
    $(wildcard include/config/2/exp/rom/size/1k.h) \
    $(wildcard include/config/2/exp/rom/size/2k.h) \
    $(wildcard include/config/2/exp/rom/size/4k.h) \
    $(wildcard include/config/2/exp/rom/size/8k.h) \
    $(wildcard include/config/2/exp/rom/size/16k.h) \
    $(wildcard include/config/2/exp/rom/size/32k.h) \
    $(wildcard include/config/2/exp/rom/size/64k.h) \
    $(wildcard include/config/2/exp/rom/size/128k.h) \
    $(wildcard include/config/2/exp/rom/size/256k.h) \
    $(wildcard include/config/2/exp/rom/size/512k.h) \
    $(wildcard include/config/2/exp/rom/size/1m.h) \
    $(wildcard include/config/2/exp/rom/size/2m.h) \
    $(wildcard include/config/2/exp/rom/size/4m.h) \
    $(wildcard include/config/2/exp/rom/size/8m.h) \
    $(wildcard include/config/2/exp/rom/size/16m.h) \
    $(wildcard include/config/2/max/split/limit.h) \
    $(wildcard include/config/2/max/read/limit.h) \
    $(wildcard include/config/2/max/read/limit/512.h) \
    $(wildcard include/config/2/max/read/limit/1k.h) \
    $(wildcard include/config/2/max/read/limit/2k.h) \
    $(wildcard include/config/2/max/read/limit/4k.h) \
    $(wildcard include/config/2/force/32/bit/mstr.h) \
    $(wildcard include/config/2/force/32/bit/tgt.h) \
    $(wildcard include/config/2/keep/req/assert.h) \
    $(wildcard include/config/2/reserved0.h) \
    $(wildcard include/config/2/bar/prefetch/xi.h) \
    $(wildcard include/config/2/reserved0/xi.h) \
    $(wildcard include/config/3.h) \
    $(wildcard include/config/3/sticky/byte.h) \
    $(wildcard include/config/3/reg/sticky/byte.h) \
    $(wildcard include/config/3/force/pme.h) \
    $(wildcard include/config/3/pme/status.h) \
    $(wildcard include/config/3/pme/enable.h) \
    $(wildcard include/config/3/pm/state.h) \
    $(wildcard include/config/3/vaux/preset.h) \
    $(wildcard include/config/3/pci/power.h) \
    $(wildcard include/config/lfsr.h) \
    $(wildcard include/config/lfsr/div.h) \
    $(wildcard include/config/orig/strap/value.h) \
    $(wildcard include/config/orig/strap/value/st.h) \
    $(wildcard include/config/orig/strap/value/atmel.h) \
    $(wildcard include/config/reconfig/strap/value.h) \
    $(wildcard include/config/strap/value.h) \
    $(wildcard include/config/reserved.h) \
    $(wildcard include/config/reconfig/done.h) \
    $(wildcard include/config/done.h) \
    $(wildcard include/config/cntl/two/dma.h) \
    $(wildcard include/config/cntl/fpga/mode.h) \
    $(wildcard include/config/cntl/pci/comp/dly.h) \
    $(wildcard include/config/no/rchans/in/use.h) \
    $(wildcard include/config/no/wchans/in/use.h) \
    $(wildcard include/config/pci/clk/cmp/bits.h) \
    $(wildcard include/config/pci/fast/clk/cmp.h) \
    $(wildcard include/config/big/size.h) \
    $(wildcard include/config/big/size/none.h) \
    $(wildcard include/config/big/size/64.h) \
    $(wildcard include/config/big/size/128.h) \
    $(wildcard include/config/big/size/256.h) \
    $(wildcard include/config/big/size/512.h) \
    $(wildcard include/config/dat/wbswap/mode/xi.h) \
    $(wildcard include/config/ctl/wbswap/mode/xi.h) \
    $(wildcard include/config/max/pl/xi.h) \
    $(wildcard include/config/max/pl/128b/xi.h) \
    $(wildcard include/config/max/pl/256b/xi.h) \
    $(wildcard include/config/max/pl/512b/xi.h) \
    $(wildcard include/config/max/pl/en/xi.h) \
    $(wildcard include/config/max/rrs/xi.h) \
    $(wildcard include/config/max/rrs/128b/xi.h) \
    $(wildcard include/config/max/rrs/256b/xi.h) \
    $(wildcard include/config/max/rrs/512b/xi.h) \
    $(wildcard include/config/max/rrs/1024b/xi.h) \
    $(wildcard include/config/max/rrs/2048b/xi.h) \
    $(wildcard include/config/max/rrs/4096b/xi.h) \
    $(wildcard include/config/max/rrs/en/xi.h) \
    $(wildcard include/config/no/64swap/en/xi.h) \
    $(wildcard include/config/is/0.h) \
    $(wildcard include/config/is/0/change.h) \
    $(wildcard include/config/no/psd/hdr/cksum.h) \
    $(wildcard include/config/acpi/keep.h) \
    $(wildcard include/config/mp/keep.h) \
    $(wildcard include/config/sort/vect/val.h) \
    $(wildcard include/config/disable/wol/assert.h) \
    $(wildcard include/config/ignore/vlan.h) \
    $(wildcard include/config/rule/enable.h) \
    $(wildcard include/config/rule/enable/xi.h) \
    $(wildcard include/config/def/class.h) \
    $(wildcard include/config/knum/overwrite.h) \
    $(wildcard include/config/xoff/trip.h) \
    $(wildcard include/config/xon/trip.h) \
    $(wildcard include/config/stall/proc1.h) \
    $(wildcard include/config/stall/proc2.h) \
    $(wildcard include/config/proc1/stall/on/abort0.h) \
    $(wildcard include/config/proc1/stall/on/abort1.h) \
    $(wildcard include/config/proc1/stall/on/abort2.h) \
    $(wildcard include/config/proc1/stall/on/abort3.h) \
    $(wildcard include/config/proc1/stall/on/abort4.h) \
    $(wildcard include/config/proc1/stall/on/abort5.h) \
    $(wildcard include/config/proc2/stall/on/abort0.h) \
    $(wildcard include/config/proc2/stall/on/abort1.h) \
    $(wildcard include/config/proc2/stall/on/abort2.h) \
    $(wildcard include/config/proc2/stall/on/abort3.h) \
    $(wildcard include/config/proc2/stall/on/abort4.h) \
    $(wildcard include/config/proc2/stall/on/abort5.h) \
    $(wildcard include/config/page/size/256.h) \
    $(wildcard include/config/page/size/512.h) \
    $(wildcard include/config/page/size/1k.h) \
    $(wildcard include/config/page/size/2k.h) \
    $(wildcard include/config/page/size/4k.h) \
    $(wildcard include/config/page/size/8k.h) \
    $(wildcard include/config/page/size/16k.h) \
    $(wildcard include/config/page/size/32k.h) \
    $(wildcard include/config/page/size/64k.h) \
    $(wildcard include/config/page/size/128k.h) \
    $(wildcard include/config/page/size/256k.h) \
    $(wildcard include/config/page/size/512k.h) \
    $(wildcard include/config/page/size/1m.h) \
    $(wildcard include/config/tx/high/pri.h) \
    $(wildcard include/config/bin/mq/mode.h) \
    $(wildcard include/config/dis/idb/drop.h) \
    $(wildcard include/config/knl/byp/blk/size/512.h) \
    $(wildcard include/config/knl/byp/blk/size/1k.h) \
    $(wildcard include/config/knl/byp/blk/size/2k.h) \
    $(wildcard include/config/knl/byp/blk/size/4k.h) \
    $(wildcard include/config/max/depth.h) \
    $(wildcard include/config/cur/depth.h) \
    $(wildcard include/config/max/bds.h) \
    $(wildcard include/config/swap/mode.h) \
    $(wildcard include/config/priority.h) \
    $(wildcard include/config/cache/next/page/ptrs.h) \
    $(wildcard include/config/one/record.h) \
    $(wildcard include/config/num/dma/chan.h) \
    $(wildcard include/config/num/dma/chan/0.h) \
    $(wildcard include/config/num/dma/chan/1.h) \
    $(wildcard include/config/num/dma/chan/2.h) \
    $(wildcard include/config/num/dma/chan/3.h) \
    $(wildcard include/config/limit/sz.h) \
    $(wildcard include/config/limit/sz/64.h) \
    $(wildcard include/config/limit/sz/128.h) \
    $(wildcard include/config/limit/sz/256.h) \
    $(wildcard include/config/limit/sz/512.h) \
    $(wildcard include/config/line/sz.h) \
    $(wildcard include/config/line/sz/64.h) \
    $(wildcard include/config/line/sz/128.h) \
    $(wildcard include/config/line/sz/256.h) \
    $(wildcard include/config/line/sz/512.h) \
    $(wildcard include/config/align/ena.h) \
    $(wildcard include/config/chk/l2/bd.h) \
    $(wildcard include/config/cmpl/entry.h) \
    $(wildcard include/config/ofifo/cmp.h) \
    $(wildcard include/config/ofifo/cmp/3.h) \
    $(wildcard include/config/ofifo/cmp/2.h) \
    $(wildcard include/config/fifo/cmp.h) \
    $(wildcard include/config/ififo/depth/xi.h) \
    $(wildcard include/config/ififo/depth/0/xi.h) \
    $(wildcard include/config/ififo/depth/4/xi.h) \
    $(wildcard include/config/ififo/depth/8/xi.h) \
    $(wildcard include/config/ififo/depth/16/xi.h) \
    $(wildcard include/config/ififo/depth/32/xi.h) \
    $(wildcard include/config/ififo/depth/64/xi.h) \
    $(wildcard include/config/fifo/cmp/en/xi.h) \
    $(wildcard include/config/bytes/ost/xi.h) \
    $(wildcard include/config/bytes/ost/512/xi.h) \
    $(wildcard include/config/bytes/ost/1024/xi.h) \
    $(wildcard include/config/bytes/ost/2048/xi.h) \
    $(wildcard include/config/bytes/ost/4096/xi.h) \
    $(wildcard include/config/bytes/ost/8192/xi.h) \
    $(wildcard include/config/bytes/ost/16384/xi.h) \
    $(wildcard include/config/hc/bypass/xi.h) \
    $(wildcard include/config/lcl/mrrs/xi.h) \
    $(wildcard include/config/lcl/mrrs/128/xi.h) \
    $(wildcard include/config/lcl/mrrs/256/xi.h) \
    $(wildcard include/config/lcl/mrrs/512/xi.h) \
    $(wildcard include/config/lcl/mrrs/1024/xi.h) \
    $(wildcard include/config/lcl/mrrs/2048/xi.h) \
    $(wildcard include/config/lcl/mrrs/4096/xi.h) \
    $(wildcard include/config/lcl/mrrs/en/xi.h) \
    $(wildcard include/config/com/tmr/mode.h) \
    $(wildcard include/config/cmd/tmr/mode.h) \
    $(wildcard include/config/statistic/priority.h) \
    $(wildcard include/config/status/priority.h) \
    $(wildcard include/config/stat/mem/addr.h) \
    $(wildcard include/config/per/mode.h) \
    $(wildcard include/config/use/int/param.h) \
    $(wildcard include/config/set/mask/at/rd.h) \
    $(wildcard include/config/per/collect/limit.h) \
    $(wildcard include/config/sb/addr/inc.h) \
    $(wildcard include/config/sb/addr/inc/64b.h) \
    $(wildcard include/config/sb/addr/inc/128b.h) \
    $(wildcard include/config/sb/addr/inc/256b.h) \
    $(wildcard include/config/sb/addr/inc/512b.h) \
    $(wildcard include/config/sb/addr/inc/1024b.h) \
    $(wildcard include/config/sb/addr/inc/2048b.h) \
    $(wildcard include/config/sb/addr/inc/4096b.h) \
    $(wildcard include/config/sb/addr/inc/8192b.h) \
    $(wildcard include/config/gen/stat/avg/intr.h) \
    $(wildcard include/config/unmask/all.h) \
    $(wildcard include/config/tx/sel.h) \
    $(wildcard include/config/1/rx/tmr/mode.h) \
    $(wildcard include/config/1/tx/tmr/mode.h) \
    $(wildcard include/config/1/com/tmr/mode.h) \
    $(wildcard include/config/1/cmd/tmr/mode.h) \
    $(wildcard include/config/1/per/mode.h) \
    $(wildcard include/config/1/one/shot.h) \
    $(wildcard include/config/1/use/int/param.h) \
    $(wildcard include/config/1/per/collect/limit.h) \
    $(wildcard include/config/2/rx/tmr/mode.h) \
    $(wildcard include/config/2/tx/tmr/mode.h) \
    $(wildcard include/config/2/com/tmr/mode.h) \
    $(wildcard include/config/2/cmd/tmr/mode.h) \
    $(wildcard include/config/2/per/mode.h) \
    $(wildcard include/config/2/one/shot.h) \
    $(wildcard include/config/2/use/int/param.h) \
    $(wildcard include/config/2/per/collect/limit.h) \
    $(wildcard include/config/3/rx/tmr/mode.h) \
    $(wildcard include/config/3/tx/tmr/mode.h) \
    $(wildcard include/config/3/com/tmr/mode.h) \
    $(wildcard include/config/3/cmd/tmr/mode.h) \
    $(wildcard include/config/3/per/mode.h) \
    $(wildcard include/config/3/one/shot.h) \
    $(wildcard include/config/3/use/int/param.h) \
    $(wildcard include/config/3/per/collect/limit.h) \
    $(wildcard include/config/4.h) \
    $(wildcard include/config/4/rx/tmr/mode.h) \
    $(wildcard include/config/4/tx/tmr/mode.h) \
    $(wildcard include/config/4/com/tmr/mode.h) \
    $(wildcard include/config/4/cmd/tmr/mode.h) \
    $(wildcard include/config/4/per/mode.h) \
    $(wildcard include/config/4/one/shot.h) \
    $(wildcard include/config/4/use/int/param.h) \
    $(wildcard include/config/4/per/collect/limit.h) \
    $(wildcard include/config/5.h) \
    $(wildcard include/config/5/rx/tmr/mode.h) \
    $(wildcard include/config/5/tx/tmr/mode.h) \
    $(wildcard include/config/5/com/tmr/mode.h) \
    $(wildcard include/config/5/cmd/tmr/mode.h) \
    $(wildcard include/config/5/per/mode.h) \
    $(wildcard include/config/5/one/shot.h) \
    $(wildcard include/config/5/use/int/param.h) \
    $(wildcard include/config/5/per/collect/limit.h) \
    $(wildcard include/config/6.h) \
    $(wildcard include/config/6/rx/tmr/mode.h) \
    $(wildcard include/config/6/tx/tmr/mode.h) \
    $(wildcard include/config/6/com/tmr/mode.h) \
    $(wildcard include/config/6/cmd/tmr/mode.h) \
    $(wildcard include/config/6/per/mode.h) \
    $(wildcard include/config/6/one/shot.h) \
    $(wildcard include/config/6/use/int/param.h) \
    $(wildcard include/config/6/per/collect/limit.h) \
    $(wildcard include/config/7.h) \
    $(wildcard include/config/7/rx/tmr/mode.h) \
    $(wildcard include/config/7/tx/tmr/mode.h) \
    $(wildcard include/config/7/com/tmr/mode.h) \
    $(wildcard include/config/7/cmd/tmr/mode.h) \
    $(wildcard include/config/7/per/mode.h) \
    $(wildcard include/config/7/one/shot.h) \
    $(wildcard include/config/7/use/int/param.h) \
    $(wildcard include/config/7/per/collect/limit.h) \
    $(wildcard include/config/8.h) \
    $(wildcard include/config/8/rx/tmr/mode.h) \
    $(wildcard include/config/8/tx/tmr/mode.h) \
    $(wildcard include/config/8/com/tmr/mode.h) \
    $(wildcard include/config/8/cmd/tmr/mode.h) \
    $(wildcard include/config/8/per/mode.h) \
    $(wildcard include/config/8/one/shot.h) \
    $(wildcard include/config/8/use/int/param.h) \
    $(wildcard include/config/8/per/collect/limit.h) \
  drivers/net/bnx2_fw.h \
  drivers/net/bnx2_fw2.h \

drivers/net/bnx2.o: $(deps_drivers/net/bnx2.o)

$(deps_drivers/net/bnx2.o):
