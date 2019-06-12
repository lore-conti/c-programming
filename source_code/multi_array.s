	.file	"multi_array.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$116, %esp
	andl	$-16, %esp
	movl	$0, %eax
	movl	%eax, -116(%ebp)
	movl	-116(%ebp), %eax
	call	__alloca
	call	___main
	movl	$1, -88(%ebp)
	movl	$1, -84(%ebp)
	movl	$1, -80(%ebp)
	movl	$2, -76(%ebp)
	movl	$2, -72(%ebp)
	movl	$2, -68(%ebp)
	movl	$3, -64(%ebp)
	movl	$3, -60(%ebp)
	movl	$3, -56(%ebp)
	movl	$4, -104(%ebp)
	movl	$5, -100(%ebp)
	movl	$6, -96(%ebp)
	movl	$0, -12(%ebp)
L10:
	cmpl	$2, -12(%ebp)
	jle	L13
	jmp	L11
L13:
	movl	$0, -16(%ebp)
L14:
	cmpl	$2, -16(%ebp)
	jle	L17
	jmp	L12
L17:
	movl	-12(%ebp), %ebx
	movl	-12(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	-16(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-88(%ebp,%eax,4), %eax
	imull	-104(%ebp,%edx,4), %eax
	addl	-40(%ebp,%ecx,4), %eax
	movl	%eax, -40(%ebp,%ebx,4)
	leal	-16(%ebp), %eax
	incl	(%eax)
	jmp	L14
L12:
	leal	-12(%ebp), %eax
	incl	(%eax)
	jmp	L10
L11:
	movl	$0, -12(%ebp)
L18:
	cmpl	$2, -12(%ebp)
	jle	L21
	jmp	L19
L21:
	movl	$0, -112(%ebp)
	movl	$0, -16(%ebp)
L22:
	cmpl	$2, -16(%ebp)
	jle	L25
	jmp	L23
L25:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	-16(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	-88(%ebp,%eax,4), %eax
	imull	-104(%ebp,%edx,4), %eax
	movl	%eax, %edx
	leal	-112(%ebp), %eax
	addl	%edx, (%eax)
	leal	-16(%ebp), %eax
	incl	(%eax)
	jmp	L22
L23:
	movl	-12(%ebp), %edx
	movl	-112(%ebp), %eax
	movl	%eax, -40(%ebp,%edx,4)
	leal	-12(%ebp), %eax
	incl	(%eax)
	jmp	L18
L19:
	movl	-4(%ebp), %ebx
	leave
	ret
