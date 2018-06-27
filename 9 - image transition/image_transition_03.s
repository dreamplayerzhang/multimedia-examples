.LFB7482:
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
	subq	$112, %rsp
	.seh_stackalloc	112
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	movaps	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	movaps	%xmm9, 48(%rsp)
	.seh_savexmm	%xmm9, 48
	movaps	%xmm10, 64(%rsp)
	.seh_savexmm	%xmm10, 64
	movaps	%xmm11, 80(%rsp)
	.seh_savexmm	%xmm11, 80
	movaps	%xmm12, 96(%rsp)
	.seh_savexmm	%xmm12, 96
	.seh_endprologue
	movl	16(%rdx), %r9d
	imull	20(%rdx), %r9d
	sall	$2, %r9d
	testl	%r9d, %r9d
	jle	.L6006
	movq	(%rdx), %r10
	leaq	16(%rcx), %r11
	movq	(%r8), %r8
	movss	.LC22(%rip), %xmm8
	leaq	16(%r10), %rax
	subss	%xmm3, %xmm8
	cmpq	%rax, %rcx
	setnb	%dl
	cmpq	%r11, %r10
	setnb	%al
	orl	%eax, %edx
	leaq	16(%r8), %rax
	cmpq	%rax, %rcx
	setnb	%al
	cmpq	%r11, %r8
	setnb	%r11b
	orl	%r11d, %eax
	testb	%al, %dl
	je	.L6008
	cmpl	$17, %r9d
	jbe	.L6008
	leal	-1(%r9), %r11d
	movq	%rcx, %rax
	negq	%rax
	andl	$15, %eax
	leal	15(%rax), %edx
	cmpl	%edx, %r11d
	jb	.L6017
	testl	%eax, %eax
	je	.L6018
	movzbl	(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$1, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, (%rcx)
	je	.L6019
	movzbl	1(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$2, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	1(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 1(%rcx)
	je	.L6020
	movzbl	2(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$3, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	2(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 2(%rcx)
	je	.L6021
	movzbl	3(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$4, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	3(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 3(%rcx)
	je	.L6022
	movzbl	4(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$5, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	4(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 4(%rcx)
	je	.L6023
	movzbl	5(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$6, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	5(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 5(%rcx)
	je	.L6024
	movzbl	6(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$7, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	6(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 6(%rcx)
	je	.L6025
	movzbl	7(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$8, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	7(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 7(%rcx)
	je	.L6026
	movzbl	8(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$9, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	8(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 8(%rcx)
	je	.L6027
	movzbl	9(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$10, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	9(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 9(%rcx)
	je	.L6028
	movzbl	10(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$11, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	10(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 10(%rcx)
	je	.L6029
	movzbl	11(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$12, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	11(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 11(%rcx)
	je	.L6030
	movzbl	12(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$13, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	12(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 12(%rcx)
	je	.L6031
	movzbl	13(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cmpl	$14, %eax
	cvtsi2ss	%edx, %xmm0
	movzbl	13(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 13(%rcx)
	je	.L6032
	movzbl	14(%r8), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%edx, %xmm0
	movzbl	14(%r10), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, 14(%rcx)
	movl	$15, %edx
	.p2align 4,,10
.L6010:
	movl	%r9d, %r12d
	movl	%eax, %ebx
	movaps	%xmm3, %xmm7
	pxor	%xmm5, %xmm5
	subl	%eax, %r12d
	movaps	%xmm8, %xmm6
	xorl	%eax, %eax
	shufps	$0, %xmm7, %xmm7
	movl	%r12d, %ebp
	xorl	%r11d, %r11d
	shufps	$0, %xmm6, %xmm6
	pxor	%xmm4, %xmm4
	movdqa	.LC2(%rip), %xmm9
	leaq	(%r8,%rbx), %rdi
	shrl	$4, %ebp
	leaq	(%r10,%rbx), %rsi
	addq	%rcx, %rbx
	.p2align 4,,10
.L6012:
	movdqu	(%rdi,%rax), %xmm1
	addl	$1, %r11d
	movdqu	(%rsi,%rax), %xmm10
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm5, %xmm1
	movdqa	%xmm10, %xmm11
	punpcklbw	%xmm5, %xmm2
	movdqa	%xmm2, %xmm0
	punpckhwd	%xmm4, %xmm2
	punpcklbw	%xmm5, %xmm11
	movdqa	%xmm11, %xmm12
	punpcklwd	%xmm4, %xmm0
	cvtdq2ps	%xmm0, %xmm0
	punpcklwd	%xmm4, %xmm12
	mulps	%xmm7, %xmm0
	cvtdq2ps	%xmm12, %xmm12
	cvtdq2ps	%xmm2, %xmm2
	mulps	%xmm6, %xmm12
	punpckhwd	%xmm4, %xmm11
	cvtdq2ps	%xmm11, %xmm11
	punpckhbw	%xmm5, %xmm10
	mulps	%xmm6, %xmm11
	mulps	%xmm7, %xmm2
	addps	%xmm12, %xmm0
	addps	%xmm11, %xmm2
	cvttps2dq	%xmm0, %xmm0
	movdqa	%xmm0, %xmm11
	cvttps2dq	%xmm2, %xmm2
	punpckhwd	%xmm2, %xmm11
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm11, %xmm2
	punpcklwd	%xmm11, %xmm0
	movdqa	%xmm10, %xmm11
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm4, %xmm11
	cvtdq2ps	%xmm11, %xmm11
	punpckhwd	%xmm4, %xmm1
	punpcklwd	%xmm4, %xmm2
	mulps	%xmm6, %xmm11
	cvtdq2ps	%xmm2, %xmm2
	cvtdq2ps	%xmm1, %xmm1
	mulps	%xmm7, %xmm2
	punpckhwd	%xmm4, %xmm10
	cvtdq2ps	%xmm10, %xmm10
	pand	%xmm9, %xmm0
	mulps	%xmm6, %xmm10
	mulps	%xmm7, %xmm1
	addps	%xmm11, %xmm2
	addps	%xmm10, %xmm1
	cvttps2dq	%xmm2, %xmm2
	movdqa	%xmm2, %xmm10
	cvttps2dq	%xmm1, %xmm1
	punpckhwd	%xmm1, %xmm10
	punpcklwd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	punpcklwd	%xmm10, %xmm1
	punpckhwd	%xmm10, %xmm2
	punpcklwd	%xmm2, %xmm1
	pand	%xmm9, %xmm1
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, (%rbx,%rax)
	addq	$16, %rax
	cmpl	%r11d, %ebp
	ja	.L6012
	movl	%r12d, %eax
	andl	$-16, %eax
	addl	%eax, %edx
	cmpl	%eax, %r12d
	je	.L6006
.L6009:
	movslq	%edx, %rdx
	.p2align 4,,10
.L6014:
	movzbl	(%r8,%rdx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm0
	movzbl	(%r10,%rdx), %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %r9d
	jg	.L6014
.L6006:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movaps	32(%rsp), %xmm8
	movaps	48(%rsp), %xmm9
	movaps	64(%rsp), %xmm10
	movaps	80(%rsp), %xmm11
	movaps	96(%rsp), %xmm12
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L6019:
	movl	$1, %edx
	jmp	.L6010
	.p2align 4,,10
.L6008:
	subl	$1, %r9d
	xorl	%edx, %edx
	addq	$1, %r9
	.p2align 4,,10
.L6016:
	movzbl	(%r8,%rdx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm0
	movzbl	(%r10,%rdx), %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%r9, %rdx
	jne	.L6016
	jmp	.L6006
	.p2align 4,,10
