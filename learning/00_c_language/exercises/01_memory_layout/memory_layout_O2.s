	.file	"memory_layout.c"
	.text
	.p2align 4
	.globl	add
	.def	add;	.scl	2;	.type	32;	.endef
	.seh_proc	add
add:
	.seh_endprologue
	leal	(%rcx,%rdx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "%d\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	movl	$70, %edx
	leaq	.LC0(%rip), %rcx
	call	printf
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.globl	g_zero
	.bss
	.align 4
g_zero:
	.space 4
	.globl	g_init
	.data
	.align 4
g_init:
	.long	10
	.globl	g_const
	.section .rdata,"dr"
	.align 4
g_const:
	.long	100
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-Builds project) 16.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
