image_transtition:
.LFB7477:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movl	16(%rdx), %eax
	imull	20(%rdx), %eax
	movq	(%r8), %rsi
	sall	$2, %eax
	movq	%rcx, %rdi
	movaps	%xmm3, %xmm6
	testl	%eax, %eax
	jle	.L5929
	movq	(%rdx), %rbp
	leal	-1(%rax), %ebx
	xorl	%r12d, %r12d
	addq	$1, %rbx
	.p2align 4,,10
.L5931:
	movzbl	(%rsi,%r12), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movzbl	0(%rbp,%r12), %eax
	cvtsi2ss	%edx, %xmm1
	subl	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	call	roundf
	cvttss2si	%xmm0, %eax
	movb	%al, (%rdi,%r12)
	addq	$1, %r12
	cmpq	%r12, %rbx
	jne	.L5931
.L5929:
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
