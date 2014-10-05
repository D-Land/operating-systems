	.file	"asm-offsets.c"
# GNU C (GCC) version 4.4.7 20120313 (Red Hat 4.4.7-4) (x86_64-redhat-linux)
#	compiled by GNU C version 4.4.7 20120313 (Red Hat 4.4.7-4), GMP version 4.3.1, MPFR version 2.4.1.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc -Iinclude -Iinclude/asm-i386/mach-default
# -imultilib 32 -D__KERNEL__ -DCONFIG_AS_CFI=1
# -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DKBUILD_STR(s)=#s
# -DKBUILD_BASENAME=KBUILD_STR(asm_offsets)
# -DKBUILD_MODNAME=KBUILD_STR(asm_offsets) -isystem
# /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include -include
# include/linux/autoconf.h -MD arch/i386/kernel/.asm-offsets.s.d
# arch/i386/kernel/asm-offsets.c -m32 -msoft-float -mregparm=3
# -mpreferred-stack-boundary=2 -march=i386 -maccumulate-outgoing-args
# -auxbase-strip arch/i386/kernel/asm-offsets.s -Os -Wall -Wundef
# -Wstrict-prototypes -Wno-trigraphs -Werror-implicit-function-declaration
# -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-aliasing
# -fno-common -freg-struct-return -ffreestanding -fomit-frame-pointer
# -fno-stack-protector -fverbose-asm
# options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcprop-registers -fcrossjumping
# -fcse-follow-jumps -fdefer-pop -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
# -fgcse-lm -fguess-branch-probability -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-cp
# -fipa-pure-const -fipa-reference -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-register-move
# -foptimize-sibling-calls -fpeephole -fpeephole2 -freg-struct-return
# -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-interblock -fsched-spec -fsched-stalled-insns-dep -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-overflow
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-fre -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-pre -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-sra -ftree-switch-conversion
# -ftree-ter -ftree-vect-loop-version -ftree-vrp -funit-at-a-time
# -fvect-cost-model -fverbose-asm -fzero-initialized-in-bss -m32
# -m96bit-long-double -maccumulate-outgoing-args -malign-stringops
# -mfused-madd -mglibc -mieee-fp -mno-fancy-math-387 -mno-red-zone
# -mno-sse4 -mpush-args -msahf -mtls-direct-seg-refs

# Compiler executable checksum: 11481e4aa93ef024f1be70ed47ae45e3

	.text
.globl foo
	.type	foo, @function
foo:
#APP
# 40 "arch/i386/kernel/asm-offsets.c" 1
	
->SIGCONTEXT_eax $44 offsetof(struct sigcontext, eax)	#
# 0 "" 2
# 41 "arch/i386/kernel/asm-offsets.c" 1
	
->SIGCONTEXT_ebx $32 offsetof(struct sigcontext, ebx)	#
# 0 "" 2
# 42 "arch/i386/kernel/asm-offsets.c" 1
	
->SIGCONTEXT_ecx $40 offsetof(struct sigcontext, ecx)	#
# 0 "" 2
# 43 "arch/i386/kernel/asm-offsets.c" 1
	
->SIGCONTEXT_edx $36 offsetof(struct sigcontext, edx)	#
# 0 "" 2
# 44 "arch/i386/kernel/asm-offsets.c" 1
	
->SIGCONTEXT_esi $20 offsetof(struct sigcontext, esi)	#
# 0 "" 2
# 45 "arch/i386/kernel/asm-offsets.c" 1
	
->SIGCONTEXT_edi $16 offsetof(struct sigcontext, edi)	#
# 0 "" 2
# 46 "arch/i386/kernel/asm-offsets.c" 1
	
->SIGCONTEXT_ebp $24 offsetof(struct sigcontext, ebp)	#
# 0 "" 2
# 47 "arch/i386/kernel/asm-offsets.c" 1
	
->SIGCONTEXT_esp $28 offsetof(struct sigcontext, esp)	#
# 0 "" 2
# 48 "arch/i386/kernel/asm-offsets.c" 1
	
->SIGCONTEXT_eip $56 offsetof(struct sigcontext, eip)	#
# 0 "" 2
# 49 "arch/i386/kernel/asm-offsets.c" 1
	
