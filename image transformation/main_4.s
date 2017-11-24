-O0
for(int i=0; i < len; i++)
      pixels[i] = roundf((a.pixels[i] - b.pixels[i]) * t  +  b.pixels[i]);

_Z17image_transtitionPh5ImageS0_f:
.LFB5699:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	movq	%rdx, %rbx
	movq	%r8, %rsi
	movss	%xmm3, -8(%rbp)
	movl	8(%rbx), %edx
	movl	12(%rbx), %eax
	imull	%edx, %eax
	sall	$2, %eax
	movl	%eax, -88(%rbp)
	movl	$0, -84(%rbp)
.L2395:
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.L2396
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	24(%rbx), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	24(%rsi), %rcx
	movl	-84(%rbp), %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-8(%rbp), %xmm1
	movq	24(%rsi), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	addss	%xmm1, %xmm0
	call	roundf
	cvttss2si	%xmm0, %eax
	movb	%al, (%rdi)
	addl	$1, -84(%rbp)
	jmp	.L2395
.L2396:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
