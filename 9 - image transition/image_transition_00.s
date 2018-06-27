.LFB6333:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, %rbx
	movq	%r8, %rsi
	movss	%xmm3, 56(%rbp)
	movl	16(%rbx), %edx
	movl	20(%rbx), %eax
	imull	%edx, %eax
	sall	$2, %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
.L2924:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L2925
	movq	(%rsi), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm0, %xmm1
	mulss	56(%rbp), %xmm1
	movq	(%rbx), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm2
	movss	.LC7(%rip), %xmm0
	subss	56(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	cvttss2si	%xmm0, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
	jmp	.L2924