->
# 0 "" 2
# 51 "arch/i386/kernel/asm-offsets.c" 1
	
->CPUINFO_x86 $0 offsetof(struct cpuinfo_x86, x86)	#
# 0 "" 2
# 52 "arch/i386/kernel/asm-offsets.c" 1
	
->CPUINFO_x86_vendor $1 offsetof(struct cpuinfo_x86, x86_vendor)	#
# 0 "" 2
# 53 "arch/i386/kernel/asm-offsets.c" 1
	
->CPUINFO_x86_model $2 offsetof(struct cpuinfo_x86, x86_model)	#
# 0 "" 2
# 54 "arch/i386/kernel/asm-offsets.c" 1
	
->CPUINFO_x86_mask $3 offsetof(struct cpuinfo_x86, x86_mask)	#
# 0 "" 2
# 55 "arch/i386/kernel/asm-offsets.c" 1
	
->CPUINFO_hard_math $6 offsetof(struct cpuinfo_x86, hard_math)	#
# 0 "" 2
# 56 "arch/i386/kernel/asm-offsets.c" 1
	
->CPUINFO_cpuid_level $8 offsetof(struct cpuinfo_x86, cpuid_level)	#
# 0 "" 2
# 57 "arch/i386/kernel/asm-offsets.c" 1
	
->CPUINFO_x86_capability $12 offsetof(struct cpuinfo_x86, x86_capability)	#
# 0 "" 2
# 58 "arch/i386/kernel/asm-offsets.c" 1
	
->CPUINFO_x86_vendor_id $44 offsetof(struct cpuinfo_x86, x86_vendor_id)	#
# 0 "" 2
# 59 "arch/i386/kernel/asm-offsets.c" 1
	
->
# 0 "" 2
# 61 "arch/i386/kernel/asm-offsets.c" 1
	
->TI_task $0 offsetof(struct thread_info, task)	#
# 0 "" 2
# 62 "arch/i386/kernel/asm-offsets.c" 1
	
->TI_exec_domain $4 offsetof(struct thread_info, exec_domain)	#
# 0 "" 2
# 63 "arch/i386/kernel/asm-offsets.c" 1
	
->TI_flags $8 offsetof(struct thread_info, flags)	#
# 0 "" 2
# 64 "arch/i386/kernel/asm-offsets.c" 1
	
->TI_status $12 offsetof(struct thread_info, status)	#
# 0 "" 2
# 65 "arch/i386/kernel/asm-offsets.c" 1
	
->TI_preempt_count $20 offsetof(struct thread_info, preempt_count)	#
# 0 "" 2
# 66 "arch/i386/kernel/asm-offsets.c" 1
	
->TI_addr_limit $24 offsetof(struct thread_info, addr_limit)	#
# 0 "" 2
# 67 "arch/i386/kernel/asm-offsets.c" 1
	
->TI_restart_block $32 offsetof(struct thread_info, restart_block)	#
# 0 "" 2
# 68 "arch/i386/kernel/asm-offsets.c" 1
	
->TI_sysenter_return $28 offsetof(struct thread_info, sysenter_return)	#
# 0 "" 2
# 69 "arch/i386/kernel/asm-offsets.c" 1
	
->TI_cpu $16 offsetof(struct thread_info, cpu)	#
# 0 "" 2
# 70 "arch/i386/kernel/asm-offsets.c" 1
	
->
# 0 "" 2
# 72 "arch/i386/kernel/asm-offsets.c" 1
	
->GDS_size $0 offsetof(struct Xgt_desc_struct, size)	#
# 0 "" 2
# 73 "arch/i386/kernel/asm-offsets.c" 1
	
->GDS_address $2 offsetof(struct Xgt_desc_struct, address)	#
# 0 "" 2
# 74 "arch/i386/kernel/asm-offsets.c" 1
	
->GDS_pad $6 offsetof(struct Xgt_desc_struct, pad)	#
# 0 "" 2
# 75 "arch/i386/kernel/asm-offsets.c" 1
	
