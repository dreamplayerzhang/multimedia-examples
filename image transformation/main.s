	.file	"main.cpp"
	.text
	.p2align 4,,15
	.def	_ZL21stbi__mad3sizes_validiiii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21stbi__mad3sizes_validiiii
_ZL21stbi__mad3sizes_validiiii:
.LFB573:
	.seh_endprologue
	movl	%edx, %eax
	movl	%edx, %r10d
	shrl	$31, %eax
	jne	.L6
	movl	%ecx, %eax
	shrl	$31, %eax
	jne	.L6
	testl	%edx, %edx
	jne	.L17
.L3:
	imull	%ecx, %r10d
	xorl	%r11d, %r11d
	testl	%r8d, %r8d
	jns	.L18
.L2:
	movl	%r11d, %eax
	ret
	.p2align 4,,7
.L17:
	movl	$2147483647, %eax
	cltd
	idivl	%r10d
	cmpl	%eax, %ecx
	jle	.L3
.L6:
	xorl	%r11d, %r11d
	movl	%r11d, %eax
	ret
	.p2align 4,,7
.L18:
	jne	.L19
.L4:
	xorl	%r11d, %r11d
	testl	%r9d, %r9d
	js	.L2
	imull	%r8d, %r10d
	movl	$2147483647, %eax
	xorl	%r11d, %r11d
	subl	%r9d, %eax
	cmpl	%eax, %r10d
	setle	%r11b
	movl	%r11d, %eax
	ret
	.p2align 4,,7
.L19:
	movl	$2147483647, %eax
	cltd
	idivl	%r8d
	cmpl	%eax, %r10d
	jle	.L4
	jmp	.L2
	.seh_endproc
	.p2align 4,,15
	.def	_ZL10stbi__skipP13stbi__contexti;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10stbi__skipP13stbi__contexti
_ZL10stbi__skipP13stbi__contexti:
.LFB609:
	.seh_endprologue
	testl	%edx, %edx
	js	.L25
	cmpq	$0, 16(%rcx)
	je	.L23
	movq	192(%rcx), %r9
	movq	184(%rcx), %rax
	movq	%r9, %r8
	subq	%rax, %r8
	cmpl	%r8d, %edx
	jg	.L26
	movslq	%edx, %rdx
	addq	%rax, %rdx
	movq	%rdx, 184(%rcx)
	ret
	.p2align 4,,7
.L25:
	movq	192(%rcx), %rax
	movq	%rax, 184(%rcx)
	ret
	.p2align 4,,7
.L26:
	subl	%r8d, %edx
	movq	40(%rcx), %r8
	movq	24(%rcx), %rax
	movq	%r9, 184(%rcx)
	movq	%r8, %rcx
	rex.W jmp *%rax
	.p2align 4,,7
.L23:
	movq	184(%rcx), %rax
	movslq	%edx, %rdx
	addq	%rax, %rdx
	movq	%rdx, 184(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16stbi__idct_blockPhiPs;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__idct_blockPhiPs
_ZL16stbi__idct_blockPhiPs:
.LFB632:
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
	subq	$312, %rsp
	.seh_stackalloc	312
	.seh_endprologue
	leaq	16(%r8), %rax
	leaq	48(%rsp), %rsi
	movl	%edx, 392(%rsp)
	movq	%r8, %r14
	movq	%rcx, 384(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rsi, 40(%rsp)
	jmp	.L36
	.p2align 4,,7
.L74:
	testw	%cx, %cx
	jne	.L28
	movswl	48(%r14), %edx
	testw	%dx, %dx
	je	.L31
	movswl	96(%r14), %r9d
	movzwl	64(%r14), %ebx
	movswl	112(%r14), %r11d
	movswl	80(%r14), %r10d
	.p2align 4,,7
.L30:
	leal	(%rcx,%r9), %r8d
	imull	$-7567, %r9d, %r9d
	imull	$2217, %r8d, %edi
	leal	(%r9,%rdi), %r15d
	movswl	(%r14), %r9d
	imull	$3135, %ecx, %r8d
	movswl	%bx, %ecx
	movl	%r15d, 12(%rsp)
	leal	(%r9,%rcx), %ebp
	subl	%ecx, %r9d
	addl	%edi, %r8d
	movl	%r9d, %ebx
	leal	(%r10,%rax), %r9d
	sall	$12, %ebx
	sall	$12, %ebp
	movl	%ebx, %ecx
	movl	%ebp, %edi
	subl	%r15d, %ecx
	subl	%r8d, %edi
	movl	%ecx, 16(%rsp)
	leal	(%r11,%rdx), %ecx
	movl	%edi, 24(%rsp)
	imull	$8410, %r10d, %edi
	leal	(%rcx,%r9), %r12d
	imull	$6149, %eax, %r15d
	addl	%r11d, %eax
	movl	%edi, 28(%rsp)
	imull	$4816, %r12d, %r12d
	imull	$12586, %edx, %edi
	addl	%r10d, %edx
	imull	$-3685, %eax, %eax
	imull	$-1597, %r9d, %r9d
	addl	%r12d, %eax
	imull	$-10497, %edx, %edx
	imull	$-8034, %ecx, %ecx
	addl	%edx, %r12d
	leal	(%rax,%r9), %edx
	imull	$1223, %r11d, %r13d
	addl	%edx, %r15d
	leal	(%r12,%rcx), %edx
	addl	%eax, %ecx
	movl	12(%rsp), %eax
	addl	%ecx, %r13d
	leal	512(%r8,%rbp), %ecx
	addl	%r9d, %r12d
	addl	%edx, %edi
	addl	28(%rsp), %r12d
	leal	512(%rax,%rbx), %r8d
	leal	(%r15,%rcx), %r9d
	movl	16(%rsp), %ebx
	subl	%r15d, %ecx
	movl	24(%rsp), %eax
	sarl	$10, %ecx
	sarl	$10, %r9d
	movl	%ecx, 224(%rsi)
	leal	(%rdi,%r8), %ecx
	leal	512(%rbx), %edx
	addl	$512, %eax
	movl	%r9d, (%rsi)
	sarl	$10, %ecx
	subl	%edi, %r8d
	movl	%ecx, 32(%rsi)
	leal	(%r12,%rdx), %ecx
	subl	%r12d, %edx
	sarl	$10, %edx
	sarl	$10, %r8d
	movl	%edx, 160(%rsi)
	leal	0(%r13,%rax), %edx
	subl	%r13d, %eax
	sarl	$10, %ecx
	sarl	$10, %eax
	movl	%r8d, 192(%rsi)
	sarl	$10, %edx
	movl	%ecx, 64(%rsi)
	movl	%eax, 128(%rsi)
	movl	%edx, 96(%rsi)
.L35:
	addq	$2, %r14
	addq	$4, %rsi
	cmpq	32(%rsp), %r14
	je	.L73
.L36:
	movswl	16(%r14), %eax
	movswl	32(%r14), %ecx
	testw	%ax, %ax
	je	.L74
.L28:
	movswl	96(%r14), %r9d
	movzwl	64(%r14), %ebx
	movswl	112(%r14), %r11d
	movswl	80(%r14), %r10d
	movswl	48(%r14), %edx
	jmp	.L30
	.p2align 4,,7
.L73:
	movslq	392(%rsp), %rax
	movq	384(%rsp), %r13
	movq	40(%rsp), %rsi
	movq	%rax, 16(%rsp)
	.p2align 4,,7
.L53:
	movl	8(%rsi), %r11d
	movl	24(%rsi), %r10d
	movl	(%rsi), %r9d
	movl	12(%rsi), %r8d
	movl	28(%rsi), %edx
	movl	4(%rsi), %ecx
	leal	(%r11,%r10), %eax
	movl	20(%rsi), %r14d
	imull	$-7567, %r10d, %r10d
	imull	$2217, %eax, %eax
	addl	%r8d, %edx
	imull	$3135, %r11d, %r11d
	addl	%eax, %r10d
	imull	$6149, %ecx, %r15d
	addl	%eax, %r11d
	movl	16(%rsi), %eax
	imull	$8410, %r14d, %r14d
	leal	(%r9,%rax), %edi
	subl	%eax, %r9d
	sall	$12, %r9d
	sall	$12, %edi
	movl	%r9d, %ebx
	movl	%edi, %eax
	subl	%r10d, %ebx
	subl	%r11d, %eax
	movl	%ebx, 24(%rsp)
	movl	28(%rsi), %ebx
	movl	%eax, 12(%rsp)
	movl	%edx, %eax
	movl	20(%rsi), %edx
	leal	16842752(%r11,%rdi), %r11d
	movl	24(%rsp), %edi
	imull	$1223, %ebx, %r12d
	addl	%ecx, %edx
	addl	28(%rsi), %ecx
	leal	(%rax,%rdx), %ebp
	imull	$12586, %r8d, %ebx
	addl	20(%rsi), %r8d
	imull	$4816, %ebp, %ebp
	imull	$-3685, %ecx, %ecx
	imull	$-1597, %edx, %edx
	addl	%ebp, %ecx
	imull	$-10497, %r8d, %r8d
	imull	$-8034, %eax, %eax
	addl	%r8d, %ebp
	leal	(%rcx,%rdx), %r8d
	addl	%r8d, %r15d
	leal	0(%rbp,%rax), %r8d
	addl	%ecx, %eax
	leal	(%rax,%r12), %ecx
	movl	12(%rsp), %eax
	addl	%edx, %ebp
	addl	%r8d, %ebx
	leal	16842752(%r10,%r9), %r8d
	leal	(%r15,%r11), %r9d
	addl	%r14d, %ebp
	leal	16842752(%rdi), %edx
	sarl	$17, %r9d
	addl	$16842752, %eax
	cmpl	$255, %r9d
	jbe	.L37
	xorl	%r10d, %r10d
	testl	%r9d, %r9d
	js	.L38
	cmpl	$255, %r9d
	movl	$-1, %r10d
	jg	.L38
.L37:
	movl	%r9d, %r10d
.L38:
	subl	%r15d, %r11d
	movb	%r10b, 0(%r13)
	movl	%r11d, %r9d
	sarl	$17, %r9d
	cmpl	$255, %r9d
	jbe	.L39
	xorl	%r10d, %r10d
	testl	%r9d, %r9d
	js	.L40
	cmpl	$255, %r9d
	movl	$-1, %r10d
	jg	.L40
.L39:
	movl	%r9d, %r10d
.L40:
	leal	(%rbx,%r8), %r9d
	movb	%r10b, 7(%r13)
	sarl	$17, %r9d
	cmpl	$255, %r9d
	jbe	.L41
	xorl	%r10d, %r10d
	testl	%r9d, %r9d
	js	.L42
	cmpl	$255, %r9d
	movl	$-1, %r10d
	jg	.L42
.L41:
	movl	%r9d, %r10d
.L42:
	subl	%ebx, %r8d
	movb	%r10b, 1(%r13)
	sarl	$17, %r8d
	cmpl	$255, %r8d
	jbe	.L43
	xorl	%r9d, %r9d
	testl	%r8d, %r8d
	js	.L44
	cmpl	$255, %r8d
	movl	$-1, %r9d
	jg	.L44
.L43:
	movl	%r8d, %r9d
.L44:
	leal	0(%rbp,%rdx), %r8d
	movb	%r9b, 6(%r13)
	sarl	$17, %r8d
	cmpl	$255, %r8d
	jbe	.L45
	xorl	%r9d, %r9d
	testl	%r8d, %r8d
	js	.L46
	cmpl	$255, %r8d
	movl	$-1, %r9d
	jg	.L46
.L45:
	movl	%r8d, %r9d
.L46:
	subl	%ebp, %edx
	movb	%r9b, 2(%r13)
	sarl	$17, %edx
	cmpl	$255, %edx
	jbe	.L47
	xorl	%r8d, %r8d
	testl	%edx, %edx
	js	.L48
	cmpl	$255, %edx
	movl	$-1, %r8d
	jg	.L48
.L47:
	movl	%edx, %r8d
.L48:
	leal	(%rcx,%rax), %edx
	movb	%r8b, 5(%r13)
	sarl	$17, %edx
	cmpl	$255, %edx
	jbe	.L49
	xorl	%r8d, %r8d
	testl	%edx, %edx
	js	.L50
	cmpl	$255, %edx
	movl	$-1, %r8d
	jg	.L50
.L49:
	movl	%edx, %r8d
.L50:
	subl	%ecx, %eax
	movb	%r8b, 3(%r13)
	sarl	$17, %eax
	cmpl	$255, %eax
	jbe	.L51
	xorl	%edx, %edx
	testl	%eax, %eax
	js	.L52
	cmpl	$255, %eax
	movl	$-1, %edx
	jle	.L51
	.p2align 4,,7
.L52:
	leaq	304(%rsp), %rax
	addq	$32, %rsi
	movb	%dl, 4(%r13)
	addq	16(%rsp), %r13
	cmpq	%rax, %rsi
	jne	.L53
	addq	$312, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L51:
	movl	%eax, %edx
	jmp	.L52
	.p2align 4,,7
.L31:
	movzwl	64(%r14), %ebx
	testw	%bx, %bx
	je	.L32
	movswl	96(%r14), %r9d
	movswl	112(%r14), %r11d
	movswl	%dx, %ecx
	movswl	80(%r14), %r10d
	jmp	.L30
	.p2align 4,,7
.L32:
	movswl	80(%r14), %r10d
	movswl	96(%r14), %r9d
	movswl	112(%r14), %r11d
	testw	%r10w, %r10w
	jne	.L75
	testw	%r9w, %r9w
	jne	.L76
	testw	%r11w, %r11w
	jne	.L54
	movswl	(%r14), %eax
	sall	$2, %eax
	movl	%eax, 224(%rsi)
	movl	%eax, 192(%rsi)
	movl	%eax, 160(%rsi)
	movl	%eax, 128(%rsi)
	movl	%eax, 96(%rsi)
	movl	%eax, 64(%rsi)
	movl	%eax, 32(%rsi)
	movl	%eax, (%rsi)
	jmp	.L35
	.p2align 4,,7
.L75:
	movswl	%bx, %edx
	movswl	%bx, %ecx
	jmp	.L30
	.p2align 4,,7
.L76:
	movswl	%r10w, %edx
	movl	%r10d, %ebx
	movswl	%r10w, %ecx
	jmp	.L30
.L54:
	movswl	%r9w, %edx
	movswl	%r9w, %r10d
	movl	%r9d, %ebx
	movswl	%r9w, %ecx
	jmp	.L30
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14resample_row_1PhS_S_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14resample_row_1PhS_S_ii
_ZL14resample_row_1PhS_S_ii:
.LFB645:
	.seh_endprologue
	movq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22stbi__resample_row_v_2PhS_S_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbi__resample_row_v_2PhS_S_ii
_ZL22stbi__resample_row_v_2PhS_S_ii:
.LFB646:
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
	subq	$104, %rsp
	.seh_stackalloc	104
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
	jle	.L111
	leaq	16(%rcx), %r10
	leaq	16(%rdx), %rcx
	cmpq	%rcx, %rax
	setnb	%r11b
	cmpq	%r10, %rdx
	setnb	%cl
	orl	%r11d, %ecx
	cmpl	$17, %r9d
	seta	%r11b
	testb	%r11b, %cl
	je	.L80
	leaq	16(%r8), %rcx
	cmpq	%rcx, %rax
	setnb	%r11b
	cmpq	%r10, %r8
	setnb	%cl
	orb	%cl, %r11b
	je	.L80
	movq	%rdx, %rcx
	negq	%rcx
	andl	$15, %ecx
	cmpl	%r9d, %ecx
	cmova	%r9d, %ecx
	xorl	%esi, %esi
	testl	%ecx, %ecx
	je	.L81
	movzbl	(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$1, %ecx
	movb	%r10b, (%rax)
	je	.L94
	movzbl	1(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	1(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$2, %ecx
	movb	%r10b, 1(%rax)
	je	.L95
	movzbl	2(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	2(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$3, %ecx
	movb	%r10b, 2(%rax)
	je	.L96
	movzbl	3(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	3(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$4, %ecx
	movb	%r10b, 3(%rax)
	je	.L97
	movzbl	4(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	4(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$5, %ecx
	movb	%r10b, 4(%rax)
	je	.L98
	movzbl	5(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	5(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$6, %ecx
	movb	%r10b, 5(%rax)
	je	.L99
	movzbl	6(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	6(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$7, %ecx
	movb	%r10b, 6(%rax)
	je	.L100
	movzbl	7(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	7(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$8, %ecx
	movb	%r10b, 7(%rax)
	je	.L101
	movzbl	8(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	8(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$9, %ecx
	movb	%r10b, 8(%rax)
	je	.L102
	movzbl	9(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	9(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$10, %ecx
	movb	%r10b, 9(%rax)
	je	.L103
	movzbl	10(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	10(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$11, %ecx
	movb	%r10b, 10(%rax)
	je	.L104
	movzbl	11(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	11(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$12, %ecx
	movb	%r10b, 11(%rax)
	je	.L105
	movzbl	12(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	12(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$13, %ecx
	movb	%r10b, 12(%rax)
	je	.L106
	movzbl	13(%rdx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	13(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	$14, %ecx
	movb	%r10b, 13(%rax)
	je	.L107
	movzbl	14(%rdx), %r10d
	movl	$15, %esi
	leal	(%r10,%r10,2), %r11d
	movzbl	14(%r8), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, 14(%rax)
.L81:
	movl	%r9d, %edi
	leal	-1(%r9), %r10d
	movl	%ecx, %r13d
	subl	%ecx, %edi
	leal	-16(%rdi), %ebx
	subl	%ecx, %r10d
	shrl	$4, %ebx
	leal	1(%rbx), %ebp
	movl	%ebp, %r12d
	sall	$4, %r12d
	cmpl	$14, %r10d
	jbe	.L83
	subl	$4, %ebx
	leaq	(%rdx,%r13), %r10
	leaq	(%r8,%r13), %r11
	cmpl	$-6, %ebx
	leaq	(%rax,%r13), %rcx
	ja	.L108
	pxor	%xmm5, %xmm5
	shrl	$2, %ebx
	pxor	%xmm4, %xmm4
	movdqa	.LC0(%rip), %xmm1
	leal	4(,%rbx,4), %r13d
	xorl	%ebx, %ebx
	movdqa	.LC1(%rip), %xmm2
	movdqa	.LC2(%rip), %xmm6
.L85:
	movdqa	%xmm1, %xmm3
	prefetcht0	96(%r10)
	prefetcht0	96(%r11)
	movdqa	(%r10), %xmm8
	addl	$4, %ebx
	prefetcht0	96(%rcx)
	addq	$64, %r10
	addq	$64, %r11
	addq	$64, %rcx
	movdqa	%xmm8, %xmm7
	movdqu	-64(%r11), %xmm9
	punpckhbw	%xmm5, %xmm8
	punpcklbw	%xmm5, %xmm7
	movdqa	%xmm9, %xmm10
	punpckhbw	%xmm5, %xmm9
	punpcklbw	%xmm5, %xmm10
	pmullw	%xmm7, %xmm3
	pmulhw	%xmm1, %xmm7
	movdqa	%xmm3, %xmm0
	punpckhwd	%xmm7, %xmm3
	punpcklwd	%xmm7, %xmm0
	movdqa	%xmm10, %xmm11
	movdqa	%xmm3, %xmm7
	movdqa	%xmm10, %xmm3
	punpcklwd	%xmm4, %xmm11
	movdqa	%xmm9, %xmm10
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm4, %xmm10
	paddd	%xmm11, %xmm0
	paddd	%xmm2, %xmm0
	psrad	$2, %xmm0
	paddd	%xmm7, %xmm3
	movdqa	%xmm0, %xmm7
	paddd	%xmm2, %xmm3
	psrad	$2, %xmm3
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm7
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm7, %xmm0
	punpckhwd	%xmm7, %xmm3
	movdqa	%xmm1, %xmm7
	pmullw	%xmm8, %xmm7
	pmulhw	%xmm1, %xmm8
	punpcklwd	%xmm3, %xmm0
	movdqa	%xmm7, %xmm3
	punpckhwd	%xmm8, %xmm7
	punpcklwd	%xmm8, %xmm3
	movdqa	%xmm7, %xmm8
	movdqa	%xmm9, %xmm7
	pand	%xmm6, %xmm0
	punpckhwd	%xmm4, %xmm7
	paddd	%xmm10, %xmm3
	paddd	%xmm2, %xmm3
	psrad	$2, %xmm3
	paddd	%xmm8, %xmm7
	movdqa	%xmm3, %xmm8
	paddd	%xmm2, %xmm7
	psrad	$2, %xmm7
	punpcklwd	%xmm7, %xmm3
	punpckhwd	%xmm7, %xmm8
	movdqa	%xmm3, %xmm7
	punpcklwd	%xmm8, %xmm3
	punpckhwd	%xmm8, %xmm7
	punpcklwd	%xmm7, %xmm3
	pand	%xmm6, %xmm3
	packuswb	%xmm3, %xmm0
	movdqa	%xmm1, %xmm3
	movups	%xmm0, -64(%rcx)
	movdqa	-48(%r10), %xmm8
	movdqa	%xmm8, %xmm7
	movdqu	-48(%r11), %xmm9
	punpckhbw	%xmm5, %xmm8
	punpcklbw	%xmm5, %xmm7
	movdqa	%xmm9, %xmm10
	punpckhbw	%xmm5, %xmm9
	punpcklbw	%xmm5, %xmm10
	pmullw	%xmm7, %xmm3
	pmulhw	%xmm1, %xmm7
	movdqa	%xmm3, %xmm0
	punpckhwd	%xmm7, %xmm3
	punpcklwd	%xmm7, %xmm0
	movdqa	%xmm10, %xmm11
	movdqa	%xmm3, %xmm7
	movdqa	%xmm10, %xmm3
	punpcklwd	%xmm4, %xmm11
	movdqa	%xmm9, %xmm10
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm4, %xmm10
	paddd	%xmm11, %xmm0
	paddd	%xmm2, %xmm0
	psrad	$2, %xmm0
	paddd	%xmm7, %xmm3
	movdqa	%xmm0, %xmm7
	paddd	%xmm2, %xmm3
	psrad	$2, %xmm3
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm7
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm7, %xmm0
	punpckhwd	%xmm7, %xmm3
	movdqa	%xmm1, %xmm7
	pmullw	%xmm8, %xmm7
	pmulhw	%xmm1, %xmm8
	punpcklwd	%xmm3, %xmm0
	movdqa	%xmm7, %xmm3
	punpckhwd	%xmm8, %xmm7
	punpcklwd	%xmm8, %xmm3
	movdqa	%xmm7, %xmm8
	movdqa	%xmm9, %xmm7
	pand	%xmm6, %xmm0
	punpckhwd	%xmm4, %xmm7
	paddd	%xmm10, %xmm3
	paddd	%xmm2, %xmm3
	psrad	$2, %xmm3
	paddd	%xmm8, %xmm7
	movdqa	%xmm3, %xmm8
	paddd	%xmm2, %xmm7
	psrad	$2, %xmm7
	punpcklwd	%xmm7, %xmm3
	punpckhwd	%xmm7, %xmm8
	movdqa	%xmm3, %xmm7
	punpcklwd	%xmm8, %xmm3
	punpckhwd	%xmm8, %xmm7
	punpcklwd	%xmm7, %xmm3
	pand	%xmm6, %xmm3
	packuswb	%xmm3, %xmm0
	movdqa	%xmm1, %xmm3
	movups	%xmm0, -48(%rcx)
	movdqa	-32(%r10), %xmm8
	movdqa	%xmm8, %xmm7
	movdqu	-32(%r11), %xmm9
	punpckhbw	%xmm5, %xmm8
	punpcklbw	%xmm5, %xmm7
	movdqa	%xmm9, %xmm10
	punpckhbw	%xmm5, %xmm9
	punpcklbw	%xmm5, %xmm10
	pmullw	%xmm7, %xmm3
	pmulhw	%xmm1, %xmm7
	movdqa	%xmm3, %xmm0
	punpckhwd	%xmm7, %xmm3
	punpcklwd	%xmm7, %xmm0
	movdqa	%xmm10, %xmm11
	movdqa	%xmm3, %xmm7
	movdqa	%xmm10, %xmm3
	punpcklwd	%xmm4, %xmm11
	movdqa	%xmm9, %xmm10
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm4, %xmm10
	paddd	%xmm11, %xmm0
	paddd	%xmm2, %xmm0
	psrad	$2, %xmm0
	paddd	%xmm7, %xmm3
	movdqa	%xmm0, %xmm7
	paddd	%xmm2, %xmm3
	psrad	$2, %xmm3
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm7
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm7, %xmm0
	punpckhwd	%xmm7, %xmm3
	movdqa	%xmm1, %xmm7
	pmullw	%xmm8, %xmm7
	pmulhw	%xmm1, %xmm8
	punpcklwd	%xmm3, %xmm0
	movdqa	%xmm7, %xmm3
	punpckhwd	%xmm8, %xmm7
	punpcklwd	%xmm8, %xmm3
	movdqa	%xmm7, %xmm8
	movdqa	%xmm9, %xmm7
	pand	%xmm6, %xmm0
	punpckhwd	%xmm4, %xmm7
	paddd	%xmm10, %xmm3
	paddd	%xmm2, %xmm3
	psrad	$2, %xmm3
	paddd	%xmm8, %xmm7
	movdqa	%xmm3, %xmm8
	paddd	%xmm2, %xmm7
	psrad	$2, %xmm7
	punpcklwd	%xmm7, %xmm3
	punpckhwd	%xmm7, %xmm8
	movdqa	%xmm3, %xmm7
	punpcklwd	%xmm8, %xmm3
	punpckhwd	%xmm8, %xmm7
	punpcklwd	%xmm7, %xmm3
	pand	%xmm6, %xmm3
	packuswb	%xmm3, %xmm0
	movdqa	%xmm1, %xmm3
	movups	%xmm0, -32(%rcx)
	movdqa	-16(%r10), %xmm9
	movdqa	%xmm9, %xmm7
	movdqu	-16(%r11), %xmm8
	punpckhbw	%xmm5, %xmm9
	punpcklbw	%xmm5, %xmm7
	movdqa	%xmm8, %xmm10
	punpckhbw	%xmm5, %xmm8
	punpcklbw	%xmm5, %xmm10
	pmullw	%xmm7, %xmm3
	pmulhw	%xmm1, %xmm7
	movdqa	%xmm3, %xmm0
	punpckhwd	%xmm7, %xmm3
	punpcklwd	%xmm7, %xmm0
	movdqa	%xmm10, %xmm11
	movdqa	%xmm3, %xmm7
	movdqa	%xmm10, %xmm3
	punpcklwd	%xmm4, %xmm11
	movdqa	%xmm8, %xmm10
	punpckhwd	%xmm4, %xmm3
	punpckhwd	%xmm4, %xmm8
	paddd	%xmm11, %xmm0
	paddd	%xmm2, %xmm0
	psrad	$2, %xmm0
	paddd	%xmm7, %xmm3
	movdqa	%xmm0, %xmm7
	paddd	%xmm2, %xmm3
	psrad	$2, %xmm3
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm7
	punpcklwd	%xmm4, %xmm10
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm7, %xmm0
	punpckhwd	%xmm7, %xmm3
	movdqa	%xmm1, %xmm7
	pmullw	%xmm9, %xmm7
	pmulhw	%xmm1, %xmm9
	punpcklwd	%xmm3, %xmm0
	movdqa	%xmm7, %xmm3
	punpckhwd	%xmm9, %xmm7
	punpcklwd	%xmm9, %xmm3
	paddd	%xmm8, %xmm7
	paddd	%xmm2, %xmm7
	psrad	$2, %xmm7
	pand	%xmm6, %xmm0
	paddd	%xmm10, %xmm3
	paddd	%xmm2, %xmm3
	psrad	$2, %xmm3
	movdqa	%xmm3, %xmm8
	punpcklwd	%xmm7, %xmm3
	punpckhwd	%xmm7, %xmm8
	movdqa	%xmm3, %xmm7
	punpcklwd	%xmm8, %xmm3
	punpckhwd	%xmm8, %xmm7
	punpcklwd	%xmm7, %xmm3
	pand	%xmm6, %xmm3
	packuswb	%xmm3, %xmm0
	movups	%xmm0, -16(%rcx)
	cmpl	%ebx, %r13d
	jne	.L85
.L84:
	pxor	%xmm7, %xmm7
	xorl	%ebx, %ebx
	pxor	%xmm5, %xmm5
.L90:
	movdqa	(%r10,%rbx), %xmm9
	movdqa	%xmm1, %xmm0
	incl	%r13d
	movdqu	(%r11,%rbx), %xmm8
	movdqa	%xmm9, %xmm4
	punpckhbw	%xmm7, %xmm9
	movdqa	%xmm8, %xmm10
	punpcklbw	%xmm7, %xmm4
	punpckhbw	%xmm7, %xmm8
	punpcklbw	%xmm7, %xmm10
	pmullw	%xmm4, %xmm0
	movdqa	%xmm0, %xmm3
	pmulhw	%xmm1, %xmm4
	punpckhwd	%xmm4, %xmm0
	movdqa	%xmm10, %xmm11
	punpcklwd	%xmm4, %xmm3
	punpckhwd	%xmm5, %xmm10
	punpcklwd	%xmm5, %xmm11
	paddd	%xmm10, %xmm0
	paddd	%xmm2, %xmm0
	psrad	$2, %xmm0
	paddd	%xmm11, %xmm3
	paddd	%xmm2, %xmm3
	psrad	$2, %xmm3
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm0, %xmm3
	movdqa	%xmm8, %xmm10
	punpckhwd	%xmm0, %xmm4
	punpckhwd	%xmm5, %xmm8
	movdqa	%xmm3, %xmm0
	punpcklwd	%xmm5, %xmm10
	punpcklwd	%xmm4, %xmm3
	punpckhwd	%xmm4, %xmm0
	movdqa	%xmm1, %xmm4
	pmullw	%xmm9, %xmm4
	pmulhw	%xmm1, %xmm9
	punpcklwd	%xmm0, %xmm3
	movdqa	%xmm4, %xmm0
	punpckhwd	%xmm9, %xmm4
	punpcklwd	%xmm9, %xmm0
	paddd	%xmm8, %xmm4
	paddd	%xmm2, %xmm4
	psrad	$2, %xmm4
	pand	%xmm6, %xmm3
	paddd	%xmm10, %xmm0
	paddd	%xmm2, %xmm0
	psrad	$2, %xmm0
	movdqa	%xmm0, %xmm8
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm4, %xmm8
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm8, %xmm0
	punpckhwd	%xmm8, %xmm4
	punpcklwd	%xmm4, %xmm0
	pand	%xmm6, %xmm0
	packuswb	%xmm0, %xmm3
	movups	%xmm3, (%rcx,%rbx)
	addq	$16, %rbx
	cmpl	%ebp, %r13d
	jb	.L90
	addl	%r12d, %esi
	cmpl	%r12d, %edi
	je	.L111
.L83:
	movslq	%esi, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	1(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	2(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	3(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	4(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	5(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	6(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	7(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	8(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	9(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	10(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	11(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	12(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	leal	13(%rsi), %ecx
	cmpl	%ecx, %r9d
	jle	.L111
	movslq	%ecx, %rcx
	addl	$14, %esi
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	cmpl	%esi, %r9d
	movb	%r10b, (%rax,%rcx)
	jle	.L111
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	leal	(%rdx,%rdx,2), %ecx
	movzbl	(%r8,%rsi), %edx
	leal	2(%rcx,%rdx), %edx
	sarl	$2, %edx
	movb	%dl, (%rax,%rsi)
.L111:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movaps	32(%rsp), %xmm8
	movaps	48(%rsp), %xmm9
	movaps	64(%rsp), %xmm10
	movaps	80(%rsp), %xmm11
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L80:
	xorl	%ecx, %ecx
	.p2align 4,,7
.L92:
	movzbl	(%rdx,%rcx), %r10d
	leal	(%r10,%r10,2), %r11d
	movzbl	(%r8,%rcx), %r10d
	leal	2(%r11,%r10), %r10d
	sarl	$2, %r10d
	movb	%r10b, (%rax,%rcx)
	incq	%rcx
	cmpl	%ecx, %r9d
	jg	.L92
	jmp	.L111
	.p2align 4,,7
.L107:
	movl	$14, %esi
	jmp	.L81
	.p2align 4,,7
.L94:
	movl	$1, %esi
	jmp	.L81
	.p2align 4,,7
.L95:
	movl	$2, %esi
	jmp	.L81
	.p2align 4,,7
.L96:
	movl	$3, %esi
	jmp	.L81
	.p2align 4,,7
.L97:
	movl	$4, %esi
	jmp	.L81
	.p2align 4,,7
.L98:
	movl	$5, %esi
	jmp	.L81
	.p2align 4,,7
.L99:
	movl	$6, %esi
	jmp	.L81
	.p2align 4,,7
.L100:
	movl	$7, %esi
	jmp	.L81
	.p2align 4,,7
.L101:
	movl	$8, %esi
	jmp	.L81
	.p2align 4,,7
.L102:
	movl	$9, %esi
	jmp	.L81
	.p2align 4,,7
.L103:
	movl	$10, %esi
	jmp	.L81
	.p2align 4,,7
.L104:
	movl	$11, %esi
	jmp	.L81
	.p2align 4,,7
.L105:
	movl	$12, %esi
	jmp	.L81
	.p2align 4,,7
.L106:
	movl	$13, %esi
	jmp	.L81
	.p2align 4,,7
.L108:
	xorl	%r13d, %r13d
	movdqa	.LC0(%rip), %xmm1
	movdqa	.LC1(%rip), %xmm2
	movdqa	.LC2(%rip), %xmm6
	jmp	.L84
	.seh_endproc
	.p2align 4,,15
	.def	_ZL23stbi__resample_row_hv_2PhS_S_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23stbi__resample_row_hv_2PhS_S_ii
_ZL23stbi__resample_row_hv_2PhS_S_ii:
.LFB648:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	cmpl	$1, %r9d
	movq	%rcx, %rax
	je	.L125
	movzbl	(%rdx), %ecx
	leal	(%rcx,%rcx,2), %ebx
	movzbl	(%r8), %ecx
	addl	%ecx, %ebx
	leal	2(%rbx), %ecx
	sarl	$2, %ecx
	cmpl	$1, %r9d
	movl	%ecx, %r10d
	movb	%cl, (%rax)
	jle	.L122
	leal	-2(%r9), %edi
	xorl	%r10d, %r10d
	incq	%rdi
	.p2align 4,,7
.L123:
	movzbl	1(%rdx,%r10), %r11d
	leal	(%r11,%r11,2), %ecx
	movzbl	1(%r8,%r10), %r11d
	addl	%ecx, %r11d
	leal	(%rbx,%rbx,2), %ecx
	leal	8(%r11,%rcx), %esi
	leal	(%r11,%r11,2), %ecx
	leal	8(%rbx,%rcx), %ebx
	sarl	$4, %esi
	movb	%sil, 1(%rax,%r10,2)
	sarl	$4, %ebx
	movb	%bl, 2(%rax,%r10,2)
	incq	%r10
	movl	%r11d, %ebx
	cmpq	%r10, %rdi
	jne	.L123
	leal	2(%r11), %r10d
	shrl	$2, %r10d
.L122:
	addl	%r9d, %r9d
	movslq	%r9d, %r9
	movb	%r10b, -1(%rax,%r9)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L125:
	movzbl	(%rdx), %edx
	leal	(%rdx,%rdx,2), %ecx
	movzbl	(%r8), %edx
	leal	2(%rcx,%rdx), %edx
	sarl	$2, %edx
	movb	%dl, 1(%rax)
	movb	%dl, (%rax)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL26stbi__resample_row_genericPhS_S_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL26stbi__resample_row_genericPhS_S_ii
_ZL26stbi__resample_row_genericPhS_S_ii:
.LFB650:
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
	movl	160(%rsp), %r10d
	testl	%r9d, %r9d
	movq	%rcx, %rax
	jle	.L162
	movslq	%r10d, %rsi
	movl	%ecx, %r12d
	leal	-1(%r9), %ecx
	movq	%rsi, 24(%rsp)
	negl	%esi
	leal	-1(%r10), %ebx
	movl	%esi, 20(%rsp)
	leaq	1(%rdx,%rcx), %rsi
	negl	%r12d
	movq	%rax, %r8
	xorl	%edi, %edi
	movl	%ebx, 44(%rsp)
	movq	%rsi, 8(%rsp)
	movl	%r10d, %esi
	.p2align 4,,7
.L130:
	testl	%r10d, %r10d
	jle	.L171
	leaq	(%rsi,%r8), %rcx
	movq	%r8, %r11
	leaq	1(%rdx), %rbp
	subq	%rax, %r11
	cmpq	%rcx, %rdx
	movq	%r11, (%rsp)
	setnb	%r9b
	cmpq	%rbp, %r8
	setnb	%cl
	orb	%cl, %r9b
	je	.L131
	cmpl	$20, %r10d
	jbe	.L131
	movl	%r12d, %ecx
	andl	$15, %ecx
	cmpl	%r10d, %ecx
	cmova	%r10d, %ecx
	xorl	%r9d, %r9d
	testl	%ecx, %ecx
	je	.L132
	movzbl	(%rdx), %r9d
	cmpl	$1, %ecx
	movb	%r9b, (%r8)
	je	.L145
	movzbl	(%rdx), %r9d
	cmpl	$2, %ecx
	movb	%r9b, 1(%r8)
	je	.L146
	movzbl	(%rdx), %r9d
	cmpl	$3, %ecx
	movb	%r9b, 2(%r8)
	je	.L147
	movzbl	(%rdx), %r9d
	cmpl	$4, %ecx
	movb	%r9b, 3(%r8)
	je	.L148
	movzbl	(%rdx), %r9d
	cmpl	$5, %ecx
	movb	%r9b, 4(%r8)
	je	.L149
	movzbl	(%rdx), %r9d
	cmpl	$6, %ecx
	movb	%r9b, 5(%r8)
	je	.L150
	movzbl	(%rdx), %r9d
	cmpl	$7, %ecx
	movb	%r9b, 6(%r8)
	je	.L151
	movzbl	(%rdx), %r9d
	cmpl	$8, %ecx
	movb	%r9b, 7(%r8)
	je	.L152
	movzbl	(%rdx), %r9d
	cmpl	$9, %ecx
	movb	%r9b, 8(%r8)
	je	.L153
	movzbl	(%rdx), %r9d
	cmpl	$10, %ecx
	movb	%r9b, 9(%r8)
	je	.L154
	movzbl	(%rdx), %r9d
	cmpl	$11, %ecx
	movb	%r9b, 10(%r8)
	je	.L155
	movzbl	(%rdx), %r9d
	cmpl	$12, %ecx
	movb	%r9b, 11(%r8)
	je	.L156
	movzbl	(%rdx), %r9d
	cmpl	$13, %ecx
	movb	%r9b, 12(%r8)
	je	.L157
	movzbl	(%rdx), %r9d
	cmpl	$14, %ecx
	movb	%r9b, 13(%r8)
	je	.L158
	movzbl	(%rdx), %r9d
	movb	%r9b, 14(%r8)
	movl	$15, %r9d
.L132:
	movl	%r10d, %r13d
	movl	%ecx, %ebx
	movl	44(%rsp), %r11d
	subl	%ecx, %r13d
	movq	%rbx, 32(%rsp)
	leal	-16(%r13), %ebx
	subl	%ecx, %r11d
	shrl	$4, %ebx
	leal	1(%rbx), %r14d
	movl	%r14d, %r15d
	sall	$4, %r15d
	cmpl	$14, %r11d
	jbe	.L134
	movzbl	(%rdx), %ecx
	movq	(%rsp), %r11
	subl	$4, %ebx
	addq	32(%rsp), %r11
	movl	%ecx, 40(%rsp)
	movd	40(%rsp), %xmm0
	addq	%rax, %r11
	cmpl	$-6, %ebx
	punpcklbw	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	ja	.L159
	shrl	$2, %ebx
	xorl	%ecx, %ecx
	leal	4(,%rbx,4), %ebx
.L136:
	addl	$4, %ecx
	prefetcht0	640(%r11)
	addq	$64, %r11
	movaps	%xmm0, -64(%r11)
	movaps	%xmm0, -48(%r11)
	movaps	%xmm0, -32(%r11)
	movaps	%xmm0, -16(%r11)
	cmpl	%ebx, %ecx
	jne	.L136
.L141:
	incl	%ebx
	addq	$16, %r11
	movaps	%xmm0, -16(%r11)
	cmpl	%r14d, %ebx
	jb	.L141
	addl	%r15d, %r9d
	cmpl	%r15d, %r13d
	je	.L139
	.p2align 4,,7
.L134:
	movzbl	(%rdx), %r11d
	leal	(%rdi,%r9), %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	1(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	2(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	3(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	4(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	5(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	6(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	7(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	8(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	9(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	10(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	11(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	12(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%r11b, (%rax,%rcx)
	leal	13(%r9), %ecx
	cmpl	%ecx, %r10d
	jle	.L139
	movzbl	(%rdx), %r11d
	addl	%edi, %ecx
	addl	$14, %r9d
	movslq	%ecx, %rcx
	cmpl	%r9d, %r10d
	movb	%r11b, (%rax,%rcx)
	jle	.L139
	movzbl	(%rdx), %edx
	addl	%edi, %r9d
	movslq	%r9d, %r9
	movb	%dl, (%rax,%r9)
.L139:
	addq	24(%rsp), %r8
	addl	20(%rsp), %r12d
	addl	%r10d, %edi
	cmpq	8(%rsp), %rbp
	movq	%rbp, %rdx
	jne	.L130
.L162:
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
	.p2align 4,,7
.L131:
	xorl	%ecx, %ecx
	.p2align 4,,7
.L143:
	movzbl	(%rdx), %r9d
	movb	%r9b, (%r8,%rcx)
	incq	%rcx
	cmpl	%ecx, %r10d
	jg	.L143
	jmp	.L139
	.p2align 4,,7
.L171:
	leaq	1(%rdx), %rbp
	jmp	.L139
	.p2align 4,,7
.L158:
	movl	$14, %r9d
	jmp	.L132
	.p2align 4,,7
.L157:
	movl	$13, %r9d
	jmp	.L132
	.p2align 4,,7
.L156:
	movl	$12, %r9d
	jmp	.L132
	.p2align 4,,7
.L155:
	movl	$11, %r9d
	jmp	.L132
	.p2align 4,,7
.L154:
	movl	$10, %r9d
	jmp	.L132
	.p2align 4,,7
.L153:
	movl	$9, %r9d
	jmp	.L132
	.p2align 4,,7
.L152:
	movl	$8, %r9d
	jmp	.L132
	.p2align 4,,7
.L151:
	movl	$7, %r9d
	jmp	.L132
	.p2align 4,,7
.L150:
	movl	$6, %r9d
	jmp	.L132
	.p2align 4,,7
.L149:
	movl	$5, %r9d
	jmp	.L132
	.p2align 4,,7
.L148:
	movl	$4, %r9d
	jmp	.L132
	.p2align 4,,7
.L147:
	movl	$3, %r9d
	jmp	.L132
	.p2align 4,,7
.L146:
	movl	$2, %r9d
	jmp	.L132
	.p2align 4,,7
.L145:
	movl	$1, %r9d
	jmp	.L132
	.p2align 4,,7
.L159:
	xorl	%ebx, %ebx
	jmp	.L141
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22stbi__YCbCr_to_RGB_rowPhPKhS1_S1_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbi__YCbCr_to_RGB_rowPhPKhS1_S1_ii
_ZL22stbi__YCbCr_to_RGB_rowPhPKhS1_S1_ii:
.LFB651:
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
	.seh_endprologue
	movl	80(%rsp), %ebx
	xorl	%r11d, %r11d
	movslq	88(%rsp), %rsi
	testl	%ebx, %ebx
	jle	.L172
	.p2align 4,,7
.L182:
	movzbl	(%r9,%r11), %r10d
	movzbl	(%rdx,%r11), %eax
	movzbl	(%r8,%r11), %r12d
	addl	$-128, %r10d
	sall	$20, %eax
	imull	$1470208, %r10d, %edi
	addl	$524288, %eax
	addl	$-128, %r12d
	imull	$-748800, %r10d, %r10d
	addl	%eax, %edi
	leal	(%r10,%rax), %ebp
	sarl	$20, %edi
	imull	$-360960, %r12d, %r10d
	imull	$1858048, %r12d, %r12d
	xorw	%r10w, %r10w
	addl	%ebp, %r10d
	addl	%r12d, %eax
	sarl	$20, %r10d
	sarl	$20, %eax
	cmpl	$255, %edi
	jbe	.L175
	notl	%edi
	sarl	$31, %edi
.L175:
	cmpl	$255, %r10d
	jbe	.L177
	notl	%r10d
	sarl	$31, %r10d
.L177:
	cmpl	$255, %eax
	jbe	.L179
	notl	%eax
	sarl	$31, %eax
.L179:
	incq	%r11
	movb	%dil, (%rcx)
	movb	%r10b, 1(%rcx)
	movb	%al, 2(%rcx)
	movb	$-1, 3(%rcx)
	addq	%rsi, %rcx
	cmpl	%r11d, %ebx
	jg	.L182
.L172:
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14stbi__high_bitj;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__high_bitj
_ZL14stbi__high_bitj:
.LFB701:
	.seh_endprologue
	testl	%ecx, %ecx
	je	.L189
	cmpl	$65535, %ecx
	ja	.L192
	movl	$8, %eax
	xorl	%edx, %edx
.L185:
	cmpl	$255, %ecx
	jbe	.L186
	shrl	$8, %ecx
	movl	%eax, %edx
.L186:
	cmpl	$15, %ecx
	jbe	.L187
	addl	$4, %edx
	shrl	$4, %ecx
.L187:
	cmpl	$3, %ecx
	jbe	.L188
	addl	$2, %edx
	shrl	$2, %ecx
.L188:
	xorl	%eax, %eax
	decl	%ecx
	setne	%al
	addl	%edx, %eax
	ret
	.p2align 4,,7
.L192:
	shrl	$16, %ecx
	movl	$24, %eax
	movl	$16, %edx
	jmp	.L185
	.p2align 4,,7
.L189:
	movl	$-1, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL18stbi__out_gif_codeP9stbi__gift;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18stbi__out_gif_codeP9stbi__gift
_ZL18stbi__out_gif_codeP9stbi__gift:
.LFB726:
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
	js	.L194
	call	_ZL18stbi__out_gif_codeP9stbi__gift
.L194:
	movl	18520(%rbx), %ecx
	cmpl	18512(%rbx), %ecx
	jge	.L193
	movzbl	2099(%rsi), %eax
	movl	18516(%rbx), %edx
	sall	$2, %eax
	cltq
	addq	18480(%rbx), %rax
	cmpb	$0, 3(%rax)
	js	.L201
.L196:
	leal	4(%rdx), %eax
	cmpl	18508(%rbx), %eax
	movl	%eax, 18516(%rbx)
	jl	.L193
	movl	18500(%rbx), %eax
	movl	18512(%rbx), %r8d
	movl	%eax, 18516(%rbx)
	movl	18492(%rbx), %eax
	addl	18520(%rbx), %eax
	cmpl	%r8d, %eax
	movl	%eax, 18520(%rbx)
	jl	.L193
	movl	18488(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.L193
	movl	18524(%rbx), %r10d
	movl	18504(%rbx), %r9d
	jmp	.L198
	.p2align 4,,7
.L199:
	testl	%ecx, %ecx
	je	.L202
.L198:
	movl	%r10d, %edx
	sall	%cl, %edx
	decl	%ecx
	movl	%edx, %eax
	sarl	%eax
	addl	%r9d, %eax
	cmpl	%r8d, %eax
	jge	.L199
	movl	%edx, 18492(%rbx)
	movl	%eax, 18520(%rbx)
	movl	%ecx, 18488(%rbx)
.L193:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L201:
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
	movl	18516(%rbx), %edx
	jmp	.L196
	.p2align 4,,7
.L202:
	movl	%edx, 18492(%rbx)
	movl	%eax, 18520(%rbx)
	movl	$0, 18488(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16stbi__stdio_skipPvi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__stdio_skipPvi
_ZL16stbi__stdio_skipPvi:
.LFB563:
	.seh_endprologue
	movl	$1, %r8d
	jmp	fseek
	.seh_endproc
	.p2align 4,,15
	.def	_ZL15stbi__stdio_eofPv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbi__stdio_eofPv
_ZL15stbi__stdio_eofPv:
.LFB564:
	.seh_endprologue
	jmp	feof
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16stbi__stdio_readPvPci;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__stdio_readPvPci
_ZL16stbi__stdio_readPvPci:
.LFB562:
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
.LFB665:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	20(%rcx), %eax
	movq	%rcx, %rbx
	movl	16(%rcx), %ecx
	jmp	.L209
	.p2align 4,,7
.L207:
	movq	(%rbx), %r8
	xorl	%edx, %edx
	cmpq	%r8, 8(%rbx)
	jbe	.L208
	leaq	1(%r8), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%r8), %edx
	sall	%cl, %edx
.L208:
	addl	$8, %ecx
	orl	%edx, %eax
	cmpl	$24, %ecx
	movl	%eax, 20(%rbx)
	movl	%ecx, 16(%rbx)
	jg	.L215
.L209:
	movl	%eax, %edx
	shrl	%cl, %edx
	testl	%edx, %edx
	je	.L207
	leaq	.LC4(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$3848, %r8d
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %eax
	jmp	.L207
	.p2align 4,,7
.L215:
	addq	$32, %rsp
	popq	%rbx
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
.LFB621:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	xorl	%r10d, %r10d
	movl	$1, %ebx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	(%r9), %eax
	testl	%eax, %eax
	jle	.L233
	.p2align 4,,7
.L242:
	movl	%ebx, %r11d
	movslq	%r10d, %rax
	.p2align 4,,7
.L218:
	leal	1(%rax), %edx
	movb	%r11b, 1280(%r8,%rax)
	movslq	%edx, %rax
	movl	%eax, %ecx
	subl	%r10d, %ecx
	cmpl	%ecx, (%r9)
	jg	.L218
	incl	%ebx
	addq	$4, %r9
	cmpl	$17, %ebx
	je	.L241
.L234:
	movl	(%r9), %eax
	movl	%edx, %r10d
	testl	%eax, %eax
	jg	.L242
.L233:
	incl	%ebx
	addq	$4, %r9
	movl	%r10d, %edx
	cmpl	$17, %ebx
	jne	.L234
.L241:
	movslq	%edx, %rdx
	leaq	1616(%r8), %rsi
	xorl	%eax, %eax
	movb	$0, 1280(%r8,%rdx)
	xorl	%r11d, %r11d
	movl	$1, %ebx
	movzbl	1280(%r8), %r10d
	movl	$1, %ebp
	movl	$16, %edi
	jmp	.L223
.L220:
	movl	%edi, %ecx
	movl	%eax, %edx
	addq	$4, %rsi
	subl	%ebx, %ecx
	incl	%ebx
	addl	%eax, %eax
	sall	%cl, %edx
	movl	%edx, -76(%rsi)
	cmpl	$17, %ebx
	je	.L243
.L223:
	movl	%r11d, %edx
	subl	%eax, %edx
	cmpl	%r10d, %ebx
	movl	%edx, (%rsi)
	jne	.L220
	movl	%eax, %r9d
	movslq	%r11d, %rdx
	.p2align 4,,7
.L221:
	incl	%r11d
	movw	%r9w, 512(%r8,%rdx,2)
	leal	1(%r9), %eax
	movslq	%r11d, %rcx
	movslq	%r11d, %rdx
	movzbl	1280(%r8,%rcx), %r10d
	movl	%eax, %r9d
	cmpl	%r10d, %ebx
	je	.L221
	movl	%ebp, %edx
	movl	%ebx, %ecx
	sall	%cl, %edx
	cmpl	%edx, %eax
	jle	.L220
	leaq	.LC5(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L243:
	leaq	8(%r8), %rdi
	movq	%r8, %rcx
	movq	$-1, %rax
	movl	$-1, 1608(%r8)
	movq	%rax, (%r8)
	andq	$-8, %rdi
	movq	%rax, 504(%r8)
	subq	%rdi, %rcx
	addl	$512, %ecx
	shrl	$3, %ecx
	testl	%r11d, %r11d
	rep stosq
	je	.L226
	leal	-1(%r11), %r10d
	xorl	%r9d, %r9d
	movl	$9, %esi
	movl	$1, %ebx
	movabsq	$72340172838076673, %r11
	incq	%r10
	jmp	.L227
	.p2align 4,,7
.L246:
	testb	$4, %bpl
	jne	.L244
	testl	%ebp, %ebp
	je	.L232
	testb	$2, %bpl
	movb	%al, (%rdx)
	jne	.L245
	.p2align 4,,7
.L232:
	incq	%r9
	cmpq	%r9, %r10
	je	.L226
.L227:
	movzbl	1280(%r8,%r9), %eax
	cmpl	$9, %eax
	jg	.L232
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ebx, %eax
	sall	%cl, %eax
	leal	-1(%rax), %ebp
	movzwl	512(%r8,%r9,2), %eax
	incq	%rbp
	sall	%cl, %eax
	movslq	%eax, %rdx
	movzbl	%r9b, %eax
	addq	%r8, %rdx
	imulq	%r11, %rax
	cmpl	$8, %ebp
	jb	.L246
	leaq	8(%rdx), %rdi
	movl	%ebp, %ecx
	movq	%rax, (%rdx)
	movq	%rax, -8(%rdx,%rcx)
	incq	%r9
	andq	$-8, %rdi
	subq	%rdi, %rdx
	leal	0(%rbp,%rdx), %ecx
	shrl	$3, %ecx
	cmpq	%r9, %r10
	rep stosq
	jne	.L227
.L226:
	movl	$1, %eax
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L244:
	movl	%ebp, %ecx
	movl	%eax, (%rdx)
	movl	%eax, -4(%rdx,%rcx)
	jmp	.L232
.L245:
	movl	%ebp, %ecx
	movw	%ax, -2(%rdx,%rcx)
	jmp	.L232
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17stbi__malloc_mad2iii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17stbi__malloc_mad2iii
_ZL17stbi__malloc_mad2iii:
.LFB575:
	.seh_endprologue
	movl	%ecx, %eax
	movl	%edx, %r9d
	shrl	$31, %eax
	jne	.L248
	movl	%edx, %eax
	shrl	$31, %eax
	jne	.L248
	testl	%edx, %edx
	jne	.L257
.L249:
	testl	%r8d, %r8d
	js	.L248
	imull	%ecx, %r9d
	movl	$2147483647, %eax
	subl	%r8d, %eax
	cmpl	%eax, %r9d
	jg	.L248
	leal	(%r8,%r9), %ecx
	movslq	%ecx, %rcx
	jmp	malloc
	.p2align 4,,7
.L257:
	movl	$2147483647, %eax
	cltd
	idivl	%r9d
	cmpl	%eax, %ecx
	jle	.L249
.L248:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "req_comp >= 1 && req_comp <= 4\0"
.LC7:
	.ascii "outofmem\0"
.LC8:
	.ascii "0\0"
	.text
	.p2align 4,,15
	.def	_ZL22stbi__convert_format16Ptiijj;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbi__convert_format16Ptiijj
_ZL22stbi__convert_format16Ptiijj:
.LFB618:
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
	cmpl	%edx, %r8d
	movq	%rcx, %r15
	movl	%edx, %r12d
	movl	%r8d, %ebp
	movl	%r9d, %ebx
	je	.L334
	leal	-1(%r8), %eax
	cmpl	$3, %eax
	ja	.L525
.L260:
	movl	400(%rsp), %eax
	leal	(%rax,%rax), %ecx
	imull	%ebx, %ecx
	imull	%ebp, %ecx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L261
	movl	400(%rsp), %esi
	testl	%esi, %esi
	jle	.L332
	movl	%ebp, %eax
	movl	%r12d, %r10d
	movl	$1, %r9d
	imull	%ebx, %eax
	leal	-1(%rbx), %r13d
	leal	-10(%rbp,%r12,8), %ebp
	imull	%ebx, %r10d
	pcmpeqd	%xmm6, %xmm6
	leaq	.L265(%rip), %r12
	movl	%eax, 32(%rsp)
	leal	-2(%rbx), %eax
	cmpl	$-1, %eax
	cmovge	%ebx, %r9d
	leal	-8(%r9), %edx
	movl	%r9d, 36(%rsp)
	shrl	$3, %edx
	cmpl	$-1, %eax
	leal	1(%rdx), %ebx
	leal	-4(%rdx), %edi
	setl	%cl
	cmpl	$6, %r13d
	leal	0(,%rbx,8), %esi
	movl	%ebx, 72(%rsp)
	leal	-2(%rdx), %ebx
	movl	%edi, %edx
	setbe	%r8b
	movl	%edi, 108(%rsp)
	shrl	$2, %edx
	movl	%esi, 40(%rsp)
	orl	%ecx, %r8d
	leal	4(,%rdx,4), %edi
	movl	%esi, %edx
	movb	%r8b, 77(%rsp)
	movl	%ebx, 104(%rsp)
	movl	%edi, 44(%rsp)
	movl	%r13d, %edi
	subl	%esi, %edi
	movl	%edi, 88(%rsp)
	leaq	(%rdx,%rdx), %rdi
	movq	%rdi, 80(%rsp)
	leaq	0(,%rdx,4), %rdi
	movq	%rdi, 56(%rsp)
	leaq	0(,%rdx,8), %rdi
	leal	-9(%r9), %edx
	shrl	$3, %edx
	movq	%rdi, 64(%rsp)
	cmpl	$7, %r13d
	leal	1(%rdx), %esi
	setbe	%r8b
	orl	%ecx, %r8d
	movl	%ebx, %ecx
	leal	0(,%rsi,8), %edi
	movl	%esi, 116(%rsp)
	leal	-4(%rdx), %esi
	shrl	%ecx
	movb	%r8b, 79(%rsp)
	movl	%esi, %edx
	movl	%esi, 112(%rsp)
	leal	2(%rcx,%rcx), %ebx
	shrl	$2, %edx
	movl	%edi, 92(%rsp)
	leal	4(,%rdx,4), %esi
	movl	%edi, %edx
	movl	%ebx, 52(%rsp)
	movl	%esi, 48(%rsp)
	movl	%r13d, %esi
	subl	%edi, %esi
	cmpl	$8, %eax
	leaq	0(,%rdx,4), %rdi
	setg	%cl
	incl	%eax
	movl	%esi, 124(%rsp)
	setge	%al
	leaq	(%rdx,%rdx), %rsi
	movq	%rdi, 128(%rsp)
	andl	%eax, %ecx
	leaq	0(,%rdx,8), %rax
	xorl	%edi, %edi
	movq	%rsi, 96(%rsp)
	movb	%cl, 78(%rsp)
	xorl	%esi, %esi
	movq	%rax, 136(%rsp)
	xorl	%ebx, %ebx
	.p2align 4,,7
.L333:
	movl	%esi, %eax
	movl	%edi, %edx
	cmpl	$25, %ebp
	leaq	(%r15,%rax,2), %rax
	leaq	(%r14,%rdx,2), %rdx
	ja	.L263
	movl	%ebp, %ecx
	movslq	(%r12,%rcx,4), %rcx
	addq	%r12, %rcx
	jmp	*%rcx
	.section .rdata,"dr"
	.align 4
.L265:
	.long	.L264-.L265
	.long	.L266-.L265
	.long	.L267-.L265
	.long	.L263-.L265
	.long	.L263-.L265
	.long	.L263-.L265
	.long	.L263-.L265
	.long	.L268-.L265
	.long	.L263-.L265
	.long	.L269-.L265
	.long	.L270-.L265
	.long	.L263-.L265
	.long	.L263-.L265
	.long	.L263-.L265
	.long	.L263-.L265
	.long	.L271-.L265
	.long	.L272-.L265
	.long	.L263-.L265
	.long	.L273-.L265
	.long	.L263-.L265
	.long	.L263-.L265
	.long	.L263-.L265
	.long	.L263-.L265
	.long	.L274-.L265
	.long	.L275-.L265
	.long	.L276-.L265
	.text
	.p2align 4,,7
.L276:
	testl	%r13d, %r13d
	js	.L278
	movl	%r13d, %ecx
	.p2align 4,,7
.L331:
	movzwl	(%rax), %r8d
	decl	%ecx
	addq	$8, %rax
	addq	$6, %rdx
	movw	%r8w, -6(%rdx)
	movzwl	-6(%rax), %r8d
	movw	%r8w, -4(%rdx)
	movzwl	-4(%rax), %r8d
	movw	%r8w, -2(%rdx)
	cmpl	$-1, %ecx
	jne	.L331
	.p2align 4,,7
.L278:
	incl	%ebx
	addl	%r10d, %esi
	addl	32(%rsp), %edi
	cmpl	400(%rsp), %ebx
	jne	.L333
.L332:
	movq	%r15, %rcx
	call	free
	movq	%r14, %rax
.L259:
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
	.p2align 4,,7
.L275:
	testl	%r13d, %r13d
	js	.L278
	cmpb	$0, 77(%rsp)
	jne	.L347
	cmpl	$-4, 104(%rsp)
	ja	.L348
	pxor	%xmm3, %xmm3
	xorl	%r9d, %r9d
	movq	%rdx, %r8
	movq	%rax, %rcx
.L326:
	movdqu	(%rcx), %xmm5
	prefetcht0	368(%rcx)
	prefetcht0	432(%rcx)
	prefetcht0	176(%r8)
	subq	$-128, %rcx
	addq	$64, %r8
	movdqu	-112(%rcx), %xmm4
	movdqa	%xmm5, %xmm0
	movdqa	%xmm5, %xmm2
	addl	$2, %r9d
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm4, %xmm2
	movdqu	-96(%rcx), %xmm1
	punpcklwd	%xmm4, %xmm5
	movdqa	%xmm0, %xmm8
	movdqu	-80(%rcx), %xmm7
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm8
	movdqa	%xmm1, %xmm4
	punpcklwd	%xmm2, %xmm5
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm7, %xmm4
	punpcklwd	%xmm8, %xmm0
	punpcklwd	%xmm7, %xmm2
	punpckhwd	%xmm8, %xmm5
	punpcklwd	%xmm7, %xmm1
	movdqa	%xmm2, %xmm8
	punpcklwd	%xmm4, %xmm2
	punpckhwd	%xmm4, %xmm8
	punpcklwd	%xmm4, %xmm1
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm8, %xmm2
	punpckhwd	%xmm8, %xmm1
	movdqa	%xmm0, %xmm8
	punpcklwd	%xmm2, %xmm8
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	movdqa	%xmm8, %xmm7
	punpcklwd	%xmm4, %xmm8
	punpckhwd	%xmm4, %xmm7
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm7, %xmm8
	punpckhwd	%xmm7, %xmm0
	movdqa	%xmm5, %xmm7
	punpcklwd	%xmm1, %xmm5
	punpcklwd	%xmm1, %xmm7
	punpcklwd	%xmm2, %xmm5
	movdqa	%xmm7, %xmm4
	punpcklwd	%xmm2, %xmm7
	punpckhwd	%xmm2, %xmm4
	movdqa	%xmm8, %xmm2
	punpckhwd	%xmm3, %xmm8
	punpcklwd	%xmm3, %xmm2
	punpckhwd	%xmm4, %xmm5
	punpcklwd	%xmm4, %xmm7
	movdqa	%xmm2, %xmm4
	pslld	$2, %xmm4
	movdqa	%xmm4, %xmm1
	pslld	$2, %xmm1
	psubd	%xmm4, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	movdqa	%xmm1, %xmm4
	punpckhwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm2
	pslld	$3, %xmm4
	psubd	%xmm1, %xmm4
	pslld	$1, %xmm7
	pslld	$1, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$4, %xmm1
	psubd	%xmm2, %xmm1
	paddd	%xmm1, %xmm4
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm3, %xmm0
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm1, %xmm9
	pslld	$2, %xmm9
	movdqa	%xmm9, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm9, %xmm2
	paddd	%xmm2, %xmm1
	paddd	%xmm1, %xmm4
	movdqa	%xmm8, %xmm1
	psrad	$8, %xmm4
	pslld	$2, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$2, %xmm2
	psubd	%xmm1, %xmm2
	psubd	%xmm8, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$3, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	movdqa	%xmm7, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	pslld	$4, %xmm1
	psubd	%xmm7, %xmm1
	movdqa	%xmm0, %xmm7
	paddd	%xmm2, %xmm1
	pslld	$2, %xmm7
	movdqa	%xmm7, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm7, %xmm2
	paddd	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
	psrad	$8, %xmm0
	punpcklwd	%xmm0, %xmm4
	movdqu	-16(%rcx), %xmm7
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm4, %xmm0
	punpcklwd	%xmm1, %xmm4
	punpckhwd	%xmm1, %xmm0
	movdqu	-32(%rcx), %xmm1
	punpcklwd	%xmm0, %xmm4
	movdqa	%xmm4, %xmm0
	punpckhwd	%xmm5, %xmm4
	punpcklwd	%xmm5, %xmm0
	movdqu	-64(%rcx), %xmm5
	movups	%xmm4, -48(%r8)
	movdqa	%xmm5, %xmm2
	movups	%xmm0, -64(%r8)
	movdqa	%xmm5, %xmm0
	movdqu	-48(%rcx), %xmm4
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm4, %xmm2
	punpcklwd	%xmm4, %xmm5
	movdqa	%xmm1, %xmm4
	movdqa	%xmm0, %xmm8
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm8
	punpcklwd	%xmm2, %xmm5
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm7, %xmm4
	punpcklwd	%xmm7, %xmm2
	punpcklwd	%xmm8, %xmm0
	punpckhwd	%xmm8, %xmm5
	punpcklwd	%xmm7, %xmm1
	movdqa	%xmm2, %xmm8
	punpcklwd	%xmm4, %xmm2
	punpckhwd	%xmm4, %xmm8
	punpcklwd	%xmm4, %xmm1
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm8, %xmm2
	punpckhwd	%xmm8, %xmm1
	movdqa	%xmm0, %xmm8
	punpcklwd	%xmm2, %xmm8
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	movdqa	%xmm8, %xmm7
	punpcklwd	%xmm4, %xmm8
	punpckhwd	%xmm4, %xmm7
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm7, %xmm8
	punpckhwd	%xmm7, %xmm0
	movdqa	%xmm5, %xmm7
	punpcklwd	%xmm1, %xmm5
	punpcklwd	%xmm1, %xmm7
	punpcklwd	%xmm2, %xmm5
	movdqa	%xmm7, %xmm4
	punpcklwd	%xmm2, %xmm7
	punpckhwd	%xmm2, %xmm4
	movdqa	%xmm8, %xmm2
	punpckhwd	%xmm3, %xmm8
	punpcklwd	%xmm3, %xmm2
	punpcklwd	%xmm4, %xmm7
	punpckhwd	%xmm4, %xmm5
	movdqa	%xmm2, %xmm4
	pslld	$2, %xmm4
	movdqa	%xmm4, %xmm1
	pslld	$2, %xmm1
	psubd	%xmm4, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	movdqa	%xmm1, %xmm4
	punpckhwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm2
	pslld	$3, %xmm4
	psubd	%xmm1, %xmm4
	pslld	$1, %xmm7
	pslld	$1, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$4, %xmm1
	psubd	%xmm2, %xmm1
	paddd	%xmm1, %xmm4
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm3, %xmm0
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm1, %xmm9
	pslld	$2, %xmm9
	movdqa	%xmm9, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm9, %xmm2
	paddd	%xmm2, %xmm1
	paddd	%xmm1, %xmm4
	movdqa	%xmm8, %xmm1
	psrad	$8, %xmm4
	pslld	$2, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$2, %xmm2
	psubd	%xmm1, %xmm2
	psubd	%xmm8, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$3, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	movdqa	%xmm7, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	pslld	$4, %xmm1
	psubd	%xmm7, %xmm1
	movdqa	%xmm0, %xmm7
	paddd	%xmm2, %xmm1
	pslld	$2, %xmm7
	movdqa	%xmm7, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm7, %xmm2
	paddd	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
	psrad	$8, %xmm0
	punpcklwd	%xmm0, %xmm4
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm4, %xmm0
	punpcklwd	%xmm1, %xmm4
	punpckhwd	%xmm1, %xmm0
	punpcklwd	%xmm0, %xmm4
	movdqa	%xmm4, %xmm0
	punpckhwd	%xmm5, %xmm4
	punpcklwd	%xmm5, %xmm0
	movups	%xmm4, -16(%r8)
	movups	%xmm0, -32(%r8)
	cmpl	%r9d, 52(%rsp)
	jne	.L326
.L325:
	pxor	%xmm5, %xmm5
.L330:
	movdqu	(%rcx), %xmm4
	addq	$32, %r8
	addq	$64, %rcx
	incl	%r9d
	movdqu	-48(%rcx), %xmm3
	movdqa	%xmm4, %xmm0
	movdqa	%xmm4, %xmm2
	punpcklwd	%xmm3, %xmm0
	movdqu	-32(%rcx), %xmm1
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm4
	movdqu	-16(%rcx), %xmm7
	movdqa	%xmm0, %xmm8
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm2, %xmm8
	punpcklwd	%xmm2, %xmm4
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm7, %xmm3
	punpcklwd	%xmm7, %xmm2
	punpcklwd	%xmm8, %xmm0
	punpckhwd	%xmm8, %xmm4
	punpcklwd	%xmm7, %xmm1
	movdqa	%xmm2, %xmm8
	punpcklwd	%xmm3, %xmm2
	punpckhwd	%xmm3, %xmm8
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm8, %xmm2
	punpckhwd	%xmm8, %xmm1
	movdqa	%xmm0, %xmm8
	punpcklwd	%xmm2, %xmm8
	punpckhwd	%xmm2, %xmm3
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm4, %xmm2
	movdqa	%xmm8, %xmm7
	punpcklwd	%xmm3, %xmm8
	punpckhwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm7, %xmm8
	punpckhwd	%xmm7, %xmm0
	movdqa	%xmm4, %xmm7
	punpcklwd	%xmm1, %xmm4
	punpcklwd	%xmm1, %xmm7
	punpcklwd	%xmm2, %xmm4
	movdqa	%xmm7, %xmm3
	punpcklwd	%xmm2, %xmm7
	punpckhwd	%xmm2, %xmm3
	movdqa	%xmm8, %xmm2
	punpckhwd	%xmm5, %xmm8
	punpcklwd	%xmm5, %xmm2
	punpcklwd	%xmm3, %xmm7
	punpckhwd	%xmm3, %xmm4
	movdqa	%xmm2, %xmm3
	pslld	$2, %xmm3
	movdqa	%xmm3, %xmm1
	pslld	$2, %xmm1
	psubd	%xmm3, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm5, %xmm7
	punpcklwd	%xmm5, %xmm2
	pslld	$3, %xmm3
	psubd	%xmm1, %xmm3
	pslld	$1, %xmm7
	pslld	$1, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$4, %xmm1
	psubd	%xmm2, %xmm1
	paddd	%xmm1, %xmm3
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm5, %xmm0
	punpcklwd	%xmm5, %xmm1
	movdqa	%xmm1, %xmm9
	pslld	$2, %xmm9
	movdqa	%xmm9, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm9, %xmm2
	paddd	%xmm2, %xmm1
	paddd	%xmm1, %xmm3
	movdqa	%xmm8, %xmm1
	psrad	$8, %xmm3
	pslld	$2, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$2, %xmm2
	psubd	%xmm1, %xmm2
	psubd	%xmm8, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$3, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	movdqa	%xmm7, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	pslld	$4, %xmm1
	psubd	%xmm7, %xmm1
	movdqa	%xmm0, %xmm7
	paddd	%xmm2, %xmm1
	pslld	$2, %xmm7
	movdqa	%xmm7, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm7, %xmm2
	paddd	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm3, %xmm1
	psrad	$8, %xmm0
	punpcklwd	%xmm0, %xmm3
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm3, %xmm0
	punpcklwd	%xmm1, %xmm3
	punpckhwd	%xmm1, %xmm0
	punpcklwd	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm4, %xmm0
	movups	%xmm3, -16(%r8)
	movups	%xmm0, -32(%r8)
	cmpl	%r9d, 72(%rsp)
	ja	.L330
	addq	64(%rsp), %rax
	addq	56(%rsp), %rdx
	movl	36(%rsp), %r9d
	cmpl	%r9d, 40(%rsp)
	je	.L278
	movl	88(%rsp), %r8d
	jmp	.L324
	.p2align 4,,7
.L274:
	testl	%r13d, %r13d
	js	.L278
	cmpb	$0, 79(%rsp)
	jne	.L345
	cmpl	$-6, 112(%rsp)
	ja	.L346
	pxor	%xmm4, %xmm4
	xorl	%r9d, %r9d
	movq	%rdx, %r8
	movq	%rax, %rcx
.L319:
	movdqu	(%rcx), %xmm5
	prefetcht0	432(%rcx)
	prefetcht0	496(%rcx)
	prefetcht0	560(%rcx)
	prefetcht0	624(%rcx)
	prefetcht0	96(%r8)
	movdqu	16(%rcx), %xmm10
	addq	$64, %r8
	movdqa	%xmm5, %xmm0
	addq	$256, %rcx
	movdqu	-224(%rcx), %xmm1
	addl	$4, %r9d
	punpcklwd	%xmm10, %xmm0
	movdqu	-208(%rcx), %xmm8
	movdqa	%xmm5, %xmm9
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm10, %xmm9
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm8, %xmm2
	movdqa	%xmm0, %xmm13
	punpckhwd	%xmm8, %xmm3
	punpcklwd	%xmm9, %xmm0
	punpckhwd	%xmm9, %xmm13
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm10, %xmm5
	punpckhwd	%xmm3, %xmm12
	movdqu	-176(%rcx), %xmm10
	punpcklwd	%xmm3, %xmm2
	punpcklwd	%xmm8, %xmm1
	punpcklwd	%xmm13, %xmm0
	punpcklwd	%xmm12, %xmm2
	punpcklwd	%xmm9, %xmm5
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm7
	movdqa	%xmm0, %xmm11
	punpcklwd	%xmm2, %xmm7
	punpckhwd	%xmm12, %xmm1
	punpckhwd	%xmm13, %xmm5
	punpckhwd	%xmm2, %xmm11
	movdqa	%xmm7, %xmm14
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	punpcklwd	%xmm1, %xmm5
	punpckhwd	%xmm11, %xmm14
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm11, %xmm7
	movdqa	%xmm5, %xmm1
	punpcklwd	%xmm11, %xmm0
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm14, %xmm7
	punpcklwd	%xmm2, %xmm5
	punpckhwd	%xmm14, %xmm0
	punpcklwd	%xmm1, %xmm5
	movdqa	%xmm7, %xmm1
	punpckhwd	%xmm4, %xmm7
	punpcklwd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	pslld	$2, %xmm3
	movdqa	%xmm3, %xmm2
	pslld	$2, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm5, %xmm3
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm4, %xmm5
	punpcklwd	%xmm4, %xmm3
	pslld	$3, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$1, %xmm5
	pslld	$1, %xmm3
	movdqa	%xmm3, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	pslld	$4, %xmm1
	psubd	%xmm3, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm4, %xmm0
	punpcklwd	%xmm4, %xmm2
	movdqa	%xmm2, %xmm8
	pslld	$2, %xmm8
	movdqa	%xmm8, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm8, %xmm3
	paddd	%xmm3, %xmm2
	paddd	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psrad	$8, %xmm1
	movdqu	-144(%rcx), %xmm8
	pslld	$2, %xmm2
	movdqa	%xmm2, %xmm3
	pslld	$2, %xmm3
	psubd	%xmm2, %xmm3
	psubd	%xmm7, %xmm3
	movdqa	%xmm3, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm3
	movdqa	%xmm5, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm2
	pslld	$4, %xmm2
	psubd	%xmm5, %xmm2
	movdqa	%xmm0, %xmm5
	paddd	%xmm3, %xmm2
	pslld	$2, %xmm5
	movdqa	%xmm5, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm5, %xmm3
	paddd	%xmm3, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	psrad	$8, %xmm0
	punpcklwd	%xmm0, %xmm1
	movdqu	-192(%rcx), %xmm5
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm5, %xmm9
	movdqa	%xmm1, %xmm0
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm0
	punpckhwd	%xmm10, %xmm9
	punpcklwd	%xmm0, %xmm1
	movdqa	%xmm5, %xmm0
	punpcklwd	%xmm10, %xmm5
	movups	%xmm1, -64(%r8)
	punpcklwd	%xmm10, %xmm0
	punpcklwd	%xmm9, %xmm5
	movdqu	-160(%rcx), %xmm1
	movdqa	%xmm0, %xmm13
	punpcklwd	%xmm9, %xmm0
	movdqa	%xmm1, %xmm2
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm9, %xmm13
	punpcklwd	%xmm8, %xmm2
	punpckhwd	%xmm8, %xmm3
	movdqu	-112(%rcx), %xmm10
	punpcklwd	%xmm8, %xmm1
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm13, %xmm0
	punpcklwd	%xmm3, %xmm2
	punpckhwd	%xmm3, %xmm12
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm7
	punpckhwd	%xmm13, %xmm5
	punpcklwd	%xmm12, %xmm2
	movdqa	%xmm0, %xmm11
	punpckhwd	%xmm12, %xmm1
	punpcklwd	%xmm2, %xmm7
	punpckhwd	%xmm2, %xmm11
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	movdqa	%xmm7, %xmm14
	punpcklwd	%xmm1, %xmm5
	punpckhwd	%xmm11, %xmm14
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm11, %xmm7
	movdqa	%xmm5, %xmm1
	punpcklwd	%xmm11, %xmm0
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm14, %xmm7
	punpcklwd	%xmm2, %xmm5
	punpckhwd	%xmm14, %xmm0
	punpcklwd	%xmm1, %xmm5
	movdqa	%xmm7, %xmm1
	punpckhwd	%xmm4, %xmm7
	punpcklwd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	pslld	$2, %xmm3
	movdqa	%xmm3, %xmm2
	pslld	$2, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm5, %xmm3
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm4, %xmm5
	punpcklwd	%xmm4, %xmm3
	pslld	$3, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$1, %xmm5
	pslld	$1, %xmm3
	movdqa	%xmm3, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	pslld	$4, %xmm1
	psubd	%xmm3, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm4, %xmm0
	punpcklwd	%xmm4, %xmm2
	movdqa	%xmm2, %xmm8
	pslld	$2, %xmm8
	movdqa	%xmm8, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm8, %xmm3
	paddd	%xmm3, %xmm2
	paddd	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psrad	$8, %xmm1
	movdqu	-80(%rcx), %xmm8
	pslld	$2, %xmm2
	movdqa	%xmm2, %xmm3
	pslld	$2, %xmm3
	psubd	%xmm2, %xmm3
	psubd	%xmm7, %xmm3
	movdqa	%xmm3, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm3
	movdqa	%xmm5, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm2
	pslld	$4, %xmm2
	psubd	%xmm5, %xmm2
	movdqa	%xmm0, %xmm5
	paddd	%xmm3, %xmm2
	pslld	$2, %xmm5
	movdqa	%xmm5, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm5, %xmm3
	paddd	%xmm3, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	psrad	$8, %xmm0
	punpcklwd	%xmm0, %xmm1
	movdqu	-128(%rcx), %xmm5
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm5, %xmm9
	movdqa	%xmm1, %xmm0
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm0
	punpckhwd	%xmm10, %xmm9
	punpcklwd	%xmm0, %xmm1
	movdqa	%xmm5, %xmm0
	punpcklwd	%xmm10, %xmm5
	movups	%xmm1, -48(%r8)
	punpcklwd	%xmm10, %xmm0
	punpcklwd	%xmm9, %xmm5
	movdqu	-96(%rcx), %xmm1
	movdqa	%xmm0, %xmm13
	punpcklwd	%xmm9, %xmm0
	movdqa	%xmm1, %xmm2
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm9, %xmm13
	punpcklwd	%xmm8, %xmm2
	punpckhwd	%xmm8, %xmm3
	movdqu	-48(%rcx), %xmm10
	punpcklwd	%xmm8, %xmm1
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm13, %xmm0
	punpcklwd	%xmm3, %xmm2
	punpckhwd	%xmm3, %xmm12
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm7
	punpckhwd	%xmm13, %xmm5
	punpcklwd	%xmm12, %xmm2
	movdqa	%xmm0, %xmm11
	punpckhwd	%xmm12, %xmm1
	punpcklwd	%xmm2, %xmm7
	punpckhwd	%xmm2, %xmm11
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	movdqa	%xmm7, %xmm14
	punpcklwd	%xmm1, %xmm5
	punpckhwd	%xmm11, %xmm14
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm11, %xmm7
	movdqa	%xmm5, %xmm1
	punpcklwd	%xmm11, %xmm0
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm14, %xmm7
	punpcklwd	%xmm2, %xmm5
	punpckhwd	%xmm14, %xmm0
	punpcklwd	%xmm1, %xmm5
	movdqa	%xmm7, %xmm1
	punpckhwd	%xmm4, %xmm7
	punpcklwd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	pslld	$2, %xmm3
	movdqa	%xmm3, %xmm2
	pslld	$2, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm5, %xmm3
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm4, %xmm5
	punpcklwd	%xmm4, %xmm3
	pslld	$3, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$1, %xmm5
	pslld	$1, %xmm3
	movdqa	%xmm3, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	pslld	$4, %xmm1
	psubd	%xmm3, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm4, %xmm0
	punpcklwd	%xmm4, %xmm2
	movdqa	%xmm2, %xmm8
	pslld	$2, %xmm8
	movdqa	%xmm8, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm8, %xmm3
	paddd	%xmm3, %xmm2
	paddd	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psrad	$8, %xmm1
	movdqu	-16(%rcx), %xmm8
	pslld	$2, %xmm2
	movdqa	%xmm2, %xmm3
	pslld	$2, %xmm3
	psubd	%xmm2, %xmm3
	psubd	%xmm7, %xmm3
	movdqa	%xmm3, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm3
	movdqa	%xmm5, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm2
	pslld	$4, %xmm2
	psubd	%xmm5, %xmm2
	movdqa	%xmm0, %xmm5
	paddd	%xmm3, %xmm2
	pslld	$2, %xmm5
	movdqa	%xmm5, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm5, %xmm3
	paddd	%xmm3, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	psrad	$8, %xmm0
	punpcklwd	%xmm0, %xmm1
	movdqu	-64(%rcx), %xmm5
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm5, %xmm9
	movdqa	%xmm1, %xmm0
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm0
	punpckhwd	%xmm10, %xmm9
	punpcklwd	%xmm0, %xmm1
	movdqa	%xmm5, %xmm0
	punpcklwd	%xmm10, %xmm5
	movups	%xmm1, -32(%r8)
	punpcklwd	%xmm10, %xmm0
	punpcklwd	%xmm9, %xmm5
	movdqu	-32(%rcx), %xmm1
	movdqa	%xmm0, %xmm13
	punpcklwd	%xmm9, %xmm0
	movdqa	%xmm1, %xmm2
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm9, %xmm13
	punpcklwd	%xmm8, %xmm2
	punpckhwd	%xmm8, %xmm3
	punpcklwd	%xmm8, %xmm1
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm13, %xmm0
	punpcklwd	%xmm3, %xmm2
	punpckhwd	%xmm3, %xmm12
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm7
	movdqa	%xmm0, %xmm11
	punpcklwd	%xmm12, %xmm2
	punpckhwd	%xmm12, %xmm1
	punpckhwd	%xmm13, %xmm5
	punpcklwd	%xmm2, %xmm7
	punpckhwd	%xmm2, %xmm11
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	movdqa	%xmm7, %xmm14
	punpcklwd	%xmm1, %xmm5
	punpckhwd	%xmm1, %xmm2
	punpckhwd	%xmm11, %xmm14
	punpcklwd	%xmm11, %xmm7
	movdqa	%xmm5, %xmm1
	punpcklwd	%xmm2, %xmm5
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm14, %xmm7
	punpcklwd	%xmm11, %xmm0
	punpcklwd	%xmm1, %xmm5
	movdqa	%xmm7, %xmm1
	punpckhwd	%xmm4, %xmm7
	punpckhwd	%xmm14, %xmm0
	punpcklwd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	pslld	$2, %xmm3
	movdqa	%xmm3, %xmm2
	pslld	$2, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm5, %xmm3
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm4, %xmm5
	punpcklwd	%xmm4, %xmm3
	pslld	$3, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$1, %xmm5
	pslld	$1, %xmm3
	movdqa	%xmm3, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	pslld	$4, %xmm1
	psubd	%xmm3, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm4, %xmm0
	punpcklwd	%xmm4, %xmm2
	movdqa	%xmm2, %xmm8
	pslld	$2, %xmm8
	movdqa	%xmm8, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm8, %xmm3
	paddd	%xmm3, %xmm2
	paddd	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psrad	$8, %xmm1
	pslld	$2, %xmm2
	movdqa	%xmm2, %xmm3
	pslld	$2, %xmm3
	psubd	%xmm2, %xmm3
	psubd	%xmm7, %xmm3
	movdqa	%xmm3, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm3
	movdqa	%xmm5, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm2
	pslld	$4, %xmm2
	psubd	%xmm5, %xmm2
	movdqa	%xmm0, %xmm5
	paddd	%xmm3, %xmm2
	pslld	$2, %xmm5
	movdqa	%xmm5, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm5, %xmm3
	paddd	%xmm3, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	psrad	$8, %xmm0
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm0
	punpcklwd	%xmm0, %xmm1
	movups	%xmm1, -16(%r8)
	cmpl	%r9d, 48(%rsp)
	jne	.L319
.L318:
	pxor	%xmm4, %xmm4
.L323:
	movdqu	(%rcx), %xmm5
	addq	$16, %r8
	addq	$64, %rcx
	incl	%r9d
	movdqu	-48(%rcx), %xmm10
	movdqa	%xmm5, %xmm0
	movdqa	%xmm5, %xmm9
	movdqu	-32(%rcx), %xmm1
	punpcklwd	%xmm10, %xmm0
	punpckhwd	%xmm10, %xmm9
	movdqu	-16(%rcx), %xmm8
	movdqa	%xmm1, %xmm2
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm8, %xmm2
	movdqa	%xmm0, %xmm13
	punpckhwd	%xmm8, %xmm3
	punpckhwd	%xmm9, %xmm13
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm9, %xmm0
	punpcklwd	%xmm3, %xmm2
	punpckhwd	%xmm3, %xmm12
	punpcklwd	%xmm8, %xmm1
	punpcklwd	%xmm10, %xmm5
	punpcklwd	%xmm13, %xmm0
	punpcklwd	%xmm12, %xmm2
	punpcklwd	%xmm3, %xmm1
	punpcklwd	%xmm9, %xmm5
	movdqa	%xmm0, %xmm7
	movdqa	%xmm0, %xmm11
	punpcklwd	%xmm2, %xmm7
	punpckhwd	%xmm12, %xmm1
	punpckhwd	%xmm13, %xmm5
	punpckhwd	%xmm2, %xmm11
	movdqa	%xmm7, %xmm14
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	punpcklwd	%xmm1, %xmm5
	punpckhwd	%xmm11, %xmm14
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm11, %xmm7
	movdqa	%xmm5, %xmm1
	punpcklwd	%xmm11, %xmm0
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm14, %xmm7
	punpcklwd	%xmm2, %xmm5
	punpckhwd	%xmm14, %xmm0
	punpcklwd	%xmm1, %xmm5
	movdqa	%xmm7, %xmm1
	punpckhwd	%xmm4, %xmm7
	punpcklwd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	pslld	$2, %xmm3
	movdqa	%xmm3, %xmm2
	pslld	$2, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm5, %xmm3
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm4, %xmm5
	punpcklwd	%xmm4, %xmm3
	pslld	$3, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$1, %xmm5
	pslld	$1, %xmm3
	movdqa	%xmm3, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	pslld	$4, %xmm1
	psubd	%xmm3, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm4, %xmm0
	punpcklwd	%xmm4, %xmm2
	movdqa	%xmm2, %xmm8
	pslld	$2, %xmm8
	movdqa	%xmm8, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm8, %xmm3
	paddd	%xmm3, %xmm2
	paddd	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psrad	$8, %xmm1
	pslld	$2, %xmm2
	movdqa	%xmm2, %xmm3
	pslld	$2, %xmm3
	psubd	%xmm2, %xmm3
	psubd	%xmm7, %xmm3
	movdqa	%xmm3, %xmm2
	pslld	$3, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm3
	movdqa	%xmm5, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm2
	pslld	$4, %xmm2
	psubd	%xmm5, %xmm2
	movdqa	%xmm0, %xmm5
	paddd	%xmm3, %xmm2
	pslld	$2, %xmm5
	movdqa	%xmm5, %xmm3
	pslld	$3, %xmm3
	psubd	%xmm5, %xmm3
	paddd	%xmm3, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	psrad	$8, %xmm0
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm0
	punpcklwd	%xmm0, %xmm1
	movups	%xmm1, -16(%r8)
	cmpl	%r9d, 116(%rsp)
	ja	.L323
	addq	136(%rsp), %rax
	addq	96(%rsp), %rdx
	movl	92(%rsp), %r9d
	cmpl	%r9d, 36(%rsp)
	je	.L278
	movl	124(%rsp), %ecx
	jmp	.L317
	.p2align 4,,7
.L273:
	testl	%r13d, %r13d
	js	.L278
	movl	%r13d, %ecx
	.p2align 4,,7
.L310:
	movzwl	(%rax), %r8d
	decl	%ecx
	movw	$-1, 6(%rdx)
	addq	$6, %rax
	addq	$8, %rdx
	movw	%r8w, -8(%rdx)
	movzwl	-4(%rax), %r8d
	movw	%r8w, -6(%rdx)
	movzwl	-2(%rax), %r8d
	movw	%r8w, -4(%rdx)
	cmpl	$-1, %ecx
	jne	.L310
	jmp	.L278
	.p2align 4,,7
.L272:
	testl	%r13d, %r13d
	js	.L278
	cmpb	$0, 78(%rsp)
	movl	%r13d, %r9d
	je	.L316
	.p2align 4,,7
.L315:
	movzwl	(%rax), %r8d
	movl	$77, %ecx
	prefetcht0	82(%rax)
	prefetcht0	80(%rax)
	prefetcht0	78(%rax)
	prefetcht0	52(%rdx)
	movw	$-1, 2(%rdx)
	movw	$-1, 6(%rdx)
	prefetcht0	54(%rdx)
	movw	$-1, 10(%rdx)
	movw	$-1, 14(%rdx)
	movl	%r8d, %r11d
	movzwl	2(%rax), %r8d
	movw	$-1, 18(%rdx)
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	4(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	6(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, (%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	8(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	10(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	12(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, 4(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	14(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	16(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	18(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, 8(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	20(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	22(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	24(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, 12(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	26(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	28(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	30(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, 16(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	32(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	34(%rax), %ecx
	movl	$29, %r11d
	movw	$-1, 22(%rdx)
	movw	$-1, 26(%rdx)
	movw	$-1, 30(%rdx)
	movw	$-1, 34(%rdx)
	movw	$-1, 38(%rdx)
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	36(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, 20(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	38(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	40(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addq	$60, %rax
	addq	$40, %rdx
	addl	%r8d, %ecx
	movzwl	-18(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, -16(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	-16(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	-14(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	-12(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, -12(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	-10(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	-8(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	-6(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, -8(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	-4(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	-2(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	sarl	$8, %ecx
	movw	%cx, -4(%rdx)
	movl	%r9d, %ecx
	subl	$10, %r9d
	subl	$11, %ecx
	cmpl	$8, %ecx
	jg	.L315
	.p2align 4,,7
.L316:
	movzwl	(%rax), %ecx
	movl	$77, %r11d
	decl	%r9d
	movw	$-1, 2(%rdx)
	addq	$6, %rax
	addq	$4, %rdx
	movl	%ecx, %r8d
	movzwl	-4(%rax), %ecx
	imull	%r11d, %r8d
	movl	$29, %r11d
	imull	$150, %ecx, %ecx
	addl	%r8d, %ecx
	movzwl	-2(%rax), %r8d
	imull	%r11d, %r8d
	addl	%r8d, %ecx
	sarl	$8, %ecx
	movw	%cx, -4(%rdx)
	cmpl	$-1, %r9d
	jne	.L316
	jmp	.L278
	.p2align 4,,7
.L271:
	testl	%r13d, %r13d
	js	.L278
	cmpb	$0, 78(%rsp)
	movl	%r13d, %r9d
	je	.L313
	.p2align 4,,7
.L312:
	movzwl	2(%rax), %r8d
	prefetcht0	88(%rax)
	prefetcht0	86(%rax)
	prefetcht0	84(%rax)
	prefetcht0	28(%rdx)
	imull	$150, %r8d, %r11d
	movzwl	(%rax), %r8d
	movl	%r8d, %ecx
	movl	$77, %r8d
	imull	%r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	4(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	6(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, (%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	8(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	10(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	12(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, 2(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	14(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	16(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	18(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, 4(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	20(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	22(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	24(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, 6(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	26(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	28(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	30(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, 8(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	32(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	34(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	36(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, 10(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	38(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	40(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addq	$60, %rax
	addq	$20, %rdx
	addl	%r8d, %ecx
	sarl	$8, %ecx
	movw	%cx, -8(%rdx)
	movzwl	-18(%rax), %r8d
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	-16(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	-14(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	-12(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, -6(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	-10(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	-8(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	movzwl	-6(%rax), %r8d
	sarl	$8, %ecx
	movw	%cx, -4(%rdx)
	movl	$77, %ecx
	movl	%r8d, %r11d
	movzwl	-4(%rax), %r8d
	imull	%ecx, %r11d
	imull	$150, %r8d, %ecx
	leal	(%r11,%rcx), %r8d
	movzwl	-2(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r8d, %ecx
	sarl	$8, %ecx
	movw	%cx, -2(%rdx)
	movl	%r9d, %ecx
	subl	$10, %r9d
	subl	$11, %ecx
	cmpl	$8, %ecx
	jg	.L312
	.p2align 4,,7
.L313:
	movzwl	(%rax), %ecx
	movl	$29, %r11d
	decl	%r9d
	addq	$6, %rax
	addq	$2, %rdx
	movl	%ecx, %r8d
	movl	$77, %ecx
	imull	%ecx, %r8d
	movzwl	-4(%rax), %ecx
	imull	$150, %ecx, %ecx
	addl	%r8d, %ecx
	movzwl	-2(%rax), %r8d
	imull	%r11d, %r8d
	addl	%r8d, %ecx
	sarl	$8, %ecx
	movw	%cx, -2(%rdx)
	cmpl	$-1, %r9d
	jne	.L313
	jmp	.L278
	.p2align 4,,7
.L270:
	testl	%r13d, %r13d
	js	.L278
	cmpb	$0, 77(%rsp)
	.p2align 4,,3
	jne	.L341
	cmpl	$-4, 104(%rsp)
	ja	.L342
	movl	52(%rsp), %r11d
	xorl	%r9d, %r9d
	movq	%rdx, %rcx
	movq	%rax, %r8
.L305:
	movdqu	(%r8), %xmm1
	prefetcht0	272(%r8)
	addl	$2, %r9d
	prefetcht0	560(%rcx)
	prefetcht0	624(%rcx)
	addq	$64, %r8
	movdqu	-48(%r8), %xmm3
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm2
	subq	$-128, %rcx
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm1
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm4, %xmm1
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm0, %xmm3
	punpcklwd	%xmm1, %xmm4
	punpckhwd	%xmm0, %xmm2
	punpckhwd	%xmm1, %xmm0
	movdqa	%xmm3, %xmm1
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm4, %xmm1
	movups	%xmm3, -112(%rcx)
	movups	%xmm1, -128(%rcx)
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm0, %xmm2
	punpcklwd	%xmm0, %xmm1
	movdqu	-16(%r8), %xmm3
	movups	%xmm1, -96(%rcx)
	movups	%xmm2, -80(%rcx)
	movdqu	-32(%r8), %xmm1
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm2
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm1
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm4, %xmm1
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm0, %xmm3
	punpcklwd	%xmm1, %xmm4
	punpckhwd	%xmm0, %xmm2
	punpckhwd	%xmm1, %xmm0
	movdqa	%xmm3, %xmm1
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm4, %xmm1
	movups	%xmm3, -48(%rcx)
	movups	%xmm1, -64(%rcx)
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm0, %xmm2
	punpcklwd	%xmm0, %xmm1
	movups	%xmm2, -16(%rcx)
	movups	%xmm1, -32(%rcx)
	cmpl	%r9d, %r11d
	jne	.L305
	movl	%r11d, %r9d
.L309:
	movdqu	(%r8), %xmm1
	addq	$64, %rcx
	addq	$32, %r8
	incl	%r9d
	movdqu	-16(%r8), %xmm3
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm1
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm4, %xmm1
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm0, %xmm3
	punpcklwd	%xmm1, %xmm4
	punpckhwd	%xmm0, %xmm2
	punpckhwd	%xmm1, %xmm0
	movdqa	%xmm3, %xmm1
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm4, %xmm1
	movups	%xmm3, -48(%rcx)
	movups	%xmm1, -64(%rcx)
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm0, %xmm2
	punpcklwd	%xmm0, %xmm1
	movups	%xmm2, -16(%rcx)
	movups	%xmm1, -32(%rcx)
	cmpl	%r9d, 72(%rsp)
	ja	.L309
	addq	56(%rsp), %rax
	addq	64(%rsp), %rdx
	movl	36(%rsp), %r9d
	cmpl	%r9d, 40(%rsp)
	je	.L278
	movl	88(%rsp), %ecx
	jmp	.L303
	.p2align 4,,7
.L269:
	testl	%r13d, %r13d
	js	.L278
	movl	%r13d, %r8d
	.p2align 4,,7
.L302:
	movzwl	(%rax), %ecx
	decl	%r8d
	addq	$4, %rax
	addq	$6, %rdx
	movw	%cx, -2(%rdx)
	movw	%cx, -4(%rdx)
	movw	%cx, -6(%rdx)
	cmpl	$-1, %r8d
	jne	.L302
	jmp	.L278
	.p2align 4,,7
.L268:
	testl	%r13d, %r13d
	js	.L278
	cmpb	$0, 79(%rsp)
	.p2align 4,,3
	jne	.L339
	cmpl	$-6, 112(%rsp)
	ja	.L340
	movl	48(%rsp), %r11d
	xorl	%r9d, %r9d
	movq	%rdx, %r8
	movq	%rax, %rcx
.L297:
	movdqu	16(%rcx), %xmm2
	prefetcht0	656(%rcx)
	prefetcht0	720(%rcx)
	addl	$4, %r9d
	prefetcht0	320(%r8)
	subq	$-128, %rcx
	movdqu	-128(%rcx), %xmm0
	addq	$64, %r8
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm2, %xmm0
	movdqu	-80(%rcx), %xmm2
	movups	%xmm0, -64(%r8)
	movdqu	-96(%rcx), %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm2, %xmm0
	movdqu	-48(%rcx), %xmm2
	movups	%xmm0, -48(%r8)
	movdqu	-64(%rcx), %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm2, %xmm0
	movdqu	-16(%rcx), %xmm2
	movups	%xmm0, -32(%r8)
	movdqu	-32(%rcx), %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm2, %xmm0
	movups	%xmm0, -16(%r8)
	cmpl	%r9d, %r11d
	jne	.L297
.L296:
	xorl	%r9d, %r9d
.L301:
	movdqu	16(%rcx,%r9,2), %xmm2
	incl	%r11d
	movdqu	(%rcx,%r9,2), %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm2, %xmm0
	movups	%xmm0, (%r8,%r9)
	addq	$16, %r9
	cmpl	116(%rsp), %r11d
	jb	.L301
	addq	128(%rsp), %rax
	addq	96(%rsp), %rdx
	movl	92(%rsp), %r9d
	cmpl	%r9d, 36(%rsp)
	je	.L278
	movl	124(%rsp), %ecx
	jmp	.L295
	.p2align 4,,7
.L267:
	testl	%r13d, %r13d
	js	.L278
	cmpb	$0, 77(%rsp)
	jne	.L337
	cmpl	$-6, 108(%rsp)
	ja	.L338
	xorl	%r9d, %r9d
	movq	%rdx, %rcx
	movq	%rax, %r8
.L290:
	movdqu	(%r8), %xmm0
	prefetcht0	160(%r8)
	prefetcht0	688(%rcx)
	prefetcht0	752(%rcx)
	prefetcht0	816(%rcx)
	prefetcht0	880(%rcx)
	movdqa	%xmm0, %xmm2
	addq	$64, %r8
	movdqa	%xmm0, %xmm3
	addq	$256, %rcx
	punpcklwd	%xmm0, %xmm2
	addl	$4, %r9d
	punpcklwd	%xmm6, %xmm3
	movdqa	%xmm0, %xmm1
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm0, %xmm1
	punpckhwd	%xmm3, %xmm2
	punpckhwd	%xmm6, %xmm0
	punpcklwd	%xmm3, %xmm4
	movups	%xmm2, -240(%rcx)
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm2
	movdqu	-48(%r8), %xmm0
	movups	%xmm2, -224(%rcx)
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm6, %xmm3
	punpcklwd	%xmm0, %xmm2
	movups	%xmm1, -208(%rcx)
	movdqa	%xmm0, %xmm1
	movups	%xmm4, -256(%rcx)
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm3, %xmm2
	punpckhwd	%xmm6, %xmm0
	punpcklwd	%xmm3, %xmm4
	movups	%xmm2, -176(%rcx)
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm2
	movdqu	-32(%r8), %xmm0
	movups	%xmm2, -160(%rcx)
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm6, %xmm3
	punpcklwd	%xmm0, %xmm2
	movups	%xmm1, -144(%rcx)
	movdqa	%xmm0, %xmm1
	movups	%xmm4, -192(%rcx)
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm3, %xmm2
	punpckhwd	%xmm6, %xmm0
	punpcklwd	%xmm3, %xmm4
	movups	%xmm2, -112(%rcx)
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm2
	movdqu	-16(%r8), %xmm0
	movups	%xmm2, -96(%rcx)
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm6, %xmm3
	punpcklwd	%xmm0, %xmm2
	movups	%xmm1, -80(%rcx)
	movdqa	%xmm0, %xmm1
	movups	%xmm4, -128(%rcx)
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm3, %xmm2
	punpckhwd	%xmm6, %xmm0
	punpcklwd	%xmm3, %xmm4
	movups	%xmm2, -48(%rcx)
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm2
	movups	%xmm4, -64(%rcx)
	movups	%xmm2, -32(%rcx)
	movups	%xmm1, -16(%rcx)
	cmpl	%r9d, 44(%rsp)
	jne	.L290
.L294:
	movdqu	(%r8), %xmm0
	addq	$64, %rcx
	addq	$16, %r8
	incl	%r9d
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm3
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm2
	punpcklwd	%xmm6, %xmm3
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm6, %xmm0
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm4
	movups	%xmm2, -48(%rcx)
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm2
	movups	%xmm4, -64(%rcx)
	movups	%xmm2, -32(%rcx)
	movups	%xmm1, -16(%rcx)
	cmpl	%r9d, 72(%rsp)
	ja	.L294
	addq	80(%rsp), %rax
	addq	64(%rsp), %rdx
	movl	36(%rsp), %r9d
	cmpl	%r9d, 40(%rsp)
	je	.L278
	movl	88(%rsp), %ecx
	jmp	.L288
	.p2align 4,,7
.L266:
	testl	%r13d, %r13d
	js	.L278
	movl	%r13d, %r8d
	.p2align 4,,7
.L287:
	movzwl	(%rax), %ecx
	decl	%r8d
	addq	$2, %rax
	addq	$6, %rdx
	movw	%cx, -2(%rdx)
	movw	%cx, -4(%rdx)
	movw	%cx, -6(%rdx)
	cmpl	$-1, %r8d
	jne	.L287
	jmp	.L278
	.p2align 4,,7
.L264:
	testl	%r13d, %r13d
	js	.L278
	cmpb	$0, 77(%rsp)
	.p2align 4,,3
	jne	.L335
	cmpl	$-6, 108(%rsp)
	ja	.L336
	movl	44(%rsp), %r11d
	xorl	%r9d, %r9d
	movq	%rdx, %rcx
	movq	%rax, %r8
.L281:
	movdqu	(%r8), %xmm0
	prefetcht0	304(%r8)
	addl	$4, %r9d
	prefetcht0	624(%rcx)
	prefetcht0	688(%rcx)
	addq	$64, %r8
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm6, %xmm0
	subq	$-128, %rcx
	punpcklwd	%xmm6, %xmm1
	movups	%xmm0, -112(%rcx)
	movups	%xmm1, -128(%rcx)
	movdqu	-48(%r8), %xmm0
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm6, %xmm0
	punpcklwd	%xmm6, %xmm1
	movups	%xmm0, -80(%rcx)
	movups	%xmm1, -96(%rcx)
	movdqu	-32(%r8), %xmm0
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm6, %xmm0
	punpcklwd	%xmm6, %xmm1
	movups	%xmm0, -48(%rcx)
	movups	%xmm1, -64(%rcx)
	movdqu	-16(%r8), %xmm0
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm6, %xmm0
	punpcklwd	%xmm6, %xmm1
	movups	%xmm0, -16(%rcx)
	movups	%xmm1, -32(%rcx)
	cmpl	%r9d, %r11d
	jne	.L281
.L280:
	xorl	%r9d, %r9d
.L286:
	movdqu	(%r8,%r9), %xmm0
	incl	%r11d
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm6, %xmm0
	punpcklwd	%xmm6, %xmm1
	movups	%xmm0, 16(%rcx,%r9,2)
	movups	%xmm1, (%rcx,%r9,2)
	addq	$16, %r9
	cmpl	%r11d, 72(%rsp)
	ja	.L286
	addq	80(%rsp), %rax
	addq	56(%rsp), %rdx
	movl	36(%rsp), %r9d
	cmpl	%r9d, 40(%rsp)
	je	.L278
	movl	88(%rsp), %ecx
	jmp	.L279
	.p2align 4,,7
.L263:
	leaq	.LC3(%rip), %rdx
	leaq	.LC8(%rip), %rcx
	movl	$1555, %r8d
	movl	%r10d, 120(%rsp)
	call	_assert
	movl	120(%rsp), %r10d
	jmp	.L278
	.p2align 4,,7
.L525:
	leaq	.LC3(%rip), %rdx
	leaq	.LC6(%rip), %rcx
	movl	$1526, %r8d
	call	_assert
	jmp	.L260
	.p2align 4,,7
.L347:
	movl	%r13d, %r8d
.L324:
	movzwl	(%rax), %r9d
	movl	$77, %ecx
	movl	%r9d, %r11d
	movzwl	2(%rax), %r9d
	imull	%ecx, %r11d
	imull	$150, %r9d, %ecx
	leal	(%r11,%rcx), %r9d
	movzwl	4(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r9d, %ecx
	sarl	$8, %ecx
	testl	%r8d, %r8d
	movw	%cx, (%rdx)
	movzwl	6(%rax), %ecx
	movw	%cx, 2(%rdx)
	je	.L278
	movzwl	8(%rax), %r9d
	movl	$77, %ecx
	movl	%r9d, %r11d
	movzwl	10(%rax), %r9d
	imull	%ecx, %r11d
	imull	$150, %r9d, %ecx
	leal	(%r11,%rcx), %r9d
	movzwl	12(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r9d, %ecx
	sarl	$8, %ecx
	cmpl	$1, %r8d
	movw	%cx, 4(%rdx)
	movzwl	14(%rax), %ecx
	movw	%cx, 6(%rdx)
	je	.L278
	movzwl	16(%rax), %r9d
	movl	$77, %ecx
	movl	%r9d, %r11d
	movzwl	18(%rax), %r9d
	imull	%ecx, %r11d
	imull	$150, %r9d, %ecx
	leal	(%r11,%rcx), %r9d
	movzwl	20(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r9d, %ecx
	sarl	$8, %ecx
	cmpl	$2, %r8d
	movw	%cx, 8(%rdx)
	movzwl	22(%rax), %ecx
	movw	%cx, 10(%rdx)
	je	.L278
	movzwl	24(%rax), %r9d
	movl	$77, %ecx
	movl	%r9d, %r11d
	movzwl	26(%rax), %r9d
	imull	%ecx, %r11d
	imull	$150, %r9d, %ecx
	leal	(%r11,%rcx), %r9d
	movzwl	28(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r9d, %ecx
	sarl	$8, %ecx
	cmpl	$3, %r8d
	movw	%cx, 12(%rdx)
	movzwl	30(%rax), %ecx
	movw	%cx, 14(%rdx)
	je	.L278
	movzwl	32(%rax), %r9d
	movl	$77, %ecx
	movl	%r9d, %r11d
	movzwl	34(%rax), %r9d
	imull	%ecx, %r11d
	imull	$150, %r9d, %ecx
	leal	(%r11,%rcx), %r9d
	movzwl	36(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r9d, %ecx
	sarl	$8, %ecx
	cmpl	$4, %r8d
	movw	%cx, 16(%rdx)
	movzwl	38(%rax), %ecx
	movw	%cx, 18(%rdx)
	je	.L278
	movzwl	40(%rax), %r9d
	movl	$77, %ecx
	movl	%r9d, %r11d
	movzwl	42(%rax), %r9d
	imull	%ecx, %r11d
	imull	$150, %r9d, %ecx
	leal	(%r11,%rcx), %r9d
	movzwl	44(%rax), %ecx
	movl	$29, %r11d
	imull	%r11d, %ecx
	addl	%r9d, %ecx
	sarl	$8, %ecx
	cmpl	$5, %r8d
	movw	%cx, 20(%rdx)
	movzwl	46(%rax), %ecx
	movw	%cx, 22(%rdx)
	je	.L278
	movzwl	48(%rax), %r8d
	movl	$77, %ecx
	movl	%r8d, %r9d
	movzwl	50(%rax), %r8d
	imull	%ecx, %r9d
	imull	$150, %r8d, %ecx
	leal	(%r9,%rcx), %r8d
	movzwl	52(%rax), %ecx
	movl	$29, %r9d
	imull	%r9d, %ecx
	addl	%r8d, %ecx
	sarl	$8, %ecx
	movw	%cx, 24(%rdx)
	movzwl	54(%rax), %eax
	movw	%ax, 26(%rdx)
	jmp	.L278
	.p2align 4,,7
.L335:
	movl	%r13d, %ecx
.L279:
	movzwl	(%rax), %r8d
	testl	%ecx, %ecx
	movw	$-1, 2(%rdx)
	movw	%r8w, (%rdx)
	je	.L278
	movzwl	2(%rax), %r8d
	cmpl	$1, %ecx
	movw	$-1, 6(%rdx)
	movw	%r8w, 4(%rdx)
	je	.L278
	movzwl	4(%rax), %r8d
	cmpl	$2, %ecx
	movw	$-1, 10(%rdx)
	movw	%r8w, 8(%rdx)
	je	.L278
	movzwl	6(%rax), %r8d
	cmpl	$3, %ecx
	movw	$-1, 14(%rdx)
	movw	%r8w, 12(%rdx)
	je	.L278
	movzwl	8(%rax), %r8d
	cmpl	$4, %ecx
	movw	$-1, 18(%rdx)
	movw	%r8w, 16(%rdx)
	je	.L278
	movzwl	10(%rax), %r8d
	cmpl	$5, %ecx
	movw	$-1, 22(%rdx)
	movw	%r8w, 20(%rdx)
	je	.L278
	movzwl	12(%rax), %eax
	movw	$-1, 26(%rdx)
	movw	%ax, 24(%rdx)
	jmp	.L278
	.p2align 4,,7
.L345:
	movl	%r13d, %ecx
.L317:
	movzwl	(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	2(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	4(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	testl	%ecx, %ecx
	movw	%r8w, (%rdx)
	je	.L278
	movzwl	8(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	10(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	12(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$1, %ecx
	movw	%r8w, 2(%rdx)
	je	.L278
	movzwl	16(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	18(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	20(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$2, %ecx
	movw	%r8w, 4(%rdx)
	je	.L278
	movzwl	24(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	26(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	28(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$3, %ecx
	movw	%r8w, 6(%rdx)
	je	.L278
	movzwl	32(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	34(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	36(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$4, %ecx
	movw	%r8w, 8(%rdx)
	je	.L278
	movzwl	40(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	42(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	44(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$5, %ecx
	movw	%r8w, 10(%rdx)
	je	.L278
	movzwl	48(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	50(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	52(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$6, %ecx
	movw	%r8w, 12(%rdx)
	je	.L278
	movzwl	56(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	58(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	60(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$7, %ecx
	movw	%r8w, 14(%rdx)
	je	.L278
	movzwl	64(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	66(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	68(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$8, %ecx
	movw	%r8w, 16(%rdx)
	je	.L278
	movzwl	72(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	74(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	76(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$9, %ecx
	movw	%r8w, 18(%rdx)
	je	.L278
	movzwl	80(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	82(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	84(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$10, %ecx
	movw	%r8w, 20(%rdx)
	je	.L278
	movzwl	88(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	90(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	92(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$11, %ecx
	movw	%r8w, 22(%rdx)
	je	.L278
	movzwl	96(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	98(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	100(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$12, %ecx
	movw	%r8w, 24(%rdx)
	je	.L278
	movzwl	104(%rax), %r9d
	movl	$77, %r8d
	movl	%r9d, %r11d
	movzwl	106(%rax), %r9d
	imull	%r8d, %r11d
	imull	$150, %r9d, %r8d
	leal	(%r11,%r8), %r9d
	movzwl	108(%rax), %r8d
	movl	$29, %r11d
	imull	%r11d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	$13, %ecx
	movw	%r8w, 26(%rdx)
	je	.L278
	movzwl	112(%rax), %r8d
	movl	$77, %ecx
	movl	$29, %r9d
	imull	%ecx, %r8d
	movzwl	114(%rax), %ecx
	imull	$150, %ecx, %ecx
	addl	%ecx, %r8d
	movzwl	116(%rax), %ecx
	imull	%r9d, %ecx
	addl	%r8d, %ecx
	sarl	$8, %ecx
	movw	%cx, 28(%rdx)
	jmp	.L278
	.p2align 4,,7
.L341:
	movl	%r13d, %ecx
.L303:
	movzwl	(%rax), %r8d
	testl	%ecx, %ecx
	movw	%r8w, 4(%rdx)
	movw	%r8w, 2(%rdx)
	movw	%r8w, (%rdx)
	movzwl	2(%rax), %r8d
	movw	%r8w, 6(%rdx)
	je	.L278
	movzwl	4(%rax), %r8d
	cmpl	$1, %ecx
	movw	%r8w, 12(%rdx)
	movw	%r8w, 10(%rdx)
	movw	%r8w, 8(%rdx)
	movzwl	6(%rax), %r8d
	movw	%r8w, 14(%rdx)
	je	.L278
	movzwl	8(%rax), %r8d
	cmpl	$2, %ecx
	movw	%r8w, 20(%rdx)
	movw	%r8w, 18(%rdx)
	movw	%r8w, 16(%rdx)
	movzwl	10(%rax), %r8d
	movw	%r8w, 22(%rdx)
	je	.L278
	movzwl	12(%rax), %r8d
	cmpl	$3, %ecx
	movw	%r8w, 28(%rdx)
	movw	%r8w, 26(%rdx)
	movw	%r8w, 24(%rdx)
	movzwl	14(%rax), %r8d
	movw	%r8w, 30(%rdx)
	je	.L278
	movzwl	16(%rax), %r8d
	cmpl	$4, %ecx
	movw	%r8w, 36(%rdx)
	movw	%r8w, 34(%rdx)
	movw	%r8w, 32(%rdx)
	movzwl	18(%rax), %r8d
	movw	%r8w, 38(%rdx)
	je	.L278
	movzwl	20(%rax), %r8d
	cmpl	$5, %ecx
	movw	%r8w, 44(%rdx)
	movw	%r8w, 42(%rdx)
	movw	%r8w, 40(%rdx)
	movzwl	22(%rax), %r8d
	movw	%r8w, 46(%rdx)
	je	.L278
	movzwl	24(%rax), %ecx
	movw	%cx, 52(%rdx)
	movw	%cx, 50(%rdx)
	movw	%cx, 48(%rdx)
	movzwl	26(%rax), %eax
	movw	%ax, 54(%rdx)
	jmp	.L278
	.p2align 4,,7
.L339:
	movl	%r13d, %ecx
.L295:
	movzwl	(%rax), %r8d
	testl	%ecx, %ecx
	movw	%r8w, (%rdx)
	je	.L278
	movzwl	4(%rax), %r8d
	cmpl	$1, %ecx
	movw	%r8w, 2(%rdx)
	je	.L278
	movzwl	8(%rax), %r8d
	cmpl	$2, %ecx
	movw	%r8w, 4(%rdx)
	je	.L278
	movzwl	12(%rax), %r8d
	cmpl	$3, %ecx
	movw	%r8w, 6(%rdx)
	je	.L278
	movzwl	16(%rax), %r8d
	cmpl	$4, %ecx
	movw	%r8w, 8(%rdx)
	je	.L278
	movzwl	20(%rax), %r8d
	cmpl	$5, %ecx
	movw	%r8w, 10(%rdx)
	je	.L278
	movzwl	24(%rax), %r8d
	cmpl	$6, %ecx
	movw	%r8w, 12(%rdx)
	je	.L278
	movzwl	28(%rax), %r8d
	cmpl	$7, %ecx
	movw	%r8w, 14(%rdx)
	je	.L278
	movzwl	32(%rax), %r8d
	cmpl	$8, %ecx
	movw	%r8w, 16(%rdx)
	je	.L278
	movzwl	36(%rax), %r8d
	cmpl	$9, %ecx
	movw	%r8w, 18(%rdx)
	je	.L278
	movzwl	40(%rax), %r8d
	cmpl	$10, %ecx
	movw	%r8w, 20(%rdx)
	je	.L278
	movzwl	44(%rax), %r8d
	cmpl	$11, %ecx
	movw	%r8w, 22(%rdx)
	je	.L278
	movzwl	48(%rax), %r8d
	cmpl	$12, %ecx
	movw	%r8w, 24(%rdx)
	je	.L278
	movzwl	52(%rax), %r8d
	cmpl	$13, %ecx
	movw	%r8w, 26(%rdx)
	je	.L278
	movzwl	56(%rax), %eax
	movw	%ax, 28(%rdx)
	jmp	.L278
	.p2align 4,,7
.L337:
	movl	%r13d, %ecx
.L288:
	movzwl	(%rax), %r8d
	testl	%ecx, %ecx
	movw	$-1, 6(%rdx)
	movw	%r8w, 4(%rdx)
	movw	%r8w, 2(%rdx)
	movw	%r8w, (%rdx)
	je	.L278
	movzwl	2(%rax), %r8d
	cmpl	$1, %ecx
	movw	$-1, 14(%rdx)
	movw	%r8w, 12(%rdx)
	movw	%r8w, 10(%rdx)
	movw	%r8w, 8(%rdx)
	je	.L278
	movzwl	4(%rax), %r8d
	cmpl	$2, %ecx
	movw	$-1, 22(%rdx)
	movw	%r8w, 20(%rdx)
	movw	%r8w, 18(%rdx)
	movw	%r8w, 16(%rdx)
	je	.L278
	movzwl	6(%rax), %r8d
	cmpl	$3, %ecx
	movw	$-1, 30(%rdx)
	movw	%r8w, 28(%rdx)
	movw	%r8w, 26(%rdx)
	movw	%r8w, 24(%rdx)
	je	.L278
	movzwl	8(%rax), %r8d
	cmpl	$4, %ecx
	movw	$-1, 38(%rdx)
	movw	%r8w, 36(%rdx)
	movw	%r8w, 34(%rdx)
	movw	%r8w, 32(%rdx)
	je	.L278
	movzwl	10(%rax), %r8d
	cmpl	$5, %ecx
	movw	$-1, 46(%rdx)
	movw	%r8w, 44(%rdx)
	movw	%r8w, 42(%rdx)
	movw	%r8w, 40(%rdx)
	je	.L278
	movzwl	12(%rax), %eax
	movw	$-1, 54(%rdx)
	movw	%ax, 52(%rdx)
	movw	%ax, 50(%rdx)
	movw	%ax, 48(%rdx)
	jmp	.L278
	.p2align 4,,7
.L334:
	movq	%rcx, %rax
	jmp	.L259
.L348:
	movq	%rdx, %r8
	movq	%rax, %rcx
	xorl	%r9d, %r9d
	jmp	.L325
.L340:
	movq	%rdx, %r8
	movq	%rax, %rcx
	xorl	%r11d, %r11d
	jmp	.L296
.L336:
	movq	%rdx, %rcx
	movq	%rax, %r8
	xorl	%r11d, %r11d
	jmp	.L280
.L342:
	movq	%rdx, %rcx
	movq	%rax, %r8
	xorl	%r9d, %r9d
	jmp	.L309
.L346:
	movq	%rdx, %r8
	movq	%rax, %rcx
	xorl	%r9d, %r9d
	jmp	.L318
.L338:
	movq	%rdx, %rcx
	movq	%rax, %r8
	xorl	%r9d, %r9d
	jmp	.L294
.L261:
	movq	%r15, %rcx
	call	free
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L259
	.seh_endproc
	.p2align 4,,15
	.def	_ZL28stbi__resample_row_hv_2_simdPhS_S_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL28stbi__resample_row_hv_2_simdPhS_S_ii
_ZL28stbi__resample_row_hv_2_simdPhS_S_ii:
.LFB649:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	cmpl	$1, %r9d
	movq	%rcx, %rax
	je	.L537
	movzbl	(%rdx), %ecx
	leal	-1(%r9), %edi
	movl	%edi, %esi
	leal	(%rcx,%rcx,2), %r10d
	movzbl	(%r8), %ecx
	addl	%r10d, %ecx
	andl	$-8, %esi
	jle	.L533
	pxor	%xmm4, %xmm4
	movdqa	.LC9(%rip), %xmm5
	movq	%rax, %rbx
	xorl	%r10d, %r10d
	.p2align 4,,7
.L530:
	movq	(%rdx,%r10), %xmm1
	addq	$16, %rbx
	movq	(%r8,%r10), %xmm3
	punpcklbw	%xmm4, %xmm1
	punpcklbw	%xmm4, %xmm3
	movdqa	%xmm1, %xmm0
	psubw	%xmm1, %xmm3
	psllw	$2, %xmm0
	paddw	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	movdqa	%xmm3, %xmm2
	movdqa	%xmm3, %xmm1
	pslldq	$2, %xmm0
	pinsrw	$0, %ecx, %xmm0
	movzbl	8(%rdx,%r10), %ecx
	psrldq	$2, %xmm2
	psllw	$2, %xmm1
	paddw	%xmm5, %xmm1
	psubw	%xmm3, %xmm0
	paddw	%xmm1, %xmm0
	leal	(%rcx,%rcx,2), %r11d
	movzbl	8(%r8,%r10), %ecx
	addl	%ecx, %r11d
	pinsrw	$7, %r11d, %xmm2
	psubw	%xmm3, %xmm2
	paddw	%xmm1, %xmm2
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm2, %xmm0
	punpcklwd	%xmm2, %xmm1
	psrlw	$4, %xmm0
	psrlw	$4, %xmm1
	movdqa	%xmm1, %xmm2
	packuswb	%xmm0, %xmm2
	movups	%xmm2, -16(%rbx)
	movzbl	7(%rdx,%r10), %ecx
	leal	(%rcx,%rcx,2), %r11d
	movzbl	7(%r8,%r10), %ecx
	addq	$8, %r10
	addl	%r11d, %ecx
	cmpl	%r10d, %esi
	jg	.L530
	decl	%esi
	shrl	$3, %esi
	leal	1(%rsi), %r10d
	leal	0(,%r10,8), %esi
	sall	$4, %r10d
	movslq	%r10d, %r10
	movslq	%esi, %rbx
	incl	%esi
.L529:
	movzbl	(%rdx,%rbx), %r11d
	leal	(%r11,%r11,2), %ebp
	movzbl	(%r8,%rbx), %r11d
	addl	%r11d, %ebp
	leal	0(%rbp,%rbp,2), %r11d
	leal	8(%rcx,%r11), %ecx
	sarl	$4, %ecx
	cmpl	%esi, %r9d
	movb	%cl, (%rax,%r10)
	jle	.L534
	leal	(%rsi,%rsi), %ebx
	subl	%esi, %edi
	movslq	%esi, %rsi
	addq	%rsi, %rdx
	incq	%rdi
	xorl	%r11d, %r11d
	movslq	%ebx, %rbx
	addq	%r8, %rsi
	addq	%rax, %rbx
	.p2align 4,,7
.L532:
	movzbl	(%rdx,%r11), %ecx
	leal	(%rcx,%rcx,2), %r10d
	movzbl	(%rsi,%r11), %ecx
	addl	%ecx, %r10d
	leal	0(%rbp,%rbp,2), %ecx
	leal	8(%r10,%rcx), %r8d
	leal	(%r10,%r10,2), %ecx
	sarl	$4, %r8d
	movb	%r8b, -1(%rbx,%r11,2)
	leal	8(%rbp,%rcx), %r8d
	movl	%r10d, %ebp
	sarl	$4, %r8d
	movb	%r8b, (%rbx,%r11,2)
	incq	%r11
	cmpq	%r11, %rdi
	jne	.L532
.L531:
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
	.p2align 4,,7
.L537:
	movzbl	(%rdx), %edx
	leal	(%rdx,%rdx,2), %ecx
	movzbl	(%r8), %edx
	leal	2(%rcx,%rdx), %edx
	sarl	$2, %edx
	movb	%dl, 1(%rax)
	movb	%dl, (%rax)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L534:
	movl	%ebp, %r10d
	jmp	.L531
.L533:
	movl	$1, %esi
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	jmp	.L529
	.seh_endproc
	.p2align 4,,15
	.def	_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii
_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii:
.LFB652:
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
	xorl	%eax, %eax
	movslq	200(%rsp), %rsi
	movl	192(%rsp), %ebx
	cmpl	$4, %esi
	je	.L553
.L539:
	cmpl	%eax, %ebx
	jle	.L538
	decl	%ebx
	xorl	%r11d, %r11d
	subl	%eax, %ebx
	cltq
	incq	%rbx
	addq	%rax, %rdx
	addq	%rax, %r9
	addq	%rax, %r8
	.p2align 4,,7
.L550:
	movzbl	(%r9,%r11), %r10d
	movzbl	(%rdx,%r11), %eax
	movzbl	(%r8,%r11), %r12d
	addl	$-128, %r10d
	sall	$20, %eax
	imull	$1470208, %r10d, %edi
	addl	$524288, %eax
	addl	$-128, %r12d
	imull	$-748800, %r10d, %r10d
	addl	%eax, %edi
	leal	(%r10,%rax), %ebp
	sarl	$20, %edi
	imull	$-360960, %r12d, %r10d
	imull	$1858048, %r12d, %r12d
	xorw	%r10w, %r10w
	addl	%ebp, %r10d
	addl	%r12d, %eax
	sarl	$20, %r10d
	sarl	$20, %eax
	cmpl	$255, %edi
	jbe	.L544
	notl	%edi
	sarl	$31, %edi
.L544:
	cmpl	$255, %r10d
	jbe	.L546
	notl	%r10d
	sarl	$31, %r10d
.L546:
	cmpl	$255, %eax
	jbe	.L548
	notl	%eax
	sarl	$31, %eax
.L548:
	incq	%r11
	movb	%dil, (%rcx)
	movb	%r10b, 1(%rcx)
	movb	%al, 2(%rcx)
	movb	$-1, 3(%rcx)
	addq	%rsi, %rcx
	cmpq	%r11, %rbx
	jne	.L550
.L538:
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
	.p2align 4,,7
.L553:
	cmpl	$7, %ebx
	jle	.L539
	leal	-8(%rbx), %ebp
	pxor	%xmm3, %xmm3
	movdqa	.LC10(%rip), %xmm10
	movq	%rcx, %r10
	shrl	$3, %ebp
	xorl	%eax, %eax
	movl	%ebp, %edi
	movdqa	.LC11(%rip), %xmm4
	incq	%rdi
	leaq	0(,%rdi,8), %r11
	movdqa	.LC12(%rip), %xmm9
	movdqa	.LC13(%rip), %xmm8
	movdqa	.LC14(%rip), %xmm7
	movdqa	.LC15(%rip), %xmm6
	movdqa	.LC2(%rip), %xmm5
	.p2align 4,,7
.L542:
	movdqa	%xmm10, %xmm12
	movdqa	%xmm9, %xmm11
	movq	(%r9,%rax), %xmm1
	addq	$32, %r10
	movq	(%rdx,%rax), %xmm0
	pxor	%xmm4, %xmm1
	punpcklbw	%xmm0, %xmm12
	movdqa	%xmm3, %xmm0
	movq	(%r8,%rax), %xmm2
	addq	$8, %rax
	punpcklbw	%xmm1, %xmm0
	pxor	%xmm4, %xmm2
	psrlw	$4, %xmm12
	movdqa	%xmm0, %xmm1
	movdqa	%xmm3, %xmm0
	pmulhw	%xmm1, %xmm11
	pmulhw	%xmm6, %xmm1
	paddw	%xmm12, %xmm11
	punpcklbw	%xmm2, %xmm0
	psraw	$4, %xmm11
	movdqa	%xmm0, %xmm2
	movdqa	%xmm8, %xmm0
	pmulhw	%xmm2, %xmm0
	paddw	%xmm12, %xmm0
	paddw	%xmm1, %xmm0
	movdqa	%xmm11, %xmm1
	pmulhw	%xmm7, %xmm2
	paddw	%xmm12, %xmm2
	psraw	$4, %xmm2
	psraw	$4, %xmm0
	packuswb	%xmm5, %xmm0
	packuswb	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm0, %xmm1
	punpcklbw	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm0, %xmm2
	punpcklwd	%xmm0, %xmm1
	movups	%xmm2, -16(%r10)
	movups	%xmm1, -32(%r10)
	cmpq	%r11, %rax
	jne	.L542
	salq	$5, %rdi
	leal	8(,%rbp,8), %eax
	addq	%rdi, %rcx
	jmp	.L539
	.seh_endproc
	.p2align 4,,15
	.def	_ZL15stbi__idct_simdPhiPs;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbi__idct_simdPhiPs
_ZL15stbi__idct_simdPhiPs:
.LFB633:
	subq	$280, %rsp
	.seh_stackalloc	280
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	movaps	%xmm7, 128(%rsp)
	.seh_savexmm	%xmm7, 128
	movaps	%xmm8, 144(%rsp)
	.seh_savexmm	%xmm8, 144
	movaps	%xmm9, 160(%rsp)
	.seh_savexmm	%xmm9, 160
	movaps	%xmm10, 176(%rsp)
	.seh_savexmm	%xmm10, 176
	movaps	%xmm11, 192(%rsp)
	.seh_savexmm	%xmm11, 192
	movaps	%xmm12, 208(%rsp)
	.seh_savexmm	%xmm12, 208
	movaps	%xmm13, 224(%rsp)
	.seh_savexmm	%xmm13, 224
	movaps	%xmm14, 240(%rsp)
	.seh_savexmm	%xmm14, 240
	movaps	%xmm15, 256(%rsp)
	.seh_savexmm	%xmm15, 256
	.seh_endprologue
	movslq	%edx, %rdx
	movdqa	96(%r8), %xmm5
	movdqa	32(%r8), %xmm1
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm5, %xmm1
	movdqa	80(%r8), %xmm0
	punpcklwd	%xmm5, %xmm3
	movdqa	16(%r8), %xmm2
	movdqa	%xmm1, %xmm5
	movdqa	%xmm3, %xmm7
	movdqa	%xmm3, %xmm13
	pmaddwd	.LC16(%rip), %xmm5
	movdqa	%xmm1, %xmm3
	movaps	%xmm5, 16(%rsp)
	pmaddwd	.LC16(%rip), %xmm7
	pmaddwd	.LC17(%rip), %xmm13
	pmaddwd	.LC17(%rip), %xmm3
	movaps	%xmm3, 48(%rsp)
	movaps	%xmm7, (%rsp)
	movaps	%xmm13, 32(%rsp)
	movdqa	(%r8), %xmm5
	movdqa	64(%r8), %xmm3
	movdqa	%xmm5, %xmm1
	psubw	%xmm3, %xmm5
	movdqa	112(%r8), %xmm6
	paddw	%xmm3, %xmm1
	movdqa	%xmm1, %xmm7
	pxor	%xmm1, %xmm1
	movdqa	48(%r8), %xmm4
	movdqa	%xmm6, %xmm12
	movdqa	%xmm1, %xmm14
	movdqa	%xmm1, %xmm3
	movdqa	%xmm1, %xmm9
	punpckhwd	%xmm5, %xmm14
	movdqa	%xmm1, %xmm8
	punpcklwd	%xmm5, %xmm3
	punpckhwd	%xmm7, %xmm9
	movdqa	%xmm14, %xmm5
	movdqa	%xmm0, %xmm14
	punpckhwd	%xmm4, %xmm12
	psrad	$4, %xmm3
	punpcklwd	%xmm2, %xmm14
	movdqa	%xmm9, %xmm11
	psrad	$4, %xmm5
	movdqa	%xmm6, %xmm9
	punpcklwd	%xmm7, %xmm8
	psrad	$4, %xmm11
	movdqa	%xmm12, %xmm7
	movdqa	%xmm14, %xmm10
	movdqa	%xmm0, %xmm14
	punpcklwd	%xmm4, %xmm9
	paddw	%xmm0, %xmm4
	movaps	%xmm11, 80(%rsp)
	pmaddwd	.LC19(%rip), %xmm7
	punpckhwd	%xmm2, %xmm14
	paddw	%xmm6, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm8, %xmm15
	movdqa	%xmm12, %xmm11
	punpcklwd	%xmm4, %xmm0
	movdqa	%xmm9, %xmm8
	psrad	$4, %xmm15
	movdqa	%xmm10, %xmm12
	pmaddwd	.LC18(%rip), %xmm11
	pmaddwd	.LC19(%rip), %xmm9
	movdqa	%xmm14, %xmm13
	punpckhwd	%xmm4, %xmm2
	pmaddwd	.LC18(%rip), %xmm8
	movaps	%xmm15, 64(%rsp)
	pmaddwd	.LC20(%rip), %xmm12
	movdqa	%xmm0, %xmm6
	pmaddwd	.LC20(%rip), %xmm13
	pmaddwd	.LC23(%rip), %xmm0
	movdqa	%xmm2, %xmm4
	paddd	%xmm0, %xmm9
	pmaddwd	.LC23(%rip), %xmm2
	paddd	%xmm2, %xmm13
	paddd	%xmm7, %xmm2
	pmaddwd	.LC21(%rip), %xmm10
	movdqa	.LC22(%rip), %xmm15
	pmaddwd	.LC21(%rip), %xmm14
	paddd	%xmm0, %xmm12
	pmaddwd	%xmm15, %xmm6
	movdqa	64(%rsp), %xmm7
	paddd	%xmm6, %xmm8
	pmaddwd	%xmm15, %xmm4
	paddd	%xmm6, %xmm10
	paddd	%xmm4, %xmm11
	movaps	%xmm8, 96(%rsp)
	paddd	%xmm4, %xmm14
	paddd	32(%rsp), %xmm7
	movdqa	%xmm9, %xmm8
	movdqa	.LC24(%rip), %xmm9
	movdqa	80(%rsp), %xmm6
	paddd	%xmm9, %xmm7
	movdqa	%xmm7, %xmm4
	psubd	%xmm10, %xmm7
	psrad	$10, %xmm7
	paddd	48(%rsp), %xmm6
	paddd	%xmm9, %xmm6
	movdqa	%xmm6, %xmm0
	paddd	%xmm10, %xmm4
	movdqa	16(%rsp), %xmm10
	psubd	%xmm14, %xmm6
	paddd	%xmm14, %xmm0
	psrad	$10, %xmm4
	psrad	$10, %xmm0
	paddd	%xmm5, %xmm10
	packssdw	%xmm0, %xmm4
	paddd	%xmm9, %xmm10
	movdqa	(%rsp), %xmm0
	movdqa	%xmm10, %xmm14
	psubd	16(%rsp), %xmm5
	psrad	$10, %xmm6
	paddd	%xmm9, %xmm5
	packssdw	%xmm6, %xmm7
	paddd	%xmm3, %xmm0
	paddd	%xmm2, %xmm14
	paddd	%xmm9, %xmm0
	psubd	%xmm2, %xmm10
	movdqa	%xmm0, %xmm6
	psubd	(%rsp), %xmm3
	movdqa	%xmm5, %xmm2
	paddd	%xmm9, %xmm3
	psrad	$10, %xmm10
	paddd	%xmm8, %xmm6
	psubd	%xmm8, %xmm0
	psrad	$10, %xmm0
	paddd	%xmm13, %xmm2
	packssdw	%xmm10, %xmm0
	psubd	%xmm13, %xmm5
	movdqa	%xmm2, %xmm8
	movdqa	%xmm3, %xmm10
	psrad	$10, %xmm5
	movdqa	%xmm3, %xmm2
	psrad	$10, %xmm14
	psrad	$10, %xmm6
	movdqa	64(%rsp), %xmm3
	psubd	%xmm12, %xmm10
	psrad	$10, %xmm10
	paddd	%xmm12, %xmm2
	packssdw	%xmm5, %xmm10
	psrad	$10, %xmm8
	movdqa	96(%rsp), %xmm12
	psubd	32(%rsp), %xmm3
	psrad	$10, %xmm2
	paddd	%xmm9, %xmm3
	packssdw	%xmm8, %xmm2
	movdqa	80(%rsp), %xmm5
	movdqa	%xmm12, %xmm8
	packssdw	%xmm14, %xmm6
	psubd	48(%rsp), %xmm5
	paddd	%xmm5, %xmm9
	movdqa	%xmm9, %xmm5
	paddd	%xmm3, %xmm8
	psubd	%xmm12, %xmm3
	psrad	$10, %xmm8
	paddd	%xmm11, %xmm5
	psrad	$10, %xmm5
	packssdw	%xmm5, %xmm8
	movdqa	%xmm3, %xmm5
	psubd	%xmm11, %xmm9
	psrad	$10, %xmm9
	movdqa	%xmm4, %xmm3
	psrad	$10, %xmm5
	packssdw	%xmm9, %xmm5
	movdqa	%xmm6, %xmm9
	punpckhwd	%xmm10, %xmm6
	punpcklwd	%xmm10, %xmm9
	movdqa	%xmm2, %xmm10
	punpcklwd	%xmm5, %xmm3
	punpckhwd	%xmm5, %xmm4
	movdqa	%xmm8, %xmm5
	punpcklwd	%xmm0, %xmm10
	punpcklwd	%xmm7, %xmm5
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm3, %xmm0
	punpckhwd	%xmm7, %xmm8
	movdqa	%xmm9, %xmm7
	punpckhwd	%xmm10, %xmm3
	punpckhwd	%xmm5, %xmm9
	punpcklwd	%xmm5, %xmm7
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm5
	movdqa	%xmm3, %xmm2
	punpcklwd	%xmm10, %xmm0
	movdqa	%xmm6, %xmm10
	punpckhwd	%xmm8, %xmm6
	punpckhwd	%xmm9, %xmm3
	punpcklwd	%xmm9, %xmm2
	movdqa	%xmm4, %xmm9
	punpckhwd	%xmm6, %xmm4
	punpcklwd	%xmm6, %xmm9
	movdqa	%xmm2, %xmm6
	punpcklwd	%xmm8, %xmm10
	movdqa	%xmm0, %xmm8
	punpcklwd	%xmm9, %xmm6
	punpckhwd	%xmm9, %xmm2
	movdqa	%xmm1, %xmm9
	punpckhwd	%xmm7, %xmm0
	punpcklwd	%xmm7, %xmm8
	movdqa	%xmm5, %xmm7
	movdqa	%xmm6, %xmm11
	movdqa	%xmm2, %xmm12
	movdqa	%xmm6, %xmm13
	movdqa	%xmm2, %xmm6
	pmaddwd	.LC16(%rip), %xmm11
	punpcklwd	%xmm10, %xmm7
	pmaddwd	.LC16(%rip), %xmm12
	movdqa	%xmm8, %xmm2
	movaps	%xmm11, (%rsp)
	punpckhwd	%xmm10, %xmm5
	movaps	%xmm12, 16(%rsp)
	pmaddwd	.LC17(%rip), %xmm13
	pmaddwd	.LC17(%rip), %xmm6
	paddw	%xmm7, %xmm2
	punpckhwd	%xmm2, %xmm9
	psubw	%xmm7, %xmm8
	movaps	%xmm6, 48(%rsp)
	movdqa	%xmm1, %xmm6
	movdqa	%xmm4, %xmm7
	movdqa	%xmm4, %xmm10
	psrad	$4, %xmm9
	punpcklwd	%xmm2, %xmm6
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm8, %xmm1
	punpcklwd	%xmm3, %xmm7
	punpcklwd	%xmm8, %xmm2
	movdqa	%xmm5, %xmm8
	punpckhwd	%xmm3, %xmm10
	psrad	$4, %xmm1
	punpcklwd	%xmm0, %xmm8
	movdqa	%xmm6, %xmm14
	movdqa	%xmm7, %xmm12
	psrad	$4, %xmm2
	movdqa	%xmm10, %xmm6
	psrad	$4, %xmm14
	movdqa	%xmm7, %xmm10
	movaps	%xmm14, 64(%rsp)
	pmaddwd	.LC19(%rip), %xmm12
	movdqa	%xmm5, %xmm14
	paddw	%xmm3, %xmm5
	pmaddwd	.LC18(%rip), %xmm10
	movdqa	%xmm8, %xmm7
	movdqa	%xmm6, %xmm11
	pmaddwd	.LC19(%rip), %xmm6
	movaps	%xmm12, 80(%rsp)
	pmaddwd	.LC21(%rip), %xmm8
	punpckhwd	%xmm0, %xmm14
	pmaddwd	.LC20(%rip), %xmm7
	paddw	%xmm4, %xmm0
	movdqa	%xmm7, %xmm12
	movdqa	%xmm0, %xmm7
	pmaddwd	.LC18(%rip), %xmm11
	punpckhwd	%xmm5, %xmm0
	punpcklwd	%xmm5, %xmm7
	movdqa	%xmm15, %xmm4
	movaps	%xmm13, 32(%rsp)
	movdqa	%xmm14, %xmm13
	pmaddwd	%xmm0, %xmm4
	pmaddwd	.LC23(%rip), %xmm0
	movdqa	%xmm7, %xmm3
	paddd	%xmm4, %xmm11
	pmaddwd	.LC21(%rip), %xmm14
	pmaddwd	.LC20(%rip), %xmm13
	paddd	%xmm0, %xmm13
	paddd	%xmm6, %xmm0
	pmaddwd	%xmm15, %xmm3
	movdqa	64(%rsp), %xmm6
	paddd	%xmm4, %xmm14
	movdqa	%xmm3, %xmm5
	movdqa	%xmm7, %xmm3
	movdqa	80(%rsp), %xmm7
	paddd	32(%rsp), %xmm6
	pmaddwd	.LC23(%rip), %xmm3
	paddd	%xmm5, %xmm10
	paddd	%xmm3, %xmm12
	paddd	%xmm3, %xmm7
	paddd	%xmm5, %xmm8
	movdqa	.LC25(%rip), %xmm3
	movdqa	%xmm14, %xmm15
	movdqa	%xmm8, %xmm4
	movdqa	48(%rsp), %xmm5
	paddd	%xmm3, %xmm6
	paddd	%xmm6, %xmm4
	psubd	%xmm8, %xmm6
	psrad	$17, %xmm4
	movdqa	16(%rsp), %xmm8
	paddd	%xmm9, %xmm5
	paddd	%xmm3, %xmm5
	paddd	%xmm5, %xmm15
	psrad	$17, %xmm15
	packssdw	%xmm15, %xmm4
	movdqa	%xmm0, %xmm15
	psubd	%xmm14, %xmm5
	paddd	%xmm1, %xmm8
	psrad	$17, %xmm5
	paddd	%xmm3, %xmm8
	psubd	16(%rsp), %xmm1
	paddd	%xmm8, %xmm15
	paddd	%xmm3, %xmm1
	movdqa	%xmm7, %xmm14
	psubd	%xmm0, %xmm8
	psrad	$17, %xmm6
	movdqa	%xmm1, %xmm0
	packssdw	%xmm5, %xmm6
	movdqa	(%rsp), %xmm5
	psubd	%xmm13, %xmm1
	paddd	%xmm13, %xmm0
	psrad	$17, %xmm1
	psubd	48(%rsp), %xmm9
	paddd	%xmm2, %xmm5
	psubd	(%rsp), %xmm2
	paddd	%xmm3, %xmm5
	paddd	%xmm3, %xmm2
	paddd	%xmm5, %xmm14
	psubd	%xmm7, %xmm5
	movdqa	%xmm0, %xmm7
	psrad	$17, %xmm8
	psrad	$17, %xmm5
	movdqa	%xmm2, %xmm0
	packssdw	%xmm8, %xmm5
	psrad	$17, %xmm15
	psrad	$17, %xmm7
	psrad	$17, %xmm14
	packssdw	%xmm15, %xmm14
	paddd	%xmm12, %xmm0
	psrad	$17, %xmm0
	packssdw	%xmm7, %xmm0
	movdqa	%xmm1, %xmm7
	movdqa	%xmm2, %xmm1
	movdqa	64(%rsp), %xmm2
	psubd	%xmm12, %xmm1
	psrad	$17, %xmm1
	packssdw	%xmm7, %xmm1
	psubd	32(%rsp), %xmm2
	paddd	%xmm3, %xmm2
	paddd	%xmm9, %xmm3
	movdqa	%xmm2, %xmm7
	psubd	%xmm10, %xmm2
	psrad	$17, %xmm2
	movdqa	%xmm3, %xmm8
	psubd	%xmm11, %xmm3
	psrad	$17, %xmm3
	paddd	%xmm10, %xmm7
	psrad	$17, %xmm7
	packssdw	%xmm3, %xmm2
	paddd	%xmm11, %xmm8
	psrad	$17, %xmm8
	packssdw	%xmm8, %xmm7
	packuswb	%xmm14, %xmm4
	packuswb	%xmm1, %xmm2
	packuswb	%xmm7, %xmm0
	packuswb	%xmm6, %xmm5
	movdqa	%xmm4, %xmm1
	punpckhbw	%xmm2, %xmm4
	movdqa	%xmm0, %xmm6
	punpcklbw	%xmm2, %xmm1
	punpckhbw	%xmm5, %xmm0
	punpcklbw	%xmm5, %xmm6
	movdqa	%xmm1, %xmm2
	movdqa	%xmm0, %xmm3
	punpckhbw	%xmm6, %xmm1
	punpcklbw	%xmm6, %xmm2
	movdqa	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
	punpckhbw	%xmm3, %xmm4
	punpcklbw	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm1, %xmm3
	punpckhbw	%xmm1, %xmm2
	movq	%xmm3, (%rsp)
	pshufd	$78, %xmm3, %xmm3
	movq	(%rsp), %rax
	movdqa	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	movq	%xmm3, (%rsp)
	punpckhbw	%xmm4, %xmm0
	movq	%rax, (%rcx)
	leaq	(%rcx,%rdx), %rax
	movq	(%rsp), %rcx
	movq	%xmm1, (%rsp)
	pshufd	$78, %xmm1, %xmm1
	punpcklbw	%xmm4, %xmm2
	movq	%rcx, (%rax)
	addq	%rdx, %rax
	movq	(%rsp), %rcx
	movq	%xmm1, (%rsp)
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	addq	%rdx, %rax
	movq	%xmm2, (%rsp)
	pshufd	$78, %xmm2, %xmm2
	movq	%rcx, (%rax)
	addq	%rdx, %rax
	movq	(%rsp), %rcx
	movq	%xmm2, (%rsp)
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	addq	%rdx, %rax
	movq	%xmm0, (%rsp)
	pshufd	$78, %xmm0, %xmm0
	movq	%rcx, (%rax)
	movq	(%rsp), %rcx
	movq	%xmm0, (%rsp)
	movq	%rcx, (%rax,%rdx)
	movq	(%rsp), %rcx
	movq	%rcx, (%rax,%rdx,2)
	movaps	112(%rsp), %xmm6
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
	movaps	160(%rsp), %xmm9
	movaps	176(%rsp), %xmm10
	movaps	192(%rsp), %xmm11
	movaps	208(%rsp), %xmm12
	movaps	224(%rsp), %xmm13
	movaps	240(%rsp), %xmm14
	movaps	256(%rsp), %xmm15
	addq	$280, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL10stbi__getnP13stbi__contextPhi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10stbi__getnP13stbi__contextPhi
_ZL10stbi__getnP13stbi__contextPhi:
.LFB610:
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
	cmpq	$0, 16(%rcx)
	movq	%rcx, %rsi
	movq	%rdx, %r9
	movslq	%r8d, %rbx
	movq	192(%rcx), %rcx
	movq	184(%rsi), %rdx
	je	.L557
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	cmpl	%ebx, %edi
	jl	.L560
.L557:
	leaq	(%rdx,%rbx), %r8
	xorl	%eax, %eax
	cmpq	%r8, %rcx
	jb	.L558
	movq	%rbx, %r8
	movq	%r9, %rcx
	call	memcpy
	addq	%rbx, 184(%rsi)
	movl	$1, %eax
.L558:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L560:
	movslq	%edi, %rbp
	movq	%r9, %rcx
	subl	%edi, %ebx
	movq	%rbp, %r8
	call	memcpy
	movq	40(%rsi), %rcx
	leaq	(%rax,%rbp), %rdx
	movl	%ebx, %r8d
	call	*16(%rsi)
	cmpl	%eax, %ebx
	movq	192(%rsi), %rax
	movq	%rax, 184(%rsi)
	sete	%al
	movzbl	%al, %eax
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
.LFB735:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, %rbx
	movzbl	3(%rdx), %edx
	testb	%dl, %dl
	jne	.L578
	cmpl	$2, %r8d
	je	.L567
	jle	.L579
	cmpl	$3, %r8d
	.p2align 4,,3
	je	.L570
	cmpl	$4, %r8d
	.p2align 4,,3
	jne	.L561
	movl	$0x3f800000, 12(%rcx)
.L570:
	movl	$0x00000000, 8(%rcx)
	movl	$0x00000000, 4(%rcx)
	movl	$0x00000000, (%rcx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L579:
	decl	%r8d
	jne	.L561
.L569:
	movl	$0x00000000, (%rcx)
.L561:
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L578:
	movlpd	.LC26(%rip), %xmm0
	subl	$136, %edx
	movl	%r8d, 44(%rsp)
	movq	%rcx, 32(%rsp)
	call	ldexp
	cvtsd2ss	%xmm0, %xmm0
	movl	44(%rsp), %r8d
	movq	32(%rsp), %rcx
	cmpl	$2, %r8d
	jg	.L563
	movzbl	1(%rbx), %eax
	movzbl	(%rbx), %edx
	addl	%eax, %edx
	movzbl	2(%rbx), %eax
	addl	%edx, %eax
	cmpl	$2, %r8d
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm1, %xmm0
	divss	.LC27(%rip), %xmm0
	movss	%xmm0, (%rcx)
	jne	.L561
	movl	$0x3f800000, 4(%rcx)
	jmp	.L561
	.p2align 4,,7
.L563:
	movzbl	(%rbx), %eax
	cmpl	$4, %r8d
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rcx)
	movzbl	1(%rbx), %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%rcx)
	movzbl	2(%rbx), %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8(%rcx)
	jne	.L561
	movl	$0x3f800000, 12(%rcx)
	jmp	.L561
	.p2align 4,,7
.L567:
	movl	$0x3f800000, 4(%rcx)
	jmp	.L569
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17stbi__stdio_writePvS_i;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17stbi__stdio_writePvS_i
_ZL17stbi__stdio_writePvS_i:
.LFB754:
	.seh_endprologue
	movq	%rcx, %r9
	movslq	%r8d, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	jmp	fwrite
	.seh_endproc
	.section .rdata,"dr"
.LC30:
	.ascii "Error %d: %s\12\0"
	.text
	.p2align 4,,15
	.def	_ZL14error_callbackiPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14error_callbackiPKc
_ZL14error_callbackiPKc:
.LFB7457:
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
	leaq	.LC30(%rip), %rdx
	leaq	96(%rax), %rcx
	movq	%rsi, %r9
	movl	%ebx, %r8d
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	fprintf
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_3;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_3
__tcf_3:
.LFB7850:
	.seh_endprologue
	movq	_ZL11current_dir(%rip), %rcx
	leaq	16+_ZL11current_dir(%rip), %rax
	cmpq	%rax, %rcx
	je	.L582
	jmp	_ZdlPv
	.p2align 4,,7
.L582:
	rep ret
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB7452:
	.seh_endprologue
	movq	264+_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip), %rcx
	testq	%rcx, %rcx
	je	.L584
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,7
.L584:
	rep ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7452:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7452-.LLSDACSB7452
.LLSDACSB7452:
.LLSDACSE7452:
	.text
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_2;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_2
__tcf_2:
.LFB7849:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4,,15
	.def	_ZL10stbi__get8P13stbi__context;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10stbi__get8P13stbi__context
_ZL10stbi__get8P13stbi__context:
.LFB607:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	184(%rcx), %rax
	cmpq	192(%rcx), %rax
	movq	%rcx, %rbx
	jb	.L593
	movl	48(%rcx), %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	jne	.L594
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L594:
	leaq	56(%rcx), %rdi
	movl	52(%rbx), %r8d
	movq	40(%rcx), %rcx
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L595
	movzbl	56(%rbx), %esi
	cltq
	leaq	57(%rbx), %rdx
	addq	%rdi, %rax
.L591:
	movq	%rax, 192(%rbx)
	movl	%esi, %eax
	movq	%rdx, 184(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L593:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rcx)
	movzbl	(%rax), %esi
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L595:
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
	jmp	.L591
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22stbi__resample_row_h_2PhS_S_ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbi__resample_row_h_2PhS_S_ii
_ZL22stbi__resample_row_h_2PhS_S_ii:
.LFB647:
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
	cmpl	$1, %r9d
	movq	%rcx, %rax
	je	.L619
	movzbl	(%rdx), %ecx
	movb	%cl, (%rax)
	movzbl	(%rdx), %ecx
	leal	(%rcx,%rcx,2), %r8d
	movzbl	1(%rdx), %ecx
	leal	2(%r8,%rcx), %ecx
	sarl	$2, %ecx
	movb	%cl, 1(%rax)
	leal	-1(%r9), %ecx
	cmpl	$1, %ecx
	jle	.L609
	leal	-2(%r9), %r8d
	leaq	2(%rax), %r10
	leaq	2(%rax,%r8,2), %r11
	movq	%r8, %rbx
	leaq	2(%rdx,%r8), %r8
	cmpq	%r11, %rdx
	setnb	%r11b
	cmpq	%r8, %r10
	setnb	%r8b
	orb	%r8b, %r11b
	je	.L600
	cmpl	$15, %ebx
	jbe	.L600
	leal	-18(%r9), %r11d
	leaq	1(%rdx), %r8
	leaq	2(%rdx), %rbp
	shrl	$4, %r11d
	leal	1(%r11), %esi
	subl	$2, %r11d
	movl	%esi, %edi
	sall	$4, %edi
	cmpl	$-4, %r11d
	ja	.L610
	pxor	%xmm3, %xmm3
	shrl	%r11d
	pxor	%xmm1, %xmm1
	movdqa	.LC0(%rip), %xmm4
	leal	2(%r11,%r11), %r12d
	xorl	%r11d, %r11d
	movdqa	.LC1(%rip), %xmm5
	movdqa	.LC2(%rip), %xmm6
.L602:
	movdqa	%xmm4, %xmm10
	movdqa	%xmm4, %xmm9
	prefetcht0	64(%r8)
	movdqu	(%r8), %xmm7
	prefetcht0	63(%r8)
	prefetcht0	65(%r8)
	addl	$2, %r11d
	addq	$32, %r8
	prefetcht0	144(%r10)
	movdqa	%xmm7, %xmm2
	punpckhbw	%xmm3, %xmm7
	movdqu	-33(%r8), %xmm11
	addq	$64, %r10
	punpcklbw	%xmm3, %xmm2
	pmullw	%xmm7, %xmm9
	pmulhw	%xmm4, %xmm7
	pmullw	%xmm2, %xmm10
	movdqa	%xmm10, %xmm0
	pmulhw	%xmm4, %xmm2
	punpckhwd	%xmm2, %xmm10
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm9, %xmm2
	punpckhwd	%xmm7, %xmm9
	punpcklwd	%xmm7, %xmm2
	movdqa	%xmm11, %xmm7
	paddd	%xmm5, %xmm10
	paddd	%xmm5, %xmm0
	punpckhbw	%xmm3, %xmm11
	punpcklbw	%xmm3, %xmm7
	paddd	%xmm5, %xmm9
	paddd	%xmm5, %xmm2
	movdqa	%xmm7, %xmm8
	punpckhwd	%xmm1, %xmm7
	punpcklwd	%xmm1, %xmm8
	paddd	%xmm10, %xmm7
	psrad	$2, %xmm7
	paddd	%xmm0, %xmm8
	psrad	$2, %xmm8
	movdqa	%xmm8, %xmm12
	punpcklwd	%xmm7, %xmm8
	punpckhwd	%xmm7, %xmm12
	movdqa	%xmm8, %xmm7
	punpcklwd	%xmm12, %xmm8
	punpckhwd	%xmm12, %xmm7
	punpcklwd	%xmm7, %xmm8
	movdqa	%xmm11, %xmm7
	punpckhwd	%xmm1, %xmm11
	punpcklwd	%xmm1, %xmm7
	paddd	%xmm9, %xmm11
	psrad	$2, %xmm11
	pand	%xmm6, %xmm8
	paddd	%xmm2, %xmm7
	psrad	$2, %xmm7
	movdqa	%xmm7, %xmm12
	punpcklwd	%xmm11, %xmm7
	punpckhwd	%xmm11, %xmm12
	movdqa	%xmm7, %xmm11
	punpcklwd	%xmm12, %xmm7
	punpckhwd	%xmm12, %xmm11
	punpcklwd	%xmm11, %xmm7
	movdqu	-31(%r8), %xmm11
	pand	%xmm6, %xmm7
	packuswb	%xmm7, %xmm8
	movdqa	%xmm11, %xmm7
	punpckhbw	%xmm3, %xmm11
	punpcklbw	%xmm3, %xmm7
	movdqa	%xmm7, %xmm12
	punpckhwd	%xmm1, %xmm7
	punpcklwd	%xmm1, %xmm12
	paddd	%xmm7, %xmm10
	psrad	$2, %xmm10
	paddd	%xmm12, %xmm0
	psrad	$2, %xmm0
	movdqa	%xmm0, %xmm7
	punpcklwd	%xmm10, %xmm0
	punpckhwd	%xmm10, %xmm7
	movdqa	%xmm0, %xmm10
	punpcklwd	%xmm7, %xmm0
	punpckhwd	%xmm7, %xmm10
	movdqa	%xmm11, %xmm7
	punpckhwd	%xmm1, %xmm11
	punpcklwd	%xmm1, %xmm7
	punpcklwd	%xmm10, %xmm0
	movdqa	%xmm4, %xmm10
	paddd	%xmm11, %xmm9
	psrad	$2, %xmm9
	paddd	%xmm7, %xmm2
	psrad	$2, %xmm2
	movdqa	%xmm2, %xmm7
	punpcklwd	%xmm9, %xmm2
	punpckhwd	%xmm9, %xmm7
	pand	%xmm6, %xmm0
	movdqa	%xmm2, %xmm9
	punpcklwd	%xmm7, %xmm2
	punpckhwd	%xmm7, %xmm9
	punpcklwd	%xmm9, %xmm2
	movdqa	%xmm4, %xmm9
	pand	%xmm6, %xmm2
	packuswb	%xmm2, %xmm0
	movdqa	%xmm8, %xmm2
	punpckhbw	%xmm0, %xmm8
	punpcklbw	%xmm0, %xmm2
	movups	%xmm8, -48(%r10)
	movups	%xmm2, -64(%r10)
	movdqu	-16(%r8), %xmm2
	movdqa	%xmm2, %xmm0
	punpckhbw	%xmm3, %xmm2
	movdqu	-17(%r8), %xmm11
	punpcklbw	%xmm3, %xmm0
	pmullw	%xmm2, %xmm9
	pmulhw	%xmm4, %xmm2
	pmullw	%xmm0, %xmm10
	movdqa	%xmm10, %xmm7
	pmulhw	%xmm4, %xmm0
	punpckhwd	%xmm0, %xmm10
	punpcklwd	%xmm0, %xmm7
	movdqa	%xmm9, %xmm0
	punpckhwd	%xmm2, %xmm9
	punpcklwd	%xmm2, %xmm0
	movdqa	%xmm11, %xmm2
	paddd	%xmm5, %xmm10
	paddd	%xmm5, %xmm7
	punpckhbw	%xmm3, %xmm11
	punpcklbw	%xmm3, %xmm2
	paddd	%xmm5, %xmm9
	paddd	%xmm5, %xmm0
	movdqa	%xmm2, %xmm8
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm1, %xmm8
	paddd	%xmm10, %xmm2
	psrad	$2, %xmm2
	paddd	%xmm7, %xmm8
	psrad	$2, %xmm8
	movdqa	%xmm8, %xmm12
	punpcklwd	%xmm2, %xmm8
	punpckhwd	%xmm2, %xmm12
	movdqa	%xmm8, %xmm2
	punpcklwd	%xmm12, %xmm8
	punpckhwd	%xmm12, %xmm2
	punpcklwd	%xmm2, %xmm8
	movdqa	%xmm11, %xmm2
	punpckhwd	%xmm1, %xmm11
	punpcklwd	%xmm1, %xmm2
	paddd	%xmm9, %xmm11
	psrad	$2, %xmm11
	pand	%xmm6, %xmm8
	paddd	%xmm0, %xmm2
	psrad	$2, %xmm2
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm11, %xmm2
	punpckhwd	%xmm11, %xmm12
	movdqa	%xmm2, %xmm11
	punpcklwd	%xmm12, %xmm2
	punpckhwd	%xmm12, %xmm11
	punpcklwd	%xmm11, %xmm2
	movdqu	-15(%r8), %xmm11
	leaq	-1(%r8), %r13
	leaq	1(%r8), %rbp
	pand	%xmm6, %xmm2
	packuswb	%xmm2, %xmm8
	movdqa	%xmm11, %xmm2
	punpckhbw	%xmm3, %xmm11
	punpcklbw	%xmm3, %xmm2
	movdqa	%xmm2, %xmm12
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm1, %xmm12
	paddd	%xmm2, %xmm10
	psrad	$2, %xmm10
	paddd	%xmm12, %xmm7
	psrad	$2, %xmm7
	movdqa	%xmm7, %xmm2
	punpcklwd	%xmm10, %xmm7
	punpckhwd	%xmm10, %xmm2
	movdqa	%xmm7, %xmm10
	punpcklwd	%xmm2, %xmm7
	punpckhwd	%xmm2, %xmm10
	movdqa	%xmm11, %xmm2
	punpckhwd	%xmm1, %xmm11
	punpcklwd	%xmm1, %xmm2
	punpcklwd	%xmm10, %xmm7
	paddd	%xmm11, %xmm9
	psrad	$2, %xmm9
	paddd	%xmm2, %xmm0
	psrad	$2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm9, %xmm0
	punpckhwd	%xmm9, %xmm2
	pand	%xmm6, %xmm7
	movdqa	%xmm0, %xmm9
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm9
	punpcklwd	%xmm9, %xmm0
	pand	%xmm6, %xmm0
	packuswb	%xmm0, %xmm7
	movdqa	%xmm8, %xmm0
	punpckhbw	%xmm7, %xmm8
	punpcklbw	%xmm7, %xmm0
	movups	%xmm8, -16(%r10)
	movups	%xmm0, -32(%r10)
	cmpl	%r11d, %r12d
	jne	.L602
.L601:
	pxor	%xmm7, %xmm7
	xorl	%r11d, %r11d
	pxor	%xmm3, %xmm3
.L606:
	movdqu	(%r8,%r11), %xmm2
	movdqa	%xmm4, %xmm10
	movdqa	%xmm4, %xmm9
	incl	%r12d
	movdqa	%xmm2, %xmm1
	punpckhbw	%xmm7, %xmm2
	movdqu	0(%r13,%r11), %xmm11
	punpcklbw	%xmm7, %xmm1
	pmullw	%xmm2, %xmm9
	pmulhw	%xmm4, %xmm2
	pmullw	%xmm1, %xmm10
	movdqa	%xmm10, %xmm0
	pmulhw	%xmm4, %xmm1
	punpckhwd	%xmm1, %xmm10
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm9, %xmm1
	punpckhwd	%xmm2, %xmm9
	punpcklwd	%xmm2, %xmm1
	movdqa	%xmm11, %xmm2
	paddd	%xmm5, %xmm10
	paddd	%xmm5, %xmm0
	punpckhbw	%xmm7, %xmm11
	punpcklbw	%xmm7, %xmm2
	paddd	%xmm5, %xmm9
	paddd	%xmm5, %xmm1
	movdqa	%xmm2, %xmm8
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm8
	paddd	%xmm10, %xmm2
	psrad	$2, %xmm2
	paddd	%xmm0, %xmm8
	psrad	$2, %xmm8
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
	paddd	%xmm9, %xmm11
	psrad	$2, %xmm11
	pand	%xmm6, %xmm8
	paddd	%xmm1, %xmm2
	psrad	$2, %xmm2
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm11, %xmm2
	punpckhwd	%xmm11, %xmm12
	movdqa	%xmm2, %xmm11
	punpcklwd	%xmm12, %xmm2
	punpckhwd	%xmm12, %xmm11
	punpcklwd	%xmm11, %xmm2
	movdqu	0(%rbp,%r11), %xmm11
	pand	%xmm6, %xmm2
	packuswb	%xmm2, %xmm8
	movdqa	%xmm11, %xmm2
	punpckhbw	%xmm7, %xmm11
	punpcklbw	%xmm7, %xmm2
	movdqa	%xmm2, %xmm12
	punpckhwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm12
	paddd	%xmm2, %xmm10
	psrad	$2, %xmm10
	paddd	%xmm12, %xmm0
	psrad	$2, %xmm0
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm10, %xmm0
	punpckhwd	%xmm10, %xmm2
	movdqa	%xmm0, %xmm10
	punpcklwd	%xmm2, %xmm0
	punpckhwd	%xmm2, %xmm10
	movdqa	%xmm11, %xmm2
	punpckhwd	%xmm3, %xmm11
	punpcklwd	%xmm3, %xmm2
	punpcklwd	%xmm10, %xmm0
	paddd	%xmm11, %xmm9
	psrad	$2, %xmm9
	paddd	%xmm2, %xmm1
	psrad	$2, %xmm1
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm9, %xmm1
	punpckhwd	%xmm9, %xmm2
	pand	%xmm6, %xmm0
	movdqa	%xmm1, %xmm9
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm9
	punpcklwd	%xmm9, %xmm1
	pand	%xmm6, %xmm1
	packuswb	%xmm1, %xmm0
	movdqa	%xmm8, %xmm1
	punpckhbw	%xmm0, %xmm8
	punpcklbw	%xmm0, %xmm1
	movups	%xmm8, 16(%r10,%r11,2)
	movups	%xmm1, (%r10,%r11,2)
	addq	$16, %r11
	cmpl	%r12d, %esi
	ja	.L606
	cmpl	%edi, %ebx
	leal	1(%rdi), %esi
	je	.L607
	leal	(%rsi,%rsi), %ebx
	movslq	%esi, %r11
	addq	%rdx, %r11
	movslq	%ebx, %rbx
	addq	%rax, %rbx
	.p2align 4,,7
.L604:
	movzbl	(%r11), %r8d
	movzbl	-1(%r11), %r10d
	incl	%esi
	incq	%r11
	addq	$2, %rbx
	leal	2(%r8,%r8,2), %r8d
	addl	%r8d, %r10d
	sarl	$2, %r10d
	movb	%r10b, -2(%rbx)
	movzbl	(%r11), %r10d
	addl	%r10d, %r8d
	sarl	$2, %r8d
	movb	%r8b, -1(%rbx)
	cmpl	%esi, %ecx
	jg	.L604
.L607:
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	leaq	1(%rcx), %r10
.L599:
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
.L598:
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
	.p2align 4,,7
.L619:
	movzbl	(%rdx), %edx
	movb	%dl, 1(%rcx)
	movb	%dl, (%rcx)
	jmp	.L598
	.p2align 4,,7
.L600:
	leal	-3(%r9), %ebx
	xorl	%r8d, %r8d
	incq	%rbx
	.p2align 4,,7
.L608:
	movzbl	1(%rdx,%r8), %r10d
	movzbl	(%rdx,%r8), %r11d
	leal	2(%r10,%r10,2), %r10d
	addl	%r10d, %r11d
	sarl	$2, %r11d
	movb	%r11b, 2(%rax,%r8,2)
	movzbl	2(%rdx,%r8), %r11d
	addl	%r11d, %r10d
	sarl	$2, %r10d
	movb	%r10b, 3(%rax,%r8,2)
	incq	%r8
	cmpq	%r8, %rbx
	jne	.L608
	jmp	.L607
	.p2align 4,,7
.L609:
	movl	$3, %r10d
	movl	$2, %ecx
	jmp	.L599
	.p2align 4,,7
.L610:
	movq	%rdx, %r13
	xorl	%r12d, %r12d
	movdqa	.LC0(%rip), %xmm4
	movdqa	.LC1(%rip), %xmm5
	movdqa	.LC2(%rip), %xmm6
	jmp	.L601
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC31:
	.ascii "basic_string::_M_construct null not valid\0"
	.text
	.align 2
	.p2align 4,,15
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.78;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.78
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.78:
.LFB7930:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	jne	.L623
	testq	%r8, %r8
	je	.L623
	leaq	.LC31(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
	.p2align 4,,7
.L623:
	movq	%r8, %rbx
	subq	%rdi, %rbx
	cmpq	$15, %rbx
	movq	%rbx, 40(%rsp)
	ja	.L638
	cmpq	$1, %rbx
	movq	(%rsi), %rcx
	je	.L639
	testq	%rbx, %rbx
	jne	.L624
	movq	%rbx, 8(%rsi)
	movb	$0, (%rcx,%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L638:
	leaq	40(%rsp), %rdx
	movq	%rsi, %rcx
	xorl	%r8d, %r8d
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	40(%rsp), %rdx
	movq	%rax, (%rsi)
	movq	%rax, %rcx
	movq	%rdx, 16(%rsi)
.L624:
	movq	%rbx, %r8
	movq	%rdi, %rdx
	call	memcpy
	movq	40(%rsp), %rbx
	movq	(%rsi), %rcx
	movq	%rbx, 8(%rsi)
	movb	$0, (%rcx,%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L639:
	movzbl	(%rdi), %eax
	movb	%al, (%rcx)
	movq	40(%rsp), %rbx
	movq	(%rsi), %rcx
	movq	%rbx, 8(%rsi)
	movb	$0, (%rcx,%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.68;	.scl	3;	.type	32;	.endef
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.68,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.78
	.section .rdata,"dr"
	.align 8
.LC32:
	.ascii "C:/libraries/include/stb/stb_image_write.h\0"
.LC33:
	.ascii "p\0"
	.text
	.p2align 4,,15
	.def	_ZL14stbiw__sbgrowfPPvii.constprop.102;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbiw__sbgrowfPPvii.constprop.102
_ZL14stbiw__sbgrowfPPvii.constprop.102:
.LFB7960:
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
	je	.L641
	movl	-8(%rcx), %eax
	subq	$8, %rcx
	leal	1(%rax,%rax), %esi
	imull	%esi, %edx
	movslq	%edx, %rdx
	addq	$8, %rdx
.L644:
	call	realloc
	testq	%rax, %rax
	je	.L649
	cmpq	$0, (%rbx)
	je	.L650
.L646:
	leaq	8(%rax), %rdx
	movq	%rdx, (%rbx)
	movl	%esi, (%rax)
	movq	%rdx, %rax
.L647:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L641:
	addl	%edx, %edx
	movl	$2, %esi
	xorl	%ecx, %ecx
	movslq	%edx, %rdx
	addq	$8, %rdx
	jmp	.L644
	.p2align 4,,7
.L650:
	movl	$0, 4(%rax)
	jmp	.L646
	.p2align 4,,7
.L649:
	leaq	.LC32(%rip), %rdx
	leaq	.LC33(%rip), %rcx
	movl	$666, %r8d
	call	_assert
	movq	(%rbx), %rax
	jmp	.L647
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.103;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.103
_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.103:
.LFB7959:
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
	movl	224(%rsp), %ebx
	movl	232(%rsp), %r13d
	movq	%rcx, %r15
	movl	%r9d, 216(%rsp)
	movl	256(%rsp), %r12d
	movq	272(%rsp), %rbp
	movl	%ebx, %eax
	shrl	$31, %eax
	jne	.L676
	movl	%r9d, %eax
	shrl	$31, %eax
	jne	.L676
	leaq	280(%rsp), %rdx
	leaq	96(%rsp), %rsi
	movq	%rdx, 104(%rsp)
.L653:
	movzbl	0(%rbp), %eax
	testb	%al, %al
	je	.L655
.L696:
	incq	%rbp
	cmpb	$49, %al
	je	.L657
	jle	.L695
	cmpb	$50, %al
	.p2align 4,,4
	je	.L659
	cmpb	$52, %al
	.p2align 4,,7
	jne	.L656
	movl	(%rdx), %eax
	leaq	8(%rdx), %rdi
	movq	8(%r15), %rcx
	movl	$4, %r8d
	movl	%eax, %edx
	movb	%al, 96(%rsp)
	shrl	$8, %edx
	movb	%dl, 97(%rsp)
	movl	%eax, %edx
	shrl	$24, %eax
	shrl	$16, %edx
	movb	%al, 99(%rsp)
	movb	%dl, 98(%rsp)
	movq	%rsi, %rdx
	call	*(%r15)
	movzbl	0(%rbp), %eax
	movq	%rdi, %rdx
	testb	%al, %al
	jne	.L696
	.p2align 4,,7
.L655:
	testl	%ebx, %ebx
	je	.L675
	leal	-1(%rbx), %eax
	movslq	%r13d, %rsi
	movl	$0, 96(%rsp)
	movl	%eax, %edi
	movl	%eax, 44(%rsp)
	movl	216(%rsp), %eax
	negl	%eax
	imull	%r13d, %eax
	cltq
	movq	%rax, 56(%rsp)
	movl	216(%rsp), %eax
	imull	%edi, %eax
	imull	%r13d, %eax
	cltq
	leaq	-1(%rsi,%rax), %rax
	addq	248(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movl	$1, %eax
	subq	%rsi, %rax
	movq	%rax, 72(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 32(%rsp)
	.p2align 4,,7
.L664:
	movl	216(%rsp), %edx
	testl	%edx, %edx
	je	.L673
	movq	48(%rsp), %rax
	movq	72(%rsp), %r14
	xorl	%edi, %edi
	movq	%r15, 192(%rsp)
	addq	%rax, %r14
	leaq	4(%rax,%rsi), %rbx
	movq	%rax, %rbp
	movq	%r14, %r15
	movq	192(%rsp), %r14
	jmp	.L674
	.p2align 4,,7
.L699:
	cmpl	$1, %r13d
	jl	.L666
	movl	240(%rsp), %eax
	testl	%eax, %eax
	je	.L671
	movzbl	(%r15), %edx
	movb	%dl, 80(%rsp)
	movb	%dl, 81(%rsp)
.L694:
	movb	%dl, 82(%rsp)
	movl	$3, %r8d
	movq	8(%r14), %rcx
	movq	32(%rsp), %rdx
	call	*(%r14)
.L666:
	testl	%r12d, %r12d
	jle	.L672
	movq	8(%r14), %rcx
	movl	$1, %r8d
	movq	%rbp, %rdx
	call	*(%r14)
.L672:
	incl	%edi
	addq	%rsi, %rbp
	addq	%rsi, %r15
	addq	%rsi, %rbx
	cmpl	%edi, 216(%rsp)
	je	.L697
.L674:
	testl	%r12d, %r12d
	js	.L698
.L665:
	cmpl	$3, %r13d
	je	.L667
	.p2align 4,,4
	jle	.L699
	cmpl	$4, %r13d
	.p2align 4,,3
	jne	.L666
	testl	%r12d, %r12d
	.p2align 4,,4
	jne	.L667
	movzbl	(%r15), %r8d
	movzbl	3(%r15), %ecx
	prefetcht0	(%rbx)
	subl	$255, %r8d
	imull	%ecx, %r8d
	movslq	%r8d, %rdx
	imulq	$-2139062143, %rdx, %rdx
	shrq	$32, %rdx
	addl	%r8d, %edx
	sarl	$31, %r8d
	sarl	$7, %edx
	subl	%r8d, %edx
	movzbl	1(%r15), %r8d
	decl	%edx
	movb	%dl, 82(%rsp)
	movq	32(%rsp), %rdx
	movl	%r8d, %r10d
	imull	%ecx, %r10d
	movslq	%r10d, %r8
	imulq	$-2139062143, %r8, %r8
	shrq	$32, %r8
	addl	%r10d, %r8d
	movzbl	2(%r15), %r10d
	sarl	$7, %r8d
	movb	%r8b, 81(%rsp)
	movl	$3, %r8d
	subl	$255, %r10d
	imull	%ecx, %r10d
	movslq	%r10d, %rcx
	imulq	$-2139062143, %rcx, %rcx
	shrq	$32, %rcx
	addl	%r10d, %ecx
	sarl	$31, %r10d
	sarl	$7, %ecx
	subl	%r10d, %ecx
	decl	%ecx
	movb	%cl, 80(%rsp)
	movq	8(%r14), %rcx
	call	*(%r14)
	jmp	.L672
	.p2align 4,,7
.L676:
	xorl	%eax, %eax
.L652:
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
	.p2align 4,,7
.L667:
	movzbl	1(%r15), %ecx
	movzbl	2(%r15), %r8d
	prefetcht0	-3(%rbx)
	prefetcht0	-2(%rbx)
	prefetcht0	-1(%rbx)
	movzbl	(%r15), %edx
	movb	%r8b, 80(%rsp)
	movb	%cl, 81(%rsp)
	jmp	.L694
	.p2align 4,,7
.L698:
	movq	8(%r14), %rcx
	movl	$1, %r8d
	movq	%rbp, %rdx
	call	*(%r14)
	jmp	.L665
	.p2align 4,,7
.L671:
	movq	8(%r14), %rcx
	movl	$1, %r8d
	movq	%r15, %rdx
	call	*(%r14)
	jmp	.L666
	.p2align 4,,7
.L697:
	movq	%r14, %r15
.L673:
	movq	8(%r15), %rcx
	movl	264(%rsp), %r8d
	movq	64(%rsp), %rdx
	call	*(%r15)
	decl	44(%rsp)
	movq	56(%rsp), %rbx
	movl	44(%rsp), %eax
	addq	%rbx, 48(%rsp)
	incl	%eax
	jne	.L664
.L675:
	movl	$1, %eax
	jmp	.L652
	.p2align 4,,7
.L695:
	cmpb	$32, %al
	je	.L653
.L656:
	leaq	.LC32(%rip), %rdx
	leaq	.LC8(%rip), %rcx
	movl	$266, %r8d
	call	_assert
	jmp	.L655
	.p2align 4,,7
.L657:
	movl	(%rdx), %eax
	leaq	8(%rdx), %rdi
	movq	8(%r15), %rcx
	movq	%rsi, %rdx
	movl	$1, %r8d
	movb	%al, 96(%rsp)
	call	*(%r15)
	movq	%rdi, %rdx
	jmp	.L653
	.p2align 4,,7
.L659:
	movl	(%rdx), %eax
	leaq	8(%rdx), %rdi
	movq	8(%r15), %rcx
	movq	%rsi, %rdx
	movl	$2, %r8d
	movb	%al, 96(%rsp)
	sarl	$8, %eax
	movb	%al, 97(%rsp)
	call	*(%r15)
	movq	%rdi, %rdx
	jmp	.L653
	.seh_endproc
	.p2align 4,,15
	.def	_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.117;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.117
_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.117:
.LFB7945:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testl	%edx, %edx
	jle	.L710
	leal	-1(%rdx), %eax
	leaq	18136(%rcx), %rbx
	movq	%rax, %rdx
	salq	$7, %rax
	salq	$5, %rdx
	subq	%rdx, %rax
	leaq	18232(%rcx,%rax), %rsi
.L706:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L702
	call	free
	movq	$0, (%rbx)
	movq	$0, -8(%rbx)
.L702:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L703
	call	free
	movq	$0, 8(%rbx)
	movq	$0, 24(%rbx)
.L703:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L704
	call	free
	movq	$0, 16(%rbx)
.L704:
	addq	$96, %rbx
	cmpq	%rsi, %rbx
	jne	.L706
.L710:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_1;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_1
__tcf_1:
.LFB7454:
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
	je	.L718
	.p2align 4,,7
.L720:
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L719
	call	_ZdlPv
.L719:
	addq	$32, %rbx
	cmpq	%rbx, %rsi
	jne	.L720
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rsi
.L718:
	testq	%rsi, %rsi
	je	.L717
	movq	%rsi, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZdlPv
	.p2align 4,,7
.L717:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC34:
	.ascii "bad sizes\0"
.LC35:
	.ascii "bad codelengths\0"
	.text
	.p2align 4,,15
	.def	_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi
_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi:
.LFB663:
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
	xorl	%eax, %eax
	leaq	96(%rsp), %r10
	movq	%rcx, %r9
	movl	$8, %ecx
	movq	%r10, %rdi
	rep stosq
	movq	%r9, %rcx
	movl	$0, (%rdi)
	leaq	8(%r9), %rdi
	movq	$0, (%r9)
	movq	$0, 1016(%r9)
	andq	$-8, %rdi
	subq	%rdi, %rcx
	addl	$1024, %ecx
	shrl	$3, %ecx
	testl	%r8d, %r8d
	rep stosq
	jle	.L724
	leal	-1(%r8), %ecx
	movq	%rdx, %rax
	leaq	1(%rdx,%rcx), %r10
	.p2align 4,,7
.L725:
	movzbl	(%rax), %ecx
	incq	%rax
	incl	96(%rsp,%rcx,4)
	cmpq	%r10, %rax
	jne	.L725
.L724:
	movl	100(%rsp), %r11d
	movl	$0, 96(%rsp)
	cmpl	$2, %r11d
	jg	.L726
	movl	104(%rsp), %ecx
	cmpl	$4, %ecx
	jg	.L726
	movl	108(%rsp), %edi
	cmpl	$8, %edi
	jg	.L726
	movl	112(%rsp), %ebp
	cmpl	$16, %ebp
	jg	.L726
	movl	116(%rsp), %r12d
	cmpl	$32, %r12d
	jg	.L726
	movl	120(%rsp), %r13d
	cmpl	$64, %r13d
	jg	.L726
	movl	124(%rsp), %r14d
	cmpl	$128, %r14d
	jg	.L726
	movl	128(%rsp), %r10d
	cmpl	$256, %r10d
	jg	.L726
	movl	132(%rsp), %ebx
	cmpl	$512, %ebx
	jg	.L726
	movl	136(%rsp), %esi
	cmpl	$1024, %esi
	jg	.L726
	movl	140(%rsp), %eax
	cmpl	$2048, %eax
	movl	%eax, 12(%rsp)
	jg	.L726
	movl	144(%rsp), %eax
	cmpl	$4096, %eax
	movl	%eax, 16(%rsp)
	jg	.L726
	movl	148(%rsp), %eax
	cmpl	$8192, %eax
	movl	%eax, 20(%rsp)
	jg	.L726
	movl	152(%rsp), %eax
	cmpl	$16384, %eax
	movl	%eax, 24(%rsp)
	jg	.L726
	movl	156(%rsp), %eax
	cmpl	$32768, %eax
	movl	%eax, 28(%rsp)
	jg	.L726
	movl	%r11d, %eax
	movl	$0, 36(%rsp)
	movw	$0, 1026(%r9)
	sall	$15, %eax
	movw	$0, 1126(%r9)
	movw	%r11w, 1128(%r9)
	movl	%eax, 1060(%r9)
	leal	(%r11,%r11), %eax
	movl	%eax, 40(%rsp)
	movw	%ax, 1028(%r9)
	addl	%ecx, %eax
	testl	%ecx, %ecx
	je	.L729
	cmpl	$4, %eax
	jg	.L730
.L729:
	movl	%eax, %r15d
	addl	%eax, %eax
	addl	%r11d, %ecx
	sall	$14, %r15d
	movl	%eax, 44(%rsp)
	movw	%ax, 1030(%r9)
	addl	%edi, %eax
	testl	%edi, %edi
	movl	%r15d, 1064(%r9)
	movw	%cx, 1130(%r9)
	je	.L731
	cmpl	$8, %eax
	jg	.L730
.L731:
	movl	%eax, %r11d
	addl	%eax, %eax
	addl	%edi, %ecx
	sall	$13, %r11d
	movl	%eax, 48(%rsp)
	movw	%ax, 1032(%r9)
	addl	%ebp, %eax
	testl	%ebp, %ebp
	movl	%r11d, 1068(%r9)
	movw	%cx, 1132(%r9)
	je	.L732
	cmpl	$16, %eax
	jg	.L730
.L732:
	movl	%eax, %r11d
	addl	%eax, %eax
	addl	%ebp, %ecx
	sall	$12, %r11d
	movl	%eax, 52(%rsp)
	movw	%ax, 1034(%r9)
	addl	%r12d, %eax
	testl	%r12d, %r12d
	movl	%r11d, 1072(%r9)
	movw	%cx, 1134(%r9)
	je	.L733
	cmpl	$32, %eax
	jg	.L730
.L733:
	movl	%eax, %r11d
	addl	%eax, %eax
	addl	%r12d, %ecx
	sall	$11, %r11d
	movl	%eax, 56(%rsp)
	movw	%ax, 1036(%r9)
	addl	%r13d, %eax
	testl	%r13d, %r13d
	movl	%r11d, 1076(%r9)
	movw	%cx, 1136(%r9)
	je	.L734
	cmpl	$64, %eax
	jg	.L730
.L734:
	movl	%eax, %r11d
	addl	%eax, %eax
	addl	%r13d, %ecx
	sall	$10, %r11d
	movl	%eax, 60(%rsp)
	movw	%ax, 1038(%r9)
	addl	%r14d, %eax
	testl	%r14d, %r14d
	movl	%r11d, 1080(%r9)
	movw	%cx, 1138(%r9)
	je	.L735
	cmpl	$128, %eax
	jg	.L730
.L735:
	movl	%eax, %r11d
	addl	%eax, %eax
	addl	%r14d, %ecx
	sall	$9, %r11d
	movl	%eax, 64(%rsp)
	movw	%ax, 1040(%r9)
	addl	%r10d, %eax
	testl	%r10d, %r10d
	movl	%r11d, 1084(%r9)
	movw	%cx, 1140(%r9)
	jne	.L799
.L736:
	movl	%eax, %r11d
	addl	%eax, %eax
	addl	%ecx, %r10d
	sall	$8, %r11d
	movl	%eax, 68(%rsp)
	movw	%ax, 1042(%r9)
	addl	%ebx, %eax
	testl	%ebx, %ebx
	movl	%r11d, 1088(%r9)
	movw	%r10w, 1142(%r9)
	je	.L737
	cmpl	$512, %eax
	jg	.L730
.L737:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%ebx, %r10d
	sall	$7, %ecx
	movl	%eax, 72(%rsp)
	movw	%ax, 1044(%r9)
	addl	%esi, %eax
	testl	%esi, %esi
	movl	%ecx, 1092(%r9)
	movw	%r10w, 1144(%r9)
	je	.L738
	cmpl	$1024, %eax
	jg	.L730
.L738:
	movl	12(%rsp), %ebx
	movl	%eax, %ecx
	addl	%eax, %eax
	sall	$6, %ecx
	addl	%esi, %r10d
	movl	%eax, 76(%rsp)
	movw	%ax, 1046(%r9)
	movl	%ecx, 1096(%r9)
	addl	%ebx, %eax
	testl	%ebx, %ebx
	movw	%r10w, 1146(%r9)
	je	.L739
	cmpl	$2048, %eax
	jg	.L730
.L739:
	addl	12(%rsp), %r10d
	movl	16(%rsp), %esi
	movl	%eax, %ecx
	addl	%eax, %eax
	sall	$5, %ecx
	movl	%eax, 80(%rsp)
	movw	%ax, 1048(%r9)
	addl	%esi, %eax
	testl	%esi, %esi
	movl	%ecx, 1100(%r9)
	movw	%r10w, 1148(%r9)
	je	.L740
	cmpl	$4096, %eax
	jg	.L730
.L740:
	addl	16(%rsp), %r10d
	movl	20(%rsp), %esi
	movl	%eax, %ecx
	addl	%eax, %eax
	sall	$4, %ecx
	movl	%eax, 84(%rsp)
	movw	%ax, 1050(%r9)
	addl	%esi, %eax
	testl	%esi, %esi
	movl	%ecx, 1104(%r9)
	movw	%r10w, 1150(%r9)
	je	.L741
	cmpl	$8192, %eax
	jg	.L730
.L741:
	addl	20(%rsp), %r10d
	movl	24(%rsp), %esi
	leal	0(,%rax,8), %ecx
	addl	%eax, %eax
	movl	%eax, 88(%rsp)
	movw	%ax, 1052(%r9)
	addl	%esi, %eax
	testl	%esi, %esi
	movl	%ecx, 1108(%r9)
	movw	%r10w, 1152(%r9)
	je	.L742
	cmpl	$16384, %eax
	jg	.L730
.L742:
	addl	24(%rsp), %r10d
	movl	28(%rsp), %esi
	leal	0(,%rax,4), %ecx
	addl	%eax, %eax
	movl	%eax, 92(%rsp)
	movw	%ax, 1054(%r9)
	addl	%esi, %eax
	testl	%esi, %esi
	movl	%ecx, 1112(%r9)
	movw	%r10w, 1154(%r9)
	je	.L743
	cmpl	$32768, %eax
	jg	.L730
.L743:
	addl	%eax, %eax
	xorl	%ebx, %ebx
	testl	%r8d, %r8d
	movl	%eax, 1116(%r9)
	movl	$65536, 1120(%r9)
	movl	$16, %r13d
	movl	$1, %r12d
	jg	.L797
	jmp	.L749
	.p2align 4,,7
.L747:
	incl	%r11d
	movl	%r11d, 32(%rsp,%rsi,4)
.L745:
	incq	%rbx
	cmpl	%ebx, %r8d
	jle	.L749
.L797:
	movzbl	(%rdx,%rbx), %edi
	testl	%edi, %edi
	je	.L745
	movzbl	%dil, %eax
	movslq	%edi, %rsi
	leaq	(%r9,%rax,2), %rcx
	movl	32(%rsp,%rsi,4), %r11d
	movzwl	1024(%rcx), %eax
	movl	%r11d, %r10d
	subl	%eax, %r10d
	movzwl	1124(%rcx), %eax
	addl	%r10d, %eax
	cmpl	$9, %edi
	cltq
	movb	%dil, 1156(%r9,%rax)
	movw	%bx, 1444(%r9,%rax,2)
	jg	.L747
	movl	%r11d, %r10d
	movl	%r11d, %eax
	movl	%r12d, %r15d
	andl	$43690, %r10d
	andl	$21845, %eax
	addl	%eax, %eax
	sarl	%r10d
	orl	%eax, %r10d
	movl	%r10d, %eax
	andl	$13107, %r10d
	andl	$52428, %eax
	sall	$2, %r10d
	sarl	$2, %eax
	orl	%r10d, %eax
	movl	%eax, %ecx
	andl	$3855, %eax
	andl	$61680, %ecx
	sall	$4, %eax
	sarl	$4, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	sall	$8, %ecx
	movzwl	%cx, %ecx
	shrl	$8, %eax
	orl	%ecx, %eax
	movl	%r13d, %ecx
	subl	%edi, %ecx
	sarl	%cl, %eax
	movl	%edi, %ecx
	sall	$9, %edi
	sall	%cl, %r15d
	movl	%edi, %ecx
	movl	%r15d, %ebp
	orl	%ebx, %ecx
	.p2align 4,,7
.L748:
	movslq	%eax, %r10
	addl	%ebp, %eax
	cmpl	$511, %eax
	movw	%cx, (%r9,%r10,2)
	jle	.L748
	jmp	.L747
	.p2align 4,,7
.L799:
	cmpl	$256, %eax
	jle	.L736
	.p2align 4,,7
.L730:
	leaq	.LC35(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L728
	.p2align 4,,7
.L749:
	movl	$1, %eax
.L728:
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
	.p2align 4,,7
.L726:
	leaq	.LC34(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L728
	.seh_endproc
	.section .rdata,"dr"
.LC36:
	.ascii "#?RADIANCE\12\0"
.LC37:
	.ascii "#?RGBE\12\0"
	.text
	.p2align 4,,15
	.def	_ZL14stbi__hdr_testP13stbi__context;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__hdr_testP13stbi__context
_ZL14stbi__hdr_testP13stbi__context:
.LFB733:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC36(%rip), %rsi
	movq	184(%rcx), %rdx
	movq	192(%rcx), %rax
	movq	%rcx, %rbx
	leaq	56(%rcx), %rdi
	jmp	.L806
	.p2align 4,,7
.L801:
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L824
.L802:
	movsbl	(%rsi), %r8d
	cmpl	%ecx, %r8d
	jne	.L805
.L826:
	incq	%rsi
	cmpb	$0, (%rsi)
	je	.L825
.L806:
	cmpq	%rax, %rdx
	jnb	.L801
	leaq	1(%rdx), %r8
	movq	%r8, 184(%rbx)
	movzbl	(%rdx), %ecx
	movq	%r8, %rdx
	movsbl	(%rsi), %r8d
	cmpl	%ecx, %r8d
	je	.L826
.L805:
	movq	200(%rbx), %rax
	movq	208(%rbx), %rcx
	leaq	.LC37(%rip), %rsi
	leaq	56(%rbx), %rdi
	movq	%rax, 184(%rbx)
	movq	%rcx, 192(%rbx)
	jmp	.L813
	.p2align 4,,7
.L808:
	movl	48(%rbx), %edx
	testl	%edx, %edx
	jne	.L827
.L809:
	movsbl	(%rsi), %r8d
	cmpl	%edx, %r8d
	jne	.L814
.L829:
	incq	%rsi
	cmpb	$0, (%rsi)
	je	.L828
.L813:
	cmpq	%rax, %rcx
	jbe	.L808
	leaq	1(%rax), %r8
	movq	%r8, 184(%rbx)
	movzbl	(%rax), %edx
	movq	%r8, %rax
	movsbl	(%rsi), %r8d
	cmpl	%edx, %r8d
	je	.L829
.L814:
	xorl	%eax, %eax
.L812:
	movdqu	200(%rbx), %xmm0
	movups	%xmm0, 184(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L824:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L803
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
.L804:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L802
	.p2align 4,,7
.L803:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %ecx
	addq	%rdi, %rax
	jmp	.L804
	.p2align 4,,7
.L825:
	movdqu	200(%rbx), %xmm0
	movl	$1, %eax
	movups	%xmm0, 184(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L827:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L810
	leaq	57(%rbx), %rcx
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%edx, %edx
	movq	%rcx, %rax
.L811:
	movq	%rcx, 192(%rbx)
	movq	%rax, 184(%rbx)
	jmp	.L809
	.p2align 4,,7
.L810:
	cltq
	movzbl	56(%rbx), %edx
	leaq	(%rdi,%rax), %rcx
	leaq	57(%rbx), %rax
	jmp	.L811
	.p2align 4,,7
.L828:
	movl	$1, %eax
	jmp	.L812
	.seh_endproc
	.p2align 4,,15
	.def	_ZL26stbi__gif_parse_colortableP13stbi__contextPA4_hii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL26stbi__gif_parse_colortableP13stbi__contextPA4_hii
_ZL26stbi__gif_parse_colortableP13stbi__contextPA4_hii:
.LFB723:
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
	xorl	%edi, %edi
	testl	%r8d, %r8d
	movq	%rcx, %rbx
	movl	%r8d, %ebp
	movl	%r9d, %r13d
	movq	%rdx, %rsi
	leaq	56(%rcx), %r12
	jg	.L849
	jmp	.L830
	.p2align 4,,7
.L832:
	movl	48(%rbx), %ecx
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	jne	.L850
.L833:
	movb	%r14b, 2(%rsi)
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L851
	movl	48(%rbx), %edx
	xorl	%r14d, %r14d
	testl	%edx, %edx
	jne	.L852
.L837:
	movb	%r14b, 1(%rsi)
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L853
	movl	48(%rbx), %eax
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.L854
.L841:
	cmpl	%edi, %r13d
	movb	%r14b, (%rsi)
	setne	%al
	incl	%edi
	addq	$4, %rsi
	negl	%eax
	movb	%al, -1(%rsi)
	cmpl	%edi, %ebp
	je	.L830
.L849:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L832
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %r14d
	jmp	.L833
	.p2align 4,,7
.L853:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %r14d
	jmp	.L841
	.p2align 4,,7
.L851:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %r14d
	jmp	.L837
	.p2align 4,,7
.L852:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r12, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L838
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L839:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L837
	.p2align 4,,7
.L850:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r12, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L834
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L835:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L833
	.p2align 4,,7
.L854:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r12, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L842
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L843:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L841
	.p2align 4,,7
.L838:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %r14d
	addq	%r12, %rax
	jmp	.L839
	.p2align 4,,7
.L842:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %r14d
	addq	%r12, %rax
	jmp	.L843
	.p2align 4,,7
.L834:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %r14d
	addq	%r12, %rax
	jmp	.L835
	.p2align 4,,7
.L830:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20stbi__pnm_getintegerP13stbi__contextPc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbi__pnm_getintegerP13stbi__contextPc
_ZL20stbi__pnm_getintegerP13stbi__contextPc:
.LFB746:
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
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	leaq	56(%rcx), %rbp
	cmpq	$0, 16(%rbx)
	je	.L862
	.p2align 4,,7
.L856:
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	jne	.L859
	movsbl	(%rdi), %eax
	leal	-48(%rax), %edx
	cmpb	$9, %dl
	jbe	.L860
.L872:
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L860:
	leal	0(,%rsi,8), %edx
	leal	(%rdx,%rsi,2), %edx
	leal	-48(%rdx,%rax), %esi
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L868
	movl	48(%rbx), %eax
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jne	.L875
.L864:
	movb	%r12b, (%rdi)
	cmpq	$0, 16(%rbx)
	jne	.L856
.L862:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L872
	movsbl	(%rdi), %edx
	leal	-48(%rdx), %ecx
	cmpb	$9, %cl
	ja	.L872
	leal	0(,%rsi,8), %ecx
	leal	(%rcx,%rsi,2), %ecx
	leal	-48(%rcx,%rdx), %esi
.L868:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %r12d
	jmp	.L864
	.p2align 4,,7
.L859:
	movl	48(%rbx), %edx
	testl	%edx, %edx
	jne	.L862
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L875:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L865
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L866:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L864
	.p2align 4,,7
.L865:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %r12d
	addq	%rbp, %rax
	jmp	.L866
	.seh_endproc
	.p2align 4,,15
	.def	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg:
.LFB623:
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
	movq	%rcx, %rsi
	jmp	.L895
	.p2align 4,,7
.L877:
	movl	18468(%rsi), %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %edi
	orl	%edi, 18464(%rsi)
	cmpl	$24, %eax
	movl	%eax, 18468(%rsi)
	jg	.L876
.L895:
	movl	18476(%rsi), %eax
	xorl	%edi, %edi
	testl	%eax, %eax
	jne	.L877
	movq	(%rsi), %rbx
	movq	184(%rbx), %rdx
	cmpq	192(%rbx), %rdx
	jb	.L911
	movl	48(%rbx), %edx
	movl	%eax, %edi
	testl	%edx, %edx
	je	.L877
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L880
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%edi, %edi
	movq	%rax, %rdx
.L881:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
.L879:
	cmpl	$255, %edi
	jne	.L877
	.p2align 4,,7
.L910:
	movq	(%rsi), %rbx
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L912
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L877
	leaq	56(%rbx), %r12
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r12, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L885
	leaq	57(%rbx), %rdx
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rdx, %rcx
.L886:
	movq	%rdx, 192(%rbx)
	movq	%rcx, 184(%rbx)
.L883:
	cmpl	$255, %eax
	je	.L910
	testl	%eax, %eax
	je	.L877
	movb	%al, 18472(%rsi)
	movl	$1, 18476(%rsi)
.L876:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L912:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	jmp	.L883
	.p2align 4,,7
.L885:
	cltq
	leaq	57(%rbx), %rcx
	leaq	(%r12,%rax), %rdx
	movzbl	56(%rbx), %eax
	jmp	.L886
	.p2align 4,,7
.L911:
	leaq	1(%rdx), %rax
	movq	%rax, 184(%rbx)
	movzbl	(%rdx), %edi
	jmp	.L879
	.p2align 4,,7
.L880:
	cltq
	leaq	57(%rbx), %rdx
	addq	%rdi, %rax
	movzbl	56(%rbx), %edi
	jmp	.L881
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC38:
	.ascii "(((j->code_buffer) >> (32 - h->size[c])) & stbi__bmask[h->size[c]]) == h->code[c]\0"
	.text
	.p2align 4,,15
	.def	_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman
_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman:
.LFB624:
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
	movl	18468(%rcx), %eax
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	cmpl	$15, %eax
	jle	.L930
.L914:
	movl	18464(%rsi), %edx
	movl	%edx, %ecx
	shrl	$23, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rbx,%rcx), %ecx
	cmpl	$255, %ecx
	je	.L915
	movslq	%ecx, %r8
	movzbl	1280(%rbx,%r8), %ecx
	cmpl	%eax, %ecx
	jg	.L928
	subl	%ecx, %eax
	sall	%cl, %edx
	movl	%edx, 18464(%rsi)
	movl	%eax, 18468(%rsi)
	movzbl	1024(%rbx,%r8), %eax
.L929:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L915:
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	1580(%rbx), %ecx
	jb	.L921
	cmpl	1584(%rbx), %ecx
	jb	.L922
	cmpl	1588(%rbx), %ecx
	jb	.L923
	cmpl	1592(%rbx), %ecx
	jb	.L924
	cmpl	1596(%rbx), %ecx
	jb	.L925
	cmpl	1600(%rbx), %ecx
	jb	.L926
	cmpl	1604(%rbx), %ecx
	jb	.L927
	subl	$16, %eax
	movl	%eax, 18468(%rsi)
	movl	$-1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L930:
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%rsi), %eax
	jmp	.L914
	.p2align 4,,7
.L921:
	movl	$10, %ebp
	.p2align 4,,7
.L917:
	cmpl	%eax, %ebp
	jg	.L928
	movl	$32, %r9d
	leaq	_ZL11stbi__bmask(%rip), %r10
	movl	%edx, %edi
	movl	%r9d, %ecx
	movl	%edx, %r11d
	subl	%ebp, %ecx
	shrl	%cl, %edi
	movslq	%ebp, %rcx
	andl	(%r10,%rcx,4), %edi
	addl	1612(%rbx,%rcx,4), %edi
	movl	%r9d, %ecx
	movslq	%edi, %rdi
	movzbl	1280(%rbx,%rdi), %r8d
	subl	%r8d, %ecx
	shrl	%cl, %r11d
	movl	(%r10,%r8,4), %ecx
	movzwl	512(%rbx,%rdi,2), %r8d
	andl	%r11d, %ecx
	cmpl	%r8d, %ecx
	je	.L919
	leaq	.LC3(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$1837, %r8d
	call	_assert
	movl	18468(%rsi), %eax
	movl	18464(%rsi), %edx
.L919:
	movl	%ebp, %ecx
	subl	%ebp, %eax
	sall	%cl, %edx
	movl	%eax, 18468(%rsi)
	movl	%edx, 18464(%rsi)
	movzbl	1024(%rbx,%rdi), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L926:
	movl	$15, %ebp
	jmp	.L917
	.p2align 4,,7
.L925:
	movl	$14, %ebp
	jmp	.L917
	.p2align 4,,7
.L927:
	movl	$16, %ebp
	jmp	.L917
	.p2align 4,,7
.L922:
	movl	$11, %ebp
	jmp	.L917
	.p2align 4,,7
.L924:
	movl	$13, %ebp
	jmp	.L917
	.p2align 4,,7
.L923:
	movl	$12, %ebp
	jmp	.L917
	.p2align 4,,7
.L928:
	movl	$-1, %eax
	jmp	.L929
	.seh_endproc
	.p2align 4,,15
	.def	_ZL13stbi__get16beP13stbi__context;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13stbi__get16beP13stbi__context
_ZL13stbi__get16beP13stbi__context:
.LFB611:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	184(%rcx), %rax
	movq	192(%rcx), %rdx
	movq	%rcx, %rbx
	cmpq	%rdx, %rax
	jb	.L943
	movl	48(%rcx), %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	jne	.L944
.L934:
	addl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L944:
	leaq	56(%rcx), %rdi
	movl	52(%rbx), %r8d
	movq	40(%rcx), %rcx
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L945
	movzbl	56(%rbx), %esi
	cltq
	leaq	57(%rbx), %rcx
	leaq	(%rdi,%rax), %rdx
	sall	$8, %esi
.L936:
	cmpq	%rdx, %rcx
	movq	%rdx, 192(%rbx)
	movq	%rcx, 184(%rbx)
	jb	.L937
.L947:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L934
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L946
	cltq
	leaq	57(%rbx), %rcx
	leaq	(%rdi,%rax), %rdx
	movzbl	56(%rbx), %eax
.L940:
	addl	%esi, %eax
	movq	%rdx, 192(%rbx)
	movq	%rcx, 184(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L943:
	leaq	1(%rax), %rcx
	movq	%rcx, 184(%rbx)
	movzbl	(%rax), %esi
	sall	$8, %esi
	cmpq	%rdx, %rcx
	jnb	.L947
.L937:
	leaq	1(%rcx), %rax
	movq	%rax, 184(%rbx)
	movzbl	(%rcx), %eax
	addl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L946:
	leaq	57(%rbx), %rdx
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rdx, %rcx
	jmp	.L940
	.p2align 4,,7
.L945:
	leaq	57(%rbx), %rdx
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rdx, %rcx
	jmp	.L936
	.seh_endproc
	.p2align 4,,15
	.def	_ZL13stbi__get32beP13stbi__context;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13stbi__get32beP13stbi__context
_ZL13stbi__get32beP13stbi__context:
.LFB612:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	call	_ZL13stbi__get16beP13stbi__context
	movl	%eax, %ebx
	movq	%rsi, %rcx
	sall	$16, %ebx
	call	_ZL13stbi__get16beP13stbi__context
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
.LFB613:
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
	jb	.L961
	movl	48(%rbx), %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	jne	.L962
.L952:
	addl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L962:
	leaq	56(%rbx), %rsi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rsi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L963
	cltq
	leaq	(%rsi,%rax), %rdx
	movzbl	56(%rbx), %esi
	leaq	57(%rbx), %rax
.L954:
	cmpq	%rdx, %rax
	movq	%rdx, 192(%rbx)
	movq	%rax, 184(%rbx)
	jb	.L955
.L965:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L952
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L964
	cltq
	leaq	57(%rbx), %rcx
	leaq	(%rdi,%rax), %rdx
	movzbl	56(%rbx), %eax
	sall	$8, %eax
.L958:
	addl	%esi, %eax
	movq	%rdx, 192(%rbx)
	movq	%rcx, 184(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L961:
	leaq	1(%rcx), %rax
	cmpq	%rdx, %rax
	movq	%rax, 184(%rbx)
	movzbl	(%rcx), %esi
	jnb	.L965
.L955:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
	sall	$8, %eax
	addl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L964:
	leaq	57(%rbx), %rdx
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rdx, %rcx
	jmp	.L958
	.p2align 4,,7
.L963:
	leaq	57(%rbx), %rdx
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%esi, %esi
	movq	%rdx, %rax
	jmp	.L954
	.seh_endproc
	.p2align 4,,15
	.def	_ZL13stbi__get32leP13stbi__context;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13stbi__get32leP13stbi__context
_ZL13stbi__get32leP13stbi__context:
.LFB614:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rsi, %rcx
	movl	%eax, %ebx
	call	_ZL13stbi__get16leP13stbi__context
	sall	$16, %eax
	addl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc
_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc:
.LFB744:
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
	leaq	56(%rcx), %rbp
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	.p2align 4,,7
.L968:
	cmpq	$0, 16(%rbx)
	je	.L1026
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L973
	movl	48(%rbx), %r9d
	testl	%r9d, %r9d
	je	.L977
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L1027
	cmpq	$0, 16(%rbx)
	je	.L967
.L984:
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L986
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L990
.L967:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L1026:
	movq	184(%rbx), %rax
	cmpq	%rax, 192(%rbx)
	jbe	.L967
.L973:
	movzbl	(%rsi), %eax
	leal	-9(%rax), %edx
	cmpb	$4, %dl
	jbe	.L975
	cmpb	$32, %al
	je	.L975
.L977:
	cmpq	$0, 16(%rbx)
	jne	.L984
.L990:
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jnb	.L967
.L986:
	cmpb	$35, (%rsi)
	je	.L988
	jmp	.L967
	.p2align 4,,7
.L994:
	movl	48(%rbx), %edx
	testl	%edx, %edx
	.p2align 4,,3
	je	.L968
.L998:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L968
	movzbl	(%rsi), %edx
	cmpb	$10, %dl
	je	.L968
	cmpb	$13, %dl
	je	.L968
.L1006:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edi
.L1000:
	movb	%dil, (%rsi)
.L988:
	cmpq	$0, 16(%rbx)
	je	.L998
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	jne	.L994
	movzbl	(%rsi), %eax
	cmpb	$13, %al
	je	.L968
	cmpb	$10, %al
	.p2align 4,,2
	je	.L968
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L1006
	movl	48(%rbx), %eax
	xorl	%edi, %edi
	testl	%eax, %eax
	je	.L1000
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L1001
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L1002:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L1000
	.p2align 4,,7
.L1001:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %edi
	addq	%rbp, %rax
	jmp	.L1002
	.p2align 4,,7
.L975:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L1004
	movl	48(%rbx), %r8d
	xorl	%edi, %edi
	testl	%r8d, %r8d
	jne	.L1028
.L980:
	movb	%dil, (%rsi)
	jmp	.L968
.L1027:
	movzbl	(%rsi), %edx
	leal	-9(%rdx), %ecx
	cmpb	$4, %cl
	jbe	.L1004
	cmpb	$32, %dl
	jne	.L977
	.p2align 4,,7
.L1004:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edi
	jmp	.L980
.L1028:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L981
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L982:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L980
.L981:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %edi
	addq	%rbp, %rax
	jmp	.L982
	.seh_endproc
	.section .rdata,"dr"
.LC39:
	.ascii "bad file\0"
	.text
	.p2align 4,,15
	.def	_ZL13stbi__readvalP13stbi__contextiPh;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13stbi__readvalP13stbi__contextiPh
_ZL13stbi__readvalP13stbi__contextiPh:
.LFB716:
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
	movl	$128, %edi
	leaq	4(%r8), %r13
	leaq	56(%rcx), %r14
	movq	%rcx, %rbx
	movl	%edx, %r12d
	movq	%r8, %rbp
	movq	%r8, %rsi
.L1041:
	testl	%edi, %r12d
	je	.L1030
	cmpq	$0, 16(%rbx)
	je	.L1035
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L1034
	movl	48(%rbx), %edx
	testl	%edx, %edx
	je	.L1032
.L1035:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L1032
.L1033:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %r15d
.L1038:
	movb	%r15b, (%rsi)
.L1030:
	incq	%rsi
	sarl	%edi
	cmpq	%r13, %rsi
	jne	.L1041
	movq	%rbp, %rax
.L1036:
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
	.p2align 4,,7
.L1034:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L1033
	movl	48(%rbx), %eax
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.L1038
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r14, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L1039
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L1040:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L1038
	.p2align 4,,7
.L1039:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %r15d
	addq	%r14, %rax
	jmp	.L1040
	.p2align 4,,7
.L1032:
	leaq	.LC39(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L1036
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16stbi__get_markerP10stbi__jpeg.isra.1.part.2;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__get_markerP10stbi__jpeg.isra.1.part.2
_ZL16stbi__get_markerP10stbi__jpeg.isra.1.part.2:
.LFB7854:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rbx
	movq	%rcx, %rsi
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L1061
	movl	48(%rbx), %edx
	testl	%edx, %edx
	jne	.L1062
.L1050:
	movl	$-1, %eax
.L1054:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L1062:
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L1063
	movzbl	56(%rbx), %edx
	cltq
	leaq	57(%rbx), %rcx
	addq	%rdi, %rax
.L1052:
	incb	%dl
	movq	%rax, 192(%rbx)
	movq	%rcx, 184(%rbx)
	jne	.L1050
	.p2align 4,,7
.L1053:
	movq	(%rsi), %rbx
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L1064
	movl	48(%rbx), %eax
	testl	%eax, %eax
	jne	.L1065
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L1061:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edx
	incb	%dl
	jne	.L1050
	jmp	.L1053
	.p2align 4,,7
.L1064:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
.L1056:
	cmpb	$-1, %al
	je	.L1053
	jmp	.L1054
	.p2align 4,,7
.L1065:
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L1066
	cltq
	leaq	57(%rbx), %rcx
	leaq	(%rdi,%rax), %rdx
	movzbl	56(%rbx), %eax
.L1058:
	movq	%rdx, 192(%rbx)
	movq	%rcx, 184(%rbx)
	jmp	.L1056
	.p2align 4,,7
.L1066:
	leaq	57(%rbx), %rdx
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rdx, %rcx
	jmp	.L1058
	.p2align 4,,7
.L1063:
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%edx, %edx
	movq	%rax, %rcx
	jmp	.L1052
	.seh_endproc
	.section .rdata,"dr"
.LC40:
	.ascii "not GIF\0"
.LC41:
	.ascii "\0"
	.text
	.p2align 4,,15
	.def	_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii
_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii:
.LFB724:
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
	movq	%rdx, %rsi
	movq	%r8, %rdi
	movl	%r9d, %ebp
	jb	.L1085
	movl	48(%rcx), %eax
	testl	%eax, %eax
	jne	.L1086
.L1076:
	leaq	.LC40(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L1075:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L1086:
	leaq	56(%rcx), %r12
	movl	52(%rbx), %r8d
	movq	40(%rcx), %rcx
	movq	%r12, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L1087
	movzbl	56(%rbx), %edx
	cltq
	leaq	57(%rbx), %rcx
	addq	%r12, %rax
.L1072:
	cmpb	$71, %dl
	movq	%rax, 192(%rbx)
	movq	%rcx, 184(%rbx)
	jne	.L1076
.L1088:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$73, %al
	jne	.L1076
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$70, %al
	jne	.L1076
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$56, %al
	jne	.L1076
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	subl	$55, %eax
	testb	$-3, %al
	jne	.L1076
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$97, %al
	jne	.L1076
	leaq	.LC41(%rip), %rax
	movq	%rbx, %rcx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, (%rsi)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 4(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	movq	%rbx, %rcx
	movl	%eax, 24(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	movq	%rbx, %rcx
	movl	%eax, 28(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	testq	%rdi, %rdi
	movzbl	%al, %eax
	movl	$-1, 36(%rsi)
	movl	%eax, 32(%rsi)
	je	.L1077
	movl	$4, (%rdi)
.L1077:
	testl	%ebp, %ebp
	movl	$1, %eax
	jne	.L1075
	movl	24(%rsi), %ecx
	testb	$-128, %cl
	je	.L1075
	andl	$7, %ecx
	leaq	48(%rsi), %rdx
	movl	$2, %r8d
	sall	%cl, %r8d
	movl	$-1, %r9d
	movq	%rbx, %rcx
	movl	%eax, 44(%rsp)
	call	_ZL26stbi__gif_parse_colortableP13stbi__contextPA4_hii
	movl	44(%rsp), %eax
	jmp	.L1075
	.p2align 4,,7
.L1085:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rcx)
	movzbl	(%rax), %edx
	cmpb	$71, %dl
	jne	.L1076
	jmp	.L1088
	.p2align 4,,7
.L1087:
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%edx, %edx
	movq	%rax, %rcx
	jmp	.L1072
	.seh_endproc
	.section .rdata,"dr"
.LC42:
	.ascii "111 221 2222 11\0"
	.text
	.p2align 4,,15
	.def	_ZL13stbiw__writefP19stbi__write_contextPKcz.constprop.107;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL13stbiw__writefP19stbi__write_contextPKcz.constprop.107
_ZL13stbiw__writefP19stbi__write_contextPKcz.constprop.107:
.LFB7955:
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
	leaq	.LC42(%rip), %rbx
	leaq	112(%rsp), %rdx
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%r8, 112(%rsp)
	movq	%r9, 120(%rsp)
	movq	%rdx, 40(%rsp)
.L1090:
	movzbl	(%rbx), %eax
	testb	%al, %al
	je	.L1089
.L1105:
	incq	%rbx
	cmpb	$49, %al
	je	.L1094
	jle	.L1104
	cmpb	$50, %al
	.p2align 4,,4
	je	.L1096
	cmpb	$52, %al
	.p2align 4,,7
	jne	.L1093
	movl	(%rdx), %eax
	leaq	8(%rdx), %rbp
	movq	8(%rsi), %rcx
	movl	$4, %r8d
	movl	%eax, %edx
	movb	%al, 32(%rsp)
	shrl	$8, %edx
	movb	%dl, 33(%rsp)
	movl	%eax, %edx
	shrl	$24, %eax
	shrl	$16, %edx
	movb	%al, 35(%rsp)
	movb	%dl, 34(%rsp)
	movq	%rdi, %rdx
	call	*(%rsi)
	movzbl	(%rbx), %eax
	movq	%rbp, %rdx
	testb	%al, %al
	jne	.L1105
.L1089:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L1104:
	cmpb	$32, %al
	je	.L1090
.L1093:
	leaq	.LC32(%rip), %rdx
	leaq	.LC8(%rip), %rcx
	movl	$266, %r8d
	call	_assert
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L1094:
	movl	(%rdx), %eax
	leaq	8(%rdx), %rbp
	movq	8(%rsi), %rcx
	movq	%rdi, %rdx
	movl	$1, %r8d
	movb	%al, 32(%rsp)
	call	*(%rsi)
	movq	%rbp, %rdx
	jmp	.L1090
	.p2align 4,,7
.L1096:
	movl	(%rdx), %eax
	leaq	8(%rdx), %rbp
	movq	8(%rsi), %rcx
	movq	%rdi, %rdx
	movl	$2, %r8d
	movb	%al, 32(%rsp)
	sarl	$8, %eax
	movb	%al, 33(%rsp)
	call	*(%rsi)
	movq	%rbp, %rdx
	jmp	.L1090
	.seh_endproc
	.p2align 4,,15
	.def	_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv
_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv:
.LFB766:
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
	.seh_endprologue
	leal	-2(%r9), %r15d
	movl	%edx, 376(%rsp)
	movl	%r9d, %edx
	movq	%rcx, %r12
	movl	%r8d, %edi
	movl	%r8d, %ebx
	andl	$-3, %r15d
	movl	%r9d, %r14d
	cmpl	$1, %r15d
	sbbl	$0, %edx
	cmpl	$1, %edx
	setle	%al
	movzbl	%al, %ecx
	movzbl	%al, %eax
	addl	$10, %ecx
	addl	$2, %eax
	shrl	$31, %edi
	jne	.L1143
	movl	376(%rsp), %edi
	shrl	$31, %edi
	jne	.L1143
	movl	stbi_write_tga_with_rle(%rip), %r9d
	xorl	%r8d, %r8d
	testl	%r15d, %r15d
	sete	%r8b
	testl	%r9d, %r9d
	je	.L1172
	leal	0(,%r8,8), %eax
	movl	%ecx, 32(%rsp)
	xorl	%r9d, %r9d
	movl	%ebx, 88(%rsp)
	movl	$0, 72(%rsp)
	movq	%r12, %rcx
	movl	%eax, 104(%rsp)
	leal	(%rdx,%r8), %eax
	leaq	.LC42(%rip), %rdx
	xorl	%r8d, %r8d
	movl	$0, 64(%rsp)
	movl	$0, 56(%rsp)
	sall	$3, %eax
	movl	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	%eax, 96(%rsp)
	movl	376(%rsp), %eax
	movl	%eax, 80(%rsp)
	call	_ZL13stbiw__writefP19stbi__write_contextPKcz.constprop.107
	leal	-1(%rbx), %eax
	movl	%eax, 244(%rsp)
	incl	%eax
	je	.L1113
	movl	376(%rsp), %eax
	movslq	%r14d, %rdi
	negl	%eax
	imull	%r14d, %eax
	cltq
	movq	%rax, 248(%rsp)
	movl	244(%rsp), %eax
	imull	376(%rsp), %eax
	imull	%r14d, %eax
	cltq
	addq	400(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	(%rdi,%rdi), %rax
	movq	%rax, 232(%rsp)
	movl	376(%rsp), %eax
	decl	%eax
	movl	%eax, 240(%rsp)
	leaq	271(%rsp), %rax
	movq	%rax, 216(%rsp)
	leaq	-1(%rdi), %rax
	movq	%rax, 192(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 200(%rsp)
	.p2align 4,,7
.L1114:
	movl	376(%rsp), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.L1138
	.p2align 4,,7
.L1139:
	movl	%r14d, %ebp
	movq	208(%rsp), %r13
	imull	%ebx, %ebp
	movslq	%ebp, %rsi
	addq	%r13, %rsi
	cmpl	240(%rsp), %ebx
	jge	.L1115
	addl	%r14d, %ebp
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movslq	%ebp, %rdx
	addq	%r13, %rdx
	call	memcmp
	testl	%eax, %eax
	leal	2(%rbx), %eax
	je	.L1116
	cmpl	%eax, 376(%rsp)
	jle	.L1144
	addl	%r14d, %ebp
	movq	%rsi, 224(%rsp)
	movq	%r12, 368(%rsp)
	movslq	%ebp, %rbp
	movq	%rdi, %r12
	movq	%rsi, %rdi
	addq	%r13, %rbp
	movl	376(%rsp), %esi
	movl	$2, %r13d
	movq	%rbp, %rax
	movq	%rax, %rbp
	jmp	.L1119
	.p2align 4,,7
.L1173:
	incl	%r13d
	addq	%r12, %rdi
	addq	%r12, %rbp
	leal	(%rbx,%r13), %eax
	cmpl	%eax, %esi
	jle	.L1146
	cmpl	$127, %r13d
	jg	.L1146
.L1119:
	movq	%r12, %r8
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	call	memcmp
	testl	%eax, %eax
	jne	.L1173
	decl	%r13d
	movq	%r12, %rdi
	movq	368(%rsp), %r12
	leal	0(%r13,%rbx), %eax
	leal	-1(%r13), %edx
	movq	224(%rsp), %rsi
	movl	%eax, 224(%rsp)
	.p2align 4,,7
.L1117:
	movb	%dl, 271(%rsp)
	movq	8(%r12), %rcx
	movl	$1, %r8d
	movq	216(%rsp), %rdx
	xorl	%ebx, %ebx
	call	*(%r12)
	movq	232(%rsp), %rax
	movq	%r12, 368(%rsp)
	leaq	(%rsi,%rax), %rbp
	movq	%rbp, %r12
	movq	368(%rsp), %rbp
	jmp	.L1131
	.p2align 4,,7
.L1175:
	cmpl	$1, %r14d
	jl	.L1125
	movq	8(%rbp), %rcx
	movl	$1, %r8d
	movq	%rsi, %rdx
	call	*0(%rbp)
.L1125:
	testl	%r15d, %r15d
	jne	.L1130
	movq	192(%rsp), %rax
	movq	8(%rbp), %rcx
	movl	$1, %r8d
	leaq	(%rax,%rsi), %rdx
	call	*0(%rbp)
.L1130:
	incl	%ebx
	addq	%rdi, %r12
	addq	%rdi, %rsi
	cmpl	%r13d, %ebx
	je	.L1174
.L1131:
	cmpl	$3, %r14d
	je	.L1126
	jle	.L1175
	cmpl	$4, %r14d
	.p2align 4,,3
	jne	.L1125
	testl	%r15d, %r15d
	.p2align 4,,4
	je	.L1126
	movzbl	(%rsi), %r8d
	movzbl	3(%rsi), %ecx
	incl	%ebx
	prefetcht0	3(%r12)
	addq	%rdi, %r12
	subl	$255, %r8d
	imull	%ecx, %r8d
	movslq	%r8d, %rdx
	imulq	$-2139062143, %rdx, %rdx
	shrq	$32, %rdx
	addl	%r8d, %edx
	sarl	$31, %r8d
	sarl	$7, %edx
	subl	%r8d, %edx
	movzbl	1(%rsi), %r8d
	decl	%edx
	movb	%dl, 274(%rsp)
	movq	200(%rsp), %rdx
	movl	%r8d, %r9d
	imull	%ecx, %r9d
	movslq	%r9d, %r8
	imulq	$-2139062143, %r8, %r8
	shrq	$32, %r8
	addl	%r9d, %r8d
	movzbl	2(%rsi), %r9d
	addq	%rdi, %rsi
	sarl	$7, %r8d
	movb	%r8b, 273(%rsp)
	movl	$3, %r8d
	subl	$255, %r9d
	imull	%ecx, %r9d
	movslq	%r9d, %rcx
	imulq	$-2139062143, %rcx, %rcx
	shrq	$32, %rcx
	addl	%r9d, %ecx
	sarl	$31, %r9d
	sarl	$7, %ecx
	subl	%r9d, %ecx
	decl	%ecx
	movb	%cl, 272(%rsp)
	movq	8(%rbp), %rcx
	call	*0(%rbp)
	cmpl	%r13d, %ebx
	jne	.L1131
	.p2align 4,,7
.L1174:
	movl	224(%rsp), %ebx
	movq	%rbp, %r12
.L1132:
	cmpl	%ebx, 376(%rsp)
	jg	.L1139
.L1138:
	decl	244(%rsp)
	movq	248(%rsp), %rsi
	movl	244(%rsp), %eax
	addq	%rsi, 208(%rsp)
	incl	%eax
	jne	.L1114
.L1113:
	movl	$1, %eax
	jmp	.L1168
.L1172:
	movl	%eax, 104(%rsp)
	leaq	.LC42(%rip), %rax
	movl	376(%rsp), %edi
	leal	0(,%r8,8), %ecx
	addl	%r8d, %edx
	movl	%r8d, 64(%rsp)
	movq	%rax, 80(%rsp)
	movq	400(%rsp), %rax
	sall	$3, %edx
	movl	$-1, %r8d
	movl	%ecx, 176(%rsp)
	movl	%edx, 168(%rsp)
	movl	$0, 112(%rsp)
	movl	$0, 96(%rsp)
	movl	%edi, %r9d
	movl	$0, 88(%rsp)
	movl	$0, 72(%rsp)
	movl	%r8d, %edx
	movq	%rax, 56(%rsp)
	movl	$0, 48(%rsp)
	movq	%r12, %rcx
	movl	%r14d, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%ebx, 160(%rsp)
	movl	%edi, 152(%rsp)
	movl	$0, 144(%rsp)
	movl	$0, 136(%rsp)
	movl	$0, 128(%rsp)
	movl	$0, 120(%rsp)
	call	_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.103
.L1168:
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
	.p2align 4,,7
.L1126:
	movzbl	(%rsi), %edx
	movzbl	1(%rsi), %ecx
	prefetcht0	(%r12)
	movzbl	2(%rsi), %r8d
	prefetcht0	1(%r12)
	prefetcht0	2(%r12)
	movb	%cl, 273(%rsp)
	movb	%dl, 274(%rsp)
	movb	%r8b, 272(%rsp)
	movq	8(%rbp), %rcx
	movl	$3, %r8d
	movq	200(%rsp), %rdx
	call	*0(%rbp)
	jmp	.L1125
	.p2align 4,,7
.L1115:
	leal	1(%rbx), %eax
	xorl	%edx, %edx
	movl	$1, %r13d
	movl	%eax, 224(%rsp)
	jmp	.L1117
	.p2align 4,,7
.L1116:
	cmpl	%eax, 376(%rsp)
	jle	.L1145
	addl	%r14d, %ebp
	movq	%r12, 368(%rsp)
	movl	$2, %r13d
	movslq	%ebp, %rbp
	addq	208(%rsp), %rbp
	movq	%rbp, %r12
	movl	376(%rsp), %ebp
	jmp	.L1123
	.p2align 4,,7
.L1122:
	incl	%r13d
	addq	%rdi, %r12
	leal	0(%r13,%rbx), %eax
	cmpl	%eax, %ebp
	jle	.L1147
	cmpl	$127, %r13d
	jg	.L1147
.L1123:
	movq	%rdi, %r8
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	memcmp
	testl	%eax, %eax
	je	.L1122
	movq	368(%rsp), %r12
	leal	127(%r13), %edx
	addl	%r13d, %ebx
.L1121:
	movb	%dl, 271(%rsp)
	movq	8(%r12), %rcx
	movl	$1, %r8d
	movq	216(%rsp), %rdx
	call	*(%r12)
	cmpl	$3, %r14d
	je	.L1136
	jg	.L1140
	cmpl	$1, %r14d
	.p2align 4,,3
	jl	.L1134
	movq	8(%r12), %rcx
	movl	$1, %r8d
	movq	%rsi, %rdx
	call	*(%r12)
.L1134:
	testl	%r15d, %r15d
	jne	.L1132
	movq	192(%rsp), %rax
	movq	8(%r12), %rcx
	movl	$1, %r8d
	leaq	(%rsi,%rax), %rdx
	call	*(%r12)
	jmp	.L1132
	.p2align 4,,7
.L1140:
	cmpl	$4, %r14d
	jne	.L1134
	testl	%r15d, %r15d
	.p2align 4,,4
	je	.L1136
	movzbl	(%rsi), %ecx
	movzbl	3(%rsi), %edx
	subl	$255, %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rax
	imulq	$-2139062143, %rax, %rax
	shrq	$32, %rax
	addl	%ecx, %eax
	sarl	$31, %ecx
	sarl	$7, %eax
	subl	%ecx, %eax
	movzbl	1(%rsi), %ecx
	decl	%eax
	movb	%al, 274(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %r8
	imulq	$-2139062143, %r8, %rcx
	shrq	$32, %rcx
	addl	%r8d, %ecx
	movzbl	2(%rsi), %r8d
	sarl	$7, %ecx
	movb	%cl, 273(%rsp)
	movq	8(%r12), %rcx
	subl	$255, %r8d
	imull	%edx, %r8d
	movslq	%r8d, %rdx
	imulq	$-2139062143, %rdx, %rdx
	shrq	$32, %rdx
	addl	%r8d, %edx
	sarl	$31, %r8d
	sarl	$7, %edx
	subl	%r8d, %edx
	movl	$3, %r8d
	decl	%edx
	movb	%dl, 272(%rsp)
	movq	200(%rsp), %rdx
	call	*(%r12)
	jmp	.L1132
	.p2align 4,,7
.L1136:
	movzbl	1(%rsi), %edx
	movzbl	2(%rsi), %ecx
	movl	$3, %r8d
	movzbl	(%rsi), %eax
	movb	%cl, 272(%rsp)
	movb	%dl, 273(%rsp)
	movb	%al, 274(%rsp)
	movq	8(%r12), %rcx
	movq	200(%rsp), %rdx
	call	*(%r12)
	jmp	.L1134
	.p2align 4,,7
.L1146:
	movq	224(%rsp), %rsi
	movq	%r12, %rdi
	leal	-1(%r13), %edx
	movq	368(%rsp), %r12
	movl	%eax, 224(%rsp)
	jmp	.L1117
	.p2align 4,,7
.L1147:
	movq	368(%rsp), %r12
	leal	127(%r13), %edx
	movl	%eax, %ebx
	jmp	.L1121
.L1144:
	movl	%eax, 224(%rsp)
	movl	$1, %edx
	movl	$2, %r13d
	jmp	.L1117
.L1145:
	movl	%eax, %ebx
	movl	$-127, %edx
	jmp	.L1121
.L1143:
	xorl	%eax, %eax
	jmp	.L1168
	.seh_endproc
	.p2align 4,,15
	.def	_ZL18stbiw__zlib_flushfPhPjPi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18stbiw__zlib_flushfPhPjPi
_ZL18stbiw__zlib_flushfPhPjPi:
.LFB777:
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
	movq	%r8, %rdi
	jle	.L1184
	.p2align 4,,7
.L1181:
	testq	%rbx, %rbx
	je	.L1178
	movslq	-4(%rbx), %rax
	movl	-8(%rbx), %ecx
	leal	1(%rax), %edx
	cmpl	%ecx, %edx
	jl	.L1179
	leal	1(%rcx,%rcx), %ebp
	leaq	-8(%rbx), %rcx
	movslq	%ebp, %rdx
	addq	$8, %rdx
	call	realloc
	testq	%rax, %rax
	je	.L1183
.L1180:
	leaq	8(%rax), %rbx
	movl	%ebp, (%rax)
	movslq	4(%rax), %rax
	leal	1(%rax), %edx
.L1179:
	movl	%edx, -4(%rbx)
	movl	(%rsi), %edx
	movb	%dl, (%rbx,%rax)
	shrl	$8, (%rsi)
	movl	(%rdi), %eax
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, (%rdi)
	jg	.L1181
.L1184:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L1178:
	xorl	%ecx, %ecx
	movl	$10, %edx
	call	realloc
	testq	%rax, %rax
	je	.L1183
	movl	$0, 4(%rax)
	movl	$2, %ebp
	jmp	.L1180
	.p2align 4,,7
.L1183:
	leaq	.LC32(%rip), %rdx
	leaq	.LC33(%rip), %rcx
	movl	$666, %r8d
	call	_assert
	movslq	-4(%rbx), %rax
	leal	1(%rax), %edx
	jmp	.L1179
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC43:
	.ascii "n >= 0 && n < (int) (sizeof(stbi__bmask)/sizeof(*stbi__bmask))\0"
.LC44:
	.ascii "bad huffman code\0"
	.text
	.p2align 4,,15
	.def	_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt
_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt:
.LFB628:
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
	movl	18468(%rcx), %eax
	movq	160(%rsp), %rbx
	movq	%rcx, %r12
	movq	%rdx, %rsi
	movq	%r8, %rdi
	movq	%r9, %r13
	movq	176(%rsp), %rbp
	cmpl	$15, %eax
	jle	.L1237
.L1187:
	movl	18464(%r12), %edx
	movl	%edx, %ecx
	shrl	$23, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rdi,%rcx), %ecx
	cmpl	$255, %ecx
	je	.L1188
	movslq	%ecx, %r8
	movzbl	1280(%rdi,%r8), %ecx
	cmpl	%eax, %ecx
	jg	.L1193
	sall	%cl, %edx
	subl	%ecx, %eax
	movl	%edx, 18464(%r12)
	movl	%eax, 18468(%r12)
	movzbl	1024(%rdi,%r8), %r14d
.L1190:
	xorl	%eax, %eax
	movl	$16, %ecx
	movq	%rsi, %rdi
	testl	%r14d, %r14d
	rep stosq
	jne	.L1211
	movl	18468(%r12), %edx
.L1212:
	movslq	168(%rsp), %rax
	movl	$1, %edi
	movq	%rax, %r8
	salq	$7, %rax
	salq	$5, %r8
	subq	%r8, %rax
	addq	%r12, %rax
	addl	18104(%rax), %ecx
	movl	%ecx, 18104(%rax)
	imulw	0(%rbp), %cx
	movw	%cx, (%rsi)
	jmp	.L1210
	.p2align 4,,7
.L1197:
	movl	18464(%r12), %r8d
	movl	%r8d, %eax
	shrl	$23, %eax
	movl	%eax, %ecx
	movswl	(%rbx,%rcx,2), %r9d
	testl	%r9d, %r9d
	movl	%r9d, %ecx
	je	.L1200
.L1216:
	movl	%r9d, %eax
	andl	$15, %ecx
	sarl	$8, %r9d
	sarl	$4, %eax
	sall	%cl, %r8d
	subl	%ecx, %edx
	andl	$15, %eax
	leaq	_ZL19stbi__jpeg_dezigzag(%rip), %rcx
	movl	%r8d, 18464(%r12)
	addl	%edi, %eax
	movl	%edx, 18468(%r12)
	leal	1(%rax), %edi
	cltq
	movzbl	(%rcx,%rax), %eax
	imulw	0(%rbp,%rax,2), %r9w
	movw	%r9w, (%rsi,%rax,2)
.L1199:
	cmpl	$63, %edi
	jg	.L1209
.L1210:
	cmpl	$15, %edx
	jg	.L1197
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%r12), %r8d
	movl	18468(%r12), %edx
	movl	%r8d, %eax
	shrl	$23, %eax
	movl	%eax, %ecx
	movswl	(%rbx,%rcx,2), %r9d
	testl	%r9d, %r9d
	movl	%r9d, %ecx
	jne	.L1216
	cmpl	$15, %edx
	jg	.L1200
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%r12), %r8d
	movl	18468(%r12), %edx
	movl	%r8d, %eax
	shrl	$23, %eax
.L1200:
	cltq
	movzbl	0(%r13,%rax), %eax
	cmpl	$255, %eax
	je	.L1201
	movzbl	1280(%r13,%rax), %ecx
	cmpl	%edx, %ecx
	jg	.L1193
	sall	%cl, %r8d
	subl	%ecx, %edx
	movl	%r8d, 18464(%r12)
	movl	%edx, 18468(%r12)
	movzbl	1024(%r13,%rax), %eax
.L1202:
	movl	%eax, %r14d
	andl	$15, %r14d
	jne	.L1238
	cmpl	$240, %eax
	jne	.L1209
	addl	$16, %edi
	cmpl	$63, %edi
	jle	.L1210
	.p2align 4,,7
.L1209:
	movl	$1, %eax
	jmp	.L1232
	.p2align 4,,7
.L1201:
	movl	%r8d, %eax
	shrl	$16, %eax
	cmpl	%eax, 1580(%r13)
	ja	.L1224
	cmpl	1584(%r13), %eax
	jb	.L1225
	cmpl	%eax, 1588(%r13)
	ja	.L1226
	cmpl	1592(%r13), %eax
	jb	.L1227
	cmpl	1596(%r13), %eax
	jb	.L1228
	cmpl	1600(%r13), %eax
	jb	.L1229
	cmpl	1604(%r13), %eax
	jb	.L1239
	subl	$16, %edx
	movl	%edx, 18468(%r12)
.L1193:
	leaq	.LC44(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L1232:
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
	.p2align 4,,7
.L1188:
	movl	%edx, %ecx
	shrl	$16, %ecx
	cmpl	1580(%rdi), %ecx
	jb	.L1217
	cmpl	1584(%rdi), %ecx
	jb	.L1218
	cmpl	1588(%rdi), %ecx
	jb	.L1219
	cmpl	1592(%rdi), %ecx
	jb	.L1220
	cmpl	1596(%rdi), %ecx
	jb	.L1221
	cmpl	1600(%rdi), %ecx
	jb	.L1222
	cmpl	1604(%rdi), %ecx
	jb	.L1223
	subl	$16, %eax
	movl	%eax, 18468(%r12)
	jmp	.L1193
	.p2align 4,,7
.L1238:
	sarl	$4, %eax
	leaq	_ZL19stbi__jpeg_dezigzag(%rip), %rcx
	addl	%edi, %eax
	cmpl	%edx, %r14d
	leal	1(%rax), %edi
	cltq
	movzbl	(%rcx,%rax), %r9d
	leaq	(%rsi,%r9,2), %r15
	jg	.L1240
.L1208:
	movl	%r8d, %eax
	movl	%r14d, %ecx
	movslq	%r14d, %r10
	roll	%cl, %eax
	sarl	$31, %r8d
	subl	%r14d, %edx
	movl	%eax, %ecx
	leaq	_ZL11stbi__bmask(%rip), %rax
	notl	%r8d
	movl	%edx, 18468(%r12)
	movl	(%rax,%r10,4), %eax
	movl	%eax, %r11d
	andl	%ecx, %eax
	notl	%r11d
	andl	%ecx, %r11d
	movl	%r11d, 18464(%r12)
	leaq	_ZL11stbi__jbias(%rip), %r11
	andl	(%r11,%r10,4), %r8d
	addl	%r8d, %eax
	imulw	0(%rbp,%r9,2), %ax
	movw	%ax, (%r15)
	jmp	.L1199
	.p2align 4,,7
.L1240:
	movq	%r12, %rcx
	movq	%r9, 40(%rsp)
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r12), %edx
	movl	18464(%r12), %r8d
	movq	40(%rsp), %r9
	jmp	.L1208
	.p2align 4,,7
.L1237:
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r12), %eax
	cmpl	$15, %eax
	jg	.L1187
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r12), %eax
	jmp	.L1187
	.p2align 4,,7
.L1239:
	movl	$65535, %eax
	movl	$16, %ecx
	movl	$16, %r15d
	.p2align 4,,7
.L1203:
	cmpl	%edx, %r15d
	jg	.L1193
	movl	%r8d, %r14d
	movl	%r8d, %r10d
	leaq	_ZL11stbi__bmask(%rip), %r9
	shrl	%cl, %r14d
	movl	$32, %ecx
	andl	%eax, %r14d
	movslq	%r15d, %rax
	addl	1612(%r13,%rax,4), %r14d
	movslq	%r14d, %r14
	movzbl	1280(%r13,%r14), %eax
	subl	%eax, %ecx
	shrl	%cl, %r10d
	movl	%r10d, %ecx
	andl	(%r9,%rax,4), %ecx
	movl	%ecx, %eax
	movzwl	512(%r13,%r14,2), %ecx
	cmpl	%ecx, %eax
	je	.L1205
	leaq	.LC3(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$1837, %r8d
	call	_assert
	movl	18468(%r12), %edx
	movl	18464(%r12), %r8d
.L1205:
	movl	%r15d, %ecx
	subl	%r15d, %edx
	sall	%cl, %r8d
	movl	%edx, 18468(%r12)
	movl	%r8d, 18464(%r12)
	movzbl	1024(%r13,%r14), %eax
	jmp	.L1202
	.p2align 4,,7
.L1229:
	movl	$32767, %eax
	movl	$17, %ecx
	movl	$15, %r15d
	jmp	.L1203
	.p2align 4,,7
.L1228:
	movl	$16383, %eax
	movl	$18, %ecx
	movl	$14, %r15d
	jmp	.L1203
	.p2align 4,,7
.L1227:
	movl	$8191, %eax
	movl	$19, %ecx
	movl	$13, %r15d
	jmp	.L1203
	.p2align 4,,7
.L1226:
	movl	$4095, %eax
	movl	$20, %ecx
	movl	$12, %r15d
	jmp	.L1203
	.p2align 4,,7
.L1225:
	movl	$2047, %eax
	movl	$21, %ecx
	movl	$11, %r15d
	jmp	.L1203
	.p2align 4,,7
.L1224:
	movl	$1023, %eax
	movl	$22, %ecx
	movl	$10, %r15d
	jmp	.L1203
.L1217:
	movl	$10, %r15d
	.p2align 4,,7
.L1191:
	cmpl	%eax, %r15d
	jg	.L1193
	movl	$32, %r8d
	leaq	_ZL11stbi__bmask(%rip), %r9
	movl	%edx, %r14d
	movl	%r8d, %ecx
	movl	%edx, %r11d
	subl	%r15d, %ecx
	shrl	%cl, %r14d
	movslq	%r15d, %rcx
	andl	(%r9,%rcx,4), %r14d
	addl	1612(%rdi,%rcx,4), %r14d
	movl	%r8d, %ecx
	movslq	%r14d, %r14
	movzbl	1280(%rdi,%r14), %r10d
	movzwl	512(%rdi,%r14,2), %r8d
	subl	%r10d, %ecx
	shrl	%cl, %r11d
	movl	(%r9,%r10,4), %ecx
	andl	%r11d, %ecx
	cmpl	%r8d, %ecx
	je	.L1194
	leaq	.LC3(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$1837, %r8d
	call	_assert
	movl	18468(%r12), %eax
	movl	18464(%r12), %edx
.L1194:
	movl	%r15d, %ecx
	subl	%r15d, %eax
	sall	%cl, %edx
	movl	%eax, 18468(%r12)
	movl	%edx, 18464(%r12)
	movzbl	1024(%rdi,%r14), %r14d
	jmp	.L1190
	.p2align 4,,7
.L1211:
	cmpl	%r14d, 18468(%r12)
	jl	.L1241
.L1195:
	movl	18464(%r12), %eax
	movl	%r14d, %ecx
	movl	%eax, %edi
	roll	%cl, %eax
	sarl	$31, %edi
	cmpl	$16, %r14d
	movl	%eax, %r15d
	jle	.L1196
	leaq	.LC3(%rip), %rdx
	leaq	.LC43(%rip), %rcx
	movl	$1858, %r8d
	call	_assert
.L1196:
	leaq	_ZL11stbi__bmask(%rip), %rax
	movslq	%r14d, %rcx
	leaq	_ZL11stbi__jbias(%rip), %r8
	notl	%edi
	movl	(%rax,%rcx,4), %eax
	andl	(%r8,%rcx,4), %edi
	movl	%eax, %edx
	andl	%r15d, %eax
	notl	%edx
	leal	(%rdi,%rax), %ecx
	andl	%r15d, %edx
	movl	%edx, 18464(%r12)
	movl	18468(%r12), %edx
	subl	%r14d, %edx
	movl	%edx, 18468(%r12)
	jmp	.L1212
.L1222:
	movl	$15, %r15d
	jmp	.L1191
.L1221:
	movl	$14, %r15d
	jmp	.L1191
.L1223:
	movl	$16, %r15d
	jmp	.L1191
.L1218:
	movl	$11, %r15d
	jmp	.L1191
.L1220:
	movl	$13, %r15d
	jmp	.L1191
.L1219:
	movl	$12, %r15d
	jmp	.L1191
.L1241:
	movq	%r12, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	jmp	.L1195
	.seh_endproc
	.section .rdata,"dr"
.LC45:
	.ascii "z->size[b] == s\0"
	.text
	.p2align 4,,15
	.def	_ZL27stbi__compute_huffman_codesP10stbi__zbuf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL27stbi__compute_huffman_codesP10stbi__zbuf
_ZL27stbi__compute_huffman_codesP10stbi__zbuf:
.LFB671:
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
	movl	16(%rcx), %edx
	movq	%rcx, %r14
	cmpl	$4, %edx
	jle	.L1383
.L1243:
	movl	20(%r14), %eax
	subl	$5, %edx
	movl	%edx, 16(%r14)
	movl	%eax, %ebp
	movl	%eax, 52(%rsp)
	shrl	$5, %ebp
	cmpl	$4, %edx
	movl	%ebp, 20(%r14)
	jle	.L1384
.L1244:
	subl	$5, %edx
	movl	%ebp, %ebx
	shrl	$5, %ebx
	cmpl	$3, %edx
	movl	%edx, 16(%r14)
	movl	%ebx, 20(%r14)
	jle	.L1385
.L1245:
	movl	%ebx, %r8d
	subl	$4, %edx
	andl	$15, %ebx
	shrl	$4, %r8d
	movl	%edx, 16(%r14)
	addl	$4, %ebx
	movl	%r8d, 20(%r14)
	movq	$0, 80(%rsp)
	xorl	%edi, %edi
	movq	$0, 88(%rsp)
	movw	$0, 96(%rsp)
	leaq	_ZZL27stbi__compute_huffman_codesP10stbi__zbufE15length_dezigzag(%rip), %rsi
	movb	$0, 98(%rsp)
	movl	%edx, %ecx
	jmp	.L1250
	.p2align 4,,7
.L1246:
	movzbl	(%rsi,%rdi), %eax
	movl	%r8d, %edx
	incq	%rdi
	andl	$7, %edx
	shrl	$3, %r8d
	subl	$3, %ecx
	cmpl	%edi, %ebx
	movl	%r8d, 20(%r14)
	movl	%ecx, 16(%r14)
	movb	%dl, 80(%rsp,%rax)
	jle	.L1386
.L1250:
	cmpl	$2, %ecx
	jg	.L1246
	jmp	.L1249
	.p2align 4,,7
.L1387:
	leaq	.LC4(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$3848, %r8d
	call	_assert
	movl	16(%r14), %ecx
	movl	20(%r14), %r8d
.L1247:
	movq	(%r14), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, 8(%r14)
	jbe	.L1248
	leaq	1(%rdx), %rax
	movq	%rax, (%r14)
	movzbl	(%rdx), %eax
	sall	%cl, %eax
.L1248:
	addl	$8, %ecx
	orl	%eax, %r8d
	cmpl	$24, %ecx
	movl	%r8d, 20(%r14)
	movl	%ecx, 16(%r14)
	jg	.L1246
.L1249:
	movl	%r8d, %eax
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L1247
	jmp	.L1387
	.p2align 4,,7
.L1386:
	leaq	176(%rsp), %rsi
	xorl	%eax, %eax
	movl	%ecx, %edx
	movl	$8, %ecx
	leaq	640(%rsp), %r9
	movq	%rsi, %rdi
	rep stosq
	movl	$128, %ecx
	movl	$0, (%rdi)
	movq	%r9, %rdi
	leaq	80(%rsp), %r9
	rep stosq
	leaq	19(%r9), %r10
	movq	%r9, %rax
	.p2align 4,,7
.L1251:
	movzbl	(%rax), %ecx
	incq	%rax
	incl	176(%rsp,%rcx,4)
	cmpq	%rax, %r10
	jne	.L1251
	movl	180(%rsp), %ecx
	movl	$0, 176(%rsp)
	cmpl	$2, %ecx
	jg	.L1252
	movl	184(%rsp), %r10d
	cmpl	$4, %r10d
	jg	.L1252
	movl	188(%rsp), %ebx
	cmpl	$8, %ebx
	jg	.L1252
	movl	192(%rsp), %r11d
	cmpl	$16, %r11d
	jg	.L1252
	movl	196(%rsp), %r12d
	cmpl	$32, %r12d
	jg	.L1252
	movl	200(%rsp), %r13d
	cmpl	$64, %r13d
	jg	.L1252
	movl	204(%rsp), %edi
	cmpl	$128, %edi
	jg	.L1252
	movl	208(%rsp), %eax
	cmpl	$256, %eax
	movl	%eax, 48(%rsp)
	jg	.L1252
	movl	212(%rsp), %eax
	cmpl	$512, %eax
	movl	%eax, 44(%rsp)
	jg	.L1252
	movl	216(%rsp), %eax
	cmpl	$1024, %eax
	movl	%eax, 56(%rsp)
	jg	.L1252
	movl	220(%rsp), %eax
	cmpl	$2048, %eax
	movl	%eax, 60(%rsp)
	jg	.L1252
	movl	224(%rsp), %eax
	cmpl	$4096, %eax
	movl	%eax, 68(%rsp)
	jg	.L1252
	movl	228(%rsp), %eax
	cmpl	$8192, %eax
	movl	%eax, 64(%rsp)
	jg	.L1252
	movl	232(%rsp), %eax
	cmpl	$16384, %eax
	movl	%eax, 72(%rsp)
	jg	.L1252
	movl	236(%rsp), %eax
	cmpl	$32768, %eax
	movl	%eax, 76(%rsp)
	jg	.L1252
	movl	%ecx, %eax
	movl	$0, 116(%rsp)
	movw	$0, 1666(%rsp)
	sall	$15, %eax
	movw	$0, 1766(%rsp)
	movw	%cx, 1768(%rsp)
	movl	%eax, 1700(%rsp)
	leal	(%rcx,%rcx), %eax
	movl	%eax, 120(%rsp)
	movw	%ax, 1668(%rsp)
	addl	%r10d, %eax
	testl	%r10d, %r10d
	je	.L1255
	cmpl	$4, %eax
	jg	.L1256
.L1255:
	movl	%eax, %r15d
	addl	%eax, %eax
	addl	%r10d, %ecx
	sall	$14, %r15d
	movl	%eax, 124(%rsp)
	movw	%ax, 1670(%rsp)
	addl	%ebx, %eax
	testl	%ebx, %ebx
	movl	%r15d, 1704(%rsp)
	movw	%cx, 1770(%rsp)
	je	.L1257
	cmpl	$8, %eax
	jg	.L1256
.L1257:
	movl	%eax, %r10d
	addl	%eax, %eax
	addl	%ebx, %ecx
	sall	$13, %r10d
	movl	%eax, 128(%rsp)
	movw	%ax, 1672(%rsp)
	addl	%r11d, %eax
	testl	%r11d, %r11d
	movl	%r10d, 1708(%rsp)
	movw	%cx, 1772(%rsp)
	je	.L1258
	cmpl	$16, %eax
	jg	.L1256
.L1258:
	movl	%eax, %r10d
	addl	%eax, %eax
	addl	%r11d, %ecx
	sall	$12, %r10d
	movl	%eax, 132(%rsp)
	movw	%ax, 1674(%rsp)
	addl	%r12d, %eax
	testl	%r12d, %r12d
	movl	%r10d, 1712(%rsp)
	movw	%cx, 1774(%rsp)
	je	.L1259
	cmpl	$32, %eax
	jg	.L1256
.L1259:
	movl	%eax, %r10d
	addl	%eax, %eax
	addl	%r12d, %ecx
	sall	$11, %r10d
	movl	%eax, 136(%rsp)
	movw	%ax, 1676(%rsp)
	addl	%r13d, %eax
	testl	%r13d, %r13d
	movl	%r10d, 1716(%rsp)
	movw	%cx, 1776(%rsp)
	je	.L1260
	cmpl	$64, %eax
	jg	.L1256
.L1260:
	movl	%eax, %r10d
	addl	%eax, %eax
	addl	%r13d, %ecx
	sall	$10, %r10d
	movl	%eax, 140(%rsp)
	movw	%ax, 1678(%rsp)
	addl	%edi, %eax
	testl	%edi, %edi
	movl	%r10d, 1720(%rsp)
	movw	%cx, 1778(%rsp)
	je	.L1261
	cmpl	$128, %eax
	jg	.L1256
.L1261:
	movl	48(%rsp), %ebx
	movl	%eax, %r10d
	addl	%eax, %eax
	sall	$9, %r10d
	addl	%edi, %ecx
	movl	%eax, 144(%rsp)
	movw	%ax, 1680(%rsp)
	movl	%r10d, 1724(%rsp)
	addl	%ebx, %eax
	testl	%ebx, %ebx
	movw	%cx, 1780(%rsp)
	je	.L1262
	cmpl	$256, %eax
	jg	.L1256
.L1262:
	addl	48(%rsp), %ecx
	movl	44(%rsp), %ebx
	movl	%eax, %r10d
	addl	%eax, %eax
	sall	$8, %r10d
	movl	%eax, 148(%rsp)
	movw	%ax, 1682(%rsp)
	addl	%ebx, %eax
	testl	%ebx, %ebx
	movl	%r10d, 1728(%rsp)
	movw	%cx, 1782(%rsp)
	jne	.L1388
.L1263:
	addl	44(%rsp), %ecx
	movl	56(%rsp), %ebx
	movl	%eax, %r10d
	addl	%eax, %eax
	sall	$7, %r10d
	movl	%eax, 152(%rsp)
	movw	%ax, 1684(%rsp)
	addl	%ebx, %eax
	testl	%ebx, %ebx
	movl	%r10d, 1732(%rsp)
	movw	%cx, 1784(%rsp)
	je	.L1264
	cmpl	$1024, %eax
	jg	.L1256
.L1264:
	addl	56(%rsp), %ecx
	movl	60(%rsp), %ebx
	movl	%eax, %r10d
	addl	%eax, %eax
	sall	$6, %r10d
	movl	%eax, 156(%rsp)
	movw	%ax, 1686(%rsp)
	addl	%ebx, %eax
	testl	%ebx, %ebx
	movl	%r10d, 1736(%rsp)
	movw	%cx, 1786(%rsp)
	je	.L1265
	cmpl	$2048, %eax
	jg	.L1256
.L1265:
	addl	60(%rsp), %ecx
	movl	68(%rsp), %ebx
	movl	%eax, %r10d
	addl	%eax, %eax
	sall	$5, %r10d
	movl	%eax, 160(%rsp)
	movw	%ax, 1688(%rsp)
	addl	%ebx, %eax
	testl	%ebx, %ebx
	movl	%r10d, 1740(%rsp)
	movw	%cx, 1788(%rsp)
	je	.L1266
	cmpl	$4096, %eax
	jg	.L1256
.L1266:
	addl	68(%rsp), %ecx
	movl	64(%rsp), %ebx
	movl	%eax, %r10d
	addl	%eax, %eax
	sall	$4, %r10d
	movl	%eax, 164(%rsp)
	movw	%ax, 1690(%rsp)
	addl	%ebx, %eax
	testl	%ebx, %ebx
	movl	%r10d, 1744(%rsp)
	movw	%cx, 1790(%rsp)
	je	.L1267
	cmpl	$8192, %eax
	jg	.L1256
.L1267:
	addl	64(%rsp), %ecx
	movl	72(%rsp), %ebx
	leal	0(,%rax,8), %r10d
	addl	%eax, %eax
	movl	%eax, 168(%rsp)
	movw	%ax, 1692(%rsp)
	addl	%ebx, %eax
	testl	%ebx, %ebx
	movl	%r10d, 1748(%rsp)
	movw	%cx, 1792(%rsp)
	je	.L1268
	cmpl	$16384, %eax
	jg	.L1256
.L1268:
	addl	72(%rsp), %ecx
	movl	76(%rsp), %ebx
	leal	0(,%rax,4), %r10d
	addl	%eax, %eax
	movl	%eax, 172(%rsp)
	movw	%ax, 1694(%rsp)
	addl	%ebx, %eax
	testl	%ebx, %ebx
	movl	%r10d, 1752(%rsp)
	movw	%cx, 1794(%rsp)
	je	.L1269
	cmpl	$32768, %eax
	jg	.L1256
.L1269:
	addl	%eax, %eax
	movl	$65536, 1760(%rsp)
	xorl	%r11d, %r11d
	movl	%eax, 1756(%rsp)
	movl	$1, %r12d
	jmp	.L1275
	.p2align 4,,7
.L1272:
	incl	%ebx
	movl	%ebx, 112(%rsp,%rdi,4)
.L1270:
	incq	%r11
	cmpq	$19, %r11
	je	.L1389
.L1275:
	movzbl	(%r9,%r11), %r10d
	testl	%r10d, %r10d
	je	.L1270
	movslq	%r10d, %rdi
	movzwl	1664(%rsp,%rdi,2), %eax
	movl	112(%rsp,%rdi,4), %ebx
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movzwl	1764(%rsp,%rdi,2), %eax
	addl	%ecx, %eax
	cmpl	$9, %r10d
	cltq
	movb	%r10b, 1796(%rsp,%rax)
	movw	%r11w, 2084(%rsp,%rax,2)
	jg	.L1272
	movl	%ebx, %ecx
	movl	%ebx, %eax
	movl	%r12d, %r13d
	andl	$43690, %ecx
	andl	$21845, %eax
	addl	%eax, %eax
	sarl	%ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	andl	$13107, %ecx
	andl	$52428, %eax
	sall	$2, %ecx
	sarl	$2, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	andl	$3855, %eax
	andl	$61680, %ecx
	sall	$4, %eax
	sarl	$4, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	sall	$8, %ecx
	movzwl	%cx, %ecx
	shrl	$8, %eax
	orl	%ecx, %eax
	movl	$16, %ecx
	subl	%r10d, %ecx
	sarl	%cl, %eax
	movl	%r10d, %ecx
	sall	$9, %r10d
	sall	%cl, %r13d
	orl	%r11d, %r10d
	movl	%r13d, %ecx
	.p2align 4,,7
.L1273:
	movslq	%eax, %r15
	addl	%ecx, %eax
	cmpl	$511, %eax
	movw	%r10w, 640(%rsp,%r15,2)
	jle	.L1273
	jmp	.L1272
.L1388:
	cmpl	$512, %eax
	jle	.L1263
.L1256:
	leaq	.LC35(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L1332
.L1389:
	movl	52(%rsp), %r13d
	andl	$31, %ebp
	xorl	%r15d, %r15d
	leal	1(%rbp), %eax
	movabsq	$72340172838076673, %r12
	andl	$31, %r13d
	movl	%eax, 44(%rsp)
	addl	$257, %r13d
	leal	0(%r13,%rax), %ebx
	jmp	.L1300
	.p2align 4,,7
.L1390:
	movslq	%r15d, %rdx
	incl	%r15d
	cmpl	%r15d, %ebx
	movb	%al, 176(%rsp,%rdx)
	jle	.L1276
.L1396:
	movl	16(%r14), %edx
	movl	20(%r14), %r8d
.L1300:
	cmpl	$15, %edx
	jle	.L1280
.L1277:
	movl	%r8d, %eax
	andl	$511, %eax
	movzwl	640(%rsp,%rax,2), %ecx
	testl	%ecx, %ecx
	movl	%ecx, %eax
	je	.L1281
	sarl	$9, %ecx
	andl	$511, %eax
	shrl	%cl, %r8d
	subl	%ecx, %edx
	movl	%r8d, 20(%r14)
	movl	%edx, 16(%r14)
.L1282:
	cmpl	$18, %eax
	jg	.L1284
	cmpl	$15, %eax
	jle	.L1390
	cmpl	$16, %eax
	je	.L1391
	cmpl	$17, %eax
	.p2align 4,,2
	je	.L1392
	cmpl	$6, %edx
	.p2align 4,,2
	jle	.L1393
.L1295:
	movl	%r8d, %eax
	subl	$7, %edx
	andl	$127, %r8d
	shrl	$7, %eax
	movl	%edx, 16(%r14)
	leal	11(%r8), %edx
	movl	%eax, 20(%r14)
	xorl	%eax, %eax
.L1292:
	movl	%ebx, %ecx
	subl	%r15d, %ecx
	cmpl	%ecx, %edx
	jg	.L1284
	movslq	%r15d, %rcx
	addq	%rsi, %rcx
	imulq	%r12, %rax
	cmpl	$8, %edx
	jnb	.L1296
	testb	$4, %dl
	jne	.L1394
	testl	%edx, %edx
	je	.L1297
	testb	$2, %dl
	movb	%al, (%rcx)
	jne	.L1395
.L1297:
	addl	%edx, %r15d
	cmpl	%r15d, %ebx
	jg	.L1396
.L1276:
	jne	.L1284
	leaq	52(%r14), %rcx
	movl	%r13d, %r8d
	movq	%rsi, %rdx
	call	_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi
	testl	%eax, %eax
	je	.L1332
	movl	44(%rsp), %r8d
	movl	%r13d, %edx
	leaq	2072(%r14), %rcx
	addq	%rsi, %rdx
	call	_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.L1332
	.p2align 4,,7
.L1397:
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	movl	$3848, %r8d
	call	_assert
	movl	16(%r14), %edx
	movl	20(%r14), %r8d
.L1278:
	movq	(%r14), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, 8(%r14)
	jbe	.L1279
	leaq	1(%rcx), %rax
	movq	%rax, (%r14)
	movzbl	(%rcx), %eax
	movl	%edx, %ecx
	sall	%cl, %eax
.L1279:
	addl	$8, %edx
	orl	%eax, %r8d
	cmpl	$24, %edx
	movl	%r8d, 20(%r14)
	movl	%edx, 16(%r14)
	jg	.L1277
.L1280:
	movl	%r8d, %eax
	movl	%edx, %ecx
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L1278
	jmp	.L1397
	.p2align 4,,7
.L1281:
	movl	%r8d, %eax
	movl	%r8d, %ecx
	andl	$43690, %eax
	andl	$21845, %ecx
	addl	%ecx, %ecx
	sarl	%eax
	orl	%ecx, %eax
	movl	%eax, %r9d
	andl	$13107, %eax
	andl	$52428, %r9d
	sall	$2, %eax
	sarl	$2, %r9d
	orl	%eax, %r9d
	movl	%r9d, %ecx
	andl	$3855, %r9d
	andl	$61680, %ecx
	sall	$4, %r9d
	sarl	$4, %ecx
	orl	%r9d, %ecx
	movl	%ecx, %eax
	sall	$8, %ecx
	shrl	$8, %eax
	movzwl	%cx, %ecx
	orl	%ecx, %eax
	cmpl	%eax, 1736(%rsp)
	jg	.L1305
	cmpl	1740(%rsp), %eax
	jl	.L1306
	cmpl	%eax, 1744(%rsp)
	jg	.L1307
	cmpl	%eax, 1748(%rsp)
	jg	.L1308
	cmpl	1752(%rsp), %eax
	jl	.L1309
	cmpl	1756(%rsp), %eax
	jl	.L1398
.L1284:
	leaq	.LC35(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L1332:
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
	.p2align 4,,7
.L1296:
	leaq	8(%rcx), %rdi
	movl	%edx, %r8d
	movq	%rax, (%rcx)
	movq	%rax, -8(%rcx,%r8)
	andq	$-8, %rdi
	subq	%rdi, %rcx
	addl	%edx, %ecx
	shrl	$3, %ecx
	rep stosq
	jmp	.L1297
	.p2align 4,,7
.L1391:
	cmpl	$1, %edx
	jle	.L1399
.L1291:
	movl	%r8d, %eax
	subl	$2, %edx
	andl	$3, %r8d
	shrl	$2, %eax
	testl	%r15d, %r15d
	movl	%edx, 16(%r14)
	movl	%eax, 20(%r14)
	leal	3(%r8), %edx
	je	.L1284
	leal	-1(%r15), %eax
	cltq
	movzbl	176(%rsp,%rax), %eax
	jmp	.L1292
	.p2align 4,,7
.L1392:
	cmpl	$2, %edx
	jle	.L1400
.L1294:
	movl	%r8d, %eax
	subl	$3, %edx
	andl	$7, %r8d
	shrl	$3, %eax
	movl	%edx, 16(%r14)
	leal	3(%r8), %edx
	movl	%eax, 20(%r14)
	xorl	%eax, %eax
	jmp	.L1292
	.p2align 4,,7
.L1393:
	movq	%r14, %rcx
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	16(%r14), %edx
	movl	20(%r14), %r8d
	jmp	.L1295
.L1306:
	movl	$5, %ecx
	movl	$11, %edi
	.p2align 4,,7
.L1283:
	sarl	%cl, %eax
	movslq	%edi, %rcx
	movzwl	1664(%rsp,%rcx,2), %r9d
	movzwl	1764(%rsp,%rcx,2), %ebp
	subl	%r9d, %eax
	addl	%ebp, %eax
	movslq	%eax, %rbp
	movzbl	1796(%rsp,%rbp), %eax
	cmpl	%edi, %eax
	je	.L1301
	leaq	.LC3(%rip), %rdx
	leaq	.LC45(%rip), %rcx
	movl	$3876, %r8d
	call	_assert
	movl	20(%r14), %r8d
	movl	16(%r14), %edx
.L1301:
	movl	%edi, %ecx
	subl	%edi, %edx
	movzwl	2084(%rsp,%rbp,2), %eax
	shrl	%cl, %r8d
	movl	%edx, 16(%r14)
	movl	%r8d, 20(%r14)
	jmp	.L1282
.L1305:
	movl	$6, %ecx
	movl	$10, %edi
	jmp	.L1283
.L1398:
	movl	$1, %ecx
	movl	$15, %edi
	jmp	.L1283
.L1309:
	movl	$2, %ecx
	movl	$14, %edi
	jmp	.L1283
.L1308:
	movl	$3, %ecx
	movl	$13, %edi
	jmp	.L1283
.L1307:
	movl	$4, %ecx
	movl	$12, %edi
	jmp	.L1283
.L1252:
	leaq	.LC34(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L1332
.L1400:
	movq	%r14, %rcx
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	16(%r14), %edx
	movl	20(%r14), %r8d
	jmp	.L1294
.L1385:
	movq	%r14, %rcx
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	20(%r14), %ebx
	movl	16(%r14), %edx
	jmp	.L1245
.L1384:
	movq	%r14, %rcx
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	20(%r14), %ebp
	movl	16(%r14), %edx
	jmp	.L1244
.L1383:
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	16(%r14), %edx
	jmp	.L1243
.L1394:
	movl	%edx, %r8d
	movl	%eax, (%rcx)
	movl	%eax, -4(%rcx,%r8)
	jmp	.L1297
.L1399:
	movq	%r14, %rcx
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	16(%r14), %edx
	movl	20(%r14), %r8d
	jmp	.L1291
.L1395:
	movl	%edx, %r8d
	movw	%ax, -2(%rcx,%r8)
	jmp	.L1297
	.seh_endproc
	.section .rdata,"dr"
.LC46:
	.ascii "bad zlib header\0"
.LC47:
	.ascii "no preset dict\0"
.LC48:
	.ascii "bad compression\0"
.LC49:
	.ascii "a->num_bits == 0\0"
.LC50:
	.ascii "zlib corrupt\0"
.LC51:
	.ascii "read past buffer\0"
.LC52:
	.ascii "output buffer limit\0"
.LC53:
	.ascii "bad dist\0"
	.text
	.p2align 4,,15
	.def	_ZL16stbi__parse_zlibP10stbi__zbufi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__parse_zlibP10stbi__zbufi
_ZL16stbi__parse_zlibP10stbi__zbufi:
.LFB674:
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
	jne	.L1846
.L1402:
	leaq	144(%rsp), %rdi
	movl	$0, 16(%rbx)
	movl	$0, 20(%rbx)
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	%rdi, 32(%rsp)
	leaq	52(%rbx), %rdi
	movq	%rdi, 56(%rsp)
	leaq	2072(%rbx), %rdi
	movq	%rdi, 64(%rsp)
	.p2align 4,,7
.L1543:
	testl	%ecx, %ecx
	jle	.L1412
.L1409:
	movl	%eax, %edi
	decl	%ecx
	shrl	%eax
	andl	$1, %edi
	cmpl	$1, %ecx
	movl	%eax, 20(%rbx)
	movl	%edi, 40(%rsp)
	movl	%ecx, 16(%rbx)
	jle	.L1416
.L1413:
	movl	%eax, %r8d
	leal	-2(%rcx), %edx
	shrl	$2, %r8d
	andl	$3, %eax
	movl	%r8d, 20(%rbx)
	movl	%edx, 16(%rbx)
	je	.L1847
	cmpl	$3, %eax
	je	.L1486
	decl	%eax
	je	.L1848
	movq	%rbx, %rcx
	call	_ZL27stbi__compute_huffman_codesP10stbi__zbuf
	testl	%eax, %eax
	je	.L1486
	movl	16(%rbx), %edx
	movl	20(%rbx), %r8d
.L1546:
	cmpl	$15, %edx
	movq	24(%rbx), %rdi
	movl	$16, %r12d
	jle	.L1849
	.p2align 4,,7
.L1493:
	movl	%r8d, %eax
	andl	$511, %eax
	movzwl	52(%rbx,%rax,2), %ecx
	testl	%ecx, %ecx
	movl	%ecx, %esi
	je	.L1497
	sarl	$9, %ecx
	andl	$511, %esi
	shrl	%cl, %r8d
	subl	%ecx, %edx
	movl	%r8d, 20(%rbx)
	movl	%edx, 16(%rbx)
.L1498:
	cmpl	$255, %esi
	jg	.L1834
	movq	40(%rbx), %rdx
	cmpq	%rdi, %rdx
	ja	.L1501
	movl	48(%rbx), %r9d
	movq	%rdi, 24(%rbx)
	testl	%r9d, %r9d
	je	.L1527
	movq	32(%rbx), %rcx
	subq	%rcx, %rdi
	subq	%rcx, %rdx
	cmpl	%edx, %edi
	movl	%edi, %eax
	jl	.L1504
	.p2align 4,,7
.L1505:
	addl	%edx, %edx
	cmpl	%edx, %eax
	jge	.L1505
.L1504:
	movslq	%edx, %rbp
	movq	%rbp, %rdx
	call	realloc
	testq	%rax, %rax
	je	.L1530
	movslq	%edi, %rdi
	leaq	(%rax,%rbp), %rdx
	movq	%rax, 32(%rbx)
	addq	%rax, %rdi
	movq	%rdi, 24(%rbx)
	movq	%rdx, 40(%rbx)
.L1501:
	movb	%sil, (%rdi)
	incq	%rdi
.L1507:
	movl	16(%rbx), %edx
	movl	20(%rbx), %r8d
	cmpl	$15, %edx
	jg	.L1493
.L1849:
	movl	%edx, %ecx
	jmp	.L1496
	.p2align 4,,7
.L1494:
	movq	(%rbx), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, 8(%rbx)
	jbe	.L1495
	leaq	1(%rdx), %rax
	movq	%rax, (%rbx)
	movzbl	(%rdx), %eax
	sall	%cl, %eax
.L1495:
	addl	$8, %ecx
	orl	%eax, %r8d
	cmpl	$24, %ecx
	movl	%r8d, 20(%rbx)
	movl	%ecx, 16(%rbx)
	jg	.L1850
.L1496:
	movl	%r8d, %eax
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L1494
	leaq	.LC4(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$3848, %r8d
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %r8d
	jmp	.L1494
.L1851:
	leaq	.LC4(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$3848, %r8d
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %eax
.L1414:
	movq	(%rbx), %r8
	xorl	%edx, %edx
	cmpq	%r8, 8(%rbx)
	jbe	.L1415
	leaq	1(%r8), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%r8), %edx
	sall	%cl, %edx
.L1415:
	addl	$8, %ecx
	orl	%edx, %eax
	cmpl	$24, %ecx
	movl	%eax, 20(%rbx)
	movl	%ecx, 16(%rbx)
	jg	.L1413
.L1416:
	movl	%eax, %edx
	shrl	%cl, %edx
	testl	%edx, %edx
	je	.L1414
	jmp	.L1851
.L1852:
	leaq	.LC4(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$3848, %r8d
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %eax
.L1410:
	movq	(%rbx), %r8
	xorl	%edx, %edx
	cmpq	%r8, 8(%rbx)
	jbe	.L1411
	leaq	1(%r8), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%r8), %edx
	sall	%cl, %edx
.L1411:
	addl	$8, %ecx
	orl	%edx, %eax
	cmpl	$24, %ecx
	movl	%eax, 20(%rbx)
	movl	%ecx, 16(%rbx)
	jg	.L1409
.L1412:
	movl	%eax, %edx
	shrl	%cl, %edx
	testl	%edx, %edx
	je	.L1410
	jmp	.L1852
	.p2align 4,,7
.L1834:
	cmpl	$256, %esi
	je	.L1853
	subl	$257, %esi
	leaq	_ZL18stbi__zlength_base(%rip), %rax
	movslq	%esi, %rsi
	movl	(%rax,%rsi,4), %ebp
	leaq	_ZL19stbi__zlength_extra(%rip), %rax
	movl	(%rax,%rsi,4), %esi
	testl	%esi, %esi
	jne	.L1854
.L1509:
	cmpl	$15, %edx
	jle	.L1855
.L1514:
	movl	%r8d, %eax
	andl	$511, %eax
	movzwl	2072(%rbx,%rax,2), %ecx
	testl	%ecx, %ecx
	movl	%ecx, %eax
	je	.L1518
	sarl	$9, %ecx
	andl	$511, %eax
	shrl	%cl, %r8d
	subl	%ecx, %edx
	movl	%r8d, 20(%rbx)
	movl	%edx, 16(%rbx)
.L1519:
	leaq	_ZL16stbi__zdist_base(%rip), %rcx
	cltq
	movl	(%rcx,%rax,4), %r13d
	leaq	_ZL17stbi__zdist_extra(%rip), %rcx
	movl	(%rcx,%rax,4), %esi
	testl	%esi, %esi
	jne	.L1856
.L1554:
	movq	32(%rbx), %rcx
	movq	%rdi, %r15
	movslq	%r13d, %r14
	subq	%rcx, %r15
	cmpq	%r14, %r15
	jl	.L1857
	movq	40(%rbx), %rdx
	movslq	%ebp, %rax
	addq	%rdi, %rax
	cmpq	%rax, %rdx
	jnb	.L1526
	movl	48(%rbx), %r8d
	movq	%rdi, 24(%rbx)
	testl	%r8d, %r8d
	je	.L1527
	leal	0(%rbp,%r15), %eax
	subq	%rcx, %rdx
	cmpl	%edx, %eax
	jle	.L1528
	.p2align 4,,7
.L1529:
	addl	%edx, %edx
	cmpl	%edx, %eax
	jg	.L1529
.L1528:
	movslq	%edx, %rsi
	movq	%rsi, %rdx
	call	realloc
	testq	%rax, %rax
	je	.L1530
	movslq	%r15d, %rdi
	leaq	(%rax,%rsi), %rdx
	movq	%rax, 32(%rbx)
	addq	%rax, %rdi
	movq	%rdi, 24(%rbx)
	movq	%rdx, 40(%rbx)
.L1526:
	movq	%rdi, %rax
	subq	%r14, %rax
	decl	%r13d
	je	.L1858
	testl	%ebp, %ebp
	je	.L1507
	movq	%r12, %rdx
	subq	%r14, %rdx
	testq	%rdx, %rdx
	leaq	16(%rdi), %rdx
	setle	%cl
	cmpq	%rdx, %rax
	setnb	%dl
	orb	%dl, %cl
	je	.L1532
	cmpl	$18, %ebp
	jbe	.L1532
	movq	%rax, %r8
	negq	%r8
	andl	$15, %r8d
	cmpl	%ebp, %r8d
	cmova	%ebp, %r8d
	testl	%r8d, %r8d
	je	.L1582
	movzbl	(%rax), %ecx
	leal	-1(%rbp), %r10d
	cmpl	$1, %r8d
	leaq	1(%rdi), %rdx
	leaq	1(%rax), %r9
	movb	%cl, (%rdi)
	movl	%r10d, %ecx
	je	.L1596
	movzbl	1(%rax), %ecx
	cmpl	$2, %r8d
	leaq	2(%rdi), %rdx
	leaq	2(%rax), %r9
	movb	%cl, 1(%rdi)
	leal	-2(%rbp), %ecx
	je	.L1596
	movzbl	2(%rax), %ecx
	cmpl	$3, %r8d
	leaq	3(%rdi), %rdx
	leaq	3(%rax), %r9
	movb	%cl, 2(%rdi)
	leal	-3(%rbp), %ecx
	je	.L1596
	movzbl	3(%rax), %ecx
	cmpl	$4, %r8d
	leaq	4(%rdi), %rdx
	leaq	4(%rax), %r9
	movb	%cl, 3(%rdi)
	leal	-4(%rbp), %ecx
	je	.L1596
	movzbl	4(%rax), %ecx
	cmpl	$5, %r8d
	leaq	5(%rdi), %rdx
	leaq	5(%rax), %r9
	movb	%cl, 4(%rdi)
	leal	-5(%rbp), %ecx
	je	.L1596
	movzbl	5(%rax), %ecx
	cmpl	$6, %r8d
	leaq	6(%rdi), %rdx
	leaq	6(%rax), %r9
	movb	%cl, 5(%rdi)
	leal	-6(%rbp), %ecx
	je	.L1596
	movzbl	6(%rax), %ecx
	cmpl	$7, %r8d
	leaq	7(%rdi), %rdx
	leaq	7(%rax), %r9
	movb	%cl, 6(%rdi)
	leal	-7(%rbp), %ecx
	je	.L1596
	movzbl	7(%rax), %ecx
	cmpl	$8, %r8d
	leaq	8(%rdi), %rdx
	leaq	8(%rax), %r9
	movb	%cl, 7(%rdi)
	leal	-8(%rbp), %ecx
	je	.L1596
	movzbl	8(%rax), %ecx
	cmpl	$9, %r8d
	leaq	9(%rdi), %rdx
	leaq	9(%rax), %r9
	movb	%cl, 8(%rdi)
	leal	-9(%rbp), %ecx
	je	.L1596
	movzbl	9(%rax), %ecx
	cmpl	$10, %r8d
	leaq	10(%rdi), %rdx
	leaq	10(%rax), %r9
	movb	%cl, 9(%rdi)
	leal	-10(%rbp), %ecx
	je	.L1596
	movzbl	10(%rax), %ecx
	cmpl	$11, %r8d
	leaq	11(%rdi), %rdx
	leaq	11(%rax), %r9
	movb	%cl, 10(%rdi)
	leal	-11(%rbp), %ecx
	je	.L1596
	movzbl	11(%rax), %ecx
	cmpl	$12, %r8d
	leaq	12(%rdi), %rdx
	leaq	12(%rax), %r9
	movb	%cl, 11(%rdi)
	leal	-12(%rbp), %ecx
	je	.L1596
	movzbl	12(%rax), %ecx
	cmpl	$13, %r8d
	leaq	13(%rdi), %rdx
	leaq	13(%rax), %r9
	movb	%cl, 12(%rdi)
	leal	-13(%rbp), %ecx
	je	.L1596
	movzbl	13(%rax), %ecx
	cmpl	$15, %r8d
	leaq	14(%rdi), %rdx
	leaq	14(%rax), %r9
	movb	%cl, 13(%rdi)
	leal	-14(%rbp), %ecx
	jne	.L1596
	movzbl	14(%rax), %ecx
	leaq	15(%rdi), %rdx
	addq	$15, %rax
	movb	%cl, 14(%rdi)
	leal	-15(%rbp), %ecx
.L1533:
	subl	%r8d, %ebp
	movl	%r10d, %r15d
	movl	%r8d, %r11d
	leal	-16(%rbp), %r9d
	subl	%r8d, %r15d
	shrl	$4, %r9d
	incl	%r9d
	movl	%r9d, %esi
	sall	$4, %esi
	cmpl	$14, %r15d
	jbe	.L1535
	movq	%r11, %r8
	addq	%rdi, %r11
	subq	%r14, %r8
	xorl	%r14d, %r14d
	leaq	(%rdi,%r8), %r13
	xorl	%r8d, %r8d
.L1536:
	movdqa	0(%r13,%r8), %xmm0
	incl	%r14d
	movups	%xmm0, (%r11,%r8)
	addq	$16, %r8
	cmpl	%r9d, %r14d
	jb	.L1536
	movl	%esi, %r8d
	subl	%esi, %ecx
	addq	%r8, %rdx
	addq	%r8, %rax
	cmpl	%ebp, %esi
	je	.L1541
	.p2align 4,,7
.L1535:
	movzbl	(%rax), %r8d
	cmpl	$1, %ecx
	movb	%r8b, (%rdx)
	je	.L1541
	movzbl	1(%rax), %r8d
	cmpl	$2, %ecx
	movb	%r8b, 1(%rdx)
	je	.L1541
	movzbl	2(%rax), %r8d
	cmpl	$3, %ecx
	movb	%r8b, 2(%rdx)
	je	.L1541
	movzbl	3(%rax), %r8d
	cmpl	$4, %ecx
	movb	%r8b, 3(%rdx)
	je	.L1541
	movzbl	4(%rax), %r8d
	cmpl	$5, %ecx
	movb	%r8b, 4(%rdx)
	je	.L1541
	movzbl	5(%rax), %r8d
	cmpl	$6, %ecx
	movb	%r8b, 5(%rdx)
	je	.L1541
	movzbl	6(%rax), %r8d
	cmpl	$7, %ecx
	movb	%r8b, 6(%rdx)
	je	.L1541
	movzbl	7(%rax), %r8d
	cmpl	$8, %ecx
	movb	%r8b, 7(%rdx)
	je	.L1541
	movzbl	8(%rax), %r8d
	cmpl	$9, %ecx
	movb	%r8b, 8(%rdx)
	je	.L1541
	movzbl	9(%rax), %r8d
	cmpl	$10, %ecx
	movb	%r8b, 9(%rdx)
	je	.L1541
	movzbl	10(%rax), %r8d
	cmpl	$11, %ecx
	movb	%r8b, 10(%rdx)
	je	.L1541
	movzbl	11(%rax), %r8d
	cmpl	$12, %ecx
	movb	%r8b, 11(%rdx)
	je	.L1541
	movzbl	12(%rax), %r8d
	cmpl	$13, %ecx
	movb	%r8b, 12(%rdx)
	je	.L1541
	movzbl	13(%rax), %r8d
	cmpl	$14, %ecx
	movb	%r8b, 13(%rdx)
	je	.L1541
	movzbl	14(%rax), %eax
	movb	%al, 14(%rdx)
.L1541:
	leaq	1(%rdi,%r10), %rdi
	jmp	.L1507
	.p2align 4,,7
.L1497:
	movl	%r8d, %eax
	movl	%r8d, %ecx
	andl	$43690, %eax
	andl	$21845, %ecx
	addl	%ecx, %ecx
	sarl	%eax
	orl	%ecx, %eax
	movl	%eax, %r9d
	andl	$13107, %eax
	andl	$52428, %r9d
	sall	$2, %eax
	sarl	$2, %r9d
	orl	%eax, %r9d
	movl	%r9d, %ecx
	andl	$3855, %r9d
	andl	$61680, %ecx
	sall	$4, %r9d
	sarl	$4, %ecx
	orl	%r9d, %ecx
	movl	%ecx, %eax
	sall	$8, %ecx
	shrl	$8, %eax
	movzwl	%cx, %ecx
	orl	%ecx, %eax
	cmpl	1148(%rbx), %eax
	jl	.L1567
	cmpl	1152(%rbx), %eax
	jl	.L1568
	cmpl	1156(%rbx), %eax
	jl	.L1569
	cmpl	1160(%rbx), %eax
	jl	.L1570
	cmpl	1164(%rbx), %eax
	jl	.L1571
	cmpl	1168(%rbx), %eax
	jl	.L1859
.L1500:
	leaq	.LC44(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	.p2align 4,,7
.L1486:
	xorl	%eax, %eax
.L1831:
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
	.p2align 4,,7
.L1850:
	movl	%ecx, %edx
	jmp	.L1493
	.p2align 4,,7
.L1518:
	movl	%r8d, %eax
	movl	%r8d, %ecx
	andl	$43690, %eax
	andl	$21845, %ecx
	addl	%ecx, %ecx
	sarl	%eax
	orl	%ecx, %eax
	movl	%eax, %r9d
	andl	$13107, %eax
	andl	$52428, %r9d
	sall	$2, %eax
	sarl	$2, %r9d
	orl	%eax, %r9d
	movl	%r9d, %ecx
	andl	$3855, %r9d
	andl	$61680, %ecx
	sall	$4, %r9d
	sarl	$4, %ecx
	orl	%r9d, %ecx
	movl	%ecx, %eax
	sall	$8, %ecx
	shrl	$8, %eax
	movzwl	%cx, %ecx
	orl	%ecx, %eax
	cmpl	3168(%rbx), %eax
	jl	.L1575
	cmpl	3172(%rbx), %eax
	jl	.L1576
	cmpl	3176(%rbx), %eax
	jl	.L1577
	cmpl	3180(%rbx), %eax
	jl	.L1578
	cmpl	3184(%rbx), %eax
	jl	.L1579
	cmpl	3188(%rbx), %eax
	jge	.L1500
	movl	$1, %ecx
	movl	$15, %r13d
	.p2align 4,,7
.L1520:
	movslq	%r13d, %r9
	sarl	%cl, %eax
	leaq	(%rbx,%r9,2), %r9
	movzwl	3096(%r9), %ecx
	movzwl	3196(%r9), %esi
	subl	%ecx, %eax
	addl	%esi, %eax
	movslq	%eax, %rsi
	movzbl	3228(%rbx,%rsi), %eax
	cmpl	%r13d, %eax
	je	.L1551
	leaq	.LC3(%rip), %rdx
	leaq	.LC45(%rip), %rcx
	movl	$3876, %r8d
	call	_assert
	movl	20(%rbx), %r8d
	movl	16(%rbx), %edx
.L1551:
	movl	%r13d, %ecx
	subl	%r13d, %edx
	movzwl	3516(%rbx,%rsi,2), %eax
	shrl	%cl, %r8d
	movl	%edx, 16(%rbx)
	movl	%r8d, 20(%rbx)
	jmp	.L1519
	.p2align 4,,7
.L1855:
	movl	%edx, %ecx
	jmp	.L1517
	.p2align 4,,7
.L1515:
	movq	(%rbx), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, 8(%rbx)
	jbe	.L1516
	leaq	1(%rdx), %rax
	movq	%rax, (%rbx)
	movzbl	(%rdx), %eax
	sall	%cl, %eax
.L1516:
	addl	$8, %ecx
	orl	%eax, %r8d
	cmpl	$24, %ecx
	movl	%r8d, 20(%rbx)
	movl	%ecx, 16(%rbx)
	jg	.L1860
.L1517:
	movl	%r8d, %eax
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L1515
	leaq	.LC4(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$3848, %r8d
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %r8d
	jmp	.L1515
	.p2align 4,,7
.L1854:
	cmpl	%edx, %esi
	jg	.L1861
.L1510:
	movl	%esi, %ecx
	movl	$1, %eax
	subl	%esi, %edx
	sall	%cl, %eax
	movl	%edx, 16(%rbx)
	decl	%eax
	andl	%r8d, %eax
	shrl	%cl, %r8d
	movl	%r8d, 20(%rbx)
	addl	%eax, %ebp
	jmp	.L1509
	.p2align 4,,7
.L1860:
	movl	%ecx, %edx
	jmp	.L1514
	.p2align 4,,7
.L1856:
	cmpl	%edx, %esi
	jg	.L1862
.L1521:
	movl	%r8d, %eax
	movl	%esi, %ecx
	subl	%esi, %edx
	shrl	%cl, %eax
	movl	%edx, 16(%rbx)
	movl	%eax, 20(%rbx)
	movl	$1, %eax
	sall	%cl, %eax
	decl	%eax
	andl	%eax, %r8d
	addl	%r8d, %r13d
	jmp	.L1554
	.p2align 4,,7
.L1858:
	testl	%ebp, %ebp
	je	.L1507
	leal	-1(%rbp), %esi
	movsbl	(%rax), %edx
	movq	%rdi, %rcx
	incq	%rsi
	movq	%rsi, %r8
	addq	%rsi, %rdi
	call	memset
	jmp	.L1507
	.p2align 4,,7
.L1596:
	movq	%r9, %rax
	jmp	.L1533
	.p2align 4,,7
.L1859:
	movl	$1, %ecx
	movl	$15, %ebp
	.p2align 4,,7
.L1499:
	movslq	%ebp, %r9
	sarl	%cl, %eax
	leaq	(%rbx,%r9,2), %r9
	movzwl	1076(%r9), %ecx
	movzwl	1176(%r9), %esi
	subl	%ecx, %eax
	addl	%esi, %eax
	movslq	%eax, %rsi
	movzbl	1208(%rbx,%rsi), %eax
	cmpl	%ebp, %eax
	je	.L1547
	leaq	.LC3(%rip), %rdx
	leaq	.LC45(%rip), %rcx
	movl	$3876, %r8d
	call	_assert
	movl	20(%rbx), %r8d
	movl	16(%rbx), %edx
.L1547:
	movl	%ebp, %ecx
	subl	%ebp, %edx
	movzwl	1496(%rbx,%rsi,2), %esi
	shrl	%cl, %r8d
	movl	%edx, 16(%rbx)
	movl	%r8d, 20(%rbx)
	jmp	.L1498
	.p2align 4,,7
.L1571:
	movl	$2, %ecx
	movl	$14, %ebp
	jmp	.L1499
	.p2align 4,,7
.L1570:
	movl	$3, %ecx
	movl	$13, %ebp
	jmp	.L1499
	.p2align 4,,7
.L1569:
	movl	$4, %ecx
	movl	$12, %ebp
	jmp	.L1499
	.p2align 4,,7
.L1568:
	movl	$5, %ecx
	movl	$11, %ebp
	jmp	.L1499
	.p2align 4,,7
.L1567:
	movl	$6, %ecx
	movl	$10, %ebp
	jmp	.L1499
	.p2align 4,,7
.L1861:
	movl	%edx, %ecx
	jmp	.L1513
	.p2align 4,,7
.L1511:
	movq	(%rbx), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, 8(%rbx)
	jbe	.L1512
	leaq	1(%rdx), %rax
	movq	%rax, (%rbx)
	movzbl	(%rdx), %eax
	sall	%cl, %eax
.L1512:
	addl	$8, %ecx
	orl	%eax, %r8d
	cmpl	$24, %ecx
	movl	%r8d, 20(%rbx)
	movl	%ecx, 16(%rbx)
	jg	.L1863
.L1513:
	movl	%r8d, %eax
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L1511
	leaq	.LC4(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$3848, %r8d
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %r8d
	jmp	.L1511
	.p2align 4,,7
.L1863:
	movl	%ecx, %edx
	jmp	.L1510
	.p2align 4,,7
.L1862:
	movl	%edx, %ecx
	jmp	.L1524
	.p2align 4,,7
.L1522:
	movq	(%rbx), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, 8(%rbx)
	jbe	.L1523
	leaq	1(%rdx), %rax
	movq	%rax, (%rbx)
	movzbl	(%rdx), %eax
	sall	%cl, %eax
.L1523:
	addl	$8, %ecx
	orl	%eax, %r8d
	cmpl	$24, %ecx
	movl	%r8d, 20(%rbx)
	movl	%ecx, 16(%rbx)
	jg	.L1864
.L1524:
	movl	%r8d, %eax
	shrl	%cl, %eax
	testl	%eax, %eax
	je	.L1522
	leaq	.LC4(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	movl	$3848, %r8d
	call	_assert
	movl	16(%rbx), %ecx
	movl	20(%rbx), %r8d
	jmp	.L1522
	.p2align 4,,7
.L1864:
	movl	%ecx, %edx
	jmp	.L1521
.L1432:
	movq	(%rbx), %rdx
	movslq	%eax, %rbp
	leaq	(%rdx,%rbp), %rcx
	cmpq	%rcx, 8(%rbx)
	jb	.L1865
	movq	24(%rbx), %r9
	movq	40(%rbx), %r8
	leaq	(%r9,%rbp), %rcx
	cmpq	%rcx, %r8
	jnb	.L1435
	movl	48(%rbx), %r10d
	testl	%r10d, %r10d
	jne	.L1866
	.p2align 4,,7
.L1527:
	leaq	.LC52(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L1486
	.p2align 4,,7
.L1582:
	movl	%ebp, %ecx
	movq	%rdi, %rdx
	leal	-1(%rbp), %r10d
	jmp	.L1533
	.p2align 4,,7
.L1530:
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L1486
	.p2align 4,,7
.L1532:
	leal	-1(%rbp), %r10d
	xorl	%edx, %edx
	movl	%r10d, %r8d
	incq	%r8
	.p2align 4,,7
.L1540:
	movzbl	(%rax,%rdx), %ecx
	movb	%cl, (%rdi,%rdx)
	incq	%rdx
	cmpq	%rdx, %r8
	jne	.L1540
	jmp	.L1541
.L1579:
	movl	$2, %ecx
	movl	$14, %r13d
	jmp	.L1520
.L1578:
	movl	$3, %ecx
	movl	$13, %r13d
	jmp	.L1520
.L1577:
	movl	$4, %ecx
	movl	$12, %r13d
	jmp	.L1520
.L1576:
	movl	$5, %ecx
	movl	$11, %r13d
	jmp	.L1520
.L1575:
	movl	$6, %ecx
	movl	$10, %r13d
	jmp	.L1520
.L1847:
	movl	%edx, %edi
	andl	$7, %edi
	jne	.L1867
	testl	%edx, %edx
	jle	.L1560
.L1871:
	leal	-8(%rdx), %eax
	movl	%r8d, %ecx
	movl	%r8d, %ebp
	shrl	$8, %ecx
	movb	%r8b, 144(%rsp)
	testl	%eax, %eax
	movl	%ecx, 20(%rbx)
	movl	%eax, 16(%rbx)
	jle	.L1561
	leal	-16(%rdx), %eax
	movzbl	%cl, %r12d
	movb	%cl, 145(%rsp)
	movl	%r8d, %ecx
	shrl	$16, %ecx
	testl	%eax, %eax
	movl	%eax, 16(%rbx)
	movl	%ecx, 20(%rbx)
	jle	.L1562
	leal	-24(%rdx), %eax
	movl	%r8d, %edi
	movzbl	%cl, %r13d
	shrl	$24, %edi
	movb	%cl, 146(%rsp)
	testl	%eax, %eax
	movl	%edi, 20(%rbx)
	movl	%eax, 16(%rbx)
	jle	.L1563
	subl	$32, %edx
	movl	$0, 20(%rbx)
	testl	%edx, %edx
	movl	%edx, 16(%rbx)
	je	.L1868
	leaq	.LC3(%rip), %rdx
	leaq	.LC49(%rip), %rcx
	movl	$4033, %r8d
	sall	$8, %edi
	call	_assert
	movl	%edi, %r8d
.L1425:
	sall	$8, %r12d
	movzbl	%bpl, %eax
	addl	%r13d, %r8d
	addl	%r12d, %eax
	movl	%eax, %edx
	xorl	$65535, %edx
	cmpl	%edx, %r8d
	je	.L1432
	leaq	.LC50(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L1486
.L1848:
	movq	32(%rsp), %rdi
	xorl	%eax, %eax
	movl	$8, %ecx
	leaq	1+_ZL21stbi__zdefault_length(%rip), %r9
	leaq	288+_ZL21stbi__zdefault_length(%rip), %r10
	rep stosq
	movq	56(%rsp), %rcx
	movl	$0, (%rdi)
	leaq	60(%rbx), %rdi
	movq	$0, (%rcx)
	movq	$0, 1068(%rbx)
	andq	$-8, %rdi
	subq	%rdi, %rcx
	addl	$1024, %ecx
	shrl	$3, %ecx
	rep stosq
	movl	$8, %eax
	jmp	.L1444
	.p2align 4,,7
.L1869:
	movzbl	(%r9), %eax
	incq	%r9
	movslq	%eax, %rcx
	movl	144(%rsp,%rcx,4), %ecx
.L1444:
	incl	%ecx
	cmpq	%r9, %r10
	movl	%ecx, 144(%rsp,%rax,4)
	jne	.L1869
	movl	148(%rsp), %r9d
	movl	$0, 144(%rsp)
	cmpl	$2, %r9d
	jg	.L1469
	movl	152(%rsp), %r11d
	cmpl	$4, %r11d
	jg	.L1469
	movl	156(%rsp), %r10d
	cmpl	$8, %r10d
	jg	.L1469
	movl	160(%rsp), %r15d
	cmpl	$16, %r15d
	jg	.L1469
	movl	164(%rsp), %r13d
	cmpl	$32, %r13d
	jg	.L1469
	movl	168(%rsp), %eax
	cmpl	$64, %eax
	jg	.L1469
	movl	172(%rsp), %r12d
	cmpl	$128, %r12d
	jg	.L1469
	movl	176(%rsp), %r14d
	cmpl	$256, %r14d
	jg	.L1469
	movl	180(%rsp), %ebp
	cmpl	$512, %ebp
	jg	.L1469
	movl	184(%rsp), %edi
	cmpl	$1024, %edi
	jg	.L1469
	movl	188(%rsp), %esi
	cmpl	$2048, %esi
	movl	%esi, 44(%rsp)
	jg	.L1469
	movl	192(%rsp), %esi
	cmpl	$4096, %esi
	movl	%esi, 48(%rsp)
	jg	.L1469
	movl	196(%rsp), %esi
	cmpl	$8192, %esi
	movl	%esi, 52(%rsp)
	jg	.L1469
	movl	200(%rsp), %esi
	cmpl	$16384, %esi
	movl	%esi, 72(%rsp)
	jg	.L1469
	movl	204(%rsp), %esi
	cmpl	$32768, %esi
	movl	%esi, 76(%rsp)
	jg	.L1469
	movl	%r9d, %ecx
	movl	$0, 84(%rsp)
	movw	$0, 1078(%rbx)
	sall	$15, %ecx
	movw	$0, 1178(%rbx)
	movw	%r9w, 1180(%rbx)
	movl	%ecx, 1112(%rbx)
	leal	(%r9,%r9), %ecx
	movl	%ecx, 88(%rsp)
	movw	%cx, 1080(%rbx)
	addl	%r11d, %ecx
	cmpl	$4, %ecx
	jle	.L1598
	testl	%r11d, %r11d
	jne	.L1470
.L1598:
	movl	%ecx, %esi
	addl	%r11d, %r9d
	addl	%ecx, %ecx
	sall	$14, %esi
	testl	%r10d, %r10d
	movl	%ecx, 92(%rsp)
	movl	%esi, 1116(%rbx)
	movw	%cx, 1082(%rbx)
	leal	(%rcx,%r10), %r11d
	movw	%r9w, 1182(%rbx)
	je	.L1599
	cmpl	$8, %r11d
	jg	.L1470
.L1599:
	movl	%r11d, %ecx
	addl	%r9d, %r10d
	sall	$13, %ecx
	movw	%r10w, 1184(%rbx)
	movl	%ecx, 1120(%rbx)
	leal	(%r11,%r11), %ecx
	leal	(%rcx,%r15), %r9d
	movl	%ecx, 96(%rsp)
	movw	%cx, 1084(%rbx)
	cmpl	$16, %r9d
	jle	.L1600
	testl	%r15d, %r15d
	jne	.L1470
.L1600:
	movl	%r9d, %ecx
	addl	%r15d, %r10d
	sall	$12, %ecx
	testl	%r13d, %r13d
	movw	%r10w, 1186(%rbx)
	movl	%ecx, 1124(%rbx)
	leal	(%r9,%r9), %ecx
	movl	%ecx, 100(%rsp)
	movw	%cx, 1086(%rbx)
	leal	(%rcx,%r13), %r9d
	je	.L1601
	cmpl	$32, %r9d
	jg	.L1470
.L1601:
	movl	%r9d, %ecx
	addl	%r13d, %r10d
	sall	$11, %ecx
	movw	%r10w, 1188(%rbx)
	movl	%ecx, 1128(%rbx)
	leal	(%r9,%r9), %ecx
	leal	(%rcx,%rax), %r9d
	movl	%ecx, 104(%rsp)
	movw	%cx, 1088(%rbx)
	cmpl	$64, %r9d
	jle	.L1602
	testl	%eax, %eax
	jne	.L1470
.L1602:
	movl	%r9d, %ecx
	addl	%eax, %r10d
	sall	$10, %ecx
	movw	%r10w, 1190(%rbx)
	movl	%ecx, 1132(%rbx)
	leal	(%r9,%r9), %ecx
	movl	%ecx, 108(%rsp)
	movw	%cx, 1090(%rbx)
	addl	%r12d, %ecx
	testl	%r12d, %r12d
	je	.L1603
	cmpl	$128, %ecx
	jg	.L1470
.L1603:
	movl	%ecx, %eax
	addl	%ecx, %ecx
	addl	%r12d, %r10d
	movl	%ecx, 112(%rsp)
	movw	%cx, 1092(%rbx)
	addl	%r14d, %ecx
	sall	$9, %eax
	cmpl	$256, %ecx
	movw	%r10w, 1192(%rbx)
	movl	%eax, 1136(%rbx)
	jle	.L1604
	testl	%r14d, %r14d
	jne	.L1470
.L1604:
	movl	%ecx, %eax
	addl	%ecx, %ecx
	addl	%r14d, %r10d
	sall	$8, %eax
	movl	%ecx, 116(%rsp)
	movw	%cx, 1094(%rbx)
	addl	%ebp, %ecx
	testl	%ebp, %ebp
	movl	%eax, 1140(%rbx)
	movw	%r10w, 1194(%rbx)
	je	.L1605
	cmpl	$512, %ecx
	jg	.L1470
.L1605:
	movl	%ecx, %eax
	addl	%ecx, %ecx
	addl	%ebp, %r10d
	sall	$7, %eax
	movl	%ecx, 120(%rsp)
	movw	%cx, 1096(%rbx)
	addl	%edi, %ecx
	testl	%edi, %edi
	movl	%eax, 1144(%rbx)
	movw	%r10w, 1196(%rbx)
	je	.L1606
	cmpl	$1024, %ecx
	jg	.L1470
.L1606:
	movl	%ecx, %eax
	addl	%edi, %r10d
	movl	44(%rsp), %edi
	sall	$6, %eax
	movw	%r10w, 1198(%rbx)
	movl	%eax, 1148(%rbx)
	leal	(%rcx,%rcx), %eax
	movl	%eax, 124(%rsp)
	movw	%ax, 1098(%rbx)
	addl	%edi, %eax
	testl	%edi, %edi
	je	.L1607
	cmpl	$2048, %eax
	jg	.L1470
.L1607:
	movl	%eax, %ecx
	movl	48(%rsp), %edi
	addl	%eax, %eax
	sall	$5, %ecx
	movl	%eax, 128(%rsp)
	movw	%ax, 1100(%rbx)
	movl	%ecx, 1152(%rbx)
	movl	44(%rsp), %ecx
	addl	%edi, %eax
	addl	%r10d, %ecx
	cmpl	$4096, %eax
	movw	%cx, 1200(%rbx)
	jle	.L1608
	testl	%edi, %edi
	jne	.L1470
.L1608:
	movl	52(%rsp), %edi
	addl	48(%rsp), %ecx
	movl	%eax, %r9d
	addl	%eax, %eax
	sall	$4, %r9d
	movl	%eax, 132(%rsp)
	movw	%ax, 1102(%rbx)
	addl	%edi, %eax
	movl	%r9d, 1156(%rbx)
	cmpl	$8192, %eax
	movw	%cx, 1202(%rbx)
	jle	.L1609
	testl	%edi, %edi
	jne	.L1470
.L1609:
	movl	72(%rsp), %edi
	addl	52(%rsp), %ecx
	leal	0(,%rax,8), %r9d
	addl	%eax, %eax
	movl	%eax, 136(%rsp)
	movw	%ax, 1104(%rbx)
	addl	%edi, %eax
	movl	%r9d, 1160(%rbx)
	cmpl	$16384, %eax
	movw	%cx, 1204(%rbx)
	jle	.L1610
	testl	%edi, %edi
	jne	.L1470
.L1610:
	movl	76(%rsp), %edi
	addl	72(%rsp), %ecx
	leal	0(,%rax,4), %r9d
	addl	%eax, %eax
	movl	%eax, 140(%rsp)
	movw	%ax, 1106(%rbx)
	addl	%edi, %eax
	movl	%r9d, 1164(%rbx)
	cmpl	$32768, %eax
	movw	%cx, 1206(%rbx)
	jle	.L1611
	testl	%edi, %edi
	jne	.L1470
.L1611:
	addl	%eax, %eax
	movl	$65536, 1172(%rbx)
	xorl	%r10d, %r10d
	movl	%eax, 1168(%rbx)
	leaq	_ZL21stbi__zdefault_length(%rip), %rbp
	movl	$16, %r13d
	movl	$1, %r12d
	jmp	.L1461
.L1465:
	incl	%r11d
	movl	%r11d, 80(%rsp,%rsi,4)
.L1463:
	incq	%r10
	cmpq	$288, %r10
	je	.L1870
.L1461:
	movzbl	0(%rbp,%r10), %r9d
	testl	%r9d, %r9d
	je	.L1463
	movzbl	%r9b, %eax
	movslq	%r9d, %rsi
	leaq	(%rbx,%rax,2), %rcx
	movl	80(%rsp,%rsi,4), %r11d
	movzwl	1076(%rcx), %eax
	movl	%r11d, %r14d
	subl	%eax, %r14d
	movzwl	1176(%rcx), %eax
	addl	%r14d, %eax
	cmpl	$9, %r9d
	cltq
	movb	%r9b, 1208(%rbx,%rax)
	movw	%r10w, 1496(%rbx,%rax,2)
	jg	.L1465
	movl	%r11d, %ecx
	movl	%r11d, %eax
	andl	$43690, %ecx
	andl	$21845, %eax
	addl	%eax, %eax
	sarl	%ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	andl	$13107, %ecx
	andl	$52428, %eax
	sarl	$2, %eax
	movl	%eax, %r14d
	leal	0(,%rcx,4), %eax
	orl	%r14d, %eax
	movl	%eax, %ecx
	andl	$3855, %eax
	andl	$61680, %ecx
	sall	$4, %eax
	sarl	$4, %ecx
	orl	%eax, %ecx
	movl	%ecx, %r14d
	sall	$8, %ecx
	shrl	$8, %r14d
	movzwl	%cx, %eax
	movl	%r13d, %ecx
	subl	%r9d, %ecx
	orl	%r14d, %eax
	movl	%r12d, %r14d
	sarl	%cl, %eax
	movl	%r9d, %ecx
	sall	$9, %r9d
	sall	%cl, %r14d
	orl	%r10d, %r9d
	movl	%r14d, %edi
	.p2align 4,,7
.L1466:
	movslq	%eax, %rcx
	addl	%edi, %eax
	cmpl	$511, %eax
	movw	%r9w, 52(%rbx,%rcx,2)
	jle	.L1466
	jmp	.L1465
.L1870:
	movq	32(%rsp), %rdi
	xorl	%eax, %eax
	movl	$8, %ecx
	leaq	1+_ZL23stbi__zdefault_distance(%rip), %r9
	leaq	32+_ZL23stbi__zdefault_distance(%rip), %r10
	rep stosq
	movl	$128, %ecx
	movl	$0, (%rdi)
	movq	64(%rsp), %rdi
	rep stosq
	movl	$5, %eax
	jmp	.L1545
	.p2align 4,,7
.L1468:
	movzbl	(%r9), %ecx
	incq	%r9
	movq	%rcx, %rax
	movl	144(%rsp,%rcx,4), %ecx
.L1545:
	incl	%ecx
	cmpq	%r10, %r9
	movl	%ecx, 144(%rsp,%rax,4)
	jne	.L1468
	movl	148(%rsp), %ecx
	movl	$0, 144(%rsp)
	cmpl	$2, %ecx
	jg	.L1469
	movl	152(%rsp), %r11d
	cmpl	$4, %r11d
	jg	.L1469
	movl	156(%rsp), %r10d
	cmpl	$8, %r10d
	jg	.L1469
	movl	160(%rsp), %r15d
	cmpl	$16, %r15d
	jg	.L1469
	movl	164(%rsp), %r14d
	cmpl	$32, %r14d
	jg	.L1469
	movl	168(%rsp), %eax
	cmpl	$64, %eax
	jg	.L1469
	movl	172(%rsp), %r12d
	cmpl	$128, %r12d
	jg	.L1469
	movl	176(%rsp), %ebp
	cmpl	$256, %ebp
	jg	.L1469
	movl	180(%rsp), %r13d
	cmpl	$512, %r13d
	jg	.L1469
	movl	184(%rsp), %edi
	cmpl	$1024, %edi
	jg	.L1469
	movl	188(%rsp), %esi
	cmpl	$2048, %esi
	movl	%esi, 44(%rsp)
	jg	.L1469
	movl	192(%rsp), %esi
	cmpl	$4096, %esi
	movl	%esi, 48(%rsp)
	jg	.L1469
	movl	196(%rsp), %esi
	cmpl	$8192, %esi
	movl	%esi, 52(%rsp)
	jg	.L1469
	movl	200(%rsp), %esi
	cmpl	$16384, %esi
	movl	%esi, 72(%rsp)
	jg	.L1469
	movl	204(%rsp), %esi
	cmpl	$32768, %esi
	movl	%esi, 76(%rsp)
	jg	.L1469
	movl	%ecx, %r9d
	movl	$0, 84(%rsp)
	movw	$0, 3098(%rbx)
	sall	$15, %r9d
	movw	$0, 3198(%rbx)
	movw	%cx, 3200(%rbx)
	movl	%r9d, 3132(%rbx)
	leal	(%rcx,%rcx), %r9d
	movl	%r9d, 88(%rsp)
	movw	%r9w, 3100(%rbx)
	addl	%r11d, %r9d
	testl	%r11d, %r11d
	je	.L1612
	cmpl	$4, %r9d
	jg	.L1470
.L1612:
	movl	%r9d, %esi
	addl	%r9d, %r9d
	addl	%ecx, %r11d
	sall	$14, %esi
	movl	%r9d, 92(%rsp)
	movw	%r9w, 3102(%rbx)
	addl	%r10d, %r9d
	testl	%r10d, %r10d
	movl	%esi, 3136(%rbx)
	movw	%r11w, 3202(%rbx)
	je	.L1613
	cmpl	$8, %r9d
	jg	.L1470
.L1613:
	movl	%r9d, %ecx
	addl	%r10d, %r11d
	sall	$13, %ecx
	movw	%r11w, 3204(%rbx)
	movl	%ecx, 3140(%rbx)
	leal	(%r9,%r9), %ecx
	leal	(%rcx,%r15), %r9d
	movl	%ecx, 96(%rsp)
	movw	%cx, 3104(%rbx)
	cmpl	$16, %r9d
	jle	.L1614
	testl	%r15d, %r15d
	jne	.L1470
.L1614:
	movl	%r9d, %ecx
	addl	%r15d, %r11d
	sall	$12, %ecx
	movw	%r11w, 3206(%rbx)
	movl	%ecx, 3144(%rbx)
	leal	(%r9,%r9), %ecx
	leal	(%rcx,%r14), %r9d
	movl	%ecx, 100(%rsp)
	movw	%cx, 3106(%rbx)
	cmpl	$32, %r9d
	jle	.L1615
	testl	%r14d, %r14d
	jne	.L1470
.L1615:
	movl	%r9d, %ecx
	addl	%r14d, %r11d
	sall	$11, %ecx
	movw	%r11w, 3208(%rbx)
	movl	%ecx, 3148(%rbx)
	leal	(%r9,%r9), %ecx
	movl	%ecx, 104(%rsp)
	movw	%cx, 3108(%rbx)
	addl	%eax, %ecx
	cmpl	$64, %ecx
	jle	.L1616
	testl	%eax, %eax
	jne	.L1470
.L1616:
	movl	%ecx, %r9d
	addl	%ecx, %ecx
	addl	%eax, %r11d
	sall	$10, %r9d
	movl	%ecx, 108(%rsp)
	movw	%cx, 3110(%rbx)
	addl	%r12d, %ecx
	testl	%r12d, %r12d
	movl	%r9d, 3152(%rbx)
	movw	%r11w, 3210(%rbx)
	je	.L1617
	cmpl	$128, %ecx
	jg	.L1470
.L1617:
	movl	%ecx, %eax
	addl	%ecx, %ecx
	addl	%r12d, %r11d
	sall	$9, %eax
	movl	%ecx, 112(%rsp)
	movw	%cx, 3112(%rbx)
	addl	%ebp, %ecx
	testl	%ebp, %ebp
	movl	%eax, 3156(%rbx)
	movw	%r11w, 3212(%rbx)
	je	.L1618
	cmpl	$256, %ecx
	jg	.L1470
.L1618:
	movl	%ecx, %eax
	addl	%ecx, %ecx
	addl	%ebp, %r11d
	sall	$8, %eax
	movl	%ecx, 116(%rsp)
	movw	%cx, 3114(%rbx)
	movl	%eax, 3160(%rbx)
	leal	(%rcx,%r13), %eax
	movw	%r11w, 3214(%rbx)
	cmpl	$512, %eax
	jle	.L1619
	testl	%r13d, %r13d
	jne	.L1470
.L1619:
	movl	%eax, %ecx
	addl	%eax, %eax
	addl	%r13d, %r11d
	sall	$7, %ecx
	movl	%eax, 120(%rsp)
	movw	%ax, 3116(%rbx)
	addl	%edi, %eax
	testl	%edi, %edi
	movl	%ecx, 3164(%rbx)
	movw	%r11w, 3216(%rbx)
	je	.L1620
	cmpl	$1024, %eax
	jg	.L1470
.L1620:
	movl	%eax, %ecx
	addl	%eax, %eax
	sall	$6, %ecx
	movl	%eax, 124(%rsp)
	movw	%ax, 3118(%rbx)
	movl	%ecx, 3168(%rbx)
	leal	(%r11,%rdi), %ecx
	movl	44(%rsp), %edi
	movw	%cx, 3218(%rbx)
	addl	%edi, %eax
	cmpl	$2048, %eax
	jle	.L1621
	testl	%edi, %edi
	jne	.L1470
.L1621:
	addl	44(%rsp), %ecx
	movl	48(%rsp), %edi
	movl	%eax, %r9d
	addl	%eax, %eax
	sall	$5, %r9d
	movl	%eax, 128(%rsp)
	movw	%ax, 3120(%rbx)
	addl	%edi, %eax
	testl	%edi, %edi
	movl	%r9d, 3172(%rbx)
	movw	%cx, 3220(%rbx)
	je	.L1622
	cmpl	$4096, %eax
	jg	.L1470
.L1622:
	addl	48(%rsp), %ecx
	movl	52(%rsp), %edi
	movl	%eax, %r9d
	addl	%eax, %eax
	sall	$4, %r9d
	movl	%eax, 132(%rsp)
	movw	%ax, 3122(%rbx)
	addl	%edi, %eax
	testl	%edi, %edi
	movl	%r9d, 3176(%rbx)
	movw	%cx, 3222(%rbx)
	je	.L1623
	cmpl	$8192, %eax
	jg	.L1470
.L1623:
	movl	72(%rsp), %edi
	addl	52(%rsp), %ecx
	leal	0(,%rax,8), %r9d
	addl	%eax, %eax
	movl	%eax, 136(%rsp)
	movw	%ax, 3124(%rbx)
	addl	%edi, %eax
	movl	%r9d, 3180(%rbx)
	cmpl	$16384, %eax
	movw	%cx, 3224(%rbx)
	jle	.L1624
	testl	%edi, %edi
	jne	.L1470
.L1624:
	addl	72(%rsp), %ecx
	movl	76(%rsp), %edi
	leal	0(,%rax,4), %r9d
	addl	%eax, %eax
	movl	%eax, 140(%rsp)
	movw	%ax, 3126(%rbx)
	addl	%edi, %eax
	testl	%edi, %edi
	movl	%r9d, 3184(%rbx)
	movw	%cx, 3226(%rbx)
	je	.L1625
	cmpl	$32768, %eax
	jg	.L1470
.L1625:
	addl	%eax, %eax
	movl	$65536, 3192(%rbx)
	xorl	%r10d, %r10d
	movl	%eax, 3188(%rbx)
	leaq	_ZL23stbi__zdefault_distance(%rip), %rbp
	movl	$16, %r13d
	movl	$1, %r12d
	jmp	.L1485
.L1489:
	incl	%r11d
	movl	%r11d, 80(%rsp,%rsi,4)
.L1487:
	incq	%r10
	cmpq	$32, %r10
	je	.L1546
.L1485:
	movzbl	0(%rbp,%r10), %r9d
	testl	%r9d, %r9d
	je	.L1487
	movzbl	%r9b, %eax
	movslq	%r9d, %rsi
	leaq	(%rbx,%rax,2), %rcx
	movl	80(%rsp,%rsi,4), %r11d
	movzwl	3096(%rcx), %eax
	movl	%r11d, %r14d
	subl	%eax, %r14d
	movzwl	3196(%rcx), %eax
	addl	%r14d, %eax
	cmpl	$9, %r9d
	cltq
	movb	%r9b, 3228(%rbx,%rax)
	movw	%r10w, 3516(%rbx,%rax,2)
	jg	.L1489
	movl	%r11d, %ecx
	movl	%r11d, %eax
	andl	$43690, %ecx
	andl	$21845, %eax
	addl	%eax, %eax
	sarl	%ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	andl	$13107, %ecx
	andl	$52428, %eax
	sarl	$2, %eax
	movl	%eax, %r14d
	leal	0(,%rcx,4), %eax
	orl	%r14d, %eax
	movl	%eax, %ecx
	andl	$3855, %eax
	andl	$61680, %ecx
	sall	$4, %eax
	sarl	$4, %ecx
	orl	%eax, %ecx
	movl	%ecx, %r14d
	sall	$8, %ecx
	shrl	$8, %r14d
	movzwl	%cx, %eax
	movl	%r13d, %ecx
	subl	%r9d, %ecx
	orl	%r14d, %eax
	movl	%r12d, %r14d
	sarl	%cl, %eax
	movl	%r9d, %ecx
	sall	$9, %r9d
	sall	%cl, %r14d
	orl	%r10d, %r9d
	movl	%r14d, %edi
	.p2align 4,,7
.L1490:
	movslq	%eax, %rcx
	addl	%edi, %eax
	cmpl	$511, %eax
	movw	%r9w, 2072(%rbx,%rcx,2)
	jle	.L1490
	jmp	.L1489
.L1469:
	leaq	.LC34(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L1486
.L1853:
	movl	40(%rsp), %eax
	movq	%rdi, 24(%rbx)
	testl	%eax, %eax
	jne	.L1597
.L1876:
	movl	16(%rbx), %ecx
	movl	20(%rbx), %eax
	jmp	.L1543
.L1857:
	leaq	.LC53(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L1486
.L1470:
	leaq	.LC35(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L1486
.L1867:
	cmpl	%edi, %edx
	jge	.L1419
	movq	%rbx, %rcx
	call	_ZL15stbi__fill_bitsP10stbi__zbuf
	movl	20(%rbx), %r8d
	movl	16(%rbx), %edx
.L1419:
	subl	%edi, %edx
	movl	%edi, %ecx
	shrl	%cl, %r8d
	testl	%edx, %edx
	movl	%edx, 16(%rbx)
	movl	%r8d, 20(%rbx)
	jg	.L1871
.L1560:
	movl	%edx, %eax
	xorl	%ebp, %ebp
	movl	$1, %edi
	testl	%eax, %eax
	je	.L1431
.L1872:
	leaq	.LC3(%rip), %rdx
	leaq	.LC49(%rip), %rcx
	movl	$4033, %r8d
	call	_assert
	jmp	.L1431
	.p2align 4,,7
.L1563:
	movl	$4, %edi
	movl	$3, %ebp
.L1420:
	testl	%eax, %eax
	jne	.L1872
.L1431:
	movq	8(%rbx), %r8
	movq	(%rbx), %rdx
	cmpq	%r8, %rdx
	jb	.L1873
	movslq	%ebp, %rax
	cmpl	$4, %edi
	movb	$0, 144(%rsp,%rax)
	je	.L1557
	leal	2(%rbp), %eax
	movq	%rdx, %rcx
	xorl	%edx, %edx
.L1426:
	cmpl	$3, %eax
	movb	%dl, 144(%rsp,%rdi)
	jg	.L1557
.L1875:
	cmpq	%rcx, %r8
	ja	.L1874
	cltq
	testl	%ebp, %ebp
	movb	$0, 144(%rsp,%rax)
	jne	.L1557
.L1565:
	xorl	%r8d, %r8d
.L1430:
	movzbl	145(%rsp), %r12d
	movzbl	144(%rsp), %ebp
	movzbl	146(%rsp), %r13d
	jmp	.L1425
.L1873:
	leaq	1(%rdx), %rcx
	movslq	%ebp, %rax
	cmpl	$4, %edi
	movq	%rcx, (%rbx)
	movzbl	(%rdx), %r9d
	movb	%r9b, 144(%rsp,%rax)
	je	.L1557
	cmpq	%rcx, %r8
	leal	2(%rbp), %eax
	jbe	.L1564
	leaq	2(%rdx), %rcx
	cmpl	$3, %eax
	movq	%rcx, (%rbx)
	movzbl	1(%rdx), %edx
	movb	%dl, 144(%rsp,%rdi)
	jle	.L1875
.L1557:
	movzbl	147(%rsp), %r8d
	movzbl	145(%rsp), %r12d
	movzbl	144(%rsp), %ebp
	movzbl	146(%rsp), %r13d
	sall	$8, %r8d
	jmp	.L1425
.L1874:
	leaq	1(%rcx), %rdx
	cltq
	testl	%ebp, %ebp
	movq	%rdx, (%rbx)
	movzbl	(%rcx), %r9d
	movb	%r9b, 144(%rsp,%rax)
	jne	.L1557
	cmpq	%r8, %rdx
	jnb	.L1565
	leaq	2(%rcx), %rax
	movq	%rax, (%rbx)
	movzbl	1(%rcx), %r8d
	sall	$8, %r8d
	jmp	.L1430
.L1562:
	movl	$3, %edi
	movl	$2, %ebp
	jmp	.L1420
.L1561:
	movl	$2, %edi
	movl	$1, %ebp
	jmp	.L1420
.L1866:
	movq	32(%rbx), %rcx
	subq	%rcx, %r9
	subq	%rcx, %r8
	addl	%r9d, %eax
	movq	%r9, %r12
	movl	%r8d, %edx
	cmpl	%eax, %r8d
	jge	.L1438
.L1439:
	addl	%edx, %edx
	cmpl	%eax, %edx
	jl	.L1439
.L1438:
	movslq	%edx, %rdi
	movq	%rdi, %rdx
	call	realloc
	testq	%rax, %rax
	je	.L1530
	leaq	(%rax,%rdi), %rdx
	movslq	%r12d, %r9
	movq	%rax, 32(%rbx)
	addq	%rax, %r9
	movq	%rdx, 40(%rbx)
	movq	(%rbx), %rdx
	movq	%r9, 24(%rbx)
.L1435:
	movq	%rbp, %r8
	movq	%r9, %rcx
	call	memcpy
	movl	40(%rsp), %eax
	addq	%rbp, (%rbx)
	addq	%rbp, 24(%rbx)
	testl	%eax, %eax
	je	.L1876
.L1597:
	movl	$1, %eax
	jmp	.L1831
.L1865:
	leaq	.LC51(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L1486
.L1846:
	movq	8(%rcx), %r9
	movq	(%rcx), %rax
	cmpq	%rax, %r9
	ja	.L1877
.L1403:
	leaq	.LC48(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L1486
.L1564:
	xorl	%edx, %edx
	jmp	.L1426
.L1877:
	leaq	1(%rax), %rdx
	movq	%rdx, (%rcx)
	movzbl	(%rax), %ecx
	movl	%ecx, %r8d
	andl	$15, %r8d
	cmpq	%rdx, %r9
	jbe	.L1878
	leaq	2(%rax), %rdx
	sall	$8, %ecx
	movq	%rdx, (%rbx)
	movzbl	1(%rax), %eax
	movl	$-2078209981, %edx
	addl	%eax, %ecx
	movl	%eax, %r9d
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	sall	$5, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jne	.L1405
	andl	$32, %r9d
	je	.L1406
	leaq	.LC47(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L1486
.L1878:
	sall	$8, %ecx
	movl	$-2078209981, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	sall	$5, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	je	.L1406
.L1405:
	leaq	.LC46(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L1486
.L1868:
	sall	$8, %edi
	movl	%edi, %r8d
	jmp	.L1425
.L1406:
	cmpb	$8, %r8b
	je	.L1402
	jmp	.L1403
	.seh_endproc
	.section .rdata,"dr"
.LC54:
	.ascii "can't merge dc and ac\0"
	.text
	.p2align 4,,15
	.def	_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg
_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg:
.LFB636:
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
	movl	18536(%rcx), %eax
	movl	$2147483647, %edx
	movq	%rcx, %rbp
	movl	$0, 18468(%rcx)
	movl	$0, 18464(%rcx)
	movl	$0, 18476(%rcx)
	movl	$0, 18392(%rcx)
	testl	%eax, %eax
	movl	$0, 18296(%rcx)
	movl	$0, 18200(%rcx)
	cmove	%edx, %eax
	movl	$0, 18104(%rcx)
	movb	$-1, 18472(%rcx)
	movl	%eax, 18540(%rcx)
	movl	18480(%rcx), %eax
	movl	$0, 18500(%rcx)
	testl	%eax, %eax
	jne	.L1881
	cmpl	$1, 18516(%rcx)
	je	.L1882
	movl	18068(%rcx), %eax
	testl	%eax, %eax
	jle	.L1914
	leaq	8(%rcx), %r15
	leaq	6728(%rcx), %rsi
	movl	18064(%rcx), %edx
	leaq	144(%rsp), %r13
	movl	$0, 80(%rsp)
	movq	%r15, %r12
	movq	%rsi, 88(%rsp)
	movq	%rcx, %r15
.L1911:
	testl	%edx, %edx
	jle	.L1896
	movq	%r15, %rbp
	movl	$0, 72(%rsp)
	movq	%r12, %r15
.L1910:
	movl	18516(%rbp), %edx
	leaq	18520(%rbp), %rax
	movl	$0, 104(%rsp)
	movq	%rax, 96(%rsp)
	testl	%edx, %edx
	jle	.L1905
.L2047:
	movq	96(%rsp), %rax
	movslq	(%rax), %rax
	movq	%rax, %rcx
	movq	%rax, %r12
	salq	$7, %rax
	salq	$5, %rcx
	movq	%rax, %r10
	subq	%rcx, %r10
	addq	%rbp, %r10
	movl	18088(%r10), %esi
	testl	%esi, %esi
	jle	.L1900
	movl	18084(%r10), %ebx
	movl	$0, 64(%rsp)
	movq	%r10, %r14
.L1904:
	testl	%ebx, %ebx
	jle	.L1901
	xorl	%edi, %edi
	.p2align 4,,7
.L1903:
	movslq	18092(%r14), %rax
	movslq	18100(%r14), %rdx
	movslq	18096(%r14), %rcx
	movl	%r12d, 40(%rsp)
	imull	72(%rsp), %ebx
	imull	80(%rsp), %esi
	addq	$105, %rax
	salq	$7, %rax
	leaq	8(%rbp,%rax), %rax
	addl	64(%rsp), %esi
	imulq	$1680, %rdx, %r8
	salq	$10, %rdx
	movq	%rax, 48(%rsp)
	leaq	13960(%rbp,%rdx), %rax
	addl	%edi, %ebx
	imulq	$1680, %rcx, %rcx
	movq	%r13, %rdx
	sall	$3, %ebx
	movq	%rax, 32(%rsp)
	movq	88(%rsp), %rax
	sall	$3, %esi
	leaq	(%rax,%r8), %r9
	leaq	(%r15,%rcx), %r8
	movq	%rbp, %rcx
	call	_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt
	testl	%eax, %eax
	je	.L2032
	movl	18116(%r14), %edx
	movslq	%ebx, %rbx
	movq	%r13, %r8
	incl	%edi
	imull	%edx, %esi
	movslq	%esi, %rcx
	addq	%rbx, %rcx
	addq	18128(%r14), %rcx
	call	*18544(%rbp)
	movl	18084(%r14), %ebx
	movl	18088(%r14), %esi
	cmpl	%edi, %ebx
	jg	.L1903
.L1901:
	incl	64(%rsp)
	movl	64(%rsp), %eax
	cmpl	%esi, %eax
	jl	.L1904
	movl	18516(%rbp), %edx
.L1900:
	incl	104(%rsp)
	addq	$4, 96(%rsp)
	movl	104(%rsp), %eax
	cmpl	%edx, %eax
	jl	.L2047
.L1905:
	movl	18540(%rbp), %eax
	decl	%eax
	testl	%eax, %eax
	movl	%eax, 18540(%rbp)
	jle	.L2071
.L1899:
	incl	72(%rsp)
	movl	18064(%rbp), %edx
	movl	72(%rsp), %eax
	cmpl	%eax, %edx
	jg	.L1910
	movl	18068(%rbp), %eax
	movq	%r15, %r12
	movq	%rbp, %r15
.L1896:
	incl	80(%rsp)
	movl	80(%rsp), %esi
	cmpl	%eax, %esi
	jl	.L1911
.L1914:
	movl	$1, %eax
	jmp	.L2032
.L1881:
	cmpl	$1, 18516(%rcx)
	je	.L1912
	movl	18068(%rcx), %eax
	testl	%eax, %eax
	jle	.L1914
	movl	18064(%rcx), %edx
	xorl	%r13d, %r13d
	movl	%r13d, %r14d
.L2000:
	testl	%edx, %edx
	jle	.L1977
	movl	$0, 72(%rsp)
	movl	%r14d, %r13d
.L1999:
	movl	18516(%rbp), %ecx
	leaq	18520(%rbp), %rax
	movl	$0, 96(%rsp)
	movq	%rax, 80(%rsp)
	testl	%ecx, %ecx
	jle	.L1995
.L2048:
	movq	80(%rsp), %rax
	movslq	(%rax), %rax
	movq	%rax, %rdx
	salq	$7, %rax
	salq	$5, %rdx
	movq	%rax, %r14
	subq	%rdx, %r14
	addq	%rbp, %r14
	movl	18088(%r14), %edx
	testl	%edx, %edx
	jle	.L1981
	movl	18084(%r14), %eax
	movl	72(%rsp), %esi
	xorl	%ebx, %ebx
.L1994:
	testl	%eax, %eax
	jle	.L1982
	movl	18488(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L1984
	imull	%r13d, %edx
	xorl	%r12d, %r12d
	imull	%esi, %eax
	addl	%ebx, %edx
	imull	18168(%r14), %edx
	addl	%edx, %eax
	movq	18160(%r14), %rdx
	sall	$6, %eax
	cltq
	leaq	(%rdx,%rax,2), %r15
	movslq	18096(%r14), %rax
	imulq	$1680, %rax, %rax
	leaq	8(%rbp,%rax), %rdx
	.p2align 4,,7
.L1986:
	cmpl	$15, 18468(%rbp)
	jle	.L2072
	movl	18492(%rbp), %eax
	testl	%eax, %eax
	je	.L2073
.L1988:
	movl	18468(%rbp), %eax
	testl	%eax, %eax
	jle	.L2074
.L1993:
	movl	18464(%rbp), %edx
	decl	%eax
	movl	%eax, 18468(%rbp)
	leal	(%rdx,%rdx), %ecx
	testl	%edx, %edx
	movl	%ecx, 18464(%rbp)
	jns	.L1992
	movl	18496(%rbp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	addw	%ax, (%r15)
.L1992:
	movl	18084(%r14), %eax
	incl	%r12d
	cmpl	%r12d, %eax
	jle	.L2075
.L2009:
	movl	18088(%r14), %ecx
	imull	%esi, %eax
	imull	%r13d, %ecx
	leal	(%rax,%r12), %edx
	addl	%ebx, %ecx
	imull	18168(%r14), %ecx
	leal	(%rcx,%rdx), %eax
	movq	18160(%r14), %rdx
	movl	18488(%rbp), %ecx
	sall	$6, %eax
	cltq
	leaq	(%rdx,%rax,2), %r15
	movslq	18096(%r14), %rax
	imulq	$1680, %rax, %rax
	testl	%ecx, %ecx
	leaq	8(%rbp,%rax), %rdx
	je	.L1986
.L1984:
	leaq	.LC54(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L2032:
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
	.p2align 4,,7
.L2072:
	movq	%rbp, %rcx
	movq	%rdx, 64(%rsp)
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18492(%rbp), %eax
	movq	64(%rsp), %rdx
	testl	%eax, %eax
	jne	.L1988
.L2073:
	leaq	8(%r15), %rdi
	movq	%r15, %rcx
	xorl	%eax, %eax
	movq	$0, (%r15)
	movq	$0, 120(%r15)
	andq	$-8, %rdi
	subq	%rdi, %rcx
	subl	$-128, %ecx
	shrl	$3, %ecx
	rep stosq
	movq	%rbp, %rcx
	call	_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	.L2076
.L1989:
	movl	18104(%r14), %eax
	movl	18496(%rbp), %ecx
	incl	%r12d
	addl	%edx, %eax
	movl	%eax, 18104(%r14)
	sall	%cl, %eax
	movw	%ax, (%r15)
	movl	18084(%r14), %eax
	cmpl	%r12d, %eax
	jg	.L2009
.L2075:
	movl	18088(%r14), %edx
.L1982:
	incl	%ebx
	cmpl	%edx, %ebx
	jl	.L1994
	movl	18516(%rbp), %ecx
.L1981:
	incl	96(%rsp)
	addq	$4, 80(%rsp)
	movl	96(%rsp), %eax
	cmpl	%ecx, %eax
	jl	.L2048
.L1995:
	movl	18540(%rbp), %eax
	decl	%eax
	testl	%eax, %eax
	movl	%eax, 18540(%rbp)
	jle	.L2077
.L1980:
	incl	72(%rsp)
	movl	18064(%rbp), %edx
	movl	72(%rsp), %eax
	cmpl	%eax, %edx
	jg	.L1999
	movl	18068(%rbp), %eax
	movl	%r13d, %r14d
.L1977:
	incl	%r14d
	cmpl	%eax, %r14d
	jl	.L2000
	jmp	.L1914
	.p2align 4,,7
.L2076:
	cmpl	18468(%rbp), %eax
	jg	.L2078
.L1990:
	movl	18464(%rbp), %r9d
	movl	%eax, %ecx
	movl	%r9d, %edi
	roll	%cl, %r9d
	sarl	$31, %edi
	cmpl	$16, %eax
	jbe	.L1991
	leaq	.LC3(%rip), %rdx
	leaq	.LC43(%rip), %rcx
	movl	$1858, %r8d
	movl	%r9d, 88(%rsp)
	movl	%eax, 64(%rsp)
	call	_assert
	movl	88(%rsp), %r9d
	movl	64(%rsp), %eax
.L1991:
	leaq	_ZL11stbi__bmask(%rip), %rdx
	movslq	%eax, %r8
	subl	%eax, 18468(%rbp)
	leaq	_ZL11stbi__jbias(%rip), %rax
	notl	%edi
	movl	(%rdx,%r8,4), %ecx
	andl	(%rax,%r8,4), %edi
	movl	%ecx, %edx
	andl	%r9d, %ecx
	notl	%edx
	andl	%r9d, %edx
	movl	%edx, 18464(%rbp)
	leal	(%rdi,%rcx), %edx
	jmp	.L1989
.L2074:
	movq	%rbp, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%rbp), %eax
	jmp	.L1993
.L1882:
	movslq	18520(%rcx), %rax
	movq	%rax, %rdx
	movq	%rax, %rdi
	salq	$7, %rax
	salq	$5, %rdx
	subq	%rdx, %rax
	leaq	(%rcx,%rax), %rcx
	movl	18108(%rcx), %esi
	leal	7(%rsi), %edx
	sarl	$3, %edx
	movl	%edx, 72(%rsp)
	movl	18112(%rcx), %edx
	addl	$7, %edx
	sarl	$3, %edx
	testl	%edx, %edx
	movl	%edx, 88(%rsp)
	jle	.L1914
	movl	72(%rsp), %esi
	leaq	6728(%rbp), %r13
	leaq	8(%rbp), %r12
	xorl	%r14d, %r14d
	movq	%rax, 80(%rsp)
	leal	-1(%rsi), %edx
	leaq	8(,%rdx,8), %rsi
	movq	%rsi, 64(%rsp)
	leaq	144(%rsp), %rsi
.L1889:
	movq	80(%rsp), %rax
	xorl	%ebx, %ebx
	leaq	0(%rbp,%rax), %r15
	movl	72(%rsp), %eax
	testl	%eax, %eax
	jle	.L1893
	movq	%r15, %rax
	movq	%rbp, %r15
	movq	%rax, %rbp
	jmp	.L1894
	.p2align 4,,7
.L1890:
	addq	$8, %rbx
	cmpq	%rbx, 64(%rsp)
	je	.L2079
.L1894:
	movslq	18092(%rbp), %rax
	movslq	18100(%rbp), %rdx
	movslq	18096(%rbp), %rcx
	movl	%edi, 40(%rsp)
	addq	$105, %rax
	imulq	$1680, %rdx, %r8
	salq	$7, %rax
	salq	$10, %rdx
	imulq	$1680, %rcx, %rcx
	leaq	8(%r15,%rax), %rax
	movq	%rax, 48(%rsp)
	leaq	13960(%r15,%rdx), %rax
	movq	%rsi, %rdx
	leaq	0(%r13,%r8), %r9
	leaq	(%r12,%rcx), %r8
	movq	%rax, 32(%rsp)
	movq	%r15, %rcx
	call	_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt
	testl	%eax, %eax
	je	.L2032
	movl	18116(%rbp), %edx
	movq	%rsi, %r8
	movl	%edx, %ecx
	imull	%r14d, %ecx
	sall	$3, %ecx
	movslq	%ecx, %rcx
	addq	%rbx, %rcx
	addq	18128(%rbp), %rcx
	call	*18544(%r15)
	movl	18540(%r15), %eax
	decl	%eax
	testl	%eax, %eax
	movl	%eax, 18540(%r15)
	jg	.L1890
	cmpl	$23, 18468(%r15)
	jle	.L2080
.L1891:
	movzbl	18472(%r15), %eax
	addl	$48, %eax
	cmpb	$7, %al
	ja	.L1914
	movl	18536(%r15), %eax
	movl	$2147483647, %edx
	movl	$0, 18468(%r15)
	movl	$0, 18464(%r15)
	movl	$0, 18476(%r15)
	movl	$0, 18392(%r15)
	movl	$0, 18296(%r15)
	testl	%eax, %eax
	movl	$0, 18200(%r15)
	movl	$0, 18104(%r15)
	cmove	%edx, %eax
	addq	$8, %rbx
	cmpq	%rbx, 64(%rsp)
	movb	$-1, 18472(%r15)
	movl	%eax, 18540(%r15)
	movl	$0, 18500(%r15)
	jne	.L1894
.L2079:
	movq	%r15, %rbp
.L1893:
	incl	%r14d
	cmpl	%r14d, 88(%rsp)
	jne	.L1889
	jmp	.L1914
	.p2align 4,,7
.L1912:
	movslq	18520(%rcx), %rax
	movq	%rax, %rdx
	salq	$7, %rax
	salq	$5, %rdx
	subq	%rdx, %rax
	leaq	(%rcx,%rax), %rcx
	movl	18108(%rcx), %esi
	leal	7(%rsi), %edx
	sarl	$3, %edx
	movl	%edx, 88(%rsp)
	movl	18112(%rcx), %edx
	addl	$7, %edx
	sarl	$3, %edx
	testl	%edx, %edx
	movl	%edx, 140(%rsp)
	jle	.L1914
	movl	$0, 80(%rsp)
	movq	%rax, 128(%rsp)
	movq	%rbp, %r13
.L1916:
	movl	88(%rsp), %ebx
	movq	128(%rsp), %rax
	movl	$0, 64(%rsp)
	testl	%ebx, %ebx
	leaq	0(%r13,%rax), %r12
	jg	.L2049
	jmp	.L1975
	.p2align 4,,7
.L2085:
	movl	18488(%r13), %r11d
	testl	%r11d, %r11d
	jne	.L1984
	cmpl	$15, 18468(%r13)
	movl	18096(%r12), %ebx
	jle	.L2081
	movl	18492(%r13), %r10d
	testl	%r10d, %r10d
	je	.L2082
.L1920:
	movl	18468(%r13), %eax
	testl	%eax, %eax
	jle	.L2083
.L1925:
	movl	18464(%r13), %edx
	decl	%eax
	movl	%eax, 18468(%r13)
	leal	(%rdx,%rdx), %ecx
	testl	%edx, %edx
	movl	%ecx, 18464(%r13)
	jns	.L1924
	movl	18496(%r13), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	addw	%ax, (%rsi)
	.p2align 4,,7
.L1924:
	movl	18540(%r13), %eax
	decl	%eax
	testl	%eax, %eax
	movl	%eax, 18540(%r13)
	jle	.L2084
	incl	64(%rsp)
	movl	64(%rsp), %eax
	cmpl	%eax, 88(%rsp)
	je	.L1975
.L2049:
	movl	80(%rsp), %eax
	movslq	18484(%r13), %rbx
	imull	18168(%r12), %eax
	movq	18160(%r12), %rdx
	addl	64(%rsp), %eax
	sall	$6, %eax
	testl	%ebx, %ebx
	cltq
	leaq	(%rdx,%rax,2), %rsi
	je	.L2085
	movl	18492(%r13), %r9d
	movslq	18100(%r12), %rax
	testl	%r9d, %r9d
	jne	.L1927
	movl	18500(%r13), %edx
	testl	%edx, %edx
	jne	.L2086
	movq	%rax, %r15
	movl	18496(%r13), %edi
	movl	18468(%r13), %r11d
	imulq	$1680, %rax, %r14
	salq	$10, %r15
	movq	%r12, 104(%rsp)
	imulq	$420, %rax, %rdx
	addq	$13952, %r15
	imulq	$840, %rax, %rax
	addq	%r13, %r14
	movq	%rdx, 72(%rsp)
	movq	%rax, 96(%rsp)
	jmp	.L1944
	.p2align 4,,7
.L1929:
	movl	18464(%r13), %eax
	movl	%eax, %edx
	shrl	$23, %edx
	movl	%edx, %ecx
	leaq	0(%r13,%rcx,2), %rcx
	movswl	8(%rcx,%r15), %r8d
	testl	%r8d, %r8d
	movl	%r8d, %ecx
	je	.L1932
.L2010:
	movl	%r8d, %edx
	andl	$15, %ecx
	sarl	$8, %r8d
	sarl	$4, %edx
	sall	%cl, %eax
	subl	%ecx, %r11d
	andl	$15, %edx
	leaq	_ZL19stbi__jpeg_dezigzag(%rip), %rcx
	movl	%eax, 18464(%r13)
	addl	%ebx, %edx
	movl	%r11d, 18468(%r13)
	leal	1(%rdx), %ebx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %eax
	movl	%edi, %ecx
	sall	%cl, %r8d
	movw	%r8w, (%rsi,%rax,2)
.L1931:
	cmpl	%ebx, 18488(%r13)
	jl	.L2087
.L1944:
	cmpl	$15, %r11d
	jg	.L1929
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%r13), %eax
	movl	18468(%r13), %r11d
	movl	%eax, %edx
	shrl	$23, %edx
	movl	%edx, %ecx
	leaq	0(%r13,%rcx,2), %rcx
	movswl	8(%rcx,%r15), %r8d
	testl	%r8d, %r8d
	movl	%r8d, %ecx
	jne	.L2010
	cmpl	$15, %r11d
	jg	.L1932
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18464(%r13), %eax
	movl	18468(%r13), %r11d
	movl	%eax, %edx
	shrl	$23, %edx
.L1932:
	movslq	%edx, %rdx
	movzbl	6728(%rdx,%r14), %edx
	cmpl	$255, %edx
	je	.L1933
	addq	%r14, %rdx
	movzbl	8008(%rdx), %ecx
	cmpl	%r11d, %ecx
	jg	.L1935
	sall	%cl, %eax
	subl	%ecx, %r11d
	movl	%eax, 18464(%r13)
	movl	%r11d, 18468(%r13)
	movzbl	7752(%rdx), %ebp
.L1936:
	movl	%ebp, %edx
	sarl	$4, %edx
	andl	$15, %ebp
	jne	.L2088
	cmpl	$15, %edx
	jne	.L2089
	addl	$16, %ebx
	cmpl	%ebx, 18488(%r13)
	jge	.L1944
.L2087:
	movq	104(%rsp), %r12
	jmp	.L1924
	.p2align 4,,7
.L1933:
	movl	%eax, %edx
	shrl	$16, %edx
	cmpl	%edx, 8308(%r14)
	ja	.L2012
	cmpl	%edx, 8312(%r14)
	ja	.L2013
	cmpl	%edx, 8316(%r14)
	ja	.L2014
	cmpl	%edx, 8320(%r14)
	ja	.L2015
	cmpl	%edx, 8324(%r14)
	ja	.L2016
	cmpl	8328(%r14), %edx
	jb	.L2017
	cmpl	8332(%r14), %edx
	jb	.L2090
	leal	-16(%r11), %eax
	movl	%eax, 18468(%r13)
.L1935:
	leaq	.LC44(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2032
	.p2align 4,,7
.L2084:
	cmpl	$23, 18468(%r13)
	jle	.L2091
.L1973:
	movzbl	18472(%r13), %eax
	addl	$48, %eax
	cmpb	$7, %al
	ja	.L1914
	movl	18536(%r13), %eax
	movl	$2147483647, %edx
	movl	$0, 18468(%r13)
	movl	$0, 18464(%r13)
	movl	$0, 18476(%r13)
	movl	$0, 18392(%r13)
	movl	$0, 18296(%r13)
	testl	%eax, %eax
	movl	$0, 18200(%r13)
	movl	$0, 18104(%r13)
	cmove	%edx, %eax
	incl	64(%rsp)
	movb	$-1, 18472(%r13)
	movl	%eax, 18540(%r13)
	movl	64(%rsp), %eax
	cmpl	%eax, 88(%rsp)
	movl	$0, 18500(%r13)
	jne	.L2049
.L1975:
	incl	80(%rsp)
	movl	80(%rsp), %eax
	cmpl	%eax, 140(%rsp)
	jne	.L1916
	jmp	.L1914
	.p2align 4,,7
.L2088:
	addl	%ebx, %edx
	leaq	_ZL19stbi__jpeg_dezigzag(%rip), %rcx
	cmpl	%r11d, %ebp
	leal	1(%rdx), %ebx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edx
	leaq	(%rsi,%rdx,2), %r12
	jg	.L2092
.L1943:
	leaq	_ZL11stbi__bmask(%rip), %rdx
	movslq	%ebp, %r10
	movl	%eax, %r8d
	movl	%ebp, %ecx
	sarl	$31, %eax
	subl	%ebp, %r11d
	movl	(%rdx,%r10,4), %edx
	roll	%cl, %r8d
	notl	%eax
	movl	%r11d, 18468(%r13)
	movl	%edx, %ecx
	andl	%r8d, %edx
	notl	%ecx
	andl	%r8d, %ecx
	movl	%ecx, 18464(%r13)
	leaq	_ZL11stbi__jbias(%rip), %rcx
	andl	(%rcx,%r10,4), %eax
	movl	%edi, %ecx
	addl	%edx, %eax
	sall	%cl, %eax
	movw	%ax, (%r12)
	jmp	.L1931
	.p2align 4,,7
.L1927:
	movl	18496(%r13), %ecx
	movl	18500(%r13), %edx
	movl	$1, %edi
	sall	%cl, %edi
	testl	%edx, %edx
	movl	%edi, 72(%rsp)
	movl	%edi, %ebp
	je	.L1945
	decl	%edx
	movl	%edx, 18500(%r13)
	movl	18488(%r13), %edx
	cmpl	%edx, %ebx
	jg	.L1924
	leaq	_ZL19stbi__jpeg_dezigzag(%rip), %r15
	movl	%edi, %r14d
	jmp	.L1951
	.p2align 4,,7
.L1947:
	movl	18464(%r13), %ecx
	decl	%eax
	movl	%eax, 18468(%r13)
	leal	(%rcx,%rcx), %r8d
	testl	%ecx, %ecx
	movl	%r8d, 18464(%r13)
	jns	.L1946
	movzwl	(%rdi), %eax
	testw	%ax, %bp
	jne	.L1946
	testw	%ax, %ax
	jle	.L1950
	addl	%r14d, %eax
	movw	%ax, (%rdi)
	.p2align 4,,7
.L1946:
	incl	%ebx
	cmpl	%edx, %ebx
	jg	.L1924
.L1951:
	movslq	%ebx, %rax
	movzbl	(%r15,%rax), %eax
	leaq	(%rsi,%rax,2), %rdi
	cmpw	$0, (%rdi)
	je	.L1946
	movl	18468(%r13), %eax
	testl	%eax, %eax
	jg	.L1947
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %eax
	movl	18488(%r13), %edx
	jmp	.L1947
	.p2align 4,,7
.L1950:
	subl	%r14d, %eax
	movw	%ax, (%rdi)
	jmp	.L1946
.L2081:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18492(%r13), %r10d
	testl	%r10d, %r10d
	jne	.L1920
.L2082:
	leaq	8(%rsi), %rdi
	movq	%rsi, %rcx
	xorl	%eax, %eax
	movq	$0, (%rsi)
	movq	$0, 120(%rsi)
	andq	$-8, %rdi
	subq	%rdi, %rcx
	subl	$-128, %ecx
	shrl	$3, %ecx
	rep stosq
	movslq	%ebx, %rax
	movq	%r13, %rcx
	imulq	$1680, %rax, %rax
	leaq	8(%r13,%rax), %rdx
	call	_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	.L2093
.L1921:
	movl	18104(%r12), %eax
	movl	18496(%r13), %ecx
	addl	%edx, %eax
	movl	%eax, 18104(%r12)
	sall	%cl, %eax
	movw	%ax, (%rsi)
	jmp	.L1924
.L1945:
	imulq	$1680, %rax, %r9
	movl	18468(%r13), %r11d
	movq	%r12, 96(%rsp)
	imulq	$420, %rax, %rdx
	movq	%rsi, %r15
	imulq	$840, %rax, %rax
	leaq	0(%r13,%r9), %rdi
	movq	%rdx, 104(%rsp)
	movq	%rax, 112(%rsp)
	movswl	%bp, %eax
	movq	%rdi, %r12
	movl	%eax, 124(%rsp)
	negl	%eax
	cmpl	$15, %r11d
	movl	%eax, 136(%rsp)
	jle	.L2094
	.p2align 4,,7
.L1952:
	movl	18464(%r13), %eax
	movl	%eax, %edx
	shrl	$23, %edx
	movslq	%edx, %rdx
	movzbl	6728(%rdx,%r12), %edx
	cmpl	$255, %edx
	je	.L1953
	addq	%r12, %rdx
	movzbl	8008(%rdx), %ecx
	cmpl	%r11d, %ecx
	jg	.L1935
	sall	%cl, %eax
	subl	%ecx, %r11d
	movl	%eax, 18464(%r13)
	movl	%r11d, 18468(%r13)
	movzbl	7752(%rdx), %r8d
.L1955:
	movl	%r8d, %edi
	movl	%r8d, %r14d
	sarl	$4, %edi
	andl	$15, %r14d
	jne	.L2095
	cmpl	$15, %edi
	je	.L1959
	movl	$1, %edx
	movl	%edi, %ecx
	sall	%cl, %edx
	decl	%edx
	testl	%edi, %edi
	movl	%edx, 18500(%r13)
	jne	.L2096
	movl	$64, %edi
	.p2align 4,,7
.L1959:
	movl	%ebp, %esi
	movl	18488(%r13), %ecx
	movl	%edi, %ebp
	jmp	.L1964
	.p2align 4,,7
.L2098:
	movl	18468(%r13), %eax
	testl	%eax, %eax
	jle	.L2097
.L1966:
	movl	18464(%r13), %r8d
	decl	%eax
	movl	%eax, 18468(%r13)
	leal	(%r8,%r8), %r9d
	testl	%r8d, %r8d
	movl	%r9d, 18464(%r13)
	jns	.L1969
	movzwl	(%rbx), %eax
	testw	%ax, %si
	jne	.L1969
	testw	%ax, %ax
	jle	.L1970
	addw	72(%rsp), %ax
	movw	%ax, (%rbx)
	.p2align 4,,7
.L1969:
	movslq	%edi, %rbx
.L1964:
	cmpl	%ecx, %ebx
	jg	.L2062
	leaq	_ZL19stbi__jpeg_dezigzag(%rip), %rax
	leal	1(%rbx), %edi
	movzbl	(%rax,%rbx), %eax
	leaq	(%r15,%rax,2), %rbx
	cmpw	$0, (%rbx)
	jne	.L2098
	testl	%ebp, %ebp
	je	.L2099
	decl	%ebp
	jmp	.L1969
	.p2align 4,,7
.L2097:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %eax
	movl	18488(%r13), %ecx
	jmp	.L1966
	.p2align 4,,7
.L2062:
	movq	96(%rsp), %r12
	jmp	.L1924
	.p2align 4,,7
.L1953:
	movl	%eax, %edx
	shrl	$16, %edx
	cmpl	8308(%r12), %edx
	jb	.L2019
	cmpl	8312(%r12), %edx
	jb	.L2020
	cmpl	8316(%r12), %edx
	jb	.L2021
	cmpl	8320(%r12), %edx
	jb	.L2022
	cmpl	8324(%r12), %edx
	jb	.L2023
	cmpl	8328(%r12), %edx
	jb	.L2024
	cmpl	8332(%r12), %edx
	jb	.L2100
	leal	-16(%r11), %eax
	movl	%eax, 18468(%r13)
	jmp	.L1935
	.p2align 4,,7
.L2095:
	decl	%r14d
	jne	.L1935
	testl	%r11d, %r11d
	jle	.L2101
.L1962:
	leal	(%rax,%rax), %edx
	decl	%r11d
	movl	124(%rsp), %r14d
	testl	%eax, %eax
	movl	%r11d, 18468(%r13)
	cmovns	136(%rsp), %r14d
	movl	%edx, 18464(%r13)
	jmp	.L1959
	.p2align 4,,7
.L1970:
	subw	72(%rsp), %ax
	movw	%ax, (%rbx)
	jmp	.L1969
	.p2align 4,,7
.L2099:
	cmpl	%ecx, %edi
	movl	%esi, %ebp
	movw	%r14w, (%rbx)
	jg	.L2062
	movl	18468(%r13), %r11d
	movslq	%edi, %rbx
	cmpl	$15, %r11d
	jg	.L1952
.L2094:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %r11d
	jmp	.L1952
.L2091:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	jmp	.L1973
.L2096:
	cmpl	%r11d, %edi
	.p2align 4,,2
	jle	.L1960
	movq	%r13, %rcx
	.p2align 4,,5
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18500(%r13), %edx
	movl	18468(%r13), %r11d
	movl	18464(%r13), %eax
.L1960:
	movl	%edi, %ecx
	movslq	%edi, %rsi
	subl	%edi, %r11d
	roll	%cl, %eax
	leaq	_ZL11stbi__bmask(%rip), %rcx
	movl	%r11d, 18468(%r13)
	movl	$64, %edi
	movl	(%rcx,%rsi,4), %ecx
	movl	%ecx, %esi
	notl	%esi
	andl	%eax, %esi
	andl	%ecx, %eax
	addl	%eax, %edx
	movl	%esi, 18464(%r13)
	movl	%edx, 18500(%r13)
	jmp	.L1959
.L2024:
	movl	$32767, %edx
	movl	$17, %ecx
	movl	$15, %edi
	.p2align 4,,7
.L1956:
	cmpl	%r11d, %edi
	jg	.L1935
	movl	%eax, %esi
	movl	%eax, %r10d
	leaq	_ZL11stbi__bmask(%rip), %r8
	shrl	%cl, %esi
	movq	104(%rsp), %rcx
	andl	%edx, %esi
	movslq	%edi, %rdx
	leaq	2080(%rdx,%rcx), %rdx
	movl	$32, %ecx
	addl	20(%r13,%rdx,4), %esi
	movslq	%esi, %rsi
	movzbl	8008(%rsi,%r12), %edx
	subl	%edx, %ecx
	shrl	%cl, %r10d
	movl	%r10d, %ecx
	andl	(%r8,%rdx,4), %ecx
	movq	112(%rsp), %rdx
	leaq	3616(%rsi,%rdx), %rdx
	movzwl	8(%r13,%rdx,2), %edx
	cmpl	%edx, %ecx
	je	.L1958
	leaq	.LC3(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$1837, %r8d
	call	_assert
	movl	18468(%r13), %r11d
	movl	18464(%r13), %eax
.L1958:
	movl	%edi, %ecx
	subl	%edi, %r11d
	sall	%cl, %eax
	movl	%r11d, 18468(%r13)
	movl	%eax, 18464(%r13)
	movzbl	7752(%rsi,%r12), %r8d
	jmp	.L1955
.L2023:
	movl	$16383, %edx
	movl	$18, %ecx
	movl	$14, %edi
	jmp	.L1956
.L2022:
	movl	$8191, %edx
	movl	$19, %ecx
	movl	$13, %edi
	jmp	.L1956
.L2021:
	movl	$4095, %edx
	movl	$20, %ecx
	movl	$12, %edi
	jmp	.L1956
.L2100:
	movl	$65535, %edx
	movl	$16, %ecx
	movl	$16, %edi
	jmp	.L1956
.L2020:
	movl	$2047, %edx
	movl	$21, %ecx
	movl	$11, %edi
	jmp	.L1956
.L2019:
	movl	$1023, %edx
	movl	$22, %ecx
	movl	$10, %edi
	jmp	.L1956
.L2101:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %r11d
	movl	18464(%r13), %eax
	jmp	.L1962
.L2086:
	decl	%edx
	movl	%edx, 18500(%r13)
	jmp	.L1924
.L2080:
	movq	%r15, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	jmp	.L1891
.L2092:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %r11d
	movl	18464(%r13), %eax
	jmp	.L1943
.L2014:
	movl	$4095, %ebp
	movl	$20, %ecx
	movl	$12, %r12d
	.p2align 4,,7
.L1937:
	cmpl	%r11d, %r12d
	jg	.L1935
	movl	%eax, %edx
	movl	%eax, %r10d
	leaq	_ZL11stbi__bmask(%rip), %r8
	shrl	%cl, %edx
	movq	72(%rsp), %rcx
	andl	%edx, %ebp
	movslq	%r12d, %rdx
	leaq	2080(%rdx,%rcx), %rdx
	movl	$32, %ecx
	addl	20(%r13,%rdx,4), %ebp
	movslq	%ebp, %rbp
	movzbl	8008(%rbp,%r14), %edx
	subl	%edx, %ecx
	shrl	%cl, %r10d
	movl	%r10d, %ecx
	andl	(%r8,%rdx,4), %ecx
	movq	96(%rsp), %rdx
	leaq	3616(%rbp,%rdx), %rdx
	movzwl	8(%r13,%rdx,2), %edx
	cmpl	%edx, %ecx
	je	.L1939
	leaq	.LC3(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$1837, %r8d
	call	_assert
	movl	18468(%r13), %r11d
	movl	18464(%r13), %eax
.L1939:
	movl	%r12d, %ecx
	subl	%r12d, %r11d
	sall	%cl, %eax
	movl	%r11d, 18468(%r13)
	movl	%eax, 18464(%r13)
	movzbl	7752(%rbp,%r14), %ebp
	jmp	.L1936
.L2013:
	movl	$2047, %ebp
	movl	$21, %ecx
	movl	$11, %r12d
	jmp	.L1937
.L2012:
	movl	$1023, %ebp
	movl	$22, %ecx
	movl	$10, %r12d
	jmp	.L1937
.L2090:
	movl	$65535, %ebp
	movl	$16, %ecx
	movl	$16, %r12d
	jmp	.L1937
.L2017:
	movl	$32767, %ebp
	movl	$17, %ecx
	movl	$15, %r12d
	jmp	.L1937
.L2016:
	movl	$16383, %ebp
	movl	$18, %ecx
	movl	$14, %r12d
	jmp	.L1937
.L2015:
	movl	$8191, %ebp
	movl	$19, %ecx
	movl	$13, %r12d
	jmp	.L1937
.L2093:
	cmpl	18468(%r13), %eax
	jg	.L2102
.L1922:
	movl	18464(%r13), %edi
	movl	%eax, %ecx
	movl	%edi, %ebx
	roll	%cl, %edi
	sarl	$31, %ebx
	cmpl	$16, %eax
	jbe	.L1923
	leaq	.LC3(%rip), %rdx
	leaq	.LC43(%rip), %rcx
	movl	$1858, %r8d
	movl	%eax, 72(%rsp)
	call	_assert
	movl	72(%rsp), %eax
.L1923:
	leaq	_ZL11stbi__bmask(%rip), %rdx
	movslq	%eax, %r8
	subl	%eax, 18468(%r13)
	leaq	_ZL11stbi__jbias(%rip), %rax
	movl	(%rdx,%r8,4), %ecx
	movl	%ecx, %edx
	andl	%edi, %ecx
	notl	%edx
	andl	%edi, %edx
	movl	%edx, 18464(%r13)
	movl	%ebx, %edx
	notl	%edx
	andl	(%rax,%r8,4), %edx
	addl	%ecx, %edx
	jmp	.L1921
.L2078:
	movq	%rbp, %rcx
	movl	%eax, 64(%rsp)
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	64(%rsp), %eax
	jmp	.L1990
.L2083:
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18468(%r13), %eax
	jmp	.L1925
.L2089:
	movl	$1, %eax
	movl	%edx, %ecx
	movl	%edx, %ebp
	sall	%cl, %eax
	testl	%edx, %edx
	movq	104(%rsp), %r12
	movl	%eax, 18500(%r13)
	jne	.L2103
.L1941:
	decl	%eax
	movl	%eax, 18500(%r13)
	jmp	.L1924
.L2102:
	movq	%r13, %rcx
	movl	%eax, 72(%rsp)
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	72(%rsp), %eax
	jmp	.L1922
.L2103:
	cmpl	%r11d, %edx
	jle	.L1942
	movq	%r13, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	movl	18500(%r13), %eax
	movl	18468(%r13), %r11d
.L1942:
	movl	18464(%r13), %r8d
	movl	%ebp, %ecx
	movslq	%ebp, %r9
	subl	%ebp, %r11d
	movl	%r11d, 18468(%r13)
	roll	%cl, %r8d
	leaq	_ZL11stbi__bmask(%rip), %rcx
	movl	(%rcx,%r9,4), %ecx
	movl	%ecx, %r9d
	andl	%r8d, %ecx
	notl	%r9d
	addl	%ecx, %eax
	andl	%r8d, %r9d
	movl	%r9d, 18464(%r13)
	jmp	.L1941
.L2077:
	cmpl	$23, 18468(%rbp)
	jle	.L2104
.L1997:
	movzbl	18472(%rbp), %eax
	addl	$48, %eax
	cmpb	$7, %al
	ja	.L1914
	movl	18536(%rbp), %eax
	movl	$2147483647, %edx
	movl	$0, 18468(%rbp)
	movl	$0, 18464(%rbp)
	movl	$0, 18476(%rbp)
	movl	$0, 18392(%rbp)
	movl	$0, 18296(%rbp)
	testl	%eax, %eax
	movl	$0, 18200(%rbp)
	movl	$0, 18104(%rbp)
	cmove	%edx, %eax
	movb	$-1, 18472(%rbp)
	movl	$0, 18500(%rbp)
	movl	%eax, 18540(%rbp)
	jmp	.L1980
.L2071:
	cmpl	$23, 18468(%rbp)
	jle	.L2105
.L1907:
	movzbl	18472(%rbp), %eax
	addl	$48, %eax
	cmpb	$7, %al
	ja	.L1914
	movl	18536(%rbp), %eax
	movl	$2147483647, %edx
	movl	$0, 18468(%rbp)
	movl	$0, 18464(%rbp)
	movl	$0, 18476(%rbp)
	movl	$0, 18392(%rbp)
	movl	$0, 18296(%rbp)
	testl	%eax, %eax
	movl	$0, 18200(%rbp)
	movl	$0, 18104(%rbp)
	cmove	%edx, %eax
	movb	$-1, 18472(%rbp)
	movl	$0, 18500(%rbp)
	movl	%eax, 18540(%rbp)
	jmp	.L1899
.L2104:
	movq	%rbp, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	jmp	.L1997
.L2105:
	movq	%rbp, %rcx
	call	_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg
	.p2align 4,,5
	jmp	.L1907
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20stbi__convert_formatPhiijj;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbi__convert_formatPhiijj
_ZL20stbi__convert_formatPhiijj:
.LFB616:
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
	subq	$360, %rsp
	.seh_stackalloc	360
	movaps	%xmm6, 192(%rsp)
	.seh_savexmm	%xmm6, 192
	movaps	%xmm7, 208(%rsp)
	.seh_savexmm	%xmm7, 208
	movaps	%xmm8, 224(%rsp)
	.seh_savexmm	%xmm8, 224
	movaps	%xmm9, 240(%rsp)
	.seh_savexmm	%xmm9, 240
	movaps	%xmm10, 256(%rsp)
	.seh_savexmm	%xmm10, 256
	movaps	%xmm11, 272(%rsp)
	.seh_savexmm	%xmm11, 272
	movaps	%xmm12, 288(%rsp)
	.seh_savexmm	%xmm12, 288
	movaps	%xmm13, 304(%rsp)
	.seh_savexmm	%xmm13, 304
	movaps	%xmm14, 320(%rsp)
	.seh_savexmm	%xmm14, 320
	movaps	%xmm15, 336(%rsp)
	.seh_savexmm	%xmm15, 336
	.seh_endprologue
	cmpl	%edx, %r8d
	movq	%rcx, %r15
	movl	%r8d, %ebp
	movl	%edx, 440(%rsp)
	movl	%r9d, %ebx
	movl	464(%rsp), %r14d
	je	.L2176
	leal	-1(%r8), %eax
	cmpl	$3, %eax
	ja	.L2391
.L2108:
	xorl	%r9d, %r9d
	movl	%r14d, %r8d
	movl	%ebx, %edx
	movl	%ebp, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L2109
	movl	%ebp, %esi
	imull	%ebx, %esi
	movl	%esi, %ecx
	imull	%r14d, %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L2109
	testl	%r14d, %r14d
	jle	.L2174
	movl	440(%rsp), %eax
	leal	-2(%rbx), %ecx
	movl	$1, %edx
	leal	-1(%rbx), %r12d
	movl	%esi, 48(%rsp)
	movl	%r14d, 464(%rsp)
	movdqa	.LC2(%rip), %xmm15
	imull	%ebx, %eax
	cmpl	$-1, %ecx
	cmovge	%ebx, %edx
	movl	%edx, %ebx
	movl	%edx, 52(%rsp)
	subl	$16, %edx
	shrl	$4, %edx
	movl	%eax, %r14d
	movq	%r15, %rax
	leal	1(%rdx), %edi
	leal	-4(%rdx), %esi
	movq	%r13, %r15
	movl	464(%rsp), %r13d
	movl	%edi, 92(%rsp)
	sall	$4, %edi
	incl	%ecx
	setl	%cl
	cmpl	$14, %r12d
	movl	%esi, 124(%rsp)
	setbe	%r8b
	subl	$2, %edx
	movl	%edi, 60(%rsp)
	movl	%edx, %r11d
	movl	%edx, 120(%rsp)
	movl	%esi, %edx
	shrl	$2, %edx
	orl	%ecx, %r8d
	movq	%rdi, 96(%rsp)
	leal	4(,%rdx,4), %esi
	movl	%ebx, %edx
	movb	%r8b, 59(%rsp)
	subl	$17, %edx
	movl	%esi, 64(%rsp)
	movl	%r12d, %esi
	shrl	$4, %edx
	subl	%edi, %esi
	leal	-4(%rdx), %ebx
	movl	%esi, 104(%rsp)
	leaq	(%rdi,%rdi), %rsi
	salq	$2, %rdi
	movl	%ebx, 172(%rsp)
	movq	%rdi, 80(%rsp)
	movq	%rsi, 72(%rsp)
	leal	1(%rdx), %esi
	movl	%ebx, %edx
	movl	%esi, 148(%rsp)
	sall	$4, %esi
	cmpl	$15, %r12d
	setbe	%r8b
	shrl	$2, %edx
	movl	%esi, 108(%rsp)
	leal	4(,%rdx,4), %ebx
	orl	%ecx, %r8d
	movl	%r11d, %edx
	movl	440(%rsp), %ecx
	shrl	%edx
	movb	%r8b, 91(%rsp)
	movl	%ebx, 144(%rsp)
	movl	%r12d, %ebx
	subl	%esi, %ebx
	movl	%ebx, 168(%rsp)
	movl	%esi, %ebx
	leal	-10(%rbp,%rcx,8), %ebp
	leaq	(%rbx,%rbx), %rdi
	movq	%rbx, 112(%rsp)
	salq	$2, %rbx
	movq	%rbx, 160(%rsp)
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movq	%rdi, 152(%rsp)
	leal	2(%rdx,%rdx), %edi
	movl	%edi, 68(%rsp)
	xorl	%edi, %edi
	.p2align 4,,7
.L2175:
	movl	%esi, %ecx
	movl	%edi, %edx
	addq	%rax, %rcx
	addq	%r15, %rdx
	cmpl	$25, %ebp
	ja	.L2111
	leaq	.L2113(%rip), %r8
	movl	%ebp, %r9d
	movslq	(%r8,%r9,4), %r9
	addq	%r9, %r8
	jmp	*%r8
	.section .rdata,"dr"
	.align 4
.L2113:
	.long	.L2112-.L2113
	.long	.L2114-.L2113
	.long	.L2115-.L2113
	.long	.L2111-.L2113
	.long	.L2111-.L2113
	.long	.L2111-.L2113
	.long	.L2111-.L2113
	.long	.L2116-.L2113
	.long	.L2111-.L2113
	.long	.L2117-.L2113
	.long	.L2118-.L2113
	.long	.L2111-.L2113
	.long	.L2111-.L2113
	.long	.L2111-.L2113
	.long	.L2111-.L2113
	.long	.L2119-.L2113
	.long	.L2120-.L2113
	.long	.L2111-.L2113
	.long	.L2121-.L2113
	.long	.L2111-.L2113
	.long	.L2111-.L2113
	.long	.L2111-.L2113
	.long	.L2111-.L2113
	.long	.L2122-.L2113
	.long	.L2123-.L2113
	.long	.L2124-.L2113
	.text
	.p2align 4,,7
.L2124:
	testl	%r12d, %r12d
	js	.L2126
	movl	%r12d, %r8d
	.p2align 4,,7
.L2173:
	movzbl	(%rcx), %r9d
	decl	%r8d
	addq	$4, %rcx
	addq	$3, %rdx
	movb	%r9b, -3(%rdx)
	movzbl	-3(%rcx), %r9d
	movb	%r9b, -2(%rdx)
	movzbl	-2(%rcx), %r9d
	movb	%r9b, -1(%rdx)
	cmpl	$-1, %r8d
	jne	.L2173
	.p2align 4,,7
.L2126:
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	jne	.L2175
.L2392:
	movq	%r15, %r13
	movq	%rax, %r15
.L2174:
	movq	%r15, %rcx
	call	free
	movq	%r13, %rax
.L2107:
	movaps	192(%rsp), %xmm6
	movaps	208(%rsp), %xmm7
	movaps	224(%rsp), %xmm8
	movaps	240(%rsp), %xmm9
	movaps	256(%rsp), %xmm10
	movaps	272(%rsp), %xmm11
	movaps	288(%rsp), %xmm12
	movaps	304(%rsp), %xmm13
	movaps	320(%rsp), %xmm14
	movaps	336(%rsp), %xmm15
	addq	$360, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L2123:
	testl	%r12d, %r12d
	js	.L2126
	cmpb	$0, 59(%rsp)
	jne	.L2186
	cmpl	$-4, 120(%rsp)
	ja	.L2187
	movdqa	.LC55(%rip), %xmm7
	xorl	%r10d, %r10d
	movq	%rdx, %r9
	movq	%rcx, %r8
	movaps	%xmm7, 32(%rsp)
	movaps	%xmm15, 176(%rsp)
	movdqa	.LC56(%rip), %xmm7
	movdqa	%xmm7, %xmm6
	movaps	%xmm7, 128(%rsp)
	pxor	%xmm7, %xmm7
	movdqa	.LC57(%rip), %xmm8
.L2168:
	movdqa	%xmm15, %xmm1
	movdqa	%xmm15, %xmm5
	prefetcht0	304(%r8)
	movdqu	(%r8), %xmm2
	prefetcht0	368(%r8)
	prefetcht0	144(%r9)
	movdqa	%xmm6, %xmm13
	subq	$-128, %r8
	addq	$64, %r9
	movdqu	-112(%r8), %xmm3
	addl	$2, %r10d
	pand	%xmm2, %xmm1
	psrlw	$8, %xmm2
	pand	%xmm3, %xmm5
	movdqu	-96(%r8), %xmm0
	psrlw	$8, %xmm3
	packuswb	%xmm3, %xmm2
	movdqu	-80(%r8), %xmm4
	movdqa	%xmm15, %xmm3
	packuswb	%xmm5, %xmm1
	movdqa	%xmm15, %xmm5
	pand	%xmm0, %xmm3
	psrlw	$8, %xmm0
	movdqa	.LC55(%rip), %xmm9
	pand	%xmm4, %xmm5
	psrlw	$8, %xmm4
	packuswb	%xmm4, %xmm0
	movdqa	%xmm15, %xmm4
	packuswb	%xmm5, %xmm3
	movdqa	%xmm15, %xmm5
	pand	%xmm1, %xmm4
	psrlw	$8, %xmm1
	pand	%xmm3, %xmm5
	psrlw	$8, %xmm3
	packuswb	%xmm3, %xmm1
	movdqa	%xmm15, %xmm3
	packuswb	%xmm5, %xmm4
	movdqa	%xmm15, %xmm5
	pand	%xmm2, %xmm3
	psrlw	$8, %xmm2
	movdqa	%xmm1, %xmm10
	pand	%xmm0, %xmm5
	movdqa	%xmm4, %xmm12
	psrlw	$8, %xmm0
	packuswb	%xmm0, %xmm2
	punpcklbw	%xmm7, %xmm12
	packuswb	%xmm5, %xmm3
	movdqa	%xmm8, %xmm5
	punpcklbw	%xmm7, %xmm10
	pmullw	%xmm12, %xmm9
	movdqa	%xmm9, %xmm0
	pmulhw	.LC55(%rip), %xmm12
	movdqa	%xmm3, %xmm11
	punpckhwd	%xmm12, %xmm9
	punpcklwd	%xmm12, %xmm0
	pmullw	%xmm10, %xmm5
	pmulhw	%xmm8, %xmm10
	punpcklbw	%xmm7, %xmm11
	punpckhbw	%xmm7, %xmm4
	punpckhbw	%xmm7, %xmm3
	pmullw	%xmm11, %xmm13
	movdqa	%xmm13, %xmm14
	pmulhw	%xmm6, %xmm11
	punpckhwd	%xmm11, %xmm13
	punpcklwd	%xmm11, %xmm14
	movdqa	%xmm4, %xmm11
	punpckhbw	%xmm7, %xmm1
	paddd	%xmm13, %xmm9
	pmulhw	.LC55(%rip), %xmm11
	paddd	%xmm0, %xmm14
	movdqa	%xmm5, %xmm0
	punpckhwd	%xmm10, %xmm5
	punpcklwd	%xmm10, %xmm0
	movdqa	%xmm1, %xmm10
	paddd	%xmm9, %xmm5
	psrad	$8, %xmm5
	pmulhw	%xmm8, %xmm10
	paddd	%xmm14, %xmm0
	psrad	$8, %xmm0
	movdqa	%xmm0, %xmm9
	punpcklwd	%xmm5, %xmm0
	punpckhwd	%xmm5, %xmm9
	movdqa	%xmm0, %xmm5
	punpcklwd	%xmm9, %xmm0
	punpckhwd	%xmm9, %xmm5
	movdqa	%xmm6, %xmm9
	pmullw	%xmm3, %xmm9
	movdqa	%xmm9, %xmm13
	pmulhw	%xmm6, %xmm3
	punpcklwd	%xmm5, %xmm0
	movdqa	.LC55(%rip), %xmm5
	punpcklwd	%xmm3, %xmm13
	pmullw	%xmm4, %xmm5
	movdqa	%xmm5, %xmm4
	punpckhwd	%xmm3, %xmm9
	punpckhwd	%xmm11, %xmm5
	punpcklwd	%xmm11, %xmm4
	movdqa	%xmm9, %xmm3
	pand	%xmm15, %xmm0
	movdqa	.LC55(%rip), %xmm9
	paddd	%xmm4, %xmm13
	movdqa	%xmm8, %xmm4
	paddd	%xmm5, %xmm3
	movdqa	%xmm15, %xmm5
	pmullw	%xmm1, %xmm4
	movdqa	%xmm4, %xmm12
	punpckhwd	%xmm10, %xmm4
	movdqa	%xmm13, %xmm1
	punpcklwd	%xmm10, %xmm12
	movdqa	%xmm6, %xmm13
	paddd	%xmm4, %xmm3
	psrad	$8, %xmm3
	paddd	%xmm12, %xmm1
	psrad	$8, %xmm1
	movdqa	%xmm1, %xmm4
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm3, %xmm4
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm3
	movdqu	-16(%r8), %xmm4
	punpcklwd	%xmm3, %xmm1
	movdqu	-48(%r8), %xmm3
	pand	%xmm15, %xmm1
	pand	%xmm3, %xmm5
	psrlw	$8, %xmm3
	packuswb	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm2, %xmm0
	punpcklbw	%xmm2, %xmm1
	movdqu	-64(%r8), %xmm2
	movups	%xmm0, -48(%r9)
	movups	%xmm1, -64(%r9)
	movdqa	%xmm15, %xmm1
	pand	%xmm2, %xmm1
	psrlw	$8, %xmm2
	movdqu	-32(%r8), %xmm0
	packuswb	%xmm3, %xmm2
	movdqa	%xmm15, %xmm3
	packuswb	%xmm5, %xmm1
	movdqa	%xmm15, %xmm5
	pand	%xmm0, %xmm3
	psrlw	$8, %xmm0
	pand	%xmm4, %xmm5
	psrlw	$8, %xmm4
	packuswb	%xmm4, %xmm0
	movdqa	%xmm15, %xmm4
	packuswb	%xmm5, %xmm3
	movdqa	%xmm15, %xmm5
	pand	%xmm1, %xmm4
	psrlw	$8, %xmm1
	pand	%xmm3, %xmm5
	psrlw	$8, %xmm3
	packuswb	%xmm3, %xmm1
	movdqa	%xmm15, %xmm3
	packuswb	%xmm5, %xmm4
	movdqa	%xmm15, %xmm5
	pand	%xmm2, %xmm3
	psrlw	$8, %xmm2
	movdqa	%xmm1, %xmm10
	pand	%xmm0, %xmm5
	movdqa	%xmm4, %xmm12
	psrlw	$8, %xmm0
	packuswb	%xmm0, %xmm2
	punpcklbw	%xmm7, %xmm12
	packuswb	%xmm5, %xmm3
	movdqa	%xmm8, %xmm5
	punpcklbw	%xmm7, %xmm10
	pmullw	%xmm12, %xmm9
	movdqa	%xmm9, %xmm0
	pmulhw	.LC55(%rip), %xmm12
	movdqa	%xmm3, %xmm11
	punpckhwd	%xmm12, %xmm9
	punpcklwd	%xmm12, %xmm0
	pmullw	%xmm10, %xmm5
	pmulhw	%xmm8, %xmm10
	punpcklbw	%xmm7, %xmm11
	punpckhbw	%xmm7, %xmm4
	punpckhbw	%xmm7, %xmm3
	pmullw	%xmm11, %xmm13
	movdqa	%xmm13, %xmm14
	pmulhw	%xmm6, %xmm11
	punpckhwd	%xmm11, %xmm13
	punpcklwd	%xmm11, %xmm14
	punpckhbw	%xmm7, %xmm1
	paddd	%xmm13, %xmm9
	paddd	%xmm0, %xmm14
	movdqa	%xmm5, %xmm0
	punpckhwd	%xmm10, %xmm5
	movdqa	%xmm1, %xmm11
	punpcklwd	%xmm10, %xmm0
	movdqa	%xmm6, %xmm10
	pmulhw	%xmm8, %xmm11
	paddd	%xmm9, %xmm5
	psrad	$8, %xmm5
	paddd	%xmm14, %xmm0
	psrad	$8, %xmm0
	movdqa	%xmm0, %xmm9
	punpcklwd	%xmm5, %xmm0
	pmullw	%xmm3, %xmm10
	movdqa	%xmm10, %xmm13
	punpckhwd	%xmm5, %xmm9
	pmulhw	%xmm6, %xmm3
	punpcklwd	%xmm3, %xmm13
	movdqa	%xmm0, %xmm5
	punpckhwd	%xmm3, %xmm10
	punpcklwd	%xmm9, %xmm0
	punpckhwd	%xmm9, %xmm5
	movdqa	.LC55(%rip), %xmm9
	movdqa	%xmm10, %xmm3
	pmullw	%xmm4, %xmm9
	pmulhw	.LC55(%rip), %xmm4
	punpcklwd	%xmm5, %xmm0
	movdqa	%xmm9, %xmm5
	punpckhwd	%xmm4, %xmm9
	punpcklwd	%xmm4, %xmm5
	paddd	%xmm9, %xmm3
	pand	%xmm15, %xmm0
	paddd	%xmm5, %xmm13
	movdqa	%xmm8, %xmm5
	pmullw	%xmm1, %xmm5
	movdqa	%xmm5, %xmm12
	punpckhwd	%xmm11, %xmm5
	movdqa	%xmm13, %xmm1
	punpcklwd	%xmm11, %xmm12
	paddd	%xmm5, %xmm3
	psrad	$8, %xmm3
	paddd	%xmm12, %xmm1
	psrad	$8, %xmm1
	movdqa	%xmm1, %xmm4
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm3, %xmm4
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm3, %xmm1
	pand	%xmm15, %xmm1
	packuswb	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm2, %xmm0
	punpcklbw	%xmm2, %xmm1
	movups	%xmm0, -16(%r9)
	movups	%xmm1, -32(%r9)
	cmpl	%r10d, 68(%rsp)
	jne	.L2168
	movdqa	176(%rsp), %xmm2
.L2167:
	pxor	%xmm14, %xmm14
	movdqa	128(%rsp), %xmm13
.L2172:
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm6
	movdqu	(%r8), %xmm3
	addq	$32, %r9
	movdqa	%xmm13, %xmm12
	addq	$64, %r8
	movdqu	-48(%r8), %xmm4
	incl	%r10d
	pand	%xmm3, %xmm1
	psrlw	$8, %xmm3
	pand	%xmm4, %xmm6
	movdqu	-32(%r8), %xmm0
	psrlw	$8, %xmm4
	packuswb	%xmm4, %xmm3
	movdqu	-16(%r8), %xmm5
	movdqa	%xmm2, %xmm4
	packuswb	%xmm6, %xmm1
	movdqa	%xmm2, %xmm6
	pand	%xmm0, %xmm4
	psrlw	$8, %xmm0
	pand	%xmm5, %xmm6
	psrlw	$8, %xmm5
	packuswb	%xmm5, %xmm0
	movdqa	%xmm2, %xmm5
	packuswb	%xmm6, %xmm4
	movdqa	%xmm2, %xmm6
	pand	%xmm1, %xmm5
	psrlw	$8, %xmm1
	pand	%xmm4, %xmm6
	psrlw	$8, %xmm4
	packuswb	%xmm4, %xmm1
	movdqa	%xmm2, %xmm4
	packuswb	%xmm6, %xmm5
	movdqa	%xmm2, %xmm6
	pand	%xmm3, %xmm4
	psrlw	$8, %xmm3
	movdqa	%xmm1, %xmm9
	pand	%xmm0, %xmm6
	movdqa	%xmm5, %xmm11
	psrlw	$8, %xmm0
	packuswb	%xmm0, %xmm3
	punpcklbw	%xmm14, %xmm11
	packuswb	%xmm6, %xmm4
	movdqa	32(%rsp), %xmm6
	punpcklbw	%xmm14, %xmm9
	movdqa	%xmm6, %xmm7
	punpckhbw	%xmm14, %xmm5
	movdqa	%xmm4, %xmm10
	pmullw	%xmm11, %xmm7
	movdqa	%xmm7, %xmm0
	pmulhw	%xmm6, %xmm11
	punpcklbw	%xmm14, %xmm10
	punpcklwd	%xmm11, %xmm0
	punpckhwd	%xmm11, %xmm7
	pmullw	%xmm10, %xmm12
	pmulhw	%xmm13, %xmm10
	movdqa	%xmm12, %xmm13
	punpckhwd	%xmm10, %xmm12
	punpcklwd	%xmm10, %xmm13
	punpckhbw	%xmm14, %xmm4
	paddd	%xmm12, %xmm7
	punpckhbw	%xmm14, %xmm1
	paddd	%xmm0, %xmm13
	movdqa	%xmm8, %xmm0
	pmullw	%xmm9, %xmm0
	movdqa	%xmm0, %xmm6
	pmulhw	%xmm8, %xmm9
	punpcklwd	%xmm9, %xmm0
	movdqa	%xmm1, %xmm10
	punpckhwd	%xmm9, %xmm6
	pmulhw	%xmm8, %xmm10
	paddd	%xmm13, %xmm0
	psrad	$8, %xmm0
	movdqa	128(%rsp), %xmm13
	paddd	%xmm7, %xmm6
	movdqa	%xmm0, %xmm7
	psrad	$8, %xmm6
	punpcklwd	%xmm6, %xmm0
	movdqa	%xmm13, %xmm9
	punpckhwd	%xmm6, %xmm7
	movdqa	32(%rsp), %xmm6
	pmullw	%xmm4, %xmm9
	movdqa	%xmm0, %xmm11
	punpcklwd	%xmm7, %xmm0
	punpckhwd	%xmm7, %xmm11
	movdqa	%xmm6, %xmm7
	pmullw	%xmm5, %xmm7
	pmulhw	%xmm6, %xmm5
	movdqa	%xmm7, %xmm6
	punpcklwd	%xmm11, %xmm0
	movdqa	%xmm4, %xmm11
	movdqa	%xmm9, %xmm4
	punpcklwd	%xmm5, %xmm6
	pmulhw	%xmm13, %xmm11
	punpcklwd	%xmm11, %xmm4
	punpckhwd	%xmm5, %xmm7
	pand	%xmm2, %xmm0
	paddd	%xmm6, %xmm4
	movdqa	%xmm8, %xmm6
	pmullw	%xmm1, %xmm6
	movdqa	%xmm6, %xmm1
	punpckhwd	%xmm10, %xmm6
	punpcklwd	%xmm10, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm9, %xmm4
	psrad	$8, %xmm1
	movdqa	%xmm1, %xmm5
	punpckhwd	%xmm11, %xmm4
	paddd	%xmm7, %xmm4
	paddd	%xmm6, %xmm4
	psrad	$8, %xmm4
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm5
	movdqa	%xmm1, %xmm4
	punpcklwd	%xmm5, %xmm1
	punpckhwd	%xmm5, %xmm4
	punpcklwd	%xmm4, %xmm1
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm3, %xmm0
	punpcklbw	%xmm3, %xmm1
	movups	%xmm0, -16(%r9)
	movups	%xmm1, -32(%r9)
	cmpl	%r10d, 92(%rsp)
	ja	.L2172
	addq	80(%rsp), %rcx
	addq	72(%rsp), %rdx
	movl	60(%rsp), %r10d
	cmpl	%r10d, 52(%rsp)
	je	.L2126
	movl	104(%rsp), %r8d
	jmp	.L2166
	.p2align 4,,7
.L2122:
	testl	%r12d, %r12d
	js	.L2126
	cmpb	$0, 91(%rsp)
	jne	.L2185
	movdqa	.LC55(%rip), %xmm7
	pxor	%xmm10, %xmm10
	leaq	304(%rcx), %r8
	leaq	64(%rdx), %r9
	xorl	%r10d, %r10d
	movaps	%xmm7, 32(%rsp)
	movdqa	.LC56(%rip), %xmm7
	movdqa	.LC2(%rip), %xmm2
	movdqa	%xmm7, %xmm13
	movdqa	.LC57(%rip), %xmm8
.L2163:
	movdqa	%xmm2, %xmm3
	movdqa	%xmm2, %xmm1
	prefetcht0	(%r8)
	movdqu	-304(%r8), %xmm0
	prefetcht0	(%r9)
	incl	%r10d
	movdqa	%xmm2, %xmm4
	addq	$64, %r8
	movdqu	-352(%r8), %xmm7
	addq	$16, %r9
	pand	%xmm0, %xmm3
	pand	%xmm7, %xmm1
	movdqu	-336(%r8), %xmm5
	psrlw	$8, %xmm7
	movdqa	%xmm2, %xmm9
	movdqu	-320(%r8), %xmm6
	movdqa	%xmm13, %xmm12
	packuswb	%xmm1, %xmm3
	movdqa	%xmm2, %xmm1
	pand	%xmm6, %xmm4
	psrlw	$8, %xmm6
	pand	%xmm5, %xmm1
	psrlw	$8, %xmm5
	packuswb	%xmm6, %xmm5
	packuswb	%xmm4, %xmm1
	movdqa	%xmm2, %xmm4
	pand	%xmm2, %xmm5
	pand	%xmm1, %xmm9
	psrlw	$8, %xmm1
	pand	%xmm3, %xmm4
	psrlw	$8, %xmm3
	packuswb	%xmm1, %xmm3
	movdqa	%xmm0, %xmm1
	psrlw	$8, %xmm1
	packuswb	%xmm7, %xmm1
	packuswb	%xmm9, %xmm4
	movdqa	%xmm3, %xmm7
	punpckhbw	%xmm10, %xmm3
	pand	%xmm2, %xmm1
	movdqa	%xmm4, %xmm11
	punpcklbw	%xmm10, %xmm7
	punpckhbw	%xmm10, %xmm4
	packuswb	%xmm5, %xmm1
	movdqa	32(%rsp), %xmm5
	punpcklbw	%xmm10, %xmm11
	movdqa	%xmm5, %xmm6
	movdqa	%xmm1, %xmm9
	punpckhbw	%xmm10, %xmm1
	pmullw	%xmm11, %xmm6
	movdqa	%xmm6, %xmm0
	pmulhw	%xmm5, %xmm11
	punpcklbw	%xmm10, %xmm9
	punpcklwd	%xmm11, %xmm0
	punpckhwd	%xmm11, %xmm6
	movdqa	%xmm1, %xmm11
	pmullw	%xmm9, %xmm12
	movdqa	%xmm12, %xmm14
	pmulhw	%xmm13, %xmm9
	punpckhwd	%xmm9, %xmm12
	pmulhw	%xmm13, %xmm11
	punpcklwd	%xmm9, %xmm14
	movdqa	%xmm3, %xmm9
	paddd	%xmm12, %xmm6
	pmulhw	%xmm8, %xmm9
	paddd	%xmm0, %xmm14
	movdqa	%xmm8, %xmm0
	pmullw	%xmm7, %xmm0
	movdqa	%xmm0, %xmm5
	pmulhw	%xmm8, %xmm7
	punpcklwd	%xmm7, %xmm0
	punpckhwd	%xmm7, %xmm5
	paddd	%xmm14, %xmm0
	psrad	$8, %xmm0
	paddd	%xmm6, %xmm5
	movdqa	%xmm0, %xmm6
	psrad	$8, %xmm5
	punpcklwd	%xmm5, %xmm0
	punpckhwd	%xmm5, %xmm6
	movdqa	32(%rsp), %xmm5
	movdqa	%xmm0, %xmm7
	punpcklwd	%xmm6, %xmm0
	punpckhwd	%xmm6, %xmm7
	movdqa	%xmm5, %xmm6
	pmullw	%xmm4, %xmm6
	pmulhw	%xmm5, %xmm4
	movdqa	%xmm6, %xmm5
	punpcklwd	%xmm7, %xmm0
	movdqa	%xmm13, %xmm7
	punpcklwd	%xmm4, %xmm5
	pmullw	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	punpckhwd	%xmm11, %xmm7
	punpckhwd	%xmm4, %xmm6
	punpcklwd	%xmm11, %xmm1
	pand	%xmm2, %xmm0
	paddd	%xmm5, %xmm1
	movdqa	%xmm8, %xmm5
	pmullw	%xmm3, %xmm5
	movdqa	%xmm5, %xmm3
	punpckhwd	%xmm9, %xmm5
	punpcklwd	%xmm9, %xmm3
	paddd	%xmm3, %xmm1
	movdqa	%xmm7, %xmm3
	psrad	$8, %xmm1
	movdqa	%xmm1, %xmm4
	paddd	%xmm6, %xmm3
	paddd	%xmm5, %xmm3
	psrad	$8, %xmm3
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm3, %xmm4
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm3, %xmm1
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm0
	movups	%xmm0, -80(%r9)
	cmpl	%r10d, 148(%rsp)
	ja	.L2163
	addq	160(%rsp), %rcx
	addq	112(%rsp), %rdx
	movl	108(%rsp), %r10d
	cmpl	%r10d, 52(%rsp)
	je	.L2126
	movl	168(%rsp), %r10d
	jmp	.L2165
	.p2align 4,,7
.L2121:
	testl	%r12d, %r12d
	js	.L2126
	movl	%r12d, %r8d
	.p2align 4,,7
.L2158:
	movzbl	(%rcx), %r9d
	decl	%r8d
	movb	$-1, 3(%rdx)
	addq	$3, %rcx
	addq	$4, %rdx
	movb	%r9b, -4(%rdx)
	movzbl	-2(%rcx), %r9d
	movb	%r9b, -3(%rdx)
	movzbl	-1(%rcx), %r9d
	movb	%r9b, -2(%rdx)
	cmpl	$-1, %r8d
	jne	.L2158
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2120:
	testl	%r12d, %r12d
	js	.L2126
	movl	%r12d, %r10d
	.p2align 4,,7
.L2160:
	movzbl	(%rcx), %r8d
	movl	$29, %r11d
	decl	%r10d
	movb	$-1, 1(%rdx)
	addq	$3, %rcx
	addq	$2, %rdx
	movl	%r8d, %r9d
	movl	$77, %r8d
	imull	%r8d, %r9d
	movzbl	-2(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r9d, %r8d
	movzbl	-1(%rcx), %r9d
	imull	%r11d, %r9d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	movb	%r8b, -2(%rdx)
	cmpl	$-1, %r10d
	jne	.L2160
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2119:
	testl	%r12d, %r12d
	js	.L2126
	movl	%r12d, %r10d
	.p2align 4,,7
.L2159:
	movzbl	(%rcx), %r8d
	movl	$29, %r11d
	decl	%r10d
	addq	$3, %rcx
	incq	%rdx
	movl	%r8d, %r9d
	movl	$77, %r8d
	imull	%r8d, %r9d
	movzbl	-2(%rcx), %r8d
	imull	$150, %r8d, %r8d
	addl	%r9d, %r8d
	movzbl	-1(%rcx), %r9d
	imull	%r11d, %r9d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	movb	%r8b, -1(%rdx)
	cmpl	$-1, %r10d
	jne	.L2159
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2118:
	testl	%r12d, %r12d
	js	.L2126
	cmpb	$0, 59(%rsp)
	.p2align 4,,3
	jne	.L2183
	cmpl	$-4, 120(%rsp)
	ja	.L2184
	movl	68(%rsp), %r11d
	xorl	%r10d, %r10d
	movq	%rdx, %r8
	movdqa	.LC2(%rip), %xmm2
	movq	%rcx, %r9
.L2153:
	movdqa	%xmm2, %xmm0
	prefetcht0	272(%r9)
	addl	$2, %r10d
	movdqu	(%r9), %xmm1
	prefetcht0	560(%r8)
	prefetcht0	624(%r8)
	movdqa	%xmm2, %xmm4
	addq	$64, %r9
	subq	$-128, %r8
	movdqu	-48(%r9), %xmm3
	pand	%xmm1, %xmm0
	psrlw	$8, %xmm1
	pand	%xmm3, %xmm4
	psrlw	$8, %xmm3
	packuswb	%xmm3, %xmm1
	packuswb	%xmm4, %xmm0
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, %xmm5
	movdqa	%xmm0, %xmm3
	punpcklbw	%xmm0, %xmm4
	punpcklbw	%xmm1, %xmm5
	punpckhbw	%xmm0, %xmm3
	punpckhbw	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
	punpckhbw	%xmm5, %xmm4
	punpcklbw	%xmm5, %xmm1
	movups	%xmm4, -112(%r8)
	movdqa	%xmm2, %xmm4
	movups	%xmm1, -128(%r8)
	movdqa	%xmm3, %xmm1
	punpckhbw	%xmm0, %xmm3
	punpcklbw	%xmm0, %xmm1
	movdqa	%xmm2, %xmm0
	movups	%xmm3, -80(%r8)
	movups	%xmm1, -96(%r8)
	movdqu	-16(%r9), %xmm3
	movdqu	-32(%r9), %xmm1
	pand	%xmm3, %xmm4
	psrlw	$8, %xmm3
	pand	%xmm1, %xmm0
	psrlw	$8, %xmm1
	packuswb	%xmm3, %xmm1
	packuswb	%xmm4, %xmm0
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, %xmm5
	movdqa	%xmm0, %xmm3
	punpcklbw	%xmm0, %xmm4
	punpcklbw	%xmm1, %xmm5
	punpckhbw	%xmm0, %xmm3
	punpckhbw	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
	punpckhbw	%xmm5, %xmm4
	punpcklbw	%xmm5, %xmm1
	movups	%xmm4, -48(%r8)
	movups	%xmm1, -64(%r8)
	movdqa	%xmm3, %xmm1
	punpckhbw	%xmm0, %xmm3
	punpcklbw	%xmm0, %xmm1
	movups	%xmm3, -16(%r8)
	movups	%xmm1, -32(%r8)
	cmpl	%r10d, %r11d
	jne	.L2153
	movl	%r11d, %r10d
.L2157:
	movdqu	(%r9), %xmm1
	movdqa	%xmm2, %xmm0
	movdqa	%xmm2, %xmm4
	addq	$32, %r9
	movdqu	-16(%r9), %xmm3
	addq	$64, %r8
	pand	%xmm1, %xmm0
	psrlw	$8, %xmm1
	incl	%r10d
	pand	%xmm3, %xmm4
	psrlw	$8, %xmm3
	packuswb	%xmm3, %xmm1
	packuswb	%xmm4, %xmm0
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, %xmm5
	movdqa	%xmm0, %xmm3
	punpcklbw	%xmm0, %xmm4
	punpcklbw	%xmm1, %xmm5
	punpckhbw	%xmm0, %xmm3
	punpckhbw	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
	punpckhbw	%xmm5, %xmm4
	punpcklbw	%xmm5, %xmm1
	movups	%xmm4, -48(%r8)
	movups	%xmm1, -64(%r8)
	movdqa	%xmm3, %xmm1
	punpckhbw	%xmm0, %xmm3
	punpcklbw	%xmm0, %xmm1
	movups	%xmm3, -16(%r8)
	movups	%xmm1, -32(%r8)
	cmpl	%r10d, 92(%rsp)
	ja	.L2157
	addq	72(%rsp), %rcx
	addq	80(%rsp), %rdx
	movl	60(%rsp), %r10d
	cmpl	%r10d, 52(%rsp)
	je	.L2126
	movl	104(%rsp), %r8d
	jmp	.L2151
	.p2align 4,,7
.L2117:
	testl	%r12d, %r12d
	js	.L2126
	movl	%r12d, %r9d
	.p2align 4,,7
.L2150:
	movzbl	(%rcx), %r8d
	decl	%r9d
	addq	$2, %rcx
	addq	$3, %rdx
	movb	%r8b, -1(%rdx)
	movb	%r8b, -2(%rdx)
	movb	%r8b, -3(%rdx)
	cmpl	$-1, %r9d
	jne	.L2150
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2116:
	testl	%r12d, %r12d
	js	.L2126
	cmpb	$0, 91(%rsp)
	.p2align 4,,3
	jne	.L2181
	cmpl	$-6, 172(%rsp)
	ja	.L2182
	movl	144(%rsp), %r11d
	xorl	%r10d, %r10d
	movq	%rdx, %r9
	movdqa	.LC2(%rip), %xmm2
	movq	%rcx, %r8
.L2145:
	prefetcht0	656(%r8)
	prefetcht0	720(%r8)
	addl	$4, %r10d
	movdqu	(%r8), %xmm0
	prefetcht0	320(%r9)
	subq	$-128, %r8
	addq	$64, %r9
	movdqu	-112(%r8), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm0
	movdqu	-80(%r8), %xmm1
	movups	%xmm0, -64(%r9)
	pand	%xmm2, %xmm1
	movdqu	-96(%r8), %xmm0
	pand	%xmm2, %xmm0
	packuswb	%xmm1, %xmm0
	movdqu	-48(%r8), %xmm1
	movups	%xmm0, -48(%r9)
	pand	%xmm2, %xmm1
	movdqu	-64(%r8), %xmm0
	pand	%xmm2, %xmm0
	packuswb	%xmm1, %xmm0
	movdqu	-16(%r8), %xmm1
	movups	%xmm0, -32(%r9)
	pand	%xmm2, %xmm1
	movdqu	-32(%r8), %xmm0
	pand	%xmm2, %xmm0
	packuswb	%xmm1, %xmm0
	movups	%xmm0, -16(%r9)
	cmpl	%r10d, %r11d
	jne	.L2145
.L2144:
	xorl	%r10d, %r10d
.L2149:
	movdqu	(%r8,%r10,2), %xmm0
	incl	%r11d
	movdqu	16(%r8,%r10,2), %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm0
	movups	%xmm0, (%r9,%r10)
	addq	$16, %r10
	cmpl	148(%rsp), %r11d
	jb	.L2149
	addq	152(%rsp), %rcx
	addq	112(%rsp), %rdx
	movl	108(%rsp), %r10d
	cmpl	%r10d, 52(%rsp)
	je	.L2126
	movl	168(%rsp), %r8d
	jmp	.L2147
	.p2align 4,,7
.L2115:
	testl	%r12d, %r12d
	js	.L2126
	cmpb	$0, 59(%rsp)
	jne	.L2179
	cmpl	$-6, 124(%rsp)
	ja	.L2180
	pcmpeqd	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movq	%rdx, %r8
	movq	%rcx, %r9
.L2138:
	movdqu	(%r9), %xmm0
	prefetcht0	160(%r9)
	prefetcht0	688(%r8)
	prefetcht0	752(%r8)
	prefetcht0	816(%r8)
	prefetcht0	880(%r8)
	movdqa	%xmm0, %xmm3
	addq	$64, %r9
	movdqa	%xmm0, %xmm4
	addq	$256, %r8
	punpcklbw	%xmm0, %xmm3
	addl	$4, %r10d
	punpcklbw	%xmm1, %xmm4
	movdqa	%xmm0, %xmm2
	movdqa	%xmm3, %xmm5
	punpckhbw	%xmm0, %xmm2
	punpckhbw	%xmm4, %xmm3
	punpckhbw	%xmm1, %xmm0
	punpcklbw	%xmm4, %xmm5
	movups	%xmm3, -240(%r8)
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm2
	punpcklbw	%xmm0, %xmm3
	movdqu	-48(%r9), %xmm0
	movups	%xmm3, -224(%r8)
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, %xmm3
	punpcklbw	%xmm1, %xmm4
	punpcklbw	%xmm0, %xmm3
	movups	%xmm2, -208(%r8)
	movdqa	%xmm0, %xmm2
	movups	%xmm5, -256(%r8)
	punpckhbw	%xmm0, %xmm2
	movdqa	%xmm3, %xmm5
	punpckhbw	%xmm4, %xmm3
	punpckhbw	%xmm1, %xmm0
	punpcklbw	%xmm4, %xmm5
	movups	%xmm3, -176(%r8)
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm2
	punpcklbw	%xmm0, %xmm3
	movdqu	-32(%r9), %xmm0
	movups	%xmm3, -160(%r8)
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, %xmm3
	punpcklbw	%xmm1, %xmm4
	punpcklbw	%xmm0, %xmm3
	movups	%xmm2, -144(%r8)
	movdqa	%xmm0, %xmm2
	movups	%xmm5, -192(%r8)
	punpckhbw	%xmm0, %xmm2
	movdqa	%xmm3, %xmm5
	punpckhbw	%xmm4, %xmm3
	punpckhbw	%xmm1, %xmm0
	punpcklbw	%xmm4, %xmm5
	movups	%xmm3, -112(%r8)
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm2
	punpcklbw	%xmm0, %xmm3
	movdqu	-16(%r9), %xmm0
	movups	%xmm3, -96(%r8)
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, %xmm3
	punpcklbw	%xmm1, %xmm4
	punpcklbw	%xmm0, %xmm3
	movups	%xmm2, -80(%r8)
	movdqa	%xmm0, %xmm2
	movups	%xmm5, -128(%r8)
	punpckhbw	%xmm0, %xmm2
	movdqa	%xmm3, %xmm5
	punpckhbw	%xmm4, %xmm3
	punpckhbw	%xmm1, %xmm0
	punpcklbw	%xmm4, %xmm5
	movups	%xmm3, -48(%r8)
	movdqa	%xmm2, %xmm3
	punpckhbw	%xmm0, %xmm2
	punpcklbw	%xmm0, %xmm3
	movups	%xmm5, -64(%r8)
	movups	%xmm3, -32(%r8)
	movups	%xmm2, -16(%r8)
	cmpl	%r10d, 64(%rsp)
	jne	.L2138
.L2137:
	pcmpeqd	%xmm3, %xmm3
.L2142:
	movdqu	(%r9), %xmm0
	addq	$64, %r8
	addq	$16, %r9
	incl	%r10d
	movdqa	%xmm0, %xmm2
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm0, %xmm2
	punpcklbw	%xmm3, %xmm4
	punpckhbw	%xmm0, %xmm1
	movdqa	%xmm2, %xmm5
	punpckhbw	%xmm3, %xmm0
	punpckhbw	%xmm4, %xmm2
	punpcklbw	%xmm4, %xmm5
	movups	%xmm2, -48(%r8)
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm0, %xmm1
	punpcklbw	%xmm0, %xmm2
	movups	%xmm5, -64(%r8)
	movups	%xmm2, -32(%r8)
	movups	%xmm1, -16(%r8)
	cmpl	%r10d, 92(%rsp)
	ja	.L2142
	addq	96(%rsp), %rcx
	addq	80(%rsp), %rdx
	movl	60(%rsp), %r10d
	cmpl	%r10d, 52(%rsp)
	je	.L2126
	movl	104(%rsp), %r8d
	jmp	.L2136
	.p2align 4,,7
.L2114:
	testl	%r12d, %r12d
	js	.L2126
	movl	%r12d, %r9d
	.p2align 4,,7
.L2135:
	movzbl	(%rcx), %r8d
	decl	%r9d
	incq	%rcx
	addq	$3, %rdx
	movb	%r8b, -1(%rdx)
	movb	%r8b, -2(%rdx)
	movb	%r8b, -3(%rdx)
	cmpl	$-1, %r9d
	jne	.L2135
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2112:
	testl	%r12d, %r12d
	js	.L2126
	cmpb	$0, 59(%rsp)
	.p2align 4,,3
	jne	.L2177
	cmpl	$-6, 124(%rsp)
	ja	.L2178
	pcmpeqd	%xmm0, %xmm0
	movl	64(%rsp), %r11d
	xorl	%r10d, %r10d
	movq	%rdx, %r8
	movq	%rcx, %r9
.L2129:
	movdqu	(%r9), %xmm1
	prefetcht0	304(%r9)
	addl	$4, %r10d
	prefetcht0	624(%r8)
	prefetcht0	688(%r8)
	addq	$64, %r9
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm0, %xmm1
	subq	$-128, %r8
	punpcklbw	%xmm0, %xmm2
	movups	%xmm1, -112(%r8)
	movups	%xmm2, -128(%r8)
	movdqu	-48(%r9), %xmm1
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm0, %xmm1
	punpcklbw	%xmm0, %xmm2
	movups	%xmm1, -80(%r8)
	movups	%xmm2, -96(%r8)
	movdqu	-32(%r9), %xmm1
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm0, %xmm1
	punpcklbw	%xmm0, %xmm2
	movups	%xmm1, -48(%r8)
	movups	%xmm2, -64(%r8)
	movdqu	-16(%r9), %xmm1
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm0, %xmm1
	punpcklbw	%xmm0, %xmm2
	movups	%xmm1, -16(%r8)
	movups	%xmm2, -32(%r8)
	cmpl	%r10d, %r11d
	jne	.L2129
.L2128:
	pcmpeqd	%xmm1, %xmm1
	xorl	%r10d, %r10d
.L2134:
	movdqu	(%r9,%r10), %xmm0
	incl	%r11d
	movdqa	%xmm0, %xmm2
	punpckhbw	%xmm1, %xmm0
	punpcklbw	%xmm1, %xmm2
	movups	%xmm0, 16(%r8,%r10,2)
	movups	%xmm2, (%r8,%r10,2)
	addq	$16, %r10
	cmpl	%r11d, 92(%rsp)
	ja	.L2134
	addq	96(%rsp), %rcx
	addq	72(%rsp), %rdx
	movl	60(%rsp), %r10d
	cmpl	%r10d, 52(%rsp)
	je	.L2126
	movl	104(%rsp), %r8d
	jmp	.L2127
	.p2align 4,,7
.L2111:
	leaq	.LC3(%rip), %rdx
	leaq	.LC8(%rip), %rcx
	movl	$1506, %r8d
	incl	%ebx
	movq	%rax, 32(%rsp)
	addl	%r14d, %esi
	call	_assert
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	movq	32(%rsp), %rax
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2391:
	leaq	.LC3(%rip), %rdx
	leaq	.LC6(%rip), %rcx
	movl	$1477, %r8d
	call	_assert
	jmp	.L2108
	.p2align 4,,7
.L2186:
	movl	%r12d, %r8d
.L2166:
	movzbl	(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	1(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	2(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	testl	%r8d, %r8d
	movb	%r9b, (%rdx)
	movzbl	3(%rcx), %r9d
	movb	%r9b, 1(%rdx)
	je	.L2126
	movzbl	4(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	5(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	6(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$1, %r8d
	movb	%r9b, 2(%rdx)
	movzbl	7(%rcx), %r9d
	movb	%r9b, 3(%rdx)
	je	.L2126
	movzbl	8(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	9(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	10(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$2, %r8d
	movb	%r9b, 4(%rdx)
	movzbl	11(%rcx), %r9d
	movb	%r9b, 5(%rdx)
	je	.L2126
	movzbl	12(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	13(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	14(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$3, %r8d
	movb	%r9b, 6(%rdx)
	movzbl	15(%rcx), %r9d
	movb	%r9b, 7(%rdx)
	je	.L2126
	movzbl	16(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	17(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	18(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$4, %r8d
	movb	%r9b, 8(%rdx)
	movzbl	19(%rcx), %r9d
	movb	%r9b, 9(%rdx)
	je	.L2126
	movzbl	20(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	21(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	22(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$5, %r8d
	movb	%r9b, 10(%rdx)
	movzbl	23(%rcx), %r9d
	movb	%r9b, 11(%rdx)
	je	.L2126
	movzbl	24(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	25(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	26(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$6, %r8d
	movb	%r9b, 12(%rdx)
	movzbl	27(%rcx), %r9d
	movb	%r9b, 13(%rdx)
	je	.L2126
	movzbl	28(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	29(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	30(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$7, %r8d
	movb	%r9b, 14(%rdx)
	movzbl	31(%rcx), %r9d
	movb	%r9b, 15(%rdx)
	je	.L2126
	movzbl	32(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	33(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	34(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$8, %r8d
	movb	%r9b, 16(%rdx)
	movzbl	35(%rcx), %r9d
	movb	%r9b, 17(%rdx)
	je	.L2126
	movzbl	36(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	37(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	38(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$9, %r8d
	movb	%r9b, 18(%rdx)
	movzbl	39(%rcx), %r9d
	movb	%r9b, 19(%rdx)
	je	.L2126
	movzbl	40(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	41(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	42(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$10, %r8d
	movb	%r9b, 20(%rdx)
	movzbl	43(%rcx), %r9d
	movb	%r9b, 21(%rdx)
	je	.L2126
	movzbl	44(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	45(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	46(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$11, %r8d
	movb	%r9b, 22(%rdx)
	movzbl	47(%rcx), %r9d
	movb	%r9b, 23(%rdx)
	je	.L2126
	movzbl	48(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	49(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	50(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$12, %r8d
	movb	%r9b, 24(%rdx)
	movzbl	51(%rcx), %r9d
	movb	%r9b, 25(%rdx)
	je	.L2126
	movzbl	52(%rcx), %r10d
	movl	$77, %r9d
	movl	%r10d, %r11d
	movzbl	53(%rcx), %r10d
	imull	%r9d, %r11d
	imull	$150, %r10d, %r9d
	leal	(%r11,%r9), %r10d
	movzbl	54(%rcx), %r9d
	movl	$29, %r11d
	imull	%r11d, %r9d
	addl	%r10d, %r9d
	sarl	$8, %r9d
	cmpl	$13, %r8d
	movb	%r9b, 26(%rdx)
	movzbl	55(%rcx), %r9d
	movb	%r9b, 27(%rdx)
	je	.L2126
	movzbl	56(%rcx), %r9d
	movl	$77, %r8d
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	movl	%r9d, %r10d
	movzbl	57(%rcx), %r9d
	imull	%r8d, %r10d
	imull	$150, %r9d, %r8d
	leal	(%r10,%r8), %r9d
	movzbl	58(%rcx), %r8d
	movl	$29, %r10d
	imull	%r10d, %r8d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	cmpl	%ebx, %r13d
	movb	%r8b, 28(%rdx)
	movzbl	59(%rcx), %ecx
	movb	%cl, 29(%rdx)
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2177:
	movl	%r12d, %r8d
.L2127:
	movzbl	(%rcx), %r9d
	testl	%r8d, %r8d
	movb	$-1, 1(%rdx)
	movb	%r9b, (%rdx)
	je	.L2126
	movzbl	1(%rcx), %r9d
	cmpl	$1, %r8d
	movb	$-1, 3(%rdx)
	movb	%r9b, 2(%rdx)
	je	.L2126
	movzbl	2(%rcx), %r9d
	cmpl	$2, %r8d
	movb	$-1, 5(%rdx)
	movb	%r9b, 4(%rdx)
	je	.L2126
	movzbl	3(%rcx), %r9d
	cmpl	$3, %r8d
	movb	$-1, 7(%rdx)
	movb	%r9b, 6(%rdx)
	je	.L2126
	movzbl	4(%rcx), %r9d
	cmpl	$4, %r8d
	movb	$-1, 9(%rdx)
	movb	%r9b, 8(%rdx)
	je	.L2126
	movzbl	5(%rcx), %r9d
	cmpl	$5, %r8d
	movb	$-1, 11(%rdx)
	movb	%r9b, 10(%rdx)
	je	.L2126
	movzbl	6(%rcx), %r9d
	cmpl	$6, %r8d
	movb	$-1, 13(%rdx)
	movb	%r9b, 12(%rdx)
	je	.L2126
	movzbl	7(%rcx), %r9d
	cmpl	$7, %r8d
	movb	$-1, 15(%rdx)
	movb	%r9b, 14(%rdx)
	je	.L2126
	movzbl	8(%rcx), %r9d
	cmpl	$8, %r8d
	movb	$-1, 17(%rdx)
	movb	%r9b, 16(%rdx)
	je	.L2126
	movzbl	9(%rcx), %r9d
	cmpl	$9, %r8d
	movb	$-1, 19(%rdx)
	movb	%r9b, 18(%rdx)
	je	.L2126
	movzbl	10(%rcx), %r9d
	cmpl	$10, %r8d
	movb	$-1, 21(%rdx)
	movb	%r9b, 20(%rdx)
	je	.L2126
	movzbl	11(%rcx), %r9d
	cmpl	$11, %r8d
	movb	$-1, 23(%rdx)
	movb	%r9b, 22(%rdx)
	je	.L2126
	movzbl	12(%rcx), %r9d
	cmpl	$12, %r8d
	movb	$-1, 25(%rdx)
	movb	%r9b, 24(%rdx)
	je	.L2126
	movzbl	13(%rcx), %r9d
	cmpl	$13, %r8d
	movb	$-1, 27(%rdx)
	movb	%r9b, 26(%rdx)
	je	.L2126
	movzbl	14(%rcx), %ecx
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	movb	$-1, 29(%rdx)
	movb	%cl, 28(%rdx)
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2185:
	movl	%r12d, %r10d
	.p2align 4,,7
.L2165:
	movzbl	(%rcx), %r8d
	movl	$77, %r11d
	decl	%r10d
	addq	$4, %rcx
	incq	%rdx
	movl	%r8d, %r9d
	movzbl	-3(%rcx), %r8d
	imull	%r11d, %r9d
	movl	$29, %r11d
	imull	$150, %r8d, %r8d
	addl	%r9d, %r8d
	movzbl	-2(%rcx), %r9d
	imull	%r11d, %r9d
	addl	%r9d, %r8d
	sarl	$8, %r8d
	movb	%r8b, -1(%rdx)
	cmpl	$-1, %r10d
	jne	.L2165
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2183:
	movl	%r12d, %r8d
.L2151:
	movzbl	(%rcx), %r9d
	testl	%r8d, %r8d
	movb	%r9b, 2(%rdx)
	movb	%r9b, 1(%rdx)
	movb	%r9b, (%rdx)
	movzbl	1(%rcx), %r9d
	movb	%r9b, 3(%rdx)
	je	.L2126
	movzbl	2(%rcx), %r9d
	cmpl	$1, %r8d
	movb	%r9b, 6(%rdx)
	movb	%r9b, 5(%rdx)
	movb	%r9b, 4(%rdx)
	movzbl	3(%rcx), %r9d
	movb	%r9b, 7(%rdx)
	je	.L2126
	movzbl	4(%rcx), %r9d
	cmpl	$2, %r8d
	movb	%r9b, 10(%rdx)
	movb	%r9b, 9(%rdx)
	movb	%r9b, 8(%rdx)
	movzbl	5(%rcx), %r9d
	movb	%r9b, 11(%rdx)
	je	.L2126
	movzbl	6(%rcx), %r9d
	cmpl	$3, %r8d
	movb	%r9b, 14(%rdx)
	movb	%r9b, 13(%rdx)
	movb	%r9b, 12(%rdx)
	movzbl	7(%rcx), %r9d
	movb	%r9b, 15(%rdx)
	je	.L2126
	movzbl	8(%rcx), %r9d
	cmpl	$4, %r8d
	movb	%r9b, 18(%rdx)
	movb	%r9b, 17(%rdx)
	movb	%r9b, 16(%rdx)
	movzbl	9(%rcx), %r9d
	movb	%r9b, 19(%rdx)
	je	.L2126
	movzbl	10(%rcx), %r9d
	cmpl	$5, %r8d
	movb	%r9b, 22(%rdx)
	movb	%r9b, 21(%rdx)
	movb	%r9b, 20(%rdx)
	movzbl	11(%rcx), %r9d
	movb	%r9b, 23(%rdx)
	je	.L2126
	movzbl	12(%rcx), %r9d
	cmpl	$6, %r8d
	movb	%r9b, 26(%rdx)
	movb	%r9b, 25(%rdx)
	movb	%r9b, 24(%rdx)
	movzbl	13(%rcx), %r9d
	movb	%r9b, 27(%rdx)
	je	.L2126
	movzbl	14(%rcx), %r9d
	cmpl	$7, %r8d
	movb	%r9b, 30(%rdx)
	movb	%r9b, 29(%rdx)
	movb	%r9b, 28(%rdx)
	movzbl	15(%rcx), %r9d
	movb	%r9b, 31(%rdx)
	je	.L2126
	movzbl	16(%rcx), %r9d
	cmpl	$8, %r8d
	movb	%r9b, 34(%rdx)
	movb	%r9b, 33(%rdx)
	movb	%r9b, 32(%rdx)
	movzbl	17(%rcx), %r9d
	movb	%r9b, 35(%rdx)
	je	.L2126
	movzbl	18(%rcx), %r9d
	cmpl	$9, %r8d
	movb	%r9b, 38(%rdx)
	movb	%r9b, 37(%rdx)
	movb	%r9b, 36(%rdx)
	movzbl	19(%rcx), %r9d
	movb	%r9b, 39(%rdx)
	je	.L2126
	movzbl	20(%rcx), %r9d
	cmpl	$10, %r8d
	movb	%r9b, 42(%rdx)
	movb	%r9b, 41(%rdx)
	movb	%r9b, 40(%rdx)
	movzbl	21(%rcx), %r9d
	movb	%r9b, 43(%rdx)
	je	.L2126
	movzbl	22(%rcx), %r9d
	cmpl	$11, %r8d
	movb	%r9b, 46(%rdx)
	movb	%r9b, 45(%rdx)
	movb	%r9b, 44(%rdx)
	movzbl	23(%rcx), %r9d
	movb	%r9b, 47(%rdx)
	je	.L2126
	movzbl	24(%rcx), %r9d
	cmpl	$12, %r8d
	movb	%r9b, 50(%rdx)
	movb	%r9b, 49(%rdx)
	movb	%r9b, 48(%rdx)
	movzbl	25(%rcx), %r9d
	movb	%r9b, 51(%rdx)
	je	.L2126
	movzbl	26(%rcx), %r9d
	cmpl	$13, %r8d
	movb	%r9b, 54(%rdx)
	movb	%r9b, 53(%rdx)
	movb	%r9b, 52(%rdx)
	movzbl	27(%rcx), %r9d
	movb	%r9b, 55(%rdx)
	je	.L2126
	movzbl	28(%rcx), %r8d
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	movb	%r8b, 58(%rdx)
	movb	%r8b, 57(%rdx)
	movb	%r8b, 56(%rdx)
	movzbl	29(%rcx), %ecx
	movb	%cl, 59(%rdx)
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2181:
	movl	%r12d, %r8d
	.p2align 4,,7
.L2147:
	movzbl	(%rcx), %r9d
	decl	%r8d
	addq	$2, %rcx
	incq	%rdx
	movb	%r9b, -1(%rdx)
	cmpl	$-1, %r8d
	jne	.L2147
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2179:
	movl	%r12d, %r8d
.L2136:
	movzbl	(%rcx), %r9d
	testl	%r8d, %r8d
	movb	$-1, 3(%rdx)
	movb	%r9b, 2(%rdx)
	movb	%r9b, 1(%rdx)
	movb	%r9b, (%rdx)
	je	.L2126
	movzbl	1(%rcx), %r9d
	cmpl	$1, %r8d
	movb	$-1, 7(%rdx)
	movb	%r9b, 6(%rdx)
	movb	%r9b, 5(%rdx)
	movb	%r9b, 4(%rdx)
	je	.L2126
	movzbl	2(%rcx), %r9d
	cmpl	$2, %r8d
	movb	$-1, 11(%rdx)
	movb	%r9b, 10(%rdx)
	movb	%r9b, 9(%rdx)
	movb	%r9b, 8(%rdx)
	je	.L2126
	movzbl	3(%rcx), %r9d
	cmpl	$3, %r8d
	movb	$-1, 15(%rdx)
	movb	%r9b, 14(%rdx)
	movb	%r9b, 13(%rdx)
	movb	%r9b, 12(%rdx)
	je	.L2126
	movzbl	4(%rcx), %r9d
	cmpl	$4, %r8d
	movb	$-1, 19(%rdx)
	movb	%r9b, 18(%rdx)
	movb	%r9b, 17(%rdx)
	movb	%r9b, 16(%rdx)
	je	.L2126
	movzbl	5(%rcx), %r9d
	cmpl	$5, %r8d
	movb	$-1, 23(%rdx)
	movb	%r9b, 22(%rdx)
	movb	%r9b, 21(%rdx)
	movb	%r9b, 20(%rdx)
	je	.L2126
	movzbl	6(%rcx), %r9d
	cmpl	$6, %r8d
	movb	$-1, 27(%rdx)
	movb	%r9b, 26(%rdx)
	movb	%r9b, 25(%rdx)
	movb	%r9b, 24(%rdx)
	je	.L2126
	movzbl	7(%rcx), %r9d
	cmpl	$7, %r8d
	movb	$-1, 31(%rdx)
	movb	%r9b, 30(%rdx)
	movb	%r9b, 29(%rdx)
	movb	%r9b, 28(%rdx)
	je	.L2126
	movzbl	8(%rcx), %r9d
	cmpl	$8, %r8d
	movb	$-1, 35(%rdx)
	movb	%r9b, 34(%rdx)
	movb	%r9b, 33(%rdx)
	movb	%r9b, 32(%rdx)
	je	.L2126
	movzbl	9(%rcx), %r9d
	cmpl	$9, %r8d
	movb	$-1, 39(%rdx)
	movb	%r9b, 38(%rdx)
	movb	%r9b, 37(%rdx)
	movb	%r9b, 36(%rdx)
	je	.L2126
	movzbl	10(%rcx), %r9d
	cmpl	$10, %r8d
	movb	$-1, 43(%rdx)
	movb	%r9b, 42(%rdx)
	movb	%r9b, 41(%rdx)
	movb	%r9b, 40(%rdx)
	je	.L2126
	movzbl	11(%rcx), %r9d
	cmpl	$11, %r8d
	movb	$-1, 47(%rdx)
	movb	%r9b, 46(%rdx)
	movb	%r9b, 45(%rdx)
	movb	%r9b, 44(%rdx)
	je	.L2126
	movzbl	12(%rcx), %r9d
	cmpl	$12, %r8d
	movb	$-1, 51(%rdx)
	movb	%r9b, 50(%rdx)
	movb	%r9b, 49(%rdx)
	movb	%r9b, 48(%rdx)
	je	.L2126
	movzbl	13(%rcx), %r9d
	cmpl	$13, %r8d
	movb	$-1, 55(%rdx)
	movb	%r9b, 54(%rdx)
	movb	%r9b, 53(%rdx)
	movb	%r9b, 52(%rdx)
	je	.L2126
	movzbl	14(%rcx), %ecx
	incl	%ebx
	addl	%r14d, %esi
	addl	48(%rsp), %edi
	cmpl	%ebx, %r13d
	movb	$-1, 59(%rdx)
	movb	%cl, 58(%rdx)
	movb	%cl, 57(%rdx)
	movb	%cl, 56(%rdx)
	jne	.L2175
	jmp	.L2392
	.p2align 4,,7
.L2176:
	movq	%rcx, %rax
	jmp	.L2107
	.p2align 4,,7
.L2109:
	movq	%r15, %rcx
	.p2align 4,,5
	call	free
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2107
.L2178:
	movq	%rdx, %r8
	movq	%rcx, %r9
	xorl	%r11d, %r11d
	jmp	.L2128
.L2187:
	movdqa	.LC55(%rip), %xmm7
	movq	%rdx, %r9
	movq	%rcx, %r8
	xorl	%r10d, %r10d
	movaps	%xmm7, 32(%rsp)
	movdqa	.LC56(%rip), %xmm7
	movdqa	.LC2(%rip), %xmm2
	movaps	%xmm7, 128(%rsp)
	movdqa	.LC57(%rip), %xmm8
	jmp	.L2167
.L2180:
	movq	%rdx, %r8
	movq	%rcx, %r9
	xorl	%r10d, %r10d
	jmp	.L2137
.L2182:
	movq	%rdx, %r9
	movq	%rcx, %r8
	xorl	%r11d, %r11d
	movdqa	.LC2(%rip), %xmm2
	jmp	.L2144
.L2184:
	movq	%rdx, %r8
	movq	%rcx, %r9
	xorl	%r10d, %r10d
	movdqa	.LC2(%rip), %xmm2
	jmp	.L2157
	.seh_endproc
	.section .rdata,"dr"
.LC58:
	.ascii "bad png sig\0"
.LC59:
	.ascii "multiple IHDR\0"
.LC60:
	.ascii "bad IHDR len\0"
.LC61:
	.ascii "too large\0"
.LC62:
	.ascii "bad ctype\0"
.LC63:
	.ascii "bad comp method\0"
.LC64:
	.ascii "bad filter method\0"
.LC65:
	.ascii "bad interlace method\0"
.LC66:
	.ascii "0-pixel image\0"
.LC67:
	.ascii "first not IHDR\0"
.LC68:
	.ascii "invalid PLTE\0"
.LC69:
	.ascii "tRNS after IDAT\0"
.LC70:
	.ascii "tRNS with alpha\0"
.LC71:
	.ascii "bad tRNS len\0"
.LC72:
	.ascii "no PLTE\0"
.LC73:
	.ascii "1/2/4/8/16-bit only\0"
	.text
	.p2align 4,,15
	.def	_ZL20stbi__parse_png_fileP9stbi__pngii.constprop.109;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbi__parse_png_fileP9stbi__pngii.constprop.109
_ZL20stbi__parse_png_fileP9stbi__pngii.constprop.109:
.LFB7953:
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
	movq	(%rcx), %r15
	movq	%rcx, %rdi
	movq	$0, 16(%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 24(%rcx)
	movq	192(%r15), %rax
	movq	184(%r15), %rcx
	cmpq	%rcx, %rax
	ja	.L2394
	movl	48(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L2524
	.p2align 4,,7
.L2395:
	leaq	.LC58(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L2513:
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
	.p2align 4,,7
.L2524:
	leaq	56(%r15), %rbx
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	je	.L2396
	movzbl	56(%r15), %ecx
	cltq
	leaq	57(%r15), %rdx
	addq	%rbx, %rax
.L2399:
	movq	%rax, 192(%r15)
	movq	%rdx, 184(%r15)
	jmp	.L2398
	.p2align 4,,7
.L2394:
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%r15)
	movzbl	(%rcx), %ecx
.L2398:
	cmpb	$-119, %cl
	jne	.L2395
	cmpq	%rdx, %rax
	ja	.L2400
	movl	48(%r15), %ebp
	testl	%ebp, %ebp
	je	.L2395
	leaq	56(%r15), %rbx
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	je	.L2401
	movzbl	56(%r15), %edx
	cltq
	leaq	57(%r15), %rcx
	addq	%rbx, %rax
.L2404:
	movq	%rax, 192(%r15)
	movq	%rcx, 184(%r15)
	jmp	.L2403
	.p2align 4,,7
.L2400:
	leaq	1(%rdx), %rcx
	movq	%rcx, 184(%r15)
	movzbl	(%rdx), %edx
.L2403:
	cmpb	$80, %dl
	jne	.L2395
	cmpq	%rcx, %rax
	jbe	.L2525
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%r15)
	movzbl	(%rcx), %ecx
.L2408:
	cmpb	$78, %cl
	jne	.L2395
	cmpq	%rax, %rdx
	jnb	.L2526
	leaq	1(%rdx), %rcx
	movq	%rcx, 184(%r15)
	movzbl	(%rdx), %edx
.L2413:
	cmpb	$71, %dl
	jne	.L2395
	cmpq	%rcx, %rax
	jbe	.L2527
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%r15)
	movzbl	(%rcx), %ecx
.L2418:
	cmpb	$13, %cl
	jne	.L2395
	cmpq	%rdx, %rax
	jbe	.L2528
	leaq	1(%rdx), %rcx
	movq	%rcx, 184(%r15)
	movzbl	(%rdx), %edx
.L2423:
	cmpb	$10, %dl
	jne	.L2395
	cmpq	%rcx, %rax
	jbe	.L2529
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%r15)
	movzbl	(%rcx), %ecx
.L2428:
	cmpb	$26, %cl
	jne	.L2395
	cmpq	%rdx, %rax
	jbe	.L2430
	leaq	1(%rdx), %rax
	movq	%rax, 184(%r15)
	movzbl	(%rdx), %edx
.L2431:
	cmpb	$10, %dl
	jne	.L2395
	leaq	56(%r15), %rbx
	movl	$1, %r13d
	xorl	%esi, %esi
	xorl	%r14d, %r14d
.L2434:
	movq	%r15, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%r15, %rcx
	movl	%eax, %r12d
	sall	$16, %r12d
	call	_ZL13stbi__get16beP13stbi__context
	movq	%r15, %rcx
	addl	%eax, %r12d
	call	_ZL13stbi__get16beP13stbi__context
	movl	%eax, %ebp
	movq	%r15, %rcx
	sall	$16, %ebp
	call	_ZL13stbi__get16beP13stbi__context
	addl	%ebp, %eax
	cmpl	$1229278788, %eax
	je	.L2437
	jbe	.L2530
	cmpl	$1347179589, %eax
	je	.L2441
	cmpl	$1951551059, %eax
	je	.L2442
	cmpl	$1229472850, %eax
	je	.L2531
.L2436:
	testl	%r13d, %r13d
	jne	.L2480
	testl	$536870912, %eax
	je	.L2532
.L2490:
	movl	%r12d, %edx
	movq	%r15, %rcx
	call	_ZL10stbi__skipP13stbi__contexti
.L2444:
	movq	%r15, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%r15, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	jmp	.L2434
	.p2align 4,,7
.L2525:
	movl	48(%r15), %esi
	testl	%esi, %esi
	je	.L2395
	leaq	56(%r15), %rbx
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	je	.L2406
	movzbl	56(%r15), %ecx
	cltq
	leaq	57(%r15), %rdx
	addq	%rbx, %rax
.L2409:
	movq	%rax, 192(%r15)
	movq	%rdx, 184(%r15)
	jmp	.L2408
	.p2align 4,,7
.L2526:
	movl	48(%r15), %ebx
	testl	%ebx, %ebx
	je	.L2395
	leaq	56(%r15), %rbx
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	jne	.L2533
	leaq	57(%r15), %rax
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	xorl	%edx, %edx
	movq	%rax, %rcx
.L2414:
	movq	%rax, 192(%r15)
	movq	%rcx, 184(%r15)
	jmp	.L2413
	.p2align 4,,7
.L2527:
	movl	48(%r15), %r11d
	testl	%r11d, %r11d
	je	.L2395
	leaq	56(%r15), %rbx
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	jne	.L2534
	leaq	57(%r15), %rax
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
.L2419:
	movq	%rax, 192(%r15)
	movq	%rdx, 184(%r15)
	jmp	.L2418
	.p2align 4,,7
.L2528:
	movl	48(%r15), %r10d
	testl	%r10d, %r10d
	je	.L2395
	leaq	56(%r15), %rbx
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	jne	.L2535
	leaq	57(%r15), %rax
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	xorl	%edx, %edx
	movq	%rax, %rcx
.L2424:
	movq	%rax, 192(%r15)
	movq	%rcx, 184(%r15)
	jmp	.L2423
	.p2align 4,,7
.L2530:
	cmpl	$1130840649, %eax
	je	.L2490
	cmpl	$1229209940, %eax
	jne	.L2436
	testl	%r13d, %r13d
	jne	.L2480
	testb	%r14b, %r14b
	je	.L2489
	testl	%esi, %esi
	.p2align 4,,3
	je	.L2536
.L2489:
	movl	%r14d, 8(%r15)
	movl	$1, %eax
	jmp	.L2513
	.p2align 4,,7
.L2529:
	movl	48(%r15), %r9d
	testl	%r9d, %r9d
	je	.L2395
	leaq	56(%r15), %rbx
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	jne	.L2537
	leaq	57(%r15), %rax
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
.L2429:
	movq	%rax, 192(%r15)
	movq	%rdx, 184(%r15)
	jmp	.L2428
.L2430:
	movl	48(%r15), %r8d
	testl	%r8d, %r8d
	je	.L2395
	leaq	56(%r15), %rbx
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	jne	.L2432
	leaq	57(%r15), %rax
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	xorl	%edx, %edx
	movq	%rax, %rcx
.L2433:
	movq	%rax, 192(%r15)
	movq	%rcx, 184(%r15)
	jmp	.L2431
.L2396:
	leaq	57(%r15), %rax
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
	jmp	.L2399
.L2531:
	testl	%r13d, %r13d
	je	.L2538
	cmpl	$13, %r12d
	jne	.L2539
	movq	%r15, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	cmpl	$16777216, %eax
	movl	%eax, (%r15)
	ja	.L2448
	movq	%r15, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	cmpl	$16777216, %eax
	movl	%eax, 4(%r15)
	ja	.L2448
	movq	%r15, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	cmpb	$16, %al
	movl	%edx, 32(%rdi)
	jbe	.L2540
.L2449:
	leaq	.LC73(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
	.p2align 4,,7
.L2401:
	leaq	57(%r15), %rax
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	xorl	%edx, %edx
	movq	%rax, %rcx
	jmp	.L2404
.L2406:
	leaq	57(%r15), %rax
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
	jmp	.L2409
.L2533:
	cltq
	leaq	57(%r15), %rcx
	movzbl	56(%r15), %edx
	addq	%rbx, %rax
	jmp	.L2414
	.p2align 4,,7
.L2442:
	testl	%r13d, %r13d
	jne	.L2480
	cmpq	$0, 8(%rdi)
	jne	.L2541
	testb	%r14b, %r14b
	je	.L2482
	movl	$4, 8(%r15)
	movl	$1, %eax
	jmp	.L2513
	.p2align 4,,7
.L2441:
	testl	%r13d, %r13d
	jne	.L2480
	cmpl	$768, %r12d
	ja	.L2464
	movl	$-1431655765, %eax
	mull	%r12d
	movl	%edx, %esi
	shrl	%esi
	leal	(%rsi,%rsi,2), %eax
	cmpl	%r12d, %eax
	jne	.L2464
	testl	%esi, %esi
	je	.L2444
	xorl	%ebp, %ebp
	jmp	.L2479
	.p2align 4,,7
.L2465:
	movl	48(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L2542
.L2467:
	incl	%ebp
	cmpl	%ebp, %esi
	je	.L2444
.L2479:
	movq	184(%r15), %rdx
	movq	192(%r15), %rax
	cmpq	%rax, %rdx
	jnb	.L2465
	incq	%rdx
	cmpq	%rdx, %rax
	movq	%rdx, 184(%r15)
	jbe	.L2543
.L2470:
	incq	%rdx
	cmpq	%rdx, %rax
	movq	%rdx, 184(%r15)
	jbe	.L2544
.L2475:
	incq	%rdx
	movq	%rdx, 184(%r15)
	jmp	.L2467
	.p2align 4,,7
.L2542:
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	jne	.L2468
	leaq	57(%r15), %rax
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	movq	%rax, %rdx
.L2469:
	cmpq	%rdx, %rax
	movq	%rax, 192(%r15)
	movq	%rdx, 184(%r15)
	ja	.L2470
.L2543:
	movl	48(%r15), %edx
	testl	%edx, %edx
	je	.L2467
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	jne	.L2473
	leaq	57(%r15), %rax
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	movq	%rax, %rdx
.L2474:
	cmpq	%rdx, %rax
	movq	%rax, 192(%r15)
	movq	%rdx, 184(%r15)
	ja	.L2475
.L2544:
	movl	48(%r15), %eax
	testl	%eax, %eax
	je	.L2467
	movq	40(%r15), %rcx
	movl	52(%r15), %r8d
	movq	%rbx, %rdx
	call	*16(%r15)
	testl	%eax, %eax
	jne	.L2477
	leaq	57(%r15), %rax
	movl	$0, 48(%r15)
	movb	$0, 56(%r15)
	movq	%rax, %rdx
.L2478:
	movq	%rax, 192(%r15)
	movq	%rdx, 184(%r15)
	jmp	.L2467
	.p2align 4,,7
.L2468:
	cltq
	leaq	57(%r15), %rdx
	addq	%rbx, %rax
	jmp	.L2469
	.p2align 4,,7
.L2477:
	cltq
	leaq	57(%r15), %rdx
	addq	%rbx, %rax
	jmp	.L2478
	.p2align 4,,7
.L2473:
	cltq
	leaq	57(%r15), %rdx
	addq	%rbx, %rax
	jmp	.L2474
	.p2align 4,,7
.L2437:
	testl	%r13d, %r13d
	je	.L2461
.L2480:
	leaq	.LC67(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2540:
	movl	$65814, %ecx
	btq	%rax, %rcx
	jnc	.L2449
	movq	%r15, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	cmpl	$6, %eax
	movl	%eax, %ebp
	jg	.L2452
	cmpl	$3, %eax
	je	.L2545
	testb	$1, %bpl
	jne	.L2452
.L2453:
	movq	%r15, %rcx
	call	_ZL10stbi__get8P13stbi__context
	testb	%al, %al
	jne	.L2546
	movq	%r15, %rcx
	call	_ZL10stbi__get8P13stbi__context
	testb	%al, %al
	jne	.L2547
	movq	%r15, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	decl	%eax
	jg	.L2548
	movl	(%r15), %r8d
	testl	%r8d, %r8d
	je	.L2457
	movl	4(%r15), %ecx
	testl	%ecx, %ecx
	je	.L2457
	testb	%r14b, %r14b
	jne	.L2459
	movl	%ebp, %eax
	andl	$2, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	shrb	$2, %bpl
	xorl	%edx, %edx
	andl	$-2, %eax
	andl	$1, %ebp
	leal	3(%rax,%rbp), %r10d
	movl	$1073741824, %eax
	divl	%r8d
	xorl	%edx, %edx
	movl	%r10d, 8(%r15)
	divl	%r10d
	cmpl	%eax, %ecx
	ja	.L2448
.L2461:
	movl	$1, %eax
	jmp	.L2513
.L2534:
	cltq
	leaq	57(%r15), %rdx
	movzbl	56(%r15), %ecx
	addq	%rbx, %rax
	jmp	.L2419
.L2535:
	cltq
	leaq	57(%r15), %rcx
	movzbl	56(%r15), %edx
	addq	%rbx, %rax
	jmp	.L2424
.L2537:
	cltq
	leaq	57(%r15), %rdx
	movzbl	56(%r15), %ecx
	addq	%rbx, %rax
	jmp	.L2429
.L2482:
	movl	8(%r15), %edx
	movl	%edx, %eax
	andl	$1, %eax
	je	.L2549
	leal	(%rdx,%rdx), %eax
	cmpl	%r12d, %eax
	jne	.L2550
	cmpl	$16, 32(%rdi)
	je	.L2485
	xorl	%ebp, %ebp
	testl	%edx, %edx
	jle	.L2444
.L2488:
	movq	%r15, %rcx
	incl	%ebp
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	%ebp, 8(%r15)
	jle	.L2444
	movq	%r15, %rcx
	incl	%ebp
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	%ebp, 8(%r15)
	jg	.L2488
	jmp	.L2444
.L2432:
	cltq
	leaq	57(%r15), %rcx
	movzbl	56(%r15), %edx
	addq	%rbx, %rax
	jmp	.L2433
.L2459:
	xorl	%edx, %edx
	movl	$268435456, %eax
	movl	$1, 8(%r15)
	divl	%r8d
	cmpl	%eax, %ecx
	ja	.L2448
	xorl	%r13d, %r13d
	jmp	.L2444
.L2532:
	movl	%eax, %edx
	movb	%al, 3+_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	shrl	$24, %edx
	movb	%dl, _ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	movl	%eax, %edx
	shrl	$16, %edx
	movb	%dl, 1+_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	movl	%eax, %edx
	leaq	_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip), %rax
	shrl	$8, %edx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movb	%dl, 2+_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	xorl	%eax, %eax
	jmp	.L2513
	.p2align 4,,7
.L2545:
	cmpl	$16, 32(%rdi)
	je	.L2452
	movl	$3, %r14d
	jmp	.L2453
.L2485:
	testl	%edx, %edx
	jle	.L2444
	xorl	%ebp, %ebp
.L2487:
	movq	%r15, %rcx
	incl	%ebp
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	%ebp, 8(%r15)
	jg	.L2487
	jmp	.L2444
.L2448:
	leaq	.LC61(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2452:
	leaq	.LC62(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2464:
	leaq	.LC68(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2457:
	leaq	.LC66(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2536:
	leaq	.LC72(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2546:
	leaq	.LC63(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2548:
	leaq	.LC65(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2547:
	leaq	.LC64(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2541:
	leaq	.LC69(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2539:
	leaq	.LC60(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2538:
	leaq	.LC59(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
.L2549:
	leaq	.LC70(%rip), %rdi
	movq	%rdi, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L2513
.L2550:
	leaq	.LC71(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2513
	.seh_endproc
	.section .rdata,"dr"
.LC74:
	.ascii "expected marker\0"
.LC75:
	.ascii "bad DRI len\0"
.LC76:
	.ascii "bad DQT type\0"
.LC77:
	.ascii "bad DQT table\0"
.LC78:
	.ascii "bad DHT header\0"
.LC79:
	.ascii "bad COM len\0"
.LC80:
	.ascii "bad APP len\0"
.LC81:
	.ascii "unknown marker\0"
	.text
	.p2align 4,,15
	.def	_ZL20stbi__process_markerP10stbi__jpegi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbi__process_markerP10stbi__jpegi
_ZL20stbi__process_markerP10stbi__jpegi:
.LFB639:
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
	subq	$152, %rsp
	.seh_stackalloc	152
	.seh_endprologue
	cmpl	$219, %edx
	movq	%rcx, %rbx
	je	.L2553
	jle	.L2674
	cmpl	$221, %edx
	je	.L2556
	cmpl	$255, %edx
	jne	.L2552
	leaq	.LC74(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L2558:
	addq	$152, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L2556:
	movq	(%rcx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$4, %eax
	je	.L2559
	leaq	.LC75(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2558
.L2674:
	cmpl	$196, %edx
	jne	.L2552
	movq	(%rcx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	leal	-2(%rax), %esi
	testl	%esi, %esi
	jle	.L2581
	leaq	80(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	6728(%rbx), %rax
	movq	%rax, 64(%rsp)
	leaq	8(%rbx), %rax
	movq	%rax, 72(%rsp)
	.p2align 4,,7
.L2598:
	movq	(%rbx), %r12
	movq	184(%r12), %rax
	movq	192(%r12), %rdx
	cmpq	%rdx, %rax
	jb	.L2675
	movl	48(%r12), %ecx
	testl	%ecx, %ecx
	jne	.L2676
	movq	$0, 32(%rsp)
	movl	$0, 56(%rsp)
	xorl	%r15d, %r15d
.L2584:
	movq	40(%rsp), %r13
	leaq	144(%rsp), %r14
	xorl	%edi, %edi
	jmp	.L2588
	.p2align 4,,7
.L2590:
	movl	48(%r12), %eax
	testl	%eax, %eax
	jne	.L2677
.L2591:
	movl	%eax, 0(%r13)
	addq	$4, %r13
	addl	%eax, %edi
	cmpq	%r14, %r13
	je	.L2678
.L2594:
	movq	(%rbx), %r12
	movq	184(%r12), %rax
	movq	192(%r12), %rdx
.L2588:
	cmpq	%rax, %rdx
	jbe	.L2590
	leaq	1(%rax), %rdx
	addq	$4, %r13
	movq	%rdx, 184(%r12)
	movzbl	(%rax), %eax
	movl	%eax, -4(%r13)
	addl	%eax, %edi
	cmpq	%r14, %r13
	jne	.L2594
.L2678:
	leal	-17(%rsi), %eax
	testl	%r15d, %r15d
	movl	%eax, 52(%rsp)
	jne	.L2595
	movq	72(%rsp), %rcx
	addq	32(%rsp), %rcx
	movq	40(%rsp), %rdx
	call	_ZL19stbi__build_huffmanP13stbi__huffmanPi
	testl	%eax, %eax
	je	.L2673
	movslq	56(%rsp), %rax
	movq	%rax, 56(%rsp)
	imulq	$1680, %rax, %rax
	testl	%edi, %edi
	leaq	1032(%rbx,%rax), %rsi
	je	.L2605
.L2597:
	xorl	%r12d, %r12d
	jmp	.L2604
	.p2align 4,,7
.L2600:
	movl	48(%rbp), %eax
	xorl	%r13d, %r13d
	testl	%eax, %eax
	jne	.L2679
.L2601:
	movb	%r13b, (%rsi,%r12)
	incq	%r12
	cmpl	%r12d, %edi
	jle	.L2680
.L2604:
	movq	(%rbx), %rbp
	movq	184(%rbp), %rax
	cmpq	192(%rbp), %rax
	jnb	.L2600
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbp)
	movzbl	(%rax), %r13d
	movb	%r13b, (%rsi,%r12)
	incq	%r12
	cmpl	%r12d, %edi
	jg	.L2604
.L2680:
	testl	%r15d, %r15d
	je	.L2605
	movq	32(%rsp), %r11
	addq	64(%rsp), %r11
.L2599:
	movq	56(%rsp), %r14
	xorl	%edx, %edx
	movl	$1, %r13d
	movl	$-1, %r15d
	salq	$10, %r14
	leaq	13960(%rbx,%r14), %r12
	movl	$9, %r14d
	.p2align 4,,7
.L2608:
	movzbl	(%r11,%rdx), %eax
	movl	%edx, %r8d
	movw	$0, (%r12,%rdx,2)
	cmpb	$-1, %al
	je	.L2606
	movzbl	1024(%r11,%rax), %r9d
	movl	%r9d, %r10d
	andl	$15, %r10d
	je	.L2606
	movzbl	1280(%r11,%rax), %ecx
	movzbl	%r10b, %esi
	movl	%ecx, %eax
	addl	%esi, %ecx
	cmpl	$9, %ecx
	jg	.L2606
	movl	%eax, %ecx
	sall	%cl, %r8d
	movl	%r14d, %ecx
	subl	%esi, %ecx
	andl	$511, %r8d
	sarl	%cl, %r8d
	leal	-1(%rsi), %ecx
	movl	%r13d, %esi
	sall	%cl, %esi
	cmpl	%esi, %r8d
	jge	.L2607
	movl	%r15d, %esi
	movl	%r10d, %ecx
	sall	%cl, %esi
	leal	1(%r8,%rsi), %r8d
.L2607:
	leal	128(%r8), %ecx
	cmpl	$255, %ecx
	ja	.L2606
	movzbl	%r10b, %r10d
	andw	$240, %r9w
	sall	$8, %r8d
	addl	%r10d, %eax
	addl	%eax, %r9d
	addl	%r8d, %r9d
	movw	%r9w, (%r12,%rdx,2)
	.p2align 4,,7
.L2606:
	incq	%rdx
	cmpq	$512, %rdx
	jne	.L2608
.L2605:
	movl	52(%rsp), %esi
	subl	%edi, %esi
	testl	%esi, %esi
	jg	.L2598
.L2581:
	xorl	%eax, %eax
	testl	%esi, %esi
	sete	%al
	jmp	.L2558
	.p2align 4,,7
.L2677:
	leaq	56(%r12), %rbp
	movq	40(%r12), %rcx
	movl	52(%r12), %r8d
	movq	%rbp, %rdx
	call	*16(%r12)
	testl	%eax, %eax
	jne	.L2592
	leaq	57(%r12), %rbp
	movl	$0, 48(%r12)
	movb	$0, 56(%r12)
	movq	%rbp, %rdx
.L2593:
	movq	%rbp, 192(%r12)
	movq	%rdx, 184(%r12)
	jmp	.L2591
	.p2align 4,,7
.L2592:
	cltq
	leaq	57(%r12), %rdx
	addq	%rax, %rbp
	movzbl	56(%r12), %eax
	jmp	.L2593
	.p2align 4,,7
.L2679:
	leaq	56(%rbp), %r14
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%r14, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	jne	.L2602
	leaq	57(%rbp), %rax
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	movq	%rax, %rdx
.L2603:
	movq	%rax, 192(%rbp)
	movq	%rdx, 184(%rbp)
	jmp	.L2601
	.p2align 4,,7
.L2602:
	cltq
	leaq	57(%rbp), %rdx
	movzbl	56(%rbp), %r13d
	addq	%r14, %rax
	jmp	.L2603
	.p2align 4,,7
.L2595:
	movq	64(%rsp), %rbp
	addq	32(%rsp), %rbp
	movq	40(%rsp), %rdx
	movq	%rbp, %rcx
	call	_ZL19stbi__build_huffmanP13stbi__huffmanPi
	testl	%eax, %eax
	je	.L2673
	movslq	56(%rsp), %rax
	movq	%rax, 56(%rsp)
	imulq	$1680, %rax, %rax
	testl	%edi, %edi
	leaq	7752(%rbx,%rax), %rsi
	jne	.L2597
	movq	%rbp, %r11
	jmp	.L2599
.L2675:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%r12)
	movzbl	(%rax), %r15d
	movl	%r15d, %eax
	sarl	$4, %r15d
	andl	$15, %eax
	cmpl	$1, %r15d
	movzbl	%al, %r14d
	setg	%cl
	cmpl	$3, %r14d
	movl	%r14d, 56(%rsp)
	setg	%dl
	orl	%ecx, %edx
.L2583:
	testb	%dl, %dl
	jne	.L2587
	movzbl	%al, %eax
	movq	(%rbx), %r12
	imulq	$1680, %rax, %rax
	movq	192(%r12), %rdx
	movq	%rax, 32(%rsp)
	movq	184(%r12), %rax
	jmp	.L2584
.L2676:
	leaq	56(%r12), %rdi
	movq	40(%r12), %rcx
	movl	52(%r12), %r8d
	movq	%rdi, %rdx
	call	*16(%r12)
	testl	%eax, %eax
	jne	.L2585
	leaq	57(%r12), %rcx
	movl	$0, 48(%r12)
	movb	$0, 56(%r12)
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	movq	%rcx, %r8
.L2586:
	movq	%rcx, 192(%r12)
	movq	%r8, 184(%r12)
	movl	%r14d, 56(%rsp)
	jmp	.L2583
.L2585:
	movzbl	56(%r12), %r15d
	cltq
	leaq	57(%r12), %r8
	leaq	(%rdi,%rax), %rcx
	movl	%r15d, %eax
	sarl	$4, %r15d
	andl	$15, %eax
	cmpl	$1, %r15d
	movzbl	%al, %r14d
	setg	%r9b
	cmpl	$3, %r14d
	setg	%dl
	orl	%r9d, %edx
	jmp	.L2586
.L2552:
	leal	-224(%rdx), %eax
	cmpl	$15, %eax
	jbe	.L2627
	cmpl	$254, %edx
	je	.L2627
	leaq	.LC81(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L2673:
	xorl	%eax, %eax
	jmp	.L2558
.L2553:
	movq	(%rcx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	subl	$2, %eax
	testl	%eax, %eax
	movl	%eax, 40(%rsp)
	jle	.L2560
	leaq	64+_ZL19stbi__jpeg_dezigzag(%rip), %r13
	.p2align 4,,7
.L2580:
	movq	(%rbx), %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %r12d
	andl	$15, %eax
	sarl	$4, %r12d
	movzbl	%al, %edx
	cmpl	$1, %r12d
	jg	.L2681
	cmpb	$3, %al
	ja	.L2562
	movslq	%edx, %r9
	leaq	_ZL19stbi__jpeg_dezigzag(%rip), %rdi
	salq	$6, %r9
	movq	%r9, %r14
	jmp	.L2563
	.p2align 4,,7
.L2685:
	movq	(%rbx), %rsi
	movq	184(%rsi), %rcx
	movq	192(%rsi), %rax
	cmpq	%rax, %rcx
	jb	.L2682
	movl	48(%rsi), %r10d
	xorl	%r15d, %r15d
	testl	%r10d, %r10d
	jne	.L2683
.L2567:
	addl	%r10d, %r15d
.L2574:
	leaq	6720(%rbp,%r14), %rax
	incq	%rdi
	cmpq	%rdi, %r13
	movw	%r15w, 8(%rbx,%rax,2)
	je	.L2684
.L2563:
	testl	%r12d, %r12d
	movzbl	(%rdi), %ebp
	jne	.L2685
	movq	(%rbx), %r10
	movq	184(%r10), %rax
	cmpq	192(%r10), %rax
	jb	.L2686
	movl	48(%r10), %r9d
	xorl	%r15d, %r15d
	testl	%r9d, %r9d
	je	.L2574
	leaq	56(%r10), %rsi
	movq	40(%r10), %rcx
	movl	52(%r10), %r8d
	movq	%r10, 32(%rsp)
	movq	%rsi, %rdx
	call	*16(%r10)
	testl	%eax, %eax
	movq	32(%rsp), %r10
	jne	.L2577
	leaq	57(%r10), %rsi
	movl	$0, 48(%r10)
	movb	$0, 56(%r10)
	movq	%rsi, %rax
.L2578:
	movq	%rsi, 192(%r10)
	movq	%rax, 184(%r10)
	jmp	.L2574
	.p2align 4,,7
.L2682:
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%rsi)
	movzbl	(%rcx), %r15d
	sall	$8, %r15d
	cmpq	%rax, %rdx
	movl	%r15d, %r10d
	jnb	.L2687
.L2570:
	leaq	1(%rdx), %rax
	movq	%rax, 184(%rsi)
	movzbl	(%rdx), %r15d
	jmp	.L2567
	.p2align 4,,7
.L2686:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%r10)
	movzbl	(%rax), %r15d
	jmp	.L2574
	.p2align 4,,7
.L2683:
	leaq	56(%rsi), %r15
	movq	40(%rsi), %rcx
	movl	52(%rsi), %r8d
	movq	%r15, %rdx
	call	*16(%rsi)
	testl	%eax, %eax
	jne	.L2568
	leaq	57(%rsi), %rax
	movl	$0, 48(%rsi)
	movb	$0, 56(%rsi)
	xorl	%r10d, %r10d
	movq	%rax, %rdx
.L2569:
	cmpq	%rax, %rdx
	movq	%rax, 192(%rsi)
	movq	%rdx, 184(%rsi)
	jb	.L2570
.L2687:
	movl	48(%rsi), %r15d
	testl	%r15d, %r15d
	je	.L2567
	leaq	56(%rsi), %r15
	movl	%r10d, 32(%rsp)
	movq	40(%rsi), %rcx
	movl	52(%rsi), %r8d
	movq	%r15, %rdx
	call	*16(%rsi)
	testl	%eax, %eax
	movl	32(%rsp), %r10d
	jne	.L2572
	leaq	57(%rsi), %rax
	movl	$0, 48(%rsi)
	movb	$0, 56(%rsi)
	xorl	%r15d, %r15d
	movq	%rax, %rdx
.L2573:
	movq	%rax, 192(%rsi)
	movq	%rdx, 184(%rsi)
	jmp	.L2567
	.p2align 4,,7
.L2577:
	cltq
	movzbl	56(%r10), %r15d
	addq	%rax, %rsi
	leaq	57(%r10), %rax
	jmp	.L2578
	.p2align 4,,7
.L2568:
	cltq
	leaq	57(%rsi), %rdx
	addq	%r15, %rax
	movzbl	56(%rsi), %r15d
	sall	$8, %r15d
	movl	%r15d, %r10d
	jmp	.L2569
	.p2align 4,,7
.L2572:
	cltq
	leaq	57(%rsi), %rdx
	addq	%r15, %rax
	movzbl	56(%rsi), %r15d
	jmp	.L2573
	.p2align 4,,7
.L2684:
	cmpl	$1, %r12d
	sbbl	%eax, %eax
	andl	$-64, %eax
	addl	$129, %eax
	subl	%eax, 40(%rsp)
	movl	40(%rsp), %edi
	testl	%edi, %edi
	jg	.L2580
.L2560:
	movl	40(%rsp), %r8d
	xorl	%eax, %eax
	testl	%r8d, %r8d
	sete	%al
	jmp	.L2558
.L2627:
	movq	(%rbx), %rcx
	movl	%edx, 32(%rsp)
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$1, %eax
	movl	%eax, %esi
	movl	32(%rsp), %edx
	jle	.L2688
	cmpl	$224, %edx
	leal	-2(%rax), %eax
	jne	.L2613
	cmpl	$4, %eax
	jle	.L2613
	leaq	_ZZL20stbi__process_markerP10stbi__jpegiE3tag(%rip), %rdi
	leaq	5+_ZZL20stbi__process_markerP10stbi__jpegiE3tag(%rip), %r13
	movl	$1, %ebp
	xorl	%r12d, %r12d
.L2615:
	movq	(%rbx), %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	(%rdi), %al
	cmovne	%r12d, %ebp
	incq	%rdi
	cmpq	%rdi, %r13
	jne	.L2615
	testl	%ebp, %ebp
	leal	-7(%rsi), %eax
	je	.L2616
	movl	$1, 18504(%rbx)
.L2616:
	movq	(%rbx), %rcx
	movl	%eax, %edx
	call	_ZL10stbi__skipP13stbi__contexti
	movl	$1, %eax
	jmp	.L2558
.L2587:
	leaq	.LC78(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2558
.L2562:
	leaq	.LC77(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2558
.L2681:
	leaq	.LC76(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2558
.L2559:
	movq	(%rbx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movl	%eax, 18536(%rbx)
	movl	$1, %eax
	jmp	.L2558
.L2613:
	cmpl	$238, %edx
	jne	.L2616
	cmpl	$11, %eax
	jle	.L2616
	leaq	_ZZL20stbi__process_markerP10stbi__jpegiE3tag_0(%rip), %rdi
	leaq	6+_ZZL20stbi__process_markerP10stbi__jpegiE3tag_0(%rip), %r13
	movl	$1, %ebp
	xorl	%r12d, %r12d
.L2618:
	movq	(%rbx), %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	(%rdi), %al
	cmovne	%r12d, %ebp
	incq	%rdi
	cmpq	%rdi, %r13
	jne	.L2618
	testl	%ebp, %ebp
	leal	-8(%rsi), %eax
	je	.L2616
	movq	(%rbx), %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	(%rbx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	(%rbx), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	(%rbx), %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	movl	%eax, 18508(%rbx)
	leal	-14(%rsi), %eax
	jmp	.L2616
	.p2align 4,,7
.L2688:
	cmpl	$254, %edx
	je	.L2689
	leaq	.LC80(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2558
.L2689:
	leaq	.LC79(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2558
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17stbi__malloc_mad3iiii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17stbi__malloc_mad3iiii
_ZL17stbi__malloc_mad3iiii:
.LFB576:
	.seh_endprologue
	movl	%ecx, %eax
	movl	%edx, %r10d
	shrl	$31, %eax
	jne	.L2691
	movl	%edx, %eax
	shrl	$31, %eax
	jne	.L2691
	testl	%edx, %edx
	jne	.L2706
	imull	%ecx, %r10d
	testl	%r8d, %r8d
	jns	.L2707
.L2691:
	xorl	%eax, %eax
	ret
	.p2align 4,,7
.L2707:
	jne	.L2708
.L2693:
	testl	%r9d, %r9d
	.p2align 4,,7
	js	.L2691
	imull	%r10d, %r8d
	movl	$2147483647, %eax
	subl	%r9d, %eax
	cmpl	%eax, %r8d
	jg	.L2691
	leal	(%r9,%r8), %ecx
	movslq	%ecx, %rcx
	jmp	malloc
	.p2align 4,,7
.L2706:
	movl	$2147483647, %eax
	cltd
	idivl	%r10d
	cmpl	%eax, %ecx
	jg	.L2691
	imull	%ecx, %r10d
	testl	%r8d, %r8d
	js	.L2691
	jmp	.L2707
	.p2align 4,,7
.L2708:
	movl	$2147483647, %eax
	cltd
	idivl	%r8d
	cmpl	%eax, %r10d
	jle	.L2693
	jmp	.L2691
	.seh_endproc
	.section .rdata,"dr"
.LC82:
	.ascii "no SOF\0"
.LC83:
	.ascii "bad SOF len\0"
.LC84:
	.ascii "only 8-bit\0"
.LC85:
	.ascii "no header height\0"
.LC86:
	.ascii "0 width\0"
.LC87:
	.ascii "bad component count\0"
.LC88:
	.ascii "bad H\0"
.LC89:
	.ascii "bad V\0"
.LC90:
	.ascii "bad TQ\0"
	.text
	.p2align 4,,15
	.def	_ZL24stbi__decode_jpeg_headerP10stbi__jpegi.part.23;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL24stbi__decode_jpeg_headerP10stbi__jpegi.part.23
_ZL24stbi__decode_jpeg_headerP10stbi__jpegi.part.23:
.LFB7875:
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
	movzbl	18472(%rcx), %eax
	movq	%rcx, %rdi
	movl	%edx, %esi
	cmpb	$-1, %al
	je	.L2710
	movb	$-1, 18472(%rcx)
.L2711:
	movzbl	%al, %edx
	jmp	.L2717
	.p2align 4,,7
.L2810:
	movb	$-1, 18472(%rdi)
.L2717:
	leal	-192(%rdx), %eax
	cmpl	$2, %eax
	jbe	.L2712
	movq	%rdi, %rcx
	call	_ZL20stbi__process_markerP10stbi__jpegi
	testl	%eax, %eax
	je	.L2713
	movzbl	18472(%rdi), %eax
	cmpb	$-1, %al
	je	.L2714
	movb	$-1, 18472(%rdi)
.L2715:
	movzbl	%al, %edx
	cmpl	$255, %edx
	jne	.L2717
.L2806:
	movq	(%rdi), %rbx
.L2762:
	cmpq	$0, 16(%rbx)
	je	.L2721
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L2720
	movl	48(%rbx), %r9d
	testl	%r9d, %r9d
	je	.L2719
.L2721:
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jnb	.L2719
.L2720:
	movzbl	18472(%rdi), %edx
	cmpb	$-1, %dl
	jne	.L2810
	movq	(%rdi), %rbx
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L2811
	movl	48(%rbx), %r8d
	testl	%r8d, %r8d
	je	.L2762
	leaq	56(%rbx), %rbp
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L2812
	movzbl	56(%rbx), %edx
	cltq
	leaq	57(%rbx), %rcx
	addq	%rbp, %rax
.L2729:
	incb	%dl
	movq	%rax, 192(%rbx)
	movq	%rcx, 184(%rbx)
	jne	.L2806
	.p2align 4,,7
.L2730:
	movq	(%rdi), %rbx
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L2813
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L2814
	xorl	%edx, %edx
	jmp	.L2717
	.p2align 4,,7
.L2811:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edx
	incb	%dl
	jne	.L2806
	jmp	.L2730
	.p2align 4,,7
.L2813:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edx
.L2733:
	cmpb	$-1, %dl
	je	.L2730
	jmp	.L2717
	.p2align 4,,7
.L2814:
	leaq	56(%rbx), %rbp
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L2735
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%edx, %edx
	movq	%rax, %rcx
.L2736:
	movq	%rax, 192(%rbx)
	movq	%rcx, 184(%rbx)
	jmp	.L2733
	.p2align 4,,7
.L2719:
	leaq	.LC82(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L2803:
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
	.p2align 4,,7
.L2735:
	cltq
	leaq	57(%rbx), %rcx
	movzbl	56(%rbx), %edx
	addq	%rbp, %rax
	jmp	.L2736
	.p2align 4,,7
.L2812:
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%edx, %edx
	movq	%rax, %rcx
	jmp	.L2729
	.p2align 4,,7
.L2714:
	movq	%rdi, %rcx
	call	_ZL16stbi__get_markerP10stbi__jpeg.isra.1.part.2
	jmp	.L2715
.L2710:
	.p2align 4,,5
	call	_ZL16stbi__get_markerP10stbi__jpeg.isra.1.part.2
	.p2align 4,,8
	jmp	.L2711
.L2741:
	movq	%rbx, %rcx
	.p2align 4,,5
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	subl	$3, %eax
	cmpb	$1, %al
	jbe	.L2742
	cmpl	$1, %edx
	je	.L2742
	leaq	.LC87(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L2713:
	xorl	%eax, %eax
	jmp	.L2803
.L2712:
	movq	(%rdi), %rbx
	xorl	%eax, %eax
	cmpl	$194, %edx
	sete	%al
	movl	%eax, 18480(%rdi)
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$10, %eax
	movl	%eax, %ebp
	jg	.L2738
.L2745:
	leaq	.LC83(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2803
.L2738:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$8, %al
	je	.L2739
	leaq	.LC84(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2803
.L2739:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	testl	%eax, %eax
	movl	%eax, 4(%rbx)
	jne	.L2740
	leaq	.LC85(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2803
.L2740:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	testl	%eax, %eax
	movl	%eax, (%rbx)
	jne	.L2741
	leaq	.LC86(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2803
.L2742:
	testl	%edx, %edx
	movl	%edx, 8(%rbx)
	je	.L2745
	cmpl	$1, %edx
	movq	$0, 18128(%rdi)
	movq	$0, 18152(%rdi)
	je	.L2744
	cmpl	$2, %edx
	movq	$0, 18224(%rdi)
	movq	$0, 18248(%rdi)
	je	.L2744
	cmpl	$3, %edx
	movq	$0, 18320(%rdi)
	movq	$0, 18344(%rdi)
	je	.L2744
	movq	$0, 18416(%rdi)
	movq	$0, 18440(%rdi)
.L2744:
	leal	8(%rdx,%rdx,2), %eax
	cmpl	%eax, %ebp
	jne	.L2745
	movl	$0, 18512(%rdi)
	leaq	18080(%rdi), %r13
	leaq	_ZZL26stbi__process_frame_headerP10stbi__jpegiE3rgb(%rip), %r12
	xorl	%ebp, %ebp
	jmp	.L2751
	.p2align 4,,7
.L2746:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	sarl	$4, %edx
	testl	%edx, %edx
	movl	%edx, 4(%r13)
	je	.L2766
	cmpl	$4, %edx
	jg	.L2766
	andl	$15, %eax
	movzbl	%al, %edx
	decl	%eax
	cmpb	$3, %al
	movl	%edx, 8(%r13)
	ja	.L2815
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	cmpl	$3, %eax
	movl	%eax, 12(%r13)
	jg	.L2816
	movl	8(%rbx), %r14d
	incl	%ebp
	addq	$96, %r13
	incq	%r12
	cmpl	%ebp, %r14d
	jle	.L2817
.L2751:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	movl	%eax, 0(%r13)
	cmpl	$3, 8(%rbx)
	jne	.L2746
	movzbl	(%r12), %edx
	cmpl	%edx, %eax
	jne	.L2746
	incl	18512(%rdi)
	jmp	.L2746
.L2817:
	testl	%esi, %esi
	jne	.L2752
	movl	4(%rbx), %esi
	movl	(%rbx), %r13d
	xorl	%r9d, %r9d
	movl	%r14d, %r8d
	movl	%esi, %edx
	movl	%r13d, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L2753
	testl	%r14d, %r14d
	jle	.L2818
	movl	18084(%rdi), %r12d
	movl	18088(%rdi), %ebp
	movl	$1, %eax
	testl	%r12d, %r12d
	cmovle	%eax, %r12d
	testl	%ebp, %ebp
	cmovle	%eax, %ebp
	cmpl	$1, %r14d
	je	.L2756
	movl	18180(%rdi), %eax
	cmpl	%eax, %r12d
	cmovl	%eax, %r12d
	movl	18184(%rdi), %eax
	cmpl	%eax, %ebp
	cmovl	%eax, %ebp
	cmpl	$2, %r14d
	je	.L2756
	movl	18276(%rdi), %eax
	cmpl	%eax, %r12d
	cmovl	%eax, %r12d
	movl	18280(%rdi), %eax
	cmpl	%eax, %ebp
	cmovl	%eax, %ebp
	cmpl	$3, %r14d
	je	.L2756
	movl	18372(%rdi), %eax
	cmpl	%eax, %r12d
	cmovl	%eax, %r12d
	movl	18376(%rdi), %eax
	cmpl	%eax, %ebp
	cmovl	%eax, %ebp
.L2756:
	leal	0(,%r12,8), %edx
	leal	0(,%rbp,8), %eax
	movl	%edx, %r9d
	movl	%eax, %r8d
.L2754:
	movl	%eax, 18076(%rdi)
	leal	-1(%r13,%r9), %eax
	movl	%edx, 18072(%rdi)
	xorl	%edx, %edx
	movl	%r12d, 18056(%rdi)
	movl	%ebp, 18060(%rdi)
	divl	%r9d
	xorl	%edx, %edx
	movl	%eax, %r10d
	movl	%eax, 18064(%rdi)
	leal	-1(%rsi,%r8), %eax
	divl	%r8d
	movl	8(%rbx), %edx
	testl	%edx, %edx
	movl	%eax, %r9d
	movl	%eax, 18068(%rdi)
	jle	.L2752
	leal	-1(%r12), %r15d
	leal	-1(%rbp), %r14d
	movq	%rdi, %rsi
	xorl	%r13d, %r13d
.L2761:
	movl	(%rbx), %eax
	movl	18084(%rsi), %ecx
	xorl	%edx, %edx
	movl	18088(%rsi), %r8d
	imull	%ecx, %eax
	imull	%r10d, %ecx
	addl	%r15d, %eax
	divl	%r12d
	xorl	%edx, %edx
	sall	$3, %ecx
	movl	%eax, 18108(%rsi)
	movl	4(%rbx), %eax
	movl	%ecx, 18116(%rsi)
	movq	$0, 18160(%rsi)
	movq	$0, 18144(%rsi)
	movq	$0, 18152(%rsi)
	imull	%r8d, %eax
	addl	%r14d, %eax
	divl	%ebp
	movl	%r8d, %edx
	movl	$15, %r8d
	imull	%r9d, %edx
	movl	%eax, 18112(%rsi)
	sall	$3, %edx
	movl	%edx, 18120(%rsi)
	call	_ZL17stbi__malloc_mad2iii
	testq	%rax, %rax
	movq	%rax, 18136(%rsi)
	je	.L2807
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, 18128(%rsi)
	movl	18480(%rdi), %eax
	testl	%eax, %eax
	jne	.L2819
.L2759:
	incl	%r13d
	addq	$96, %rsi
	cmpl	%r13d, 8(%rbx)
	jle	.L2752
	movl	18064(%rdi), %r10d
	movl	18068(%rdi), %r9d
	jmp	.L2761
.L2818:
	movl	$8, %r8d
	movl	$8, %r9d
	movl	$8, %eax
	movl	$8, %edx
	movl	$1, %ebp
	movl	$1, %r12d
	jmp	.L2754
.L2753:
	leaq	.LC61(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2803
.L2819:
	movl	18116(%rsi), %ecx
	movl	18120(%rsi), %edx
	movl	$15, %r9d
	movl	$2, %r8d
	leal	7(%rcx), %eax
	testl	%ecx, %ecx
	cmovns	%ecx, %eax
	sarl	$3, %eax
	testl	%edx, %edx
	movl	%eax, 18168(%rsi)
	leal	7(%rdx), %eax
	cmovns	%edx, %eax
	sarl	$3, %eax
	movl	%eax, 18172(%rsi)
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, 18144(%rsi)
	je	.L2807
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rax, 18160(%rsi)
	jmp	.L2759
.L2807:
	leaq	.LC7(%rip), %rax
	leal	1(%r13), %edx
	movq	%rdi, %rcx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	call	_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.117
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.L2803
.L2752:
	movl	$1, %eax
	jmp	.L2803
.L2816:
	leaq	.LC90(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2803
.L2815:
	leaq	.LC89(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2803
.L2766:
	leaq	.LC88(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L2803
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC91:
	.ascii "out_n == s->img_n || out_n == s->img_n+1\0"
.LC92:
	.ascii "not enough pixels\0"
.LC93:
	.ascii "invalid filter\0"
.LC94:
	.ascii "img_width_bytes <= x\0"
.LC95:
	.ascii "img_n+1 == out_n\0"
.LC99:
	.ascii "img_n == 3\0"
	.text
	.p2align 4,,15
	.def	_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii.isra.31;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii.isra.31
_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii.isra.31:
.LFB7883:
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
	subq	$568, %rsp
	.seh_stackalloc	568
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
	movaps	%xmm11, 480(%rsp)
	.seh_savexmm	%xmm11, 480
	movaps	%xmm12, 496(%rsp)
	.seh_savexmm	%xmm12, 496
	movaps	%xmm13, 512(%rsp)
	.seh_savexmm	%xmm13, 512
	movaps	%xmm14, 528(%rsp)
	.seh_savexmm	%xmm14, 528
	movaps	%xmm15, 544(%rsp)
	.seh_savexmm	%xmm15, 544
	.seh_endprologue
	xorl	%r12d, %r12d
	movq	%rcx, %rbp
	movl	%r9d, %edi
	cmpl	$16, 696(%rsp)
	movl	672(%rsp), %ebx
	movl	8(%rcx), %eax
	movq	%rdx, 648(%rsp)
	movq	%r8, 656(%rsp)
	sete	%r12b
	movl	%eax, 128(%rsp)
	incl	%r12d
	imull	%r12d, %ebx
	cmpl	%eax, 672(%rsp)
	movl	%r12d, %esi
	movl	%ebx, 104(%rsp)
	movl	680(%rsp), %ebx
	movl	%ebx, 92(%rsp)
	je	.L2822
	incl	%eax
	cmpl	%eax, 672(%rsp)
	je	.L2822
	leaq	.LC3(%rip), %rdx
	leaq	.LC91(%rip), %rcx
	movl	$4294, %r8d
	call	_assert
.L2822:
	movl	104(%rsp), %r8d
	movl	688(%rsp), %edx
	xorl	%r9d, %r9d
	movl	680(%rsp), %ecx
	call	_ZL17stbi__malloc_mad3iiii
	movq	%rax, %rbx
	movq	648(%rsp), %rax
	testq	%rbx, %rbx
	movq	%rbx, (%rax)
	je	.L3547
	movl	128(%rsp), %eax
	movl	0(%rbp), %ecx
	imull	680(%rsp), %eax
	movl	%eax, 232(%rsp)
	imull	696(%rsp), %eax
	addl	$7, %eax
	shrl	$3, %eax
	movl	%eax, 80(%rsp)
	incl	%eax
	imull	688(%rsp), %eax
	cmpl	%ecx, 680(%rsp)
	je	.L3548
.L2825:
	cmpl	%edi, %eax
	ja	.L2827
.L2826:
	movl	688(%rsp), %r14d
	testl	%r14d, %r14d
	je	.L2828
	movq	656(%rsp), %rax
	movzbl	(%rax), %edi
	leaq	1(%rax), %rbp
	cmpl	$4, %edi
	jg	.L2830
	movl	672(%rsp), %eax
	movq	$0, 112(%rsp)
	imull	680(%rsp), %eax
	movdqa	.LC2(%rip), %xmm6
	movl	$0, 40(%rsp)
	movdqa	%xmm6, %xmm7
	imull	%eax, %r12d
	movl	%eax, 168(%rsp)
	movl	128(%rsp), %eax
	imull	%eax, %esi
	cmpl	$7, 696(%rsp)
	movl	%r12d, %ecx
	movl	%r12d, 88(%rsp)
	movl	%esi, %r12d
	movl	%eax, %esi
	setle	%dl
	cmpl	%eax, 672(%rsp)
	movslq	%esi, %rsi
	movq	%rsi, 192(%rsp)
	sete	%al
	orl	%eax, %edx
	movq	%rsi, %rax
	incl	%eax
	movb	%dl, 281(%rsp)
	movl	%eax, 200(%rsp)
	movl	680(%rsp), %eax
	decl	%eax
	movl	%eax, 184(%rsp)
	movl	%ecx, %eax
	movl	%eax, 64(%rsp)
	movq	%rax, 120(%rsp)
	movl	104(%rsp), %eax
	negl	%eax
	cltq
	movq	%rax, 72(%rsp)
	addq	$16, %rax
	movq	%rax, 48(%rsp)
	.p2align 4,,7
.L2831:
	cmpl	$7, 696(%rsp)
	jg	.L2832
	movl	80(%rsp), %eax
	cmpl	%eax, 680(%rsp)
	jb	.L3549
.L2833:
	movl	80(%rsp), %esi
	movl	168(%rsp), %eax
	movl	$1, %r12d
	movl	40(%rsp), %r13d
	subl	%esi, %eax
	movl	%esi, 92(%rsp)
	addq	%rax, %rbx
	movq	%rbx, %rsi
	subq	120(%rsp), %rsi
	testl	%r13d, %r13d
	je	.L2834
.L2835:
	leaq	.L2840(%rip), %r9
	movq	%rbp, %r8
	movq	%rbx, %rcx
	xorl	%edx, %edx
	.p2align 4,,7
.L2847:
	cmpl	$6, %edi
	ja	.L2838
	movl	%edi, %eax
	movslq	(%r9,%rax,4), %rax
	addq	%r9, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2840:
	.long	.L2846-.L2840
	.long	.L2846-.L2840
	.long	.L2844-.L2840
	.long	.L2843-.L2840
	.long	.L2844-.L2840
	.long	.L2846-.L2840
	.long	.L2846-.L2840
	.text
	.p2align 4,,7
.L2846:
	movzbl	(%r8), %eax
	movb	%al, (%rcx)
.L2838:
	incq	%rdx
	incq	%r8
	incq	%rcx
	cmpl	%edx, %r12d
	jg	.L2847
	cmpl	$8, 696(%rsp)
	je	.L3550
.L2848:
	cmpl	$16, 696(%rsp)
	je	.L3551
	addq	$2, 656(%rsp)
	incq	%rbx
	incq	%rsi
.L2850:
	cmpb	$0, 281(%rsp)
	je	.L2854
	movl	92(%rsp), %eax
	leal	-1(%rax), %r14d
	imull	%r12d, %r14d
	cmpl	$6, %edi
	ja	.L2932
	leaq	.L2857(%rip), %rax
	movl	%edi, %edi
	movslq	(%rax,%rdi,4), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2857:
	.long	.L2856-.L2857
	.long	.L2858-.L2857
	.long	.L2859-.L2857
	.long	.L2860-.L2857
	.long	.L2861-.L2857
	.long	.L2862-.L2857
	.long	.L2863-.L2857
	.text
	.p2align 4,,7
.L2844:
	movzbl	(%rsi,%rdx), %eax
	addb	(%r8), %al
	movb	%al, (%rcx)
	jmp	.L2838
	.p2align 4,,7
.L2843:
	movzbl	(%rsi,%rdx), %eax
	sarl	%eax
	addb	(%r8), %al
	movb	%al, (%rcx)
	jmp	.L2838
.L2862:
	testl	%r14d, %r14d
	jle	.L2932
	movl	%r12d, %eax
	movq	656(%rsp), %rdi
	negl	%eax
	movslq	%eax, %r9
	leaq	16(%rbx), %rax
	leaq	16(%r9), %rdx
	leaq	(%rbx,%r9), %r8
	testq	%rdx, %rdx
	setle	%cl
	cmpq	%r8, %rax
	setbe	%dl
	orl	%ecx, %edx
	leaq	16(%rdi), %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	cmpq	%rax, %rdi
	setnb	%al
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L2910
	cmpl	$18, %r14d
	jbe	.L2910
	movq	%rdi, %rdx
	negq	%rdx
	andl	$15, %edx
	cmpl	%r14d, %edx
	cmova	%r14d, %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.L2911
	movzbl	(%r8), %eax
	sarl	%eax
	addb	(%rdi), %al
	cmpl	$1, %edx
	movb	%al, (%rbx)
	je	.L3146
	movl	$1, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	1(%rdi), %al
	cmpl	$2, %edx
	movb	%al, 1(%rbx)
	je	.L3147
	movl	$2, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	2(%rdi), %al
	cmpl	$3, %edx
	movb	%al, 2(%rbx)
	je	.L3148
	movl	$3, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	3(%rdi), %al
	cmpl	$4, %edx
	movb	%al, 3(%rbx)
	je	.L3149
	movl	$4, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	4(%rdi), %al
	cmpl	$5, %edx
	movb	%al, 4(%rbx)
	je	.L3150
	movl	$5, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	5(%rdi), %al
	cmpl	$6, %edx
	movb	%al, 5(%rbx)
	je	.L3151
	movl	$6, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	6(%rdi), %al
	cmpl	$7, %edx
	movb	%al, 6(%rbx)
	je	.L3152
	movl	$7, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	7(%rdi), %al
	cmpl	$8, %edx
	movb	%al, 7(%rbx)
	je	.L3153
	movl	$8, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	8(%rdi), %al
	cmpl	$9, %edx
	movb	%al, 8(%rbx)
	je	.L3154
	movl	$9, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	9(%rdi), %al
	cmpl	$10, %edx
	movb	%al, 9(%rbx)
	je	.L3155
	movl	$10, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	10(%rdi), %al
	cmpl	$11, %edx
	movb	%al, 10(%rbx)
	je	.L3156
	movl	$11, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	11(%rdi), %al
	cmpl	$12, %edx
	movb	%al, 11(%rbx)
	je	.L3157
	movl	$12, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	12(%rdi), %al
	cmpl	$13, %edx
	movb	%al, 12(%rbx)
	je	.L3158
	movl	$13, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	13(%rdi), %al
	cmpl	$14, %edx
	movb	%al, 13(%rbx)
	je	.L3159
	movl	$14, %eax
	movl	$15, %ecx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	14(%rdi), %al
	movb	%al, 14(%rbx)
.L2911:
	movl	%r14d, %r11d
	movl	%edx, %r8d
	subl	%edx, %r11d
	leal	-16(%r11), %eax
	shrl	$4, %eax
	leal	1(%rax), %esi
	movl	%eax, %r10d
	leal	-1(%r14), %eax
	movl	%esi, %edi
	subl	%edx, %eax
	sall	$4, %edi
	cmpl	$14, %eax
	jbe	.L2913
	leaq	(%r9,%r8), %rax
	movq	%r8, %rdx
	addq	%rbx, %r8
	addq	656(%rsp), %rdx
	leaq	(%rbx,%rax), %r9
	leal	-4(%r10), %eax
	cmpl	$-6, %eax
	ja	.L3160
	pxor	%xmm1, %xmm1
	shrl	$2, %eax
	movdqa	.LC2(%rip), %xmm2
	leal	4(,%rax,4), %r10d
	xorl	%eax, %eax
.L2915:
	prefetcht0	304(%rdx)
	prefetcht0	304(%r9)
	addl	$4, %eax
	movdqu	(%r9), %xmm3
	prefetcht0	304(%r8)
	addq	$64, %rdx
	addq	$64, %r9
	addq	$64, %r8
	movdqa	%xmm3, %xmm0
	punpckhbw	%xmm1, %xmm3
	punpcklbw	%xmm1, %xmm0
	psrlw	$1, %xmm3
	pand	%xmm2, %xmm3
	psrlw	$1, %xmm0
	pand	%xmm2, %xmm0
	packuswb	%xmm3, %xmm0
	paddb	-64(%rdx), %xmm0
	movups	%xmm0, -64(%r8)
	movdqu	-48(%r9), %xmm3
	movdqa	%xmm3, %xmm0
	punpckhbw	%xmm1, %xmm3
	punpcklbw	%xmm1, %xmm0
	psrlw	$1, %xmm3
	pand	%xmm2, %xmm3
	psrlw	$1, %xmm0
	pand	%xmm2, %xmm0
	packuswb	%xmm3, %xmm0
	paddb	-48(%rdx), %xmm0
	movups	%xmm0, -48(%r8)
	movdqu	-32(%r9), %xmm3
	movdqa	%xmm3, %xmm0
	punpckhbw	%xmm1, %xmm3
	punpcklbw	%xmm1, %xmm0
	psrlw	$1, %xmm3
	pand	%xmm2, %xmm3
	psrlw	$1, %xmm0
	pand	%xmm2, %xmm0
	packuswb	%xmm3, %xmm0
	paddb	-32(%rdx), %xmm0
	movups	%xmm0, -32(%r8)
	movdqu	-16(%r9), %xmm3
	movdqa	%xmm3, %xmm0
	punpckhbw	%xmm1, %xmm3
	punpcklbw	%xmm1, %xmm0
	psrlw	$1, %xmm3
	pand	%xmm2, %xmm3
	psrlw	$1, %xmm0
	pand	%xmm2, %xmm0
	packuswb	%xmm3, %xmm0
	paddb	-16(%rdx), %xmm0
	movups	%xmm0, -16(%r8)
	cmpl	%r10d, %eax
	jne	.L2915
.L2914:
	pxor	%xmm3, %xmm3
	xorl	%eax, %eax
.L2919:
	movdqu	(%r9,%rax), %xmm1
	incl	%r10d
	movdqa	%xmm1, %xmm0
	punpckhbw	%xmm3, %xmm1
	punpcklbw	%xmm3, %xmm0
	psrlw	$1, %xmm1
	pand	%xmm2, %xmm1
	psrlw	$1, %xmm0
	pand	%xmm2, %xmm0
	packuswb	%xmm1, %xmm0
	paddb	(%rdx,%rax), %xmm0
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpl	%esi, %r10d
	jb	.L2919
	addl	%edi, %ecx
	cmpl	%edi, %r11d
	je	.L2932
.L2913:
	movl	%ecx, %eax
	movq	656(%rsp), %rdi
	movslq	%ecx, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	1(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	2(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	3(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	4(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	5(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	6(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	7(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	8(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	9(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	10(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	11(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	12(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	13(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	addl	$14, %ecx
	cltq
	movzbl	(%rbx,%rax), %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	cmpl	%ecx, %r14d
	movb	%al, (%rbx,%rdx)
	jle	.L2932
	movslq	%ecx, %rax
	subl	%r12d, %ecx
	movslq	%ecx, %rdx
	movzbl	(%rbx,%rdx), %edx
	sarl	%edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	jmp	.L2932
.L2861:
	xorl	%r8d, %r8d
	testl	%r14d, %r14d
	jle	.L2932
	movl	%r12d, %ebp
	movl	%r12d, 96(%rsp)
	movq	656(%rsp), %r12
	negl	%ebp
	movslq	%ebp, %rbp
	leaq	(%rsi,%rbp), %r15
	addq	%rbx, %rbp
	jmp	.L3401
	.p2align 4,,7
.L3553:
	cmpl	%eax, %edx
	jg	.L3283
	addl	%edi, %r9d
	movb	%r9b, (%rbx,%r8)
	incq	%r8
	cmpl	%r8d, %r14d
	jle	.L3552
.L3401:
	movzbl	(%rsi,%r8), %r10d
	movzbl	0(%rbp,%r8), %r9d
	movzbl	(%r15,%r8), %r11d
	movzbl	(%r12,%r8), %edi
	leal	(%r10,%r9), %eax
	subl	%r11d, %eax
	movl	%eax, %edx
	subl	%r9d, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %edx
	subl	%ecx, %edx
	movl	%eax, %ecx
	subl	%r11d, %eax
	subl	%r10d, %ecx
	movl	%ecx, %r13d
	sarl	$31, %r13d
	xorl	%r13d, %ecx
	subl	%r13d, %ecx
	movl	%eax, %r13d
	sarl	$31, %r13d
	xorl	%r13d, %eax
	subl	%r13d, %eax
	cmpl	%ecx, %edx
	jle	.L3553
.L3283:
	cmpl	%eax, %ecx
	movl	%r10d, %r9d
	cmovg	%r11d, %r9d
	addl	%edi, %r9d
	movb	%r9b, (%rbx,%r8)
	incq	%r8
	cmpl	%r8d, %r14d
	jg	.L3401
.L3552:
	movl	96(%rsp), %r12d
	movslq	%r14d, %r14
	jmp	.L2864
.L2859:
	testl	%r14d, %r14d
	jle	.L2932
	leaq	16(%rsi), %rdx
	leaq	16(%rbx), %rax
	movq	656(%rsp), %rdi
	cmpq	%rdx, %rbx
	setnb	%cl
	cmpq	%rsi, %rax
	setbe	%dl
	orl	%ecx, %edx
	leaq	16(%rdi), %rcx
	cmpq	%rcx, %rbx
	setnb	%cl
	cmpq	%rdi, %rax
	setbe	%al
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L2883
	cmpl	$18, %r14d
	jbe	.L2883
	movq	%rdi, %rdx
	negq	%rdx
	andl	$15, %edx
	cmpl	%r14d, %edx
	cmova	%r14d, %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.L2884
	movzbl	(%rsi), %eax
	addb	(%rdi), %al
	cmpl	$1, %edx
	movb	%al, (%rbx)
	je	.L3113
	movzbl	1(%rsi), %eax
	addb	1(%rdi), %al
	cmpl	$2, %edx
	movb	%al, 1(%rbx)
	je	.L3114
	movzbl	2(%rsi), %eax
	addb	2(%rdi), %al
	cmpl	$3, %edx
	movb	%al, 2(%rbx)
	je	.L3115
	movzbl	3(%rsi), %eax
	addb	3(%rdi), %al
	cmpl	$4, %edx
	movb	%al, 3(%rbx)
	je	.L3116
	movzbl	4(%rsi), %eax
	addb	4(%rdi), %al
	cmpl	$5, %edx
	movb	%al, 4(%rbx)
	je	.L3117
	movzbl	5(%rsi), %eax
	addb	5(%rdi), %al
	cmpl	$6, %edx
	movb	%al, 5(%rbx)
	je	.L3118
	movzbl	6(%rsi), %eax
	addb	6(%rdi), %al
	cmpl	$7, %edx
	movb	%al, 6(%rbx)
	je	.L3119
	movzbl	7(%rsi), %eax
	addb	7(%rdi), %al
	cmpl	$8, %edx
	movb	%al, 7(%rbx)
	je	.L3120
	movzbl	8(%rsi), %eax
	addb	8(%rdi), %al
	cmpl	$9, %edx
	movb	%al, 8(%rbx)
	je	.L3121
	movzbl	9(%rsi), %eax
	addb	9(%rdi), %al
	cmpl	$10, %edx
	movb	%al, 9(%rbx)
	je	.L3122
	movzbl	10(%rsi), %eax
	addb	10(%rdi), %al
	cmpl	$11, %edx
	movb	%al, 10(%rbx)
	je	.L3123
	movzbl	11(%rsi), %eax
	addb	11(%rdi), %al
	cmpl	$12, %edx
	movb	%al, 11(%rbx)
	je	.L3124
	movzbl	12(%rsi), %eax
	addb	12(%rdi), %al
	cmpl	$13, %edx
	movb	%al, 12(%rbx)
	je	.L3125
	movzbl	13(%rsi), %eax
	addb	13(%rdi), %al
	cmpl	$14, %edx
	movb	%al, 13(%rbx)
	je	.L3126
	movzbl	14(%rsi), %eax
	movl	$15, %ecx
	addb	14(%rdi), %al
	movb	%al, 14(%rbx)
.L2884:
	movl	%r14d, %r11d
	movl	%edx, %r9d
	subl	%edx, %r11d
	leal	-16(%r11), %eax
	shrl	$4, %eax
	leal	1(%rax), %edi
	movl	%eax, %r10d
	leal	-1(%r14), %eax
	movl	%edi, %ebp
	subl	%edx, %eax
	sall	$4, %ebp
	cmpl	$14, %eax
	jbe	.L2886
	leal	-4(%r10), %eax
	movq	%r9, %r8
	leaq	(%rsi,%r9), %rdx
	addq	656(%rsp), %r8
	addq	%rbx, %r9
	cmpl	$-6, %eax
	ja	.L3127
	shrl	$2, %eax
	leal	4(,%rax,4), %r10d
	xorl	%eax, %eax
.L2888:
	movdqu	(%rdx), %xmm0
	prefetcht0	320(%r8)
	prefetcht0	320(%rdx)
	addl	$4, %eax
	prefetcht0	320(%r9)
	addq	$64, %r8
	paddb	-64(%r8), %xmm0
	movups	%xmm0, (%r9)
	addq	$64, %rdx
	addq	$64, %r9
	movdqu	-48(%rdx), %xmm0
	paddb	-48(%r8), %xmm0
	movups	%xmm0, -48(%r9)
	movdqu	-32(%rdx), %xmm0
	paddb	-32(%r8), %xmm0
	movups	%xmm0, -32(%r9)
	movdqu	-16(%rdx), %xmm0
	paddb	-16(%r8), %xmm0
	movups	%xmm0, -16(%r9)
	cmpl	%r10d, %eax
	jne	.L2888
.L2887:
	xorl	%eax, %eax
.L2892:
	movdqu	(%rdx,%rax), %xmm0
	incl	%r10d
	paddb	(%r8,%rax), %xmm0
	movups	%xmm0, (%r9,%rax)
	addq	$16, %rax
	cmpl	%edi, %r10d
	jb	.L2892
	addl	%ebp, %ecx
	cmpl	%ebp, %r11d
	je	.L2932
.L2886:
	movq	656(%rsp), %rdi
	movslq	%ecx, %rax
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	1(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	2(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	3(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	4(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	5(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	6(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	7(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	8(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	9(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	10(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	11(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	12(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	13(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	leal	14(%rcx), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	cltq
	movzbl	(%rsi,%rax), %edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	jmp	.L2932
.L2858:
	testl	%r14d, %r14d
	jle	.L2932
	movq	656(%rsp), %rdi
	movl	%r12d, %eax
	negl	%eax
	movslq	%eax, %r9
	leaq	16(%rbx), %rax
	leaq	16(%rdi), %rdx
	leaq	(%rbx,%r9), %r8
	cmpq	%rdx, %rbx
	setnb	%cl
	cmpq	%rax, %rdi
	setnb	%dl
	orl	%ecx, %edx
	leaq	16(%r9), %rcx
	testq	%rcx, %rcx
	setle	%cl
	cmpq	%rax, %r8
	setnb	%al
	orl	%ecx, %eax
	testb	%al, %dl
	je	.L2871
	cmpl	$18, %r14d
	jbe	.L2871
	movq	%rdi, %rdx
	negq	%rdx
	andl	$15, %edx
	cmpl	%r14d, %edx
	cmova	%r14d, %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.L2872
	movzbl	(%r8), %eax
	addb	(%rdi), %al
	cmpl	$1, %edx
	movb	%al, (%rbx)
	je	.L3097
	movl	$1, %eax
	movzbl	1(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$2, %edx
	movb	%cl, 1(%rbx)
	je	.L3098
	movl	$2, %eax
	movzbl	2(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$3, %edx
	movb	%cl, 2(%rbx)
	je	.L3099
	movl	$3, %eax
	movzbl	3(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$4, %edx
	movb	%cl, 3(%rbx)
	je	.L3100
	movl	$4, %eax
	movzbl	4(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$5, %edx
	movb	%cl, 4(%rbx)
	je	.L3101
	movl	$5, %eax
	movzbl	5(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$6, %edx
	movb	%cl, 5(%rbx)
	je	.L3102
	movl	$6, %eax
	movzbl	6(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$7, %edx
	movb	%cl, 6(%rbx)
	je	.L3103
	movl	$7, %eax
	movzbl	7(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$8, %edx
	movb	%cl, 7(%rbx)
	je	.L3104
	movl	$8, %eax
	movzbl	8(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$9, %edx
	movb	%cl, 8(%rbx)
	je	.L3105
	movl	$9, %eax
	movzbl	9(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$10, %edx
	movb	%cl, 9(%rbx)
	je	.L3106
	movl	$10, %eax
	movzbl	10(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$11, %edx
	movb	%cl, 10(%rbx)
	je	.L3107
	movl	$11, %eax
	movzbl	11(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$12, %edx
	movb	%cl, 11(%rbx)
	je	.L3108
	movl	$12, %eax
	movzbl	12(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$13, %edx
	movb	%cl, 12(%rbx)
	je	.L3109
	movl	$13, %eax
	movzbl	13(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$14, %edx
	movb	%cl, 13(%rbx)
	je	.L3110
	movl	$14, %eax
	movzbl	14(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	movb	%cl, 14(%rbx)
	movl	$15, %ecx
.L2872:
	movl	%r14d, %esi
	movl	%edx, %r10d
	subl	%edx, %esi
	leal	-16(%rsi), %eax
	shrl	$4, %eax
	leal	1(%rax), %edi
	movl	%eax, %r11d
	leal	-1(%r14), %eax
	movl	%edi, %ebp
	subl	%edx, %eax
	sall	$4, %ebp
	cmpl	$14, %eax
	jbe	.L2925
	leaq	(%r10,%r9), %rax
	movq	%r10, %rdx
	addq	656(%rsp), %rdx
	leaq	(%rbx,%r10), %r9
	leaq	(%rbx,%rax), %r8
	leal	-4(%r11), %eax
	cmpl	$-6, %eax
	ja	.L3111
	shrl	$2, %eax
	leal	4(,%rax,4), %r10d
	xorl	%eax, %eax
.L2876:
	movdqu	(%r8), %xmm0
	prefetcht0	320(%rdx)
	prefetcht0	320(%r8)
	addl	$4, %eax
	prefetcht0	320(%r9)
	addq	$64, %rdx
	paddb	-64(%rdx), %xmm0
	movups	%xmm0, (%r9)
	addq	$64, %r8
	addq	$64, %r9
	movdqu	-48(%r8), %xmm0
	paddb	-48(%rdx), %xmm0
	movups	%xmm0, -48(%r9)
	movdqu	-32(%r8), %xmm0
	paddb	-32(%rdx), %xmm0
	movups	%xmm0, -32(%r9)
	movdqu	-16(%r8), %xmm0
	paddb	-16(%rdx), %xmm0
	movups	%xmm0, -16(%r9)
	cmpl	%r10d, %eax
	jne	.L2876
.L2875:
	xorl	%eax, %eax
.L2880:
	movdqu	(%r8,%rax), %xmm0
	incl	%r10d
	paddb	(%rdx,%rax), %xmm0
	movups	%xmm0, (%r9,%rax)
	addq	$16, %rax
	cmpl	%r10d, %edi
	ja	.L2880
	addl	%ebp, %ecx
	cmpl	%esi, %ebp
	je	.L2932
.L2925:
	movq	656(%rsp), %rdi
	movl	%ecx, %eax
	movslq	%ecx, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	1(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	2(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	3(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	4(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	5(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	6(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	7(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	8(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	9(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	10(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	11(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	12(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rdi,%rdx), %r8d
	addb	(%rbx,%rax), %r8b
	leal	13(%rcx), %eax
	cmpl	%eax, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	addl	$14, %ecx
	movzbl	(%rdi,%rdx), %r8d
	cltq
	addb	(%rbx,%rax), %r8b
	cmpl	%ecx, %r14d
	movb	%r8b, (%rbx,%rdx)
	jle	.L2932
	movslq	%ecx, %rdx
	subl	%r12d, %ecx
	movslq	%ecx, %rax
	movzbl	(%rdi,%rdx), %ecx
	addb	(%rbx,%rax), %cl
	movb	%cl, (%rbx,%rdx)
	.p2align 4,,7
.L2932:
	movslq	%r14d, %r14
	jmp	.L2864
.L2856:
	movq	656(%rsp), %rdx
	movslq	%r14d, %r14
	movq	%rbx, %rcx
	movq	%r14, %r8
	call	memcpy
	.p2align 4,,7
.L2864:
	addq	%r14, 656(%rsp)
.L2934:
	incl	40(%rsp)
	movl	40(%rsp), %eax
	cmpl	%eax, 688(%rsp)
	je	.L3554
	movl	64(%rsp), %esi
	movq	648(%rsp), %rdi
	movl	%esi, %eax
	movq	%rax, %rbx
	movq	%rax, 112(%rsp)
	movq	656(%rsp), %rax
	addq	(%rdi), %rbx
	movzbl	(%rax), %edi
	leaq	1(%rax), %rbp
	movl	%esi, %eax
	movl	88(%rsp), %esi
	addl	%esi, %eax
	cmpl	$4, %edi
	movl	%eax, 64(%rsp)
	jle	.L2831
.L2830:
	leaq	.LC93(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L3486:
	movaps	400(%rsp), %xmm6
	movaps	416(%rsp), %xmm7
	movaps	432(%rsp), %xmm8
	movaps	448(%rsp), %xmm9
	movaps	464(%rsp), %xmm10
	movaps	480(%rsp), %xmm11
	movaps	496(%rsp), %xmm12
	movaps	512(%rsp), %xmm13
	movaps	528(%rsp), %xmm14
	movaps	544(%rsp), %xmm15
	addq	$568, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L2860:
	testl	%r14d, %r14d
	jle	.L2932
	movl	%r12d, %eax
	leaq	16(%rbx), %r8
	negl	%eax
	movslq	%eax, %r10
	leaq	16(%r10), %rax
	leaq	(%rbx,%r10), %r9
	testq	%rax, %rax
	setle	%dl
	cmpq	%r9, %r8
	setbe	%al
	orl	%eax, %edx
	leaq	16(%rsi), %rax
	cmpq	%rax, %rbx
	setnb	%cl
	cmpq	%r8, %rsi
	setnb	%al
	orl	%ecx, %eax
	andl	%eax, %edx
	cmpl	$17, %r14d
	seta	%al
	testb	%al, %dl
	je	.L2895
	movq	656(%rsp), %rax
	addq	$16, %rax
	cmpq	%rax, %rbx
	setnb	%dl
	cmpq	%r8, 656(%rsp)
	setnb	%al
	orb	%al, %dl
	je	.L2895
	movq	656(%rsp), %rcx
	negq	%rcx
	andl	$15, %ecx
	cmpl	%r14d, %ecx
	cmova	%r14d, %ecx
	xorl	%r8d, %r8d
	testl	%ecx, %ecx
	je	.L2896
	movzbl	(%rsi), %edx
	movzbl	(%r9), %eax
	movq	656(%rsp), %rdi
	addl	%edx, %eax
	sarl	%eax
	addb	(%rdi), %al
	cmpl	$1, %ecx
	movb	%al, (%rbx)
	je	.L3129
	movl	$1, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	1(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	1(%rdi), %al
	cmpl	$2, %ecx
	movb	%al, 1(%rbx)
	je	.L3130
	movl	$2, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	2(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	2(%rdi), %al
	cmpl	$3, %ecx
	movb	%al, 2(%rbx)
	je	.L3131
	movl	$3, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	3(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	3(%rdi), %al
	cmpl	$4, %ecx
	movb	%al, 3(%rbx)
	je	.L3132
	movl	$4, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	4(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	4(%rdi), %al
	cmpl	$5, %ecx
	movb	%al, 4(%rbx)
	je	.L3133
	movl	$5, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	5(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	5(%rdi), %al
	cmpl	$6, %ecx
	movb	%al, 5(%rbx)
	je	.L3134
	movl	$6, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	6(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	6(%rdi), %al
	cmpl	$7, %ecx
	movb	%al, 6(%rbx)
	je	.L3135
	movl	$7, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	7(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	7(%rdi), %al
	cmpl	$8, %ecx
	movb	%al, 7(%rbx)
	je	.L3136
	movl	$8, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	8(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	8(%rdi), %al
	cmpl	$9, %ecx
	movb	%al, 8(%rbx)
	je	.L3137
	movl	$9, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	9(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	9(%rdi), %al
	cmpl	$10, %ecx
	movb	%al, 9(%rbx)
	je	.L3138
	movl	$10, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	10(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	10(%rdi), %al
	cmpl	$11, %ecx
	movb	%al, 10(%rbx)
	je	.L3139
	movl	$11, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	11(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	11(%rdi), %al
	cmpl	$12, %ecx
	movb	%al, 11(%rbx)
	je	.L3140
	movl	$12, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	12(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	12(%rdi), %al
	cmpl	$13, %ecx
	movb	%al, 12(%rbx)
	je	.L3141
	movl	$13, %eax
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	13(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	13(%rdi), %al
	cmpl	$14, %ecx
	movb	%al, 13(%rbx)
	je	.L3142
	movl	$14, %eax
	movl	$15, %r8d
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %edx
	movzbl	14(%rsi), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	14(%rdi), %al
	movb	%al, 14(%rbx)
.L2896:
	movl	%r14d, %edi
	movl	%ecx, %r9d
	subl	%ecx, %edi
	leal	-16(%rdi), %eax
	shrl	$4, %eax
	leal	1(%rax), %ebp
	movl	%eax, %r11d
	leal	-1(%r14), %eax
	movl	%ebp, %r13d
	subl	%ecx, %eax
	sall	$4, %r13d
	cmpl	$14, %eax
	jbe	.L2898
	leaq	(%r10,%r9), %rax
	movq	%r9, %rcx
	leaq	(%rsi,%r9), %rdx
	addq	656(%rsp), %rcx
	addq	%rbx, %r9
	leaq	(%rbx,%rax), %r10
	leal	-4(%r11), %eax
	cmpl	$-6, %eax
	ja	.L3143
	pxor	%xmm5, %xmm5
	shrl	$2, %eax
	pxor	%xmm0, %xmm0
	movdqa	.LC2(%rip), %xmm2
	leal	4(,%rax,4), %r11d
	xorl	%eax, %eax
.L2900:
	movdqu	(%rdx), %xmm9
	prefetcht0	96(%rcx)
	prefetcht0	96(%rdx)
	prefetcht0	96(%r10)
	addl	$4, %eax
	prefetcht0	96(%r9)
	movdqu	(%r10), %xmm8
	movdqa	%xmm9, %xmm3
	punpckhbw	%xmm5, %xmm9
	addq	$64, %rcx
	movdqa	%xmm8, %xmm4
	addq	$64, %rdx
	punpcklbw	%xmm5, %xmm3
	addq	$64, %r10
	punpcklbw	%xmm5, %xmm4
	addq	$64, %r9
	punpckhbw	%xmm5, %xmm8
	movdqa	%xmm3, %xmm1
	punpckhwd	%xmm0, %xmm3
	movdqa	%xmm4, %xmm10
	punpcklwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm10
	punpckhwd	%xmm0, %xmm4
	paddd	%xmm10, %xmm1
	psrad	$1, %xmm1
	paddd	%xmm4, %xmm3
	movdqa	%xmm1, %xmm4
	psrad	$1, %xmm3
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm3, %xmm4
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm3
	movdqa	%xmm8, %xmm4
	punpcklwd	%xmm0, %xmm4
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm9, %xmm3
	punpckhwd	%xmm0, %xmm9
	punpcklwd	%xmm0, %xmm3
	pand	%xmm2, %xmm1
	paddd	%xmm4, %xmm3
	movdqa	%xmm8, %xmm4
	psrad	$1, %xmm3
	movdqa	%xmm3, %xmm8
	punpckhwd	%xmm0, %xmm4
	paddd	%xmm9, %xmm4
	psrad	$1, %xmm4
	punpcklwd	%xmm4, %xmm3
	punpckhwd	%xmm4, %xmm8
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm8, %xmm3
	punpckhwd	%xmm8, %xmm4
	punpcklwd	%xmm4, %xmm3
	pand	%xmm2, %xmm3
	packuswb	%xmm3, %xmm1
	paddb	-64(%rcx), %xmm1
	movups	%xmm1, -64(%r9)
	movdqu	-48(%rdx), %xmm8
	movdqu	-48(%r10), %xmm9
	movdqa	%xmm8, %xmm4
	punpckhbw	%xmm5, %xmm8
	movdqa	%xmm9, %xmm3
	punpcklbw	%xmm5, %xmm4
	punpcklbw	%xmm5, %xmm3
	punpckhbw	%xmm5, %xmm9
	movdqa	%xmm4, %xmm10
	punpckhwd	%xmm0, %xmm4
	movdqa	%xmm3, %xmm1
	punpcklwd	%xmm0, %xmm10
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm3
	paddd	%xmm10, %xmm1
	psrad	$1, %xmm1
	paddd	%xmm4, %xmm3
	movdqa	%xmm1, %xmm4
	psrad	$1, %xmm3
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm3, %xmm4
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm3
	movdqa	%xmm8, %xmm4
	punpcklwd	%xmm0, %xmm4
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm9, %xmm3
	punpckhwd	%xmm0, %xmm9
	punpcklwd	%xmm0, %xmm3
	pand	%xmm2, %xmm1
	paddd	%xmm4, %xmm3
	movdqa	%xmm8, %xmm4
	psrad	$1, %xmm3
	movdqa	%xmm3, %xmm8
	punpckhwd	%xmm0, %xmm4
	paddd	%xmm9, %xmm4
	psrad	$1, %xmm4
	punpcklwd	%xmm4, %xmm3
	punpckhwd	%xmm4, %xmm8
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm8, %xmm3
	punpckhwd	%xmm8, %xmm4
	punpcklwd	%xmm4, %xmm3
	pand	%xmm2, %xmm3
	packuswb	%xmm3, %xmm1
	paddb	-48(%rcx), %xmm1
	movups	%xmm1, -48(%r9)
	movdqu	-32(%rdx), %xmm8
	movdqu	-32(%r10), %xmm9
	movdqa	%xmm8, %xmm4
	punpckhbw	%xmm5, %xmm8
	movdqa	%xmm9, %xmm3
	punpcklbw	%xmm5, %xmm4
	punpcklbw	%xmm5, %xmm3
	punpckhbw	%xmm5, %xmm9
	movdqa	%xmm4, %xmm10
	punpckhwd	%xmm0, %xmm4
	movdqa	%xmm3, %xmm1
	punpcklwd	%xmm0, %xmm10
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm3
	paddd	%xmm10, %xmm1
	psrad	$1, %xmm1
	paddd	%xmm4, %xmm3
	movdqa	%xmm1, %xmm4
	psrad	$1, %xmm3
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm3, %xmm4
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm3
	movdqa	%xmm8, %xmm4
	punpcklwd	%xmm0, %xmm4
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm9, %xmm3
	punpckhwd	%xmm0, %xmm9
	punpcklwd	%xmm0, %xmm3
	pand	%xmm2, %xmm1
	paddd	%xmm4, %xmm3
	movdqa	%xmm8, %xmm4
	psrad	$1, %xmm3
	movdqa	%xmm3, %xmm8
	punpckhwd	%xmm0, %xmm4
	paddd	%xmm9, %xmm4
	psrad	$1, %xmm4
	punpcklwd	%xmm4, %xmm3
	punpckhwd	%xmm4, %xmm8
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm8, %xmm3
	punpckhwd	%xmm8, %xmm4
	punpcklwd	%xmm4, %xmm3
	pand	%xmm2, %xmm3
	packuswb	%xmm3, %xmm1
	paddb	-32(%rcx), %xmm1
	movups	%xmm1, -32(%r9)
	movdqu	-16(%rdx), %xmm8
	movdqu	-16(%r10), %xmm9
	movdqa	%xmm8, %xmm4
	punpckhbw	%xmm5, %xmm8
	movdqa	%xmm9, %xmm3
	punpcklbw	%xmm5, %xmm4
	punpcklbw	%xmm5, %xmm3
	punpckhbw	%xmm5, %xmm9
	movdqa	%xmm4, %xmm10
	punpckhwd	%xmm0, %xmm4
	movdqa	%xmm3, %xmm1
	punpcklwd	%xmm0, %xmm10
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm3
	paddd	%xmm10, %xmm1
	psrad	$1, %xmm1
	paddd	%xmm4, %xmm3
	movdqa	%xmm1, %xmm4
	psrad	$1, %xmm3
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm3, %xmm4
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm3
	movdqa	%xmm8, %xmm4
	punpcklwd	%xmm0, %xmm4
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm9, %xmm3
	punpckhwd	%xmm0, %xmm9
	punpcklwd	%xmm0, %xmm3
	pand	%xmm2, %xmm1
	paddd	%xmm4, %xmm3
	movdqa	%xmm8, %xmm4
	psrad	$1, %xmm3
	movdqa	%xmm3, %xmm8
	punpckhwd	%xmm0, %xmm4
	paddd	%xmm9, %xmm4
	psrad	$1, %xmm4
	punpcklwd	%xmm4, %xmm3
	punpckhwd	%xmm4, %xmm8
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm8, %xmm3
	punpckhwd	%xmm8, %xmm4
	punpcklwd	%xmm4, %xmm3
	pand	%xmm2, %xmm3
	packuswb	%xmm3, %xmm1
	paddb	-16(%rcx), %xmm1
	movups	%xmm1, -16(%r9)
	cmpl	%eax, %r11d
	jne	.L2900
.L2899:
	pxor	%xmm9, %xmm9
	xorl	%eax, %eax
	pxor	%xmm8, %xmm8
.L2904:
	movdqu	(%rdx,%rax), %xmm4
	incl	%r11d
	movdqu	(%r10,%rax), %xmm5
	movdqa	%xmm4, %xmm1
	punpckhbw	%xmm9, %xmm4
	movdqa	%xmm5, %xmm3
	punpcklbw	%xmm9, %xmm1
	punpcklbw	%xmm9, %xmm3
	punpckhbw	%xmm9, %xmm5
	movdqa	%xmm1, %xmm10
	punpckhwd	%xmm8, %xmm1
	movdqa	%xmm3, %xmm0
	punpcklwd	%xmm8, %xmm10
	punpckhwd	%xmm8, %xmm3
	punpcklwd	%xmm8, %xmm0
	paddd	%xmm3, %xmm1
	psrad	$1, %xmm1
	paddd	%xmm10, %xmm0
	psrad	$1, %xmm0
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm3
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm1
	movdqa	%xmm4, %xmm3
	punpcklwd	%xmm8, %xmm3
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	punpckhwd	%xmm8, %xmm5
	punpcklwd	%xmm8, %xmm1
	pand	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	movdqa	%xmm4, %xmm3
	psrad	$1, %xmm1
	movdqa	%xmm1, %xmm4
	punpckhwd	%xmm8, %xmm3
	paddd	%xmm5, %xmm3
	psrad	$1, %xmm3
	punpcklwd	%xmm3, %xmm1
	punpckhwd	%xmm3, %xmm4
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm4, %xmm1
	punpckhwd	%xmm4, %xmm3
	punpcklwd	%xmm3, %xmm1
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm0
	paddb	(%rcx,%rax), %xmm0
	movups	%xmm0, (%r9,%rax)
	addq	$16, %rax
	cmpl	%ebp, %r11d
	jb	.L2904
	addl	%r13d, %r8d
	cmpl	%r13d, %edi
	je	.L2932
.L2898:
	movl	%r8d, %eax
	movslq	%r8d, %rdx
	movq	656(%rsp), %rdi
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	1(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	2(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	3(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	4(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	5(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	6(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	7(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	8(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	9(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	10(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	11(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	12(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	movb	%al, (%rbx,%rdx)
	leal	13(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L2932
	movslq	%eax, %rdx
	subl	%r12d, %eax
	addl	$14, %r8d
	cltq
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%rsi,%rdx), %eax
	addl	%ecx, %eax
	sarl	%eax
	addb	(%rdi,%rdx), %al
	cmpl	%r8d, %r14d
	movb	%al, (%rbx,%rdx)
	jle	.L2932
	movslq	%r8d, %rax
	subl	%r12d, %r8d
	movslq	%r8d, %rdx
	movzbl	(%rsi,%rax), %ecx
	movzbl	(%rbx,%rdx), %edx
	addl	%ecx, %edx
	sarl	%edx
	addb	(%rdi,%rax), %dl
	movb	%dl, (%rbx,%rax)
	jmp	.L2932
.L2863:
	testl	%r14d, %r14d
	jle	.L2932
	movl	%r12d, %eax
	leaq	16(%rbx), %rdx
	movq	656(%rsp), %rdi
	negl	%eax
	movslq	%eax, %r9
	leaq	16(%r9), %rcx
	leaq	(%rbx,%r9), %rax
	testq	%rcx, %rcx
	setle	%r8b
	cmpq	%rax, %rdx
	setbe	%cl
	orl	%r8d, %ecx
	leaq	16(%rdi), %r8
	cmpq	%r8, %rbx
	setnb	%r8b
	cmpq	%rdx, %rdi
	setnb	%dl
	orl	%r8d, %edx
	testb	%dl, %cl
	je	.L2922
	cmpl	$18, %r14d
	jbe	.L2922
	movq	%rdi, %rdx
	negq	%rdx
	andl	$15, %edx
	cmpl	%r14d, %edx
	cmova	%r14d, %edx
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.L2923
	movzbl	(%rax), %eax
	addb	(%rdi), %al
	cmpl	$1, %edx
	movb	%al, (%rbx)
	je	.L3162
	movl	$1, %eax
	movzbl	1(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$2, %edx
	movb	%cl, 1(%rbx)
	je	.L3163
	movl	$2, %eax
	movzbl	2(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$3, %edx
	movb	%cl, 2(%rbx)
	je	.L3164
	movl	$3, %eax
	movzbl	3(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$4, %edx
	movb	%cl, 3(%rbx)
	je	.L3165
	movl	$4, %eax
	movzbl	4(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$5, %edx
	movb	%cl, 4(%rbx)
	je	.L3166
	movl	$5, %eax
	movzbl	5(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$6, %edx
	movb	%cl, 5(%rbx)
	je	.L3167
	movl	$6, %eax
	movzbl	6(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$7, %edx
	movb	%cl, 6(%rbx)
	je	.L3168
	movl	$7, %eax
	movzbl	7(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$8, %edx
	movb	%cl, 7(%rbx)
	je	.L3169
	movl	$8, %eax
	movzbl	8(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$9, %edx
	movb	%cl, 8(%rbx)
	je	.L3170
	movl	$9, %eax
	movzbl	9(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$10, %edx
	movb	%cl, 9(%rbx)
	je	.L3171
	movl	$10, %eax
	movzbl	10(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$11, %edx
	movb	%cl, 10(%rbx)
	je	.L3172
	movl	$11, %eax
	movzbl	11(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$12, %edx
	movb	%cl, 11(%rbx)
	je	.L3173
	movl	$12, %eax
	movzbl	12(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$13, %edx
	movb	%cl, 12(%rbx)
	je	.L3174
	movl	$13, %eax
	movzbl	13(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	cmpl	$14, %edx
	movb	%cl, 13(%rbx)
	je	.L3175
	movl	$14, %eax
	movzbl	14(%rdi), %ecx
	subl	%r12d, %eax
	cltq
	addb	(%rbx,%rax), %cl
	movb	%cl, 14(%rbx)
	movl	$15, %ecx
.L2923:
	movl	%r14d, %r11d
	movl	%edx, %r8d
	subl	%edx, %r11d
	leal	-16(%r11), %eax
	shrl	$4, %eax
	leal	1(%rax), %esi
	movl	%eax, %r10d
	leal	-1(%r14), %eax
	movl	%esi, %edi
	subl	%edx, %eax
	sall	$4, %edi
	cmpl	$14, %eax
	jbe	.L2925
	leaq	(%r9,%r8), %rax
	movq	%r8, %rdx
	addq	%rbx, %r8
	addq	656(%rsp), %rdx
	leaq	(%rbx,%rax), %r9
	leal	-4(%r10), %eax
	cmpl	$-6, %eax
	ja	.L3176
	shrl	$2, %eax
	leal	4(,%rax,4), %r10d
	xorl	%eax, %eax
.L2927:
	movdqu	(%r9), %xmm0
	prefetcht0	320(%rdx)
	prefetcht0	320(%r9)
	addl	$4, %eax
	prefetcht0	320(%r8)
	addq	$64, %rdx
	paddb	-64(%rdx), %xmm0
	movups	%xmm0, (%r8)
	addq	$64, %r9
	addq	$64, %r8
	movdqu	-48(%r9), %xmm0
	paddb	-48(%rdx), %xmm0
	movups	%xmm0, -48(%r8)
	movdqu	-32(%r9), %xmm0
	paddb	-32(%rdx), %xmm0
	movups	%xmm0, -32(%r8)
	movdqu	-16(%r9), %xmm0
	paddb	-16(%rdx), %xmm0
	movups	%xmm0, -16(%r8)
	cmpl	%r10d, %eax
	jne	.L2927
.L2926:
	xorl	%eax, %eax
.L2931:
	movdqu	(%r9,%rax), %xmm0
	incl	%r10d
	paddb	(%rdx,%rax), %xmm0
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpl	%esi, %r10d
	jb	.L2931
	addl	%edi, %ecx
	cmpl	%edi, %r11d
	jne	.L2925
	jmp	.L2932
	.p2align 4,,7
.L2854:
	movl	200(%rsp), %eax
	cmpl	%eax, 672(%rsp)
	je	.L2935
	leaq	.LC3(%rip), %rdx
	leaq	.LC95(%rip), %rcx
	movl	$4377, %r8d
	call	_assert
.L2935:
	cmpl	$6, %edi
	ja	.L2936
	leaq	.L2938(%rip), %rax
	movl	%edi, %edi
	movslq	(%rax,%rdi,4), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L2938:
	.long	.L2937-.L2938
	.long	.L2939-.L2938
	.long	.L2940-.L2938
	.long	.L2941-.L2938
	.long	.L2942-.L2938
	.long	.L2943-.L2938
	.long	.L2944-.L2938
	.text
.L2943:
	movl	184(%rsp), %edi
	testl	%edi, %edi
	je	.L2936
	movq	72(%rsp), %rax
	movslq	%r12d, %rbp
	movl	104(%rsp), %r9d
	movl	656(%rsp), %esi
	leal	-1(%r12), %edx
	movq	%rbx, %rcx
	pxor	%xmm1, %xmm1
	leaq	16(%rbx), %r15
	leaq	(%rbx,%rax), %r13
	movl	%ebp, %eax
	movslq	%r9d, %r14
	negl	%eax
	negl	%esi
	movl	%edi, 152(%rsp)
	movl	%eax, 144(%rsp)
	movq	656(%rsp), %rax
	subq	%r14, %rcx
	movl	%edx, 204(%rsp)
	movl	%esi, %edi
	.p2align 4,,7
.L3012:
	testl	%r12d, %r12d
	jle	.L3021
	cmpq	$0, 48(%rsp)
	setle	%r8b
	cmpq	%r13, %r15
	setbe	%dl
	orl	%edx, %r8d
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rbx
	setnb	%r10b
	cmpq	%r15, %rax
	setnb	%dl
	orl	%r10d, %edx
	testb	%dl, %r8b
	je	.L3013
	cmpl	$18, %r12d
	jbe	.L3013
	movl	%edi, %r10d
	andl	$15, %r10d
	cmpl	%r12d, %r10d
	cmova	%r12d, %r10d
	xorl	%edx, %edx
	testl	%r10d, %r10d
	je	.L3014
	movzbl	0(%r13), %edx
	sarl	%edx
	addb	(%rax), %dl
	cmpl	$1, %r10d
	movb	%dl, (%rbx)
	je	.L3243
	movzbl	1(%rcx), %edx
	sarl	%edx
	addb	1(%rax), %dl
	cmpl	$2, %r10d
	movb	%dl, 1(%rbx)
	je	.L3244
	movzbl	2(%rcx), %edx
	sarl	%edx
	addb	2(%rax), %dl
	cmpl	$3, %r10d
	movb	%dl, 2(%rbx)
	je	.L3245
	movzbl	3(%rcx), %edx
	sarl	%edx
	addb	3(%rax), %dl
	cmpl	$4, %r10d
	movb	%dl, 3(%rbx)
	je	.L3246
	movzbl	4(%rcx), %edx
	sarl	%edx
	addb	4(%rax), %dl
	cmpl	$5, %r10d
	movb	%dl, 4(%rbx)
	je	.L3247
	movzbl	5(%rcx), %edx
	sarl	%edx
	addb	5(%rax), %dl
	cmpl	$6, %r10d
	movb	%dl, 5(%rbx)
	je	.L3248
	movzbl	6(%rcx), %edx
	sarl	%edx
	addb	6(%rax), %dl
	cmpl	$7, %r10d
	movb	%dl, 6(%rbx)
	je	.L3249
	movzbl	7(%rcx), %edx
	sarl	%edx
	addb	7(%rax), %dl
	cmpl	$8, %r10d
	movb	%dl, 7(%rbx)
	je	.L3250
	movzbl	8(%rcx), %edx
	sarl	%edx
	addb	8(%rax), %dl
	cmpl	$9, %r10d
	movb	%dl, 8(%rbx)
	je	.L3251
	movzbl	9(%rcx), %edx
	sarl	%edx
	addb	9(%rax), %dl
	cmpl	$10, %r10d
	movb	%dl, 9(%rbx)
	je	.L3252
	movzbl	10(%rcx), %edx
	sarl	%edx
	addb	10(%rax), %dl
	cmpl	$11, %r10d
	movb	%dl, 10(%rbx)
	je	.L3253
	movzbl	11(%rcx), %edx
	sarl	%edx
	addb	11(%rax), %dl
	cmpl	$12, %r10d
	movb	%dl, 11(%rbx)
	je	.L3254
	movzbl	12(%rcx), %edx
	sarl	%edx
	addb	12(%rax), %dl
	cmpl	$13, %r10d
	movb	%dl, 12(%rbx)
	je	.L3255
	movzbl	13(%rcx), %edx
	sarl	%edx
	addb	13(%rax), %dl
	cmpl	$14, %r10d
	movb	%dl, 13(%rbx)
	je	.L3256
	movzbl	14(%rcx), %edx
	sarl	%edx
	addb	14(%rax), %dl
	movb	%dl, 14(%rbx)
	movl	$15, %edx
.L3014:
	movl	%r12d, %esi
	movl	%r10d, %r8d
	subl	%r10d, %esi
	movl	%esi, 160(%rsp)
	subl	$16, %esi
	shrl	$4, %esi
	leal	1(%rsi), %r11d
	movl	%r11d, 188(%rsp)
	sall	$4, %r11d
	movl	%r11d, 176(%rsp)
	movl	204(%rsp), %r11d
	subl	%r10d, %r11d
	cmpl	$14, %r11d
	jbe	.L3016
	movq	72(%rsp), %r10
	subl	$4, %esi
	leaq	(%rax,%r8), %r11
	addq	%r8, %r10
	addq	%rbx, %r8
	addq	%rbx, %r10
	cmpl	$-6, %esi
	ja	.L3257
	shrl	$2, %esi
	movdqa	%xmm7, %xmm2
	leal	4(,%rsi,4), %esi
	movl	%esi, 96(%rsp)
	xorl	%esi, %esi
.L3018:
	movdqu	(%r10), %xmm3
	prefetcht0	304(%r11)
	prefetcht0	304(%r10)
	prefetcht0	304(%r8)
	addq	$64, %r11
	addq	$64, %r10
	movdqa	%xmm3, %xmm0
	punpckhbw	%xmm1, %xmm3
	addq	$64, %r8
	addl	$4, %esi
	punpcklbw	%xmm1, %xmm0
	psrlw	$1, %xmm3
	pand	%xmm7, %xmm3
	psrlw	$1, %xmm0
	pand	%xmm7, %xmm0
	packuswb	%xmm3, %xmm0
	paddb	-64(%r11), %xmm0
	movups	%xmm0, -64(%r8)
	movdqu	-48(%r10), %xmm3
	movdqa	%xmm3, %xmm0
	punpckhbw	%xmm1, %xmm3
	punpcklbw	%xmm1, %xmm0
	psrlw	$1, %xmm3
	pand	%xmm7, %xmm3
	psrlw	$1, %xmm0
	pand	%xmm7, %xmm0
	packuswb	%xmm3, %xmm0
	paddb	-48(%r11), %xmm0
	movups	%xmm0, -48(%r8)
	movdqu	-32(%r10), %xmm3
	movdqa	%xmm3, %xmm0
	punpckhbw	%xmm1, %xmm3
	punpcklbw	%xmm1, %xmm0
	psrlw	$1, %xmm3
	pand	%xmm7, %xmm3
	psrlw	$1, %xmm0
	pand	%xmm7, %xmm0
	packuswb	%xmm3, %xmm0
	paddb	-32(%r11), %xmm0
	movups	%xmm0, -32(%r8)
	movdqu	-16(%r10), %xmm3
	movdqa	%xmm3, %xmm0
	punpckhbw	%xmm1, %xmm3
	punpcklbw	%xmm1, %xmm0
	psrlw	$1, %xmm3
	pand	%xmm7, %xmm3
	psrlw	$1, %xmm0
	pand	%xmm7, %xmm0
	packuswb	%xmm3, %xmm0
	paddb	-16(%r11), %xmm0
	movups	%xmm0, -16(%r8)
	cmpl	%esi, 96(%rsp)
	jne	.L3018
.L3017:
	xorl	%esi, %esi
	movq	%rax, 208(%rsp)
.L3023:
	movdqu	(%r10,%rsi), %xmm3
	incl	96(%rsp)
	movdqa	%xmm3, %xmm0
	punpckhbw	%xmm1, %xmm3
	movl	96(%rsp), %eax
	punpcklbw	%xmm1, %xmm0
	psrlw	$1, %xmm3
	pand	%xmm2, %xmm3
	psrlw	$1, %xmm0
	pand	%xmm2, %xmm0
	packuswb	%xmm3, %xmm0
	paddb	(%r11,%rsi), %xmm0
	movups	%xmm0, (%r8,%rsi)
	addq	$16, %rsi
	cmpl	188(%rsp), %eax
	jb	.L3023
	movl	176(%rsp), %esi
	movq	208(%rsp), %rax
	addl	%esi, %edx
	cmpl	%esi, 160(%rsp)
	je	.L3021
	.p2align 4,,7
.L3016:
	movl	%edx, %r8d
	movslq	%edx, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	1(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	2(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	3(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	4(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	5(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	6(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	7(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	8(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	9(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	10(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	11(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	12(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	13(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3021
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	addl	$14, %edx
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	cmpl	%edx, %r12d
	movb	%r8b, (%rbx,%r10)
	jle	.L3021
	movslq	%edx, %r8
	subl	%r9d, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %edx
	sarl	%edx
	addb	(%rax,%r8), %dl
	movb	%dl, (%rbx,%r8)
.L3021:
	movb	$-1, (%rbx,%rbp)
	addq	%rbp, %rax
	addq	%r14, %rbx
	addq	%r14, %r13
	addq	%r14, %r15
	addq	%r14, %rcx
	addl	144(%rsp), %edi
	decl	152(%rsp)
	jne	.L3012
.L3515:
	movl	680(%rsp), %eax
	subl	$2, %eax
	incq	%rax
	imulq	%rbp, %rax
	addq	%rax, 656(%rsp)
	jmp	.L2936
.L2942:
	movl	184(%rsp), %eax
	testl	%eax, %eax
	je	.L2936
	movslq	%r12d, %rdi
	movq	656(%rsp), %rbp
	movl	%eax, 144(%rsp)
	movq	%rdi, 96(%rsp)
	movslq	104(%rsp), %rdi
	movq	%rdi, 152(%rsp)
	.p2align 4,,7
.L3006:
	movq	72(%rsp), %rax
	xorl	%r8d, %r8d
	testl	%r12d, %r12d
	leaq	(%rsi,%rax), %r14
	leaq	(%rbx,%rax), %r13
	jg	.L3485
	jmp	.L3009
	.p2align 4,,7
.L3555:
	cmpl	%eax, %edx
	jg	.L3284
	addl	%edi, %r9d
	movb	%r9b, (%rbx,%r8)
	incq	%r8
	cmpl	%r8d, %r12d
	jle	.L3009
.L3485:
	movzbl	(%rsi,%r8), %r10d
	movzbl	0(%r13,%r8), %r9d
	movzbl	(%r14,%r8), %r11d
	movzbl	0(%rbp,%r8), %edi
	leal	(%r10,%r9), %eax
	subl	%r11d, %eax
	movl	%eax, %edx
	subl	%r9d, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %edx
	subl	%ecx, %edx
	movl	%eax, %ecx
	subl	%r11d, %eax
	subl	%r10d, %ecx
	movl	%ecx, %r15d
	sarl	$31, %r15d
	xorl	%r15d, %ecx
	subl	%r15d, %ecx
	movl	%eax, %r15d
	sarl	$31, %r15d
	xorl	%r15d, %eax
	subl	%r15d, %eax
	cmpl	%ecx, %edx
	jle	.L3555
.L3284:
	cmpl	%eax, %ecx
	movl	%r10d, %r9d
	cmovg	%r11d, %r9d
	addl	%edi, %r9d
	movb	%r9b, (%rbx,%r8)
	incq	%r8
	cmpl	%r8d, %r12d
	jg	.L3485
.L3009:
	movq	96(%rsp), %rax
	movb	$-1, (%rbx,%rax)
	addq	%rax, %rbp
	movq	152(%rsp), %rax
	addq	%rax, %rbx
	addq	%rax, %rsi
	decl	144(%rsp)
	jne	.L3006
	movl	680(%rsp), %eax
	movq	96(%rsp), %r14
	subl	$2, %eax
	incq	%rax
	imulq	%rax, %r14
	addq	%r14, 656(%rsp)
	jmp	.L2936
.L2941:
	movl	184(%rsp), %edi
	testl	%edi, %edi
	je	.L2936
	movq	72(%rsp), %rax
	movslq	%r12d, %r14
	movl	104(%rsp), %r9d
	movl	656(%rsp), %ebp
	movl	%edi, 152(%rsp)
	leal	-1(%r12), %edi
	movdqa	.LC2(%rip), %xmm8
	movq	%rbx, %rcx
	leaq	(%rbx,%rax), %r15
	movl	%r14d, %eax
	movslq	%r9d, %r13
	negl	%eax
	pxor	%xmm3, %xmm3
	movl	%eax, 160(%rsp)
	pxor	%xmm0, %xmm0
	movq	656(%rsp), %rax
	movdqa	%xmm8, %xmm4
	subq	%r13, %rcx
	negl	%ebp
	movl	%edi, 208(%rsp)
	movq	%r14, 144(%rsp)
	.p2align 4,,7
.L2991:
	testl	%r12d, %r12d
	jle	.L3000
	cmpq	$0, 48(%rsp)
	leaq	16(%rbx), %r10
	setle	%r8b
	cmpq	%r15, %r10
	setbe	%dl
	orl	%edx, %r8d
	leaq	16(%rsi), %rdx
	cmpq	%rdx, %rbx
	setnb	%r11b
	cmpq	%r10, %rsi
	setnb	%dl
	orl	%r11d, %edx
	andl	%edx, %r8d
	cmpl	$17, %r12d
	seta	%dl
	testb	%dl, %r8b
	je	.L2992
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rbx
	setnb	%dl
	cmpq	%r10, %rax
	setnb	%r8b
	orb	%r8b, %dl
	je	.L2992
	movl	%ebp, %r10d
	andl	$15, %r10d
	cmpl	%r12d, %r10d
	cmova	%r12d, %r10d
	xorl	%edx, %edx
	testl	%r10d, %r10d
	je	.L2993
	movzbl	(%rsi), %r8d
	movzbl	(%r15), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	(%rax), %dl
	cmpl	$1, %r10d
	movb	%dl, (%rbx)
	je	.L3226
	movzbl	1(%rsi), %r8d
	movzbl	1(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	1(%rax), %dl
	cmpl	$2, %r10d
	movb	%dl, 1(%rbx)
	je	.L3227
	movzbl	2(%rsi), %r8d
	movzbl	2(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	2(%rax), %dl
	cmpl	$3, %r10d
	movb	%dl, 2(%rbx)
	je	.L3228
	movzbl	3(%rsi), %r8d
	movzbl	3(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	3(%rax), %dl
	cmpl	$4, %r10d
	movb	%dl, 3(%rbx)
	je	.L3229
	movzbl	4(%rsi), %r8d
	movzbl	4(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	4(%rax), %dl
	cmpl	$5, %r10d
	movb	%dl, 4(%rbx)
	je	.L3230
	movzbl	5(%rsi), %r8d
	movzbl	5(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	5(%rax), %dl
	cmpl	$6, %r10d
	movb	%dl, 5(%rbx)
	je	.L3231
	movzbl	6(%rsi), %r8d
	movzbl	6(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	6(%rax), %dl
	cmpl	$7, %r10d
	movb	%dl, 6(%rbx)
	je	.L3232
	movzbl	7(%rsi), %r8d
	movzbl	7(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	7(%rax), %dl
	cmpl	$8, %r10d
	movb	%dl, 7(%rbx)
	je	.L3233
	movzbl	8(%rsi), %r8d
	movzbl	8(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	8(%rax), %dl
	cmpl	$9, %r10d
	movb	%dl, 8(%rbx)
	je	.L3234
	movzbl	9(%rsi), %r8d
	movzbl	9(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	9(%rax), %dl
	cmpl	$10, %r10d
	movb	%dl, 9(%rbx)
	je	.L3235
	movzbl	10(%rsi), %r8d
	movzbl	10(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	10(%rax), %dl
	cmpl	$11, %r10d
	movb	%dl, 10(%rbx)
	je	.L3236
	movzbl	11(%rsi), %r8d
	movzbl	11(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	11(%rax), %dl
	cmpl	$12, %r10d
	movb	%dl, 11(%rbx)
	je	.L3237
	movzbl	12(%rsi), %r8d
	movzbl	12(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	12(%rax), %dl
	cmpl	$13, %r10d
	movb	%dl, 12(%rbx)
	je	.L3238
	movzbl	13(%rsi), %r8d
	movzbl	13(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	13(%rax), %dl
	cmpl	$14, %r10d
	movb	%dl, 13(%rbx)
	je	.L3239
	movzbl	14(%rsi), %r8d
	movzbl	14(%rcx), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	14(%rax), %dl
	movb	%dl, 14(%rbx)
	movl	$15, %edx
.L2993:
	movl	%r12d, %edi
	movl	%r10d, %r8d
	subl	%r10d, %edi
	leal	-16(%rdi), %r14d
	movl	%edi, 176(%rsp)
	shrl	$4, %r14d
	leal	1(%r14), %edi
	movl	%edi, 204(%rsp)
	sall	$4, %edi
	movl	%edi, 188(%rsp)
	movl	208(%rsp), %edi
	subl	%r10d, %edi
	cmpl	$14, %edi
	jbe	.L2995
	movq	72(%rsp), %r10
	subl	$4, %r14d
	leaq	(%rax,%r8), %r11
	leaq	(%rsi,%r8), %rdi
	addq	%r8, %r10
	addq	%rbx, %r8
	addq	%rbx, %r10
	cmpl	$-6, %r14d
	ja	.L3240
	shrl	$2, %r14d
	movdqa	%xmm4, %xmm5
	leal	4(,%r14,4), %r14d
	movl	%r14d, 96(%rsp)
	xorl	%r14d, %r14d
.L2997:
	movdqu	(%rdi), %xmm11
	prefetcht0	96(%r11)
	prefetcht0	96(%rdi)
	prefetcht0	96(%r10)
	prefetcht0	96(%r8)
	addq	$64, %r11
	movdqu	(%r10), %xmm10
	movdqa	%xmm11, %xmm2
	punpckhbw	%xmm3, %xmm11
	addq	$64, %rdi
	movdqa	%xmm10, %xmm12
	addq	$64, %r10
	punpcklbw	%xmm3, %xmm2
	addq	$64, %r8
	punpcklbw	%xmm3, %xmm12
	addl	$4, %r14d
	punpckhbw	%xmm3, %xmm10
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm12, %xmm9
	punpcklwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm9
	punpckhwd	%xmm0, %xmm12
	paddd	%xmm9, %xmm1
	psrad	$1, %xmm1
	movdqa	%xmm1, %xmm9
	paddd	%xmm12, %xmm2
	psrad	$1, %xmm2
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm9
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm9, %xmm1
	punpckhwd	%xmm9, %xmm2
	movdqa	%xmm10, %xmm9
	punpcklwd	%xmm0, %xmm9
	punpcklwd	%xmm2, %xmm1
	movdqa	%xmm11, %xmm2
	punpckhwd	%xmm0, %xmm11
	punpcklwd	%xmm0, %xmm2
	pand	%xmm4, %xmm1
	paddd	%xmm9, %xmm2
	movdqa	%xmm10, %xmm9
	psrad	$1, %xmm2
	movdqa	%xmm2, %xmm10
	punpckhwd	%xmm0, %xmm9
	paddd	%xmm11, %xmm9
	psrad	$1, %xmm9
	punpcklwd	%xmm9, %xmm2
	punpckhwd	%xmm9, %xmm10
	movdqa	%xmm2, %xmm9
	punpcklwd	%xmm10, %xmm2
	punpckhwd	%xmm10, %xmm9
	punpcklwd	%xmm9, %xmm2
	pand	%xmm4, %xmm2
	packuswb	%xmm2, %xmm1
	paddb	-64(%r11), %xmm1
	movups	%xmm1, -64(%r8)
	movdqu	-48(%rdi), %xmm11
	movdqu	-48(%r10), %xmm10
	movdqa	%xmm11, %xmm2
	punpckhbw	%xmm3, %xmm11
	movdqa	%xmm10, %xmm12
	punpcklbw	%xmm3, %xmm2
	punpcklbw	%xmm3, %xmm12
	punpckhbw	%xmm3, %xmm10
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm12, %xmm9
	punpcklwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm9
	punpckhwd	%xmm0, %xmm12
	paddd	%xmm9, %xmm1
	psrad	$1, %xmm1
	movdqa	%xmm1, %xmm9
	paddd	%xmm12, %xmm2
	psrad	$1, %xmm2
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm9
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm9, %xmm1
	punpckhwd	%xmm9, %xmm2
	movdqa	%xmm10, %xmm9
	punpcklwd	%xmm0, %xmm9
	punpcklwd	%xmm2, %xmm1
	movdqa	%xmm11, %xmm2
	punpckhwd	%xmm0, %xmm11
	punpcklwd	%xmm0, %xmm2
	pand	%xmm4, %xmm1
	paddd	%xmm9, %xmm2
	movdqa	%xmm10, %xmm9
	psrad	$1, %xmm2
	movdqa	%xmm2, %xmm10
	punpckhwd	%xmm0, %xmm9
	paddd	%xmm11, %xmm9
	psrad	$1, %xmm9
	punpcklwd	%xmm9, %xmm2
	punpckhwd	%xmm9, %xmm10
	movdqa	%xmm2, %xmm9
	punpcklwd	%xmm10, %xmm2
	punpckhwd	%xmm10, %xmm9
	punpcklwd	%xmm9, %xmm2
	pand	%xmm4, %xmm2
	packuswb	%xmm2, %xmm1
	paddb	-48(%r11), %xmm1
	movups	%xmm1, -48(%r8)
	movdqu	-32(%rdi), %xmm11
	movdqu	-32(%r10), %xmm10
	movdqa	%xmm11, %xmm2
	punpckhbw	%xmm3, %xmm11
	movdqa	%xmm10, %xmm12
	punpcklbw	%xmm3, %xmm2
	punpcklbw	%xmm3, %xmm12
	punpckhbw	%xmm3, %xmm10
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm12, %xmm9
	punpcklwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm9
	punpckhwd	%xmm0, %xmm12
	paddd	%xmm9, %xmm1
	psrad	$1, %xmm1
	movdqa	%xmm1, %xmm9
	paddd	%xmm12, %xmm2
	psrad	$1, %xmm2
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm9
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm9, %xmm1
	punpckhwd	%xmm9, %xmm2
	movdqa	%xmm10, %xmm9
	punpcklwd	%xmm0, %xmm9
	punpcklwd	%xmm2, %xmm1
	movdqa	%xmm11, %xmm2
	punpckhwd	%xmm0, %xmm11
	punpcklwd	%xmm0, %xmm2
	pand	%xmm4, %xmm1
	paddd	%xmm9, %xmm2
	movdqa	%xmm10, %xmm9
	psrad	$1, %xmm2
	movdqa	%xmm2, %xmm10
	punpckhwd	%xmm0, %xmm9
	paddd	%xmm11, %xmm9
	psrad	$1, %xmm9
	punpcklwd	%xmm9, %xmm2
	punpckhwd	%xmm9, %xmm10
	movdqa	%xmm2, %xmm9
	punpcklwd	%xmm10, %xmm2
	punpckhwd	%xmm10, %xmm9
	punpcklwd	%xmm9, %xmm2
	pand	%xmm4, %xmm2
	packuswb	%xmm2, %xmm1
	paddb	-32(%r11), %xmm1
	movups	%xmm1, -32(%r8)
	movdqu	-16(%rdi), %xmm11
	movdqu	-16(%r10), %xmm10
	movdqa	%xmm11, %xmm2
	punpckhbw	%xmm3, %xmm11
	movdqa	%xmm10, %xmm12
	punpcklbw	%xmm3, %xmm2
	punpcklbw	%xmm3, %xmm12
	punpckhbw	%xmm3, %xmm10
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm12, %xmm9
	punpcklwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm9
	punpckhwd	%xmm0, %xmm12
	paddd	%xmm9, %xmm1
	psrad	$1, %xmm1
	movdqa	%xmm1, %xmm9
	paddd	%xmm12, %xmm2
	psrad	$1, %xmm2
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm9
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm9, %xmm1
	punpckhwd	%xmm9, %xmm2
	movdqa	%xmm10, %xmm9
	punpcklwd	%xmm0, %xmm9
	punpcklwd	%xmm2, %xmm1
	movdqa	%xmm11, %xmm2
	punpckhwd	%xmm0, %xmm11
	punpcklwd	%xmm0, %xmm2
	pand	%xmm4, %xmm1
	paddd	%xmm9, %xmm2
	movdqa	%xmm10, %xmm9
	psrad	$1, %xmm2
	movdqa	%xmm2, %xmm10
	punpckhwd	%xmm0, %xmm9
	paddd	%xmm11, %xmm9
	psrad	$1, %xmm9
	punpcklwd	%xmm9, %xmm2
	punpckhwd	%xmm9, %xmm10
	movdqa	%xmm2, %xmm9
	punpcklwd	%xmm10, %xmm2
	punpckhwd	%xmm10, %xmm9
	punpcklwd	%xmm9, %xmm2
	pand	%xmm4, %xmm2
	packuswb	%xmm2, %xmm1
	paddb	-16(%r11), %xmm1
	movups	%xmm1, -16(%r8)
	cmpl	%r14d, 96(%rsp)
	jne	.L2997
.L2996:
	xorl	%r14d, %r14d
	movq	%rax, 216(%rsp)
.L3002:
	movdqu	(%rdi,%r14), %xmm11
	incl	96(%rsp)
	movdqu	(%r10,%r14), %xmm10
	movdqa	%xmm11, %xmm1
	punpckhbw	%xmm3, %xmm11
	movl	96(%rsp), %eax
	movdqa	%xmm10, %xmm12
	punpcklbw	%xmm3, %xmm1
	punpcklbw	%xmm3, %xmm12
	punpckhbw	%xmm3, %xmm10
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm12, %xmm9
	punpcklwd	%xmm0, %xmm2
	punpcklwd	%xmm0, %xmm9
	punpckhwd	%xmm0, %xmm12
	paddd	%xmm2, %xmm9
	psrad	$1, %xmm9
	movdqa	%xmm9, %xmm2
	paddd	%xmm12, %xmm1
	psrad	$1, %xmm1
	punpcklwd	%xmm1, %xmm9
	punpckhwd	%xmm1, %xmm2
	movdqa	%xmm9, %xmm1
	punpcklwd	%xmm2, %xmm9
	punpckhwd	%xmm2, %xmm1
	movdqa	%xmm10, %xmm2
	punpcklwd	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm9
	movdqa	%xmm11, %xmm1
	punpckhwd	%xmm0, %xmm11
	punpcklwd	%xmm0, %xmm1
	pand	%xmm5, %xmm9
	paddd	%xmm2, %xmm1
	movdqa	%xmm10, %xmm2
	psrad	$1, %xmm1
	movdqa	%xmm1, %xmm10
	punpckhwd	%xmm0, %xmm2
	paddd	%xmm11, %xmm2
	psrad	$1, %xmm2
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm10
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm10, %xmm1
	punpckhwd	%xmm10, %xmm2
	punpcklwd	%xmm2, %xmm1
	pand	%xmm5, %xmm1
	packuswb	%xmm1, %xmm9
	paddb	(%r11,%r14), %xmm9
	movups	%xmm9, (%r8,%r14)
	addq	$16, %r14
	cmpl	204(%rsp), %eax
	jb	.L3002
	movl	188(%rsp), %edi
	movq	216(%rsp), %rax
	addl	%edi, %edx
	cmpl	%edi, 176(%rsp)
	je	.L3000
	.p2align 4,,7
.L2995:
	movl	%edx, %r8d
	movslq	%edx, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	1(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	2(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	3(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	4(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	5(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	6(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	7(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	8(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	9(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	10(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	11(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	12(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	movb	%r8b, (%rbx,%r10)
	leal	13(%rdx), %r8d
	cmpl	%r8d, %r12d
	jle	.L3000
	movslq	%r8d, %r10
	subl	%r9d, %r8d
	addl	$14, %edx
	movslq	%r8d, %r8
	movzbl	(%rbx,%r8), %r11d
	movzbl	(%rsi,%r10), %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	addb	(%rax,%r10), %r8b
	cmpl	%edx, %r12d
	movb	%r8b, (%rbx,%r10)
	jle	.L3000
	movslq	%edx, %r8
	subl	%r9d, %edx
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %r10d
	movzbl	(%rsi,%r8), %edx
	addl	%r10d, %edx
	sarl	%edx
	addb	(%rax,%r8), %dl
	movb	%dl, (%rbx,%r8)
.L3000:
	movq	144(%rsp), %rdi
	addq	%r13, %rsi
	addq	%r13, %r15
	addq	%r13, %rcx
	addl	160(%rsp), %ebp
	movb	$-1, (%rbx,%rdi)
	addq	%rdi, %rax
	addq	%r13, %rbx
	decl	152(%rsp)
	jne	.L2991
	movl	680(%rsp), %eax
	subl	$2, %eax
	incq	%rax
	imulq	%rdi, %rax
	addq	%rax, 656(%rsp)
	jmp	.L2936
.L2940:
	movl	184(%rsp), %edi
	testl	%edi, %edi
	je	.L2936
	movslq	%r12d, %rbp
	movl	656(%rsp), %r15d
	leal	-1(%r12), %ecx
	movl	%ebp, %eax
	movslq	104(%rsp), %r14
	leaq	16(%rbx), %r13
	negl	%eax
	movl	%ecx, 176(%rsp)
	negl	%r15d
	movl	%eax, 96(%rsp)
	movq	656(%rsp), %rax
	movl	%r15d, %ecx
	movl	%edi, %r15d
	movl	%ecx, %edi
	.p2align 4,,7
.L2976:
	testl	%r12d, %r12d
	jle	.L2985
	leaq	16(%rsi), %rdx
	cmpq	%rdx, %rbx
	setnb	%cl
	cmpq	%r13, %rsi
	setnb	%dl
	orl	%edx, %ecx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rbx
	setnb	%r8b
	cmpq	%r13, %rax
	setnb	%dl
	orl	%r8d, %edx
	testb	%dl, %cl
	je	.L2977
	cmpl	$18, %r12d
	jbe	.L2977
	movl	%edi, %r8d
	andl	$15, %r8d
	cmpl	%r12d, %r8d
	cmova	%r12d, %r8d
	xorl	%edx, %edx
	testl	%r8d, %r8d
	je	.L2978
	movzbl	(%rsi), %edx
	addb	(%rax), %dl
	cmpl	$1, %r8d
	movb	%dl, (%rbx)
	je	.L3210
	movzbl	1(%rsi), %edx
	addb	1(%rax), %dl
	cmpl	$2, %r8d
	movb	%dl, 1(%rbx)
	je	.L3211
	movzbl	2(%rsi), %edx
	addb	2(%rax), %dl
	cmpl	$3, %r8d
	movb	%dl, 2(%rbx)
	je	.L3212
	movzbl	3(%rsi), %edx
	addb	3(%rax), %dl
	cmpl	$4, %r8d
	movb	%dl, 3(%rbx)
	je	.L3213
	movzbl	4(%rsi), %edx
	addb	4(%rax), %dl
	cmpl	$5, %r8d
	movb	%dl, 4(%rbx)
	je	.L3214
	movzbl	5(%rsi), %edx
	addb	5(%rax), %dl
	cmpl	$6, %r8d
	movb	%dl, 5(%rbx)
	je	.L3215
	movzbl	6(%rsi), %edx
	addb	6(%rax), %dl
	cmpl	$7, %r8d
	movb	%dl, 6(%rbx)
	je	.L3216
	movzbl	7(%rsi), %edx
	addb	7(%rax), %dl
	cmpl	$8, %r8d
	movb	%dl, 7(%rbx)
	je	.L3217
	movzbl	8(%rsi), %edx
	addb	8(%rax), %dl
	cmpl	$9, %r8d
	movb	%dl, 8(%rbx)
	je	.L3218
	movzbl	9(%rsi), %edx
	addb	9(%rax), %dl
	cmpl	$10, %r8d
	movb	%dl, 9(%rbx)
	je	.L3219
	movzbl	10(%rsi), %edx
	addb	10(%rax), %dl
	cmpl	$11, %r8d
	movb	%dl, 10(%rbx)
	je	.L3220
	movzbl	11(%rsi), %edx
	addb	11(%rax), %dl
	cmpl	$12, %r8d
	movb	%dl, 11(%rbx)
	je	.L3221
	movzbl	12(%rsi), %edx
	addb	12(%rax), %dl
	cmpl	$13, %r8d
	movb	%dl, 12(%rbx)
	je	.L3222
	movzbl	13(%rsi), %edx
	addb	13(%rax), %dl
	cmpl	$14, %r8d
	movb	%dl, 13(%rbx)
	je	.L3223
	movzbl	14(%rsi), %edx
	addb	14(%rax), %dl
	movb	%dl, 14(%rbx)
	movl	$15, %edx
.L2978:
	movl	%r12d, %r11d
	movl	%r8d, %ecx
	subl	%r8d, %r11d
	leal	-16(%r11), %r10d
	movl	%r11d, 144(%rsp)
	shrl	$4, %r10d
	leal	1(%r10), %r11d
	movl	%r11d, 160(%rsp)
	sall	$4, %r11d
	movl	%r11d, 152(%rsp)
	movl	176(%rsp), %r11d
	subl	%r8d, %r11d
	cmpl	$14, %r11d
	jbe	.L2980
	subl	$4, %r10d
	leaq	(%rax,%rcx), %r8
	leaq	(%rsi,%rcx), %r9
	addq	%rbx, %rcx
	cmpl	$-6, %r10d
	ja	.L3224
	shrl	$2, %r10d
	leal	4(,%r10,4), %r11d
	xorl	%r10d, %r10d
.L2982:
	movdqu	(%r9), %xmm0
	prefetcht0	320(%r8)
	prefetcht0	320(%r9)
	addl	$4, %r10d
	prefetcht0	320(%rcx)
	addq	$64, %r8
	paddb	-64(%r8), %xmm0
	movups	%xmm0, (%rcx)
	addq	$64, %r9
	addq	$64, %rcx
	movdqu	-48(%r9), %xmm0
	paddb	-48(%r8), %xmm0
	movups	%xmm0, -48(%rcx)
	movdqu	-32(%r9), %xmm0
	paddb	-32(%r8), %xmm0
	movups	%xmm0, -32(%rcx)
	movdqu	-16(%r9), %xmm0
	paddb	-16(%r8), %xmm0
	movups	%xmm0, -16(%rcx)
	cmpl	%r10d, %r11d
	jne	.L2982
.L2981:
	xorl	%r10d, %r10d
.L2987:
	movdqu	(%r9,%r10), %xmm0
	incl	%r11d
	paddb	(%r8,%r10), %xmm0
	movups	%xmm0, (%rcx,%r10)
	addq	$16, %r10
	cmpl	160(%rsp), %r11d
	jb	.L2987
	movl	152(%rsp), %ecx
	addl	%ecx, %edx
	cmpl	%ecx, 144(%rsp)
	je	.L2985
	.p2align 4,,7
.L2980:
	movslq	%edx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	1(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	2(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	3(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	4(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	5(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	6(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	7(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	8(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	9(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	10(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	11(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	12(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	movb	%r8b, (%rbx,%rcx)
	leal	13(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2985
	movslq	%ecx, %rcx
	addl	$14, %edx
	movzbl	(%rsi,%rcx), %r8d
	addb	(%rax,%rcx), %r8b
	cmpl	%edx, %r12d
	movb	%r8b, (%rbx,%rcx)
	jle	.L2985
	movslq	%edx, %rdx
	movzbl	(%rsi,%rdx), %ecx
	addb	(%rax,%rdx), %cl
	movb	%cl, (%rbx,%rdx)
.L2985:
	movb	$-1, (%rbx,%rbp)
	addq	%rbp, %rax
	addq	%r14, %rbx
	addq	%r14, %rsi
	addq	%r14, %r13
	addl	96(%rsp), %edi
	decl	%r15d
	jne	.L2976
	jmp	.L3515
.L2939:
	movl	184(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L2936
	movq	72(%rsp), %rax
	movslq	%r12d, %r13
	movl	104(%rsp), %r9d
	movl	656(%rsp), %edi
	leaq	16(%rbx), %r15
	leal	-1(%r12), %esi
	movq	%rbx, %rcx
	movl	%ebp, 152(%rsp)
	leaq	(%rbx,%rax), %r10
	movl	%r13d, %eax
	movslq	%r9d, %r14
	negl	%eax
	negl	%edi
	subq	%r14, %rcx
	movl	%eax, 144(%rsp)
	movq	656(%rsp), %rax
	movq	%r14, %rbp
	movl	%esi, 204(%rsp)
	movq	%r15, %r14
	movl	%edi, %r15d
	.p2align 4,,7
.L2961:
	testl	%r12d, %r12d
	jle	.L2970
	cmpq	$0, 48(%rsp)
	setle	%r8b
	cmpq	%r10, %r14
	setbe	%dl
	orl	%edx, %r8d
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rbx
	setnb	%r11b
	cmpq	%r14, %rax
	setnb	%dl
	orl	%r11d, %edx
	testb	%dl, %r8b
	je	.L2962
	cmpl	$18, %r12d
	jbe	.L2962
	movl	%r15d, %r11d
	andl	$15, %r11d
	cmpl	%r12d, %r11d
	cmova	%r12d, %r11d
	xorl	%edx, %edx
	testl	%r11d, %r11d
	je	.L2963
	movzbl	(%r10), %edx
	addb	(%rax), %dl
	cmpl	$1, %r11d
	movb	%dl, (%rbx)
	je	.L3194
	movzbl	1(%rcx), %edx
	addb	1(%rax), %dl
	cmpl	$2, %r11d
	movb	%dl, 1(%rbx)
	je	.L3195
	movzbl	2(%rcx), %edx
	addb	2(%rax), %dl
	cmpl	$3, %r11d
	movb	%dl, 2(%rbx)
	je	.L3196
	movzbl	3(%rcx), %edx
	addb	3(%rax), %dl
	cmpl	$4, %r11d
	movb	%dl, 3(%rbx)
	je	.L3197
	movzbl	4(%rcx), %edx
	addb	4(%rax), %dl
	cmpl	$5, %r11d
	movb	%dl, 4(%rbx)
	je	.L3198
	movzbl	5(%rcx), %edx
	addb	5(%rax), %dl
	cmpl	$6, %r11d
	movb	%dl, 5(%rbx)
	je	.L3199
	movzbl	6(%rcx), %edx
	addb	6(%rax), %dl
	cmpl	$7, %r11d
	movb	%dl, 6(%rbx)
	je	.L3200
	movzbl	7(%rcx), %edx
	addb	7(%rax), %dl
	cmpl	$8, %r11d
	movb	%dl, 7(%rbx)
	je	.L3201
	movzbl	8(%rcx), %edx
	addb	8(%rax), %dl
	cmpl	$9, %r11d
	movb	%dl, 8(%rbx)
	je	.L3202
	movzbl	9(%rcx), %edx
	addb	9(%rax), %dl
	cmpl	$10, %r11d
	movb	%dl, 9(%rbx)
	je	.L3203
	movzbl	10(%rcx), %edx
	addb	10(%rax), %dl
	cmpl	$11, %r11d
	movb	%dl, 10(%rbx)
	je	.L3204
	movzbl	11(%rcx), %edx
	addb	11(%rax), %dl
	cmpl	$12, %r11d
	movb	%dl, 11(%rbx)
	je	.L3205
	movzbl	12(%rcx), %edx
	addb	12(%rax), %dl
	cmpl	$13, %r11d
	movb	%dl, 12(%rbx)
	je	.L3206
	movzbl	13(%rcx), %edx
	addb	13(%rax), %dl
	cmpl	$14, %r11d
	movb	%dl, 13(%rbx)
	je	.L3207
	movzbl	14(%rcx), %edx
	addb	14(%rax), %dl
	movb	%dl, 14(%rbx)
	movl	$15, %edx
.L2963:
	movl	%r12d, %edi
	movl	%r11d, %r8d
	subl	%r11d, %edi
	movl	%edi, 160(%rsp)
	subl	$16, %edi
	shrl	$4, %edi
	leal	1(%rdi), %esi
	movl	%esi, 188(%rsp)
	sall	$4, %esi
	movl	%esi, 176(%rsp)
	movl	204(%rsp), %esi
	subl	%r11d, %esi
	cmpl	$14, %esi
	jbe	.L2965
	movq	72(%rsp), %r11
	subl	$4, %edi
	leaq	(%rax,%r8), %rsi
	addq	%r8, %r11
	addq	%rbx, %r8
	addq	%rbx, %r11
	cmpl	$-6, %edi
	ja	.L3208
	shrl	$2, %edi
	leal	4(,%rdi,4), %edi
	movl	%edi, 96(%rsp)
	xorl	%edi, %edi
.L2967:
	movdqu	(%r11), %xmm0
	prefetcht0	320(%rsi)
	prefetcht0	320(%r11)
	prefetcht0	320(%r8)
	addq	$64, %rsi
	addq	$64, %r11
	paddb	-64(%rsi), %xmm0
	movups	%xmm0, (%r8)
	addl	$4, %edi
	addq	$64, %r8
	movdqu	-48(%r11), %xmm0
	paddb	-48(%rsi), %xmm0
	movups	%xmm0, -48(%r8)
	movdqu	-32(%r11), %xmm0
	paddb	-32(%rsi), %xmm0
	movups	%xmm0, -32(%r8)
	movdqu	-16(%r11), %xmm0
	paddb	-16(%rsi), %xmm0
	movups	%xmm0, -16(%r8)
	cmpl	%edi, 96(%rsp)
	jne	.L2967
.L2966:
	xorl	%edi, %edi
	movq	%rax, 208(%rsp)
.L2972:
	movdqu	(%r11,%rdi), %xmm0
	incl	96(%rsp)
	paddb	(%rsi,%rdi), %xmm0
	movl	96(%rsp), %eax
	movups	%xmm0, (%r8,%rdi)
	addq	$16, %rdi
	cmpl	188(%rsp), %eax
	jb	.L2972
	movl	176(%rsp), %edi
	movq	208(%rsp), %rax
	addl	%edi, %edx
	cmpl	%edi, 160(%rsp)
	je	.L2970
	.p2align 4,,7
.L2965:
	movl	%edx, %r8d
	movslq	%edx, %r11
	subl	%r9d, %r8d
	movzbl	(%rax,%r11), %esi
	movslq	%r8d, %r8
	addb	(%rbx,%r8), %sil
	leal	1(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	2(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	3(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	4(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	5(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	6(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	7(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	8(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	9(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	10(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	11(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	12(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	13(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	addl	$14, %edx
	movzbl	(%rax,%r11), %esi
	movslq	%r8d, %r8
	addb	(%rbx,%r8), %sil
	cmpl	%edx, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L2970
	movslq	%edx, %r8
	subl	%r9d, %edx
	movzbl	(%rax,%r8), %r11d
	movslq	%edx, %rdx
	addb	(%rbx,%rdx), %r11b
	movb	%r11b, (%rbx,%r8)
.L2970:
	movb	$-1, (%rbx,%r13)
	addq	%r13, %rax
	addq	%rbp, %rbx
	addq	%rbp, %r10
	addq	%rbp, %r14
	addq	%rbp, %rcx
	addl	144(%rsp), %r15d
	decl	152(%rsp)
	jne	.L2961
	jmp	.L3514
.L2937:
	movl	184(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L2936
	movslq	%r12d, %r15
	movl	656(%rsp), %ebp
	movslq	104(%rsp), %r14
	movl	%r15d, %eax
	leal	-1(%r12), %edi
	negl	%eax
	movl	%eax, 96(%rsp)
	movq	656(%rsp), %rax
	negl	%ebp
	movl	%edi, 144(%rsp)
	.p2align 4,,7
.L2946:
	testl	%r12d, %r12d
	jle	.L2955
	leaq	16(%rbx), %rdx
	cmpq	%rdx, %rax
	leaq	16(%rax), %rdx
	setnb	%cl
	cmpq	%rdx, %rbx
	setnb	%dl
	orb	%dl, %cl
	je	.L2947
	cmpl	$20, %r12d
	jbe	.L2947
	movl	%ebp, %r8d
	andl	$15, %r8d
	cmpl	%r12d, %r8d
	cmova	%r12d, %r8d
	xorl	%edx, %edx
	testl	%r8d, %r8d
	je	.L2948
	movzbl	(%rax), %edx
	cmpl	$1, %r8d
	movb	%dl, (%rbx)
	je	.L3178
	movzbl	1(%rax), %edx
	cmpl	$2, %r8d
	movb	%dl, 1(%rbx)
	je	.L3179
	movzbl	2(%rax), %edx
	cmpl	$3, %r8d
	movb	%dl, 2(%rbx)
	je	.L3180
	movzbl	3(%rax), %edx
	cmpl	$4, %r8d
	movb	%dl, 3(%rbx)
	je	.L3181
	movzbl	4(%rax), %edx
	cmpl	$5, %r8d
	movb	%dl, 4(%rbx)
	je	.L3182
	movzbl	5(%rax), %edx
	cmpl	$6, %r8d
	movb	%dl, 5(%rbx)
	je	.L3183
	movzbl	6(%rax), %edx
	cmpl	$7, %r8d
	movb	%dl, 6(%rbx)
	je	.L3184
	movzbl	7(%rax), %edx
	cmpl	$8, %r8d
	movb	%dl, 7(%rbx)
	je	.L3185
	movzbl	8(%rax), %edx
	cmpl	$9, %r8d
	movb	%dl, 8(%rbx)
	je	.L3186
	movzbl	9(%rax), %edx
	cmpl	$10, %r8d
	movb	%dl, 9(%rbx)
	je	.L3187
	movzbl	10(%rax), %edx
	cmpl	$11, %r8d
	movb	%dl, 10(%rbx)
	je	.L3188
	movzbl	11(%rax), %edx
	cmpl	$12, %r8d
	movb	%dl, 11(%rbx)
	je	.L3189
	movzbl	12(%rax), %edx
	cmpl	$13, %r8d
	movb	%dl, 12(%rbx)
	je	.L3190
	movzbl	13(%rax), %edx
	cmpl	$14, %r8d
	movb	%dl, 13(%rbx)
	je	.L3191
	movzbl	14(%rax), %edx
	movb	%dl, 14(%rbx)
	movl	$15, %edx
.L2948:
	movl	%r12d, %r11d
	movl	144(%rsp), %r10d
	movl	%r8d, %ecx
	subl	%r8d, %r11d
	leal	-16(%r11), %r9d
	subl	%r8d, %r10d
	shrl	$4, %r9d
	leal	1(%r9), %esi
	movl	%esi, %edi
	sall	$4, %edi
	cmpl	$14, %r10d
	jbe	.L2950
	subl	$4, %r9d
	leaq	(%rax,%rcx), %r8
	addq	%rbx, %rcx
	cmpl	$-6, %r9d
	ja	.L3192
	shrl	$2, %r9d
	leal	4(,%r9,4), %r10d
	xorl	%r9d, %r9d
.L2952:
	movdqa	(%r8), %xmm0
	prefetcht0	464(%r8)
	addl	$4, %r9d
	prefetcht0	464(%rcx)
	addq	$64, %r8
	addq	$64, %rcx
	movups	%xmm0, -64(%rcx)
	movdqa	-48(%r8), %xmm0
	movups	%xmm0, -48(%rcx)
	movdqa	-32(%r8), %xmm0
	movups	%xmm0, -32(%rcx)
	movdqa	-16(%r8), %xmm0
	movups	%xmm0, -16(%rcx)
	cmpl	%r10d, %r9d
	jne	.L2952
.L2951:
	xorl	%r9d, %r9d
.L2957:
	movdqa	(%r8,%r9), %xmm0
	incl	%r10d
	movups	%xmm0, (%rcx,%r9)
	addq	$16, %r9
	cmpl	%esi, %r10d
	jb	.L2957
	addl	%edi, %edx
	cmpl	%edi, %r11d
	je	.L2955
	.p2align 4,,7
.L2950:
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	1(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	2(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	3(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	4(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	5(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	6(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	7(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	8(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	9(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	10(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	11(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	12(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %r8d
	movb	%r8b, (%rbx,%rcx)
	leal	13(%rdx), %ecx
	cmpl	%ecx, %r12d
	jle	.L2955
	movslq	%ecx, %rcx
	addl	$14, %edx
	movzbl	(%rax,%rcx), %r8d
	cmpl	%edx, %r12d
	movb	%r8b, (%rbx,%rcx)
	jle	.L2955
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %ecx
	movb	%cl, (%rbx,%rdx)
.L2955:
	movb	$-1, (%rbx,%r15)
	addq	%r15, %rax
	addq	%r14, %rbx
	addl	96(%rsp), %ebp
	decl	%r13d
	jne	.L2946
	movl	680(%rsp), %eax
	subl	$2, %eax
	incq	%rax
	imulq	%r15, %rax
	addq	%rax, 656(%rsp)
	jmp	.L2936
.L2944:
	movl	184(%rsp), %ebp
	testl	%ebp, %ebp
	je	.L2936
	movq	72(%rsp), %rax
	movslq	%r12d, %r13
	movl	104(%rsp), %r9d
	movl	656(%rsp), %edi
	leal	-1(%r12), %esi
	movq	%rbx, %rcx
	leaq	16(%rbx), %r15
	movl	%ebp, 152(%rsp)
	leaq	(%rbx,%rax), %r10
	movl	%r13d, %eax
	movslq	%r9d, %r14
	negl	%eax
	negl	%edi
	movl	%esi, 204(%rsp)
	movl	%eax, 144(%rsp)
	movq	656(%rsp), %rax
	movq	%r14, %rsi
	subq	%r14, %rcx
	movl	%edi, %ebp
	movq	%r13, %r14
	movq	%rsi, %r13
	.p2align 4,,7
.L3027:
	testl	%r12d, %r12d
	jle	.L3036
	cmpq	$0, 48(%rsp)
	setle	%r8b
	cmpq	%r10, %r15
	setbe	%dl
	orl	%edx, %r8d
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rbx
	setnb	%r11b
	cmpq	%r15, %rax
	setnb	%dl
	orl	%r11d, %edx
	testb	%dl, %r8b
	je	.L3028
	cmpl	$18, %r12d
	jbe	.L3028
	movl	%ebp, %r11d
	andl	$15, %r11d
	cmpl	%r12d, %r11d
	cmova	%r12d, %r11d
	xorl	%edx, %edx
	testl	%r11d, %r11d
	je	.L3029
	movzbl	(%r10), %edx
	addb	(%rax), %dl
	cmpl	$1, %r11d
	movb	%dl, (%rbx)
	je	.L3259
	movzbl	1(%rcx), %edx
	addb	1(%rax), %dl
	cmpl	$2, %r11d
	movb	%dl, 1(%rbx)
	je	.L3260
	movzbl	2(%rcx), %edx
	addb	2(%rax), %dl
	cmpl	$3, %r11d
	movb	%dl, 2(%rbx)
	je	.L3261
	movzbl	3(%rcx), %edx
	addb	3(%rax), %dl
	cmpl	$4, %r11d
	movb	%dl, 3(%rbx)
	je	.L3262
	movzbl	4(%rcx), %edx
	addb	4(%rax), %dl
	cmpl	$5, %r11d
	movb	%dl, 4(%rbx)
	je	.L3263
	movzbl	5(%rcx), %edx
	addb	5(%rax), %dl
	cmpl	$6, %r11d
	movb	%dl, 5(%rbx)
	je	.L3264
	movzbl	6(%rcx), %edx
	addb	6(%rax), %dl
	cmpl	$7, %r11d
	movb	%dl, 6(%rbx)
	je	.L3265
	movzbl	7(%rcx), %edx
	addb	7(%rax), %dl
	cmpl	$8, %r11d
	movb	%dl, 7(%rbx)
	je	.L3266
	movzbl	8(%rcx), %edx
	addb	8(%rax), %dl
	cmpl	$9, %r11d
	movb	%dl, 8(%rbx)
	je	.L3267
	movzbl	9(%rcx), %edx
	addb	9(%rax), %dl
	cmpl	$10, %r11d
	movb	%dl, 9(%rbx)
	je	.L3268
	movzbl	10(%rcx), %edx
	addb	10(%rax), %dl
	cmpl	$11, %r11d
	movb	%dl, 10(%rbx)
	je	.L3269
	movzbl	11(%rcx), %edx
	addb	11(%rax), %dl
	cmpl	$12, %r11d
	movb	%dl, 11(%rbx)
	je	.L3270
	movzbl	12(%rcx), %edx
	addb	12(%rax), %dl
	cmpl	$13, %r11d
	movb	%dl, 12(%rbx)
	je	.L3271
	movzbl	13(%rcx), %edx
	addb	13(%rax), %dl
	cmpl	$14, %r11d
	movb	%dl, 13(%rbx)
	je	.L3272
	movzbl	14(%rcx), %edx
	addb	14(%rax), %dl
	movb	%dl, 14(%rbx)
	movl	$15, %edx
.L3029:
	movl	%r12d, %edi
	movl	%r11d, %r8d
	subl	%r11d, %edi
	movl	%edi, 160(%rsp)
	subl	$16, %edi
	shrl	$4, %edi
	leal	1(%rdi), %esi
	movl	%esi, 188(%rsp)
	sall	$4, %esi
	movl	%esi, 176(%rsp)
	movl	204(%rsp), %esi
	subl	%r11d, %esi
	cmpl	$14, %esi
	jbe	.L3031
	movq	72(%rsp), %r11
	subl	$4, %edi
	leaq	(%rax,%r8), %rsi
	addq	%r8, %r11
	addq	%rbx, %r8
	addq	%rbx, %r11
	cmpl	$-6, %edi
	ja	.L3273
	shrl	$2, %edi
	leal	4(,%rdi,4), %edi
	movl	%edi, 96(%rsp)
	xorl	%edi, %edi
.L3033:
	movdqu	(%r11), %xmm0
	prefetcht0	320(%rsi)
	prefetcht0	320(%r11)
	prefetcht0	320(%r8)
	addq	$64, %rsi
	addq	$64, %r11
	paddb	-64(%rsi), %xmm0
	movups	%xmm0, (%r8)
	addl	$4, %edi
	addq	$64, %r8
	movdqu	-48(%r11), %xmm0
	paddb	-48(%rsi), %xmm0
	movups	%xmm0, -48(%r8)
	movdqu	-32(%r11), %xmm0
	paddb	-32(%rsi), %xmm0
	movups	%xmm0, -32(%r8)
	movdqu	-16(%r11), %xmm0
	paddb	-16(%rsi), %xmm0
	movups	%xmm0, -16(%r8)
	cmpl	%edi, 96(%rsp)
	jne	.L3033
.L3032:
	xorl	%edi, %edi
	movq	%rax, 208(%rsp)
.L3038:
	movdqu	(%r11,%rdi), %xmm0
	incl	96(%rsp)
	paddb	(%rsi,%rdi), %xmm0
	movl	96(%rsp), %eax
	movups	%xmm0, (%r8,%rdi)
	addq	$16, %rdi
	cmpl	188(%rsp), %eax
	jb	.L3038
	movl	176(%rsp), %edi
	movq	208(%rsp), %rax
	addl	%edi, %edx
	cmpl	%edi, 160(%rsp)
	je	.L3036
	.p2align 4,,7
.L3031:
	movl	%edx, %r8d
	movslq	%edx, %r11
	subl	%r9d, %r8d
	movzbl	(%rax,%r11), %esi
	movslq	%r8d, %r8
	addb	(%rbx,%r8), %sil
	leal	1(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	2(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	3(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	4(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	5(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	6(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	7(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	8(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	9(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	10(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	11(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	12(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rax,%r11), %esi
	addb	(%rbx,%r8), %sil
	leal	13(%rdx), %r8d
	cmpl	%r8d, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%r8d, %r11
	subl	%r9d, %r8d
	addl	$14, %edx
	movzbl	(%rax,%r11), %esi
	movslq	%r8d, %r8
	addb	(%rbx,%r8), %sil
	cmpl	%edx, %r12d
	movb	%sil, (%rbx,%r11)
	jle	.L3036
	movslq	%edx, %r8
	subl	%r9d, %edx
	movzbl	(%rax,%r8), %r11d
	movslq	%edx, %rdx
	addb	(%rbx,%rdx), %r11b
	movb	%r11b, (%rbx,%r8)
.L3036:
	movb	$-1, (%rbx,%r14)
	addq	%r14, %rax
	addq	%r13, %rbx
	addq	%r13, %r10
	addq	%r13, %r15
	addq	%r13, %rcx
	addl	144(%rsp), %ebp
	decl	152(%rsp)
	jne	.L3027
	movq	%r14, %r13
.L3514:
	movl	680(%rsp), %eax
	subl	$2, %eax
	incq	%rax
	imulq	%r13, %rax
	addq	%rax, 656(%rsp)
.L2936:
	cmpl	$16, 696(%rsp)
	jne	.L2934
	movl	680(%rsp), %r10d
	movq	648(%rsp), %rax
	testl	%r10d, %r10d
	movq	(%rax), %rcx
	je	.L2934
	movq	112(%rsp), %rdi
	movslq	%r12d, %rax
	movslq	104(%rsp), %rdx
	movl	680(%rsp), %r8d
	leaq	1(%rdi,%rax), %rax
	addq	%rcx, %rax
	xorl	%ecx, %ecx
	.p2align 4,,7
.L3041:
	incl	%ecx
	movb	$-1, (%rax)
	addq	%rdx, %rax
	cmpl	%ecx, %r8d
	jne	.L3041
	jmp	.L2934
	.p2align 4,,7
.L2832:
	movl	40(%rsp), %r11d
	movq	%rbx, %rsi
	subq	120(%rsp), %rsi
	testl	%r11d, %r11d
	je	.L2834
.L2836:
	testl	%r12d, %r12d
	jg	.L2835
	cmpl	$8, 696(%rsp)
	jne	.L2848
	.p2align 4,,7
.L3550:
	movl	128(%rsp), %eax
	cmpl	%eax, 672(%rsp)
	je	.L2849
	movq	192(%rsp), %rax
	movb	$-1, (%rbx,%rax)
.L2849:
	movslq	672(%rsp), %rax
	addq	192(%rsp), %rbp
	addq	%rax, %rbx
	movq	%rbp, 656(%rsp)
	addq	%rax, %rsi
	jmp	.L2850
	.p2align 4,,7
.L3551:
	movl	128(%rsp), %eax
	cmpl	%eax, 672(%rsp)
	movslq	%r12d, %rax
	je	.L2853
	movb	$-1, (%rbx,%rax)
	movb	$-1, 1(%rbx,%rax)
.L2853:
	addq	%rbp, %rax
	movq	%rax, 656(%rsp)
	movslq	104(%rsp), %rax
	addq	%rax, %rbx
	addq	%rax, %rsi
	jmp	.L2850
	.p2align 4,,7
.L3549:
	leaq	.LC3(%rip), %rdx
	leaq	.LC94(%rip), %rcx
	movl	$4315, %r8d
	call	_assert
	jmp	.L2833
	.p2align 4,,7
.L3013:
	xorl	%edx, %edx
	.p2align 4,,7
.L3025:
	movzbl	0(%r13,%rdx), %r8d
	sarl	%r8d
	addb	(%rax,%rdx), %r8b
	movb	%r8b, (%rbx,%rdx)
	incq	%rdx
	cmpl	%edx, %r12d
	jg	.L3025
	jmp	.L3021
	.p2align 4,,7
.L3028:
	xorl	%edx, %edx
	.p2align 4,,7
.L3040:
	movzbl	(%r10,%rdx), %r8d
	addb	(%rax,%rdx), %r8b
	movb	%r8b, (%rbx,%rdx)
	incq	%rdx
	cmpl	%edx, %r12d
	jg	.L3040
	jmp	.L3036
	.p2align 4,,7
.L2962:
	xorl	%edx, %edx
	.p2align 4,,7
.L2974:
	movzbl	(%r10,%rdx), %r8d
	addb	(%rax,%rdx), %r8b
	movb	%r8b, (%rbx,%rdx)
	incq	%rdx
	cmpl	%edx, %r12d
	jg	.L2974
	jmp	.L2970
	.p2align 4,,7
.L2947:
	xorl	%edx, %edx
	.p2align 4,,7
.L2959:
	movzbl	(%rax,%rdx), %ecx
	movb	%cl, (%rbx,%rdx)
	incq	%rdx
	cmpl	%edx, %r12d
	jg	.L2959
	jmp	.L2955
	.p2align 4,,7
.L2977:
	xorl	%edx, %edx
	.p2align 4,,7
.L2989:
	movzbl	(%rsi,%rdx), %ecx
	addb	(%rax,%rdx), %cl
	movb	%cl, (%rbx,%rdx)
	incq	%rdx
	cmpl	%edx, %r12d
	jg	.L2989
	jmp	.L2985
	.p2align 4,,7
.L2992:
	xorl	%r10d, %r10d
	.p2align 4,,7
.L3004:
	movzbl	(%rsi,%r10), %r8d
	movzbl	(%r15,%r10), %edx
	addl	%r8d, %edx
	sarl	%edx
	addb	(%rax,%r10), %dl
	movb	%dl, (%rbx,%r10)
	incq	%r10
	cmpl	%r10d, %r12d
	jg	.L3004
	jmp	.L3000
.L3548:
	movl	4(%rbp), %ecx
	cmpl	%ecx, 688(%rsp)
	jne	.L2825
	cmpl	%edi, %eax
	je	.L2826
.L2827:
	leaq	.LC92(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3486
.L3554:
	cmpl	$7, 696(%rsp)
	jle	.L3556
	cmpl	$16, 696(%rsp)
	jne	.L2828
	movl	680(%rsp), %edx
	movq	648(%rsp), %rax
	imull	688(%rsp), %edx
	movq	(%rax), %rax
	imull	672(%rsp), %edx
	testl	%edx, %edx
	je	.L2828
	decl	%edx
	leaq	2(%rax,%rdx,2), %r8
.L3092:
	movzbl	(%rax), %edx
	movzbl	1(%rax), %ecx
	addq	$2, %rax
	sall	$8, %edx
	orl	%ecx, %edx
	movw	%dx, -2(%rax)
	cmpq	%r8, %rax
	jne	.L3092
.L2828:
	movl	$1, %eax
	jmp	.L3486
.L3556:
	movl	168(%rsp), %r14d
	movl	80(%rsp), %eax
	movl	232(%rsp), %edi
	subq	%rax, %r14
	movl	%edi, %eax
	subl	$8, %eax
	movl	%eax, %esi
	movl	%eax, 284(%rsp)
	shrl	$3, %eax
	leal	1(%rax), %ebx
	leal	-15(%rax), %edx
	cmpl	$15, %ebx
	movl	%ebx, 388(%rsp)
	movq	%rbx, 216(%rsp)
	seta	283(%rsp)
	salq	$3, %rbx
	shrl	$4, %edx
	movq	%rbx, 208(%rsp)
	leal	1(%rdx), %ebx
	movl	%ebx, 384(%rsp)
	sall	$4, %ebx
	movl	%ebx, %edx
	movl	%ebx, 376(%rsp)
	movq	%rbx, 368(%rsp)
	negl	%edx
	salq	$3, %rbx
	leal	(%rdi,%rdx,8), %ecx
	movl	%eax, %edx
	negl	%eax
	leal	(%rsi,%rax,8), %eax
	movq	%rbx, 360(%rsp)
	leaq	1(%rdx), %rbx
	movl	%ecx, 380(%rsp)
	movl	%eax, 272(%rsp)
	movl	%edi, %eax
	movq	%rbx, 224(%rsp)
	subl	$4, %eax
	salq	$3, %rbx
	movq	%rbx, 264(%rsp)
	movl	%eax, 236(%rsp)
	movl	%eax, %ebx
	shrl	$2, %eax
	leal	1(%rax), %esi
	leal	-15(%rax), %edx
	cmpl	$15, %esi
	movl	%esi, 304(%rsp)
	movq	%rsi, 176(%rsp)
	seta	282(%rsp)
	shrl	$4, %edx
	salq	$2, %rsi
	leal	-4(%rdx), %ecx
	movq	%rsi, 168(%rsp)
	leal	1(%rdx), %esi
	movl	%ecx, %edx
	movl	%esi, 396(%rsp)
	sall	$4, %esi
	shrl	$2, %edx
	movl	%ecx, 316(%rsp)
	movl	%esi, 276(%rsp)
	leal	4(,%rdx,4), %ecx
	movl	%esi, %edx
	movq	%rsi, 296(%rsp)
	negl	%edx
	salq	$2, %rsi
	movl	%ecx, 92(%rsp)
	leal	(%rdi,%rdx,4), %ecx
	movl	%eax, %edx
	negl	%eax
	movq	%rsi, 288(%rsp)
	leaq	1(%rdx), %rsi
	leal	(%rbx,%rax,4), %eax
	movl	%ecx, 392(%rsp)
	movq	%rsi, 96(%rsp)
	salq	$2, %rsi
	movl	%eax, 200(%rsp)
	movl	%edi, %eax
	movq	%rsi, 160(%rsp)
	subl	$2, %eax
	movl	%eax, %esi
	movl	%eax, 188(%rsp)
	shrl	%eax
	leal	1(%rax), %ebx
	leal	-15(%rax), %edx
	movl	%eax, %r15d
	cmpl	$15, %ebx
	movl	%ebx, 260(%rsp)
	movq	%rbx, 112(%rsp)
	seta	281(%rsp)
	negl	%eax
	shrl	$4, %edx
	leal	(%rsi,%rax,2), %eax
	leal	-4(%rdx), %ecx
	addq	%rbx, %rbx
	movq	%rbx, 104(%rsp)
	leal	1(%rdx), %ebx
	incq	%r15
	movl	%eax, 120(%rsp)
	movl	680(%rsp), %eax
	movl	%ecx, %edx
	shrl	$2, %edx
	movl	%ebx, 312(%rsp)
	sall	$4, %ebx
	movl	%ecx, 204(%rsp)
	leal	4(,%rdx,4), %ecx
	movl	%ebx, %edx
	addl	$2147483647, %eax
	negl	%edx
	movl	%ebx, 256(%rsp)
	addl	%eax, %eax
	leal	(%rdi,%rdx,2), %edi
	movq	%r15, 40(%rsp)
	cltq
	movq	648(%rsp), %rsi
	movl	%ecx, 152(%rsp)
	movq	%rax, 192(%rsp)
	movl	680(%rsp), %eax
	xorl	%r12d, %r12d
	movl	%edi, 308(%rsp)
	movl	%ebx, %edi
	movl	696(%rsp), %ebx
	movq	%rdi, 248(%rsp)
	addq	%rdi, %rdi
	xorl	%r13d, %r13d
	addl	$1073741823, %eax
	movq	%rdi, 240(%rsp)
	leaq	(%r15,%r15), %rdi
	sall	$2, %eax
	movl	128(%rsp), %r15d
	movslq	%eax, %rbp
	movl	680(%rsp), %eax
	movq	%rdi, 144(%rsp)
	movdqa	.LC2(%rip), %xmm11
	movq	%rbp, 80(%rsp)
	leal	-3(%rax,%rax,2), %eax
	movdqa	.LC97(%rip), %xmm12
	cltq
	addq	$2, %rax
	movq	%rax, 72(%rsp)
	.p2align 4,,7
.L3086:
	movq	(%rsi), %r8
	movl	%r12d, %edx
	movl	704(%rsp), %r9d
	leaq	(%rdx,%r14), %rax
	movl	$1, %ecx
	leaq	(%r8,%rdx), %r11
	addq	%rax, %r8
	testl	%r9d, %r9d
	jne	.L3044
	leaq	_ZL23stbi__depth_scale_table(%rip), %r9
	movslq	%ebx, %rcx
	movzbl	(%r9,%rcx), %ecx
.L3044:
	cmpl	$4, %ebx
	je	.L3557
	cmpl	$2, %ebx
	je	.L3558
	cmpl	$1, %ebx
	je	.L3559
.L3058:
	cmpl	%r15d, 672(%rsp)
	je	.L3088
	movq	%rdx, %rdi
	addq	(%rsi), %rdi
	cmpl	$1, %r15d
	je	.L3560
	cmpl	$3, %r15d
	je	.L3090
	leaq	.LC3(%rip), %rdx
	leaq	.LC99(%rip), %rcx
	movl	$4466, %r8d
	call	_assert
.L3090:
	movl	184(%rsp), %ecx
	testl	%ecx, %ecx
	js	.L3088
	movq	80(%rsp), %rax
	movq	72(%rsp), %rdx
	addq	%rdi, %rax
	addq	%rdi, %rdx
	.p2align 4,,7
.L3091:
	movb	$-1, 3(%rax)
	movzbl	(%rdx), %r8d
	decl	%ecx
	subq	$4, %rax
	subq	$3, %rdx
	movb	%r8b, 6(%rax)
	movzbl	2(%rdx), %r8d
	movb	%r8b, 5(%rax)
	movzbl	1(%rdx), %r8d
	movb	%r8b, 4(%rax)
	cmpl	$-1, %ecx
	jne	.L3091
.L3088:
	incl	%r13d
	addl	88(%rsp), %r12d
	cmpl	%r13d, 688(%rsp)
	jne	.L3086
	movl	$1, %eax
	jmp	.L3486
.L3557:
	cmpl	$1, 232(%rsp)
	jle	.L3275
	movq	112(%rsp), %rdi
	leaq	(%rdi,%r14), %r9
	movq	104(%rsp), %rdi
	addq	%rdx, %r9
	leaq	(%rdx,%rdi), %r10
	cmpq	%r9, %rdx
	setge	%r9b
	cmpq	%r10, %rax
	setge	%al
	orb	%al, %r9b
	je	.L3047
	cmpb	$0, 281(%rsp)
	je	.L3047
	cmpl	$29, 188(%rsp)
	jbe	.L3276
	movl	%ecx, 48(%rsp)
	cmpl	$-6, 204(%rsp)
	movd	48(%rsp), %xmm0
	punpcklbw	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm2
	ja	.L3277
	movdqa	%xmm2, %xmm4
	movl	152(%rsp), %ebp
	pxor	%xmm3, %xmm3
	xorl	%edi, %edi
	punpcklbw	%xmm2, %xmm4
	movq	%r11, %rax
	punpckhbw	%xmm2, %xmm2
	movq	%r8, %r9
	movdqa	.LC2(%rip), %xmm0
	movq	%r8, %r10
	movdqa	%xmm4, %xmm6
	movdqa	.LC96(%rip), %xmm5
	movdqa	%xmm2, %xmm7
.L3050:
	prefetcht0	192(%r10)
	prefetcht0	192(%r9)
	addl	$4, %edi
	movdqu	(%r10), %xmm8
	prefetcht0	400(%rax)
	prefetcht0	464(%rax)
	addq	$64, %r10
	addq	$64, %r9
	subq	$-128, %rax
	movdqa	%xmm8, %xmm1
	punpckhbw	%xmm3, %xmm8
	punpcklbw	%xmm3, %xmm1
	psrlw	$4, %xmm8
	pand	%xmm0, %xmm8
	psrlw	$4, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm8, %xmm1
	movdqa	%xmm1, %xmm8
	punpcklbw	%xmm1, %xmm8
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm4, %xmm8
	pand	%xmm0, %xmm8
	pmullw	%xmm2, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm8
	movdqu	-64(%r9), %xmm1
	pand	%xmm5, %xmm1
	movdqa	%xmm1, %xmm9
	punpcklbw	%xmm1, %xmm9
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm6, %xmm9
	pand	%xmm0, %xmm9
	pmullw	%xmm7, %xmm1
	pand	%xmm0, %xmm1
	movdqa	%xmm9, %xmm15
	movdqa	%xmm8, %xmm9
	packuswb	%xmm1, %xmm15
	punpcklbw	%xmm15, %xmm9
	punpckhbw	%xmm15, %xmm8
	movups	%xmm9, -128(%rax)
	movups	%xmm8, -112(%rax)
	movdqu	-48(%r10), %xmm8
	movdqa	%xmm8, %xmm1
	punpckhbw	%xmm3, %xmm8
	punpcklbw	%xmm3, %xmm1
	psrlw	$4, %xmm8
	pand	%xmm0, %xmm8
	psrlw	$4, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm8, %xmm1
	movdqa	%xmm1, %xmm8
	punpcklbw	%xmm1, %xmm8
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm4, %xmm8
	pand	%xmm0, %xmm8
	pmullw	%xmm2, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm8
	movdqu	-48(%r9), %xmm1
	pand	%xmm5, %xmm1
	movdqa	%xmm1, %xmm9
	punpcklbw	%xmm1, %xmm9
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm6, %xmm9
	pand	%xmm0, %xmm9
	pmullw	%xmm7, %xmm1
	pand	%xmm0, %xmm1
	movdqa	%xmm9, %xmm15
	movdqa	%xmm8, %xmm9
	packuswb	%xmm1, %xmm15
	punpcklbw	%xmm15, %xmm9
	punpckhbw	%xmm15, %xmm8
	movups	%xmm9, -96(%rax)
	movups	%xmm8, -80(%rax)
	movdqu	-32(%r10), %xmm8
	movdqa	%xmm8, %xmm1
	punpckhbw	%xmm3, %xmm8
	punpcklbw	%xmm3, %xmm1
	psrlw	$4, %xmm8
	pand	%xmm0, %xmm8
	psrlw	$4, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm8, %xmm1
	movdqa	%xmm1, %xmm8
	punpcklbw	%xmm1, %xmm8
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm4, %xmm8
	pand	%xmm0, %xmm8
	pmullw	%xmm2, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm8
	movdqu	-32(%r9), %xmm1
	pand	%xmm5, %xmm1
	movdqa	%xmm1, %xmm9
	punpcklbw	%xmm1, %xmm9
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm6, %xmm9
	pand	%xmm0, %xmm9
	pmullw	%xmm7, %xmm1
	pand	%xmm0, %xmm1
	movdqa	%xmm9, %xmm15
	movdqa	%xmm8, %xmm9
	packuswb	%xmm1, %xmm15
	punpcklbw	%xmm15, %xmm9
	punpckhbw	%xmm15, %xmm8
	movups	%xmm9, -64(%rax)
	movups	%xmm8, -48(%rax)
	movdqu	-16(%r10), %xmm8
	movdqa	%xmm8, %xmm1
	punpckhbw	%xmm3, %xmm8
	punpcklbw	%xmm3, %xmm1
	psrlw	$4, %xmm8
	pand	%xmm0, %xmm8
	psrlw	$4, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm8, %xmm1
	movdqa	%xmm1, %xmm8
	punpcklbw	%xmm1, %xmm8
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm4, %xmm8
	pand	%xmm0, %xmm8
	pmullw	%xmm2, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm8
	movdqu	-16(%r9), %xmm1
	pand	%xmm5, %xmm1
	movdqa	%xmm1, %xmm9
	punpcklbw	%xmm1, %xmm9
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm6, %xmm9
	pand	%xmm0, %xmm9
	pmullw	%xmm7, %xmm1
	pand	%xmm0, %xmm1
	movdqa	%xmm9, %xmm15
	movdqa	%xmm8, %xmm9
	packuswb	%xmm1, %xmm15
	punpcklbw	%xmm15, %xmm9
	punpckhbw	%xmm15, %xmm8
	movups	%xmm9, -32(%rax)
	movups	%xmm8, -16(%rax)
	cmpl	%edi, %ebp
	jne	.L3050
.L3049:
	pxor	%xmm3, %xmm3
	xorl	%edi, %edi
.L3054:
	movdqu	(%r10,%rdi), %xmm8
	incl	%ebp
	movdqa	%xmm8, %xmm1
	punpckhbw	%xmm3, %xmm8
	punpcklbw	%xmm3, %xmm1
	psrlw	$4, %xmm8
	pand	%xmm0, %xmm8
	psrlw	$4, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm8, %xmm1
	movdqa	%xmm1, %xmm8
	punpcklbw	%xmm1, %xmm8
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm4, %xmm8
	pand	%xmm0, %xmm8
	pmullw	%xmm2, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm8
	movdqu	(%r9,%rdi), %xmm1
	pand	%xmm5, %xmm1
	movdqa	%xmm1, %xmm9
	punpcklbw	%xmm1, %xmm9
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm6, %xmm9
	pand	%xmm0, %xmm9
	pmullw	%xmm7, %xmm1
	pand	%xmm0, %xmm1
	movdqa	%xmm9, %xmm15
	movdqa	%xmm8, %xmm9
	packuswb	%xmm1, %xmm15
	punpcklbw	%xmm15, %xmm9
	punpckhbw	%xmm15, %xmm8
	movups	%xmm9, (%rax,%rdi,2)
	movups	%xmm8, 16(%rax,%rdi,2)
	addq	$16, %rdi
	cmpl	312(%rsp), %ebp
	jb	.L3054
	movq	248(%rsp), %rax
	movl	260(%rsp), %ebp
	cmpl	%ebp, 256(%rsp)
	leaq	(%r8,%rax), %r10
	movq	240(%rsp), %rax
	leaq	(%r11,%rax), %r9
	movq	40(%rsp), %rax
	leaq	(%r8,%rax), %rdi
	je	.L3055
	movl	308(%rsp), %edi
.L3048:
	movzbl	(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, (%r9)
	movzbl	(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 1(%r9)
	leal	-2(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	1(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 2(%r9)
	movzbl	1(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 3(%r9)
	leal	-4(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	2(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 4(%r9)
	movzbl	2(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 5(%r9)
	leal	-6(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	3(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 6(%r9)
	movzbl	3(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 7(%r9)
	leal	-8(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	4(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 8(%r9)
	movzbl	4(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 9(%r9)
	leal	-10(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	5(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 10(%r9)
	movzbl	5(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 11(%r9)
	leal	-12(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	6(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 12(%r9)
	movzbl	6(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 13(%r9)
	leal	-14(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	7(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 14(%r9)
	movzbl	7(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 15(%r9)
	leal	-16(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	8(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 16(%r9)
	movzbl	8(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 17(%r9)
	leal	-18(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	9(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 18(%r9)
	movzbl	9(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 19(%r9)
	leal	-20(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	10(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 20(%r9)
	movzbl	10(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 21(%r9)
	leal	-22(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	11(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 22(%r9)
	movzbl	11(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 23(%r9)
	leal	-24(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	12(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 24(%r9)
	movzbl	12(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 25(%r9)
	leal	-26(%rdi), %eax
	decl	%eax
	jle	.L3516
	movzbl	13(%r10), %ebp
	sarl	$4, %ebp
	movl	%ebp, %eax
	imull	%ecx, %eax
	movb	%al, 26(%r9)
	movzbl	13(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	cmpl	$29, %edi
	movb	%al, 27(%r9)
	jle	.L3516
	movzbl	14(%r10), %edi
	sarl	$4, %edi
	movl	%edi, %eax
	imull	%ecx, %eax
	movb	%al, 28(%r9)
	movzbl	14(%r10), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	movb	%al, 29(%r9)
	movq	40(%rsp), %rax
	leaq	(%r8,%rax), %rdi
.L3055:
	addq	144(%rsp), %r11
	movl	120(%rsp), %eax
	movq	%rdi, %r8
.L3046:
	decl	%eax
	jne	.L3058
	movzbl	(%r8), %r8d
	movl	%ecx, %eax
	sarl	$4, %r8d
	imull	%r8d, %eax
	movb	%al, (%r11)
	jmp	.L3058
.L3558:
	cmpl	$3, 232(%rsp)
	jle	.L3278
	movq	176(%rsp), %rdi
	leaq	(%rdi,%r14), %r9
	movq	168(%rsp), %rdi
	addq	%rdx, %r9
	leaq	(%rdx,%rdi), %r10
	cmpq	%r9, %rdx
	setge	%r9b
	cmpq	%r10, %rax
	setge	%al
	orb	%al, %r9b
	je	.L3061
	cmpb	$0, 282(%rsp)
	je	.L3061
	cmpl	$59, 236(%rsp)
	jbe	.L3279
	movl	%ecx, 48(%rsp)
	cmpl	$-6, 316(%rsp)
	movd	48(%rsp), %xmm0
	punpcklbw	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm2
	ja	.L3280
	movdqa	%xmm2, %xmm5
	movl	$0, 64(%rsp)
	movaps	%xmm12, 320(%rsp)
	punpcklbw	%xmm2, %xmm5
	movq	%r11, %rax
	punpckhbw	%xmm2, %xmm2
	movq	%r8, %r9
	pxor	%xmm1, %xmm1
	movq	%r8, %r10
	movaps	%xmm5, 128(%rsp)
	movdqa	%xmm5, %xmm7
	movq	%r8, %rdi
	movaps	%xmm11, 336(%rsp)
	movdqa	%xmm2, %xmm10
	movq	%r8, %rbp
	movaps	%xmm5, 48(%rsp)
	movdqa	%xmm5, %xmm6
	movdqa	%xmm2, %xmm9
	movdqa	%xmm2, %xmm8
	movq	%rdx, 352(%rsp)
.L3064:
	movdqu	0(%rbp), %xmm4
	prefetcht0	96(%rbp)
	prefetcht0	96(%rdi)
	prefetcht0	96(%r10)
	prefetcht0	96(%r9)
	prefetcht0	432(%rax)
	movdqa	%xmm4, %xmm3
	prefetcht0	496(%rax)
	prefetcht0	560(%rax)
	punpckhbw	%xmm1, %xmm4
	movdqu	(%r10), %xmm14
	prefetcht0	624(%rax)
	punpcklbw	%xmm1, %xmm3
	addq	$64, %rbp
	addq	$64, %rdi
	addq	$64, %r10
	addq	$64, %r9
	psrlw	$6, %xmm4
	pand	%xmm11, %xmm4
	addq	$256, %rax
	psrlw	$6, %xmm3
	pand	%xmm11, %xmm3
	packuswb	%xmm4, %xmm3
	movdqa	%xmm3, %xmm13
	movdqa	%xmm3, %xmm4
	punpcklbw	%xmm3, %xmm13
	punpckhbw	%xmm3, %xmm4
	movdqa	%xmm13, %xmm3
	pmullw	%xmm2, %xmm4
	pand	%xmm11, %xmm4
	movdqu	-64(%rdi), %xmm13
	pmullw	%xmm5, %xmm3
	pand	%xmm11, %xmm3
	packuswb	%xmm4, %xmm3
	movdqa	%xmm13, %xmm4
	punpckhbw	%xmm1, %xmm13
	punpcklbw	%xmm1, %xmm4
	psrlw	$4, %xmm13
	pand	%xmm11, %xmm13
	psrlw	$4, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm13, %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm13
	punpcklbw	%xmm4, %xmm13
	punpckhbw	%xmm4, %xmm4
	pmullw	%xmm7, %xmm13
	pand	%xmm11, %xmm13
	pmullw	%xmm10, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm4, %xmm13
	movdqa	%xmm14, %xmm4
	punpckhbw	%xmm1, %xmm14
	punpcklbw	%xmm1, %xmm4
	psrlw	$2, %xmm14
	pand	%xmm11, %xmm14
	psrlw	$2, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm14, %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm14
	punpcklbw	%xmm4, %xmm14
	punpckhbw	%xmm4, %xmm4
	pmullw	%xmm6, %xmm14
	pand	%xmm11, %xmm14
	pmullw	%xmm9, %xmm4
	pand	%xmm11, %xmm4
	movdqa	%xmm14, %xmm15
	packuswb	%xmm4, %xmm15
	movdqu	-64(%r9), %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm14
	punpcklbw	%xmm4, %xmm14
	punpckhbw	%xmm4, %xmm4
	pmullw	48(%rsp), %xmm14
	pand	%xmm11, %xmm14
	pmullw	%xmm8, %xmm4
	pand	%xmm11, %xmm4
	movdqa	%xmm14, %xmm0
	movdqa	%xmm3, %xmm14
	punpckhbw	%xmm15, %xmm3
	packuswb	%xmm4, %xmm0
	punpcklbw	%xmm15, %xmm14
	movdqa	%xmm13, %xmm15
	punpcklbw	%xmm0, %xmm15
	movdqa	%xmm14, %xmm4
	punpckhbw	%xmm0, %xmm13
	punpcklbw	%xmm15, %xmm4
	punpckhbw	%xmm15, %xmm14
	movups	%xmm4, -256(%rax)
	movdqa	%xmm3, %xmm4
	punpckhbw	%xmm13, %xmm3
	punpcklbw	%xmm13, %xmm4
	movups	%xmm14, -240(%rax)
	movups	%xmm3, -208(%rax)
	movups	%xmm4, -224(%rax)
	movdqu	-48(%rbp), %xmm4
	movdqa	%xmm4, %xmm3
	punpckhbw	%xmm1, %xmm4
	movdqu	-48(%r10), %xmm14
	punpcklbw	%xmm1, %xmm3
	psrlw	$6, %xmm4
	pand	%xmm11, %xmm4
	psrlw	$6, %xmm3
	pand	%xmm11, %xmm3
	packuswb	%xmm4, %xmm3
	movdqa	%xmm3, %xmm13
	movdqa	%xmm3, %xmm4
	punpcklbw	%xmm3, %xmm13
	punpckhbw	%xmm3, %xmm4
	movdqa	%xmm13, %xmm3
	pmullw	%xmm2, %xmm4
	pand	%xmm11, %xmm4
	movdqu	-48(%rdi), %xmm13
	pmullw	%xmm5, %xmm3
	pand	%xmm11, %xmm3
	packuswb	%xmm4, %xmm3
	movdqa	%xmm13, %xmm4
	punpckhbw	%xmm1, %xmm13
	punpcklbw	%xmm1, %xmm4
	psrlw	$4, %xmm13
	pand	%xmm11, %xmm13
	psrlw	$4, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm13, %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm13
	punpcklbw	%xmm4, %xmm13
	punpckhbw	%xmm4, %xmm4
	pmullw	%xmm7, %xmm13
	pand	%xmm11, %xmm13
	pmullw	%xmm10, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm4, %xmm13
	movdqa	%xmm14, %xmm4
	punpckhbw	%xmm1, %xmm14
	punpcklbw	%xmm1, %xmm4
	psrlw	$2, %xmm14
	pand	%xmm11, %xmm14
	psrlw	$2, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm14, %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm14
	punpcklbw	%xmm4, %xmm14
	punpckhbw	%xmm4, %xmm4
	pmullw	%xmm6, %xmm14
	pand	%xmm11, %xmm14
	pmullw	%xmm9, %xmm4
	pand	%xmm11, %xmm4
	movdqa	%xmm14, %xmm15
	packuswb	%xmm4, %xmm15
	movdqu	-48(%r9), %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm14
	punpcklbw	%xmm4, %xmm14
	punpckhbw	%xmm4, %xmm4
	pmullw	48(%rsp), %xmm14
	pand	%xmm11, %xmm14
	pmullw	%xmm8, %xmm4
	pand	%xmm11, %xmm4
	movdqa	%xmm14, %xmm0
	movdqa	%xmm3, %xmm14
	punpckhbw	%xmm15, %xmm3
	packuswb	%xmm4, %xmm0
	punpcklbw	%xmm15, %xmm14
	movdqa	%xmm13, %xmm15
	punpcklbw	%xmm0, %xmm15
	movdqa	%xmm14, %xmm4
	punpckhbw	%xmm0, %xmm13
	punpcklbw	%xmm15, %xmm4
	punpckhbw	%xmm15, %xmm14
	movups	%xmm4, -192(%rax)
	movdqa	%xmm3, %xmm4
	punpckhbw	%xmm13, %xmm3
	punpcklbw	%xmm13, %xmm4
	movups	%xmm14, -176(%rax)
	movups	%xmm3, -144(%rax)
	movups	%xmm4, -160(%rax)
	movdqu	-32(%rbp), %xmm4
	movdqa	%xmm4, %xmm3
	punpckhbw	%xmm1, %xmm4
	movdqu	-32(%r10), %xmm14
	punpcklbw	%xmm1, %xmm3
	psrlw	$6, %xmm4
	pand	%xmm11, %xmm4
	psrlw	$6, %xmm3
	pand	%xmm11, %xmm3
	packuswb	%xmm4, %xmm3
	movdqa	%xmm3, %xmm13
	movdqa	%xmm3, %xmm4
	punpcklbw	%xmm3, %xmm13
	punpckhbw	%xmm3, %xmm4
	movdqa	%xmm13, %xmm3
	pmullw	%xmm2, %xmm4
	pand	%xmm11, %xmm4
	movdqu	-32(%rdi), %xmm13
	pmullw	%xmm5, %xmm3
	pand	%xmm11, %xmm3
	packuswb	%xmm4, %xmm3
	movdqa	%xmm13, %xmm4
	punpckhbw	%xmm1, %xmm13
	punpcklbw	%xmm1, %xmm4
	psrlw	$4, %xmm13
	pand	%xmm11, %xmm13
	psrlw	$4, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm13, %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm13
	punpcklbw	%xmm4, %xmm13
	punpckhbw	%xmm4, %xmm4
	pmullw	%xmm7, %xmm13
	pand	%xmm11, %xmm13
	pmullw	%xmm10, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm4, %xmm13
	movdqa	%xmm14, %xmm4
	punpckhbw	%xmm1, %xmm14
	punpcklbw	%xmm1, %xmm4
	psrlw	$2, %xmm14
	pand	%xmm11, %xmm14
	psrlw	$2, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm14, %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm14
	punpcklbw	%xmm4, %xmm14
	punpckhbw	%xmm4, %xmm4
	pmullw	%xmm6, %xmm14
	pand	%xmm11, %xmm14
	pmullw	%xmm9, %xmm4
	pand	%xmm11, %xmm4
	movdqa	%xmm14, %xmm15
	packuswb	%xmm4, %xmm15
	movdqu	-32(%r9), %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm14
	punpcklbw	%xmm4, %xmm14
	punpckhbw	%xmm4, %xmm4
	pmullw	48(%rsp), %xmm14
	pand	%xmm11, %xmm14
	pmullw	%xmm8, %xmm4
	pand	%xmm11, %xmm4
	movdqa	%xmm14, %xmm0
	movdqa	%xmm3, %xmm14
	punpckhbw	%xmm15, %xmm3
	packuswb	%xmm4, %xmm0
	punpcklbw	%xmm15, %xmm14
	movdqa	%xmm13, %xmm15
	punpcklbw	%xmm0, %xmm15
	movdqa	%xmm14, %xmm4
	punpckhbw	%xmm0, %xmm13
	punpcklbw	%xmm15, %xmm4
	punpckhbw	%xmm15, %xmm14
	movups	%xmm4, -128(%rax)
	movdqa	%xmm3, %xmm4
	punpckhbw	%xmm13, %xmm3
	punpcklbw	%xmm13, %xmm4
	movups	%xmm14, -112(%rax)
	addl	$4, 64(%rsp)
	movups	%xmm3, -80(%rax)
	movl	64(%rsp), %edx
	movups	%xmm4, -96(%rax)
	movdqu	-16(%rbp), %xmm4
	movdqa	%xmm4, %xmm3
	punpckhbw	%xmm1, %xmm4
	movdqu	-16(%r10), %xmm14
	punpcklbw	%xmm1, %xmm3
	psrlw	$6, %xmm4
	pand	%xmm11, %xmm4
	psrlw	$6, %xmm3
	pand	%xmm11, %xmm3
	packuswb	%xmm4, %xmm3
	movdqa	%xmm3, %xmm13
	movdqa	%xmm3, %xmm4
	punpcklbw	%xmm3, %xmm13
	punpckhbw	%xmm3, %xmm4
	movdqa	%xmm13, %xmm3
	pmullw	%xmm2, %xmm4
	pand	%xmm11, %xmm4
	movdqu	-16(%rdi), %xmm13
	pmullw	%xmm5, %xmm3
	pand	%xmm11, %xmm3
	packuswb	%xmm4, %xmm3
	movdqa	%xmm13, %xmm4
	punpckhbw	%xmm1, %xmm13
	punpcklbw	%xmm1, %xmm4
	psrlw	$4, %xmm13
	pand	%xmm11, %xmm13
	psrlw	$4, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm13, %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm13
	punpcklbw	%xmm4, %xmm13
	punpckhbw	%xmm4, %xmm4
	pmullw	%xmm7, %xmm13
	pand	%xmm11, %xmm13
	pmullw	%xmm10, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm4, %xmm13
	movdqa	%xmm14, %xmm4
	punpckhbw	%xmm1, %xmm14
	punpcklbw	%xmm1, %xmm4
	psrlw	$2, %xmm14
	pand	%xmm11, %xmm14
	psrlw	$2, %xmm4
	pand	%xmm11, %xmm4
	packuswb	%xmm14, %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm14
	punpcklbw	%xmm4, %xmm14
	punpckhbw	%xmm4, %xmm4
	pmullw	%xmm6, %xmm14
	pand	%xmm11, %xmm14
	pmullw	%xmm9, %xmm4
	pand	%xmm11, %xmm4
	movdqa	%xmm14, %xmm15
	packuswb	%xmm4, %xmm15
	movdqu	-16(%r9), %xmm4
	pand	%xmm12, %xmm4
	movdqa	%xmm4, %xmm14
	punpcklbw	%xmm4, %xmm14
	punpckhbw	%xmm4, %xmm4
	pmullw	48(%rsp), %xmm14
	pand	%xmm11, %xmm14
	pmullw	%xmm8, %xmm4
	pand	%xmm11, %xmm4
	movdqa	%xmm14, %xmm0
	movdqa	%xmm3, %xmm14
	punpckhbw	%xmm15, %xmm3
	packuswb	%xmm4, %xmm0
	punpcklbw	%xmm15, %xmm14
	movdqa	%xmm13, %xmm15
	punpcklbw	%xmm0, %xmm15
	movdqa	%xmm14, %xmm4
	punpckhbw	%xmm0, %xmm13
	punpcklbw	%xmm15, %xmm4
	punpckhbw	%xmm15, %xmm14
	movups	%xmm4, -64(%rax)
	movdqa	%xmm3, %xmm4
	punpckhbw	%xmm13, %xmm3
	punpcklbw	%xmm13, %xmm4
	movups	%xmm14, -48(%rax)
	movups	%xmm4, -32(%rax)
	movups	%xmm3, -16(%rax)
	cmpl	92(%rsp), %edx
	jne	.L3064
	movq	%rax, 64(%rsp)
	movl	92(%rsp), %eax
	movq	352(%rsp), %rdx
	movdqa	336(%rsp), %xmm0
	movl	%eax, 48(%rsp)
.L3063:
	pxor	%xmm15, %xmm15
	xorl	%eax, %eax
	movl	%r15d, 352(%rsp)
	movaps	%xmm2, 336(%rsp)
	movq	%rax, %r15
.L3068:
	movdqu	0(%rbp,%r15), %xmm3
	movq	64(%rsp), %rax
	incl	48(%rsp)
	movdqa	%xmm3, %xmm1
	punpckhbw	%xmm15, %xmm3
	movdqu	(%rdi,%r15), %xmm4
	punpcklbw	%xmm15, %xmm1
	psrlw	$6, %xmm3
	pand	%xmm0, %xmm3
	movdqa	320(%rsp), %xmm2
	psrlw	$6, %xmm1
	pand	%xmm0, %xmm1
	movdqu	(%r10,%r15), %xmm13
	packuswb	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	punpcklbw	%xmm1, %xmm3
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm5, %xmm3
	pand	%xmm0, %xmm3
	pmullw	336(%rsp), %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm3
	movdqa	%xmm4, %xmm1
	punpckhbw	%xmm15, %xmm4
	punpcklbw	%xmm15, %xmm1
	psrlw	$4, %xmm4
	pand	%xmm0, %xmm4
	psrlw	$4, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm4, %xmm1
	pand	%xmm2, %xmm1
	movdqa	%xmm1, %xmm4
	punpcklbw	%xmm1, %xmm4
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm7, %xmm4
	pand	%xmm0, %xmm4
	pmullw	%xmm10, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm4
	movdqa	%xmm13, %xmm1
	punpckhbw	%xmm15, %xmm13
	punpcklbw	%xmm15, %xmm1
	psrlw	$2, %xmm13
	pand	%xmm0, %xmm13
	psrlw	$2, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm13, %xmm1
	pand	%xmm2, %xmm1
	movdqa	%xmm1, %xmm14
	punpcklbw	%xmm1, %xmm14
	punpckhbw	%xmm1, %xmm1
	pmullw	%xmm6, %xmm14
	pand	%xmm0, %xmm14
	pmullw	%xmm9, %xmm1
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm14
	movdqu	(%r9,%r15), %xmm1
	pand	%xmm2, %xmm1
	movdqa	%xmm1, %xmm13
	punpcklbw	%xmm1, %xmm13
	punpckhbw	%xmm1, %xmm1
	pmullw	128(%rsp), %xmm13
	pand	%xmm0, %xmm13
	pmullw	%xmm8, %xmm1
	pand	%xmm0, %xmm1
	movdqa	%xmm13, %xmm2
	movdqa	%xmm3, %xmm13
	punpckhbw	%xmm14, %xmm3
	packuswb	%xmm1, %xmm2
	punpcklbw	%xmm14, %xmm13
	movdqa	%xmm4, %xmm14
	punpcklbw	%xmm2, %xmm14
	movdqa	%xmm13, %xmm1
	punpckhbw	%xmm2, %xmm4
	punpcklbw	%xmm14, %xmm1
	punpckhbw	%xmm14, %xmm13
	movups	%xmm1, (%rax,%r15,4)
	movdqa	%xmm3, %xmm1
	punpckhbw	%xmm4, %xmm3
	punpcklbw	%xmm4, %xmm1
	movups	%xmm13, 16(%rax,%r15,4)
	movups	%xmm1, 32(%rax,%r15,4)
	movups	%xmm3, 48(%rax,%r15,4)
	addq	$16, %r15
	movl	48(%rsp), %eax
	cmpl	%eax, 396(%rsp)
	ja	.L3068
	movq	296(%rsp), %rax
	movl	304(%rsp), %ebp
	cmpl	%ebp, 276(%rsp)
	movl	352(%rsp), %r15d
	leaq	(%r8,%rax), %r9
	movq	288(%rsp), %rax
	leaq	(%r11,%rax), %r10
	movq	96(%rsp), %rax
	leaq	(%r8,%rax), %rdi
	je	.L3069
	movl	392(%rsp), %ebp
	jmp	.L3066
.L3560:
	movl	184(%rsp), %ecx
	testl	%ecx, %ecx
	js	.L3088
	movq	192(%rsp), %rax
	movslq	%ecx, %rdx
	addq	%rdi, %rdx
	addq	%rdi, %rax
	.p2align 4,,7
.L3089:
	movb	$-1, 1(%rax)
	movzbl	(%rdx), %r8d
	decl	%ecx
	subq	$2, %rax
	decq	%rdx
	movb	%r8b, 2(%rax)
	cmpl	$-1, %ecx
	jne	.L3089
	jmp	.L3088
.L3516:
	movq	40(%rsp), %rax
	leaq	(%r8,%rax), %rdi
	jmp	.L3055
.L3559:
	cmpl	$7, 232(%rsp)
	jle	.L3281
	movq	216(%rsp), %rdi
	leaq	(%rdi,%r14), %r9
	movq	208(%rsp), %rdi
	addq	%rdx, %r9
	leaq	(%rdx,%rdi), %r10
	cmpq	%r9, %rdx
	setge	%r9b
	cmpq	%r10, %rax
	setge	%al
	orb	%al, %r9b
	je	.L3073
	cmpb	$0, 283(%rsp)
	je	.L3073
	cmpl	$119, 284(%rsp)
	jbe	.L3282
	movl	%ecx, 48(%rsp)
	pxor	%xmm10, %xmm10
	movd	48(%rsp), %xmm0
	movq	%r11, %rax
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	punpcklbw	%xmm0, %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm1
	pshufd	$0, %xmm1, %xmm1
	movdqa	%xmm1, %xmm7
	punpcklbw	%xmm1, %xmm7
	punpckhbw	%xmm1, %xmm1
.L3076:
	movdqu	(%r8,%r9), %xmm4
	incl	%r10d
	subq	$-128, %rax
	addq	$16, %r9
	movdqa	%xmm4, %xmm0
	movdqa	%xmm4, %xmm13
	punpcklbw	%xmm10, %xmm0
	punpckhbw	%xmm10, %xmm13
	movdqa	%xmm0, %xmm2
	movdqa	%xmm13, %xmm3
	movdqa	%xmm13, %xmm8
	psrlw	$7, %xmm2
	pand	.LC2(%rip), %xmm2
	psrlw	$7, %xmm3
	psrlw	$4, %xmm8
	movdqa	%xmm13, %xmm14
	pand	.LC2(%rip), %xmm3
	psrlw	$2, %xmm14
	pand	.LC2(%rip), %xmm8
	pand	.LC2(%rip), %xmm14
	packuswb	%xmm3, %xmm2
	movdqa	%xmm2, %xmm5
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm2, %xmm5
	punpckhbw	%xmm2, %xmm3
	movdqa	%xmm5, %xmm2
	pmullw	%xmm1, %xmm3
	pand	.LC2(%rip), %xmm3
	movdqa	%xmm13, %xmm5
	pmullw	%xmm7, %xmm2
	pand	.LC2(%rip), %xmm2
	psrlw	$6, %xmm5
	pand	.LC2(%rip), %xmm5
	packuswb	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	psrlw	$6, %xmm3
	pand	.LC2(%rip), %xmm3
	packuswb	%xmm5, %xmm3
	pand	.LC98(%rip), %xmm3
	movdqa	%xmm3, %xmm6
	movdqa	%xmm3, %xmm5
	punpcklbw	%xmm3, %xmm6
	punpckhbw	%xmm3, %xmm5
	movdqa	%xmm6, %xmm3
	pmullw	%xmm1, %xmm5
	pand	.LC2(%rip), %xmm5
	movdqa	%xmm13, %xmm6
	pmullw	%xmm7, %xmm3
	pand	.LC2(%rip), %xmm3
	psrlw	$5, %xmm6
	pand	.LC2(%rip), %xmm6
	packuswb	%xmm5, %xmm3
	movdqa	%xmm0, %xmm5
	psrlw	$5, %xmm5
	pand	.LC2(%rip), %xmm5
	packuswb	%xmm6, %xmm5
	pand	.LC98(%rip), %xmm5
	movdqa	%xmm5, %xmm6
	punpcklbw	%xmm5, %xmm6
	punpckhbw	%xmm5, %xmm5
	pmullw	%xmm7, %xmm6
	pand	.LC2(%rip), %xmm6
	pmullw	%xmm1, %xmm5
	pand	.LC2(%rip), %xmm5
	packuswb	%xmm5, %xmm6
	movdqa	%xmm0, %xmm5
	psrlw	$4, %xmm5
	pand	.LC2(%rip), %xmm5
	packuswb	%xmm8, %xmm5
	pand	.LC98(%rip), %xmm5
	movdqa	%xmm5, %xmm9
	movdqa	%xmm5, %xmm8
	punpcklbw	%xmm5, %xmm9
	punpckhbw	%xmm5, %xmm8
	movdqa	%xmm9, %xmm5
	pmullw	%xmm1, %xmm8
	pand	.LC2(%rip), %xmm8
	movdqa	%xmm13, %xmm9
	pmullw	%xmm7, %xmm5
	psrlw	$1, %xmm13
	pand	.LC2(%rip), %xmm5
	psrlw	$3, %xmm9
	pand	.LC2(%rip), %xmm9
	pand	.LC2(%rip), %xmm13
	packuswb	%xmm8, %xmm5
	movdqa	%xmm0, %xmm8
	psrlw	$3, %xmm8
	pand	.LC2(%rip), %xmm8
	packuswb	%xmm9, %xmm8
	pand	.LC98(%rip), %xmm8
	movdqa	%xmm8, %xmm9
	punpcklbw	%xmm8, %xmm9
	punpckhbw	%xmm8, %xmm8
	pmullw	%xmm7, %xmm9
	pand	.LC2(%rip), %xmm9
	pmullw	%xmm1, %xmm8
	pand	.LC2(%rip), %xmm8
	packuswb	%xmm8, %xmm9
	movdqa	%xmm0, %xmm8
	psrlw	$1, %xmm0
	pand	.LC2(%rip), %xmm0
	psrlw	$2, %xmm8
	pand	.LC2(%rip), %xmm8
	packuswb	%xmm13, %xmm0
	packuswb	%xmm14, %xmm8
	pand	.LC98(%rip), %xmm8
	movdqa	%xmm8, %xmm15
	movdqa	%xmm8, %xmm14
	punpcklbw	%xmm8, %xmm15
	punpckhbw	%xmm8, %xmm14
	movdqa	%xmm15, %xmm8
	pmullw	%xmm1, %xmm14
	pand	.LC2(%rip), %xmm14
	pmullw	%xmm7, %xmm8
	pand	.LC2(%rip), %xmm8
	pand	.LC98(%rip), %xmm0
	pand	.LC98(%rip), %xmm4
	packuswb	%xmm14, %xmm8
	movdqa	%xmm0, %xmm13
	punpcklbw	%xmm0, %xmm13
	punpckhbw	%xmm0, %xmm0
	movdqa	%xmm4, %xmm14
	pmullw	%xmm7, %xmm13
	pand	.LC2(%rip), %xmm13
	pmullw	%xmm1, %xmm0
	pand	.LC2(%rip), %xmm0
	punpcklbw	%xmm4, %xmm14
	packuswb	%xmm0, %xmm13
	movdqa	%xmm4, %xmm0
	punpckhbw	%xmm4, %xmm0
	movdqa	%xmm14, %xmm4
	movdqa	%xmm5, %xmm14
	pmullw	%xmm7, %xmm4
	pand	.LC2(%rip), %xmm4
	pmullw	%xmm1, %xmm0
	pand	.LC2(%rip), %xmm0
	movdqa	%xmm4, %xmm15
	movdqa	%xmm2, %xmm4
	punpckhbw	%xmm9, %xmm2
	packuswb	%xmm0, %xmm15
	punpcklbw	%xmm9, %xmm4
	movdqa	%xmm3, %xmm9
	punpckhbw	%xmm8, %xmm3
	punpcklbw	%xmm8, %xmm9
	movdqa	%xmm6, %xmm8
	punpckhbw	%xmm13, %xmm6
	punpcklbw	%xmm13, %xmm8
	movdqa	%xmm4, %xmm13
	punpcklbw	%xmm15, %xmm14
	punpckhbw	%xmm15, %xmm5
	punpcklbw	%xmm8, %xmm13
	punpckhbw	%xmm8, %xmm4
	movdqa	%xmm2, %xmm8
	punpckhbw	%xmm6, %xmm2
	punpcklbw	%xmm6, %xmm8
	movdqa	%xmm9, %xmm6
	punpckhbw	%xmm14, %xmm9
	movdqa	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	punpcklbw	%xmm14, %xmm6
	punpcklbw	%xmm5, %xmm2
	punpckhbw	%xmm5, %xmm3
	movdqa	%xmm13, %xmm5
	punpckhbw	%xmm6, %xmm13
	punpcklbw	%xmm6, %xmm5
	movups	%xmm13, -112(%rax)
	movups	%xmm5, -128(%rax)
	movdqa	%xmm4, %xmm5
	punpckhbw	%xmm9, %xmm4
	punpcklbw	%xmm9, %xmm5
	movups	%xmm4, -80(%rax)
	movdqa	%xmm8, %xmm4
	punpckhbw	%xmm2, %xmm8
	punpcklbw	%xmm2, %xmm4
	movdqa	%xmm0, %xmm2
	punpckhbw	%xmm3, %xmm0
	punpcklbw	%xmm3, %xmm2
	movups	%xmm5, -96(%rax)
	movups	%xmm4, -64(%rax)
	movups	%xmm8, -48(%rax)
	movups	%xmm2, -32(%rax)
	movups	%xmm0, -16(%rax)
	cmpl	%r10d, 384(%rsp)
	ja	.L3076
	movq	368(%rsp), %rax
	movl	388(%rsp), %ebp
	cmpl	%ebp, 376(%rsp)
	leaq	(%r8,%rax), %r9
	movq	360(%rsp), %rax
	leaq	(%r11,%rax), %r10
	movq	224(%rsp), %rax
	leaq	(%r8,%rax), %rdi
	je	.L3079
	movl	380(%rsp), %ebp
	.p2align 4,,7
.L3078:
	movzbl	(%r9), %edi
	subl	$8, %ebp
	addq	$8, %r10
	incq	%r9
	sarl	$7, %edi
	movl	%edi, %eax
	imull	%ecx, %eax
	movb	%al, -8(%r10)
	movzbl	-1(%r9), %eax
	sarl	$6, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -7(%r10)
	movzbl	-1(%r9), %eax
	sarl	$5, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -6(%r10)
	movzbl	-1(%r9), %eax
	sarl	$4, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -5(%r10)
	movzbl	-1(%r9), %eax
	sarl	$3, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -4(%r10)
	movzbl	-1(%r9), %eax
	sarl	$2, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -3(%r10)
	movzbl	-1(%r9), %eax
	sarl	%eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -2(%r10)
	movzbl	-1(%r9), %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$7, %ebp
	movb	%al, -1(%r10)
	jg	.L3078
	movq	224(%rsp), %rax
	leaq	(%r8,%rax), %rdi
.L3079:
	addq	264(%rsp), %r11
	movl	272(%rsp), %r10d
	movq	%rdi, %r8
.L3072:
	testl	%r10d, %r10d
	jle	.L3058
	movzbl	(%r8), %r9d
	sarl	$7, %r9d
	movl	%r9d, %eax
	imull	%ecx, %eax
	cmpl	$1, %r10d
	movb	%al, (%r11)
	je	.L3058
	movzbl	(%r8), %eax
	sarl	$6, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$2, %r10d
	movb	%al, 1(%r11)
	je	.L3058
	movzbl	(%r8), %eax
	sarl	$5, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$3, %r10d
	movb	%al, 2(%r11)
	je	.L3058
	movzbl	(%r8), %eax
	sarl	$4, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$4, %r10d
	movb	%al, 3(%r11)
	je	.L3058
	movzbl	(%r8), %eax
	sarl	$3, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$5, %r10d
	movb	%al, 4(%r11)
	je	.L3058
	movzbl	(%r8), %eax
	sarl	$2, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpl	$7, %r10d
	movb	%al, 5(%r11)
	jne	.L3058
	movzbl	(%r8), %eax
	sarl	%eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, 6(%r11)
	jmp	.L3058
.L3189:
	movl	$12, %edx
	jmp	.L2948
.L3188:
	movl	$11, %edx
	jmp	.L2948
.L3187:
	movl	$10, %edx
	jmp	.L2948
.L3186:
	movl	$9, %edx
	jmp	.L2948
.L3217:
	movl	$8, %edx
	jmp	.L2978
.L3216:
	movl	$7, %edx
	jmp	.L2978
.L3215:
	movl	$6, %edx
	jmp	.L2978
.L3214:
	movl	$5, %edx
	jmp	.L2978
.L3213:
	movl	$4, %edx
	jmp	.L2978
.L3212:
	movl	$3, %edx
	jmp	.L2978
.L3211:
	movl	$2, %edx
	jmp	.L2978
.L3210:
	movl	$1, %edx
	jmp	.L2978
.L3266:
	movl	$8, %edx
	jmp	.L3029
.L3265:
	movl	$7, %edx
	jmp	.L3029
.L3264:
	movl	$6, %edx
	jmp	.L3029
.L3263:
	movl	$5, %edx
	jmp	.L3029
.L3262:
	movl	$4, %edx
	jmp	.L3029
.L3261:
	movl	$3, %edx
	jmp	.L3029
.L3260:
	movl	$2, %edx
	jmp	.L3029
.L3259:
	movl	$1, %edx
	jmp	.L3029
.L3239:
	movl	$14, %edx
	jmp	.L2993
.L3238:
	movl	$13, %edx
	jmp	.L2993
.L3207:
	movl	$14, %edx
	jmp	.L2963
.L3206:
	movl	$13, %edx
	jmp	.L2963
.L3205:
	movl	$12, %edx
	jmp	.L2963
.L3204:
	movl	$11, %edx
	jmp	.L2963
.L3203:
	movl	$10, %edx
	jmp	.L2963
.L3202:
	movl	$9, %edx
	jmp	.L2963
.L3185:
	movl	$8, %edx
	jmp	.L2948
.L3184:
	movl	$7, %edx
	jmp	.L2948
.L3183:
	movl	$6, %edx
	jmp	.L2948
.L3182:
	movl	$5, %edx
	jmp	.L2948
.L3181:
	movl	$4, %edx
	jmp	.L2948
.L3180:
	movl	$3, %edx
	jmp	.L2948
.L3179:
	movl	$2, %edx
	jmp	.L2948
.L3178:
	movl	$1, %edx
	jmp	.L2948
.L3237:
	movl	$12, %edx
	jmp	.L2993
.L3236:
	movl	$11, %edx
	jmp	.L2993
.L3235:
	movl	$10, %edx
	jmp	.L2993
.L3234:
	movl	$9, %edx
	jmp	.L2993
.L3250:
	movl	$8, %edx
	jmp	.L3014
.L3249:
	movl	$7, %edx
	jmp	.L3014
.L3248:
	movl	$6, %edx
	jmp	.L3014
.L3247:
	movl	$5, %edx
	jmp	.L3014
.L3246:
	movl	$4, %edx
	jmp	.L3014
.L3245:
	movl	$3, %edx
	jmp	.L3014
.L3244:
	movl	$2, %edx
	jmp	.L3014
.L3243:
	movl	$1, %edx
	jmp	.L3014
.L3256:
	movl	$14, %edx
	jmp	.L3014
.L3255:
	movl	$13, %edx
	jmp	.L3014
.L3254:
	movl	$12, %edx
	jmp	.L3014
.L3253:
	movl	$11, %edx
	jmp	.L3014
.L3252:
	movl	$10, %edx
	jmp	.L3014
.L3251:
	movl	$9, %edx
	jmp	.L3014
.L3233:
	movl	$8, %edx
	jmp	.L2993
.L3232:
	movl	$7, %edx
	jmp	.L2993
.L3231:
	movl	$6, %edx
	jmp	.L2993
.L3230:
	movl	$5, %edx
	jmp	.L2993
.L3229:
	movl	$4, %edx
	jmp	.L2993
.L3228:
	movl	$3, %edx
	jmp	.L2993
.L3227:
	movl	$2, %edx
	jmp	.L2993
.L3226:
	movl	$1, %edx
	jmp	.L2993
.L3191:
	movl	$14, %edx
	jmp	.L2948
.L3190:
	movl	$13, %edx
	jmp	.L2948
.L3272:
	movl	$14, %edx
	jmp	.L3029
.L3271:
	movl	$13, %edx
	jmp	.L3029
.L3270:
	movl	$12, %edx
	jmp	.L3029
.L3269:
	movl	$11, %edx
	jmp	.L3029
.L3268:
	movl	$10, %edx
	jmp	.L3029
.L3267:
	movl	$9, %edx
	jmp	.L3029
.L3223:
	movl	$14, %edx
	jmp	.L2978
.L3222:
	movl	$13, %edx
	jmp	.L2978
.L3221:
	movl	$12, %edx
	jmp	.L2978
.L3220:
	movl	$11, %edx
	jmp	.L2978
.L3219:
	movl	$10, %edx
	jmp	.L2978
.L3218:
	movl	$9, %edx
	jmp	.L2978
.L3201:
	movl	$8, %edx
	jmp	.L2963
.L3200:
	movl	$7, %edx
	jmp	.L2963
.L3199:
	movl	$6, %edx
	jmp	.L2963
.L3198:
	movl	$5, %edx
	jmp	.L2963
.L3197:
	movl	$4, %edx
	jmp	.L2963
.L3196:
	movl	$3, %edx
	jmp	.L2963
.L3195:
	movl	$2, %edx
	jmp	.L2963
.L3194:
	movl	$1, %edx
	jmp	.L2963
.L3208:
	movl	$0, 96(%rsp)
	jmp	.L2966
.L3224:
	xorl	%r11d, %r11d
	jmp	.L2981
.L3273:
	movl	$0, 96(%rsp)
	jmp	.L3032
.L3240:
	movl	$0, 96(%rsp)
	movdqa	%xmm8, %xmm5
	jmp	.L2996
.L3257:
	movl	$0, 96(%rsp)
	movdqa	%xmm6, %xmm2
	jmp	.L3017
.L3192:
	xorl	%r10d, %r10d
	jmp	.L2951
.L3547:
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3486
.L3276:
	movq	%r11, %r9
	movq	%r8, %r10
	movl	232(%rsp), %edi
	jmp	.L3048
.L3047:
	movq	40(%rsp), %rax
	movq	%r11, %r10
	leaq	(%r8,%rax), %rdi
	.p2align 4,,7
.L3056:
	movzbl	(%r8), %r9d
	incq	%r8
	addq	$2, %r10
	sarl	$4, %r9d
	movl	%r9d, %eax
	imull	%ecx, %eax
	movb	%al, -2(%r10)
	movzbl	-1(%r8), %eax
	andl	$15, %eax
	imull	%ecx, %eax
	cmpq	%r8, %rdi
	movb	%al, -1(%r10)
	jne	.L3056
	jmp	.L3055
.L3279:
	movl	232(%rsp), %ebp
	movq	%r11, %r10
	movq	%r8, %r9
	.p2align 4,,7
.L3066:
	movzbl	(%r9), %edi
	subl	$4, %ebp
	addq	$4, %r10
	incq	%r9
	sarl	$6, %edi
	movl	%edi, %eax
	imull	%ecx, %eax
	movb	%al, -4(%r10)
	movzbl	-1(%r9), %eax
	sarl	$4, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	movb	%al, -3(%r10)
	movzbl	-1(%r9), %eax
	sarl	$2, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	movb	%al, -2(%r10)
	movzbl	-1(%r9), %eax
	andl	$3, %eax
	imull	%ecx, %eax
	cmpl	$3, %ebp
	movb	%al, -1(%r10)
	jg	.L3066
	movq	96(%rsp), %rax
	leaq	(%r8,%rax), %rdi
.L3069:
	addq	160(%rsp), %r11
	movl	200(%rsp), %r10d
	movq	%rdi, %r8
.L3060:
	testl	%r10d, %r10d
	jle	.L3058
	movzbl	(%r8), %r9d
	sarl	$6, %r9d
	movl	%r9d, %eax
	imull	%ecx, %eax
	cmpl	$1, %r10d
	movb	%al, (%r11)
	je	.L3058
	movzbl	(%r8), %eax
	sarl	$4, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	cmpl	$3, %r10d
	movb	%al, 1(%r11)
	jne	.L3058
	movzbl	(%r8), %eax
	sarl	$2, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	movb	%al, 2(%r11)
	jmp	.L3058
.L2922:
	movq	656(%rsp), %r8
	xorl	%edx, %edx
	.p2align 4,,7
.L2933:
	movzbl	(%rax,%rdx), %ecx
	addb	(%r8,%rdx), %cl
	movb	%cl, (%rbx,%rdx)
	incq	%rdx
	cmpl	%edx, %r14d
	jg	.L2933
	jmp	.L2932
.L2895:
	movq	656(%rsp), %r8
	xorl	%ecx, %ecx
	.p2align 4,,7
.L2906:
	movzbl	(%rsi,%rcx), %edx
	movzbl	(%r9,%rcx), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	(%r8,%rcx), %al
	movb	%al, (%rbx,%rcx)
	incq	%rcx
	cmpl	%ecx, %r14d
	jg	.L2906
	jmp	.L2932
.L2871:
	movq	656(%rsp), %rcx
	xorl	%eax, %eax
	.p2align 4,,7
.L2882:
	movzbl	(%rcx,%rax), %edx
	addb	(%r8,%rax), %dl
	movb	%dl, (%rbx,%rax)
	incq	%rax
	cmpl	%eax, %r14d
	jg	.L2882
	jmp	.L2932
.L2883:
	movq	656(%rsp), %rcx
	xorl	%eax, %eax
	.p2align 4,,7
.L2894:
	movzbl	(%rsi,%rax), %edx
	addb	(%rcx,%rax), %dl
	movb	%dl, (%rbx,%rax)
	incq	%rax
	cmpl	%eax, %r14d
	jg	.L2894
	jmp	.L2932
.L2910:
	movq	656(%rsp), %rcx
	xorl	%eax, %eax
	.p2align 4,,7
.L2921:
	movzbl	(%r8,%rax), %edx
	sarl	%edx
	addb	(%rcx,%rax), %dl
	movb	%dl, (%rbx,%rax)
	incq	%rax
	cmpl	%eax, %r14d
	jg	.L2921
	jmp	.L2932
.L3282:
	movq	%r11, %r10
	movq	%r8, %r9
	movl	232(%rsp), %ebp
	jmp	.L3078
.L3061:
	movq	96(%rsp), %rax
	movq	%r11, %r9
	leaq	(%r8,%rax), %rdi
	.p2align 4,,7
.L3070:
	movzbl	(%r8), %r10d
	incq	%r8
	addq	$4, %r9
	sarl	$6, %r10d
	movl	%r10d, %eax
	imull	%ecx, %eax
	movb	%al, -4(%r9)
	movzbl	-1(%r8), %eax
	sarl	$4, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	movb	%al, -3(%r9)
	movzbl	-1(%r8), %eax
	sarl	$2, %eax
	andl	$3, %eax
	imull	%ecx, %eax
	movb	%al, -2(%r9)
	movzbl	-1(%r8), %eax
	andl	$3, %eax
	imull	%ecx, %eax
	cmpq	%r8, %rdi
	movb	%al, -1(%r9)
	jne	.L3070
	jmp	.L3069
.L3073:
	movq	224(%rsp), %rax
	movq	%r11, %r9
	leaq	(%r8,%rax), %rdi
.L3080:
	movzbl	(%r8), %r10d
	incq	%r8
	addq	$8, %r9
	sarl	$7, %r10d
	movl	%r10d, %eax
	imull	%ecx, %eax
	movb	%al, -8(%r9)
	movzbl	-1(%r8), %eax
	sarl	$6, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -7(%r9)
	movzbl	-1(%r8), %eax
	sarl	$5, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -6(%r9)
	movzbl	-1(%r8), %eax
	sarl	$4, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -5(%r9)
	movzbl	-1(%r8), %eax
	sarl	$3, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -4(%r9)
	movzbl	-1(%r8), %eax
	sarl	$2, %eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -3(%r9)
	movzbl	-1(%r8), %eax
	sarl	%eax
	andl	$1, %eax
	imull	%ecx, %eax
	movb	%al, -2(%r9)
	movzbl	-1(%r8), %eax
	andl	$1, %eax
	imull	%ecx, %eax
	cmpq	%rdi, %r8
	movb	%al, -1(%r9)
	jne	.L3080
	jmp	.L3079
.L3275:
	movl	232(%rsp), %eax
	jmp	.L3046
.L3278:
	movl	232(%rsp), %r10d
	jmp	.L3060
.L3277:
	movdqa	%xmm2, %xmm4
	movq	%r11, %rax
	movq	%r8, %r9
	movq	%r8, %r10
	xorl	%ebp, %ebp
	punpcklbw	%xmm2, %xmm4
	punpckhbw	%xmm2, %xmm2
	movdqa	.LC2(%rip), %xmm0
	movdqa	.LC96(%rip), %xmm5
	movdqa	%xmm4, %xmm6
	movdqa	%xmm2, %xmm7
	jmp	.L3049
.L3281:
	movl	232(%rsp), %r10d
	jmp	.L3072
.L3111:
	xorl	%r10d, %r10d
	jmp	.L2875
.L3127:
	xorl	%r10d, %r10d
	jmp	.L2887
.L3143:
	xorl	%r11d, %r11d
	movdqa	.LC2(%rip), %xmm2
	jmp	.L2899
.L3160:
	xorl	%r10d, %r10d
	movdqa	.LC2(%rip), %xmm2
	jmp	.L2914
.L3176:
	xorl	%r10d, %r10d
	jmp	.L2926
.L3158:
	movl	$13, %ecx
	jmp	.L2911
.L3157:
	movl	$12, %ecx
	jmp	.L2911
.L3159:
	movl	$14, %ecx
	jmp	.L2911
.L3280:
	movdqa	%xmm2, %xmm5
	movq	%r11, 64(%rsp)
	movdqa	.LC97(%rip), %xmm6
	movq	%r8, %r9
	punpcklbw	%xmm2, %xmm5
	movq	%r8, %r10
	punpckhbw	%xmm2, %xmm2
	movq	%r8, %rdi
	movaps	%xmm6, 320(%rsp)
	movq	%r8, %rbp
	movl	$0, 48(%rsp)
	movdqa	%xmm5, %xmm7
	movdqa	%xmm2, %xmm10
	movdqa	%xmm5, %xmm6
	movdqa	.LC2(%rip), %xmm0
	movdqa	%xmm2, %xmm9
	movdqa	%xmm2, %xmm8
	movaps	%xmm5, 128(%rsp)
	jmp	.L3063
.L3164:
	movl	$3, %ecx
	jmp	.L2923
.L3163:
	movl	$2, %ecx
	jmp	.L2923
.L3162:
	movl	$1, %ecx
	jmp	.L2923
.L3156:
	movl	$11, %ecx
	jmp	.L2911
.L3155:
	movl	$10, %ecx
	jmp	.L2911
.L3154:
	movl	$9, %ecx
	jmp	.L2911
.L3153:
	movl	$8, %ecx
	jmp	.L2911
.L3152:
	movl	$7, %ecx
	jmp	.L2911
.L3151:
	movl	$6, %ecx
	jmp	.L2911
.L3150:
	movl	$5, %ecx
	jmp	.L2911
.L3149:
	movl	$4, %ecx
	jmp	.L2911
.L3148:
	movl	$3, %ecx
	jmp	.L2911
.L3147:
	movl	$2, %ecx
	jmp	.L2911
.L3146:
	movl	$1, %ecx
	jmp	.L2911
.L3126:
	movl	$14, %ecx
	jmp	.L2884
.L3125:
	movl	$13, %ecx
	jmp	.L2884
.L3124:
	movl	$12, %ecx
	jmp	.L2884
.L3123:
	movl	$11, %ecx
	jmp	.L2884
.L3122:
	movl	$10, %ecx
	jmp	.L2884
.L3133:
	movl	$5, %r8d
	jmp	.L2896
.L3132:
	movl	$4, %r8d
	jmp	.L2896
.L3131:
	movl	$3, %r8d
	jmp	.L2896
.L3130:
	movl	$2, %r8d
	jmp	.L2896
.L3129:
	movl	$1, %r8d
	jmp	.L2896
.L3175:
	movl	$14, %ecx
	jmp	.L2923
.L3174:
	movl	$13, %ecx
	jmp	.L2923
.L3173:
	movl	$12, %ecx
	jmp	.L2923
.L3172:
	movl	$11, %ecx
	jmp	.L2923
.L3171:
	movl	$10, %ecx
	jmp	.L2923
.L3170:
	movl	$9, %ecx
	jmp	.L2923
.L3169:
	movl	$8, %ecx
	jmp	.L2923
.L3168:
	movl	$7, %ecx
	jmp	.L2923
.L3167:
	movl	$6, %ecx
	jmp	.L2923
.L3166:
	movl	$5, %ecx
	jmp	.L2923
.L3165:
	movl	$4, %ecx
	jmp	.L2923
.L3121:
	movl	$9, %ecx
	jmp	.L2884
.L3120:
	movl	$8, %ecx
	jmp	.L2884
.L3119:
	movl	$7, %ecx
	jmp	.L2884
.L3118:
	movl	$6, %ecx
	jmp	.L2884
.L3117:
	movl	$5, %ecx
	jmp	.L2884
.L3116:
	movl	$4, %ecx
	jmp	.L2884
.L3115:
	movl	$3, %ecx
	jmp	.L2884
.L3114:
	movl	$2, %ecx
	jmp	.L2884
.L3113:
	movl	$1, %ecx
	jmp	.L2884
.L3110:
	movl	$14, %ecx
	jmp	.L2872
.L3109:
	movl	$13, %ecx
	jmp	.L2872
.L3108:
	movl	$12, %ecx
	jmp	.L2872
.L3107:
	movl	$11, %ecx
	jmp	.L2872
.L3106:
	movl	$10, %ecx
	jmp	.L2872
.L3105:
	movl	$9, %ecx
	jmp	.L2872
.L3104:
	movl	$8, %ecx
	jmp	.L2872
.L3103:
	movl	$7, %ecx
	jmp	.L2872
.L3102:
	movl	$6, %ecx
	jmp	.L2872
.L3101:
	movl	$5, %ecx
	jmp	.L2872
.L3100:
	movl	$4, %ecx
	jmp	.L2872
.L3099:
	movl	$3, %ecx
	jmp	.L2872
.L3098:
	movl	$2, %ecx
	jmp	.L2872
.L3097:
	movl	$1, %ecx
	jmp	.L2872
.L3142:
	movl	$14, %r8d
	jmp	.L2896
.L3141:
	movl	$13, %r8d
	jmp	.L2896
.L3140:
	movl	$12, %r8d
	jmp	.L2896
.L3139:
	movl	$11, %r8d
	jmp	.L2896
.L3138:
	movl	$10, %r8d
	jmp	.L2896
.L3137:
	movl	$9, %r8d
	jmp	.L2896
.L3136:
	movl	$8, %r8d
	jmp	.L2896
.L3135:
	movl	$7, %r8d
	jmp	.L2896
.L3134:
	movl	$6, %r8d
	jmp	.L2896
.L2834:
	leaq	_ZL16first_row_filter(%rip), %rax
	movzbl	(%rax,%rdi), %edi
	jmp	.L2836
	.seh_endproc
	.section .rdata,"dr"
.LC100:
	.ascii "max value > 255\0"
	.text
	.p2align 4,,15
	.def	_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_
_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_:
.LFB747:
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
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	60(%rsp), %rax
	testq	%rdx, %rdx
	movq	%rdx, %rdi
	movq	%r8, %rsi
	movq	208(%rcx), %rdx
	movq	%rcx, %rbx
	cmove	%rax, %rdi
	testq	%r8, %r8
	cmove	%rax, %rsi
	testq	%r9, %r9
	cmove	%rax, %r9
	movq	200(%rcx), %rax
	movq	%rdx, 192(%rcx)
	cmpq	%rdx, %rax
	movq	%rax, 184(%rcx)
	jb	.L3582
	movl	48(%rcx), %edx
	testl	%edx, %edx
	jne	.L3583
.L3567:
	movdqu	200(%rbx), %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 184(%rbx)
.L3573:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L3583:
	leaq	56(%rcx), %rbp
	movq	%r9, 40(%rsp)
	movq	40(%rcx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	movq	40(%rsp), %r9
	je	.L3584
	cltq
	leaq	57(%rbx), %rcx
	leaq	0(%rbp,%rax), %rdx
	movzbl	56(%rbx), %ebp
.L3569:
	cmpq	%rcx, %rdx
	movq	%rdx, 192(%rbx)
	movq	%rcx, 184(%rbx)
	ja	.L3570
.L3586:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L3567
	leaq	56(%rbx), %r12
	movq	%r9, 40(%rsp)
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r12, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	movq	40(%rsp), %r9
	je	.L3585
	movzbl	56(%rbx), %edx
	cltq
	leaq	57(%rbx), %rcx
	addq	%r12, %rax
.L3575:
	movq	%rax, 192(%rbx)
	movq	%rcx, 184(%rbx)
	jmp	.L3572
	.p2align 4,,7
.L3582:
	leaq	1(%rax), %rcx
	cmpq	%rcx, %rdx
	movq	%rcx, 184(%rbx)
	movzbl	(%rax), %ebp
	jbe	.L3586
.L3570:
	leaq	1(%rcx), %rax
	movq	%rax, 184(%rbx)
	movzbl	(%rcx), %edx
.L3572:
	cmpb	$80, %bpl
	jne	.L3567
	leal	-53(%rdx), %eax
	cmpb	$1, %al
	ja	.L3567
	xorl	%eax, %eax
	cmpb	$54, %dl
	leaq	59(%rsp), %rbp
	sete	%al
	movq	%rbx, %rcx
	leal	1(%rax,%rax), %eax
	movl	%eax, (%r9)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movb	%al, 59(%rsp)
	call	_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	call	_ZL20stbi__pnm_getintegerP13stbi__contextPc
	movq	%rbp, %rdx
	movl	%eax, (%rdi)
	movq	%rbx, %rcx
	call	_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	call	_ZL20stbi__pnm_getintegerP13stbi__contextPc
	movq	%rbp, %rdx
	movl	%eax, (%rsi)
	movq	%rbx, %rcx
	call	_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	call	_ZL20stbi__pnm_getintegerP13stbi__contextPc
	movl	%eax, %edx
	movl	$1, %eax
	cmpl	$255, %edx
	jle	.L3573
	leaq	.LC100(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3573
	.p2align 4,,7
.L3584:
	leaq	57(%rbx), %rdx
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%ebp, %ebp
	movq	%rdx, %rcx
	jmp	.L3569
	.p2align 4,,7
.L3585:
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%edx, %edx
	movq	%rax, %rcx
	jmp	.L3575
	.seh_endproc
	.p2align 4,,15
	.def	_ZL18stbi__hdr_gettokenP13stbi__contextPc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18stbi__hdr_gettokenP13stbi__contextPc
_ZL18stbi__hdr_gettokenP13stbi__contextPc:
.LFB734:
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
	movq	184(%rcx), %rax
	cmpq	192(%rcx), %rax
	movq	%rcx, %rbx
	movq	%rdx, %r12
	jb	.L3618
	movl	48(%rcx), %r8d
	xorl	%edi, %edi
	testl	%r8d, %r8d
	jne	.L3619
.L3589:
	leaq	56(%rbx), %r13
	xorl	%esi, %esi
	.p2align 4,,7
.L3611:
	cmpq	$0, 16(%rbx)
	movslq	%esi, %rbp
	je	.L3598
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L3593
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L3598
.L3612:
	movq	%r12, %rax
	movb	$0, (%r12,%rbp)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L3598:
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jnb	.L3612
.L3593:
	cmpb	$10, %dil
	je	.L3612
	cmpq	$1022, %rsi
	movb	%dil, (%r12,%rsi)
	je	.L3604
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L3620
	movl	48(%rbx), %eax
	xorl	%edi, %edi
	testl	%eax, %eax
	jne	.L3621
.L3608:
	incq	%rsi
	jmp	.L3611
	.p2align 4,,7
.L3604:
	cmpq	$0, 16(%rbx)
	je	.L3606
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	jne	.L3603
.L3601:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$10, %al
	jne	.L3604
.L3605:
	movl	$1023, %ebp
	jmp	.L3612
	.p2align 4,,7
.L3620:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edi
	jmp	.L3608
	.p2align 4,,7
.L3621:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r13, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3609
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L3610:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L3608
	.p2align 4,,7
.L3609:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %edi
	addq	%r13, %rax
	jmp	.L3610
	.p2align 4,,7
.L3603:
	movl	48(%rbx), %edx
	testl	%edx, %edx
	je	.L3605
.L3606:
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jb	.L3601
	movl	$1023, %ebp
	jmp	.L3612
	.p2align 4,,7
.L3619:
	leaq	56(%rcx), %rsi
	movl	52(%rbx), %r8d
	movq	40(%rcx), %rcx
	movq	%rsi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L3622
	movzbl	56(%rbx), %edi
	cltq
	leaq	57(%rbx), %rdx
	addq	%rsi, %rax
.L3591:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L3589
	.p2align 4,,7
.L3618:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rcx)
	movzbl	(%rax), %edi
	jmp	.L3589
.L3622:
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
	jmp	.L3591
	.seh_endproc
	.section .rdata,"dr"
.LC101:
	.ascii "FORMAT=32-bit_rle_rgbe\0"
.LC102:
	.ascii "-Y \0"
.LC103:
	.ascii "+X \0"
	.text
	.p2align 4,,15
	.def	_ZL14stbi__hdr_infoP13stbi__contextPiS1_S1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__hdr_infoP13stbi__contextPiS1_S1_
_ZL14stbi__hdr_infoP13stbi__contextPiS1_S1_:
.LFB737:
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
	leaq	36(%rsp), %rax
	testq	%rdx, %rdx
	movq	%rdx, %r15
	movq	%r8, %r13
	movq	%rcx, %rbx
	cmove	%rax, %r15
	testq	%r8, %r8
	cmove	%rax, %r13
	testq	%r9, %r9
	cmovne	%r9, %rax
	movq	%rax, 1176(%rsp)
	call	_ZL14stbi__hdr_testP13stbi__context
	testl	%eax, %eax
	movl	%eax, %ebp
	je	.L3638
	xorl	%r14d, %r14d
	leaq	48(%rsp), %rbp
	movl	$1, %r12d
	jmp	.L3628
	.p2align 4,,7
.L3640:
	leaq	.LC101(%rip), %rdi
	movl	$23, %ecx
	movq	%rax, %rsi
	repz cmpsb
	cmove	%r12d, %r14d
.L3628:
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	call	_ZL18stbi__hdr_gettokenP13stbi__contextPc
	movq	%rax, 40(%rsp)
	cmpb	$0, (%rax)
	jne	.L3640
	testl	%r14d, %r14d
	jne	.L3641
.L3639:
	movdqu	200(%rbx), %xmm0
	xorl	%ebp, %ebp
	movups	%xmm0, 184(%rbx)
.L3629:
	movl	%ebp, %eax
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
	.p2align 4,,7
.L3641:
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	leaq	.LC102(%rip), %rdi
	call	_ZL18stbi__hdr_gettokenP13stbi__contextPc
	movl	$3, %ecx
	movq	%rax, 40(%rsp)
	movq	%rax, %rsi
	repz cmpsb
	seta	%bpl
	setb	%dl
	subl	%edx, %ebp
	movsbl	%bpl, %ebp
	testl	%ebp, %ebp
	jne	.L3639
	leaq	3(%rax), %rcx
	leaq	40(%rsp), %rdx
	movl	$10, %r8d
	movq	%rcx, 40(%rsp)
	call	strtol
	movq	40(%rsp), %rdx
	movl	%eax, 0(%r13)
	cmpb	$32, (%rdx)
	jne	.L3634
	leaq	1(%rdx), %rax
	.p2align 4,,7
.L3635:
	movq	%rax, 40(%rsp)
	movq	%rax, %rdx
	incq	%rax
	cmpb	$32, -1(%rax)
	je	.L3635
.L3634:
	leaq	.LC103(%rip), %rdi
	movl	$3, %ecx
	movq	%rdx, %rsi
	repz cmpsb
	je	.L3636
	.p2align 4,,7
.L3638:
	movdqu	200(%rbx), %xmm0
	movups	%xmm0, 184(%rbx)
	jmp	.L3629
.L3636:
	leaq	3(%rdx), %rcx
	movl	$10, %r8d
	xorl	%edx, %edx
	movl	$1, %ebp
	movq	%rcx, 40(%rsp)
	call	strtol
	movl	%eax, (%r15)
	movq	1176(%rsp), %rax
	movl	$3, (%rax)
	jmp	.L3629
	.seh_endproc
	.section .rdata,"dr"
.LC104:
	.ascii "#?RADIANCE\0"
.LC105:
	.ascii "#?RGBE\0"
.LC106:
	.ascii "not HDR\0"
.LC107:
	.ascii "unsupported format\0"
.LC108:
	.ascii "unsupported data layout\0"
	.align 8
.LC109:
	.ascii "invalid decoded scanline length\0"
.LC110:
	.ascii "corrupt\0"
	.text
	.p2align 4,,15
	.def	_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.34;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.34
_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.34:
.LFB7886:
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
	subq	$1240, %rsp
	.seh_stackalloc	1240
	.seh_endprologue
	leaq	.LC104(%rip), %rdi
	leaq	208(%rsp), %r13
	movq	%rdx, %r12
	movq	%rcx, %r14
	movq	%r8, 1328(%rsp)
	movq	%r9, %rbx
	movq	%r13, %rdx
	call	_ZL18stbi__hdr_gettokenP13stbi__contextPc
	movl	$11, %ecx
	movq	%rax, %rsi
	repz cmpsb
	je	.L3694
	leaq	.LC105(%rip), %rdi
	movl	$7, %ecx
	movq	%rax, %rsi
	repz cmpsb
	jne	.L3644
.L3694:
	xorl	%r15d, %r15d
	movl	$1, %ebp
	jmp	.L3645
	.p2align 4,,7
.L3730:
	leaq	.LC101(%rip), %rdi
	movl	$23, %ecx
	movq	%rax, %rsi
	repz cmpsb
	cmove	%ebp, %r15d
.L3645:
	movq	%r13, %rdx
	movq	%r14, %rcx
	call	_ZL18stbi__hdr_gettokenP13stbi__contextPc
	movq	%rax, 200(%rsp)
	cmpb	$0, (%rax)
	jne	.L3730
	testl	%r15d, %r15d
	je	.L3731
	movq	%r14, %rcx
	movq	%r13, %rdx
	leaq	.LC102(%rip), %rdi
	call	_ZL18stbi__hdr_gettokenP13stbi__contextPc
	movl	$3, %ecx
	movq	%rax, 200(%rsp)
	movq	%rax, %rsi
	repz cmpsb
	jne	.L3654
	leaq	3(%rax), %rcx
	leaq	200(%rsp), %rdx
	movl	$10, %r8d
	movq	%rcx, 200(%rsp)
	call	strtol
	movq	200(%rsp), %rdx
	movl	%eax, 152(%rsp)
	cmpb	$32, (%rdx)
	jne	.L3652
	leaq	1(%rdx), %rax
	.p2align 4,,7
.L3653:
	movq	%rax, 200(%rsp)
	movq	%rax, %rdx
	incq	%rax
	cmpb	$32, -1(%rax)
	je	.L3653
.L3652:
	leaq	.LC103(%rip), %rdi
	movl	$3, %ecx
	movq	%rdx, %rsi
	repz cmpsb
	jne	.L3654
	leaq	3(%rdx), %rcx
	movl	$10, %r8d
	xorl	%edx, %edx
	movq	%rcx, 200(%rsp)
	call	strtol
	movl	152(%rsp), %edi
	movl	%eax, (%r12)
	testq	%rbx, %rbx
	movl	%eax, 128(%rsp)
	movq	1328(%rsp), %rax
	movl	%edi, (%rax)
	je	.L3655
	movl	$3, (%rbx)
.L3655:
	movl	1344(%rsp), %r9d
	movl	$3, %eax
	movl	128(%rsp), %edi
	testl	%r9d, %r9d
	cmovne	1344(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	%edi, %eax
	shrl	$31, %eax
	jne	.L3657
	movl	152(%rsp), %esi
	movl	%esi, %eax
	shrl	$31, %eax
	jne	.L3657
	testl	%esi, %esi
	jne	.L3732
.L3658:
	movl	1344(%rsp), %r8d
	movl	152(%rsp), %ecx
	imull	128(%rsp), %ecx
	testl	%r8d, %r8d
	js	.L3657
	movl	$2147483647, %r8d
	movl	%r8d, %eax
	cltd
	idivl	1344(%rsp)
	cmpl	%eax, %ecx
	jg	.L3657
	imull	1344(%rsp), %ecx
	cmpl	$536870911, %ecx
	ja	.L3657
	movl	152(%rsp), %edi
	testl	%edi, %edi
	je	.L3660
	movl	%r8d, %eax
	cltd
	idivl	%edi
	cmpl	%eax, 128(%rsp)
	jg	.L3727
.L3660:
	sall	$2, %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	je	.L3727
	movl	128(%rsp), %eax
	subl	$8, %eax
	cmpl	$32759, %eax
	ja	.L3697
	movl	152(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L3733
	movl	128(%rsp), %edi
	movl	1344(%rsp), %eax
	movq	$0, 88(%rsp)
	movl	$0, 156(%rsp)
	imull	%edi, %eax
	cltq
	salq	$2, %rax
	movq	%rax, 168(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 160(%rsp)
	movslq	1344(%rsp), %rax
	salq	$2, %rax
	movq	%rax, 184(%rsp)
	movl	%edi, %eax
	decl	%eax
	leaq	4(,%rax,4), %rax
	movq	%rax, 176(%rsp)
	leaq	56(%r14), %rax
	movq	%rax, 104(%rsp)
.L3691:
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	%r14, %rcx
	movl	%eax, %edi
	call	_ZL10stbi__get8P13stbi__context
	movq	%r14, %rcx
	movl	%eax, %esi
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$2, %dil
	movzbl	%al, %ebx
	jne	.L3665
	cmpb	$2, %sil
	jne	.L3665
	testb	%al, %al
	js	.L3665
	movq	%r14, %rcx
	sall	$8, %ebx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	orl	%eax, %ebx
	cmpl	%ebx, 128(%rsp)
	jne	.L3734
	cmpq	$0, 88(%rsp)
	je	.L3735
.L3668:
	movq	$0, 96(%rsp)
	movq	96(%rsp), %rax
	movq	%r14, %r13
.L3689:
	addq	$100, %rax
	xorl	%r14d, %r14d
	movq	%rax, 144(%rsp)
	.p2align 4,,7
.L3669:
	movl	128(%rsp), %ebx
	subl	%r14d, %ebx
	testl	%ebx, %ebx
	jle	.L3670
.L3740:
	movq	184(%r13), %rcx
	movq	192(%r13), %rdx
	cmpq	%rdx, %rcx
	jb	.L3736
	movl	48(%r13), %edx
	testl	%edx, %edx
	je	.L3669
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	104(%rsp), %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L3674
	leaq	57(%r13), %rdx
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	xorl	%edi, %edi
	movq	%rdx, %rax
.L3675:
	cmpb	$-128, %dil
	movq	%rdx, 192(%r13)
	movq	%rax, 184(%r13)
	ja	.L3737
.L3676:
	cmpl	%edi, %ebx
	jl	.L3682
	testl	%edi, %edi
	je	.L3669
	leal	0(,%r14,4), %ebp
	leal	-1(%rdi), %r12d
	xorl	%ebx, %ebx
	movq	104(%rsp), %r15
	movslq	%ebp, %rbp
	addq	96(%rsp), %rbp
	addq	88(%rsp), %rbp
	jmp	.L3683
	.p2align 4,,7
.L3684:
	movl	48(%r13), %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	jne	.L3738
.L3685:
	cmpq	%r12, %rbx
	movb	%sil, 0(%rbp,%rbx,4)
	je	.L3688
.L3739:
	movq	184(%r13), %rax
	movq	192(%r13), %rdx
	incq	%rbx
.L3683:
	cmpq	%rax, %rdx
	jbe	.L3684
	leaq	1(%rax), %rdx
	cmpq	%r12, %rbx
	movq	%rdx, 184(%r13)
	movzbl	(%rax), %esi
	movb	%sil, 0(%rbp,%rbx,4)
	jne	.L3739
.L3688:
	movl	128(%rsp), %ebx
	addl	%edi, %r14d
	subl	%r14d, %ebx
	testl	%ebx, %ebx
	jg	.L3740
.L3670:
	incq	96(%rsp)
	movq	96(%rsp), %rax
	cmpq	$4, %rax
	jne	.L3689
	movq	88(%rsp), %rsi
	movq	160(%rsp), %rdi
	movq	%r13, %r14
	movq	184(%rsp), %rbp
	movl	1344(%rsp), %r12d
	movq	%rsi, %rbx
	addq	176(%rsp), %rsi
	.p2align 4,,7
.L3690:
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movl	%r12d, %r8d
	addq	$4, %rbx
	addq	%rbp, %rdi
	call	_ZL17stbi__hdr_convertPfPhi
	cmpq	%rbx, %rsi
	jne	.L3690
	incl	156(%rsp)
	movq	168(%rsp), %rsi
	movl	156(%rsp), %eax
	addq	%rsi, 160(%rsp)
	cmpl	%eax, 152(%rsp)
	jne	.L3691
	movq	88(%rsp), %rcx
	call	free
	movq	136(%rsp), %rax
	jmp	.L3712
	.p2align 4,,7
.L3654:
	leaq	.LC108(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L3712:
	addq	$1240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L3731:
	leaq	.LC107(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3712
.L3732:
	movl	$2147483647, %eax
	cltd
	idivl	%esi
	cmpl	%eax, %edi
	jle	.L3658
	.p2align 4,,7
.L3657:
	leaq	.LC61(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3712
.L3644:
	leaq	.LC106(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3712
	.p2align 4,,7
.L3738:
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%r15, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L3686
	leaq	57(%r13), %rax
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	movq	%rax, %rdx
.L3687:
	movq	%rax, 192(%r13)
	movq	%rdx, 184(%r13)
	jmp	.L3685
	.p2align 4,,7
.L3686:
	cltq
	leaq	57(%r13), %rdx
	movzbl	56(%r13), %esi
	addq	%r15, %rax
	jmp	.L3687
	.p2align 4,,7
.L3736:
	leaq	1(%rcx), %rax
	movq	%rax, 184(%r13)
	movzbl	(%rcx), %edi
	cmpb	$-128, %dil
	jbe	.L3676
.L3737:
	addl	$-128, %edi
	movq	%r13, %rcx
	movzbl	%dil, %esi
	call	_ZL10stbi__get8P13stbi__context
	cmpl	%esi, %ebx
	jl	.L3682
	leal	-15(%rsi), %edi
	cmpl	$16, %esi
	movl	%edi, 36(%rsp)
	jle	.L3700
	leal	0(,%r14,4), %r10d
	movq	144(%rsp), %rdi
	movl	%r14d, 132(%rsp)
	movq	%r13, 1312(%rsp)
	leal	4(%r10), %r8d
	movslq	%r10d, %rcx
	leal	40(%r10), %r12d
	leaq	(%rdi,%rcx), %rdx
	addq	88(%rsp), %rdx
	leal	44(%r10), %ebp
	movslq	%r8d, %rdi
	leal	8(%r10), %r8d
	negq	%rcx
	movq	%rdi, %r11
	movslq	%r12d, %r12
	movslq	%ebp, %rbp
	movslq	%r8d, %rdi
	leal	12(%r10), %r8d
	movq	%r11, %r13
	movq	%rdi, 112(%rsp)
	leal	48(%r10), %edi
	movslq	%r8d, %rbx
	leal	16(%r10), %r8d
	movq	%rbx, 120(%rsp)
	leal	56(%r10), %ebx
	movslq	%edi, %rdi
	movslq	%r8d, %r15
	leal	20(%r10), %r8d
	movq	%r15, 40(%rsp)
	movslq	%ebx, %rbx
	movslq	%r8d, %r15
	leal	24(%r10), %r8d
	movq	%r15, 48(%rsp)
	movslq	%r8d, %r15
	leal	28(%r10), %r8d
	movq	%r15, 56(%rsp)
	leal	32(%r10), %r15d
	movslq	%r8d, %r8
	movq	%r8, 64(%rsp)
	leal	36(%r10), %r8d
	movslq	%r15d, %r15
	movslq	%r8d, %r8
	movq	%r8, 72(%rsp)
	leal	52(%r10), %r8d
	addl	$60, %r10d
	movslq	%r10d, %r10
	movslq	%r8d, %r9
	movl	%r14d, %r8d
	movq	120(%rsp), %r14
	movl	%esi, 120(%rsp)
	movq	112(%rsp), %rsi
	movq	%r9, 80(%rsp)
	xorl	%r9d, %r9d
	.p2align 4,,7
.L3679:
	leaq	(%rdx,%r13), %r11
	movb	%al, -100(%rdx)
	prefetcht0	(%rdx)
	addl	$16, %r8d
	movb	%al, -100(%r11,%rcx)
	leaq	(%rsi,%rdx), %r11
	movb	%al, -100(%r11,%rcx)
	leaq	(%rdx,%r14), %r11
	movb	%al, -100(%r11,%rcx)
	movq	40(%rsp), %r11
	addq	%rdx, %r11
	movb	%al, -100(%r11,%rcx)
	movq	48(%rsp), %r11
	addq	%rdx, %r11
	movb	%al, -100(%r11,%rcx)
	movq	56(%rsp), %r11
	addq	%rdx, %r11
	movb	%al, -100(%r11,%rcx)
	movq	64(%rsp), %r11
	addq	%rdx, %r11
	movb	%al, -100(%r11,%rcx)
	leaq	(%rdx,%r15), %r11
	movb	%al, -100(%r11,%rcx)
	movq	72(%rsp), %r11
	addq	%rdx, %r11
	movb	%al, -100(%r11,%rcx)
	leaq	(%rdx,%r12), %r11
	movb	%al, -100(%r11,%rcx)
	leaq	(%rdx,%rbp), %r11
	movb	%al, -100(%r11,%rcx)
	leaq	(%rdx,%rdi), %r11
	movb	%al, -100(%r11,%rcx)
	movq	80(%rsp), %r11
	addq	%rdx, %r11
	movb	%al, -100(%r11,%rcx)
	leaq	(%rdx,%rbx), %r11
	movb	%al, -100(%r11,%rcx)
	leaq	(%rdx,%r10), %r11
	addq	$64, %rdx
	movb	%al, -100(%r11,%rcx)
	movl	%r9d, %r11d
	addl	$16, %r9d
	addl	$17, %r11d
	cmpl	%r11d, 36(%rsp)
	jg	.L3679
	movl	132(%rsp), %r14d
	movq	1312(%rsp), %r13
	movl	120(%rsp), %esi
.L3678:
	leal	0(,%r8,4), %edx
	movslq	%edx, %rdx
	addq	96(%rsp), %rdx
	addq	88(%rsp), %rdx
	.p2align 4,,7
.L3681:
	incl	%r9d
	movb	%al, (%rdx)
	addq	$4, %rdx
	cmpl	%r9d, %esi
	jg	.L3681
	addl	%esi, %r14d
	jmp	.L3669
.L3682:
	movq	136(%rsp), %rcx
	call	free
	movq	88(%rsp), %rcx
	call	free
	leaq	.LC110(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3712
	.p2align 4,,7
.L3674:
	movq	104(%rsp), %rdi
	cltq
	leaq	(%rdi,%rax), %rdx
	leaq	57(%r13), %rax
	movzbl	56(%r13), %edi
	jmp	.L3675
.L3697:
	xorl	%edx, %edx
.L3661:
	cmpl	%edx, 152(%rsp)
	movq	136(%rsp), %rax
	jle	.L3712
	movl	128(%rsp), %eax
	xorl	%esi, %esi
	movl	%edx, %r12d
	incl	%edx
	cmpl	%esi, %eax
	jle	.L3661
.L3741:
	imull	%r12d, %eax
	movl	1344(%rsp), %edi
	leaq	192(%rsp), %rbp
	movl	%esi, %r13d
	movl	%edx, %ebx
	incl	%esi
	imull	%eax, %edi
	movslq	%edi, %rdi
.L3663:
	movl	$4, %r8d
	movq	%rbp, %rdx
	movq	%r14, %rcx
	call	_ZL10stbi__getnP13stbi__contextPhi
	movl	1344(%rsp), %eax
	movl	1344(%rsp), %r8d
	movq	%rbp, %rdx
	imull	%r13d, %eax
	cltq
	addq	%rax, %rdi
	movq	136(%rsp), %rax
	leaq	(%rax,%rdi,4), %rcx
	call	_ZL17stbi__hdr_convertPfPhi
	movl	128(%rsp), %eax
	movl	%ebx, %edx
	cmpl	%esi, %eax
	jle	.L3661
	jmp	.L3741
.L3700:
	movl	%r14d, %r8d
	xorl	%r9d, %r9d
	jmp	.L3678
.L3735:
	movl	128(%rsp), %ecx
	xorl	%r8d, %r8d
	movl	$4, %edx
	call	_ZL17stbi__malloc_mad2iii
	testq	%rax, %rax
	movq	%rax, 88(%rsp)
	jne	.L3668
	movq	136(%rsp), %rcx
	call	free
.L3727:
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3712
.L3665:
	movq	%r14, %rcx
	movb	%dil, 192(%rsp)
	movb	%sil, 193(%rsp)
	movb	%al, 194(%rsp)
	leaq	192(%rsp), %rbp
	movl	$1, %ebx
	call	_ZL10stbi__get8P13stbi__context
	movl	1344(%rsp), %r8d
	movq	136(%rsp), %rcx
	movq	%rbp, %rdx
	movb	%al, 195(%rsp)
	movl	$2, %esi
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	movl	$1, %r13d
	call	_ZL17stbi__hdr_convertPfPhi
	movq	88(%rsp), %rcx
	call	free
	jmp	.L3663
.L3733:
	movq	136(%rsp), %rax
	jmp	.L3712
.L3734:
	movq	136(%rsp), %rcx
	call	free
	movq	88(%rsp), %rcx
	call	free
	leaq	.LC109(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3712
	.seh_endproc
	.section .rdata,"dr"
.LC111:
	.ascii "unknown BMP\0"
.LC112:
	.ascii "bad BMP\0"
.LC113:
	.ascii "monochrome\0"
.LC114:
	.ascii "BMP RLE\0"
.LC115:
	.ascii "not BMP\0"
	.text
	.p2align 4,,15
	.def	_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data.constprop.113;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data.constprop.113
_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data.constprop.113:
.LFB7949:
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
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$66, %al
	je	.L3780
.L3743:
	leaq	.LC115(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L3777:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3780:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$77, %al
	jne	.L3743
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 4(%rsi)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %edi
	call	_ZL13stbi__get16leP13stbi__context
	sall	$16, %eax
	movl	$0, 24(%rsi)
	movl	$0, 20(%rsi)
	addl	%eax, %edi
	movl	$0, 16(%rsi)
	movl	$0, 12(%rsi)
	cmpl	$12, %edi
	movl	%edi, 8(%rsi)
	je	.L3762
	cmpl	$40, %edi
	je	.L3762
	movl	%edi, %eax
	andl	$-17, %eax
	cmpl	$108, %eax
	je	.L3745
	cmpl	$56, %edi
	jne	.L3781
.L3745:
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, (%rbx)
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 4(%rbx)
	call	_ZL13stbi__get16leP13stbi__context
	decl	%eax
	jne	.L3757
.L3748:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movl	%eax, (%rsi)
	decl	%eax
	je	.L3782
	cmpl	$12, %edi
	je	.L3778
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movl	%eax, %ebp
	leal	-1(%rax), %eax
	cmpl	$1, %eax
	jbe	.L3783
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
	movl	%edi, %eax
	andl	$-17, %eax
	cmpl	$40, %eax
	jne	.L3752
	cmpl	$56, %edi
	je	.L3784
.L3753:
	movl	(%rsi), %eax
	leal	-16(%rax), %edx
	andl	$-17, %edx
	jne	.L3778
	testl	%ebp, %ebp
	je	.L3785
	cmpl	$3, %ebp
	jne	.L3757
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 12(%rsi)
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 16(%rsi)
	call	_ZL13stbi__get32leP13stbi__context
	movl	16(%rsi), %edx
	cmpl	%edx, 12(%rsi)
	movl	%eax, 20(%rsi)
	jne	.L3778
	cmpl	%edx, %eax
	je	.L3757
.L3778:
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3762:
	cmpl	$12, %edi
	jne	.L3745
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, (%rbx)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 4(%rbx)
	call	_ZL13stbi__get16leP13stbi__context
	decl	%eax
	je	.L3748
.L3757:
	leaq	.LC112(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3752:
	cmpl	$108, %eax
	jne	.L3757
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 12(%rsi)
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 16(%rsi)
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 20(%rsi)
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, 24(%rsi)
	movl	$12, %esi
	call	_ZL13stbi__get32leP13stbi__context
	.p2align 4,,7
.L3759:
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	decl	%esi
	jne	.L3759
	cmpl	$124, %edi
	jne	.L3778
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movl	$1, %eax
	jmp	.L3777
	.p2align 4,,7
.L3785:
	cmpl	$32, %eax
	je	.L3786
	movl	$31744, 12(%rsi)
	movl	$992, 16(%rsi)
	movl	$31, 20(%rsi)
	jmp	.L3778
	.p2align 4,,7
.L3781:
	leaq	.LC111(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3777
	.p2align 4,,7
.L3783:
	leaq	.LC114(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3777
	.p2align 4,,7
.L3782:
	leaq	.LC113(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3777
	.p2align 4,,7
.L3784:
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbx, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	jmp	.L3753
.L3786:
	movl	$16711680, 12(%rsi)
	movl	$65280, 16(%rsi)
	movl	$1, %eax
	movl	$255, 20(%rsi)
	movl	$-16777216, 24(%rsi)
	movl	$0, 28(%rsi)
	jmp	.L3777
	.seh_endproc
	.section .rdata,"dr"
.LC116:
	.ascii "invalid\0"
.LC117:
	.ascii "bad bpp\0"
.LC118:
	.ascii "bad masks\0"
	.text
	.p2align 4,,15
	.def	_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.24;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.24
_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.24:
.LFB7876:
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
	movq	%rdx, 1288(%rsp)
	leaq	144(%rsp), %rdx
	movq	%rcx, %rbx
	movq	%r8, 1296(%rsp)
	movq	%r9, 1304(%rsp)
	movl	$255, 172(%rsp)
	call	_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data.constprop.113
	testq	%rax, %rax
	je	.L3971
	movl	4(%rbx), %eax
	xorl	%r12d, %r12d
	movl	%eax, %esi
	movl	%eax, 124(%rsp)
	sarl	$31, %eax
	xorl	%eax, %esi
	subl	%eax, %esi
	movl	156(%rsp), %eax
	movl	%esi, 4(%rbx)
	movl	%eax, 84(%rsp)
	movl	160(%rsp), %eax
	movl	%eax, 88(%rsp)
	movl	164(%rsp), %eax
	movl	%eax, 92(%rsp)
	movl	168(%rsp), %eax
	movl	%eax, 80(%rsp)
	movl	172(%rsp), %eax
	movl	%eax, 72(%rsp)
	movl	152(%rsp), %eax
	cmpl	$12, %eax
	je	.L3973
	cmpl	$15, 144(%rsp)
	jle	.L3974
.L3791:
	cmpl	$1, 80(%rsp)
	movl	(%rbx), %ebp
	movl	%esi, %r8d
	movl	%ebp, %edx
	sbbl	%edi, %edi
	addl	$4, %edi
	cmpl	$3, 1312(%rsp)
	movl	%edi, 8(%rbx)
	cmovge	1312(%rsp), %edi
	xorl	%r9d, %r9d
	movl	%edi, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L3975
	xorl	%r9d, %r9d
	movl	%esi, %r8d
	movl	%ebp, %edx
	movl	%edi, %ecx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L3976
	cmpl	$15, 144(%rsp)
	jg	.L3796
	testl	%r12d, %r12d
	je	.L3797
	cmpl	$256, %r12d
	jg	.L3797
	testl	%r12d, %r12d
	jle	.L3820
	leaq	176(%rsp), %rcx
	leal	-1(%r12), %r8d
	movq	184(%rbx), %rdx
	movq	192(%rbx), %rax
	leaq	179(%rsp), %r14
	leaq	56(%rbx), %rbp
	leaq	7(%rcx,%r8,4), %r13
	jmp	.L3821
	.p2align 4,,7
.L3801:
	movl	48(%rbx), %r10d
	testl	%r10d, %r10d
	jne	.L3977
	movb	$0, -1(%r14)
	movq	%rdx, %r8
.L3806:
	movl	48(%rbx), %r9d
	testl	%r9d, %r9d
	jne	.L3978
	movb	$0, -2(%r14)
	movq	%r8, %rcx
.L3811:
	movl	48(%rbx), %r8d
	testl	%r8d, %r8d
	jne	.L3979
	cmpl	$12, 152(%rsp)
	movb	$0, -3(%r14)
	movq	%rcx, %rdx
	je	.L3816
	movq	%rcx, %rdx
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L3980
	.p2align 4,,7
.L3816:
	movb	$-1, (%r14)
	addq	$4, %r14
	cmpq	%r14, %r13
	je	.L3820
.L3821:
	cmpq	%rax, %rdx
	jnb	.L3801
	leaq	1(%rdx), %r8
	movq	%r8, 184(%rbx)
	movzbl	(%rdx), %edx
.L3802:
	cmpq	%rax, %r8
	movb	%dl, -1(%r14)
	jnb	.L3806
	leaq	1(%r8), %rcx
	movq	%rcx, 184(%rbx)
	movzbl	(%r8), %edx
.L3807:
	cmpq	%rax, %rcx
	movb	%dl, -2(%r14)
	jnb	.L3811
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rcx), %ecx
.L3812:
	cmpl	$12, 152(%rsp)
	movb	%cl, -3(%r14)
	je	.L3816
	cmpq	%rax, %rdx
	jnb	.L3902
	movb	$-1, (%r14)
	addq	$4, %r14
	incq	%rdx
	cmpq	%r14, %r13
	movq	%rdx, 184(%rbx)
	jne	.L3821
.L3820:
	movl	148(%rsp), %edx
	movl	152(%rsp), %eax
	movq	%rbx, %rcx
	subl	$14, %edx
	subl	%eax, %edx
	cmpl	$12, %eax
	setne	%al
	movzbl	%al, %eax
	addl	$3, %eax
	imull	%eax, %r12d
	subl	%r12d, %edx
	call	_ZL10stbi__skipP13stbi__contexti
	movl	144(%rsp), %eax
	cmpl	$4, %eax
	je	.L3981
	cmpl	$8, %eax
	jne	.L3824
	movl	(%rbx), %r9d
	movl	%r9d, %r13d
.L3823:
	movl	4(%rbx), %eax
	negl	%r13d
	andl	$3, %r13d
	movl	%r13d, 48(%rsp)
	testl	%eax, %eax
	jle	.L3825
	leaq	56(%rbx), %rbp
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movl	%edi, %r14d
	.p2align 4,,7
.L3841:
	testl	%r9d, %r9d
	jle	.L3826
	xorl	%edi, %edi
	movl	%r15d, %r13d
	jmp	.L3839
	.p2align 4,,7
.L3827:
	movl	48(%rbx), %edx
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	testl	%edx, %edx
	jne	.L3982
.L3828:
	xorl	%edx, %edx
	cmpl	$4, 144(%rsp)
	je	.L3983
.L3831:
	cltq
	movslq	%r13d, %rcx
	cmpl	$4, %r14d
	movzbl	176(%rsp,%rax,4), %r8d
	leal	3(%r13), %r15d
	movb	%r8b, (%rsi,%rcx)
	movzbl	177(%rsp,%rax,4), %r8d
	leal	1(%r13), %ecx
	movzbl	178(%rsp,%rax,4), %eax
	movslq	%ecx, %rcx
	movb	%r8b, (%rsi,%rcx)
	leal	2(%r13), %ecx
	movslq	%ecx, %rcx
	movb	%al, (%rsi,%rcx)
	je	.L3984
	leal	1(%rdi), %eax
	cmpl	%eax, (%rbx)
	je	.L3826
.L3988:
	cmpl	$8, 144(%rsp)
	je	.L3985
.L3833:
	movslq	%edx, %rdx
	movslq	%r15d, %rax
	cmpl	$4, %r14d
	movzbl	176(%rsp,%rdx,4), %ecx
	leal	3(%r15), %r13d
	movb	%cl, (%rsi,%rax)
	movzbl	177(%rsp,%rdx,4), %ecx
	leal	1(%r15), %eax
	movzbl	178(%rsp,%rdx,4), %edx
	cltq
	movb	%cl, (%rsi,%rax)
	leal	2(%r15), %eax
	cltq
	movb	%dl, (%rsi,%rax)
	je	.L3986
	addl	$2, %edi
	cmpl	%edi, (%rbx)
	jle	.L3987
.L3839:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L3827
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	xorl	%edx, %edx
	movzbl	(%rax), %eax
	cmpl	$4, 144(%rsp)
	movl	%eax, %r15d
	jne	.L3831
.L3983:
	movl	%r15d, %edx
	sarl	$4, %eax
	andl	$15, %edx
	jmp	.L3831
	.p2align 4,,7
.L3977:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3804
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%edx, %edx
	movq	%rax, %r8
.L3805:
	movq	%rax, 192(%rbx)
	movq	%r8, 184(%rbx)
	jmp	.L3802
	.p2align 4,,7
.L3979:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3814
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
.L3815:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L3812
	.p2align 4,,7
.L3978:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3809
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%edx, %edx
	movq	%rax, %rcx
.L3810:
	movq	%rax, 192(%rbx)
	movq	%rcx, 184(%rbx)
	jmp	.L3807
	.p2align 4,,7
.L3902:
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L3816
.L3980:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3818
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L3819:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L3816
	.p2align 4,,7
.L3809:
	cltq
	leaq	57(%rbx), %rcx
	movzbl	56(%rbx), %edx
	addq	%rbp, %rax
	jmp	.L3810
	.p2align 4,,7
.L3804:
	cltq
	leaq	57(%rbx), %r8
	movzbl	56(%rbx), %edx
	addq	%rbp, %rax
	jmp	.L3805
	.p2align 4,,7
.L3814:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %ecx
	addq	%rbp, %rax
	jmp	.L3815
	.p2align 4,,7
.L3818:
	cltq
	leaq	57(%rbx), %rdx
	addq	%rbp, %rax
	jmp	.L3819
.L3974:
	movl	148(%rsp), %edi
	leal	-14(%rdi), %r12d
	subl	%eax, %r12d
	sarl	$2, %r12d
	jmp	.L3791
	.p2align 4,,7
.L3984:
	movslq	%r15d, %r15
	leal	1(%rdi), %eax
	movb	$-1, (%rsi,%r15)
	cmpl	%eax, (%rbx)
	leal	4(%r13), %r15d
	jne	.L3988
	.p2align 4,,7
.L3826:
	movl	48(%rsp), %edx
	movq	%rbx, %rcx
	incl	%r12d
	call	_ZL10stbi__skipP13stbi__contexti
	movl	4(%rbx), %eax
	cmpl	%r12d, %eax
	jle	.L3840
	movl	(%rbx), %r9d
	jmp	.L3841
	.p2align 4,,7
.L3986:
	movslq	%r13d, %r13
	addl	$2, %edi
	movb	$-1, (%rsi,%r13)
	cmpl	%edi, (%rbx)
	leal	4(%r15), %r13d
	jg	.L3839
.L3987:
	movl	%r13d, %r15d
	jmp	.L3826
	.p2align 4,,7
.L3982:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3829
	leaq	57(%rbx), %rdx
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rdx, %rcx
.L3830:
	movq	%rdx, 192(%rbx)
	movq	%rcx, 184(%rbx)
	jmp	.L3828
	.p2align 4,,7
.L3985:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L3989
	movl	48(%rbx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.L3833
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rbp, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3836
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%edx, %edx
	movq	%rax, %rcx
.L3837:
	movq	%rax, 192(%rbx)
	movq	%rcx, 184(%rbx)
	jmp	.L3833
	.p2align 4,,7
.L3829:
	cltq
	leaq	57(%rbx), %rcx
	leaq	0(%rbp,%rax), %rdx
	movzbl	56(%rbx), %eax
	movl	%eax, %r15d
	jmp	.L3830
	.p2align 4,,7
.L3989:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edx
	jmp	.L3833
.L3836:
	cltq
	leaq	57(%rbx), %rcx
	movzbl	56(%rbx), %edx
	addq	%rbp, %rax
	jmp	.L3837
.L3884:
	movl	64(%rsp), %edi
	movl	(%rbx), %r9d
.L3825:
	cmpl	$4, %edi
	jne	.L3886
	movl	72(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L3886
	imull	%r9d, %eax
	sall	$2, %eax
	movl	%eax, %edx
	decl	%edx
	js	.L3886
	leal	-2(%rax), %ecx
	incl	%ecx
	jl	.L3887
	subl	$5, %eax
	cmpl	$59, %eax
	jle	.L3887
	movslq	%edx, %rax
	leaq	-160(%rsi,%rax), %rax
	.p2align 4,,7
.L3888:
	movl	%edx, %ecx
	movb	$-1, 160(%rax)
	movb	$-1, 156(%rax)
	subl	$68, %ecx
	movb	$-1, 152(%rax)
	movb	$-1, 148(%rax)
	movb	$-1, 144(%rax)
	movb	$-1, 140(%rax)
	prefetcht0	(%rax)
	movb	$-1, 136(%rax)
	movb	$-1, 132(%rax)
	subl	$64, %edx
	movb	$-1, 128(%rax)
	movb	$-1, 124(%rax)
	subq	$64, %rax
	movb	$-1, 184(%rax)
	movb	$-1, 180(%rax)
	movb	$-1, 176(%rax)
	movb	$-1, 172(%rax)
	movb	$-1, 168(%rax)
	movb	$-1, 164(%rax)
	cmpl	$59, %ecx
	jg	.L3888
.L3887:
	movslq	%edx, %rax
	addq	%rsi, %rax
	.p2align 4,,7
.L3889:
	movb	$-1, (%rax)
	subq	$4, %rax
	subl	$4, %edx
	jns	.L3889
	movl	(%rbx), %r9d
.L3886:
	movl	124(%rsp), %r10d
	testl	%r10d, %r10d
	jle	.L3890
	movl	4(%rbx), %edx
	cmpl	$1, %edx
	jle	.L3890
	xorl	%r11d, %r11d
	.p2align 4,,7
.L3893:
	movl	%r9d, %eax
	leal	-1(%rdx), %r8d
	movl	%r11d, %ebp
	imull	%edi, %eax
	subl	%r11d, %r8d
	imull	%eax, %ebp
	imull	%eax, %r8d
	testl	%eax, %eax
	jle	.L3891
	leaq	(%rsi,%rbp), %rax
	xorl	%edx, %edx
	.p2align 4,,7
.L3892:
	movq	%rax, %rcx
	movzbl	(%rax), %r9d
	incl	%edx
	subq	%rbp, %rcx
	incq	%rax
	movzbl	(%rcx,%r8), %r10d
	movb	%r10b, -1(%rax)
	movb	%r9b, (%rcx,%r8)
	movl	(%rbx), %r9d
	movl	%r9d, %ecx
	imull	%edi, %ecx
	cmpl	%edx, %ecx
	jg	.L3892
	movl	4(%rbx), %edx
.L3891:
	movl	%edx, %eax
	incl	%r11d
	sarl	%eax
	cmpl	%r11d, %eax
	jg	.L3893
.L3890:
	movl	1312(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L3894
	cmpl	%edi, 1312(%rsp)
	jne	.L3990
.L3894:
	movq	1288(%rsp), %rax
	cmpq	$0, 1304(%rsp)
	movq	1296(%rsp), %rdi
	movl	%r9d, (%rax)
	movl	4(%rbx), %eax
	movl	%eax, (%rdi)
	je	.L3919
	movl	8(%rbx), %eax
	movq	1304(%rsp), %rdi
	movl	%eax, (%rdi)
	movq	%rsi, %rax
.L3964:
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
.L3840:
	movl	%r14d, %edi
	movl	(%rbx), %r9d
	jmp	.L3825
.L3973:
	cmpl	$23, 144(%rsp)
	jg	.L3791
	movl	148(%rsp), %eax
	movl	$1431655766, %edx
	leal	-38(%rax), %ecx
	movl	%ecx, %eax
	sarl	$31, %ecx
	imull	%edx
	subl	%ecx, %edx
	movl	%edx, %r12d
	jmp	.L3791
.L3796:
	movl	148(%rsp), %eax
	movq	%rbx, %rcx
	leal	-14(%rax), %edx
	subl	152(%rsp), %edx
	call	_ZL10stbi__skipP13stbi__contexti
	movl	144(%rsp), %eax
	cmpl	$24, %eax
	je	.L3991
	cmpl	$16, %eax
	je	.L3992
	cmpl	$32, %eax
	je	.L3896
.L3908:
	movl	$0, 120(%rsp)
.L3845:
	movl	84(%rsp), %edx
	movl	88(%rsp), %ecx
	testl	%edx, %edx
	sete	%dl
	testl	%ecx, %ecx
	sete	%al
	orb	%al, %dl
	jne	.L3897
	movl	92(%rsp), %eax
	testl	%eax, %eax
	je	.L3897
	movl	84(%rsp), %r14d
	movl	%r14d, %ecx
	call	_ZL14stbi__high_bitj
	movl	%r14d, %edx
	subl	$7, %eax
	movl	88(%rsp), %r15d
	movl	%eax, 128(%rsp)
	shrl	%edx
	movl	%r14d, %eax
	andl	$1431655765, %eax
	andl	$1431655765, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	movl	%edx, %ecx
	shrl	$2, %eax
	andl	$858993459, %ecx
	andl	$858993459, %eax
	addl	%ecx, %eax
	movl	%r15d, %ecx
	movl	%eax, %edx
	shrl	$4, %edx
	addl	%edx, %eax
	andl	$252645135, %eax
	movl	%eax, %edx
	shrl	$8, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$16, %edx
	addl	%edx, %eax
	movzbl	%al, %r14d
	call	_ZL14stbi__high_bitj
	movl	%r15d, %edx
	subl	$7, %eax
	movl	%eax, 132(%rsp)
	shrl	%edx
	movl	%r15d, %eax
	andl	$1431655765, %eax
	andl	$1431655765, %edx
	movl	92(%rsp), %r15d
	addl	%eax, %edx
	movl	%edx, %eax
	movl	%edx, %ecx
	shrl	$2, %eax
	andl	$858993459, %ecx
	andl	$858993459, %eax
	addl	%ecx, %eax
	movl	%r15d, %ecx
	movl	%eax, %edx
	shrl	$4, %edx
	addl	%edx, %eax
	andl	$252645135, %eax
	movl	%eax, %edx
	shrl	$8, %edx
	addl	%edx, %eax
	movl	%eax, %r12d
	shrl	$16, %r12d
	addl	%r12d, %eax
	movzbl	%al, %r12d
	call	_ZL14stbi__high_bitj
	movl	%r15d, %edx
	subl	$7, %eax
	movl	%eax, 136(%rsp)
	shrl	%edx
	movl	%r15d, %eax
	andl	$1431655765, %eax
	andl	$1431655765, %edx
	movl	80(%rsp), %r15d
	addl	%eax, %edx
	movl	%edx, %eax
	movl	%edx, %ecx
	shrl	$2, %eax
	andl	$858993459, %ecx
	andl	$858993459, %eax
	addl	%ecx, %eax
	movl	%r15d, %ecx
	movl	%eax, %edx
	shrl	$4, %edx
	addl	%edx, %eax
	andl	$252645135, %eax
	movl	%eax, %edx
	shrl	$8, %edx
	addl	%edx, %eax
	movl	%eax, %r13d
	shrl	$16, %r13d
	addl	%r13d, %eax
	movzbl	%al, %r13d
	call	_ZL14stbi__high_bitj
	movl	%r15d, %edx
	subl	$7, %eax
	movl	(%rbx), %r9d
	shrl	%edx
	movl	%eax, 112(%rsp)
	movl	%r15d, %eax
	andl	$1431655765, %eax
	andl	$1431655765, %edx
	movl	$0, 76(%rsp)
	addl	%eax, %edx
	movl	%edx, %eax
	movl	%edx, %ecx
	shrl	$2, %eax
	andl	$858993459, %ecx
	andl	$858993459, %eax
	addl	%ecx, %eax
	movl	%eax, %edx
	shrl	$4, %edx
	addl	%edx, %eax
	andl	$252645135, %eax
	movl	%eax, %edx
	shrl	$8, %edx
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$16, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, 140(%rsp)
.L3843:
	movl	4(%rbx), %eax
	testl	%eax, %eax
	jle	.L3825
	movl	128(%rsp), %eax
	xorl	%ebp, %ebp
	movl	$0, 116(%rsp)
	movl	%edi, 64(%rsp)
	negl	%eax
	movl	%eax, 100(%rsp)
	movl	132(%rsp), %eax
	negl	%eax
	movl	%eax, 104(%rsp)
	movl	136(%rsp), %eax
	negl	%eax
	movl	%eax, 108(%rsp)
	movl	76(%rsp), %eax
	testl	%eax, %eax
	je	.L3846
.L4001:
	testl	%r9d, %r9d
	jle	.L3847
	leaq	56(%rbx), %rax
	xorl	%r9d, %r9d
	movl	%r14d, 60(%rsp)
	movl	%r13d, 96(%rsp)
	movl	%r12d, 68(%rsp)
	movl	%r9d, %r13d
	movl	72(%rsp), %r14d
	movq	%rax, %r15
	jmp	.L3862
	.p2align 4,,7
.L3848:
	movl	48(%rbx), %eax
	xorl	%r10d, %r10d
	testl	%eax, %eax
	jne	.L3993
.L3849:
	movb	%r10b, (%rdi)
	movq	184(%rbx), %rax
	leaq	1(%rsi,%r12), %rdi
	cmpq	192(%rbx), %rax
	jb	.L3994
	movl	48(%rbx), %eax
	xorl	%r10d, %r10d
	testl	%eax, %eax
	jne	.L3995
.L3853:
	movb	%r10b, (%rdi)
	addq	%rsi, %r12
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L3996
	movl	48(%rbx), %eax
	xorl	%edi, %edi
	testl	%eax, %eax
	jne	.L3997
.L3857:
	cmpl	$2, 76(%rsp)
	movb	%dil, (%r12)
	movl	$255, %edx
	leal	3(%rbp), %r12d
	movl	$-1, %eax
	je	.L3998
.L3860:
	orl	%edx, %r14d
	cmpl	$4, 64(%rsp)
	je	.L3999
	incl	%r13d
	cmpl	%r13d, (%rbx)
	movl	%r12d, %ebp
	jle	.L4000
.L3862:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	movslq	%ebp, %r12
	leaq	2(%rsi,%r12), %rdi
	jnb	.L3848
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %r10d
	jmp	.L3849
.L3975:
	leaq	.LC61(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3964
.L3990:
	movl	4(%rbx), %eax
	movl	1312(%rsp), %r8d
	movq	%rsi, %rcx
	movl	%edi, %edx
	movl	%eax, 32(%rsp)
	call	_ZL20stbi__convert_formatPhiijj
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L3971
	movl	(%rbx), %r9d
	jmp	.L3894
.L3981:
	movl	(%rbx), %r9d
	leal	1(%r9), %r13d
	shrl	%r13d
	jmp	.L3823
.L3991:
	movl	(%rbx), %r9d
	movl	$1, 76(%rsp)
	leal	(%r9,%r9,2), %eax
	negl	%eax
	andl	$3, %eax
	movl	%eax, 120(%rsp)
.L3969:
	movl	$0, 140(%rsp)
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	movl	$0, 112(%rsp)
	movl	$0, 136(%rsp)
	movl	$0, 132(%rsp)
	movl	$0, 128(%rsp)
	jmp	.L3843
.L3897:
	movq	%rsi, %rcx
	call	free
	leaq	.LC118(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L3971:
	xorl	%eax, %eax
	jmp	.L3964
	.p2align 4,,7
.L3996:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edi
	jmp	.L3857
	.p2align 4,,7
.L3994:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %r10d
	jmp	.L3853
	.p2align 4,,7
.L3999:
	movslq	%r12d, %r12
	addl	$4, %ebp
	incl	%r13d
	movb	%al, (%rsi,%r12)
	cmpl	%r13d, (%rbx)
	jg	.L3862
.L4000:
	movl	%r14d, 72(%rsp)
	movl	68(%rsp), %r12d
	movl	96(%rsp), %r13d
	movl	60(%rsp), %r14d
.L3847:
	movl	120(%rsp), %edx
	movq	%rbx, %rcx
	call	_ZL10stbi__skipP13stbi__contexti
	incl	116(%rsp)
	movl	4(%rbx), %eax
	movl	116(%rsp), %edi
	cmpl	%edi, %eax
	jle	.L3884
	movl	76(%rsp), %eax
	movl	(%rbx), %r9d
	testl	%eax, %eax
	jne	.L4001
.L3846:
	movl	144(%rsp), %eax
	testl	%r9d, %r9d
	movl	%eax, 96(%rsp)
	jle	.L3847
	xorl	%r8d, %r8d
	movq	%rsi, 48(%rsp)
	movq	%rbx, 1280(%rsp)
	movl	%r8d, 60(%rsp)
	movl	132(%rsp), %esi
	movl	140(%rsp), %edi
	movl	136(%rsp), %r8d
	movl	128(%rsp), %ebx
	.p2align 4,,7
.L3883:
	cmpl	$16, 96(%rsp)
	movl	%r8d, 68(%rsp)
	movq	1280(%rsp), %rcx
	je	.L4002
	call	_ZL13stbi__get16leP13stbi__context
	movq	1280(%rsp), %rcx
	movl	%eax, %r15d
	call	_ZL13stbi__get16leP13stbi__context
	movl	68(%rsp), %r8d
	sall	$16, %eax
	addl	%r15d, %eax
.L3864:
	movl	84(%rsp), %edx
	movl	%ebx, %ecx
	movslq	%ebp, %r10
	addq	48(%rsp), %r10
	leal	1(%rbp), %r11d
	andl	%eax, %edx
	movl	%edx, %r9d
	movl	%edx, %r15d
	sarl	%cl, %r9d
	movzbl	100(%rsp), %ecx
	movl	%r9d, %edx
	sall	%cl, %r15d
	testl	%ebx, %ebx
	movl	%r15d, %r9d
	cmovns	%edx, %r9d
	cmpl	$7, %r14d
	movl	%r9d, %edx
	jg	.L3867
	movl	%r14d, %ecx
	.p2align 4,,7
.L3868:
	movl	%r9d, %r15d
	sarl	%cl, %r15d
	addl	%r14d, %ecx
	addl	%r15d, %edx
	cmpl	$7, %ecx
	jle	.L3868
.L3867:
	movb	%dl, (%r10)
	movl	88(%rsp), %edx
	movl	%esi, %ecx
	movslq	%r11d, %r11
	addq	48(%rsp), %r11
	leal	2(%rbp), %r10d
	andl	%eax, %edx
	movl	%edx, %r9d
	movl	%edx, %r15d
	sarl	%cl, %r9d
	movzbl	104(%rsp), %ecx
	movl	%r9d, %edx
	sall	%cl, %r15d
	testl	%esi, %esi
	movl	%r15d, %r9d
	cmovns	%edx, %r9d
	cmpl	$7, %r12d
	movl	%r9d, %edx
	jg	.L3871
	movl	%r12d, %ecx
	.p2align 4,,7
.L3872:
	movl	%r9d, %r15d
	sarl	%cl, %r15d
	addl	%r12d, %ecx
	addl	%r15d, %edx
	cmpl	$7, %ecx
	jle	.L3872
.L3871:
	movb	%dl, (%r11)
	movl	92(%rsp), %edx
	movl	%r8d, %ecx
	movslq	%r10d, %r10
	addq	48(%rsp), %r10
	leal	3(%rbp), %r11d
	andl	%eax, %edx
	movl	%edx, %r9d
	movl	%edx, %r15d
	sarl	%cl, %r9d
	movzbl	108(%rsp), %ecx
	movl	%r9d, %edx
	sall	%cl, %r15d
	testl	%r8d, %r8d
	movl	%r15d, %r9d
	cmovns	%edx, %r9d
	cmpl	$7, %r13d
	movl	%r9d, %edx
	jg	.L3875
	movl	%r13d, %ecx
	.p2align 4,,7
.L3876:
	movl	%r9d, %r15d
	sarl	%cl, %r15d
	addl	%r13d, %ecx
	addl	%r15d, %edx
	cmpl	$7, %ecx
	jle	.L3876
.L3875:
	movb	%dl, (%r10)
	movl	80(%rsp), %edx
	testl	%edx, %edx
	je	.L3917
	movl	112(%rsp), %r10d
	andl	%edx, %eax
	movl	%eax, %edx
	movl	%r10d, %ecx
	sarl	%cl, %edx
	testl	%r10d, %r10d
	movl	%r10d, %ecx
	js	.L4003
.L3879:
	cmpl	$7, %edi
	movl	%edx, %eax
	movl	%edi, %ecx
	jg	.L3970
	.p2align 4,,7
.L3942:
	movl	%edx, %r9d
	sarl	%cl, %r9d
	addl	%edi, %ecx
	addl	%r9d, %eax
	cmpl	$7, %ecx
	jle	.L3942
.L3970:
	movl	%eax, %edx
	orl	%edx, 72(%rsp)
	cmpl	$4, 64(%rsp)
	je	.L4004
.L3918:
	movl	%r11d, %ebp
.L3882:
	movq	1280(%rsp), %rdx
	incl	60(%rsp)
	movl	60(%rsp), %eax
	cmpl	%eax, (%rdx)
	jg	.L3883
	movq	48(%rsp), %rsi
	movq	%rdx, %rbx
	jmp	.L3847
	.p2align 4,,7
.L3995:
	movb	%r10b, 48(%rsp)
	movq	40(%rbx), %rcx
	movq	%r15, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3854
	movzbl	48(%rsp), %r10d
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L3855:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L3853
	.p2align 4,,7
.L3993:
	movb	%r10b, 48(%rsp)
	movq	40(%rbx), %rcx
	movq	%r15, %rdx
	movl	52(%rbx), %r8d
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3850
	movzbl	48(%rsp), %r10d
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L3851:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L3849
	.p2align 4,,7
.L3997:
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r15, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L3858
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rax, %rdx
.L3859:
	movq	%rax, 192(%rbx)
	movq	%rdx, 184(%rbx)
	jmp	.L3857
	.p2align 4,,7
.L3998:
	movq	%rbx, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	jmp	.L3860
	.p2align 4,,7
.L3854:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %r10d
	addq	%r15, %rax
	jmp	.L3855
	.p2align 4,,7
.L3850:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %r10d
	addq	%r15, %rax
	jmp	.L3851
	.p2align 4,,7
.L3858:
	cltq
	leaq	57(%rbx), %rdx
	movzbl	56(%rbx), %edi
	addq	%r15, %rax
	jmp	.L3859
	.p2align 4,,7
.L3917:
	movl	$255, %edx
	orl	%edx, 72(%rsp)
	cmpl	$4, 64(%rsp)
	movl	$255, %eax
	jne	.L3918
.L4004:
	movq	48(%rsp), %rdx
	movslq	%r11d, %r11
	addl	$4, %ebp
	movb	%al, (%rdx,%r11)
	jmp	.L3882
	.p2align 4,,7
.L4002:
	call	_ZL13stbi__get16leP13stbi__context
	movl	68(%rsp), %r8d
	jmp	.L3864
	.p2align 4,,7
.L4003:
	negl	%ecx
	sall	%cl, %eax
	movl	%eax, %edx
	jmp	.L3879
.L3919:
	movq	%rsi, %rax
	jmp	.L3964
.L3896:
	cmpl	$255, 92(%rsp)
	jne	.L3908
	cmpl	$65280, 88(%rsp)
	jne	.L3908
	cmpl	$16711680, 84(%rsp)
	jne	.L3908
	cmpl	$-16777216, 80(%rsp)
	jne	.L3908
	movl	(%rbx), %r9d
	movl	$2, 76(%rsp)
	movl	$0, 120(%rsp)
	jmp	.L3969
.L3992:
	movl	(%rbx), %eax
	addl	%eax, %eax
	negl	%eax
	andl	$3, %eax
	movl	%eax, 120(%rsp)
	jmp	.L3845
.L3824:
	movq	%rsi, %rcx
	call	free
	leaq	.LC117(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3964
.L3797:
	movq	%rsi, %rcx
	call	free
	leaq	.LC116(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3964
.L3976:
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L3964
	.seh_endproc
	.section .rdata,"dr"
.LC119:
	.ascii "S\200\366"
	.ascii "4\0"
.LC120:
	.ascii "no SOI\0"
.LC121:
	.ascii "unknown image type\0"
	.text
	.p2align 4,,15
	.def	_ZL15stbi__info_mainP13stbi__contextPiS1_S1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbi__info_mainP13stbi__contextPiS1_S1_
_ZL15stbi__info_mainP13stbi__contextPiS1_S1_:
.LFB748:
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
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movq	%rcx, %r14
	movl	$18568, %ecx
	movq	%rdx, %rsi
	movq	%r8, %rdi
	movq	%r9, %rbp
	call	malloc
	movq	%rax, %r12
	movq	%r14, (%rax)
	movl	$0, 18504(%rax)
	movl	$-1, 18508(%rax)
	movb	$-1, 18472(%rax)
	movq	184(%r14), %rax
	cmpq	192(%r14), %rax
	jb	.L4206
	movl	48(%r14), %r8d
	movq	%r14, %rbx
	testl	%r8d, %r8d
	jne	.L4207
.L4008:
	leaq	.LC120(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L4019:
	movdqu	200(%rbx), %xmm0
	movq	%r12, %rcx
	movups	%xmm0, 184(%rbx)
	leaq	48(%rsp), %rbx
	call	free
	movq	%rbx, %rcx
	movq	%r14, 48(%rsp)
	call	_ZL20stbi__parse_png_fileP9stbi__pngii.constprop.109
	testl	%eax, %eax
	je	.L4208
	testq	%rsi, %rsi
	je	.L4029
	movq	48(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsi)
.L4029:
	testq	%rdi, %rdi
	je	.L4030
	movq	48(%rsp), %rax
	movl	4(%rax), %eax
	movl	%eax, (%rdi)
.L4030:
	testq	%rbp, %rbp
	je	.L4076
	movq	48(%rsp), %rax
	movl	8(%rax), %eax
	movl	%eax, 0(%rbp)
.L4076:
	movl	$1, %r15d
.L4195:
	movl	%r15d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L4207:
	leaq	56(%r14), %rbx
	movq	40(%r14), %rcx
	movl	52(%r14), %r8d
	movq	%rbx, %rdx
	call	*16(%r14)
	testl	%eax, %eax
	je	.L4209
	movzbl	56(%r14), %edx
	cltq
	leaq	57(%r14), %rcx
	addq	%rbx, %rax
.L4010:
	incb	%dl
	movq	%rax, 192(%r14)
	movq	%rcx, 184(%r14)
	movq	(%r12), %rbx
	jne	.L4008
	.p2align 4,,7
.L4011:
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L4210
.L4013:
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L4211
.L4015:
	movq	(%r12), %rbx
	jmp	.L4008
	.p2align 4,,7
.L4206:
	leaq	1(%rax), %rdx
	movq	%r14, %rbx
	movq	%rdx, 184(%r14)
	movzbl	(%rax), %edx
	incb	%dl
	jne	.L4008
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jnb	.L4013
	.p2align 4,,7
.L4210:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %eax
.L4014:
	cmpb	$-1, %al
	jne	.L4012
	movq	(%r12), %rbx
	jmp	.L4011
	.p2align 4,,7
.L4211:
	leaq	56(%rbx), %r13
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%r13, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	je	.L4212
	cltq
	leaq	57(%rbx), %rcx
	leaq	0(%r13,%rax), %rdx
	movzbl	56(%rbx), %eax
.L4017:
	movq	%rdx, 192(%rbx)
	movq	%rcx, 184(%rbx)
	jmp	.L4014
	.p2align 4,,7
.L4212:
	leaq	57(%rbx), %rdx
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	movq	%rdx, %rcx
	jmp	.L4017
	.p2align 4,,7
.L4208:
	movq	48(%rsp), %rax
	movl	$18528, %ecx
	movdqu	200(%rax), %xmm0
	movups	%xmm0, 184(%rax)
	call	malloc
	movl	$1, %r9d
	movq	%rbp, %r8
	movq	%rax, %rdx
	movq	%r14, %rcx
	movq	%rax, %r12
	call	_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii
	testl	%eax, %eax
	je	.L4213
	testq	%rsi, %rsi
	je	.L4034
	movl	(%r12), %eax
	movl	%eax, (%rsi)
.L4034:
	testq	%rdi, %rdi
	je	.L4025
	movl	4(%r12), %eax
	movl	%eax, (%rdi)
	.p2align 4,,7
.L4025:
	movq	%r12, %rcx
	movl	$1, %r15d
	call	free
	jmp	.L4195
	.p2align 4,,7
.L4209:
	leaq	57(%r14), %rax
	movl	$0, 48(%r14)
	movb	$0, 56(%r14)
	xorl	%edx, %edx
	movq	%rax, %rcx
	jmp	.L4010
	.p2align 4,,7
.L4213:
	movq	%r12, %rcx
	call	free
	movq	200(%r14), %rax
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movl	$255, 76(%rsp)
	movq	%rax, 184(%r14)
	movq	208(%r14), %rax
	movq	%rax, 192(%r14)
	call	_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data.constprop.113
	movq	200(%r14), %rdx
	testq	%rax, %rax
	movq	%rdx, 184(%r14)
	movq	208(%r14), %rdx
	movq	%rdx, 192(%r14)
	je	.L4214
	testq	%rsi, %rsi
	je	.L4037
	movl	(%r14), %eax
	movl	%eax, (%rsi)
.L4037:
	testq	%rdi, %rdi
	je	.L4038
	movl	4(%r14), %eax
	movl	%eax, (%rdi)
.L4038:
	testq	%rbp, %rbp
	je	.L4076
	cmpl	$1, 72(%rsp)
	sbbl	%eax, %eax
	addl	$4, %eax
	movl	%eax, 0(%rbp)
	jmp	.L4076
.L4214:
	testq	%rsi, %rsi
	movq	%rsi, %r13
	movq	%rdi, %r12
	cmove	%rbx, %r13
	testq	%rdi, %rdi
	movq	%rbp, %rax
	cmove	%rbx, %r12
	testq	%rbp, %rbp
	movq	%r14, %rcx
	cmove	%rbx, %rax
	movq	%rax, 32(%rsp)
	call	_ZL13stbi__get32beP13stbi__context
	cmpl	$943870035, %eax
	je	.L4215
.L4198:
	testq	%rsi, %rsi
	movq	%rsi, %r12
	movq	%rdi, %r13
	cmove	%rbx, %r12
	movdqu	200(%r14), %xmm0
	testq	%rdi, %rdi
	leaq	.LC119(%rip), %r15
	cmove	%rbx, %r13
	testq	%rbp, %rbp
	cmovne	%rbp, %rbx
	movups	%xmm0, 184(%r14)
	movq	%rbx, 32(%rsp)
	leaq	4+.LC119(%rip), %rbx
.L4056:
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	(%r15), %al
	jne	.L4054
	incq	%r15
	cmpq	%r15, %rbx
	jne	.L4056
	cmpq	$0, 16(%r14)
	je	.L4216
	movq	192(%r14), %rcx
	movq	184(%r14), %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	cmpl	$87, %edx
	jle	.L4217
.L4057:
	addq	$88, %rax
	movq	%rax, 184(%r14)
.L4058:
	movq	%r14, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%r14, %rcx
	movl	%eax, (%r12)
	call	_ZL13stbi__get16beP13stbi__context
	cmpq	$0, 16(%r14)
	movl	%eax, 0(%r13)
	je	.L4062
	movq	40(%r14), %rcx
	call	*32(%r14)
	testl	%eax, %eax
	je	.L4061
	movl	48(%r14), %edx
	testl	%edx, %edx
	je	.L4054
.L4062:
	movq	192(%r14), %rax
	cmpq	%rax, 184(%r14)
	jnb	.L4054
.L4061:
	movl	(%r12), %ecx
	testl	%ecx, %ecx
	je	.L4064
	movl	$268435456, %eax
	cltd
	idivl	%ecx
	cmpl	0(%r13), %eax
	jl	.L4054
.L4064:
	cmpq	$0, 16(%r14)
	je	.L4065
	movq	192(%r14), %rdx
	movq	184(%r14), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	cmpl	$7, %ecx
	jle	.L4218
.L4066:
	addq	$8, %rax
	movq	%rax, 184(%r14)
.L4067:
	movl	$10, %r12d
	xorl	%r13d, %r13d
	.p2align 4,,7
.L4068:
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	%r14, %rcx
	movl	%eax, %ebx
	call	_ZL10stbi__get8P13stbi__context
	movq	%r14, %rcx
	movl	%eax, %r15d
	call	_ZL10stbi__get8P13stbi__context
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	orl	%eax, %r13d
	cmpq	$0, 16(%r14)
	je	.L4072
	movq	40(%r14), %rcx
	call	*32(%r14)
	testl	%eax, %eax
	je	.L4071
	movl	48(%r14), %eax
	testl	%eax, %eax
	je	.L4054
.L4072:
	movq	192(%r14), %rax
	cmpq	%rax, 184(%r14)
	jnb	.L4054
.L4071:
	cmpb	$8, %r15b
	jne	.L4054
	testb	%bl, %bl
	je	.L4219
	decl	%r12d
	.p2align 4,,2
	jne	.L4068
.L4063:
	movq	%rbp, %r9
	movq	%rdi, %r8
	movq	%rsi, %rdx
	movq	%r14, %rcx
	call	_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_
	testl	%eax, %eax
	jne	.L4076
	movq	%rbp, %r9
	movq	%rdi, %r8
	movq	%rsi, %rdx
	movq	%r14, %rcx
	call	_ZL14stbi__hdr_infoP13stbi__contextPiS1_S1_
	testl	%eax, %eax
	movl	%eax, %r15d
	jne	.L4076
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %ebx
	cmpl	$1, %ebx
	jle	.L4220
.L4093:
	movdqu	200(%r14), %xmm0
	leaq	.LC121(%rip), %rax
	movups	%xmm0, 184(%r14)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4195
	.p2align 4,,7
.L4054:
	movdqu	200(%r14), %xmm0
	movups	%xmm0, 184(%r14)
	jmp	.L4063
.L4215:
	movq	%r14, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$1, %eax
	movl	%eax, %r15d
	jne	.L4198
	cmpq	$0, 16(%r14)
	je	.L4046
	movq	192(%r14), %rdx
	movq	184(%r14), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	cmpl	$5, %ecx
	jle	.L4221
.L4047:
	addq	$6, %rax
	movq	%rax, 184(%r14)
.L4048:
	movq	%r14, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$16, %eax
	ja	.L4198
	movq	%r14, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	movq	%r14, %rcx
	movl	%eax, (%r12)
	call	_ZL13stbi__get32beP13stbi__context
	movq	%r14, %rcx
	movl	%eax, 0(%r13)
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$8, %eax
	jne	.L4198
	movq	%r14, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$3, %eax
	jne	.L4198
	movq	32(%rsp), %rax
	movl	$4, (%rax)
	jmp	.L4195
	.p2align 4,,7
.L4217:
	movl	$88, %eax
	movq	%rcx, 184(%r14)
	movq	40(%r14), %rcx
	subl	%edx, %eax
	movl	%eax, %edx
	call	*24(%r14)
	jmp	.L4058
.L4216:
	movq	184(%r14), %rax
	jmp	.L4057
.L4218:
	movq	%rdx, 184(%r14)
	movl	$8, %edx
	subl	%ecx, %edx
	movq	40(%r14), %rcx
	call	*24(%r14)
	jmp	.L4067
.L4221:
	movq	%rdx, 184(%r14)
	movl	$6, %edx
	subl	%ecx, %edx
	movq	40(%r14), %rcx
	call	*24(%r14)
	jmp	.L4048
.L4046:
	movq	184(%r14), %rax
	jmp	.L4047
.L4065:
	movq	184(%r14), %rax
	jmp	.L4066
.L4219:
	andl	$16, %r13d
	movq	32(%rsp), %rsi
	movl	$1, %r15d
	cmpl	$1, %r13d
	sbbl	%eax, %eax
	addl	$4, %eax
	movl	%eax, (%rsi)
	jmp	.L4195
.L4220:
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movl	%eax, %r13d
	andl	$-9, %eax
	decl	%ebx
	je	.L4222
	subl	$2, %eax
	cmpb	$1, %al
	ja	.L4093
	cmpq	$0, 16(%r14)
	je	.L4088
	movq	192(%r14), %rdx
	movq	%rdx, %rax
	subq	184(%r14), %rax
	cmpl	$8, %eax
	jle	.L4223
.L4088:
	addq	$9, 184(%r14)
	xorl	%ebx, %ebx
.L4086:
	movq	%r14, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	testl	%eax, %eax
	movl	%eax, %r12d
	jle	.L4093
	movq	%r14, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	testl	%eax, %eax
	jle	.L4093
	movq	%r14, %rcx
	movl	%eax, 44(%rsp)
	call	_ZL10stbi__get8P13stbi__context
	movq	%r14, %rcx
	movzbl	%al, %eax
	movb	%al, 43(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZL10stbi__get8P13stbi__context
	testl	%ebx, %ebx
	movzbl	43(%rsp), %edx
	movl	44(%rsp), %r8d
	je	.L4091
	leal	-8(%rdx), %eax
	testb	$-9, %al
	jne	.L4093
	cmpl	$16, %ebx
	jg	.L4094
	cmpl	$15, %ebx
	jge	.L4119
	cmpl	$8, %ebx
	movl	$1, %eax
	jne	.L4093
.L4102:
	testq	%rsi, %rsi
	je	.L4103
	movl	%r12d, (%rsi)
.L4103:
	testq	%rdi, %rdi
	je	.L4104
	movl	%r8d, (%rdi)
.L4104:
	testq	%rbp, %rbp
	je	.L4076
	movl	%eax, 0(%rbp)
	jmp	.L4076
.L4119:
	movl	$3, %eax
	jmp	.L4102
.L4094:
	cmpl	$24, %ebx
	je	.L4097
	cmpl	$32, %ebx
	jne	.L4093
.L4097:
	movl	%ebx, %eax
	sarl	$3, %eax
	jmp	.L4102
.L4091:
	andl	$-9, %r13d
	cmpb	$16, %dl
	je	.L4098
	ja	.L4099
	cmpb	$8, %dl
	je	.L4120
	cmpb	$15, %dl
	movl	$3, %eax
	je	.L4102
	jmp	.L4093
.L4222:
	decb	%al
	jne	.L4093
	cmpq	$0, 16(%r14)
	.p2align 4,,4
	je	.L4081
	movq	192(%r14), %rdx
	movq	%rdx, %rax
	subq	184(%r14), %rax
	cmpl	$3, %eax
	jle	.L4224
.L4081:
	addq	$4, 184(%r14)
.L4082:
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$32, %al
	movzbl	%al, %ebx
	ja	.L4093
	movabsq	$4311843072, %rdx
	btq	%rax, %rdx
	jnc	.L4093
	cmpq	$0, 16(%r14)
	je	.L4085
	movq	192(%r14), %rdx
	movq	%rdx, %rax
	subq	184(%r14), %rax
	cmpl	$3, %eax
	jle	.L4225
.L4085:
	addq	$4, 184(%r14)
	jmp	.L4086
.L4225:
	movq	%rdx, 184(%r14)
	movl	$4, %edx
	movq	40(%r14), %rcx
	subl	%eax, %edx
	call	*24(%r14)
	jmp	.L4086
.L4120:
	movl	$1, %eax
	jmp	.L4102
.L4224:
	movq	%rdx, 184(%r14)
	movl	$4, %edx
	movq	40(%r14), %rcx
	subl	%eax, %edx
	call	*24(%r14)
	jmp	.L4082
.L4099:
	cmpb	$24, %dl
	je	.L4101
	cmpb	$32, %dl
	.p2align 4,,5
	jne	.L4093
.L4101:
	movl	32(%rsp), %eax
	sarl	$3, %eax
	jne	.L4102
	jmp	.L4093
.L4098:
	xorl	%eax, %eax
	cmpb	$3, %r13b
	setne	%al
	addl	$2, %eax
	jmp	.L4102
.L4012:
	cmpb	$-40, %al
	jne	.L4015
	movl	$2, %edx
	movq	%r12, %rcx
	call	_ZL24stbi__decode_jpeg_headerP10stbi__jpegi.part.23
	testl	%eax, %eax
	je	.L4226
	testq	%rsi, %rsi
	je	.L4023
	movq	(%r12), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsi)
.L4023:
	testq	%rdi, %rdi
	je	.L4024
	movq	(%r12), %rax
	movl	4(%rax), %eax
	movl	%eax, (%rdi)
.L4024:
	testq	%rbp, %rbp
	je	.L4025
	movq	(%r12), %rax
	cmpl	$3, 8(%rax)
	setge	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	movl	%eax, 0(%rbp)
	jmp	.L4025
.L4226:
	movq	(%r12), %rbx
	jmp	.L4019
.L4223:
	movq	%rdx, 184(%r14)
	movl	$9, %edx
	movq	40(%r14), %rcx
	subl	%eax, %edx
	xorl	%ebx, %ebx
	call	*24(%r14)
	jmp	.L4086
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_failure_reason
	.def	stbi_failure_reason;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_failure_reason
stbi_failure_reason:
.LFB567:
	.seh_endprologue
	movq	_ZL22stbi__g_failure_reason(%rip), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_image_free
	.def	stbi_image_free;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_image_free
stbi_image_free:
.LFB578:
	.seh_endprologue
	jmp	free
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_set_flip_vertically_on_load
	.def	stbi_set_flip_vertically_on_load;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_set_flip_vertically_on_load
stbi_set_flip_vertically_on_load:
.LFB579:
	.seh_endprologue
	movl	%ecx, _ZL29stbi__vertically_flip_on_load(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_is_hdr_from_memory
	.def	stbi_is_hdr_from_memory;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_is_hdr_from_memory
stbi_is_hdr_from_memory:
.LFB598:
	subq	$264, %rsp
	.seh_stackalloc	264
	.seh_endprologue
	movslq	%edx, %rdx
	movq	%rcx, 232(%rsp)
	movq	%rcx, 216(%rsp)
	addq	%rdx, %rcx
	movq	$0, 48(%rsp)
	movl	$0, 80(%rsp)
	movq	%rcx, 240(%rsp)
	movq	%rcx, 224(%rsp)
	leaq	32(%rsp), %rcx
	call	_ZL14stbi__hdr_testP13stbi__context
	addq	$264, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC122:
	.ascii "rb\0"
	.text
	.p2align 4,,15
	.globl	stbi_is_hdr
	.def	stbi_is_hdr;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_is_hdr
stbi_is_hdr:
.LFB599:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$256, %rsp
	.seh_stackalloc	256
	.seh_endprologue
	leaq	.LC122(%rip), %rdx
	xorl	%esi, %esi
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L4232
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movq	%rbx, 72(%rsp)
	movl	$128, 84(%rsp)
	movl	$128, %r8d
	leaq	56(%rsi), %rdi
	movl	$1, 80(%rsp)
	movq	%rbx, %rcx
	movq	%rdx, 56(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 48(%rsp)
	movq	%rdi, 232(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rdi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	addq	%rdi, %rdx
	testl	%eax, %eax
	je	.L4237
.L4234:
	leaq	56(%rsi), %rax
	movq	%rsi, %rcx
	movq	%rdx, 224(%rsp)
	movq	%rdx, 240(%rsp)
	movq	%rax, 216(%rsp)
	call	_ZL14stbi__hdr_testP13stbi__context
	movq	%rbx, %rcx
	movl	%eax, %esi
	call	fclose
.L4232:
	movl	%esi, %eax
	addq	$256, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L4237:
	movl	$0, 80(%rsp)
	movb	$0, 88(%rsp)
	leaq	57(%rsi), %rdx
	jmp	.L4234
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_is_hdr_from_file
	.def	stbi_is_hdr_from_file;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_is_hdr_from_file
stbi_is_hdr_from_file:
.LFB600:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	.seh_endprologue
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movl	$128, %r8d
	leaq	32(%rsp), %rbx
	movq	%rcx, 72(%rsp)
	movl	$128, 84(%rsp)
	movl	$1, 80(%rsp)
	movq	%rdx, 56(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	leaq	56(%rbx), %rsi
	movq	%rax, 48(%rsp)
	movq	%rsi, 232(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rsi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	addq	%rsi, %rdx
	testl	%eax, %eax
	jne	.L4240
	leaq	57(%rbx), %rdx
	movl	$0, 80(%rsp)
	movb	$0, 88(%rsp)
.L4240:
	leaq	56(%rbx), %rax
	movq	%rbx, %rcx
	movq	%rdx, 224(%rsp)
	movq	%rdx, 240(%rsp)
	movq	%rax, 216(%rsp)
	call	_ZL14stbi__hdr_testP13stbi__context
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_is_hdr_from_callbacks
	.def	stbi_is_hdr_from_callbacks;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_is_hdr_from_callbacks
stbi_is_hdr_from_callbacks:
.LFB601:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$264, %rsp
	.seh_stackalloc	264
	.seh_endprologue
	movq	(%rcx), %rax
	movl	$128, %r8d
	movq	%rdx, %r9
	movq	8(%rcx), %rdx
	leaq	32(%rsp), %rbx
	movq	%r9, 72(%rsp)
	movl	$128, 84(%rsp)
	leaq	56(%rbx), %rsi
	movq	%rax, 48(%rsp)
	movl	$1, 80(%rsp)
	movq	%rdx, 56(%rsp)
	movq	16(%rcx), %rdx
	movq	%r9, %rcx
	movq	%rsi, 232(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rsi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	addq	%rsi, %rdx
	testl	%eax, %eax
	jne	.L4243
	leaq	57(%rbx), %rdx
	movl	$0, 80(%rsp)
	movb	$0, 88(%rsp)
.L4243:
	leaq	56(%rbx), %rax
	movq	%rbx, %rcx
	movq	%rdx, 224(%rsp)
	movq	%rdx, 240(%rsp)
	movq	%rax, 216(%rsp)
	call	_ZL14stbi__hdr_testP13stbi__context
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_ldr_to_hdr_gamma
	.def	stbi_ldr_to_hdr_gamma;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_ldr_to_hdr_gamma
stbi_ldr_to_hdr_gamma:
.LFB602:
	.seh_endprologue
	movss	%xmm0, _ZL15stbi__l2h_gamma(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_ldr_to_hdr_scale
	.def	stbi_ldr_to_hdr_scale;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_ldr_to_hdr_scale
stbi_ldr_to_hdr_scale:
.LFB603:
	.seh_endprologue
	movss	%xmm0, _ZL15stbi__l2h_scale(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_hdr_to_ldr_gamma
	.def	stbi_hdr_to_ldr_gamma;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_hdr_to_ldr_gamma
stbi_hdr_to_ldr_gamma:
.LFB604:
	.seh_endprologue
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, _ZL17stbi__h2l_gamma_i(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_hdr_to_ldr_scale
	.def	stbi_hdr_to_ldr_scale;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_hdr_to_ldr_scale
stbi_hdr_to_ldr_scale:
.LFB605:
	.seh_endprologue
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, _ZL17stbi__h2l_scale_i(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_zlib_decode_malloc_guesssize
	.def	stbi_zlib_decode_malloc_guesssize;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_zlib_decode_malloc_guesssize
stbi_zlib_decode_malloc_guesssize:
.LFB676:
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
	movslq	%r8d, %rsi
	movq	%rcx, %rdi
	movl	%edx, %ebx
	movq	%rsi, %rcx
	movq	%r9, %rbp
	call	malloc
	testq	%rax, %rax
	je	.L4253
	movslq	%ebx, %rcx
	addq	%rax, %rsi
	movl	$1, %edx
	addq	%rdi, %rcx
	movq	%rdi, 32(%rsp)
	movq	%rax, 64(%rsp)
	movq	%rcx, 40(%rsp)
	leaq	32(%rsp), %rcx
	movq	%rax, 56(%rsp)
	movq	%rsi, 72(%rsp)
	movl	$1, 80(%rsp)
	call	_ZL16stbi__parse_zlibP10stbi__zbufi
	testl	%eax, %eax
	je	.L4250
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	je	.L4249
	movq	56(%rsp), %rdx
	subq	%rax, %rdx
	movl	%edx, 0(%rbp)
.L4249:
	addq	$4136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L4253:
	xorl	%eax, %eax
	jmp	.L4249
	.p2align 4,,7
.L4250:
	movq	64(%rsp), %rcx
	call	free
	xorl	%eax, %eax
	jmp	.L4249
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_zlib_decode_malloc
	.def	stbi_zlib_decode_malloc;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_zlib_decode_malloc
stbi_zlib_decode_malloc:
.LFB677:
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
.LFB678:
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
	movslq	%r8d, %rsi
	movq	%rcx, %rdi
	movl	%edx, %ebx
	movq	%rsi, %rcx
	movq	%r9, %rbp
	call	malloc
	testq	%rax, %rax
	je	.L4260
	movslq	%ebx, %rcx
	movl	4208(%rsp), %edx
	addq	%rax, %rsi
	addq	%rdi, %rcx
	movq	%rdi, 32(%rsp)
	movq	%rax, 64(%rsp)
	movq	%rcx, 40(%rsp)
	leaq	32(%rsp), %rcx
	movq	%rax, 56(%rsp)
	movq	%rsi, 72(%rsp)
	movl	$1, 80(%rsp)
	call	_ZL16stbi__parse_zlibP10stbi__zbufi
	testl	%eax, %eax
	je	.L4257
	testq	%rbp, %rbp
	movq	64(%rsp), %rax
	je	.L4256
	movq	56(%rsp), %rdx
	subq	%rax, %rdx
	movl	%edx, 0(%rbp)
.L4256:
	addq	$4136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L4260:
	xorl	%eax, %eax
	jmp	.L4256
	.p2align 4,,7
.L4257:
	movq	64(%rsp), %rcx
	call	free
	xorl	%eax, %eax
	jmp	.L4256
	.seh_endproc
	.section .rdata,"dr"
.LC123:
	.ascii "tRNS before PLTE\0"
.LC124:
	.ascii "outofdata\0"
.LC125:
	.ascii "no IDAT\0"
.LC126:
	.ascii "out_n == 2 || out_n == 4\0"
.LC127:
	.ascii "s->img_out_n == 4\0"
	.text
	.p2align 4,,15
	.def	_ZL20stbi__parse_png_fileP9stbi__pngii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbi__parse_png_fileP9stbi__pngii
_ZL20stbi__parse_png_fileP9stbi__pngii:
.LFB693:
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
	subq	$1432, %rsp
	.seh_stackalloc	1432
	.seh_endprologue
	movq	(%rcx), %r13
	movq	%rcx, %r14
	movq	$0, 16(%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 24(%rcx)
	movl	%edx, 1512(%rsp)
	movq	184(%r13), %rcx
	movq	192(%r13), %rax
	movl	%r8d, 1520(%rsp)
	cmpq	%rax, %rcx
	jb	.L4262
	movl	48(%r13), %r15d
	testl	%r15d, %r15d
	jne	.L4541
	.p2align 4,,7
.L4263:
	leaq	.LC58(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
.L4488:
	addq	$1432, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L4541:
	leaq	56(%r13), %rbx
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	je	.L4264
	movzbl	56(%r13), %ecx
	cltq
	leaq	57(%r13), %rdx
	addq	%rbx, %rax
.L4267:
	movq	%rax, 192(%r13)
	movq	%rdx, 184(%r13)
	jmp	.L4266
	.p2align 4,,7
.L4262:
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%r13)
	movzbl	(%rcx), %ecx
.L4266:
	cmpb	$-119, %cl
	jne	.L4263
	cmpq	%rdx, %rax
	ja	.L4268
	movl	48(%r13), %r12d
	testl	%r12d, %r12d
	je	.L4263
	leaq	56(%r13), %rbx
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L4542
	leaq	57(%r13), %rax
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	xorl	%edx, %edx
	movq	%rax, %rcx
.L4272:
	movq	%rax, 192(%r13)
	movq	%rcx, 184(%r13)
	jmp	.L4271
	.p2align 4,,7
.L4268:
	leaq	1(%rdx), %rcx
	movq	%rcx, 184(%r13)
	movzbl	(%rdx), %edx
.L4271:
	cmpb	$80, %dl
	jne	.L4263
	cmpq	%rcx, %rax
	jbe	.L4543
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%r13)
	movzbl	(%rcx), %ecx
.L4276:
	cmpb	$78, %cl
	jne	.L4263
	cmpq	%rdx, %rax
	jbe	.L4544
	leaq	1(%rdx), %rcx
	movq	%rcx, 184(%r13)
	movzbl	(%rdx), %edx
.L4281:
	cmpb	$71, %dl
	jne	.L4263
	cmpq	%rcx, %rax
	jbe	.L4545
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%r13)
	movzbl	(%rcx), %ecx
.L4286:
	cmpb	$13, %cl
	jne	.L4263
	cmpq	%rax, %rdx
	jnb	.L4546
	leaq	1(%rdx), %rcx
	movq	%rcx, 184(%r13)
	movzbl	(%rdx), %edx
.L4291:
	cmpb	$10, %dl
	jne	.L4263
	cmpq	%rax, %rcx
	jnb	.L4547
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%r13)
	movzbl	(%rcx), %ecx
.L4296:
	cmpb	$26, %cl
	jne	.L4263
	cmpq	%rax, %rdx
	jnb	.L4298
	leaq	1(%rdx), %rax
	movq	%rax, 184(%r13)
	movzbl	(%rdx), %eax
.L4299:
	cmpb	$10, %al
	jne	.L4263
	cmpl	$1, 1512(%rsp)
	je	.L4304
	leaq	400(%rsp), %rax
	leaq	56(%r13), %rbx
	movl	$0, 128(%rsp)
	movl	$0, 116(%rsp)
	movl	$0, 120(%rsp)
	movl	$1, %r12d
	movl	$0, 96(%rsp)
	xorl	%ebp, %ebp
	movl	$0, 88(%rsp)
	movb	$0, 135(%rsp)
	movb	$0, 115(%rsp)
	movq	%rax, 104(%rsp)
.L4434:
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%r13, %rcx
	movl	%eax, %edi
	sall	$16, %edi
	call	_ZL13stbi__get16beP13stbi__context
	movq	%r13, %rcx
	addl	%eax, %edi
	call	_ZL13stbi__get16beP13stbi__context
	movl	%eax, %esi
	movq	%r13, %rcx
	sall	$16, %esi
	call	_ZL13stbi__get16beP13stbi__context
	addl	%eax, %esi
	cmpl	$1229278788, %esi
	je	.L4306
	jbe	.L4548
	cmpl	$1347179589, %esi
	je	.L4310
	cmpl	$1951551059, %esi
	je	.L4311
	cmpl	$1229472850, %esi
	je	.L4549
.L4305:
	testl	%r12d, %r12d
	jne	.L4530
	testl	$536870912, %esi
	je	.L4550
	movl	%edi, %edx
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti
	.p2align 4,,7
.L4313:
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	jmp	.L4434
	.p2align 4,,7
.L4548:
	cmpl	$1130840649, %esi
	je	.L4308
	cmpl	$1229209940, %esi
	jne	.L4305
	testl	%r12d, %r12d
	jne	.L4530
	cmpb	$0, 115(%rsp)
	je	.L4365
	movl	96(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L4551
.L4365:
	cmpl	$2, 1512(%rsp)
	je	.L4552
	movl	88(%rsp), %eax
	leal	(%rax,%rdi), %esi
	cmpl	%eax, %esi
	jl	.L4529
	cmpl	%esi, %ebp
	jnb	.L4553
	testl	%ebp, %ebp
	jne	.L4371
	cmpl	$4096, %edi
	movl	$4096, %ebp
	cmovnb	%edi, %ebp
	cmpl	%ebp, %esi
	jbe	.L4370
	.p2align 4,,7
.L4371:
	addl	%ebp, %ebp
	cmpl	%ebp, %esi
	ja	.L4371
.L4370:
	movq	8(%r14), %rcx
	movl	%ebp, %edx
	call	realloc
	testq	%rax, %rax
	je	.L4531
	movq	%rax, 8(%r14)
.L4368:
	movl	88(%rsp), %edx
	movl	%edi, %r8d
	movq	%r13, %rcx
	addq	%rax, %rdx
	call	_ZL10stbi__getnP13stbi__contextPhi
	testl	%eax, %eax
	je	.L4554
	movl	%esi, 88(%rsp)
	jmp	.L4313
.L4543:
	movl	48(%r13), %ebp
	testl	%ebp, %ebp
	je	.L4263
	leaq	56(%r13), %rbx
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	je	.L4274
	movzbl	56(%r13), %ecx
	cltq
	leaq	57(%r13), %rdx
	addq	%rbx, %rax
.L4277:
	movq	%rax, 192(%r13)
	movq	%rdx, 184(%r13)
	jmp	.L4276
.L4544:
	movl	48(%r13), %edi
	testl	%edi, %edi
	je	.L4263
	leaq	56(%r13), %rbx
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	je	.L4279
	movzbl	56(%r13), %edx
	cltq
	leaq	57(%r13), %rcx
	addq	%rbx, %rax
.L4282:
	movq	%rax, 192(%r13)
	movq	%rcx, 184(%r13)
	jmp	.L4281
.L4545:
	movl	48(%r13), %esi
	testl	%esi, %esi
	je	.L4263
	leaq	56(%r13), %rbx
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L4555
	leaq	57(%r13), %rax
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
.L4287:
	movq	%rax, 192(%r13)
	movq	%rdx, 184(%r13)
	jmp	.L4286
.L4546:
	movl	48(%r13), %ebx
	testl	%ebx, %ebx
	je	.L4263
	leaq	56(%r13), %rbx
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L4556
	leaq	57(%r13), %rax
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	xorl	%edx, %edx
	movq	%rax, %rcx
.L4292:
	movq	%rax, 192(%r13)
	movq	%rcx, 184(%r13)
	jmp	.L4291
.L4547:
	movl	48(%r13), %r11d
	testl	%r11d, %r11d
	je	.L4263
	leaq	56(%r13), %rbx
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L4557
	leaq	57(%r13), %rax
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
.L4297:
	movq	%rax, 192(%r13)
	movq	%rdx, 184(%r13)
	jmp	.L4296
.L4298:
	movl	48(%r13), %r10d
	testl	%r10d, %r10d
	je	.L4263
	leaq	56(%r13), %rbx
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L4300
	leaq	57(%r13), %rdx
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	movq	%rdx, %rcx
.L4301:
	movq	%rdx, 192(%r13)
	movq	%rcx, 184(%r13)
	jmp	.L4299
	.p2align 4,,7
.L4306:
	testl	%r12d, %r12d
	jne	.L4530
	movl	1512(%rsp), %r9d
	movl	$1, %eax
	testl	%r9d, %r9d
	jne	.L4488
	movq	8(%r14), %rcx
	testq	%rcx, %rcx
	je	.L4558
	movl	0(%r13), %eax
	movl	4(%r13), %edx
	leaq	252(%rsp), %r9
	imull	32(%r14), %eax
	movl	8(%r13), %r8d
	imull	%edx, %r8d
	addl	$7, %eax
	shrl	$3, %eax
	imull	%r8d, %eax
	leal	(%rax,%rdx), %r8d
	movl	128(%rsp), %eax
	movl	88(%rsp), %edx
	movl	%r8d, 252(%rsp)
	xorl	$1, %eax
	movl	%eax, 32(%rsp)
	call	stbi_zlib_decode_malloc_guesssize_headerflag
	testq	%rax, %rax
	movq	%rax, 16(%r14)
	je	.L4529
	movq	8(%r14), %rcx
	call	free
	movl	8(%r13), %eax
	movq	$0, 8(%r14)
	leal	1(%rax), %ebx
	cmpl	1520(%rsp), %ebx
	movl	%ebx, 208(%rsp)
	je	.L4559
.L4377:
	cmpb	$0, 135(%rsp)
	cmovne	208(%rsp), %eax
	movl	%eax, 208(%rsp)
.L4378:
	movl	208(%rsp), %eax
	movl	252(%rsp), %ebx
	movl	120(%rsp), %r8d
	movl	%eax, 12(%r13)
	movl	32(%r14), %eax
	movl	%ebx, 212(%rsp)
	movq	16(%r14), %rbx
	cmpl	$16, %eax
	movl	%eax, 216(%rsp)
	sete	%al
	movq	%rbx, 200(%rsp)
	movzbl	%al, %eax
	incl	%eax
	testl	%r8d, %r8d
	je	.L4560
	imull	208(%rsp), %eax
	xorl	%r9d, %r9d
	movslq	%eax, %rbp
	movq	(%r14), %rax
	movl	%ebp, %r8d
	movq	%rbp, %r12
	movl	4(%rax), %edx
	movl	(%rax), %ecx
	call	_ZL17stbi__malloc_mad3iiii
	movq	%rax, 88(%rsp)
	leaq	272(%rsp), %rax
	movq	$0, 136(%rsp)
	movq	%r13, 232(%rsp)
	movq	%rax, 168(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 184(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 176(%rsp)
	leaq	368(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	24(%r14), %rax
	movq	%rax, 224(%rsp)
	jmp	.L4392
.L4384:
	addq	$4, 136(%rsp)
	movq	136(%rsp), %rax
	cmpq	$28, %rax
	je	.L4561
.L4392:
	movq	136(%rsp), %rsi
	movq	168(%rsp), %rbx
	xorl	%edx, %edx
	movq	(%r14), %rcx
	movl	$0, 272(%rsp)
	movl	$4, 276(%rsp)
	movl	$0, 280(%rsp)
	movl	$2, 284(%rsp)
	movl	$0, 288(%rsp)
	movl	$1, 292(%rsp)
	movl	$0, 296(%rsp)
	movl	$0, 304(%rsp)
	movl	(%rbx,%rsi), %r13d
	movl	$0, 308(%rsp)
	movl	$4, 312(%rsp)
	movl	$0, 316(%rsp)
	movl	$2, 320(%rsp)
	movl	$0, 324(%rsp)
	movl	$1, 328(%rsp)
	movl	$8, 336(%rsp)
	movl	$8, 340(%rsp)
	movl	$4, 344(%rsp)
	movl	$4, 348(%rsp)
	movl	$2, 352(%rsp)
	movl	$2, 356(%rsp)
	movl	$1, 360(%rsp)
	movl	$8, 368(%rsp)
	movl	$8, 372(%rsp)
	movl	$8, 376(%rsp)
	movl	$4, 380(%rsp)
	movl	$4, 384(%rsp)
	movl	$2, 388(%rsp)
	movl	$2, 392(%rsp)
	movq	184(%rsp), %rbx
	movl	(%rcx), %eax
	movl	(%rbx,%rsi), %ebx
	leal	-1(%rbx,%rax), %eax
	subl	%r13d, %eax
	divl	%ebx
	movq	176(%rsp), %rdx
	movl	%eax, %edi
	movq	%rsi, %rax
	movl	(%rdx,%rsi), %esi
	movq	192(%rsp), %rdx
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movl	%eax, 144(%rsp)
	movl	4(%rcx), %eax
	movl	%edx, %r10d
	leal	-1(%rdx,%rax), %eax
	xorl	%edx, %edx
	subl	%esi, %eax
	divl	%r10d
	testl	%edi, %edi
	movl	%eax, 148(%rsp)
	je	.L4384
	testl	%eax, %eax
	movl	%eax, %r15d
	je	.L4384
	movl	8(%rcx), %eax
	movl	216(%rsp), %edx
	movl	116(%rsp), %r11d
	movq	200(%rsp), %r8
	movl	%r15d, 48(%rsp)
	movl	%edi, 40(%rsp)
	imull	%edi, %eax
	movl	%edx, 56(%rsp)
	movl	%r11d, 64(%rsp)
	imull	%edx, %eax
	movq	224(%rsp), %rdx
	addl	$7, %eax
	sarl	$3, %eax
	incl	%eax
	movl	%eax, %r9d
	movl	208(%rsp), %eax
	imull	%r15d, %r9d
	movl	%eax, 32(%rsp)
	movl	%r9d, 220(%rsp)
	movl	212(%rsp), %r9d
	call	_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii.isra.31
	testl	%eax, %eax
	je	.L4385
	testl	%r15d, %r15d
	jle	.L4388
	movl	%r12d, %eax
	movq	$0, 120(%rsp)
	movl	$0, 104(%rsp)
	imull	%edi, %eax
	imull	%r12d, %ebx
	cltq
	movq	%rax, 152(%rsp)
	movslq	%ebx, %rax
	movq	%rax, 96(%rsp)
	movl	%r13d, %eax
	imull	%r12d, %eax
	cltq
	movq	%rax, 160(%rsp)
	.p2align 4,,7
.L4389:
	xorl	%ebx, %ebx
	testl	%edi, %edi
	movq	160(%rsp), %r15
	movq	120(%rsp), %r13
	jle	.L4390
	movq	%r14, 1504(%rsp)
	movl	%ebx, %r14d
	movq	%r15, %rbx
	movq	1504(%rsp), %r15
	.p2align 4,,7
.L4391:
	movq	(%r15), %rax
	movq	%r13, %rdx
	addq	24(%r15), %rdx
	movq	%rbp, %r8
	incl	%r14d
	addq	%rbp, %r13
	movl	(%rax), %ecx
	imull	%r12d, %ecx
	imull	%esi, %ecx
	addq	%rbx, %rcx
	addq	88(%rsp), %rcx
	call	memcpy
	addq	96(%rsp), %rbx
	cmpl	%r14d, %edi
	jne	.L4391
	movq	%r15, %r14
.L4390:
	incl	104(%rsp)
	movq	152(%rsp), %rdx
	movl	104(%rsp), %eax
	addq	%rdx, 120(%rsp)
	addl	144(%rsp), %esi
	cmpl	%eax, 148(%rsp)
	jne	.L4389
.L4388:
	movq	24(%r14), %rcx
	call	free
	movl	220(%rsp), %ebx
	subl	%ebx, 212(%rsp)
	movl	%ebx, %eax
	addq	%rax, 200(%rsp)
	jmp	.L4384
	.p2align 4,,7
.L4308:
	movl	%edi, %edx
	movq	%r13, %rcx
	call	_ZL10stbi__skipP13stbi__contexti
	movl	$1, 128(%rsp)
	jmp	.L4313
.L4549:
	testl	%r12d, %r12d
	je	.L4562
	cmpl	$13, %edi
	jne	.L4563
	movq	%r13, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	cmpl	$16777216, %eax
	movl	%eax, 0(%r13)
	ja	.L4317
	movq	%r13, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	cmpl	$16777216, %eax
	movl	%eax, 4(%r13)
	ja	.L4317
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	cmpb	$16, %al
	movl	%edx, 32(%r14)
	ja	.L4318
	movl	$65814, %edx
	btq	%rax, %rdx
	jnc	.L4318
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	cmpl	$6, %eax
	movl	%eax, %esi
	movl	%eax, 116(%rsp)
	jg	.L4321
	cmpl	$3, 116(%rsp)
	je	.L4564
	testb	$1, %sil
	jne	.L4321
.L4322:
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	testb	%al, %al
	jne	.L4565
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	testb	%al, %al
	jne	.L4566
	movq	%r13, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	movl	%eax, 120(%rsp)
	decl	%eax
	jg	.L4567
	movl	0(%r13), %ecx
	testl	%ecx, %ecx
	je	.L4326
	movl	4(%r13), %r8d
	testl	%r8d, %r8d
	je	.L4326
	cmpb	$0, 115(%rsp)
	jne	.L4328
	movl	%esi, %eax
	andl	$2, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	shrb	$2, %sil
	xorl	%edx, %edx
	andl	$-2, %eax
	andl	$1, %esi
	leal	3(%rax,%rsi), %r9d
	movl	$1073741824, %eax
	divl	%ecx
	xorl	%edx, %edx
	movl	%r9d, 8(%r13)
	divl	%r9d
	cmpl	%eax, %r8d
	ja	.L4317
	cmpl	$2, 1512(%rsp)
	jne	.L4528
.L4304:
	movl	$1, %eax
	jmp	.L4488
	.p2align 4,,7
.L4311:
	testl	%r12d, %r12d
	jne	.L4530
	cmpq	$0, 8(%r14)
	jne	.L4568
	cmpb	$0, 115(%rsp)
	je	.L4350
	cmpl	$2, 1512(%rsp)
	je	.L4569
	movl	96(%rsp), %esi
	testl	%esi, %esi
	je	.L4570
	cmpl	%edi, 96(%rsp)
	jb	.L4353
	testl	%edi, %edi
	je	.L4440
	movq	104(%rsp), %r10
	leal	-1(%rdi), %ecx
	movq	184(%r13), %rax
	movq	192(%r13), %rdx
	movq	%r10, %rsi
	leaq	7(%r10,%rcx,4), %r15
	addq	$3, %rsi
	jmp	.L4359
	.p2align 4,,7
.L4355:
	movl	48(%r13), %r11d
	xorl	%edi, %edi
	testl	%r11d, %r11d
	jne	.L4571
.L4356:
	movb	%dil, (%rsi)
	addq	$4, %rsi
	cmpq	%r15, %rsi
	je	.L4440
.L4359:
	cmpq	%rdx, %rax
	jnb	.L4355
	leaq	1(%rax), %rcx
	addq	$4, %rsi
	movq	%rcx, 184(%r13)
	movzbl	(%rax), %edi
	movq	%rcx, %rax
	movb	%dil, -4(%rsi)
	cmpq	%r15, %rsi
	jne	.L4359
.L4440:
	movb	$4, 115(%rsp)
	jmp	.L4313
	.p2align 4,,7
.L4310:
	testl	%r12d, %r12d
	jne	.L4530
	cmpl	$768, %edi
	ja	.L4332
	movl	$-1431655765, %eax
	mull	%edi
	shrl	%edx
	leal	(%rdx,%rdx,2), %eax
	movl	%edx, %esi
	movl	%edx, 96(%rsp)
	cmpl	%edi, %eax
	jne	.L4332
	testl	%edx, %edx
	je	.L4313
	movq	104(%rsp), %r11
	leal	-1(%rsi), %ecx
	movq	184(%r13), %rdx
	movq	192(%r13), %rax
	movq	%r11, %rdi
	leaq	6(%r11,%rcx,4), %rsi
	addq	$2, %rdi
	jmp	.L4347
	.p2align 4,,7
.L4333:
	movl	48(%r13), %r9d
	testl	%r9d, %r9d
	jne	.L4572
	movb	$0, -2(%rdi)
	movq	%rdx, %rcx
.L4338:
	movl	48(%r13), %r8d
	testl	%r8d, %r8d
	jne	.L4573
	movb	$0, -1(%rdi)
	movq	%rcx, %rdx
.L4343:
	movl	48(%r13), %ecx
	xorl	%r15d, %r15d
	testl	%ecx, %ecx
	jne	.L4574
.L4344:
	movb	%r15b, (%rdi)
	movb	$-1, 1(%rdi)
	addq	$4, %rdi
	cmpq	%rsi, %rdi
	je	.L4313
.L4347:
	cmpq	%rax, %rdx
	jnb	.L4333
	leaq	1(%rdx), %rcx
	movq	%rcx, 184(%r13)
	movzbl	(%rdx), %edx
.L4334:
	cmpq	%rax, %rcx
	movb	%dl, -2(%rdi)
	jnb	.L4338
	leaq	1(%rcx), %rdx
	movq	%rdx, 184(%r13)
	movzbl	(%rcx), %ecx
.L4339:
	cmpq	%rdx, %rax
	movb	%cl, -1(%rdi)
	jbe	.L4343
	leaq	1(%rdx), %rcx
	movq	%rcx, 184(%r13)
	movzbl	(%rdx), %r15d
	movq	%rcx, %rdx
	jmp	.L4344
	.p2align 4,,7
.L4574:
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L4345
	leaq	57(%r13), %rax
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	movq	%rax, %rdx
.L4346:
	movq	%rax, 192(%r13)
	movq	%rdx, 184(%r13)
	jmp	.L4344
	.p2align 4,,7
.L4573:
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L4341
	leaq	57(%r13), %rax
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
.L4342:
	movq	%rax, 192(%r13)
	movq	%rdx, 184(%r13)
	jmp	.L4339
	.p2align 4,,7
.L4572:
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L4336
	leaq	57(%r13), %rax
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	xorl	%edx, %edx
	movq	%rax, %rcx
.L4337:
	movq	%rax, 192(%r13)
	movq	%rcx, 184(%r13)
	jmp	.L4334
	.p2align 4,,7
.L4345:
	cltq
	leaq	57(%r13), %rdx
	movzbl	56(%r13), %r15d
	addq	%rbx, %rax
	jmp	.L4346
	.p2align 4,,7
.L4341:
	cltq
	leaq	57(%r13), %rdx
	movzbl	56(%r13), %ecx
	addq	%rbx, %rax
	jmp	.L4342
	.p2align 4,,7
.L4336:
	cltq
	leaq	57(%r13), %rcx
	movzbl	56(%r13), %edx
	addq	%rbx, %rax
	jmp	.L4337
.L4530:
	leaq	.LC67(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4350:
	movl	8(%r13), %edx
	movl	%edx, %eax
	andl	$1, %eax
	je	.L4575
	leal	(%rdx,%rdx), %eax
	cmpl	%edi, %eax
	jne	.L4353
	cmpl	$16, 32(%r14)
	movb	$1, 135(%rsp)
	je	.L4361
	testl	%edx, %edx
	jle	.L4313
	leaq	240(%rsp), %rdi
	leaq	_ZL23stbi__depth_scale_table(%rip), %r15
	xorl	%esi, %esi
.L4364:
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movslq	32(%r14), %rcx
	mulb	(%r15,%rcx)
	movb	%al, (%rdi,%rsi)
	leal	1(%rsi), %eax
	incq	%rsi
	cmpl	%eax, 8(%r13)
	jg	.L4364
.L4444:
	movb	$1, 135(%rsp)
	jmp	.L4313
.L4328:
	xorl	%edx, %edx
	movl	$268435456, %eax
	movl	$1, 8(%r13)
	divl	%ecx
	cmpl	%eax, %r8d
	ja	.L4317
.L4528:
	xorl	%r12d, %r12d
	jmp	.L4313
.L4264:
	leaq	57(%r13), %rax
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
	jmp	.L4267
.L4542:
	cltq
	leaq	57(%r13), %rcx
	movzbl	56(%r13), %edx
	addq	%rbx, %rax
	jmp	.L4272
.L4274:
	leaq	57(%r13), %rax
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	xorl	%ecx, %ecx
	movq	%rax, %rdx
	jmp	.L4277
.L4279:
	leaq	57(%r13), %rax
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	xorl	%edx, %edx
	movq	%rax, %rcx
	jmp	.L4282
.L4555:
	cltq
	leaq	57(%r13), %rdx
	movzbl	56(%r13), %ecx
	addq	%rbx, %rax
	jmp	.L4287
	.p2align 4,,7
.L4571:
	movq	40(%r13), %rcx
	movl	52(%r13), %r8d
	movq	%rbx, %rdx
	call	*16(%r13)
	testl	%eax, %eax
	jne	.L4357
	leaq	57(%r13), %rdx
	movl	$0, 48(%r13)
	movb	$0, 56(%r13)
	movq	%rdx, %rax
.L4358:
	movq	%rdx, 192(%r13)
	movq	%rax, 184(%r13)
	jmp	.L4356
	.p2align 4,,7
.L4357:
	cltq
	movzbl	56(%r13), %edi
	leaq	(%rbx,%rax), %rdx
	leaq	57(%r13), %rax
	jmp	.L4358
.L4556:
	cltq
	leaq	57(%r13), %rcx
	movzbl	56(%r13), %edx
	addq	%rbx, %rax
	jmp	.L4292
.L4557:
	cltq
	leaq	57(%r13), %rdx
	movzbl	56(%r13), %ecx
	addq	%rbx, %rax
	jmp	.L4297
.L4300:
	cltq
	leaq	57(%r13), %rcx
	leaq	(%rbx,%rax), %rdx
	movzbl	56(%r13), %eax
	jmp	.L4301
.L4553:
	movq	8(%r14), %rax
	jmp	.L4368
.L4564:
	cmpl	$16, 32(%r14)
	je	.L4321
	movb	$3, 115(%rsp)
	jmp	.L4322
.L4318:
	leaq	.LC73(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L4529:
	xorl	%eax, %eax
	jmp	.L4488
.L4559:
	cmpl	$3, 1520(%rsp)
	je	.L4377
	cmpb	$0, 115(%rsp)
	je	.L4378
	jmp	.L4377
.L4551:
	leaq	.LC72(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4361:
	testl	%edx, %edx
	jle	.L4313
	leaq	256(%rsp), %rsi
	xorl	%edi, %edi
.L4363:
	movq	%r13, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movw	%ax, (%rsi,%rdi,2)
	leal	1(%rdi), %eax
	incq	%rdi
	cmpl	%eax, 8(%r13)
	jg	.L4363
	jmp	.L4444
.L4561:
	movq	88(%rsp), %rax
	movq	232(%rsp), %r13
	movq	%rax, 24(%r14)
.L4383:
	cmpb	$0, 135(%rsp)
	je	.L4399
	cmpl	$16, 32(%r14)
	movq	(%r14), %rdx
	movl	12(%r13), %eax
	movq	24(%r14), %rbx
	movl	(%rdx), %esi
	je	.L4576
	imull	4(%rdx), %esi
	leal	-2(%rax), %edx
	andl	$-3, %edx
	jne	.L4577
	cmpl	$2, %eax
	je	.L4578
.L4408:
	testl	%esi, %esi
	je	.L4399
	leal	-1(%rsi), %eax
	movzbl	240(%rsp), %edx
	movzbl	241(%rsp), %r8d
	movzbl	242(%rsp), %ecx
	leaq	4(%rbx,%rax,4), %rax
	jmp	.L4413
.L4412:
	addq	$4, %rbx
	cmpq	%rax, %rbx
	je	.L4399
.L4413:
	cmpb	%dl, (%rbx)
	jne	.L4412
	cmpb	%r8b, 1(%rbx)
	jne	.L4412
	cmpb	%cl, 2(%rbx)
	.p2align 4,,2
	jne	.L4412
	movb	$0, 3(%rbx)
	jmp	.L4412
.L4578:
	testl	%esi, %esi
	.p2align 4,,2
	je	.L4399
	leal	-1(%rsi), %eax
	movzbl	240(%rsp), %ecx
	leaq	2(%rbx,%rax,2), %rdx
.L4411:
	cmpb	%cl, (%rbx)
	setne	%al
	addq	$2, %rbx
	negl	%eax
	movb	%al, -1(%rbx)
	cmpq	%rdx, %rbx
	jne	.L4411
.L4399:
	movl	128(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L4395
	movl	_ZL20stbi__de_iphone_flag(%rip), %edx
	testl	%edx, %edx
	je	.L4395
	cmpl	$2, 12(%r13)
	jg	.L4579
.L4395:
	cmpb	$0, 115(%rsp)
	je	.L4415
	movzbl	115(%rsp), %ebx
	cmpl	$2, 1520(%rsp)
	movl	%ebx, 8(%r13)
	jg	.L4425
	movl	%ebx, 12(%r13)
.L4426:
	movq	(%r14), %rax
	xorl	%r8d, %r8d
	movl	%ebx, %edx
	movq	24(%r14), %rsi
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	%edi, %ecx
	call	_ZL17stbi__malloc_mad2iii
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L4531
	cmpl	$3, %ebx
	je	.L4428
	testl	%edi, %edi
	je	.L4430
	leal	-1(%rdi), %eax
	movq	%rsi, %rcx
	movq	%rbp, %r8
	leaq	1(%rsi,%rax), %r10
.L4432:
	movzbl	(%rcx), %eax
	incq	%rcx
	addq	$4, %r8
	sall	$2, %eax
	cltq
	movzbl	400(%rsp,%rax), %edx
	movb	%dl, -4(%r8)
	movzbl	401(%rsp,%rax), %edx
	movb	%dl, -3(%r8)
	movzbl	402(%rsp,%rax), %edx
	movzbl	403(%rsp,%rax), %eax
	movb	%dl, -2(%r8)
	movb	%al, -1(%r8)
	cmpq	%r10, %rcx
	jne	.L4432
.L4430:
	movq	24(%r14), %rcx
	call	free
	movq	%rbp, 24(%r14)
.L4415:
	movq	16(%r14), %rcx
	call	free
	movq	$0, 16(%r14)
	movl	$1, %eax
	jmp	.L4488
.L4558:
	leaq	.LC125(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4560:
	movl	116(%rsp), %eax
	movq	(%r14), %rcx
	leaq	24(%r14), %rdx
	movl	212(%rsp), %r9d
	movq	%rbx, %r8
	movl	%eax, 64(%rsp)
	movl	216(%rsp), %eax
	movl	%eax, 56(%rsp)
	movl	4(%rcx), %eax
	movl	%eax, 48(%rsp)
	movl	(%rcx), %eax
	movl	%eax, 40(%rsp)
	movl	208(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii.isra.31
	testl	%eax, %eax
	jne	.L4383
	xorl	%eax, %eax
	jmp	.L4488
.L4317:
	leaq	.LC61(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4321:
	leaq	.LC62(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4332:
	leaq	.LC68(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4326:
	leaq	.LC66(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4425:
	movl	1520(%rsp), %eax
	movl	%eax, 12(%r13)
	movl	%eax, %ebx
	jmp	.L4426
.L4568:
	leaq	.LC69(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4563:
	leaq	.LC60(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4562:
	leaq	.LC59(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4552:
	movzbl	115(%rsp), %eax
	movl	%eax, 8(%r13)
	movl	$1, %eax
	jmp	.L4488
.L4428:
	testl	%edi, %edi
	je	.L4430
	leal	-1(%rdi), %eax
	movq	%rsi, %rdx
	movq	%rbp, %rcx
	leaq	1(%rsi,%rax), %r8
.L4431:
	movzbl	(%rdx), %eax
	incq	%rdx
	addq	$3, %rcx
	sall	$2, %eax
	cltq
	movzbl	400(%rsp,%rax), %r9d
	movb	%r9b, -3(%rcx)
	movzbl	401(%rsp,%rax), %r9d
	movzbl	402(%rsp,%rax), %eax
	movb	%r9b, -2(%rcx)
	movb	%al, -1(%rcx)
	cmpq	%rdx, %r8
	jne	.L4431
	jmp	.L4430
.L4576:
	imull	4(%rdx), %esi
	leal	-2(%rax), %edx
	andl	$-3, %edx
	jne	.L4580
	cmpl	$2, %eax
	je	.L4581
.L4398:
	testl	%esi, %esi
	je	.L4399
	leal	-1(%rsi), %eax
	movzwl	256(%rsp), %r8d
	movzwl	258(%rsp), %ecx
	movzwl	260(%rsp), %edx
	leaq	8(%rbx,%rax,8), %rax
	jmp	.L4406
	.p2align 4,,7
.L4405:
	addq	$8, %rbx
	cmpq	%rax, %rbx
	je	.L4399
.L4406:
	cmpw	%r8w, (%rbx)
	jne	.L4405
	cmpw	%cx, 2(%rbx)
	jne	.L4405
	cmpw	%dx, 4(%rbx)
	jne	.L4405
	movw	$0, 6(%rbx)
	jmp	.L4405
	.p2align 4,,7
.L4353:
	leaq	.LC71(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4531:
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4554:
	leaq	.LC124(%rip), %rbx
	movq	%rbx, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4488
.L4550:
	movl	%esi, %eax
	movb	%sil, 3+_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	shrl	$24, %eax
	movb	%al, _ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	movl	%esi, %eax
	shrl	$16, %eax
	movb	%al, 1+_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	movl	%esi, %eax
	shrl	$8, %eax
	movb	%al, 2+_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip)
	leaq	_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4565:
	leaq	.LC63(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4566:
	leaq	.LC64(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4567:
	leaq	.LC65(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4575:
	leaq	.LC70(%rip), %rbx
	movq	%rbx, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4488
.L4581:
	testl	%esi, %esi
	je	.L4399
	cmpl	$16, %esi
	movzwl	256(%rsp), %eax
	jbe	.L4449
	leal	-17(%rsi), %edx
	xorl	%ecx, %ecx
	shrl	$4, %edx
	incq	%rdx
	salq	$6, %rdx
	addq	%rbx, %rdx
.L4403:
	xorl	%r8d, %r8d
	cmpw	%ax, (%rbx)
	prefetcht0	100(%rbx)
	prefetcht0	102(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 2(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 4(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 6(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 8(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 10(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 12(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 14(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 16(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 18(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 20(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 22(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 24(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 26(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 28(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 30(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 32(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 34(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 36(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 38(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 40(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 42(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 44(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 46(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 48(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 50(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 52(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 54(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 56(%rbx)
	setne	%r8b
	negl	%r8d
	movw	%r8w, 58(%rbx)
	xorl	%r8d, %r8d
	cmpw	%ax, 60(%rbx)
	setne	%r8b
	addq	$64, %rbx
	addl	$16, %ecx
	negl	%r8d
	movw	%r8w, -2(%rbx)
	cmpq	%rbx, %rdx
	jne	.L4403
.L4404:
	xorl	%edx, %edx
	cmpw	%ax, (%rbx)
	setne	%dl
	incl	%ecx
	addq	$4, %rbx
	negl	%edx
	movw	%dx, -2(%rbx)
	cmpl	%ecx, %esi
	ja	.L4404
	jmp	.L4399
	.p2align 4,,7
.L4577:
	leaq	.LC3(%rip), %rdx
	leaq	.LC126(%rip), %rcx
	movl	$4544, %r8d
	call	_assert
	jmp	.L4408
.L4570:
	leaq	.LC123(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L4488
.L4569:
	movl	$4, 8(%r13)
	movl	$1, %eax
	jmp	.L4488
.L4579:
	movq	(%r14), %rax
	movq	24(%r14), %rbx
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	12(%rax), %eax
	cmpl	$3, %eax
	je	.L4582
	cmpl	$4, %eax
	je	.L4418
	leaq	.LC3(%rip), %rdx
	leaq	.LC127(%rip), %rcx
	movl	$4650, %r8d
	call	_assert
.L4418:
	movl	_ZL27stbi__unpremultiply_on_load(%rip), %eax
	testl	%eax, %eax
	jne	.L4419
	testl	%esi, %esi
	je	.L4395
	leal	-1(%rsi), %eax
	leaq	4(%rbx,%rax,4), %rax
.L4424:
	movzbl	(%rbx), %edx
	movzbl	2(%rbx), %ecx
	addq	$4, %rbx
	movb	%cl, -4(%rbx)
	movb	%dl, -2(%rbx)
	cmpq	%rax, %rbx
	jne	.L4424
	jmp	.L4395
	.p2align 4,,7
.L4385:
	movq	88(%rsp), %rcx
	movl	%eax, 96(%rsp)
	call	free
	movl	96(%rsp), %eax
	jmp	.L4488
.L4449:
	xorl	%ecx, %ecx
	jmp	.L4404
.L4580:
	leaq	.LC3(%rip), %rdx
	leaq	.LC126(%rip), %rcx
	movl	$4569, %r8d
	call	_assert
	jmp	.L4398
.L4582:
	testl	%esi, %esi
	je	.L4395
	leal	-1(%rsi), %eax
	leaq	3(%rax,%rax,2), %rax
	addq	%rbx, %rax
.L4417:
	movzbl	(%rbx), %edx
	movzbl	2(%rbx), %ecx
	addq	$3, %rbx
	movb	%cl, -3(%rbx)
	movb	%dl, -1(%rbx)
	cmpq	%rax, %rbx
	jne	.L4417
	jmp	.L4395
.L4419:
	testl	%esi, %esi
	je	.L4395
	leal	-1(%rsi), %eax
	leaq	4(%rbx,%rax,4), %r10
	jmp	.L4423
	.p2align 4,,7
.L4583:
	movzbl	2(%rbx), %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	cltd
	idivl	%r8d
	movzbl	1(%rbx), %edx
	movl	%eax, %r9d
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	cltd
	idivl	%r8d
	movb	%al, 1(%rbx)
	movl	%ecx, %eax
	sall	$8, %eax
	subl	%ecx, %eax
	cltd
	idivl	%r8d
.L4422:
	movb	%al, 2(%rbx)
	movb	%r9b, (%rbx)
	addq	$4, %rbx
	cmpq	%r10, %rbx
	je	.L4395
.L4423:
	movzbl	3(%rbx), %r8d
	movzbl	(%rbx), %ecx
	testb	%r8b, %r8b
	jne	.L4583
	movzbl	2(%rbx), %r9d
	movl	%ecx, %eax
	jmp	.L4422
	.seh_endproc
	.section .rdata,"dr"
.LC128:
	.ascii "PICT\0"
.LC129:
	.ascii "bad req_comp\0"
.LC130:
	.ascii "bad SOS component count\0"
.LC131:
	.ascii "bad SOS len\0"
.LC132:
	.ascii "bad DC huff\0"
.LC133:
	.ascii "bad AC huff\0"
.LC134:
	.ascii "bad SOS\0"
.LC135:
	.ascii "bad DNL len\0"
.LC136:
	.ascii "bad DNL height\0"
.LC137:
	.ascii "bad Image Descriptor\0"
.LC138:
	.ascii "missing color table\0"
.LC139:
	.ascii "no clear code\0"
.LC140:
	.ascii "too many codes\0"
.LC141:
	.ascii "illegal code in raster\0"
.LC142:
	.ascii "unknown code\0"
.LC143:
	.ascii "not PSD\0"
.LC144:
	.ascii "wrong version\0"
.LC145:
	.ascii "wrong channel count\0"
.LC146:
	.ascii "unsupported bit depth\0"
.LC147:
	.ascii "wrong color format\0"
.LC150:
	.ascii "bad format\0"
.LC152:
	.ascii "tga_comp == STBI_rgb\0"
.LC153:
	.ascii "bad palette\0"
	.text
	.p2align 4,,15
	.def	_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi
_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:
.LFB580:
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
	subq	$472, %rsp
	.seh_stackalloc	472
	movaps	%xmm6, 384(%rsp)
	.seh_savexmm	%xmm6, 384
	movaps	%xmm7, 400(%rsp)
	.seh_savexmm	%xmm7, 400
	movaps	%xmm8, 416(%rsp)
	.seh_savexmm	%xmm8, 416
	movaps	%xmm9, 432(%rsp)
	.seh_savexmm	%xmm9, 432
	movaps	%xmm10, 448(%rsp)
	.seh_savexmm	%xmm10, 448
	.seh_endprologue
	movq	%rcx, %rbp
	movl	$18568, %ecx
	movq	584(%rsp), %rax
	movq	%rdx, 552(%rsp)
	movq	%r8, 560(%rsp)
	movq	%r9, 568(%rsp)
	movl	$8, (%rax)
	movl	$0, 8(%rax)
	movl	$0, 4(%rax)
	call	malloc
	movq	%rax, %rsi
	movq	%rbp, (%rax)
	leaq	_ZL15stbi__idct_simdPhiPs(%rip), %rax
	movl	$0, 18504(%rsi)
	movl	$-1, 18508(%rsi)
	movq	%rax, 18544(%rsi)
	leaq	_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii(%rip), %rax
	movb	$-1, 18472(%rsi)
	movq	%rax, 18552(%rsi)
	leaq	_ZL28stbi__resample_row_hv_2_simdPhS_S_ii(%rip), %rax
	movq	%rax, 18560(%rsi)
	movq	184(%rbp), %rax
	cmpq	192(%rbp), %rax
	jb	.L5730
	movl	48(%rbp), %eax
	testl	%eax, %eax
	jne	.L4587
.L4628:
	movq	200(%rbp), %rdi
	movq	208(%rbp), %rbx
	leaq	.LC120(%rip), %rax
	movq	%rsi, %rcx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	%rdi, 184(%rbp)
	movq	%rbx, 192(%rbp)
	call	free
	cmpq	%rdi, %rbx
	ja	.L4588
	movl	48(%rbp), %eax
	testl	%eax, %eax
	jne	.L5731
	.p2align 4,,7
.L4589:
	movdqu	200(%rbp), %xmm0
	leaq	.LC58(%rip), %rax
	movq	%rbp, %rcx
	movups	%xmm0, 184(%rbp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$66, %al
	je	.L5732
.L4754:
	movdqu	200(%rbp), %xmm0
	movups	%xmm0, 184(%rbp)
.L4765:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$71, %al
	je	.L5733
.L4769:
	movdqu	200(%rbp), %xmm0
	movq	%rbp, %rcx
	leaq	4+.LC119(%rip), %rsi
	movups	%xmm0, 184(%rbp)
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %ebx
	call	_ZL13stbi__get16beP13stbi__context
	movq	200(%rbp), %rdx
	sall	$16, %ebx
	addl	%ebx, %eax
	leaq	.LC119(%rip), %rbx
	cmpl	$943870035, %eax
	movq	%rdx, 184(%rbp)
	movq	208(%rbp), %rdx
	movq	%rdx, 192(%rbp)
	je	.L5734
.L5468:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	(%rbx), %al
	jne	.L4906
	incq	%rbx
	cmpq	%rsi, %rbx
	jne	.L5468
	movq	184(%rbp), %rax
	movq	192(%rbp), %rdx
	movl	$84, %ebx
	leaq	56(%rbp), %rsi
	jmp	.L4912
	.p2align 4,,7
.L4908:
	movl	48(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L5735
.L4909:
	decl	%ebx
	je	.L5736
.L4912:
	cmpq	%rdx, %rax
	jnb	.L4908
	incq	%rax
	decl	%ebx
	movq	%rax, 184(%rbp)
	jne	.L4912
.L5736:
	leaq	.LC128(%rip), %rbx
	leaq	4+.LC128(%rip), %rsi
.L4914:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	(%rbx), %al
	jne	.L4906
	incq	%rbx
	cmpq	%rsi, %rbx
	jne	.L4914
	cmpq	$0, 568(%rsp)
	leaq	160(%rsp), %rcx
	movq	200(%rbp), %rax
	cmovne	568(%rsp), %rcx
	movq	208(%rbp), %rdx
	movl	$92, %ebx
	leaq	56(%rbp), %rsi
	movq	%rax, 184(%rbp)
	movq	%rdx, 192(%rbp)
	movq	%rcx, 568(%rsp)
	jmp	.L4919
	.p2align 4,,7
.L4915:
	movl	48(%rbp), %ecx
	testl	%ecx, %ecx
	jne	.L5737
.L4916:
	decl	%ebx
	je	.L5738
.L4919:
	cmpq	%rdx, %rax
	jnb	.L4915
	incq	%rax
	decl	%ebx
	movq	%rax, 184(%rbp)
	jne	.L4919
.L5738:
	movq	%rbp, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %ebx
	call	_ZL13stbi__get16beP13stbi__context
	cmpq	$0, 16(%rbp)
	movl	%eax, 48(%rsp)
	je	.L4923
	movq	40(%rbp), %rcx
	call	*32(%rbp)
	testl	%eax, %eax
	je	.L4922
	movl	48(%rbp), %eax
	testl	%eax, %eax
	jne	.L4923
.L4921:
	leaq	.LC39(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
	.p2align 4,,7
.L4587:
	leaq	56(%rbp), %rbx
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%rbx, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	je	.L5739
	movzbl	56(%rbp), %edx
	cltq
	leaq	57(%rbp), %rcx
	addq	%rbx, %rax
.L4627:
	movq	%rax, 192(%rbp)
	movq	%rcx, 184(%rbp)
	jmp	.L4586
.L5731:
	leaq	56(%rbp), %rbx
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%rbx, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	je	.L4590
	movzbl	56(%rbp), %edx
	cltq
	addq	%rax, %rbx
	leaq	57(%rbp), %rax
.L4593:
	movq	%rbx, 192(%rbp)
	movq	%rax, 184(%rbp)
	jmp	.L4592
.L5730:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbp)
	movzbl	(%rax), %edx
.L4586:
	incb	%dl
	jne	.L4628
.L4629:
	movq	(%rsi), %rbx
	movq	184(%rbx), %rax
	cmpq	192(%rbx), %rax
	jb	.L5740
	movl	48(%rbx), %r13d
	testl	%r13d, %r13d
	je	.L4628
	leaq	56(%rbx), %rdi
	movq	40(%rbx), %rcx
	movl	52(%rbx), %r8d
	movq	%rdi, %rdx
	call	*16(%rbx)
	testl	%eax, %eax
	jne	.L4633
	leaq	57(%rbx), %rax
	movl	$0, 48(%rbx)
	movb	$0, 56(%rbx)
	xorl	%edx, %edx
	movq	%rax, %rcx
.L4634:
	movq	%rax, 192(%rbx)
	movq	%rcx, 184(%rbx)
.L4632:
	cmpb	$-1, %dl
	je	.L4629
	cmpb	$-40, %dl
	jne	.L4628
	movdqu	200(%rbp), %xmm0
	movq	%rsi, %rcx
	movups	%xmm0, 184(%rbp)
	call	free
	movl	$18568, %ecx
	call	malloc
	movq	%rax, %r15
	movq	%rbp, (%rax)
	leaq	_ZL15stbi__idct_simdPhiPs(%rip), %rax
	cmpl	$4, 576(%rsp)
	movl	$0, 8(%rbp)
	movq	%rax, 18544(%r15)
	leaq	_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii(%rip), %rax
	movq	%rax, 18552(%r15)
	leaq	_ZL28stbi__resample_row_hv_2_simdPhS_S_ii(%rip), %rax
	movq	%rax, 18560(%r15)
	ja	.L5741
	movq	$0, 18136(%r15)
	movq	$0, 18144(%r15)
	movq	%r15, %rcx
	movq	$0, 18232(%r15)
	movq	$0, 18240(%r15)
	movq	$0, 18328(%r15)
	movq	$0, 18336(%r15)
	movq	$0, 18424(%r15)
	movq	$0, 18432(%r15)
	movl	$0, 18536(%r15)
	movl	$0, 18504(%r15)
	movl	$-1, 18508(%r15)
	movb	$-1, 18472(%r15)
	call	_ZL16stbi__get_markerP10stbi__jpeg.isra.1.part.2
	cmpb	$-40, %al
	je	.L4637
	leaq	.LC120(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	(%r15), %rax
	movl	8(%rax), %edx
	.p2align 4,,7
.L5172:
	movq	%r15, %rcx
	xorl	%ebx, %ebx
	call	_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.117
.L4636:
	movq	%r15, %rcx
	call	free
	movq	%rbx, %rax
	jmp	.L5467
.L5740:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbx)
	movzbl	(%rax), %edx
	jmp	.L4632
.L4588:
	leaq	1(%rdi), %rax
	movq	%rax, 184(%rbp)
	movzbl	(%rdi), %edx
.L4592:
	cmpb	$-119, %dl
	jne	.L4589
	cmpq	%rbx, %rax
	jb	.L4594
	movl	48(%rbp), %eax
	testl	%eax, %eax
	je	.L4589
	leaq	56(%rbp), %rbx
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%rbx, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	je	.L4595
	cltq
	leaq	57(%rbp), %rdx
	addq	%rax, %rbx
	movzbl	56(%rbp), %eax
.L4598:
	movq	%rbx, 192(%rbp)
	movq	%rdx, 184(%rbp)
	jmp	.L4597
.L4594:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbp)
	movzbl	(%rax), %eax
.L4597:
	cmpb	$80, %al
	jne	.L4589
	cmpq	%rbx, %rdx
	jb	.L4599
	movl	48(%rbp), %eax
	testl	%eax, %eax
	je	.L4589
	leaq	56(%rbp), %rbx
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%rbx, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	je	.L4600
	movzbl	56(%rbp), %edx
	cltq
	addq	%rax, %rbx
	leaq	57(%rbp), %rax
.L4603:
	movq	%rbx, 192(%rbp)
	movq	%rax, 184(%rbp)
	jmp	.L4602
.L4599:
	leaq	1(%rdx), %rax
	movq	%rax, 184(%rbp)
	movzbl	(%rdx), %edx
.L4602:
	cmpb	$78, %dl
	jne	.L4589
	cmpq	%rbx, %rax
	jb	.L4604
	movl	48(%rbp), %eax
	testl	%eax, %eax
	je	.L4589
	leaq	56(%rbp), %rbx
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%rbx, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	jne	.L5742
	leaq	57(%rbp), %rbx
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	xorl	%eax, %eax
	movq	%rbx, %rdx
.L4608:
	movq	%rbx, 192(%rbp)
	movq	%rdx, 184(%rbp)
	jmp	.L4607
.L4604:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbp)
	movzbl	(%rax), %eax
.L4607:
	cmpb	$71, %al
	jne	.L4589
	cmpq	%rbx, %rdx
	jb	.L4609
	movl	48(%rbp), %eax
	testl	%eax, %eax
	je	.L4589
	leaq	56(%rbp), %rbx
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%rbx, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	je	.L4610
	movzbl	56(%rbp), %edx
	cltq
	addq	%rax, %rbx
	leaq	57(%rbp), %rax
.L4613:
	movq	%rbx, 192(%rbp)
	movq	%rax, 184(%rbp)
	jmp	.L4612
.L4609:
	leaq	1(%rdx), %rax
	movq	%rax, 184(%rbp)
	movzbl	(%rdx), %edx
.L4612:
	cmpb	$13, %dl
	jne	.L4589
	cmpq	%rbx, %rax
	jb	.L4614
	movl	48(%rbp), %r15d
	testl	%r15d, %r15d
	je	.L4589
	leaq	56(%rbp), %rbx
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%rbx, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	jne	.L5743
	leaq	57(%rbp), %rbx
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	xorl	%eax, %eax
	movq	%rbx, %rdx
.L4618:
	movq	%rbx, 192(%rbp)
	movq	%rdx, 184(%rbp)
	jmp	.L4617
.L4614:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbp)
	movzbl	(%rax), %eax
.L4617:
	cmpb	$10, %al
	jne	.L4589
	cmpq	%rbx, %rdx
	jb	.L4619
	movl	48(%rbp), %r14d
	testl	%r14d, %r14d
	je	.L4589
	leaq	56(%rbp), %rbx
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%rbx, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	jne	.L5744
	leaq	57(%rbp), %rbx
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	xorl	%edx, %edx
	movq	%rbx, %rax
.L4623:
	movq	%rbx, 192(%rbp)
	movq	%rax, 184(%rbp)
	jmp	.L4622
.L4619:
	leaq	1(%rdx), %rax
	movq	%rax, 184(%rbp)
	movzbl	(%rdx), %edx
.L4622:
	cmpb	$26, %dl
	jne	.L4589
	cmpq	%rbx, %rax
	jb	.L5745
	movl	48(%rbp), %edi
	testl	%edi, %edi
	je	.L4589
	leaq	56(%rbp), %rbx
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%rbx, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	jne	.L4751
	leaq	57(%rbp), %rax
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	xorl	%edx, %edx
	movq	%rax, %rcx
.L4752:
	movq	%rax, 192(%rbp)
	movq	%rcx, 184(%rbp)
	jmp	.L4750
.L4633:
	cltq
	leaq	57(%rbx), %rcx
	movzbl	56(%rbx), %edx
	addq	%rdi, %rax
	jmp	.L4634
.L5745:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbp)
	movzbl	(%rax), %edx
.L4750:
	cmpb	$10, %dl
	jne	.L4589
	cmpl	$4, 576(%rsp)
	movq	%rbp, 192(%rsp)
	movdqu	200(%rbp), %xmm0
	movups	%xmm0, 184(%rbp)
	ja	.L5746
	leaq	192(%rsp), %rcx
	xorl	%edx, %edx
	movl	576(%rsp), %r8d
	call	_ZL20stbi__parse_png_fileP9stbi__pngii
	testl	%eax, %eax
	je	.L5213
	movl	224(%rsp), %r8d
	movl	$8, %eax
	movl	576(%rsp), %esi
	movq	216(%rsp), %rbx
	movq	$0, 216(%rsp)
	cmpl	$7, %r8d
	cmovle	%eax, %r8d
	movq	584(%rsp), %rax
	xorl	%ecx, %ecx
	testl	%esi, %esi
	movl	%r8d, (%rax)
	movq	192(%rsp), %rax
	je	.L4761
	movl	12(%rax), %edx
	cmpl	%edx, 576(%rsp)
	je	.L4761
	movl	4(%rax), %ecx
	cmpl	$8, %r8d
	movl	576(%rsp), %r8d
	movl	%ecx, 32(%rsp)
	movq	%rbx, %rcx
	movl	(%rax), %r9d
	je	.L5747
	call	_ZL22stbi__convert_format16Ptiijj
	movq	%rax, %rbx
.L4763:
	movq	192(%rsp), %rax
	movl	576(%rsp), %edi
	testq	%rbx, %rbx
	movl	%edi, 12(%rax)
	je	.L5696
	movq	216(%rsp), %rcx
.L4761:
	movl	(%rax), %edx
	movq	552(%rsp), %rdi
	cmpq	$0, 568(%rsp)
	movl	%edx, (%rdi)
	movq	560(%rsp), %rdi
	movl	4(%rax), %edx
	movl	%edx, (%rdi)
	je	.L4758
	movl	8(%rax), %eax
	movq	568(%rsp), %rdi
	movl	%eax, (%rdi)
.L4758:
	call	free
	movq	208(%rsp), %rcx
	call	free
	movq	200(%rsp), %rcx
	call	free
	movq	%rbx, %rax
.L5467:
	movaps	384(%rsp), %xmm6
	movaps	400(%rsp), %xmm7
	movaps	416(%rsp), %xmm8
	movaps	432(%rsp), %xmm9
	movaps	448(%rsp), %xmm10
	addq	$472, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L5739:
	leaq	57(%rbp), %rax
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	xorl	%edx, %edx
	movq	%rax, %rcx
	jmp	.L4627
.L4595:
	leaq	57(%rbp), %rbx
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	xorl	%eax, %eax
	movq	%rbx, %rdx
	jmp	.L4598
.L4590:
	leaq	57(%rbp), %rbx
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	xorl	%edx, %edx
	movq	%rbx, %rax
	jmp	.L4593
.L4600:
	leaq	57(%rbp), %rbx
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	xorl	%edx, %edx
	movq	%rbx, %rax
	jmp	.L4603
.L4610:
	leaq	57(%rbp), %rbx
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	xorl	%edx, %edx
	movq	%rbx, %rax
	jmp	.L4613
.L5742:
	cltq
	leaq	57(%rbp), %rdx
	addq	%rax, %rbx
	movzbl	56(%rbp), %eax
	jmp	.L4608
.L5213:
	xorl	%ebx, %ebx
	movq	216(%rsp), %rcx
	jmp	.L4758
	.p2align 4,,7
.L5735:
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%rsi, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	jne	.L4910
	leaq	57(%rbp), %rdx
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	movq	%rdx, %rax
.L4911:
	movq	%rdx, 192(%rbp)
	movq	%rax, 184(%rbp)
	jmp	.L4909
.L4910:
	cltq
	leaq	(%rsi,%rax), %rdx
	leaq	57(%rbp), %rax
	jmp	.L4911
.L5743:
	cltq
	leaq	57(%rbp), %rdx
	addq	%rax, %rbx
	movzbl	56(%rbp), %eax
	jmp	.L4618
.L4751:
	cltq
	leaq	57(%rbp), %rcx
	movzbl	56(%rbp), %edx
	addq	%rbx, %rax
	jmp	.L4752
.L5732:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$77, %al
	jne	.L4754
	movq	%rbp, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbp, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movq	%rbp, %rcx
	call	_ZL13stbi__get32leP13stbi__context
	movdqu	200(%rbp), %xmm0
	cmpl	$12, %eax
	movups	%xmm0, 184(%rbp)
	je	.L5183
	cmpl	$40, %eax
	je	.L5183
	movl	%eax, %edx
	andl	$-17, %edx
	cmpl	$108, %edx
	je	.L5183
	cmpl	$56, %eax
	jne	.L4765
.L5183:
	movl	576(%rsp), %eax
	movq	568(%rsp), %r9
	movq	%rbp, %rcx
	movq	560(%rsp), %r8
	movq	552(%rsp), %rdx
	movl	%eax, 32(%rsp)
	call	_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.24
	jmp	.L5467
.L5737:
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	%rsi, %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	jne	.L4917
	leaq	57(%rbp), %rdx
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	movq	%rdx, %rax
.L4918:
	movq	%rdx, 192(%rbp)
	movq	%rax, 184(%rbp)
	jmp	.L4916
.L4917:
	cltq
	leaq	(%rsi,%rax), %rdx
	leaq	57(%rbp), %rax
	jmp	.L4918
.L4906:
	movdqu	200(%rbp), %xmm0
	movq	%rbp, %rcx
	movups	%xmm0, 184(%rbp)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %ebx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$80, %bl
	je	.L5748
.L5189:
	movdqu	200(%rbp), %xmm0
	movq	%rbp, %rcx
	movups	%xmm0, 184(%rbp)
	call	_ZL14stbi__hdr_testP13stbi__context
	testl	%eax, %eax
	je	.L5749
	movl	576(%rsp), %eax
	movq	568(%rsp), %r9
	movq	%rbp, %rcx
	movq	560(%rsp), %r8
	movq	552(%rsp), %rdx
	movl	%eax, 32(%rsp)
	call	_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.34
	movl	576(%rsp), %r11d
	movq	%rax, %rdi
	testl	%r11d, %r11d
	jne	.L5075
	movq	568(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 576(%rsp)
.L5075:
	movq	560(%rsp), %rax
	testq	%rdi, %rdi
	movl	(%rax), %r13d
	movq	552(%rsp), %rax
	movl	(%rax), %ebp
	je	.L5696
	movl	576(%rsp), %r8d
	xorl	%r9d, %r9d
	movl	%r13d, %edx
	movl	%ebp, %ecx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5750
	movl	576(%rsp), %eax
	movl	576(%rsp), %esi
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	$0, %esi
	imull	%ebp, %r13d
	testl	%r13d, %r13d
	movl	%r13d, 64(%rsp)
	jle	.L5085
	movslq	576(%rsp), %rax
	xorps	%xmm6, %xmm6
	movq	%rbx, %r12
	movq	%rdi, %rbp
	movss	.LC149(%rip), %xmm10
	movss	.LC151(%rip), %xmm9
	movq	%rax, 48(%rsp)
	salq	$2, %rax
	testl	%esi, %esi
	movq	%rax, 72(%rsp)
	movl	$0, %eax
	cmovns	%esi, %eax
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	movl	%eax, 56(%rsp)
.L5086:
	testl	%esi, %esi
	jle	.L5080
	cvtss2sd	_ZL17stbi__h2l_gamma_i(%rip), %xmm8
	xorl	%r13d, %r13d
	movss	_ZL17stbi__h2l_scale_i(%rip), %xmm7
	jmp	.L5082
	.p2align 4,,7
.L5081:
	movb	%al, (%r12,%r13)
	incq	%r13
	cmpl	%r13d, %esi
	jle	.L5080
.L5082:
	movss	0(%rbp,%r13,4), %xmm0
	movsd	%xmm8, %xmm1
	mulss	%xmm7, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	pow
	cvtsd2ss	%xmm0, %xmm0
	mulss	%xmm10, %xmm0
	xorl	%eax, %eax
	addss	%xmm9, %xmm0
	ucomiss	%xmm0, %xmm6
	ja	.L5081
	ucomiss	.LC149(%rip), %xmm0
	movl	$-1, %eax
	ja	.L5081
	cvttss2si	%xmm0, %eax
	movb	%al, (%r12,%r13)
	incq	%r13
	cmpl	%r13d, %esi
	jg	.L5082
.L5080:
	movl	56(%rsp), %eax
	cmpl	%eax, 576(%rsp)
	jle	.L5083
	addl	%r15d, %eax
	movss	.LC149(%rip), %xmm0
	cltq
	xorps	%xmm1, %xmm1
	mulss	(%rdi,%rax,4), %xmm0
	xorl	%edx, %edx
	addss	.LC151(%rip), %xmm0
	ucomiss	%xmm0, %xmm1
	ja	.L5084
	ucomiss	.LC149(%rip), %xmm0
	movl	$-1, %edx
	ja	.L5084
	cvttss2si	%xmm0, %edx
.L5084:
	movb	%dl, (%rbx,%rax)
.L5083:
	incl	%r14d
	addl	576(%rsp), %r15d
	addq	48(%rsp), %r12
	addq	72(%rsp), %rbp
	cmpl	64(%rsp), %r14d
	jne	.L5086
.L5085:
	movq	%rdi, %rcx
	call	free
	movq	%rbx, %rax
	jmp	.L5467
	.p2align 4,,7
.L5744:
	cltq
	movzbl	56(%rbp), %edx
	addq	%rax, %rbx
	leaq	57(%rbp), %rax
	jmp	.L4623
.L5746:
	leaq	.LC129(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L4923:
	movq	192(%rbp), %rax
	cmpq	%rax, 184(%rbp)
	jnb	.L4921
.L4922:
	movl	48(%rsp), %edx
	xorl	%r9d, %r9d
	movl	$4, %r8d
	movl	%ebx, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L5699
	movq	%rbp, %rcx
	xorl	%r13d, %r13d
	call	_ZL13stbi__get32beP13stbi__context
	movq	%rbp, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbp, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movl	48(%rsp), %edi
	xorl	%r9d, %r9d
	movl	$4, %r8d
	movl	%ebx, %ecx
	movl	%edi, %edx
	call	_ZL17stbi__malloc_mad3iiii
	movl	%edi, %r8d
	movl	$255, %edx
	movq	%rax, %rcx
	imull	%ebx, %r8d
	movq	%rax, 64(%rsp)
	xorl	%edi, %edi
	sall	$2, %r8d
	movslq	%r8d, %r8
	call	memset
	leaq	192(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	%rax, %rsi
	jmp	.L4926
	.p2align 4,,7
.L4931:
	movq	192(%rbp), %rax
	cmpq	%rax, 184(%rbp)
	jnb	.L5695
.L4930:
	cmpb	$8, (%rsi)
	jne	.L5628
	testb	%r12b, %r12b
	je	.L5751
	addq	$3, %rsi
	cmpl	$10, %r13d
	je	.L5628
.L4926:
	movq	%rbp, %rcx
	incl	%r13d
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %r12d
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, (%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, 1(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movb	%al, 2(%rsi)
	movzbl	%al, %eax
	orl	%eax, %edi
	cmpq	$0, 16(%rbp)
	je	.L4931
	movq	40(%rbp), %rcx
	call	*32(%rbp)
	testl	%eax, %eax
	je	.L4930
	movl	48(%rbp), %r15d
	testl	%r15d, %r15d
	jne	.L4931
.L5695:
	leaq	.LC39(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L4927:
	movq	64(%rsp), %rcx
	call	free
	movq	$0, 64(%rsp)
.L5179:
	movq	552(%rsp), %rax
	movl	576(%rsp), %esi
	movl	48(%rsp), %edi
	movl	%ebx, (%rax)
	movq	560(%rsp), %rax
	testl	%esi, %esi
	movl	%edi, (%rax)
	jne	.L5068
	movq	568(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 576(%rsp)
.L5068:
	movl	48(%rsp), %eax
	movl	576(%rsp), %r8d
	movl	%ebx, %r9d
	movq	64(%rsp), %rcx
	movl	$4, %edx
	movl	%eax, 32(%rsp)
	call	_ZL20stbi__convert_formatPhiijj
	jmp	.L5467
.L5749:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %esi
	cmpl	$1, %esi
	movl	%esi, %ebx
	jle	.L5752
.L5087:
	leaq	.LC121(%rip), %rax
	movdqu	200(%rbp), %xmm0
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	movups	%xmm0, 184(%rbp)
	jmp	.L5467
.L5699:
	leaq	.LC61(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L5734:
	movq	%rbp, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	cmpl	$943870035, %eax
	jne	.L5753
	movq	%rbp, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	decl	%eax
	jne	.L5754
	cmpq	$0, 16(%rbp)
	je	.L4833
	movq	192(%rbp), %rdx
	movq	184(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	cmpl	$5, %ecx
	jle	.L5755
.L4834:
	addq	$6, %rax
	movq	%rax, 184(%rbp)
.L4835:
	movq	%rbp, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$16, %eax
	movl	%eax, 72(%rsp)
	ja	.L5756
	movq	%rbp, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, 48(%rsp)
	call	_ZL13stbi__get32beP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, 56(%rsp)
	call	_ZL13stbi__get16beP13stbi__context
	movl	%eax, %r14d
	leal	-8(%rax), %eax
	andl	$-9, %eax
	jne	.L5757
	movq	%rbp, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$3, %eax
	jne	.L5758
	movq	%rbp, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %edx
	call	_ZL10stbi__skipP13stbi__contexti
	movq	%rbp, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %edx
	call	_ZL10stbi__skipP13stbi__contexti
	movq	%rbp, %rcx
	call	_ZL13stbi__get32beP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %edx
	call	_ZL10stbi__skipP13stbi__contexti
	movq	%rbp, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$1, %eax
	movl	%eax, %esi
	jg	.L5759
	movl	48(%rsp), %r8d
	movl	56(%rsp), %edx
	xorl	%r9d, %r9d
	movl	$4, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L5699
	cmpl	$16, 592(%rsp)
	sete	%r13b
	cmpl	$16, %r14d
	sete	%al
	andl	%eax, %r13d
	testl	%esi, %esi
	jne	.L4841
	testb	%r13b, %r13b
	jne	.L5760
.L4841:
	movl	56(%rsp), %eax
	leal	0(,%rax,4), %ecx
	imull	48(%rsp), %ecx
	movslq	%ecx, %rcx
	call	malloc
	movq	%rax, %rbx
.L4842:
	testq	%rbx, %rbx
	je	.L5698
	movl	48(%rsp), %edi
	imull	56(%rsp), %edi
	testl	%esi, %esi
	jne	.L5761
	leal	-9(%rdi), %eax
	xorl	%r12d, %r12d
	shrl	$3, %eax
	leal	8(,%rax,8), %eax
	movl	%eax, 80(%rsp)
	leal	-17(%rdi), %eax
	andl	$-16, %eax
	addl	$16, %eax
	movl	%eax, 64(%rsp)
.L4873:
	cmpl	%r12d, 72(%rsp)
	jg	.L4869
	testb	%r13b, %r13b
	je	.L4870
	cmpl	$3, %r12d
	leaq	(%rbx,%r12,2), %rax
	sete	%dl
	movzbl	%dl, %edx
	negl	%edx
	testl	%edi, %edi
	jle	.L4876
	xorl	%ecx, %ecx
	cmpl	$8, %edi
	jle	.L4877
.L4875:
	movw	%dx, (%rax)
	movw	%dx, 8(%rax)
	prefetcht0	320(%rax)
	movw	%dx, 16(%rax)
	movw	%dx, 24(%rax)
	addl	$8, %ecx
	movw	%dx, 32(%rax)
	movw	%dx, 40(%rax)
	addq	$64, %rax
	movw	%dx, -16(%rax)
	movw	%dx, -8(%rax)
	cmpl	80(%rsp), %ecx
	jne	.L4875
.L4877:
	incl	%ecx
	movw	%dx, (%rax)
	addq	$8, %rax
	cmpl	%ecx, %edi
	jg	.L4877
.L4876:
	incq	%r12
	cmpq	$4, %r12
	jne	.L4873
.L4872:
	cmpl	$3, 72(%rsp)
	jle	.L4868
	movq	584(%rsp), %rax
	cmpl	$16, (%rax)
	je	.L4895
	testl	%edi, %edi
	jle	.L5762
	leal	-1(%rdi), %eax
	movq	%rbx, %rdx
	movss	.LC149(%rip), %xmm4
	leaq	4(%rbx,%rax,4), %rcx
	movss	.LC28(%rip), %xmm3
.L4902:
	movzbl	3(%rdx), %eax
	leal	-1(%rax), %r8d
	cmpb	$-3, %r8b
	ja	.L4901
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm3, %xmm6
	movzbl	(%rdx), %eax
	movaps	%xmm3, %xmm1
	cvtsi2ss	%eax, %xmm2
	divss	%xmm4, %xmm0
	divss	%xmm0, %xmm6
	subss	%xmm6, %xmm1
	mulss	%xmm6, %xmm2
	movaps	%xmm6, %xmm0
	mulss	%xmm4, %xmm1
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	movb	%al, (%rdx)
	movzbl	1(%rdx), %eax
	cvtsi2ss	%eax, %xmm2
	mulss	%xmm6, %xmm2
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	movb	%al, 1(%rdx)
	movzbl	2(%rdx), %eax
	cvtsi2ss	%eax, %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, 2(%rdx)
.L4901:
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.L4902
.L4868:
	testl	$-5, 576(%rsp)
	je	.L4894
	movq	584(%rsp), %rax
	cmpl	$16, (%rax)
	jne	.L4903
	jmp	.L5188
.L5762:
	testl	$-5, 576(%rsp)
	je	.L4894
.L4903:
	movl	48(%rsp), %eax
	movl	56(%rsp), %r9d
	movq	%rbx, %rcx
	movl	576(%rsp), %r8d
	movl	$4, %edx
	movl	%eax, 32(%rsp)
	call	_ZL20stbi__convert_formatPhiijj
	movq	%rax, %rbx
.L4904:
	testq	%rbx, %rbx
	je	.L5696
.L4894:
	cmpq	$0, 568(%rsp)
	je	.L4905
	movq	568(%rsp), %rax
	movl	$4, (%rax)
.L4905:
	movq	560(%rsp), %rax
	movl	48(%rsp), %edi
	movl	%edi, (%rax)
	movq	552(%rsp), %rax
	movl	56(%rsp), %edi
	movl	%edi, (%rax)
	movq	%rbx, %rax
	jmp	.L5467
.L4895:
	testl	%edi, %edi
	jle	.L4898
	leal	-1(%rdi), %eax
	movq	%rbx, %rdx
	movss	.LC148(%rip), %xmm4
	leaq	8(%rbx,%rax,8), %rcx
	movss	.LC28(%rip), %xmm3
.L4900:
	movzwl	6(%rdx), %eax
	leal	-1(%rax), %r8d
	cmpw	$-3, %r8w
	ja	.L4899
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm3, %xmm5
	movzwl	(%rdx), %eax
	movaps	%xmm3, %xmm1
	cvtsi2ss	%eax, %xmm2
	divss	%xmm4, %xmm0
	divss	%xmm0, %xmm5
	subss	%xmm5, %xmm1
	mulss	%xmm5, %xmm2
	movaps	%xmm5, %xmm0
	mulss	%xmm4, %xmm1
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	movw	%ax, (%rdx)
	movzwl	2(%rdx), %eax
	cvtsi2ss	%eax, %xmm2
	mulss	%xmm5, %xmm2
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	movw	%ax, 2(%rdx)
	movzwl	4(%rdx), %eax
	cvtsi2ss	%eax, %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movw	%ax, 4(%rdx)
.L4899:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.L4900
.L4898:
	testl	$-5, 576(%rsp)
	je	.L4894
.L5188:
	movl	48(%rsp), %eax
	movl	56(%rsp), %r9d
	movq	%rbx, %rcx
	movl	576(%rsp), %r8d
	movl	$4, %edx
	movl	%eax, 32(%rsp)
	call	_ZL22stbi__convert_format16Ptiijj
	movq	%rax, %rbx
	jmp	.L4904
.L4870:
	cmpl	$3, %r12d
	leaq	(%rbx,%r12), %rax
	sete	%dl
	negl	%edx
	testl	%edi, %edi
	jle	.L4876
	xorl	%ecx, %ecx
	cmpl	$16, %edi
	jle	.L4880
.L4879:
	movb	%dl, (%rax)
	movb	%dl, 4(%rax)
	prefetcht0	160(%rax)
	movb	%dl, 8(%rax)
	movb	%dl, 12(%rax)
	addl	$16, %ecx
	movb	%dl, 16(%rax)
	movb	%dl, 20(%rax)
	addq	$64, %rax
	movb	%dl, -40(%rax)
	movb	%dl, -36(%rax)
	movb	%dl, -32(%rax)
	movb	%dl, -28(%rax)
	movb	%dl, -24(%rax)
	movb	%dl, -20(%rax)
	movb	%dl, -16(%rax)
	movb	%dl, -12(%rax)
	movb	%dl, -8(%rax)
	movb	%dl, -4(%rax)
	cmpl	64(%rsp), %ecx
	jne	.L4879
.L4880:
	incl	%ecx
	movb	%dl, (%rax)
	addq	$4, %rax
	cmpl	%ecx, %edi
	jg	.L4880
	jmp	.L4876
.L4869:
	movq	584(%rsp), %rax
	cmpl	$16, (%rax)
	je	.L5763
	cmpl	$16, %r14d
	leaq	(%rbx,%r12), %rsi
	je	.L4885
	testl	%edi, %edi
	jle	.L4876
	xorl	%r15d, %r15d
	cmpl	$16, %edi
	jle	.L4892
.L4891:
	movq	%rbp, %rcx
	prefetcht0	48(%rsi)
	addl	$16, %r15d
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, (%rsi)
	addq	$64, %rsi
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -60(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -56(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -52(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -48(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -44(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -40(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -36(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -32(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -28(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -24(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -20(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -16(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -12(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movb	%al, -8(%rsi)
	call	_ZL10stbi__get8P13stbi__context
	movb	%al, -4(%rsi)
	cmpl	%r15d, 64(%rsp)
	jne	.L4891
.L4892:
	movq	%rbp, %rcx
	incl	%r15d
	addq	$4, %rsi
	call	_ZL10stbi__get8P13stbi__context
	movb	%al, -4(%rsi)
	cmpl	%r15d, %edi
	jg	.L4892
	jmp	.L4876
.L4885:
	testl	%edi, %edi
	.p2align 4,,3
	jle	.L4876
	xorl	%r15d, %r15d
	cmpl	$16, %edi
	.p2align 4,,3
	jle	.L4889
.L4888:
	movq	%rbp, %rcx
	prefetcht0	48(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, (%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 4(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 8(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 12(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 16(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 20(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 24(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 28(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 32(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 36(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 40(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 44(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 48(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 52(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movq	%rbp, %rcx
	movb	%al, 56(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	addl	$16, %r15d
	addq	$64, %rsi
	movb	%al, -4(%rsi)
	cmpl	%r15d, 64(%rsp)
	jne	.L4888
.L4889:
	movq	%rbp, %rcx
	incl	%r15d
	addq	$4, %rsi
	call	_ZL13stbi__get16beP13stbi__context
	sarl	$8, %eax
	movb	%al, -4(%rsi)
	cmpl	%r15d, %edi
	jg	.L4889
	jmp	.L4876
.L5763:
	testl	%edi, %edi
	leaq	(%rbx,%r12,2), %rsi
	jle	.L4876
	xorl	%r15d, %r15d
	cmpl	$8, %edi
	jle	.L4884
.L4883:
	movq	%rbp, %rcx
	prefetcht0	96(%rsi)
	addl	$8, %r15d
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbp, %rcx
	movw	%ax, (%rsi)
	addq	$64, %rsi
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbp, %rcx
	movw	%ax, -56(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbp, %rcx
	movw	%ax, -48(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbp, %rcx
	movw	%ax, -40(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbp, %rcx
	movw	%ax, -32(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbp, %rcx
	movw	%ax, -24(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	movq	%rbp, %rcx
	movw	%ax, -16(%rsi)
	call	_ZL13stbi__get16beP13stbi__context
	movw	%ax, -8(%rsi)
	cmpl	%r15d, 80(%rsp)
	jne	.L4883
.L4884:
	movq	%rbp, %rcx
	incl	%r15d
	addq	$8, %rsi
	call	_ZL13stbi__get16beP13stbi__context
	movw	%ax, -8(%rsi)
	cmpl	%r15d, %edi
	jg	.L4884
	jmp	.L4876
.L5761:
	movl	72(%rsp), %edx
	movq	%rbp, %rcx
	imull	48(%rsp), %edx
	addl	%edx, %edx
	call	_ZL10stbi__skipP13stbi__contexti
	leal	-17(%rdi), %eax
	movq	%rbx, 96(%rsp)
	movl	$0, 64(%rsp)
	andl	$-16, %eax
	addl	$16, %eax
	movl	%eax, 104(%rsp)
	leaq	56(%rbp), %rax
	movq	%rax, 80(%rsp)
.L4866:
	movl	64(%rsp), %ecx
	cmpl	%ecx, 72(%rsp)
	movq	96(%rsp), %rsi
	jg	.L5764
	testl	%edi, %edi
	jle	.L4847
	cmpl	$3, 64(%rsp)
	sete	%al
	xorl	%edx, %edx
	negl	%eax
	cmpl	$16, %edi
	jle	.L4850
.L4849:
	movb	%al, (%rsi)
	movb	%al, 4(%rsi)
	prefetcht0	160(%rsi)
	movb	%al, 8(%rsi)
	movb	%al, 12(%rsi)
	addl	$16, %edx
	movb	%al, 16(%rsi)
	movb	%al, 20(%rsi)
	addq	$64, %rsi
	movb	%al, -40(%rsi)
	movb	%al, -36(%rsi)
	movb	%al, -32(%rsi)
	movb	%al, -28(%rsi)
	movb	%al, -24(%rsi)
	movb	%al, -20(%rsi)
	movb	%al, -16(%rsi)
	movb	%al, -12(%rsi)
	movb	%al, -8(%rsi)
	movb	%al, -4(%rsi)
	cmpl	104(%rsp), %edx
	jne	.L4849
.L4850:
	incl	%edx
	movb	%al, (%rsi)
	addq	$4, %rsi
	cmpl	%edx, %edi
	jg	.L4850
.L4847:
	incl	64(%rsp)
	incq	96(%rsp)
	movl	64(%rsp), %eax
	cmpl	$4, %eax
	jne	.L4866
	jmp	.L4872
.L5764:
	movl	$0, 88(%rsp)
.L4846:
	movl	%edi, %r15d
	subl	88(%rsp), %r15d
	testl	%r15d, %r15d
	jle	.L4847
	movq	184(%rbp), %rax
	movq	192(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.L5765
	movl	48(%rbp), %r10d
	movl	$1, %r12d
	testl	%r10d, %r10d
	jne	.L5766
.L4853:
	leal	-1(%r12), %edx
	addl	%r12d, 88(%rsp)
	movq	%rsi, %r14
	movq	%rdx, %r12
	leaq	4(%rsi,%rdx,4), %r15
	jmp	.L4863
	.p2align 4,,7
.L4858:
	movl	48(%rbp), %r9d
	xorl	%r13d, %r13d
	testl	%r9d, %r9d
	jne	.L5767
.L4859:
	movb	%r13b, (%r14)
	addq	$4, %r14
	cmpq	%r15, %r14
	je	.L4862
	movq	184(%rbp), %rax
	movq	192(%rbp), %rcx
.L4863:
	cmpq	%rcx, %rax
	jnb	.L4858
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbp)
	movzbl	(%rax), %r13d
	jmp	.L4859
.L5750:
	movq	%rdi, %rcx
	call	free
.L5698:
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L4862:
	movslq	%r12d, %r12
	leaq	4(%rsi,%r12,4), %rsi
	jmp	.L4846
.L5767:
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	80(%rsp), %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	jne	.L4860
	leaq	57(%rbp), %rax
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	movq	%rax, %rdx
.L4861:
	movq	%rax, 192(%rbp)
	movq	%rdx, 184(%rbp)
	jmp	.L4859
.L4860:
	cltq
	leaq	57(%rbp), %rdx
	addq	80(%rsp), %rax
	movzbl	56(%rbp), %r13d
	jmp	.L4861
.L5766:
	movq	40(%rbp), %rcx
	movl	52(%rbp), %r8d
	movq	80(%rsp), %rdx
	call	*16(%rbp)
	testl	%eax, %eax
	jne	.L4854
	leaq	57(%rbp), %rcx
	movl	$0, 48(%rbp)
	movb	$0, 56(%rbp)
	xorl	%r12d, %r12d
	movq	%rcx, %rdx
.L4855:
	movq	%rcx, 192(%rbp)
	movq	%rdx, 184(%rbp)
	movq	%rdx, %rax
.L4852:
	cmpl	$128, %r12d
	je	.L4846
	cmpl	$127, %r12d
	jg	.L5187
	incl	%r12d
	cmpl	%r12d, %r15d
	jge	.L4853
.L4864:
	movq	%rbx, %rcx
	call	free
	leaq	.LC110(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L5696:
	xorl	%eax, %eax
	jmp	.L5467
.L5765:
	leaq	1(%rax), %rdx
	movq	%rdx, 184(%rbp)
	movzbl	(%rax), %r12d
	movq	%rdx, %rax
	jmp	.L4852
.L5747:
	call	_ZL20stbi__convert_formatPhiijj
	movq	%rax, %rbx
	jmp	.L4763
.L5759:
	leaq	.LC48(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L5758:
	leaq	.LC147(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L5757:
	leaq	.LC146(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L5756:
	leaq	.LC145(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L5187:
	movl	$257, %r14d
	subl	%r12d, %r14d
	cmpl	%r14d, %r15d
	jl	.L4864
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	addl	%r14d, 88(%rsp)
	leal	-1(%r14), %edx
	leaq	4(%rsi,%rdx,4), %rcx
	movq	%rsi, %rdx
.L4865:
	movb	%al, (%rdx)
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.L4865
	movl	$256, %eax
	subl	%r12d, %eax
	cltq
	leaq	4(%rsi,%rax,4), %rsi
	jmp	.L4846
.L4854:
	movq	80(%rsp), %rcx
	cltq
	leaq	57(%rbp), %rdx
	movzbl	56(%rbp), %r12d
	addq	%rax, %rcx
	jmp	.L4855
.L5751:
	andl	$16, %edi
	movl	48(%rsp), %r14d
	cmpl	$1, %edi
	movq	568(%rsp), %rdi
	sbbl	%eax, %eax
	addl	$4, %eax
	testl	%r14d, %r14d
	movl	%eax, (%rdi)
	jle	.L5179
	leal	0(,%rbx,4), %eax
	movl	$0, 80(%rsp)
	cltq
	movq	%rax, 112(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	leal	-1(%r13), %eax
	leaq	5(%rax,%rax,2), %rax
	addq	88(%rsp), %rax
	movq	%rax, 104(%rsp)
	leal	-1(%rbx), %eax
	leaq	4(,%rax,4), %rax
	movq	%rax, 128(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	147(%rsp), %rax
	movq	%rax, 96(%rsp)
.L5067:
	movq	88(%rsp), %rax
	movq	%rbp, %r14
	leaq	2(%rax), %r13
	movq	128(%rsp), %rax
	addq	56(%rsp), %rax
	movq	%rax, 120(%rsp)
.L4942:
	movzbl	-1(%r13), %eax
	cmpb	$1, %al
	je	.L4937
	jb	.L4938
	cmpb	$2, %al
	jne	.L5628
	testl	%ebx, %ebx
	.p2align 4,,7
	jle	.L4943
	movq	56(%rsp), %rsi
	movl	%ebx, %edi
.L5066:
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpq	$0, 16(%r14)
	movzbl	%al, %r15d
	movq	%r15, %r12
	je	.L5007
	movq	40(%r14), %rcx
	call	*32(%r14)
	testl	%eax, %eax
	je	.L5006
	movl	48(%r14), %ebp
	testl	%ebp, %ebp
	je	.L5695
.L5007:
	movq	192(%r14), %rax
	cmpq	%rax, 184(%r14)
	jnb	.L5695
.L5006:
	cmpl	$127, %r15d
	jle	.L5008
	leal	-127(%r15), %ebp
	addl	$-128, %r15d
	jne	.L5010
	movq	%r14, %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movl	%eax, %ebp
.L5010:
	cmpl	%edi, %ebp
	jg	.L5695
	movzbl	0(%r13), %edx
	movq	72(%rsp), %r8
	movq	%r14, %rcx
	movl	%edx, %r12d
	call	_ZL13stbi__readvalP13stbi__contextiPh
	testq	%rax, %rax
	je	.L4927
	testl	%ebp, %ebp
	jle	.L5063
	movl	%r12d, %eax
	movl	%r12d, %edx
	movl	%r12d, %ecx
	andl	$64, %eax
	andl	$32, %edx
	andl	$16, %ecx
	testb	%r12b, %r12b
	js	.L5014
	testb	%cl, %cl
	jne	.L5015
	testb	%dl, %dl
	jne	.L5016
	testb	%al, %al
	.p2align 4,,5
	je	.L5694
	cmpl	$16, %ebp
	.p2align 4,,4
	jle	.L5235
	leal	-17(%rbp), %eax
	xorl	%edx, %edx
	andl	$-16, %eax
	leal	16(%rax), %ecx
	movq	%rsi, %rax
.L5020:
	movzbl	145(%rsp), %r8d
	addl	$16, %edx
	prefetcht0	137(%rax)
	addq	$64, %rax
	movb	%r8b, -63(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -59(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -55(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -51(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -47(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -43(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -39(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -35(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -31(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -27(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -23(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -19(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -15(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -11(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -7(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -3(%rax)
	cmpl	%ecx, %edx
	jne	.L5020
.L5022:
	movzbl	145(%rsp), %ecx
	incl	%edx
	addq	$4, %rax
	movb	%cl, -3(%rax)
	cmpl	%edx, %ebp
	jg	.L5022
.L5694:
	leal	-1(%rbp), %eax
.L5061:
	leaq	4(%rsi,%rax,4), %rax
.L5018:
	movq	%rax, %rsi
.L5063:
	subl	%ebp, %edi
	testl	%edi, %edi
	jg	.L5066
.L4943:
	addq	$3, %r13
	cmpq	104(%rsp), %r13
	jne	.L4942
	incl	80(%rsp)
	movq	112(%rsp), %rsi
	movq	%r14, %rbp
	movl	80(%rsp), %eax
	addq	%rsi, 56(%rsp)
	cmpl	%eax, 48(%rsp)
	jne	.L5067
	jmp	.L5179
.L5008:
	leal	1(%r15), %ebp
	cmpl	%edi, %ebp
	jg	.L5695
	movzbl	0(%r13), %r15d
	leaq	4(%rsi,%r12,4), %r12
.L5065:
	movq	%rsi, %r8
	movl	%r15d, %edx
	movq	%r14, %rcx
	call	_ZL13stbi__readvalP13stbi__contextiPh
	testq	%rax, %rax
	je	.L4927
	addq	$4, %rsi
	cmpq	%r12, %rsi
	jne	.L5065
	jmp	.L5063
.L5235:
	movq	%rsi, %rax
	xorl	%edx, %edx
	jmp	.L5022
.L5015:
	testb	%dl, %dl
	.p2align 4,,4
	jne	.L5029
	testb	%al, %al
	.p2align 4,,2
	jne	.L5030
	cmpl	$16, %ebp
	.p2align 4,,4
	jle	.L5237
	leal	-17(%rbp), %eax
	xorl	%edx, %edx
	andl	$-16, %eax
	leal	16(%rax), %ecx
	movq	%rsi, %rax
.L5032:
	movzbl	147(%rsp), %r8d
	addl	$16, %edx
	prefetcht0	139(%rax)
	addq	$64, %rax
	movb	%r8b, -61(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -57(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -53(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -49(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -45(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -41(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -37(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -33(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -29(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -25(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -21(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -17(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -13(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -9(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -5(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -1(%rax)
	cmpl	%ecx, %edx
	jne	.L5032
.L5034:
	movzbl	147(%rsp), %ecx
	incl	%edx
	addq	$4, %rax
	movb	%cl, -1(%rax)
	cmpl	%edx, %ebp
	jg	.L5034
	jmp	.L5694
.L5014:
	testb	%cl, %cl
	jne	.L5039
	testb	%dl, %dl
	.p2align 4,,7
	jne	.L5040
	testb	%al, %al
	.p2align 4,,5
	jne	.L5041
	cmpl	$16, %ebp
	.p2align 4,,4
	jle	.L5238
	leal	-17(%rbp), %eax
	xorl	%edx, %edx
	andl	$-16, %eax
	leal	16(%rax), %ecx
	movq	%rsi, %rax
.L5043:
	movzbl	144(%rsp), %r8d
	addl	$16, %edx
	prefetcht0	136(%rax)
	addq	$64, %rax
	movb	%r8b, -64(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -60(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -56(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -52(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -48(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -44(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -40(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -36(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -32(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -28(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -24(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -20(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -16(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -12(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -8(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -4(%rax)
	cmpl	%ecx, %edx
	jne	.L5043
.L5045:
	movzbl	144(%rsp), %ecx
	incl	%edx
	addq	$4, %rax
	movb	%cl, -4(%rax)
	cmpl	%edx, %ebp
	jg	.L5045
	jmp	.L5694
.L5237:
	movq	%rsi, %rax
	xorl	%edx, %edx
	jmp	.L5034
.L5238:
	movq	%rsi, %rax
	xorl	%edx, %edx
	jmp	.L5045
.L5041:
	leal	-1(%rbp), %eax
	leaq	4(%rsi,%rax,4), %rax
.L5046:
	movzbl	144(%rsp), %edx
	addq	$4, %rsi
	movb	%dl, -4(%rsi)
	movzbl	145(%rsp), %edx
	movb	%dl, -3(%rsi)
	cmpq	%rax, %rsi
	jne	.L5046
	jmp	.L5018
.L5040:
	testb	%al, %al
	leal	-1(%rbp), %eax
	leaq	4(%rsi,%rax,4), %rax
	jne	.L5049
.L5048:
	movzbl	144(%rsp), %edx
	addq	$4, %rsi
	movb	%dl, -4(%rsi)
	movzbl	146(%rsp), %edx
	movb	%dl, -2(%rsi)
	cmpq	%rax, %rsi
	jne	.L5048
	jmp	.L5018
.L5039:
	testb	%dl, %dl
	jne	.L5050
	testb	%al, %al
	leal	-1(%rbp), %eax
	leaq	4(%rsi,%rax,4), %rax
	jne	.L5053
.L5052:
	movzbl	144(%rsp), %edx
	addq	$4, %rsi
	movb	%dl, -4(%rsi)
	movzbl	147(%rsp), %edx
	movb	%dl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L5052
	jmp	.L5018
.L5049:
	movzbl	144(%rsp), %edx
	addq	$4, %rsi
	movb	%dl, -4(%rsi)
	movzbl	145(%rsp), %edx
	movb	%dl, -3(%rsi)
	movzbl	146(%rsp), %edx
	movb	%dl, -2(%rsi)
	cmpq	%rax, %rsi
	jne	.L5049
	jmp	.L5018
.L5053:
	movzbl	144(%rsp), %edx
	addq	$4, %rsi
	movb	%dl, -4(%rsi)
	movzbl	145(%rsp), %edx
	movb	%dl, -3(%rsi)
	movzbl	147(%rsp), %edx
	movb	%dl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L5053
	jmp	.L5018
.L5050:
	testb	%al, %al
	jne	.L5054
	leal	-1(%rbp), %eax
	leaq	4(%rsi,%rax,4), %rax
.L5055:
	movzbl	144(%rsp), %edx
	addq	$4, %rsi
	movb	%dl, -4(%rsi)
	movzbl	146(%rsp), %edx
	movb	%dl, -2(%rsi)
	movzbl	147(%rsp), %edx
	movb	%dl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L5055
	jmp	.L5018
.L5030:
	leal	-1(%rbp), %eax
	leaq	4(%rsi,%rax,4), %rax
.L5035:
	movzbl	145(%rsp), %edx
	addq	$4, %rsi
	movb	%dl, -3(%rsi)
	movzbl	147(%rsp), %edx
	movb	%dl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L5035
	jmp	.L5018
.L5029:
	testb	%al, %al
	leal	-1(%rbp), %eax
	leaq	4(%rsi,%rax,4), %rax
	jne	.L5038
.L5037:
	movzbl	146(%rsp), %edx
	addq	$4, %rsi
	movb	%dl, -2(%rsi)
	movzbl	147(%rsp), %edx
	movb	%dl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L5037
	jmp	.L5018
.L5054:
	movslq	%ebp, %rax
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rax, 72(%rsp)
	setnb	%dl
	cmpq	96(%rsp), %rsi
	setnb	%al
	orb	%al, %dl
	je	.L5056
	cmpl	$15, %ebp
	jbe	.L5056
	movzbl	144(%rsp), %eax
	leal	-16(%rbp), %ecx
	xorl	%r8d, %r8d
	shrl	$4, %ecx
	incl	%ecx
	movl	%eax, 136(%rsp)
	movzbl	145(%rsp), %eax
	movl	%ecx, %edx
	movd	136(%rsp), %xmm0
	sall	$4, %edx
	punpcklbw	%xmm0, %xmm0
	movl	%eax, 136(%rsp)
	movzbl	146(%rsp), %eax
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	movdqa	%xmm0, %xmm3
	movd	136(%rsp), %xmm0
	movl	%eax, 136(%rsp)
	movzbl	147(%rsp), %eax
	movd	136(%rsp), %xmm1
	punpcklbw	%xmm0, %xmm0
	movdqa	%xmm3, %xmm4
	punpcklbw	%xmm1, %xmm1
	movl	%eax, 136(%rsp)
	punpcklwd	%xmm0, %xmm0
	leaq	752(%rsi), %rax
	movdqa	%xmm1, %xmm2
	pshufd	$0, %xmm0, %xmm0
	punpcklwd	%xmm1, %xmm2
	movd	136(%rsp), %xmm1
	punpcklbw	%xmm1, %xmm1
	pshufd	$0, %xmm2, %xmm2
	punpcklwd	%xmm1, %xmm1
	punpckhbw	%xmm2, %xmm3
	punpcklbw	%xmm2, %xmm4
	pshufd	$0, %xmm1, %xmm1
	movdqa	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	movdqa	%xmm4, %xmm5
	punpcklbw	%xmm1, %xmm3
	punpckhbw	%xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	punpcklbw	%xmm3, %xmm5
	punpckhbw	%xmm3, %xmm4
	punpcklbw	%xmm0, %xmm1
	punpckhbw	%xmm0, %xmm2
.L5058:
	incl	%r8d
	prefetcht0	(%rax)
	addq	$64, %rax
	movups	%xmm5, -816(%rax)
	movups	%xmm4, -800(%rax)
	movups	%xmm1, -784(%rax)
	movups	%xmm2, -768(%rax)
	cmpl	%r8d, %ecx
	ja	.L5058
	movl	%edx, %eax
	cmpl	%ebp, %edx
	leaq	(%rsi,%rax,4), %rax
	je	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, (%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 1(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 2(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 3(%rax)
	leal	1(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 4(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 5(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 6(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 7(%rax)
	leal	2(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 8(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 9(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 10(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 11(%rax)
	leal	3(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 12(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 13(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 14(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 15(%rax)
	leal	4(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 16(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 17(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 18(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 19(%rax)
	leal	5(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 20(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 21(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 22(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 23(%rax)
	leal	6(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 24(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 25(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 26(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 27(%rax)
	leal	7(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 28(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 29(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 30(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 31(%rax)
	leal	8(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 32(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 33(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 34(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 35(%rax)
	leal	9(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 36(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 37(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 38(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 39(%rax)
	leal	10(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 40(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 41(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 42(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 43(%rax)
	leal	11(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 44(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 45(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 46(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 47(%rax)
	leal	12(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	movb	%cl, 48(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 49(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 50(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 51(%rax)
	leal	13(%rdx), %ecx
	cmpl	%ecx, %ebp
	jle	.L5694
	movzbl	144(%rsp), %ecx
	addl	$14, %edx
	cmpl	%edx, %ebp
	movb	%cl, 52(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 53(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 54(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 55(%rax)
	jle	.L5694
	movzbl	144(%rsp), %edx
	movb	%dl, 56(%rax)
	movzbl	145(%rsp), %edx
	movb	%dl, 57(%rax)
	movzbl	146(%rsp), %edx
	movb	%dl, 58(%rax)
	movzbl	147(%rsp), %edx
	movb	%dl, 59(%rax)
	leal	-1(%rbp), %eax
	jmp	.L5061
.L5038:
	movzbl	145(%rsp), %edx
	addq	$4, %rsi
	movb	%dl, -3(%rsi)
	movzbl	146(%rsp), %edx
	movb	%dl, -2(%rsi)
	movzbl	147(%rsp), %edx
	movb	%dl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L5038
	jmp	.L5018
.L5056:
	leal	-1(%rbp), %eax
	movl	%eax, %edx
	leaq	4(%rsi,%rdx,4), %rcx
	movq	%rsi, %rdx
.L5062:
	movzbl	144(%rsp), %r8d
	addq	$4, %rdx
	movb	%r8b, -4(%rdx)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -3(%rdx)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -2(%rdx)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -1(%rdx)
	cmpq	%rcx, %rdx
	jne	.L5062
	jmp	.L5061
.L5016:
	testb	%al, %al
	jne	.L5023
	cmpl	$16, %ebp
	.p2align 4,,6
	jle	.L5236
	leal	-17(%rbp), %eax
	xorl	%edx, %edx
	andl	$-16, %eax
	leal	16(%rax), %ecx
	movq	%rsi, %rax
.L5025:
	movzbl	146(%rsp), %r8d
	addl	$16, %edx
	prefetcht0	138(%rax)
	addq	$64, %rax
	movb	%r8b, -62(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -58(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -54(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -50(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -46(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -42(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -38(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -34(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -30(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -26(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -22(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -18(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -14(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -10(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -6(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -2(%rax)
	cmpl	%ecx, %edx
	jne	.L5025
.L5027:
	movzbl	146(%rsp), %ecx
	incl	%edx
	addq	$4, %rax
	movb	%cl, -2(%rax)
	cmpl	%edx, %ebp
	jg	.L5027
	jmp	.L5694
.L5236:
	movq	%rsi, %rax
	xorl	%edx, %edx
	jmp	.L5027
.L5023:
	leal	-1(%rbp), %eax
	leaq	4(%rsi,%rax,4), %rax
.L5028:
	movzbl	145(%rsp), %edx
	addq	$4, %rsi
	movb	%dl, -3(%rsi)
	movzbl	146(%rsp), %edx
	movb	%dl, -2(%rsi)
	cmpq	%rax, %rsi
	jne	.L5028
	jmp	.L5018
.L4937:
	testl	%ebx, %ebx
	jle	.L4943
	movq	56(%rsp), %rsi
	movl	%ebx, %edi
.L5004:
	movq	%r14, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpq	$0, 16(%r14)
	movl	%eax, %ebp
	je	.L4951
	movq	40(%r14), %rcx
	call	*32(%r14)
	testl	%eax, %eax
	je	.L4950
	movl	48(%r14), %r12d
	testl	%r12d, %r12d
	je	.L5695
.L4951:
	movq	192(%r14), %rax
	cmpq	%rax, 184(%r14)
	jnb	.L5695
.L4950:
	movzbl	0(%r13), %edx
	movq	72(%rsp), %r8
	movzbl	%bpl, %eax
	cmpl	%edi, %eax
	movq	%r14, %rcx
	cmovg	%edi, %ebp
	movl	%edx, %r12d
	call	_ZL13stbi__readvalP13stbi__contextiPh
	testq	%rax, %rax
	je	.L4927
	movzbl	%bpl, %edx
	testl	%edx, %edx
	je	.L4954
	movl	%r12d, %eax
	movl	%r12d, %ecx
	movl	%r12d, %r8d
	andl	$64, %eax
	andl	$32, %ecx
	andl	$16, %r8d
	testb	%r12b, %r12b
	js	.L4955
	testb	%r8b, %r8b
	jne	.L4956
	testb	%cl, %cl
	jne	.L4957
	testb	%al, %al
	.p2align 4,,4
	je	.L5002
	xorl	%ecx, %ecx
	cmpl	$16, %edx
	leal	-15(%rdx), %r9d
	movq	%rsi, %rax
	jle	.L4963
.L4961:
	movzbl	145(%rsp), %r8d
	prefetcht0	137(%rax)
	addq	$64, %rax
	movb	%r8b, -63(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -59(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -55(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -51(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -47(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -43(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -39(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -35(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -31(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -27(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -23(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -19(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -15(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -11(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -7(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -3(%rax)
	movl	%ecx, %r8d
	addl	$16, %ecx
	addl	$17, %r8d
	cmpl	%r9d, %r8d
	jl	.L4961
.L4963:
	movzbl	145(%rsp), %r8d
	incl	%ecx
	addq	$4, %rax
	movb	%r8b, -3(%rax)
	cmpl	%ecx, %edx
	jg	.L4963
.L5002:
	leal	-1(%rdx), %eax
	leaq	4(%rsi,%rax,4), %rax
.L4959:
	movq	%rax, %rsi
.L4954:
	subl	%edx, %edi
	testl	%edi, %edi
	jg	.L5004
	jmp	.L4943
.L4957:
	testb	%al, %al
	jne	.L4964
	xorl	%ecx, %ecx
	cmpl	$16, %edx
	leal	-15(%rdx), %r9d
	movq	%rsi, %rax
	jle	.L4968
.L4966:
	movzbl	146(%rsp), %r8d
	prefetcht0	138(%rax)
	addq	$64, %rax
	movb	%r8b, -62(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -58(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -54(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -50(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -46(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -42(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -38(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -34(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -30(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -26(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -22(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -18(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -14(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -10(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -6(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -2(%rax)
	movl	%ecx, %r8d
	addl	$16, %ecx
	addl	$17, %r8d
	cmpl	%r9d, %r8d
	jl	.L4966
.L4968:
	movzbl	146(%rsp), %r8d
	incl	%ecx
	addq	$4, %rax
	movb	%r8b, -2(%rax)
	cmpl	%ecx, %edx
	jg	.L4968
	jmp	.L5002
.L4964:
	leal	-1(%rdx), %ecx
	leaq	1(%rsi), %rax
	leaq	5(%rsi,%rcx,4), %r8
.L4969:
	movzbl	145(%rsp), %r9d
	addq	$4, %rax
	movb	%r9b, -4(%rax)
	movzbl	146(%rsp), %r9d
	movb	%r9b, -3(%rax)
	cmpq	%r8, %rax
	jne	.L4969
.L5693:
	leaq	4(%rsi,%rcx,4), %rax
	jmp	.L4959
.L4955:
	testb	%r8b, %r8b
	jne	.L4980
	testb	%cl, %cl
	jne	.L4981
	testb	%al, %al
	.p2align 4,,4
	jne	.L4982
	xorl	%ecx, %ecx
	cmpl	$16, %edx
	leal	-15(%rdx), %r9d
	movq	%rsi, %rax
	jle	.L4986
.L4984:
	movzbl	144(%rsp), %r8d
	prefetcht0	136(%rax)
	addq	$64, %rax
	movb	%r8b, -64(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -60(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -56(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -52(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -48(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -44(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -40(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -36(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -32(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -28(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -24(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -20(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -16(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -12(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -8(%rax)
	movzbl	144(%rsp), %r8d
	movb	%r8b, -4(%rax)
	movl	%ecx, %r8d
	addl	$16, %ecx
	addl	$17, %r8d
	cmpl	%r9d, %r8d
	jl	.L4984
.L4986:
	movzbl	144(%rsp), %r8d
	incl	%ecx
	addq	$4, %rax
	movb	%r8b, -4(%rax)
	cmpl	%ecx, %edx
	jg	.L4986
	jmp	.L5002
.L4982:
	leal	-1(%rdx), %eax
	leaq	4(%rsi,%rax,4), %rax
.L4987:
	movzbl	144(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	145(%rsp), %ecx
	movb	%cl, -3(%rsi)
	cmpq	%rax, %rsi
	jne	.L4987
	jmp	.L4959
.L4981:
	testb	%al, %al
	leal	-1(%rdx), %eax
	leaq	4(%rsi,%rax,4), %rax
	jne	.L4990
.L4989:
	movzbl	144(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	146(%rsp), %ecx
	movb	%cl, -2(%rsi)
	cmpq	%rax, %rsi
	jne	.L4989
	jmp	.L4959
	.p2align 4,,7
.L4990:
	movzbl	144(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	145(%rsp), %ecx
	movb	%cl, -3(%rsi)
	movzbl	146(%rsp), %ecx
	movb	%cl, -2(%rsi)
	cmpq	%rax, %rsi
	jne	.L4990
	jmp	.L4959
.L4980:
	testb	%cl, %cl
	jne	.L4991
	testb	%al, %al
	leal	-1(%rdx), %eax
	leaq	4(%rsi,%rax,4), %rax
	jne	.L4994
.L4993:
	movzbl	144(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	147(%rsp), %ecx
	movb	%cl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L4993
	jmp	.L4959
	.p2align 4,,7
.L4994:
	movzbl	144(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	145(%rsp), %ecx
	movb	%cl, -3(%rsi)
	movzbl	147(%rsp), %ecx
	movb	%cl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L4994
	jmp	.L4959
.L4991:
	testb	%al, %al
	jne	.L4995
	leal	-1(%rdx), %eax
	leaq	4(%rsi,%rax,4), %rax
.L4996:
	movzbl	144(%rsp), %ecx
	addq	$4, %rsi
	movb	%cl, -4(%rsi)
	movzbl	146(%rsp), %ecx
	movb	%cl, -2(%rsi)
	movzbl	147(%rsp), %ecx
	movb	%cl, -1(%rsi)
	cmpq	%rax, %rsi
	jne	.L4996
	jmp	.L4959
.L4956:
	testb	%cl, %cl
	jne	.L4970
	testb	%al, %al
	.p2align 4,,7
	jne	.L4971
	xorl	%ecx, %ecx
	cmpl	$16, %edx
	leal	-15(%rdx), %r9d
	movq	%rsi, %rax
	jle	.L4975
.L4973:
	movzbl	147(%rsp), %r8d
	prefetcht0	139(%rax)
	addq	$64, %rax
	movb	%r8b, -61(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -57(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -53(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -49(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -45(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -41(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -37(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -33(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -29(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -25(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -21(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -17(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -13(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -9(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -5(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -1(%rax)
	movl	%ecx, %r8d
	addl	$16, %ecx
	addl	$17, %r8d
	cmpl	%r9d, %r8d
	jl	.L4973
.L4975:
	movzbl	147(%rsp), %r8d
	incl	%ecx
	addq	$4, %rax
	movb	%r8b, -1(%rax)
	cmpl	%ecx, %edx
	jg	.L4975
	jmp	.L5002
.L4971:
	leal	-1(%rdx), %ecx
	leaq	1(%rsi), %rax
	leaq	5(%rsi,%rcx,4), %r8
.L4976:
	movzbl	145(%rsp), %r9d
	addq	$4, %rax
	movb	%r9b, -4(%rax)
	movzbl	147(%rsp), %r9d
	movb	%r9b, -2(%rax)
	cmpq	%r8, %rax
	jne	.L4976
	jmp	.L5693
.L4970:
	testb	%al, %al
	jne	.L4977
	leal	-1(%rdx), %ecx
	leaq	2(%rsi), %rax
	leaq	6(%rsi,%rcx,4), %r8
.L4978:
	movzbl	146(%rsp), %r9d
	addq	$4, %rax
	movb	%r9b, -4(%rax)
	movzbl	147(%rsp), %r9d
	movb	%r9b, -3(%rax)
	cmpq	%r8, %rax
	jne	.L4978
	jmp	.L5693
.L4995:
	movzbl	%bpl, %eax
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rax, 72(%rsp)
	setnb	%cl
	cmpq	96(%rsp), %rsi
	setnb	%al
	orb	%al, %cl
	je	.L4997
	cmpb	$15, %bpl
	jbe	.L4997
	movzbl	144(%rsp), %eax
	leal	-16(%rdx), %r8d
	xorl	%r9d, %r9d
	shrl	$4, %r8d
	incl	%r8d
	movl	%eax, 136(%rsp)
	movzbl	145(%rsp), %eax
	movl	%r8d, %ecx
	movd	136(%rsp), %xmm0
	sall	$4, %ecx
	punpcklbw	%xmm0, %xmm0
	movl	%eax, 136(%rsp)
	movzbl	146(%rsp), %eax
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	movdqa	%xmm0, %xmm3
	movd	136(%rsp), %xmm0
	movl	%eax, 136(%rsp)
	movzbl	147(%rsp), %eax
	movd	136(%rsp), %xmm1
	punpcklbw	%xmm0, %xmm0
	movdqa	%xmm3, %xmm4
	punpcklbw	%xmm1, %xmm1
	movl	%eax, 136(%rsp)
	punpcklwd	%xmm0, %xmm0
	leaq	752(%rsi), %rax
	movdqa	%xmm1, %xmm2
	pshufd	$0, %xmm0, %xmm0
	punpcklwd	%xmm1, %xmm2
	movd	136(%rsp), %xmm1
	punpcklbw	%xmm1, %xmm1
	pshufd	$0, %xmm2, %xmm2
	punpcklwd	%xmm1, %xmm1
	punpckhbw	%xmm2, %xmm3
	punpcklbw	%xmm2, %xmm4
	pshufd	$0, %xmm1, %xmm1
	movdqa	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	movdqa	%xmm4, %xmm5
	punpcklbw	%xmm1, %xmm3
	punpckhbw	%xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	punpcklbw	%xmm3, %xmm5
	punpckhbw	%xmm3, %xmm4
	punpcklbw	%xmm0, %xmm1
	punpckhbw	%xmm0, %xmm2
.L4999:
	incl	%r9d
	prefetcht0	(%rax)
	addq	$64, %rax
	movups	%xmm5, -816(%rax)
	movups	%xmm4, -800(%rax)
	movups	%xmm1, -784(%rax)
	movups	%xmm2, -768(%rax)
	cmpl	%r9d, %r8d
	ja	.L4999
	movl	%ecx, %eax
	cmpl	%edx, %ecx
	leaq	(%rsi,%rax,4), %rax
	je	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, (%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 1(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 2(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 3(%rax)
	leal	1(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 4(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 5(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 6(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 7(%rax)
	leal	2(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 8(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 9(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 10(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 11(%rax)
	leal	3(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 12(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 13(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 14(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 15(%rax)
	leal	4(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 16(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 17(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 18(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 19(%rax)
	leal	5(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 20(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 21(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 22(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 23(%rax)
	leal	6(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 24(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 25(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 26(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 27(%rax)
	leal	7(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 28(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 29(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 30(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 31(%rax)
	leal	8(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 32(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 33(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 34(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 35(%rax)
	leal	9(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 36(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 37(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 38(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 39(%rax)
	leal	10(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 40(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 41(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 42(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 43(%rax)
	leal	11(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 44(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 45(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 46(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 47(%rax)
	leal	12(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	movb	%r8b, 48(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 49(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 50(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 51(%rax)
	leal	13(%rcx), %r8d
	cmpl	%r8d, %edx
	jle	.L5002
	movzbl	144(%rsp), %r8d
	addl	$14, %ecx
	cmpl	%ecx, %edx
	movb	%r8b, 52(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, 53(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, 54(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, 55(%rax)
	jle	.L5002
	movzbl	144(%rsp), %ecx
	movb	%cl, 56(%rax)
	movzbl	145(%rsp), %ecx
	movb	%cl, 57(%rax)
	movzbl	146(%rsp), %ecx
	movb	%cl, 58(%rax)
	movzbl	147(%rsp), %ecx
	movb	%cl, 59(%rax)
	jmp	.L5002
.L4977:
	leal	-1(%rdx), %ecx
	leaq	1(%rsi), %rax
	leaq	5(%rsi,%rcx,4), %r8
.L4979:
	movzbl	145(%rsp), %r9d
	addq	$4, %rax
	movb	%r9b, -4(%rax)
	movzbl	146(%rsp), %r9d
	movb	%r9b, -3(%rax)
	movzbl	147(%rsp), %r9d
	movb	%r9b, -2(%rax)
	cmpq	%r8, %rax
	jne	.L4979
	jmp	.L5693
.L4997:
	leal	-1(%rdx), %eax
	leaq	4(%rsi,%rax,4), %rcx
	movq	%rsi, %rax
.L5003:
	movzbl	144(%rsp), %r8d
	addq	$4, %rax
	movb	%r8b, -4(%rax)
	movzbl	145(%rsp), %r8d
	movb	%r8b, -3(%rax)
	movzbl	146(%rsp), %r8d
	movb	%r8b, -2(%rax)
	movzbl	147(%rsp), %r8d
	movb	%r8b, -1(%rax)
	cmpq	%rcx, %rax
	jne	.L5003
	jmp	.L5002
.L5628:
	leaq	.LC150(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4927
.L4938:
	testl	%ebx, %ebx
	jle	.L4943
	movzbl	0(%r13), %edi
	movq	56(%rsp), %rsi
.L4947:
	movq	%rsi, %r8
	movl	%edi, %edx
	movq	%r14, %rcx
	call	_ZL13stbi__readvalP13stbi__contextiPh
	testq	%rax, %rax
	je	.L4927
	addq	$4, %rsi
	cmpq	120(%rsp), %rsi
	jne	.L4947
	jmp	.L4943
.L5755:
	movq	%rdx, 184(%rbp)
	movl	$6, %edx
	subl	%ecx, %edx
	movq	40(%rbp), %rcx
	call	*24(%rbp)
	jmp	.L4835
.L4833:
	movq	184(%rbp), %rax
	jmp	.L4834
.L5754:
	leaq	.LC144(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L5753:
	leaq	.LC143(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L5748:
	subl	$53, %eax
	cmpb	$1, %al
	ja	.L5189
	leaq	8(%rbp), %r9
	leaq	4(%rbp), %r8
	movq	%rbp, %rdx
	movq	%rbp, %rcx
	call	_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_
	testl	%eax, %eax
	je	.L5696
	movl	0(%rbp), %eax
	movq	552(%rsp), %rdi
	cmpq	$0, 568(%rsp)
	movl	%eax, (%rdi)
	movq	560(%rsp), %rdi
	movl	4(%rbp), %eax
	movl	%eax, (%rdi)
	je	.L5072
	movl	8(%rbp), %eax
	movq	568(%rsp), %rdi
	movl	%eax, (%rdi)
.L5072:
	movl	4(%rbp), %edi
	movl	0(%rbp), %esi
	xorl	%r9d, %r9d
	movl	8(%rbp), %ebx
	movl	%edi, %r8d
	movl	%esi, %edx
	movl	%ebx, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L5699
	xorl	%r9d, %r9d
	movl	%ebx, %ecx
	movl	%edi, %r8d
	movl	%esi, %edx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5698
	movl	0(%rbp), %r8d
	movq	%rax, %rdx
	movq	%rbp, %rcx
	imull	4(%rbp), %r8d
	imull	8(%rbp), %r8d
	call	_ZL10stbi__getnP13stbi__contextPhi
	movq	%rbx, %rax
	movl	576(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L5467
	movl	8(%rbp), %edx
	cmpl	%edx, 576(%rsp)
	je	.L5467
	movl	4(%rbp), %ecx
	movl	576(%rsp), %r8d
	movl	%ecx, 32(%rsp)
	movl	0(%rbp), %r9d
	movq	%rax, %rcx
	call	_ZL20stbi__convert_formatPhiijj
	jmp	.L5467
	.p2align 4,,7
.L4637:
	xorl	%edx, %edx
	movq	%r15, %rcx
	call	_ZL24stbi__decode_jpeg_headerP10stbi__jpegi.part.23
	testl	%eax, %eax
	jne	.L5689
	jmp	.L4639
	.p2align 4,,7
.L4675:
	movq	%r15, %rcx
	.p2align 4,,6
	call	_ZL20stbi__process_markerP10stbi__jpegi
	testl	%eax, %eax
	.p2align 4,,3
	je	.L4639
.L5689:
	movzbl	18472(%r15), %eax
.L4674:
	cmpb	$-1, %al
	je	.L4640
.L4666:
	movzbl	%al, %edx
	movb	$-1, 18472(%r15)
	cmpl	$217, %edx
	je	.L5768
.L5605:
	cmpl	$218, %edx
	je	.L5769
	cmpl	$220, %edx
	jne	.L4675
	movq	(%r15), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	(%r15), %rcx
	movl	%eax, %ebx
	call	_ZL13stbi__get16beP13stbi__context
	cmpl	$4, %ebx
	je	.L4676
	leaq	.LC135(%rip), %rdi
	movq	%rdi, _ZL22stbi__g_failure_reason(%rip)
.L4676:
	movq	(%r15), %rdx
	cmpl	4(%rdx), %eax
	je	.L5689
	leaq	.LC136(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movzbl	18472(%r15), %eax
	cmpb	$-1, %al
	jne	.L4666
.L4640:
	movq	%r15, %rcx
	call	_ZL16stbi__get_markerP10stbi__jpeg.isra.1.part.2
	movzbl	%al, %edx
	cmpl	$217, %edx
	jne	.L5605
.L5768:
	movl	18480(%r15), %r12d
	testl	%r12d, %r12d
	jne	.L5770
	movq	(%r15), %rbx
	movl	8(%rbx), %esi
.L4698:
	movl	576(%rsp), %edx
	testl	%edx, %edx
	jne	.L5690
	cmpl	$2, %esi
	jle	.L4700
	cmpl	$3, %esi
	movl	$3, 80(%rsp)
	movl	$3, 576(%rsp)
	movl	%esi, 48(%rsp)
	je	.L5771
.L4701:
	testl	%esi, %esi
	movb	$0, 72(%rsp)
	jle	.L5772
.L4703:
	movl	(%rbx), %r14d
	xorl	%r12d, %r12d
	leaq	18152(%r15), %rbp
	leaq	192(%rsp), %rdi
	leal	3(%r14), %eax
	leal	-1(%r14), %r13d
	movq	%rax, 56(%rsp)
	movq	%rbx, %rax
	movq	%r15, %rbx
	movl	%r12d, %r15d
	movq	%rax, %r12
	jmp	.L4712
	.p2align 4,,7
.L4707:
	movabsq	$8589934593, %rcx
	cmpq	%rcx, %rax
	je	.L5773
	movabsq	$4294967298, %rdx
	cmpq	%rdx, %rax
	je	.L5774
	movabsq	$8589934594, %rdx
	cmpq	%rdx, %rax
	je	.L5775
	leaq	_ZL26stbi__resample_row_genericPhS_S_ii(%rip), %rax
	movq	%rax, (%rdi)
.L4708:
	incl	%r15d
	addq	$96, %rbp
	addq	$48, %rdi
	cmpl	48(%rsp), %r15d
	jge	.L5776
.L4712:
	movq	56(%rsp), %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, 0(%rbp)
	je	.L5777
	movl	18056(%rbx), %eax
	movl	$0, 40(%rdi)
	cltd
	idivl	-68(%rbp)
	movl	%eax, %ecx
	movl	%eax, 24(%rdi)
	movl	18060(%rbx), %eax
	cltd
	idivl	-64(%rbp)
	xorl	%edx, %edx
	movl	%eax, 28(%rdi)
	sarl	%eax
	movl	%eax, 36(%rdi)
	leal	0(%r13,%rcx), %eax
	divl	%ecx
	movabsq	$4294967297, %rcx
	movl	%eax, 32(%rdi)
	movq	-24(%rbp), %rax
	movq	%rax, 16(%rdi)
	movq	%rax, 8(%rdi)
	movslq	%r15d, %rax
	movq	%rax, %rdx
	salq	$6, %rax
	salq	$4, %rdx
	subq	%rdx, %rax
	movq	216(%rsp,%rax), %rax
	cmpq	%rcx, %rax
	jne	.L4707
	leaq	_ZL14resample_row_1PhS_S_ii(%rip), %rax
	movq	%rax, (%rdi)
	jmp	.L4708
.L5769:
	movq	(%r15), %rcx
	call	_ZL13stbi__get16beP13stbi__context
	movq	(%r15), %rcx
	movl	%eax, %ebx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	movq	(%r15), %rcx
	leal	-1(%rax), %edx
	movl	%eax, 18516(%r15)
	cmpl	$3, %edx
	ja	.L4647
	movl	8(%rcx), %edx
	cmpl	%edx, %eax
	jg	.L4647
	leal	6(%rax,%rax), %r8d
	cmpl	%r8d, %ebx
	je	.L5778
	leaq	.LC131(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5172
.L4647:
	leaq	.LC130(%rip), %rax
	movl	8(%rcx), %edx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5172
.L5773:
	leaq	_ZL22stbi__resample_row_v_2PhS_S_ii(%rip), %rax
	movq	%rax, (%rdi)
	jmp	.L4708
.L5774:
	leaq	_ZL22stbi__resample_row_h_2PhS_S_ii(%rip), %rax
	movq	%rax, (%rdi)
	jmp	.L4708
.L5775:
	movq	18560(%rbx), %rax
	movq	%rax, (%rdi)
	jmp	.L4708
.L4682:
	movl	576(%rsp), %eax
	testl	%eax, %eax
	je	.L4700
.L5690:
	movl	576(%rsp), %eax
	cmpl	$3, %esi
	movl	%esi, 48(%rsp)
	movl	%eax, 80(%rsp)
	jne	.L4701
.L5771:
	cmpl	$3, 18512(%r15)
	je	.L5207
	cmpq	$0, 18504(%r15)
	je	.L5207
	cmpl	$2, 576(%rsp)
	movb	$0, 72(%rsp)
	jg	.L4702
	movl	$1, 48(%rsp)
	jmp	.L4703
	.p2align 4,,7
.L5777:
	movq	%rbx, %r15
	movl	%esi, %edx
.L5691:
	movq	%r15, %rcx
	xorl	%ebx, %ebx
	call	_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.117
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4636
.L5776:
	movq	%rbx, %r15
	movq	%r12, %rbx
.L4704:
	movl	4(%rbx), %r8d
	movl	576(%rsp), %ecx
	movl	$1, %r9d
	movl	%r14d, %edx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, 88(%rsp)
	movq	(%r15), %rax
	je	.L4713
	movl	4(%rax), %r10d
	testl	%r10d, %r10d
	je	.L4714
	movslq	576(%rsp), %rdi
	movl	$0, 56(%rsp)
	movq	%rdi, 64(%rsp)
	.p2align 4,,7
.L4747:
	movl	80(%rsp), %ebx
	movl	48(%rsp), %edi
	imull	(%rax), %ebx
	imull	56(%rsp), %ebx
	addq	88(%rsp), %rbx
	testl	%edi, %edi
	jle	.L4716
	leaq	160(%rsp), %rax
	leaq	192(%rsp), %rsi
	leaq	18116(%r15), %r13
	movq	%rbx, 104(%rsp)
	xorl	%ebp, %ebp
	movq	%r15, 96(%rsp)
	movl	%edi, %ebx
	movq	%rax, %r14
.L4721:
	movl	28(%rsi), %r15d
	movl	36(%rsi), %edi
	movq	16(%rsi), %r12
	movq	(%rsi), %rax
	movl	24(%rsi), %r11d
	movl	32(%rsi), %r9d
	movl	%r15d, %ecx
	movq	8(%rsi), %r8
	sarl	%ecx
	movq	%r12, %rdx
	cmpl	%ecx, %edi
	jge	.L4717
	movq	%r8, %rdx
	movq	%r12, %r8
.L4717:
	incl	%edi
	movq	36(%r13), %rcx
	movl	%r11d, 32(%rsp)
	call	*%rax
	cmpl	%edi, %r15d
	movq	%rax, (%r14,%rbp,8)
	jle	.L4718
	movl	%edi, 36(%rsi)
.L4719:
	incq	%rbp
	addq	$48, %rsi
	addq	$96, %r13
	cmpl	%ebp, %ebx
	jg	.L4721
	movq	96(%rsp), %r15
	movq	104(%rsp), %rbx
	movq	(%r15), %rax
.L4716:
	cmpl	$2, 576(%rsp)
	jle	.L4722
	movl	8(%rax), %ecx
	movq	160(%rsp), %rdx
	cmpl	$3, %ecx
	je	.L5779
	cmpl	$4, %ecx
	je	.L4727
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	je	.L4725
	movq	64(%rsp), %r8
	xorl	%ecx, %ecx
	.p2align 4,,7
.L4733:
	movl	%ecx, %eax
	incl	%ecx
	movzbl	(%rdx,%rax), %eax
	movb	$-1, 3(%rbx)
	movb	%al, 2(%rbx)
	movb	%al, 1(%rbx)
	movb	%al, (%rbx)
	movq	(%r15), %rax
	addq	%r8, %rbx
	cmpl	%ecx, (%rax)
	ja	.L4733
.L4725:
	incl	56(%rsp)
	movl	56(%rsp), %edi
	cmpl	%edi, 4(%rax)
	ja	.L4747
.L4714:
	movl	8(%rax), %edx
	movq	%r15, %rcx
	call	_ZL26stbi__free_jpeg_componentsP10stbi__jpegii.constprop.117
	movq	(%r15), %rax
	movq	552(%rsp), %rdi
	cmpq	$0, 568(%rsp)
	movl	(%rax), %edx
	movl	%edx, (%rdi)
	movq	560(%rsp), %rdi
	movl	4(%rax), %edx
	movl	%edx, (%rdi)
	je	.L5211
	cmpl	$3, 8(%rax)
	movq	568(%rsp), %rdi
	movq	88(%rsp), %rbx
	setge	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	movl	%eax, (%rdi)
	jmp	.L4636
	.p2align 4,,7
.L4718:
	movl	40(%rsi), %eax
	movl	$0, 36(%rsi)
	movq	%r12, 8(%rsi)
	incl	%eax
	cmpl	-4(%r13), %eax
	movl	%eax, 40(%rsi)
	jge	.L4719
	movslq	0(%r13), %rax
	addq	%rax, %r12
	movq	%r12, 16(%rsi)
	jmp	.L4719
.L4722:
	cmpb	$0, 72(%rsp)
	je	.L4734
	cmpl	$1, 576(%rsp)
	je	.L4735
	movl	(%rax), %r14d
	testl	%r14d, %r14d
	je	.L4725
	movq	168(%rsp), %r9
	movq	176(%rsp), %r8
	xorl	%edx, %edx
	movq	160(%rsp), %rcx
	.p2align 4,,7
.L4738:
	movl	%edx, %r11d
	movl	$77, %esi
	movl	$29, %edi
	movzbl	(%rcx,%r11), %r10d
	movzbl	(%r9,%r11), %eax
	incl	%edx
	addq	$2, %rbx
	imull	$150, %eax, %eax
	imull	%esi, %r10d
	addl	%eax, %r10d
	movzbl	(%r8,%r11), %eax
	movb	$-1, -1(%rbx)
	imull	%edi, %eax
	addl	%r10d, %eax
	sarl	$8, %eax
	movb	%al, -2(%rbx)
	movq	(%r15), %rax
	cmpl	%edx, (%rax)
	ja	.L4738
	incl	56(%rsp)
	movl	56(%rsp), %edi
	cmpl	%edi, 4(%rax)
	ja	.L4747
	jmp	.L4714
	.p2align 4,,7
.L4734:
	cmpl	$4, 8(%rax)
	je	.L5780
.L4739:
	cmpl	$1, 576(%rsp)
	movq	160(%rsp), %rcx
	je	.L4743
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	je	.L4725
	xorl	%edx, %edx
	.p2align 4,,7
.L4746:
	movl	%edx, %eax
	addq	$2, %rbx
	incl	%edx
	movzbl	(%rcx,%rax), %eax
	movb	%al, -2(%rbx)
	movb	$-1, -1(%rbx)
	movq	(%r15), %rax
	cmpl	%edx, (%rax)
	ja	.L4746
	incl	56(%rsp)
	movl	56(%rsp), %edi
	cmpl	%edi, 4(%rax)
	ja	.L4747
	jmp	.L4714
	.p2align 4,,7
.L5779:
	cmpb	$0, 72(%rsp)
	je	.L4724
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	je	.L4725
	movq	168(%rsp), %r9
	movq	176(%rsp), %r8
	xorl	%ecx, %ecx
	.p2align 4,,7
.L4726:
	movl	%ecx, %eax
	incl	%ecx
	movzbl	(%rdx,%rax), %r10d
	movb	%r10b, (%rbx)
	movzbl	(%r9,%rax), %r10d
	movb	%r10b, 1(%rbx)
	movzbl	(%r8,%rax), %eax
	movb	$-1, 3(%rbx)
	movb	%al, 2(%rbx)
	movq	(%r15), %rax
	addq	64(%rsp), %rbx
	cmpl	%ecx, (%rax)
	ja	.L4726
	incl	56(%rsp)
	movl	56(%rsp), %edi
	cmpl	%edi, 4(%rax)
	ja	.L4747
	jmp	.L4714
	.p2align 4,,7
.L4735:
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	je	.L4725
	movq	168(%rsp), %r9
	movq	176(%rsp), %r8
	xorl	%edx, %edx
	movq	160(%rsp), %rcx
.L4737:
	movl	%edx, %r11d
	movl	$77, %ebp
	movl	$29, %r12d
	movzbl	(%rcx,%r11), %r10d
	movzbl	(%r9,%r11), %eax
	incq	%rbx
	incl	%edx
	imull	$150, %eax, %eax
	imull	%ebp, %r10d
	addl	%eax, %r10d
	movzbl	(%r8,%r11), %eax
	imull	%r12d, %eax
	addl	%r10d, %eax
	sarl	$8, %eax
	movb	%al, -1(%rbx)
	movq	(%r15), %rax
	cmpl	%edx, (%rax)
	ja	.L4737
	incl	56(%rsp)
	movl	56(%rsp), %edi
	cmpl	%edi, 4(%rax)
	ja	.L4747
	jmp	.L4714
	.p2align 4,,7
.L5778:
	xorl	%esi, %esi
	testl	%eax, %eax
	leaq	18520(%r15), %rdi
	jle	.L4651
.L4658:
	call	_ZL10stbi__get8P13stbi__context
	movq	(%r15), %rcx
	movzbl	%al, %ebx
	call	_ZL10stbi__get8P13stbi__context
	movq	(%r15), %rcx
	movzbl	%al, %r10d
	movl	8(%rcx), %edx
	cmpl	$0, %edx
	jle	.L4653
	cmpl	%ebx, 18080(%r15)
	je	.L5194
	cmpl	$1, %edx
	je	.L5172
	cmpl	18176(%r15), %ebx
	je	.L5195
	cmpl	$2, %edx
	je	.L5172
	cmpl	18272(%r15), %ebx
	je	.L5196
	cmpl	$3, %edx
	je	.L5172
	cmpl	18368(%r15), %ebx
	je	.L5197
	movl	$4, %edx
	jmp	.L5172
.L4653:
	je	.L5172
.L5194:
	xorl	%r9d, %r9d
.L4654:
	movslq	%r9d, %r8
	sarl	$4, %r10d
	movq	%r8, %r11
	salq	$7, %r8
	salq	$5, %r11
	subq	%r11, %r8
	addq	%r15, %r8
	cmpl	$3, %r10d
	movl	%r10d, 18096(%r8)
	jg	.L5781
	andl	$15, %eax
	movzbl	%al, %r10d
	cmpb	$3, %al
	movl	%r10d, 18100(%r8)
	ja	.L5782
	movl	%r9d, (%rdi)
	incl	%esi
	addq	$4, %rdi
	cmpl	%esi, 18516(%r15)
	jg	.L4658
.L4651:
	call	_ZL10stbi__get8P13stbi__context
	movq	(%r15), %rcx
	movzbl	%al, %eax
	movl	%eax, 18484(%r15)
	call	_ZL10stbi__get8P13stbi__context
	movq	(%r15), %rcx
	movzbl	%al, %eax
	movl	%eax, 18488(%r15)
	call	_ZL10stbi__get8P13stbi__context
	movl	18480(%r15), %ebp
	movzbl	%al, %edx
	andl	$15, %eax
	sarl	$4, %edx
	movzbl	%al, %ecx
	movl	%edx, 18492(%r15)
	movl	%ecx, 18496(%r15)
	testl	%ebp, %ebp
	je	.L4659
	movl	18484(%r15), %r9d
	cmpl	$63, %r9d
	jg	.L5257
	movl	18488(%r15), %r8d
	cmpl	$63, %r8d
	setg	%r10b
	cmpl	%r8d, %r9d
	setg	%cl
	orl	%r10d, %ecx
	cmpb	$13, %al
	seta	%al
	orb	%al, %cl
	jne	.L5257
	cmpl	$13, %edx
	jg	.L5257
.L4661:
	movq	%r15, %rcx
	call	_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg
	testl	%eax, %eax
	je	.L4639
	movzbl	18472(%r15), %eax
	cmpb	$-1, %al
	jne	.L4666
	.p2align 4,,7
.L4672:
	movq	(%r15), %rbx
	cmpq	$0, 16(%rbx)
	je	.L4673
	movq	40(%rbx), %rcx
	call	*32(%rbx)
	testl	%eax, %eax
	je	.L4668
	movl	48(%rbx), %esi
	testl	%esi, %esi
	je	.L5689
.L4673:
	movq	192(%rbx), %rax
	cmpq	%rax, 184(%rbx)
	jnb	.L5689
.L4668:
	movq	(%r15), %rcx
	call	_ZL10stbi__get8P13stbi__context
	incb	%al
	jne	.L4672
	movq	(%r15), %rcx
	call	_ZL10stbi__get8P13stbi__context
	movb	%al, 18472(%r15)
	jmp	.L4674
.L4727:
	movl	18508(%r15), %ecx
	testl	%ecx, %ecx
	jne	.L4729
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.L4725
	movq	168(%rsp), %rsi
	movq	176(%rsp), %r11
	xorl	%r9d, %r9d
	movq	184(%rsp), %r10
.L4730:
	movl	%r9d, %r8d
	incl	%r9d
	movzbl	(%r10,%r8), %eax
	movzbl	(%rdx,%r8), %ecx
	imull	%eax, %ecx
	subl	$-128, %ecx
	movl	%ecx, %edi
	shrl	$8, %edi
	addl	%edi, %ecx
	shrl	$8, %ecx
	movb	%cl, (%rbx)
	movzbl	(%rsi,%r8), %ecx
	imull	%eax, %ecx
	subl	$-128, %ecx
	movl	%ecx, %edi
	shrl	$8, %edi
	addl	%edi, %ecx
	shrl	$8, %ecx
	movb	%cl, 1(%rbx)
	movzbl	(%r11,%r8), %ecx
	movb	$-1, 3(%rbx)
	imull	%ecx, %eax
	subl	$-128, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, 2(%rbx)
	movq	(%r15), %rax
	addq	64(%rsp), %rbx
	cmpl	%r9d, (%rax)
	ja	.L4730
	incl	56(%rsp)
	movl	56(%rsp), %edi
	cmpl	%edi, 4(%rax)
	ja	.L4747
	jmp	.L4714
	.p2align 4,,7
.L5780:
	movl	18508(%r15), %edx
	testl	%edx, %edx
	jne	.L4740
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	je	.L4725
	movq	168(%rsp), %rsi
	movq	176(%rsp), %r11
	xorl	%r8d, %r8d
	movq	184(%rsp), %r10
	movq	160(%rsp), %r9
.L4741:
	movl	%r8d, %edi
	movl	$77, %r14d
	incl	%r8d
	movzbl	(%r10,%rdi), %eax
	movzbl	(%r9,%rdi), %ecx
	movzbl	(%rsi,%rdi), %edx
	movzbl	(%r11,%rdi), %edi
	movb	$-1, 1(%rbx)
	imull	%eax, %ecx
	imull	%eax, %edx
	subl	$-128, %ecx
	imull	%edi, %eax
	movl	%ecx, %edi
	subl	$-128, %edx
	shrl	$8, %edi
	addl	%edi, %ecx
	movl	%edx, %edi
	shrl	$8, %edi
	shrl	$8, %ecx
	subl	$-128, %eax
	addl	%edi, %edx
	shrl	$8, %edx
	imull	%r14d, %ecx
	imull	$150, %edx, %edx
	addl	%ecx, %edx
	movl	%eax, %ecx
	shrl	$8, %ecx
	addl	%ecx, %eax
	movl	$29, %ecx
	shrl	$8, %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	sarl	$8, %eax
	movb	%al, (%rbx)
	movq	(%r15), %rax
	addq	64(%rsp), %rbx
	cmpl	%r8d, (%rax)
	ja	.L4741
	incl	56(%rsp)
	movl	56(%rsp), %edi
	cmpl	%edi, 4(%rax)
	ja	.L4747
	jmp	.L4714
	.p2align 4,,7
.L5197:
	movl	$3, %r9d
	jmp	.L4654
.L5196:
	movl	$2, %r9d
	jmp	.L4654
.L5195:
	movl	$1, %r9d
	jmp	.L4654
.L4740:
	cmpl	$2, %edx
	jne	.L4739
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	je	.L4725
	movq	184(%rsp), %r8
	movq	160(%rsp), %rcx
	xorl	%edx, %edx
.L4742:
	movl	%edx, %r10d
	incl	%edx
	movzbl	(%rcx,%r10), %eax
	notl	%eax
	movzbl	%al, %r9d
	movzbl	(%r8,%r10), %eax
	movb	$-1, 1(%rbx)
	imull	%r9d, %eax
	subl	$-128, %eax
	movl	%eax, %r9d
	shrl	$8, %r9d
	addl	%r9d, %eax
	shrl	$8, %eax
	movb	%al, (%rbx)
	movq	(%r15), %rax
	addq	64(%rsp), %rbx
	cmpl	%edx, (%rax)
	ja	.L4742
	jmp	.L4725
	.p2align 4,,7
.L4724:
	movl	576(%rsp), %edi
	movq	176(%rsp), %r9
	movq	%rbx, %rcx
	movq	168(%rsp), %r8
	movl	%edi, 40(%rsp)
	movl	(%rax), %eax
	movl	%eax, 32(%rsp)
	call	*18552(%r15)
	movq	(%r15), %rax
	incl	56(%rsp)
	movl	56(%rsp), %edi
	cmpl	%edi, 4(%rax)
	ja	.L4747
	jmp	.L4714
	.p2align 4,,7
.L5770:
	movq	(%r15), %rbx
	movl	8(%rbx), %esi
	testl	%esi, %esi
	jle	.L4682
	leaq	18204(%r15), %r14
	movl	$0, 72(%rsp)
.L4699:
	movl	-96(%r14), %eax
	prefetcht0	(%r14)
	prefetcht0	4(%r14)
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, 64(%rsp)
	movl	-92(%r14), %eax
	addl	$7, %eax
	sarl	$3, %eax
	testl	%eax, %eax
	movl	%eax, 80(%rsp)
	jle	.L4683
	movl	$0, 48(%rsp)
.L4686:
	movl	64(%rsp), %r11d
	xorl	%r13d, %r13d
	testl	%r11d, %r11d
	jg	.L5503
	jmp	.L4696
	.p2align 4,,7
.L5783:
	movzwl	(%r8), %r10d
	imulw	8(%r9), %r10w
	cmpl	$1, %edx
	movw	%r10w, (%r8)
	je	.L5199
	movzwl	2(%r8), %r10d
	imulw	2(%rax), %r10w
	cmpl	$2, %edx
	movw	%r10w, 2(%r8)
	je	.L5200
	movzwl	4(%r8), %r10d
	imulw	4(%rax), %r10w
	cmpl	$3, %edx
	movw	%r10w, 4(%r8)
	je	.L5201
	movzwl	6(%r8), %r10d
	imulw	6(%rax), %r10w
	cmpl	$4, %edx
	movw	%r10w, 6(%r8)
	je	.L5202
	movzwl	8(%r8), %r10d
	imulw	8(%rax), %r10w
	cmpl	$5, %edx
	movw	%r10w, 8(%r8)
	je	.L5203
	movzwl	10(%r8), %r10d
	imulw	10(%rax), %r10w
	cmpl	$6, %edx
	movw	%r10w, 10(%r8)
	je	.L5204
	movzwl	12(%r8), %r10d
	movl	$57, %r11d
	imulw	12(%rax), %r10w
	movw	%r10w, 12(%r8)
	movl	$7, %r10d
.L4690:
	movl	$64, %r12d
	movl	%edx, %ebp
	subl	%edx, %r12d
	movl	$56, %edx
	movl	%r12d, 56(%rsp)
	movl	$7, %r12d
.L4689:
	salq	$6, %rbx
	addq	%rbp, %rcx
	leaq	(%rdi,%rbp,2), %rdi
	leaq	6724(%rbp,%rbx), %rbx
	leaq	(%rsi,%rcx,2), %rcx
	addq	%rdi, %rsi
	cmpl	$7, %r12d
	leaq	(%r15,%rbx,2), %rbx
	movdqu	(%rbx), %xmm0
	pmullw	(%rcx), %xmm0
	movaps	%xmm0, (%rsi)
	movdqu	16(%rbx), %xmm0
	pmullw	16(%rcx), %xmm0
	movaps	%xmm0, 16(%rsi)
	movdqu	32(%rbx), %xmm0
	pmullw	32(%rcx), %xmm0
	movaps	%xmm0, 32(%rsi)
	movdqu	48(%rbx), %xmm0
	pmullw	48(%rcx), %xmm0
	movaps	%xmm0, 48(%rsi)
	movdqu	64(%rbx), %xmm0
	pmullw	64(%rcx), %xmm0
	movaps	%xmm0, 64(%rsi)
	movdqu	80(%rbx), %xmm0
	pmullw	80(%rcx), %xmm0
	movaps	%xmm0, 80(%rsi)
	movdqu	96(%rbx), %xmm0
	pmullw	96(%rcx), %xmm0
	movaps	%xmm0, 96(%rsi)
	je	.L4691
	movdqu	112(%rbx), %xmm0
	pmullw	112(%rcx), %xmm0
	movaps	%xmm0, 112(%rsi)
.L4691:
	addl	%edx, %r10d
	subl	%edx, %r11d
	cmpl	%edx, 56(%rsp)
	je	.L4694
	movslq	%r10d, %rdx
	addq	%rdx, %rdx
	leaq	(%r8,%rdx), %rbx
	movzwl	(%rbx), %ecx
	imulw	8(%rdx,%r9), %cx
	cmpl	$1, %r11d
	leal	1(%r10), %edx
	movw	%cx, (%rbx)
	je	.L4694
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	leaq	(%r8,%rdx), %rbx
	movzwl	(%rbx), %ecx
	imulw	8(%rdx,%r9), %cx
	cmpl	$2, %r11d
	leal	2(%r10), %edx
	movw	%cx, (%rbx)
	je	.L4694
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	leaq	(%r8,%rdx), %rbx
	movzwl	(%rbx), %ecx
	imulw	8(%rdx,%r9), %cx
	cmpl	$3, %r11d
	leal	3(%r10), %edx
	movw	%cx, (%rbx)
	je	.L4694
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	leaq	(%r8,%rdx), %rbx
	movzwl	(%rbx), %ecx
	imulw	8(%rdx,%r9), %cx
	cmpl	$4, %r11d
	leal	4(%r10), %edx
	movw	%cx, (%rbx)
	je	.L4694
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	leaq	(%r8,%rdx), %rbx
	movzwl	(%rbx), %ecx
	imulw	8(%rdx,%r9), %cx
	cmpl	$5, %r11d
	leal	5(%r10), %edx
	movw	%cx, (%rbx)
	je	.L4694
	movslq	%edx, %rdx
	addl	$6, %r10d
	addq	%rdx, %rdx
	leaq	(%r8,%rdx), %rbx
	movzwl	(%rbx), %ecx
	imulw	8(%rdx,%r9), %cx
	cmpl	$6, %r11d
	movw	%cx, (%rbx)
	je	.L4694
	movslq	%r10d, %rdx
	leaq	(%r8,%rdx,2), %r9
	movzwl	(%r9), %ecx
	imulw	(%rax,%rdx,2), %cx
	movw	%cx, (%r9)
.L4694:
	movl	-88(%r14), %edx
	movl	48(%rsp), %eax
	imull	%edx, %eax
	sall	$3, %eax
	cltq
	leaq	(%rax,%r13,8), %rcx
	addq	-76(%r14), %rcx
	incq	%r13
	call	*18544(%r15)
	cmpl	%r13d, 64(%rsp)
	jle	.L4696
.L5503:
	movl	48(%rsp), %ecx
	movslq	-112(%r14), %rbx
	imull	-36(%r14), %ecx
	movq	-44(%r14), %rsi
	movq	%rbx, %rdx
	leaq	105(%rbx), %r9
	salq	$7, %rdx
	leaq	13448(%r15,%rdx), %r11
	salq	$7, %r9
	addl	%r13d, %ecx
	addq	%r15, %r9
	sall	$6, %ecx
	leaq	8(%r9), %rax
	movslq	%ecx, %rcx
	leaq	16(%rsi,%rcx,2), %r10
	leaq	(%rcx,%rcx), %rdi
	cmpq	%r10, %r11
	leaq	(%rsi,%rdi), %r8
	jnb	.L5258
	leaq	13464(%r15,%rdx), %rdx
	cmpq	%rdx, %r8
	jb	.L4687
.L5258:
	movq	%r8, %rdx
	andl	$15, %edx
	shrq	%rdx
	negq	%rdx
	andl	$7, %edx
	jne	.L5783
	xorl	%r10d, %r10d
	movl	$8, %r12d
	movl	$64, 56(%rsp)
	xorl	%ebp, %ebp
	movl	$64, %edx
	movl	$64, %r11d
	jmp	.L4689
	.p2align 4,,7
.L4687:
	xorl	%edx, %edx
	.p2align 4,,7
.L4695:
	movzwl	(%r8,%rdx), %ecx
	imulw	(%rax,%rdx), %cx
	movw	%cx, (%r8,%rdx)
	addq	$2, %rdx
	cmpq	$128, %rdx
	jne	.L4695
	jmp	.L4694
.L4696:
	incl	48(%rsp)
	movl	48(%rsp), %eax
	cmpl	%eax, 80(%rsp)
	jne	.L4686
	movq	(%r15), %rbx
	movl	8(%rbx), %esi
.L4683:
	incl	72(%rsp)
	addq	$96, %r14
	movl	72(%rsp), %eax
	cmpl	%esi, %eax
	jl	.L4699
	jmp	.L4698
	.p2align 4,,7
.L5203:
	movl	$59, %r11d
	movl	$5, %r10d
	jmp	.L4690
.L5202:
	movl	$60, %r11d
	movl	$4, %r10d
	jmp	.L4690
.L5204:
	movl	$58, %r11d
	movl	$6, %r10d
	jmp	.L4690
.L5199:
	movl	$63, %r11d
	movl	$1, %r10d
	jmp	.L4690
.L5201:
	movl	$61, %r11d
	movl	$3, %r10d
	jmp	.L4690
.L5200:
	movl	$62, %r11d
	movl	$2, %r10d
	jmp	.L4690
.L4639:
	movq	(%r15), %rax
	movl	8(%rax), %edx
	jmp	.L5172
.L5741:
	leaq	.LC129(%rip), %rax
	xorl	%ebx, %ebx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4636
.L4700:
	movl	%esi, 48(%rsp)
	movl	$1, 80(%rsp)
	movl	$1, 576(%rsp)
	jmp	.L4701
.L4743:
	movl	(%rax), %ebp
	testl	%ebp, %ebp
	je	.L4725
	xorl	%edx, %edx
.L4745:
	movl	%edx, %eax
	incl	%edx
	movzbl	(%rcx,%rax), %r8d
	movb	%r8b, (%rbx,%rax)
	movq	(%r15), %rax
	cmpl	%edx, (%rax)
	ja	.L4745
	incl	56(%rsp)
	movl	56(%rsp), %edi
	cmpl	%edi, 4(%rax)
	ja	.L4747
	jmp	.L4714
	.p2align 4,,7
.L4729:
	movl	576(%rsp), %edi
	cmpl	$2, %ecx
	movq	176(%rsp), %r9
	movq	168(%rsp), %r8
	movq	%rbx, %rcx
	movl	%edi, 40(%rsp)
	movl	(%rax), %eax
	movl	%eax, 32(%rsp)
	je	.L5784
	call	*18552(%r15)
	movq	(%r15), %rax
	incl	56(%rsp)
	movl	56(%rsp), %edi
	cmpl	%edi, 4(%rax)
	ja	.L4747
	jmp	.L4714
	.p2align 4,,7
.L5207:
	movb	$1, 72(%rsp)
.L4702:
	movl	$3, 48(%rsp)
	jmp	.L4703
.L5752:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	andl	$-9, %eax
	decl	%esi
	je	.L5785
	subl	$2, %eax
	cmpb	$1, %al
	ja	.L5087
	cmpq	$0, 16(%rbp)
	je	.L5095
	movq	192(%rbp), %rdx
	movq	184(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	cmpl	$8, %ecx
	jle	.L5786
.L5096:
	addq	$9, %rax
	movq	%rax, 184(%rbp)
.L5094:
	movq	%rbp, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	testl	%eax, %eax
	jle	.L5087
	movq	%rbp, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	testl	%eax, %eax
	jle	.L5087
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	leal	-8(%rax), %ecx
	cmpb	$8, %al
	setne	%dl
	andl	$247, %ecx
	je	.L5259
	andl	$1, %ebx
	jne	.L5087
.L5259:
	leal	-15(%rax), %ecx
	cmpb	$1, %cl
	jbe	.L5098
	testb	%dl, %dl
	je	.L5098
	subl	$24, %eax
	testb	$-9, %al
	jne	.L5087
.L5098:
	movdqu	200(%rbp), %xmm0
	movq	%rbp, %rcx
	movups	%xmm0, 184(%rbp)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movzbl	%al, %edi
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movzbl	%al, %eax
	movl	%eax, 64(%rsp)
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movzbl	%al, %esi
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %r12d
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %r14d
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movzbl	%al, %eax
	movl	%eax, %ebx
	movl	%eax, 56(%rsp)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, 48(%rsp)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %r15d
	call	_ZL10stbi__get8P13stbi__context
	movq	%rbp, %rcx
	movzbl	%al, %eax
	movl	%eax, %r13d
	movl	%eax, 96(%rsp)
	call	_ZL10stbi__get8P13stbi__context
	cmpl	$7, %esi
	movl	$0, 192(%rsp)
	jg	.L5181
	movl	$0, 88(%rsp)
.L5182:
	movl	64(%rsp), %r10d
	andl	$32, %eax
	movb	%al, 104(%rsp)
	testl	%r10d, %r10d
	je	.L5099
	subl	$8, %ebx
	cmpb	$24, %bl
	ja	.L5100
	leaq	.L5102(%rip), %rax
	movzbl	%bl, %ebx
	movslq	(%rax,%rbx,4), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L5102:
	.long	.L5247-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5246-.L5102
	.long	.L5246-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5104-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5100-.L5102
	.long	.L5104-.L5102
	.text
.L5786:
	movq	%rdx, 184(%rbp)
	movl	$9, %edx
	subl	%ecx, %edx
	movq	40(%rbp), %rcx
	call	*24(%rbp)
	jmp	.L5094
.L5104:
	movl	56(%rsp), %esi
	sarl	$3, %esi
.L5105:
	testl	%esi, %esi
	movl	$0, 56(%rsp)
	je	.L5100
.L5110:
	movq	552(%rsp), %rax
	movl	48(%rsp), %ebx
	cmpq	$0, 568(%rsp)
	movl	%ebx, (%rax)
	movq	560(%rsp), %rax
	movl	%r15d, (%rax)
	je	.L5112
	movq	568(%rsp), %rax
	movl	%esi, (%rax)
.L5112:
	movl	48(%rsp), %ecx
	xorl	%r9d, %r9d
	movl	%esi, %r8d
	movl	%r15d, %edx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L5699
	movl	48(%rsp), %ecx
	xorl	%r9d, %r9d
	movl	%esi, %r8d
	movl	%r15d, %edx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5698
	movl	%edi, %edx
	movq	%rbp, %rcx
	call	_ZL10stbi__skipP13stbi__contexti
	movl	64(%rsp), %eax
	orl	88(%rsp), %eax
	jne	.L5115
	movl	56(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L5250
	testl	%r15d, %r15d
	jle	.L5118
	movl	48(%rsp), %r12d
	imull	%esi, %r12d
	cmpb	$0, 104(%rsp)
	je	.L5119
	movslq	%r12d, %rdi
	movq	%rbx, %r14
	xorl	%r13d, %r13d
.L5121:
	movq	%r14, %rdx
	movl	%r12d, %r8d
	movq	%rbp, %rcx
	incl	%r13d
	addq	%rdi, %r14
	call	_ZL10stbi__getnP13stbi__contextPhi
	cmpl	%r13d, %r15d
	jne	.L5121
.L5118:
	cmpl	$2, %esi
	jle	.L5165
	movl	56(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L5165
	movl	48(%rsp), %ecx
	imull	%r15d, %ecx
	testl	%ecx, %ecx
	jle	.L5165
	movslq	%esi, %r8
	movq	%rbx, %rax
	xorl	%edx, %edx
.L5166:
	movzbl	(%rax), %r9d
	movzbl	2(%rax), %r10d
	incl	%edx
	movb	%r10b, (%rax)
	movb	%r9b, 2(%rax)
	addq	%r8, %rax
	cmpl	%ecx, %edx
	jne	.L5166
.L5165:
	movl	576(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L5260
	cmpl	%esi, 576(%rsp)
	je	.L5260
	movl	48(%rsp), %r9d
	movl	576(%rsp), %r8d
	movl	%esi, %edx
	movl	%r15d, 32(%rsp)
	movq	%rbx, %rcx
	call	_ZL20stbi__convert_formatPhiijj
	jmp	.L5467
.L5246:
	movl	$1, 56(%rsp)
	movl	$3, %esi
	jmp	.L5110
.L5119:
	movl	48(%rsp), %eax
	leal	-1(%r15), %r13d
	xorl	%r14d, %r14d
	imull	%eax, %r13d
	movl	%eax, %edi
	negl	%edi
	imull	%esi, %r13d
	imull	%esi, %edi
	movslq	%r13d, %r13
	movslq	%edi, %rdi
	addq	%rbx, %r13
.L5122:
	movq	%r13, %rdx
	movl	%r12d, %r8d
	movq	%rbp, %rcx
	incl	%r14d
	addq	%rdi, %r13
	call	_ZL10stbi__getnP13stbi__contextPhi
	cmpl	%r14d, %r15d
	jne	.L5122
	jmp	.L5118
.L5250:
	xorl	%edi, %edi
.L5116:
	movl	48(%rsp), %eax
	imull	%r15d, %eax
	testl	%eax, %eax
	movl	%eax, 120(%rsp)
	jle	.L5145
	movslq	%esi, %rax
	movq	%rbx, %r12
	xorl	%r13d, %r13d
	movq	%rax, 112(%rsp)
	movl	$0, 72(%rsp)
	movl	$1, %eax
	movl	$0, 80(%rsp)
	jmp	.L5146
	.p2align 4,,7
.L5788:
	movl	72(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L5787
	testl	%r13d, %r13d
	je	.L5132
	testl	%eax, %eax
	jne	.L5252
	movzbl	192(%rsp), %r9d
	movl	$1, %r13d
.L5133:
	cmpl	$1, %esi
	movb	%r9b, (%r12)
	je	.L5144
	movzbl	193(%rsp), %ecx
.L5193:
	cmpl	$2, %esi
	movb	%cl, 1(%r12)
	je	.L5144
	movzbl	194(%rsp), %eax
	cmpl	$3, %esi
	movb	%al, 2(%r12)
	je	.L5144
	movzbl	195(%rsp), %eax
	movb	%al, 3(%r12)
.L5144:
	incl	80(%rsp)
	decl	72(%rsp)
	xorl	%eax, %eax
	movl	80(%rsp), %ecx
	addq	112(%rsp), %r12
	cmpl	120(%rsp), %ecx
	je	.L5145
.L5146:
	movl	88(%rsp), %edx
	testl	%edx, %edx
	jne	.L5788
.L5132:
	movl	64(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L5134
	cmpl	$8, 96(%rsp)
	movq	%rbp, %rcx
	je	.L5789
	call	_ZL13stbi__get16leP13stbi__context
.L5136:
	cmpl	%eax, %r14d
	jle	.L5253
	imull	%esi, %eax
	movslq	%eax, %rdx
.L5137:
	movzbl	(%rdi,%rdx), %edx
	cmpl	$1, %esi
	movb	%dl, 192(%rsp)
	je	.L5138
	leal	1(%rax), %ecx
	cmpl	$2, %esi
	movslq	%ecx, %rcx
	movzbl	(%rdi,%rcx), %ecx
	movb	%cl, 193(%rsp)
	je	.L5140
	leal	2(%rax), %r8d
	cmpl	$3, %esi
	movslq	%r8d, %r8
	movzbl	(%rdi,%r8), %r8d
	movb	%r8b, 194(%rsp)
	je	.L5140
	addl	$3, %eax
	cltq
	movzbl	(%rdi,%rax), %eax
	movb	%al, 195(%rsp)
.L5140:
	movb	%dl, (%r12)
	jmp	.L5193
.L5138:
	movb	%dl, (%r12)
	jmp	.L5144
.L5253:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L5137
.L5789:
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	jmp	.L5136
.L5134:
	movl	56(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L5141
	cmpl	$3, %esi
	je	.L5142
	leaq	.LC3(%rip), %rdx
	leaq	.LC152(%rip), %rcx
	movl	$5491, %r8d
	call	_assert
.L5142:
	movq	%rbp, %rcx
	call	_ZL13stbi__get16leP13stbi__context
	movzwl	%ax, %ecx
	movl	%eax, %r8d
	movl	%ecx, %eax
	andl	$31, %r8d
	sarl	$10, %eax
	andl	$31, %eax
	movl	%eax, %r9d
	sall	$8, %r9d
	subl	%eax, %r9d
	movl	$-2078209981, %eax
	imull	%r9d
	leal	(%rdx,%r9), %eax
	sarl	$31, %r9d
	sarl	$4, %eax
	subl	%r9d, %eax
	movl	%eax, %r9d
	movb	%al, 192(%rsp)
	movl	%ecx, %eax
	sarl	$5, %eax
	andl	$31, %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	subl	%eax, %ecx
	movl	$-2078209981, %eax
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	sarl	$31, %ecx
	sarl	$4, %eax
	subl	%ecx, %eax
	movl	%r8d, %ecx
	sall	$8, %ecx
	movb	%al, 193(%rsp)
	movl	$-2078209981, %eax
	subl	%r8d, %ecx
	imull	%ecx
	leal	(%rdx,%rcx), %eax
	sarl	$31, %ecx
	sarl	$4, %eax
	subl	%ecx, %eax
	movb	%al, 194(%rsp)
	jmp	.L5133
.L5141:
	leaq	192(%rsp), %r8
	xorl	%edx, %edx
.L5143:
	movq	%rbp, %rcx
	movq	%r8, 136(%rsp)
	movq	%rdx, 128(%rsp)
	call	_ZL10stbi__get8P13stbi__context
	movq	128(%rsp), %rdx
	movq	136(%rsp), %r8
	movb	%al, (%r8,%rdx)
	incq	%rdx
	cmpl	%edx, %esi
	jg	.L5143
	movzbl	192(%rsp), %r9d
	jmp	.L5133
.L5145:
	cmpb	$0, 104(%rsp)
	jne	.L5129
	testl	%r15d, %r15d
	jle	.L5129
	movl	48(%rsp), %r9d
	leal	-1(%r15), %eax
	xorl	%r14d, %r14d
	movl	%eax, 88(%rsp)
	imull	%esi, %r9d
	leal	-1(%r9), %eax
	movl	%eax, 64(%rsp)
	incq	%rax
	movq	%rax, 96(%rsp)
.L5149:
	movl	48(%rsp), %ecx
	movl	88(%rsp), %eax
	movl	%ecx, %edx
	subl	%r14d, %eax
	imull	%r14d, %edx
	imull	%ecx, %eax
	imull	%esi, %edx
	imull	%esi, %eax
	testl	%r9d, %r9d
	jle	.L5158
	movslq	%eax, %rbp
	movslq	%edx, %r10
	leaq	16(%rbp), %rcx
	cmpq	%rcx, %r10
	leaq	16(%r10), %rcx
	setge	%r8b
	cmpq	%rcx, %rbp
	setge	%cl
	orb	%cl, %r8b
	je	.L5150
	cmpl	$18, %r9d
	jbe	.L5150
	leaq	(%rbx,%r10), %r11
	movl	%r9d, %ecx
	movq	%r11, %r8
	negq	%r8
	andl	$15, %r8d
	cmpl	%r9d, %r8d
	cmova	%r9d, %r8d
	testl	%r8d, %r8d
	je	.L5151
	leaq	(%rbx,%rbp), %rcx
	movzbl	(%r11), %r12d
	cmpl	$1, %r8d
	movzbl	(%rcx), %r13d
	movb	%r13b, (%r11)
	movb	%r12b, (%rcx)
	leal	1(%rax), %r11d
	leal	1(%rdx), %r12d
	movl	64(%rsp), %ecx
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$2, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-2(%r9), %ecx
	leal	2(%rdx), %r12d
	leal	2(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$3, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-3(%r9), %ecx
	leal	3(%rdx), %r12d
	leal	3(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$4, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-4(%r9), %ecx
	leal	4(%rdx), %r12d
	leal	4(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$5, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-5(%r9), %ecx
	leal	5(%rdx), %r12d
	leal	5(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$6, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-6(%r9), %ecx
	leal	6(%rdx), %r12d
	leal	6(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$7, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-7(%r9), %ecx
	leal	7(%rdx), %r12d
	leal	7(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$8, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-8(%r9), %ecx
	leal	8(%rdx), %r12d
	leal	8(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$9, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-9(%r9), %ecx
	leal	9(%rdx), %r12d
	leal	9(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$10, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-10(%r9), %ecx
	leal	10(%rdx), %r12d
	leal	10(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$11, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-11(%r9), %ecx
	leal	11(%rdx), %r12d
	leal	11(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$12, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-12(%r9), %ecx
	leal	12(%rdx), %r12d
	leal	12(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$13, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-13(%r9), %ecx
	leal	13(%rdx), %r12d
	leal	13(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	cmpl	$14, %r8d
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-14(%r9), %ecx
	leal	14(%rdx), %r12d
	leal	14(%rax), %r11d
	je	.L5152
	movslq	%r12d, %rcx
	movslq	%r11d, %r11
	addq	%rbx, %rcx
	addq	%rbx, %r11
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %r13d
	movb	%r13b, (%rcx)
	movb	%r12b, (%r11)
	leal	-15(%r9), %ecx
	leal	15(%rdx), %r12d
	leal	15(%rax), %r11d
.L5152:
	movl	%r11d, %eax
	movl	%r12d, %edx
.L5151:
	movl	%r9d, %r13d
	movl	%r8d, %r11d
	subl	%r8d, %r13d
	movq	%r11, 80(%rsp)
	movl	64(%rsp), %r11d
	leal	-16(%r13), %r12d
	shrl	$4, %r12d
	subl	%r8d, %r11d
	incl	%r12d
	movl	%r12d, 72(%rsp)
	sall	$4, %r12d
	cmpl	$14, %r11d
	jbe	.L5153
	movq	80(%rsp), %r11
	leaq	(%r11,%r10), %r8
	movq	%r11, %r10
	xorl	%r11d, %r11d
	addq	%rbp, %r10
	xorl	%ebp, %ebp
	addq	%rbx, %r8
	addq	%rbx, %r10
.L5155:
	movdqa	(%r8,%r11), %xmm0
	incl	%ebp
	movdqu	(%r10,%r11), %xmm1
	movaps	%xmm1, (%r8,%r11)
	movups	%xmm0, (%r10,%r11)
	addq	$16, %r11
	cmpl	%ebp, 72(%rsp)
	ja	.L5155
	subl	%r12d, %ecx
	addl	%r12d, %edx
	addl	%r12d, %eax
	cmpl	%r13d, %r12d
	je	.L5158
.L5153:
	movslq	%edx, %r10
	movslq	%eax, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$1, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	1(%rdx), %r10d
	leal	1(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$2, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	2(%rdx), %r10d
	leal	2(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$3, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	3(%rdx), %r10d
	leal	3(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$4, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	4(%rdx), %r10d
	leal	4(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$5, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	5(%rdx), %r10d
	leal	5(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$6, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	6(%rdx), %r10d
	leal	6(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$7, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	7(%rdx), %r10d
	leal	7(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$8, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	8(%rdx), %r10d
	leal	8(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$9, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	9(%rdx), %r10d
	leal	9(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$10, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	10(%rdx), %r10d
	leal	10(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$11, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	11(%rdx), %r10d
	leal	11(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$12, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	12(%rdx), %r10d
	leal	12(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addq	%rbx, %r10
	addq	%rbx, %r8
	cmpl	$13, %ecx
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	leal	13(%rdx), %r10d
	leal	13(%rax), %r8d
	je	.L5158
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	addl	$14, %edx
	addq	%rbx, %r10
	addq	%rbx, %r8
	addl	$14, %eax
	movzbl	(%r10), %r11d
	movzbl	(%r8), %ebp
	cmpl	$14, %ecx
	movb	%bpl, (%r10)
	movb	%r11b, (%r8)
	je	.L5158
	movslq	%edx, %rdx
	cltq
	addq	%rbx, %rdx
	addq	%rbx, %rax
	movzbl	(%rdx), %ecx
	movzbl	(%rax), %r8d
	movb	%r8b, (%rdx)
	movb	%cl, (%rax)
.L5158:
	incl	%r14d
	leal	(%r14,%r14), %eax
	cmpl	%eax, %r15d
	jg	.L5149
.L5129:
	testq	%rdi, %rdi
	je	.L5118
	movq	%rdi, %rcx
	call	free
	.p2align 4,,2
	jmp	.L5118
.L5150:
	movq	96(%rsp), %rcx
	leaq	(%rbx,%r10), %rax
	leaq	(%rcx,%r10), %rdx
	addq	%rbx, %rdx
.L5160:
	movq	%rax, %rcx
	movzbl	(%rax), %r8d
	incq	%rax
	subq	%r10, %rcx
	movzbl	(%rcx,%rbp), %r11d
	movb	%r11b, -1(%rax)
	cmpq	%rdx, %rax
	movb	%r8b, (%rcx,%rbp)
	jne	.L5160
	jmp	.L5158
.L5252:
	movl	$1, %r13d
	jmp	.L5132
.L5787:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movl	%eax, %edx
	movzbl	%al, %eax
	andl	$127, %edx
	sarl	$7, %eax
	leal	1(%rdx), %ecx
	movl	%eax, %r13d
	movl	%ecx, 72(%rsp)
	jmp	.L5132
.L5115:
	movl	64(%rsp), %r8d
	xorl	%edi, %edi
	testl	%r8d, %r8d
	je	.L5116
	movl	%r12d, %edx
	movq	%rbp, %rcx
	call	_ZL10stbi__skipP13stbi__contexti
	xorl	%r8d, %r8d
	movl	%esi, %edx
	movl	%r14d, %ecx
	call	_ZL17stbi__malloc_mad2iii
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L5790
	movl	56(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L5124
	cmpl	$3, %esi
	je	.L5125
	leaq	.LC3(%rip), %rdx
	leaq	.LC152(%rip), %rcx
	movl	$5442, %r8d
	call	_assert
.L5125:
	testl	%r14d, %r14d
	jle	.L5116
	movslq	%esi, %rax
	movq	%rdi, %r12
	xorl	%r13d, %r13d
	movq	%rax, 72(%rsp)
	movl	$-2078209981, %r8d
.L5126:
	movq	%rbp, %rcx
	movl	%r8d, 80(%rsp)
	incl	%r13d
	call	_ZL13stbi__get16leP13stbi__context
	movzwl	%ax, %r10d
	movl	%eax, %ecx
	movl	80(%rsp), %r8d
	movl	%r10d, %eax
	sarl	$10, %eax
	andl	$31, %eax
	movl	%eax, %edx
	sall	$8, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%edx, %r9d
	imull	%r8d
	addl	%r9d, %edx
	movl	%edx, %eax
	movl	%r9d, %edx
	sarl	$31, %edx
	sarl	$4, %eax
	subl	%edx, %eax
	movb	%al, (%r12)
	movl	%r10d, %eax
	sarl	$5, %eax
	andl	$31, %eax
	movl	%eax, %edx
	sall	$8, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%edx, %r9d
	imull	%r8d
	addl	%r9d, %edx
	movl	%edx, %eax
	movl	%r9d, %edx
	sarl	$31, %edx
	sarl	$4, %eax
	subl	%edx, %eax
	movb	%al, 1(%r12)
	movl	%ecx, %eax
	andl	$31, %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	imull	%r8d
	leal	(%rdx,%rcx), %eax
	sarl	$31, %ecx
	sarl	$4, %eax
	subl	%ecx, %eax
	movb	%al, 2(%r12)
	addq	72(%rsp), %r12
	cmpl	%r13d, %r14d
	jne	.L5126
	jmp	.L5116
.L5124:
	movl	%r14d, %r8d
	movq	%rax, %rdx
	movq	%rbp, %rcx
	imull	%esi, %r8d
	call	_ZL10stbi__getnP13stbi__contextPhi
	testl	%eax, %eax
	jne	.L5116
	movq	%rbx, %rcx
	call	free
	movq	%rdi, %rcx
	call	free
	leaq	.LC153(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L5790:
	movq	%rbx, %rcx
	call	free
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L5260:
	movq	%rbx, %rax
	jmp	.L5467
.L5247:
	movl	$0, 56(%rsp)
	movl	$1, %esi
	jmp	.L5110
.L5100:
	leaq	.LC150(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5467
.L5099:
	subl	$8, %r13d
	cmpb	$24, %r13b
	ja	.L5100
	leaq	.L5106(%rip), %rax
	movzbl	%r13b, %r13d
	movslq	(%rax,%r13,4), %rcx
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L5106:
	.long	.L5247-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5246-.L5106
	.long	.L5108-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5109-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5100-.L5106
	.long	.L5109-.L5106
	.text
.L5181:
	subl	$8, %esi
	movl	$1, 88(%rsp)
	jmp	.L5182
.L5109:
	movl	96(%rsp), %esi
	sarl	$3, %esi
	jmp	.L5105
.L5108:
	xorl	%eax, %eax
	cmpl	$3, %esi
	setne	%al
	movl	%eax, 56(%rsp)
	leal	2(%rax), %esi
	jmp	.L5110
.L5095:
	movq	184(%rbp), %rax
	jmp	.L5096
.L5785:
	decb	%al
	jne	.L5087
	cmpq	$0, 16(%rbp)
	je	.L5089
	movq	192(%rbp), %rdx
	movq	184(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	cmpl	$3, %ecx
	jle	.L5791
.L5090:
	addq	$4, %rax
	movq	%rax, 184(%rbp)
.L5091:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$32, %al
	ja	.L5087
	movabsq	$4311843072, %rdx
	btq	%rax, %rdx
	jnc	.L5087
	cmpq	$0, 16(%rbp)
	je	.L5092
	movq	192(%rbp), %rdx
	movq	184(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	cmpl	$3, %ecx
	jle	.L5792
.L5093:
	addq	$4, %rax
	movq	%rax, 184(%rbp)
	jmp	.L5094
.L5733:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$73, %al
	jne	.L4769
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$70, %al
	jne	.L4769
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$56, %al
	jne	.L4769
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	subl	$55, %eax
	testb	$-3, %al
	jne	.L4769
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$97, %al
	jne	.L4769
	movdqu	200(%rbp), %xmm0
	movl	$1, %edx
	movl	$18528, %ecx
	movups	%xmm0, 184(%rbp)
	call	calloc
	movq	8(%rax), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	je	.L5175
.L4772:
	movl	4(%rbx), %r12d
	movl	(%rbx), %esi
	xorl	%r9d, %r9d
	movl	$4, %r8d
	movl	%r12d, %edx
	movl	%esi, %ecx
	call	_ZL21stbi__mad3sizes_validiiii
	testl	%eax, %eax
	je	.L5793
	xorl	%r9d, %r9d
	movl	$4, %ecx
	movl	%r12d, %r8d
	movl	%esi, %edx
	call	_ZL17stbi__malloc_mad3iiii
	testq	%rax, %rax
	movq	%rax, %rcx
	movq	%rax, 8(%rbx)
	je	.L5794
	movl	40(%rbx), %edx
	andl	$28, %edx
	sarl	$2, %edx
	cmpl	$1, %edx
	je	.L4777
	jle	.L5795
	cmpl	$2, %edx
	je	.L4780
	cmpl	$3, %edx
	.p2align 4,,5
	jne	.L4788
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L4788
	movl	18504(%rbx), %esi
	cmpl	18512(%rbx), %esi
	jl	.L4794
	jmp	.L4788
	.p2align 4,,7
.L5796:
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rax
.L4794:
	movl	18500(%rbx), %r8d
	leal	(%r8,%rsi), %ecx
	movslq	%ecx, %r9
	leaq	(%rax,%r9), %rcx
	movl	18508(%rbx), %eax
	addq	%r9, %rdx
	subl	%r8d, %eax
	movslq	%eax, %r8
	call	memcpy
	movl	(%rbx), %eax
	leal	(%rsi,%rax,4), %esi
	cmpl	%esi, 18512(%rbx)
	jg	.L5796
.L4788:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$44, %al
	je	.L4796
	cmpb	$59, %al
	je	.L4797
	cmpb	$33, %al
	.p2align 4,,5
	je	.L5797
	leaq	.LC142(%rip), %rax
	movq	8(%rbx), %rdi
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L5178:
	xorl	%esi, %esi
	testq	%rdi, %rdi
	je	.L4829
	movq	%rdi, %rcx
	call	free
.L4829:
	movq	%rbx, %rcx
	call	free
	movq	%rsi, %rax
	jmp	.L5467
.L5797:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$-7, %al
	jne	.L4827
	.p2align 4,,3
	jmp	.L5798
	.p2align 4,,7
.L5799:
	movq	%rbp, %rcx
	.p2align 4,,6
	call	_ZL10stbi__skipP13stbi__contexti
.L4827:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	testl	%edx, %edx
	jne	.L5799
	jmp	.L4788
.L5805:
	leaq	.LC140(%rip), %rax
	movq	%rsi, %rbx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L4797:
	movq	8(%rbx), %rdi
	jmp	.L5178
.L5798:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	movq	%rbp, %rcx
	cmpl	$4, %edx
	je	.L5800
	call	_ZL10stbi__skipP13stbi__contexti
	jmp	.L4788
.L4796:
	movq	%rbp, %rcx
	.p2align 4,,5
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %edi
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %esi
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, %r12d
	call	_ZL13stbi__get16leP13stbi__context
	movl	(%rbx), %edx
	leal	(%rdi,%r12), %ecx
	cmpl	%edx, %ecx
	jg	.L4799
	leal	(%rsi,%rax), %ecx
	cmpl	4(%rbx), %ecx
	jg	.L4799
	sall	$2, %edx
	leal	0(,%rdi,4), %r8d
	movq	%rbp, %rcx
	imull	%edx, %esi
	movl	%edx, 18524(%rbx)
	imull	%edx, %eax
	leal	(%r8,%r12,4), %r9d
	movl	%r8d, 18500(%rbx)
	movl	%r8d, 18516(%rbx)
	movl	%esi, 18504(%rbx)
	movl	%r9d, 18508(%rbx)
	addl	%esi, %eax
	movl	%esi, 18520(%rbx)
	movl	%eax, 18512(%rbx)
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	testb	$64, %al
	movl	%edx, 18496(%rbx)
	je	.L4801
	movl	18524(%rbx), %edi
	movl	$3, %ecx
	leal	0(,%rdi,8), %edx
.L4802:
	testb	%al, %al
	movl	%ecx, 18488(%rbx)
	movl	%edx, 18492(%rbx)
	jns	.L4803
	testb	$1, 40(%rbx)
	movl	$-1, %r9d
	je	.L4804
	movl	36(%rbx), %r9d
.L4804:
	leaq	1072(%rbx), %rsi
	andl	$7, %eax
	movl	$2, %r8d
	movl	%eax, %ecx
	movl	$-1, %r12d
	sall	%cl, %r8d
	movq	%rsi, %rdx
	movq	%rbp, %rcx
	call	_ZL26stbi__gif_parse_colortableP13stbi__contextPA4_hii
	movq	%rsi, 18480(%rbx)
.L4805:
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	cmpb	$12, %al
	ja	.L4797
	movzbl	%al, %r8d
	movl	%eax, %ecx
	movl	$1, %edx
	leal	1(%r8), %eax
	movl	%edx, %edi
	sall	%cl, %edi
	movl	%eax, %ecx
	movl	%eax, 80(%rsp)
	sall	%cl, %edx
	leal	-1(%rdx), %eax
	leaq	2096(%rbx), %rdx
	movl	%eax, 88(%rsp)
	xorl	%eax, %eax
	.p2align 4,,7
.L4809:
	movb	%al, 2(%rdx)
	movb	%al, 3(%rdx)
	incl	%eax
	movw	$-1, (%rdx)
	addq	$4, %rdx
	cmpl	%eax, %edi
	jne	.L4809
	leal	2(%rdi), %eax
	movl	80(%rsp), %r15d
	xorl	%esi, %esi
	movl	$-1, %edx
	movl	%r12d, 96(%rsp)
	movl	$0, 64(%rsp)
	movl	%eax, 104(%rsp)
	movslq	%eax, %r13
	movl	88(%rsp), %eax
	movl	%esi, %r12d
	movl	$1, 72(%rsp)
	movq	%rbx, %rsi
	xorl	%r14d, %r14d
	movl	%edx, %ebx
	movl	%eax, 56(%rsp)
	leal	1(%rdi), %eax
	movl	%eax, 112(%rsp)
.L4810:
	cmpl	%r12d, %r15d
	jle	.L4811
.L5802:
	testl	%r14d, %r14d
	jne	.L4812
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %r14d
	testl	%r14d, %r14d
	je	.L5801
.L4812:
	movq	%rbp, %rcx
	decl	%r14d
	call	_ZL10stbi__get8P13stbi__context
	movl	%r12d, %ecx
	movzbl	%al, %eax
	addl	$8, %r12d
	sall	%cl, %eax
	orl	%eax, 64(%rsp)
	cmpl	%r12d, %r15d
	jg	.L5802
.L4811:
	movl	64(%rsp), %eax
	movl	56(%rsp), %r11d
	movl	%r15d, %ecx
	subl	%r15d, %r12d
	andl	%eax, %r11d
	movl	%r11d, %edx
	movl	%r11d, 48(%rsp)
	movl	%eax, %r11d
	sarl	%cl, %r11d
	cmpl	%edx, %edi
	movl	%r11d, 64(%rsp)
	je	.L5219
	movl	112(%rsp), %ecx
	cmpl	%ecx, %edx
	je	.L5803
	cmpl	%r13d, 48(%rsp)
	jg	.L4818
	movl	72(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L5804
	testl	%ebx, %ebx
	js	.L4820
	leal	1(%r13), %eax
	cmpl	$4096, %eax
	jg	.L5805
	leaq	(%rsi,%r13,4), %rcx
	movslq	%ebx, %rdx
	movw	%bx, 2096(%rcx)
	movl	48(%rsp), %ebx
	movzbl	2098(%rsi,%rdx,4), %edx
	cmpl	%eax, %ebx
	movb	%dl, 2098(%rcx)
	je	.L4822
	movslq	%ebx, %rdx
	movzbl	2098(%rsi,%rdx,4), %edx
.L4822:
	movb	%dl, 2099(%rcx)
	movslq	%eax, %r13
.L4823:
	movl	48(%rsp), %ebx
	movq	%rsi, %rcx
	movzwl	%bx, %edx
	call	_ZL18stbi__out_gif_codeP9stbi__gift
	testl	%r13d, 56(%rsp)
	jne	.L5220
	cmpl	$4095, %r13d
	jg	.L5220
	incl	%r15d
	movl	$1, %eax
	movl	%r15d, %ecx
	sall	%cl, %eax
	decl	%eax
	movl	%eax, 56(%rsp)
	jmp	.L4810
.L4803:
	testb	$-128, 24(%rbx)
	je	.L4806
	movslq	36(%rbx), %rax
	movl	$-1, %r12d
	testl	%eax, %eax
	js	.L4807
	testb	$1, 40(%rbx)
	je	.L4807
	movzbl	51(%rbx,%rax,4), %r12d
	movb	$0, 51(%rbx,%rax,4)
.L4807:
	leaq	48(%rbx), %rax
	movq	%rax, 18480(%rbx)
	jmp	.L4805
.L4806:
	leaq	.LC138(%rip), %rax
	movq	8(%rbx), %rdi
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5178
	.p2align 4,,7
.L4820:
	cmpl	%r13d, 48(%rsp)
	jne	.L4823
.L4818:
	leaq	.LC141(%rip), %rax
	movq	%rsi, %rbx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4797
	.p2align 4,,7
.L5220:
	movl	48(%rsp), %ebx
	jmp	.L4810
.L5219:
	movl	88(%rsp), %eax
	movslq	104(%rsp), %r13
	movl	$-1, %ebx
	movl	80(%rsp), %r15d
	movl	$0, 72(%rsp)
	movl	%eax, 56(%rsp)
	jmp	.L4810
.L5801:
	movq	%rsi, %rbx
	movl	96(%rsp), %r12d
	movq	8(%rsi), %rsi
.L4813:
	testq	%rsi, %rsi
	je	.L4775
	cmpl	$-1, %r12d
	je	.L4824
	movslq	36(%rbx), %rax
	movb	%r12b, 51(%rbx,%rax,4)
.L4824:
	cmpq	%rsi, %rbp
	je	.L5806
	movq	552(%rsp), %rax
	movl	(%rbx), %r9d
	testl	$-5, 576(%rsp)
	movq	560(%rsp), %rdi
	movl	%r9d, (%rax)
	movl	4(%rbx), %eax
	movl	%eax, (%rdi)
	je	.L4829
	movl	576(%rsp), %r8d
	movq	%rsi, %rcx
	movl	%eax, 32(%rsp)
	movl	$4, %edx
	call	_ZL20stbi__convert_formatPhiijj
	movq	%rax, %rsi
	jmp	.L4829
.L5794:
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
.L4775:
	xorl	%esi, %esi
	jmp	.L4829
.L5806:
	movq	%rbp, %rdi
	jmp	.L5178
.L4801:
	movl	18524(%rbx), %edx
	xorl	%ecx, %ecx
	jmp	.L4802
.L4799:
	leaq	.LC137(%rip), %rax
	movq	8(%rbx), %rdi
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5178
.L5804:
	leaq	.LC139(%rip), %rax
	movq	%rsi, %rbx
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L4797
.L5803:
	movl	96(%rsp), %r12d
	movq	%rsi, %rbx
	movl	%r14d, %edx
.L5692:
	movq	%rbp, %rcx
	call	_ZL10stbi__skipP13stbi__contexti
	movq	%rbp, %rcx
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %edx
	testl	%edx, %edx
	jne	.L5692
	movq	8(%rbx), %rsi
	jmp	.L4813
.L5795:
	testl	%edx, %edx
	jne	.L4788
	movl	(%rbx), %edx
	movl	4(%rbx), %r10d
	movslq	28(%rbx), %rax
	leal	0(,%rdx,4), %r9d
	imull	%r9d, %r10d
	leaq	48(%rbx,%rax,4), %rcx
	testl	%r10d, %r10d
	jle	.L4788
	leal	-1(%r9), %eax
	xorl	%r8d, %r8d
	shrl	$2, %eax
	leaq	4(,%rax,4), %rsi
.L4786:
	testl	%r9d, %r9d
	jle	.L4783
	movslq	%r8d, %rax
	leaq	(%rsi,%rax), %rdi
	.p2align 4,,7
.L4784:
	movzbl	2(%rcx), %r11d
	movq	%rax, %rdx
	addq	8(%rbx), %rdx
	addq	$4, %rax
	cmpq	%rdi, %rax
	movb	%r11b, (%rdx)
	movzbl	1(%rcx), %r11d
	movb	%r11b, 1(%rdx)
	movzbl	(%rcx), %r11d
	movb	$0, 3(%rdx)
	movb	%r11b, 2(%rdx)
	jne	.L4784
	movl	(%rbx), %edx
.L4783:
	leal	(%r8,%rdx,4), %r8d
	cmpl	%r8d, %r10d
	jg	.L4786
	jmp	.L4788
.L4780:
	testq	%rdi, %rdi
	je	.L4789
	movl	(%rbx), %eax
	movq	%rdi, %rdx
	leal	0(,%rax,4), %r8d
	imull	4(%rbx), %r8d
	movslq	%r8d, %r8
	call	memcpy
.L4789:
	movl	18512(%rbx), %edi
	movl	18504(%rbx), %r8d
	movslq	28(%rbx), %rax
	movl	18508(%rbx), %esi
	movl	18500(%rbx), %r10d
	cmpl	%r8d, %edi
	leaq	48(%rbx,%rax,4), %rcx
	jle	.L4788
	leal	-1(%rsi), %eax
	movslq	%r10d, %r11
	subq	%r10, %rax
	andl	$4294967292, %eax
	leaq	4(%rax,%r11), %r12
.L4791:
	movslq	%r8d, %r9
	leaq	(%r9,%r11), %rdx
	addq	%r12, %r9
	cmpl	%r10d, %esi
	jle	.L4792
	.p2align 4,,7
.L4793:
	movzbl	2(%rcx), %r13d
	movq	%rdx, %rax
	addq	8(%rbx), %rax
	addq	$4, %rdx
	cmpq	%r9, %rdx
	movb	%r13b, (%rax)
	movzbl	1(%rcx), %r13d
	movb	%r13b, 1(%rax)
	movzbl	(%rcx), %r13d
	movb	$0, 3(%rax)
	movb	%r13b, 2(%rax)
	jne	.L4793
.L4792:
	movl	(%rbx), %eax
	leal	(%r8,%rax,4), %r8d
	cmpl	%r8d, %edi
	jg	.L4791
	jmp	.L4788
.L5800:
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	movq	%rbp, %rcx
	movl	%eax, 40(%rbx)
	call	_ZL13stbi__get16leP13stbi__context
	movq	%rbp, %rcx
	movl	%eax, 44(%rbx)
	call	_ZL10stbi__get8P13stbi__context
	movzbl	%al, %eax
	movl	%eax, 36(%rbx)
	jmp	.L4827
.L4777:
	testq	%rdi, %rdi
	je	.L4787
	movl	(%rbx), %eax
	movq	%rdi, %rdx
	leal	0(,%rax,4), %r8d
	imull	4(%rbx), %r8d
	movslq	%r8d, %r8
	call	memcpy
.L4787:
	movq	%rdi, 16(%rbx)
	jmp	.L4788
.L5793:
	leaq	.LC61(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5178
.L5175:
	movq	568(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	call	_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii
	testl	%eax, %eax
	movq	8(%rbx), %rdi
	je	.L5178
	jmp	.L4772
.L5760:
	movl	48(%rsp), %r8d
	movl	56(%rsp), %edx
	xorl	%r9d, %r9d
	movl	$8, %ecx
	call	_ZL17stbi__malloc_mad3iiii
	movq	%rax, %rbx
	movq	584(%rsp), %rax
	movl	$16, (%rax)
	jmp	.L4842
.L5792:
	movq	%rdx, 184(%rbp)
	movl	$4, %edx
	subl	%ecx, %edx
	movq	40(%rbp), %rcx
	call	*24(%rbp)
	jmp	.L5094
.L5092:
	movq	184(%rbp), %rax
	jmp	.L5093
.L5791:
	movq	%rdx, 184(%rbp)
	movl	$4, %edx
	subl	%ecx, %edx
	movq	40(%rbp), %rcx
	call	*24(%rbp)
	jmp	.L5091
.L5089:
	movq	184(%rbp), %rax
	jmp	.L5090
.L5772:
	movl	(%rbx), %r14d
	jmp	.L4704
.L5784:
	call	*18552(%r15)
	movq	(%r15), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L4725
	movq	184(%rsp), %rcx
	xorl	%edx, %edx
.L4732:
	movl	%edx, %eax
	incl	%edx
	movzbl	(%rcx,%rax), %r8d
	movzbl	(%rbx), %eax
	notl	%eax
	movzbl	%al, %eax
	imull	%r8d, %eax
	subl	$-128, %eax
	movl	%eax, %r9d
	shrl	$8, %r9d
	addl	%r9d, %eax
	shrl	$8, %eax
	movb	%al, (%rbx)
	movzbl	1(%rbx), %eax
	notl	%eax
	movzbl	%al, %eax
	imull	%r8d, %eax
	subl	$-128, %eax
	movl	%eax, %r9d
	shrl	$8, %r9d
	addl	%r9d, %eax
	shrl	$8, %eax
	movb	%al, 1(%rbx)
	movzbl	2(%rbx), %eax
	notl	%eax
	movzbl	%al, %eax
	imull	%r8d, %eax
	subl	$-128, %eax
	movl	%eax, %r8d
	shrl	$8, %r8d
	addl	%r8d, %eax
	shrl	$8, %eax
	movb	%al, 2(%rbx)
	movq	(%r15), %rax
	addq	64(%rsp), %rbx
	cmpl	%edx, (%rax)
	ja	.L4732
	jmp	.L4725
.L5782:
	leaq	.LC133(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5172
.L5781:
	leaq	.LC132(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5172
.L5211:
	movq	88(%rsp), %rbx
	jmp	.L4636
.L5257:
	leaq	.LC134(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	movq	(%r15), %rax
	movl	8(%rax), %edx
	jmp	.L5172
.L4659:
	movl	18484(%r15), %edi
	testl	%edi, %edi
	jne	.L5257
	testl	%edx, %edx
	jne	.L5257
	testb	%al, %al
	jne	.L5257
	movl	$63, 18488(%r15)
	jmp	.L4661
.L4713:
	movl	8(%rax), %edx
	jmp	.L5691
	.seh_endproc
	.section .rdata,"dr"
.LC154:
	.ascii "ri.bits_per_channel == 16\0"
	.text
	.p2align 4,,15
	.def	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i:
.LFB583:
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
	leaq	96(%rsp), %rax
	movl	$8, 48(%rsp)
	movq	%rdx, %r14
	movq	%r8, %r13
	movq	%r9, %r12
	movq	%rax, 40(%rsp)
	movl	%esi, 32(%rsp)
	call	_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L5845
	movl	96(%rsp), %eax
	movq	%rdi, %rbx
	cmpl	$8, %eax
	je	.L5809
	cmpl	$16, %eax
	je	.L5810
	leaq	.LC3(%rip), %rdx
	leaq	.LC154(%rip), %rcx
	movl	$1041, %r8d
	call	_assert
.L5810:
	testl	%esi, %esi
	movl	%esi, %ebp
	je	.L5899
.L5811:
	movl	0(%r13), %eax
	imull	(%r14), %eax
	imull	%eax, %ebp
	movslq	%ebp, %r15
	movq	%r15, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5812
	testl	%ebp, %ebp
	jle	.L5823
	leaq	(%rdi,%r15,2), %rax
	cmpq	%rax, %rbx
	setnb	%dl
	addq	%rbx, %r15
	cmpq	%r15, %rdi
	setnb	%al
	orb	%al, %dl
	je	.L5815
	cmpl	$17, %ebp
	jbe	.L5815
	movq	%rdi, %rdx
	andl	$15, %edx
	shrq	%rdx
	negq	%rdx
	andl	$7, %edx
	cmpl	%ebp, %edx
	cmova	%ebp, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L5816
	movzwl	(%rdi), %eax
	shrw	$8, %ax
	cmpl	$1, %edx
	movb	%al, (%rbx)
	je	.L5849
	movzbl	3(%rdi), %eax
	cmpl	$2, %edx
	movb	%al, 1(%rbx)
	je	.L5850
	movzbl	5(%rdi), %eax
	cmpl	$3, %edx
	movb	%al, 2(%rbx)
	je	.L5851
	movzbl	7(%rdi), %eax
	cmpl	$4, %edx
	movb	%al, 3(%rbx)
	je	.L5852
	movzbl	9(%rdi), %eax
	cmpl	$5, %edx
	movb	%al, 4(%rbx)
	je	.L5853
	movzbl	11(%rdi), %eax
	cmpl	$6, %edx
	movb	%al, 5(%rbx)
	je	.L5854
	movzbl	13(%rdi), %eax
	movb	%al, 6(%rbx)
	movl	$7, %eax
.L5816:
	movl	%ebp, %r9d
	leal	-1(%rbp), %r15d
	movl	%edx, %ecx
	subl	%edx, %r9d
	leal	-16(%r9), %r8d
	subl	%edx, %r15d
	shrl	$4, %r8d
	leal	1(%r8), %r11d
	movl	%r11d, %r10d
	sall	$4, %r10d
	cmpl	$14, %r15d
	jbe	.L5818
	subl	$4, %r8d
	leaq	(%rdi,%rcx,2), %rdx
	addq	%rbx, %rcx
	cmpl	$-6, %r8d
	ja	.L5855
	shrl	$2, %r8d
	movdqa	.LC2(%rip), %xmm0
	leal	4(,%r8,4), %r15d
	xorl	%r8d, %r8d
.L5820:
	movdqa	(%rdx), %xmm1
	prefetcht0	560(%rdx)
	prefetcht0	624(%rdx)
	addl	$4, %r8d
	prefetcht0	272(%rcx)
	subq	$-128, %rdx
	movdqa	-112(%rdx), %xmm2
	psrlw	$8, %xmm1
	pand	%xmm0, %xmm1
	addq	$64, %rcx
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm1
	movups	%xmm1, -64(%rcx)
	movdqa	-96(%rdx), %xmm1
	movdqa	-80(%rdx), %xmm2
	psrlw	$8, %xmm1
	pand	%xmm0, %xmm1
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm1
	movups	%xmm1, -48(%rcx)
	movdqa	-64(%rdx), %xmm1
	movdqa	-48(%rdx), %xmm2
	psrlw	$8, %xmm1
	pand	%xmm0, %xmm1
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm1
	movups	%xmm1, -32(%rcx)
	movdqa	-32(%rdx), %xmm1
	movdqa	-16(%rdx), %xmm2
	psrlw	$8, %xmm1
	pand	%xmm0, %xmm1
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm1
	movups	%xmm1, -16(%rcx)
	cmpl	%r15d, %r8d
	jne	.L5820
.L5819:
	xorl	%r8d, %r8d
.L5825:
	movdqa	(%rdx,%r8,2), %xmm1
	incl	%r15d
	movdqa	16(%rdx,%r8,2), %xmm2
	psrlw	$8, %xmm1
	pand	%xmm0, %xmm1
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm1
	movups	%xmm1, (%rcx,%r8)
	addq	$16, %r8
	cmpl	%r11d, %r15d
	jb	.L5825
	addl	%r10d, %eax
	cmpl	%r10d, %r9d
	je	.L5823
.L5818:
	movslq	%eax, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	1(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	2(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	3(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	4(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	5(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	6(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	7(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	8(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	9(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	10(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	11(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	12(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	movzbl	1(%rdi,%rdx,2), %ecx
	movb	%cl, (%rbx,%rdx)
	leal	13(%rax), %edx
	cmpl	%edx, %ebp
	jle	.L5823
	movslq	%edx, %rdx
	addl	$14, %eax
	movzbl	1(%rdi,%rdx,2), %ecx
	cmpl	%eax, %ebp
	movb	%cl, (%rbx,%rdx)
	jle	.L5823
	cltq
	movzbl	1(%rdi,%rax,2), %edx
	movb	%dl, (%rbx,%rax)
.L5823:
	movq	%rdi, %rcx
	call	free
.L5814:
	movl	$8, 96(%rsp)
.L5809:
	movl	_ZL29stbi__vertically_flip_on_load(%rip), %edx
	movq	%rbx, %rax
	testl	%edx, %edx
	je	.L5808
	movl	(%r14), %eax
	testl	%esi, %esi
	movl	%eax, 72(%rsp)
	movl	0(%r13), %eax
	je	.L5900
.L5828:
	movl	%eax, %edi
	sarl	%edi
	testl	%edi, %edi
	movl	%edi, 92(%rsp)
	jle	.L5858
	decl	%eax
	xorl	%r15d, %r15d
	movl	$0, 88(%rsp)
	imull	72(%rsp), %eax
	movl	%eax, %r14d
	leal	-1(%rsi), %eax
	movl	%eax, 76(%rsp)
	incq	%rax
	movq	%rax, 80(%rsp)
	.p2align 4,,7
.L5830:
	movl	72(%rsp), %eax
	xorl	%edi, %edi
	testl	%eax, %eax
	jle	.L5832
	.p2align 4,,7
.L5893:
	testl	%esi, %esi
	jle	.L5842
	leal	(%rdi,%r14), %edx
	leal	(%rdi,%r15), %eax
	imull	%esi, %edx
	imull	%esi, %eax
	movslq	%edx, %r10
	leaq	16(%r10), %rcx
	movslq	%eax, %r9
	cmpq	%rcx, %r9
	leaq	16(%r9), %rcx
	setge	%r8b
	cmpq	%rcx, %r10
	setge	%cl
	orb	%cl, %r8b
	je	.L5834
	cmpl	$18, %esi
	jbe	.L5834
	leaq	(%rbx,%r9), %r11
	movq	%r11, %r8
	negq	%r8
	andl	$15, %r8d
	cmpl	%esi, %r8d
	cmova	%esi, %r8d
	xorl	%ecx, %ecx
	testl	%r8d, %r8d
	je	.L5835
	leaq	(%rbx,%r10), %rcx
	movzbl	(%r11), %ebp
	cmpl	$1, %r8d
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5860
	leal	1(%rax), %r11d
	leal	1(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$2, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5861
	leal	2(%rax), %r11d
	leal	2(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$3, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5862
	leal	3(%rax), %r11d
	leal	3(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$4, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5863
	leal	4(%rax), %r11d
	leal	4(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$5, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5864
	leal	5(%rax), %r11d
	leal	5(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$6, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5865
	leal	6(%rax), %r11d
	leal	6(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$7, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5866
	leal	7(%rax), %r11d
	leal	7(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$8, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5867
	leal	8(%rax), %r11d
	leal	8(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$9, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5868
	leal	9(%rax), %r11d
	leal	9(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$10, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5869
	leal	10(%rax), %r11d
	leal	10(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$11, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5870
	leal	11(%rax), %r11d
	leal	11(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$12, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5871
	leal	12(%rax), %r11d
	leal	12(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$13, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5872
	leal	13(%rax), %r11d
	leal	13(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %r11
	addq	%rbx, %rcx
	cmpl	$14, %r8d
	movzbl	(%r11), %ebp
	movzbl	(%rcx), %r12d
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	je	.L5873
	leal	14(%rax), %r11d
	leal	14(%rdx), %ecx
	movslq	%r11d, %r11
	movslq	%ecx, %rcx
	addq	%rbx, %rcx
	addq	%rbx, %r11
	movzbl	(%rcx), %r12d
	movzbl	(%r11), %ebp
	movb	%r12b, (%r11)
	movb	%bpl, (%rcx)
	movl	$15, %ecx
.L5835:
	movl	%esi, %r12d
	movl	%r8d, %r11d
	movl	76(%rsp), %ebp
	subl	%r8d, %r12d
	movq	%r11, 64(%rsp)
	leal	-16(%r12), %r11d
	subl	%r8d, %ebp
	shrl	$4, %r11d
	incl	%r11d
	movl	%r11d, %r13d
	sall	$4, %r13d
	cmpl	$14, %ebp
	jbe	.L5837
	movq	64(%rsp), %r8
	xorl	%ebp, %ebp
	addq	%r8, %r9
	addq	%r8, %r10
	xorl	%r8d, %r8d
	addq	%rbx, %r9
	addq	%rbx, %r10
.L5839:
	movdqa	(%r9,%r8), %xmm0
	incl	%ebp
	movdqu	(%r10,%r8), %xmm1
	movaps	%xmm1, (%r9,%r8)
	movups	%xmm0, (%r10,%r8)
	addq	$16, %r8
	cmpl	%r11d, %ebp
	jb	.L5839
	addl	%r13d, %ecx
	cmpl	%r13d, %r12d
	je	.L5842
	.p2align 4,,7
.L5837:
	leal	(%rax,%rcx), %r9d
	leal	(%rdx,%rcx), %r8d
	movslq	%r9d, %r9
	movslq	%r8d, %r8
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	1(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	2(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%r8,%rax), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	3(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	4(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	5(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	6(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	7(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	8(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	9(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	10(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	11(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	12(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	leal	13(%rcx), %r8d
	cmpl	%r8d, %esi
	jle	.L5842
	leal	(%rax,%r8), %r9d
	addl	%edx, %r8d
	addl	$14, %ecx
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	addq	%rbx, %r8
	addq	%rbx, %r9
	movzbl	(%r8), %r11d
	cmpl	%ecx, %esi
	movzbl	(%r9), %r10d
	movb	%r11b, (%r9)
	movb	%r10b, (%r8)
	jle	.L5842
	leal	(%rax,%rcx), %r8d
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movslq	%r8d, %r8
	addq	%rbx, %rax
	addq	%rbx, %r8
	movzbl	(%rax), %edx
	movzbl	(%r8), %r9d
	movb	%dl, (%r8)
	movb	%r9b, (%rax)
.L5842:
	incl	%edi
	cmpl	%edi, 72(%rsp)
	jg	.L5893
.L5832:
	movl	72(%rsp), %edi
	incl	88(%rsp)
	movl	88(%rsp), %eax
	addl	%edi, %r15d
	subl	%edi, %r14d
	cmpl	%eax, 92(%rsp)
	jne	.L5830
.L5858:
	movq	%rbx, %rax
.L5808:
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
	.p2align 4,,7
.L5834:
	movq	80(%rsp), %rdx
	leaq	(%rbx,%r9), %rax
	leaq	(%rdx,%r9), %r11
	addq	%rbx, %r11
	.p2align 4,,7
.L5844:
	movq	%rax, %rdx
	movzbl	(%rax), %ecx
	incq	%rax
	subq	%r9, %rdx
	movzbl	(%rdx,%r10), %r8d
	movb	%r8b, -1(%rax)
	cmpq	%r11, %rax
	movb	%cl, (%rdx,%r10)
	jne	.L5844
	jmp	.L5842
	.p2align 4,,7
.L5873:
	movl	$14, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5872:
	movl	$13, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5871:
	movl	$12, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5870:
	movl	$11, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5869:
	movl	$10, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5868:
	movl	$9, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5867:
	movl	$8, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5866:
	movl	$7, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5865:
	movl	$6, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5864:
	movl	$5, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5863:
	movl	$4, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5862:
	movl	$3, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5861:
	movl	$2, %ecx
	jmp	.L5835
	.p2align 4,,7
.L5860:
	movl	$1, %ecx
	jmp	.L5835
.L5899:
	movl	(%r12), %ebp
	jmp	.L5811
.L5900:
	movl	(%r12), %esi
	jmp	.L5828
.L5815:
	xorl	%eax, %eax
	.p2align 4,,7
.L5827:
	movzbl	1(%rdi,%rax,2), %edx
	movb	%dl, (%rbx,%rax)
	incq	%rax
	cmpl	%eax, %ebp
	jg	.L5827
	jmp	.L5823
.L5854:
	movl	$6, %eax
	jmp	.L5816
.L5853:
	movl	$5, %eax
	jmp	.L5816
.L5852:
	movl	$4, %eax
	jmp	.L5816
.L5851:
	movl	$3, %eax
	jmp	.L5816
.L5850:
	movl	$2, %eax
	jmp	.L5816
.L5849:
	movl	$1, %eax
	jmp	.L5816
.L5855:
	xorl	%r15d, %r15d
	movdqa	.LC2(%rip), %xmm0
	jmp	.L5819
.L5812:
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5814
.L5845:
	xorl	%eax, %eax
	jmp	.L5808
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_load_from_file
	.def	stbi_load_from_file;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_load_from_file
stbi_load_from_file:
.LFB588:
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
	leaq	64(%rsp), %rbx
	movq	%r9, 56(%rsp)
	movq	%rcx, %rdi
	movq	%r8, %r12
	leaq	56(%rbx), %rsi
	movq	%rax, 80(%rsp)
	movq	%rcx, 104(%rsp)
	movq	%rdx, 88(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movl	$128, %r8d
	movl	$128, 116(%rsp)
	movl	$1, 112(%rsp)
	movq	%rsi, 264(%rsp)
	movq	%rdx, 96(%rsp)
	movq	%rsi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	movq	56(%rsp), %r9
	addq	%rsi, %rdx
	testl	%eax, %eax
	jne	.L5903
	leaq	57(%rbx), %rdx
	movl	$0, 112(%rsp)
	movb	$0, 120(%rsp)
.L5903:
	leaq	56(%rbx), %rax
	movq	%rdx, 256(%rsp)
	movq	%rdx, 272(%rsp)
	movq	%rbx, %rcx
	movq	%r12, %r8
	movq	%rbp, %rdx
	movq	%rax, 248(%rsp)
	movl	368(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5904
	movl	248(%rsp), %edx
	subl	256(%rsp), %edx
	movl	$1, %r8d
	movq	%rdi, %rcx
	call	fseek
.L5904:
	movq	%rbx, %rax
	addq	$288, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_load_from_memory
	.def	stbi_load_from_memory;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_load_from_memory
stbi_load_from_memory:
.LFB591:
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	movslq	%edx, %rax
	movq	%rcx, 248(%rsp)
	movq	%rcx, 232(%rsp)
	addq	%rax, %rcx
	movl	328(%rsp), %eax
	movq	%r8, %r10
	movq	%r9, %r8
	movq	320(%rsp), %r9
	movq	%rcx, 256(%rsp)
	movq	%rcx, 240(%rsp)
	leaq	48(%rsp), %rcx
	movq	%r10, %rdx
	movl	%eax, 32(%rsp)
	movq	$0, 64(%rsp)
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
.LFB592:
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
	movq	(%rcx), %rax
	movq	%rdx, %r10
	movq	8(%rcx), %rdx
	leaq	48(%rsp), %rbx
	movq	%r8, %rdi
	movq	%r9, %rbp
	movq	%r10, 88(%rsp)
	leaq	56(%rbx), %rsi
	movq	%rax, 64(%rsp)
	movl	$128, 100(%rsp)
	movq	%rdx, 72(%rsp)
	movq	16(%rcx), %rdx
	movl	$128, %r8d
	movl	$1, 96(%rsp)
	movq	%rsi, 248(%rsp)
	movq	%r10, %rcx
	movq	%rdx, 80(%rsp)
	movq	%rsi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	addq	%rsi, %rdx
	testl	%eax, %eax
	jne	.L5911
	leaq	57(%rbx), %rdx
	movl	$0, 96(%rsp)
	movb	$0, 104(%rsp)
.L5911:
	leaq	56(%rbx), %rax
	movq	352(%rsp), %r9
	movq	%rdx, 240(%rsp)
	movq	%rdx, 256(%rsp)
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rax, 232(%rsp)
	movl	360(%rsp), %eax
	movq	%rbx, %rcx
	movl	%eax, 32(%rsp)
	call	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i
_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i:
.LFB593:
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
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	movaps	%xmm7, 128(%rsp)
	.seh_savexmm	%xmm7, 128
	movaps	%xmm8, 144(%rsp)
	.seh_savexmm	%xmm8, 144
	movaps	%xmm9, 160(%rsp)
	.seh_savexmm	%xmm9, 160
	.seh_endprologue
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movq	%r8, %rsi
	movl	288(%rsp), %r14d
	movq	%r9, %rdi
	call	_ZL14stbi__hdr_testP13stbi__context
	testl	%eax, %eax
	movl	%eax, %ebx
	movq	%rdi, %r9
	movl	%r14d, 32(%rsp)
	movq	%rsi, %r8
	movq	%rbp, %rdx
	movq	%r12, %rcx
	je	.L5913
	call	_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.isra.34
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.L5914
	movl	_ZL29stbi__vertically_flip_on_load(%rip), %ecx
	movq	%r15, %rax
	testl	%ecx, %ecx
	je	.L5914
	movl	0(%rbp), %eax
	testl	%r14d, %r14d
	movl	%eax, 80(%rsp)
	movl	(%rsi), %eax
	jne	.L5915
	movl	(%rdi), %r14d
.L5915:
	movl	%eax, %esi
	sarl	%esi
	testl	%esi, %esi
	movl	%esi, 108(%rsp)
	jle	.L5948
	decl	%eax
	movl	$0, 104(%rsp)
	movl	$0, 96(%rsp)
	imull	80(%rsp), %eax
	movl	%eax, 100(%rsp)
	movslq	%r14d, %rax
	movq	%rax, 56(%rsp)
	salq	$2, %rax
	movq	%rax, 48(%rsp)
	movl	$16, %eax
	subq	%r15, %rax
	movq	%rax, 88(%rsp)
	.p2align 4,,7
.L5917:
	movl	80(%rsp), %edx
	testl	%edx, %edx
	jle	.L5919
	movl	104(%rsp), %r10d
	movl	100(%rsp), %r8d
	xorl	%esi, %esi
	imull	%r14d, %r10d
	imull	%r14d, %r8d
	movslq	%r10d, %r12
	movslq	%r8d, %rcx
	subl	%r10d, %r8d
	leaq	(%r15,%r12,4), %rax
	leaq	(%r15,%rcx,4), %rdx
	movl	%r8d, 64(%rsp)
	movq	%rcx, %r13
	jmp	.L5920
	.p2align 4,,7
.L5973:
	cmpl	$7, %r14d
	jbe	.L5921
	movq	%rax, %r9
	andl	$15, %r9d
	shrq	$2, %r9
	negq	%r9
	andl	$3, %r9d
	cmpl	%r14d, %r9d
	cmova	%r14d, %r9d
	xorl	%ecx, %ecx
	testl	%r9d, %r9d
	je	.L5922
	movss	(%rax), %xmm0
	cmpl	$1, %r9d
	movl	$1, %ecx
	movss	(%rdx), %xmm1
	movss	%xmm1, (%rax)
	movss	%xmm0, (%rdx)
	je	.L5922
	movss	4(%rax), %xmm0
	cmpl	$2, %r9d
	movl	$2, %ecx
	movss	4(%rdx), %xmm1
	movss	%xmm1, 4(%rax)
	movss	%xmm0, 4(%rdx)
	je	.L5922
	movss	8(%rax), %xmm0
	movl	$3, %ecx
	movss	8(%rdx), %xmm1
	movss	%xmm1, 8(%rax)
	movss	%xmm0, 8(%rdx)
.L5922:
	movl	%r14d, %edi
	movl	%r9d, %r8d
	subl	%r9d, %edi
	leaq	(%r8,%r12), %r11
	addq	%r13, %r8
	leal	-4(%rdi), %r9d
	movl	%edi, 72(%rsp)
	leaq	(%r15,%r11,4), %rdi
	leaq	(%r15,%r8,4), %r11
	xorl	%r8d, %r8d
	shrl	$2, %r9d
	incl	%r9d
	leal	0(,%r9,4), %ebx
	movl	%ebx, 84(%rsp)
	xorl	%ebx, %ebx
.L5925:
	movlps	(%r11,%r8), %xmm0
	movaps	(%rdi,%r8), %xmm1
	incl	%ebx
	movhps	8(%r11,%r8), %xmm0
	movaps	%xmm0, (%rdi,%r8)
	movlps	%xmm1, (%r11,%r8)
	movhps	%xmm1, 8(%r11,%r8)
	addq	$16, %r8
	cmpl	%r9d, %ebx
	jb	.L5925
	movl	84(%rsp), %edi
	addl	%edi, %ecx
	cmpl	%edi, 72(%rsp)
	je	.L5928
	leal	(%r10,%rcx), %r8d
	movslq	%r8d, %r8
	leaq	(%r15,%r8,4), %r9
	leal	(%rcx,%rbp), %r8d
	movslq	%r8d, %r8
	movss	(%r9), %xmm0
	leaq	(%r15,%r8,4), %r8
	movss	(%r8), %xmm1
	movss	%xmm1, (%r9)
	movss	%xmm0, (%r8)
	leal	1(%rcx), %r8d
	cmpl	%r8d, %r14d
	jle	.L5928
	leal	(%r8,%r10), %r9d
	addl	%ebp, %r8d
	addl	$2, %ecx
	movslq	%r8d, %r8
	cmpl	%ecx, %r14d
	movslq	%r9d, %r9
	leaq	(%r15,%r8,4), %r8
	leaq	(%r15,%r9,4), %r9
	movss	(%r8), %xmm1
	movss	(%r9), %xmm0
	movss	%xmm1, (%r9)
	movss	%xmm0, (%r8)
	jle	.L5928
	leal	(%r10,%rcx), %r8d
	addl	%ebp, %ecx
	movslq	%ecx, %rcx
	movslq	%r8d, %r8
	leaq	(%r15,%rcx,4), %rcx
	leaq	(%r15,%r8,4), %r8
	movss	(%rcx), %xmm1
	movss	(%r8), %xmm0
	movss	%xmm1, (%r8)
	movss	%xmm0, (%rcx)
.L5928:
	movq	48(%rsp), %rbx
	incl	%esi
	addl	%r14d, %r10d
	movq	56(%rsp), %rdi
	addq	%rbx, %rax
	addq	%rbx, %rdx
	addq	%rdi, %r12
	addq	%rdi, %r13
	cmpl	%esi, 80(%rsp)
	je	.L5919
.L5920:
	testl	%r14d, %r14d
	jle	.L5928
	movl	64(%rsp), %ebx
	movq	%rax, %r8
	movq	%rdx, %r9
	subq	%r15, %r8
	leal	(%r10,%rbx), %ebp
	movq	88(%rsp), %rbx
	leaq	(%rdx,%rbx), %rcx
	cmpq	%rcx, %r8
	leaq	(%rax,%rbx), %r8
	setge	%cl
	subq	%r15, %r9
	cmpq	%r8, %r9
	setge	%r8b
	orb	%r8b, %cl
	jne	.L5973
.L5921:
	xorl	%ecx, %ecx
	.p2align 4,,7
.L5930:
	movss	(%rax,%rcx,4), %xmm0
	movss	(%rdx,%rcx,4), %xmm1
	movss	%xmm1, (%rax,%rcx,4)
	movss	%xmm0, (%rdx,%rcx,4)
	incq	%rcx
	cmpl	%ecx, %r14d
	jg	.L5930
	jmp	.L5928
	.p2align 4,,7
.L5913:
	call	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
	testq	%rax, %rax
	movq	%rax, 64(%rsp)
	je	.L5931
	testl	%r14d, %r14d
	jne	.L5932
	movl	(%rdi), %r14d
.L5932:
	movl	0(%rbp), %r8d
	movl	(%rsi), %ecx
	movl	%r8d, %eax
	shrl	$31, %eax
	jne	.L5936
	movl	%ecx, %eax
	shrl	$31, %eax
	jne	.L5936
	testl	%ecx, %ecx
	je	.L5935
	movl	$2147483647, %eax
	cltd
	idivl	%ecx
	cmpl	%eax, %r8d
	jg	.L5936
.L5935:
	imull	%r8d, %ecx
	testl	%r14d, %r14d
	movl	%ecx, 80(%rsp)
	js	.L5936
	je	.L5937
	movl	$2147483647, %eax
	cltd
	idivl	%r14d
	cmpl	%eax, %ecx
	jg	.L5936
	imull	%r14d, %ecx
	cmpl	$536870911, %ecx
	movl	%ecx, %ebx
	jg	.L5936
.L5937:
	leal	0(,%rbx,4), %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, 72(%rsp)
	je	.L5936
	movl	%r14d, %eax
	movl	%r14d, %edi
	andl	$1, %eax
	cmpl	$1, %eax
	movl	80(%rsp), %eax
	sbbl	$0, %edi
	testl	%eax, %eax
	je	.L5943
	movslq	%r14d, %rax
	movss	.LC149(%rip), %xmm8
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rbx
	movl	$0, %r13d
	movq	%rax, 48(%rsp)
	movaps	%xmm8, %xmm9
	salq	$2, %rax
	testl	%edi, %edi
	cmovns	%edi, %r13d
	movq	%rax, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	.p2align 4,,7
.L5944:
	testl	%edi, %edi
	jle	.L5940
	cvtss2sd	_ZL15stbi__l2h_gamma(%rip), %xmm7
	xorl	%r15d, %r15d
	cvtss2sd	_ZL15stbi__l2h_scale(%rip), %xmm6
	.p2align 4,,7
.L5941:
	movzbl	(%rsi,%r15), %edx
	movsd	%xmm7, %xmm1
	cvtsi2ss	%edx, %xmm0
	divss	%xmm8, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	pow
	mulsd	%xmm6, %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, (%rbx,%r15,4)
	incq	%r15
	cmpl	%r15d, %edi
	jg	.L5941
.L5940:
	cmpl	%r13d, %r14d
	jle	.L5942
	leal	(%r12,%r13), %eax
	movq	64(%rsp), %rdx
	cltq
	movzbl	(%rdx,%rax), %edx
	cvtsi2ss	%edx, %xmm0
	movq	72(%rsp), %rdx
	divss	%xmm9, %xmm0
	movss	%xmm0, (%rdx,%rax,4)
.L5942:
	incl	%ebp
	addl	%r14d, %r12d
	addq	48(%rsp), %rsi
	addq	56(%rsp), %rbx
	cmpl	80(%rsp), %ebp
	jne	.L5944
.L5943:
	movq	64(%rsp), %rcx
	call	free
	movq	72(%rsp), %rax
.L5914:
	movaps	112(%rsp), %xmm6
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
	movaps	160(%rsp), %xmm9
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
.L5936:
	movq	64(%rsp), %rcx
	call	free
	leaq	.LC7(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5914
	.p2align 4,,7
.L5919:
	incl	96(%rsp)
	movl	80(%rsp), %edx
	movl	96(%rsp), %eax
	subl	%edx, 100(%rsp)
	addl	%edx, 104(%rsp)
	cmpl	108(%rsp), %eax
	jne	.L5917
.L5948:
	movq	%r15, %rax
	jmp	.L5914
.L5931:
	leaq	.LC121(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5914
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_loadf_from_memory
	.def	stbi_loadf_from_memory;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_loadf_from_memory
stbi_loadf_from_memory:
.LFB594:
	subq	$280, %rsp
	.seh_stackalloc	280
	.seh_endprologue
	movslq	%edx, %rax
	movq	%rcx, 248(%rsp)
	movq	%rcx, 232(%rsp)
	addq	%rax, %rcx
	movl	328(%rsp), %eax
	movq	%r8, %r10
	movq	%r9, %r8
	movq	320(%rsp), %r9
	movq	%rcx, 256(%rsp)
	movq	%rcx, 240(%rsp)
	leaq	48(%rsp), %rcx
	movq	%r10, %rdx
	movl	%eax, 32(%rsp)
	movq	$0, 64(%rsp)
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
.LFB595:
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
	movq	(%rcx), %rax
	movq	%rdx, %r10
	movq	8(%rcx), %rdx
	leaq	48(%rsp), %rbx
	movq	%r8, %rdi
	movq	%r9, %rbp
	movq	%r10, 88(%rsp)
	leaq	56(%rbx), %rsi
	movq	%rax, 64(%rsp)
	movl	$128, 100(%rsp)
	movq	%rdx, 72(%rsp)
	movq	16(%rcx), %rdx
	movl	$128, %r8d
	movl	$1, 96(%rsp)
	movq	%rsi, 248(%rsp)
	movq	%r10, %rcx
	movq	%rdx, 80(%rsp)
	movq	%rsi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	addq	%rsi, %rdx
	testl	%eax, %eax
	jne	.L5977
	leaq	57(%rbx), %rdx
	movl	$0, 96(%rsp)
	movb	$0, 104(%rsp)
.L5977:
	leaq	56(%rbx), %rax
	movq	352(%rsp), %r9
	movq	%rdx, 240(%rsp)
	movq	%rdx, 256(%rsp)
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rax, 232(%rsp)
	movl	360(%rsp), %eax
	movq	%rbx, %rcx
	movl	%eax, 32(%rsp)
	call	_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_loadf_from_file
	.def	stbi_loadf_from_file;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_loadf_from_file
stbi_loadf_from_file:
.LFB597:
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
	movq	%rdx, %rdi
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	leaq	64(%rsp), %rbx
	movq	%r9, 56(%rsp)
	movq	%r8, %rbp
	movq	%rcx, 104(%rsp)
	leaq	56(%rbx), %rsi
	movq	%rax, 80(%rsp)
	movl	$128, 116(%rsp)
	movq	%rdx, 88(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movl	$128, %r8d
	movl	$1, 112(%rsp)
	movq	%rsi, 264(%rsp)
	movq	%rdx, 96(%rsp)
	movq	%rsi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	movq	56(%rsp), %r9
	addq	%rsi, %rdx
	testl	%eax, %eax
	jne	.L5980
	leaq	57(%rbx), %rdx
	movl	$0, 112(%rsp)
	movb	$0, 120(%rsp)
.L5980:
	leaq	56(%rbx), %rax
	movq	%rdx, 256(%rsp)
	movq	%rdx, 272(%rsp)
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	movq	%rax, 248(%rsp)
	movl	368(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i
	addq	$296, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC155:
	.ascii "can't fopen\0"
	.text
	.p2align 4,,15
	.globl	stbi_loadf
	.def	stbi_loadf;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_loadf
stbi_loadf:
.LFB596:
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
	leaq	.LC122(%rip), %rdx
	movq	%r8, %r12
	movq	%r9, %r13
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5986
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	leaq	48(%rsp), %rsi
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movq	%rbx, 88(%rsp)
	movl	$128, 100(%rsp)
	movl	$128, %r8d
	leaq	56(%rsi), %rdi
	movl	$1, 96(%rsp)
	movq	%rbx, %rcx
	movq	%rdx, 72(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 64(%rsp)
	movq	%rdi, 248(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rdi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	addq	%rdi, %rdx
	testl	%eax, %eax
	jne	.L5985
	leaq	57(%rsi), %rdx
	movl	$0, 96(%rsp)
	movb	$0, 104(%rsp)
.L5985:
	leaq	56(%rsi), %rax
	movq	%rsi, %rcx
	movq	%rdx, 240(%rsp)
	movq	%rdx, 256(%rsp)
	movq	%r13, %r9
	movq	%r12, %r8
	movq	%rax, 232(%rsp)
	movl	368(%rsp), %eax
	movq	%rbp, %rdx
	movl	%eax, 32(%rsp)
	call	_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i
	movq	%rbx, %rcx
	movq	%rax, %rsi
	call	fclose
.L5983:
	movq	%rsi, %rax
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L5986:
	leaq	.LC155(%rip), %rax
	xorl	%esi, %esi
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L5983
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_load
	.def	stbi_load;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_load
stbi_load:
.LFB587:
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
	leaq	.LC122(%rip), %rdx
	movq	%r8, %r12
	movq	%r9, %r13
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L5996
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	leaq	48(%rsp), %rsi
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movq	%rbx, 88(%rsp)
	movl	$128, 100(%rsp)
	movl	$128, %r8d
	leaq	56(%rsi), %rdi
	movl	$1, 96(%rsp)
	movq	%rbx, %rcx
	movq	%rdx, 72(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 64(%rsp)
	movq	%rdi, 248(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rdi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	addq	%rdi, %rdx
	testl	%eax, %eax
	jne	.L5991
	leaq	57(%rsi), %rdx
	movl	$0, 96(%rsp)
	movb	$0, 104(%rsp)
.L5991:
	leaq	56(%rsi), %rax
	movq	%rdx, 240(%rsp)
	movq	%rdx, 256(%rsp)
	movq	%rsi, %rcx
	movq	%r13, %r9
	movq	%r12, %r8
	movq	%rax, 232(%rsp)
	movl	368(%rsp), %eax
	movq	%rbp, %rdx
	movl	%eax, 32(%rsp)
	call	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L5992
	movl	232(%rsp), %edx
	subl	240(%rsp), %edx
	movl	$1, %r8d
	movq	%rbx, %rcx
	call	fseek
.L5992:
	movq	%rbx, %rcx
	call	fclose
	movq	%rsi, %rax
.L5989:
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L5996:
	leaq	.LC155(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L5989
	.seh_endproc
	.section .rdata,"dr"
.LC156:
	.ascii "ri.bits_per_channel == 8\0"
	.text
	.p2align 4,,15
	.globl	stbi_load_from_file_16
	.def	stbi_load_from_file_16;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_load_from_file_16
stbi_load_from_file_16:
.LFB589:
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
	subq	$376, %rsp
	.seh_stackalloc	376
	.seh_endprologue
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movl	480(%rsp), %r14d
	movq	%rdx, %rbp
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	leaq	144(%rsp), %rbx
	movq	%rcx, 448(%rsp)
	movq	%r8, %rsi
	movq	%r9, %rdi
	leaq	56(%rbx), %r12
	movq	%rax, 160(%rsp)
	movq	%rcx, 184(%rsp)
	movq	%rdx, 168(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movl	$128, %r8d
	movl	$128, 196(%rsp)
	movl	$1, 192(%rsp)
	movq	%r12, 344(%rsp)
	movq	%rdx, 176(%rsp)
	movq	%r12, %rdx
	call	*%rax
	movslq	%eax, %rdx
	addq	%r12, %rdx
	testl	%eax, %eax
	jne	.L5999
	leaq	57(%rbx), %rdx
	movl	$0, 192(%rsp)
	movb	$0, 200(%rsp)
.L5999:
	leaq	56(%rbx), %rax
	movq	%rdx, 336(%rsp)
	movq	%rdx, 352(%rsp)
	movq	%rbx, %rcx
	movl	$16, 48(%rsp)
	movl	%r14d, 32(%rsp)
	movq	%rax, 328(%rsp)
	leaq	128(%rsp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rbp, %rdx
	movq	%rax, 40(%rsp)
	call	_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L6079
	movl	128(%rsp), %eax
	cmpl	$16, %eax
	je	.L6001
	cmpl	$8, %eax
	je	.L6002
	leaq	.LC3(%rip), %rdx
	leaq	.LC156(%rip), %rcx
	movl	$1078, %r8d
	call	_assert
.L6002:
	testl	%r14d, %r14d
	movl	%r14d, %r12d
	je	.L6086
.L6003:
	movl	(%rsi), %eax
	imull	0(%rbp), %eax
	imull	%eax, %r12d
	leal	(%r12,%r12), %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L6004
	testl	%r12d, %r12d
	jle	.L6017
	movslq	%r12d, %rax
	leaq	(%r15,%rax,2), %rdx
	cmpq	%rdx, %rbx
	setnb	%dl
	addq	%rbx, %rax
	cmpq	%rax, %r15
	setnb	%al
	orb	%al, %dl
	je	.L6009
	cmpl	$17, %r12d
	jbe	.L6009
	movq	%r15, %rdx
	andl	$15, %edx
	shrq	%rdx
	negq	%rdx
	andl	$7, %edx
	cmpl	%r12d, %edx
	cmova	%r12d, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L6010
	movzbl	(%rbx), %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	cmpl	$1, %edx
	movw	%ax, (%r15)
	je	.L6046
	movzbl	1(%rbx), %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	cmpl	$2, %edx
	movw	%ax, 2(%r15)
	je	.L6047
	movzbl	2(%rbx), %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	cmpl	$3, %edx
	movw	%ax, 4(%r15)
	je	.L6048
	movzbl	3(%rbx), %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	cmpl	$4, %edx
	movw	%ax, 6(%r15)
	je	.L6049
	movzbl	4(%rbx), %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	cmpl	$5, %edx
	movw	%ax, 8(%r15)
	je	.L6050
	movzbl	5(%rbx), %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	cmpl	$6, %edx
	movw	%ax, 10(%r15)
	je	.L6051
	movzbl	6(%rbx), %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	movw	%ax, 12(%r15)
	movl	$7, %eax
.L6010:
	movl	%r12d, %r9d
	leal	-1(%r12), %r8d
	movl	%edx, %r11d
	subl	%edx, %r9d
	leal	-16(%r9), %ecx
	subl	%edx, %r8d
	shrl	$4, %ecx
	leal	1(%rcx), %r10d
	movl	%r10d, %r13d
	sall	$4, %r13d
	cmpl	$14, %r8d
	jbe	.L6012
	subl	$4, %ecx
	leaq	(%rbx,%r11), %r8
	leaq	(%r15,%r11,2), %rdx
	cmpl	$-6, %ecx
	ja	.L6052
	pxor	%xmm2, %xmm2
	shrl	$2, %ecx
	leal	4(,%rcx,4), %r11d
	xorl	%ecx, %ecx
.L6014:
	movdqu	(%r8), %xmm0
	prefetcht0	224(%r8)
	addl	$4, %ecx
	prefetcht0	464(%rdx)
	prefetcht0	528(%rdx)
	addq	$64, %r8
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm2, %xmm0
	subq	$-128, %rdx
	punpcklbw	%xmm2, %xmm1
	movdqa	%xmm1, %xmm3
	psllw	$8, %xmm3
	paddw	%xmm3, %xmm1
	movaps	%xmm1, -128(%rdx)
	movdqa	%xmm0, %xmm1
	psllw	$8, %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -112(%rdx)
	movdqu	-48(%r8), %xmm0
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm2, %xmm0
	punpcklbw	%xmm2, %xmm1
	movdqa	%xmm1, %xmm3
	psllw	$8, %xmm3
	paddw	%xmm3, %xmm1
	movaps	%xmm1, -96(%rdx)
	movdqa	%xmm0, %xmm1
	psllw	$8, %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -80(%rdx)
	movdqu	-32(%r8), %xmm0
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm2, %xmm0
	punpcklbw	%xmm2, %xmm1
	movdqa	%xmm1, %xmm3
	psllw	$8, %xmm3
	paddw	%xmm3, %xmm1
	movaps	%xmm1, -64(%rdx)
	movdqa	%xmm0, %xmm1
	psllw	$8, %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -48(%rdx)
	movdqu	-16(%r8), %xmm0
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm2, %xmm0
	punpcklbw	%xmm2, %xmm1
	movdqa	%xmm1, %xmm3
	psllw	$8, %xmm3
	paddw	%xmm3, %xmm1
	movaps	%xmm1, -32(%rdx)
	movdqa	%xmm0, %xmm1
	psllw	$8, %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, -16(%rdx)
	cmpl	%ecx, %r11d
	jne	.L6014
.L6013:
	pxor	%xmm3, %xmm3
	xorl	%ecx, %ecx
.L6019:
	movdqu	(%r8,%rcx), %xmm0
	incl	%r11d
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm3, %xmm0
	punpcklbw	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	psllw	$8, %xmm2
	paddw	%xmm2, %xmm1
	movaps	%xmm1, (%rdx,%rcx,2)
	movdqa	%xmm0, %xmm1
	psllw	$8, %xmm1
	paddw	%xmm1, %xmm0
	movaps	%xmm0, 16(%rdx,%rcx,2)
	addq	$16, %rcx
	cmpl	%r10d, %r11d
	jb	.L6019
	addl	%r13d, %eax
	cmpl	%r13d, %r9d
	je	.L6017
.L6012:
	movslq	%eax, %rcx
	movzbl	(%rbx,%rcx), %edx
	movl	%edx, %r8d
	sall	$8, %r8d
	addl	%r8d, %edx
	movw	%dx, (%r15,%rcx,2)
	leal	1(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	2(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	3(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	4(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	5(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	6(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	7(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	8(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	9(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	10(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	11(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	12(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	movw	%cx, (%r15,%rdx,2)
	leal	13(%rax), %edx
	cmpl	%edx, %r12d
	jle	.L6017
	movslq	%edx, %rdx
	addl	$14, %eax
	movzbl	(%rbx,%rdx), %ecx
	movl	%ecx, %r8d
	sall	$8, %r8d
	addl	%r8d, %ecx
	cmpl	%eax, %r12d
	movw	%cx, (%r15,%rdx,2)
	jle	.L6017
	cltq
	movzbl	(%rbx,%rax), %edx
	movl	%edx, %ecx
	sall	$8, %ecx
	addl	%ecx, %edx
	movw	%dx, (%r15,%rax,2)
.L6017:
	movq	%rbx, %rcx
	call	free
	movl	_ZL29stbi__vertically_flip_on_load(%rip), %r8d
	movl	$16, 128(%rsp)
	testl	%r8d, %r8d
	je	.L6024
.L6006:
	movl	0(%rbp), %eax
	testl	%r14d, %r14d
	movl	%eax, 72(%rsp)
	movl	(%rsi), %eax
	je	.L6087
.L6022:
	movl	%eax, %edi
	sarl	%edi
	testl	%edi, %edi
	movl	%edi, 124(%rsp)
	jle	.L6027
	decl	%eax
	movl	$0, 116(%rsp)
	movl	$0, 112(%rsp)
	imull	72(%rsp), %eax
	movl	%eax, 120(%rsp)
	movslq	%r14d, %rax
	movq	%rax, 88(%rsp)
	addq	%rax, %rax
	movq	%rax, 80(%rsp)
	movl	$16, %eax
	subq	%r15, %rax
	movq	%rax, %r12
	leal	-1(%r14), %eax
	movq	%r12, %rdi
	movl	%eax, 108(%rsp)
	.p2align 4,,7
.L6028:
	movl	72(%rsp), %edx
	testl	%edx, %edx
	jle	.L6030
	movl	120(%rsp), %r8d
	movl	116(%rsp), %r9d
	movq	%rdi, %rsi
	xorl	%ebx, %ebx
	imull	%r14d, %r8d
	imull	%r14d, %r9d
	movslq	%r8d, %rcx
	movslq	%r9d, %rbp
	subl	%r9d, %r8d
	leaq	(%r15,%rcx,2), %rdx
	leaq	(%r15,%rbp,2), %rax
	movq	%rbp, %r13
	movl	%r8d, 96(%rsp)
	movq	%rcx, %rdi
	movq	%rsi, %rbp
	.p2align 4,,7
.L6031:
	testl	%r14d, %r14d
	jle	.L6040
	movl	96(%rsp), %ecx
	movq	%rax, %r10
	movq	%rdx, %r11
	subq	%r15, %r10
	leal	(%r9,%rcx), %r8d
	leaq	(%rdx,%rbp), %rcx
	cmpq	%rcx, %r10
	leaq	(%rax,%rbp), %r10
	setge	%cl
	subq	%r15, %r11
	cmpq	%r10, %r11
	setge	%r10b
	orb	%r10b, %cl
	je	.L6032
	cmpl	$10, %r14d
	jbe	.L6032
	movq	%rax, %rsi
	andl	$15, %esi
	shrq	%rsi
	negq	%rsi
	andl	$7, %esi
	cmpl	%r14d, %esi
	cmova	%r14d, %esi
	xorl	%ecx, %ecx
	testl	%esi, %esi
	je	.L6033
	movzwl	(%rax), %ecx
	movzwl	(%rdx), %r10d
	cmpl	$1, %esi
	movw	%r10w, (%rax)
	movw	%cx, (%rdx)
	je	.L6054
	movzwl	2(%rax), %ecx
	movzwl	2(%rdx), %r10d
	cmpl	$2, %esi
	movw	%r10w, 2(%rax)
	movw	%cx, 2(%rdx)
	je	.L6055
	movzwl	4(%rax), %ecx
	movzwl	4(%rdx), %r10d
	cmpl	$3, %esi
	movw	%r10w, 4(%rax)
	movw	%cx, 4(%rdx)
	je	.L6056
	movzwl	6(%rax), %ecx
	movzwl	6(%rdx), %r10d
	cmpl	$4, %esi
	movw	%r10w, 6(%rax)
	movw	%cx, 6(%rdx)
	je	.L6057
	movzwl	8(%rax), %ecx
	movzwl	8(%rdx), %r10d
	cmpl	$5, %esi
	movw	%r10w, 8(%rax)
	movw	%cx, 8(%rdx)
	je	.L6058
	movzwl	10(%rax), %ecx
	movzwl	10(%rdx), %r10d
	cmpl	$6, %esi
	movw	%r10w, 10(%rax)
	movw	%cx, 10(%rdx)
	je	.L6059
	movzwl	12(%rax), %ecx
	movzwl	12(%rdx), %r10d
	movw	%r10w, 12(%rax)
	movw	%cx, 12(%rdx)
	movl	$7, %ecx
.L6033:
	movl	%r14d, %r10d
	movl	%esi, %r11d
	subl	%esi, %r10d
	movl	%r10d, 104(%rsp)
	subl	$8, %r10d
	shrl	$3, %r10d
	incl	%r10d
	movl	%r10d, 76(%rsp)
	sall	$3, %r10d
	movl	%r10d, 100(%rsp)
	movl	108(%rsp), %r10d
	subl	%esi, %r10d
	cmpl	$6, %r10d
	jbe	.L6035
	leaq	(%r11,%r13), %rsi
	addq	%rdi, %r11
	leaq	(%r15,%r11,2), %r10
	xorl	%r11d, %r11d
	leaq	(%r15,%rsi,2), %r12
	xorl	%esi, %esi
.L6037:
	movdqa	(%r12,%r11), %xmm0
	incl	%esi
	movdqu	(%r10,%r11), %xmm1
	movaps	%xmm1, (%r12,%r11)
	movups	%xmm0, (%r10,%r11)
	addq	$16, %r11
	cmpl	%esi, 76(%rsp)
	ja	.L6037
	movl	100(%rsp), %esi
	addl	%esi, %ecx
	cmpl	104(%rsp), %esi
	je	.L6040
	.p2align 4,,7
.L6035:
	leal	(%rcx,%r9), %r10d
	movslq	%r10d, %r10
	leaq	(%r15,%r10,2), %r11
	leal	(%rcx,%r8), %r10d
	movslq	%r10d, %r10
	movzwl	(%r11), %esi
	leaq	(%r15,%r10,2), %r10
	movzwl	(%r10), %r12d
	movw	%r12w, (%r11)
	movw	%si, (%r10)
	leal	1(%rcx), %r10d
	cmpl	%r10d, %r14d
	jle	.L6040
	leal	(%r10,%r9), %r11d
	addl	%r8d, %r10d
	movslq	%r10d, %r10
	movslq	%r11d, %r11
	leaq	(%r15,%r10,2), %r10
	leaq	(%r15,%r11,2), %r11
	movzwl	(%r10), %r12d
	movzwl	(%r11), %esi
	movw	%r12w, (%r11)
	movw	%si, (%r10)
	leal	2(%rcx), %r10d
	cmpl	%r10d, %r14d
	jle	.L6040
	leal	(%r10,%r9), %r11d
	addl	%r8d, %r10d
	movslq	%r10d, %r10
	movslq	%r11d, %r11
	leaq	(%r15,%r10,2), %r10
	leaq	(%r15,%r11,2), %r11
	movzwl	(%r10), %r12d
	movzwl	(%r11), %esi
	movw	%r12w, (%r11)
	movw	%si, (%r10)
	leal	3(%rcx), %r10d
	cmpl	%r10d, %r14d
	jle	.L6040
	leal	(%r9,%r10), %r11d
	addl	%r8d, %r10d
	movslq	%r10d, %r10
	movslq	%r11d, %r11
	leaq	(%r15,%r10,2), %r10
	leaq	(%r15,%r11,2), %r11
	movzwl	(%r10), %r12d
	movzwl	(%r11), %esi
	movw	%r12w, (%r11)
	movw	%si, (%r10)
	leal	4(%rcx), %r10d
	cmpl	%r10d, %r14d
	jle	.L6040
	leal	(%r9,%r10), %r11d
	addl	%r8d, %r10d
	movslq	%r10d, %r10
	movslq	%r11d, %r11
	leaq	(%r15,%r10,2), %r10
	leaq	(%r15,%r11,2), %r11
	movzwl	(%r10), %r12d
	movzwl	(%r11), %esi
	movw	%r12w, (%r11)
	movw	%si, (%r10)
	leal	5(%rcx), %r10d
	cmpl	%r10d, %r14d
	jle	.L6040
	leal	(%r9,%r10), %r11d
	addl	%r8d, %r10d
	addl	$6, %ecx
	movslq	%r10d, %r10
	cmpl	%ecx, %r14d
	movslq	%r11d, %r11
	leaq	(%r15,%r10,2), %r10
	leaq	(%r15,%r11,2), %r11
	movzwl	(%r10), %r12d
	movzwl	(%r11), %esi
	movw	%r12w, (%r11)
	movw	%si, (%r10)
	jle	.L6040
	leal	(%r9,%rcx), %r10d
	addl	%r8d, %ecx
	movslq	%ecx, %rcx
	movslq	%r10d, %r10
	leaq	(%r15,%rcx,2), %rcx
	leaq	(%r15,%r10,2), %r10
	movzwl	(%rcx), %r8d
	movzwl	(%r10), %r11d
	movw	%r8w, (%r10)
	movw	%r11w, (%rcx)
.L6040:
	movq	80(%rsp), %rsi
	incl	%ebx
	addl	%r14d, %r9d
	addq	%rsi, %rax
	addq	%rsi, %rdx
	movq	88(%rsp), %rsi
	addq	%rsi, %r13
	addq	%rsi, %rdi
	cmpl	%ebx, 72(%rsp)
	jne	.L6031
	movq	%rbp, %rdi
.L6030:
	incl	112(%rsp)
	movl	72(%rsp), %edx
	movl	112(%rsp), %eax
	subl	%edx, 120(%rsp)
	addl	%edx, 116(%rsp)
	cmpl	%eax, 124(%rsp)
	jne	.L6028
.L6027:
	testq	%r15, %r15
	je	.L6079
.L6024:
	movl	328(%rsp), %edx
	subl	336(%rsp), %edx
	movl	$1, %r8d
	movq	448(%rsp), %rcx
	call	fseek
	movq	%r15, %rax
.L6080:
	addq	$376, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L6032:
	xorl	%ecx, %ecx
	.p2align 4,,7
.L6042:
	movzwl	(%rax,%rcx,2), %r8d
	movzwl	(%rdx,%rcx,2), %r10d
	movw	%r10w, (%rax,%rcx,2)
	movw	%r8w, (%rdx,%rcx,2)
	incq	%rcx
	cmpl	%ecx, %r14d
	jg	.L6042
	jmp	.L6040
	.p2align 4,,7
.L6059:
	movl	$6, %ecx
	jmp	.L6033
	.p2align 4,,7
.L6058:
	movl	$5, %ecx
	jmp	.L6033
	.p2align 4,,7
.L6057:
	movl	$4, %ecx
	jmp	.L6033
	.p2align 4,,7
.L6056:
	movl	$3, %ecx
	jmp	.L6033
	.p2align 4,,7
.L6055:
	movl	$2, %ecx
	jmp	.L6033
	.p2align 4,,7
.L6054:
	movl	$1, %ecx
	jmp	.L6033
.L6086:
	movl	(%rdi), %r12d
	jmp	.L6003
.L6087:
	movl	(%rdi), %r14d
	jmp	.L6022
.L6004:
	movl	_ZL29stbi__vertically_flip_on_load(%rip), %ecx
	leaq	.LC7(%rip), %rax
	movl	$16, 128(%rsp)
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	testl	%ecx, %ecx
	jne	.L6006
.L6079:
	xorl	%eax, %eax
	jmp	.L6080
.L6001:
	movl	_ZL29stbi__vertically_flip_on_load(%rip), %eax
	movq	%rbx, %r15
	testl	%eax, %eax
	je	.L6024
	movl	0(%rbp), %eax
	testl	%r14d, %r14d
	movl	%eax, 72(%rsp)
	movl	(%rsi), %eax
	jne	.L6022
	jmp	.L6087
.L6009:
	xorl	%ecx, %ecx
	.p2align 4,,7
.L6021:
	movzbl	(%rbx,%rcx), %eax
	movl	%eax, %edx
	sall	$8, %edx
	addl	%edx, %eax
	movw	%ax, (%r15,%rcx,2)
	incq	%rcx
	cmpl	%ecx, %r12d
	jg	.L6021
	jmp	.L6017
.L6051:
	movl	$6, %eax
	jmp	.L6010
.L6050:
	movl	$5, %eax
	jmp	.L6010
.L6049:
	movl	$4, %eax
	jmp	.L6010
.L6048:
	movl	$3, %eax
	jmp	.L6010
.L6047:
	movl	$2, %eax
	jmp	.L6010
.L6046:
	movl	$1, %eax
	jmp	.L6010
.L6052:
	xorl	%r11d, %r11d
	jmp	.L6013
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_load_16
	.def	stbi_load_16;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_load_16
stbi_load_16:
.LFB590:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rdx, %rsi
	leaq	.LC122(%rip), %rdx
	movq	%r8, 56(%rsp)
	movq	%r9, 48(%rsp)
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	movq	48(%rsp), %r9
	movq	56(%rsp), %r8
	je	.L6091
	movl	128(%rsp), %eax
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	movl	%eax, 32(%rsp)
	call	stbi_load_from_file_16
	movq	%rbx, %rcx
	movq	%rax, %rsi
	call	fclose
	movq	%rsi, %rax
.L6090:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L6091:
	leaq	.LC155(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L6090
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_zlib_decode_buffer
	.def	stbi_zlib_decode_buffer;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_zlib_decode_buffer
stbi_zlib_decode_buffer:
.LFB679:
	movl	$4136, %eax
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	4136
	.seh_endprologue
	movslq	%edx, %rdx
	movq	%rcx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	addq	%rdx, %rcx
	movslq	%r9d, %r9
	movq	%r8, 32(%rsp)
	movq	%rcx, 72(%rsp)
	leaq	32(%rsp), %rcx
	addq	%r9, %r8
	movl	$1, %edx
	movq	%r8, 40(%rsp)
	movl	$0, 80(%rsp)
	call	_ZL16stbi__parse_zlibP10stbi__zbufi
	testl	%eax, %eax
	je	.L6094
	movq	56(%rsp), %rax
	subl	64(%rsp), %eax
.L6093:
	addq	$4136, %rsp
	ret
	.p2align 4,,7
.L6094:
	movl	$-1, %eax
	jmp	.L6093
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_zlib_decode_noheader_malloc
	.def	stbi_zlib_decode_noheader_malloc;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_zlib_decode_noheader_malloc
stbi_zlib_decode_noheader_malloc:
.LFB680:
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
	movq	%rcx, %rsi
	movl	$16384, %ecx
	movl	%edx, %ebx
	movq	%r8, %rdi
	call	malloc
	testq	%rax, %rax
	je	.L6100
	movslq	%ebx, %rcx
	movq	%rax, 64(%rsp)
	movq	%rax, 56(%rsp)
	addq	%rsi, %rcx
	addq	$16384, %rax
	xorl	%edx, %edx
	movq	%rcx, 40(%rsp)
	leaq	32(%rsp), %rcx
	movq	%rsi, 32(%rsp)
	movq	%rax, 72(%rsp)
	movl	$1, 80(%rsp)
	call	_ZL16stbi__parse_zlibP10stbi__zbufi
	testl	%eax, %eax
	je	.L6097
	testq	%rdi, %rdi
	movq	64(%rsp), %rax
	je	.L6096
	movq	56(%rsp), %rdx
	subq	%rax, %rdx
	movl	%edx, (%rdi)
.L6096:
	addq	$4128, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L6100:
	xorl	%eax, %eax
	jmp	.L6096
	.p2align 4,,7
.L6097:
	movq	64(%rsp), %rcx
	call	free
	xorl	%eax, %eax
	jmp	.L6096
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_zlib_decode_noheader_buffer
	.def	stbi_zlib_decode_noheader_buffer;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_zlib_decode_noheader_buffer
stbi_zlib_decode_noheader_buffer:
.LFB681:
	movl	$4136, %eax
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	4136
	.seh_endprologue
	movslq	%edx, %rdx
	movq	%rcx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	addq	%rdx, %rcx
	movslq	%r9d, %r9
	movq	%r8, 32(%rsp)
	movq	%rcx, 72(%rsp)
	leaq	32(%rsp), %rcx
	addq	%r9, %r8
	xorl	%edx, %edx
	movq	%r8, 40(%rsp)
	movl	$0, 80(%rsp)
	call	_ZL16stbi__parse_zlibP10stbi__zbufi
	testl	%eax, %eax
	je	.L6103
	movq	56(%rsp), %rax
	subl	64(%rsp), %eax
.L6102:
	addq	$4136, %rsp
	ret
	.p2align 4,,7
.L6103:
	movl	$-1, %eax
	jmp	.L6102
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_set_unpremultiply_on_load
	.def	stbi_set_unpremultiply_on_load;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_set_unpremultiply_on_load
stbi_set_unpremultiply_on_load:
.LFB690:
	.seh_endprologue
	movl	%ecx, _ZL27stbi__unpremultiply_on_load(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_convert_iphone_png_to_rgb
	.def	stbi_convert_iphone_png_to_rgb;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_convert_iphone_png_to_rgb
stbi_convert_iphone_png_to_rgb:
.LFB691:
	.seh_endprologue
	movl	%ecx, _ZL20stbi__de_iphone_flag(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_info
	.def	stbi_info;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_info
stbi_info:
.LFB749:
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
	leaq	.LC122(%rip), %rdx
	movq	%r8, %r13
	movq	%r9, %r14
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L6111
	movq	%rax, %rcx
	leaq	32(%rsp), %rsi
	call	ftell
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movl	%eax, %r12d
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	leaq	56(%rsi), %rdi
	movq	%rbx, 72(%rsp)
	movl	$128, 84(%rsp)
	movl	$1, 80(%rsp)
	movl	$128, %r8d
	movq	%rbx, %rcx
	movq	%rdx, 56(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 48(%rsp)
	movq	%rdi, 232(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rdi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	addq	%rdi, %rdx
	testl	%eax, %eax
	je	.L6112
.L6110:
	leaq	56(%rsi), %rax
	movq	%r14, %r9
	movq	%rsi, %rcx
	movq	%rdx, 224(%rsp)
	movq	%rdx, 240(%rsp)
	movq	%r13, %r8
	movq	%rbp, %rdx
	movq	%rax, 216(%rsp)
	call	_ZL15stbi__info_mainP13stbi__contextPiS1_S1_
	xorl	%r8d, %r8d
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movl	%eax, %esi
	call	fseek
	movq	%rbx, %rcx
	call	fclose
	movl	%esi, %eax
.L6108:
	addq	$256, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L6112:
	movl	$0, 80(%rsp)
	movb	$0, 88(%rsp)
	leaq	57(%rsi), %rdx
	jmp	.L6110
	.p2align 4,,7
.L6111:
	leaq	.LC155(%rip), %rax
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	xorl	%eax, %eax
	jmp	.L6108
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_info_from_file
	.def	stbi_info_from_file;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_info_from_file
stbi_info_from_file:
.LFB750:
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
	movq	%rcx, %rbx
	movq	%r9, 40(%rsp)
	movq	%rdx, %r12
	movq	%r8, %r13
	leaq	48(%rsp), %rsi
	call	ftell
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movl	%eax, %ebp
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	leaq	56(%rsi), %rdi
	movq	%rbx, 88(%rsp)
	movl	$128, 100(%rsp)
	movl	$1, 96(%rsp)
	movl	$128, %r8d
	movq	%rbx, %rcx
	movq	%rdx, 72(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 64(%rsp)
	movq	%rdi, 248(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rdi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	movq	40(%rsp), %r9
	addq	%rdi, %rdx
	testl	%eax, %eax
	jne	.L6115
	leaq	57(%rsi), %rdx
	movl	$0, 96(%rsp)
	movb	$0, 104(%rsp)
.L6115:
	leaq	56(%rsi), %rax
	movq	%rdx, 240(%rsp)
	movq	%rdx, 256(%rsp)
	movq	%r13, %r8
	movq	%r12, %rdx
	movq	%rsi, %rcx
	movq	%rax, 232(%rsp)
	call	_ZL15stbi__info_mainP13stbi__contextPiS1_S1_
	xorl	%r8d, %r8d
	movl	%eax, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	call	fseek
	movl	%esi, %eax
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_info_from_memory
	.def	stbi_info_from_memory;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_info_from_memory
stbi_info_from_memory:
.LFB751:
	subq	$264, %rsp
	.seh_stackalloc	264
	.seh_endprologue
	movslq	%edx, %rax
	movq	%r8, %r10
	movq	%rcx, 232(%rsp)
	movq	%r9, %r8
	movq	%rcx, 216(%rsp)
	movq	304(%rsp), %r9
	addq	%rax, %rcx
	movq	%r10, %rdx
	movq	$0, 48(%rsp)
	movq	%rcx, 240(%rsp)
	movq	%rcx, 224(%rsp)
	leaq	32(%rsp), %rcx
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
.LFB752:
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
	movq	(%rcx), %rax
	movq	%rdx, %r10
	movq	8(%rcx), %rdx
	leaq	32(%rsp), %rbx
	movq	%r8, %rdi
	movq	%r9, %rbp
	movq	%r10, 72(%rsp)
	leaq	56(%rbx), %rsi
	movq	%rax, 48(%rsp)
	movl	$128, 84(%rsp)
	movq	%rdx, 56(%rsp)
	movq	16(%rcx), %rdx
	movl	$128, %r8d
	movl	$1, 80(%rsp)
	movq	%rsi, 232(%rsp)
	movq	%r10, %rcx
	movq	%rdx, 64(%rsp)
	movq	%rsi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	addq	%rsi, %rdx
	testl	%eax, %eax
	jne	.L6119
	leaq	57(%rbx), %rdx
	movl	$0, 80(%rsp)
	movb	$0, 88(%rsp)
.L6119:
	movq	336(%rsp), %r9
	leaq	56(%rbx), %rax
	movq	%rdx, 224(%rsp)
	movq	%rdx, 240(%rsp)
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	movq	%rax, 216(%rsp)
	call	_ZL15stbi__info_mainP13stbi__contextPiS1_S1_
	addq	$264, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC157:
	.ascii "11 4 22 44 44 22 444444\0"
	.text
	.p2align 4,,15
	.globl	stbi_write_bmp_to_func
	.def	stbi_write_bmp_to_func;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_bmp_to_func
stbi_write_bmp_to_func:
.LFB764:
	subq	$248, %rsp
	.seh_stackalloc	248
	.seh_endprologue
	leal	(%r8,%r8,2), %eax
	movq	%rdx, 232(%rsp)
	movq	%rcx, 224(%rsp)
	movl	%r9d, 152(%rsp)
	movl	%r8d, 144(%rsp)
	leaq	224(%rsp), %rcx
	movl	%eax, %edx
	movl	%r9d, 32(%rsp)
	movl	$1, 48(%rsp)
	negl	%edx
	movl	$0, 216(%rsp)
	movl	$0, 208(%rsp)
	andl	$3, %edx
	movl	$0, 200(%rsp)
	movl	$0, 192(%rsp)
	addl	%edx, %eax
	movl	%edx, 72(%rsp)
	movl	$0, 184(%rsp)
	imull	%r9d, %eax
	movl	%r8d, %r9d
	movl	$-1, %r8d
	movl	%r8d, %edx
	movl	$0, 176(%rsp)
	movl	$24, 168(%rsp)
	movl	$1, 160(%rsp)
	movl	$40, 136(%rsp)
	addl	$54, %eax
	movl	$54, 128(%rsp)
	movl	$0, 120(%rsp)
	movl	%eax, 104(%rsp)
	leaq	.LC157(%rip), %rax
	movl	$0, 112(%rsp)
	movl	$77, 96(%rsp)
	movl	$66, 88(%rsp)
	movq	%rax, 80(%rsp)
	movq	296(%rsp), %rax
	movl	$0, 64(%rsp)
	movq	%rax, 56(%rsp)
	movl	288(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.103
	addq	$248, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC158:
	.ascii "wb\0"
	.text
	.p2align 4,,15
	.globl	stbi_write_bmp
	.def	stbi_write_bmp;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_bmp
stbi_write_bmp:
.LFB765:
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
	xorl	%ebp, %ebp
	movl	%edx, %ebx
	leaq	.LC158(%rip), %rdx
	movl	%r8d, %esi
	movl	%r9d, %edi
	call	fopen
	leaq	_ZL17stbi__stdio_writePvS_i(%rip), %rcx
	testq	%rax, %rax
	movq	%rax, 232(%rsp)
	movq	%rcx, 224(%rsp)
	je	.L6122
	leal	(%rbx,%rbx,2), %eax
	leaq	224(%rsp), %rcx
	movl	$-1, %r8d
	movl	$0, 64(%rsp)
	movl	$1, 48(%rsp)
	movl	%ebx, %r9d
	movl	%eax, %edx
	movl	%edi, 40(%rsp)
	movl	%esi, 32(%rsp)
	negl	%edx
	movl	$0, 216(%rsp)
	movl	$0, 208(%rsp)
	andl	$3, %edx
	movl	$0, 200(%rsp)
	movl	$0, 192(%rsp)
	addl	%edx, %eax
	movl	%edx, 72(%rsp)
	movl	%r8d, %edx
	imull	%esi, %eax
	movl	$0, 184(%rsp)
	movl	$0, 176(%rsp)
	movl	$24, 168(%rsp)
	movl	$1, 160(%rsp)
	movl	%esi, 152(%rsp)
	movl	%ebx, 144(%rsp)
	addl	$54, %eax
	movl	$40, 136(%rsp)
	movl	$54, 128(%rsp)
	movl	%eax, 104(%rsp)
	leaq	.LC157(%rip), %rax
	movl	$0, 120(%rsp)
	movl	$0, 112(%rsp)
	movl	$77, 96(%rsp)
	movq	%rax, 80(%rsp)
	movq	320(%rsp), %rax
	movl	$66, 88(%rsp)
	movq	%rax, 56(%rsp)
	call	_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz.constprop.103
	movq	232(%rsp), %rcx
	movl	%eax, %ebp
	call	fclose
.L6122:
	movl	%ebp, %eax
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
.LFB767:
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
.LFB768:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movl	%edx, %ebx
	leaq	.LC158(%rip), %rdx
	movl	%r8d, 60(%rsp)
	movl	%r9d, 56(%rsp)
	call	fopen
	leaq	_ZL17stbi__stdio_writePvS_i(%rip), %rdx
	movq	%rax, 72(%rsp)
	movq	%rdx, 64(%rsp)
	xorl	%edx, %edx
	testq	%rax, %rax
	je	.L6127
	movq	128(%rsp), %rax
	movl	56(%rsp), %r9d
	leaq	64(%rsp), %rcx
	movl	60(%rsp), %r8d
	movl	%ebx, %edx
	movq	%rax, 32(%rsp)
	call	_ZL19stbi_write_tga_coreP19stbi__write_contextiiiPv
	movq	72(%rsp), %rcx
	movl	%eax, %ebx
	call	fclose
	movl	%ebx, %edx
.L6127:
	movl	%edx, %eax
	addq	$80, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z21stbiw__linear_to_rgbePhPf
	.def	_Z21stbiw__linear_to_rgbePhPf;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z21stbiw__linear_to_rgbePhPf
_Z21stbiw__linear_to_rgbePhPf:
.LFB769:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movq	%rdx, %rbx
	movss	4(%rdx), %xmm6
	maxss	8(%rdx), %xmm6
	movss	(%rdx), %xmm7
	movaps	%xmm7, %xmm2
	movss	.LC159(%rip), %xmm0
	maxss	%xmm6, %xmm2
	ucomiss	%xmm2, %xmm0
	movaps	%xmm2, %xmm6
	jbe	.L6139
	movb	$0, 3(%rcx)
	movb	$0, 2(%rcx)
	movb	$0, 1(%rcx)
	movb	$0, (%rcx)
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	addq	$96, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L6139:
	leaq	60(%rsp), %rdx
	cvtss2sd	%xmm2, %xmm0
	movq	%rcx, 40(%rsp)
	call	frexp
	cvtsd2ss	%xmm0, %xmm0
	mulss	.LC160(%rip), %xmm0
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
	movl	60(%rsp), %eax
	addl	$-128, %eax
	movb	%al, 3(%rcx)
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	addq	$96, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC161:
	.ascii "length+128 <= 255\0"
	.text
	.p2align 4,,15
	.globl	_Z21stbiw__write_run_dataP19stbi__write_contextih
	.def	_Z21stbiw__write_run_dataP19stbi__write_contextih;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z21stbiw__write_run_dataP19stbi__write_contextih
_Z21stbiw__write_run_dataP19stbi__write_contextih:
.LFB770:
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
	jle	.L6141
	leaq	.LC32(%rip), %rdx
	leaq	.LC161(%rip), %rcx
	movl	$499, %r8d
	call	_assert
.L6141:
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
.LC162:
	.ascii "length <= 128\0"
	.text
	.p2align 4,,15
	.globl	_Z22stbiw__write_dump_dataP19stbi__write_contextiPh
	.def	_Z22stbiw__write_dump_dataP19stbi__write_contextiPh;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z22stbiw__write_dump_dataP19stbi__write_contextiPh
_Z22stbiw__write_dump_dataP19stbi__write_contextiPh:
.LFB771:
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
	movq	%r8, %rdi
	movb	%dl, 47(%rsp)
	jle	.L6143
	leaq	.LC32(%rip), %rdx
	leaq	.LC162(%rip), %rcx
	movl	$507, %r8d
	call	_assert
.L6143:
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
.LFB772:
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
	.seh_endprologue
	movl	%edx, %esi
	movq	%rcx, %r15
	movq	%rsi, %rax
	movl	%edx, 36(%rsp)
	movq	336(%rsp), %rbx
	movzbl	%ah, %edx
	movb	$2, 96(%rsp)
	movb	$2, 97(%rsp)
	movb	%dl, 98(%rsp)
	leal	-8(%rsi), %edx
	movb	%sil, 99(%rsp)
	cmpl	$32759, %edx
	jbe	.L6145
	testl	%esi, %esi
	jle	.L6144
	movslq	%r8d, %rdx
	leaq	124(%rsp), %r12
	leal	-3(%r8), %edi
	leaq	0(,%rdx,4), %rsi
	salq	$4, %rdx
	movq	%rbx, %r13
	movq	%r12, %rax
	movss	.LC159(%rip), %xmm7
	subq	%rsi, %rdx
	movl	%edi, %r12d
	leaq	112(%rsp), %rbp
	leaq	8(%rbx,%rdx), %r14
	movss	.LC160(%rip), %xmm11
	xorl	%ebx, %ebx
	movq	%rcx, %rdi
	movq	%rax, %r15
	jmp	.L6157
.L6210:
	movss	4(%r13), %xmm8
	prefetcht0	(%r14)
	prefetcht0	-4(%r14)
	movaps	%xmm8, %xmm0
	movss	8(%r13), %xmm6
	prefetcht0	-8(%r14)
	movss	0(%r13), %xmm9
	maxss	%xmm6, %xmm0
	movaps	%xmm9, %xmm10
	maxss	%xmm0, %xmm10
	ucomiss	%xmm10, %xmm7
	jbe	.L6204
.L6211:
	movb	$0, 115(%rsp)
	movb	$0, 114(%rsp)
	movb	$0, 113(%rsp)
	movb	$0, 112(%rsp)
.L6155:
	movq	8(%rdi), %rcx
	movl	$4, %r8d
	movq	%rbp, %rdx
	incl	%ebx
	addq	%rsi, %r14
	addq	%rsi, %r13
	call	*(%rdi)
	cmpl	%ebx, 36(%rsp)
	je	.L6144
.L6157:
	cmpl	$1, %r12d
	jbe	.L6210
	movss	0(%r13), %xmm8
	movaps	%xmm8, %xmm10
	movaps	%xmm8, %xmm9
	movaps	%xmm8, %xmm6
	ucomiss	%xmm10, %xmm7
	ja	.L6211
.L6204:
	cvtss2sd	%xmm10, %xmm0
	movq	%r15, %rdx
	call	frexp
	cvtsd2ss	%xmm0, %xmm0
	mulss	%xmm11, %xmm0
	divss	%xmm10, %xmm0
	mulss	%xmm0, %xmm9
	mulss	%xmm0, %xmm8
	mulss	%xmm0, %xmm6
	cvttss2si	%xmm9, %edx
	movb	%dl, 112(%rsp)
	cvttss2si	%xmm8, %edx
	movb	%dl, 113(%rsp)
	cvttss2si	%xmm6, %edx
	movb	%dl, 114(%rsp)
	movl	124(%rsp), %edx
	addl	$-128, %edx
	movb	%dl, 115(%rsp)
	jmp	.L6155
.L6213:
	movq	304(%rsp), %r15
	movq	56(%rsp), %r12
	leaq	96(%rsp), %rdx
	movl	$4, %r8d
	movq	8(%r15), %rcx
	call	*(%r15)
	movl	36(%rsp), %eax
	movl	$4, 56(%rsp)
	leal	-2(%rax), %ebp
	leaq	124(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	95(%rsp), %rax
	movq	%rax, 72(%rsp)
.L6185:
	xorl	%r14d, %r14d
	movq	%r15, 304(%rsp)
	movl	%r14d, %r15d
	movq	304(%rsp), %r14
.L6168:
	movl	%r15d, %edi
	movq	%r14, %rsi
	.p2align 4,,7
.L6170:
	leal	2(%rdi), %eax
	cmpl	%eax, 36(%rsp)
	jle	.L6192
	movslq	%edi, %rax
	movl	%edi, %r13d
	addq	%r12, %rax
	jmp	.L6174
	.p2align 4,,7
.L6172:
	incl	%r13d
	incq	%rax
	cmpl	%ebp, %r13d
	je	.L6192
.L6174:
	movzbl	(%rax), %edx
	leal	2(%r13), %r15d
	cmpb	1(%rax), %dl
	jne	.L6172
	cmpb	2(%rax), %dl
	jne	.L6172
	cmpl	%r15d, 36(%rsp)
	jle	.L6192
.L6171:
	cmpl	%r13d, %edi
	jge	.L6175
	movl	%ebp, 40(%rsp)
	movq	%rsi, %rbp
	movq	48(%rsp), %rsi
	.p2align 4,,7
.L6176:
	movl	%r13d, %ebx
	movl	$128, %eax
	movslq	%edi, %r14
	subl	%edi, %ebx
	movq	8(%rbp), %rcx
	movl	$1, %r8d
	cmpl	$128, %ebx
	movq	%rsi, %rdx
	cmovg	%eax, %ebx
	addq	%r12, %r14
	addl	%ebx, %edi
	movb	%bl, 124(%rsp)
	call	*0(%rbp)
	movq	8(%rbp), %rcx
	movl	%ebx, %r8d
	movq	%r14, %rdx
	call	*0(%rbp)
	cmpl	%edi, %r13d
	jg	.L6176
	movq	%rbp, %rsi
	movl	40(%rsp), %ebp
.L6175:
	cmpl	%r15d, 36(%rsp)
	jg	.L6212
	cmpl	%edi, 36(%rsp)
	jg	.L6170
	movq	%rsi, %r15
.L6169:
	addq	64(%rsp), %r12
	decl	56(%rsp)
	jne	.L6185
.L6144:
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	movaps	160(%rsp), %xmm8
	movaps	176(%rsp), %xmm9
	movaps	192(%rsp), %xmm10
	movaps	208(%rsp), %xmm11
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
.L6145:
	movslq	36(%rsp), %rax
	movslq	%r8d, %rdx
	leal	-3(%r8), %edi
	leaq	0(,%rdx,4), %r13
	salq	$4, %rdx
	movq	%r9, %r12
	movq	%r9, %rsi
	movq	%r12, 56(%rsp)
	movq	%r15, 304(%rsp)
	subq	%r13, %rdx
	movl	%edi, %r15d
	leal	(%rax,%rax), %r14d
	leaq	8(%rbx,%rdx), %rbp
	leal	-1(%rax), %edx
	movss	.LC159(%rip), %xmm7
	movq	%rax, 64(%rsp)
	leal	(%r14,%rax), %ecx
	leaq	1(%r9,%rdx), %r11
	leaq	124(%rsp), %rdx
	movslq	%r14d, %r14
	movss	.LC160(%rip), %xmm9
	movslq	%ecx, %r9
	movq	%r14, %r10
	movq	%rdx, 48(%rsp)
	movq	%r9, %r12
	movq	%r11, %rdi
	movq	%rax, %r14
	jmp	.L6167
.L6214:
	movss	4(%rbx), %xmm10
	prefetcht0	0(%rbp)
	prefetcht0	-4(%rbp)
	movaps	%xmm10, %xmm0
	movss	8(%rbx), %xmm6
	movss	(%rbx), %xmm8
	maxss	%xmm6, %xmm0
	movaps	%xmm8, %xmm11
	maxss	%xmm0, %xmm11
	ucomiss	%xmm11, %xmm7
	jbe	.L6205
.L6215:
	movb	$0, 115(%rsp)
	movb	$0, 114(%rsp)
	xorl	%eax, %eax
	movb	$0, 113(%rsp)
	movb	$0, 112(%rsp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r11d, %r11d
.L6166:
	movb	%r11b, (%rsi)
	movb	%cl, (%rsi,%r14)
	incq	%rsi
	movb	%dl, -1(%rsi,%r10)
	movb	%al, -1(%rsi,%r12)
	addq	%r13, %rbp
	addq	%r13, %rbx
	cmpq	%rsi, %rdi
	je	.L6213
.L6167:
	cmpl	$1, %r15d
	jbe	.L6214
	movss	(%rbx), %xmm10
	prefetcht0	-8(%rbp)
	movaps	%xmm10, %xmm11
	movaps	%xmm10, %xmm8
	movaps	%xmm10, %xmm6
	ucomiss	%xmm11, %xmm7
	ja	.L6215
.L6205:
	movq	48(%rsp), %rdx
	cvtss2sd	%xmm11, %xmm0
	movq	%r10, 40(%rsp)
	call	frexp
	cvtsd2ss	%xmm0, %xmm0
	mulss	%xmm9, %xmm0
	movq	40(%rsp), %r10
	divss	%xmm11, %xmm0
	mulss	%xmm0, %xmm8
	mulss	%xmm0, %xmm10
	mulss	%xmm0, %xmm6
	cvttss2si	%xmm8, %eax
	movl	%eax, %r11d
	movb	%al, 112(%rsp)
	cvttss2si	%xmm10, %eax
	movl	%eax, %ecx
	movb	%al, 113(%rsp)
	cvttss2si	%xmm6, %eax
	movl	%eax, %edx
	movb	%al, 114(%rsp)
	movl	124(%rsp), %eax
	addl	$-128, %eax
	movb	%al, 115(%rsp)
	jmp	.L6166
	.p2align 4,,7
.L6192:
	movl	36(%rsp), %eax
	movl	%eax, %r13d
	leal	2(%rax), %r15d
	jmp	.L6171
.L6212:
	cmpl	%r13d, 36(%rsp)
	movl	%edi, %r15d
	movq	%rsi, %r14
	jle	.L6178
	movslq	%edi, %rcx
	movslq	%r13d, %rdx
	movzbl	(%r12,%rcx), %ecx
	cmpb	(%r12,%rdx), %cl
	jne	.L6178
	leaq	1(%rdx,%r12), %rdx
	movl	36(%rsp), %eax
	jmp	.L6180
	.p2align 4,,7
.L6208:
	incq	%rdx
	cmpb	-1(%rdx), %cl
	jne	.L6178
.L6180:
	incl	%r13d
	cmpl	%r13d, %eax
	jne	.L6208
	movl	36(%rsp), %r13d
.L6178:
	cmpl	%r13d, %r15d
	jge	.L6181
	movl	%ebp, 40(%rsp)
	movq	48(%rsp), %rdi
	movl	$127, %ebx
	movq	72(%rsp), %rbp
	.p2align 4,,7
.L6184:
	movslq	%r15d, %rax
	movl	%r13d, %esi
	movq	8(%r14), %rcx
	movzbl	(%r12,%rax), %eax
	subl	%r15d, %esi
	movl	$1, %r8d
	cmpl	$127, %esi
	movq	%rdi, %rdx
	cmovg	%ebx, %esi
	addl	%esi, %r15d
	movb	%al, 95(%rsp)
	leal	-128(%rsi), %eax
	movb	%al, 124(%rsp)
	call	*(%r14)
	movq	8(%r14), %rcx
	movl	$1, %r8d
	movq	%rbp, %rdx
	call	*(%r14)
	cmpl	%r13d, %r15d
	jl	.L6184
	movl	40(%rsp), %ebp
.L6181:
	cmpl	%r15d, 36(%rsp)
	jg	.L6168
	movq	%r14, %r15
	jmp	.L6169
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC164:
	.ascii "EXPOSURE=          1.0000000000000\12\12-Y %d +X %d\12\0"
	.align 8
.LC163:
	.ascii "#?RADIANCE\12# Written by stb_image_write.h\12FORMAT=32-bit_rle_rgbe\12\0"
	.text
	.p2align 4,,15
	.globl	stbi_write_hdr_to_func
	.def	stbi_write_hdr_to_func;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_hdr_to_func
stbi_write_hdr_to_func:
.LFB774:
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
	movl	384(%rsp), %r13d
	testl	%r9d, %r9d
	movq	%rdx, %rbx
	movq	%rdx, 56(%rsp)
	setle	%dl
	cmpq	$0, 392(%rsp)
	movq	%rcx, %r15
	movl	%r8d, %ebp
	movl	%r9d, %r12d
	movq	%rcx, 48(%rsp)
	sete	%al
	orb	%al, %dl
	jne	.L6219
	testl	%r8d, %r8d
	jle	.L6219
	leal	0(,%r8,4), %ecx
	leaq	64(%rsp), %rdi
	leaq	.LC163(%rip), %rsi
	movslq	%ecx, %rcx
	call	malloc
	movl	$8, %ecx
	movq	%rax, %r14
	leaq	64(%rsp), %rdx
	rep movsq
	movl	$65, %r8d
	movq	%rbx, %rcx
	movzwl	(%rsi), %eax
	leaq	144(%rsp), %rsi
	movw	%ax, (%rdi)
	movl	%ebp, %edi
	call	*%r15
	imull	%r13d, %edi
	leaq	.LC164(%rip), %rdx
	movq	%rsi, %rcx
	movl	%ebp, %r9d
	movl	%r12d, %r8d
	leaq	48(%rsp), %r15
	call	sprintf
	movq	%rsi, %rdx
	movl	%eax, %r8d
	movq	56(%rsp), %rcx
	call	*48(%rsp)
	movq	392(%rsp), %rbx
	movslq	%edi, %rdi
	xorl	%esi, %esi
	salq	$2, %rdi
	.p2align 4,,7
.L6218:
	movq	%rbx, 32(%rsp)
	movq	%r14, %r9
	movl	%r13d, %r8d
	movl	%ebp, %edx
	movq	%r15, %rcx
	incl	%esi
	call	_Z25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf
	addq	%rdi, %rbx
	cmpl	%esi, %r12d
	jg	.L6218
	movq	%r14, %rcx
	call	free
	movl	$1, %eax
.L6217:
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
	.p2align 4,,7
.L6219:
	xorl	%eax, %eax
	jmp	.L6217
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_write_hdr
	.def	stbi_write_hdr;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_hdr
stbi_write_hdr:
.LFB775:
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
	movq	384(%rsp), %rbx
	movl	%edx, %ebp
	leaq	.LC158(%rip), %rdx
	movl	%r8d, %r12d
	movl	%r9d, %r13d
	call	fopen
	movq	%rax, %r15
	leaq	_ZL17stbi__stdio_writePvS_i(%rip), %rax
	testq	%r15, %r15
	movq	%r15, 56(%rsp)
	movq	%rax, 48(%rsp)
	je	.L6225
	testl	%r12d, %r12d
	setle	%dl
	testq	%rbx, %rbx
	sete	%al
	orb	%al, %dl
	jne	.L6226
	testl	%ebp, %ebp
	jle	.L6226
	leal	0(,%rbp,4), %ecx
	leaq	64(%rsp), %rdi
	leaq	.LC163(%rip), %rsi
	movslq	%ecx, %rcx
	call	malloc
	movl	$8, %ecx
	movq	%rax, %r14
	leaq	64(%rsp), %rdx
	rep movsq
	movq	%r15, %rcx
	movl	%ebp, %r15d
	movl	$65, %r8d
	movzwl	(%rsi), %eax
	leaq	144(%rsp), %rsi
	imull	%r13d, %r15d
	movw	%ax, (%rdi)
	leaq	48(%rsp), %rdi
	call	_ZL17stbi__stdio_writePvS_i
	leaq	.LC164(%rip), %rdx
	movq	%rsi, %rcx
	movl	%ebp, %r9d
	movl	%r12d, %r8d
	movslq	%r15d, %r15
	call	sprintf
	salq	$2, %r15
	movq	%rsi, %rdx
	xorl	%esi, %esi
	movl	%eax, %r8d
	movq	56(%rsp), %rcx
	call	*48(%rsp)
	.p2align 4,,7
.L6224:
	movq	%rbx, 32(%rsp)
	movq	%r14, %r9
	movl	%r13d, %r8d
	movl	%ebp, %edx
	movq	%rdi, %rcx
	incl	%esi
	call	_Z25stbiw__write_hdr_scanlineP19stbi__write_contextiiPhPf
	addq	%r15, %rbx
	cmpl	%esi, %r12d
	jg	.L6224
	movq	%r14, %rcx
	movl	$1, %ebx
	call	free
	movq	56(%rsp), %rcx
.L6223:
	call	fclose
.L6222:
	movl	%ebx, %eax
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
	.p2align 4,,7
.L6226:
	movq	%r15, %rcx
	xorl	%ebx, %ebx
	jmp	.L6223
	.p2align 4,,7
.L6225:
	xorl	%ebx, %ebx
	jmp	.L6222
	.seh_endproc
	.section .rdata,"dr"
.LC165:
	.ascii "d <= 32767 && best <= 258\0"
	.text
	.p2align 4,,15
	.globl	_Z18stbi_zlib_compressPhiPii
	.def	_Z18stbi_zlib_compressPhiPii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18stbi_zlib_compressPhiPii
_Z18stbi_zlib_compressPhiPii:
.LFB781:
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
	movq	%rcx, %r15
	movl	$131072, %ecx
	movl	%edx, 200(%rsp)
	movq	%r8, 208(%rsp)
	movl	%r9d, 216(%rsp)
	movl	$0, 96(%rsp)
	movl	$0, 100(%rsp)
	movq	$0, 104(%rsp)
	call	malloc
	cmpl	$4, 216(%rsp)
	movq	%rax, 40(%rsp)
	movl	$5, %eax
	cmovg	216(%rsp), %eax
	movl	$1, %edx
	movl	%eax, 216(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 80(%rsp)
	call	_ZL14stbiw__sbgrowfPPvii.constprop.102
	movq	104(%rsp), %rdx
	movslq	-4(%rdx), %rax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rdx)
	movb	$120, (%rdx,%rax)
	movq	104(%rsp), %rax
	testq	%rax, %rax
	je	.L6230
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	cmpl	-8(%rax), %ecx
	jl	.L6231
.L6230:
	movq	80(%rsp), %rcx
	movl	$1, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.102
	movq	104(%rsp), %rax
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
.L6231:
	movl	%ecx, -4(%rax)
	movb	$94, (%rax,%rdx)
	movl	$1, %ebx
	movl	100(%rsp), %ecx
	movl	%ebx, %eax
	leaq	96(%rsp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, 48(%rsp)
	sall	%cl, %eax
	incl	%ecx
	orl	%eax, 96(%rsp)
	movl	%ecx, 100(%rsp)
	leaq	100(%rsp), %rax
	movq	104(%rsp), %rcx
	movq	%rdi, %rdx
	movq	%rax, %r8
	movq	%rax, %rsi
	movq	%rax, 56(%rsp)
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movl	100(%rsp), %ecx
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rax, 104(%rsp)
	sall	%cl, %ebx
	addl	$2, %ecx
	orl	%ebx, 96(%rsp)
	movl	%ecx, 100(%rsp)
	movq	%rax, %rcx
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movq	40(%rsp), %rcx
	movl	$131072, %r8d
	xorl	%edx, %edx
	movq	%rax, 104(%rsp)
	call	memset
	movl	200(%rsp), %eax
	movl	$0, 36(%rsp)
	subl	$3, %eax
	movl	%eax, 72(%rsp)
	movl	216(%rsp), %eax
	addl	%eax, %eax
	movl	%eax, 76(%rsp)
	movslq	216(%rsp), %rax
	salq	$3, %rax
	movq	%rax, 88(%rsp)
.L6232:
	movl	72(%rsp), %esi
	cmpl	%esi, 36(%rsp)
	jge	.L6348
.L6233:
	movl	36(%rsp), %esi
	movq	40(%rsp), %rdi
	movslq	%esi, %rax
	leaq	(%r15,%rax), %rbx
	movq	%rax, 64(%rsp)
	movzbl	1(%rbx), %edx
	movzbl	(%rbx), %eax
	sall	$8, %edx
	movl	%eax, %r14d
	addl	%eax, %edx
	movzbl	2(%rbx), %eax
	sall	$16, %eax
	addl	%edx, %eax
	leal	0(,%rax,8), %edx
	xorl	%edx, %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	leal	(%rax,%rcx), %edx
	movl	%edx, %eax
	sall	$4, %eax
	xorl	%eax, %edx
	movl	%edx, %eax
	shrl	$17, %eax
	addl	%eax, %edx
	movl	%edx, %eax
	sall	$25, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$6, %edx
	addl	%edx, %eax
	andl	$16383, %eax
	leaq	(%rdi,%rax,8), %rbp
	movq	0(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L6291
	movslq	-4(%rcx), %r12
	testl	%r12d, %r12d
	jle	.L6292
	movl	200(%rsp), %r10d
	leal	-32768(%rsi), %r13d
	xorl	%r11d, %r11d
	xorl	%edi, %edi
	movslq	%r13d, %r13
	subl	%esi, %r10d
	movl	$3, %esi
	.p2align 4,,7
.L6244:
	movq	(%rcx,%r11,8), %r9
	movq	%r9, %rax
	subq	%r15, %rax
	cmpq	%r13, %rax
	jle	.L6238
	testl	%r10d, %r10d
	jle	.L6238
	cmpb	(%r9), %r14b
	jne	.L6238
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,7
.L6241:
	incl	%eax
	cmpl	$257, %eax
	jg	.L6240
	cmpl	%eax, %r10d
	jle	.L6240
	movzbl	1(%r9,%rdx), %r8d
	incq	%rdx
	cmpb	%r8b, (%rbx,%rdx)
	je	.L6241
.L6240:
	cmpl	%esi, %eax
	jl	.L6238
	movq	%r9, %rdi
	movl	%eax, %esi
.L6238:
	incq	%r11
	cmpl	%r11d, %r12d
	jg	.L6244
.L6237:
	cmpl	76(%rsp), %r12d
	je	.L6349
.L6289:
	leal	1(%r12), %eax
	cmpl	-8(%rcx), %eax
	jl	.L6245
.L6236:
	movq	%rbp, %rcx
	movl	$8, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.102
	movq	0(%rbp), %rcx
	movslq	-4(%rcx), %r12
	leal	1(%r12), %eax
.L6245:
	testq	%rdi, %rdi
	movl	%eax, -4(%rcx)
	movq	%rbx, (%rcx,%r12,8)
	je	.L6246
	movq	64(%rsp), %rax
	leaq	1(%r15,%rax), %rcx
	movzbl	1(%rcx), %edx
	movzbl	(%rcx), %eax
	sall	$8, %edx
	movl	%eax, %r13d
	addl	%eax, %edx
	movzbl	2(%rcx), %eax
	sall	$16, %eax
	addl	%edx, %eax
	leal	0(,%rax,8), %edx
	xorl	%edx, %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	leal	(%rax,%rcx), %edx
	movq	40(%rsp), %rcx
	movl	%edx, %eax
	sall	$4, %eax
	xorl	%eax, %edx
	movl	%edx, %eax
	shrl	$17, %eax
	addl	%eax, %edx
	movl	%edx, %eax
	sall	$25, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$6, %edx
	addl	%edx, %eax
	andl	$16383, %eax
	movq	(%rcx,%rax,8), %r11
	testq	%r11, %r11
	je	.L6247
	movl	-4(%r11), %r12d
	testl	%r12d, %r12d
	jle	.L6247
	movl	36(%rsp), %eax
	movl	200(%rsp), %r9d
	xorl	%r10d, %r10d
	leal	-32767(%rax), %ebp
	subl	%eax, %r9d
	decl	%r9d
	movslq	%ebp, %rbp
	.p2align 4,,7
.L6254:
	movq	(%r11,%r10,8), %r8
	movq	%r8, %rax
	subq	%r15, %rax
	cmpq	%rbp, %rax
	jle	.L6248
	testl	%r9d, %r9d
	jle	.L6248
	cmpb	(%r8), %r13b
	jne	.L6248
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,7
.L6251:
	incl	%eax
	cmpl	$257, %eax
	jg	.L6250
	cmpl	%eax, %r9d
	jle	.L6250
	movzbl	1(%r8,%rdx), %ecx
	incq	%rdx
	cmpb	1(%rbx,%rdx), %cl
	je	.L6251
.L6250:
	cmpl	%esi, %eax
	jg	.L6246
.L6248:
	incq	%r10
	cmpl	%r10d, %r12d
	jg	.L6254
.L6247:
	subq	%rdi, %rbx
	cmpl	$32767, %ebx
	movl	%ebx, %ebp
	jg	.L6287
	cmpl	$258, %esi
	jg	.L6287
.L6285:
	leaq	2+_ZZ18stbi_zlib_compressPhiPiiE7lengthc(%rip), %rax
	xorl	%edi, %edi
	jmp	.L6255
	.p2align 4,,7
.L6294:
	movslq	%edx, %rdi
.L6255:
	movzwl	(%rax), %ecx
	addq	$2, %rax
	leal	1(%rdi), %edx
	cmpl	%esi, %ecx
	jle	.L6294
	cmpl	$22, %edi
	jg	.L6256
	movl	%edx, %eax
	movl	%edx, %r8d
	movl	%edx, %ecx
	sarl	%eax
	andl	$1, %r8d
	sarl	$2, %ecx
	andl	$1, %eax
	addl	%r8d, %r8d
	andl	$1, %ecx
	orl	%eax, %r8d
	movl	%edx, %eax
	sarl	$4, %edx
	addl	%r8d, %r8d
	sarl	$3, %eax
	orl	%r8d, %ecx
	andl	$1, %eax
	addl	%ecx, %ecx
	orl	%ecx, %eax
	movl	100(%rsp), %ecx
	addl	%eax, %eax
	orl	%eax, %edx
	leal	0(,%rdx,4), %eax
	sall	%cl, %eax
	orl	%eax, 96(%rsp)
	addl	$7, %ecx
.L6344:
	movl	%ecx, 100(%rsp)
	movq	48(%rsp), %rdx
	movq	56(%rsp), %r8
	movq	104(%rsp), %rcx
	call	_ZL18stbiw__zlib_flushfPhPjPi
	leaq	_ZZ18stbi_zlib_compressPhiPiiE8lengtheb(%rip), %rdx
	movq	%rax, 104(%rsp)
	movzbl	(%rdx,%rdi), %edx
	testb	%dl, %dl
	je	.L6258
	leaq	_ZZ18stbi_zlib_compressPhiPiiE7lengthc(%rip), %r8
	movl	100(%rsp), %ecx
	movzwl	(%r8,%rdi,2), %r8d
	movl	%esi, %edi
	addl	%ecx, %edx
	movl	%edx, 100(%rsp)
	movq	48(%rsp), %rdx
	subl	%r8d, %edi
	movl	%edi, %r8d
	sall	%cl, %r8d
	orl	%r8d, 96(%rsp)
	movq	56(%rsp), %r8
	movq	%rax, %rcx
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movq	%rax, 104(%rsp)
.L6258:
	xorl	%edx, %edx
	movl	$1, %r12d
	leaq	2+_ZZ18stbi_zlib_compressPhiPiiE5distc(%rip), %r9
	jmp	.L6259
	.p2align 4,,7
.L6295:
	movzwl	%cx, %r12d
.L6259:
	movzwl	(%r9,%rdx,2), %r8d
	movslq	%edx, %rdi
	incq	%rdx
	cmpl	%r8d, %ebp
	movl	%r8d, %ecx
	jge	.L6295
	movl	%edi, %r8d
	movl	%edi, %edx
	movl	%edi, %ecx
	sarl	%r8d
	andl	$1, %edx
	sarl	$2, %ecx
	addl	%edx, %edx
	andl	$1, %r8d
	andl	$1, %ecx
	orl	%edx, %r8d
	movl	%edi, %edx
	addl	%r8d, %r8d
	sarl	$3, %edx
	orl	%r8d, %ecx
	andl	$1, %edx
	movl	%edi, %r8d
	addl	%ecx, %ecx
	sarl	$4, %r8d
	orl	%ecx, %edx
	movl	100(%rsp), %ecx
	addl	%edx, %edx
	orl	%r8d, %edx
	movq	56(%rsp), %r8
	sall	%cl, %edx
	orl	%edx, 96(%rsp)
	movq	48(%rsp), %rdx
	addl	$5, %ecx
	movl	%ecx, 100(%rsp)
	movq	%rax, %rcx
	call	_ZL18stbiw__zlib_flushfPhPjPi
	leaq	_ZZ18stbi_zlib_compressPhiPiiE6disteb(%rip), %rdx
	movq	%rax, 104(%rsp)
	movzbl	(%rdx,%rdi), %edx
	testb	%dl, %dl
	jne	.L6350
.L6260:
	addl	%esi, 36(%rsp)
	movl	72(%rsp), %esi
	cmpl	%esi, 36(%rsp)
	jl	.L6233
.L6348:
	movl	36(%rsp), %eax
	cmpl	200(%rsp), %eax
	jge	.L6351
	movl	200(%rsp), %ebx
	movl	%eax, %edi
	movq	56(%rsp), %rbp
	movslq	%edi, %rcx
	movq	104(%rsp), %rax
	leaq	(%r15,%rcx), %rsi
	leal	-1(%rbx), %edx
	subl	%edi, %edx
	movq	48(%rsp), %rdi
	leaq	1(%rcx,%rdx), %rbx
	addq	%r15, %rbx
	jmp	.L6265
.L6352:
	addl	$48, %edx
	movl	%edx, %r8d
	movl	%edx, %r9d
	movl	%edx, %ecx
	sarl	%r8d
	andl	$1, %r9d
	sarl	$2, %ecx
	andl	$1, %r8d
	addl	%r9d, %r9d
	andl	$1, %ecx
	orl	%r8d, %r9d
	movl	%edx, %r8d
	addl	%r9d, %r9d
	sarl	$3, %r8d
	orl	%r9d, %ecx
	andl	$1, %r8d
	movl	%edx, %r9d
	addl	%ecx, %ecx
	sarl	$4, %r9d
	orl	%ecx, %r8d
	andl	$1, %r9d
	movl	%edx, %ecx
	addl	%r8d, %r8d
	sarl	$5, %ecx
	orl	%r8d, %r9d
	andl	$1, %ecx
	movl	%edx, %r8d
	addl	%r9d, %r9d
	sarl	$6, %r8d
	sarl	$7, %edx
	orl	%r9d, %ecx
	andl	$1, %r8d
	addl	%ecx, %ecx
	orl	%ecx, %r8d
	movl	100(%rsp), %ecx
	addl	%r8d, %r8d
	orl	%r8d, %edx
	sall	%cl, %edx
	orl	%edx, 96(%rsp)
	addl	$8, %ecx
.L6346:
	movl	%ecx, 100(%rsp)
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	incq	%rsi
	call	_ZL18stbiw__zlib_flushfPhPjPi
	cmpq	%rbx, %rsi
	movq	%rax, 104(%rsp)
	je	.L6235
.L6265:
	movzbl	(%rsi), %edx
	cmpb	$-113, %dl
	jbe	.L6352
	leal	256(%rdx), %r10d
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	%r10d, %edx
	sarl	%ecx
	andl	$1, %r8d
	sarl	$2, %edx
	addl	%r8d, %r8d
	andl	$1, %ecx
	movl	%r10d, %r9d
	orl	%r8d, %ecx
	andl	$1, %edx
	sarl	$3, %r9d
	addl	%ecx, %ecx
	movl	%r10d, %r8d
	andl	$1, %r9d
	orl	%ecx, %edx
	sarl	$4, %r8d
	addl	%edx, %edx
	andl	$1, %r8d
	orl	%edx, %r9d
	movl	%r10d, %edx
	addl	%r9d, %r9d
	sarl	$5, %edx
	orl	%r9d, %r8d
	andl	$1, %edx
	addl	%r8d, %r8d
	orl	%r8d, %edx
	leal	(%rdx,%rdx), %ecx
	movl	%r10d, %edx
	sarl	$6, %edx
	andl	$1, %edx
	orl	%ecx, %edx
	movl	100(%rsp), %ecx
	leal	3(,%rdx,4), %edx
	sall	%cl, %edx
	addl	$9, %ecx
	orl	%edx, 96(%rsp)
	jmp	.L6346
.L6246:
	movzbl	(%rbx), %eax
	cmpb	$-113, %al
	ja	.L6353
	addl	$48, %eax
	movl	%eax, %edx
	movl	%eax, %r8d
	movl	%eax, %ecx
	sarl	%edx
	andl	$1, %r8d
	sarl	$2, %ecx
	addl	%r8d, %r8d
	andl	$1, %edx
	andl	$1, %ecx
	orl	%r8d, %edx
	movl	%eax, %r8d
	addl	%edx, %edx
	sarl	$3, %r8d
	orl	%ecx, %edx
	andl	$1, %r8d
	movl	%eax, %ecx
	addl	%edx, %edx
	sarl	$4, %ecx
	orl	%r8d, %edx
	andl	$1, %ecx
	movl	%eax, %r8d
	addl	%edx, %edx
	sarl	$5, %r8d
	orl	%ecx, %edx
	andl	$1, %r8d
	movl	%eax, %ecx
	addl	%edx, %edx
	sarl	$6, %ecx
	sarl	$7, %eax
	orl	%r8d, %edx
	andl	$1, %ecx
	addl	%edx, %edx
	orl	%ecx, %edx
	movl	100(%rsp), %ecx
	addl	%edx, %edx
	orl	%edx, %eax
	sall	%cl, %eax
	orl	%eax, 96(%rsp)
	addl	$8, %ecx
.L6345:
	movl	%ecx, 100(%rsp)
	movq	56(%rsp), %r8
	movq	48(%rsp), %rdx
	movq	104(%rsp), %rcx
	call	_ZL18stbiw__zlib_flushfPhPjPi
	incl	36(%rsp)
	movq	%rax, 104(%rsp)
	jmp	.L6232
.L6287:
	leaq	.LC32(%rip), %rdx
	leaq	.LC165(%rip), %rcx
	movl	$787, %r8d
	call	_assert
	jmp	.L6285
.L6350:
	movl	100(%rsp), %ecx
	movq	56(%rsp), %r8
	subl	%r12d, %ebx
	addl	%ecx, %edx
	sall	%cl, %ebx
	movq	%rax, %rcx
	movl	%edx, 100(%rsp)
	movq	48(%rsp), %rdx
	orl	%ebx, 96(%rsp)
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movq	%rax, 104(%rsp)
	jmp	.L6260
.L6349:
	movq	88(%rsp), %rax
	leaq	(%rcx,%rax), %rdx
	movq	%rax, %r8
	call	memmove
	movl	216(%rsp), %eax
	movq	0(%rbp), %rcx
	movslq	%eax, %r12
	movl	%eax, -4(%rcx)
	jmp	.L6289
.L6256:
	leal	169(%rdi), %ecx
	movl	%ecx, %eax
	movl	%ecx, %edx
	sarl	%eax
	andl	$1, %edx
	addl	%edx, %edx
	andl	$1, %eax
	orl	%edx, %eax
	leal	(%rax,%rax), %edx
	movl	%ecx, %eax
	movl	100(%rsp), %ecx
	sarl	$2, %eax
	andl	$1, %eax
	orl	%edx, %eax
	sall	$5, %eax
	orl	$3, %eax
	sall	%cl, %eax
	addl	$8, %ecx
	orl	%eax, 96(%rsp)
	jmp	.L6344
.L6291:
	xorl	%edi, %edi
	movl	$3, %esi
	jmp	.L6236
.L6351:
	movq	104(%rsp), %rax
.L6235:
	movq	48(%rsp), %rdx
	movq	56(%rsp), %r8
	movq	%rax, %rcx
	addl	$7, 100(%rsp)
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movl	100(%rsp), %edx
	movq	%rax, 104(%rsp)
	testl	%edx, %edx
	je	.L6268
	movq	48(%rsp), %rbx
	movq	56(%rsp), %rsi
	.p2align 4,,7
.L6325:
	incl	%edx
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	%edx, 100(%rsp)
	movq	%rbx, %rdx
	call	_ZL18stbiw__zlib_flushfPhPjPi
	movl	100(%rsp), %edx
	movq	%rax, 104(%rsp)
	testl	%edx, %edx
	jne	.L6325
.L6268:
	movq	40(%rsp), %rax
	leaq	131072(%rax), %rbx
	movq	%rax, %rsi
	.p2align 4,,7
.L6267:
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L6270
	subq	$8, %rcx
	call	free
.L6270:
	addq	$8, %rsi
	cmpq	%rbx, %rsi
	jne	.L6267
	movq	40(%rsp), %rcx
	call	free
	movl	$1584310703, %edx
	movl	%edx, %eax
	imull	200(%rsp)
	movl	200(%rsp), %eax
	sarl	$31, %eax
	sarl	$11, %edx
	subl	%eax, %edx
	movl	200(%rsp), %eax
	imull	$5552, %edx, %r9d
	subl	%r9d, %eax
	movl	%eax, %r9d
	movl	200(%rsp), %eax
	testl	%eax, %eax
	jle	.L6296
	xorl	%r11d, %r11d
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	movl	$1, %ecx
	movl	$-2146992015, %ebx
	jle	.L6272
	.p2align 4,,7
.L6338:
	movslq	%r11d, %r10
	xorl	%eax, %eax
	addq	%r15, %r10
	.p2align 4,,7
.L6273:
	movzbl	(%r10,%rax), %edx
	incq	%rax
	addl	%edx, %ecx
	addl	%ecx, %r8d
	cmpl	%eax, %r9d
	jg	.L6273
.L6272:
	movl	%ecx, %eax
	addl	%r9d, %r11d
	movl	$5552, %r9d
	mull	%ebx
	shrl	$15, %edx
	imull	$65521, %edx, %eax
	subl	%eax, %ecx
	movl	%r8d, %eax
	mull	%ebx
	shrl	$15, %edx
	imull	$65521, %edx, %eax
	subl	%eax, %r8d
	cmpl	%r11d, 200(%rsp)
	jg	.L6338
	movl	%r8d, %eax
	movl	%r8d, %edi
	movl	%ecx, %ebx
	shrl	$8, %eax
	movl	%eax, %ebp
	movl	%ecx, %eax
	shrl	$8, %eax
	movl	%eax, %esi
.L6271:
	movq	104(%rsp), %rax
	testq	%rax, %rax
	je	.L6275
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	cmpl	-8(%rax), %ecx
	jl	.L6276
.L6275:
	movq	80(%rsp), %rcx
	movl	$1, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.102
	movq	104(%rsp), %rax
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
.L6276:
	movl	%ecx, -4(%rax)
	movb	%bpl, (%rax,%rdx)
	movq	104(%rsp), %rax
	testq	%rax, %rax
	je	.L6277
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	cmpl	-8(%rax), %ecx
	jl	.L6278
.L6277:
	movq	80(%rsp), %rcx
	movl	$1, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.102
	movq	104(%rsp), %rax
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
.L6278:
	movl	%ecx, -4(%rax)
	movb	%dil, (%rax,%rdx)
	movq	104(%rsp), %rax
	testq	%rax, %rax
	je	.L6279
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	cmpl	-8(%rax), %ecx
	jl	.L6280
.L6279:
	movq	80(%rsp), %rcx
	movl	$1, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.102
	movq	104(%rsp), %rax
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
.L6280:
	movl	%ecx, -4(%rax)
	movb	%sil, (%rax,%rdx)
	movq	104(%rsp), %rax
	testq	%rax, %rax
	je	.L6281
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
	cmpl	-8(%rax), %ecx
	jl	.L6282
.L6281:
	movq	80(%rsp), %rcx
	movl	$1, %edx
	call	_ZL14stbiw__sbgrowfPPvii.constprop.102
	movq	104(%rsp), %rax
	movslq	-4(%rax), %rdx
	leal	1(%rdx), %ecx
.L6282:
	movl	%ecx, -4(%rax)
	movb	%bl, (%rax,%rdx)
	movq	104(%rsp), %rdx
	movq	208(%rsp), %rax
	movslq	-4(%rdx), %r8
	leaq	-8(%rdx), %rcx
	movl	%r8d, (%rax)
	call	memmove
	movq	104(%rsp), %rax
	subq	$8, %rax
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
.L6353:
	leal	256(%rax), %edx
	movl	%edx, %eax
	movl	%edx, %ecx
	movl	%edx, %r8d
	sarl	%eax
	andl	$1, %ecx
	sarl	$2, %r8d
	addl	%ecx, %ecx
	andl	$1, %eax
	andl	$1, %r8d
	orl	%ecx, %eax
	movl	%edx, %ecx
	addl	%eax, %eax
	sarl	$3, %ecx
	orl	%r8d, %eax
	andl	$1, %ecx
	movl	%edx, %r8d
	addl	%eax, %eax
	sarl	$4, %r8d
	orl	%ecx, %eax
	andl	$1, %r8d
	movl	%edx, %ecx
	addl	%eax, %eax
	sarl	$5, %ecx
	sarl	$6, %edx
	orl	%r8d, %eax
	andl	$1, %ecx
	andl	$1, %edx
	addl	%eax, %eax
	orl	%ecx, %eax
	movl	100(%rsp), %ecx
	addl	%eax, %eax
	orl	%edx, %eax
	leal	3(,%rax,4), %eax
	sall	%cl, %eax
	addl	$9, %ecx
	orl	%eax, 96(%rsp)
	jmp	.L6345
.L6292:
	xorl	%edi, %edi
	movl	$3, %esi
	jmp	.L6237
.L6296:
	movl	$1, %ebx
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%ebp, %ebp
	jmp	.L6271
	.seh_endproc
	.section .rdata,"dr"
.LC166:
	.ascii "o == out + *out_len\0"
	.text
	.p2align 4,,15
	.globl	_Z21stbi_write_png_to_memPhiiiiPi
	.def	_Z21stbi_write_png_to_memPhiiiiPi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z21stbi_write_png_to_memPhiiiiPi
_Z21stbi_write_png_to_memPhiiiiPi:
.LFB785:
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
	subq	$344, %rsp
	.seh_stackalloc	344
	movaps	%xmm6, 288(%rsp)
	.seh_savexmm	%xmm6, 288
	movaps	%xmm7, 304(%rsp)
	.seh_savexmm	%xmm7, 304
	movaps	%xmm8, 320(%rsp)
	.seh_savexmm	%xmm8, 320
	.seh_endprologue
	testl	%edx, %edx
	movq	%rcx, 416(%rsp)
	movl	%edx, 424(%rsp)
	movl	%r8d, 432(%rsp)
	movl	%r9d, 440(%rsp)
	movl	$-1, 256(%rsp)
	movl	$0, 260(%rsp)
	movl	$4, 264(%rsp)
	movl	$2, 268(%rsp)
	movl	$6, 272(%rsp)
	je	.L6355
	movl	448(%rsp), %esi
	imull	%r8d, %esi
.L6356:
	movl	440(%rsp), %eax
	leal	1(%rsi), %ebx
	imull	%ebx, %eax
	movslq	%eax, %rcx
	movl	%eax, 236(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	%rax, 216(%rsp)
	je	.L6445
	movslq	%esi, %rax
	movq	%rax, %rcx
	movq	%rax, 200(%rsp)
	call	malloc
	testq	%rax, %rax
	movq	%rax, %r15
	je	.L6359
	movl	440(%rsp), %r10d
	testl	%r10d, %r10d
	jle	.L6360
	movslq	%ebx, %rax
	leal	-1(%rsi), %edx
	movslq	448(%rsp), %r13
	movq	%rax, 224(%rsp)
	movq	216(%rsp), %rax
	movl	$0, 232(%rsp)
	movl	$0, 176(%rsp)
	incq	%rax
	movq	%rax, 192(%rsp)
	movq	%r15, %rax
	negq	%rax
	andl	$15, %eax
	cmpl	%esi, %eax
	cmova	%esi, %eax
	cmpl	$18, %esi
	cmovbe	%esi, %eax
	movl	%eax, %r14d
	movl	%esi, %eax
	subl	%r14d, %eax
	subl	%r14d, %edx
	movl	%eax, 128(%rsp)
	subl	$16, %eax
	movl	%edx, 108(%rsp)
	shrl	$4, %eax
	movl	%r14d, %edx
	leal	1(%rax), %edi
	subl	$4, %eax
	movl	%eax, 132(%rsp)
	shrl	$2, %eax
	leal	4(,%rax,4), %eax
	movl	%edi, 144(%rsp)
	sall	$4, %edi
	movl	%edi, 124(%rsp)
	leaq	(%r15,%rdx), %rdi
	movl	%eax, 104(%rsp)
	leaq	_ZZ21stbi_write_png_to_memPhiiiiPiE8firstmap(%rip), %rax
	movq	%rdi, 112(%rsp)
	movq	%r13, %rdi
	movl	%r14d, %r13d
	movq	%rax, 184(%rsp)
	movl	424(%rsp), %eax
	movl	%esi, %r14d
	negl	%eax
	cltq
	movq	%rax, 88(%rsp)
	movl	448(%rsp), %eax
	decl	%eax
	incq	%rax
	movq	%rax, 208(%rsp)
.L6361:
	movslq	232(%rsp), %rax
	movl	$0, 84(%rsp)
	leaq	.L6373(%rip), %rbp
	addq	416(%rsp), %rax
	movl	84(%rsp), %r8d
	movl	$1, 180(%rsp)
	movl	$2147483647, 80(%rsp)
	movl	$0, 120(%rsp)
	movq	%rax, %r12
	movq	%rax, 40(%rsp)
	movslq	424(%rsp), %rax
	addq	208(%rsp), %r12
	movq	%rax, 168(%rsp)
	negq	%rax
	testl	%r8d, %r8d
	movq	%rax, 96(%rsp)
	movq	%rdi, %rax
	movl	%r13d, %edi
	movq	%rax, %r13
	je	.L6415
.L6448:
	movl	120(%rsp), %eax
	cmpl	$4, %eax
	jg	.L6367
	movl	%eax, 36(%rsp)
.L6366:
	movslq	36(%rsp), %rax
	movq	184(%rsp), %rbx
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 48(%rsp)
	movq	%r13, %rax
	movl	%r14d, %r13d
	movq	%r15, %r14
	movl	%edi, %r15d
	movq	%r12, %rdi
	movq	%rax, %r12
	.p2align 4,,7
.L6410:
	movq	48(%rsp), %rax
	movq	40(%rsp), %r9
	movq	%r14, %r8
	movl	448(%rsp), %ecx
	movl	(%rax), %edx
	movq	%r9, %rax
	addq	88(%rsp), %r9
	testl	%ecx, %ecx
	jle	.L6380
	.p2align 4,,7
.L6381:
	cmpl	$6, %edx
	ja	.L6371
	movl	%edx, %ecx
	movslq	0(%rbp,%rcx,4), %rcx
	addq	%rbp, %rcx
	jmp	*%rcx
	.section .rdata,"dr"
	.align 4
.L6373:
	.long	.L6379-.L6373
	.long	.L6379-.L6373
	.long	.L6377-.L6373
	.long	.L6376-.L6373
	.long	.L6377-.L6373
	.long	.L6379-.L6373
	.long	.L6379-.L6373
	.text
	.p2align 4,,7
.L6379:
	movzbl	(%rax), %ecx
	movb	%cl, (%r8)
.L6371:
	incq	%rax
	incq	%r8
	incq	%r9
	cmpq	%rax, %rdi
	jne	.L6381
.L6380:
	cmpl	%r13d, 448(%rsp)
	jge	.L6393
	movq	40(%rsp), %rax
	movq	96(%rsp), %rbx
	leaq	(%r14,%r12), %r8
	leaq	.L6384(%rip), %r10
	leaq	(%rax,%r12), %r9
	movq	%rax, %rcx
	movl	448(%rsp), %eax
	.p2align 4,,7
.L6395:
	cmpl	$6, %edx
	ja	.L6382
	movl	%edx, %r11d
	movslq	(%r10,%r11,4), %r11
	addq	%r10, %r11
	jmp	*%r11
	.section .rdata,"dr"
	.align 4
.L6384:
	.long	.L6383-.L6384
	.long	.L6390-.L6384
	.long	.L6386-.L6384
	.long	.L6387-.L6384
	.long	.L6388-.L6384
	.long	.L6389-.L6384
	.long	.L6390-.L6384
	.text
	.p2align 4,,7
.L6377:
	movzbl	(%rax), %ecx
	subb	(%r9), %cl
	movb	%cl, (%r8)
	jmp	.L6371
	.p2align 4,,7
.L6376:
	movzbl	(%r9), %ecx
	movzbl	(%rax), %ebx
	sarl	%ecx
	subl	%ecx, %ebx
	movb	%bl, (%r8)
	jmp	.L6371
	.p2align 4,,7
.L6390:
	movzbl	(%r9), %r11d
	subb	(%rcx), %r11b
	movb	%r11b, (%r8)
.L6382:
	incl	%eax
	incq	%r9
	incq	%r8
	incq	%rcx
	cmpl	%r13d, %eax
	jne	.L6395
.L6393:
	movl	84(%rsp), %eax
	testl	%eax, %eax
	jne	.L6447
.L6440:
	testl	%r13d, %r13d
	jle	.L6417
	testl	%r15d, %r15d
	je	.L6418
	movq	%r14, %r8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align 4,,7
.L6398:
	movsbl	(%r8), %eax
	incl	%ecx
	incq	%r8
	movl	%eax, %r9d
	sarl	$31, %r9d
	xorl	%r9d, %eax
	subl	%r9d, %eax
	addl	%eax, %edx
	cmpl	%ecx, %r15d
	jne	.L6398
	cmpl	%r15d, %r13d
	movl	%r15d, %eax
	je	.L6396
.L6397:
	cmpl	$14, 108(%rsp)
	jbe	.L6400
	xorl	%r8d, %r8d
	cmpl	$-6, 132(%rsp)
	movq	112(%rsp), %rcx
	pxor	%xmm0, %xmm0
	ja	.L6401
	pxor	%xmm5, %xmm5
	movl	104(%rsp), %ebx
	pxor	%xmm4, %xmm4
.L6402:
	movdqa	(%rcx), %xmm1
	movdqa	%xmm5, %xmm3
	prefetcht0	176(%rcx)
	movdqa	%xmm4, %xmm6
	addl	$4, %r8d
	pcmpgtb	%xmm1, %xmm3
	movdqa	%xmm1, %xmm2
	addq	$64, %rcx
	punpcklbw	%xmm3, %xmm2
	punpckhbw	%xmm3, %xmm1
	pcmpgtw	%xmm2, %xmm6
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm6, %xmm3
	punpckhwd	%xmm6, %xmm2
	movdqa	%xmm3, %xmm7
	psrad	$31, %xmm7
	pxor	%xmm7, %xmm3
	psubd	%xmm7, %xmm3
	paddd	%xmm3, %xmm0
	movdqa	%xmm2, %xmm3
	movdqa	%xmm4, %xmm7
	psrad	$31, %xmm3
	pxor	%xmm3, %xmm2
	pcmpgtw	%xmm1, %xmm7
	psubd	%xmm3, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm0, %xmm2
	punpckhwd	%xmm7, %xmm1
	punpcklwd	%xmm7, %xmm3
	movdqa	%xmm3, %xmm0
	movdqa	%xmm3, %xmm6
	psrad	$31, %xmm0
	pxor	%xmm0, %xmm6
	psubd	%xmm0, %xmm6
	paddd	%xmm2, %xmm6
	movdqa	%xmm1, %xmm2
	movdqa	%xmm6, %xmm0
	psrad	$31, %xmm2
	pxor	%xmm2, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm6
	movdqa	-48(%rcx), %xmm1
	paddd	%xmm0, %xmm6
	movdqa	%xmm5, %xmm0
	movdqa	%xmm1, %xmm2
	pcmpgtb	%xmm1, %xmm0
	punpcklbw	%xmm0, %xmm2
	punpckhbw	%xmm0, %xmm1
	movdqa	%xmm4, %xmm0
	movdqa	%xmm2, %xmm3
	pcmpgtw	%xmm2, %xmm0
	punpcklwd	%xmm0, %xmm3
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm3, %xmm7
	movdqa	%xmm2, %xmm0
	psrad	$31, %xmm7
	pxor	%xmm7, %xmm3
	psrad	$31, %xmm0
	pxor	%xmm0, %xmm2
	psubd	%xmm7, %xmm3
	paddd	%xmm6, %xmm3
	psubd	%xmm0, %xmm2
	paddd	%xmm3, %xmm2
	movdqa	%xmm4, %xmm3
	movdqa	%xmm1, %xmm0
	pcmpgtw	%xmm1, %xmm3
	punpcklwd	%xmm3, %xmm0
	punpckhwd	%xmm3, %xmm1
	movdqa	%xmm4, %xmm3
	movdqa	%xmm0, %xmm6
	psrad	$31, %xmm6
	pxor	%xmm6, %xmm0
	psubd	%xmm6, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	pxor	%xmm2, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm6
	movdqa	%xmm5, %xmm2
	paddd	%xmm0, %xmm6
	movdqa	-32(%rcx), %xmm0
	pcmpgtb	%xmm0, %xmm2
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm2, %xmm1
	punpckhbw	%xmm2, %xmm0
	pcmpgtw	%xmm1, %xmm3
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm3, %xmm2
	punpckhwd	%xmm3, %xmm1
	movdqa	%xmm2, %xmm7
	movdqa	%xmm1, %xmm3
	psrad	$31, %xmm7
	pxor	%xmm7, %xmm2
	psrad	$31, %xmm3
	pxor	%xmm3, %xmm1
	psubd	%xmm7, %xmm2
	movdqa	%xmm4, %xmm7
	paddd	%xmm6, %xmm2
	psubd	%xmm3, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	pcmpgtw	%xmm0, %xmm7
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm7, %xmm2
	punpckhwd	%xmm7, %xmm0
	movdqa	%xmm4, %xmm7
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm6
	movdqa	%xmm0, %xmm2
	psrad	$31, %xmm1
	psrad	$31, %xmm2
	pxor	%xmm1, %xmm6
	pxor	%xmm2, %xmm0
	psubd	%xmm1, %xmm6
	paddd	%xmm3, %xmm6
	movdqa	%xmm6, %xmm1
	psubd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm6
	movdqa	%xmm5, %xmm0
	paddd	%xmm1, %xmm6
	movdqa	-16(%rcx), %xmm1
	cmpl	%r8d, %ebx
	pcmpgtb	%xmm1, %xmm0
	movdqa	%xmm1, %xmm2
	punpcklbw	%xmm0, %xmm2
	punpckhbw	%xmm0, %xmm1
	pcmpgtw	%xmm2, %xmm7
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm7, %xmm2
	punpcklwd	%xmm7, %xmm3
	movdqa	%xmm3, %xmm8
	movdqa	%xmm3, %xmm0
	movdqa	%xmm2, %xmm3
	psrad	$31, %xmm8
	psrad	$31, %xmm3
	pxor	%xmm8, %xmm0
	pxor	%xmm3, %xmm2
	psubd	%xmm8, %xmm0
	paddd	%xmm6, %xmm0
	psubd	%xmm3, %xmm2
	paddd	%xmm0, %xmm2
	movdqa	%xmm4, %xmm0
	movdqa	%xmm1, %xmm3
	pcmpgtw	%xmm1, %xmm0
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm3
	movdqa	%xmm1, %xmm0
	movdqa	%xmm3, %xmm6
	psrad	$31, %xmm0
	pxor	%xmm0, %xmm1
	psrad	$31, %xmm6
	pxor	%xmm6, %xmm3
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psubd	%xmm6, %xmm3
	paddd	%xmm2, %xmm3
	paddd	%xmm3, %xmm0
	jne	.L6402
	movl	%ebx, %r8d
.L6401:
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
.L6407:
	movdqa	(%rcx), %xmm1
	movdqa	%xmm5, %xmm3
	movdqa	%xmm4, %xmm6
	addq	$16, %rcx
	pcmpgtb	%xmm1, %xmm3
	movdqa	%xmm1, %xmm2
	incl	%r8d
	cmpl	144(%rsp), %r8d
	punpcklbw	%xmm3, %xmm2
	punpckhbw	%xmm3, %xmm1
	pcmpgtw	%xmm2, %xmm6
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm6, %xmm3
	punpckhwd	%xmm6, %xmm2
	movdqa	%xmm3, %xmm7
	psrad	$31, %xmm7
	pxor	%xmm7, %xmm3
	psubd	%xmm7, %xmm3
	paddd	%xmm3, %xmm0
	movdqa	%xmm2, %xmm3
	psrad	$31, %xmm3
	pxor	%xmm3, %xmm2
	psubd	%xmm3, %xmm2
	movdqa	%xmm4, %xmm3
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	pcmpgtw	%xmm1, %xmm3
	punpcklwd	%xmm3, %xmm2
	punpckhwd	%xmm3, %xmm1
	movdqa	%xmm2, %xmm6
	psrad	$31, %xmm6
	pxor	%xmm6, %xmm2
	psubd	%xmm6, %xmm2
	paddd	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	pxor	%xmm0, %xmm1
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	jb	.L6407
	movdqa	%xmm0, %xmm1
	movl	124(%rsp), %ebx
	psrldq	$8, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	addl	%ebx, %eax
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, 56(%rsp)
	movl	56(%rsp), %ecx
	addl	%ecx, %edx
	cmpl	128(%rsp), %ebx
	je	.L6396
	.p2align 4,,7
.L6400:
	movslq	%eax, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	1(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	2(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	3(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	4(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	5(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	6(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	7(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	8(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	9(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	10(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	11(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	12(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	leal	13(%rax), %ecx
	cmpl	%ecx, %r13d
	jle	.L6396
	movslq	%ecx, %rcx
	addl	$14, %eax
	movsbl	(%r14,%rcx), %ecx
	movl	%ecx, %r8d
	sarl	$31, %r8d
	xorl	%r8d, %ecx
	subl	%r8d, %ecx
	addl	%ecx, %edx
	cmpl	%eax, %r13d
	jle	.L6396
	cltq
	movsbl	(%r14,%rax), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	addl	%eax, %edx
.L6396:
	cmpl	80(%rsp), %edx
	jge	.L6408
	movl	36(%rsp), %eax
	movl	%edx, 80(%rsp)
	movl	%eax, 120(%rsp)
.L6408:
	incl	36(%rsp)
	addq	$4, 48(%rsp)
	movl	36(%rsp), %eax
	cmpl	$5, %eax
	jne	.L6410
	movq	%r12, %rax
	movq	%rdi, %r12
	movl	%r15d, %edi
	movq	%r14, %r15
	movl	%r13d, %r14d
	movq	%rax, %r13
.L6409:
	incl	84(%rsp)
	incl	180(%rsp)
	movl	84(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L6448
.L6415:
	movl	$0, 36(%rsp)
	jmp	.L6366
	.p2align 4,,7
.L6387:
	leaq	(%rcx,%r12), %r11
	movzbl	(%r11,%rbx), %esi
	movzbl	(%rcx), %r11d
	addl	%esi, %r11d
.L6444:
	movzbl	(%r9), %esi
	sarl	%r11d
	subl	%r11d, %esi
	movb	%sil, (%r8)
	jmp	.L6382
	.p2align 4,,7
.L6386:
	leaq	(%rcx,%r12), %rsi
	movzbl	(%r9), %r11d
	subb	(%rsi,%rbx), %r11b
	movb	%r11b, (%r8)
	jmp	.L6382
	.p2align 4,,7
.L6389:
	movzbl	(%rcx), %r11d
	jmp	.L6444
	.p2align 4,,7
.L6383:
	movzbl	(%r9), %r11d
	movb	%r11b, (%r8)
	jmp	.L6382
	.p2align 4,,7
.L6388:
	movslq	%eax, %rdx
	movl	%eax, %r11d
	subl	424(%rsp), %eax
	movq	40(%rsp), %rbx
	movq	%rdx, %rcx
	movq	%r14, 136(%rsp)
	subq	%r12, %rcx
	movl	%r15d, 148(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, 152(%rsp)
	movq	%r12, 160(%rsp)
	cltq
	leaq	(%rbx,%rdx), %rsi
	addq	%rbx, %rcx
	subq	%r12, %rax
	addq	%rbx, %rax
	movq	%rsi, 56(%rsp)
	movq	%rax, 64(%rsp)
	movq	%rdx, %rax
	subq	168(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 72(%rsp)
	leaq	(%r14,%rdx), %rax
	movq	%rcx, %r14
	movq	%rax, %r15
	jmp	.L6394
	.p2align 4,,7
.L6450:
	cmpl	%eax, %edx
	jg	.L6423
.L6391:
	subl	%r10d, %r8d
	incl	%r11d
	movb	%r8b, (%r15,%r9)
	incq	%r9
	cmpl	%r13d, %r11d
	jge	.L6449
.L6394:
	movq	56(%rsp), %rax
	movzbl	(%r14,%r9), %edx
	movzbl	(%rax,%r9), %r8d
	movq	64(%rsp), %rax
	movl	%edx, %r10d
	movzbl	(%rax,%r9), %ebx
	movq	72(%rsp), %rax
	movzbl	(%rax,%r9), %ecx
	movl	%ebx, %r12d
	leal	(%rcx,%rdx), %eax
	movl	%ecx, %edi
	subl	%ebx, %eax
	movl	%eax, %esi
	subl	%edx, %esi
	movl	%esi, %edx
	sarl	$31, %esi
	xorl	%esi, %edx
	subl	%esi, %edx
	movl	%eax, %esi
	subl	%ebx, %eax
	subl	%ecx, %esi
	movl	%eax, %ebx
	movl	%esi, %ecx
	sarl	$31, %esi
	sarl	$31, %ebx
	xorl	%esi, %ecx
	xorl	%ebx, %eax
	subl	%esi, %ecx
	subl	%ebx, %eax
	cmpl	%ecx, %edx
	jle	.L6450
.L6423:
	cmpl	%eax, %ecx
	cmovg	%r12d, %edi
	movl	%edi, %r10d
	jmp	.L6391
	.p2align 4,,7
.L6418:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L6397
	.p2align 4,,7
.L6449:
	movl	84(%rsp), %eax
	movq	136(%rsp), %r14
	movl	148(%rsp), %r15d
	movq	152(%rsp), %rdi
	movq	160(%rsp), %r12
	testl	%eax, %eax
	je	.L6440
.L6447:
	movq	%r12, %rax
	movq	%rdi, %r12
	movl	%r15d, %edi
	movq	%r14, %r15
	movl	%r13d, %r14d
	movq	%rax, %r13
.L6367:
	cmpl	$2, 180(%rsp)
	jne	.L6409
	movq	%r13, %rax
	movzbl	120(%rsp), %ebx
	movl	%edi, %r13d
	movq	%rax, %rdi
	movq	192(%rsp), %rax
	movq	200(%rsp), %r8
	movq	%r15, %rdx
	movb	%bl, -1(%rax)
	movq	%rax, %rcx
	call	memcpy
	incl	176(%rsp)
	movl	176(%rsp), %eax
	cmpl	%eax, 440(%rsp)
	je	.L6360
	movl	176(%rsp), %r9d
	leaq	_ZZ21stbi_write_png_to_memPhiiiiPiE7mapping(%rip), %rax
	leaq	_ZZ21stbi_write_png_to_memPhiiiiPiE8firstmap(%rip), %rdx
	movl	424(%rsp), %ebx
	testl	%r9d, %r9d
	cmove	%rdx, %rax
	addl	%ebx, 232(%rsp)
	movq	224(%rsp), %rbx
	movq	%rax, 184(%rsp)
	addq	%rbx, 192(%rsp)
	jmp	.L6361
.L6417:
	xorl	%edx, %edx
	jmp	.L6396
.L6360:
	movq	%r15, %rcx
	call	free
	movq	216(%rsp), %rbx
	movl	236(%rsp), %edx
	leaq	252(%rsp), %r8
	movl	$8, %r9d
	movq	%rbx, %rcx
	call	_Z18stbi_zlib_compressPhiPii
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	free
	testq	%rdi, %rdi
	je	.L6445
	movl	252(%rsp), %eax
	leal	57(%rax), %ecx
	movslq	%ecx, %rcx
	call	malloc
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L6445
	movl	252(%rsp), %eax
	movq	456(%rsp), %rsi
	movl	432(%rsp), %r8d
	movl	432(%rsp), %ebp
	movl	432(%rsp), %r11d
	movl	440(%rsp), %ecx
	leal	57(%rax), %edx
	movl	440(%rsp), %r10d
	movl	440(%rsp), %r9d
	sarl	$16, %ebp
	shrl	$24, %r8d
	movb	$0, 8(%rbx)
	movl	%edx, (%rsi)
	movabsq	$727905341920923785, %rsi
	movslq	448(%rsp), %rdx
	movq	%rsi, (%rbx)
	movzbl	432(%rsp), %esi
	sarl	$8, %r11d
	sarl	$16, %r10d
	sarl	$8, %r9d
	shrl	$24, %ecx
	movb	%r11b, 18(%rbx)
	movb	%r10b, 21(%rbx)
	movl	256(%rsp,%rdx,4), %r12d
	movb	%r8b, 16(%rbx)
	movb	%sil, 19(%rbx)
	movzbl	440(%rsp), %esi
	movb	%bpl, 17(%rbx)
	movb	%cl, 20(%rbx)
	movb	%r9b, 22(%rbx)
	movb	$0, 9(%rbx)
	movb	$0, 10(%rbx)
	movb	$13, 11(%rbx)
	movb	%sil, 23(%rbx)
	movb	$73, 12(%rbx)
	leaq	_ZZL12stbiw__crc32PhiE9crc_table(%rip), %rsi
	movb	$72, 13(%rbx)
	movb	$68, 14(%rbx)
	movb	$82, 15(%rbx)
	movb	$8, 24(%rbx)
	movb	%r12b, 25(%rbx)
	movb	$0, 26(%rbx)
	movl	728+_ZZL12stbiw__crc32PhiE9crc_table(%rip), %r14d
	movb	%al, 36(%rbx)
	movb	$0, 27(%rbx)
	movb	$0, 28(%rbx)
	movb	$73, 37(%rbx)
	movb	$68, 38(%rbx)
	movl	%r14d, %edx
	movb	$65, 39(%rbx)
	xorl	$16777215, %edx
	movl	%edx, %r13d
	movzbl	%dl, %edx
	xorq	$72, %rdx
	shrl	$8, %r13d
	xorl	(%rsi,%rdx,4), %r13d
	movl	%r13d, %edx
	movzbl	%r13b, %r13d
	xorq	$68, %r13
	shrl	$8, %edx
	xorl	(%rsi,%r13,4), %edx
	movl	%edx, %r13d
	movzbl	%dl, %edx
	xorq	$82, %rdx
	shrl	$8, %r13d
	xorl	(%rsi,%rdx,4), %r13d
	xorl	%r13d, %r8d
	movl	%r13d, %edx
	movzbl	%r8b, %r8d
	shrl	$8, %edx
	xorl	(%rsi,%r8,4), %edx
	movl	%edx, %r8d
	xorl	%ebp, %edx
	movslq	%eax, %rbp
	movzbl	%dl, %edx
	shrl	$8, %r8d
	xorl	(%rsi,%rdx,4), %r8d
	movl	%r8d, %edx
	xorl	%r11d, %r8d
	movzbl	%r8b, %r8d
	shrl	$8, %edx
	xorl	(%rsi,%r8,4), %edx
	movl	%edx, %r8d
	xorb	432(%rsp), %dl
	shrl	$8, %r8d
	movzbl	%dl, %edx
	xorl	(%rsi,%rdx,4), %r8d
	xorl	%r8d, %ecx
	movl	%r8d, %edx
	movq	%rbp, %r8
	movzbl	%cl, %ecx
	shrl	$8, %edx
	xorl	(%rsi,%rcx,4), %edx
	movl	%edx, %ecx
	shrl	$8, %edx
	xorl	%r10d, %ecx
	movzbl	%cl, %ecx
	xorl	(%rsi,%rcx,4), %edx
	movl	%edx, %ecx
	xorl	%r9d, %edx
	leaq	41(%rbx), %r9
	movzbl	%dl, %edx
	shrl	$8, %ecx
	xorl	(%rsi,%rdx,4), %ecx
	movl	%ecx, %edx
	xorb	440(%rsp), %cl
	shrl	$8, %edx
	movzbl	%cl, %ecx
	xorl	(%rsi,%rcx,4), %edx
	movl	%edx, %ecx
	movzbl	%dl, %edx
	xorq	$8, %rdx
	shrl	$8, %ecx
	xorl	(%rsi,%rdx,4), %ecx
	movl	%ecx, %edx
	shrl	$8, %ecx
	xorl	%r12d, %edx
	movzbl	%dl, %edx
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
	movb	%dl, 32(%rbx)
	shrl	$24, %ecx
	movb	%cl, 29(%rbx)
	movl	%edx, %ecx
	shrl	$16, %ecx
	movb	%cl, 30(%rbx)
	movl	%edx, %ecx
	movl	%eax, %edx
	shrl	$24, %edx
	shrl	$8, %ecx
	movb	%dl, 33(%rbx)
	movl	%eax, %edx
	movb	%cl, 31(%rbx)
	sarl	$16, %edx
	movq	%r9, %rcx
	movb	%dl, 34(%rbx)
	movl	%eax, %edx
	sarl	$8, %edx
	movb	%dl, 35(%rbx)
	movq	%rdi, %rdx
	movb	$84, 40(%rbx)
	call	memmove
	movq	%rdi, %rcx
	addq	%rax, %rbp
	call	free
	movslq	252(%rsp), %rax
	movq	$-4, %rcx
	leal	4(%rax), %r8d
	subq	%rax, %rcx
	testl	%r8d, %r8d
	jle	.L6421
	leaq	0(%rbp,%rcx), %r9
	xorl	%edx, %edx
	movl	$-1, %eax
.L6413:
	movl	%eax, %ecx
	xorb	(%r9,%rdx), %al
	incq	%rdx
	shrl	$8, %ecx
	movzbl	%al, %eax
	xorl	(%rsi,%rax,4), %ecx
	cmpl	%edx, %r8d
	movl	%ecx, %eax
	jg	.L6413
	notl	%eax
	movl	%eax, %edi
	shrl	$24, %edi
	movl	%edi, %r8d
	movl	%eax, %edi
	shrl	$16, %edi
	movl	%edi, %ecx
	movl	%eax, %edi
	shrl	$8, %edi
	movl	%edi, %edx
.L6412:
	xorl	$16777215, %r14d
	movb	%dl, 2(%rbp)
	movb	%al, 3(%rbp)
	movl	%r14d, %edx
	movzbl	%r14b, %r14d
	movb	%r8b, 0(%rbp)
	movq	%r14, %rax
	shrl	$8, %edx
	movb	%cl, 1(%rbp)
	xorq	$69, %rax
	movb	$0, 4(%rbp)
	movb	$0, 5(%rbp)
	xorl	(%rsi,%rax,4), %edx
	movb	$0, 6(%rbp)
	addq	$16, %rbp
	movb	$0, -9(%rbp)
	movb	$73, -8(%rbp)
	movb	$69, -7(%rbp)
	movb	$78, -6(%rbp)
	movb	$68, -5(%rbp)
	movl	%edx, %eax
	shrl	$8, %edx
	movzbl	%al, %eax
	xorq	$78, %rax
	xorl	(%rsi,%rax,4), %edx
	movl	%edx, %eax
	movzbl	%dl, %edx
	xorq	$68, %rdx
	shrl	$8, %eax
	xorl	(%rsi,%rdx,4), %eax
	notl	%eax
	movl	%eax, %edx
	movb	%al, -1(%rbp)
	shrl	$24, %edx
	movb	%dl, -4(%rbp)
	movl	%eax, %edx
	shrl	$16, %edx
	movb	%dl, -3(%rbp)
	movl	%eax, %edx
	movq	456(%rsp), %rax
	shrl	$8, %edx
	movb	%dl, -2(%rbp)
	movslq	(%rax), %rax
	addq	%rbx, %rax
	cmpq	%rbp, %rax
	je	.L6358
	leaq	.LC32(%rip), %rdx
	leaq	.LC166(%rip), %rcx
	movl	$985, %r8d
	call	_assert
	nop
.L6358:
	movaps	288(%rsp), %xmm6
	movq	%rbx, %rax
	movaps	304(%rsp), %xmm7
	movaps	320(%rsp), %xmm8
	addq	$344, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L6355:
	movl	448(%rsp), %eax
	imull	%r8d, %eax
	movl	%eax, 424(%rsp)
	movl	%eax, %esi
	jmp	.L6356
.L6359:
	movq	216(%rsp), %rcx
	call	free
.L6445:
	xorl	%ebx, %ebx
	jmp	.L6358
.L6421:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	.L6412
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_write_png
	.def	stbi_write_png;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_png
stbi_write_png:
.LFB786:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	xorl	%edi, %edi
	leaq	60(%rsp), %rax
	movl	%r9d, 32(%rsp)
	movq	%rcx, %rsi
	movl	%r8d, %r9d
	movq	128(%rsp), %rcx
	movl	%edx, %r8d
	movl	136(%rsp), %edx
	movq	%rax, 40(%rsp)
	call	_Z21stbi_write_png_to_memPhiiiiPi
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L6452
	leaq	.LC158(%rip), %rdx
	movq	%rsi, %rcx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L6456
	movslq	60(%rsp), %r8
	movq	%rax, %r9
	movl	$1, %edx
	movq	%rbx, %rcx
	movl	$1, %edi
	call	fwrite
	movq	%rsi, %rcx
	call	fclose
	movq	%rbx, %rcx
	call	free
.L6452:
	movl	%edi, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L6456:
	movq	%rbx, %rcx
	call	free
	jmp	.L6452
	.seh_endproc
	.p2align 4,,15
	.globl	stbi_write_png_to_func
	.def	stbi_write_png_to_func;	.scl	2;	.type	32;	.endef
	.seh_proc	stbi_write_png_to_func
stbi_write_png_to_func:
.LFB787:
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
	movl	144(%rsp), %edx
	movq	%rax, 40(%rsp)
	movl	128(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	_Z21stbi_write_png_to_memPhiiiiPi
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.L6458
	movl	60(%rsp), %r8d
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	*%rsi
	movq	%rbx, %rcx
	call	free
	movl	$1, %eax
.L6458:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC167:
	.ascii "main.cpp\0"
.LC168:
	.ascii "img->texture_loaded == 0\0"
	.text
	.p2align 4,,15
	.globl	_Z13texture_imageP5Image
	.def	_Z13texture_imageP5Image;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13texture_imageP5Image
_Z13texture_imageP5Image:
.LFB7447:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movl	4(%rcx), %eax
	movq	%rcx, %rbx
	testl	%eax, %eax
	jne	.L6463
.L6462:
	movq	%rbx, %rdx
	movl	$1, %ecx
	call	glGenTextures
	movl	(%rbx), %edx
	movl	$3553, %ecx
	call	glBindTexture
	movq	24(%rbx), %rax
	movl	8(%rbx), %r9d
	movl	$6408, %r8d
	xorl	%edx, %edx
	movl	$5121, 56(%rsp)
	movl	$6408, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$3553, %ecx
	movq	%rax, 64(%rsp)
	movl	12(%rbx), %eax
	movl	%eax, 32(%rsp)
	call	glTexImage2D
	movl	(%rbx), %ecx
	movq	__imp___glewGenerateTextureMipmap(%rip), %rax
	call	*(%rax)
	movl	$1, 4(%rbx)
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L6463:
	leaq	.LC167(%rip), %rdx
	leaq	.LC168(%rip), %rcx
	movl	$48, %r8d
	call	_assert
	jmp	.L6462
	.seh_endproc
	.p2align 4,,15
	.globl	_Z17image_transtitionPh5ImageS0_f
	.def	_Z17image_transtitionPh5ImageS0_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17image_transtitionPh5ImageS0_f
_Z17image_transtitionPh5ImageS0_f:
.LFB7448:
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
	jle	.L6464
	movq	24(%rdx), %r12
	xorl	%ebx, %ebx
	.p2align 4,,7
.L6467:
	movzbl	(%rdi,%rbx), %edx
	movzbl	(%r12,%rbx), %eax
	subl	%edx, %eax
	cvtsi2ss	%edx, %xmm1
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	call	roundf
	cvttss2si	%xmm0, %eax
	movb	%al, 0(%rbp,%rbx)
	incq	%rbx
	cmpl	%ebx, %esi
	jg	.L6467
.L6464:
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z5isdirPKc
	.def	_Z5isdirPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z5isdirPKc
_Z5isdirPKc:
.LFB7449:
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
	.p2align 4,,15
	.globl	_Z11reset_imageP5Image
	.def	_Z11reset_imageP5Image;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11reset_imageP5Image
_Z11reset_imageP5Image:
.LFB7455:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L6470
	call	free
	movq	$0, 24(%rbx)
.L6470:
	movl	4(%rbx), %eax
	testl	%eax, %eax
	je	.L6471
	movq	%rbx, %rdx
	movl	$1, %ecx
	call	glDeleteTextures
.L6471:
	movl	$0, 4(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z13static_windowv
	.def	_Z13static_windowv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13static_windowv
_Z13static_windowv:
.LFB7458:
	.seh_endprologue
	xorl	%eax, %eax
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	.def	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev:
.LFB7591:
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
	je	.L6477
	.p2align 4,,7
.L6479:
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6478
	call	_ZdlPv
.L6478:
	addq	$32, %rbx
	cmpq	%rbx, %rsi
	jne	.L6479
	movq	(%rdi), %rsi
.L6477:
	testq	%rsi, %rsi
	je	.L6476
	movq	%rsi, %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZdlPv
	.p2align 4,,7
.L6476:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_emplace_back_auxIJS5_EEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_emplace_back_auxIJS5_EEEvDpOT_
	.def	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_emplace_back_auxIJS5_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_emplace_back_auxIJS5_EEEvDpOT_
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_emplace_back_auxIJS5_EEEvDpOT_:
.LFB7742:
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
	movq	(%rcx), %r12
	movq	%rcx, %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, %rbx
	movq	%rcx, %rax
	subq	%r12, %rax
	movq	%rax, %rbp
	sarq	$5, %rbp
	je	.L6497
	leaq	(%rbp,%rbp), %rdx
	cmpq	%rdx, %rbp
	jbe	.L6510
.L6498:
	movq	$-32, %rbp
.L6483:
	movq	%rbp, %rcx
	call	_Znwy
	movq	8(%rsi), %rcx
	movq	(%rsi), %r12
	movq	%rax, %rdi
	addq	%rax, %rbp
	leaq	32(%rdi), %r13
	movq	%rcx, %rax
	subq	%r12, %rax
.L6496:
	addq	%rdi, %rax
	je	.L6485
	leaq	16(%rax), %rdx
	movq	(%rbx), %rcx
	movq	%rdx, (%rax)
	leaq	16(%rbx), %rdx
	cmpq	%rdx, %rcx
	je	.L6511
	movq	%rcx, (%rax)
	movq	16(%rbx), %rcx
	movq	%rcx, 16(%rax)
.L6487:
	movq	8(%rbx), %rcx
	movq	%rdx, (%rbx)
	movb	$0, 16(%rbx)
	movq	(%rsi), %r12
	movq	$0, 8(%rbx)
	movq	%rcx, 8(%rax)
	movq	8(%rsi), %rcx
.L6485:
	cmpq	%r12, %rcx
	je	.L6488
	leaq	32(%r12), %rdx
	leaq	16(%r12), %rax
	subq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rcx, %r10
	leaq	48(%r12,%rcx), %r9
	shrq	$5, %r10
	jmp	.L6492
	.p2align 4,,7
.L6490:
	movq	(%rax), %rcx
	movq	%r8, (%rdx)
	movq	%rcx, 16(%rdx)
.L6491:
	movq	-8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	%rax, -16(%rax)
	movq	$0, -8(%rax)
	movb	$0, (%rax)
.L6489:
	addq	$32, %rax
	addq	$32, %rdx
	cmpq	%rax, %r9
	je	.L6512
.L6492:
	testq	%rdx, %rdx
	je	.L6489
	leaq	16(%rdx), %rcx
	movq	%rcx, (%rdx)
	movq	-16(%rax), %r8
	cmpq	%rax, %r8
	jne	.L6490
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	jmp	.L6491
	.p2align 4,,7
.L6512:
	movq	8(%rsi), %r12
	movq	(%rsi), %rbx
	movq	%r10, %rax
	salq	$5, %rax
	leaq	64(%rdi,%rax), %r13
	cmpq	%rbx, %r12
	je	.L6488
	.p2align 4,,7
.L6494:
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6493
	call	_ZdlPv
.L6493:
	addq	$32, %rbx
	cmpq	%r12, %rbx
	jne	.L6494
	movq	(%rsi), %r12
.L6488:
	testq	%r12, %r12
	je	.L6495
	movq	%r12, %rcx
	call	_ZdlPv
.L6495:
	movq	%rdi, (%rsi)
	movq	%r13, 8(%rsi)
	movq	%rbp, 16(%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L6497:
	movl	$32, %ebp
	jmp	.L6483
	.p2align 4,,7
.L6511:
	movq	16(%rbx), %r9
	movq	24(%rbx), %r10
	movq	%r9, 16(%rax)
	movq	%r10, 24(%rax)
	jmp	.L6487
.L6510:
	movabsq	$576460752303423487, %r8
	cmpq	%r8, %rdx
	ja	.L6498
	testq	%rdx, %rdx
	jne	.L6513
	movl	$32, %r13d
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	jmp	.L6496
.L6513:
	salq	$6, %rbp
	jmp	.L6483
	.seh_endproc
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_emplace_back_auxIIS5_EEEvDpOT_
	.def	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_emplace_back_auxIIS5_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.set	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_emplace_back_auxIIS5_EEEvDpOT_,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_emplace_back_auxIJS5_EEEvDpOT_
	.section .rdata,"dr"
.LC169:
	.ascii "cannot access %s\12\0"
.LC170:
	.ascii ".\0"
	.text
	.p2align 4,,15
	.globl	_Z7dirlistB5cxx11PKc
	.def	_Z7dirlistB5cxx11PKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7dirlistB5cxx11PKc
_Z7dirlistB5cxx11PKc:
.LFB7450:
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
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movq	%rcx, %r12
	movq	%rdx, %rcx
	movq	%rdx, %rbx
	call	opendir
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L6540
	leaq	64(%rsp), %r14
	leaq	56(%rsp), %rax
	movq	$0, (%r12)
	movq	$0, 8(%r12)
	movq	$0, 16(%r12)
	leaq	16(%r14), %r13
	movq	%rax, 40(%rsp)
	jmp	.L6517
	.p2align 4,,7
.L6542:
	leaq	8(%rax), %rbx
	leaq	.LC170(%rip), %rdi
	movl	$2, %ecx
	movq	%rbx, %rsi
	repz cmpsb
	jne	.L6541
.L6517:
	movq	%rbp, %rcx
	call	readdir
	testq	%rax, %rax
	movq	%rax, %r15
	jne	.L6542
	movq	%rbp, %rcx
	call	closedir
	movq	%r12, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L6541:
	movq	%rbx, %rcx
	movq	%r13, 64(%rsp)
	call	strlen
	cmpq	$15, %rax
	movq	%rax, %rsi
	movq	%rax, 56(%rsp)
	ja	.L6543
	cmpq	$1, %rax
	je	.L6544
	testq	%rax, %rax
	movq	%r13, %rdx
	jne	.L6545
.L6521:
	movq	%rax, 72(%rsp)
	movb	$0, (%rdx,%rax)
	movq	8(%r12), %rax
	cmpq	16(%r12), %rax
	je	.L6522
	testq	%rax, %rax
	movq	64(%rsp), %rcx
	je	.L6524
	leaq	16(%rax), %rdx
	movq	%rdx, (%rax)
	movq	64(%rsp), %rdx
	cmpq	%r13, %rdx
	je	.L6546
	movq	%rdx, (%rax)
	movq	80(%rsp), %rdx
	movq	%rdx, 16(%rax)
.L6526:
	movq	72(%rsp), %rdx
	movq	%r13, 64(%rsp)
	movq	%r13, %rcx
	movq	%rdx, 8(%rax)
	movq	8(%r12), %rax
	movq	$0, 72(%rsp)
	movb	$0, 80(%rsp)
.L6524:
	addq	$32, %rax
	movq	%rax, 8(%r12)
.L6527:
	cmpq	%r13, %rcx
	je	.L6517
	call	_ZdlPv
	jmp	.L6517
	.p2align 4,,7
.L6543:
	movq	40(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r14, %rcx
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE0:
	movq	56(%rsp), %rdx
	movq	%rax, 64(%rsp)
	movq	%rax, %rcx
	movq	%rdx, 80(%rsp)
.L6519:
	movq	%rbx, %rdx
	movq	%rsi, %r8
	call	memcpy
	movq	56(%rsp), %rax
	movq	64(%rsp), %rdx
	jmp	.L6521
.L6544:
	movzbl	8(%r15), %edx
	movb	%dl, 80(%rsp)
	movq	%r13, %rdx
	jmp	.L6521
.L6546:
	movq	80(%rsp), %rcx
	movq	88(%rsp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	jmp	.L6526
.L6522:
	movq	%r14, %rdx
	movq	%r12, %rcx
.LEHB1:
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_emplace_back_auxIJS5_EEEvDpOT_
.LEHE1:
	movq	64(%rsp), %rcx
	jmp	.L6527
.L6545:
	movq	%r13, %rcx
	jmp	.L6519
.L6535:
	movq	64(%rsp), %rcx
	addq	$16, %r14
	movq	%rax, %rbx
	cmpq	%r14, %rcx
	je	.L6532
	call	_ZdlPv
.L6532:
	movq	%r12, %rcx
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	movq	%rbx, %rcx
.LEHB2:
	call	_Unwind_Resume
.L6534:
	movq	%rax, %rbx
	jmp	.L6532
.L6540:
	call	*__imp___iob_func(%rip)
	leaq	.LC169(%rip), %rdx
	leaq	96(%rax), %rcx
	movq	%rbx, %r8
	call	fprintf
.LEHE2:
	movl	$1, %ecx
	call	exit
	nop
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7450:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7450-.LLSDACSB7450
.LLSDACSB7450:
	.uleb128 .LEHB0-.LFB7450
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L6534-.LFB7450
	.uleb128 0
	.uleb128 .LEHB1-.LFB7450
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L6535-.LFB7450
	.uleb128 0
	.uleb128 .LEHB2-.LFB7450
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE7450:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC171:
	.ascii "Files\0"
.LC172:
	.ascii "basic_string::append\0"
.LC173:
	.ascii "/\0"
	.text
	.p2align 4,,15
	.globl	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc
	.def	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc
_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc:
.LFB7451:
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
	movq	%rcx, %r12
	movq	%rdx, %rcx
	movq	%rdx, %rdi
.LEHB3:
	call	_ZN5ImGui10BeginPopupEPKc
	testb	%al, %al
	je	.L6586
	leaq	48(%rsp), %rbp
	movq	_ZL11current_dir(%rip), %rdx
	movq	%rbp, %rcx
	call	_Z7dirlistB5cxx11PKc
.LEHE3:
	leaq	.LC171(%rip), %rcx
.LEHB4:
	call	_ZN5ImGui4TextEPKcz
	cmpb	$0, _ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip)
	je	.L6620
.L6550:
	xorps	%xmm2, %xmm2
	leaq	.LC41(%rip), %rdx
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip), %rcx
	call	_ZN15ImGuiTextFilter4DrawEPKcf
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	xorl	%ebx, %ebx
	leaq	144(%rsp), %rsi
	subq	%rdx, %rax
	shrq	$5, %rax
	jne	.L6602
	jmp	.L6570
	.p2align 4,,7
.L6554:
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	incq	%rbx
	subq	%rdx, %rax
	sarq	$5, %rax
	cmpq	%rbx, %rax
	jbe	.L6570
.L6602:
	movq	%rbx, %r13
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip), %rcx
	xorl	%r8d, %r8d
	salq	$5, %r13
	movl	%ebx, %r14d
	movq	(%rdx,%r13), %rdx
	call	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_
	testb	%al, %al
	je	.L6554
	movq	48(%rsp), %rax
	movq	%rsi, %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$0x00000000, 144(%rsp)
	movl	$0x00000000, 148(%rsp)
	movq	(%rax,%r13), %rcx
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	testb	%al, %al
	je	.L6554
	movq	_ZL11current_dir(%rip), %rdx
	leaq	80(%rsp), %rbx
	movq	%r13, %r15
	addq	48(%rsp), %r15
	leaq	16(%rbx), %rax
	movq	%rbx, %rcx
	movq	%rdx, %r8
	addq	8+_ZL11current_dir(%rip), %r8
	movq	%rax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.78
.LEHE4:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 88(%rsp)
	je	.L6621
	leaq	.LC173(%rip), %rdx
	movl	$1, %r8d
	movq	%rbx, %rcx
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE5:
	movq	8(%r15), %r8
	movq	(%r15), %rdx
	movq	%rbx, %rcx
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE6:
	leaq	112(%rsp), %r15
	leaq	16(%r15), %rdx
	movq	%rdx, 112(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L6622
	movq	%rcx, 112(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 128(%rsp)
.L6561:
	movq	8(%rax), %rcx
	movq	%rcx, 120(%rsp)
	movq	%rdx, (%rax)
	movq	%rsi, %rdx
	movb	$0, 16(%rax)
	movq	112(%rsp), %rcx
	movq	$0, 8(%rax)
.LEHB7:
	call	stat
.LEHE7:
	movzwl	150(%rsp), %esi
	movq	112(%rsp), %rcx
	leaq	16(%r15), %rax
	andw	$-4096, %si
	cmpq	%rax, %rcx
	je	.L6562
	call	_ZdlPv
.L6562:
	movq	80(%rsp), %rcx
	addq	$16, %rbx
	cmpq	%rbx, %rcx
	je	.L6563
	call	_ZdlPv
.L6563:
	cmpw	$16384, %si
	je	.L6623
	movq	%r13, %rdx
	addq	48(%rsp), %rdx
	movq	%r12, %rcx
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip), %rcx
	movb	$0, _ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip)
	call	_ZN15ImGuiTextFilter5BuildEv
.LEHE8:
	jmp	.L6553
.L6623:
	addq	48(%rsp), %r13
	leaq	16(%r15), %rax
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	%r15, %rcx
	movq	%rax, 112(%rsp)
	movq	8(%r13), %rax
	leaq	1(%rax), %rdx
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 120(%rsp)
	je	.L6624
	leaq	.LC173(%rip), %rdx
	movl	$1, %r8d
	movq	%r15, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
	movq	8(%r13), %r8
	movq	0(%r13), %rdx
	movq	%r15, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE9:
	movq	120(%rsp), %r8
	movq	112(%rsp), %rdx
	leaq	_ZL11current_dir(%rip), %rcx
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE10:
	movq	112(%rsp), %rcx
	addq	$16, %r15
	cmpq	%r15, %rcx
	je	.L6569
	call	_ZdlPv
.L6569:
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip), %rcx
	movb	$0, _ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip)
.LEHB11:
	call	_ZN15ImGuiTextFilter5BuildEv
	movq	8(%r12), %r8
	leaq	.LC41(%rip), %r9
	movq	$0, 32(%rsp)
	xorl	%edx, %edx
	movq	%r12, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy
	.p2align 4,,7
.L6570:
	movl	$-1, %r14d
.L6553:
	call	_ZN5ImGui8EndPopupEv
.LEHE11:
	cmpl	$-1, %r14d
	je	.L6572
.L6575:
	movq	56(%rsp), %rsi
	movq	48(%rsp), %rbx
	cmpq	%rbx, %rsi
	je	.L6573
	.p2align 4,,7
.L6577:
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6576
	call	_ZdlPv
.L6576:
	addq	$32, %rbx
	cmpq	%rbx, %rsi
	jne	.L6577
	movq	48(%rsp), %rsi
.L6573:
	testq	%rsi, %rsi
	je	.L6578
	movq	%rsi, %rcx
	call	_ZdlPv
.L6578:
	movl	%r14d, %eax
.L6611:
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
	.p2align 4,,7
.L6620:
	leaq	_ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L6550
	leaq	.LC41(%rip), %rdx
	leaq	_ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip), %rcx
.LEHB12:
	call	_ZN15ImGuiTextFilterC1EPKc
.LEHE12:
	leaq	_ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip), %rcx
	call	__cxa_guard_release
	leaq	__tcf_0(%rip), %rcx
	call	atexit
	jmp	.L6550
.L6572:
	movq	%rdi, %rcx
.LEHB13:
	call	_ZN5ImGui9OpenPopupEPKc
.LEHE13:
	.p2align 4,,5
	jmp	.L6575
.L6586:
	movl	$-1, %eax
	jmp	.L6611
.L6622:
	movq	16(%rax), %r9
	movq	24(%rax), %r10
	movq	%r9, 128(%rsp)
	movq	%r10, 136(%rsp)
	jmp	.L6561
.L6593:
.L6615:
	movq	112(%rsp), %rcx
	addq	$16, %r15
	movq	%rax, %rbx
	cmpq	%r15, %rcx
	je	.L6559
	call	_ZdlPv
.L6559:
	movq	%rbp, %rcx
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	movq	%rbx, %rcx
.LEHB14:
	call	_Unwind_Resume
.LEHE14:
.L6591:
	jmp	.L6615
.L6624:
	leaq	.LC172(%rip), %rcx
.LEHB15:
	call	_ZSt20__throw_length_errorPKc
.LEHE15:
.L6588:
	leaq	_ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter(%rip), %rcx
	movq	%rax, %rbx
	call	__cxa_guard_abort
	jmp	.L6559
.L6590:
	movq	112(%rsp), %rcx
	addq	$16, %r15
	movq	%rax, %rsi
	cmpq	%r15, %rcx
	je	.L6582
	call	_ZdlPv
.L6582:
	movq	80(%rsp), %rcx
	addq	$16, %rbx
	cmpq	%rbx, %rcx
	je	.L6583
	call	_ZdlPv
.L6583:
	movq	%rsi, %rbx
	jmp	.L6559
.L6592:
.L6617:
	movq	%rax, %rsi
	.p2align 4,,2
	jmp	.L6582
.L6589:
	.p2align 4,,5
	jmp	.L6617
.L6621:
	leaq	.LC172(%rip), %rcx
.LEHB16:
	call	_ZSt20__throw_length_errorPKc
.LEHE16:
.L6587:
	movq	%rax, %rbx
	jmp	.L6559
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA7451:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7451-.LLSDACSB7451
.LLSDACSB7451:
	.uleb128 .LEHB3-.LFB7451
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB7451
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L6587-.LFB7451
	.uleb128 0
	.uleb128 .LEHB5-.LFB7451
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L6592-.LFB7451
	.uleb128 0
	.uleb128 .LEHB6-.LFB7451
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L6589-.LFB7451
	.uleb128 0
	.uleb128 .LEHB7-.LFB7451
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L6590-.LFB7451
	.uleb128 0
	.uleb128 .LEHB8-.LFB7451
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L6587-.LFB7451
	.uleb128 0
	.uleb128 .LEHB9-.LFB7451
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L6593-.LFB7451
	.uleb128 0
	.uleb128 .LEHB10-.LFB7451
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L6591-.LFB7451
	.uleb128 0
	.uleb128 .LEHB11-.LFB7451
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L6587-.LFB7451
	.uleb128 0
	.uleb128 .LEHB12-.LFB7451
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L6588-.LFB7451
	.uleb128 0
	.uleb128 .LEHB13-.LFB7451
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L6587-.LFB7451
	.uleb128 0
	.uleb128 .LEHB14-.LFB7451
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB7451
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L6593-.LFB7451
	.uleb128 0
	.uleb128 .LEHB16-.LFB7451
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L6592-.LFB7451
	.uleb128 0
.LLSDACSE7451:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC174:
	.ascii "<None>\0"
.LC176:
	.ascii "select 0\0"
.LC177:
	.ascii "select 1\0"
	.text
	.p2align 4,,15
	.globl	_Z12image_selectB5cxx11i
	.def	_Z12image_selectB5cxx11i;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12image_selectB5cxx11i
_Z12image_selectB5cxx11i:
.LFB7453:
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
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	cmpb	$0, _ZGVZ12image_selectiE8selected(%rip)
	movq	%rcx, %rdi
	movl	%edx, %ebp
	jne	.L6643
	leaq	_ZGVZ12image_selectiE8selected(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	jne	.L6708
.L6643:
	xorps	%xmm0, %xmm0
	movslq	%ebp, %rbx
	movss	.LC175(%rip), %xmm1
	salq	$5, %rbx
.LEHB17:
	call	_ZN5ImGui8SameLineEff
	movq	%rbx, %rcx
	addq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	leaq	.LC174(%rip), %rcx
	jne	.L6709
.L6655:
	call	_ZN5ImGui4TextEPKcz
	movq	%rbx, %rcx
	addq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rcx
	testl	%ebp, %ebp
	je	.L6710
	leaq	.LC177(%rip), %rdx
	call	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc
	incl	%eax
	je	.L6711
.L6658:
	movq	_ZL11current_dir(%rip), %rdx
	leaq	48(%rsp), %rsi
	addq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rbx
	leaq	16(%rsi), %rax
	movq	%rsi, %rcx
	movq	%rdx, %r8
	addq	8+_ZL11current_dir(%rip), %r8
	movq	%rax, 48(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.78
.LEHE17:
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 56(%rsp)
	je	.L6712
	leaq	.LC173(%rip), %rdx
	movl	$1, %r8d
	movq	%rsi, %rcx
.LEHB18:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE18:
	movq	8(%rbx), %r8
	movq	(%rbx), %rdx
	movq	%rsi, %rcx
.LEHB19:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE19:
	leaq	16(%rdi), %rdx
	movq	%rdx, (%rdi)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L6713
	movq	%rcx, (%rdi)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdi)
.L6665:
	movq	8(%rax), %rcx
	addq	$16, %rsi
	movq	%rcx, 8(%rdi)
	movq	%rdx, (%rax)
	movb	$0, 16(%rax)
	movq	48(%rsp), %rcx
	movq	$0, 8(%rax)
	cmpq	%rsi, %rcx
	je	.L6625
	call	_ZdlPv
.L6625:
	movq	%rdi, %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L6710:
	leaq	.LC176(%rip), %rdx
.LEHB20:
	call	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc
	incl	%eax
	jne	.L6658
.L6711:
	leaq	16(%rdi), %rax
	leaq	.LC41(%rip), %r8
	movq	%rdi, %rcx
	movq	%rax, (%rdi)
	movq	%r8, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.68
.LEHE20:
	jmp	.L6625
	.p2align 4,,7
.L6709:
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rax
	movq	(%rax,%rbx), %rcx
	jmp	.L6655
	.p2align 4,,7
.L6708:
	leaq	48(%rsp), %rsi
	leaq	.LC41(%rip), %r8
	leaq	16(%rsi), %rax
	movq	%r8, %rdx
	movq	%rsi, %rcx
	movq	%rax, 48(%rsp)
.LEHB21:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.68
	leaq	.LC41(%rip), %r8
	leaq	48(%rsi), %rax
	leaq	32(%rsi), %rcx
	movq	%r8, %rdx
	movq	%rax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.68
.LEHE21:
	movl	$64, %ecx
	movq	$0, _ZZ12image_selectB5cxx11iE8selected(%rip)
	movq	$0, 8+_ZZ12image_selectB5cxx11iE8selected(%rip)
	movq	$0, 16+_ZZ12image_selectB5cxx11iE8selected(%rip)
.LEHB22:
	call	_Znwy
.LEHE22:
	movq	48(%rsp), %r14
	movq	%rax, %rbx
	movq	%rax, _ZZ12image_selectB5cxx11iE8selected(%rip)
	movq	56(%rsp), %r12
	leaq	64(%rax), %rax
	movq	%r14, %rdx
	movq	%rax, 16+_ZZ12image_selectB5cxx11iE8selected(%rip)
	leaq	16(%rbx), %rax
	addq	%r12, %rdx
	movq	%rax, (%rbx)
	je	.L6682
	testq	%r14, %r14
	movq	%rbx, %r13
	jne	.L6682
.L6627:
	leaq	.LC31(%rip), %rcx
.LEHB23:
	call	_ZSt19__throw_logic_errorPKc
	.p2align 4,,7
.L6682:
	cmpq	$15, %r12
	movq	%r12, 40(%rsp)
	ja	.L6714
	cmpq	$1, %r12
	je	.L6715
	xorl	%edx, %edx
	testq	%r12, %r12
	movq	%rax, %rcx
	jne	.L6635
.L6633:
	movq	%rbx, %r13
	movq	%rdx, 8(%rbx)
	movb	$0, (%rcx,%rdx)
	addq	$32, %r13
	je	.L6632
	movq	80(%rsp), %r14
	movq	88(%rsp), %r12
	leaq	48(%rbx), %rax
	movq	%rax, 32(%rbx)
	movq	%r14, %rdx
	addq	%r12, %rdx
	je	.L6637
	testq	%r14, %r14
	je	.L6627
.L6637:
	cmpq	$15, %r12
	movq	%r12, 40(%rsp)
	ja	.L6716
	cmpq	$1, %r12
	je	.L6717
	xorl	%edx, %edx
	testq	%r12, %r12
	movq	%rax, %rcx
	jne	.L6638
.L6640:
	movq	%rdx, 40(%rbx)
	movb	$0, (%rcx,%rdx)
.L6632:
	leaq	_ZGVZ12image_selectiE8selected(%rip), %rcx
	addq	$32, %r13
	movq	%r13, 8+_ZZ12image_selectB5cxx11iE8selected(%rip)
	call	__cxa_guard_release
	leaq	__tcf_1(%rip), %rcx
	call	atexit
	movq	80(%rsp), %rcx
	leaq	48(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6641
	call	_ZdlPv
.L6641:
	movq	48(%rsp), %rcx
	addq	$16, %rsi
	cmpq	%rsi, %rcx
	je	.L6643
	call	_ZdlPv
	jmp	.L6643
	.p2align 4,,7
.L6713:
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 16(%rdi)
	movq	%rbx, 24(%rdi)
	jmp	.L6665
.L6679:
.L6645:
	movq	%rax, %rcx
	call	__cxa_begin_catch
.L6648:
	cmpq	%r13, %rbx
	je	.L6646
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6647
	call	_ZdlPv
.L6647:
	addq	$32, %rbx
	jmp	.L6648
	.p2align 4,,7
.L6716:
	leaq	40(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE23:
	movq	40(%rsp), %rdx
	movq	%rax, 32(%rbx)
	movq	%rax, %rcx
	movq	%rdx, 48(%rbx)
.L6638:
	movq	%r14, %rdx
	movq	%r12, %r8
	call	memcpy
	movq	40(%rsp), %rdx
	movq	32(%rbx), %rcx
	jmp	.L6640
	.p2align 4,,7
.L6714:
	leaq	40(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
.LEHB24:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE24:
	movq	40(%rsp), %rdx
	movq	%rax, (%rbx)
	movq	%rax, %rcx
	movq	%rdx, 16(%rbx)
.L6635:
	movq	%r14, %rdx
	movq	%r12, %r8
	call	memcpy
	movq	40(%rsp), %rdx
	movq	(%rbx), %rcx
	jmp	.L6633
	.p2align 4,,7
.L6717:
	movzbl	(%r14), %edx
	movq	%rax, %rcx
	movb	%dl, 48(%rbx)
	movl	$1, %edx
	jmp	.L6640
	.p2align 4,,7
.L6715:
	movzbl	(%r14), %edx
	movq	%rax, %rcx
	movb	%dl, 16(%rbx)
	movl	$1, %edx
	jmp	.L6633
.L6712:
	leaq	.LC172(%rip), %rcx
.LEHB25:
	call	_ZSt20__throw_length_errorPKc
.LEHE25:
.L6680:
.L6704:
	movq	48(%rsp), %rcx
	addq	$16, %rsi
	movq	%rax, %rbx
	cmpq	%rsi, %rcx
	je	.L6701
	call	_ZdlPv
.L6701:
	movq	%rbx, %rcx
.LEHB26:
	call	_Unwind_Resume
.LEHE26:
.L6681:
	movq	%rbx, %r13
	jmp	.L6645
.L6676:
	.p2align 4,,2
	jmp	.L6704
.L6646:
	.p2align 4,,8
.LEHB27:
	call	__cxa_rethrow
.LEHE27:
.L6675:
	movq	%rax, %rbx
.L6654:
	leaq	_ZGVZ12image_selectiE8selected(%rip), %rcx
	call	__cxa_guard_abort
	jmp	.L6701
.L6677:
	movq	%rax, %rbx
.L6650:
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rcx
	testq	%rcx, %rcx
	je	.L6651
	call	_ZdlPv
.L6651:
	movq	80(%rsp), %rcx
	leaq	48(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6652
	call	_ZdlPv
.L6652:
	movq	48(%rsp), %rcx
	addq	$16, %rsi
	cmpq	%rsi, %rcx
	je	.L6654
	call	_ZdlPv
	jmp	.L6654
.L6678:
	movq	%rax, %rbx
	.p2align 4,,5
	call	__cxa_end_catch
	.p2align 4,,5
	jmp	.L6650
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA7453:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT7453-.LLSDATTD7453
.LLSDATTD7453:
	.byte	0x1
	.uleb128 .LLSDACSE7453-.LLSDACSB7453
.LLSDACSB7453:
	.uleb128 .LEHB17-.LFB7453
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB7453
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L6680-.LFB7453
	.uleb128 0
	.uleb128 .LEHB19-.LFB7453
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L6676-.LFB7453
	.uleb128 0
	.uleb128 .LEHB20-.LFB7453
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB7453
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L6675-.LFB7453
	.uleb128 0
	.uleb128 .LEHB22-.LFB7453
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L6677-.LFB7453
	.uleb128 0
	.uleb128 .LEHB23-.LFB7453
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L6679-.LFB7453
	.uleb128 0x1
	.uleb128 .LEHB24-.LFB7453
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L6681-.LFB7453
	.uleb128 0x1
	.uleb128 .LEHB25-.LFB7453
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L6680-.LFB7453
	.uleb128 0
	.uleb128 .LEHB26-.LFB7453
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB7453
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L6678-.LFB7453
	.uleb128 0
.LLSDACSE7453:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT7453:
	.text
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC178:
	.ascii "Transtion Function\0"
.LC181:
	.ascii "Slider Window\0"
.LC182:
	.ascii "Image A\0"
.LC183:
	.ascii "Save\0"
.LC184:
	.ascii "%d.png\0"
.LC185:
	.ascii "Image B\0"
.LC186:
	.ascii "Transition t\0"
.LC187:
	.ascii "%.3f\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB7456:
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
	subq	$1624, %rsp
	.seh_stackalloc	1624
	movaps	%xmm6, 1600(%rsp)
	.seh_savexmm	%xmm6, 1600
	.seh_endprologue
	leaq	592(%rsp), %rsi
	call	__main
	leaq	.LC41(%rip), %r8
	leaq	16(%rsi), %rax
	movq	%rsi, %rcx
	movq	$0, 208(%rsp)
	movq	$0, 216(%rsp)
	movq	%r8, %rdx
	movq	%rax, 592(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 288(%rsp)
	movq	$0, 296(%rsp)
	movl	$0x00000000, 128(%rsp)
.LEHB28:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.68
	leaq	.LC41(%rip), %r8
	leaq	48(%rsi), %rax
	leaq	32(%rsi), %rcx
	movq	%r8, %rdx
	movq	%rax, 624(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.68
.LEHE28:
	movl	$64, %ecx
	movq	$0, 176(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 192(%rsp)
.LEHB29:
	call	_Znwy
.LEHE29:
	movq	592(%rsp), %r12
	movq	%rax, %rbx
	movq	%rax, 176(%rsp)
	movq	600(%rsp), %rdi
	leaq	64(%rax), %rax
	movq	%r12, %rcx
	movq	%rax, 192(%rsp)
	leaq	16(%rbx), %rax
	addq	%rdi, %rcx
	movq	%rax, (%rbx)
	je	.L6946
	testq	%r12, %r12
	movq	%rbx, %rbp
	jne	.L6946
.L6719:
	leaq	.LC31(%rip), %rcx
.LEHB30:
	call	_ZSt19__throw_logic_errorPKc
.LEHE30:
.L6946:
	cmpq	$15, %rdi
	movq	%rdi, 368(%rsp)
	ja	.L7075
	cmpq	$1, %rdi
	je	.L7076
	xorl	%edx, %edx
	testq	%rdi, %rdi
	movq	%rax, %rcx
	jne	.L6727
.L6725:
	movq	%rbx, %rbp
	movq	%rdx, 8(%rbx)
	movb	$0, (%rcx,%rdx)
	addq	$32, %rbp
	je	.L6724
	movq	624(%rsp), %r12
	movq	632(%rsp), %rdi
	leaq	48(%rbx), %rax
	movq	%rax, 32(%rbx)
	movq	%r12, %rcx
	addq	%rdi, %rcx
	je	.L6729
	testq	%r12, %r12
	je	.L6719
.L6729:
	cmpq	$15, %rdi
	movq	%rdi, 368(%rsp)
	ja	.L7077
	cmpq	$1, %rdi
	je	.L7078
	xorl	%edx, %edx
	testq	%rdi, %rdi
	movq	%rax, %rcx
	jne	.L6730
.L6732:
	movq	%rdx, 40(%rbx)
	movb	$0, (%rcx,%rdx)
.L6724:
	movq	624(%rsp), %rcx
	leaq	48(%rsi), %rax
	addq	$32, %rbp
	movq	%rbp, 184(%rsp)
	cmpq	%rax, %rcx
	je	.L6733
	call	_ZdlPv
.L6733:
	movq	592(%rsp), %rcx
	leaq	16(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6734
	call	_ZdlPv
.L6734:
	leaq	_ZL14error_callbackiPKc(%rip), %rcx
.LEHB31:
	call	glfwSetErrorCallback
	call	glfwInit
	testl	%eax, %eax
	je	.L6916
	movl	$3, %edx
	movl	$139266, %ecx
	call	glfwWindowHint
	movl	$3, %edx
	movl	$139267, %ecx
	call	glfwWindowHint
	movl	$204801, %edx
	movl	$139272, %ecx
	call	glfwWindowHint
	leaq	.LC178(%rip), %r8
	movq	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movl	$350, %edx
	movl	$600, %ecx
	call	glfwCreateWindow
	movq	%rax, %rcx
	movq	%rax, %rdi
	movq	%rax, 88(%rsp)
	call	glfwMakeContextCurrent
	call	*__imp_glewInit(%rip)
	movl	$1, %edx
	movq	%rdi, %rcx
	call	_Z22ImGui_ImplGlfwGL3_InitP10GLFWwindowb
	leaq	304(%rsp), %r15
	leaq	368(%rsp), %r14
	movb	$1, 127(%rsp)
	leaq	16(%r15), %rax
	movq	%rax, 80(%rsp)
	leaq	56(%r14), %rax
	movq	%rax, 96(%rsp)
	movq	__imp___glewGenerateTextureMipmap(%rip), %rax
	movq	%rax, 104(%rsp)
	.p2align 4,,7
.L6898:
	movq	88(%rsp), %rcx
	call	glfwWindowShouldClose
	testl	%eax, %eax
	jne	.L6747
	call	glfwPollEvents
	.p2align 4,,6
	call	_Z26ImGui_ImplGlfwGL3_NewFramev
	movl	$4, %edx
	movq	%rsi, %rcx
	movl	$0x44160000, 592(%rsp)
	movl	$0x42c80000, 596(%rsp)
	call	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
	leaq	127(%rsp), %rdx
	leaq	.LC181(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui5BeginEPKcPbi
	call	_ZN5ImGui10BeginGroupEv
	cmpq	$0, 232(%rsp)
	je	.L6748
	cvtsi2ss	220(%rsp), %xmm0
	movl	208(%rsp), %ecx
	leaq	160(%rsp), %rdx
	cvtsi2ss	216(%rsp), %xmm1
	leaq	336(%rsp), %r9
	movq	%rsi, 40(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, %r8
	movl	$0x00000000, 592(%rsp)
	movl	$0x00000000, 596(%rsp)
	movl	$0x00000000, 600(%rsp)
	movl	$0x00000000, 604(%rsp)
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	movl	$0x3f800000, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	movl	$0x3f800000, 336(%rsp)
	movss	%xmm0, 164(%rsp)
	movl	$0x3f800000, 340(%rsp)
	movl	$0x00000000, 304(%rsp)
	movss	%xmm1, 160(%rsp)
	movl	$0x00000000, 308(%rsp)
	call	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
.L6748:
	leaq	.LC182(%rip), %rcx
	movq	%rsi, %rdx
	movl	$0x00000000, 592(%rsp)
	movl	$0x00000000, 596(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	je	.L6752
	leaq	.LC176(%rip), %rcx
	call	_ZN5ImGui9OpenPopupEPKc
.L6752:
	cmpb	$0, _ZGVZ12image_selectiE8selected(%rip)
	jne	.L6769
	leaq	_ZGVZ12image_selectiE8selected(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	jne	.L7079
.L6769:
	xorps	%xmm0, %xmm0
	movss	.LC175(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	leaq	.LC174(%rip), %rcx
	je	.L6781
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rax
	movq	(%rax), %rcx
.L6781:
	call	_ZN5ImGui4TextEPKcz
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rcx
	leaq	.LC176(%rip), %rdx
	call	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc
	incl	%eax
	je	.L7080
	movq	80(%rsp), %rax
	movq	_ZL11current_dir(%rip), %rdi
	movq	8+_ZL11current_dir(%rip), %rbx
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rbp
	movq	%rax, 304(%rsp)
	movq	%rdi, %rax
	addq	%rbx, %rax
	je	.L6786
	testq	%rdi, %rdi
	jne	.L6786
	leaq	.LC31(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
.LEHE31:
	.p2align 4,,7
.L6786:
	cmpq	$15, %rbx
	movq	%rbx, 144(%rsp)
	ja	.L7081
	cmpq	$1, %rbx
	je	.L7082
	xorl	%eax, %eax
	testq	%rbx, %rbx
	movq	80(%rsp), %rdx
	jne	.L7083
.L6789:
	movq	%rax, 312(%rsp)
	movb	$0, (%rdx,%rax)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 312(%rsp)
	je	.L7084
	leaq	.LC173(%rip), %rdx
	movl	$1, %r8d
	movq	%r15, %rcx
.LEHB32:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE32:
	movq	8(%rbp), %r8
	movq	0(%rbp), %rdx
	movq	%r15, %rcx
.LEHB33:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE33:
	leaq	16(%rsi), %rdx
	movq	%rdx, 592(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L7085
	movq	%rcx, 592(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 608(%rsp)
.L6795:
	movq	8(%rax), %rcx
	movq	%rcx, 600(%rsp)
	movq	%rdx, (%rax)
	movb	$0, 16(%rax)
	movq	304(%rsp), %rcx
	cmpq	80(%rsp), %rcx
	movq	$0, 8(%rax)
	je	.L6783
	call	_ZdlPv
.L6783:
	leaq	.LC41(%rip), %rdx
	movq	%rsi, %rcx
.LEHB34:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	je	.L6799
	movq	176(%rsp), %rcx
	movq	%rsi, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	movq	232(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L6800
	call	free
	movq	$0, 232(%rsp)
.L6800:
	movl	212(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L6801
.L6804:
	movq	296(%rsp), %rcx
	movl	$0, 212(%rsp)
	testq	%rcx, %rcx
	je	.L6803
	call	free
	movq	$0, 296(%rsp)
.L6803:
	movl	276(%rsp), %r10d
	testl	%r10d, %r10d
	jne	.L6805
.L6807:
	movq	176(%rsp), %rax
	leaq	.LC122(%rip), %rdx
	movl	$0, 276(%rsp)
	movq	(%rax), %rcx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L7086
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	96(%rsp), %rdi
	movl	$128, %r8d
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movq	%rbx, 408(%rsp)
	movq	%rbx, %rcx
	movl	$128, 420(%rsp)
	movl	$1, 416(%rsp)
	movq	%rdx, 392(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 384(%rsp)
	movq	%rdi, 568(%rsp)
	movq	%rdx, 400(%rsp)
	movq	%rdi, %rdx
	call	*%rax
	movslq	%eax, %rdx
	addq	%rdi, %rdx
	testl	%eax, %eax
	jne	.L6811
	leaq	57(%r14), %rdx
	movl	$0, 416(%rsp)
	movb	$0, 424(%rsp)
.L6811:
	movq	96(%rsp), %rax
	movq	%rdx, 560(%rsp)
	movq	%r14, %rcx
	movq	%rdx, 576(%rsp)
	movl	$4, 32(%rsp)
	movq	%rax, 552(%rsp)
	leaq	208(%rsp), %rax
	leaq	8(%rax), %rdx
	leaq	16(%rax), %r9
	leaq	12(%rax), %r8
	call	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L6812
	movl	552(%rsp), %edx
	subl	560(%rsp), %edx
	movl	$1, %r8d
	movq	%rbx, %rcx
	call	fseek
.L6812:
	movq	%rbx, %rcx
	call	fclose
.L6809:
	movl	212(%rsp), %r9d
	movq	%rdi, 232(%rsp)
	testl	%r9d, %r9d
	jne	.L6813
.L6815:
	leaq	208(%rsp), %rdx
	movl	$1, %ecx
	call	glGenTextures
	movl	208(%rsp), %edx
	movl	$3553, %ecx
	call	glBindTexture
	movq	232(%rsp), %rax
	movl	216(%rsp), %r9d
	movl	$6408, %r8d
	movl	$5121, 56(%rsp)
	movl	$6408, 48(%rsp)
	xorl	%edx, %edx
	movl	$0, 40(%rsp)
	movl	$3553, %ecx
	movq	%rax, 64(%rsp)
	movl	220(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	glTexImage2D
	movq	__imp___glewGenerateTextureMipmap(%rip), %rax
	movl	208(%rsp), %ecx
	call	*(%rax)
	movl	$1, 212(%rsp)
.L6799:
	call	_ZN5ImGui8EndGroupEv
.LEHE34:
	movq	592(%rsp), %rcx
	leaq	16(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6816
	call	_ZdlPv
.L6816:
	xorps	%xmm0, %xmm0
	movss	.LC175(%rip), %xmm1
.LEHB35:
	call	_ZN5ImGui8SameLineEff
	call	_ZN5ImGui10BeginGroupEv
	movq	296(%rsp), %rbp
	testq	%rbp, %rbp
	je	.L6818
	movl	252(%rsp), %edi
	xorl	%ebx, %ebx
	movq	264(%rsp), %r13
	imull	248(%rsp), %edi
	movss	128(%rsp), %xmm6
	movq	232(%rsp), %r12
	sall	$2, %edi
	testl	%edi, %edi
	jle	.L6822
	.p2align 4,,7
.L6991:
	movzbl	(%r12,%rbx), %edx
	movzbl	0(%r13,%rbx), %eax
	subl	%edx, %eax
	cvtsi2ss	%edx, %xmm1
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	call	roundf
	cvttss2si	%xmm0, %eax
	movb	%al, 0(%rbp,%rbx)
	incq	%rbx
	cmpl	%ebx, %edi
	jg	.L6991
.L6822:
	movl	276(%rsp), %r8d
	testl	%r8d, %r8d
	jne	.L7087
.L6820:
	leaq	272(%rsp), %rdx
	movl	$1, %ecx
	call	glGenTextures
	movl	272(%rsp), %edx
	movl	$3553, %ecx
	call	glBindTexture
	movq	296(%rsp), %rax
	movl	280(%rsp), %r9d
	movl	$6408, %r8d
	movl	$5121, 56(%rsp)
	movl	$6408, 48(%rsp)
	xorl	%edx, %edx
	movl	$0, 40(%rsp)
	movl	$3553, %ecx
	movq	%rax, 64(%rsp)
	movl	284(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	glTexImage2D
	movq	104(%rsp), %rax
	movl	272(%rsp), %ecx
	call	*(%rax)
	cvtsi2ss	220(%rsp), %xmm0
	movl	272(%rsp), %ecx
	leaq	160(%rsp), %rdx
	cvtsi2ss	216(%rsp), %xmm1
	leaq	336(%rsp), %r9
	movq	%rsi, 40(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, %r8
	movl	$1, 276(%rsp)
	movl	$0x00000000, 592(%rsp)
	movl	$0x437f0000, 596(%rsp)
	movl	$0x00000000, 600(%rsp)
	movl	$0x437f0000, 604(%rsp)
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	movl	$0x3f800000, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	movss	%xmm0, 164(%rsp)
	movl	$0x3f800000, 336(%rsp)
	movl	$0x3f800000, 340(%rsp)
	movss	%xmm1, 160(%rsp)
	movl	$0x00000000, 304(%rsp)
	movl	$0x00000000, 308(%rsp)
	call	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
	leaq	.LC183(%rip), %rcx
	movq	%rsi, %rdx
	movl	$0x00000000, 592(%rsp)
	movl	$0x00000000, 596(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L7088
.L6818:
	call	_ZN5ImGui8EndGroupEv
	xorps	%xmm0, %xmm0
	movss	.LC175(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	call	_ZN5ImGui10BeginGroupEv
	cmpq	$0, 264(%rsp)
	je	.L6828
	cvtsi2ss	252(%rsp), %xmm0
	movl	240(%rsp), %ecx
	leaq	160(%rsp), %rdx
	cvtsi2ss	248(%rsp), %xmm1
	leaq	336(%rsp), %r9
	movq	%rsi, 40(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, %r8
	movl	$0x00000000, 592(%rsp)
	movl	$0x00000000, 596(%rsp)
	movl	$0x00000000, 600(%rsp)
	movl	$0x00000000, 604(%rsp)
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	movl	$0x3f800000, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	movl	$0x3f800000, 336(%rsp)
	movss	%xmm0, 164(%rsp)
	movl	$0x3f800000, 340(%rsp)
	movl	$0x00000000, 304(%rsp)
	movss	%xmm1, 160(%rsp)
	movl	$0x00000000, 308(%rsp)
	call	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
.L6828:
	leaq	.LC185(%rip), %rcx
	movq	%rsi, %rdx
	movl	$0x00000000, 592(%rsp)
	movl	$0x00000000, 596(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	je	.L6832
	leaq	.LC177(%rip), %rcx
	call	_ZN5ImGui9OpenPopupEPKc
.L6832:
	cmpb	$0, _ZGVZ12image_selectiE8selected(%rip)
	jne	.L6849
	leaq	_ZGVZ12image_selectiE8selected(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	jne	.L7089
.L6849:
	xorps	%xmm0, %xmm0
	movss	.LC175(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rax
	leaq	.LC41(%rip), %rdx
	leaq	32(%rax), %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	leaq	.LC174(%rip), %rcx
	je	.L6860
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rax
	movq	32(%rax), %rcx
.L6860:
	call	_ZN5ImGui4TextEPKcz
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rax
	leaq	.LC177(%rip), %rdx
	leaq	32(%rax), %rcx
	call	_Z2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc
	incl	%eax
	je	.L7090
	leaq	336(%rsp), %rbx
	movq	_ZL11current_dir(%rip), %rbp
	movq	8+_ZL11current_dir(%rip), %rdi
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %r12
	leaq	16(%rbx), %rax
	movq	%rax, 336(%rsp)
	movq	%rbp, %rax
	addq	%rdi, %rax
	je	.L6865
	testq	%rbp, %rbp
	jne	.L6865
	leaq	.LC31(%rip), %rcx
	call	_ZSt19__throw_logic_errorPKc
.LEHE35:
	.p2align 4,,7
.L6865:
	cmpq	$15, %rdi
	movq	%rdi, 160(%rsp)
	ja	.L7091
	cmpq	$1, %rdi
	je	.L7092
	xorl	%edx, %edx
	testq	%rdi, %rdi
	leaq	16(%rbx), %rax
	jne	.L7093
.L6868:
	movq	%rdx, 344(%rsp)
	movb	$0, (%rax,%rdx)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 344(%rsp)
	je	.L7094
	leaq	.LC173(%rip), %rdx
	movl	$1, %r8d
	movq	%rbx, %rcx
.LEHB36:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE36:
	movq	32(%r12), %rdx
	movq	40(%r12), %r8
	movq	%rbx, %rcx
.LEHB37:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy
.LEHE37:
	leaq	16(%r14), %rdx
	movq	%rdx, 368(%rsp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L7095
	movq	%rcx, 368(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 384(%rsp)
.L6874:
	movq	8(%rax), %rcx
	addq	$16, %rbx
	movq	%rcx, 376(%rsp)
	movq	%rdx, (%rax)
	movb	$0, 16(%rax)
	movq	336(%rsp), %rcx
	movq	$0, 8(%rax)
	cmpq	%rbx, %rcx
	je	.L6862
	call	_ZdlPv
.L6862:
	leaq	.LC41(%rip), %rdx
	movq	%r14, %rcx
.LEHB38:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
.LEHE38:
	testl	%eax, %eax
	jne	.L7096
.L6878:
	movq	368(%rsp), %rcx
	leaq	16(%r14), %rax
	cmpq	%rax, %rcx
	je	.L6895
	call	_ZdlPv
.L6895:
.LEHB39:
	call	_ZN5ImGui8EndGroupEv
	movss	.LC28(%rip), %xmm3
	leaq	.LC187(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	128(%rsp), %rdx
	movss	%xmm3, 40(%rsp)
	leaq	.LC186(%rip), %rcx
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	call	_ZN5ImGui3EndEv
	movq	88(%rsp), %rdi
	movq	%rsi, %r8
	movq	%r14, %rdx
	movq	%rdi, %rcx
	call	glfwGetFramebufferSize
	movl	592(%rsp), %r9d
	movl	368(%rsp), %r8d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	glViewport
	movss	.LC28(%rip), %xmm3
	movss	.LC188(%rip), %xmm2
	movss	.LC189(%rip), %xmm1
	movss	.LC190(%rip), %xmm0
	call	glClearColor
	movl	$16384, %ecx
	call	glClear
	call	_ZN5ImGui6RenderEv
	movq	%rdi, %rcx
	call	glfwSwapBuffers
	cmpq	$0, 232(%rsp)
	je	.L6896
	cmpq	$0, 264(%rsp)
	je	.L6896
	cmpq	$0, 296(%rsp)
	je	.L7097
.L6896:
	leaq	272(%rsp), %rdx
	movl	$1, %ecx
	movl	$0, 276(%rsp)
	call	glDeleteTextures
.LEHE39:
	jmp	.L6898
	.p2align 4,,7
.L7096:
	movq	176(%rsp), %rax
	movq	%r14, %rdx
	leaq	32(%rax), %rcx
.LEHB40:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	movq	264(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L6879
	call	free
	movq	$0, 264(%rsp)
.L6879:
	movl	244(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L6880
.L6883:
	movq	296(%rsp), %rcx
	movl	$0, 244(%rsp)
	testq	%rcx, %rcx
	je	.L6882
	call	free
	movq	$0, 296(%rsp)
.L6882:
	movl	276(%rsp), %edx
	testl	%edx, %edx
	jne	.L6884
.L6886:
	movq	176(%rsp), %rax
	leaq	.LC122(%rip), %rdx
	movl	$0, 276(%rsp)
	movq	32(%rax), %rcx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L7098
	movq	8+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	_ZL21stbi__stdio_callbacks(%rip), %rax
	movl	$128, %r8d
	movq	%rbx, 632(%rsp)
	movl	$128, 644(%rsp)
	movq	%rbx, %rcx
	movl	$1, 640(%rsp)
	movq	%rdx, 616(%rsp)
	movq	16+_ZL21stbi__stdio_callbacks(%rip), %rdx
	movq	%rax, 608(%rsp)
	movq	%rdx, 624(%rsp)
	leaq	56(%rsi), %rdx
	movq	%rdx, 792(%rsp)
	call	*%rax
	testl	%eax, %eax
	je	.L7099
	cltq
	leaq	56(%rsi,%rax), %rax
.L6890:
	leaq	56(%rsi), %rdx
	movq	%rax, 784(%rsp)
	movq	%rax, 800(%rsp)
	leaq	240(%rsp), %rax
	movl	$4, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rdx, 776(%rsp)
	leaq	16(%rax), %r9
	leaq	8(%rax), %rdx
	leaq	12(%rax), %r8
	call	_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L6891
	movl	776(%rsp), %edx
	subl	784(%rsp), %edx
	movl	$1, %r8d
	movq	%rbx, %rcx
	call	fseek
.L6891:
	movq	%rbx, %rcx
	call	fclose
.L6888:
	movl	244(%rsp), %eax
	movq	%rdi, 264(%rsp)
	testl	%eax, %eax
	jne	.L6892
.L6894:
	leaq	240(%rsp), %rdx
	movl	$1, %ecx
	call	glGenTextures
	movl	240(%rsp), %edx
	movl	$3553, %ecx
	call	glBindTexture
	movq	264(%rsp), %rax
	movl	248(%rsp), %r9d
	movl	$6408, %r8d
	movl	$5121, 56(%rsp)
	movl	$6408, 48(%rsp)
	xorl	%edx, %edx
	movl	$0, 40(%rsp)
	movl	$3553, %ecx
	movq	%rax, 64(%rsp)
	movl	252(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	glTexImage2D
	movq	__imp___glewGenerateTextureMipmap(%rip), %rax
	movl	240(%rsp), %ecx
	call	*(%rax)
.LEHE40:
	movl	$1, 244(%rsp)
	jmp	.L6878
	.p2align 4,,7
.L7088:
	movss	.LC180(%rip), %xmm0
	leaq	.LC184(%rip), %rdx
	mulss	128(%rsp), %xmm0
	movq	%rsi, %rcx
	cvttss2si	%xmm0, %r8d
	call	sprintf
	leaq	132(%rsp), %rax
	movl	220(%rsp), %r9d
	movl	216(%rsp), %r8d
	movq	296(%rsp), %rcx
	movl	$4, 32(%rsp)
	xorl	%edx, %edx
	movq	%rax, 40(%rsp)
.LEHB41:
	call	_Z21stbi_write_png_to_memPhiiiiPi
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L6818
	leaq	.LC158(%rip), %rdx
	movq	%rsi, %rcx
	call	fopen
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L7041
	movslq	132(%rsp), %r8
	movq	%rax, %r9
	movl	$1, %edx
	movq	%rbx, %rcx
	call	fwrite
	movq	%rdi, %rcx
	call	fclose
.L7041:
	movq	%rbx, %rcx
	call	free
	jmp	.L6818
	.p2align 4,,7
.L7081:
	leaq	144(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	144(%rsp), %rdx
	movq	%rax, 304(%rsp)
	movq	%rax, %rcx
	movq	%rdx, 320(%rsp)
.L6787:
	movq	%rdi, %rdx
	movq	%rbx, %r8
	call	memcpy
	movq	144(%rsp), %rax
	movq	304(%rsp), %rdx
	jmp	.L6789
	.p2align 4,,7
.L7091:
	leaq	160(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE41:
	movq	160(%rsp), %rdx
	movq	%rax, 336(%rsp)
	movq	%rax, %rcx
	movq	%rdx, 352(%rsp)
.L6866:
	movq	%rbp, %rdx
	movq	%rdi, %r8
	call	memcpy
	movq	160(%rsp), %rdx
	movq	336(%rsp), %rax
	jmp	.L6868
	.p2align 4,,7
.L7090:
	leaq	16(%r14), %rax
	movq	$0, 376(%rsp)
	movb	$0, 384(%rsp)
	movq	%rax, 368(%rsp)
	jmp	.L6862
	.p2align 4,,7
.L7080:
	leaq	16(%rsi), %rax
	movq	$0, 600(%rsp)
	movb	$0, 608(%rsp)
	movq	%rax, 592(%rsp)
	jmp	.L6783
	.p2align 4,,7
.L6801:
	leaq	208(%rsp), %rdx
	movl	$1, %ecx
.LEHB42:
	call	glDeleteTextures
	jmp	.L6804
	.p2align 4,,7
.L6805:
	leaq	272(%rsp), %rdx
	movl	$1, %ecx
	call	glDeleteTextures
.LEHE42:
	jmp	.L6807
	.p2align 4,,7
.L7087:
	leaq	.LC167(%rip), %rdx
	leaq	.LC168(%rip), %rcx
	movl	$48, %r8d
.LEHB43:
	call	_assert
.LEHE43:
	jmp	.L6820
	.p2align 4,,7
.L7082:
	movzbl	(%rdi), %eax
	movq	80(%rsp), %rdx
	movb	%al, 320(%rsp)
	movl	$1, %eax
	jmp	.L6789
	.p2align 4,,7
.L7092:
	movzbl	0(%rbp), %eax
	movl	$1, %edx
	movb	%al, 352(%rsp)
	leaq	16(%rbx), %rax
	jmp	.L6868
	.p2align 4,,7
.L7089:
	leaq	16(%rsi), %rax
	movl	$64, %ecx
	movq	$0, 600(%rsp)
	movb	$0, 608(%rsp)
	movq	$0, 632(%rsp)
	movq	%rax, 592(%rsp)
	leaq	48(%rsi), %rax
	movb	$0, 640(%rsp)
	movq	$0, _ZZ12image_selectB5cxx11iE8selected(%rip)
	movq	$0, 8+_ZZ12image_selectB5cxx11iE8selected(%rip)
	movq	%rax, 624(%rsp)
	movq	$0, 16+_ZZ12image_selectB5cxx11iE8selected(%rip)
.LEHB44:
	call	_Znwy
.LEHE44:
	movq	592(%rsp), %rbp
	movq	%rax, %rbx
	movq	%rax, _ZZ12image_selectB5cxx11iE8selected(%rip)
	movq	600(%rsp), %rdi
	leaq	64(%rax), %rax
	movq	%rbp, %rcx
	movq	%rax, 16+_ZZ12image_selectB5cxx11iE8selected(%rip)
	leaq	16(%rbx), %rax
	addq	%rdi, %rcx
	movq	%rax, (%rbx)
	je	.L6948
	testq	%rbp, %rbp
	jne	.L6948
	movq	%rbx, %r12
.L6833:
	leaq	.LC31(%rip), %rcx
.LEHB45:
	call	_ZSt19__throw_logic_errorPKc
.LEHE45:
	.p2align 4,,7
.L7079:
	leaq	16(%rsi), %rax
	movl	$64, %ecx
	movq	$0, 600(%rsp)
	movb	$0, 608(%rsp)
	movq	$0, 632(%rsp)
	movq	%rax, 592(%rsp)
	leaq	48(%rsi), %rax
	movb	$0, 640(%rsp)
	movq	$0, _ZZ12image_selectB5cxx11iE8selected(%rip)
	movq	$0, 8+_ZZ12image_selectB5cxx11iE8selected(%rip)
	movq	%rax, 624(%rsp)
	movq	$0, 16+_ZZ12image_selectB5cxx11iE8selected(%rip)
.LEHB46:
	call	_Znwy
.LEHE46:
	movq	592(%rsp), %rbp
	movq	%rax, %rbx
	movq	%rax, _ZZ12image_selectB5cxx11iE8selected(%rip)
	movq	600(%rsp), %rdi
	leaq	64(%rax), %rax
	movq	%rbp, %rcx
	movq	%rax, 16+_ZZ12image_selectB5cxx11iE8selected(%rip)
	leaq	16(%rbx), %rax
	addq	%rdi, %rcx
	movq	%rax, (%rbx)
	je	.L6947
	testq	%rbp, %rbp
	jne	.L6947
	movq	%rbx, %r12
.L6753:
	leaq	.LC31(%rip), %rcx
.LEHB47:
	call	_ZSt19__throw_logic_errorPKc
.LEHE47:
.L6947:
	cmpq	$15, %rdi
	movq	%rdi, 136(%rsp)
	ja	.L7100
	cmpq	$1, %rdi
	je	.L7101
	xorl	%edx, %edx
	testq	%rdi, %rdi
	movq	%rax, %rcx
	jne	.L6761
.L6759:
	movq	%rbx, %r12
	movq	%rdx, 8(%rbx)
	movb	$0, (%rcx,%rdx)
	addq	$32, %r12
	je	.L6758
	movq	624(%rsp), %rbp
	movq	632(%rsp), %rdi
	leaq	48(%rbx), %rax
	movq	%rax, 32(%rbx)
	movq	%rbp, %rcx
	addq	%rdi, %rcx
	je	.L6763
	testq	%rbp, %rbp
	je	.L6753
.L6763:
	cmpq	$15, %rdi
	movq	%rdi, 136(%rsp)
	ja	.L7102
	cmpq	$1, %rdi
	je	.L7103
	xorl	%edx, %edx
	testq	%rdi, %rdi
	movq	%rax, %rcx
	jne	.L6764
.L6766:
	movq	%rdx, 40(%rbx)
	movb	$0, (%rcx,%rdx)
.L6758:
	leaq	_ZGVZ12image_selectiE8selected(%rip), %rcx
	addq	$32, %r12
	movq	%r12, 8+_ZZ12image_selectB5cxx11iE8selected(%rip)
	call	__cxa_guard_release
	leaq	__tcf_1(%rip), %rcx
	call	atexit
	movq	624(%rsp), %rcx
	leaq	48(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6767
	call	_ZdlPv
.L6767:
	movq	592(%rsp), %rcx
	leaq	16(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6769
	call	_ZdlPv
	jmp	.L6769
.L6948:
	cmpq	$15, %rdi
	movq	%rdi, 152(%rsp)
	ja	.L7104
	cmpq	$1, %rdi
	je	.L7105
	xorl	%edx, %edx
	testq	%rdi, %rdi
	movq	%rax, %rcx
	jne	.L6841
.L6839:
	movq	%rbx, %r12
	movq	%rdx, 8(%rbx)
	movb	$0, (%rcx,%rdx)
	addq	$32, %r12
	je	.L6838
	movq	624(%rsp), %rbp
	movq	632(%rsp), %rdi
	leaq	48(%rbx), %rax
	movq	%rax, 32(%rbx)
	movq	%rbp, %rcx
	addq	%rdi, %rcx
	je	.L6843
	testq	%rbp, %rbp
	je	.L6833
.L6843:
	cmpq	$15, %rdi
	movq	%rdi, 152(%rsp)
	ja	.L7106
	cmpq	$1, %rdi
	je	.L7107
	xorl	%edx, %edx
	testq	%rdi, %rdi
	movq	%rax, %rcx
	jne	.L6844
.L6846:
	movq	%rdx, 40(%rbx)
	movb	$0, (%rcx,%rdx)
.L6838:
	leaq	_ZGVZ12image_selectiE8selected(%rip), %rcx
	addq	$32, %r12
	movq	%r12, 8+_ZZ12image_selectB5cxx11iE8selected(%rip)
	call	__cxa_guard_release
	leaq	__tcf_1(%rip), %rcx
	call	atexit
	movq	624(%rsp), %rcx
	leaq	48(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6847
	call	_ZdlPv
.L6847:
	movq	592(%rsp), %rcx
	leaq	16(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6849
	call	_ZdlPv
	jmp	.L6849
	.p2align 4,,7
.L6884:
	leaq	272(%rsp), %rdx
	movl	$1, %ecx
.LEHB48:
	call	glDeleteTextures
	jmp	.L6886
	.p2align 4,,7
.L6880:
	leaq	240(%rsp), %rdx
	movl	$1, %ecx
	call	glDeleteTextures
.LEHE48:
	jmp	.L6883
	.p2align 4,,7
.L7099:
	movl	$0, 640(%rsp)
	movb	$0, 648(%rsp)
	leaq	57(%rsi), %rax
	jmp	.L6890
	.p2align 4,,7
.L6813:
	leaq	.LC167(%rip), %rdx
	leaq	.LC168(%rip), %rcx
	movl	$48, %r8d
.LEHB49:
	call	_assert
.LEHE49:
	jmp	.L6815
.L7095:
	movq	16(%rax), %r9
	movq	24(%rax), %r10
	movq	%r9, 384(%rsp)
	movq	%r10, 392(%rsp)
	jmp	.L6874
.L7085:
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 608(%rsp)
	movq	%rbx, 616(%rsp)
	jmp	.L6795
.L6892:
	leaq	.LC167(%rip), %rdx
	leaq	.LC168(%rip), %rcx
	movl	$48, %r8d
.LEHB50:
	call	_assert
.LEHE50:
	jmp	.L6894
.L7097:
	movq	208(%rsp), %rax
	movl	216(%rsp), %ecx
	imull	220(%rsp), %ecx
	movq	%rax, 272(%rsp)
	movq	216(%rsp), %rax
	movl	$0, 276(%rsp)
	movq	%rax, 280(%rsp)
	movq	224(%rsp), %rax
	sall	$2, %ecx
	movslq	%ecx, %rcx
	movq	%rax, 288(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 296(%rsp)
	call	malloc
	movq	%rax, 296(%rsp)
	jmp	.L6898
.L7102:
	leaq	136(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r12, %rcx
.LEHB51:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE51:
	movq	136(%rsp), %rdx
	movq	%rax, 32(%rbx)
	movq	%rax, %rcx
	movq	%rdx, 48(%rbx)
.L6764:
	movq	%rbp, %rdx
	movq	%rdi, %r8
	call	memcpy
	movq	136(%rsp), %rdx
	movq	32(%rbx), %rcx
	jmp	.L6766
.L7100:
	leaq	136(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
.LEHB52:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE52:
	movq	136(%rsp), %rdx
	movq	%rax, (%rbx)
	movq	%rax, %rcx
	movq	%rdx, 16(%rbx)
.L6761:
	movq	%rbp, %rdx
	movq	%rdi, %r8
	call	memcpy
	movq	136(%rsp), %rdx
	movq	(%rbx), %rcx
	jmp	.L6759
.L7104:
	leaq	152(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
.LEHB53:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE53:
	movq	152(%rsp), %rdx
	movq	%rax, (%rbx)
	movq	%rax, %rcx
	movq	%rdx, 16(%rbx)
.L6841:
	movq	%rbp, %rdx
	movq	%rdi, %r8
	call	memcpy
	movq	152(%rsp), %rdx
	movq	(%rbx), %rcx
	jmp	.L6839
.L7106:
	leaq	152(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r12, %rcx
.LEHB54:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE54:
	movq	152(%rsp), %rdx
	movq	%rax, 32(%rbx)
	movq	%rax, %rcx
	movq	%rdx, 48(%rbx)
.L6844:
	movq	%rbp, %rdx
	movq	%rdi, %r8
	call	memcpy
	movq	152(%rsp), %rdx
	movq	32(%rbx), %rcx
	jmp	.L6846
.L7103:
	movzbl	0(%rbp), %edx
	movq	%rax, %rcx
	movb	%dl, 48(%rbx)
	movl	$1, %edx
	jmp	.L6766
.L7101:
	movzbl	0(%rbp), %edx
	movq	%rax, %rcx
	movb	%dl, 16(%rbx)
	movl	$1, %edx
	jmp	.L6759
.L7105:
	movzbl	0(%rbp), %edx
	movq	%rax, %rcx
	movb	%dl, 16(%rbx)
	movl	$1, %edx
	jmp	.L6839
.L7107:
	movzbl	0(%rbp), %edx
	movq	%rax, %rcx
	movb	%dl, 48(%rbx)
	movl	$1, %edx
	jmp	.L6846
.L7086:
	leaq	.LC155(%rip), %rax
	xorl	%edi, %edi
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L6809
.L6747:
.LEHB55:
	call	_Z26ImGui_ImplGlfwGL3_Shutdownv
	call	glfwTerminate
.LEHE55:
	xorl	%ebx, %ebx
.L6746:
	leaq	176(%rsp), %rcx
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
	nop
	movaps	1600(%rsp), %xmm6
	movl	%ebx, %eax
	addq	$1624, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L7083:
	movq	%rdx, %rcx
	jmp	.L6787
.L7093:
	movq	%rax, %rcx
	jmp	.L6866
.L6916:
	movl	$1, %ebx
	jmp	.L6746
.L7098:
	leaq	.LC155(%rip), %rax
	xorl	%edi, %edi
	movq	%rax, _ZL22stbi__g_failure_reason(%rip)
	jmp	.L6888
.L7077:
	leaq	368(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rbp, %rcx
.LEHB56:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE56:
	movq	368(%rsp), %rdx
	movq	%rax, 32(%rbx)
	movq	%rax, %rcx
	movq	%rdx, 48(%rbx)
.L6730:
	movq	%r12, %rdx
	movq	%rdi, %r8
	call	memcpy
	movq	368(%rsp), %rdx
	movq	32(%rbx), %rcx
	jmp	.L6732
.L7075:
	leaq	368(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
.LEHB57:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
.LEHE57:
	movq	368(%rsp), %rdx
	movq	%rax, (%rbx)
	movq	%rax, %rcx
	movq	%rdx, 16(%rbx)
.L6727:
	movq	%r12, %rdx
	movq	%rdi, %r8
	call	memcpy
	movq	368(%rsp), %rdx
	movq	(%rbx), %rcx
	jmp	.L6725
.L7076:
	movzbl	(%r12), %edx
	movq	%rax, %rcx
	movb	%dl, 16(%rbx)
	movl	$1, %edx
	jmp	.L6725
.L7078:
	movzbl	(%r12), %edx
	movq	%rax, %rcx
	movb	%dl, 48(%rbx)
	movl	$1, %edx
	jmp	.L6732
.L6936:
.L6771:
	movq	%rax, %rcx
	call	__cxa_begin_catch
.L6774:
	cmpq	%r12, %rbx
	je	.L6772
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6773
	call	_ZdlPv
.L6773:
	addq	$32, %rbx
	jmp	.L6774
.L6941:
.L6851:
	movq	%rax, %rcx
	call	__cxa_begin_catch
.L6854:
	cmpq	%r12, %rbx
	je	.L6852
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6853
	call	_ZdlPv
.L6853:
	addq	$32, %rbx
	jmp	.L6854
.L6932:
.L6737:
	movq	%rax, %rcx
	call	__cxa_begin_catch
.L6740:
	cmpq	%rbp, %rbx
	je	.L6738
	movq	(%rbx), %rcx
	leaq	16(%rbx), %rax
	cmpq	%rax, %rcx
	je	.L6739
	call	_ZdlPv
.L6739:
	addq	$32, %rbx
	jmp	.L6740
.L6927:
	movq	%rax, %rbx
.L6780:
	leaq	176(%rsp), %rcx
	call	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev
.L7045:
	movq	%rbx, %rcx
.LEHB58:
	call	_Unwind_Resume
.LEHE58:
.L6937:
.L7049:
	movq	304(%rsp), %rcx
	addq	$16, %r15
	movq	%rax, %rbx
	cmpq	%r15, %rcx
	je	.L6780
.L7044:
	call	_ZdlPv
	jmp	.L6780
.L6738:
	.p2align 4,,8
.LEHB59:
	call	__cxa_rethrow
.LEHE59:
.L6852:
	.p2align 4,,8
.LEHB60:
	call	__cxa_rethrow
.LEHE60:
.L6931:
	movq	%rax, %rbx
	call	__cxa_end_catch
.L6742:
	movq	176(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L6743
	call	_ZdlPv
.L6743:
	movq	624(%rsp), %rcx
	leaq	48(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6744
	call	_ZdlPv
.L6744:
	movq	592(%rsp), %rcx
	addq	$16, %rsi
	cmpq	%rsi, %rcx
	je	.L7045
	call	_ZdlPv
	jmp	.L7045
.L6940:
	movq	%rax, %rbx
	.p2align 4,,5
	call	__cxa_end_catch
.L6856:
	movq	_ZZ12image_selectB5cxx11iE8selected(%rip), %rcx
	testq	%rcx, %rcx
	je	.L6857
	call	_ZdlPv
.L6857:
	movq	624(%rsp), %rcx
	leaq	48(%rsi), %rax
	cmpq	%rax, %rcx
	je	.L6858
	call	_ZdlPv
.L6858:
	movq	592(%rsp), %rcx
	addq	$16, %rsi
	cmpq	%rsi, %rcx
	je	.L6859
	call	_ZdlPv
.L6859:
	leaq	_ZGVZ12image_selectiE8selected(%rip), %rcx
	call	__cxa_guard_abort
	jmp	.L6780
.L6772:
.LEHB61:
	call	__cxa_rethrow
.LEHE61:
.L6944:
	movq	%rbx, %r12
	.p2align 4,,5
	jmp	.L6771
.L6935:
	movq	%rax, %rbx
	call	__cxa_end_catch
	.p2align 4,,2
	jmp	.L6856
.L6934:
.L7057:
	movq	%rax, %rbx
	.p2align 4,,2
	jmp	.L6856
.L6930:
	movq	%rax, %rbx
	.p2align 4,,5
	jmp	.L6742
.L6945:
	movq	%rbx, %r12
	.p2align 4,,2
	jmp	.L6851
.L6943:
	movq	%rbx, %rbp
	.p2align 4,,2
	jmp	.L6737
.L6929:
	movq	368(%rsp), %rcx
	addq	$16, %r14
	movq	%rax, %rbx
	cmpq	%r14, %rcx
	jne	.L7044
	jmp	.L6780
.L6938:
.L7052:
	movq	336(%rsp), %rcx
	addq	$16, %rbx
	movq	%rax, %rsi
	cmpq	%rbx, %rcx
	je	.L6877
	call	_ZdlPv
.L6877:
	movq	%rsi, %rbx
	jmp	.L6780
.L6942:
	.p2align 4,,5
	jmp	.L7052
.L7094:
	leaq	.LC172(%rip), %rcx
.LEHB62:
	call	_ZSt20__throw_length_errorPKc
.LEHE62:
.L6928:
	movq	592(%rsp), %rcx
	addq	$16, %rsi
	movq	%rax, %rbx
	cmpq	%rsi, %rcx
	jne	.L7044
	jmp	.L6780
.L7084:
	leaq	.LC172(%rip), %rcx
.LEHB63:
	call	_ZSt20__throw_length_errorPKc
.LEHE63:
.L6933:
	jmp	.L7049
.L6939:
	jmp	.L7057
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA7456:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT7456-.LLSDATTD7456
.LLSDATTD7456:
	.byte	0x1
	.uleb128 .LLSDACSE7456-.LLSDACSB7456
.LLSDACSB7456:
	.uleb128 .LEHB28-.LFB7456
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB7456
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L6930-.LFB7456
	.uleb128 0
	.uleb128 .LEHB30-.LFB7456
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L6932-.LFB7456
	.uleb128 0x1
	.uleb128 .LEHB31-.LFB7456
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L6927-.LFB7456
	.uleb128 0
	.uleb128 .LEHB32-.LFB7456
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L6937-.LFB7456
	.uleb128 0
	.uleb128 .LEHB33-.LFB7456
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L6933-.LFB7456
	.uleb128 0
	.uleb128 .LEHB34-.LFB7456
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L6928-.LFB7456
	.uleb128 0
	.uleb128 .LEHB35-.LFB7456
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L6927-.LFB7456
	.uleb128 0
	.uleb128 .LEHB36-.LFB7456
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L6942-.LFB7456
	.uleb128 0
	.uleb128 .LEHB37-.LFB7456
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L6938-.LFB7456
	.uleb128 0
	.uleb128 .LEHB38-.LFB7456
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L6929-.LFB7456
	.uleb128 0
	.uleb128 .LEHB39-.LFB7456
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L6927-.LFB7456
	.uleb128 0
	.uleb128 .LEHB40-.LFB7456
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L6929-.LFB7456
	.uleb128 0
	.uleb128 .LEHB41-.LFB7456
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L6927-.LFB7456
	.uleb128 0
	.uleb128 .LEHB42-.LFB7456
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L6928-.LFB7456
	.uleb128 0
	.uleb128 .LEHB43-.LFB7456
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L6927-.LFB7456
	.uleb128 0
	.uleb128 .LEHB44-.LFB7456
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L6939-.LFB7456
	.uleb128 0
	.uleb128 .LEHB45-.LFB7456
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L6941-.LFB7456
	.uleb128 0x1
	.uleb128 .LEHB46-.LFB7456
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L6934-.LFB7456
	.uleb128 0
	.uleb128 .LEHB47-.LFB7456
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L6936-.LFB7456
	.uleb128 0x1
	.uleb128 .LEHB48-.LFB7456
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L6929-.LFB7456
	.uleb128 0
	.uleb128 .LEHB49-.LFB7456
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L6928-.LFB7456
	.uleb128 0
	.uleb128 .LEHB50-.LFB7456
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L6929-.LFB7456
	.uleb128 0
	.uleb128 .LEHB51-.LFB7456
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L6936-.LFB7456
	.uleb128 0x1
	.uleb128 .LEHB52-.LFB7456
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L6944-.LFB7456
	.uleb128 0x1
	.uleb128 .LEHB53-.LFB7456
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L6945-.LFB7456
	.uleb128 0x1
	.uleb128 .LEHB54-.LFB7456
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L6941-.LFB7456
	.uleb128 0x1
	.uleb128 .LEHB55-.LFB7456
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L6927-.LFB7456
	.uleb128 0
	.uleb128 .LEHB56-.LFB7456
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L6932-.LFB7456
	.uleb128 0x1
	.uleb128 .LEHB57-.LFB7456
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L6943-.LFB7456
	.uleb128 0x1
	.uleb128 .LEHB58-.LFB7456
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB59-.LFB7456
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L6931-.LFB7456
	.uleb128 0
	.uleb128 .LEHB60-.LFB7456
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L6940-.LFB7456
	.uleb128 0
	.uleb128 .LEHB61-.LFB7456
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L6935-.LFB7456
	.uleb128 0
	.uleb128 .LEHB62-.LFB7456
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L6942-.LFB7456
	.uleb128 0
	.uleb128 .LEHB63-.LFB7456
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L6937-.LFB7456
	.uleb128 0
.LLSDACSE7456:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT7456:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I_stbi_failure_reason;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_stbi_failure_reason
_GLOBAL__sub_I_stbi_failure_reason:
.LFB7851:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_2(%rip), %rcx
	call	atexit
	leaq	16+_ZL11current_dir(%rip), %rax
	leaq	1+.LC170(%rip), %r8
	leaq	.LC170(%rip), %rdx
	leaq	_ZL11current_dir(%rip), %rcx
	movq	%rax, _ZL11current_dir(%rip)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.68
	leaq	__tcf_3(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_stbi_failure_reason
.lcomm _ZZ12image_selectB5cxx11iE8selected,24,16
.lcomm _ZZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter,280,32
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
	.data
	.align 16
_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk:
	.ascii "XXXX PNG chunk not known\0"
	.section .rdata,"dr"
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
.lcomm _ZGVZ12image_selectiE8selected,8,8
.lcomm _ZGVZ2fsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcE6filter,8,8
.lcomm _ZL11current_dir,32,32
.lcomm _ZStL8__ioinit,1,1
	.globl	stbi_write_tga_with_rle
	.data
	.align 4
stbi_write_tga_with_rle:
	.long	1
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
.LC9:
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.align 16
.LC10:
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
.LC11:
	.quad	-9187201950435737472
	.quad	-9187201950435737472
	.align 16
.LC12:
	.word	5743
	.word	5743
	.word	5743
	.word	5743
	.word	5743
	.word	5743
	.word	5743
	.word	5743
	.align 16
.LC13:
	.word	-1410
	.word	-1410
	.word	-1410
	.word	-1410
	.word	-1410
	.word	-1410
	.word	-1410
	.word	-1410
	.align 16
.LC14:
	.word	7258
	.word	7258
	.word	7258
	.word	7258
	.word	7258
	.word	7258
	.word	7258
	.word	7258
	.align 16
.LC15:
	.word	-2925
	.word	-2925
	.word	-2925
	.word	-2925
	.word	-2925
	.word	-2925
	.word	-2925
	.word	-2925
	.align 16
.LC16:
	.word	2217
	.word	-5350
	.word	2217
	.word	-5350
	.word	2217
	.word	-5350
	.word	2217
	.word	-5350
	.align 16
.LC17:
	.word	5352
	.word	2217
	.word	5352
	.word	2217
	.word	5352
	.word	2217
	.word	5352
	.word	2217
	.align 16
.LC18:
	.word	-6811
	.word	-8034
	.word	-6811
	.word	-8034
	.word	-6811
	.word	-8034
	.word	-6811
	.word	-8034
	.align 16
.LC19:
	.word	-8034
	.word	4552
	.word	-8034
	.word	4552
	.word	-8034
	.word	4552
	.word	-8034
	.word	4552
	.align 16
.LC20:
	.word	6813
	.word	-1597
	.word	6813
	.word	-1597
	.word	6813
	.word	-1597
	.word	6813
	.word	-1597
	.align 16
.LC21:
	.word	-1597
	.word	4552
	.word	-1597
	.word	4552
	.word	-1597
	.word	4552
	.word	-1597
	.word	4552
	.align 16
.LC22:
	.word	1131
	.word	4816
	.word	1131
	.word	4816
	.word	1131
	.word	4816
	.word	1131
	.word	4816
	.align 16
.LC23:
	.word	4816
	.word	-5681
	.word	4816
	.word	-5681
	.word	4816
	.word	-5681
	.word	4816
	.word	-5681
	.align 16
.LC24:
	.long	512
	.long	512
	.long	512
	.long	512
	.align 16
.LC25:
	.long	16842752
	.long	16842752
	.long	16842752
	.long	16842752
	.align 8
.LC26:
	.long	0
	.long	1072693248
	.align 4
.LC27:
	.long	1077936128
	.align 4
.LC28:
	.long	1065353216
	.align 16
.LC55:
	.word	77
	.word	77
	.word	77
	.word	77
	.word	77
	.word	77
	.word	77
	.word	77
	.align 16
.LC56:
	.word	150
	.word	150
	.word	150
	.word	150
	.word	150
	.word	150
	.word	150
	.word	150
	.align 16
.LC57:
	.word	29
	.word	29
	.word	29
	.word	29
	.word	29
	.word	29
	.word	29
	.word	29
	.align 16
.LC96:
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
.LC97:
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
.LC98:
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
	.align 4
.LC148:
	.long	1199570688
	.align 4
.LC149:
	.long	1132396544
	.align 4
.LC151:
	.long	1056964608
	.align 4
.LC159:
	.long	172994847
	.align 4
.LC160:
	.long	1132462080
	.align 4
.LC175:
	.long	-1082130432
	.align 4
.LC180:
	.long	1120403456
	.align 4
.LC188:
	.long	1058708123
	.align 4
.LC189:
	.long	1058050193
	.align 4
.LC190:
	.long	1055188198
	.ident	"GCC: (GNU) 5.3.0"
	.def	fseek;	.scl	2;	.type	32;	.endef
	.def	feof;	.scl	2;	.type	32;	.endef
	.def	fread;	.scl	2;	.type	32;	.endef
	.def	_assert;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	fprintf;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7MemFreeEPv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	strtol;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	pow;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	calloc;	.scl	2;	.type	32;	.endef
	.def	ftell;	.scl	2;	.type	32;	.endef
	.def	frexp;	.scl	2;	.type	32;	.endef
	.def	sprintf;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	glGenTextures;	.scl	2;	.type	32;	.endef
	.def	glBindTexture;	.scl	2;	.type	32;	.endef
	.def	glTexImage2D;	.scl	2;	.type	32;	.endef
	.def	roundf;	.scl	2;	.type	32;	.endef
	.def	stat;	.scl	2;	.type	32;	.endef
	.def	glDeleteTextures;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	opendir;	.scl	2;	.type	32;	.endef
	.def	readdir;	.scl	2;	.type	32;	.endef
	.def	closedir;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10BeginPopupEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui4TextEPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZN15ImGuiTextFilter4DrawEPKcf;	.scl	2;	.type	32;	.endef
	.def	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10SelectableEPKcbiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_;	.scl	2;	.type	32;	.endef
	.def	_ZN15ImGuiTextFilter5BuildEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEyyPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8EndPopupEv;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_acquire;	.scl	2;	.type	32;	.endef
	.def	_ZN15ImGuiTextFilterC1EPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_release;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9OpenPopupEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_abort;	.scl	2;	.type	32;	.endef
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
	.def	_Z22ImGui_ImplGlfwGL3_InitP10GLFWwindowb;	.scl	2;	.type	32;	.endef
	.def	glfwWindowShouldClose;	.scl	2;	.type	32;	.endef
	.def	glfwPollEvents;	.scl	2;	.type	32;	.endef
	.def	_Z26ImGui_ImplGlfwGL3_NewFramev;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5BeginEPKcPbi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10BeginGroupEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui6ButtonEPKcRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8EndGroupEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11SliderFloatEPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui3EndEv;	.scl	2;	.type	32;	.endef
	.def	glfwGetFramebufferSize;	.scl	2;	.type	32;	.endef
	.def	glViewport;	.scl	2;	.type	32;	.endef
	.def	glClearColor;	.scl	2;	.type	32;	.endef
	.def	glClear;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui6RenderEv;	.scl	2;	.type	32;	.endef
	.def	glfwSwapBuffers;	.scl	2;	.type	32;	.endef
	.def	_Z26ImGui_ImplGlfwGL3_Shutdownv;	.scl	2;	.type	32;	.endef
	.def	glfwTerminate;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
