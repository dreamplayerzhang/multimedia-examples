image_transtition:
.LFB6328:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
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
.L2906:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L2907
	movq	(%rbx), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	(%rsi), %rcx
	movl	-4(%rbp), %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm0, %xmm1
	mulss	56(%rbp), %xmm1
	movq	(%rsi), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	addss	%xmm1, %xmm0
	call	roundf
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	cvttss2si	%xmm0, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
	jmp	.L2906
.L2907:
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
