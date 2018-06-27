	.file	"main.cpp"
	.text
	.p2align 4,,15
	.def	_ZL21stbi__mad3sizes_validiiii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21stbi__mad3sizes_validiiii
_ZL21stbi__mad3sizes_validiiii:
.LFB828:
	.seh_endprologue
	testl	%edx, %edx
	movl	%edx, %r10d
	js	.L5
	testl	%ecx, %ecx
	js	.L5
	testl	%edx, %edx
	jne	.L16
.L3:
	xorl	%r11d, %r11d
	testl	%r8d, %r8d
	js	.L1
	imull	%r10d, %ecx
	testl	%r8d, %r8d
	jne	.L17
.L4:
	imull	%r8d, %ecx
	movl	$2147483647, %eax
	xorl	%r11d, %r11d
	subl	%r9d, %eax
	cmpl	%ecx, %eax
	setge	%r11b
.L1:
	movl	%r11d, %eax
	ret
	.p2align 4,,10
.L16:
	movl	$2147483647, %eax
	xorl	%r11d, %r11d
	cltd
	idivl	%r10d
	cmpl	%eax, %ecx
	jle	.L3
	movl	%r11d, %eax
	ret
	.p2align 4,,10
.L5:
	xorl	%r11d, %r11d
	movl	%r11d, %eax
	ret
	.p2align 4,,10
.L17:
	movl	$2147483647, %eax
	cltd
	idivl	%r8d
	cmpl	%eax, %ecx
	jle	.L4
	jmp	.L1
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14resample_row_1PhS_S_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14resample_row_1PhS_S_ii
_ZL14resample_row_1PhS_S_ii:
.LFB900:
	.seh_endprologue
	movq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22stbi__resample_row_v_2PhS_S_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbi__resample_row_v_2PhS_S_ii
_ZL22stbi__resample_row_v_2PhS_S_ii:
.LFB901:
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
	subq	$96, %rsp
	.seh_stackalloc	96
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
	.seh_endprologue
	testl	%r9d, %r9d
	movq	%rcx, %rax
	jle	.L20
	leaq	16(%rcx), %r10
	leaq	16(%rdx), %rcx
	cmpq	%rcx, %rax
	setnb	%cl
	cmpq	%r10, %rdx
	setnb	%r11b
	orl	%r11d, %ecx
	cmpl	$18, %r9d
	seta	%r11b
	testb	%r11b, %cl
	je	.L21
	leaq	16(%r8), %rcx
	cmpq	%rcx, %rax
	setnb	%r11b
	cmpq	%r10, %r8
	setnb	%cl
	orb	%cl, %r11b
	je	.L21
	leal	-1(%r9), %r11d
	movq	%rdx, %rcx
	negq	%rcx
	andl	$15, %ecx
	leal	15(%rcx), %r10d
	cmpl	%r10d, %r11d
	jb	.L30
	testl	%ecx, %ecx
	je	.L31
	movzbl	(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$1, %ecx
	movb	%r10b, (%rax)
	je	.L32
	movzbl	1(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	1(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$2, %ecx
	movb	%r10b, 1(%rax)
	je	.L33
	movzbl	2(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	2(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$3, %ecx
	movb	%r10b, 2(%rax)
	je	.L34
	movzbl	3(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	3(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$4, %ecx
	movb	%r10b, 3(%rax)
	je	.L35
	movzbl	4(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	4(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$5, %ecx
	movb	%r10b, 4(%rax)
	je	.L36
	movzbl	5(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	5(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$6, %ecx
	movb	%r10b, 5(%rax)
	je	.L37
	movzbl	6(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	6(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$7, %ecx
	movb	%r10b, 6(%rax)
	je	.L38
	movzbl	7(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	7(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$8, %ecx
	movb	%r10b, 7(%rax)
	je	.L39
	movzbl	8(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	8(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$9, %ecx
	movb	%r10b, 8(%rax)
	je	.L40
	movzbl	9(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	9(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$10, %ecx
	movb	%r10b, 9(%rax)
	je	.L41
	movzbl	10(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	10(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$11, %ecx
	movb	%r10b, 10(%rax)
	je	.L42
	movzbl	11(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	11(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$12, %ecx
	movb	%r10b, 11(%rax)
	je	.L43
	movzbl	12(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	12(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$13, %ecx
	movb	%r10b, 12(%rax)
	je	.L44
	movzbl	13(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	13(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$14, %ecx
	movb	%r10b, 13(%rax)
	je	.L45
	movzbl	14(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	14(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, 14(%rax)
	movl	$15, %r10d
	.p2align 4,,10
.L23:
	movl	%r9d, %r12d
	movl	%ecx, %ebx
	movdqa	.LC0(%rip), %xmm6
	xorl	%r11d, %r11d
	leaq	(%rdx,%rbx), %rdi
	subl	%ecx, %r12d
	xorl	%ecx, %ecx
	pxor	%xmm4, %xmm4
	movl	%r12d, %ebp
	movdqa	.LC1(%rip), %xmm5
	pxor	%xmm3, %xmm3
	movdqa	.LC2(%rip), %xmm7
	leaq	(%r8,%rbx), %rsi
	shrl	$4, %ebp
	addq	%rax, %rbx
	.p2align 4,,10
.L25:
	movdqa	(%rdi,%r11), %xmm8
	movdqa	%xmm6, %xmm1
	addl	$1, %ecx
	movdqu	(%rsi,%r11), %xmm2
	movdqa	%xmm8, %xmm10
	movdqa	%xmm8, %xmm9
	punpcklbw	%xmm4, %xmm10
	pmullw	%xmm10, %xmm1
	movdqa	%xmm2, %xmm8
	punpckhbw	%xmm4, %xmm9
	pmulhw	%xmm6, %xmm10
	punpcklbw	%xmm4, %xmm8
	movdqa	%xmm8, %xmm0
	punpckhbw	%xmm4, %xmm2
	punpcklwd	%xmm3, %xmm0
	movdqa	%xmm1, %xmm11
	punpcklwd	%xmm10, %xmm11
	punpckhwd	%xmm10, %xmm1
	paddd	%xmm11, %xmm0
	movdqa	%xmm1, %xmm10
	movdqa	%xmm8, %xmm1
	paddd	%xmm5, %xmm0
	punpckhwd	%xmm3, %xmm1
	paddd	%xmm10, %xmm1
	psrad	$2, %xmm0
	movdqa	%xmm6, %xmm10
	paddd	%xmm5, %xmm1
	pmullw	%xmm9, %xmm10
	movdqa	%xmm0, %xmm8
	psrad	$2, %xmm1
	punpckhwd	%xmm1, %xmm8
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm8, %xmm0
	punpckhwd	%xmm8, %xmm1
	movdqa	%xmm9, %xmm8
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm10, %xmm9
	pmulhw	%xmm6, %xmm8
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm3, %xmm2
	pand	%xmm7, %xmm0
	punpcklwd	%xmm3, %xmm1
	punpcklwd	%xmm8, %xmm9
	paddd	%xmm9, %xmm1
	punpckhwd	%xmm8, %xmm10
	paddd	%xmm10, %xmm2
	paddd	%xmm5, %xmm1
	paddd	%xmm5, %xmm2
	psrad	$2, %xmm1
	psrad	$2, %xmm2
	movdqa	%xmm1, %xmm8
	punpckhwd	%xmm2, %xmm8
	punpcklwd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm8, %xmm1
	punpckhwd	%xmm8, %xmm2
	punpcklwd	%xmm2, %xmm1
	pand	%xmm7, %xmm1
	packuswb	%xmm1, %xmm0
	movups	%xmm0, (%rbx,%r11)
	addq	$16, %r11
	cmpl	%ecx, %ebp
	ja	.L25
	movl	%r12d, %ecx
	andl	$-16, %ecx
	addl	%ecx, %r10d
	cmpl	%ecx, %r12d
	je	.L20
.L22:
	movslq	%r10d, %r10
	.p2align 4,,10
.L27:
	movzbl	(%rdx,%r10), %ecx
	leal	(%rcx,%rcx,2), %r11d
	movzbl	(%r8,%r10), %ecx
	leal	2(%r11,%rcx), %r11d
	sarl	$2, %r11d
	movb	%r11b, (%rax,%r10)
	addq	$1, %r10
	cmpl	%r10d, %r9d
	jg	.L27
.L20:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movaps	32(%rsp), %xmm8
	movaps	48(%rsp), %xmm9
	movaps	64(%rsp), %xmm10
	movaps	80(%rsp), %xmm11
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L32:
	movl	$1, %r10d
	jmp	.L23
	.p2align 4,,10
.L21:
	leal	-1(%r9), %r11d
	xorl	%ecx, %ecx
	addq	$1, %r11
	.p2align 4,,10
.L29:
	movzbl	(%rdx,%rcx), %r9d
	leal	(%r9,%r9,2), %r10d
	movzbl	(%r8,%rcx), %r9d
	leal	2(%r10,%r9), %r9d
	sarl	$2, %r9d
	movb	%r9b, (%rax,%rcx)
	addq	$1, %rcx
	cmpq	%r11, %rcx
	jne	.L29
	jmp	.L20
	.p2align 4,,10
.L33:
	movl	$2, %r10d
	jmp	.L23
	.p2align 4,,10
.L30:
	xorl	%r10d, %r10d
	jmp	.L22
	.p2align 4,,10
.L34:
	movl	$3, %r10d
	jmp	.L23
	.p2align 4,,10
.L35:
	movl	$4, %r10d
	jmp	.L23
.L38:
	movl	$7, %r10d
	jmp	.L23
	.p2align 4,,10
.L36:
	movl	$5, %r10d
	jmp	.L23
.L37:
	movl	$6, %r10d
	jmp	.L23
.L31:
	xorl	%r10d, %r10d
	jmp	.L23
.L39:
	movl	$8, %r10d
	jmp	.L23
.L40:
	movl	$9, %r10d
	jmp	.L23
.L41:
	movl	$10, %r10d
	jmp	.L23
.L42:
	movl	$11, %r10d
	jmp	.L23
.L43:
	movl	$12, %r10d
	jmp	.L23
.L44:
	movl	$13, %r10d
	jmp	.L23
.L45:
	movl	$14, %r10d
	jmp	.L23
	.seh_endproc
	.p2align 4,,15
	.def	_ZL26stbi__resample_row_genericPhS_S_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL26stbi__resample_row_genericPhS_S_ii
_ZL26stbi__resample_row_genericPhS_S_ii:
.LFB905:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$24, %rsp
	.seh_stackalloc	24
	.seh_endprologue
	movl	128(%rsp), %edi
	testl	%r9d, %r9d
	movq	%rcx, %rax
	jle	.L54
	testl	%edi, %edi
	jle	.L54
	movslq	%edi, %r14
	movl	%ecx, %r12d
	movq	%rax, %rsi
	leal	-1(%rdi), %r8d
	movl	%r14d, %ebx
	negl	%r12d
	leal	-1(%r9), %ecx
	negl	%ebx
	movl	%r8d, 4(%rsp)
	movl	%ebx, (%rsp)
	leaq	1(%r8), %rbx
	leaq	1(%rdx,%rcx), %r15
	movq	%rbx, 8(%rsp)
	movl	$1, %ecx
	.p2align 4,,10
.L62:
	leaq	(%r14,%rsi), %r8
	movq	%rdx, %r10
	movq	%rsi, %r13
	addq	$1, %rdx
	subq	%rax, %r13
	cmpq	%r8, %r10
	setnb	%r9b
	cmpq	%rdx, %rsi
	setnb	%r8b
	orb	%r8b, %r9b
	je	.L56
	cmpl	$22, %edi
	jbe	.L56
	movl	%r12d, %r8d
	andl	$15, %r8d
	leal	15(%r8), %r9d
	cmpl	%r9d, 4(%rsp)
	jb	.L67
	testl	%r8d, %r8d
	je	.L68
	movzbl	(%r10), %r9d
	cmpl	$1, %r8d
	movb	%r9b, (%rsi)
	je	.L69
	movzbl	(%r10), %r11d
	movslq	%ecx, %r9
	cmpl	$2, %r8d
	movb	%r11b, (%rax,%r9)
	je	.L70
	movzbl	(%r10), %r11d
	leal	1(%rcx), %r9d
	cmpl	$3, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L71
	movzbl	(%r10), %r11d
	leal	2(%rcx), %r9d
	cmpl	$4, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L72
	movzbl	(%r10), %r11d
	leal	3(%rcx), %r9d
	cmpl	$5, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L73
	movzbl	(%r10), %r11d
	leal	4(%rcx), %r9d
	cmpl	$6, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L74
	movzbl	(%r10), %r11d
	leal	5(%rcx), %r9d
	cmpl	$7, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L75
	movzbl	(%r10), %r11d
	leal	6(%rcx), %r9d
	cmpl	$8, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L76
	movzbl	(%r10), %r11d
	leal	7(%rcx), %r9d
	cmpl	$9, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L77
	movzbl	(%r10), %r11d
	leal	8(%rcx), %r9d
	cmpl	$10, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L78
	movzbl	(%r10), %r11d
	leal	9(%rcx), %r9d
	cmpl	$11, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L79
	movzbl	(%r10), %r11d
	leal	10(%rcx), %r9d
	cmpl	$12, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L80
	movzbl	(%r10), %r11d
	leal	11(%rcx), %r9d
	cmpl	$13, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L81
	movzbl	(%r10), %r11d
	leal	12(%rcx), %r9d
	cmpl	$14, %r8d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	je	.L82
	movzbl	(%r10), %r11d
	leal	13(%rcx), %r9d
	movslq	%r9d, %r9
	movb	%r11b, (%rax,%r9)
	movl	$15, %r9d
	.p2align 4,,10
.L58:
	movzbl	(%r10), %ebx
	movl	%edi, %ebp
	addq	%r8, %r13
	subl	%r8d, %ebp
	addq	%rax, %r13
	xorl	%r8d, %r8d
	movl	%ebp, %r11d
	shrl	$4, %r11d
	movd	%ebx, %xmm0
	punpcklbw	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	.p2align 4,,10
.L61:
	addl	$1, %r8d
	movaps	%xmm0, 0(%r13)
	addq	$16, %r13
	cmpl	%r8d, %r11d
	ja	.L61
	movl	%ebp, %r8d
	andl	$-16, %r8d
	addl	%r8d, %r9d
	cmpl	%r8d, %ebp
	je	.L65
.L57:
	movslq	%r9d, %r9
	.p2align 4,,10
.L64:
	movzbl	(%r10), %r8d
	movb	%r8b, (%rsi,%r9)
	addq	$1, %r9
	cmpl	%r9d, %edi
	jg	.L64
.L65:
	addq	%r14, %rsi
	addl	(%rsp), %r12d
	addl	%edi, %ecx
	cmpq	%rdx, %r15
	jne	.L62
.L54:
	addq	$24, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L56:
	movq	8(%rsp), %rbx
	movq	%rsi, %r8
	leaq	(%rbx,%rsi), %r11
	.p2align 4,,10
.L66:
	movzbl	(%r10), %r9d
	addq	$1, %r8
	movb	%r9b, -1(%r8)
	cmpq	%r11, %r8
	jne	.L66
	addq	%r14, %rsi
	addl	(%rsp), %r12d
	addl	%edi, %ecx
	cmpq	%rdx, %r15
	jne	.L62
	jmp	.L54
	.p2align 4,,10
.L69:
	movl	$1, %r9d
	jmp	.L58
	.p2align 4,,10
.L70:
	movl	$2, %r9d
	jmp	.L58
	.p2align 4,,10
.L67:
	xorl	%r9d, %r9d
	jmp	.L57
	.p2align 4,,10
.L71:
	movl	$3, %r9d
	jmp	.L58
	.p2align 4,,10
.L72:
	movl	$4, %r9d
	jmp	.L58
	.p2align 4,,10
.L73:
	movl	$5, %r9d
	jmp	.L58
.L74:
	movl	$6, %r9d
	jmp	.L58
.L68:
	xorl	%r9d, %r9d
	jmp	.L58
.L80:
	movl	$12, %r9d
	jmp	.L58
.L75:
	movl	$7, %r9d
	jmp	.L58
.L76:
	movl	$8, %r9d
	jmp	.L58
.L77:
	movl	$9, %r9d
	jmp	.L58
.L78:
	movl	$10, %r9d
	jmp	.L58
.L79:
	movl	$11, %r9d
	jmp	.L58
.L81:
	movl	$13, %r9d
	jmp	.L58
.L82:
	movl	$14, %r9d
	jmp	.L58
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14stbi__high_bitj;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__high_bitj
_ZL14stbi__high_bitj:
.LFB956:
	.seh_endprologue
	testl	%ecx, %ecx
	je	.L95
	cmpl	$65535, %ecx
	ja	.L99
	movl	$8, %edx
	xorl	%eax, %eax
.L91:
	cmpl	$255, %ecx
	jbe	.L92
	shrl	$8, %ecx
	movl	%edx, %eax
.L92:
	cmpl	$15, %ecx
	jbe	.L93
	addl	$4, %eax
	shrl	$4, %ecx
.L93:
	cmpl	$3, %ecx
	jbe	.L94
	addl	$2, %eax
	shrl	$2, %ecx
.L94:
	xorl	%edx, %edx
	cmpl	$1, %ecx
	setne	%dl
	addl	%edx, %eax
	ret
	.p2align 4,,10
.L99:
	shrl	$16, %ecx
	movl	$24, %edx
	movl	$16, %eax
	jmp	.L91
	.p2align 4,,10
.L95:
	movl	$-1, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL18stbi__out_gif_codeP9stbi__gift;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18stbi__out_gif_codeP9stbi__gift
_ZL18stbi__out_gif_codeP9stbi__gift:
.LFB981:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	%dx, %edx
	movq	%rcx, %rbx
	leaq	(%rcx,%rdx,4), %rsi
	movswl	2096(%rsi), %edx
	testw	%dx, %dx
	jns	.L109
.L101:
	movl	18520(%rbx), %edx
	cmpl	18512(%rbx), %edx
	jge	.L100
	movzbl	2099(%rsi), %eax
	movl	18516(%rbx), %ecx
	sall	$2, %eax
	cltq
	addq	18480(%rbx), %rax
	cmpb	$0, 3(%rax)
	js	.L110
.L104:
	leal	4(%rcx), %edx
	cmpl	18508(%rbx), %edx
	movl	%edx, 18516(%rbx)
	jl	.L100
	movl	18500(%rbx), %eax
	movl	18512(%rbx), %r8d
	movl	%eax, 18516(%rbx)
	movl	18492(%rbx), %eax
	addl	18520(%rbx), %eax
	cmpl	%r8d, %eax
	movl	%eax, 18520(%rbx)
	jl	.L100
	movl	18488(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.L100
	movl	18524(%rbx), %r10d
	movl	18504(%rbx), %r9d
	jmp	.L106
	.p2align 4,,10
.L107:
	testl	%ecx, %ecx
	je	.L111
.L106:
	movl	%r10d, %edx
	sall	%cl, %edx
	subl	$1, %ecx
	movl	%edx, %eax
	sarl	%eax
	addl	%r9d, %eax
	cmpl	%r8d, %eax
	jge	.L107
	movl	%edx, 18492(%rbx)
	movl	%eax, 18520(%rbx)
	movl	%ecx, 18488(%rbx)
.L100:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L109:
	call	_ZL18stbi__out_gif_codeP9stbi__gift
	jmp	.L101
	.p2align 4,,10
.L110:
	addl	%ecx, %edx
	movzbl	2(%rax), %ecx
	movslq	%edx, %rdx
	addq	8(%rbx), %rdx
	movb	%cl, (%rdx)
	movzbl	1(%rax), %ecx
	movb	%cl, 1(%rdx)
	movzbl	(%rax), %ecx
	movb	%cl, 2(%rdx)
	movzbl	3(%rax), %eax
	movb	%al, 3(%rdx)
	movl	18516(%rbx), %ecx
	jmp	.L104
.L111:
	movl	%edx, 18492(%rbx)
	movl	%eax, 18520(%rbx)
	movl	$0, 18488(%rbx)
	jmp	.L100
	.seh_endproc
	.p2align 4,,15
	.globl	_Z37ImGui_ImplGlfwGL3_MouseButtonCallbackP10GLFWwindowiii
	.def	_Z37ImGui_ImplGlfwGL3_MouseButtonCallbackP10GLFWwindowiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z37ImGui_ImplGlfwGL3_MouseButtonCallbackP10GLFWwindowiii
_Z37ImGui_ImplGlfwGL3_MouseButtonCallbackP10GLFWwindowiii:
.LFB7460:
	.seh_endprologue
	cmpl	$1, %r8d
	jne	.L112
	cmpl	$2, %edx
	jbe	.L120
.L112:
	ret
	.p2align 4,,10
.L120:
	leaq	_ZL14g_MousePressed(%rip), %rax
	movslq	%edx, %rdx
	movb	$1, (%rax,%rdx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z32ImGui_ImplGlfwGL3_ScrollCallbackP10GLFWwindowdd
	.def	_Z32ImGui_ImplGlfwGL3_ScrollCallbackP10GLFWwindowdd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z32ImGui_ImplGlfwGL3_ScrollCallbackP10GLFWwindowdd
_Z32ImGui_ImplGlfwGL3_ScrollCallbackP10GLFWwindowdd:
.LFB7461:
	.seh_endprologue
	cvtsd2ss	%xmm2, %xmm2
	addss	_ZL12g_MouseWheel(%rip), %xmm2
	movss	%xmm2, _ZL12g_MouseWheel(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16stbi__stdio_skipPvi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__stdio_skipPvi
_ZL16stbi__stdio_skipPvi:
.LFB818:
	.seh_endprologue
	movl	$1, %r8d
	jmp	fseek
	.seh_endproc
	.p2align 4,,15
	.def	_ZL15stbi__stdio_eofPv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbi__stdio_eofPv
_ZL15stbi__stdio_eofPv:
.LFB819:
	.seh_endprologue
	jmp	feof
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16stbi__stdio_readPvPci;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__stdio_readPvPci
_ZL16stbi__stdio_readPvPci:
.LFB817:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %r9
	movslq	%r8d, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	call	fread
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "C:/libraries/include/stb/stb_image.h\0"
	.align 8
.LC4:
	.ascii "z->code_buffer < (1U << z->num_bits)\0"
	.text
	.p2align 4,,15
	.def	_ZL15stbi__fill_bitsP10stbi__zbuf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbi__fill_bitsP10stbi__zbuf
_ZL15stbi__fill_bitsP10stbi__zbuf:
.LFB920:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC3(%rip), %rdi
	leaq	.LC4(%rip), %rsi
	movl	20(%rcx), %eax
	movq	%rcx, %rbx
	movl	16(%rcx), %ecx
	jmp	.L126
	.p2align 4,,10
.L127:
	movq	(%rbx), %rdx
	cmpq	%rdx, 8(%rbx)
	jbe	.L128
	leaq	1(%rdx), %r8
	movq	%r8, (%rbx)
	movzbl	(%rdx), %edx
	sall	%cl, %edx
	orl	%edx, %eax
.L128:
	addl	$8, %ecx
	movl	%eax, 20(%rbx)
	cmpl	$24, %ecx
	movl	%ecx, 16(%rbx)
	jg	.L135
.L126:
	movl	%eax, %edx
	shrl	%cl, %edx
	testl	%edx, %edx
	je	.L127
	movq	%rsi, %rcx
	movl	$3848, %r8d
	movq	%rdi, %rdx
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %eax
	jmp	.L127
	.p2align 4,,10
.L135:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "bad code lengths\0"
	.text
	.p2align 4,,15
	.def	_ZL19stbi__build_huffmanP13stbi__huffmanPi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19stbi__build_huffmanP13stbi__huffmanPi
_ZL19stbi__build_huffmanP13stbi__huffmanPi:
.LFB876:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movl	$1, %esi
	xorl	%r8d, %r8d
	movq	%rcx, %r11
	.p2align 4,,10
.L139:
	movl	(%rdx), %eax
	testl	%eax, %eax
	jle	.L137
	leal	1(%r8), %eax
	movl	%esi, %ebx
	leaq	-1(%r11), %r10
	cltq
	.p2align 4,,10
.L138:
	movl	%eax, %ecx
	movb	%bl, 1280(%r10,%rax)
	movl	%eax, %r9d
	addq	$1, %rax
	subl	%r8d, %ecx
	cmpl	%ecx, (%rdx)
	jg	.L138
	movslq	%r9d, %r8
.L137:
	addq	$1, %rsi
	addq	$4, %rdx
	cmpq	$17, %rsi
	jne	.L139
	movb	$0, 1280(%r11,%r8)
	leaq	1544(%r11), %r10
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movl	$1, %r9d
	movl	$1, %edi
	movl	$16, %esi
	jmp	.L143
	.p2align 4,,10
.L140:
	movl	%esi, %ecx
	movl	%eax, %edx
	addq	$4, %r10
	subl	%r9d, %ecx
	addl	$1, %r9d
	addl	%eax, %eax
	sall	%cl, %edx
	movl	%edx, -4(%r10)
	cmpl	$17, %r9d
	je	.L162
.L143:
	movl	%ebx, %edx
	movslq	%ebx, %rcx
	subl	%eax, %edx
	movl	%edx, 72(%r10)
	movzbl	1280(%r11,%rcx), %edx
	cmpl	%r9d, %edx
	jne	.L140
	leal	1(%rbx), %edx
	movl	%eax, %r8d
	movslq	%edx, %rdx
	subq	%rdx, %rcx
	leaq	(%r11,%rcx,2), %rbp
	.p2align 4,,10
.L141:
	movw	%r8w, 512(%rbp,%rdx,2)
	leal	1(%r8), %eax
	movl	%edx, %ebx
	movzbl	1280(%r11,%rdx), %ecx
	addq	$1, %rdx
	movl	%eax, %r8d
	cmpl	%r9d, %ecx
	je	.L141
	movl	%edi, %edx
	movl	%r9d, %ecx
	sall	%cl, %edx
	cmpl	%eax, %edx
	jge	.L140
	leaq	.LC5(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L162:
	movl	$64, %ecx
	movq	$-1, %rax
	movq	%r11, %rdi
	movl	$-1, 1608(%r11)
	rep stosq
	testl	%ebx, %ebx
	je	.L144
	leal	-1(%rbx), %r10d
	xorl	%edx, %edx
	movl	$9, %ebp
	addq	$1, %r10
	movl	$1, %esi
	movabsq	$72340172838076673, %rbx
	jmp	.L150
	.p2align 4,,10
.L145:
	addq	$1, %rdx
	cmpq	%r10, %rdx
	je	.L144
.L150:
	movzbl	1280(%r11,%rdx), %eax
	cmpl	$9, %eax
	jg	.L145
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%esi, %eax
	sall	%cl, %eax
	leal	-1(%rax), %r8d
	movzwl	512(%r11,%rdx,2), %eax
	addq	$1, %r8
	sall	%cl, %eax
	movslq	%eax, %r9
	movzbl	%dl, %eax
	imulq	%rbx, %rax
	addq	%r11, %r9
	cmpl	$8, %r8d
	jnb	.L146
	testb	$4, %r8b
	jne	.L163
	testl	%r8d, %r8d
	je	.L145
	testb	$2, %r8b
	movb	%al, (%r9)
	je	.L145
	movl	%r8d, %r8d
	movw	%ax, -2(%r9,%r8)
	jmp	.L145
	.p2align 4,,10
.L144:
	movl	$1, %eax
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L146:
	movl	%r8d, %ecx
	subl	$1, %r8d
	movq	%r9, %rdi
	shrl	$3, %r8d
	movq	%rax, -8(%r9,%rcx)
	movl	%r8d, %ecx
	rep stosq
	jmp	.L145
.L163:
	movl	%r8d, %r8d
	movl	%eax, (%r9)
	movl	%eax, -4(%r9,%r8)
	jmp	.L145
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17stbi__malloc_mad2iii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17stbi__malloc_mad2iii
_ZL17stbi__malloc_mad2iii:
.LFB830:
	.seh_endprologue
	testl	%ecx, %ecx
	movl	%edx, %r9d
	js	.L164
	testl	%edx, %edx
	js	.L164
	testl	%edx, %edx
	jne	.L172
.L166:
	imull	%r9d, %ecx
	movl	$2147483647, %eax
	subl	%r8d, %eax
	cmpl	%ecx, %eax
	jl	.L164
	addl	%r8d, %ecx
	movslq	%ecx, %rcx
	jmp	malloc
	.p2align 4,,10
.L172:
	movl	$2147483647, %eax
	cltd
	idivl	%r9d
	cmpl	%eax, %ecx
	jle	.L166
.L164:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii
_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii:
.LFB907:
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$120, %rsp
	.seh_stackalloc	120
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
	xorl	%eax, %eax
	movslq	216(%rsp), %rsi
	movl	208(%rsp), %ebx
	cmpl	$4, %esi
	je	.L190
.L174:
	cmpl	%ebx, %eax
	jge	.L173
	subl	$1, %ebx
	xorl	%r11d, %r11d
	subl	%eax, %ebx
	cltq
	addq	$1, %rbx
	addq	%rax, %rdx
	addq	%rax, %r9
	addq	%rax, %r8
	.p2align 4,,10
.L185:
	movzbl	(%r9,%r11), %r12d
	movzbl	(%r8,%r11), %r10d
	movzbl	(%rdx,%r11), %eax
	addl	$-128, %r12d
	addl	$-128, %r10d
	imull	$1470208, %r12d, %ebp
	sall	$20, %eax
	imull	$-360960, %r10d, %edi
	imull	$-748800, %r12d, %r12d
	leal	524288(%rax), %r13d
	imull	$1858048, %r10d, %eax
	addl	%r13d, %ebp
	xorw	%di, %di
	sarl	$20, %ebp
	addl	%r13d, %r12d
	addl	%r12d, %edi
	addl	%r13d, %eax
	sarl	$20, %edi
	sarl	$20, %eax
	cmpl	$255, %ebp
	movl	%edi, %r10d
	jbe	.L180
	notl	%ebp
	sarl	$31, %ebp
.L180:
	cmpl	$255, %r10d
	jbe	.L182
	notl	%r10d
	sarl	$31, %r10d
.L182:
	cmpl	$255, %eax
	jbe	.L184
	notl	%eax
	sarl	$31, %eax
.L184:
	addq	$1, %r11
	movb	%bpl, (%rcx)
	movb	%r10b, 1(%rcx)
	movb	%al, 2(%rcx)
	movb	$-1, 3(%rcx)
	addq	%rsi, %rcx
	cmpq	%r11, %rbx
	jne	.L185
.L173:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movaps	32(%rsp), %xmm8
	movaps	48(%rsp), %xmm9
	movaps	64(%rsp), %xmm10
	movaps	80(%rsp), %xmm11
	movaps	96(%rsp), %xmm12
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L190:
	cmpl	$7, %ebx
	jle	.L174
	leal	-8(%rbx), %edi
	xorl	%eax, %eax
	pxor	%xmm2, %xmm2
	movdqa	.LC6(%rip), %xmm9
	shrl	$3, %edi
	movdqa	.LC7(%rip), %xmm3
	movl	%edi, %r11d
	movdqa	.LC9(%rip), %xmm7
	addq	$1, %r11
	movdqa	.LC10(%rip), %xmm6
	movdqa	.LC11(%rip), %xmm5
	leaq	0(,%r11,8), %r10
	movdqa	.LC8(%rip), %xmm8
	movdqa	.LC2(%rip), %xmm4
	.p2align 4,,10
.L178:
	movq	(%rdx,%rax), %xmm0
	movdqa	%xmm9, %xmm1
	movdqa	%xmm2, %xmm12
	movdqa	%xmm2, %xmm11
	movdqa	%xmm8, %xmm10
	punpcklbw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movq	(%r9,%rax), %xmm1
	pxor	%xmm3, %xmm1
	punpcklbw	%xmm1, %xmm12
	movq	(%r8,%rax), %xmm1
	pmulhw	%xmm12, %xmm10
	pmulhw	%xmm5, %xmm12
	pxor	%xmm3, %xmm1
	punpcklbw	%xmm1, %xmm11
	movdqa	%xmm11, %xmm1
	movdqa	%xmm0, %xmm11
	movdqa	%xmm7, %xmm0
	psrlw	$4, %xmm11
	pmulhw	%xmm1, %xmm0
	paddw	%xmm11, %xmm10
	pmulhw	%xmm6, %xmm1
	psraw	$4, %xmm10
	paddw	%xmm11, %xmm0
	paddw	%xmm11, %xmm1
	paddw	%xmm12, %xmm0
	movdqa	%xmm10, %xmm11
	psraw	$4, %xmm1
	packuswb	%xmm1, %xmm11
	psraw	$4, %xmm0
	movdqa	%xmm11, %xmm1
	movdqa	%xmm11, %xmm10
	packuswb	%xmm4, %xmm0
	punpcklbw	%xmm0, %xmm10
	punpckhbw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm10, %xmm1
	punpckhwd	%xmm0, %xmm10
	movups	%xmm10, 16(%rcx,%rax,4)
	punpcklwd	%xmm0, %xmm1
	movups	%xmm1, (%rcx,%rax,4)
	addq	$8, %rax
	cmpq	%r10, %rax
	jne	.L178
	leal	8(,%rdi,8), %eax
	salq	$5, %r11
	addq	%r11, %rcx
	jmp	.L174
	.seh_endproc
	.p2align 4,,15
	.def	_ZL15stbi__idct_simdPhiPs;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbi__idct_simdPhiPs
_ZL15stbi__idct_simdPhiPs:
.LFB888:
	subq	$264, %rsp
	.seh_stackalloc	264
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	movaps	%xmm8, 128(%rsp)
	.seh_savexmm	%xmm8, 128
	movaps	%xmm9, 144(%rsp)
	.seh_savexmm	%xmm9, 144
	movaps	%xmm10, 160(%rsp)
	.seh_savexmm	%xmm10, 160
	movaps	%xmm11, 176(%rsp)
	.seh_savexmm	%xmm11, 176
	movaps	%xmm12, 192(%rsp)
	.seh_savexmm	%xmm12, 192
	movaps	%xmm13, 208(%rsp)
	.seh_savexmm	%xmm13, 208
	movaps	%xmm14, 224(%rsp)
	.seh_savexmm	%xmm14, 224
	movaps	%xmm15, 240(%rsp)
	.seh_savexmm	%xmm15, 240
	.seh_endprologue
	movdqa	32(%r8), %xmm0
	movdqa	96(%r8), %xmm3
	movdqa	%xmm0, %xmm2
	movdqa	112(%r8), %xmm9
	punpckhwd	%xmm3, %xmm0
	punpcklwd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm3
	pmaddwd	.LC13(%rip), %xmm3
	movdqa	%xmm2, %xmm6
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm4
	movdqa	80(%r8), %xmm7
	pmaddwd	.LC13(%rip), %xmm2
	movaps	%xmm3, 32(%rsp)
	movdqa	%xmm9, %xmm8
	pmaddwd	.LC12(%rip), %xmm4
	movdqa	(%r8), %xmm3
	pmaddwd	.LC12(%rip), %xmm6
	movslq	%edx, %rdx
	movaps	%xmm2, 48(%rsp)
	movdqa	64(%r8), %xmm2
	leaq	(%rcx,%rdx), %rax
	movdqa	%xmm3, %xmm0
	movdqa	48(%r8), %xmm1
	movaps	%xmm4, 16(%rsp)
	paddw	%xmm2, %xmm0
	movdqa	16(%r8), %xmm5
	psubw	%xmm2, %xmm3
	movaps	%xmm6, (%rsp)
	movdqa	%xmm0, %xmm4
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, %xmm11
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm4, %xmm11
	movdqa	%xmm11, %xmm13
	movdqa	%xmm0, %xmm11
	punpcklwd	%xmm3, %xmm2
	punpckhwd	%xmm4, %xmm11
	movdqa	%xmm0, %xmm12
	movdqa	%xmm11, %xmm14
	punpckhwd	%xmm1, %xmm8
	psrad	$4, %xmm14
	punpckhwd	%xmm3, %xmm12
	movdqa	%xmm8, %xmm4
	movdqa	%xmm12, %xmm3
	movdqa	%xmm8, %xmm12
	movdqa	%xmm7, %xmm8
	movaps	%xmm14, 80(%rsp)
	pmaddwd	.LC15(%rip), %xmm4
	punpckhwd	%xmm5, %xmm8
	movdqa	%xmm8, %xmm6
	movdqa	%xmm8, %xmm14
	movdqa	%xmm5, %xmm8
	paddw	%xmm9, %xmm8
	movdqa	%xmm9, %xmm11
	movdqa	%xmm4, %xmm10
	punpcklwd	%xmm1, %xmm11
	psrad	$4, %xmm13
	paddw	%xmm7, %xmm1
	movdqa	%xmm7, %xmm4
	movdqa	%xmm8, %xmm7
	movaps	%xmm13, 64(%rsp)
	punpcklwd	%xmm5, %xmm4
	punpckhwd	%xmm1, %xmm8
	punpcklwd	%xmm1, %xmm7
	movdqa	%xmm11, %xmm15
	movdqa	%xmm4, %xmm13
	pmaddwd	.LC15(%rip), %xmm15
	movdqa	%xmm7, %xmm9
	movdqa	%xmm8, %xmm5
	movdqa	%xmm7, %xmm1
	pmaddwd	.LC14(%rip), %xmm11
	psrad	$4, %xmm3
	movdqa	%xmm15, %xmm7
	pmaddwd	.LC14(%rip), %xmm12
	psrad	$4, %xmm2
	pmaddwd	.LC16(%rip), %xmm13
	pmaddwd	.LC16(%rip), %xmm14
	pmaddwd	.LC18(%rip), %xmm9
	pmaddwd	.LC17(%rip), %xmm4
	pmaddwd	.LC18(%rip), %xmm5
	pmaddwd	.LC19(%rip), %xmm8
	paddd	%xmm9, %xmm11
	paddd	%xmm9, %xmm4
	pmaddwd	.LC17(%rip), %xmm6
	movdqa	.LC20(%rip), %xmm9
	paddd	%xmm8, %xmm14
	paddd	%xmm10, %xmm8
	movdqa	80(%rsp), %xmm10
	paddd	48(%rsp), %xmm10
	pmaddwd	.LC19(%rip), %xmm1
	paddd	%xmm5, %xmm12
	paddd	%xmm5, %xmm6
	movdqa	64(%rsp), %xmm5
	paddd	%xmm9, %xmm10
	paddd	32(%rsp), %xmm5
	paddd	%xmm1, %xmm13
	paddd	%xmm1, %xmm7
	movdqa	%xmm10, %xmm1
	paddd	%xmm9, %xmm5
	paddd	%xmm6, %xmm1
	movdqa	%xmm1, %xmm15
	psubd	%xmm6, %xmm10
	movdqa	%xmm5, %xmm1
	movdqa	(%rsp), %xmm6
	psubd	%xmm4, %xmm5
	psrad	$10, %xmm10
	paddd	%xmm4, %xmm1
	psrad	$10, %xmm5
	paddd	%xmm2, %xmm6
	paddd	%xmm9, %xmm2
	packssdw	%xmm10, %xmm5
	paddd	%xmm9, %xmm6
	psrad	$10, %xmm15
	movdqa	16(%rsp), %xmm10
	psrad	$10, %xmm1
	psubd	(%rsp), %xmm2
	paddd	%xmm3, %xmm10
	paddd	%xmm9, %xmm3
	packssdw	%xmm15, %xmm1
	paddd	%xmm9, %xmm10
	psubd	16(%rsp), %xmm3
	movdqa	%xmm10, %xmm4
	psubd	%xmm8, %xmm10
	paddd	%xmm8, %xmm4
	psrad	$10, %xmm10
	movdqa	%xmm4, %xmm15
	movdqa	%xmm6, %xmm4
	psubd	%xmm7, %xmm6
	paddd	%xmm7, %xmm4
	psrad	$10, %xmm6
	movdqa	%xmm3, %xmm7
	paddd	%xmm14, %xmm7
	psubd	%xmm14, %xmm3
	packssdw	%xmm10, %xmm6
	psrad	$10, %xmm15
	movdqa	%xmm7, %xmm8
	psrad	$10, %xmm3
	movdqa	%xmm2, %xmm7
	paddd	%xmm13, %xmm7
	psrad	$10, %xmm8
	psubd	%xmm13, %xmm2
	psrad	$10, %xmm7
	packssdw	%xmm8, %xmm7
	movdqa	64(%rsp), %xmm8
	psrad	$10, %xmm2
	packssdw	%xmm3, %xmm2
	psrad	$10, %xmm4
	paddd	%xmm9, %xmm8
	paddd	80(%rsp), %xmm9
	packssdw	%xmm15, %xmm4
	psubd	32(%rsp), %xmm8
	psubd	48(%rsp), %xmm9
	movdqa	%xmm8, %xmm3
	movdqa	%xmm9, %xmm10
	psubd	%xmm11, %xmm8
	paddd	%xmm12, %xmm10
	paddd	%xmm11, %xmm3
	psrad	$10, %xmm8
	psubd	%xmm12, %xmm9
	psrad	$10, %xmm10
	psrad	$10, %xmm9
	psrad	$10, %xmm3
	packssdw	%xmm9, %xmm8
	movdqa	%xmm7, %xmm9
	punpckhwd	%xmm6, %xmm7
	packssdw	%xmm10, %xmm3
	movdqa	%xmm1, %xmm10
	punpcklwd	%xmm6, %xmm9
	punpckhwd	%xmm8, %xmm1
	punpcklwd	%xmm8, %xmm10
	movdqa	%xmm3, %xmm6
	movdqa	%xmm4, %xmm8
	punpckhwd	%xmm5, %xmm3
	punpcklwd	%xmm5, %xmm6
	punpcklwd	%xmm2, %xmm8
	movdqa	%xmm3, %xmm5
	movdqa	%xmm8, %xmm3
	punpcklwd	%xmm6, %xmm3
	punpckhwd	%xmm2, %xmm4
	punpckhwd	%xmm6, %xmm8
	movdqa	%xmm10, %xmm2
	movdqa	%xmm8, %xmm6
	movdqa	%xmm4, %xmm8
	punpcklwd	%xmm9, %xmm2
	punpckhwd	%xmm5, %xmm4
	punpcklwd	%xmm5, %xmm8
	movdqa	%xmm2, %xmm5
	punpckhwd	%xmm9, %xmm10
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm5
	movdqa	%xmm10, %xmm3
	movdqa	%xmm1, %xmm15
	punpckhwd	%xmm6, %xmm10
	punpckhwd	%xmm7, %xmm1
	punpcklwd	%xmm6, %xmm3
	movdqa	%xmm1, %xmm6
	punpckhwd	%xmm4, %xmm1
	punpcklwd	%xmm4, %xmm6
	movdqa	%xmm3, %xmm4
	punpckhwd	%xmm6, %xmm3
	movdqa	%xmm3, %xmm11
	punpcklwd	%xmm6, %xmm4
	movdqa	%xmm4, %xmm6
	movdqa	%xmm4, %xmm12
	pmaddwd	.LC12(%rip), %xmm6
	movdqa	%xmm3, %xmm4
	movdqa	%xmm1, %xmm9
	punpcklwd	%xmm7, %xmm15
	pmaddwd	.LC12(%rip), %xmm11
	movaps	%xmm6, (%rsp)
	punpcklwd	%xmm10, %xmm9
	movdqa	%xmm0, %xmm6
	movdqa	%xmm0, %xmm3
	movaps	%xmm11, 16(%rsp)
	movdqa	%xmm15, %xmm7
	movdqa	%xmm9, %xmm14
	pmaddwd	.LC13(%rip), %xmm4
	pmaddwd	.LC14(%rip), %xmm14
	punpckhwd	%xmm8, %xmm15
	punpcklwd	%xmm8, %xmm7
	pmaddwd	.LC13(%rip), %xmm12
	movaps	%xmm4, 48(%rsp)
	movdqa	%xmm5, %xmm4
	psubw	%xmm7, %xmm5
	movdqa	%xmm1, %xmm8
	paddw	%xmm7, %xmm4
	movdqa	%xmm15, %xmm7
	movdqa	%xmm14, %xmm11
	punpckhwd	%xmm10, %xmm8
	punpckhwd	%xmm4, %xmm6
	punpcklwd	%xmm2, %xmm7
	movdqa	%xmm6, %xmm13
	movdqa	%xmm7, %xmm14
	movdqa	%xmm15, %xmm6
	paddw	%xmm15, %xmm10
	punpcklwd	%xmm4, %xmm3
	psrad	$4, %xmm13
	punpckhwd	%xmm2, %xmm6
	movdqa	%xmm0, %xmm4
	paddw	%xmm1, %xmm2
	movaps	%xmm12, 32(%rsp)
	movaps	%xmm13, 64(%rsp)
	punpcklwd	%xmm5, %xmm4
	punpckhwd	%xmm5, %xmm0
	pmaddwd	.LC16(%rip), %xmm14
	movdqa	%xmm8, %xmm12
	psrad	$4, %xmm3
	movdqa	%xmm2, %xmm5
	punpckhwd	%xmm10, %xmm2
	movdqa	%xmm14, %xmm13
	movdqa	%xmm2, %xmm15
	pmaddwd	.LC15(%rip), %xmm8
	punpcklwd	%xmm10, %xmm5
	movdqa	%xmm6, %xmm14
	movdqa	%xmm5, %xmm10
	pmaddwd	.LC19(%rip), %xmm2
	pmaddwd	.LC16(%rip), %xmm14
	psrad	$4, %xmm4
	pmaddwd	.LC19(%rip), %xmm5
	pmaddwd	.LC18(%rip), %xmm15
	pmaddwd	.LC17(%rip), %xmm6
	psrad	$4, %xmm0
	pmaddwd	.LC14(%rip), %xmm12
	paddd	%xmm2, %xmm14
	pmaddwd	.LC15(%rip), %xmm9
	paddd	%xmm8, %xmm2
	movdqa	32(%rsp), %xmm8
	paddd	%xmm15, %xmm12
	pmaddwd	.LC18(%rip), %xmm10
	paddd	%xmm5, %xmm13
	paddd	%xmm5, %xmm9
	paddd	%xmm6, %xmm15
	pmaddwd	.LC17(%rip), %xmm7
	movdqa	.LC21(%rip), %xmm6
	paddd	%xmm3, %xmm8
	paddd	%xmm10, %xmm11
	movdqa	64(%rsp), %xmm5
	paddd	48(%rsp), %xmm5
	paddd	%xmm10, %xmm7
	paddd	%xmm6, %xmm8
	paddd	%xmm6, %xmm3
	paddd	%xmm6, %xmm5
	movdqa	%xmm8, %xmm1
	psubd	%xmm7, %xmm8
	movdqa	%xmm5, %xmm10
	psrad	$17, %xmm8
	paddd	%xmm7, %xmm1
	movdqa	16(%rsp), %xmm7
	psubd	%xmm15, %xmm5
	paddd	%xmm15, %xmm10
	psrad	$17, %xmm1
	psrad	$17, %xmm5
	paddd	%xmm0, %xmm7
	paddd	%xmm6, %xmm0
	packssdw	%xmm5, %xmm8
	movdqa	(%rsp), %xmm5
	paddd	%xmm6, %xmm7
	psrad	$17, %xmm10
	psubd	16(%rsp), %xmm0
	packssdw	%xmm10, %xmm1
	movdqa	%xmm7, %xmm15
	psubd	%xmm2, %xmm7
	paddd	%xmm4, %xmm5
	paddd	%xmm6, %xmm4
	psrad	$17, %xmm7
	paddd	%xmm6, %xmm5
	psubd	(%rsp), %xmm4
	paddd	%xmm2, %xmm15
	movdqa	%xmm5, %xmm10
	psubd	%xmm9, %xmm5
	psrad	$17, %xmm5
	movdqa	%xmm4, %xmm2
	psubd	%xmm13, %xmm4
	packssdw	%xmm7, %xmm5
	movdqa	%xmm0, %xmm7
	psubd	32(%rsp), %xmm3
	psrad	$17, %xmm4
	paddd	%xmm14, %xmm7
	paddd	%xmm13, %xmm2
	packuswb	%xmm8, %xmm5
	psrad	$17, %xmm15
	psubd	%xmm14, %xmm0
	paddd	64(%rsp), %xmm6
	psrad	$17, %xmm7
	psubd	48(%rsp), %xmm6
	psrad	$17, %xmm0
	paddd	%xmm9, %xmm10
	psrad	$17, %xmm2
	packssdw	%xmm0, %xmm4
	movdqa	%xmm3, %xmm0
	psubd	%xmm11, %xmm3
	packssdw	%xmm7, %xmm2
	movdqa	%xmm6, %xmm7
	paddd	%xmm11, %xmm0
	psrad	$17, %xmm10
	paddd	%xmm12, %xmm7
	psubd	%xmm12, %xmm6
	psrad	$17, %xmm0
	packssdw	%xmm15, %xmm10
	psrad	$17, %xmm7
	packuswb	%xmm10, %xmm1
	packssdw	%xmm7, %xmm0
	psrad	$17, %xmm6
	packuswb	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	psrad	$17, %xmm3
	packssdw	%xmm6, %xmm3
	packuswb	%xmm4, %xmm3
	movdqa	%xmm2, %xmm4
	punpcklbw	%xmm3, %xmm0
	punpckhbw	%xmm3, %xmm1
	punpckhbw	%xmm5, %xmm2
	movdqa	%xmm2, %xmm3
	movdqa	%xmm0, %xmm2
	punpcklbw	%xmm5, %xmm4
	movdqa	%xmm1, %xmm5
	punpckhbw	%xmm4, %xmm0
	punpcklbw	%xmm4, %xmm2
	movdqa	%xmm2, %xmm4
	punpcklbw	%xmm3, %xmm5
	punpckhbw	%xmm5, %xmm2
	punpckhbw	%xmm3, %xmm1
	punpcklbw	%xmm5, %xmm4
	movq	%xmm4, (%rcx)
	pshufd	$78, %xmm4, %xmm4
	movdqa	%xmm0, %xmm3
	movq	%xmm4, (%rax)
	addq	%rdx, %rax
	punpcklbw	%xmm1, %xmm3
	punpckhbw	%xmm1, %xmm0
	movq	%xmm2, (%rax)
	addq	%rdx, %rax
	pshufd	$78, %xmm2, %xmm2
	movq	%xmm2, (%rax)
	addq	%rdx, %rax
	movq	%xmm3, (%rax)
	addq	%rdx, %rax
	pshufd	$78, %xmm3, %xmm3
	movq	%xmm3, (%rax)
	movq	%xmm0, (%rax,%rdx)
	pshufd	$78, %xmm0, %xmm0
	movq	%xmm0, (%rax,%rdx,2)
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	movaps	128(%rsp), %xmm8
	movaps	144(%rsp), %xmm9
	movaps	160(%rsp), %xmm10
	movaps	176(%rsp), %xmm11
	movaps	192(%rsp), %xmm12
	movaps	208(%rsp), %xmm13
	movaps	224(%rsp), %xmm14
	movaps	240(%rsp), %xmm15
	addq	$264, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL10stbi__getnP13stbi__contextPhi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10stbi__getnP13stbi__contextPhi
_ZL10stbi__getnP13stbi__contextPhi:
.LFB865:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %r9
	movslq	%r8d, %rbx
	movq	192(%rcx), %rcx
	cmpq	$0, 16(%rsi)
	movq	184(%rsi), %rdx
	je	.L193
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	cmpl	%ebx, %edi
	jl	.L196
.L193:
	leaq	(%rdx,%rbx), %r8
	xorl	%eax, %eax
	cmpq	%r8, %rcx
	jb	.L192
	movq	%rbx, %r8
	movq	%r9, %rcx
	call	memcpy
	movl	$1, %eax
	addq	%rbx, 184(%rsi)
.L192:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L196:
	movslq	%edi, %rbp
	movq	%r9, %rcx
	subl	%edi, %ebx
	movq	%rbp, %r8
	call	memcpy
	movq	40(%rsi), %rcx
	movl	%ebx, %r8d
	leaq	(%rax,%rbp), %rdx
	call	*16(%rsi)
	movq	192(%rsi), %rdx
	cmpl	%eax, %ebx
	sete	%al
	movzbl	%al, %eax
	movq	%rdx, 184(%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17stbi__hdr_convertPfPhi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17stbi__hdr_convertPfPhi
_ZL17stbi__hdr_convertPfPhi:
.LFB990:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, %rbx
	movzbl	3(%rdx), %edx
	testb	%dl, %dl
	jne	.L214
	cmpl	$2, %r8d
	je	.L203
	jle	.L215
	cmpl	$3, %r8d
	je	.L206
	cmpl	$4, %r8d
	jne	.L197
	movl	$0x3f800000, 12(%rcx)
.L206:
	movq	$0, (%rcx)
	movl	$0, 8(%rcx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L215:
	cmpl	$1, %r8d
	jne	.L197
.L205:
	movl	$0x00000000, (%rcx)
.L197:
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L214:
	movss	.LC22(%rip), %xmm0
	subl	$136, %edx
	movl	%r8d, 44(%rsp)
	movq	%rcx, 32(%rsp)
	call	ldexpf
	movl	44(%rsp), %r8d
	movzbl	(%rbx), %eax
	movq	32(%rsp), %rcx
	cmpl	$2, %r8d
	jg	.L199
	movzbl	1(%rbx), %edx
	pxor	%xmm1, %xmm1
	addl	%edx, %eax
	movzbl	2(%rbx), %edx
	addl	%edx, %eax
	cmpl	$2, %r8d
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm0, %xmm1
	divss	.LC23(%rip), %xmm1
	movss	%xmm1, (%rcx)
	jne	.L197
	movl	$0x3f800000, 4(%rcx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L199:
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	pxor	%xmm2, %xmm2
	cmpl	$4, %r8d
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rcx)
	movzbl	1(%rbx), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%rcx)
	movzbl	2(%rbx), %eax
	cvtsi2ss	%eax, %xmm2
	mulss	%xmm0, %xmm2
	movss	%xmm2, 8(%rcx)
	jne	.L197
	movl	$0x3f800000, 12(%rcx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L203:
	movl	$0x3f800000, 4(%rcx)
	jmp	.L205
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17stbi__stdio_writePvS_i;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17stbi__stdio_writePvS_i
_ZL17stbi__stdio_writePvS_i:
.LFB1009:
	.seh_endprologue
	movq	%rcx, %r9
	movslq	%r8d, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	jmp	fwrite
	.seh_endproc
	.section .rdata,"dr"
.LC25:
	.ascii "Error %d: %s\12\0"
	.text
	.p2align 4,,15
	.def	_ZL14error_callbackiPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14error_callbackiPKc
_ZL14error_callbackiPKc:
.LFB7470:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%ecx, %ebx
	movq	%rdx, %rsi
	call	*__imp___iob_func(%rip)
	movq	%rsi, %r9
	movl	%ebx, %r8d
	leaq	96(%rax), %rcx
	leaq	.LC25(%rip), %rdx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	fprintf
	.seh_endproc
	.p2align 4,,15
	.globl	_Z29ImGui_ImplGlfwGL3_KeyCallbackP10GLFWwindowiiii
	.def	_Z29ImGui_ImplGlfwGL3_KeyCallbackP10GLFWwindowiiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z29ImGui_ImplGlfwGL3_KeyCallbackP10GLFWwindowiiii
_Z29ImGui_ImplGlfwGL3_KeyCallbackP10GLFWwindowiiii:
.LFB7462:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%r9d, %esi
	movslq	%edx, %rbx
	call	_ZN5ImGui5GetIOEv
	cmpl	$1, %esi
	je	.L225
	testl	%esi, %esi
	jne	.L220
	movb	$0, 281(%rax,%rbx)
.L220:
	movzbl	622(%rax), %edx
	testb	%dl, %dl
	jne	.L221
	movzbl	626(%rax), %edx
.L221:
	movb	%dl, 277(%rax)
	movzbl	621(%rax), %edx
	testb	%dl, %dl
	jne	.L222
	movzbl	625(%rax), %edx
.L222:
	movb	%dl, 278(%rax)
	movzbl	623(%rax), %edx
	testb	%dl, %dl
	jne	.L223
	movzbl	627(%rax), %edx
.L223:
	movb	%dl, 279(%rax)
	movzbl	624(%rax), %edx
	testb	%dl, %dl
	jne	.L224
	movzbl	628(%rax), %edx
.L224:
	movb	%dl, 280(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L225:
	movb	$1, 281(%rax,%rbx)
	jmp	.L220
	.seh_endproc
	.p2align 4,,15
	.globl	_Z33ImGui_ImplGlfwGL3_RenderDrawListsP10ImDrawData
	.def	_Z33ImGui_ImplGlfwGL3_RenderDrawListsP10ImDrawData;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z33ImGui_ImplGlfwGL3_RenderDrawListsP10ImDrawData
_Z33ImGui_ImplGlfwGL3_RenderDrawListsP10ImDrawData:
.LFB7457:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$200, %rsp
	.seh_stackalloc	200
	.seh_endprologue
	movq	%rcx, %r13
	call	_ZN5ImGui5GetIOEv
	movss	(%rax), %xmm0
	movq	%rax, %rsi
	mulss	160(%rax), %xmm0
	cvttss2si	%xmm0, %ebx
	movss	4(%rax), %xmm0
	mulss	164(%rax), %xmm0
	testl	%ebx, %ebx
	cvttss2si	%xmm0, %edi
	movl	%edi, 40(%rsp)
	je	.L226
	testl	%edi, %edi
	jne	.L248
.L226:
	addq	$200, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L248:
	leaq	160(%rax), %rdx
	movq	%r13, %rcx
	call	_ZN10ImDrawData14ScaleClipRectsERK6ImVec2
	leaq	48(%rsp), %rdx
	movl	$34016, %ecx
	call	glGetIntegerv
	movq	__imp___glewActiveTexture(%rip), %rax
	movl	$33984, %ecx
	call	*(%rax)
	leaq	52(%rsp), %rdx
	movl	$35725, %ecx
	call	glGetIntegerv
	leaq	56(%rsp), %rdx
	movl	$32873, %ecx
	call	glGetIntegerv
	leaq	60(%rsp), %rdx
	movl	$34964, %ecx
	call	glGetIntegerv
	leaq	64(%rsp), %rdx
	movl	$34965, %ecx
	call	glGetIntegerv
	leaq	68(%rsp), %rdx
	movl	$34229, %ecx
	call	glGetIntegerv
	leaq	72(%rsp), %rdx
	movl	$32969, %ecx
	call	glGetIntegerv
	leaq	76(%rsp), %rdx
	movl	$32968, %ecx
	call	glGetIntegerv
	leaq	80(%rsp), %rdx
	movl	$32971, %ecx
	call	glGetIntegerv
	leaq	84(%rsp), %rdx
	movl	$32970, %ecx
	call	glGetIntegerv
	leaq	88(%rsp), %rdx
	movl	$32777, %ecx
	call	glGetIntegerv
	leaq	92(%rsp), %rdx
	movl	$34877, %ecx
	call	glGetIntegerv
	leaq	96(%rsp), %rdx
	movl	$2978, %ecx
	call	glGetIntegerv
	leaq	112(%rsp), %rdx
	movl	$3088, %ecx
	call	glGetIntegerv
	movl	$3042, %ecx
	call	glIsEnabled
	movl	$2884, %ecx
	movb	%al, 44(%rsp)
	call	glIsEnabled
	movl	$2929, %ecx
	movb	%al, 45(%rsp)
	call	glIsEnabled
	movl	$3089, %ecx
	movb	%al, 46(%rsp)
	call	glIsEnabled
	movl	$3042, %ecx
	movb	%al, 47(%rsp)
	call	glEnable
	movq	__imp___glewBlendEquation(%rip), %rax
	movl	$32774, %ecx
	call	*(%rax)
	movl	$771, %edx
	movl	$770, %ecx
	call	glBlendFunc
	movl	$2884, %ecx
	call	glDisable
	movl	$2929, %ecx
	call	glDisable
	movl	$3089, %ecx
	call	glEnable
	movl	%edi, %r9d
	movl	%ebx, %r8d
	xorl	%edx, %edx
	leaq	132(%rsp), %rdi
	xorl	%ecx, %ecx
	call	glViewport
	movss	.LC27(%rip), %xmm0
	xorl	%eax, %eax
	movl	$7, %ecx
	rep stosq
	movabsq	$4575657224621260800, %rax
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	$0xbf800000, 168(%rsp)
	movaps	%xmm0, %xmm1
	divss	(%rsi), %xmm1
	movss	%xmm1, 128(%rsp)
	movss	4(%rsi), %xmm1
	xorps	.LC28(%rip), %xmm1
	divss	%xmm1, %xmm0
	movq	%rax, 176(%rsp)
	movq	__imp___glewUseProgram(%rip), %rax
	movl	$0x3f800000, 188(%rsp)
	movss	%xmm0, 148(%rsp)
	call	*(%rax)
	movq	__imp___glewUniform1i(%rip), %rax
	xorl	%edx, %edx
	movl	_ZL19g_AttribLocationTex(%rip), %ecx
	call	*(%rax)
	xorl	%r8d, %r8d
	movl	$1, %edx
	movl	_ZL23g_AttribLocationProjMtx(%rip), %ecx
	movq	__imp___glewUniformMatrix4fv(%rip), %rax
	leaq	128(%rsp), %r9
	call	*(%rax)
	movq	__imp___glewBindVertexArray(%rip), %rax
	movl	_ZL11g_VaoHandle(%rip), %ecx
	call	*(%rax)
	movl	16(%r13), %edx
	testl	%edx, %edx
	jle	.L249
	movq	__imp___glewBindBuffer(%rip), %rax
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	movq	%rax, 32(%rsp)
	.p2align 4,,10
.L233:
	movq	8(%r13), %rax
	movl	$34962, %ecx
	movq	32(%rsp), %rbx
	movl	_ZL11g_VboHandle(%rip), %edx
	movq	(%rax,%r12), %rsi
	call	*(%rbx)
	movl	$35040, %r9d
	movl	$34962, %ecx
	movslq	32(%rsi), %rax
	movq	40(%rsi), %r8
	leaq	(%rax,%rax,4), %rdx
	movq	__imp___glewBufferData(%rip), %rax
	salq	$2, %rdx
	call	*(%rax)
	movl	_ZL16g_ElementsHandle(%rip), %edx
	movl	$34963, %ecx
	call	*(%rbx)
	movslq	16(%rsi), %rdx
	movl	$35040, %r9d
	movl	$34963, %ecx
	movq	__imp___glewBufferData(%rip), %rax
	movq	24(%rsi), %r8
	addq	%rdx, %rdx
	call	*(%rax)
	movl	(%rsi), %eax
	testl	%eax, %eax
	jle	.L229
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	.p2align 4,,10
.L230:
	movq	8(%rsi), %rbx
	addq	%rbp, %rbx
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.L231
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	*%rax
.L247:
	movl	(%rbx), %eax
	addl	$1, %r14d
	addq	$48, %rbp
	cmpl	%r14d, (%rsi)
	leaq	(%r15,%rax,2), %r15
	jg	.L230
.L229:
	addl	$1, %edi
	addq	$8, %r12
	cmpl	%edi, 16(%r13)
	jg	.L233
.L228:
	movq	__imp___glewUseProgram(%rip), %rax
	movl	52(%rsp), %ecx
	call	*(%rax)
	movl	56(%rsp), %edx
	movl	$3553, %ecx
	call	glBindTexture
	movq	__imp___glewActiveTexture(%rip), %rax
	movl	48(%rsp), %ecx
	call	*(%rax)
	movq	__imp___glewBindVertexArray(%rip), %rax
	movl	68(%rsp), %ecx
	call	*(%rax)
	movq	32(%rsp), %rdi
	movl	$34962, %ecx
	movl	60(%rsp), %edx
	call	*(%rdi)
	movl	64(%rsp), %edx
	movl	$34963, %ecx
	call	*(%rdi)
	movq	__imp___glewBlendEquationSeparate(%rip), %rax
	movl	92(%rsp), %edx
	movl	88(%rsp), %ecx
	call	*(%rax)
	movq	__imp___glewBlendFuncSeparate(%rip), %rax
	movl	72(%rsp), %ecx
	movl	84(%rsp), %r9d
	movl	80(%rsp), %r8d
	movl	76(%rsp), %edx
	call	*(%rax)
	cmpb	$0, 44(%rsp)
	movl	$3042, %ecx
	jne	.L250
	call	glDisable
	cmpb	$0, 45(%rsp)
	movl	$2884, %ecx
	je	.L236
.L251:
	call	glEnable
	cmpb	$0, 46(%rsp)
	movl	$2929, %ecx
	je	.L238
.L252:
	call	glEnable
	cmpb	$0, 47(%rsp)
	movl	$3089, %ecx
	je	.L240
.L253:
	call	glEnable
.L241:
	movl	108(%rsp), %r9d
	movl	104(%rsp), %r8d
	movl	100(%rsp), %edx
	movl	96(%rsp), %ecx
	call	glViewport
	movl	124(%rsp), %r9d
	movl	120(%rsp), %r8d
	movl	116(%rsp), %edx
	movl	112(%rsp), %ecx
	call	glScissor
	jmp	.L226
	.p2align 4,,10
.L231:
	movl	24(%rbx), %edx
	movl	$3553, %ecx
	call	glBindTexture
	pxor	%xmm1, %xmm1
	cvtsi2ss	40(%rsp), %xmm1
	movss	16(%rbx), %xmm3
	movss	4(%rbx), %xmm2
	movss	12(%rbx), %xmm0
	movaps	%xmm3, %xmm4
	subss	8(%rbx), %xmm4
	subss	%xmm2, %xmm0
	subss	%xmm3, %xmm1
	cvttss2si	%xmm2, %ecx
	cvttss2si	%xmm4, %r9d
	cvttss2si	%xmm1, %edx
	cvttss2si	%xmm0, %r8d
	call	glScissor
	movl	(%rbx), %edx
	movq	%r15, %r9
	movl	$5123, %r8d
	movl	$4, %ecx
	call	glDrawElements
	jmp	.L247
	.p2align 4,,10
.L250:
	call	glEnable
	cmpb	$0, 45(%rsp)
	movl	$2884, %ecx
	jne	.L251
.L236:
	call	glDisable
	cmpb	$0, 46(%rsp)
	movl	$2929, %ecx
	jne	.L252
.L238:
	call	glDisable
	cmpb	$0, 47(%rsp)
	movl	$3089, %ecx
	jne	.L253
.L240:
	call	glDisable
	jmp	.L241
.L249:
	movq	__imp___glewBindBuffer(%rip), %rax
	movq	%rax, 32(%rsp)
	jmp	.L228
	.seh_endproc
	.p2align 4,,15
	.globl	_Z30ImGui_ImplGlfwGL3_CharCallbackP10GLFWwindowj
	.def	_Z30ImGui_ImplGlfwGL3_CharCallbackP10GLFWwindowj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z30ImGui_ImplGlfwGL3_CharCallbackP10GLFWwindowj
_Z30ImGui_ImplGlfwGL3_CharCallbackP10GLFWwindowj:
.LFB7463:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%edx, %ebx
	call	_ZN5ImGui5GetIOEv
	leal	-1(%rbx), %edx
	cmpl	$65534, %edx
	jbe	.L256
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L256:
	movl	%ebx, %edx
	movq	%rax, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN7ImGuiIO17AddInputCharacterEt
	.seh_endproc
	.p2align 4,,15
	.def	_ZL34ImGui_ImplGlfwGL3_GetClipboardTextPv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL34ImGui_ImplGlfwGL3_GetClipboardTextPv
_ZL34ImGui_ImplGlfwGL3_GetClipboardTextPv:
.LFB7458:
	.seh_endprologue
	jmp	glfwGetClipboardString
	.seh_endproc
	.p2align 4,,15
	.def	_ZL34ImGui_ImplGlfwGL3_SetClipboardTextPvPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL34ImGui_ImplGlfwGL3_SetClipboardTextPvPKc
_ZL34ImGui_ImplGlfwGL3_SetClipboardTextPvPKc:
.LFB7459:
	.seh_endprologue
	jmp	glfwSetClipboardString
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB7478:
	.seh_endprologue
	movq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %rcx
	leaq	16+_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %rax
	cmpq	%rax, %rcx
	je	.L259
	jmp	_ZdlPv
	.p2align 4,,10
.L259:
	ret
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_1;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_1
__tcf_1:
.LFB7479:
	.seh_endprologue
	movq	264+_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip), %rcx
	testq	%rcx, %rcx
	je	.L261
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,10
.L261:
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7479:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7479-.LLSDACSB7479
.LLSDACSB7479:
.LLSDACSE7479:
	.text
	.seh_endproc
	.p2align 4,,15
	.def	_ZL10stbi__get8P13stbi__context;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10stbi__get8P13stbi__context
_ZL10stbi__get8P13stbi__context:
.LFB862:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	184(%rcx), %rax
	cmpq	192(%rcx), %rax
	movq	%rcx, %rbx
	jb	.L269
	movl	48(%rcx), %eax
	testl	%eax, %eax
	je	.L268
	leaq	56(%rcx), %rsi
	movl	52(%rbx), %r8d
	movq	%rsi, %rdx
	movq	40(%rcx), %rcx
	call	*16(%rbx)
	leaq	57(%rbx), %rdx
	testl	%eax, %eax
	jne	.L266
	movl	$0, 48(%rbx)
	movq	%rdx, %rsi
	movb	$0, 56(%rbx)
.L267:
	movq	%rsi, 192(%rbx)
	movq	%rdx, 184(%rbx)
.L263:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L269:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rcx)
	movzbl	(%rax), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L266:
	cltq
	addq	%rax, %rsi
	movzbl	56(%rbx), %eax
	jmp	.L267
	.p2align 4,,10
.L268:
	xorl	%eax, %eax
	jmp	.L263
	.seh_endproc
	.p2align 4,,15
	.def	_ZL10stbi__skipP13stbi__contexti.part.1;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10stbi__skipP13stbi__contexti.part.1
_ZL10stbi__skipP13stbi__contexti.part.1:
.LFB8012:
	.seh_endprologue
	cmpq	$0, 16(%rcx)
	movq	184(%rcx), %rax
	je	.L271
	movq	192(%rcx), %r9
	movq	%r9, %r8
	subq	%rax, %r8
	cmpl	%edx, %r8d
	jge	.L271
	subl	%r8d, %edx
	movq	40(%rcx), %r8
	movq	%r9, 184(%rcx)
	movq	24(%rcx), %rax
	movq	%r8, %rcx
	rex.W jmp	*%rax
	.p2align 4,,10
.L271:
	movslq	%edx, %rdx
	addq	%rax, %rdx
	movq	%rdx, 184(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22stbi__resample_row_h_2PhS_S_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbi__resample_row_h_2PhS_S_ii
_ZL22stbi__resample_row_h_2PhS_S_ii:
.LFB902:
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
	cmpl	$1, %r9d
	movq	%rcx, %rax
	movzbl	(%rdx), %ecx
	je	.L290
	movb	%cl, (%rax)
	movzbl	(%rdx), %ecx
	leal	(%rcx,%rcx,2), %r8d
	movzbl	1(%rdx), %ecx
	leal	2(%r8,%rcx), %ecx
	sarl	$2, %ecx
	movb	%cl, 1(%rax)
	leal	-1(%r9), %ecx
	cmpl	$1, %ecx
	jle	.L282
	leal	-2(%r9), %r8d
	leaq	2(%rax,%r8,2), %r11
	movq	%r8, %rbx
	leaq	2(%rax), %r10
	cmpq	%r11, %rdx
	leaq	2(%rdx,%r8), %r8
	setnb	%r11b
	cmpq	%r8, %r10
	setnb	%r8b
	orb	%r8b, %r11b
	je	.L276
	cmpl	$15, %ebx
	jbe	.L276
	movl	%ebx, %esi
	xorl	%r11d, %r11d
	pxor	%xmm4, %xmm4
	movdqa	.LC0(%rip), %xmm7
	movdqa	.LC1(%rip), %xmm6
	leaq	1(%rdx), %r8
	shrl	$4, %esi
	pxor	%xmm3, %xmm3
	movdqa	.LC2(%rip), %xmm5
	.p2align 4,,10
.L277:
	movdqu	(%r8), %xmm2
	movdqa	%xmm7, %xmm10
	movdqa	%xmm7, %xmm9
	addl	$1, %r11d
	movdqu	-1(%r8), %xmm11
	addq	$32, %r10
	addq	$16, %r8
	movdqa	%xmm2, %xmm1
	punpckhbw	%xmm4, %xmm2
	pmullw	%xmm2, %xmm9
	punpcklbw	%xmm4, %xmm1
	pmullw	%xmm1, %xmm10
	pmulhw	%xmm7, %xmm1
	pmulhw	%xmm7, %xmm2
	movdqa	%xmm10, %xmm0
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm10
	movdqa	%xmm9, %xmm1
	paddd	%xmm6, %xmm0
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm9
	movdqa	%xmm11, %xmm2
	paddd	%xmm6, %xmm10
	punpcklbw	%xmm4, %xmm2
	movdqa	%xmm2, %xmm8
	punpckhwd	%xmm3, %xmm2
	paddd	%xmm10, %xmm2
	punpcklwd	%xmm3, %xmm8
	paddd	%xmm0, %xmm8
	psrad	$2, %xmm2
	paddd	%xmm6, %xmm1
	psrad	$2, %xmm8
	punpckhbw	%xmm4, %xmm11
	paddd	%xmm6, %xmm9
	movdqa	%xmm8, %xmm12
	punpcklwd	%xmm2, %xmm8
	punpckhwd	%xmm2, %xmm12
	movdqa	%xmm8, %xmm2
	punpcklwd	%xmm12, %xmm8
	punpckhwd	%xmm12, %xmm2
	punpcklwd	%xmm2, %xmm8
	movdqa	%xmm11, %xmm2
	punpckhwd	%xmm3, %xmm11
	punpcklwd	%xmm3, %xmm2
	paddd	%xmm1, %xmm2
	paddd	%xmm9, %xmm11
	pand	%xmm5, %xmm8
	psrad	$2, %xmm2
	psrad	$2, %xmm11
	movdqa	%xmm2, %xmm12
	punpckhwd	%xmm11, %xmm12
	punpcklwd	%xmm11, %xmm2
	movdqa	%xmm2, %xmm11
	punpcklwd	%xmm12, %xmm2
	punpckhwd	%xmm12, %xmm11
	punpcklwd	%xmm11, %xmm2
	pand	%xmm5, %xmm2
	packuswb	%xmm2, %xmm8
	movdqu	-15(%r8), %xmm2
	movdqa	%xmm2, %xmm11
	punpckhbw	%xmm4, %xmm2
	punpcklbw	%xmm4, %xmm11
	movdqa	%xmm11, %xmm12
	punpckhwd	%xmm3, %xmm11
	paddd	%xmm11, %xmm10
	punpcklwd	%xmm3, %xmm12
	paddd	%xmm12, %xmm0
	psrad	$2, %xmm10
	psrad	$2, %xmm0
	movdqa	%xmm0, %xmm11
	punpcklwd	%xmm10, %xmm0
	punpckhwd	%xmm10, %xmm11
	movdqa	%xmm0, %xmm10
	punpcklwd	%xmm11, %xmm0
	punpckhwd	%xmm11, %xmm10
	punpcklwd	%xmm10, %xmm0
	movdqa	%xmm2, %xmm10
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm10
	paddd	%xmm10, %xmm1
	paddd	%xmm2, %xmm9
	pand	%xmm5, %xmm0
	psrad	$2, %xmm1
	psrad	$2, %xmm9
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm9, %xmm2
	punpcklwd	%xmm9, %xmm1
	movdqa	%xmm1, %xmm9
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm9
	punpcklwd	%xmm9, %xmm1
	pand	%xmm5, %xmm1
	packuswb	%xmm1, %xmm0
	movdqa	%xmm8, %xmm1
	punpckhbw	%xmm0, %xmm8
	movups	%xmm8, -16(%r10)
	punpcklbw	%xmm0, %xmm1
	movups	%xmm1, -32(%r10)
	cmpl	%r11d, %esi
	ja	.L277
	movl	%ebx, %r8d
	andl	$-16, %r8d
	leal	1(%r8), %r10d
	cmpl	%r8d, %ebx
	je	.L280
	movslq	%r10d, %r8
	addl	%r10d, %r10d
	movq	%r8, %r11
	movslq	%r10d, %r10
	negq	%r11
	leaq	(%r10,%r11,2), %rsi
	addq	%rax, %rsi
	.p2align 4,,10
.L279:
	movzbl	(%rdx,%r8), %r10d
	movzbl	-1(%rdx,%r8), %r11d
	leal	2(%r10,%r10,2), %ebx
	addl	%ebx, %r11d
	sarl	$2, %r11d
	movb	%r11b, (%rsi,%r8,2)
	movzbl	1(%rdx,%r8), %r10d
	addl	%ebx, %r10d
	sarl	$2, %r10d
	movb	%r10b, 1(%rsi,%r8,2)
	addq	$1, %r8
	cmpl	%r8d, %ecx
	jg	.L279
.L280:
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	leaq	1(%rcx), %r10
.L275:
	movslq	%r9d, %r9
	leaq	-1(%rdx,%r9), %r8
	movzbl	-2(%rdx,%r9), %edx
	leal	(%rdx,%rdx,2), %r9d
	movzbl	(%r8), %edx
	leal	2(%r9,%rdx), %edx
	sarl	$2, %edx
	movb	%dl, (%rax,%rcx)
	movzbl	(%r8), %edx
	movb	%dl, (%rax,%r10)
.L274:
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
	ret
	.p2align 4,,10
.L290:
	movb	%cl, 1(%rax)
	movb	%cl, (%rax)
	jmp	.L274
	.p2align 4,,10
.L276:
	leal	-3(%r9), %r11d
	movq	%rdx, %r8
	leaq	1(%rdx,%r11), %rdi
	.p2align 4,,10
.L281:
	movzbl	1(%r8), %r11d
	addq	$1, %r8
	addq	$2, %r10
	movzbl	-1(%r8), %ebx
	leal	2(%r11,%r11,2), %esi
	addl	%esi, %ebx
	sarl	$2, %ebx
	movb	%bl, -2(%r10)
	movzbl	1(%r8), %r11d
	addl	%esi, %r11d
	sarl	$2, %r11d
	movb	%r11b, -1(%r10)
	cmpq	%rdi, %r8
	jne	.L281
	jmp	.L280
	.p2align 4,,10
.L282:
	movl	$3, %r10d
	movl	$2, %ecx
	jmp	.L275
	.seh_endproc
	.p2align 4,,15
	.def	_ZL28stbi__resample_row_hv_2_simdPhS_S_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL28stbi__resample_row_hv_2_simdPhS_S_ii
_ZL28stbi__resample_row_hv_2_simdPhS_S_ii:
.LFB904:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movq	%rcx, %rax
	movzbl	(%rdx), %ecx
	leal	(%rcx,%rcx,2), %r11d
	movzbl	(%r8), %ecx
	addl	%ecx, %r11d
	cmpl	$1, %r9d
	je	.L302
	leal	-1(%r9), %ebp
	movl	%ebp, %ebx
	andl	$-8, %ebx
	jle	.L298
	subl	$1, %ebx
	movdqa	.LC29(%rip), %xmm4
	xorl	%r10d, %r10d
	pxor	%xmm3, %xmm3
	shrl	$3, %ebx
	movl	%ebx, %ecx
	leaq	8(,%rcx,8), %rsi
	.p2align 4,,10
.L295:
	movq	(%r8,%r10), %xmm1
	movq	(%rdx,%r10), %xmm0
	movdqa	%xmm1, %xmm2
	movzbl	8(%rdx,%r10), %ecx
	punpcklbw	%xmm3, %xmm0
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm3, %xmm2
	psllw	$2, %xmm1
	paddw	%xmm2, %xmm1
	leal	(%rcx,%rcx,2), %ecx
	psubw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm5
	movdqa	%xmm1, %xmm2
	pslldq	$2, %xmm0
	pinsrw	$0, %r11d, %xmm0
	movzbl	8(%r8,%r10), %r11d
	psllw	$2, %xmm5
	paddw	%xmm4, %xmm5
	psrldq	$2, %xmm2
	paddw	%xmm5, %xmm0
	psubw	%xmm1, %xmm0
	addl	%r11d, %ecx
	pinsrw	$7, %ecx, %xmm2
	paddw	%xmm5, %xmm2
	psubw	%xmm1, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm2, %xmm1
	psrlw	$4, %xmm1
	punpckhwd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm5
	psrlw	$4, %xmm0
	packuswb	%xmm0, %xmm5
	movups	%xmm5, (%rax,%r10,2)
	movzbl	7(%rdx,%r10), %ecx
	leal	(%rcx,%rcx,2), %r11d
	movzbl	7(%r8,%r10), %ecx
	addq	$8, %r10
	addl	%ecx, %r11d
	cmpq	%r10, %rsi
	jne	.L295
	addl	$1, %ebx
	leal	0(,%rbx,8), %esi
	sall	$4, %ebx
	movslq	%esi, %r10
	movslq	%ebx, %rcx
	addl	$1, %esi
	movzbl	(%rdx,%r10), %ebx
	addq	%rax, %rcx
	movzbl	(%r8,%r10), %r10d
	leal	(%rbx,%rbx,2), %ebx
	addl	%r10d, %ebx
.L294:
	leal	(%rbx,%rbx,2), %r10d
	leal	8(%r11,%r10), %r10d
	sarl	$4, %r10d
	cmpl	%esi, %r9d
	movb	%r10b, (%rcx)
	jle	.L299
	leal	(%rsi,%rsi), %edi
	subl	%esi, %ebp
	movslq	%esi, %rsi
	movslq	%edi, %rdi
	addq	%rsi, %rdx
	addq	$1, %rbp
	addq	%rax, %rdi
	xorl	%r11d, %r11d
	addq	%r8, %rsi
	.p2align 4,,10
.L297:
	movzbl	(%rdx,%r11), %ecx
	leal	(%rcx,%rcx,2), %r10d
	movzbl	(%rsi,%r11), %ecx
	addl	%ecx, %r10d
	leal	(%rbx,%rbx,2), %ecx
	leal	8(%r10,%rcx), %r8d
	leal	(%r10,%r10,2), %ecx
	sarl	$4, %r8d
	leal	8(%rbx,%rcx), %ebx
	movb	%r8b, -1(%rdi,%r11,2)
	sarl	$4, %ebx
	movb	%bl, (%rdi,%r11,2)
	addq	$1, %r11
	movl	%r10d, %ebx
	cmpq	%r11, %rbp
	jne	.L297
.L296:
	addl	%r9d, %r9d
	addl	$2, %r10d
	movslq	%r9d, %r9
	sarl	$2, %r10d
	movb	%r10b, -1(%rax,%r9)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L302:
	addl	$2, %r11d
	sarl	$2, %r11d
	movb	%r11b, 1(%rax)
	movb	%r11b, (%rax)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L299:
	movl	%ebx, %r10d
	jmp	.L296
	.p2align 4,,10
.L298:
	movq	%rax, %rcx
	movl	%r11d, %ebx
	movl	$1, %esi
	jmp	.L294
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC30:
	.ascii "req_comp >= 1 && req_comp <= 4\0"
.LC31:
	.ascii "outofmem\0"
.LC32:
	.ascii "0\0"
	.text
	.p2align 4,,15
	.def	_ZL22stbi__convert_format16Ptiijj.part.31;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbi__convert_format16Ptiijj.part.31
_ZL22stbi__convert_format16Ptiijj.part.31:
.LFB8042:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$296, %rsp
	.seh_stackalloc	296
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movaps	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	movaps	%xmm8, 176(%rsp)
	.seh_savexmm	%xmm8, 176
	movaps	%xmm9, 192(%rsp)
	.seh_savexmm	%xmm9, 192
	movaps	%xmm10, 208(%rsp)
	.seh_savexmm	%xmm10, 208
	movaps	%xmm11, 224(%rsp)
	.seh_savexmm	%xmm11, 224
	movaps	%xmm12, 240(%rsp)
	.seh_savexmm	%xmm12, 240
	movaps	%xmm13, 256(%rsp)
	.seh_savexmm	%xmm13, 256
	movaps	%xmm14, 272(%rsp)
	.seh_savexmm	%xmm14, 272
	.seh_endprologue
	movl	400(%rsp), %r14d
	movq	%rcx, %r15
	movl	%edx, 376(%rsp)
	movl	%r8d, %ebp
	movl	%r9d, %ebx
	leal	-1(%r8), %eax
	cmpl	$3, %eax
	ja	.L493
.L304:
	leal	(%r14,%r14), %ecx
	imull	%ebx, %ecx
	imull	%ebp, %ecx
	call	malloc
	testq	%rax, %rax
	je	.L494
	testl	%r14d, %r14d
	jle	.L307
	movl	376(%rsp), %edi
	leal	-2(%rbx), %edx
	movl	%ebp, %esi
	movl	$1, %r9d
	imull	%ebx, %esi
	leal	-1(%rbx), %r12d
	pcmpeqd	%xmm6, %xmm6
	imull	%ebx, %edi
	movl	%esi, 52(%rsp)
	cmpl	$-1, %edx
	movl	%r9d, %esi
	cmovge	%ebx, %esi
	setl	%dl
	cmpl	$6, %r12d
	setbe	%cl
	movl	%r12d, %ebx
	movl	%edi, 40(%rsp)
	movl	%esi, %edi
	movl	%esi, %r13d
	orl	%edx, %ecx
	andl	$-8, %edi
	shrl	$3, %r13d
	movb	%cl, 98(%rsp)
	movl	%esi, 60(%rsp)
	leaq	.L310(%rip), %r9
	subl	%edi, %ebx
	movl	%edi, %ecx
	cmpl	$7, %r12d
	movl	%ebx, 68(%rsp)
	leaq	0(,%rcx,4), %rbx
	setbe	%r8b
	movl	%edi, 64(%rsp)
	movq	%rbx, 80(%rsp)
	leaq	0(,%rcx,8), %rdi
	orl	%edx, %r8d
	leal	-1(%rsi), %edx
	movq	%rdi, 72(%rsp)
	movl	%edx, %ebx
	andl	$-8, %edx
	movb	%r8b, 99(%rsp)
	leaq	0(,%rdx,8), %rsi
	shrl	$3, %ebx
	movq	%rsi, 120(%rsp)
	leaq	(%rcx,%rcx), %rsi
	movl	376(%rsp), %ecx
	movl	%ebx, 56(%rsp)
	leaq	(%rdx,%rdx), %rdi
	movl	%r12d, %ebx
	subl	%edx, %ebx
	movq	%rdi, 104(%rsp)
	xorl	%edi, %edi
	movl	%ebx, 100(%rsp)
	leaq	0(,%rdx,4), %rbx
	movq	%rbx, 112(%rsp)
	leal	-10(%rbp,%rcx,8), %ebp
	xorl	%ebx, %ebx
	movq	%rsi, 88(%rsp)
	xorl	%esi, %esi
	.p2align 4,,10
.L351:
	movl	%esi, %edx
	cmpl	$25, %ebp
	leaq	(%r15,%rdx,2), %rcx
	movl	%edi, %edx
	leaq	(%rax,%rdx,2), %rdx
	ja	.L308
	movl	%ebp, %r8d
	movslq	(%r9,%r8,4), %r8
	addq	%r9, %r8
	jmp	*%r8
	.section .rdata,"dr"
	.align 4
.L310:
	.long	.L309-.L310
	.long	.L311-.L310
	.long	.L312-.L310
	.long	.L308-.L310
	.long	.L308-.L310
	.long	.L308-.L310
	.long	.L308-.L310
	.long	.L313-.L310
	.long	.L308-.L310
	.long	.L314-.L310
	.long	.L315-.L310
	.long	.L308-.L310
	.long	.L308-.L310
	.long	.L308-.L310
	.long	.L308-.L310
	.long	.L316-.L310
	.long	.L317-.L310
	.long	.L308-.L310
	.long	.L318-.L310
	.long	.L308-.L310
	.long	.L308-.L310
	.long	.L308-.L310
	.long	.L308-.L310
	.long	.L319-.L310
	.long	.L320-.L310
	.long	.L321-.L310
	.text
	.p2align 4,,10
.L320:
	testl	%r12d, %r12d
	js	.L323
	cmpb	$0, 98(%rsp)
	jne	.L357
	movq	%rcx, %r8
	movq	%rdx, %r10
	xorl	%r11d, %r11d
	pxor	%xmm5, %xmm5
	.p2align 4,,10
.L348:
	movdqu	(%r8), %xmm4
	addl	$1, %r11d
	addq	$64, %r8
	addq	$32, %r10
	movdqu	-48(%r8), %xmm3
	movdqu	-32(%r8), %xmm2
	movdqa	%xmm4, %xmm1
	movdqa	%xmm4, %xmm0
	movdqu	-16(%r8), %xmm7
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm0
	punpcklwd	%xmm3, %xmm4
	movdqa	%xmm0, %xmm8
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm1, %xmm0
	punpcklwd	%xmm1, %xmm4
	punpckhwd	%xmm1, %xmm8
	punpcklwd	%xmm7, %xmm3
	punpcklwd	%xmm8, %xmm0
	punpckhwd	%xmm8, %xmm4
	movdqa	%xmm2, %xmm1
	movdqa	%xmm3, %xmm8
	punpcklwd	%xmm7, %xmm2
	punpckhwd	%xmm7, %xmm1
	punpcklwd	%xmm1, %xmm3
	punpcklwd	%xmm1, %xmm2
	movdqa	%xmm0, %xmm7
	punpckhwd	%xmm1, %xmm8
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm8, %xmm3
	punpckhwd	%xmm8, %xmm2
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm1, %xmm8
	punpckhwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm7, %xmm8
	punpcklwd	%xmm7, %xmm1
	punpcklwd	%xmm7, %xmm0
	punpcklwd	%xmm8, %xmm1
	punpckhwd	%xmm8, %xmm0
	movdqa	%xmm4, %xmm3
	movdqa	%xmm4, %xmm8
	punpcklwd	%xmm2, %xmm4
	punpckhwd	%xmm2, %xmm3
	punpcklwd	%xmm2, %xmm8
	movdqa	%xmm1, %xmm2
	movdqa	%xmm8, %xmm7
	punpcklwd	%xmm5, %xmm2
	punpckhwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm8
	punpcklwd	%xmm3, %xmm4
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm7, %xmm8
	punpckhwd	%xmm7, %xmm4
	punpckhwd	%xmm5, %xmm1
	pslld	$2, %xmm3
	paddd	%xmm2, %xmm3
	pslld	$2, %xmm3
	psubd	%xmm2, %xmm3
	pslld	$2, %xmm3
	paddd	%xmm2, %xmm3
	movdqa	%xmm8, %xmm2
	punpckhwd	%xmm5, %xmm8
	punpcklwd	%xmm5, %xmm2
	movdqa	%xmm2, %xmm7
	pslld	$2, %xmm7
	paddd	%xmm2, %xmm7
	movdqa	%xmm7, %xmm2
	pslld	$4, %xmm2
	psubd	%xmm7, %xmm2
	movdqa	%xmm2, %xmm7
	pslld	$1, %xmm7
	paddd	%xmm7, %xmm3
	movdqa	%xmm0, %xmm7
	punpckhwd	%xmm5, %xmm0
	movdqa	%xmm3, %xmm2
	punpcklwd	%xmm5, %xmm7
	movdqa	%xmm7, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm7, %xmm3
	pslld	$2, %xmm3
	paddd	%xmm3, %xmm7
	movdqa	%xmm2, %xmm3
	movdqa	%xmm1, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm7, %xmm3
	paddd	%xmm1, %xmm2
	psrad	$8, %xmm3
	pslld	$2, %xmm2
	psubd	%xmm1, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm2, %xmm1
	movdqa	%xmm8, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm2, %xmm8
	movdqa	%xmm8, %xmm2
	pslld	$4, %xmm2
	psubd	%xmm8, %xmm2
	pslld	$1, %xmm2
	paddd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm0, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm3, %xmm1
	psrad	$8, %xmm0
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	punpcklwd	%xmm1, %xmm3
	punpckhwd	%xmm1, %xmm0
	punpcklwd	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm4, %xmm0
	movups	%xmm3, -16(%r10)
	movups	%xmm0, -32(%r10)
	cmpl	%r11d, %r13d
	ja	.L348
	addq	72(%rsp), %rcx
	addq	80(%rsp), %rdx
	movl	64(%rsp), %r10d
	cmpl	%r10d, 60(%rsp)
	je	.L323
	movl	68(%rsp), %r10d
.L346:
	movzwl	(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	2(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	4(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	testl	%r10d, %r10d
	movw	%r8w, (%rdx)
	movzwl	6(%rcx), %r8d
	movw	%r8w, 2(%rdx)
	je	.L323
	movzwl	8(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	10(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	12(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	cmpl	$1, %r10d
	movw	%r8w, 4(%rdx)
	movzwl	14(%rcx), %r8d
	movw	%r8w, 6(%rdx)
	je	.L323
	movzwl	16(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	18(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	20(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	cmpl	$2, %r10d
	movw	%r8w, 8(%rdx)
	movzwl	22(%rcx), %r8d
	movw	%r8w, 10(%rdx)
	je	.L323
	movzwl	24(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	26(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	28(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	cmpl	$3, %r10d
	movw	%r8w, 12(%rdx)
	movzwl	30(%rcx), %r8d
	movw	%r8w, 14(%rdx)
	je	.L323
	movzwl	32(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	34(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	36(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	cmpl	$4, %r10d
	movw	%r8w, 16(%rdx)
	movzwl	38(%rcx), %r8d
	movw	%r8w, 18(%rdx)
	je	.L323
	movzwl	40(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	42(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	44(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	cmpl	$5, %r10d
	movw	%r8w, 20(%rdx)
	movzwl	46(%rcx), %r8d
	movw	%r8w, 22(%rdx)
	je	.L323
	movzwl	48(%rcx), %r8d
	imull	$77, %r8d, %r10d
	movzwl	50(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r10d, %r8d
	movzwl	52(%rcx), %r10d
	imull	$29, %r10d, %r10d
	addl	%r10d, %r8d
	sarl	$8, %r8d
	movw	%r8w, 24(%rdx)
	movzwl	54(%rcx), %ecx
	movw	%cx, 26(%rdx)
	.p2align 4,,10
.L323:
	addl	$1, %ebx
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	jne	.L351
.L307:
	movq	%r15, %rcx
	movq	%rax, 40(%rsp)
	call	free
	movq	40(%rsp), %rax
.L303:
	movaps	144(%rsp), %xmm6
	movaps	160(%rsp), %xmm7
	movaps	176(%rsp), %xmm8
	movaps	192(%rsp), %xmm9
	movaps	208(%rsp), %xmm10
	movaps	224(%rsp), %xmm11
	movaps	240(%rsp), %xmm12
	movaps	256(%rsp), %xmm13
	movaps	272(%rsp), %xmm14
	addq	$296, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L321:
	testl	%r12d, %r12d
	js	.L323
	movl	%r12d, %r8d
	.p2align 4,,10
.L350:
	movzwl	(%rcx), %r10d
	subl	$1, %r8d
	addq	$8, %rcx
	addq	$6, %rdx
	movw	%r10w, -6(%rdx)
	movzwl	-6(%rcx), %r10d
	movw	%r10w, -4(%rdx)
	movzwl	-4(%rcx), %r10d
	movw	%r10w, -2(%rdx)
	cmpl	$-1, %r8d
	jne	.L350
	addl	$1, %ebx
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L319:
	testl	%r12d, %r12d
	js	.L323
	cmpb	$0, 99(%rsp)
	jne	.L356
	movq	%rcx, %r8
	movq	%rdx, %r11
	xorl	%r10d, %r10d
	pxor	%xmm4, %xmm4
	.p2align 4,,10
.L345:
	movdqu	(%r8), %xmm7
	addl	$1, %r10d
	addq	$64, %r8
	addq	$16, %r11
	movdqu	-48(%r8), %xmm10
	movdqu	-32(%r8), %xmm2
	movdqa	%xmm7, %xmm1
	movdqa	%xmm7, %xmm9
	movdqu	-16(%r8), %xmm8
	punpcklwd	%xmm10, %xmm1
	movdqa	%xmm1, %xmm13
	punpckhwd	%xmm10, %xmm9
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm9, %xmm13
	movdqa	%xmm2, %xmm5
	punpcklwd	%xmm9, %xmm1
	punpcklwd	%xmm8, %xmm3
	punpcklwd	%xmm13, %xmm1
	movdqa	%xmm3, %xmm12
	movdqa	%xmm1, %xmm11
	movdqa	%xmm1, %xmm0
	punpckhwd	%xmm8, %xmm5
	punpcklwd	%xmm10, %xmm7
	punpckhwd	%xmm5, %xmm12
	punpcklwd	%xmm5, %xmm3
	punpcklwd	%xmm9, %xmm7
	punpcklwd	%xmm12, %xmm3
	punpckhwd	%xmm13, %xmm7
	punpckhwd	%xmm3, %xmm11
	punpcklwd	%xmm3, %xmm0
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm7, %xmm3
	movdqa	%xmm0, %xmm14
	punpcklwd	%xmm8, %xmm2
	punpcklwd	%xmm5, %xmm2
	punpckhwd	%xmm12, %xmm2
	punpckhwd	%xmm2, %xmm3
	punpcklwd	%xmm2, %xmm7
	movdqa	%xmm7, %xmm2
	punpckhwd	%xmm11, %xmm14
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm7
	punpcklwd	%xmm11, %xmm0
	punpcklwd	%xmm2, %xmm7
	punpcklwd	%xmm14, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm11, %xmm1
	punpckhwd	%xmm14, %xmm1
	punpcklwd	%xmm4, %xmm2
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm4, %xmm0
	pslld	$2, %xmm3
	paddd	%xmm2, %xmm3
	pslld	$2, %xmm3
	psubd	%xmm2, %xmm3
	pslld	$2, %xmm3
	paddd	%xmm2, %xmm3
	movdqa	%xmm7, %xmm2
	punpckhwd	%xmm4, %xmm7
	punpcklwd	%xmm4, %xmm2
	movdqa	%xmm2, %xmm5
	pslld	$2, %xmm5
	paddd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm2
	pslld	$4, %xmm2
	psubd	%xmm5, %xmm2
	movdqa	%xmm2, %xmm5
	pslld	$1, %xmm5
	paddd	%xmm5, %xmm3
	movdqa	%xmm1, %xmm5
	punpckhwd	%xmm4, %xmm1
	movdqa	%xmm3, %xmm2
	punpcklwd	%xmm4, %xmm5
	movdqa	%xmm5, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm5, %xmm3
	pslld	$2, %xmm3
	paddd	%xmm3, %xmm5
	movdqa	%xmm2, %xmm3
	movdqa	%xmm0, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm5, %xmm3
	paddd	%xmm0, %xmm2
	psrad	$8, %xmm3
	pslld	$2, %xmm2
	psubd	%xmm0, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm2, %xmm0
	movdqa	%xmm7, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm2, %xmm7
	movdqa	%xmm7, %xmm2
	pslld	$4, %xmm2
	psubd	%xmm7, %xmm2
	pslld	$1, %xmm2
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm1, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm2, %xmm1
	paddd	%xmm0, %xmm1
	movdqa	%xmm3, %xmm0
	psrad	$8, %xmm1
	punpckhwd	%xmm1, %xmm0
	punpcklwd	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	punpcklwd	%xmm0, %xmm3
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm1, %xmm3
	movups	%xmm3, -16(%r11)
	cmpl	%r10d, 56(%rsp)
	ja	.L345
	addq	120(%rsp), %rcx
	addq	104(%rsp), %rdx
	movl	100(%rsp), %r10d
.L344:
	movzwl	(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	2(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	4(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	testl	%r10d, %r10d
	movw	%r8w, (%rdx)
	je	.L323
	movzwl	8(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	10(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	12(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	cmpl	$1, %r10d
	movw	%r8w, 2(%rdx)
	je	.L323
	movzwl	16(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	18(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	20(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	cmpl	$2, %r10d
	movw	%r8w, 4(%rdx)
	je	.L323
	movzwl	24(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	26(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	28(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	cmpl	$3, %r10d
	movw	%r8w, 6(%rdx)
	je	.L323
	movzwl	32(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	34(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	36(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	cmpl	$4, %r10d
	movw	%r8w, 8(%rdx)
	je	.L323
	movzwl	40(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	42(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	44(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	cmpl	$5, %r10d
	movw	%r8w, 10(%rdx)
	je	.L323
	movzwl	48(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzwl	50(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzwl	52(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	sarl	$8, %r8d
	cmpl	$6, %r10d
	movw	%r8w, 12(%rdx)
	je	.L323
	movzwl	56(%rcx), %r10d
	addl	$1, %ebx
	movzwl	58(%rcx), %r8d
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	imull	$77, %r10d, %r10d
	imull	$150, %r8d, %r8d
	addl	%r10d, %r8d
	movzwl	60(%rcx), %r10d
	imull	$29, %r10d, %r10d
	addl	%r10d, %r8d
	sarl	$8, %r8d
	cmpl	%r14d, %ebx
	movw	%r8w, 14(%rdx)
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L318:
	testl	%r12d, %r12d
	js	.L323
	movl	%r12d, %r8d
	.p2align 4,,10
.L341:
	movzwl	(%rcx), %r10d
	subl	$1, %r8d
	addq	$6, %rcx
	addq	$8, %rdx
	movw	%r10w, -8(%rdx)
	movzwl	-4(%rcx), %r10d
	movw	%r10w, -6(%rdx)
	movzwl	-2(%rcx), %r10d
	movw	%r10w, -4(%rdx)
	movl	$-1, %r10d
	movw	%r10w, -2(%rdx)
	cmpl	$-1, %r8d
	jne	.L341
	addl	$1, %ebx
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L316:
	testl	%r12d, %r12d
	js	.L323
	movl	%r12d, %r11d
	.p2align 4,,10
.L342:
	movzwl	(%rcx), %r8d
	subl	$1, %r11d
	addq	$6, %rcx
	addq	$2, %rdx
	imull	$77, %r8d, %r10d
	movzwl	-4(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r10d, %r8d
	movzwl	-2(%rcx), %r10d
	imull	$29, %r10d, %r10d
	addl	%r10d, %r8d
	sarl	$8, %r8d
	movw	%r8w, -2(%rdx)
	cmpl	$-1, %r11d
	jne	.L342
	addl	$1, %ebx
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L315:
	testl	%r12d, %r12d
	js	.L323
	cmpb	$0, 98(%rsp)
	jne	.L355
	movq	%rcx, %r10
	movq	%rdx, %r8
	xorl	%r11d, %r11d
	.p2align 4,,10
.L339:
	movdqu	(%r10), %xmm1
	addl	$1, %r11d
	addq	$32, %r10
	addq	$64, %r8
	movdqu	-16(%r10), %xmm3
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm3, %xmm0
	movdqa	%xmm0, %xmm4
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm0
	punpcklwd	%xmm2, %xmm1
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm4, %xmm1
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm0, %xmm3
	punpckhwd	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm4
	punpckhwd	%xmm1, %xmm0
	movdqa	%xmm3, %xmm1
	punpckhwd	%xmm4, %xmm3
	movups	%xmm3, -48(%r8)
	punpcklwd	%xmm4, %xmm1
	movups	%xmm1, -64(%r8)
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm0, %xmm2
	punpcklwd	%xmm0, %xmm1
	movups	%xmm2, -16(%r8)
	movups	%xmm1, -32(%r8)
	cmpl	%r13d, %r11d
	jb	.L339
	addq	80(%rsp), %rcx
	addq	72(%rsp), %rdx
	movl	64(%rsp), %r10d
	cmpl	%r10d, 60(%rsp)
	je	.L323
	movl	68(%rsp), %r8d
.L337:
	movzwl	(%rcx), %r10d
	testl	%r8d, %r8d
	movw	%r10w, 4(%rdx)
	movw	%r10w, 2(%rdx)
	movw	%r10w, (%rdx)
	movzwl	2(%rcx), %r10d
	movw	%r10w, 6(%rdx)
	je	.L323
	movzwl	4(%rcx), %r10d
	cmpl	$1, %r8d
	movw	%r10w, 12(%rdx)
	movw	%r10w, 10(%rdx)
	movw	%r10w, 8(%rdx)
	movzwl	6(%rcx), %r10d
	movw	%r10w, 14(%rdx)
	je	.L323
	movzwl	8(%rcx), %r10d
	cmpl	$2, %r8d
	movw	%r10w, 20(%rdx)
	movw	%r10w, 18(%rdx)
	movw	%r10w, 16(%rdx)
	movzwl	10(%rcx), %r10d
	movw	%r10w, 22(%rdx)
	je	.L323
	movzwl	12(%rcx), %r10d
	cmpl	$3, %r8d
	movw	%r10w, 28(%rdx)
	movw	%r10w, 26(%rdx)
	movw	%r10w, 24(%rdx)
	movzwl	14(%rcx), %r10d
	movw	%r10w, 30(%rdx)
	je	.L323
	movzwl	16(%rcx), %r10d
	cmpl	$4, %r8d
	movw	%r10w, 36(%rdx)
	movw	%r10w, 34(%rdx)
	movw	%r10w, 32(%rdx)
	movzwl	18(%rcx), %r10d
	movw	%r10w, 38(%rdx)
	je	.L323
	movzwl	20(%rcx), %r10d
	cmpl	$5, %r8d
	movw	%r10w, 44(%rdx)
	movw	%r10w, 42(%rdx)
	movw	%r10w, 40(%rdx)
	movzwl	22(%rcx), %r10d
	movw	%r10w, 46(%rdx)
	je	.L323
	movzwl	24(%rcx), %r8d
	addl	$1, %ebx
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	movw	%r8w, 52(%rdx)
	movw	%r8w, 50(%rdx)
	movw	%r8w, 48(%rdx)
	movzwl	26(%rcx), %ecx
	movw	%cx, 54(%rdx)
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L317:
	testl	%r12d, %r12d
	js	.L323
	movl	%r12d, %r11d
	.p2align 4,,10
.L343:
	movzwl	(%rcx), %r8d
	subl	$1, %r11d
	addq	$6, %rcx
	addq	$4, %rdx
	imull	$77, %r8d, %r10d
	movzwl	-4(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r10d, %r8d
	movzwl	-2(%rcx), %r10d
	imull	$29, %r10d, %r10d
	addl	%r10d, %r8d
	sarl	$8, %r8d
	movw	%r8w, -4(%rdx)
	movl	$-1, %r8d
	movw	%r8w, -2(%rdx)
	cmpl	$-1, %r11d
	jne	.L343
	addl	$1, %ebx
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L314:
	testl	%r12d, %r12d
	js	.L323
	movl	%r12d, %r10d
	.p2align 4,,10
.L336:
	movzwl	(%rcx), %r8d
	subl	$1, %r10d
	addq	$4, %rcx
	addq	$6, %rdx
	movw	%r8w, -2(%rdx)
	movw	%r8w, -4(%rdx)
	movw	%r8w, -6(%rdx)
	cmpl	$-1, %r10d
	jne	.L336
	addl	$1, %ebx
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L313:
	testl	%r12d, %r12d
	js	.L323
	cmpb	$0, 99(%rsp)
	jne	.L354
	movl	56(%rsp), %r11d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	.p2align 4,,10
.L335:
	movdqu	(%rcx,%r8,2), %xmm0
	addl	$1, %r10d
	movdqu	16(%rcx,%r8,2), %xmm2
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm2, %xmm0
	movups	%xmm0, (%rdx,%r8)
	addq	$16, %r8
	cmpl	%r11d, %r10d
	jb	.L335
	addq	112(%rsp), %rcx
	addq	104(%rsp), %rdx
	movl	100(%rsp), %r8d
.L334:
	movzwl	(%rcx), %r10d
	testl	%r8d, %r8d
	movw	%r10w, (%rdx)
	je	.L323
	movzwl	4(%rcx), %r10d
	cmpl	$1, %r8d
	movw	%r10w, 2(%rdx)
	je	.L323
	movzwl	8(%rcx), %r10d
	cmpl	$2, %r8d
	movw	%r10w, 4(%rdx)
	je	.L323
	movzwl	12(%rcx), %r10d
	cmpl	$3, %r8d
	movw	%r10w, 6(%rdx)
	je	.L323
	movzwl	16(%rcx), %r10d
	cmpl	$4, %r8d
	movw	%r10w, 8(%rdx)
	je	.L323
	movzwl	20(%rcx), %r10d
	cmpl	$5, %r8d
	movw	%r10w, 10(%rdx)
	je	.L323
	movzwl	24(%rcx), %r10d
	cmpl	$6, %r8d
	movw	%r10w, 12(%rdx)
	je	.L323
	movzwl	28(%rcx), %ecx
	addl	$1, %ebx
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	movw	%cx, 14(%rdx)
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L312:
	testl	%r12d, %r12d
	js	.L323
	cmpb	$0, 98(%rsp)
	jne	.L353
	movq	%rdx, %r8
	movq	%rcx, %r11
	xorl	%r10d, %r10d
	.p2align 4,,10
.L332:
	movdqu	(%r11), %xmm0
	addl	$1, %r10d
	addq	$64, %r8
	addq	$16, %r11
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm0, %xmm2
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm6, %xmm3
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm3, %xmm2
	movups	%xmm2, -48(%r8)
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm6, %xmm0
	punpcklwd	%xmm3, %xmm4
	punpcklwd	%xmm0, %xmm2
	movups	%xmm4, -64(%r8)
	punpckhwd	%xmm0, %xmm1
	movups	%xmm2, -32(%r8)
	movups	%xmm1, -16(%r8)
	cmpl	%r10d, %r13d
	ja	.L332
	addq	88(%rsp), %rcx
	addq	72(%rsp), %rdx
	movl	64(%rsp), %r10d
	cmpl	%r10d, 60(%rsp)
	je	.L323
	movl	68(%rsp), %r8d
.L330:
	movzwl	(%rcx), %r10d
	movl	$-1, %r11d
	testl	%r8d, %r8d
	movw	%r11w, 6(%rdx)
	movw	%r10w, 4(%rdx)
	movw	%r10w, 2(%rdx)
	movw	%r10w, (%rdx)
	je	.L323
	movzwl	2(%rcx), %r10d
	cmpl	$1, %r8d
	movw	%r10w, 12(%rdx)
	movw	%r10w, 10(%rdx)
	movw	%r10w, 8(%rdx)
	movl	$-1, %r10d
	movw	%r10w, 14(%rdx)
	je	.L323
	movzwl	4(%rcx), %r10d
	movl	$-1, %r11d
	cmpl	$2, %r8d
	movw	%r11w, 22(%rdx)
	movw	%r10w, 20(%rdx)
	movw	%r10w, 18(%rdx)
	movw	%r10w, 16(%rdx)
	je	.L323
	movzwl	6(%rcx), %r10d
	cmpl	$3, %r8d
	movw	%r10w, 28(%rdx)
	movw	%r10w, 26(%rdx)
	movw	%r10w, 24(%rdx)
	movl	$-1, %r10d
	movw	%r10w, 30(%rdx)
	je	.L323
	movzwl	8(%rcx), %r10d
	movl	$-1, %r11d
	cmpl	$4, %r8d
	movw	%r11w, 38(%rdx)
	movw	%r10w, 36(%rdx)
	movw	%r10w, 34(%rdx)
	movw	%r10w, 32(%rdx)
	je	.L323
	movzwl	10(%rcx), %r10d
	cmpl	$5, %r8d
	movw	%r10w, 44(%rdx)
	movw	%r10w, 42(%rdx)
	movw	%r10w, 40(%rdx)
	movl	$-1, %r10d
	movw	%r10w, 46(%rdx)
	je	.L323
	movzwl	12(%rcx), %ecx
	addl	$1, %ebx
	movl	$-1, %r11d
	addl	40(%rsp), %esi
	movw	%r11w, 54(%rdx)
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	movw	%cx, 52(%rdx)
	movw	%cx, 50(%rdx)
	movw	%cx, 48(%rdx)
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L311:
	testl	%r12d, %r12d
	js	.L323
	movl	%r12d, %r10d
	.p2align 4,,10
.L329:
	movzwl	(%rcx), %r8d
	subl	$1, %r10d
	addq	$2, %rcx
	addq	$6, %rdx
	movw	%r8w, -2(%rdx)
	movw	%r8w, -4(%rdx)
	movw	%r8w, -6(%rdx)
	cmpl	$-1, %r10d
	jne	.L329
	addl	$1, %ebx
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L309:
	testl	%r12d, %r12d
	js	.L323
	cmpb	$0, 98(%rsp)
	jne	.L352
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	.p2align 4,,10
.L326:
	movdqu	(%rcx,%r8), %xmm0
	addl	$1, %r10d
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm6, %xmm0
	movups	%xmm0, 16(%rdx,%r8,2)
	punpcklwd	%xmm6, %xmm1
	movups	%xmm1, (%rdx,%r8,2)
	addq	$16, %r8
	cmpl	%r10d, %r13d
	ja	.L326
	addq	88(%rsp), %rcx
	addq	80(%rsp), %rdx
	movl	64(%rsp), %r10d
	cmpl	%r10d, 60(%rsp)
	je	.L323
	movl	68(%rsp), %r8d
.L324:
	movzwl	(%rcx), %r10d
	movl	$-1, %r11d
	testl	%r8d, %r8d
	movw	%r11w, 2(%rdx)
	movw	%r10w, (%rdx)
	je	.L323
	movzwl	2(%rcx), %r10d
	cmpl	$1, %r8d
	movw	%r10w, 4(%rdx)
	movl	$-1, %r10d
	movw	%r10w, 6(%rdx)
	je	.L323
	movzwl	4(%rcx), %r10d
	movl	$-1, %r11d
	cmpl	$2, %r8d
	movw	%r11w, 10(%rdx)
	movw	%r10w, 8(%rdx)
	je	.L323
	movzwl	6(%rcx), %r10d
	cmpl	$3, %r8d
	movw	%r10w, 12(%rdx)
	movl	$-1, %r10d
	movw	%r10w, 14(%rdx)
	je	.L323
	movzwl	8(%rcx), %r10d
	movl	$-1, %r11d
	cmpl	$4, %r8d
	movw	%r11w, 18(%rdx)
	movw	%r10w, 16(%rdx)
	je	.L323
	movzwl	10(%rcx), %r10d
	cmpl	$5, %r8d
	movw	%r10w, 20(%rdx)
	movl	$-1, %r10d
	movw	%r10w, 22(%rdx)
	je	.L323
	movzwl	12(%rcx), %ecx
	addl	$1, %ebx
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	movw	%cx, 24(%rdx)
	movl	$-1, %ecx
	movw	%cx, 26(%rdx)
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L308:
	leaq	.LC3(%rip), %rdx
	movl	$1555, %r8d
	addl	$1, %ebx
	movq	%rax, 136(%rsp)
	leaq	.LC32(%rip), %rcx
	movq	%r9, 128(%rsp)
	call	_assert
	addl	40(%rsp), %esi
	addl	52(%rsp), %edi
	cmpl	%r14d, %ebx
	movq	136(%rsp), %rax
	movq	128(%rsp), %r9
	jne	.L351
	jmp	.L307
	.p2align 4,,10
.L493:
	leaq	.LC3(%rip), %rdx
	movl	$1526, %r8d
	leaq	.LC30(%rip), %rcx
	call	_assert
	jmp	.L304
.L352:
	movl	%r12d, %r8d
	jmp	.L324
.L357:
	movl	%r12d, %r10d
	jmp	.L346
.L356:
	movl	%r12d, %r10d
	jmp	.L344
.L355:
	movl	%r12d, %r8d
	jmp	.L337
.L354:
	movl	%r12d, %r8d
	jmp	.L334
.L353:
	movl	%r12d, %r8d
	jmp	.L330
.L494:
	movq	%r15, %rcx
	movq	%rax, 40(%rsp)
	call	free
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	40(%rsp), %rax
	jmp	.L303
	.seh_endproc
	.p2align 4,,15
	.def	_Z9resize_uiiii.part.51;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z9resize_uiiii.part.51
_Z9resize_uiiii.part.51:
.LFB8062:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm0
	cmpl	%edx, %ecx
	cvtsi2ss	%edx, %xmm1
	movaps	%xmm0, %xmm2
	jg	.L496
	movaps	%xmm1, %xmm2
.L496:
	pxor	%xmm3, %xmm3
	cvtsi2ss	%r8d, %xmm3
	divss	%xmm3, %xmm2
	divss	%xmm2, %xmm1
	divss	%xmm2, %xmm0
	movd	%xmm1, %eax
	movq	%rax, %rdx
	salq	$32, %rdx
	movd	%xmm0, %eax
	orq	%rdx, %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC33:
	.ascii "C:/libraries/include/stb/stb_image_write.h\0"
.LC34:
	.ascii "p\0"
	.text
	.p2align 4,,15
	.def	_ZL14stbiw__sbgrowfPPvii.constprop.119;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbiw__sbgrowfPPvii.constprop.119
_ZL14stbiw__sbgrowfPPvii.constprop.119:
.LFB8139:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L499
	movl	-8(%rcx), %eax
	subq	$8, %rcx
	leal	1(%rax,%rax), %esi
	imull	%esi, %edx
	movslq	%edx, %rdx
	addq	$8, %rdx
	call	realloc
	testq	%rax, %rax
	movq	%rax, %rdx
	je	.L505
.L500:
	cmpq	$0, (%rbx)
	je	.L506
.L504:
	leaq	8(%rdx), %rax
	movq	%rax, (%rbx)
	movl	%esi, (%rdx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L499:
	addl	%edx, %edx
	movl	$2, %esi
	movslq	%edx, %rdx
	addq	$8, %rdx
	call	realloc
	testq	%rax, %rax
	movq	%rax, %rdx
	jne	.L500
.L505:
	leaq	.LC33(%rip), %rdx
	movl	$666, %r8d
	leaq	.LC34(%rip), %rcx
	call	_assert
	movq	(%rbx), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L506:
	movl	$0, 4(%rdx)
	jmp	.L504
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.120;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.120
_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.120:
.LFB8138:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movl	192(%rsp), %ebx
	movl	200(%rsp), %ebp
	movl	224(%rsp), %r13d
	movq	240(%rsp), %r15
	testl	%ebx, %ebx
	movq	%rcx, %rsi
	movl	%r9d, %r12d
	js	.L528
	testl	%r9d, %r9d
	js	.L528
	leaq	248(%rsp), %rdx
	movq	%rdx, 72(%rsp)
	leaq	68(%rsp), %rdi
.L509:
	movzbl	(%r15), %eax
	testb	%al, %al
	je	.L511
.L550:
	addq	$1, %r15
	cmpb	$49, %al
	je	.L513
	jle	.L549
	cmpb	$50, %al
	je	.L515
	cmpb	$52, %al
	jne	.L512
	movl	(%rdx), %eax
	leaq	8(%rdx), %r14
	movl	$4, %r8d
	movq	8(%rsi), %rcx
	movl	%eax, %edx
	movb	%al, 68(%rsp)
	shrl	$16, %edx
	movb	%ah, 69(%rsp)
	shrl	$24, %eax
	movb	%dl, 70(%rsp)
	movq	%rdi, %rdx
	movb	%al, 71(%rsp)
	call	*(%rsi)
	movzbl	(%r15), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L550
	.p2align 4,,10
.L511:
	testl	%ebx, %ebx
	movl	$0, 68(%rsp)
	je	.L517
	leal	-1(%rbx), %eax
	movl	%ebp, %edi
	movslq	%ebp, %r14
	imull	%r12d, %edi
	movl	%eax, 44(%rsp)
	leaq	-1(%r14), %r15
	imull	%edi, %eax
	movl	%edi, 52(%rsp)
	movl	%eax, 48(%rsp)
	leaq	68(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	65(%rsp), %rax
	movq	%rax, 32(%rsp)
	.p2align 4,,10
.L527:
	testl	%r12d, %r12d
	je	.L551
	movslq	48(%rsp), %rbx
	xorl	%edi, %edi
	addq	216(%rsp), %rbx
	movq	8(%rsi), %rcx
	movq	(%rsi), %rax
	jmp	.L526
	.p2align 4,,10
.L521:
	cmpl	$4, %ebp
	jne	.L519
	testl	%r13d, %r13d
	movzbl	(%rbx), %edx
	movzbl	1(%rbx), %r8d
	movzbl	2(%rbx), %r9d
	jne	.L520
	movzbl	3(%rbx), %r11d
	subl	$255, %r9d
	subl	$255, %edx
	imull	%r11d, %r9d
	imull	%r11d, %r8d
	imull	%edx, %r11d
	movslq	%r9d, %r10
	imulq	$-2139062143, %r10, %r10
	movslq	%r11d, %rdx
	imulq	$-2139062143, %rdx, %rdx
	shrq	$32, %r10
	addl	%r9d, %r10d
	sarl	$31, %r9d
	sarl	$7, %r10d
	shrq	$32, %rdx
	subl	%r9d, %r10d
	addl	%r11d, %edx
	sarl	$31, %r11d
	subl	$1, %r10d
	sarl	$7, %edx
	movb	%r10b, 65(%rsp)
	movl	$2155905153, %r10d
	subl	%r11d, %edx
	imulq	%r10, %r8
	subl	$1, %edx
	movb	%dl, 67(%rsp)
	movq	32(%rsp), %rdx
	shrq	$39, %r8
	movb	%r8b, 66(%rsp)
	movl	$3, %r8d
	call	*%rax
	movq	8(%rsi), %rcx
	movq	(%rsi), %rax
.L525:
	addl	$1, %edi
	addq	%r14, %rbx
	cmpl	%edi, %r12d
	je	.L518
	.p2align 4,,10
.L526:
	cmpl	$3, %ebp
	je	.L552
	jg	.L521
	cmpl	$1, %ebp
	jl	.L519
	movl	208(%rsp), %edx
	testl	%edx, %edx
	je	.L524
	movzbl	(%rbx), %edx
	movb	%dl, 65(%rsp)
	movb	%dl, 66(%rsp)
.L548:
	movb	%dl, 67(%rsp)
	movl	$3, %r8d
	movq	32(%rsp), %rdx
	call	*%rax
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
.L519:
	cmpl	$1, %r13d
	jne	.L525
	leaq	(%r15,%rbx), %rdx
	addl	$1, %edi
	movl	$1, %r8d
	call	*%rax
	addq	%r14, %rbx
	cmpl	%edi, %r12d
	movq	8(%rsi), %rcx
	movq	(%rsi), %rax
	jne	.L526
.L518:
	movl	232(%rsp), %r8d
	movq	56(%rsp), %rdx
	call	*%rax
	movl	52(%rsp), %ebx
	subl	$1, 44(%rsp)
	movl	44(%rsp), %eax
	subl	%ebx, 48(%rsp)
	cmpl	$-1, %eax
	jne	.L527
.L517:
	movl	$1, %eax
	jmp	.L507
	.p2align 4,,10
.L528:
	xorl	%eax, %eax
.L507:
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L552:
	movzbl	(%rbx), %edx
	movzbl	1(%rbx), %r8d
	movzbl	2(%rbx), %r9d
.L520:
	movb	%r9b, 65(%rsp)
	movb	%r8b, 66(%rsp)
	jmp	.L548
	.p2align 4,,10
.L524:
	movl	$1, %r8d
	movq	%rbx, %rdx
	call	*%rax
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	jmp	.L519
	.p2align 4,,10
.L549:
	cmpb	$32, %al
	je	.L509
.L512:
	leaq	.LC33(%rip), %rdx
	movl	$266, %r8d
	leaq	.LC32(%rip), %rcx
	call	_assert
	jmp	.L511
	.p2align 4,,10
.L515:
	movl	(%rdx), %eax
	leaq	8(%rdx), %r14
	movl	$2, %r8d
	movq	%rdi, %rdx
	movq	8(%rsi), %rcx
	movb	%al, 68(%rsp)
	movb	%ah, 69(%rsp)
	call	*(%rsi)
	movq	%r14, %rdx
	jmp	.L509
	.p2align 4,,10
.L513:
	movl	(%rdx), %eax
	leaq	8(%rdx), %r14
	movl	$1, %r8d
	movq	%rdi, %rdx
	movq	8(%rsi), %rcx
	movb	%al, 68(%rsp)
	call	*(%rsi)
	movq	%r14, %rdx
	jmp	.L509
	.p2align 4,,10
.L551:
	movq	8(%rsi), %rcx
	movq	(%rsi), %rax
	jmp	.L518
	.seh_endproc
	.p2align 4,,15
	.def	_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.127;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.127
_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.127:
.LFB8131:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testl	%edx, %edx
	jle	.L554
	leal	-1(%rdx), %eax
	leaq	(%rax,%rax,2), %rax
	leaq	18128(%rcx), %rbx
	salq	$5, %rax
	leaq	18224(%rcx,%rax), %rsi
.L558:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L555
	call	free
	movq	$0, 8(%rbx)
	movq	$0, (%rbx)
.L555:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L556
	call	free
	movq	$0, 16(%rbx)
	movq	$0, 32(%rbx)
.L556:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L557
	call	free
	movq	$0, 24(%rbx)
.L557:
	addq	$96, %rbx
	cmpq	%rsi, %rbx
	jne	.L558
.L554:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_2;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_2
__tcf_2:
.LFB7481:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8+_ZZ12image_selectB5cxx11iE8selected(%rip), %rsi
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rbx
	cmpq	%rbx, %rsi
	je	.L570
	.p2align 4,,10
.L571:
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L572
	call	_ZdlPv
	addq	$32, %rbx
	cmpq	%rbx, %rsi
	jne	.L571
.L573:
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rbx
.L570:
	testq	%rbx, %rbx
	je	.L569
	movq	%rbx, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZdlPv
	.p2align 4,,10
.L572:
	addq	$32, %rbx
	cmpq	%rbx, %rsi
	jne	.L571
	jmp	.L573
	.p2align 4,,10
.L569:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC35:
	.ascii "#?RADIANCE\12\0"
.LC36:
	.ascii "#?RGBE\12\0"
	.text
	.p2align 4,,15
	.def	_ZL14stbi__hdr_testP13stbi__context;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__hdr_testP13stbi__context
_ZL14stbi__hdr_testP13stbi__context:
.LFB988:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	.LC35(%rip), %rsi
	movq	184(%rcx), %rdx
	movq	%rcx, %rbx
	movq	192(%rcx), %rcx
	leaq	56(%rbx), %rdi
	leaq	57(%rbx), %rbp
	jmp	.L582
	.p2align 4,,10
.L577:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L578
	movq	%rdi, %rdx
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	movq	%rbp, %rdx
	testl	%eax, %eax
	jne	.L579
	movl	$0, 48(%rbx)
	movq	%rbp, %rcx
	movb	$0, 56(%rbx)
.L580:
	movq	%rcx, 192(%rbx)
	movq	%rbp, 184(%rbx)
.L578:
	movsbl	(%rsi), %r8d
	cmpl	%eax, %r8d
	jne	.L581
.L600:
	addq	$1, %rsi
	cmpb	$0, (%rsi)
	je	.L599
.L582:
	cmpq	%rcx, %rdx
	jnb	.L577
	leaq	1(%rdx), %r8
	movq	%r8, 184(%rbx)
	movzbl	(%rdx), %eax
	movq	%r8, %rdx
	movsbl	(%rsi), %r8d
	cmpl	%eax, %r8d
	je	.L600
.L581:
	movq	200(%rbx), %rdx
	leaq	.LC36(%rip), %rsi
	movq	208(%rbx), %rcx
	leaq	56(%rbx), %rdi
	leaq	57(%rbx), %rbp
	movq	%rdx, 184(%rbx)
	movq	%rcx, 192(%rbx)
	jmp	.L589
	.p2align 4,,10
.L584:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L585
	movq	%rdi, %rdx
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	movq	%rbp, %rdx
	testl	%eax, %eax
	jne	.L586
	movl	$0, 48(%rbx)
	movq	%rbp, %rcx
	movb	$0, 56(%rbx)
.L587:
	movq	%rcx, 192(%rbx)
	movq	%rbp, 184(%rbx)
.L585:
	movsbl	(%rsi), %r8d
	cmpl	%eax, %r8d
	jne	.L590
.L602:
	addq	$1, %rsi
	cmpb	$0, (%rsi)
	je	.L601
.L589:
	cmpq	%rdx, %rcx
	jbe	.L584
	leaq	1(%rdx), %r8
	movq	%r8, 184(%rbx)
	movzbl	(%rdx), %eax
	movq	%r8, %rdx
	movsbl	(%rsi), %r8d
	cmpl	%eax, %r8d
	je	.L602
.L590:
	xorl	%eax, %eax
.L588:
	movdqu	200(%rbx), %xmm0
	movups	%xmm0, 184(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L579:
	cltq
	leaq	(%rdi,%rax), %rcx
	movzbl	56(%rbx), %eax
	jmp	.L580
	.p2align 4,,10
.L599:
	movdqu	200(%rbx), %xmm0
	movl	$1, %eax
	movups	%xmm0, 184(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L586:
	cltq
	leaq	(%rdi,%rax), %rcx
	movzbl	56(%rbx), %eax
	jmp	.L587
	.p2align 4,,10
.L601:
	movl	$1, %eax
	jmp	.L588
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20stbi__pnm_getintegerP13stbi__contextPc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbi__pnm_getintegerP13stbi__contextPc
_ZL20stbi__pnm_getintegerP13stbi__contextPc:
.LFB1001:
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	xorl	%esi, %esi
	leaq	57(%rcx), %rdi
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	jmp	.L613
	.p2align 4,,10
.L617:
	movl	48(%rbx), %edx
	testl	%edx, %edx
	je	.L603
.L608:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L603
	movsbl	0(%rbp), %ecx
	movl	%ecx, %edx
	subl	$48, %edx
	cmpb	$9, %dl
	ja	.L603
	leal	(%rsi,%rsi,4), %edx
	leal	-48(%rcx,%rdx,2), %esi
.L614:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
.L610:
	movb	%al, 0(%rbp)
.L613:
	cmpq	$0, 16(%rbx)
	je	.L608
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	jne	.L617
	movsbl	0(%rbp), %edx
	movl	%edx, %eax
	subl	$48, %eax
	cmpb	$9, %al
	ja	.L603
	leal	(%rsi,%rsi,4), %eax
	leal	-48(%rdx,%rax,2), %esi
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L614
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L616
	leaq	56(%rbx), %r12
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r12, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L611
	movl	$0, 48(%rbx)
	movq	%rdi, %r12
	movb	$0, 56(%rbx)
.L612:
	movq	%r12, 192(%rbx)
	movq	%rdi, 184(%rbx)
	jmp	.L610
	.p2align 4,,10
.L611:
	cltq
	addq	%rax, %r12
	movzbl	56(%rbx), %eax
	jmp	.L612
	.p2align 4,,10
.L603:
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L616:
	xorl	%eax, %eax
	jmp	.L610
	.seh_endproc
	.p2align 4,,15
	.def	_ZL26stbi__gif_parse_colortableP13stbi__contextPA4_hii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL26stbi__gif_parse_colortableP13stbi__contextPA4_hii
_ZL26stbi__gif_parse_colortableP13stbi__contextPA4_hii:
.LFB978:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testl	%r8d, %r8d
	movq	%rcx, %rbx
	movl	%r8d, %r12d
	movl	%r9d, %r13d
	jle	.L618
	leaq	57(%rcx), %rbp
	movq	%rdx, %rsi
	xorl	%edi, %edi
	jmp	.L632
	.p2align 4,,10
.L620:
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L633
	leaq	56(%rbx), %r14
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r14, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L622
	movl	$0, 48(%rbx)
	movq	%rbp, %r14
	movb	$0, 56(%rbx)
.L623:
	movq	%r14, 192(%rbx)
	movq	%rbp, 184(%rbx)
.L621:
	movb	%al, 2(%rsi)
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L637
	movl	48(%rbx), %edx
	testl	%edx, %edx
	je	.L634
	leaq	56(%rbx), %r14
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r14, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L626
	movl	$0, 48(%rbx)
	movq	%rbp, %r14
	movb	$0, 56(%rbx)
.L627:
	movq	%r14, 192(%rbx)
	movq	%rbp, 184(%rbx)
.L625:
	movb	%al, 1(%rsi)
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L638
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L635
	leaq	56(%rbx), %r14
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r14, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L630
	movl	$0, 48(%rbx)
	movq	%rbp, %r14
	movb	$0, 56(%rbx)
.L631:
	movq	%r14, 192(%rbx)
	movq	%rbp, 184(%rbx)
.L629:
	cmpl	%edi, %r13d
	movb	%al, (%rsi)
	setne	%al
	addl	$1, %edi
	addq	$4, %rsi
	negl	%eax
	movb	%al, -1(%rsi)
	cmpl	%edi, %r12d
	je	.L618
.L632:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L620
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	jmp	.L621
	.p2align 4,,10
.L638:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	jmp	.L629
	.p2align 4,,10
.L637:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	jmp	.L625
	.p2align 4,,10
.L626:
	cltq
	addq	%rax, %r14
	movzbl	56(%rbx), %eax
	jmp	.L627
	.p2align 4,,10
.L622:
	cltq
	addq	%rax, %r14
	movzbl	56(%rbx), %eax
	jmp	.L623
	.p2align 4,,10
.L630:
	cltq
	addq	%rax, %r14
	movzbl	56(%rbx), %eax
	jmp	.L631
	.p2align 4,,10
.L618:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L633:
	xorl	%eax, %eax
	jmp	.L621
	.p2align 4,,10
.L635:
	xorl	%eax, %eax
	jmp	.L629
	.p2align 4,,10
.L634:
	xorl	%eax, %eax
	jmp	.L625
	.seh_endproc
	.section .rdata,"dr"
.LC37:
	.ascii "bad sizes\0"
.LC38:
	.ascii "bad codelengths\0"
	.text
	.p2align 4,,15
	.def	_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi
_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi:
.LFB918:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$216, %rsp
	.seh_stackalloc	216
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rdx, %rbx
	movq	%rcx, %r9
	movl	$8, %ecx
	leaq	128(%rsp), %rdx
	movl	%r8d, %esi
	movl	$1024, %r8d
	movq	%rdx, %rdi
	xorl	%edx, %edx
	rep stosq
	movq	%r9, %rcx
	movl	$0, (%rdi)
	call	memset
	leal	-1(%rsi), %ecx
	movq	%rbx, %rdx
	movq	%rax, %r9
	leaq	1(%rbx), %rax
	leaq	(%rax,%rcx), %r8
	jmp	.L640
	.p2align 4,,10
.L712:
	addq	$1, %rax
.L640:
	movzbl	(%rdx), %edx
	addl	$1, 128(%rsp,%rdx,4)
	cmpq	%rax, %r8
	movq	%rax, %rdx
	jne	.L712
	movl	132(%rsp), %r8d
	movl	$0, 128(%rsp)
	cmpl	$2, %r8d
	jg	.L641
	movl	136(%rsp), %edx
	cmpl	$4, %edx
	jg	.L641
	movl	140(%rsp), %r10d
	cmpl	$8, %r10d
	jg	.L641
	movl	144(%rsp), %r11d
	cmpl	$16, %r11d
	jg	.L641
	movl	148(%rsp), %esi
	cmpl	$32, %esi
	jg	.L641
	movl	152(%rsp), %edi
	cmpl	$64, %edi
	jg	.L641
	movl	156(%rsp), %ebp
	cmpl	$128, %ebp
	jg	.L641
	movl	160(%rsp), %r12d
	cmpl	$256, %r12d
	jg	.L641
	movl	164(%rsp), %r13d
	cmpl	$512, %r13d
	jg	.L641
	movl	168(%rsp), %r14d
	cmpl	$1024, %r14d
	jg	.L641
	movl	172(%rsp), %eax
	cmpl	$2048, %eax
	movl	%eax, 44(%rsp)
	jg	.L641
	movl	176(%rsp), %eax
	cmpl	$4096, %eax
	movl	%eax, 48(%rsp)
	jg	.L641
	movl	180(%rsp), %eax
	cmpl	$8192, %eax
	movl	%eax, 52(%rsp)
	jg	.L641
	movl	184(%rsp), %eax
	cmpl	$16384, %eax
	movl	%eax, 56(%rsp)
	jg	.L641
	movl	188(%rsp), %eax
	cmpl	$32768, %eax
	movl	%eax, 60(%rsp)
	jg	.L641
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	movl	$0, 68(%rsp)
	movw	%ax, 1026(%r9)
	movl	%r8d, %eax
	sall	$15, %eax
	movw	%r15w, 1126(%r9)
	movl	%eax, 1060(%r9)
	leal	(%r8,%r8), %eax
	movl	%eax, 72(%rsp)
	movw	%ax, 1028(%r9)
	addl	%edx, %eax
	testl	%edx, %edx
	movw	%r8w, 1128(%r9)
	je	.L644
	cmpl	$4, %eax
	jg	.L645
.L644:
	movl	%eax, %r15d
	addl	%eax, %eax
	addl	%r8d, %edx
	sall	$14, %r15d
	movl	%eax, 76(%rsp)
	movw	%ax, 1030(%r9)
	addl	%r10d, %eax
	testl	%r10d, %r10d
	movl	%r15d, 1064(%r9)
	movw	%dx, 1130(%r9)
	je	.L646
	cmpl	$8, %eax
	jg	.L645
.L646:
	movl	%eax, %r8d
	addl	%eax, %eax
	addl	%r10d, %edx
	sall	$13, %r8d
	movl	%eax, 80(%rsp)
	movw	%ax, 1032(%r9)
	addl	%r11d, %eax
	testl	%r11d, %r11d
	movl	%r8d, 1068(%r9)
	movw	%dx, 1132(%r9)
	je	.L647
	cmpl	$16, %eax
	jg	.L645
.L647:
	movl	%eax, %r8d
	addl	%eax, %eax
	addl	%r11d, %edx
	sall	$12, %r8d
	movl	%eax, 84(%rsp)
	movw	%ax, 1034(%r9)
	addl	%esi, %eax
	testl	%esi, %esi
	movl	%r8d, 1072(%r9)
	movw	%dx, 1134(%r9)
	je	.L648
	cmpl	$32, %eax
	jg	.L645
.L648:
	movl	%eax, %r8d
	addl	%eax, %eax
	addl	%esi, %edx
	sall	$11, %r8d
	movl	%eax, 88(%rsp)
	movw	%ax, 1036(%r9)
	addl	%edi, %eax
	testl	%edi, %edi
	movl	%r8d, 1076(%r9)
	movw	%dx, 1136(%r9)
	je	.L649
	cmpl	$64, %eax
	jg	.L645
.L649:
	movl	%eax, %r8d
	addl	%eax, %eax
	addl	%edi, %edx
	sall	$10, %r8d
	movl	%eax, 92(%rsp)
	movw	%ax, 1038(%r9)
	addl	%ebp, %eax
	testl	%ebp, %ebp
	movl	%r8d, 1080(%r9)
	movw	%dx, 1138(%r9)
	je	.L650
	cmpl	$128, %eax
	jg	.L645
.L650:
	movl	%eax, %r8d
	addl	%eax, %eax
	addl	%ebp, %edx
	sall	$9, %r8d
	movl	%eax, 96(%rsp)
	movw	%ax, 1040(%r9)
	addl	%r12d, %eax
	testl	%r12d, %r12d
	movl	%r8d, 1084(%r9)
	movw	%dx, 1140(%r9)
	je	.L651
	cmpl	$256, %eax
	jg	.L645
.L651:
	movl	%eax, %r8d
	addl	%eax, %eax
	addl	%r12d, %edx
	sall	$8, %r8d
	movl	%eax, 100(%rsp)
	movw	%ax, 1042(%r9)
	addl	%r13d, %eax
	testl	%r13d, %r13d
	movl	%r8d, 1088(%r9)
	movw	%dx, 1142(%r9)
	je	.L652
	cmpl	$512, %eax
	jg	.L645
.L652:
	movl	%eax, %r8d
	addl	%eax, %eax
	addl	%r13d, %edx
	sall	$7, %r8d
	movl	%eax, 104(%rsp)
	movw	%ax, 1044(%r9)
	addl	%r14d, %eax
	testl	%r14d, %r14d
	movl	%r8d, 1092(%r9)
	movw	%dx, 1144(%r9)
	je	.L653
	cmpl	$1024, %eax
	jg	.L645
.L653:
	movl	44(%rsp), %edi
	movl	%eax, %r8d
	addl	%eax, %eax
	addl	%r14d, %edx
	sall	$6, %r8d
	movl	%eax, 108(%rsp)
	movw	%ax, 1046(%r9)
	movl	%r8d, 1096(%r9)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1146(%r9)
	je	.L654
	cmpl	$2048, %eax
	jg	.L645
.L654:
	movl	48(%rsp), %edi
	movl	%eax, %r8d
	addl	%eax, %eax
	addl	44(%rsp), %edx
	sall	$5, %r8d
	movl	%eax, 112(%rsp)
	movw	%ax, 1048(%r9)
	movl	%r8d, 1100(%r9)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1148(%r9)
	je	.L655
	cmpl	$4096, %eax
	jg	.L645
.L655:
	movl	52(%rsp), %edi
	movl	%eax, %r8d
	addl	%eax, %eax
	addl	48(%rsp), %edx
	sall	$4, %r8d
	movl	%eax, 116(%rsp)
	movw	%ax, 1050(%r9)
	movl	%r8d, 1104(%r9)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1150(%r9)
	je	.L656
	cmpl	$8192, %eax
	jg	.L645
.L656:
	movl	56(%rsp), %esi
	leal	0(,%rax,8), %r8d
	addl	%eax, %eax
	addl	52(%rsp), %edx
	movl	%eax, 120(%rsp)
	movw	%ax, 1052(%r9)
	movl	%r8d, 1108(%r9)
	addl	%esi, %eax
	testl	%esi, %esi
	movw	%dx, 1152(%r9)
	je	.L657
	cmpl	$16384, %eax
	jg	.L645
.L657:
	movl	60(%rsp), %edi
	leal	0(,%rax,4), %r8d
	addl	%eax, %eax
	addl	56(%rsp), %edx
	movl	%eax, 124(%rsp)
	movw	%ax, 1054(%r9)
	movl	%r8d, 1112(%r9)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1154(%r9)
	jne	.L713
.L658:
	addl	%eax, %eax
	xorl	%r10d, %r10d
	movl	$1, %r13d
	movl	$65536, 1120(%r9)
	movl	%eax, 1116(%r9)
	leaq	1(%rcx), %rbp
	movl	$16, %r12d
	.p2align 4,,10
.L662:
	movzbl	(%rbx,%r10), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	je	.L659
	movzbl	%al, %edx
	movslq	%eax, %r11
	leaq	(%r9,%rdx,2), %rsi
	movl	64(%rsp,%r11,4), %r8d
	movzwl	1024(%rsi), %edx
	movzwl	1124(%rsi), %esi
	movl	%r8d, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	addl	%esi, %edx
	cmpl	$9, %eax
	movslq	%edx, %rdx
	movb	%al, 1156(%r9,%rdx)
	movw	%r10w, 1444(%r9,%rdx,2)
	jle	.L714
.L660:
	addl	$1, %r8d
	movl	%r8d, 64(%rsp,%r11,4)
.L659:
	addq	$1, %r10
	cmpq	%r10, %rbp
	jne	.L662
	movl	$1, %eax
	jmp	.L639
	.p2align 4,,10
.L641:
	leaq	.LC37(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L639:
	addq	$216, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L713:
	cmpl	$32768, %eax
	jle	.L658
	.p2align 4,,10
.L645:
	leaq	.LC38(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L639
	.p2align 4,,10
.L714:
	leal	(%r8,%r8), %edx
	movl	%r8d, %esi
	sarl	%esi
	andl	$43690, %edx
	andl	$21845, %esi
	orl	%edx, %esi
	movl	%esi, %edx
	sall	$2, %esi
	sarl	$2, %edx
	andl	$52428, %esi
	andl	$13107, %edx
	orl	%esi, %edx
	movl	%edx, %esi
	sall	$4, %edx
	sarl	$4, %esi
	andl	$61680, %edx
	andl	$3855, %esi
	orl	%edx, %esi
	movl	%esi, %edx
	sall	$8, %esi
	movzwl	%si, %edi
	movl	%r13d, %esi
	sarl	$8, %edx
	sall	%cl, %esi
	movl	%r12d, %ecx
	orl	%edi, %edx
	subl	%eax, %ecx
	sall	$9, %eax
	movslq	%esi, %rsi
	sarl	%cl, %edx
	orl	%r10d, %eax
	movslq	%edx, %rdx
	.p2align 4,,10
.L661:
	movw	%ax, (%r9,%rdx,2)
	addq	%rsi, %rdx
	cmpl	$511, %edx
	jle	.L661
	jmp	.L660
	.seh_endproc
	.p2align 4,,15
	.def	_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc
_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc:
.LFB999:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	57(%rcx), %rbp
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	.p2align 4,,10
.L716:
	cmpq	$0, 16(%rbx)
	je	.L764
.L717:
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L721
	movl	48(%rbx), %r9d
	testl	%r9d, %r9d
	je	.L726
	movq	184(%rbx), %rdx
	cmpq	192(%rbx), %rdx
	movq	%rdx, %rax
	jb	.L719
	cmpq	$0, 16(%rbx)
	je	.L715
.L723:
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L728
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L715
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jnb	.L715
.L728:
	cmpb	$35, (%rsi)
	jne	.L715
	.p2align 4,,10
.L735:
	cmpq	$0, 16(%rbx)
	je	.L740
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L739
	movl	48(%rbx), %edx
	testl	%edx, %edx
	je	.L716
.L740:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L716
	movzbl	(%rsi), %edx
	cmpb	$13, %dl
	je	.L716
	cmpb	$10, %dl
	je	.L716
.L747:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	movb	%al, (%rsi)
	jmp	.L735
	.p2align 4,,10
.L739:
	movzbl	(%rsi), %eax
	cmpb	$10, %al
	je	.L716
	cmpb	$13, %al
	je	.L716
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L747
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L751
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L743
	movl	$0, 48(%rbx)
	movq	%rbp, %rdi
	movb	$0, 56(%rbx)
.L744:
	movq	%rdi, 192(%rbx)
	movq	%rbp, 184(%rbx)
	movb	%al, (%rsi)
	jmp	.L735
	.p2align 4,,10
.L743:
	cltq
	addq	%rax, %rdi
	movzbl	56(%rbx), %eax
	jmp	.L744
	.p2align 4,,10
.L721:
	movzbl	(%rsi), %eax
	cmpb	$32, %al
	je	.L725
	cmpb	$9, %al
	je	.L725
	subl	$10, %eax
	cmpb	$3, %al
	jbe	.L725
.L726:
	cmpq	$0, 16(%rbx)
	jne	.L723
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jb	.L728
.L715:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L725:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L745
	movl	48(%rbx), %r8d
	testl	%r8d, %r8d
	je	.L750
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L731
	movl	$0, 48(%rbx)
	movq	%rbp, %rdi
	movb	$0, 56(%rbx)
.L732:
	movq	%rdi, 192(%rbx)
	movq	%rbp, 184(%rbx)
	movb	%al, (%rsi)
.L765:
	cmpq	$0, 16(%rbx)
	jne	.L717
.L764:
	movq	184(%rbx), %rdx
	cmpq	192(%rbx), %rdx
	movq	%rdx, %rax
	jnb	.L715
.L719:
	movzbl	(%rsi), %ecx
	cmpb	$9, %cl
	je	.L745
	cmpb	$32, %cl
	je	.L745
	subl	$10, %ecx
	cmpb	$3, %cl
	ja	.L726
	movq	%rdx, %rax
	.p2align 4,,10
.L745:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	movb	%al, (%rsi)
	jmp	.L765
	.p2align 4,,10
.L751:
	xorl	%eax, %eax
	movb	%al, (%rsi)
	jmp	.L735
	.p2align 4,,10
.L731:
	cltq
	addq	%rax, %rdi
	movzbl	56(%rbx), %eax
	jmp	.L732
.L750:
	xorl	%eax, %eax
	movb	%al, (%rsi)
	jmp	.L765
	.seh_endproc
	.p2align 4,,15
	.def	_ZL13stbi__get16beP13stbi__context;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13stbi__get16beP13stbi__context
_ZL13stbi__get16beP13stbi__context:
.LFB866:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	184(%rcx), %rcx
	movq	192(%rbx), %rdx
	cmpq	%rdx, %rcx
	jb	.L779
	movl	48(%rbx), %esi
	testl	%esi, %esi
	je	.L766
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	movslq	%eax, %rsi
	leaq	57(%rbx), %rax
	testl	%esi, %esi
	jne	.L770
	movl	$0, 48(%rbx)
	movq	%rax, %rdx
	movb	$0, 56(%rbx)
.L771:
	cmpq	%rdx, %rax
	movq	%rdx, 192(%rbx)
	movq	%rax, 184(%rbx)
	jb	.L772
.L780:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L766
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movq	%rdi, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	leaq	57(%rbx), %rdx
	testl	%eax, %eax
	jne	.L774
	movl	$0, 48(%rbx)
	movq	%rdx, %rdi
	movb	$0, 56(%rbx)
.L775:
	movq	%rdi, 192(%rbx)
	movq	%rdx, 184(%rbx)
.L766:
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L779:
	leaq	1(%rcx), %rax
	movq	%rax, 184(%rbx)
	movzbl	(%rcx), %esi
	sall	$8, %esi
	cmpq	%rdx, %rax
	jnb	.L780
.L772:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	addl	%eax, %esi
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L774:
	cltq
	addq	%rax, %rdi
	movzbl	56(%rbx), %eax
	addl	%eax, %esi
	jmp	.L775
	.p2align 4,,10
.L770:
	leaq	(%rdi,%rsi), %rdx
	movzbl	56(%rbx), %esi
	sall	$8, %esi
	jmp	.L771
	.seh_endproc
	.p2align 4,,15
	.def	_ZL13stbi__get32beP13stbi__context;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13stbi__get32beP13stbi__context
_ZL13stbi__get32beP13stbi__context:
.LFB867:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rsi, %rcx
	movl	%eax, %ebx
	call	_ZL13stbi__get16beP13stbi__context
	sall	$16, %ebx
	addl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL13stbi__get16leP13stbi__context;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13stbi__get16leP13stbi__context
_ZL13stbi__get16leP13stbi__context:
.LFB868:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	184(%rcx), %rcx
	movq	192(%rbx), %rdx
	cmpq	%rdx, %rcx
	jb	.L795
	movl	48(%rbx), %esi
	testl	%esi, %esi
	je	.L782
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	movslq	%eax, %rsi
	leaq	57(%rbx), %rax
	testl	%esi, %esi
	jne	.L786
	movl	$0, 48(%rbx)
	movq	%rax, %rdx
	movb	$0, 56(%rbx)
.L787:
	cmpq	%rdx, %rax
	movq	%rdx, 192(%rbx)
	movq	%rax, 184(%rbx)
	jb	.L788
.L796:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L782
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movq	%rdi, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	leaq	57(%rbx), %rdx
	testl	%eax, %eax
	jne	.L790
	movl	$0, 48(%rbx)
	movq	%rdx, %rdi
	movb	$0, 56(%rbx)
.L791:
	movq	%rdi, 192(%rbx)
	movq	%rdx, 184(%rbx)
.L782:
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L795:
	leaq	1(%rcx), %rax
	cmpq	%rdx, %rax
	movq	%rax, 184(%rbx)
	movzbl	(%rcx), %esi
	jnb	.L796
.L788:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	sall	$8, %eax
	addl	%eax, %esi
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L790:
	cltq
	addq	%rax, %rdi
	movzbl	56(%rbx), %eax
	sall	$8, %eax
	addl	%eax, %esi
	jmp	.L791
	.p2align 4,,10
.L786:
	leaq	(%rdi,%rsi), %rdx
	movzbl	56(%rbx), %esi
	jmp	.L787
	.seh_endproc
	.p2align 4,,15
	.def	_ZL13stbi__get32leP13stbi__context;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13stbi__get32leP13stbi__context
_ZL13stbi__get32leP13stbi__context:
.LFB869:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %esi
	call	_ZL13stbi__get16leP13stbi__context
	sall	$16, %eax
	addl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC39:
	.ascii "bad file\0"
	.text
	.p2align 4,,15
	.def	_ZL13stbi__readvalP13stbi__contextiPh;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13stbi__readvalP13stbi__contextiPh
_ZL13stbi__readvalP13stbi__contextiPh:
.LFB971:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%esi, %esi
	movl	$128, %edi
	movq	%rcx, %rbx
	movl	%edx, %ebp
	movq	%r8, %r12
	leaq	57(%rcx), %r14
.L810:
	testl	%edi, %ebp
	je	.L799
	cmpq	$0, 16(%rbx)
	je	.L804
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L803
	movl	48(%rbx), %edx
	testl	%edx, %edx
	je	.L801
.L804:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L801
	leaq	(%r12,%rsi), %r15
.L811:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
.L807:
	movb	%al, (%r15)
.L799:
	addq	$1, %rsi
	sarl	%edi
	cmpq	$4, %rsi
	jne	.L810
.L818:
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L803:
	movq	184(%rbx), %rax
	leaq	(%r12,%rsi), %r15
	cmpq	192(%rbx), %rax
	jb	.L811
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L812
	leaq	56(%rbx), %r13
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r13, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L819
	cltq
	addq	%rax, %r13
	movzbl	56(%rbx), %eax
.L809:
	movq	%r13, 192(%rbx)
	movq	%r14, 184(%rbx)
	jmp	.L807
	.p2align 4,,10
.L819:
	movl	$0, 48(%rbx)
	movq	%r14, %r13
	movb	$0, 56(%rbx)
	jmp	.L809
	.p2align 4,,10
.L812:
	xorl	%eax, %eax
	jmp	.L807
	.p2align 4,,10
.L801:
	leaq	.LC39(%rip), %rax
	xorl	%r12d, %r12d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L818
	.seh_endproc
	.section .rdata,"dr"
.LC40:
	.ascii "111 221 2222 11\0"
	.text
	.p2align 4,,15
	.def	_ZL13stbiw__writefP19stbi__write_contextPKcz.constprop.124;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13stbiw__writefP19stbi__write_contextPKcz.constprop.124
_ZL13stbiw__writefP19stbi__write_contextPKcz.constprop.124:
.LFB8134:
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
	.seh_endprologue
	leaq	.LC40(%rip), %rbx
	movl	$49, %eax
	leaq	112(%rsp), %rdx
	movq	%rcx, %rsi
	movq	%r8, 112(%rsp)
	movq	%r9, 120(%rsp)
	leaq	36(%rsp), %rdi
	movq	%rdx, 40(%rsp)
.L821:
	addq	$1, %rbx
	cmpb	$49, %al
	je	.L825
	jle	.L835
	cmpb	$50, %al
	je	.L827
	cmpb	$52, %al
	jne	.L824
	movl	(%rdx), %eax
	leaq	8(%rdx), %rbp
	movl	$4, %r8d
	movq	8(%rsi), %rcx
	movl	%eax, %edx
	movb	%al, 36(%rsp)
	movb	%ah, 37(%rsp)
	shrl	$16, %edx
	shrl	$24, %eax
	movb	%dl, 38(%rsp)
	movq	%rdi, %rdx
	movb	%al, 39(%rsp)
	call	*(%rsi)
	movq	%rbp, %rdx
.L822:
	movzbl	(%rbx), %eax
	testb	%al, %al
	jne	.L821
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L835:
	cmpb	$32, %al
	je	.L822
.L824:
	leaq	.LC33(%rip), %rdx
	movl	$266, %r8d
	leaq	.LC32(%rip), %rcx
	call	_assert
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L825:
	movl	(%rdx), %eax
	leaq	8(%rdx), %rbp
	movl	$1, %r8d
	movq	%rdi, %rdx
	movq	8(%rsi), %rcx
	movb	%al, 36(%rsp)
	call	*(%rsi)
	movq	%rbp, %rdx
	jmp	.L822
	.p2align 4,,10
.L827:
	movl	(%rdx), %eax
	leaq	8(%rdx), %rbp
	movl	$2, %r8d
	movq	%rdi, %rdx
	movq	8(%rsi), %rcx
	movb	%al, 36(%rsp)
	movb	%ah, 37(%rsp)
	call	*(%rsi)
	movq	%rbp, %rdx
	jmp	.L822
	.seh_endproc
	.p2align 4,,15
	.def	_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv
_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv:
.LFB1021:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$264, %rsp
	.seh_stackalloc	264
	.seh_endprologue
	movl	%edx, 344(%rsp)
	movl	%r9d, %edx
	movq	%rcx, %rsi
	movl	%r8d, %ebx
	leal	-2(%r9), %eax
	movl	%r9d, %ebp
	andl	$-3, %eax
	cmpl	$1, %eax
	movl	%eax, %r14d
	sbbl	$0, %edx
	cmpl	$1, %edx
	setle	%al
	movzbl	%al, %ecx
	movzbl	%al, %eax
	addl	$10, %ecx
	addl	$2, %eax
	testl	%r8d, %r8d
	js	.L873
	movl	344(%rsp), %r12d
	testl	%r12d, %r12d
	js	.L873
	movl	stbi_write_tga_with_rle(%rip), %edi
	xorl	%r8d, %r8d
	testl	%r14d, %r14d
	sete	%r8b
	leal	0(,%r8,8), %r9d
	addl	%r8d, %edx
	sall	$3, %edx
	testl	%edi, %edi
	je	.L899
	movl	344(%rsp), %eax
	movl	%r9d, 104(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%edx, 96(%rsp)
	leaq	.LC40(%rip), %rdx
	movl	%ecx, 32(%rsp)
	movq	%rsi, %rcx
	movl	%ebx, 88(%rsp)
	movl	%eax, 80(%rsp)
	movl	$0, 72(%rsp)
	movl	$0, 64(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	call	_ZL13stbiw__writefP19stbi__write_contextPKcz.constprop.124
	leal	-1(%rbx), %eax
	cmpl	$-1, %eax
	movl	%eax, 228(%rsp)
	je	.L842
	movl	344(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L842
	movl	344(%rsp), %eax
	movslq	%ebp, %r13
	movl	%r14d, 196(%rsp)
	negl	%eax
	imull	%ebp, %eax
	cltq
	movq	%rax, 232(%rsp)
	movl	228(%rsp), %eax
	imull	344(%rsp), %eax
	imull	%ebp, %eax
	cltq
	addq	368(%rsp), %rax
	movq	%rax, 208(%rsp)
	movl	344(%rsp), %eax
	subl	$1, %eax
	movl	%eax, 224(%rsp)
	leaq	252(%rsp), %rax
	movq	%rax, 216(%rsp)
	leaq	-1(%r13), %rax
	movq	%rax, %r14
	.p2align 4,,10
.L868:
	xorl	%r15d, %r15d
	.p2align 4,,10
.L867:
	movl	%ebp, %eax
	xorl	%edx, %edx
	movl	$1, %r12d
	imull	%r15d, %eax
	leal	1(%r15), %edi
	movl	%edi, 200(%rsp)
	movslq	%eax, %rbx
	addq	208(%rsp), %rbx
	cmpl	%r15d, 224(%rsp)
	jg	.L900
.L843:
	movb	%dl, 252(%rsp)
	movq	8(%rsi), %rcx
	movl	$1, %r8d
	xorl	%edi, %edi
	movq	216(%rsp), %rdx
	leaq	253(%rsp), %r15
	call	*(%rsi)
	jmp	.L860
	.p2align 4,,10
.L902:
	cmpl	$1, %ebp
	jl	.L852
	movq	8(%rsi), %rcx
	movl	$1, %r8d
	movq	%rbx, %rdx
	call	*(%rsi)
.L857:
	movl	196(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L852
.L859:
	leaq	(%r14,%rbx), %rdx
	movq	8(%rsi), %rcx
	movl	$1, %r8d
	call	*(%rsi)
.L852:
	addl	$1, %edi
	addq	%r13, %rbx
	cmpl	%edi, %r12d
	je	.L901
.L860:
	cmpl	$3, %ebp
	je	.L853
	jle	.L902
	cmpl	$4, %ebp
	jne	.L852
	movl	196(%rsp), %r10d
	movzbl	1(%rbx), %edx
	movq	(%rsi), %r9
	movq	8(%rsi), %rcx
	testl	%r10d, %r10d
	movzbl	(%rbx), %eax
	movzbl	2(%rbx), %r8d
	je	.L858
	movzbl	3(%rbx), %r11d
	subl	$255, %r8d
	subl	$255, %eax
	imull	%r11d, %r8d
	imull	%r11d, %edx
	imull	%eax, %r11d
	movslq	%r8d, %r10
	imulq	$-2139062143, %r10, %r10
	movslq	%r11d, %rax
	imulq	$-2139062143, %rax, %rax
	shrq	$32, %r10
	addl	%r8d, %r10d
	sarl	$31, %r8d
	sarl	$7, %r10d
	shrq	$32, %rax
	subl	%r8d, %r10d
	addl	%r11d, %eax
	sarl	$31, %r11d
	subl	$1, %r10d
	sarl	$7, %eax
	movl	$3, %r8d
	movb	%r10b, 253(%rsp)
	movl	$2155905153, %r10d
	subl	%r11d, %eax
	imulq	%r10, %rdx
	subl	$1, %eax
	movb	%al, 255(%rsp)
	shrq	$39, %rdx
	movb	%dl, 254(%rsp)
	movq	%r15, %rdx
	call	*%r9
	jmp	.L859
.L899:
	movl	%eax, 104(%rsp)
	leaq	.LC40(%rip), %rax
	movq	%rsi, %rcx
	movl	344(%rsp), %edi
	movq	%rax, 80(%rsp)
	movq	368(%rsp), %rax
	movl	%r8d, 64(%rsp)
	movl	$-1, %r8d
	movl	%r9d, 176(%rsp)
	movl	%edx, 168(%rsp)
	movl	%edi, %r9d
	movl	%r8d, %edx
	movl	$0, 112(%rsp)
	movl	$0, 96(%rsp)
	movl	$0, 88(%rsp)
	movl	$0, 72(%rsp)
	movq	%rax, 56(%rsp)
	movl	$0, 48(%rsp)
	movl	%ebp, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%ebx, 160(%rsp)
	movl	%edi, 152(%rsp)
	movl	$0, 144(%rsp)
	movl	$0, 136(%rsp)
	movl	$0, 128(%rsp)
	movl	$0, 120(%rsp)
	call	_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.120
.L836:
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L853:
	movzbl	1(%rbx), %edx
	movq	(%rsi), %r9
	movq	8(%rsi), %rcx
	movzbl	(%rbx), %eax
	movzbl	2(%rbx), %r8d
.L858:
	movb	%r8b, 253(%rsp)
	movl	$3, %r8d
	movb	%dl, 254(%rsp)
	movq	%r15, %rdx
	movb	%al, 255(%rsp)
	call	*%r9
	jmp	.L857
	.p2align 4,,10
.L901:
	movl	200(%rsp), %r15d
.L861:
	cmpl	%r15d, 344(%rsp)
	jg	.L867
	subl	$1, 228(%rsp)
	movl	228(%rsp), %eax
	movq	232(%rsp), %rbx
	addq	%rbx, 208(%rsp)
	cmpl	$-1, %eax
	jne	.L868
.L842:
	movl	$1, %eax
	jmp	.L836
	.p2align 4,,10
.L900:
	movq	208(%rsp), %r12
	leal	(%rax,%rbp), %edi
	movq	%rbx, %rcx
	movq	%r13, %r8
	movslq	%edi, %rdx
	addq	%r12, %rdx
	call	memcmp
	leal	2(%r15), %ecx
	testl	%eax, %eax
	movl	%ecx, 200(%rsp)
	je	.L844
	cmpl	%ecx, 344(%rsp)
	jle	.L875
	addl	%ebp, %edi
	movq	%r13, %rax
	movq	%rbx, 200(%rsp)
	movl	%ebp, %r13d
	movslq	%edi, %rdi
	movq	%rsi, 336(%rsp)
	movq	%rax, %rbp
	addq	%r12, %rdi
	movl	$2, %r12d
	movq	%rdi, %rsi
	movq	%rbx, %rdi
	movl	344(%rsp), %ebx
	jmp	.L846
	.p2align 4,,10
.L903:
	addl	$1, %r12d
	addq	%rbp, %rdi
	addq	%rbp, %rsi
	leal	(%r15,%r12), %eax
	cmpl	%eax, %ebx
	jle	.L877
	cmpl	$127, %r12d
	jg	.L877
.L846:
	movq	%rbp, %r8
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	call	memcmp
	testl	%eax, %eax
	jne	.L903
	movq	%rbp, %rax
	subl	$1, %r12d
	movl	%r13d, %ebp
	movq	200(%rsp), %rbx
	movq	336(%rsp), %rsi
	leal	-1(%r12), %edx
	movq	%rax, %r13
	leal	(%r12,%r15), %eax
	movl	%eax, 200(%rsp)
	jmp	.L843
	.p2align 4,,10
.L844:
	cmpl	%ecx, 344(%rsp)
	jle	.L876
	addl	%ebp, %edi
	movq	%rsi, 336(%rsp)
	movl	$2, %r12d
	movslq	%edi, %rdi
	addq	208(%rsp), %rdi
	movq	%rdi, %rsi
	movl	344(%rsp), %edi
	jmp	.L850
	.p2align 4,,10
.L849:
	addl	$1, %r12d
	addq	%r13, %rsi
	leal	(%r15,%r12), %eax
	cmpl	%eax, %edi
	jle	.L878
	cmpl	$127, %r12d
	jg	.L878
.L850:
	movq	%r13, %r8
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	memcmp
	testl	%eax, %eax
	je	.L849
	movq	336(%rsp), %rsi
	leal	127(%r12), %edx
	addl	%r12d, %r15d
.L848:
	movb	%dl, 252(%rsp)
	movq	8(%rsi), %rcx
	movl	$1, %r8d
	movq	216(%rsp), %rdx
	call	*(%rsi)
	cmpl	$3, %ebp
	je	.L869
	jg	.L870
	cmpl	$1, %ebp
	jl	.L863
	movq	8(%rsi), %rcx
	movl	$1, %r8d
	movq	%rbx, %rdx
	call	*(%rsi)
.L863:
	movl	196(%rsp), %eax
	testl	%eax, %eax
	jne	.L861
	leaq	(%rbx,%r14), %rdx
	movq	8(%rsi), %rcx
	movl	$1, %r8d
	call	*(%rsi)
	jmp	.L861
	.p2align 4,,10
.L870:
	cmpl	$4, %ebp
	jne	.L863
	movl	196(%rsp), %r10d
	movq	(%rsi), %r9
	movq	8(%rsi), %rcx
	movzbl	(%rbx), %edx
	testl	%r10d, %r10d
	movzbl	1(%rbx), %eax
	movzbl	2(%rbx), %r8d
	je	.L865
	movzbl	3(%rbx), %r10d
	movl	$2155905153, %edi
	movzbl	%r8b, %r11d
	subl	$255, %r11d
	imull	%r10d, %eax
	imull	%r10d, %r11d
	imulq	%rdi, %rax
	movslq	%r11d, %r8
	imulq	$-2139062143, %r8, %r8
	shrq	$39, %rax
	movb	%al, 254(%rsp)
	movzbl	%dl, %eax
	subl	$255, %eax
	shrq	$32, %r8
	imull	%eax, %r10d
	leaq	253(%rsp), %rdx
	addl	%r11d, %r8d
	sarl	$7, %r8d
	sarl	$31, %r11d
	subl	%r11d, %r8d
	movslq	%r10d, %rax
	subl	$1, %r8d
	imulq	$-2139062143, %rax, %rax
	movb	%r8b, 253(%rsp)
	movl	$3, %r8d
	shrq	$32, %rax
	addl	%r10d, %eax
	sarl	$31, %r10d
	sarl	$7, %eax
	subl	%r10d, %eax
	subl	$1, %eax
	movb	%al, 255(%rsp)
	call	*%r9
	jmp	.L861
	.p2align 4,,10
.L869:
	movq	(%rsi), %r9
	movq	8(%rsi), %rcx
	movzbl	(%rbx), %edx
	movzbl	1(%rbx), %eax
	movzbl	2(%rbx), %r8d
.L865:
	movb	%r8b, 253(%rsp)
	movl	$3, %r8d
	movb	%dl, 255(%rsp)
	leaq	253(%rsp), %rdx
	movb	%al, 254(%rsp)
	call	*%r9
	jmp	.L863
	.p2align 4,,10
.L878:
	movq	336(%rsp), %rsi
	leal	127(%r12), %edx
	movl	%eax, %r15d
	jmp	.L848
	.p2align 4,,10
.L877:
	movq	200(%rsp), %rbx
	movq	%rbp, %rdi
	movl	%r13d, %ebp
	movl	%eax, 200(%rsp)
	movq	336(%rsp), %rsi
	leal	-1(%r12), %edx
	movq	%rdi, %r13
	jmp	.L843
	.p2align 4,,10
.L873:
	xorl	%eax, %eax
	jmp	.L836
.L875:
	movl	$1, %edx
	movl	$2, %r12d
	jmp	.L843
.L876:
	movl	%ecx, %r15d
	movl	$-127, %edx
	jmp	.L848
	.seh_endproc
	.p2align 4,,15
	.def	_ZL18stbiw__zlib_flushfPhPjPi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18stbiw__zlib_flushfPhPjPi
_ZL18stbiw__zlib_flushfPhPjPi:
.LFB1032:
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	cmpl	$7, (%r8)
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %r12
	jle	.L912
	leaq	.LC33(%rip), %rbp
	leaq	.LC34(%rip), %rdi
	jmp	.L909
	.p2align 4,,10
.L914:
	movslq	-4(%rbx), %rax
	movl	-8(%rbx), %ecx
	leal	1(%rax), %edx
	cmpl	%ecx, %edx
	jl	.L907
	leal	1(%rcx,%rcx), %r13d
	leaq	-8(%rbx), %rcx
	movslq	%r13d, %rdx
	addq	$8, %rdx
	call	realloc
	testq	%rax, %rax
	je	.L911
.L908:
	leaq	8(%rax), %rbx
	movl	%r13d, (%rax)
	movslq	4(%rax), %rax
	leal	1(%rax), %edx
.L907:
	movl	(%rsi), %ecx
	movl	%edx, -4(%rbx)
	movb	%cl, (%rbx,%rax)
	shrl	$8, (%rsi)
	movl	(%r12), %eax
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, (%r12)
	jle	.L912
.L909:
	testq	%rbx, %rbx
	jne	.L914
	xorl	%ecx, %ecx
	movl	$10, %edx
	call	realloc
	testq	%rax, %rax
	je	.L911
	movl	$0, 4(%rax)
	movl	$2, %r13d
	jmp	.L908
	.p2align 4,,10
.L912:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L911:
	movq	%rbp, %rdx
	movl	$666, %r8d
	movq	%rdi, %rcx
	call	_assert
	movslq	-4(%rbx), %rax
	leal	1(%rax), %edx
	jmp	.L907
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20stbi__convert_formatPhiijj.part.27;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbi__convert_formatPhiijj.part.27
_ZL20stbi__convert_formatPhiijj.part.27:
.LFB8038:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$296, %rsp
	.seh_stackalloc	296
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	movaps	%xmm8, 160(%rsp)
	.seh_savexmm	%xmm8, 160
	movaps	%xmm9, 176(%rsp)
	.seh_savexmm	%xmm9, 176
	movaps	%xmm10, 192(%rsp)
	.seh_savexmm	%xmm10, 192
	movaps	%xmm11, 208(%rsp)
	.seh_savexmm	%xmm11, 208
	movaps	%xmm12, 224(%rsp)
	.seh_savexmm	%xmm12, 224
	movaps	%xmm13, 240(%rsp)
	.seh_savexmm	%xmm13, 240
	movaps	%xmm14, 256(%rsp)
	.seh_savexmm	%xmm14, 256
	movaps	%xmm15, 272(%rsp)
	.seh_savexmm	%xmm15, 272
	.seh_endprologue
	movl	400(%rsp), %r12d
	leal	-1(%r8), %eax
	movq	%rcx, 368(%rsp)
	movl	%edx, %r15d
	movl	%r8d, %r14d
	cmpl	$3, %eax
	movl	%r9d, %ebx
	ja	.L1253
.L916:
	xorl	%r9d, %r9d
	movl	%r12d, %r8d
	movl	%ebx, %edx
	movl	%r14d, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L919
	movl	%r14d, %esi
	imull	%ebx, %esi
	movl	%esi, %ecx
	imull	%r12d, %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	je	.L919
	testl	%r12d, %r12d
	jle	.L920
	leal	-2(%rbx), %edx
	movl	%r15d, %r9d
	movl	$1, %ecx
	movq	%rax, 40(%rsp)
	leal	-1(%rbx), %ebp
	movl	%ecx, %edi
	movl	%esi, %r10d
	movl	%r12d, 400(%rsp)
	imull	%ebx, %r9d
	leal	-10(%r14,%r15,8), %r14d
	cmpl	$-1, %edx
	movdqa	.LC2(%rip), %xmm8
	cmovge	%ebx, %edi
	setl	%dl
	cmpl	$14, %ebp
	movdqa	.LC41(%rip), %xmm15
	setbe	%cl
	movl	%ebp, %ebx
	movl	%edi, %esi
	movl	%edi, %r13d
	orl	%edx, %ecx
	movl	%edi, 56(%rsp)
	andl	$-16, %esi
	shrl	$4, %r13d
	movb	%cl, 86(%rsp)
	movl	%r9d, %r12d
	subl	%esi, %ebx
	movl	%esi, 60(%rsp)
	movdqa	%xmm8, %xmm9
	movl	%r10d, %r15d
	movl	%ebx, 80(%rsp)
	movl	%esi, %ebx
	movl	400(%rsp), %r9d
	leaq	0(,%rbx,4), %rsi
	movq	%rbx, 96(%rsp)
	addq	%rbx, %rbx
	cmpl	$15, %ebp
	setbe	%cl
	movq	%rsi, 64(%rsp)
	orl	%edx, %ecx
	movq	%rbx, 72(%rsp)
	leal	-1(%rdi), %edx
	movb	%cl, 87(%rsp)
	movl	%edx, %esi
	andl	$-16, %edx
	shrl	$4, %esi
	movl	%edx, %edi
	movl	%esi, 52(%rsp)
	leaq	0(,%rdi,4), %rbx
	movl	%ebp, %esi
	subl	%edx, %esi
	movq	%rdi, 88(%rsp)
	addq	%rdi, %rdi
	movl	%esi, 120(%rsp)
	xorl	%esi, %esi
	movq	%rbx, 112(%rsp)
	xorl	%ebx, %ebx
	movq	%rdi, 104(%rsp)
	xorl	%edi, %edi
	.p2align 4,,10
.L964:
	movl	%esi, %ecx
	movl	%edi, %edx
	addq	368(%rsp), %rcx
	addq	40(%rsp), %rdx
	cmpl	$25, %r14d
	ja	.L921
	leaq	.L923(%rip), %r10
	movl	%r14d, %r8d
	movslq	(%r10,%r8,4), %r8
	addq	%r10, %r8
	jmp	*%r8
	.section .rdata,"dr"
	.align 4
.L923:
	.long	.L922-.L923
	.long	.L924-.L923
	.long	.L925-.L923
	.long	.L921-.L923
	.long	.L921-.L923
	.long	.L921-.L923
	.long	.L921-.L923
	.long	.L926-.L923
	.long	.L921-.L923
	.long	.L927-.L923
	.long	.L928-.L923
	.long	.L921-.L923
	.long	.L921-.L923
	.long	.L921-.L923
	.long	.L921-.L923
	.long	.L929-.L923
	.long	.L930-.L923
	.long	.L921-.L923
	.long	.L931-.L923
	.long	.L921-.L923
	.long	.L921-.L923
	.long	.L921-.L923
	.long	.L921-.L923
	.long	.L932-.L923
	.long	.L933-.L923
	.long	.L934-.L923
	.text
	.p2align 4,,10
.L924:
	testl	%ebp, %ebp
	js	.L936
	movq	40(%rsp), %rax
	movl	%ebp, %r10d
	.p2align 4,,10
.L942:
	movzbl	(%rcx), %r8d
	subl	$1, %r10d
	addq	$1, %rcx
	addq	$3, %rdx
	movb	%r8b, -1(%rdx)
	movb	%r8b, -2(%rdx)
	movb	%r8b, -3(%rdx)
	cmpl	$-1, %r10d
	jne	.L942
	movq	%rax, 40(%rsp)
	.p2align 4,,10
.L936:
	addl	$1, %ebx
	addl	%r12d, %esi
	addl	%r15d, %edi
	cmpl	%ebx, %r9d
	jne	.L964
	movq	40(%rsp), %rax
.L920:
	movq	368(%rsp), %rcx
	movq	%rax, 40(%rsp)
	call	free
	movq	40(%rsp), %rax
.L915:
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	movaps	160(%rsp), %xmm8
	movaps	176(%rsp), %xmm9
	movaps	192(%rsp), %xmm10
	movaps	208(%rsp), %xmm11
	movaps	224(%rsp), %xmm12
	movaps	240(%rsp), %xmm13
	movaps	256(%rsp), %xmm14
	movaps	272(%rsp), %xmm15
	addq	$296, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L934:
	testl	%ebp, %ebp
	js	.L936
	movq	40(%rsp), %rax
	movl	%ebp, %r8d
	.p2align 4,,10
.L963:
	movzbl	(%rcx), %r10d
	subl	$1, %r8d
	addq	$4, %rcx
	addq	$3, %rdx
	movb	%r10b, -3(%rdx)
	movzbl	-3(%rcx), %r10d
	movb	%r10b, -2(%rdx)
	movzbl	-2(%rcx), %r10d
	movb	%r10b, -1(%rdx)
	cmpl	$-1, %r8d
	jne	.L963
	movq	%rax, 40(%rsp)
	jmp	.L936
	.p2align 4,,10
.L933:
	testl	%ebp, %ebp
	js	.L936
	cmpb	$0, 86(%rsp)
	jne	.L970
	movq	40(%rsp), %rax
	movq	%rcx, %r8
	movq	%rdx, %r10
	xorl	%r11d, %r11d
	pxor	%xmm5, %xmm5
	.p2align 4,,10
.L961:
	movdqu	(%r8), %xmm2
	movdqa	%xmm8, %xmm6
	movdqa	%xmm8, %xmm4
	movdqa	%xmm8, %xmm7
	movdqu	16(%r8), %xmm1
	addl	$1, %r11d
	addq	$64, %r8
	addq	$32, %r10
	movdqu	-32(%r8), %xmm0
	pand	%xmm2, %xmm6
	psrlw	$8, %xmm2
	movdqu	-16(%r8), %xmm3
	pand	%xmm1, %xmm4
	psrlw	$8, %xmm1
	packuswb	%xmm4, %xmm6
	packuswb	%xmm1, %xmm2
	movdqa	%xmm8, %xmm4
	movdqa	%xmm8, %xmm1
	pand	%xmm2, %xmm7
	pand	%xmm3, %xmm4
	pand	%xmm0, %xmm1
	psrlw	$8, %xmm3
	packuswb	%xmm4, %xmm1
	psrlw	$8, %xmm0
	movdqa	%xmm8, %xmm4
	movdqa	.LC43(%rip), %xmm13
	packuswb	%xmm3, %xmm0
	movdqa	%xmm8, %xmm3
	pand	%xmm6, %xmm4
	psrlw	$8, %xmm6
	pand	%xmm1, %xmm3
	psrlw	$8, %xmm1
	packuswb	%xmm3, %xmm4
	movdqa	.LC42(%rip), %xmm3
	packuswb	%xmm1, %xmm6
	movdqa	%xmm8, %xmm1
	movdqa	%xmm4, %xmm14
	movdqa	%xmm6, %xmm11
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm7
	movdqa	%xmm15, %xmm1
	movdqa	%xmm7, %xmm12
	punpcklbw	%xmm5, %xmm14
	punpcklbw	%xmm5, %xmm12
	pmullw	%xmm14, %xmm1
	punpcklbw	%xmm5, %xmm11
	pmullw	%xmm12, %xmm3
	punpckhbw	%xmm5, %xmm4
	punpckhbw	%xmm5, %xmm7
	pmulhw	.LC42(%rip), %xmm12
	pmullw	%xmm11, %xmm13
	punpckhbw	%xmm5, %xmm6
	pmulhw	.LC43(%rip), %xmm11
	pmulhw	%xmm15, %xmm14
	psrlw	$8, %xmm0
	movdqa	%xmm3, %xmm10
	punpckhwd	%xmm12, %xmm3
	psrlw	$8, %xmm2
	punpcklwd	%xmm12, %xmm10
	packuswb	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	punpckhwd	%xmm14, %xmm1
	punpcklwd	%xmm14, %xmm0
	paddd	%xmm10, %xmm0
	movdqa	%xmm13, %xmm10
	punpcklwd	%xmm11, %xmm10
	paddd	%xmm10, %xmm0
	movdqa	%xmm1, %xmm10
	movdqa	%xmm3, %xmm1
	paddd	%xmm10, %xmm1
	psrad	$8, %xmm0
	movdqa	%xmm13, %xmm3
	punpckhwd	%xmm11, %xmm3
	paddd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	movdqa	%xmm15, %xmm11
	psrad	$8, %xmm1
	punpckhwd	%xmm1, %xmm3
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm1
	movdqa	.LC42(%rip), %xmm3
	pmullw	%xmm4, %xmm11
	punpcklwd	%xmm1, %xmm0
	pmulhw	%xmm15, %xmm4
	pand	%xmm8, %xmm0
	pmullw	%xmm7, %xmm3
	pmulhw	.LC42(%rip), %xmm7
	movdqa	%xmm11, %xmm10
	punpcklwd	%xmm4, %xmm10
	punpckhwd	%xmm4, %xmm11
	movdqa	%xmm3, %xmm1
	punpckhwd	%xmm7, %xmm3
	paddd	%xmm11, %xmm3
	punpcklwd	%xmm7, %xmm1
	paddd	%xmm10, %xmm1
	movdqa	.LC43(%rip), %xmm10
	pmullw	%xmm6, %xmm10
	pmulhw	.LC43(%rip), %xmm6
	movdqa	%xmm10, %xmm12
	punpckhwd	%xmm6, %xmm10
	paddd	%xmm10, %xmm3
	punpcklwd	%xmm6, %xmm12
	paddd	%xmm12, %xmm1
	psrad	$8, %xmm3
	psrad	$8, %xmm1
	movdqa	%xmm1, %xmm4
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm3, %xmm4
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm3, %xmm1
	pand	%xmm8, %xmm1
	packuswb	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm2, %xmm0
	movups	%xmm0, -16(%r10)
	punpcklbw	%xmm2, %xmm1
	movups	%xmm1, -32(%r10)
	cmpl	%r11d, %r13d
	ja	.L961
	addq	64(%rsp), %rcx
	movq	%rax, 40(%rsp)
	addq	72(%rsp), %rdx
	movl	60(%rsp), %r11d
	cmpl	%r11d, 56(%rsp)
	je	.L936
	movl	80(%rsp), %r10d
.L959:
	movzbl	(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	1(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	2(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	testl	%r10d, %r10d
	movl	%r8d, %eax
	movb	%ah, (%rdx)
	movzbl	3(%rcx), %r8d
	movb	%r8b, 1(%rdx)
	je	.L936
	movzbl	4(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	5(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	6(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$1, %r10d
	movl	%r8d, %eax
	movb	%ah, 2(%rdx)
	movzbl	7(%rcx), %r8d
	movb	%r8b, 3(%rdx)
	je	.L936
	movzbl	8(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	9(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	10(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$2, %r10d
	movl	%r8d, %eax
	movb	%ah, 4(%rdx)
	movzbl	11(%rcx), %r8d
	movb	%r8b, 5(%rdx)
	je	.L936
	movzbl	12(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	13(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	14(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$3, %r10d
	movl	%r8d, %eax
	movb	%ah, 6(%rdx)
	movzbl	15(%rcx), %r8d
	movb	%r8b, 7(%rdx)
	je	.L936
	movzbl	16(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	17(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	18(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$4, %r10d
	movl	%r8d, %eax
	movb	%ah, 8(%rdx)
	movzbl	19(%rcx), %r8d
	movb	%r8b, 9(%rdx)
	je	.L936
	movzbl	20(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	21(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	22(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$5, %r10d
	movl	%r8d, %eax
	movb	%ah, 10(%rdx)
	movzbl	23(%rcx), %r8d
	movb	%r8b, 11(%rdx)
	je	.L936
	movzbl	24(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	25(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	26(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$6, %r10d
	movl	%r8d, %eax
	movb	%ah, 12(%rdx)
	movzbl	27(%rcx), %r8d
	movb	%r8b, 13(%rdx)
	je	.L936
	movzbl	28(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	29(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	30(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$7, %r10d
	movl	%r8d, %eax
	movb	%ah, 14(%rdx)
	movzbl	31(%rcx), %r8d
	movb	%r8b, 15(%rdx)
	je	.L936
	movzbl	32(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	33(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	34(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$8, %r10d
	movl	%r8d, %eax
	movb	%ah, 16(%rdx)
	movzbl	35(%rcx), %r8d
	movb	%r8b, 17(%rdx)
	je	.L936
	movzbl	36(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	37(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	38(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$9, %r10d
	movl	%r8d, %eax
	movb	%ah, 18(%rdx)
	movzbl	39(%rcx), %r8d
	movb	%r8b, 19(%rdx)
	je	.L936
	movzbl	40(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	41(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	42(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$10, %r10d
	movl	%r8d, %eax
	movb	%ah, 20(%rdx)
	movzbl	43(%rcx), %r8d
	movb	%r8b, 21(%rdx)
	je	.L936
	movzbl	44(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	45(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	46(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$11, %r10d
	movl	%r8d, %eax
	movb	%ah, 22(%rdx)
	movzbl	47(%rcx), %r8d
	movb	%r8b, 23(%rdx)
	je	.L936
	movzbl	48(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	49(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	50(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$12, %r10d
	movl	%r8d, %eax
	movb	%ah, 24(%rdx)
	movzbl	51(%rcx), %r8d
	movb	%r8b, 25(%rdx)
	je	.L936
	movzbl	52(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	53(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	54(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$13, %r10d
	movl	%r8d, %eax
	movb	%ah, 26(%rdx)
	movzbl	55(%rcx), %r8d
	movb	%r8b, 27(%rdx)
	je	.L936
	movzbl	56(%rcx), %r8d
	imull	$77, %r8d, %r10d
	movzbl	57(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r10d, %r8d
	movzbl	58(%rcx), %r10d
	imull	$29, %r10d, %r10d
	addl	%r10d, %r8d
	movl	%r8d, %eax
	movb	%ah, 28(%rdx)
	movzbl	59(%rcx), %ecx
	movb	%cl, 29(%rdx)
	jmp	.L936
	.p2align 4,,10
.L932:
	testl	%ebp, %ebp
	js	.L936
	cmpb	$0, 87(%rsp)
	jne	.L969
	movq	40(%rsp), %rax
	movq	%rcx, %r8
	movq	%rdx, %r11
	xorl	%r10d, %r10d
	movdqa	.LC42(%rip), %xmm14
	pxor	%xmm10, %xmm10
	.p2align 4,,10
.L958:
	movdqu	(%r8), %xmm0
	movdqa	%xmm9, %xmm1
	movdqa	%xmm9, %xmm2
	movdqa	%xmm9, %xmm4
	movdqu	16(%r8), %xmm6
	movdqa	%xmm9, %xmm7
	addl	$1, %r10d
	addq	$64, %r8
	movdqu	-32(%r8), %xmm3
	pand	%xmm0, %xmm1
	psrlw	$8, %xmm0
	addq	$16, %r11
	movdqu	-16(%r8), %xmm5
	pand	%xmm6, %xmm2
	packuswb	%xmm2, %xmm1
	movdqa	%xmm9, %xmm2
	pand	%xmm3, %xmm4
	psrlw	$8, %xmm6
	pand	%xmm5, %xmm2
	packuswb	%xmm2, %xmm4
	pand	%xmm4, %xmm7
	packuswb	%xmm6, %xmm0
	movdqa	%xmm9, %xmm2
	psrlw	$8, %xmm4
	pand	%xmm9, %xmm0
	pand	%xmm1, %xmm2
	psrlw	$8, %xmm5
	packuswb	%xmm7, %xmm2
	movdqa	%xmm2, %xmm11
	psrlw	$8, %xmm1
	punpcklbw	%xmm10, %xmm11
	psrlw	$8, %xmm3
	packuswb	%xmm4, %xmm1
	movdqa	%xmm1, %xmm6
	movdqa	%xmm2, %xmm4
	packuswb	%xmm5, %xmm3
	movdqa	%xmm1, %xmm5
	pand	%xmm9, %xmm3
	movdqa	.LC41(%rip), %xmm1
	packuswb	%xmm3, %xmm0
	movdqa	%xmm14, %xmm2
	movdqa	%xmm0, %xmm7
	movdqa	%xmm0, %xmm3
	pmullw	%xmm11, %xmm1
	punpcklbw	%xmm10, %xmm7
	punpcklbw	%xmm10, %xmm6
	pmulhw	.LC41(%rip), %xmm11
	pmullw	%xmm7, %xmm2
	punpckhbw	%xmm10, %xmm4
	punpckhbw	%xmm10, %xmm3
	punpckhbw	%xmm10, %xmm5
	pmulhw	%xmm14, %xmm7
	movdqa	%xmm1, %xmm0
	punpckhwd	%xmm11, %xmm1
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm11, %xmm0
	movdqa	%xmm1, %xmm11
	punpcklwd	%xmm7, %xmm12
	paddd	%xmm12, %xmm0
	punpckhwd	%xmm7, %xmm2
	movdqa	.LC43(%rip), %xmm12
	movdqa	%xmm2, %xmm1
	movdqa	.LC43(%rip), %xmm7
	pmullw	%xmm6, %xmm12
	paddd	%xmm11, %xmm1
	movdqa	.LC41(%rip), %xmm11
	pmulhw	.LC43(%rip), %xmm6
	pmullw	%xmm5, %xmm7
	pmulhw	.LC43(%rip), %xmm5
	pmullw	%xmm4, %xmm11
	movdqa	%xmm12, %xmm13
	punpckhwd	%xmm6, %xmm12
	paddd	%xmm12, %xmm1
	punpcklwd	%xmm6, %xmm13
	movdqa	%xmm14, %xmm6
	paddd	%xmm13, %xmm0
	psrad	$8, %xmm1
	pmullw	%xmm3, %xmm6
	psrad	$8, %xmm0
	pmulhw	%xmm14, %xmm3
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm1
	movdqa	%xmm4, %xmm2
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm11, %xmm4
	movdqa	%xmm6, %xmm1
	punpckhwd	%xmm3, %xmm6
	pand	%xmm9, %xmm0
	pmulhw	.LC41(%rip), %xmm2
	punpcklwd	%xmm3, %xmm1
	punpcklwd	%xmm2, %xmm4
	punpckhwd	%xmm2, %xmm11
	paddd	%xmm4, %xmm1
	movdqa	%xmm6, %xmm2
	movdqa	%xmm7, %xmm4
	punpckhwd	%xmm5, %xmm7
	punpcklwd	%xmm5, %xmm4
	paddd	%xmm11, %xmm2
	paddd	%xmm4, %xmm1
	psrad	$8, %xmm1
	paddd	%xmm7, %xmm2
	psrad	$8, %xmm2
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm2, %xmm3
	punpcklwd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm2, %xmm1
	pand	%xmm9, %xmm1
	packuswb	%xmm1, %xmm0
	movups	%xmm0, -16(%r11)
	cmpl	%r10d, 52(%rsp)
	ja	.L958
	addq	112(%rsp), %rcx
	movq	%rax, 40(%rsp)
	addq	88(%rsp), %rdx
	movl	120(%rsp), %r10d
.L957:
	movzbl	(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	1(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	2(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	testl	%r10d, %r10d
	movl	%r8d, %eax
	movb	%ah, (%rdx)
	je	.L936
	movzbl	4(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	5(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	6(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$1, %r10d
	movl	%r8d, %eax
	movb	%ah, 1(%rdx)
	je	.L936
	movzbl	8(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	9(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	10(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$2, %r10d
	movl	%r8d, %eax
	movb	%ah, 2(%rdx)
	je	.L936
	movzbl	12(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	13(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	14(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$3, %r10d
	movl	%r8d, %eax
	movb	%ah, 3(%rdx)
	je	.L936
	movzbl	16(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	17(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	18(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$4, %r10d
	movl	%r8d, %eax
	movb	%ah, 4(%rdx)
	je	.L936
	movzbl	20(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	21(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	22(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$5, %r10d
	movl	%r8d, %eax
	movb	%ah, 5(%rdx)
	je	.L936
	movzbl	24(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	25(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	26(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$6, %r10d
	movl	%r8d, %eax
	movb	%ah, 6(%rdx)
	je	.L936
	movzbl	28(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	29(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	30(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$7, %r10d
	movl	%r8d, %eax
	movb	%ah, 7(%rdx)
	je	.L936
	movzbl	32(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	33(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	34(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$8, %r10d
	movl	%r8d, %eax
	movb	%ah, 8(%rdx)
	je	.L936
	movzbl	36(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	37(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	38(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$9, %r10d
	movl	%r8d, %eax
	movb	%ah, 9(%rdx)
	je	.L936
	movzbl	40(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	41(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	42(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$10, %r10d
	movl	%r8d, %eax
	movb	%ah, 10(%rdx)
	je	.L936
	movzbl	44(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	45(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	46(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$11, %r10d
	movl	%r8d, %eax
	movb	%ah, 11(%rdx)
	je	.L936
	movzbl	48(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	49(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	50(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$12, %r10d
	movl	%r8d, %eax
	movb	%ah, 12(%rdx)
	je	.L936
	movzbl	52(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	53(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	54(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$13, %r10d
	movl	%r8d, %eax
	movb	%ah, 13(%rdx)
	je	.L936
	movzbl	56(%rcx), %r8d
	imull	$77, %r8d, %r11d
	movzbl	57(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r11d, %r8d
	movzbl	58(%rcx), %r11d
	imull	$29, %r11d, %r11d
	addl	%r11d, %r8d
	cmpl	$14, %r10d
	movl	%r8d, %eax
	movb	%ah, 14(%rdx)
	je	.L936
	movzbl	60(%rcx), %r10d
	movzbl	61(%rcx), %r8d
	movzbl	62(%rcx), %ecx
	imull	$77, %r10d, %r10d
	imull	$150, %r8d, %r8d
	imull	$29, %ecx, %ecx
	addl	%r10d, %r8d
	addl	%r8d, %ecx
	movb	%ch, 15(%rdx)
	jmp	.L936
	.p2align 4,,10
.L931:
	testl	%ebp, %ebp
	js	.L936
	movq	40(%rsp), %rax
	movl	%ebp, %r8d
	.p2align 4,,10
.L954:
	movzbl	(%rcx), %r10d
	subl	$1, %r8d
	movb	$-1, 3(%rdx)
	addq	$3, %rcx
	addq	$4, %rdx
	movb	%r10b, -4(%rdx)
	movzbl	-2(%rcx), %r10d
	movb	%r10b, -3(%rdx)
	movzbl	-1(%rcx), %r10d
	movb	%r10b, -2(%rdx)
	cmpl	$-1, %r8d
	jne	.L954
	movq	%rax, 40(%rsp)
	jmp	.L936
	.p2align 4,,10
.L929:
	testl	%ebp, %ebp
	js	.L936
	movq	40(%rsp), %rax
	movl	%ebp, %r11d
	movq	%rdx, %r10
	.p2align 4,,10
.L955:
	movzbl	(%rcx), %r8d
	subl	$1, %r11d
	addq	$3, %rcx
	addq	$1, %r10
	movzbl	-2(%rcx), %edx
	imull	$77, %r8d, %r8d
	imull	$150, %edx, %edx
	addl	%edx, %r8d
	movzbl	-1(%rcx), %edx
	imull	$29, %edx, %edx
	addl	%r8d, %edx
	movzbl	%dh, %edx
	movb	%dl, -1(%r10)
	cmpl	$-1, %r11d
	jne	.L955
	movq	%rax, 40(%rsp)
	jmp	.L936
	.p2align 4,,10
.L930:
	testl	%ebp, %ebp
	js	.L936
	movq	40(%rsp), %rax
	movl	%ebp, %r11d
	movq	%rdx, %r10
	.p2align 4,,10
.L956:
	movzbl	(%rcx), %r8d
	subl	$1, %r11d
	addq	$3, %rcx
	addq	$2, %r10
	movzbl	-2(%rcx), %edx
	movb	$-1, -1(%r10)
	imull	$77, %r8d, %r8d
	imull	$150, %edx, %edx
	addl	%edx, %r8d
	movzbl	-1(%rcx), %edx
	imull	$29, %edx, %edx
	addl	%r8d, %edx
	movzbl	%dh, %edx
	movb	%dl, -2(%r10)
	cmpl	$-1, %r11d
	jne	.L956
	movq	%rax, 40(%rsp)
	jmp	.L936
	.p2align 4,,10
.L928:
	testl	%ebp, %ebp
	js	.L936
	cmpb	$0, 86(%rsp)
	jne	.L968
	movq	40(%rsp), %rax
	movq	%rcx, %r10
	movq	%rdx, %r8
	xorl	%r11d, %r11d
	movdqa	.LC2(%rip), %xmm4
	.p2align 4,,10
.L952:
	movdqu	(%r10), %xmm1
	movdqa	%xmm4, %xmm0
	movdqa	%xmm4, %xmm3
	addl	$1, %r11d
	movdqu	16(%r10), %xmm2
	addq	$64, %r8
	addq	$32, %r10
	pand	%xmm1, %xmm0
	psrlw	$8, %xmm1
	pand	%xmm2, %xmm3
	psrlw	$8, %xmm2
	packuswb	%xmm3, %xmm0
	movdqa	%xmm0, %xmm3
	packuswb	%xmm2, %xmm1
	movdqa	%xmm0, %xmm5
	movdqa	%xmm0, %xmm2
	punpcklbw	%xmm0, %xmm3
	punpckhbw	%xmm0, %xmm2
	punpcklbw	%xmm1, %xmm5
	punpckhbw	%xmm1, %xmm0
	movdqa	%xmm3, %xmm1
	punpcklbw	%xmm5, %xmm1
	movups	%xmm1, -64(%r8)
	movdqa	%xmm2, %xmm1
	punpckhbw	%xmm5, %xmm3
	punpcklbw	%xmm0, %xmm1
	movups	%xmm3, -48(%r8)
	punpckhbw	%xmm0, %xmm2
	movups	%xmm1, -32(%r8)
	movups	%xmm2, -16(%r8)
	cmpl	%r11d, %r13d
	ja	.L952
	addq	72(%rsp), %rcx
	movq	%rax, 40(%rsp)
	addq	64(%rsp), %rdx
	movl	60(%rsp), %r11d
	cmpl	%r11d, 56(%rsp)
	je	.L936
	movl	80(%rsp), %r8d
.L950:
	movzbl	(%rcx), %r10d
	testl	%r8d, %r8d
	movb	%r10b, 2(%rdx)
	movb	%r10b, 1(%rdx)
	movb	%r10b, (%rdx)
	movzbl	1(%rcx), %r10d
	movb	%r10b, 3(%rdx)
	je	.L936
	movzbl	2(%rcx), %r10d
	cmpl	$1, %r8d
	movb	%r10b, 6(%rdx)
	movb	%r10b, 5(%rdx)
	movb	%r10b, 4(%rdx)
	movzbl	3(%rcx), %r10d
	movb	%r10b, 7(%rdx)
	je	.L936
	movzbl	4(%rcx), %r10d
	cmpl	$2, %r8d
	movb	%r10b, 10(%rdx)
	movb	%r10b, 9(%rdx)
	movb	%r10b, 8(%rdx)
	movzbl	5(%rcx), %r10d
	movb	%r10b, 11(%rdx)
	je	.L936
	movzbl	6(%rcx), %r10d
	cmpl	$3, %r8d
	movb	%r10b, 14(%rdx)
	movb	%r10b, 13(%rdx)
	movb	%r10b, 12(%rdx)
	movzbl	7(%rcx), %r10d
	movb	%r10b, 15(%rdx)
	je	.L936
	movzbl	8(%rcx), %r10d
	cmpl	$4, %r8d
	movb	%r10b, 18(%rdx)
	movb	%r10b, 17(%rdx)
	movb	%r10b, 16(%rdx)
	movzbl	9(%rcx), %r10d
	movb	%r10b, 19(%rdx)
	je	.L936
	movzbl	10(%rcx), %r10d
	cmpl	$5, %r8d
	movb	%r10b, 22(%rdx)
	movb	%r10b, 21(%rdx)
	movb	%r10b, 20(%rdx)
	movzbl	11(%rcx), %r10d
	movb	%r10b, 23(%rdx)
	je	.L936
	movzbl	12(%rcx), %r10d
	cmpl	$6, %r8d
	movb	%r10b, 26(%rdx)
	movb	%r10b, 25(%rdx)
	movb	%r10b, 24(%rdx)
	movzbl	13(%rcx), %r10d
	movb	%r10b, 27(%rdx)
	je	.L936
	movzbl	14(%rcx), %r10d
	cmpl	$7, %r8d
	movb	%r10b, 30(%rdx)
	movb	%r10b, 29(%rdx)
	movb	%r10b, 28(%rdx)
	movzbl	15(%rcx), %r10d
	movb	%r10b, 31(%rdx)
	je	.L936
	movzbl	16(%rcx), %r10d
	cmpl	$8, %r8d
	movb	%r10b, 34(%rdx)
	movb	%r10b, 33(%rdx)
	movb	%r10b, 32(%rdx)
	movzbl	17(%rcx), %r10d
	movb	%r10b, 35(%rdx)
	je	.L936
	movzbl	18(%rcx), %r10d
	cmpl	$9, %r8d
	movb	%r10b, 38(%rdx)
	movb	%r10b, 37(%rdx)
	movb	%r10b, 36(%rdx)
	movzbl	19(%rcx), %r10d
	movb	%r10b, 39(%rdx)
	je	.L936
	movzbl	20(%rcx), %r10d
	cmpl	$10, %r8d
	movb	%r10b, 42(%rdx)
	movb	%r10b, 41(%rdx)
	movb	%r10b, 40(%rdx)
	movzbl	21(%rcx), %r10d
	movb	%r10b, 43(%rdx)
	je	.L936
	movzbl	22(%rcx), %r10d
	cmpl	$11, %r8d
	movb	%r10b, 46(%rdx)
	movb	%r10b, 45(%rdx)
	movb	%r10b, 44(%rdx)
	movzbl	23(%rcx), %r10d
	movb	%r10b, 47(%rdx)
	je	.L936
	movzbl	24(%rcx), %r10d
	cmpl	$12, %r8d
	movb	%r10b, 50(%rdx)
	movb	%r10b, 49(%rdx)
	movb	%r10b, 48(%rdx)
	movzbl	25(%rcx), %r10d
	movb	%r10b, 51(%rdx)
	je	.L936
	movzbl	26(%rcx), %r10d
	cmpl	$13, %r8d
	movb	%r10b, 54(%rdx)
	movb	%r10b, 53(%rdx)
	movb	%r10b, 52(%rdx)
	movzbl	27(%rcx), %r10d
	movb	%r10b, 55(%rdx)
	je	.L936
	movzbl	28(%rcx), %r8d
	movb	%r8b, 58(%rdx)
	movb	%r8b, 57(%rdx)
	movb	%r8b, 56(%rdx)
	movzbl	29(%rcx), %ecx
	movb	%cl, 59(%rdx)
	jmp	.L936
	.p2align 4,,10
.L927:
	testl	%ebp, %ebp
	js	.L936
	movq	40(%rsp), %rax
	movl	%ebp, %r10d
	.p2align 4,,10
.L949:
	movzbl	(%rcx), %r8d
	subl	$1, %r10d
	addq	$2, %rcx
	addq	$3, %rdx
	movb	%r8b, -1(%rdx)
	movb	%r8b, -2(%rdx)
	movb	%r8b, -3(%rdx)
	cmpl	$-1, %r10d
	jne	.L949
	movq	%rax, 40(%rsp)
	jmp	.L936
	.p2align 4,,10
.L922:
	testl	%ebp, %ebp
	js	.L936
	cmpb	$0, 86(%rsp)
	jne	.L965
	movq	40(%rsp), %rax
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	pcmpeqd	%xmm1, %xmm1
	.p2align 4,,10
.L939:
	movdqu	(%rcx,%r8), %xmm0
	addl	$1, %r10d
	movdqa	%xmm0, %xmm2
	punpckhbw	%xmm1, %xmm0
	movups	%xmm0, 16(%rdx,%r8,2)
	punpcklbw	%xmm1, %xmm2
	movups	%xmm2, (%rdx,%r8,2)
	addq	$16, %r8
	cmpl	%r10d, %r13d
	ja	.L939
	addq	96(%rsp), %rcx
	movq	%rax, 40(%rsp)
	addq	72(%rsp), %rdx
	movl	60(%rsp), %r11d
	cmpl	%r11d, 56(%rsp)
	je	.L936
	movl	80(%rsp), %r8d
.L937:
	movzbl	(%rcx), %r10d
	testl	%r8d, %r8d
	movb	$-1, 1(%rdx)
	movb	%r10b, (%rdx)
	je	.L936
	movzbl	1(%rcx), %r10d
	cmpl	$1, %r8d
	movb	$-1, 3(%rdx)
	movb	%r10b, 2(%rdx)
	je	.L936
	movzbl	2(%rcx), %r10d
	cmpl	$2, %r8d
	movb	$-1, 5(%rdx)
	movb	%r10b, 4(%rdx)
	je	.L936
	movzbl	3(%rcx), %r10d
	cmpl	$3, %r8d
	movb	$-1, 7(%rdx)
	movb	%r10b, 6(%rdx)
	je	.L936
	movzbl	4(%rcx), %r10d
	cmpl	$4, %r8d
	movb	$-1, 9(%rdx)
	movb	%r10b, 8(%rdx)
	je	.L936
	movzbl	5(%rcx), %r10d
	cmpl	$5, %r8d
	movb	$-1, 11(%rdx)
	movb	%r10b, 10(%rdx)
	je	.L936
	movzbl	6(%rcx), %r10d
	cmpl	$6, %r8d
	movb	$-1, 13(%rdx)
	movb	%r10b, 12(%rdx)
	je	.L936
	movzbl	7(%rcx), %r10d
	cmpl	$7, %r8d
	movb	$-1, 15(%rdx)
	movb	%r10b, 14(%rdx)
	je	.L936
	movzbl	8(%rcx), %r10d
	cmpl	$8, %r8d
	movb	$-1, 17(%rdx)
	movb	%r10b, 16(%rdx)
	je	.L936
	movzbl	9(%rcx), %r10d
	cmpl	$9, %r8d
	movb	$-1, 19(%rdx)
	movb	%r10b, 18(%rdx)
	je	.L936
	movzbl	10(%rcx), %r10d
	cmpl	$10, %r8d
	movb	$-1, 21(%rdx)
	movb	%r10b, 20(%rdx)
	je	.L936
	movzbl	11(%rcx), %r10d
	cmpl	$11, %r8d
	movb	$-1, 23(%rdx)
	movb	%r10b, 22(%rdx)
	je	.L936
	movzbl	12(%rcx), %r10d
	cmpl	$12, %r8d
	movb	$-1, 25(%rdx)
	movb	%r10b, 24(%rdx)
	je	.L936
	movzbl	13(%rcx), %r10d
	cmpl	$13, %r8d
	movb	$-1, 27(%rdx)
	movb	%r10b, 26(%rdx)
	je	.L936
	movzbl	14(%rcx), %ecx
	movb	$-1, 29(%rdx)
	movb	%cl, 28(%rdx)
	jmp	.L936
	.p2align 4,,10
.L925:
	testl	%ebp, %ebp
	js	.L936
	cmpb	$0, 86(%rsp)
	jne	.L966
	movq	40(%rsp), %rax
	movq	%rdx, %r8
	movq	%rcx, %r11
	xorl	%r10d, %r10d
	pcmpeqd	%xmm4, %xmm4
	.p2align 4,,10
.L945:
	movdqu	(%r11), %xmm0
	addl	$1, %r10d
	addq	$64, %r8
	addq	$16, %r11
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	movdqa	%xmm0, %xmm3
	punpcklbw	%xmm0, %xmm2
	punpckhbw	%xmm0, %xmm1
	punpcklbw	%xmm4, %xmm3
	movdqa	%xmm2, %xmm5
	punpckhbw	%xmm3, %xmm2
	movups	%xmm2, -48(%r8)
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm4, %xmm0
	punpcklbw	%xmm3, %xmm5
	punpcklbw	%xmm0, %xmm2
	movups	%xmm5, -64(%r8)
	punpckhbw	%xmm0, %xmm1
	movups	%xmm2, -32(%r8)
	movups	%xmm1, -16(%r8)
	cmpl	%r10d, %r13d
	ja	.L945
	addq	96(%rsp), %rcx
	movq	%rax, 40(%rsp)
	addq	64(%rsp), %rdx
	movl	60(%rsp), %r11d
	cmpl	%r11d, 56(%rsp)
	je	.L936
	movl	80(%rsp), %r8d
.L943:
	movzbl	(%rcx), %r10d
	testl	%r8d, %r8d
	movb	$-1, 3(%rdx)
	movb	%r10b, 2(%rdx)
	movb	%r10b, 1(%rdx)
	movb	%r10b, (%rdx)
	je	.L936
	movzbl	1(%rcx), %r10d
	cmpl	$1, %r8d
	movb	$-1, 7(%rdx)
	movb	%r10b, 6(%rdx)
	movb	%r10b, 5(%rdx)
	movb	%r10b, 4(%rdx)
	je	.L936
	movzbl	2(%rcx), %r10d
	cmpl	$2, %r8d
	movb	$-1, 11(%rdx)
	movb	%r10b, 10(%rdx)
	movb	%r10b, 9(%rdx)
	movb	%r10b, 8(%rdx)
	je	.L936
	movzbl	3(%rcx), %r10d
	cmpl	$3, %r8d
	movb	$-1, 15(%rdx)
	movb	%r10b, 14(%rdx)
	movb	%r10b, 13(%rdx)
	movb	%r10b, 12(%rdx)
	je	.L936
	movzbl	4(%rcx), %r10d
	cmpl	$4, %r8d
	movb	$-1, 19(%rdx)
	movb	%r10b, 18(%rdx)
	movb	%r10b, 17(%rdx)
	movb	%r10b, 16(%rdx)
	je	.L936
	movzbl	5(%rcx), %r10d
	cmpl	$5, %r8d
	movb	$-1, 23(%rdx)
	movb	%r10b, 22(%rdx)
	movb	%r10b, 21(%rdx)
	movb	%r10b, 20(%rdx)
	je	.L936
	movzbl	6(%rcx), %r10d
	cmpl	$6, %r8d
	movb	$-1, 27(%rdx)
	movb	%r10b, 26(%rdx)
	movb	%r10b, 25(%rdx)
	movb	%r10b, 24(%rdx)
	je	.L936
	movzbl	7(%rcx), %r10d
	cmpl	$7, %r8d
	movb	$-1, 31(%rdx)
	movb	%r10b, 30(%rdx)
	movb	%r10b, 29(%rdx)
	movb	%r10b, 28(%rdx)
	je	.L936
	movzbl	8(%rcx), %r10d
	cmpl	$8, %r8d
	movb	$-1, 35(%rdx)
	movb	%r10b, 34(%rdx)
	movb	%r10b, 33(%rdx)
	movb	%r10b, 32(%rdx)
	je	.L936
	movzbl	9(%rcx), %r10d
	cmpl	$9, %r8d
	movb	$-1, 39(%rdx)
	movb	%r10b, 38(%rdx)
	movb	%r10b, 37(%rdx)
	movb	%r10b, 36(%rdx)
	je	.L936
	movzbl	10(%rcx), %r10d
	cmpl	$10, %r8d
	movb	$-1, 43(%rdx)
	movb	%r10b, 42(%rdx)
	movb	%r10b, 41(%rdx)
	movb	%r10b, 40(%rdx)
	je	.L936
	movzbl	11(%rcx), %r10d
	cmpl	$11, %r8d
	movb	$-1, 47(%rdx)
	movb	%r10b, 46(%rdx)
	movb	%r10b, 45(%rdx)
	movb	%r10b, 44(%rdx)
	je	.L936
	movzbl	12(%rcx), %r10d
	cmpl	$12, %r8d
	movb	$-1, 51(%rdx)
	movb	%r10b, 50(%rdx)
	movb	%r10b, 49(%rdx)
	movb	%r10b, 48(%rdx)
	je	.L936
	movzbl	13(%rcx), %r10d
	cmpl	$13, %r8d
	movb	$-1, 55(%rdx)
	movb	%r10b, 54(%rdx)
	movb	%r10b, 53(%rdx)
	movb	%r10b, 52(%rdx)
	je	.L936
	movzbl	14(%rcx), %ecx
	movb	$-1, 59(%rdx)
	movb	%cl, 58(%rdx)
	movb	%cl, 57(%rdx)
	movb	%cl, 56(%rdx)
	jmp	.L936
	.p2align 4,,10
.L926:
	testl	%ebp, %ebp
	js	.L936
	cmpb	$0, 87(%rsp)
	jne	.L967
	movl	52(%rsp), %r11d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	40(%rsp), %rax
	movdqa	.LC2(%rip), %xmm4
	.p2align 4,,10
.L948:
	movdqu	(%rcx,%r8,2), %xmm0
	addl	$1, %r10d
	movdqu	16(%rcx,%r8,2), %xmm1
	pand	%xmm4, %xmm0
	pand	%xmm4, %xmm1
	packuswb	%xmm1, %xmm0
	movups	%xmm0, (%rdx,%r8)
	addq	$16, %r8
	cmpl	%r10d, %r11d
	ja	.L948
	addq	104(%rsp), %rcx
	movq	%rax, 40(%rsp)
	addq	88(%rsp), %rdx
	movl	120(%rsp), %r8d
.L947:
	movzbl	(%rcx), %r10d
	testl	%r8d, %r8d
	movb	%r10b, (%rdx)
	je	.L936
	movzbl	2(%rcx), %r10d
	cmpl	$1, %r8d
	movb	%r10b, 1(%rdx)
	je	.L936
	movzbl	4(%rcx), %r10d
	cmpl	$2, %r8d
	movb	%r10b, 2(%rdx)
	je	.L936
	movzbl	6(%rcx), %r10d
	cmpl	$3, %r8d
	movb	%r10b, 3(%rdx)
	je	.L936
	movzbl	8(%rcx), %r10d
	cmpl	$4, %r8d
	movb	%r10b, 4(%rdx)
	je	.L936
	movzbl	10(%rcx), %r10d
	cmpl	$5, %r8d
	movb	%r10b, 5(%rdx)
	je	.L936
	movzbl	12(%rcx), %r10d
	cmpl	$6, %r8d
	movb	%r10b, 6(%rdx)
	je	.L936
	movzbl	14(%rcx), %r10d
	cmpl	$7, %r8d
	movb	%r10b, 7(%rdx)
	je	.L936
	movzbl	16(%rcx), %r10d
	cmpl	$8, %r8d
	movb	%r10b, 8(%rdx)
	je	.L936
	movzbl	18(%rcx), %r10d
	cmpl	$9, %r8d
	movb	%r10b, 9(%rdx)
	je	.L936
	movzbl	20(%rcx), %r10d
	cmpl	$10, %r8d
	movb	%r10b, 10(%rdx)
	je	.L936
	movzbl	22(%rcx), %r10d
	cmpl	$11, %r8d
	movb	%r10b, 11(%rdx)
	je	.L936
	movzbl	24(%rcx), %r10d
	cmpl	$12, %r8d
	movb	%r10b, 12(%rdx)
	je	.L936
	movzbl	26(%rcx), %r10d
	cmpl	$13, %r8d
	movb	%r10b, 13(%rdx)
	je	.L936
	movzbl	28(%rcx), %r10d
	cmpl	$14, %r8d
	movb	%r10b, 14(%rdx)
	je	.L936
	movzbl	30(%rcx), %ecx
	movb	%cl, 15(%rdx)
	jmp	.L936
	.p2align 4,,10
.L921:
	movl	$1506, %r8d
	movl	%r9d, 124(%rsp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC32(%rip), %rcx
	call	_assert
	movl	124(%rsp), %r9d
	jmp	.L936
	.p2align 4,,10
.L1253:
	leaq	.LC3(%rip), %rdx
	movl	$1477, %r8d
	leaq	.LC30(%rip), %rcx
	call	_assert
	jmp	.L916
	.p2align 4,,10
.L919:
	movq	368(%rsp), %rcx
	call	free
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L915
.L969:
	movl	%ebp, %r10d
	jmp	.L957
.L968:
	movl	%ebp, %r8d
	jmp	.L950
.L970:
	movl	%ebp, %r10d
	jmp	.L959
.L967:
	movl	%ebp, %r8d
	jmp	.L947
.L965:
	movl	%ebp, %r8d
	jmp	.L937
.L966:
	movl	%ebp, %r8d
	jmp	.L943
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17stbi__malloc_mad3iiii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17stbi__malloc_mad3iiii
_ZL17stbi__malloc_mad3iiii:
.LFB831:
	.seh_endprologue
	testl	%ecx, %ecx
	movl	%edx, %r10d
	js	.L1254
	testl	%edx, %edx
	js	.L1254
	testl	%edx, %edx
	jne	.L1268
.L1256:
	testl	%r8d, %r8d
	js	.L1254
	imull	%r10d, %ecx
	testl	%r8d, %r8d
	jne	.L1269
.L1257:
	imull	%ecx, %r8d
	movl	$2147483647, %eax
	subl	%r9d, %eax
	cmpl	%r8d, %eax
	jl	.L1254
	leal	(%r9,%r8), %ecx
	movslq	%ecx, %rcx
	jmp	malloc
	.p2align 4,,10
.L1268:
	movl	$2147483647, %eax
	cltd
	idivl	%r10d
	cmpl	%eax, %ecx
	jle	.L1256
.L1254:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L1269:
	movl	$2147483647, %eax
	cltd
	idivl	%r8d
	cmpl	%eax, %ecx
	jle	.L1257
	jmp	.L1254
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC44:
	.ascii "out_n == s->img_n || out_n == s->img_n+1\0"
.LC45:
	.ascii "not enough pixels\0"
.LC46:
	.ascii "invalid filter\0"
.LC47:
	.ascii "img_width_bytes <= x\0"
.LC48:
	.ascii "img_n+1 == out_n\0"
.LC52:
	.ascii "img_n == 3\0"
	.text
	.p2align 4,,15
	.def	_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii.isra.36;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii.isra.36
_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii.isra.36:
.LFB8047:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$616, %rsp
	.seh_stackalloc	616
	movaps	%xmm6, 448(%rsp)
	.seh_savexmm	%xmm6, 448
	movaps	%xmm7, 464(%rsp)
	.seh_savexmm	%xmm7, 464
	movaps	%xmm8, 480(%rsp)
	.seh_savexmm	%xmm8, 480
	movaps	%xmm9, 496(%rsp)
	.seh_savexmm	%xmm9, 496
	movaps	%xmm10, 512(%rsp)
	.seh_savexmm	%xmm10, 512
	movaps	%xmm11, 528(%rsp)
	.seh_savexmm	%xmm11, 528
	movaps	%xmm12, 544(%rsp)
	.seh_savexmm	%xmm12, 544
	movaps	%xmm13, 560(%rsp)
	.seh_savexmm	%xmm13, 560
	movaps	%xmm14, 576(%rsp)
	.seh_savexmm	%xmm14, 576
	movaps	%xmm15, 592(%rsp)
	.seh_savexmm	%xmm15, 592
	.seh_endprologue
	cmpl	$16, 744(%rsp)
	movl	720(%rsp), %eax
	movq	%rcx, %r12
	movq	%rdx, 696(%rsp)
	movq	%r8, %r13
	movl	%r9d, %ebp
	je	.L1926
	movl	%eax, 216(%rsp)
	movl	$1, %edi
	movl	$1, %r14d
.L1271:
	movl	8(%r12), %eax
	movl	728(%rsp), %esi
	cmpl	%eax, 720(%rsp)
	movl	%eax, 296(%rsp)
	movl	%esi, 256(%rsp)
	je	.L1272
	addl	$1, %eax
	cmpl	%eax, 720(%rsp)
	jne	.L1927
.L1272:
	movl	216(%rsp), %r8d
	xorl	%r9d, %r9d
	movl	736(%rsp), %edx
	movl	728(%rsp), %ecx
	call	_ZL17stbi__malloc_mad3iiii
	movq	%rax, %rbx
	movq	696(%rsp), %rax
	testq	%rbx, %rbx
	movq	%rbx, (%rax)
	je	.L1928
	movl	296(%rsp), %eax
	imull	728(%rsp), %eax
	movl	(%r12), %esi
	movl	%eax, 376(%rsp)
	imull	744(%rsp), %eax
	addl	$7, %eax
	shrl	$3, %eax
	movl	%eax, 232(%rsp)
	addl	$1, %eax
	imull	736(%rsp), %eax
	cmpl	%esi, 728(%rsp)
	je	.L1929
.L1275:
	cmpl	%ebp, %eax
	ja	.L1277
.L1276:
	movl	736(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L1278
	movzbl	0(%r13), %r15d
	leaq	1(%r13), %rbp
	cmpl	$4, %r15d
	jg	.L1279
	movl	%edi, %esi
	movl	296(%rsp), %edi
	movq	$0, 240(%rsp)
	movl	720(%rsp), %eax
	movq	%r13, 704(%rsp)
	imull	728(%rsp), %eax
	movl	$0, 212(%rsp)
	imull	%edi, %r14d
	imull	%eax, %esi
	cmpl	$7, 744(%rsp)
	movl	%eax, 344(%rsp)
	movl	%r14d, %r12d
	movl	%esi, 260(%rsp)
	setle	%dl
	cmpl	%edi, 720(%rsp)
	movl	%esi, 228(%rsp)
	sete	%al
	orl	%eax, %edx
	leal	1(%rdi), %eax
	movb	%dl, 264(%rsp)
	movl	%eax, 348(%rsp)
	movl	728(%rsp), %eax
	subl	$1, %eax
	movl	%eax, 300(%rsp)
	movl	%esi, %eax
	negq	%rax
	movq	%rax, 288(%rsp)
	.p2align 4,,10
.L1281:
	cmpl	$7, 744(%rsp)
	jg	.L1282
	movl	232(%rsp), %eax
	cmpl	%eax, 728(%rsp)
	jb	.L1930
.L1283:
	movl	232(%rsp), %edi
	movl	344(%rsp), %eax
	movl	%edi, 256(%rsp)
	subl	%edi, %eax
	movl	212(%rsp), %edi
	addq	%rax, %rbx
	movq	288(%rsp), %rax
	testl	%edi, %edi
	leaq	(%rbx,%rax), %rdx
	je	.L1931
	movl	$1, %r12d
.L1284:
	leaq	.L1289(%rip), %r8
	xorl	%eax, %eax
	movl	%r15d, %r9d
	.p2align 4,,10
.L1296:
	cmpl	$6, %r15d
	ja	.L1287
	movslq	(%r8,%r9,4), %rcx
	addq	%r8, %rcx
	jmp	*%rcx
	.section .rdata,"dr"
	.align 4
.L1289:
	.long	.L1295-.L1289
	.long	.L1295-.L1289
	.long	.L1293-.L1289
	.long	.L1292-.L1289
	.long	.L1293-.L1289
	.long	.L1295-.L1289
	.long	.L1295-.L1289
	.text
	.p2align 4,,10
.L1295:
	movzbl	0(%rbp,%rax), %ecx
	movb	%cl, (%rbx,%rax)
.L1287:
	addq	$1, %rax
	cmpl	%eax, %r12d
	jg	.L1296
	cmpl	$8, 744(%rsp)
	je	.L1932
.L1297:
	cmpl	$16, 744(%rsp)
	je	.L1933
	addq	$2, 704(%rsp)
	leaq	1(%rdx), %rsi
	addq	$1, %rbx
.L1299:
	cmpb	$0, 264(%rsp)
	je	.L1302
.L1935:
	movl	256(%rsp), %eax
	leal	-1(%rax), %r14d
	imull	%r12d, %r14d
	cmpl	$6, %r15d
	movslq	%r14d, %rax
	movq	%rax, 80(%rsp)
	ja	.L1303
	leaq	.L1305(%rip), %rdx
	movl	%r15d, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1305:
	.long	.L1304-.L1305
	.long	.L1306-.L1305
	.long	.L1307-.L1305
	.long	.L1308-.L1305
	.long	.L1309-.L1305
	.long	.L1310-.L1305
	.long	.L1311-.L1305
	.text
	.p2align 4,,10
.L1293:
	movzbl	(%rdx,%rax), %ecx
	addb	0(%rbp,%rax), %cl
	movb	%cl, (%rbx,%rax)
	jmp	.L1287
	.p2align 4,,10
.L1292:
	movzbl	(%rdx,%rax), %ecx
	sarl	%ecx
	addb	0(%rbp,%rax), %cl
	movb	%cl, (%rbx,%rax)
	jmp	.L1287
	.p2align 4,,10
.L1927:
	leaq	.LC3(%rip), %rdx
	movl	$4294, %r8d
	leaq	.LC44(%rip), %rcx
	call	_assert
	jmp	.L1272
	.p2align 4,,10
.L1929:
	movl	4(%r12), %esi
	cmpl	%esi, 736(%rsp)
	jne	.L1275
	cmpl	%ebp, %eax
	je	.L1276
	.p2align 4,,10
.L1277:
	leaq	.LC45(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L1270:
	movaps	448(%rsp), %xmm6
	movaps	464(%rsp), %xmm7
	movaps	480(%rsp), %xmm8
	movaps	496(%rsp), %xmm9
	movaps	512(%rsp), %xmm10
	movaps	528(%rsp), %xmm11
	movaps	544(%rsp), %xmm12
	movaps	560(%rsp), %xmm13
	movaps	576(%rsp), %xmm14
	movaps	592(%rsp), %xmm15
	addq	$616, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L1282:
	movl	212(%rsp), %esi
	movq	288(%rsp), %rax
	testl	%esi, %esi
	leaq	(%rbx,%rax), %rdx
	je	.L1934
.L1285:
	testl	%r12d, %r12d
	jg	.L1284
	cmpl	$8, 744(%rsp)
	jne	.L1297
	.p2align 4,,10
.L1932:
	movslq	296(%rsp), %rax
	cmpl	%eax, 720(%rsp)
	je	.L1298
	movb	$-1, (%rbx,%rax)
.L1298:
	movslq	720(%rsp), %rsi
	addq	%rbp, %rax
	movq	%rax, 704(%rsp)
	addq	%rsi, %rbx
	addq	%rdx, %rsi
	cmpb	$0, 264(%rsp)
	jne	.L1935
.L1302:
	movl	348(%rsp), %eax
	cmpl	%eax, 720(%rsp)
	je	.L1379
	leaq	.LC3(%rip), %rdx
	movl	$4377, %r8d
	leaq	.LC48(%rip), %rcx
	call	_assert
.L1379:
	cmpl	$6, %r15d
	ja	.L1380
	leaq	.L1382(%rip), %rcx
	movl	%r15d, %edx
	movslq	(%rcx,%rdx,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1382:
	.long	.L1381-.L1382
	.long	.L1383-.L1382
	.long	.L1384-.L1382
	.long	.L1385-.L1382
	.long	.L1386-.L1382
	.long	.L1387-.L1382
	.long	.L1388-.L1382
	.text
	.p2align 4,,10
.L1304:
	movq	80(%rsp), %r8
	movq	%rbx, %rcx
	movq	704(%rsp), %rdx
	call	memcpy
	.p2align 4,,10
.L1303:
	movq	80(%rsp), %rax
	addq	%rax, 704(%rsp)
.L1378:
	addl	$1, 212(%rsp)
	movl	212(%rsp), %eax
	cmpl	%eax, 736(%rsp)
	je	.L1936
	movq	696(%rsp), %rsi
	movl	228(%rsp), %eax
	movq	(%rsi), %rbx
	movq	%rax, %rdi
	movq	%rax, 240(%rsp)
	addq	%rax, %rbx
	movq	704(%rsp), %rax
	movzbl	(%rax), %r15d
	leaq	1(%rax), %rbp
	movl	260(%rsp), %eax
	addl	%eax, %edi
	cmpl	$4, %r15d
	movl	%edi, 228(%rsp)
	jle	.L1281
.L1279:
	leaq	.LC46(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L1270
	.p2align 4,,10
.L1390:
	xorl	%eax, %eax
	.p2align 4,,10
.L1398:
	movzbl	(%rcx,%rax), %edx
	movb	%dl, (%rbx,%rax)
	addq	$1, %rax
	cmpq	%rax, %r13
	jne	.L1398
	.p2align 4,,10
.L1389:
	movb	$-1, (%rbx,%rbp)
	addq	%rbp, %rcx
	addq	32(%rsp), %rbx
	addl	%r15d, %edi
	subl	$1, %esi
	jne	.L1400
	movl	728(%rsp), %eax
	subl	$2, %eax
	addq	$1, %rax
	imulq	%rax, %rbp
	addq	%rbp, 704(%rsp)
	.p2align 4,,10
.L1380:
	cmpl	$16, 744(%rsp)
	jne	.L1378
	movl	728(%rsp), %r11d
	movq	696(%rsp), %rax
	testl	%r11d, %r11d
	movq	(%rax), %rax
	je	.L1378
	movq	240(%rsp), %rbx
	movslq	%r12d, %rcx
	movslq	216(%rsp), %rdx
	movl	728(%rsp), %r8d
	leaq	1(%rbx,%rcx), %rcx
	addq	%rcx, %rax
	xorl	%ecx, %ecx
	.p2align 4,,10
.L1471:
	addl	$1, %ecx
	movb	$-1, (%rax)
	addq	%rdx, %rax
	cmpl	%ecx, %r8d
	jne	.L1471
	jmp	.L1378
	.p2align 4,,10
.L1933:
	movl	296(%rsp), %esi
	movslq	%r12d, %rax
	cmpl	%esi, 720(%rsp)
	je	.L1301
	movb	$-1, (%rbx,%rax)
	movb	$-1, 1(%rbx,%rax)
.L1301:
	movslq	216(%rsp), %rsi
	addq	%rbp, %rax
	movq	%rax, 704(%rsp)
	addq	%rsi, %rbx
	addq	%rdx, %rsi
	jmp	.L1299
	.p2align 4,,10
.L1930:
	leaq	.LC3(%rip), %rdx
	movl	$4315, %r8d
	leaq	.LC47(%rip), %rcx
	call	_assert
	jmp	.L1283
	.p2align 4,,10
.L1926:
	addl	%eax, %eax
	movl	$2, %edi
	movl	$2, %r14d
	movl	%eax, 216(%rsp)
	jmp	.L1271
	.p2align 4,,10
.L1928:
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L1270
	.p2align 4,,10
.L1387:
	movl	300(%rsp), %esi
	testl	%esi, %esi
	je	.L1380
	movslq	216(%rsp), %rdi
	leaq	16(%rbx), %r8
	movslq	%r12d, %r14
	movl	%esi, 64(%rsp)
	movq	704(%rsp), %rcx
	movl	%r15d, 144(%rsp)
	movq	%rdi, %rax
	movq	%rdi, 80(%rsp)
	subq	%rdi, %rbx
	movl	%r14d, %edi
	movl	%eax, %r13d
	movl	%eax, %esi
	negl	%edi
	negl	%r13d
	movl	%edi, 96(%rsp)
	movl	704(%rsp), %edi
	movslq	%r13d, %r13
	leaq	-16(%r13), %rax
	movq	%rax, 48(%rsp)
	movl	$1, %eax
	subl	%esi, %eax
	negl	%edi
	cltq
	movl	%edi, %r15d
	movq	%rax, 112(%rsp)
	movl	$2, %eax
	subl	%esi, %eax
	cltq
	movq	%rax, 128(%rsp)
	.p2align 4,,10
.L1459:
	leaq	-16(%r8), %r10
	testl	%r12d, %r12d
	jle	.L1449
	movq	48(%rsp), %rax
	addq	%r8, %rax
	leaq	16(%r13), %rax
	setnc	%dl
	testq	%rax, %rax
	setle	%al
	orl	%eax, %edx
	leaq	16(%rcx), %rax
	cmpq	%rax, %r10
	setnb	%al
	cmpq	%r8, %rcx
	setnb	%r9b
	orl	%r9d, %eax
	testb	%al, %dl
	je	.L1450
	cmpl	$18, %r12d
	jbe	.L1450
	leal	-1(%r12), %r9d
	movl	%r15d, %edx
	andl	$15, %edx
	leal	15(%rdx), %eax
	cmpl	%eax, %r9d
	jb	.L1661
	testl	%edx, %edx
	je	.L1662
	movzbl	-16(%r8,%r13), %eax
	sarl	%eax
	addb	(%rcx), %al
	cmpl	$1, %edx
	movb	%al, -16(%r8)
	je	.L1663
	movq	112(%rsp), %rax
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	1(%rcx), %al
	cmpl	$2, %edx
	movb	%al, -15(%r8)
	je	.L1664
	movq	128(%rsp), %rax
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	2(%rcx), %al
	cmpl	$3, %edx
	movb	%al, -14(%r8)
	movl	$3, %eax
	je	.L1452
	movl	216(%rsp), %esi
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	3(%rcx), %al
	cmpl	$4, %edx
	movb	%al, -13(%r8)
	movl	$4, %eax
	je	.L1452
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	4(%rcx), %al
	cmpl	$5, %edx
	movb	%al, -12(%r8)
	je	.L1667
	movl	$5, %eax
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	5(%rcx), %al
	cmpl	$6, %edx
	movb	%al, -11(%r8)
	movl	$6, %eax
	je	.L1452
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	6(%rcx), %al
	cmpl	$7, %edx
	movb	%al, -10(%r8)
	movl	$7, %eax
	je	.L1452
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	7(%rcx), %al
	cmpl	$8, %edx
	movb	%al, -9(%r8)
	movl	$8, %eax
	je	.L1452
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	8(%rcx), %al
	cmpl	$9, %edx
	movb	%al, -8(%r8)
	movl	$9, %eax
	je	.L1452
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	9(%rcx), %al
	cmpl	$10, %edx
	movb	%al, -7(%r8)
	movl	$10, %eax
	je	.L1452
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	10(%rcx), %al
	cmpl	$11, %edx
	movb	%al, -6(%r8)
	movl	$11, %eax
	je	.L1452
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	11(%rcx), %al
	cmpl	$12, %edx
	movb	%al, -5(%r8)
	movl	$12, %eax
	je	.L1452
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	12(%rcx), %al
	cmpl	$13, %edx
	movb	%al, -4(%r8)
	movl	$13, %eax
	je	.L1452
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	13(%rcx), %al
	cmpl	$14, %edx
	movb	%al, -3(%r8)
	movl	$14, %eax
	je	.L1452
	subl	%esi, %eax
	cltq
	movzbl	-16(%r8,%rax), %eax
	sarl	%eax
	addb	14(%rcx), %al
	movb	%al, -2(%r8)
	movl	$15, %eax
	.p2align 4,,10
.L1452:
	movl	%r12d, %esi
	movl	%edx, %r11d
	xorl	%r9d, %r9d
	pxor	%xmm2, %xmm2
	leaq	(%rcx,%r11), %rdi
	subl	%edx, %esi
	xorl	%edx, %edx
	movl	%esi, %ebp
	movl	%esi, 32(%rsp)
	leaq	0(%r13,%r11), %rsi
	shrl	$4, %ebp
	addq	%r10, %r11
	addq	%r10, %rsi
	.p2align 4,,10
.L1454:
	movdqu	(%rsi,%rdx), %xmm1
	addl	$1, %r9d
	movdqa	%xmm1, %xmm0
	punpckhbw	%xmm2, %xmm1
	psrlw	$1, %xmm1
	pand	.LC2(%rip), %xmm1
	punpcklbw	%xmm2, %xmm0
	psrlw	$1, %xmm0
	pand	.LC2(%rip), %xmm0
	packuswb	%xmm1, %xmm0
	paddb	(%rdi,%rdx), %xmm0
	movups	%xmm0, (%r11,%rdx)
	addq	$16, %rdx
	cmpl	%r9d, %ebp
	ja	.L1454
	movl	32(%rsp), %esi
	movl	%esi, %edx
	andl	$-16, %edx
	addl	%edx, %eax
	cmpl	%edx, %esi
	je	.L1449
.L1451:
	cltq
	.p2align 4,,10
.L1456:
	movzbl	(%rbx,%rax), %edx
	sarl	%edx
	addb	(%rcx,%rax), %dl
	movb	%dl, (%r10,%rax)
	addq	$1, %rax
	cmpl	%eax, %r12d
	jg	.L1456
.L1449:
	movq	80(%rsp), %rax
	movb	$-1, -16(%r8,%r14)
	addq	%r14, %rcx
	addl	96(%rsp), %r15d
	addq	%rax, %r8
	addq	%rax, %rbx
	subl	$1, 64(%rsp)
	jne	.L1459
.L1922:
	movl	728(%rsp), %eax
	subl	$2, %eax
	addq	$1, %rax
	imulq	%rax, %r14
	addq	%r14, 704(%rsp)
	jmp	.L1380
	.p2align 4,,10
.L1386:
	movl	300(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L1380
	movslq	216(%rsp), %rdi
	movslq	%r12d, %r14
	movl	%ecx, 360(%rsp)
	movq	%r14, 352(%rsp)
	movl	%r12d, 272(%rsp)
	movq	%rdi, %rax
	movq	%rdi, 368(%rsp)
	negl	%eax
	movslq	%eax, %rdi
	leaq	16(%rbx), %rax
	movq	%rdi, 336(%rsp)
	movq	%rax, 312(%rsp)
	leaq	(%rsi,%rdi), %rdx
	movl	%r14d, %eax
	movq	704(%rsp), %r14
	leaq	(%rbx,%rdi), %rbp
	negl	%eax
	movq	%rdx, 328(%rsp)
	movl	%eax, 380(%rsp)
	movl	704(%rsp), %eax
	movq	%rbp, 320(%rsp)
	negl	%eax
	movl	%eax, 304(%rsp)
	movl	$16, %eax
	subq	%rdi, %rax
	addq	%rax, %rdi
	movq	%rax, 384(%rsp)
	leal	-1(%r12), %eax
	movq	%rdi, 392(%rsp)
	movl	%eax, 424(%rsp)
	addq	$1, %rax
	movq	%rax, 400(%rsp)
	.p2align 4,,10
.L1448:
	movq	336(%rsp), %rax
	movq	%rdx, %r13
	movq	%rbp, %rbx
	movl	272(%rsp), %esi
	subq	%rax, %r13
	subq	%rax, %rbx
	testl	%esi, %esi
	jle	.L1434
	movq	312(%rsp), %rdi
	addq	$16, %rax
	testq	%rax, %rax
	leaq	0(%rbp), %rax
	setle	%r8b
	cmpq	%rax, %rdi
	setbe	%al
	orl	%r8d, %eax
	cmpl	$16, %esi
	movq	384(%rsp), %rsi
	seta	%r8b
	andl	%eax, %r8d
	movq	392(%rsp), %rax
	addq	%rdx, %rax
	cmpq	%rax, %rbx
	leaq	(%rdx), %rax
	setnb	%cl
	cmpq	%rax, %rdi
	setbe	%al
	orl	%ecx, %eax
	leaq	(%rdx,%rsi), %rcx
	andl	%r8d, %eax
	cmpq	%rcx, %rbx
	setnb	%cl
	cmpq	%r13, %rdi
	setbe	%r8b
	orl	%r8d, %ecx
	testb	%cl, %al
	je	.L1435
	leaq	16(%r14), %rax
	cmpq	%rax, %rbx
	setnb	%cl
	cmpq	%rdi, %r14
	setnb	%al
	orb	%al, %cl
	je	.L1435
	movl	304(%rsp), %edi
	andl	$15, %edi
	leal	15(%rdi), %eax
	cmpl	%eax, 424(%rsp)
	movl	%edi, 32(%rsp)
	jb	.L1656
	testl	%edi, %edi
	movl	%edi, %eax
	je	.L1657
	leal	-1(%rdi), %r12d
	movl	$1, %ecx
	addq	$2, %r12
	.p2align 4,,10
.L1439:
	movzbl	-1(%r13,%rcx), %r11d
	movzbl	-1(%rbp,%rcx), %r10d
	movzbl	-1(%rdx,%rcx), %esi
	movzbl	-1(%r14,%rcx), %edi
	leal	(%r11,%r10), %eax
	subl	%esi, %eax
	movl	%eax, %r9d
	subl	%r11d, %r9d
	movl	%r9d, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %r9d
	subl	%r8d, %r9d
	movl	%eax, %r8d
	subl	%r10d, %eax
	subl	%esi, %r8d
	movl	%r8d, %r15d
	sarl	$31, %r15d
	xorl	%r15d, %r8d
	subl	%r15d, %r8d
	movl	%eax, %r15d
	sarl	$31, %r15d
	xorl	%r15d, %eax
	subl	%r15d, %eax
	cmpl	%r8d, %r9d
	movl	%r8d, %r15d
	cmovle	%r9d, %r15d
	cmpl	%r15d, %eax
	jle	.L1440
	cmpl	%r8d, %r9d
	cmovg	%esi, %r11d
	movl	%r11d, %r10d
.L1440:
	addl	%edi, %r10d
	movl	%ecx, %r9d
	movb	%r10b, -1(%rbx,%rcx)
	addq	$1, %rcx
	cmpq	%r12, %rcx
	jne	.L1439
	movl	32(%rsp), %eax
.L1437:
	movl	272(%rsp), %ebp
	movl	%eax, %r8d
	xorl	%ecx, %ecx
	pxor	%xmm5, %xmm5
	leaq	(%r14,%r8), %rsi
	leaq	0(%r13,%r8), %r10
	subl	%eax, %ebp
	movq	336(%rsp), %rax
	movl	%ebp, %edi
	shrl	$4, %edi
	leaq	(%r8,%rax), %rdx
	addq	%rbx, %r8
	xorl	%eax, %eax
	leaq	0(%r13,%rdx), %r11
	addq	%rbx, %rdx
	.p2align 4,,10
.L1441:
	movdqu	(%r11,%rax), %xmm0
	pxor	%xmm6, %xmm6
	addl	$1, %ecx
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm6, %xmm0
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm2
	movdqu	(%r10,%rax), %xmm0
	punpcklbw	%xmm6, %xmm1
	movdqa	%xmm1, %xmm4
	punpcklwd	%xmm5, %xmm3
	movdqa	%xmm1, %xmm13
	punpckhwd	%xmm5, %xmm4
	movaps	%xmm4, 32(%rsp)
	punpckhwd	%xmm5, %xmm2
	movdqa	%xmm0, %xmm10
	punpckhbw	%xmm6, %xmm0
	movdqa	%xmm0, %xmm11
	movdqa	%xmm0, %xmm14
	movdqu	(%rdx,%rax), %xmm0
	punpcklbw	%xmm6, %xmm10
	movdqa	%xmm10, %xmm12
	punpcklwd	%xmm5, %xmm13
	punpcklwd	%xmm5, %xmm12
	punpckhwd	%xmm5, %xmm10
	movaps	%xmm10, 64(%rsp)
	punpckhwd	%xmm5, %xmm14
	movdqa	%xmm0, %xmm1
	movaps	%xmm3, 48(%rsp)
	punpckhbw	%xmm6, %xmm0
	punpcklwd	%xmm5, %xmm11
	punpcklbw	%xmm6, %xmm1
	movdqa	%xmm1, %xmm7
	movdqa	%xmm1, %xmm15
	movdqa	%xmm0, %xmm6
	punpcklwd	%xmm5, %xmm7
	movdqa	%xmm7, %xmm8
	movdqa	%xmm7, %xmm1
	punpckhwd	%xmm5, %xmm15
	paddd	%xmm12, %xmm8
	movaps	%xmm1, 96(%rsp)
	movdqa	%xmm15, %xmm7
	paddd	64(%rsp), %xmm7
	psubd	%xmm13, %xmm8
	psubd	32(%rsp), %xmm7
	movaps	%xmm15, 112(%rsp)
	punpckhwd	%xmm5, %xmm0
	movdqa	%xmm8, %xmm9
	psubd	96(%rsp), %xmm9
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm5, %xmm6
	paddd	%xmm14, %xmm0
	movdqa	%xmm6, %xmm4
	movdqa	%xmm2, %xmm10
	movaps	%xmm3, 144(%rsp)
	movdqa	%xmm9, %xmm1
	psubd	%xmm2, %xmm0
	movaps	%xmm4, 128(%rsp)
	movdqa	%xmm8, %xmm3
	psrad	$31, %xmm1
	paddd	%xmm11, %xmm6
	psubd	48(%rsp), %xmm6
	movaps	%xmm10, 80(%rsp)
	pxor	%xmm1, %xmm9
	psubd	%xmm1, %xmm9
	movdqa	%xmm7, %xmm1
	psubd	112(%rsp), %xmm1
	psubd	%xmm12, %xmm3
	movdqa	%xmm0, %xmm15
	psubd	%xmm13, %xmm8
	movaps	%xmm9, 160(%rsp)
	movdqa	%xmm1, %xmm2
	movdqa	%xmm0, %xmm9
	psubd	80(%rsp), %xmm0
	psrad	$31, %xmm2
	psubd	%xmm14, %xmm9
	psubd	144(%rsp), %xmm15
	pxor	%xmm2, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm6, %xmm2
	psubd	128(%rsp), %xmm2
	movaps	%xmm1, 176(%rsp)
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm2
	pxor	%xmm2, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm15, %xmm2
	psrad	$31, %xmm2
	movaps	%xmm1, 192(%rsp)
	pxor	%xmm2, %xmm15
	psubd	%xmm2, %xmm15
	movdqa	%xmm3, %xmm2
	psrad	$31, %xmm2
	pxor	%xmm2, %xmm3
	psubd	%xmm2, %xmm3
	movdqa	%xmm7, %xmm2
	psubd	64(%rsp), %xmm2
	psubd	32(%rsp), %xmm7
	movdqa	%xmm2, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm2
	psubd	%xmm4, %xmm2
	movdqa	%xmm6, %xmm4
	psubd	48(%rsp), %xmm6
	psubd	%xmm11, %xmm4
	movdqa	%xmm4, %xmm1
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm1
	psubd	%xmm4, %xmm1
	movdqa	%xmm9, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm9
	psubd	%xmm4, %xmm9
	movdqa	%xmm8, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm8
	psubd	%xmm4, %xmm8
	movdqa	%xmm7, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm7
	psubd	%xmm4, %xmm7
	movdqa	%xmm6, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm6
	psubd	%xmm4, %xmm6
	movdqa	%xmm0, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm0
	psubd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm4
	pcmpgtd	%xmm8, %xmm4
	movdqa	%xmm4, %xmm10
	pand	%xmm4, %xmm8
	pandn	%xmm3, %xmm10
	por	%xmm10, %xmm8
	movdqa	%xmm2, %xmm10
	pcmpgtd	%xmm7, %xmm10
	movdqa	%xmm10, %xmm3
	pand	%xmm10, %xmm7
	pandn	%xmm2, %xmm10
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm6, %xmm2
	por	%xmm10, %xmm7
	movdqa	%xmm2, %xmm10
	pand	%xmm2, %xmm6
	pandn	%xmm1, %xmm10
	por	%xmm10, %xmm6
	movdqa	%xmm9, %xmm10
	pcmpgtd	%xmm0, %xmm10
	movdqa	%xmm10, %xmm1
	pand	%xmm10, %xmm0
	pandn	%xmm9, %xmm10
	movdqa	160(%rsp), %xmm9
	por	%xmm10, %xmm0
	pcmpgtd	%xmm8, %xmm9
	movdqa	176(%rsp), %xmm8
	pcmpgtd	%xmm7, %xmm8
	movdqa	192(%rsp), %xmm7
	movdqa	%xmm9, %xmm10
	pcmpgtd	%xmm6, %xmm7
	movdqa	%xmm15, %xmm6
	pxor	%xmm15, %xmm15
	pand	%xmm12, %xmm10
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm4, %xmm0
	pcmpeqd	%xmm15, %xmm4
	pand	%xmm9, %xmm0
	pand	%xmm0, %xmm13
	movdqa	64(%rsp), %xmm15
	pand	%xmm9, %xmm4
	pandn	96(%rsp), %xmm9
	pand	%xmm4, %xmm12
	por	%xmm10, %xmm9
	pandn	%xmm9, %xmm4
	por	%xmm4, %xmm12
	pandn	%xmm12, %xmm0
	pxor	%xmm12, %xmm12
	por	%xmm0, %xmm13
	movdqa	%xmm3, %xmm0
	pcmpeqd	%xmm12, %xmm3
	movdqa	%xmm8, %xmm10
	pand	%xmm8, %xmm0
	pand	%xmm15, %xmm10
	pand	%xmm8, %xmm3
	pandn	112(%rsp), %xmm8
	por	%xmm10, %xmm8
	movdqa	%xmm15, %xmm10
	movdqa	32(%rsp), %xmm15
	pand	%xmm3, %xmm10
	pandn	%xmm8, %xmm3
	por	%xmm3, %xmm10
	pand	%xmm0, %xmm15
	pandn	%xmm10, %xmm0
	por	%xmm15, %xmm0
	movdqa	%xmm13, %xmm15
	punpckhwd	%xmm0, %xmm15
	punpcklwd	%xmm0, %xmm13
	movdqa	%xmm13, %xmm0
	punpcklwd	%xmm15, %xmm13
	punpckhwd	%xmm15, %xmm0
	punpcklwd	%xmm0, %xmm13
	movdqa	%xmm2, %xmm0
	pcmpeqd	%xmm12, %xmm2
	movdqa	%xmm7, %xmm15
	pand	%xmm7, %xmm0
	pand	%xmm11, %xmm15
	pand	%xmm7, %xmm2
	pand	%xmm2, %xmm11
	pandn	128(%rsp), %xmm7
	por	%xmm15, %xmm7
	pand	.LC2(%rip), %xmm13
	pandn	%xmm7, %xmm2
	movdqa	48(%rsp), %xmm7
	por	%xmm11, %xmm2
	pand	%xmm0, %xmm7
	pandn	%xmm2, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm1, %xmm7
	pcmpeqd	%xmm12, %xmm1
	movdqa	%xmm6, %xmm2
	pand	%xmm6, %xmm7
	movdqa	%xmm7, %xmm3
	pand	%xmm14, %xmm2
	pand	%xmm6, %xmm1
	pandn	144(%rsp), %xmm6
	por	%xmm2, %xmm6
	movdqa	%xmm14, %xmm2
	pand	%xmm1, %xmm2
	pandn	%xmm6, %xmm1
	por	%xmm2, %xmm1
	pandn	%xmm1, %xmm3
	movdqa	80(%rsp), %xmm2
	movdqa	%xmm3, %xmm1
	pand	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm1, %xmm0
	pand	.LC2(%rip), %xmm0
	packuswb	%xmm0, %xmm13
	paddb	(%rsi,%rax), %xmm13
	movups	%xmm13, (%r8,%rax)
	addq	$16, %rax
	cmpl	%ecx, %edi
	ja	.L1441
	movl	%ebp, %eax
	andl	$-16, %eax
	leal	(%rax,%r9), %edx
	cmpl	%eax, %ebp
	je	.L1434
.L1436:
	movl	272(%rsp), %edi
	movslq	%edx, %rdx
	movq	320(%rsp), %rbp
	movq	328(%rsp), %r12
	.p2align 4,,10
.L1444:
	movzbl	0(%r13,%rdx), %r10d
	movzbl	0(%rbp,%rdx), %r9d
	movzbl	(%r12,%rdx), %r11d
	movzbl	(%r14,%rdx), %esi
	leal	(%r10,%r9), %eax
	subl	%r11d, %eax
	movl	%eax, %r8d
	subl	%r10d, %r8d
	movl	%r8d, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %r8d
	subl	%ecx, %r8d
	movl	%eax, %ecx
	subl	%r9d, %eax
	subl	%r11d, %ecx
	movl	%ecx, %r15d
	sarl	$31, %r15d
	xorl	%r15d, %ecx
	subl	%r15d, %ecx
	movl	%eax, %r15d
	sarl	$31, %r15d
	xorl	%r15d, %eax
	subl	%r15d, %eax
	cmpl	%ecx, %r8d
	movl	%ecx, %r15d
	cmovle	%r8d, %r15d
	cmpl	%r15d, %eax
	jle	.L1445
	cmpl	%ecx, %r8d
	cmovg	%r11d, %r10d
	movl	%r10d, %r9d
.L1445:
	addl	%esi, %r9d
	movb	%r9b, (%rbx,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %edi
	jg	.L1444
.L1434:
	movq	352(%rsp), %rax
	movq	%r13, %rdx
	movq	%rbx, %rbp
	movl	380(%rsp), %edi
	addl	%edi, 304(%rsp)
	addq	%rax, %r14
	movb	$-1, (%rbx,%rax)
	movq	368(%rsp), %rax
	addq	%rax, 312(%rsp)
	addq	%rax, 328(%rsp)
	addq	%rax, 320(%rsp)
	subl	$1, 360(%rsp)
	jne	.L1448
	movl	728(%rsp), %eax
	movl	272(%rsp), %r12d
	subl	$2, %eax
	addq	$1, %rax
	imulq	352(%rsp), %rax
	addq	%rax, 704(%rsp)
	jmp	.L1380
	.p2align 4,,10
.L1385:
	movl	300(%rsp), %edi
	testl	%edi, %edi
	je	.L1380
	movslq	216(%rsp), %r13
	movslq	%r12d, %rcx
	movq	%rbx, %r10
	movl	%r15d, 176(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	16(%rbx), %r14
	negl	%ecx
	movl	%ecx, 112(%rsp)
	movl	704(%rsp), %ecx
	movl	%edi, 80(%rsp)
	movq	%r13, %rax
	subq	%r13, %r10
	negl	%eax
	movslq	%eax, %rdx
	negl	%ecx
	leaq	16(%rdx), %rax
	movl	%ecx, 32(%rsp)
	movq	704(%rsp), %rcx
	movq	%rdx, %r15
	movq	%rax, 128(%rsp)
	movl	$1, %eax
	subl	%r13d, %eax
	cltq
	movq	%rax, 144(%rsp)
	movl	$2, %eax
	subl	%r13d, %eax
	cltq
	movq	%rax, 160(%rsp)
	.p2align 4,,10
.L1433:
	testl	%r12d, %r12d
	jle	.L1423
	cmpq	$0, 128(%rsp)
	leaq	(%rbx,%r15), %r9
	setle	%dl
	cmpq	%r9, %r14
	setbe	%al
	orl	%eax, %edx
	leaq	16(%rsi), %rax
	cmpq	%rax, %rbx
	setnb	%al
	cmpq	%r14, %rsi
	setnb	%r8b
	orl	%r8d, %eax
	andl	%eax, %edx
	cmpl	$17, %r12d
	seta	%al
	testb	%al, %dl
	je	.L1424
	leaq	16(%rcx), %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%r14, %rcx
	setnb	%al
	orb	%al, %dl
	je	.L1424
	movl	32(%rsp), %eax
	leal	-1(%r12), %r8d
	andl	$15, %eax
	leal	15(%rax), %edx
	cmpl	%edx, %r8d
	jb	.L1640
	testl	%eax, %eax
	je	.L1641
	movzbl	(%rsi), %edx
	movzbl	(%rbx,%r15), %r8d
	addl	%r8d, %edx
	sarl	%edx
	addb	(%rcx), %dl
	cmpl	$1, %eax
	movb	%dl, (%rbx)
	je	.L1642
	movq	144(%rsp), %rdi
	movzbl	1(%rsi), %r8d
	movzbl	(%rbx,%rdi), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	1(%rcx), %dl
	cmpl	$2, %eax
	movb	%dl, 1(%rbx)
	je	.L1643
	movq	160(%rsp), %rdi
	movzbl	2(%rsi), %r8d
	movzbl	(%rbx,%rdi), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	2(%rcx), %dl
	cmpl	$3, %eax
	movb	%dl, 2(%rbx)
	je	.L1644
	movl	216(%rsp), %edi
	movl	$3, %edx
	movzbl	3(%rsi), %r8d
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	3(%rcx), %dl
	cmpl	$4, %eax
	movb	%dl, 3(%rbx)
	je	.L1645
	movl	$4, %edx
	movzbl	4(%rsi), %r8d
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	4(%rcx), %dl
	cmpl	$5, %eax
	movb	%dl, 4(%rbx)
	je	.L1646
	movl	$5, %edx
	movzbl	5(%rsi), %r8d
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	5(%rcx), %dl
	cmpl	$6, %eax
	movb	%dl, 5(%rbx)
	je	.L1647
	movl	$6, %edx
	movzbl	6(%rsi), %r8d
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	6(%rcx), %dl
	cmpl	$7, %eax
	movb	%dl, 6(%rbx)
	je	.L1648
	movl	$7, %edx
	movzbl	7(%rsi), %r8d
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	7(%rcx), %dl
	cmpl	$8, %eax
	movb	%dl, 7(%rbx)
	je	.L1649
	movl	$8, %edx
	movzbl	8(%rsi), %r8d
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	8(%rcx), %dl
	cmpl	$9, %eax
	movb	%dl, 8(%rbx)
	je	.L1650
	movl	$9, %edx
	movzbl	9(%rsi), %r8d
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	9(%rcx), %dl
	cmpl	$10, %eax
	movb	%dl, 9(%rbx)
	je	.L1651
	movl	$10, %edx
	movzbl	10(%rsi), %r8d
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	10(%rcx), %dl
	cmpl	$11, %eax
	movb	%dl, 10(%rbx)
	je	.L1652
	movl	$11, %edx
	movzbl	11(%rsi), %r8d
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	11(%rcx), %dl
	cmpl	$12, %eax
	movb	%dl, 11(%rbx)
	je	.L1653
	movl	$12, %edx
	movzbl	12(%rsi), %r8d
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	12(%rcx), %dl
	cmpl	$13, %eax
	movb	%dl, 12(%rbx)
	je	.L1654
	movl	$13, %edx
	movzbl	13(%rsi), %r8d
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	13(%rcx), %dl
	cmpl	$14, %eax
	movb	%dl, 13(%rbx)
	je	.L1655
	movl	$14, %edx
	movzbl	14(%rsi), %r8d
	movl	$15, 96(%rsp)
	subl	%edi, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	14(%rcx), %dl
	movb	%dl, 14(%rbx)
	jmp	.L1426
	.p2align 4,,10
.L1384:
	movl	300(%rsp), %eax
	testl	%eax, %eax
	je	.L1380
	movslq	216(%rsp), %rdi
	movslq	%r12d, %r13
	movl	%eax, 32(%rsp)
	addq	$16, %rbx
	movl	704(%rsp), %r14d
	leal	-1(%r12), %eax
	movl	%r15d, 112(%rsp)
	movq	704(%rsp), %rcx
	movl	%eax, 80(%rsp)
	addq	$1, %rax
	movq	%rax, 96(%rsp)
	movq	%rdi, 48(%rsp)
	movl	%r13d, %edi
	negl	%edi
	negl	%r14d
	movl	%edi, 64(%rsp)
	.p2align 4,,10
.L1422:
	leaq	-16(%rbx), %r9
	testl	%r12d, %r12d
	jle	.L1412
	leaq	16(%rsi), %rax
	cmpq	%rax, %r9
	setnb	%dl
	cmpq	%rbx, %rsi
	setnb	%al
	orl	%eax, %edx
	leaq	16(%rcx), %rax
	cmpq	%rax, %r9
	setnb	%al
	cmpq	%rbx, %rcx
	setnb	%r8b
	orl	%r8d, %eax
	testb	%al, %dl
	je	.L1413
	cmpl	$19, %r12d
	jbe	.L1413
	movl	%r14d, %edx
	andl	$15, %edx
	leal	15(%rdx), %eax
	cmpl	%eax, 80(%rsp)
	jb	.L1624
	testl	%edx, %edx
	je	.L1625
	movzbl	(%rsi), %eax
	addb	(%rcx), %al
	cmpl	$1, %edx
	movb	%al, -16(%rbx)
	je	.L1626
	movzbl	1(%rsi), %eax
	addb	1(%rcx), %al
	cmpl	$2, %edx
	movb	%al, -15(%rbx)
	je	.L1627
	movzbl	2(%rsi), %eax
	addb	2(%rcx), %al
	cmpl	$3, %edx
	movb	%al, -14(%rbx)
	je	.L1628
	movzbl	3(%rsi), %eax
	addb	3(%rcx), %al
	cmpl	$4, %edx
	movb	%al, -13(%rbx)
	je	.L1629
	movzbl	4(%rsi), %eax
	addb	4(%rcx), %al
	cmpl	$5, %edx
	movb	%al, -12(%rbx)
	je	.L1630
	movzbl	5(%rsi), %eax
	addb	5(%rcx), %al
	cmpl	$6, %edx
	movb	%al, -11(%rbx)
	je	.L1631
	movzbl	6(%rsi), %eax
	addb	6(%rcx), %al
	cmpl	$7, %edx
	movb	%al, -10(%rbx)
	je	.L1632
	movzbl	7(%rsi), %eax
	addb	7(%rcx), %al
	cmpl	$8, %edx
	movb	%al, -9(%rbx)
	je	.L1633
	movzbl	8(%rsi), %eax
	addb	8(%rcx), %al
	cmpl	$9, %edx
	movb	%al, -8(%rbx)
	je	.L1634
	movzbl	9(%rsi), %eax
	addb	9(%rcx), %al
	cmpl	$10, %edx
	movb	%al, -7(%rbx)
	je	.L1635
	movzbl	10(%rsi), %eax
	addb	10(%rcx), %al
	cmpl	$11, %edx
	movb	%al, -6(%rbx)
	je	.L1636
	movzbl	11(%rsi), %eax
	addb	11(%rcx), %al
	cmpl	$12, %edx
	movb	%al, -5(%rbx)
	je	.L1637
	movzbl	12(%rsi), %eax
	addb	12(%rcx), %al
	cmpl	$13, %edx
	movb	%al, -4(%rbx)
	je	.L1638
	movzbl	13(%rsi), %eax
	addb	13(%rcx), %al
	cmpl	$14, %edx
	movb	%al, -3(%rbx)
	je	.L1639
	movzbl	14(%rsi), %eax
	addb	14(%rcx), %al
	movb	%al, -2(%rbx)
	movl	$15, %eax
	jmp	.L1415
	.p2align 4,,10
.L1388:
	movl	300(%rsp), %esi
	testl	%esi, %esi
	je	.L1380
	movslq	216(%rsp), %rdi
	movl	%esi, 64(%rsp)
	leaq	16(%rbx), %r8
	movslq	%r12d, %r14
	movq	704(%rsp), %rcx
	movl	%r15d, 160(%rsp)
	movq	%rdi, %rax
	movq	%rdi, 80(%rsp)
	subq	%rdi, %rbx
	movl	%r14d, %edi
	movl	%eax, %esi
	negl	%eax
	negl	%edi
	movslq	%eax, %r13
	movl	%edi, 96(%rsp)
	movl	704(%rsp), %edi
	leaq	-16(%r13), %rax
	movq	%rax, 48(%rsp)
	leal	-1(%r12), %eax
	movl	%eax, 112(%rsp)
	movl	$1, %eax
	subl	%esi, %eax
	negl	%edi
	cltq
	movl	%edi, %r15d
	movq	%rax, 128(%rsp)
	movl	$2, %eax
	subl	%esi, %eax
	cltq
	movq	%rax, 144(%rsp)
	.p2align 4,,10
.L1470:
	leaq	-16(%r8), %r10
	testl	%r12d, %r12d
	jle	.L1460
	movq	48(%rsp), %rax
	addq	%r8, %rax
	leaq	16(%r13), %rax
	setnc	%dl
	testq	%rax, %rax
	setle	%al
	orl	%eax, %edx
	leaq	16(%rcx), %rax
	cmpq	%rax, %r10
	setnb	%al
	cmpq	%r8, %rcx
	setnb	%r9b
	orl	%r9d, %eax
	testb	%al, %dl
	je	.L1461
	cmpl	$19, %r12d
	jbe	.L1461
	movl	%r15d, %edx
	andl	$15, %edx
	leal	15(%rdx), %eax
	cmpl	%eax, 112(%rsp)
	jb	.L1677
	testl	%edx, %edx
	je	.L1678
	movzbl	-16(%r8,%r13), %eax
	addb	(%rcx), %al
	cmpl	$1, %edx
	movb	%al, -16(%r8)
	je	.L1679
	movq	128(%rsp), %rsi
	movzbl	1(%rcx), %eax
	addb	-16(%r8,%rsi), %al
	cmpl	$2, %edx
	movb	%al, -15(%r8)
	je	.L1680
	movq	144(%rsp), %rsi
	movzbl	2(%rcx), %eax
	addb	-16(%r8,%rsi), %al
	cmpl	$3, %edx
	movb	%al, -14(%r8)
	movl	$3, %eax
	je	.L1463
	movl	216(%rsp), %edi
	movzbl	3(%rcx), %r9d
	subl	%edi, %eax
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$4, %edx
	movl	$4, %eax
	movb	%r9b, -13(%r8)
	je	.L1463
	subl	%edi, %eax
	movzbl	4(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$5, %edx
	movl	$5, %eax
	movb	%r9b, -12(%r8)
	je	.L1463
	subl	%edi, %eax
	movzbl	5(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$6, %edx
	movb	%r9b, -11(%r8)
	je	.L1684
	movl	$6, %eax
	movzbl	6(%rcx), %r9d
	subl	%edi, %eax
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$7, %edx
	movl	$7, %eax
	movb	%r9b, -10(%r8)
	je	.L1463
	subl	%edi, %eax
	movzbl	7(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$8, %edx
	movl	$8, %eax
	movb	%r9b, -9(%r8)
	je	.L1463
	subl	%edi, %eax
	movzbl	8(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$9, %edx
	movl	$9, %eax
	movb	%r9b, -8(%r8)
	je	.L1463
	subl	%edi, %eax
	movzbl	9(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$10, %edx
	movl	$10, %eax
	movb	%r9b, -7(%r8)
	je	.L1463
	subl	%edi, %eax
	movzbl	10(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$11, %edx
	movl	$11, %eax
	movb	%r9b, -6(%r8)
	je	.L1463
	subl	%edi, %eax
	movzbl	11(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$12, %edx
	movl	$12, %eax
	movb	%r9b, -5(%r8)
	je	.L1463
	subl	%edi, %eax
	movzbl	12(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$13, %edx
	movl	$13, %eax
	movb	%r9b, -4(%r8)
	je	.L1463
	subl	%edi, %eax
	movzbl	13(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$14, %edx
	movl	$14, %eax
	movb	%r9b, -3(%r8)
	je	.L1463
	subl	%edi, %eax
	movzbl	14(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	movl	$15, %eax
	movb	%r9b, -2(%r8)
	.p2align 4,,10
.L1463:
	movl	%r12d, %esi
	movl	%edx, %r11d
	xorl	%r9d, %r9d
	leaq	(%rcx,%r11), %rdi
	subl	%edx, %esi
	xorl	%edx, %edx
	movl	%esi, %ebp
	movl	%esi, 32(%rsp)
	leaq	0(%r13,%r11), %rsi
	shrl	$4, %ebp
	addq	%r10, %r11
	addq	%r10, %rsi
	.p2align 4,,10
.L1465:
	movdqu	(%rsi,%rdx), %xmm0
	paddb	(%rdi,%rdx), %xmm0
	addl	$1, %r9d
	movups	%xmm0, (%r11,%rdx)
	addq	$16, %rdx
	cmpl	%r9d, %ebp
	ja	.L1465
	movl	32(%rsp), %edi
	movl	%edi, %edx
	andl	$-16, %edx
	addl	%edx, %eax
	cmpl	%edx, %edi
	je	.L1460
.L1462:
	cltq
	.p2align 4,,10
.L1467:
	movzbl	(%rbx,%rax), %edx
	addb	(%rcx,%rax), %dl
	movb	%dl, (%r10,%rax)
	addq	$1, %rax
	cmpl	%eax, %r12d
	jg	.L1467
.L1460:
	movq	80(%rsp), %rax
	movb	$-1, -16(%r8,%r14)
	addq	%r14, %rcx
	addl	96(%rsp), %r15d
	addq	%rax, %r8
	addq	%rax, %rbx
	subl	$1, 64(%rsp)
	jne	.L1470
	jmp	.L1922
	.p2align 4,,10
.L1310:
	testl	%r14d, %r14d
	jle	.L1303
	movl	%r12d, %ecx
	negl	%ecx
	movslq	%ecx, %rdi
	leaq	16(%rdi), %rax
	leaq	16(%rbx), %rcx
	testq	%rax, %rax
	leaq	(%rbx,%rdi), %rsi
	setle	%dl
	cmpq	%rsi, %rcx
	setbe	%al
	orl	%eax, %edx
	movq	704(%rsp), %rax
	addq	$16, %rax
	cmpq	%rax, %rbx
	setnb	%al
	cmpq	%rcx, 704(%rsp)
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L1358
	cmpl	$18, %r14d
	jbe	.L1358
	movq	704(%rsp), %rcx
	leal	-1(%r14), %edx
	negq	%rcx
	andl	$15, %ecx
	leal	15(%rcx), %eax
	cmpl	%eax, %edx
	jb	.L1562
	testl	%ecx, %ecx
	je	.L1563
	movzbl	(%rsi), %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	(%rdx), %al
	cmpl	$1, %ecx
	movb	%al, (%rbx)
	je	.L1564
	movl	$1, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	1(%rdx), %al
	cmpl	$2, %ecx
	movb	%al, 1(%rbx)
	je	.L1565
	movl	$2, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	2(%rdx), %al
	cmpl	$3, %ecx
	movb	%al, 2(%rbx)
	je	.L1566
	movl	$3, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	3(%rdx), %al
	cmpl	$4, %ecx
	movb	%al, 3(%rbx)
	je	.L1567
	movl	$4, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	4(%rdx), %al
	cmpl	$5, %ecx
	movb	%al, 4(%rbx)
	je	.L1360
	movl	$5, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	5(%rdx), %al
	cmpl	$6, %ecx
	movb	%al, 5(%rbx)
	je	.L1568
	movl	$6, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	6(%rdx), %al
	cmpl	$7, %ecx
	movb	%al, 6(%rbx)
	je	.L1569
	movl	$7, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	7(%rdx), %al
	cmpl	$8, %ecx
	movb	%al, 7(%rbx)
	je	.L1570
	movl	$8, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	8(%rdx), %al
	cmpl	$9, %ecx
	movb	%al, 8(%rbx)
	je	.L1571
	movl	$9, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	9(%rdx), %al
	cmpl	$10, %ecx
	movb	%al, 9(%rbx)
	je	.L1572
	movl	$10, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	10(%rdx), %al
	cmpl	$11, %ecx
	movb	%al, 10(%rbx)
	je	.L1573
	movl	$11, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	11(%rdx), %al
	cmpl	$12, %ecx
	movb	%al, 11(%rbx)
	je	.L1574
	movl	$12, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	12(%rdx), %al
	cmpl	$13, %ecx
	movb	%al, 12(%rbx)
	je	.L1575
	movl	$13, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	13(%rdx), %al
	cmpl	$14, %ecx
	movb	%al, 13(%rbx)
	je	.L1576
	movl	$14, %eax
	movl	$15, %r15d
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	14(%rdx), %al
	movb	%al, 14(%rbx)
.L1360:
	movq	704(%rsp), %r9
	movl	%r14d, %r11d
	movl	%ecx, %r8d
	xorl	%eax, %eax
	subl	%ecx, %r11d
	xorl	%edx, %edx
	pxor	%xmm2, %xmm2
	leaq	(%rdi,%r8), %rcx
	movl	%r11d, %r10d
	shrl	$4, %r10d
	addq	%rbx, %rcx
	addq	%r8, %r9
	addq	%rbx, %r8
	.p2align 4,,10
.L1363:
	movdqu	(%rcx,%rax), %xmm1
	addl	$1, %edx
	movdqa	%xmm1, %xmm0
	punpckhbw	%xmm2, %xmm1
	psrlw	$1, %xmm1
	pand	.LC2(%rip), %xmm1
	punpcklbw	%xmm2, %xmm0
	psrlw	$1, %xmm0
	pand	.LC2(%rip), %xmm0
	packuswb	%xmm1, %xmm0
	paddb	(%r9,%rax), %xmm0
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpl	%edx, %r10d
	ja	.L1363
	movl	%r11d, %eax
	andl	$-16, %eax
	addl	%eax, %r15d
	cmpl	%eax, %r11d
	je	.L1303
.L1359:
	movq	704(%rsp), %rdx
	movslq	%r15d, %r15
	.p2align 4,,10
.L1365:
	movzbl	(%rsi,%r15), %eax
	sarl	%eax
	addb	(%rdx,%r15), %al
	movb	%al, (%rbx,%r15)
	addq	$1, %r15
	cmpl	%r15d, %r14d
	jg	.L1365
	jmp	.L1303
	.p2align 4,,10
.L1309:
	testl	%r14d, %r14d
	jle	.L1303
	leaq	16(%rbx), %rcx
	movl	%r12d, %edx
	negl	%edx
	movslq	%edx, %rax
	leaq	16(%rax), %r9
	movq	%rax, 32(%rsp)
	leaq	(%rbx,%rax), %r11
	leaq	(%rsi,%rax), %r15
	movq	%r11, 304(%rsp)
	leaq	(%rsi,%r9), %rax
	cmpq	%rax, %rbx
	setnb	%r8b
	cmpq	%r15, %rcx
	setbe	%al
	orl	%eax, %r8d
	testq	%r9, %r9
	setle	%dl
	cmpq	%r11, %rcx
	setbe	%al
	orl	%edx, %eax
	andl	%r8d, %eax
	cmpl	$16, %r14d
	seta	%dl
	andl	%edx, %eax
	leaq	16(%rsi), %rdx
	cmpq	%rdx, %rbx
	setnb	%dl
	cmpq	%rcx, %rsi
	setnb	%r8b
	orl	%r8d, %edx
	testb	%dl, %al
	je	.L1344
	movq	704(%rsp), %rax
	addq	$16, %rax
	cmpq	%rax, %rbx
	setnb	%al
	cmpq	%rcx, 704(%rsp)
	setnb	%dl
	orb	%dl, %al
	je	.L1344
	movq	704(%rsp), %rax
	leal	-1(%r14), %edx
	negq	%rax
	movl	%eax, %edi
	andl	$15, %edi
	leal	15(%rdi), %eax
	movl	%edi, 48(%rsp)
	cmpl	%eax, %edx
	jb	.L1557
	testl	%edi, %edi
	je	.L1558
	movl	%r14d, 64(%rsp)
	movq	704(%rsp), %r14
	leal	-1(%rdi), %ebp
	movl	$1, %edx
	movl	%r12d, 96(%rsp)
	addq	$2, %rbp
	movq	%r11, %r12
	.p2align 4,,10
.L1348:
	movzbl	-1(%rsi,%rdx), %r10d
	movzbl	-1(%r12,%rdx), %r9d
	movzbl	-1(%r15,%rdx), %r11d
	movzbl	-1(%r14,%rdx), %edi
	leal	(%r10,%r9), %eax
	subl	%r11d, %eax
	movl	%eax, %r8d
	subl	%r10d, %r8d
	movl	%r8d, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %r8d
	subl	%ecx, %r8d
	movl	%eax, %ecx
	subl	%r9d, %eax
	subl	%r11d, %ecx
	movl	%ecx, %r13d
	sarl	$31, %r13d
	xorl	%r13d, %ecx
	subl	%r13d, %ecx
	movl	%eax, %r13d
	sarl	$31, %r13d
	xorl	%r13d, %eax
	subl	%r13d, %eax
	cmpl	%ecx, %r8d
	movl	%ecx, %r13d
	cmovle	%r8d, %r13d
	cmpl	%r13d, %eax
	jle	.L1349
	cmpl	%ecx, %r8d
	cmovg	%r11d, %r10d
	movl	%r10d, %r9d
.L1349:
	addl	%edi, %r9d
	movl	%edx, %r10d
	movb	%r9b, -1(%rbx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rbp
	jne	.L1348
	movl	64(%rsp), %r14d
	movl	96(%rsp), %r12d
	movl	48(%rsp), %edi
.L1346:
	movq	32(%rsp), %rdx
	movl	%r14d, %r13d
	movl	%edi, %eax
	movq	704(%rsp), %r11
	leaq	(%rsi,%rax), %r8
	subl	%edi, %r13d
	movdqa	.LC2(%rip), %xmm5
	leaq	(%rbx,%rax), %rdi
	movl	%r13d, %ebp
	shrl	$4, %ebp
	addq	%rax, %rdx
	movaps	%xmm5, 272(%rsp)
	pxor	%xmm5, %xmm5
	leaq	(%rsi,%rdx), %rcx
	addq	%rax, %r11
	xorl	%eax, %eax
	leaq	(%rbx,%rdx), %r9
	xorl	%edx, %edx
	.p2align 4,,10
.L1351:
	movdqu	(%rcx,%rax), %xmm0
	pxor	%xmm7, %xmm7
	addl	$1, %edx
	movdqu	(%r8,%rax), %xmm6
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm7, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm14
	movdqu	(%r9,%rax), %xmm0
	punpcklbw	%xmm7, %xmm1
	movdqa	%xmm6, %xmm11
	movdqa	%xmm1, %xmm3
	movdqa	%xmm1, %xmm4
	punpckhbw	%xmm7, %xmm6
	punpcklwd	%xmm5, %xmm3
	punpcklwd	%xmm5, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm7, %xmm11
	punpckhbw	%xmm7, %xmm0
	punpckhwd	%xmm5, %xmm4
	punpcklbw	%xmm7, %xmm1
	movdqa	%xmm1, %xmm7
	movdqa	%xmm11, %xmm13
	movaps	%xmm3, 32(%rsp)
	punpcklwd	%xmm5, %xmm7
	movdqa	%xmm7, %xmm9
	punpcklwd	%xmm5, %xmm13
	movdqa	%xmm1, %xmm15
	paddd	%xmm13, %xmm9
	psubd	32(%rsp), %xmm9
	movdqa	%xmm7, %xmm1
	punpckhwd	%xmm5, %xmm15
	movdqa	%xmm0, %xmm10
	movaps	%xmm1, 112(%rsp)
	movdqa	%xmm15, %xmm8
	punpckhwd	%xmm5, %xmm11
	punpcklwd	%xmm5, %xmm10
	movdqa	%xmm10, %xmm3
	movdqa	%xmm10, %xmm7
	movdqa	%xmm9, %xmm10
	psubd	112(%rsp), %xmm10
	movaps	%xmm4, 48(%rsp)
	paddd	%xmm11, %xmm8
	movdqa	%xmm6, %xmm12
	psubd	48(%rsp), %xmm8
	punpckhwd	%xmm5, %xmm6
	punpckhwd	%xmm5, %xmm0
	punpcklwd	%xmm5, %xmm12
	movdqa	%xmm10, %xmm1
	paddd	%xmm12, %xmm7
	movdqa	%xmm0, %xmm4
	movaps	%xmm15, 128(%rsp)
	psrad	$31, %xmm1
	psubd	%xmm2, %xmm7
	punpckhwd	%xmm5, %xmm14
	movaps	%xmm3, 144(%rsp)
	pxor	%xmm1, %xmm10
	psubd	%xmm1, %xmm10
	movdqa	%xmm8, %xmm1
	paddd	%xmm6, %xmm0
	movaps	%xmm14, 64(%rsp)
	movdqa	%xmm7, %xmm15
	psubd	128(%rsp), %xmm1
	movdqa	%xmm2, %xmm14
	psubd	144(%rsp), %xmm15
	psubd	64(%rsp), %xmm0
	movdqa	%xmm9, %xmm3
	movaps	%xmm4, 160(%rsp)
	movdqa	%xmm1, %xmm2
	psubd	%xmm13, %xmm3
	movaps	%xmm10, 176(%rsp)
	psrad	$31, %xmm2
	movdqa	%xmm0, %xmm10
	psubd	32(%rsp), %xmm9
	movaps	%xmm14, 96(%rsp)
	pxor	%xmm2, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm15, %xmm2
	psubd	%xmm6, %xmm10
	psrad	$31, %xmm2
	movaps	%xmm1, 192(%rsp)
	pxor	%xmm2, %xmm15
	psubd	%xmm2, %xmm15
	movdqa	%xmm0, %xmm2
	psubd	160(%rsp), %xmm2
	psubd	64(%rsp), %xmm0
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm2
	pxor	%xmm2, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	psrad	$31, %xmm2
	movaps	%xmm1, 240(%rsp)
	pxor	%xmm2, %xmm3
	psubd	%xmm2, %xmm3
	movdqa	%xmm8, %xmm2
	psubd	48(%rsp), %xmm8
	psubd	%xmm11, %xmm2
	movdqa	%xmm2, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm2
	psubd	%xmm4, %xmm2
	movdqa	%xmm7, %xmm4
	psubd	96(%rsp), %xmm7
	psubd	%xmm12, %xmm4
	movdqa	%xmm4, %xmm1
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm1
	psubd	%xmm4, %xmm1
	movdqa	%xmm10, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm10
	psubd	%xmm4, %xmm10
	movdqa	%xmm9, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm9
	psubd	%xmm4, %xmm9
	movdqa	%xmm8, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm8
	psubd	%xmm4, %xmm8
	movdqa	%xmm7, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm7
	psubd	%xmm4, %xmm7
	movdqa	%xmm0, %xmm4
	psrad	$31, %xmm4
	pxor	%xmm4, %xmm0
	psubd	%xmm4, %xmm0
	movdqa	%xmm3, %xmm4
	pcmpgtd	%xmm9, %xmm4
	movdqa	%xmm4, %xmm14
	pand	%xmm4, %xmm9
	pandn	%xmm3, %xmm14
	por	%xmm14, %xmm9
	movdqa	%xmm2, %xmm14
	pcmpgtd	%xmm8, %xmm14
	movdqa	%xmm14, %xmm3
	pand	%xmm14, %xmm8
	pandn	%xmm2, %xmm14
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	por	%xmm14, %xmm8
	movdqa	%xmm2, %xmm14
	pand	%xmm2, %xmm7
	pandn	%xmm1, %xmm14
	por	%xmm14, %xmm7
	movdqa	%xmm10, %xmm14
	pcmpgtd	%xmm0, %xmm14
	movdqa	%xmm14, %xmm1
	pand	%xmm14, %xmm0
	pandn	%xmm10, %xmm14
	movdqa	176(%rsp), %xmm10
	por	%xmm14, %xmm0
	pcmpgtd	%xmm9, %xmm10
	movdqa	192(%rsp), %xmm9
	pcmpgtd	%xmm8, %xmm9
	movdqa	%xmm15, %xmm8
	pxor	%xmm15, %xmm15
	pcmpgtd	%xmm7, %xmm8
	movdqa	%xmm10, %xmm14
	movdqa	240(%rsp), %xmm7
	pand	%xmm13, %xmm14
	pcmpgtd	%xmm0, %xmm7
	movdqa	%xmm4, %xmm0
	pcmpeqd	%xmm15, %xmm4
	pand	%xmm10, %xmm0
	pand	%xmm10, %xmm4
	pandn	112(%rsp), %xmm10
	por	%xmm14, %xmm10
	movdqa	32(%rsp), %xmm14
	pand	%xmm4, %xmm13
	pandn	%xmm10, %xmm4
	por	%xmm4, %xmm13
	movdqa	%xmm9, %xmm10
	pand	%xmm0, %xmm14
	pandn	%xmm13, %xmm0
	pxor	%xmm13, %xmm13
	por	%xmm14, %xmm0
	movdqa	%xmm3, %xmm14
	pcmpeqd	%xmm13, %xmm3
	pand	%xmm11, %xmm10
	pand	%xmm9, %xmm14
	movdqa	%xmm14, %xmm4
	pand	%xmm9, %xmm3
	pand	%xmm3, %xmm11
	pandn	128(%rsp), %xmm9
	por	%xmm10, %xmm9
	pandn	%xmm9, %xmm3
	por	%xmm3, %xmm11
	movdqa	48(%rsp), %xmm3
	pandn	%xmm11, %xmm4
	pand	%xmm14, %xmm3
	por	%xmm3, %xmm4
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm4, %xmm3
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm4
	movdqa	%xmm2, %xmm3
	pcmpeqd	%xmm13, %xmm2
	punpcklwd	%xmm4, %xmm0
	movdqa	%xmm8, %xmm4
	pand	%xmm8, %xmm3
	pand	%xmm12, %xmm4
	pand	%xmm8, %xmm2
	pand	%xmm2, %xmm12
	pandn	144(%rsp), %xmm8
	por	%xmm4, %xmm8
	movdqa	96(%rsp), %xmm4
	pandn	%xmm8, %xmm2
	por	%xmm2, %xmm12
	pand	%xmm3, %xmm4
	pandn	%xmm12, %xmm3
	movdqa	%xmm3, %xmm2
	movdqa	%xmm1, %xmm3
	pcmpeqd	%xmm13, %xmm1
	por	%xmm4, %xmm2
	movdqa	%xmm7, %xmm4
	pand	%xmm7, %xmm3
	pand	%xmm6, %xmm4
	pand	%xmm7, %xmm1
	pand	%xmm1, %xmm6
	pandn	160(%rsp), %xmm7
	por	%xmm4, %xmm7
	movdqa	64(%rsp), %xmm4
	pandn	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	por	%xmm6, %xmm1
	pand	%xmm3, %xmm4
	pandn	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	por	%xmm4, %xmm1
	punpckhwd	%xmm1, %xmm3
	punpcklwd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm7, %xmm2
	punpcklwd	%xmm3, %xmm1
	movdqa	272(%rsp), %xmm7
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm2, %xmm1
	pand	%xmm7, %xmm0
	pand	%xmm7, %xmm1
	packuswb	%xmm1, %xmm0
	paddb	(%r11,%rax), %xmm0
	movups	%xmm0, (%rdi,%rax)
	addq	$16, %rax
	cmpl	%edx, %ebp
	ja	.L1351
	movl	%r13d, %eax
	andl	$-16, %eax
	leal	(%rax,%r10), %edx
	cmpl	%eax, %r13d
	je	.L1303
.L1345:
	movl	%r12d, 32(%rsp)
	movq	304(%rsp), %rbp
	movslq	%edx, %rdx
	movq	704(%rsp), %r12
	.p2align 4,,10
.L1354:
	movzbl	(%rsi,%rdx), %r10d
	movzbl	0(%rbp,%rdx), %r9d
	movzbl	(%r15,%rdx), %r11d
	movzbl	(%r12,%rdx), %edi
	leal	(%r10,%r9), %eax
	subl	%r11d, %eax
	movl	%eax, %r8d
	subl	%r10d, %r8d
	movl	%r8d, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %r8d
	subl	%ecx, %r8d
	movl	%eax, %ecx
	subl	%r9d, %eax
	subl	%r11d, %ecx
	movl	%ecx, %r13d
	sarl	$31, %r13d
	xorl	%r13d, %ecx
	subl	%r13d, %ecx
	movl	%eax, %r13d
	sarl	$31, %r13d
	xorl	%r13d, %eax
	subl	%r13d, %eax
	cmpl	%ecx, %r8d
	movl	%ecx, %r13d
	cmovle	%r8d, %r13d
	cmpl	%r13d, %eax
	jle	.L1355
	cmpl	%ecx, %r8d
	cmovg	%r11d, %r10d
	movl	%r10d, %r9d
.L1355:
	addl	%edi, %r9d
	movb	%r9b, (%rbx,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %r14d
	jg	.L1354
.L1920:
	movl	32(%rsp), %r12d
	jmp	.L1303
	.p2align 4,,10
.L1306:
	testl	%r14d, %r14d
	jle	.L1303
	movq	704(%rsp), %rax
	movl	%r12d, %ecx
	negl	%ecx
	movslq	%ecx, %rdi
	leaq	16(%rbx), %rcx
	leaq	(%rbx,%rdi), %rsi
	addq	$16, %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%rcx, 704(%rsp)
	setnb	%al
	orl	%eax, %edx
	leaq	16(%rdi), %rax
	testq	%rax, %rax
	setle	%al
	cmpq	%rcx, %rsi
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L1313
	cmpl	$19, %r14d
	jbe	.L1313
	movq	704(%rsp), %rcx
	leal	-1(%r14), %eax
	negq	%rcx
	andl	$15, %ecx
	leal	15(%rcx), %edx
	cmpl	%eax, %edx
	ja	.L1512
	testl	%ecx, %ecx
	je	.L1513
	movq	704(%rsp), %rdx
	movzbl	(%rsi), %eax
	addb	(%rdx), %al
	cmpl	$1, %ecx
	movb	%al, (%rbx)
	je	.L1315
	movl	$1, %eax
	movzbl	1(%rdx), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$2, %ecx
	movb	%dl, 1(%rbx)
	je	.L1514
	movq	704(%rsp), %rdx
	movl	$2, %eax
	subl	%r12d, %eax
	cltq
	movzbl	2(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$3, %ecx
	movb	%dl, 2(%rbx)
	je	.L1515
	movq	704(%rsp), %rdx
	movl	$3, %eax
	subl	%r12d, %eax
	cltq
	movzbl	3(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$4, %ecx
	movb	%dl, 3(%rbx)
	je	.L1516
	movq	704(%rsp), %rdx
	movl	$4, %eax
	subl	%r12d, %eax
	cltq
	movzbl	4(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$5, %ecx
	movb	%dl, 4(%rbx)
	je	.L1517
	movq	704(%rsp), %rdx
	movl	$5, %eax
	subl	%r12d, %eax
	cltq
	movzbl	5(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$6, %ecx
	movb	%dl, 5(%rbx)
	je	.L1518
	movq	704(%rsp), %rdx
	movl	$6, %eax
	subl	%r12d, %eax
	cltq
	movzbl	6(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$7, %ecx
	movb	%dl, 6(%rbx)
	je	.L1519
	movq	704(%rsp), %rdx
	movl	$7, %eax
	subl	%r12d, %eax
	cltq
	movzbl	7(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$8, %ecx
	movb	%dl, 7(%rbx)
	je	.L1520
	movq	704(%rsp), %rdx
	movl	$8, %eax
	subl	%r12d, %eax
	cltq
	movzbl	8(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$9, %ecx
	movb	%dl, 8(%rbx)
	je	.L1521
	movq	704(%rsp), %rdx
	movl	$9, %eax
	subl	%r12d, %eax
	cltq
	movzbl	9(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$10, %ecx
	movb	%dl, 9(%rbx)
	je	.L1522
	movq	704(%rsp), %rdx
	movl	$10, %eax
	subl	%r12d, %eax
	cltq
	movzbl	10(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$11, %ecx
	movb	%dl, 10(%rbx)
	je	.L1523
	movq	704(%rsp), %rdx
	movl	$11, %eax
	subl	%r12d, %eax
	cltq
	movzbl	11(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$12, %ecx
	movb	%dl, 11(%rbx)
	je	.L1524
	movq	704(%rsp), %rdx
	movl	$12, %eax
	subl	%r12d, %eax
	cltq
	movzbl	12(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$13, %ecx
	movb	%dl, 12(%rbx)
	je	.L1525
	movq	704(%rsp), %rdx
	movl	$13, %eax
	subl	%r12d, %eax
	cltq
	movzbl	13(%rdx), %edx
	addb	(%rbx,%rax), %dl
	cmpl	$14, %ecx
	movb	%dl, 13(%rbx)
	je	.L1526
	movq	704(%rsp), %rdx
	movl	$14, %eax
	movl	$15, %r15d
	subl	%r12d, %eax
	cltq
	movzbl	14(%rdx), %edx
	addb	(%rbx,%rax), %dl
	movb	%dl, 14(%rbx)
.L1315:
	movq	704(%rsp), %r9
	movl	%r14d, %r11d
	movl	%ecx, %r8d
	xorl	%eax, %eax
	subl	%ecx, %r11d
	xorl	%edx, %edx
	leaq	(%r8,%rdi), %rcx
	movl	%r11d, %r10d
	shrl	$4, %r10d
	addq	%rbx, %rcx
	addq	%r8, %r9
	addq	%rbx, %r8
	.p2align 4,,10
.L1318:
	movdqu	(%rcx,%rax), %xmm0
	paddb	(%r9,%rax), %xmm0
	addl	$1, %edx
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpl	%edx, %r10d
	ja	.L1318
	movl	%r11d, %eax
	andl	$-16, %eax
	addl	%eax, %r15d
	cmpl	%eax, %r11d
	je	.L1303
.L1314:
	movq	704(%rsp), %rdx
	movslq	%r15d, %r15
	.p2align 4,,10
.L1321:
	movzbl	(%rdx,%r15), %eax
	addb	(%rsi,%r15), %al
	movb	%al, (%rbx,%r15)
	addq	$1, %r15
	cmpl	%r15d, %r14d
	jg	.L1321
	jmp	.L1303
	.p2align 4,,10
.L1311:
	testl	%r14d, %r14d
	jle	.L1303
	movl	%r12d, %ecx
	negl	%ecx
	movslq	%ecx, %rdi
	leaq	16(%rdi), %rax
	leaq	16(%rbx), %rcx
	testq	%rax, %rax
	leaq	(%rbx,%rdi), %r8
	setle	%dl
	cmpq	%r8, %rcx
	setbe	%al
	orl	%eax, %edx
	movq	704(%rsp), %rax
	addq	$16, %rax
	cmpq	%rax, %rbx
	setnb	%al
	cmpq	%rcx, 704(%rsp)
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L1368
	cmpl	$19, %r14d
	jbe	.L1368
	movq	704(%rsp), %rcx
	leal	-1(%r14), %edx
	negq	%rcx
	andl	$15, %ecx
	leal	15(%rcx), %eax
	cmpl	%eax, %edx
	jb	.L1577
	testl	%ecx, %ecx
	je	.L1578
	movq	704(%rsp), %rsi
	movzbl	(%r8), %eax
	addb	(%rsi), %al
	cmpl	$1, %ecx
	movb	%al, (%rbx)
	je	.L1579
	movl	$1, %eax
	movzbl	1(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$2, %ecx
	movb	%dl, 1(%rbx)
	je	.L1580
	movl	$2, %eax
	movzbl	2(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$3, %ecx
	movb	%dl, 2(%rbx)
	je	.L1581
	movl	$3, %eax
	movzbl	3(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$4, %ecx
	movb	%dl, 3(%rbx)
	je	.L1582
	movl	$4, %eax
	movzbl	4(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$5, %ecx
	movb	%dl, 4(%rbx)
	je	.L1583
	movl	$5, %eax
	movzbl	5(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$6, %ecx
	movb	%dl, 5(%rbx)
	je	.L1370
	movl	$6, %eax
	movzbl	6(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$7, %ecx
	movb	%dl, 6(%rbx)
	je	.L1584
	movl	$7, %eax
	movzbl	7(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$8, %ecx
	movb	%dl, 7(%rbx)
	je	.L1585
	movl	$8, %eax
	movzbl	8(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$9, %ecx
	movb	%dl, 8(%rbx)
	je	.L1586
	movl	$9, %eax
	movzbl	9(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$10, %ecx
	movb	%dl, 9(%rbx)
	je	.L1587
	movl	$10, %eax
	movzbl	10(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$11, %ecx
	movb	%dl, 10(%rbx)
	je	.L1588
	movl	$11, %eax
	movzbl	11(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$12, %ecx
	movb	%dl, 11(%rbx)
	je	.L1589
	movl	$12, %eax
	movzbl	12(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$13, %ecx
	movb	%dl, 12(%rbx)
	je	.L1590
	movl	$13, %eax
	movzbl	13(%rsi), %edx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	cmpl	$14, %ecx
	movb	%dl, 13(%rbx)
	je	.L1591
	movl	$14, %eax
	movzbl	14(%rsi), %edx
	movl	$15, %r15d
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %dl
	movb	%dl, 14(%rbx)
.L1370:
	movq	704(%rsp), %r10
	movl	%r14d, %esi
	movl	%ecx, %r9d
	xorl	%eax, %eax
	subl	%ecx, %esi
	xorl	%edx, %edx
	leaq	(%rdi,%r9), %rcx
	movl	%esi, %r11d
	shrl	$4, %r11d
	addq	%rbx, %rcx
	addq	%r9, %r10
	addq	%rbx, %r9
	.p2align 4,,10
.L1373:
	movdqu	(%rcx,%rax), %xmm0
	paddb	(%r10,%rax), %xmm0
	addl	$1, %edx
	movups	%xmm0, (%r9,%rax)
	addq	$16, %rax
	cmpl	%edx, %r11d
	ja	.L1373
	movl	%esi, %eax
	andl	$-16, %eax
	addl	%eax, %r15d
	cmpl	%eax, %esi
	je	.L1303
.L1369:
	movq	704(%rsp), %rdx
	movslq	%r15d, %r15
	.p2align 4,,10
.L1375:
	movzbl	(%r8,%r15), %eax
	addb	(%rdx,%r15), %al
	movb	%al, (%rbx,%r15)
	addq	$1, %r15
	cmpl	%r15d, %r14d
	jg	.L1375
	jmp	.L1303
	.p2align 4,,10
.L1383:
	movl	300(%rsp), %edi
	testl	%edi, %edi
	je	.L1380
	movslq	216(%rsp), %rsi
	movl	%edi, 64(%rsp)
	leaq	16(%rbx), %r8
	movslq	%r12d, %r14
	movq	704(%rsp), %rcx
	movl	%r15d, 160(%rsp)
	movq	%rsi, %rax
	movq	%rsi, 80(%rsp)
	subq	%rsi, %rbx
	movl	%r14d, %esi
	movl	%eax, %edi
	negl	%eax
	negl	%esi
	movslq	%eax, %r13
	movl	%esi, 96(%rsp)
	movl	704(%rsp), %esi
	leaq	-16(%r13), %rax
	movq	%rax, 48(%rsp)
	leal	-1(%r12), %eax
	movl	%eax, 112(%rsp)
	movl	$1, %eax
	subl	%edi, %eax
	negl	%esi
	cltq
	movl	%esi, %r15d
	movq	%rax, 128(%rsp)
	movl	$2, %eax
	subl	%edi, %eax
	cltq
	movq	%rax, 144(%rsp)
	.p2align 4,,10
.L1411:
	leaq	-16(%r8), %r10
	testl	%r12d, %r12d
	jle	.L1401
	movq	48(%rsp), %rax
	addq	%r8, %rax
	leaq	16(%r13), %rax
	setnc	%dl
	testq	%rax, %rax
	setle	%al
	orl	%eax, %edx
	leaq	16(%rcx), %rax
	cmpq	%rax, %r10
	setnb	%al
	cmpq	%r8, %rcx
	setnb	%r9b
	orl	%r9d, %eax
	testb	%al, %dl
	je	.L1402
	cmpl	$19, %r12d
	jbe	.L1402
	movl	%r15d, %edx
	andl	$15, %edx
	leal	15(%rdx), %eax
	cmpl	%eax, 112(%rsp)
	jb	.L1608
	testl	%edx, %edx
	je	.L1609
	movzbl	-16(%r8,%r13), %eax
	addb	(%rcx), %al
	cmpl	$1, %edx
	movb	%al, -16(%r8)
	je	.L1610
	movq	128(%rsp), %rdi
	movzbl	1(%rcx), %eax
	addb	-16(%r8,%rdi), %al
	cmpl	$2, %edx
	movb	%al, -15(%r8)
	je	.L1611
	movq	144(%rsp), %rsi
	movzbl	2(%rcx), %eax
	addb	-16(%r8,%rsi), %al
	cmpl	$3, %edx
	movb	%al, -14(%r8)
	movl	$3, %eax
	je	.L1404
	movl	216(%rsp), %esi
	movzbl	3(%rcx), %r9d
	subl	%esi, %eax
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$4, %edx
	movl	$4, %eax
	movb	%r9b, -13(%r8)
	je	.L1404
	subl	%esi, %eax
	movzbl	4(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$5, %edx
	movl	$5, %eax
	movb	%r9b, -12(%r8)
	je	.L1404
	subl	%esi, %eax
	movzbl	5(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$6, %edx
	movl	$6, %eax
	movb	%r9b, -11(%r8)
	je	.L1404
	subl	%esi, %eax
	movzbl	6(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$7, %edx
	movl	$7, %eax
	movb	%r9b, -10(%r8)
	je	.L1404
	subl	%esi, %eax
	movzbl	7(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$8, %edx
	movl	$8, %eax
	movb	%r9b, -9(%r8)
	je	.L1404
	subl	%esi, %eax
	movzbl	8(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$9, %edx
	movl	$9, %eax
	movb	%r9b, -8(%r8)
	je	.L1404
	subl	%esi, %eax
	movzbl	9(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$10, %edx
	movl	$10, %eax
	movb	%r9b, -7(%r8)
	je	.L1404
	subl	%esi, %eax
	movzbl	10(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$11, %edx
	movl	$11, %eax
	movb	%r9b, -6(%r8)
	je	.L1404
	subl	%esi, %eax
	movzbl	11(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$12, %edx
	movl	$12, %eax
	movb	%r9b, -5(%r8)
	je	.L1404
	subl	%esi, %eax
	movzbl	12(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$13, %edx
	movl	$13, %eax
	movb	%r9b, -4(%r8)
	je	.L1404
	subl	%esi, %eax
	movzbl	13(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	cmpl	$14, %edx
	movl	$14, %eax
	movb	%r9b, -3(%r8)
	je	.L1404
	subl	%esi, %eax
	movzbl	14(%rcx), %r9d
	cltq
	addb	-16(%r8,%rax), %r9b
	movl	$15, %eax
	movb	%r9b, -2(%r8)
	.p2align 4,,10
.L1404:
	movl	%r12d, %edi
	movl	%edx, %r11d
	xorl	%r9d, %r9d
	leaq	0(%r13,%r11), %rsi
	subl	%edx, %edi
	xorl	%edx, %edx
	movl	%edi, %ebp
	movl	%edi, 32(%rsp)
	addq	%r10, %rsi
	leaq	(%rcx,%r11), %rdi
	shrl	$4, %ebp
	addq	%r10, %r11
	.p2align 4,,10
.L1406:
	movdqu	(%rsi,%rdx), %xmm0
	paddb	(%rdi,%rdx), %xmm0
	addl	$1, %r9d
	movups	%xmm0, (%r11,%rdx)
	addq	$16, %rdx
	cmpl	%r9d, %ebp
	ja	.L1406
	movl	32(%rsp), %edi
	movl	%edi, %edx
	andl	$-16, %edx
	addl	%edx, %eax
	cmpl	%edx, %edi
	je	.L1401
.L1403:
	cltq
	.p2align 4,,10
.L1408:
	movzbl	(%rbx,%rax), %edx
	addb	(%rcx,%rax), %dl
	movb	%dl, (%r10,%rax)
	addq	$1, %rax
	cmpl	%eax, %r12d
	jg	.L1408
.L1401:
	movq	80(%rsp), %rax
	movb	$-1, -16(%r8,%r14)
	addq	%r14, %rcx
	addl	96(%rsp), %r15d
	addq	%rax, %r8
	addq	%rax, %rbx
	subl	$1, 64(%rsp)
	jne	.L1411
	jmp	.L1922
	.p2align 4,,10
.L1381:
	movl	300(%rsp), %esi
	testl	%esi, %esi
	je	.L1380
	movslq	216(%rsp), %rax
	movslq	%r12d, %rbp
	movl	%r15d, 64(%rsp)
	movl	704(%rsp), %edi
	movl	%ebp, %edx
	movq	704(%rsp), %rcx
	negl	%edx
	movl	%edx, %r15d
	movq	%rax, 32(%rsp)
	leal	-1(%r12), %eax
	movl	%eax, 48(%rsp)
	leaq	1(%rax), %r13
	negl	%edi
	.p2align 4,,10
.L1400:
	testl	%r12d, %r12d
	jle	.L1389
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	leaq	16(%rcx), %rax
	setnb	%dl
	cmpq	%rax, %rbx
	setnb	%al
	orb	%al, %dl
	je	.L1390
	cmpl	$22, %r12d
	jbe	.L1390
	movl	%edi, %edx
	andl	$15, %edx
	leal	15(%rdx), %eax
	cmpl	%eax, 48(%rsp)
	jb	.L1592
	testl	%edx, %edx
	je	.L1593
	movzbl	(%rcx), %eax
	cmpl	$1, %edx
	movb	%al, (%rbx)
	je	.L1594
	movzbl	1(%rcx), %eax
	cmpl	$2, %edx
	movb	%al, 1(%rbx)
	je	.L1595
	movzbl	2(%rcx), %eax
	cmpl	$3, %edx
	movb	%al, 2(%rbx)
	je	.L1596
	movzbl	3(%rcx), %eax
	cmpl	$4, %edx
	movb	%al, 3(%rbx)
	je	.L1597
	movzbl	4(%rcx), %eax
	cmpl	$5, %edx
	movb	%al, 4(%rbx)
	je	.L1598
	movzbl	5(%rcx), %eax
	cmpl	$6, %edx
	movb	%al, 5(%rbx)
	je	.L1599
	movzbl	6(%rcx), %eax
	cmpl	$7, %edx
	movb	%al, 6(%rbx)
	je	.L1600
	movzbl	7(%rcx), %eax
	cmpl	$8, %edx
	movb	%al, 7(%rbx)
	je	.L1601
	movzbl	8(%rcx), %eax
	cmpl	$9, %edx
	movb	%al, 8(%rbx)
	je	.L1602
	movzbl	9(%rcx), %eax
	cmpl	$10, %edx
	movb	%al, 9(%rbx)
	je	.L1603
	movzbl	10(%rcx), %eax
	cmpl	$11, %edx
	movb	%al, 10(%rbx)
	je	.L1604
	movzbl	11(%rcx), %eax
	cmpl	$12, %edx
	movb	%al, 11(%rbx)
	je	.L1605
	movzbl	12(%rcx), %eax
	cmpl	$13, %edx
	movb	%al, 12(%rbx)
	je	.L1606
	movzbl	13(%rcx), %eax
	cmpl	$14, %edx
	movb	%al, 13(%rbx)
	je	.L1607
	movzbl	14(%rcx), %eax
	movb	%al, 14(%rbx)
	movl	$15, %eax
	jmp	.L1392
	.p2align 4,,10
.L1308:
	testl	%r14d, %r14d
	jle	.L1303
	movl	%r12d, %ecx
	negl	%ecx
	movslq	%ecx, %rbp
	leaq	16(%rbp), %rax
	leaq	16(%rbx), %rcx
	testq	%rax, %rax
	leaq	(%rbx,%rbp), %rdi
	setle	%dl
	cmpq	%rdi, %rcx
	setbe	%al
	orl	%eax, %edx
	leaq	16(%rsi), %rax
	cmpq	%rax, %rbx
	setnb	%al
	cmpq	%rcx, %rsi
	setnb	%r8b
	orl	%r8d, %eax
	andl	%eax, %edx
	cmpl	$17, %r14d
	seta	%al
	testb	%al, %dl
	je	.L1334
	movq	704(%rsp), %rax
	addq	$16, %rax
	cmpq	%rax, %rbx
	setnb	%al
	cmpq	%rcx, 704(%rsp)
	setnb	%dl
	orb	%dl, %al
	je	.L1334
	movq	704(%rsp), %rcx
	leal	-1(%r14), %edx
	negq	%rcx
	andl	$15, %ecx
	leal	15(%rcx), %eax
	cmpl	%eax, %edx
	jb	.L1542
	testl	%ecx, %ecx
	je	.L1543
	movzbl	(%rdi), %edx
	movzbl	(%rsi), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	(%rdx), %al
	cmpl	$1, %ecx
	movb	%al, (%rbx)
	je	.L1544
	movl	$1, %eax
	movzbl	1(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	1(%rdx), %al
	cmpl	$2, %ecx
	movb	%al, 1(%rbx)
	je	.L1545
	movl	$2, %eax
	movzbl	2(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	2(%rdx), %al
	cmpl	$3, %ecx
	movb	%al, 2(%rbx)
	je	.L1336
	movl	$3, %eax
	movzbl	3(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	3(%rdx), %al
	cmpl	$4, %ecx
	movb	%al, 3(%rbx)
	je	.L1546
	movl	$4, %eax
	movzbl	4(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	4(%rdx), %al
	cmpl	$5, %ecx
	movb	%al, 4(%rbx)
	je	.L1547
	movl	$5, %eax
	movzbl	5(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	5(%rdx), %al
	cmpl	$6, %ecx
	movb	%al, 5(%rbx)
	je	.L1548
	movl	$6, %eax
	movzbl	6(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	6(%rdx), %al
	cmpl	$7, %ecx
	movb	%al, 6(%rbx)
	je	.L1549
	movl	$7, %eax
	movzbl	7(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	7(%rdx), %al
	cmpl	$8, %ecx
	movb	%al, 7(%rbx)
	je	.L1550
	movl	$8, %eax
	movzbl	8(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	8(%rdx), %al
	cmpl	$9, %ecx
	movb	%al, 8(%rbx)
	je	.L1551
	movl	$9, %eax
	movzbl	9(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	9(%rdx), %al
	cmpl	$10, %ecx
	movb	%al, 9(%rbx)
	je	.L1552
	movl	$10, %eax
	movzbl	10(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	10(%rdx), %al
	cmpl	$11, %ecx
	movb	%al, 10(%rbx)
	je	.L1553
	movl	$11, %eax
	movzbl	11(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	11(%rdx), %al
	cmpl	$12, %ecx
	movb	%al, 11(%rbx)
	je	.L1554
	movl	$12, %eax
	movzbl	12(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	12(%rdx), %al
	cmpl	$13, %ecx
	movb	%al, 12(%rbx)
	je	.L1555
	movl	$13, %eax
	movzbl	13(%rsi), %edx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	13(%rdx), %al
	cmpl	$14, %ecx
	movb	%al, 13(%rbx)
	je	.L1556
	movl	$14, %eax
	movzbl	14(%rsi), %edx
	movl	$15, %r15d
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	addl	%edx, %eax
	movq	704(%rsp), %rdx
	sarl	%eax
	addb	14(%rdx), %al
	movb	%al, 14(%rbx)
.L1336:
	movq	704(%rsp), %r10
	movl	%r14d, %r13d
	movl	%ecx, %r8d
	xorl	%eax, %eax
	subl	%ecx, %r13d
	movdqa	.LC2(%rip), %xmm3
	xorl	%edx, %edx
	pxor	%xmm6, %xmm6
	leaq	0(%rbp,%r8), %rcx
	movl	%r13d, %r11d
	pxor	%xmm5, %xmm5
	leaq	(%rsi,%r8), %r9
	shrl	$4, %r11d
	addq	%rbx, %rcx
	addq	%r8, %r10
	addq	%rbx, %r8
	.p2align 4,,10
.L1339:
	movdqu	(%r9,%rax), %xmm7
	addl	$1, %edx
	movdqu	(%rcx,%rax), %xmm2
	movdqa	%xmm7, %xmm1
	punpckhbw	%xmm6, %xmm7
	movdqa	%xmm2, %xmm4
	punpcklbw	%xmm6, %xmm1
	movdqa	%xmm1, %xmm8
	punpckhbw	%xmm6, %xmm2
	punpcklbw	%xmm6, %xmm4
	movdqa	%xmm4, %xmm0
	punpcklwd	%xmm5, %xmm8
	punpcklwd	%xmm5, %xmm0
	paddd	%xmm8, %xmm0
	movdqa	%xmm1, %xmm8
	movdqa	%xmm4, %xmm1
	psrad	$1, %xmm0
	punpckhwd	%xmm5, %xmm8
	punpckhwd	%xmm5, %xmm1
	paddd	%xmm8, %xmm1
	psrad	$1, %xmm1
	movdqa	%xmm0, %xmm4
	punpckhwd	%xmm1, %xmm4
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm4, %xmm1
	movdqa	%xmm7, %xmm4
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	punpcklwd	%xmm5, %xmm4
	punpcklwd	%xmm5, %xmm1
	paddd	%xmm4, %xmm1
	punpckhwd	%xmm5, %xmm7
	psrad	$1, %xmm1
	punpckhwd	%xmm5, %xmm2
	paddd	%xmm7, %xmm2
	pand	%xmm3, %xmm0
	psrad	$1, %xmm2
	movdqa	%xmm1, %xmm4
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm2
	punpcklwd	%xmm2, %xmm1
	pand	%xmm3, %xmm1
	packuswb	%xmm1, %xmm0
	paddb	(%r10,%rax), %xmm0
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpl	%edx, %r11d
	ja	.L1339
	movl	%r13d, %eax
	andl	$-16, %eax
	leal	(%rax,%r15), %ecx
	cmpl	%eax, %r13d
	je	.L1303
.L1335:
	movq	704(%rsp), %r8
	movslq	%ecx, %rcx
	.p2align 4,,10
.L1341:
	movzbl	(%rsi,%rcx), %eax
	movzbl	(%rdi,%rcx), %edx
	addl	%edx, %eax
	sarl	%eax
	addb	(%r8,%rcx), %al
	movb	%al, (%rbx,%rcx)
	addq	$1, %rcx
	cmpl	%ecx, %r14d
	jg	.L1341
	jmp	.L1303
	.p2align 4,,10
.L1307:
	testl	%r14d, %r14d
	jle	.L1303
	movq	704(%rsp), %rax
	leaq	16(%rbx), %rcx
	addq	$16, %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%rcx, 704(%rsp)
	setnb	%al
	orl	%eax, %edx
	leaq	16(%rsi), %rax
	cmpq	%rax, %rbx
	setnb	%al
	cmpq	%rcx, %rsi
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L1324
	cmpl	$19, %r14d
	jbe	.L1324
	movq	704(%rsp), %r8
	leal	-1(%r14), %eax
	negq	%r8
	andl	$15, %r8d
	leal	15(%r8), %edx
	cmpl	%eax, %edx
	ja	.L1527
	testl	%r8d, %r8d
	je	.L1528
	movq	704(%rsp), %rdi
	movzbl	(%rsi), %eax
	addb	(%rdi), %al
	cmpl	$1, %r8d
	movb	%al, (%rbx)
	je	.L1529
	movzbl	1(%rsi), %eax
	addb	1(%rdi), %al
	cmpl	$2, %r8d
	movb	%al, 1(%rbx)
	je	.L1326
	movzbl	2(%rsi), %eax
	addb	2(%rdi), %al
	cmpl	$3, %r8d
	movb	%al, 2(%rbx)
	je	.L1530
	movzbl	3(%rsi), %eax
	addb	3(%rdi), %al
	cmpl	$4, %r8d
	movb	%al, 3(%rbx)
	je	.L1531
	movzbl	4(%rsi), %eax
	addb	4(%rdi), %al
	cmpl	$5, %r8d
	movb	%al, 4(%rbx)
	je	.L1532
	movzbl	5(%rsi), %eax
	addb	5(%rdi), %al
	cmpl	$6, %r8d
	movb	%al, 5(%rbx)
	je	.L1533
	movzbl	6(%rsi), %eax
	addb	6(%rdi), %al
	cmpl	$7, %r8d
	movb	%al, 6(%rbx)
	je	.L1534
	movzbl	7(%rsi), %eax
	addb	7(%rdi), %al
	cmpl	$8, %r8d
	movb	%al, 7(%rbx)
	je	.L1535
	movzbl	8(%rsi), %eax
	addb	8(%rdi), %al
	cmpl	$9, %r8d
	movb	%al, 8(%rbx)
	je	.L1536
	movzbl	9(%rsi), %eax
	addb	9(%rdi), %al
	cmpl	$10, %r8d
	movb	%al, 9(%rbx)
	je	.L1537
	movzbl	10(%rsi), %eax
	addb	10(%rdi), %al
	cmpl	$11, %r8d
	movb	%al, 10(%rbx)
	je	.L1538
	movzbl	11(%rsi), %eax
	addb	11(%rdi), %al
	cmpl	$12, %r8d
	movb	%al, 11(%rbx)
	je	.L1539
	movzbl	12(%rsi), %eax
	addb	12(%rdi), %al
	cmpl	$13, %r8d
	movb	%al, 12(%rbx)
	je	.L1540
	movzbl	13(%rsi), %eax
	addb	13(%rdi), %al
	cmpl	$14, %r8d
	movb	%al, 13(%rbx)
	je	.L1541
	movzbl	14(%rdi), %eax
	movl	$15, %r15d
	addb	14(%rsi), %al
	movb	%al, 14(%rbx)
.L1326:
	movq	704(%rsp), %r9
	movl	%r14d, %r11d
	movl	%r8d, %ecx
	xorl	%eax, %eax
	subl	%r8d, %r11d
	xorl	%edx, %edx
	leaq	(%rsi,%rcx), %r8
	movl	%r11d, %r10d
	shrl	$4, %r10d
	addq	%rcx, %r9
	addq	%rbx, %rcx
	.p2align 4,,10
.L1329:
	movdqu	(%r8,%rax), %xmm0
	paddb	(%r9,%rax), %xmm0
	addl	$1, %edx
	movups	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpl	%edx, %r10d
	ja	.L1329
	movl	%r11d, %eax
	andl	$-16, %eax
	addl	%eax, %r15d
	cmpl	%r11d, %eax
	je	.L1303
.L1325:
	movq	704(%rsp), %rdx
	movslq	%r15d, %r15
	.p2align 4,,10
.L1331:
	movzbl	(%rdx,%r15), %eax
	addb	(%rsi,%r15), %al
	movb	%al, (%rbx,%r15)
	addq	$1, %r15
	cmpl	%r15d, %r14d
	jg	.L1331
	jmp	.L1303
.L1642:
	movl	$1, 96(%rsp)
	.p2align 4,,10
.L1426:
	movl	%r12d, %edi
	movl	%eax, %r8d
	xorl	%edx, %edx
	pxor	%xmm6, %xmm6
	leaq	(%r15,%r8), %r9
	subl	%eax, %edi
	xorl	%eax, %eax
	pxor	%xmm5, %xmm5
	movl	%edi, 64(%rsp)
	leaq	(%rsi,%r8), %r11
	movl	%edi, %ebp
	addq	%rbx, %r9
	leaq	(%rcx,%r8), %rdi
	shrl	$4, %ebp
	addq	%rbx, %r8
	.p2align 4,,10
.L1428:
	movdqu	(%r9,%rax), %xmm2
	addl	$1, %edx
	movdqu	(%r11,%rax), %xmm3
	movdqa	%xmm2, %xmm4
	movdqa	%xmm2, %xmm7
	movdqa	%xmm3, %xmm1
	punpcklbw	%xmm6, %xmm4
	movdqa	%xmm4, %xmm2
	punpckhwd	%xmm5, %xmm4
	punpcklbw	%xmm6, %xmm1
	movdqa	%xmm1, %xmm0
	punpcklwd	%xmm5, %xmm2
	punpckhwd	%xmm5, %xmm1
	punpcklwd	%xmm5, %xmm0
	paddd	%xmm2, %xmm0
	paddd	%xmm4, %xmm1
	punpckhbw	%xmm6, %xmm3
	psrad	$1, %xmm0
	punpckhbw	%xmm6, %xmm7
	psrad	$1, %xmm1
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm3, %xmm1
	punpcklwd	%xmm5, %xmm2
	punpcklwd	%xmm5, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psrad	$1, %xmm1
	punpckhwd	%xmm5, %xmm3
	punpckhwd	%xmm5, %xmm2
	paddd	%xmm3, %xmm2
	psrad	$1, %xmm2
	movdqa	%xmm1, %xmm3
	pand	.LC2(%rip), %xmm0
	punpckhwd	%xmm2, %xmm3
	punpcklwd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm2, %xmm1
	pand	.LC2(%rip), %xmm1
	packuswb	%xmm1, %xmm0
	paddb	(%rdi,%rax), %xmm0
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpl	%edx, %ebp
	ja	.L1428
	movl	64(%rsp), %edi
	movl	96(%rsp), %r8d
	movl	%edi, %eax
	andl	$-16, %eax
	addl	%eax, %r8d
	cmpl	%eax, %edi
	je	.L1423
.L1425:
	movslq	%r8d, %r8
	.p2align 4,,10
.L1430:
	movzbl	(%rsi,%r8), %eax
	movzbl	(%r10,%r8), %edx
	addl	%edx, %eax
	sarl	%eax
	addb	(%rcx,%r8), %al
	movb	%al, (%rbx,%r8)
	addq	$1, %r8
	cmpl	%r8d, %r12d
	jg	.L1430
.L1423:
	movq	48(%rsp), %rax
	addq	%r13, %rsi
	addq	%r13, %r14
	addq	%r13, %r10
	movl	112(%rsp), %edi
	addl	%edi, 32(%rsp)
	addq	%rax, %rcx
	movb	$-1, (%rbx,%rax)
	addq	%r13, %rbx
	subl	$1, 80(%rsp)
	jne	.L1433
	movl	728(%rsp), %eax
	subl	$2, %eax
	addq	$1, %rax
	imulq	48(%rsp), %rax
	addq	%rax, 704(%rsp)
	jmp	.L1380
	.p2align 4,,10
.L1413:
	movq	96(%rsp), %r8
	xorl	%eax, %eax
	.p2align 4,,10
.L1421:
	movzbl	(%rsi,%rax), %edx
	addb	(%rcx,%rax), %dl
	movb	%dl, (%r9,%rax)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L1421
	.p2align 4,,10
.L1412:
	movq	48(%rsp), %rax
	movb	$-1, -16(%rbx,%r13)
	addq	%r13, %rcx
	addl	64(%rsp), %r14d
	addq	%rax, %rsi
	addq	%rax, %rbx
	subl	$1, 32(%rsp)
	jne	.L1422
	movl	728(%rsp), %eax
	subl	$2, %eax
	addq	$1, %rax
	imulq	%r13, %rax
	addq	%rax, 704(%rsp)
	jmp	.L1380
.L1473:
	cmpl	$16, 744(%rsp)
	je	.L1937
.L1278:
	movl	$1, %eax
	jmp	.L1270
	.p2align 4,,10
.L1936:
	cmpl	$7, 744(%rsp)
	jg	.L1473
	movl	376(%rsp), %ebx
	movl	232(%rsp), %eax
	movl	344(%rsp), %r12d
	leal	-8(%rbx), %ecx
	movl	%ecx, 400(%rsp)
	subq	%rax, %r12
	movl	%ecx, %eax
	shrl	$3, %eax
	leal	1(%rax), %edi
	cmpl	$15, %edi
	movq	%rdi, %rsi
	movl	%edi, 424(%rsp)
	seta	392(%rsp)
	movq	%rdi, 288(%rsp)
	salq	$3, %rdi
	movq	%rdi, 264(%rsp)
	movl	%esi, %edi
	andl	$-16, %esi
	movl	%esi, %edx
	shrl	$4, %edi
	movl	%esi, 380(%rsp)
	negl	%edx
	movl	%edi, 384(%rsp)
	movq	%rsi, 368(%rsp)
	leal	(%rbx,%rdx,8), %edi
	salq	$3, %rsi
	movl	%eax, %edx
	negl	%eax
	movq	%rsi, 360(%rsp)
	leal	(%rcx,%rax,8), %eax
	movl	%edi, 444(%rsp)
	leaq	1(%rdx), %rsi
	movl	%eax, 348(%rsp)
	leal	-4(%rbx), %ecx
	movq	%rsi, 176(%rsp)
	leaq	0(,%rsi,8), %rax
	movl	%ecx, 304(%rsp)
	movq	%rax, 336(%rsp)
	movl	%ecx, %eax
	shrl	$2, %eax
	leal	1(%rax), %edi
	cmpl	$15, %edi
	movq	%rdi, %rsi
	movl	%edi, 440(%rsp)
	seta	272(%rsp)
	movq	%rdi, 216(%rsp)
	salq	$2, %rdi
	movq	%rdi, 192(%rsp)
	movl	%esi, %edi
	andl	$-16, %esi
	movl	%esi, %edx
	shrl	$4, %edi
	movl	%esi, 432(%rsp)
	negl	%edx
	movl	%edi, 436(%rsp)
	movq	%rsi, 416(%rsp)
	leal	(%rbx,%rdx,4), %edi
	salq	$2, %rsi
	movl	%eax, %edx
	negl	%eax
	movq	%rsi, 408(%rsp)
	leal	(%rcx,%rax,4), %eax
	movl	%edi, 428(%rsp)
	leaq	1(%rdx), %rsi
	movl	%eax, 240(%rsp)
	movq	%rsi, 112(%rsp)
	leaq	0(,%rsi,4), %rax
	leal	-2(%rbx), %esi
	movq	%rax, 232(%rsp)
	movl	%esi, %eax
	movl	%esi, 256(%rsp)
	shrl	%eax
	leal	1(%rax), %edi
	movl	%eax, %r13d
	cmpl	$15, %edi
	movq	%rdi, %r15
	movq	%rdi, 144(%rsp)
	seta	228(%rsp)
	negl	%eax
	addq	$1, %r13
	leal	(%rsi,%rax,2), %eax
	addq	%rdi, %rdi
	movl	%r15d, %r14d
	movq	%rdi, 128(%rsp)
	movl	%r15d, %edi
	shrl	$4, %r14d
	xorl	%ebp, %ebp
	movl	%eax, 96(%rsp)
	leaq	(%r13,%r13), %rax
	andl	$-16, %edi
	movdqa	.LC2(%rip), %xmm6
	movl	%edi, %edx
	movq	%r13, 32(%rsp)
	movq	696(%rsp), %r13
	movq	%rax, 160(%rsp)
	movl	728(%rsp), %eax
	negl	%edx
	movdqa	%xmm6, %xmm7
	leal	(%rbx,%rdx,2), %ebx
	movl	%edi, 344(%rsp)
	movdqa	.LC51(%rip), %xmm15
	movdqa	%xmm6, %xmm11
	movl	%ebx, 328(%rsp)
	movl	%edi, %ebx
	movl	296(%rsp), %esi
	xorl	%edi, %edi
	movq	%rbx, 320(%rsp)
	addq	%rbx, %rbx
	addl	$1073741823, %eax
	movq	%rbx, 312(%rsp)
	movl	744(%rsp), %ebx
	sall	$2, %eax
	movl	%r14d, 296(%rsp)
	cltq
	movl	%r15d, 352(%rsp)
	movq	%rax, 48(%rsp)
	movl	728(%rsp), %eax
	leal	-3(%rax,%rax,2), %eax
	cltq
	movq	%rax, 64(%rsp)
	movl	728(%rsp), %eax
	addl	$2147483647, %eax
	addl	%eax, %eax
	cltq
	movq	%rax, 80(%rsp)
	.p2align 4,,10
.L1508:
	movq	0(%r13), %r8
	movl	%edi, %edx
	movl	$1, %ecx
	movl	752(%rsp), %r10d
	leaq	(%rdx,%r12), %rax
	leaq	(%r8,%rdx), %r9
	addq	%rax, %r8
	testl	%r10d, %r10d
	jne	.L1474
	leaq	_ZL23stbi__depth_scale_table(%rip), %r10
	movslq	%ebx, %rcx
	movzbl	(%r10,%rcx), %ecx
.L1474:
	cmpl	$4, %ebx
	je	.L1938
	cmpl	$2, %ebx
	je	.L1939
	cmpl	$1, %ebx
	je	.L1940
.L1484:
	cmpl	%esi, 720(%rsp)
	je	.L1503
	addq	0(%r13), %rdx
	cmpl	$1, %esi
	movq	%rdx, %r14
	je	.L1941
	cmpl	$3, %esi
	je	.L1506
	leaq	.LC3(%rip), %rdx
	movl	$4466, %r8d
	leaq	.LC52(%rip), %rcx
	call	_assert
.L1506:
	movl	300(%rsp), %ecx
	testl	%ecx, %ecx
	js	.L1503
	movq	48(%rsp), %rax
	movq	64(%rsp), %rdx
	addq	%r14, %rax
	addq	%r14, %rdx
	.p2align 4,,10
.L1507:
	movb	$-1, 3(%rax)
	movzbl	2(%rdx), %r8d
	subl	$1, %ecx
	subq	$4, %rax
	subq	$3, %rdx
	movb	%r8b, 6(%rax)
	movzbl	4(%rdx), %r8d
	movb	%r8b, 5(%rax)
	movzbl	3(%rdx), %r8d
	movb	%r8b, 4(%rax)
	cmpl	$-1, %ecx
	jne	.L1507
.L1503:
	addl	$1, %ebp
	addl	260(%rsp), %edi
	cmpl	%ebp, 212(%rsp)
	jne	.L1508
	jmp	.L1278
	.p2align 4,,10
.L1435:
	movq	400(%rsp), %r12
	xorl	%r11d, %r11d
	.p2align 4,,10
.L1447:
	movzbl	0(%r13,%r11), %esi
	movzbl	0(%rbp,%r11), %r9d
	movzbl	(%rdx,%r11), %edi
	movzbl	(%r14,%r11), %r10d
	leal	(%rsi,%r9), %eax
	subl	%edi, %eax
	movl	%eax, %r8d
	subl	%esi, %r8d
	movl	%r8d, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %r8d
	subl	%ecx, %r8d
	movl	%eax, %ecx
	subl	%r9d, %eax
	subl	%edi, %ecx
	movl	%ecx, %r15d
	sarl	$31, %r15d
	xorl	%r15d, %ecx
	subl	%r15d, %ecx
	movl	%eax, %r15d
	sarl	$31, %r15d
	xorl	%r15d, %eax
	subl	%r15d, %eax
	cmpl	%ecx, %r8d
	movl	%ecx, %r15d
	cmovle	%r8d, %r15d
	cmpl	%r15d, %eax
	jle	.L1446
	cmpl	%ecx, %r8d
	cmovg	%edi, %esi
	movl	%esi, %r9d
.L1446:
	addl	%r10d, %r9d
	movb	%r9b, (%rbx,%r11)
	addq	$1, %r11
	cmpq	%r11, %r12
	jne	.L1447
	jmp	.L1434
	.p2align 4,,10
.L1450:
	movq	48(%rsp), %rsi
	leal	-1(%r12), %r9d
	xorl	%eax, %eax
	addq	$1, %r9
	leaq	(%rsi,%r8), %r11
	.p2align 4,,10
.L1458:
	movzbl	(%r11,%rax), %edx
	sarl	%edx
	addb	(%rcx,%rax), %dl
	movb	%dl, (%r10,%rax)
	addq	$1, %rax
	cmpq	%rax, %r9
	jne	.L1458
	jmp	.L1449
	.p2align 4,,10
.L1424:
	leal	-1(%r12), %r11d
	xorl	%r8d, %r8d
	addq	$1, %r11
	.p2align 4,,10
.L1432:
	movzbl	(%r9,%r8), %eax
	movzbl	(%rsi,%r8), %edx
	addl	%edx, %eax
	sarl	%eax
	addb	(%rcx,%r8), %al
	movb	%al, (%rbx,%r8)
	addq	$1, %r8
	cmpq	%r8, %r11
	jne	.L1432
	jmp	.L1423
	.p2align 4,,10
.L1461:
	movl	112(%rsp), %r9d
	xorl	%eax, %eax
	movq	48(%rsp), %rsi
	addq	$1, %r9
	leaq	(%rsi,%r8), %r11
	.p2align 4,,10
.L1469:
	movzbl	(%rcx,%rax), %edx
	addb	(%r11,%rax), %dl
	movb	%dl, (%r10,%rax)
	addq	$1, %rax
	cmpq	%r9, %rax
	jne	.L1469
	jmp	.L1460
	.p2align 4,,10
.L1402:
	movl	112(%rsp), %r9d
	xorl	%eax, %eax
	movq	48(%rsp), %rsi
	addq	$1, %r9
	leaq	(%rsi,%r8), %r11
	.p2align 4,,10
.L1410:
	movzbl	(%rcx,%rax), %edx
	addb	(%r11,%rax), %dl
	movb	%dl, (%r10,%rax)
	addq	$1, %rax
	cmpq	%rax, %r9
	jne	.L1410
	jmp	.L1401
.L1941:
	movl	300(%rsp), %eax
	testl	%eax, %eax
	js	.L1503
	movslq	%eax, %rdx
	movq	80(%rsp), %rax
	addq	%r14, %rax
	.p2align 4,,10
.L1505:
	movb	$-1, 1(%rax)
	movzbl	(%r14,%rdx), %ecx
	subq	$1, %rdx
	subq	$2, %rax
	movb	%cl, 2(%rax)
	testl	%edx, %edx
	jns	.L1505
	jmp	.L1503
.L1938:
	cmpl	$1, 376(%rsp)
	jle	.L1694
	movq	144(%rsp), %r14
	leaq	(%r14,%r12), %r10
	movq	128(%rsp), %r14
	addq	%rdx, %r10
	cmpq	%r10, %rdx
	setge	%r10b
	leaq	(%rdx,%r14), %r11
	cmpq	%r11, %rax
	setge	%al
	orb	%al, %r10b
	je	.L1477
	cmpb	$0, 228(%rsp)
	je	.L1477
	cmpl	$29, 256(%rsp)
	jbe	.L1695
	movl	296(%rsp), %r11d
	movd	%ecx, %xmm2
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	punpcklbw	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm2
	pshufd	$0, %xmm2, %xmm2
	movdqa	%xmm2, %xmm4
	punpcklbw	%xmm2, %xmm4
	pxor	%xmm3, %xmm3
	punpckhbw	%xmm2, %xmm2
	.p2align 4,,10
.L1479:
	movdqu	(%r8,%rax), %xmm1
	addl	$1, %r10d
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm5
	pand	.LC49(%rip), %xmm1
	punpcklbw	%xmm3, %xmm0
	punpckhbw	%xmm3, %xmm5
	psrlw	$4, %xmm0
	psrlw	$4, %xmm5
	pand	%xmm11, %xmm0
	pand	%xmm11, %xmm5
	packuswb	%xmm5, %xmm0
	movdqa	%xmm0, %xmm5
	punpcklbw	%xmm0, %xmm5
	punpckhbw	%xmm0, %xmm0
	pmullw	%xmm4, %xmm5
	pmullw	%xmm2, %xmm0
	pand	%xmm11, %xmm5
	pand	%xmm11, %xmm0
	packuswb	%xmm0, %xmm5
	movdqa	%xmm1, %xmm0
	punpcklbw	%xmm1, %xmm1
	pmullw	%xmm4, %xmm1
	punpckhbw	%xmm0, %xmm0
	pmullw	%xmm2, %xmm0
	pand	%xmm11, %xmm1
	movdqa	%xmm1, %xmm14
	movdqa	%xmm5, %xmm1
	pand	%xmm11, %xmm0
	packuswb	%xmm0, %xmm14
	punpcklbw	%xmm14, %xmm1
	punpckhbw	%xmm14, %xmm5
	movups	%xmm1, (%r9,%rax,2)
	movups	%xmm5, 16(%r9,%rax,2)
	addq	$16, %rax
	cmpl	%r11d, %r10d
	jb	.L1479
	movq	320(%rsp), %rax
	movl	352(%rsp), %r14d
	cmpl	%r14d, 344(%rsp)
	movl	328(%rsp), %r15d
	leaq	(%r8,%rax), %r11
	movq	312(%rsp), %rax
	leaq	(%r9,%rax), %r10
	je	.L1923
.L1478:
	movzbl	(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, (%r10)
	movzbl	(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 1(%r10)
	leal	-2(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	1(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 2(%r10)
	movzbl	1(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 3(%r10)
	leal	-4(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	2(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 4(%r10)
	movzbl	2(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 5(%r10)
	leal	-6(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	3(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 6(%r10)
	movzbl	3(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 7(%r10)
	leal	-8(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	4(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 8(%r10)
	movzbl	4(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 9(%r10)
	leal	-10(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	5(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 10(%r10)
	movzbl	5(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 11(%r10)
	leal	-12(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	6(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 12(%r10)
	movzbl	6(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 13(%r10)
	leal	-14(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	7(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 14(%r10)
	movzbl	7(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 15(%r10)
	leal	-16(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	8(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 16(%r10)
	movzbl	8(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 17(%r10)
	leal	-18(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	9(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 18(%r10)
	movzbl	9(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 19(%r10)
	leal	-20(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	10(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 20(%r10)
	movzbl	10(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 21(%r10)
	leal	-22(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	11(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 22(%r10)
	movzbl	11(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 23(%r10)
	leal	-24(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	12(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 24(%r10)
	movzbl	12(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 25(%r10)
	leal	-26(%r15), %eax
	cmpl	$1, %eax
	jle	.L1923
	movzbl	13(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 26(%r10)
	movzbl	13(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	cmpl	$29, %r15d
	movb	%al, 27(%r10)
	jle	.L1923
	movzbl	14(%r11), %r14d
	sarl	$4, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, 28(%r10)
	movzbl	14(%r11), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 29(%r10)
.L1923:
	movq	32(%rsp), %rax
	leaq	(%r8,%rax), %r14
.L1481:
	addq	160(%rsp), %r9
	movq	%r14, %r8
	movl	96(%rsp), %eax
.L1476:
	cmpl	$1, %eax
	jne	.L1484
	movzbl	(%r8), %r8d
	movl	%ecx, %eax
	sarl	$4, %r8d
	imull	%r8d, %eax
	movb	%al, (%r9)
	jmp	.L1484
.L1939:
	cmpl	$3, 376(%rsp)
	jle	.L1696
	movq	216(%rsp), %r14
	leaq	(%r14,%r12), %r10
	movq	192(%rsp), %r14
	addq	%rdx, %r10
	cmpq	%r10, %rdx
	setge	%r10b
	leaq	(%rdx,%r14), %r11
	cmpq	%r11, %rax
	setge	%al
	orb	%al, %r10b
	je	.L1487
	cmpb	$0, 272(%rsp)
	je	.L1487
	cmpl	$59, 304(%rsp)
	jbe	.L1697
	movl	436(%rsp), %r11d
	movd	%ecx, %xmm4
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	punpcklbw	%xmm4, %xmm4
	punpcklwd	%xmm4, %xmm4
	pshufd	$0, %xmm4, %xmm4
	movdqa	%xmm4, %xmm5
	punpcklbw	%xmm4, %xmm5
	pxor	%xmm8, %xmm8
	punpckhbw	%xmm4, %xmm4
	.p2align 4,,10
.L1489:
	movdqu	(%r8,%rax), %xmm1
	addl	$1, %r10d
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm10
	pand	.LC50(%rip), %xmm1
	punpcklbw	%xmm8, %xmm0
	punpckhbw	%xmm8, %xmm10
	movdqa	%xmm0, %xmm3
	movdqa	%xmm10, %xmm2
	psrlw	$6, %xmm3
	movdqa	%xmm0, %xmm9
	psrlw	$6, %xmm2
	pand	%xmm7, %xmm3
	pand	%xmm7, %xmm2
	packuswb	%xmm2, %xmm3
	movdqa	%xmm3, %xmm2
	psrlw	$4, %xmm9
	punpcklbw	%xmm3, %xmm2
	punpckhbw	%xmm3, %xmm3
	pmullw	%xmm5, %xmm2
	pand	%xmm7, %xmm9
	pmullw	%xmm4, %xmm3
	psrlw	$2, %xmm0
	pand	%xmm7, %xmm2
	pand	%xmm7, %xmm0
	pand	%xmm7, %xmm3
	packuswb	%xmm3, %xmm2
	movdqa	%xmm10, %xmm3
	psrlw	$2, %xmm10
	psrlw	$4, %xmm3
	pand	%xmm7, %xmm10
	packuswb	%xmm10, %xmm0
	pand	.LC50(%rip), %xmm0
	pand	%xmm7, %xmm3
	packuswb	%xmm3, %xmm9
	pand	.LC50(%rip), %xmm9
	movdqa	%xmm9, %xmm3
	punpcklbw	%xmm9, %xmm3
	punpckhbw	%xmm9, %xmm9
	pmullw	%xmm5, %xmm3
	pmullw	%xmm4, %xmm9
	pand	%xmm7, %xmm3
	pand	%xmm7, %xmm9
	packuswb	%xmm9, %xmm3
	movdqa	%xmm0, %xmm9
	punpcklbw	%xmm0, %xmm9
	punpckhbw	%xmm0, %xmm0
	pmullw	%xmm5, %xmm9
	pmullw	%xmm4, %xmm0
	pand	%xmm7, %xmm9
	pand	%xmm7, %xmm0
	packuswb	%xmm0, %xmm9
	movdqa	%xmm1, %xmm0
	punpcklbw	%xmm1, %xmm0
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm5, %xmm0
	pmullw	%xmm4, %xmm1
	pand	%xmm7, %xmm0
	pand	%xmm7, %xmm1
	packuswb	%xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	punpckhbw	%xmm9, %xmm2
	punpcklbw	%xmm9, %xmm1
	movdqa	%xmm3, %xmm9
	punpckhbw	%xmm0, %xmm3
	punpcklbw	%xmm0, %xmm9
	movdqa	%xmm1, %xmm0
	punpckhbw	%xmm9, %xmm1
	movups	%xmm1, 16(%r9,%rax,4)
	punpcklbw	%xmm9, %xmm0
	movups	%xmm0, (%r9,%rax,4)
	movdqa	%xmm2, %xmm0
	punpckhbw	%xmm3, %xmm2
	punpcklbw	%xmm3, %xmm0
	movups	%xmm2, 48(%r9,%rax,4)
	movups	%xmm0, 32(%r9,%rax,4)
	addq	$16, %rax
	cmpl	%r11d, %r10d
	jb	.L1489
	movq	416(%rsp), %rax
	movl	440(%rsp), %r14d
	cmpl	%r14d, 432(%rsp)
	movl	428(%rsp), %r15d
	leaq	(%r8,%rax), %r10
	movq	408(%rsp), %rax
	leaq	(%r9,%rax), %r11
	je	.L1924
	.p2align 4,,10
.L1491:
	movzbl	(%r10), %r14d
	subl	$4, %r15d
	addq	$4, %r11
	addq	$1, %r10
	sarl	$6, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, -4(%r11)
	movzbl	-1(%r10), %eax
	sarl	$4, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	movb	%al, -3(%r11)
	movzbl	-1(%r10), %eax
	sarl	$2, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	movb	%al, -2(%r11)
	movzbl	-1(%r10), %eax
	andl	$3, %eax
	imull	%ecx, %eax
	cmpl	$3, %r15d
	movb	%al, -1(%r11)
	jg	.L1491
.L1924:
	movq	112(%rsp), %rax
	leaq	(%r8,%rax), %r11
.L1492:
	movq	%r11, %r8
	addq	232(%rsp), %r9
	movl	240(%rsp), %r11d
.L1486:
	testl	%r11d, %r11d
	jle	.L1484
	movzbl	(%r8), %r10d
	sarl	$6, %r10d
	movl	%r10d, %eax
	imull	%ecx, %eax
	cmpl	$1, %r11d
	movb	%al, (%r9)
	je	.L1484
	movzbl	(%r8), %eax
	sarl	$4, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	cmpl	$3, %r11d
	movb	%al, 1(%r9)
	jne	.L1484
	movzbl	(%r8), %eax
	sarl	$2, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	movb	%al, 2(%r9)
	jmp	.L1484
.L1940:
	cmpl	$7, 376(%rsp)
	jle	.L1698
	movq	288(%rsp), %r14
	leaq	(%r14,%r12), %r10
	movq	264(%rsp), %r14
	addq	%rdx, %r10
	cmpq	%r10, %rdx
	setge	%r10b
	leaq	(%rdx,%r14), %r11
	cmpq	%r11, %rax
	setge	%al
	orb	%al, %r10b
	je	.L1496
	cmpb	$0, 392(%rsp)
	je	.L1496
	cmpl	$119, 400(%rsp)
	jbe	.L1699
	movl	384(%rsp), %r14d
	movd	%ecx, %xmm10
	movq	%r9, %rax
	xorl	%r11d, %r11d
	punpcklbw	%xmm10, %xmm10
	xorl	%r10d, %r10d
	punpcklwd	%xmm10, %xmm10
	pshufd	$0, %xmm10, %xmm10
	movdqa	%xmm10, %xmm14
	punpcklbw	%xmm10, %xmm14
	punpckhbw	%xmm10, %xmm10
	.p2align 4,,10
.L1498:
	movdqu	(%r8,%r11), %xmm3
	pxor	%xmm5, %xmm5
	addl	$1, %r10d
	subq	$-128, %rax
	addq	$16, %r11
	movdqa	%xmm3, %xmm0
	movdqa	%xmm3, %xmm12
	pand	%xmm15, %xmm3
	punpcklbw	%xmm5, %xmm0
	punpckhbw	%xmm5, %xmm12
	movdqa	%xmm0, %xmm2
	movdqa	%xmm12, %xmm1
	psrlw	$7, %xmm2
	movdqa	%xmm0, %xmm4
	movdqa	%xmm12, %xmm5
	psrlw	$7, %xmm1
	pand	%xmm6, %xmm2
	movdqa	%xmm0, %xmm8
	movdqa	%xmm12, %xmm9
	pand	%xmm6, %xmm1
	packuswb	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	psrlw	$6, %xmm4
	punpcklbw	%xmm2, %xmm1
	punpckhbw	%xmm2, %xmm2
	pmullw	%xmm14, %xmm1
	pand	%xmm6, %xmm4
	pmullw	%xmm10, %xmm2
	movdqa	%xmm0, %xmm13
	psrlw	$5, %xmm5
	pand	%xmm6, %xmm1
	pand	%xmm6, %xmm5
	psrlw	$4, %xmm8
	pand	%xmm6, %xmm2
	packuswb	%xmm2, %xmm1
	movdqa	%xmm12, %xmm2
	pand	%xmm6, %xmm8
	psrlw	$6, %xmm2
	pand	%xmm6, %xmm2
	packuswb	%xmm2, %xmm4
	pand	%xmm15, %xmm4
	movdqa	%xmm4, %xmm2
	punpcklbw	%xmm4, %xmm2
	punpckhbw	%xmm4, %xmm4
	pmullw	%xmm14, %xmm2
	pmullw	%xmm10, %xmm4
	psrlw	$3, %xmm9
	pand	%xmm6, %xmm2
	pand	%xmm6, %xmm9
	psrlw	$2, %xmm13
	pand	%xmm6, %xmm4
	packuswb	%xmm4, %xmm2
	movdqa	%xmm0, %xmm4
	pand	%xmm6, %xmm13
	psrlw	$5, %xmm4
	pand	%xmm6, %xmm4
	packuswb	%xmm5, %xmm4
	pand	%xmm15, %xmm4
	movdqa	%xmm4, %xmm5
	punpcklbw	%xmm4, %xmm5
	punpckhbw	%xmm4, %xmm4
	pmullw	%xmm14, %xmm5
	pmullw	%xmm10, %xmm4
	pand	%xmm6, %xmm5
	pand	%xmm6, %xmm4
	packuswb	%xmm4, %xmm5
	movdqa	%xmm12, %xmm4
	psrlw	$4, %xmm4
	pand	%xmm6, %xmm4
	packuswb	%xmm4, %xmm8
	pand	%xmm15, %xmm8
	movdqa	%xmm8, %xmm4
	punpcklbw	%xmm8, %xmm4
	punpckhbw	%xmm8, %xmm8
	pmullw	%xmm14, %xmm4
	pmullw	%xmm10, %xmm8
	pand	%xmm6, %xmm4
	pand	%xmm6, %xmm8
	packuswb	%xmm8, %xmm4
	movdqa	%xmm0, %xmm8
	psrlw	$1, %xmm0
	psrlw	$3, %xmm8
	pand	%xmm6, %xmm0
	pand	%xmm6, %xmm8
	packuswb	%xmm9, %xmm8
	pand	%xmm15, %xmm8
	movdqa	%xmm8, %xmm9
	punpcklbw	%xmm8, %xmm9
	punpckhbw	%xmm8, %xmm8
	pmullw	%xmm14, %xmm9
	pmullw	%xmm10, %xmm8
	pand	%xmm6, %xmm9
	pand	%xmm6, %xmm8
	packuswb	%xmm8, %xmm9
	movdqa	%xmm12, %xmm8
	psrlw	$1, %xmm12
	psrlw	$2, %xmm8
	pand	%xmm6, %xmm12
	packuswb	%xmm12, %xmm0
	pand	%xmm15, %xmm0
	pand	%xmm6, %xmm8
	movdqa	%xmm0, %xmm12
	packuswb	%xmm8, %xmm13
	pand	%xmm15, %xmm13
	movdqa	%xmm13, %xmm8
	punpcklbw	%xmm0, %xmm12
	pmullw	%xmm14, %xmm12
	punpckhbw	%xmm0, %xmm0
	punpcklbw	%xmm13, %xmm8
	punpckhbw	%xmm13, %xmm13
	pmullw	%xmm14, %xmm8
	pmullw	%xmm10, %xmm13
	pand	%xmm6, %xmm12
	pmullw	%xmm10, %xmm0
	pand	%xmm6, %xmm8
	pand	%xmm6, %xmm13
	packuswb	%xmm13, %xmm8
	movdqa	%xmm12, %xmm13
	movdqa	%xmm3, %xmm12
	punpcklbw	%xmm3, %xmm12
	pmullw	%xmm14, %xmm12
	punpckhbw	%xmm3, %xmm3
	pand	%xmm6, %xmm0
	pmullw	%xmm10, %xmm3
	packuswb	%xmm0, %xmm13
	movdqa	%xmm13, %xmm0
	pand	%xmm6, %xmm12
	movdqa	%xmm12, %xmm13
	movdqa	%xmm1, %xmm12
	punpckhbw	%xmm9, %xmm1
	punpcklbw	%xmm9, %xmm12
	movdqa	%xmm2, %xmm9
	pand	%xmm6, %xmm3
	punpckhbw	%xmm8, %xmm2
	punpcklbw	%xmm8, %xmm9
	packuswb	%xmm3, %xmm13
	movdqa	%xmm5, %xmm8
	movdqa	%xmm13, %xmm3
	movdqa	%xmm4, %xmm13
	punpcklbw	%xmm0, %xmm8
	punpckhbw	%xmm0, %xmm5
	punpckhbw	%xmm3, %xmm4
	punpcklbw	%xmm3, %xmm13
	movdqa	%xmm12, %xmm0
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm8, %xmm12
	punpcklbw	%xmm8, %xmm0
	punpcklbw	%xmm5, %xmm3
	punpckhbw	%xmm5, %xmm1
	movdqa	%xmm2, %xmm8
	movdqa	%xmm9, %xmm5
	punpcklbw	%xmm4, %xmm8
	punpckhbw	%xmm4, %xmm2
	movdqa	%xmm0, %xmm4
	punpcklbw	%xmm13, %xmm5
	punpckhbw	%xmm5, %xmm0
	movups	%xmm0, -112(%rax)
	movdqa	%xmm12, %xmm0
	punpckhbw	%xmm13, %xmm9
	punpcklbw	%xmm9, %xmm0
	movups	%xmm0, -96(%rax)
	movdqa	%xmm3, %xmm0
	punpcklbw	%xmm8, %xmm0
	movups	%xmm0, -64(%rax)
	movdqa	%xmm1, %xmm0
	punpcklbw	%xmm5, %xmm4
	punpckhbw	%xmm9, %xmm12
	movups	%xmm4, -128(%rax)
	punpcklbw	%xmm2, %xmm0
	punpckhbw	%xmm2, %xmm1
	movups	%xmm12, -80(%rax)
	punpckhbw	%xmm8, %xmm3
	movups	%xmm0, -32(%rax)
	movups	%xmm3, -48(%rax)
	movups	%xmm1, -16(%rax)
	cmpl	%r10d, %r14d
	ja	.L1498
	movq	368(%rsp), %rax
	movl	424(%rsp), %r14d
	cmpl	%r14d, 380(%rsp)
	movl	444(%rsp), %r15d
	leaq	(%r8,%rax), %r10
	movq	360(%rsp), %rax
	leaq	(%r9,%rax), %r11
	je	.L1925
	.p2align 4,,10
.L1500:
	movzbl	(%r10), %r14d
	subl	$8, %r15d
	addq	$8, %r11
	addq	$1, %r10
	sarl	$7, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, -8(%r11)
	movzbl	-1(%r10), %eax
	sarl	$6, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -7(%r11)
	movzbl	-1(%r10), %eax
	sarl	$5, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -6(%r11)
	movzbl	-1(%r10), %eax
	sarl	$4, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -5(%r11)
	movzbl	-1(%r10), %eax
	sarl	$3, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -4(%r11)
	movzbl	-1(%r10), %eax
	sarl	$2, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -3(%r11)
	movzbl	-1(%r10), %eax
	sarl	%eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -2(%r11)
	movzbl	-1(%r10), %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$7, %r15d
	movb	%al, -1(%r11)
	jg	.L1500
.L1925:
	movq	176(%rsp), %rax
	leaq	(%r8,%rax), %r14
.L1501:
	addq	336(%rsp), %r9
	movq	%r14, %r8
	movl	348(%rsp), %r11d
.L1495:
	testl	%r11d, %r11d
	jle	.L1484
	movzbl	(%r8), %r10d
	sarl	$7, %r10d
	movl	%r10d, %eax
	imull	%ecx, %eax
	cmpl	$1, %r11d
	movb	%al, (%r9)
	je	.L1484
	movzbl	(%r8), %eax
	sarl	$6, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$2, %r11d
	movb	%al, 1(%r9)
	je	.L1484
	movzbl	(%r8), %eax
	sarl	$5, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$3, %r11d
	movb	%al, 2(%r9)
	je	.L1484
	movzbl	(%r8), %eax
	sarl	$4, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$4, %r11d
	movb	%al, 3(%r9)
	je	.L1484
	movzbl	(%r8), %eax
	sarl	$3, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$5, %r11d
	movb	%al, 4(%r9)
	je	.L1484
	movzbl	(%r8), %eax
	sarl	$2, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$7, %r11d
	movb	%al, 5(%r9)
	jne	.L1484
	movzbl	(%r8), %eax
	sarl	%eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, 6(%r9)
	jmp	.L1484
.L1626:
	movl	$1, %eax
	.p2align 4,,10
.L1415:
	movl	%r12d, %r15d
	movl	%edx, %r10d
	xorl	%r8d, %r8d
	leaq	(%rcx,%r10), %rdi
	subl	%edx, %r15d
	xorl	%edx, %edx
	leaq	(%rsi,%r10), %r11
	movl	%r15d, %ebp
	addq	%r9, %r10
	shrl	$4, %ebp
	.p2align 4,,10
.L1417:
	movdqu	(%r11,%rdx), %xmm0
	paddb	(%rdi,%rdx), %xmm0
	addl	$1, %r8d
	movups	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpl	%r8d, %ebp
	ja	.L1417
	movl	%r15d, %edx
	andl	$-16, %edx
	addl	%edx, %eax
	cmpl	%edx, %r15d
	je	.L1412
.L1414:
	cltq
	.p2align 4,,10
.L1419:
	movzbl	(%rsi,%rax), %edx
	addb	(%rcx,%rax), %dl
	movb	%dl, (%r9,%rax)
	addq	$1, %rax
	cmpl	%eax, %r12d
	jg	.L1419
	jmp	.L1412
.L1594:
	movl	$1, %eax
	.p2align 4,,10
.L1392:
	movl	%r12d, %r14d
	movl	%edx, %r9d
	xorl	%r8d, %r8d
	leaq	(%rcx,%r9), %r10
	subl	%edx, %r14d
	addq	%rbx, %r9
	movl	%r14d, %r11d
	xorl	%edx, %edx
	shrl	$4, %r11d
	.p2align 4,,10
.L1394:
	movdqa	(%r10,%rdx), %xmm0
	addl	$1, %r8d
	movups	%xmm0, (%r9,%rdx)
	addq	$16, %rdx
	cmpl	%r8d, %r11d
	ja	.L1394
	movl	%r14d, %edx
	andl	$-16, %edx
	addl	%edx, %eax
	cmpl	%edx, %r14d
	je	.L1389
.L1391:
	cltq
	.p2align 4,,10
.L1396:
	movzbl	(%rcx,%rax), %edx
	movb	%dl, (%rbx,%rax)
	addq	$1, %rax
	cmpl	%eax, %r12d
	jg	.L1396
	jmp	.L1389
.L1663:
	movl	$1, %eax
	jmp	.L1452
.L1610:
	movl	160(%rsp), %eax
	jmp	.L1404
.L1679:
	movl	$1, %eax
	jmp	.L1463
.L1656:
	xorl	%edx, %edx
	jmp	.L1436
.L1643:
	movl	$2, 96(%rsp)
	jmp	.L1426
.L1611:
	movl	$2, %eax
	jmp	.L1404
.L1680:
	movl	$2, %eax
	jmp	.L1463
.L1595:
	movl	$2, %eax
	jmp	.L1392
.L1627:
	movl	112(%rsp), %eax
	jmp	.L1415
.L1664:
	movl	$2, %eax
	jmp	.L1452
.L1677:
	xorl	%eax, %eax
	jmp	.L1462
.L1640:
	xorl	%r8d, %r8d
	jmp	.L1425
.L1661:
	xorl	%eax, %eax
	jmp	.L1451
.L1608:
	xorl	%eax, %eax
	jmp	.L1403
.L1624:
	xorl	%eax, %eax
	jmp	.L1414
.L1592:
	movl	64(%rsp), %eax
	jmp	.L1391
.L1596:
	movl	$3, %eax
	jmp	.L1392
.L1628:
	movl	$3, %eax
	jmp	.L1415
.L1644:
	movl	176(%rsp), %edi
	movl	%edi, 96(%rsp)
	jmp	.L1426
.L1937:
	movq	696(%rsp), %rax
	movq	(%rax), %rcx
	movl	728(%rsp), %eax
	imull	736(%rsp), %eax
	imull	720(%rsp), %eax
	testl	%eax, %eax
	je	.L1278
	subl	$1, %eax
	leaq	2(%rcx,%rax,2), %r8
	.p2align 4,,10
.L1509:
	movzbl	(%rcx), %eax
	addq	$2, %rcx
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-1(%rcx), %eax
	orl	%edx, %eax
	movw	%ax, -2(%rcx)
	cmpq	%r8, %rcx
	jne	.L1509
	jmp	.L1278
.L1607:
	movl	$14, %eax
	jmp	.L1392
.L1639:
	movl	$14, %eax
	jmp	.L1415
.L1655:
	movl	$14, 96(%rsp)
	jmp	.L1426
.L1531:
	movl	$4, %r15d
	jmp	.L1326
.L1582:
	movl	$4, %r15d
	jmp	.L1370
.L1546:
	movl	$4, %r15d
	jmp	.L1336
.L1567:
	movl	$4, %r15d
	jmp	.L1360
.L1516:
	movl	$4, %r15d
	jmp	.L1315
.L1699:
	movq	%r9, %r11
	movq	%r8, %r10
	movl	376(%rsp), %r15d
	jmp	.L1500
.L1645:
	movl	$4, 96(%rsp)
	jmp	.L1426
.L1629:
	movl	$4, %eax
	jmp	.L1415
.L1597:
	movl	$4, %eax
	jmp	.L1392
.L1657:
	xorl	%r9d, %r9d
	jmp	.L1437
.L1646:
	movl	$5, 96(%rsp)
	jmp	.L1426
.L1667:
	movl	144(%rsp), %eax
	jmp	.L1452
.L1630:
	movl	$5, %eax
	jmp	.L1415
.L1598:
	movl	$5, %eax
	jmp	.L1392
.L1599:
	movl	$6, %eax
	jmp	.L1392
.L1625:
	xorl	%eax, %eax
	jmp	.L1415
.L1593:
	movl	64(%rsp), %eax
	jmp	.L1392
.L1631:
	movl	$6, %eax
	jmp	.L1415
.L1662:
	xorl	%eax, %eax
	jmp	.L1452
.L1609:
	xorl	%eax, %eax
	jmp	.L1404
.L1641:
	movl	$0, 96(%rsp)
	jmp	.L1426
.L1647:
	movl	$6, 96(%rsp)
	jmp	.L1426
.L1684:
	movl	160(%rsp), %eax
	jmp	.L1463
.L1678:
	xorl	%eax, %eax
	jmp	.L1463
.L1648:
	movl	$7, 96(%rsp)
	jmp	.L1426
.L1600:
	movl	$7, %eax
	jmp	.L1392
.L1632:
	movl	$7, %eax
	jmp	.L1415
.L1334:
	movq	704(%rsp), %r9
	leal	-1(%r14), %r8d
	xorl	%ecx, %ecx
	addq	$1, %r8
	.p2align 4,,10
.L1343:
	movzbl	(%rsi,%rcx), %eax
	movzbl	(%rdi,%rcx), %edx
	addl	%edx, %eax
	sarl	%eax
	addb	(%r9,%rcx), %al
	movb	%al, (%rbx,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.L1343
	jmp	.L1303
.L1358:
	movq	704(%rsp), %r8
	leal	-1(%r14), %ecx
	xorl	%eax, %eax
	addq	$1, %rcx
	.p2align 4,,10
.L1367:
	movzbl	(%rsi,%rax), %edx
	sarl	%edx
	addb	(%r8,%rax), %dl
	movb	%dl, (%rbx,%rax)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L1367
	jmp	.L1303
.L1368:
	movq	704(%rsp), %r9
	leal	-1(%r14), %ecx
	xorl	%eax, %eax
	addq	$1, %rcx
	.p2align 4,,10
.L1377:
	movzbl	(%r8,%rax), %edx
	addb	(%r9,%rax), %dl
	movb	%dl, (%rbx,%rax)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L1377
	jmp	.L1303
.L1313:
	movq	704(%rsp), %r8
	leal	-1(%r14), %ecx
	xorl	%eax, %eax
	addq	$1, %rcx
	.p2align 4,,10
.L1323:
	movzbl	(%r8,%rax), %edx
	addb	(%rsi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L1323
	jmp	.L1303
.L1344:
	movl	%r12d, 32(%rsp)
	movq	304(%rsp), %rbp
	leal	-1(%r14), %eax
	xorl	%r10d, %r10d
	movq	704(%rsp), %r12
	leaq	1(%rax), %r13
	.p2align 4,,10
.L1357:
	movzbl	(%rsi,%r10), %r11d
	movzbl	0(%rbp,%r10), %r8d
	movzbl	(%r15,%r10), %edi
	movzbl	(%r12,%r10), %r9d
	leal	(%r11,%r8), %eax
	subl	%edi, %eax
	movl	%eax, %ecx
	subl	%r11d, %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	xorl	%edx, %ecx
	subl	%edx, %ecx
	movl	%eax, %edx
	subl	%r8d, %eax
	subl	%edi, %edx
	movl	%edx, %r14d
	sarl	$31, %r14d
	xorl	%r14d, %edx
	subl	%r14d, %edx
	movl	%eax, %r14d
	sarl	$31, %r14d
	xorl	%r14d, %eax
	subl	%r14d, %eax
	cmpl	%edx, %ecx
	movl	%edx, %r14d
	cmovle	%ecx, %r14d
	cmpl	%r14d, %eax
	jle	.L1356
	cmpl	%edx, %ecx
	cmovg	%edi, %r11d
	movl	%r11d, %r8d
.L1356:
	addl	%r9d, %r8d
	movb	%r8b, (%rbx,%r10)
	addq	$1, %r10
	cmpq	%r13, %r10
	jne	.L1357
	jmp	.L1920
.L1324:
	movq	704(%rsp), %r8
	leal	-1(%r14), %ecx
	xorl	%eax, %eax
	addq	$1, %rcx
	.p2align 4,,10
.L1333:
	movzbl	(%r8,%rax), %edx
	addb	(%rsi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L1333
	jmp	.L1303
.L1649:
	movl	$8, 96(%rsp)
	jmp	.L1426
.L1931:
	leaq	_ZL16first_row_filter(%rip), %rax
	movl	$1, %r12d
	movzbl	(%rax,%r15), %r15d
	jmp	.L1284
.L1934:
	leaq	_ZL16first_row_filter(%rip), %rax
	movzbl	(%rax,%r15), %r15d
	jmp	.L1285
.L1601:
	movl	$8, %eax
	jmp	.L1392
.L1633:
	movl	$8, %eax
	jmp	.L1415
.L1477:
	movq	32(%rsp), %rax
	movq	%r9, %r11
	leaq	(%r8,%rax), %r14
	.p2align 4,,10
.L1482:
	movzbl	(%r8), %r10d
	addq	$1, %r8
	addq	$2, %r11
	sarl	$4, %r10d
	movl	%r10d, %eax
	imull	%ecx, %eax
	movb	%al, -2(%r11)
	movzbl	-1(%r8), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	cmpq	%r8, %r14
	movb	%al, -1(%r11)
	jne	.L1482
	jmp	.L1481
.L1634:
	movl	$9, %eax
	jmp	.L1415
.L1602:
	movl	$9, %eax
	jmp	.L1392
.L1650:
	movl	$9, 96(%rsp)
	jmp	.L1426
.L1694:
	movl	376(%rsp), %eax
	jmp	.L1476
.L1635:
	movl	$10, %eax
	jmp	.L1415
.L1603:
	movl	$10, %eax
	jmp	.L1392
.L1651:
	movl	$10, 96(%rsp)
	jmp	.L1426
.L1487:
	movq	112(%rsp), %rax
	movq	%r9, %r10
	leaq	(%r8,%rax), %r11
.L1493:
	movzbl	(%r8), %r14d
	addq	$1, %r8
	addq	$4, %r10
	sarl	$6, %r14d
	movl	%r14d, %eax
	imull	%ecx, %eax
	movb	%al, -4(%r10)
	movzbl	-1(%r8), %eax
	sarl	$4, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	movb	%al, -3(%r10)
	movzbl	-1(%r8), %eax
	sarl	$2, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	movb	%al, -2(%r10)
	movzbl	-1(%r8), %eax
	andl	$3, %eax
	imull	%ecx, %eax
	cmpq	%r8, %r11
	movb	%al, -1(%r10)
	jne	.L1493
	jmp	.L1492
.L1696:
	movl	376(%rsp), %r11d
	jmp	.L1486
.L1652:
	movl	$11, 96(%rsp)
	jmp	.L1426
.L1636:
	movl	$11, %eax
	jmp	.L1415
.L1604:
	movl	$11, %eax
	jmp	.L1392
.L1564:
	movl	$1, %r15d
	jmp	.L1360
.L1637:
	movl	$12, %eax
	jmp	.L1415
.L1605:
	movl	$12, %eax
	jmp	.L1392
.L1653:
	movl	$12, 96(%rsp)
	jmp	.L1426
.L1557:
	xorl	%edx, %edx
	jmp	.L1345
.L1529:
	movl	$1, %r15d
	jmp	.L1326
.L1544:
	movl	$1, %r15d
	jmp	.L1336
.L1496:
	movq	176(%rsp), %rax
	movq	%r9, %r10
	leaq	(%r8,%rax), %r14
.L1502:
	movzbl	(%r8), %r11d
	addq	$1, %r8
	addq	$8, %r10
	sarl	$7, %r11d
	movl	%r11d, %eax
	imull	%ecx, %eax
	movb	%al, -8(%r10)
	movzbl	-1(%r8), %eax
	sarl	$6, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -7(%r10)
	movzbl	-1(%r8), %eax
	sarl	$5, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -6(%r10)
	movzbl	-1(%r8), %eax
	sarl	$4, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -5(%r10)
	movzbl	-1(%r8), %eax
	sarl	$3, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -4(%r10)
	movzbl	-1(%r8), %eax
	sarl	$2, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -3(%r10)
	movzbl	-1(%r8), %eax
	sarl	%eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -2(%r10)
	movzbl	-1(%r8), %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpq	%r8, %r14
	movb	%al, -1(%r10)
	jne	.L1502
	jmp	.L1501
.L1579:
	movl	$1, %r15d
	jmp	.L1370
.L1580:
	movl	$2, %r15d
	jmp	.L1370
.L1545:
	movl	$2, %r15d
	jmp	.L1336
.L1698:
	movl	376(%rsp), %r11d
	jmp	.L1495
.L1514:
	movl	$2, %r15d
	jmp	.L1315
.L1565:
	movl	$2, %r15d
	jmp	.L1360
.L1581:
	movl	$3, %r15d
	jmp	.L1370
.L1515:
	movl	$3, %r15d
	jmp	.L1315
.L1566:
	movl	$3, %r15d
	jmp	.L1360
.L1606:
	movl	$13, %eax
	jmp	.L1392
.L1638:
	movl	$13, %eax
	jmp	.L1415
.L1577:
	xorl	%r15d, %r15d
	jmp	.L1369
.L1562:
	xorl	%r15d, %r15d
	jmp	.L1359
.L1527:
	xorl	%r15d, %r15d
	jmp	.L1325
.L1654:
	movl	$13, 96(%rsp)
	jmp	.L1426
.L1512:
	xorl	%r15d, %r15d
	jmp	.L1314
.L1530:
	movl	$3, %r15d
	jmp	.L1326
.L1542:
	xorl	%ecx, %ecx
	jmp	.L1335
.L1558:
	xorl	%r10d, %r10d
	jmp	.L1346
.L1695:
	movq	%r9, %r10
	movq	%r8, %r11
	movl	376(%rsp), %r15d
	jmp	.L1478
.L1548:
	movl	$6, %r15d
	jmp	.L1336
.L1547:
	movl	$5, %r15d
	jmp	.L1336
.L1533:
	movl	$6, %r15d
	jmp	.L1326
.L1532:
	movl	$5, %r15d
	jmp	.L1326
.L1578:
	xorl	%r15d, %r15d
	jmp	.L1370
.L1528:
	xorl	%r15d, %r15d
	jmp	.L1326
.L1583:
	movl	$5, %r15d
	jmp	.L1370
.L1543:
	xorl	%r15d, %r15d
	jmp	.L1336
.L1563:
	xorl	%r15d, %r15d
	jmp	.L1360
.L1513:
	xorl	%r15d, %r15d
	jmp	.L1315
.L1697:
	movq	%r9, %r11
	movq	%r8, %r10
	movl	376(%rsp), %r15d
	jmp	.L1491
.L1568:
	movl	$6, %r15d
	jmp	.L1360
.L1518:
	movl	$6, %r15d
	jmp	.L1315
.L1517:
	movl	$5, %r15d
	jmp	.L1315
.L1569:
	movl	$7, %r15d
	jmp	.L1360
.L1570:
	movl	$8, %r15d
	jmp	.L1360
.L1535:
	movl	$8, %r15d
	jmp	.L1326
.L1534:
	movl	$7, %r15d
	jmp	.L1326
.L1520:
	movl	$8, %r15d
	jmp	.L1315
.L1519:
	movl	$7, %r15d
	jmp	.L1315
.L1585:
	movl	$8, %r15d
	jmp	.L1370
.L1584:
	movl	$7, %r15d
	jmp	.L1370
.L1550:
	movl	$8, %r15d
	jmp	.L1336
.L1549:
	movl	$7, %r15d
	jmp	.L1336
.L1553:
	movl	$11, %r15d
	jmp	.L1336
.L1552:
	movl	$10, %r15d
	jmp	.L1336
.L1551:
	movl	$9, %r15d
	jmp	.L1336
.L1538:
	movl	$11, %r15d
	jmp	.L1326
.L1537:
	movl	$10, %r15d
	jmp	.L1326
.L1536:
	movl	$9, %r15d
	jmp	.L1326
.L1571:
	movl	$9, %r15d
	jmp	.L1360
.L1587:
	movl	$10, %r15d
	jmp	.L1370
.L1586:
	movl	$9, %r15d
	jmp	.L1370
.L1588:
	movl	$11, %r15d
	jmp	.L1370
.L1573:
	movl	$11, %r15d
	jmp	.L1360
.L1572:
	movl	$10, %r15d
	jmp	.L1360
.L1523:
	movl	$11, %r15d
	jmp	.L1315
.L1522:
	movl	$10, %r15d
	jmp	.L1315
.L1521:
	movl	$9, %r15d
	jmp	.L1315
.L1524:
	movl	$12, %r15d
	jmp	.L1315
.L1575:
	movl	$13, %r15d
	jmp	.L1360
.L1574:
	movl	$12, %r15d
	jmp	.L1360
.L1576:
	movl	$14, %r15d
	jmp	.L1360
.L1589:
	movl	$12, %r15d
	jmp	.L1370
.L1591:
	movl	$14, %r15d
	jmp	.L1370
.L1590:
	movl	$13, %r15d
	jmp	.L1370
.L1526:
	movl	$14, %r15d
	jmp	.L1315
.L1525:
	movl	$13, %r15d
	jmp	.L1315
.L1554:
	movl	$12, %r15d
	jmp	.L1336
.L1539:
	movl	$12, %r15d
	jmp	.L1326
.L1541:
	movl	$14, %r15d
	jmp	.L1326
.L1540:
	movl	$13, %r15d
	jmp	.L1326
.L1556:
	movl	$14, %r15d
	jmp	.L1336
.L1555:
	movl	$13, %r15d
	jmp	.L1336
	.seh_endproc
	.section .rdata,"dr"
.LC53:
	.ascii "max value > 255\0"
	.text
	.p2align 4,,15
	.def	_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_
_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_:
.LFB1002:
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	44(%rsp), %rax
	testq	%rdx, %rdx
	movq	%rdx, %rbp
	movq	208(%rcx), %rdx
	cmove	%rax, %rbp
	movq	%r8, %rdi
	testq	%r8, %r8
	cmove	%rax, %rdi
	movq	%r9, %r12
	testq	%r9, %r9
	movq	%rcx, %rbx
	cmove	%rax, %r12
	movq	200(%rcx), %rax
	movq	%rdx, 192(%rcx)
	cmpq	%rdx, %rax
	movq	%rax, 184(%rcx)
	jb	.L1963
	movl	48(%rcx), %edx
	testl	%edx, %edx
	je	.L1948
	leaq	56(%rcx), %rsi
	movl	52(%rbx), %r8d
	movq	40(%rcx), %rcx
	movq	%rsi, %rdx
	call	*16(%rbx)
	leaq	57(%rbx), %rcx
	testl	%eax, %eax
	jne	.L1949
	movl	$0, 48(%rbx)
	movq	%rcx, %rdx
	xorl	%r13d, %r13d
	movb	$0, 56(%rbx)
.L1950:
	cmpq	%rcx, %rdx
	movq	%rdx, 192(%rbx)
	movq	%rcx, 184(%rbx)
	ja	.L1951
.L1965:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L1948
	leaq	56(%rbx), %rsi
	movq	40(%rbx), %rcx
	movq	%rsi, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	leaq	57(%rbx), %rdx
	testl	%eax, %eax
	jne	.L1955
	movl	$0, 48(%rbx)
	movq	%rdx, %rsi
	movb	$0, 56(%rbx)
.L1956:
	movq	%rsi, 192(%rbx)
	movq	%rdx, 184(%rbx)
.L1953:
	cmpb	$80, %r13b
	jne	.L1948
	leal	-53(%rax), %edx
	cmpb	$1, %dl
	jbe	.L1964
.L1948:
	movdqu	200(%rbx), %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 184(%rbx)
.L1942:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L1963:
	leaq	1(%rax), %rcx
	cmpq	%rcx, %rdx
	movq	%rcx, 184(%rbx)
	movzbl	(%rax), %r13d
	jbe	.L1965
.L1951:
	leaq	1(%rcx), %rax
	movq	%rax, 184(%rbx)
	movzbl	(%rcx), %eax
	jmp	.L1953
	.p2align 4,,10
.L1955:
	cltq
	addq	%rax, %rsi
	movzbl	56(%rbx), %eax
	jmp	.L1956
	.p2align 4,,10
.L1949:
	cltq
	movzbl	56(%rbx), %r13d
	leaq	(%rsi,%rax), %rdx
	jmp	.L1950
	.p2align 4,,10
.L1964:
	leaq	43(%rsp), %rsi
	cmpb	$54, %al
	movq	%rbx, %rcx
	sete	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	movl	%eax, (%r12)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	movb	%al, 43(%rsp)
	call	_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZL20stbi__pnm_getintegerP13stbi__contextPc
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	movl	%eax, 0(%rbp)
	call	_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZL20stbi__pnm_getintegerP13stbi__contextPc
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	movl	%eax, (%rdi)
	call	_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZL20stbi__pnm_getintegerP13stbi__contextPc
	movl	%eax, %edx
	movl	$1, %eax
	cmpl	$255, %edx
	jle	.L1942
	leaq	.LC53(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L1942
	.seh_endproc
	.p2align 4,,15
	.def	_ZL18stbi__hdr_gettokenP13stbi__contextPc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18stbi__hdr_gettokenP13stbi__contextPc
_ZL18stbi__hdr_gettokenP13stbi__contextPc:
.LFB989:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	16(%rcx), %rax
	movq	%rdx, %rbp
	movq	184(%rcx), %rdx
	movq	%rcx, %rbx
	cmpq	192(%rcx), %rdx
	jb	.L2002
	movl	48(%rcx), %r10d
	testl	%r10d, %r10d
	je	.L1996
	leaq	56(%rcx), %rsi
	movl	52(%rbx), %r8d
	movq	%rsi, %rdx
	movq	40(%rcx), %rcx
	call	*%rax
	leaq	57(%rbx), %rdx
	testl	%eax, %eax
	jne	.L1969
	movl	$0, 48(%rbx)
	movq	%rdx, %rsi
	xorl	%edi, %edi
	movb	$0, 56(%rbx)
.L1970:
	movq	16(%rbx), %rax
	movq	%rsi, 192(%rbx)
	movq	%rdx, 184(%rbx)
.L1968:
	leaq	1022(%rbp), %r12
	movq	%rbp, %rsi
	leaq	57(%rbx), %r13
	jmp	.L1995
	.p2align 4,,10
.L1991:
	movl	48(%rbx), %edx
	testl	%edx, %edx
	je	.L1997
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*%rax
	testl	%eax, %eax
	jne	.L1993
	movl	$0, 48(%rbx)
	movq	%r13, %rax
	xorl	%edi, %edi
	movb	$0, 56(%rbx)
.L1994:
	movq	%rax, 192(%rbx)
	movq	16(%rbx), %rax
	movq	%r13, 184(%rbx)
.L1992:
	addq	$1, %rsi
.L1995:
	movl	%esi, %r14d
	subl	%ebp, %r14d
	testq	%rax, %rax
	je	.L1978
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L1972
	movl	48(%rbx), %r9d
	testl	%r9d, %r9d
	je	.L1977
.L1978:
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jnb	.L1977
.L1972:
	cmpb	$10, %dil
	movq	%rsi, %rax
	je	.L1976
	cmpq	%rsi, %r12
	movb	%dil, (%rsi)
	je	.L2003
	movq	184(%rbx), %rdx
	cmpq	192(%rbx), %rdx
	movq	16(%rbx), %rax
	jnb	.L1991
	leaq	1(%rdx), %rcx
	movq	%rcx, 184(%rbx)
	movzbl	(%rdx), %edi
	jmp	.L1992
	.p2align 4,,10
.L1993:
	cltq
	addq	%rdi, %rax
	movzbl	56(%rbx), %edi
	jmp	.L1994
.L1983:
	leaq	1023(%rbp), %rax
.L1976:
	movb	$0, (%rax)
	movq	%rbp, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L1997:
	xorl	%edi, %edi
	jmp	.L1992
	.p2align 4,,10
.L2002:
	leaq	1(%rdx), %rcx
	movq	%rcx, 184(%rbx)
	movzbl	(%rdx), %edi
	jmp	.L1968
	.p2align 4,,10
.L1977:
	movslq	%r14d, %rax
	addq	%rbp, %rax
	jmp	.L1976
	.p2align 4,,10
.L1969:
	cltq
	movzbl	56(%rbx), %edi
	addq	%rax, %rsi
	jmp	.L1970
.L1996:
	xorl	%edi, %edi
	jmp	.L1968
.L2003:
	movq	16(%rbx), %rax
	leaq	56(%rbx), %rsi
	leaq	57(%rbx), %rdi
	jmp	.L1980
	.p2align 4,,10
.L2004:
	movl	48(%rbx), %r8d
	testl	%r8d, %r8d
	je	.L1983
.L1985:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L1983
.L1982:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edx
.L1987:
	cmpb	$10, %dl
	je	.L1983
.L1990:
	movq	16(%rbx), %rax
.L1980:
	testq	%rax, %rax
	je	.L1985
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	jne	.L2004
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L1982
	movl	48(%rbx), %ecx
	movq	16(%rbx), %rax
	testl	%ecx, %ecx
	je	.L1980
	movq	40(%rbx), %rcx
	movq	%rsi, %rdx
	movl	52(%rbx), %r8d
	call	*%rax
	testl	%eax, %eax
	jne	.L1989
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rdi, 192(%rbx)
	movq	%rdi, 184(%rbx)
	jmp	.L1990
	.p2align 4,,10
.L1989:
	cltq
	movzbl	56(%rbx), %edx
	movq	%rdi, 184(%rbx)
	addq	%rsi, %rax
	movq	%rax, 192(%rbx)
	jmp	.L1987
	.seh_endproc
	.section .rdata,"dr"
.LC54:
	.ascii "FORMAT=32-bit_rle_rgbe\0"
.LC55:
	.ascii "-Y \0"
.LC56:
	.ascii "+X \0"
	.section	.text.unlikely,"x"
	.def	_ZL14stbi__hdr_infoP13stbi__contextPiS1_S1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__hdr_infoP13stbi__contextPiS1_S1_
_ZL14stbi__hdr_infoP13stbi__contextPiS1_S1_:
.LFB992:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$1080, %rsp
	.seh_stackalloc	1080
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%r8, %r13
	movq	%r9, %rbp
	jne	.L2006
	leaq	36(%rsp), %r12
.L2006:
	testq	%r13, %r13
	jne	.L2007
	leaq	36(%rsp), %r13
.L2007:
	testq	%rbp, %rbp
	jne	.L2008
	leaq	36(%rsp), %rbp
.L2008:
	movq	%rbx, %rcx
	call	_ZL14stbi__hdr_testP13stbi__context
	testl	%eax, %eax
	movl	%eax, %edi
	je	.L2020
	leaq	48(%rsp), %rsi
	xorl	%edi, %edi
	movl	$1, %r14d
	leaq	.LC54(%rip), %r15
.L2009:
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZL18stbi__hdr_gettokenP13stbi__contextPc
	movq	%rax, 40(%rsp)
	cmpb	$0, (%rax)
	je	.L2011
	movq	%r15, %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	cmove	%r14d, %edi
	jmp	.L2009
.L2011:
	testl	%edi, %edi
	jne	.L2013
.L2020:
	movups	200(%rbx), %xmm0
	movups	%xmm0, 184(%rbx)
	jmp	.L2005
.L2013:
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZL18stbi__hdr_gettokenP13stbi__contextPc
	movl	$3, %r8d
	leaq	.LC55(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
	movq	%rax, 40(%rsp)
	call	strncmp
	testl	%eax, %eax
	jne	.L2019
	leaq	3(%rsi), %rcx
	movl	$10, %r8d
	leaq	40(%rsp), %rdx
	movq	%rcx, 40(%rsp)
	call	strtol
	movl	%eax, 0(%r13)
.L2016:
	movq	40(%rsp), %rsi
	cmpb	$32, (%rsi)
	jne	.L2015
	incq	%rsi
	movq	%rsi, 40(%rsp)
	jmp	.L2016
.L2015:
	leaq	.LC56(%rip), %rdx
	movl	$3, %r8d
	movq	%rsi, %rcx
	call	strncmp
	testl	%eax, %eax
	je	.L2017
.L2019:
	movups	200(%rbx), %xmm0
	xorl	%edi, %edi
	movups	%xmm0, 184(%rbx)
	jmp	.L2005
.L2017:
	leaq	3(%rsi), %rcx
	movl	$10, %r8d
	xorl	%edx, %edx
	movq	%rcx, 40(%rsp)
	call	strtol
	movl	%eax, (%r12)
	movl	$3, 0(%rbp)
.L2005:
	movl	%edi, %eax
	addq	$1080, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC57:
	.ascii "z->size[b] == s\0"
	.text
	.p2align 4,,15
	.def	_ZL27stbi__compute_huffman_codesP10stbi__zbuf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL27stbi__compute_huffman_codesP10stbi__zbuf
_ZL27stbi__compute_huffman_codesP10stbi__zbuf:
.LFB926:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$2680, %rsp
	.seh_stackalloc	2680
	.seh_endprologue
	movl	16(%rcx), %ebx
	cmpl	$4, %ebx
	movq	%rcx, %r15
	jle	.L2159
.L2022:
	movl	20(%r15), %eax
	subl	$5, %ebx
	movl	%ebx, 16(%r15)
	movl	%eax, %r12d
	movl	%eax, 48(%rsp)
	shrl	$5, %r12d
	cmpl	$4, %ebx
	movl	%r12d, 20(%r15)
	jle	.L2160
.L2023:
	subl	$5, %ebx
	movl	%r12d, %esi
	shrl	$5, %esi
	cmpl	$3, %ebx
	movl	%ebx, 16(%r15)
	movl	%esi, 20(%r15)
	jle	.L2161
.L2024:
	movl	%esi, %r10d
	subl	$4, %ebx
	andl	$15, %esi
	movb	$0, 98(%rsp)
	shrl	$4, %r10d
	xorl	%r11d, %r11d
	movl	%ebx, 16(%r15)
	addl	$4, %esi
	movl	%r10d, 20(%r15)
	leaq	_ZZL27stbi__compute_huffman_codesP10stbi__zbufE15length_dezigzag(%rip), %rdi
	xorl	%r14d, %r14d
	movl	%ebx, %ecx
	movq	$0, 80(%rsp)
	leaq	.LC3(%rip), %r13
	movq	$0, 88(%rsp)
	leaq	.LC4(%rip), %rbp
	movw	%r11w, 96(%rsp)
	jmp	.L2030
	.p2align 4,,10
.L2026:
	movzbl	(%rdi,%r14), %eax
	movl	%r10d, %edx
	addq	$1, %r14
	shrl	$3, %r10d
	andl	$7, %edx
	subl	$3, %ecx
	cmpl	%r14d, %esi
	movl	%r10d, 20(%r15)
	movl	%ecx, 16(%r15)
	movb	%dl, 80(%rsp,%rax)
	jle	.L2162
.L2030:
	cmpl	$2, %ecx
	jg	.L2026
	jmp	.L2025
	.p2align 4,,10
.L2163:
	movq	%rbp, %rcx
	movl	$3848, %r8d
	movq	%r13, %rdx
	call	_assert
	movl	16(%r15), %ecx
	movl	20(%r15), %r10d
.L2027:
	movq	(%r15), %rax
	cmpq	%rax, 8(%r15)
	jbe	.L2028
	leaq	1(%rax), %rdx
	movq	%rdx, (%r15)
	movzbl	(%rax), %eax
	sall	%cl, %eax
	orl	%eax, %r10d
.L2028:
	addl	$8, %ecx
	movl	%r10d, 20(%r15)
	cmpl	$24, %ecx
	movl	%ecx, 16(%r15)
	jg	.L2026
.L2025:
	movl	%r10d, %eax
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L2027
	jmp	.L2163
	.p2align 4,,10
.L2162:
	xorl	%eax, %eax
	movl	%ecx, %ebx
	movl	$8, %ecx
	movl	%r10d, 40(%rsp)
	leaq	176(%rsp), %rdi
	movl	$1024, %r8d
	xorl	%edx, %edx
	movq	%rdi, 32(%rsp)
	leaq	640(%rsp), %rsi
	rep stosq
	movq	%rsi, %rcx
	movl	$0, (%rdi)
	call	memset
	movl	40(%rsp), %r10d
	leaq	80(%rsp), %r8
	leaq	19(%r8), %rcx
	movq	%r8, %rax
	.p2align 4,,10
.L2031:
	movzbl	(%rax), %edx
	addq	$1, %rax
	addl	$1, 176(%rsp,%rdx,4)
	cmpq	%rax, %rcx
	jne	.L2031
	movl	180(%rsp), %edx
	movl	$0, 176(%rsp)
	cmpl	$2, %edx
	jg	.L2032
	movl	184(%rsp), %ecx
	cmpl	$4, %ecx
	jg	.L2032
	movl	188(%rsp), %r11d
	cmpl	$8, %r11d
	jg	.L2032
	movl	192(%rsp), %ebp
	cmpl	$16, %ebp
	jg	.L2032
	movl	196(%rsp), %r13d
	cmpl	$32, %r13d
	jg	.L2032
	movl	200(%rsp), %r14d
	cmpl	$64, %r14d
	jg	.L2032
	movl	204(%rsp), %edi
	cmpl	$128, %edi
	jg	.L2032
	movl	208(%rsp), %eax
	cmpl	$256, %eax
	movl	%eax, 40(%rsp)
	jg	.L2032
	movl	212(%rsp), %eax
	cmpl	$512, %eax
	movl	%eax, 52(%rsp)
	jg	.L2032
	movl	216(%rsp), %eax
	cmpl	$1024, %eax
	movl	%eax, 56(%rsp)
	jg	.L2032
	movl	220(%rsp), %eax
	cmpl	$2048, %eax
	movl	%eax, 60(%rsp)
	jg	.L2032
	movl	224(%rsp), %eax
	cmpl	$4096, %eax
	movl	%eax, 64(%rsp)
	jg	.L2032
	movl	228(%rsp), %eax
	cmpl	$8192, %eax
	movl	%eax, 68(%rsp)
	jg	.L2032
	movl	232(%rsp), %eax
	cmpl	$16384, %eax
	movl	%eax, 72(%rsp)
	jg	.L2032
	movl	236(%rsp), %eax
	cmpl	$32768, %eax
	movl	%eax, 76(%rsp)
	jg	.L2032
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	movl	$0, 116(%rsp)
	movw	%ax, 1666(%rsp)
	movl	%edx, %eax
	sall	$15, %eax
	movw	%dx, 1768(%rsp)
	movl	%eax, 1700(%rsp)
	leal	(%rdx,%rdx), %eax
	movl	%eax, 120(%rsp)
	movw	%ax, 1668(%rsp)
	addl	%ecx, %eax
	testl	%ecx, %ecx
	movw	%r9w, 1766(%rsp)
	je	.L2035
	cmpl	$4, %eax
	jg	.L2064
.L2035:
	movl	%eax, %r9d
	addl	%eax, %eax
	addl	%ecx, %edx
	sall	$14, %r9d
	movl	%eax, 124(%rsp)
	movw	%ax, 1670(%rsp)
	addl	%r11d, %eax
	testl	%r11d, %r11d
	movl	%r9d, 1704(%rsp)
	movw	%dx, 1770(%rsp)
	je	.L2037
	cmpl	$8, %eax
	jg	.L2064
.L2037:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r11d, %edx
	sall	$13, %ecx
	movl	%eax, 128(%rsp)
	movw	%ax, 1672(%rsp)
	addl	%ebp, %eax
	testl	%ebp, %ebp
	movl	%ecx, 1708(%rsp)
	movw	%dx, 1772(%rsp)
	je	.L2038
	cmpl	$16, %eax
	jg	.L2064
.L2038:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%ebp, %edx
	sall	$12, %ecx
	movl	%eax, 132(%rsp)
	movw	%ax, 1674(%rsp)
	addl	%r13d, %eax
	testl	%r13d, %r13d
	movl	%ecx, 1712(%rsp)
	movw	%dx, 1774(%rsp)
	je	.L2039
	cmpl	$32, %eax
	jg	.L2064
.L2039:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r13d, %edx
	sall	$11, %ecx
	movl	%eax, 136(%rsp)
	movw	%ax, 1676(%rsp)
	addl	%r14d, %eax
	testl	%r14d, %r14d
	movl	%ecx, 1716(%rsp)
	movw	%dx, 1776(%rsp)
	je	.L2040
	cmpl	$64, %eax
	jg	.L2064
.L2040:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r14d, %edx
	sall	$10, %ecx
	movl	%eax, 140(%rsp)
	movw	%ax, 1678(%rsp)
	addl	%edi, %eax
	testl	%edi, %edi
	movl	%ecx, 1720(%rsp)
	movw	%dx, 1778(%rsp)
	je	.L2041
	cmpl	$128, %eax
	jg	.L2064
.L2041:
	addl	%edi, %edx
	movl	40(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	sall	$9, %ecx
	movl	%eax, 144(%rsp)
	movw	%ax, 1680(%rsp)
	movl	%ecx, 1724(%rsp)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1780(%rsp)
	je	.L2042
	cmpl	$256, %eax
	jg	.L2064
.L2042:
	movl	52(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	40(%rsp), %edx
	sall	$8, %ecx
	movl	%eax, 148(%rsp)
	movw	%ax, 1682(%rsp)
	movl	%ecx, 1728(%rsp)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1782(%rsp)
	je	.L2043
	cmpl	$512, %eax
	jg	.L2064
.L2043:
	movl	56(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	52(%rsp), %edx
	sall	$7, %ecx
	movl	%eax, 152(%rsp)
	movw	%ax, 1684(%rsp)
	movl	%ecx, 1732(%rsp)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1784(%rsp)
	je	.L2044
	cmpl	$1024, %eax
	jg	.L2064
.L2044:
	movl	60(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	56(%rsp), %edx
	sall	$6, %ecx
	movl	%eax, 156(%rsp)
	movw	%ax, 1686(%rsp)
	movl	%ecx, 1736(%rsp)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1786(%rsp)
	je	.L2045
	cmpl	$2048, %eax
	jg	.L2064
.L2045:
	movl	64(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	60(%rsp), %edx
	sall	$5, %ecx
	movl	%eax, 160(%rsp)
	movw	%ax, 1688(%rsp)
	movl	%ecx, 1740(%rsp)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1788(%rsp)
	je	.L2046
	cmpl	$4096, %eax
	jg	.L2064
.L2046:
	movl	68(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	64(%rsp), %edx
	sall	$4, %ecx
	movl	%eax, 164(%rsp)
	movw	%ax, 1690(%rsp)
	movl	%ecx, 1744(%rsp)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1790(%rsp)
	je	.L2047
	cmpl	$8192, %eax
	jg	.L2064
.L2047:
	movl	72(%rsp), %edi
	leal	0(,%rax,8), %ecx
	addl	%eax, %eax
	addl	68(%rsp), %edx
	movl	%eax, 168(%rsp)
	movw	%ax, 1692(%rsp)
	movl	%ecx, 1748(%rsp)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1792(%rsp)
	je	.L2048
	cmpl	$16384, %eax
	jg	.L2064
.L2048:
	movl	76(%rsp), %edi
	leal	0(,%rax,4), %ecx
	addl	%eax, %eax
	addl	72(%rsp), %edx
	movl	%eax, 172(%rsp)
	movw	%ax, 1694(%rsp)
	movl	%ecx, 1752(%rsp)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1794(%rsp)
	jne	.L2164
.L2049:
	addl	%eax, %eax
	xorl	%r11d, %r11d
	movl	$16, %r9d
	movl	$65536, 1760(%rsp)
	movl	%eax, 1756(%rsp)
	.p2align 4,,10
.L2053:
	movzbl	(%r8,%r11), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	je	.L2050
	movslq	%eax, %rbp
	movl	112(%rsp,%rbp,4), %edi
	movzwl	1664(%rsp,%rbp,2), %edx
	movzwl	1764(%rsp,%rbp,2), %r13d
	movl	%edi, %r14d
	subl	%edx, %r14d
	movl	%r14d, %edx
	addl	%r13d, %edx
	cmpl	$9, %eax
	movslq	%edx, %rdx
	movb	%al, 1796(%rsp,%rdx)
	movw	%r11w, 2084(%rsp,%rdx,2)
	jle	.L2165
.L2051:
	addl	$1, %edi
	movl	%edi, 112(%rsp,%rbp,4)
.L2050:
	addq	$1, %r11
	cmpq	$19, %r11
	jne	.L2053
	movl	48(%rsp), %r14d
	andl	$31, %r12d
	leal	1(%r12), %esi
	movabsq	$72340172838076673, %r12
	movl	%esi, 52(%rsp)
	leaq	.LC3(%rip), %rbp
	leaq	.LC4(%rip), %r13
	andl	$31, %r14d
	leal	257(%r14), %eax
	xorl	%r14d, %r14d
	movl	%eax, 48(%rsp)
	addl	%esi, %eax
	movl	%eax, %esi
	jmp	.L2054
	.p2align 4,,10
.L2166:
	movslq	%r14d, %rdx
	addl	$1, %r14d
	cmpl	%r14d, %esi
	movb	%al, 176(%rsp,%rdx)
	jle	.L2055
.L2172:
	movl	16(%r15), %ebx
	movl	20(%r15), %r10d
.L2054:
	cmpl	$15, %ebx
	jle	.L2056
.L2057:
	movl	%r10d, %eax
	andl	$511, %eax
	movzwl	640(%rsp,%rax,2), %ecx
	testl	%ecx, %ecx
	movl	%ecx, %eax
	je	.L2061
	sarl	$9, %ecx
	andl	$511, %eax
	shrl	%cl, %r10d
	subl	%ecx, %ebx
	movl	%r10d, 20(%r15)
	movl	%ebx, 16(%r15)
.L2062:
	cmpl	$18, %eax
	jg	.L2064
	cmpl	$15, %eax
	jle	.L2166
	cmpl	$16, %eax
	je	.L2167
	cmpl	$17, %eax
	je	.L2168
	cmpl	$6, %ebx
	jle	.L2169
.L2080:
	movl	%r10d, %eax
	subl	$7, %ebx
	andl	$127, %r10d
	shrl	$7, %eax
	movl	%ebx, 16(%r15)
	addl	$11, %r10d
	movl	%eax, 20(%r15)
	xorl	%eax, %eax
.L2072:
	movl	%esi, %edx
	subl	%r14d, %edx
	cmpl	%r10d, %edx
	jl	.L2064
	imulq	%r12, %rax
	movslq	%r14d, %rdx
	addq	32(%rsp), %rdx
	cmpl	$8, %r10d
	jnb	.L2075
	testb	$4, %r10b
	jne	.L2170
	testl	%r10d, %r10d
	je	.L2076
	testb	$2, %r10b
	movb	%al, (%rdx)
	jne	.L2171
.L2076:
	addl	%r10d, %r14d
	cmpl	%r14d, %esi
	jg	.L2172
.L2055:
	je	.L2173
	.p2align 4,,10
.L2064:
	leaq	.LC38(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2021
	.p2align 4,,10
.L2032:
	leaq	.LC37(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L2021:
	addq	$2680, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L2174:
	movl	$3848, %r8d
	movq	%rbp, %rdx
	movq	%r13, %rcx
	call	_assert
	movl	16(%r15), %ebx
	movl	20(%r15), %r10d
.L2058:
	movq	(%r15), %rax
	cmpq	%rax, 8(%r15)
	jbe	.L2059
	leaq	1(%rax), %rdx
	movl	%ebx, %ecx
	movq	%rdx, (%r15)
	movzbl	(%rax), %eax
	sall	%cl, %eax
	orl	%eax, %r10d
.L2059:
	addl	$8, %ebx
	movl	%r10d, 20(%r15)
	cmpl	$24, %ebx
	movl	%ebx, 16(%r15)
	jg	.L2057
.L2056:
	movl	%r10d, %eax
	movl	%ebx, %ecx
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L2058
	jmp	.L2174
	.p2align 4,,10
.L2061:
	leal	(%r10,%r10), %eax
	movl	%r10d, %edx
	sarl	%edx
	andl	$43690, %eax
	andl	$21845, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %edx
	sarl	$2, %eax
	andl	$52428, %edx
	andl	$13107, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	sall	$4, %eax
	sarl	$4, %edx
	andl	$61680, %eax
	andl	$3855, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	sall	$8, %edx
	sarl	$8, %eax
	movzwl	%dx, %edx
	orl	%edx, %eax
	cmpl	1736(%rsp), %eax
	jl	.L2081
	cmpl	1740(%rsp), %eax
	jl	.L2082
	cmpl	%eax, 1744(%rsp)
	jg	.L2083
	cmpl	%eax, 1748(%rsp)
	jg	.L2084
	cmpl	%eax, 1752(%rsp)
	jg	.L2085
	cmpl	1756(%rsp), %eax
	jge	.L2064
	movl	$1, %ecx
	movl	$15, %edi
	jmp	.L2063
	.p2align 4,,10
.L2075:
	movl	%r10d, %ecx
	movq	%rdx, %rdi
	movq	%rax, -8(%rdx,%rcx)
	leal	-1(%r10), %ecx
	shrl	$3, %ecx
	rep stosq
	jmp	.L2076
	.p2align 4,,10
.L2167:
	cmpl	$1, %ebx
	jle	.L2175
.L2071:
	movl	%r10d, %eax
	andl	$3, %r10d
	subl	$2, %ebx
	shrl	$2, %eax
	addl	$3, %r10d
	testl	%r14d, %r14d
	movl	%ebx, 16(%r15)
	movl	%eax, 20(%r15)
	je	.L2064
	leal	-1(%r14), %eax
	cltq
	movzbl	176(%rsp,%rax), %eax
	jmp	.L2072
	.p2align 4,,10
.L2168:
	cmpl	$2, %ebx
	jle	.L2176
.L2074:
	movl	%r10d, %eax
	subl	$3, %ebx
	andl	$7, %r10d
	shrl	$3, %eax
	movl	%ebx, 16(%r15)
	addl	$3, %r10d
	movl	%eax, 20(%r15)
	xorl	%eax, %eax
	jmp	.L2072
	.p2align 4,,10
.L2169:
	movq	%r15, %rcx
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	20(%r15), %r10d
	movl	16(%r15), %ebx
	jmp	.L2080
	.p2align 4,,10
.L2160:
	movq	%r15, %rcx
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	20(%r15), %r12d
	movl	16(%r15), %ebx
	jmp	.L2023
	.p2align 4,,10
.L2159:
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	16(%r15), %ebx
	jmp	.L2022
	.p2align 4,,10
.L2161:
	movq	%r15, %rcx
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	20(%r15), %esi
	movl	16(%r15), %ebx
	jmp	.L2024
	.p2align 4,,10
.L2081:
	movl	$6, %ecx
	movl	$10, %edi
.L2063:
	movslq	%edi, %rdx
	sarl	%cl, %eax
	movzwl	1664(%rsp,%rdx,2), %ecx
	movzwl	1764(%rsp,%rdx,2), %edx
	subl	%ecx, %eax
	addl	%edx, %eax
	cltq
	movzbl	1796(%rsp,%rax), %edx
	cmpl	%edi, %edx
	je	.L2065
	movl	$3876, %r8d
	movq	%rbp, %rdx
	movq	%rax, 40(%rsp)
	leaq	.LC57(%rip), %rcx
	call	_assert
	movl	20(%r15), %r10d
	movl	16(%r15), %ebx
	movq	40(%rsp), %rax
.L2065:
	movl	%edi, %ecx
	subl	%edi, %ebx
	movzwl	2084(%rsp,%rax,2), %eax
	shrl	%cl, %r10d
	movl	%ebx, 16(%r15)
	movl	%r10d, 20(%r15)
	jmp	.L2062
	.p2align 4,,10
.L2082:
	movl	$5, %ecx
	movl	$11, %edi
	jmp	.L2063
	.p2align 4,,10
.L2083:
	movl	$4, %ecx
	movl	$12, %edi
	jmp	.L2063
	.p2align 4,,10
.L2164:
	cmpl	$32768, %eax
	jle	.L2049
	jmp	.L2064
	.p2align 4,,10
.L2176:
	movq	%r15, %rcx
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	20(%r15), %r10d
	movl	16(%r15), %ebx
	jmp	.L2074
	.p2align 4,,10
.L2175:
	movq	%r15, %rcx
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	20(%r15), %r10d
	movl	16(%r15), %ebx
	jmp	.L2071
	.p2align 4,,10
.L2084:
	movl	$3, %ecx
	movl	$13, %edi
	jmp	.L2063
	.p2align 4,,10
.L2165:
	leal	(%rdi,%rdi), %edx
	movl	%edi, %r13d
	sarl	%r13d
	andl	$43690, %edx
	andl	$21845, %r13d
	orl	%edx, %r13d
	movl	%r13d, %edx
	sall	$2, %r13d
	sarl	$2, %edx
	andl	$52428, %r13d
	andl	$13107, %edx
	orl	%edx, %r13d
	movl	$1, %edx
	movl	%r13d, %r14d
	sall	$4, %r13d
	sarl	$4, %r14d
	andl	$61680, %r13d
	sall	%cl, %edx
	andl	$3855, %r14d
	movl	%r9d, %ecx
	movslq	%edx, %rdx
	orl	%r13d, %r14d
	subl	%eax, %ecx
	sall	$9, %eax
	movl	%r14d, %r13d
	sall	$8, %r14d
	orl	%r11d, %eax
	sarl	$8, %r13d
	movzwl	%r14w, %r14d
	orl	%r14d, %r13d
	sarl	%cl, %r13d
	movslq	%r13d, %rcx
	.p2align 4,,10
.L2052:
	movw	%ax, (%rsi,%rcx,2)
	addq	%rdx, %rcx
	cmpl	$511, %ecx
	jle	.L2052
	jmp	.L2051
	.p2align 4,,10
.L2085:
	movl	$2, %ecx
	movl	$14, %edi
	jmp	.L2063
.L2170:
	movl	%r10d, %ecx
	movl	%eax, (%rdx)
	movl	%eax, -4(%rdx,%rcx)
	jmp	.L2076
.L2171:
	movl	%r10d, %ecx
	movw	%ax, -2(%rdx,%rcx)
	jmp	.L2076
.L2173:
	movl	48(%rsp), %r8d
	leaq	52(%r15), %rcx
	movq	32(%rsp), %rdx
	call	_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi
	testl	%eax, %eax
	je	.L2021
	movl	48(%rsp), %edx
	leaq	2072(%r15), %rcx
	addq	32(%rsp), %rdx
	movl	52(%rsp), %r8d
	call	_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.L2021
	.seh_endproc
	.p2align 4,,15
	.def	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg:
.LFB878:
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$24, %ebp
	movq	%rcx, %rbx
	jmp	.L2192
	.p2align 4,,10
.L2178:
	movl	18468(%rbx), %edx
	movl	%ebp, %ecx
	subl	%edx, %ecx
	addl	$8, %edx
	sall	%cl, %esi
	movl	%edx, 18468(%rbx)
	orl	%esi, 18464(%rbx)
	cmpl	$24, %edx
	jg	.L2177
.L2192:
	movl	18476(%rbx), %ecx
	xorl	%esi, %esi
	testl	%ecx, %ecx
	jne	.L2178
	movq	(%rbx), %rdi
	movq	184(%rdi), %rax
	cmpq	192(%rdi), %rax
	jb	.L2203
	movl	48(%rdi), %esi
	testl	%esi, %esi
	je	.L2178
	leaq	56(%rdi), %r12
	movq	40(%rdi), %rcx
	movl	52(%rdi), %r8d
	movq	%r12, %rdx
	call	*16(%rdi)
	movslq	%eax, %rsi
	leaq	57(%rdi), %rax
	testl	%esi, %esi
	jne	.L2181
	movl	$0, 48(%rdi)
	movb	$0, 56(%rdi)
	movq	%rax, 192(%rdi)
	movq	%rax, 184(%rdi)
	jmp	.L2178
	.p2align 4,,10
.L2203:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rdi)
	movzbl	(%rax), %esi
.L2180:
	cmpl	$255, %esi
	jne	.L2178
	movq	(%rbx), %rdi
	movq	184(%rdi), %rax
	cmpq	192(%rdi), %rax
	jb	.L2202
	movl	48(%rdi), %edx
	testl	%edx, %edx
	je	.L2178
	leaq	56(%rdi), %r12
	movq	40(%rdi), %rcx
	movq	%r12, %rdx
	movl	52(%rdi), %r8d
	call	*16(%rdi)
	leaq	57(%rdi), %rdx
	testl	%eax, %eax
	jne	.L2185
	movl	$0, 48(%rdi)
	movb	$0, 56(%rdi)
	movq	%rdx, 192(%rdi)
	movq	%rdx, 184(%rdi)
	jmp	.L2178
	.p2align 4,,10
.L2181:
	addq	%rsi, %r12
	movq	%rax, 184(%rdi)
	movzbl	56(%rdi), %esi
	movq	%r12, 192(%rdi)
	jmp	.L2180
.L2186:
	testl	%ecx, %ecx
	je	.L2178
	movb	%cl, 18472(%rbx)
	movl	$1, 18476(%rbx)
.L2177:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L2202:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rdi)
	movzbl	(%rax), %ecx
.L2183:
	cmpl	$255, %ecx
	jne	.L2186
	movq	(%rbx), %rdi
	movq	184(%rdi), %rax
	cmpq	192(%rdi), %rax
	jb	.L2202
	movl	48(%rdi), %eax
	testl	%eax, %eax
	je	.L2178
	leaq	56(%rdi), %r12
	movq	40(%rdi), %rcx
	movq	%r12, %rdx
	movl	52(%rdi), %r8d
	call	*16(%rdi)
	leaq	57(%rdi), %rdx
	testl	%eax, %eax
	jne	.L2185
	movl	$0, 48(%rdi)
	movl	$255, %esi
	movb	$0, 56(%rdi)
	movq	%rdx, 192(%rdi)
	movq	%rdx, 184(%rdi)
	jmp	.L2178
	.p2align 4,,10
.L2185:
	cltq
	movzbl	56(%rdi), %ecx
	movq	%rdx, 184(%rdi)
	addq	%rax, %r12
	movq	%r12, 192(%rdi)
	jmp	.L2183
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC58:
	.ascii "(((j->code_buffer) >> (32 - h->size[c])) & stbi__bmask[h->size[c]]) == h->code[c]\0"
.LC59:
	.ascii "bad huffman code\0"
	.text
	.p2align 4,,15
	.def	_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt.part.24;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt.part.24
_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt.part.24:
.LFB8035:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	_ZL19stbi__jpeg_dezigzag(%rip), %rsi
	movl	$1, %r13d
	movq	160(%rsp), %rdi
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%r8, %r14
	movq	%r9, %r12
	jmp	.L2217
	.p2align 4,,10
.L2205:
	movl	18464(%rbx), %eax
	movl	%eax, %edx
	shrl	$23, %edx
	movl	%edx, %ecx
	movswl	(%r12,%rcx,2), %r9d
	testl	%r9d, %r9d
	movl	%r9d, %ecx
	je	.L2208
.L2221:
	movl	%r9d, %edx
	andl	$15, %ecx
	sarl	$8, %r9d
	sarl	$4, %edx
	sall	%cl, %eax
	subl	%ecx, %r8d
	andl	$15, %edx
	movl	%eax, 18464(%rbx)
	addl	%r13d, %edx
	movl	%r8d, 18468(%rbx)
	leal	1(%rdx), %r13d
	movslq	%edx, %rdx
	movzbl	(%rsi,%rdx), %eax
	imulw	(%rdi,%rax,2), %r9w
	movw	%r9w, 0(%rbp,%rax,2)
.L2207:
	cmpl	$63, %r13d
	jg	.L2215
.L2217:
	movl	18468(%rbx), %r8d
	cmpl	$15, %r8d
	jg	.L2205
	movq	%rbx, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%rbx), %eax
	movl	18468(%rbx), %r8d
	movl	%eax, %edx
	shrl	$23, %edx
	movl	%edx, %ecx
	movswl	(%r12,%rcx,2), %r9d
	testl	%r9d, %r9d
	movl	%r9d, %ecx
	jne	.L2221
	cmpl	$15, %r8d
	jg	.L2208
	movq	%rbx, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%rbx), %eax
	movl	18468(%rbx), %r8d
	movl	%eax, %edx
	shrl	$23, %edx
.L2208:
	movslq	%edx, %rdx
	movzbl	(%r14,%rdx), %edx
	cmpl	$255, %edx
	je	.L2209
	movzbl	1280(%r14,%rdx), %ecx
	cmpl	%r8d, %ecx
	jg	.L2210
	sall	%cl, %eax
	subl	%ecx, %r8d
	movl	%eax, 18464(%rbx)
	movl	%r8d, 18468(%rbx)
	movzbl	1024(%r14,%rdx), %edx
.L2211:
	movl	%edx, %r15d
	andl	$15, %r15d
	jne	.L2232
	cmpl	$240, %edx
	jne	.L2215
	addl	$16, %r13d
	cmpl	$63, %r13d
	jle	.L2217
	.p2align 4,,10
.L2215:
	movl	$1, %eax
.L2204:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L2209:
	movl	%eax, %edx
	shrl	$16, %edx
	cmpl	1580(%r14), %edx
	jb	.L2222
	cmpl	%edx, 1584(%r14)
	ja	.L2223
	cmpl	%edx, 1588(%r14)
	ja	.L2224
	cmpl	1592(%r14), %edx
	jb	.L2225
	cmpl	1596(%r14), %edx
	jb	.L2226
	cmpl	1600(%r14), %edx
	jb	.L2227
	cmpl	1604(%r14), %edx
	jb	.L2228
	subl	$16, %r8d
	movl	%r8d, 18468(%rbx)
.L2210:
	leaq	.LC59(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2204
	.p2align 4,,10
.L2232:
	sarl	$4, %edx
	addl	%r13d, %edx
	cmpl	%r8d, %r15d
	leal	1(%rdx), %r13d
	movslq	%edx, %rdx
	movzbl	(%rsi,%rdx), %edx
	jg	.L2233
.L2216:
	movl	%eax, %r9d
	movl	%r15d, %ecx
	movslq	%r15d, %r11
	roll	%cl, %r9d
	sarl	$31, %eax
	subl	%r15d, %r8d
	leaq	_ZL11stbi__bmask(%rip), %rcx
	notl	%eax
	movl	%r8d, 18468(%rbx)
	movl	(%rcx,%r11,4), %r10d
	movl	%r10d, %ecx
	notl	%ecx
	andl	%r9d, %ecx
	andl	%r10d, %r9d
	movl	%ecx, 18464(%rbx)
	movzbl	%dl, %ecx
	leaq	_ZL11stbi__jbias(%rip), %rdx
	andl	(%rdx,%r11,4), %eax
	leal	(%rax,%r9), %eax
	imulw	(%rdi,%rcx,2), %ax
	movw	%ax, 0(%rbp,%rcx,2)
	jmp	.L2207
	.p2align 4,,10
.L2233:
	movq	%rbx, %rcx
	movb	%dl, 44(%rsp)
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%rbx), %eax
	movl	18468(%rbx), %r8d
	movzbl	44(%rsp), %edx
	jmp	.L2216
	.p2align 4,,10
.L2222:
	movl	$1023, %edx
	movl	$22, %ecx
	movl	$10, %r9d
.L2212:
	cmpl	%r8d, %r9d
	jg	.L2210
	leaq	_ZL11stbi__bmask(%rip), %r11
	movl	%eax, %r15d
	movl	%eax, %r10d
	shrl	%cl, %r15d
	movl	$32, %ecx
	andl	%edx, %r15d
	movslq	%r9d, %rdx
	addl	1612(%r14,%rdx,4), %r15d
	movslq	%r15d, %r15
	movzbl	1280(%r14,%r15), %edx
	subl	%edx, %ecx
	shrl	%cl, %r10d
	movl	%r10d, %ecx
	andl	(%r11,%rdx,4), %ecx
	movl	%ecx, %edx
	movzwl	512(%r14,%r15,2), %ecx
	cmpl	%ecx, %edx
	je	.L2213
	movl	$1837, %r8d
	movl	%r9d, 44(%rsp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC58(%rip), %rcx
	call	_assert
	movl	18468(%rbx), %r8d
	movl	18464(%rbx), %eax
	movl	44(%rsp), %r9d
.L2213:
	movl	%r9d, %ecx
	subl	%r9d, %r8d
	sall	%cl, %eax
	movl	%r8d, 18468(%rbx)
	movl	%eax, 18464(%rbx)
	movzbl	1024(%r14,%r15), %edx
	jmp	.L2211
	.p2align 4,,10
.L2223:
	movl	$2047, %edx
	movl	$21, %ecx
	movl	$11, %r9d
	jmp	.L2212
	.p2align 4,,10
.L2224:
	movl	$4095, %edx
	movl	$20, %ecx
	movl	$12, %r9d
	jmp	.L2212
	.p2align 4,,10
.L2225:
	movl	$8191, %edx
	movl	$19, %ecx
	movl	$13, %r9d
	jmp	.L2212
	.p2align 4,,10
.L2226:
	movl	$16383, %edx
	movl	$18, %ecx
	movl	$14, %r9d
	jmp	.L2212
	.p2align 4,,10
.L2227:
	movl	$32767, %edx
	movl	$17, %ecx
	movl	$15, %r9d
	jmp	.L2212
.L2228:
	movl	$65535, %edx
	movl	$16, %ecx
	movl	$16, %r9d
	jmp	.L2212
	.seh_endproc
	.section .rdata,"dr"
.LC60:
	.ascii "expected marker\0"
.LC61:
	.ascii "bad DRI len\0"
.LC62:
	.ascii "bad DQT type\0"
.LC63:
	.ascii "bad DQT table\0"
.LC64:
	.ascii "bad DHT header\0"
.LC65:
	.ascii "bad COM len\0"
.LC66:
	.ascii "bad APP len\0"
.LC67:
	.ascii "unknown marker\0"
	.text
	.p2align 4,,15
	.def	_ZL20stbi__process_markerP10stbi__jpegi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbi__process_markerP10stbi__jpegi
_ZL20stbi__process_markerP10stbi__jpegi:
.LFB894:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$136, %rsp
	.seh_stackalloc	136
	.seh_endprologue
	cmpl	$219, %edx
	movq	%rcx, %rbx
	je	.L2236
	jle	.L2368
	cmpl	$221, %edx
	je	.L2239
	cmpl	$255, %edx
	jne	.L2235
	leaq	.LC60(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L2234:
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L2239:
	movq	(%rcx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$4, %eax
	je	.L2242
	leaq	.LC61(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2234
.L2368:
	cmpl	$196, %edx
	jne	.L2235
	movq	(%rcx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	leal	-2(%rax), %edi
	testl	%edi, %edi
	jle	.L2271
	leaq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	.p2align 4,,10
.L2297:
	movq	(%rbx), %r15
	movq	184(%r15), %rax
	movq	192(%r15), %rdx
	cmpq	%rdx, %rax
	jb	.L2369
	movl	48(%r15), %r13d
	testl	%r13d, %r13d
	je	.L2313
	leaq	56(%r15), %rsi
	movq	40(%r15), %rcx
	movq	%rsi, %rdx
	movl	52(%r15), %r8d
	call	*16(%r15)
	leaq	57(%r15), %rdx
	movslq	%eax, %r13
	testl	%r13d, %r13d
	jne	.L2275
	movl	$0, 48(%r15)
	xorl	%ebp, %ebp
	movb	$0, 56(%r15)
	movq	%rdx, 192(%r15)
	movq	%rdx, 184(%r15)
	movl	$0, 60(%rsp)
.L2276:
	movzbl	%bpl, %ebp
	movq	(%rbx), %r15
	imulq	$1680, %rbp, %rax
	movq	192(%r15), %rdx
	movq	%rax, 40(%rsp)
	movq	184(%r15), %rax
.L2274:
	movq	48(%rsp), %r14
	leaq	128(%rsp), %rsi
	xorl	%r12d, %r12d
	jmp	.L2310
	.p2align 4,,10
.L2279:
	movl	48(%r15), %eax
	testl	%eax, %eax
	je	.L2280
	leaq	56(%r15), %rbp
	movq	40(%r15), %rcx
	movq	%rbp, %rdx
	movl	52(%r15), %r8d
	call	*16(%r15)
	leaq	57(%r15), %rdx
	testl	%eax, %eax
	jne	.L2281
	movl	$0, 48(%r15)
	movq	%rdx, %rbp
	movb	$0, 56(%r15)
.L2282:
	movq	%rbp, 192(%r15)
	movq	%rdx, 184(%r15)
.L2280:
	movl	%eax, (%r14)
	addq	$4, %r14
	cmpq	%r14, %rsi
	je	.L2370
.L2283:
	movq	(%rbx), %r15
	movq	184(%r15), %rax
	movq	192(%r15), %rdx
.L2310:
	cmpq	%rax, %rdx
	jbe	.L2279
	leaq	1(%rax), %rdx
	addq	$4, %r14
	movq	%rdx, 184(%r15)
	movzbl	(%rax), %eax
	movl	%eax, -4(%r14)
	addl	%eax, %r12d
	cmpq	%r14, %rsi
	jne	.L2283
.L2370:
	leal	-17(%rdi), %eax
	testl	%r13d, %r13d
	movl	%eax, 56(%rsp)
	movq	40(%rsp), %rax
	jne	.L2284
	movq	48(%rsp), %rdx
	leaq	8(%rbx,%rax), %rcx
	call	_ZL19stbi__build_huffmanP13stbi__huffmanPi
	testl	%eax, %eax
	je	.L2367
	movslq	60(%rsp), %rbp
	imulq	$1680, %rbp, %rax
	testl	%r12d, %r12d
	leaq	1032(%rbx,%rax), %r14
	je	.L2286
.L2287:
	xorl	%r15d, %r15d
	jmp	.L2293
	.p2align 4,,10
.L2289:
	movl	48(%rsi), %r8d
	testl	%r8d, %r8d
	je	.L2314
	leaq	56(%rsi), %rdi
	movq	40(%rsi), %rcx
	movq	%rdi, %rdx
	movl	52(%rsi), %r8d
	call	*16(%rsi)
	leaq	57(%rsi), %rdx
	testl	%eax, %eax
	jne	.L2291
	movl	$0, 48(%rsi)
	movq	%rdx, %rdi
	movb	$0, 56(%rsi)
.L2292:
	movq	%rdi, 192(%rsi)
	movq	%rdx, 184(%rsi)
.L2290:
	movb	%al, (%r14,%r15)
	addq	$1, %r15
	cmpl	%r15d, %r12d
	jle	.L2371
.L2293:
	movq	(%rbx), %rsi
	movq	184(%rsi), %rax
	cmpq	192(%rsi), %rax
	jnb	.L2289
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rsi)
	movzbl	(%rax), %eax
	movb	%al, (%r14,%r15)
	addq	$1, %r15
	cmpl	%r15d, %r12d
	jg	.L2293
.L2371:
	testl	%r13d, %r13d
	je	.L2286
	movq	40(%rsp), %rax
	leaq	6728(%rbx,%rax), %rsi
.L2288:
	movq	%rbp, %r14
	xorl	%r10d, %r10d
	movl	$9, %r15d
	salq	$10, %r14
	leaq	13960(%rbx,%r14), %rbp
	movl	$1, %r14d
	.p2align 4,,10
.L2296:
	movzbl	(%rsi,%r10), %eax
	xorl	%ecx, %ecx
	movl	%r10d, %edx
	movw	%cx, 0(%rbp,%r10,2)
	cmpb	$-1, %al
	je	.L2294
	movzbl	1024(%rsi,%rax), %r8d
	movl	%r8d, %r11d
	andl	$15, %r11d
	je	.L2294
	movzbl	1280(%rsi,%rax), %ecx
	movzbl	%r11b, %r9d
	movl	%ecx, %eax
	addl	%r9d, %ecx
	cmpl	$9, %ecx
	jg	.L2294
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%r15d, %ecx
	subl	%r9d, %ecx
	andl	$511, %edx
	sarl	%cl, %edx
	leal	-1(%r9), %ecx
	movl	%r14d, %r9d
	movl	%edx, %edi
	sall	%cl, %r9d
	cmpl	%r9d, %edx
	jge	.L2295
	movl	$-1, %edi
	movl	%r11d, %ecx
	sall	%cl, %edi
	leal	1(%rdx,%rdi), %edi
	movl	%edi, %edx
.L2295:
	subl	$-128, %edi
	cmpl	$255, %edi
	ja	.L2294
	movzbl	%r11b, %r11d
	andw	$240, %r8w
	sall	$8, %edx
	addl	%eax, %r11d
	addl	%r11d, %r8d
	addl	%r8d, %edx
	movw	%dx, 0(%rbp,%r10,2)
	.p2align 4,,10
.L2294:
	addq	$1, %r10
	cmpq	$512, %r10
	jne	.L2296
.L2286:
	movl	56(%rsp), %edi
	subl	%r12d, %edi
	testl	%edi, %edi
	jg	.L2297
.L2271:
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	jmp	.L2234
	.p2align 4,,10
.L2281:
	cltq
	addq	%rax, %rbp
	movzbl	56(%r15), %eax
	addl	%eax, %r12d
	jmp	.L2282
	.p2align 4,,10
.L2291:
	cltq
	addq	%rax, %rdi
	movzbl	56(%rsi), %eax
	jmp	.L2292
	.p2align 4,,10
.L2284:
	movq	48(%rsp), %rdx
	leaq	6728(%rbx,%rax), %rsi
	movq	%rsi, %rcx
	call	_ZL19stbi__build_huffmanP13stbi__huffmanPi
	testl	%eax, %eax
	je	.L2367
	testl	%r12d, %r12d
	movslq	60(%rsp), %rbp
	je	.L2288
	imulq	$1680, %rbp, %rax
	leaq	7752(%rbx,%rax), %r14
	jmp	.L2287
	.p2align 4,,10
.L2369:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%r15)
	movzbl	(%rax), %r13d
	movl	%r13d, %ebp
	sarl	$4, %r13d
	andl	$15, %ebp
	cmpl	$1, %r13d
	movzbl	%bpl, %eax
	movl	%eax, 60(%rsp)
	setg	%al
	cmpb	$3, %bpl
	seta	%dl
	orl	%edx, %eax
.L2273:
	testb	%al, %al
	je	.L2276
	leaq	.LC64(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L2367:
	xorl	%eax, %eax
	jmp	.L2234
.L2314:
	xorl	%eax, %eax
	jmp	.L2290
.L2275:
	addq	%r13, %rsi
	movzbl	56(%r15), %r13d
	movq	%rdx, 184(%r15)
	movq	%rsi, 192(%r15)
	movl	%r13d, %ebp
	sarl	$4, %r13d
	andl	$15, %ebp
	cmpl	$1, %r13d
	movzbl	%bpl, %eax
	movl	%eax, 60(%rsp)
	setg	%al
	cmpb	$3, %bpl
	seta	%cl
	orl	%ecx, %eax
	jmp	.L2273
.L2235:
	leal	-224(%rdx), %eax
	cmpl	$15, %eax
	jbe	.L2317
	cmpl	$254, %edx
	je	.L2317
	leaq	.LC67(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2234
.L2236:
	movq	(%rcx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	subl	$2, %eax
	testl	%eax, %eax
	movl	%eax, 40(%rsp)
	jle	.L2243
	leaq	64+_ZL19stbi__jpeg_dezigzag(%rip), %r13
	.p2align 4,,10
.L2244:
	movq	(%rbx), %rsi
	movq	184(%rsi), %rcx
	movq	192(%rsi), %rdx
	cmpq	%rdx, %rcx
	jb	.L2372
	movl	48(%rsi), %r14d
	testl	%r14d, %r14d
	je	.L2311
	leaq	56(%rsi), %rdi
	movq	40(%rsi), %rcx
	movl	52(%rsi), %r8d
	movq	%rdi, %rdx
	call	*16(%rsi)
	leaq	57(%rsi), %rcx
	testl	%eax, %eax
	jne	.L2248
	movl	$0, 48(%rsi)
	xorl	%r14d, %r14d
	movb	$0, 56(%rsi)
	movq	%rcx, 192(%rsi)
	movq	%rcx, 184(%rsi)
.L2249:
	movq	(%rbx), %rsi
	movq	184(%rsi), %rcx
	movq	192(%rsi), %rdx
.L2247:
	leaq	_ZL19stbi__jpeg_dezigzag(%rip), %rbp
	movslq	%eax, %r12
	salq	$6, %r12
	jmp	.L2268
	.p2align 4,,10
.L2374:
	cmpq	%rdx, %rcx
	jb	.L2373
	movl	48(%rsi), %edi
	testl	%edi, %edi
	je	.L2262
	leaq	56(%rsi), %rdi
	movl	52(%rsi), %r8d
	movq	40(%rsi), %rcx
	movq	%rdi, %rdx
	call	*16(%rsi)
	leaq	57(%rsi), %r8
	testl	%eax, %eax
	jne	.L2256
	movl	$0, 48(%rsi)
	movq	%r8, %rdx
	movb	$0, 56(%rsi)
.L2257:
	movzbl	56(%rsi), %edi
	movq	%rdx, 192(%rsi)
	movq	%r8, 184(%rsi)
	sall	$8, %edi
	cmpq	%rdx, %r8
	jb	.L2258
.L2376:
	movl	48(%rsi), %r11d
	testl	%r11d, %r11d
	je	.L2262
	leaq	56(%rsi), %r15
	movq	40(%rsi), %rcx
	movq	%r15, %rdx
	movl	52(%rsi), %r8d
	call	*16(%rsi)
	leaq	57(%rsi), %rdx
	testl	%eax, %eax
	jne	.L2260
	movl	$0, 48(%rsi)
	movq	%rdx, %r9
	movb	$0, 56(%rsi)
.L2261:
	movq	%r9, 192(%rsi)
	movq	%rdx, 184(%rsi)
.L2262:
	movzbl	0(%rbp), %eax
	addq	$1, %rbp
	cmpq	%rbp, %r13
	leaq	6720(%rax,%r12), %rax
	movw	%di, 8(%rbx,%rax,2)
	je	.L2267
	movq	(%rbx), %rsi
	movq	184(%rsi), %rcx
	movq	192(%rsi), %rdx
.L2268:
	testl	%r14d, %r14d
	jne	.L2374
	cmpq	%rdx, %rcx
	jb	.L2375
	movl	48(%rsi), %r10d
	testl	%r10d, %r10d
	je	.L2312
	leaq	56(%rsi), %rdi
	movq	40(%rsi), %rcx
	movq	%rdi, %rdx
	movl	52(%rsi), %r8d
	call	*16(%rsi)
	leaq	57(%rsi), %rdx
	testl	%eax, %eax
	jne	.L2265
	movl	$0, 48(%rsi)
	movq	%rdx, %rax
	xorl	%edi, %edi
	movb	$0, 56(%rsi)
.L2266:
	movq	%rax, 192(%rsi)
	movq	%rdx, 184(%rsi)
	jmp	.L2262
	.p2align 4,,10
.L2373:
	leaq	1(%rcx), %r8
	movq	%r8, 184(%rsi)
	movzbl	(%rcx), %edi
	sall	$8, %edi
	cmpq	%rdx, %r8
	jnb	.L2376
.L2258:
	leaq	1(%r8), %rax
	movq	%rax, 184(%rsi)
	movzbl	(%r8), %eax
	addl	%eax, %edi
	jmp	.L2262
	.p2align 4,,10
.L2375:
	leaq	1(%rcx), %rax
	movq	%rax, 184(%rsi)
	movzbl	(%rcx), %edi
	jmp	.L2262
	.p2align 4,,10
.L2256:
	cltq
	leaq	(%rdi,%rax), %rdx
	jmp	.L2257
	.p2align 4,,10
.L2260:
	cltq
	leaq	(%r15,%rax), %r9
	movzbl	56(%rsi), %eax
	addl	%eax, %edi
	jmp	.L2261
	.p2align 4,,10
.L2265:
	cltq
	addq	%rdi, %rax
	movzbl	56(%rsi), %edi
	jmp	.L2266
	.p2align 4,,10
.L2312:
	xorl	%edi, %edi
	jmp	.L2262
	.p2align 4,,10
.L2267:
	testl	%r14d, %r14d
	jne	.L2269
	subl	$65, 40(%rsp)
	movl	40(%rsp), %eax
	testl	%eax, %eax
	jg	.L2244
.L2243:
	movl	40(%rsp), %r9d
	xorl	%eax, %eax
	testl	%r9d, %r9d
	sete	%al
	jmp	.L2234
.L2372:
	leaq	1(%rcx), %rax
	movq	%rax, 184(%rsi)
	movzbl	(%rcx), %r14d
	movl	%r14d, %edx
	sarl	$4, %r14d
	andl	$15, %edx
	movzbl	%dl, %eax
.L2246:
	cmpl	$1, %r14d
	jg	.L2377
	cmpb	$3, %dl
	jbe	.L2249
	leaq	.LC63(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2234
.L2269:
	subl	$129, 40(%rsp)
	movl	40(%rsp), %eax
	testl	%eax, %eax
	jg	.L2244
	jmp	.L2243
	.p2align 4,,10
.L2248:
	movzbl	56(%rsi), %r14d
	cltq
	movq	%rcx, 184(%rsi)
	addq	%rax, %rdi
	movq	%rdi, 192(%rsi)
	movl	%r14d, %edx
	sarl	$4, %r14d
	andl	$15, %edx
	movzbl	%dl, %eax
	jmp	.L2246
.L2317:
	movq	(%rbx), %rcx
	movl	%edx, 40(%rsp)
	call	_ZL13stbi__get16beP13stbi__context
	movl	40(%rsp), %edx
	cmpl	$1, %eax
	movl	%eax, %esi
	jle	.L2378
	leal	-2(%rax), %eax
	cmpl	$224, %edx
	jne	.L2302
	cmpl	$4, %eax
	jle	.L2302
	leaq	_ZZL20stbi__process_markerP10stbi__jpegiE3tag(%rip), %rdi
	movl	$1, %ebp
	xorl	%r12d, %r12d
	leaq	5(%rdi), %r13
.L2304:
	movq	(%rbx), %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	%al, (%rdi)
	cmovne	%r12d, %ebp
	addq	$1, %rdi
	cmpq	%r13, %rdi
	jne	.L2304
	leal	-7(%rsi), %eax
	testl	%ebp, %ebp
	movq	(%rbx), %rcx
	je	.L2305
	movl	$1, 18504(%rbx)
.L2305:
	testl	%eax, %eax
	jns	.L2309
	movq	192(%rcx), %rax
	movq	%rax, 184(%rcx)
	movl	$1, %eax
	jmp	.L2234
.L2313:
	movl	$0, 60(%rsp)
	movq	$0, 40(%rsp)
	jmp	.L2274
.L2311:
	xorl	%eax, %eax
	jmp	.L2247
.L2377:
	leaq	.LC62(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2234
.L2242:
	movq	(%rbx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movl	%eax, 18536(%rbx)
	movl	$1, %eax
	jmp	.L2234
.L2378:
	cmpl	$254, %edx
	je	.L2379
	leaq	.LC66(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2234
.L2302:
	cmpl	$238, %edx
	jne	.L2306
	cmpl	$11, %eax
	jle	.L2306
	leaq	_ZZL20stbi__process_markerP10stbi__jpegiE3tag_0(%rip), %rdi
	movl	$1, %ebp
	xorl	%r12d, %r12d
	leaq	6(%rdi), %r13
.L2308:
	movq	(%rbx), %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	%al, (%rdi)
	cmovne	%r12d, %ebp
	addq	$1, %rdi
	cmpq	%rdi, %r13
	jne	.L2308
	leal	-8(%rsi), %eax
	testl	%ebp, %ebp
	movq	(%rbx), %rcx
	je	.L2305
	call	_ZL10stbi__get8P13stbi__context
	movq	(%rbx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	(%rbx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	(%rbx), %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	(%rbx), %rcx
	movzbl	%al, %eax
	movl	%eax, 18508(%rbx)
	leal	-14(%rsi), %eax
	jmp	.L2305
	.p2align 4,,10
.L2306:
	movq	(%rbx), %rcx
.L2309:
	movl	%eax, %edx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movl	$1, %eax
	jmp	.L2234
.L2379:
	leaq	.LC65(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2234
	.seh_endproc
	.section .rdata,"dr"
.LC68:
	.ascii "no SOI\0"
.LC69:
	.ascii "no SOF\0"
.LC70:
	.ascii "bad SOF len\0"
.LC71:
	.ascii "only 8-bit\0"
.LC72:
	.ascii "no header height\0"
.LC73:
	.ascii "0 width\0"
.LC74:
	.ascii "bad component count\0"
.LC75:
	.ascii "bad H\0"
.LC76:
	.ascii "bad V\0"
.LC77:
	.ascii "bad TQ\0"
.LC78:
	.ascii "too large\0"
	.text
	.p2align 4,,15
	.def	_ZL24stbi__decode_jpeg_headerP10stbi__jpegi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL24stbi__decode_jpeg_headerP10stbi__jpegi
_ZL24stbi__decode_jpeg_headerP10stbi__jpegi:
.LFB898:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movabsq	$-4294967296, %rax
	movq	%rax, 18504(%rcx)
	movq	%rcx, %rsi
	movl	%edx, %edi
	movb	$-1, 18472(%rcx)
	movq	(%rcx), %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$-1, %al
	jne	.L2386
.L2381:
	movq	(%rsi), %rbx
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L2468
	movl	48(%rbx), %r8d
	testl	%r8d, %r8d
	je	.L2386
	leaq	56(%rbx), %rbp
	movq	40(%rbx), %rcx
	movq	%rbp, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	leaq	57(%rbx), %rdx
	testl	%eax, %eax
	jne	.L2387
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rdx, 192(%rbx)
	movq	%rdx, 184(%rbx)
.L2386:
	leaq	.LC68(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L2380:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L2468:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %ecx
.L2385:
	cmpb	$-1, %cl
	je	.L2381
	cmpb	$-40, %cl
	jne	.L2386
	cmpl	$1, %edi
	je	.L2428
	movzbl	18472(%rsi), %eax
	cmpb	$-1, %al
	je	.L2389
	movb	$-1, 18472(%rsi)
	jmp	.L2397
	.p2align 4,,10
.L2469:
	movb	$-1, 18472(%rsi)
.L2465:
	movzbl	%al, %eax
	.p2align 4,,10
.L2397:
	leal	-192(%rax), %edx
	cmpl	$2, %edx
	jbe	.L2392
	movl	%eax, %edx
	movq	%rsi, %rcx
	call	_ZL20stbi__process_markerP10stbi__jpegi
	testl	%eax, %eax
	je	.L2380
	movzbl	18472(%rsi), %eax
	cmpb	$-1, %al
	jne	.L2469
	movq	(%rsi), %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$-1, %al
	jne	.L2470
.L2395:
	movq	(%rsi), %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$-1, %al
	jne	.L2465
	movq	(%rsi), %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$-1, %al
	je	.L2395
	jmp	.L2465
	.p2align 4,,10
.L2428:
	movl	$1, %eax
	jmp	.L2380
	.p2align 4,,10
.L2387:
	cltq
	movzbl	56(%rbx), %ecx
	movq	%rdx, 184(%rbx)
	addq	%rax, %rbp
	movq	%rbp, 192(%rbx)
	jmp	.L2385
	.p2align 4,,10
.L2470:
	movq	(%rsi), %rbx
	movq	16(%rbx), %rax
.L2396:
	testq	%rax, %rax
	je	.L2401
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L2400
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L2399
.L2401:
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jnb	.L2399
.L2400:
	movzbl	18472(%rsi), %ecx
	cmpb	$-1, %cl
	je	.L2402
	movb	$-1, 18472(%rsi)
.L2403:
	movzbl	%cl, %eax
	jmp	.L2397
	.p2align 4,,10
.L2402:
	movq	(%rsi), %rbx
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L2471
	movl	48(%rbx), %edx
	movq	16(%rbx), %rax
	testl	%edx, %edx
	je	.L2396
	leaq	56(%rbx), %rbp
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*%rax
	leaq	57(%rbx), %rcx
	testl	%eax, %eax
	jne	.L2407
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rcx, 192(%rbx)
	movq	%rcx, 184(%rbx)
	movq	(%rsi), %rbx
.L2408:
	movq	16(%rbx), %rax
	jmp	.L2396
	.p2align 4,,10
.L2471:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edx
.L2405:
	cmpb	$-1, %dl
	movq	(%rsi), %rbx
	jne	.L2408
	.p2align 4,,10
.L2409:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L2472
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L2397
	leaq	56(%rbx), %rbp
	movq	40(%rbx), %rcx
	movq	%rbp, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	leaq	57(%rbx), %rdx
	testl	%eax, %eax
	jne	.L2413
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rdx, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L2397
	.p2align 4,,10
.L2472:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %ecx
.L2411:
	cmpb	$-1, %cl
	jne	.L2403
	movq	(%rsi), %rbx
	jmp	.L2409
	.p2align 4,,10
.L2413:
	cltq
	movzbl	56(%rbx), %ecx
	movq	%rdx, 184(%rbx)
	addq	%rbp, %rax
	movq	%rax, 192(%rbx)
	jmp	.L2411
	.p2align 4,,10
.L2407:
	cltq
	movzbl	56(%rbx), %edx
	movq	%rcx, 184(%rbx)
	addq	%rax, %rbp
	movq	%rbp, 192(%rbx)
	jmp	.L2405
	.p2align 4,,10
.L2399:
	leaq	.LC69(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2380
	.p2align 4,,10
.L2389:
	movq	(%rsi), %rcx
	call	_ZL10stbi__get8P13stbi__context
	movl	%eax, %edx
	movl	$255, %eax
	cmpb	$-1, %dl
	jne	.L2397
	.p2align 4,,10
.L2391:
	movq	(%rsi), %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$-1, %al
	je	.L2391
	jmp	.L2465
.L2392:
	movq	(%rsi), %rbx
	cmpl	$194, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 18480(%rsi)
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$10, %eax
	movl	%eax, %ebp
	jg	.L2414
.L2421:
	leaq	.LC70(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2380
.L2414:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$8, %al
	je	.L2415
	leaq	.LC71(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2380
.L2415:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	testl	%eax, %eax
	movl	%eax, 4(%rbx)
	jne	.L2416
	leaq	.LC72(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2380
.L2416:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	testl	%eax, %eax
	movl	%eax, (%rbx)
	jne	.L2417
	leaq	.LC73(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2380
.L2417:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	subl	$3, %eax
	cmpb	$1, %al
	jbe	.L2418
	cmpl	$1, %edx
	jne	.L2473
.L2418:
	movl	%edx, 8(%rbx)
	xorl	%eax, %eax
.L2420:
	cmpl	%eax, %edx
	jle	.L2419
	imulq	$96, %rax, %rcx
	addq	$1, %rax
	movq	$0, 18128(%rsi,%rcx)
	movq	$0, 18152(%rsi,%rcx)
	jmp	.L2420
.L2473:
	leaq	.LC74(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2380
.L2419:
	imull	$3, 8(%rbx), %eax
	addl	$8, %eax
	cmpl	%eax, %ebp
	jne	.L2421
	movl	$0, 18512(%rsi)
	leaq	18080(%rsi), %r14
	xorl	%ebp, %ebp
	leaq	_ZZL26stbi__process_frame_headerP10stbi__jpegiE3rgb(%rip), %r12
	jmp	.L2427
.L2477:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	movl	%eax, (%r14)
	cmpl	$3, 8(%rbx)
	je	.L2474
.L2423:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	sarl	$4, %edx
	cmpl	$4, %edx
	movl	%edx, 4(%r14)
	jg	.L2438
	testl	%edx, %edx
	je	.L2438
	andl	$15, %eax
	movzbl	%al, %edx
	subl	$1, %eax
	cmpb	$3, %al
	movl	%edx, 8(%r14)
	ja	.L2475
	movq	%rbx, %rcx
	addq	$1, %rbp
	addq	$96, %r14
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	movl	%eax, -84(%r14)
	cmpl	$3, %eax
	jg	.L2476
.L2427:
	movl	8(%rbx), %r13d
	cmpl	%ebp, %r13d
	jg	.L2477
	testl	%edi, %edi
	jne	.L2428
	movl	4(%rbx), %edx
	xorl	%r9d, %r9d
	movl	%r13d, %r8d
	movl	(%rbx), %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L2429
	leaq	18084(%rsi), %rbp
	xorl	%edx, %edx
	movl	$1, %r12d
	movq	%rbp, %rax
	movl	$1, %r14d
.L2430:
	cmpl	%edx, %r13d
	jle	.L2431
	movl	(%rax), %ecx
	cmpl	%ecx, %r14d
	cmovl	%ecx, %r14d
	movl	4(%rax), %ecx
	cmpl	%ecx, %r12d
	cmovl	%ecx, %r12d
	addl	$1, %edx
	addq	$96, %rax
	jmp	.L2430
.L2476:
	leaq	.LC77(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2380
.L2475:
	leaq	.LC76(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2380
.L2438:
	leaq	.LC75(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2380
.L2474:
	movzbl	(%r12,%rbp), %edx
	cmpl	%edx, %eax
	jne	.L2423
	addl	$1, 18512(%rsi)
	jmp	.L2423
.L2431:
	leal	0(,%r14,8), %r8d
	movl	%r14d, 18056(%rsi)
	xorl	%edx, %edx
	movl	$8, %r13d
	leal	0(,%r12,8), %ecx
	movl	%r12d, 18060(%rsi)
	movl	%r8d, 18072(%rsi)
	leal	-1(%r14), %r15d
	movl	%ecx, 18076(%rsi)
	movl	(%rbx), %eax
	leal	-1(%r8,%rax), %eax
	divl	%r8d
	xorl	%edx, %edx
	movl	%eax, 18064(%rsi)
	movl	4(%rbx), %eax
	leal	-1(%rcx,%rax), %eax
	divl	%ecx
	movl	%eax, 18068(%rsi)
	leal	-1(%r12), %eax
	movl	%eax, 44(%rsp)
.L2436:
	cmpl	%edi, 8(%rbx)
	jle	.L2428
	movl	(%rbx), %eax
	xorl	%edx, %edx
	movl	0(%rbp), %ecx
	movl	4(%rbp), %r8d
	imull	%ecx, %eax
	addl	%r15d, %eax
	divl	%r14d
	xorl	%edx, %edx
	movl	%eax, 24(%rbp)
	movl	4(%rbx), %eax
	imull	%r8d, %eax
	addl	44(%rsp), %eax
	divl	%r12d
	movl	%eax, 28(%rbp)
	imull	18064(%rsi), %ecx
	sall	$3, %ecx
	movl	%ecx, 32(%rbp)
	movl	18068(%rsi), %edx
	movq	$0, 76(%rbp)
	movq	$0, 60(%rbp)
	movq	$0, 68(%rbp)
	imull	%r8d, %edx
	movl	$15, %r8d
	sall	$3, %edx
	movl	%edx, 36(%rbp)
	call	_ZL17stbi__malloc_mad2iii
	testq	%rax, %rax
	movq	%rax, 52(%rbp)
	je	.L2466
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, 44(%rbp)
	cmpl	$0, 18480(%rsi)
	jne	.L2478
.L2434:
	addl	$1, %edi
	addq	$96, %rbp
	jmp	.L2436
.L2429:
	leaq	.LC78(%rip), %rdi
	movq	%rdi, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2380
.L2478:
	movl	32(%rbp), %ecx
	movl	$15, %r9d
	movl	$2, %r8d
	movl	36(%rbp), %r11d
	movl	%ecx, %eax
	cltd
	idivl	%r13d
	movl	%eax, 84(%rbp)
	movl	%r11d, %eax
	cltd
	idivl	%r13d
	movl	%r11d, %edx
	movl	%eax, 88(%rbp)
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, 60(%rbp)
	je	.L2466
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, 76(%rbp)
	jmp	.L2434
.L2466:
	leaq	.LC31(%rip), %rax
	movq	%rsi, %rcx
	leal	1(%rdi), %edx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	call	_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.127
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.L2380
	.seh_endproc
	.section .rdata,"dr"
.LC79:
	.ascii "bad SOS component count\0"
.LC80:
	.ascii "bad SOS len\0"
.LC81:
	.ascii "bad DC huff\0"
.LC82:
	.ascii "bad AC huff\0"
.LC83:
	.ascii "bad SOS\0"
	.align 8
.LC84:
	.ascii "n >= 0 && n < (int) (sizeof(stbi__bmask)/sizeof(*stbi__bmask))\0"
.LC85:
	.ascii "can't merge dc and ac\0"
.LC86:
	.ascii "bad DNL len\0"
.LC87:
	.ascii "bad DNL height\0"
	.text
	.p2align 4,,15
	.def	_ZL23stbi__decode_jpeg_imageP10stbi__jpeg;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23stbi__decode_jpeg_imageP10stbi__jpeg
_ZL23stbi__decode_jpeg_imageP10stbi__jpeg:
.LFB899:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	xorl	%edx, %edx
	movq	$0, 18136(%rcx)
	movq	%rcx, %r15
	movq	$0, 18144(%rcx)
	movq	$0, 18232(%rcx)
	movq	$0, 18240(%rcx)
	movq	$0, 18328(%rcx)
	movq	$0, 18336(%rcx)
	movq	$0, 18424(%rcx)
	movq	$0, 18432(%rcx)
	movl	$0, 18536(%rcx)
	call	_ZL24stbi__decode_jpeg_headerP10stbi__jpegi
	testl	%eax, %eax
	jne	.L2901
.L2480:
	movl	$0, 64(%rsp)
.L2479:
	movl	64(%rsp), %eax
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L2901:
	movzbl	18472(%r15), %eax
	cmpb	$-1, %al
	je	.L2481
	movb	$-1, 18472(%r15)
.L2482:
	cmpb	$-39, %al
	movzbl	%al, %edx
	je	.L2685
.L2485:
	movq	%r15, %r13
	.p2align 4,,10
.L2484:
	cmpl	$218, %edx
	je	.L2902
	cmpl	$220, %edx
	je	.L2903
.L2672:
	movq	%r13, %rcx
	call	_ZL20stbi__process_markerP10stbi__jpegi
	testl	%eax, %eax
	je	.L2480
.L2899:
	movzbl	18472(%r13), %ecx
.L2666:
	cmpb	$-1, %cl
	je	.L2674
.L2658:
	movb	$-1, 18472(%r13)
.L2675:
	cmpb	$-39, %cl
	movzbl	%cl, %edx
	jne	.L2484
	movq	%r13, %r15
.L2685:
	movl	18480(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L2904
.L2487:
	movl	$1, 64(%rsp)
	jmp	.L2479
	.p2align 4,,10
.L2903:
	movq	0(%r13), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	0(%r13), %rcx
	movl	%eax, %ebx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$4, %ebx
	je	.L2673
	leaq	.LC86(%rip), %rsi
	movq	%rsi, _ZL22stbi__g_failure_reason(%rip)
.L2673:
	movq	0(%r13), %rdx
	movzbl	18472(%r13), %ecx
	cmpl	%eax, 4(%rdx)
	je	.L2666
	leaq	.LC87(%rip), %rax
	cmpb	$-1, %cl
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jne	.L2658
.L2674:
	movq	0(%r13), %rbx
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L2905
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L2678
	leaq	56(%rbx), %rsi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rsi, %rdx
	call	*16(%rbx)
	leaq	57(%rbx), %rcx
	testl	%eax, %eax
	jne	.L2679
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rcx, 192(%rbx)
	movq	%rcx, 184(%rbx)
.L2678:
	movl	$255, %edx
	jmp	.L2672
	.p2align 4,,10
.L2902:
	movq	0(%r13), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	0(%r13), %rbx
	movl	%eax, %edi
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L2906
	movl	48(%rbx), %ebp
	testl	%ebp, %ebp
	je	.L2491
	leaq	56(%rbx), %rsi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rsi, %rdx
	call	*16(%rbx)
	leaq	57(%rbx), %rcx
	testl	%eax, %eax
	jne	.L2492
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rcx, 192(%rbx)
	movq	%rcx, 184(%rbx)
	movl	$0, 18516(%r13)
.L2493:
	leaq	.LC79(%rip), %rax
	movl	$0, 64(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2479
.L2905:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edx
.L2677:
	cmpb	$-1, %dl
	jne	.L2678
.L2680:
	movq	0(%r13), %rsi
	movq	184(%rsi), %rax
	cmpq	192(%rsi), %rax
	jb	.L2907
	movl	48(%rsi), %edx
	testl	%edx, %edx
	je	.L2672
	leaq	56(%rsi), %rbx
	movq	40(%rsi), %rcx
	movq	%rbx, %rdx
	movl	52(%rsi), %r8d
	call	*16(%rsi)
	movslq	%eax, %rdx
	leaq	57(%rsi), %rax
	testl	%edx, %edx
	jne	.L2683
	movl	$0, 48(%rsi)
	movb	$0, 56(%rsi)
	movq	%rax, 192(%rsi)
	movq	%rax, 184(%rsi)
	jmp	.L2672
	.p2align 4,,10
.L2907:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rsi)
	movzbl	(%rax), %ecx
.L2682:
	cmpb	$-1, %cl
	je	.L2680
	jmp	.L2675
	.p2align 4,,10
.L2683:
	addq	%rbx, %rdx
	movzbl	56(%rsi), %ecx
	movq	%rax, 184(%rsi)
	movq	%rdx, 192(%rsi)
	jmp	.L2682
.L2906:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edx
	leal	-1(%rdx), %r8d
.L2490:
	cmpl	$3, %r8d
	movl	%edx, 18516(%r13)
	ja	.L2493
	movq	0(%r13), %rbx
	cmpl	%edx, 8(%rbx)
	jl	.L2493
	leal	6(%rdx,%rdx), %eax
	cmpl	%eax, %edi
	je	.L2496
	leaq	.LC80(%rip), %rax
	movl	$0, 64(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2479
.L2679:
	cltq
	movzbl	56(%rbx), %edx
	movq	%rcx, 184(%rbx)
	addq	%rax, %rsi
	movq	%rsi, 192(%rbx)
	jmp	.L2677
.L2492:
	movzbl	56(%rbx), %edx
	cltq
	movq	%rcx, 184(%rbx)
	addq	%rax, %rsi
	movq	%rsi, 192(%rbx)
	leal	-1(%rdx), %r8d
	jmp	.L2490
.L2904:
	movq	(%r15), %rcx
	movl	8(%rcx), %edx
	testl	%edx, %edx
	jle	.L2487
	leaq	18092(%r15), %rsi
	movl	$0, 64(%rsp)
.L2697:
	movl	20(%rsi), %edi
	movl	16(%rsi), %eax
	leal	7(%rdi), %r8d
	addl	$7, %eax
	sarl	$3, %r8d
	sarl	$3, %eax
	testl	%r8d, %r8d
	movl	%r8d, 72(%rsp)
	jle	.L2686
	testl	%eax, %eax
	jle	.L2687
	subl	$1, %eax
	xorl	%ebp, %ebp
	movl	%eax, 80(%rsp)
	.p2align 4,,10
.L2696:
	movl	80(%rsp), %ebx
	xorl	%edi, %edi
	addq	$1, %rbx
	jmp	.L2695
	.p2align 4,,10
.L2781:
	movq	%r8, %r12
	shrq	%r12
	negq	%r12
	andl	$7, %r12d
	je	.L2772
	movzwl	(%r8), %r9d
	imulw	(%rcx), %r9w
	cmpl	$1, %r12d
	movw	%r9w, (%r8)
	je	.L2773
	movzwl	2(%r8), %r9d
	imulw	2(%rcx), %r9w
	cmpl	$2, %r12d
	movw	%r9w, 2(%r8)
	je	.L2774
	movzwl	4(%r8), %r9d
	imulw	4(%rcx), %r9w
	cmpl	$3, %r12d
	movw	%r9w, 4(%r8)
	je	.L2775
	movzwl	6(%r8), %r9d
	imulw	6(%rcx), %r9w
	cmpl	$4, %r12d
	movw	%r9w, 6(%r8)
	je	.L2776
	movzwl	8(%r8), %r9d
	imulw	8(%rcx), %r9w
	cmpl	$5, %r12d
	movw	%r9w, 8(%r8)
	je	.L2777
	movzwl	10(%r8), %r9d
	imulw	10(%rcx), %r9w
	cmpl	$6, %r12d
	movw	%r9w, 10(%r8)
	je	.L2778
	movzwl	12(%r8), %r9d
	movl	$57, %r10d
	movl	$7, 56(%rsp)
	imulw	12(%rcx), %r9w
	movw	%r9w, 12(%r8)
.L2690:
	movl	%r12d, %r13d
	salq	$6, %r11
	movl	$64, %r9d
	leaq	6724(%r13,%r11), %r11
	subl	%r12d, %r9d
	addq	%r13, %rax
	leaq	(%r14,%r13,2), %r13
	movl	%r9d, %r12d
	leaq	(%rdx,%rax,2), %rax
	addq	%r13, %rdx
	movl	%r9d, %r13d
	leaq	(%r15,%r11,2), %r11
	shrl	$3, %r13d
	cmpl	$7, %r13d
	movdqu	(%r11), %xmm0
	pmullw	(%rax), %xmm0
	movaps	%xmm0, (%rdx)
	movdqu	16(%r11), %xmm0
	pmullw	16(%rax), %xmm0
	movaps	%xmm0, 16(%rdx)
	movdqu	32(%r11), %xmm0
	pmullw	32(%rax), %xmm0
	movaps	%xmm0, 32(%rdx)
	movdqu	48(%r11), %xmm0
	pmullw	48(%rax), %xmm0
	movaps	%xmm0, 48(%rdx)
	movdqu	64(%r11), %xmm0
	pmullw	64(%rax), %xmm0
	movaps	%xmm0, 64(%rdx)
	movdqu	80(%r11), %xmm0
	pmullw	80(%rax), %xmm0
	movaps	%xmm0, 80(%rdx)
	movdqu	96(%r11), %xmm0
	pmullw	96(%rax), %xmm0
	movaps	%xmm0, 96(%rdx)
	je	.L2692
	movdqu	112(%r11), %xmm0
	pmullw	112(%rax), %xmm0
	movaps	%xmm0, 112(%rdx)
.L2692:
	movl	56(%rsp), %eax
	movl	%r12d, %edx
	andl	$-8, %edx
	subl	%edx, %r10d
	addl	%edx, %eax
	cmpl	%r12d, %edx
	je	.L2694
	movslq	%eax, %r11
	leaq	(%r8,%r11,2), %r9
	movzwl	(%r9), %edx
	imulw	(%rcx,%r11,2), %dx
	cmpl	$1, %r10d
	movw	%dx, (%r9)
	leal	1(%rax), %edx
	je	.L2694
	movslq	%edx, %rdx
	leaq	(%r8,%rdx,2), %r11
	movzwl	(%r11), %r9d
	imulw	(%rcx,%rdx,2), %r9w
	leal	2(%rax), %edx
	cmpl	$2, %r10d
	movw	%r9w, (%r11)
	je	.L2694
	movslq	%edx, %rdx
	leaq	(%r8,%rdx,2), %r11
	movzwl	(%r11), %r9d
	imulw	(%rcx,%rdx,2), %r9w
	leal	3(%rax), %edx
	cmpl	$3, %r10d
	movw	%r9w, (%r11)
	je	.L2694
	movslq	%edx, %rdx
	leaq	(%r8,%rdx,2), %r11
	movzwl	(%r11), %r9d
	imulw	(%rcx,%rdx,2), %r9w
	leal	4(%rax), %edx
	cmpl	$4, %r10d
	movw	%r9w, (%r11)
	je	.L2694
	movslq	%edx, %rdx
	leaq	(%r8,%rdx,2), %r11
	movzwl	(%r11), %r9d
	imulw	(%rcx,%rdx,2), %r9w
	leal	5(%rax), %edx
	cmpl	$5, %r10d
	movw	%r9w, (%r11)
	je	.L2694
	movslq	%edx, %rdx
	addl	$6, %eax
	leaq	(%r8,%rdx,2), %r11
	movzwl	(%r11), %r9d
	imulw	(%rcx,%rdx,2), %r9w
	cmpl	$6, %r10d
	movw	%r9w, (%r11)
	je	.L2694
	cltq
	leaq	(%r8,%rax,2), %r9
	movzwl	(%r9), %edx
	imulw	(%rcx,%rax,2), %dx
	movw	%dx, (%r9)
.L2694:
	movl	24(%rsi), %edx
	movl	%edx, %eax
	imull	%ebp, %eax
	sall	$3, %eax
	cltq
	leaq	(%rax,%rdi,8), %rcx
	addq	$1, %rdi
	addq	36(%rsi), %rcx
	call	*18544(%r15)
	cmpq	%rdi, %rbx
	je	.L2908
.L2695:
	movl	76(%rsi), %eax
	movslq	(%rsi), %r11
	movq	68(%rsi), %rdx
	imull	%ebp, %eax
	leaq	105(%r11), %r9
	salq	$7, %r9
	leaq	8(%r15,%r9), %rcx
	addl	%edi, %eax
	sall	$6, %eax
	cltq
	leaq	16(%rdx,%rax,2), %r10
	leaq	(%rax,%rax), %r14
	cmpq	%r10, %rcx
	leaq	(%rdx,%r14), %r8
	jnb	.L2781
	leaq	24(%r15,%r9), %r9
	cmpq	%r9, %r8
	jnb	.L2781
	xorl	%eax, %eax
	.p2align 4,,10
.L2688:
	movzwl	(%r8,%rax), %edx
	imulw	(%rcx,%rax), %dx
	movw	%dx, (%r8,%rax)
	addq	$2, %rax
	cmpq	$128, %rax
	jne	.L2688
	jmp	.L2694
	.p2align 4,,10
.L2908:
	addl	$1, %ebp
	cmpl	%ebp, 72(%rsp)
	jne	.L2696
	movq	(%r15), %rcx
.L2687:
	movl	8(%rcx), %edx
.L2686:
	addl	$1, 64(%rsp)
	addq	$96, %rsi
	movl	64(%rsp), %eax
	cmpl	%edx, %eax
	jl	.L2697
	jmp	.L2487
	.p2align 4,,10
.L2773:
	movl	$63, %r10d
	movl	$1, 56(%rsp)
	jmp	.L2690
.L2772:
	movl	$64, %r10d
	movl	$0, 56(%rsp)
	jmp	.L2690
.L2774:
	movl	$62, %r10d
	movl	$2, 56(%rsp)
	jmp	.L2690
.L2775:
	movl	$61, %r10d
	movl	$3, 56(%rsp)
	jmp	.L2690
.L2776:
	movl	$60, %r10d
	movl	$4, 56(%rsp)
	jmp	.L2690
.L2777:
	movl	$59, %r10d
	movl	$5, 56(%rsp)
	jmp	.L2690
.L2778:
	movl	$58, %r10d
	movl	$6, 56(%rsp)
	jmp	.L2690
.L2481:
	movq	(%r15), %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$-1, %al
	jne	.L2909
.L2483:
	movq	(%r15), %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$-1, %al
	je	.L2483
	jmp	.L2482
.L2496:
	testl	%edx, %edx
	jle	.L2497
	movl	$1, %ebp
	.p2align 4,,10
.L2511:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L2910
	movl	48(%rbx), %esi
	testl	%esi, %esi
	je	.L2720
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	movslq	%eax, %rsi
	leaq	57(%rbx), %rax
	testl	%esi, %esi
	jne	.L2501
	movl	$0, 48(%rbx)
	movq	%rax, %rdi
	movb	$0, 56(%rbx)
.L2502:
	movq	%rdi, 192(%rbx)
	movq	%rax, 184(%rbx)
.L2499:
	movq	0(%r13), %rbx
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L2503
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	movq	0(%r13), %rbx
	movl	%eax, %edx
.L2500:
	movl	8(%rbx), %ecx
	cmpl	$0, %ecx
	jle	.L2506
	cmpl	%esi, 18080(%r13)
	je	.L2722
	cmpl	$1, %ecx
	je	.L2480
	cmpl	%esi, 18176(%r13)
	je	.L2723
	cmpl	$2, %ecx
	je	.L2480
	cmpl	%esi, 18272(%r13)
	je	.L2724
	cmpl	$3, %ecx
	je	.L2480
	cmpl	%esi, 18368(%r13)
	jne	.L2480
	movl	$3, %r8d
.L2507:
	movslq	%r8d, %rcx
	sarl	$4, %eax
	leaq	(%rcx,%rcx,2), %rcx
	salq	$5, %rcx
	addq	%r13, %rcx
	cmpl	$3, %eax
	movl	%eax, 18096(%rcx)
	jg	.L2911
	andl	$15, %edx
	movzbl	%dl, %eax
	cmpb	$3, %dl
	movl	%eax, 18100(%rcx)
	ja	.L2912
	movl	%r8d, 18516(%r13,%rbp,4)
	movl	%ebp, %eax
	addq	$1, %rbp
	cmpl	%eax, 18516(%r13)
	jg	.L2511
.L2497:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	0(%r13), %rcx
	movzbl	%al, %eax
	movl	%eax, 18484(%r13)
	call	_ZL10stbi__get8P13stbi__context
	movq	0(%r13), %rcx
	movzbl	%al, %eax
	movl	%eax, 18488(%r13)
	call	_ZL10stbi__get8P13stbi__context
	movl	18480(%r13), %edi
	movzbl	%al, %edx
	andl	$15, %eax
	sarl	$4, %edx
	movzbl	%al, %ecx
	movl	%edx, 18492(%r13)
	testl	%edi, %edi
	movl	%ecx, 18496(%r13)
	je	.L2512
	movl	18484(%r13), %ecx
	cmpl	$63, %ecx
	jg	.L2513
	movl	18488(%r13), %r8d
	cmpl	%r8d, %ecx
	setg	%cl
	cmpl	$63, %r8d
	setg	%r8b
	orl	%r8d, %ecx
	cmpb	$13, %al
	seta	%al
	orb	%al, %cl
	jne	.L2513
	cmpl	$13, %edx
	jg	.L2513
	movl	18536(%r13), %eax
	movl	$0, 18476(%r13)
	movl	$0, 18392(%r13)
	movl	$0, 18296(%r13)
	movl	$0, 18200(%r13)
	testl	%eax, %eax
	movb	$-1, 18472(%r13)
	movl	$0, 18104(%r13)
	movq	$0, 18464(%r13)
	je	.L2913
	movl	%eax, 18540(%r13)
	movl	$0, 18500(%r13)
.L2709:
	cmpl	$1, 18516(%r13)
	je	.L2914
	movl	18068(%r13), %edx
	testl	%edx, %edx
	jle	.L2538
	movl	18064(%r13), %eax
	xorl	%r14d, %r14d
.L2657:
	testl	%eax, %eax
	jle	.L2629
	movl	$0, 56(%rsp)
	movl	%r14d, 64(%rsp)
.L2656:
	movl	18516(%r13), %eax
	testl	%eax, %eax
	jle	.L2630
	movq	$0, 72(%rsp)
	movq	72(%rsp), %rsi
.L2652:
	movslq	18520(%r13,%rsi,4), %rdx
	leaq	(%rdx,%rdx,2), %r9
	salq	$5, %r9
	leaq	0(%r13,%r9), %rcx
	movl	18088(%rcx), %edx
	testl	%edx, %edx
	jle	.L2631
	movl	18084(%rcx), %r8d
	xorl	%r12d, %r12d
	movq	%r9, %r15
.L2651:
	testl	%r8d, %r8d
	jle	.L2632
	movl	18488(%r13), %r14d
	testl	%r14d, %r14d
	jne	.L2636
	movl	64(%rsp), %eax
	leaq	0(%r13,%r15), %rcx
	movq	%r15, %rsi
	imull	56(%rsp), %r8d
	movslq	18096(%rcx), %rbx
	imull	%edx, %eax
	movq	18160(%rcx), %rdx
	addl	%r12d, %eax
	imull	18168(%rcx), %eax
	addl	%r8d, %eax
	sall	$6, %eax
	cltq
	leaq	(%rdx,%rax,2), %rbp
	jmp	.L2635
	.p2align 4,,10
.L2919:
	imull	64(%rsp), %edx
	imull	56(%rsp), %r8d
	movslq	18096(%rcx), %rbx
	leal	(%rdx,%r12), %eax
	imull	18168(%rcx), %eax
	leal	(%r8,%r14), %edx
	addl	%edx, %eax
	movq	18160(%rcx), %rdx
	sall	$6, %eax
	cltq
	leaq	(%rdx,%rax,2), %rbp
.L2635:
	cmpl	$15, 18468(%r13)
	jle	.L2915
.L2637:
	movl	18492(%r13), %r15d
	testl	%r15d, %r15d
	je	.L2916
	movl	18468(%r13), %eax
	testl	%eax, %eax
	jle	.L2917
.L2649:
	movl	18464(%r13), %edx
	subl	$1, %eax
	movl	%eax, 18468(%r13)
	leal	(%rdx,%rdx), %ecx
	testl	%edx, %edx
	movl	%ecx, 18464(%r13)
	jns	.L2648
	movl	18496(%r13), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	addw	%ax, 0(%rbp)
.L2648:
	addl	$1, %r14d
	leaq	0(%r13,%rsi), %rcx
	movl	18084(%rcx), %r8d
	movl	18088(%rcx), %edx
	cmpl	%r14d, %r8d
	jle	.L2918
	movl	18488(%r13), %r9d
	testl	%r9d, %r9d
	je	.L2919
.L2636:
	leaq	.LC85(%rip), %rax
	movl	$0, 64(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2479
.L2503:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L2721
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	leaq	57(%rbx), %rcx
	testl	%eax, %eax
	jne	.L2504
	movl	$0, 48(%rbx)
	movq	%rcx, %rdi
	xorl	%edx, %edx
	movb	$0, 56(%rbx)
.L2505:
	movq	%rdi, 192(%rbx)
	movq	%rcx, 184(%rbx)
	movq	0(%r13), %rbx
	jmp	.L2500
.L2910:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %esi
	jmp	.L2499
.L2504:
	cltq
	addq	%rax, %rdi
	movzbl	56(%rbx), %eax
	movl	%eax, %edx
	jmp	.L2505
.L2501:
	addq	%rsi, %rdi
	movzbl	56(%rbx), %esi
	jmp	.L2502
.L2506:
	je	.L2480
.L2722:
	xorl	%r8d, %r8d
	jmp	.L2507
.L2491:
	movl	$0, 18516(%r13)
	jmp	.L2493
.L2720:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L2500
.L2912:
	leaq	.LC82(%rip), %rax
	movl	$0, 64(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2479
.L2723:
	movl	$1, %r8d
	jmp	.L2507
.L2909:
	movl	$255, %edx
	jmp	.L2485
.L2911:
	leaq	.LC81(%rip), %rax
	movl	$0, 64(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2479
.L2724:
	movl	$2, %r8d
	jmp	.L2507
.L2513:
	leaq	.LC83(%rip), %rax
	movl	$0, 64(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2479
.L2512:
	movl	18484(%r13), %esi
	testl	%esi, %esi
	movl	%esi, 64(%rsp)
	jne	.L2513
	testb	%al, %al
	jne	.L2513
	testl	%edx, %edx
	jne	.L2513
	movl	18536(%r13), %eax
	movl	$63, 18488(%r13)
	movl	$0, 18476(%r13)
	movl	$0, 18392(%r13)
	movl	$0, 18296(%r13)
	testl	%eax, %eax
	movl	$0, 18200(%r13)
	movl	$0, 18104(%r13)
	movq	$0, 18464(%r13)
	movb	$-1, 18472(%r13)
	je	.L2920
	movl	%eax, 18540(%r13)
	movl	$0, 18500(%r13)
.L2708:
	cmpl	$1, 18516(%r13)
	je	.L2921
	movl	18068(%r13), %edx
	testl	%edx, %edx
	jle	.L2538
	movl	18064(%r13), %eax
	movl	$0, 80(%rsp)
.L2564:
	testl	%eax, %eax
	jle	.L2541
	movl	$0, 88(%rsp)
.L2562:
	movl	18516(%r13), %eax
	testl	%eax, %eax
	jle	.L2542
	leaq	144(%rsp), %rsi
	movq	$0, 120(%rsp)
	movq	%rsi, 72(%rsp)
	movq	120(%rsp), %rsi
.L2557:
	movslq	18520(%r13,%rsi,4), %rdx
	leaq	(%rdx,%rdx,2), %r8
	movq	%r8, %rcx
	salq	$5, %rcx
	leaq	0(%r13,%rcx), %r9
	movl	18088(%r9), %edx
	testl	%edx, %edx
	jle	.L2543
	movl	18084(%r9), %eax
	movl	$0, 112(%rsp)
	movq	%r8, 128(%rsp)
	movq	%rcx, 136(%rsp)
.L2556:
	testl	%eax, %eax
	jle	.L2544
	leaq	6728(%r13), %rsi
	movl	$0, 56(%rsp)
	movl	%edx, %ebx
	movl	56(%rsp), %edi
	movq	%rsi, 104(%rsp)
	leaq	8(%r13), %rsi
	movq	%rsi, 96(%rsp)
	movq	136(%rsp), %rsi
	leaq	0(%r13,%rsi), %r14
	movq	%r14, %r15
	jmp	.L2555
	.p2align 4,,10
.L2925:
	movzbl	1280(%rsi,%r9), %ecx
	cmpl	%eax, %ecx
	jg	.L2547
	subl	%ecx, %eax
	sall	%cl, %edx
	movl	%edx, 18464(%r13)
	movl	%eax, %r8d
	movl	%eax, 18468(%r13)
	movzbl	1024(%rsi,%r9), %esi
.L2548:
	movq	72(%rsp), %rdi
	xorl	%eax, %eax
	movl	$16, %ecx
	testl	%esi, %esi
	rep stosq
	jne	.L2922
.L2703:
	salq	$7, %r14
	movq	%r12, %rdx
	movq	72(%rsp), %rdi
	movq	%r13, %rcx
	addl	18104(%r15), %esi
	leaq	13448(%r13,%r14), %rax
	salq	$10, %rdx
	imulq	$1680, %r12, %r12
	leaq	13960(%r13,%rdx), %r9
	movq	%rdi, %rdx
	movl	%esi, 18104(%r15)
	imulw	(%rax), %si
	movq	%rax, 32(%rsp)
	movq	104(%rsp), %rax
	movw	%si, 144(%rsp)
	leaq	(%rax,%r12), %r8
	call	_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt.part.24
	testl	%eax, %eax
	je	.L2480
	movl	18116(%r15), %edx
	movslq	%ebp, %rbp
	movq	%rdi, %r8
	imull	%edx, %ebx
	movslq	%ebx, %rcx
	addq	%rbp, %rcx
	addq	18128(%r15), %rcx
	call	*18544(%r13)
	movl	18084(%r15), %eax
	addl	$1, 56(%rsp)
	movl	56(%rsp), %edi
	cmpl	%edi, %eax
	jle	.L2923
	movl	18088(%r15), %ebx
.L2555:
	imull	88(%rsp), %eax
	movslq	18096(%r15), %rsi
	imull	80(%rsp), %ebx
	leal	(%rax,%rdi), %ebp
	addl	112(%rsp), %ebx
	movl	18468(%r13), %eax
	sall	$3, %ebp
	imulq	$1680, %rsi, %rsi
	movslq	18100(%r15), %r12
	addq	96(%rsp), %rsi
	sall	$3, %ebx
	movslq	18092(%r15), %r14
	cmpl	$15, %eax
	jle	.L2924
.L2545:
	movl	18464(%r13), %edx
	movl	%edx, %ecx
	shrl	$23, %ecx
	movzbl	(%rsi,%rcx), %r9d
	cmpl	$255, %r9d
	jne	.L2925
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	1580(%rsi), %ecx
	jb	.L2733
	cmpl	1584(%rsi), %ecx
	jb	.L2734
	cmpl	1588(%rsi), %ecx
	jb	.L2735
	cmpl	1592(%rsi), %ecx
	jb	.L2736
	cmpl	1596(%rsi), %ecx
	jb	.L2737
	cmpl	1600(%rsi), %ecx
	jb	.L2738
	cmpl	1604(%rsi), %ecx
	jb	.L2739
	movl	%eax, %r11d
.L2900:
	leal	-16(%r11), %r8d
	movl	%r8d, 18468(%r13)
.L2547:
	leaq	.LC59(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2479
	.p2align 4,,10
.L2924:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %eax
	cmpl	$15, %eax
	jg	.L2545
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %eax
	jmp	.L2545
	.p2align 4,,10
.L2922:
	cmpl	%r8d, %esi
	jle	.L2551
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%r13), %edx
.L2551:
	movl	%edx, %edi
	movl	%edx, %eax
	movl	%esi, %ecx
	sarl	$31, %edi
	roll	%cl, %eax
	cmpl	$16, %esi
	jle	.L2552
	movl	$1858, %r8d
	movl	%eax, 116(%rsp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC84(%rip), %rcx
	call	_assert
	movl	116(%rsp), %eax
.L2552:
	leaq	_ZL11stbi__bmask(%rip), %rdx
	movslq	%esi, %rcx
	movl	(%rdx,%rcx,4), %edx
	subl	%esi, 18468(%r13)
	movl	%edi, %esi
	notl	%esi
	leaq	_ZL11stbi__jbias(%rip), %rdi
	andl	(%rdi,%rcx,4), %esi
	movl	%edx, %r8d
	andl	%eax, %edx
	notl	%r8d
	andl	%eax, %r8d
	movl	%r8d, 18464(%r13)
	addl	%edx, %esi
	jmp	.L2703
.L2923:
	movq	128(%rsp), %rdx
	salq	$5, %rdx
	movl	18088(%r13,%rdx), %edx
.L2544:
	addl	$1, 112(%rsp)
	movl	112(%rsp), %esi
	cmpl	%edx, %esi
	jl	.L2556
	movl	18516(%r13), %eax
	movq	120(%rsp), %rsi
.L2543:
	leal	1(%rsi), %edx
	addq	$1, %rsi
	cmpl	%eax, %edx
	movq	%rsi, 120(%rsp)
	jl	.L2557
.L2542:
	movl	18540(%r13), %eax
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, 18540(%r13)
	jle	.L2926
.L2558:
	addl	$1, 88(%rsp)
	movl	18064(%r13), %eax
	movl	88(%rsp), %esi
	cmpl	%esi, %eax
	jg	.L2562
	movl	18068(%r13), %edx
.L2541:
	addl	$1, 80(%rsp)
	movl	80(%rsp), %esi
	cmpl	%edx, %esi
	jl	.L2564
.L2897:
	movzbl	18472(%r13), %ecx
.L2625:
	cmpb	$-1, %cl
	jne	.L2658
.L2538:
	movq	0(%r13), %rbx
	.p2align 4,,10
.L2898:
	movq	16(%rbx), %rax
.L2718:
	testq	%rax, %rax
	je	.L2665
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L2660
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L2899
.L2665:
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jnb	.L2899
.L2660:
	movq	0(%r13), %rbx
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L2927
	movl	48(%rbx), %edx
	movq	16(%rbx), %rax
	testl	%edx, %edx
	je	.L2718
	leaq	56(%rbx), %rsi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rsi, %rdx
	call	*%rax
	leaq	57(%rbx), %rcx
	testl	%eax, %eax
	jne	.L2669
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rcx, 192(%rbx)
	movq	%rcx, 184(%rbx)
	movq	0(%r13), %rbx
	movq	16(%rbx), %rax
	jmp	.L2718
	.p2align 4,,10
.L2927:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edx
.L2667:
	cmpb	$-1, %dl
	movq	0(%r13), %rbx
	jne	.L2898
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movl	%eax, %ecx
	movb	%al, 18472(%r13)
	jmp	.L2666
.L2669:
	cltq
	movzbl	56(%rbx), %edx
	movq	%rcx, 184(%rbx)
	addq	%rax, %rsi
	movq	%rsi, 192(%rbx)
	jmp	.L2667
.L2733:
	movl	$1023, %r8d
	movl	$22, %ecx
	movl	$10, %r9d
.L2549:
	cmpl	%eax, %r9d
	jg	.L2547
	movl	%edx, %edi
	movl	%edx, %r10d
	shrl	%cl, %edi
	movslq	%r9d, %rcx
	andl	%r8d, %edi
	addl	1612(%rsi,%rcx,4), %edi
	movl	$32, %ecx
	movslq	%edi, %rdi
	movzbl	1280(%rsi,%rdi), %r8d
	subl	%r8d, %ecx
	shrl	%cl, %r10d
	movl	%r10d, %ecx
	leaq	_ZL11stbi__bmask(%rip), %r10
	andl	(%r10,%r8,4), %ecx
	movzwl	512(%rsi,%rdi,2), %r8d
	cmpl	%r8d, %ecx
	je	.L2550
	leaq	.LC3(%rip), %rdx
	movl	$1837, %r8d
	movl	%r9d, 116(%rsp)
	leaq	.LC58(%rip), %rcx
	call	_assert
	movl	18468(%r13), %eax
	movl	18464(%r13), %edx
	movl	116(%rsp), %r9d
.L2550:
	movl	%r9d, %ecx
	subl	%r9d, %eax
	sall	%cl, %edx
	movl	%eax, 18468(%r13)
	movl	%eax, %r8d
	movl	%edx, 18464(%r13)
	movzbl	1024(%rsi,%rdi), %esi
	jmp	.L2548
.L2734:
	movl	$2047, %r8d
	movl	$21, %ecx
	movl	$11, %r9d
	jmp	.L2549
.L2735:
	movl	$4095, %r8d
	movl	$20, %ecx
	movl	$12, %r9d
	jmp	.L2549
.L2736:
	movl	$8191, %r8d
	movl	$19, %ecx
	movl	$13, %r9d
	jmp	.L2549
.L2921:
	movslq	18520(%r13), %rax
	leaq	(%rax,%rax,2), %rax
	salq	$5, %rax
	leaq	0(%r13,%rax), %rcx
	movl	18108(%rcx), %esi
	leal	7(%rsi), %edx
	movl	%edx, %esi
	movl	18112(%rcx), %edx
	sarl	$3, %esi
	movl	%esi, 112(%rsp)
	addl	$7, %edx
	sarl	$3, %edx
	testl	%edx, %edx
	movl	%edx, 88(%rsp)
	jle	.L2538
	leal	-1(%rsi), %edx
	xorl	%r12d, %r12d
	movq	%rax, 96(%rsp)
	leaq	8(,%rdx,8), %rsi
	movq	%rsi, 72(%rsp)
.L2537:
	movl	112(%rsp), %esi
	testl	%esi, %esi
	jle	.L2520
	leaq	6728(%r13), %rax
	xorl	%ebx, %ebx
	movq	%rax, 80(%rsp)
	leaq	8(%r13), %rax
	movq	%rax, 56(%rsp)
	movq	96(%rsp), %rax
	leaq	0(%r13,%rax), %r15
	jmp	.L2535
	.p2align 4,,10
.L2931:
	movzbl	1280(%rdi,%rax), %ecx
	cmpl	%r11d, %ecx
	jg	.L2547
	subl	%ecx, %r11d
	sall	%cl, %edx
	movl	%edx, 18464(%r13)
	movl	%r11d, %r8d
	movl	%r11d, 18468(%r13)
	movzbl	1024(%rdi,%rax), %r9d
.L2524:
	leaq	144(%rsp), %r14
	xorl	%eax, %eax
	movl	$16, %ecx
	movq	%r14, %rdi
	testl	%r9d, %r9d
	rep stosq
	jne	.L2928
.L2700:
	addl	18104(%r15), %r9d
	salq	$7, %rbp
	movq	%rsi, %rdx
	movq	%r13, %rcx
	salq	$10, %rdx
	leaq	13448(%r13,%rbp), %rax
	imulq	$1680, %rsi, %rsi
	movl	%r9d, 18104(%r15)
	imulw	(%rax), %r9w
	movq	%rax, 32(%rsp)
	movq	80(%rsp), %rax
	movw	%r9w, 144(%rsp)
	leaq	13960(%r13,%rdx), %r9
	movq	%r14, %rdx
	leaq	(%rax,%rsi), %r8
	call	_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt.part.24
	testl	%eax, %eax
	je	.L2480
	movl	18116(%r15), %edx
	movq	%r14, %r8
	movl	%edx, %ecx
	imull	%r12d, %ecx
	sall	$3, %ecx
	movslq	%ecx, %rcx
	addq	%rbx, %rcx
	addq	18128(%r15), %rcx
	call	*18544(%r13)
	movl	18540(%r13), %eax
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, 18540(%r13)
	jle	.L2929
	addq	$8, %rbx
	cmpq	72(%rsp), %rbx
	je	.L2520
.L2535:
	movslq	18096(%r15), %rdi
	movl	18468(%r13), %r11d
	movslq	18100(%r15), %rsi
	movslq	18092(%r15), %rbp
	imulq	$1680, %rdi, %rdi
	addq	56(%rsp), %rdi
	cmpl	$15, %r11d
	jle	.L2930
.L2521:
	movl	18464(%r13), %edx
	movl	%edx, %eax
	shrl	$23, %eax
	movzbl	(%rdi,%rax), %eax
	cmpl	$255, %eax
	jne	.L2931
	movl	%edx, %eax
	shrl	$16, %eax
	cmpl	1580(%rdi), %eax
	jb	.L2726
	cmpl	%eax, 1584(%rdi)
	ja	.L2727
	cmpl	1588(%rdi), %eax
	jb	.L2728
	cmpl	%eax, 1592(%rdi)
	ja	.L2729
	cmpl	1596(%rdi), %eax
	jb	.L2730
	cmpl	%eax, 1600(%rdi)
	ja	.L2731
	cmpl	%eax, 1604(%rdi)
	jbe	.L2900
	movl	$65535, %eax
	movl	$16, %ecx
	movl	$16, %r14d
	.p2align 4,,10
.L2525:
	cmpl	%r11d, %r14d
	jg	.L2547
	movl	%edx, %r10d
	shrl	%cl, %r10d
	movslq	%r14d, %rcx
	andl	%r10d, %eax
	addl	1612(%rdi,%rcx,4), %eax
	movl	$32, %ecx
	movl	%edx, %r10d
	cltq
	movzbl	1280(%rdi,%rax), %r8d
	subl	%r8d, %ecx
	shrl	%cl, %r10d
	movl	%r10d, %ecx
	leaq	_ZL11stbi__bmask(%rip), %r10
	andl	(%r10,%r8,4), %ecx
	movzwl	512(%rdi,%rax,2), %r8d
	cmpl	%r8d, %ecx
	je	.L2526
	leaq	.LC3(%rip), %rdx
	movl	$1837, %r8d
	movq	%rax, 104(%rsp)
	leaq	.LC58(%rip), %rcx
	call	_assert
	movl	18468(%r13), %r11d
	movl	18464(%r13), %edx
	movq	104(%rsp), %rax
.L2526:
	movl	%r14d, %ecx
	subl	%r14d, %r11d
	sall	%cl, %edx
	movl	%r11d, 18468(%r13)
	movl	%r11d, %r8d
	movl	%edx, 18464(%r13)
	movzbl	1024(%rdi,%rax), %r9d
	jmp	.L2524
	.p2align 4,,10
.L2929:
	cmpl	$23, 18468(%r13)
	jg	.L2531
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
.L2531:
	movzbl	18472(%r13), %ecx
	leal	48(%rcx), %eax
	cmpb	$7, %al
	ja	.L2625
	movl	18536(%r13), %eax
	movl	$2147483647, %edx
	movl	$0, 18476(%r13)
	movl	$0, 18392(%r13)
	movl	$0, 18296(%r13)
	movl	$0, 18200(%r13)
	testl	%eax, %eax
	movb	$-1, 18472(%r13)
	cmove	%edx, %eax
	addq	$8, %rbx
	cmpq	72(%rsp), %rbx
	movl	$0, 18104(%r13)
	movq	$0, 18464(%r13)
	movl	%eax, 18540(%r13)
	movl	$0, 18500(%r13)
	jne	.L2535
.L2520:
	addl	$1, %r12d
	cmpl	%r12d, 88(%rsp)
	jne	.L2537
	jmp	.L2897
	.p2align 4,,10
.L2930:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %r11d
	cmpl	$15, %r11d
	jg	.L2521
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %r11d
	jmp	.L2521
	.p2align 4,,10
.L2928:
	cmpl	%r8d, %r9d
	jle	.L2527
	movq	%r13, %rcx
	movl	%r9d, 104(%rsp)
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%r13), %edx
	movl	104(%rsp), %r9d
.L2527:
	movl	%edx, %edi
	movl	%edx, %eax
	movl	%r9d, %ecx
	sarl	$31, %edi
	roll	%cl, %eax
	cmpl	$16, %r9d
	jle	.L2528
	movl	$1858, %r8d
	movl	%eax, 116(%rsp)
	leaq	.LC3(%rip), %rdx
	movl	%r9d, 104(%rsp)
	leaq	.LC84(%rip), %rcx
	call	_assert
	movl	116(%rsp), %eax
	movl	104(%rsp), %r9d
.L2528:
	leaq	_ZL11stbi__bmask(%rip), %rdx
	movslq	%r9d, %rcx
	notl	%edi
	movl	(%rdx,%rcx,4), %edx
	subl	%r9d, 18468(%r13)
	movl	%edi, %r9d
	leaq	_ZL11stbi__jbias(%rip), %rdi
	andl	(%rdi,%rcx,4), %r9d
	movl	%edx, %r8d
	notl	%r8d
	andl	%eax, %r8d
	andl	%edx, %eax
	movl	%r8d, 18464(%r13)
	addl	%eax, %r9d
	jmp	.L2700
.L2727:
	movl	$2047, %eax
	movl	$21, %ecx
	movl	$11, %r14d
	jmp	.L2525
.L2726:
	movl	$1023, %eax
	movl	$22, %ecx
	movl	$10, %r14d
	jmp	.L2525
.L2737:
	movl	$16383, %r8d
	movl	$18, %ecx
	movl	$14, %r9d
	jmp	.L2549
.L2738:
	movl	$32767, %r8d
	movl	$17, %ecx
	movl	$15, %r9d
	jmp	.L2549
.L2728:
	movl	$4095, %eax
	movl	$20, %ecx
	movl	$12, %r14d
	jmp	.L2525
.L2739:
	movl	$65535, %r8d
	movl	$16, %ecx
	movl	$16, %r9d
	jmp	.L2549
.L2730:
	movl	$16383, %eax
	movl	$18, %ecx
	movl	$14, %r14d
	jmp	.L2525
.L2729:
	movl	$8191, %eax
	movl	$19, %ecx
	movl	$13, %r14d
	jmp	.L2525
.L2731:
	movl	$32767, %eax
	movl	$17, %ecx
	movl	$15, %r14d
	jmp	.L2525
.L2926:
	cmpl	$23, 18468(%r13)
	jg	.L2559
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
.L2559:
	movzbl	18472(%r13), %ecx
	leal	48(%rcx), %eax
	cmpb	$7, %al
	ja	.L2625
	movl	18536(%r13), %eax
	movl	$0, 18476(%r13)
	movl	$0, 18392(%r13)
	movl	$0, 18296(%r13)
	movl	$0, 18200(%r13)
	testl	%eax, %eax
	movb	$-1, 18472(%r13)
	movl	$0, 18104(%r13)
	movq	$0, 18464(%r13)
	jne	.L2561
	movl	$2147483647, %eax
.L2561:
	movl	%eax, 18540(%r13)
	movl	$0, 18500(%r13)
	jmp	.L2558
.L2920:
	movl	$2147483647, 18540(%r13)
	movl	$0, 18500(%r13)
	jmp	.L2708
.L2721:
	xorl	%edx, %edx
	jmp	.L2500
	.p2align 4,,10
.L2916:
	xorl	%eax, %eax
	movl	$16, %ecx
	movq	%rbp, %rdi
	rep stosq
	movl	18468(%r13), %r10d
	cmpl	$15, %r10d
	jle	.L2932
.L2639:
	imulq	$1680, %rbx, %rdx
	movl	18464(%r13), %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	addq	%r13, %rdx
	movzbl	8(%rcx,%rdx), %ecx
	cmpl	$255, %ecx
	je	.L2640
	addq	%rcx, %rdx
	movzbl	1288(%rdx), %ecx
	cmpl	%r10d, %ecx
	jg	.L2641
	sall	%cl, %eax
	subl	%ecx, %r10d
	movl	%eax, 18464(%r13)
	movl	%r10d, 18468(%r13)
	movzbl	1032(%rdx), %ebx
.L2642:
	testl	%ebx, %ebx
	jne	.L2933
.L2645:
	leaq	0(%r13,%rsi), %rax
	addl	18104(%rax), %ebx
	movl	%ebx, 18104(%rax)
	movl	18496(%r13), %ecx
	sall	%cl, %ebx
	movw	%bx, 0(%rbp)
	jmp	.L2648
	.p2align 4,,10
.L2915:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	jmp	.L2637
.L2640:
	movl	%eax, %ecx
	shrl	$16, %ecx
	cmpl	1588(%rdx), %ecx
	jb	.L2763
	cmpl	1592(%rdx), %ecx
	jb	.L2764
	cmpl	1596(%rdx), %ecx
	jb	.L2765
	cmpl	1600(%rdx), %ecx
	jb	.L2766
	cmpl	1604(%rdx), %ecx
	jb	.L2767
	cmpl	1608(%rdx), %ecx
	jb	.L2768
	cmpl	1612(%rdx), %ecx
	jb	.L2769
	subl	$16, %r10d
	movl	%r10d, 18468(%r13)
.L2641:
	cmpl	$-1, %r10d
	jl	.L2934
	movl	$33, %ecx
	movl	$-1, %edi
	xorl	%ebx, %ebx
	rorl	%cl, %eax
	movl	%edi, %r11d
	movl	%eax, %r10d
.L2715:
	movl	$1858, %r8d
	movl	%r11d, 112(%rsp)
	leaq	.LC3(%rip), %rdx
	movl	%r10d, 80(%rsp)
	leaq	.LC84(%rip), %rcx
	call	_assert
	movl	112(%rsp), %r11d
	movl	80(%rsp), %r10d
.L2647:
	subl	%r11d, 18468(%r13)
	andl	%edi, %r10d
	movl	%r10d, 18464(%r13)
	jmp	.L2645
.L2917:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %eax
	jmp	.L2649
.L2918:
	movq	%rsi, %r15
.L2632:
	addl	$1, %r12d
	cmpl	%edx, %r12d
	jl	.L2651
	movl	18516(%r13), %eax
	movq	72(%rsp), %rsi
.L2631:
	leal	1(%rsi), %edx
	addq	$1, %rsi
	cmpl	%eax, %edx
	movq	%rsi, 72(%rsp)
	jl	.L2652
.L2630:
	movl	18540(%r13), %eax
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, 18540(%r13)
	jle	.L2935
.L2653:
	addl	$1, 56(%rsp)
	movl	18064(%r13), %eax
	movl	56(%rsp), %esi
	cmpl	%esi, %eax
	jg	.L2656
	movl	64(%rsp), %r14d
	movl	18068(%r13), %edx
.L2629:
	addl	$1, %r14d
	cmpl	%edx, %r14d
	jl	.L2657
	jmp	.L2897
	.p2align 4,,10
.L2932:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %r10d
	jmp	.L2639
.L2914:
	movslq	18520(%r13), %rax
	movq	%rax, 120(%rsp)
	leaq	(%rax,%rax,2), %rax
	salq	$5, %rax
	addq	%r13, %rax
	movl	18108(%rax), %esi
	movl	18112(%rax), %eax
	leal	7(%rsi), %edx
	addl	$7, %eax
	sarl	$3, %edx
	sarl	$3, %eax
	movl	%edx, 72(%rsp)
	testl	%eax, %eax
	movl	%eax, 116(%rsp)
	jle	.L2538
	movl	$0, 56(%rsp)
	leaq	_ZL19stbi__jpeg_dezigzag(%rip), %r14
	movq	%r13, %r12
.L2628:
	movl	72(%rsp), %ebx
	testl	%ebx, %ebx
	jle	.L2566
	movq	120(%rsp), %rax
	xorl	%esi, %esi
	leaq	(%rax,%rax,2), %rax
	salq	$5, %rax
	leaq	(%r12,%rax), %r15
	jmp	.L2627
	.p2align 4,,10
.L2939:
	movl	18488(%r12), %r11d
	testl	%r11d, %r11d
	jne	.L2636
	cmpl	$15, 18468(%r12)
	movslq	18096(%r15), %rbx
	jg	.L2569
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
.L2569:
	movl	18492(%r12), %edx
	testl	%edx, %edx
	je	.L2936
	movl	18468(%r12), %eax
	testl	%eax, %eax
	jle	.L2937
.L2581:
	movl	18464(%r12), %edx
	subl	$1, %eax
	movl	%eax, 18468(%r12)
	leal	(%rdx,%rdx), %ecx
	testl	%edx, %edx
	movl	%ecx, 18464(%r12)
	jns	.L2580
	movl	18496(%r12), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	addw	%ax, 0(%r13)
	.p2align 4,,10
.L2580:
	movl	18540(%r12), %eax
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, 18540(%r12)
	jle	.L2938
	addl	$1, %esi
	cmpl	%esi, 72(%rsp)
	je	.L2566
.L2627:
	movl	56(%rsp), %eax
	imull	18168(%r15), %eax
	movl	18484(%r12), %ebx
	movq	18160(%r15), %rdx
	addl	%esi, %eax
	sall	$6, %eax
	cltq
	testl	%ebx, %ebx
	leaq	(%rdx,%rax,2), %r13
	je	.L2939
	movl	18492(%r12), %r10d
	movl	18496(%r12), %edi
	movslq	18100(%r15), %rax
	movl	18500(%r12), %edx
	testl	%r10d, %r10d
	movl	%edi, 64(%rsp)
	jne	.L2583
	testl	%edx, %edx
	jne	.L2940
	imulq	$1680, %rax, %r9
	movq	%rax, %rdx
	movl	%esi, 80(%rsp)
	salq	$10, %rdx
	leaq	13960(%r12,%rdx), %rcx
	imulq	$420, %rax, %rdx
	imulq	$840, %rax, %rax
	leaq	(%r12,%r9), %rdi
	movq	%rdi, %rsi
	movl	%ebx, %edi
	movq	%rcx, %rbx
	movq	%rdx, 88(%rsp)
	movq	%rax, 96(%rsp)
	jmp	.L2599
	.p2align 4,,10
.L2585:
	movl	18464(%r12), %eax
	movl	%eax, %r9d
	shrl	$23, %r9d
	movl	%r9d, %edx
	movswl	(%rbx,%rdx,2), %edx
	testl	%edx, %edx
	movl	%edx, %ecx
	je	.L2588
.L2719:
	movl	%edx, %r11d
	andl	$15, %ecx
	movl	%r8d, %r9d
	sarl	$4, %r11d
	sall	%cl, %eax
	subl	%ecx, %r9d
	movzbl	64(%rsp), %ecx
	andl	$15, %r11d
	movl	%eax, 18464(%r12)
	sarl	$8, %edx
	addl	%edi, %r11d
	movl	%r9d, 18468(%r12)
	leal	1(%r11), %edi
	movslq	%r11d, %r11
	movzbl	(%r14,%r11), %eax
	sall	%cl, %edx
	movw	%dx, 0(%r13,%rax,2)
.L2587:
	cmpl	%edi, 18488(%r12)
	jl	.L2941
.L2599:
	movl	18468(%r12), %r8d
	cmpl	$15, %r8d
	jg	.L2585
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%r12), %eax
	movl	18468(%r12), %r8d
	movl	%eax, %r9d
	shrl	$23, %r9d
	movl	%r9d, %edx
	movswl	(%rbx,%rdx,2), %edx
	testl	%edx, %edx
	movl	%edx, %ecx
	jne	.L2719
	cmpl	$15, %r8d
	jg	.L2588
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%r12), %eax
	movl	18468(%r12), %r8d
	movl	%eax, %r9d
	shrl	$23, %r9d
.L2588:
	movslq	%r9d, %r9
	movzbl	6728(%r9,%rsi), %edx
	cmpl	$255, %edx
	je	.L2589
	addq	%rsi, %rdx
	movzbl	8008(%rdx), %ecx
	cmpl	%r8d, %ecx
	jg	.L2593
	movl	%r8d, %r9d
	sall	%cl, %eax
	subl	%ecx, %r9d
	movl	%eax, 18464(%r12)
	movl	%r9d, 18468(%r12)
	movzbl	7752(%rdx), %ebp
.L2591:
	movl	%ebp, %edx
	sarl	$4, %edx
	andl	$15, %ebp
	jne	.L2942
	cmpl	$15, %edx
	jne	.L2943
	addl	$16, %edi
	cmpl	%edi, 18488(%r12)
	jge	.L2599
.L2941:
	movl	80(%rsp), %esi
	jmp	.L2580
	.p2align 4,,10
.L2938:
	cmpl	$23, 18468(%r12)
	jg	.L2624
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
.L2624:
	movzbl	18472(%r12), %ecx
	leal	48(%rcx), %eax
	cmpb	$7, %al
	ja	.L2891
	movl	18536(%r12), %eax
	movl	$2147483647, %edx
	movl	$0, 18476(%r12)
	movl	$0, 18392(%r12)
	movl	$0, 18296(%r12)
	movl	$0, 18200(%r12)
	movl	$0, 18104(%r12)
	testl	%eax, %eax
	cmove	%edx, %eax
	addl	$1, %esi
	cmpl	%esi, 72(%rsp)
	movq	$0, 18464(%r12)
	movb	$-1, 18472(%r12)
	movl	%eax, 18540(%r12)
	movl	$0, 18500(%r12)
	jne	.L2627
.L2566:
	addl	$1, 56(%rsp)
	movl	56(%rsp), %eax
	cmpl	%eax, 116(%rsp)
	jne	.L2628
	movzbl	18472(%r12), %ecx
	movq	%r12, %r13
	jmp	.L2625
	.p2align 4,,10
.L2589:
	movl	%eax, %edx
	shrl	$16, %edx
	cmpl	%edx, 8308(%rsi)
	ja	.L2748
	cmpl	8312(%rsi), %edx
	jb	.L2749
	cmpl	8316(%rsi), %edx
	jb	.L2750
	cmpl	8320(%rsi), %edx
	jb	.L2751
	cmpl	8324(%rsi), %edx
	jb	.L2752
	cmpl	8328(%rsi), %edx
	jb	.L2753
	cmpl	8332(%rsi), %edx
	jb	.L2754
	leal	-16(%r8), %r11d
	movl	%r11d, 18468(%r12)
.L2593:
	leaq	.LC59(%rip), %rax
	movl	$0, 64(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2479
	.p2align 4,,10
.L2583:
	movzbl	64(%rsp), %ecx
	movl	$1, %r8d
	sall	%cl, %r8d
	testl	%edx, %edx
	movl	%r8d, 80(%rsp)
	movw	%r8w, 64(%rsp)
	je	.L2944
	movl	18488(%r12), %eax
	subl	$1, %edx
	movl	%edx, 18500(%r12)
	cmpl	%eax, %ebx
	jg	.L2580
	addl	$1, %ebx
	movslq	%ebx, %rbx
	jmp	.L2606
.L2896:
	movl	18488(%r12), %eax
.L2601:
	movl	%ebx, %edx
	addq	$1, %rbx
	cmpl	%eax, %edx
	jg	.L2580
.L2606:
	leaq	-1+_ZL19stbi__jpeg_dezigzag(%rip), %rdi
	movzbl	(%rdi,%rbx), %edx
	leaq	0(%r13,%rdx,2), %rdi
	cmpw	$0, (%rdi)
	je	.L2601
	movl	18468(%r12), %eax
	testl	%eax, %eax
	jle	.L2945
.L2602:
	movl	18464(%r12), %edx
	subl	$1, %eax
	movl	%eax, 18468(%r12)
	leal	(%rdx,%rdx), %ecx
	testl	%edx, %edx
	movl	%ecx, 18464(%r12)
	jns	.L2896
	movzwl	(%rdi), %eax
	testw	%ax, 64(%rsp)
	jne	.L2896
	testw	%ax, %ax
	jle	.L2605
	addw	80(%rsp), %ax
	movw	%ax, (%rdi)
	movl	18488(%r12), %eax
	jmp	.L2601
.L2942:
	addl	%edi, %edx
	cmpl	%r9d, %ebp
	leal	1(%rdx), %edi
	movslq	%edx, %rdx
	movzbl	(%r14,%rdx), %ecx
	movb	%cl, 112(%rsp)
	jg	.L2946
.L2598:
	movl	%eax, %edx
	movl	%ebp, %ecx
	movslq	%ebp, %r11
	roll	%cl, %edx
	sarl	$31, %eax
	subl	%ebp, %r9d
	leaq	_ZL11stbi__bmask(%rip), %rcx
	notl	%eax
	movl	%r9d, 18468(%r12)
	movzbl	112(%rsp), %r9d
	movl	(%rcx,%r11,4), %r8d
	movl	%r8d, %ecx
	notl	%ecx
	andl	%edx, %ecx
	andl	%r8d, %edx
	movl	%ecx, 18464(%r12)
	leaq	_ZL11stbi__jbias(%rip), %rcx
	andl	(%rcx,%r11,4), %eax
	movzbl	64(%rsp), %ecx
	addl	%edx, %eax
	sall	%cl, %eax
	movw	%ax, 0(%r13,%r9,2)
	jmp	.L2587
.L2936:
	xorl	%eax, %eax
	movl	$16, %ecx
	movq	%r13, %rdi
	rep stosq
	movl	18468(%r12), %r10d
	cmpl	$15, %r10d
	jg	.L2571
	movq	%r12, %rcx
	movl	%edx, 64(%rsp)
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r12), %r10d
	movl	64(%rsp), %edx
.L2571:
	imulq	$1680, %rbx, %rax
	movl	18464(%r12), %edi
	movl	%edi, %r8d
	leaq	(%r12,%rax), %rcx
	shrl	$23, %r8d
	movzbl	8(%r8,%rcx), %eax
	cmpl	$255, %eax
	je	.L2572
	addq	%rcx, %rax
	movzbl	1288(%rax), %ecx
	cmpl	%r10d, %ecx
	jg	.L2573
	sall	%cl, %edi
	subl	%ecx, %r10d
	movl	%edi, 18464(%r12)
	movl	%r10d, 18468(%r12)
	movzbl	1032(%rax), %ebx
	testl	%ebx, %ebx
	jne	.L2947
.L2577:
	addl	18104(%r15), %ebx
	movl	%ebx, 18104(%r15)
	movl	18496(%r12), %ecx
	sall	%cl, %ebx
	movw	%bx, 0(%r13)
	jmp	.L2580
.L2944:
	imulq	$1680, %rax, %r9
	movl	%esi, 112(%rsp)
	imulq	$420, %rax, %rdi
	movq	%r15, 88(%rsp)
	imulq	$840, %rax, %rax
	leaq	(%r12,%r9), %rbp
	movq	%rdi, 96(%rsp)
	movq	%rbp, %rsi
	movq	%rax, 104(%rsp)
.L2600:
	movl	18468(%r12), %edx
	cmpl	$15, %edx
	jg	.L2607
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r12), %edx
.L2607:
	movl	18464(%r12), %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	6728(%rcx,%rsi), %ecx
	cmpl	$255, %ecx
	je	.L2608
	leaq	(%rsi,%rcx), %r8
	movzbl	8008(%r8), %ecx
	cmpl	%edx, %ecx
	jg	.L2593
	sall	%cl, %eax
	subl	%ecx, %edx
	movl	%eax, 18464(%r12)
	movl	%edx, 18468(%r12)
	movzbl	7752(%r8), %r8d
.L2609:
	movl	%r8d, %edi
	movl	%r8d, %r15d
	sarl	$4, %edi
	andl	$15, %r15d
	jne	.L2948
	cmpl	$15, %edi
	je	.L2612
	movl	$1, %r10d
	movl	%edi, %ecx
	sall	%cl, %r10d
	subl	$1, %r10d
	testl	%edi, %edi
	movl	%r10d, 18500(%r12)
	jne	.L2949
	movl	%edi, %r15d
	movl	$64, %edi
	.p2align 4,,10
.L2612:
	movslq	%ebx, %rax
	movl	18488(%r12), %edx
	movq	%rax, %rbx
	jmp	.L2615
	.p2align 4,,10
.L2952:
	movl	18468(%r12), %eax
	testl	%eax, %eax
	jle	.L2950
.L2617:
	movl	18464(%r12), %edx
	subl	$1, %eax
	movl	%eax, 18468(%r12)
	leal	(%rdx,%rdx), %ecx
	testl	%edx, %edx
	movl	%ecx, 18464(%r12)
	js	.L2951
.L2618:
	movl	18488(%r12), %edx
.L2620:
	addq	$1, %rbx
.L2615:
	cmpl	%ebx, %edx
	jl	.L2890
	movzbl	(%r14,%rbx), %eax
	leal	1(%rbx), %ecx
	leaq	0(%r13,%rax,2), %rbp
	cmpw	$0, 0(%rbp)
	jne	.L2952
	testl	%edi, %edi
	je	.L2953
	subl	$1, %edi
	jmp	.L2620
	.p2align 4,,10
.L2951:
	movzwl	0(%rbp), %eax
	testw	%ax, 64(%rsp)
	jne	.L2618
	testw	%ax, %ax
	jle	.L2621
	addw	80(%rsp), %ax
	movw	%ax, 0(%rbp)
	movl	18488(%r12), %edx
	jmp	.L2620
	.p2align 4,,10
.L2950:
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r12), %eax
	jmp	.L2617
.L2953:
	movw	%r15w, 0(%rbp)
	cmpl	%ecx, 18488(%r12)
	movl	%ecx, %ebx
	jge	.L2600
	.p2align 4,,10
.L2890:
	movl	112(%rsp), %esi
	movq	88(%rsp), %r15
	jmp	.L2580
	.p2align 4,,10
.L2608:
	movl	%eax, %ecx
	shrl	$16, %ecx
	cmpl	%ecx, 8308(%rsi)
	ja	.L2755
	cmpl	8312(%rsi), %ecx
	jb	.L2756
	cmpl	%ecx, 8316(%rsi)
	ja	.L2757
	cmpl	%ecx, 8320(%rsi)
	ja	.L2758
	cmpl	%ecx, 8324(%rsi)
	ja	.L2759
	cmpl	8328(%rsi), %ecx
	jb	.L2760
	cmpl	8332(%rsi), %ecx
	jb	.L2761
	leal	-16(%rdx), %edx
	movl	%edx, 18468(%r12)
	jmp	.L2593
	.p2align 4,,10
.L2948:
	cmpl	$1, %r15d
	jne	.L2593
	testl	%edx, %edx
	jle	.L2954
.L2614:
	movswl	64(%rsp), %r15d
	leal	(%rax,%rax), %ecx
	subl	$1, %edx
	movl	%edx, 18468(%r12)
	movl	%ecx, 18464(%r12)
	movl	%r15d, %edx
	negl	%edx
	testl	%eax, %eax
	cmovns	%edx, %r15d
	jmp	.L2612
.L2621:
	subw	80(%rsp), %ax
	movw	%ax, 0(%rbp)
	movl	18488(%r12), %edx
	jmp	.L2620
.L2940:
	subl	$1, %edx
	movl	%edx, 18500(%r12)
	jmp	.L2580
.L2954:
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%r12), %eax
	movl	18468(%r12), %edx
	jmp	.L2614
.L2933:
	movslq	%ebx, %rcx
	cmpl	%r10d, %ebx
	movl	%ebx, %r8d
	leaq	_ZL11stbi__bmask(%rip), %rdi
	movl	%ebx, %r11d
	movl	(%rdi,%rcx,4), %edx
	leaq	_ZL11stbi__jbias(%rip), %r15
	movl	(%r15,%rcx,4), %r15d
	movl	%edx, %edi
	notl	%edi
	jg	.L2716
.L2646:
	movl	%eax, %r10d
	sarl	$31, %eax
	movl	%ebx, %ecx
	movl	%eax, %ebx
	roll	%cl, %r10d
	notl	%ebx
	andl	%r10d, %edx
	andl	%r15d, %ebx
	addl	%edx, %ebx
	cmpl	$16, %r8d
	jbe	.L2647
	jmp	.L2715
.L2945:
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r12), %eax
	jmp	.L2602
.L2572:
	movl	%edi, %eax
	shrl	$16, %eax
	cmpl	1588(%rcx), %eax
	jb	.L2740
	cmpl	1592(%rcx), %eax
	jb	.L2741
	cmpl	1596(%rcx), %eax
	jb	.L2742
	cmpl	%eax, 1600(%rcx)
	ja	.L2743
	cmpl	%eax, 1604(%rcx)
	ja	.L2744
	cmpl	1608(%rcx), %eax
	jb	.L2745
	cmpl	%eax, 1612(%rcx)
	ja	.L2746
	subl	$16, %r10d
	movl	%r10d, 18468(%r12)
.L2573:
	cmpl	$-1, %r10d
	jge	.L2955
	movl	$-1, %ebp
	xorl	%r8d, %r8d
	movl	%ebp, %r9d
	movl	%ebp, %ebx
.L2713:
	movq	%r12, %rcx
	movl	%r8d, 112(%rsp)
	movl	%r9d, 80(%rsp)
	movl	%edx, 64(%rsp)
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	112(%rsp), %r8d
	movl	%ebx, %eax
	movl	80(%rsp), %r9d
	movl	64(%rsp), %edx
.L2578:
	movl	18464(%r12), %r10d
	movl	%ebx, %ecx
	movl	%r10d, %edi
	sarl	$31, %r10d
	movl	%r10d, %ebx
	roll	%cl, %edi
	notl	%ebx
	andl	%edi, %r8d
	andl	%ebx, %edx
	cmpl	$16, %r9d
	leal	(%rdx,%r8), %ebx
	ja	.L2712
.L2579:
	subl	%eax, 18468(%r12)
	andl	%ebp, %edi
	movl	%edi, 18464(%r12)
	jmp	.L2577
.L2949:
	cmpl	%edx, %edi
	jle	.L2613
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18500(%r12), %r10d
	movl	18464(%r12), %eax
	movl	18468(%r12), %edx
.L2613:
	leaq	_ZL11stbi__bmask(%rip), %r11
	movl	%edi, %ecx
	subl	%edi, %edx
	roll	%cl, %eax
	movslq	%edi, %rcx
	movl	%edx, 18468(%r12)
	movl	$64, %edi
	movl	(%r11,%rcx,4), %r11d
	movl	%r11d, %ecx
	notl	%ecx
	andl	%eax, %ecx
	andl	%r11d, %eax
	addl	%eax, %r10d
	movl	%ecx, 18464(%r12)
	movl	%r10d, 18500(%r12)
	jmp	.L2612
.L2937:
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r12), %eax
	jmp	.L2581
.L2755:
	movl	$1023, %r8d
	movl	$22, %ecx
	movl	$10, %ebp
.L2610:
	cmpl	%edx, %ebp
	jg	.L2593
	movl	%eax, %edi
	movl	%eax, %r10d
	shrl	%cl, %edi
	movl	%edi, %ecx
	movq	96(%rsp), %rdi
	andl	%r8d, %ecx
	movslq	%ebp, %r8
	leaq	2080(%r8,%rdi), %r8
	addl	20(%r12,%r8,4), %ecx
	movslq	%ecx, %rdi
	movl	$32, %ecx
	movzbl	8008(%rsi,%rdi), %r8d
	subl	%r8d, %ecx
	shrl	%cl, %r10d
	movl	%r10d, %ecx
	leaq	_ZL11stbi__bmask(%rip), %r10
	andl	(%r10,%r8,4), %ecx
	movq	104(%rsp), %r10
	leaq	3616(%rdi,%r10), %r8
	movzwl	8(%r12,%r8,2), %r8d
	cmpl	%r8d, %ecx
	je	.L2611
	leaq	.LC3(%rip), %rdx
	movl	$1837, %r8d
	leaq	.LC58(%rip), %rcx
	call	_assert
	movl	18468(%r12), %edx
	movl	18464(%r12), %eax
.L2611:
	movl	%ebp, %ecx
	subl	%ebp, %edx
	sall	%cl, %eax
	movl	%edx, 18468(%r12)
	movl	%eax, 18464(%r12)
	movzbl	7752(%rsi,%rdi), %r8d
	jmp	.L2609
.L2946:
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%r12), %eax
	movl	18468(%r12), %r9d
	jmp	.L2598
.L2756:
	movl	$2047, %r8d
	movl	$21, %ecx
	movl	$11, %ebp
	jmp	.L2610
.L2757:
	movl	$4095, %r8d
	movl	$20, %ecx
	movl	$12, %ebp
	jmp	.L2610
.L2934:
	movl	$-1, %edi
	xorl	%edx, %edx
	movl	%edi, %r8d
	movl	%edi, %ebx
.L2716:
	movq	%r13, %rcx
	movl	%edx, 112(%rsp)
	movl	%r8d, 80(%rsp)
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%r13), %eax
	movl	%ebx, %r11d
	movl	112(%rsp), %edx
	movl	80(%rsp), %r8d
	jmp	.L2646
.L2758:
	movl	$8191, %r8d
	movl	$19, %ecx
	movl	$13, %ebp
	jmp	.L2610
.L2763:
	movl	$1023, %edx
	movl	$22, %ecx
	movl	$10, %edi
.L2643:
	cmpl	%r10d, %edi
	jg	.L2641
	movl	%eax, %r15d
	movl	%eax, %r11d
	shrl	%cl, %r15d
	imulq	$420, %rbx, %rcx
	andl	%edx, %r15d
	movslq	%edi, %rdx
	leaq	400(%rdx,%rcx), %rdx
	movl	$32, %ecx
	addl	20(%r13,%rdx,4), %r15d
	imulq	$1680, %rbx, %rdx
	movslq	%r15d, %r15
	addq	%r13, %rdx
	movzbl	1288(%rdx,%r15), %edx
	subl	%edx, %ecx
	shrl	%cl, %r11d
	movl	%r11d, %ecx
	leaq	_ZL11stbi__bmask(%rip), %r11
	andl	(%r11,%rdx,4), %ecx
	movl	%ecx, %edx
	imulq	$840, %rbx, %rcx
	leaq	256(%rcx,%r15), %rcx
	movzwl	8(%r13,%rcx,2), %ecx
	cmpl	%ecx, %edx
	je	.L2644
	leaq	.LC3(%rip), %rdx
	movl	$1837, %r8d
	leaq	.LC58(%rip), %rcx
	call	_assert
	movl	18468(%r13), %r10d
	movl	18464(%r13), %eax
.L2644:
	imulq	$1680, %rbx, %rdx
	movl	%edi, %ecx
	subl	%edi, %r10d
	sall	%cl, %eax
	movl	%r10d, 18468(%r13)
	movl	%eax, 18464(%r13)
	addq	%r13, %rdx
	movzbl	1032(%rdx,%r15), %ebx
	jmp	.L2642
.L2761:
	movl	$65535, %r8d
	movl	$16, %ecx
	movl	$16, %ebp
	jmp	.L2610
.L2749:
	movl	$2047, %edx
	movl	$21, %ecx
	movl	$11, %r11d
.L2592:
	cmpl	%r8d, %r11d
	jg	.L2593
	movl	%eax, %ebp
	movl	%eax, %r10d
	shrl	%cl, %ebp
	movq	88(%rsp), %rcx
	andl	%edx, %ebp
	movslq	%r11d, %rdx
	leaq	2080(%rdx,%rcx), %rdx
	movl	$32, %ecx
	addl	20(%r12,%rdx,4), %ebp
	movslq	%ebp, %rbp
	movzbl	8008(%rbp,%rsi), %edx
	subl	%edx, %ecx
	shrl	%cl, %r10d
	movl	%r10d, %ecx
	leaq	_ZL11stbi__bmask(%rip), %r10
	andl	(%r10,%rdx,4), %ecx
	movq	96(%rsp), %rdx
	leaq	3616(%rbp,%rdx), %rdx
	movzwl	8(%r12,%rdx,2), %edx
	cmpl	%edx, %ecx
	je	.L2594
	movl	$1837, %r8d
	movl	%r11d, 112(%rsp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC58(%rip), %rcx
	call	_assert
	movl	18468(%r12), %r8d
	movl	18464(%r12), %eax
	movl	112(%rsp), %r11d
.L2594:
	movl	%r8d, %r9d
	movl	%r11d, %ecx
	subl	%r11d, %r9d
	sall	%cl, %eax
	movl	%r9d, 18468(%r12)
	movl	%eax, 18464(%r12)
	movzbl	7752(%rbp,%rsi), %ebp
	jmp	.L2591
.L2748:
	movl	$1023, %edx
	movl	$22, %ecx
	movl	$10, %r11d
	jmp	.L2592
.L2760:
	movl	$32767, %r8d
	movl	$17, %ecx
	movl	$15, %ebp
	jmp	.L2610
.L2759:
	movl	$16383, %r8d
	movl	$18, %ecx
	movl	$14, %ebp
	jmp	.L2610
.L2750:
	movl	$4095, %edx
	movl	$20, %ecx
	movl	$12, %r11d
	jmp	.L2592
.L2955:
	movl	$33, %ecx
	movl	$-1, %ebp
	xorl	%ebx, %ebx
	rorl	%cl, %edi
	movl	%ebp, %eax
.L2712:
	movl	$1858, %r8d
	movl	%eax, 64(%rsp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC84(%rip), %rcx
	call	_assert
	movl	64(%rsp), %eax
	jmp	.L2579
.L2764:
	movl	$2047, %edx
	movl	$21, %ecx
	movl	$11, %edi
	jmp	.L2643
.L2891:
	movq	%r12, %r13
	jmp	.L2625
.L2754:
	movl	$65535, %edx
	movl	$16, %ecx
	movl	$16, %r11d
	jmp	.L2592
.L2768:
	movl	$32767, %edx
	movl	$17, %ecx
	movl	$15, %edi
	jmp	.L2643
.L2767:
	movl	$16383, %edx
	movl	$18, %ecx
	movl	$14, %edi
	jmp	.L2643
.L2766:
	movl	$8191, %edx
	movl	$19, %ecx
	movl	$13, %edi
	jmp	.L2643
.L2765:
	movl	$4095, %edx
	movl	$20, %ecx
	movl	$12, %edi
	jmp	.L2643
.L2751:
	movl	$8191, %edx
	movl	$19, %ecx
	movl	$13, %r11d
	jmp	.L2592
.L2753:
	movl	$32767, %edx
	movl	$17, %ecx
	movl	$15, %r11d
	jmp	.L2592
.L2752:
	movl	$16383, %edx
	movl	$18, %ecx
	movl	$14, %r11d
	jmp	.L2592
.L2769:
	movl	$65535, %edx
	movl	$16, %ecx
	movl	$16, %edi
	jmp	.L2643
.L2740:
	movl	$1023, %eax
	movl	$22, %ecx
	movl	$10, %ebp
.L2575:
	cmpl	%r10d, %ebp
	jg	.L2573
	movl	%edi, %edx
	movl	%edi, %r11d
	shrl	%cl, %edx
	imulq	$420, %rbx, %rcx
	andl	%edx, %eax
	movslq	%ebp, %rdx
	leaq	400(%rdx,%rcx), %rdx
	movl	$32, %ecx
	addl	20(%r12,%rdx,4), %eax
	imulq	$1680, %rbx, %rdx
	cltq
	addq	%r12, %rdx
	movzbl	1288(%rdx,%rax), %edx
	subl	%edx, %ecx
	shrl	%cl, %r11d
	movl	%r11d, %ecx
	leaq	_ZL11stbi__bmask(%rip), %r11
	andl	(%r11,%rdx,4), %ecx
	movl	%ecx, %edx
	imulq	$840, %rbx, %rcx
	leaq	256(%rcx,%rax), %rcx
	movzwl	8(%r12,%rcx,2), %ecx
	cmpl	%ecx, %edx
	je	.L2576
	movl	$1837, %r8d
	movq	%rax, 64(%rsp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC58(%rip), %rcx
	call	_assert
	movl	18468(%r12), %r10d
	movl	18464(%r12), %edi
	movq	64(%rsp), %rax
.L2576:
	imulq	$1680, %rbx, %rbx
	movl	%ebp, %ecx
	subl	%ebp, %r10d
	sall	%cl, %edi
	movl	%r10d, 18468(%r12)
	movl	%edi, 18464(%r12)
	leaq	(%r12,%rbx), %rdx
	movzbl	1032(%rdx,%rax), %ebx
	testl	%ebx, %ebx
	je	.L2577
.L2947:
	movslq	%ebx, %rax
	cmpl	%r10d, %ebx
	movl	%ebx, %r9d
	leaq	_ZL11stbi__bmask(%rip), %rdi
	movl	(%rdi,%rax,4), %r8d
	leaq	_ZL11stbi__jbias(%rip), %rdi
	movl	(%rdi,%rax,4), %edx
	movl	%ebx, %eax
	movl	%r8d, %ebp
	notl	%ebp
	jle	.L2578
	jmp	.L2713
	.p2align 4,,10
.L2943:
	movl	$1, %eax
	movl	%edx, %ecx
	movl	80(%rsp), %esi
	movl	%edx, %ebp
	sall	%cl, %eax
	testl	%edx, %edx
	movl	%eax, 18500(%r12)
	jne	.L2956
.L2596:
	subl	$1, %eax
	movl	%eax, 18500(%r12)
	jmp	.L2580
.L2605:
	subw	80(%rsp), %ax
	movw	%ax, (%rdi)
	jmp	.L2896
.L2743:
	movl	$8191, %eax
	movl	$19, %ecx
	movl	$13, %ebp
	jmp	.L2575
.L2742:
	movl	$4095, %eax
	movl	$20, %ecx
	movl	$12, %ebp
	jmp	.L2575
.L2746:
	movl	$65535, %eax
	movl	$16, %ecx
	movl	$16, %ebp
	jmp	.L2575
.L2935:
	cmpl	$23, 18468(%r13)
	jg	.L2654
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
.L2654:
	movzbl	18472(%r13), %ecx
	leal	48(%rcx), %eax
	cmpb	$7, %al
	ja	.L2625
	movl	18536(%r13), %eax
	movl	$0, 18476(%r13)
	movl	$0, 18392(%r13)
	movl	$0, 18296(%r13)
	movl	$0, 18200(%r13)
	testl	%eax, %eax
	movb	$-1, 18472(%r13)
	movl	$0, 18104(%r13)
	movq	$0, 18464(%r13)
	jne	.L2655
	movl	$2147483647, %eax
.L2655:
	movl	%eax, 18540(%r13)
	movl	$0, 18500(%r13)
	jmp	.L2653
.L2913:
	movl	$2147483647, 18540(%r13)
	movl	$0, 18500(%r13)
	jmp	.L2709
.L2745:
	movl	$32767, %eax
	movl	$17, %ecx
	movl	$15, %ebp
	jmp	.L2575
.L2744:
	movl	$16383, %eax
	movl	$18, %ecx
	movl	$14, %ebp
	jmp	.L2575
.L2741:
	movl	$2047, %eax
	movl	$21, %ecx
	movl	$11, %ebp
	jmp	.L2575
.L2956:
	cmpl	%r9d, %edx
	jle	.L2597
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
.L2597:
	movl	18464(%r12), %eax
	movl	%ebp, %ecx
	movslq	%ebp, %rdx
	subl	%ebp, 18468(%r12)
	leaq	_ZL11stbi__bmask(%rip), %rdi
	roll	%cl, %eax
	movl	(%rdi,%rdx,4), %ecx
	movl	%ecx, %edx
	notl	%edx
	andl	%eax, %edx
	andl	%ecx, %eax
	addl	18500(%r12), %eax
	movl	%edx, 18464(%r12)
	jmp	.L2596
	.seh_endproc
	.section .rdata,"dr"
.LC88:
	.ascii "#?RADIANCE\0"
.LC89:
	.ascii "#?RGBE\0"
.LC90:
	.ascii "not HDR\0"
.LC91:
	.ascii "unsupported format\0"
.LC92:
	.ascii "unsupported data layout\0"
	.align 8
.LC93:
	.ascii "invalid decoded scanline length\0"
.LC94:
	.ascii "corrupt\0"
	.text
	.p2align 4,,15
	.def	_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.39;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.39
_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.39:
.LFB8050:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$1160, %rsp
	.seh_stackalloc	1160
	.seh_endprologue
	leaq	.LC88(%rip), %rdi
	leaq	128(%rsp), %rbx
	movq	%rcx, %r12
	movq	%r9, %r13
	movq	%rdx, 1240(%rsp)
	movq	%rbx, %rdx
	movq	%r8, 1248(%rsp)
	call	_ZL18stbi__hdr_gettokenP13stbi__contextPc
	movl	$11, %ecx
	movq	%rax, %rsi
	repz cmpsb
	seta	%cl
	setb	%dl
	subl	%edx, %ecx
	movsbl	%cl, %r15d
	testl	%r15d, %r15d
	je	.L2958
	leaq	.LC89(%rip), %rdi
	movq	%rax, %rsi
	movl	$7, %ecx
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movsbl	%dl, %r15d
	testl	%r15d, %r15d
	jne	.L3051
.L2958:
	leaq	.LC54(%rip), %r14
	movl	$1, %ebp
	jmp	.L3042
	.p2align 4,,10
.L3052:
	movl	$23, %ecx
	movq	%r14, %rdi
	repz cmpsb
	cmove	%ebp, %r15d
.L3042:
	movq	%rbx, %rdx
	movq	%r12, %rcx
	call	_ZL18stbi__hdr_gettokenP13stbi__contextPc
	movq	%rax, 120(%rsp)
	cmpb	$0, (%rax)
	movq	%rax, %rsi
	jne	.L3052
	testl	%r15d, %r15d
	je	.L3053
	leaq	.LC55(%rip), %rdi
	movq	%r12, %rcx
	movq	%rbx, %rdx
	call	_ZL18stbi__hdr_gettokenP13stbi__contextPc
	movl	$3, %ecx
	movq	%rax, 120(%rsp)
	movq	%rax, %rsi
	repz cmpsb
	jne	.L2967
	leaq	3(%rax), %rcx
	movl	$10, %r8d
	leaq	120(%rsp), %rdx
	movq	%rcx, 120(%rsp)
	call	strtol
	movq	120(%rsp), %rdx
	movl	%eax, 52(%rsp)
	cmpb	$32, (%rdx)
	jne	.L2965
	leaq	1(%rdx), %rax
	.p2align 4,,10
.L2966:
	movq	%rax, 120(%rsp)
	movq	%rax, %rdx
	addq	$1, %rax
	cmpb	$32, -1(%rax)
	je	.L2966
.L2965:
	leaq	.LC56(%rip), %rdi
	movl	$3, %ecx
	movq	%rdx, %rsi
	repz cmpsb
	jne	.L2967
	leaq	3(%rdx), %rcx
	movl	$10, %r8d
	xorl	%edx, %edx
	movq	%rcx, 120(%rsp)
	call	strtol
	movq	1240(%rsp), %rdi
	testq	%r13, %r13
	movl	%eax, 48(%rsp)
	movl	%eax, (%rdi)
	movq	1248(%rsp), %rax
	movl	52(%rsp), %edi
	movl	%edi, (%rax)
	je	.L2968
	movl	$3, 0(%r13)
.L2968:
	movl	1264(%rsp), %esi
	movl	$3, %eax
	movl	48(%rsp), %ebx
	testl	%esi, %esi
	cmovne	1264(%rsp), %eax
	testl	%ebx, %ebx
	movl	%eax, 1264(%rsp)
	js	.L2970
	movl	52(%rsp), %edi
	testl	%edi, %edi
	js	.L2970
	testl	%edi, %edi
	jne	.L3054
.L2971:
	movl	1264(%rsp), %eax
	testl	%eax, %eax
	jns	.L3055
.L2970:
	movq	$0, 56(%rsp)
	leaq	.LC78(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2957
	.p2align 4,,10
.L2967:
	movq	$0, 56(%rsp)
	leaq	.LC92(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L2957:
	movq	56(%rsp), %rax
	addq	$1160, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L3054:
	movl	$2147483647, %eax
	cltd
	idivl	%edi
	cmpl	%eax, %ebx
	jle	.L2971
	jmp	.L2970
.L3055:
	movl	$2147483647, %r8d
	movl	52(%rsp), %ecx
	imull	48(%rsp), %ecx
	movl	%r8d, %eax
	cltd
	idivl	1264(%rsp)
	cmpl	%ecx, %eax
	jl	.L2970
	imull	1264(%rsp), %ecx
	cmpl	$536870911, %ecx
	jg	.L2970
	movl	52(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L2973
	movl	%r8d, %eax
	cltd
	idivl	52(%rsp)
	cmpl	%eax, 48(%rsp)
	jg	.L3050
.L2973:
	sall	$2, %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	.L3050
	movl	48(%rsp), %eax
	subl	$8, %eax
	cmpl	$32759, %eax
	jbe	.L2975
	xorl	%r15d, %r15d
.L2976:
	cmpl	%r15d, 52(%rsp)
	jle	.L2957
	movl	48(%rsp), %eax
	xorl	%edi, %edi
	movl	%r15d, %r13d
	addl	$1, %r15d
	cmpl	%edi, %eax
	jle	.L2976
.L3056:
	movl	1264(%rsp), %esi
	imull	%r13d, %eax
	leaq	116(%rsp), %rbp
	movl	1264(%rsp), %ebx
	imull	%eax, %esi
	imull	%edi, %ebx
	addl	$1, %edi
	movslq	%esi, %rsi
.L2977:
	movl	$4, %r8d
	movq	%rbp, %rdx
	movq	%r12, %rcx
	call	_ZL10stbi__getnP13stbi__contextPhi
	movq	56(%rsp), %rax
	movslq	%ebx, %rbx
	movq	%rbp, %rdx
	movl	1264(%rsp), %r8d
	addq	%rbx, %rsi
	leaq	(%rax,%rsi,4), %rcx
	call	_ZL17stbi__hdr_convertPfPhi
	movl	48(%rsp), %eax
	cmpl	%edi, %eax
	jle	.L2976
	jmp	.L3056
	.p2align 4,,10
.L2975:
	movl	52(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L2957
	movl	48(%rsp), %edi
	movl	%r15d, 100(%rsp)
	leaq	57(%r12), %rbp
	movq	%r12, %r15
	movl	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	leal	0(,%rdi,4), %eax
	movq	%rax, 104(%rsp)
	movl	1264(%rsp), %eax
	imull	%edi, %eax
	cltq
	salq	$2, %rax
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
	movslq	1264(%rsp), %rax
	salq	$2, %rax
	movq	%rax, 88(%rsp)
	leal	-1(%rdi), %eax
	salq	$2, %rax
	movq	%rax, 80(%rsp)
.L3005:
	movq	%r15, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	%r15, %rcx
	movl	%eax, %ebx
	call	_ZL10stbi__get8P13stbi__context
	movq	%r15, %rcx
	movl	%eax, %edi
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$2, %bl
	movzbl	%al, %edx
	jne	.L3048
	cmpb	$2, %dil
	jne	.L3048
	testb	%al, %al
	js	.L3048
	movq	%r15, %rcx
	movl	%edx, %ebx
	call	_ZL10stbi__get8P13stbi__context
	sall	$8, %ebx
	movzbl	%al, %eax
	orl	%ebx, %eax
	cmpl	%eax, 48(%rsp)
	jne	.L3057
	cmpq	$0, 40(%rsp)
	je	.L3058
.L2982:
	xorl	%r13d, %r13d
	movq	%rbp, %r14
.L3003:
	xorl	%edi, %edi
	movq	%r14, %r12
	.p2align 4,,10
.L2983:
	movl	48(%rsp), %ebx
	subl	%edi, %ebx
	testl	%ebx, %ebx
	jle	.L2984
.L3060:
	movq	184(%r15), %rax
	movq	192(%r15), %rdx
	cmpq	%rdx, %rax
	jb	.L3059
	movl	48(%r15), %r10d
	testl	%r10d, %r10d
	je	.L2983
	leaq	56(%r15), %rsi
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rsi, %rdx
	call	*16(%r15)
	movq	%r12, %rcx
	testl	%eax, %eax
	jne	.L2988
	movl	48(%rsp), %ebx
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	movq	%r12, 192(%r15)
	movq	%r12, 184(%r15)
	subl	%edi, %ebx
	testl	%ebx, %ebx
	jg	.L3060
.L2984:
	addq	$1, %r13
	movq	%r12, %r14
	cmpq	$4, %r13
	jne	.L3003
	movq	40(%rsp), %rax
	movq	%r12, %rbp
	movq	80(%rsp), %rdi
	movq	88(%rsp), %r12
	movl	1264(%rsp), %r13d
	movq	%rax, %rsi
	leaq	4(%rax,%rdi), %rbx
	movq	64(%rsp), %rdi
	.p2align 4,,10
.L3004:
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	movl	%r13d, %r8d
	call	_ZL17stbi__hdr_convertPfPhi
	addq	$4, %rsi
	addq	%r12, %rdi
	cmpq	%rsi, %rbx
	jne	.L3004
	addl	$1, 96(%rsp)
	movq	72(%rsp), %rsi
	movl	96(%rsp), %eax
	addq	%rsi, 64(%rsp)
	cmpl	%eax, 52(%rsp)
	jne	.L3005
	movq	40(%rsp), %rcx
	call	free
	jmp	.L2957
	.p2align 4,,10
.L3059:
	leaq	1(%rax), %rcx
	movq	%rcx, 184(%r15)
	movzbl	(%rax), %esi
.L2986:
	cmpb	$-128, %sil
	jbe	.L2989
	cmpq	%rcx, %rdx
	ja	.L3061
	movl	48(%r15), %r9d
	testl	%r9d, %r9d
	je	.L3013
	leaq	56(%r15), %rbp
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbp, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	jne	.L2992
	movl	$0, 48(%r15)
	movq	%r12, %rbp
	xorl	%ecx, %ecx
	movb	$0, 56(%r15)
.L2993:
	movq	%rbp, 192(%r15)
	movq	%r12, 184(%r15)
.L2991:
	addl	$-128, %esi
	movzbl	%sil, %esi
	cmpl	%esi, %ebx
	jl	.L3049
	movq	40(%rsp), %rbx
	leal	0(,%rdi,4), %edx
	movslq	%edx, %rdx
	leaq	0(%r13,%rdx), %rax
	leaq	4(%rbx,%r13), %r8
	addq	%rbx, %rax
	addq	%r8, %rdx
	leal	-1(%rsi), %r8d
	leaq	(%rdx,%r8,4), %rdx
	.p2align 4,,10
.L2996:
	movb	%cl, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L2996
.L2995:
	addl	%esi, %edi
	jmp	.L2983
	.p2align 4,,10
.L2989:
	cmpl	%esi, %ebx
	jl	.L3049
	testl	%esi, %esi
	je	.L2983
	movq	40(%rsp), %rbx
	leal	0(,%rdi,4), %eax
	cltq
	leaq	(%rax,%r13), %r14
	leaq	4(%rbx,%r13), %r8
	addq	%rbx, %r14
	addq	%r8, %rax
	leal	-1(%rsi), %r8d
	leaq	(%rax,%r8,4), %rbp
	jmp	.L3002
	.p2align 4,,10
.L2998:
	movl	48(%r15), %r8d
	testl	%r8d, %r8d
	je	.L3014
	leaq	56(%r15), %rbx
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	movq	%r12, %rcx
	testl	%eax, %eax
	jne	.L3000
	movl	$0, 48(%r15)
	movq	%r12, %rdx
	movb	$0, 56(%r15)
.L3001:
	movq	%rdx, 192(%r15)
	movq	%r12, 184(%r15)
.L2999:
	movb	%al, (%r14)
	addq	$4, %r14
	cmpq	%rbp, %r14
	je	.L2995
.L3002:
	cmpq	%rdx, %rcx
	jnb	.L2998
	leaq	1(%rcx), %r8
	movq	%r8, 184(%r15)
	movzbl	(%rcx), %eax
	movq	%r8, %rcx
	jmp	.L2999
	.p2align 4,,10
.L3000:
	cltq
	leaq	(%rbx,%rax), %rdx
	movzbl	56(%r15), %eax
	jmp	.L3001
	.p2align 4,,10
.L3014:
	xorl	%eax, %eax
	jmp	.L2999
	.p2align 4,,10
.L2988:
	cltq
	movq	%r12, 184(%r15)
	leaq	(%rsi,%rax), %rdx
	movzbl	56(%r15), %esi
	movq	%rdx, 192(%r15)
	jmp	.L2986
	.p2align 4,,10
.L3061:
	leaq	1(%rcx), %rax
	movq	%rax, 184(%r15)
	movzbl	(%rcx), %ecx
	jmp	.L2991
	.p2align 4,,10
.L2992:
	cltq
	movzbl	56(%r15), %ecx
	addq	%rax, %rbp
	jmp	.L2993
.L3049:
	movq	56(%rsp), %rcx
	call	free
	movq	40(%rsp), %rcx
	call	free
	leaq	.LC94(%rip), %rax
	movq	$0, 56(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2957
	.p2align 4,,10
.L3053:
	movq	$0, 56(%rsp)
	leaq	.LC91(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2957
.L3013:
	xorl	%ecx, %ecx
	jmp	.L2991
.L3058:
	movq	104(%rsp), %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	jne	.L2982
	movq	56(%rsp), %rcx
	call	free
.L3050:
	movq	$0, 56(%rsp)
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2957
.L3051:
	movq	$0, 56(%rsp)
	leaq	.LC90(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2957
.L3048:
	movq	%r15, %r12
	movb	%bl, 116(%rsp)
	movl	100(%rsp), %r15d
	xorl	%r13d, %r13d
	movb	%dil, 117(%rsp)
	movq	%r12, %rcx
	movl	$2, %edi
	xorl	%esi, %esi
	movb	%al, 118(%rsp)
	leaq	116(%rsp), %rbp
	call	_ZL10stbi__get8P13stbi__context
	movl	1264(%rsp), %r8d
	movq	%rbp, %rdx
	movq	56(%rsp), %rcx
	movb	%al, 119(%rsp)
	call	_ZL17stbi__hdr_convertPfPhi
	movq	40(%rsp), %rcx
	call	free
	movl	1264(%rsp), %ebx
	jmp	.L2977
.L3057:
	movq	56(%rsp), %rcx
	call	free
	movq	40(%rsp), %rcx
	call	free
	leaq	.LC93(%rip), %rax
	movq	$0, 56(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2957
	.seh_endproc
	.section .rdata,"dr"
.LC95:
	.ascii "bad zlib header\0"
.LC96:
	.ascii "no preset dict\0"
.LC97:
	.ascii "bad compression\0"
.LC98:
	.ascii "a->num_bits == 0\0"
.LC99:
	.ascii "zlib corrupt\0"
.LC100:
	.ascii "read past buffer\0"
.LC101:
	.ascii "output buffer limit\0"
.LC102:
	.ascii "bad dist\0"
	.text
	.p2align 4,,15
	.def	_ZL16stbi__parse_zlibP10stbi__zbufi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__parse_zlibP10stbi__zbufi
_ZL16stbi__parse_zlibP10stbi__zbufi:
.LFB929:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$232, %rsp
	.seh_stackalloc	232
	.seh_endprologue
	testl	%edx, %edx
	movq	%rcx, %rbx
	jne	.L3491
.L3063:
	movq	$0, 16(%rbx)
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	leaq	.LC3(%rip), %r12
	.p2align 4,,10
.L3208:
	testl	%ecx, %ecx
	jle	.L3492
.L3071:
	movl	%eax, %esi
	subl	$1, %ecx
	shrl	%eax
	andl	$1, %esi
	cmpl	$1, %ecx
	movl	%eax, 20(%rbx)
	movl	%esi, 52(%rsp)
	movl	%ecx, 16(%rbx)
	jle	.L3493
.L3076:
	leal	-2(%rcx), %esi
	movl	%eax, %ebp
	shrl	$2, %ebp
	andl	$3, %eax
	movl	%esi, 16(%rbx)
	movl	%ebp, 20(%rbx)
	je	.L3494
	cmpl	$3, %eax
	je	.L3105
	cmpl	$1, %eax
	je	.L3495
	movq	%rbx, %rcx
	call	_ZL27stbi__compute_huffman_codesP10stbi__zbuf
	testl	%eax, %eax
	je	.L3105
	movl	16(%rbx), %esi
	movl	20(%rbx), %ebp
.L3151:
	movq	24(%rbx), %r15
	leaq	.LC4(%rip), %r14
	cmpl	$15, %esi
	jle	.L3496
	.p2align 4,,10
.L3154:
	movl	%ebp, %eax
	andl	$511, %eax
	movzwl	52(%rbx,%rax,2), %ecx
	testl	%ecx, %ecx
	movl	%ecx, %edi
	je	.L3158
	sarl	$9, %ecx
	andl	$511, %edi
	shrl	%cl, %ebp
	subl	%ecx, %esi
	movl	%ebp, 20(%rbx)
	movl	%esi, 16(%rbx)
.L3159:
	cmpl	$255, %edi
	jg	.L3497
	movq	40(%rbx), %rax
	cmpq	%r15, %rax
	ja	.L3212
	movl	48(%rbx), %r10d
	movq	%r15, 24(%rbx)
	testl	%r10d, %r10d
	je	.L3193
	movq	32(%rbx), %rcx
	subq	%rcx, %r15
	subq	%rcx, %rax
	cmpl	%eax, %r15d
	movl	%r15d, %r8d
	movl	%eax, %edx
	jl	.L3166
	.p2align 4,,10
.L3167:
	addl	%edx, %edx
	cmpl	%edx, %r8d
	jge	.L3167
.L3166:
	movslq	%edx, %rsi
	movq	%rsi, %rdx
	call	realloc
	testq	%rax, %rax
	je	.L3196
	movslq	%r15d, %r15
	movq	%rax, 32(%rbx)
	addq	%rax, %r15
	addq	%rsi, %rax
	movq	%r15, 24(%rbx)
	movq	%rax, 40(%rbx)
.L3212:
	movb	%dil, (%r15)
	addq	$1, %r15
.L3169:
	movl	16(%rbx), %esi
	movl	20(%rbx), %ebp
	cmpl	$15, %esi
	jg	.L3154
.L3496:
	movl	%esi, %ecx
	jmp	.L3153
	.p2align 4,,10
.L3155:
	movq	(%rbx), %rax
	cmpq	%rax, 8(%rbx)
	jbe	.L3156
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%rax), %eax
	sall	%cl, %eax
	orl	%eax, %ebp
.L3156:
	addl	$8, %ecx
	movl	%ebp, 20(%rbx)
	cmpl	$24, %ecx
	movl	%ecx, 16(%rbx)
	jg	.L3498
.L3153:
	movl	%ebp, %eax
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L3155
	movq	%r14, %rcx
	movl	$3848, %r8d
	movq	%r12, %rdx
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %ebp
	jmp	.L3155
	.p2align 4,,10
.L3497:
	cmpl	$256, %edi
	je	.L3499
	leaq	_ZL18stbi__zlength_base(%rip), %rax
	subl	$257, %edi
	movslq	%edi, %rdi
	movl	(%rax,%rdi,4), %r13d
	leaq	_ZL19stbi__zlength_extra(%rip), %rax
	movl	(%rax,%rdi,4), %edi
	testl	%edi, %edi
	jne	.L3500
.L3171:
	cmpl	$15, %esi
	jle	.L3501
.L3178:
	movl	%ebp, %eax
	andl	$511, %eax
	movzwl	2072(%rbx,%rax,2), %ecx
	testl	%ecx, %ecx
	movl	%ecx, %eax
	je	.L3182
	sarl	$9, %ecx
	andl	$511, %eax
	shrl	%cl, %ebp
	subl	%ecx, %esi
	movl	%ebp, 20(%rbx)
	movl	%esi, 16(%rbx)
.L3183:
	leaq	_ZL16stbi__zdist_base(%rip), %rdx
	cltq
	movl	(%rdx,%rax,4), %edi
	leaq	_ZL17stbi__zdist_extra(%rip), %rdx
	movl	(%rdx,%rax,4), %eax
	testl	%eax, %eax
	jne	.L3502
.L3214:
	movq	32(%rbx), %rcx
	movq	%r15, %r8
	movslq	%edi, %rbp
	subq	%rcx, %r8
	cmpq	%rbp, %r8
	jl	.L3503
	movq	40(%rbx), %rdx
	movslq	%r13d, %rax
	addq	%r15, %rax
	cmpq	%rax, %rdx
	jnb	.L3192
	movl	48(%rbx), %r9d
	movq	%r15, 24(%rbx)
	testl	%r9d, %r9d
	je	.L3193
	leal	0(%r13,%r8), %r9d
	movq	%rdx, %rax
	subq	%rcx, %rax
	cmpl	%r9d, %eax
	movl	%eax, %edx
	jge	.L3194
	.p2align 4,,10
.L3195:
	addl	%edx, %edx
	cmpl	%r9d, %edx
	jl	.L3195
.L3194:
	movslq	%edx, %rsi
	movq	%r8, 40(%rsp)
	movq	%rsi, %rdx
	call	realloc
	testq	%rax, %rax
	je	.L3196
	movq	40(%rsp), %r8
	movq	%rax, 32(%rbx)
	movslq	%r8d, %r15
	addq	%rax, %r15
	addq	%rsi, %rax
	movq	%r15, 24(%rbx)
	movq	%rax, 40(%rbx)
.L3192:
	movq	%r15, %rsi
	subq	%rbp, %rsi
	cmpl	$1, %edi
	je	.L3504
	testl	%r13d, %r13d
	je	.L3169
	leaq	16(%r15), %rax
	cmpq	%rax, %rsi
	movl	$16, %eax
	setnb	%dl
	subq	%rbp, %rax
	testq	%rax, %rax
	setle	%al
	orb	%al, %dl
	je	.L3198
	cmpl	$20, %r13d
	jbe	.L3198
	leal	-1(%r13), %ecx
	movq	%rsi, %rax
	negq	%rax
	movl	%ecx, %r8d
	andl	$15, %eax
	leal	15(%rax), %edx
	cmpl	%ecx, %edx
	ja	.L3231
	testl	%eax, %eax
	je	.L3232
	movzbl	(%rsi), %edx
	leaq	1(%rsi), %r9
	cmpl	$1, %eax
	leaq	1(%r15), %rdi
	movb	%dl, (%r15)
	je	.L3200
	movzbl	1(%rsi), %edx
	leaq	2(%rsi), %r9
	cmpl	$2, %eax
	leaq	2(%r15), %rdi
	leal	-2(%r13), %r8d
	movb	%dl, 1(%r15)
	je	.L3200
	movzbl	2(%rsi), %edx
	leaq	3(%rsi), %r9
	cmpl	$3, %eax
	leaq	3(%r15), %rdi
	leal	-3(%r13), %r8d
	movb	%dl, 2(%r15)
	je	.L3200
	movzbl	3(%rsi), %edx
	leaq	4(%rsi), %r9
	cmpl	$4, %eax
	leaq	4(%r15), %rdi
	leal	-4(%r13), %r8d
	movb	%dl, 3(%r15)
	je	.L3200
	movzbl	4(%rsi), %edx
	leaq	5(%rsi), %r9
	cmpl	$5, %eax
	leaq	5(%r15), %rdi
	leal	-5(%r13), %r8d
	movb	%dl, 4(%r15)
	je	.L3200
	movzbl	5(%rsi), %edx
	leaq	6(%rsi), %r9
	cmpl	$6, %eax
	leaq	6(%r15), %rdi
	leal	-6(%r13), %r8d
	movb	%dl, 5(%r15)
	je	.L3200
	movzbl	6(%rsi), %edx
	leaq	7(%rsi), %r9
	cmpl	$7, %eax
	leaq	7(%r15), %rdi
	leal	-7(%r13), %r8d
	movb	%dl, 6(%r15)
	je	.L3200
	movzbl	7(%rsi), %edx
	leaq	8(%rsi), %r9
	cmpl	$8, %eax
	leaq	8(%r15), %rdi
	leal	-8(%r13), %r8d
	movb	%dl, 7(%r15)
	je	.L3200
	movzbl	8(%rsi), %edx
	leaq	9(%rsi), %r9
	cmpl	$9, %eax
	leaq	9(%r15), %rdi
	leal	-9(%r13), %r8d
	movb	%dl, 8(%r15)
	je	.L3200
	movzbl	9(%rsi), %edx
	leaq	10(%rsi), %r9
	cmpl	$10, %eax
	leaq	10(%r15), %rdi
	leal	-10(%r13), %r8d
	movb	%dl, 9(%r15)
	je	.L3200
	movzbl	10(%rsi), %edx
	leaq	11(%rsi), %r9
	cmpl	$11, %eax
	leaq	11(%r15), %rdi
	leal	-11(%r13), %r8d
	movb	%dl, 10(%r15)
	je	.L3200
	movzbl	11(%rsi), %edx
	leaq	12(%rsi), %r9
	cmpl	$12, %eax
	leaq	12(%r15), %rdi
	leal	-12(%r13), %r8d
	movb	%dl, 11(%r15)
	je	.L3200
	movzbl	12(%rsi), %edx
	leaq	13(%rsi), %r9
	cmpl	$13, %eax
	leaq	13(%r15), %rdi
	leal	-13(%r13), %r8d
	movb	%dl, 12(%r15)
	je	.L3200
	movzbl	13(%rsi), %edx
	leaq	14(%rsi), %r9
	cmpl	$15, %eax
	leaq	14(%r15), %rdi
	leal	-14(%r13), %r8d
	movb	%dl, 13(%r15)
	jne	.L3200
	movzbl	14(%rsi), %edx
	leaq	15(%rsi), %r9
	leaq	15(%r15), %rdi
	leal	-15(%r13), %r8d
	movb	%dl, 14(%r15)
	.p2align 4,,10
.L3200:
	movl	%eax, %r10d
	subl	%eax, %r13d
	xorl	%edx, %edx
	movq	%r10, %rsi
	movl	%r13d, %r11d
	addq	%r15, %r10
	subq	%rbp, %rsi
	shrl	$4, %r11d
	xorl	%eax, %eax
	addq	%r15, %rsi
	.p2align 4,,10
.L3202:
	movdqa	(%rsi,%rax), %xmm0
	addl	$1, %edx
	movups	%xmm0, (%r10,%rax)
	addq	$16, %rax
	cmpl	%r11d, %edx
	jb	.L3202
	movl	%r13d, %eax
	andl	$-16, %eax
	movl	%eax, %esi
	subl	%eax, %r8d
	addq	%rsi, %rdi
	addq	%r9, %rsi
	cmpl	%r13d, %eax
	je	.L3207
.L3199:
	leal	-1(%r8), %eax
	leaq	1(%rsi,%rax), %rax
	.p2align 4,,10
.L3205:
	movsb
	cmpq	%rsi, %rax
	jne	.L3205
.L3207:
	leaq	1(%r15,%rcx), %r15
	jmp	.L3169
	.p2align 4,,10
.L3158:
	leal	(%rbp,%rbp), %eax
	movl	%ebp, %edx
	sarl	%edx
	andl	$43690, %eax
	andl	$21845, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %edx
	sarl	$2, %eax
	andl	$52428, %edx
	andl	$13107, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	sall	$4, %eax
	sarl	$4, %edx
	andl	$61680, %eax
	andl	$3855, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	sall	$8, %edx
	sarl	$8, %eax
	movzwl	%dx, %edx
	orl	%edx, %eax
	cmpl	1148(%rbx), %eax
	jl	.L3220
	cmpl	1152(%rbx), %eax
	jl	.L3221
	cmpl	1156(%rbx), %eax
	jl	.L3222
	cmpl	1160(%rbx), %eax
	jl	.L3223
	cmpl	1164(%rbx), %eax
	jl	.L3224
	cmpl	1168(%rbx), %eax
	jl	.L3505
.L3161:
	leaq	.LC59(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L3062:
	addq	$232, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L3498:
	movl	%ecx, %esi
	jmp	.L3154
	.p2align 4,,10
.L3182:
	leal	(%rbp,%rbp), %eax
	movl	%ebp, %edx
	sarl	%edx
	andl	$43690, %eax
	andl	$21845, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %edx
	sarl	$2, %eax
	andl	$52428, %edx
	andl	$13107, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	sall	$4, %eax
	sarl	$4, %edx
	andl	$61680, %eax
	andl	$3855, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	sall	$8, %edx
	sarl	$8, %eax
	movzwl	%dx, %edx
	orl	%edx, %eax
	cmpl	3168(%rbx), %eax
	jl	.L3225
	cmpl	3172(%rbx), %eax
	jl	.L3226
	cmpl	3176(%rbx), %eax
	jl	.L3227
	cmpl	3180(%rbx), %eax
	jl	.L3228
	cmpl	3184(%rbx), %eax
	jl	.L3229
	cmpl	3188(%rbx), %eax
	jge	.L3161
	movl	$1, %ecx
	movl	$15, %r9d
	.p2align 4,,10
.L3184:
	movslq	%r9d, %rdx
	sarl	%cl, %eax
	leaq	(%rbx,%rdx,2), %rdx
	movzwl	3096(%rdx), %ecx
	movzwl	3196(%rdx), %edi
	subl	%ecx, %eax
	addl	%eax, %edi
	movslq	%edi, %rdi
	movzbl	3228(%rbx,%rdi), %eax
	cmpl	%eax, %r9d
	je	.L3185
	movl	$3876, %r8d
	movq	%r12, %rdx
	movl	%r9d, 40(%rsp)
	leaq	.LC57(%rip), %rcx
	call	_assert
	movl	20(%rbx), %ebp
	movl	16(%rbx), %esi
	movl	40(%rsp), %r9d
.L3185:
	movl	%r9d, %ecx
	subl	%r9d, %esi
	shrl	%cl, %ebp
	movl	%esi, 16(%rbx)
	movl	%ebp, 20(%rbx)
	movzwl	3516(%rbx,%rdi,2), %eax
	jmp	.L3183
	.p2align 4,,10
.L3501:
	movl	%esi, %ecx
	jmp	.L3177
	.p2align 4,,10
.L3179:
	movq	(%rbx), %rax
	cmpq	%rax, 8(%rbx)
	jbe	.L3180
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%rax), %eax
	sall	%cl, %eax
	orl	%eax, %ebp
.L3180:
	addl	$8, %ecx
	movl	%ebp, 20(%rbx)
	cmpl	$24, %ecx
	movl	%ecx, 16(%rbx)
	jg	.L3506
.L3177:
	movl	%ebp, %eax
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L3179
	movq	%r14, %rcx
	movl	$3848, %r8d
	movq	%r12, %rdx
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %ebp
	jmp	.L3179
	.p2align 4,,10
.L3506:
	movl	%ecx, %esi
	jmp	.L3178
	.p2align 4,,10
.L3500:
	cmpl	%esi, %edi
	jg	.L3507
.L3173:
	movl	%edi, %ecx
	movl	$1, %eax
	subl	%edi, %esi
	sall	%cl, %eax
	movl	%esi, 16(%rbx)
	subl	$1, %eax
	andl	%ebp, %eax
	shrl	%cl, %ebp
	movl	%ebp, 20(%rbx)
	addl	%eax, %r13d
	jmp	.L3171
	.p2align 4,,10
.L3502:
	cmpl	%esi, %eax
	jg	.L3508
.L3187:
	movl	%ebp, %edx
	movl	%eax, %ecx
	subl	%eax, %esi
	shrl	%cl, %edx
	movl	%esi, 16(%rbx)
	movl	%edx, 20(%rbx)
	movl	$1, %edx
	sall	%cl, %edx
	subl	$1, %edx
	andl	%edx, %ebp
	addl	%ebp, %edi
	jmp	.L3214
	.p2align 4,,10
.L3504:
	testl	%r13d, %r13d
	je	.L3169
	movsbl	(%rsi), %edx
	leal	-1(%r13), %edi
	movq	%r15, %rcx
	addq	$1, %rdi
	movq	%rdi, %r8
	addq	%rdi, %r15
	call	memset
	jmp	.L3169
.L3097:
	movq	(%rbx), %rdx
	movslq	%r8d, %rdi
	leaq	(%rdx,%rdi), %rax
	cmpq	%rax, 8(%rbx)
	jb	.L3509
	movq	24(%rbx), %rbp
	movq	40(%rbx), %r9
	leaq	0(%rbp,%rdi), %rax
	cmpq	%rax, %r9
	jnb	.L3099
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L3510
	movq	32(%rbx), %rcx
	subq	%rcx, %rbp
	subq	%rcx, %r9
	addl	%ebp, %r8d
	movl	%r9d, %eax
	cmpl	%r8d, %r9d
	jge	.L3101
.L3102:
	addl	%eax, %eax
	cmpl	%r8d, %eax
	jl	.L3102
.L3101:
	movslq	%eax, %rsi
	movq	%rsi, %rdx
	call	realloc
	testq	%rax, %rax
	jne	.L3103
	.p2align 4,,10
.L3196:
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3062
	.p2align 4,,10
.L3507:
	movl	%esi, %ecx
	jmp	.L3172
	.p2align 4,,10
.L3174:
	movq	(%rbx), %rax
	cmpq	%rax, 8(%rbx)
	jbe	.L3175
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%rax), %eax
	sall	%cl, %eax
	orl	%eax, %ebp
.L3175:
	addl	$8, %ecx
	movl	%ebp, 20(%rbx)
	cmpl	$24, %ecx
	movl	%ecx, 16(%rbx)
	jg	.L3511
.L3172:
	movl	%ebp, %eax
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L3174
	movq	%r14, %rcx
	movl	$3848, %r8d
	movq	%r12, %rdx
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %ebp
	jmp	.L3174
	.p2align 4,,10
.L3511:
	movl	%ecx, %esi
	jmp	.L3173
	.p2align 4,,10
.L3508:
	movl	%esi, %ecx
	movl	%eax, %esi
	jmp	.L3186
	.p2align 4,,10
.L3188:
	movq	(%rbx), %rdx
	cmpq	%rdx, 8(%rbx)
	jbe	.L3189
	leaq	1(%rdx), %rax
	movq	%rax, (%rbx)
	movzbl	(%rdx), %edx
	sall	%cl, %edx
	orl	%edx, %ebp
.L3189:
	addl	$8, %ecx
	movl	%ebp, 20(%rbx)
	cmpl	$24, %ecx
	movl	%ecx, 16(%rbx)
	jg	.L3512
.L3186:
	movl	%ebp, %eax
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L3188
	movq	%r14, %rcx
	movl	$3848, %r8d
	movq	%r12, %rdx
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %ebp
	jmp	.L3188
	.p2align 4,,10
.L3512:
	movl	%esi, %eax
	movl	%ecx, %esi
	jmp	.L3187
	.p2align 4,,10
.L3220:
	movl	$6, %ecx
	movl	$10, %r13d
.L3160:
	movslq	%r13d, %rdx
	sarl	%cl, %eax
	leaq	(%rbx,%rdx,2), %rdx
	movzwl	1076(%rdx), %ecx
	movzwl	1176(%rdx), %edi
	subl	%ecx, %eax
	addl	%eax, %edi
	movslq	%edi, %rdi
	movzbl	1208(%rbx,%rdi), %eax
	cmpl	%r13d, %eax
	je	.L3162
	leaq	.LC57(%rip), %rcx
	movl	$3876, %r8d
	movq	%r12, %rdx
	call	_assert
	movl	20(%rbx), %ebp
	movl	16(%rbx), %esi
.L3162:
	movl	%r13d, %ecx
	subl	%r13d, %esi
	shrl	%cl, %ebp
	movl	%esi, 16(%rbx)
	movl	%ebp, 20(%rbx)
	movzwl	1496(%rbx,%rdi,2), %edi
	jmp	.L3159
	.p2align 4,,10
.L3221:
	movl	$5, %ecx
	movl	$11, %r13d
	jmp	.L3160
	.p2align 4,,10
.L3222:
	movl	$4, %ecx
	movl	$12, %r13d
	jmp	.L3160
	.p2align 4,,10
.L3223:
	movl	$3, %ecx
	movl	$13, %r13d
	jmp	.L3160
	.p2align 4,,10
.L3494:
	movl	%esi, %edi
	andl	$7, %edi
	jne	.L3513
	cmpl	$0, %esi
	jle	.L3087
.L3518:
	leal	-8(%rsi), %edx
	movl	%ebp, %eax
	movl	%ebp, %r15d
	movb	%bpl, 144(%rsp)
	shrl	$8, %eax
	cmpl	$0, %edx
	movl	%edx, 16(%rbx)
	movl	%eax, 20(%rbx)
	jle	.L3088
	leal	-16(%rsi), %edx
	movzbl	%al, %edi
	movb	%al, 145(%rsp)
	movl	%ebp, %eax
	shrl	$16, %eax
	cmpl	$0, %edx
	movl	%edx, 16(%rbx)
	movl	%eax, 20(%rbx)
	jle	.L3089
	movl	%eax, %r14d
	movb	%al, 146(%rsp)
	shrl	$24, %ebp
	leal	-24(%rsi), %eax
	movl	%ebp, 20(%rbx)
	cmpl	$0, %eax
	movl	%eax, 16(%rbx)
	jle	.L3090
	leal	-32(%rsi), %eax
	movl	%ebp, %esi
	movl	$0, 20(%rbx)
	sall	$8, %esi
	testl	%eax, %eax
	movl	%eax, 16(%rbx)
	je	.L3091
	leaq	.LC98(%rip), %rcx
	movl	$4033, %r8d
	movq	%r12, %rdx
	call	_assert
.L3091:
	sall	$8, %edi
	movzbl	%r15b, %r8d
	movzbl	%r14b, %eax
	addl	%edi, %r8d
	addl	%eax, %esi
	movl	%r8d, %eax
	xorl	$65535, %eax
	cmpl	%eax, %esi
	je	.L3097
	leaq	.LC99(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3062
	.p2align 4,,10
.L3224:
	movl	$2, %ecx
	movl	$14, %r13d
	jmp	.L3160
	.p2align 4,,10
.L3225:
	movl	$6, %ecx
	movl	$10, %r9d
	jmp	.L3184
	.p2align 4,,10
.L3505:
	movl	$1, %ecx
	movl	$15, %r13d
	jmp	.L3160
	.p2align 4,,10
.L3226:
	movl	$5, %ecx
	movl	$11, %r9d
	jmp	.L3184
.L3198:
	leal	-1(%r13), %ecx
	movq	%r15, %rdi
	movl	%ecx, %eax
	leaq	1(%rsi,%rax), %rax
	.p2align 4,,10
.L3206:
	movsb
	cmpq	%rsi, %rax
	jne	.L3206
	leaq	1(%r15,%rcx), %r15
	jmp	.L3169
.L3495:
	leaq	144(%rsp), %r14
	xorl	%eax, %eax
	movl	$8, %ecx
	movq	%r14, %rdi
	movl	$1024, %r8d
	xorl	%edx, %edx
	rep stosq
	leaq	52(%rbx), %rcx
	movl	$0, (%rdi)
	call	memset
	leaq	1+_ZL21stbi__zdefault_length(%rip), %rcx
	xorl	%edx, %edx
	movl	$8, %eax
	leaq	287(%rcx), %r8
	jmp	.L3108
	.p2align 4,,10
.L3514:
	movzbl	(%rcx), %eax
	addq	$1, %rcx
	movslq	%eax, %rdx
	movl	144(%rsp,%rdx,4), %edx
.L3108:
	addl	$1, %edx
	cmpq	%rcx, %r8
	movl	%edx, 144(%rsp,%rax,4)
	jne	.L3514
	movl	148(%rsp), %ecx
	movl	$0, 144(%rsp)
	cmpl	$2, %ecx
	jg	.L3131
	movl	152(%rsp), %edx
	cmpl	$4, %edx
	jg	.L3131
	movl	156(%rsp), %r8d
	cmpl	$8, %r8d
	jg	.L3131
	movl	160(%rsp), %r9d
	cmpl	$16, %r9d
	jg	.L3131
	movl	164(%rsp), %r11d
	cmpl	$32, %r11d
	jg	.L3131
	movl	168(%rsp), %r10d
	cmpl	$64, %r10d
	jg	.L3131
	movl	172(%rsp), %edi
	cmpl	$128, %edi
	jg	.L3131
	movl	176(%rsp), %r15d
	cmpl	$256, %r15d
	jg	.L3131
	movl	180(%rsp), %eax
	cmpl	$512, %eax
	movl	%eax, 40(%rsp)
	jg	.L3131
	movl	184(%rsp), %eax
	cmpl	$1024, %eax
	movl	%eax, 56(%rsp)
	jg	.L3131
	movl	188(%rsp), %eax
	cmpl	$2048, %eax
	movl	%eax, 60(%rsp)
	jg	.L3131
	movl	192(%rsp), %eax
	cmpl	$4096, %eax
	movl	%eax, 64(%rsp)
	jg	.L3131
	movl	196(%rsp), %eax
	cmpl	$8192, %eax
	movl	%eax, 68(%rsp)
	jg	.L3131
	movl	200(%rsp), %eax
	cmpl	$16384, %eax
	movl	%eax, 72(%rsp)
	jg	.L3131
	movl	204(%rsp), %eax
	cmpl	$32768, %eax
	movl	%eax, 76(%rsp)
	jg	.L3131
	xorl	%eax, %eax
	movl	$0, 84(%rsp)
	movw	%ax, 1078(%rbx)
	xorl	%eax, %eax
	movw	%ax, 1178(%rbx)
	movl	%ecx, %eax
	sall	$15, %eax
	movw	%cx, 1180(%rbx)
	movl	%eax, 1112(%rbx)
	leal	(%rcx,%rcx), %eax
	movl	%eax, 88(%rsp)
	movw	%ax, 1080(%rbx)
	addl	%edx, %eax
	testl	%edx, %edx
	je	.L3238
	cmpl	$4, %eax
	jg	.L3132
.L3238:
	movl	%eax, %r13d
	addl	%eax, %eax
	addl	%ecx, %edx
	sall	$14, %r13d
	movl	%eax, 92(%rsp)
	movw	%ax, 1082(%rbx)
	addl	%r8d, %eax
	testl	%r8d, %r8d
	movl	%r13d, 1116(%rbx)
	movw	%dx, 1182(%rbx)
	je	.L3239
	cmpl	$8, %eax
	jg	.L3132
.L3239:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r8d, %edx
	sall	$13, %ecx
	movl	%eax, 96(%rsp)
	movw	%ax, 1084(%rbx)
	addl	%r9d, %eax
	testl	%r9d, %r9d
	movl	%ecx, 1120(%rbx)
	movw	%dx, 1184(%rbx)
	je	.L3240
	cmpl	$16, %eax
	jg	.L3132
.L3240:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r9d, %edx
	movl	%eax, 100(%rsp)
	sall	$12, %ecx
	movw	%ax, 1086(%rbx)
	addl	%r11d, %eax
	cmpl	$32, %eax
	movl	%ecx, 1124(%rbx)
	movw	%dx, 1186(%rbx)
	jle	.L3241
	testl	%r11d, %r11d
	jne	.L3132
.L3241:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r11d, %edx
	sall	$11, %ecx
	movl	%eax, 104(%rsp)
	movw	%ax, 1088(%rbx)
	addl	%r10d, %eax
	testl	%r10d, %r10d
	movl	%ecx, 1128(%rbx)
	movw	%dx, 1188(%rbx)
	je	.L3242
	cmpl	$64, %eax
	jg	.L3132
.L3242:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r10d, %edx
	movl	%eax, 108(%rsp)
	sall	$10, %ecx
	movw	%ax, 1090(%rbx)
	addl	%edi, %eax
	cmpl	$128, %eax
	movl	%ecx, 1132(%rbx)
	movw	%dx, 1190(%rbx)
	jle	.L3243
	testl	%edi, %edi
	jne	.L3132
.L3243:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%edi, %edx
	movl	%eax, 112(%rsp)
	sall	$9, %ecx
	movw	%ax, 1092(%rbx)
	addl	%r15d, %eax
	cmpl	$256, %eax
	movl	%ecx, 1136(%rbx)
	movw	%dx, 1192(%rbx)
	jle	.L3244
	testl	%r15d, %r15d
	jne	.L3132
.L3244:
	leal	(%rdx,%r15), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	sall	$8, %ecx
	movl	%eax, 116(%rsp)
	movl	%ecx, 1140(%rbx)
	movl	40(%rsp), %ecx
	movw	%ax, 1094(%rbx)
	movw	%di, 1194(%rbx)
	addl	%ecx, %eax
	cmpl	$512, %eax
	jle	.L3245
	testl	%ecx, %ecx
	jne	.L3132
.L3245:
	movl	%eax, %edx
	addl	%eax, %eax
	sall	$7, %edx
	movl	%eax, 120(%rsp)
	movl	%edx, 1144(%rbx)
	movl	40(%rsp), %edx
	movw	%ax, 1096(%rbx)
	addl	%edi, %edx
	movl	56(%rsp), %edi
	movw	%dx, 1196(%rbx)
	addl	%edi, %eax
	testl	%edi, %edi
	je	.L3246
	cmpl	$1024, %eax
	jg	.L3132
.L3246:
	movl	60(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	56(%rsp), %edx
	movl	%eax, 124(%rsp)
	sall	$6, %ecx
	movw	%ax, 1098(%rbx)
	movl	%ecx, 1148(%rbx)
	addl	%edi, %eax
	cmpl	$2048, %eax
	movw	%dx, 1198(%rbx)
	jle	.L3247
	testl	%edi, %edi
	jne	.L3132
.L3247:
	movl	64(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	60(%rsp), %edx
	movl	%eax, 128(%rsp)
	sall	$5, %ecx
	movw	%ax, 1100(%rbx)
	movl	%ecx, 1152(%rbx)
	addl	%edi, %eax
	cmpl	$4096, %eax
	movw	%dx, 1200(%rbx)
	jle	.L3248
	testl	%edi, %edi
	jne	.L3132
.L3248:
	movl	68(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	64(%rsp), %edx
	movl	%eax, 132(%rsp)
	sall	$4, %ecx
	movw	%ax, 1102(%rbx)
	movl	%ecx, 1156(%rbx)
	addl	%edi, %eax
	cmpl	$8192, %eax
	movw	%dx, 1202(%rbx)
	jle	.L3249
	testl	%edi, %edi
	jne	.L3132
.L3249:
	movl	72(%rsp), %edi
	leal	0(,%rax,8), %ecx
	addl	%eax, %eax
	addl	68(%rsp), %edx
	movl	%eax, 136(%rsp)
	movw	%ax, 1104(%rbx)
	movl	%ecx, 1160(%rbx)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 1204(%rbx)
	je	.L3250
	cmpl	$16384, %eax
	jg	.L3132
.L3250:
	movl	76(%rsp), %edi
	leal	0(,%rax,4), %ecx
	addl	%eax, %eax
	addl	72(%rsp), %edx
	movl	%eax, 140(%rsp)
	movw	%ax, 1106(%rbx)
	movl	%ecx, 1164(%rbx)
	addl	%edi, %eax
	cmpl	$32768, %eax
	movw	%dx, 1206(%rbx)
	jle	.L3251
	testl	%edi, %edi
	jne	.L3132
.L3251:
	movl	$65536, 1172(%rbx)
	addl	%eax, %eax
	xorl	%r8d, %r8d
	movl	%eax, 1168(%rbx)
	leaq	_ZL21stbi__zdefault_length(%rip), %rdi
	.p2align 4,,10
.L3125:
	movzbl	(%rdi,%r8), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	je	.L3126
	movzbl	%al, %edx
	movslq	%eax, %r10
	leaq	(%rbx,%rdx,2), %r11
	movl	80(%rsp,%r10,4), %r9d
	movzwl	1076(%r11), %edx
	movzwl	1176(%r11), %r11d
	movl	%r9d, %r15d
	subl	%edx, %r15d
	movl	%r15d, %edx
	addl	%r11d, %edx
	cmpl	$9, %eax
	movslq	%edx, %rdx
	movb	%al, 1208(%rbx,%rdx)
	movw	%r8w, 1496(%rbx,%rdx,2)
	jle	.L3515
.L3127:
	addl	$1, %r9d
	movl	%r9d, 80(%rsp,%r10,4)
.L3126:
	addq	$1, %r8
	cmpq	$288, %r8
	jne	.L3125
	xorl	%eax, %eax
	movl	$8, %ecx
	movq	%r14, %rdi
	rep stosq
	movl	$1024, %r8d
	xorl	%edx, %edx
	leaq	2072(%rbx), %rcx
	movl	$0, (%rdi)
	call	memset
	leaq	1+_ZL23stbi__zdefault_distance(%rip), %rcx
	xorl	%edx, %edx
	movl	$5, %eax
	leaq	31(%rcx), %r8
	jmp	.L3130
	.p2align 4,,10
.L3516:
	movzbl	(%rcx), %eax
	addq	$1, %rcx
	movslq	%eax, %rdx
	movl	144(%rsp,%rdx,4), %edx
.L3130:
	addl	$1, %edx
	cmpq	%r8, %rcx
	movl	%edx, 144(%rsp,%rax,4)
	jne	.L3516
	movl	148(%rsp), %ecx
	movl	$0, 144(%rsp)
	cmpl	$2, %ecx
	jg	.L3131
	movl	152(%rsp), %edx
	cmpl	$4, %edx
	jg	.L3131
	movl	156(%rsp), %r9d
	cmpl	$8, %r9d
	jg	.L3131
	movl	160(%rsp), %r11d
	cmpl	$16, %r11d
	jg	.L3131
	movl	164(%rsp), %r8d
	cmpl	$32, %r8d
	jg	.L3131
	movl	168(%rsp), %edi
	cmpl	$64, %edi
	jg	.L3131
	movl	172(%rsp), %r10d
	cmpl	$128, %r10d
	jg	.L3131
	movl	176(%rsp), %r14d
	cmpl	$256, %r14d
	jg	.L3131
	movl	180(%rsp), %eax
	cmpl	$512, %eax
	movl	%eax, 40(%rsp)
	jg	.L3131
	movl	184(%rsp), %eax
	cmpl	$1024, %eax
	movl	%eax, 56(%rsp)
	jg	.L3131
	movl	188(%rsp), %r15d
	cmpl	$2048, %r15d
	jg	.L3131
	movl	192(%rsp), %eax
	cmpl	$4096, %eax
	movl	%eax, 60(%rsp)
	jg	.L3131
	movl	196(%rsp), %eax
	cmpl	$8192, %eax
	movl	%eax, 64(%rsp)
	jg	.L3131
	movl	200(%rsp), %eax
	cmpl	$16384, %eax
	movl	%eax, 68(%rsp)
	jg	.L3131
	movl	204(%rsp), %eax
	cmpl	$32768, %eax
	movl	%eax, 72(%rsp)
	jg	.L3131
	xorl	%eax, %eax
	xorl	%r13d, %r13d
	movl	$0, 84(%rsp)
	movw	%ax, 3198(%rbx)
	movl	%ecx, %eax
	sall	$15, %eax
	movw	%r13w, 3098(%rbx)
	movl	%eax, 3132(%rbx)
	leal	(%rcx,%rcx), %eax
	movl	%eax, 88(%rsp)
	movw	%ax, 3100(%rbx)
	addl	%edx, %eax
	testl	%edx, %edx
	movw	%cx, 3200(%rbx)
	je	.L3252
	cmpl	$4, %eax
	jg	.L3132
.L3252:
	movl	%eax, %r13d
	addl	%eax, %eax
	addl	%ecx, %edx
	movl	%eax, 92(%rsp)
	sall	$14, %r13d
	movw	%ax, 3102(%rbx)
	addl	%r9d, %eax
	cmpl	$8, %eax
	movl	%r13d, 3136(%rbx)
	movw	%dx, 3202(%rbx)
	jle	.L3253
	testl	%r9d, %r9d
	jne	.L3132
.L3253:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r9d, %edx
	movl	%eax, 96(%rsp)
	sall	$13, %ecx
	movw	%ax, 3104(%rbx)
	addl	%r11d, %eax
	cmpl	$16, %eax
	movl	%ecx, 3140(%rbx)
	movw	%dx, 3204(%rbx)
	jle	.L3254
	testl	%r11d, %r11d
	jne	.L3132
.L3254:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r11d, %edx
	sall	$12, %ecx
	movl	%eax, 100(%rsp)
	movw	%ax, 3106(%rbx)
	addl	%r8d, %eax
	testl	%r8d, %r8d
	movl	%ecx, 3144(%rbx)
	movw	%dx, 3206(%rbx)
	je	.L3255
	cmpl	$32, %eax
	jg	.L3132
.L3255:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r8d, %edx
	movl	%eax, 104(%rsp)
	sall	$11, %ecx
	movw	%ax, 3108(%rbx)
	addl	%edi, %eax
	cmpl	$64, %eax
	movl	%ecx, 3148(%rbx)
	movw	%dx, 3208(%rbx)
	jle	.L3256
	testl	%edi, %edi
	jne	.L3132
.L3256:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%edi, %edx
	sall	$10, %ecx
	movl	%eax, 108(%rsp)
	movw	%ax, 3110(%rbx)
	addl	%r10d, %eax
	testl	%r10d, %r10d
	movl	%ecx, 3152(%rbx)
	movw	%dx, 3210(%rbx)
	je	.L3257
	cmpl	$128, %eax
	jg	.L3132
.L3257:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r10d, %edx
	sall	$9, %ecx
	movl	%eax, 112(%rsp)
	movw	%ax, 3112(%rbx)
	addl	%r14d, %eax
	testl	%r14d, %r14d
	movl	%ecx, 3156(%rbx)
	movw	%dx, 3212(%rbx)
	je	.L3258
	cmpl	$256, %eax
	jg	.L3132
.L3258:
	movl	40(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r14d, %edx
	sall	$8, %ecx
	movl	%eax, 116(%rsp)
	movw	%ax, 3114(%rbx)
	movl	%ecx, 3160(%rbx)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 3214(%rbx)
	je	.L3259
	cmpl	$512, %eax
	jg	.L3132
.L3259:
	movl	56(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	40(%rsp), %edx
	sall	$7, %ecx
	movl	%eax, 120(%rsp)
	movw	%ax, 3116(%rbx)
	movl	%ecx, 3164(%rbx)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 3216(%rbx)
	je	.L3260
	cmpl	$1024, %eax
	jg	.L3132
.L3260:
	addl	56(%rsp), %edx
	movl	%eax, %ecx
	addl	%eax, %eax
	sall	$6, %ecx
	movl	%eax, 124(%rsp)
	movw	%ax, 3118(%rbx)
	addl	%r15d, %eax
	testl	%r15d, %r15d
	movl	%ecx, 3168(%rbx)
	movw	%dx, 3218(%rbx)
	je	.L3261
	cmpl	$2048, %eax
	jg	.L3132
.L3261:
	movl	60(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r15d, %edx
	movl	%eax, 128(%rsp)
	sall	$5, %ecx
	movw	%ax, 3120(%rbx)
	movl	%ecx, 3172(%rbx)
	addl	%edi, %eax
	movw	%dx, 3220(%rbx)
	cmpl	$4096, %eax
	jle	.L3262
	testl	%edi, %edi
	jne	.L3132
.L3262:
	movl	64(%rsp), %edi
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	60(%rsp), %edx
	movl	%eax, 132(%rsp)
	sall	$4, %ecx
	movw	%ax, 3122(%rbx)
	movl	%ecx, 3176(%rbx)
	addl	%edi, %eax
	cmpl	$8192, %eax
	movw	%dx, 3222(%rbx)
	jle	.L3263
	testl	%edi, %edi
	jne	.L3132
.L3263:
	movl	68(%rsp), %edi
	leal	0(,%rax,8), %ecx
	addl	%eax, %eax
	addl	64(%rsp), %edx
	movl	%eax, 136(%rsp)
	movw	%ax, 3124(%rbx)
	movl	%ecx, 3180(%rbx)
	addl	%edi, %eax
	cmpl	$16384, %eax
	movw	%dx, 3224(%rbx)
	jle	.L3264
	testl	%edi, %edi
	jne	.L3132
.L3264:
	movl	72(%rsp), %edi
	leal	0(,%rax,4), %ecx
	addl	%eax, %eax
	addl	68(%rsp), %edx
	movl	%eax, 140(%rsp)
	movw	%ax, 3126(%rbx)
	movl	%ecx, 3184(%rbx)
	addl	%edi, %eax
	testl	%edi, %edi
	movw	%dx, 3226(%rbx)
	je	.L3265
	cmpl	$32768, %eax
	jg	.L3132
.L3265:
	addl	%eax, %eax
	xorl	%r8d, %r8d
	movl	$1, %r15d
	movl	$65536, 3192(%rbx)
	movl	%eax, 3188(%rbx)
	leaq	_ZL23stbi__zdefault_distance(%rip), %rdi
	jmp	.L3147
.L3149:
	addl	$1, %r9d
	movl	%r9d, 80(%rsp,%r10,4)
.L3148:
	addq	$1, %r8
	cmpq	$32, %r8
	je	.L3151
.L3147:
	movzbl	(%rdi,%r8), %eax
	testl	%eax, %eax
	movl	%eax, %ecx
	je	.L3148
	movzbl	%al, %edx
	movslq	%eax, %r10
	leaq	(%rbx,%rdx,2), %r11
	movl	80(%rsp,%r10,4), %r9d
	movzwl	3096(%r11), %edx
	movzwl	3196(%r11), %r11d
	movl	%r9d, %r14d
	subl	%edx, %r14d
	movl	%r14d, %edx
	addl	%r11d, %edx
	cmpl	$9, %eax
	movslq	%edx, %rdx
	movb	%al, 3228(%rbx,%rdx)
	movw	%r8w, 3516(%rbx,%rdx,2)
	jg	.L3149
	leal	(%r9,%r9), %edx
	movl	%r9d, %r11d
	sarl	%r11d
	andl	$43690, %edx
	andl	$21845, %r11d
	orl	%edx, %r11d
	movl	%r11d, %edx
	sall	$2, %r11d
	sarl	$2, %edx
	andl	$52428, %r11d
	andl	$13107, %edx
	orl	%r11d, %edx
	movl	%edx, %r11d
	sall	$4, %edx
	sarl	$4, %r11d
	andl	$61680, %edx
	andl	$3855, %r11d
	orl	%edx, %r11d
	movl	%r11d, %edx
	sall	$8, %r11d
	movzwl	%r11w, %r13d
	movl	%r15d, %r11d
	sarl	$8, %edx
	sall	%cl, %r11d
	movl	$16, %ecx
	orl	%r13d, %edx
	subl	%eax, %ecx
	sall	$9, %eax
	movslq	%r11d, %r11
	sarl	%cl, %edx
	orl	%r8d, %eax
	movslq	%edx, %rdx
.L3150:
	movw	%ax, 2072(%rbx,%rdx,2)
	addq	%r11, %rdx
	cmpl	$511, %edx
	jle	.L3150
	jmp	.L3149
.L3132:
	leaq	.LC38(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3062
	.p2align 4,,10
.L3131:
	leaq	.LC37(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3062
.L3493:
	leaq	.LC4(%rip), %rsi
	jmp	.L3075
	.p2align 4,,10
.L3077:
	movq	(%rbx), %rdx
	cmpq	%rdx, 8(%rbx)
	jbe	.L3078
	leaq	1(%rdx), %r8
	movq	%r8, (%rbx)
	movzbl	(%rdx), %edx
	sall	%cl, %edx
	orl	%edx, %eax
.L3078:
	addl	$8, %ecx
	movl	%eax, 20(%rbx)
	cmpl	$24, %ecx
	movl	%ecx, 16(%rbx)
	jg	.L3076
.L3075:
	movl	%eax, %edx
	shrl	%cl, %edx
	testl	%edx, %edx
	je	.L3077
	movq	%rsi, %rcx
	movl	$3848, %r8d
	movq	%r12, %rdx
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %eax
	jmp	.L3077
.L3492:
	leaq	.LC4(%rip), %rsi
	jmp	.L3070
	.p2align 4,,10
.L3072:
	movq	(%rbx), %rdx
	cmpq	%rdx, 8(%rbx)
	jbe	.L3073
	leaq	1(%rdx), %r8
	movq	%r8, (%rbx)
	movzbl	(%rdx), %edx
	sall	%cl, %edx
	orl	%edx, %eax
.L3073:
	addl	$8, %ecx
	movl	%eax, 20(%rbx)
	cmpl	$24, %ecx
	movl	%ecx, 16(%rbx)
	jg	.L3071
.L3070:
	movl	%eax, %edx
	shrl	%cl, %edx
	testl	%edx, %edx
	je	.L3072
	movq	%rsi, %rcx
	movl	$3848, %r8d
	movq	%r12, %rdx
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %eax
	jmp	.L3072
.L3227:
	movl	$4, %ecx
	movl	$12, %r9d
	jmp	.L3184
.L3228:
	movl	$3, %ecx
	movl	$13, %r9d
	jmp	.L3184
.L3229:
	movl	$2, %ecx
	movl	$14, %r9d
	jmp	.L3184
.L3499:
	movl	52(%rsp), %eax
	movq	%r15, 24(%rbx)
	testl	%eax, %eax
	jne	.L3233
.L3526:
	movl	16(%rbx), %ecx
	movl	20(%rbx), %eax
	jmp	.L3208
.L3513:
	cmpl	%edi, %esi
	jl	.L3517
.L3083:
	subl	%edi, %esi
	movl	%edi, %ecx
	shrl	%cl, %ebp
	cmpl	$0, %esi
	movl	%esi, 16(%rbx)
	movl	%ebp, 20(%rbx)
	jg	.L3518
.L3087:
	jne	.L3519
	movl	$2, %edx
	movl	$1, %r8d
.L3210:
	movq	8(%rbx), %r11
	movq	(%rbx), %rcx
	cmpq	%r11, %rcx
	jb	.L3520
	movslq	%esi, %rax
	movb	$0, 144(%rsp,%rax)
	movq	%rcx, %rax
	xorl	%ecx, %ecx
.L3092:
	cmpl	$4, %edx
	movb	%cl, 144(%rsp,%r8)
	je	.L3218
.L3093:
	cmpq	%rax, %r11
	jbe	.L3094
	leaq	1(%rax), %rcx
	testl	%esi, %esi
	movq	%rcx, (%rbx)
	movzbl	(%rax), %r8d
	movb	%r8b, 144(%rsp,%rdx)
	jne	.L3218
	cmpq	%r11, %rcx
	jnb	.L3096
	leaq	2(%rax), %rdx
	movq	%rdx, (%rbx)
	movzbl	1(%rax), %esi
	sall	$8, %esi
.L3096:
	movzbl	145(%rsp), %edi
	movzbl	144(%rsp), %r15d
	movzbl	146(%rsp), %r14d
	jmp	.L3091
.L3193:
	leaq	.LC101(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3062
.L3503:
	leaq	.LC102(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3062
.L3231:
	movl	%r13d, %r8d
	movq	%r15, %rdi
	jmp	.L3199
.L3520:
	leaq	1(%rcx), %rax
	movslq	%esi, %r9
	movq	%rax, (%rbx)
	movzbl	(%rcx), %r10d
	cmpq	%r11, %rax
	movb	%r10b, 144(%rsp,%r9)
	jnb	.L3219
	leaq	2(%rcx), %rax
	cmpl	$4, %edx
	movq	%rax, (%rbx)
	movzbl	1(%rcx), %ecx
	movb	%cl, 144(%rsp,%r8)
	jne	.L3093
.L3218:
	movzbl	147(%rsp), %esi
	movzbl	145(%rsp), %edi
	movzbl	144(%rsp), %r15d
	movzbl	146(%rsp), %r14d
	sall	$8, %esi
	jmp	.L3091
.L3094:
	testl	%esi, %esi
	movb	$0, 144(%rsp,%rdx)
	je	.L3096
	jmp	.L3218
.L3509:
	leaq	.LC100(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3062
.L3088:
	jne	.L3521
	movl	$3, %edx
	movl	$2, %r8d
	movl	$1, %esi
	jmp	.L3210
.L3232:
	movl	%r13d, %r8d
	movq	%rsi, %r9
	movq	%r15, %rdi
	jmp	.L3200
.L3089:
	jne	.L3522
	movl	$4, %edx
	movl	$3, %r8d
	movl	$2, %esi
	jmp	.L3210
.L3510:
	leaq	.LC101(%rip), %rsi
	movq	%rsi, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3062
.L3517:
	leaq	.LC4(%rip), %r14
	movl	%esi, %ecx
	jmp	.L3082
	.p2align 4,,10
.L3084:
	movq	(%rbx), %rax
	cmpq	%rax, 8(%rbx)
	jbe	.L3085
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%rax), %eax
	sall	%cl, %eax
	orl	%eax, %ebp
.L3085:
	addl	$8, %ecx
	movl	%ebp, 20(%rbx)
	cmpl	$24, %ecx
	movl	%ecx, 16(%rbx)
	jg	.L3523
.L3082:
	movl	%ebp, %eax
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L3084
	movq	%r14, %rcx
	movl	$3848, %r8d
	movq	%r12, %rdx
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %ebp
	jmp	.L3084
.L3523:
	movl	%ecx, %esi
	jmp	.L3083
.L3515:
	leal	(%r9,%r9), %edx
	movl	%r9d, %r11d
	sarl	%r11d
	andl	$43690, %edx
	andl	$21845, %r11d
	orl	%edx, %r11d
	movl	%r11d, %edx
	sall	$2, %r11d
	sarl	$2, %edx
	andl	$52428, %r11d
	andl	$13107, %edx
	orl	%r11d, %edx
	movl	%edx, %r11d
	sall	$4, %edx
	sarl	$4, %r11d
	andl	$61680, %edx
	andl	$3855, %r11d
	orl	%edx, %r11d
	movl	%r11d, %edx
	sall	$8, %r11d
	movzwl	%r11w, %r13d
	movl	$1, %r11d
	sarl	$8, %edx
	sall	%cl, %r11d
	movl	$16, %ecx
	orl	%r13d, %edx
	subl	%eax, %ecx
	sall	$9, %eax
	movslq	%r11d, %r11
	sarl	%cl, %edx
	orl	%r8d, %eax
	movslq	%edx, %rdx
.L3128:
	movw	%ax, 52(%rbx,%rdx,2)
	addq	%r11, %rdx
	cmpl	$511, %edx
	jle	.L3128
	jmp	.L3127
.L3090:
	jne	.L3524
.L3209:
	movq	(%rbx), %rax
	cmpq	%rax, 8(%rbx)
	ja	.L3525
	xorl	%esi, %esi
	jmp	.L3091
.L3103:
	movq	(%rbx), %rdx
	movslq	%ebp, %rbp
	movq	%rax, 32(%rbx)
	addq	%rax, %rbp
	addq	%rsi, %rax
	movq	%rbp, 24(%rbx)
	movq	%rax, 40(%rbx)
.L3099:
	movq	%rdi, %r8
	movq	%rbp, %rcx
	call	memcpy
	movl	52(%rsp), %eax
	addq	%rdi, (%rbx)
	addq	%rdi, 24(%rbx)
	testl	%eax, %eax
	je	.L3526
.L3233:
	movl	$1, %eax
	jmp	.L3062
.L3491:
	movq	8(%rcx), %r9
	movq	(%rcx), %rdx
	cmpq	%rdx, %r9
	ja	.L3527
.L3064:
	leaq	.LC97(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3062
.L3105:
	xorl	%eax, %eax
	jmp	.L3062
.L3525:
	leaq	1(%rax), %rdx
	movzbl	145(%rsp), %edi
	movzbl	144(%rsp), %r15d
	movq	%rdx, (%rbx)
	movzbl	(%rax), %eax
	movzbl	146(%rsp), %r14d
	movb	%al, 147(%rsp)
	sall	$8, %eax
	movl	%eax, %esi
	jmp	.L3091
.L3527:
	leaq	1(%rdx), %rcx
	movq	%rcx, (%rbx)
	movzbl	(%rdx), %eax
	movl	%eax, %r8d
	andl	$15, %r8d
	cmpq	%rcx, %r9
	jbe	.L3528
	leaq	2(%rdx), %rcx
	sall	$8, %eax
	movq	%rcx, (%rbx)
	movzbl	1(%rdx), %ecx
	movl	$-2078209981, %edx
	movl	%ecx, %r9d
	addl	%eax, %ecx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	sall	$5, %edx
	subl	%eax, %edx
	subl	%edx, %ecx
	movl	%ecx, %eax
	jne	.L3066
	andl	$32, %r9d
	je	.L3067
	leaq	.LC96(%rip), %rsi
	movq	%rsi, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3062
.L3066:
	leaq	.LC95(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3062
.L3219:
	xorl	%ecx, %ecx
	jmp	.L3092
.L3528:
	sall	$8, %eax
	movl	$31, %ecx
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.L3066
.L3067:
	cmpb	$8, %r8b
	jne	.L3064
	jmp	.L3063
.L3522:
	movl	$4033, %r8d
	movq	%r12, %rdx
	movl	$2, %esi
	leaq	.LC98(%rip), %rcx
	call	_assert
	movl	$4, %edx
	movl	$3, %r8d
	jmp	.L3210
.L3519:
	movl	$4033, %r8d
	movq	%r12, %rdx
	xorl	%esi, %esi
	leaq	.LC98(%rip), %rcx
	call	_assert
	movl	$2, %edx
	movl	$1, %r8d
	jmp	.L3210
.L3524:
	leaq	.LC98(%rip), %rcx
	movl	$4033, %r8d
	movq	%r12, %rdx
	call	_assert
	jmp	.L3209
.L3521:
	movl	$4033, %r8d
	movq	%r12, %rdx
	movl	$1, %esi
	leaq	.LC98(%rip), %rcx
	call	_assert
	movl	$3, %edx
	movl	$2, %r8d
	jmp	.L3210
	.seh_endproc
	.section .rdata,"dr"
.LC103:
	.ascii "bad png sig\0"
.LC104:
	.ascii "multiple IHDR\0"
.LC105:
	.ascii "bad IHDR len\0"
.LC106:
	.ascii "1/2/4/8/16-bit only\0"
.LC107:
	.ascii "bad ctype\0"
.LC108:
	.ascii "bad comp method\0"
.LC109:
	.ascii "bad filter method\0"
.LC110:
	.ascii "bad interlace method\0"
.LC111:
	.ascii "0-pixel image\0"
.LC112:
	.ascii "first not IHDR\0"
.LC113:
	.ascii "invalid PLTE\0"
.LC114:
	.ascii "tRNS after IDAT\0"
.LC115:
	.ascii "tRNS before PLTE\0"
.LC116:
	.ascii "bad tRNS len\0"
.LC117:
	.ascii "tRNS with alpha\0"
.LC118:
	.ascii "no PLTE\0"
.LC119:
	.ascii "outofdata\0"
.LC120:
	.ascii "no IDAT\0"
.LC125:
	.ascii "out_n == 2 || out_n == 4\0"
.LC127:
	.ascii "s->img_out_n == 4\0"
	.text
	.p2align 4,,15
	.def	_ZL20stbi__parse_png_fileP9stbi__pngii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbi__parse_png_fileP9stbi__pngii
_ZL20stbi__parse_png_fileP9stbi__pngii:
.LFB948:
	pushq	%r15
	.seh_pushreg	%r15
	movl	$5800, %eax
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	5800
	movaps	%xmm6, 5728(%rsp)
	.seh_savexmm	%xmm6, 5728
	movaps	%xmm7, 5744(%rsp)
	.seh_savexmm	%xmm7, 5744
	movaps	%xmm8, 5760(%rsp)
	.seh_savexmm	%xmm8, 5760
	movaps	%xmm9, 5776(%rsp)
	.seh_savexmm	%xmm9, 5776
	.seh_endprologue
	leaq	_ZZL22stbi__check_png_headerP13stbi__contextE7png_sig(%rip), %rdi
	leaq	8(%rdi), %r12
	movq	(%rcx), %rbx
	movq	$0, 16(%rcx)
	leaq	57(%rbx), %rbp
	movq	%rcx, %r14
	movq	$0, 8(%rcx)
	movq	$0, 24(%rcx)
	movq	184(%rbx), %rcx
	movl	%edx, 5880(%rsp)
	movq	192(%rbx), %rdx
	movl	%r8d, 5888(%rsp)
.L3536:
	cmpq	%rdx, %rcx
	jb	.L3764
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L3656
	leaq	56(%rbx), %rsi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rsi, %rdx
	call	*16(%rbx)
	movq	%rbp, %rcx
	testl	%eax, %eax
	jne	.L3532
	movl	$0, 48(%rbx)
	movq	%rbp, %rdx
	movb	$0, 56(%rbx)
.L3533:
	movq	%rdx, 192(%rbx)
	movq	%rbp, 184(%rbx)
.L3531:
	cmpb	%al, (%rdi)
	jne	.L3765
.L3534:
	addq	$1, %rdi
	cmpq	%r12, %rdi
	jne	.L3536
	movl	$0, 116(%rsp)
	movl	$1, %r15d
	xorl	%r12d, %r12d
	movl	$0, 112(%rsp)
	leaq	57(%rbx), %rbp
	movl	$0, 120(%rsp)
	movl	$0, 104(%rsp)
	movl	$0, 80(%rsp)
	movb	$0, 131(%rsp)
	movb	$0, 103(%rsp)
.L3655:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %edi
	call	_ZL13stbi__get16beP13stbi__context
	sall	$16, %edi
	movq	%rbx, %rcx
	addl	%eax, %edi
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %esi
	call	_ZL13stbi__get16beP13stbi__context
	sall	$16, %esi
	addl	%esi, %eax
	cmpl	$1229278788, %eax
	je	.L3538
	jbe	.L3766
	cmpl	$1347179589, %eax
	je	.L3542
	cmpl	$1951551059, %eax
	je	.L3543
	cmpl	$1229472850, %eax
	je	.L3767
.L3537:
	testl	%r15d, %r15d
	jne	.L3583
	testl	$536870912, %eax
	je	.L3768
	testl	%edi, %edi
	jns	.L3654
	movq	192(%rbx), %rax
	movq	%rax, 184(%rbx)
	jmp	.L3546
	.p2align 4,,10
.L3764:
	leaq	1(%rcx), %r8
	movq	%r8, 184(%rbx)
	movzbl	(%rcx), %eax
	movq	%r8, %rcx
	cmpb	%al, (%rdi)
	je	.L3534
.L3765:
	leaq	.LC103(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L3529:
	movaps	5728(%rsp), %xmm6
	movl	%r15d, %eax
	movaps	5744(%rsp), %xmm7
	movaps	5760(%rsp), %xmm8
	movaps	5776(%rsp), %xmm9
	addq	$5800, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L3532:
	cltq
	leaq	(%rsi,%rax), %rdx
	movzbl	56(%rbx), %eax
	jmp	.L3533
	.p2align 4,,10
.L3766:
	cmpl	$1130840649, %eax
	je	.L3540
	cmpl	$1229209940, %eax
	jne	.L3537
	testl	%r15d, %r15d
	jne	.L3583
	cmpb	$0, 103(%rsp)
	je	.L3595
	movl	104(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L3769
.L3595:
	cmpl	$2, 5880(%rsp)
	je	.L3770
	movl	80(%rsp), %eax
	leal	(%rax,%rdi), %esi
	cmpl	%eax, %esi
	jl	.L3762
	cmpl	%r12d, %esi
	movq	8(%r14), %rax
	jbe	.L3598
	testl	%r12d, %r12d
	jne	.L3601
	cmpl	$4096, %edi
	movl	$4096, %r12d
	cmovnb	%edi, %r12d
	cmpl	%r12d, %esi
	jbe	.L3600
	.p2align 4,,10
.L3601:
	addl	%r12d, %r12d
	cmpl	%r12d, %esi
	ja	.L3601
.L3600:
	movl	%r12d, %edx
	movq	%rax, %rcx
	call	realloc
	testq	%rax, %rax
	je	.L3647
	movq	%rax, 8(%r14)
.L3598:
	movl	80(%rsp), %edx
	movl	%edi, %r8d
	movq	%rbx, %rcx
	addq	%rax, %rdx
	call	_ZL10stbi__getnP13stbi__contextPhi
	testl	%eax, %eax
	je	.L3771
	movl	%esi, 80(%rsp)
	.p2align 4,,10
.L3546:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	jmp	.L3655
	.p2align 4,,10
.L3767:
	testl	%r15d, %r15d
	je	.L3772
	cmpl	$13, %edi
	jne	.L3773
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %esi
	call	_ZL13stbi__get16beP13stbi__context
	sall	$16, %esi
	addl	%esi, %eax
	cmpl	$16777216, %eax
	movl	%eax, (%rbx)
	ja	.L3550
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %esi
	call	_ZL13stbi__get16beP13stbi__context
	sall	$16, %esi
	addl	%esi, %eax
	cmpl	$16777216, %eax
	movl	%eax, 4(%rbx)
	ja	.L3550
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	cmpb	$16, %al
	movl	%edx, 32(%r14)
	ja	.L3551
	movl	$65814, %edx
	btq	%rax, %rdx
	jnc	.L3551
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	cmpl	$6, %eax
	movl	%eax, %esi
	movl	%eax, 112(%rsp)
	jg	.L3555
	cmpl	$3, 112(%rsp)
	je	.L3774
	testb	$1, %al
	jne	.L3555
.L3556:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	testb	%al, %al
	jne	.L3775
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	testb	%al, %al
	jne	.L3776
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	cmpl	$1, %eax
	movl	%eax, 120(%rsp)
	jg	.L3777
	movl	(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L3560
	movl	4(%rbx), %r8d
	testl	%r8d, %r8d
	je	.L3560
	cmpb	$0, 103(%rsp)
	jne	.L3562
	andl	$2, %esi
	movl	$3, %eax
	cmovne	%eax, %r15d
	movl	112(%rsp), %eax
	xorl	%edx, %edx
	sarl	$2, %eax
	addl	%eax, %r15d
	movl	$1073741824, %eax
	divl	%ecx
	xorl	%edx, %edx
	movl	%r15d, 8(%rbx)
	divl	%r15d
	cmpl	%eax, %r8d
	ja	.L3550
	cmpl	$2, 5880(%rsp)
	jne	.L3761
	.p2align 4,,10
.L3564:
	movl	$1, %r15d
	jmp	.L3529
	.p2align 4,,10
.L3543:
	testl	%r15d, %r15d
	jne	.L3583
	cmpq	$0, 8(%r14)
	jne	.L3778
	cmpb	$0, 103(%rsp)
	jne	.L3779
	movl	8(%rbx), %eax
	testb	$1, %al
	je	.L3780
	leal	(%rax,%rax), %edx
	cmpl	%edi, %edx
	jne	.L3591
	cmpl	$16, 32(%r14)
	movb	$1, 131(%rsp)
	je	.L3781
	testl	%eax, %eax
	jle	.L3546
	leaq	502(%rsp), %rdi
	movl	$1, %esi
	leaq	_ZL23stbi__depth_scale_table(%rip), %r13
.L3594:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movslq	32(%r14), %rcx
	movl	%eax, %edx
	movzbl	0(%r13,%rcx), %eax
	imull	%edx, %eax
	movb	%al, (%rdi,%rsi)
	movl	%esi, %eax
	addq	$1, %rsi
	cmpl	%eax, 8(%rbx)
	jg	.L3594
.L3663:
	movb	$1, 131(%rsp)
	jmp	.L3546
	.p2align 4,,10
.L3540:
	testl	%edi, %edi
	jns	.L3545
	movq	192(%rbx), %rax
	movl	$1, 116(%rsp)
	movq	%rax, 184(%rbx)
	jmp	.L3546
	.p2align 4,,10
.L3542:
	testl	%r15d, %r15d
	jne	.L3583
	cmpl	$768, %edi
	ja	.L3567
	movl	%edi, %eax
	movl	$-1431655765, %edx
	mull	%edx
	shrl	%edx
	leal	(%rdx,%rdx,2), %eax
	movl	%edx, 104(%rsp)
	cmpl	%edi, %eax
	jne	.L3567
	testl	%edx, %edx
	movl	%edx, %eax
	je	.L3546
	leaq	612(%rsp), %r13
	subl	$1, %eax
	movl	%r12d, 132(%rsp)
	movq	184(%rbx), %rdx
	leaq	0(%r13,%rax,4), %rax
	movq	%rbp, %r12
	movq	192(%rbx), %rdi
	movq	%r13, %rbp
	leaq	608(%rsp), %rsi
	movq	%rsi, %r13
	movq	%rax, %rsi
	jmp	.L3582
	.p2align 4,,10
.L3783:
	leaq	1(%r8), %rcx
	movq	%rcx, 184(%rbx)
	movzbl	(%r8), %eax
	cmpq	%rdi, %rcx
	movb	%al, 1(%r13)
	jnb	.L3578
.L3784:
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rcx), %eax
.L3579:
	cmpq	%rsi, %rbp
	movb	%al, 2(%r13)
	movb	$-1, 3(%r13)
	movq	%rbp, %r13
	je	.L3759
	addq	$4, %rbp
.L3582:
	cmpq	%rdi, %rdx
	jb	.L3782
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L3570
	leaq	56(%rbx), %rdi
	movl	52(%rbx), %r8d
	movq	40(%rbx), %rcx
	movq	%rdi, %rdx
	call	*16(%rbx)
	movq	%r12, %r8
	testl	%eax, %eax
	jne	.L3571
	movl	$0, 48(%rbx)
	movq	%r12, %rdi
	movb	$0, 56(%rbx)
.L3572:
	movq	%rdi, 192(%rbx)
	movq	%r12, 184(%rbx)
.L3569:
	cmpq	%rdi, %r8
	movb	%al, 0(%r13)
	jb	.L3783
.L3573:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L3575
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	movq	%r12, %rcx
	testl	%eax, %eax
	jne	.L3576
	movl	$0, 48(%rbx)
	movq	%r12, %rdi
	movb	$0, 56(%rbx)
.L3577:
	cmpq	%rdi, %rcx
	movq	%rdi, 192(%rbx)
	movq	%r12, 184(%rbx)
	movb	%al, 1(%r13)
	jb	.L3784
.L3578:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L3657
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movq	%rdi, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	movq	%r12, %rdx
	testl	%eax, %eax
	jne	.L3580
	movl	$0, 48(%rbx)
	movq	%r12, %rdi
	movb	$0, 56(%rbx)
.L3581:
	movq	%rdi, 192(%rbx)
	movq	%r12, 184(%rbx)
	jmp	.L3579
	.p2align 4,,10
.L3782:
	leaq	1(%rdx), %r8
	movq	%r8, 184(%rbx)
	movzbl	(%rdx), %eax
	jmp	.L3569
	.p2align 4,,10
.L3571:
	cltq
	addq	%rax, %rdi
	movzbl	56(%rbx), %eax
	jmp	.L3572
	.p2align 4,,10
.L3580:
	cltq
	addq	%rax, %rdi
	movzbl	56(%rbx), %eax
	jmp	.L3581
	.p2align 4,,10
.L3576:
	cltq
	addq	%rax, %rdi
	movzbl	56(%rbx), %eax
	jmp	.L3577
	.p2align 4,,10
.L3538:
	testl	%r15d, %r15d
	jne	.L3583
	movl	5880(%rsp), %edi
	testl	%edi, %edi
	jne	.L3564
	movq	8(%r14), %rbp
	testq	%rbp, %rbp
	je	.L3785
	movl	4(%rbx), %eax
	movl	8(%rbx), %edx
	movl	(%rbx), %edi
	imull	32(%r14), %edi
	movl	116(%rsp), %esi
	imull	%eax, %edx
	addl	$7, %edi
	shrl	$3, %edi
	imull	%edx, %edi
	xorl	$1, %esi
	addl	%eax, %edi
	movslq	%edi, %rdi
	movq	%rdi, %rcx
	call	malloc
	testq	%rax, %rax
	je	.L3763
	movslq	80(%rsp), %rdx
	movq	%rax, 1664(%rsp)
	movq	%rax, 1656(%rsp)
	addq	%rdi, %rax
	movq	%rax, 1672(%rsp)
	leaq	1632(%rsp), %rax
	movq	%rax, %rcx
	movq	%rbp, 1632(%rsp)
	addq	%rbp, %rdx
	movq	%rax, 152(%rsp)
	movq	%rdx, 1640(%rsp)
	movl	%esi, %edx
	movl	$1, 1680(%rsp)
	call	_ZL16stbi__parse_zlibP10stbi__zbufi
	testl	%eax, %eax
	movl	%eax, %r15d
	je	.L3605
	movq	1664(%rsp), %rsi
	movq	1656(%rsp), %rdi
	testq	%rsi, %rsi
	movq	%rsi, 16(%r14)
	je	.L3762
	movq	8(%r14), %rcx
	call	free
	movq	$0, 8(%r14)
	movl	8(%rbx), %eax
	leal	1(%rax), %edx
	cmpl	5888(%rsp), %edx
	movl	%edx, 208(%rsp)
	je	.L3786
.L3608:
	cmpb	$0, 131(%rsp)
	cmovne	208(%rsp), %eax
	movl	%eax, 208(%rsp)
.L3609:
	movl	208(%rsp), %r9d
	movl	%r9d, 12(%rbx)
	movl	32(%r14), %r11d
	leal	(%r9,%r9), %eax
	movq	16(%r14), %r8
	cmpl	$16, %r11d
	movl	%r11d, 216(%rsp)
	cmovne	%r9d, %eax
	subq	%rsi, %rdi
	movl	120(%rsp), %esi
	movq	%r8, 200(%rsp)
	movl	%edi, 212(%rsp)
	movl	%eax, %r12d
	movq	(%r14), %rax
	testl	%esi, %esi
	movl	4(%rax), %r10d
	movl	(%rax), %ecx
	je	.L3787
	xorl	%r9d, %r9d
	movl	%r12d, %r8d
	movl	%r10d, %edx
	call	_ZL17stbi__malloc_mad3iiii
	movslq	%r12d, %r13
	movq	$0, 120(%rsp)
	movdqa	.LC121(%rip), %xmm9
	movq	%rax, 80(%rsp)
	leaq	512(%rsp), %rax
	movdqa	.LC122(%rip), %xmm8
	movq	%rax, 160(%rsp)
	leaq	576(%rsp), %rax
	movdqa	.LC123(%rip), %xmm7
	movq	%rax, 176(%rsp)
	leaq	544(%rsp), %rax
	movdqa	.LC124(%rip), %xmm6
	movq	%rax, 168(%rsp)
	leaq	24(%r14), %rax
	movq	%rax, 224(%rsp)
	movq	%rbx, 232(%rsp)
	jmp	.L3619
	.p2align 4,,10
.L3614:
	addq	$4, 120(%rsp)
	movq	120(%rsp), %rax
	cmpq	$28, %rax
	je	.L3788
.L3619:
	movq	120(%rsp), %rdi
	xorl	%edx, %edx
	movaps	%xmm9, 512(%rsp)
	movq	160(%rsp), %rax
	movl	$0, 528(%rsp)
	movq	(%r14), %rcx
	movaps	%xmm6, 1632(%rsp)
	movl	$1, 532(%rsp)
	movl	$0, 536(%rsp)
	movl	(%rax,%rdi), %ebx
	movl	$4, 1648(%rsp)
	movq	176(%rsp), %rax
	movaps	%xmm7, 576(%rsp)
	movl	$2, 1652(%rsp)
	movl	$2, 1656(%rsp)
	movl	$2, 592(%rsp)
	movl	$2, 596(%rsp)
	movl	$1, 600(%rsp)
	movl	(%rax,%rdi), %esi
	movaps	%xmm8, 544(%rsp)
	movl	(%rcx), %eax
	movl	$2, 560(%rsp)
	movl	$0, 564(%rsp)
	movl	$1, 568(%rsp)
	leal	-1(%rsi,%rax), %eax
	subl	%ebx, %eax
	divl	%esi
	movq	168(%rsp), %rdx
	movl	%eax, %ebp
	movq	%rdi, %rax
	movl	(%rdx,%rdi), %edi
	movq	152(%rsp), %rdx
	movl	(%rdx,%rax), %edx
	movl	4(%rcx), %eax
	movl	%edx, %r11d
	movl	%edx, 148(%rsp)
	leal	-1(%rdx,%rax), %eax
	xorl	%edx, %edx
	subl	%edi, %eax
	divl	%r11d
	testl	%ebp, %ebp
	movl	%eax, 144(%rsp)
	je	.L3614
	testl	%eax, %eax
	je	.L3614
	movl	%eax, %r10d
	movl	8(%rcx), %eax
	movl	%ebp, 40(%rsp)
	movl	216(%rsp), %edx
	movl	%r10d, 48(%rsp)
	movl	212(%rsp), %r9d
	movq	200(%rsp), %r8
	imull	%ebp, %eax
	movl	%edx, 56(%rsp)
	imull	%edx, %eax
	movq	224(%rsp), %rdx
	addl	$7, %eax
	sarl	$3, %eax
	addl	$1, %eax
	imull	%r10d, %eax
	movl	%eax, 220(%rsp)
	movl	112(%rsp), %eax
	movl	%eax, 64(%rsp)
	movl	208(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii.isra.36
	testl	%eax, %eax
	je	.L3789
	movl	144(%rsp), %ecx
	testl	%ecx, %ecx
	jle	.L3616
	testl	%ebp, %ebp
	jle	.L3616
	movl	%r12d, %eax
	imull	%r12d, %esi
	movl	$0, 132(%rsp)
	movq	$0, 136(%rsp)
	imull	%ebp, %eax
	imull	%r12d, %ebx
	cltq
	movq	%rax, 192(%rsp)
	movslq	%esi, %rax
	movq	%rax, 104(%rsp)
	movslq	%ebx, %rax
	movq	%rax, 184(%rsp)
	.p2align 4,,10
.L3618:
	movq	184(%rsp), %r15
	movq	%r14, 5872(%rsp)
	xorl	%ebx, %ebx
	movq	136(%rsp), %rsi
	movq	%rsi, %r14
	movq	%r15, %rsi
	movq	5872(%rsp), %r15
	.p2align 4,,10
.L3617:
	movq	(%r15), %rax
	movq	%r13, %r8
	addl	$1, %ebx
	movq	24(%r15), %rdx
	movl	(%rax), %ecx
	addq	%r14, %rdx
	addq	%r13, %r14
	imull	%r12d, %ecx
	imull	%edi, %ecx
	addq	%rsi, %rcx
	addq	80(%rsp), %rcx
	call	memcpy
	addq	104(%rsp), %rsi
	cmpl	%ebx, %ebp
	jne	.L3617
	addl	$1, 132(%rsp)
	movq	%r15, %r14
	movl	132(%rsp), %eax
	movq	192(%rsp), %rdx
	addl	148(%rsp), %edi
	addq	%rdx, 136(%rsp)
	cmpl	%eax, 144(%rsp)
	jne	.L3618
.L3616:
	movq	24(%r14), %rcx
	call	free
	movl	220(%rsp), %eax
	addq	%rax, 200(%rsp)
	subl	%eax, 212(%rsp)
	jmp	.L3614
	.p2align 4,,10
.L3759:
	movq	%r12, %rbp
	movl	132(%rsp), %r12d
	jmp	.L3546
	.p2align 4,,10
.L3656:
	xorl	%eax, %eax
	jmp	.L3531
	.p2align 4,,10
.L3583:
	leaq	.LC112(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
	.p2align 4,,10
.L3545:
	movl	%edi, %edx
	movq	%rbx, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movl	$1, 116(%rsp)
	jmp	.L3546
	.p2align 4,,10
.L3654:
	movl	%edi, %edx
	movq	%rbx, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	jmp	.L3546
	.p2align 4,,10
.L3562:
	xorl	%edx, %edx
	movl	$268435456, %eax
	movl	$1, 8(%rbx)
	divl	%ecx
	cmpl	%eax, %r8d
	ja	.L3550
.L3761:
	xorl	%r15d, %r15d
	jmp	.L3546
	.p2align 4,,10
.L3774:
	cmpl	$16, 32(%r14)
	je	.L3555
	movb	$3, 103(%rsp)
	jmp	.L3556
	.p2align 4,,10
.L3781:
	testl	%eax, %eax
	jle	.L3546
	leaq	506(%rsp), %rsi
	movl	$1, %edi
.L3593:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movw	%ax, -2(%rsi,%rdi,2)
	movl	%edi, %eax
	addq	$1, %rdi
	cmpl	%eax, 8(%rbx)
	jg	.L3593
	jmp	.L3663
	.p2align 4,,10
.L3657:
	movq	%rcx, %rdx
	xorl	%eax, %eax
	jmp	.L3579
	.p2align 4,,10
.L3575:
	movb	$0, 1(%r13)
	movq	%r8, %rcx
	jmp	.L3578
	.p2align 4,,10
.L3570:
	movb	$0, 0(%r13)
	movq	%rdx, %r8
	jmp	.L3573
	.p2align 4,,10
.L3779:
	cmpl	$2, 5880(%rsp)
	je	.L3790
	movl	104(%rsp), %eax
	testl	%eax, %eax
	je	.L3791
	cmpl	%edi, 104(%rsp)
	jb	.L3591
	testl	%edi, %edi
	je	.L3659
	leaq	608(%rsp), %rax
	leal	-1(%rdi), %ecx
	leaq	611(%rsp), %rsi
	leaq	7(%rax,%rcx,4), %rdi
	.p2align 4,,10
.L3589:
	movq	%rbx, %rcx
	addq	$4, %rsi
	call	_ZL10stbi__get8P13stbi__context
	movb	%al, -4(%rsi)
	cmpq	%rdi, %rsi
	jne	.L3589
.L3659:
	movb	$4, 103(%rsp)
	jmp	.L3546
	.p2align 4,,10
.L3551:
	leaq	.LC106(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
	.p2align 4,,10
.L3785:
	leaq	.LC120(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3769:
	leaq	.LC118(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3647:
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L3762:
	xorl	%r15d, %r15d
	jmp	.L3529
.L3550:
	leaq	.LC78(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3788:
	movq	80(%rsp), %rax
	movq	232(%rsp), %rbx
	movq	%rax, 24(%r14)
.L3613:
	cmpb	$0, 131(%rsp)
	je	.L3620
	movl	12(%rbx), %ebp
	movq	(%r14), %rdx
	movq	24(%r14), %rsi
	leal	-2(%rbp), %eax
	andl	$-3, %eax
	movl	4(%rdx), %edi
	imull	(%rdx), %edi
	cmpl	$16, 32(%r14)
	je	.L3792
	testl	%eax, %eax
	je	.L3628
	leaq	.LC3(%rip), %rdx
	movl	$4544, %r8d
	leaq	.LC125(%rip), %rcx
	call	_assert
.L3628:
	cmpl	$2, %ebp
	je	.L3793
	testl	%edi, %edi
	je	.L3620
	leal	-1(%rdi), %eax
	movzbl	503(%rsp), %edx
	movzbl	504(%rsp), %r8d
	leaq	4(%rsi,%rax,4), %rax
	movzbl	505(%rsp), %ecx
	jmp	.L3633
.L3632:
	addq	$4, %rsi
	cmpq	%rax, %rsi
	je	.L3620
.L3633:
	cmpb	%dl, (%rsi)
	jne	.L3632
	cmpb	%r8b, 1(%rsi)
	jne	.L3632
	cmpb	%cl, 2(%rsi)
	jne	.L3632
	movb	$0, 3(%rsi)
	jmp	.L3632
.L3793:
	testl	%edi, %edi
	je	.L3620
	leal	-1(%rdi), %eax
	movzbl	503(%rsp), %ecx
	cmpl	$15, %eax
	jbe	.L3667
	movl	%eax, %r9d
	movd	%ecx, %xmm0
	xorl	%r8d, %r8d
	pxor	%xmm4, %xmm4
	movdqa	.LC2(%rip), %xmm3
	leaq	1(%rsi), %rdx
	shrl	$4, %r9d
	punpcklbw	%xmm0, %xmm0
	movdqa	.LC51(%rip), %xmm5
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
.L3631:
	movdqu	-1(%rdx), %xmm1
	addl	$1, %r8d
	addq	$32, %rdx
	movdqu	-17(%rdx), %xmm2
	pand	%xmm3, %xmm1
	pand	%xmm3, %xmm2
	packuswb	%xmm2, %xmm1
	pcmpeqb	%xmm0, %xmm1
	movdqa	%xmm4, %xmm2
	pandn	%xmm5, %xmm1
	psubb	%xmm1, %xmm2
	movaps	%xmm2, 80(%rsp)
	movzbl	80(%rsp), %r10d
	movaps	%xmm2, 480(%rsp)
	movb	%r10b, -32(%rdx)
	movaps	%xmm2, 464(%rsp)
	movzbl	465(%rsp), %r10d
	movb	%r10b, -30(%rdx)
	movaps	%xmm2, 448(%rsp)
	movzbl	450(%rsp), %r10d
	movb	%r10b, -28(%rdx)
	movaps	%xmm2, 432(%rsp)
	movzbl	435(%rsp), %r10d
	movb	%r10b, -26(%rdx)
	movaps	%xmm2, 416(%rsp)
	movzbl	420(%rsp), %r10d
	movb	%r10b, -24(%rdx)
	movaps	%xmm2, 400(%rsp)
	movzbl	405(%rsp), %r10d
	movb	%r10b, -22(%rdx)
	movaps	%xmm2, 384(%rsp)
	movzbl	390(%rsp), %r10d
	movb	%r10b, -20(%rdx)
	movaps	%xmm2, 368(%rsp)
	movzbl	375(%rsp), %r10d
	movb	%r10b, -18(%rdx)
	movaps	%xmm2, 352(%rsp)
	movzbl	360(%rsp), %r10d
	movb	%r10b, -16(%rdx)
	movaps	%xmm2, 336(%rsp)
	movzbl	345(%rsp), %r10d
	movb	%r10b, -14(%rdx)
	movaps	%xmm2, 320(%rsp)
	movzbl	330(%rsp), %r10d
	movb	%r10b, -12(%rdx)
	movaps	%xmm2, 304(%rsp)
	movzbl	315(%rsp), %r10d
	movb	%r10b, -10(%rdx)
	movaps	%xmm2, 288(%rsp)
	movzbl	300(%rsp), %r10d
	movb	%r10b, -8(%rdx)
	movaps	%xmm2, 272(%rsp)
	movzbl	285(%rsp), %r10d
	movb	%r10b, -6(%rdx)
	movaps	%xmm2, 256(%rsp)
	movzbl	270(%rsp), %r10d
	movb	%r10b, -4(%rdx)
	movaps	%xmm2, 240(%rsp)
	movzbl	255(%rsp), %r10d
	movb	%r10b, -2(%rdx)
	cmpl	%r8d, %r9d
	ja	.L3631
	andl	$-16, %eax
	movl	%eax, %edx
	leaq	(%rsi,%rdx,2), %rsi
.L3630:
	cmpb	%cl, (%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 1(%rsi)
	leal	1(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	cmpb	%cl, 2(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 3(%rsi)
	leal	2(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	cmpb	%cl, 4(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 5(%rsi)
	leal	3(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	cmpb	%cl, 6(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 7(%rsi)
	leal	4(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	cmpb	%cl, 8(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 9(%rsi)
	leal	5(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	cmpb	%cl, 10(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 11(%rsi)
	leal	6(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	cmpb	%cl, 12(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 13(%rsi)
	leal	7(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	cmpb	%cl, 14(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 15(%rsi)
	leal	8(%rax), %edx
	cmpl	%edx, %edi
	jbe	.L3620
	cmpb	%cl, 16(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 17(%rsi)
	leal	9(%rax), %edx
	cmpl	%edx, %edi
	jbe	.L3620
	cmpb	%cl, 18(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 19(%rsi)
	leal	10(%rax), %edx
	cmpl	%edx, %edi
	jbe	.L3620
	cmpb	%cl, 20(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 21(%rsi)
	leal	11(%rax), %edx
	cmpl	%edx, %edi
	jbe	.L3620
	cmpb	%cl, 22(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 23(%rsi)
	leal	12(%rax), %edx
	cmpl	%edx, %edi
	jbe	.L3620
	cmpb	%cl, 24(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 25(%rsi)
	leal	13(%rax), %edx
	cmpl	%edx, %edi
	jbe	.L3620
	cmpb	%cl, 26(%rsi)
	setne	%dl
	negl	%edx
	movb	%dl, 27(%rsi)
	leal	14(%rax), %edx
	cmpl	%edx, %edi
	jbe	.L3620
	cmpb	%cl, 28(%rsi)
	setne	%dl
	addl	$15, %eax
	negl	%edx
	cmpl	%eax, %edi
	movb	%dl, 29(%rsi)
	jbe	.L3620
	cmpb	%cl, 30(%rsi)
	setne	%al
	negl	%eax
	movb	%al, 31(%rsi)
.L3620:
	movl	116(%rsp), %edx
	testl	%edx, %edx
	je	.L3634
	movl	_ZL20stbi__de_iphone_flag(%rip), %eax
	testl	%eax, %eax
	je	.L3634
	cmpl	$2, 12(%rbx)
	jg	.L3794
.L3634:
	movzbl	103(%rsp), %eax
	testb	%al, %al
	je	.L3643
	cmpl	$2, 5888(%rsp)
	movzbl	%al, %ebp
	movl	%ebp, 8(%rbx)
	jg	.L3644
	movl	%ebp, 12(%rbx)
.L3645:
	movq	(%r14), %rax
	movq	24(%r14), %rsi
	movl	(%rax), %ebx
	imull	4(%rax), %ebx
	testl	%ebx, %ebx
	js	.L3647
	movl	$2147483647, %eax
	cltd
	idivl	%ebp
	cmpl	%eax, %ebx
	jg	.L3647
	movl	%ebx, %ecx
	imull	%ebp, %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L3647
	cmpl	$3, %ebp
	jne	.L3649
	testl	%ebx, %ebx
	je	.L3650
	leal	-1(%rbx), %edx
	movq	%rsi, %rax
	movq	%rdi, %rcx
	leaq	3(%rdx,%rdx,2), %r8
	addq	%rdi, %r8
.L3651:
	movzbl	(%rax), %edx
	addq	$3, %rcx
	addq	$1, %rax
	sall	$2, %edx
	movslq	%edx, %rdx
	movzbl	608(%rsp,%rdx), %r9d
	movb	%r9b, -3(%rcx)
	movzbl	609(%rsp,%rdx), %r9d
	movzbl	610(%rsp,%rdx), %edx
	movb	%r9b, -2(%rcx)
	movb	%dl, -1(%rcx)
	cmpq	%r8, %rcx
	jne	.L3651
.L3650:
	movq	%rsi, %rcx
	call	free
	movq	%rdi, 24(%r14)
.L3643:
	movq	16(%r14), %rcx
	movl	$1, %r15d
	call	free
	movq	$0, 16(%r14)
	jmp	.L3529
.L3567:
	leaq	.LC113(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3555:
	leaq	.LC107(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3787:
	movl	112(%rsp), %esi
	movl	%ecx, 40(%rsp)
	leaq	24(%r14), %rdx
	movq	%rax, %rcx
	movl	%r9d, 32(%rsp)
	movl	%edi, %r9d
	movl	%r11d, 56(%rsp)
	movl	%r10d, 48(%rsp)
	movl	%esi, 64(%rsp)
	call	_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii.isra.36
	testl	%eax, %eax
	je	.L3762
	jmp	.L3613
.L3560:
	leaq	.LC111(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3786:
	cmpl	$3, 5888(%rsp)
	je	.L3608
	cmpb	$0, 103(%rsp)
	je	.L3609
	jmp	.L3608
.L3772:
	leaq	.LC104(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3768:
	movl	%eax, %esi
	shrl	$24, %eax
	movb	%al, _ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	movl	%esi, %eax
	shrl	$16, %eax
	movb	%sil, 3+_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	movb	%al, 1+_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	movl	%esi, %eax
	movb	%ah, 2+_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	leaq	_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3770:
	movzbl	103(%rsp), %eax
	movl	$1, %r15d
	movl	%eax, 8(%rbx)
	jmp	.L3529
.L3778:
	leaq	.LC114(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3773:
	leaq	.LC105(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3591:
	leaq	.LC116(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3775:
	leaq	.LC108(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3771:
	leaq	.LC119(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3605:
	movq	1664(%rsp), %rcx
	call	free
.L3763:
	movq	$0, 16(%r14)
	jmp	.L3529
.L3777:
	leaq	.LC110(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3776:
	leaq	.LC109(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3780:
	leaq	.LC117(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3649:
	testl	%ebx, %ebx
	je	.L3650
	leal	-1(%rbx), %eax
	movq	%rsi, %r8
	movq	%rdi, %rcx
	leaq	1(%rsi,%rax), %r9
.L3652:
	movzbl	(%r8), %eax
	addq	$1, %r8
	addq	$4, %rcx
	sall	$2, %eax
	cltq
	movzbl	608(%rsp,%rax), %edx
	movb	%dl, -4(%rcx)
	movzbl	609(%rsp,%rax), %edx
	movb	%dl, -3(%rcx)
	movzbl	610(%rsp,%rax), %edx
	movzbl	611(%rsp,%rax), %eax
	movb	%dl, -2(%rcx)
	movb	%al, -1(%rcx)
	cmpq	%r8, %r9
	jne	.L3652
	jmp	.L3650
.L3644:
	movl	5888(%rsp), %eax
	movl	%eax, 12(%rbx)
	movl	%eax, %ebp
	jmp	.L3645
.L3792:
	testl	%eax, %eax
	je	.L3622
	leaq	.LC3(%rip), %rdx
	movl	$4569, %r8d
	leaq	.LC125(%rip), %rcx
	call	_assert
.L3622:
	cmpl	$2, %ebp
	je	.L3795
	testl	%edi, %edi
	je	.L3620
	leal	-1(%rdi), %eax
	movzwl	506(%rsp), %edx
	movzwl	508(%rsp), %r8d
	leaq	8(%rsi,%rax,8), %rax
	movzwl	510(%rsp), %ecx
	jmp	.L3627
.L3626:
	addq	$8, %rsi
	cmpq	%rax, %rsi
	je	.L3620
.L3627:
	cmpw	%dx, (%rsi)
	jne	.L3626
	cmpw	%r8w, 2(%rsi)
	jne	.L3626
	cmpw	%cx, 4(%rsi)
	jne	.L3626
	movw	$0, 6(%rsi)
	jmp	.L3626
.L3790:
	movl	$4, 8(%rbx)
	movl	$1, %r15d
	jmp	.L3529
.L3791:
	leaq	.LC115(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3529
.L3789:
	movq	80(%rsp), %rcx
	movl	%eax, %r15d
	call	free
	jmp	.L3529
.L3794:
	movq	(%r14), %rax
	movq	24(%r14), %rsi
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	12(%rax), %eax
	cmpl	$3, %eax
	je	.L3796
	cmpl	$4, %eax
	je	.L3637
	leaq	.LC3(%rip), %rdx
	movl	$4650, %r8d
	leaq	.LC127(%rip), %rcx
	call	_assert
.L3637:
	cmpl	$0, _ZL27stbi__unpremultiply_on_load(%rip)
	je	.L3638
	testl	%edi, %edi
	je	.L3634
	leal	-1(%rdi), %eax
	leaq	4(%rsi,%rax,4), %r9
.L3639:
	movzbl	3(%rsi), %r10d
	movzbl	(%rsi), %r8d
	movzbl	2(%rsi), %ecx
	testb	%r10b, %r10b
	je	.L3640
	movzbl	1(%rsi), %eax
	addq	$4, %rsi
	imull	$255, %eax, %eax
	cltd
	idivl	%r10d
	movb	%al, -3(%rsi)
	movzbl	%r8b, %eax
	imull	$255, %eax, %eax
	cltd
	idivl	%r10d
	movb	%al, -2(%rsi)
	movzbl	%cl, %eax
	imull	$255, %eax, %eax
	cltd
	idivl	%r10d
	movb	%al, -4(%rsi)
	cmpq	%r9, %rsi
	jne	.L3639
	jmp	.L3634
.L3795:
	testl	%edi, %edi
	je	.L3620
	movzwl	506(%rsp), %r8d
	leal	-1(%rdi), %eax
	cmpl	$7, %eax
	jbe	.L3666
	movl	%eax, %r10d
	movd	%r8d, %xmm0
	xorl	%r9d, %r9d
	pxor	%xmm4, %xmm4
	movdqa	.LC126(%rip), %xmm5
	leaq	2(%rsi), %rdx
	shrl	$3, %r10d
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm1
.L3625:
	movdqu	-2(%rdx), %xmm0
	addl	$1, %r9d
	addq	$32, %rdx
	movdqu	-18(%rdx), %xmm3
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm0
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm3
	punpcklwd	%xmm3, %xmm0
	pcmpeqw	%xmm1, %xmm0
	movdqa	%xmm4, %xmm2
	pandn	%xmm5, %xmm0
	psubw	%xmm0, %xmm2
	pextrw	$0, %xmm2, %ecx
	movw	%cx, -32(%rdx)
	pextrw	$1, %xmm2, %ecx
	movw	%cx, -28(%rdx)
	pextrw	$2, %xmm2, %ecx
	movw	%cx, -24(%rdx)
	pextrw	$3, %xmm2, %ecx
	movw	%cx, -20(%rdx)
	pextrw	$4, %xmm2, %ecx
	movw	%cx, -16(%rdx)
	pextrw	$5, %xmm2, %ecx
	movw	%cx, -12(%rdx)
	pextrw	$6, %xmm2, %ecx
	movw	%cx, -8(%rdx)
	pextrw	$7, %xmm2, %ecx
	movw	%cx, -4(%rdx)
	cmpl	%r9d, %r10d
	ja	.L3625
	andl	$-8, %eax
	movl	%eax, %edx
	leaq	(%rsi,%rdx,4), %rsi
.L3624:
	xorl	%edx, %edx
	cmpw	%r8w, (%rsi)
	setne	%dl
	negl	%edx
	movw	%dx, 2(%rsi)
	leal	1(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	xorl	%edx, %edx
	cmpw	%r8w, 4(%rsi)
	setne	%dl
	negl	%edx
	movw	%dx, 6(%rsi)
	leal	2(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	xorl	%edx, %edx
	cmpw	%r8w, 8(%rsi)
	setne	%dl
	negl	%edx
	movw	%dx, 10(%rsi)
	leal	3(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	xorl	%edx, %edx
	cmpw	%r8w, 12(%rsi)
	setne	%dl
	negl	%edx
	movw	%dx, 14(%rsi)
	leal	4(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	xorl	%edx, %edx
	cmpw	%r8w, 16(%rsi)
	setne	%dl
	negl	%edx
	movw	%dx, 18(%rsi)
	leal	5(%rax), %edx
	cmpl	%edi, %edx
	jnb	.L3620
	xorl	%edx, %edx
	cmpw	%r8w, 20(%rsi)
	setne	%dl
	negl	%edx
	movw	%dx, 22(%rsi)
	leal	6(%rax), %edx
	cmpl	%edx, %edi
	jbe	.L3620
	xorl	%edx, %edx
	cmpw	%r8w, 24(%rsi)
	setne	%dl
	addl	$7, %eax
	negl	%edx
	cmpl	%eax, %edi
	movw	%dx, 26(%rsi)
	jbe	.L3620
	xorl	%eax, %eax
	cmpw	%r8w, 28(%rsi)
	setne	%al
	negl	%eax
	movw	%ax, 30(%rsi)
	jmp	.L3620
.L3640:
	movb	%r8b, 2(%rsi)
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	cmpq	%r9, %rsi
	jne	.L3639
	jmp	.L3634
.L3638:
	testl	%edi, %edi
	je	.L3634
	leal	-1(%rdi), %eax
	leaq	4(%rsi,%rax,4), %rax
.L3642:
	movzbl	(%rsi), %edx
	addq	$4, %rsi
	movzbl	-2(%rsi), %ecx
	movb	%dl, -2(%rsi)
	movb	%cl, -4(%rsi)
	cmpq	%rax, %rsi
	jne	.L3642
	jmp	.L3634
.L3796:
	testl	%edi, %edi
	je	.L3634
	leal	-1(%rdi), %eax
	addq	$1, %rax
	leaq	(%rax,%rax,2), %rax
	addq	%rsi, %rax
.L3636:
	movzbl	(%rsi), %edx
	addq	$3, %rsi
	movzbl	-1(%rsi), %ecx
	movb	%dl, -1(%rsi)
	movb	%cl, -3(%rsi)
	cmpq	%rax, %rsi
	jne	.L3636
	jmp	.L3634
.L3666:
	xorl	%eax, %eax
	jmp	.L3624
.L3667:
	xorl	%eax, %eax
	jmp	.L3630
	.seh_endproc
	.section .rdata,"dr"
.LC128:
	.ascii "not GIF\0"
.LC129:
	.ascii "\0"
	.text
	.p2align 4,,15
	.def	_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii.part.9;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii.part.9
_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii.part.9:
.LFB8020:
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
	.seh_endprologue
	movq	184(%rcx), %rax
	cmpq	192(%rcx), %rax
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%r8, %r12
	movl	%r9d, %esi
	jb	.L3825
	movl	48(%rcx), %eax
	testl	%eax, %eax
	je	.L3803
	leaq	56(%rcx), %rbp
	movl	52(%rbx), %r8d
	movq	40(%rcx), %rcx
	movq	%rbp, %rdx
	call	*16(%rbx)
	leaq	57(%rbx), %rcx
	testl	%eax, %eax
	jne	.L3802
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rcx, 192(%rbx)
	movq	%rcx, 184(%rbx)
.L3803:
	leaq	.LC128(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L3797:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L3825:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rcx)
	movzbl	(%rax), %edx
.L3799:
	cmpb	$97, %dl
	jne	.L3803
	leaq	.LC129(%rip), %rax
	movq	%rbx, %rcx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, (%rdi)
	call	_ZL13stbi__get16leP13stbi__context
	movl	%eax, 4(%rdi)
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L3826
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L3805
	leaq	56(%rbx), %rbp
	movq	40(%rbx), %rcx
	movq	%rbp, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	leaq	57(%rbx), %rdx
	testl	%eax, %eax
	jne	.L3806
	movl	$0, 48(%rbx)
	movq	%rdx, %rbp
	movb	$0, 56(%rbx)
.L3807:
	movq	%rbp, 192(%rbx)
	movq	%rdx, 184(%rbx)
.L3805:
	movl	%eax, 24(%rdi)
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L3827
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L3809
	leaq	56(%rbx), %rbp
	movq	40(%rbx), %rcx
	movq	%rbp, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	leaq	57(%rbx), %rdx
	testl	%eax, %eax
	jne	.L3810
	movl	$0, 48(%rbx)
	movq	%rdx, %rbp
	movb	$0, 56(%rbx)
.L3811:
	movq	%rbp, 192(%rbx)
	movq	%rdx, 184(%rbx)
.L3809:
	movl	%eax, 28(%rdi)
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	testq	%r12, %r12
	movl	$-1, 36(%rdi)
	movzbl	%al, %eax
	movl	%eax, 32(%rdi)
	je	.L3812
	movl	$4, (%r12)
.L3812:
	testl	%esi, %esi
	movl	%esi, %eax
	jne	.L3797
	movl	24(%rdi), %ecx
	movl	$1, %eax
	testb	$-128, %cl
	je	.L3797
	andl	$7, %ecx
	movl	$2, %r8d
	movl	$-1, %r9d
	movl	%eax, 44(%rsp)
	leaq	48(%rdi), %rdx
	sall	%cl, %r8d
	movq	%rbx, %rcx
	call	_ZL26stbi__gif_parse_colortableP13stbi__contextPA4_hii
	movl	44(%rsp), %eax
	jmp	.L3797
	.p2align 4,,10
.L3802:
	cltq
	movzbl	56(%rbx), %edx
	movq	%rcx, 184(%rbx)
	addq	%rax, %rbp
	movq	%rbp, 192(%rbx)
	jmp	.L3799
	.p2align 4,,10
.L3826:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	jmp	.L3805
	.p2align 4,,10
.L3827:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	jmp	.L3809
	.p2align 4,,10
.L3806:
	cltq
	addq	%rax, %rbp
	movzbl	56(%rbx), %eax
	jmp	.L3807
	.p2align 4,,10
.L3810:
	cltq
	addq	%rax, %rbp
	movzbl	56(%rbx), %eax
	jmp	.L3811
	.seh_endproc
	.section .rdata,"dr"
.LC130:
	.ascii "unknown BMP\0"
.LC131:
	.ascii "bad BMP\0"
.LC132:
	.ascii "monochrome\0"
.LC133:
	.ascii "BMP RLE\0"
	.text
	.p2align 4,,15
	.def	_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data.part.8;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data.part.8
_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data.part.8:
.LFB8019:
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %esi
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	sall	$16, %eax
	addl	%esi, %eax
	movl	%eax, 4(%rdi)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %esi
	call	_ZL13stbi__get16leP13stbi__context
	pxor	%xmm0, %xmm0
	movups	%xmm0, 12(%rdi)
	sall	$16, %eax
	addl	%eax, %esi
	movl	%esi, %ebp
	movl	%esi, 8(%rdi)
	andl	$-17, %ebp
	cmpl	$12, %esi
	je	.L3829
	cmpl	$40, %ebp
	je	.L3829
	cmpl	$108, %ebp
	jne	.L3859
.L3830:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %r12d
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	sall	$16, %eax
	addl	%r12d, %eax
	movl	%eax, (%rbx)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %r12d
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	sall	$16, %eax
	addl	%r12d, %eax
	movl	%eax, 4(%rbx)
	call	_ZL13stbi__get16leP13stbi__context
	cmpl	$1, %eax
	jne	.L3842
.L3833:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	cmpl	$1, %eax
	movl	%eax, (%rdi)
	je	.L3860
	cmpl	$12, %esi
	je	.L3858
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %r12d
	call	_ZL13stbi__get16leP13stbi__context
	sall	$16, %eax
	addl	%eax, %r12d
	leal	-1(%r12), %eax
	cmpl	$1, %eax
	jbe	.L3861
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	cmpl	$40, %ebp
	jne	.L3837
	cmpl	$56, %esi
	je	.L3862
.L3838:
	movl	(%rdi), %eax
	leal	-16(%rax), %edx
	andl	$-17, %edx
	jne	.L3858
	testl	%r12d, %r12d
	je	.L3863
	cmpl	$3, %r12d
	jne	.L3842
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 12(%rdi)
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 16(%rdi)
	call	_ZL13stbi__get32leP13stbi__context
	movl	16(%rdi), %edx
	cmpl	%edx, 12(%rdi)
	movl	%eax, 20(%rdi)
	jne	.L3858
	cmpl	%edx, %eax
	je	.L3842
	.p2align 4,,10
.L3858:
	movl	$1, %eax
.L3828:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L3829:
	cmpl	$12, %esi
	jne	.L3830
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, (%rbx)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 4(%rbx)
	call	_ZL13stbi__get16leP13stbi__context
	cmpl	$1, %eax
	je	.L3833
.L3842:
	leaq	.LC131(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L3837:
	cmpl	$108, %ebp
	jne	.L3842
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 12(%rdi)
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 16(%rdi)
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 20(%rdi)
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 24(%rdi)
	movl	$12, %edi
	call	_ZL13stbi__get32leP13stbi__context
	.p2align 4,,10
.L3844:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	subl	$1, %edi
	jne	.L3844
	cmpl	$124, %esi
	jne	.L3858
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	jmp	.L3858
	.p2align 4,,10
.L3863:
	cmpl	$32, %eax
	je	.L3864
	movabsq	$4260607589376, %rax
	movl	$31, 20(%rdi)
	movq	%rax, 12(%rdi)
	movl	$1, %eax
	jmp	.L3828
	.p2align 4,,10
.L3859:
	leaq	.LC130(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3828
	.p2align 4,,10
.L3861:
	leaq	.LC133(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3828
	.p2align 4,,10
.L3860:
	leaq	.LC132(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3828
	.p2align 4,,10
.L3862:
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	jmp	.L3838
.L3864:
	movdqa	.LC134(%rip), %xmm0
	movl	$0, 28(%rdi)
	movl	$1, %eax
	movups	%xmm0, 12(%rdi)
	jmp	.L3828
	.seh_endproc
	.section .rdata,"dr"
.LC135:
	.ascii "not BMP\0"
.LC136:
	.ascii "invalid\0"
.LC137:
	.ascii "bad bpp\0"
.LC138:
	.ascii "bad masks\0"
	.text
	.p2align 4,,15
	.def	_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.28;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.28
_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.28:
.LFB8039:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$1208, %rsp
	.seh_stackalloc	1208
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, 1288(%rsp)
	movq	%r8, 1296(%rsp)
	movq	%r9, 1304(%rsp)
	movl	$255, 172(%rsp)
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$66, %al
	jne	.L3868
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$77, %al
	jne	.L3868
	leaq	144(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data.part.8
	testq	%rax, %rax
	je	.L4050
	movl	4(%rbx), %edi
	movl	144(%rsp), %edx
	movl	%edi, %eax
	movl	%edi, 124(%rsp)
	sarl	$31, %eax
	xorl	%eax, %edi
	movl	%edi, %ebp
	xorl	%edi, %edi
	subl	%eax, %ebp
	movl	156(%rsp), %eax
	movl	%ebp, 4(%rbx)
	movl	%eax, 68(%rsp)
	movl	160(%rsp), %eax
	movl	%eax, 72(%rsp)
	movl	164(%rsp), %eax
	movl	%eax, 76(%rsp)
	movl	168(%rsp), %eax
	movl	%eax, 52(%rsp)
	movl	172(%rsp), %eax
	movl	%eax, 56(%rsp)
	movl	152(%rsp), %eax
	cmpl	$12, %eax
	je	.L4051
	cmpl	$15, %edx
	jle	.L4052
.L3871:
	movl	52(%rsp), %r8d
	xorl	%esi, %esi
	movl	(%rbx), %r12d
	testl	%r8d, %r8d
	movl	%ebp, %r8d
	setne	%sil
	movl	%r12d, %edx
	addl	$3, %esi
	cmpl	$3, 1312(%rsp)
	movl	%esi, 8(%rbx)
	cmovge	1312(%rsp), %esi
	xorl	%r9d, %r9d
	movl	%esi, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L4053
	xorl	%r9d, %r9d
	movl	%r12d, %edx
	movl	%esi, %ecx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L4054
	movl	144(%rsp), %eax
	cmpl	$15, %eax
	jg	.L3876
	testl	%edi, %edi
	je	.L4004
	cmpl	$256, %edi
	jg	.L4004
	testl	%edi, %edi
	jle	.L3879
	leaq	176(%rsp), %r13
	movl	%esi, 48(%rsp)
	leal	-1(%rdi), %eax
	movq	%r13, %rsi
	leaq	180(%rsp), %rbp
	leaq	0(%rbp,%rax,4), %r15
	leaq	57(%rbx), %r12
	jmp	.L3880
	.p2align 4,,10
.L4057:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpq	%r15, %rbp
	movb	$-1, 3(%rsi)
	movq	%rbp, %rsi
	je	.L4055
.L3896:
	addq	$4, %rbp
.L3880:
	movq	184(%rbx), %rdx
	movq	192(%rbx), %rax
	cmpq	%rax, %rdx
	jb	.L4056
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L3883
	leaq	56(%rbx), %r13
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r13, %rdx
	call	*16(%rbx)
	movq	%r12, %rcx
	testl	%eax, %eax
	jne	.L3884
	movl	$0, 48(%rbx)
	movq	%r12, %rax
	xorl	%edx, %edx
	movb	$0, 56(%rbx)
.L3885:
	movq	%rax, 192(%rbx)
	movq	%r12, 184(%rbx)
.L3882:
	cmpq	%rax, %rcx
	movb	%dl, 2(%rsi)
	jnb	.L3886
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rcx), %ecx
	cmpq	%rax, %rdx
	movb	%cl, 1(%rsi)
	jnb	.L3891
.L4065:
	leaq	1(%rdx), %rax
	movq	%rax, 184(%rbx)
	movzbl	(%rdx), %eax
.L3892:
	cmpl	$12, 152(%rsp)
	movb	%al, (%rsi)
	jne	.L4057
	cmpq	%rbp, %r15
	movb	$-1, 3(%rsi)
	movq	%rbp, %rsi
	jne	.L3896
	movl	148(%rsp), %eax
	movl	48(%rsp), %esi
	leal	-26(%rax), %edx
	movl	$3, %eax
	imull	%eax, %edi
	subl	%edi, %edx
	jns	.L3899
.L4066:
	movq	192(%rbx), %rax
	movq	%rax, 184(%rbx)
	movl	144(%rsp), %eax
	cmpl	$4, %eax
	je	.L4058
.L3901:
	cmpl	$8, %eax
	jne	.L3903
	movl	(%rbx), %r9d
	movl	%r9d, %r12d
.L3902:
	movl	4(%rbx), %eax
	negl	%r12d
	andl	$3, %r12d
	movl	%r12d, 48(%rsp)
	testl	%eax, %eax
	jle	.L3904
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	movl	%esi, %r13d
	leaq	57(%rbx), %rdi
	.p2align 4,,10
.L3921:
	testl	%r9d, %r9d
	jle	.L3905
	xorl	%esi, %esi
	.p2align 4,,10
.L3906:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L4059
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L3988
	leaq	56(%rbx), %r12
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r12, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3909
	movl	$0, 48(%rbx)
	movq	%rdi, %r12
	xorl	%edx, %edx
	movb	$0, 56(%rbx)
.L3910:
	movq	%r12, 192(%rbx)
	movq	%rdi, 184(%rbx)
.L3908:
	xorl	%ecx, %ecx
	cmpl	$4, 144(%rsp)
	jne	.L3911
	movl	%edx, %ecx
	sarl	$4, %eax
	andl	$15, %ecx
.L3911:
	movslq	%eax, %rdx
	movslq	%r15d, %r8
	cmpl	$4, %r13d
	movzbl	176(%rsp,%rdx,4), %r9d
	leal	1(%r15), %eax
	leal	3(%r15), %r12d
	cltq
	movb	%r9b, (%r14,%r8)
	movzbl	177(%rsp,%rdx,4), %r8d
	movzbl	178(%rsp,%rdx,4), %edx
	movb	%r8b, (%r14,%rax)
	leal	2(%r15), %eax
	cltq
	movb	%dl, (%r14,%rax)
	jne	.L3912
	movslq	%r12d, %r12
	movb	$-1, (%r14,%r12)
	leal	4(%r15), %r12d
.L3912:
	leal	1(%rsi), %eax
	cmpl	%eax, (%rbx)
	je	.L3990
	cmpl	$8, 144(%rsp)
	je	.L4060
.L3913:
	movslq	%ecx, %rcx
	movslq	%r12d, %rax
	cmpl	$4, %r13d
	movzbl	176(%rsp,%rcx,4), %edx
	leal	3(%r12), %r15d
	movb	%dl, (%r14,%rax)
	movzbl	177(%rsp,%rcx,4), %edx
	leal	1(%r12), %eax
	cltq
	movb	%dl, (%r14,%rax)
	movzbl	178(%rsp,%rcx,4), %eax
	leal	2(%r12), %edx
	movslq	%edx, %rdx
	movb	%al, (%r14,%rdx)
	je	.L4061
	addl	$2, %esi
	cmpl	%esi, (%rbx)
	jg	.L3906
.L3905:
	movl	48(%rsp), %edx
	movq	%rbx, %rcx
	addl	$1, %ebp
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movl	4(%rbx), %eax
	cmpl	%ebp, %eax
	jle	.L4062
	movl	(%rbx), %r9d
	jmp	.L3921
	.p2align 4,,10
.L3876:
	movl	148(%rsp), %edi
	leal	-14(%rdi), %edx
	subl	152(%rsp), %edx
	jns	.L3922
	movq	192(%rbx), %rdx
	cmpl	$24, %eax
	movq	%rdx, 184(%rbx)
	je	.L4063
.L3924:
	cmpl	$16, %eax
	je	.L4064
	cmpl	$32, %eax
	jne	.L3993
	cmpl	$255, 76(%rsp)
	jne	.L3993
	cmpl	$65280, 72(%rsp)
	jne	.L3993
	cmpl	$16711680, 68(%rsp)
	jne	.L3993
	cmpl	$-16777216, 52(%rsp)
	jne	.L3993
	movl	(%rbx), %r9d
	movl	$0, 116(%rsp)
	movl	$2, 64(%rsp)
	jmp	.L4048
	.p2align 4,,10
.L4052:
	movl	148(%rsp), %esi
	leal	-14(%rsi), %edi
	subl	%eax, %edi
	sarl	$2, %edi
	jmp	.L3871
.L3883:
	movb	$0, 2(%rsi)
	.p2align 4,,10
.L3886:
	movl	48(%rbx), %edx
	testl	%edx, %edx
	je	.L3888
	leaq	56(%rbx), %r13
	movq	40(%rbx), %rcx
	movq	%r13, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	movq	%r12, %rdx
	testl	%eax, %eax
	jne	.L3889
	movl	$0, 48(%rbx)
	movq	%r12, %rax
	xorl	%ecx, %ecx
	movb	$0, 56(%rbx)
.L3890:
	cmpq	%rax, %rdx
	movq	%rax, 192(%rbx)
	movq	%r12, 184(%rbx)
	movb	%cl, 1(%rsi)
	jb	.L4065
.L3891:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L3986
	leaq	56(%rbx), %r13
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r13, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3893
	movl	$0, 48(%rbx)
	movq	%r12, %r13
	movb	$0, 56(%rbx)
.L3894:
	movq	%r13, 192(%rbx)
	movq	%r12, 184(%rbx)
	jmp	.L3892
	.p2align 4,,10
.L4056:
	leaq	1(%rdx), %rcx
	movq	%rcx, 184(%rbx)
	movzbl	(%rdx), %edx
	jmp	.L3882
	.p2align 4,,10
.L3884:
	cltq
	movzbl	56(%rbx), %edx
	addq	%r13, %rax
	jmp	.L3885
	.p2align 4,,10
.L3889:
	cltq
	movzbl	56(%rbx), %ecx
	addq	%r13, %rax
	jmp	.L3890
	.p2align 4,,10
.L3893:
	cltq
	addq	%rax, %r13
	movzbl	56(%rbx), %eax
	jmp	.L3894
	.p2align 4,,10
.L3868:
	leaq	.LC135(%rip), %rax
	xorl	%r14d, %r14d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L3865:
	movq	%r14, %rax
	addq	$1208, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L4051:
	cmpl	$23, %edx
	jg	.L3871
	movl	148(%rsp), %eax
	movl	$1431655766, %edx
	leal	-38(%rax), %ecx
	movl	%ecx, %eax
	sarl	$31, %ecx
	imull	%edx
	movl	%edx, %edi
	subl	%ecx, %edi
	jmp	.L3871
.L4055:
	movl	48(%rsp), %esi
.L3879:
	movl	148(%rsp), %edx
	movl	152(%rsp), %eax
	subl	$14, %edx
	subl	%eax, %edx
	cmpl	$12, %eax
	setne	%al
	movzbl	%al, %eax
	addl	$3, %eax
	imull	%eax, %edi
	subl	%edi, %edx
	js	.L4066
.L3899:
	movq	%rbx, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movl	144(%rsp), %eax
	cmpl	$4, %eax
	jne	.L3901
.L4058:
	movl	(%rbx), %r9d
	leal	1(%r9), %r12d
	shrl	%r12d
	jmp	.L3902
.L4064:
	movl	(%rbx), %eax
	addl	%eax, %eax
	negl	%eax
	andl	$3, %eax
	movl	%eax, 116(%rsp)
.L3927:
	movl	68(%rsp), %eax
	testl	%eax, %eax
	movl	72(%rsp), %eax
	sete	%dl
	testl	%eax, %eax
	sete	%al
	orb	%al, %dl
	jne	.L4005
	movl	76(%rsp), %eax
	testl	%eax, %eax
	je	.L4005
	movl	68(%rsp), %edi
	movl	%edi, %ecx
	call	_ZL14stbi__high_bitj
	movl	72(%rsp), %r11d
	subl	$7, %eax
	movl	%eax, 80(%rsp)
	movl	%edi, %eax
	andl	$1431655765, %edi
	shrl	%eax
	andl	$1431655765, %eax
	movl	%r11d, %ecx
	addl	%edi, %eax
	movl	%eax, %edx
	shrl	$2, %eax
	andl	$858993459, %eax
	andl	$858993459, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	shrl	$4, %eax
	addl	%edx, %eax
	andl	$252645135, %eax
	movl	%eax, %edx
	shrl	$8, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$16, %edx
	addl	%edx, %eax
	movzbl	%al, %edi
	call	_ZL14stbi__high_bitj
	subl	$7, %eax
	movl	%r11d, %edx
	movl	%eax, 84(%rsp)
	movl	%r11d, %eax
	andl	$1431655765, %edx
	movl	76(%rsp), %r11d
	shrl	%eax
	andl	$1431655765, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$2, %eax
	movl	%r11d, %ecx
	andl	$858993459, %eax
	andl	$858993459, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	shrl	$4, %eax
	addl	%edx, %eax
	andl	$252645135, %eax
	movl	%eax, %edx
	shrl	$8, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$16, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, 128(%rsp)
	call	_ZL14stbi__high_bitj
	subl	$7, %eax
	movl	%r11d, %edx
	movl	%eax, 88(%rsp)
	movl	%r11d, %eax
	andl	$1431655765, %edx
	movl	52(%rsp), %r11d
	shrl	%eax
	andl	$1431655765, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$2, %eax
	movl	%r11d, %ecx
	andl	$858993459, %eax
	andl	$858993459, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	shrl	$4, %eax
	addl	%edx, %eax
	andl	$252645135, %eax
	movl	%eax, %edx
	shrl	$8, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$16, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, 132(%rsp)
	call	_ZL14stbi__high_bitj
	movl	(%rbx), %r9d
	movl	$0, 64(%rsp)
	subl	$7, %eax
	movl	%r11d, %edx
	movl	%eax, 120(%rsp)
	movl	%r11d, %eax
	andl	$1431655765, %edx
	shrl	%eax
	andl	$1431655765, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$2, %eax
	andl	$858993459, %eax
	andl	$858993459, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	shrl	$4, %eax
	addl	%edx, %eax
	andl	$252645135, %eax
	movl	%eax, %edx
	shrl	$8, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$16, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, 112(%rsp)
.L3925:
	movl	4(%rbx), %eax
	testl	%eax, %eax
	jle	.L3904
	leaq	57(%rbx), %rax
	xorl	%ebp, %ebp
	movq	%r14, %r13
	movl	%esi, 48(%rsp)
	movq	%rax, 136(%rsp)
	movl	64(%rsp), %eax
	movl	%ebp, %r14d
	movl	$0, 108(%rsp)
	testl	%eax, %eax
	je	.L3930
	.p2align 4,,10
.L4074:
	testl	%r9d, %r9d
	jle	.L3931
	xorl	%ebp, %ebp
	movl	%edi, 92(%rsp)
	movl	56(%rsp), %esi
	movq	%r13, %r12
	movq	136(%rsp), %r15
	jmp	.L3932
	.p2align 4,,10
.L3933:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L3994
	leaq	56(%rbx), %r10
	movq	40(%rbx), %rcx
	movq	%r10, %rdx
	movq	%r10, 56(%rsp)
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	movq	56(%rsp), %r10
	testl	%eax, %eax
	jne	.L3935
	movl	$0, 48(%rbx)
	movq	%r15, %r10
	movb	$0, 56(%rbx)
.L3936:
	movq	%r10, 192(%rbx)
	movq	%r15, 184(%rbx)
.L3934:
	movb	%al, 0(%r13)
	movq	184(%rbx), %rax
	leaq	1(%r12,%rdi), %r13
	cmpq	192(%rbx), %rax
	jb	.L4067
	movl	48(%rbx), %r11d
	testl	%r11d, %r11d
	je	.L3995
	leaq	56(%rbx), %r10
	movq	40(%rbx), %rcx
	movq	%r10, %rdx
	movq	%r10, 56(%rsp)
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	movq	56(%rsp), %r10
	testl	%eax, %eax
	jne	.L3939
	movl	$0, 48(%rbx)
	movq	%r15, %r10
	movb	$0, 56(%rbx)
.L3940:
	movq	%r10, 192(%rbx)
	movq	%r15, 184(%rbx)
.L3938:
	movb	%al, 0(%r13)
	addq	%r12, %rdi
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L4068
	movl	48(%rbx), %r10d
	testl	%r10d, %r10d
	je	.L3996
	leaq	56(%rbx), %r13
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r13, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3943
	movl	$0, 48(%rbx)
	movq	%r15, %r10
	movb	$0, 56(%rbx)
.L3944:
	movq	%r10, 192(%rbx)
	movq	%r15, 184(%rbx)
.L3942:
	cmpl	$2, 64(%rsp)
	movb	%al, (%rdi)
	leal	3(%r14), %edi
	movl	$255, %edx
	movl	$-1, %eax
	je	.L4069
.L3945:
	orl	%edx, %esi
	cmpl	$4, 48(%rsp)
	je	.L4070
	addl	$1, %ebp
	cmpl	%ebp, (%rbx)
	jle	.L4071
.L3947:
	movl	%edi, %r14d
.L3932:
	movq	184(%rbx), %rax
	movslq	%r14d, %rdi
	cmpq	192(%rbx), %rax
	leaq	2(%r12,%rdi), %r13
	jnb	.L3933
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	jmp	.L3934
.L3993:
	movl	$0, 116(%rsp)
	jmp	.L3927
	.p2align 4,,10
.L4059:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	movl	%eax, %edx
	jmp	.L3908
	.p2align 4,,10
.L4061:
	movslq	%r15d, %r15
	addl	$4, %r12d
	addl	$2, %esi
	movb	$-1, (%r14,%r15)
	cmpl	(%rbx), %esi
	movl	%r12d, %r15d
	jl	.L3906
	jmp	.L3905
	.p2align 4,,10
.L3909:
	cltq
	addq	%rax, %r12
	movzbl	56(%rbx), %eax
	movl	%eax, %edx
	jmp	.L3910
	.p2align 4,,10
.L4068:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	jmp	.L3942
	.p2align 4,,10
.L4067:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	jmp	.L3938
	.p2align 4,,10
.L4060:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L4072
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L3913
	leaq	56(%rbx), %r15
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r15, %rdx
	call	*16(%rbx)
	movslq	%eax, %rcx
	testl	%ecx, %ecx
	jne	.L3916
	movl	$0, 48(%rbx)
	movq	%rdi, %r15
	movb	$0, 56(%rbx)
.L3917:
	movq	%r15, 192(%rbx)
	movq	%rdi, 184(%rbx)
	jmp	.L3913
	.p2align 4,,10
.L4078:
	movq	%rbp, %r13
	movl	%r8d, %r14d
.L3931:
	movl	116(%rsp), %edx
	movq	%rbx, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movl	4(%rbx), %eax
	addl	$1, 108(%rsp)
	movl	108(%rsp), %esi
	cmpl	%esi, %eax
	jle	.L4073
	movl	64(%rsp), %eax
	movl	(%rbx), %r9d
	testl	%eax, %eax
	jne	.L4074
.L3930:
	movl	144(%rsp), %eax
	testl	%r9d, %r9d
	movl	%eax, 92(%rsp)
	jle	.L3931
	movl	80(%rsp), %eax
	xorl	%r15d, %r15d
	movq	%r13, %rbp
	movq	%rbx, %rcx
	movl	128(%rsp), %esi
	movl	132(%rsp), %r12d
	negl	%eax
	movl	%eax, 96(%rsp)
	movl	84(%rsp), %eax
	negl	%eax
	movl	%eax, 100(%rsp)
	movl	88(%rsp), %eax
	negl	%eax
	cmpl	$16, 92(%rsp)
	movl	%eax, 104(%rsp)
	je	.L4075
	.p2align 4,,10
.L3949:
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %r13d
	call	_ZL13stbi__get16leP13stbi__context
	sall	$16, %eax
	addl	%r13d, %eax
.L3950:
	movl	68(%rsp), %r8d
	movzbl	96(%rsp), %ecx
	movl	80(%rsp), %r10d
	andl	%eax, %r8d
	movl	%r8d, %edx
	sall	%cl, %edx
	movl	%r10d, %ecx
	sarl	%cl, %r8d
	testl	%r10d, %r10d
	cmovs	%edx, %r8d
	cmpl	$7, %edi
	movl	%r8d, %edx
	jg	.L3953
	movl	%edi, %ecx
	.p2align 4,,10
.L3954:
	movl	%r8d, %r9d
	sarl	%cl, %r9d
	addl	%edi, %ecx
	addl	%r9d, %edx
	cmpl	$7, %ecx
	jle	.L3954
.L3953:
	movl	72(%rsp), %r11d
	leal	1(%r14), %r8d
	movslq	%r14d, %rcx
	movb	%dl, 0(%rbp,%rcx)
	movl	84(%rsp), %r10d
	movzbl	100(%rsp), %ecx
	andl	%eax, %r11d
	movl	%r11d, %edx
	sall	%cl, %edx
	movl	%r10d, %ecx
	sarl	%cl, %r11d
	testl	%r10d, %r10d
	cmovs	%edx, %r11d
	cmpl	$7, %esi
	movl	%r11d, %edx
	jg	.L3957
	movl	%esi, %ecx
	.p2align 4,,10
.L3958:
	movl	%r11d, %r9d
	sarl	%cl, %r9d
	addl	%esi, %ecx
	addl	%r9d, %edx
	cmpl	$7, %ecx
	jle	.L3958
.L3957:
	movzbl	104(%rsp), %ecx
	leal	2(%r14), %r11d
	movslq	%r8d, %r8
	movb	%dl, 0(%rbp,%r8)
	movl	76(%rsp), %r8d
	movl	88(%rsp), %r10d
	andl	%eax, %r8d
	movl	%r8d, %edx
	sall	%cl, %edx
	movl	%r10d, %ecx
	sarl	%cl, %r8d
	testl	%r10d, %r10d
	cmovs	%edx, %r8d
	cmpl	$7, %r12d
	movl	%r8d, %edx
	jg	.L3961
	movl	%r12d, %ecx
	.p2align 4,,10
.L3962:
	movl	%r8d, %r9d
	sarl	%cl, %r9d
	addl	%r12d, %ecx
	addl	%r9d, %edx
	cmpl	$7, %ecx
	jle	.L3962
.L3961:
	movl	52(%rsp), %r9d
	movslq	%r11d, %r11
	movl	$255, %ecx
	movb	%dl, 0(%rbp,%r11)
	leal	3(%r14), %r8d
	movl	$255, %edx
	testl	%r9d, %r9d
	jne	.L4076
.L3963:
	orl	%ecx, 56(%rsp)
	cmpl	$4, 48(%rsp)
	je	.L4077
	addl	$1, %r15d
	cmpl	%r15d, (%rbx)
	jle	.L4078
.L3968:
	cmpl	$16, 92(%rsp)
	movl	%r8d, %r14d
	movq	%rbx, %rcx
	jne	.L3949
.L4075:
	call	_ZL13stbi__get16leP13stbi__context
	jmp	.L3950
	.p2align 4,,10
.L4070:
	movslq	%edi, %rdi
	addl	$4, %r14d
	addl	$1, %ebp
	movb	%al, (%r12,%rdi)
	cmpl	%ebp, (%rbx)
	jle	.L4045
	movl	%r14d, %edi
	jmp	.L3947
	.p2align 4,,10
.L3935:
	cltq
	addq	%rax, %r10
	movzbl	56(%rbx), %eax
	jmp	.L3936
	.p2align 4,,10
.L3939:
	cltq
	addq	%rax, %r10
	movzbl	56(%rbx), %eax
	jmp	.L3940
	.p2align 4,,10
.L3943:
	cltq
	leaq	0(%r13,%rax), %r10
	movzbl	56(%rbx), %eax
	jmp	.L3944
	.p2align 4,,10
.L4069:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	jmp	.L3945
	.p2align 4,,10
.L4072:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %ecx
	jmp	.L3913
	.p2align 4,,10
.L4077:
	movslq	%r8d, %r8
	addl	$4, %r14d
	addl	$1, %r15d
	movb	%dl, 0(%rbp,%r8)
	cmpl	%r15d, (%rbx)
	jle	.L4047
	movl	%r14d, %r8d
	jmp	.L3968
	.p2align 4,,10
.L4076:
	movl	120(%rsp), %edx
	andl	52(%rsp), %eax
	movl	%edx, %ecx
	negl	%ecx
	movl	%eax, %r11d
	sall	%cl, %r11d
	movl	%edx, %ecx
	sarl	%cl, %eax
	testl	%edx, %edx
	movl	%r11d, %edx
	movl	112(%rsp), %r11d
	cmovns	%eax, %edx
	movl	%edx, %eax
	cmpl	$7, %r11d
	movl	%r11d, %ecx
	movl	%r11d, %r10d
	jg	.L4049
	.p2align 4,,10
.L3966:
	movl	%eax, %r9d
	sarl	%cl, %r9d
	addl	%r10d, %ecx
	addl	%r9d, %edx
	cmpl	$7, %ecx
	jle	.L3966
.L4049:
	movl	%edx, %ecx
	jmp	.L3963
	.p2align 4,,10
.L3990:
	movl	%r12d, %r15d
	jmp	.L3905
	.p2align 4,,10
.L3988:
	xorl	%edx, %edx
	jmp	.L3908
.L4062:
	movl	(%rbx), %r9d
	movl	%r13d, %esi
.L3904:
	cmpl	$4, %esi
	jne	.L3971
	movl	56(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L3971
	imull	%r9d, %eax
	leal	-1(,%rax,4), %eax
	testl	%eax, %eax
	js	.L3971
	cltq
	.p2align 4,,10
.L3972:
	movb	$-1, (%r14,%rax)
	subq	$4, %rax
	testl	%eax, %eax
	jns	.L3972
	movl	(%rbx), %r9d
.L3971:
	movl	124(%rsp), %edx
	testl	%edx, %edx
	jle	.L3973
	movl	4(%rbx), %r10d
	cmpl	$1, %r10d
	jle	.L3973
	xorl	%r11d, %r11d
	.p2align 4,,10
.L3976:
	leal	-1(%r10), %eax
	movl	%r9d, %ecx
	movl	%r11d, %r8d
	imull	%esi, %ecx
	subl	%r11d, %eax
	movl	%eax, %edx
	imull	%ecx, %r8d
	imull	%ecx, %edx
	testl	%ecx, %ecx
	jle	.L3974
	leaq	(%r14,%r8), %rcx
	movl	$1, %eax
	addq	%r14, %rdx
	.p2align 4,,10
.L3975:
	movzbl	-1(%rcx,%rax), %r8d
	movzbl	-1(%rdx,%rax), %r9d
	movb	%r9b, -1(%rcx,%rax)
	movb	%r8b, -1(%rdx,%rax)
	movl	(%rbx), %r9d
	movl	%eax, %r8d
	addq	$1, %rax
	movl	%r9d, %r10d
	imull	%esi, %r10d
	cmpl	%r8d, %r10d
	jg	.L3975
	movl	4(%rbx), %r10d
.L3974:
	movl	%r10d, %eax
	addl	$1, %r11d
	sarl	%eax
	cmpl	%r11d, %eax
	jg	.L3976
.L3973:
	movl	1312(%rsp), %eax
	testl	%eax, %eax
	je	.L3982
	cmpl	%esi, 1312(%rsp)
	jne	.L4079
.L3982:
	movq	1288(%rsp), %rax
	movq	1296(%rsp), %rdi
	cmpq	$0, 1304(%rsp)
	movl	%r9d, (%rax)
	movl	4(%rbx), %eax
	movl	%eax, (%rdi)
	je	.L3865
	movl	8(%rbx), %eax
	movq	1304(%rsp), %rdi
	movl	%eax, (%rdi)
	jmp	.L3865
	.p2align 4,,10
.L4071:
	movl	%edi, %r15d
	movl	%esi, 56(%rsp)
	movl	92(%rsp), %edi
	movq	%r12, %r13
	movl	%r15d, %r14d
	jmp	.L3931
	.p2align 4,,10
.L3916:
	addq	%rcx, %r15
	movzbl	56(%rbx), %ecx
	jmp	.L3917
	.p2align 4,,10
.L3996:
	xorl	%eax, %eax
	jmp	.L3942
	.p2align 4,,10
.L3994:
	xorl	%eax, %eax
	jmp	.L3934
	.p2align 4,,10
.L3995:
	xorl	%eax, %eax
	jmp	.L3938
.L4073:
	movl	48(%rsp), %esi
	movq	%r13, %r14
	movl	(%rbx), %r9d
	jmp	.L3904
.L4047:
	movq	%rbp, %r13
	jmp	.L3931
.L4045:
	movl	92(%rsp), %edi
	movl	%esi, 56(%rsp)
	movq	%r12, %r13
	jmp	.L3931
.L3922:
	movq	%rbx, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movl	144(%rsp), %eax
	cmpl	$24, %eax
	jne	.L3924
.L4063:
	movl	(%rbx), %r9d
	movl	$1, 64(%rsp)
	leal	(%r9,%r9,2), %eax
	negl	%eax
	andl	$3, %eax
	movl	%eax, 116(%rsp)
.L4048:
	movl	$0, 112(%rsp)
	xorl	%edi, %edi
	movl	$0, 132(%rsp)
	movl	$0, 128(%rsp)
	movl	$0, 120(%rsp)
	movl	$0, 88(%rsp)
	movl	$0, 84(%rsp)
	movl	$0, 80(%rsp)
	jmp	.L3925
.L4079:
	movl	4(%rbx), %eax
	movq	%r14, %rcx
	movl	%esi, %edx
	movl	1312(%rsp), %r8d
	movl	%eax, 32(%rsp)
	call	_ZL20stbi__convert_formatPhiijj.part.27
	testq	%rax, %rax
	movq	%rax, %r14
	jne	.L4080
.L4050:
	xorl	%r14d, %r14d
	jmp	.L3865
.L4053:
	leaq	.LC78(%rip), %rax
	xorl	%r14d, %r14d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3865
.L3986:
	xorl	%eax, %eax
	jmp	.L3892
.L3888:
	movb	$0, 1(%rsi)
	jmp	.L3891
.L4080:
	movl	(%rbx), %r9d
	jmp	.L3982
.L4054:
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3865
.L4005:
	movq	%r14, %rcx
	call	free
	leaq	.LC138(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4050
.L3903:
	movq	%r14, %rcx
	xorl	%r14d, %r14d
	call	free
	leaq	.LC137(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3865
.L4004:
	movq	%r14, %rcx
	xorl	%r14d, %r14d
	call	free
	leaq	.LC136(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L3865
	.seh_endproc
	.section .rdata,"dr"
.LC139:
	.ascii "PICT\0"
.LC140:
	.ascii "S\200\366"
	.ascii "4\0"
.LC141:
	.ascii "bad req_comp\0"
.LC142:
	.ascii "bad Image Descriptor\0"
.LC143:
	.ascii "missing color table\0"
.LC144:
	.ascii "no clear code\0"
.LC145:
	.ascii "too many codes\0"
.LC146:
	.ascii "illegal code in raster\0"
.LC147:
	.ascii "unknown code\0"
.LC148:
	.ascii "not PSD\0"
.LC149:
	.ascii "wrong version\0"
.LC150:
	.ascii "wrong channel count\0"
.LC151:
	.ascii "unsupported bit depth\0"
.LC152:
	.ascii "wrong color format\0"
.LC155:
	.ascii "bad format\0"
.LC157:
	.ascii "tga_comp == STBI_rgb\0"
.LC158:
	.ascii "bad palette\0"
.LC159:
	.ascii "unknown image type\0"
	.text
	.p2align 4,,15
	.def	_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi
_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:
.LFB835:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$488, %rsp
	.seh_stackalloc	488
	movaps	%xmm6, 400(%rsp)
	.seh_savexmm	%xmm6, 400
	movaps	%xmm7, 416(%rsp)
	.seh_savexmm	%xmm7, 416
	movaps	%xmm8, 432(%rsp)
	.seh_savexmm	%xmm8, 432
	movaps	%xmm9, 448(%rsp)
	.seh_savexmm	%xmm9, 448
	movaps	%xmm10, 464(%rsp)
	.seh_savexmm	%xmm10, 464
	.seh_endprologue
	leaq	_ZL15stbi__idct_simdPhiPs(%rip), %r15
	leaq	_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii(%rip), %r14
	movq	600(%rsp), %rax
	leaq	_ZL28stbi__resample_row_hv_2_simdPhS_S_ii(%rip), %r12
	movq	%rcx, %r13
	movq	$8, (%rax)
	movl	$18568, %ecx
	movl	$0, 8(%rax)
	movq	%rdx, 568(%rsp)
	movq	%r8, 576(%rsp)
	movq	%r9, 584(%rsp)
	call	malloc
	movq	%rax, %rbx
	movq	%r13, (%rax)
	movq	%r15, 18544(%rax)
	movq	%r14, 18552(%rax)
	movq	%r12, 18560(%rax)
	movabsq	$-4294967296, %rax
	movq	%rax, 18504(%rbx)
	movq	184(%r13), %rax
	cmpq	192(%r13), %rax
	movb	$-1, 18472(%rbx)
	jb	.L4941
	movl	48(%r13), %r8d
	testl	%r8d, %r8d
	je	.L4084
	leaq	56(%r13), %rsi
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rsi, %rdx
	call	*16(%r13)
	leaq	57(%r13), %rcx
	testl	%eax, %eax
	jne	.L4085
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
.L4084:
	movq	200(%r13), %rdi
	movq	208(%r13), %rsi
.L4088:
	movq	%rdi, 184(%r13)
	leaq	57(%r13), %r14
	movq	%rbx, %rcx
	leaq	.LC68(%rip), %rax
	movq	%rsi, 192(%r13)
	leaq	_ZZL22stbi__check_png_headerP13stbi__contextE7png_sig(%rip), %r12
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	call	free
	leaq	8(%r12), %rbx
.L4096:
	cmpq	%rsi, %rdi
	jb	.L4942
	movl	48(%r13), %ebp
	testl	%ebp, %ebp
	je	.L4542
	leaq	56(%r13), %rsi
	movq	40(%r13), %rcx
	movq	%r14, %rdi
	movl	52(%r13), %r8d
	movq	%rsi, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L4158
	movl	$0, 48(%r13)
	movq	%r14, %rsi
	movb	$0, 56(%r13)
.L4159:
	movq	%rsi, 192(%r13)
	movq	%r14, 184(%r13)
.L4157:
	cmpb	%al, (%r12)
	jne	.L4943
.L4160:
	addq	$1, %r12
	cmpq	%rbx, %r12
	jne	.L4096
	cmpl	$4, 592(%rsp)
	movq	%r13, 208(%rsp)
	movdqu	200(%r13), %xmm0
	movups	%xmm0, 184(%r13)
	ja	.L4944
	movl	592(%rsp), %r8d
	xorl	%edx, %edx
	leaq	208(%rsp), %rcx
	call	_ZL20stbi__parse_png_fileP9stbi__pngii
	testl	%eax, %eax
	je	.L4543
	movl	240(%rsp), %r8d
	movl	$8, %eax
	movq	600(%rsp), %rdi
	movl	592(%rsp), %r11d
	cmpl	$8, %r8d
	cmovge	%r8d, %eax
	xorl	%ecx, %ecx
	testl	%r11d, %r11d
	movl	%eax, (%rdi)
	movq	232(%rsp), %rax
	movq	$0, 232(%rsp)
	movq	%rax, 56(%rsp)
	movq	208(%rsp), %rax
	jne	.L4166
	movl	(%rax), %r9d
.L4167:
	movq	568(%rsp), %rdi
	cmpq	$0, 584(%rsp)
	movl	%r9d, (%rdi)
	movq	576(%rsp), %rdi
	movl	4(%rax), %edx
	movl	%edx, (%rdi)
	je	.L4165
	movl	8(%rax), %eax
	movq	584(%rsp), %rdi
	movl	%eax, (%rdi)
.L4165:
	call	free
	movq	224(%rsp), %rcx
	call	free
	movq	216(%rsp), %rcx
	call	free
.L4081:
	movq	56(%rsp), %rax
	movaps	400(%rsp), %xmm6
	movaps	416(%rsp), %xmm7
	movaps	432(%rsp), %xmm8
	movaps	448(%rsp), %xmm9
	movaps	464(%rsp), %xmm10
	addq	$488, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L4942:
	leaq	1(%rdi), %rdx
	movq	%rdx, 184(%r13)
	movzbl	(%rdi), %eax
	movq	%rdx, %rdi
	cmpb	%al, (%r12)
	je	.L4160
.L4943:
	leaq	.LC103(%rip), %rax
	movq	208(%r13), %rdx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	200(%r13), %rax
	movq	%rdx, 192(%r13)
	cmpq	%rdx, %rax
	movq	%rax, 184(%r13)
	jb	.L4945
	movl	48(%r13), %r10d
	testl	%r10d, %r10d
	je	.L4171
	leaq	56(%r13), %rbx
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	leaq	57(%r13), %rcx
	testl	%eax, %eax
	jne	.L4172
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
.L4173:
	movq	200(%r13), %rax
	movq	208(%r13), %rdx
.L4171:
	movq	%rax, 184(%r13)
	movq	%rdx, 192(%r13)
.L4175:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$71, %al
	je	.L4946
.L4179:
	movdqu	200(%r13), %xmm0
	leaq	.LC140(%rip), %rsi
	movq	%r13, %rcx
	leaq	4(%rsi), %rbp
	movups	%xmm0, 184(%r13)
	leaq	56(%r13), %r12
	call	_ZL13stbi__get16beP13stbi__context
	movq	%r13, %rcx
	movl	%eax, %ebx
	call	_ZL13stbi__get16beP13stbi__context
	movq	200(%r13), %rcx
	sall	$16, %ebx
	movq	208(%r13), %rdx
	addl	%ebx, %eax
	cmpl	$943870035, %eax
	movq	%rcx, 184(%r13)
	movq	%rdx, 192(%r13)
	je	.L4947
.L4316:
	cmpq	%rdx, %rcx
	jb	.L4948
	movl	48(%r13), %ebx
	testl	%ebx, %ebx
	je	.L4550
	movq	40(%r13), %rcx
	movq	%r12, %rdx
	movl	52(%r13), %r8d
	call	*16(%r13)
	leaq	57(%r13), %rcx
	testl	%eax, %eax
	je	.L4949
	cltq
	leaq	(%r12,%rax), %rdx
	movzbl	56(%r13), %eax
.L4314:
	movq	%rdx, 192(%r13)
	movq	%rcx, 184(%r13)
	jmp	.L4312
	.p2align 4,,10
.L4158:
	cltq
	addq	%rax, %rsi
	movzbl	56(%r13), %eax
	jmp	.L4159
	.p2align 4,,10
.L4542:
	xorl	%eax, %eax
	jmp	.L4157
	.p2align 4,,10
.L4945:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%r13)
	movzbl	(%rax), %edx
.L4170:
	cmpb	$66, %dl
	jne	.L4173
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$77, %al
	je	.L4176
	movdqu	200(%r13), %xmm0
	movups	%xmm0, 184(%r13)
	jmp	.L4175
	.p2align 4,,10
.L4941:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%r13)
	movzbl	(%rax), %edx
.L4083:
	cmpb	$-1, %dl
	jne	.L4084
.L4087:
	movq	(%rbx), %rsi
	movq	184(%rsi), %rax
	cmpq	192(%rsi), %rax
	jb	.L4950
	movl	48(%rsi), %ecx
	testl	%ecx, %ecx
	je	.L4084
	leaq	56(%rsi), %rdi
	movq	40(%rsi), %rcx
	movq	%rdi, %rdx
	movl	52(%rsi), %r8d
	call	*16(%rsi)
	leaq	57(%rsi), %rdx
	testl	%eax, %eax
	jne	.L4093
	movl	$0, 48(%rsi)
	movb	$0, 56(%rsi)
	movq	%rdx, 192(%rsi)
	movq	%rdx, 184(%rsi)
	movq	200(%r13), %rdi
	movq	208(%r13), %rsi
	jmp	.L4088
	.p2align 4,,10
.L4950:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rsi)
	movzbl	(%rax), %ecx
.L4091:
	cmpb	$-1, %cl
	je	.L4087
	cmpb	$-40, %cl
	movq	200(%r13), %rdi
	movq	208(%r13), %rsi
	jne	.L4088
	movq	%rbx, %rcx
	movq	%rdi, 184(%r13)
	movq	%rsi, 192(%r13)
	call	free
	movl	$18568, %ecx
	call	malloc
	movl	$0, 8(%r13)
	movq	%rax, %rbp
	movq	%r13, (%rax)
	movq	%r15, 18544(%rax)
	movq	%r14, 18552(%rax)
	movq	%r12, 18560(%rax)
	movl	592(%rsp), %eax
	cmpl	$4, %eax
	movl	%eax, 80(%rsp)
	ja	.L4951
	movq	%rbp, %rcx
	call	_ZL23stbi__decode_jpeg_imageP10stbi__jpeg
	testl	%eax, %eax
	je	.L4952
	movq	0(%rbp), %rbx
	movl	592(%rsp), %edx
	movl	8(%rbx), %eax
	testl	%edx, %edx
	movl	%eax, 52(%rsp)
	jne	.L4099
	cmpl	$2, %eax
	jle	.L4100
	movl	$3, 80(%rsp)
	movl	$3, 592(%rsp)
.L4099:
	movl	52(%rsp), %edi
	movl	(%rbx), %ecx
	cmpl	$3, %edi
	je	.L4953
.L4101:
	movl	52(%rsp), %r15d
	movb	$0, 96(%rsp)
	testl	%r15d, %r15d
	jle	.L4104
.L4103:
	leaq	18084(%rbp), %r14
	xorl	%r15d, %r15d
	movabsq	$4294967297, %rsi
	leaq	208(%rsp), %r13
	movl	%r15d, %eax
	movq	%rbp, %r15
	movabsq	$8589934593, %rdi
	movl	%eax, %ebp
	movabsq	$4294967298, %r12
	jmp	.L4117
	.p2align 4,,10
.L4112:
	cmpq	%rdi, %rax
	je	.L4954
	cmpq	%r12, %rax
	je	.L4955
	movabsq	$8589934594, %rdx
	cmpq	%rdx, %rax
	je	.L4956
	leaq	_ZL26stbi__resample_row_genericPhS_S_ii(%rip), %rax
	movq	%rax, 0(%r13)
	.p2align 4,,10
.L4113:
	addl	$1, %ebp
	addq	$96, %r14
	addq	$48, %r13
	cmpl	52(%rsp), %ebp
	jge	.L4957
.L4117:
	addl	$3, %ecx
	call	malloc
	testq	%rax, %rax
	movq	%rax, 68(%r14)
	je	.L4958
	movl	18056(%r15), %eax
	cltd
	idivl	(%r14)
	movl	%eax, %r9d
	movl	%eax, 24(%r13)
	movl	18060(%r15), %eax
	cltd
	idivl	4(%r14)
	xorl	%edx, %edx
	movl	%eax, 28(%r13)
	sarl	%eax
	movl	%eax, 36(%r13)
	movl	(%rbx), %ecx
	movl	$0, 40(%r13)
	leal	-1(%rcx,%r9), %eax
	divl	%r9d
	movl	%eax, 32(%r13)
	movq	44(%r14), %rax
	movq	%rax, 16(%r13)
	movq	%rax, 8(%r13)
	movslq	%ebp, %rax
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	movq	232(%rsp,%rax), %rax
	cmpq	%rsi, %rax
	jne	.L4112
	leaq	_ZL14resample_row_1PhS_S_ii(%rip), %rax
	movq	%rax, 0(%r13)
	jmp	.L4113
	.p2align 4,,10
.L4954:
	leaq	_ZL22stbi__resample_row_v_2PhS_S_ii(%rip), %rax
	movq	%rax, 0(%r13)
	jmp	.L4113
	.p2align 4,,10
.L4955:
	leaq	_ZL22stbi__resample_row_h_2PhS_S_ii(%rip), %rax
	movq	%rax, 0(%r13)
	jmp	.L4113
	.p2align 4,,10
.L4956:
	movq	18560(%r15), %rax
	movq	%rax, 0(%r13)
	jmp	.L4113
	.p2align 4,,10
.L4957:
	movq	%r15, %rbp
.L4104:
	movl	%ecx, %edx
	movl	4(%rbx), %r8d
	movl	$1, %r9d
	movl	592(%rsp), %ecx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	movq	0(%rbp), %rax
	je	.L4959
	movl	4(%rax), %r14d
	testl	%r14d, %r14d
	je	.L4119
	movslq	592(%rsp), %rdi
	movl	$0, 72(%rsp)
	movl	$0, 64(%rsp)
	movq	%rdi, 104(%rsp)
	.p2align 4,,10
.L4148:
	movl	52(%rsp), %r13d
	movl	72(%rsp), %edi
	imull	(%rax), %edi
	addq	56(%rsp), %rdi
	testl	%r13d, %r13d
	jle	.L4120
	leaq	208(%rsp), %rbx
	xorl	%r13d, %r13d
	movq	%rdi, 88(%rsp)
	leaq	18112(%rbp), %r14
	leaq	176(%rsp), %r15
.L4125:
	movl	28(%rbx), %edi
	movl	36(%rbx), %esi
	movq	16(%rbx), %r12
	movq	(%rbx), %rax
	movl	%edi, %ecx
	movl	24(%rbx), %r11d
	sarl	%ecx
	movl	32(%rbx), %r9d
	cmpl	%ecx, %esi
	movq	8(%rbx), %r8
	movq	%r12, %rdx
	jge	.L4121
	movq	%r8, %rdx
	movq	%r12, %r8
.L4121:
	addl	$1, %esi
	movq	40(%r14), %rcx
	movl	%r11d, 32(%rsp)
	call	*%rax
	cmpl	%esi, %edi
	movq	%rax, (%r15,%r13,8)
	jle	.L4122
	movl	%esi, 36(%rbx)
.L4123:
	addq	$1, %r13
	addq	$48, %rbx
	addq	$96, %r14
	cmpl	%r13d, 52(%rsp)
	jg	.L4125
	movq	88(%rsp), %rdi
	movq	0(%rbp), %rax
.L4120:
	cmpl	$2, 592(%rsp)
	movl	(%rax), %ecx
	jle	.L4126
	movl	8(%rax), %r8d
	movq	176(%rsp), %rdx
	cmpl	$3, %r8d
	je	.L4960
	cmpl	$4, %r8d
	jne	.L4131
	movl	18508(%rbp), %r10d
	testl	%r10d, %r10d
	je	.L4961
	movl	592(%rsp), %esi
	cmpl	$2, %r10d
	movq	18552(%rbp), %rax
	movl	%ecx, 32(%rsp)
	movq	%rdi, %rcx
	movq	184(%rsp), %r8
	movq	192(%rsp), %r9
	movl	%esi, 40(%rsp)
	je	.L4962
	call	*%rax
	movq	0(%rbp), %rax
	.p2align 4,,10
.L4129:
	addl	$1, 64(%rsp)
	movl	80(%rsp), %edx
	movl	64(%rsp), %edi
	addl	%edx, 72(%rsp)
	cmpl	%edi, 4(%rax)
	ja	.L4148
.L4119:
	movl	8(%rax), %edx
	testl	%edx, %edx
	jle	.L4149
	leal	-1(%rdx), %eax
	leaq	(%rax,%rax,2), %rax
	leaq	18128(%rbp), %rbx
	salq	$5, %rax
	leaq	18224(%rbp,%rax), %rsi
	.p2align 4,,10
.L4153:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L4150
	call	free
	movq	$0, 8(%rbx)
	movq	$0, (%rbx)
.L4150:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L4151
	call	free
	movq	$0, 16(%rbx)
	movq	$0, 32(%rbx)
.L4151:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L4152
	call	free
	movq	$0, 24(%rbx)
.L4152:
	addq	$96, %rbx
	cmpq	%rsi, %rbx
	jne	.L4153
	movq	0(%rbp), %rax
.L4149:
	movl	(%rax), %edx
	movq	568(%rsp), %rdi
	cmpq	$0, 584(%rsp)
	movl	%edx, (%rdi)
	movq	576(%rsp), %rdi
	movl	4(%rax), %edx
	movl	%edx, (%rdi)
	je	.L4097
	cmpl	$3, 8(%rax)
	movq	584(%rsp), %rdi
	setge	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	movl	%eax, (%rdi)
.L4097:
	movq	%rbp, %rcx
	call	free
	jmp	.L4081
	.p2align 4,,10
.L4122:
	movl	40(%rbx), %eax
	movl	$0, 36(%rbx)
	movq	%r12, 8(%rbx)
	addl	$1, %eax
	cmpl	(%r14), %eax
	movl	%eax, 40(%rbx)
	jge	.L4123
	movslq	4(%r14), %rax
	addq	%rax, %r12
	movq	%r12, 16(%rbx)
	jmp	.L4123
	.p2align 4,,10
.L4126:
	cmpb	$0, 96(%rsp)
	je	.L4137
	cmpl	$1, 592(%rsp)
	je	.L4963
	testl	%ecx, %ecx
	je	.L4129
	movq	192(%rsp), %r10
	xorl	%ecx, %ecx
	movq	184(%rsp), %r9
	movq	176(%rsp), %r8
	.p2align 4,,10
.L4140:
	movl	%ecx, %edx
	addq	$2, %rdi
	addl	$1, %ecx
	movzbl	(%r8,%rdx), %eax
	movzbl	(%r9,%rdx), %r11d
	movzbl	(%r10,%rdx), %edx
	movb	$-1, -1(%rdi)
	imull	$77, %eax, %eax
	imull	$150, %r11d, %r11d
	imull	$29, %edx, %edx
	addl	%r11d, %eax
	addl	%edx, %eax
	movb	%ah, -2(%rdi)
	movq	0(%rbp), %rax
	cmpl	%ecx, (%rax)
	ja	.L4140
	jmp	.L4129
	.p2align 4,,10
.L4137:
	cmpl	$4, 8(%rax)
	je	.L4964
.L4141:
	cmpl	$1, 592(%rsp)
	movq	176(%rsp), %r8
	je	.L4965
	testl	%ecx, %ecx
	je	.L4129
	xorl	%edx, %edx
	.p2align 4,,10
.L4147:
	movl	%edx, %eax
	addq	$2, %rdi
	addl	$1, %edx
	movzbl	(%r8,%rax), %eax
	movb	%al, -2(%rdi)
	movb	$-1, -1(%rdi)
	movq	0(%rbp), %rax
	cmpl	%edx, (%rax)
	ja	.L4147
	jmp	.L4129
	.p2align 4,,10
.L4958:
	movq	%rax, 56(%rsp)
	movl	8(%rbx), %eax
	movq	%r15, %rbp
	testl	%eax, %eax
	jle	.L4925
	leaq	18128(%r15), %rbx
	subl	$1, %eax
	leaq	(%rax,%rax,2), %rax
	salq	$5, %rax
	leaq	18224(%r15,%rax), %rsi
	.p2align 4,,10
.L4110:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L4107
	call	free
	movq	$0, 8(%rbx)
	movq	$0, (%rbx)
.L4107:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L4108
	call	free
	movq	$0, 16(%rbx)
	movq	$0, 32(%rbx)
.L4108:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L4109
	call	free
	movq	$0, 24(%rbx)
.L4109:
	addq	$96, %rbx
	cmpq	%rsi, %rbx
	jne	.L4110
.L4925:
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4097
	.p2align 4,,10
.L4093:
	cltq
	movzbl	56(%rsi), %ecx
	movq	%rdx, 184(%rsi)
	addq	%rax, %rdi
	movq	%rdi, 192(%rsi)
	jmp	.L4091
	.p2align 4,,10
.L4960:
	cmpb	$0, 96(%rsp)
	jne	.L4966
	movl	592(%rsp), %eax
	movl	%ecx, 32(%rsp)
	movq	%rdi, %rcx
	movq	192(%rsp), %r9
	movq	184(%rsp), %r8
	movl	%eax, 40(%rsp)
	call	*18552(%rbp)
	movq	0(%rbp), %rax
	jmp	.L4129
	.p2align 4,,10
.L4131:
	testl	%ecx, %ecx
	je	.L4129
	movq	104(%rsp), %r8
	xorl	%ecx, %ecx
	.p2align 4,,10
.L4136:
	movl	%ecx, %eax
	addl	$1, %ecx
	movzbl	(%rdx,%rax), %eax
	movb	$-1, 3(%rdi)
	movb	%al, 2(%rdi)
	movb	%al, 1(%rdi)
	movb	%al, (%rdi)
	movq	0(%rbp), %rax
	addq	%r8, %rdi
	cmpl	%ecx, (%rax)
	ja	.L4136
	jmp	.L4129
	.p2align 4,,10
.L4953:
	cmpl	$3, 18512(%rbp)
	movb	$1, 96(%rsp)
	je	.L4103
	cmpq	$0, 18504(%rbp)
	je	.L4103
	cmpl	$3, 592(%rsp)
	movl	$1, %eax
	movb	$0, 96(%rsp)
	cmovge	%edi, %eax
	movl	%eax, 52(%rsp)
	jmp	.L4103
	.p2align 4,,10
.L4100:
	movl	(%rbx), %ecx
	movl	$1, 80(%rsp)
	movl	$1, 592(%rsp)
	jmp	.L4101
	.p2align 4,,10
.L4948:
	leaq	1(%rcx), %r8
	movq	%r8, 184(%r13)
	movzbl	(%rcx), %eax
	movq	%r8, %rcx
.L4312:
	cmpb	%al, (%rsi)
	jne	.L4322
	addq	$1, %rsi
	cmpq	%rbp, %rsi
	jne	.L4316
	leaq	56(%r13), %rsi
	movl	$84, %ebx
	jmp	.L4321
	.p2align 4,,10
.L4317:
	movl	48(%r13), %r11d
	testl	%r11d, %r11d
	je	.L4318
	movq	40(%r13), %rcx
	movq	%rsi, %rdx
	movl	52(%r13), %r8d
	call	*16(%r13)
	leaq	57(%r13), %rcx
	testl	%eax, %eax
	jne	.L4319
	movl	$0, 48(%r13)
	movq	%rcx, %rdx
	movb	$0, 56(%r13)
.L4320:
	movq	%rdx, 192(%r13)
	movq	%rcx, 184(%r13)
.L4318:
	subl	$1, %ebx
	je	.L4967
.L4321:
	cmpq	%rcx, %rdx
	jbe	.L4317
	addq	$1, %rcx
	movq	%rcx, 184(%r13)
	jmp	.L4318
	.p2align 4,,10
.L4951:
	movq	$0, 56(%rsp)
	leaq	.LC141(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4097
	.p2align 4,,10
.L4964:
	movl	18508(%rbp), %edx
	testl	%edx, %edx
	je	.L4968
	cmpl	$2, %edx
	jne	.L4141
	testl	%ecx, %ecx
	je	.L4129
	movq	200(%rsp), %r8
	xorl	%edx, %edx
	movq	176(%rsp), %rcx
	movq	104(%rsp), %r10
	.p2align 4,,10
.L4144:
	movl	%edx, %r9d
	addl	$1, %edx
	movzbl	(%rcx,%r9), %eax
	movzbl	(%r8,%r9), %r9d
	movb	$-1, 1(%rdi)
	notl	%eax
	movzbl	%al, %eax
	imull	%r9d, %eax
	subl	$-128, %eax
	movl	%eax, %r9d
	shrl	$8, %r9d
	addl	%r9d, %eax
	movb	%ah, (%rdi)
	movq	0(%rbp), %rax
	addq	%r10, %rdi
	cmpl	%edx, (%rax)
	ja	.L4144
	jmp	.L4129
	.p2align 4,,10
.L4963:
	testl	%ecx, %ecx
	je	.L4129
	movq	192(%rsp), %r10
	xorl	%ecx, %ecx
	movq	184(%rsp), %r9
	movq	176(%rsp), %r8
	.p2align 4,,10
.L4139:
	movl	%ecx, %edx
	addq	$1, %rdi
	addl	$1, %ecx
	movzbl	(%r8,%rdx), %eax
	movzbl	(%r9,%rdx), %r11d
	movzbl	(%r10,%rdx), %edx
	imull	$77, %eax, %eax
	imull	$150, %r11d, %r11d
	imull	$29, %edx, %edx
	addl	%r11d, %eax
	addl	%edx, %eax
	movb	%ah, -1(%rdi)
	movq	0(%rbp), %rax
	cmpl	%ecx, (%rax)
	ja	.L4139
	jmp	.L4129
	.p2align 4,,10
.L4166:
	movl	12(%rax), %edx
	cmpl	%edx, 592(%rsp)
	movl	(%rax), %r9d
	je	.L4167
	movl	4(%rax), %eax
	cmpl	$8, %r8d
	movq	56(%rsp), %rcx
	movl	592(%rsp), %r8d
	movl	%eax, 32(%rsp)
	jle	.L4969
	call	_ZL22stbi__convert_format16Ptiijj.part.31
	movq	%rax, 56(%rsp)
.L4169:
	movq	208(%rsp), %rax
	movl	592(%rsp), %edi
	cmpq	$0, 56(%rsp)
	movl	%edi, 12(%rax)
	je	.L4081
	movl	(%rax), %r9d
	movq	232(%rsp), %rcx
	jmp	.L4167
	.p2align 4,,10
.L4172:
	cltq
	movzbl	56(%r13), %edx
	movq	%rcx, 184(%r13)
	addq	%rax, %rbx
	movq	%rbx, 192(%r13)
	jmp	.L4170
	.p2align 4,,10
.L4543:
	movq	$0, 56(%rsp)
	movq	232(%rsp), %rcx
	jmp	.L4165
	.p2align 4,,10
.L4965:
	testl	%ecx, %ecx
	je	.L4129
	xorl	%edx, %edx
	.p2align 4,,10
.L4146:
	movl	%edx, %eax
	addl	$1, %edx
	movzbl	(%r8,%rax), %ecx
	movb	%cl, (%rdi,%rax)
	movq	0(%rbp), %rax
	cmpl	%edx, (%rax)
	ja	.L4146
	jmp	.L4129
	.p2align 4,,10
.L4085:
	cltq
	movzbl	56(%r13), %edx
	movq	%rcx, 184(%r13)
	addq	%rax, %rsi
	movq	%rsi, 192(%r13)
	jmp	.L4083
	.p2align 4,,10
.L4961:
	testl	%ecx, %ecx
	je	.L4129
	movq	200(%rsp), %rbx
	xorl	%r9d, %r9d
	movq	184(%rsp), %r11
	movq	192(%rsp), %r10
	movq	104(%rsp), %r8
	.p2align 4,,10
.L4133:
	movl	%r9d, %eax
	addl	$1, %r9d
	movzbl	(%rbx,%rax), %esi
	movzbl	(%rdx,%rax), %ecx
	imull	%esi, %ecx
	subl	$-128, %ecx
	movl	%ecx, %r12d
	shrl	$8, %r12d
	addl	%r12d, %ecx
	movb	%ch, (%rdi)
	movzbl	(%r11,%rax), %ecx
	imull	%esi, %ecx
	subl	$-128, %ecx
	movl	%ecx, %r12d
	shrl	$8, %r12d
	addl	%r12d, %ecx
	movb	%ch, 1(%rdi)
	movzbl	(%r10,%rax), %eax
	movb	$-1, 3(%rdi)
	imull	%esi, %eax
	subl	$-128, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	addl	%ecx, %eax
	movb	%ah, 2(%rdi)
	movq	0(%rbp), %rax
	addq	%r8, %rdi
	cmpl	%r9d, (%rax)
	ja	.L4133
	jmp	.L4129
	.p2align 4,,10
.L4949:
	movl	$0, 48(%r13)
	movq	%rcx, %rdx
	movb	$0, 56(%r13)
	jmp	.L4314
	.p2align 4,,10
.L4319:
	cltq
	leaq	(%rsi,%rax), %rdx
	jmp	.L4320
.L4322:
	movdqu	200(%r13), %xmm0
	movq	%r13, %rcx
	movups	%xmm0, 184(%r13)
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	movl	%eax, %ebx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$80, %bl
	je	.L4970
.L4434:
	movdqu	200(%r13), %xmm0
	movq	%r13, %rcx
	movups	%xmm0, 184(%r13)
	call	_ZL14stbi__hdr_testP13stbi__context
	testl	%eax, %eax
	movl	%eax, %edi
	je	.L4971
	movl	592(%rsp), %eax
	movq	%r13, %rcx
	movq	584(%rsp), %r9
	movq	576(%rsp), %r8
	movq	568(%rsp), %rdx
	movl	%eax, 32(%rsp)
	call	_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.39
	movq	%rax, %r14
	movl	592(%rsp), %eax
	testl	%eax, %eax
	jne	.L4441
	movq	584(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 592(%rsp)
.L4441:
	movq	576(%rsp), %rax
	testq	%r14, %r14
	movl	(%rax), %esi
	movq	568(%rsp), %rax
	movl	(%rax), %ebx
	je	.L4939
	movl	592(%rsp), %r8d
	xorl	%r9d, %r9d
	movl	%esi, %edx
	movl	%ebx, %ecx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	.L4972
	movl	592(%rsp), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	movl	592(%rsp), %eax
	sbbl	$0, %eax
	imull	%ebx, %esi
	movl	%eax, 52(%rsp)
	testl	%esi, %esi
	movl	%esi, 64(%rsp)
	jle	.L4444
	leal	-1(%rax), %edi
	testl	%eax, %eax
	movl	$0, %r15d
	cmovns	%eax, %r15d
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	addq	$1, %rdi
	movl	%r15d, 72(%rsp)
	.p2align 4,,10
.L4450:
	movl	52(%rsp), %eax
	testl	%eax, %eax
	jle	.L4445
	movq	56(%rsp), %rdx
	movslq	%r12d, %rax
	xorl	%r15d, %r15d
	movl	$-1, %ebp
	movss	_ZL17stbi__h2l_gamma_i(%rip), %xmm10
	leaq	(%r14,%rax,4), %rsi
	pxor	%xmm8, %xmm8
	movss	_ZL17stbi__h2l_scale_i(%rip), %xmm9
	movss	.LC154(%rip), %xmm7
	movss	.LC156(%rip), %xmm6
	leaq	(%rdx,%rax), %rbx
	.p2align 4,,10
.L4447:
	movss	(%rsi,%r15,4), %xmm0
	movaps	%xmm10, %xmm1
	mulss	%xmm9, %xmm0
	call	powf
	xorl	%eax, %eax
	mulss	%xmm7, %xmm0
	addss	%xmm6, %xmm0
	ucomiss	%xmm0, %xmm8
	ja	.L4446
	ucomiss	.LC154(%rip), %xmm0
	movl	%ebp, %eax
	jbe	.L4973
.L4446:
	movb	%al, (%rbx,%r15)
	addq	$1, %r15
	cmpq	%rdi, %r15
	jne	.L4447
.L4445:
	movl	72(%rsp), %eax
	cmpl	%eax, 592(%rsp)
	jle	.L4448
	addl	%r12d, %eax
	movss	.LC154(%rip), %xmm7
	pxor	%xmm8, %xmm8
	xorl	%edx, %edx
	cltq
	movss	.LC156(%rip), %xmm6
	mulss	(%r14,%rax,4), %xmm7
	addss	%xmm7, %xmm6
	ucomiss	%xmm6, %xmm8
	ja	.L4449
	ucomiss	.LC154(%rip), %xmm6
	movl	$-1, %edx
	jbe	.L4974
.L4449:
	movq	56(%rsp), %rsi
	movb	%dl, (%rsi,%rax)
.L4448:
	addl	$1, %r13d
	addl	592(%rsp), %r12d
	cmpl	64(%rsp), %r13d
	jne	.L4450
.L4444:
	movq	%r14, %rcx
	call	free
	jmp	.L4081
	.p2align 4,,10
.L4944:
	movq	$0, 56(%rsp)
	leaq	.LC141(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
	.p2align 4,,10
.L4946:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$73, %al
	jne	.L4179
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$70, %al
	jne	.L4179
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$56, %al
	jne	.L4179
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	subl	$55, %eax
	testb	$-3, %al
	jne	.L4179
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$97, %al
	jne	.L4179
	movq	200(%r13), %rdi
	movl	$18528, %ecx
	movl	$1, %edx
	movq	208(%r13), %rsi
	movq	%rdi, 184(%r13)
	movq	%rsi, 192(%r13)
	call	calloc
	movq	8(%rax), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	movq	%rcx, 56(%rsp)
	je	.L4975
.L4186:
	movl	4(%rbx), %edi
	xorl	%r9d, %r9d
	movl	$4, %r8d
	movl	(%rbx), %esi
	movl	%edi, %edx
	movl	%esi, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L4976
	xorl	%r9d, %r9d
	movl	%edi, %r8d
	movl	%esi, %edx
	movl	$4, %ecx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, 8(%rbx)
	je	.L4977
	movl	40(%rbx), %r9d
	sarl	$2, %r9d
	andl	$7, %r9d
	cmpl	$1, %r9d
	je	.L4204
	jle	.L4978
	cmpl	$2, %r9d
	je	.L4207
	cmpl	$3, %r9d
	jne	.L4214
	movq	16(%rbx), %r9
	testq	%r9, %r9
	je	.L4214
	movl	18504(%rbx), %esi
	cmpl	18512(%rbx), %esi
	jl	.L4218
	jmp	.L4214
	.p2align 4,,10
.L4979:
	movq	16(%rbx), %r9
	movq	8(%rbx), %rax
.L4218:
	movl	18500(%rbx), %r8d
	leal	(%r8,%rsi), %edx
	movslq	%edx, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	18508(%rbx), %eax
	addq	%r9, %rdx
	subl	%r8d, %eax
	movslq	%eax, %r8
	call	memcpy
	movl	(%rbx), %eax
	leal	(%rsi,%rax,4), %esi
	cmpl	%esi, 18512(%rbx)
	jg	.L4979
	.p2align 4,,10
.L4214:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$44, %al
	je	.L4220
	cmpb	$59, %al
	je	.L4929
	cmpb	$33, %al
	je	.L4980
	leaq	.LC147(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L4929:
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
.L4191:
	testq	%rax, %rax
	je	.L4202
	movq	%rax, %rcx
	call	free
.L4930:
	movq	$0, 56(%rsp)
.L4202:
	movq	%rbx, %rcx
	call	free
	jmp	.L4081
.L4973:
	cvttss2si	%xmm0, %eax
	jmp	.L4446
.L4959:
	movl	8(%rax), %edx
	movq	%rbp, %rcx
	call	_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.127
	jmp	.L4925
.L4967:
	leaq	.LC139(%rip), %rbx
	leaq	4(%rbx), %rsi
.L4324:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	(%rbx), %al
	jne	.L4322
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L4324
	movq	200(%r13), %rdx
	leaq	172(%rsp), %rcx
	movl	$92, %esi
	movq	208(%r13), %rax
	leaq	56(%r13), %rbx
	cmpq	$0, 584(%rsp)
	cmovne	584(%rsp), %rcx
	movq	%rdx, 184(%r13)
	movq	%rax, 192(%r13)
	movq	%rcx, 584(%rsp)
	jmp	.L4329
	.p2align 4,,10
.L4325:
	movl	48(%r13), %r10d
	testl	%r10d, %r10d
	je	.L4326
	movq	%rbx, %rdx
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	call	*16(%r13)
	leaq	57(%r13), %rdx
	testl	%eax, %eax
	jne	.L4327
	movl	$0, 48(%r13)
	movq	%rdx, %rax
	movb	$0, 56(%r13)
.L4328:
	movq	%rax, 192(%r13)
	movq	%rdx, 184(%r13)
.L4326:
	subl	$1, %esi
	je	.L4981
.L4329:
	cmpq	%rdx, %rax
	jbe	.L4325
	addq	$1, %rdx
	movq	%rdx, 184(%r13)
	jmp	.L4326
	.p2align 4,,10
.L4327:
	cltq
	addq	%rbx, %rax
	jmp	.L4328
.L4981:
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%r13, %rcx
	movl	%eax, %r12d
	call	_ZL13stbi__get16beP13stbi__context
	cmpq	$0, 16(%r13)
	movl	%eax, 52(%rsp)
	je	.L4333
	movq	40(%r13), %rcx
	call	*32(%r13)
	testl	%eax, %eax
	je	.L4332
	movl	48(%r13), %r9d
	testl	%r9d, %r9d
	je	.L4331
.L4333:
	movq	192(%r13), %rax
	cmpq	%rax, 184(%r13)
	jnb	.L4331
.L4332:
	movl	52(%rsp), %edx
	xorl	%r9d, %r9d
	movl	$4, %r8d
	movl	%r12d, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L4940
	movq	%r13, %rcx
	xorl	%esi, %esi
	call	_ZL13stbi__get32beP13stbi__context
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movl	52(%rsp), %edi
	xorl	%r9d, %r9d
	movl	%r12d, %ecx
	movl	$4, %r8d
	movl	%edi, %edx
	call	_ZL17stbi__malloc_mad3iiii
	movl	%edi, %r8d
	movl	$255, %edx
	xorl	%edi, %edi
	imull	%r12d, %r8d
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
	sall	$2, %r8d
	movslq	%r8d, %r8
	call	memset
	leaq	208(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	%rax, %rbx
	.p2align 4,,10
.L4336:
	movq	%r13, %rcx
	addl	$1, %esi
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	movl	%eax, %ebp
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	movb	%al, (%rbx)
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	movb	%al, 1(%rbx)
	call	_ZL10stbi__get8P13stbi__context
	movb	%al, 2(%rbx)
	movzbl	%al, %eax
	orl	%eax, %edi
	cmpq	$0, 16(%r13)
	je	.L4341
	movq	40(%r13), %rcx
	call	*32(%r13)
	testl	%eax, %eax
	je	.L4340
	movl	48(%r13), %r8d
	testl	%r8d, %r8d
	je	.L4934
.L4341:
	movq	192(%r13), %rax
	cmpq	%rax, 184(%r13)
	jnb	.L4934
.L4340:
	cmpb	$8, (%rbx)
	jne	.L4935
	testb	%bpl, %bpl
	je	.L4982
	addq	$3, %rbx
	cmpl	$10, %esi
	jne	.L4336
.L4935:
	leaq	.LC155(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L4337:
	movq	56(%rsp), %rcx
	call	free
	movq	$0, 56(%rsp)
.L4527:
	movq	568(%rsp), %rax
	movl	52(%rsp), %edi
	movl	%r12d, (%rax)
	movq	576(%rsp), %rax
	movl	%edi, (%rax)
	movl	592(%rsp), %eax
	testl	%eax, %eax
	jne	.L4433
	movq	584(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 592(%rsp)
.L4433:
	cmpl	$4, 592(%rsp)
	je	.L4081
	movl	52(%rsp), %eax
	movl	%r12d, %r9d
	movl	$4, %edx
	movl	592(%rsp), %r8d
	movq	56(%rsp), %rcx
	movl	%eax, 32(%rsp)
	call	_ZL20stbi__convert_formatPhiijj.part.27
	movq	%rax, 56(%rsp)
	jmp	.L4081
.L4968:
	testl	%ecx, %ecx
	je	.L4129
	movq	200(%rsp), %rbx
	xorl	%r8d, %r8d
	movq	176(%rsp), %r11
	movq	184(%rsp), %r10
	movq	192(%rsp), %r9
	movq	104(%rsp), %rcx
	.p2align 4,,10
.L4143:
	movl	%r8d, %r14d
	addl	$1, %r8d
	movzbl	(%rbx,%r14), %esi
	movzbl	(%r10,%r14), %edx
	movzbl	(%r11,%r14), %eax
	imull	%esi, %edx
	imull	%esi, %eax
	leal	128(%rdx), %r12d
	movzbl	(%r9,%r14), %edx
	movb	$-1, 1(%rdi)
	leal	128(%rax), %r13d
	movl	%r13d, %eax
	shrl	$8, %eax
	imull	%esi, %edx
	addl	%r13d, %eax
	shrl	$8, %eax
	imull	$77, %eax, %eax
	leal	128(%rdx), %esi
	movl	%r12d, %edx
	shrl	$8, %edx
	addl	%r12d, %edx
	shrl	$8, %edx
	imull	$150, %edx, %edx
	addl	%edx, %eax
	movl	%esi, %edx
	shrl	$8, %edx
	addl	%esi, %edx
	shrl	$8, %edx
	imull	$29, %edx, %edx
	addl	%edx, %eax
	movb	%ah, (%rdi)
	movq	0(%rbp), %rax
	addq	%rcx, %rdi
	cmpl	%r8d, (%rax)
	ja	.L4143
	jmp	.L4129
	.p2align 4,,10
.L4947:
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%r13, %rcx
	movl	%eax, %ebx
	call	_ZL13stbi__get16beP13stbi__context
	sall	$16, %ebx
	addl	%ebx, %eax
	cmpl	$943870035, %eax
	jne	.L4983
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$1, %eax
	jne	.L4984
	movl	$6, %edx
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$16, %eax
	movl	%eax, %r12d
	ja	.L4985
	movq	%r13, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	movq	%r13, %rcx
	movl	%eax, %r14d
	call	_ZL13stbi__get32beP13stbi__context
	movq	%r13, %rcx
	movl	%eax, 52(%rsp)
	call	_ZL13stbi__get16beP13stbi__context
	movl	%eax, 64(%rsp)
	subl	$8, %eax
	andl	$-9, %eax
	jne	.L4986
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$3, %eax
	jne	.L4987
	movq	%r13, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	testl	%eax, %eax
	jns	.L4263
	movq	192(%r13), %rax
	movq	%rax, 184(%r13)
.L4264:
	movq	%r13, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	testl	%eax, %eax
	jns	.L4265
	movq	192(%r13), %rax
	movq	%rax, 184(%r13)
.L4266:
	movq	%r13, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	testl	%eax, %eax
	jns	.L4267
	movq	192(%r13), %rax
	movq	%rax, 184(%r13)
.L4268:
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$1, %eax
	movl	%eax, %ebx
	jg	.L4988
	movl	52(%rsp), %edx
	xorl	%r9d, %r9d
	movl	%r14d, %r8d
	movl	$4, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L4940
	cmpl	$16, 608(%rsp)
	sete	%dl
	cmpl	$16, 64(%rsp)
	sete	%al
	andl	%eax, %edx
	testl	%ebx, %ebx
	movb	%dl, 96(%rsp)
	jne	.L4271
	testb	%dl, %dl
	jne	.L4989
.L4271:
	movl	52(%rsp), %eax
	leal	0(,%rax,4), %ecx
	imull	%r14d, %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	.L4938
	movl	52(%rsp), %ebp
	imull	%r14d, %ebp
	testl	%ebx, %ebx
	je	.L4275
	movl	%r12d, %eax
	imull	%r14d, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	jns	.L4276
	movq	192(%r13), %rax
	movq	%rax, 184(%r13)
.L4277:
	movq	56(%rsp), %rax
	xorl	%edi, %edi
	movl	%r14d, 96(%rsp)
	movq	%rax, 64(%rsp)
	leal	-1(%rbp), %eax
	movl	%eax, 72(%rsp)
	salq	$2, %rax
	movq	%rax, 88(%rsp)
.L4287:
	movq	64(%rsp), %rsi
	cmpl	%edi, %r12d
	movq	%rsi, %r14
	jg	.L4549
	testl	%ebp, %ebp
	jle	.L4279
	movq	88(%rsp), %rdx
	cmpl	$3, %edi
	sete	%al
	negl	%eax
	leaq	4(%rdx,%rsi), %rcx
.L4280:
	movb	%al, (%r14)
	addq	$4, %r14
	cmpq	%rcx, %r14
	jne	.L4280
.L4279:
	addq	$1, 64(%rsp)
	addl	$1, %edi
	cmpl	$4, %edi
	jne	.L4287
	movl	96(%rsp), %r14d
.L4286:
	movl	592(%rsp), %edx
	andl	$-5, %edx
	cmpl	$3, %r12d
	jle	.L4299
	movq	600(%rsp), %rax
	cmpl	$16, (%rax)
	je	.L4990
	testl	%ebp, %ebp
	jle	.L4304
	movq	56(%rsp), %rdi
	movl	72(%rsp), %eax
	movss	.LC154(%rip), %xmm4
	movss	.LC22(%rip), %xmm3
	movq	%rdi, %rcx
	leaq	4(%rdi,%rax,4), %r8
.L4306:
	movzbl	3(%rcx), %eax
	leal	-1(%rax), %r9d
	cmpb	$-3, %r9b
	ja	.L4305
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm3, %xmm5
	movzbl	(%rcx), %eax
	movaps	%xmm3, %xmm1
	pxor	%xmm2, %xmm2
	divss	%xmm4, %xmm0
	cvtsi2ss	%eax, %xmm2
	divss	%xmm0, %xmm5
	subss	%xmm5, %xmm1
	mulss	%xmm5, %xmm2
	movaps	%xmm5, %xmm0
	mulss	%xmm4, %xmm1
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	pxor	%xmm2, %xmm2
	movb	%al, (%rcx)
	movzbl	1(%rcx), %eax
	cvtsi2ss	%eax, %xmm2
	mulss	%xmm5, %xmm2
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	pxor	%xmm2, %xmm2
	movb	%al, 1(%rcx)
	movzbl	2(%rcx), %eax
	cvtsi2ss	%eax, %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, 2(%rcx)
.L4305:
	addq	$4, %rcx
	cmpq	%rcx, %r8
	jne	.L4306
.L4299:
	testl	%edx, %edx
	je	.L4307
	movq	600(%rsp), %rax
	cmpl	$16, (%rax)
	je	.L4534
.L4308:
	movl	52(%rsp), %r9d
	movl	%r14d, 32(%rsp)
	movl	$4, %edx
	movl	592(%rsp), %r8d
	movq	56(%rsp), %rcx
	call	_ZL20stbi__convert_formatPhiijj.part.27
	movq	%rax, 56(%rsp)
.L4309:
	cmpq	$0, 56(%rsp)
	jne	.L4307
.L4939:
	movq	$0, 56(%rsp)
	jmp	.L4081
.L4962:
	call	*%rax
	movq	0(%rbp), %rax
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	je	.L4129
	movq	200(%rsp), %rcx
	xorl	%edx, %edx
	movq	104(%rsp), %r9
	.p2align 4,,10
.L4135:
	movzbl	(%rdi), %r8d
	movl	%edx, %eax
	addl	$1, %edx
	movzbl	(%rcx,%rax), %r10d
	notl	%r8d
	movzbl	%r8b, %r8d
	imull	%r10d, %r8d
	subl	$-128, %r8d
	movl	%r8d, %eax
	shrl	$8, %eax
	addl	%r8d, %eax
	movzbl	1(%rdi), %r8d
	movb	%ah, (%rdi)
	notl	%r8d
	movzbl	%r8b, %r8d
	imull	%r10d, %r8d
	subl	$-128, %r8d
	movl	%r8d, %eax
	shrl	$8, %eax
	addl	%r8d, %eax
	movzbl	2(%rdi), %r8d
	movb	%ah, 1(%rdi)
	notl	%r8d
	movzbl	%r8b, %eax
	imull	%r10d, %eax
	subl	$-128, %eax
	movl	%eax, %r8d
	shrl	$8, %r8d
	addl	%r8d, %eax
	movb	%ah, 2(%rdi)
	movq	0(%rbp), %rax
	addq	%r9, %rdi
	cmpl	%edx, (%rax)
	ja	.L4135
	jmp	.L4129
.L4220:
	movq	%r13, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	movl	%eax, %esi
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	movl	%eax, %edi
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	movl	%eax, %ebp
	call	_ZL13stbi__get16leP13stbi__context
	movl	(%rbx), %ecx
	leal	(%rsi,%rbp), %edx
	cmpl	%ecx, %edx
	jg	.L4223
	leal	(%rdi,%rax), %edx
	cmpl	4(%rbx), %edx
	jg	.L4223
	leal	0(,%rsi,4), %edx
	sall	$2, %ecx
	imull	%ecx, %edi
	leal	(%rdx,%rbp,4), %r9d
	movl	%ecx, 18524(%rbx)
	imull	%ecx, %eax
	movl	%edx, 18500(%rbx)
	movq	%r13, %rcx
	movl	%edx, 18516(%rbx)
	movl	%edi, 18504(%rbx)
	addl	%edi, %eax
	movl	%r9d, 18508(%rbx)
	movl	%eax, 18512(%rbx)
	movl	%edi, 18520(%rbx)
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	testb	$64, %al
	movl	%edx, 18496(%rbx)
	je	.L4225
	movl	18524(%rbx), %edi
	movl	$3, %ecx
	leal	0(,%rdi,8), %edx
.L4226:
	testb	%al, %al
	movl	%ecx, 18488(%rbx)
	movl	%edx, 18492(%rbx)
	jns	.L4227
	testb	$1, 40(%rbx)
	movl	$-1, %r9d
	je	.L4228
	movl	36(%rbx), %r9d
.L4228:
	leaq	1072(%rbx), %rsi
	andl	$7, %eax
	movl	$2, %r8d
	movl	%eax, %ecx
	movq	%rsi, %rdx
	sall	%cl, %r8d
	movq	%r13, %rcx
	call	_ZL26stbi__gif_parse_colortableP13stbi__contextPA4_hii
	movq	%rsi, 18480(%rbx)
	movl	$-1, 112(%rsp)
.L4229:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$12, %al
	ja	.L4929
	movl	$1, %edx
	movl	%eax, %ecx
	movzbl	%al, %r8d
	movl	%edx, %edi
	sall	%cl, %edi
	movl	%edi, %eax
	movl	%edi, 56(%rsp)
	leal	1(%r8), %edi
	movl	%edi, %ecx
	movl	%edi, 88(%rsp)
	sall	%cl, %edx
	leal	-1(%rdx), %edi
	leal	-1(%rax), %edx
	movl	%edi, 96(%rsp)
	xorl	%eax, %eax
	addq	$1, %rdx
.L4233:
	movl	$-1, %ecx
	movb	%al, 2098(%rbx,%rax,4)
	movw	%cx, 2096(%rbx,%rax,4)
	movb	%al, 2099(%rbx,%rax,4)
	addq	$1, %rax
	cmpq	%rdx, %rax
	jne	.L4233
	movl	56(%rsp), %eax
	xorl	%esi, %esi
	xorl	%r15d, %r15d
	movq	$-1, %r14
	movl	88(%rsp), %ebp
	movl	$1, 64(%rsp)
	xorl	%edi, %edi
	addl	$2, %eax
	movl	%eax, 104(%rsp)
	movslq	%eax, %r12
	movl	96(%rsp), %eax
	movl	%eax, 52(%rsp)
	leaq	57(%r13), %rax
	movq	%rax, 80(%rsp)
	.p2align 4,,10
.L4234:
	cmpl	%esi, %ebp
	jle	.L4235
.L4992:
	testl	%edi, %edi
	jne	.L4236
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edi
	testl	%edi, %edi
	je	.L4244
.L4236:
	subl	$1, %edi
	movq	184(%r13), %rax
	cmpq	192(%r13), %rax
	jb	.L4991
	movl	48(%r13), %eax
	testl	%eax, %eax
	je	.L4239
	leaq	56(%r13), %r9
	movq	40(%r13), %rcx
	movq	%r9, %rdx
	movq	%r9, 72(%rsp)
	movl	52(%r13), %r8d
	call	*16(%r13)
	movq	72(%rsp), %r9
	testl	%eax, %eax
	jne	.L4240
	movq	80(%rsp), %r9
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	movq	%r9, %rax
.L4241:
	movq	%r9, 192(%r13)
	movq	%rax, 184(%r13)
.L4239:
	addl	$8, %esi
	cmpl	%esi, %ebp
	jg	.L4992
.L4235:
	movl	52(%rsp), %r11d
	movl	%ebp, %ecx
	subl	%ebp, %esi
	movl	56(%rsp), %eax
	andl	%r15d, %r11d
	sarl	%cl, %r15d
	cmpl	%r11d, %eax
	je	.L4547
	addl	$1, %eax
	cmpl	%eax, %r11d
	je	.L4993
	cmpl	%r12d, %r11d
	jg	.L4246
	movl	64(%rsp), %eax
	testl	%eax, %eax
	jne	.L4994
	testl	%r14d, %r14d
	js	.L4248
	leal	1(%r12), %eax
	cmpl	$4096, %eax
	jg	.L4995
	leaq	(%rbx,%r12,4), %rdx
	cmpl	%eax, %r11d
	movw	%r14w, 2096(%rdx)
	movzbl	2098(%rbx,%r14,4), %ecx
	movb	%cl, 2098(%rdx)
	je	.L4250
	movslq	%r11d, %rcx
	movzbl	2098(%rbx,%rcx,4), %ecx
.L4250:
	movb	%cl, 2099(%rdx)
	movslq	%eax, %r12
.L4251:
	movzwl	%r11w, %edx
	movq	%rbx, %rcx
	call	_ZL18stbi__out_gif_codeP9stbi__gift
	testl	%r12d, 52(%rsp)
	jne	.L4548
	cmpl	$4095, %r12d
	jle	.L4996
.L4548:
	movslq	%r11d, %r14
	jmp	.L4234
	.p2align 4,,10
.L4991:
	leaq	1(%rax), %rdx
	movl	%esi, %ecx
	movq	%rdx, 184(%r13)
	movzbl	(%rax), %eax
	sall	%cl, %eax
	orl	%eax, %r15d
	jmp	.L4239
	.p2align 4,,10
.L4547:
	movl	96(%rsp), %eax
	movq	$-1, %r14
	movl	$0, 64(%rsp)
	movslq	104(%rsp), %r12
	movl	88(%rsp), %ebp
	movl	%eax, 52(%rsp)
	jmp	.L4234
	.p2align 4,,10
.L4240:
	cltq
	movl	%esi, %ecx
	addq	%rax, %r9
	movzbl	56(%r13), %eax
	sall	%cl, %eax
	orl	%eax, %r15d
	movq	80(%rsp), %rax
	jmp	.L4241
	.p2align 4,,10
.L4248:
	cmpl	%r12d, %r11d
	jne	.L4251
.L4246:
	leaq	.LC146(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
	jmp	.L4191
.L4996:
	addl	$1, %ebp
	movl	$1, %eax
	movslq	%r11d, %r14
	movl	%ebp, %ecx
	sall	%cl, %eax
	subl	$1, %eax
	movl	%eax, 52(%rsp)
	jmp	.L4234
.L4980:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$-7, %al
	jne	.L4255
	jmp	.L4997
	.p2align 4,,10
.L4998:
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
.L4255:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	testl	%edx, %edx
	jne	.L4998
	jmp	.L4214
.L4952:
	movq	0(%rbp), %rax
	movq	%rbp, %rcx
	movl	8(%rax), %edx
	call	_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.127
	movq	$0, 56(%rsp)
	jmp	.L4097
.L4978:
	testl	%r9d, %r9d
	jne	.L4214
	movl	(%rbx), %eax
	movl	4(%rbx), %r11d
	movslq	28(%rbx), %rdx
	sall	$2, %eax
	imull	%eax, %r11d
	leaq	48(%rbx,%rdx,4), %rcx
	testl	%r11d, %r11d
	jle	.L4214
	testl	%eax, %eax
	jle	.L4214
	subl	$1, %eax
	shrl	$2, %eax
	leaq	4(,%rax,4), %rsi
	.p2align 4,,10
.L4212:
	movslq	%r9d, %rdx
	leaq	(%rsi,%rdx), %r10
	.p2align 4,,10
.L4211:
	movq	8(%rbx), %rax
	movzbl	2(%rcx), %r8d
	addq	%rdx, %rax
	addq	$4, %rdx
	movb	%r8b, (%rax)
	movzbl	1(%rcx), %r8d
	cmpq	%r10, %rdx
	movb	%r8b, 1(%rax)
	movzbl	(%rcx), %r8d
	movb	$0, 3(%rax)
	movb	%r8b, 2(%rax)
	jne	.L4211
	movl	(%rbx), %eax
	leal	(%r9,%rax,4), %r9d
	cmpl	%r9d, %r11d
	jg	.L4212
	jmp	.L4214
.L4969:
	call	_ZL20stbi__convert_formatPhiijj.part.27
	movq	%rax, 56(%rsp)
	jmp	.L4169
.L4176:
	movq	%r13, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%r13, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%r13, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movdqu	200(%r13), %xmm0
	cmpl	$12, %eax
	movups	%xmm0, 184(%r13)
	je	.L4533
	cmpl	$40, %eax
	je	.L4533
	movl	%eax, %edx
	andl	$-17, %edx
	cmpl	$108, %edx
	je	.L4533
	cmpl	$56, %eax
	jne	.L4175
.L4533:
	movl	592(%rsp), %eax
	movq	%r13, %rcx
	movq	584(%rsp), %r9
	movq	576(%rsp), %r8
	movq	568(%rsp), %rdx
	movl	%eax, 32(%rsp)
	call	_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.28
	movq	%rax, 56(%rsp)
	jmp	.L4081
.L4975:
	cmpq	%rsi, %rdi
	jb	.L4999
	movl	48(%r13), %r9d
	testl	%r9d, %r9d
	je	.L4193
	leaq	56(%r13), %rsi
	movq	40(%r13), %rcx
	movq	%rsi, %rdx
	movl	52(%r13), %r8d
	call	*16(%r13)
	leaq	57(%r13), %rdx
	testl	%eax, %eax
	jne	.L4192
	movq	8(%rbx), %rcx
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	movq	%rdx, 192(%r13)
	movq	%rdx, 184(%r13)
.L4193:
	leaq	.LC128(%rip), %rax
	movq	%rcx, 56(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	%rcx, %rax
	jmp	.L4191
.L4976:
	leaq	.LC78(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	56(%rsp), %rax
	jmp	.L4191
.L4550:
	xorl	%eax, %eax
	jmp	.L4312
.L4204:
	movq	56(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L4213
	movl	(%rbx), %edi
	movq	%rax, %rcx
	leal	0(,%rdi,4), %r8d
	imull	4(%rbx), %r8d
	movslq	%r8d, %r8
	call	memcpy
.L4213:
	movq	56(%rsp), %rax
	movq	%rax, 16(%rbx)
	jmp	.L4214
.L4966:
	testl	%ecx, %ecx
	je	.L4129
	movq	184(%rsp), %r9
	xorl	%ecx, %ecx
	movq	192(%rsp), %r8
	movq	104(%rsp), %r11
	.p2align 4,,10
.L4130:
	movl	%ecx, %eax
	addl	$1, %ecx
	movzbl	(%rdx,%rax), %r10d
	movb	%r10b, (%rdi)
	movzbl	(%r9,%rax), %r10d
	movb	%r10b, 1(%rdi)
	movzbl	(%r8,%rax), %eax
	movb	$-1, 3(%rdi)
	movb	%al, 2(%rdi)
	movq	0(%rbp), %rax
	addq	%r11, %rdi
	cmpl	%ecx, (%rax)
	ja	.L4130
	jmp	.L4129
.L4207:
	movq	56(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L4215
	movl	(%rbx), %edi
	movq	%rax, %rcx
	leal	0(,%rdi,4), %r8d
	imull	4(%rbx), %r8d
	movslq	%r8d, %r8
	call	memcpy
.L4215:
	movl	18512(%rbx), %esi
	movl	18504(%rbx), %r10d
	movslq	28(%rbx), %rdx
	movl	18508(%rbx), %eax
	movslq	18500(%rbx), %r11
	cmpl	%r10d, %esi
	leaq	48(%rbx,%rdx,4), %rcx
	jle	.L4214
	cmpl	%r11d, %eax
	jle	.L4214
	subl	$1, %eax
	subq	%r11, %rax
	andl	$4294967292, %eax
	leaq	4(%rax,%r11), %rdi
	.p2align 4,,10
.L4217:
	movslq	%r10d, %r9
	leaq	(%r11,%r9), %rdx
	addq	%rdi, %r9
	.p2align 4,,10
.L4216:
	movq	8(%rbx), %rax
	movzbl	2(%rcx), %r8d
	addq	%rdx, %rax
	addq	$4, %rdx
	movb	%r8b, (%rax)
	movzbl	1(%rcx), %r8d
	cmpq	%r9, %rdx
	movb	%r8b, 1(%rax)
	movzbl	(%rcx), %r8d
	movb	$0, 3(%rax)
	movb	%r8b, 2(%rax)
	jne	.L4216
	movl	(%rbx), %eax
	leal	(%r10,%rax,4), %r10d
	cmpl	%r10d, %esi
	jg	.L4217
	jmp	.L4214
.L4970:
	subl	$53, %eax
	cmpb	$1, %al
	ja	.L4434
	leaq	8(%r13), %r9
	movq	%r13, %rdx
	movq	%r13, %rcx
	leaq	4(%r13), %r8
	call	_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_
	testl	%eax, %eax
	je	.L4939
	movl	0(%r13), %eax
	movq	568(%rsp), %rdi
	cmpq	$0, 584(%rsp)
	movl	%eax, (%rdi)
	movq	576(%rsp), %rdi
	movl	4(%r13), %eax
	movl	%eax, (%rdi)
	je	.L4439
	movl	8(%r13), %eax
	movq	584(%rsp), %rdi
	movl	%eax, (%rdi)
.L4439:
	movl	4(%r13), %edi
	xorl	%r9d, %r9d
	movl	0(%r13), %esi
	movl	8(%r13), %ebx
	movl	%edi, %r8d
	movl	%esi, %edx
	movl	%ebx, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L4940
	xorl	%r9d, %r9d
	movl	%esi, %edx
	movl	%ebx, %ecx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, %rdi
	movq	%rax, 56(%rsp)
	je	.L4938
	movl	0(%r13), %r8d
	movq	%rax, %rdx
	movq	%r13, %rcx
	imull	4(%r13), %r8d
	imull	8(%r13), %r8d
	call	_ZL10stbi__getnP13stbi__contextPhi
	movl	592(%rsp), %eax
	testl	%eax, %eax
	je	.L4081
	movl	8(%r13), %edx
	cmpl	%edx, 592(%rsp)
	je	.L4081
	movl	4(%r13), %eax
	movq	%rdi, %rcx
	movl	592(%rsp), %r8d
	movl	%eax, 32(%rsp)
	movl	0(%r13), %r9d
	call	_ZL20stbi__convert_formatPhiijj.part.27
	movq	%rax, 56(%rsp)
	jmp	.L4081
.L4971:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %esi
	cmpl	$1, %esi
	movl	%esi, %ebx
	jle	.L5000
.L4451:
	movdqu	200(%r13), %xmm0
	movups	%xmm0, 184(%r13)
.L4456:
	movq	$0, 56(%rsp)
	leaq	.LC159(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L4940:
	movq	$0, 56(%rsp)
	leaq	.LC78(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L4227:
	testb	$-128, 24(%rbx)
	je	.L4230
	movslq	36(%rbx), %rax
	movl	$-1, 112(%rsp)
	testl	%eax, %eax
	js	.L4231
	testb	$1, 40(%rbx)
	je	.L4231
	movzbl	51(%rbx,%rax,4), %edi
	movb	$0, 51(%rbx,%rax,4)
	movl	%edi, 112(%rsp)
.L4231:
	leaq	48(%rbx), %rax
	movq	%rax, 18480(%rbx)
	jmp	.L4229
.L4225:
	movl	18524(%rbx), %edx
	xorl	%ecx, %ecx
	jmp	.L4226
.L4983:
	movq	$0, 56(%rsp)
	leaq	.LC148(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L4997:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	movzbl	%al, %edx
	cmpl	$4, %edx
	je	.L5001
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	jmp	.L4214
.L4999:
	leaq	1(%rdi), %rdx
	movq	%rdx, 184(%r13)
	movzbl	(%rdi), %eax
.L4189:
	cmpb	$71, %al
	je	.L4899
.L4927:
	movq	8(%rbx), %rcx
	jmp	.L4193
.L4984:
	movq	$0, 56(%rsp)
	leaq	.LC149(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L4993:
	movl	%edi, %edx
.L4928:
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	testl	%edx, %edx
	jne	.L4928
.L4244:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 56(%rsp)
	je	.L4930
	movl	112(%rsp), %edi
	cmpl	$-1, %edi
	je	.L4252
	movslq	36(%rbx), %rax
	movb	%dil, 51(%rbx,%rax,4)
.L4252:
	cmpq	%rcx, %r13
	je	.L4929
	movq	568(%rsp), %rax
	movl	(%rbx), %r9d
	movq	576(%rsp), %rdi
	testl	$-5, 592(%rsp)
	movl	%r9d, (%rax)
	movl	4(%rbx), %eax
	movl	%eax, (%rdi)
	je	.L4202
	movl	592(%rsp), %r8d
	movl	%eax, 32(%rsp)
	movl	$4, %edx
	call	_ZL20stbi__convert_formatPhiijj.part.27
	movq	%rax, 56(%rsp)
	jmp	.L4202
.L4223:
	leaq	.LC142(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
	jmp	.L4191
.L4549:
	xorl	%ebx, %ebx
	.p2align 4,,10
.L4278:
	movl	%ebp, %r15d
	subl	%ebx, %r15d
	testl	%r15d, %r15d
	jle	.L4279
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %esi
	cmpl	$128, %esi
	je	.L4278
	cmpl	$127, %esi
	jle	.L5002
	movl	$257, %edx
	subl	%esi, %edx
	cmpl	%edx, %r15d
	movl	%edx, 80(%rsp)
	jl	.L4283
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movl	80(%rsp), %edx
	addl	%edx, %ebx
	subl	$1, %edx
	leaq	4(%r14,%rdx,4), %rcx
	movq	%r14, %rdx
	.p2align 4,,10
.L4285:
	movb	%al, (%rdx)
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.L4285
	movl	$256, %eax
	subl	%esi, %eax
	cltq
	leaq	4(%r14,%rax,4), %r14
	jmp	.L4278
.L5002:
	addl	$1, %esi
	cmpl	%esi, %r15d
	jl	.L4283
	movzbl	%al, %eax
	addl	%esi, %ebx
	leaq	4(%r14,%rax,4), %rsi
	.p2align 4,,10
.L4284:
	movq	%r13, %rcx
	addq	$4, %r14
	call	_ZL10stbi__get8P13stbi__context
	movb	%al, -4(%r14)
	cmpq	%rsi, %r14
	jne	.L4284
	jmp	.L4278
.L4304:
	testl	%edx, %edx
	jne	.L4308
.L4307:
	cmpq	$0, 584(%rsp)
	je	.L4310
	movq	584(%rsp), %rax
	movl	$4, (%rax)
.L4310:
	movq	576(%rsp), %rax
	movl	52(%rsp), %edi
	movl	%r14d, (%rax)
	movq	568(%rsp), %rax
	movl	%edi, (%rax)
	jmp	.L4081
.L4934:
	leaq	.LC39(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4337
.L4267:
	movl	%eax, %edx
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	jmp	.L4268
.L4265:
	movl	%eax, %edx
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	jmp	.L4266
.L4263:
	movl	%eax, %edx
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	jmp	.L4264
.L4899:
	cmpq	%rsi, %rdx
	jb	.L5003
	movl	48(%r13), %r8d
	testl	%r8d, %r8d
	je	.L4927
	leaq	56(%r13), %rsi
	movq	40(%r13), %rcx
	movq	%rsi, %rdx
	movl	52(%r13), %r8d
	call	*16(%r13)
	leaq	57(%r13), %rdx
	testl	%eax, %eax
	jne	.L4196
	movl	$0, 48(%r13)
	movq	%rdx, %rsi
	movb	$0, 56(%r13)
.L4197:
	movzbl	56(%r13), %eax
	movq	%rsi, 192(%r13)
	movq	%rdx, 184(%r13)
.L4195:
	cmpb	$73, %al
	jne	.L4927
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$70, %al
	jne	.L4927
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$56, %al
	jne	.L4927
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	subl	$55, %eax
	testb	$-3, %al
	je	.L4198
	leaq	.LC128(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
	jmp	.L4191
	.p2align 4,,10
.L4982:
	movl	52(%rsp), %ecx
	xorl	%eax, %eax
	andl	$16, %edi
	movq	584(%rsp), %rdi
	setne	%al
	addl	$3, %eax
	testl	%ecx, %ecx
	movl	%eax, (%rdi)
	jle	.L4527
	leal	0(,%r12,4), %eax
	movq	72(%rsp), %rdi
	movl	$0, 80(%rsp)
	movq	%r13, %rbp
	cltq
	movq	%rax, 104(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
	leal	-1(%rsi), %eax
	leaq	(%rax,%rax,2), %rax
	leaq	5(%rdi,%rax), %rax
	movq	%rax, 96(%rsp)
	leal	-1(%r12), %eax
	leaq	4(,%rax,4), %rax
	movq	%rax, 120(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	180(%rsp), %rax
	movq	%rax, 128(%rsp)
.L4432:
	movq	72(%rsp), %rax
	movq	%rbp, %r14
	leaq	2(%rax), %rbx
	movq	120(%rsp), %rax
	addq	64(%rsp), %rax
	movq	%rax, 112(%rsp)
.L4431:
	movzbl	-1(%rbx), %eax
	cmpb	$1, %al
	je	.L4347
	jb	.L4348
	cmpb	$2, %al
	jne	.L4935
	testl	%r12d, %r12d
	jle	.L4350
	movq	64(%rsp), %rsi
	movl	%r12d, %edi
	jmp	.L4430
.L5006:
	leal	-127(%r15), %ebp
	addl	$-128, %r15d
	je	.L5004
.L4400:
	cmpl	%edi, %ebp
	jg	.L4934
	movzbl	(%rbx), %edx
	movq	%r14, %rcx
	movq	88(%rsp), %r8
	movl	%edx, %r13d
	call	_ZL13stbi__readvalP13stbi__contextiPh
	testq	%rax, %rax
	je	.L4337
	testl	%ebp, %ebp
	jle	.L4427
	movl	%r13d, %eax
	movl	%r13d, %edx
	movl	%r13d, %ecx
	andl	$64, %eax
	andl	$32, %edx
	andl	$16, %ecx
	testb	%r13b, %r13b
	js	.L4404
	testb	%cl, %cl
	jne	.L4405
	testb	%dl, %dl
	jne	.L4406
	testb	%al, %al
	jne	.L5005
.L4407:
	leal	-1(%rbp), %eax
	leaq	4(%rsi,%rax,4), %rsi
.L4427:
	subl	%ebp, %edi
	testl	%edi, %edi
	jle	.L4350
.L4430:
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpq	$0, 16(%r14)
	movzbl	%al, %r15d
	movq	%r15, %r13
	je	.L4397
	movq	40(%r14), %rcx
	call	*32(%r14)
	testl	%eax, %eax
	je	.L4396
	movl	48(%r14), %eax
	testl	%eax, %eax
	je	.L4934
.L4397:
	movq	192(%r14), %rax
	cmpq	%rax, 184(%r14)
	jnb	.L4934
.L4396:
	cmpl	$127, %r15d
	jg	.L5006
	leal	1(%r15), %ebp
	cmpl	%edi, %ebp
	jg	.L4934
	movzbl	(%rbx), %r15d
	leaq	4(%rsi,%r13,4), %r13
	jmp	.L4429
.L5007:
	addq	$4, %rsi
	cmpq	%r13, %rsi
	je	.L4427
.L4429:
	movq	%rsi, %r8
	movl	%r15d, %edx
	movq	%r14, %rcx
	call	_ZL13stbi__readvalP13stbi__contextiPh
	testq	%rax, %rax
	jne	.L5007
	jmp	.L4337
.L4974:
	cvttss2si	%xmm6, %edx
	jmp	.L4449
.L4192:
	cltq
	movq	%rdx, 184(%r13)
	addq	%rax, %rsi
	movzbl	56(%r13), %eax
	movq	%rsi, 192(%r13)
	jmp	.L4189
.L4331:
	movq	$0, 56(%rsp)
	leaq	.LC39(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L4994:
	leaq	.LC144(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
	jmp	.L4191
.L4989:
	movl	52(%rsp), %edx
	xorl	%r9d, %r9d
	movl	$8, %ecx
	call	_ZL17stbi__malloc_mad3iiii
	movq	600(%rsp), %rdi
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	movl	$16, (%rdi)
	je	.L4938
	movl	52(%rsp), %ebp
	imull	%r14d, %ebp
.L4275:
	movq	56(%rsp), %rbx
	leal	-1(%rbp), %eax
	xorl	%esi, %esi
	movl	%r14d, 104(%rsp)
	movl	%eax, 72(%rsp)
	leaq	4(,%rax,4), %r15
	salq	$2, %rax
	movq	%rsi, %r14
	movq	%rax, 80(%rsp)
	leaq	8(%rbx), %rax
	movq	%rax, 88(%rsp)
.L4298:
	cmpl	%r14d, %r12d
	jg	.L4288
	cmpl	$3, %r14d
	sete	%cl
	cmpb	$0, 96(%rsp)
	je	.L4289
	leaq	(%rbx,%r14,2), %r8
	movzbl	%cl, %ecx
	movl	%ecx, %eax
	negl	%eax
	testl	%ebp, %ebp
	jle	.L4290
	movq	80(%rsp), %rdi
	leaq	(%r14,%rdi), %rcx
	movq	88(%rsp), %rdi
	leaq	(%rdi,%rcx,2), %rcx
.L4291:
	movw	%ax, (%r8)
	addq	$8, %r8
	cmpq	%rcx, %r8
	jne	.L4291
.L4290:
	addq	$1, %r14
	addq	$1, %r15
	cmpq	$4, %r14
	jne	.L4298
	movl	104(%rsp), %r14d
	jmp	.L4286
.L4288:
	movq	600(%rsp), %rax
	cmpl	$16, (%rax)
	je	.L5008
	cmpl	$16, 64(%rsp)
	leaq	(%r14,%rbx), %rsi
	je	.L5009
	testl	%ebp, %ebp
	jle	.L4290
	leaq	(%r15,%rbx), %rdi
.L4297:
	movq	%r13, %rcx
	addq	$4, %rsi
	call	_ZL10stbi__get8P13stbi__context
	movb	%al, -4(%rsi)
	cmpq	%rdi, %rsi
	jne	.L4297
	jmp	.L4290
.L4289:
	leaq	(%r14,%rbx), %rax
	negl	%ecx
	testl	%ebp, %ebp
	jle	.L4290
	leaq	(%r15,%rbx), %r8
.L4292:
	movb	%cl, (%rax)
	addq	$4, %rax
	cmpq	%r8, %rax
	jne	.L4292
	jmp	.L4290
.L4987:
	movq	$0, 56(%rsp)
	leaq	.LC152(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L4977:
	movq	$0, 56(%rsp)
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4202
.L4985:
	movq	$0, 56(%rsp)
	leaq	.LC150(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L5000:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	andl	$-9, %eax
	cmpl	$1, %esi
	je	.L5010
	subl	$2, %eax
	cmpb	$1, %al
	ja	.L4451
	movl	$9, %edx
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
.L4457:
	movq	%r13, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	testl	%eax, %eax
	jle	.L4451
	movq	%r13, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	testl	%eax, %eax
	jle	.L4451
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	leal	-8(%rax), %edx
	andb	$-9, %dl
	setne	%dl
	andb	%dl, %bl
	movb	%bl, 64(%rsp)
	jne	.L4451
	leal	-15(%rax), %r8d
	movq	208(%r13), %rdx
	cmpb	$1, %r8b
	movq	200(%r13), %rcx
	jbe	.L4461
	cmpb	$8, %al
	je	.L4461
	subl	$24, %eax
	testb	$-9, %al
	jne	.L4462
.L4461:
	movq	%rdx, 192(%r13)
	movq	%rcx, 184(%r13)
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	movl	%eax, %r15d
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	movzbl	%al, %eax
	movl	%eax, 80(%rsp)
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	movzbl	%al, %r12d
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	movl	%eax, %ebp
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	movl	%eax, 88(%rsp)
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	movl	%eax, %esi
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	movl	%eax, 52(%rsp)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	movl	%eax, %r14d
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	movzbl	%al, %eax
	movl	%eax, %ebx
	movl	%eax, 112(%rsp)
	call	_ZL10stbi__get8P13stbi__context
	cmpl	$7, %r12d
	movl	$0, 208(%rsp)
	movb	%al, 96(%rsp)
	jg	.L4463
	movl	$0, 72(%rsp)
.L4464:
	movl	80(%rsp), %eax
	testl	%eax, %eax
	je	.L4465
	leal	-8(%rsi), %eax
	cmpb	$24, %al
	ja	.L4466
	leaq	.L4468(%rip), %rdx
	movzbl	%al, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L4468:
	.long	.L4566-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4565-.L4468
	.long	.L4565-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4470-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4466-.L4468
	.long	.L4470-.L4468
	.text
.L4565:
	movl	$1, %esi
	movl	$3, %ebx
.L4469:
	movq	568(%rsp), %rax
	movl	52(%rsp), %edx
	cmpq	$0, 584(%rsp)
	movl	%edx, (%rax)
	movq	576(%rsp), %rax
	movl	%r14d, (%rax)
	je	.L4476
	movq	584(%rsp), %rax
	movl	%ebx, (%rax)
.L4476:
	movl	52(%rsp), %ecx
	xorl	%r9d, %r9d
	movl	%ebx, %r8d
	movl	%r14d, %edx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L4940
	movl	52(%rsp), %ecx
	xorl	%r9d, %r9d
	movl	%r14d, %edx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	.L5011
	movzbl	96(%rsp), %eax
	movzbl	%r15b, %edx
	movq	%r13, %rcx
	andl	$32, %eax
	movb	%al, 120(%rsp)
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movl	80(%rsp), %edx
	orl	72(%rsp), %edx
	je	.L5012
	movl	80(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L4570
	testl	%ebp, %ebp
	jns	.L4487
	movq	192(%r13), %rax
	movq	%rax, 184(%r13)
.L4488:
	movl	88(%rsp), %ecx
	xorl	%r8d, %r8d
	movl	%ebx, %edx
	call	_ZL17stbi__malloc_mad2iii
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L5013
	testl	%esi, %esi
	je	.L4490
	cmpl	$3, %ebx
	je	.L4491
	leaq	.LC3(%rip), %rdx
	movl	$5442, %r8d
	leaq	.LC157(%rip), %rcx
	call	_assert
.L4491:
	movl	88(%rsp), %r10d
	testl	%r10d, %r10d
	jle	.L4480
	movslq	%ebx, %rax
	movq	%rbp, %r12
	xorl	%r15d, %r15d
	movq	%rax, 96(%rsp)
	movl	$138547333, %r9d
.L4492:
	movq	%r13, %rcx
	movl	%r9d, 104(%rsp)
	addl	$1, %r15d
	call	_ZL13stbi__get16leP13stbi__context
	movl	104(%rsp), %r9d
	movl	%eax, %r8d
	sarl	$10, %eax
	andl	$31, %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	mull	%r9d
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	movb	%al, (%r12)
	movl	%r8d, %eax
	andl	$31, %r8d
	sarl	$5, %eax
	andl	$31, %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	mull	%r9d
	movl	%ecx, %eax
	movl	%r8d, %ecx
	sall	$8, %ecx
	subl	%r8d, %ecx
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	movb	%al, 1(%r12)
	movl	%ecx, %eax
	mull	%r9d
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	movb	%al, 2(%r12)
	addq	96(%rsp), %r12
	cmpl	%r15d, 88(%rsp)
	jne	.L4492
.L4480:
	movl	52(%rsp), %eax
	imull	%r14d, %eax
	testl	%eax, %eax
	movl	%eax, 96(%rsp)
	jle	.L4493
	leal	-1(%rbx), %edx
	xorl	%ecx, %ecx
	movl	%esi, 144(%rsp)
	xorl	%r12d, %r12d
	movl	%r14d, 148(%rsp)
	xorl	%r15d, %r15d
	movl	%ebx, %r14d
	movl	$1, %eax
	movl	$0, 104(%rsp)
	movl	%ecx, %ebx
	movq	56(%rsp), %rsi
	movq	%rdx, 136(%rsp)
	movl	%edi, 152(%rsp)
	jmp	.L4508
.L5017:
	testl	%ebx, %ebx
	je	.L5014
	movl	104(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L4494
	movzbl	208(%rsp), %r11d
	testl	%eax, %eax
	jne	.L5015
.L4505:
	movslq	%r15d, %rax
	cmpl	$1, %r14d
	movb	%r11b, (%rsi,%rax)
	movzbl	209(%rsp), %edx
	je	.L4507
.L4535:
	leal	1(%r15), %eax
	cmpl	$2, %r14d
	cltq
	movb	%dl, (%rsi,%rax)
	je	.L4507
	movzbl	210(%rsp), %edx
	leal	2(%r15), %eax
	cmpl	$3, %r14d
	cltq
	movb	%dl, (%rsi,%rax)
	je	.L4507
	movzbl	211(%rsp), %edx
	leal	3(%r15), %eax
	cltq
	movb	%dl, (%rsi,%rax)
.L4507:
	subl	$1, %ebx
	addl	$1, %r12d
	addl	%r14d, %r15d
	xorl	%eax, %eax
	cmpl	96(%rsp), %r12d
	je	.L5016
.L4508:
	movl	72(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L5017
.L4494:
	movl	80(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L5018
	movl	144(%rsp), %edx
	testl	%edx, %edx
	je	.L4503
	cmpl	$3, %r14d
	je	.L4504
	leaq	.LC3(%rip), %rdx
	movl	$5491, %r8d
	leaq	.LC157(%rip), %rcx
	call	_assert
.L4504:
	movq	%r13, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movl	$138547333, %r9d
	movl	%eax, %r8d
	sarl	$10, %eax
	andl	$31, %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	mull	%r9d
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	movl	%eax, %r11d
	movb	%al, 208(%rsp)
	movl	%r8d, %eax
	andl	$31, %r8d
	sarl	$5, %eax
	andl	$31, %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	mull	%r9d
	movl	%ecx, %eax
	movl	%r8d, %ecx
	sall	$8, %ecx
	subl	%r8d, %ecx
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	movb	%al, 209(%rsp)
	movl	%ecx, %eax
	mull	%r9d
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	movb	%al, 210(%rsp)
	jmp	.L4505
.L4566:
	xorl	%esi, %esi
	movb	$1, 64(%rsp)
	movl	$1, %ebx
	jmp	.L4469
.L4470:
	movzbl	%sil, %ebx
	movb	$1, 64(%rsp)
	xorl	%esi, %esi
	sarl	$3, %ebx
	jmp	.L4469
.L4466:
	movq	$0, 56(%rsp)
	leaq	.LC155(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L4463:
	subl	$8, %r12d
	movl	$1, 72(%rsp)
	jmp	.L4464
.L4465:
	subl	$8, %ebx
	cmpb	$24, %bl
	ja	.L4466
	leaq	.L4471(%rip), %rcx
	movzbl	%bl, %ebx
	movslq	(%rcx,%rbx,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L4471:
	.long	.L4566-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4565-.L4471
	.long	.L4473-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4474-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4466-.L4471
	.long	.L4474-.L4471
	.text
.L4474:
	movl	112(%rsp), %ebx
	sarl	$3, %ebx
	testl	%ebx, %ebx
	je	.L4466
	xorl	%esi, %esi
	movb	$1, 64(%rsp)
	jmp	.L4469
.L4473:
	movzbl	64(%rsp), %edx
	xorl	%esi, %esi
	cmpl	$3, %r12d
	movl	$1, %eax
	setne	%sil
	cmpl	$3, %r12d
	leal	2(%rsi), %ebx
	cmove	%eax, %edx
	movb	%dl, 64(%rsp)
	jmp	.L4469
.L5016:
	movl	%r14d, %ebx
	movl	152(%rsp), %edi
	movl	148(%rsp), %r14d
.L4493:
	cmpb	$0, 120(%rsp)
	jne	.L4509
	testl	%r14d, %r14d
	jle	.L4509
	movl	52(%rsp), %r11d
	leal	-1(%r14), %eax
	movl	%eax, 80(%rsp)
	imull	%ebx, %r11d
	testl	%r11d, %r11d
	jle	.L4509
	movq	56(%rsp), %r10
	leal	-1(%r11), %eax
	xorl	%r15d, %r15d
	movl	%edi, 72(%rsp)
	movl	%eax, 96(%rsp)
	leaq	1(%r10,%rax), %rax
	movq	%rax, 104(%rsp)
	leal	-2(%r11), %eax
	movl	%eax, 112(%rsp)
	leal	-3(%r11), %eax
	movl	%eax, 120(%rsp)
	leal	-4(%r11), %eax
	movl	%eax, 128(%rsp)
	leal	-5(%r11), %eax
	movl	%eax, 136(%rsp)
	leal	-6(%r11), %eax
	movl	%eax, 144(%rsp)
	leal	-7(%r11), %eax
	movl	%eax, 148(%rsp)
	leal	-8(%r11), %eax
	movl	%eax, 152(%rsp)
.L4519:
	movl	80(%rsp), %esi
	movl	52(%rsp), %eax
	subl	%r15d, %esi
	imull	%eax, %esi
	movl	%eax, %r12d
	imull	%r15d, %r12d
	imull	%ebx, %esi
	imull	%ebx, %r12d
	movslq	%esi, %r9
	leaq	16(%r9), %rax
	movslq	%r12d, %rcx
	cmpq	%rax, %rcx
	leaq	16(%rcx), %rax
	setge	%dl
	cmpq	%rax, %r9
	setge	%al
	orb	%al, %dl
	leaq	(%r10,%rcx), %rax
	je	.L4510
	cmpl	$19, %r11d
	jbe	.L4510
	movl	96(%rsp), %edi
	movq	%rax, %r13
	negq	%r13
	andl	$15, %r13d
	leal	15(%r13), %edx
	cmpl	%edi, %edx
	movl	%edi, %r8d
	ja	.L4572
	testl	%r13d, %r13d
	je	.L4573
	movzbl	(%rax), %edx
	cmpl	$1, %r13d
	movb	%dl, 88(%rsp)
	leaq	(%r10,%r9), %rdx
	movzbl	(%rdx), %edi
	movb	%dil, (%rax)
	movzbl	88(%rsp), %eax
	movb	%al, (%rdx)
	leal	1(%r12), %edx
	leal	1(%rsi), %eax
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$2, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	2(%r12), %edx
	movb	%r8b, (%rax)
	leal	2(%rsi), %eax
	movl	112(%rsp), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$3, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	3(%r12), %edx
	movb	%r8b, (%rax)
	leal	3(%rsi), %eax
	movl	120(%rsp), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$4, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	4(%r12), %edx
	movb	%r8b, (%rax)
	leal	4(%rsi), %eax
	movl	128(%rsp), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$5, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	5(%r12), %edx
	movb	%r8b, (%rax)
	leal	5(%rsi), %eax
	movl	136(%rsp), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$6, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	6(%r12), %edx
	movb	%r8b, (%rax)
	leal	6(%rsi), %eax
	movl	144(%rsp), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$7, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	7(%r12), %edx
	movb	%r8b, (%rax)
	leal	7(%rsi), %eax
	movl	148(%rsp), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$8, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	8(%r12), %edx
	movb	%r8b, (%rax)
	leal	8(%rsi), %eax
	movl	152(%rsp), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$9, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	9(%r12), %edx
	movb	%r8b, (%rax)
	leal	9(%rsi), %eax
	leal	-9(%r11), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$10, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	10(%r12), %edx
	movb	%r8b, (%rax)
	leal	10(%rsi), %eax
	leal	-10(%r11), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$11, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	11(%r12), %edx
	movb	%r8b, (%rax)
	leal	11(%rsi), %eax
	leal	-11(%r11), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$12, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	12(%r12), %edx
	movb	%r8b, (%rax)
	leal	12(%rsi), %eax
	leal	-12(%r11), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$13, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	13(%r12), %edx
	movb	%r8b, (%rax)
	leal	13(%rsi), %eax
	leal	-13(%r11), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	cmpl	$14, %r13d
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	14(%r12), %edx
	movb	%r8b, (%rax)
	leal	14(%rsi), %eax
	leal	-14(%r11), %r8d
	je	.L4512
	movslq	%edx, %rdx
	cltq
	addq	%r10, %rdx
	addq	%r10, %rax
	movzbl	(%rdx), %r8d
	movzbl	(%rax), %edi
	movb	%dil, (%rdx)
	leal	15(%r12), %edx
	movb	%r8b, (%rax)
	leal	15(%rsi), %eax
	leal	-15(%r11), %r8d
.L4512:
	movl	%r11d, %r12d
	movl	72(%rsp), %edi
	movl	%r13d, %esi
	subl	%r13d, %r12d
	addq	%rsi, %r9
	addq	%rsi, %rcx
	movl	%r12d, 88(%rsp)
	shrl	$4, %r12d
	addq	%r10, %rcx
	xorl	%esi, %esi
	movl	%r12d, %r13d
	leaq	(%r10,%r9), %r12
	xorl	%r9d, %r9d
	.p2align 4,,10
.L4514:
	movdqa	(%rcx,%r9), %xmm0
	addl	$1, %esi
	movdqu	(%r12,%r9), %xmm1
	movaps	%xmm1, (%rcx,%r9)
	movups	%xmm0, (%r12,%r9)
	addq	$16, %r9
	cmpl	%esi, %r13d
	ja	.L4514
	movl	88(%rsp), %r9d
	movl	%edi, 72(%rsp)
	movl	%r9d, %ecx
	andl	$-16, %ecx
	leal	(%rcx,%rdx), %r12d
	subl	%ecx, %r8d
	cmpl	%r9d, %ecx
	leal	(%rcx,%rax), %esi
	je	.L4517
	movslq	%r12d, %rcx
	movslq	%esi, %r9
.L4511:
	leaq	(%r10,%r9), %rax
	.p2align 4,,10
.L4516:
	movq	%rax, %rdx
	movzbl	(%rax), %r12d
	addq	$1, %rax
	subq	%r9, %rdx
	movzbl	(%rdx,%rcx), %esi
	movb	%r12b, (%rdx,%rcx)
	movb	%sil, -1(%rax)
	subl	$1, %r8d
	jne	.L4516
.L4936:
	movl	%edi, 72(%rsp)
.L4517:
	addl	$1, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%eax, %r14d
	jg	.L4519
	movl	72(%rsp), %edi
.L4509:
	testq	%rbp, %rbp
	je	.L4482
	movq	%rbp, %rcx
	call	free
.L4482:
	cmpl	$2, %ebx
	jle	.L4520
	cmpb	$0, 64(%rsp)
	jne	.L5019
.L4520:
	movl	592(%rsp), %eax
	testl	%eax, %eax
	je	.L4081
	cmpl	%ebx, 592(%rsp)
	je	.L4081
	movl	52(%rsp), %r9d
	movl	%r14d, 32(%rsp)
	movl	%ebx, %edx
	movl	592(%rsp), %r8d
	movq	56(%rsp), %rcx
	call	_ZL20stbi__convert_formatPhiijj.part.27
	movq	%rax, 56(%rsp)
	jmp	.L4081
.L5018:
	cmpl	$8, 112(%rsp)
	movq	%r13, %rcx
	je	.L5020
	call	_ZL13stbi__get16leP13stbi__context
.L4499:
	cmpl	%eax, 88(%rsp)
	jle	.L4571
	imull	%r14d, %eax
	movslq	%eax, %rdx
	addq	%rbp, %rdx
.L4500:
	movzbl	(%rdx), %r8d
	movslq	%r15d, %rcx
	addq	%rsi, %rcx
	cmpl	$1, %r14d
	movb	%r8b, 208(%rsp)
	je	.L5021
	leal	1(%rax), %edx
	cmpl	$2, %r14d
	movslq	%edx, %rdx
	movzbl	0(%rbp,%rdx), %edx
	movb	%dl, 209(%rsp)
	je	.L4502
	leal	2(%rax), %r11d
	cmpl	$3, %r14d
	movslq	%r11d, %r11
	movzbl	0(%rbp,%r11), %r11d
	movb	%r11b, 210(%rsp)
	je	.L4502
	addl	$3, %eax
	cltq
	movzbl	0(%rbp,%rax), %eax
	movb	%al, 211(%rsp)
.L4502:
	movb	%r8b, (%rcx)
	jmp	.L4535
.L5014:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movl	%eax, %ebx
	movzbl	%al, %eax
	andl	$127, %ebx
	sarl	$7, %eax
	addl	$1, %ebx
	movl	%eax, 104(%rsp)
	jmp	.L4494
.L5012:
	testl	%esi, %esi
	jne	.L4570
	testl	%r14d, %r14d
	jle	.L4482
	movl	52(%rsp), %r12d
	imull	%ebx, %r12d
	cmpb	$0, 120(%rsp)
	je	.L4483
	movq	56(%rsp), %r15
	movslq	%r12d, %rbp
.L4485:
	movq	%r15, %rdx
	movl	%r12d, %r8d
	movq	%r13, %rcx
	call	_ZL10stbi__getnP13stbi__contextPhi
	addl	$1, %esi
	addq	%rbp, %r15
	cmpl	%r14d, %esi
	jne	.L4485
	jmp	.L4482
.L4503:
	movq	136(%rsp), %rax
	leaq	209(%rsp), %rdi
	movl	%ebx, 156(%rsp)
	leaq	208(%rsp), %r8
	movq	%r8, %rbx
	addq	%rdi, %rax
	movq	%rax, 128(%rsp)
.L4506:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpq	128(%rsp), %rdi
	movb	%al, (%rbx)
	movq	%rdi, %rbx
	je	.L4907
	addq	$1, %rdi
	jmp	.L4506
.L4907:
	movl	156(%rsp), %ebx
	movzbl	208(%rsp), %r11d
	jmp	.L4505
.L4570:
	xorl	%ebp, %ebp
	jmp	.L4480
.L4571:
	xorl	%eax, %eax
	movq	%rbp, %rdx
	jmp	.L4500
.L4510:
	movq	104(%rsp), %rdi
	leaq	(%rdi,%rcx), %r12
	movl	72(%rsp), %edi
.L4518:
	movq	%rax, %rdx
	movzbl	(%rax), %r8d
	addq	$1, %rax
	subq	%rcx, %rdx
	movzbl	(%rdx,%r9), %esi
	movb	%sil, -1(%rax)
	cmpq	%r12, %rax
	movb	%r8b, (%rdx,%r9)
	jne	.L4518
	jmp	.L4936
.L4995:
	leaq	.LC145(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
	jmp	.L4191
.L4986:
	movq	$0, 56(%rsp)
	leaq	.LC151(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L4276:
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	jmp	.L4277
.L5020:
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	jmp	.L4499
.L5001:
	call	_ZL10stbi__get8P13stbi__context
	movq	%r13, %rcx
	movzbl	%al, %eax
	movl	%eax, 40(%rbx)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%r13, %rcx
	movl	%eax, 44(%rbx)
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	movl	%eax, 36(%rbx)
	jmp	.L4255
.L5009:
	testl	%ebp, %ebp
	jle	.L4290
	leaq	(%r15,%rbx), %rdi
.L4296:
	movq	%r13, %rcx
	addq	$4, %rsi
	call	_ZL13stbi__get16beP13stbi__context
	movb	%ah, -4(%rsi)
	cmpq	%rdi, %rsi
	jne	.L4296
	jmp	.L4290
.L4283:
	movq	56(%rsp), %rcx
	call	free
	leaq	.LC94(%rip), %rax
	movq	$0, 56(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L5003:
	leaq	1(%rdx), %rax
	movq	%rax, 184(%r13)
	movzbl	(%rdx), %eax
	jmp	.L4195
.L5019:
	movl	52(%rsp), %edx
	imull	%r14d, %edx
	testl	%edx, %edx
	jle	.L4520
	movq	56(%rsp), %rax
	movslq	%ebx, %rcx
.L4521:
	movzbl	(%rax), %r8d
	addl	$1, %edi
	movzbl	2(%rax), %r9d
	movb	%r8b, 2(%rax)
	movb	%r9b, (%rax)
	addq	%rcx, %rax
	cmpl	%edx, %edi
	jne	.L4521
	jmp	.L4520
.L5013:
	movq	56(%rsp), %rcx
	call	free
.L4938:
	movq	$0, 56(%rsp)
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L4988:
	movq	$0, 56(%rsp)
	leaq	.LC97(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L5008:
	leaq	(%r14,%r14), %rsi
	addq	%rbx, %rsi
	testl	%ebp, %ebp
	jle	.L4290
	movq	80(%rsp), %rax
	leaq	(%r14,%rax), %rdi
	addq	%rdi, %rdi
	addq	88(%rsp), %rdi
.L4294:
	movq	%r13, %rcx
	addq	$8, %rsi
	call	_ZL13stbi__get16beP13stbi__context
	movw	%ax, -8(%rsi)
	cmpq	%rdi, %rsi
	jne	.L4294
	jmp	.L4290
.L4572:
	movl	%r11d, %r8d
	movl	72(%rsp), %edi
	jmp	.L4511
.L4196:
	cltq
	addq	%rax, %rsi
	jmp	.L4197
.L4483:
	movl	52(%rsp), %eax
	leal	-1(%r14), %r15d
	imull	%eax, %r15d
	movl	%eax, %ebp
	negl	%ebp
	imull	%ebx, %ebp
	imull	%ebx, %r15d
	movslq	%ebp, %rbp
	movslq	%r15d, %r15
	addq	56(%rsp), %r15
.L4486:
	movq	%r15, %rdx
	movl	%r12d, %r8d
	movq	%r13, %rcx
	addl	$1, %esi
	addq	%rbp, %r15
	call	_ZL10stbi__getnP13stbi__contextPhi
	cmpl	%esi, %r14d
	jne	.L4486
	jmp	.L4482
.L4487:
	movl	%ebp, %edx
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	jmp	.L4488
.L4348:
	testl	%r12d, %r12d
	jle	.L4350
	movzbl	(%rbx), %edi
	movq	64(%rsp), %rsi
.L4352:
	movq	%rsi, %r8
	movl	%edi, %edx
	movq	%r14, %rcx
	call	_ZL13stbi__readvalP13stbi__contextiPh
	testq	%rax, %rax
	je	.L4337
	addq	$4, %rsi
	cmpq	112(%rsp), %rsi
	jne	.L4352
.L4350:
	addq	$3, %rbx
	cmpq	96(%rsp), %rbx
	jne	.L4431
	addl	$1, 80(%rsp)
	movq	%r14, %rbp
	movl	80(%rsp), %eax
	movq	104(%rsp), %rsi
	addq	%rsi, 64(%rsp)
	cmpl	%eax, 52(%rsp)
	jne	.L4432
	jmp	.L4527
.L4990:
	testl	%ebp, %ebp
	jle	.L4301
	movq	56(%rsp), %rdi
	movl	72(%rsp), %eax
	movss	.LC153(%rip), %xmm4
	movss	.LC22(%rip), %xmm3
	movq	%rdi, %rcx
	leaq	8(%rdi,%rax,8), %r8
.L4303:
	movzwl	6(%rcx), %eax
	leal	-1(%rax), %r9d
	cmpw	$-3, %r9w
	ja	.L4302
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm3, %xmm5
	movzwl	(%rcx), %eax
	movaps	%xmm3, %xmm1
	pxor	%xmm2, %xmm2
	divss	%xmm4, %xmm0
	cvtsi2ss	%eax, %xmm2
	divss	%xmm0, %xmm5
	subss	%xmm5, %xmm1
	mulss	%xmm5, %xmm2
	movaps	%xmm5, %xmm0
	mulss	%xmm4, %xmm1
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	pxor	%xmm2, %xmm2
	movw	%ax, (%rcx)
	movzwl	2(%rcx), %eax
	cvtsi2ss	%eax, %xmm2
	mulss	%xmm5, %xmm2
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	pxor	%xmm2, %xmm2
	movw	%ax, 2(%rcx)
	movzwl	4(%rcx), %eax
	cvtsi2ss	%eax, %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movw	%ax, 4(%rcx)
.L4302:
	addq	$8, %rcx
	cmpq	%rcx, %r8
	jne	.L4303
.L4301:
	testl	%edx, %edx
	je	.L4307
.L4534:
	movl	52(%rsp), %r9d
	movl	%r14d, 32(%rsp)
	movl	$4, %edx
	movl	592(%rsp), %r8d
	movq	56(%rsp), %rcx
	call	_ZL22stbi__convert_format16Ptiijj.part.31
	movq	%rax, 56(%rsp)
	jmp	.L4309
.L5021:
	movb	%r8b, (%rcx)
	jmp	.L4507
.L4347:
	testl	%r12d, %r12d
	jle	.L4350
	movq	64(%rsp), %rsi
	movl	%r12d, %edi
	movq	88(%rsp), %rbp
.L4394:
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpq	$0, 16(%r14)
	movl	%eax, %r13d
	je	.L4356
	movq	40(%r14), %rcx
	call	*32(%r14)
	testl	%eax, %eax
	je	.L4355
	movl	48(%r14), %edx
	testl	%edx, %edx
	je	.L4934
.L4356:
	movq	192(%r14), %rax
	cmpq	%rax, 184(%r14)
	jnb	.L4934
.L4355:
	movzbl	(%rbx), %edx
	movzbl	%r13b, %eax
	movq	%rbp, %r8
	movq	%r14, %rcx
	cmpl	%edi, %eax
	cmovg	%edi, %r13d
	movl	%edx, %r15d
	call	_ZL13stbi__readvalP13stbi__contextiPh
	testq	%rax, %rax
	je	.L4337
	movzbl	%r13b, %edx
	testl	%edx, %edx
	je	.L4359
	movl	%r15d, %eax
	movl	%r15d, %ecx
	movl	%r15d, %r8d
	andl	$64, %eax
	andl	$32, %ecx
	andl	$16, %r8d
	testb	%r15b, %r15b
	js	.L4360
	testb	%r8b, %r8b
	jne	.L4361
	testb	%cl, %cl
	jne	.L4362
	testb	%al, %al
	je	.L4363
	leal	-1(%rdx), %ecx
	leaq	1(%rsi), %rax
	leaq	5(%rsi,%rcx,4), %r8
.L4364:
	movzbl	177(%rsp), %r9d
	addq	$4, %rax
	movb	%r9b, -4(%rax)
	cmpq	%r8, %rax
	jne	.L4364
.L4931:
	leaq	4(%rsi,%rcx,4), %rsi
.L4359:
	subl	%edx, %edi
	testl	%edi, %edi
	jg	.L4394
	jmp	.L4350
.L4360:
	testb	%r8b, %r8b
	jne	.L4375
	testb	%cl, %cl
	jne	.L4376
	testb	%al, %al
	leal	-1(%rdx), %eax
	leaq	4(%rsi,%rax,4), %rax
	jne	.L4379
.L4378:
	movzbl	176(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	cmpq	%rax, %rsi
	jne	.L4378
	jmp	.L4359
.L4379:
	movzbl	176(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	177(%rsp), %ecx
	movb	%cl, -3(%rsi)
	cmpq	%rax, %rsi
	jne	.L4379
	jmp	.L4359
.L4375:
	testb	%cl, %cl
	jne	.L4383
	testb	%al, %al
	leal	-1(%rdx), %eax
	leaq	4(%rsi,%rax,4), %rax
	jne	.L4386
.L4385:
	movzbl	176(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	179(%rsp), %ecx
	movb	%cl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L4385
	jmp	.L4359
.L4386:
	movzbl	176(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	177(%rsp), %ecx
	movb	%cl, -3(%rsi)
	movzbl	179(%rsp), %ecx
	movb	%cl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L4386
	jmp	.L4359
.L4361:
	testb	%cl, %cl
	jne	.L4368
	testb	%al, %al
	jne	.L4369
	leal	-1(%rdx), %ecx
	leaq	3(%rsi), %rax
	leaq	7(%rsi,%rcx,4), %r8
.L4370:
	movzbl	179(%rsp), %r9d
	addq	$4, %rax
	movb	%r9b, -4(%rax)
	cmpq	%r8, %rax
	jne	.L4370
	jmp	.L4931
.L4383:
	testb	%al, %al
	jne	.L4387
	leal	-1(%rdx), %eax
	leaq	4(%rsi,%rax,4), %rax
.L4388:
	movzbl	176(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	178(%rsp), %ecx
	movb	%cl, -2(%rsi)
	movzbl	179(%rsp), %ecx
	movb	%cl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L4388
	jmp	.L4359
.L4362:
	testb	%al, %al
	jne	.L4365
	leal	-1(%rdx), %ecx
	leaq	2(%rsi), %rax
	leaq	6(%rsi,%rcx,4), %r8
.L4366:
	movzbl	178(%rsp), %r9d
	addq	$4, %rax
	movb	%r9b, -4(%rax)
	cmpq	%r8, %rax
	jne	.L4366
	jmp	.L4931
.L4376:
	testb	%al, %al
	leal	-1(%rdx), %eax
	leaq	4(%rsi,%rax,4), %rax
	jne	.L4382
.L4381:
	movzbl	176(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	178(%rsp), %ecx
	movb	%cl, -2(%rsi)
	cmpq	%rax, %rsi
	jne	.L4381
	jmp	.L4359
.L4382:
	movzbl	176(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	177(%rsp), %ecx
	movb	%cl, -3(%rsi)
	movzbl	178(%rsp), %ecx
	movb	%cl, -2(%rsi)
	cmpq	%rax, %rsi
	jne	.L4382
	jmp	.L4359
.L4368:
	testb	%al, %al
	jne	.L4372
	leal	-1(%rdx), %ecx
	leaq	2(%rsi), %rax
	leaq	6(%rsi,%rcx,4), %r8
.L4373:
	movzbl	178(%rsp), %r9d
	addq	$4, %rax
	movb	%r9b, -4(%rax)
	movzbl	179(%rsp), %r9d
	movb	%r9b, -3(%rax)
	cmpq	%r8, %rax
	jne	.L4373
	jmp	.L4931
.L4387:
	movzbl	%r13b, %eax
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rax, %rbp
	setnb	%cl
	cmpq	128(%rsp), %rsi
	setnb	%al
	orb	%al, %cl
	je	.L4552
	cmpb	$15, %r13b
	jbe	.L4552
	movzbl	176(%rsp), %eax
	movl	%edx, %r8d
	xorl	%ecx, %ecx
	shrl	$4, %r8d
	movd	%eax, %xmm0
	movzbl	177(%rsp), %eax
	punpcklbw	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	movdqa	%xmm0, %xmm4
	movd	%eax, %xmm1
	movzbl	178(%rsp), %eax
	punpcklbw	%xmm1, %xmm1
	punpcklwd	%xmm1, %xmm1
	pshufd	$0, %xmm1, %xmm1
	movd	%eax, %xmm2
	movzbl	179(%rsp), %eax
	punpcklbw	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm2
	pshufd	$0, %xmm2, %xmm3
	punpcklbw	%xmm3, %xmm4
	punpckhbw	%xmm3, %xmm0
	movdqa	%xmm1, %xmm3
	movdqa	%xmm4, %xmm5
	movd	%eax, %xmm2
	movq	%rsi, %rax
	punpcklbw	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm2
	pshufd	$0, %xmm2, %xmm2
	punpcklbw	%xmm2, %xmm3
	punpckhbw	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpcklbw	%xmm3, %xmm5
	punpckhbw	%xmm3, %xmm4
	punpcklbw	%xmm1, %xmm2
	punpckhbw	%xmm1, %xmm0
.L4391:
	addl	$1, %ecx
	movups	%xmm5, (%rax)
	addq	$64, %rax
	movups	%xmm4, -48(%rax)
	movups	%xmm2, -32(%rax)
	movups	%xmm0, -16(%rax)
	cmpl	%ecx, %r8d
	ja	.L4391
	movl	%edx, %ecx
	andl	$-16, %ecx
	movl	%ecx, %eax
	cmpl	%edx, %ecx
	leaq	(%rsi,%rax,4), %rax
	je	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, (%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 1(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 2(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 3(%rax)
	leal	1(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 4(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 5(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 6(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 7(%rax)
	leal	2(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 8(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 9(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 10(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 11(%rax)
	leal	3(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 12(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 13(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 14(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 15(%rax)
	leal	4(%rcx), %r8d
	cmpl	%edx, %r8d
	jge	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 16(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 17(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 18(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 19(%rax)
	leal	5(%rcx), %r8d
	cmpl	%edx, %r8d
	jge	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 20(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 21(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 22(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 23(%rax)
	leal	6(%rcx), %r8d
	cmpl	%edx, %r8d
	jge	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 24(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 25(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 26(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 27(%rax)
	leal	7(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 28(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 29(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 30(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 31(%rax)
	leal	8(%rcx), %r8d
	cmpl	%edx, %r8d
	jge	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 32(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 33(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 34(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 35(%rax)
	leal	9(%rcx), %r8d
	cmpl	%edx, %r8d
	jge	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 36(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 37(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 38(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 39(%rax)
	leal	10(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 40(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 41(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 42(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 43(%rax)
	leal	11(%rcx), %r8d
	cmpl	%edx, %r8d
	jge	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 44(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 45(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 46(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 47(%rax)
	leal	12(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L4363
	movzbl	176(%rsp), %r8d
	movb	%r8b, 48(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 49(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 50(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 51(%rax)
	leal	13(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L4363
	movzbl	176(%rsp), %r8d
	addl	$14, %ecx
	cmpl	%ecx, %edx
	movb	%r8b, 52(%rax)
	movzbl	177(%rsp), %r8d
	movb	%r8b, 53(%rax)
	movzbl	178(%rsp), %r8d
	movb	%r8b, 54(%rax)
	movzbl	179(%rsp), %r8d
	movb	%r8b, 55(%rax)
	jle	.L4363
	movzbl	176(%rsp), %ecx
	movb	%cl, 56(%rax)
	movzbl	177(%rsp), %ecx
	movb	%cl, 57(%rax)
	movzbl	178(%rsp), %ecx
	movb	%cl, 58(%rax)
	movzbl	179(%rsp), %ecx
	movb	%cl, 59(%rax)
.L4363:
	leal	-1(%rdx), %eax
	leaq	4(%rsi,%rax,4), %rsi
	jmp	.L4359
.L5010:
	subb	$1, %al
	jne	.L4451
	movl	$4, %edx
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$32, %al
	ja	.L4451
	movabsq	$4311843072, %rdx
	btq	%rax, %rdx
	jnc	.L4451
	movl	$4, %edx
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	jmp	.L4457
.L4404:
	testb	%cl, %cl
	jne	.L4416
	testb	%dl, %dl
	jne	.L4417
	testb	%al, %al
	movl	$0, %eax
	jne	.L4418
.L4419:
	movzbl	176(%rsp), %edx
	movb	%dl, (%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4419
	jmp	.L4407
.L4418:
	movzbl	176(%rsp), %edx
	movb	%dl, (%rsi,%rax,4)
	movzbl	177(%rsp), %edx
	movb	%dl, 1(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4418
	jmp	.L4407
.L4417:
	testb	%al, %al
	movl	$0, %eax
	jne	.L4420
.L4421:
	movzbl	176(%rsp), %edx
	movb	%dl, (%rsi,%rax,4)
	movzbl	178(%rsp), %edx
	movb	%dl, 2(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4421
	jmp	.L4407
.L4420:
	movzbl	176(%rsp), %edx
	movb	%dl, (%rsi,%rax,4)
	movzbl	177(%rsp), %edx
	movb	%dl, 1(%rsi,%rax,4)
	movzbl	178(%rsp), %edx
	movb	%dl, 2(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4420
	jmp	.L4407
.L4416:
	testb	%dl, %dl
	jne	.L4422
	testb	%al, %al
	movl	$0, %eax
	jne	.L4423
.L4424:
	movzbl	176(%rsp), %edx
	movb	%dl, (%rsi,%rax,4)
	movzbl	179(%rsp), %edx
	movb	%dl, 3(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4424
	jmp	.L4407
.L4423:
	movzbl	176(%rsp), %edx
	movb	%dl, (%rsi,%rax,4)
	movzbl	177(%rsp), %edx
	movb	%dl, 1(%rsi,%rax,4)
	movzbl	179(%rsp), %edx
	movb	%dl, 3(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4423
	jmp	.L4407
.L4422:
	testb	%al, %al
	movl	$0, %eax
	jne	.L4425
.L4426:
	movzbl	176(%rsp), %edx
	movb	%dl, (%rsi,%rax,4)
	movzbl	178(%rsp), %edx
	movb	%dl, 2(%rsi,%rax,4)
	movzbl	179(%rsp), %edx
	movb	%dl, 3(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4426
	jmp	.L4407
.L4425:
	movzbl	176(%rsp), %edx
	movb	%dl, (%rsi,%rax,4)
	movzbl	177(%rsp), %edx
	movb	%dl, 1(%rsi,%rax,4)
	movzbl	178(%rsp), %edx
	movb	%dl, 2(%rsi,%rax,4)
	movzbl	179(%rsp), %edx
	movb	%dl, 3(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4425
	jmp	.L4407
.L4230:
	leaq	.LC143(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
	jmp	.L4191
.L4405:
	testb	%dl, %dl
	jne	.L4411
	testb	%al, %al
	movl	$0, %eax
	jne	.L4412
.L4413:
	movzbl	179(%rsp), %edx
	movb	%dl, 3(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4413
	jmp	.L4407
.L4412:
	movzbl	177(%rsp), %edx
	movb	%dl, 1(%rsi,%rax,4)
	movzbl	179(%rsp), %edx
	movb	%dl, 3(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4412
	jmp	.L4407
.L4411:
	testb	%al, %al
	movl	$0, %eax
	jne	.L4414
.L4415:
	movzbl	178(%rsp), %edx
	movb	%dl, 2(%rsi,%rax,4)
	movzbl	179(%rsp), %edx
	movb	%dl, 3(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4415
	jmp	.L4407
.L4414:
	movzbl	177(%rsp), %edx
	movb	%dl, 1(%rsi,%rax,4)
	movzbl	178(%rsp), %edx
	movb	%dl, 2(%rsi,%rax,4)
	movzbl	179(%rsp), %edx
	movb	%dl, 3(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4414
	jmp	.L4407
.L5005:
	xorl	%eax, %eax
.L4408:
	movzbl	177(%rsp), %edx
	movb	%dl, 1(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4408
	jmp	.L4407
.L4406:
	testb	%al, %al
	movl	$0, %eax
	jne	.L4409
.L4410:
	movzbl	178(%rsp), %edx
	movb	%dl, 2(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4410
	jmp	.L4407
.L4409:
	movzbl	177(%rsp), %edx
	movb	%dl, 1(%rsi,%rax,4)
	movzbl	178(%rsp), %edx
	movb	%dl, 2(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	.L4409
	jmp	.L4407
.L4369:
	leal	-1(%rdx), %ecx
	leaq	1(%rsi), %rax
	leaq	5(%rsi,%rcx,4), %r8
.L4371:
	movzbl	177(%rsp), %r9d
	addq	$4, %rax
	movb	%r9b, -4(%rax)
	movzbl	179(%rsp), %r9d
	movb	%r9b, -2(%rax)
	cmpq	%r8, %rax
	jne	.L4371
	jmp	.L4931
.L4365:
	leal	-1(%rdx), %ecx
	leaq	1(%rsi), %rax
	leaq	5(%rsi,%rcx,4), %r8
.L4367:
	movzbl	177(%rsp), %r9d
	addq	$4, %rax
	movb	%r9b, -4(%rax)
	movzbl	178(%rsp), %r9d
	movb	%r9b, -3(%rax)
	cmpq	%r8, %rax
	jne	.L4367
	jmp	.L4931
.L4372:
	leal	-1(%rdx), %ecx
	leaq	1(%rsi), %rax
	leaq	5(%rsi,%rcx,4), %r8
.L4374:
	movzbl	177(%rsp), %r9d
	addq	$4, %rax
	movb	%r9b, -4(%rax)
	movzbl	178(%rsp), %r9d
	movb	%r9b, -3(%rax)
	movzbl	179(%rsp), %r9d
	movb	%r9b, -2(%rax)
	cmpq	%r8, %rax
	jne	.L4374
	jmp	.L4931
.L5004:
	movq	%r14, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movl	%eax, %ebp
	jmp	.L4400
.L5011:
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L4573:
	movl	%esi, %eax
	movl	%r12d, %edx
	movl	%r11d, %r8d
	jmp	.L4512
.L4490:
	movl	88(%rsp), %r8d
	movq	%rax, %rdx
	movq	%r13, %rcx
	imull	%ebx, %r8d
	call	_ZL10stbi__getnP13stbi__contextPhi
	testl	%eax, %eax
	jne	.L4480
	movq	56(%rsp), %rcx
	call	free
	movq	%rbp, %rcx
	call	free
	leaq	.LC158(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4939
.L4462:
	movq	%rcx, 184(%r13)
	movq	%rdx, 192(%r13)
	jmp	.L4456
.L4552:
	xorl	%eax, %eax
.L4389:
	movzbl	176(%rsp), %ecx
	movb	%cl, (%rsi,%rax,4)
	movzbl	177(%rsp), %ecx
	movb	%cl, 1(%rsi,%rax,4)
	movzbl	178(%rsp), %ecx
	movb	%cl, 2(%rsi,%rax,4)
	movzbl	179(%rsp), %ecx
	movb	%cl, 3(%rsi,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %edx
	jg	.L4389
	jmp	.L4363
.L4972:
	movq	%r14, %rcx
	call	free
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4081
.L4198:
	movq	584(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%rbx, %rdx
	movq	%r13, %rcx
	call	_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii.part.9
	testl	%eax, %eax
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
	jne	.L4186
	jmp	.L4191
.L5015:
	movl	%eax, 104(%rsp)
	jmp	.L4494
	.seh_endproc
	.section .rdata,"dr"
.LC160:
	.ascii "ri.bits_per_channel == 16\0"
	.text
	.p2align 4,,15
	.def	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i:
.LFB838:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
	movl	224(%rsp), %esi
	leaq	100(%rsp), %rax
	movl	%esi, 32(%rsp)
	movq	%rdx, %r12
	movq	%r8, %rdi
	movl	$8, 48(%rsp)
	movq	%r9, %rbp
	movq	%rax, 40(%rsp)
	call	_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5022
	movl	100(%rsp), %eax
	cmpl	$8, %eax
	je	.L5024
	cmpl	$16, %eax
	jne	.L5102
	testl	%esi, %esi
	movl	%esi, %eax
	je	.L5103
.L5026:
	movl	(%rdi), %r13d
	imull	(%r12), %r13d
	imull	%eax, %r13d
	movslq	%r13d, %r15
	movq	%r15, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L5104
	testl	%r13d, %r13d
	jle	.L5029
	leaq	(%rbx,%r15,2), %rax
	cmpq	%rax, %r14
	setnb	%dl
	addq	%r14, %r15
	cmpq	%r15, %rbx
	setnb	%al
	orb	%al, %dl
	je	.L5030
	cmpl	$19, %r13d
	jbe	.L5030
	leal	-1(%r13), %ecx
	movq	%rbx, %rax
	shrq	%rax
	negq	%rax
	andl	$7, %eax
	leal	15(%rax), %edx
	cmpl	%edx, %ecx
	jb	.L5053
	testl	%eax, %eax
	je	.L5054
	movzwl	(%rbx), %edx
	shrw	$8, %dx
	cmpl	$1, %eax
	movb	%dl, (%r14)
	je	.L5055
	movzbl	3(%rbx), %edx
	cmpl	$2, %eax
	movb	%dl, 1(%r14)
	je	.L5056
	movzbl	5(%rbx), %edx
	cmpl	$3, %eax
	movb	%dl, 2(%r14)
	je	.L5057
	movzbl	7(%rbx), %edx
	cmpl	$4, %eax
	movb	%dl, 3(%r14)
	je	.L5058
	movzbl	9(%rbx), %edx
	cmpl	$5, %eax
	movb	%dl, 4(%r14)
	je	.L5059
	movzbl	11(%rbx), %edx
	cmpl	$6, %eax
	movb	%dl, 5(%r14)
	je	.L5060
	movzbl	13(%rbx), %edx
	movb	%dl, 6(%r14)
	movl	$7, %edx
.L5032:
	movl	%r13d, %r10d
	movl	%eax, %r9d
	movdqa	.LC2(%rip), %xmm2
	xorl	%ecx, %ecx
	leaq	(%rbx,%r9,2), %r8
	subl	%eax, %r10d
	addq	%r14, %r9
	movl	%r10d, %r11d
	xorl	%eax, %eax
	shrl	$4, %r11d
	.p2align 4,,10
.L5034:
	movdqa	(%r8,%rcx,2), %xmm0
	addl	$1, %eax
	movdqa	16(%r8,%rcx,2), %xmm1
	psrlw	$8, %xmm0
	psrlw	$8, %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm0
	movups	%xmm0, (%r9,%rcx)
	addq	$16, %rcx
	cmpl	%eax, %r11d
	ja	.L5034
	movl	%r10d, %eax
	andl	$-16, %eax
	addl	%eax, %edx
	cmpl	%eax, %r10d
	je	.L5029
.L5031:
	movslq	%edx, %rdx
	.p2align 4,,10
.L5036:
	movzbl	1(%rbx,%rdx,2), %eax
	movb	%al, (%r14,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %r13d
	jg	.L5036
.L5029:
	movq	%rbx, %rcx
	movq	%r14, %rbx
	call	free
.L5028:
	movl	$8, 100(%rsp)
.L5024:
	movl	_ZL29stbi__vertically_flip_on_load(%rip), %eax
	testl	%eax, %eax
	je	.L5022
	testl	%esi, %esi
	movl	(%r12), %r14d
	movl	(%rdi), %eax
	jne	.L5039
	movl	0(%rbp), %esi
.L5039:
	movl	%eax, %edi
	sarl	%edi
	testl	%edi, %edi
	movl	%edi, 92(%rsp)
	jle	.L5022
	testl	%r14d, %r14d
	jle	.L5022
	testl	%esi, %esi
	jle	.L5022
	leal	-1(%rax), %r13d
	xorl	%r15d, %r15d
	movl	$0, 88(%rsp)
	leal	-1(%rsi), %eax
	imull	%r14d, %r13d
	movl	%eax, 76(%rsp)
	leaq	1(%rbx,%rax), %rax
	movq	%rax, 80(%rsp)
	.p2align 4,,10
.L5050:
	xorl	%edi, %edi
	movl	%r13d, 72(%rsp)
	.p2align 4,,10
.L5049:
	movl	72(%rsp), %eax
	leal	(%r15,%rdi), %r8d
	imull	%esi, %r8d
	addl	%edi, %eax
	movslq	%r8d, %rcx
	imull	%esi, %eax
	leaq	16(%rcx), %rdx
	movslq	%eax, %r11
	cmpq	%rdx, %r11
	leaq	16(%r11), %rdx
	setge	%r9b
	cmpq	%rdx, %rcx
	setge	%dl
	orb	%dl, %r9b
	je	.L5040
	cmpl	$19, %esi
	jbe	.L5040
	leaq	(%rbx,%rcx), %r9
	movq	%r9, %rdx
	negq	%rdx
	andl	$15, %edx
	leal	15(%rdx), %r10d
	cmpl	%r10d, 76(%rsp)
	jb	.L5061
	testl	%edx, %edx
	je	.L5062
	leaq	(%rbx,%r11), %r10
	movzbl	(%r9), %ebp
	cmpl	$1, %edx
	movzbl	(%r10), %r12d
	movb	%r12b, (%r9)
	movb	%bpl, (%r10)
	je	.L5063
	leal	1(%r8), %ebp
	leal	1(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$2, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5064
	leal	2(%r8), %ebp
	leal	2(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$3, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5065
	leal	3(%r8), %ebp
	leal	3(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$4, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5066
	leal	4(%r8), %ebp
	leal	4(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$5, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5067
	leal	5(%r8), %ebp
	leal	5(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$6, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5068
	leal	6(%r8), %ebp
	leal	6(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$7, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5069
	leal	7(%r8), %ebp
	leal	7(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$8, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5070
	leal	8(%r8), %ebp
	leal	8(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$9, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5071
	leal	9(%r8), %ebp
	leal	9(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$10, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5072
	leal	10(%r8), %ebp
	leal	10(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$11, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5073
	leal	11(%r8), %ebp
	leal	11(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$12, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5074
	leal	12(%r8), %ebp
	leal	12(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$13, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5075
	leal	13(%r8), %ebp
	leal	13(%rax), %r10d
	movslq	%ebp, %rbp
	movslq	%r10d, %r10
	addq	%rbx, %rbp
	addq	%rbx, %r10
	movzbl	0(%rbp), %r12d
	cmpl	$14, %edx
	movzbl	(%r10), %r13d
	movb	%r13b, 0(%rbp)
	movb	%r12b, (%r10)
	je	.L5076
	addl	$14, %r8d
	addl	$14, %eax
	movslq	%r8d, %r8
	cltq
	addq	%rbx, %rax
	addq	%rbx, %r8
	movzbl	(%rax), %ebp
	movzbl	(%r8), %r10d
	movb	%bpl, (%r8)
	movb	%r10b, (%rax)
	movl	$15, %eax
	.p2align 4,,10
.L5042:
	movl	%esi, %r12d
	movl	72(%rsp), %r13d
	movl	%edx, %r10d
	xorl	%r8d, %r8d
	subl	%edx, %r12d
	addq	%r10, %rcx
	addq	%r11, %r10
	movl	%r12d, %ebp
	addq	%rbx, %rcx
	addq	%rbx, %r10
	shrl	$4, %ebp
	xorl	%edx, %edx
	.p2align 4,,10
.L5044:
	movdqa	(%rcx,%rdx), %xmm0
	addl	$1, %r8d
	movdqu	(%r10,%rdx), %xmm1
	movaps	%xmm1, (%rcx,%rdx)
	movups	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpl	%r8d, %ebp
	ja	.L5044
	movl	%r12d, %edx
	movl	%r13d, 72(%rsp)
	andl	$-16, %edx
	addl	%edx, %eax
	cmpl	%edx, %r12d
	je	.L5047
.L5041:
	leaq	(%rbx,%r11), %r10
	cltq
	.p2align 4,,10
.L5046:
	movzbl	(%r9,%rax), %edx
	movzbl	(%r10,%rax), %ecx
	movb	%cl, (%r9,%rax)
	movb	%dl, (%r10,%rax)
	addq	$1, %rax
	cmpl	%eax, %esi
	jg	.L5046
.L5101:
	movl	%r13d, 72(%rsp)
.L5047:
	addl	$1, %edi
	cmpl	%edi, %r14d
	jg	.L5049
	movl	72(%rsp), %r13d
	addl	%r14d, %r15d
	addl	$1, 88(%rsp)
	movl	88(%rsp), %eax
	subl	%r14d, %r13d
	cmpl	92(%rsp), %eax
	jne	.L5050
.L5022:
	movq	%rbx, %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L5103:
	movl	0(%rbp), %eax
	jmp	.L5026
.L5102:
	leaq	.LC3(%rip), %rdx
	movl	$1041, %r8d
	leaq	.LC160(%rip), %rcx
	call	_assert
	testl	%esi, %esi
	movl	%esi, %eax
	jne	.L5026
	jmp	.L5103
	.p2align 4,,10
.L5040:
	movq	80(%rsp), %rdx
	leaq	(%rbx,%rcx), %rax
	movl	72(%rsp), %r13d
	leaq	(%rdx,%rcx), %r10
	.p2align 4,,10
.L5048:
	movq	%rax, %rdx
	movzbl	(%rax), %r8d
	addq	$1, %rax
	subq	%rcx, %rdx
	movzbl	(%rdx,%r11), %r9d
	movb	%r9b, -1(%rax)
	cmpq	%r10, %rax
	movb	%r8b, (%rdx,%r11)
	jne	.L5048
	jmp	.L5101
	.p2align 4,,10
.L5063:
	movl	$1, %eax
	jmp	.L5042
	.p2align 4,,10
.L5064:
	movl	$2, %eax
	jmp	.L5042
	.p2align 4,,10
.L5061:
	xorl	%eax, %eax
	movl	72(%rsp), %r13d
	jmp	.L5041
	.p2align 4,,10
.L5065:
	movl	$3, %eax
	jmp	.L5042
	.p2align 4,,10
.L5066:
	movl	$4, %eax
	jmp	.L5042
	.p2align 4,,10
.L5067:
	movl	$5, %eax
	jmp	.L5042
.L5068:
	movl	$6, %eax
	jmp	.L5042
.L5062:
	xorl	%eax, %eax
	jmp	.L5042
.L5069:
	movl	$7, %eax
	jmp	.L5042
.L5070:
	movl	$8, %eax
	jmp	.L5042
.L5071:
	movl	$9, %eax
	jmp	.L5042
.L5072:
	movl	$10, %eax
	jmp	.L5042
.L5073:
	movl	$11, %eax
	jmp	.L5042
.L5074:
	movl	$12, %eax
	jmp	.L5042
.L5075:
	movl	$13, %eax
	jmp	.L5042
.L5030:
	leal	-1(%r13), %ecx
	xorl	%eax, %eax
	addq	$1, %rcx
.L5038:
	movzbl	1(%rbx,%rax,2), %edx
	movb	%dl, (%r14,%rax)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L5038
	jmp	.L5029
.L5076:
	movl	$14, %eax
	jmp	.L5042
.L5055:
	movl	$1, %edx
	jmp	.L5032
.L5053:
	xorl	%edx, %edx
	jmp	.L5031
.L5056:
	movl	$2, %edx
	jmp	.L5032
.L5058:
	movl	$4, %edx
	jmp	.L5032
.L5059:
	movl	$5, %edx
	jmp	.L5032
.L5057:
	movl	$3, %edx
	jmp	.L5032
.L5054:
	xorl	%edx, %edx
	jmp	.L5032
.L5060:
	movl	$6, %edx
	jmp	.L5032
.L5104:
	leaq	.LC31(%rip), %rax
	xorl	%ebx, %ebx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5028
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i
_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i:
.LFB848:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$200, %rsp
	.seh_stackalloc	200
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movaps	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	movaps	%xmm8, 176(%rsp)
	.seh_savexmm	%xmm8, 176
	.seh_endprologue
	movl	304(%rsp), %r14d
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%r8, %rsi
	movq	%r9, %rdi
	call	_ZL14stbi__hdr_testP13stbi__context
	movl	%r14d, 32(%rsp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	testl	%eax, %eax
	movl	%eax, %ebp
	movq	%r12, %rdx
	movq	%rbx, %rcx
	je	.L5106
	call	_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.39
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L5105
	movl	_ZL29stbi__vertically_flip_on_load(%rip), %ecx
	testl	%ecx, %ecx
	je	.L5105
	movl	(%r12), %eax
	testl	%r14d, %r14d
	movl	%eax, 56(%rsp)
	movl	(%rsi), %eax
	jne	.L5108
	movl	(%rdi), %r14d
.L5108:
	movl	%eax, %edi
	sarl	%edi
	testl	%edi, %edi
	movl	%edi, 136(%rsp)
	jle	.L5105
	movl	56(%rsp), %edi
	testl	%edi, %edi
	jle	.L5105
	testl	%r14d, %r14d
	jle	.L5105
	subl	$1, %eax
	movl	$0, 116(%rsp)
	imull	%edi, %eax
	movl	$0, 108(%rsp)
	movl	%eax, %esi
	movl	%eax, 120(%rsp)
	leal	(%rdi,%rdi), %eax
	imull	%r14d, %esi
	negl	%eax
	imull	%r14d, %eax
	movl	%esi, 124(%rsp)
	movl	%eax, 140(%rsp)
	movslq	%r14d, %rax
	movq	%rax, 80(%rsp)
	salq	$2, %rax
	movq	%rax, 88(%rsp)
	leal	-1(%r14), %eax
	movl	%eax, 100(%rsp)
	leaq	4(%r15,%rax,4), %rax
	movq	%rax, 128(%rsp)
	.p2align 4,,10
.L5118:
	movl	116(%rsp), %ebx
	xorl	%r12d, %r12d
	movl	120(%rsp), %eax
	imull	%r14d, %ebx
	imull	%r14d, %eax
	movslq	%ebx, %rbp
	leaq	0(,%rbp,4), %r11
	movslq	%eax, %rdi
	subl	%ebx, %eax
	movl	%eax, 96(%rsp)
	movq	%rdi, %rax
	subq	%rbp, %rax
	salq	$2, %rax
	movq	%rax, 64(%rsp)
	addq	$16, %rax
	movq	%rax, 72(%rsp)
	movl	124(%rsp), %eax
	leal	1(%rax), %esi
	addl	$2, %eax
	movl	%esi, 104(%rsp)
	movl	%eax, 112(%rsp)
	.p2align 4,,10
.L5117:
	movl	96(%rsp), %eax
	leaq	16(%r11), %rdx
	movq	64(%rsp), %rcx
	leal	(%rbx,%rax), %esi
	movq	72(%rsp), %rax
	addq	%r11, %rax
	cmpq	%rax, %r11
	setge	%al
	addq	%r11, %rcx
	cmpq	%rdx, %rcx
	setge	%dl
	orb	%dl, %al
	je	.L5109
	cmpl	$8, %r14d
	jbe	.L5109
	leaq	(%r15,%r11), %rdx
	xorl	%r9d, %r9d
	shrq	$2, %rdx
	negq	%rdx
	andl	$3, %edx
	leal	3(%rdx), %eax
	cmpl	100(%rsp), %eax
	ja	.L5110
	testl	%edx, %edx
	je	.L5111
	movss	(%r15,%r11), %xmm0
	cmpl	$1, %edx
	movl	$1, %r9d
	movss	(%r15,%rdi,4), %xmm1
	movss	%xmm1, (%r15,%r11)
	movss	%xmm0, (%r15,%rdi,4)
	je	.L5111
	leal	1(%rbx), %eax
	movl	$2, %r9d
	cltq
	leaq	(%r15,%rax,4), %rcx
	movl	104(%rsp), %eax
	movss	(%rcx), %xmm0
	addl	%ebx, %eax
	cmpl	$2, %edx
	cltq
	leaq	(%r15,%rax,4), %rax
	movss	(%rax), %xmm1
	movss	%xmm1, (%rcx)
	movss	%xmm0, (%rax)
	je	.L5111
	leal	2(%rbx), %eax
	movl	$3, %r9d
	cltq
	leaq	(%r15,%rax,4), %rcx
	movl	112(%rsp), %eax
	movss	(%rcx), %xmm0
	addl	%ebx, %eax
	cltq
	leaq	(%r15,%rax,4), %rax
	movss	(%rax), %xmm1
	movss	%xmm1, (%rcx)
	movss	%xmm0, (%rax)
.L5111:
	movl	%r14d, %r13d
	movl	%edx, %eax
	xorl	%ecx, %ecx
	subl	%edx, %r13d
	leaq	(%rax,%rbp), %rdx
	movl	%r13d, %r10d
	addq	%rdi, %rax
	leaq	(%r15,%rdx,4), %r8
	shrl	$2, %r10d
	leaq	(%r15,%rax,4), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
.L5113:
	movaps	(%r8,%rax), %xmm1
	pxor	%xmm0, %xmm0
	movlps	(%rdx,%rax), %xmm0
	addl	$1, %ecx
	movhps	8(%rdx,%rax), %xmm0
	movaps	%xmm0, (%r8,%rax)
	movlps	%xmm1, (%rdx,%rax)
	movhps	%xmm1, 8(%rdx,%rax)
	addq	$16, %rax
	cmpl	%ecx, %r10d
	ja	.L5113
	movl	%r13d, %eax
	andl	$-4, %eax
	addl	%eax, %r9d
	cmpl	%eax, %r13d
	je	.L5115
.L5110:
	leal	(%rbx,%r9), %eax
	cltq
	leaq	(%r15,%rax,4), %rdx
	leal	(%r9,%rsi), %eax
	movss	(%rdx), %xmm0
	cltq
	leaq	(%r15,%rax,4), %rax
	movss	(%rax), %xmm1
	movss	%xmm1, (%rdx)
	movss	%xmm0, (%rax)
	leal	1(%r9), %eax
	cmpl	%eax, %r14d
	jle	.L5115
	leal	(%rbx,%rax), %edx
	addl	%esi, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,4), %rax
	leaq	(%r15,%rdx,4), %rdx
	movss	(%rax), %xmm1
	movss	(%rdx), %xmm0
	movss	%xmm1, (%rdx)
	movss	%xmm0, (%rax)
	leal	2(%r9), %eax
	cmpl	%eax, %r14d
	jle	.L5115
	leal	(%rbx,%rax), %edx
	addl	%esi, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,4), %rax
	leaq	(%r15,%rdx,4), %rdx
	movss	(%rax), %xmm1
	movss	(%rdx), %xmm0
	movss	%xmm1, (%rdx)
	movss	%xmm0, (%rax)
	leal	3(%r9), %eax
	cmpl	%eax, %r14d
	jle	.L5115
	leal	(%rbx,%rax), %edx
	addl	%esi, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,4), %rax
	leaq	(%r15,%rdx,4), %rdx
	movss	(%rax), %xmm1
	movss	(%rdx), %xmm0
	movss	%xmm1, (%rdx)
	movss	%xmm0, (%rax)
	leal	4(%r9), %eax
	cmpl	%eax, %r14d
	jle	.L5115
	leal	(%rbx,%rax), %edx
	addl	%esi, %eax
	addl	$5, %r9d
	movslq	%edx, %rdx
	cltq
	cmpl	%r9d, %r14d
	leaq	(%r15,%rdx,4), %rdx
	leaq	(%r15,%rax,4), %rax
	movss	(%rdx), %xmm0
	movss	(%rax), %xmm1
	movss	%xmm1, (%rdx)
	movss	%xmm0, (%rax)
	jle	.L5115
	leal	(%rbx,%r9), %eax
	addl	%esi, %r9d
	cltq
	movslq	%r9d, %r9
	leaq	(%r15,%rax,4), %rax
	leaq	(%r15,%r9,4), %rdx
	movss	(%rax), %xmm0
	movss	(%rdx), %xmm1
	movss	%xmm1, (%rax)
	movss	%xmm0, (%rdx)
.L5115:
	movq	80(%rsp), %rax
	addl	$1, %r12d
	addl	%r14d, %ebx
	addq	88(%rsp), %r11
	addq	%rax, %rdi
	addq	%rax, %rbp
	cmpl	%r12d, 56(%rsp)
	jne	.L5117
	movl	56(%rsp), %esi
	addl	$1, 108(%rsp)
	addl	%esi, 116(%rsp)
	subl	%esi, 120(%rsp)
	movl	108(%rsp), %eax
	movl	140(%rsp), %esi
	addl	%esi, 124(%rsp)
	cmpl	136(%rsp), %eax
	jne	.L5118
.L5105:
	movaps	144(%rsp), %xmm6
	movq	%r15, %rax
	movaps	160(%rsp), %xmm7
	movaps	176(%rsp), %xmm8
	addq	$200, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L5106:
	call	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	.L5119
	testl	%r14d, %r14d
	jne	.L5120
	movl	(%rdi), %r14d
.L5120:
	movl	(%r12), %r8d
	movl	(%rsi), %ecx
	testl	%r8d, %r8d
	js	.L5124
	testl	%ecx, %ecx
	js	.L5124
	testl	%ecx, %ecx
	jne	.L5168
.L5123:
	testl	%r14d, %r14d
	js	.L5124
	movl	%ecx, %edi
	imull	%r8d, %edi
	testl	%r14d, %r14d
	movl	%edi, 96(%rsp)
	je	.L5125
	movl	$2147483647, %eax
	cltd
	idivl	%r14d
	cmpl	%eax, %edi
	jg	.L5124
	movl	%edi, %ecx
	imull	%r14d, %ecx
	cmpl	$536870911, %ecx
	jg	.L5124
	sall	$2, %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L5124
	testb	$1, %r14b
	movl	%r14d, 64(%rsp)
	jne	.L5127
	jmp	.L5134
.L5168:
	movl	$2147483647, %eax
	cltd
	idivl	%ecx
	cmpl	%eax, %r8d
	jle	.L5123
	.p2align 4,,10
.L5124:
	movq	56(%rsp), %rcx
	xorl	%r15d, %r15d
	call	free
	leaq	.LC31(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5105
	.p2align 4,,10
.L5109:
	movq	128(%rsp), %rsi
	leaq	(%r15,%r11), %rax
	movq	%rdi, %rdx
	subq	%rbp, %rdx
	leaq	(%rsi,%r11), %rcx
	.p2align 4,,10
.L5116:
	movss	(%rax), %xmm0
	movss	(%rax,%rdx,4), %xmm1
	movss	%xmm1, (%rax)
	movss	%xmm0, (%rax,%rdx,4)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.L5116
	jmp	.L5115
.L5125:
	xorl	%ecx, %ecx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L5124
.L5134:
	leal	-1(%r14), %eax
	movl	%eax, 64(%rsp)
.L5127:
	movl	96(%rsp), %edx
	testl	%edx, %edx
	je	.L5128
	movl	64(%rsp), %esi
	movl	$0, %eax
	leal	-1(%rsi), %edi
	testl	%esi, %esi
	cmovns	%esi, %eax
	xorl	%r12d, %r12d
	addq	$1, %rdi
	movl	%eax, 72(%rsp)
	.p2align 4,,10
.L5132:
	movl	64(%rsp), %eax
	testl	%eax, %eax
	jle	.L5129
	movq	56(%rsp), %rbx
	movslq	%r12d, %rax
	xorl	%r13d, %r13d
	movss	_ZL15stbi__l2h_gamma(%rip), %xmm8
	leaq	(%r15,%rax,4), %rsi
	movss	_ZL15stbi__l2h_scale(%rip), %xmm7
	movss	.LC154(%rip), %xmm6
	addq	%rax, %rbx
	.p2align 4,,10
.L5130:
	movzbl	(%rbx,%r13), %eax
	pxor	%xmm0, %xmm0
	movaps	%xmm8, %xmm1
	cvtsi2ss	%eax, %xmm0
	divss	%xmm6, %xmm0
	call	powf
	mulss	%xmm7, %xmm0
	movss	%xmm0, (%rsi,%r13,4)
	addq	$1, %r13
	cmpq	%rdi, %r13
	jne	.L5130
.L5129:
	movl	72(%rsp), %eax
	cmpl	%eax, %r14d
	jle	.L5131
	leal	(%r12,%rax), %edx
	movq	56(%rsp), %rax
	pxor	%xmm0, %xmm0
	movslq	%edx, %rdx
	movss	.LC154(%rip), %xmm6
	movzbl	(%rax,%rdx), %eax
	cvtsi2ss	%eax, %xmm0
	divss	%xmm6, %xmm0
	movss	%xmm0, (%r15,%rdx,4)
.L5131:
	addl	$1, %ebp
	addl	%r14d, %r12d
	cmpl	96(%rsp), %ebp
	jne	.L5132
.L5128:
	movq	56(%rsp), %rcx
	call	free
	jmp	.L5105
.L5119:
	leaq	.LC159(%rip), %rax
	xorl	%r15d, %r15d
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5105
	.seh_endproc
	.p2align 4,,15
	.def	_ZL15stbi__info_mainP13stbi__contextPiS1_S1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbi__info_mainP13stbi__contextPiS1_S1_
_ZL15stbi__info_mainP13stbi__contextPiS1_S1_:
.LFB1003:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
	movq	%rcx, %rbx
	movl	$18568, %ecx
	movq	%rdx, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbp
	call	malloc
	movl	$2, %edx
	movq	%rbx, (%rax)
	movq	%rax, %rcx
	movq	%rax, %r12
	call	_ZL24stbi__decode_jpeg_headerP10stbi__jpegi
	testl	%eax, %eax
	je	.L5349
	testq	%rsi, %rsi
	je	.L5173
	movq	(%r12), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsi)
.L5173:
	testq	%rdi, %rdi
	je	.L5174
	movq	(%r12), %rax
	movl	4(%rax), %eax
	movl	%eax, (%rdi)
.L5174:
	testq	%rbp, %rbp
	je	.L5175
	movq	(%r12), %rax
	movq	%r12, %rcx
	movl	$1, %r13d
	cmpl	$3, 8(%rax)
	setge	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	movl	%eax, 0(%rbp)
	call	free
.L5169:
	movl	%r13d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L5349:
	movq	(%r12), %rax
	movq	%r12, %rcx
	leaq	64(%rsp), %r12
	movdqu	200(%rax), %xmm0
	movups	%xmm0, 184(%rax)
	call	free
	xorl	%r8d, %r8d
	movl	$2, %edx
	movq	%r12, %rcx
	movq	%rbx, 64(%rsp)
	call	_ZL20stbi__parse_png_fileP9stbi__pngii
	testl	%eax, %eax
	movl	%eax, %r15d
	je	.L5350
	testq	%rsi, %rsi
	je	.L5180
	movq	64(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsi)
.L5180:
	testq	%rdi, %rdi
	je	.L5181
	movq	64(%rsp), %rax
	movl	4(%rax), %eax
	movl	%eax, (%rdi)
.L5181:
	testq	%rbp, %rbp
	movl	$1, %r13d
	je	.L5169
	movq	64(%rsp), %rax
	movl	8(%rax), %eax
	movl	%eax, 0(%rbp)
	jmp	.L5169
	.p2align 4,,10
.L5175:
	movq	%r12, %rcx
	movl	$1, %r13d
	call	free
	jmp	.L5169
	.p2align 4,,10
.L5350:
	movq	64(%rsp), %rax
	movl	$18528, %ecx
	movdqu	200(%rax), %xmm0
	movups	%xmm0, 184(%rax)
	call	malloc
	movq	%rbx, %rcx
	movq	%rax, %r13
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$71, %al
	je	.L5351
.L5179:
	leaq	.LC128(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L5185:
	movq	%r13, %rcx
	call	free
	movdqu	200(%rbx), %xmm0
	movq	%rbx, %rcx
	movl	$255, 92(%rsp)
	movups	%xmm0, 184(%rbx)
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$66, %al
	jne	.L5191
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$77, %al
	jne	.L5191
	movq	%r12, %rdx
	movq	%rbx, %rcx
	call	_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data.part.8
	movdqu	200(%rbx), %xmm0
	testq	%rax, %rax
	movups	%xmm0, 184(%rbx)
	je	.L5188
	testq	%rsi, %rsi
	je	.L5192
	movl	(%rbx), %eax
	movl	%eax, (%rsi)
.L5192:
	testq	%rdi, %rdi
	je	.L5193
	movl	4(%rbx), %eax
	movl	%eax, (%rdi)
.L5193:
	testq	%rbp, %rbp
	movl	$1, %r13d
	je	.L5169
	cmpl	$1, 88(%rsp)
	sbbl	%eax, %eax
	addl	$4, %eax
	movl	%eax, 0(%rbp)
	jmp	.L5169
	.p2align 4,,10
.L5191:
	movdqu	200(%rbx), %xmm0
	leaq	.LC135(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movups	%xmm0, 184(%rbx)
.L5188:
	testq	%rsi, %rsi
	movq	%rsi, %r14
	movq	%rdi, %rax
	cmove	%r12, %r14
	testq	%rdi, %rdi
	movq	%rbx, %rcx
	cmove	%r12, %rax
	testq	%rbp, %rbp
	movq	%rax, 40(%rsp)
	movq	%rbp, %rax
	cmove	%r12, %rax
	movq	%rax, 48(%rsp)
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %r13d
	call	_ZL13stbi__get16beP13stbi__context
	sall	$16, %r13d
	addl	%r13d, %eax
	cmpl	$943870035, %eax
	je	.L5199
.L5345:
	testq	%rsi, %rsi
	movq	%rsi, %r14
	movq	%rdi, %rax
	movdqu	200(%rbx), %xmm0
	cmove	%r12, %r14
	testq	%rdi, %rdi
	cmove	%r12, %rax
	testq	%rbp, %rbp
	movups	%xmm0, 184(%rbx)
	cmovne	%rbp, %r12
	movq	%rax, 40(%rsp)
	movq	%r12, 48(%rsp)
	leaq	.LC140(%rip), %r12
	leaq	4(%r12), %r13
.L5210:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	(%r12), %al
	jne	.L5208
	addq	$1, %r12
	cmpq	%r13, %r12
	jne	.L5210
	movl	$88, %edx
	movq	%rbx, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, (%r14)
	call	_ZL13stbi__get16beP13stbi__context
	movq	40(%rsp), %rdx
	movl	%eax, (%rdx)
	cmpq	$0, 16(%rbx)
	je	.L5212
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L5211
	movl	48(%rbx), %edx
	testl	%edx, %edx
	je	.L5208
.L5212:
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jnb	.L5208
.L5211:
	movl	(%r14), %ecx
	testl	%ecx, %ecx
	je	.L5215
	movl	$268435456, %eax
	cltd
	idivl	%ecx
	movq	40(%rsp), %rdx
	cmpl	(%rdx), %eax
	jl	.L5208
.L5215:
	movl	$8, %edx
	movq	%rbx, %rcx
	movl	$10, %r13d
	call	_ZL10stbi__skipP13stbi__contexti.part.1
.L5216:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %r14d
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %r12d
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	orl	%eax, %r15d
	cmpq	$0, 16(%rbx)
	je	.L5221
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L5220
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L5208
.L5221:
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jnb	.L5208
.L5220:
	cmpb	$8, %r12b
	jne	.L5208
	testb	%r14b, %r14b
	je	.L5352
	subl	$1, %r13d
	jne	.L5216
.L5213:
	movq	%rbp, %r9
	movq	%rdi, %r8
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_
	testl	%eax, %eax
	je	.L5225
.L5348:
	movl	$1, %r13d
	jmp	.L5169
	.p2align 4,,10
.L5351:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$73, %al
	jne	.L5179
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$70, %al
	jne	.L5179
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$56, %al
	jne	.L5179
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	subl	$55, %eax
	testb	$-3, %al
	jne	.L5179
	movl	$1, %r9d
	movq	%rbp, %r8
	movq	%r13, %rdx
	movq	%rbx, %rcx
	call	_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii.part.9
	testl	%eax, %eax
	je	.L5185
	testq	%rsi, %rsi
	je	.L5189
	movl	0(%r13), %eax
	movl	%eax, (%rsi)
.L5189:
	testq	%rdi, %rdi
	je	.L5190
	movl	4(%r13), %eax
	movl	%eax, (%rdi)
.L5190:
	movq	%r13, %rcx
	movl	$1, %r13d
	call	free
	jmp	.L5169
.L5208:
	movdqu	200(%rbx), %xmm0
	movups	%xmm0, 184(%rbx)
	jmp	.L5213
.L5199:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$1, %eax
	movl	%eax, %r13d
	jne	.L5345
	movl	$6, %edx
	movq	%rbx, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$16, %eax
	ja	.L5345
	movq	%rbx, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	movq	40(%rsp), %rdx
	movq	%rbx, %rcx
	movl	%eax, (%rdx)
	call	_ZL13stbi__get32beP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, (%r14)
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$8, %eax
	jne	.L5345
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$3, %eax
	jne	.L5345
	movq	48(%rsp), %rax
	movl	$4, (%rax)
	jmp	.L5169
.L5225:
	movq	%rbp, %r9
	movq	%rdi, %r8
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZL14stbi__hdr_infoP13stbi__contextPiS1_S1_
	testl	%eax, %eax
	movl	%eax, %r13d
	jne	.L5348
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L5353
	cmpl	$0, 48(%rbx)
	je	.L5229
	leaq	56(%rbx), %r12
	movq	40(%rbx), %rcx
	movq	%r12, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	leaq	57(%rbx), %rdx
	testl	%eax, %eax
	jne	.L5230
	movl	$0, 48(%rbx)
	movq	%rdx, %r12
	movb	$0, 56(%rbx)
.L5231:
	movq	%r12, 192(%rbx)
	movq	%rdx, 184(%rbx)
.L5228:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L5232
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %r12d
.L5233:
	cmpl	$1, %r12d
	jle	.L5236
.L5248:
	movdqu	200(%rbx), %xmm0
	leaq	.LC159(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movups	%xmm0, 184(%rbx)
	jmp	.L5169
.L5352:
	movl	%r15d, %r10d
	movq	48(%rsp), %rsi
	movl	$1, %r13d
	andl	$16, %r10d
	cmpl	$1, %r10d
	sbbl	%eax, %eax
	addl	$4, %eax
	movl	%eax, (%rsi)
	jmp	.L5169
.L5232:
	cmpl	$0, 48(%rbx)
	je	.L5229
	leaq	56(%rbx), %r12
	movq	40(%rbx), %rcx
	movq	%r12, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	leaq	57(%rbx), %rdx
	testl	%eax, %eax
	jne	.L5234
	movl	$0, 48(%rbx)
	movq	%rdx, %r12
	movb	$0, 56(%rbx)
.L5235:
	movq	%r12, 192(%rbx)
	movzbl	56(%rbx), %r12d
	movq	%rdx, 184(%rbx)
	jmp	.L5233
.L5236:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	subl	$1, %r12d
	movzbl	%al, %r14d
	je	.L5354
.L5238:
	leal	-2(%r14), %eax
	cmpl	$1, %eax
	jbe	.L5243
	leal	-10(%r14), %eax
	cmpl	$1, %eax
	ja	.L5248
.L5243:
	movl	$9, %edx
	movq	%rbx, %rcx
	xorl	%r15d, %r15d
	call	_ZL10stbi__skipP13stbi__contexti.part.1
.L5242:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	testl	%eax, %eax
	movl	%eax, 40(%rsp)
	jle	.L5248
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	testl	%eax, %eax
	jle	.L5248
	movq	%rbx, %rcx
	movl	%eax, 60(%rsp)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbx, %rcx
	movzbl	%al, %r12d
	movb	%r12b, 48(%rsp)
	call	_ZL10stbi__get8P13stbi__context
	testl	%r15d, %r15d
	movzbl	48(%rsp), %edx
	movl	60(%rsp), %r8d
	je	.L5246
	subl	$8, %edx
	andb	$-9, %dl
	jne	.L5248
	cmpl	$16, %r15d
	jg	.L5249
	cmpl	$15, %r15d
	jge	.L5269
	cmpl	$8, %r15d
	movl	$1, %r12d
	jne	.L5248
.L5250:
	testq	%rsi, %rsi
	je	.L5257
	movl	40(%rsp), %eax
	movl	%eax, (%rsi)
.L5257:
	testq	%rdi, %rdi
	je	.L5258
	movl	%r8d, (%rdi)
.L5258:
	testq	%rbp, %rbp
	je	.L5348
	movl	%r12d, 0(%rbp)
	jmp	.L5348
.L5353:
	addq	$1, %rax
	movq	%rax, 184(%rbx)
	jmp	.L5228
.L5230:
	cltq
	addq	%rax, %r12
	jmp	.L5231
.L5234:
	cltq
	addq	%rax, %r12
	jmp	.L5235
.L5229:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %r14d
	jmp	.L5238
.L5269:
	movl	$3, %r12d
	jmp	.L5250
.L5249:
	cmpl	$24, %r15d
	je	.L5252
	cmpl	$32, %r15d
	jne	.L5248
.L5252:
	sarl	$3, %r15d
	movl	%r15d, %r12d
	jmp	.L5250
.L5246:
	andl	$-9, %r14d
	cmpb	$16, %dl
	je	.L5253
	ja	.L5254
	cmpb	$8, %dl
	je	.L5255
	cmpb	$15, %dl
	movl	$3, %r12d
	je	.L5250
	jmp	.L5248
.L5354:
	andl	$-9, %eax
	subb	$1, %al
	jne	.L5248
	movl	$4, %edx
	movq	%rbx, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$32, %al
	movzbl	%al, %r15d
	ja	.L5248
	movabsq	$4311843072, %rdx
	btq	%rax, %rdx
	jnc	.L5248
	movl	$4, %edx
	movq	%rbx, %rcx
	call	_ZL10stbi__skipP13stbi__contexti.part.1
	jmp	.L5242
.L5255:
	movl	$1, %r12d
	jmp	.L5250
.L5254:
	cmpb	$24, %dl
	je	.L5256
	cmpb	$32, %dl
	jne	.L5248
.L5256:
	sarl	$3, %r12d
	testl	%r12d, %r12d
	jne	.L5250
	jmp	.L5248
.L5253:
	xorl	%r12d, %r12d
	cmpl	$3, %r14d
	setne	%r12b
	addl	$2, %r12d
	jmp	.L5250
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_failure_reason
	.def	stbi_failure_reason;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_failure_reason
stbi_failure_reason:
.LFB822:
	.seh_endprologue
	movq	_ZL22stbi__g_failure_reason(%rip), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_image_free
	.def	stbi_image_free;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_image_free
stbi_image_free:
.LFB833:
	.seh_endprologue
	jmp	free
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_set_flip_vertically_on_load
	.def	stbi_set_flip_vertically_on_load;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_set_flip_vertically_on_load
stbi_set_flip_vertically_on_load:
.LFB834:
	.seh_endprologue
	movl	%ecx, _ZL29stbi__vertically_flip_on_load(%rip)
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC161:
	.ascii "rb\0"
.LC162:
	.ascii "can't fopen\0"
	.text
	.p2align 4,,15
	.globl	stbi_load
	.def	stbi_load;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_load
stbi_load:
.LFB842:
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	movq	%rdx, %rbp
	movq	%r8, %r12
	movq	%r9, %r13
	leaq	.LC161(%rip), %rdx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L5367
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rsi, 88(%rsp)
	movl	$128, %r8d
	movq	%rsi, %rcx
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movabsq	$549755813889, %rdi
	movq	%rdi, 96(%rsp)
	leaq	48(%rsp), %rdi
	leaq	56(%rdi), %rbx
	movq	%rdx, 72(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 64(%rsp)
	movq	%rbx, 248(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rbx, %rdx
	call	*%rax
	testl	%eax, %eax
	je	.L5368
	cltq
	addq	%rax, %rbx
.L5362:
	leaq	56(%rdi), %rax
	movq	%r13, %r9
	movq	%r12, %r8
	movq	%rbx, 240(%rsp)
	movq	%rax, 232(%rsp)
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	movl	368(%rsp), %eax
	movq	%rbx, 256(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5363
	movl	232(%rsp), %edx
	movl	$1, %r8d
	movq	%rsi, %rcx
	subl	240(%rsp), %edx
	call	fseek
.L5363:
	movq	%rsi, %rcx
	call	fclose
.L5358:
	movq	%rbx, %rax
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L5368:
	movl	$0, 96(%rsp)
	leaq	57(%rdi), %rbx
	movb	$0, 104(%rsp)
	jmp	.L5362
	.p2align 4,,10
.L5367:
	leaq	.LC162(%rip), %rax
	xorl	%ebx, %ebx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5358
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_load_from_file
	.def	stbi_load_from_file;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_load_from_file
stbi_load_from_file:
.LFB843:
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
	subq	$288, %rsp
	.seh_stackalloc	288
	.seh_endprologue
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movq	%rdx, %rbp
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rcx, %rdi
	movq	%r8, %r12
	leaq	64(%rsp), %rsi
	movq	%rcx, 104(%rsp)
	movabsq	$549755813889, %rcx
	movl	$128, %r8d
	leaq	56(%rsi), %rbx
	movq	%r9, 56(%rsp)
	movq	%rcx, 112(%rsp)
	movq	%rdi, %rcx
	movq	%rdx, 88(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 80(%rsp)
	movq	%rbx, 264(%rsp)
	movq	%rdx, 96(%rsp)
	movq	%rbx, %rdx
	call	*%rax
	movq	56(%rsp), %r9
	testl	%eax, %eax
	je	.L5376
	cltq
	addq	%rax, %rbx
.L5371:
	leaq	56(%rsi), %rax
	movq	%r12, %r8
	movq	%rbp, %rdx
	movq	%rbx, 256(%rsp)
	movq	%rax, 248(%rsp)
	movl	368(%rsp), %eax
	movq	%rsi, %rcx
	movq	%rbx, 272(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5369
	movl	248(%rsp), %edx
	movl	$1, %r8d
	movq	%rdi, %rcx
	subl	256(%rsp), %edx
	call	fseek
.L5369:
	movq	%rbx, %rax
	addq	$288, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5376:
	movl	$0, 112(%rsp)
	leaq	57(%rsi), %rbx
	movb	$0, 120(%rsp)
	jmp	.L5371
	.seh_endproc
	.section .rdata,"dr"
.LC163:
	.ascii "ri.bits_per_channel == 8\0"
	.text
	.p2align 4,,15
	.globl	stbi_load_from_file_16
	.def	stbi_load_from_file_16;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_load_from_file_16
stbi_load_from_file_16:
.LFB844:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$408, %rsp
	.seh_stackalloc	408
	.seh_endprologue
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movabsq	$549755813889, %rbx
	movl	512(%rsp), %r14d
	movq	%rdx, %rbp
	movq	%r8, %rsi
	movq	%r9, %rdi
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	leaq	176(%rsp), %r12
	movq	%rbx, 224(%rsp)
	movl	$128, %r8d
	leaq	56(%r12), %rbx
	movq	%rcx, 480(%rsp)
	movq	%rax, 192(%rsp)
	movq	%rdx, 200(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rcx, 216(%rsp)
	movq	%rbx, 376(%rsp)
	movq	%rdx, 208(%rsp)
	movq	%rbx, %rdx
	call	*%rax
	testl	%eax, %eax
	je	.L5457
	cltq
	addq	%rax, %rbx
.L5379:
	leaq	56(%r12), %rax
	movl	%r14d, 32(%rsp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, 360(%rsp)
	leaq	164(%rsp), %rax
	movq	%rbp, %rdx
	movq	%r12, %rcx
	movl	$16, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rbx, 368(%rsp)
	movq	%rbx, 384(%rsp)
	call	_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5380
	movl	164(%rsp), %eax
	cmpl	$16, %eax
	je	.L5458
	cmpl	$8, %eax
	jne	.L5459
	testl	%r14d, %r14d
	movl	%r14d, %eax
	je	.L5460
.L5384:
	movl	(%rsi), %r12d
	imull	0(%rbp), %r12d
	imull	%eax, %r12d
	leal	(%r12,%r12), %ecx
	movslq	%ecx, %rcx
	call	malloc
	movl	_ZL29stbi__vertically_flip_on_load(%rip), %r13d
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L5461
	testl	%r12d, %r12d
	jle	.L5388
	movslq	%r12d, %rax
	leaq	(%r15,%rax,2), %rdx
	cmpq	%rdx, %rbx
	setnb	%dl
	addq	%rbx, %rax
	cmpq	%rax, %r15
	setnb	%al
	orb	%al, %dl
	je	.L5389
	cmpl	$18, %r12d
	jbe	.L5389
	leal	-1(%r12), %ecx
	movq	%r15, %rdx
	shrq	%rdx
	negq	%rdx
	andl	$7, %edx
	leal	15(%rdx), %eax
	cmpl	%eax, %ecx
	jb	.L5413
	testl	%edx, %edx
	je	.L5414
	movzbl	(%rbx), %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	cmpl	$1, %edx
	movw	%ax, (%r15)
	je	.L5415
	movzbl	1(%rbx), %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	cmpl	$2, %edx
	movw	%ax, 2(%r15)
	je	.L5416
	movzbl	2(%rbx), %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	cmpl	$3, %edx
	movw	%ax, 4(%r15)
	je	.L5417
	movzbl	3(%rbx), %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	cmpl	$4, %edx
	movw	%ax, 6(%r15)
	je	.L5418
	movzbl	4(%rbx), %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	cmpl	$5, %edx
	movw	%ax, 8(%r15)
	je	.L5419
	movzbl	5(%rbx), %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	cmpl	$6, %edx
	movw	%ax, 10(%r15)
	je	.L5420
	movzbl	6(%rbx), %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movw	%ax, 12(%r15)
	movl	$7, %eax
.L5391:
	movl	%r12d, %r11d
	movl	%edx, %ecx
	pxor	%xmm3, %xmm3
	leaq	(%rbx,%rcx), %r9
	subl	%edx, %r11d
	xorl	%edx, %edx
	leaq	(%r15,%rcx,2), %r8
	movl	%r11d, %r10d
	xorl	%ecx, %ecx
	shrl	$4, %r10d
	.p2align 4,,10
.L5393:
	movdqu	(%r9,%rdx), %xmm0
	addl	$1, %ecx
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm3, %xmm0
	punpcklbw	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	psllw	$8, %xmm2
	paddw	%xmm2, %xmm1
	movaps	%xmm1, (%r8,%rdx,2)
	movdqa	%xmm0, %xmm1
	psllw	$8, %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, 16(%r8,%rdx,2)
	addq	$16, %rdx
	cmpl	%ecx, %r10d
	ja	.L5393
	movl	%r11d, %edx
	andl	$-16, %edx
	addl	%edx, %eax
	cmpl	%edx, %r11d
	je	.L5388
.L5390:
	movslq	%eax, %rcx
	.p2align 4,,10
.L5395:
	movzbl	(%rbx,%rcx), %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, (%r15,%rcx,2)
	addq	$1, %rcx
	cmpl	%ecx, %r12d
	jg	.L5395
.L5388:
	movq	%rbx, %rcx
	call	free
	movl	$16, 164(%rsp)
.L5382:
	testl	%r13d, %r13d
	je	.L5411
.L5386:
	movl	0(%rbp), %eax
	testl	%r14d, %r14d
	movl	%eax, 68(%rsp)
	movl	(%rsi), %eax
	jne	.L5399
	movl	(%rdi), %r14d
.L5399:
	movl	%eax, %edi
	sarl	%edi
	testl	%edi, %edi
	movl	%edi, 152(%rsp)
	jle	.L5400
	movl	68(%rsp), %edi
	testl	%edi, %edi
	jle	.L5400
	testl	%r14d, %r14d
	jle	.L5400
	movl	$0, 136(%rsp)
	subl	$1, %eax
	movl	$0, 132(%rsp)
	imull	%edi, %eax
	movl	%eax, %ebx
	movl	%eax, 140(%rsp)
	leal	(%rdi,%rdi), %eax
	imull	%r14d, %ebx
	negl	%eax
	imull	%r14d, %eax
	movl	%ebx, 120(%rsp)
	movl	%eax, 156(%rsp)
	movslq	%r14d, %rax
	movq	%rax, 88(%rsp)
	addq	%rax, %rax
	movq	%rax, 96(%rsp)
	leal	-1(%r14), %eax
	movl	%eax, 108(%rsp)
	leaq	2(%r15,%rax,2), %rax
	movq	%rax, 144(%rsp)
	.p2align 4,,10
.L5410:
	movl	136(%rsp), %r9d
	xorl	%r12d, %r12d
	movl	140(%rsp), %eax
	imull	%r14d, %r9d
	imull	%r14d, %eax
	movslq	%r9d, %rbp
	leaq	(%rbp,%rbp), %rbx
	movslq	%eax, %rdi
	subl	%r9d, %eax
	movl	%eax, 104(%rsp)
	movq	%rdi, %rax
	subq	%rbp, %rax
	addq	%rax, %rax
	movq	%rax, 72(%rsp)
	addq	$16, %rax
	movq	%rax, 80(%rsp)
	movl	120(%rsp), %eax
	leal	1(%rax), %esi
	movl	%esi, 112(%rsp)
	leal	2(%rax), %esi
	movl	%esi, 116(%rsp)
	leal	3(%rax), %esi
	addl	$4, %eax
	movl	%esi, 124(%rsp)
	movl	%eax, 128(%rsp)
	.p2align 4,,10
.L5409:
	movl	104(%rsp), %eax
	leaq	16(%rbx), %rcx
	movq	72(%rsp), %rsi
	leal	(%r9,%rax), %r11d
	movq	80(%rsp), %rax
	leaq	(%rbx,%rsi), %rdx
	addq	%rbx, %rax
	cmpq	%rax, %rbx
	setge	%al
	cmpq	%rdx, %rcx
	setle	%dl
	orb	%dl, %al
	je	.L5401
	cmpl	$11, %r14d
	jbe	.L5401
	leaq	(%r15,%rbx), %rdx
	shrq	%rdx
	negq	%rdx
	andl	$7, %edx
	leal	7(%rdx), %eax
	cmpl	108(%rsp), %eax
	ja	.L5421
	testl	%edx, %edx
	je	.L5422
	movzwl	(%r15,%rbx), %eax
	cmpl	$1, %edx
	movzwl	(%r15,%rdi,2), %ecx
	movw	%cx, (%r15,%rbx)
	movw	%ax, (%r15,%rdi,2)
	je	.L5423
	leal	1(%r9), %eax
	cltq
	leaq	(%r15,%rax,2), %rcx
	movl	112(%rsp), %eax
	movzwl	(%rcx), %r8d
	addl	%r9d, %eax
	cmpl	$2, %edx
	cltq
	leaq	(%r15,%rax,2), %rax
	movzwl	(%rax), %r10d
	movw	%r10w, (%rcx)
	movw	%r8w, (%rax)
	je	.L5424
	leal	2(%r9), %eax
	cltq
	leaq	(%r15,%rax,2), %rcx
	movl	116(%rsp), %eax
	movzwl	(%rcx), %r8d
	addl	%r9d, %eax
	cmpl	$3, %edx
	cltq
	leaq	(%r15,%rax,2), %rax
	movzwl	(%rax), %r10d
	movw	%r10w, (%rcx)
	movw	%r8w, (%rax)
	je	.L5425
	leal	3(%r9), %eax
	cltq
	leaq	(%r15,%rax,2), %rcx
	movl	124(%rsp), %eax
	movzwl	(%rcx), %r8d
	addl	%r9d, %eax
	cmpl	$4, %edx
	cltq
	leaq	(%r15,%rax,2), %rax
	movzwl	(%rax), %r10d
	movw	%r10w, (%rcx)
	movw	%r8w, (%rax)
	je	.L5426
	leal	4(%r9), %eax
	cltq
	leaq	(%r15,%rax,2), %rcx
	movl	128(%rsp), %eax
	movzwl	(%rcx), %r8d
	addl	%r9d, %eax
	cmpl	$5, %edx
	cltq
	leaq	(%r15,%rax,2), %rax
	movzwl	(%rax), %r10d
	movw	%r10w, (%rcx)
	movw	%r8w, (%rax)
	je	.L5427
	movl	120(%rsp), %esi
	leal	5(%r9), %eax
	cmpl	$6, %edx
	cltq
	leaq	(%r15,%rax,2), %rcx
	movzwl	(%rcx), %r8d
	leal	5(%r9,%rsi), %eax
	cltq
	leaq	(%r15,%rax,2), %rax
	movzwl	(%rax), %r10d
	movw	%r10w, (%rcx)
	movw	%r8w, (%rax)
	je	.L5428
	leal	6(%r9), %eax
	cltq
	leaq	(%r15,%rax,2), %rcx
	leal	6(%r9,%rsi), %eax
	movzwl	(%rcx), %r8d
	cltq
	leaq	(%r15,%rax,2), %rax
	movzwl	(%rax), %r10d
	movw	%r10w, (%rcx)
	movl	$7, %r10d
	movw	%r8w, (%rax)
.L5403:
	movl	%r14d, %r13d
	movl	%edx, %eax
	subl	%edx, %r13d
	leaq	(%rax,%rbp), %rdx
	movl	%r13d, %esi
	addq	%rdi, %rax
	leaq	(%r15,%rdx,2), %r8
	shrl	$3, %esi
	xorl	%edx, %edx
	leaq	(%r15,%rax,2), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
.L5405:
	movdqa	(%r8,%rax), %xmm0
	addl	$1, %edx
	movdqu	(%rcx,%rax), %xmm1
	movaps	%xmm1, (%r8,%rax)
	movups	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpl	%edx, %esi
	ja	.L5405
	movl	%r13d, %eax
	andl	$-8, %eax
	addl	%eax, %r10d
	cmpl	%r13d, %eax
	je	.L5407
.L5402:
	leal	(%r9,%r10), %eax
	cltq
	leaq	(%r15,%rax,2), %rdx
	leal	(%r10,%r11), %eax
	movzwl	(%rdx), %ecx
	cltq
	leaq	(%r15,%rax,2), %rax
	movzwl	(%rax), %r8d
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	1(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rdx,2), %rdx
	movzwl	(%rax), %r8d
	movzwl	(%rdx), %ecx
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	2(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rdx,2), %rdx
	movzwl	(%rax), %r8d
	movzwl	(%rdx), %ecx
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	3(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rdx,2), %rdx
	movzwl	(%rax), %r8d
	movzwl	(%rdx), %ecx
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	4(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rdx,2), %rdx
	movzwl	(%rax), %r8d
	movzwl	(%rdx), %ecx
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	5(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rdx,2), %rdx
	movzwl	(%rax), %r8d
	movzwl	(%rdx), %ecx
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	6(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rdx,2), %rdx
	movzwl	(%rax), %r8d
	movzwl	(%rdx), %ecx
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	7(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rdx,2), %rdx
	movzwl	(%rax), %r8d
	movzwl	(%rdx), %ecx
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	8(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rdx,2), %rdx
	movzwl	(%rax), %r8d
	movzwl	(%rdx), %ecx
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	9(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rdx,2), %rdx
	movzwl	(%rax), %r8d
	movzwl	(%rdx), %ecx
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	10(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rdx,2), %rdx
	movzwl	(%rax), %r8d
	movzwl	(%rdx), %ecx
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	11(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	movslq	%edx, %rdx
	cltq
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rdx,2), %rdx
	movzwl	(%rax), %r8d
	movzwl	(%rdx), %ecx
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	leal	12(%r10), %eax
	cmpl	%eax, %r14d
	jle	.L5407
	leal	(%r9,%rax), %edx
	addl	%r11d, %eax
	addl	$13, %r10d
	movslq	%edx, %rdx
	cltq
	cmpl	%r10d, %r14d
	leaq	(%r15,%rdx,2), %rdx
	leaq	(%r15,%rax,2), %rax
	movzwl	(%rdx), %ecx
	movzwl	(%rax), %r8d
	movw	%r8w, (%rdx)
	movw	%cx, (%rax)
	jle	.L5407
	leal	(%r9,%r10), %eax
	addl	%r11d, %r10d
	cltq
	movslq	%r10d, %rcx
	leaq	(%r15,%rax,2), %rax
	leaq	(%r15,%rcx,2), %rcx
	movzwl	(%rax), %edx
	movzwl	(%rcx), %r8d
	movw	%r8w, (%rax)
	movw	%dx, (%rcx)
	.p2align 4,,10
.L5407:
	movq	88(%rsp), %rax
	addl	$1, %r12d
	addl	%r14d, %r9d
	addq	96(%rsp), %rbx
	addq	%rax, %rdi
	addq	%rax, %rbp
	cmpl	%r12d, 68(%rsp)
	jne	.L5409
	movl	68(%rsp), %ebx
	addl	$1, 132(%rsp)
	addl	%ebx, 136(%rsp)
	subl	%ebx, 140(%rsp)
	movl	132(%rsp), %eax
	movl	156(%rsp), %ebx
	addl	%ebx, 120(%rsp)
	cmpl	152(%rsp), %eax
	jne	.L5410
.L5400:
	testq	%r15, %r15
	jne	.L5411
.L5377:
	movq	%r15, %rax
	addq	$408, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L5411:
	movl	360(%rsp), %edx
	movl	$1, %r8d
	subl	368(%rsp), %edx
	movq	480(%rsp), %rcx
	call	fseek
	jmp	.L5377
.L5460:
	movl	(%rdi), %eax
	jmp	.L5384
.L5459:
	leaq	.LC3(%rip), %rdx
	movl	$1078, %r8d
	leaq	.LC163(%rip), %rcx
	call	_assert
	testl	%r14d, %r14d
	movl	%r14d, %eax
	jne	.L5384
	jmp	.L5460
	.p2align 4,,10
.L5401:
	movq	144(%rsp), %rsi
	leaq	(%r15,%rbx), %rax
	movq	%rdi, %rdx
	subq	%rbp, %rdx
	leaq	(%rsi,%rbx), %r8
	.p2align 4,,10
.L5408:
	movzwl	(%rax), %ecx
	movzwl	(%rax,%rdx,2), %r10d
	movw	%r10w, (%rax)
	movw	%cx, (%rax,%rdx,2)
	addq	$2, %rax
	cmpq	%r8, %rax
	jne	.L5408
	jmp	.L5407
	.p2align 4,,10
.L5423:
	movl	$1, %r10d
	jmp	.L5403
	.p2align 4,,10
.L5422:
	xorl	%r10d, %r10d
	jmp	.L5403
	.p2align 4,,10
.L5424:
	movl	$2, %r10d
	jmp	.L5403
	.p2align 4,,10
.L5421:
	xorl	%r10d, %r10d
	jmp	.L5402
	.p2align 4,,10
.L5425:
	movl	$3, %r10d
	jmp	.L5403
	.p2align 4,,10
.L5426:
	movl	$4, %r10d
	jmp	.L5403
	.p2align 4,,10
.L5427:
	movl	$5, %r10d
	jmp	.L5403
.L5428:
	movl	$6, %r10d
	jmp	.L5403
.L5457:
	movl	$0, 224(%rsp)
	leaq	57(%r12), %rbx
	movb	$0, 232(%rsp)
	jmp	.L5379
.L5458:
	movl	_ZL29stbi__vertically_flip_on_load(%rip), %r13d
	movq	%rbx, %r15
	jmp	.L5382
.L5389:
	leal	-1(%r12), %r8d
	xorl	%ecx, %ecx
	addq	$1, %r8
	.p2align 4,,10
.L5397:
	movzbl	(%rbx,%rcx), %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, (%r15,%rcx,2)
	addq	$1, %rcx
	cmpq	%r8, %rcx
	jne	.L5397
	jmp	.L5388
.L5461:
	leaq	.LC31(%rip), %rax
	testl	%r13d, %r13d
	movl	$16, 164(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jne	.L5386
.L5380:
	xorl	%r15d, %r15d
	jmp	.L5377
.L5415:
	movl	$1, %eax
	jmp	.L5391
.L5413:
	xorl	%eax, %eax
	jmp	.L5390
.L5416:
	movl	$2, %eax
	jmp	.L5391
.L5418:
	movl	$4, %eax
	jmp	.L5391
.L5419:
	movl	$5, %eax
	jmp	.L5391
.L5417:
	movl	$3, %eax
	jmp	.L5391
.L5414:
	xorl	%eax, %eax
	jmp	.L5391
.L5420:
	movl	$6, %eax
	jmp	.L5391
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_load_16
	.def	stbi_load_16;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_load_16
stbi_load_16:
.LFB845:
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
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbp
	leaq	.LC161(%rip), %rdx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5465
	movl	128(%rsp), %eax
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	movq	%rbp, %r9
	movq	%rdi, %r8
	movl	%eax, 32(%rsp)
	call	stbi_load_from_file_16
	movq	%rbx, %rcx
	movq	%rax, %rsi
	call	fclose
.L5462:
	movq	%rsi, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5465:
	leaq	.LC162(%rip), %rax
	xorl	%esi, %esi
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5462
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_load_from_memory
	.def	stbi_load_from_memory;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_load_from_memory
stbi_load_from_memory:
.LFB846:
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	movslq	%edx, %rax
	movq	%r8, %rdx
	movq	%r9, %r8
	movq	%rcx, 248(%rsp)
	movq	%rcx, 232(%rsp)
	addq	%rax, %rcx
	movl	328(%rsp), %eax
	movq	320(%rsp), %r9
	movq	%rcx, 256(%rsp)
	movq	%rcx, 240(%rsp)
	leaq	48(%rsp), %rcx
	movq	$0, 64(%rsp)
	movl	%eax, 32(%rsp)
	movl	$0, 96(%rsp)
	call	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
	addq	$280, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_load_from_callbacks
	.def	stbi_load_from_callbacks;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_load_from_callbacks
stbi_load_from_callbacks:
.LFB847:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	movabsq	$549755813889, %rsi
	movq	(%rcx), %rax
	movq	%rdx, %r10
	movq	8(%rcx), %rdx
	movq	%rsi, 96(%rsp)
	movq	%r8, %rdi
	leaq	48(%rsp), %rsi
	movq	%r9, %rbp
	movq	%rax, 64(%rsp)
	movl	$128, %r8d
	leaq	56(%rsi), %rbx
	movq	%r10, 88(%rsp)
	movq	%rbx, 248(%rsp)
	movq	%rdx, 72(%rsp)
	movq	16(%rcx), %rdx
	movq	%r10, %rcx
	movq	%rdx, 80(%rsp)
	movq	%rbx, %rdx
	call	*%rax
	testl	%eax, %eax
	je	.L5470
	cltq
	addq	%rax, %rbx
.L5469:
	leaq	56(%rsi), %rax
	movq	352(%rsp), %r9
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rax, 232(%rsp)
	movl	360(%rsp), %eax
	movq	%rsi, %rcx
	movq	%rbx, 240(%rsp)
	movq	%rbx, 256(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5470:
	movl	$0, 96(%rsp)
	leaq	57(%rsi), %rbx
	movb	$0, 104(%rsp)
	jmp	.L5469
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_loadf_from_memory
	.def	stbi_loadf_from_memory;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_loadf_from_memory
stbi_loadf_from_memory:
.LFB849:
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	movslq	%edx, %rax
	movq	%r8, %rdx
	movq	%r9, %r8
	movq	%rcx, 248(%rsp)
	movq	%rcx, 232(%rsp)
	addq	%rax, %rcx
	movl	328(%rsp), %eax
	movq	320(%rsp), %r9
	movq	%rcx, 256(%rsp)
	movq	%rcx, 240(%rsp)
	leaq	48(%rsp), %rcx
	movq	$0, 64(%rsp)
	movl	%eax, 32(%rsp)
	movl	$0, 96(%rsp)
	call	_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i
	addq	$280, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_loadf_from_callbacks
	.def	stbi_loadf_from_callbacks;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_loadf_from_callbacks
stbi_loadf_from_callbacks:
.LFB850:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	movabsq	$549755813889, %rsi
	movq	(%rcx), %rax
	movq	%rdx, %r10
	movq	8(%rcx), %rdx
	movq	%rsi, 96(%rsp)
	movq	%r8, %rdi
	leaq	48(%rsp), %rsi
	movq	%r9, %rbp
	movq	%rax, 64(%rsp)
	movl	$128, %r8d
	leaq	56(%rsi), %rbx
	movq	%r10, 88(%rsp)
	movq	%rbx, 248(%rsp)
	movq	%rdx, 72(%rsp)
	movq	16(%rcx), %rdx
	movq	%r10, %rcx
	movq	%rdx, 80(%rsp)
	movq	%rbx, %rdx
	call	*%rax
	testl	%eax, %eax
	je	.L5475
	cltq
	addq	%rax, %rbx
.L5474:
	leaq	56(%rsi), %rax
	movq	352(%rsp), %r9
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rax, 232(%rsp)
	movl	360(%rsp), %eax
	movq	%rsi, %rcx
	movq	%rbx, 240(%rsp)
	movq	%rbx, 256(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5475:
	movl	$0, 96(%rsp)
	leaq	57(%rsi), %rbx
	movb	$0, 104(%rsp)
	jmp	.L5474
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_loadf
	.def	stbi_loadf;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_loadf
stbi_loadf:
.LFB851:
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	movq	%rdx, %rbp
	movq	%r8, %r12
	movq	%r9, %r13
	leaq	.LC161(%rip), %rdx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L5481
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rsi, 88(%rsp)
	movl	$128, %r8d
	movq	%rsi, %rcx
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movabsq	$549755813889, %rdi
	movq	%rdi, 96(%rsp)
	leaq	48(%rsp), %rdi
	leaq	56(%rdi), %rbx
	movq	%rdx, 72(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 64(%rsp)
	movq	%rbx, 248(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rbx, %rdx
	call	*%rax
	testl	%eax, %eax
	je	.L5482
	cltq
	addq	%rax, %rbx
.L5480:
	leaq	56(%rdi), %rax
	movq	%rdi, %rcx
	movq	%r13, %r9
	movq	%rbx, 240(%rsp)
	movq	%rax, 232(%rsp)
	movq	%r12, %r8
	movq	%rbp, %rdx
	movl	368(%rsp), %eax
	movq	%rbx, 256(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i
	movq	%rsi, %rcx
	movq	%rax, %rbx
	call	fclose
.L5476:
	movq	%rbx, %rax
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L5482:
	movl	$0, 96(%rsp)
	leaq	57(%rdi), %rbx
	movb	$0, 104(%rsp)
	jmp	.L5480
	.p2align 4,,10
.L5481:
	leaq	.LC162(%rip), %rax
	xorl	%ebx, %ebx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5476
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_loadf_from_file
	.def	stbi_loadf_from_file;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_loadf_from_file
stbi_loadf_from_file:
.LFB852:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$296, %rsp
	.seh_stackalloc	296
	.seh_endprologue
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movabsq	$549755813889, %rsi
	movq	%rdx, %rdi
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rsi, 112(%rsp)
	movq	%r8, %rbp
	leaq	64(%rsp), %rsi
	movq	%r9, 56(%rsp)
	movl	$128, %r8d
	leaq	56(%rsi), %rbx
	movq	%rax, 80(%rsp)
	movq	%rcx, 104(%rsp)
	movq	%rdx, 88(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rbx, 264(%rsp)
	movq	%rdx, 96(%rsp)
	movq	%rbx, %rdx
	call	*%rax
	movq	56(%rsp), %r9
	testl	%eax, %eax
	je	.L5486
	cltq
	addq	%rax, %rbx
.L5485:
	leaq	56(%rsi), %rax
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rbx, 256(%rsp)
	movq	%rax, 248(%rsp)
	movl	368(%rsp), %eax
	movq	%rsi, %rcx
	movq	%rbx, 272(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i
	addq	$296, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5486:
	movl	$0, 112(%rsp)
	leaq	57(%rsi), %rbx
	movb	$0, 120(%rsp)
	jmp	.L5485
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_is_hdr_from_memory
	.def	stbi_is_hdr_from_memory;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_is_hdr_from_memory
stbi_is_hdr_from_memory:
.LFB853:
	subq	$264, %rsp
	.seh_stackalloc	264
	.seh_endprologue
	movslq	%edx, %rdx
	movq	%rcx, 232(%rsp)
	movq	%rcx, 216(%rsp)
	addq	%rdx, %rcx
	movq	%rcx, 240(%rsp)
	movq	%rcx, 224(%rsp)
	leaq	32(%rsp), %rcx
	movq	$0, 48(%rsp)
	movl	$0, 80(%rsp)
	call	_ZL14stbi__hdr_testP13stbi__context
	addq	$264, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_is_hdr
	.def	stbi_is_hdr;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_is_hdr
stbi_is_hdr:
.LFB854:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$256, %rsp
	.seh_stackalloc	256
	.seh_endprologue
	leaq	.LC161(%rip), %rdx
	xorl	%ebx, %ebx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L5488
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rsi, 72(%rsp)
	movl	$128, %r8d
	movq	%rsi, %rcx
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movabsq	$549755813889, %rdi
	movq	%rdi, 80(%rsp)
	leaq	32(%rsp), %rdi
	leaq	56(%rdi), %rbx
	movq	%rdx, 56(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 48(%rsp)
	movq	%rbx, 232(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rbx, %rdx
	call	*%rax
	testl	%eax, %eax
	je	.L5494
	cltq
	addq	%rax, %rbx
.L5491:
	leaq	56(%rdi), %rax
	movq	%rdi, %rcx
	movq	%rbx, 224(%rsp)
	movq	%rbx, 240(%rsp)
	movq	%rax, 216(%rsp)
	call	_ZL14stbi__hdr_testP13stbi__context
	movq	%rsi, %rcx
	movl	%eax, %ebx
	call	fclose
.L5488:
	movl	%ebx, %eax
	addq	$256, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L5494:
	movl	$0, 80(%rsp)
	leaq	57(%rdi), %rbx
	movb	$0, 88(%rsp)
	jmp	.L5491
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_is_hdr_from_file
	.def	stbi_is_hdr_from_file;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_is_hdr_from_file
stbi_is_hdr_from_file:
.LFB855:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	.seh_endprologue
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movl	$128, %r8d
	movabsq	$549755813889, %rsi
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movq	%rdx, 56(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rsi, 80(%rsp)
	leaq	32(%rsp), %rsi
	leaq	56(%rsi), %rbx
	movq	%rax, 48(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rbx, %rdx
	movq	%rbx, 232(%rsp)
	call	*%rax
	testl	%eax, %eax
	je	.L5498
	cltq
	addq	%rax, %rbx
.L5497:
	leaq	56(%rsi), %rax
	movq	%rsi, %rcx
	movq	%rbx, 224(%rsp)
	movq	%rax, 216(%rsp)
	movq	%rbx, 240(%rsp)
	call	_ZL14stbi__hdr_testP13stbi__context
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L5498:
	movl	$0, 80(%rsp)
	leaq	57(%rsi), %rbx
	movb	$0, 88(%rsp)
	jmp	.L5497
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_is_hdr_from_callbacks
	.def	stbi_is_hdr_from_callbacks;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_is_hdr_from_callbacks
stbi_is_hdr_from_callbacks:
.LFB856:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	.seh_endprologue
	movl	$128, %r8d
	movabsq	$549755813889, %rsi
	movq	(%rcx), %rax
	movq	%rdx, %r9
	movq	8(%rcx), %rdx
	movq	%rsi, 80(%rsp)
	leaq	32(%rsp), %rsi
	movq	%rax, 48(%rsp)
	leaq	56(%rsi), %rbx
	movq	%r9, 72(%rsp)
	movq	%rbx, 232(%rsp)
	movq	%rdx, 56(%rsp)
	movq	16(%rcx), %rdx
	movq	%r9, %rcx
	movq	%rdx, 64(%rsp)
	movq	%rbx, %rdx
	call	*%rax
	testl	%eax, %eax
	je	.L5502
	cltq
	addq	%rax, %rbx
.L5501:
	leaq	56(%rsi), %rax
	movq	%rsi, %rcx
	movq	%rbx, 224(%rsp)
	movq	%rax, 216(%rsp)
	movq	%rbx, 240(%rsp)
	call	_ZL14stbi__hdr_testP13stbi__context
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L5502:
	movl	$0, 80(%rsp)
	leaq	57(%rsi), %rbx
	movb	$0, 88(%rsp)
	jmp	.L5501
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_ldr_to_hdr_gamma
	.def	stbi_ldr_to_hdr_gamma;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_ldr_to_hdr_gamma
stbi_ldr_to_hdr_gamma:
.LFB857:
	.seh_endprologue
	movss	%xmm0, _ZL15stbi__l2h_gamma(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_ldr_to_hdr_scale
	.def	stbi_ldr_to_hdr_scale;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_ldr_to_hdr_scale
stbi_ldr_to_hdr_scale:
.LFB858:
	.seh_endprologue
	movss	%xmm0, _ZL15stbi__l2h_scale(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_hdr_to_ldr_gamma
	.def	stbi_hdr_to_ldr_gamma;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_hdr_to_ldr_gamma
stbi_hdr_to_ldr_gamma:
.LFB859:
	.seh_endprologue
	movss	.LC22(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, _ZL17stbi__h2l_gamma_i(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_hdr_to_ldr_scale
	.def	stbi_hdr_to_ldr_scale;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_hdr_to_ldr_scale
stbi_hdr_to_ldr_scale:
.LFB860:
	.seh_endprologue
	movss	.LC22(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, _ZL17stbi__h2l_scale_i(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_zlib_decode_malloc_guesssize
	.def	stbi_zlib_decode_malloc_guesssize;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_zlib_decode_malloc_guesssize
stbi_zlib_decode_malloc_guesssize:
.LFB931:
	pushq	%rbp
	.seh_pushreg	%rbp
	movl	$4136, %eax
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	4136
	.seh_endprologue
	movslq	%r8d, %rdi
	movq	%rcx, %rbx
	movslq	%edx, %rsi
	movq	%rdi, %rcx
	movq	%r9, %rbp
	call	malloc
	testq	%rax, %rax
	je	.L5507
	movq	%rbx, 32(%rsp)
	leaq	32(%rsp), %rcx
	addq	%rsi, %rbx
	movl	$1, %edx
	movq	%rax, 64(%rsp)
	movq	%rax, 56(%rsp)
	addq	%rdi, %rax
	movq	%rbx, 40(%rsp)
	movq	%rax, 72(%rsp)
	movl	$1, 80(%rsp)
	call	_ZL16stbi__parse_zlibP10stbi__zbufi
	testl	%eax, %eax
	je	.L5509
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	je	.L5507
	movq	56(%rsp), %rdx
	subq	%rax, %rdx
	movl	%edx, 0(%rbp)
.L5507:
	addq	$4136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5509:
	movq	64(%rsp), %rcx
	call	free
	xorl	%eax, %eax
	jmp	.L5507
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_zlib_decode_malloc
	.def	stbi_zlib_decode_malloc;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_zlib_decode_malloc
stbi_zlib_decode_malloc:
.LFB932:
	.seh_endprologue
	movq	%r8, %r9
	movl	$16384, %r8d
	jmp	stbi_zlib_decode_malloc_guesssize
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_zlib_decode_malloc_guesssize_headerflag
	.def	stbi_zlib_decode_malloc_guesssize_headerflag;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_zlib_decode_malloc_guesssize_headerflag
stbi_zlib_decode_malloc_guesssize_headerflag:
.LFB933:
	pushq	%rbp
	.seh_pushreg	%rbp
	movl	$4136, %eax
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	4136
	.seh_endprologue
	movslq	%r8d, %rdi
	movq	%rcx, %rbx
	movslq	%edx, %rsi
	movq	%rdi, %rcx
	movq	%r9, %rbp
	call	malloc
	testq	%rax, %rax
	je	.L5518
	movl	4208(%rsp), %edx
	movq	%rbx, 32(%rsp)
	leaq	32(%rsp), %rcx
	addq	%rsi, %rbx
	movq	%rax, 64(%rsp)
	movq	%rax, 56(%rsp)
	addq	%rdi, %rax
	movq	%rbx, 40(%rsp)
	movq	%rax, 72(%rsp)
	movl	$1, 80(%rsp)
	call	_ZL16stbi__parse_zlibP10stbi__zbufi
	testl	%eax, %eax
	je	.L5520
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	je	.L5518
	movq	56(%rsp), %rdx
	subq	%rax, %rdx
	movl	%edx, 0(%rbp)
.L5518:
	addq	$4136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5520:
	movq	64(%rsp), %rcx
	call	free
	xorl	%eax, %eax
	jmp	.L5518
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_zlib_decode_buffer
	.def	stbi_zlib_decode_buffer;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_zlib_decode_buffer
stbi_zlib_decode_buffer:
.LFB934:
	movl	$4136, %eax
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	4136
	.seh_endprologue
	movslq	%edx, %rdx
	movslq	%r9d, %r9
	movq	%rcx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	addq	%rdx, %rcx
	movl	$1, %edx
	movq	%r8, 32(%rsp)
	addq	%r9, %r8
	movq	%rcx, 72(%rsp)
	leaq	32(%rsp), %rcx
	movq	%r8, 40(%rsp)
	movl	$0, 80(%rsp)
	call	_ZL16stbi__parse_zlibP10stbi__zbufi
	testl	%eax, %eax
	je	.L5530
	movq	56(%rsp), %rax
	subl	64(%rsp), %eax
.L5528:
	addq	$4136, %rsp
	ret
	.p2align 4,,10
.L5530:
	movl	$-1, %eax
	jmp	.L5528
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_zlib_decode_noheader_malloc
	.def	stbi_zlib_decode_noheader_malloc;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_zlib_decode_noheader_malloc
stbi_zlib_decode_noheader_malloc:
.LFB935:
	pushq	%rdi
	.seh_pushreg	%rdi
	movl	$4128, %eax
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	4128
	.seh_endprologue
	movq	%rcx, %rbx
	movl	$16384, %ecx
	movslq	%edx, %rsi
	movq	%r8, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L5531
	movq	%rbx, 32(%rsp)
	leaq	32(%rsp), %rcx
	addq	%rsi, %rbx
	xorl	%edx, %edx
	movq	%rax, 64(%rsp)
	movq	%rax, 56(%rsp)
	addq	$16384, %rax
	movq	%rbx, 40(%rsp)
	movq	%rax, 72(%rsp)
	movl	$1, 80(%rsp)
	call	_ZL16stbi__parse_zlibP10stbi__zbufi
	testl	%eax, %eax
	je	.L5533
	testq	%rdi, %rdi
	movq	64(%rsp), %rax
	je	.L5531
	movq	56(%rsp), %rdx
	subq	%rax, %rdx
	movl	%edx, (%rdi)
.L5531:
	addq	$4128, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L5533:
	movq	64(%rsp), %rcx
	call	free
	xorl	%eax, %eax
	jmp	.L5531
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_zlib_decode_noheader_buffer
	.def	stbi_zlib_decode_noheader_buffer;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_zlib_decode_noheader_buffer
stbi_zlib_decode_noheader_buffer:
.LFB936:
	movl	$4136, %eax
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	4136
	.seh_endprologue
	movslq	%edx, %rdx
	movslq	%r9d, %r9
	movq	%rcx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	addq	%rdx, %rcx
	xorl	%edx, %edx
	movq	%r8, 32(%rsp)
	addq	%r9, %r8
	movq	%rcx, 72(%rsp)
	leaq	32(%rsp), %rcx
	movq	%r8, 40(%rsp)
	movl	$0, 80(%rsp)
	call	_ZL16stbi__parse_zlibP10stbi__zbufi
	testl	%eax, %eax
	je	.L5543
	movq	56(%rsp), %rax
	subl	64(%rsp), %eax
.L5541:
	addq	$4136, %rsp
	ret
	.p2align 4,,10
.L5543:
	movl	$-1, %eax
	jmp	.L5541
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_set_unpremultiply_on_load
	.def	stbi_set_unpremultiply_on_load;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_set_unpremultiply_on_load
stbi_set_unpremultiply_on_load:
.LFB945:
	.seh_endprologue
	movl	%ecx, _ZL27stbi__unpremultiply_on_load(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_convert_iphone_png_to_rgb
	.def	stbi_convert_iphone_png_to_rgb;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_convert_iphone_png_to_rgb
stbi_convert_iphone_png_to_rgb:
.LFB946:
	.seh_endprologue
	movl	%ecx, _ZL20stbi__de_iphone_flag(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_info
	.def	stbi_info;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_info
stbi_info:
.LFB1004:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$256, %rsp
	.seh_stackalloc	256
	.seh_endprologue
	movq	%rdx, %rbp
	movq	%r8, %r12
	movq	%r9, %r13
	leaq	.LC161(%rip), %rdx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5551
	movabsq	$549755813889, %rdi
	movq	%rax, %rcx
	call	ftell
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rdi, 80(%rsp)
	leaq	32(%rsp), %rdi
	leaq	56(%rdi), %rsi
	movl	%eax, %r14d
	movq	%rbx, 72(%rsp)
	movq	%rbx, %rcx
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movq	%rsi, 232(%rsp)
	movl	$128, %r8d
	movq	%rdx, 56(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 48(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rsi, %rdx
	call	*%rax
	testl	%eax, %eax
	je	.L5552
	cltq
	addq	%rax, %rsi
.L5550:
	leaq	56(%rdi), %rax
	movq	%r13, %r9
	movq	%r12, %r8
	movq	%rsi, 224(%rsp)
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	movq	%rsi, 240(%rsp)
	movq	%rax, 216(%rsp)
	call	_ZL15stbi__info_mainP13stbi__contextPiS1_S1_
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	movl	%r14d, %edx
	movl	%eax, %esi
	call	fseek
	movq	%rbx, %rcx
	call	fclose
.L5546:
	movl	%esi, %eax
	addq	$256, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L5552:
	movl	$0, 80(%rsp)
	leaq	57(%rdi), %rsi
	movb	$0, 88(%rsp)
	jmp	.L5550
	.p2align 4,,10
.L5551:
	leaq	.LC162(%rip), %rax
	xorl	%esi, %esi
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5546
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_info_from_file
	.def	stbi_info_from_file;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_info_from_file
stbi_info_from_file:
.LFB1005:
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	movabsq	$549755813889, %rdi
	movq	%rcx, %rsi
	movq	%r9, 40(%rsp)
	movq	%rdx, %r12
	movq	%r8, %r13
	call	ftell
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rdi, 96(%rsp)
	leaq	48(%rsp), %rdi
	movl	%eax, %ebp
	movq	%rsi, 88(%rsp)
	movl	$128, %r8d
	movq	%rsi, %rcx
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	leaq	56(%rdi), %rbx
	movq	%rbx, 248(%rsp)
	movq	%rdx, 72(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 64(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rbx, %rdx
	call	*%rax
	movq	40(%rsp), %r9
	testl	%eax, %eax
	je	.L5556
	cltq
	addq	%rax, %rbx
.L5555:
	leaq	56(%rdi), %rax
	movq	%r13, %r8
	movq	%r12, %rdx
	movq	%rbx, 240(%rsp)
	movq	%rdi, %rcx
	movq	%rbx, 256(%rsp)
	movq	%rax, 232(%rsp)
	call	_ZL15stbi__info_mainP13stbi__contextPiS1_S1_
	xorl	%r8d, %r8d
	movl	%ebp, %edx
	movq	%rsi, %rcx
	movl	%eax, %ebx
	call	fseek
	movl	%ebx, %eax
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L5556:
	movl	$0, 96(%rsp)
	leaq	57(%rdi), %rbx
	movb	$0, 104(%rsp)
	jmp	.L5555
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_info_from_memory
	.def	stbi_info_from_memory;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_info_from_memory
stbi_info_from_memory:
.LFB1006:
	subq	$264, %rsp
	.seh_stackalloc	264
	.seh_endprologue
	movslq	%edx, %rax
	movq	%r8, %rdx
	movq	%r9, %r8
	movq	304(%rsp), %r9
	movq	%rcx, 232(%rsp)
	movq	%rcx, 216(%rsp)
	addq	%rax, %rcx
	movq	%rcx, 240(%rsp)
	movq	%rcx, 224(%rsp)
	leaq	32(%rsp), %rcx
	movq	$0, 48(%rsp)
	movl	$0, 80(%rsp)
	call	_ZL15stbi__info_mainP13stbi__contextPiS1_S1_
	addq	$264, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_info_from_callbacks
	.def	stbi_info_from_callbacks;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_info_from_callbacks
stbi_info_from_callbacks:
.LFB1007:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	.seh_endprologue
	movabsq	$549755813889, %rsi
	movq	(%rcx), %rax
	movq	%rdx, %r10
	movq	8(%rcx), %rdx
	movq	%rsi, 80(%rsp)
	movq	%r8, %rdi
	leaq	32(%rsp), %rsi
	movq	%r9, %rbp
	movq	%rax, 48(%rsp)
	movl	$128, %r8d
	leaq	56(%rsi), %rbx
	movq	%r10, 72(%rsp)
	movq	%rbx, 232(%rsp)
	movq	%rdx, 56(%rsp)
	movq	16(%rcx), %rdx
	movq	%r10, %rcx
	movq	%rdx, 64(%rsp)
	movq	%rbx, %rdx
	call	*%rax
	testl	%eax, %eax
	je	.L5561
	cltq
	addq	%rax, %rbx
.L5560:
	movq	336(%rsp), %r9
	leaq	56(%rsi), %rax
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movq	%rbx, 224(%rsp)
	movq	%rax, 216(%rsp)
	movq	%rbx, 240(%rsp)
	call	_ZL15stbi__info_mainP13stbi__contextPiS1_S1_
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5561:
	movl	$0, 80(%rsp)
	leaq	57(%rsi), %rbx
	movb	$0, 88(%rsp)
	jmp	.L5560
	.seh_endproc
	.section .rdata,"dr"
.LC164:
	.ascii "11 4 22 44 44 22 444444\0"
	.text
	.p2align 4,,15
	.globl	stbi_write_bmp_to_func
	.def	stbi_write_bmp_to_func;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_bmp_to_func
stbi_write_bmp_to_func:
.LFB1019:
	subq	$248, %rsp
	.seh_stackalloc	248
	.seh_endprologue
	movq	%rdx, 232(%rsp)
	leal	(%r8,%r8,2), %eax
	movl	%r8d, %edx
	andl	$3, %edx
	movl	%r9d, 152(%rsp)
	addl	%edx, %eax
	movl	%r8d, 144(%rsp)
	imull	%r9d, %eax
	movl	%r9d, 32(%rsp)
	movl	%r8d, %r9d
	movl	$-1, %r8d
	movq	%rcx, 224(%rsp)
	leaq	224(%rsp), %rcx
	movl	%edx, 72(%rsp)
	movl	%r8d, %edx
	addl	$54, %eax
	movl	$1, 48(%rsp)
	movl	%eax, 104(%rsp)
	leaq	.LC164(%rip), %rax
	movq	%rax, 80(%rsp)
	movq	296(%rsp), %rax
	movl	$0, 216(%rsp)
	movl	$0, 208(%rsp)
	movl	$0, 200(%rsp)
	movq	%rax, 56(%rsp)
	movl	288(%rsp), %eax
	movl	$0, 192(%rsp)
	movl	$0, 184(%rsp)
	movl	$0, 176(%rsp)
	movl	%eax, 40(%rsp)
	movl	$24, 168(%rsp)
	movl	$1, 160(%rsp)
	movl	$40, 136(%rsp)
	movl	$54, 128(%rsp)
	movl	$0, 120(%rsp)
	movl	$0, 112(%rsp)
	movl	$77, 96(%rsp)
	movl	$66, 88(%rsp)
	movl	$0, 64(%rsp)
	call	_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.120
	addq	$248, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC165:
	.ascii "wb\0"
	.text
	.p2align 4,,15
	.globl	stbi_write_bmp
	.def	stbi_write_bmp;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_bmp
stbi_write_bmp:
.LFB1020:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$248, %rsp
	.seh_stackalloc	248
	.seh_endprologue
	leaq	_ZL17stbi__stdio_writePvS_i(%rip), %rdi
	movl	%edx, %ebx
	movl	%r8d, %esi
	movl	%r9d, %ebp
	leaq	.LC165(%rip), %rdx
	call	fopen
	movq	%rdi, 224(%rsp)
	xorl	%edi, %edi
	testq	%rax, %rax
	movq	%rax, 232(%rsp)
	je	.L5563
	movl	%ebx, %edx
	movl	$-1, %r8d
	movl	%ebp, 40(%rsp)
	movl	%ebx, %r9d
	leal	(%rbx,%rbx,2), %eax
	andl	$3, %edx
	movl	%esi, 32(%rsp)
	leaq	224(%rsp), %rcx
	addl	%edx, %eax
	movl	%edx, 72(%rsp)
	movl	%r8d, %edx
	imull	%esi, %eax
	movl	$0, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	$0, 216(%rsp)
	addl	$54, %eax
	movl	$0, 208(%rsp)
	movl	%eax, 104(%rsp)
	leaq	.LC164(%rip), %rax
	movq	%rax, 80(%rsp)
	movq	320(%rsp), %rax
	movl	$0, 200(%rsp)
	movl	$0, 192(%rsp)
	movl	$0, 184(%rsp)
	movq	%rax, 56(%rsp)
	movl	$0, 176(%rsp)
	movl	$24, 168(%rsp)
	movl	$1, 160(%rsp)
	movl	%esi, 152(%rsp)
	movl	%ebx, 144(%rsp)
	movl	$40, 136(%rsp)
	movl	$54, 128(%rsp)
	movl	$0, 120(%rsp)
	movl	$0, 112(%rsp)
	movl	$77, 96(%rsp)
	movl	$66, 88(%rsp)
	call	_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.120
	movq	232(%rsp), %rcx
	movl	%eax, %edi
	call	fclose
.L5563:
	movl	%edi, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_write_tga_to_func
	.def	stbi_write_tga_to_func;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_tga_to_func
stbi_write_tga_to_func:
.LFB1022:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rdx, 56(%rsp)
	movq	120(%rsp), %rdx
	movl	%r8d, %eax
	movl	%r9d, %r8d
	movl	112(%rsp), %r9d
	movq	%rcx, 48(%rsp)
	leaq	48(%rsp), %rcx
	movq	%rdx, 32(%rsp)
	movl	%eax, %edx
	call	_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv
	addq	$72, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_write_tga
	.def	stbi_write_tga;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_tga
stbi_write_tga:
.LFB1023:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%ebx, %ebx
	movl	%edx, %esi
	movl	%r8d, %edi
	movl	%r9d, %ebp
	leaq	.LC165(%rip), %rdx
	call	fopen
	leaq	_ZL17stbi__stdio_writePvS_i(%rip), %rdx
	testq	%rax, %rax
	movq	%rdx, 48(%rsp)
	movq	%rax, 56(%rsp)
	je	.L5568
	movq	144(%rsp), %rax
	movl	%ebp, %r9d
	movl	%edi, %r8d
	movl	%esi, %edx
	leaq	48(%rsp), %rcx
	movq	%rax, 32(%rsp)
	call	_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv
	movq	56(%rsp), %rcx
	movl	%eax, %ebx
	call	fclose
.L5568:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z21stbiw__linear_to_rgbePhPf
	.def	_Z21stbiw__linear_to_rgbePhPf;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z21stbiw__linear_to_rgbePhPf
_Z21stbiw__linear_to_rgbePhPf:
.LFB1024:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movss	.LC166(%rip), %xmm0
	movss	(%rdx), %xmm7
	movss	4(%rdx), %xmm6
	maxss	8(%rdx), %xmm6
	movaps	%xmm7, %xmm2
	movq	%rdx, %rbx
	maxss	%xmm6, %xmm2
	ucomiss	%xmm2, %xmm0
	movaps	%xmm2, %xmm6
	jbe	.L5580
	movl	$0, (%rcx)
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	addq	$96, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L5580:
	leaq	60(%rsp), %rdx
	movaps	%xmm2, %xmm0
	movq	%rcx, 40(%rsp)
	call	frexpf
	mulss	.LC167(%rip), %xmm0
	movq	40(%rsp), %rcx
	divss	%xmm6, %xmm0
	mulss	%xmm0, %xmm7
	cvttss2si	%xmm7, %eax
	movb	%al, (%rcx)
	movss	4(%rbx), %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, 1(%rcx)
	mulss	8(%rbx), %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, 2(%rcx)
	movzbl	60(%rsp), %eax
	addl	$-128, %eax
	movb	%al, 3(%rcx)
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	addq	$96, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC168:
	.ascii "length+128 <= 255\0"
	.text
	.p2align 4,,15
	.globl	_Z21stbiw__write_run_dataP19stbi__write_contextih
	.def	_Z21stbiw__write_run_dataP19stbi__write_contextih;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z21stbiw__write_run_dataP19stbi__write_contextih
_Z21stbiw__write_run_dataP19stbi__write_contextih:
.LFB1025:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leal	-128(%rdx), %eax
	cmpl	$127, %edx
	movq	%rcx, %rbx
	movb	%r8b, 80(%rsp)
	movb	%al, 47(%rsp)
	jle	.L5582
	leaq	.LC33(%rip), %rdx
	movl	$499, %r8d
	leaq	.LC168(%rip), %rcx
	call	_assert
.L5582:
	leaq	47(%rsp), %rdx
	movq	8(%rbx), %rcx
	movl	$1, %r8d
	call	*(%rbx)
	movq	8(%rbx), %rcx
	leaq	80(%rsp), %rdx
	movl	$1, %r8d
	call	*(%rbx)
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC169:
	.ascii "length <= 128\0"
	.text
	.p2align 4,,15
	.globl	_Z22stbiw__write_dump_dataP19stbi__write_contextiPh
	.def	_Z22stbiw__write_dump_dataP19stbi__write_contextiPh;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z22stbiw__write_dump_dataP19stbi__write_contextiPh
_Z22stbiw__write_dump_dataP19stbi__write_contextiPh:
.LFB1026:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	cmpl	$128, %edx
	movq	%rcx, %rbx
	movl	%edx, %esi
	movb	%dl, 47(%rsp)
	movq	%r8, %rdi
	jle	.L5584
	leaq	.LC33(%rip), %rdx
	movl	$507, %r8d
	leaq	.LC169(%rip), %rcx
	call	_assert
.L5584:
	leaq	47(%rsp), %rdx
	movq	8(%rbx), %rcx
	movl	$1, %r8d
	call	*(%rbx)
	movq	8(%rbx), %rcx
	movl	%esi, %r8d
	movq	%rdi, %rdx
	call	*(%rbx)
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf
	.def	_Z25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf
_Z25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf:
.LFB1027:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$184, %rsp
	.seh_stackalloc	184
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	movaps	%xmm9, 128(%rsp)
	.seh_savexmm	%xmm9, 128
	movaps	%xmm10, 144(%rsp)
	.seh_savexmm	%xmm10, 144
	movaps	%xmm11, 160(%rsp)
	.seh_savexmm	%xmm11, 160
	.seh_endprologue
	movl	$514, %eax
	movl	%edx, 264(%rsp)
	movq	%rcx, %r15
	movw	%ax, 72(%rsp)
	movzbl	264(%rsp), %eax
	movb	%dh, 74(%rsp)
	movq	%r9, 280(%rsp)
	movb	%al, 75(%rsp)
	movl	%edx, %eax
	leal	-8(%rdx), %edx
	cmpl	$32759, %edx
	jbe	.L5586
	testl	%eax, %eax
	jle	.L5585
	movq	288(%rsp), %r12
	movslq	%r8d, %rbx
	xorl	%r14d, %r14d
	movss	.LC166(%rip), %xmm7
	leal	-3(%r8), %edi
	salq	$2, %rbx
	movss	.LC167(%rip), %xmm10
	leaq	76(%rsp), %rsi
	leaq	68(%rsp), %rbp
	.p2align 4,,10
.L5588:
	cmpl	$1, %edi
	movss	(%r12), %xmm8
	ja	.L5623
	movss	4(%r12), %xmm11
	movss	8(%r12), %xmm6
	movaps	%xmm11, %xmm9
	maxss	%xmm6, %xmm9
.L5589:
	movaps	%xmm8, %xmm1
	maxss	%xmm9, %xmm1
	ucomiss	%xmm1, %xmm7
	movaps	%xmm1, %xmm9
	jbe	.L5639
	movq	8(%r15), %rcx
	movl	$4, %r8d
	movq	%rsi, %rdx
	addq	%rbx, %r12
	movl	$0, 76(%rsp)
	addl	$1, %r14d
	call	*(%r15)
	cmpl	264(%rsp), %r14d
	jne	.L5588
.L5585:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
	movaps	144(%rsp), %xmm10
	movaps	160(%rsp), %xmm11
	addq	$184, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L5586:
	movl	264(%rsp), %eax
	leal	-3(%r8), %edi
	movslq	%r8d, %rbp
	movq	%r15, 256(%rsp)
	movq	%r9, %rsi
	salq	$2, %rbp
	movq	288(%rsp), %rbx
	movss	.LC166(%rip), %xmm7
	movss	.LC167(%rip), %xmm10
	leal	-1(%rax), %ecx
	movl	%ecx, 60(%rsp)
	leaq	1(%r9,%rcx), %r13
	movl	264(%rsp), %ecx
	leal	(%rax,%rax), %r14d
	movslq	264(%rsp), %rax
	leal	(%r14,%rcx), %r12d
	leaq	68(%rsp), %rcx
	movq	%r12, %r15
	movq	%rax, 48(%rsp)
	movl	%edi, %r12d
	movq	%rcx, 32(%rsp)
	movq	%rax, %rdi
	jmp	.L5603
.L5646:
	movss	4(%rbx), %xmm11
	movss	8(%rbx), %xmm6
	movaps	%xmm11, %xmm8
	maxss	%xmm6, %xmm8
.L5596:
	movaps	%xmm9, %xmm2
	maxss	%xmm8, %xmm2
	ucomiss	%xmm2, %xmm7
	movaps	%xmm2, %xmm8
	jbe	.L5640
	movl	$0, 76(%rsp)
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
.L5602:
	movb	%dl, (%rsi)
	addq	$1, %rsi
	addq	%rbp, %rbx
	movb	%r8b, -1(%rsi,%rdi)
	movb	%r9b, -1(%rsi,%r14)
	movb	%al, -1(%rsi,%r15)
	cmpq	%r13, %rsi
	je	.L5645
.L5603:
	cmpl	$1, %r12d
	movss	(%rbx), %xmm9
	jbe	.L5646
	movaps	%xmm9, %xmm11
	movaps	%xmm9, %xmm6
	movaps	%xmm9, %xmm8
	jmp	.L5596
.L5640:
	movq	32(%rsp), %rdx
	movaps	%xmm2, %xmm0
	call	frexpf
	mulss	%xmm10, %xmm0
	divss	%xmm8, %xmm0
	mulss	%xmm0, %xmm9
	mulss	%xmm0, %xmm11
	mulss	%xmm6, %xmm0
	cvttss2si	%xmm9, %eax
	movl	%eax, %edx
	movb	%al, 76(%rsp)
	cvttss2si	%xmm11, %eax
	movl	%eax, %r8d
	movb	%al, 77(%rsp)
	cvttss2si	%xmm0, %eax
	movl	%eax, %r9d
	movb	%al, 78(%rsp)
	movzbl	68(%rsp), %eax
	addl	$-128, %eax
	movb	%al, 79(%rsp)
	jmp	.L5602
.L5645:
	movq	256(%rsp), %r15
	leaq	72(%rsp), %rdx
	movl	$4, %r8d
	movq	8(%r15), %rcx
	call	*(%r15)
	movq	280(%rsp), %rax
	movl	$4, 56(%rsp)
	subq	$1, %rax
	movq	%rax, 40(%rsp)
	movl	264(%rsp), %eax
	leal	-2(%rax), %edi
	leaq	68(%rsp), %rax
	movq	%rax, 32(%rsp)
.L5622:
	xorl	%r14d, %r14d
	movq	40(%rsp), %rax
	movq	%r15, 256(%rsp)
	movl	%r14d, %r15d
	movq	256(%rsp), %r14
	leaq	1(%rax), %rbp
.L5620:
	movq	%r14, %rsi
	.p2align 4,,10
.L5604:
	leal	2(%r15), %eax
	cmpl	%eax, 264(%rsp)
	jle	.L5629
	movslq	%r15d, %rax
	movl	%r15d, %r13d
	addq	%rbp, %rax
	jmp	.L5609
	.p2align 4,,10
.L5607:
	addl	$1, %r13d
	addq	$1, %rax
	cmpl	%edi, %r13d
	je	.L5629
.L5609:
	movzbl	(%rax), %edx
	leal	2(%r13), %r12d
	cmpb	1(%rax), %dl
	jne	.L5607
	cmpb	2(%rax), %dl
	jne	.L5607
	cmpl	%r12d, 264(%rsp)
	jle	.L5629
.L5606:
	cmpl	%r13d, %r15d
	jge	.L5610
.L5612:
	movl	%r13d, %ebx
	movslq	%r15d, %rdx
	leaq	0(%rbp,%rdx), %r14
	subl	%r15d, %ebx
	cmpl	$128, %ebx
	jle	.L5611
	subl	$-128, %r15d
	movq	8(%rsi), %rcx
	movl	$1, %r8d
	movb	$-128, 68(%rsp)
	movq	32(%rsp), %rdx
	call	*(%rsi)
	movq	8(%rsi), %rcx
	movl	$128, %r8d
	movq	%r14, %rdx
	call	*(%rsi)
	cmpl	%r15d, %r13d
	jg	.L5612
.L5610:
	cmpl	264(%rsp), %r12d
	jl	.L5647
	.p2align 4,,10
.L5613:
	cmpl	%r15d, 264(%rsp)
	jg	.L5604
	movq	%rsi, %r15
.L5605:
	movq	48(%rsp), %rsi
	addq	%rsi, 40(%rsp)
	subl	$1, 56(%rsp)
	jne	.L5622
	jmp	.L5585
	.p2align 4,,10
.L5611:
	movq	8(%rsi), %rcx
	movl	$1, %r8d
	movb	%bl, 68(%rsp)
	movl	%r13d, %r15d
	movq	32(%rsp), %rdx
	call	*(%rsi)
	movq	8(%rsi), %rcx
	movl	%ebx, %r8d
	movq	%r14, %rdx
	call	*(%rsi)
	cmpl	264(%rsp), %r12d
	jge	.L5613
.L5647:
	cmpl	264(%rsp), %r13d
	movq	%rsi, %r14
	jge	.L5614
	movslq	%r13d, %rdx
	movzbl	0(%rbp,%rdx), %r8d
	movslq	%r15d, %rdx
	cmpb	0(%rbp,%rdx), %r8b
	jne	.L5614
	movl	60(%rsp), %ecx
	leal	1(%r13), %edx
	movslq	%edx, %rdx
	movq	40(%rsp), %rax
	subl	%r13d, %ecx
	addq	%rdx, %rcx
	jmp	.L5616
	.p2align 4,,10
.L5642:
	addq	$1, %rdx
	cmpb	%r8b, (%rax,%rdx)
	jne	.L5614
.L5616:
	cmpq	%rdx, %rcx
	movl	%edx, %r13d
	jne	.L5642
.L5614:
	cmpl	%r13d, %r15d
	jge	.L5631
	leaq	67(%rsp), %rbx
	movl	$-1, %esi
.L5618:
	movl	%r13d, %edx
	movslq	%r15d, %rax
	subl	%r15d, %edx
	movzbl	0(%rbp,%rax), %ecx
	cmpl	$127, %edx
	jle	.L5621
	addl	$127, %r15d
	movb	%cl, 67(%rsp)
	movl	$1, %r8d
	movq	8(%r14), %rcx
	movq	32(%rsp), %rdx
	movb	%sil, 68(%rsp)
	call	*(%r14)
	movq	8(%r14), %rcx
	movl	$1, %r8d
	movq	%rbx, %rdx
	call	*(%r14)
	cmpl	%r15d, %r13d
	jg	.L5618
.L5631:
	movl	%r15d, %r13d
	cmpl	%r13d, 264(%rsp)
	jle	.L5644
	.p2align 4,,10
.L5648:
	movl	%r13d, %r15d
	jmp	.L5620
	.p2align 4,,10
.L5629:
	movl	264(%rsp), %r13d
	leal	2(%r13), %r12d
	jmp	.L5606
	.p2align 4,,10
.L5621:
	addl	$-128, %edx
	movb	%cl, 67(%rsp)
	movl	$1, %r8d
	movq	8(%r14), %rcx
	movb	%dl, 68(%rsp)
	movq	32(%rsp), %rdx
	call	*(%r14)
	movq	8(%r14), %rcx
	movl	$1, %r8d
	movq	%rbx, %rdx
	call	*(%r14)
	cmpl	%r13d, 264(%rsp)
	jg	.L5648
.L5644:
	movq	%r14, %r15
	jmp	.L5605
.L5623:
	movaps	%xmm8, %xmm6
	movaps	%xmm8, %xmm11
	movaps	%xmm8, %xmm9
	jmp	.L5589
.L5639:
	movq	%rbp, %rdx
	movaps	%xmm1, %xmm0
	addl	$1, %r14d
	call	frexpf
	addq	%rbx, %r12
	movq	8(%r15), %rcx
	movq	%rsi, %rdx
	mulss	%xmm10, %xmm0
	movl	$4, %r8d
	divss	%xmm9, %xmm0
	mulss	%xmm0, %xmm8
	mulss	%xmm0, %xmm11
	mulss	%xmm6, %xmm0
	cvttss2si	%xmm8, %eax
	movb	%al, 76(%rsp)
	cvttss2si	%xmm11, %eax
	movb	%al, 77(%rsp)
	cvttss2si	%xmm0, %eax
	movb	%al, 78(%rsp)
	movzbl	68(%rsp), %eax
	addl	$-128, %eax
	movb	%al, 79(%rsp)
	call	*(%r15)
	cmpl	%r14d, 264(%rsp)
	jne	.L5588
	jmp	.L5585
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC170:
	.ascii "EXPOSURE=          1.0000000000000\12\12-Y %d +X %d\12\0"
	.text
	.p2align 4,,15
	.globl	stbi_write_hdr_to_func
	.def	stbi_write_hdr_to_func;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_hdr_to_func
stbi_write_hdr_to_func:
.LFB1029:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	movq	392(%rsp), %rbx
	movl	384(%rsp), %r13d
	testl	%r9d, %r9d
	movq	%rdx, %r12
	movq	%rdx, 56(%rsp)
	movq	%rcx, %rsi
	setle	%dl
	testq	%rbx, %rbx
	movl	%r8d, %edi
	movq	%rcx, 48(%rsp)
	sete	%al
	movl	%r9d, %ebp
	orb	%al, %dl
	jne	.L5652
	testl	%r8d, %r8d
	jg	.L5654
.L5652:
	xorl	%eax, %eax
.L5649:
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L5654:
	leal	0(,%r8,4), %ecx
	leaq	48(%rsp), %r15
	movslq	%ecx, %rcx
	call	malloc
	movq	%r12, %rcx
	movl	%edi, %r12d
	movl	$65, %r8d
	imull	%r13d, %r12d
	leaq	64(%rsp), %rdx
	movq	%rax, %r14
	movabsq	$5638868765947084579, %rax
	movq	%rax, 64(%rsp)
	movabsq	$7598231316865893699, %rax
	movq	%rax, 72(%rsp)
	movslq	%r12d, %r12
	movabsq	$2340009372826301556, %rax
	movq	%rax, 80(%rsp)
	salq	$2, %r12
	movabsq	$7449355557986792563, %rax
	movq	%rax, 88(%rsp)
	movabsq	$3343206294633275237, %rax
	movq	%rax, 96(%rsp)
	movabsq	$6071218788584786536, %rax
	movq	%rax, 104(%rsp)
	movabsq	$6878238401287566141, %rax
	movq	%rax, 112(%rsp)
	movabsq	$7305515286472780914, %rax
	movq	%rax, 120(%rsp)
	movl	$10, %eax
	movw	%ax, 128(%rsp)
	call	*%rsi
	leaq	144(%rsp), %rsi
	movl	%edi, %r9d
	movl	%ebp, %r8d
	leaq	.LC170(%rip), %rdx
	movq	%rsi, %rcx
	call	sprintf
	movq	%rsi, %rdx
	movq	56(%rsp), %rcx
	xorl	%esi, %esi
	movl	%eax, %r8d
	call	*48(%rsp)
	.p2align 4,,10
.L5651:
	movq	%rbx, 32(%rsp)
	movq	%r14, %r9
	movl	%r13d, %r8d
	movl	%edi, %edx
	movq	%r15, %rcx
	addl	$1, %esi
	addq	%r12, %rbx
	call	_Z25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf
	cmpl	%esi, %ebp
	jg	.L5651
	movq	%r14, %rcx
	call	free
	movl	$1, %eax
	jmp	.L5649
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_write_hdr
	.def	stbi_write_hdr;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_hdr
stbi_write_hdr:
.LFB1030:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	xorl	%esi, %esi
	movl	%edx, %edi
	movl	%r8d, %ebp
	movl	%r9d, %r12d
	leaq	.LC165(%rip), %rdx
	call	fopen
	movq	%rax, %rbx
	leaq	_ZL17stbi__stdio_writePvS_i(%rip), %rax
	testq	%rbx, %rbx
	movq	%rbx, 56(%rsp)
	movq	%rax, 48(%rsp)
	je	.L5655
	testl	%ebp, %ebp
	setle	%dl
	cmpq	$0, 384(%rsp)
	sete	%al
	orb	%al, %dl
	jne	.L5660
	testl	%edi, %edi
	jg	.L5663
.L5660:
	xorl	%esi, %esi
.L5657:
	movq	%rbx, %rcx
	call	fclose
.L5655:
	movl	%esi, %eax
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L5663:
	leal	0(,%rdi,4), %ecx
	movl	%edi, %r13d
	imull	%r12d, %r13d
	leaq	48(%rsp), %r15
	movslq	%ecx, %rcx
	call	malloc
	movq	%rbx, %rcx
	movl	$65, %r8d
	leaq	144(%rsp), %rbx
	movq	%rax, %r14
	movabsq	$5638868765947084579, %rax
	movq	%rax, 64(%rsp)
	leaq	64(%rsp), %rdx
	movslq	%r13d, %r13
	movabsq	$7598231316865893699, %rax
	movq	%rax, 72(%rsp)
	salq	$2, %r13
	movabsq	$2340009372826301556, %rax
	movq	%rax, 80(%rsp)
	movabsq	$7449355557986792563, %rax
	movq	%rax, 88(%rsp)
	movabsq	$3343206294633275237, %rax
	movq	%rax, 96(%rsp)
	movabsq	$6071218788584786536, %rax
	movq	%rax, 104(%rsp)
	movabsq	$6878238401287566141, %rax
	movq	%rax, 112(%rsp)
	movabsq	$7305515286472780914, %rax
	movq	%rax, 120(%rsp)
	movl	$10, %eax
	movw	%ax, 128(%rsp)
	call	_ZL17stbi__stdio_writePvS_i
	movq	%rbx, %rcx
	movl	%edi, %r9d
	movl	%ebp, %r8d
	leaq	.LC170(%rip), %rdx
	call	sprintf
	movq	%rbx, %rdx
	movq	56(%rsp), %rcx
	movl	%eax, %r8d
	call	*48(%rsp)
	movq	384(%rsp), %rbx
	.p2align 4,,10
.L5658:
	movq	%rbx, 32(%rsp)
	movq	%r14, %r9
	movl	%r12d, %r8d
	movl	%edi, %edx
	movq	%r15, %rcx
	addl	$1, %esi
	addq	%r13, %rbx
	call	_Z25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf
	cmpl	%esi, %ebp
	jg	.L5658
	movq	%r14, %rcx
	movl	$1, %esi
	call	free
	movq	56(%rsp), %rbx
	jmp	.L5657
	.seh_endproc
	.section .rdata,"dr"
.LC171:
	.ascii "d <= 32767 && best <= 258\0"
	.text
	.p2align 4,,15
	.globl	_Z18stbi_zlib_compressPhiPii
	.def	_Z18stbi_zlib_compressPhiPii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18stbi_zlib_compressPhiPii
_Z18stbi_zlib_compressPhiPii:
.LFB1036:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$136, %rsp
	.seh_stackalloc	136
	.seh_endprologue
	movq	%rcx, %r15
	movl	$131072, %ecx
	movl	%r9d, %ebx
	movl	%edx, 216(%rsp)
	movq	%r8, 224(%rsp)
	movl	$0, 112(%rsp)
	movl	$0, 116(%rsp)
	movq	$0, 120(%rsp)
	call	malloc
	cmpl	$5, %ebx
	movl	$1, %edx
	movq	%rax, 56(%rsp)
	movl	$5, %eax
	cmovge	%ebx, %eax
	movl	%eax, 100(%rsp)
	leaq	120(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 88(%rsp)
	call	_ZL14stbiw__sbgrowfPPvii.constprop.119
	movq	120(%rsp), %rdx
	movslq	-4(%rdx), %rax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rdx)
	movb	$120, (%rdx,%rax)
	movq	120(%rsp), %rax
	testq	%rax, %rax
	je	.L5665
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	cmpl	-8(%rax), %ecx
	jge	.L5665
.L5666:
	movl	%ecx, -4(%rax)
	leaq	116(%rsp), %rdi
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movb	$94, (%rax,%rdx)
	movl	116(%rsp), %ecx
	movl	%ebx, %eax
	movq	%rdi, %r8
	leaq	112(%rsp), %rsi
	movq	%rdi, 48(%rsp)
	movq	%rsi, %rdx
	movq	%rsi, 40(%rsp)
	sall	%cl, %eax
	addl	$1, %ecx
	orl	%eax, 112(%rsp)
	movl	%ecx, 116(%rsp)
	movq	120(%rsp), %rcx
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movl	116(%rsp), %ecx
	movq	%rdi, %r8
	movq	%rsi, %rdx
	movq	%rax, 120(%rsp)
	sall	%cl, %ebx
	addl	$2, %ecx
	orl	%ebx, 112(%rsp)
	movl	%ecx, 116(%rsp)
	movq	%rax, %rcx
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movq	56(%rsp), %rcx
	movl	$131072, %r8d
	xorl	%edx, %edx
	movq	%rax, 120(%rsp)
	call	memset
	movslq	100(%rsp), %rax
	leal	(%rax,%rax), %edi
	salq	$3, %rax
	movq	%rax, 104(%rsp)
	movl	216(%rsp), %eax
	movl	%edi, 96(%rsp)
	subl	$3, %eax
	movl	%eax, 84(%rsp)
.L5667:
	cmpl	84(%rsp), %r14d
	jge	.L5668
.L5778:
	movslq	%r14d, %rax
	movq	56(%rsp), %rsi
	leaq	(%r15,%rax), %rbx
	movq	%rax, 72(%rsp)
	movzbl	1(%rbx), %eax
	movzbl	(%rbx), %edx
	sall	$8, %eax
	movl	%edx, %edi
	addl	%eax, %edx
	movzbl	2(%rbx), %eax
	sall	$16, %eax
	addl	%edx, %eax
	leal	0(,%rax,8), %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$5, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	sall	$4, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$17, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	sall	$25, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$6, %edx
	addl	%edx, %eax
	andl	$16383, %eax
	leaq	(%rsi,%rax,8), %rax
	movq	(%rax), %rcx
	movq	%rax, 64(%rsp)
	testq	%rcx, %rcx
	je	.L5721
	movslq	-4(%rcx), %rbp
	testl	%ebp, %ebp
	jle	.L5722
	movl	216(%rsp), %r11d
	leal	-1(%rbp), %eax
	movq	%rcx, %r8
	movl	$3, %esi
	movq	$0, 32(%rsp)
	leal	-32768(%r14), %r12d
	leaq	8(%rcx,%rax,8), %r13
	movslq	%r12d, %r12
	subl	%r14d, %r11d
	jmp	.L5676
	.p2align 4,,10
.L5671:
	addq	$8, %r8
	cmpq	%r8, %r13
	je	.L5670
.L5676:
	movq	(%r8), %rdx
	movq	%rdx, %rax
	subq	%r15, %rax
	cmpq	%r12, %rax
	jle	.L5671
	testl	%r11d, %r11d
	jle	.L5671
	cmpb	(%rdx), %dil
	jne	.L5671
	movl	$1, %eax
	.p2align 4,,10
.L5672:
	cmpl	%eax, %r11d
	movl	%eax, %r10d
	jle	.L5673
	cmpl	$257, %eax
	jg	.L5673
	movzbl	(%rdx,%rax), %r9d
	addq	$1, %rax
	cmpb	-1(%rbx,%rax), %r9b
	je	.L5672
.L5673:
	cmpl	%r10d, %esi
	jg	.L5671
	addq	$8, %r8
	movq	%rdx, 32(%rsp)
	movl	%r10d, %esi
	cmpq	%r8, %r13
	jne	.L5676
	.p2align 4,,10
.L5670:
	cmpl	%ebp, 96(%rsp)
	je	.L5776
.L5720:
	leal	1(%rbp), %eax
	cmpl	-8(%rcx), %eax
	jl	.L5677
	movq	64(%rsp), %rdi
.L5669:
	movq	%rdi, %rcx
	movl	$8, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.119
	movq	(%rdi), %rcx
	movslq	-4(%rcx), %rbp
	leal	1(%rbp), %eax
.L5677:
	cmpq	$0, 32(%rsp)
	movl	%eax, -4(%rcx)
	movq	%rbx, (%rcx,%rbp,8)
	je	.L5678
	movq	72(%rsp), %rax
	movq	56(%rsp), %rdi
	leaq	1(%r15,%rax), %rcx
	movzbl	1(%rcx), %eax
	movzbl	(%rcx), %edx
	sall	$8, %eax
	movl	%edx, %ebp
	addl	%eax, %edx
	movzbl	2(%rcx), %eax
	sall	$16, %eax
	addl	%edx, %eax
	leal	0(,%rax,8), %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$5, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	sall	$4, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$17, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	sall	$25, %edx
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$6, %edx
	addl	%edx, %eax
	andl	$16383, %eax
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L5679
	movl	-4(%rdx), %eax
	testl	%eax, %eax
	jle	.L5679
	movl	216(%rsp), %edi
	leal	-32767(%r14), %r11d
	subl	$1, %eax
	movslq	%r11d, %r11
	leal	-1(%rdi), %r9d
	leaq	8(%rdx,%rax,8), %rdi
	subl	%r14d, %r9d
	jmp	.L5685
	.p2align 4,,10
.L5680:
	addq	$8, %rdx
	cmpq	%rdx, %rdi
	je	.L5679
.L5685:
	movq	(%rdx), %rcx
	movq	%rcx, %rax
	subq	%r15, %rax
	cmpq	%r11, %rax
	jle	.L5680
	testl	%r9d, %r9d
	jle	.L5680
	cmpb	%bpl, (%rcx)
	jne	.L5680
	movl	$1, %eax
	.p2align 4,,10
.L5681:
	cmpl	%eax, %r9d
	movl	%eax, %r10d
	jle	.L5682
	cmpl	$257, %eax
	jg	.L5682
	movzbl	(%rcx,%rax), %r8d
	addq	$1, %rax
	cmpb	(%rbx,%rax), %r8b
	je	.L5681
.L5682:
	cmpl	%esi, %r10d
	jle	.L5680
.L5678:
	movzbl	(%rbx), %eax
	movl	116(%rsp), %ecx
	movl	112(%rsp), %edx
	movq	120(%rsp), %r9
	cmpb	$-113, %al
	ja	.L5777
	addl	$48, %eax
	leal	(%rax,%rax), %r8d
	movl	%eax, %r10d
	sarl	%r10d
	andl	$2, %r8d
	andl	$1, %r10d
	orl	%r10d, %r8d
	leal	(%r8,%r8), %r10d
	movl	%eax, %r8d
	sarl	$2, %r8d
	andl	$1, %r8d
	orl	%r10d, %r8d
	leal	(%r8,%r8), %r10d
	movl	%eax, %r8d
	sarl	$3, %r8d
	andl	$1, %r8d
	orl	%r10d, %r8d
	leal	(%r8,%r8), %r10d
	movl	%eax, %r8d
	sarl	$4, %r8d
	andl	$1, %r8d
	orl	%r10d, %r8d
	leal	(%r8,%r8), %r10d
	movl	%eax, %r8d
	sarl	$5, %r8d
	andl	$1, %r8d
	orl	%r10d, %r8d
	leal	(%r8,%r8), %r10d
	movl	%eax, %r8d
	sarl	$7, %eax
	sarl	$6, %r8d
	andl	$1, %r8d
	orl	%r10d, %r8d
	addl	%r8d, %r8d
	orl	%r8d, %eax
	sall	%cl, %eax
	addl	$8, %ecx
	orl	%edx, %eax
	movl	%eax, 112(%rsp)
.L5773:
	movq	48(%rsp), %r8
	movl	%ecx, 116(%rsp)
	movq	%r9, %rcx
	addl	$1, %r14d
	movq	40(%rsp), %rdx
	call	_ZL18stbiw__zlib_flushfPhPjPi
	cmpl	84(%rsp), %r14d
	movq	%rax, 120(%rsp)
	jl	.L5778
.L5668:
	cmpl	216(%rsp), %r14d
	movq	120(%rsp), %rax
	jge	.L5694
	movl	216(%rsp), %edi
	movslq	%r14d, %rdx
	movq	48(%rsp), %rbp
	leaq	1(%r15,%rdx), %rcx
	leaq	(%r15,%rdx), %rsi
	leal	-1(%rdi), %ebx
	movq	40(%rsp), %rdi
	movl	%ebx, %edx
	subl	%r14d, %edx
	leaq	(%rcx,%rdx), %rbx
.L5697:
	movzbl	(%rsi), %edx
	movl	116(%rsp), %ecx
	movl	112(%rsp), %r8d
	cmpb	$-113, %dl
	ja	.L5695
	addl	$48, %edx
	leal	(%rdx,%rdx), %r9d
	movl	%edx, %r10d
	sarl	%r10d
	andl	$2, %r9d
	andl	$1, %r10d
	orl	%r10d, %r9d
	leal	(%r9,%r9), %r10d
	movl	%edx, %r9d
	sarl	$2, %r9d
	andl	$1, %r9d
	orl	%r10d, %r9d
	leal	(%r9,%r9), %r10d
	movl	%edx, %r9d
	sarl	$3, %r9d
	andl	$1, %r9d
	orl	%r10d, %r9d
	leal	(%r9,%r9), %r10d
	movl	%edx, %r9d
	sarl	$4, %r9d
	andl	$1, %r9d
	orl	%r10d, %r9d
	leal	(%r9,%r9), %r10d
	movl	%edx, %r9d
	sarl	$5, %r9d
	andl	$1, %r9d
	orl	%r10d, %r9d
	leal	(%r9,%r9), %r10d
	movl	%edx, %r9d
	sarl	$7, %edx
	sarl	$6, %r9d
	andl	$1, %r9d
	orl	%r10d, %r9d
	addl	%r9d, %r9d
	orl	%r9d, %edx
	sall	%cl, %edx
	addl	$8, %ecx
	orl	%r8d, %edx
	movl	%edx, 112(%rsp)
.L5774:
	movl	%ecx, 116(%rsp)
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	_ZL18stbiw__zlib_flushfPhPjPi
	addq	$1, %rsi
	cmpq	%rbx, %rsi
	movq	%rax, 120(%rsp)
	jne	.L5697
.L5694:
	movq	48(%rsp), %rsi
	addl	$7, 116(%rsp)
	movq	40(%rsp), %rbx
	movq	%rsi, %r8
	jmp	.L5775
	.p2align 4,,10
.L5779:
	addl	$1, %edx
	movq	%rsi, %r8
	movl	%edx, 116(%rsp)
.L5775:
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movl	116(%rsp), %edx
	movq	%rax, 120(%rsp)
	testl	%edx, %edx
	jne	.L5779
	movq	56(%rsp), %rax
	leaq	131072(%rax), %rsi
	movq	%rax, %rbx
	.p2align 4,,10
.L5701:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L5700
	subq	$8, %rcx
	call	free
.L5700:
	addq	$8, %rbx
	cmpq	%rbx, %rsi
	jne	.L5701
	movq	56(%rsp), %rcx
	call	free
	movl	$1584310703, %edx
	movl	%edx, %eax
	imull	216(%rsp)
	movl	216(%rsp), %eax
	sarl	$11, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	216(%rsp), %eax
	imull	$5552, %edx, %r10d
	subl	%r10d, %eax
	movl	%eax, %r10d
	movl	216(%rsp), %eax
	testl	%eax, %eax
	jle	.L5725
	testl	%r10d, %r10d
	movl	$5552, %r9d
	jle	.L5703
	movl	%r10d, %r9d
	xorl	%r10d, %r10d
.L5703:
	movl	216(%rsp), %esi
	movl	$1, %ecx
	xorl	%ebx, %ebx
	movl	$-2146992015, %r11d
	.p2align 4,,10
.L5705:
	movslq	%r10d, %r8
	xorl	%eax, %eax
	addq	%r15, %r8
	.p2align 4,,10
.L5704:
	movzbl	(%r8,%rax), %edx
	addq	$1, %rax
	addl	%edx, %ecx
	addl	%ecx, %ebx
	cmpl	%eax, %r9d
	jg	.L5704
	movl	%ecx, %eax
	addl	%r9d, %r10d
	movl	$5552, %r9d
	mull	%r11d
	movl	%ebx, %eax
	shrl	$15, %edx
	imull	$65521, %edx, %edx
	subl	%edx, %ecx
	mull	%r11d
	shrl	$15, %edx
	imull	$65521, %edx, %edx
	subl	%edx, %ebx
	cmpl	%r10d, %esi
	jg	.L5705
	movzbl	%bh, %ebp
	movzbl	%ch, %edi
	movl	%ecx, %esi
.L5702:
	movq	120(%rsp), %rax
	testq	%rax, %rax
	je	.L5706
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	cmpl	-8(%rax), %ecx
	jge	.L5706
.L5707:
	movl	%ecx, -4(%rax)
	movb	%bpl, (%rax,%rdx)
	movq	120(%rsp), %rax
	testq	%rax, %rax
	je	.L5708
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	cmpl	-8(%rax), %ecx
	jge	.L5708
.L5709:
	movl	%ecx, -4(%rax)
	movb	%bl, (%rax,%rdx)
	movq	120(%rsp), %rax
	testq	%rax, %rax
	je	.L5710
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	cmpl	-8(%rax), %ecx
	jge	.L5710
.L5711:
	movl	%ecx, -4(%rax)
	movb	%dil, (%rax,%rdx)
	movq	120(%rsp), %rax
	testq	%rax, %rax
	je	.L5712
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	cmpl	-8(%rax), %ecx
	jl	.L5713
.L5712:
	movq	88(%rsp), %rcx
	movl	$1, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.119
	movq	120(%rsp), %rax
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
.L5713:
	movl	%ecx, -4(%rax)
	movb	%sil, (%rax,%rdx)
	movq	120(%rsp), %rdx
	movq	224(%rsp), %rax
	movslq	-4(%rdx), %r8
	leaq	-8(%rdx), %rcx
	movl	%r8d, (%rax)
	call	memmove
	movq	120(%rsp), %rax
	subq	$8, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L5665:
	movq	88(%rsp), %rcx
	movl	$1, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.119
	movq	120(%rsp), %rax
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	jmp	.L5666
	.p2align 4,,10
.L5679:
	subq	32(%rsp), %rbx
	cmpl	$32767, %ebx
	movl	%ebx, %edi
	jg	.L5718
	cmpl	$258, %esi
	jg	.L5718
.L5716:
	leaq	2+_ZZ18stbi_zlib_compressPhiPiiE7lengthc(%rip), %rax
	xorl	%ebp, %ebp
	jmp	.L5686
	.p2align 4,,10
.L5724:
	movslq	%edx, %rbp
.L5686:
	movzwl	(%rax), %ecx
	leal	1(%rbp), %edx
	addq	$2, %rax
	cmpl	%esi, %ecx
	jle	.L5724
	cmpl	$22, %ebp
	movl	116(%rsp), %ecx
	movl	112(%rsp), %r8d
	movq	120(%rsp), %r9
	jg	.L5687
	leal	(%rdx,%rdx), %r11d
	movl	%edx, %eax
	movl	%edx, %r10d
	sarl	%eax
	andl	$2, %r11d
	sarl	$2, %r10d
	andl	$1, %eax
	andl	$1, %r10d
	orl	%eax, %r11d
	movl	%edx, %eax
	sarl	$4, %edx
	addl	%r11d, %r11d
	sarl	$3, %eax
	orl	%r10d, %r11d
	andl	$1, %eax
	leal	(%r11,%r11), %r10d
	orl	%r10d, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	leal	0(,%rdx,4), %eax
	sall	%cl, %eax
	addl	$7, %ecx
	orl	%r8d, %eax
	movl	%eax, 112(%rsp)
.L5772:
	movq	40(%rsp), %rdx
	movl	%ecx, 116(%rsp)
	movq	%r9, %rcx
	movq	48(%rsp), %r8
	call	_ZL18stbiw__zlib_flushfPhPjPi
	leaq	_ZZ18stbi_zlib_compressPhiPiiE8lengtheb(%rip), %rcx
	movl	112(%rsp), %r9d
	movzbl	(%rcx,%rbp), %edx
	movq	%rax, 120(%rsp)
	movl	116(%rsp), %ecx
	testb	%dl, %dl
	jne	.L5780
.L5689:
	xorl	%edx, %edx
	.p2align 4,,10
.L5690:
	leaq	2+_ZZ18stbi_zlib_compressPhiPiiE5distc(%rip), %r11
	movslq	%edx, %rbp
	movzwl	(%r11,%rdx,2), %r8d
	addq	$1, %rdx
	cmpl	%edi, %r8d
	jle	.L5690
	leal	(%rbp,%rbp), %r8d
	movl	%ebp, %edx
	leaq	_ZZ18stbi_zlib_compressPhiPiiE6disteb(%rip), %rdi
	sarl	%edx
	andl	$2, %r8d
	andl	$1, %edx
	orl	%edx, %r8d
	leal	(%r8,%r8), %edx
	movl	%ebp, %r8d
	sarl	$2, %r8d
	andl	$1, %r8d
	orl	%edx, %r8d
	movl	%ebp, %edx
	sarl	$3, %edx
	addl	%r8d, %r8d
	andl	$1, %edx
	orl	%r8d, %edx
	leal	(%rdx,%rdx), %r8d
	movl	%ebp, %edx
	sarl	$4, %edx
	orl	%r8d, %edx
	movq	48(%rsp), %r8
	sall	%cl, %edx
	addl	$5, %ecx
	orl	%edx, %r9d
	movq	40(%rsp), %rdx
	movl	%ecx, 116(%rsp)
	movq	%rax, %rcx
	movl	%r9d, 112(%rsp)
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movzbl	(%rdi,%rbp), %edx
	movq	%rax, 120(%rsp)
	testb	%dl, %dl
	jne	.L5781
.L5691:
	addl	%esi, %r14d
	jmp	.L5667
	.p2align 4,,10
.L5780:
	leaq	_ZZ18stbi_zlib_compressPhiPiiE7lengthc(%rip), %r8
	movl	%esi, %r11d
	movzwl	(%r8,%rbp,2), %r8d
	subl	%r8d, %r11d
	movl	%r11d, %r8d
	sall	%cl, %r8d
	addl	%edx, %ecx
	movq	40(%rsp), %rdx
	orl	%r8d, %r9d
	movq	48(%rsp), %r8
	movl	%ecx, 116(%rsp)
	movq	%rax, %rcx
	movl	%r9d, 112(%rsp)
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movl	116(%rsp), %ecx
	movq	%rax, 120(%rsp)
	movl	112(%rsp), %r9d
	jmp	.L5689
	.p2align 4,,10
.L5721:
	movl	$3, %esi
	movq	%rax, %rdi
	movq	$0, 32(%rsp)
	jmp	.L5669
	.p2align 4,,10
.L5687:
	leal	169(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	%eax, %r10d
	sarl	$2, %eax
	sarl	%r10d
	andl	$2, %edx
	andl	$1, %eax
	andl	$1, %r10d
	orl	%r10d, %edx
	addl	%edx, %edx
	orl	%edx, %eax
	sall	$5, %eax
	orl	$3, %eax
	sall	%cl, %eax
	addl	$8, %ecx
	orl	%r8d, %eax
	movl	%eax, 112(%rsp)
	jmp	.L5772
.L5776:
	movq	104(%rsp), %r8
	leaq	(%rcx,%r8), %rdx
	call	memmove
	movq	64(%rsp), %rax
	movq	(%rax), %rcx
	movl	100(%rsp), %eax
	movl	%eax, -4(%rcx)
	movslq	%eax, %rbp
	jmp	.L5720
	.p2align 4,,10
.L5777:
	addl	$256, %eax
	leal	(%rax,%rax), %r8d
	movl	%eax, %r10d
	sarl	%r10d
	andl	$2, %r8d
	andl	$1, %r10d
	orl	%r10d, %r8d
	leal	(%r8,%r8), %r10d
	movl	%eax, %r8d
	sarl	$2, %r8d
	andl	$1, %r8d
	orl	%r10d, %r8d
	leal	(%r8,%r8), %r10d
	movl	%eax, %r8d
	sarl	$3, %r8d
	andl	$1, %r8d
	orl	%r10d, %r8d
	leal	(%r8,%r8), %r10d
	movl	%eax, %r8d
	sarl	$4, %r8d
	andl	$1, %r8d
	orl	%r10d, %r8d
	leal	(%r8,%r8), %r10d
	movl	%eax, %r8d
	sarl	$6, %eax
	sarl	$5, %r8d
	andl	$1, %eax
	andl	$1, %r8d
	orl	%r10d, %r8d
	addl	%r8d, %r8d
	orl	%r8d, %eax
	leal	3(,%rax,4), %eax
	sall	%cl, %eax
	addl	$9, %ecx
	orl	%edx, %eax
	movl	%eax, 112(%rsp)
	jmp	.L5773
	.p2align 4,,10
.L5718:
	leaq	.LC33(%rip), %rdx
	movl	$787, %r8d
	leaq	.LC171(%rip), %rcx
	call	_assert
	jmp	.L5716
	.p2align 4,,10
.L5781:
	movl	116(%rsp), %ecx
	leaq	_ZZ18stbi_zlib_compressPhiPiiE5distc(%rip), %r8
	movzwl	(%r8,%rbp,2), %r8d
	addl	%ecx, %edx
	subl	%r8d, %ebx
	movl	%edx, 116(%rsp)
	movq	48(%rsp), %r8
	movq	40(%rsp), %rdx
	sall	%cl, %ebx
	movq	%rax, %rcx
	orl	%ebx, 112(%rsp)
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movq	%rax, 120(%rsp)
	jmp	.L5691
.L5710:
	movq	88(%rsp), %rcx
	movl	$1, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.119
	movq	120(%rsp), %rax
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	jmp	.L5711
.L5708:
	movq	88(%rsp), %rcx
	movl	$1, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.119
	movq	120(%rsp), %rax
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	jmp	.L5709
.L5706:
	movq	88(%rsp), %rcx
	movl	$1, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.119
	movq	120(%rsp), %rax
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	jmp	.L5707
	.p2align 4,,10
.L5695:
	addl	$256, %edx
	leal	(%rdx,%rdx), %r9d
	movl	%edx, %r10d
	sarl	%r10d
	andl	$2, %r9d
	andl	$1, %r10d
	orl	%r10d, %r9d
	leal	(%r9,%r9), %r10d
	movl	%edx, %r9d
	sarl	$2, %r9d
	andl	$1, %r9d
	orl	%r10d, %r9d
	leal	(%r9,%r9), %r10d
	movl	%edx, %r9d
	sarl	$3, %r9d
	andl	$1, %r9d
	orl	%r10d, %r9d
	leal	(%r9,%r9), %r10d
	movl	%edx, %r9d
	sarl	$4, %r9d
	andl	$1, %r9d
	orl	%r10d, %r9d
	leal	(%r9,%r9), %r10d
	movl	%edx, %r9d
	sarl	$6, %edx
	sarl	$5, %r9d
	andl	$1, %edx
	andl	$1, %r9d
	orl	%r10d, %r9d
	addl	%r9d, %r9d
	orl	%r9d, %edx
	leal	3(,%rdx,4), %edx
	sall	%cl, %edx
	addl	$9, %ecx
	orl	%r8d, %edx
	movl	%edx, 112(%rsp)
	jmp	.L5774
.L5722:
	movq	$0, 32(%rsp)
	movl	$3, %esi
	jmp	.L5670
.L5725:
	movl	$1, %esi
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	.L5702
	.seh_endproc
	.section .rdata,"dr"
.LC173:
	.ascii "o == out + *out_len\0"
	.text
	.p2align 4,,15
	.globl	_Z21stbi_write_png_to_memPhiiiiPi
	.def	_Z21stbi_write_png_to_memPhiiiiPi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z21stbi_write_png_to_memPhiiiiPi
_Z21stbi_write_png_to_memPhiiiiPi:
.LFB1040:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$264, %rsp
	.seh_stackalloc	264
	movaps	%xmm6, 224(%rsp)
	.seh_savexmm	%xmm6, 224
	movaps	%xmm7, 240(%rsp)
	.seh_savexmm	%xmm7, 240
	.seh_endprologue
	movdqa	.LC172(%rip), %xmm0
	movl	368(%rsp), %r15d
	movl	%r15d, %ebx
	movl	%edx, %r13d
	movq	%rcx, 336(%rsp)
	imull	%r8d, %ebx
	testl	%edx, %edx
	movl	%r8d, 352(%rsp)
	movl	%r9d, 360(%rsp)
	movaps	%xmm0, 192(%rsp)
	movl	$6, 208(%rsp)
	leal	1(%rbx), %esi
	cmove	%ebx, %r13d
	movl	%esi, %eax
	imull	%r9d, %eax
	movslq	%eax, %rcx
	movl	%eax, 172(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	%rax, 160(%rsp)
	je	.L5871
	movslq	%ebx, %rax
	movq	%rax, %rcx
	movq	%rax, 144(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L5872
	movl	360(%rsp), %ecx
	testl	%ecx, %ecx
	jle	.L5829
	movslq	%esi, %rax
	movl	%ebx, %ebp
	movl	%r13d, 344(%rsp)
	movl	%r15d, %r13d
	movq	%rax, 152(%rsp)
	movq	160(%rsp), %rax
	movq	%r12, %r15
	movl	$0, 168(%rsp)
	leaq	.L5810(%rip), %r14
	movl	$0, 132(%rsp)
	addq	$1, %rax
	movq	%rax, 136(%rsp)
	movq	%r12, %rax
	negq	%rax
	movl	%eax, %edi
	leal	-1(%rbx), %eax
	andl	$15, %edi
	leal	15(%rdi), %esi
	movl	%eax, 112(%rsp)
	movl	$17, %eax
	cmpl	$17, %esi
	movl	%edi, 68(%rsp)
	cmovnb	%esi, %eax
	movl	%eax, 108(%rsp)
	movl	%ebx, %eax
	subl	%edi, %eax
	movl	%eax, %edi
	movl	%eax, 128(%rsp)
	andl	$-16, %eax
	shrl	$4, %edi
	movl	%eax, 120(%rsp)
	leaq	_ZZ21stbi_write_png_to_memPhiiiiPiE8firstmap(%rip), %rax
	movl	%edi, 124(%rsp)
	movq	%rax, 80(%rsp)
	leaq	.L5799(%rip), %rdi
	.p2align 4,,10
.L5790:
	movslq	168(%rsp), %rax
	movl	%r13d, %r12d
	movl	%ebp, %esi
	movq	$0, 72(%rsp)
	addq	336(%rsp), %rax
	movl	$2147483647, 64(%rsp)
	movl	$0, 116(%rsp)
	movq	%rax, %rbx
	leal	-1(%r13), %eax
	movq	%r15, %r13
	movq	%rbx, %r15
	addq	$1, %rax
	cmpq	$0, 72(%rsp)
	movq	%rax, 96(%rsp)
	je	.L5833
.L5874:
	movslq	116(%rsp), %rax
	cmpl	$4, %eax
	jg	.L5793
.L5792:
	movq	%rax, 40(%rsp)
	movl	%r12d, %eax
	movl	%r12d, %r11d
	movq	%r13, %r12
	notl	%eax
	movl	%esi, %r13d
	addl	%esi, %eax
	movq	%rax, 88(%rsp)
	movq	40(%rsp), %rax
	.p2align 4,,10
.L5828:
	movq	80(%rsp), %rbx
	movl	%eax, 60(%rsp)
	movq	96(%rsp), %r9
	movl	(%rbx,%rax,4), %r8d
	xorl	%eax, %eax
	testl	%r11d, %r11d
	movq	%r8, %rcx
	jle	.L5806
	.p2align 4,,10
.L5807:
	cmpl	$6, %ecx
	ja	.L5797
	movslq	(%rdi,%r8,4), %rdx
	addq	%rdi, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L5799:
	.long	.L5805-.L5799
	.long	.L5805-.L5799
	.long	.L5803-.L5799
	.long	.L5802-.L5799
	.long	.L5803-.L5799
	.long	.L5805-.L5799
	.long	.L5805-.L5799
	.text
	.p2align 4,,10
.L5805:
	movzbl	(%r15,%rax), %edx
	movb	%dl, (%r12,%rax)
.L5797:
	addq	$1, %rax
	cmpq	%rax, %r9
	jne	.L5807
.L5806:
	cmpl	%r13d, %r11d
	jge	.L5795
	movq	88(%rsp), %rbx
	movslq	%r11d, %rax
	movl	%ecx, %r10d
	movl	%r13d, 52(%rsp)
	movl	344(%rsp), %esi
	leaq	1(%rax), %rdx
	leaq	(%rbx,%rdx), %rbp
	movl	%ecx, %ebx
	addl	%r11d, %esi
	movl	%esi, 56(%rsp)
	.p2align 4,,10
.L5818:
	cmpl	$6, %r10d
	ja	.L5808
	movslq	(%r14,%rbx,4), %rcx
	addq	%r14, %rcx
	jmp	*%rcx
	.section .rdata,"dr"
	.align 4
.L5810:
	.long	.L5809-.L5810
	.long	.L5816-.L5810
	.long	.L5812-.L5810
	.long	.L5813-.L5810
	.long	.L5814-.L5810
	.long	.L5815-.L5810
	.long	.L5816-.L5810
	.text
	.p2align 4,,10
.L5803:
	movl	%eax, %r10d
	subl	344(%rsp), %r10d
	movzbl	(%r15,%rax), %edx
	movslq	%r10d, %r10
	subb	(%r15,%r10), %dl
	movb	%dl, (%r12,%rax)
	jmp	.L5797
	.p2align 4,,10
.L5816:
	movl	%eax, %r8d
	movzbl	(%r15,%rax), %ecx
	subl	%r11d, %r8d
	movslq	%r8d, %r8
	subb	(%r15,%r8), %cl
	movb	%cl, (%r12,%rax)
.L5808:
	cmpq	%rdx, %rbp
	movq	%rdx, %rax
	je	.L5868
.L5873:
	addq	$1, %rdx
	jmp	.L5818
	.p2align 4,,10
.L5814:
	movl	%eax, %ecx
	subl	56(%rsp), %ecx
	movzbl	(%r15,%rax), %esi
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx), %r8d
	movl	%eax, %ecx
	movb	%sil, 105(%rsp)
	subl	344(%rsp), %ecx
	movb	%r8b, 106(%rsp)
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx), %r9d
	movl	%eax, %ecx
	subl	%r11d, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx), %esi
	movb	%r9b, 107(%rsp)
	leal	(%r9,%rsi), %ecx
	movb	%sil, 104(%rsp)
	subl	%r8d, %ecx
	movl	%ecx, %r13d
	subl	%r9d, %r13d
	movl	%r13d, %r9d
	sarl	$31, %r13d
	xorl	%r13d, %r9d
	subl	%r13d, %r9d
	movl	%ecx, %r13d
	subl	%esi, %ecx
	subl	%r8d, %r13d
	movl	%r13d, %r8d
	sarl	$31, %r13d
	xorl	%r13d, %r8d
	subl	%r13d, %r8d
	movl	%ecx, %r13d
	sarl	$31, %r13d
	xorl	%r13d, %ecx
	subl	%r13d, %ecx
	cmpl	%r8d, %r9d
	movl	%r8d, %r13d
	cmovle	%r9d, %r13d
	cmpl	%r13d, %ecx
	jle	.L5817
	movzbl	107(%rsp), %esi
	cmpl	%r8d, %r9d
	movzbl	106(%rsp), %ecx
	cmovg	%ecx, %esi
	movb	%sil, 104(%rsp)
.L5817:
	movzbl	105(%rsp), %ecx
	subb	104(%rsp), %cl
	cmpq	%rdx, %rbp
	movb	%cl, (%r12,%rax)
	movq	%rdx, %rax
	jne	.L5873
	.p2align 4,,10
.L5868:
	movl	52(%rsp), %r13d
.L5795:
	cmpq	$0, 72(%rsp)
	jne	.L5869
	testl	%r13d, %r13d
	jle	.L5835
	movl	112(%rsp), %ebx
	cmpl	%ebx, 108(%rsp)
	ja	.L5836
	movl	68(%rsp), %esi
	testl	%esi, %esi
	je	.L5837
	movsbl	(%r12), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	xorl	%eax, %ecx
	subl	%eax, %ecx
	cmpl	$1, %esi
	je	.L5838
	movsbl	1(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$2, %esi
	je	.L5839
	movsbl	2(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$3, %esi
	je	.L5840
	movsbl	3(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$4, %esi
	je	.L5841
	movsbl	4(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$5, %esi
	je	.L5842
	movsbl	5(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$6, %esi
	je	.L5843
	movsbl	6(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$7, %esi
	je	.L5844
	movsbl	7(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$8, %esi
	je	.L5845
	movsbl	8(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$9, %esi
	je	.L5846
	movsbl	9(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$10, %esi
	je	.L5847
	movsbl	10(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$11, %esi
	je	.L5848
	movsbl	11(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$12, %esi
	je	.L5849
	movsbl	12(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$13, %esi
	je	.L5850
	movsbl	13(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	cmpl	$14, %esi
	je	.L5851
	movsbl	14(%r12), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	$15, %edx
	addl	%eax, %ecx
	.p2align 4,,10
.L5821:
	movl	68(%rsp), %eax
	xorl	%r8d, %r8d
	pxor	%xmm2, %xmm2
	pxor	%xmm5, %xmm5
	movl	124(%rsp), %r9d
	pxor	%xmm4, %xmm4
	addq	%r12, %rax
	.p2align 4,,10
.L5823:
	movdqa	(%rax), %xmm0
	movdqa	%xmm5, %xmm3
	movdqa	%xmm4, %xmm6
	addl	$1, %r8d
	addq	$16, %rax
	cmpl	%r8d, %r9d
	pcmpgtb	%xmm0, %xmm3
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm3, %xmm1
	pcmpgtw	%xmm1, %xmm6
	punpckhbw	%xmm3, %xmm0
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm6, %xmm3
	movdqa	%xmm3, %xmm7
	punpckhwd	%xmm6, %xmm1
	movdqa	%xmm4, %xmm6
	psrad	$31, %xmm7
	pxor	%xmm7, %xmm3
	psubd	%xmm7, %xmm3
	pcmpgtw	%xmm0, %xmm6
	paddd	%xmm3, %xmm2
	movdqa	%xmm1, %xmm3
	psrad	$31, %xmm3
	pxor	%xmm3, %xmm1
	psubd	%xmm3, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm6, %xmm0
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm6, %xmm2
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pxor	%xmm1, %xmm2
	psubd	%xmm1, %xmm2
	paddd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	psrad	$31, %xmm2
	pxor	%xmm2, %xmm0
	psubd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	paddd	%xmm1, %xmm2
	ja	.L5823
	movdqa	%xmm2, %xmm0
	psrldq	$8, %xmm0
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	psrldq	$4, %xmm0
	paddd	%xmm0, %xmm2
	movd	%xmm2, %eax
	addl	%eax, %ecx
	movl	120(%rsp), %eax
	addl	%eax, %edx
	cmpl	128(%rsp), %eax
	je	.L5819
.L5820:
	movslq	%edx, %rdx
	.p2align 4,,10
.L5825:
	movsbl	(%r12,%rdx), %eax
	addq	$1, %rdx
	movl	%eax, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %eax
	subl	%r8d, %eax
	addl	%eax, %ecx
	cmpl	%edx, %r13d
	jg	.L5825
.L5819:
	cmpl	64(%rsp), %ecx
	jge	.L5826
	movl	60(%rsp), %eax
	movl	%ecx, 64(%rsp)
	movl	%eax, 116(%rsp)
.L5826:
	addq	$1, 40(%rsp)
	movq	40(%rsp), %rax
	cmpl	$4, %eax
	jle	.L5828
	movl	%r13d, %esi
	movq	%r12, %r13
	movl	%r11d, %r12d
.L5827:
	addq	$1, 72(%rsp)
	cmpq	$0, 72(%rsp)
	jne	.L5874
.L5833:
	xorl	%eax, %eax
	jmp	.L5792
	.p2align 4,,10
.L5813:
	movl	%eax, %r8d
	subl	344(%rsp), %r8d
	movl	%eax, %ecx
	subl	%r11d, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx), %ecx
	movslq	%r8d, %r8
	movzbl	(%r15,%r8), %r8d
	addl	%r8d, %ecx
.L5870:
	movzbl	(%r15,%rax), %esi
	sarl	%ecx
	subl	%ecx, %esi
	movb	%sil, (%r12,%rax)
	jmp	.L5808
	.p2align 4,,10
.L5812:
	movl	%eax, %r8d
	subl	344(%rsp), %r8d
	movzbl	(%r15,%rax), %ecx
	movslq	%r8d, %r8
	subb	(%r15,%r8), %cl
	movb	%cl, (%r12,%rax)
	jmp	.L5808
	.p2align 4,,10
.L5815:
	movl	%eax, %ecx
	subl	%r11d, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx), %ecx
	jmp	.L5870
	.p2align 4,,10
.L5809:
	movzbl	(%r15,%rax), %ecx
	movb	%cl, (%r12,%rax)
	jmp	.L5808
	.p2align 4,,10
.L5802:
	movl	%eax, %edx
	subl	344(%rsp), %edx
	movzbl	(%r15,%rax), %ebx
	movslq	%edx, %rdx
	movzbl	(%r15,%rdx), %edx
	sarl	%edx
	subl	%edx, %ebx
	movb	%bl, (%r12,%rax)
	jmp	.L5797
	.p2align 4,,10
.L5835:
	xorl	%ecx, %ecx
	jmp	.L5819
	.p2align 4,,10
.L5838:
	movl	$1, %edx
	jmp	.L5821
	.p2align 4,,10
.L5869:
	movl	%r13d, %esi
	movq	%r12, %r13
	movl	%r11d, %r12d
.L5793:
	cmpl	$1, 72(%rsp)
	jne	.L5827
	movq	136(%rsp), %rax
	movq	%r13, %r15
	movl	%esi, %ebp
	movl	%r12d, %r13d
	movzbl	116(%rsp), %ebx
	movq	%r15, %rdx
	movq	144(%rsp), %r8
	movq	%rax, %rcx
	movb	%bl, -1(%rax)
	call	memcpy
	addl	$1, 132(%rsp)
	movl	132(%rsp), %eax
	cmpl	%eax, 360(%rsp)
	je	.L5875
	leaq	_ZZ21stbi_write_png_to_memPhiiiiPiE7mapping(%rip), %rax
	movl	344(%rsp), %ebx
	addl	%ebx, 168(%rsp)
	movq	%rax, 80(%rsp)
	movq	152(%rsp), %rbx
	addq	%rbx, 136(%rsp)
	jmp	.L5790
	.p2align 4,,10
.L5839:
	movl	$2, %edx
	jmp	.L5821
	.p2align 4,,10
.L5836:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.L5820
	.p2align 4,,10
.L5840:
	movl	$3, %edx
	jmp	.L5821
	.p2align 4,,10
.L5841:
	movl	$4, %edx
	jmp	.L5821
.L5842:
	movl	$5, %edx
	jmp	.L5821
.L5843:
	movl	$6, %edx
	jmp	.L5821
.L5837:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.L5821
.L5844:
	movl	$7, %edx
	jmp	.L5821
.L5845:
	movl	$8, %edx
	jmp	.L5821
.L5846:
	movl	$9, %edx
	jmp	.L5821
.L5847:
	movl	$10, %edx
	jmp	.L5821
.L5848:
	movl	$11, %edx
	jmp	.L5821
.L5849:
	movl	$12, %edx
	jmp	.L5821
.L5875:
	movq	%r15, %r12
	movl	%r13d, %r15d
.L5829:
	movq	%r12, %rcx
	call	free
	movq	160(%rsp), %rbx
	movl	$8, %r9d
	movl	172(%rsp), %edx
	leaq	188(%rsp), %r8
	movq	%rbx, %rcx
	call	_Z18stbi_zlib_compressPhiPii
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	free
	testq	%rdi, %rdi
	je	.L5871
	movl	188(%rsp), %eax
	leal	57(%rax), %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5871
	movl	188(%rsp), %eax
	movb	$8, 24(%rbx)
	movq	376(%rsp), %rsi
	movb	$0, 28(%rbx)
	movl	352(%rsp), %ebp
	movl	352(%rsp), %r10d
	leal	57(%rax), %edx
	movl	352(%rsp), %r9d
	movl	%edx, (%rsi)
	movslq	%r15d, %rdx
	movabsq	$727905341920923785, %rsi
	movl	360(%rsp), %r11d
	movq	%rsi, (%rbx)
	movl	192(%rsp,%rdx,4), %r12d
	movabsq	$5927942488114331648, %rsi
	xorl	%edx, %edx
	movq	%rsi, 8(%rbx)
	movzbl	352(%rsp), %esi
	shrl	$24, %ebp
	sarl	$16, %r10d
	movw	%dx, 26(%rbx)
	movl	360(%rsp), %r8d
	sarl	$8, %r9d
	movb	%bpl, 16(%rbx)
	movl	360(%rsp), %ecx
	shrl	$24, %r11d
	movb	%r10b, 17(%rbx)
	movb	%sil, 19(%rbx)
	movzbl	360(%rsp), %esi
	sarl	$16, %r8d
	movb	%r11b, 20(%rbx)
	sarl	$8, %ecx
	movb	%r9b, 18(%rbx)
	movb	%r8b, 21(%rbx)
	movb	%sil, 23(%rbx)
	leaq	_ZZL12stbiw__crc32PhiE9crc_table(%rip), %rsi
	movl	728(%rsi), %r13d
	movb	%cl, 22(%rbx)
	movb	%r12b, 25(%rbx)
	xorl	$16777215, %r13d
	movl	%r13d, %edx
	movzbl	%r13b, %r13d
	xorq	$72, %r13
	shrl	$8, %edx
	xorl	(%rsi,%r13,4), %edx
	movl	%edx, %r13d
	movzbl	%dl, %edx
	xorq	$68, %rdx
	shrl	$8, %r13d
	xorl	(%rsi,%rdx,4), %r13d
	movl	%r13d, %edx
	movzbl	%r13b, %r13d
	xorq	$82, %r13
	shrl	$8, %edx
	xorl	(%rsi,%r13,4), %edx
	movl	%edx, %r13d
	xorl	%ebp, %edx
	movzbl	%dl, %edx
	shrl	$8, %r13d
	xorl	(%rsi,%rdx,4), %r13d
	movl	%r13d, %edx
	movl	%r13d, %ebp
	xorl	%r10d, %edx
	shrl	$8, %ebp
	movzbl	%dl, %edx
	xorl	(%rsi,%rdx,4), %ebp
	movl	%ebp, %edx
	movl	%ebp, %r10d
	movslq	%eax, %rbp
	xorl	%r9d, %edx
	shrl	$8, %r10d
	movzbl	%dl, %edx
	xorl	(%rsi,%rdx,4), %r10d
	movb	%ah, 35(%rbx)
	movb	%al, 36(%rbx)
	movl	$1413563465, 37(%rbx)
	movl	%r10d, %edx
	xorb	352(%rsp), %dl
	movl	%r10d, %r9d
	shrl	$8, %r9d
	movzbl	%dl, %edx
	xorl	(%rsi,%rdx,4), %r9d
	movl	%r9d, %edx
	shrl	$8, %r9d
	xorl	%r11d, %edx
	movzbl	%dl, %edx
	xorl	(%rsi,%rdx,4), %r9d
	movl	%r9d, %edx
	shrl	$8, %r9d
	xorl	%r8d, %edx
	movzbl	%dl, %edx
	xorl	(%rsi,%rdx,4), %r9d
	movl	%r9d, %edx
	movl	%r9d, %r8d
	leaq	41(%rbx), %r9
	xorl	%ecx, %edx
	shrl	$8, %r8d
	movzbl	%dl, %edx
	xorl	(%rsi,%rdx,4), %r8d
	movl	%r8d, %edx
	xorb	360(%rsp), %dl
	movl	%r8d, %ecx
	movq	%rbp, %r8
	shrl	$8, %ecx
	movzbl	%dl, %edx
	xorl	(%rsi,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	%cl, %ecx
	xorq	$8, %rcx
	shrl	$8, %edx
	xorl	(%rsi,%rcx,4), %edx
	movl	%edx, %ecx
	xorl	%r12d, %edx
	movzbl	%dl, %edx
	shrl	$8, %ecx
	xorl	(%rsi,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	%cl, %ecx
	shrl	$8, %edx
	xorl	(%rsi,%rcx,4), %edx
	movl	%edx, %ecx
	movzbl	%dl, %edx
	shrl	$8, %ecx
	xorl	(%rsi,%rdx,4), %ecx
	movl	%ecx, %edx
	movzbl	%cl, %ecx
	shrl	$8, %edx
	xorl	(%rsi,%rcx,4), %edx
	notl	%edx
	movl	%edx, %ecx
	movb	%dh, 31(%rbx)
	shrl	$24, %ecx
	movb	%dl, 32(%rbx)
	movb	%cl, 29(%rbx)
	movl	%edx, %ecx
	movl	%eax, %edx
	shrl	$24, %edx
	shrl	$16, %ecx
	movb	%dl, 33(%rbx)
	movl	%eax, %edx
	sarl	$16, %edx
	movb	%cl, 30(%rbx)
	movq	%r9, %rcx
	movb	%dl, 34(%rbx)
	movq	%rdi, %rdx
	call	memmove
	movq	%rdi, %rcx
	addq	%rax, %rbp
	call	free
	movslq	188(%rsp), %rcx
	movq	$-4, %rdx
	subq	%rcx, %rdx
	cmpl	$-3, %ecx
	movq	%rcx, %rax
	jl	.L5853
	movq	%rbp, %rdi
	addl	$3, %eax
	addq	%rbp, %rdx
	subq	%rcx, %rdi
	leaq	-3(%rdi,%rax), %r8
	movl	$-1, %eax
	.p2align 4,,10
.L5832:
	movl	%eax, %ecx
	xorb	(%rdx), %al
	addq	$1, %rdx
	shrl	$8, %ecx
	movzbl	%al, %eax
	xorl	(%rsi,%rax,4), %ecx
	cmpq	%r8, %rdx
	movl	%ecx, %eax
	jne	.L5832
	notl	%eax
	movl	%eax, %edi
	movl	%eax, %edx
	movzbl	%ah, %ecx
	shrl	$24, %edi
	shrl	$16, %edx
	movl	%edi, %r8d
.L5831:
	movb	%dl, 1(%rbp)
	movl	728(%rsi), %edx
	addq	$16, %rbp
	movb	%al, -13(%rbp)
	movabsq	$4921947622597459968, %rax
	movq	%rax, -12(%rbp)
	movb	%r8b, -16(%rbp)
	xorl	$16777215, %edx
	movb	%cl, -14(%rbp)
	movl	%edx, %eax
	movzbl	%dl, %edx
	xorq	$69, %rdx
	shrl	$8, %eax
	xorl	(%rsi,%rdx,4), %eax
	movl	%eax, %edx
	movzbl	%al, %eax
	xorq	$78, %rax
	shrl	$8, %edx
	xorl	(%rsi,%rax,4), %edx
	movl	%edx, %eax
	movzbl	%dl, %edx
	xorq	$68, %rdx
	shrl	$8, %eax
	xorl	(%rsi,%rdx,4), %eax
	notl	%eax
	movl	%eax, %edx
	movb	%ah, -2(%rbp)
	shrl	$24, %edx
	movb	%al, -1(%rbp)
	movb	%dl, -4(%rbp)
	movl	%eax, %edx
	movq	376(%rsp), %rax
	shrl	$16, %edx
	movb	%dl, -3(%rbp)
	movslq	(%rax), %rax
	addq	%rbx, %rax
	cmpq	%rbp, %rax
	je	.L5782
	leaq	.LC33(%rip), %rdx
	movl	$985, %r8d
	leaq	.LC173(%rip), %rcx
	call	_assert
	nop
.L5782:
	movaps	224(%rsp), %xmm6
	movq	%rbx, %rax
	movaps	240(%rsp), %xmm7
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L5850:
	movl	$13, %edx
	jmp	.L5821
.L5851:
	movl	$14, %edx
	jmp	.L5821
.L5872:
	movq	160(%rsp), %rcx
	call	free
.L5871:
	xorl	%ebx, %ebx
	jmp	.L5782
.L5853:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	jmp	.L5831
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_write_png
	.def	stbi_write_png;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_png
stbi_write_png:
.LFB1041:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	xorl	%esi, %esi
	movl	%r9d, 32(%rsp)
	leaq	60(%rsp), %rax
	movl	%r8d, %r9d
	movq	%rcx, %rdi
	movl	%edx, %r8d
	movq	128(%rsp), %rcx
	movq	%rax, 40(%rsp)
	movl	136(%rsp), %edx
	call	_Z21stbi_write_png_to_memPhiiiiPi
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5876
	leaq	.LC165(%rip), %rdx
	movq	%rdi, %rcx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L5881
	movslq	60(%rsp), %r8
	movq	%rax, %r9
	movl	$1, %edx
	movq	%rbx, %rcx
	movl	$1, %esi
	call	fwrite
	movq	%rdi, %rcx
	call	fclose
	movq	%rbx, %rcx
	call	free
.L5876:
	movl	%esi, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L5881:
	movq	%rbx, %rcx
	call	free
	movl	%esi, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_write_png_to_func
	.def	stbi_write_png_to_func;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_png_to_func
stbi_write_png_to_func:
.LFB1042:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	60(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movq	136(%rsp), %rcx
	movq	%rax, 40(%rsp)
	movl	128(%rsp), %eax
	movl	144(%rsp), %edx
	movl	%eax, 32(%rsp)
	call	_Z21stbi_write_png_to_memPhiiiiPi
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5884
	movq	%rax, %rdx
	movl	60(%rsp), %r8d
	movq	%rdi, %rcx
	call	*%rsi
	movq	%rbx, %rcx
	call	free
	movl	$1, %eax
.L5882:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L5884:
	xorl	%eax, %eax
	jmp	.L5882
	.seh_endproc
	.p2align 4,,15
	.globl	isdir
	.def	isdir;	.scl	2;	.type	32;	.endef
	.seh_proc	isdir
isdir:
.LFB6176:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	leaq	32(%rsp), %rdx
	call	stat
	movzwl	38(%rsp), %eax
	andw	$-4096, %ax
	cmpw	$16384, %ax
	sete	%al
	movzbl	%al, %eax
	addq	$88, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC174:
	.ascii "cannot access %s\12\0"
.LC175:
	.ascii ".\0"
.LC176:
	.ascii "..\0"
.LC177:
	.ascii "%s/%s\0"
	.text
	.p2align 4,,15
	.globl	dirlist
	.def	dirlist;	.scl	2;	.type	32;	.endef
	.seh_proc	dirlist
dirlist:
.LFB6177:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$1096, %rsp
	.seh_stackalloc	1096
	.seh_endprologue
	movq	%rcx, 1168(%rsp)
	movl	%edx, %r13d
	movq	%r8, 1184(%rsp)
	call	opendir
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L5907
	leaq	.LC175(%rip), %r12
	xorl	%ebx, %ebx
	leaq	80(%rsp), %r14
.L5887:
	movq	%rbp, %rcx
	call	readdir
	testq	%rax, %rax
	je	.L5888
.L5908:
	leaq	8(%rax), %r15
	movl	$2, %ecx
	movq	%r12, %rdi
	movq	%r15, %rsi
	repz cmpsb
	je	.L5887
	leaq	.LC176(%rip), %rdi
	movl	$3, %ecx
	movq	%r15, %rsi
	repz cmpsb
	je	.L5887
	cmpl	$2, %r13d
	je	.L5906
	movq	1168(%rsp), %r8
	leaq	.LC177(%rip), %rdx
	movq	%r15, %r9
	movq	%r14, %rcx
	call	sprintf
	leaq	32(%rsp), %rdx
	movq	%r14, %rcx
	call	stat
	movzwl	38(%rsp), %eax
	andw	$-4096, %ax
	cmpw	$16384, %ax
	sete	%al
	movzbl	%al, %edx
	orl	%r13d, %edx
	je	.L5906
	cmpl	$1, %r13d
	jne	.L5887
	testb	%al, %al
	je	.L5887
.L5906:
	leal	1(%rbx), %esi
	movslq	%ebx, %rcx
	movq	%r15, %rdx
	movq	%rcx, %rbx
	salq	$8, %rbx
	addq	1184(%rsp), %rbx
	movq	%rbx, %rcx
	movl	%esi, %ebx
	call	strcpy
	movq	%rbp, %rcx
	call	readdir
	testq	%rax, %rax
	jne	.L5908
.L5888:
	movq	%rbp, %rcx
	call	closedir
	movl	%ebx, %eax
	addq	$1096, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L5907:
	call	*__imp___iob_func(%rip)
	movq	1168(%rsp), %r8
	leaq	.LC174(%rip), %rdx
	leaq	96(%rax), %rcx
	call	fprintf
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.p2align 4,,15
	.globl	fset
	.def	fset;	.scl	2;	.type	32;	.endef
	.seh_proc	fset
fset:
.LFB6178:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rsi
	movl	%r8d, %edi
	leaq	.LC165(%rip), %rdx
	call	fopen
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.L5909
	movq	%rbx, %r9
	movslq	%edi, %r8
	movl	$1, %edx
	movq	%rsi, %rcx
	call	fwrite
	movq	%rbx, %rcx
	call	fclose
	movl	$1, %eax
.L5909:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	fget
	.def	fget;	.scl	2;	.type	32;	.endef
	.seh_proc	fget
fget:
.LFB6179:
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbp
	leaq	.LC161(%rip), %rdx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5916
	xorl	%edx, %edx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	fseek
	movq	%rbx, %rcx
	call	ftell
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movl	%eax, %edi
	call	fseek
	leal	1(%rdi), %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L5915
	movslq	%edi, %r12
	movq	%rbx, %r9
	movl	$1, %edx
	movq	%r12, %r8
	movq	%rax, %rcx
	call	fread
	movb	$0, (%rsi,%r12)
	movl	%edi, 0(%rbp)
.L5915:
	movq	%rbx, %rcx
	call	fclose
.L5913:
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5916:
	xorl	%esi, %esi
	jmp	.L5913
	.seh_endproc
	.p2align 4,,15
	.globl	fcpy
	.def	fcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	fcpy
fcpy:
.LFB6180:
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %r12
	movq	%rdx, %rcx
	leaq	.LC161(%rip), %rdx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5924
	xorl	%edx, %edx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	fseek
	movq	%rbx, %rcx
	call	ftell
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movl	%eax, %edi
	call	fseek
	leal	1(%rdi), %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L5922
	movslq	%edi, %rbp
	movq	%rbx, %r9
	movl	$1, %edx
	movq	%rbp, %r8
	movq	%rax, %rcx
	call	fread
	movb	$0, (%rsi,%rbp)
	movl	%edi, %ebp
.L5922:
	movq	%rbx, %rcx
	call	fclose
.L5921:
	leaq	.LC165(%rip), %rdx
	movq	%r12, %rcx
	xorl	%edi, %edi
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5923
	movq	%rax, %r9
	movslq	%ebp, %r8
	movl	$1, %edx
	movq	%rsi, %rcx
	movl	$1, %edi
	call	fwrite
	movq	%rbx, %rcx
	call	fclose
.L5923:
	movq	%rsi, %rcx
	call	free
	movl	%edi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5924:
	xorl	%esi, %esi
	jmp	.L5921
	.seh_endproc
	.p2align 4,,15
	.globl	fmtime
	.def	fmtime;	.scl	2;	.type	32;	.endef
	.seh_proc	fmtime
fmtime:
.LFB6181:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	leaq	32(%rsp), %rdx
	call	stat
	movq	64(%rsp), %rax
	addq	$88, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z36ImGui_ImplGlfwGL3_CreateFontsTexturev
	.def	_Z36ImGui_ImplGlfwGL3_CreateFontsTexturev;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z36ImGui_ImplGlfwGL3_CreateFontsTexturev
_Z36ImGui_ImplGlfwGL3_CreateFontsTexturev:
.LFB7464:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	call	_ZN5ImGui5GetIOEv
	leaq	96(%rsp), %r9
	movq	136(%rax), %rcx
	leaq	92(%rsp), %r8
	movq	%rax, %rbx
	movq	$0, 32(%rsp)
	leaq	104(%rsp), %rdx
	call	_ZN11ImFontAtlas18GetTexDataAsRGBA32EPPhPiS2_S2_
	leaq	100(%rsp), %rdx
	movl	$32873, %ecx
	call	glGetIntegerv
	leaq	_ZL13g_FontTexture(%rip), %rdx
	movl	$1, %ecx
	call	glGenTextures
	movl	_ZL13g_FontTexture(%rip), %edx
	movl	$3553, %ecx
	call	glBindTexture
	movl	$9729, %r8d
	movl	$10241, %edx
	movl	$3553, %ecx
	call	glTexParameteri
	movl	$9729, %r8d
	movl	$10240, %edx
	movl	$3553, %ecx
	call	glTexParameteri
	movq	104(%rsp), %rax
	movl	$6408, %r8d
	xorl	%edx, %edx
	movl	92(%rsp), %r9d
	movl	$5121, 56(%rsp)
	movl	$3553, %ecx
	movl	$6408, 48(%rsp)
	movl	$0, 40(%rsp)
	movq	%rax, 64(%rsp)
	movl	96(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	glTexImage2D
	movl	100(%rsp), %edx
	movl	$3553, %ecx
	movq	136(%rbx), %rax
	movl	_ZL13g_FontTexture(%rip), %ebx
	movq	%rbx, (%rax)
	call	glBindTexture
	movl	$1, %eax
	addq	$112, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC178:
	.ascii "#version 330\12uniform mat4 ProjMtx;\12in vec2 Position;\12in vec2 UV;\12in vec4 Color;\12out vec2 Frag_UV;\12out vec4 Frag_Color;\12void main()\12{\12\11Frag_UV = UV;\12\11Frag_Color = Color;\12\11gl_Position = ProjMtx * vec4(Position.xy,0,1);\12}\12\0"
	.align 8
.LC179:
	.ascii "#version 330\12uniform sampler2D Texture;\12in vec2 Frag_UV;\12in vec4 Frag_Color;\12out vec4 Out_Color;\12void main()\12{\12\11Out_Color = Frag_Color * texture( Texture, Frag_UV.st);\12}\12\0"
.LC180:
	.ascii "Texture\0"
.LC181:
	.ascii "ProjMtx\0"
.LC182:
	.ascii "Position\0"
.LC183:
	.ascii "UV\0"
.LC184:
	.ascii "Color\0"
	.text
	.p2align 4,,15
	.globl	_Z37ImGui_ImplGlfwGL3_CreateDeviceObjectsv
	.def	_Z37ImGui_ImplGlfwGL3_CreateDeviceObjectsv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z37ImGui_ImplGlfwGL3_CreateDeviceObjectsv
_Z37ImGui_ImplGlfwGL3_CreateDeviceObjectsv:
.LFB7465:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movl	$32873, %ecx
	leaq	52(%rsp), %rdx
	call	glGetIntegerv
	leaq	56(%rsp), %rdx
	movl	$34964, %ecx
	call	glGetIntegerv
	leaq	60(%rsp), %rdx
	movl	$34229, %ecx
	call	glGetIntegerv
	leaq	.LC178(%rip), %rax
	movq	%rax, 64(%rsp)
	leaq	.LC179(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	__imp___glewCreateProgram(%rip), %rax
	call	*(%rax)
	movq	__imp___glewCreateShader(%rip), %rbx
	movl	$35633, %ecx
	movl	%eax, _ZL14g_ShaderHandle(%rip)
	call	*(%rbx)
	movl	$35632, %ecx
	movl	%eax, _ZL12g_VertHandle(%rip)
	call	*(%rbx)
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	_ZL12g_VertHandle(%rip), %ecx
	movq	__imp___glewShaderSource(%rip), %rbx
	movl	%eax, _ZL12g_FragHandle(%rip)
	leaq	64(%rsp), %r8
	call	*(%rbx)
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	_ZL12g_FragHandle(%rip), %ecx
	leaq	72(%rsp), %r8
	call	*(%rbx)
	movq	__imp___glewCompileShader(%rip), %rbx
	movl	_ZL12g_VertHandle(%rip), %ecx
	call	*(%rbx)
	movl	_ZL12g_FragHandle(%rip), %ecx
	call	*(%rbx)
	movq	__imp___glewAttachShader(%rip), %rbx
	movl	_ZL12g_VertHandle(%rip), %edx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	call	*(%rbx)
	movl	_ZL12g_FragHandle(%rip), %edx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	call	*(%rbx)
	movq	__imp___glewLinkProgram(%rip), %rax
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	call	*(%rax)
	movq	__imp___glewGetUniformLocation(%rip), %rbx
	leaq	.LC180(%rip), %rdx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	call	*(%rbx)
	leaq	.LC181(%rip), %rdx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	%eax, _ZL19g_AttribLocationTex(%rip)
	call	*(%rbx)
	movq	__imp___glewGetAttribLocation(%rip), %rbx
	leaq	.LC182(%rip), %rdx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	%eax, _ZL23g_AttribLocationProjMtx(%rip)
	call	*(%rbx)
	leaq	.LC183(%rip), %rdx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	%eax, _ZL24g_AttribLocationPosition(%rip)
	call	*(%rbx)
	leaq	.LC184(%rip), %rdx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	%eax, _ZL18g_AttribLocationUV(%rip)
	call	*(%rbx)
	movq	__imp___glewGenBuffers(%rip), %rbx
	leaq	_ZL11g_VboHandle(%rip), %rdx
	movl	$1, %ecx
	movl	%eax, _ZL21g_AttribLocationColor(%rip)
	call	*(%rbx)
	leaq	_ZL16g_ElementsHandle(%rip), %rdx
	movl	$1, %ecx
	call	*(%rbx)
	movq	__imp___glewGenVertexArrays(%rip), %rax
	leaq	_ZL11g_VaoHandle(%rip), %rdx
	movl	$1, %ecx
	call	*(%rax)
	movq	__imp___glewBindVertexArray(%rip), %rsi
	movl	_ZL11g_VaoHandle(%rip), %ecx
	call	*(%rsi)
	movq	__imp___glewBindBuffer(%rip), %rdi
	movl	$34962, %ecx
	movl	_ZL11g_VboHandle(%rip), %edx
	call	*(%rdi)
	movq	__imp___glewEnableVertexAttribArray(%rip), %rbx
	movl	_ZL24g_AttribLocationPosition(%rip), %ecx
	call	*(%rbx)
	movl	_ZL18g_AttribLocationUV(%rip), %ecx
	call	*(%rbx)
	movl	_ZL21g_AttribLocationColor(%rip), %ecx
	call	*(%rbx)
	xorl	%r9d, %r9d
	movl	$5126, %r8d
	movl	$2, %edx
	movq	__imp___glewVertexAttribPointer(%rip), %rbx
	movl	$20, 32(%rsp)
	movq	$0, 40(%rsp)
	movl	_ZL24g_AttribLocationPosition(%rip), %ecx
	call	*(%rbx)
	xorl	%r9d, %r9d
	movl	$5126, %r8d
	movl	$2, %edx
	movq	$8, 40(%rsp)
	movl	_ZL18g_AttribLocationUV(%rip), %ecx
	movl	$20, 32(%rsp)
	call	*(%rbx)
	movl	$1, %r9d
	movl	$5121, %r8d
	movl	$4, %edx
	movl	_ZL21g_AttribLocationColor(%rip), %ecx
	movl	$20, 32(%rsp)
	movq	$16, 40(%rsp)
	call	*(%rbx)
	call	_Z36ImGui_ImplGlfwGL3_CreateFontsTexturev
	movl	52(%rsp), %edx
	movl	$3553, %ecx
	call	glBindTexture
	movl	56(%rsp), %edx
	movl	$34962, %ecx
	call	*(%rdi)
	movl	60(%rsp), %ecx
	call	*(%rsi)
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z41ImGui_ImplGlfwGL3_InvalidateDeviceObjectsv
	.def	_Z41ImGui_ImplGlfwGL3_InvalidateDeviceObjectsv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z41ImGui_ImplGlfwGL3_InvalidateDeviceObjectsv
_Z41ImGui_ImplGlfwGL3_InvalidateDeviceObjectsv:
.LFB7466:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	_ZL11g_VaoHandle(%rip), %r8d
	testl	%r8d, %r8d
	je	.L5934
	movq	__imp___glewDeleteVertexArrays(%rip), %rax
	leaq	_ZL11g_VaoHandle(%rip), %rdx
	movl	$1, %ecx
	call	*(%rax)
.L5934:
	movl	_ZL11g_VboHandle(%rip), %ecx
	testl	%ecx, %ecx
	je	.L5935
	movq	__imp___glewDeleteBuffers(%rip), %rax
	leaq	_ZL11g_VboHandle(%rip), %rdx
	movl	$1, %ecx
	call	*(%rax)
.L5935:
	movl	_ZL16g_ElementsHandle(%rip), %edx
	testl	%edx, %edx
	je	.L5936
	movq	__imp___glewDeleteBuffers(%rip), %rax
	leaq	_ZL16g_ElementsHandle(%rip), %rdx
	movl	$1, %ecx
	call	*(%rax)
.L5936:
	movl	$0, _ZL16g_ElementsHandle(%rip)
	movl	_ZL14g_ShaderHandle(%rip), %eax
	movl	$0, _ZL11g_VboHandle(%rip)
	movl	_ZL12g_VertHandle(%rip), %ecx
	movl	$0, _ZL11g_VaoHandle(%rip)
	testl	%eax, %eax
	je	.L5937
	testl	%ecx, %ecx
	je	.L5938
	movl	%ecx, %edx
	movl	%eax, %ecx
	movq	__imp___glewDetachShader(%rip), %rax
	call	*(%rax)
	movl	_ZL12g_VertHandle(%rip), %ecx
.L5937:
	testl	%ecx, %ecx
	je	.L5958
	movq	__imp___glewDeleteShader(%rip), %rax
	call	*(%rax)
.L5958:
	movl	$0, _ZL12g_VertHandle(%rip)
	movl	_ZL14g_ShaderHandle(%rip), %eax
	movl	_ZL12g_FragHandle(%rip), %ecx
	testl	%eax, %eax
	jne	.L5947
.L5941:
	testl	%ecx, %ecx
	je	.L5959
	movq	__imp___glewDeleteShader(%rip), %rax
	call	*(%rax)
.L5959:
	movl	$0, _ZL12g_FragHandle(%rip)
	movl	_ZL14g_ShaderHandle(%rip), %eax
	testl	%eax, %eax
	je	.L5945
.L5948:
	movl	%eax, %ecx
	movq	__imp___glewDeleteProgram(%rip), %rax
	call	*(%rax)
.L5945:
	movl	$0, _ZL14g_ShaderHandle(%rip)
	movl	_ZL13g_FontTexture(%rip), %eax
	testl	%eax, %eax
	je	.L5933
	leaq	_ZL13g_FontTexture(%rip), %rdx
	movl	$1, %ecx
	call	glDeleteTextures
	call	_ZN5ImGui5GetIOEv
	movq	136(%rax), %rax
	movq	$0, (%rax)
	movl	$0, _ZL13g_FontTexture(%rip)
.L5933:
	addq	$40, %rsp
	ret
	.p2align 4,,10
.L5938:
	movl	_ZL12g_FragHandle(%rip), %ecx
	.p2align 4,,10
.L5947:
	testl	%ecx, %ecx
	je	.L5942
	movl	%ecx, %edx
	movl	%eax, %ecx
	movq	__imp___glewDetachShader(%rip), %rax
	call	*(%rax)
	movl	_ZL12g_FragHandle(%rip), %ecx
	jmp	.L5941
	.p2align 4,,10
.L5942:
	movl	$0, _ZL12g_FragHandle(%rip)
	jmp	.L5948
	.seh_endproc
	.p2align 4,,15
	.globl	_Z22ImGui_ImplGlfwGL3_InitP10GLFWwindowb
	.def	_Z22ImGui_ImplGlfwGL3_InitP10GLFWwindowb;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z22ImGui_ImplGlfwGL3_InitP10GLFWwindowb
_Z22ImGui_ImplGlfwGL3_InitP10GLFWwindowb:
.LFB7467:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	movq	%rcx, _ZL8g_Window(%rip)
	call	_ZN5ImGui5GetIOEv
	movdqa	.LC185(%rip), %xmm0
	leaq	_Z33ImGui_ImplGlfwGL3_RenderDrawListsP10ImDrawData(%rip), %rdx
	movq	_ZL8g_Window(%rip), %rcx
	movq	%rax, %rbx
	movl	$88, 108(%rax)
	movups	%xmm0, 44(%rax)
	movdqa	.LC186(%rip), %xmm0
	movl	$89, 112(%rax)
	movups	%xmm0, 60(%rax)
	movdqa	.LC187(%rip), %xmm0
	movl	$90, 116(%rax)
	movups	%xmm0, 76(%rax)
	movdqa	.LC188(%rip), %xmm0
	movups	%xmm0, 92(%rax)
	leaq	_ZL34ImGui_ImplGlfwGL3_SetClipboardTextPvPKc(%rip), %rax
	movq	%rdx, %xmm0
	movq	%rax, 208(%rbx)
	leaq	_ZL34ImGui_ImplGlfwGL3_GetClipboardTextPv(%rip), %rax
	movq	%rax, %xmm1
	movq	%rcx, 216(%rbx)
	punpcklqdq	%xmm1, %xmm0
	movups	%xmm0, 192(%rbx)
	call	glfwGetWin32Window
	testb	%dil, %dil
	movq	%rax, 248(%rbx)
	je	.L5961
	leaq	_Z37ImGui_ImplGlfwGL3_MouseButtonCallbackP10GLFWwindowiii(%rip), %rdx
	movq	%rsi, %rcx
	call	glfwSetMouseButtonCallback
	leaq	_Z32ImGui_ImplGlfwGL3_ScrollCallbackP10GLFWwindowdd(%rip), %rdx
	movq	%rsi, %rcx
	call	glfwSetScrollCallback
	leaq	_Z29ImGui_ImplGlfwGL3_KeyCallbackP10GLFWwindowiiii(%rip), %rdx
	movq	%rsi, %rcx
	call	glfwSetKeyCallback
	leaq	_Z30ImGui_ImplGlfwGL3_CharCallbackP10GLFWwindowj(%rip), %rdx
	movq	%rsi, %rcx
	call	glfwSetCharCallback
.L5961:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z26ImGui_ImplGlfwGL3_Shutdownv
	.def	_Z26ImGui_ImplGlfwGL3_Shutdownv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z26ImGui_ImplGlfwGL3_Shutdownv
_Z26ImGui_ImplGlfwGL3_Shutdownv:
.LFB7468:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	_Z41ImGui_ImplGlfwGL3_InvalidateDeviceObjectsv
	nop
	addq	$40, %rsp
	jmp	_ZN5ImGui8ShutdownEv
	.seh_endproc
	.p2align 4,,15
	.globl	_Z26ImGui_ImplGlfwGL3_NewFramev
	.def	_Z26ImGui_ImplGlfwGL3_NewFramev;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z26ImGui_ImplGlfwGL3_NewFramev
_Z26ImGui_ImplGlfwGL3_NewFramev:
.LFB7469:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	_ZL13g_FontTexture(%rip), %eax
	testl	%eax, %eax
	je	.L5981
.L5964:
	call	_ZN5ImGui5GetIOEv
	movq	_ZL8g_Window(%rip), %rcx
	leaq	32(%rsp), %rdx
	leaq	36(%rsp), %r8
	movq	%rax, %rbx
	call	glfwGetWindowSize
	movq	_ZL8g_Window(%rip), %rcx
	leaq	40(%rsp), %rdx
	leaq	44(%rsp), %r8
	call	glfwGetFramebufferSize
	movl	36(%rsp), %edx
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	movl	32(%rsp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm1
	testl	%edx, %edx
	cvtsi2ss	%eax, %xmm2
	movss	%xmm1, 4(%rbx)
	movss	%xmm2, (%rbx)
	jle	.L5965
	pxor	%xmm0, %xmm0
	cvtsi2ss	44(%rsp), %xmm0
	divss	%xmm1, %xmm0
.L5965:
	testl	%eax, %eax
	pxor	%xmm1, %xmm1
	jle	.L5966
	pxor	%xmm1, %xmm1
	cvtsi2ss	40(%rsp), %xmm1
	divss	%xmm2, %xmm1
.L5966:
	movss	%xmm1, 160(%rbx)
	movss	%xmm0, 164(%rbx)
	call	glfwGetTime
	movsd	_ZL6g_Time(%rip), %xmm1
	ucomisd	.LC190(%rip), %xmm1
	jbe	.L5980
	movapd	%xmm0, %xmm3
	subsd	%xmm1, %xmm3
	pxor	%xmm1, %xmm1
	cvtsd2ss	%xmm3, %xmm1
.L5967:
	movq	_ZL8g_Window(%rip), %rcx
	movss	%xmm1, 8(%rbx)
	movl	$131073, %edx
	movsd	%xmm0, _ZL6g_Time(%rip)
	call	glfwGetWindowAttrib
	testl	%eax, %eax
	jne	.L5982
	movabsq	$-4647714812233515008, %rax
	movq	%rax, 256(%rbx)
.L5970:
	movzbl	_ZL14g_MousePressed(%rip), %eax
	movq	_ZL8g_Window(%rip), %rcx
	testb	%al, %al
	je	.L5983
.L5971:
	movb	%al, 264(%rbx)
	movzbl	1+_ZL14g_MousePressed(%rip), %eax
	movb	$0, _ZL14g_MousePressed(%rip)
	testb	%al, %al
	je	.L5984
.L5972:
	movb	%al, 265(%rbx)
	movzbl	2+_ZL14g_MousePressed(%rip), %eax
	movb	$0, 1+_ZL14g_MousePressed(%rip)
	testb	%al, %al
	je	.L5985
.L5973:
	xorl	%r8d, %r8d
	movb	%al, 266(%rbx)
	movl	$208897, %edx
	cmpb	$0, 276(%rbx)
	movss	_ZL12g_MouseWheel(%rip), %xmm0
	movb	$0, 2+_ZL14g_MousePressed(%rip)
	movl	$0x00000000, _ZL12g_MouseWheel(%rip)
	movss	%xmm0, 272(%rbx)
	setne	%r8b
	addl	$212993, %r8d
	call	glfwSetInputMode
	call	_ZN5ImGui8NewFrameEv
	nop
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L5980:
	movss	.LC189(%rip), %xmm1
	jmp	.L5967
	.p2align 4,,10
.L5981:
	call	_Z37ImGui_ImplGlfwGL3_CreateDeviceObjectsv
	jmp	.L5964
	.p2align 4,,10
.L5982:
	movq	_ZL8g_Window(%rip), %rcx
	leaq	48(%rsp), %rdx
	leaq	56(%rsp), %r8
	call	glfwGetCursorPos
	pxor	%xmm0, %xmm0
	pxor	%xmm4, %xmm4
	cvtsd2ss	56(%rsp), %xmm0
	cvtsd2ss	48(%rsp), %xmm4
	movss	%xmm0, 260(%rbx)
	movss	%xmm4, 256(%rbx)
	jmp	.L5970
	.p2align 4,,10
.L5983:
	xorl	%edx, %edx
	call	glfwGetMouseButton
	movq	_ZL8g_Window(%rip), %rcx
	testl	%eax, %eax
	setne	%al
	jmp	.L5971
	.p2align 4,,10
.L5985:
	movl	$2, %edx
	call	glfwGetMouseButton
	movq	_ZL8g_Window(%rip), %rcx
	testl	%eax, %eax
	setne	%al
	jmp	.L5973
	.p2align 4,,10
.L5984:
	movl	$1, %edx
	call	glfwGetMouseButton
	movq	_ZL8g_Window(%rip), %rcx
	testl	%eax, %eax
	setne	%al
	jmp	.L5972
	.seh_endproc
	.p2align 4,,15
	.globl	_Z13texture_imageP5Image
	.def	_Z13texture_imageP5Image;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13texture_imageP5Image
_Z13texture_imageP5Image:
.LFB7471:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	leaq	8(%rcx), %rdx
	movq	%rcx, %rbx
	movl	$1, %ecx
	call	glGenTextures
	movl	8(%rbx), %edx
	movl	$3553, %ecx
	call	glBindTexture
	movq	(%rbx), %rax
	movl	$6408, %r8d
	xorl	%edx, %edx
	movl	16(%rbx), %r9d
	movl	$5121, 56(%rsp)
	movl	$3553, %ecx
	movl	$6408, 48(%rsp)
	movl	$0, 40(%rsp)
	movq	%rax, 64(%rsp)
	movl	20(%rbx), %eax
	movl	%eax, 32(%rsp)
	call	glTexImage2D
	movq	__imp___glewGenerateMipmap(%rip), %rax
	movl	$3553, %ecx
	call	*(%rax)
	movl	$1, 12(%rbx)
	addq	$80, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z10free_imageP5Image
	.def	_Z10free_imageP5Image;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10free_imageP5Image
_Z10free_imageP5Image:
.LFB7472:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L5987
	call	free
	movq	$0, (%rbx)
.L5987:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z13reset_textureP5Image
	.def	_Z13reset_textureP5Image;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13reset_textureP5Image
_Z13reset_textureP5Image:
.LFB7473:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	12(%rcx), %eax
	testl	%eax, %eax
	movq	%rcx, %rbx
	je	.L5993
	leaq	8(%rcx), %rdx
	movl	$1, %ecx
	call	glDeleteTextures
.L5993:
	movl	$0, 12(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z11reset_imageP5Image
	.def	_Z11reset_imageP5Image;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11reset_imageP5Image
_Z11reset_imageP5Image:
.LFB7474:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L5995
	call	free
	movq	$0, (%rbx)
.L5995:
	movl	12(%rbx), %eax
	testl	%eax, %eax
	je	.L5996
	leaq	8(%rbx), %rdx
	movl	$1, %ecx
	call	glDeleteTextures
.L5996:
	movl	$0, 12(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9resize_uiiii
	.def	_Z9resize_uiiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9resize_uiiii
_Z9resize_uiiii:
.LFB7475:
	.seh_endprologue
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	cmpl	%edx, %ecx
	cvtsi2ss	%edx, %xmm1
	movl	%edx, %eax
	cmovle	%ecx, %eax
	cvtsi2ss	%ecx, %xmm0
	cmpl	%eax, %r8d
	jge	.L6001
	cmpl	%edx, %ecx
	movaps	%xmm0, %xmm3
	jle	.L6005
.L6002:
	pxor	%xmm2, %xmm2
	cvtsi2ss	%r8d, %xmm2
	divss	%xmm2, %xmm3
	divss	%xmm3, %xmm1
	divss	%xmm3, %xmm0
	movd	%xmm1, %eax
	movq	%rax, %rdx
	salq	$32, %rdx
	movd	%xmm0, %eax
	orq	%rdx, %rax
	ret
	.p2align 4,,10
.L6001:
	movd	%xmm1, %eax
	movd	%xmm0, %edx
	movq	%rax, %rcx
	movl	%edx, %eax
	salq	$32, %rcx
	orq	%rcx, %rax
	ret
	.p2align 4,,10
.L6005:
	movaps	%xmm1, %xmm3
	jmp	.L6002
	.seh_endproc
	.p2align 4,,15
	.globl	image_transtition
	.def	image_transtition;	.scl	2;	.type	32;	.endef
	.seh_proc	image_transtition
image_transtition:
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
.L6020:
	movl	$2, %edx
	jmp	.L6010
	.p2align 4,,10
.L6017:
	xorl	%edx, %edx
	jmp	.L6009
	.p2align 4,,10
.L6021:
	movl	$3, %edx
	jmp	.L6010
	.p2align 4,,10
.L6022:
	movl	$4, %edx
	jmp	.L6010
.L6025:
	movl	$7, %edx
	jmp	.L6010
	.p2align 4,,10
.L6023:
	movl	$5, %edx
	jmp	.L6010
.L6024:
	movl	$6, %edx
	jmp	.L6010
.L6018:
	xorl	%edx, %edx
	jmp	.L6010
.L6026:
	movl	$8, %edx
	jmp	.L6010
.L6027:
	movl	$9, %edx
	jmp	.L6010
.L6028:
	movl	$10, %edx
	jmp	.L6010
.L6029:
	movl	$11, %edx
	jmp	.L6010
.L6030:
	movl	$12, %edx
	jmp	.L6010
.L6031:
	movl	$13, %edx
	jmp	.L6010
.L6032:
	movl	$14, %edx
	jmp	.L6010
	.seh_endproc
	.section	.text$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.def	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev:
.LFB7730:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rcx), %rsi
	movq	(%rcx), %rbx
	movq	%rcx, %rdi
	cmpq	%rbx, %rsi
	je	.L6041
	.p2align 4,,10
.L6042:
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6043
	call	_ZdlPv
	addq	$32, %rbx
	cmpq	%rbx, %rsi
	jne	.L6042
.L6044:
	movq	(%rdi), %rbx
.L6041:
	testq	%rbx, %rbx
	je	.L6040
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZdlPv
	.p2align 4,,10
.L6043:
	addq	$32, %rbx
	cmpq	%rbx, %rsi
	jne	.L6042
	jmp	.L6044
	.p2align 4,,10
.L6040:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
	.def	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:
.LFB7897:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	%rdx, %rbx
	movq	%rdx, %r13
	movq	(%rcx), %rdx
	movq	%rcx, %r12
	movq	%rbx, %r14
	movq	%r8, %r15
	subq	%rdx, %rax
	subq	%rdx, %r14
	sarq	$5, %rax
	testq	%rax, %rax
	je	.L6070
	leaq	(%rax,%rax), %rdx
	movq	$-32, %rdi
	cmpq	%rdx, %rax
	jbe	.L6088
.L6049:
	movq	%rdi, %rcx
	call	_Znwy
	leaq	32(%rax), %rbp
	movq	%rax, %rsi
	addq	%rax, %rdi
.L6050:
	movq	%r14, %rax
	addq	%rsi, %rax
	je	.L6051
	movq	(%r15), %rcx
	leaq	16(%rax), %rdx
	movq	%rdx, (%rax)
	leaq	16(%r15), %rdx
	cmpq	%rdx, %rcx
	je	.L6089
	movq	%rcx, (%rax)
	movq	16(%r15), %rcx
	movq	%rcx, 16(%rax)
.L6053:
	movq	8(%r15), %rcx
	movq	%rdx, (%r15)
	movq	$0, 8(%r15)
	movb	$0, 16(%r15)
	movq	%rcx, 8(%rax)
.L6051:
	movq	(%r12), %rdx
	cmpq	%rbx, %rdx
	je	.L6054
	leaq	32(%rdx), %rcx
	movq	%rbx, %r11
	movq	%rsi, %r8
	leaq	16(%rdx), %rax
	subq	%rcx, %r11
	leaq	48(%rdx,%r11), %r9
	movq	%r11, %r10
	shrq	$5, %r10
	jmp	.L6058
	.p2align 4,,10
.L6056:
	movq	%rcx, (%r8)
	movq	(%rax), %rdx
	movq	%rdx, 16(%r8)
.L6057:
	movq	-8(%rax), %rdx
	movq	%rdx, 8(%r8)
	movq	%rax, -16(%rax)
	movq	$0, -8(%rax)
	movb	$0, (%rax)
.L6055:
	addq	$32, %rax
	addq	$32, %r8
	cmpq	%rax, %r9
	je	.L6090
.L6058:
	testq	%r8, %r8
	je	.L6055
	leaq	16(%r8), %rdx
	movq	%rdx, (%r8)
	movq	-16(%rax), %rcx
	cmpq	%rcx, %rax
	jne	.L6056
	movdqu	(%rax), %xmm1
	movups	%xmm1, 16(%r8)
	jmp	.L6057
	.p2align 4,,10
.L6090:
	movq	%r10, %rax
	salq	$5, %rax
	leaq	64(%rsi,%rax), %rbp
.L6054:
	movq	8(%r12), %rdx
	cmpq	%rbx, %rdx
	je	.L6059
	leaq	32(%rbx), %rcx
	leaq	16(%rbx), %rax
	subq	%rcx, %rdx
	leaq	48(%rdx,%rbx), %r8
	movq	%rdx, %r9
	movq	%rbp, %rdx
	shrq	$5, %r9
	jmp	.L6063
	.p2align 4,,10
.L6061:
	movq	%rcx, (%rdx)
	movq	(%rax), %rcx
	movq	%rcx, 16(%rdx)
.L6062:
	movq	-8(%rax), %rcx
	movq	%rax, -16(%rax)
	movq	$0, -8(%rax)
	movb	$0, (%rax)
	movq	%rcx, 8(%rdx)
.L6060:
	addq	$32, %rax
	addq	$32, %rdx
	cmpq	%r8, %rax
	je	.L6091
.L6063:
	testq	%rdx, %rdx
	je	.L6060
	leaq	16(%rdx), %rcx
	movq	%rcx, (%rdx)
	movq	-16(%rax), %rcx
	cmpq	%rax, %rcx
	jne	.L6061
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	jmp	.L6062
	.p2align 4,,10
.L6091:
	movq	8(%r12), %r13
	leaq	1(%r9), %rax
	salq	$5, %rax
	addq	%rax, %rbp
.L6059:
	movq	(%r12), %rbx
	cmpq	%r13, %rbx
	je	.L6064
	.p2align 4,,10
.L6065:
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6066
	call	_ZdlPv
	addq	$32, %rbx
	cmpq	%r13, %rbx
	jne	.L6065
.L6067:
	movq	(%r12), %r13
.L6064:
	testq	%r13, %r13
	je	.L6069
	movq	%r13, %rcx
	call	_ZdlPv
.L6069:
	movq	%rsi, (%r12)
	movq	%rbp, 8(%r12)
	movq	%rdi, 16(%r12)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L6066:
	addq	$32, %rbx
	cmpq	%r13, %rbx
	jne	.L6065
	jmp	.L6067
	.p2align 4,,10
.L6070:
	movl	$1, %edx
.L6048:
	movq	%rdx, %rdi
	salq	$5, %rdi
	jmp	.L6049
	.p2align 4,,10
.L6089:
	movq	16(%r15), %r9
	movq	24(%r15), %r10
	movq	%r9, 16(%rax)
	movq	%r10, 24(%rax)
	jmp	.L6053
	.p2align 4,,10
.L6088:
	movabsq	$576460752303423487, %rax
	cmpq	%rax, %rdx
	ja	.L6049
	testq	%rdx, %rdx
	jne	.L6048
	movl	$32, %ebp
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.L6050
	.seh_endproc
	.text
	.p2align 4,,15
	.globl	_Z7dirlistB5cxx11PKci
	.def	_Z7dirlistB5cxx11PKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7dirlistB5cxx11PKci
_Z7dirlistB5cxx11PKci:
.LFB7476:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$1144, %rsp
	.seh_stackalloc	1144
	.seh_endprologue
	movq	%rcx, %r12
	movq	%rdx, %rcx
	movq	%rdx, 1224(%rsp)
	movl	%r8d, %r15d
	call	opendir
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L6169
	movq	$0, (%r12)
	leaq	128(%rsp), %r13
	movq	$0, 8(%r12)
	movq	$0, 16(%r12)
	.p2align 4,,10
.L6096:
	movq	%r14, %rcx
	call	readdir
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L6095
.L6176:
	leaq	8(%rax), %rbp
	movl	$2, %ecx
	leaq	.LC175(%rip), %rdi
	movq	%rbp, %rsi
	repz cmpsb
	je	.L6096
	cmpl	$2, %r15d
	je	.L6170
	movq	1224(%rsp), %r8
	leaq	.LC177(%rip), %rdx
	movq	%r13, %rcx
	movq	%rbp, %r9
	leaq	80(%rsp), %rsi
	call	sprintf
	movq	%rsi, %rdx
	movq	%r13, %rcx
.LEHB0:
	call	stat
.LEHE0:
	movzwl	86(%rsp), %eax
	andw	$-4096, %ax
	cmpw	$16384, %ax
	sete	%al
	movzbl	%al, %edx
	orl	%r15d, %edx
	je	.L6171
	cmpl	$1, %r15d
	jne	.L6096
	testb	%al, %al
	je	.L6096
	leaq	16(%rsi), %rdx
	movq	%rbp, %rcx
	movq	%rdx, 80(%rsp)
	movq	%rdx, 40(%rsp)
	call	strlen
	movq	40(%rsp), %rdx
	cmpq	$15, %rax
	movq	%rax, %rdi
	movq	%rax, 72(%rsp)
	ja	.L6172
	cmpq	$1, %rax
	jne	.L6125
	movzbl	8(%rbx), %ecx
	movb	%cl, 96(%rsp)
.L6126:
	movq	%rax, 88(%rsp)
	movb	$0, (%rdx,%rax)
	movq	8(%r12), %rdx
	cmpq	16(%r12), %rdx
	movq	%rdx, %rcx
	jne	.L6168
	movq	%rsi, %r8
	movq	%r12, %rcx
.LEHB1:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
.LEHE1:
.L6161:
	movq	80(%rsp), %rcx
	jmp	.L6132
	.p2align 4,,10
.L6170:
	leaq	16(%r13), %rsi
	movq	%rbp, %rcx
	movq	%rsi, 128(%rsp)
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %rdi
	movq	%rax, 56(%rsp)
	ja	.L6173
	cmpq	$1, %rax
	jne	.L6100
	movzbl	8(%rbx), %edx
	movb	%dl, 144(%rsp)
.L6101:
	movq	%rax, 136(%rsp)
	movb	$0, (%rsi,%rax)
	movq	8(%r12), %rdx
	cmpq	16(%r12), %rdx
	movq	%rdx, %rcx
	je	.L6102
	testq	%rdx, %rdx
	je	.L6174
	leaq	16(%rdx), %rax
	movq	%rax, (%rdx)
	movq	128(%rsp), %rax
	leaq	16(%r13), %r8
	cmpq	%r8, %rax
	je	.L6175
	movq	%rax, (%rdx)
	movq	144(%rsp), %rax
	movq	%rax, 16(%rdx)
.L6106:
	movq	136(%rsp), %rax
	movq	%rax, 8(%rcx)
	leaq	16(%r13), %rcx
	movq	%rcx, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
.L6104:
	addq	$32, %rdx
	movq	%rdx, 8(%r12)
.L6107:
	leaq	16(%r13), %rax
	cmpq	%rax, %rcx
	je	.L6096
.L6157:
	call	_ZdlPv
	movq	%r14, %rcx
	call	readdir
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L6176
.L6095:
	movq	%r14, %rcx
	call	closedir
	movq	%r12, %rax
	addq	$1144, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L6171:
	leaq	16(%rsi), %rdx
	movq	%rbp, %rcx
	movq	%rdx, 80(%rsp)
	movq	%rdx, 40(%rsp)
	call	strlen
	movq	40(%rsp), %rdx
	cmpq	$15, %rax
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)
	ja	.L6177
	cmpq	$1, %rax
	jne	.L6113
	movzbl	8(%rbx), %ecx
	movb	%cl, 96(%rsp)
.L6114:
	movq	%rax, 88(%rsp)
	movb	$0, (%rdx,%rax)
	movq	8(%r12), %rdx
	cmpq	16(%r12), %rdx
	movq	%rdx, %rcx
	je	.L6115
.L6168:
	testq	%rdx, %rdx
	je	.L6178
	leaq	16(%rdx), %rax
	movq	%rax, (%rdx)
	movq	80(%rsp), %rax
	leaq	16(%rsi), %r8
	cmpq	%r8, %rax
	je	.L6179
	movq	%rax, (%rdx)
	movq	96(%rsp), %rax
	movq	%rax, 16(%rdx)
.L6131:
	movq	88(%rsp), %rax
	movq	%rax, 8(%rcx)
	leaq	16(%rsi), %rcx
	movq	%rcx, 80(%rsp)
	movq	$0, 88(%rsp)
	movb	$0, 96(%rsp)
.L6129:
	addq	$32, %rdx
	movq	%rdx, 8(%r12)
.L6132:
	addq	$16, %rsi
	cmpq	%rsi, %rcx
	jne	.L6157
	jmp	.L6096
	.p2align 4,,10
.L6173:
	leaq	56(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r13, %rcx
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	56(%rsp), %rdx
	movq	%rax, 128(%rsp)
	movq	%rdx, 144(%rsp)
.L6099:
	movq	%rdi, %r8
	movq	%rbp, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	56(%rsp), %rax
	movq	128(%rsp), %rsi
	jmp	.L6101
	.p2align 4,,10
.L6178:
	movq	80(%rsp), %rcx
	jmp	.L6129
	.p2align 4,,10
.L6174:
	movq	128(%rsp), %rcx
	jmp	.L6104
	.p2align 4,,10
.L6177:
	leaq	64(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rsi, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE2:
	movq	64(%rsp), %rdx
	movq	%rax, 80(%rsp)
	movq	%rdx, 96(%rsp)
.L6112:
	movq	%rbp, %rdx
	movq	%rdi, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	64(%rsp), %rax
	movq	80(%rsp), %rdx
	jmp	.L6114
	.p2align 4,,10
.L6100:
	testq	%rax, %rax
	je	.L6101
	movq	%rsi, %rax
	jmp	.L6099
	.p2align 4,,10
.L6179:
	movq	96(%rsp), %r9
	movq	104(%rsp), %r10
	movq	%r9, 16(%rdx)
	movq	%r10, 24(%rdx)
	movq	8(%r12), %rdx
	jmp	.L6131
	.p2align 4,,10
.L6175:
	movq	144(%rsp), %r9
	movq	152(%rsp), %r10
	movq	%r9, 16(%rdx)
	movq	%r10, 24(%rdx)
	movq	8(%r12), %rdx
	jmp	.L6106
	.p2align 4,,10
.L6102:
	movq	%r13, %r8
	movq	%r12, %rcx
.LEHB3:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
.LEHE3:
	movq	128(%rsp), %rcx
	jmp	.L6107
	.p2align 4,,10
.L6172:
	leaq	72(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rsi, %rcx
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE4:
	movq	72(%rsp), %rdx
	movq	%rax, 80(%rsp)
	movq	%rdx, 96(%rsp)
.L6124:
	movq	%rbp, %rdx
	movq	%rdi, %r8
	movq	%rax, %rcx
	call	memcpy
	movq	72(%rsp), %rax
	movq	80(%rsp), %rdx
	jmp	.L6126
	.p2align 4,,10
.L6113:
	testq	%rax, %rax
	je	.L6114
	movq	%rdx, %rax
	jmp	.L6112
	.p2align 4,,10
.L6115:
	movq	%rsi, %r8
	movq	%r12, %rcx
.LEHB5:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
.LEHE5:
	jmp	.L6161
	.p2align 4,,10
.L6125:
	testq	%rax, %rax
	je	.L6126
	movq	%rdx, %rax
	jmp	.L6124
.L6169:
.LEHB6:
	call	*__imp___iob_func(%rip)
	movq	1224(%rsp), %r8
	leaq	.LC174(%rip), %rdx
	leaq	96(%rax), %rcx
	call	fprintf
	movl	$1, %ecx
	call	exit
.L6146:
.L6163:
	movq	80(%rsp), %rcx
	addq	$16, %rsi
	movq	%rax, %rbx
	cmpq	%rsi, %rcx
	je	.L6136
.L6160:
	call	_ZdlPv
.L6136:
	movq	%r12, %rcx
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE6:
.L6147:
	jmp	.L6163
.L6145:
	movq	%rax, %rbx
	jmp	.L6136
.L6144:
	movq	128(%rsp), %rcx
	addq	$16, %r13
	movq	%rax, %rbx
	cmpq	%r13, %rcx
	jne	.L6160
	jmp	.L6136
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7476:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7476-.LLSDACSB7476
.LLSDACSB7476:
	.uleb128 .LEHB0-.LFB7476
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L6145-.LFB7476
	.uleb128 0
	.uleb128 .LEHB1-.LFB7476
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L6147-.LFB7476
	.uleb128 0
	.uleb128 .LEHB2-.LFB7476
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L6145-.LFB7476
	.uleb128 0
	.uleb128 .LEHB3-.LFB7476
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L6144-.LFB7476
	.uleb128 0
	.uleb128 .LEHB4-.LFB7476
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L6145-.LFB7476
	.uleb128 0
	.uleb128 .LEHB5-.LFB7476
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L6146-.LFB7476
	.uleb128 0
	.uleb128 .LEHB6-.LFB7476
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE7476:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC191:
	.ascii "Files\0"
	.align 8
.LC192:
	.ascii "basic_string::_M_construct null not valid\0"
.LC193:
	.ascii "basic_string::append\0"
.LC194:
	.ascii "/\0"
	.text
	.p2align 4,,15
	.globl	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKc
	.def	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKc
_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKc:
.LFB7477:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$184, %rsp
	.seh_stackalloc	184
	.seh_endprologue
	movq	%rcx, 256(%rsp)
	movq	%r8, %r14
	movq	%rdx, 264(%rsp)
	movzbl	_ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %eax
	testb	%al, %al
	jne	.L6182
	leaq	_ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	jne	.L6297
.L6182:
	movq	%r14, %rcx
.LEHB7:
	call	_ZN5ImGui10BeginPopupEPKc
.LEHE7:
	testb	%al, %al
	je	.L6246
	movq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %rbx
	movq	%rbx, %rcx
	call	opendir
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L6298
	pxor	%xmm0, %xmm0
	leaq	.LC175(%rip), %r13
	movaps	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	leaq	128(%rsp), %rbp
.L6187:
	movq	%r12, %rcx
	call	readdir
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L6186
.L6301:
	leaq	8(%rax), %rbx
	movl	$2, %ecx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	repz cmpsb
	je	.L6187
	leaq	16(%rbp), %rdi
	movq	%rbx, %rcx
	movq	%rdi, 128(%rsp)
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %rsi
	movq	%rax, 96(%rsp)
	ja	.L6299
	cmpq	$1, %rax
	jne	.L6190
	movzbl	8(%r15), %edx
	movb	%dl, 144(%rsp)
.L6191:
	movq	%rax, 136(%rsp)
	movb	$0, (%rdi,%rax)
	movq	40(%rsp), %rdx
	cmpq	48(%rsp), %rdx
	je	.L6192
	testq	%rdx, %rdx
	movq	128(%rsp), %rcx
	je	.L6194
	leaq	16(%rdx), %rax
	movq	%rax, (%rdx)
	movq	128(%rsp), %rax
	leaq	16(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.L6300
	movq	%rax, (%rdx)
	movq	144(%rsp), %rax
	movq	%rax, 16(%rdx)
.L6196:
	movq	136(%rsp), %rax
	leaq	16(%rbp), %rcx
	movq	%rax, 8(%rdx)
	movq	%rcx, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
.L6194:
	addq	$32, %rdx
	movq	%rdx, 40(%rsp)
.L6197:
	leaq	16(%rbp), %rax
	cmpq	%rax, %rcx
	je	.L6187
	call	_ZdlPv
	movq	%r12, %rcx
	call	readdir
	testq	%rax, %rax
	movq	%rax, %r15
	jne	.L6301
.L6186:
	movq	%r12, %rcx
	call	closedir
	leaq	.LC191(%rip), %rcx
.LEHB8:
	call	_ZN5ImGui4TextEPKcz
	movzbl	_ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip), %eax
	testb	%al, %al
	je	.L6302
.L6205:
	leaq	.LC129(%rip), %rdx
	pxor	%xmm2, %xmm2
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip), %rcx
	call	_ZN15ImGuiTextFilter4DrawEPKcf
	movq	32(%rsp), %rdx
	cmpq	40(%rsp), %rdx
	je	.L6291
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip), %rdi
	xorl	%esi, %esi
	leaq	128(%rsp), %r12
	jmp	.L6231
	.p2align 4,,10
.L6208:
	movq	40(%rsp), %rax
	addq	$1, %rsi
	subq	%rdx, %rax
	sarq	$5, %rax
	cmpq	%rsi, %rax
	jbe	.L6303
.L6231:
	movq	%rsi, %rbx
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	salq	$5, %rbx
	movl	%esi, %ebp
	movq	(%rdx,%rbx), %rdx
	call	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_
	testb	%al, %al
	movq	32(%rsp), %rdx
	je	.L6208
	movq	$0, 128(%rsp)
	movq	(%rdx,%rbx), %rcx
	movq	%r12, %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
.LEHE8:
	testb	%al, %al
	movq	32(%rsp), %rdx
	je	.L6208
	movq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %rdi
	leaq	(%rdx,%rbx), %rax
	movq	8+_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %rsi
	leaq	64(%rsp), %r13
	movq	%rax, %r15
	leaq	16(%r13), %rax
	movq	%rax, 64(%rsp)
	movq	%rdi, %rax
	addq	%rsi, %rax
	je	.L6209
	testq	%rdi, %rdi
	je	.L6304
.L6209:
	cmpq	$15, %rsi
	movq	%rsi, 96(%rsp)
	ja	.L6305
	cmpq	$1, %rsi
	jne	.L6212
	movzbl	(%rdi), %eax
	movb	%al, 80(%rsp)
	leaq	16(%r13), %rax
.L6213:
	movq	%rsi, 72(%rsp)
	movb	$0, (%rax,%rsi)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 72(%rsp)
	je	.L6306
	leaq	.LC194(%rip), %rdx
	movl	$1, %r8d
	movq	%r13, %rcx
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE9:
	movq	8(%r15), %r8
	movq	%r13, %rcx
	movq	(%r15), %rdx
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE10:
	leaq	96(%rsp), %rsi
	leaq	16(%rsi), %rdx
	movq	%rdx, 96(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L6307
	movq	%rcx, 96(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 112(%rsp)
.L6220:
	movq	8(%rax), %rcx
	movq	%rcx, 104(%rsp)
	movq	%rdx, (%rax)
	movq	%r12, %rdx
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	96(%rsp), %rcx
.LEHB11:
	call	stat
.LEHE11:
	movzwl	134(%rsp), %edi
	addq	$16, %rsi
	movq	96(%rsp), %rcx
	andw	$-4096, %di
	cmpq	%rsi, %rcx
	je	.L6221
	call	_ZdlPv
.L6221:
	movq	64(%rsp), %rcx
	addq	$16, %r13
	cmpq	%r13, %rcx
	je	.L6222
	call	_ZdlPv
.L6222:
	addq	32(%rsp), %rbx
	cmpw	$16384, %di
	je	.L6308
	movq	256(%rsp), %rcx
	movq	%rbx, %rdx
.LEHB12:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip), %rcx
	movb	$0, _ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip)
	call	_ZN15ImGuiTextFilter5BuildEv
	movq	264(%rsp), %rcx
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.LEHE12:
	jmp	.L6230
	.p2align 4,,10
.L6299:
	leaq	96(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rbp, %rcx
.LEHB13:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE13:
	movq	96(%rsp), %rdx
	movq	%rax, 128(%rsp)
	movq	%rdx, 144(%rsp)
.L6189:
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	96(%rsp), %rax
	movq	128(%rsp), %rdi
	jmp	.L6191
	.p2align 4,,10
.L6190:
	testq	%rax, %rax
	je	.L6191
	movq	%rdi, %rax
	jmp	.L6189
	.p2align 4,,10
.L6303:
	movl	$-1, %ebp
.L6230:
.LEHB14:
	call	_ZN5ImGui8EndPopupEv
.LEHE14:
	cmpl	$-1, %ebp
	je	.L6232
.L6229:
	movq	40(%rsp), %rsi
	movq	32(%rsp), %rbx
	cmpq	%rbx, %rsi
	je	.L6233
	.p2align 4,,10
.L6234:
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6235
	call	_ZdlPv
	addq	$32, %rbx
	cmpq	%rbx, %rsi
	jne	.L6234
.L6236:
	movq	32(%rsp), %rbx
.L6233:
	testq	%rbx, %rbx
	je	.L6180
	movq	%rbx, %rcx
	call	_ZdlPv
.L6180:
	movl	%ebp, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L6235:
	addq	$32, %rbx
	cmpq	%rbx, %rsi
	jne	.L6234
	jmp	.L6236
	.p2align 4,,10
.L6300:
	movq	144(%rsp), %rcx
	movq	152(%rsp), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	jmp	.L6196
	.p2align 4,,10
.L6192:
	leaq	32(%rsp), %rbx
	movq	%rbp, %r8
	movq	%rbx, %rcx
.LEHB15:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_
.LEHE15:
	movq	128(%rsp), %rcx
	jmp	.L6197
	.p2align 4,,10
.L6302:
	leaq	_ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L6205
	leaq	.LC129(%rip), %rdx
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip), %rcx
.LEHB16:
	call	_ZN15ImGuiTextFilterC1EPKc
.LEHE16:
	leaq	_ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip), %rcx
	call	__cxa_guard_release
	leaq	__tcf_1(%rip), %rcx
	call	atexit
	jmp	.L6205
.L6308:
	leaq	16(%r12), %rax
	movb	$0, 144(%rsp)
	movq	%r12, %rcx
	movq	%rax, 128(%rsp)
	movq	$0, 136(%rsp)
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
.LEHB17:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 136(%rsp)
	je	.L6309
	leaq	.LC194(%rip), %rdx
	movl	$1, %r8d
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movq	8(%rbx), %r8
	movq	%r12, %rcx
	movq	(%rbx), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE17:
	movq	136(%rsp), %r8
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %rcx
	movq	128(%rsp), %rdx
.LEHB18:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE18:
	movq	128(%rsp), %rcx
	addq	$16, %r12
	cmpq	%r12, %rcx
	je	.L6228
	call	_ZdlPv
.L6228:
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip), %rcx
	movb	$0, _ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip)
.LEHB19:
	call	_ZN15ImGuiTextFilter5BuildEv
	movq	264(%rsp), %rcx
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.L6291:
	call	_ZN5ImGui8EndPopupEv
.L6232:
	movq	%r14, %rcx
	call	_ZN5ImGui9OpenPopupEPKc
	movl	$-1, %ebp
	jmp	.L6229
	.p2align 4,,10
.L6297:
	leaq	16+_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %rax
	movq	$1, 8+_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip)
	movq	%rax, _ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip)
	leaq	_ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip), %rcx
	movl	$46, %eax
	movw	%ax, 16+_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir(%rip)
	call	__cxa_guard_release
	leaq	__tcf_0(%rip), %rcx
	call	atexit
	jmp	.L6182
.L6305:
	leaq	96(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE19:
	movq	96(%rsp), %rdx
	movq	%rax, 64(%rsp)
	movq	%rdx, 80(%rsp)
.L6211:
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	96(%rsp), %rsi
	movq	64(%rsp), %rax
	jmp	.L6213
.L6307:
	movq	16(%rax), %r9
	movq	24(%rax), %r10
	movq	%r9, 112(%rsp)
	movq	%r10, 120(%rsp)
	jmp	.L6220
.L6212:
	leaq	16(%r13), %rax
	testq	%rsi, %rsi
	je	.L6213
	jmp	.L6211
	.p2align 4,,10
.L6246:
	movl	$-1, %ebp
	jmp	.L6180
.L6256:
	movq	128(%rsp), %rcx
	addq	$16, %rbp
	movq	%rax, %rsi
	cmpq	%rbp, %rcx
	je	.L6203
	call	_ZdlPv
.L6203:
	movq	%rbx, %rcx
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	movq	%rsi, %rcx
.LEHB20:
	call	_Unwind_Resume
.L6250:
	movq	%rax, %rbx
.L6218:
	leaq	32(%rsp), %rcx
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L6251:
	leaq	_ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter(%rip), %rcx
	movq	%rax, %rbx
	call	__cxa_guard_abort
	jmp	.L6218
.L6255:
	leaq	32(%rsp), %rbx
	movq	%rax, %rsi
	jmp	.L6203
.L6298:
	call	*__imp___iob_func(%rip)
	leaq	.LC174(%rip), %rdx
	movq	%rbx, %r8
	leaq	96(%rax), %rcx
	call	fprintf
.LEHE20:
	movl	$1, %ecx
	call	exit
.L6254:
.L6294:
	movq	128(%rsp), %rcx
	addq	$16, %r12
	movq	%rax, %rbx
	cmpq	%r12, %rcx
	je	.L6218
.L6292:
	call	_ZdlPv
	jmp	.L6218
.L6309:
	leaq	.LC193(%rip), %rcx
.LEHB21:
	call	_ZSt20__throw_length_errorPKc
.LEHE21:
.L6258:
	jmp	.L6294
.L6304:
	leaq	.LC192(%rip), %rcx
.LEHB22:
	call	_ZSt19__throw_logic_errorPKc
.LEHE22:
.L6253:
	movq	96(%rsp), %rcx
	addq	$16, %rsi
	movq	%rax, %rbx
	cmpq	%rsi, %rcx
	je	.L6242
	call	_ZdlPv
.L6242:
	movq	64(%rsp), %rcx
	addq	$16, %r13
	cmpq	%r13, %rcx
	jne	.L6292
	jmp	.L6218
.L6252:
.L6296:
	movq	%rax, %rbx
	jmp	.L6242
.L6257:
	jmp	.L6296
.L6306:
	leaq	.LC193(%rip), %rcx
.LEHB23:
	call	_ZSt20__throw_length_errorPKc
	nop
.LEHE23:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7477:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7477-.LLSDACSB7477
.LLSDACSB7477:
	.uleb128 .LEHB7-.LFB7477
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB7477
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L6250-.LFB7477
	.uleb128 0
	.uleb128 .LEHB9-.LFB7477
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L6257-.LFB7477
	.uleb128 0
	.uleb128 .LEHB10-.LFB7477
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L6252-.LFB7477
	.uleb128 0
	.uleb128 .LEHB11-.LFB7477
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L6253-.LFB7477
	.uleb128 0
	.uleb128 .LEHB12-.LFB7477
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L6250-.LFB7477
	.uleb128 0
	.uleb128 .LEHB13-.LFB7477
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L6255-.LFB7477
	.uleb128 0
	.uleb128 .LEHB14-.LFB7477
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L6250-.LFB7477
	.uleb128 0
	.uleb128 .LEHB15-.LFB7477
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L6256-.LFB7477
	.uleb128 0
	.uleb128 .LEHB16-.LFB7477
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L6251-.LFB7477
	.uleb128 0
	.uleb128 .LEHB17-.LFB7477
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L6258-.LFB7477
	.uleb128 0
	.uleb128 .LEHB18-.LFB7477
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L6254-.LFB7477
	.uleb128 0
	.uleb128 .LEHB19-.LFB7477
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L6250-.LFB7477
	.uleb128 0
	.uleb128 .LEHB20-.LFB7477
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB7477
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L6258-.LFB7477
	.uleb128 0
	.uleb128 .LEHB22-.LFB7477
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L6250-.LFB7477
	.uleb128 0
	.uleb128 .LEHB23-.LFB7477
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L6257-.LFB7477
	.uleb128 0
.LLSDACSE7477:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC195:
	.ascii "<None>\0"
.LC196:
	.ascii "select 0\0"
.LC197:
	.ascii "select 1\0"
	.text
	.p2align 4,,15
	.globl	_Z12image_selectB5cxx11i
	.def	_Z12image_selectB5cxx11i;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12image_selectB5cxx11i
_Z12image_selectB5cxx11i:
.LFB7480:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$168, %rsp
	.seh_stackalloc	168
	.seh_endprologue
	movzbl	_ZGVZ12image_selectB5cxx11iE8selected(%rip), %eax
	testb	%al, %al
	leaq	64(%rsp), %rdi
	movq	%rcx, %rbx
	movl	%edx, %ebp
	jne	.L6328
	leaq	_ZGVZ12image_selectB5cxx11iE8selected(%rip), %rcx
	call	__cxa_guard_acquire
	leaq	64(%rsp), %rdi
	testl	%eax, %eax
	jne	.L6408
.L6328:
	movss	.LC26(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movslq	%ebp, %rsi
	salq	$5, %rsi
.LEHB24:
	call	_ZN5ImGui8SameLineEff
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rcx
	leaq	.LC129(%rip), %rdx
	addq	%rsi, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	leaq	.LC195(%rip), %rcx
	testl	%eax, %eax
	je	.L6339
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rax
	movq	(%rax,%rsi), %rcx
.L6339:
	call	_ZN5ImGui4TextEPKcz
.LEHE24:
	leaq	16(%rdi), %r12
	testl	%ebp, %ebp
	movb	$0, 80(%rsp)
	movq	%r12, 64(%rsp)
	movq	$0, 72(%rsp)
	je	.L6409
	cmpl	$1, %ebp
	je	.L6410
.L6341:
	cmpl	$-1, %r13d
	je	.L6411
	addq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rsi
	movq	72(%rsp), %rbp
	movq	%rsi, %r13
	leaq	96(%rsp), %rsi
	leaq	16(%rsi), %rax
	movq	%rax, 96(%rsp)
	movq	%r12, %rax
	addq	%rbp, %rax
	je	.L6344
	testq	%r12, %r12
	je	.L6412
.L6344:
	cmpq	$15, %rbp
	movq	%rbp, 56(%rsp)
	ja	.L6413
	cmpq	$1, %rbp
	jne	.L6347
	movzbl	(%r12), %eax
	movb	%al, 112(%rsp)
	leaq	16(%rsi), %rax
.L6348:
	movq	%rbp, 104(%rsp)
	movb	$0, (%rax,%rbp)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 104(%rsp)
	je	.L6414
	leaq	.LC194(%rip), %rdx
	movl	$1, %r8d
	movq	%rsi, %rcx
.LEHB25:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE25:
	movq	8(%r13), %r8
	movq	%rsi, %rcx
	movq	0(%r13), %rdx
.LEHB26:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE26:
	leaq	16(%rbx), %rdx
	movq	%rdx, (%rbx)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L6415
	movq	%rcx, (%rbx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rbx)
.L6355:
	movq	8(%rax), %rcx
	addq	$16, %rsi
	movq	%rcx, 8(%rbx)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movq	96(%rsp), %rcx
	cmpq	%rsi, %rcx
	je	.L6356
	call	_ZdlPv
.L6356:
	movq	64(%rsp), %r12
.L6343:
	addq	$16, %rdi
	cmpq	%rdi, %r12
	je	.L6310
	movq	%r12, %rcx
	call	_ZdlPv
.L6310:
	movq	%rbx, %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L6413:
	leaq	56(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rsi, %rcx
.LEHB27:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	56(%rsp), %rdx
	movq	%rax, 96(%rsp)
	movq	%rdx, 112(%rsp)
.L6346:
	movq	%rbp, %r8
	movq	%r12, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	56(%rsp), %rbp
	movq	96(%rsp), %rax
	jmp	.L6348
	.p2align 4,,10
.L6411:
	leaq	16(%rbx), %rax
	movq	$0, 8(%rbx)
	movq	%rax, (%rbx)
	movb	$0, 16(%rbx)
	jmp	.L6343
	.p2align 4,,10
.L6409:
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rcx
	leaq	.LC196(%rip), %r8
	movq	%rdi, %rdx
	addq	%rsi, %rcx
	call	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKc
.LEHE27:
.L6404:
	movl	%eax, %r13d
	movq	64(%rsp), %r12
	jmp	.L6341
	.p2align 4,,10
.L6408:
	leaq	96(%rsp), %rsi
	movl	$64, %ecx
	pxor	%xmm0, %xmm0
	movq	$0, 104(%rsp)
	leaq	16(%rsi), %rax
	movb	$0, 112(%rsp)
	movq	%rax, 96(%rsp)
	leaq	48(%rsi), %rax
	movq	%rax, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
	movaps	%xmm0, _ZZ12image_selectB5cxx11iE8selected(%rip)
	movq	$0, 16+_ZZ12image_selectB5cxx11iE8selected(%rip)
.LEHB28:
	call	_Znwy
.LEHE28:
	movq	96(%rsp), %r15
	movq	%rax, %r12
	movq	%rax, _ZZ12image_selectB5cxx11iE8selected(%rip)
	movq	104(%rsp), %r14
	leaq	64(%rax), %rax
	movq	%rax, 16+_ZZ12image_selectB5cxx11iE8selected(%rip)
	leaq	16(%r12), %rax
	movq	%rax, (%r12)
	movq	%r15, %rdi
	addq	%r14, %rdi
	je	.L6372
	testq	%r15, %r15
	je	.L6361
.L6372:
	cmpq	$15, %r14
	movq	%r14, 64(%rsp)
	ja	.L6416
	cmpq	$1, %r14
	jne	.L6319
	movzbl	(%r15), %edx
	movb	%dl, 16(%r12)
.L6318:
	movq	%r14, 8(%r12)
	movb	$0, (%rax,%r14)
	movq	%r12, %rax
	addq	$32, %rax
	movq	%rax, 40(%rsp)
	je	.L6417
	movq	128(%rsp), %r15
	leaq	48(%r12), %rax
	movq	136(%rsp), %r14
	movq	%rax, 32(%r12)
	movq	%r15, %rdi
	addq	%r14, %rdi
	je	.L6321
	testq	%r15, %r15
	je	.L6312
.L6321:
	cmpq	$15, %r14
	movq	%r14, 64(%rsp)
	ja	.L6418
	cmpq	$1, %r14
	jne	.L6324
	movzbl	(%r15), %edx
	leaq	64(%rsp), %rdi
	movb	%dl, 48(%r12)
.L6325:
	movq	%r14, 40(%r12)
	movb	$0, (%rax,%r14)
	movq	40(%rsp), %rax
.L6317:
	leaq	_ZGVZ12image_selectB5cxx11iE8selected(%rip), %rcx
	addq	$32, %rax
	movq	%rax, 8+_ZZ12image_selectB5cxx11iE8selected(%rip)
	call	__cxa_guard_release
	leaq	__tcf_2(%rip), %rcx
	call	atexit
	movq	128(%rsp), %rcx
	leaq	48(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6326
	call	_ZdlPv
.L6326:
	movq	96(%rsp), %rcx
	addq	$16, %rsi
	cmpq	%rsi, %rcx
	je	.L6328
	call	_ZdlPv
	jmp	.L6328
	.p2align 4,,10
.L6415:
	movq	16(%rax), %r9
	movq	24(%rax), %r10
	movq	%r9, 16(%rbx)
	movq	%r10, 24(%rbx)
	jmp	.L6355
	.p2align 4,,10
.L6410:
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rcx
	leaq	.LC197(%rip), %r8
	movq	%rdi, %rdx
	addq	%rsi, %rcx
.LEHB29:
	call	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKc
.LEHE29:
	jmp	.L6404
	.p2align 4,,10
.L6347:
	leaq	16(%rsi), %rax
	testq	%rbp, %rbp
	je	.L6348
	jmp	.L6346
	.p2align 4,,10
.L6418:
	movq	40(%rsp), %rcx
	leaq	64(%rsp), %rdi
	xorl	%r8d, %r8d
	movq	%rdi, %rdx
.LEHB30:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE30:
	movq	64(%rsp), %rdx
	movq	%rax, 32(%r12)
	movq	%rdx, 48(%r12)
.L6323:
	movq	%r14, %r8
	movq	%r15, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	64(%rsp), %r14
	movq	32(%r12), %rax
	jmp	.L6325
	.p2align 4,,10
.L6416:
	leaq	64(%rsp), %rdi
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movq	%rdi, %rdx
.LEHB31:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE31:
	movq	64(%rsp), %rdx
	movq	%rax, (%r12)
	movq	%rdx, 16(%r12)
.L6320:
	movq	%r14, %r8
	movq	%r15, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	64(%rsp), %r14
	movq	(%r12), %rax
	jmp	.L6318
.L6412:
	leaq	.LC192(%rip), %rcx
.LEHB32:
	call	_ZSt19__throw_logic_errorPKc
.LEHE32:
.L6365:
	movq	%rax, %rbx
.L6353:
	movq	64(%rsp), %rcx
	addq	$16, %rdi
	cmpq	%rdi, %rcx
	je	.L6360
	call	_ZdlPv
.L6360:
	movq	%rbx, %rcx
.LEHB33:
	call	_Unwind_Resume
.LEHE33:
	.p2align 4,,10
.L6324:
	leaq	64(%rsp), %rdi
	testq	%r14, %r14
	je	.L6325
	jmp	.L6323
	.p2align 4,,10
.L6319:
	testq	%r14, %r14
	je	.L6318
	jmp	.L6320
	.p2align 4,,10
.L6417:
	leaq	64(%rsp), %rdi
	jmp	.L6317
.L6414:
	leaq	.LC193(%rip), %rcx
.LEHB34:
	call	_ZSt20__throw_length_errorPKc
.LEHE34:
.L6369:
.L6407:
	movq	96(%rsp), %rcx
	addq	$16, %rsi
	movq	%rax, %rbx
	cmpq	%rsi, %rcx
	je	.L6353
	call	_ZdlPv
	jmp	.L6353
.L6361:
	movq	%r12, 40(%rsp)
.L6312:
	leaq	.LC192(%rip), %rcx
.LEHB35:
	call	_ZSt19__throw_logic_errorPKc
.LEHE35:
.L6370:
.L6330:
	movq	%rax, %rcx
	call	__cxa_begin_catch
.L6333:
	cmpq	40(%rsp), %r12
	je	.L6331
	movq	(%r12), %rcx
	leaq	16(%r12), %rax
	cmpq	%rax, %rcx
	je	.L6332
	call	_ZdlPv
.L6332:
	addq	$32, %r12
	jmp	.L6333
.L6331:
.LEHB36:
	call	__cxa_rethrow
.LEHE36:
.L6371:
	movq	%r12, 40(%rsp)
	jmp	.L6330
.L6368:
	movq	%rax, %rbx
	call	__cxa_end_catch
.L6335:
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rcx
	testq	%rcx, %rcx
	je	.L6336
	call	_ZdlPv
.L6336:
	movq	128(%rsp), %rcx
	leaq	48(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6337
	call	_ZdlPv
.L6337:
	movq	96(%rsp), %rcx
	addq	$16, %rsi
	cmpq	%rsi, %rcx
	je	.L6338
	call	_ZdlPv
.L6338:
	leaq	_ZGVZ12image_selectB5cxx11iE8selected(%rip), %rcx
	call	__cxa_guard_abort
	movq	%rbx, %rcx
.LEHB37:
	call	_Unwind_Resume
.LEHE37:
.L6366:
	jmp	.L6407
.L6367:
	movq	%rax, %rbx
	jmp	.L6335
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA7480:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT7480-.LLSDATTD7480
.LLSDATTD7480:
	.byte	0x1
	.uleb128 .LLSDACSE7480-.LLSDACSB7480
.LLSDACSB7480:
	.uleb128 .LEHB24-.LFB7480
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB7480
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L6369-.LFB7480
	.uleb128 0
	.uleb128 .LEHB26-.LFB7480
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L6366-.LFB7480
	.uleb128 0
	.uleb128 .LEHB27-.LFB7480
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L6365-.LFB7480
	.uleb128 0
	.uleb128 .LEHB28-.LFB7480
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L6367-.LFB7480
	.uleb128 0
	.uleb128 .LEHB29-.LFB7480
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L6365-.LFB7480
	.uleb128 0
	.uleb128 .LEHB30-.LFB7480
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L6370-.LFB7480
	.uleb128 0x1
	.uleb128 .LEHB31-.LFB7480
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L6371-.LFB7480
	.uleb128 0x1
	.uleb128 .LEHB32-.LFB7480
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L6365-.LFB7480
	.uleb128 0
	.uleb128 .LEHB33-.LFB7480
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB7480
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L6369-.LFB7480
	.uleb128 0
	.uleb128 .LEHB35-.LFB7480
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L6370-.LFB7480
	.uleb128 0x1
	.uleb128 .LEHB36-.LFB7480
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L6368-.LFB7480
	.uleb128 0
	.uleb128 .LEHB37-.LFB7480
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE7480:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT7480:
	.text
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC198:
	.ascii "Transtion Function\0"
.LC199:
	.ascii "Slider Window\0"
.LC201:
	.ascii "Image A\0"
.LC203:
	.ascii "Save\0"
.LC205:
	.ascii "%d.png\0"
.LC206:
	.ascii "Image B\0"
.LC207:
	.ascii "Transition t\0"
.LC208:
	.ascii "%.3f\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB7483:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$1328, %rsp
	.seh_stackalloc	1328
	movaps	%xmm6, 1200(%rsp)
	.seh_savexmm	%xmm6, 1200
	movaps	%xmm7, 1216(%rsp)
	.seh_savexmm	%xmm7, 1216
	movaps	%xmm8, 1232(%rsp)
	.seh_savexmm	%xmm8, 1232
	movaps	%xmm9, 1248(%rsp)
	.seh_savexmm	%xmm9, 1248
	movaps	%xmm10, 1264(%rsp)
	.seh_savexmm	%xmm10, 1264
	movaps	%xmm11, 1280(%rsp)
	.seh_savexmm	%xmm11, 1280
	movaps	%xmm12, 1296(%rsp)
	.seh_savexmm	%xmm12, 1296
	movaps	%xmm13, 1312(%rsp)
	.seh_savexmm	%xmm13, 1312
	.seh_endprologue
	call	__main
	leaq	_ZL14error_callbackiPKc(%rip), %rcx
	movq	$0, 96(%rsp)
	movl	$0, 108(%rsp)
	movq	$0, 128(%rsp)
	movl	$0, 140(%rsp)
	movq	$0, 160(%rsp)
	movl	$0, 172(%rsp)
	movl	$0x00000000, 52(%rsp)
.LEHB38:
	call	glfwSetErrorCallback
	call	glfwInit
	movl	$1, %edx
	testl	%eax, %eax
	jne	.L6472
.L6419:
	movaps	1200(%rsp), %xmm6
	movl	%edx, %eax
	movaps	1216(%rsp), %xmm7
	movaps	1232(%rsp), %xmm8
	movaps	1248(%rsp), %xmm9
	movaps	1264(%rsp), %xmm10
	movaps	1280(%rsp), %xmm11
	movaps	1296(%rsp), %xmm12
	movaps	1312(%rsp), %xmm13
	addq	$1328, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L6472:
	movl	$3, %edx
	movl	$139266, %ecx
	pxor	%xmm8, %xmm8
	call	glfwWindowHint
	movl	$3, %edx
	movl	$139267, %ecx
	call	glfwWindowHint
	movl	$204801, %edx
	movl	$139272, %ecx
	call	glfwWindowHint
	xorl	%r9d, %r9d
	movl	$350, %edx
	movl	$600, %ecx
	movq	$0, 32(%rsp)
	leaq	.LC198(%rip), %r8
	call	glfwCreateWindow
	movq	%rax, %rsi
	movq	%rax, %rcx
	call	glfwMakeContextCurrent
	call	*__imp_glewInit(%rip)
	movl	$1, %edx
	movq	%rsi, %rcx
	call	_Z22ImGui_ImplGlfwGL3_InitP10GLFWwindowb
	movaps	.LC200(%rip), %xmm7
	movaps	.LC202(%rip), %xmm9
	movaps	%xmm7, %xmm10
	movaps	%xmm7, %xmm11
	movss	.LC22(%rip), %xmm12
	jmp	.L6449
	.p2align 4,,10
.L6480:
	movl	140(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L6430
	cmpl	$0, 172(%rsp)
	movss	52(%rsp), %xmm13
	je	.L6473
	ucomiss	%xmm13, %xmm8
	jp	.L6457
	jne	.L6457
.L6434:
	movl	180(%rsp), %edx
	movaps	%xmm10, 80(%rsp)
	movabsq	$4575657222473777152, %rax
	movl	176(%rsp), %ecx
	movq	%rax, 72(%rsp)
	movaps	%xmm9, 192(%rsp)
	movq	$0, 64(%rsp)
	cmpl	%ecx, %edx
	movl	%ecx, %eax
	cmovle	%edx, %eax
	cmpl	$300, %eax
	jg	.L6474
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%edx, %xmm0
	cvtsi2ss	%ecx, %xmm1
.L6440:
	movl	168(%rsp), %ecx
	leaq	80(%rsp), %rax
	movq	%rbx, 40(%rsp)
	leaq	56(%rsp), %rdx
	movq	%rax, 32(%rsp)
	leaq	72(%rsp), %r9
	movss	%xmm1, 56(%rsp)
	leaq	64(%rsp), %r8
	movss	%xmm0, 60(%rsp)
	call	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
	leaq	.LC203(%rip), %rcx
	movq	%rbx, %rdx
	movq	$0, 192(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L6475
.L6438:
	call	_ZN5ImGui8EndGroupEv
	movss	.LC26(%rip), %xmm1
	pxor	%xmm0, %xmm0
	call	_ZN5ImGui8SameLineEff
	call	_ZN5ImGui10BeginGroupEv
	movl	140(%rsp), %eax
	testl	%eax, %eax
	je	.L6441
	movl	148(%rsp), %edx
	pxor	%xmm0, %xmm0
	movaps	%xmm11, 80(%rsp)
	movabsq	$4575657222473777152, %rax
	movl	144(%rsp), %ecx
	movq	%rax, 72(%rsp)
	movaps	%xmm0, 192(%rsp)
	movq	$0, 64(%rsp)
	cmpl	%ecx, %edx
	movl	%ecx, %eax
	cmovle	%edx, %eax
	cmpl	$300, %eax
	jg	.L6476
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%edx, %xmm0
	cvtsi2ss	%ecx, %xmm1
.L6443:
	movl	136(%rsp), %ecx
	leaq	80(%rsp), %rax
	movq	%rbx, 40(%rsp)
	leaq	56(%rsp), %rdx
	movq	%rax, 32(%rsp)
	leaq	72(%rsp), %r9
	movss	%xmm1, 56(%rsp)
	leaq	64(%rsp), %r8
	movss	%xmm0, 60(%rsp)
	call	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
.L6441:
	leaq	.LC206(%rip), %rcx
	movq	%rbx, %rdx
	movq	$0, 192(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L6477
.L6444:
	movl	$1, %edx
	movq	%rbx, %rcx
	call	_Z12image_selectB5cxx11i
	leaq	.LC129(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	.L6445
.L6448:
	movq	192(%rsp), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6447
	call	_ZdlPv
.L6447:
	call	_ZN5ImGui8EndGroupEv
	leaq	.LC208(%rip), %rax
	pxor	%xmm2, %xmm2
	movss	.LC22(%rip), %xmm6
	leaq	52(%rsp), %rdx
	movq	%rax, 32(%rsp)
	leaq	.LC207(%rip), %rcx
	movaps	%xmm6, %xmm3
	movss	%xmm6, 40(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	call	_ZN5ImGui3EndEv
	leaq	80(%rsp), %rdx
	movq	%rbx, %r8
	movq	%rsi, %rcx
	call	glfwGetFramebufferSize
	movl	80(%rsp), %r8d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	192(%rsp), %r9d
	call	glViewport
	movss	.LC209(%rip), %xmm2
	movaps	%xmm6, %xmm3
	movss	.LC210(%rip), %xmm1
	movss	.LC211(%rip), %xmm0
	call	glClearColor
	movl	$16384, %ecx
	call	glClear
	call	_ZN5ImGui6RenderEv
	movq	%rsi, %rcx
	call	glfwSwapBuffers
.L6449:
	movq	%rsi, %rcx
	call	glfwWindowShouldClose
	testl	%eax, %eax
	jne	.L6421
	call	glfwPollEvents
	leaq	192(%rsp), %rbx
	call	_Z26ImGui_ImplGlfwGL3_NewFramev
	movl	$4, %edx
	movq	%rbx, %rcx
	movabsq	$4812096202987667456, %rax
	movq	%rax, 192(%rsp)
	call	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	.LC199(%rip), %rcx
	call	_ZN5ImGui5BeginEPKcPbi
	call	_ZN5ImGui10BeginGroupEv
	movl	108(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L6422
	movl	116(%rsp), %edx
	pxor	%xmm0, %xmm0
	movaps	%xmm7, 80(%rsp)
	movabsq	$4575657222473777152, %rax
	movl	112(%rsp), %ecx
	movq	%rax, 72(%rsp)
	movaps	%xmm0, 192(%rsp)
	movq	$0, 64(%rsp)
	cmpl	%ecx, %edx
	movl	%ecx, %eax
	cmovle	%edx, %eax
	cmpl	$300, %eax
	jg	.L6478
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%edx, %xmm0
	cvtsi2ss	%ecx, %xmm1
.L6424:
	movl	104(%rsp), %ecx
	leaq	80(%rsp), %rax
	movq	%rbx, 40(%rsp)
	leaq	56(%rsp), %rdx
	movq	%rax, 32(%rsp)
	leaq	72(%rsp), %r9
	movss	%xmm1, 56(%rsp)
	leaq	64(%rsp), %r8
	movss	%xmm0, 60(%rsp)
	call	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
.L6422:
	leaq	.LC201(%rip), %rcx
	movq	%rbx, %rdx
	movq	$0, 192(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L6479
.L6425:
	xorl	%edx, %edx
	movq	%rbx, %rcx
	call	_Z12image_selectB5cxx11i
	leaq	.LC129(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	jne	.L6426
.L6429:
	movq	192(%rsp), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6428
	call	_ZdlPv
.L6428:
	call	_ZN5ImGui8EndGroupEv
	movss	.LC26(%rip), %xmm1
	pxor	%xmm0, %xmm0
	call	_ZN5ImGui8SameLineEff
	call	_ZN5ImGui10BeginGroupEv
.LEHE38:
	movl	108(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L6480
.L6430:
	movl	172(%rsp), %edx
	testl	%edx, %edx
	je	.L6438
	jmp	.L6434
	.p2align 4,,10
.L6445:
	leaq	128(%rsp), %rdi
	movq	%rdi, %rcx
.LEHB39:
	call	_Z11reset_imageP5Image
	leaq	160(%rsp), %rcx
	call	_Z11reset_imageP5Image
	movq	192(%rsp), %rcx
	leaq	16(%rdi), %rdx
	movl	$4, 32(%rsp)
	leaq	24(%rdi), %r9
	leaq	20(%rdi), %r8
	call	stbi_load
	movq	%rdi, %rcx
	movq	%rax, 128(%rsp)
	call	_Z13texture_imageP5Image
.LEHE39:
	jmp	.L6448
	.p2align 4,,10
.L6477:
	leaq	.LC197(%rip), %rcx
.LEHB40:
	call	_ZN5ImGui9OpenPopupEPKc
.LEHE40:
	jmp	.L6444
	.p2align 4,,10
.L6426:
	leaq	96(%rsp), %rdi
	movq	%rdi, %rcx
.LEHB41:
	call	_Z11reset_imageP5Image
	leaq	160(%rsp), %rcx
	call	_Z11reset_imageP5Image
	movq	192(%rsp), %rcx
	leaq	16(%rdi), %rdx
	movl	$4, 32(%rsp)
	leaq	24(%rdi), %r9
	leaq	20(%rdi), %r8
	call	stbi_load
	movq	%rdi, %rcx
	movq	%rax, 96(%rsp)
	call	_Z13texture_imageP5Image
.LEHE41:
	jmp	.L6429
	.p2align 4,,10
.L6479:
	leaq	.LC196(%rip), %rcx
.LEHB42:
	call	_ZN5ImGui9OpenPopupEPKc
	jmp	.L6425
.L6421:
	call	_Z41ImGui_ImplGlfwGL3_InvalidateDeviceObjectsv
	call	_ZN5ImGui8ShutdownEv
	call	glfwTerminate
	xorl	%edx, %edx
	jmp	.L6419
.L6476:
	movl	$300, %r8d
	call	_Z9resize_uiiii.part.51
	movd	%eax, %xmm1
	shrq	$32, %rax
	movd	%eax, %xmm0
	jmp	.L6443
.L6478:
	movl	$300, %r8d
	call	_Z9resize_uiiii.part.51
	movd	%eax, %xmm1
	shrq	$32, %rax
	movd	%eax, %xmm0
	jmp	.L6424
.L6475:
	movss	.LC204(%rip), %xmm0
	movq	%rbx, %rcx
	mulss	52(%rsp), %xmm0
	leaq	.LC205(%rip), %rdx
	cvttss2si	%xmm0, %r8d
	call	sprintf
	movq	160(%rsp), %rax
	movq	%rbx, %rcx
	movl	$0, 40(%rsp)
	movl	116(%rsp), %r8d
	movl	$4, %r9d
	movl	112(%rsp), %edx
	movq	%rax, 32(%rsp)
	call	stbi_write_png
	jmp	.L6438
.L6474:
	movl	$300, %r8d
	call	_Z9resize_uiiii.part.51
	movd	%eax, %xmm1
	shrq	$32, %rax
	movd	%eax, %xmm0
	jmp	.L6440
.L6473:
	movl	112(%rsp), %edi
	movl	116(%rsp), %eax
	movl	%edi, 176(%rsp)
	imull	%eax, %edi
	movl	%eax, 180(%rsp)
	sall	$2, %edi
	movslq	%edi, %rcx
	call	malloc
	testl	%edi, %edi
	movq	96(%rsp), %r9
	movq	%rax, 160(%rsp)
	movq	128(%rsp), %r8
	jle	.L6432
	movss	.LC22(%rip), %xmm6
	xorl	%ecx, %ecx
	subss	%xmm13, %xmm6
.L6433:
	movzbl	(%r9,%rcx), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%edx, %xmm0
	movzbl	(%r8,%rcx), %edx
	cvtsi2ss	%edx, %xmm1
	mulss	%xmm6, %xmm0
	mulss	%xmm13, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movb	%dl, (%rax,%rcx)
	addq	$1, %rcx
	cmpl	%ecx, %edi
	jg	.L6433
.L6432:
	leaq	160(%rsp), %rcx
	call	_Z13texture_imageP5Image
	jmp	.L6430
.L6457:
	leaq	160(%rsp), %rdi
	movl	$1, %ecx
	leaq	8(%rdi), %rdx
	call	glDeleteTextures
	movl	112(%rsp), %ecx
	xorl	%edx, %edx
	movl	$0, 172(%rsp)
	imull	116(%rsp), %ecx
	movss	52(%rsp), %xmm8
	movq	160(%rsp), %r10
	movq	96(%rsp), %r9
	sall	$2, %ecx
	movq	128(%rsp), %r8
	jmp	.L6437
.L6481:
	movzbl	(%r9,%rdx), %eax
	pxor	%xmm0, %xmm0
	movaps	%xmm12, %xmm1
	subss	%xmm8, %xmm1
	cvtsi2ss	%eax, %xmm0
	movzbl	(%r8,%rdx), %eax
	mulss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, (%r10,%rdx)
	addq	$1, %rdx
.L6437:
	cmpl	%edx, %ecx
	jg	.L6481
	movq	%rdi, %rcx
	call	_Z13texture_imageP5Image
	jmp	.L6430
.L6455:
.L6471:
	movq	192(%rsp), %rcx
	addq	$16, %rbx
	movq	%rax, %rsi
	cmpq	%rbx, %rcx
	je	.L6453
	call	_ZdlPv
.L6453:
	movq	%rsi, %rcx
	call	_Unwind_Resume
.LEHE42:
.L6456:
	jmp	.L6471
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7483:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7483-.LLSDACSB7483
.LLSDACSB7483:
	.uleb128 .LEHB38-.LFB7483
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB7483
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L6456-.LFB7483
	.uleb128 0
	.uleb128 .LEHB40-.LFB7483
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB7483
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L6455-.LFB7483
	.uleb128 0
	.uleb128 .LEHB42-.LFB7483
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
.LLSDACSE7483:
	.section	.text.startup,"x"
	.seh_endproc
.lcomm _ZGVZ12image_selectB5cxx11iE8selected,8,8
.lcomm _ZZ12image_selectB5cxx11iE8selected,24,16
.lcomm _ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter,8,8
.lcomm _ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE6filter,280,32
.lcomm _ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir,8,8
.lcomm _ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_PKcE11current_dir,32,32
.lcomm _ZL16g_ElementsHandle,4,4
.lcomm _ZL11g_VaoHandle,4,4
.lcomm _ZL11g_VboHandle,4,4
.lcomm _ZL21g_AttribLocationColor,4,4
.lcomm _ZL18g_AttribLocationUV,4,4
.lcomm _ZL24g_AttribLocationPosition,4,4
.lcomm _ZL23g_AttribLocationProjMtx,4,4
.lcomm _ZL19g_AttribLocationTex,4,4
.lcomm _ZL12g_FragHandle,4,4
.lcomm _ZL12g_VertHandle,4,4
.lcomm _ZL14g_ShaderHandle,4,4
.lcomm _ZL13g_FontTexture,4,4
.lcomm _ZL12g_MouseWheel,4,4
.lcomm _ZL14g_MousePressed,3,1
.lcomm _ZL6g_Time,8,8
.lcomm _ZL8g_Window,8,8
	.data
	.align 16
_ZZ21stbi_write_png_to_memPhiiiiPiE8firstmap:
	.long	0
	.long	1
	.long	0
	.long	5
	.long	6
	.align 16
_ZZ21stbi_write_png_to_memPhiiiiPiE7mapping:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.section .rdata,"dr"
	.align 32
_ZZL12stbiw__crc32PhiE9crc_table:
	.long	0
	.long	1996959894
	.long	-301047508
	.long	-1727442502
	.long	124634137
	.long	1886057615
	.long	-379345611
	.long	-1637575261
	.long	249268274
	.long	2044508324
	.long	-522852066
	.long	-1747789432
	.long	162941995
	.long	2125561021
	.long	-407360249
	.long	-1866523247
	.long	498536548
	.long	1789927666
	.long	-205950648
	.long	-2067906082
	.long	450548861
	.long	1843258603
	.long	-187386543
	.long	-2083289657
	.long	325883990
	.long	1684777152
	.long	-43845254
	.long	-1973040660
	.long	335633487
	.long	1661365465
	.long	-99664541
	.long	-1928851979
	.long	997073096
	.long	1281953886
	.long	-715111964
	.long	-1570279054
	.long	1006888145
	.long	1258607687
	.long	-770865667
	.long	-1526024853
	.long	901097722
	.long	1119000684
	.long	-608450090
	.long	-1396901568
	.long	853044451
	.long	1172266101
	.long	-589951537
	.long	-1412350631
	.long	651767980
	.long	1373503546
	.long	-925412992
	.long	-1076862698
	.long	565507253
	.long	1454621731
	.long	-809855591
	.long	-1195530993
	.long	671266974
	.long	1594198024
	.long	-972236366
	.long	-1324619484
	.long	795835527
	.long	1483230225
	.long	-1050600021
	.long	-1234817731
	.long	1994146192
	.long	31158534
	.long	-1731059524
	.long	-271249366
	.long	1907459465
	.long	112637215
	.long	-1614814043
	.long	-390540237
	.long	2013776290
	.long	251722036
	.long	-1777751922
	.long	-519137256
	.long	2137656763
	.long	141376813
	.long	-1855689577
	.long	-429695999
	.long	1802195444
	.long	476864866
	.long	-2056965928
	.long	-228458418
	.long	1812370925
	.long	453092731
	.long	-2113342271
	.long	-183516073
	.long	1706088902
	.long	314042704
	.long	-1950435094
	.long	-54949764
	.long	1658658271
	.long	366619977
	.long	-1932296973
	.long	-69972891
	.long	1303535960
	.long	984961486
	.long	-1547960204
	.long	-725929758
	.long	1256170817
	.long	1037604311
	.long	-1529756563
	.long	-740887301
	.long	1131014506
	.long	879679996
	.long	-1385723834
	.long	-631195440
	.long	1141124467
	.long	855842277
	.long	-1442165665
	.long	-586318647
	.long	1342533948
	.long	654459306
	.long	-1106571248
	.long	-921952122
	.long	1466479909
	.long	544179635
	.long	-1184443383
	.long	-832445281
	.long	1591671054
	.long	702138776
	.long	-1328506846
	.long	-942167884
	.long	1504918807
	.long	783551873
	.long	-1212326853
	.long	-1061524307
	.long	-306674912
	.long	-1698712650
	.long	62317068
	.long	1957810842
	.long	-355121351
	.long	-1647151185
	.long	81470997
	.long	1943803523
	.long	-480048366
	.long	-1805370492
	.long	225274430
	.long	2053790376
	.long	-468791541
	.long	-1828061283
	.long	167816743
	.long	2097651377
	.long	-267414716
	.long	-2029476910
	.long	503444072
	.long	1762050814
	.long	-144550051
	.long	-2140837941
	.long	426522225
	.long	1852507879
	.long	-19653770
	.long	-1982649376
	.long	282753626
	.long	1742555852
	.long	-105259153
	.long	-1900089351
	.long	397917763
	.long	1622183637
	.long	-690576408
	.long	-1580100738
	.long	953729732
	.long	1340076626
	.long	-776247311
	.long	-1497606297
	.long	1068828381
	.long	1219638859
	.long	-670225446
	.long	-1358292148
	.long	906185462
	.long	1090812512
	.long	-547295293
	.long	-1469587627
	.long	829329135
	.long	1181335161
	.long	-882789492
	.long	-1134132454
	.long	628085408
	.long	1382605366
	.long	-871598187
	.long	-1156888829
	.long	570562233
	.long	1426400815
	.long	-977650754
	.long	-1296233688
	.long	733239954
	.long	1555261956
	.long	-1026031705
	.long	-1244606671
	.long	752459403
	.long	1541320221
	.long	-1687895376
	.long	-328994266
	.long	1969922972
	.long	40735498
	.long	-1677130071
	.long	-351390145
	.long	1913087877
	.long	83908371
	.long	-1782625662
	.long	-491226604
	.long	2075208622
	.long	213261112
	.long	-1831694693
	.long	-438977011
	.long	2094854071
	.long	198958881
	.long	-2032938284
	.long	-237706686
	.long	1759359992
	.long	534414190
	.long	-2118248755
	.long	-155638181
	.long	1873836001
	.long	414664567
	.long	-2012718362
	.long	-15766928
	.long	1711684554
	.long	285281116
	.long	-1889165569
	.long	-127750551
	.long	1634467795
	.long	376229701
	.long	-1609899400
	.long	-686959890
	.long	1308918612
	.long	956543938
	.long	-1486412191
	.long	-799009033
	.long	1231636301
	.long	1047427035
	.long	-1362007478
	.long	-640263460
	.long	1088359270
	.long	936918000
	.long	-1447252397
	.long	-558129467
	.long	1202900863
	.long	817233897
	.long	-1111625188
	.long	-893730166
	.long	1404277552
	.long	615818150
	.long	-1160759803
	.long	-841546093
	.long	1423857449
	.long	601450431
	.long	-1285129682
	.long	-1000256840
	.long	1567103746
	.long	711928724
	.long	-1274298825
	.long	-1022587231
	.long	1510334235
	.long	755167117
	.align 16
_ZZ18stbi_zlib_compressPhiPiiE6disteb:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.align 32
_ZZ18stbi_zlib_compressPhiPiiE5distc:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	7
	.word	9
	.word	13
	.word	17
	.word	25
	.word	33
	.word	49
	.word	65
	.word	97
	.word	129
	.word	193
	.word	257
	.word	385
	.word	513
	.word	769
	.word	1025
	.word	1537
	.word	2049
	.word	3073
	.word	4097
	.word	6145
	.word	8193
	.word	12289
	.word	16385
	.word	24577
	.word	-32768
	.align 16
_ZZ18stbi_zlib_compressPhiPiiE8lengtheb:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	0
	.align 32
_ZZ18stbi_zlib_compressPhiPiiE7lengthc:
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	13
	.word	15
	.word	17
	.word	19
	.word	23
	.word	27
	.word	31
	.word	35
	.word	43
	.word	51
	.word	59
	.word	67
	.word	83
	.word	99
	.word	115
	.word	131
	.word	163
	.word	195
	.word	227
	.word	258
	.word	259
	.globl	stbi_write_tga_with_rle
	.data
	.align 4
stbi_write_tga_with_rle:
	.long	1
	.align 16
_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk:
	.ascii "XXXX PNG chunk not known\0"
.lcomm _ZL20stbi__de_iphone_flag,4,4
.lcomm _ZL27stbi__unpremultiply_on_load,4,4
	.section .rdata,"dr"
	.align 8
_ZL23stbi__depth_scale_table:
	.byte	0
	.byte	-1
	.byte	85
	.byte	0
	.byte	17
	.byte	0
	.byte	0
	.byte	0
	.byte	1
_ZL16first_row_filter:
	.byte	0
	.byte	1
	.byte	0
	.byte	5
	.byte	6
	.align 8
_ZZL22stbi__check_png_headerP13stbi__contextE7png_sig:
	.byte	-119
	.byte	80
	.byte	78
	.byte	71
	.byte	13
	.byte	10
	.byte	26
	.byte	10
	.align 32
_ZL23stbi__zdefault_distance:
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.align 32
_ZL21stbi__zdefault_length:
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.align 16
_ZZL27stbi__compute_huffman_codesP10stbi__zbufE15length_dezigzag:
	.byte	16
	.byte	17
	.byte	18
	.byte	0
	.byte	8
	.byte	7
	.byte	9
	.byte	6
	.byte	10
	.byte	5
	.byte	11
	.byte	4
	.byte	12
	.byte	3
	.byte	13
	.byte	2
	.byte	14
	.byte	1
	.byte	15
	.align 32
_ZL17stbi__zdist_extra:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	3
	.long	3
	.long	4
	.long	4
	.long	5
	.long	5
	.long	6
	.long	6
	.long	7
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	10
	.long	10
	.long	11
	.long	11
	.long	12
	.long	12
	.long	13
	.long	13
	.space 8
	.align 32
_ZL16stbi__zdist_base:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	7
	.long	9
	.long	13
	.long	17
	.long	25
	.long	33
	.long	49
	.long	65
	.long	97
	.long	129
	.long	193
	.long	257
	.long	385
	.long	513
	.long	769
	.long	1025
	.long	1537
	.long	2049
	.long	3073
	.long	4097
	.long	6145
	.long	8193
	.long	12289
	.long	16385
	.long	24577
	.long	0
	.long	0
	.align 32
_ZL19stbi__zlength_extra:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.align 32
_ZL18stbi__zlength_base:
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	15
	.long	17
	.long	19
	.long	23
	.long	27
	.long	31
	.long	35
	.long	43
	.long	51
	.long	59
	.long	67
	.long	83
	.long	99
	.long	115
	.long	131
	.long	163
	.long	195
	.long	227
	.long	258
	.long	0
	.long	0
_ZZL26stbi__process_frame_headerP10stbi__jpegiE3rgb:
	.byte	82
	.byte	71
	.byte	66
_ZZL20stbi__process_markerP10stbi__jpegiE3tag_0:
	.byte	65
	.byte	100
	.byte	111
	.byte	98
	.byte	101
	.byte	0
_ZZL20stbi__process_markerP10stbi__jpegiE3tag:
	.byte	74
	.byte	70
	.byte	73
	.byte	70
	.byte	0
	.align 32
_ZL19stbi__jpeg_dezigzag:
	.byte	0
	.byte	1
	.byte	8
	.byte	16
	.byte	9
	.byte	2
	.byte	3
	.byte	10
	.byte	17
	.byte	24
	.byte	32
	.byte	25
	.byte	18
	.byte	11
	.byte	4
	.byte	5
	.byte	12
	.byte	19
	.byte	26
	.byte	33
	.byte	40
	.byte	48
	.byte	41
	.byte	34
	.byte	27
	.byte	20
	.byte	13
	.byte	6
	.byte	7
	.byte	14
	.byte	21
	.byte	28
	.byte	35
	.byte	42
	.byte	49
	.byte	56
	.byte	57
	.byte	50
	.byte	43
	.byte	36
	.byte	29
	.byte	22
	.byte	15
	.byte	23
	.byte	30
	.byte	37
	.byte	44
	.byte	51
	.byte	58
	.byte	59
	.byte	52
	.byte	45
	.byte	38
	.byte	31
	.byte	39
	.byte	46
	.byte	53
	.byte	60
	.byte	61
	.byte	54
	.byte	47
	.byte	55
	.byte	62
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.align 32
_ZL11stbi__jbias:
	.long	0
	.long	-1
	.long	-3
	.long	-7
	.long	-15
	.long	-31
	.long	-63
	.long	-127
	.long	-255
	.long	-511
	.long	-1023
	.long	-2047
	.long	-4095
	.long	-8191
	.long	-16383
	.long	-32767
	.align 32
_ZL11stbi__bmask:
	.long	0
	.long	1
	.long	3
	.long	7
	.long	15
	.long	31
	.long	63
	.long	127
	.long	255
	.long	511
	.long	1023
	.long	2047
	.long	4095
	.long	8191
	.long	16383
	.long	32767
	.long	65535
	.data
	.align 4
_ZL17stbi__h2l_scale_i:
	.long	1065353216
	.align 4
_ZL17stbi__h2l_gamma_i:
	.long	1055439406
	.align 4
_ZL15stbi__l2h_scale:
	.long	1065353216
	.align 4
_ZL15stbi__l2h_gamma:
	.long	1074580685
.lcomm _ZL29stbi__vertically_flip_on_load,4,4
.lcomm _ZL22stbi__g_failure_reason,8,8
	.align 16
_ZL21stbi__stdio_callbacks:
	.quad	_ZL16stbi__stdio_readPvPci
	.quad	_ZL16stbi__stdio_skipPvi
	.quad	_ZL15stbi__stdio_eofPv
	.section .rdata,"dr"
	.align 16
.LC0:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.align 16
.LC1:
	.long	2
	.long	2
	.long	2
	.long	2
	.align 16
.LC2:
	.word	255
	.word	255
	.word	255
	.word	255
	.word	255
	.word	255
	.word	255
	.word	255
	.align 16
.LC6:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 16
.LC7:
	.quad	-9187201950435737472
	.quad	-9187201950435737472
	.align 16
.LC8:
	.word	5743
	.word	5743
	.word	5743
	.word	5743
	.word	5743
	.word	5743
	.word	5743
	.word	5743
	.align 16
.LC9:
	.word	-1410
	.word	-1410
	.word	-1410
	.word	-1410
	.word	-1410
	.word	-1410
	.word	-1410
	.word	-1410
	.align 16
.LC10:
	.word	7258
	.word	7258
	.word	7258
	.word	7258
	.word	7258
	.word	7258
	.word	7258
	.word	7258
	.align 16
.LC11:
	.word	-2925
	.word	-2925
	.word	-2925
	.word	-2925
	.word	-2925
	.word	-2925
	.word	-2925
	.word	-2925
	.align 16
.LC12:
	.word	2217
	.word	-5350
	.word	2217
	.word	-5350
	.word	2217
	.word	-5350
	.word	2217
	.word	-5350
	.align 16
.LC13:
	.word	5352
	.word	2217
	.word	5352
	.word	2217
	.word	5352
	.word	2217
	.word	5352
	.word	2217
	.align 16
.LC14:
	.word	-6811
	.word	-8034
	.word	-6811
	.word	-8034
	.word	-6811
	.word	-8034
	.word	-6811
	.word	-8034
	.align 16
.LC15:
	.word	-8034
	.word	4552
	.word	-8034
	.word	4552
	.word	-8034
	.word	4552
	.word	-8034
	.word	4552
	.align 16
.LC16:
	.word	6813
	.word	-1597
	.word	6813
	.word	-1597
	.word	6813
	.word	-1597
	.word	6813
	.word	-1597
	.align 16
.LC17:
	.word	-1597
	.word	4552
	.word	-1597
	.word	4552
	.word	-1597
	.word	4552
	.word	-1597
	.word	4552
	.align 16
.LC18:
	.word	1131
	.word	4816
	.word	1131
	.word	4816
	.word	1131
	.word	4816
	.word	1131
	.word	4816
	.align 16
.LC19:
	.word	4816
	.word	-5681
	.word	4816
	.word	-5681
	.word	4816
	.word	-5681
	.word	4816
	.word	-5681
	.align 16
.LC20:
	.long	512
	.long	512
	.long	512
	.long	512
	.align 16
.LC21:
	.long	16842752
	.long	16842752
	.long	16842752
	.long	16842752
	.align 4
.LC22:
	.long	1065353216
	.align 4
.LC23:
	.long	1077936128
	.align 4
.LC26:
	.long	-1082130432
	.align 4
.LC27:
	.long	1073741824
	.align 16
.LC28:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 16
.LC29:
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.align 16
.LC41:
	.word	77
	.word	77
	.word	77
	.word	77
	.word	77
	.word	77
	.word	77
	.word	77
	.align 16
.LC42:
	.word	150
	.word	150
	.word	150
	.word	150
	.word	150
	.word	150
	.word	150
	.word	150
	.align 16
.LC43:
	.word	29
	.word	29
	.word	29
	.word	29
	.word	29
	.word	29
	.word	29
	.word	29
	.align 16
.LC49:
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.align 16
.LC50:
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.align 16
.LC51:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.align 16
.LC121:
	.long	0
	.long	4
	.long	0
	.long	2
	.align 16
.LC122:
	.long	0
	.long	0
	.long	4
	.long	0
	.align 16
.LC123:
	.long	8
	.long	8
	.long	4
	.long	4
	.align 16
.LC124:
	.long	8
	.long	8
	.long	8
	.long	4
	.align 16
.LC126:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.align 16
.LC134:
	.long	16711680
	.long	65280
	.long	255
	.long	-16777216
	.align 4
.LC153:
	.long	1199570688
	.align 4
.LC154:
	.long	1132396544
	.align 4
.LC156:
	.long	1056964608
	.align 4
.LC166:
	.long	172994847
	.align 4
.LC167:
	.long	1132462080
	.align 16
.LC172:
	.long	-1
	.long	0
	.long	4
	.long	2
	.align 16
.LC185:
	.long	258
	.long	263
	.long	262
	.long	265
	.align 16
.LC186:
	.long	264
	.long	266
	.long	267
	.long	268
	.align 16
.LC187:
	.long	269
	.long	261
	.long	259
	.long	257
	.align 16
.LC188:
	.long	256
	.long	65
	.long	67
	.long	86
	.align 4
.LC189:
	.long	1015580809
	.align 8
.LC190:
	.long	0
	.long	0
	.align 16
.LC200:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.align 16
.LC202:
	.long	0
	.long	1132396544
	.long	0
	.long	1132396544
	.align 4
.LC204:
	.long	1120403456
	.align 4
.LC209:
	.long	1058708123
	.align 4
.LC210:
	.long	1058050193
	.align 4
.LC211:
	.long	1055188198
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 7.1.0"
	.def	fseek;	.scl	2;	.type	32;	.endef
	.def	feof;	.scl	2;	.type	32;	.endef
	.def	fread;	.scl	2;	.type	32;	.endef
	.def	_assert;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	ldexpf;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	fprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5GetIOEv;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawData14ScaleClipRectsERK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	glGetIntegerv;	.scl	2;	.type	32;	.endef
	.def	glIsEnabled;	.scl	2;	.type	32;	.endef
	.def	glEnable;	.scl	2;	.type	32;	.endef
	.def	glBlendFunc;	.scl	2;	.type	32;	.endef
	.def	glDisable;	.scl	2;	.type	32;	.endef
	.def	glViewport;	.scl	2;	.type	32;	.endef
	.def	glBindTexture;	.scl	2;	.type	32;	.endef
	.def	glScissor;	.scl	2;	.type	32;	.endef
	.def	glDrawElements;	.scl	2;	.type	32;	.endef
	.def	_ZN7ImGuiIO17AddInputCharacterEt;	.scl	2;	.type	32;	.endef
	.def	glfwGetClipboardString;	.scl	2;	.type	32;	.endef
	.def	glfwSetClipboardString;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7MemFreeEPv;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.def	strtol;	.scl	2;	.type	32;	.endef
	.def	powf;	.scl	2;	.type	32;	.endef
	.def	calloc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	ftell;	.scl	2;	.type	32;	.endef
	.def	frexpf;	.scl	2;	.type	32;	.endef
	.def	sprintf;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	stat;	.scl	2;	.type	32;	.endef
	.def	opendir;	.scl	2;	.type	32;	.endef
	.def	readdir;	.scl	2;	.type	32;	.endef
	.def	strcpy;	.scl	2;	.type	32;	.endef
	.def	closedir;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN11ImFontAtlas18GetTexDataAsRGBA32EPPhPiS2_S2_;	.scl	2;	.type	32;	.endef
	.def	glGenTextures;	.scl	2;	.type	32;	.endef
	.def	glTexParameteri;	.scl	2;	.type	32;	.endef
	.def	glTexImage2D;	.scl	2;	.type	32;	.endef
	.def	glDeleteTextures;	.scl	2;	.type	32;	.endef
	.def	glfwGetWin32Window;	.scl	2;	.type	32;	.endef
	.def	glfwSetMouseButtonCallback;	.scl	2;	.type	32;	.endef
	.def	glfwSetScrollCallback;	.scl	2;	.type	32;	.endef
	.def	glfwSetKeyCallback;	.scl	2;	.type	32;	.endef
	.def	glfwSetCharCallback;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8ShutdownEv;	.scl	2;	.type	32;	.endef
	.def	glfwGetWindowSize;	.scl	2;	.type	32;	.endef
	.def	glfwGetFramebufferSize;	.scl	2;	.type	32;	.endef
	.def	glfwGetTime;	.scl	2;	.type	32;	.endef
	.def	glfwGetWindowAttrib;	.scl	2;	.type	32;	.endef
	.def	glfwSetInputMode;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8NewFrameEv;	.scl	2;	.type	32;	.endef
	.def	glfwGetCursorPos;	.scl	2;	.type	32;	.endef
	.def	glfwGetMouseButton;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_acquire;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10BeginPopupEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui4TextEPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZN15ImGuiTextFilter4DrawEPKcf;	.scl	2;	.type	32;	.endef
	.def	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10SelectableEPKcbiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_;	.scl	2;	.type	32;	.endef
	.def	_ZN15ImGuiTextFilter5BuildEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8EndPopupEv;	.scl	2;	.type	32;	.endef
	.def	_ZN15ImGuiTextFilterC1EPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_release;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9OpenPopupEPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_abort;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8SameLineEff;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	glfwSetErrorCallback;	.scl	2;	.type	32;	.endef
	.def	glfwInit;	.scl	2;	.type	32;	.endef
	.def	glfwWindowHint;	.scl	2;	.type	32;	.endef
	.def	glfwCreateWindow;	.scl	2;	.type	32;	.endef
	.def	glfwMakeContextCurrent;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui6ButtonEPKcRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8EndGroupEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10BeginGroupEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11SliderFloatEPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui3EndEv;	.scl	2;	.type	32;	.endef
	.def	glClearColor;	.scl	2;	.type	32;	.endef
	.def	glClear;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui6RenderEv;	.scl	2;	.type	32;	.endef
	.def	glfwSwapBuffers;	.scl	2;	.type	32;	.endef
	.def	glfwWindowShouldClose;	.scl	2;	.type	32;	.endef
	.def	glfwPollEvents;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5BeginEPKcPbi;	.scl	2;	.type	32;	.endef
	.def	glfwTerminate;	.scl	2;	.type	32;	.endef
