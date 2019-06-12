	.file	"loop_asm.c"
	.text
.globl _loop_plus
	.def	_loop_plus;	.scl	2;	.type	32;	.endef
_loop_plus:
	pushl	%ebp            ; gestione stack: salva l'ind. della base
	movl	%esp, %ebp      ; crea lo stack privato della funzione
	subl	$4, %esp        ; riserva lo spazio per result
	movl	$0, -4(%ebp)
L10:
	cmpl	$9, -4(%ebp)
	jle	L12
	jmp	L9
L12:
	leal	-4(%ebp), %eax
	incl	(%eax)
	jmp	L10
L9:
	leave
	ret                     ; ritorna alla routine chiamante
.globl _loop_minus
	.def	_loop_minus;	.scl	2;	.type	32;	.endef
_loop_minus:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	$10, -4(%ebp)
L15:
	cmpl	$0, -4(%ebp)
	jne	L17
	jmp	L14
L17:
	leal	-4(%ebp), %eax
	decl	(%eax)
	jmp	L15
L14:
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	andl	$-16, %esp
	movl	$0, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	call	__alloca
	call	___main
	movl	$0, %eax
	leave
	ret
