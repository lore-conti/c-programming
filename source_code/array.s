	.file	"array.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	andl	$-16, %esp
	movl	$0, %eax
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %eax
	call	__alloca
	call	___main
	movl	$255, -12(%ebp)
	movl	$255, -44(%ebp)
	movl	$255, -28(%ebp)
	movl	$0, %eax
	leave
	ret
