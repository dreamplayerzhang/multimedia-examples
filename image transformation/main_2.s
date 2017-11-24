O3
int len = a.width * a.height * 4;

  for(int i=0; i < len; i++)
      pixels[i] = roundf((a.pixels[i] - b.pixels[i]) * t  +  b.pixels[i]);

_Z17image_transtitionPh5ImageS0_f:
.LFB6904:
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
	movq	%rcx, %rbp
	movaps	%xmm3, %xmm6
	movl	8(%rdx), %esi
	movq	24(%r8), %rdi
	imull	12(%rdx), %esi
	sall	$2, %esi
	testl	%esi, %esi
	jle	.L5751
	movq	24(%rdx), %r12
	xorl	%ebx, %ebx
	.p2align 4,,10
.L5754:
	movzbl	(%rdi,%rbx), %edx
	movzbl	(%r12,%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	subl	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	call	roundf
	cvttss2si	%xmm0, %eax
	movb	%al, 0(%rbp,%rbx)
	addq	$1, %rbx
	cmpl	%ebx, %esi
	jg	.L5754
.L5751:
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
