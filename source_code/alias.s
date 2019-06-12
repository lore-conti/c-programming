	.file	"alias.c"
	.text
.globl _func1
	.def	_func1;	.scl	2;	.type	32;	.endef
_func1:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_somefunc2
	leave
	ret
.globl _func2
	.def	_func2;	.scl	2;	.type	32;	.endef
_func2:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	_somefunc2
	leave
	ret
	.def	_somefunc2;	.scl	2;	.type	32;	.endef
