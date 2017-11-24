O3
for(int i=0; i < len; i++) {
      int dif = a_pixels[i] - b_pixels[i];
      float mult = dif * t;
      int sum = mult + b_pixels[i];
      pixels[i] = roundf(sum);
  }

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
  	xorl	%r12d, %r12d
  	movq	%rcx, %rbp
  	movaps	%xmm3, %xmm6
  	movl	8(%rdx), %ebx
  	movq	24(%rdx), %rdi
  	imull	12(%rdx), %ebx
  	movq	24(%r8), %rsi
  	sall	$2, %ebx
  	testl	%ebx, %ebx
  	jle	.L5761
  	.p2align 4,,10
  .L5765:
  	movzbl	(%rsi,%r12), %eax
  	movzbl	(%rdi,%r12), %edx
  	pxor	%xmm0, %xmm0
  	pxor	%xmm1, %xmm1
  	subl	%eax, %edx
  	cvtsi2ss	%edx, %xmm0
  	cvtsi2ss	%eax, %xmm1
  	mulss	%xmm6, %xmm0
  	addss	%xmm1, %xmm0
  	cvttss2si	%xmm0, %eax
  	pxor	%xmm0, %xmm0
  	cvtsi2ss	%eax, %xmm0
  	call	roundf
  	cvttss2si	%xmm0, %eax
  	movb	%al, 0(%rbp,%r12)
  	addq	$1, %r12
  	cmpl	%r12d, %ebx
  	jg	.L5765
  .L5761:
  	movaps	32(%rsp), %xmm6
  	addq	$48, %rsp
  	popq	%rbx
  	popq	%rsi
  	popq	%rdi
  	popq	%rbp
  	popq	%r12
  	ret
