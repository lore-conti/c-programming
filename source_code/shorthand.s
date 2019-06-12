	.file	"shorthand.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	andl	$-16, %esp
	movl	$0, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	call	__alloca
	call	___main
	leal	-4(%ebp), %eax
	addl	$255, (%eax)
	leal	-4(%ebp), %eax
	addl	$255, (%eax)
	leave
	ret