->
# 0 "" 2
# 77 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_EBX $0 offsetof(struct pt_regs, ebx)	#
# 0 "" 2
# 78 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_ECX $4 offsetof(struct pt_regs, ecx)	#
# 0 "" 2
# 79 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_EDX $8 offsetof(struct pt_regs, edx)	#
# 0 "" 2
# 80 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_ESI $12 offsetof(struct pt_regs, esi)	#
# 0 "" 2
# 81 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_EDI $16 offsetof(struct pt_regs, edi)	#
# 0 "" 2
# 82 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_EBP $20 offsetof(struct pt_regs, ebp)	#
# 0 "" 2
# 83 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_EAX $24 offsetof(struct pt_regs, eax)	#
# 0 "" 2
# 84 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_DS $28 offsetof(struct pt_regs, xds)	#
# 0 "" 2
# 85 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_ES $32 offsetof(struct pt_regs, xes)	#
# 0 "" 2
# 86 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_FS $36 offsetof(struct pt_regs, xfs)	#
# 0 "" 2
# 87 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_ORIG_EAX $40 offsetof(struct pt_regs, orig_eax)	#
# 0 "" 2
# 88 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_EIP $44 offsetof(struct pt_regs, eip)	#
# 0 "" 2
# 89 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_CS $48 offsetof(struct pt_regs, xcs)	#
# 0 "" 2
# 90 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_EFLAGS $52 offsetof(struct pt_regs, eflags)	#
# 0 "" 2
# 91 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_OLDESP $56 offsetof(struct pt_regs, esp)	#
# 0 "" 2
# 92 "arch/i386/kernel/asm-offsets.c" 1
	
->PT_OLDSS $60 offsetof(struct pt_regs, xss)	#
# 0 "" 2
# 93 "arch/i386/kernel/asm-offsets.c" 1
	
->
# 0 "" 2
# 95 "arch/i386/kernel/asm-offsets.c" 1
	
->EXEC_DOMAIN_handler $4 offsetof(struct exec_domain, handler)	#
# 0 "" 2
# 96 "arch/i386/kernel/asm-offsets.c" 1
	
->RT_SIGFRAME_sigcontext $164 offsetof(struct rt_sigframe, uc.uc_mcontext)	#
# 0 "" 2
# 97 "arch/i386/kernel/asm-offsets.c" 1
	
->
# 0 "" 2
# 99 "arch/i386/kernel/asm-offsets.c" 1
	
->pbe_address $0 offsetof(struct pbe, address)	#
# 0 "" 2
# 100 "arch/i386/kernel/asm-offsets.c" 1
	
->pbe_orig_address $4 offsetof(struct pbe, orig_address)	#
# 0 "" 2
# 101 "arch/i386/kernel/asm-offsets.c" 1
	
->pbe_next $8 offsetof(struct pbe, next)	#
# 0 "" 2
# 104 "arch/i386/kernel/asm-offsets.c" 1
	
->TSS_sysenter_esp0 $-8700 offsetof(struct tss_struct, x86_tss.esp0) - sizeof(struct tss_struct)	#
# 0 "" 2
# 107 "arch/i386/kernel/asm-offsets.c" 1
	
->PAGE_SIZE_asm $4096 PAGE_SIZE	#
# 0 "" 2
# 108 "arch/i386/kernel/asm-offsets.c" 1
	
->PAGE_SHIFT_asm $12 PAGE_SHIFT	#
# 0 "" 2
# 109 "arch/i386/kernel/asm-offsets.c" 1
	
->PTRS_PER_PTE $1024 PTRS_PER_PTE	#
# 0 "" 2
# 110 "arch/i386/kernel/asm-offsets.c" 1
	
->PTRS_PER_PMD $1 PTRS_PER_PMD	#
# 0 "" 2
# 111 "arch/i386/kernel/asm-offsets.c" 1
	
->PTRS_PER_PGD $1024 PTRS_PER_PGD	#
# 0 "" 2
# 113 "arch/i386/kernel/asm-offsets.c" 1
	
->VDSO_PRELINK_asm $0 VDSO_PRELINK	#
# 0 "" 2
# 115 "arch/i386/kernel/asm-offsets.c" 1
	
->crypto_tfm_ctx_offset $32 offsetof(struct crypto_tfm, __crt_ctx)	#
# 0 "" 2
#NO_APP
	ret
	.size	foo, .-foo
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-4)"
	.section	.note.GNU-stack,"",@progbits
