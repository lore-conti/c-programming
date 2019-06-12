	.file	"loop_optimization.c"
	.text
.globl _plus
	.def	_plus;	.scl	2;	.type	32;	.endef
_plus:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	$0, -4(%ebp)
L2:
	cmpl	$9, -4(%ebp)
	jle	L4
	jmp	L1
L4:
	leal	-4(%ebp), %eax
	incl	(%eax)
	jmp	L2
L1:
	leave
	ret
.globl _minus1
	.def	_minus1;	.scl	2;	.type	32;	.endef
_minus1:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	$10, -4(%ebp)
L7:
	leal	-4(%ebp), %eax
	decl	(%eax)
	cmpl	$-1, -4(%ebp)
	jne	L7
	leave
	ret
.globl _minus2
	.def	_minus2;	.scl	2;	.type	32;	.endef
_minus2:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	$10, -4(%ebp)
L12:
	cmpl	$0, -4(%ebp)
	jne	L14
	jmp	L11
L14:
	leal	-4(%ebp), %eax
	decl	(%eax)
	jmp	L12
L11:
	leave
	ret
