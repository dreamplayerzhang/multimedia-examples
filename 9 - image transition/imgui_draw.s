	.file	"imgui_draw.cpp"
	.text
	.p2align 4,,15
	.def	_ZL19rect_original_orderPKvS0_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19rect_original_orderPKvS0_
_ZL19rect_original_orderPKvS0_:
.LFB566:
	.seh_endprologue
	movl	12(%rdx), %eax
	cmpl	%eax, 12(%rcx)
	jl	.L3
	setg	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
.L3:
	movl	$-1, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17stbtt__find_tablePhjPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17stbtt__find_tablePhjPKc
_ZL17stbtt__find_tablePhjPKc:
.LFB587:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movl	%edx, %eax
	addl	$12, %edx
	leaq	4(%rcx,%rax), %rax
	movzbl	(%rax), %r11d
	movzbl	1(%rax), %eax
	sall	$8, %r11d
	addl	%eax, %r11d
	movzwl	%r11w, %r11d
	testl	%r11d, %r11d
	je	.L9
	movsbl	(%r8), %ebx
	xorl	%eax, %eax
	jmp	.L8
	.p2align 4,,10
.L7:
	addl	$1, %eax
	addl	$16, %edx
	cmpl	%eax, %r11d
	je	.L9
.L8:
	movl	%edx, %r9d
	movzbl	(%rcx,%r9), %r10d
	cmpl	%ebx, %r10d
	jne	.L7
	movzbl	1(%rcx,%r9), %esi
	movsbl	1(%r8), %r10d
	cmpl	%r10d, %esi
	jne	.L7
	movzbl	2(%rcx,%r9), %esi
	movsbl	2(%r8), %r10d
	cmpl	%r10d, %esi
	jne	.L7
	movzbl	3(%rcx,%r9), %esi
	movsbl	3(%r8), %r10d
	cmpl	%r10d, %esi
	jne	.L7
	leaq	8(%rcx,%r9), %rdx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %ecx
	sall	$24, %eax
	sall	$16, %ecx
	addl	%ecx, %eax
	movzbl	2(%rdx), %ecx
	movzbl	3(%rdx), %edx
	sall	$8, %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	jmp	.L5
	.p2align 4,,10
.L9:
	xorl	%eax, %eax
.L5:
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL19stbtt__track_vertexP12stbtt__csctxii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19stbtt__track_vertexP12stbtt__csctxii
_ZL19stbtt__track_vertexP12stbtt__csctxii:
.LFB601:
	.seh_endprologue
	cmpl	%edx, 28(%rcx)
	jl	.L12
	movl	4(%rcx), %r11d
	testl	%r11d, %r11d
	je	.L12
.L13:
	cmpl	%r8d, 36(%rcx)
	jl	.L14
	movl	4(%rcx), %r10d
	testl	%r10d, %r10d
	jne	.L15
.L14:
	cmpl	%edx, 24(%rcx)
	movl	%r8d, 36(%rcx)
	movl	32(%rcx), %eax
	jg	.L16
	movl	4(%rcx), %r9d
	testl	%r9d, %r9d
	jne	.L18
	movl	%edx, 24(%rcx)
.L21:
	movl	%r8d, 32(%rcx)
	movl	$1, 4(%rcx)
	ret
	.p2align 4,,10
.L15:
	cmpl	24(%rcx), %edx
	movl	32(%rcx), %eax
	jge	.L18
.L16:
	cmpl	%eax, %r8d
	movl	%edx, 24(%rcx)
	jl	.L21
	movl	4(%rcx), %eax
	testl	%eax, %eax
	je	.L21
	movl	$1, 4(%rcx)
	ret
	.p2align 4,,10
.L12:
	movl	%edx, 28(%rcx)
	jmp	.L13
	.p2align 4,,10
.L18:
	cmpl	%eax, %r8d
	jl	.L21
	movl	$1, 4(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei
_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei:
.LFB634:
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
	cmpl	$12, %edx
	movq	%rcx, %rdi
	movl	%edx, %ebp
	jle	.L24
.L43:
	leaq	20(%rdi), %r12
.L26:
	movss	4(%rdi), %xmm0
	leal	-1(%rbp), %ebx
	movl	%ebp, %eax
	movslq	%ebp, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	sarl	%eax
	cltq
	salq	$2, %rdx
	leaq	(%rax,%rax,4), %rax
	movss	-16(%rdi,%rdx), %xmm2
	leaq	(%rdi,%rax,4), %rax
	movss	4(%rax), %xmm1
	leaq	-20(%rdi,%rdx), %rcx
	ucomiss	%xmm1, %xmm2
	seta	%r8b
	ucomiss	%xmm0, %xmm1
	seta	%dl
	cmpb	%r8b, %dl
	je	.L27
	ucomiss	%xmm0, %xmm2
	movq	%rdi, %rdx
	seta	%r9b
	cmpb	%r9b, %r8b
	je	.L28
	movss	4(%rcx), %xmm0
	movq	%rcx, %rdx
.L28:
	movq	(%rax), %r9
	movss	(%rdx), %xmm3
	movss	8(%rdx), %xmm2
	movss	12(%rdx), %xmm1
	movq	%r9, (%rdx)
	movq	8(%rax), %r9
	movl	16(%rdx), %r8d
	movq	%r9, 8(%rdx)
	movl	16(%rax), %r9d
	movl	%r9d, 16(%rdx)
	movss	%xmm3, (%rax)
	movss	%xmm0, 4(%rax)
	movss	%xmm2, 8(%rax)
	movss	%xmm1, 12(%rax)
	movl	%r8d, 16(%rax)
	movss	4(%rdi), %xmm0
.L27:
	movq	(%rax), %r8
	movq	%r12, %rsi
	movss	(%rdi), %xmm3
	movss	12(%rdi), %xmm1
	movss	8(%rdi), %xmm2
	movq	%r8, (%rdi)
	movq	8(%rax), %r8
	movl	16(%rdi), %edx
	movq	%r8, 8(%rdi)
	movl	16(%rax), %r8d
	movl	%r8d, 16(%rdi)
	movss	%xmm3, (%rax)
	movss	%xmm0, 4(%rax)
	movss	%xmm2, 8(%rax)
	movss	%xmm1, 12(%rax)
	movl	%edx, 16(%rax)
	movss	4(%rdi), %xmm1
	movslq	%ebx, %rax
	movss	4(%rcx), %xmm0
	movl	$1, %ecx
	.p2align 4,,10
.L29:
	movss	4(%rsi), %xmm2
	ucomiss	%xmm2, %xmm1
	ja	.L30
	ucomiss	%xmm1, %xmm0
	leaq	(%rax,%rax,4), %rax
	jbe	.L42
	leaq	-20(%rdi,%rax,4), %rax
	.p2align 4,,10
.L33:
	movq	%rax, %rdx
	subq	$20, %rax
	movss	24(%rax), %xmm0
	subl	$1, %ebx
	ucomiss	%xmm1, %xmm0
	ja	.L33
	cmpl	%ebx, %ecx
	jge	.L35
.L44:
	movq	(%rdx), %r8
	subl	$1, %ebx
	movss	(%rsi), %xmm3
	movss	8(%rsi), %xmm1
	movss	12(%rsi), %xmm0
	movq	%r8, (%rsi)
	movq	8(%rdx), %r8
	movl	16(%rsi), %eax
	movq	%r8, 8(%rsi)
	movl	16(%rdx), %r8d
	movl	%r8d, 16(%rsi)
	movl	%eax, 16(%rdx)
	movslq	%ebx, %rax
	movss	%xmm3, (%rdx)
	movss	%xmm2, 4(%rdx)
	movss	%xmm1, 8(%rdx)
	movss	%xmm0, 12(%rdx)
	leaq	(%rax,%rax,4), %rdx
	movss	4(%rdi), %xmm1
	movss	4(%rdi,%rdx,4), %xmm0
.L30:
	addq	$20, %rsi
	addl	$1, %ecx
	jmp	.L29
	.p2align 4,,10
.L42:
	leaq	(%rdi,%rax,4), %rdx
	cmpl	%ebx, %ecx
	jl	.L44
	.p2align 4,,10
.L35:
	subl	%ecx, %ebp
	cmpl	%ebx, %ebp
	jle	.L36
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei
	cmpl	$12, %ebp
	jle	.L24
	movq	%rsi, %rdi
	jmp	.L43
	.p2align 4,,10
.L36:
	movl	%ebp, %edx
	movq	%rsi, %rcx
	call	_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei
	cmpl	$12, %ebx
	jle	.L24
	movl	%ebx, %ebp
	jmp	.L26
	.p2align 4,,10
.L24:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi
_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi:
.LFB638:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$208, %rsp
	.seh_stackalloc	208
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
	movaps	%xmm12, 176(%rsp)
	.seh_savexmm	%xmm12, 176
	movaps	%xmm13, 192(%rsp)
	.seh_savexmm	%xmm13, 192
	.seh_endprologue
	cmpl	$17, 312(%rsp)
	movss	272(%rsp), %xmm11
	movss	280(%rsp), %xmm12
	movss	288(%rsp), %xmm10
	movss	296(%rsp), %xmm8
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	movss	304(%rsp), %xmm9
	je	.L46
	movaps	%xmm11, %xmm6
	movaps	%xmm12, %xmm7
	movss	.LC0(%rip), %xmm0
	movaps	%xmm3, %xmm1
	movss	.LC1(%rip), %xmm13
	addss	%xmm11, %xmm6
	addss	%xmm12, %xmm7
	addss	%xmm8, %xmm1
	addss	%xmm2, %xmm6
	addss	%xmm3, %xmm7
	mulss	%xmm13, %xmm1
	addss	%xmm10, %xmm6
	addss	%xmm8, %xmm7
	mulss	%xmm0, %xmm6
	mulss	%xmm0, %xmm7
	movaps	%xmm2, %xmm0
	addss	%xmm10, %xmm0
	mulss	%xmm13, %xmm0
	subss	%xmm7, %xmm1
	mulss	%xmm1, %xmm1
	subss	%xmm6, %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	ucomiss	%xmm9, %xmm0
	ja	.L58
	testq	%rcx, %rcx
	movl	(%rdx), %eax
	je	.L49
	movslq	%eax, %rdx
	leaq	(%rcx,%rdx,8), %rdx
	movss	%xmm10, (%rdx)
	movss	%xmm8, 4(%rdx)
.L49:
	addl	$1, %eax
	movl	%eax, (%rbx)
.L46:
	movaps	80(%rsp), %xmm6
	movl	$1, %eax
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
	movaps	144(%rsp), %xmm10
	movaps	160(%rsp), %xmm11
	movaps	176(%rsp), %xmm12
	movaps	192(%rsp), %xmm13
	addq	$208, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L58:
	movaps	%xmm12, %xmm0
	movl	312(%rsp), %eax
	movss	%xmm9, 64(%rsp)
	addss	%xmm3, %xmm0
	movss	%xmm7, 56(%rsp)
	movss	%xmm6, 48(%rsp)
	mulss	%xmm13, %xmm0
	leal	1(%rax), %edi
	movl	%edi, 72(%rsp)
	movss	%xmm0, 40(%rsp)
	movaps	%xmm11, %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm13, %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi
	addss	%xmm8, %xmm12
	movaps	%xmm7, %xmm3
	movaps	%xmm6, %xmm2
	movss	%xmm10, 48(%rsp)
	addss	%xmm11, %xmm10
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	movl	%edi, 72(%rsp)
	mulss	%xmm13, %xmm12
	movss	%xmm9, 64(%rsp)
	mulss	%xmm13, %xmm10
	movss	%xmm8, 56(%rsp)
	movss	%xmm12, 40(%rsp)
	movss	%xmm10, 32(%rsp)
	call	_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi
	jmp	.L46
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "C:/libraries/include/imgui/stb_truetype.h\0"
.LC3:
	.ascii "!(o > b->size || o < 0)\0"
	.text
	.p2align 4,,15
	.def	_ZL15stbtt__buf_seekP10stbtt__bufi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbtt__buf_seekP10stbtt__bufi
_ZL15stbtt__buf_seekP10stbtt__bufi:
.LFB570:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	12(%rcx), %eax
	testl	%edx, %edx
	movq	%rcx, %rsi
	movl	%edx, %ebx
	js	.L65
	cmpl	%edx, %eax
	jl	.L65
.L60:
	testl	%ebx, %ebx
	js	.L62
	cmpl	%eax, %ebx
	cmovle	%ebx, %eax
.L62:
	movl	%eax, 8(%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L65:
	leaq	.LC2(%rip), %rdx
	movl	$1000, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movl	12(%rsi), %eax
	jmp	.L60
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "!info->cff.size\0"
	.text
	.p2align 4,,15
	.def	_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi
_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi:
.LFB595:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	68(%rcx), %eax
	testl	%eax, %eax
	movq	%rcx, %rsi
	movl	%edx, %ebx
	jne	.L73
.L67:
	cmpl	%ebx, 20(%rsi)
	jle	.L72
	movl	52(%rsi), %eax
	cmpl	$1, %eax
	jg	.L72
	testl	%eax, %eax
	movl	32(%rsi), %r9d
	movq	8(%rsi), %r8
	movslq	24(%rsi), %rdx
	je	.L74
	sall	$2, %ebx
	movslq	%ebx, %rbx
	addq	%rdx, %rbx
	leaq	(%r8,%rbx), %r10
	movzbl	(%r10), %edx
	movzbl	1(%r10), %eax
	movl	%edx, %ecx
	sall	$24, %ecx
	sall	$16, %eax
	leal	(%rcx,%rax), %edx
	movzbl	2(%r10), %eax
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	3(%r10), %edx
	leaq	4(%r8,%rbx), %r10
	movzbl	(%r10), %ecx
	addl	%edx, %eax
	movzbl	1(%r10), %edx
	addl	%r9d, %eax
	sall	$24, %ecx
	sall	$16, %edx
	leal	(%rcx,%rdx), %ecx
	movzbl	2(%r10), %edx
	sall	$8, %edx
	addl	%ecx, %edx
	movzbl	3(%r10), %ecx
	addl	%ecx, %edx
	addl	%r9d, %edx
.L70:
	cmpl	%edx, %eax
	je	.L72
.L66:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L74:
	addl	%ebx, %ebx
	movslq	%ebx, %rbx
	addq	%rdx, %rbx
	leaq	(%r8,%rbx), %rdx
	movzbl	(%rdx), %eax
	leaq	2(%r8,%rbx), %rcx
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	(%rcx), %edx
	movzbl	1(%rcx), %ecx
	movzwl	%ax, %eax
	leal	(%r9,%rax,2), %eax
	sall	$8, %edx
	addl	%ecx, %edx
	movzwl	%dx, %edx
	leal	(%r9,%rdx,2), %edx
	jmp	.L70
	.p2align 4,,10
.L73:
	leaq	.LC2(%rip), %rdx
	movl	$1439, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	jmp	.L67
	.p2align 4,,10
.L72:
	movl	$-1, %eax
	jmp	.L66
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi
_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi:
.LFB639:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$288, %rsp
	.seh_stackalloc	288
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
	pxor	%xmm5, %xmm5
	movss	.LC1(%rip), %xmm15
	movl	408(%rsp), %edi
	movss	368(%rsp), %xmm4
	movss	376(%rsp), %xmm1
	movss	352(%rsp), %xmm14
	movaps	%xmm4, %xmm11
	movss	360(%rsp), %xmm13
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	movaps	%xmm1, %xmm12
.L83:
	movaps	%xmm14, %xmm0
	movaps	%xmm13, %xmm6
	movss	384(%rsp), %xmm8
	movaps	%xmm11, %xmm9
	subss	%xmm2, %xmm0
	movaps	%xmm12, %xmm4
	movss	392(%rsp), %xmm1
	movss	384(%rsp), %xmm7
	subss	%xmm3, %xmm6
	movss	392(%rsp), %xmm10
	subss	%xmm14, %xmm9
	mulss	%xmm0, %xmm0
	subss	%xmm13, %xmm4
	mulss	%xmm6, %xmm6
	subss	%xmm11, %xmm8
	subss	%xmm12, %xmm1
	subss	%xmm2, %xmm7
	subss	%xmm3, %xmm10
	addss	%xmm6, %xmm0
	ucomiss	%xmm0, %xmm5
	sqrtss	%xmm0, %xmm6
	ja	.L93
.L76:
	mulss	%xmm4, %xmm4
	mulss	%xmm9, %xmm9
	addss	%xmm4, %xmm9
	ucomiss	%xmm9, %xmm5
	sqrtss	%xmm9, %xmm4
	ja	.L94
.L77:
	mulss	%xmm8, %xmm8
	addss	%xmm4, %xmm6
	mulss	%xmm1, %xmm1
	addss	%xmm1, %xmm8
	ucomiss	%xmm8, %xmm5
	sqrtss	%xmm8, %xmm9
	ja	.L95
.L78:
	mulss	%xmm7, %xmm7
	addss	%xmm9, %xmm6
	mulss	%xmm10, %xmm10
	addss	%xmm10, %xmm7
	ucomiss	%xmm7, %xmm5
	sqrtss	%xmm7, %xmm8
	ja	.L96
.L79:
	mulss	%xmm6, %xmm6
	cmpl	$17, %edi
	movss	%xmm5, 108(%rsp)
	mulss	%xmm8, %xmm8
	subss	%xmm8, %xmm6
	je	.L75
	ucomiss	400(%rsp), %xmm6
	jbe	.L92
	movaps	%xmm14, %xmm0
	movaps	%xmm13, %xmm6
	addl	$1, %edi
	movss	384(%rsp), %xmm4
	addss	%xmm2, %xmm0
	movl	%edi, 88(%rsp)
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	movss	392(%rsp), %xmm1
	addss	%xmm3, %xmm6
	movss	400(%rsp), %xmm5
	addss	%xmm11, %xmm14
	addss	%xmm12, %xmm13
	mulss	%xmm15, %xmm0
	addss	%xmm11, %xmm4
	mulss	%xmm15, %xmm6
	movss	%xmm5, 80(%rsp)
	addss	%xmm12, %xmm1
	mulss	%xmm15, %xmm14
	mulss	%xmm15, %xmm13
	mulss	%xmm15, %xmm4
	movaps	%xmm0, %xmm7
	movss	%xmm0, 32(%rsp)
	mulss	%xmm15, %xmm1
	movaps	%xmm6, %xmm8
	movss	%xmm6, 40(%rsp)
	addss	%xmm14, %xmm7
	addss	%xmm13, %xmm8
	addss	%xmm4, %xmm14
	movaps	%xmm4, %xmm11
	addss	%xmm1, %xmm13
	mulss	%xmm15, %xmm7
	movaps	%xmm1, %xmm12
	mulss	%xmm15, %xmm8
	mulss	%xmm15, %xmm14
	mulss	%xmm15, %xmm13
	movaps	%xmm7, %xmm10
	movss	%xmm7, 48(%rsp)
	movaps	%xmm8, %xmm9
	movss	%xmm8, 56(%rsp)
	addss	%xmm14, %xmm10
	addss	%xmm13, %xmm9
	mulss	%xmm15, %xmm10
	mulss	%xmm15, %xmm9
	movss	%xmm10, 64(%rsp)
	movss	%xmm9, 72(%rsp)
	call	_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi
	movaps	%xmm10, %xmm2
	movaps	%xmm9, %xmm3
	movss	108(%rsp), %xmm5
	jmp	.L83
	.p2align 4,,10
.L92:
	testq	%rsi, %rsi
	movl	(%rbx), %eax
	je	.L84
	movss	384(%rsp), %xmm2
	movslq	%eax, %rdx
	movss	392(%rsp), %xmm3
	leaq	(%rsi,%rdx,8), %rdx
	movss	%xmm2, (%rdx)
	movss	%xmm3, 4(%rdx)
.L84:
	addl	$1, %eax
	movl	%eax, (%rbx)
.L75:
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
	addq	$288, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L96:
	movaps	%xmm7, %xmm0
	movss	%xmm3, 116(%rsp)
	movss	%xmm2, 112(%rsp)
	movss	%xmm5, 108(%rsp)
	call	sqrtf
	movss	116(%rsp), %xmm3
	movss	112(%rsp), %xmm2
	movss	108(%rsp), %xmm5
	jmp	.L79
.L95:
	movaps	%xmm8, %xmm0
	movss	%xmm3, 116(%rsp)
	movss	%xmm2, 112(%rsp)
	movss	%xmm5, 108(%rsp)
	call	sqrtf
	movss	116(%rsp), %xmm3
	movss	112(%rsp), %xmm2
	movss	108(%rsp), %xmm5
	jmp	.L78
.L94:
	movaps	%xmm9, %xmm0
	movss	%xmm3, 124(%rsp)
	movss	%xmm2, 120(%rsp)
	movss	%xmm5, 116(%rsp)
	movss	%xmm4, 112(%rsp)
	movss	%xmm1, 108(%rsp)
	call	sqrtf
	movss	124(%rsp), %xmm3
	movss	120(%rsp), %xmm2
	movss	116(%rsp), %xmm5
	movss	112(%rsp), %xmm4
	movss	108(%rsp), %xmm1
	jmp	.L77
.L93:
	movss	%xmm3, 124(%rsp)
	movss	%xmm2, 120(%rsp)
	movss	%xmm5, 116(%rsp)
	movss	%xmm1, 112(%rsp)
	movss	%xmm4, 108(%rsp)
	call	sqrtf
	movss	124(%rsp), %xmm3
	movss	120(%rsp), %xmm2
	movss	116(%rsp), %xmm5
	movss	112(%rsp), %xmm1
	movss	108(%rsp), %xmm4
	jmp	.L76
	.seh_endproc
	.p2align 4,,15
	.def	_ZL19rect_height_comparePKvS0_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19rect_height_comparePKvS0_
_ZL19rect_height_comparePKvS0_:
.LFB564:
	.seh_endprologue
	movzwl	6(%rdx), %eax
	cmpw	%ax, 6(%rcx)
	ja	.L101
	movl	$1, %eax
	jb	.L97
	movzwl	4(%rdx), %eax
	cmpw	%ax, 4(%rcx)
	ja	.L101
	setb	%al
	movzbl	%al, %eax
.L97:
	ret
	.p2align 4,,10
.L101:
	movl	$-1, %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "C:/libraries/include/imgui/imgui_draw.cpp\0"
	.align 8
.LC7:
	.ascii "stb__dout + length <= stb__barrier\0"
	.text
	.p2align 4,,15
	.def	_ZL10stb__matchPhj;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10stb__matchPhj
_ZL10stb__matchPhj:
.LFB770:
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
	movq	_ZL12stb__barrier(%rip), %rax
	movq	%rcx, %rbx
	movq	_ZL9stb__dout(%rip), %rcx
	movl	%edx, %edi
	movq	%rdi, %rsi
	leaq	(%rcx,%rdi), %rdx
	cmpq	%rdx, %rax
	jb	.L169
.L103:
	cmpq	%rbx, _ZL13stb__barrier4(%rip)
	ja	.L105
	leal	-1(%rsi), %r10d
	testl	%esi, %esi
	je	.L102
	leaq	16(%rcx), %rax
	cmpq	%rax, %rbx
	leaq	16(%rbx), %rax
	setnb	%dl
	cmpq	%rax, %rcx
	setnb	%al
	orb	%al, %dl
	je	.L106
	cmpl	$22, %esi
	jbe	.L106
	movq	%rbx, %rax
	negq	%rax
	andl	$15, %eax
	leal	15(%rax), %edx
	cmpl	%edx, %r10d
	jb	.L115
	testl	%eax, %eax
	je	.L116
	movzbl	(%rbx), %edx
	leaq	1(%rbx), %rbp
	cmpl	$1, %eax
	leaq	1(%rcx), %r9
	leal	-2(%rsi), %r8d
	movb	%dl, (%rcx)
	je	.L108
	movzbl	1(%rbx), %edx
	leaq	2(%rbx), %rbp
	cmpl	$2, %eax
	leaq	2(%rcx), %r9
	leal	-3(%rsi), %r8d
	movb	%dl, 1(%rcx)
	je	.L108
	movzbl	2(%rbx), %edx
	leaq	3(%rbx), %rbp
	cmpl	$3, %eax
	leaq	3(%rcx), %r9
	leal	-4(%rsi), %r8d
	movb	%dl, 2(%rcx)
	je	.L108
	movzbl	3(%rbx), %edx
	leaq	4(%rbx), %rbp
	cmpl	$4, %eax
	leaq	4(%rcx), %r9
	leal	-5(%rsi), %r8d
	movb	%dl, 3(%rcx)
	je	.L108
	movzbl	4(%rbx), %edx
	leaq	5(%rbx), %rbp
	cmpl	$5, %eax
	leaq	5(%rcx), %r9
	leal	-6(%rsi), %r8d
	movb	%dl, 4(%rcx)
	je	.L108
	movzbl	5(%rbx), %edx
	leaq	6(%rbx), %rbp
	cmpl	$6, %eax
	leaq	6(%rcx), %r9
	leal	-7(%rsi), %r8d
	movb	%dl, 5(%rcx)
	je	.L108
	movzbl	6(%rbx), %edx
	leaq	7(%rbx), %rbp
	cmpl	$7, %eax
	leaq	7(%rcx), %r9
	leal	-8(%rsi), %r8d
	movb	%dl, 6(%rcx)
	je	.L108
	movzbl	7(%rbx), %edx
	leaq	8(%rbx), %rbp
	cmpl	$8, %eax
	leaq	8(%rcx), %r9
	leal	-9(%rsi), %r8d
	movb	%dl, 7(%rcx)
	je	.L108
	movzbl	8(%rbx), %edx
	leaq	9(%rbx), %rbp
	cmpl	$9, %eax
	leaq	9(%rcx), %r9
	leal	-10(%rsi), %r8d
	movb	%dl, 8(%rcx)
	je	.L108
	movzbl	9(%rbx), %edx
	leaq	10(%rbx), %rbp
	cmpl	$10, %eax
	leaq	10(%rcx), %r9
	leal	-11(%rsi), %r8d
	movb	%dl, 9(%rcx)
	je	.L108
	movzbl	10(%rbx), %edx
	leaq	11(%rbx), %rbp
	cmpl	$11, %eax
	leaq	11(%rcx), %r9
	leal	-12(%rsi), %r8d
	movb	%dl, 10(%rcx)
	je	.L108
	movzbl	11(%rbx), %edx
	leaq	12(%rbx), %rbp
	cmpl	$12, %eax
	leaq	12(%rcx), %r9
	leal	-13(%rsi), %r8d
	movb	%dl, 11(%rcx)
	je	.L108
	movzbl	12(%rbx), %edx
	leaq	13(%rbx), %rbp
	cmpl	$13, %eax
	leaq	13(%rcx), %r9
	leal	-14(%rsi), %r8d
	movb	%dl, 12(%rcx)
	je	.L108
	movzbl	13(%rbx), %edx
	leaq	14(%rbx), %rbp
	cmpl	$15, %eax
	leaq	14(%rcx), %r9
	leal	-15(%rsi), %r8d
	movb	%dl, 13(%rcx)
	jne	.L108
	movzbl	14(%rbx), %edx
	leaq	15(%rbx), %rbp
	leaq	15(%rcx), %r9
	leal	-16(%rsi), %r8d
	movb	%dl, 14(%rcx)
	.p2align 4,,10
.L108:
	subl	%eax, %esi
	movl	%eax, %r11d
	xorl	%edx, %edx
	movl	%esi, %edi
	addq	%r11, %rbx
	xorl	%eax, %eax
	shrl	$4, %edi
	addq	%rcx, %r11
	.p2align 4,,10
.L110:
	movdqa	(%rbx,%rax), %xmm0
	addl	$1, %edx
	movups	%xmm0, (%r11,%rax)
	addq	$16, %rax
	cmpl	%edx, %edi
	ja	.L110
	movl	%esi, %eax
	movl	%r10d, %r11d
	andl	$-16, %eax
	movl	%eax, %edx
	subl	%eax, %r8d
	leaq	0(%rbp,%rdx), %rbx
	addq	%rdx, %r9
	cmpl	%eax, %esi
	je	.L114
.L107:
	leaq	1(%r8), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
.L112:
	movzbl	(%rbx,%rax), %r8d
	movb	%r8b, (%r9,%rax)
	addq	$1, %rax
	cmpq	%rdx, %rax
	jne	.L112
	movl	%r10d, %r11d
.L114:
	leaq	1(%rcx,%r11), %rax
	movq	%rax, _ZL9stb__dout(%rip)
	jmp	.L102
	.p2align 4,,10
.L105:
	addq	$1, %rax
	movq	%rax, _ZL9stb__dout(%rip)
.L102:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L169:
	leaq	.LC7(%rip), %rcx
	movl	$2217, %r8d
	leaq	.LC6(%rip), %rdx
	call	_assert
	movq	_ZL9stb__dout(%rip), %rcx
	movq	_ZL12stb__barrier(%rip), %rax
	addq	%rcx, %rdi
	cmpq	%rax, %rdi
	jbe	.L103
	movq	%rdi, _ZL9stb__dout(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L106:
	movl	%r10d, %r11d
	xorl	%eax, %eax
	leaq	1(%r11), %r8
	.p2align 4,,10
.L113:
	movzbl	(%rbx,%rax), %edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	cmpq	%r8, %rax
	jne	.L113
	jmp	.L114
	.p2align 4,,10
.L115:
	movq	%rcx, %r9
	movl	%r10d, %r8d
	jmp	.L107
.L116:
	movq	%rcx, %r9
	movq	%rbx, %rbp
	movl	%r10d, %r8d
	jmp	.L108
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii "0\0"
	.align 8
.LC9:
	.ascii "unicode_codepoint <= ttUSHORT(data + endCount + 2*item)\0"
	.text
	.p2align 4,,15
	.def	stbtt_FindGlyphIndex.isra.11;	.scl	3;	.type	32;	.endef
	.seh_proc	stbtt_FindGlyphIndex.isra.11
stbtt_FindGlyphIndex.isra.11:
.LFB1015:
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
	movl	%edx, %edi
	movq	%rcx, %rbx
	movslq	%r8d, %rsi
	leaq	(%rcx,%rdi), %rcx
	movzbl	(%rcx), %r10d
	movzbl	1(%rcx), %eax
	sall	$8, %r10d
	addw	%ax, %r10w
	jne	.L171
	leaq	2(%rbx,%rdi), %rdx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	subl	$6, %eax
	cmpl	%esi, %eax
	jg	.L172
.L194:
	xorl	%eax, %eax
.L170:
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
.L171:
	cmpw	$6, %r10w
	je	.L196
	cmpw	$2, %r10w
	je	.L197
	cmpw	$4, %r10w
	je	.L198
	leal	-12(%r10), %eax
	cmpw	$1, %ax
	ja	.L184
	leaq	12(%rbx,%rdi), %rcx
	xorl	%ebp, %ebp
	movzbl	(%rcx), %eax
	movzbl	1(%rcx), %r11d
	sall	$24, %eax
	sall	$16, %r11d
	leal	(%rax,%r11), %eax
	movzbl	2(%rcx), %r11d
	sall	$8, %r11d
	addl	%eax, %r11d
	movzbl	3(%rcx), %eax
	addl	%eax, %r11d
.L188:
	cmpl	%r11d, %ebp
	jl	.L185
	jmp	.L194
	.p2align 4,,10
.L186:
	cmpl	%ebp, %r9d
	movl	%r9d, %r11d
	jle	.L194
.L185:
	movl	%r11d, %r9d
	subl	%ebp, %r9d
	sarl	%r9d
	addl	%ebp, %r9d
	leal	(%r9,%r9,2), %r8d
	sall	$2, %r8d
	movslq	%r8d, %r8
	addq	%rdi, %r8
	leaq	16(%rbx,%r8), %r12
	movzbl	(%r12), %eax
	movzbl	1(%r12), %edx
	sall	$24, %eax
	sall	$16, %edx
	leal	(%rax,%rdx), %eax
	movzbl	2(%r12), %edx
	sall	$8, %edx
	addl	%eax, %edx
	movzbl	3(%r12), %eax
	addl	%eax, %edx
	cmpl	%esi, %edx
	ja	.L186
	leaq	20(%rbx,%r8), %r12
	movzbl	(%r12), %ecx
	movzbl	1(%r12), %eax
	sall	$24, %ecx
	sall	$16, %eax
	leal	(%rcx,%rax), %ecx
	movzbl	2(%r12), %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movzbl	3(%r12), %ecx
	addl	%ecx, %eax
	cmpl	%esi, %eax
	jnb	.L187
	leal	1(%r9), %ebp
	jmp	.L188
	.p2align 4,,10
.L172:
	movzbl	6(%rcx,%rsi), %eax
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
.L196:
	leaq	6(%rbx,%rdi), %rdx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	cmpl	%esi, %eax
	ja	.L194
	leaq	8(%rbx,%rdi), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rcx), %ecx
	sall	$8, %edx
	addl	%ecx, %edx
	movzwl	%dx, %edx
	addl	%eax, %edx
	cmpl	%edx, %esi
	jnb	.L194
	subl	%eax, %esi
	leal	(%rsi,%rsi), %eax
	leaq	10(%rdi,%rax), %rax
.L195:
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	movzbl	1(%rbx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	jmp	.L170
	.p2align 4,,10
.L198:
	cmpl	$65535, %esi
	jg	.L194
	leaq	12(%rbx,%rdi), %rcx
	movzbl	(%rcx), %eax
	leal	14(%rdx), %ebp
	movzbl	1(%rcx), %ecx
	movq	%rbp, %rdx
	sall	$8, %eax
	addl	%ecx, %eax
	andl	$65534, %eax
	leal	(%rax,%rbp), %r9d
	movslq	%eax, %r8
	leaq	10(%rbx,%rdi), %rax
	addq	%rbp, %r8
	addq	%rbx, %r8
	movzbl	(%rax), %r10d
	movzbl	(%r8), %ecx
	movzbl	1(%r8), %r8d
	movzbl	1(%rax), %eax
	sall	$8, %ecx
	addl	%r8d, %ecx
	movzwl	%cx, %ecx
	cmpl	%ecx, %esi
	cmovl	%ebp, %r9d
	sall	$8, %r10d
	subl	$2, %r9d
	addw	%ax, %r10w
	je	.L179
	leaq	8(%rbx,%rdi), %rax
	movzbl	(%rax), %r11d
	movzbl	1(%rax), %eax
	sall	$8, %r11d
	addl	%eax, %r11d
	sall	$16, %r11d
	shrl	$17, %r11d
	.p2align 4,,10
.L181:
	movzwl	%r11w, %eax
	movl	%r9d, %ecx
	sarl	%eax
	movl	%eax, %r11d
	addl	%eax, %eax
	movslq	%eax, %r8
	addl	%r9d, %eax
	addq	%rcx, %r8
	addq	%rbx, %r8
	movzbl	(%r8), %ecx
	movzbl	1(%r8), %r8d
	sall	$8, %ecx
	addl	%r8d, %ecx
	movzwl	%cx, %ecx
	cmpl	%ecx, %esi
	cmovg	%eax, %r9d
	subw	$1, %r10w
	jne	.L181
.L179:
	leaq	6(%rbx,%rdi), %rax
	subl	%edx, %r9d
	leal	2(%r9), %r13d
	movzbl	(%rax), %r12d
	andl	$131070, %r13d
	movzbl	1(%rax), %r14d
	addq	%r13, %rbp
	addq	%rbx, %rbp
	movzbl	0(%rbp), %edx
	movzbl	1(%rbp), %eax
	sall	$8, %edx
	addl	%eax, %edx
	movzwl	%dx, %edx
	cmpl	%edx, %esi
	jg	.L199
.L182:
	sall	$8, %r12d
	movzbl	%r14b, %eax
	addl	%r12d, %eax
	movzwl	%ax, %eax
	sarl	%eax
	leal	(%rax,%rax), %r8d
	movslq	%r8d, %r8
	leaq	16(%rdi,%r8), %r9
	leaq	0(%r13,%r9), %rcx
	addq	%rbx, %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rcx), %ecx
	sall	$8, %edx
	addl	%ecx, %edx
	movzwl	%dx, %edx
	cmpl	%edx, %esi
	jl	.L194
	cltq
	leaq	(%r9,%rax,4), %rcx
	leaq	0(%r13,%rcx), %r10
	leaq	(%rbx,%r10), %r9
	movzbl	(%r9), %eax
	movzbl	1(%r9), %r9d
	sall	$8, %eax
	addw	%r9w, %ax
	jne	.L183
	subq	%r8, %rcx
	addq	%rcx, %r13
	addq	%r13, %rbx
	movzbl	1(%rbx), %eax
	addl	%eax, %esi
	movzbl	(%rbx), %eax
	sall	$8, %eax
	addl	%esi, %eax
	movzwl	%ax, %eax
	jmp	.L170
	.p2align 4,,10
.L184:
	leaq	.LC2(%rip), %rdx
	movl	$1417, %r8d
	leaq	.LC8(%rip), %rcx
	call	_assert
	jmp	.L194
	.p2align 4,,10
.L197:
	leaq	.LC2(%rip), %rdx
	movl	$1346, %r8d
	leaq	.LC8(%rip), %rcx
	call	_assert
	xorl	%eax, %eax
	jmp	.L170
	.p2align 4,,10
.L199:
	leaq	.LC2(%rip), %rdx
	movl	$1382, %r8d
	leaq	.LC9(%rip), %rcx
	call	_assert
	jmp	.L182
	.p2align 4,,10
.L183:
	subl	%edx, %esi
	movzwl	%ax, %eax
	leal	(%rsi,%rsi), %edx
	addq	%r10, %rax
	movslq	%edx, %rdx
	addq	%rdx, %rax
	jmp	.L195
.L187:
	leaq	24(%rbx,%r8), %rcx
	subl	%edx, %esi
	movzbl	(%rcx), %eax
	movzbl	1(%rcx), %r8d
	sall	$24, %eax
	sall	$16, %r8d
	addl	%r8d, %eax
	movzbl	2(%rcx), %r8d
	movzbl	3(%rcx), %ecx
	sall	$8, %r8d
	addl	%r8d, %eax
	addl	%ecx, %eax
	cmpw	$12, %r10w
	leal	(%rax,%rsi), %edx
	cmove	%edx, %eax
	jmp	.L170
	.seh_endproc
	.section .rdata,"dr"
.LC10:
	.ascii "y0 < y1\0"
.LC11:
	.ascii "e->sy <= e->ey\0"
.LC12:
	.ascii "x1 <= x+1\0"
.LC13:
	.ascii "x1 >= x\0"
.LC14:
	.ascii "x1 <= x\0"
.LC15:
	.ascii "x1 >= x+1\0"
.LC16:
	.ascii "x1 >= x && x1 <= x+1\0"
	.align 8
.LC17:
	.ascii "x0 >= x && x0 <= x+1 && x1 >= x && x1 <= x+1\0"
	.text
	.p2align 4,,15
	.def	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15:
.LFB1019:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	addq	$-128, %rsp
	.seh_stackalloc	128
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	movaps	%xmm10, 96(%rsp)
	.seh_savexmm	%xmm10, 96
	movaps	%xmm11, 112(%rsp)
	.seh_savexmm	%xmm11, 112
	.seh_endprologue
	movss	192(%rsp), %xmm7
	movss	208(%rsp), %xmm6
	movss	200(%rsp), %xmm11
	ucomiss	%xmm7, %xmm6
	movq	%rcx, %rdi
	movslq	%edx, %rsi
	movq	%r8, %rbx
	movaps	%xmm3, %xmm8
	jbe	.L248
.L201:
	movss	28(%rbx), %xmm0
	ucomiss	24(%rbx), %xmm0
	jb	.L249
.L202:
	ucomiss	%xmm0, %xmm7
	ja	.L200
	movss	24(%rbx), %xmm1
	ucomiss	%xmm6, %xmm1
	ja	.L200
	ucomiss	%xmm7, %xmm1
	jbe	.L207
	movaps	%xmm11, %xmm2
	movaps	%xmm1, %xmm3
	subss	%xmm7, %xmm3
	subss	%xmm8, %xmm2
	mulss	%xmm3, %xmm2
	movaps	%xmm6, %xmm3
	subss	%xmm7, %xmm3
	movaps	%xmm1, %xmm7
	divss	%xmm3, %xmm2
	addss	%xmm2, %xmm8
.L207:
	ucomiss	%xmm0, %xmm6
	ja	.L250
.L209:
	pxor	%xmm10, %xmm10
	cvtsi2ss	%esi, %xmm10
	leal	1(%rsi), %eax
	pxor	%xmm9, %xmm9
	cvtsi2ss	%eax, %xmm9
	ucomiss	%xmm10, %xmm8
	jp	.L211
	jne	.L211
	ucomiss	%xmm11, %xmm9
	jb	.L251
.L213:
	ucomiss	%xmm11, %xmm10
	jnb	.L232
.L233:
	ucomiss	%xmm9, %xmm8
	jnb	.L226
.L234:
	ucomiss	%xmm10, %xmm8
	jb	.L227
	ucomiss	%xmm8, %xmm9
	jb	.L227
	ucomiss	%xmm10, %xmm11
	jnb	.L252
	.p2align 4,,10
.L227:
	leaq	.LC2(%rip), %rdx
	movl	$2572, %r8d
	leaq	.LC17(%rip), %rcx
	call	_assert
.L231:
	movss	.LC18(%rip), %xmm0
	subss	%xmm10, %xmm8
	leaq	(%rdi,%rsi,4), %rax
	subss	%xmm10, %xmm11
	subss	%xmm7, %xmm6
	mulss	20(%rbx), %xmm6
	addss	%xmm11, %xmm8
	mulss	.LC1(%rip), %xmm8
	subss	%xmm8, %xmm0
	mulss	%xmm6, %xmm0
	addss	(%rax), %xmm0
	movss	%xmm0, (%rax)
.L200:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	movaps	96(%rsp), %xmm10
	movaps	112(%rsp), %xmm11
	subq	$-128, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L249:
	leaq	.LC2(%rip), %rdx
	movl	$2544, %r8d
	leaq	.LC11(%rip), %rcx
	call	_assert
	movss	28(%rbx), %xmm0
	jmp	.L202
	.p2align 4,,10
.L248:
	leaq	.LC2(%rip), %rdx
	movl	$2543, %r8d
	leaq	.LC10(%rip), %rcx
	call	_assert
	jmp	.L201
	.p2align 4,,10
.L250:
	movaps	%xmm11, %xmm1
	movaps	%xmm0, %xmm2
	subss	%xmm6, %xmm2
	subss	%xmm8, %xmm1
	subss	%xmm7, %xmm6
	mulss	%xmm2, %xmm1
	divss	%xmm6, %xmm1
	movaps	%xmm0, %xmm6
	addss	%xmm1, %xmm11
	jmp	.L209
	.p2align 4,,10
.L211:
	ucomiss	%xmm9, %xmm8
	jp	.L214
	jne	.L214
	ucomiss	%xmm10, %xmm11
	jb	.L253
.L216:
	ucomiss	%xmm8, %xmm10
	jnb	.L213
.L226:
	ucomiss	%xmm9, %xmm11
	jb	.L234
	jmp	.L200
	.p2align 4,,10
.L214:
	ucomiss	%xmm8, %xmm10
	jnb	.L254
	ucomiss	%xmm9, %xmm8
	jb	.L247
	ucomiss	%xmm9, %xmm11
	jnb	.L200
	leaq	.LC2(%rip), %rdx
	movl	$2563, %r8d
	leaq	.LC15(%rip), %rcx
	call	_assert
	jmp	.L216
	.p2align 4,,10
.L232:
	leaq	(%rdi,%rsi,4), %rax
	subss	%xmm7, %xmm6
	mulss	20(%rbx), %xmm6
	addss	(%rax), %xmm6
	movss	%xmm6, (%rax)
	jmp	.L200
	.p2align 4,,10
.L254:
	ucomiss	%xmm11, %xmm10
	jnb	.L232
	leaq	.LC2(%rip), %rdx
	movl	$2561, %r8d
	leaq	.LC14(%rip), %rcx
	call	_assert
	jmp	.L213
	.p2align 4,,10
.L252:
	ucomiss	%xmm11, %xmm9
	jnb	.L231
	jmp	.L227
	.p2align 4,,10
.L253:
	leaq	.LC2(%rip), %rdx
	movl	$2559, %r8d
	leaq	.LC13(%rip), %rcx
	call	_assert
	jmp	.L216
	.p2align 4,,10
.L251:
	leaq	.LC2(%rip), %rdx
	movl	$2557, %r8d
	leaq	.LC12(%rip), %rcx
	call	_assert
	jmp	.L213
	.p2align 4,,10
.L247:
	ucomiss	%xmm10, %xmm11
	jb	.L223
	ucomiss	%xmm11, %xmm9
	jnb	.L233
.L223:
	leaq	.LC2(%rip), %rdx
	movl	$2565, %r8d
	leaq	.LC16(%rip), %rcx
	call	_assert
	jmp	.L233
	.seh_endproc
	.align 2
	.p2align 4,,15
	.def	_ZN11ImFontAtlas19RenderCustomTexDataEiPv.constprop.67;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas19RenderCustomTexDataEiPv.constprop.67
_ZN11ImFontAtlas19RenderCustomTexDataEiPv.constprop.67:
.LFB1082:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movslq	(%rdx), %rax
	cmpl	4(%rdx), %eax
	movq	$0, 32(%rsp)
	movq	%rdx, %rbx
	movq	$0, 40(%rsp)
	movl	$1835189, 36(%rsp)
	je	.L256
	movq	8(%rdx), %rsi
.L257:
	leal	1(%rax), %edx
	movq	32(%rsp), %rcx
	salq	$4, %rax
	movl	%edx, (%rbx)
	movq	40(%rsp), %rbx
	movq	%rcx, (%rsi,%rax)
	movq	%rbx, 8(%rsi,%rax)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L256:
	leal	1(%rax), %ecx
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L265
.L258:
	cmpl	%edx, %ecx
	movl	%edx, %edi
	cmovge	%ecx, %edi
	movslq	%edi, %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L259
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rbx), %rcx
.L259:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 8(%rbx)
	movslq	(%rbx), %rax
	movl	%edi, 4(%rbx)
	jmp	.L257
	.p2align 4,,10
.L265:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L258
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.78;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.78
_ZL14stbtt__buf_getP10stbtt__bufi.constprop.78:
.LFB1071:
	.seh_endprologue
	xorl	%eax, %eax
	movl	8(%rcx), %edx
	movl	12(%rcx), %r9d
	cmpl	%r9d, %edx
	jge	.L266
	movq	(%rcx), %r10
	leal	1(%rdx), %r8d
	movslq	%edx, %rax
	movl	%r8d, 8(%rcx)
	movzbl	(%r10,%rax), %eax
	sall	$8, %eax
	cmpl	%r8d, %r9d
	jle	.L266
	addl	$2, %edx
	movslq	%r8d, %r8
	movl	%edx, 8(%rcx)
	movzbl	(%r10,%r8), %edx
	orl	%edx, %eax
.L266:
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "C:/libraries/include/imgui/stb_rect_pack.h\0"
.LC20:
	.ascii "width % c->align == 0\0"
.LC21:
	.ascii "node->next->x > x0\0"
.LC22:
	.ascii "node->x <= x0\0"
.LC23:
	.ascii "xpos >= 0\0"
	.align 8
.LC24:
	.ascii "node->next->x > xpos && node->x <= xpos\0"
.LC25:
	.ascii "first->x <= x0\0"
	.text
	.p2align 4,,15
	.def	stbrp_pack_rects;	.scl	3;	.type	32;	.endef
	.seh_proc	stbrp_pack_rects
stbrp_pack_rects:
.LFB567:
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
	movslq	%r8d, %rax
	movq	%rcx, %rsi
	movq	%rdx, 80(%rsp)
	testl	%eax, %eax
	movq	%rax, %rbx
	movq	%rax, 72(%rsp)
	jle	.L270
	addq	$12, %rdx
	xorl	%eax, %eax
	.p2align 4,,10
.L272:
	movl	%eax, (%rdx)
	addl	$1, %eax
	addq	$16, %rdx
	cmpl	%eax, %ebx
	jne	.L272
	movq	80(%rsp), %rdi
	leaq	_ZL19rect_height_comparePKvS0_(%rip), %r9
	movl	$16, %r8d
	movq	72(%rsp), %rdx
	leaq	4(%rdi), %r14
	movq	%rdi, %rcx
	call	qsort
	leal	-1(%rbx), %eax
	movq	%rdi, 112(%rsp)
	salq	$4, %rax
	movq	%rax, %rbx
	movq	%rax, 104(%rsp)
	leaq	20(%rdi,%rbx), %rax
	movq	%rax, 40(%rsp)
	leaq	24(%rsi), %rax
	movq	%rax, 96(%rsp)
	jmp	.L323
	.p2align 4,,10
.L273:
	xorl	%eax, %eax
	xorl	%edx, %edx
	addq	$16, %r14
	movw	%ax, -10(%r14)
	movw	%dx, -12(%r14)
	cmpq	40(%rsp), %r14
	je	.L376
.L323:
	movzwl	(%r14), %eax
	testw	%ax, %ax
	movw	%ax, 58(%rsp)
	je	.L273
	movzwl	2(%r14), %eax
	testw	%ax, %ax
	movw	%ax, 66(%rsp)
	je	.L273
	movzwl	66(%rsp), %eax
	movl	8(%rsi), %ecx
	movl	%eax, 60(%rsp)
	movzwl	58(%rsp), %eax
	leal	-1(%rax,%rcx), %ebx
	movl	%eax, 132(%rsp)
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	subl	%edx, %ebx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.L377
.L276:
	movq	24(%rsi), %rbp
	movq	96(%rsp), %r13
	movzwl	0(%rbp), %ecx
	movq	%r13, 120(%rsp)
	leal	(%rbx,%rcx), %edi
	cmpl	(%rsi), %edi
	movl	%ecx, %r12d
	jg	.L277
	movl	$1073741824, %eax
	movq	%r14, 88(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, %r14d
	movl	$1073741824, 68(%rsp)
	.p2align 4,,10
.L289:
	movq	8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpl	%ecx, %eax
	jle	.L378
.L278:
	cmpl	%r12d, %ecx
	jg	.L379
	cmpl	%ecx, %edi
	jle	.L327
.L382:
	movq	%rbp, %rax
	xorl	%r15d, %r15d
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	jmp	.L285
	.p2align 4,,10
.L380:
	movl	%edx, %r9d
	subl	%r10d, %r9d
	imull	%r11d, %r9d
	addl	%r9d, %r15d
	cmpl	%ecx, %r12d
	jle	.L282
	movl	%r8d, %ecx
	movl	%edx, %r10d
	subl	%r12d, %ecx
	addl	%ecx, %r11d
.L283:
	cmpl	%r8d, %edi
	movl	%r8d, %ecx
	jle	.L280
.L285:
	movzwl	2(%rax), %edx
	movq	8(%rax), %rax
	cmpl	%r10d, %edx
	movzwl	(%rax), %r8d
	jg	.L380
	movl	%r8d, %r9d
	subl	%ecx, %r9d
	movl	%r9d, %ecx
	leal	(%r9,%r11), %r9d
	cmpl	%r9d, %ebx
	jge	.L328
	movl	%ebx, %ecx
	subl	%r11d, %ecx
	movl	%ebx, %r11d
.L284:
	movl	%r10d, %r9d
	subl	%edx, %r9d
	movl	%r9d, %edx
	imull	%ecx, %edx
	movl	%r8d, %ecx
	addl	%edx, %r15d
	cmpl	%r8d, %edi
	jg	.L285
.L280:
	movl	16(%rsi), %eax
	testl	%eax, %eax
	jne	.L286
	cmpl	%r10d, %r14d
	jle	.L287
	movq	%r13, 48(%rsp)
	movl	%r10d, %r14d
.L287:
	leaq	8(%rbp), %r13
	movq	8(%rbp), %rbp
	movzwl	0(%rbp), %ecx
	leal	(%rbx,%rcx), %edi
	cmpl	(%rsi), %edi
	movl	%ecx, %r12d
	jle	.L289
	movq	48(%rsp), %rdi
	movl	%r14d, 128(%rsp)
	movq	88(%rsp), %r14
	testq	%rdi, %rdi
	je	.L290
	movq	(%rdi), %rdx
	cmpl	$1, %eax
	movzwl	(%rdx), %edi
	movl	%edi, 88(%rsp)
	je	.L291
	movl	4(%rsi), %eax
.L292:
	movl	128(%rsp), %edi
	movl	60(%rsp), %edx
	movl	%edi, %ebx
	addl	%edi, %edx
	cmpl	%eax, %edx
	jg	.L313
	movq	32(%rsi), %r11
	testq	%r11, %r11
	je	.L313
	movzwl	66(%rsp), %eax
	movl	88(%rsp), %ecx
	addl	%edi, %eax
	movw	%ax, 2(%r11)
	movq	8(%r11), %rax
	movl	%ecx, %r10d
	movw	%cx, (%r11)
	movq	%rax, 32(%rsi)
	movq	48(%rsp), %rax
	movq	(%rax), %rax
	movzwl	(%rax), %edx
	cmpl	%ecx, %edx
	jl	.L381
	movq	48(%rsp), %rdi
	movq	%rax, %rcx
	movq	%r11, (%rdi)
.L315:
	movq	8(%rcx), %rdx
	movl	132(%rsp), %r8d
	addl	88(%rsp), %r8d
	testq	%rdx, %rdx
	je	.L374
	movzwl	(%rdx), %eax
	cmpl	%r8d, %eax
	movl	%eax, %r12d
	jg	.L374
	movq	32(%rsi), %rdi
	jmp	.L319
	.p2align 4,,10
.L320:
	movzwl	(%rax), %ebp
	movq	%rcx, %rdi
	cmpl	%r8d, %ebp
	jg	.L375
	movq	%rdx, %rcx
	movzwl	%bp, %r12d
	movq	%rax, %rdx
.L319:
	movq	%rdi, 8(%rcx)
	movq	8(%rdx), %rax
	testq	%rax, %rax
	jne	.L320
.L375:
	movq	%rcx, 32(%rsi)
.L317:
	cmpl	%r8d, %r12d
	movq	%rdx, 8(%r11)
	jge	.L312
	movzwl	58(%rsp), %eax
	addl	%r10d, %eax
	movw	%ax, (%rdx)
	jmp	.L312
	.p2align 4,,10
.L282:
	movl	%r8d, %r10d
	subl	%ecx, %r10d
	addl	%r10d, %r11d
	movl	%edx, %r10d
	jmp	.L283
	.p2align 4,,10
.L328:
	movl	%r9d, %r11d
	jmp	.L284
	.p2align 4,,10
.L310:
	cmpq	$0, 48(%rsp)
	movq	136(%rsp), %r14
	jne	.L292
.L313:
	movl	$-1, %ebx
	movl	%ebx, %r10d
.L312:
	movw	%bx, 6(%r14)
	addq	$16, %r14
	movw	%r10w, -12(%r14)
	cmpq	40(%rsp), %r14
	jne	.L323
	.p2align 4,,10
.L376:
	movq	80(%rsp), %rsi
	leaq	_ZL19rect_original_orderPKvS0_(%rip), %r9
	movl	$16, %r8d
	movq	72(%rsp), %rdx
	movq	112(%rsp), %rdi
	movq	%rsi, %rcx
	call	qsort
	movq	%rsi, %rax
	movq	104(%rsp), %rsi
	leaq	16(%rax,%rsi), %rdx
	.p2align 4,,10
.L324:
	xorl	%eax, %eax
	cmpl	$-1, 8(%rdi)
	setne	%al
	addq	$16, %rdi
	movl	%eax, -4(%rdi)
	cmpq	%rdx, %rdi
	jne	.L324
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
	.p2align 4,,10
.L286:
	movl	60(%rsp), %edi
	leal	(%rdi,%r10), %edx
	cmpl	4(%rsi), %edx
	jg	.L287
	cmpl	%r10d, %r14d
	jg	.L330
	jne	.L287
	movl	68(%rsp), %edi
	cmpl	%edi, %r15d
	cmovge	%edi, %r15d
	cmovge	48(%rsp), %r13
	movl	%r15d, 68(%rsp)
	movq	%r13, 48(%rsp)
	jmp	.L287
	.p2align 4,,10
.L379:
	leaq	.LC22(%rip), %rcx
	movl	$297, %r8d
	leaq	.LC19(%rip), %rdx
	call	_assert
	movzwl	0(%rbp), %ecx
	cmpl	%ecx, %edi
	jg	.L382
.L327:
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	jmp	.L280
	.p2align 4,,10
.L378:
	leaq	.LC21(%rip), %rcx
	movl	$294, %r8d
	leaq	.LC19(%rip), %rdx
	call	_assert
	movzwl	0(%rbp), %ecx
	jmp	.L278
	.p2align 4,,10
.L330:
	movq	%r13, 48(%rsp)
	movl	%r10d, %r14d
	movl	%r15d, 68(%rsp)
	jmp	.L287
.L277:
	movl	16(%rsi), %eax
	movl	$1073741824, 68(%rsp)
	movl	$1073741824, 128(%rsp)
.L290:
	cmpl	$1, %eax
	jne	.L313
	movq	$0, 48(%rsp)
	movl	$0, 88(%rsp)
.L291:
	movq	24(%rsi), %r12
	movzwl	(%r12), %ebp
	movq	%r12, %r13
	cmpl	%ebp, %ebx
	jle	.L332
	.p2align 4,,10
.L294:
	movq	8(%r13), %r13
	movzwl	0(%r13), %ebp
	cmpl	%ebp, %ebx
	jg	.L294
.L332:
	movl	%ebp, %edi
	movq	%r14, 136(%rsp)
	movq	120(%rsp), %r14
	subl	%ebx, %edi
	js	.L383
	.p2align 4,,10
.L295:
	movq	8(%r12), %rax
	movzwl	(%rax), %edx
	cmpl	%edx, %edi
	movl	%edx, %r8d
	jge	.L297
	jmp	.L296
	.p2align 4,,10
.L333:
	movq	%rax, %r12
	movzwl	%dx, %r8d
	movq	%rcx, %rax
.L297:
	movq	8(%rax), %rcx
	movzwl	(%rcx), %r9d
	cmpl	%r9d, %edi
	movl	%r9d, %edx
	jge	.L333
	leaq	8(%r12), %r14
	cmpl	%edi, %r8d
	movq	%rax, %r12
	jg	.L384
.L300:
	movzwl	(%r12), %edx
	cmpl	%edx, %edi
	jl	.L385
.L301:
	cmpl	%edx, %ebp
	jle	.L334
.L389:
	movq	%r12, %rax
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	jmp	.L307
	.p2align 4,,10
.L387:
	movl	%ecx, %r15d
	subl	%r8d, %r15d
	movl	%r15d, %r8d
	imull	%r10d, %r8d
	addl	%r8d, %r11d
	cmpl	%edx, %edi
	jle	.L304
	movl	%r9d, %edx
	movl	%ecx, %r8d
	subl	%edi, %edx
	addl	%edx, %r10d
.L305:
	cmpl	%r9d, %ebp
	movl	%r9d, %edx
	jle	.L386
.L307:
	movzwl	2(%rax), %ecx
	movq	8(%rax), %rax
	cmpl	%r8d, %ecx
	movzwl	(%rax), %r9d
	jg	.L387
	movl	%r9d, %r15d
	subl	%edx, %r15d
	movl	%r15d, %edx
	leal	(%r15,%r10), %r15d
	cmpl	%r15d, %ebx
	jge	.L306
	movl	%ebx, %edx
	movl	%ebx, %r15d
	subl	%r10d, %edx
.L306:
	movl	%r8d, %r10d
	subl	%ecx, %r10d
	imull	%r10d, %edx
	movl	%r15d, %r10d
	addl	%edx, %r11d
	cmpl	%r9d, %ebp
	movl	%r9d, %edx
	jg	.L307
.L386:
	movl	60(%rsp), %eax
	leal	(%rax,%r8), %edx
.L302:
	movl	4(%rsi), %eax
	cmpl	%edx, %eax
	jle	.L308
	movl	128(%rsp), %ecx
	cmpl	%ecx, %r8d
	jle	.L388
.L308:
	movq	8(%r13), %r13
	testq	%r13, %r13
	je	.L310
	movzwl	0(%r13), %ebp
	movl	%ebp, %edi
	subl	%ebx, %edi
	jns	.L295
.L383:
	leaq	.LC19(%rip), %rdx
	movl	$401, %r8d
	leaq	.LC23(%rip), %rcx
	call	_assert
.L296:
	movzwl	(%r12), %r8d
	cmpl	%edi, %r8d
	jle	.L300
	.p2align 4,,10
.L384:
	leaq	.LC19(%rip), %rdx
	movl	$407, %r8d
	leaq	.LC24(%rip), %rcx
	call	_assert
	movzwl	(%r12), %edx
	cmpl	%edx, %edi
	jge	.L299
	leaq	.LC19(%rip), %rdx
	movl	$287, %r8d
	leaq	.LC25(%rip), %rcx
	call	_assert
	movq	8(%r12), %rax
	movzwl	(%rax), %eax
	cmpl	%eax, %edi
	jl	.L300
.L325:
	leaq	.LC19(%rip), %rdx
	movl	$294, %r8d
	leaq	.LC21(%rip), %rcx
	call	_assert
	movzwl	(%r12), %edx
	cmpl	%edx, %edi
	jge	.L301
.L385:
	leaq	.LC19(%rip), %rdx
	movl	$297, %r8d
	leaq	.LC22(%rip), %rcx
	call	_assert
	movzwl	(%r12), %edx
	cmpl	%edx, %ebp
	jg	.L389
.L334:
	movl	60(%rsp), %edx
	xorl	%r11d, %r11d
	xorl	%r8d, %r8d
	jmp	.L302
	.p2align 4,,10
.L304:
	movl	%r9d, %r15d
	movl	%ecx, %r8d
	subl	%edx, %r15d
	addl	%r15d, %r10d
	jmp	.L305
	.p2align 4,,10
.L388:
	jl	.L335
	movl	68(%rsp), %edx
	cmpl	%edx, %r11d
	jge	.L390
.L335:
	movq	%r14, 48(%rsp)
	movl	%r8d, 128(%rsp)
	movl	%edi, 88(%rsp)
	movl	%r11d, 68(%rsp)
	jmp	.L308
	.p2align 4,,10
.L377:
	leaq	.LC19(%rip), %rdx
	movl	$344, %r8d
	leaq	.LC20(%rip), %rcx
	call	_assert
	jmp	.L276
.L381:
	movq	8(%rax), %rcx
	movq	%r11, 8(%rax)
	jmp	.L315
.L390:
	movl	88(%rsp), %r15d
	cmpl	%r15d, %edi
	jge	.L308
	cmpl	%edx, %r11d
	movq	48(%rsp), %r11
	sete	%dl
	cmove	%r14, %r11
	testb	%dl, %dl
	cmove	%ecx, %r8d
	cmove	%r15d, %edi
	movq	%r11, 48(%rsp)
	movl	%r8d, 128(%rsp)
	movl	%edi, 88(%rsp)
	jmp	.L308
.L270:
	leaq	_ZL19rect_height_comparePKvS0_(%rip), %r9
	movq	%rdx, %rsi
	movl	$16, %r8d
	movq	%rax, %rdx
	movq	%rsi, %rcx
	call	qsort
	leaq	_ZL19rect_original_orderPKvS0_(%rip), %r9
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	movl	$16, %r8d
	addq	$152, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	qsort
.L374:
	movzwl	(%rcx), %r12d
	movq	%rcx, %rdx
	jmp	.L317
.L299:
	movq	8(%r12), %rax
	movzwl	(%rax), %eax
	cmpl	%eax, %edi
	jl	.L301
	jmp	.L325
	.seh_endproc
	.p2align 4,,15
	.def	_ZL15stbtt__dict_getP10stbtt__bufi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbtt__dict_getP10stbtt__bufi
_ZL15stbtt__dict_getP10stbtt__bufi:
.LFB578:
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
	movslq	12(%rdx), %r9
	testl	%r9d, %r9d
	movq	%rcx, %rdi
	movq	%rdx, %r14
	movl	%r8d, %r12d
	js	.L442
.L392:
	leaq	.LC2(%rip), %rbx
	testl	%r9d, %r9d
	movl	$0, %r13d
	cmovle	%r9, %r13
	leaq	.LC8(%rip), %rbp
	cmpl	%r13d, %r9d
	movl	%r13d, 8(%r14)
	leaq	.LC3(%rip), %rsi
	jle	.L393
	.p2align 4,,10
.L444:
	movl	%r13d, %eax
	jmp	.L394
	.p2align 4,,10
.L397:
	movl	%r15d, 8(%r14)
	movzbl	(%rdx), %edx
	leal	-32(%rdx), %ecx
	cmpl	$214, %ecx
	ja	.L404
.L413:
	movl	%r15d, %eax
.L402:
	cmpl	%r9d, %eax
	jge	.L427
.L394:
	movq	(%r14), %r8
	leal	1(%rax), %r15d
	movslq	%eax, %rdx
	addq	%r8, %rdx
	movzbl	(%rdx), %ecx
	cmpb	$27, %cl
	jbe	.L396
	cmpb	$30, %cl
	jne	.L397
	testl	%r15d, %r15d
	js	.L430
	cmpl	%r15d, %r9d
	jl	.L430
.L398:
	testl	%r15d, %r15d
	js	.L431
	cmpl	%r15d, %r9d
	movl	%r15d, %eax
	jge	.L400
.L431:
	movl	%r9d, %eax
.L400:
	movl	%eax, 8(%r14)
	movslq	%eax, %r8
	jmp	.L403
	.p2align 4,,10
.L443:
	movq	(%r14), %rdx
	addl	$1, %eax
	movl	%eax, 8(%r14)
	movzbl	(%rdx,%r8), %ecx
	movl	%ecx, %edx
	andl	$15, %edx
	cmpb	$15, %dl
	je	.L402
	sarl	$4, %ecx
	addq	$1, %r8
	cmpl	$15, %ecx
	je	.L402
.L403:
	cmpl	%r9d, %eax
	jl	.L443
.L427:
	movslq	8(%r14), %r13
	cmpl	%r13d, %r9d
	jg	.L444
.L393:
	testl	%r9d, %r9d
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	js	.L391
	movq	(%r14), %rax
	movq	%rax, (%rdi)
.L391:
	movq	%rdi, %rax
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
.L430:
	movl	$1000, %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_assert
	movl	12(%r14), %r9d
	jmp	.L398
	.p2align 4,,10
.L396:
	movl	%r15d, 8(%r14)
	movzbl	(%rdx), %edx
	cmpl	$12, %edx
	jne	.L426
	cmpl	%r15d, %r9d
	movl	$256, %edx
	jle	.L426
	leal	2(%rax), %edx
	movslq	%r15d, %r15
	movl	%edx, 8(%r14)
	movzbl	(%r8,%r15), %edx
	orb	$1, %dh
.L426:
	cmpl	%r12d, %edx
	jne	.L427
	testl	%r13d, %r13d
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	js	.L391
	cmpl	%r13d, %r9d
	jl	.L391
	subl	%r13d, %eax
	subl	%r13d, %r9d
	cmpl	%eax, %r9d
	jb	.L391
	addq	%r13, %r8
	movl	%eax, 12(%rdi)
	movq	%r8, (%rdi)
	jmp	.L391
	.p2align 4,,10
.L404:
	leal	-247(%rdx), %ecx
	cmpl	$3, %ecx
	jbe	.L441
	leal	-251(%rdx), %ecx
	cmpl	$3, %ecx
	ja	.L407
.L441:
	cmpl	%r15d, %r9d
	jle	.L413
	addl	$2, %eax
	movl	%eax, 8(%r14)
	jmp	.L402
.L407:
	cmpl	$28, %edx
	je	.L445
	cmpl	$29, %edx
	je	.L446
	movl	$1063, %r8d
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	call	_assert
	movl	8(%r14), %eax
	movl	12(%r14), %r9d
	jmp	.L402
.L445:
	cmpl	%r15d, %r9d
	jle	.L413
	leal	2(%rax), %edx
	cmpl	%edx, %r9d
	movl	%edx, 8(%r14)
	jle	.L415
	addl	$3, %eax
	movl	%eax, 8(%r14)
	jmp	.L402
.L446:
	cmpl	%r15d, %r9d
	jle	.L413
	leal	2(%rax), %edx
	cmpl	%edx, %r9d
	jle	.L447
	leal	3(%rax), %r15d
	cmpl	%r15d, %r9d
	movl	%r15d, 8(%r14)
	jle	.L413
	leal	4(%rax), %edx
	cmpl	%edx, %r9d
	movl	%edx, 8(%r14)
	jle	.L415
	addl	$5, %eax
	movl	%eax, 8(%r14)
	jmp	.L402
.L442:
	leaq	.LC2(%rip), %rdx
	movl	$1000, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movslq	12(%r14), %r9
	jmp	.L392
.L447:
	movl	%edx, 8(%r14)
.L415:
	movl	%edx, %eax
	jmp	.L402
	.seh_endproc
	.p2align 4,,15
	.def	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff
_ZL21stbtt__csctx_rline_toP12stbtt__csctxff:
.LFB605:
	.seh_endprologue
	movl	(%rcx), %r10d
	addss	16(%rcx), %xmm1
	addss	20(%rcx), %xmm2
	movl	48(%rcx), %r8d
	testl	%r10d, %r10d
	movss	%xmm1, 16(%rcx)
	cvttss2si	%xmm1, %eax
	movss	%xmm2, 20(%rcx)
	cvttss2si	%xmm2, %edx
	jne	.L463
	movslq	%r8d, %r10
	addl	$1, %r8d
	leaq	0(,%r10,8), %r9
	subq	%r10, %r9
	movq	40(%rcx), %r10
	leaq	(%r10,%r9,2), %r9
	movw	%ax, (%r9)
	movw	%dx, 2(%r9)
	movq	$0, 4(%r9)
	movb	$2, 12(%r9)
	movl	%r8d, 48(%rcx)
	ret
	.p2align 4,,10
.L463:
	cmpl	28(%rcx), %eax
	jle	.L464
.L450:
	movl	%eax, 28(%rcx)
.L451:
	cmpl	36(%rcx), %edx
	jg	.L452
	movl	4(%rcx), %r11d
	testl	%r11d, %r11d
	je	.L452
	cmpl	24(%rcx), %eax
	movl	32(%rcx), %r9d
	jge	.L456
.L454:
	cmpl	%r9d, %edx
	movl	%eax, 24(%rcx)
	jl	.L459
	movl	4(%rcx), %eax
	testl	%eax, %eax
	je	.L459
	jmp	.L458
	.p2align 4,,10
.L452:
	cmpl	24(%rcx), %eax
	movl	%edx, 36(%rcx)
	movl	32(%rcx), %r9d
	jl	.L454
	movl	4(%rcx), %r10d
	testl	%r10d, %r10d
	jne	.L456
	movl	%eax, 24(%rcx)
.L459:
	movl	%edx, 32(%rcx)
.L458:
	addl	$1, %r8d
	movl	$1, 4(%rcx)
	movl	%r8d, 48(%rcx)
	ret
	.p2align 4,,10
.L464:
	movl	4(%rcx), %r9d
	testl	%r9d, %r9d
	jne	.L451
	jmp	.L450
	.p2align 4,,10
.L456:
	cmpl	%r9d, %edx
	jl	.L459
	jmp	.L458
	.seh_endproc
	.p2align 4,,15
	.def	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff:
.LFB606:
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
	addss	16(%rcx), %xmm1
	addss	20(%rcx), %xmm2
	movss	80(%rsp), %xmm5
	movss	88(%rsp), %xmm0
	cvttss2si	%xmm1, %edx
	addss	%xmm1, %xmm3
	movss	96(%rsp), %xmm4
	addss	%xmm2, %xmm5
	movl	(%rcx), %r9d
	cvttss2si	%xmm2, %eax
	movl	48(%rcx), %r11d
	addss	%xmm3, %xmm0
	addss	%xmm5, %xmm4
	testl	%r9d, %r9d
	cvttss2si	%xmm5, %esi
	movss	%xmm0, 16(%rcx)
	cvttss2si	%xmm3, %ebx
	movss	%xmm4, 20(%rcx)
	cvttss2si	%xmm4, %r10d
	cvttss2si	%xmm0, %r8d
	jne	.L487
	movslq	%r11d, %rdi
	leaq	0(,%rdi,8), %r9
	subq	%rdi, %r9
	movq	40(%rcx), %rdi
	leaq	(%rdi,%r9,2), %r9
	movb	$4, 12(%r9)
	movw	%r8w, (%r9)
	movw	%r10w, 2(%r9)
	movw	%dx, 4(%r9)
	movw	%ax, 6(%r9)
	movw	%bx, 8(%r9)
	movw	%si, 10(%r9)
.L483:
	addl	$1, %r11d
	movl	%r11d, 48(%rcx)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L487:
	movl	28(%rcx), %r9d
	cmpl	%r9d, %r8d
	jle	.L488
.L467:
	movl	%r8d, 28(%rcx)
	movl	%r8d, %r9d
.L468:
	movl	36(%rcx), %edi
	cmpl	%edi, %r10d
	jg	.L469
	movl	4(%rcx), %ebp
	testl	%ebp, %ebp
	je	.L469
	movl	24(%rcx), %r12d
	movl	32(%rcx), %ebp
	cmpl	%r12d, %r8d
	jl	.L471
	movl	%r12d, %r8d
.L473:
	cmpl	%ebp, %r10d
	jl	.L474
.L485:
	movl	%ebp, %r10d
	jmp	.L475
	.p2align 4,,10
.L469:
	movl	24(%rcx), %r12d
	movl	%r10d, 36(%rcx)
	movl	32(%rcx), %ebp
	cmpl	%r12d, %r8d
	jl	.L484
	movl	4(%rcx), %edi
	testl	%edi, %edi
	jne	.L489
	movl	%r8d, 24(%rcx)
	movl	%r10d, %edi
.L474:
	movl	%r10d, 32(%rcx)
.L475:
	cmpl	%r9d, %edx
	movl	$1, 4(%rcx)
	jle	.L476
	movl	%edx, 28(%rcx)
	movl	%edx, %r9d
.L476:
	cmpl	%edi, %eax
	jle	.L477
	movl	%eax, 36(%rcx)
	movl	%eax, %edi
.L477:
	cmpl	%r8d, %edx
	jge	.L478
	movl	%edx, 24(%rcx)
	movl	%edx, %r8d
.L478:
	cmpl	%r10d, %eax
	jge	.L479
	movl	%eax, 32(%rcx)
	movl	%eax, %r10d
.L479:
	cmpl	%r9d, %ebx
	jle	.L480
	movl	%ebx, 28(%rcx)
.L480:
	cmpl	%edi, %esi
	jle	.L481
	movl	%esi, 36(%rcx)
.L481:
	cmpl	%r8d, %ebx
	jge	.L482
	movl	%ebx, 24(%rcx)
.L482:
	cmpl	%r10d, %esi
	jge	.L483
	addl	$1, %r11d
	movl	%esi, 32(%rcx)
	movl	%r11d, 48(%rcx)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L488:
	movl	4(%rcx), %r12d
	testl	%r12d, %r12d
	jne	.L468
	jmp	.L467
	.p2align 4,,10
.L484:
	movl	%r10d, %edi
.L471:
	cmpl	%ebp, %r10d
	movl	%r8d, 24(%rcx)
	jl	.L474
	movl	4(%rcx), %r12d
	testl	%r12d, %r12d
	je	.L474
	jmp	.L485
	.p2align 4,,10
.L489:
	movl	%r10d, %edi
	movl	%r12d, %r8d
	jmp	.L473
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14stbtt__cff_intP10stbtt__buf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbtt__cff_intP10stbtt__buf
_ZL14stbtt__cff_intP10stbtt__buf:
.LFB576:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	8(%rcx), %r8d
	movl	12(%rcx), %r9d
	cmpl	%r9d, %r8d
	jl	.L503
.L491:
	leaq	.LC2(%rip), %rdx
	movl	$1063, %r8d
	leaq	.LC8(%rip), %rcx
	call	_assert
	xorl	%eax, %eax
.L490:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L503:
	movq	(%rcx), %r11
	leal	1(%r8), %r10d
	movslq	%r8d, %rax
	movl	%r10d, 8(%rcx)
	movzbl	(%r11,%rax), %edx
	leal	-32(%rdx), %eax
	cmpl	$214, %eax
	ja	.L492
	leal	-139(%rdx), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L492:
	leal	-247(%rdx), %eax
	cmpl	$3, %eax
	jbe	.L504
	leal	-251(%rdx), %eax
	cmpl	$3, %eax
	jbe	.L505
	cmpl	$28, %edx
	je	.L506
	cmpl	$29, %edx
	jne	.L491
	cmpl	%r10d, %r9d
	jle	.L502
	leal	2(%r8), %ebx
	movslq	%r10d, %r10
	movl	%ebx, 8(%rcx)
	movzbl	(%r11,%r10), %edx
	movl	%edx, %esi
	sall	$8, %esi
	cmpl	%ebx, %r9d
	jle	.L500
	leal	3(%r8), %r10d
	movslq	%ebx, %rbx
	movl	%r10d, 8(%rcx)
	movzbl	(%r11,%rbx), %eax
	orl	%esi, %eax
	sall	$8, %eax
	cmpl	%r9d, %r10d
	jge	.L499
	leal	4(%r8), %edx
	movslq	%r10d, %r10
	movl	%edx, 8(%rcx)
	movzbl	(%r11,%r10), %r10d
	orl	%r10d, %eax
	sall	$8, %eax
	cmpl	%edx, %r9d
	jle	.L490
	addl	$5, %r8d
	movslq	%edx, %rdx
	movl	%r8d, 8(%rcx)
	movzbl	(%r11,%rdx), %edx
	orl	%edx, %eax
	jmp	.L490
	.p2align 4,,10
.L504:
	sall	$8, %eax
	cmpl	%r10d, %r9d
	jle	.L495
	addl	$2, %r8d
	movslq	%r10d, %r10
	movl	%r8d, 8(%rcx)
	movzbl	(%r11,%r10), %edx
	addl	%edx, %eax
.L495:
	addl	$108, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L505:
	movl	$251, %eax
	subl	%edx, %eax
	sall	$8, %eax
	cmpl	%r10d, %r9d
	jle	.L497
	addl	$2, %r8d
	movslq	%r10d, %r10
	movl	%r8d, 8(%rcx)
	movzbl	(%r11,%r10), %edx
	subl	%edx, %eax
.L497:
	subl	$108, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L506:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.78
	.p2align 4,,10
.L502:
	xorl	%eax, %eax
.L499:
	sall	$8, %eax
	jmp	.L490
.L500:
	movl	%edx, %eax
	sall	$24, %eax
	jmp	.L490
	.seh_endproc
	.p2align 4,,15
	.def	_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff
_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff:
.LFB604:
	.seh_endprologue
	movss	8(%rcx), %xmm0
	movss	16(%rcx), %xmm4
	movss	12(%rcx), %xmm3
	ucomiss	%xmm4, %xmm0
	movss	20(%rcx), %xmm5
	movl	48(%rcx), %r8d
	movl	(%rcx), %r9d
	jp	.L508
	jne	.L508
	ucomiss	%xmm5, %xmm3
	jp	.L508
	je	.L509
.L508:
	testl	%r9d, %r9d
	cvttss2si	%xmm3, %edx
	cvttss2si	%xmm0, %eax
	jne	.L543
	movslq	%r8d, %r11
	leaq	0(,%r11,8), %r10
	subq	%r11, %r10
	movq	40(%rcx), %r11
	leaq	(%r11,%r10,2), %r10
	movw	%ax, (%r10)
	movw	%dx, 2(%r10)
	movq	$0, 4(%r10)
	movb	$2, 12(%r10)
.L522:
	addl	$1, %r8d
	movl	%r8d, 48(%rcx)
.L509:
	addss	%xmm4, %xmm1
	testl	%r9d, %r9d
	addss	%xmm5, %xmm2
	movss	%xmm1, 16(%rcx)
	cvttss2si	%xmm1, %eax
	movss	%xmm1, 8(%rcx)
	cvttss2si	%xmm2, %edx
	movss	%xmm2, 20(%rcx)
	movss	%xmm2, 12(%rcx)
	jne	.L544
	movslq	%r8d, %r10
	addl	$1, %r8d
	leaq	0(,%r10,8), %r9
	subq	%r10, %r9
	movq	40(%rcx), %r10
	leaq	(%r10,%r9,2), %r9
	movw	%ax, (%r9)
	movw	%dx, 2(%r9)
	movq	$0, 4(%r9)
	movb	$1, 12(%r9)
	movl	%r8d, 48(%rcx)
	ret
	.p2align 4,,10
.L543:
	cmpl	28(%rcx), %eax
	jle	.L545
.L512:
	movl	%eax, 28(%rcx)
.L513:
	cmpl	36(%rcx), %edx
	jg	.L514
	movl	4(%rcx), %r10d
	testl	%r10d, %r10d
	je	.L514
	cmpl	%eax, 24(%rcx)
	movl	32(%rcx), %r10d
	jle	.L518
.L516:
	cmpl	%r10d, %edx
	movl	%eax, 24(%rcx)
	jl	.L521
	movl	4(%rcx), %r11d
	testl	%r11d, %r11d
	jne	.L520
	.p2align 4,,10
.L521:
	movl	%edx, 32(%rcx)
.L520:
	movl	$1, 4(%rcx)
	jmp	.L522
	.p2align 4,,10
.L544:
	cmpl	28(%rcx), %eax
	movl	36(%rcx), %r9d
	jg	.L524
	movl	4(%rcx), %r10d
	testl	%r10d, %r10d
	jne	.L546
	movl	%eax, 28(%rcx)
.L529:
	movl	%edx, 36(%rcx)
.L528:
	cmpl	24(%rcx), %eax
	movl	32(%rcx), %r9d
	jl	.L530
	movl	4(%rcx), %r10d
	testl	%r10d, %r10d
	jne	.L547
	movl	%eax, 24(%rcx)
.L535:
	movl	%edx, 32(%rcx)
.L534:
	addl	$1, %r8d
	movl	$1, 4(%rcx)
	movl	%r8d, 48(%rcx)
	ret
	.p2align 4,,10
.L524:
	cmpl	%r9d, %edx
	movl	%eax, 28(%rcx)
	jg	.L529
	movl	4(%rcx), %r11d
	testl	%r11d, %r11d
	je	.L529
	jmp	.L528
	.p2align 4,,10
.L545:
	movl	4(%rcx), %r11d
	testl	%r11d, %r11d
	jne	.L513
	jmp	.L512
	.p2align 4,,10
.L518:
	cmpl	%r10d, %edx
	jl	.L521
	jmp	.L520
	.p2align 4,,10
.L514:
	cmpl	24(%rcx), %eax
	movl	%edx, 36(%rcx)
	movl	32(%rcx), %r10d
	jl	.L516
	movl	4(%rcx), %r11d
	testl	%r11d, %r11d
	jne	.L518
	movl	%eax, 24(%rcx)
	jmp	.L521
	.p2align 4,,10
.L530:
	cmpl	%r9d, %edx
	movl	%eax, 24(%rcx)
	jl	.L535
	movl	4(%rcx), %eax
	testl	%eax, %eax
	je	.L535
	jmp	.L534
	.p2align 4,,10
.L547:
	cmpl	%r9d, %edx
	jl	.L535
	jmp	.L534
	.p2align 4,,10
.L546:
	cmpl	%r9d, %edx
	jg	.L529
	jmp	.L528
	.seh_endproc
	.section .rdata,"dr"
.LC26:
	.ascii "i >= 0 && i < count\0"
.LC27:
	.ascii "offsize >= 1 && offsize <= 4\0"
.LC28:
	.ascii "n >= 1 && n <= 4\0"
	.text
	.p2align 4,,15
	.def	_ZL20stbtt__cff_index_get10stbtt__bufi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbtt__cff_index_get10stbtt__bufi
_ZL20stbtt__cff_index_get10stbtt__bufi:
.LFB581:
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
	movslq	12(%rdx), %r15
	movq	(%rdx), %r13
	testl	%r15d, %r15d
	movq	%rcx, %r12
	movl	%r15d, %ebp
	js	.L581
	je	.L551
	movzbl	0(%r13), %eax
	sall	$8, %eax
	cmpl	$1, %r15d
	movl	%eax, %edx
	je	.L552
	movzbl	1(%r13), %eax
	orl	%eax, %edx
	cmpl	$2, %r15d
	leal	1(%rdx), %r14d
	movl	%edx, %eax
	jne	.L582
	xorl	%ebx, %ebx
	cmpl	%r8d, %edx
	movl	$2, %r14d
	movl	$2, %esi
	jbe	.L583
	xorl	%edi, %edi
	movl	$-1, %r9d
.L569:
	movl	$1118, %r8d
	movl	%r9d, 44(%rsp)
	leaq	.LC2(%rip), %rdx
	leaq	.LC27(%rip), %rcx
	call	_assert
	movl	44(%rsp), %r9d
.L555:
	addl	%esi, %ebx
	js	.L558
	cmpl	%r15d, %ebx
	jg	.L558
.L556:
	cmpl	$3, %r9d
	ja	.L584
.L560:
	testl	%edi, %edi
	je	.L585
.L574:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align 4,,10
.L564:
	sall	$8, %edx
	cmpl	%ebx, %ebp
	jle	.L562
	movslq	%ebx, %rax
	addl	$1, %ebx
	movzbl	0(%r13,%rax), %eax
	orl	%eax, %edx
.L562:
	addl	$1, %ecx
	cmpl	%edi, %ecx
	jne	.L564
	addl	%edx, %r14d
	cmpl	$3, %r9d
	movl	%edx, %esi
	ja	.L586
.L570:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align 4,,10
.L566:
	sall	$8, %edx
	cmpl	%ebx, %ebp
	jle	.L565
	movslq	%ebx, %rax
	addl	$1, %ebx
	movzbl	0(%r13,%rax), %eax
	orl	%eax, %edx
.L565:
	addl	$1, %ecx
	cmpl	%edi, %ecx
	jl	.L566
	movl	%edx, %edi
.L573:
	testl	%r14d, %r14d
	movq	$0, (%r12)
	movq	$0, 8(%r12)
	js	.L548
	cmpl	%r15d, %r14d
	jle	.L587
.L548:
	movq	%r12, %rax
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
.L558:
	movl	$1000, %r8d
	movl	%r9d, 44(%rsp)
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	call	_assert
	cmpl	%ebx, %r15d
	movl	44(%rsp), %r9d
	jge	.L559
	cmpl	$3, %r9d
	movl	%r15d, %ebx
	jbe	.L560
.L584:
	movl	$1013, %r8d
	movl	%r9d, 44(%rsp)
	leaq	.LC2(%rip), %rdx
	leaq	.LC28(%rip), %rcx
	call	_assert
	testl	%edi, %edi
	movl	44(%rsp), %r9d
	jne	.L574
	leaq	.LC2(%rip), %rdx
	movl	$1013, %r8d
	xorl	%esi, %esi
	leaq	.LC28(%rip), %rcx
	call	_assert
	jmp	.L573
	.p2align 4,,10
.L581:
	movl	$1000, %r8d
	movl	%r15d, %esi
	movl	$2, %r14d
	leaq	.LC2(%rip), %rdx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	leaq	.LC3(%rip), %rcx
	call	_assert
	movl	$-1, %r9d
.L550:
	movl	$1117, %r8d
	movl	%r9d, 44(%rsp)
	leaq	.LC2(%rip), %rdx
	leaq	.LC26(%rip), %rcx
	call	_assert
	movl	44(%rsp), %r9d
.L554:
	cmpl	$3, %r9d
	jbe	.L555
	jmp	.L569
	.p2align 4,,10
.L551:
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	$2, %r14d
	movl	$-1, %r9d
	jmp	.L550
	.p2align 4,,10
.L587:
	subl	%esi, %edi
	subl	%r14d, %r15d
	cmpl	%r15d, %edi
	ja	.L548
	movslq	%r14d, %r14
	movl	%edi, 12(%r12)
	addq	%r14, %r13
	movq	%r13, (%r12)
	jmp	.L548
	.p2align 4,,10
.L582:
	movzbl	2(%r13), %edi
	movl	$3, %esi
.L568:
	imull	%edi, %r14d
	leal	-1(%rdi), %r9d
	movl	%edi, %ebx
	imull	%r8d, %ebx
	addl	$2, %r14d
	cmpl	%r8d, %eax
	ja	.L554
	jmp	.L550
	.p2align 4,,10
.L586:
	leaq	.LC2(%rip), %rdx
	movl	$1013, %r8d
	leaq	.LC28(%rip), %rcx
	call	_assert
	jmp	.L570
	.p2align 4,,10
.L559:
	testl	%ebx, %ebx
	cmovs	%r15d, %ebx
	jmp	.L556
.L552:
	leal	1(%rax), %r14d
	movl	$1, %esi
	xorl	%edi, %edi
	jmp	.L568
.L583:
	orl	$-1, %r9d
	xorl	%edi, %edi
	jmp	.L550
.L585:
	xorl	%esi, %esi
	jmp	.L573
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.77;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.77
_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.77:
.LFB1072:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rax
	movq	%r8, %rbx
	movl	%edx, %r8d
	leaq	32(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZL15stbtt__dict_getP10stbtt__bufi
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	movq	%r8, %rdx
	sarq	$32, %rdx
	cmpl	%r8d, %edx
	jle	.L588
	movslq	%r8d, %rax
	movzbl	(%rcx,%rax), %r9d
	leal	-32(%r9), %r10d
	leal	-139(%r9), %eax
	cmpl	$214, %r10d
	jbe	.L595
	leal	-247(%r9), %eax
	leal	1(%r8), %r10d
	cmpl	$3, %eax
	jbe	.L591
	leal	-251(%r9), %eax
	cmpl	$3, %eax
	ja	.L607
	movl	$251, %eax
	subl	%r9d, %eax
	sall	$8, %eax
	cmpl	%r10d, %edx
	jle	.L601
	movslq	%r10d, %r10
	movzbl	(%rcx,%r10), %edx
	subl	%edx, %eax
.L601:
	subl	$108, %eax
	.p2align 4,,10
.L595:
	movl	%eax, (%rbx)
.L588:
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L591:
	sall	$8, %eax
	cmpl	%r10d, %edx
	jle	.L603
	movslq	%r10d, %r10
	movzbl	(%rcx,%r10), %edx
	addl	%edx, %eax
.L603:
	addl	$108, %eax
	jmp	.L595
	.p2align 4,,10
.L607:
	cmpl	$28, %r9d
	je	.L608
	cmpl	$29, %r9d
	je	.L609
	leaq	.LC2(%rip), %rdx
	movl	$1063, %r8d
	leaq	.LC8(%rip), %rcx
	call	_assert
	xorl	%eax, %eax
	jmp	.L595
	.p2align 4,,10
.L609:
	cmpl	%r10d, %edx
	jle	.L605
	leal	2(%r8), %r11d
	movslq	%r10d, %r10
	movzbl	(%rcx,%r10), %eax
	movl	%eax, %r10d
	sall	$8, %r10d
	cmpl	%r11d, %edx
	jle	.L598
	leal	3(%r8), %r9d
	movslq	%r11d, %r11
	movzbl	(%rcx,%r11), %eax
	orl	%r10d, %eax
	movl	%eax, %r10d
	sall	$8, %r10d
	cmpl	%r9d, %edx
	jle	.L597
	movslq	%r9d, %r9
	addl	$4, %r8d
	movzbl	(%rcx,%r9), %eax
	orl	%r10d, %eax
	sall	$8, %eax
	cmpl	%r8d, %edx
	jle	.L606
	movslq	%r8d, %r8
	movzbl	(%rcx,%r8), %edx
	orl	%edx, %eax
	jmp	.L595
	.p2align 4,,10
.L608:
	xorl	%eax, %eax
	cmpl	%r10d, %edx
	jle	.L595
	movslq	%r10d, %r10
	addl	$2, %r8d
	movzbl	(%rcx,%r10), %eax
	sall	$8, %eax
	cmpl	%r8d, %edx
	jle	.L595
	movslq	%r8d, %r8
	movzbl	(%rcx,%r8), %edx
	orl	%edx, %eax
	jmp	.L595
	.p2align 4,,10
.L605:
	xorl	%eax, %eax
.L597:
	sall	$16, %eax
	xorl	%edx, %edx
	orl	%edx, %eax
	jmp	.L595
.L606:
	xorl	%edx, %edx
	orl	%edx, %eax
	jmp	.L595
.L598:
	sall	$24, %eax
	xorl	%edx, %edx
	orl	%edx, %eax
	jmp	.L595
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20stbtt__cff_get_indexP10stbtt__buf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbtt__cff_get_indexP10stbtt__buf
_ZL20stbtt__cff_get_indexP10stbtt__buf:
.LFB575:
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
	movslq	8(%rdx), %rdi
	movl	12(%rdx), %r8d
	movq	%rcx, %rbp
	movq	%rdx, %rsi
	movl	%edi, %ebx
	cmpl	%r8d, %edi
	jge	.L611
	movq	(%rdx), %r9
	leal	1(%rdi), %edx
	movslq	%edi, %rax
	movl	%edx, 8(%rsi)
	movzbl	(%r9,%rax), %eax
	sall	$8, %eax
	cmpl	%edx, %r8d
	movl	%eax, %ecx
	jle	.L612
	leal	2(%rdi), %ebx
	movslq	%edx, %rdx
	movl	%ebx, 8(%rsi)
	movzbl	(%r9,%rdx), %eax
	orl	%ecx, %eax
	je	.L611
	cmpl	%ebx, %r8d
	jle	.L613
	leal	3(%rdi), %ecx
	movslq	%ebx, %rdx
	movl	%ecx, 8(%rsi)
	movzbl	(%r9,%rdx), %r12d
	imull	%r12d, %eax
	leal	-1(%r12), %r13d
	cmpl	$3, %r13d
	movl	%eax, %ebx
	ja	.L629
	addl	%ecx, %ebx
	cmpl	%r8d, %ebx
	jg	.L632
.L648:
	testl	%ebx, %ebx
	js	.L632
.L616:
	cmpl	%r8d, %ebx
	jg	.L633
	testl	%ebx, %ebx
	jns	.L618
.L633:
	movl	%r8d, %ebx
.L618:
	cmpl	$3, %r13d
	movl	%ebx, 8(%rsi)
	ja	.L647
.L620:
	testl	%r12d, %r12d
	movl	$-1, %edx
	je	.L621
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
.L623:
	sall	$8, %edx
	cmpl	%ebx, %r8d
	jle	.L622
	movq	(%rsi), %r9
	leal	1(%rbx), %ecx
	movslq	%ebx, %rbx
	movl	%ecx, 8(%rsi)
	movzbl	(%r9,%rbx), %r9d
	movl	%ecx, %ebx
	orl	%r9d, %edx
.L622:
	addl	$1, %eax
	cmpl	%r12d, %eax
	jne	.L623
	subl	$1, %edx
.L621:
	addl	%edx, %ebx
	cmpl	%r8d, %ebx
	jg	.L634
	testl	%ebx, %ebx
	js	.L634
.L624:
	cmpl	%r8d, %ebx
	jg	.L635
	testl	%ebx, %ebx
	jns	.L626
.L635:
	movl	%r8d, %ebx
.L626:
	movl	%ebx, 8(%rsi)
.L611:
	subl	%edi, %ebx
	testl	%edi, %edi
	movq	$0, 0(%rbp)
	movq	$0, 8(%rbp)
	js	.L610
	cmpl	%r8d, %edi
	jg	.L610
	subl	%edi, %r8d
	cmpl	%ebx, %r8d
	jb	.L610
	addq	(%rsi), %rdi
	movl	%ebx, 12(%rbp)
	movq	%rdi, 0(%rbp)
.L610:
	movq	%rbp, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L612:
	testl	%eax, %eax
	movl	%edx, %ebx
	je	.L611
	.p2align 4,,10
.L613:
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	movl	$-1, %r13d
.L629:
	leaq	.LC27(%rip), %rcx
	movl	$1048, %r8d
	leaq	.LC2(%rip), %rdx
	call	_assert
	movl	8(%rsi), %ecx
	movl	12(%rsi), %r8d
	addl	%ecx, %ebx
	cmpl	%r8d, %ebx
	jle	.L648
	.p2align 4,,10
.L632:
	leaq	.LC2(%rip), %rdx
	movl	$1000, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movl	12(%rsi), %r8d
	jmp	.L616
	.p2align 4,,10
.L634:
	leaq	.LC2(%rip), %rdx
	movl	$1000, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movl	12(%rsi), %r8d
	jmp	.L624
	.p2align 4,,10
.L647:
	leaq	.LC2(%rip), %rdx
	movl	$1013, %r8d
	leaq	.LC28(%rip), %rcx
	call	_assert
	movl	12(%rsi), %r8d
	movl	8(%rsi), %ebx
	jmp	.L620
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16stbtt__get_subrs10stbtt__bufS_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbtt__get_subrs10stbtt__bufS_
_ZL16stbtt__get_subrs10stbtt__bufS_:
.LFB590:
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
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rax, 64(%rsp)
	movq	(%r8), %rax
	movq	%rcx, %rsi
	movq	%rdx, 72(%rsp)
	movq	8(%r8), %rdx
	leaq	32(%rsp), %rcx
	movl	$18, %r8d
	movq	$0, 88(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rdx, 56(%rsp)
	leaq	48(%rsp), %rdx
	call	_ZL15stbtt__dict_getP10stbtt__bufi
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rbp
	movq	%rdx, %rdi
	sarq	$32, %rdi
	cmpl	%edi, %edx
	jge	.L650
	leal	1(%rdx), %ebx
	movslq	%edx, %rax
	movzbl	0(%rbp,%rax), %eax
	leal	-32(%rax), %ecx
	cmpl	$214, %ecx
	jbe	.L651
	leal	-247(%rax), %ecx
	cmpl	$3, %ecx
	jbe	.L652
	leal	-251(%rax), %ecx
	cmpl	$3, %ecx
	ja	.L709
	movl	$251, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	cmpl	%ebx, %edi
	jle	.L667
	movslq	%ebx, %rbx
	movzbl	0(%rbp,%rbx), %ecx
	leal	2(%rdx), %ebx
	subl	%ecx, %eax
.L667:
	subl	$108, %eax
	jmp	.L656
	.p2align 4,,10
.L651:
	subl	$139, %eax
.L656:
	cmpl	%ebx, %edi
	movl	%eax, 88(%rsp)
	jle	.L650
	leal	1(%rbx), %edx
	movslq	%ebx, %rax
	movzbl	0(%rbp,%rax), %eax
	leal	-32(%rax), %ecx
	cmpl	$214, %ecx
	jbe	.L710
	leal	-247(%rax), %ecx
	cmpl	$3, %ecx
	ja	.L672
	sall	$8, %ecx
	cmpl	%edi, %edx
	jge	.L673
	movslq	%edx, %rdx
	movzbl	0(%rbp,%rdx), %eax
	addl	%eax, %ecx
.L673:
	leal	108(%rcx), %eax
.L671:
	movl	%eax, 92(%rsp)
.L650:
	movl	92(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L683
	movl	88(%rsp), %eax
	testl	%eax, %eax
	je	.L683
	testl	%ebx, %ebx
	js	.L696
	testl	%eax, %eax
	js	.L696
	movl	76(%rsp), %edx
	cmpl	%edx, %ebx
	jg	.L696
	subl	%ebx, %edx
	cmpl	%edx, %eax
	jle	.L711
	.p2align 4,,10
.L696:
	xorl	%eax, %eax
	xorl	%edx, %edx
.L687:
	leaq	112(%rsp), %rdi
	movq	%rdx, 96(%rsp)
	movl	$19, %r8d
	leaq	96(%rsp), %rdx
	movq	%rdi, %rcx
	movl	%eax, 108(%rsp)
	movl	$0, 104(%rsp)
	call	_ZL15stbtt__dict_getP10stbtt__bufi
	movl	124(%rsp), %eax
	cmpl	%eax, 120(%rsp)
	jge	.L683
	movq	%rdi, %rcx
	call	_ZL14stbtt__cff_intP10stbtt__buf
	testl	%eax, %eax
	jne	.L712
.L683:
	movq	%rsi, %rax
	movq	$0, (%rsi)
	movq	$0, 8(%rsi)
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L710:
	subl	$139, %eax
	jmp	.L671
	.p2align 4,,10
.L652:
	sall	$8, %ecx
	cmpl	%ebx, %edi
	jle	.L669
	movslq	%ebx, %rbx
	movzbl	0(%rbp,%rbx), %eax
	leal	2(%rdx), %ebx
	addl	%eax, %ecx
.L669:
	leal	108(%rcx), %eax
	jmp	.L656
	.p2align 4,,10
.L672:
	leal	-251(%rax), %ecx
	cmpl	$3, %ecx
	ja	.L674
	movl	$251, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	cmpl	%edi, %edx
	jge	.L675
	movslq	%edx, %rdx
	movzbl	0(%rbp,%rdx), %edx
	subl	%edx, %eax
.L675:
	subl	$108, %eax
	jmp	.L671
	.p2align 4,,10
.L709:
	cmpl	$28, %eax
	je	.L654
	cmpl	$29, %eax
	je	.L655
	leaq	.LC2(%rip), %rdx
	movl	$1063, %r8d
	leaq	.LC8(%rip), %rcx
	call	_assert
	xorl	%eax, %eax
	jmp	.L656
	.p2align 4,,10
.L674:
	cmpl	$28, %eax
	je	.L713
	cmpl	$29, %eax
	je	.L714
	leaq	.LC2(%rip), %rdx
	movl	$1063, %r8d
	leaq	.LC8(%rip), %rcx
	call	_assert
	xorl	%eax, %eax
	jmp	.L671
	.p2align 4,,10
.L712:
	leal	(%rbx,%rax), %edx
	leaq	64(%rsp), %rbx
	movq	%rbx, %rcx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	%rsi, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L711:
	movslq	%ebx, %rdx
	addq	64(%rsp), %rdx
	jmp	.L687
	.p2align 4,,10
.L655:
	cmpl	%ebx, %edi
	jg	.L715
	xorl	%eax, %eax
.L657:
	sall	$16, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	orl	%ecx, %eax
	jmp	.L656
	.p2align 4,,10
.L714:
	cmpl	%edi, %edx
	jge	.L692
	leal	2(%rbx), %ecx
	movslq	%edx, %rdx
	movzbl	0(%rbp,%rdx), %eax
	movl	%eax, %r8d
	sall	$8, %r8d
	cmpl	%ecx, %edi
	jle	.L680
	leal	3(%rbx), %edx
	movslq	%ecx, %rcx
	movzbl	0(%rbp,%rcx), %eax
	orl	%r8d, %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	cmpl	%edx, %edi
	jle	.L679
	movslq	%edx, %rdx
	addl	$4, %ebx
	movzbl	0(%rbp,%rdx), %eax
	orl	%ecx, %eax
	sall	$8, %eax
	cmpl	%ebx, %edi
	jle	.L693
	movslq	%ebx, %rbx
	movzbl	0(%rbp,%rbx), %edx
	orl	%edx, %eax
	jmp	.L671
	.p2align 4,,10
.L654:
	xorl	%eax, %eax
	cmpl	%ebx, %edi
	jle	.L656
	leal	2(%rdx), %r8d
	movslq	%ebx, %rbx
	movzbl	0(%rbp,%rbx), %eax
	sall	$8, %eax
	cmpl	%edi, %r8d
	movl	%eax, %ecx
	jge	.L664
	leal	3(%rdx), %ebx
	movslq	%r8d, %r8
	movzbl	0(%rbp,%r8), %eax
	orl	%ecx, %eax
	jmp	.L656
	.p2align 4,,10
.L713:
	xorl	%eax, %eax
	cmpl	%edi, %edx
	jge	.L671
	movslq	%edx, %rdx
	addl	$2, %ebx
	movzbl	0(%rbp,%rdx), %eax
	sall	$8, %eax
	cmpl	%edi, %ebx
	jge	.L671
	movslq	%ebx, %rbx
	movzbl	0(%rbp,%rbx), %edx
	orl	%edx, %eax
	jmp	.L671
	.p2align 4,,10
.L715:
	leal	2(%rdx), %r8d
	movslq	%ebx, %rbx
	movzbl	0(%rbp,%rbx), %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	cmpl	%edi, %r8d
	jge	.L716
	leal	3(%rdx), %ebx
	movslq	%r8d, %r8
	movzbl	0(%rbp,%r8), %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	sall	$8, %ecx
	cmpl	%edi, %ebx
	jge	.L657
	leal	4(%rdx), %r8d
	movslq	%ebx, %rbx
	movzbl	0(%rbp,%rbx), %eax
	orl	%ecx, %eax
	sall	$8, %eax
	cmpl	%edi, %r8d
	movl	%eax, %ecx
	jge	.L708
	leal	5(%rdx), %ebx
	movslq	%r8d, %r8
	movzbl	0(%rbp,%r8), %eax
	orl	%ecx, %eax
	jmp	.L656
	.p2align 4,,10
.L692:
	xorl	%eax, %eax
.L679:
	sall	$16, %eax
	xorl	%edx, %edx
	orl	%edx, %eax
	jmp	.L671
.L664:
	movl	%eax, 88(%rsp)
	jmp	.L650
.L693:
	xorl	%edx, %edx
	orl	%edx, %eax
	jmp	.L671
.L680:
	sall	$24, %eax
	xorl	%edx, %edx
	orl	%edx, %eax
	jmp	.L671
.L716:
	sall	$24, %eax
	movl	%eax, %ecx
.L708:
	xorl	%eax, %eax
	movl	%r8d, %ebx
	orl	%ecx, %eax
	jmp	.L656
	.seh_endproc
	.p2align 4,,15
	.def	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx:
.LFB609:
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
	subq	$712, %rsp
	.seh_stackalloc	712
	movaps	%xmm6, 544(%rsp)
	.seh_savexmm	%xmm6, 544
	movaps	%xmm7, 560(%rsp)
	.seh_savexmm	%xmm7, 560
	movaps	%xmm8, 576(%rsp)
	.seh_savexmm	%xmm8, 576
	movaps	%xmm9, 592(%rsp)
	.seh_savexmm	%xmm9, 592
	movaps	%xmm10, 608(%rsp)
	.seh_savexmm	%xmm10, 608
	movaps	%xmm11, 624(%rsp)
	.seh_savexmm	%xmm11, 624
	movaps	%xmm12, 640(%rsp)
	.seh_savexmm	%xmm12, 640
	movaps	%xmm13, 656(%rsp)
	.seh_savexmm	%xmm13, 656
	movaps	%xmm14, 672(%rsp)
	.seh_savexmm	%xmm14, 672
	movaps	%xmm15, 688(%rsp)
	.seh_savexmm	%xmm15, 688
	.seh_endprologue
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	movq	104(%rcx), %rax
	movq	%rax, 96(%rsp)
	movl	116(%rcx), %eax
	movq	%rcx, %rdi
	movq	%r8, %rbx
	movl	%edx, 792(%rsp)
	movq	80(%rdi), %rdx
	leaq	144(%rsp), %rcx
	movl	792(%rsp), %r8d
	movq	%rcx, 88(%rsp)
	movl	%eax, 104(%rsp)
	movq	72(%rdi), %rax
	movq	%rdx, 136(%rsp)
	movq	%rax, 128(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, %rdx
	movq	%rax, 80(%rsp)
	call	_ZL20stbtt__cff_index_get10stbtt__bufi
	movq	152(%rsp), %rdx
	movss	.LC29(%rip), %xmm6
	movl	$0, 76(%rsp)
	movq	144(%rsp), %rax
	movl	$1, 72(%rsp)
	movss	.LC30(%rip), %xmm7
	movaps	%xmm6, %xmm8
	movq	%rdx, 168(%rsp)
	movl	168(%rsp), %edx
	movl	172(%rsp), %r13d
	movq	%rax, 160(%rsp)
	.p2align 4,,10
.L718:
	cmpl	%r13d, %edx
	jge	.L826
.L878:
	movq	160(%rsp), %r10
	leal	1(%rdx), %r8d
	movslq	%edx, %rax
	movl	%r8d, 168(%rsp)
	movzbl	(%r10,%rax), %r15d
	cmpb	$31, %r15b
	ja	.L720
	leaq	.L722(%rip), %rcx
	movslq	(%rcx,%r15,4), %rax
	addq	%rcx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L722:
	.long	.L720-.L722
	.long	.L721-.L722
	.long	.L720-.L722
	.long	.L721-.L722
	.long	.L723-.L722
	.long	.L724-.L722
	.long	.L725-.L722
	.long	.L726-.L722
	.long	.L727-.L722
	.long	.L720-.L722
	.long	.L728-.L722
	.long	.L729-.L722
	.long	.L730-.L722
	.long	.L720-.L722
	.long	.L731-.L722
	.long	.L720-.L722
	.long	.L720-.L722
	.long	.L720-.L722
	.long	.L721-.L722
	.long	.L732-.L722
	.long	.L732-.L722
	.long	.L733-.L722
	.long	.L734-.L722
	.long	.L721-.L722
	.long	.L735-.L722
	.long	.L736-.L722
	.long	.L737-.L722
	.long	.L737-.L722
	.long	.L720-.L722
	.long	.L738-.L722
	.long	.L739-.L722
	.long	.L740-.L722
	.text
.L885:
	movq	136(%rdi), %rax
	movq	144(%rdi), %rdx
	movq	%rax, 176(%rsp)
	movq	%rdx, 184(%rsp)
	jns	.L763
	leaq	.LC2(%rip), %rdx
	movl	$1000, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
.L763:
	movl	188(%rsp), %eax
	testl	%eax, %eax
	js	.L764
	movl	$0, 184(%rsp)
	je	.L820
	movq	176(%rsp), %rax
	movl	$1, 184(%rsp)
	movzbl	(%rax), %eax
	testl	%eax, %eax
	je	.L874
	cmpl	$3, %eax
	je	.L875
.L769:
	movl	$-1, 76(%rsp)
.L768:
	movq	128(%rdi), %rdx
	movq	80(%rsp), %r13
	movq	88(%rsp), %r14
	movq	120(%rdi), %rax
	movl	76(%rsp), %r8d
	movq	%rdx, 136(%rsp)
	movq	%r13, %rdx
	movq	%r14, %rcx
	movq	%rax, 128(%rsp)
	call	_ZL20stbtt__cff_index_get10stbtt__bufi
	movq	64(%rdi), %rdx
	leaq	112(%rsp), %r8
	movq	%r14, %rcx
	movq	56(%rdi), %rax
	movq	%rdx, 136(%rsp)
	movq	152(%rsp), %rdx
	movq	%rax, 128(%rsp)
	movq	144(%rsp), %rax
	movq	%rdx, 120(%rsp)
	movq	%r13, %rdx
	movq	%rax, 112(%rsp)
	call	_ZL16stbtt__get_subrs10stbtt__bufS_
	movq	144(%rsp), %rax
	movl	$1, 76(%rsp)
	movq	%rax, 96(%rsp)
	movl	156(%rsp), %eax
	movl	%eax, 104(%rsp)
	.p2align 4,,10
.L738:
	testl	%r12d, %r12d
	je	.L826
	subl	$1, %r12d
	cmpl	$9, %esi
	movslq	%r12d, %rax
	cvttss2si	352(%rsp,%rax,4), %r8d
	jg	.L826
	movq	160(%rsp), %rax
	leal	1(%rsi), %r14d
	movslq	%esi, %rsi
	movq	168(%rsp), %rdx
	salq	$4, %rsi
	cmpl	$10, %r15d
	movq	%rax, 192(%rsp,%rsi)
	movq	%rdx, 200(%rsp,%rsi)
	je	.L823
	movl	100(%rdi), %edx
	movq	88(%rdi), %r9
	testl	%edx, %edx
	js	.L876
.L774:
	je	.L826
	movzbl	(%r9), %eax
	movl	$1, %ecx
	sall	$8, %eax
	cmpl	$1, %edx
	jne	.L877
	cmpl	$33899, %eax
	jbe	.L777
.L889:
	addl	$32768, %r8d
.L778:
	cmpl	%r8d, %eax
	jbe	.L826
	andl	$3, %ecx
	salq	$32, %rdx
	movq	%r9, 128(%rsp)
	orq	%rcx, %rdx
	movq	88(%rsp), %rcx
	movq	%rdx, 136(%rsp)
	movq	80(%rsp), %rdx
	call	_ZL20stbtt__cff_index_get10stbtt__bufi
	movslq	156(%rsp), %rax
	movq	144(%rsp), %rdx
	testl	%eax, %eax
	movl	%eax, %r13d
	movl	%eax, 172(%rsp)
	movq	%rdx, 160(%rsp)
	je	.L826
	xorl	%edx, %edx
	movl	%r14d, %esi
	cmpl	%r13d, %edx
	jl	.L878
	.p2align 4,,10
.L826:
	xorl	%eax, %eax
.L717:
	movaps	544(%rsp), %xmm6
	movaps	560(%rsp), %xmm7
	movaps	576(%rsp), %xmm8
	movaps	592(%rsp), %xmm9
	movaps	608(%rsp), %xmm10
	movaps	624(%rsp), %xmm11
	movaps	640(%rsp), %xmm12
	movaps	656(%rsp), %xmm13
	movaps	672(%rsp), %xmm14
	movaps	688(%rsp), %xmm15
	addq	$712, %rsp
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
.L721:
	sarl	%r12d
	movl	%r8d, %edx
	addl	%r12d, %ebp
	xorl	%r12d, %r12d
	jmp	.L718
	.p2align 4,,10
.L740:
	cmpl	$3, %r12d
	jle	.L826
	movl	%r12d, %r8d
	movl	$4, %eax
	movl	$1, %ecx
	movl	$2, %edx
	movl	$7, %r15d
	xorl	%r14d, %r14d
	movl	$3, %r13d
.L749:
	movslq	%r13d, %r13
	cmpl	$5, %r8d
	pxor	%xmm0, %xmm0
	movss	352(%rsp,%r13,4), %xmm2
	je	.L879
.L752:
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	movslq	%r14d, %r14
	movl	%eax, 108(%rsp)
	movss	352(%rsp,%rcx,4), %xmm3
	movq	%rbx, %rcx
	movss	352(%rsp,%r14,4), %xmm1
	movss	%xmm2, 48(%rsp)
	pxor	%xmm2, %xmm2
	movss	%xmm0, 40(%rsp)
	movss	352(%rsp,%rdx,4), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	cmpl	%r15d, %r12d
	movslq	108(%rsp), %rax
	jg	.L880
	.p2align 4,,10
.L872:
	movl	168(%rsp), %edx
	xorl	%r12d, %r12d
	movl	172(%rsp), %r13d
	jmp	.L718
	.p2align 4,,10
.L739:
	cmpl	$3, %r12d
	jle	.L826
	movl	%r12d, %r8d
	movl	$4, %r14d
	movl	$7, %r13d
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movl	$3, %r15d
.L754:
	cmpl	$5, %r8d
	pxor	%xmm0, %xmm0
	je	.L881
.L750:
	movslq	%edx, %rdx
	movslq	%r15d, %r15
	movslq	%ecx, %rcx
	pxor	%xmm1, %xmm1
	movss	352(%rsp,%rdx,4), %xmm3
	movss	352(%rsp,%rax,4), %xmm2
	movss	%xmm0, 48(%rsp)
	movss	352(%rsp,%r15,4), %xmm0
	movss	%xmm0, 40(%rsp)
	movss	352(%rsp,%rcx,4), %xmm0
	movq	%rbx, %rcx
	movss	%xmm0, 32(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	cmpl	%r13d, %r12d
	jle	.L872
	leal	7(%r14), %r15d
	movl	%r12d, %r8d
	leal	2(%r14), %edx
	subl	%r14d, %r8d
	leal	1(%r14), %ecx
	leal	4(%r14), %eax
	jmp	.L749
	.p2align 4,,10
.L737:
	cmpl	$3, %r12d
	jle	.L826
	movss	352(%rsp), %xmm1
	movl	%r12d, %edx
	andl	$1, %edx
	jne	.L882
	movl	$3, %eax
	pxor	%xmm1, %xmm1
.L758:
	leal	7(%rdx), %r14d
	addl	$2, %edx
	cmpl	$27, %r15d
	movslq	%edx, %rdx
	leaq	352(%rsp,%rdx,4), %r13
	je	.L759
	.p2align 4,,10
.L761:
	movss	352(%rsp,%rax,4), %xmm0
	movq	%rbx, %rcx
	addq	$16, %r13
	movl	$0x00000000, 40(%rsp)
	movss	%xmm0, 48(%rsp)
	movss	-16(%r13), %xmm0
	movss	%xmm0, 32(%rsp)
	movss	-20(%r13), %xmm3
	movss	-24(%r13), %xmm2
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movslq	%r14d, %rax
	addl	$4, %r14d
	pxor	%xmm1, %xmm1
	cmpl	%eax, %r12d
	jg	.L761
	jmp	.L872
	.p2align 4,,10
.L736:
	cmpl	$7, %r12d
	jle	.L826
	leal	-8(%r12), %r15d
	leaq	360(%rsp), %r13
	shrl	%r15d
	leaq	352(%rsp), %rax
	movl	%r15d, %edx
	leaq	0(%r13,%rdx,8), %r14
	jmp	.L757
	.p2align 4,,10
.L883:
	addq	$8, %r13
.L757:
	movss	4(%rax), %xmm2
	movq	%rbx, %rcx
	movss	(%rax), %xmm1
	call	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff
	cmpq	%r13, %r14
	movq	%r13, %rax
	jne	.L883
	leal	2(%r15,%r15), %eax
	leal	5(%rax), %edx
	leal	3(%r15,%r15), %r8d
	cmpl	%edx, %r12d
	jle	.L826
	leal	2(%rax), %ecx
	movslq	%edx, %rdx
	movss	352(%rsp,%rdx,4), %xmm0
	leal	4(%rax), %edx
	movslq	%ecx, %rcx
	movss	352(%rsp,%rcx,4), %xmm3
	movslq	%r8d, %rcx
	movslq	%edx, %rdx
	movss	352(%rsp,%rcx,4), %xmm2
	movslq	%eax, %rcx
	addl	$3, %eax
	movss	352(%rsp,%rcx,4), %xmm1
	movss	%xmm0, 48(%rsp)
	cltq
	movss	352(%rsp,%rdx,4), %xmm0
	movss	%xmm0, 40(%rsp)
	movss	352(%rsp,%rax,4), %xmm0
	movss	%xmm0, 32(%rsp)
.L871:
	movq	%rbx, %rcx
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	jmp	.L872
	.p2align 4,,10
.L735:
	cmpl	$7, %r12d
	jle	.L826
	leal	-2(%r12), %r15d
	xorl	%r14d, %r14d
	leaq	352(%rsp), %r13
	jmp	.L756
	.p2align 4,,10
.L816:
	movl	%eax, %r14d
.L756:
	movss	20(%r13), %xmm0
	movq	%rbx, %rcx
	addq	$24, %r13
	movss	%xmm0, 48(%rsp)
	movss	-8(%r13), %xmm0
	movss	%xmm0, 40(%rsp)
	movss	-12(%r13), %xmm0
	movss	%xmm0, 32(%rsp)
	movss	-16(%r13), %xmm3
	movss	-20(%r13), %xmm2
	movss	-24(%r13), %xmm1
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	leal	11(%r14), %edx
	leal	6(%r14), %eax
	cmpl	%edx, %r15d
	jg	.L816
	addl	$7, %r14d
	cmpl	%r14d, %r12d
	jle	.L826
	cltq
	movslq	%r14d, %r14
	xorl	%r12d, %r12d
	movss	352(%rsp,%r14,4), %xmm2
	movss	352(%rsp,%rax,4), %xmm1
	call	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff
	movl	168(%rsp), %edx
	movl	172(%rsp), %r13d
	jmp	.L718
	.p2align 4,,10
.L727:
	cmpl	$5, %r12d
	jle	.L826
	leaq	352(%rsp), %r13
	movl	$5, %r14d
	.p2align 4,,10
.L755:
	movss	20(%r13), %xmm0
	movq	%rbx, %rcx
	addq	$6, %r14
	addq	$24, %r13
	movss	%xmm0, 48(%rsp)
	movss	-8(%r13), %xmm0
	movss	%xmm0, 40(%rsp)
	movss	-12(%r13), %xmm0
	movss	%xmm0, 32(%rsp)
	movss	-16(%r13), %xmm3
	movss	-20(%r13), %xmm2
	movss	-24(%r13), %xmm1
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	cmpl	%r14d, %r12d
	jg	.L755
	jmp	.L872
	.p2align 4,,10
.L731:
	movss	8(%rbx), %xmm0
	ucomiss	16(%rbx), %xmm0
	movss	12(%rbx), %xmm1
	jp	.L781
	jne	.L781
	ucomiss	20(%rbx), %xmm1
	jp	.L781
	movl	$1, %eax
	je	.L717
.L781:
	movl	(%rbx), %esi
	cvttss2si	%xmm1, %edx
	cvttss2si	%xmm0, %eax
	movl	48(%rbx), %ecx
	testl	%esi, %esi
	jne	.L884
	movslq	%ecx, %r9
	leaq	0(,%r9,8), %r8
	subq	%r9, %r8
	movq	40(%rbx), %r9
	leaq	(%r9,%r8,2), %r8
	movw	%ax, (%r8)
	movw	%dx, 2(%r8)
	movq	$0, 4(%r8)
	movb	$2, 12(%r8)
.L795:
	addl	$1, %ecx
	movl	$1, %eax
	movl	%ecx, 48(%rbx)
	jmp	.L717
	.p2align 4,,10
.L723:
	testl	%r12d, %r12d
	je	.L826
	subl	$1, %r12d
	pxor	%xmm1, %xmm1
	movslq	%r12d, %r12
	movss	352(%rsp,%r12,4), %xmm2
.L873:
	movq	%rbx, %rcx
	xorl	%r12d, %r12d
	call	_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff
	movl	168(%rsp), %edx
	movl	$0, 72(%rsp)
	movl	172(%rsp), %r13d
	jmp	.L718
	.p2align 4,,10
.L733:
	cmpl	$1, %r12d
	jle	.L826
	leal	-1(%r12), %eax
	subl	$2, %r12d
	cltq
	movslq	%r12d, %r12
	movss	352(%rsp,%rax,4), %xmm2
	movss	352(%rsp,%r12,4), %xmm1
	jmp	.L873
	.p2align 4,,10
.L732:
	movl	72(%rsp), %r15d
	leaq	160(%rsp), %rcx
	sarl	%r12d
	addl	%ebp, %r12d
	testl	%r15d, %r15d
	cmovne	%r12d, %ebp
	xorl	%r12d, %r12d
	leal	7(%rbp), %edx
	sarl	$3, %edx
	addl	%r8d, %edx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movl	168(%rsp), %edx
	movl	$0, 72(%rsp)
	movl	172(%rsp), %r13d
	jmp	.L718
	.p2align 4,,10
.L734:
	testl	%r12d, %r12d
	je	.L826
	subl	$1, %r12d
	pxor	%xmm2, %xmm2
	movslq	%r12d, %r12
	movss	352(%rsp,%r12,4), %xmm1
	jmp	.L873
	.p2align 4,,10
.L729:
	testl	%esi, %esi
	je	.L826
	subl	$1, %esi
	movslq	%esi, %rax
	salq	$4, %rax
	movq	200(%rsp,%rax), %rdx
	movq	192(%rsp,%rax), %rax
	movq	%rdx, 168(%rsp)
	movl	168(%rsp), %edx
	movq	%rax, 160(%rsp)
	movl	172(%rsp), %r13d
	jmp	.L718
	.p2align 4,,10
.L728:
	movl	76(%rsp), %r14d
	testl	%r14d, %r14d
	jne	.L738
	movl	148(%rdi), %r13d
	testl	%r13d, %r13d
	jne	.L885
	movl	$1, 76(%rsp)
	jmp	.L738
	.p2align 4,,10
.L730:
	cmpl	%r13d, %r8d
	jge	.L826
	addl	$2, %edx
	movslq	%r8d, %r8
	movl	%edx, 168(%rsp)
	movzbl	(%r10,%r8), %eax
	cmpb	$35, %al
	je	.L796
	jbe	.L886
	cmpb	$36, %al
	je	.L799
	cmpb	$37, %al
	jne	.L826
	cmpl	$10, %r12d
	jle	.L826
	movss	352(%rsp), %xmm1
	movss	356(%rsp), %xmm2
	movss	360(%rsp), %xmm3
	movaps	%xmm1, %xmm11
	movss	364(%rsp), %xmm0
	movaps	%xmm2, %xmm9
	addss	%xmm3, %xmm11
	movss	368(%rsp), %xmm4
	addss	%xmm0, %xmm9
	movss	372(%rsp), %xmm5
	movss	376(%rsp), %xmm12
	addss	%xmm4, %xmm11
	movss	380(%rsp), %xmm13
	addss	%xmm5, %xmm9
	movl	392(%rsp), %ecx
	movss	384(%rsp), %xmm14
	movss	388(%rsp), %xmm15
	addss	%xmm12, %xmm11
	addss	%xmm13, %xmm9
	addss	%xmm14, %xmm11
	addss	%xmm15, %xmm9
	movaps	%xmm11, %xmm10
	movd	%xmm9, %eax
	andps	%xmm7, %xmm10
	andps	%xmm7, %xmm9
	ucomiss	%xmm9, %xmm10
	ja	.L887
	movl	%ecx, %r12d
	xorps	.LC29(%rip), %xmm11
.L803:
	movss	%xmm5, 48(%rsp)
	movq	%rbx, %rcx
	movss	%xmm4, 40(%rsp)
	movss	%xmm0, 32(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movl	%r12d, 48(%rsp)
	movaps	%xmm14, %xmm3
	movaps	%xmm13, %xmm2
	movss	%xmm11, 40(%rsp)
	movaps	%xmm12, %xmm1
	movss	%xmm15, 32(%rsp)
	jmp	.L871
	.p2align 4,,10
.L725:
	testl	%r12d, %r12d
	je	.L826
	movl	$1, %r13d
	xorl	%r14d, %r14d
.L748:
	movslq	%r14d, %r14
	movq	%rbx, %rcx
	pxor	%xmm2, %xmm2
	movss	352(%rsp,%r14,4), %xmm1
	call	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff
	cmpl	%r13d, %r12d
	jle	.L872
	leal	1(%r13), %r14d
	jmp	.L745
	.p2align 4,,10
.L724:
	cmpl	$1, %r12d
	jle	.L826
	leaq	352(%rsp), %rax
	subl	$2, %r12d
	shrl	%r12d
	movl	%r12d, %edx
	leaq	360(%rsp), %r12
	leaq	(%r12,%rdx,8), %r13
	jmp	.L744
	.p2align 4,,10
.L888:
	addq	$8, %r12
.L744:
	movss	4(%rax), %xmm2
	movq	%rbx, %rcx
	movss	(%rax), %xmm1
	call	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff
	cmpq	%r12, %r13
	movq	%r12, %rax
	jne	.L888
	jmp	.L872
	.p2align 4,,10
.L726:
	testl	%r12d, %r12d
	je	.L826
	movl	$1, %r14d
	xorl	%r13d, %r13d
.L745:
	movslq	%r13d, %r13
	movq	%rbx, %rcx
	pxor	%xmm1, %xmm1
	movss	352(%rsp,%r13,4), %xmm2
	call	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff
	cmpl	%r14d, %r12d
	jle	.L872
	leal	1(%r14), %r13d
	jmp	.L748
	.p2align 4,,10
.L823:
	movl	104(%rsp), %edx
	movq	96(%rsp), %r9
	testl	%edx, %edx
	jns	.L774
.L876:
	leaq	.LC2(%rip), %rdx
	movl	$1000, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	xorl	%eax, %eax
	jmp	.L717
	.p2align 4,,10
.L720:
	cmpl	$255, %r15d
	je	.L804
	cmpl	$28, %r15d
	je	.L804
	leal	-32(%r15), %r9d
	cmpl	$222, %r9d
	ja	.L826
.L805:
	leaq	160(%rsp), %r13
	movq	%r13, %rcx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movq	%r13, %rcx
	call	_ZL14stbtt__cff_intP10stbtt__buf
	pxor	%xmm0, %xmm0
	cwtl
	cvtsi2ss	%eax, %xmm0
.L811:
	cmpl	$47, %r12d
	jg	.L826
	movslq	%r12d, %rax
	movl	168(%rsp), %edx
	addl	$1, %r12d
	movss	%xmm0, 352(%rsp,%rax,4)
	movl	172(%rsp), %r13d
	jmp	.L718
	.p2align 4,,10
.L877:
	movzbl	1(%r9), %ecx
	orl	%ecx, %eax
	movl	$2, %ecx
	cmpl	$33899, %eax
	ja	.L889
.L777:
	cmpl	$1239, %eax
	jbe	.L779
	addl	$1131, %r8d
	jmp	.L778
	.p2align 4,,10
.L882:
	cmpl	$4, %r12d
	movl	$4, %eax
	jne	.L758
	movl	%r8d, %edx
	xorl	%r12d, %r12d
	jmp	.L718
	.p2align 4,,10
.L886:
	cmpb	$34, %al
	jne	.L826
	cmpl	$6, %r12d
	jle	.L826
	movss	364(%rsp), %xmm0
	movq	%rbx, %rcx
	movl	$0x00000000, 48(%rsp)
	pxor	%xmm2, %xmm2
	movss	360(%rsp), %xmm12
	movss	368(%rsp), %xmm13
	movss	%xmm0, 40(%rsp)
	movss	356(%rsp), %xmm3
	movss	%xmm12, 32(%rsp)
	xorps	%xmm8, %xmm12
	movss	372(%rsp), %xmm14
	movss	376(%rsp), %xmm15
	movss	352(%rsp), %xmm1
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movss	%xmm15, 40(%rsp)
	movaps	%xmm14, %xmm3
	pxor	%xmm2, %xmm2
	movl	$0x00000000, 48(%rsp)
	movaps	%xmm13, %xmm1
	movss	%xmm12, 32(%rsp)
	jmp	.L871
	.p2align 4,,10
.L804:
	cmpl	$255, %r15d
	jne	.L805
	cmpl	%r13d, %r8d
	jge	.L827
	leal	2(%rdx), %r9d
	movslq	%r8d, %r8
	movl	%r9d, 168(%rsp)
	movzbl	(%r10,%r8), %ecx
	movl	%ecx, %r11d
	sall	$8, %r11d
	cmpl	%r13d, %r9d
	jge	.L807
	leal	3(%rdx), %r8d
	movslq	%r9d, %r9
	movl	%r8d, 168(%rsp)
	movzbl	(%r10,%r9), %eax
	orl	%r11d, %eax
	movl	%eax, %r9d
	sall	$8, %r9d
	cmpl	%r13d, %r8d
	jge	.L806
	leal	4(%rdx), %ecx
	movslq	%r8d, %r8
	movl	%ecx, 168(%rsp)
	movzbl	(%r10,%r8), %eax
	orl	%r9d, %eax
	sall	$8, %eax
	cmpl	%r13d, %ecx
	jge	.L828
	addl	$5, %edx
	movslq	%ecx, %rcx
	movl	%edx, 168(%rsp)
	movzbl	(%r10,%rcx), %edx
.L808:
	orl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	mulss	.LC31(%rip), %xmm0
	jmp	.L811
	.p2align 4,,10
.L879:
	movslq	%eax, %r8
	movss	352(%rsp,%r8,4), %xmm0
	jmp	.L752
	.p2align 4,,10
.L884:
	cmpl	28(%rbx), %eax
	jle	.L890
.L785:
	movl	%eax, 28(%rbx)
.L786:
	cmpl	36(%rbx), %edx
	jg	.L787
	movl	4(%rbx), %r10d
	testl	%r10d, %r10d
	je	.L787
	cmpl	%eax, 24(%rbx)
	movl	32(%rbx), %r8d
	jg	.L789
.L791:
	cmpl	%r8d, %edx
	jge	.L793
.L794:
	movl	%edx, 32(%rbx)
.L793:
	movl	$1, 4(%rbx)
	jmp	.L795
.L881:
	movslq	%r14d, %r8
	movss	352(%rsp,%r8,4), %xmm0
	jmp	.L750
.L787:
	cmpl	24(%rbx), %eax
	movl	%edx, 36(%rbx)
	movl	32(%rbx), %r8d
	jge	.L891
.L789:
	cmpl	%r8d, %edx
	movl	%eax, 24(%rbx)
	jl	.L794
	movl	4(%rbx), %eax
	testl	%eax, %eax
	je	.L794
	jmp	.L793
	.p2align 4,,10
.L759:
	movaps	%xmm1, %xmm2
	.p2align 4,,10
.L762:
	movl	$0x00000000, 48(%rsp)
	movq	%rbx, %rcx
	addq	$16, %r13
	movss	352(%rsp,%rax,4), %xmm0
	movss	%xmm0, 40(%rsp)
	movss	-16(%r13), %xmm0
	movss	%xmm0, 32(%rsp)
	movss	-20(%r13), %xmm3
	movss	-24(%r13), %xmm1
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movslq	%r14d, %rax
	addl	$4, %r14d
	pxor	%xmm2, %xmm2
	cmpl	%eax, %r12d
	jg	.L762
	jmp	.L872
.L796:
	cmpl	$12, %r12d
	jle	.L826
	movss	372(%rsp), %xmm0
	movq	%rbx, %rcx
	movl	396(%rsp), %r12d
	movss	376(%rsp), %xmm11
	movss	%xmm0, 48(%rsp)
	movss	368(%rsp), %xmm0
	movss	380(%rsp), %xmm12
	movss	384(%rsp), %xmm13
	movss	%xmm0, 40(%rsp)
	movss	364(%rsp), %xmm0
	movss	388(%rsp), %xmm14
	movss	392(%rsp), %xmm15
	movss	%xmm0, 32(%rsp)
	movss	360(%rsp), %xmm3
	movss	356(%rsp), %xmm2
	movss	352(%rsp), %xmm1
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movl	%r12d, 48(%rsp)
	movaps	%xmm13, %xmm3
	movaps	%xmm12, %xmm2
	movss	%xmm15, 40(%rsp)
	movaps	%xmm11, %xmm1
	movss	%xmm14, 32(%rsp)
	jmp	.L871
.L799:
	cmpl	$8, %r12d
	jle	.L826
	movss	356(%rsp), %xmm13
	movq	%rbx, %rcx
	movl	$0x00000000, 48(%rsp)
	movss	364(%rsp), %xmm12
	movss	368(%rsp), %xmm0
	movaps	%xmm13, %xmm2
	movss	360(%rsp), %xmm3
	movss	%xmm12, 32(%rsp)
	movss	352(%rsp), %xmm1
	movss	%xmm0, 40(%rsp)
	movss	380(%rsp), %xmm14
	movss	372(%rsp), %xmm15
	movl	376(%rsp), %r12d
	movl	384(%rsp), %r13d
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	addss	%xmm13, %xmm12
	movss	%xmm14, 32(%rsp)
	pxor	%xmm2, %xmm2
	movaps	%xmm15, %xmm1
	movd	%r12d, %xmm3
	addss	%xmm14, %xmm12
	movl	%r13d, 40(%rsp)
	xorps	%xmm6, %xmm12
	movss	%xmm12, 48(%rsp)
	jmp	.L871
.L827:
	xorl	%eax, %eax
.L806:
	sall	$16, %eax
	xorl	%edx, %edx
	jmp	.L808
.L890:
	movl	4(%rbx), %r11d
	testl	%r11d, %r11d
	jne	.L786
	jmp	.L785
.L887:
	movd	%eax, %xmm10
	movd	%ecx, %xmm11
	xorps	.LC29(%rip), %xmm10
	movd	%xmm10, %r12d
	jmp	.L803
.L891:
	movl	4(%rbx), %r9d
	testl	%r9d, %r9d
	jne	.L791
	movl	%eax, 24(%rbx)
	jmp	.L794
.L764:
	movl	%eax, 184(%rsp)
	addl	792(%rsp), %eax
	movl	%eax, %edx
.L765:
	leaq	176(%rsp), %rcx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movslq	184(%rsp), %rax
	cmpl	188(%rsp), %eax
	jge	.L768
	leal	1(%rax), %edx
	movl	%edx, 184(%rsp)
	movq	176(%rsp), %rdx
	movzbl	(%rdx,%rax), %eax
	movl	%eax, 76(%rsp)
	jmp	.L768
.L820:
	movl	792(%rsp), %edx
	jmp	.L765
.L875:
	leaq	176(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, %r11
	call	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.78
	movl	%eax, %r14d
	movq	%r11, 96(%rsp)
	call	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.78
	testl	%r14d, %r14d
	movl	%r14d, %ecx
	movl	%eax, %r13d
	jle	.L769
	xorl	%r14d, %r14d
	movl	%ebp, 76(%rsp)
	movl	792(%rsp), %r11d
	movl	%esi, 104(%rsp)
	movq	96(%rsp), %rbp
	movl	%r14d, %esi
	movq	%rbx, %r14
	movq	%rdi, 784(%rsp)
	movl	%ecx, %edi
	jmp	.L772
.L829:
	addl	$1, %esi
	movl	%eax, %r13d
	cmpl	%esi, %edi
	je	.L892
.L772:
	movslq	184(%rsp), %rax
	xorl	%ebx, %ebx
	cmpl	188(%rsp), %eax
	jge	.L770
	leal	1(%rax), %ecx
	movl	%ecx, 184(%rsp)
	movq	176(%rsp), %rcx
	movzbl	(%rcx,%rax), %ebx
.L770:
	movq	%rbp, %rcx
	call	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.78
	cmpl	%r11d, %r13d
	jg	.L829
	cmpl	%eax, %r11d
	jge	.L829
	movl	%ebx, %r11d
	movl	76(%rsp), %ebp
	movq	%r14, %rbx
	movl	104(%rsp), %esi
	movl	%r11d, 76(%rsp)
	movq	784(%rsp), %rdi
	jmp	.L768
.L892:
	movl	76(%rsp), %ebp
	movq	%r14, %rbx
	movl	104(%rsp), %esi
	movq	784(%rsp), %rdi
	jmp	.L769
.L874:
	movl	792(%rsp), %eax
	leal	1(%rax), %edx
	jmp	.L765
.L828:
	xorl	%edx, %edx
	jmp	.L808
.L779:
	addl	$107, %r8d
	jmp	.L778
.L880:
	leal	2(%rax), %ecx
	movl	%r12d, %r8d
	leal	1(%rax), %edx
	subl	%eax, %r8d
	leal	7(%rax), %r13d
	leal	4(%rax), %r14d
	jmp	.L754
.L807:
	movl	%ecx, %eax
	xorl	%edx, %edx
	sall	$24, %eax
	jmp	.L808
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC33:
	.ascii "output_ctx.num_vertices == count_ctx.num_vertices\0"
	.text
	.p2align 4,,15
	.def	_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex
_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex:
.LFB600:
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
	movaps	%xmm6, 240(%rsp)
	.seh_savexmm	%xmm6, 240
	movaps	%xmm7, 256(%rsp)
	.seh_savexmm	%xmm7, 256
	movaps	%xmm8, 272(%rsp)
	.seh_savexmm	%xmm8, 272
	movaps	%xmm9, 288(%rsp)
	.seh_savexmm	%xmm9, 288
	movaps	%xmm10, 304(%rsp)
	.seh_savexmm	%xmm10, 304
	movaps	%xmm11, 320(%rsp)
	.seh_savexmm	%xmm11, 320
	movaps	%xmm12, 336(%rsp)
	.seh_savexmm	%xmm12, 336
	movaps	%xmm13, 352(%rsp)
	.seh_savexmm	%xmm13, 352
	movaps	%xmm14, 368(%rsp)
	.seh_savexmm	%xmm14, 368
	movaps	%xmm15, 384(%rsp)
	.seh_savexmm	%xmm15, 384
	.seh_endprologue
	movq	8(%rcx), %rsi
	movq	%rcx, %r12
	movq	%r8, 496(%rsp)
	call	_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi
	movq	496(%rsp), %rbx
	testl	%eax, %eax
	movq	$0, (%rbx)
	js	.L944
	cltq
	leaq	(%rsi,%rax), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rcx), %ecx
	sall	$8, %edx
	addl	%ecx, %edx
	testw	%dx, %dx
	jg	.L992
	cmpw	$-1, %dx
	je	.L993
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	testw	%dx, %dx
	jne	.L994
.L923:
	movq	496(%rsp), %rax
	movq	%rbx, (%rax)
.L893:
	movaps	240(%rsp), %xmm6
	movl	%esi, %eax
	movaps	256(%rsp), %xmm7
	movaps	272(%rsp), %xmm8
	movaps	288(%rsp), %xmm9
	movaps	304(%rsp), %xmm10
	movaps	320(%rsp), %xmm11
	movaps	336(%rsp), %xmm12
	movaps	352(%rsp), %xmm13
	movaps	368(%rsp), %xmm14
	movaps	384(%rsp), %xmm15
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
	.p2align 4,,10
.L992:
	leaq	10(%rsi,%rax), %rcx
	movswl	%dx, %edx
	leal	(%rdx,%rdx), %ebx
	movq	%rcx, 80(%rsp)
	movslq	%ebx, %r13
	movl	%ebx, 56(%rsp)
	leaq	(%rax,%r13), %r12
	leaq	10(%rsi,%r12), %rax
	movzbl	(%rax), %edi
	movzbl	1(%rax), %ebp
	leaq	-2(%rcx,%r13), %rax
	movzbl	(%rax), %r14d
	movzbl	1(%rax), %eax
	sall	$8, %r14d
	addl	%eax, %r14d
	movzwl	%r14w, %eax
	leal	1(%rax), %ecx
	movl	%ebx, %eax
	addl	%ecx, %eax
	movl	%ecx, 60(%rsp)
	cltq
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L944
	leaq	0(,%r13,8), %r9
	movzwl	%r14w, %r14d
	sall	$8, %edi
	subq	%r13, %r9
	addq	%r14, %r13
	addl	%ebp, %edi
	leaq	0(,%r13,8), %r10
	movzwl	%di, %edi
	addq	%r9, %r9
	subq	%r13, %r10
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	leaq	12(%r12,%rdi), %rax
	addq	%r10, %r10
	leaq	12(%rbx,%r9), %rdx
	addq	%rsi, %rax
	leaq	26(%rbx,%r10), %r11
	jmp	.L901
	.p2align 4,,10
.L996:
	movzbl	(%rax), %r8d
	testb	$8, %r8b
	jne	.L899
	addq	$1, %rax
.L900:
	movb	%r8b, (%rdx)
	addq	$14, %rdx
	cmpq	%rdx, %r11
	je	.L995
.L901:
	testb	%cl, %cl
	je	.L996
	movb	%r8b, (%rdx)
	addq	$14, %rdx
	subl	$1, %ecx
	cmpq	%rdx, %r11
	jne	.L901
.L995:
	leaq	(%rbx,%r9), %rdx
	xorl	%r8d, %r8d
	leaq	14(%rbx,%r10), %rsi
	jmp	.L905
	.p2align 4,,10
.L998:
	movzbl	(%rax), %ecx
	movl	%ecx, %edi
	negl	%edi
	testb	%r11b, %r11b
	cmove	%edi, %ecx
	addq	$1, %rax
	addl	%ecx, %r8d
.L904:
	movw	%r8w, (%rdx)
	addq	$14, %rdx
	cmpq	%rdx, %rsi
	je	.L997
.L905:
	movzbl	12(%rdx), %ecx
	movl	%ecx, %r11d
	andl	$16, %r11d
	andl	$2, %ecx
	jne	.L998
	testb	%r11b, %r11b
	jne	.L904
	movzbl	(%rax), %ecx
	addq	$14, %rdx
	addq	$2, %rax
	movzbl	-1(%rax), %r11d
	sall	$8, %ecx
	addl	%r11d, %ecx
	movswl	%cx, %ecx
	addl	%ecx, %r8d
	movw	%r8w, -14(%rdx)
	cmpq	%rdx, %rsi
	jne	.L905
.L997:
	leaq	2(%rbx,%r9), %rdx
	xorl	%r8d, %r8d
	leaq	16(%rbx,%r10), %r10
	jmp	.L909
	.p2align 4,,10
.L1000:
	movzbl	(%rax), %ecx
	movl	%ecx, %r11d
	negl	%r11d
	testb	%r9b, %r9b
	cmove	%r11d, %ecx
	addq	$1, %rax
	addl	%ecx, %r8d
.L908:
	movw	%r8w, (%rdx)
	addq	$14, %rdx
	cmpq	%rdx, %r10
	je	.L999
.L909:
	movzbl	10(%rdx), %ecx
	movl	%ecx, %r9d
	andl	$32, %r9d
	andl	$4, %ecx
	jne	.L1000
	testb	%r9b, %r9b
	jne	.L908
	movzbl	(%rax), %ecx
	addq	$14, %rdx
	addq	$2, %rax
	movzbl	-1(%rax), %r9d
	sall	$8, %ecx
	addl	%r9d, %ecx
	movswl	%cx, %ecx
	addl	%ecx, %r8d
	movw	%r8w, -14(%rdx)
	cmpq	%rdx, %r10
	jne	.L909
.L999:
	movl	$0, 92(%rsp)
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	xorl	%r8d, %r8d
	movl	$0, 88(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 44(%rsp)
	movl	$0, 68(%rsp)
	movl	$0, 64(%rsp)
	movl	$0, 76(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 72(%rsp)
	jmp	.L920
	.p2align 4,,10
.L910:
	testb	%r13b, %r13b
	jne	.L918
	testl	%edi, %edi
	je	.L951
	movl	64(%rsp), %edi
	movb	$3, 12(%rcx)
	leaq	14(%rbx,%rax), %rbp
	movl	68(%rsp), %r10d
	movl	%r14d, 64(%rsp)
	movl	%r15d, 68(%rsp)
	leal	(%r14,%rdi), %edx
	movw	%di, 4(%rcx)
	leal	2(%r8), %edi
	sarl	%edx
	movw	%r10w, 6(%rcx)
	movl	%esi, %r8d
	movw	%dx, (%rcx)
	leal	(%r15,%r10), %edx
	sarl	%edx
	movl	%edi, 52(%rsp)
	movl	$1, %edi
	movw	%dx, 2(%rcx)
	.p2align 4,,10
.L917:
	addl	$1, %r12d
	cmpl	%r12d, 60(%rsp)
	jle	.L1001
.L920:
	movl	56(%rsp), %eax
	leal	1(%r8), %esi
	movslq	%r8d, %rcx
	addl	%r12d, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	addq	%rdx, %rdx
	leaq	(%rbx,%rdx), %rax
	movzbl	12(%rax), %r9d
	movswl	(%rax), %r14d
	movswl	2(%rax), %r15d
	leaq	0(,%rcx,8), %rax
	subq	%rcx, %rax
	movl	%r9d, %r13d
	addq	%rax, %rax
	leaq	(%rbx,%rax), %rcx
	andl	$1, %r13d
	cmpl	40(%rsp), %r12d
	jne	.L910
	leal	2(%r8), %r10d
	testl	%r12d, %r12d
	movl	%r10d, 52(%rsp)
	leaq	14(%rbx,%rax), %rbp
	jne	.L1002
.L911:
	notl	%r9d
	movl	%r9d, %eax
	andl	$1, %eax
	testb	%r13b, %r13b
	movl	%eax, 76(%rsp)
	jne	.L950
	leaq	14(%rbx,%rdx), %rax
	movswl	(%rax), %edi
	movswl	2(%rax), %edx
	testb	$1, 12(%rax)
	movl	%edi, 44(%rsp)
	movl	%edx, 48(%rsp)
	jne	.L916
	movl	%edi, %eax
	movl	%r15d, 92(%rsp)
	addl	%r14d, %eax
	movl	%r14d, 88(%rsp)
	sarl	%eax
	movl	%eax, 44(%rsp)
	movl	%edx, %eax
	addl	%r15d, %eax
	sarl	%eax
	movl	%eax, 48(%rsp)
	jmp	.L915
	.p2align 4,,10
.L1009:
	testq	%rbx, %rbx
	je	.L943
	movq	%rbx, %rcx
	call	_ZN5ImGui7MemFreeEPv
.L943:
	movq	104(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L944
	call	_ZN5ImGui7MemFreeEPv
	.p2align 4,,10
.L944:
	xorl	%esi, %esi
	jmp	.L893
	.p2align 4,,10
.L899:
	movzbl	1(%rax), %ecx
	addq	$2, %rax
	jmp	.L900
	.p2align 4,,10
.L918:
	leal	2(%r8), %edx
	testl	%edi, %edi
	movl	%edx, 52(%rsp)
	leaq	14(%rbx,%rax), %rbp
	je	.L919
	movzwl	64(%rsp), %eax
	xorl	%edi, %edi
	addl	$1, %r12d
	movb	$3, 12(%rcx)
	cmpl	%r12d, 60(%rsp)
	movw	%r14w, (%rcx)
	movl	%esi, %r8d
	movw	%r15w, 2(%rcx)
	movw	%ax, 4(%rcx)
	movzwl	68(%rsp), %eax
	movw	%ax, 6(%rcx)
	jg	.L920
	.p2align 4,,10
.L1001:
	movl	76(%rsp), %ecx
	movl	52(%rsp), %esi
	movzwl	44(%rsp), %edx
	movzwl	48(%rsp), %eax
	testl	%ecx, %ecx
	je	.L921
	testl	%edi, %edi
	je	.L922
	movl	64(%rsp), %edi
	movslq	%esi, %r8
	movb	$3, 12(%rbp)
	addl	$1, %esi
	movl	88(%rsp), %ecx
	movl	68(%rsp), %r15d
	movw	%di, 4(%rbp)
	addl	%edi, %ecx
	sarl	%ecx
	movw	%r15w, 6(%rbp)
	movw	%cx, 0(%rbp)
	movl	92(%rsp), %ecx
	addl	%r15d, %ecx
	sarl	%ecx
	movw	%cx, 2(%rbp)
	leaq	0(,%r8,8), %rcx
	subq	%r8, %rcx
	leaq	(%rbx,%rcx,2), %rbp
.L922:
	movw	%ax, 2(%rbp)
	movzwl	88(%rsp), %eax
	movb	$3, 12(%rbp)
	movw	%dx, 0(%rbp)
	movw	%ax, 4(%rbp)
	movzwl	92(%rsp), %eax
	movw	%ax, 6(%rbp)
	jmp	.L923
	.p2align 4,,10
.L950:
	movl	%r15d, 48(%rsp)
	movl	%r14d, 44(%rsp)
.L915:
	movl	72(%rsp), %edi
	movb	$1, 12(%rcx)
	movl	%esi, %r8d
	movzwl	44(%rsp), %eax
	movl	$0, 4(%rcx)
	leal	(%rdi,%rdi), %edx
	addl	$1, %edi
	movw	%ax, (%rcx)
	movslq	%edx, %rdx
	movzwl	48(%rsp), %eax
	addq	80(%rsp), %rdx
	movl	%edi, 72(%rsp)
	xorl	%edi, %edi
	movw	%ax, 2(%rcx)
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	addl	$1, %eax
	movl	%eax, 40(%rsp)
	jmp	.L917
	.p2align 4,,10
.L919:
	movb	$2, 12(%rcx)
	movl	%esi, %r8d
	movw	%r14w, (%rcx)
	movw	%r15w, 2(%rcx)
	movl	$0, 4(%rcx)
	jmp	.L917
	.p2align 4,,10
.L951:
	movq	%rcx, %rbp
	movl	%esi, 52(%rsp)
	movl	$1, %edi
	movl	%r15d, 68(%rsp)
	movl	%r14d, 64(%rsp)
	jmp	.L917
	.p2align 4,,10
.L921:
	testl	%edi, %edi
	jne	.L1003
	movzwl	48(%rsp), %eax
	movb	$2, 12(%rbp)
	movw	%dx, 0(%rbp)
	movl	$0, 4(%rbp)
	movw	%ax, 2(%rbp)
	jmp	.L923
	.p2align 4,,10
.L916:
	addl	$1, %r12d
	movl	%r15d, 92(%rsp)
	movl	%r14d, 88(%rsp)
	jmp	.L915
	.p2align 4,,10
.L994:
	leaq	.LC2(%rip), %rdx
	movl	$1723, %r8d
	leaq	.LC8(%rip), %rcx
	call	_assert
	jmp	.L923
	.p2align 4,,10
.L1002:
	movzwl	44(%rsp), %esi
	leaq	28(%rbx,%rax), %r10
	cmpl	$0, 76(%rsp)
	movzwl	48(%rsp), %r11d
	movw	%si, 40(%rsp)
	leal	3(%r8), %esi
	je	.L912
	testl	%edi, %edi
	je	.L949
	movl	64(%rsp), %edi
	movb	$3, 12(%rcx)
	addl	88(%rsp), %edi
	sarl	%edi
	movw	%di, (%rcx)
	movl	68(%rsp), %edi
	addl	92(%rsp), %edi
	sarl	%edi
	movw	%di, 2(%rcx)
	movzwl	64(%rsp), %edi
	movw	%di, 4(%rcx)
	movzwl	68(%rsp), %edi
	movw	%di, 6(%rcx)
	leal	4(%r8), %edi
	movq	%r10, %rcx
	movq	%rbp, %r8
	movl	%edi, 52(%rsp)
	leaq	42(%rbx,%rax), %rbp
.L913:
	movzwl	40(%rsp), %eax
	movb	$3, 12(%r8)
	movw	%r11w, 2(%r8)
	movw	%ax, (%r8)
	movzwl	88(%rsp), %eax
	movw	%ax, 4(%r8)
	movzwl	92(%rsp), %eax
	movw	%ax, 6(%r8)
	jmp	.L911
	.p2align 4,,10
.L993:
	leaq	10(%rsi,%rax), %r13
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	pxor	%xmm9, %xmm9
	movss	.LC18(%rip), %xmm11
	jmp	.L948
	.p2align 4,,10
.L1007:
	movzbl	0(%r13), %eax
	pxor	%xmm6, %xmm6
	addq	$2, %r13
	pxor	%xmm1, %xmm1
	movzbl	-1(%r13), %edx
	pxor	%xmm13, %xmm13
	pxor	%xmm14, %xmm14
	sall	$8, %eax
	addl	%edx, %eax
	cwtl
	cvtsi2ss	%eax, %xmm6
	mulss	.LC32(%rip), %xmm6
	movaps	%xmm6, %xmm7
.L930:
	movaps	%xmm6, %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm9
	sqrtss	%xmm0, %xmm10
	ja	.L988
.L991:
	movaps	%xmm7, %xmm0
	movaps	%xmm13, %xmm1
	mulss	%xmm7, %xmm0
	mulss	%xmm13, %xmm1
	addss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm9
	sqrtss	%xmm0, %xmm15
	ja	.L1004
.L932:
	movl	68(%r12), %eax
	movzwl	%di, %r14d
	testl	%eax, %eax
	je	.L1005
	xorl	%eax, %eax
	movl	$6, %ecx
	movl	%r14d, %edx
	movl	$1, 112(%rsp)
	leaq	116(%rsp), %rdi
	rep stosq
	leaq	112(%rsp), %r8
	movl	$7, %ecx
	leaq	176(%rsp), %r15
	movl	$0, (%rdi)
	movq	%r15, %rdi
	rep stosq
	movq	%r12, %rcx
	call	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
	testl	%eax, %eax
	jne	.L1006
.L940:
	andl	$32, %ebp
	je	.L923
.L948:
	movq	$0, 104(%rsp)
	movzbl	0(%r13), %ebp
	movzbl	1(%r13), %eax
	movzbl	2(%r13), %edi
	sall	$8, %ebp
	addl	%eax, %ebp
	movzbl	3(%r13), %eax
	sall	$8, %edi
	addl	%eax, %edi
	testb	$2, %bpl
	je	.L926
	testb	$1, %bpl
	movsbl	4(%r13), %eax
	movzbl	5(%r13), %edx
	je	.L927
	sall	$8, %eax
	pxor	%xmm8, %xmm8
	pxor	%xmm12, %xmm12
	addq	$8, %r13
	addl	%edx, %eax
	movzbl	-1(%r13), %edx
	cwtl
	cvtsi2ss	%eax, %xmm8
	movzbl	-2(%r13), %eax
	sall	$8, %eax
	addl	%edx, %eax
	cwtl
	cvtsi2ss	%eax, %xmm12
.L928:
	testb	$8, %bpl
	jne	.L1007
	testb	$64, %bpl
	je	.L931
	pxor	%xmm6, %xmm6
	pxor	%xmm0, %xmm0
	addq	$4, %r13
	movzbl	-4(%r13), %eax
	movzbl	-3(%r13), %edx
	pxor	%xmm1, %xmm1
	pxor	%xmm13, %xmm13
	pxor	%xmm14, %xmm14
	movss	.LC32(%rip), %xmm7
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	-1(%r13), %edx
	cwtl
	cvtsi2ss	%eax, %xmm6
	movzbl	-2(%r13), %eax
	mulss	%xmm7, %xmm6
	sall	$8, %eax
	addl	%edx, %eax
	cwtl
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm0, %xmm7
	jmp	.L930
	.p2align 4,,10
.L1005:
	leaq	104(%rsp), %r8
	movl	%r14d, %edx
	movq	%r12, %rcx
	call	_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex
	movslq	%eax, %rdi
.L937:
	testl	%edi, %edi
	jle	.L940
	movq	104(%rsp), %rdx
	leal	-1(%rdi), %ecx
	leaq	0(,%rcx,8), %rax
	subq	%rcx, %rax
	leaq	14(%rdx), %rcx
	leaq	(%rcx,%rax,2), %r8
	jmp	.L941
	.p2align 4,,10
.L1008:
	addq	$14, %rcx
.L941:
	movswl	(%rdx), %eax
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movaps	%xmm13, %xmm3
	cmpq	%rcx, %r8
	cvtsi2ss	%eax, %xmm1
	movswl	2(%rdx), %eax
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm1, %xmm4
	mulss	%xmm6, %xmm4
	mulss	%xmm14, %xmm1
	mulss	%xmm0, %xmm3
	mulss	%xmm7, %xmm0
	addss	%xmm4, %xmm3
	addss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	addss	%xmm8, %xmm3
	addss	%xmm12, %xmm0
	mulss	%xmm10, %xmm3
	mulss	%xmm15, %xmm0
	cvttss2si	%xmm3, %eax
	movaps	%xmm13, %xmm3
	movw	%ax, (%rdx)
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	movw	%ax, 2(%rdx)
	movswl	4(%rdx), %eax
	cvtsi2ss	%eax, %xmm1
	movswl	6(%rdx), %eax
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm1, %xmm4
	mulss	%xmm6, %xmm4
	mulss	%xmm14, %xmm1
	mulss	%xmm0, %xmm3
	mulss	%xmm7, %xmm0
	addss	%xmm4, %xmm3
	addss	%xmm1, %xmm0
	addss	%xmm8, %xmm3
	addss	%xmm12, %xmm0
	mulss	%xmm10, %xmm3
	mulss	%xmm15, %xmm0
	cvttss2si	%xmm3, %eax
	movw	%ax, 4(%rdx)
	cvttss2si	%xmm0, %eax
	movw	%ax, 6(%rdx)
	movq	%rcx, %rdx
	jne	.L1008
	leal	(%rdi,%rsi), %r15d
	movslq	%r15d, %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L1009
	leaq	0(,%rdi,8), %rax
	subq	%rdi, %rax
	movq	%rax, %rdi
	addq	%rdi, %rdi
	testl	%esi, %esi
	jne	.L1010
	movq	104(%rsp), %rdx
	movq	%rdi, %r8
	movq	%r14, %rcx
	call	memcpy
	testq	%rbx, %rbx
	jne	.L946
.L947:
	movq	104(%rsp), %rcx
	movl	%r15d, %esi
	movq	%r14, %rbx
	call	_ZN5ImGui7MemFreeEPv
	jmp	.L940
	.p2align 4,,10
.L927:
	movsbl	%dl, %edx
	pxor	%xmm8, %xmm8
	pxor	%xmm12, %xmm12
	cvtsi2ss	%eax, %xmm8
	cvtsi2ss	%edx, %xmm12
	addq	$6, %r13
	jmp	.L928
	.p2align 4,,10
.L926:
	movl	$1670, %r8d
	addq	$4, %r13
	pxor	%xmm12, %xmm12
	pxor	%xmm8, %xmm8
	leaq	.LC2(%rip), %rdx
	leaq	.LC8(%rip), %rcx
	call	_assert
	jmp	.L928
	.p2align 4,,10
.L931:
	testb	$-128, %bpl
	je	.L952
	movzbl	0(%r13), %eax
	pxor	%xmm6, %xmm6
	pxor	%xmm14, %xmm14
	pxor	%xmm13, %xmm13
	movzbl	1(%r13), %edx
	pxor	%xmm7, %xmm7
	addq	$8, %r13
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	-5(%r13), %edx
	cwtl
	cvtsi2ss	%eax, %xmm6
	movzbl	-6(%r13), %eax
	mulss	.LC32(%rip), %xmm6
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	-3(%r13), %edx
	cwtl
	cvtsi2ss	%eax, %xmm14
	movzbl	-4(%r13), %eax
	mulss	.LC32(%rip), %xmm14
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	-1(%r13), %edx
	movaps	%xmm14, %xmm1
	mulss	%xmm14, %xmm1
	cwtl
	cvtsi2ss	%eax, %xmm13
	movzbl	-2(%r13), %eax
	mulss	.LC32(%rip), %xmm13
	sall	$8, %eax
	addl	%edx, %eax
	cwtl
	cvtsi2ss	%eax, %xmm7
	mulss	.LC32(%rip), %xmm7
	jmp	.L930
	.p2align 4,,10
.L1010:
	movslq	%esi, %rax
	movq	%rbx, %rdx
	movq	%r14, %rcx
	leaq	0(,%rax,8), %rsi
	subq	%rax, %rsi
	addq	%rsi, %rsi
	movq	%rsi, %r8
	call	memcpy
	movq	104(%rsp), %rdx
	leaq	(%r14,%rsi), %rcx
	movq	%rdi, %r8
	call	memcpy
.L946:
	movq	%rbx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	jmp	.L947
	.p2align 4,,10
.L1006:
	movslq	160(%rsp), %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	%r15, %r8
	movl	%r14d, %edx
	movq	%r12, %rcx
	movq	%rax, 104(%rsp)
	movq	%rax, 216(%rsp)
	call	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
	testl	%eax, %eax
	je	.L940
	movslq	160(%rsp), %rdi
	cmpl	%edi, 224(%rsp)
	je	.L937
	leaq	.LC2(%rip), %rdx
	movl	$2113, %r8d
	leaq	.LC33(%rip), %rcx
	call	_assert
	movslq	224(%rsp), %rdi
	jmp	.L937
	.p2align 4,,10
.L952:
	movaps	%xmm11, %xmm10
	pxor	%xmm13, %xmm13
	movaps	%xmm11, %xmm7
	movaps	%xmm11, %xmm6
	pxor	%xmm14, %xmm14
	movaps	%xmm11, %xmm15
	jmp	.L932
	.p2align 4,,10
.L912:
	testl	%edi, %edi
	jne	.L1011
	movzwl	44(%rsp), %eax
	movb	$2, 12(%rcx)
	movl	$0, 4(%rcx)
	movw	%ax, (%rcx)
	movzwl	48(%rsp), %eax
	movw	%ax, 2(%rcx)
.L990:
	movl	%esi, %eax
	movq	%rbp, %rcx
	movl	52(%rsp), %esi
	movq	%r10, %rbp
	movl	%eax, 52(%rsp)
	jmp	.L911
	.p2align 4,,10
.L1003:
	movzwl	48(%rsp), %eax
	movb	$3, 12(%rbp)
	movw	%dx, 0(%rbp)
	movw	%ax, 2(%rbp)
	movzwl	64(%rsp), %eax
	movw	%ax, 4(%rbp)
	movzwl	68(%rsp), %eax
	movw	%ax, 6(%rbp)
	jmp	.L923
	.p2align 4,,10
.L1011:
	movzwl	44(%rsp), %eax
	movb	$3, 12(%rcx)
	movw	%ax, (%rcx)
	movzwl	48(%rsp), %eax
	movw	%ax, 2(%rcx)
	movzwl	64(%rsp), %eax
	movw	%ax, 4(%rcx)
	movzwl	68(%rsp), %eax
	movw	%ax, 6(%rcx)
	jmp	.L990
	.p2align 4,,10
.L949:
	movl	%esi, %eax
	movq	%rcx, %r8
	movl	52(%rsp), %esi
	movq	%rbp, %rcx
	movl	%eax, 52(%rsp)
	movq	%r10, %rbp
	jmp	.L913
.L1004:
	call	sqrtf
	jmp	.L932
.L988:
	call	sqrtf
	jmp	.L991
	.seh_endproc
	.p2align 4,,15
	.def	stbtt_GetGlyphBitmapBoxSubpixel.constprop.73;	.scl	3;	.type	32;	.endef
	.seh_proc	stbtt_GetGlyphBitmapBoxSubpixel.constprop.73
stbtt_GetGlyphBitmapBoxSubpixel.constprop.73:
.LFB1076:
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
	.seh_endprologue
	movl	68(%rcx), %eax
	movq	272(%rsp), %r12
	movq	280(%rsp), %rbp
	movq	288(%rsp), %rbx
	testl	%eax, %eax
	movq	%rcx, %r13
	movaps	%xmm2, %xmm9
	movq	296(%rsp), %rsi
	movaps	%xmm3, %xmm8
	jne	.L1034
	call	_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi
	testl	%eax, %eax
	js	.L1016
	movq	8(%r13), %r9
	movslq	%eax, %rdx
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	pxor	%xmm6, %xmm6
	leaq	2(%r9,%rdx), %r8
	leaq	4(%r9,%rdx), %rcx
	leaq	6(%r9,%rdx), %r10
	movzbl	(%rcx), %eax
	leaq	8(%r9,%rdx), %r9
	movzbl	(%r8), %edx
	movzbl	1(%r8), %r8d
	movzbl	1(%rcx), %ecx
	sall	$8, %eax
	sall	$8, %edx
	addl	%r8d, %edx
	movzbl	1(%r9), %r8d
	movswl	%dx, %edx
	addl	%ecx, %eax
	movzbl	(%r10), %ecx
	cvtsi2ss	%edx, %xmm1
	movzbl	(%r9), %edx
	cwtl
	movzbl	1(%r10), %r10d
	sall	$8, %ecx
	sall	$8, %edx
	addl	%r8d, %edx
	addl	%r10d, %ecx
	movswl	%dx, %edx
	movswl	%cx, %ecx
	negl	%edx
	cvtsi2ss	%edx, %xmm0
.L1015:
	mulss	%xmm9, %xmm1
	movss	.LC34(%rip), %xmm7
	movss	.LC30(%rip), %xmm5
	movaps	%xmm5, %xmm2
	addss	%xmm6, %xmm1
	movaps	%xmm1, %xmm3
	movaps	%xmm1, %xmm4
	andps	%xmm5, %xmm3
	ucomiss	%xmm3, %xmm7
	jbe	.L1023
	cvttss2si	%xmm1, %edx
	pxor	%xmm3, %xmm3
	andnps	%xmm1, %xmm2
	cvtsi2ss	%edx, %xmm3
	movaps	%xmm3, %xmm10
	cmpnless	%xmm1, %xmm10
	movaps	%xmm10, %xmm4
	movss	.LC18(%rip), %xmm10
	andps	%xmm10, %xmm4
	subss	%xmm4, %xmm3
	movaps	%xmm3, %xmm4
	orps	%xmm2, %xmm4
.L1023:
	mulss	%xmm8, %xmm0
	cvttss2si	%xmm4, %edx
	movaps	%xmm5, %xmm2
	addss	%xmm6, %xmm0
	movl	%edx, (%r12)
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm3
	andps	%xmm5, %xmm1
	ucomiss	%xmm1, %xmm7
	jbe	.L1024
	cvttss2si	%xmm0, %edx
	pxor	%xmm1, %xmm1
	andnps	%xmm3, %xmm2
	cvtsi2ss	%edx, %xmm1
	movaps	%xmm1, %xmm4
	cmpnless	%xmm0, %xmm4
	movaps	%xmm4, %xmm0
	movss	.LC18(%rip), %xmm4
	andps	%xmm4, %xmm0
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
.L1024:
	cvttss2si	%xmm0, %edx
	testq	%rbx, %rbx
	movl	%edx, 0(%rbp)
	je	.L1026
	pxor	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	movaps	%xmm5, %xmm1
	movaps	%xmm0, %xmm2
	mulss	%xmm9, %xmm2
	addss	%xmm6, %xmm2
	movaps	%xmm2, %xmm0
	movaps	%xmm2, %xmm3
	andps	%xmm5, %xmm0
	ucomiss	%xmm0, %xmm7
	ja	.L1035
.L1020:
	cvttss2si	%xmm2, %edx
	movl	%edx, (%rbx)
.L1026:
	testq	%rsi, %rsi
	je	.L1012
	negl	%eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm0, %xmm3
	mulss	%xmm8, %xmm3
	addss	%xmm6, %xmm3
	movaps	%xmm3, %xmm0
	movaps	%xmm3, %xmm1
	andps	%xmm5, %xmm0
	ucomiss	%xmm0, %xmm7
	ja	.L1036
	cvttss2si	%xmm3, %eax
	movl	%eax, (%rsi)
.L1012:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	movaps	128(%rsp), %xmm8
	movaps	144(%rsp), %xmm9
	movaps	160(%rsp), %xmm10
	addq	$184, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L1016:
	testq	%rbx, %rbx
	movl	$0, (%r12)
	movl	$0, 0(%rbp)
	je	.L1017
	movl	$0, (%rbx)
.L1017:
	testq	%rsi, %rsi
	je	.L1012
	movl	$0, (%rsi)
	jmp	.L1012
	.p2align 4,,10
.L1034:
	xorl	%eax, %eax
	movl	$6, %ecx
	movl	$1, 32(%rsp)
	leaq	36(%rsp), %rdi
	rep stosq
	leaq	32(%rsp), %r8
	movq	%r13, %rcx
	movl	$0, (%rdi)
	call	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
	testl	%eax, %eax
	je	.L1027
	movl	68(%rsp), %edx
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ss	56(%rsp), %xmm1
	movl	64(%rsp), %eax
	pxor	%xmm6, %xmm6
	movl	60(%rsp), %ecx
	negl	%edx
	cvtsi2ss	%edx, %xmm0
	jmp	.L1015
	.p2align 4,,10
.L1027:
	xorl	%ecx, %ecx
	pxor	%xmm6, %xmm6
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	jmp	.L1015
	.p2align 4,,10
.L1036:
	cvttss2si	%xmm3, %eax
	pxor	%xmm0, %xmm0
	movss	.LC18(%rip), %xmm2
	andnps	%xmm1, %xmm5
	cvtsi2ss	%eax, %xmm0
	cmpnless	%xmm0, %xmm3
	andps	%xmm2, %xmm3
	addss	%xmm0, %xmm3
	orps	%xmm5, %xmm3
	cvttss2si	%xmm3, %eax
	movl	%eax, (%rsi)
	jmp	.L1012
	.p2align 4,,10
.L1035:
	cvttss2si	%xmm2, %edx
	pxor	%xmm0, %xmm0
	movss	.LC18(%rip), %xmm4
	andnps	%xmm3, %xmm1
	cvtsi2ss	%edx, %xmm0
	cmpnless	%xmm0, %xmm2
	andps	%xmm4, %xmm2
	addss	%xmm0, %xmm2
	orps	%xmm1, %xmm2
	jmp	.L1020
	.seh_endproc
	.section	.text$_Z8snprintfPcyPKcz,"x"
	.linkonce discard
	.p2align 4,,15
	.globl	_Z8snprintfPcyPKcz
	.def	_Z8snprintfPcyPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8snprintfPcyPKcz
_Z8snprintfPcyPKcz:
.LFB175:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%r9, 88(%rsp)
	leaq	88(%rsp), %r9
	movq	%r9, 40(%rsp)
	call	__mingw_vsnprintf
	addq	$56, %rsp
	ret
	.seh_endproc
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList5ClearEv
	.def	_ZN10ImDrawList5ClearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList5ClearEv
_ZN10ImDrawList5ClearEv:
.LFB677:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	4(%rcx), %r11d
	testl	%r11d, %r11d
	movq	%rcx, %rbx
	jns	.L1039
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1040
	movslq	(%rbx), %rax
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	leaq	(%rax,%rax,2), %r8
	salq	$4, %r8
	call	memcpy
	movq	8(%rbx), %rcx
.L1040:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 8(%rbx)
	movl	$0, 4(%rbx)
.L1039:
	movl	20(%rbx), %eax
	movl	$0, (%rbx)
	testl	%eax, %eax
	js	.L1078
	movl	36(%rbx), %r9d
	movl	$0, 16(%rbx)
	testl	%r9d, %r9d
	jns	.L1041
.L1044:
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	40(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1043
	movslq	32(%rbx), %rax
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$2, %r8
	call	memcpy
	movq	40(%rbx), %rcx
.L1043:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 40(%rbx)
	movl	$0, 36(%rbx)
.L1041:
	movl	84(%rbx), %r8d
	movl	$0, 32(%rbx)
	movl	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movq	$0, 72(%rbx)
	testl	%r8d, %r8d
	jns	.L1076
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	88(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1047
	movslq	80(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	88(%rbx), %rcx
.L1047:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 88(%rbx)
	movl	$0, 84(%rbx)
.L1076:
	movl	100(%rbx), %ecx
	movl	$0, 80(%rbx)
	testl	%ecx, %ecx
	jns	.L1077
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	104(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1049
	movslq	96(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	104(%rbx), %rcx
.L1049:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 104(%rbx)
	movl	$0, 100(%rbx)
.L1077:
	movl	116(%rbx), %edx
	movl	$0, 96(%rbx)
	testl	%edx, %edx
	jns	.L1051
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1052
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L1052:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L1051:
	movabsq	$4294967296, %rax
	movl	$0, 112(%rbx)
	movq	%rax, 128(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L1078:
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1054
	movslq	16(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%rbx), %rcx
.L1054:
	call	_ZN5ImGui7MemFreeEPv
	movl	36(%rbx), %r10d
	movq	%rsi, 24(%rbx)
	movq	$0, 16(%rbx)
	testl	%r10d, %r10d
	js	.L1044
	jmp	.L1041
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC35:
	.ascii "C:/libraries/include/imgui/imgui.h\0"
.LC36:
	.ascii "i < Size\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList15ClearFreeMemoryEv
	.def	_ZN10ImDrawList15ClearFreeMemoryEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList15ClearFreeMemoryEv
_ZN10ImDrawList15ClearFreeMemoryEv:
.LFB678:
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
	movq	%rcx, %rbx
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L1080
	movq	$0, (%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 8(%rbx)
.L1080:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1081
	movq	$0, 16(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 24(%rbx)
.L1081:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1082
	movq	$0, 32(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 40(%rbx)
.L1082:
	movq	88(%rbx), %rcx
	movl	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movq	$0, 72(%rbx)
	testq	%rcx, %rcx
	je	.L1083
	movq	$0, 80(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 88(%rbx)
.L1083:
	movq	104(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1084
	movq	$0, 96(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 104(%rbx)
.L1084:
	movq	120(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1085
	movq	$0, 112(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 120(%rbx)
.L1085:
	movabsq	$4294967296, %rax
	movq	%rax, 128(%rbx)
	movl	136(%rbx), %eax
	testl	%eax, %eax
	jle	.L1086
	leaq	.LC35(%rip), %r13
	xorl	%edi, %edi
	xorl	%esi, %esi
	leaq	.LC36(%rip), %r12
	jmp	.L1087
	.p2align 4,,10
.L1088:
	cmpl	%eax, %esi
	jge	.L1120
.L1089:
	movq	144(%rbx), %rbp
	addq	%rdi, %rbp
	movq	8(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L1090
	movq	$0, 0(%rbp)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 8(%rbp)
.L1090:
	cmpl	%esi, 136(%rbx)
	jle	.L1121
.L1091:
	movq	144(%rbx), %rbp
	addq	%rdi, %rbp
	movq	24(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L1092
	movq	$0, 16(%rbp)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 24(%rbp)
.L1092:
	movl	136(%rbx), %eax
	addl	$1, %esi
	addq	$32, %rdi
	cmpl	%esi, %eax
	jle	.L1086
.L1087:
	testl	%esi, %esi
	jne	.L1088
	movq	144(%rbx), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movl	136(%rbx), %eax
	cmpl	%eax, %esi
	jl	.L1089
.L1120:
	movl	$856, %r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_assert
	jmp	.L1089
	.p2align 4,,10
.L1121:
	movl	$856, %r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_assert
	jmp	.L1091
	.p2align 4,,10
.L1086:
	movq	144(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1079
	movq	$0, 136(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 144(%rbx)
.L1079:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC37:
	.ascii "draw_cmd.ClipRect.x <= draw_cmd.ClipRect.z && draw_cmd.ClipRect.y <= draw_cmd.ClipRect.w\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList10AddDrawCmdEv
	.def	_ZN10ImDrawList10AddDrawCmdEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList10AddDrawCmdEv
_ZN10ImDrawList10AddDrawCmdEv:
.LFB679:
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
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	.seh_endprologue
	leaq	_ZL13GNullClipRect(%rip), %rax
	movslq	80(%rcx), %rdx
	testl	%edx, %edx
	movq	%rcx, %rsi
	je	.L1123
	movq	88(%rcx), %rax
	salq	$4, %rdx
	leaq	-16(%rax,%rdx), %rax
.L1123:
	movss	(%rax), %xmm7
	xorl	%edi, %edi
	movss	4(%rax), %xmm9
	movss	8(%rax), %xmm6
	movss	12(%rax), %xmm8
	movslq	96(%rsi), %rax
	testl	%eax, %eax
	je	.L1124
	movq	104(%rsi), %rdx
	movq	-8(%rdx,%rax,8), %rdi
.L1124:
	ucomiss	%xmm7, %xmm6
	jb	.L1125
	ucomiss	%xmm9, %xmm8
	jnb	.L1127
.L1125:
	leaq	.LC6(%rip), %rdx
	movl	$171, %r8d
	leaq	.LC37(%rip), %rcx
	call	_assert
.L1127:
	movslq	(%rsi), %rax
	cmpl	4(%rsi), %eax
	je	.L1128
	movq	8(%rsi), %rbx
.L1129:
	leal	1(%rax), %edx
	leaq	(%rax,%rax,2), %rax
	movl	%edx, (%rsi)
	salq	$4, %rax
	addq	%rbx, %rax
	movl	$0, (%rax)
	movss	%xmm7, 4(%rax)
	movss	%xmm9, 8(%rax)
	movss	%xmm6, 12(%rax)
	movss	%xmm8, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L1128:
	leal	1(%rax), %ebp
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L1142
.L1130:
	cmpl	%edx, %ebp
	cmovl	%edx, %ebp
	movslq	%ebp, %rax
	leaq	(%rax,%rax,2), %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rsi), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L1131
	movslq	(%rsi), %rax
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	leaq	(%rax,%rax,2), %r8
	salq	$4, %r8
	call	memcpy
	movq	8(%rsi), %rcx
.L1131:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rbx, 8(%rsi)
	movslq	(%rsi), %rax
	movl	%ebp, 4(%rsi)
	jmp	.L1129
	.p2align 4,,10
.L1142:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L1130
	.seh_endproc
	.section .rdata,"dr"
.LC38:
	.ascii "Size > 0\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList11AddCallbackEPFvPKS_PK9ImDrawCmdEPv
	.def	_ZN10ImDrawList11AddCallbackEPFvPKS_PK9ImDrawCmdEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList11AddCallbackEPFvPKS_PK9ImDrawCmdEPv
_ZN10ImDrawList11AddCallbackEPFvPKS_PK9ImDrawCmdEPv:
.LFB680:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movslq	(%rcx), %rax
	cmpl	$0, %eax
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%r8, %rsi
	je	.L1148
	jle	.L1154
.L1147:
	movq	8(%rbx), %rdx
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L1148
	movl	(%rax), %edx
	testl	%edx, %edx
	je	.L1155
	.p2align 4,,10
.L1148:
	movq	%rbx, %rcx
	call	_ZN10ImDrawList10AddDrawCmdEv
	movslq	(%rbx), %rax
	testl	%eax, %eax
	jle	.L1156
.L1145:
	movq	8(%rbx), %rdx
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
.L1149:
	movq	%rbx, %rcx
	movq	%rdi, 32(%rax)
	movq	%rsi, 40(%rax)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN10ImDrawList10AddDrawCmdEv
	.p2align 4,,10
.L1156:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movslq	(%rbx), %rax
	jmp	.L1145
	.p2align 4,,10
.L1155:
	cmpq	$0, 32(%rax)
	jne	.L1148
	jmp	.L1149
	.p2align 4,,10
.L1154:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movslq	(%rbx), %rax
	jmp	.L1147
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList14UpdateClipRectEv
	.def	_ZN10ImDrawList14UpdateClipRectEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList14UpdateClipRectEv
_ZN10ImDrawList14UpdateClipRectEv:
.LFB681:
	subq	$24, %rsp
	.seh_stackalloc	24
	.seh_endprologue
	leaq	_ZL13GNullClipRect(%rip), %rdx
	movslq	80(%rcx), %rax
	testl	%eax, %eax
	je	.L1158
	movq	88(%rcx), %rdx
	salq	$4, %rax
	leaq	-16(%rdx,%rax), %rdx
.L1158:
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movl	(%rcx), %edx
	testl	%edx, %edx
	jle	.L1159
	movq	8(%rcx), %r8
	movslq	%edx, %rax
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	leaq	-48(%r8,%rax), %rax
	testq	%rax, %rax
	je	.L1159
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	je	.L1160
	movq	(%rsp), %r11
	leaq	4(%rax), %r9
	cmpq	%r11, 4(%rax)
	je	.L1188
.L1159:
	addq	$24, %rsp
	jmp	_ZN10ImDrawList10AddDrawCmdEv
	.p2align 4,,10
.L1188:
	movq	8(%rsp), %r10
	cmpq	%r10, 8(%r9)
	jne	.L1159
	.p2align 4,,10
.L1160:
	cmpq	$0, 32(%rax)
	jne	.L1159
	cmpl	$1, %edx
	je	.L1164
	leaq	-48(%rax), %r9
	cmpq	$48, %rax
	je	.L1164
	testl	%r8d, %r8d
	jne	.L1164
	addq	$4, %r9
	movq	(%rsp), %r10
	cmpq	%r10, -44(%rax)
	je	.L1189
	.p2align 4,,10
.L1164:
	movq	(%rsp), %r9
	movq	8(%rsp), %r10
	movq	%r9, 4(%rax)
	movq	%r10, 12(%rax)
.L1157:
	addq	$24, %rsp
	ret
	.p2align 4,,10
.L1189:
	movq	8(%rsp), %r10
	cmpq	%r10, 8(%r9)
	jne	.L1164
	movslq	96(%rcx), %r8
	xorl	%r9d, %r9d
	movq	-24(%rax), %r10
	testl	%r8d, %r8d
	je	.L1167
	movq	104(%rcx), %r9
	movq	-8(%r9,%r8,8), %r9
.L1167:
	cmpq	%r9, %r10
	jne	.L1164
	cmpq	$0, -16(%rax)
	jne	.L1164
	subl	$1, %edx
	movl	%edx, (%rcx)
	jmp	.L1157
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList15UpdateTextureIDEv
	.def	_ZN10ImDrawList15UpdateTextureIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList15UpdateTextureIDEv
_ZN10ImDrawList15UpdateTextureIDEv:
.LFB682:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%esi, %esi
	movslq	96(%rcx), %rax
	testl	%eax, %eax
	movq	%rcx, %rbx
	je	.L1191
	movq	104(%rcx), %rdx
	movq	-8(%rdx,%rax,8), %rsi
.L1191:
	movl	(%rbx), %eax
	cmpl	$0, %eax
	je	.L1194
	jle	.L1211
.L1193:
	movq	8(%rbx), %rcx
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	salq	$4, %rdx
	leaq	-48(%rcx,%rdx), %rdx
	testq	%rdx, %rdx
	je	.L1194
	movl	(%rdx), %ecx
	testl	%ecx, %ecx
	je	.L1195
	cmpq	%rsi, 24(%rdx)
	je	.L1195
.L1194:
	movq	%rbx, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZN10ImDrawList10AddDrawCmdEv
	.p2align 4,,10
.L1195:
	cmpq	$0, 32(%rdx)
	jne	.L1194
	cmpl	$1, %eax
	jle	.L1196
	movq	%rdx, %rcx
	subq	$48, %rcx
	je	.L1196
	cmpq	%rsi, -24(%rdx)
	jne	.L1196
	movslq	80(%rbx), %r8
	leaq	_ZL13GNullClipRect(%rip), %r9
	testl	%r8d, %r8d
	je	.L1197
	movq	88(%rbx), %r9
	salq	$4, %r8
	leaq	-16(%r9,%r8), %r9
.L1197:
	addq	$4, %rcx
	movq	(%r9), %r10
	cmpq	%r10, -44(%rdx)
	jne	.L1196
	movq	8(%r9), %r11
	cmpq	%r11, 8(%rcx)
	jne	.L1196
	cmpq	$0, -16(%rdx)
	jne	.L1196
	subl	$1, %eax
	movl	%eax, (%rbx)
	jmp	.L1190
	.p2align 4,,10
.L1211:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movl	(%rbx), %eax
	jmp	.L1193
	.p2align 4,,10
.L1196:
	movq	%rsi, 24(%rdx)
.L1190:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b
	.def	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b
_ZN10ImDrawList12PushClipRectE6ImVec2S0_b:
.LFB683:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	.seh_endprologue
	movq	%r8, %rax
	movq	%rcx, %rsi
	movd	%r8d, %xmm6
	shrq	$32, %rax
	movd	%edx, %xmm7
	movd	%eax, %xmm8
	movq	%rdx, %rax
	shrq	$32, %rax
	testb	%r9b, %r9b
	movd	%eax, %xmm9
	movslq	80(%rcx), %rax
	je	.L1213
	testl	%eax, %eax
	jne	.L1239
.L1213:
	ucomiss	%xmm6, %xmm7
	jb	.L1217
	movaps	%xmm7, %xmm6
.L1217:
	ucomiss	%xmm8, %xmm9
	jb	.L1219
	movaps	%xmm9, %xmm8
.L1219:
	cmpl	%eax, 84(%rsi)
	je	.L1221
	movq	88(%rsi), %rbx
.L1222:
	leal	1(%rax), %edx
	salq	$4, %rax
	movq	%rsi, %rcx
	addq	%rbx, %rax
	movl	%edx, 80(%rsi)
	movss	%xmm7, (%rax)
	movss	%xmm9, 4(%rax)
	movss	%xmm6, 8(%rax)
	movss	%xmm8, 12(%rax)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN10ImDrawList14UpdateClipRectEv
	.p2align 4,,10
.L1239:
	movq	88(%rcx), %rcx
	movslq	%eax, %rdx
	salq	$4, %rdx
	leaq	-16(%rcx,%rdx), %rdx
	movss	(%rdx), %xmm3
	movss	4(%rdx), %xmm2
	movss	8(%rdx), %xmm1
	maxss	%xmm7, %xmm3
	movss	12(%rdx), %xmm0
	maxss	%xmm9, %xmm2
	minss	%xmm6, %xmm1
	minss	%xmm8, %xmm0
	movaps	%xmm3, %xmm7
	movaps	%xmm2, %xmm9
	movaps	%xmm1, %xmm6
	movaps	%xmm0, %xmm8
	jmp	.L1213
	.p2align 4,,10
.L1221:
	leal	1(%rax), %ecx
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L1240
.L1223:
	cmpl	%edx, %ecx
	movl	%edx, %edi
	cmovge	%ecx, %edi
	movslq	%edi, %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	88(%rsi), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L1224
	movslq	80(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	88(%rsi), %rcx
.L1224:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rbx, 88(%rsi)
	movslq	80(%rsi), %rax
	movl	%edi, 84(%rsi)
	jmp	.L1222
	.p2align 4,,10
.L1240:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L1223
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList22PushClipRectFullScreenEv
	.def	_ZN10ImDrawList22PushClipRectFullScreenEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList22PushClipRectFullScreenEv
_ZN10ImDrawList22PushClipRectFullScreenEv:
.LFB684:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	.seh_endprologue
	movss	8+_ZL13GNullClipRect(%rip), %xmm6
	movss	_ZL13GNullClipRect(%rip), %xmm7
	movss	12+_ZL13GNullClipRect(%rip), %xmm8
	movss	4+_ZL13GNullClipRect(%rip), %xmm9
	ucomiss	%xmm6, %xmm7
	movq	%rcx, %rsi
	jb	.L1242
	movaps	%xmm7, %xmm6
.L1242:
	ucomiss	%xmm8, %xmm9
	jb	.L1244
	movaps	%xmm9, %xmm8
.L1244:
	movslq	80(%rsi), %rax
	cmpl	84(%rsi), %eax
	je	.L1246
	movq	88(%rsi), %rbx
.L1247:
	leal	1(%rax), %edx
	salq	$4, %rax
	movq	%rsi, %rcx
	addq	%rbx, %rax
	movl	%edx, 80(%rsi)
	movss	%xmm7, (%rax)
	movss	%xmm9, 4(%rax)
	movss	%xmm6, 8(%rax)
	movss	%xmm8, 12(%rax)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN10ImDrawList14UpdateClipRectEv
	.p2align 4,,10
.L1246:
	leal	1(%rax), %ecx
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L1257
.L1248:
	cmpl	%edx, %ecx
	movl	%edx, %edi
	cmovge	%ecx, %edi
	movslq	%edi, %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	88(%rsi), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L1249
	movslq	80(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	88(%rsi), %rcx
.L1249:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rbx, 88(%rsi)
	movslq	80(%rsi), %rax
	movl	%edi, 84(%rsi)
	jmp	.L1247
	.p2align 4,,10
.L1257:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L1248
	.seh_endproc
	.section .rdata,"dr"
.LC39:
	.ascii "_ClipRectStack.Size > 0\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList11PopClipRectEv
	.def	_ZN10ImDrawList11PopClipRectEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList11PopClipRectEv
_ZN10ImDrawList11PopClipRectEv:
.LFB685:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	80(%rcx), %eax
	testl	%eax, %eax
	movq	%rcx, %rbx
	jle	.L1260
.L1259:
	subl	$1, %eax
	movq	%rbx, %rcx
	movl	%eax, 80(%rbx)
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN10ImDrawList14UpdateClipRectEv
	.p2align 4,,10
.L1260:
	leaq	.LC6(%rip), %rdx
	movl	$259, %r8d
	leaq	.LC39(%rip), %rcx
	call	_assert
	movl	80(%rbx), %eax
	testl	%eax, %eax
	jg	.L1259
	leaq	.LC35(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movl	80(%rbx), %eax
	jmp	.L1259
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList13PushTextureIDERKPv
	.def	_ZN10ImDrawList13PushTextureIDERKPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList13PushTextureIDERKPv
_ZN10ImDrawList13PushTextureIDERKPv:
.LFB686:
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
	movslq	96(%rcx), %rax
	cmpl	100(%rcx), %eax
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	je	.L1262
	movq	104(%rcx), %rsi
.L1263:
	leal	1(%rax), %edx
	movq	%rbx, %rcx
	movl	%edx, 96(%rbx)
	movq	0(%rbp), %rdx
	movq	%rdx, (%rsi,%rax,8)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN10ImDrawList15UpdateTextureIDEv
	.p2align 4,,10
.L1262:
	leal	1(%rax), %ecx
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L1271
.L1264:
	cmpl	%edx, %ecx
	movl	%edx, %edi
	cmovge	%ecx, %edi
	movslq	%edi, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	104(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1265
	movslq	96(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	104(%rbx), %rcx
.L1265:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 104(%rbx)
	movslq	96(%rbx), %rax
	movl	%edi, 100(%rbx)
	jmp	.L1263
	.p2align 4,,10
.L1271:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L1264
	.seh_endproc
	.section .rdata,"dr"
.LC40:
	.ascii "_TextureIdStack.Size > 0\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList12PopTextureIDEv
	.def	_ZN10ImDrawList12PopTextureIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList12PopTextureIDEv
_ZN10ImDrawList12PopTextureIDEv:
.LFB687:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	96(%rcx), %eax
	testl	%eax, %eax
	movq	%rcx, %rbx
	jle	.L1274
.L1273:
	subl	$1, %eax
	movq	%rbx, %rcx
	movl	%eax, 96(%rbx)
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN10ImDrawList15UpdateTextureIDEv
	.p2align 4,,10
.L1274:
	leaq	.LC6(%rip), %rdx
	movl	$272, %r8d
	leaq	.LC40(%rip), %rcx
	call	_assert
	movl	96(%rbx), %eax
	testl	%eax, %eax
	jg	.L1273
	leaq	.LC35(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movl	96(%rbx), %eax
	jmp	.L1273
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC41:
	.ascii "_ChannelsCurrent == 0 && _ChannelsCount == 1\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList13ChannelsSplitEi
	.def	_ZN10ImDrawList13ChannelsSplitEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList13ChannelsSplitEi
_ZN10ImDrawList13ChannelsSplitEi:
.LFB688:
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
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	movaps	%xmm8, 80(%rsp)
	.seh_savexmm	%xmm8, 80
	movaps	%xmm9, 96(%rsp)
	.seh_savexmm	%xmm9, 96
	.seh_endprologue
	movabsq	$4294967296, %rax
	cmpq	%rax, 128(%rcx)
	movq	%rcx, %rbx
	movl	%edx, %ebp
	je	.L1276
	leaq	.LC6(%rip), %rdx
	movl	$279, %r8d
	leaq	.LC41(%rip), %rcx
	call	_assert
.L1276:
	movl	136(%rbx), %r12d
	cmpl	%ebp, %r12d
	movl	%r12d, %eax
	jl	.L1336
	testl	%eax, %eax
	movl	%ebp, 132(%rbx)
	jle	.L1337
.L1282:
	movq	144(%rbx), %rax
	cmpl	$1, %ebp
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	jle	.L1275
	cmpl	$1, %r12d
	jg	.L1338
	movl	$1, %esi
.L1284:
	leaq	.LC35(%rip), %r12
	movslq	%esi, %r14
	leaq	.LC36(%rip), %r13
	salq	$5, %r14
	jmp	.L1308
	.p2align 4,,10
.L1298:
	movq	144(%rbx), %rax
	addq	%r14, %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	cmpl	%esi, 136(%rbx)
	jle	.L1339
.L1299:
	movq	144(%rbx), %rax
	movl	(%rax,%r14), %ecx
	testl	%ecx, %ecx
	je	.L1340
	addl	$1, %esi
	addq	$32, %r14
	cmpl	%esi, %ebp
	jle	.L1275
.L1308:
	cmpl	136(%rbx), %esi
	jl	.L1298
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%r13, %rcx
	call	_assert
	jmp	.L1298
	.p2align 4,,10
.L1340:
	movslq	80(%rbx), %rax
	testl	%eax, %eax
	jle	.L1341
.L1301:
	movq	88(%rbx), %rdx
	salq	$4, %rax
	leaq	-16(%rdx,%rax), %rax
	movss	(%rax), %xmm9
	movss	4(%rax), %xmm8
	movss	8(%rax), %xmm7
	movss	12(%rax), %xmm6
	movslq	96(%rbx), %rax
	testl	%eax, %eax
	jle	.L1342
.L1302:
	movq	104(%rbx), %rdx
	cmpl	%esi, 136(%rbx)
	movq	-8(%rdx,%rax,8), %r15
	jle	.L1343
.L1303:
	movq	144(%rbx), %r10
	addq	%r14, %r10
	movslq	(%r10), %rax
	cmpl	4(%r10), %eax
	je	.L1304
	movq	8(%r10), %rdi
.L1305:
	leal	1(%rax), %edx
	addl	$1, %esi
	addq	$32, %r14
	leaq	(%rax,%rax,2), %rax
	movl	%edx, (%r10)
	salq	$4, %rax
	addq	%rdi, %rax
	cmpl	%esi, %ebp
	movl	$0, (%rax)
	movss	%xmm9, 4(%rax)
	movss	%xmm8, 8(%rax)
	movss	%xmm7, 12(%rax)
	movss	%xmm6, 16(%rax)
	movq	%r15, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	jg	.L1308
.L1275:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	movaps	96(%rsp), %xmm9
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
.L1339:
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%r13, %rcx
	call	_assert
	jmp	.L1299
.L1338:
	cmpl	%ebp, %r12d
	movl	$32, %r14d
	movl	$1, %esi
	movl	%ebp, 200(%rsp)
	cmovg	%ebp, %r12d
	leaq	.LC35(%rip), %r13
	jmp	.L1297
	.p2align 4,,10
.L1285:
	movq	144(%rbx), %rdi
	addq	%r14, %rdi
	movl	4(%rdi), %edx
	testl	%edx, %edx
	js	.L1344
	movl	$0, (%rdi)
	cmpl	136(%rbx), %esi
	jge	.L1345
.L1286:
	movq	144(%rbx), %rdi
	addq	%r14, %rdi
	movl	20(%rdi), %eax
	testl	%eax, %eax
	js	.L1346
.L1316:
	movl	$0, 16(%rdi)
	cmpl	136(%rbx), %esi
	jge	.L1347
.L1287:
	movq	144(%rbx), %rax
	movl	(%rax,%r14), %r8d
	testl	%r8d, %r8d
	je	.L1348
	addl	$1, %esi
	addq	$32, %r14
	cmpl	%r12d, %esi
	jge	.L1349
.L1297:
	cmpl	136(%rbx), %esi
	jl	.L1285
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	movq	%r13, %rdx
	call	_assert
	jmp	.L1285
	.p2align 4,,10
.L1348:
	movslq	80(%rbx), %rax
	testl	%eax, %eax
	jle	.L1350
.L1289:
	movq	88(%rbx), %rdx
	salq	$4, %rax
	leaq	-16(%rdx,%rax), %rax
	movss	(%rax), %xmm9
	movss	4(%rax), %xmm8
	movss	8(%rax), %xmm7
	movss	12(%rax), %xmm6
	movslq	96(%rbx), %rax
	testl	%eax, %eax
	jle	.L1351
.L1290:
	movq	104(%rbx), %rdx
	cmpl	136(%rbx), %esi
	movq	-8(%rdx,%rax,8), %rbp
	jge	.L1352
.L1291:
	movq	144(%rbx), %r10
	addq	%r14, %r10
	movslq	(%r10), %rax
	cmpl	4(%r10), %eax
	je	.L1292
	movq	8(%r10), %rdi
.L1293:
	leal	1(%rax), %edx
	addl	$1, %esi
	addq	$32, %r14
	leaq	(%rax,%rax,2), %rax
	movl	%edx, (%r10)
	salq	$4, %rax
	addq	%rdi, %rax
	cmpl	%r12d, %esi
	movl	$0, (%rax)
	movss	%xmm9, 4(%rax)
	movss	%xmm8, 8(%rax)
	movss	%xmm7, 12(%rax)
	movss	%xmm6, 16(%rax)
	movq	%rbp, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	jl	.L1297
.L1349:
	movl	200(%rsp), %ebp
	cmpl	%esi, %ebp
	jg	.L1284
	jmp	.L1275
	.p2align 4,,10
.L1347:
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	movq	%r13, %rdx
	call	_assert
	jmp	.L1287
	.p2align 4,,10
.L1346:
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rdi), %rcx
	movq	%rax, %r15
	testq	%rcx, %rcx
	je	.L1314
	movslq	16(%rdi), %r8
	movq	%rcx, %rdx
	movq	%r15, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%rdi), %rcx
.L1314:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r15, 24(%rdi)
	movl	$0, 20(%rdi)
	jmp	.L1316
	.p2align 4,,10
.L1344:
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rdi), %rcx
	movq	%rax, %r15
	testq	%rcx, %rcx
	je	.L1310
	movslq	(%rdi), %rax
	movq	%rcx, %rdx
	movq	%r15, %rcx
	leaq	(%rax,%rax,2), %r8
	salq	$4, %r8
	call	memcpy
	movq	8(%rdi), %rcx
.L1310:
	call	_ZN5ImGui7MemFreeEPv
	movl	$0, 4(%rdi)
	movl	$0, (%rdi)
	cmpl	136(%rbx), %esi
	movq	%r15, 8(%rdi)
	jl	.L1286
	.p2align 4,,10
.L1345:
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	movq	%r13, %rdx
	call	_assert
	jmp	.L1286
	.p2align 4,,10
.L1304:
	leal	1(%rax), %ecx
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1306
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1306:
	cmpl	%edx, %ecx
	movq	%r10, 32(%rsp)
	cmovge	%ecx, %edx
	movslq	%edx, %rax
	movl	%edx, 44(%rsp)
	leaq	(%rax,%rax,2), %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	32(%rsp), %r10
	movq	%rax, %rdi
	movq	8(%r10), %rcx
	testq	%rcx, %rcx
	je	.L1307
	movslq	(%r10), %rax
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	leaq	(%rax,%rax,2), %r8
	salq	$4, %r8
	call	memcpy
	movq	32(%rsp), %r10
	movq	8(%r10), %rcx
.L1307:
	movq	%r10, 32(%rsp)
	call	_ZN5ImGui7MemFreeEPv
	movq	32(%rsp), %r10
	movl	44(%rsp), %eax
	movq	%rdi, 8(%r10)
	movl	%eax, 4(%r10)
	movslq	(%r10), %rax
	jmp	.L1305
	.p2align 4,,10
.L1292:
	leal	1(%rax), %r15d
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1294
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1294:
	cmpl	%edx, %r15d
	movq	%r10, 32(%rsp)
	cmovl	%edx, %r15d
	movslq	%r15d, %rax
	leaq	(%rax,%rax,2), %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	32(%rsp), %r10
	movq	%rax, %rdi
	movq	8(%r10), %rcx
	testq	%rcx, %rcx
	je	.L1295
	movslq	(%r10), %rax
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	leaq	(%rax,%rax,2), %r8
	salq	$4, %r8
	call	memcpy
	movq	32(%rsp), %r10
	movq	8(%r10), %rcx
.L1295:
	movq	%r10, 32(%rsp)
	call	_ZN5ImGui7MemFreeEPv
	movq	32(%rsp), %r10
	movq	%rdi, 8(%r10)
	movslq	(%r10), %rax
	movl	%r15d, 4(%r10)
	jmp	.L1293
	.p2align 4,,10
.L1343:
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%r13, %rcx
	call	_assert
	jmp	.L1303
	.p2align 4,,10
.L1352:
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	movq	%r13, %rdx
	call	_assert
	jmp	.L1291
	.p2align 4,,10
.L1350:
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	movq	%r13, %rdx
	call	_assert
	movslq	80(%rbx), %rax
	jmp	.L1289
	.p2align 4,,10
.L1342:
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	movq	%r12, %rdx
	call	_assert
	movslq	96(%rbx), %rax
	jmp	.L1302
	.p2align 4,,10
.L1351:
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	movq	%r13, %rdx
	call	_assert
	movslq	96(%rbx), %rax
	jmp	.L1290
	.p2align 4,,10
.L1341:
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	movq	%r12, %rdx
	call	_assert
	movslq	80(%rbx), %rax
	jmp	.L1301
	.p2align 4,,10
.L1336:
	movl	140(%rbx), %eax
	cmpl	%eax, %ebp
	jle	.L1278
	testl	%eax, %eax
	movl	$8, %esi
	je	.L1279
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
.L1279:
	cmpl	%esi, %ebp
	jge	.L1319
	cmpl	%esi, %eax
	jl	.L1280
.L1278:
	movl	%ebp, %eax
	movl	%ebp, 136(%rbx)
	testl	%eax, %eax
	movl	%ebp, 132(%rbx)
	jg	.L1282
.L1337:
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC36(%rip), %rcx
	call	_assert
	jmp	.L1282
	.p2align 4,,10
.L1319:
	movl	%ebp, %esi
.L1280:
	movslq	%esi, %rcx
	salq	$5, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	144(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L1281
	movslq	136(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$5, %r8
	call	memcpy
	movq	144(%rbx), %rcx
.L1281:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rdi, 144(%rbx)
	movl	%esi, 140(%rbx)
	jmp	.L1278
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList13ChannelsMergeEv
	.def	_ZN10ImDrawList13ChannelsMergeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList13ChannelsMergeEv
_ZN10ImDrawList13ChannelsMergeEv:
.LFB692:
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
	cmpl	$1, 132(%rcx)
	movq	%rcx, %rbx
	jle	.L1353
	movslq	128(%rcx), %rax
	testl	%eax, %eax
	je	.L1355
	movq	(%rcx), %r9
	salq	$5, %rax
	movq	8(%rcx), %r10
	addq	144(%rcx), %rax
	movq	%r9, (%rax)
	movq	%r10, 8(%rax)
	movslq	128(%rcx), %rax
	movq	16(%rcx), %r9
	movq	24(%rcx), %r10
	salq	$5, %rax
	addq	144(%rcx), %rax
	movq	%r9, 16(%rax)
	movq	%r10, 24(%rax)
	movq	144(%rcx), %rax
	movl	$0, 128(%rcx)
	movq	(%rax), %r9
	movq	8(%rax), %r10
	movq	%r9, (%rcx)
	movq	%r10, 8(%rcx)
	movq	16(%rax), %rdx
	movq	24(%rax), %rcx
	movslq	%edx, %rax
	movq	%rdx, 16(%rbx)
	leaq	(%rcx,%rax,2), %rax
	movq	%rcx, 24(%rbx)
	movq	%rax, 72(%rbx)
	movl	(%rbx), %eax
	testl	%eax, %eax
	jne	.L1380
.L1356:
	cmpl	$1, 132(%rbx)
	jle	.L1382
.L1381:
	movl	$32, %r15d
	movl	$1, %esi
	xorl	%edi, %edi
	leaq	.LC35(%rip), %r12
	xorl	%r14d, %r14d
	leaq	.LC36(%rip), %r13
	jmp	.L1364
	.p2align 4,,10
.L1360:
	movq	144(%rbx), %rbp
	addq	%r15, %rbp
	movl	0(%rbp), %eax
	cmpl	$0, %eax
	jne	.L1407
.L1361:
	addl	%eax, %r14d
	addl	16(%rbp), %edi
	addl	$1, %esi
	addq	$32, %r15
	cmpl	%esi, 132(%rbx)
	jle	.L1408
.L1364:
	cmpl	136(%rbx), %esi
	jl	.L1360
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%r13, %rcx
	call	_assert
	jmp	.L1360
	.p2align 4,,10
.L1408:
	movl	(%rbx), %eax
	movslq	%r14d, %rbp
	movslq	%edi, %r12
.L1359:
	leal	(%r14,%rax), %esi
	movl	4(%rbx), %eax
	cmpl	%eax, %esi
	jle	.L1365
	testl	%eax, %eax
	movl	$8, %r13d
	je	.L1366
	movl	%eax, %r13d
	shrl	$31, %r13d
	addl	%eax, %r13d
	sarl	%r13d
	addl	%eax, %r13d
.L1366:
	cmpl	%r13d, %esi
	jl	.L1409
	movl	%esi, %r13d
.L1367:
	movslq	%r13d, %rax
	leaq	(%rax,%rax,2), %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rbx), %rcx
	movq	%rax, %r14
	testq	%rcx, %rcx
	je	.L1368
	movslq	(%rbx), %rax
	movq	%rcx, %rdx
	movq	%r14, %rcx
	leaq	(%rax,%rax,2), %r8
	salq	$4, %r8
	call	memcpy
	movq	8(%rbx), %rcx
.L1368:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r14, 8(%rbx)
	movl	%r13d, 4(%rbx)
.L1365:
	addl	16(%rbx), %edi
	movl	%esi, (%rbx)
	movl	20(%rbx), %eax
	cmpl	%eax, %edi
	jle	.L1405
	testl	%eax, %eax
	movl	$8, %r14d
	je	.L1371
	movl	%eax, %r14d
	shrl	$31, %r14d
	addl	%eax, %r14d
	sarl	%r14d
	addl	%eax, %r14d
.L1371:
	cmpl	%r14d, %edi
	jge	.L1386
	cmpl	%r14d, %eax
	jl	.L1372
.L1405:
	movq	24(%rbx), %r13
.L1370:
	movslq	%esi, %rax
	movl	%edi, 16(%rbx)
	movslq	%edi, %rdi
	subq	%rbp, %rax
	subq	%r12, %rdi
	leaq	(%rax,%rax,2), %rbp
	leaq	0(%r13,%rdi,2), %rax
	salq	$4, %rbp
	addq	8(%rbx), %rbp
	cmpl	$1, 132(%rbx)
	movq	%rax, 72(%rbx)
	jle	.L1374
	movl	$32, %r15d
	movl	$1, %esi
	leaq	.LC35(%rip), %r13
	leaq	.LC36(%rip), %r12
.L1375:
	cmpl	%esi, 136(%rbx)
	jle	.L1410
.L1376:
	movq	144(%rbx), %r14
	addq	%r15, %r14
	movslq	(%r14), %rax
	testl	%eax, %eax
	jne	.L1411
.L1377:
	movslq	16(%r14), %r8
	testl	%r8d, %r8d
	jne	.L1412
	addl	$1, %esi
	addq	$32, %r15
	cmpl	%esi, 132(%rbx)
	jg	.L1375
.L1374:
	movq	%rbx, %rcx
	call	_ZN10ImDrawList10AddDrawCmdEv
	movl	$1, 132(%rbx)
.L1353:
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
.L1407:
	jle	.L1413
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	salq	$4, %rdx
	addq	8(%rbp), %rdx
	movl	-48(%rdx), %edx
	testl	%edx, %edx
	jne	.L1361
.L1363:
	subl	$1, %eax
	movl	%eax, 0(%rbp)
	jmp	.L1361
	.p2align 4,,10
.L1412:
	movq	72(%rbx), %rcx
	leaq	(%r8,%r8), %rdi
	addl	$1, %esi
	addq	$32, %r15
	movq	24(%r14), %rdx
	movq	%rdi, %r8
	call	memcpy
	addq	%rdi, 72(%rbx)
	cmpl	%esi, 132(%rbx)
	jle	.L1374
	cmpl	%esi, 136(%rbx)
	jg	.L1376
.L1410:
	movl	$856, %r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_assert
	jmp	.L1376
	.p2align 4,,10
.L1411:
	movq	8(%r14), %rdx
	leaq	(%rax,%rax,2), %rdi
	movq	%rbp, %rcx
	salq	$4, %rdi
	movq	%rdi, %r8
	addq	%rdi, %rbp
	call	memcpy
	jmp	.L1377
	.p2align 4,,10
.L1413:
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	movq	%r12, %rdx
	call	_assert
	movslq	0(%rbp), %rdx
	movq	%rdx, %rax
	leaq	(%rdx,%rdx,2), %rdx
	salq	$4, %rdx
	addq	8(%rbp), %rdx
	movl	-48(%rdx), %r8d
	testl	%r8d, %r8d
	jne	.L1361
	testl	%eax, %eax
	jg	.L1363
	leaq	.LC38(%rip), %rcx
	movl	$885, %r8d
	movq	%r12, %rdx
	call	_assert
	movl	0(%rbp), %eax
	jmp	.L1363
	.p2align 4,,10
.L1355:
	movl	(%rcx), %eax
	testl	%eax, %eax
	je	.L1381
.L1380:
	testl	%eax, %eax
	jle	.L1414
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	salq	$4, %rdx
	addq	8(%rbx), %rdx
	movl	-48(%rdx), %ecx
	testl	%ecx, %ecx
	jne	.L1356
.L1358:
	subl	$1, %eax
	movl	%eax, (%rbx)
	jmp	.L1356
	.p2align 4,,10
.L1386:
	movl	%edi, %r14d
.L1372:
	movslq	%r14d, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rbx), %rcx
	movq	%rax, %r13
	testq	%rcx, %rcx
	je	.L1373
	movslq	16(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%rbx), %rcx
.L1373:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r13, 24(%rbx)
	movl	(%rbx), %esi
	movl	%r14d, 20(%rbx)
	jmp	.L1370
	.p2align 4,,10
.L1409:
	cmpl	%r13d, %eax
	jge	.L1365
	jmp	.L1367
	.p2align 4,,10
.L1382:
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	xorl	%r14d, %r14d
	jmp	.L1359
	.p2align 4,,10
.L1414:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movslq	(%rbx), %rdx
	movq	%rdx, %rax
	leaq	(%rdx,%rdx,2), %rdx
	salq	$4, %rdx
	addq	8(%rbx), %rdx
	movl	-48(%rdx), %r9d
	testl	%r9d, %r9d
	jne	.L1356
	testl	%eax, %eax
	jg	.L1358
	leaq	.LC35(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movl	(%rbx), %eax
	jmp	.L1358
	.seh_endproc
	.section .rdata,"dr"
.LC42:
	.ascii "idx < _ChannelsCount\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList18ChannelsSetCurrentEi
	.def	_ZN10ImDrawList18ChannelsSetCurrentEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList18ChannelsSetCurrentEi
_ZN10ImDrawList18ChannelsSetCurrentEi:
.LFB693:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movslq	%edx, %rsi
	cmpl	%esi, 132(%rcx)
	movq	%rcx, %rbx
	jle	.L1418
.L1416:
	movslq	128(%rbx), %rax
	cmpl	%esi, %eax
	je	.L1415
	movq	(%rbx), %r9
	salq	$5, %rax
	movq	8(%rbx), %r10
	addq	144(%rbx), %rax
	movq	%r9, (%rax)
	movq	%r10, 8(%rax)
	movslq	128(%rbx), %rax
	movq	16(%rbx), %r9
	movq	24(%rbx), %r10
	salq	$5, %rax
	addq	144(%rbx), %rax
	movq	%r9, 16(%rax)
	movq	%r10, 24(%rax)
	movl	%esi, 128(%rbx)
	salq	$5, %rsi
	addq	144(%rbx), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rcx
	movslq	%edx, %rax
	movq	%rdx, 16(%rbx)
	leaq	(%rcx,%rax,2), %rax
	movq	%rcx, 24(%rbx)
	movq	%rax, 72(%rbx)
.L1415:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L1418:
	leaq	.LC6(%rip), %rdx
	movl	$346, %r8d
	leaq	.LC42(%rip), %rcx
	call	_assert
	jmp	.L1416
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList11PrimReserveEii
	.def	_ZN10ImDrawList11PrimReserveEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList11PrimReserveEii
_ZN10ImDrawList11PrimReserveEii:
.LFB694:
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
	movslq	(%rcx), %rax
	movslq	32(%rcx), %rdi
	leaq	(%rax,%rax,2), %rax
	movl	%edx, %esi
	movq	8(%rcx), %rdx
	movq	%rcx, %rbx
	leal	(%rdi,%r8), %r13d
	salq	$4, %rax
	addl	%esi, -48(%rdx,%rax)
	movl	36(%rcx), %eax
	cmpl	%eax, %r13d
	jle	.L1424
	testl	%eax, %eax
	movl	$8, %ebp
	je	.L1422
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	addl	%eax, %ebp
.L1422:
	cmpl	%ebp, %r13d
	jl	.L1444
	movl	%r13d, %ebp
.L1423:
	movslq	%ebp, %rax
	leaq	(%rax,%rax,4), %rcx
	salq	$2, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	40(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L1425
	movslq	32(%rbx), %rax
	movq	%rcx, %rdx
	movq	%r12, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$2, %r8
	call	memcpy
	movq	40(%rbx), %rcx
.L1425:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r12, 40(%rbx)
	movl	%ebp, 36(%rbx)
	jmp	.L1421
	.p2align 4,,10
.L1444:
	cmpl	%ebp, %eax
	jl	.L1423
.L1424:
	movq	40(%rbx), %r12
.L1421:
	leaq	(%rdi,%rdi,4), %rax
	movslq	16(%rbx), %rdi
	movl	%r13d, 32(%rbx)
	leaq	(%r12,%rax,4), %rax
	movq	%rax, 64(%rbx)
	movl	20(%rbx), %eax
	addl	%edi, %esi
	cmpl	%eax, %esi
	jle	.L1430
	testl	%eax, %eax
	movl	$8, %ebp
	je	.L1428
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	addl	%eax, %ebp
.L1428:
	cmpl	%ebp, %esi
	jl	.L1445
	movl	%esi, %ebp
.L1429:
	movslq	%ebp, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L1431
	movslq	16(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%rbx), %rcx
.L1431:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r12, 24(%rbx)
	movl	%ebp, 20(%rbx)
	jmp	.L1427
	.p2align 4,,10
.L1445:
	cmpl	%ebp, %eax
	jl	.L1429
.L1430:
	movq	24(%rbx), %r12
.L1427:
	leaq	(%r12,%rdi,2), %rax
	movl	%esi, 16(%rbx)
	movq	%rax, 72(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList8PrimRectERK6ImVec2S2_j
	.def	_ZN10ImDrawList8PrimRectERK6ImVec2S2_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList8PrimRectERK6ImVec2S2_j
_ZN10ImDrawList8PrimRectERK6ImVec2S2_j:
.LFB695:
	.seh_endprologue
	movq	.refptr.GImGui(%rip), %rax
	movl	56(%rcx), %r11d
	movq	72(%rcx), %r10
	movq	(%rax), %rax
	movss	4(%rdx), %xmm4
	movss	4(%r8), %xmm2
	movss	(%rdx), %xmm3
	addq	$12, %r10
	movss	5952(%rax), %xmm1
	movss	5956(%rax), %xmm0
	leal	1(%r11), %eax
	movss	(%r8), %xmm5
	movw	%ax, -10(%r10)
	leal	2(%r11), %eax
	movw	%ax, -8(%r10)
	movq	(%rdx), %rdx
	movw	%ax, -4(%r10)
	leal	3(%r11), %eax
	movw	%ax, -2(%r10)
	movq	64(%rcx), %rax
	movw	%r11w, -12(%r10)
	movw	%r11w, -6(%r10)
	addl	$4, %r11d
	movq	%rdx, (%rax)
	addq	$80, %rax
	movss	%xmm1, -72(%rax)
	movss	%xmm0, -68(%rax)
	movss	%xmm5, -60(%rax)
	movss	%xmm4, -56(%rax)
	movss	%xmm1, -52(%rax)
	movss	%xmm0, -48(%rax)
	movq	(%r8), %rdx
	movl	%r9d, -64(%rax)
	movl	%r9d, -44(%rax)
	movss	%xmm1, -32(%rax)
	movq	%rdx, -40(%rax)
	movss	%xmm0, -28(%rax)
	movl	%r9d, -24(%rax)
	movss	%xmm3, -20(%rax)
	movss	%xmm2, -16(%rax)
	movss	%xmm1, -12(%rax)
	movss	%xmm0, -8(%rax)
	movl	%r9d, -4(%rax)
	movq	%rax, 64(%rcx)
	movl	%r11d, 56(%rcx)
	movq	%r10, 72(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	.def	_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:
.LFB696:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	.seh_endprologue
	movl	56(%rcx), %r11d
	movq	72(%rcx), %r10
	movq	96(%rsp), %rsi
	movss	(%rdx), %xmm3
	leal	1(%r11), %eax
	movss	4(%rdx), %xmm6
	movss	(%r8), %xmm7
	addq	$12, %r10
	movss	4(%r8), %xmm2
	movss	4(%rsi), %xmm0
	movss	(%r9), %xmm1
	movss	4(%r9), %xmm4
	movss	(%rsi), %xmm5
	movw	%ax, -10(%r10)
	leal	2(%r11), %eax
	movw	%ax, -8(%r10)
	movq	(%rdx), %rdx
	movw	%ax, -4(%r10)
	leal	3(%r11), %eax
	movl	104(%rsp), %ebx
	movw	%ax, -2(%r10)
	movq	64(%rcx), %rax
	movw	%r11w, -12(%r10)
	movw	%r11w, -6(%r10)
	addl	$4, %r11d
	movq	%rdx, (%rax)
	movq	(%r9), %rdx
	addq	$80, %rax
	movss	%xmm7, -60(%rax)
	movss	%xmm6, -56(%rax)
	movss	%xmm5, -52(%rax)
	movq	%rdx, -72(%rax)
	movss	%xmm4, -48(%rax)
	movq	(%r8), %rdx
	movl	%ebx, -64(%rax)
	movl	%ebx, -44(%rax)
	movq	%rdx, -40(%rax)
	movq	(%rsi), %rdx
	movq	%rdx, -32(%rax)
	movl	%ebx, -24(%rax)
	movss	%xmm3, -20(%rax)
	movss	%xmm2, -16(%rax)
	movss	%xmm1, -12(%rax)
	movss	%xmm0, -8(%rax)
	movl	%ebx, -4(%rax)
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movq	%rax, 64(%rcx)
	movl	%r11d, 56(%rcx)
	movq	%r10, 72(%rcx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j
	.def	_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j
_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j:
.LFB697:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movl	56(%rcx), %r11d
	movq	72(%rcx), %r10
	movq	(%rdx), %rdx
	movl	88(%rsp), %ebx
	leal	1(%r11), %eax
	movw	%ax, 2(%r10)
	leal	2(%r11), %eax
	addq	$12, %r10
	movw	%ax, -8(%r10)
	movw	%ax, -4(%r10)
	leal	3(%r11), %eax
	movw	%ax, -2(%r10)
	movq	64(%rcx), %rax
	movw	%r11w, -12(%r10)
	movw	%r11w, -6(%r10)
	addl	$4, %r11d
	movq	%rdx, (%rax)
	movq	56(%rsp), %rdx
	addq	$80, %rax
	movq	(%rdx), %rdx
	movl	%ebx, -64(%rax)
	movq	%rdx, -72(%rax)
	movq	(%r8), %rdx
	movq	%rdx, -60(%rax)
	movq	64(%rsp), %rdx
	movq	(%rdx), %rdx
	movl	%ebx, -44(%rax)
	movq	%rdx, -52(%rax)
	movq	(%r9), %rdx
	movq	%rdx, -40(%rax)
	movq	72(%rsp), %rdx
	movq	(%rdx), %rdx
	movl	%ebx, -24(%rax)
	movq	%rdx, -32(%rax)
	movq	48(%rsp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -20(%rax)
	movq	80(%rsp), %rdx
	movq	(%rdx), %rdx
	movl	%ebx, -4(%rax)
	movq	%rdx, -12(%rax)
	movq	%rax, 64(%rcx)
	movl	%r11d, 56(%rcx)
	movq	%r10, 72(%rcx)
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	.def	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb:
.LFB698:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$232, %rsp
	.seh_stackalloc	232
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	movaps	%xmm6, -48(%rbp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, -32(%rbp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, -16(%rbp)
	.seh_savexmm	%xmm8, 112
	movaps	%xmm9, 0(%rbp)
	.seh_savexmm	%xmm9, 128
	movaps	%xmm10, 16(%rbp)
	.seh_savexmm	%xmm10, 144
	movaps	%xmm11, 32(%rbp)
	.seh_savexmm	%xmm11, 160
	movaps	%xmm12, 48(%rbp)
	.seh_savexmm	%xmm12, 176
	movaps	%xmm13, 64(%rbp)
	.seh_savexmm	%xmm13, 192
	movaps	%xmm14, 80(%rbp)
	.seh_savexmm	%xmm14, 208
	.seh_endprologue
	movl	208(%rbp), %r12d
	movss	216(%rbp), %xmm12
	movq	%rdx, %rbx
	cmpl	$1, %r8d
	movq	%rcx, %rsi
	movl	224(%rbp), %edx
	movl	%r8d, 192(%rbp)
	movl	%r9d, %edi
	jle	.L1449
	movq	.refptr.GImGui(%rip), %rax
	movl	%r8d, %ecx
	subl	$1, %ecx
	testb	%r12b, %r12b
	cmovne	%r8d, %ecx
	movq	(%rax), %rax
	movl	%ecx, -56(%rbp)
	testb	%dl, 5240(%rax)
	movss	5952(%rax), %xmm9
	movss	5956(%rax), %xmm8
	je	.L1453
	movss	.LC18(%rip), %xmm10
	movl	%r9d, %eax
	andl	$16777215, %eax
	ucomiss	%xmm10, %xmm12
	movl	%eax, -80(%rbp)
	movl	%r8d, %eax
	jbe	.L1501
	leal	(%rcx,%rcx,8), %edx
	sall	$2, %eax
	movq	%rsi, %rcx
	movl	%eax, %r8d
	addl	%edx, %edx
	movl	%eax, %r14d
	movl	%eax, -84(%rbp)
	call	_ZN10ImDrawList11PrimReserveEii
	movl	192(%rbp), %eax
	addl	%r14d, %eax
.L1456:
	cltq
	leaq	30(,%rax,8), %rax
	andq	$-16, %rax
	call	___chkstk_ms
	xorl	%r13d, %r13d
	pxor	%xmm11, %xmm11
	movss	.LC29(%rip), %xmm13
	movslq	192(%rbp), %r15
	movl	192(%rbp), %r8d
	leaq	0(,%r15,8), %rcx
	subq	%rax, %rsp
	movl	-56(%rbp), %eax
	leaq	32(%rsp), %rdx
	movq	%rdx, -64(%rbp)
	leaq	(%rdx,%rcx), %r15
	leal	-1(%rax), %r14d
	movl	$1, %eax
	jmp	.L1457
	.p2align 4,,10
.L1459:
	cmpq	%r13, %r14
	xorps	%xmm13, %xmm6
	movss	%xmm7, (%rdx,%r13,8)
	movss	%xmm6, 4(%rdx,%r13,8)
	je	.L1503
	leal	2(%r13), %eax
	cmpl	%eax, %r8d
	je	.L1504
.L1458:
	addq	$1, %r13
.L1457:
	cltq
	leaq	(%rbx,%rax,8), %rax
	movss	4(%rax), %xmm7
	movss	(%rax), %xmm6
	subss	4(%rbx,%r13,8), %xmm7
	subss	(%rbx,%r13,8), %xmm6
	movaps	%xmm7, %xmm0
	mulss	%xmm7, %xmm0
	movaps	%xmm6, %xmm1
	mulss	%xmm6, %xmm1
	addss	%xmm1, %xmm0
	ucomiss	%xmm11, %xmm0
	jbe	.L1459
	ucomiss	%xmm0, %xmm11
	sqrtss	%xmm0, %xmm14
	ja	.L1505
.L1461:
	movaps	%xmm10, %xmm0
	divss	%xmm14, %xmm0
	mulss	%xmm0, %xmm6
	mulss	%xmm0, %xmm7
	jmp	.L1459
	.p2align 4,,10
.L1463:
	ucomiss	%xmm10, %xmm12
	jbe	.L1506
	movaps	%xmm12, %xmm3
	movss	.LC1(%rip), %xmm6
	subss	%xmm10, %xmm3
	movl	192(%rbp), %eax
	mulss	%xmm6, %xmm3
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	movaps	%xmm3, %xmm4
	addss	%xmm10, %xmm4
.L1489:
	movl	56(%rsi), %ecx
	movl	%edi, 200(%rbp)
	leaq	8(%rbx), %r14
	xorl	%r9d, %r9d
	movq	72(%rsi), %rax
	movq	%rsi, 176(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rbx, 184(%rbp)
	movl	-56(%rbp), %edi
	movl	%ecx, -76(%rbp)
	movq	%rax, -96(%rbp)
	leaq	8(%rdx), %r10
	.p2align 4,,10
.L1476:
	addl	$1, %r9d
	cmpl	192(%rbp), %r9d
	je	.L1507
	leal	0(,%r9,4), %edx
	movq	%r10, %r13
	movq	%r14, %r12
	leal	4(%rcx), %r8d
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%r15,%rdx), %rsi
	leaq	8(%rdx), %rbx
	leaq	16(%rdx), %r11
	addq	$24, %rdx
.L1488:
	movss	-4(%r10), %xmm1
	movss	-8(%r10), %xmm0
	addss	4(%r13), %xmm1
	addss	0(%r13), %xmm0
	mulss	%xmm6, %xmm1
	mulss	%xmm6, %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm1, %xmm2
	movaps	%xmm0, %xmm5
	mulss	%xmm0, %xmm5
	addss	%xmm5, %xmm2
	ucomiss	.LC44(%rip), %xmm2
	jbe	.L1473
	movaps	%xmm10, %xmm5
	divss	%xmm2, %xmm5
	ucomiss	.LC43(%rip), %xmm5
	movaps	%xmm5, %xmm2
	jbe	.L1475
	movss	.LC43(%rip), %xmm2
.L1475:
	mulss	%xmm2, %xmm0
	mulss	%xmm2, %xmm1
.L1473:
	movaps	%xmm0, %xmm11
	movss	(%r12), %xmm5
	movaps	%xmm1, %xmm7
	addq	%r15, %rbx
	mulss	%xmm4, %xmm11
	movss	4(%r12), %xmm2
	addq	%r15, %r11
	addq	%r15, %rdx
	movaps	%xmm5, %xmm12
	movaps	%xmm5, %xmm14
	movw	%cx, 16(%rax)
	addq	$8, %r10
	mulss	%xmm4, %xmm7
	movw	%cx, 18(%rax)
	addq	$8, %r14
	addq	$36, %rax
	mulss	%xmm3, %xmm0
	movw	%r8w, -16(%rax)
	addss	%xmm11, %xmm12
	mulss	%xmm3, %xmm1
	movss	%xmm12, (%rsi)
	movaps	%xmm2, %xmm12
	subss	%xmm0, %xmm14
	addss	%xmm7, %xmm12
	movss	%xmm12, 4(%rsi)
	leal	1(%rcx), %esi
	movaps	%xmm5, %xmm12
	addss	%xmm0, %xmm12
	movaps	%xmm2, %xmm0
	movw	%si, -34(%rax)
	subss	%xmm1, %xmm0
	movw	%si, -22(%rax)
	subss	%xmm11, %xmm5
	movss	%xmm12, (%rbx)
	movaps	%xmm2, %xmm12
	subss	%xmm7, %xmm2
	addss	%xmm1, %xmm12
	movss	%xmm12, 4(%rbx)
	leal	2(%rcx), %ebx
	addl	$3, %ecx
	movss	%xmm14, (%r11)
	movss	%xmm0, 4(%r11)
	leal	2(%r8), %r11d
	movss	%xmm5, (%rdx)
	movss	%xmm2, 4(%rdx)
	leal	1(%r8), %edx
	movw	%dx, -36(%rax)
	movw	%dx, -26(%rax)
	movw	%dx, -24(%rax)
	movw	%dx, -14(%rax)
	leal	3(%r8), %edx
	movw	%cx, -8(%rax)
	movw	%cx, -6(%rax)
	movl	%r8d, %ecx
	movw	%bx, -32(%rax)
	movw	%bx, -30(%rax)
	movw	%r11w, -28(%rax)
	movw	%r11w, -12(%rax)
	movw	%bx, -10(%rax)
	movw	%dx, -4(%rax)
	movw	%r11w, -2(%rax)
	cmpl	%edi, %r9d
	jne	.L1476
	movq	-96(%rbp), %rbx
	leal	-1(%r9), %eax
	movq	%r15, %rdx
	movq	176(%rbp), %rsi
	leaq	9(%rax,%rax,8), %rax
	movl	-72(%rbp), %ecx
	movl	200(%rbp), %edi
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, 72(%rsi)
	movq	64(%rsi), %rax
	leaq	5(%rcx,%rcx,4), %r8
	movl	-80(%rbp), %ecx
	salq	$4, %r8
	addq	%rax, %r8
	.p2align 4,,10
.L1477:
	movq	(%rdx), %r9
	movl	%ecx, 16(%rax)
	addq	$80, %rax
	addq	$32, %rdx
	movss	%xmm9, -72(%rax)
	movss	%xmm8, -68(%rax)
	movss	%xmm9, -52(%rax)
	movq	%r9, -80(%rax)
	movq	-24(%rdx), %r9
	movss	%xmm8, -48(%rax)
	movl	%edi, -44(%rax)
	movss	%xmm9, -32(%rax)
	movq	%r9, -60(%rax)
	movq	-16(%rdx), %r9
	movss	%xmm8, -28(%rax)
	movl	%edi, -24(%rax)
	movss	%xmm9, -12(%rax)
	movq	%r9, -40(%rax)
	movq	-8(%rdx), %r9
	movss	%xmm8, -8(%rax)
	movl	%ecx, -4(%rax)
	movq	%r9, -20(%rax)
	cmpq	%r8, %rax
	movq	%rax, 64(%rsi)
	jne	.L1477
	movzwl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, 56(%rsi)
.L1449:
	movaps	-48(%rbp), %xmm6
	movaps	-32(%rbp), %xmm7
	movaps	-16(%rbp), %xmm8
	movaps	0(%rbp), %xmm9
	movaps	16(%rbp), %xmm10
	movaps	32(%rbp), %xmm11
	movaps	48(%rbp), %xmm12
	movaps	64(%rbp), %xmm13
	movaps	80(%rbp), %xmm14
	leaq	104(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.p2align 4,,10
.L1453:
	leal	(%rcx,%rcx,2), %edx
	movl	%ecx, %r14d
	pxor	%xmm11, %xmm11
	movl	$2, %r13d
	leal	0(,%rcx,4), %r8d
	addl	%edx, %edx
	movq	%rsi, %rcx
	call	_ZN10ImDrawList11PrimReserveEii
	leaq	4(%rbx), %r12
	addl	$1, %r14d
	xorl	%r15d, %r15d
	movl	$1, %eax
	movss	.LC1(%rip), %xmm6
	movss	.LC18(%rip), %xmm13
	movl	192(%rbp), %ecx
	jmp	.L1478
	.p2align 4,,10
.L1480:
	movaps	%xmm12, %xmm0
	movaps	%xmm10, %xmm1
	movq	64(%rsi), %rax
	mulss	%xmm6, %xmm0
	addq	$80, %rax
	mulss	%xmm0, %xmm1
	mulss	%xmm7, %xmm0
	addss	%xmm0, %xmm3
	movss	%xmm3, -80(%rax)
	movss	(%r12), %xmm2
	movss	%xmm9, -72(%rax)
	subss	%xmm1, %xmm2
	movss	%xmm8, -68(%rax)
	movl	%edi, -64(%rax)
	movss	%xmm2, -76(%rax)
	movss	(%rdx), %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, -60(%rax)
	movss	4(%rdx), %xmm2
	movss	%xmm9, -52(%rax)
	subss	%xmm1, %xmm2
	movss	%xmm8, -48(%rax)
	movl	%edi, -44(%rax)
	movss	%xmm2, -56(%rax)
	movss	(%rdx), %xmm2
	subss	%xmm0, %xmm2
	movss	%xmm2, -40(%rax)
	movss	4(%rdx), %xmm2
	movss	%xmm9, -32(%rax)
	movl	56(%rsi), %edx
	addss	%xmm1, %xmm2
	movss	%xmm8, -28(%rax)
	movl	%edi, -24(%rax)
	movss	%xmm2, -36(%rax)
	movss	-4(%r12), %xmm2
	leal	1(%rdx), %r8d
	subss	%xmm0, %xmm2
	movss	%xmm2, -20(%rax)
	addss	(%r12), %xmm1
	movss	%xmm9, -12(%rax)
	movss	%xmm8, -8(%rax)
	movss	%xmm1, -16(%rax)
	movl	%edi, -4(%rax)
	movq	%rax, 64(%rsi)
	movq	72(%rsi), %rax
	movw	%dx, (%rax)
	addq	$12, %rax
	movw	%r8w, -10(%rax)
	leal	2(%rdx), %r8d
	movw	%r8w, -8(%rax)
	movw	%r8w, -4(%rax)
	leal	3(%rdx), %r8d
	movw	%dx, -6(%rax)
	addl	$4, %edx
	movw	%r8w, -2(%rax)
	cmpl	%r13d, %r14d
	movq	%rax, 72(%rsi)
	movl	%edx, 56(%rsi)
	je	.L1449
	cmpl	%ecx, %r13d
	movl	%r15d, %eax
	cmovne	%r13d, %eax
	addl	$1, %r13d
	addq	$8, %r12
.L1478:
	cltq
	movss	-4(%r12), %xmm3
	leaq	(%rbx,%rax,8), %rdx
	movss	(%rdx), %xmm1
	movss	4(%rdx), %xmm0
	subss	%xmm3, %xmm1
	movaps	%xmm0, %xmm7
	subss	(%r12), %xmm7
	movaps	%xmm1, %xmm2
	movaps	%xmm1, %xmm10
	mulss	%xmm1, %xmm2
	movaps	%xmm7, %xmm1
	mulss	%xmm7, %xmm1
	addss	%xmm2, %xmm1
	ucomiss	%xmm11, %xmm1
	jbe	.L1480
	ucomiss	%xmm1, %xmm11
	sqrtss	%xmm1, %xmm14
	ja	.L1508
.L1482:
	movaps	%xmm13, %xmm0
	divss	%xmm14, %xmm0
	mulss	%xmm0, %xmm10
	mulss	%xmm0, %xmm7
	jmp	.L1480
	.p2align 4,,10
.L1503:
	testb	%r12b, %r12b
	jne	.L1463
	movq	-64(%rbp), %r10
	leaq	-8(%rcx), %rdx
	movss	4(%rbx), %xmm1
	movss	(%rbx), %xmm5
	movq	-16(%r10,%rcx), %rcx
	leaq	(%r10,%rdx), %rax
	addq	%rbx, %rdx
	movss	4(%rdx), %xmm0
	movss	(%rdx), %xmm2
	movq	%rcx, (%rax)
	movl	192(%rbp), %ecx
	subl	$1, %ecx
	ucomiss	%xmm10, %xmm12
	movl	%ecx, -72(%rbp)
	jbe	.L1509
	movaps	%xmm12, %xmm3
	movss	4(%r10), %xmm7
	movaps	%xmm1, %xmm13
	subss	%xmm10, %xmm3
	movss	.LC1(%rip), %xmm6
	movss	(%r10), %xmm11
	movl	-72(%rbp), %ecx
	mulss	%xmm6, %xmm3
	leal	0(,%rcx,4), %edx
	movaps	%xmm3, %xmm4
	movslq	%edx, %rdx
	addss	%xmm10, %xmm4
	leaq	(%r15,%rdx,8), %rcx
	leaq	8(,%rdx,8), %rdx
	mulss	%xmm4, %xmm7
	mulss	%xmm4, %xmm11
	addss	%xmm1, %xmm7
	addss	%xmm5, %xmm11
	movss	%xmm7, 4(%r15)
	movss	%xmm11, (%r15)
	movss	4(%r10), %xmm7
	movss	(%r10), %xmm11
	mulss	%xmm3, %xmm7
	mulss	%xmm3, %xmm11
	addss	%xmm1, %xmm7
	addss	%xmm5, %xmm11
	movss	%xmm7, 12(%r15)
	movss	%xmm11, 8(%r15)
	movss	4(%r10), %xmm7
	movss	(%r10), %xmm11
	mulss	%xmm3, %xmm7
	mulss	%xmm3, %xmm11
	subss	%xmm7, %xmm13
	movaps	%xmm13, %xmm7
	movaps	%xmm5, %xmm13
	subss	%xmm11, %xmm13
	movss	%xmm7, 20(%r15)
	movss	%xmm13, 16(%r15)
	movss	4(%r10), %xmm7
	mulss	%xmm4, %xmm7
	subss	%xmm7, %xmm1
	movss	(%r10), %xmm7
	mulss	%xmm4, %xmm7
	movss	%xmm1, 28(%r15)
	subss	%xmm7, %xmm5
	movaps	%xmm2, %xmm7
	movss	%xmm5, 24(%r15)
	movss	4(%rax), %xmm1
	movss	(%rax), %xmm5
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm5
	addss	%xmm0, %xmm1
	addss	%xmm2, %xmm5
	movss	%xmm1, 4(%rcx)
	movss	%xmm5, (%rcx)
	movss	4(%rax), %xmm1
	leaq	(%r15,%rdx), %rcx
	movss	(%rax), %xmm5
	mulss	%xmm3, %xmm1
	mulss	%xmm3, %xmm5
	addss	%xmm0, %xmm1
	addss	%xmm2, %xmm5
	movss	%xmm1, 4(%rcx)
	movss	%xmm5, (%rcx)
	movss	4(%rax), %xmm1
	movaps	%xmm0, %xmm5
	leaq	8(%r15,%rdx), %rcx
	mulss	%xmm3, %xmm1
	leaq	16(%r15,%rdx), %rdx
	subss	%xmm1, %xmm5
	movaps	%xmm5, %xmm1
	movss	(%rax), %xmm5
	movss	%xmm1, 4(%rcx)
	mulss	%xmm3, %xmm5
	subss	%xmm5, %xmm7
	movss	%xmm7, (%rcx)
	movss	4(%rax), %xmm1
	mulss	%xmm4, %xmm1
	subss	%xmm1, %xmm0
	movss	(%rax), %xmm1
	mulss	%xmm4, %xmm1
	subss	%xmm1, %xmm2
	movss	%xmm2, (%rdx)
	movss	%xmm0, 4(%rdx)
	jmp	.L1489
	.p2align 4,,10
.L1506:
	movl	192(%rbp), %eax
	movq	-64(%rbp), %rdx
	subl	$1, %eax
	movl	%eax, -72(%rbp)
.L1486:
	movl	56(%rsi), %ecx
	movl	%edi, 200(%rbp)
	leaq	8(%rdx), %r10
	xorl	%r9d, %r9d
	movq	72(%rsi), %rax
	movq	%rsi, 176(%rbp)
	leaq	8(%rbx), %r14
	movl	-56(%rbp), %esi
	movl	192(%rbp), %edi
	movss	.LC1(%rip), %xmm6
	movl	%ecx, -76(%rbp)
	movq	%rax, -96(%rbp)
	.p2align 4,,10
.L1469:
	addl	$1, %r9d
	cmpl	%edi, %r9d
	je	.L1510
	leal	(%r9,%r9), %edx
	movq	%r10, %r13
	movq	%r14, %r12
	leal	3(%rcx), %r8d
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%r15,%rdx), %r11
	addq	$8, %rdx
.L1487:
	movss	-4(%r10), %xmm0
	movss	-8(%r10), %xmm1
	addss	4(%r13), %xmm0
	addss	0(%r13), %xmm1
	mulss	%xmm6, %xmm0
	mulss	%xmm6, %xmm1
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	movaps	%xmm1, %xmm3
	mulss	%xmm1, %xmm3
	addss	%xmm3, %xmm2
	ucomiss	.LC44(%rip), %xmm2
	jbe	.L1466
	movaps	%xmm10, %xmm4
	divss	%xmm2, %xmm4
	ucomiss	.LC43(%rip), %xmm4
	movaps	%xmm4, %xmm2
	jbe	.L1468
	movss	.LC43(%rip), %xmm2
.L1468:
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
.L1466:
	movss	(%r12), %xmm3
	movaps	%xmm1, %xmm4
	addq	%r15, %rdx
	addq	$24, %rax
	movss	4(%r12), %xmm2
	addq	$8, %r10
	movw	%cx, -22(%rax)
	addq	$8, %r14
	addss	%xmm3, %xmm4
	movw	%cx, -8(%rax)
	subss	%xmm1, %xmm3
	movw	%cx, -6(%rax)
	movw	%r8w, -24(%rax)
	movss	%xmm4, (%r11)
	movaps	%xmm0, %xmm4
	addss	%xmm2, %xmm4
	movw	%r8w, -14(%rax)
	subss	%xmm0, %xmm2
	movw	%r8w, -4(%rax)
	movss	%xmm4, 4(%r11)
	leal	1(%rcx), %r11d
	movss	%xmm3, (%rdx)
	movss	%xmm2, 4(%rdx)
	leal	2(%rcx), %edx
	movl	%r8d, %ecx
	movw	%dx, -20(%rax)
	movw	%dx, -18(%rax)
	leal	2(%r8), %edx
	movw	%dx, -16(%rax)
	leal	1(%r8), %edx
	movw	%dx, -12(%rax)
	movw	%r11w, -10(%rax)
	movw	%dx, -2(%rax)
	cmpl	%esi, %r9d
	jne	.L1469
	movq	-96(%rbp), %rcx
	leal	-1(%r9), %eax
	movq	%r15, %rdx
	leaq	3(%rax,%rax,2), %rax
	movq	176(%rbp), %rsi
	movl	200(%rbp), %edi
	leaq	(%rcx,%rax,8), %rax
	movl	-72(%rbp), %ecx
	movq	%rax, 72(%rsi)
	movq	64(%rsi), %rax
	addq	$1, %rcx
	movq	%rcx, %r8
	salq	$4, %r8
	subq	%rcx, %r8
	movl	-80(%rbp), %ecx
	leaq	(%rax,%r8,4), %r8
	.p2align 4,,10
.L1471:
	movq	(%rbx), %r9
	addq	$60, %rax
	movl	%edi, -44(%rax)
	addq	$8, %rbx
	movss	%xmm9, -52(%rax)
	addq	$16, %rdx
	movss	%xmm8, -48(%rax)
	movss	%xmm9, -32(%rax)
	movq	%r9, -60(%rax)
	movq	-16(%rdx), %r9
	movss	%xmm8, -28(%rax)
	movl	%ecx, -24(%rax)
	movss	%xmm9, -12(%rax)
	movq	%r9, -40(%rax)
	movq	-8(%rdx), %r9
	movss	%xmm8, -8(%rax)
	movl	%ecx, -4(%rax)
	movq	%r9, -20(%rax)
	cmpq	%r8, %rax
	movq	%rax, 64(%rsi)
	jne	.L1471
	movzwl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, 56(%rsi)
	jmp	.L1449
	.p2align 4,,10
.L1509:
	movss	4(%r10), %xmm3
	movss	(%r10), %xmm4
	addss	%xmm1, %xmm3
	movl	-72(%rbp), %ecx
	addss	%xmm5, %xmm4
	movss	%xmm3, 4(%r15)
	movss	%xmm4, (%r15)
	subss	4(%r10), %xmm1
	leal	(%rcx,%rcx), %edx
	subss	(%r10), %xmm5
	movslq	%edx, %rdx
	leaq	(%r15,%rdx,8), %rcx
	movss	%xmm1, 12(%r15)
	leaq	8(%r15,%rdx,8), %rdx
	movss	%xmm5, 8(%r15)
	movss	4(%rax), %xmm1
	movss	(%rax), %xmm3
	addss	%xmm0, %xmm1
	addss	%xmm2, %xmm3
	movss	%xmm1, 4(%rcx)
	movss	%xmm3, (%rcx)
	subss	4(%rax), %xmm0
	subss	(%rax), %xmm2
	movss	%xmm0, 4(%rdx)
	movss	%xmm2, (%rdx)
	movq	%r10, %rdx
	jmp	.L1486
	.p2align 4,,10
.L1501:
	leal	(%r8,%r8,2), %eax
	leal	(%rcx,%rcx,2), %edx
	movl	%eax, %r14d
	movl	%eax, %r8d
	movl	%eax, -84(%rbp)
	sall	$2, %edx
	movq	%rsi, %rcx
	call	_ZN10ImDrawList11PrimReserveEii
	movl	%r14d, %eax
	jmp	.L1456
	.p2align 4,,10
.L1504:
	xorl	%eax, %eax
	jmp	.L1458
.L1507:
	movq	%r15, %rsi
	movq	184(%rbp), %r12
	movl	$24, %edx
	movl	$16, %r11d
	movq	-64(%rbp), %r13
	movl	$8, %ebx
	movl	-76(%rbp), %r8d
	jmp	.L1488
.L1505:
	movq	%rdx, -96(%rbp)
	movl	%r8d, -76(%rbp)
	movq	%rcx, -72(%rbp)
	call	sqrtf
	movq	-96(%rbp), %rdx
	movl	-76(%rbp), %r8d
	movq	-72(%rbp), %rcx
	jmp	.L1461
.L1510:
	movq	%r15, %r11
	movq	%rbx, %r12
	movq	-64(%rbp), %r13
	movl	$8, %edx
	movl	-76(%rbp), %r8d
	jmp	.L1487
.L1508:
	movaps	%xmm1, %xmm0
	movl	%ecx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	call	sqrtf
	movss	-4(%r12), %xmm3
	movl	-64(%rbp), %ecx
	movq	-56(%rbp), %rdx
	jmp	.L1482
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	.def	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb:
.LFB699:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$216, %rsp
	.seh_stackalloc	216
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	movaps	%xmm6, -48(%rbp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, -32(%rbp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, -16(%rbp)
	.seh_savexmm	%xmm8, 112
	movaps	%xmm9, 0(%rbp)
	.seh_savexmm	%xmm9, 128
	movaps	%xmm10, 16(%rbp)
	.seh_savexmm	%xmm10, 144
	movaps	%xmm11, 32(%rbp)
	.seh_savexmm	%xmm11, 160
	movaps	%xmm12, 48(%rbp)
	.seh_savexmm	%xmm12, 176
	movaps	%xmm13, 64(%rbp)
	.seh_savexmm	%xmm13, 192
	.seh_endprologue
	movq	.refptr.GImGui(%rip), %rax
	movq	(%rax), %rax
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movl	%r8d, %esi
	movl	192(%rbp), %ecx
	leal	-6(%r8,%r8,2), %edx
	movl	%r9d, %r13d
	cmpb	$0, 5241(%rax)
	movss	5952(%rax), %xmm8
	movss	5956(%rax), %xmm7
	je	.L1512
	testb	%cl, %cl
	je	.L1512
	leal	(%r8,%r8), %r8d
	movl	%r9d, %eax
	movq	%r12, %rcx
	andl	$16777215, %eax
	movl	%r8d, -52(%rbp)
	movl	%eax, -56(%rbp)
	leal	(%r8,%rsi), %eax
	leal	(%rdx,%rax,2), %edx
	call	_ZN10ImDrawList11PrimReserveEii
	movl	56(%r12), %r10d
	cmpl	$2, %esi
	leal	1(%r10), %r14d
	jle	.L1513
	movq	72(%r12), %r11
	leal	-3(%rsi), %r9d
	movl	%r10d, %r8d
	leaq	(%r9,%r9,2), %rcx
	leal	2(%r10), %edx
	leaq	6(%r11,%rcx,2), %rcx
	movq	%r11, %rax
	.p2align 4,,10
.L1514:
	movw	%dx, 2(%rax)
	addl	$2, %edx
	addq	$6, %rax
	movw	%r8w, -6(%rax)
	movw	%dx, -2(%rax)
	cmpq	%rax, %rcx
	jne	.L1514
	leaq	1(%r9), %rax
	movslq	%esi, %rdx
	imulq	$6, %rax, %rax
	salq	$3, %rdx
	addq	%r11, %rax
	movq	%rax, 72(%r12)
	leaq	30(%rdx), %rax
	andq	$-16, %rax
	call	___chkstk_ms
	leal	-1(%rsi), %r15d
	subq	%rax, %rsp
	leaq	32(%rsp), %rdi
	movl	%r15d, %ecx
	.p2align 4,,10
.L1515:
	movl	%r15d, %r9d
	subq	$8, %rdx
	xorl	%esi, %esi
	pxor	%xmm10, %xmm10
	movss	.LC29(%rip), %xmm11
	addq	$1, %r9
	movss	.LC18(%rip), %xmm13
	jmp	.L1520
	.p2align 4,,10
.L1517:
	addq	$1, %rsi
	addq	%rdi, %rax
	xorps	%xmm11, %xmm6
	movl	%r8d, %r15d
	cmpq	%rsi, %r9
	movss	%xmm9, (%rax)
	movss	%xmm6, 4(%rax)
	je	.L1542
.L1520:
	movslq	%r15d, %rax
	movss	4(%rbx,%rsi,8), %xmm9
	movl	%esi, %r8d
	salq	$3, %rax
	movss	(%rbx,%rsi,8), %xmm6
	leaq	(%rbx,%rax), %r11
	subss	4(%r11), %xmm9
	subss	(%r11), %xmm6
	movaps	%xmm9, %xmm0
	mulss	%xmm9, %xmm0
	movaps	%xmm6, %xmm1
	mulss	%xmm6, %xmm1
	addss	%xmm1, %xmm0
	ucomiss	%xmm10, %xmm0
	jbe	.L1517
	ucomiss	%xmm0, %xmm10
	sqrtss	%xmm0, %xmm12
	ja	.L1543
.L1519:
	movaps	%xmm13, %xmm0
	divss	%xmm12, %xmm0
	mulss	%xmm0, %xmm6
	mulss	%xmm0, %xmm9
	jmp	.L1517
	.p2align 4,,10
.L1513:
	movslq	%esi, %rdx
	salq	$3, %rdx
	leaq	30(%rdx), %rax
	andq	$-16, %rax
	call	___chkstk_ms
	leal	-1(%rsi), %r15d
	subq	%rax, %rsp
	testl	%esi, %esi
	leaq	32(%rsp), %rdi
	movl	%r15d, %ecx
	jg	.L1515
.L1516:
	movzwl	-52(%rbp), %eax
	addl	%eax, %r10d
	movl	%r10d, 56(%r12)
.L1511:
	movaps	-48(%rbp), %xmm6
	movaps	-32(%rbp), %xmm7
	movaps	-16(%rbp), %xmm8
	movaps	0(%rbp), %xmm9
	movaps	16(%rbp), %xmm10
	movaps	32(%rbp), %xmm11
	movaps	48(%rbp), %xmm12
	movaps	64(%rbp), %xmm13
	leaq	88(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.p2align 4,,10
.L1512:
	movl	%esi, %r8d
	movq	%r12, %rcx
	call	_ZN10ImDrawList11PrimReserveEii
	testl	%esi, %esi
	jle	.L1544
	movq	64(%r12), %rax
	leal	-1(%rsi), %edx
	leaq	5(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,4), %rcx
	.p2align 4,,10
.L1531:
	movq	(%rbx), %rdx
	addq	$20, %rax
	movss	%xmm7, -8(%rax)
	addq	$8, %rbx
	movss	%xmm8, -12(%rax)
	movl	%r13d, -4(%rax)
	movq	%rdx, -20(%rax)
	cmpq	%rcx, %rax
	movq	%rax, 64(%r12)
	jne	.L1531
	cmpl	$2, %esi
	movl	56(%r12), %r10d
	jle	.L1528
	movq	72(%r12), %rbx
	leal	-3(%rsi), %r11d
	movl	%r10d, %r9d
	leaq	(%r11,%r11,2), %rcx
	leal	2(%r10), %edx
	leaq	6(%rbx,%rcx,2), %r8
	movq	%rbx, %rax
	.p2align 4,,10
.L1532:
	leal	-1(%rdx), %ecx
	movw	%dx, 4(%rax)
	addq	$6, %rax
	addl	$1, %edx
	movw	%r9w, -6(%rax)
	movw	%cx, -4(%rax)
	cmpq	%rax, %r8
	jne	.L1532
	leaq	1(%r11), %rax
	imulq	$6, %rax, %rax
	addq	%rbx, %rax
	movq	%rax, 72(%r12)
	.p2align 4,,10
.L1528:
	movzwl	%si, %esi
	addl	%r10d, %esi
	movl	%esi, 56(%r12)
	jmp	.L1511
	.p2align 4,,10
.L1542:
	movq	64(%r12), %rax
	movq	%r12, 160(%rbp)
	addq	%rdi, %rdx
	movl	%r10d, %r15d
	movq	72(%r12), %r8
	movl	-56(%rbp), %r12d
	movss	.LC1(%rip), %xmm2
	movss	.LC18(%rip), %xmm5
	movq	%rax, -72(%rbp)
	movss	4(%rdx), %xmm0
	movq	%r8, -64(%rbp)
	movss	(%rdx), %xmm1
	xorl	%edx, %edx
	.p2align 4,,10
.L1524:
	movss	4(%rdi,%rdx,8), %xmm4
	movl	%edx, %r9d
	movss	(%rdi,%rdx,8), %xmm3
	addss	%xmm4, %xmm0
	addss	%xmm3, %xmm1
	mulss	%xmm2, %xmm0
	mulss	%xmm2, %xmm1
	movaps	%xmm0, %xmm6
	mulss	%xmm0, %xmm6
	movaps	%xmm1, %xmm9
	mulss	%xmm1, %xmm9
	addss	%xmm9, %xmm6
	ucomiss	.LC44(%rip), %xmm6
	jbe	.L1521
	movaps	%xmm5, %xmm13
	divss	%xmm6, %xmm13
	ucomiss	.LC43(%rip), %xmm13
	movaps	%xmm13, %xmm6
	jbe	.L1523
	movss	.LC43(%rip), %xmm6
.L1523:
	mulss	%xmm6, %xmm1
	mulss	%xmm6, %xmm0
.L1521:
	mulss	%xmm2, %xmm1
	movss	4(%rbx,%rdx,8), %xmm6
	addl	%ecx, %ecx
	addq	$40, %rax
	mulss	%xmm2, %xmm0
	movss	(%rbx,%rdx,8), %xmm9
	movss	%xmm8, -32(%rax)
	addq	$12, %r8
	movss	%xmm7, -28(%rax)
	leal	(%rcx,%r15), %r11d
	addl	%r14d, %ecx
	movl	%r13d, -24(%rax)
	subss	%xmm1, %xmm9
	subss	%xmm0, %xmm6
	movss	%xmm9, -40(%rax)
	movss	%xmm6, -36(%rax)
	addss	4(%rbx,%rdx,8), %xmm0
	addss	(%rbx,%rdx,8), %xmm1
	movss	%xmm8, -12(%rax)
	addq	$1, %rdx
	movss	%xmm7, -8(%rax)
	movss	%xmm0, -16(%rax)
	movaps	%xmm4, %xmm0
	movss	%xmm1, -20(%rax)
	movaps	%xmm3, %xmm1
	movl	%r12d, -4(%rax)
	movw	%cx, -8(%r8)
	movw	%cx, -6(%r8)
	leal	1(%r10), %ecx
	movw	%r10w, -12(%r8)
	movw	%cx, -4(%r8)
	movl	%r9d, %ecx
	movw	%r10w, -2(%r8)
	addl	$2, %r10d
	movw	%r11w, -10(%r8)
	cmpq	%rdx, %rsi
	jne	.L1524
	imulq	$40, %rsi, %rax
	movq	160(%rbp), %r12
	imulq	$12, %rsi, %rsi
	addq	-72(%rbp), %rax
	addq	-64(%rbp), %rsi
	movl	56(%r12), %r10d
	movq	%rax, 64(%r12)
	movq	%rsi, 72(%r12)
	jmp	.L1516
	.p2align 4,,10
.L1544:
	movl	56(%r12), %r10d
	jmp	.L1528
.L1543:
	movq	%rdx, -96(%rbp)
	movq	%r9, -88(%rbp)
	movl	%ecx, -80(%rbp)
	movl	%r10d, -76(%rbp)
	movq	%rax, -64(%rbp)
	movl	%esi, -72(%rbp)
	call	sqrtf
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %r9
	movl	-80(%rbp), %ecx
	movl	-76(%rbp), %r10d
	movl	-72(%rbp), %r8d
	movq	-64(%rbp), %rax
	jmp	.L1519
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj
	.def	_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj
_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj:
.LFB708:
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
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	movl	184(%rsp), %edi
	movl	192(%rsp), %esi
	movl	176(%rsp), %ebp
	movl	%edi, %eax
	movq	%rcx, %rbx
	movq	%rdx, %r12
	orl	%esi, %eax
	movq	%r8, %r13
	orl	%ebp, %eax
	orl	%r9d, %eax
	testl	$-16777216, %eax
	je	.L1545
	movl	$6, %edx
	movl	$4, %r8d
	movl	%r9d, 44(%rsp)
	movq	.refptr.GImGui(%rip), %rax
	movq	(%rax), %rax
	movss	5952(%rax), %xmm7
	movss	5956(%rax), %xmm6
	call	_ZN10ImDrawList11PrimReserveEii
	movl	56(%rbx), %edx
	movq	72(%rbx), %rax
	movl	44(%rsp), %r9d
	leal	1(%rdx), %ecx
	movw	%dx, (%rax)
	addq	$12, %rax
	movw	%cx, -10(%rax)
	leal	2(%rdx), %ecx
	movw	%dx, -6(%rax)
	addl	$3, %edx
	movw	%dx, -2(%rax)
	movq	(%r12), %rdx
	movw	%cx, -8(%rax)
	movw	%cx, -4(%rax)
	movq	%rax, 72(%rbx)
	movq	64(%rbx), %rax
	movq	%rdx, (%rax)
	addq	$80, %rax
	movss	%xmm7, -72(%rax)
	movss	%xmm6, -68(%rax)
	movss	4(%r12), %xmm0
	movss	0(%r13), %xmm1
	movl	%r9d, -64(%rax)
	addl	$1, 56(%rbx)
	movss	%xmm0, -56(%rax)
	movss	%xmm1, -60(%rax)
	movss	%xmm7, -52(%rax)
	movss	%xmm6, -48(%rax)
	movq	0(%r13), %rdx
	movl	%ebp, -44(%rax)
	addl	$1, 56(%rbx)
	movss	%xmm7, -32(%rax)
	movss	%xmm6, -28(%rax)
	movq	%rdx, -40(%rax)
	movl	%edi, -24(%rax)
	addl	$1, 56(%rbx)
	movss	4(%r13), %xmm0
	movss	(%r12), %xmm1
	movss	%xmm0, -16(%rax)
	movss	%xmm1, -20(%rax)
	movss	%xmm7, -12(%rax)
	movss	%xmm6, -8(%rax)
	movl	%esi, -4(%rax)
	addl	$1, 56(%rbx)
	movq	%rax, 64(%rbx)
.L1545:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	.def	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j:
.LFB718:
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
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	movl	208(%rsp), %esi
	movq	192(%rsp), %r13
	movq	200(%rsp), %r14
	testl	$-16777216, %esi
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%r8, %rdi
	movq	%r9, %rbp
	je	.L1550
	movl	96(%rcx), %edx
	cmpl	$0, %edx
	je	.L1553
	jle	.L1574
.L1554:
	movq	104(%rbx), %r9
	movslq	%edx, %rax
	xorl	%r12d, %r12d
	cmpq	%r15, -8(%r9,%rax,8)
	je	.L1555
	cmpl	%edx, 100(%rbx)
	je	.L1575
.L1557:
	addl	$1, %edx
	movq	%rbx, %rcx
	movl	$1, %r12d
	movl	%edx, 96(%rbx)
	movq	%r15, (%r9,%rax,8)
	call	_ZN10ImDrawList15UpdateTextureIDEv
.L1555:
	movl	$4, %r8d
	movl	$6, %edx
	movq	%rbx, %rcx
	call	_ZN10ImDrawList11PrimReserveEii
	movl	56(%rbx), %ecx
	movq	72(%rbx), %rdx
	movss	4(%rbp), %xmm2
	movss	4(%r14), %xmm0
	leal	1(%rcx), %eax
	movss	0(%r13), %xmm1
	movss	4(%rdi), %xmm6
	addq	$12, %rdx
	movss	0(%rbp), %xmm7
	movss	(%rdi), %xmm3
	movss	4(%r13), %xmm4
	movss	(%r14), %xmm5
	movw	%ax, -10(%rdx)
	leal	2(%rcx), %eax
	movw	%ax, -8(%rdx)
	movq	(%rdi), %r8
	movw	%ax, -4(%rdx)
	leal	3(%rcx), %eax
	movw	%ax, -2(%rdx)
	movq	64(%rbx), %rax
	movw	%cx, -12(%rdx)
	movw	%cx, -6(%rdx)
	addl	$4, %ecx
	movq	%r8, (%rax)
	movq	0(%r13), %r8
	addq	$80, %rax
	movss	%xmm7, -60(%rax)
	movss	%xmm6, -56(%rax)
	movss	%xmm5, -52(%rax)
	movq	%r8, -72(%rax)
	movss	%xmm4, -48(%rax)
	movq	0(%rbp), %r8
	movl	%esi, -64(%rax)
	movl	%esi, -44(%rax)
	movq	%r8, -40(%rax)
	movq	(%r14), %r8
	movl	%esi, -24(%rax)
	movq	%r8, -32(%rax)
	movss	%xmm3, -20(%rax)
	movss	%xmm2, -16(%rax)
	movss	%xmm1, -12(%rax)
	movss	%xmm0, -8(%rax)
	movl	%esi, -4(%rax)
	testb	%r12b, %r12b
	movq	%rax, 64(%rbx)
	movl	%ecx, 56(%rbx)
	movq	%rdx, 72(%rbx)
	jne	.L1576
.L1550:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
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
.L1553:
	movl	100(%rcx), %eax
	testl	%eax, %eax
	je	.L1566
	xorl	%eax, %eax
	movq	104(%rcx), %r9
	jmp	.L1557
	.p2align 4,,10
.L1576:
	movl	96(%rbx), %edx
	testl	%edx, %edx
	jle	.L1577
.L1561:
	movl	96(%rbx), %eax
	testl	%eax, %eax
	jle	.L1578
.L1562:
	movaps	48(%rsp), %xmm6
	subl	$1, %eax
	movq	%rbx, %rcx
	movaps	64(%rsp), %xmm7
	movl	%eax, 96(%rbx)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	_ZN10ImDrawList15UpdateTextureIDEv
	.p2align 4,,10
.L1566:
	movl	$1, %eax
.L1573:
	movl	$8, %r12d
.L1558:
	cmpl	%eax, %r12d
	cmovl	%eax, %r12d
	movslq	%r12d, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	104(%rbx), %rcx
	movq	%rax, %r9
	testq	%rcx, %rcx
	je	.L1559
	movslq	96(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	104(%rbx), %rcx
	movq	%rax, %r9
.L1559:
	movq	%r9, 40(%rsp)
	call	_ZN5ImGui7MemFreeEPv
	movq	40(%rsp), %r9
	movl	%r12d, 100(%rbx)
	movslq	96(%rbx), %rax
	movq	%r9, 104(%rbx)
	movq	%rax, %rdx
	jmp	.L1557
	.p2align 4,,10
.L1575:
	leal	1(%rdx), %eax
	testl	%edx, %edx
	je	.L1573
	movl	%edx, %r12d
	shrl	$31, %r12d
	addl	%edx, %r12d
	sarl	%r12d
	addl	%edx, %r12d
	jmp	.L1558
	.p2align 4,,10
.L1574:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movl	96(%rbx), %edx
	jmp	.L1554
	.p2align 4,,10
.L1578:
	leaq	.LC35(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movl	96(%rbx), %eax
	jmp	.L1562
	.p2align 4,,10
.L1577:
	leaq	.LC6(%rip), %rdx
	movl	$272, %r8d
	leaq	.LC40(%rip), %rcx
	call	_assert
	jmp	.L1561
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList12AddImageQuadEPvRK6ImVec2S3_S3_S3_S3_S3_S3_S3_j
	.def	_ZN10ImDrawList12AddImageQuadEPvRK6ImVec2S3_S3_S3_S3_S3_S3_S3_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList12AddImageQuadEPvRK6ImVec2S3_S3_S3_S3_S3_S3_S3_j
_ZN10ImDrawList12AddImageQuadEPvRK6ImVec2S3_S3_S3_S3_S3_S3_S3_j:
.LFB719:
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
	movl	240(%rsp), %esi
	movq	192(%rsp), %rdi
	movq	200(%rsp), %rbp
	movq	208(%rsp), %r12
	testl	$-16777216, %esi
	movq	%rcx, %rbx
	movq	%rdx, %r10
	movq	%r8, 40(%rsp)
	movq	216(%rsp), %r13
	movq	224(%rsp), %r14
	movq	232(%rsp), %r15
	je	.L1579
	movl	96(%rcx), %edx
	cmpl	$0, %edx
	je	.L1582
	jle	.L1603
.L1583:
	movq	104(%rbx), %rcx
	movslq	%edx, %r8
	xorl	%eax, %eax
	cmpq	%r10, -8(%rcx,%r8,8)
	je	.L1584
	cmpl	%edx, 100(%rbx)
	je	.L1585
.L1592:
	movq	%rcx, %r11
.L1586:
	addl	$1, %edx
	movq	%rbx, %rcx
	movq	%r9, 48(%rsp)
	movl	%edx, 96(%rbx)
	movq	%r10, (%r11,%r8,8)
	call	_ZN10ImDrawList15UpdateTextureIDEv
	movq	48(%rsp), %r9
	movl	$1, %eax
.L1584:
	movl	$4, %r8d
	movl	$6, %edx
	movq	%rbx, %rcx
	movb	%al, 48(%rsp)
	movq	%r9, 56(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movl	56(%rbx), %r8d
	movq	72(%rbx), %rcx
	movq	40(%rsp), %rax
	movq	56(%rsp), %r9
	leal	1(%r8), %edx
	movw	%dx, 2(%rcx)
	leal	2(%r8), %edx
	addq	$12, %rcx
	movw	%dx, -8(%rcx)
	movq	(%rax), %r10
	movw	%dx, -4(%rcx)
	leal	3(%r8), %edx
	movw	%dx, -2(%rcx)
	movq	64(%rbx), %rdx
	movw	%r8w, -12(%rcx)
	movw	%r8w, -6(%rcx)
	addl	$4, %r8d
	movq	%r10, (%rdx)
	movq	(%r12), %r10
	addq	$80, %rdx
	movl	%esi, -64(%rdx)
	movq	%r10, -72(%rdx)
	movq	(%r9), %r9
	movq	%r9, -60(%rdx)
	movq	0(%r13), %r9
	movl	%esi, -44(%rdx)
	movq	%r9, -52(%rdx)
	movq	(%rdi), %r9
	movq	%r9, -40(%rdx)
	movq	(%r14), %r9
	movl	%esi, -24(%rdx)
	movq	%r9, -32(%rdx)
	movq	0(%rbp), %r9
	movq	%r9, -20(%rdx)
	movq	(%r15), %r9
	movl	%esi, -4(%rdx)
	movq	%r9, -12(%rdx)
	movq	%rdx, 64(%rbx)
	movl	%r8d, 56(%rbx)
	movzbl	48(%rsp), %eax
	movq	%rcx, 72(%rbx)
	testb	%al, %al
	jne	.L1604
.L1579:
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
.L1582:
	movl	100(%rcx), %eax
	testl	%eax, %eax
	je	.L1595
	xorl	%r8d, %r8d
	movq	104(%rcx), %rcx
	jmp	.L1592
	.p2align 4,,10
.L1604:
	movl	96(%rbx), %edx
	testl	%edx, %edx
	jle	.L1605
.L1590:
	movl	96(%rbx), %eax
	testl	%eax, %eax
	jle	.L1606
.L1591:
	subl	$1, %eax
	movq	%rbx, %rcx
	movl	%eax, 96(%rbx)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	_ZN10ImDrawList15UpdateTextureIDEv
	.p2align 4,,10
.L1595:
	movl	$1, %ecx
.L1602:
	movl	$8, %edx
.L1587:
	cmpl	%ecx, %edx
	movq	%r9, 56(%rsp)
	cmovge	%edx, %ecx
	movq	%r10, 48(%rsp)
	movl	%ecx, 68(%rsp)
	movslq	%ecx, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	104(%rbx), %rcx
	movq	%rax, %r11
	movq	48(%rsp), %r10
	movq	56(%rsp), %r9
	testq	%rcx, %rcx
	je	.L1588
	movslq	96(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	104(%rbx), %rcx
	movq	56(%rsp), %r9
	movq	%rax, %r11
	movq	48(%rsp), %r10
.L1588:
	movq	%r9, 72(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r11, 48(%rsp)
	call	_ZN5ImGui7MemFreeEPv
	movq	48(%rsp), %r11
	movl	68(%rsp), %eax
	movslq	96(%rbx), %r8
	movq	72(%rsp), %r9
	movq	%r11, 104(%rbx)
	movq	56(%rsp), %r10
	movl	%eax, 100(%rbx)
	movq	%r8, %rdx
	jmp	.L1586
	.p2align 4,,10
.L1585:
	leal	1(%rdx), %ecx
	testl	%edx, %edx
	je	.L1602
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%eax, %edx
	jmp	.L1587
	.p2align 4,,10
.L1603:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	movq	%r9, 56(%rsp)
	leaq	.LC38(%rip), %rcx
	movq	%r10, 48(%rsp)
	call	_assert
	movl	96(%rbx), %edx
	movq	56(%rsp), %r9
	movq	48(%rsp), %r10
	jmp	.L1583
	.p2align 4,,10
.L1606:
	leaq	.LC35(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movl	96(%rbx), %eax
	jmp	.L1591
	.p2align 4,,10
.L1605:
	leaq	.LC6(%rip), %rdx
	movl	$272, %r8d
	leaq	.LC40(%rip), %rcx
	call	_assert
	jmp	.L1590
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawData17DeIndexAllBuffersEv
	.def	_ZN10ImDrawData17DeIndexAllBuffersEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawData17DeIndexAllBuffersEv
_ZN10ImDrawData17DeIndexAllBuffersEv:
.LFB720:
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
	movl	16(%rcx), %edx
	testl	%edx, %edx
	movq	%rcx, %r15
	movq	$0, 20(%rcx)
	jle	.L1607
	xorl	%r14d, %r14d
	movl	$0, 44(%rsp)
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	movq	$0, 32(%rsp)
	jmp	.L1608
	.p2align 4,,10
.L1610:
	addl	$1, %r13d
	addq	$8, %r14
	cmpl	%edx, %r13d
	jge	.L1657
.L1608:
	movq	8(%r15), %rax
	movq	(%rax,%r14), %rbx
	movl	16(%rbx), %r12d
	testl	%r12d, %r12d
	je	.L1610
	movl	44(%rsp), %ecx
	cmpl	%r12d, %ecx
	jge	.L1633
	testl	%ecx, %ecx
	movl	$8, %eax
	je	.L1612
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	addl	%ecx, %eax
.L1612:
	cmpl	%eax, %r12d
	jge	.L1632
	cmpl	%eax, 44(%rsp)
	jl	.L1658
.L1633:
	movl	%r12d, %eax
.L1611:
	testl	%eax, %eax
	jle	.L1615
	movq	32(%rsp), %rdi
	xorl	%ebp, %ebp
	jmp	.L1620
	.p2align 4,,10
.L1619:
	movq	40(%rbx), %rax
	leaq	(%rsi,%rsi,4), %rdx
	cmpl	%ebp, %r12d
	leaq	(%rax,%rdx,4), %rsi
	jle	.L1659
.L1617:
	movq	(%rsi), %rax
	addq	$20, %rdi
	movq	%rax, -20(%rdi)
	movq	8(%rsi), %rax
	movq	%rax, -12(%rdi)
	movl	16(%rsi), %eax
	movl	%eax, -4(%rdi)
	leal	1(%rbp), %eax
	addq	$1, %rbp
	cmpl	%eax, 16(%rbx)
	jle	.L1615
.L1620:
	movq	24(%rbx), %rax
	movzwl	(%rax,%rbp,2), %eax
	cmpl	32(%rbx), %eax
	movq	%rax, %rsi
	jl	.L1619
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC36(%rip), %rcx
.LEHB0:
	call	_assert
	jmp	.L1619
	.p2align 4,,10
.L1659:
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC36(%rip), %rcx
	call	_assert
.LEHE0:
	jmp	.L1617
	.p2align 4,,10
.L1615:
	movl	44(%rsp), %eax
	movl	36(%rbx), %edi
	movq	40(%rbx), %rsi
	movslq	32(%rbx), %rbp
	movl	%r12d, 32(%rbx)
	movl	%eax, 36(%rbx)
	movq	32(%rsp), %rax
	movq	%rax, 40(%rbx)
	movl	20(%rbx), %eax
	testl	%eax, %eax
	jns	.L1621
	xorl	%ecx, %ecx
.LEHB1:
	call	_ZN5ImGui8MemAllocEy
.LEHE1:
	movq	24(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L1625
	movslq	16(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%rbx), %rcx
.L1625:
.LEHB2:
	call	_ZN5ImGui7MemFreeEPv
.LEHE2:
	movq	%r12, 24(%rbx)
	movl	32(%rbx), %r12d
	movl	$0, 20(%rbx)
.L1621:
	movl	16(%r15), %edx
	addl	$1, %r13d
	addq	$8, %r14
	movl	%edi, 44(%rsp)
	movl	$0, 16(%rbx)
	addl	%r12d, 20(%r15)
	movq	%rsi, 32(%rsp)
	cmpl	%edx, %r13d
	jl	.L1608
.L1657:
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.L1607
	movq	%rax, %rcx
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,10
.L1632:
	movl	%r12d, 44(%rsp)
.L1613:
	movslq	44(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	salq	$2, %rcx
.LEHB3:
	call	_ZN5ImGui8MemAllocEy
	movq	32(%rsp), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	je	.L1614
	leaq	0(%rbp,%rbp,4), %r8
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
.L1614:
	movq	32(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
.LEHE3:
	movl	16(%rbx), %eax
	movq	%rsi, 32(%rsp)
	jmp	.L1611
	.p2align 4,,10
.L1607:
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
.L1635:
.L1656:
	movq	%rsi, 32(%rsp)
.L1624:
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1628
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui7MemFreeEPv
	movq	32(%rsp), %rax
.L1628:
	movq	%rax, %rcx
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L1658:
	movl	%eax, 44(%rsp)
	jmp	.L1613
.L1636:
	jmp	.L1656
.L1634:
	jmp	.L1624
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA720:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE720-.LLSDACSB720
.LLSDACSB720:
	.uleb128 .LEHB0-.LFB720
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L1634-.LFB720
	.uleb128 0
	.uleb128 .LEHB1-.LFB720
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L1636-.LFB720
	.uleb128 0
	.uleb128 .LEHB2-.LFB720
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L1635-.LFB720
	.uleb128 0
	.uleb128 .LEHB3-.LFB720
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L1634-.LFB720
	.uleb128 0
	.uleb128 .LEHB4-.LFB720
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE720:
	.text
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawData14ScaleClipRectsERK6ImVec2
	.def	_ZN10ImDrawData14ScaleClipRectsERK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawData14ScaleClipRectsERK6ImVec2
_ZN10ImDrawData14ScaleClipRectsERK6ImVec2:
.LFB721:
	.seh_endprologue
	movl	16(%rcx), %r8d
	testl	%r8d, %r8d
	jle	.L1660
	movq	8(%rcx), %rax
	leal	-1(%r8), %ecx
	leaq	8(%rax), %r10
	leaq	(%r10,%rcx,8), %r11
	.p2align 4,,10
.L1664:
	movq	(%rax), %r9
	movl	(%r9), %eax
	testl	%eax, %eax
	jle	.L1662
	movss	4(%rdx), %xmm1
	subl	$1, %eax
	xorl	%ecx, %ecx
	movss	(%rdx), %xmm2
	leaq	3(%rax,%rax,2), %r8
	salq	$4, %r8
	unpcklps	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	movlhps	%xmm2, %xmm1
	.p2align 4,,10
.L1663:
	movq	8(%r9), %rax
	pxor	%xmm0, %xmm0
	addq	%rcx, %rax
	addq	$48, %rcx
	movlps	4(%rax), %xmm0
	cmpq	%r8, %rcx
	movhps	12(%rax), %xmm0
	mulps	%xmm1, %xmm0
	movlps	%xmm0, 4(%rax)
	movhps	%xmm0, 12(%rax)
	jne	.L1663
.L1662:
	cmpq	%r10, %r11
	movq	%r10, %rax
	je	.L1660
	addq	$8, %r10
	jmp	.L1664
	.p2align 4,,10
.L1660:
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImFontConfigC2Ev
	.def	_ZN12ImFontConfigC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImFontConfigC2Ev
_ZN12ImFontConfigC2Ev:
.LFB723:
	.seh_endprologue
	movabsq	$4294967299, %rax
	movq	$0, (%rcx)
	movl	$0, 8(%rcx)
	movb	$1, 12(%rcx)
	movq	$0, 16(%rcx)
	movq	%rax, 24(%rcx)
	movb	$0, 32(%rcx)
	movq	$0, 36(%rcx)
	movq	$0, 44(%rcx)
	movq	$0, 56(%rcx)
	movb	$0, 64(%rcx)
	movq	$0, 104(%rcx)
	movq	$0, 65(%rcx)
	movq	$0, 73(%rcx)
	movq	$0, 81(%rcx)
	movq	$0, 89(%rcx)
	ret
	.seh_endproc
	.globl	_ZN12ImFontConfigC1Ev
	.def	_ZN12ImFontConfigC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN12ImFontConfigC1Ev,_ZN12ImFontConfigC2Ev
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlasC2Ev
	.def	_ZN11ImFontAtlasC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlasC2Ev
_ZN11ImFontAtlasC2Ev:
.LFB726:
	.seh_endprologue
	movq	$0, 48(%rcx)
	movq	$0, 56(%rcx)
	movq	$0, 64(%rcx)
	movq	$0, 72(%rcx)
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movl	$0, 40(%rcx)
	ret
	.seh_endproc
	.globl	_ZN11ImFontAtlasC1Ev
	.def	_ZN11ImFontAtlasC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN11ImFontAtlasC1Ev,_ZN11ImFontAtlasC2Ev
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas14ClearInputDataEv
	.def	_ZN11ImFontAtlas14ClearInputDataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas14ClearInputDataEv
_ZN11ImFontAtlas14ClearInputDataEv:
.LFB731:
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
	leaq	.LC35(%rip), %r12
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	leaq	.LC36(%rip), %rbp
	movl	64(%rcx), %r8d
	movq	72(%rcx), %rdx
	testl	%r8d, %r8d
	movq	%rcx, %rdi
	jle	.L1676
	.p2align 4,,10
.L1670:
	leaq	(%rdx,%rsi), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.L1673
	cmpb	$0, 12(%rax)
	je	.L1673
	cmpl	%r8d, %ebx
	jge	.L1695
.L1674:
	call	_ZN5ImGui7MemFreeEPv
	cmpl	%ebx, 64(%rdi)
	jle	.L1696
.L1675:
	movq	72(%rdi), %rax
	movq	$0, (%rax,%rsi)
	movl	64(%rdi), %r8d
	movq	72(%rdi), %rdx
.L1673:
	addl	$1, %ebx
	addq	$112, %rsi
	cmpl	%r8d, %ebx
	jl	.L1670
.L1676:
	movl	48(%rdi), %r9d
	testl	%r9d, %r9d
	jle	.L1671
	movq	56(%rdi), %r10
	leaq	.LC35(%rip), %rbp
	xorl	%ebx, %ebx
	leaq	.LC36(%rip), %rsi
	.p2align 4,,10
.L1680:
	movq	(%r10,%rbx,8), %rcx
	leaq	0(,%rbx,8), %r13
	movq	80(%rcx), %r8
	cmpq	%rdx, %r8
	jb	.L1677
	movslq	64(%rdi), %r11
	leaq	0(,%r11,8), %rax
	subq	%r11, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	cmpq	%rax, %r8
	jnb	.L1677
	cmpl	%r9d, %ebx
	jge	.L1697
	movq	$0, 80(%rcx)
.L1679:
	xorl	%eax, %eax
	movw	%ax, 78(%rcx)
.L1677:
	leal	1(%rbx), %eax
	addq	$1, %rbx
	cmpl	%r9d, %eax
	jl	.L1680
.L1671:
	testq	%rdx, %rdx
	je	.L1669
	movq	$0, 64(%rdi)
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 72(%rdi)
.L1669:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L1696:
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	_assert
	jmp	.L1675
	.p2align 4,,10
.L1695:
	movq	%rbp, %rcx
	movl	$856, %r8d
	movq	%r12, %rdx
	call	_assert
	movq	72(%rdi), %rax
	movq	(%rax,%rsi), %rcx
	jmp	.L1674
	.p2align 4,,10
.L1697:
	movq	%rsi, %rcx
	movl	$856, %r8d
	movq	%rbp, %rdx
	call	_assert
	movq	56(%rdi), %r10
	movl	48(%rdi), %r9d
	movq	(%r10,%r13), %rcx
	cmpl	%r9d, %ebx
	movq	$0, 80(%rcx)
	jl	.L1694
	movq	%rsi, %rcx
	movl	$856, %r8d
	movq	%rbp, %rdx
	call	_assert
	movq	56(%rdi), %r10
	movl	48(%rdi), %r9d
	movq	(%r10,%r13), %rcx
.L1694:
	movq	72(%rdi), %rdx
	jmp	.L1679
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas12ClearTexDataEv
	.def	_ZN11ImFontAtlas12ClearTexDataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas12ClearTexDataEv
_ZN11ImFontAtlas12ClearTexDataEv:
.LFB732:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L1699
	call	_ZN5ImGui7MemFreeEPv
.L1699:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1700
	call	_ZN5ImGui7MemFreeEPv
.L1700:
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas10ClearFontsEv
	.def	_ZN11ImFontAtlas10ClearFontsEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas10ClearFontsEv
_ZN11ImFontAtlas10ClearFontsEv:
.LFB733:
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
	movl	48(%rcx), %edx
	testl	%edx, %edx
	movq	%rcx, %rsi
	jle	.L1708
	movabsq	$4575657221408423936, %r12
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	leaq	.LC35(%rip), %r14
	leaq	.LC36(%rip), %r13
	jmp	.L1709
	.p2align 4,,10
.L1715:
	movq	56(%rsi), %rax
	addl	$1, %edi
	movq	(%rax,%rbp), %rcx
	addq	$8, %rbp
.LEHB5:
	call	_ZN5ImGui7MemFreeEPv
.LEHE5:
	cmpl	%edi, 48(%rsi)
	jle	.L1708
.L1709:
	movq	56(%rsi), %rax
	movq	(%rax,%rbp), %rbx
	movq	24(%rbx), %rcx
	movl	$0x00000000, (%rbx)
	movq	%r12, 8(%rbx)
	testq	%rcx, %rcx
	je	.L1710
	movq	$0, 16(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 24(%rbx)
.L1710:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1711
	movq	$0, 32(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 40(%rbx)
.L1711:
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1712
	movq	$0, 48(%rbx)
	call	_ZN5ImGui7MemFreeEPv
.L1712:
	movq	40(%rbx), %rcx
	xorl	%eax, %eax
	movq	$0, 64(%rbx)
	movl	$0x00000000, 72(%rbx)
	movq	$0, 78(%rbx)
	movq	$0, 86(%rbx)
	testq	%rcx, %rcx
	movq	$0, 94(%rbx)
	movl	$0, 102(%rbx)
	movw	%ax, 106(%rbx)
	je	.L1713
	call	_ZN5ImGui7MemFreeEPv
.L1713:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1714
	call	_ZN5ImGui7MemFreeEPv
.L1714:
	cmpl	%edi, 48(%rsi)
	jg	.L1715
	movl	$856, %r8d
	movq	%r14, %rdx
	movq	%r13, %rcx
.LEHB6:
	call	_assert
	jmp	.L1715
	.p2align 4,,10
.L1708:
	movq	56(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1707
	movq	$0, 48(%rsi)
	call	_ZN5ImGui7MemFreeEPv
.LEHE6:
	movq	$0, 56(%rsi)
.L1707:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA733:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE733-.LLSDACSB733
.LLSDACSB733:
	.uleb128 .LEHB5-.LFB733
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB733
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE733:
	.text
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlasD2Ev
	.def	_ZN11ImFontAtlasD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlasD2Ev
_ZN11ImFontAtlasD2Ev:
.LFB729:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZN11ImFontAtlas14ClearInputDataEv
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1738
	call	_ZN5ImGui7MemFreeEPv
.L1738:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1739
	call	_ZN5ImGui7MemFreeEPv
.L1739:
	movq	%rbx, %rcx
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	call	_ZN11ImFontAtlas10ClearFontsEv
	movq	72(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1740
	call	_ZN5ImGui7MemFreeEPv
.L1740:
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1737
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,10
.L1737:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA729:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE729-.LLSDACSB729
.LLSDACSB729:
.LLSDACSE729:
	.text
	.seh_endproc
	.globl	_ZN11ImFontAtlasD1Ev
	.def	_ZN11ImFontAtlasD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN11ImFontAtlasD1Ev,_ZN11ImFontAtlasD2Ev
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas5ClearEv
	.def	_ZN11ImFontAtlas5ClearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas5ClearEv
_ZN11ImFontAtlas5ClearEv:
.LFB734:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZN11ImFontAtlas14ClearInputDataEv
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1752
	call	_ZN5ImGui7MemFreeEPv
.L1752:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1753
	call	_ZN5ImGui7MemFreeEPv
.L1753:
	movq	%rbx, %rcx
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN11ImFontAtlas10ClearFontsEv
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC45:
	.ascii "..-         -XXXXXXX-    X    -           X           -XXXXXXX          -          XXXXXXX..-         -X.....X-   X.X   -          X.X          -X.....X          -          X.....X---         -XXX.XXX-  X...X  -         X...X         -X....X           -           X....XX           -  X.X  - X.....X -        X.....X        -X...X            -            X...XXX          -  X.X  -X.......X-       X.......X       -X..X.X           -           X.X..XX.X         -  X.X  -XXXX.XXXX-       XXXX.XXXX       -X.X X.X          -          X.X X.XX..X        -  X.X  -   X.X   -          X.X          -XX   X.X         -         X.X   XXX...X       -  X.X  -   X.X   -    XX    X.X    XX    -      X.X        -        X.X      X....X      -  X.X  -   X.X   -   X.X    X.X    X.X   -       X.X       -       X.X       X.....X     -  X.X  -   X.X   -  X..X    X.X    X..X  -        X.X      -      X.X        X......X    -  X.X  -   X.X   - X...XXXXXX.XXXXXX...X -         X.X   XX-XX   X.X         X.......X   -  X.X  -   X.X   -X.....................X-          X.X X.X-X.X X.X          X........X  -  X.X  -   X.X   - X...XXXXXX.XXXXXX...X -           X.X..X-X..X.X           X.........X -XXX.XXX-   X.X   -  X..X    X.X    X..X  -            X...X-X...X            X..........X-X.....X-   X.X   -   X.X    X.X    X.X   -           X....X-X....X           X......XXXXX-XXXXXXX-   X.X   -    XX    X.X    XX    -          X.....X-X.....X          X...X..X    ---------   X.X   -          X.X          -          XXXXXXX-XXXXXXX          X..X X..X   -       -XXXX.XXXX-       XXXX.XXXX       ------------------------------------X.X  X..X   -       -X.......X-       X.......X       -    XX           XX    -           XX    X..X  -       - X.....X -        X.....X        -   X.X           X.X   -                 X..X          -  X...X  -         X...X         -  X..X           X..X  -                  XX           -   X.X   -          X.X          - X...XXXXXXXXXXXXX...X -           ------------        "
	.ascii "-    X    -           X           -X.....................X-                               ----------------------------------- X...XXXXXXXXXXXXX...X -                                                                 -  X..X           X..X  -                                                                 -   X.X           X.X   -                                                                 -    XX           XX    -           \0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas19RenderCustomTexDataEiPv
	.def	_ZN11ImFontAtlas19RenderCustomTexDataEiPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas19RenderCustomTexDataEiPv
_ZN11ImFontAtlas19RenderCustomTexDataEiPv:
.LFB746:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$2760, %rsp
	.seh_stackalloc	2760
	movaps	%xmm6, 2640(%rsp)
	.seh_savexmm	%xmm6, 2640
	movaps	%xmm7, 2656(%rsp)
	.seh_savexmm	%xmm7, 2656
	movaps	%xmm8, 2672(%rsp)
	.seh_savexmm	%xmm8, 2672
	movaps	%xmm9, 2688(%rsp)
	.seh_savexmm	%xmm9, 2688
	movaps	%xmm10, 2704(%rsp)
	.seh_savexmm	%xmm10, 2704
	movaps	%xmm11, 2720(%rsp)
	.seh_savexmm	%xmm11, 2720
	movaps	%xmm12, 2736(%rsp)
	.seh_savexmm	%xmm12, 2736
	.seh_endprologue
	leaq	208(%rsp), %rdi
	movl	%edx, %ebp
	movq	%rcx, %rbx
	leaq	.LC45(%rip), %rdx
	movq	%r8, %rsi
	movq	%rdi, %rcx
	movl	$2431, %r8d
	call	memcpy
	testl	%ebp, %ebp
	je	.L1782
	cmpl	$1, %ebp
	je	.L1783
.L1760:
	movaps	2640(%rsp), %xmm6
	movaps	2656(%rsp), %xmm7
	movaps	2672(%rsp), %xmm8
	movaps	2688(%rsp), %xmm9
	movaps	2704(%rsp), %xmm10
	movaps	2720(%rsp), %xmm11
	movaps	2736(%rsp), %xmm12
	addq	$2760, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L1782:
	movq	$0, 32(%rsp)
	movslq	(%rsi), %rax
	cmpl	4(%rsi), %eax
	movl	$1835189, 36(%rsp)
	movq	$0, 40(%rsp)
	je	.L1762
	movq	8(%rsi), %rdi
.L1763:
	movq	32(%rsp), %rcx
	leal	1(%rax), %edx
	salq	$4, %rax
	movq	40(%rsp), %rbx
	movl	%edx, (%rsi)
	movq	%rcx, (%rdi,%rax)
	movq	%rbx, 8(%rdi,%rax)
	jmp	.L1760
.L1783:
	movl	(%rsi), %eax
	testl	%eax, %eax
	jle	.L1784
.L1767:
	movq	8(%rsi), %r8
	movq	%rdi, %r10
	xorl	%r9d, %r9d
	.p2align 4,,10
.L1772:
	xorl	%edx, %edx
	.p2align 4,,10
.L1768:
	movzwl	10(%r8), %eax
	movzwl	8(%r8), %ecx
	movzbl	(%r10,%rdx), %r11d
	addl	%r9d, %eax
	imull	24(%rbx), %eax
	addl	%edx, %ecx
	addl	%ecx, %eax
	leal	91(%rax), %ecx
	cltq
	addq	8(%rbx), %rax
	cmpb	$46, %r11b
	je	.L1785
	movb	$0, (%rax)
	movq	8(%rbx), %rdi
	cmpb	$88, %r11b
	movslq	%ecx, %rcx
	sete	%al
	addq	$1, %rdx
	negl	%eax
	cmpq	$90, %rdx
	movb	%al, (%rdi,%rcx)
	jne	.L1768
	addl	$1, %r9d
	addq	$90, %r10
	cmpl	$27, %r9d
	jne	.L1772
.L1786:
	pxor	%xmm1, %xmm1
	cvtsi2ss	28(%rbx), %xmm1
	movss	.LC18(%rip), %xmm0
	movabsq	$4656722015794757632, %rcx
	movzwl	8(%r8), %edx
	movabsq	$4683743613547446272, %r10
	movabsq	$4697254412441092096, %r9
	movabsq	$4726527810020048896, %rsi
	movaps	%xmm0, %xmm7
	movzwl	10(%r8), %eax
	movabsq	$4697254412431654912, %r8
	movq	%rcx, 144(%rsp)
	movss	.LC1(%rip), %xmm3
	movq	%r10, 72(%rsp)
	divss	%xmm1, %xmm7
	pxor	%xmm1, %xmm1
	cvtsi2ss	24(%rbx), %xmm1
	movss	.LC48(%rip), %xmm8
	movss	.LC46(%rip), %xmm5
	movq	%r9, 96(%rsp)
	movq	$0, 48(%rsp)
	movq	%r8, 120(%rsp)
	divss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%edx, %xmm1
	movabsq	$4688247213184253952, %rdx
	movaps	%xmm7, %xmm9
	movq	%rdx, 168(%rsp)
	movaps	%xmm7, %xmm12
	movq	%rdx, 192(%rsp)
	movaps	%xmm1, %xmm2
	movaps	%xmm1, %xmm4
	addss	%xmm3, %xmm2
	mulss	%xmm0, %xmm2
	movaps	%xmm0, %xmm6
	movaps	%xmm0, %xmm10
	movss	%xmm2, 36(%rbx)
	pxor	%xmm2, %xmm2
	cvtsi2ss	%eax, %xmm2
	movq	.refptr.GImGui(%rip), %rax
	addss	%xmm2, %xmm3
	movq	(%rax), %rax
	addss	%xmm2, %xmm5
	mulss	%xmm7, %xmm3
	mulss	%xmm5, %xmm9
	addss	.LC47(%rip), %xmm5
	movss	%xmm3, 40(%rbx)
	pxor	%xmm3, %xmm3
	addss	%xmm3, %xmm4
	mulss	%xmm7, %xmm5
	movq	%rsi, 6560(%rax)
	addss	%xmm2, %xmm3
	movabsq	$4719772410572701696, %rsi
	movss	%xmm9, 6572(%rax)
	movss	%xmm9, 6580(%rax)
	mulss	%xmm4, %xmm6
	movl	$0, 6548(%rax)
	movq	$0, 6552(%rax)
	movss	%xmm5, 6588(%rax)
	movss	%xmm6, 6568(%rax)
	movaps	%xmm4, %xmm6
	addss	%xmm8, %xmm6
	movss	%xmm5, 6596(%rax)
	mulss	%xmm0, %xmm6
	movss	%xmm6, 6584(%rax)
	movss	.LC49(%rip), %xmm6
	addss	%xmm6, %xmm4
	mulss	%xmm4, %xmm10
	addss	%xmm8, %xmm4
	mulss	%xmm0, %xmm4
	movss	%xmm10, 6576(%rax)
	movss	%xmm4, 6592(%rax)
	movss	.LC50(%rip), %xmm5
	movaps	%xmm3, %xmm4
	movss	.LC52(%rip), %xmm10
	mulss	%xmm7, %xmm4
	movq	%rsi, 6612(%rax)
	movabsq	$4735535009282654208, %rsi
	addss	%xmm1, %xmm5
	movq	%rsi, 6664(%rax)
	subq	$11010048, %rsi
	movq	%rsi, 6716(%rax)
	movabsq	$4688247213195264000, %rsi
	movl	$1, 6600(%rax)
	movaps	%xmm5, %xmm9
	movaps	%xmm5, %xmm8
	movq	%r10, 6604(%rax)
	addss	%xmm6, %xmm5
	mulss	%xmm0, %xmm8
	movss	%xmm4, 6624(%rax)
	addss	%xmm10, %xmm9
	movss	%xmm4, 6632(%rax)
	movl	$2, 6652(%rax)
	movq	%r9, 6656(%rax)
	mulss	%xmm0, %xmm9
	movss	%xmm4, 6676(%rax)
	movss	%xmm8, 6620(%rax)
	movss	.LC51(%rip), %xmm8
	movss	%xmm4, 6684(%rax)
	addss	%xmm3, %xmm8
	movq	%r8, 6708(%rax)
	movss	%xmm9, 6636(%rax)
	movaps	%xmm0, %xmm9
	movl	$3, 6704(%rax)
	mulss	%xmm5, %xmm9
	addss	%xmm10, %xmm5
	mulss	%xmm7, %xmm8
	mulss	%xmm0, %xmm5
	movss	%xmm9, 6628(%rax)
	movaps	%xmm3, %xmm9
	movss	%xmm8, 6640(%rax)
	movss	%xmm8, 6648(%rax)
	movaps	%xmm0, %xmm8
	movss	%xmm5, 6644(%rax)
	movss	.LC53(%rip), %xmm5
	addss	%xmm1, %xmm5
	mulss	%xmm5, %xmm8
	movaps	%xmm5, %xmm10
	addss	%xmm6, %xmm5
	movss	%xmm8, 6672(%rax)
	movss	.LC54(%rip), %xmm8
	addss	%xmm8, %xmm10
	addss	%xmm8, %xmm9
	mulss	%xmm0, %xmm10
	mulss	%xmm7, %xmm9
	movss	%xmm10, 6688(%rax)
	movaps	%xmm0, %xmm10
	movss	%xmm9, 6692(%rax)
	mulss	%xmm5, %xmm10
	addss	%xmm8, %xmm5
	movss	%xmm9, 6700(%rax)
	mulss	%xmm0, %xmm5
	movss	%xmm10, 6680(%rax)
	movaps	%xmm0, %xmm10
	movss	%xmm5, 6696(%rax)
	movss	.LC55(%rip), %xmm5
	addss	%xmm1, %xmm5
	mulss	%xmm5, %xmm10
	movaps	%xmm5, %xmm11
	addss	%xmm6, %xmm5
	movss	%xmm10, 6724(%rax)
	movss	%xmm4, 6728(%rax)
	addss	.LC57(%rip), %xmm2
	movss	.LC56(%rip), %xmm10
	movq	%rcx, 6760(%rax)
	movabsq	$4722024210397396992, %rcx
	movss	%xmm9, 6744(%rax)
	addss	%xmm10, %xmm11
	mulss	%xmm2, %xmm12
	movss	%xmm9, 6752(%rax)
	addss	%xmm10, %xmm2
	movss	%xmm4, 6736(%rax)
	movl	$4, 6756(%rax)
	mulss	%xmm0, %xmm11
	movq	%rsi, 6768(%rax)
	mulss	%xmm7, %xmm2
	movss	%xmm12, 6780(%rax)
	movss	%xmm12, 6788(%rax)
	movl	$5, 6808(%rax)
	movss	%xmm11, 6740(%rax)
	movaps	%xmm0, %xmm11
	mulss	%xmm5, %xmm11
	addss	%xmm10, %xmm5
	movss	%xmm2, 6796(%rax)
	movaps	%xmm0, %xmm10
	movss	%xmm2, 6804(%rax)
	movaps	%xmm0, %xmm2
	movq	%rcx, 6820(%rax)
	mulss	%xmm0, %xmm5
	movq	%rdx, 6812(%rax)
	movss	%xmm11, 6732(%rax)
	movaps	%xmm0, %xmm11
	movss	%xmm4, 6832(%rax)
	movss	%xmm4, 6840(%rax)
	movss	%xmm5, 6748(%rax)
	movss	.LC58(%rip), %xmm5
	addss	%xmm1, %xmm5
	addss	.LC59(%rip), %xmm1
	mulss	%xmm5, %xmm11
	movaps	%xmm5, %xmm9
	mulss	%xmm1, %xmm2
	addss	%xmm8, %xmm9
	movss	%xmm11, 6776(%rax)
	mulss	%xmm0, %xmm9
	movss	%xmm2, 6828(%rax)
	movss	.LC60(%rip), %xmm2
	addss	%xmm2, %xmm3
	movss	%xmm9, 6792(%rax)
	movaps	%xmm5, %xmm9
	addss	%xmm2, %xmm5
	addss	%xmm6, %xmm9
	mulss	%xmm7, %xmm3
	movaps	%xmm1, %xmm7
	addss	%xmm6, %xmm1
	mulss	%xmm0, %xmm5
	movaps	%xmm0, %xmm6
	mulss	%xmm9, %xmm10
	addss	%xmm9, %xmm8
	addss	%xmm2, %xmm7
	mulss	%xmm1, %xmm6
	addss	%xmm2, %xmm9
	movss	%xmm3, 6848(%rax)
	addss	%xmm2, %xmm1
	mulss	%xmm0, %xmm8
	movss	%xmm10, 6784(%rax)
	mulss	%xmm0, %xmm7
	mulss	%xmm0, %xmm9
	mulss	%xmm0, %xmm1
	movss	%xmm6, 6836(%rax)
	movss	%xmm8, 6800(%rax)
	movss	%xmm7, 6844(%rax)
	movss	%xmm1, 6852(%rax)
	movss	%xmm3, 6856(%rax)
	movl	$6, 6860(%rax)
	movq	%rcx, 6872(%rax)
	movq	%rdx, 6864(%rax)
	movss	%xmm11, 6880(%rax)
	movss	%xmm4, 6884(%rax)
	movss	%xmm5, 6896(%rax)
	movss	%xmm3, 6900(%rax)
	movss	%xmm10, 6888(%rax)
	movss	%xmm4, 6892(%rax)
	movss	%xmm9, 6904(%rax)
	movss	%xmm3, 6908(%rax)
	jmp	.L1760
	.p2align 4,,10
.L1785:
	movb	$-1, (%rax)
	movq	8(%rbx), %rax
	addq	$1, %rdx
	movslq	%ecx, %rcx
	cmpq	$90, %rdx
	movb	$0, (%rax,%rcx)
	jne	.L1768
	addl	$1, %r9d
	addq	$90, %r10
	cmpl	$27, %r9d
	jne	.L1772
	jmp	.L1786
.L1762:
	leal	1(%rax), %ebx
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1764
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1764:
	cmpl	%edx, %ebx
	cmovl	%edx, %ebx
	movslq	%ebx, %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rsi), %rdx
	movq	%rax, %rdi
	testq	%rdx, %rdx
	je	.L1765
	movslq	(%rsi), %r8
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rsi), %rdx
.L1765:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	%rdi, 8(%rsi)
	movslq	(%rsi), %rax
	movl	%ebx, 4(%rsi)
	jmp	.L1763
.L1784:
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC36(%rip), %rcx
	call	_assert
	jmp	.L1767
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas21GetGlyphRangesDefaultEv
	.def	_ZN11ImFontAtlas21GetGlyphRangesDefaultEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas21GetGlyphRangesDefaultEv
_ZN11ImFontAtlas21GetGlyphRangesDefaultEv:
.LFB747:
	.seh_endprologue
	leaq	_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges(%rip), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas20GetGlyphRangesKoreanEv
	.def	_ZN11ImFontAtlas20GetGlyphRangesKoreanEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas20GetGlyphRangesKoreanEv
_ZN11ImFontAtlas20GetGlyphRangesKoreanEv:
.LFB748:
	.seh_endprologue
	leaq	_ZZN11ImFontAtlas20GetGlyphRangesKoreanEvE6ranges(%rip), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas21GetGlyphRangesChineseEv
	.def	_ZN11ImFontAtlas21GetGlyphRangesChineseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas21GetGlyphRangesChineseEv
_ZN11ImFontAtlas21GetGlyphRangesChineseEv:
.LFB749:
	.seh_endprologue
	leaq	_ZZN11ImFontAtlas21GetGlyphRangesChineseEvE6ranges(%rip), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas22GetGlyphRangesJapaneseEv
	.def	_ZN11ImFontAtlas22GetGlyphRangesJapaneseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas22GetGlyphRangesJapaneseEv
_ZN11ImFontAtlas22GetGlyphRangesJapaneseEv:
.LFB750:
	.seh_endprologue
	cmpb	$0, _ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE20full_ranges_unpacked(%rip)
	jne	.L1791
	movq	_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11base_ranges(%rip), %rax
	leaq	_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE19offsets_from_0x4E00(%rip), %rcx
	movq	8+_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11base_ranges(%rip), %rdx
	movq	%rax, _ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges(%rip)
	leaq	16+_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges(%rip), %rax
	movq	%rdx, 8+_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges(%rip)
	leaq	7784(%rax), %r9
	movl	$19968, %edx
	.p2align 4,,10
.L1792:
	movswl	(%rcx), %r8d
	addq	$4, %rax
	addq	$2, %rcx
	leal	1(%rdx,%r8), %edx
	movw	%dx, -2(%rax)
	movw	%dx, -4(%rax)
	cmpq	%r9, %rax
	jne	.L1792
	xorl	%eax, %eax
	movb	$1, _ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE20full_ranges_unpacked(%rip)
	movw	%ax, 7800+_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges(%rip)
.L1791:
	leaq	_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges(%rip), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas22GetGlyphRangesCyrillicEv
	.def	_ZN11ImFontAtlas22GetGlyphRangesCyrillicEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas22GetGlyphRangesCyrillicEv
_ZN11ImFontAtlas22GetGlyphRangesCyrillicEv:
.LFB751:
	.seh_endprologue
	leaq	_ZZN11ImFontAtlas22GetGlyphRangesCyrillicEvE6ranges(%rip), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas18GetGlyphRangesThaiEv
	.def	_ZN11ImFontAtlas18GetGlyphRangesThaiEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas18GetGlyphRangesThaiEv
_ZN11ImFontAtlas18GetGlyphRangesThaiEv:
.LFB752:
	.seh_endprologue
	leaq	_ZZN11ImFontAtlas18GetGlyphRangesThaiEvE6ranges(%rip), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN6ImFontC2Ev
	.def	_ZN6ImFontC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6ImFontC2Ev
_ZN6ImFontC2Ev:
.LFB754:
	.seh_endprologue
	movabsq	$4575657221408423936, %rax
	movq	%rax, (%rcx)
	movq	%rax, 8(%rcx)
	movabsq	$270582939648, %rax
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movq	$0, 56(%rcx)
	movq	$0, 64(%rcx)
	movq	%rax, 72(%rcx)
	movq	$0, 80(%rcx)
	movq	$0, 88(%rcx)
	movq	$0, 96(%rcx)
	movl	$0, 104(%rcx)
	ret
	.seh_endproc
	.globl	_ZN6ImFontC1Ev
	.def	_ZN6ImFontC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN6ImFontC1Ev,_ZN6ImFontC2Ev
	.section .rdata,"dr"
	.align 8
.LC61:
	.ascii "font_cfg->FontData != __null && font_cfg->FontDataSize > 0\0"
.LC62:
	.ascii "font_cfg->SizePixels > 0.0f\0"
.LC63:
	.ascii "!Fonts.empty()\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig
	.def	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig
_ZN11ImFontAtlas7AddFontEPK12ImFontConfig:
.LFB737:
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
	cmpq	$0, (%rdx)
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	je	.L1798
	movl	8(%rdx), %edx
	testl	%edx, %edx
	jle	.L1798
	movss	20(%rbx), %xmm0
	ucomiss	.LC5(%rip), %xmm0
	jbe	.L1833
.L1800:
	cmpb	$0, 64(%rbx)
	je	.L1834
.L1801:
	movl	48(%rsi), %eax
	testl	%eax, %eax
	je	.L1835
.L1806:
	movslq	64(%rsi), %rax
	cmpl	68(%rsi), %eax
	je	.L1807
.L1838:
	movq	72(%rsi), %rdi
.L1808:
	leal	1(%rax), %edx
	movl	%edx, 64(%rsi)
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	(%rbx), %rdx
	salq	$4, %rax
	addq	%rdi, %rax
	movq	%rdx, (%rax)
	movq	8(%rbx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rbx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rbx), %rdx
	movq	%rdx, 24(%rax)
	movq	32(%rbx), %rdx
	movq	%rdx, 32(%rax)
	movq	40(%rbx), %rdx
	movq	%rdx, 40(%rax)
	movq	48(%rbx), %rdx
	movq	%rdx, 48(%rax)
	movq	56(%rbx), %rdx
	movq	%rdx, 56(%rax)
	movq	64(%rbx), %rdx
	movq	%rdx, 64(%rax)
	movq	72(%rbx), %rdx
	movq	%rdx, 72(%rax)
	movq	80(%rbx), %rdx
	movq	%rdx, 80(%rax)
	movq	88(%rbx), %rdx
	movq	%rdx, 88(%rax)
	movq	96(%rbx), %rdx
	movq	%rdx, 96(%rax)
	movq	104(%rbx), %rdx
	movq	%rdx, 104(%rax)
	movslq	64(%rsi), %rax
	testl	%eax, %eax
	jle	.L1836
.L1811:
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	72(%rsi), %rdx
	salq	$4, %rax
	leaq	-112(%rdx,%rax), %rdi
	cmpq	$0, 104(%rdi)
	je	.L1837
.L1812:
	cmpb	$0, 12(%rdi)
	jne	.L1814
	movslq	8(%rdi), %rcx
	call	_ZN5ImGui8MemAllocEy
	movb	$1, 12(%rdi)
	movslq	8(%rdi), %r8
	movq	%rax, (%rdi)
	movq	(%rbx), %rdx
	movq	%rax, %rcx
	call	memcpy
.L1814:
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1815
	call	_ZN5ImGui7MemFreeEPv
.L1815:
	movq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1816
	call	_ZN5ImGui7MemFreeEPv
.L1816:
	movq	$0, 8(%rsi)
	movq	$0, 16(%rsi)
	movq	104(%rdi), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L1835:
	leaq	.LC6(%rip), %rdx
	movl	$1164, %r8d
	leaq	.LC63(%rip), %rcx
	call	_assert
	movslq	64(%rsi), %rax
	cmpl	68(%rsi), %eax
	jne	.L1838
.L1807:
	leal	1(%rax), %ecx
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L1839
.L1809:
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movslq	%edx, %rax
	leaq	0(,%rax,8), %rcx
	movq	%rax, %rbp
	subq	%rax, %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	72(%rsi), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L1810
	movslq	64(%rsi), %rax
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	leaq	0(,%rax,8), %r8
	subq	%rax, %r8
	salq	$4, %r8
	call	memcpy
	movq	72(%rsi), %rcx
.L1810:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rdi, 72(%rsi)
	movslq	64(%rsi), %rax
	movl	%ebp, 68(%rsi)
	jmp	.L1808
	.p2align 4,,10
.L1798:
	leaq	.LC6(%rip), %rdx
	movl	$1152, %r8d
	leaq	.LC61(%rip), %rcx
	call	_assert
	movss	20(%rbx), %xmm0
	ucomiss	.LC5(%rip), %xmm0
	ja	.L1800
.L1833:
	leaq	.LC6(%rip), %rdx
	movl	$1153, %r8d
	leaq	.LC62(%rip), %rcx
	call	_assert
	cmpb	$0, 64(%rbx)
	jne	.L1801
.L1834:
	movl	$112, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZN6ImFontC1Ev
	movslq	48(%rsi), %rax
	cmpl	52(%rsi), %eax
	je	.L1802
	movq	56(%rsi), %rbp
.L1803:
	leal	1(%rax), %edx
	movl	%edx, 48(%rsi)
	movq	%rdi, 0(%rbp,%rax,8)
	jmp	.L1806
	.p2align 4,,10
.L1836:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movslq	64(%rsi), %rax
	jmp	.L1811
	.p2align 4,,10
.L1839:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L1809
	.p2align 4,,10
.L1837:
	movslq	48(%rsi), %rax
	testl	%eax, %eax
	jle	.L1840
.L1813:
	movq	56(%rsi), %rdx
	movq	-8(%rdx,%rax,8), %rax
	movq	%rax, 104(%rdi)
	jmp	.L1812
	.p2align 4,,10
.L1802:
	leal	1(%rax), %ecx
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1804
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1804:
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movslq	%edx, %rcx
	movq	%rcx, %r12
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	56(%rsi), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L1805
	movslq	48(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	56(%rsi), %rcx
.L1805:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rbp, 56(%rsi)
	movslq	48(%rsi), %rax
	movl	%r12d, 52(%rsi)
	jmp	.L1803
	.p2align 4,,10
.L1840:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movslq	48(%rsi), %rax
	jmp	.L1813
	.seh_endproc
	.section .rdata,"dr"
.LC64:
	.ascii "font_cfg.FontData == __null\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt
	.def	_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt
_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt:
.LFB742:
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
	movq	240(%rsp), %rax
	movq	248(%rsp), %rbx
	testq	%rax, %rax
	movq	%rcx, %rsi
	movq	%rdx, %rbp
	movl	%r8d, %edi
	je	.L1842
	movq	8(%rax), %rcx
	movq	(%rax), %rdx
	movq	%rcx, 56(%rsp)
	movq	16(%rax), %rcx
	testq	%rdx, %rdx
	movq	%rdx, 48(%rsp)
	movq	%rcx, 64(%rsp)
	movq	24(%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	32(%rax), %rcx
	movq	%rcx, 80(%rsp)
	movq	40(%rax), %rcx
	movq	%rcx, 88(%rsp)
	movq	48(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movq	56(%rax), %rcx
	movq	%rcx, 104(%rsp)
	movq	64(%rax), %rcx
	movq	%rcx, 112(%rsp)
	movq	72(%rax), %rcx
	movq	%rcx, 120(%rsp)
	movq	80(%rax), %rcx
	movq	%rcx, 128(%rsp)
	movq	88(%rax), %rcx
	movq	%rcx, 136(%rsp)
	movq	96(%rax), %rcx
	movq	104(%rax), %rax
	movq	%rcx, 144(%rsp)
	movq	%rax, 152(%rsp)
	je	.L1851
	leaq	.LC6(%rip), %rdx
	movl	$1239, %r8d
	movss	%xmm3, 44(%rsp)
	leaq	.LC64(%rip), %rcx
	call	_assert
	movss	44(%rsp), %xmm3
	leaq	48(%rsp), %rdx
.L1843:
	testq	%rbx, %rbx
	movq	%rbp, 48(%rsp)
	movl	%edi, 56(%rsp)
	movss	%xmm3, 68(%rsp)
	je	.L1845
	movq	%rbx, 104(%rsp)
.L1845:
	movq	%rsi, %rcx
	call	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig
	addq	$168, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L1851:
	leaq	48(%rsp), %rdx
	jmp	.L1843
	.p2align 4,,10
.L1842:
	leaq	48(%rsp), %rdx
	movb	$1, 60(%rsp)
	movabsq	$4294967299, %rax
	movq	$0, 152(%rsp)
	movq	$0, 113(%rsp)
	movl	$0, 64(%rsp)
	movq	%rax, 72(%rsp)
	movb	$0, 80(%rsp)
	movq	$0, 84(%rsp)
	movq	$0, 92(%rsp)
	movq	$0, 104(%rsp)
	movb	$0, 112(%rsp)
	movq	$0, 73(%rdx)
	movq	$0, 81(%rdx)
	movq	$0, 89(%rdx)
	jmp	.L1843
	.seh_endproc
	.section .rdata,"dr"
.LC65:
	.ascii "stb__dout == output + olen\0"
.LC66:
	.ascii "stb__dout <= output + olen\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt
	.def	_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt
_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt:
.LFB743:
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
	movaps	%xmm6, 288(%rsp)
	.seh_savexmm	%xmm6, 288
	.seh_endprologue
	movzbl	8(%rdx), %eax
	movq	416(%rsp), %rsi
	movq	%rdx, %rbx
	sall	$24, %eax
	movq	%rcx, 384(%rsp)
	movaps	%xmm3, %xmm6
	movzbl	9(%rbx), %edi
	sall	$16, %edi
	leal	(%rax,%rdi), %eax
	movzbl	10(%rbx), %edi
	sall	$8, %edi
	addl	%eax, %edi
	movzbl	11(%rbx), %eax
	leal	(%rdi,%rax), %ecx
	movq	%rcx, %rdi
	call	_ZN5ImGui8MemAllocEy
	movzbl	2(%rbx), %edx
	movq	%rax, %r13
	movzbl	3(%rbx), %ecx
	movzbl	1(%rbx), %eax
	sall	$8, %edx
	addl	%edx, %ecx
	sall	$16, %eax
	leal	(%rcx,%rax), %edx
	movzbl	(%rbx), %eax
	sall	$24, %eax
	addl	%edx, %eax
	cmpl	$1471938560, %eax
	je	.L1980
.L1854:
	testq	%rsi, %rsi
	je	.L1900
	movq	8(%rsi), %rdx
	movq	(%rsi), %rax
	movq	%rdx, 72(%rsp)
	movq	16(%rsi), %rdx
	testq	%rax, %rax
	movq	%rax, 64(%rsp)
	movq	%rdx, 80(%rsp)
	movq	24(%rsi), %rdx
	movq	%rdx, 88(%rsp)
	movq	32(%rsi), %rdx
	movq	%rdx, 96(%rsp)
	movq	40(%rsi), %rdx
	movq	%rdx, 104(%rsp)
	movq	48(%rsi), %rdx
	movq	%rdx, 112(%rsp)
	movq	56(%rsi), %rdx
	movq	%rdx, 120(%rsp)
	movq	64(%rsi), %rdx
	movq	%rdx, 128(%rsp)
	movq	72(%rsi), %rdx
	movq	%rdx, 136(%rsp)
	movq	80(%rsi), %rdx
	movq	%rdx, 144(%rsp)
	movq	88(%rsi), %rdx
	movq	%rdx, 152(%rsp)
	movq	96(%rsi), %rdx
	movq	%rdx, 160(%rsp)
	movq	104(%rsi), %rdx
	movq	%rdx, 168(%rsp)
	je	.L1901
	leaq	.LC6(%rip), %rdx
	movl	$1255, %r8d
	leaq	.LC64(%rip), %rcx
	call	_assert
	movq	64(%rsp), %rax
	movb	$1, 76(%rsp)
	movl	$1239, %r8d
	leaq	.LC6(%rip), %rdx
	leaq	.LC64(%rip), %rcx
	movq	%rax, 176(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 248(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 264(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 272(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 280(%rsp)
	call	_assert
.L1904:
	cmpq	$0, 424(%rsp)
	movl	%edi, 184(%rsp)
	movq	%r13, 176(%rsp)
	movss	%xmm6, 196(%rsp)
	je	.L1903
	movq	424(%rsp), %rax
	movq	%rax, 232(%rsp)
.L1903:
	movq	384(%rsp), %rcx
	leaq	176(%rsp), %rdx
	call	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig
	nop
	movaps	288(%rsp), %xmm6
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
	.p2align 4,,10
.L1900:
	movabsq	$4294967299, %rax
	movb	$0, 96(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	%rax, 88(%rsp)
	movq	$0, 100(%rsp)
	movq	$0, 108(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 129(%rsp)
	movq	$0, 137(%rsp)
	movq	$0, 145(%rsp)
	movq	$0, 153(%rsp)
.L1901:
	movb	$1, 76(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 248(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 264(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 272(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 280(%rsp)
	jmp	.L1904
	.p2align 4,,10
.L1980:
	movzbl	6(%rbx), %eax
	movzbl	7(%rbx), %edx
	sall	$8, %eax
	addl	%eax, %edx
	movzbl	5(%rbx), %eax
	sall	$16, %eax
	addl	%edx, %eax
	movzbl	4(%rbx), %edx
	sall	$24, %edx
	addl	%edx, %eax
	jne	.L1854
	movzbl	8(%rbx), %edx
	movq	%rbx, _ZL13stb__barrier2(%rip)
	addq	$16, %rbx
	movzbl	-7(%rbx), %eax
	movq	%r13, _ZL13stb__barrier4(%rip)
	movq	%r13, _ZL9stb__dout(%rip)
	movl	%edx, %ecx
	sall	$16, %eax
	sall	$24, %ecx
	leal	(%rcx,%rax), %edx
	movzbl	-6(%rbx), %eax
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	-5(%rbx), %edx
	addl	%edx, %eax
	leaq	0(%r13,%rax), %r15
	movl	%eax, 48(%rsp)
	movq	%r15, _ZL12stb__barrier(%rip)
	.p2align 4,,10
.L1856:
	movzbl	(%rbx), %r8d
	cmpb	$31, %r8b
	jbe	.L1857
	testb	%r8b, %r8b
	movzbl	%r8b, %ebp
	movq	_ZL9stb__dout(%rip), %r12
	js	.L1981
	cmpb	$63, %r8b
	movq	_ZL12stb__barrier(%rip), %rcx
	jbe	.L1860
	movzbl	2(%rbx), %r11d
	movq	%r12, %r8
	movzbl	1(%rbx), %r9d
	leal	1(%r11), %eax
	movq	%r11, %r10
	movslq	%eax, %r14
	leaq	(%r12,%r14), %rdx
	cmpq	%rdx, %rcx
	jb	.L1982
.L1861:
	sall	$8, %ebp
	leal	-16384(%rbp,%r9), %edx
	movslq	%edx, %rdx
	notq	%rdx
	leaq	(%r12,%rdx), %r9
	cmpq	_ZL13stb__barrier4(%rip), %r9
	jb	.L1863
	leaq	16(%r12,%rdx), %rbp
	leal	1(%r11), %r14d
	cmpq	%rbp, %r8
	leaq	16(%r8), %rbp
	movl	%r14d, 52(%rsp)
	setnb	%r14b
	leal	-1(%rax), %ecx
	cmpq	%rbp, %r9
	setnb	%bpl
	orb	%bpl, %r14b
	je	.L1864
	cmpl	$22, 52(%rsp)
	jbe	.L1864
	movq	%r9, %rbp
	negq	%rbp
	andl	$15, %ebp
	leal	15(%rbp), %r14d
	cmpl	%r11d, %r14d
	ja	.L1906
	testl	%ebp, %ebp
	je	.L1907
	leaq	1(%r9), %rcx
	cmpl	$1, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	(%r9), %ecx
	leaq	1(%r8), %r11
	movb	%cl, (%r8)
	leal	-2(%rax), %ecx
	je	.L1866
	leaq	2(%r9), %rcx
	cmpl	$2, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	1(%r9), %ecx
	leaq	2(%r8), %r11
	movb	%cl, 1(%r8)
	leal	-3(%rax), %ecx
	je	.L1866
	leaq	3(%r9), %rcx
	cmpl	$3, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	2(%r9), %ecx
	leaq	3(%r8), %r11
	movb	%cl, 2(%r8)
	leal	-4(%rax), %ecx
	je	.L1866
	leaq	4(%r9), %rcx
	cmpl	$4, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	3(%r9), %ecx
	leaq	4(%r8), %r11
	movb	%cl, 3(%r8)
	leal	-5(%rax), %ecx
	je	.L1866
	leaq	5(%r9), %rcx
	cmpl	$5, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	4(%r9), %ecx
	leaq	5(%r8), %r11
	movb	%cl, 4(%r8)
	leal	-6(%rax), %ecx
	je	.L1866
	leaq	6(%r9), %rcx
	cmpl	$6, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	5(%r9), %ecx
	leaq	6(%r8), %r11
	movb	%cl, 5(%r8)
	leal	-7(%rax), %ecx
	je	.L1866
	leaq	7(%r9), %rcx
	cmpl	$7, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	6(%r9), %ecx
	leaq	7(%r8), %r11
	movb	%cl, 6(%r8)
	leal	-8(%rax), %ecx
	je	.L1866
	leaq	8(%r9), %rcx
	cmpl	$8, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	7(%r9), %ecx
	leaq	8(%r8), %r11
	movb	%cl, 7(%r8)
	leal	-9(%rax), %ecx
	je	.L1866
	leaq	9(%r9), %rcx
	cmpl	$9, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	8(%r9), %ecx
	leaq	9(%r8), %r11
	movb	%cl, 8(%r8)
	leal	-10(%rax), %ecx
	je	.L1866
	leaq	10(%r9), %rcx
	cmpl	$10, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	9(%r9), %ecx
	leaq	10(%r8), %r11
	movb	%cl, 9(%r8)
	leal	-11(%rax), %ecx
	je	.L1866
	leaq	11(%r9), %rcx
	cmpl	$11, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	10(%r9), %ecx
	leaq	11(%r8), %r11
	movb	%cl, 10(%r8)
	leal	-12(%rax), %ecx
	je	.L1866
	leaq	12(%r9), %rcx
	cmpl	$12, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	11(%r9), %ecx
	leaq	12(%r8), %r11
	movb	%cl, 11(%r8)
	leal	-13(%rax), %ecx
	je	.L1866
	leaq	13(%r9), %rcx
	cmpl	$13, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	12(%r9), %ecx
	leaq	13(%r8), %r11
	movb	%cl, 12(%r8)
	leal	-14(%rax), %ecx
	je	.L1866
	leaq	14(%r9), %rcx
	cmpl	$15, %ebp
	movq	%rcx, 40(%rsp)
	movzbl	13(%r9), %ecx
	leaq	14(%r8), %r11
	movb	%cl, 13(%r8)
	leal	-15(%rax), %ecx
	jne	.L1866
	leaq	15(%r9), %rcx
	movq	%rcx, 40(%rsp)
	movzbl	14(%r9), %ecx
	leaq	15(%r8), %r11
	movb	%cl, 14(%r8)
	leal	-16(%rax), %ecx
	.p2align 4,,10
.L1866:
	movl	52(%rsp), %r9d
	movl	%ebp, %eax
	addq	%rax, %rdx
	addq	%rdx, %r12
	leaq	(%r8,%rax), %rdx
	xorl	%eax, %eax
	subl	%ebp, %r9d
	leal	-16(%r9), %r14d
	movl	%r9d, %ebp
	xorl	%r9d, %r9d
	shrl	$4, %r14d
	addl	$1, %r14d
	.p2align 4,,10
.L1868:
	movdqa	(%r12,%rax), %xmm0
	addl	$1, %r9d
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpl	%r9d, %r14d
	ja	.L1868
	movq	40(%rsp), %r9
	sall	$4, %r14d
	movl	%r14d, %eax
	subl	%r14d, %ecx
	addq	%rax, %r11
	addq	%rax, %r9
	cmpl	%ebp, %r14d
	je	.L1872
.L1865:
	addq	$1, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
.L1870:
	movzbl	(%r9,%rax), %edx
	movb	%dl, (%r11,%rax)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L1870
.L1872:
	leaq	1(%r8,%r10), %rax
	movq	%rax, _ZL9stb__dout(%rip)
	jmp	.L1862
	.p2align 4,,10
.L1857:
	cmpb	$23, %r8b
	ja	.L1983
	cmpb	$15, %r8b
	ja	.L1984
	cmpb	$7, %r8b
	ja	.L1985
	je	.L1986
	cmpb	$6, %r8b
	je	.L1987
	cmpb	$4, %r8b
	je	.L1988
.L1893:
	cmpb	$5, %r8b
	jne	.L1895
	cmpb	$-6, 1(%rbx)
	je	.L1989
.L1895:
	leaq	.LC6(%rip), %rdx
	movl	$2308, %r8d
	leaq	.LC8(%rip), %rcx
	call	_assert
	jmp	.L1854
	.p2align 4,,10
.L1860:
	subl	$31, %ebp
	movslq	%ebp, %r14
	leaq	(%r12,%r14), %rax
	cmpq	%rcx, %rax
	ja	.L1990
.L1873:
	leaq	1(%rbx), %rdx
	cmpq	_ZL13stb__barrier2(%rip), %rdx
	jnb	.L1875
	addq	$1, %rcx
	movq	%rcx, _ZL9stb__dout(%rip)
.L1874:
	movzbl	(%rbx), %ebp
	subl	$30, %ebp
	movslq	%ebp, %rbp
	addq	%rbx, %rbp
	jmp	.L1859
	.p2align 4,,10
.L1983:
	movzbl	1(%rbx), %eax
	leaq	4(%rbx), %rbp
	sall	$16, %r8d
	movzbl	2(%rbx), %ecx
	movzbl	3(%rbx), %edx
	sall	$8, %eax
	addl	%ecx, %eax
	leal	-1572864(%rax,%r8), %ecx
	addl	$1, %edx
	movslq	%ecx, %rcx
	notq	%rcx
	addq	_ZL9stb__dout(%rip), %rcx
	call	_ZL10stb__matchPhj
	.p2align 4,,10
.L1859:
	cmpq	%rbp, %rbx
	je	.L1991
	cmpq	_ZL9stb__dout(%rip), %r15
	jb	.L1992
.L1899:
	movq	%rbp, %rbx
	jmp	.L1856
	.p2align 4,,10
.L1992:
	leaq	.LC6(%rip), %rdx
	movl	$2312, %r8d
	leaq	.LC66(%rip), %rcx
	call	_assert
	cmpq	_ZL9stb__dout(%rip), %r15
	jnb	.L1899
	jmp	.L1854
	.p2align 4,,10
.L1990:
	leaq	.LC7(%rip), %rcx
	movl	$2225, %r8d
	leaq	.LC6(%rip), %rdx
	call	_assert
	movq	_ZL9stb__dout(%rip), %r12
	movq	_ZL12stb__barrier(%rip), %rcx
	leaq	(%r12,%r14), %rax
	cmpq	%rcx, %rax
	jbe	.L1873
.L1877:
	movq	%rax, _ZL9stb__dout(%rip)
	jmp	.L1874
	.p2align 4,,10
.L1982:
	movl	$2217, %r8d
	movl	%r11d, 60(%rsp)
	leaq	.LC7(%rip), %rcx
	movb	%r9b, 59(%rsp)
	leaq	.LC6(%rip), %rdx
	movl	%eax, 52(%rsp)
	movb	%r11b, 40(%rsp)
	call	_assert
	movq	_ZL9stb__dout(%rip), %r8
	movq	_ZL12stb__barrier(%rip), %rcx
	movzbl	40(%rsp), %r10d
	movl	52(%rsp), %eax
	addq	%r8, %r14
	movzbl	59(%rsp), %r9d
	cmpq	%rcx, %r14
	movl	60(%rsp), %r11d
	jbe	.L1861
	movq	%r14, _ZL9stb__dout(%rip)
.L1862:
	leaq	3(%rbx), %rbp
	jmp	.L1859
	.p2align 4,,10
.L1984:
	movzbl	3(%rbx), %eax
	sall	$16, %r8d
	movzbl	4(%rbx), %edx
	movzbl	2(%rbx), %ecx
	sall	$8, %eax
	leal	1(%rax,%rdx), %edx
	movzbl	1(%rbx), %eax
	sall	$8, %eax
	addl	%ecx, %eax
	leal	-1048576(%rax,%r8), %ecx
.L1979:
	leaq	5(%rbx), %rbp
	movslq	%ecx, %rcx
	notq	%rcx
	addq	_ZL9stb__dout(%rip), %rcx
	call	_ZL10stb__matchPhj
	jmp	.L1859
	.p2align 4,,10
.L1981:
	movzbl	1(%rbx), %ecx
	leal	-127(%rbp), %edx
	leaq	2(%rbx), %rbp
	notq	%rcx
	addq	%r12, %rcx
	call	_ZL10stb__matchPhj
	jmp	.L1859
	.p2align 4,,10
.L1985:
	movzbl	1(%rbx), %eax
	sall	$8, %r8d
	movq	_ZL9stb__dout(%rip), %rcx
	leal	-2047(%r8,%rax), %ebp
	movq	_ZL12stb__barrier(%rip), %rax
	movslq	%ebp, %rbp
	leaq	(%rcx,%rbp), %r12
	cmpq	%rax, %r12
	ja	.L1993
.L1885:
	leaq	2(%rbx), %rdx
	cmpq	_ZL13stb__barrier2(%rip), %rdx
	jnb	.L1887
	addq	$1, %rax
	movq	%rax, _ZL9stb__dout(%rip)
.L1886:
	movzbl	(%rbx), %eax
	movzbl	1(%rbx), %edx
	sall	$8, %eax
	leal	-2045(%rax,%rdx), %ebp
	movslq	%ebp, %rbp
	addq	%rbx, %rbp
	jmp	.L1859
	.p2align 4,,10
.L1863:
	addq	$1, %rcx
	movq	%rcx, _ZL9stb__dout(%rip)
	jmp	.L1862
	.p2align 4,,10
.L1875:
	cmpl	$8, %ebp
	jnb	.L1876
	testb	$4, %bpl
	jne	.L1994
	testl	%ebp, %ebp
	je	.L1877
	movzbl	(%rdx), %ecx
	testb	$2, %bpl
	movb	%cl, (%r12)
	je	.L1877
	movl	%ebp, %ebp
	movzwl	-2(%rdx,%rbp), %edx
	movw	%dx, -2(%r12,%rbp)
	jmp	.L1877
	.p2align 4,,10
.L1987:
	movzbl	2(%rbx), %ecx
	movzbl	3(%rbx), %eax
	movzbl	4(%rbx), %edx
	sall	$8, %ecx
	addl	%ecx, %eax
	movzbl	1(%rbx), %ecx
	addl	$1, %edx
	sall	$16, %ecx
	addl	%eax, %ecx
	jmp	.L1979
	.p2align 4,,10
.L1876:
	movl	%ebp, %ecx
	subl	$1, %ebp
	movq	-8(%rdx,%rcx), %r8
	cmpl	$8, %ebp
	movq	%r8, -8(%r12,%rcx)
	jb	.L1877
	andl	$-8, %ebp
	xorl	%ecx, %ecx
.L1880:
	movl	%ecx, %r8d
	addl	$8, %ecx
	movq	(%rdx,%r8), %r9
	cmpl	%ebp, %ecx
	movq	%r9, (%r12,%r8)
	jb	.L1880
	jmp	.L1877
	.p2align 4,,10
.L1989:
	cmpq	_ZL9stb__dout(%rip), %r15
	je	.L1898
	leaq	.LC6(%rip), %rdx
	movl	$2302, %r8d
	leaq	.LC65(%rip), %rcx
	call	_assert
	cmpq	_ZL9stb__dout(%rip), %r15
	jne	.L1854
.L1898:
	movl	48(%rsp), %eax
	movl	$1584310703, %edx
	mull	%edx
	movl	48(%rsp), %eax
	shrl	$11, %edx
	imull	$5552, %edx, %edx
	movl	%eax, %ebx
	subl	%edx, %ebx
	testl	%eax, %eax
	movl	%ebx, %edx
	je	.L1854
.L1897:
	subl	%edx, %eax
	movl	$5552, %edx
	testl	%eax, %eax
	jne	.L1897
	jmp	.L1854
	.p2align 4,,10
.L1887:
	movq	%rbp, %r8
	call	memcpy
.L1977:
	movq	%r12, _ZL9stb__dout(%rip)
	jmp	.L1886
.L1907:
	movq	%r8, %r11
	movq	%r9, 40(%rsp)
	jmp	.L1866
	.p2align 4,,10
.L1986:
	movzbl	1(%rbx), %eax
	movzbl	2(%rbx), %edx
	movq	_ZL9stb__dout(%rip), %rcx
	sall	$8, %eax
	leal	1(%rax,%rdx), %ebp
	movq	_ZL12stb__barrier(%rip), %rax
	movslq	%ebp, %rbp
	leaq	(%rcx,%rbp), %r12
	cmpq	%rax, %r12
	ja	.L1995
.L1889:
	leaq	3(%rbx), %rdx
	cmpq	_ZL13stb__barrier2(%rip), %rdx
	jnb	.L1891
	addq	$1, %rax
	movq	%rax, _ZL9stb__dout(%rip)
.L1890:
	movzbl	1(%rbx), %eax
	movzbl	2(%rbx), %edx
	sall	$8, %eax
	leal	4(%rax,%rdx), %ebp
	movslq	%ebp, %rbp
	addq	%rbx, %rbp
	jmp	.L1859
	.p2align 4,,10
.L1988:
	movzbl	4(%rbx), %eax
	leaq	6(%rbx), %rbp
	movzbl	5(%rbx), %edx
	movzbl	2(%rbx), %ecx
	sall	$8, %eax
	leal	1(%rax,%rdx), %edx
	movzbl	3(%rbx), %eax
	sall	$8, %ecx
	addl	%ecx, %eax
	movzbl	1(%rbx), %ecx
	sall	$16, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	notq	%rcx
	addq	_ZL9stb__dout(%rip), %rcx
	call	_ZL10stb__matchPhj
	jmp	.L1859
	.p2align 4,,10
.L1993:
	leaq	.LC7(%rip), %rcx
	movl	$2225, %r8d
	leaq	.LC6(%rip), %rdx
	call	_assert
	movq	_ZL9stb__dout(%rip), %rcx
	movq	_ZL12stb__barrier(%rip), %rax
	leaq	(%rcx,%rbp), %r12
	cmpq	%rax, %r12
	ja	.L1977
	jmp	.L1885
	.p2align 4,,10
.L1995:
	leaq	.LC7(%rip), %rcx
	movl	$2225, %r8d
	leaq	.LC6(%rip), %rdx
	call	_assert
	movq	_ZL9stb__dout(%rip), %rcx
	movq	_ZL12stb__barrier(%rip), %rax
	leaq	(%rcx,%rbp), %r12
	cmpq	%rax, %r12
	jbe	.L1889
.L1978:
	movq	%r12, _ZL9stb__dout(%rip)
	jmp	.L1890
	.p2align 4,,10
.L1864:
	leaq	1(%r10), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
.L1871:
	movzbl	(%r9,%rax), %edx
	movb	%dl, (%r8,%rax)
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L1871
	jmp	.L1872
.L1891:
	movq	%rbp, %r8
	call	memcpy
	jmp	.L1978
.L1906:
	movq	%r8, %r11
	jmp	.L1865
.L1994:
	movl	(%rdx), %ecx
	movl	%ebp, %ebp
	movl	%ecx, (%r12)
	movl	-4(%rdx,%rbp), %edx
	movl	%edx, -4(%r12,%rbp)
	jmp	.L1877
.L1991:
	movzbl	(%rbx), %r8d
	jmp	.L1893
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt
	.def	_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt
_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt:
.LFB744:
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
	movq	%rcx, %rbx
	movq	%rdx, %rcx
	movq	%rdx, %rsi
	movss	%xmm2, 60(%rsp)
	movq	%r9, %rbp
	call	strlen
	movl	$1717986919, %edx
	leal	4(%rax), %ecx
	movl	%ecx, %eax
	sarl	$31, %ecx
	imull	%edx
	sarl	%edx
	subl	%ecx, %edx
	leal	0(,%rdx,4), %r12d
	movslq	%r12d, %rcx
	call	_ZN5ImGui8MemAllocEy
	movss	60(%rsp), %xmm2
	movq	%rax, %rdi
	movzbl	(%rsi), %eax
	testb	%al, %al
	je	.L1997
	movq	%rdi, %rcx
	.p2align 4,,10
.L2008:
	xorl	%r8d, %r8d
	cmpb	$92, %al
	movsbl	%al, %edx
	movsbl	4(%rsi), %r11d
	setl	%r8b
	xorl	%r9d, %r9d
	leal	-36(%r8,%rdx), %r8d
	movsbl	1(%rsi), %edx
	cmpb	$92, %dl
	setl	%r9b
	xorl	%r10d, %r10d
	leal	-36(%r9,%rdx), %r9d
	movsbl	2(%rsi), %edx
	cmpb	$92, %dl
	setl	%r10b
	leal	-36(%r10,%rdx), %r10d
	movsbl	3(%rsi), %edx
	cmpb	$92, %dl
	setl	%al
	cmpb	$92, %r11b
	movzbl	%al, %eax
	leal	-36(%rax,%rdx), %eax
	setl	%dl
	addq	$5, %rsi
	movzbl	%dl, %edx
	addq	$4, %rcx
	leal	-36(%rdx,%r11), %edx
	imull	$85, %edx, %edx
	addl	%edx, %eax
	imull	$85, %eax, %eax
	addl	%r10d, %eax
	imull	$85, %eax, %eax
	addl	%r9d, %eax
	imull	$85, %eax, %eax
	addl	%r8d, %eax
	movl	%eax, %edx
	movb	%al, -4(%rcx)
	movb	%ah, -3(%rcx)
	shrl	$16, %edx
	shrl	$24, %eax
	movb	%dl, -2(%rcx)
	movb	%al, -1(%rcx)
	movzbl	(%rsi), %eax
	testb	%al, %al
	jne	.L2008
.L1997:
	movaps	%xmm2, %xmm3
	movl	%r12d, %r8d
	movq	%rdi, %rdx
	movq	%rbp, 32(%rsp)
	movq	144(%rsp), %rax
	movq	%rbx, %rcx
	movq	%rax, 40(%rsp)
	call	_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt
	movq	%rdi, %rcx
	movq	%rax, %rbx
	call	_ZN5ImGui7MemFreeEPv
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig
	.def	_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig
_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig:
.LFB740:
	subq	$168, %rsp
	.seh_stackalloc	168
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L2014
	movq	(%rdx), %rax
	leaq	48(%rsp), %r9
	movq	72(%rdx), %r8
	movq	%rax, 48(%rsp)
	movq	8(%rdx), %rax
	movq	%r8, 120(%rsp)
	movq	80(%rdx), %r8
	movq	%rax, 56(%rsp)
	movq	16(%rdx), %rax
	movq	%r8, 128(%rsp)
	movq	88(%rdx), %r8
	movq	%rax, 64(%rsp)
	movq	24(%rdx), %rax
	movq	%r8, 136(%rsp)
	movq	96(%rdx), %r8
	movq	%rax, 72(%rsp)
	movq	32(%rdx), %rax
	movq	%r8, 144(%rsp)
	movq	%rax, 80(%rsp)
	movq	40(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	48(%rdx), %rax
	movq	%rax, 96(%rsp)
	movq	56(%rdx), %rax
	movq	%rax, 104(%rsp)
	movq	64(%rdx), %rax
	movq	104(%rdx), %rdx
	testb	$-1, %ah
	movq	%rax, 112(%rsp)
	movq	%rdx, 152(%rsp)
	je	.L2015
.L2016:
	leaq	_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges(%rip), %rax
	movss	.LC50(%rip), %xmm2
	movq	%rax, 32(%rsp)
	leaq	_ZL39proggy_clean_ttf_compressed_data_base85(%rip), %rdx
	call	_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt
	addq	$168, %rsp
	ret
	.p2align 4,,10
.L2014:
	leaq	48(%rsp), %r9
	xorl	%edx, %edx
	movabsq	$4294967297, %rax
	movq	$0, 152(%rsp)
	movq	$0, 135(%rsp)
	movq	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	movb	$1, 60(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 84(%rsp)
	movq	$0, 92(%rsp)
	movq	$0, 104(%rsp)
	movb	$0, 112(%rsp)
	movw	%dx, 95(%r9)
	movq	%rax, 72(%rsp)
	movb	$1, 80(%rsp)
.L2015:
	movabsq	$7801212464559780432, %rdx
	movl	$120, %eax
	movq	%rdx, 113(%rsp)
	movabsq	$3199372627637330277, %rdx
	movq	%rdx, 73(%r9)
	movl	$1882403104, 81(%r9)
	movw	%ax, 85(%r9)
	jmp	.L2016
	.seh_endproc
	.section .rdata,"dr"
.LC67:
	.ascii "rb\0"
.LC68:
	.ascii "%s, %.0fpx\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas18AddFontFromFileTTFEPKcfPK12ImFontConfigPKt
	.def	_ZN11ImFontAtlas18AddFontFromFileTTFEPKcfPK12ImFontConfigPKt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas18AddFontFromFileTTFEPKcfPK12ImFontConfigPKt
_ZN11ImFontAtlas18AddFontFromFileTTFEPKcfPK12ImFontConfigPKt:
.LFB741:
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
	subq	$304, %rsp
	.seh_stackalloc	304
	movaps	%xmm6, 288(%rsp)
	.seh_savexmm	%xmm6, 288
	.seh_endprologue
	movq	384(%rsp), %rbp
	movq	%rdx, %rsi
	movq	%rcx, %r12
	movq	%r9, %rbx
	movl	$0, 60(%rsp)
	xorl	%r9d, %r9d
	movq	%rsi, %rcx
	movaps	%xmm2, %xmm6
	leaq	60(%rsp), %r8
	leaq	.LC67(%rip), %rdx
	call	_Z18ImFileLoadToMemoryPKcS0_Pii
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L2033
	testq	%rbx, %rbx
	je	.L2021
	movq	(%rbx), %rax
	movq	72(%rbx), %rdx
	movq	%rax, 64(%rsp)
	movq	8(%rbx), %rax
	movq	%rdx, 136(%rsp)
	movq	80(%rbx), %rdx
	movq	%rax, 72(%rsp)
	movq	16(%rbx), %rax
	movq	%rdx, 144(%rsp)
	movq	88(%rbx), %rdx
	movq	%rax, 80(%rsp)
	movq	24(%rbx), %rax
	movq	%rdx, 152(%rsp)
	movq	96(%rbx), %rdx
	movq	%rax, 88(%rsp)
	movq	32(%rbx), %rax
	movq	%rdx, 160(%rsp)
	movq	104(%rbx), %rdx
	movq	%rax, 96(%rsp)
	movq	40(%rbx), %rax
	movq	%rdx, 168(%rsp)
	movq	%rax, 104(%rsp)
	movq	48(%rbx), %rax
	movq	%rax, 112(%rsp)
	movq	56(%rbx), %rax
	movq	%rax, 120(%rsp)
	movq	64(%rbx), %rax
	leaq	64(%rsp), %rbx
	testb	$-1, %ah
	movq	%rax, 128(%rsp)
	je	.L2022
.L2023:
	movq	72(%rsp), %rdx
	movq	64(%rsp), %rax
	movl	60(%rsp), %ebx
	movq	%rdx, 184(%rsp)
	movq	80(%rsp), %rdx
	testq	%rax, %rax
	movq	%rax, 176(%rsp)
	movq	%rdx, 192(%rsp)
	movq	88(%rsp), %rdx
	movq	%rdx, 200(%rsp)
	movq	96(%rsp), %rdx
	movq	%rdx, 208(%rsp)
	movq	104(%rsp), %rdx
	movq	%rdx, 216(%rsp)
	movq	112(%rsp), %rdx
	movq	%rdx, 224(%rsp)
	movq	120(%rsp), %rdx
	movq	%rdx, 232(%rsp)
	movq	128(%rsp), %rdx
	movq	%rdx, 240(%rsp)
	movq	136(%rsp), %rdx
	movq	%rdx, 248(%rsp)
	movq	144(%rsp), %rdx
	movq	%rdx, 256(%rsp)
	movq	152(%rsp), %rdx
	movq	%rdx, 264(%rsp)
	movq	160(%rsp), %rdx
	movq	%rdx, 272(%rsp)
	movq	168(%rsp), %rdx
	movq	%rdx, 280(%rsp)
	je	.L2027
	leaq	.LC6(%rip), %rdx
	movl	$1239, %r8d
	leaq	.LC64(%rip), %rcx
	call	_assert
.L2027:
	testq	%rbp, %rbp
	movl	%ebx, 184(%rsp)
	movq	%rdi, 176(%rsp)
	movss	%xmm6, 196(%rsp)
	je	.L2028
	movq	%rbp, 232(%rsp)
.L2028:
	leaq	176(%rsp), %rdx
	movq	%r12, %rcx
	call	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig
	nop
.L2018:
	movaps	288(%rsp), %xmm6
	addq	$304, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L2021:
	leaq	64(%rsp), %rbx
	movabsq	$4294967299, %rax
	movq	$0, 168(%rsp)
	movq	$0, 129(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 72(%rsp)
	movb	$1, 76(%rsp)
	movq	$0, 80(%rsp)
	movq	%rax, 88(%rsp)
	movb	$0, 96(%rsp)
	movq	$0, 100(%rsp)
	movq	$0, 108(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	$0, 73(%rbx)
	movq	$0, 81(%rbx)
	movq	$0, 89(%rbx)
.L2022:
	movq	%rsi, %rcx
	call	strlen
	leaq	(%rsi,%rax), %r9
	cmpq	%r9, %rsi
	jnb	.L2024
	movzbl	-1(%r9), %eax
	cmpb	$47, %al
	je	.L2024
	cmpb	$92, %al
	jne	.L2025
	jmp	.L2024
	.p2align 4,,10
.L2026:
	movzbl	-1(%r9), %eax
	cmpb	$92, %al
	je	.L2024
	cmpb	$47, %al
	je	.L2024
.L2025:
	subq	$1, %r9
	cmpq	%r9, %rsi
	jne	.L2026
.L2024:
	leaq	65(%rbx), %rcx
	pxor	%xmm0, %xmm0
	movl	$32, %edx
	cvtss2sd	%xmm6, %xmm0
	leaq	.LC68(%rip), %r8
	movsd	%xmm0, 32(%rsp)
	call	_Z8snprintfPcyPKcz
	jmp	.L2023
.L2033:
	leaq	.LC6(%rip), %rdx
	movl	$1221, %r8d
	leaq	.LC8(%rip), %rcx
	call	_assert
	xorl	%eax, %eax
	jmp	.L2018
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN6ImFontD2Ev
	.def	_ZN6ImFontD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6ImFontD2Ev
_ZN6ImFontD2Ev:
.LFB757:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movabsq	$4575657221408423936, %rax
	movq	%rcx, %rbx
	movl	$0x00000000, (%rcx)
	movq	%rax, 8(%rcx)
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2035
	movq	$0, 16(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 24(%rbx)
.L2035:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2036
	movq	$0, 32(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 40(%rbx)
.L2036:
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2037
	movq	$0, 48(%rbx)
	call	_ZN5ImGui7MemFreeEPv
.L2037:
	movq	40(%rbx), %rcx
	xorl	%eax, %eax
	movq	$0, 64(%rbx)
	movl	$0x00000000, 72(%rbx)
	movq	$0, 78(%rbx)
	movq	$0, 86(%rbx)
	testq	%rcx, %rcx
	movq	$0, 94(%rbx)
	movl	$0, 102(%rbx)
	movw	%ax, 106(%rbx)
	je	.L2038
	call	_ZN5ImGui7MemFreeEPv
.L2038:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2034
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,10
.L2034:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA757:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE757-.LLSDACSB757
.LLSDACSB757:
.LLSDACSE757:
	.text
	.seh_endproc
	.globl	_ZN6ImFontD1Ev
	.def	_ZN6ImFontD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN6ImFontD1Ev,_ZN6ImFontD2Ev
	.align 2
	.p2align 4,,15
	.globl	_ZN6ImFont5ClearEv
	.def	_ZN6ImFont5ClearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6ImFont5ClearEv
_ZN6ImFont5ClearEv:
.LFB759:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movabsq	$4575657221408423936, %rax
	movq	%rcx, %rbx
	movl	$0x00000000, (%rcx)
	movq	%rax, 8(%rcx)
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2053
	movq	$0, 16(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 24(%rbx)
.L2053:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2054
	movq	$0, 32(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 40(%rbx)
.L2054:
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2055
	movq	$0, 48(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 56(%rbx)
.L2055:
	xorl	%eax, %eax
	movq	$0, 64(%rbx)
	movl	$0x00000000, 72(%rbx)
	movq	$0, 78(%rbx)
	movq	$0, 86(%rbx)
	movq	$0, 94(%rbx)
	movl	$0, 102(%rbx)
	movw	%ax, 106(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC69:
	.ascii "IndexXAdvance.Size == IndexLookup.Size\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6ImFont9GrowIndexEi
	.def	_ZN6ImFont9GrowIndexEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6ImFont9GrowIndexEi
_ZN6ImFont9GrowIndexEi:
.LFB762:
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
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movl	48(%rcx), %ebx
	cmpl	%ebx, 32(%rcx)
	movq	%rcx, %rsi
	movl	%edx, %ebp
	je	.L2066
	leaq	.LC6(%rip), %rdx
	movl	$1779, %r8d
	leaq	.LC69(%rip), %rcx
	call	_assert
	movl	48(%rsi), %ebx
.L2066:
	cmpl	%ebx, %ebp
	jg	.L2094
.L2065:
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L2094:
	movl	36(%rsi), %eax
	cmpl	%eax, %ebp
	jle	.L2068
	testl	%eax, %eax
	movl	$8, %edi
	je	.L2069
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	addl	%eax, %edi
.L2069:
	cmpl	%edi, %ebp
	jge	.L2081
	cmpl	%edi, %eax
	jl	.L2070
.L2068:
	movl	52(%rsi), %edx
	movl	%ebp, 32(%rsi)
	movl	%ebp, %eax
	cmpl	%edx, %ebp
	jle	.L2072
	testl	%edx, %edx
	movl	$8, %edi
	je	.L2073
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edx, %edi
	sarl	%edi
	addl	%edx, %edi
.L2073:
	cmpl	%edi, %ebp
	jge	.L2084
	cmpl	%edi, %edx
	jl	.L2074
	movl	%ebp, %eax
.L2072:
	movslq	%ebx, %rdi
	movl	%ebp, 48(%rsi)
	movss	.LC70(%rip), %xmm6
	leaq	(%rdi,%rdi), %r12
	salq	$2, %rdi
	leaq	.LC35(%rip), %r14
	leaq	.LC36(%rip), %r13
	jmp	.L2079
	.p2align 4,,10
.L2076:
	movq	40(%rsi), %rax
	cmpl	%ebx, 48(%rsi)
	movss	%xmm6, (%rax,%rdi)
	jle	.L2095
.L2077:
	movq	56(%rsi), %rax
	movl	$-1, %edx
	addl	$1, %ebx
	addq	$4, %rdi
	movw	%dx, (%rax,%r12)
	addq	$2, %r12
	cmpl	%ebx, %ebp
	je	.L2065
	movl	32(%rsi), %eax
.L2079:
	cmpl	%ebx, %eax
	jg	.L2076
	movl	$856, %r8d
	movq	%r14, %rdx
	movq	%r13, %rcx
	call	_assert
	movq	40(%rsi), %rax
	cmpl	%ebx, 48(%rsi)
	movss	%xmm6, (%rax,%rdi)
	jg	.L2077
.L2095:
	movl	$856, %r8d
	movq	%r14, %rdx
	movq	%r13, %rcx
	call	_assert
	jmp	.L2077
	.p2align 4,,10
.L2084:
	movl	%ebp, %edi
.L2074:
	movslq	%edi, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	56(%rsi), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L2075
	movslq	48(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	56(%rsi), %rcx
.L2075:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r12, 56(%rsi)
	movl	32(%rsi), %eax
	movl	%edi, 52(%rsi)
	jmp	.L2072
	.p2align 4,,10
.L2081:
	movl	%ebp, %edi
.L2070:
	movslq	%edi, %rcx
	salq	$2, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	40(%rsi), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L2071
	movslq	32(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	40(%rsi), %rcx
.L2071:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r12, 40(%rsi)
	movl	%edi, 36(%rsi)
	jmp	.L2068
	.seh_endproc
	.section .rdata,"dr"
.LC71:
	.ascii "Glyphs.Size < 0xFFFF\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6ImFont16BuildLookupTableEv
	.def	_ZN6ImFont16BuildLookupTableEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6ImFont16BuildLookupTableEv
_ZN6ImFont16BuildLookupTableEv:
.LFB760:
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
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movl	16(%rcx), %edx
	testl	%edx, %edx
	movq	%rcx, %rbx
	je	.L2132
	movl	%edx, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	leaq	.LC35(%rip), %r13
	xorl	%r12d, %r12d
	leaq	.LC36(%rip), %rbp
	jmp	.L2098
	.p2align 4,,10
.L2099:
	movq	24(%rbx), %rdx
	movzwl	(%rdx,%rdi), %edx
	cmpl	%edx, %r12d
	cmovl	%edx, %r12d
	addl	$1, %esi
	addq	$40, %rdi
	cmpl	%eax, %esi
	je	.L2164
	movl	%eax, %edx
.L2098:
	cmpl	%edx, %esi
	jl	.L2099
	movl	$856, %r8d
	movq	%r13, %rdx
	movq	%rbp, %rcx
	call	_assert
	movl	16(%rbx), %eax
	jmp	.L2099
	.p2align 4,,10
.L2164:
	leal	1(%r12), %esi
	cmpl	$65534, %eax
	jle	.L2097
	leaq	.LC6(%rip), %rdx
	movl	$1738, %r8d
	leaq	.LC71(%rip), %rcx
	call	_assert
.L2097:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2102
	movq	$0, 32(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 40(%rbx)
.L2102:
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2103
	movq	$0, 48(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 56(%rbx)
.L2103:
	movl	%esi, %edx
	movq	%rbx, %rcx
	call	_ZN6ImFont9GrowIndexEi
	movl	16(%rbx), %edx
	testl	%edx, %edx
	jle	.L2104
	leaq	.LC35(%rip), %r14
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	jmp	.L2105
	.p2align 4,,10
.L2106:
	movq	40(%rbx), %rdx
	cmpl	48(%rbx), %esi
	movss	4(%rdi), %xmm0
	movss	%xmm0, (%rdx,%rbp,4)
	jge	.L2165
.L2107:
	movq	56(%rbx), %rdx
	addq	$40, %r13
	movw	%r15w, (%rdx,%rbp,2)
	movl	16(%rbx), %edx
	addl	$1, %r15d
	cmpl	%r15d, %edx
	jle	.L2104
.L2105:
	movq	24(%rbx), %rdi
	addq	%r13, %rdi
	movzwl	(%rdi), %esi
	cmpl	32(%rbx), %esi
	movq	%rsi, %rbp
	jl	.L2106
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	movq	%r14, %rdx
	call	_assert
	jmp	.L2106
	.p2align 4,,10
.L2165:
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	movq	%r14, %rdx
	call	_assert
	jmp	.L2107
	.p2align 4,,10
.L2104:
	movl	48(%rbx), %eax
	cmpl	$32, %eax
	jle	.L2110
	movq	56(%rbx), %rcx
	movzwl	64(%rcx), %ecx
	cmpw	$-1, %cx
	je	.L2110
	leaq	(%rcx,%rcx,4), %r8
	movq	24(%rbx), %rcx
	leaq	(%rcx,%r8,8), %rcx
	testq	%rcx, %rcx
	jne	.L2166
.L2112:
	movzwl	76(%rbx), %ecx
	cmpl	%eax, %ecx
	jge	.L2126
.L2124:
	movq	56(%rbx), %rax
	movzwl	(%rax,%rcx,2), %eax
	cmpw	$-1, %ax
	je	.L2126
	leaq	(%rax,%rax,4), %rdx
	movq	24(%rbx), %rax
	leaq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	movq	%rax, 64(%rbx)
	je	.L2136
	movss	4(%rax), %xmm0
	pxor	%xmm6, %xmm6
	jmp	.L2125
	.p2align 4,,10
.L2110:
	movq	64(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2112
.L2166:
	testl	%edx, %edx
	jle	.L2167
.L2113:
	movslq	16(%rbx), %rax
	movq	24(%rbx), %rcx
	movq	%rax, %rsi
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %rax
	cmpw	$9, -40(%rax)
	jne	.L2168
	testl	%esi, %esi
	jle	.L2169
.L2119:
	movq	24(%rbx), %rdx
	movslq	%esi, %rax
	leaq	(%rax,%rax,4), %rax
	leaq	-40(%rdx,%rax,8), %rdi
	movl	48(%rbx), %eax
	cmpl	$32, %eax
	jg	.L2170
.L2120:
	movq	64(%rbx), %rdx
.L2121:
	movq	(%rdx), %rcx
	movl	$18, %ebp
	movss	.LC72(%rip), %xmm0
	cmpl	$9, 32(%rbx)
	movq	%rcx, (%rdi)
	movq	8(%rdx), %rcx
	mulss	4(%rdi), %xmm0
	movq	%rcx, 8(%rdi)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rdi)
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%rdi)
	movq	32(%rdx), %rdx
	movss	%xmm0, 4(%rdi)
	movq	%rdx, 32(%rdi)
	movl	$9, %edx
	movw	%dx, (%rdi)
	movl	$9, %edx
	jle	.L2171
	movq	40(%rbx), %rcx
	cmpl	%eax, %edx
	movss	%xmm0, 36(%rcx)
	jge	.L2172
.L2123:
	movq	56(%rbx), %rdx
	subl	$1, %esi
	movw	%si, (%rdx,%rbp)
	movzwl	76(%rbx), %ecx
	cmpl	%eax, %ecx
	jl	.L2124
.L2126:
	movq	$0, 64(%rbx)
	pxor	%xmm6, %xmm6
	pxor	%xmm0, %xmm0
.L2125:
	movslq	%r12d, %rax
	movss	%xmm0, 72(%rbx)
	xorl	%esi, %esi
	leaq	1(%rax), %rdi
	leaq	.LC35(%rip), %r12
	leaq	.LC36(%rip), %rbp
	jmp	.L2131
	.p2align 4,,10
.L2127:
	movq	40(%rbx), %rax
	leaq	(%rax,%rsi,4), %rax
	ucomiss	(%rax), %xmm6
	ja	.L2130
.L2128:
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	je	.L2173
.L2131:
	cmpl	%esi, 32(%rbx)
	jg	.L2127
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	_assert
	movq	40(%rbx), %rax
	leaq	0(,%rsi,4), %r14
	addq	%r14, %rax
	ucomiss	(%rax), %xmm6
	jbe	.L2128
	cmpl	%esi, 32(%rbx)
	jg	.L2130
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	_assert
	movq	40(%rbx), %rax
	addq	%r14, %rax
.L2130:
	movss	72(%rbx), %xmm0
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	movss	%xmm0, (%rax)
	jne	.L2131
.L2173:
	movaps	32(%rsp), %xmm6
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
.L2170:
	movq	56(%rbx), %rcx
	movzwl	64(%rcx), %ecx
	cmpw	$-1, %cx
	je	.L2120
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rdx,%rcx,8), %rdx
	jmp	.L2121
	.p2align 4,,10
.L2168:
	movl	20(%rbx), %eax
	addl	$1, %esi
	cmpl	%eax, %esi
	jle	.L2115
	testl	%eax, %eax
	movl	$8, %edi
	je	.L2116
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	addl	%eax, %edi
.L2116:
	cmpl	%edi, %esi
	jge	.L2134
	cmpl	%edi, %eax
	jl	.L2117
.L2115:
	testl	%esi, %esi
	movl	%esi, 16(%rbx)
	jg	.L2119
	jmp	.L2169
	.p2align 4,,10
.L2167:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	jmp	.L2113
	.p2align 4,,10
.L2169:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movl	16(%rbx), %esi
	jmp	.L2119
	.p2align 4,,10
.L2171:
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC36(%rip), %rcx
	call	_assert
	movzwl	(%rdi), %edx
	movl	48(%rbx), %eax
	movq	40(%rbx), %rcx
	movss	4(%rdi), %xmm0
	movq	%rdx, %rbp
	movl	16(%rbx), %esi
	addq	%rbp, %rbp
	cmpl	%eax, %edx
	movss	%xmm0, 36(%rcx)
	jl	.L2123
.L2172:
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC36(%rip), %rcx
	call	_assert
	movl	48(%rbx), %eax
	jmp	.L2123
	.p2align 4,,10
.L2132:
	xorl	%r12d, %r12d
	movl	$1, %esi
	jmp	.L2097
	.p2align 4,,10
.L2134:
	movl	%esi, %edi
.L2117:
	movslq	%edi, %rax
	leaq	(%rax,%rax,4), %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L2118
	movslq	16(%rbx), %rax
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$3, %r8
	call	memcpy
	movq	24(%rbx), %rcx
.L2118:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rbp, 24(%rbx)
	movl	%edi, 20(%rbx)
	jmp	.L2115
.L2136:
	pxor	%xmm6, %xmm6
	pxor	%xmm0, %xmm0
	jmp	.L2125
	.seh_endproc
	.section .rdata,"dr"
.LC74:
	.ascii "ConfigData.Size > 0\0"
	.align 8
.LC75:
	.ascii "cfg.DstFont && (!cfg.DstFont->IsLoaded() || cfg.DstFont->ContainerAtlas == this)\0"
.LC76:
	.ascii "font_offset >= 0\0"
.LC77:
	.ascii "cmap\0"
.LC78:
	.ascii "loca\0"
.LC79:
	.ascii "head\0"
.LC80:
	.ascii "glyf\0"
.LC81:
	.ascii "hhea\0"
.LC82:
	.ascii "hmtx\0"
.LC83:
	.ascii "kern\0"
.LC84:
	.ascii "CFF \0"
.LC85:
	.ascii "maxp\0"
	.align 8
.LC86:
	.ascii "width <= 0xffff && height <= 0xffff\0"
.LC89:
	.ascii "h_oversample <= 8\0"
.LC90:
	.ascii "v_oversample <= 8\0"
	.align 8
.LC91:
	.ascii "buf_rects_n == total_glyph_count\0"
	.align 8
.LC92:
	.ascii "buf_packedchars_n == total_glyph_count\0"
	.align 8
.LC93:
	.ascii "buf_ranges_n == total_glyph_range_count\0"
.LC96:
	.ascii "z->direction\0"
.LC97:
	.ascii "z != __null\0"
.LC98:
	.ascii "z->ey >= scan_y_top\0"
.LC99:
	.ascii "e->ey >= y_top\0"
	.align 8
.LC100:
	.ascii "e->sy <= y_bottom && e->ey >= y_top\0"
.LC101:
	.ascii "x >= 0 && x < len\0"
.LC103:
	.ascii "fabs(area) <= 1.01f\0"
.LC105:
	.ascii "pixels[i] == 0\0"
	.align 8
.LC106:
	.ascii "pixels[i*stride_in_bytes] == 0\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas5BuildEv
	.def	_ZN11ImFontAtlas5BuildEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas5BuildEv
_ZN11ImFontAtlas5BuildEv:
.LFB745:
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
	subq	$1448, %rsp
	.seh_stackalloc	1448
	movaps	%xmm6, 1280(%rsp)
	.seh_savexmm	%xmm6, 1280
	movaps	%xmm7, 1296(%rsp)
	.seh_savexmm	%xmm7, 1296
	movaps	%xmm8, 1312(%rsp)
	.seh_savexmm	%xmm8, 1312
	movaps	%xmm9, 1328(%rsp)
	.seh_savexmm	%xmm9, 1328
	movaps	%xmm10, 1344(%rsp)
	.seh_savexmm	%xmm10, 1344
	movaps	%xmm11, 1360(%rsp)
	.seh_savexmm	%xmm11, 1360
	movaps	%xmm12, 1376(%rsp)
	.seh_savexmm	%xmm12, 1376
	movaps	%xmm13, 1392(%rsp)
	.seh_savexmm	%xmm13, 1392
	movaps	%xmm14, 1408(%rsp)
	.seh_savexmm	%xmm14, 1408
	movaps	%xmm15, 1424(%rsp)
	.seh_savexmm	%xmm15, 1424
	.seh_endprologue
	movq	%rcx, 1520(%rsp)
	movl	64(%rcx), %ecx
	testl	%ecx, %ecx
	jle	.L2865
.L2175:
	movq	1520(%rsp), %rax
	movq	8(%rax), %rcx
	movq	$0, (%rax)
	movq	$0, 24(%rax)
	movq	$0, 36(%rax)
	testq	%rcx, %rcx
	je	.L2176
.LEHB7:
	call	_ZN5ImGui7MemFreeEPv
	movq	1520(%rsp), %rax
.L2176:
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	je	.L2177
	call	_ZN5ImGui7MemFreeEPv
	movq	1520(%rsp), %rax
.L2177:
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movslq	64(%rax), %rax
	leaq	(%rax,%rax,4), %rdx
	leaq	(%rax,%rdx,2), %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	1520(%rsp), %rbx
	movq	%rax, 392(%rsp)
	movl	64(%rbx), %edx
	testl	%edx, %edx
	jle	.L2178
	leaq	8(%rax), %r14
	movl	$0, 96(%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	$0, 104(%rsp)
	movl	$-1, %ebp
.L2210:
	movq	1520(%rsp), %rax
	movq	104(%rsp), %r13
	addq	72(%rax), %r13
	movq	104(%r13), %rax
	testq	%rax, %rax
	je	.L2179
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L2180
	cmpq	%rax, 1520(%rsp)
	je	.L2180
.L2179:
	leaq	.LC6(%rip), %rdx
	movl	$1296, %r8d
	leaq	.LC75(%rip), %rcx
	call	_assert
.L2180:
	movq	0(%r13), %rbx
	movl	16(%r13), %r15d
	movzbl	(%rbx), %eax
	cmpb	$49, %al
	je	.L2866
	cmpb	$116, %al
	jne	.L2184
	movzbl	1(%rbx), %eax
	cmpb	$121, %al
	je	.L2867
	cmpb	$114, %al
	je	.L2868
	cmpb	$116, %al
	jne	.L2570
	cmpb	$99, 2(%rbx)
	jne	.L2570
	cmpb	$102, 3(%rbx)
	jne	.L2570
	movzbl	4(%rbx), %eax
	movzbl	5(%rbx), %edx
	sall	$24, %eax
	sall	$16, %edx
	addl	%edx, %eax
	movzbl	6(%rbx), %edx
	sall	$8, %edx
	addl	%edx, %eax
	movzbl	7(%rbx), %edx
	leal	-65536(%rax,%rdx), %eax
	testl	$-65537, %eax
	jne	.L2570
	movzbl	8(%rbx), %eax
	movzbl	9(%rbx), %edx
	sall	$24, %eax
	sall	$16, %edx
	addl	%edx, %eax
	movzbl	10(%rbx), %edx
	sall	$8, %edx
	addl	%edx, %eax
	movzbl	11(%rbx), %edx
	addl	%edx, %eax
	cmpl	%eax, %r15d
	jge	.L2570
	leal	0(,%r15,4), %eax
	cltq
	leaq	12(%rbx,%rax), %rax
	movzbl	(%rax), %r15d
	movzbl	1(%rax), %edx
	sall	$24, %r15d
	sall	$16, %edx
	addl	%edx, %r15d
	movzbl	2(%rax), %edx
	movzbl	3(%rax), %eax
	sall	$8, %edx
	addl	%edx, %r15d
	addl	%eax, %r15d
	testl	%r15d, %r15d
	movl	%r15d, %r12d
	js	.L2182
.L2188:
	leaq	.LC77(%rip), %r8
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movq	%rbx, (%r14)
	movl	%r15d, 8(%r14)
	movq	$0, 48(%r14)
	movl	$0, 56(%r14)
	movl	$0, 60(%r14)
	call	_ZL17stbtt__find_tablePhjPKc
	leaq	.LC78(%rip), %r8
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movl	%eax, %r15d
	call	_ZL17stbtt__find_tablePhjPKc
	leaq	.LC79(%rip), %r8
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movl	%eax, 16(%r14)
	movl	%eax, 152(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	leaq	.LC80(%rip), %r8
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movl	%eax, 20(%r14)
	movl	%eax, 136(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	leaq	.LC81(%rip), %r8
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movl	%eax, 24(%r14)
	movl	%eax, 144(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	leaq	.LC82(%rip), %r8
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movl	%eax, 28(%r14)
	movl	%eax, 112(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	leaq	.LC83(%rip), %r8
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movl	%eax, 32(%r14)
	movl	%eax, 128(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	movl	136(%rsp), %r11d
	movl	112(%rsp), %r10d
	movl	%eax, 36(%r14)
	movl	128(%rsp), %r9d
	testl	%r11d, %r11d
	sete	%r11b
	testl	%r10d, %r10d
	sete	%al
	orl	%eax, %r11d
	testl	%r15d, %r15d
	sete	%al
	orl	%eax, %r11d
	testl	%r9d, %r9d
	sete	%al
	orb	%al, %r11b
	je	.L2189
.L2192:
	xorl	%r11d, %r11d
.L2174:
	movaps	1280(%rsp), %xmm6
	movl	%r11d, %eax
	movaps	1296(%rsp), %xmm7
	movaps	1312(%rsp), %xmm8
	movaps	1328(%rsp), %xmm9
	movaps	1344(%rsp), %xmm10
	movaps	1360(%rsp), %xmm11
	movaps	1376(%rsp), %xmm12
	movaps	1392(%rsp), %xmm13
	movaps	1408(%rsp), %xmm14
	movaps	1424(%rsp), %xmm15
	addq	$1448, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L2868:
	cmpb	$117, 2(%rbx)
	jne	.L2570
	cmpb	$101, 3(%rbx)
	je	.L2183
	.p2align 4,,10
.L2570:
	movl	%ebp, %r12d
	movl	%ebp, %r15d
.L2182:
	leaq	.LC6(%rip), %rdx
	movl	$1298, %r8d
	leaq	.LC76(%rip), %rcx
	call	_assert
	movq	0(%r13), %rbx
	jmp	.L2188
.L2866:
	cmpb	$0, 1(%rbx)
	jne	.L2570
.L2857:
	cmpb	$0, 2(%rbx)
	jne	.L2570
	cmpb	$0, 3(%rbx)
	jne	.L2570
.L2183:
	testl	%r15d, %r15d
	jne	.L2869
.L2565:
	xorl	%r12d, %r12d
	jmp	.L2188
.L2184:
	cmpb	$79, %al
	jne	.L2186
	cmpb	$84, 1(%rbx)
	jne	.L2570
	cmpb	$84, 2(%rbx)
	jne	.L2570
	cmpb	$79, 3(%rbx)
	jne	.L2570
	testl	%r15d, %r15d
	je	.L2565
.L2869:
	movl	%ebp, %r15d
	movl	%ebp, %r12d
	jmp	.L2182
.L2867:
	cmpb	$112, 2(%rbx)
	jne	.L2570
	cmpb	$49, 3(%rbx)
	jne	.L2570
	jmp	.L2183
.L2189:
	movl	144(%rsp), %eax
	testl	%eax, %eax
	je	.L2191
	movl	152(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L2192
.L2193:
	leaq	.LC85(%rip), %r8
	movl	%r12d, %edx
	movq	%rbx, %rcx
	call	_ZL17stbtt__find_tablePhjPKc
	movl	$65535, %edx
	testl	%eax, %eax
	jne	.L2870
.L2198:
	movl	%r15d, %eax
	movl	%edx, 12(%r14)
	leaq	2(%rbx,%rax), %rdx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	movl	$0, 40(%r14)
	sall	$8, %eax
	addw	%dx, %ax
	je	.L2192
	leal	4(%r15), %edx
	movzwl	%ax, %eax
	leal	(%rdx,%rax,8), %ecx
	jmp	.L2203
.L2872:
	cmpw	$3, %ax
	jne	.L2199
	leaq	2(%rbx,%r8), %r9
	movzbl	(%r9), %eax
	movzbl	1(%r9), %r9d
	sall	$8, %eax
	addl	%r9d, %eax
	cmpw	$1, %ax
	je	.L2200
	cmpw	$10, %ax
	je	.L2200
.L2199:
	addl	$8, %edx
	cmpl	%edx, %ecx
	je	.L2871
.L2203:
	movl	%edx, %r8d
	leaq	(%rbx,%r8), %r9
	movzbl	(%r9), %eax
	movzbl	1(%r9), %r9d
	sall	$8, %eax
	addw	%r9w, %ax
	jne	.L2872
.L2200:
	leaq	4(%rbx,%r8), %r8
	addl	$8, %edx
	movzbl	(%r8), %eax
	movzbl	1(%r8), %r9d
	sall	$24, %eax
	sall	$16, %r9d
	addl	%r9d, %eax
	movzbl	2(%r8), %r9d
	movzbl	3(%r8), %r8d
	sall	$8, %r9d
	addl	%r9d, %eax
	addl	%r8d, %eax
	addl	%r15d, %eax
	cmpl	%edx, %ecx
	movl	%eax, 40(%r14)
	jne	.L2203
.L2871:
	movl	40(%r14), %r10d
	testl	%r10d, %r10d
	je	.L2192
	movslq	20(%r14), %rax
	leaq	50(%rbx,%rax), %rdx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	movl	%eax, 44(%r14)
	movq	56(%r13), %rcx
	testq	%rcx, %rcx
	jne	.L2836
	jmp	.L2873
	.p2align 4,,10
.L2208:
	movzwl	2(%rcx), %eax
	testw	%ax, %ax
	je	.L2206
.L2207:
	subl	%edx, %eax
	addl	$1, %edi
	addq	$4, %rcx
	leal	1(%rsi,%rax), %esi
.L2836:
	movzwl	(%rcx), %edx
	testw	%dx, %dx
	jne	.L2208
.L2206:
	movq	1520(%rsp), %rbx
	addq	$176, %r14
	addl	$1, 96(%rsp)
	addq	$112, 104(%rsp)
	movl	96(%rsp), %eax
	cmpl	%eax, 64(%rbx)
	jg	.L2210
	movl	32(%rbx), %eax
	movl	%esi, 152(%rsp)
	movl	%edi, 192(%rsp)
	testl	%eax, %eax
	movl	%eax, 128(%rsp)
	jle	.L2213
	leal	-1(%rax), %ebx
	movl	%eax, %edi
	movslq	%ebx, %rsi
	salq	$4, %rsi
.L2212:
	movq	1520(%rsp), %rax
	movl	$72, %ecx
	movl	%edi, 24(%rax)
	movl	$0, 28(%rax)
	call	_ZN5ImGui8MemAllocEy
	movq	%rsi, %rcx
	movq	%rax, %rdi
	movq	%rax, 368(%rsp)
	call	_ZN5ImGui8MemAllocEy
	testq	%rdi, %rdi
	movq	%rax, 376(%rsp)
	je	.L2552
	testq	%rax, %rax
	je	.L2552
	cmpl	$65535, %ebx
	jle	.L2218
	leaq	.LC19(%rip), %rdx
	movl	$250, %r8d
	leaq	.LC86(%rip), %rcx
	call	_assert
	jmp	.L2218
.L2191:
	leaq	.LC84(%rip), %r8
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movb	%r11b, 128(%rsp)
	movl	$2, 536(%rsp)
	movl	$0, 544(%rsp)
	movl	$0, 560(%rsp)
	movl	$0, 624(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	movzbl	128(%rsp), %r11d
	testl	%eax, %eax
	je	.L2174
	movl	%eax, %eax
	movl	$536870912, 60(%r14)
	movq	56(%r14), %rdx
	addq	%rbx, %rax
	movq	$0, 112(%r14)
	movq	%rax, 48(%r14)
	movq	48(%r14), %rax
	movl	$0, 120(%r14)
	movl	$0, 124(%r14)
	movq	$0, 128(%r14)
	movl	$0, 136(%r14)
	movl	$0, 140(%r14)
	movq	%rax, 688(%rsp)
	leaq	688(%rsp), %rax
	movq	%rdx, 696(%rsp)
	movq	%rax, %rcx
	movl	$2, %edx
	movb	%r11b, 112(%rsp)
	movq	%rax, 128(%rsp)
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movslq	696(%rsp), %rax
	xorl	%edx, %edx
	cmpl	700(%rsp), %eax
	movzbl	112(%rsp), %r11d
	jge	.L2195
	leal	1(%rax), %edx
	movl	%edx, 696(%rsp)
	movq	688(%rsp), %rdx
	movzbl	(%rdx,%rax), %edx
.L2195:
	movq	128(%rsp), %rcx
	leaq	-8(%r14), %rax
	movb	%r11b, 164(%rsp)
	movq	%rax, 112(%rsp)
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movq	128(%rsp), %rdx
	leaq	464(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 112(%rsp)
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	128(%rsp), %rdx
	movq	112(%rsp), %rcx
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	464(%rsp), %rax
	xorl	%r8d, %r8d
	movq	472(%rsp), %rdx
	movq	112(%rsp), %rcx
	movq	%rax, 448(%rsp)
	leaq	448(%rsp), %rax
	movq	%rdx, 456(%rsp)
	movq	%rax, %rdx
	movq	%rax, 152(%rsp)
	call	_ZL20stbtt__cff_index_get10stbtt__bufi
	movq	464(%rsp), %r9
	movq	472(%rsp), %r10
	movq	128(%rsp), %rdx
	movq	112(%rsp), %rcx
	movq	%r9, 752(%rsp)
	movq	%r10, 760(%rsp)
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	128(%rsp), %rdx
	movq	112(%rsp), %rcx
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	464(%rsp), %r9
	leaq	752(%rsp), %rdx
	movq	472(%rsp), %r10
	movq	%rdx, %r11
	movl	$17, %edx
	movq	%r11, %rcx
	movq	%r11, 136(%rsp)
	leaq	544(%rsp), %r8
	movq	%r9, 80(%r14)
	movq	%r10, 88(%r14)
	call	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.77
	movq	136(%rsp), %rcx
	movl	$262, %edx
	leaq	536(%rsp), %r8
	call	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.77
	movq	136(%rsp), %rcx
	movl	$292, %edx
	leaq	560(%rsp), %r8
	call	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.77
	movq	136(%rsp), %rcx
	movl	$293, %edx
	leaq	624(%rsp), %r8
	call	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.77
	movq	688(%rsp), %r9
	leaq	432(%rsp), %r8
	movq	696(%rsp), %r10
	movq	152(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%r9, 448(%rsp)
	movq	752(%rsp), %r9
	movq	%r10, 456(%rsp)
	movq	760(%rsp), %r10
	movq	%rax, %rdx
	movq	%r9, 432(%rsp)
	movq	%r10, 440(%rsp)
	call	_ZL16stbtt__get_subrs10stbtt__bufS_
	movq	464(%rsp), %rax
	movq	472(%rsp), %rdx
	movzbl	164(%rsp), %r11d
	movq	%rax, 96(%r14)
	movq	%rdx, 104(%r14)
	cmpl	$2, 536(%rsp)
	jne	.L2174
	cmpl	$0, 544(%rsp)
	je	.L2174
	movl	560(%rsp), %edx
	testl	%edx, %edx
	je	.L2196
	cmpl	$0, 624(%rsp)
	je	.L2174
	movq	128(%rsp), %rcx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movq	128(%rsp), %rdx
	movq	112(%rsp), %rcx
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	464(%rsp), %rax
	movq	472(%rsp), %rdx
	movq	%rax, 112(%r14)
	movq	%rdx, 120(%r14)
	movl	700(%rsp), %edx
	movslq	624(%rsp), %rax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movl	%eax, %r8d
	shrl	$31, %r8d
	movl	%r9d, %ecx
	shrl	$31, %ecx
	movl	%r8d, %r11d
	orb	%cl, %r11b
	jne	.L2572
	cmpl	%eax, %edx
	jge	.L2874
.L2572:
	xorl	%eax, %eax
.L2197:
	movq	%rax, 128(%r14)
	movl	144(%rsp), %eax
	movl	$0, 136(%r14)
	movl	%eax, 140(%r14)
.L2196:
	movl	544(%rsp), %edx
	movq	128(%rsp), %rcx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movq	128(%rsp), %rdx
	movq	112(%rsp), %rcx
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	464(%rsp), %rax
	movq	472(%rsp), %rdx
	movq	%rax, 64(%r14)
	movq	%rdx, 72(%r14)
	jmp	.L2193
	.p2align 4,,10
.L2865:
	leaq	.LC6(%rip), %rdx
	movl	$1272, %r8d
	leaq	.LC74(%rip), %rcx
	call	_assert
	jmp	.L2175
.L2552:
	movq	368(%rsp), %rax
	testq	%rax, %rax
	je	.L2216
	movq	%rax, %rcx
	call	_ZN5ImGui7MemFreeEPv
.L2216:
	movq	376(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2217
	call	_ZN5ImGui7MemFreeEPv
.LEHE7:
.L2217:
	movq	1520(%rsp), %rcx
	leaq	544(%rsp), %rax
	movq	$0, 544(%rsp)
	movq	%rax, %rdx
	movq	%rax, 424(%rsp)
	movq	$0, 552(%rsp)
.LEHB8:
	call	_ZN11ImFontAtlas19RenderCustomTexDataEiPv.constprop.67
	movl	544(%rsp), %ebx
	testl	%ebx, %ebx
	jle	.L2223
.L2225:
	movq	552(%rsp), %rdx
	movl	%ebx, %r8d
	movq	368(%rsp), %rcx
	call	stbrp_pack_rects
	movl	544(%rsp), %edx
	testl	%edx, %edx
	jle	.L2226
	movq	552(%rsp), %rcx
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	leaq	.LC35(%rip), %r12
	leaq	.LC36(%rip), %rbp
	jmp	.L2229
.L2228:
	movzwl	6(%rax), %eax
	addl	%eax, %edi
	movq	1520(%rsp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	movq	1520(%rsp), %rax
	movl	%edi, 28(%rax)
.L2227:
	addl	$1, %ebx
	addq	$16, %rsi
	cmpl	%edx, %ebx
	jge	.L2226
.L2229:
	leaq	(%rcx,%rsi), %rax
	movl	12(%rax), %r8d
	testl	%r8d, %r8d
	je	.L2227
	cmpl	%edx, %ebx
	movzwl	10(%rax), %edi
	jl	.L2228
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	_assert
	movq	552(%rsp), %rcx
	movl	544(%rsp), %edx
	leaq	(%rcx,%rsi), %rax
	jmp	.L2228
.L2873:
	leaq	_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges(%rip), %rax
	movl	$32, %edx
	movq	%rax, 56(%r13)
	movq	%rax, %rcx
	movl	$255, %eax
	jmp	.L2207
.L2226:
	movslq	152(%rsp), %rbx
	leaq	0(,%rbx,8), %rsi
	subq	%rbx, %rsi
	salq	$2, %rsi
	movq	%rsi, %rcx
	call	_ZN5ImGui8MemAllocEy
	salq	$4, %rbx
	movq	%rax, %rbp
	movq	%rax, 400(%rsp)
	movq	%rbx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	%rax, %r14
	movq	%rax, 408(%rsp)
	movslq	192(%rsp), %rax
	leaq	(%rax,%rax,4), %rdi
	salq	$3, %rdi
	movq	%rdi, %rcx
	call	_ZN5ImGui8MemAllocEy
	xorl	%edx, %edx
	movq	%rsi, %r8
	movq	%rbp, %rcx
	movq	%rax, 416(%rsp)
	movq	%rax, %r15
	call	memset
	xorl	%edx, %edx
	movq	%rbx, %r8
	movq	%r14, %rcx
	call	memset
	xorl	%edx, %edx
	movq	%rdi, %r8
	movq	%r15, %rcx
	call	memset
	movq	1520(%rsp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	jle	.L2230
	movq	392(%rsp), %rsi
	movl	$1, %r15d
	xorl	%edi, %edi
	movq	$0, 184(%rsp)
	movl	$1, %r14d
	pxor	%xmm6, %xmm6
	movl	$0, 144(%rsp)
	movss	.LC29(%rip), %xmm11
	movl	$0, 168(%rsp)
	movss	.LC30(%rip), %xmm8
	movl	$0, 164(%rsp)
.L2262:
	movq	1520(%rsp), %rax
	movq	184(%rsp), %r11
	movq	416(%rsp), %rbx
	addq	72(%rax), %r11
	movslq	168(%rsp), %rax
	movq	56(%r11), %rdx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rbx,%rax,8), %r12
	movzwl	(%rdx), %r8d
	testw	%r8w, %r8w
	je	.L2875
	movzwl	2(%rdx), %eax
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	testw	%ax, %ax
	jne	.L2233
	jmp	.L2876
	.p2align 4,,10
.L2805:
	movzwl	2(%rdx), %eax
	testw	%ax, %ax
	je	.L2234
.L2233:
	addq	$4, %rdx
	subl	%r8d, %eax
	addl	$1, %r9d
	movzwl	(%rdx), %r8d
	leal	1(%rcx,%rax), %ecx
	testw	%r8w, %r8w
	jne	.L2805
.L2234:
	addl	%r9d, 168(%rsp)
	leal	-1(%r9), %edx
	xorl	%r8d, %r8d
	movq	%r12, 160(%rsi)
	movq	400(%rsp), %rbp
	movl	%r9d, 168(%rsi)
	movl	164(%rsp), %r10d
	leal	(%rcx,%rdi), %eax
	leaq	(%rdx,%rdx,4), %rdx
	movl	%eax, 176(%rsp)
	movq	%r12, %rax
	leaq	40(%r12,%rdx,8), %rbx
	.p2align 4,,10
.L2236:
	movq	56(%r11), %rdx
	movslq	%r10d, %r13
	addq	$40, %rax
	movss	20(%r11), %xmm0
	movss	%xmm0, -40(%rax)
	addq	%r8, %rdx
	addq	$4, %r8
	movzwl	(%rdx), %ecx
	movzwl	2(%rdx), %edx
	movl	%ecx, -36(%rax)
	subl	%ecx, %edx
	leaq	0(,%r13,8), %rcx
	addl	$1, %edx
	subq	%r13, %rcx
	movl	%edx, -24(%rax)
	addl	%edx, %r10d
	leaq	0(%rbp,%rcx,4), %rcx
	movq	%rcx, -16(%rax)
	cmpq	%rax, %rbx
	jne	.L2236
	movl	%r10d, 164(%rsp)
.L2232:
	salq	$4, %rdi
	addq	408(%rsp), %rdi
	movq	%rdi, 152(%rsi)
	movl	24(%r11), %ebx
	movq	%rdi, 96(%rsp)
	movl	28(%r11), %edi
	cmpl	$8, %ebx
	ja	.L2877
	cmpl	$8, %edi
	jbe	.L2541
.L2544:
	leaq	.LC2(%rip), %rdx
	movl	$3428, %r8d
	leaq	.LC90(%rip), %rcx
	call	_assert
	movl	168(%rsi), %r9d
	cmpl	$8, %ebx
	cmovbe	%ebx, %r14d
	movq	152(%rsi), %rax
	movq	160(%rsi), %r12
	testl	%r9d, %r9d
	movq	%rax, 96(%rsp)
	jle	.L2878
.L2240:
	leal	-1(%r9), %eax
	movss	.LC34(%rip), %xmm7
	movb	%r14b, 112(%rsp)
	xorl	%r13d, %r13d
	leaq	(%rax,%rax,4), %rax
	movb	%r15b, 136(%rsp)
	movss	.LC18(%rip), %xmm10
	leaq	40(%r12,%rax,8), %rax
	movq	%rax, 104(%rsp)
	.p2align 4,,10
.L2259:
	movss	(%r12), %xmm9
	movq	8(%rsi), %rcx
	ucomiss	%xmm6, %xmm9
	jbe	.L2806
	movslq	36(%rsi), %rax
	pxor	%xmm0, %xmm0
	leaq	4(%rcx,%rax), %rdx
	leaq	6(%rcx,%rax), %r8
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movswl	%ax, %edx
	movzbl	(%r8), %eax
	movzbl	1(%r8), %r8d
	sall	$8, %eax
	addl	%r8d, %eax
	cwtl
	subl	%eax, %edx
	cvtsi2ss	%edx, %xmm0
	divss	%xmm0, %xmm9
.L2244:
	movzbl	112(%rsp), %eax
	movb	%al, 32(%r12)
	movzbl	136(%rsp), %eax
	movb	%al, 33(%r12)
	movl	16(%r12), %eax
	testl	%eax, %eax
	jle	.L2245
	movq	96(%rsp), %rdi
	movslq	%r13d, %rax
	xorl	%ebx, %ebx
	salq	$4, %rax
	leaq	4(%rdi,%rax), %rbp
	jmp	.L2258
	.p2align 4,,10
.L2248:
	movq	%rsi, %rcx
	call	_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi
	testl	%eax, %eax
	js	.L2584
	movq	8(%rsi), %r8
	cltq
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	leaq	2(%r8,%rax), %r9
	leaq	4(%r8,%rax), %rdx
	leaq	6(%r8,%rax), %rcx
	leaq	8(%r8,%rax), %r8
	movzbl	(%r9), %eax
	movzbl	1(%r9), %r9d
	sall	$8, %eax
	addl	%r9d, %eax
	cwtl
	cvtsi2ss	%eax, %xmm2
	movzbl	(%r8), %eax
	movzbl	1(%r8), %r8d
	sall	$8, %eax
	addl	%r8d, %eax
	movzbl	(%rcx), %r8d
	cwtl
	movzbl	1(%rcx), %ecx
	negl	%eax
	cvtsi2ss	%eax, %xmm3
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %r8d
	addl	%r8d, %ecx
	movswl	%cx, %ecx
	sall	$8, %eax
	cvtsi2ss	%ecx, %xmm5
	addl	%edx, %eax
	cwtl
	negl	%eax
	cvtsi2ss	%eax, %xmm4
.L2250:
	pxor	%xmm1, %xmm1
	cvtsi2ss	%r14d, %xmm1
	movl	%r15d, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	movaps	%xmm8, %xmm12
	mulss	%xmm9, %xmm1
	mulss	%xmm9, %xmm0
	mulss	%xmm1, %xmm2
	addss	%xmm6, %xmm2
	movaps	%xmm2, %xmm13
	movaps	%xmm2, %xmm14
	andps	%xmm8, %xmm13
	ucomiss	%xmm13, %xmm7
	jbe	.L2254
	cvttss2si	%xmm2, %eax
	pxor	%xmm13, %xmm13
	andnps	%xmm14, %xmm12
	movss	.LC18(%rip), %xmm15
	movss	%xmm15, 200(%rsp)
	cvtsi2ss	%eax, %xmm13
	movaps	%xmm13, %xmm15
	cmpnless	%xmm2, %xmm15
	movaps	%xmm15, %xmm2
	movss	200(%rsp), %xmm15
	andps	%xmm15, %xmm2
	subss	%xmm2, %xmm13
	movaps	%xmm13, %xmm2
	orps	%xmm12, %xmm2
.L2254:
	mulss	%xmm0, %xmm3
	movaps	%xmm8, %xmm12
	addss	%xmm6, %xmm3
	movaps	%xmm3, %xmm13
	movaps	%xmm3, %xmm14
	andps	%xmm8, %xmm13
	ucomiss	%xmm13, %xmm7
	jbe	.L2255
	cvttss2si	%xmm3, %eax
	pxor	%xmm13, %xmm13
	andnps	%xmm14, %xmm12
	movss	.LC18(%rip), %xmm15
	movss	%xmm15, 200(%rsp)
	cvtsi2ss	%eax, %xmm13
	movaps	%xmm13, %xmm15
	cmpnless	%xmm3, %xmm15
	movaps	%xmm15, %xmm3
	movss	200(%rsp), %xmm15
	andps	%xmm15, %xmm3
	subss	%xmm3, %xmm13
	movaps	%xmm13, %xmm3
	orps	%xmm12, %xmm3
.L2255:
	mulss	%xmm5, %xmm1
	movaps	%xmm8, %xmm12
	addss	%xmm6, %xmm1
	movaps	%xmm1, %xmm5
	movaps	%xmm1, %xmm13
	andps	%xmm8, %xmm5
	ucomiss	%xmm5, %xmm7
	jbe	.L2256
	cvttss2si	%xmm1, %eax
	pxor	%xmm5, %xmm5
	andnps	%xmm13, %xmm12
	movss	.LC18(%rip), %xmm14
	cvtsi2ss	%eax, %xmm5
	cmpnless	%xmm5, %xmm1
	andps	%xmm14, %xmm1
	addss	%xmm5, %xmm1
	orps	%xmm12, %xmm1
.L2256:
	mulss	%xmm4, %xmm0
	movaps	%xmm8, %xmm5
	addss	%xmm6, %xmm0
	movaps	%xmm0, %xmm4
	movaps	%xmm0, %xmm12
	andps	%xmm8, %xmm4
	ucomiss	%xmm4, %xmm7
	jbe	.L2257
	cvttss2si	%xmm0, %eax
	pxor	%xmm4, %xmm4
	andnps	%xmm12, %xmm5
	cvtsi2ss	%eax, %xmm4
	cmpnless	%xmm4, %xmm0
	andps	%xmm10, %xmm0
	addss	%xmm4, %xmm0
	orps	%xmm5, %xmm0
.L2257:
	cvttss2si	%xmm1, %edx
	cvttss2si	%xmm2, %r8d
	cvttss2si	%xmm0, %eax
	cvttss2si	%xmm3, %ecx
.L2251:
	addl	%r15d, %eax
	addl	%r14d, %edx
	addq	$16, %rbp
	subl	%ecx, %eax
	subl	%r8d, %edx
	movw	%ax, -14(%rbp)
	movl	%ebx, %eax
	movw	%dx, -16(%rbp)
	leal	1(%r13,%rbx), %edx
	addl	$1, %eax
	addq	$1, %rbx
	cmpl	%eax, 16(%r12)
	jle	.L2585
	movq	8(%rsi), %rcx
.L2258:
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.L2879
	movl	(%rax,%rbx,4), %r8d
.L2247:
	movl	48(%rsi), %edx
	call	stbtt_FindGlyphIndex.isra.11
	movl	%eax, %edx
	movl	68(%rsi), %eax
	testl	%eax, %eax
	je	.L2248
	leaq	564(%rsp), %rdi
	movl	$6, %ecx
	xorl	%eax, %eax
	rep stosq
	leaq	560(%rsp), %r8
	movq	%rsi, %rcx
	movl	$0, (%rdi)
	movl	$1, 560(%rsp)
	call	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
	testl	%eax, %eax
	je	.L2583
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	cvtsi2ss	584(%rsp), %xmm2
	movl	596(%rsp), %eax
	cvtsi2ss	588(%rsp), %xmm5
	negl	%eax
	cvtsi2ss	%eax, %xmm3
	movl	592(%rsp), %eax
	negl	%eax
	cvtsi2ss	%eax, %xmm4
	jmp	.L2250
	.p2align 4,,10
.L2879:
	movl	4(%r12), %r8d
	addl	%ebx, %r8d
	jmp	.L2247
	.p2align 4,,10
.L2583:
	pxor	%xmm4, %xmm4
	pxor	%xmm5, %xmm5
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	jmp	.L2250
	.p2align 4,,10
.L2585:
	movl	%edx, %r13d
.L2245:
	addq	$40, %r12
	cmpq	%r12, 104(%rsp)
	jne	.L2259
	movq	152(%rsi), %rdx
	movl	%r13d, %r8d
	movq	368(%rsp), %rcx
	call	stbrp_pack_rects
	testl	%r13d, %r13d
	je	.L2241
	movq	152(%rsi), %rdx
	leal	-1(%r13), %eax
	movq	1520(%rsp), %r9
	salq	$4, %rax
	leaq	6(%rdx), %rcx
	leaq	22(%rdx,%rax), %r8
	.p2align 4,,10
.L2261:
	movl	6(%rcx), %eax
	testl	%eax, %eax
	je	.L2260
	movzwl	(%rcx), %edx
	movzwl	4(%rcx), %eax
	addl	%edx, %eax
	movl	28(%r9), %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, 28(%r9)
.L2260:
	addq	$16, %rcx
	cmpq	%rcx, %r8
	jne	.L2261
.L2241:
	movq	1520(%rsp), %rbx
	addq	$176, %rsi
	addl	$1, 144(%rsp)
	addq	$112, 184(%rsp)
	movl	144(%rsp), %eax
	cmpl	%eax, 64(%rbx)
	movslq	176(%rsp), %rdi
	jg	.L2262
	movl	152(%rsp), %ebx
	cmpl	%ebx, %edi
	je	.L2263
.L2545:
	leaq	.LC6(%rip), %rdx
	movl	$1378, %r8d
	leaq	.LC91(%rip), %rcx
	call	_assert
.L2263:
	movl	152(%rsp), %ebx
	cmpl	%ebx, 164(%rsp)
	je	.L2264
	leaq	.LC6(%rip), %rdx
	movl	$1379, %r8d
	leaq	.LC92(%rip), %rcx
	call	_assert
.L2264:
	movl	192(%rsp), %ebx
	cmpl	%ebx, 168(%rsp)
	je	.L2267
	leaq	.LC6(%rip), %rdx
	movl	$1380, %r8d
	leaq	.LC93(%rip), %rcx
	call	_assert
.L2267:
	movq	1520(%rsp), %rax
	movq	1520(%rsp), %rsi
	movl	28(%rax), %eax
	movl	%eax, 96(%rsp)
	subl	$1, %eax
	movl	%eax, %edx
	sarl	%edx
	orl	%edx, %eax
	movl	%eax, %edx
	sarl	$2, %edx
	orl	%edx, %eax
	movl	%eax, %edx
	sarl	$4, %edx
	orl	%edx, %eax
	movl	%eax, %edx
	sarl	$8, %edx
	orl	%edx, %eax
	movl	%eax, %edx
	sarl	$16, %edx
	orl	%edx, %eax
	addl	$1, %eax
	movl	%eax, 28(%rsi)
	imull	24(%rsi), %eax
	movslq	%eax, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	1520(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rax, %rcx
	movl	24(%rsi), %r8d
	movq	%rax, 8(%rsi)
	imull	28(%rsi), %r8d
	movslq	%r8d, %r8
	call	memset
	movq	1520(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 264(%rsp)
	movq	1520(%rsp), %rax
	movl	64(%rax), %r13d
	testl	%r13d, %r13d
	jle	.L2268
	movq	392(%rsp), %rax
	movq	$0, 384(%rsp)
	movl	$0, 364(%rsp)
	movq	%rax, 184(%rsp)
.L2516:
	movq	1520(%rsp), %rdi
	movq	384(%rsp), %rax
	addq	72(%rdi), %rax
	cmpl	$8, 24(%rax)
	movl	28(%rax), %ebx
	ja	.L2880
	cmpl	$8, %ebx
	jbe	.L2270
.L2547:
	leaq	.LC2(%rip), %rdx
	movl	$3428, %r8d
	leaq	.LC90(%rip), %rcx
	call	_assert
.L2270:
	movq	184(%rsp), %rbx
	movl	168(%rbx), %eax
	movq	152(%rbx), %rsi
	movq	160(%rbx), %rdx
	testl	%eax, %eax
	movq	%rsi, 344(%rsp)
	jle	.L2271
	subl	$1, %eax
	pxor	%xmm10, %xmm10
	movss	.LC18(%rip), %xmm5
	movq	%rdx, 176(%rsp)
	movl	$0, 204(%rsp)
	leaq	(%rax,%rax,4), %rax
	movss	%xmm5, 200(%rsp)
	leaq	40(%rdx,%rax,8), %rax
	movq	%rax, 336(%rsp)
	movq	%rdx, %rax
	.p2align 4,,10
.L2515:
	movss	(%rax), %xmm1
	movq	184(%rsp), %rdi
	ucomiss	%xmm10, %xmm1
	movq	8(%rdi), %rax
	jbe	.L2808
	movslq	36(%rdi), %rcx
	pxor	%xmm0, %xmm0
	leaq	4(%rax,%rcx), %rdx
	leaq	6(%rax,%rcx), %rcx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	(%rcx), %edx
	movzbl	1(%rcx), %ecx
	cwtl
	sall	$8, %edx
	addl	%ecx, %edx
	movswl	%dx, %edx
	subl	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, 216(%rsp)
.L2274:
	movq	176(%rsp), %rsi
	pxor	%xmm2, %xmm2
	movss	%xmm10, 232(%rsp)
	movss	200(%rsp), %xmm5
	movaps	%xmm5, %xmm4
	movzbl	32(%rsi), %eax
	movzbl	33(%rsi), %edi
	cvtsi2ss	%eax, %xmm2
	testl	%eax, %eax
	movb	%al, 152(%rsp)
	movl	%eax, %esi
	movl	%eax, 104(%rsp)
	movb	%dil, 164(%rsp)
	movl	%edi, 96(%rsp)
	movss	%xmm2, 248(%rsp)
	divss	%xmm2, %xmm4
	movss	%xmm4, 252(%rsp)
	pxor	%xmm4, %xmm4
	cvtsi2ss	%edi, %xmm4
	movss	%xmm4, 256(%rsp)
	divss	%xmm4, %xmm5
	movss	%xmm5, 260(%rsp)
	je	.L2275
	movl	$1, %eax
	pxor	%xmm0, %xmm0
	movaps	%xmm2, %xmm1
	subl	%esi, %eax
	addss	%xmm2, %xmm1
	cvtsi2ss	%eax, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 232(%rsp)
.L2275:
	movss	%xmm10, 236(%rsp)
	movl	96(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L2276
	pxor	%xmm1, %xmm1
	cvtsi2ss	%ebx, %xmm1
	movl	$1, %eax
	pxor	%xmm0, %xmm0
	subl	%ebx, %eax
	cvtsi2ss	%eax, %xmm0
	addss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 236(%rsp)
.L2276:
	movq	176(%rsp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jle	.L2277
	movslq	204(%rsp), %rdx
	xorl	%r15d, %r15d
	movl	$0, 136(%rsp)
	salq	$4, %rdx
	addq	344(%rsp), %rdx
	movq	%rdx, 144(%rsp)
	jmp	.L2514
	.p2align 4,,10
.L2887:
	leal	0(,%rbx,4), %eax
.L2837:
	cltq
	movss	216(%rsp), %xmm4
	addq	%rcx, %rax
	movq	184(%rsp), %rdi
	movss	256(%rsp), %xmm6
	addq	%rax, %rdx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	mulss	%xmm4, %xmm6
	movss	248(%rsp), %xmm7
	movq	%rdi, %rcx
	mulss	%xmm4, %xmm7
	sall	$8, %eax
	addl	%edx, %eax
	movaps	%xmm6, %xmm3
	movl	%ebx, %edx
	cwtl
	movl	%eax, 220(%rsp)
	leaq	496(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	492(%rsp), %rax
	movaps	%xmm7, %xmm2
	movq	%rax, 48(%rsp)
	leaq	488(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	484(%rsp), %rax
	movq	%rax, 32(%rsp)
	call	stbtt_GetGlyphBitmapBoxSubpixel.constprop.73
	movq	144(%rsp), %rsi
	movl	$1, %r14d
	movl	%r14d, %r13d
	subl	96(%rsp), %r13d
	subl	104(%rsp), %r14d
	movl	68(%rdi), %ebp
	movzwl	6(%rsi,%r15,4), %eax
	movzwl	8(%rsi,%r15,4), %edx
	addl	%eax, %r13d
	movzwl	4(%rsi,%r15,4), %eax
	addl	%eax, %r14d
	movzwl	10(%rsi,%r15,4), %eax
	imull	128(%rsp), %eax
	cltq
	addq	%rdx, %rax
	testl	%ebp, %ebp
	movq	%rax, 240(%rsp)
	je	.L2881
	xorl	%eax, %eax
	movl	$6, %ecx
	movl	%ebx, %edx
	leaq	628(%rsp), %rdi
	rep stosq
	leaq	688(%rsp), %rsi
	movl	$7, %ecx
	leaq	624(%rsp), %r8
	movl	$0, (%rdi)
	movq	%rsi, %rdi
	rep stosq
	movq	184(%rsp), %rcx
	movl	$1, 624(%rsp)
	call	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
	testl	%eax, %eax
	jne	.L2882
.L2285:
	movq	$0, 512(%rsp)
	xorl	%esi, %esi
.L2284:
	movq	184(%rsp), %rcx
	movaps	%xmm6, %xmm3
	movaps	%xmm7, %xmm2
	movl	%ebx, %edx
	leaq	504(%rsp), %rax
	movq	$0, 56(%rsp)
	movq	%rax, 40(%rsp)
	leaq	500(%rsp), %rax
	movq	$0, 48(%rsp)
	movq	%rax, 32(%rsp)
	call	stbtt_GetGlyphBitmapBoxSubpixel.constprop.73
	testl	%r13d, %r13d
	movq	512(%rsp), %rbx
	je	.L2288
	testl	%r14d, %r14d
	jne	.L2883
.L2288:
	movq	%rbx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	144(%rsp), %rdi
	movl	104(%rsp), %esi
	movzwl	6(%rdi,%r15,4), %r12d
	movzwl	4(%rdi,%r15,4), %r13d
	cmpl	$1, %esi
	movzwl	8(%rdi,%r15,4), %eax
	movzwl	10(%rdi,%r15,4), %edx
	movl	%r12d, %r8d
	movl	%r12d, %ecx
	movl	%r13d, %r9d
	ja	.L2884
.L2464:
	movl	96(%rsp), %esi
	cmpl	$1, %esi
	ja	.L2885
.L2489:
	movq	208(%rsp), %rdi
	pxor	%xmm0, %xmm0
	cvtsi2ss	220(%rsp), %xmm0
	mulss	216(%rsp), %xmm0
	movss	252(%rsp), %xmm5
	movss	232(%rsp), %xmm4
	movss	260(%rsp), %xmm3
	movw	%dx, 2(%rdi)
	addl	%r8d, %edx
	movss	236(%rsp), %xmm2
	movw	%dx, 6(%rdi)
	movl	484(%rsp), %edx
	movss	%xmm0, 16(%rdi)
	pxor	%xmm0, %xmm0
	movw	%ax, (%rdi)
	addl	%r9d, %eax
	movw	%ax, 4(%rdi)
	movl	488(%rsp), %eax
	cvtsi2ss	%edx, %xmm0
	addl	%edx, %r13d
	mulss	%xmm5, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 8(%rdi)
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	addl	%ecx, %eax
	mulss	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 12(%rdi)
	pxor	%xmm0, %xmm0
	cvtsi2ss	%r13d, %xmm0
	mulss	%xmm5, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 20(%rdi)
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	176(%rsp), %rax
	mulss	%xmm3, %xmm0
	movl	16(%rax), %eax
	addss	%xmm2, %xmm0
	movss	%xmm0, 24(%rdi)
.L2278:
	addl	$1, 136(%rsp)
	addq	$4, %r15
	movl	136(%rsp), %esi
	addl	$1, 204(%rsp)
	cmpl	%eax, %esi
	jge	.L2277
.L2514:
	movq	144(%rsp), %rsi
	movl	12(%rsi,%r15,4), %r12d
	testl	%r12d, %r12d
	je	.L2278
	movq	176(%rsp), %rsi
	leaq	0(,%r15,8), %rax
	subq	%r15, %rax
	addq	24(%rsi), %rax
	movq	%rax, 208(%rsp)
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.L2886
	movl	(%rax,%r15), %r8d
.L2280:
	movq	184(%rsp), %rdi
	movl	48(%rdi), %edx
	movq	8(%rdi), %rcx
	call	stbtt_FindGlyphIndex.isra.11
	movl	%eax, %ebx
	movq	144(%rsp), %rax
	movq	8(%rdi), %rdx
	addw	$1, 8(%rax,%r15,4)
	addw	$1, 10(%rax,%r15,4)
	subw	$1, 4(%rax,%r15,4)
	subw	$1, 6(%rax,%r15,4)
	movslq	36(%rdi), %rax
	leaq	34(%rdx,%rax), %rcx
	movzbl	(%rcx), %eax
	movzbl	1(%rcx), %ecx
	sall	$8, %eax
	addl	%ecx, %eax
	movslq	40(%rdi), %rcx
	movzwl	%ax, %eax
	cmpl	%eax, %ebx
	jl	.L2887
	leal	-4(,%rax,4), %eax
	jmp	.L2837
	.p2align 4,,10
.L2885:
	movzwl	%dx, %ebp
	movzwl	%ax, %r10d
	movl	%r12d, %edi
	movq	$0, 536(%rsp)
	imull	128(%rsp), %ebp
	subl	%esi, %edi
	leaq	536(%rsp), %rsi
	movl	%edi, 112(%rsp)
	movq	%rsi, 192(%rsp)
	movslq	%ebp, %rbp
	addq	%r10, %rbp
	addq	264(%rsp), %rbp
	testl	%r13d, %r13d
	je	.L2489
	movzbl	164(%rsp), %r14d
	leal	-1(%r13), %eax
	leaq	1(%rbp,%rax), %rax
	movq	%rax, 168(%rsp)
	leal	-1(%r14), %eax
	shrl	$3, %eax
	movl	%eax, 224(%rsp)
	.p2align 4,,10
.L2513:
	cmpl	$8, %r14d
	jnb	.L2491
	testb	$4, %r14b
	jne	.L2888
	testl	%r14d, %r14d
	je	.L2492
	movq	192(%rsp), %rax
	testb	$2, %r14b
	movb	$0, (%rax)
	jne	.L2889
.L2492:
	cmpb	$3, 164(%rsp)
	je	.L2496
.L2891:
	jbe	.L2890
	movzbl	164(%rsp), %eax
	cmpb	$4, %al
	je	.L2499
	cmpb	$5, %al
	jne	.L2495
	movl	112(%rsp), %eax
	testl	%eax, %eax
	js	.L2608
	movslq	128(%rsp), %r10
	movq	%rbp, %r8
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	leal	1(%rax), %ecx
	movl	$-858993459, %r9d
	.p2align 4,,10
.L2508:
	movl	%ebx, %r11d
	movzbl	(%r8), %eax
	andl	$7, %r11d
	movzbl	536(%rsp,%r11), %r11d
	movl	%eax, %edx
	subl	%r11d, %eax
	addl	%eax, %esi
	leal	5(%rbx), %eax
	addl	$1, %ebx
	andl	$7, %eax
	movb	%dl, 536(%rsp,%rax)
	movl	%esi, %eax
	mull	%r9d
	shrl	$2, %edx
	movb	%dl, (%r8)
	addq	%r10, %r8
	cmpl	%ecx, %ebx
	jne	.L2508
	.p2align 4,,10
.L2501:
	cmpl	%r12d, %ebx
	jge	.L2505
	movslq	128(%rsp), %r13
	movq	%r13, %rax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	addq	%rbp, %rdi
	jmp	.L2511
	.p2align 4,,10
.L2512:
	movl	%ebx, %eax
	xorl	%edx, %edx
	addl	$1, %ebx
	andl	$7, %eax
	movzbl	536(%rsp,%rax), %eax
	subl	%eax, %esi
	movl	%esi, %eax
	divl	96(%rsp)
	movb	%al, (%rdi)
	addq	%r13, %rdi
	cmpl	%r12d, %ebx
	je	.L2505
.L2511:
	cmpb	$0, (%rdi)
	je	.L2512
	leaq	.LC2(%rip), %rdx
	movl	$3552, %r8d
	leaq	.LC106(%rip), %rcx
	call	_assert
	jmp	.L2512
	.p2align 4,,10
.L2505:
	addq	$1, %rbp
	cmpq	168(%rsp), %rbp
	jne	.L2513
	movq	144(%rsp), %rbx
	movzwl	4(%rbx,%r15,4), %r13d
	movzwl	6(%rbx,%r15,4), %ecx
	movzwl	8(%rbx,%r15,4), %eax
	movzwl	10(%rbx,%r15,4), %edx
	movl	%r13d, %r9d
	movl	%ecx, %r8d
	jmp	.L2489
	.p2align 4,,10
.L2491:
	movq	192(%rsp), %rdi
	xorl	%eax, %eax
	movq	$0, -8(%rdi,%r14)
	movl	224(%rsp), %ecx
	rep stosq
	cmpb	$3, 164(%rsp)
	jne	.L2891
.L2496:
	movl	112(%rsp), %eax
	testl	%eax, %eax
	js	.L2608
	movslq	128(%rsp), %r10
	movq	%rbp, %r8
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	leal	1(%rax), %ecx
	movl	$-1431655765, %r9d
	.p2align 4,,10
.L2503:
	movl	%ebx, %r11d
	movzbl	(%r8), %eax
	andl	$7, %r11d
	movzbl	536(%rsp,%r11), %r11d
	movl	%eax, %edx
	subl	%r11d, %eax
	addl	%eax, %esi
	leal	3(%rbx), %eax
	addl	$1, %ebx
	andl	$7, %eax
	movb	%dl, 536(%rsp,%rax)
	movl	%esi, %eax
	mull	%r9d
	shrl	%edx
	movb	%dl, (%r8)
	addq	%r10, %r8
	cmpl	%ecx, %ebx
	jne	.L2503
	jmp	.L2501
	.p2align 4,,10
.L2890:
	cmpb	$2, 164(%rsp)
	jne	.L2495
	movl	112(%rsp), %esi
	testl	%esi, %esi
	js	.L2608
	movslq	128(%rsp), %r9
	leal	1(%rsi), %ecx
	movq	%rbp, %rax
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.p2align 4,,10
.L2502:
	movl	%ebx, %r10d
	movzbl	(%rax), %edx
	andl	$7, %r10d
	movzbl	536(%rsp,%r10), %r10d
	movl	%edx, %r8d
	subl	%r10d, %edx
	addl	%edx, %esi
	leal	2(%rbx), %edx
	addl	$1, %ebx
	andl	$7, %edx
	movb	%r8b, 536(%rsp,%rdx)
	movl	%esi, %edx
	shrl	%edx
	movb	%dl, (%rax)
	addq	%r9, %rax
	cmpl	%ecx, %ebx
	jne	.L2502
	jmp	.L2501
	.p2align 4,,10
.L2495:
	movl	112(%rsp), %eax
	testl	%eax, %eax
	js	.L2608
	movslq	128(%rsp), %r9
	movq	%rbp, %r8
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	96(%rsp), %r10d
	leal	1(%rax), %ecx
	.p2align 4,,10
.L2509:
	movl	%ebx, %r11d
	movzbl	(%r8), %eax
	andl	$7, %r11d
	movzbl	536(%rsp,%r11), %r11d
	movl	%eax, %edx
	subl	%r11d, %eax
	addl	%eax, %esi
	leal	(%rbx,%r10), %eax
	addl	$1, %ebx
	andl	$7, %eax
	movb	%dl, 536(%rsp,%rax)
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%r10d
	movb	%al, (%r8)
	addq	%r9, %r8
	cmpl	%ecx, %ebx
	jne	.L2509
	jmp	.L2501
	.p2align 4,,10
.L2499:
	movl	112(%rsp), %r10d
	testl	%r10d, %r10d
	js	.L2608
	movl	112(%rsp), %ebx
	movq	%rbp, %rax
	xorl	%esi, %esi
	movslq	128(%rsp), %r9
	leal	1(%rbx), %ecx
	xorl	%ebx, %ebx
	.p2align 4,,10
.L2507:
	movl	%ebx, %r10d
	movzbl	(%rax), %edx
	andl	$7, %r10d
	movzbl	536(%rsp,%r10), %r10d
	movl	%edx, %r8d
	subl	%r10d, %edx
	addl	%edx, %esi
	leal	4(%rbx), %edx
	addl	$1, %ebx
	andl	$7, %edx
	movb	%r8b, 536(%rsp,%rdx)
	movl	%esi, %edx
	shrl	$2, %edx
	movb	%dl, (%rax)
	addq	%r9, %rax
	cmpl	%ecx, %ebx
	jne	.L2507
	jmp	.L2501
	.p2align 4,,10
.L2884:
	movzwl	%dx, %ebp
	movzwl	%ax, %r10d
	movl	%r13d, %edi
	movq	$0, 528(%rsp)
	imull	128(%rsp), %ebp
	subl	%esi, %edi
	leaq	528(%rsp), %rsi
	movl	%edi, 168(%rsp)
	movq	%rsi, 192(%rsp)
	movslq	%ebp, %rbp
	addq	%r10, %rbp
	addq	264(%rsp), %rbp
	testl	%r12d, %r12d
	je	.L2464
	movzbl	152(%rsp), %r14d
	movl	$0, 112(%rsp)
	.p2align 4,,10
.L2488:
	movq	192(%rsp), %rsi
	cmpl	$8, %r14d
	movq	%rsi, %rdi
	jb	.L2466
	movq	%r14, %rcx
	xorl	%eax, %eax
	shrq	$3, %rcx
	rep stosq
.L2466:
	testb	$4, %r14b
	je	.L2467
	movl	$0, (%rdi)
	addq	$4, %rdi
.L2467:
	testb	$2, %r14b
	je	.L2468
	xorl	%esi, %esi
	addq	$2, %rdi
	movw	%si, -2(%rdi)
.L2468:
	testb	$1, %r14b
	je	.L2469
	movb	$0, (%rdi)
.L2469:
	cmpb	$3, 152(%rsp)
	je	.L2471
	jbe	.L2892
	movzbl	152(%rsp), %eax
	cmpb	$4, %al
	je	.L2474
	cmpb	$5, %al
	jne	.L2470
	movl	168(%rsp), %eax
	testl	%eax, %eax
	js	.L2604
	movl	%eax, %r8d
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	addq	$1, %r8
	movl	$-858993459, %r9d
	.p2align 4,,10
.L2483:
	movq	%rcx, %r10
	movzbl	0(%rbp,%rcx), %eax
	andl	$7, %r10d
	movzbl	528(%rsp,%r10), %r10d
	movl	%eax, %edx
	subl	%r10d, %eax
	addl	%eax, %ebx
	leal	5(%rcx), %eax
	andl	$7, %eax
	movb	%dl, 528(%rsp,%rax)
	movl	%ebx, %eax
	mull	%r9d
	shrl	$2, %edx
	movb	%dl, 0(%rbp,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.L2483
.L2851:
	movl	168(%rsp), %eax
	leal	1(%rax), %esi
.L2476:
	movslq	%esi, %rdi
	addq	%rbp, %rdi
	cmpl	%r13d, %esi
	jl	.L2486
	jmp	.L2480
	.p2align 4,,10
.L2487:
	movl	%esi, %eax
	xorl	%edx, %edx
	addl	$1, %esi
	andl	$7, %eax
	addq	$1, %rdi
	movzbl	528(%rsp,%rax), %eax
	subl	%eax, %ebx
	movl	%ebx, %eax
	divl	104(%rsp)
	movb	%al, -1(%rdi)
	cmpl	%r13d, %esi
	je	.L2480
.L2486:
	cmpb	$0, (%rdi)
	je	.L2487
	leaq	.LC2(%rip), %rdx
	movl	$3490, %r8d
	leaq	.LC105(%rip), %rcx
	call	_assert
	jmp	.L2487
	.p2align 4,,10
.L2480:
	movslq	128(%rsp), %rax
	addl	$1, 112(%rsp)
	addq	%rax, %rbp
	movl	112(%rsp), %eax
	cmpl	%r12d, %eax
	jne	.L2488
	movq	144(%rsp), %rdi
	movzwl	6(%rdi,%r15,4), %r12d
	movzwl	4(%rdi,%r15,4), %r13d
	movzwl	8(%rdi,%r15,4), %eax
	movzwl	10(%rdi,%r15,4), %edx
	movl	%r12d, %r8d
	movl	%r12d, %ecx
	movl	%r13d, %r9d
	jmp	.L2464
	.p2align 4,,10
.L2892:
	cmpb	$2, 152(%rsp)
	jne	.L2470
	movl	168(%rsp), %eax
	testl	%eax, %eax
	js	.L2604
	movl	%eax, %r8d
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	addq	$1, %r8
	.p2align 4,,10
.L2477:
	movq	%rdx, %r9
	movzbl	0(%rbp,%rdx), %eax
	andl	$7, %r9d
	movzbl	528(%rsp,%r9), %r9d
	movl	%eax, %ecx
	subl	%r9d, %eax
	addl	%eax, %ebx
	leal	2(%rdx), %eax
	andl	$7, %eax
	movb	%cl, 528(%rsp,%rax)
	movl	%ebx, %eax
	shrl	%eax
	movb	%al, 0(%rbp,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.L2477
	jmp	.L2851
	.p2align 4,,10
.L2474:
	movl	168(%rsp), %ebx
	testl	%ebx, %ebx
	js	.L2604
	movl	168(%rsp), %r8d
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	addq	$1, %r8
	.p2align 4,,10
.L2482:
	movq	%rdx, %r9
	movzbl	0(%rbp,%rdx), %eax
	andl	$7, %r9d
	movzbl	528(%rsp,%r9), %r9d
	movl	%eax, %ecx
	subl	%r9d, %eax
	addl	%eax, %ebx
	leal	4(%rdx), %eax
	andl	$7, %eax
	movb	%cl, 528(%rsp,%rax)
	movl	%ebx, %eax
	shrl	$2, %eax
	movb	%al, 0(%rbp,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.L2482
	jmp	.L2851
	.p2align 4,,10
.L2470:
	movl	168(%rsp), %eax
	testl	%eax, %eax
	js	.L2604
	movl	104(%rsp), %r9d
	movq	%rbp, %rcx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	leal	1(%rax), %r8d
	.p2align 4,,10
.L2484:
	movl	%esi, %r10d
	movzbl	(%rcx), %eax
	addq	$1, %rcx
	andl	$7, %r10d
	movzbl	528(%rsp,%r10), %r10d
	movl	%eax, %edx
	subl	%r10d, %eax
	addl	%eax, %ebx
	leal	(%rsi,%r9), %eax
	addl	$1, %esi
	andl	$7, %eax
	movb	%dl, 528(%rsp,%rax)
	xorl	%edx, %edx
	movl	%ebx, %eax
	divl	%r9d
	movb	%al, -1(%rcx)
	cmpl	%r8d, %esi
	jne	.L2484
	jmp	.L2476
	.p2align 4,,10
.L2471:
	movl	168(%rsp), %eax
	testl	%eax, %eax
	js	.L2604
	movl	%eax, %r8d
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	addq	$1, %r8
	.p2align 4,,10
.L2478:
	movq	%rcx, %r9
	movzbl	0(%rbp,%rcx), %eax
	andl	$7, %r9d
	movzbl	528(%rsp,%r9), %r9d
	movl	%eax, %edx
	subl	%r9d, %eax
	addl	%eax, %ebx
	leal	3(%rcx), %eax
	andl	$7, %eax
	movb	%dl, 528(%rsp,%rax)
	movl	$-1431655765, %eax
	mull	%ebx
	shrl	%edx
	movb	%dl, 0(%rbp,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.L2478
	jmp	.L2851
	.p2align 4,,10
.L2881:
	leaq	512(%rsp), %r8
	movl	%ebx, %edx
	movq	%rdi, %rcx
	call	_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex
	movl	%eax, %esi
	jmp	.L2284
	.p2align 4,,10
.L2604:
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	jmp	.L2476
	.p2align 4,,10
.L2608:
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	.L2501
	.p2align 4,,10
.L2277:
	addq	$40, 176(%rsp)
	movq	176(%rsp), %rax
	cmpq	%rax, 336(%rsp)
	jne	.L2515
.L2271:
	movq	184(%rsp), %rax
	addl	$1, 364(%rsp)
	addq	$112, 384(%rsp)
	movl	364(%rsp), %esi
	addq	$176, %rax
	movq	$0, -24(%rax)
	movq	%rax, 184(%rsp)
	movq	1520(%rsp), %rax
	cmpl	%esi, 64(%rax)
	jg	.L2516
.L2268:
	movq	376(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	368(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	408(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	1520(%rsp), %rax
	movl	64(%rax), %r9d
	testl	%r9d, %r9d
	jle	.L2517
	movq	392(%rsp), %rax
	movq	$0, 168(%rsp)
	movss	.LC18(%rip), %xmm14
	movl	$0, 164(%rsp)
	addq	$8, %rax
	movq	%rax, 136(%rsp)
.L2538:
	movq	1520(%rsp), %rax
	movq	168(%rsp), %r15
	addq	72(%rax), %r15
	cmpb	$0, 64(%r15)
	movq	104(%r15), %rdi
	je	.L2518
	movzwl	78(%rdi), %eax
	addl	$1, %eax
.L2519:
	movw	%ax, 78(%rdi)
	movq	136(%rsp), %rax
	movss	44(%r15), %xmm5
	movss	%xmm5, 104(%rsp)
	movss	48(%r15), %xmm5
	movl	160(%rax), %eax
	movq	$0, 64(%rdi)
	movss	%xmm5, 128(%rsp)
	testl	%eax, %eax
	jle	.L2522
	movl	$0, 112(%rsp)
	pxor	%xmm10, %xmm10
	movq	$0, 144(%rsp)
	.p2align 4,,10
.L2537:
	movq	136(%rsp), %rsi
	movq	144(%rsp), %r14
	addq	152(%rsi), %r14
	movl	16(%r14), %edx
	testl	%edx, %edx
	jle	.L2523
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	jmp	.L2536
	.p2align 4,,10
.L2894:
	movq	56(%rdi), %rcx
	movzwl	%r13w, %edx
	movzwl	(%rcx,%rdx,2), %edx
	cmpw	$-1, %dx
	je	.L2527
	leaq	(%rdx,%rdx,4), %rcx
	movq	24(%rdi), %rdx
	leaq	(%rdx,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.L2526
.L2535:
	addl	$1, %r12d
	addq	$28, %rbp
	cmpl	%r12d, 16(%r14)
	jle	.L2893
.L2536:
	movq	24(%r14), %rbx
	addq	%rbp, %rbx
	movzwl	(%rbx), %eax
	testw	%ax, %ax
	jne	.L2524
	cmpw	$0, 4(%rbx)
	jne	.L2524
	cmpw	$0, 2(%rbx)
	jne	.L2524
	cmpw	$0, 6(%rbx)
	je	.L2535
	.p2align 4,,10
.L2524:
	movl	4(%r14), %r13d
	addl	%r12d, %r13d
	cmpb	$0, 64(%r15)
	je	.L2526
	movzwl	%r13w, %edx
	cmpl	48(%rdi), %edx
	jl	.L2894
.L2527:
	movq	64(%rdi), %rdx
	testq	%rdx, %rdx
	jne	.L2535
.L2526:
	pxor	%xmm0, %xmm0
	movaps	%xmm14, %xmm1
	pxor	%xmm6, %xmm6
	movq	1520(%rsp), %rsi
	cvtsi2ss	%eax, %xmm6
	movzwl	2(%rbx), %eax
	movaps	%xmm14, %xmm5
	pxor	%xmm9, %xmm9
	pxor	%xmm8, %xmm8
	pxor	%xmm7, %xmm7
	movss	8(%rbx), %xmm12
	movss	12(%rbx), %xmm13
	cvtsi2ss	24(%rsi), %xmm0
	movss	20(%rbx), %xmm11
	cvtsi2ss	%eax, %xmm9
	movzwl	4(%rbx), %eax
	movss	24(%rbx), %xmm15
	addss	%xmm10, %xmm12
	addss	%xmm10, %xmm13
	divss	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ss	28(%rsi), %xmm0
	cvtsi2ss	%eax, %xmm8
	movzwl	6(%rbx), %eax
	addss	%xmm10, %xmm11
	addss	%xmm10, %xmm15
	cvtsi2ss	%eax, %xmm7
	movl	16(%rdi), %eax
	leal	1(%rax), %esi
	movl	20(%rdi), %eax
	cmpl	%eax, %esi
	divss	%xmm0, %xmm5
	mulss	%xmm1, %xmm6
	mulss	%xmm1, %xmm8
	mulss	%xmm5, %xmm9
	mulss	%xmm5, %xmm7
	jle	.L2529
	testl	%eax, %eax
	movl	$8, 96(%rsp)
	je	.L2530
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	leal	(%rdx,%rax), %ecx
	movl	%ecx, 96(%rsp)
.L2530:
	movl	96(%rsp), %ecx
	cmpl	%ecx, %esi
	jge	.L2611
	cmpl	%ecx, %eax
	jl	.L2531
.L2529:
	testl	%esi, %esi
	movl	%esi, 16(%rdi)
	jle	.L2895
.L2533:
	movq	24(%rdi), %rax
	movaps	%xmm12, %xmm0
	movslq	%esi, %rsi
	movaps	%xmm13, %xmm1
	movss	104(%rsp), %xmm4
	leaq	(%rsi,%rsi,4), %rdx
	movss	128(%rsp), %xmm5
	addss	%xmm4, %xmm0
	leaq	-40(%rax,%rdx,8), %rax
	addss	%xmm5, %xmm1
	movw	%r13w, (%rax)
	movss	%xmm0, 8(%rax)
	movaps	%xmm11, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm6, 24(%rax)
	movss	%xmm9, 28(%rax)
	movss	%xmm8, 32(%rax)
	movss	%xmm0, 16(%rax)
	movss	.LC1(%rip), %xmm0
	addss	96(%rdi), %xmm0
	movss	%xmm7, 36(%rax)
	cvttss2si	%xmm0, %edx
	pxor	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, 12(%rax)
	movaps	%xmm15, %xmm1
	addss	%xmm5, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, 20(%rax)
	movss	16(%rbx), %xmm0
	addss	36(%r15), %xmm0
	movss	%xmm0, 4(%rax)
	cmpb	$0, 32(%r15)
	je	.L2534
	addss	.LC1(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	pxor	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, 4(%rax)
.L2534:
	movq	1520(%rsp), %rax
	pxor	%xmm0, %xmm0
	addl	$1, %r12d
	subss	%xmm6, %xmm8
	movq	1520(%rsp), %rsi
	subss	%xmm9, %xmm7
	addq	$28, %rbp
	cvtsi2ss	24(%rax), %xmm0
	mulss	%xmm8, %xmm0
	addss	.LC107(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	28(%rsi), %xmm0
	mulss	%xmm7, %xmm0
	addss	.LC107(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	imull	%edx, %eax
	addl	%eax, 104(%rdi)
	cmpl	%r12d, 16(%r14)
	jg	.L2536
.L2893:
	movq	136(%rsp), %rax
	movl	160(%rax), %eax
.L2523:
	addl	$1, 112(%rsp)
	movl	112(%rsp), %ebx
	addq	$40, 144(%rsp)
	cmpl	%eax, %ebx
	jl	.L2537
.L2522:
	movq	104(%r15), %rcx
	call	_ZN6ImFont16BuildLookupTableEv
	movq	1520(%rsp), %rdi
	addl	$1, 164(%rsp)
	addq	$112, 168(%rsp)
	movl	164(%rsp), %eax
	addq	$176, 136(%rsp)
	cmpl	%eax, 64(%rdi)
	jg	.L2538
.L2517:
	movq	400(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	416(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	392(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	424(%rsp), %r8
	movl	$1, %edx
	movq	1520(%rsp), %rcx
	call	_ZN11ImFontAtlas19RenderCustomTexDataEiPv
.LEHE8:
	movq	552(%rsp), %rcx
	movl	$1, %r11d
	testq	%rcx, %rcx
	je	.L2174
	movb	%r11b, 96(%rsp)
	call	_ZN5ImGui7MemFreeEPv
	movzbl	96(%rsp), %r11d
	jmp	.L2174
	.p2align 4,,10
.L2584:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	jmp	.L2251
	.p2align 4,,10
.L2611:
	movl	%esi, 96(%rsp)
.L2531:
	movslq	96(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	salq	$3, %rcx
.LEHB9:
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rdi), %rcx
	movq	%rax, %r11
	movq	%rax, 152(%rsp)
	testq	%rcx, %rcx
	je	.L2532
	movslq	16(%rdi), %rax
	movq	%rcx, %rdx
	movq	%r11, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$3, %r8
	call	memcpy
	movq	24(%rdi), %rcx
.L2532:
	call	_ZN5ImGui7MemFreeEPv
	movq	152(%rsp), %rax
	testl	%esi, %esi
	movl	%esi, 16(%rdi)
	movq	%rax, 24(%rdi)
	movl	96(%rsp), %eax
	movl	%eax, 20(%rdi)
	jg	.L2533
	.p2align 4,,10
.L2895:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movl	16(%rdi), %esi
	jmp	.L2533
	.p2align 4,,10
.L2886:
	movl	136(%rsp), %r8d
	addl	4(%rsi), %r8d
	jmp	.L2280
	.p2align 4,,10
.L2883:
	movl	504(%rsp), %eax
	movaps	%xmm6, %xmm12
	testl	%esi, %esi
	movl	$0, 508(%rsp)
	minss	%xmm7, %xmm12
	movl	%eax, 192(%rsp)
	movl	500(%rsp), %eax
	movl	%eax, 288(%rsp)
	jle	.L2288
	leal	-1(%rsi), %edi
	cmpl	$19, %edi
	jbe	.L2589
	movl	%esi, %r11d
	xorl	%r9d, %r9d
	pxor	%xmm2, %xmm2
	pxor	%xmm9, %xmm9
	leaq	12(%rbx), %r8
	shrl	$4, %r11d
	pxor	%xmm5, %xmm5
	movdqa	.LC94(%rip), %xmm8
	.p2align 4,,10
.L2293:
	movzbl	98(%r8), %edx
	movdqa	%xmm9, %xmm3
	addl	$1, %r9d
	addq	$224, %r8
	movzbl	-140(%r8), %eax
	movzbl	-28(%r8), %ecx
	movzbl	-224(%r8), %r10d
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-154(%r8), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-168(%r8), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-182(%r8), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-196(%r8), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-210(%r8), %eax
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	-14(%r8), %eax
	salq	$8, %rdx
	orq	%r10, %rdx
	movq	%rdx, 112(%rsp)
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-42(%r8), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-56(%r8), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-70(%r8), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-84(%r8), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-98(%r8), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	-112(%r8), %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	cmpl	%r11d, %r9d
	movq	%rax, 120(%rsp)
	movdqa	112(%rsp), %xmm0
	pcmpeqb	%xmm8, %xmm0
	pand	%xmm8, %xmm0
	pcmpgtb	%xmm0, %xmm3
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm3, %xmm1
	punpckhbw	%xmm3, %xmm0
	movdqa	%xmm5, %xmm3
	movdqa	%xmm1, %xmm4
	pcmpgtw	%xmm1, %xmm3
	punpcklwd	%xmm3, %xmm4
	paddd	%xmm4, %xmm2
	punpckhwd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	paddd	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	pcmpgtw	%xmm0, %xmm1
	punpcklwd	%xmm1, %xmm3
	paddd	%xmm3, %xmm2
	punpckhwd	%xmm1, %xmm0
	paddd	%xmm0, %xmm2
	jb	.L2293
	movdqa	%xmm2, %xmm0
	movl	%esi, %eax
	psrldq	$8, %xmm0
	andl	$-16, %eax
	paddd	%xmm0, %xmm2
	cmpl	%esi, %eax
	movdqa	%xmm2, %xmm0
	psrldq	$4, %xmm0
	paddd	%xmm0, %xmm2
	movd	%xmm2, %r12d
	je	.L2294
.L2292:
	movslq	%eax, %rcx
	leaq	0(,%rcx,8), %rdx
	subq	%rcx, %rdx
	leaq	12(%rbx,%rdx,2), %rdx
	.p2align 4,,10
.L2296:
	xorl	%ecx, %ecx
	cmpb	$1, (%rdx)
	sete	%cl
	addl	$1, %eax
	addq	$14, %rdx
	addl	%ecx, %r12d
	cmpl	%eax, %esi
	jg	.L2296
.L2294:
	testl	%r12d, %r12d
	je	.L2288
	movslq	%r12d, %rcx
	salq	$2, %rcx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	movq	%rax, 320(%rsp)
	jne	.L2896
.L2849:
	movq	512(%rsp), %rbx
	jmp	.L2288
	.p2align 4,,10
.L2882:
	movslq	672(%rsp), %rax
	leaq	0(,%rax,8), %rcx
	subq	%rax, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	184(%rsp), %rcx
	movq	%rsi, %r8
	movl	%ebx, %edx
	movq	%rax, 512(%rsp)
	movq	%rax, 728(%rsp)
	call	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
	testl	%eax, %eax
	je	.L2285
	movl	672(%rsp), %esi
	cmpl	%esi, 736(%rsp)
	je	.L2284
	leaq	.LC2(%rip), %rdx
	movl	$2113, %r8d
	leaq	.LC33(%rip), %rcx
	call	_assert
	movl	736(%rsp), %esi
	jmp	.L2284
.L2888:
	movq	192(%rsp), %rax
	movl	$0, (%rax)
	movl	$0, -4(%rax,%r14)
	jmp	.L2492
.L2808:
	movslq	28(%rdi), %rdx
	pxor	%xmm0, %xmm0
	xorps	.LC29(%rip), %xmm1
	leaq	18(%rax,%rdx), %rdx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	cvtsi2ss	%eax, %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, 216(%rsp)
	jmp	.L2274
.L2806:
	movslq	28(%rsi), %rax
	pxor	%xmm0, %xmm0
	xorps	%xmm11, %xmm9
	leaq	18(%rcx,%rax), %rdx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	cvtsi2ss	%eax, %xmm0
	divss	%xmm0, %xmm9
	jmp	.L2244
.L2889:
	movq	192(%rsp), %rax
	xorl	%r11d, %r11d
	movw	%r11w, -2(%rax,%r14)
	jmp	.L2492
.L2877:
	leaq	.LC2(%rip), %rdx
	movl	$3427, %r8d
	leaq	.LC89(%rip), %rcx
	call	_assert
	cmpl	$8, %edi
	ja	.L2544
	movq	152(%rsi), %rax
	movl	%r14d, %ebx
	movl	168(%rsi), %r9d
	movq	160(%rsi), %r12
	movq	%rax, 96(%rsp)
.L2541:
	testl	%r9d, %r9d
	movl	%edi, %r15d
	movl	%ebx, %r14d
	jg	.L2240
.L2878:
	movq	96(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	368(%rsp), %rcx
	call	stbrp_pack_rects
	jmp	.L2241
.L2896:
	leaq	0(,%rdi,8), %rax
	movss	.LC95(%rip), %xmm8
	movl	$0, 112(%rsp)
	movq	$0, 352(%rsp)
	subq	%rdi, %rax
	xorl	%edi, %edi
	divss	%xmm12, %xmm8
	leaq	14(%rbx,%rax,2), %rsi
	leaq	508(%rsp), %rax
	movq	%rax, 168(%rsp)
	mulss	%xmm8, %xmm8
.L2299:
	movl	$-1, %ebp
	movl	%r12d, 272(%rsp)
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movl	%ebp, %r12d
	movq	%rbx, 224(%rsp)
	movq	%rsi, %rbp
	movq	352(%rsp), %rsi
	movl	$0, 508(%rsp)
	jmp	.L2308
	.p2align 4,,10
.L2303:
	cmpb	$3, %al
	je	.L2305
	cmpb	$4, %al
	jne	.L2301
	movl	$0, 88(%rsp)
	pxor	%xmm0, %xmm0
	movq	%rsi, %rcx
	movq	168(%rsp), %rdx
	movss	%xmm8, 80(%rsp)
	movswl	2(%rbx), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 72(%rsp)
	movswl	(%rbx), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 64(%rsp)
	movswl	10(%rbx), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 56(%rsp)
	movswl	8(%rbx), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 48(%rsp)
	movswl	6(%rbx), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 40(%rsp)
	movswl	4(%rbx), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi
	movswl	(%rbx), %eax
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	cvtsi2ss	%eax, %xmm2
	movswl	2(%rbx), %eax
	cvtsi2ss	%eax, %xmm3
.L2301:
	addq	$14, %rbx
	cmpq	%rbx, %rbp
	je	.L2897
.L2308:
	movzbl	12(%rbx), %eax
	cmpb	$2, %al
	je	.L2302
	ja	.L2303
	cmpb	$1, %al
	jne	.L2301
	cmpl	$-1, %r12d
	movl	508(%rsp), %eax
	je	.L2590
	subl	%edi, %eax
	movq	320(%rsp), %rdi
	movslq	%r12d, %rdx
	movl	%eax, (%rdi,%rdx,4)
	movl	508(%rsp), %edi
.L2307:
	movswl	(%rbx), %eax
	pxor	%xmm2, %xmm2
	addl	$1, %r12d
	pxor	%xmm3, %xmm3
	testq	%rsi, %rsi
	cvtsi2ss	%eax, %xmm2
	movswl	2(%rbx), %eax
	cvtsi2ss	%eax, %xmm3
	leal	1(%rdi), %eax
	movl	%eax, 508(%rsp)
	je	.L2301
	movslq	%edi, %rax
	addq	$14, %rbx
	leaq	(%rsi,%rax,8), %rax
	cmpq	%rbx, %rbp
	movss	%xmm2, (%rax)
	movss	%xmm3, 4(%rax)
	jne	.L2308
.L2897:
	movl	508(%rsp), %eax
	movslq	%r12d, %r9
	movq	%rbp, %rsi
	movq	320(%rsp), %rcx
	movq	224(%rsp), %rbx
	movl	272(%rsp), %r12d
	subl	%edi, %eax
	cmpl	$1, 112(%rsp)
	movl	%eax, (%rcx,%r9,4)
	je	.L2309
	movslq	508(%rsp), %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	movq	%rax, 352(%rsp)
	movl	$1, 112(%rsp)
	jne	.L2299
.L2300:
	xorl	%ecx, %ecx
	call	_ZN5ImGui7MemFreeEPv
	movq	320(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	jmp	.L2849
	.p2align 4,,10
.L2305:
	movl	$0, 72(%rsp)
	pxor	%xmm0, %xmm0
	movq	%rsi, %rcx
	movq	168(%rsp), %rdx
	movss	%xmm8, 64(%rsp)
	movswl	2(%rbx), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 56(%rsp)
	movswl	(%rbx), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 48(%rsp)
	movswl	6(%rbx), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 40(%rsp)
	movswl	4(%rbx), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi
	movswl	(%rbx), %eax
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	cvtsi2ss	%eax, %xmm2
	movswl	2(%rbx), %eax
	cvtsi2ss	%eax, %xmm3
	jmp	.L2301
.L2302:
	movswl	(%rbx), %eax
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	testq	%rsi, %rsi
	cvtsi2ss	%eax, %xmm2
	movswl	2(%rbx), %eax
	cvtsi2ss	%eax, %xmm3
	movslq	508(%rsp), %rax
	leal	1(%rax), %edx
	movl	%edx, 508(%rsp)
	je	.L2301
	leaq	(%rsi,%rax,8), %rax
	movss	%xmm2, (%rax)
	movss	%xmm3, 4(%rax)
	jmp	.L2301
.L2309:
	cmpq	$0, 352(%rsp)
	je	.L2849
	movq	%rcx, %rax
	movq	%rcx, %rbx
	movq	%rcx, %rdi
	leal	-1(%r12), %edx
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	cmpl	$6, %edx
	jbe	.L2591
	testl	%eax, %eax
	je	.L2592
	cmpl	$1, %eax
	movl	(%rcx), %r9d
	movl	$1, %r8d
	je	.L2313
	addl	4(%rcx), %r9d
	cmpl	$2, %eax
	movl	$2, %r8d
	je	.L2313
	addl	8(%rcx), %r9d
	movl	$3, %r8d
.L2313:
	movl	%r12d, %ecx
	pxor	%xmm0, %xmm0
	leaq	(%rbx,%rax,4), %rdx
	subl	%eax, %ecx
	xorl	%eax, %eax
	movl	%ecx, %r10d
	shrl	$2, %r10d
.L2315:
	addl	$1, %eax
	paddd	(%rdx), %xmm0
	addq	$16, %rdx
	cmpl	%r10d, %eax
	jb	.L2315
	movdqa	%xmm0, %xmm1
	psrldq	$8, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	addl	%r9d, %eax
	movl	%ecx, %r9d
	andl	$-4, %r9d
	leal	(%r9,%r8), %edx
	cmpl	%ecx, %r9d
	je	.L2316
.L2312:
	movq	320(%rsp), %rbx
	movslq	%edx, %rcx
	addl	(%rbx,%rcx,4), %eax
	leal	1(%rdx), %ecx
	cmpl	%r12d, %ecx
	jge	.L2316
	movslq	%ecx, %rcx
	addl	(%rbx,%rcx,4), %eax
	leal	2(%rdx), %ecx
	cmpl	%r12d, %ecx
	jge	.L2316
	movslq	%ecx, %rcx
	addl	(%rbx,%rcx,4), %eax
	leal	3(%rdx), %ecx
	cmpl	%r12d, %ecx
	jge	.L2316
	movslq	%ecx, %rcx
	addl	(%rbx,%rcx,4), %eax
	leal	4(%rdx), %ecx
	cmpl	%r12d, %ecx
	jge	.L2316
	movslq	%ecx, %rcx
	addl	(%rbx,%rcx,4), %eax
	leal	5(%rdx), %ecx
	cmpl	%r12d, %ecx
	jge	.L2316
	movslq	%ecx, %rcx
	addl	$6, %edx
	addl	(%rbx,%rcx,4), %eax
	cmpl	%edx, %r12d
	jle	.L2316
	movslq	%edx, %rdx
	addl	(%rbx,%rdx,4), %eax
.L2316:
	addl	$1, %eax
	cltq
	leaq	(%rax,%rax,4), %rcx
	salq	$2, %rcx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L2462
	movl	%r13d, 168(%rsp)
	xorl	%esi, %esi
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	movq	352(%rsp), %r13
	xorps	.LC29(%rip), %xmm6
	.p2align 4,,10
.L2325:
	movl	(%rdi), %ebp
	movslq	%r11d, %rax
	leaq	0(%r13,%rax,8), %r9
	leal	-1(%rbp), %edx
	addl	%ebp, %r11d
	testl	%ebp, %ebp
	jle	.L2319
	movslq	%edx, %rax
	xorl	%ecx, %ecx
	movl	%ebp, %r8d
	movss	4(%r9,%rax,8), %xmm0
	movq	%r9, %rax
	jmp	.L2324
	.p2align 4,,10
.L2898:
	movaps	%xmm0, %xmm2
	movl	$0, 16(%rdx)
	movaps	%xmm1, %xmm0
.L2323:
	mulss	%xmm6, %xmm0
	movss	0(%rbp), %xmm3
	addl	$1, %esi
	mulss	%xmm6, %xmm2
	mulss	%xmm7, %xmm3
	addss	%xmm10, %xmm0
	addss	%xmm10, %xmm3
	movss	%xmm0, 4(%rdx)
	movss	(%r8), %xmm0
	movl	(%rdi), %r8d
	mulss	%xmm7, %xmm0
	movss	%xmm3, (%rdx)
	addss	%xmm10, %xmm0
	movss	%xmm0, 8(%rdx)
	movaps	%xmm2, %xmm0
	addss	%xmm10, %xmm0
	movss	%xmm0, 12(%rdx)
.L2320:
	leal	1(%rcx), %ebp
	addq	$8, %rax
	movl	%ecx, %edx
	cmpl	%r8d, %ebp
	movaps	%xmm1, %xmm0
	jge	.L2319
	movl	%ebp, %ecx
.L2324:
	movss	4(%rax), %xmm1
	movq	%rax, %rbp
	ucomiss	%xmm0, %xmm1
	jp	.L2618
	je	.L2320
.L2618:
	movslq	%edx, %rdx
	ucomiss	%xmm1, %xmm0
	leaq	(%r9,%rdx,8), %r8
	movslq	%esi, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rbx,%rdx,4), %rdx
	jbe	.L2898
	movq	%r8, %rbp
	movl	$1, 16(%rdx)
	movaps	%xmm1, %xmm2
	movq	%rax, %r8
	jmp	.L2323
	.p2align 4,,10
.L2319:
	addl	$1, %r10d
	addq	$4, %rdi
	cmpl	%r12d, %r10d
	jl	.L2325
	movl	%esi, %edx
	movq	%rbx, %rcx
	movl	168(%rsp), %r13d
	call	_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei
	cmpl	$1, %esi
	jle	.L2326
	movl	112(%rsp), %r9d
	leaq	20(%rbx), %r8
	.p2align 4,,10
.L2332:
	movl	16(%r8), %r10d
	movq	%r8, %rax
	movl	%r9d, %edx
	movss	(%r8), %xmm4
	subq	%rbx, %rax
	movss	4(%r8), %xmm1
	movss	8(%r8), %xmm3
	movss	12(%r8), %xmm2
	.p2align 4,,10
.L2330:
	movss	-16(%rbx,%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L2811
	movq	-20(%rbx,%rax), %rcx
	movq	%rcx, (%rbx,%rax)
	movq	-12(%rbx,%rax), %rcx
	movq	%rcx, 8(%rbx,%rax)
	movl	-4(%rbx,%rax), %ecx
	movl	%ecx, 16(%rbx,%rax)
	subq	$20, %rax
	subl	$1, %edx
	jne	.L2330
	movq	%rbx, %rax
.L2329:
	movss	%xmm4, (%rax)
	movss	%xmm1, 4(%rax)
	movss	%xmm3, 8(%rax)
	movss	%xmm2, 12(%rax)
	movl	%r10d, 16(%rax)
.L2331:
	addl	$1, %r9d
	addq	$20, %r8
	cmpl	%esi, %r9d
	jne	.L2332
.L2326:
	movq	$0, 520(%rsp)
	cmpl	$64, %r14d
	jg	.L2899
	movslq	%r14d, %rax
	movslq	%esi, %rsi
	pxor	%xmm0, %xmm0
	leaq	752(%rsp), %rdx
	salq	$2, %rax
	movq	%rax, 296(%rsp)
	addq	%rdx, %rax
	movq	%rax, 272(%rsp)
	leaq	(%rsi,%rsi,4), %rax
	movl	192(%rsp), %esi
	addl	%r13d, %esi
	testl	%r13d, %r13d
	cvtsi2ss	%esi, %xmm0
	movl	%esi, 360(%rsp)
	addss	200(%rsp), %xmm0
	movss	%xmm0, 4(%rbx,%rax,4)
	jle	.L2463
	movq	%rdx, 168(%rsp)
.L2553:
	movq	296(%rsp), %rax
	movq	%rbx, %r13
	xorl	%esi, %esi
	movl	$0, 284(%rsp)
	movl	$0, 292(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 224(%rsp)
	addq	$4, %rax
	movq	%rax, 304(%rsp)
	leaq	520(%rsp), %rax
	movq	%rax, 312(%rsp)
	.p2align 4,,10
.L2458:
	movq	296(%rsp), %r8
	pxor	%xmm6, %xmm6
	leaq	.LC96(%rip), %rbp
	xorl	%edx, %edx
	cvtsi2ss	192(%rsp), %xmm6
	movq	168(%rsp), %rcx
	movaps	%xmm6, %xmm8
	addss	200(%rsp), %xmm6
	call	memset
	movq	304(%rsp), %r8
	xorl	%edx, %edx
	addss	%xmm10, %xmm8
	movq	272(%rsp), %rcx
	call	memset
	movq	312(%rsp), %rdi
.L2335:
	testq	%rsi, %rsi
	je	.L2838
	ucomiss	28(%rsi), %xmm8
	movq	(%rsi), %rax
	jb	.L2812
.L2900:
	ucomiss	20(%rsi), %xmm10
	movq	%rax, (%rdi)
	jp	.L2342
	je	.L2813
.L2342:
	movq	112(%rsp), %rax
	movl	$0x00000000, 20(%rsi)
	movq	%rsi, 112(%rsp)
	movq	%rax, (%rsi)
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L2838
	ucomiss	28(%rsi), %xmm8
	movq	(%rsi), %rax
	jnb	.L2900
.L2812:
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	.L2335
.L2622:
	movq	112(%rsp), %rax
	testq	%rax, %rax
	je	.L2347
	.p2align 4,,10
.L2902:
	movss	0(%r13), %xmm3
	movaps	%xmm0, %xmm4
	movq	%rax, %rsi
	movss	8(%r13), %xmm2
	subss	%xmm1, %xmm4
	movq	(%rax), %rax
	subss	%xmm3, %xmm2
	divss	%xmm4, %xmm2
	movq	%rax, 112(%rsp)
.L2348:
	ucomiss	%xmm10, %xmm2
	movss	%xmm2, 12(%rsi)
	jp	.L2542
	pxor	%xmm4, %xmm4
	je	.L2543
.L2542:
	movss	200(%rsp), %xmm4
	divss	%xmm2, %xmm4
.L2543:
	movss	%xmm4, 16(%rsi)
	movaps	%xmm8, %xmm4
	movl	16(%r13), %edi
	subss	%xmm1, %xmm4
	mulss	%xmm4, %xmm2
	testl	%edi, %edi
	addss	%xmm3, %xmm2
	pxor	%xmm3, %xmm3
	cvtsi2ss	288(%rsp), %xmm3
	subss	%xmm3, %xmm2
	movss	%xmm2, 8(%rsi)
	movss	.LC70(%rip), %xmm2
	je	.L2353
	movss	200(%rsp), %xmm2
.L2353:
	ucomiss	%xmm8, %xmm0
	movss	%xmm2, 20(%rsi)
	movss	%xmm1, 24(%rsi)
	movss	%xmm0, 28(%rsi)
	movq	$0, (%rsi)
	jb	.L2814
.L2356:
	movq	520(%rsp), %rax
	movq	%rsi, 520(%rsp)
	movq	%rax, (%rsi)
.L2345:
	addq	$20, %r13
.L2838:
	movss	4(%r13), %xmm1
	ucomiss	%xmm1, %xmm6
	jb	.L2901
	movss	12(%r13), %xmm0
	ucomiss	%xmm1, %xmm0
	jp	.L2622
	je	.L2345
	movq	112(%rsp), %rax
	testq	%rax, %rax
	jne	.L2902
.L2347:
	movl	292(%rsp), %eax
	testl	%eax, %eax
	je	.L2349
	subl	$1, %eax
	movslq	%eax, %rsi
	movl	%eax, 292(%rsp)
	salq	$5, %rsi
	addq	224(%rsp), %rsi
	jne	.L2352
.L2351:
	leaq	.LC2(%rip), %rdx
	movl	$2373, %r8d
	leaq	.LC97(%rip), %rcx
	call	_assert
	jmp	.L2345
	.p2align 4,,10
.L2901:
	movq	520(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L2358
	movq	272(%rsp), %rax
	movq	%rsi, %rbp
	movss	200(%rsp), %xmm15
	addss	%xmm8, %xmm15
	addq	$4, %rax
	movq	%rax, 328(%rsp)
	jmp	.L2452
	.p2align 4,,10
.L2361:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%r14d, %xmm0
	ucomiss	%xmm9, %xmm0
	jbe	.L2386
	ucomiss	%xmm10, %xmm9
	jb	.L2816
	ucomiss	%xmm15, %xmm8
	jp	.L2625
	jne	.L2625
	.p2align 4,,10
.L2386:
	movq	0(%rbp), %rbp
	testq	%rbp, %rbp
	je	.L2903
.L2452:
	movss	28(%rbp), %xmm0
	ucomiss	%xmm8, %xmm0
	jb	.L2815
.L2364:
	movss	12(%rbp), %xmm13
	movss	8(%rbp), %xmm9
	ucomiss	%xmm10, %xmm13
	jp	.L2363
	je	.L2361
.L2363:
	movss	24(%rbp), %xmm12
	movaps	%xmm13, %xmm14
	movss	16(%rbp), %xmm5
	addss	%xmm9, %xmm14
	ucomiss	%xmm12, %xmm15
	movss	%xmm5, 280(%rsp)
	jb	.L2371
	movss	28(%rbp), %xmm7
	ucomiss	%xmm8, %xmm7
	jnb	.L2373
.L2371:
	leaq	.LC2(%rip), %rdx
	movl	$2604, %r8d
	leaq	.LC100(%rip), %rcx
	call	_assert
	movss	24(%rbp), %xmm12
	movss	28(%rbp), %xmm7
.L2373:
	ucomiss	%xmm8, %xmm12
	jbe	.L2817
	movaps	%xmm12, %xmm6
	subss	%xmm8, %xmm6
	mulss	%xmm13, %xmm6
	addss	%xmm9, %xmm6
.L2374:
	ucomiss	%xmm7, %xmm15
	jbe	.L2818
	movaps	%xmm7, %xmm11
	subss	%xmm8, %xmm11
	mulss	%xmm13, %xmm11
	addss	%xmm9, %xmm11
.L2376:
	ucomiss	%xmm10, %xmm6
	jb	.L2378
	ucomiss	%xmm10, %xmm11
	jb	.L2378
	pxor	%xmm0, %xmm0
	cvtsi2ss	%r14d, %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L2378
	ucomiss	%xmm11, %xmm0
	jbe	.L2378
	cvttss2si	%xmm6, %edx
	cvttss2si	%xmm11, %edi
	cmpl	%edi, %edx
	jne	.L2384
	testl	%edi, %edi
	subss	%xmm12, %xmm7
	js	.L2385
	cmpl	%edi, %r14d
	jle	.L2385
.L2387:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%edi, %xmm0
	movaps	%xmm11, %xmm1
	movslq	%edi, %rax
	movq	168(%rsp), %rcx
	salq	$2, %rax
	subss	%xmm0, %xmm1
	subss	%xmm0, %xmm6
	leaq	(%rcx,%rax), %rdx
	addq	328(%rsp), %rax
	movss	200(%rsp), %xmm0
	addss	%xmm1, %xmm6
	movss	.LC1(%rip), %xmm1
	mulss	%xmm6, %xmm1
	subss	%xmm1, %xmm0
	mulss	20(%rbp), %xmm0
	mulss	%xmm7, %xmm0
	addss	(%rdx), %xmm0
	movss	%xmm0, (%rdx)
	mulss	20(%rbp), %xmm7
	movq	0(%rbp), %rbp
	addss	(%rax), %xmm7
	testq	%rbp, %rbp
	movss	%xmm7, (%rax)
	jne	.L2452
	.p2align 4,,10
.L2903:
	testl	%r14d, %r14d
	jle	.L2454
.L2548:
	movslq	284(%rsp), %rcx
	xorl	%edx, %edx
	pxor	%xmm3, %xmm3
	movl	$255, %r8d
	addq	240(%rsp), %rcx
	movq	272(%rsp), %r9
	addq	264(%rsp), %rcx
	movq	168(%rsp), %r10
	movss	.LC1(%rip), %xmm1
	movss	.LC104(%rip), %xmm2
	.p2align 4,,10
.L2456:
	addss	(%r9,%rdx,4), %xmm3
	movss	(%r10,%rdx,4), %xmm0
	addss	%xmm3, %xmm0
	andps	.LC30(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	cmpl	$255, %eax
	cmovg	%r8d, %eax
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpl	%edx, %r14d
	jg	.L2456
	testq	%rsi, %rsi
	je	.L2453
.L2454:
	movq	%rsi, %rax
	.p2align 4,,10
.L2457:
	movss	8(%rax), %xmm0
	addss	12(%rax), %xmm0
	movss	%xmm0, 8(%rax)
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2457
.L2453:
	addl	$1, 192(%rsp)
	movl	128(%rsp), %ecx
	movl	192(%rsp), %eax
	addl	%ecx, 284(%rsp)
	cmpl	360(%rsp), %eax
	jne	.L2458
	cmpq	$0, 224(%rsp)
	je	.L2334
	.p2align 4,,10
.L2459:
	movq	224(%rsp), %rcx
	movq	(%rcx), %rsi
	call	_ZN5ImGui7MemFreeEPv
	testq	%rsi, %rsi
	movq	%rsi, 224(%rsp)
	jne	.L2459
.L2334:
	leaq	752(%rsp), %rax
	cmpq	%rax, 168(%rsp)
	je	.L2463
	movq	168(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
.L2463:
	movq	%rbx, %rcx
	call	_ZN5ImGui7MemFreeEPv
.L2462:
	movq	320(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	352(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	jmp	.L2849
	.p2align 4,,10
.L2378:
	testl	%r14d, %r14d
	jle	.L2386
	xorl	%edi, %edi
	jmp	.L2382
	.p2align 4,,10
.L2904:
	ucomiss	%xmm12, %xmm14
	jbe	.L2821
	ucomiss	%xmm6, %xmm8
	jp	.L2399
	jne	.L2399
	ucomiss	%xmm7, %xmm6
	jp	.L2403
.L2906:
	jne	.L2403
.L2449:
	ucomiss	%xmm7, %xmm15
	jp	.L2448
.L2905:
	jne	.L2448
.L2405:
	cmpl	%r12d, %r14d
	movl	%r12d, %edi
	je	.L2386
.L2382:
	leal	1(%rdi), %r12d
	pxor	%xmm11, %xmm11
	pxor	%xmm12, %xmm12
	cvtsi2ss	%edi, %xmm11
	cvtsi2ss	%r12d, %xmm12
	movaps	%xmm11, %xmm6
	ucomiss	%xmm9, %xmm11
	movaps	%xmm12, %xmm7
	subss	%xmm9, %xmm6
	subss	%xmm9, %xmm7
	divss	%xmm13, %xmm6
	divss	%xmm13, %xmm7
	addss	%xmm8, %xmm6
	addss	%xmm8, %xmm7
	ja	.L2904
	ucomiss	%xmm14, %xmm11
	jbe	.L2426
	ucomiss	%xmm12, %xmm9
	ja	.L2554
	ucomiss	%xmm9, %xmm11
	ja	.L2550
.L2551:
	ucomiss	%xmm11, %xmm9
	jbe	.L2426
.L2860:
	ucomiss	%xmm6, %xmm8
	jp	.L2429
	jne	.L2429
.L2433:
	ucomiss	%xmm6, %xmm15
	jp	.L2432
	je	.L2405
.L2432:
	movss	%xmm15, 48(%rsp)
	movaps	%xmm11, %xmm3
	movq	%rbp, %r8
	movl	%edi, %edx
	movq	168(%rsp), %rcx
	movss	%xmm14, 40(%rsp)
	movss	%xmm6, 32(%rsp)
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2405
	.p2align 4,,10
.L2550:
	ucomiss	%xmm11, %xmm14
	ja	.L2860
	ucomiss	%xmm14, %xmm11
	ja	.L2551
	.p2align 4,,10
.L2426:
	ucomiss	%xmm9, %xmm12
	jbe	.L2434
	ucomiss	%xmm12, %xmm14
	jbe	.L2434
.L2863:
	ucomiss	%xmm7, %xmm8
	jp	.L2445
	je	.L2449
.L2445:
	movss	%xmm7, 48(%rsp)
	movaps	%xmm9, %xmm3
	movq	%rbp, %r8
	movl	%edi, %edx
	movq	168(%rsp), %rcx
	movss	%xmm12, 40(%rsp)
	movss	%xmm8, 32(%rsp)
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	ucomiss	%xmm7, %xmm15
	jnp	.L2905
	.p2align 4,,10
.L2448:
	movss	%xmm15, 48(%rsp)
	movaps	%xmm12, %xmm3
	movq	%rbp, %r8
	movl	%edi, %edx
	movq	168(%rsp), %rcx
	movss	%xmm14, 40(%rsp)
	movss	%xmm7, 32(%rsp)
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2405
	.p2align 4,,10
.L2821:
	ucomiss	%xmm14, %xmm11
	jbe	.L2550
	ucomiss	%xmm12, %xmm9
	jbe	.L2550
.L2554:
	ucomiss	%xmm7, %xmm8
	jp	.L2412
	jne	.L2412
.L2417:
	ucomiss	%xmm7, %xmm6
	jp	.L2416
	je	.L2433
.L2416:
	movss	%xmm6, 48(%rsp)
	movaps	%xmm12, %xmm3
	movq	%rbp, %r8
	movl	%edi, %edx
	movq	168(%rsp), %rcx
	movss	%xmm11, 40(%rsp)
	movss	%xmm7, 32(%rsp)
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2433
	.p2align 4,,10
.L2434:
	ucomiss	%xmm14, %xmm12
	jbe	.L2442
	ucomiss	%xmm12, %xmm9
	ja	.L2863
.L2442:
	ucomiss	%xmm15, %xmm8
	jp	.L2643
	je	.L2405
.L2643:
	movss	%xmm15, 48(%rsp)
	movaps	%xmm9, %xmm3
	movq	%rbp, %r8
	movl	%edi, %edx
	movq	168(%rsp), %rcx
	movss	%xmm14, 40(%rsp)
	movss	%xmm8, 32(%rsp)
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2405
	.p2align 4,,10
.L2815:
	leaq	.LC2(%rip), %rdx
	movl	$2585, %r8d
	leaq	.LC99(%rip), %rcx
	call	_assert
	jmp	.L2364
	.p2align 4,,10
.L2813:
	leaq	.LC2(%rip), %rdx
	movl	$2774, %r8d
	movq	%rbp, %rcx
	call	_assert
	jmp	.L2342
	.p2align 4,,10
.L2818:
	movaps	%xmm15, %xmm7
	movaps	%xmm14, %xmm11
	jmp	.L2376
	.p2align 4,,10
.L2817:
	movaps	%xmm8, %xmm12
	movaps	%xmm9, %xmm6
	jmp	.L2374
	.p2align 4,,10
.L2399:
	movss	%xmm6, 48(%rsp)
	movaps	%xmm9, %xmm3
	movq	%rbp, %r8
	movl	%edi, %edx
	movq	168(%rsp), %rcx
	movss	%xmm11, 40(%rsp)
	movss	%xmm8, 32(%rsp)
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	ucomiss	%xmm7, %xmm6
	jnp	.L2906
	.p2align 4,,10
.L2403:
	movss	%xmm7, 48(%rsp)
	movaps	%xmm11, %xmm3
	movq	%rbp, %r8
	movl	%edi, %edx
	movq	168(%rsp), %rcx
	movss	%xmm12, 40(%rsp)
	movss	%xmm6, 32(%rsp)
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2449
	.p2align 4,,10
.L2429:
	movss	%xmm6, 48(%rsp)
	movaps	%xmm9, %xmm3
	movq	%rbp, %r8
	movl	%edi, %edx
	movq	168(%rsp), %rcx
	movss	%xmm11, 40(%rsp)
	movss	%xmm8, 32(%rsp)
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2433
	.p2align 4,,10
.L2811:
	addq	%rbx, %rax
	cmpl	%edx, %r9d
	je	.L2331
	jmp	.L2329
	.p2align 4,,10
.L2358:
	testl	%r14d, %r14d
	jg	.L2548
	jmp	.L2453
	.p2align 4,,10
.L2814:
	leaq	.LC2(%rip), %rdx
	movl	$2787, %r8d
	leaq	.LC98(%rip), %rcx
	call	_assert
	jmp	.L2356
	.p2align 4,,10
.L2412:
	movss	%xmm7, 48(%rsp)
	movaps	%xmm9, %xmm3
	movq	%rbp, %r8
	movl	%edi, %edx
	movq	168(%rsp), %rcx
	movss	%xmm12, 40(%rsp)
	movss	%xmm8, 32(%rsp)
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2417
.L2349:
	movl	$25608, %ecx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	je	.L2351
	movq	224(%rsp), %rsi
	movq	%rax, 224(%rsp)
	movss	12(%r13), %xmm0
	movl	$799, 292(%rsp)
	movss	4(%r13), %xmm1
	movq	%rsi, (%rax)
	movl	$25568, %esi
	addq	224(%rsp), %rsi
	je	.L2351
.L2352:
	movss	0(%r13), %xmm3
	movaps	%xmm0, %xmm4
	movss	8(%r13), %xmm2
	subss	%xmm1, %xmm4
	subss	%xmm3, %xmm2
	divss	%xmm4, %xmm2
	jmp	.L2348
.L2816:
	ucomiss	%xmm15, %xmm8
	jp	.L2626
	je	.L2386
.L2626:
	movss	%xmm15, 48(%rsp)
	movaps	%xmm9, %xmm3
	movq	%rbp, %r8
	xorl	%edx, %edx
	movq	272(%rsp), %rcx
	movss	%xmm9, 40(%rsp)
	movss	%xmm8, 32(%rsp)
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2386
.L2384:
	ucomiss	%xmm11, %xmm6
	jbe	.L2388
	movaps	%xmm12, %xmm0
	subss	%xmm8, %xmm7
	movl	%edx, %eax
	movss	280(%rsp), %xmm5
	subss	%xmm8, %xmm0
	movaps	%xmm15, %xmm12
	xorps	.LC29(%rip), %xmm5
	movl	%edi, %edx
	movss	%xmm5, 280(%rsp)
	movl	%eax, %edi
	movaps	%xmm14, %xmm9
	subss	%xmm7, %xmm12
	movaps	%xmm15, %xmm7
	subss	%xmm0, %xmm7
	movaps	%xmm6, %xmm0
	movaps	%xmm11, %xmm6
	movaps	%xmm0, %xmm11
.L2388:
	leal	1(%rdx), %ecx
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movss	280(%rsp), %xmm5
	cvtsi2ss	%ecx, %xmm1
	movss	20(%rbp), %xmm13
	movslq	%edx, %rax
	cvtsi2ss	%edx, %xmm0
	movq	168(%rsp), %r11
	salq	$2, %rax
	cmpl	%edi, %ecx
	movss	200(%rsp), %xmm4
	subss	%xmm9, %xmm1
	subss	%xmm0, %xmm6
	leaq	(%r11,%rax), %r8
	mulss	%xmm5, %xmm1
	mulss	%xmm13, %xmm5
	movaps	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	mulss	.LC1(%rip), %xmm0
	addss	%xmm8, %xmm1
	movaps	%xmm5, %xmm2
	subss	%xmm0, %xmm4
	movaps	%xmm1, %xmm9
	subss	%xmm12, %xmm9
	movaps	%xmm4, %xmm0
	mulss	%xmm13, %xmm9
	mulss	%xmm9, %xmm0
	addss	(%r8), %xmm0
	movss	%xmm0, (%r8)
	jge	.L2390
	leal	-2(%rdi), %r8d
	movss	.LC1(%rip), %xmm3
	leaq	4(%r11,%rax), %rax
	movl	%r8d, %r9d
	movslq	%ecx, %r8
	mulss	%xmm5, %xmm3
	subl	%edx, %r9d
	movq	%r9, %rdx
	addq	%r8, %rdx
	leaq	4(%r11,%rdx,4), %rdx
	.p2align 4,,10
.L2391:
	movaps	%xmm3, %xmm0
	addq	$4, %rax
	addss	%xmm9, %xmm0
	addss	-4(%rax), %xmm0
	addss	%xmm2, %xmm9
	movss	%xmm0, -4(%rax)
	cmpq	%rax, %rdx
	jne	.L2391
.L2390:
	movl	%edi, %eax
	movss	.LC102(%rip), %xmm5
	pxor	%xmm6, %xmm6
	movaps	%xmm9, %xmm0
	subl	%ecx, %eax
	andps	.LC30(%rip), %xmm0
	cvtsi2ss	%eax, %xmm6
	mulss	280(%rsp), %xmm6
	ucomiss	%xmm0, %xmm5
	addss	%xmm1, %xmm6
	jb	.L2819
.L2394:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%edi, %xmm0
	movaps	%xmm7, %xmm1
	movslq	%edi, %rax
	subss	%xmm6, %xmm1
	movq	168(%rsp), %rcx
	salq	$2, %rax
	subss	%xmm12, %xmm7
	subss	%xmm0, %xmm11
	movss	200(%rsp), %xmm0
	leaq	(%rcx,%rax), %rdx
	addq	328(%rsp), %rax
	addss	%xmm10, %xmm11
	mulss	%xmm13, %xmm7
	mulss	.LC1(%rip), %xmm11
	subss	%xmm11, %xmm0
	mulss	%xmm13, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm9, %xmm0
	addss	(%rdx), %xmm0
	movss	%xmm0, (%rdx)
	addss	(%rax), %xmm7
	movss	%xmm7, (%rax)
	jmp	.L2386
.L2625:
	cvttss2si	%xmm9, %edi
	movq	168(%rsp), %rcx
	movss	%xmm15, 48(%rsp)
	movaps	%xmm9, %xmm3
	movss	%xmm9, 40(%rsp)
	movq	%rbp, %r8
	movss	%xmm8, 32(%rsp)
	movl	%edi, %edx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	movq	272(%rsp), %rcx
	leal	1(%rdi), %edx
	movss	%xmm15, 48(%rsp)
	movaps	%xmm9, %xmm3
	movss	%xmm9, 40(%rsp)
	movq	%rbp, %r8
	movss	%xmm8, 32(%rsp)
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2386
.L2385:
	leaq	.LC2(%rip), %rdx
	movl	$2632, %r8d
	leaq	.LC101(%rip), %rcx
	call	_assert
	jmp	.L2387
.L2819:
	leaq	.LC2(%rip), %rdx
	movl	$2669, %r8d
	leaq	.LC103(%rip), %rcx
	call	_assert
	jmp	.L2394
.L2899:
	leal	1(%r14,%r14), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	%rax, %rdi
	movq	%rax, 168(%rsp)
	movslq	%r14d, %rax
	movslq	%esi, %rsi
	salq	$2, %rax
	pxor	%xmm0, %xmm0
	addq	%rax, %rdi
	movq	%rax, 296(%rsp)
	leaq	(%rsi,%rsi,4), %rax
	movl	192(%rsp), %esi
	movq	%rdi, 272(%rsp)
	addl	%r13d, %esi
	testl	%r13d, %r13d
	cvtsi2ss	%esi, %xmm0
	movl	%esi, 360(%rsp)
	addss	200(%rsp), %xmm0
	movss	%xmm0, 4(%rbx,%rax,4)
	jg	.L2553
	jmp	.L2334
.L2590:
	movl	%eax, %edi
	jmp	.L2307
.L2880:
	leaq	.LC2(%rip), %rdx
	movl	$3427, %r8d
	leaq	.LC89(%rip), %rcx
	call	_assert
	cmpl	$8, %ebx
	jbe	.L2270
	jmp	.L2547
	.p2align 4,,10
.L2518:
	movq	%rax, %rbx
	movq	136(%rsp), %rax
	pxor	%xmm1, %xmm1
	movss	20(%r15), %xmm0
	movq	(%rax), %r8
	movslq	28(%rax), %rcx
	leaq	4(%r8,%rcx), %rdx
	movzbl	(%rdx), %eax
	leaq	6(%r8,%rcx), %rcx
	movzbl	1(%rdx), %edx
	movl	20(%rdi), %r8d
	sall	$8, %eax
	addl	%eax, %edx
	movzbl	(%rcx), %eax
	movzbl	1(%rcx), %ecx
	movswl	%dx, %edx
	movq	%rbx, 88(%rdi)
	movq	%r15, 80(%rdi)
	sall	$8, %eax
	addl	%ecx, %eax
	movl	%edx, %ecx
	cwtl
	subl	%eax, %ecx
	cvtsi2ss	%ecx, %xmm1
	xorl	%ecx, %ecx
	testl	%r8d, %r8d
	movw	%cx, 78(%rdi)
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	20(%r15), %xmm0
	movss	%xmm0, (%rdi)
	pxor	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 96(%rdi)
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 100(%rdi)
	jns	.L2609
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rdi), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	je	.L2521
	movslq	16(%rdi), %rax
	movq	%rbx, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$3, %r8
	call	memcpy
	movq	24(%rdi), %rdx
.L2521:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movzwl	78(%rdi), %eax
	movq	%rbx, 24(%rdi)
	movl	$0, 20(%rdi)
	addl	$1, %eax
.L2520:
	movl	$0, 16(%rdi)
	movl	$0, 104(%rdi)
	jmp	.L2519
.L2589:
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.L2292
.L2609:
	movl	$1, %eax
	jmp	.L2520
.L2592:
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	jmp	.L2313
.L2875:
	movq	%r12, 160(%rsi)
	xorl	%r9d, %r9d
	movl	$0, 168(%rsi)
	movl	%edi, 176(%rsp)
	jmp	.L2232
.L2223:
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC36(%rip), %rcx
	call	_assert
.LEHE9:
	jmp	.L2225
.L2876:
	movq	%r12, 160(%rsi)
	movl	$0, 168(%rsi)
	movl	%edi, 176(%rsp)
	jmp	.L2232
.L2591:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L2312
.L2213:
	cmpl	$4000, %esi
	jle	.L2907
	movl	$4096, 128(%rsp)
	movl	$65520, %esi
	movl	$4095, %ebx
	movl	128(%rsp), %edi
.L2211:
	movq	1520(%rsp), %rax
	movl	$72, %ecx
	movl	%edi, 24(%rax)
	movl	$0, 28(%rax)
.LEHB10:
	call	_ZN5ImGui8MemAllocEy
	movq	%rsi, %rcx
	movq	%rax, %rdi
	movq	%rax, 368(%rsp)
	call	_ZN5ImGui8MemAllocEy
.LEHE10:
	testq	%rdi, %rdi
	movq	%rax, 376(%rsp)
	je	.L2552
	testq	%rax, %rax
	je	.L2552
.L2218:
	movl	128(%rsp), %esi
	leal	-2(%rsi), %eax
	testl	%eax, %eax
	jle	.L2579
	leal	-3(%rsi), %edx
	cmpl	$4, %edx
	jbe	.L2580
	movq	376(%rsp), %rsi
	movl	%eax, %r8d
	xorl	%ecx, %ecx
	pxor	%xmm5, %xmm5
	movdqa	.LC73(%rip), %xmm2
	shrl	$2, %r8d
	movdqa	.LC87(%rip), %xmm6
	movdqa	.LC88(%rip), %xmm3
	leaq	8(%rsi), %rdx
	movq	%rsi, %xmm4
	punpcklqdq	%xmm4, %xmm4
.L2221:
	movdqa	%xmm5, %xmm0
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm7
	pcmpgtd	%xmm2, %xmm0
	addl	$1, %ecx
	addq	$64, %rdx
	paddd	%xmm6, %xmm2
	punpckldq	%xmm0, %xmm1
	punpckhdq	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	paddq	%xmm3, %xmm1
	paddq	%xmm3, %xmm0
	psllq	$4, %xmm1
	psllq	$4, %xmm0
	paddq	%xmm4, %xmm1
	paddq	%xmm4, %xmm0
	movq	%xmm1, -64(%rdx)
	movhps	%xmm1, -48(%rdx)
	movq	%xmm0, -32(%rdx)
	movhps	%xmm0, -16(%rdx)
	cmpl	%r8d, %ecx
	jb	.L2221
	movl	%eax, %ecx
	andl	$-4, %ecx
	cmpl	%eax, %ecx
	je	.L2222
.L2220:
	movq	376(%rsp), %rsi
	movslq	%ecx, %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	leaq	(%rsi,%rdx), %r8
	movq	%r8, -8(%rsi,%rdx)
	leal	1(%rcx), %r8d
	cmpl	%r8d, %eax
	jle	.L2222
	leaq	16(%rsi,%rdx), %r8
	movq	%r8, 8(%rsi,%rdx)
	leal	2(%rcx), %r8d
	cmpl	%r8d, %eax
	jle	.L2222
	leaq	32(%rsi,%rdx), %r8
	movq	%r8, 24(%rsi,%rdx)
	leal	3(%rcx), %r8d
	cmpl	%r8d, %eax
	jle	.L2222
	leaq	48(%rsi,%rdx), %r8
	addl	$4, %ecx
	cmpl	%ecx, %eax
	movq	%r8, 40(%rsi,%rdx)
	jle	.L2222
	leaq	64(%rsi,%rdx), %rcx
	movq	%rcx, 56(%rsi,%rdx)
.L2222:
	cltq
	salq	$4, %rax
	addq	376(%rsp), %rax
.L2219:
	movq	368(%rsp), %rdi
	movq	$0, 8(%rax)
	movl	$-1, %r9d
	movq	376(%rsp), %rax
	movq	$1, 12(%rdi)
	movq	%rax, 32(%rdi)
	leaq	40(%rdi), %rax
	movq	%rax, 24(%rdi)
	leal	-1(%rbx,%rbx), %eax
	cltd
	movl	%ebx, (%rdi)
	idivl	%ebx
	movl	$32767, 4(%rdi)
	movl	%ebx, 20(%rdi)
	movl	$0, 40(%rdi)
	movw	%bx, 56(%rdi)
	movw	%r9w, 58(%rdi)
	movq	$0, 64(%rdi)
	movl	%eax, 8(%rdi)
	leaq	56(%rdi), %rax
	movq	%rax, 48(%rdi)
	jmp	.L2217
.L2907:
	cmpl	$2000, %esi
	jle	.L2908
	movl	$2048, 128(%rsp)
	movl	$32752, %esi
	movl	$2047, %ebx
	movl	128(%rsp), %edi
	jmp	.L2211
.L2870:
	movl	%eax, %eax
	leaq	4(%rbx,%rax), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %edx
	addl	%eax, %edx
	movzwl	%dx, %edx
	jmp	.L2198
.L2908:
	cmpl	$1001, %esi
	movl	$16368, %eax
	movl	$8176, %esi
	cmovge	%rax, %rsi
	movl	$511, %ebx
	movl	$1023, %eax
	cmovge	%eax, %ebx
	movl	$512, %edx
	movl	$1024, %eax
	cmovl	%edx, %eax
	movl	%eax, 128(%rsp)
	movl	%eax, %edi
	jmp	.L2211
.L2230:
	movl	152(%rsp), %eax
	movl	$0, 168(%rsp)
	testl	%eax, %eax
	je	.L2264
	movl	$0, 164(%rsp)
	jmp	.L2545
	.p2align 4,,10
.L2178:
	movl	32(%rbx), %eax
	testl	%eax, %eax
	movl	%eax, 128(%rsp)
	jle	.L2575
	movl	$0, 192(%rsp)
	leal	-1(%rax), %ebx
	movl	%eax, %edi
	movl	$0, 152(%rsp)
	movslq	%ebx, %rsi
	salq	$4, %rsi
	jmp	.L2212
.L2186:
	testb	%al, %al
	jne	.L2570
	cmpb	$1, 1(%rbx)
	jne	.L2570
	jmp	.L2857
.L2575:
	movl	$512, 128(%rsp)
	movl	$8176, %esi
	movl	$511, %ebx
	movl	128(%rsp), %edi
	movl	$0, 192(%rsp)
	movl	$0, 152(%rsp)
	jmp	.L2211
.L2874:
	addq	688(%rsp), %rax
	movl	%r9d, 144(%rsp)
	jmp	.L2197
.L2614:
	movq	552(%rsp), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L2540
	call	_ZN5ImGui7MemFreeEPv
.L2540:
	movq	%rbx, %rcx
.LEHB11:
	call	_Unwind_Resume
.LEHE11:
.L2580:
	xorl	%ecx, %ecx
	jmp	.L2220
.L2579:
	movq	376(%rsp), %rax
	jmp	.L2219
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA745:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE745-.LLSDACSB745
.LLSDACSB745:
	.uleb128 .LEHB7-.LFB745
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB745
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L2614-.LFB745
	.uleb128 0
	.uleb128 .LEHB9-.LFB745
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L2614-.LFB745
	.uleb128 0
	.uleb128 .LEHB10-.LFB745
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB745
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE745:
	.text
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas18GetTexDataAsAlpha8EPPhPiS2_S2_
	.def	_ZN11ImFontAtlas18GetTexDataAsAlpha8EPPhPiS2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas18GetTexDataAsAlpha8EPPhPiS2_S2_
_ZN11ImFontAtlas18GetTexDataAsAlpha8EPPhPiS2_S2_:
.LFB735:
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
	movq	8(%rcx), %rax
	movq	256(%rsp), %rsi
	testq	%rax, %rax
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%r9, %rdi
	je	.L2924
.L2910:
	testq	%r8, %r8
	movq	%rax, 0(%rbp)
	je	.L2912
	movl	24(%rbx), %eax
	movl	%eax, (%r8)
.L2912:
	testq	%rdi, %rdi
	je	.L2913
	movl	28(%rbx), %eax
	movl	%eax, (%rdi)
.L2913:
	testq	%rsi, %rsi
	je	.L2909
	movl	$1, (%rsi)
.L2909:
	addq	$184, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L2924:
	movl	64(%rcx), %ecx
	testl	%ecx, %ecx
	je	.L2925
.L2911:
	movq	%rbx, %rcx
	movq	%r8, 56(%rsp)
	call	_ZN11ImFontAtlas5BuildEv
	movq	8(%rbx), %rax
	movq	56(%rsp), %r8
	jmp	.L2910
	.p2align 4,,10
.L2925:
	leaq	64(%rsp), %r9
	xorl	%eax, %eax
	movq	%rbx, %rcx
	movq	%r8, 56(%rsp)
	movabsq	$7801212464559780432, %rdx
	movss	.LC50(%rip), %xmm2
	movq	$0, 151(%rsp)
	movq	%rdx, 129(%rsp)
	movabsq	$3199372627637330277, %rdx
	movq	$0, 168(%rsp)
	movq	%rdx, 73(%r9)
	movl	$120, %edx
	movw	%ax, 95(%r9)
	leaq	_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges(%rip), %rax
	movw	%dx, 85(%r9)
	leaq	_ZL39proggy_clean_ttf_compressed_data_base85(%rip), %rdx
	movl	$1882403104, 81(%r9)
	movq	%rax, 32(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 72(%rsp)
	movb	$1, 76(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 92(%rsp)
	movq	$0, 100(%rsp)
	movq	$0, 108(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movl	$1, 88(%rsp)
	movb	$1, 96(%rsp)
	call	_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt
	movq	56(%rsp), %r8
	jmp	.L2911
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas18GetTexDataAsRGBA32EPPhPiS2_S2_
	.def	_ZN11ImFontAtlas18GetTexDataAsRGBA32EPPhPiS2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas18GetTexDataAsRGBA32EPPhPiS2_S2_
_ZN11ImFontAtlas18GetTexDataAsRGBA32EPPhPiS2_S2_:
.LFB736:
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
	movq	16(%rcx), %rax
	movq	288(%rsp), %rsi
	testq	%rax, %rax
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%r9, %rdi
	je	.L2964
.L2927:
	testq	%r8, %r8
	movq	%rax, 0(%rbp)
	je	.L2938
	movl	24(%rbx), %eax
	movl	%eax, (%r8)
.L2938:
	testq	%rdi, %rdi
	je	.L2939
	movl	28(%rbx), %eax
	movl	%eax, (%rdi)
.L2939:
	testq	%rsi, %rsi
	je	.L2926
	movl	$4, (%rsi)
.L2926:
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
.L2964:
	movq	8(%rcx), %r12
	testq	%r12, %r12
	je	.L2965
.L2928:
	movl	24(%rbx), %ecx
	movq	%r8, 56(%rsp)
	imull	28(%rbx), %ecx
	sall	$2, %ecx
	movslq	%ecx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movl	24(%rbx), %edx
	imull	28(%rbx), %edx
	movq	%rax, 16(%rbx)
	movq	56(%rsp), %r8
	testl	%edx, %edx
	jle	.L2927
	movslq	%edx, %rcx
	leaq	(%rax,%rcx,4), %r9
	cmpq	%r9, %r12
	setnb	%r9b
	addq	%r12, %rcx
	cmpq	%rcx, %rax
	setnb	%cl
	orb	%cl, %r9b
	je	.L2930
	cmpl	$19, %edx
	jbe	.L2930
	leal	-1(%rdx), %r11d
	movq	%rax, %r9
	shrq	$2, %r9
	negq	%r9
	andl	$3, %r9d
	je	.L2941
	movzbl	(%r12), %ecx
	leaq	1(%r12), %r13
	leaq	4(%rax), %r14
	sall	$24, %ecx
	orl	$16777215, %ecx
	cmpl	$1, %r9d
	movl	%ecx, (%rax)
	je	.L2931
	movzbl	1(%r12), %ecx
	leaq	2(%r12), %r13
	leaq	8(%rax), %r14
	leal	-2(%rdx), %r11d
	sall	$24, %ecx
	orl	$16777215, %ecx
	cmpl	$2, %r9d
	movl	%ecx, 4(%rax)
	je	.L2931
	movzbl	2(%r12), %ecx
	leaq	3(%r12), %r13
	leaq	12(%rax), %r14
	leal	-3(%rdx), %r11d
	sall	$24, %ecx
	orl	$16777215, %ecx
	movl	%ecx, 8(%rax)
.L2931:
	subl	%r9d, %edx
	movl	%r9d, %ecx
	pxor	%xmm5, %xmm5
	pxor	%xmm3, %xmm3
	movl	%edx, %r15d
	movdqa	.LC108(%rip), %xmm4
	movl	%edx, %r10d
	leaq	(%r12,%rcx), %r9
	shrl	$4, %r15d
	leaq	(%rax,%rcx,4), %rdx
	xorl	%ecx, %ecx
	.p2align 4,,10
.L2933:
	movdqu	(%r9), %xmm0
	addl	$1, %ecx
	addq	$16, %r9
	addq	$64, %rdx
	movdqa	%xmm0, %xmm1
	punpckhbw	%xmm5, %xmm0
	punpcklbw	%xmm5, %xmm1
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm1
	pslld	$24, %xmm1
	por	%xmm4, %xmm1
	movaps	%xmm1, -48(%rdx)
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm3, %xmm2
	punpcklwd	%xmm3, %xmm1
	pslld	$24, %xmm2
	punpckhwd	%xmm3, %xmm0
	pslld	$24, %xmm1
	por	%xmm4, %xmm2
	movaps	%xmm2, -64(%rdx)
	pslld	$24, %xmm0
	por	%xmm4, %xmm1
	movaps	%xmm1, -32(%rdx)
	por	%xmm4, %xmm0
	movaps	%xmm0, -16(%rdx)
	cmpl	%ecx, %r15d
	ja	.L2933
	movl	%r10d, %edx
	andl	$-16, %edx
	movl	%edx, %ecx
	subl	%edx, %r11d
	leaq	(%r14,%rcx,4), %r9
	addq	%rcx, %r13
	cmpl	%edx, %r10d
	je	.L2927
	xorl	%ecx, %ecx
	.p2align 4,,10
.L2935:
	movzbl	0(%r13,%rcx), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, (%r9,%rcx,4)
	addq	$1, %rcx
	movl	%r11d, %edx
	subl	%ecx, %edx
	testl	%edx, %edx
	jg	.L2935
	jmp	.L2927
	.p2align 4,,10
.L2965:
	movl	64(%rcx), %ecx
	testl	%ecx, %ecx
	je	.L2966
.L2929:
	movq	%rbx, %rcx
	movq	%r8, 56(%rsp)
	call	_ZN11ImFontAtlas5BuildEv
	movq	8(%rbx), %r12
	movq	56(%rsp), %r8
	jmp	.L2928
	.p2align 4,,10
.L2966:
	leaq	64(%rsp), %r9
	xorl	%eax, %eax
	movabsq	$7801212464559780432, %rcx
	movq	$0, 151(%rsp)
	movq	%rcx, 129(%rsp)
	movl	$120, %edx
	movabsq	$3199372627637330277, %rcx
	movss	.LC50(%rip), %xmm2
	movq	$0, 168(%rsp)
	movw	%ax, 95(%r9)
	leaq	_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges(%rip), %rax
	movq	%rcx, 73(%r9)
	movq	%rbx, %rcx
	movw	%dx, 85(%r9)
	leaq	_ZL39proggy_clean_ttf_compressed_data_base85(%rip), %rdx
	movl	$1882403104, 81(%r9)
	movq	%rax, 32(%rsp)
	movq	%r8, 56(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 72(%rsp)
	movb	$1, 76(%rsp)
	movq	$0, 80(%rsp)
	movl	$1, 92(%rsp)
	movq	$0, 100(%rsp)
	movq	$0, 108(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movl	$1, 88(%rsp)
	movb	$1, 96(%rsp)
	call	_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt
	movq	56(%rsp), %r8
	jmp	.L2929
	.p2align 4,,10
.L2930:
	leal	-1(%rdx), %r9d
	xorl	%ecx, %ecx
	addq	$1, %r9
	.p2align 4,,10
.L2937:
	movzbl	(%r12,%rcx), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, (%rax,%rcx,4)
	addq	$1, %rcx
	cmpq	%r9, %rcx
	jne	.L2937
	jmp	.L2927
.L2941:
	movl	%edx, %r11d
	movq	%rax, %r14
	movq	%r12, %r13
	jmp	.L2931
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN6ImFont15SetFallbackCharEt
	.def	_ZN6ImFont15SetFallbackCharEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6ImFont15SetFallbackCharEt
_ZN6ImFont15SetFallbackCharEt:
.LFB761:
	.seh_endprologue
	movw	%dx, 76(%rcx)
	jmp	_ZN6ImFont16BuildLookupTableEv
	.seh_endproc
	.section .rdata,"dr"
.LC109:
	.ascii "IndexLookup.Size > 0\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6ImFont12AddRemapCharEttb
	.def	_ZN6ImFont12AddRemapCharEttb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6ImFont12AddRemapCharEttb
_ZN6ImFont12AddRemapCharEttb:
.LFB763:
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
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movl	48(%rcx), %ebp
	testl	%ebp, %ebp
	movq	%rcx, %rsi
	movl	%edx, %ebx
	movl	%r8d, %edi
	movzwl	%dx, %r12d
	movzwl	%r8w, %r13d
	jle	.L2981
.L2969:
	movzwl	%bx, %ebx
	cmpl	%ebp, %ebx
	jge	.L2970
	movq	56(%rsi), %rax
	leaq	(%r12,%r12), %r14
	cmpw	$-1, (%rax,%r12,2)
	je	.L2982
	movzwl	%di, %edi
	cmpl	%ebp, %edi
	jl	.L2975
.L2974:
	leal	1(%rbx), %edx
	movq	%rsi, %rcx
	movl	$-1, %r15d
	call	_ZN6ImFont9GrowIndexEi
	cmpl	48(%rsi), %ebx
	jge	.L2983
.L2976:
	movq	56(%rsi), %rax
	cmpl	%edi, %ebp
	movss	.LC18(%rip), %xmm6
	movw	%r15w, (%rax,%r14)
	jle	.L2977
	movq	40(%rsi), %rax
	movss	(%rax,%r13,4), %xmm6
.L2977:
	cmpl	32(%rsi), %ebx
	jge	.L2984
.L2978:
	movq	40(%rsi), %rax
	movss	%xmm6, (%rax,%r12,4)
.L2968:
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
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
.L2970:
	movzwl	%di, %edi
	cmpl	%edi, %ebp
	jle	.L2968
	leaq	(%r12,%r12), %r14
.L2975:
	leal	1(%rbx), %edx
	movq	%rsi, %rcx
	call	_ZN6ImFont9GrowIndexEi
	movq	56(%rsi), %rdx
	movzwl	%r13w, %eax
	cmpl	48(%rsi), %ebx
	movzwl	(%rdx,%rax,2), %r15d
	jl	.L2976
.L2983:
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC36(%rip), %rcx
	call	_assert
	jmp	.L2976
	.p2align 4,,10
.L2981:
	movl	$1794, %r8d
	movl	%r9d, 44(%rsp)
	leaq	.LC6(%rip), %rdx
	leaq	.LC109(%rip), %rcx
	call	_assert
	movl	48(%rsi), %ebp
	movl	44(%rsp), %r9d
	jmp	.L2969
	.p2align 4,,10
.L2984:
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC36(%rip), %rcx
	call	_assert
	jmp	.L2978
	.p2align 4,,10
.L2982:
	testb	%r9b, %r9b
	je	.L2968
	movzwl	%di, %edi
	cmpl	%edi, %ebp
	jle	.L2974
	jmp	.L2975
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK6ImFont9FindGlyphEt
	.def	_ZNK6ImFont9FindGlyphEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6ImFont9FindGlyphEt
_ZNK6ImFont9FindGlyphEt:
.LFB764:
	.seh_endprologue
	movzwl	%dx, %eax
	movzwl	%dx, %edx
	cmpl	48(%rcx), %edx
	jge	.L2986
	movq	56(%rcx), %rdx
	movzwl	(%rdx,%rax,2), %eax
	cmpw	$-1, %ax
	je	.L2986
	leaq	(%rax,%rax,4), %rdx
	movq	24(%rcx), %rax
	leaq	(%rax,%rdx,8), %rax
	ret
	.p2align 4,,10
.L2986:
	movq	64(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f
	.def	_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f
_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f:
.LFB765:
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
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	movaps	%xmm8, 80(%rsp)
	.seh_savexmm	%xmm8, 80
	movaps	%xmm9, 96(%rsp)
	.seh_savexmm	%xmm9, 96
	movaps	%xmm10, 112(%rsp)
	.seh_savexmm	%xmm10, 112
	movaps	%xmm11, 128(%rsp)
	.seh_savexmm	%xmm11, 128
	.seh_endprologue
	movss	256(%rsp), %xmm10
	cmpq	%r9, %r8
	movq	%rcx, %r13
	movaps	%xmm1, %xmm11
	movq	%r8, %r14
	movq	%r9, %r15
	jnb	.L3011
	movq	%r8, %rbx
	movl	$1, %esi
	xorl	%r12d, %r12d
	pxor	%xmm7, %xmm7
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	leaq	44(%rsp), %rdi
	movabsq	$-8646823297851326464, %rbp
	jmp	.L2993
	.p2align 4,,10
.L3031:
	movq	40(%r13), %r8
	movslq	%ecx, %rdx
	movss	(%r8,%rdx,4), %xmm0
.L3000:
	mulss	%xmm11, %xmm0
	cmpl	$32, %ecx
	sete	%r8b
	cmpl	$9, %ecx
	sete	%dl
	orb	%dl, %r8b
	jne	.L3001
	cmpl	$12288, %ecx
	je	.L3001
	testb	%sil, %sil
	addss	%xmm0, %xmm6
	je	.L3028
	movq	%rax, %r14
.L3002:
	cmpl	$63, %ecx
	movl	$1, %esi
	ja	.L3005
	movq	%rbp, %rsi
	shrq	%cl, %rsi
	notq	%rsi
	andl	$1, %esi
.L3005:
	movaps	%xmm8, %xmm0
	addss	%xmm6, %xmm0
	ucomiss	%xmm10, %xmm0
	jnb	.L3029
.L3010:
	cmpq	%r15, %rax
	movq	%rax, %rbx
	jnb	.L2991
.L2993:
	movsbl	(%rbx), %ecx
	leaq	1(%rbx), %rax
	cmpl	$127, %ecx
	movl	%ecx, 44(%rsp)
	ja	.L3030
.L2995:
	testl	%ecx, %ecx
	je	.L2996
	cmpl	$31, %ecx
	ja	.L2997
	cmpl	$10, %ecx
	je	.L3012
	cmpl	$13, %ecx
	je	.L3010
.L2997:
	cmpl	%ecx, 32(%r13)
	jg	.L3031
	movss	72(%r13), %xmm0
	jmp	.L3000
	.p2align 4,,10
.L3001:
	testb	%sil, %sil
	je	.L3004
	movq	%rbx, %r14
	addss	%xmm7, %xmm8
	pxor	%xmm7, %xmm7
.L3004:
	addss	%xmm0, %xmm7
	movaps	%xmm8, %xmm0
	xorl	%esi, %esi
	addss	%xmm6, %xmm0
	ucomiss	%xmm10, %xmm0
	jb	.L3010
.L3029:
	ucomiss	%xmm6, %xmm10
	jbe	.L2996
	testq	%r12, %r12
	movq	%r12, %rbx
	cmove	%r14, %rbx
.L2996:
	movq	%rbx, %rax
.L2991:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	movaps	96(%rsp), %xmm9
	movaps	112(%rsp), %xmm10
	movaps	128(%rsp), %xmm11
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
	.p2align 4,,10
.L3030:
	movq	%rdi, %rcx
	movq	%r15, %r8
	movq	%rbx, %rdx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	movl	44(%rsp), %ecx
	cltq
	addq	%rbx, %rax
	jmp	.L2995
	.p2align 4,,10
.L3028:
	addss	%xmm7, %xmm6
	movq	%r14, %r12
	pxor	%xmm7, %xmm7
	addss	%xmm6, %xmm8
	pxor	%xmm6, %xmm6
	jmp	.L3002
	.p2align 4,,10
.L3012:
	movl	$1, %esi
	pxor	%xmm7, %xmm7
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	jmp	.L3010
.L3011:
	movq	%r8, %rax
	jmp	.L2991
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
	.def	_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_:
.LFB766:
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
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	movaps	%xmm9, 112(%rsp)
	.seh_savexmm	%xmm9, 112
	movaps	%xmm10, 128(%rsp)
	.seh_savexmm	%xmm10, 128
	movaps	%xmm11, 144(%rsp)
	.seh_savexmm	%xmm11, 144
	movaps	%xmm12, 160(%rsp)
	.seh_savexmm	%xmm12, 160
	movaps	%xmm13, 176(%rsp)
	.seh_savexmm	%xmm13, 176
	.seh_endprologue
	movq	296(%rsp), %rbp
	movq	288(%rsp), %rbx
	movq	304(%rsp), %rdi
	testq	%rbp, %rbp
	movq	%rcx, %r12
	movaps	%xmm1, %xmm12
	movaps	%xmm2, %xmm11
	movaps	%xmm3, %xmm10
	je	.L3078
.L3033:
	cmpq	%rbx, %rbp
	movaps	%xmm12, %xmm13
	divss	(%r12), %xmm13
	jbe	.L3060
	pxor	%xmm7, %xmm7
	pxor	%xmm8, %xmm8
	pxor	%xmm9, %xmm9
	xorl	%r13d, %r13d
	pxor	%xmm6, %xmm6
	leaq	60(%rsp), %rsi
	jmp	.L3035
	.p2align 4,,10
.L3083:
	movq	40(%r12), %rcx
	movss	(%rcx,%rdx,4), %xmm0
	mulss	%xmm13, %xmm0
	addss	%xmm6, %xmm0
	ucomiss	%xmm11, %xmm0
	jnb	.L3036
.L3084:
	movq	%rax, %rbx
	movaps	%xmm0, %xmm6
.L3055:
	cmpq	%rbp, %rbx
	jnb	.L3036
.L3035:
	ucomiss	%xmm7, %xmm10
	jbe	.L3037
	testq	%r13, %r13
	je	.L3079
.L3039:
	cmpq	%rbx, %r13
	jbe	.L3080
.L3037:
	movsbq	(%rbx), %rdx
	leaq	1(%rbx), %rax
	cmpl	$127, %edx
	movl	%edx, 60(%rsp)
	ja	.L3081
.L3047:
	cmpl	$31, %edx
	ja	.L3049
	cmpl	$10, %edx
	je	.L3082
	cmpl	$13, %edx
	je	.L3066
.L3049:
	cmpl	%edx, 32(%r12)
	jg	.L3083
	movss	72(%r12), %xmm0
	mulss	%xmm13, %xmm0
	addss	%xmm6, %xmm0
	ucomiss	%xmm11, %xmm0
	jb	.L3084
	.p2align 4,,10
.L3036:
	movaps	%xmm6, %xmm4
	ucomiss	%xmm7, %xmm6
	maxss	%xmm8, %xmm4
	movaps	%xmm4, %xmm8
	jbe	.L3085
.L3034:
	addss	%xmm12, %xmm9
.L3057:
	testq	%rdi, %rdi
	je	.L3059
	movq	%rbx, (%rdi)
.L3059:
	movd	%xmm9, %eax
	movd	%xmm8, %edx
	movaps	64(%rsp), %xmm6
	movq	%rax, %rcx
	movaps	80(%rsp), %xmm7
	movl	%edx, %eax
	salq	$32, %rcx
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
	orq	%rcx, %rax
	movaps	128(%rsp), %xmm10
	movaps	144(%rsp), %xmm11
	movaps	160(%rsp), %xmm12
	movaps	176(%rsp), %xmm13
	addq	$200, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L3081:
	movq	%rbx, %rdx
	movq	%rbp, %r8
	movq	%rsi, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	movslq	60(%rsp), %rdx
	cltq
	addq	%rbx, %rax
	testl	%edx, %edx
	jne	.L3047
	movq	%rax, %rbx
	jmp	.L3036
	.p2align 4,,10
.L3080:
	maxss	%xmm8, %xmm6
	cmpq	%rbx, %rbp
	addss	%xmm12, %xmm9
	movaps	%xmm6, %xmm8
	jbe	.L3063
	movsbl	(%rbx), %eax
	cmpl	$32, %eax
	movl	%eax, %edx
	je	.L3074
	cmpl	$9, %eax
	jne	.L3043
	.p2align 4,,10
.L3074:
	addq	$1, %rbx
	cmpq	%rbx, %rbp
	je	.L3063
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	je	.L3074
	cmpl	$32, %eax
	je	.L3074
.L3043:
	xorl	%r13d, %r13d
	cmpb	$10, %dl
	pxor	%xmm6, %xmm6
	jne	.L3055
	addq	$1, %rbx
	jmp	.L3055
	.p2align 4,,10
.L3079:
	movaps	%xmm10, %xmm0
	movq	%rbp, %r9
	movq	%rbx, %r8
	subss	%xmm6, %xmm0
	movaps	%xmm13, %xmm1
	movq	%r12, %rcx
	movss	%xmm0, 32(%rsp)
	call	_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f
	movq	%rax, %r13
	xorl	%eax, %eax
	cmpq	%rbx, %r13
	sete	%al
	addq	%rax, %r13
	jmp	.L3039
	.p2align 4,,10
.L3082:
	ucomiss	%xmm6, %xmm8
	jb	.L3051
	movaps	%xmm8, %xmm6
.L3051:
	movaps	%xmm6, %xmm8
	addss	%xmm12, %xmm9
	movq	%rax, %rbx
	pxor	%xmm6, %xmm6
	jmp	.L3055
	.p2align 4,,10
.L3066:
	movq	%rax, %rbx
	jmp	.L3055
	.p2align 4,,10
.L3063:
	xorl	%r13d, %r13d
	pxor	%xmm6, %xmm6
	jmp	.L3055
	.p2align 4,,10
.L3085:
	ucomiss	%xmm7, %xmm9
	jp	.L3057
	jne	.L3057
	jmp	.L3034
	.p2align 4,,10
.L3078:
	movq	%rbx, %rcx
	call	strlen
	leaq	(%rbx,%rax), %rbp
	jmp	.L3033
.L3060:
	pxor	%xmm9, %xmm9
	pxor	%xmm8, %xmm8
	jmp	.L3034
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt
	.def	_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt
_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt:
.LFB767:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movl	168(%rsp), %eax
	cmpw	$32, %ax
	movzwl	%ax, %r8d
	movq	%rdx, %rbx
	movzwl	%ax, %eax
	jbe	.L3105
.L3087:
	cmpl	48(%rcx), %eax
	jl	.L3107
.L3089:
	movq	64(%rcx), %rsi
.L3090:
	testq	%rsi, %rsi
	je	.L3086
	ucomiss	.LC5(%rip), %xmm2
	jb	.L3106
	divss	(%rcx), %xmm2
.L3091:
	movl	%r9d, 60(%rsp)
	shrq	$32, %r9
	movss	12(%rsi), %xmm3
	pxor	%xmm0, %xmm0
	movd	%r9d, %xmm5
	cvttss2si	60(%rsp), %eax
	pxor	%xmm1, %xmm1
	movl	$4, %r8d
	cvttss2si	%xmm5, %r9d
	mulss	%xmm2, %xmm3
	movss	8(%rsi), %xmm4
	movl	$6, %edx
	mulss	%xmm2, %xmm4
	cvtsi2ss	%eax, %xmm1
	cvtsi2ss	%r9d, %xmm0
	addss	12(%rcx), %xmm0
	addss	8(%rcx), %xmm1
	movq	%rbx, %rcx
	addss	%xmm0, %xmm3
	addss	%xmm1, %xmm4
	movss	%xmm3, 68(%rsp)
	movss	20(%rsi), %xmm3
	movss	%xmm4, 64(%rsp)
	mulss	%xmm2, %xmm3
	mulss	16(%rsi), %xmm2
	addss	%xmm3, %xmm0
	addss	%xmm1, %xmm2
	movss	%xmm0, 76(%rsp)
	movss	%xmm2, 72(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movl	160(%rsp), %eax
	leaq	64(%rsp), %rdx
	movq	%rbx, %rcx
	movss	36(%rsi), %xmm0
	leaq	80(%rsp), %r9
	movss	32(%rsi), %xmm1
	leaq	72(%rsp), %r8
	movss	%xmm0, 92(%rsp)
	movss	28(%rsi), %xmm0
	movss	%xmm1, 88(%rsp)
	movss	24(%rsi), %xmm1
	movl	%eax, 40(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 32(%rsp)
	movss	%xmm1, 80(%rsp)
	movss	%xmm0, 84(%rsp)
	call	_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3105:
	movabsq	$4294977024, %rdx
	btq	%rax, %rdx
	jnc	.L3087
.L3086:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3107:
	movq	56(%rcx), %rax
	movzwl	(%rax,%r8,2), %eax
	cmpw	$-1, %ax
	je	.L3089
	leaq	(%rax,%rax,4), %rdx
	movq	24(%rcx), %rax
	leaq	(%rax,%rdx,8), %rsi
	jmp	.L3090
	.p2align 4,,10
.L3106:
	movss	.LC18(%rip), %xmm2
	jmp	.L3091
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb
	.def	_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb
_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb:
.LFB768:
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
	movzbl	408(%rsp), %eax
	movq	392(%rsp), %rsi
	movq	376(%rsp), %r12
	movq	384(%rsp), %rbx
	movb	%al, 75(%rsp)
	movq	%r9, %rax
	movq	%rcx, %rbp
	movq	%rdx, %rdi
	movss	400(%rsp), %xmm9
	shrq	$32, %rax
	testq	%rsi, %rsi
	movd	%eax, %xmm6
	je	.L3228
.L3109:
	cvttss2si	%xmm6, %eax
	pxor	%xmm6, %xmm6
	cvtsi2ss	%eax, %xmm6
	addss	12(%rbp), %xmm6
	ucomiss	12(%r12), %xmm6
	ja	.L3108
	movss	0(%rbp), %xmm12
	pxor	%xmm10, %xmm10
	ucomiss	%xmm10, %xmm9
	movl	%r9d, 56(%rsp)
	movss	8(%rbp), %xmm7
	divss	%xmm12, %xmm2
	mulss	%xmm2, %xmm12
	movaps	%xmm2, %xmm8
	jbe	.L3229
.L3111:
	movl	16(%rdi), %eax
	movq	%rsi, %r8
	movq	%rdi, %rcx
	subq	%rbx, %r8
	leal	(%r8,%r8,2), %edx
	sall	$2, %r8d
	addl	%edx, %edx
	addl	%edx, %eax
	movl	%eax, 64(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movl	56(%rdi), %eax
	cmpq	%rbx, %rsi
	movq	64(%rdi), %r15
	movq	72(%rdi), %r13
	movl	%eax, 76(%rsp)
	jbe	.L3117
.L3118:
	cvttss2si	56(%rsp), %eax
	pxor	%xmm11, %xmm11
	xorl	%r14d, %r14d
	movq	%rbp, 336(%rsp)
	movq	%r14, %rbp
	movq	336(%rsp), %r14
	cvtsi2ss	%eax, %xmm11
	leaq	92(%rsp), %rax
	movq	%rax, 56(%rsp)
	addss	%xmm7, %xmm11
	movaps	%xmm11, %xmm7
	.p2align 4,,10
.L3119:
	ucomiss	%xmm10, %xmm9
	jbe	.L3120
	testq	%rbp, %rbp
	je	.L3230
.L3122:
	cmpq	%rbx, %rbp
	jbe	.L3231
.L3120:
	movsbl	(%rbx), %eax
	cmpl	$127, %eax
	movl	%eax, 92(%rsp)
	ja	.L3128
	addq	$1, %rbx
.L3129:
	cmpl	$31, %eax
	ja	.L3131
	cmpl	$10, %eax
	je	.L3232
	cmpl	$13, %eax
	je	.L3151
.L3131:
	movzwl	%ax, %edx
	cmpl	48(%r14), %edx
	jge	.L3136
	movq	56(%r14), %rcx
	movzwl	%ax, %edx
	movzwl	(%rcx,%rdx,2), %edx
	cmpw	$-1, %dx
	je	.L3136
	leaq	(%rdx,%rdx,4), %rcx
	movq	24(%r14), %rdx
	leaq	(%rdx,%rcx,8), %rdx
	testq	%rdx, %rdx
	je	.L3233
.L3138:
	movss	4(%rdx), %xmm0
	cmpl	$32, %eax
	mulss	%xmm8, %xmm0
	addss	%xmm7, %xmm0
	je	.L3139
	cmpl	$9, %eax
	je	.L3139
	movss	8(%rdx), %xmm1
	movss	8(%r12), %xmm3
	mulss	%xmm8, %xmm1
	addss	%xmm7, %xmm1
	ucomiss	%xmm1, %xmm3
	jb	.L3139
	movss	16(%rdx), %xmm2
	mulss	%xmm8, %xmm2
	addss	%xmm7, %xmm2
	movss	(%r12), %xmm7
	ucomiss	%xmm7, %xmm2
	jb	.L3139
	movss	12(%rdx), %xmm5
	movss	20(%rdx), %xmm4
	mulss	%xmm8, %xmm5
	cmpb	$0, 75(%rsp)
	movss	24(%rdx), %xmm13
	mulss	%xmm8, %xmm4
	movss	28(%rdx), %xmm14
	movl	32(%rdx), %eax
	addss	%xmm6, %xmm5
	movl	36(%rdx), %r11d
	addss	%xmm6, %xmm4
	je	.L3142
	ucomiss	%xmm1, %xmm7
	jbe	.L3143
	movaps	%xmm2, %xmm15
	subss	%xmm7, %xmm15
	movd	%xmm15, %edx
	movaps	%xmm2, %xmm15
	subss	%xmm1, %xmm15
	movaps	%xmm15, %xmm1
	movd	%edx, %xmm15
	divss	%xmm1, %xmm15
	movaps	%xmm15, %xmm1
	movss	.LC18(%rip), %xmm15
	subss	%xmm1, %xmm15
	movd	%eax, %xmm1
	subss	%xmm13, %xmm1
	mulss	%xmm15, %xmm1
	addss	%xmm1, %xmm13
	movaps	%xmm7, %xmm1
.L3143:
	movss	4(%r12), %xmm7
	ucomiss	%xmm5, %xmm7
	jbe	.L3145
	movaps	%xmm4, %xmm15
	subss	%xmm7, %xmm15
	movd	%xmm15, %edx
	movaps	%xmm4, %xmm15
	subss	%xmm5, %xmm15
	movaps	%xmm15, %xmm5
	movd	%edx, %xmm15
	divss	%xmm5, %xmm15
	movaps	%xmm15, %xmm5
	movss	.LC18(%rip), %xmm15
	subss	%xmm5, %xmm15
	movd	%r11d, %xmm5
	subss	%xmm14, %xmm5
	mulss	%xmm15, %xmm5
	addss	%xmm5, %xmm14
	movaps	%xmm7, %xmm5
.L3145:
	ucomiss	%xmm3, %xmm2
	jbe	.L3147
	movaps	%xmm3, %xmm7
	subss	%xmm1, %xmm2
	subss	%xmm1, %xmm7
	divss	%xmm2, %xmm7
	movaps	%xmm7, %xmm2
	movd	%eax, %xmm7
	subss	%xmm13, %xmm7
	mulss	%xmm2, %xmm7
	movaps	%xmm3, %xmm2
	addss	%xmm13, %xmm7
	movd	%xmm7, %eax
.L3147:
	movss	12(%r12), %xmm3
	ucomiss	%xmm3, %xmm4
	ja	.L3234
.L3149:
	ucomiss	%xmm4, %xmm5
	movaps	%xmm0, %xmm7
	jnb	.L3151
.L3142:
	movl	76(%rsp), %ecx
	addq	$80, %r15
	addq	$12, %r13
	movl	%ecx, %edx
	movw	%cx, -12(%r13)
	addl	$1, %edx
	movw	%cx, -6(%r13)
	movw	%dx, -10(%r13)
	movl	%ecx, %edx
	addl	$2, %edx
	movw	%dx, -8(%r13)
	movw	%dx, -4(%r13)
	movl	%ecx, %edx
	addl	$4, %ecx
	addl	$3, %edx
	movl	%ecx, 76(%rsp)
	movw	%dx, -2(%r13)
	movl	368(%rsp), %edx
	movss	%xmm1, -80(%r15)
	movss	%xmm5, -76(%r15)
	movss	%xmm13, -72(%r15)
	movl	%edx, -64(%r15)
	movss	%xmm14, -68(%r15)
	movss	%xmm2, -60(%r15)
	movss	%xmm5, -56(%r15)
	movl	%edx, -44(%r15)
	movl	%eax, -52(%r15)
	movss	%xmm14, -48(%r15)
	movss	%xmm2, -40(%r15)
	movss	%xmm4, -36(%r15)
	movl	%edx, -24(%r15)
	movl	%eax, -32(%r15)
	movl	%r11d, -28(%r15)
	movss	%xmm1, -20(%r15)
	movss	%xmm4, -16(%r15)
	movl	%edx, -4(%r15)
	movss	%xmm13, -12(%r15)
	movl	%r11d, -8(%r15)
	.p2align 4,,10
.L3139:
	movaps	%xmm0, %xmm7
.L3151:
	cmpq	%rbx, %rsi
	ja	.L3119
.L3117:
	movabsq	$-3689348814741910323, %rax
	movq	%r15, %rbx
	subq	40(%rdi), %rbx
	sarq	$2, %rbx
	imulq	%rax, %rbx
	movl	36(%rdi), %eax
	cmpl	%eax, %ebx
	movl	%ebx, %esi
	jle	.L3152
	testl	%eax, %eax
	movl	$8, %ebp
	je	.L3153
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	addl	%eax, %ebp
.L3153:
	cmpl	%ebp, %ebx
	jl	.L3235
	movl	%ebx, %ebp
.L3154:
	movslq	%ebp, %rax
	leaq	(%rax,%rax,4), %rcx
	salq	$2, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	40(%rdi), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L3155
	movslq	32(%rdi), %rax
	movq	%rcx, %rdx
	movq	%r12, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$2, %r8
	call	memcpy
	movq	40(%rdi), %rcx
.L3155:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r12, 40(%rdi)
	movl	%ebp, 36(%rdi)
.L3152:
	movl	%ebx, 32(%rdi)
	movq	%r13, %rbx
	subq	24(%rdi), %rbx
	movl	20(%rdi), %eax
	sarq	%rbx
	cmpl	%eax, %ebx
	jle	.L3156
	testl	%eax, %eax
	movl	$8, %ebp
	je	.L3157
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	addl	%eax, %ebp
.L3157:
	cmpl	%ebp, %ebx
	jl	.L3236
	movl	%ebx, %ebp
.L3158:
	movslq	%ebp, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rdi), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3159
	movslq	16(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%rdi), %rcx
.L3159:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 24(%rdi)
	movl	32(%rdi), %esi
	movl	%ebp, 20(%rdi)
.L3156:
	movl	(%rdi), %eax
	movl	%ebx, 16(%rdi)
	movl	64(%rsp), %edx
	subl	$1, %eax
	cltq
	subl	%ebx, %edx
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	addq	8(%rdi), %rax
	subl	%edx, (%rax)
	movq	%r15, 64(%rdi)
	movq	%r13, 72(%rdi)
	movl	%esi, 56(%rdi)
.L3108:
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
.L3136:
	movq	64(%r14), %rdx
	testq	%rdx, %rdx
	jne	.L3138
.L3233:
	addss	%xmm10, %xmm7
	movaps	%xmm7, %xmm0
	jmp	.L3139
	.p2align 4,,10
.L3128:
	movq	56(%rsp), %rcx
	movq	%rbx, %rdx
	movq	%rsi, %r8
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	92(%rsp), %eax
	testl	%eax, %eax
	jne	.L3129
	jmp	.L3117
	.p2align 4,,10
.L3232:
	addss	%xmm12, %xmm6
	ucomiss	12(%r12), %xmm6
	ja	.L3117
	ucomiss	%xmm10, %xmm9
	movaps	%xmm11, %xmm7
	ja	.L3151
	movaps	%xmm12, %xmm0
	movss	4(%r12), %xmm1
	addss	%xmm6, %xmm0
	ucomiss	%xmm0, %xmm1
	ja	.L3237
.L3226:
	movaps	%xmm11, %xmm7
	jmp	.L3151
	.p2align 4,,10
.L3231:
	cmpq	%rbx, %rsi
	addss	%xmm12, %xmm6
	jbe	.L3227
	movsbl	(%rbx), %eax
	cmpl	$32, %eax
	movl	%eax, %edx
	je	.L3202
	cmpl	$9, %eax
	jne	.L3125
	.p2align 4,,10
.L3202:
	addq	$1, %rbx
	cmpq	%rbx, %rsi
	je	.L3238
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	je	.L3202
	cmpl	$32, %eax
	je	.L3202
.L3125:
	xorl	%ebp, %ebp
	cmpb	$10, %dl
	movaps	%xmm11, %xmm7
	jne	.L3151
	addq	$1, %rbx
	jmp	.L3151
	.p2align 4,,10
.L3230:
	movaps	%xmm7, %xmm0
	movaps	%xmm9, %xmm4
	movq	%rsi, %r9
	subss	%xmm11, %xmm0
	movq	%rbx, %r8
	movaps	%xmm8, %xmm1
	movq	%r14, %rcx
	subss	%xmm0, %xmm4
	movss	%xmm4, 32(%rsp)
	call	_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f
	movq	%rax, %rbp
	xorl	%eax, %eax
	cmpq	%rbx, %rbp
	sete	%al
	addq	%rax, %rbp
	jmp	.L3122
	.p2align 4,,10
.L3228:
	movq	%rbx, %rcx
	movq	%r9, 64(%rsp)
	movss	%xmm2, 56(%rsp)
	call	strlen
	movq	64(%rsp), %r9
	leaq	(%rbx,%rax), %rsi
	movss	56(%rsp), %xmm2
	jmp	.L3109
	.p2align 4,,10
.L3238:
	movq	%rsi, %rbx
.L3227:
	movaps	%xmm11, %xmm7
	xorl	%ebp, %ebp
	jmp	.L3151
	.p2align 4,,10
.L3229:
	movaps	%xmm6, %xmm0
	movss	4(%r12), %xmm1
	addss	%xmm12, %xmm0
	ucomiss	%xmm0, %xmm1
	jbe	.L3111
	cmpq	%rbx, %rsi
	ja	.L3214
	jmp	.L3113
	.p2align 4,,10
.L3240:
	addq	$1, %rbx
	cmpq	%rbx, %rsi
	je	.L3239
.L3214:
	cmpb	$10, (%rbx)
	jne	.L3240
	movl	16(%rdi), %eax
	movq	%rsi, %r8
	movq	%rdi, %rcx
	subq	%rbx, %r8
	leal	(%r8,%r8,2), %edx
	sall	$2, %r8d
	addl	%edx, %edx
	addl	%edx, %eax
	movl	%eax, 64(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movl	56(%rdi), %eax
	movq	64(%rdi), %r15
	movq	72(%rdi), %r13
	movl	%eax, 76(%rsp)
	jmp	.L3118
	.p2align 4,,10
.L3236:
	cmpl	%ebp, %eax
	jge	.L3156
	jmp	.L3158
	.p2align 4,,10
.L3235:
	cmpl	%ebp, %eax
	jge	.L3152
	jmp	.L3154
	.p2align 4,,10
.L3239:
	movq	%rsi, %rbx
.L3113:
	movl	16(%rdi), %eax
	subq	%rbx, %rsi
	movq	%rdi, %rcx
	leal	(%rsi,%rsi,2), %edx
	leal	0(,%rsi,4), %r8d
	addl	%edx, %edx
	addl	%edx, %eax
	movl	%eax, 64(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movq	64(%rdi), %r15
	movq	72(%rdi), %r13
	jmp	.L3117
	.p2align 4,,10
.L3234:
	movaps	%xmm3, %xmm7
	subss	%xmm5, %xmm4
	subss	%xmm5, %xmm7
	divss	%xmm4, %xmm7
	movaps	%xmm7, %xmm4
	movd	%r11d, %xmm7
	subss	%xmm14, %xmm7
	mulss	%xmm4, %xmm7
	movaps	%xmm3, %xmm4
	addss	%xmm14, %xmm7
	movd	%xmm7, %r11d
	jmp	.L3149
.L3237:
	cmpq	%rbx, %rsi
	ja	.L3217
	jmp	.L3226
	.p2align 4,,10
.L3242:
	addq	$1, %rbx
	cmpq	%rbx, %rsi
	je	.L3241
.L3217:
	cmpb	$10, (%rbx)
	jne	.L3242
	jmp	.L3226
.L3241:
	movq	%rsi, %rbx
	jmp	.L3226
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC110:
	.ascii "font->ContainerAtlas->TexID == _TextureIdStack.back()\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	.def	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4:
.LFB716:
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
	movl	208(%rsp), %ebp
	movq	224(%rsp), %rsi
	movq	240(%rsp), %rdi
	testl	$-16777216, %ebp
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%r9, %r13
	je	.L3243
	testq	%rsi, %rsi
	je	.L3273
	cmpq	216(%rsp), %rsi
	je	.L3243
.L3279:
	testq	%r12, %r12
	je	.L3274
.L3246:
	ucomiss	.LC5(%rip), %xmm2
	jp	.L3247
	je	.L3275
.L3247:
	movq	88(%r12), %rax
	movq	(%rax), %r14
	movslq	96(%rbx), %rax
	testl	%eax, %eax
	jle	.L3276
.L3249:
	movq	104(%rbx), %rdx
	cmpq	-8(%rdx,%rax,8), %r14
	je	.L3250
	movl	$943, %r8d
	movss	%xmm2, 92(%rsp)
	leaq	.LC6(%rip), %rdx
	leaq	.LC110(%rip), %rcx
	call	_assert
	movss	92(%rsp), %xmm2
.L3250:
	movslq	80(%rbx), %rdx
	testl	%edx, %edx
	jle	.L3277
.L3251:
	salq	$4, %rdx
	addq	88(%rbx), %rdx
	testq	%rdi, %rdi
	movq	-16(%rdx), %rax
	movq	-8(%rdx), %rdx
	movq	%rax, 96(%rsp)
	movq	%rdx, 104(%rsp)
	je	.L3252
	movss	(%rdi), %xmm0
	movss	96(%rsp), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L3253
	movaps	%xmm1, %xmm0
.L3253:
	movss	%xmm0, 96(%rsp)
	movss	100(%rsp), %xmm1
	movss	4(%rdi), %xmm0
	ucomiss	%xmm0, %xmm1
	jnb	.L3278
.L3255:
	movss	%xmm0, 100(%rsp)
	movss	104(%rsp), %xmm0
	minss	8(%rdi), %xmm0
	movss	%xmm0, 104(%rsp)
	movss	108(%rsp), %xmm0
	minss	12(%rdi), %xmm0
	movss	%xmm0, 108(%rsp)
.L3252:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	movq	0(%r13), %r9
	movq	%rsi, 56(%rsp)
	setne	%al
	movl	%ebp, 32(%rsp)
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movss	232(%rsp), %xmm0
	movl	%eax, 72(%rsp)
	movq	216(%rsp), %rax
	movss	%xmm0, 64(%rsp)
	movq	%rax, 48(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb
	nop
.L3243:
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L3275:
	movq	.refptr.GImGui(%rip), %rax
	movq	(%rax), %rax
	movss	5944(%rax), %xmm2
	jmp	.L3247
	.p2align 4,,10
.L3273:
	movq	216(%rsp), %rcx
	movss	%xmm2, 92(%rsp)
	call	strlen
	addq	216(%rsp), %rax
	movss	92(%rsp), %xmm2
	movq	%rax, %rsi
	cmpq	216(%rsp), %rsi
	jne	.L3279
	jmp	.L3243
	.p2align 4,,10
.L3278:
	movaps	%xmm1, %xmm0
	jmp	.L3255
	.p2align 4,,10
.L3274:
	movq	.refptr.GImGui(%rip), %rax
	movq	(%rax), %rax
	movq	5936(%rax), %r12
	jmp	.L3246
	.p2align 4,,10
.L3277:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	movss	%xmm2, 92(%rsp)
	leaq	.LC38(%rip), %rcx
	call	_assert
	movslq	80(%rbx), %rdx
	movss	92(%rsp), %xmm2
	jmp	.L3251
	.p2align 4,,10
.L3276:
	movl	$866, %r8d
	movss	%xmm2, 92(%rsp)
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	call	_assert
	movslq	96(%rbx), %rax
	movss	92(%rsp), %xmm2
	jmp	.L3249
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_
	.def	_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_
_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_:
.LFB717:
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
	movq	208(%rsp), %rsi
	testl	$-16777216, %r8d
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movl	%r8d, %edi
	movq	%r9, %rbp
	je	.L3280
	testq	%rsi, %rsi
	je	.L3290
	cmpq	%rsi, %rbp
	je	.L3280
.L3293:
	movq	.refptr.GImGui(%rip), %rax
	movq	(%rax), %rax
	movq	5936(%rax), %r13
	movss	5944(%rax), %xmm2
	movq	88(%r13), %rax
	movq	(%rax), %r14
	movslq	96(%rbx), %rax
	testl	%eax, %eax
	jle	.L3291
.L3283:
	movq	104(%rbx), %rdx
	cmpq	-8(%rdx,%rax,8), %r14
	je	.L3284
	movl	$943, %r8d
	movss	%xmm2, 92(%rsp)
	leaq	.LC6(%rip), %rdx
	leaq	.LC110(%rip), %rcx
	call	_assert
	movss	92(%rsp), %xmm2
.L3284:
	movslq	80(%rbx), %rdx
	testl	%edx, %edx
	jle	.L3292
.L3285:
	salq	$4, %rdx
	addq	88(%rbx), %rdx
	movq	%r13, %rcx
	movq	(%r12), %r9
	movq	-16(%rdx), %rax
	movq	-8(%rdx), %rdx
	movl	$0, 72(%rsp)
	movl	$0x00000000, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rax, 96(%rsp)
	leaq	96(%rsp), %rax
	movq	%rdx, 104(%rsp)
	movq	%rbx, %rdx
	movq	%rbp, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	%edi, 32(%rsp)
	call	_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb
	nop
.L3280:
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L3290:
	movq	%r9, %rcx
	call	strlen
	leaq	0(%rbp,%rax), %rsi
	cmpq	%rsi, %rbp
	jne	.L3293
	jmp	.L3280
	.p2align 4,,10
.L3291:
	movl	$866, %r8d
	movss	%xmm2, 92(%rsp)
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	call	_assert
	movslq	96(%rbx), %rax
	movss	92(%rsp), %xmm2
	jmp	.L3283
	.p2align 4,,10
.L3292:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	movss	%xmm2, 92(%rsp)
	leaq	.LC38(%rip), %rcx
	call	_assert
	movslq	80(%rbx), %rdx
	movss	92(%rsp), %xmm2
	jmp	.L3285
	.seh_endproc
	.section	.text$_ZN8ImVectorI6ImVec2E9push_backERKS0_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	.def	_ZN8ImVectorI6ImVec2E9push_backERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorI6ImVec2E9push_backERKS0_
_ZN8ImVectorI6ImVec2E9push_backERKS0_:
.LFB833:
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
	movslq	(%rcx), %rax
	cmpl	4(%rcx), %eax
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	je	.L3295
	movq	8(%rcx), %rsi
.L3296:
	leal	1(%rax), %edx
	movl	%edx, (%rbx)
	movq	0(%rbp), %rdx
	movq	%rdx, (%rsi,%rax,8)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L3295:
	leal	1(%rax), %ecx
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L3304
.L3297:
	cmpl	%edx, %ecx
	movl	%edx, %edi
	cmovge	%ecx, %edi
	movslq	%edi, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3298
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rbx), %rcx
.L3298:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 8(%rbx)
	movslq	(%rbx), %rax
	movl	%edi, 4(%rbx)
	jmp	.L3296
	.p2align 4,,10
.L3304:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L3297
	.seh_endproc
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	.def	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
_ZN10ImDrawList13PathArcToFastERK6ImVec2fii:
.LFB700:
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
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	movl	192(%rsp), %edi
	movzbl	_ZGVZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip), %eax
	movq	%rcx, %rsi
	movq	%rdx, %r13
	movaps	%xmm2, %xmm8
	testb	%al, %al
	movl	%r9d, %ebx
	je	.L3333
.L3307:
	cmpb	$0, _ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE17circle_vtx_builds(%rip)
	jne	.L3309
	movabsq	$4539628425452565463, %rax
	movb	$1, _ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE17circle_vtx_builds(%rip)
	movq	%rax, 8+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movabsq	$4566003338574823423, %rax
	movq	%rax, 16+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movabsq	$4575657224415460654, %rax
	movq	%rax, 24+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movabsq	$4566003336427339777, %rax
	movq	%rax, 32+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movabsq	$4539628431895016407, %rax
	movq	%rax, 40+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movabsq	$-5495590911796576256, %rax
	movq	%rax, 48+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movabsq	$-4683743613549693993, %rax
	movq	%rax, 56+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movabsq	$-4657368696132468739, %rax
	movq	%rax, 64+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movabsq	$-4647714814602453458, %rax
	movq	%rax, 72+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movabsq	$-4657368698279952387, %rax
	movq	%rax, 80+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movabsq	$-4683743645761948710, %rax
	movq	$1065353216, _ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movq	%rax, 88+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
.L3309:
	cmpl	%edi, %ebx
	jg	.L3305
	ucomiss	.LC5(%rip), %xmm8
	jp	.L3311
	je	.L3334
.L3311:
	movl	112(%rsi), %ecx
	movl	%edi, %eax
	movl	116(%rsi), %r12d
	subl	%ebx, %eax
	leal	1(%rcx,%rax), %ebp
	cmpl	%r12d, %ebp
	jg	.L3335
.L3313:
	leaq	_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip), %r14
	addl	$1, %edi
	movl	$715827883, %ebp
	jmp	.L3319
	.p2align 4,,10
.L3336:
	movq	120(%rsi), %r15
	movslq	%ecx, %rax
.L3316:
	leal	1(%rax), %ecx
	addl	$1, %ebx
	leaq	(%r15,%rax,8), %rax
	cmpl	%edi, %ebx
	movl	%ecx, 112(%rsi)
	movss	%xmm7, (%rax)
	movss	%xmm6, 4(%rax)
	je	.L3305
.L3319:
	movl	%ebx, %eax
	imull	%ebp
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	%edx
	subl	%eax, %edx
	leal	(%rdx,%rdx,2), %eax
	movl	%ebx, %edx
	sall	$2, %eax
	subl	%eax, %edx
	cmpl	%r12d, %ecx
	movslq	%edx, %rdx
	movss	4(%r14,%rdx,8), %xmm6
	movss	(%r14,%rdx,8), %xmm7
	mulss	%xmm8, %xmm6
	addss	4(%r13), %xmm6
	mulss	%xmm8, %xmm7
	addss	0(%r13), %xmm7
	jne	.L3336
	leal	1(%rcx), %r12d
	testl	%ecx, %ecx
	movl	$8, %eax
	je	.L3317
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	addl	%ecx, %eax
.L3317:
	cmpl	%eax, %r12d
	cmovl	%eax, %r12d
	movslq	%r12d, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rsi), %rcx
	movq	%rax, %r15
	testq	%rcx, %rcx
	je	.L3318
	movslq	112(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rsi), %rcx
.L3318:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r15, 120(%rsi)
	movslq	112(%rsi), %rax
	movl	%r12d, 116(%rsi)
	jmp	.L3316
	.p2align 4,,10
.L3305:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
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
.L3333:
	leaq	_ZGVZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L3307
	leaq	_ZGVZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip), %rcx
	pxor	%xmm0, %xmm0
	movaps	%xmm0, _ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movaps	%xmm0, 16+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movaps	%xmm0, 32+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movaps	%xmm0, 48+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movaps	%xmm0, 64+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movaps	%xmm0, 80+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	call	__cxa_guard_release
	jmp	.L3307
	.p2align 4,,10
.L3334:
	movaps	32(%rsp), %xmm6
	leaq	112(%rsi), %rcx
	movq	%r13, %rdx
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	.p2align 4,,10
.L3335:
	movslq	%ebp, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rsi), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L3314
	movslq	112(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rsi), %rcx
.L3314:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r12, 120(%rsi)
	movl	112(%rsi), %ecx
	movl	%ebp, %r12d
	movl	%ebp, 116(%rsi)
	jmp	.L3313
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList9PathArcToERK6ImVec2fffi
	.def	_ZN10ImDrawList9PathArcToERK6ImVec2fffi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList9PathArcToERK6ImVec2fffi
_ZN10ImDrawList9PathArcToERK6ImVec2fffi:
.LFB701:
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
	addq	$-128, %rsp
	.seh_stackalloc	128
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	movaps	%xmm10, 96(%rsp)
	.seh_savexmm	%xmm10, 96
	movaps	%xmm11, 112(%rsp)
	.seh_savexmm	%xmm11, 112
	.seh_endprologue
	ucomiss	.LC5(%rip), %xmm2
	movl	232(%rsp), %r12d
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movaps	%xmm2, %xmm8
	movaps	%xmm3, %xmm11
	jp	.L3338
	je	.L3358
.L3338:
	movl	112(%rbx), %r13d
	leal	1(%r12), %ebp
	movl	116(%rbx), %esi
	addl	%ebp, %r13d
	cmpl	%esi, %r13d
	jg	.L3359
.L3340:
	testl	%r12d, %r12d
	js	.L3337
	movss	224(%rsp), %xmm10
	pxor	%xmm9, %xmm9
	cvtsi2ss	%r12d, %xmm9
	xorl	%r12d, %r12d
	movl	112(%rbx), %r13d
	subss	%xmm11, %xmm10
	jmp	.L3347
	.p2align 4,,10
.L3360:
	movq	120(%rbx), %r14
	movslq	%r13d, %rax
.L3344:
	leal	1(%rax), %r13d
	addl	$1, %r12d
	leaq	(%r14,%rax,8), %rax
	cmpl	%ebp, %r12d
	movl	%r13d, 112(%rbx)
	movss	%xmm6, (%rax)
	movss	%xmm7, 4(%rax)
	je	.L3337
.L3347:
	pxor	%xmm6, %xmm6
	cvtsi2ss	%r12d, %xmm6
	divss	%xmm9, %xmm6
	mulss	%xmm10, %xmm6
	addss	%xmm11, %xmm6
	movaps	%xmm6, %xmm0
	call	sinf
	movaps	%xmm0, %xmm7
	movaps	%xmm6, %xmm0
	call	cosf
	movss	(%rdi), %xmm6
	cmpl	%esi, %r13d
	mulss	%xmm8, %xmm0
	mulss	%xmm8, %xmm7
	addss	4(%rdi), %xmm7
	addss	%xmm0, %xmm6
	jne	.L3360
	leal	1(%r13), %esi
	testl	%r13d, %r13d
	movl	$8, %eax
	je	.L3345
	movl	%r13d, %eax
	shrl	$31, %eax
	addl	%r13d, %eax
	sarl	%eax
	addl	%r13d, %eax
.L3345:
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movslq	%esi, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %r14
	testq	%rcx, %rcx
	je	.L3346
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3346:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r14, 120(%rbx)
	movslq	112(%rbx), %rax
	movl	%esi, 116(%rbx)
	jmp	.L3344
	.p2align 4,,10
.L3337:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	movaps	96(%rsp), %xmm10
	movaps	112(%rsp), %xmm11
	subq	$-128, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L3358:
	leaq	112(%rcx), %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	jmp	.L3338
	.p2align 4,,10
.L3359:
	movslq	%r13d, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3341
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3341:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	%r13d, %esi
	movl	%r13d, 116(%rbx)
	jmp	.L3340
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList9AddCircleERK6ImVec2fjif
	.def	_ZN10ImDrawList9AddCircleERK6ImVec2fjif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList9AddCircleERK6ImVec2fjif
_ZN10ImDrawList9AddCircleERK6ImVec2fjif:
.LFB713:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	testl	$-16777216, %r9d
	movq	%rcx, %rbx
	jne	.L3371
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3371:
	pxor	%xmm1, %xmm1
	movl	144(%rsp), %eax
	movl	%r9d, 76(%rsp)
	cvtsi2ss	144(%rsp), %xmm1
	subss	.LC1(%rip), %xmm2
	pxor	%xmm3, %xmm3
	movaps	%xmm1, %xmm0
	subss	.LC18(%rip), %xmm0
	movl	%eax, 40(%rsp)
	mulss	.LC111(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN10ImDrawList9PathArcToERK6ImVec2fffi
	movq	120(%rbx), %rdx
	movq	%rbx, %rcx
	movl	$1, 48(%rsp)
	movl	76(%rsp), %r9d
	movl	$1, 32(%rsp)
	movl	112(%rbx), %r8d
	movss	152(%rsp), %xmm0
	movss	%xmm0, 40(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3363
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3364
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3364:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3363:
	movl	$0, 112(%rbx)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
	.def	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji:
.LFB714:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	testl	$-16777216, %r9d
	movq	%rcx, %rbx
	jne	.L3382
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3382:
	pxor	%xmm1, %xmm1
	movl	128(%rsp), %eax
	movl	%r9d, 60(%rsp)
	pxor	%xmm3, %xmm3
	cvtsi2ss	128(%rsp), %xmm1
	movl	%eax, 40(%rsp)
	movaps	%xmm1, %xmm0
	subss	.LC18(%rip), %xmm0
	mulss	.LC111(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN10ImDrawList9PathArcToERK6ImVec2fffi
	movq	120(%rbx), %rdx
	movq	%rbx, %rcx
	movl	$1, 32(%rsp)
	movl	60(%rsp), %r9d
	movl	112(%rbx), %r8d
	call	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3374
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3375
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3375:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3374:
	movl	$0, 112(%rbx)
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL21PathBezierToCasteljauP8ImVectorI6ImVec2Efffffffffi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21PathBezierToCasteljauP8ImVectorI6ImVec2Efffffffffi
_ZL21PathBezierToCasteljauP8ImVectorI6ImVec2Efffffffffi:
.LFB702:
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
	movss	376(%rsp), %xmm6
	movss	384(%rsp), %xmm7
	movss	352(%rsp), %xmm5
	movaps	%xmm6, %xmm4
	movss	360(%rsp), %xmm8
	movaps	%xmm7, %xmm12
	movaps	%xmm3, %xmm0
	movaps	%xmm5, %xmm11
	movq	%rcx, %rbx
	movss	368(%rsp), %xmm10
	subss	%xmm1, %xmm4
	movss	392(%rsp), %xmm9
	subss	%xmm2, %xmm12
	movaps	%xmm10, %xmm13
	subss	%xmm6, %xmm0
	subss	%xmm7, %xmm11
	subss	%xmm7, %xmm13
	mulss	%xmm12, %xmm0
	mulss	%xmm4, %xmm11
	mulss	%xmm4, %xmm13
	subss	%xmm11, %xmm0
	movaps	%xmm8, %xmm11
	subss	%xmm6, %xmm11
	mulss	%xmm12, %xmm11
	subss	%xmm13, %xmm11
	pxor	%xmm13, %xmm13
	ucomiss	%xmm13, %xmm0
	jnb	.L3384
	xorps	.LC29(%rip), %xmm0
.L3384:
	ucomiss	%xmm13, %xmm11
	jnb	.L3385
	xorps	.LC29(%rip), %xmm11
.L3385:
	mulss	%xmm4, %xmm4
	addss	%xmm11, %xmm0
	mulss	%xmm12, %xmm12
	mulss	%xmm0, %xmm0
	addss	%xmm12, %xmm4
	mulss	%xmm9, %xmm4
	ucomiss	%xmm0, %xmm4
	ja	.L3394
	cmpl	$10, 400(%rsp)
	jne	.L3395
.L3383:
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
	ret
	.p2align 4,,10
.L3394:
	leaq	120(%rsp), %rdx
	movq	%rbx, %rcx
	movss	%xmm6, 120(%rsp)
	movss	%xmm7, 124(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	jmp	.L3383
	.p2align 4,,10
.L3395:
	movaps	%xmm1, %xmm11
	movaps	%xmm2, %xmm12
	movq	%rbx, %rcx
	movss	.LC1(%rip), %xmm4
	addss	%xmm3, %xmm11
	movl	400(%rsp), %eax
	movss	%xmm9, 72(%rsp)
	addss	%xmm5, %xmm12
	addss	%xmm8, %xmm3
	addss	%xmm10, %xmm5
	mulss	%xmm4, %xmm11
	addss	%xmm6, %xmm8
	mulss	%xmm4, %xmm12
	addss	%xmm7, %xmm10
	mulss	%xmm4, %xmm3
	mulss	%xmm4, %xmm5
	mulss	%xmm4, %xmm8
	movaps	%xmm11, %xmm15
	mulss	%xmm4, %xmm10
	movss	%xmm12, 32(%rsp)
	addss	%xmm3, %xmm15
	leal	1(%rax), %esi
	movaps	%xmm3, %xmm0
	movaps	%xmm12, %xmm3
	movl	%esi, 80(%rsp)
	addss	%xmm5, %xmm3
	addss	%xmm8, %xmm0
	mulss	%xmm4, %xmm15
	addss	%xmm10, %xmm5
	mulss	%xmm4, %xmm3
	mulss	%xmm4, %xmm0
	mulss	%xmm4, %xmm5
	movss	%xmm15, 40(%rsp)
	movss	%xmm3, 48(%rsp)
	movaps	%xmm0, %xmm13
	movaps	%xmm15, %xmm0
	movaps	%xmm5, %xmm14
	addss	%xmm13, %xmm0
	movaps	%xmm3, %xmm5
	addss	%xmm14, %xmm5
	movaps	%xmm11, %xmm3
	mulss	%xmm4, %xmm0
	mulss	%xmm5, %xmm4
	movss	%xmm0, 56(%rsp)
	movss	%xmm4, 64(%rsp)
	movss	%xmm4, 108(%rsp)
	movss	%xmm0, 104(%rsp)
	call	_ZL21PathBezierToCasteljauP8ImVectorI6ImVec2Efffffffffi
	movl	%esi, 80(%rsp)
	movaps	%xmm13, %xmm3
	movq	%rbx, %rcx
	movss	108(%rsp), %xmm4
	movss	%xmm9, 72(%rsp)
	movss	104(%rsp), %xmm0
	movss	%xmm7, 64(%rsp)
	movss	%xmm6, 56(%rsp)
	movaps	%xmm4, %xmm2
	movss	%xmm10, 48(%rsp)
	movaps	%xmm0, %xmm1
	movss	%xmm8, 40(%rsp)
	movss	%xmm14, 32(%rsp)
	call	_ZL21PathBezierToCasteljauP8ImVectorI6ImVec2Efffffffffi
	jmp	.L3383
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList17PathBezierCurveToERK6ImVec2S2_S2_i
	.def	_ZN10ImDrawList17PathBezierCurveToERK6ImVec2S2_S2_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList17PathBezierCurveToERK6ImVec2S2_S2_i
_ZN10ImDrawList17PathBezierCurveToERK6ImVec2S2_S2_i:
.LFB703:
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
	.seh_endprologue
	movl	112(%rcx), %eax
	movl	320(%rsp), %r12d
	testl	%eax, %eax
	movq	%rcx, %rdi
	movq	%rdx, %rbp
	movq	%r8, %r13
	movq	%r9, %r14
	jle	.L3412
.L3397:
	movq	120(%rdi), %r15
	movslq	%eax, %rdx
	cmpl	$0, %r12d
	leaq	-8(%r15,%rdx,8), %rdx
	movss	(%rdx), %xmm9
	movss	4(%rdx), %xmm10
	je	.L3413
	pxor	%xmm0, %xmm0
	cvtsi2ss	%r12d, %xmm0
	movss	.LC18(%rip), %xmm6
	movaps	%xmm6, %xmm7
	divss	%xmm0, %xmm7
	jle	.L3396
	movl	116(%rdi), %esi
	addl	$1, %r12d
	movl	$1, %ebx
	movss	.LC46(%rip), %xmm8
	jmp	.L3404
	.p2align 4,,10
.L3401:
	leal	1(%rdx), %eax
	addl	$1, %ebx
	leaq	(%r15,%rdx,8), %rdx
	cmpl	%r12d, %ebx
	movl	%eax, 112(%rdi)
	movss	%xmm12, (%rdx)
	movss	%xmm11, 4(%rdx)
	je	.L3396
.L3404:
	pxor	%xmm1, %xmm1
	cvtsi2ss	%ebx, %xmm1
	movaps	%xmm6, %xmm0
	movaps	%xmm10, %xmm3
	cmpl	%esi, %eax
	movslq	%eax, %rdx
	mulss	%xmm7, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm1, %xmm2
	movaps	%xmm0, %xmm5
	movaps	%xmm0, %xmm4
	mulss	%xmm0, %xmm5
	mulss	%xmm8, %xmm4
	mulss	%xmm0, %xmm5
	mulss	%xmm4, %xmm0
	mulss	%xmm1, %xmm4
	mulss	%xmm5, %xmm3
	mulss	%xmm1, %xmm0
	mulss	%xmm1, %xmm4
	mulss	%xmm2, %xmm1
	movss	4(%rbp), %xmm2
	mulss	%xmm9, %xmm5
	mulss	%xmm0, %xmm2
	addss	%xmm3, %xmm2
	movss	4(%r13), %xmm3
	mulss	%xmm4, %xmm3
	mulss	0(%r13), %xmm4
	addss	%xmm3, %xmm2
	movss	4(%r14), %xmm3
	mulss	%xmm1, %xmm3
	mulss	(%r14), %xmm1
	addss	%xmm3, %xmm2
	movss	0(%rbp), %xmm3
	mulss	%xmm0, %xmm3
	movaps	%xmm2, %xmm11
	addss	%xmm5, %xmm3
	movaps	%xmm3, %xmm0
	addss	%xmm4, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm12
	jne	.L3401
	leal	1(%rax), %esi
	testl	%eax, %eax
	movl	$8, %edx
	je	.L3402
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L3402:
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	movslq	%esi, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rdi), %rcx
	movq	%rax, %r15
	testq	%rcx, %rcx
	je	.L3403
	movslq	112(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rdi), %rcx
.L3403:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r15, 120(%rdi)
	movslq	112(%rdi), %rdx
	movl	%esi, 116(%rdi)
	jmp	.L3401
	.p2align 4,,10
.L3413:
	movq	.refptr.GImGui(%rip), %rax
	leaq	112(%rdi), %rcx
	movaps	%xmm10, %xmm2
	movaps	%xmm9, %xmm1
	movl	$0, 80(%rsp)
	movq	(%rax), %rax
	movss	5244(%rax), %xmm0
	movss	%xmm0, 72(%rsp)
	movss	4(%r14), %xmm0
	movss	%xmm0, 64(%rsp)
	movss	(%r14), %xmm0
	movss	%xmm0, 56(%rsp)
	movss	4(%r13), %xmm0
	movss	%xmm0, 48(%rsp)
	movss	0(%r13), %xmm0
	movss	%xmm0, 40(%rsp)
	movss	4(%rbp), %xmm0
	movss	%xmm0, 32(%rsp)
	movss	0(%rbp), %xmm3
	call	_ZL21PathBezierToCasteljauP8ImVectorI6ImVec2Efffffffffi
	nop
.L3396:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	movaps	128(%rsp), %xmm8
	movaps	144(%rsp), %xmm9
	movaps	160(%rsp), %xmm10
	movaps	176(%rsp), %xmm11
	movaps	192(%rsp), %xmm12
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
.L3412:
	leaq	.LC35(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC38(%rip), %rcx
	call	_assert
	movl	112(%rdi), %eax
	jmp	.L3397
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList8PathRectERK6ImVec2S2_fi
	.def	_ZN10ImDrawList8PathRectERK6ImVec2S2_fi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList8PathRectERK6ImVec2S2_fi
_ZN10ImDrawList8PathRectERK6ImVec2S2_fi:
.LFB704:
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
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	.seh_endprologue
	movss	.LC30(%rip), %xmm5
	movl	192(%rsp), %eax
	movss	(%rdx), %xmm4
	movss	(%r8), %xmm0
	movq	%rdx, %rdi
	subss	%xmm4, %xmm0
	movl	%eax, %edx
	andl	$3, %edx
	movq	%rcx, %rsi
	movq	%r8, %rbx
	cmpl	$3, %edx
	andps	%xmm5, %xmm0
	je	.L3439
	movl	%eax, %edx
	andl	$12, %edx
	cmpl	$12, %edx
	je	.L3439
.L3416:
	movss	.LC18(%rip), %xmm2
	movl	%eax, %edx
	movss	4(%rdi), %xmm1
	andl	$9, %edx
	subss	%xmm2, %xmm0
	movss	4(%rbx), %xmm6
	cmpl	$9, %edx
	subss	%xmm1, %xmm6
	minss	%xmm0, %xmm3
	andps	%xmm5, %xmm6
	movaps	%xmm3, %xmm0
	je	.L3440
	movl	%eax, %edx
	andl	$6, %edx
	cmpl	$6, %edx
	je	.L3440
.L3420:
	subss	%xmm2, %xmm6
	minss	%xmm6, %xmm0
	movaps	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	ucomiss	%xmm6, %xmm0
	jnb	.L3423
	testl	%eax, %eax
	je	.L3423
	testb	$1, %al
	pxor	%xmm2, %xmm2
	je	.L3426
	movaps	%xmm6, %xmm2
.L3426:
	testb	$2, %al
	pxor	%xmm8, %xmm8
	je	.L3427
	movaps	%xmm6, %xmm8
.L3427:
	testb	$4, %al
	pxor	%xmm7, %xmm7
	je	.L3428
	movaps	%xmm6, %xmm7
.L3428:
	testb	$8, %al
	jne	.L3429
	pxor	%xmm6, %xmm6
.L3429:
	addss	%xmm2, %xmm4
	leaq	56(%rsp), %rbp
	movq	%rsi, %rcx
	movl	$9, 32(%rsp)
	addss	%xmm2, %xmm1
	movq	%rbp, %rdx
	movl	$6, %r9d
	movss	%xmm4, 56(%rsp)
	movss	%xmm1, 60(%rsp)
	call	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	movss	4(%rdi), %xmm1
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	movss	(%rbx), %xmm0
	movaps	%xmm8, %xmm2
	movl	$12, 32(%rsp)
	movl	$9, %r9d
	addss	%xmm8, %xmm1
	subss	%xmm8, %xmm0
	movss	%xmm1, 60(%rsp)
	movss	%xmm0, 56(%rsp)
	call	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	movss	4(%rbx), %xmm0
	xorl	%r9d, %r9d
	movaps	%xmm7, %xmm2
	movss	(%rbx), %xmm1
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	movl	$3, 32(%rsp)
	subss	%xmm7, %xmm0
	subss	%xmm7, %xmm1
	movss	%xmm0, 60(%rsp)
	movss	%xmm1, 56(%rsp)
	call	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	movss	4(%rbx), %xmm0
	movaps	%xmm6, %xmm2
	movq	%rbp, %rdx
	movss	(%rdi), %xmm1
	movl	$6, 32(%rsp)
	movl	$3, %r9d
	movq	%rsi, %rcx
	subss	%xmm6, %xmm0
	addss	%xmm6, %xmm1
	movss	%xmm0, 60(%rsp)
	movss	%xmm1, 56(%rsp)
	call	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	jmp	.L3414
	.p2align 4,,10
.L3423:
	leaq	56(%rsp), %rbp
	addq	$112, %rsi
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movss	4(%rdi), %xmm0
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	movss	(%rbx), %xmm1
	movss	%xmm0, 60(%rsp)
	movss	%xmm1, 56(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movss	4(%rbx), %xmm0
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	movss	(%rdi), %xmm1
	movss	%xmm0, 60(%rsp)
	movss	%xmm1, 56(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	nop
.L3414:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L3440:
	mulss	.LC1(%rip), %xmm6
	jmp	.L3420
	.p2align 4,,10
.L3439:
	mulss	.LC1(%rip), %xmm0
	jmp	.L3416
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	.def	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif:
.LFB706:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	testl	$-16777216, %r9d
	movq	%rcx, %rbx
	jne	.L3451
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3451:
	movss	.LC1(%rip), %xmm0
	movl	%r9d, 76(%rsp)
	movss	4(%r8), %xmm1
	movss	(%r8), %xmm2
	leaq	88(%rsp), %r8
	subss	%xmm0, %xmm1
	movl	168(%rsp), %eax
	movss	160(%rsp), %xmm3
	subss	%xmm0, %xmm2
	movss	%xmm1, 92(%rsp)
	movss	4(%rdx), %xmm1
	movss	%xmm2, 88(%rsp)
	addss	%xmm0, %xmm1
	addss	(%rdx), %xmm0
	movl	%eax, 32(%rsp)
	leaq	80(%rsp), %rdx
	movss	%xmm1, 84(%rsp)
	movss	%xmm0, 80(%rsp)
	call	_ZN10ImDrawList8PathRectERK6ImVec2S2_fi
	movq	120(%rbx), %rdx
	movq	%rbx, %rcx
	movl	$1, 48(%rsp)
	movl	76(%rsp), %r9d
	movl	$1, 32(%rsp)
	movl	112(%rbx), %r8d
	movss	176(%rsp), %xmm0
	movss	%xmm0, 40(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3443
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3444
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3444:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3443:
	movl	$0, 112(%rbx)
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	.def	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi:
.LFB707:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movss	128(%rsp), %xmm3
	testl	$-16777216, %r9d
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%r8, %rsi
	je	.L3452
	ucomiss	.LC5(%rip), %xmm3
	movl	%r9d, 60(%rsp)
	jbe	.L3465
	movl	136(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList8PathRectERK6ImVec2S2_fi
	movq	120(%rbx), %rdx
	movq	%rbx, %rcx
	movl	$1, 32(%rsp)
	movl	60(%rsp), %r9d
	movl	112(%rbx), %r8d
	call	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3456
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3457
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3457:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3456:
	movl	$0, 112(%rbx)
.L3452:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3465:
	movl	$4, %r8d
	movl	$6, %edx
	call	_ZN10ImDrawList11PrimReserveEii
	movq	.refptr.GImGui(%rip), %rax
	movl	56(%rbx), %ecx
	movq	72(%rbx), %rdx
	movss	4(%rsi), %xmm2
	movq	(%rax), %rax
	movss	(%rdi), %xmm3
	movss	4(%rdi), %xmm4
	addq	$12, %rdx
	movss	(%rsi), %xmm5
	movss	5952(%rax), %xmm1
	movss	5956(%rax), %xmm0
	leal	1(%rcx), %eax
	movw	%cx, -12(%rdx)
	movw	%ax, -10(%rdx)
	leal	2(%rcx), %eax
	movq	(%rdi), %r8
	movw	%ax, -8(%rdx)
	movl	60(%rsp), %r9d
	movw	%ax, -4(%rdx)
	leal	3(%rcx), %eax
	movw	%ax, -2(%rdx)
	movq	64(%rbx), %rax
	movw	%cx, -6(%rdx)
	addl	$4, %ecx
	movq	%r8, (%rax)
	addq	$80, %rax
	movss	%xmm1, -72(%rax)
	movss	%xmm0, -68(%rax)
	movss	%xmm5, -60(%rax)
	movss	%xmm4, -56(%rax)
	movss	%xmm1, -52(%rax)
	movss	%xmm0, -48(%rax)
	movq	(%rsi), %r8
	movl	%r9d, -64(%rax)
	movl	%r9d, -44(%rax)
	movss	%xmm1, -32(%rax)
	movq	%r8, -40(%rax)
	movss	%xmm0, -28(%rax)
	movl	%r9d, -24(%rax)
	movss	%xmm3, -20(%rax)
	movss	%xmm2, -16(%rax)
	movss	%xmm1, -12(%rax)
	movss	%xmm0, -8(%rax)
	movl	%r9d, -4(%rax)
	movq	%rax, 64(%rbx)
	movl	%ecx, 56(%rbx)
	movq	%rdx, 72(%rbx)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	.def	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
_ZN10ImDrawList7AddLineERK6ImVec2S2_jf:
.LFB705:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$112, %rsp
	.seh_stackalloc	112
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	.seh_endprologue
	testl	$-16777216, %r9d
	movq	%rcx, %rbx
	jne	.L3476
	movaps	96(%rsp), %xmm6
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3476:
	movss	4(%rdx), %xmm0
	leaq	112(%rcx), %rsi
	movl	%r9d, 76(%rsp)
	movss	.LC1(%rip), %xmm6
	leaq	88(%rsp), %rdi
	movq	%rsi, %rcx
	movq	%r8, 64(%rsp)
	movss	(%rdx), %xmm1
	movq	%rdi, %rdx
	addss	%xmm6, %xmm0
	addss	%xmm6, %xmm1
	movss	%xmm0, 92(%rsp)
	movss	%xmm1, 88(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	64(%rsp), %r8
	movaps	%xmm6, %xmm0
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	addss	4(%r8), %xmm0
	addss	(%r8), %xmm6
	movss	%xmm0, 92(%rsp)
	movss	%xmm6, 88(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	120(%rbx), %rdx
	movq	%rbx, %rcx
	movl	$1, 48(%rsp)
	movl	76(%rsp), %r9d
	movl	$0, 32(%rsp)
	movl	112(%rbx), %r8d
	movss	176(%rsp), %xmm0
	movss	%xmm0, 40(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3468
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3469
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3469:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3468:
	movaps	96(%rsp), %xmm6
	movl	$0, 112(%rbx)
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList7AddQuadERK6ImVec2S2_S2_S2_jf
	.def	_ZN10ImDrawList7AddQuadERK6ImVec2S2_S2_S2_jf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList7AddQuadERK6ImVec2S2_S2_S2_jf
_ZN10ImDrawList7AddQuadERK6ImVec2S2_S2_S2_jf:
.LFB709:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movl	152(%rsp), %esi
	testl	$-16777216, %esi
	movq	%rcx, %rbx
	jne	.L3487
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3487:
	leaq	112(%rcx), %rdi
	movq	%r9, 72(%rsp)
	movq	%rdi, %rcx
	movq	%r8, 64(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	64(%rsp), %r8
	movq	%rdi, %rcx
	movq	%r8, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	72(%rsp), %r9
	movq	%rdi, %rcx
	movq	%r9, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	144(%rsp), %rdx
	movq	%rdi, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	120(%rbx), %rdx
	movl	%esi, %r9d
	movq	%rbx, %rcx
	movl	112(%rbx), %r8d
	movl	$1, 48(%rsp)
	movss	160(%rsp), %xmm0
	movl	$1, 32(%rsp)
	movss	%xmm0, 40(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3479
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3480
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3480:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3479:
	movl	$0, 112(%rbx)
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf
	.def	_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf
_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf:
.LFB711:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movl	144(%rsp), %esi
	testl	$-16777216, %esi
	movq	%rcx, %rbx
	jne	.L3498
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3498:
	leaq	112(%rcx), %rdi
	movq	%r9, 72(%rsp)
	movq	%rdi, %rcx
	movq	%r8, 64(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	64(%rsp), %r8
	movq	%rdi, %rcx
	movq	%r8, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	72(%rsp), %r9
	movq	%rdi, %rcx
	movq	%r9, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	120(%rbx), %rdx
	movl	%esi, %r9d
	movq	%rbx, %rcx
	movl	112(%rbx), %r8d
	movl	$1, 48(%rsp)
	movss	152(%rsp), %xmm0
	movl	$1, 32(%rsp)
	movss	%xmm0, 40(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3490
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3491
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3491:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3490:
	movl	$0, 112(%rbx)
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList14AddBezierCurveERK6ImVec2S2_S2_S2_jfi
	.def	_ZN10ImDrawList14AddBezierCurveERK6ImVec2S2_S2_S2_jfi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList14AddBezierCurveERK6ImVec2S2_S2_S2_jfi
_ZN10ImDrawList14AddBezierCurveERK6ImVec2S2_S2_S2_jfi:
.LFB715:
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
	movl	152(%rsp), %esi
	testl	$-16777216, %esi
	movq	%rcx, %rbx
	movq	%r8, %rdi
	movq	%r9, %rbp
	jne	.L3509
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L3509:
	leaq	112(%rcx), %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	movl	168(%rsp), %eax
	movq	144(%rsp), %r9
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList17PathBezierCurveToERK6ImVec2S2_S2_i
	movq	120(%rbx), %rdx
	movl	%esi, %r9d
	movq	%rbx, %rcx
	movl	112(%rbx), %r8d
	movl	$1, 48(%rsp)
	movss	160(%rsp), %xmm0
	movl	$0, 32(%rsp)
	movss	%xmm0, 40(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3501
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3502
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3502:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3501:
	movl	$0, 112(%rbx)
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j
	.def	_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j
_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j:
.LFB710:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	136(%rsp), %esi
	testl	$-16777216, %esi
	movq	%rcx, %rbx
	jne	.L3520
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3520:
	leaq	112(%rcx), %rdi
	movq	%r9, 56(%rsp)
	movq	%rdi, %rcx
	movq	%r8, 48(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	48(%rsp), %r8
	movq	%rdi, %rcx
	movq	%r8, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	56(%rsp), %r9
	movq	%rdi, %rcx
	movq	%r9, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	128(%rsp), %rdx
	movq	%rdi, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	120(%rbx), %rdx
	movl	%esi, %r9d
	movq	%rbx, %rcx
	movl	112(%rbx), %r8d
	movl	$1, 32(%rsp)
	call	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3512
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3513
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3513:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3512:
	movl	$0, 112(%rbx)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j
	.def	_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j
_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j:
.LFB712:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	128(%rsp), %esi
	testl	$-16777216, %esi
	movq	%rcx, %rbx
	jne	.L3531
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3531:
	leaq	112(%rcx), %rdi
	movq	%r9, 56(%rsp)
	movq	%rdi, %rcx
	movq	%r8, 48(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	48(%rsp), %r8
	movq	%rdi, %rcx
	movq	%r8, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	56(%rsp), %r9
	movq	%rdi, %rcx
	movq	%r9, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	120(%rbx), %rdx
	movl	%esi, %r9d
	movq	%rbx, %rcx
	movl	112(%rbx), %r8d
	movl	$1, 32(%rsp)
	call	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3523
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3524
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3524:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3523:
	movl	$0, 112(%rbx)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4,,15
	.def	_GLOBAL__sub_I__ZN10ImDrawList5ClearEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN10ImDrawList5ClearEv
_GLOBAL__sub_I__ZN10ImDrawList5ClearEv:
.LFB1003:
	.seh_endprologue
	movaps	.LC112(%rip), %xmm0
	movaps	%xmm0, _ZL13GNullClipRect(%rip)
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__ZN10ImDrawList5ClearEv
	.section .rdata,"dr"
	.align 32
_ZL39proggy_clean_ttf_compressed_data_base85:
	.ascii "7])#######hV0qs'/###[),##/l:$#Q6>##5[n42>c-TH`->>#/e>11NNV=Bv(*:.F?uu#(gRU.o0XGH`$vhLG1hxt9?W`#,5LsCp#-i>.r$<$6pD>Lb';9Crc6tgXmKVeU2cD4Eo3R/2*>]b(MC;$jPfY.;h^`IWM9<Lh2TlS+f-s$o6Q<BWH`YiU.xfLq$N;$0iR/GX:U(jcW2p/W*q?-qmnUCI;jHSAiFWM.R*kU@C=GH?a9wp8f$e.-4^Qg1)Q-GL(lf(r/7GrRgwV%MS=C#`8ND>Qo#t'X#(v#Y9w0#1D$CIf;W'#pWUPXOuxXuU(H9M(1<q-UE31#^-V'8IRUo7Qf./L>=Ke$$'5F%)]0^#0X@U.a<r:QLtFsLcL6##lOj)#.Y5<-R&KgLwqJfLgN&;Q?gI^#DY2uLi@^rMl9t=cWq6##weg>$FBjVQTSDgEKnIS7EM9>ZY9w0#L;>>#Mx&4Mvt//L[MkA#W@lK.N'[0#7RL_&#w+F%HtG9M#XL`N&.,GM4Pg;-<nLENhvx>-VsM.M0rJfLH2eTM`*oJMHRC`NkfimM2J,W-jXS:)r0wK#@Fge$U>`w'N7G#$#fB#$E^$#:9:hk+eOe--6x)F7*E%?76%^GMHePW-Z5l'&GiF#$956:rS?dA#fiK:)Yr+`&#0j@'DbG&#^$PG.Ll+DNa<XCMKEV*N)LN/N*b=%Q6pia-Xg8I$<MR&,VdJe$<(7G;Ckl'&hF;;$<_=X(b.RS%%)###MPBuuE1V:v&cX&#2m#(&cV]`k9OhLMbn%s$G2,B$BfD3X*sp5#l,$R#]x_X1xKX%b5U*[r5iMfUo9U`N99hG)tm+/Us9pG)XPu`<0s-)WTt(gCRxIg(%6sfh=ktMKn3j)<6<b5Sk_/0(^]AaN#(p/L>&VZ>1i%h1S9u5o@YaaW$e+b<TWFn/Z:Oh(Cx2$lNEoN^e)#CFY@@I;BOQ*sRwZtZxRcU7uW6CXow0i(?$Q[cjOd[P4d)]>ROPOpxTO7Stwi1::iB1q)C_=dV26J;2,]7op$]uQr@_V7$q^%lQwtuHY]=DX,n3L#0PHDO4f9>dC@O>HBuKPpP*E,N+b3L#lpR/MrTEH.IAQk.a>D[.e;mc.x]Ip.PH^'/aqUO/$1WxLoW0[iLA<QT;5HKD+@qQ'NQ(3_PLhE48R.qAPSwQ0/WK?Z,[x?-J;jQTWA0X@KJ(_Y8N-:/M74:/-ZpKrUss?d#dZq]DAbkU*JqkL+nwX@@47`5>w=4h(9.`GCRUxHPeR`5Mjol(dUWxZa(>STrPkrJiWx`5U7F#.g*jrohGg`cg:lSTvEY/EV_7H4Q9[Z%cnv;JQYZ5q.l7Zeas:HOIZOB?G<Nald$qs]@]L<J7bR*>gv:[7MI2k).'2($5FNP&EQ(,)U]W]+fh18.vsai00);D3@4ku5P?DP8aJt+;qUM]=+b'8@;mViBKx0DE[-auGl8:PJ&Dj+M6OC]O^((##]`0i)drT;-7X`=-H3[igUnPG-NZlo.#k@h#=Ork$m>a>$-?Tm$UV(?#P6YY#'/###xe7q.73rI3*pP/$1>s9)W,JrM7SN]'/4C#v$U`0#V.[0>xQsH$fEmPMgY2u7Kh(G%siIfLSoS+MK2eTM$=5,M8p`A.;_R%#u[K#$x4AG8.kK/HSB==-'Ie/QTtG?-.*^N-4B/ZM_3YlQC7(p7q)&](`6_c)$/*JL(L-^(]$wIM`dPtOdGA,U3:w2M-0<q-]L_?^)1vw'.,MRsqVr.L;aN&#/EgJ)PBc[-f>+WomX2u7lqM2iEumMTcsF?-aT=Z-97UEnXglEn1K-bnEO`guFt(c%=;Am_Qs@jLooI&NX;]0#j4#F14;gl8-GQpgwhrq8'=l_f-b49'UOqkLu7-##oDY2L(te+Mch&gLYtJ,MEtJfLh'x'M=$CS-ZZ%P]8bZ>#S?YY#%Q&q'3^Fw&?D)UDNrocM3A76//oL?#h7gl85[qW/NDOk%16ij;+:1a'iNIdb-ou8."
	.ascii "P*w,v5#EI$TWS>Pot-R*H'-SEpA:g)f+O$%%`kA#G=8RMmG1&O`>to8bC]T&$,n.LoO>29sp3dt-52U%VM#q7'DHpg+#Z9%H[K<L%a2E-grWVM3@2=-k22tL]4$##6We'8UJCKE[d_=%wI;'6X-GsLX4j^SgJ$##R*w,vP3wK#iiW&#*h^D&R?jp7+/u&#(AP##XU8c$fSYW-J95_-Dp[g9wcO&#M-h1OcJlc-*vpw0xUX&#OQFKNX@QI'IoPp7nb,QU//MQ&ZDkKP)X<WSVL(68uVl&#c'[0#(s1X&xm$Y%B7*K:eDA323j998GXbA#pwMs-jgD$9QISB-A_(aN4xoFM^@C58D0+Q+q3n0#3U1InDjF682-SjMXJK)(h$hxua_K]ul92%'BOU&#BRRh-slg8KDlr:%L71Ka:.A;%YULjDPmL<LYs8i#XwJOYaKPKc1h:'9Ke,g)b),78=I39B;xiY$bgGw-&.Zi9InXDuYa%G*f2Bq7mn9^#p1vv%#(Wi-;/Z5ho;#2:;%d&#x9v68C5g?ntX0X)pT`;%pB3q7mgGN)3%(P8nTd5L7GeA-GL@+%J3u2:(Yf>et`e;)f#Km8&+DC$I46>#Kr]]u-[=99tts1.qb#q72g1WJO81q+eN'03'eM>&1XxY-caEnOj%2n8)),?ILR5^.Ibn<-X-Mq7[a82Lq:F&#ce+S9wsCK*x`569E8ew'He]h:sI[2LM$[guka3ZRd6:t%IG:;$%YiJ:Nq=?eAw;/:nnDq0(CYcMpG)qLN4$##&J<j$UpK<Q4a1]MupW^-sj_$%[HK%'F####QRZJ::Y3EGl4'@%FkiAOg#p[##O`gukTfBHagL<LHw%q&OV0##F=6/:chIm0@eCP8X]:kFI%hl8hgO@RcBhS-@Qb$%+m=hPDLg*%K8ln(wcf3/'DW-$.lR?n[nCH-eXOONTJlh:.RYF%3'p6sq:UIMA945&^HFS87@$EP2iG<-lCO$%c`uKGD3rC$x0BL8aFn--`ke%#HMP'vh1/R&O_J9'um,.<tx[@%wsJk&bUT2`0uMv7gg#qp/ij.L56'hl;.s5CUrxjOM7-##.l+Au'A&O:-T72L]P`&=;ctp'XScX*rU.>-XTt,%OVU4)S1+R-#dg0/Nn?Ku1^0f$B*P:Rowwm-`0PKjYDDM'3]d39VZHEl4,.j']Pk-M.h^&:0FACm$maq-&sgw0t7/6(^xtk%LuH88Fj-ekm>GA#_>568x6(OFRl-IZp`&b,_P'$M<Jnq79VsJW/mWS*PUiq76;]/NM_>hLbxfc$mj`,O;&%W2m`Zh:/)Uetw:aJ%]K9h:TcF]u_-Sj9,VK3M.*'&0D[Ca]J9gp8,kAW]%(?A%R$f<->Zts'^kn=-^@c4%-pY6qI%J%1IGxfLU9CP8cbPlXv);C=b),<2mOvP8up,UVf3839acAWAW-W?#ao/^#%KYo8fRULNd2.>%m]UK:n%r$'sw]J;5pAoO_#2mO3n,'=H5(etHg*`+RLgv>=4U8guD$I%D:W>-r5V*%j*W:Kvej.Lp$<M-SGZ':+Q_k+uvOSLiEo(<aD/K<CCc`'Lx>'?;++O'>()jLR-^u68PHm8ZFWe+ej8h:9r6L*0//c&iH&R8pRbA#Kjm%upV1g:a_#Ur7FuA#(tRh#.Y5K+@?3<-8m0$PEn;J:rh6?I6uG<-`wMU'ircp0LaE_OtlMb&1#6T.#FDKu#1Lw%u%+GM+X'e?YLfjM[VO0MbuFp7;>Q&#WIo)0@F%q7c#4XAXN-U&VB<HFF*qL($/V,;(kXZejWO`<[5??ewY(*9=%wDc;,u<'9t3W-(H1th3+G]ucQ]kLs7df($/*JL]@*t7Bu_G3_7mp7<iaQjO@.kLg;x3B0lqp7Hf,^Ze7-##@/c58Mo(3;knp0%)A7?-W+eI'o8)b<nKnw'Ho8C=Y>pqB>0ie&jhZ[?iLR@@_AvA-iQC(=ksRZRVp7`.=+NpBC%rh&3]R:8XDmE5^V8O(x<<aG"
	.ascii "/1N$#FX$0V5Y6x'aErI3I$7x%E`v<-BY,)%-?Psf*l?%C3.mM(=/M0:JxG'?7WhH%o'a<-80g0NBxoO(GH<dM]n.+%q@jH?f.UsJ2Ggs&4<-e47&Kl+f//9@`b+?.TeN_&B8Ss?v;^Trk;f#YvJkl&w$]>-+k?'(<S:68tq*WoDfZu';mM?8X[ma8W%*`-=;D.(nc7/;)g:T1=^J$&BRV(-lTmNB6xqB[@0*o.erM*<SWF]u2=st-*(6v>^](H.aREZSi,#1:[IXaZFOm<-ui#qUq2$##Ri;u75OK#(RtaW-K-F`S+cF]uN`-KMQ%rP/Xri.LRcB##=YL3BgM/3MD?@f&1'BW-)Ju<L25gl8uhVm1hL$##*8###'A3/LkKW+(^rWX?5W_8g)a(m&K8P>#bmmWCMkk&#TR`C,5d>g)F;t,4:@_l8G/5h4vUd%&%950:VXD'QdWoY-F$BtUwmfe$YqL'8(PWX(P?^@Po3$##`MSs?DWBZ/S>+4%>fX,VWv/w'KD`LP5IbH;rTV>n3cEK8U#bX]l-/V+^lj3;vlMb&[5YQ8#pekX9JP3XUC72L,,?+Ni&co7ApnO*5NK,((W-i:$,kp'UDAO(G0Sq7MVjJsbIu)'Z,*[>br5fX^:FPAWr-m2KgL<LUN098kTF&#lvo58=/vjDo;.;)Ka*hLR#/k=rKbxuV`>Q_nN6'8uTG&#1T5g)uLv:873UpTLgH+#FgpH'_o1780Ph8KmxQJ8#H72L4@768@Tm&Qh4CB/5OvmA&,Q&QbUoi$a_%3M01H)4x7I^&KQVgtFnV+;[Pc>[m4k//,]1?#`VY[Jr*3&&slRfLiVZJ:]?=K3Sw=[$=uRB?3xk48@aeg<Z'<$#4H)6,>e0jT6'N#(q%.O=?2S]u*(m<-V8J'(1)G][68hW$5'q[GC&5j`TE?m'esFGNRM)j,ffZ?-qx8;->g4t*:CIP/[Qap7/9'#(1sao7w-.qNUdkJ)tCF&#B^;xGvn2r9FEPFFFcL@.iFNkTve$m%#QvQS8U@)2Z+3K:AKM5isZ88+dKQ)W6>J%CL<KE>`.d*(B`-n8D9oK<Up]c$X$(,)M8Zt7/[rdkqTgl-0cuGMv'?>-XV1q['-5k'cAZ69e;D_?$ZPP&s^+7])$*$#@QYi9,5P&#9r+$%CE=68>K8r0=dSC%%(@p7.m7jilQ02'0-VWAg<a/''3u.=4L$Y)6k/K:_[3=&jvL<L0C/2'v:^;-DIBW,B4E68:kZ;%?8(Q8BH=kO65BW?xSG&#@uU,DS*,?.+(o(#1vCS8#CHF>TlGW'b)Tq7VT9q^*^$$.:&N@@$&)WHtPm*5_rO0&e%K&#-30j(E4#'Zb.o/(Tpm$>K'f@[PvFl,hfINTNU6u'0pao7%XUp9]5.>%h`8_=VYbxuel.NTSsJfLacFu3B'lQSu/m6-Oqem8T+oE--$0a/k]uj9EwsG>%veR*hv^BFpQj:K'#SJ,sB-'#](j.Lg92rTw-*n%@/;39rrJF,l#qV%OrtBeC6/,;qB3ebNW[?,Hqj2L.1NP&GjUR=1D8QaS3Up&@*9wP?+lo7b?@%'k4`p0Z$22%K3+iCZj?XJN4Nm&+YF]u@-W$U%VEQ/,,>>#)D<h#`)h0:<Q6909ua+&VU%n2:cG3FJ-%@Bj-DgLr`Hw&HAKjKjseK</xKT*)B,N9X3]krc12t'pgTV(Lv-tL[xg_%=M_q7a^x?7Ubd>#%8cY#YZ?=,`Wdxu/ae&#w6)R89tI#6@s'(6Bf7a&?S=^ZI_kS&ai`&=tE72L_D,;^R)7[$s<Eh#c&)q.MXI%#v9ROa5FZO%sF7q7Nwb&#ptUJ:aqJe$Sl68%.D###EC><?-aF&#RNQv>o8lKN%5/$(vdfq7+ebA#u1p]ovUKW&Y%q]'>$1@-[xfn$7ZTp7mM,G,Ko7a&Gu%G[RMxJs[0MM%wci.LFDK)(<c`Q8N)jEIF*+?P2a8g%)$q]o2aH8C&<SibC/q,(e:v;-b#6[$NtDZ8"
	.ascii "4Je2KNvB#$P5?tQ3nt(0d=j.LQf./Ll33+(;q3L-w=8dX$#WF&uIJ@-bfI>%:_i2B5CsR8&9Z&#=mPEnm0f`<&c)QL5uJ#%u%lJj+D-r;BoF&#4DoS97h5g)E#o:&S4weDF,9^Hoe`h*L+_a*NrLW-1pG_&2UdB86e%B/:=>)N4xeW.*wft-;$'58-ESqr<b?UI(_%@[P46>#U`'6AQ]m&6/`Z>#S?YY#Vc;r7U2&326d=w&H####?TZ`*4?&.MK?LP8Vxg>$[QXc%QJv92.(Db*B)gb*BM9dM*hJMAo*c&#b0v=Pjer]$gG&JXDf->'StvU7505l9$AFvgYRI^&<^b68?j#q9QX4SM'RO#&sL1IM.rJfLUAj221]d##DW=m83u5;'bYx,*Sl0hL(W;;$doB&O/TQ:(Z^xBdLjL<Lni;''X.`$#8+1GD:k$YUWsbn8ogh6rxZ2Z9]%nd+>V#*8U_72Lh+2Q8Cj0i:6hp&$C/:p(HK>T8Y[gHQ4`4)'$Ab(Nof%V'8hL&#<NEdtg(n'=S1A(Q1/I&4([%dM`,Iu'1:_hL>SfD07&6D<fp8dHM7/g+tlPN9J*rKaPct&?'uBCem^jn%9_K)<,C5K3s=5g&GmJb*[SYq7K;TRLGCsM-$$;S%:Y@r7AK0pprpL<Lrh,q7e/%KWK:50I^+m'vi`3?%Zp+<-d+$L-Sv:@.o19n$s0&39;kn;S%BSq*$3WoJSCLweV[aZ'MQIjO<7;X-X;&+dMLvu#^UsGEC9WEc[X(wI7#2.(F0jV*eZf<-Qv3J-c+J5AlrB#$p(H68LvEA'q3n0#m,[`*8Ft)FcYgEud]CWfm68,(aLA$@EFTgLXoBq/UPlp7:d[/;r_ix=:TF`S5H-b<LI&HY(K=h#)]Lk$K14lVfm:x$H<3^Ql<M`$OhapBnkup'D#L$Pb_`N*g]2e;X/Dtg,bsj&K#2[-:iYr'_wgH)NUIR8a1n#S?Yej'h8^58UbZd+^FKD*T@;6A7aQC[K8d-(v6GI$x:T<&'Gp5Uf>@M.*J:;$-rv29'M]8qMv-tLp,'886iaC=Hb*YJoKJ,(j%K=H`K.v9HggqBIiZu'QvBT.#=)0ukruV&.)3=(^1`o*Pj4<-<aN((^7('#Z0wK#5GX@7u][`*S^43933A4rl][`*O4CgLEl]v$1Q3AeF37dbXk,.)vj#x'd`;qgbQR%FW,2(?LO=s%Sc68%NP'##Aotl8x=BE#j1UD([3$M(]UI2LX3RpKN@;/#f'f/&_mt&F)XdF<9t4)Qa.*kTLwQ'(TTB9.xH'>#MJ+gLq9-##@HuZPN0]u:h7.T..G:;$/Usj(T7`Q8tT72LnYl<-qx8;-HV7Q-&Xdx%1a,hC=0u+HlsV>nuIQL-5<N?)NBS)QN*_I,?&)2'IM%L3I)X((e/dl2&8'<M:^#M*Q+[T.Xri.LYS3v%fF`68h;b-X[/En'CR.q7E)p'/kle2HM,u;^%OKC-N+Ll%F9CF<Nf'^#t2L,;27W:0O@6##U6W7:$rJfLWHj$#)woqBefIZ.PK<b*t7ed;p*_m;4ExK#h@&]>_>@kXQtMacfD.m-VAb8;IReM3$wf0''hra*so568'Ip&vRs849'MRYSp%:t:h5qSgwpEr$B>Q,;s(C#$)`svQuF$##-D,##,g68@2[T;.XSdN9Qe)rpt._K-#5wF)sP'##p#C0c%-Gb%hd+<-j'Ai*x&&HMkT]C'OSl##5RG[JXaHN;d'uA#x._U;.`PU@(Z3dt4r152@:v,'R.Sj'w#0<-;kPI)FfJ&#AYJ&#//)>-k=m=*XnK$>=)72L]0I%>.G690a:$##<,);?;72#?x9+d;^V'9;jY@;)br#q^YQpx:X#Te$Z^'=-=bGhLf:D6&bNwZ9-ZD#n^9HhLMr5G;']d&6'wYmTFmL<LD)F^%[tC'8;+9E#C$g%#5Y>q9wI>P(9mI[>kC-ekLC/R&CH+s'B;K-M6$EB%is00:+A4[7xks.LrNk0&E)wIL"
	.ascii "YF@2L'0Nb$+pv<(2.768/FrY&h$^3i&@+G%JT'<-,v`3;_)I9M^AE]CN?Cl2AZg+%4iTpT3<n-&%H%b<FDj2M<hH=&Eh<2Len$b*aTX=-8QxN)k11IM1c^j%9s<L<NFSo)B?+<-(GxsF,^-Eh@$4dXhN$+#rxK8'je'D7k`e;)2pYwPA'_p9&@^18ml1^[@g4t*[JOa*[=Qp7(qJ_oOL^('7fB&Hq-:sf,sNj8xq^>$U4O]GKx'm9)b@p7YsvK3w^YR-CdQ*:Ir<($u&)#(&?L9Rg3H)4fiEp^iI9O8KnTj,]H?D*r7'M;PwZ9K0E^k&-cpI;.p/6_vwoFMV<->#%Xi.LxVnrU(4&8/P+:hLSKj$#U%]49t'I:rgMi'FL@a:0Y-uA[39',(vbma*hU%<-SRF`Tt:542R_VV$p@[p8DV[A,?1839FWdF<TddF<9Ah-6&9tWoDlh]&1SpGMq>Ti1O*H&#(AL8[_P%.M>v^-))qOT*F5Cq0`Ye%+$B6i:7@0IX<N+T+0MlMBPQ*Vj>SsD<U4JHY8kD2)2fU/M#$e.)T4,_=8hLim[&);?UkK'-x?'(:siIfL<$pFM`i<?%W(mGDHM%>iWP,##P`%/L<eXi:@Z9C.7o=@(pXdAO/NLQ8lPl+HPOQa8wD8=^GlPa8TKI1CjhsCTSLJM'/Wl>-S(qw%sf/@%#B6;/U7K]uZbi^Oc^2n<bhPmUkMw>%t<)'mEVE''n`WnJra$^TKvX5B>;_aSEK',(hwa0:i4G?.Bci.(X[?b*($,=-n<.Q%`(X=?+@Am*Js0&=3bh8K]mL<LoNs'6,'85`0?t/'_U59@]ddF<#LdF<eWdF<OuN/45rY<-L@&#+fm>69=Lb,OcZV/);TTm8VI;?%OtJ<(b4mq7M6:u?KRdF<gR@2L=FNU-<b[(9c/ML3m;Z[$oF3g)GAWqpARc=<ROu7cL5l;-[A]%/+fsd;l#SafT/f*W]0=O'$(Tb<[)*@e775R-:Yob%g*>l*:xP?Yb.5)%w_I?7uk5JC+FS(m#i'k.'a0i)9<7b'fs'59hq$*5Uhv##pi^8+hIEBF`nvo`;'l0.^S1<-wUK2/Coh58KKhLjM=SO*rfO`+qC`W-On.=AJ56>>i2@2LH6A:&5q`?9I3@@'04&p2/LVa*T-4<-i3;M9UvZd+N7>b*eIwg:CC)c<>nO&#<IGe;__.thjZl<%w(Wk2xmp4Q@I#I9,DF]u7-P=.-_:YJ]aS@V?6*C()dOp7:WL,b&3Rg/.cmM9&r^>$(>.Z-I&J(Q0Hd5Q%7Co-b`-c<N(6r@ip+AurK<m86QIth*#v;-OBqi+L7wDE-Ir8K['m+DDSLwK&/.?-V%U_%3:qKNu$_b*B-kp7NaD'QdWQPKYq[@>P)hI;*_F]u`Rb[.j8_Q/<&>uu+VsH$sM9TA%?)(vmJ80),P7E>)tjD%2L=-t#fK[%`v=Q8<FfNkgg^oIbah*#8/Qt$F&:K*-(N/'+1vMB,u()-a.VUU*#[e%gAAO(S>WlA2);Sa>gXm8YB`1d@K#n]76-a$U,mF<fX]idqd)<3,]J7JmW4`6]uks=4-72L(jEk+:bJ0M^q-8Dm_Z?0olP1C9Sa&H[d&c$ooQUj]Exd*3ZM@-WGW2%s',B-_M%>%Ul:#/'xoFM9QX-$.QN'>[%$Z$uF6pA6Ki2O5:8w*vP1<-1`[G,)-m#>0`P&#eb#.3i)rtB61(o'$?X3B</R90;eZ]%Ncq;-Tl]#F>2Qft^ae_5tKL9MUe9b*sLEQ95C&`=G?@Mj=wh*'3E>=-<)Gt*Iw)'QG:`@IwOf7&]1i'S01B+Ev/Nac#9S;=;YQpg_6U`*kVY39xK,[/6Aj7:'1Bm-_1EYfa1+o&o4hp7KN_Q(OlIo@S%;jVdn0'1<Vc52=u`3^o-n1'g4v58Hj&6_t7$##?M)c<$bgQ_'SY((-xkA#Y(,p'H9rIVY-b,'%bCPF7.J<Up^,(dU1VY*5#WkTU>h19w,WQhLI)3S#f$2("
	.ascii "eb,jr*b;3Vw]*7NH%$c4Vs,eD9>XW8?N]o+(*pgC%/72LV-u<Hp,3@e^9UB1J+ak9-TN/mhKPg+AJYd$MlvAF_jCK*.O-^(63adMT->W%iewS8W6m2rtCpo'RS1R84=@paTKt)>=%&1[)*vp'u+x,VrwN;&]kuO9JDbg=pO$J*.jVe;u'm0dr9l,<*wMK*Oe=g8lV_KEBFkO'oU]^=[-792#ok,)i]lR8qQ2oA8wcRCZ^7w/Njh;?.stX?Q1>S1q4Bn$)K1<-rGdO'$Wr.Lc.CG)$/*JL4tNR/,SVO3,aUw'DJN:)Ss;wGn9A32ijw%FL+Z0Fn.U9;reSq)bmI32U==5ALuG&#Vf1398/pVo1*c-(aY168o<`JsSbk-,1N;$>0:OUas(3:8Z972LSfF8eb=c-;>SPw7.6hn3m`9^Xkn(r.qS[0;T%&Qc=+STRxX'q1BNk3&*eu2;&8q$&x>Q#Q7^Tf+6<(d%ZVmj2bDi%.3L2n+4W'$PiDDG)g,r%+?,$@?uou5tSe2aN_AQU*<h`e-GI7)?OK2A.d7_c)?wQ5AS@DL3r#7fSkgl6-++D:'A,uq7SvlB$pcpH'q3n0#_%dY#xCpr-l<F0NR@-##FEV6NTF6##$l84N1w?AO>'IAOURQ##V^Fv-XFbGM7Fl(N<3DhLGF%q.1rC$#:T__&Pi68%0xi_&[qFJ(77j_&JWoF.V735&T,[R*:xFR*K5>>#`bW-?4Ne_&6Ne_&6Ne_&n`kr-#GJcM6X;uM6X;uM(.a..^2TkL%oR(#;u.T%fAr%4tJ8&><1=GHZ_+m9/#H1F^R#SC#*N=BA9(D?v[UiFY>>^8p,KKF.W]L29uLkLlu/+4T<XoIB&hx=T1PcDaB&;HH+-AFr?(m9HZV)FKS8JCw;SD=6[^/DZUL`EUDf]GGlG&>w$)F./^n3+rlo+DB;5sIYGNk+i1t-69Jg--0pao7Sm#K)pdHW&;LuDNH@H>#/X-TI(;P>#,Gc>#0Su>#4`1?#8lC?#<xU?#@.i?#D:%@#HF7@#LRI@#P_[@#Tkn@#Xw*A#]-=A#a9OA#d<F&#*;G##.GY##2Sl##6`($#:l:$#>xL$#B.`$#F:r$#JF.%#NR@%#R_R%#Vke%#Zww%#_-4&#3^Rh%Sflr-k'MS.o?.5/sWel/wpEM0%3'/1)K^f1-d>G21&v(35>V`39V7A4=onx4A1OY5EI0;6Ibgr6M$HS7Q<)58C5w,;WoA*#[%T*#`1g*#d=#+#hI5+#lUG+#pbY+#tnl+#x$),#&1;,#*=M,#.I`,#2Ur,#6b.-#;w[H#iQtA#m^0B#qjBB#uvTB##-hB#'9$C#+E6C#/QHC#3^ZC#7jmC#;v)D#?,<D#C8ND#GDaD#KPsD#O]/E#g1A5#KA*1#gC17#MGd;#8(02#L-d3#rWM4#Hga1#,<w0#T.j<#O#'2#CYN1#qa^:#_4m3#o@/=#eG8=#t8J5#`+78#4uI-#m3B2#SB[8#Q0@8#i[*9#iOn8#1Nm;#^sN9#qh<9#:=x-#P;K2#$%X9#bC+.#Rg;<#mN=.#MTF.#RZO.#2?)4#Y#(/#[)1/#b;L/#dAU/#0Sv;#lY$0#n`-0#sf60#(F24#wrH0#%/e0#TmD<#%JSMFove:CTBEXI:<eh2g)B,3h2^G3i;#d3jD>)4kMYD4lVu`4m`:&5niUA5@(A5BA1]PBB:xlBCC=2CDLXMCEUtiCf&0g2'tN?PGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CPGT4CP-qekC`.9kEg^+F$kwViFJTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5KTB&5o,^<-28ZI'O?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xpO?;xp;7q-#lLYI:xvD=#\0"
.lcomm _ZL9stb__dout,8,8
.lcomm _ZL13stb__barrier4,8,8
.lcomm _ZL13stb__barrier2,8,8
.lcomm _ZL12stb__barrier,8,8
	.align 8
_ZZN11ImFontAtlas18GetGlyphRangesThaiEvE6ranges:
	.word	32
	.word	255
	.word	3584
	.word	3711
	.word	0
	.align 16
_ZZN11ImFontAtlas22GetGlyphRangesCyrillicEvE6ranges:
	.word	32
	.word	255
	.word	1024
	.word	1327
	.word	11744
	.word	11775
	.word	-22976
	.word	-22881
	.word	0
.lcomm _ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges,7802,32
.lcomm _ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE20full_ranges_unpacked,1,1
	.align 16
_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11base_ranges:
	.word	32
	.word	255
	.word	12288
	.word	12543
	.word	12784
	.word	12799
	.word	-256
	.word	-17
	.align 32
_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE19offsets_from_0x4E00:
	.word	-1
	.word	0
	.word	1
	.word	3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	5
	.word	1
	.word	1
	.word	0
	.word	7
	.word	4
	.word	6
	.word	10
	.word	0
	.word	1
	.word	9
	.word	9
	.word	7
	.word	1
	.word	3
	.word	19
	.word	1
	.word	10
	.word	7
	.word	1
	.word	0
	.word	1
	.word	0
	.word	5
	.word	1
	.word	0
	.word	6
	.word	4
	.word	2
	.word	6
	.word	0
	.word	0
	.word	12
	.word	6
	.word	8
	.word	0
	.word	3
	.word	5
	.word	0
	.word	1
	.word	0
	.word	9
	.word	0
	.word	0
	.word	8
	.word	1
	.word	1
	.word	3
	.word	4
	.word	5
	.word	13
	.word	0
	.word	0
	.word	8
	.word	2
	.word	17
	.word	4
	.word	3
	.word	1
	.word	1
	.word	9
	.word	6
	.word	0
	.word	0
	.word	0
	.word	2
	.word	1
	.word	3
	.word	2
	.word	22
	.word	1
	.word	9
	.word	11
	.word	1
	.word	13
	.word	1
	.word	3
	.word	12
	.word	0
	.word	5
	.word	9
	.word	2
	.word	0
	.word	6
	.word	12
	.word	5
	.word	3
	.word	12
	.word	4
	.word	1
	.word	2
	.word	16
	.word	1
	.word	1
	.word	4
	.word	6
	.word	5
	.word	3
	.word	0
	.word	6
	.word	13
	.word	15
	.word	5
	.word	12
	.word	8
	.word	14
	.word	0
	.word	0
	.word	6
	.word	15
	.word	3
	.word	6
	.word	0
	.word	18
	.word	8
	.word	1
	.word	6
	.word	14
	.word	1
	.word	5
	.word	4
	.word	12
	.word	24
	.word	3
	.word	13
	.word	12
	.word	10
	.word	24
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	1
	.word	1
	.word	2
	.word	9
	.word	10
	.word	2
	.word	2
	.word	0
	.word	0
	.word	3
	.word	3
	.word	1
	.word	0
	.word	3
	.word	8
	.word	0
	.word	3
	.word	2
	.word	4
	.word	4
	.word	1
	.word	6
	.word	11
	.word	10
	.word	14
	.word	6
	.word	15
	.word	3
	.word	4
	.word	15
	.word	1
	.word	0
	.word	0
	.word	5
	.word	2
	.word	2
	.word	0
	.word	0
	.word	1
	.word	6
	.word	5
	.word	5
	.word	6
	.word	0
	.word	3
	.word	6
	.word	5
	.word	0
	.word	0
	.word	1
	.word	0
	.word	11
	.word	2
	.word	2
	.word	8
	.word	4
	.word	7
	.word	0
	.word	10
	.word	0
	.word	1
	.word	2
	.word	17
	.word	19
	.word	3
	.word	0
	.word	2
	.word	5
	.word	0
	.word	6
	.word	2
	.word	4
	.word	4
	.word	6
	.word	1
	.word	1
	.word	11
	.word	2
	.word	0
	.word	3
	.word	1
	.word	2
	.word	1
	.word	2
	.word	10
	.word	7
	.word	6
	.word	3
	.word	16
	.word	0
	.word	8
	.word	24
	.word	0
	.word	0
	.word	3
	.word	1
	.word	1
	.word	3
	.word	0
	.word	1
	.word	6
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	1
	.word	5
	.word	15
	.word	0
	.word	1
	.word	0
	.word	0
	.word	2
	.word	11
	.word	19
	.word	1
	.word	4
	.word	19
	.word	7
	.word	6
	.word	5
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	5
	.word	1
	.word	0
	.word	1
	.word	9
	.word	0
	.word	0
	.word	5
	.word	0
	.word	2
	.word	0
	.word	1
	.word	0
	.word	3
	.word	0
	.word	11
	.word	3
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	9
	.word	3
	.word	6
	.word	4
	.word	12
	.word	0
	.word	14
	.word	0
	.word	0
	.word	29
	.word	10
	.word	8
	.word	0
	.word	14
	.word	37
	.word	13
	.word	0
	.word	31
	.word	16
	.word	19
	.word	0
	.word	8
	.word	30
	.word	1
	.word	20
	.word	8
	.word	3
	.word	48
	.word	21
	.word	1
	.word	0
	.word	12
	.word	0
	.word	10
	.word	44
	.word	34
	.word	42
	.word	54
	.word	11
	.word	18
	.word	82
	.word	0
	.word	2
	.word	1
	.word	2
	.word	12
	.word	1
	.word	0
	.word	6
	.word	2
	.word	17
	.word	2
	.word	12
	.word	7
	.word	0
	.word	7
	.word	17
	.word	4
	.word	2
	.word	6
	.word	24
	.word	23
	.word	8
	.word	23
	.word	39
	.word	2
	.word	16
	.word	23
	.word	1
	.word	0
	.word	5
	.word	1
	.word	2
	.word	15
	.word	14
	.word	5
	.word	6
	.word	2
	.word	11
	.word	0
	.word	8
	.word	6
	.word	2
	.word	2
	.word	2
	.word	14
	.word	20
	.word	4
	.word	15
	.word	3
	.word	4
	.word	11
	.word	10
	.word	10
	.word	2
	.word	5
	.word	2
	.word	1
	.word	30
	.word	2
	.word	1
	.word	0
	.word	0
	.word	22
	.word	5
	.word	5
	.word	0
	.word	3
	.word	1
	.word	5
	.word	4
	.word	1
	.word	0
	.word	0
	.word	2
	.word	2
	.word	21
	.word	1
	.word	5
	.word	1
	.word	2
	.word	16
	.word	2
	.word	1
	.word	3
	.word	4
	.word	0
	.word	8
	.word	4
	.word	0
	.word	0
	.word	5
	.word	14
	.word	11
	.word	2
	.word	16
	.word	1
	.word	13
	.word	1
	.word	7
	.word	0
	.word	22
	.word	15
	.word	3
	.word	1
	.word	22
	.word	7
	.word	14
	.word	22
	.word	19
	.word	11
	.word	24
	.word	18
	.word	46
	.word	10
	.word	20
	.word	64
	.word	45
	.word	3
	.word	2
	.word	0
	.word	4
	.word	5
	.word	0
	.word	1
	.word	4
	.word	25
	.word	1
	.word	0
	.word	0
	.word	2
	.word	10
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	1
	.word	2
	.word	0
	.word	0
	.word	9
	.word	1
	.word	2
	.word	0
	.word	0
	.word	0
	.word	2
	.word	5
	.word	2
	.word	1
	.word	1
	.word	5
	.word	5
	.word	8
	.word	1
	.word	1
	.word	1
	.word	5
	.word	1
	.word	4
	.word	9
	.word	1
	.word	3
	.word	0
	.word	1
	.word	0
	.word	1
	.word	1
	.word	2
	.word	0
	.word	0
	.word	2
	.word	0
	.word	1
	.word	8
	.word	22
	.word	8
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	4
	.word	2
	.word	1
	.word	0
	.word	9
	.word	8
	.word	5
	.word	0
	.word	9
	.word	1
	.word	30
	.word	24
	.word	2
	.word	6
	.word	4
	.word	39
	.word	0
	.word	14
	.word	5
	.word	16
	.word	6
	.word	26
	.word	179
	.word	0
	.word	2
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	5
	.word	2
	.word	9
	.word	6
	.word	0
	.word	2
	.word	5
	.word	16
	.word	7
	.word	5
	.word	1
	.word	1
	.word	0
	.word	2
	.word	4
	.word	4
	.word	7
	.word	15
	.word	13
	.word	14
	.word	0
	.word	0
	.word	3
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	2
	.word	1
	.word	6
	.word	4
	.word	5
	.word	1
	.word	4
	.word	9
	.word	0
	.word	3
	.word	1
	.word	8
	.word	0
	.word	0
	.word	10
	.word	5
	.word	0
	.word	43
	.word	0
	.word	2
	.word	6
	.word	8
	.word	4
	.word	0
	.word	2
	.word	0
	.word	0
	.word	9
	.word	6
	.word	0
	.word	9
	.word	3
	.word	1
	.word	6
	.word	20
	.word	14
	.word	6
	.word	1
	.word	4
	.word	0
	.word	7
	.word	2
	.word	3
	.word	0
	.word	2
	.word	0
	.word	5
	.word	0
	.word	3
	.word	1
	.word	0
	.word	3
	.word	9
	.word	7
	.word	0
	.word	3
	.word	4
	.word	0
	.word	4
	.word	9
	.word	1
	.word	6
	.word	0
	.word	9
	.word	0
	.word	0
	.word	2
	.word	3
	.word	10
	.word	9
	.word	28
	.word	3
	.word	6
	.word	2
	.word	4
	.word	1
	.word	2
	.word	32
	.word	4
	.word	1
	.word	18
	.word	2
	.word	0
	.word	3
	.word	1
	.word	5
	.word	30
	.word	10
	.word	0
	.word	2
	.word	2
	.word	2
	.word	0
	.word	7
	.word	9
	.word	8
	.word	11
	.word	10
	.word	11
	.word	7
	.word	2
	.word	13
	.word	7
	.word	5
	.word	10
	.word	0
	.word	3
	.word	40
	.word	2
	.word	0
	.word	1
	.word	6
	.word	12
	.word	0
	.word	4
	.word	5
	.word	1
	.word	5
	.word	11
	.word	11
	.word	21
	.word	4
	.word	8
	.word	3
	.word	7
	.word	8
	.word	8
	.word	33
	.word	5
	.word	23
	.word	0
	.word	0
	.word	19
	.word	8
	.word	8
	.word	2
	.word	3
	.word	0
	.word	6
	.word	1
	.word	1
	.word	1
	.word	5
	.word	1
	.word	27
	.word	4
	.word	2
	.word	5
	.word	0
	.word	3
	.word	5
	.word	6
	.word	3
	.word	1
	.word	0
	.word	3
	.word	1
	.word	12
	.word	5
	.word	3
	.word	3
	.word	2
	.word	0
	.word	7
	.word	7
	.word	2
	.word	1
	.word	0
	.word	4
	.word	0
	.word	1
	.word	1
	.word	2
	.word	0
	.word	10
	.word	10
	.word	6
	.word	2
	.word	5
	.word	9
	.word	7
	.word	5
	.word	15
	.word	15
	.word	21
	.word	6
	.word	11
	.word	5
	.word	20
	.word	4
	.word	3
	.word	5
	.word	5
	.word	2
	.word	5
	.word	0
	.word	2
	.word	1
	.word	0
	.word	1
	.word	7
	.word	28
	.word	0
	.word	9
	.word	0
	.word	5
	.word	12
	.word	5
	.word	5
	.word	18
	.word	30
	.word	0
	.word	12
	.word	3
	.word	3
	.word	21
	.word	16
	.word	25
	.word	32
	.word	9
	.word	3
	.word	14
	.word	11
	.word	24
	.word	5
	.word	66
	.word	9
	.word	1
	.word	2
	.word	0
	.word	5
	.word	9
	.word	1
	.word	5
	.word	1
	.word	8
	.word	0
	.word	8
	.word	3
	.word	3
	.word	0
	.word	1
	.word	15
	.word	1
	.word	4
	.word	8
	.word	1
	.word	2
	.word	7
	.word	0
	.word	7
	.word	2
	.word	8
	.word	3
	.word	7
	.word	5
	.word	3
	.word	7
	.word	10
	.word	2
	.word	1
	.word	0
	.word	0
	.word	2
	.word	25
	.word	0
	.word	6
	.word	4
	.word	0
	.word	10
	.word	0
	.word	4
	.word	2
	.word	4
	.word	1
	.word	12
	.word	5
	.word	38
	.word	4
	.word	0
	.word	4
	.word	1
	.word	10
	.word	5
	.word	9
	.word	4
	.word	0
	.word	14
	.word	4
	.word	2
	.word	5
	.word	18
	.word	20
	.word	21
	.word	1
	.word	3
	.word	0
	.word	5
	.word	0
	.word	7
	.word	0
	.word	3
	.word	7
	.word	1
	.word	3
	.word	1
	.word	1
	.word	8
	.word	1
	.word	0
	.word	0
	.word	0
	.word	3
	.word	2
	.word	5
	.word	2
	.word	11
	.word	6
	.word	0
	.word	13
	.word	1
	.word	3
	.word	9
	.word	1
	.word	12
	.word	0
	.word	16
	.word	6
	.word	2
	.word	1
	.word	0
	.word	2
	.word	1
	.word	12
	.word	6
	.word	13
	.word	11
	.word	2
	.word	0
	.word	28
	.word	1
	.word	7
	.word	8
	.word	14
	.word	13
	.word	8
	.word	13
	.word	0
	.word	2
	.word	0
	.word	5
	.word	4
	.word	8
	.word	10
	.word	2
	.word	37
	.word	42
	.word	19
	.word	6
	.word	6
	.word	7
	.word	4
	.word	14
	.word	11
	.word	18
	.word	14
	.word	80
	.word	7
	.word	6
	.word	0
	.word	4
	.word	72
	.word	12
	.word	36
	.word	27
	.word	7
	.word	7
	.word	0
	.word	14
	.word	17
	.word	19
	.word	164
	.word	27
	.word	0
	.word	5
	.word	10
	.word	7
	.word	3
	.word	13
	.word	6
	.word	14
	.word	0
	.word	2
	.word	2
	.word	5
	.word	3
	.word	0
	.word	6
	.word	13
	.word	0
	.word	0
	.word	10
	.word	29
	.word	0
	.word	4
	.word	0
	.word	3
	.word	13
	.word	0
	.word	3
	.word	1
	.word	6
	.word	51
	.word	1
	.word	5
	.word	28
	.word	2
	.word	0
	.word	8
	.word	0
	.word	20
	.word	2
	.word	4
	.word	0
	.word	25
	.word	2
	.word	10
	.word	13
	.word	10
	.word	0
	.word	16
	.word	4
	.word	0
	.word	1
	.word	0
	.word	2
	.word	1
	.word	7
	.word	0
	.word	1
	.word	8
	.word	11
	.word	0
	.word	0
	.word	1
	.word	2
	.word	7
	.word	2
	.word	23
	.word	11
	.word	6
	.word	6
	.word	4
	.word	16
	.word	2
	.word	2
	.word	2
	.word	0
	.word	22
	.word	9
	.word	3
	.word	3
	.word	5
	.word	2
	.word	0
	.word	15
	.word	16
	.word	21
	.word	2
	.word	9
	.word	20
	.word	15
	.word	15
	.word	5
	.word	3
	.word	9
	.word	1
	.word	0
	.word	0
	.word	1
	.word	7
	.word	7
	.word	5
	.word	4
	.word	2
	.word	2
	.word	2
	.word	38
	.word	24
	.word	14
	.word	0
	.word	0
	.word	15
	.word	5
	.word	6
	.word	24
	.word	14
	.word	5
	.word	5
	.word	11
	.word	0
	.word	21
	.word	12
	.word	0
	.word	3
	.word	8
	.word	4
	.word	11
	.word	1
	.word	8
	.word	0
	.word	11
	.word	27
	.word	7
	.word	2
	.word	4
	.word	9
	.word	21
	.word	59
	.word	0
	.word	1
	.word	39
	.word	3
	.word	60
	.word	62
	.word	3
	.word	0
	.word	12
	.word	11
	.word	0
	.word	3
	.word	30
	.word	11
	.word	0
	.word	13
	.word	88
	.word	4
	.word	15
	.word	5
	.word	28
	.word	13
	.word	1
	.word	4
	.word	48
	.word	17
	.word	17
	.word	4
	.word	28
	.word	32
	.word	46
	.word	0
	.word	16
	.word	0
	.word	18
	.word	11
	.word	1
	.word	8
	.word	6
	.word	38
	.word	11
	.word	2
	.word	6
	.word	11
	.word	38
	.word	2
	.word	0
	.word	45
	.word	3
	.word	11
	.word	2
	.word	7
	.word	8
	.word	4
	.word	30
	.word	14
	.word	17
	.word	2
	.word	1
	.word	1
	.word	65
	.word	18
	.word	12
	.word	16
	.word	4
	.word	2
	.word	45
	.word	123
	.word	12
	.word	56
	.word	33
	.word	1
	.word	4
	.word	3
	.word	4
	.word	7
	.word	0
	.word	0
	.word	0
	.word	3
	.word	2
	.word	0
	.word	16
	.word	4
	.word	2
	.word	4
	.word	2
	.word	0
	.word	7
	.word	4
	.word	5
	.word	2
	.word	26
	.word	2
	.word	25
	.word	6
	.word	11
	.word	6
	.word	1
	.word	16
	.word	2
	.word	6
	.word	17
	.word	77
	.word	15
	.word	3
	.word	35
	.word	0
	.word	1
	.word	0
	.word	5
	.word	1
	.word	0
	.word	38
	.word	16
	.word	6
	.word	3
	.word	12
	.word	3
	.word	3
	.word	3
	.word	0
	.word	9
	.word	3
	.word	1
	.word	3
	.word	5
	.word	2
	.word	9
	.word	0
	.word	18
	.word	0
	.word	25
	.word	1
	.word	3
	.word	32
	.word	1
	.word	72
	.word	46
	.word	6
	.word	2
	.word	7
	.word	1
	.word	3
	.word	14
	.word	17
	.word	0
	.word	28
	.word	1
	.word	40
	.word	13
	.word	0
	.word	20
	.word	15
	.word	40
	.word	6
	.word	38
	.word	24
	.word	12
	.word	43
	.word	1
	.word	1
	.word	9
	.word	0
	.word	12
	.word	6
	.word	0
	.word	6
	.word	2
	.word	4
	.word	19
	.word	3
	.word	7
	.word	1
	.word	48
	.word	0
	.word	9
	.word	5
	.word	0
	.word	5
	.word	6
	.word	9
	.word	6
	.word	10
	.word	15
	.word	2
	.word	11
	.word	19
	.word	3
	.word	9
	.word	2
	.word	0
	.word	1
	.word	10
	.word	1
	.word	27
	.word	8
	.word	1
	.word	3
	.word	6
	.word	1
	.word	14
	.word	0
	.word	26
	.word	0
	.word	27
	.word	16
	.word	3
	.word	4
	.word	9
	.word	6
	.word	2
	.word	23
	.word	9
	.word	10
	.word	5
	.word	25
	.word	2
	.word	1
	.word	6
	.word	1
	.word	1
	.word	48
	.word	15
	.word	9
	.word	15
	.word	14
	.word	3
	.word	4
	.word	26
	.word	60
	.word	29
	.word	13
	.word	37
	.word	21
	.word	1
	.word	6
	.word	4
	.word	0
	.word	2
	.word	11
	.word	22
	.word	23
	.word	16
	.word	16
	.word	2
	.word	2
	.word	1
	.word	3
	.word	0
	.word	5
	.word	1
	.word	6
	.word	4
	.word	0
	.word	0
	.word	4
	.word	0
	.word	0
	.word	8
	.word	3
	.word	0
	.word	2
	.word	5
	.word	0
	.word	7
	.word	1
	.word	7
	.word	3
	.word	13
	.word	2
	.word	4
	.word	10
	.word	3
	.word	0
	.word	2
	.word	31
	.word	0
	.word	18
	.word	3
	.word	0
	.word	12
	.word	10
	.word	4
	.word	1
	.word	0
	.word	7
	.word	5
	.word	7
	.word	0
	.word	5
	.word	4
	.word	12
	.word	2
	.word	22
	.word	10
	.word	4
	.word	2
	.word	15
	.word	2
	.word	8
	.word	9
	.word	0
	.word	23
	.word	2
	.word	197
	.word	51
	.word	3
	.word	1
	.word	1
	.word	4
	.word	13
	.word	4
	.word	3
	.word	21
	.word	4
	.word	19
	.word	3
	.word	10
	.word	5
	.word	40
	.word	0
	.word	4
	.word	1
	.word	1
	.word	10
	.word	4
	.word	1
	.word	27
	.word	34
	.word	7
	.word	21
	.word	2
	.word	17
	.word	2
	.word	9
	.word	6
	.word	4
	.word	2
	.word	3
	.word	0
	.word	4
	.word	2
	.word	7
	.word	8
	.word	2
	.word	5
	.word	1
	.word	15
	.word	21
	.word	3
	.word	4
	.word	4
	.word	2
	.word	2
	.word	17
	.word	22
	.word	1
	.word	5
	.word	22
	.word	4
	.word	26
	.word	7
	.word	0
	.word	32
	.word	1
	.word	11
	.word	42
	.word	15
	.word	4
	.word	1
	.word	2
	.word	5
	.word	0
	.word	19
	.word	3
	.word	1
	.word	8
	.word	6
	.word	0
	.word	10
	.word	1
	.word	9
	.word	2
	.word	13
	.word	30
	.word	8
	.word	2
	.word	24
	.word	17
	.word	19
	.word	1
	.word	4
	.word	4
	.word	25
	.word	13
	.word	0
	.word	10
	.word	16
	.word	11
	.word	39
	.word	18
	.word	8
	.word	5
	.word	30
	.word	82
	.word	1
	.word	6
	.word	8
	.word	18
	.word	77
	.word	11
	.word	13
	.word	20
	.word	75
	.word	11
	.word	112
	.word	78
	.word	33
	.word	3
	.word	0
	.word	0
	.word	60
	.word	17
	.word	84
	.word	9
	.word	1
	.word	1
	.word	12
	.word	30
	.word	10
	.word	49
	.word	5
	.word	32
	.word	158
	.word	178
	.word	5
	.word	5
	.word	6
	.word	3
	.word	3
	.word	1
	.word	3
	.word	1
	.word	4
	.word	7
	.word	6
	.word	19
	.word	31
	.word	21
	.word	0
	.word	2
	.word	9
	.word	5
	.word	6
	.word	27
	.word	4
	.word	9
	.word	8
	.word	1
	.word	76
	.word	18
	.word	12
	.word	1
	.word	4
	.word	0
	.word	3
	.word	3
	.word	6
	.word	3
	.word	12
	.word	2
	.word	8
	.word	30
	.word	16
	.word	2
	.word	25
	.word	1
	.word	5
	.word	5
	.word	4
	.word	3
	.word	0
	.word	6
	.word	10
	.word	2
	.word	3
	.word	1
	.word	0
	.word	5
	.word	1
	.word	19
	.word	3
	.word	0
	.word	8
	.word	1
	.word	5
	.word	2
	.word	6
	.word	0
	.word	0
	.word	0
	.word	19
	.word	1
	.word	2
	.word	0
	.word	5
	.word	1
	.word	2
	.word	5
	.word	1
	.word	3
	.word	7
	.word	0
	.word	4
	.word	12
	.word	7
	.word	3
	.word	10
	.word	22
	.word	0
	.word	9
	.word	5
	.word	1
	.word	0
	.word	2
	.word	20
	.word	1
	.word	1
	.word	3
	.word	23
	.word	30
	.word	3
	.word	9
	.word	9
	.word	1
	.word	4
	.word	191
	.word	14
	.word	3
	.word	15
	.word	6
	.word	8
	.word	50
	.word	0
	.word	1
	.word	0
	.word	0
	.word	4
	.word	0
	.word	0
	.word	1
	.word	0
	.word	2
	.word	4
	.word	2
	.word	0
	.word	2
	.word	3
	.word	0
	.word	2
	.word	0
	.word	2
	.word	2
	.word	8
	.word	7
	.word	0
	.word	1
	.word	1
	.word	1
	.word	3
	.word	3
	.word	17
	.word	11
	.word	91
	.word	1
	.word	9
	.word	3
	.word	2
	.word	13
	.word	4
	.word	24
	.word	15
	.word	41
	.word	3
	.word	13
	.word	3
	.word	1
	.word	20
	.word	4
	.word	125
	.word	29
	.word	30
	.word	1
	.word	0
	.word	4
	.word	12
	.word	2
	.word	21
	.word	4
	.word	5
	.word	5
	.word	19
	.word	11
	.word	0
	.word	13
	.word	11
	.word	86
	.word	2
	.word	18
	.word	0
	.word	7
	.word	1
	.word	8
	.word	8
	.word	2
	.word	2
	.word	22
	.word	1
	.word	2
	.word	6
	.word	5
	.word	2
	.word	0
	.word	1
	.word	2
	.word	8
	.word	0
	.word	2
	.word	0
	.word	5
	.word	2
	.word	1
	.word	0
	.word	2
	.word	10
	.word	2
	.word	0
	.word	5
	.word	9
	.word	2
	.word	1
	.word	2
	.word	0
	.word	1
	.word	0
	.word	4
	.word	0
	.word	0
	.word	10
	.word	2
	.word	5
	.word	3
	.word	0
	.word	6
	.word	1
	.word	0
	.word	1
	.word	4
	.word	4
	.word	33
	.word	3
	.word	13
	.word	17
	.word	3
	.word	18
	.word	6
	.word	4
	.word	7
	.word	1
	.word	5
	.word	78
	.word	0
	.word	4
	.word	1
	.word	13
	.word	7
	.word	1
	.word	8
	.word	1
	.word	0
	.word	35
	.word	27
	.word	15
	.word	3
	.word	0
	.word	0
	.word	0
	.word	1
	.word	11
	.word	5
	.word	41
	.word	38
	.word	15
	.word	22
	.word	6
	.word	14
	.word	14
	.word	2
	.word	1
	.word	11
	.word	6
	.word	20
	.word	63
	.word	5
	.word	8
	.word	27
	.word	7
	.word	11
	.word	2
	.word	2
	.word	40
	.word	58
	.word	23
	.word	50
	.word	54
	.word	56
	.word	293
	.word	8
	.word	8
	.word	1
	.word	5
	.word	1
	.word	14
	.word	0
	.word	1
	.word	12
	.word	37
	.word	89
	.word	8
	.word	8
	.word	8
	.word	2
	.word	10
	.word	6
	.word	0
	.word	0
	.word	0
	.word	4
	.word	5
	.word	2
	.word	1
	.word	0
	.word	1
	.word	1
	.word	2
	.word	7
	.word	0
	.word	3
	.word	3
	.word	0
	.word	4
	.word	6
	.word	0
	.word	3
	.word	2
	.word	19
	.word	3
	.word	8
	.word	0
	.word	0
	.word	0
	.word	4
	.word	4
	.word	16
	.word	0
	.word	4
	.word	1
	.word	5
	.word	1
	.word	3
	.word	0
	.word	3
	.word	4
	.word	6
	.word	2
	.word	17
	.word	10
	.word	10
	.word	31
	.word	6
	.word	4
	.word	3
	.word	6
	.word	10
	.word	126
	.word	7
	.word	3
	.word	2
	.word	2
	.word	0
	.word	9
	.word	0
	.word	0
	.word	5
	.word	20
	.word	13
	.word	0
	.word	15
	.word	0
	.word	6
	.word	0
	.word	2
	.word	5
	.word	8
	.word	64
	.word	50
	.word	3
	.word	2
	.word	12
	.word	2
	.word	9
	.word	0
	.word	0
	.word	11
	.word	8
	.word	20
	.word	109
	.word	2
	.word	18
	.word	23
	.word	0
	.word	0
	.word	9
	.word	61
	.word	3
	.word	0
	.word	28
	.word	41
	.word	77
	.word	27
	.word	19
	.word	17
	.word	81
	.word	5
	.word	2
	.word	14
	.word	5
	.word	83
	.word	57
	.word	252
	.word	14
	.word	154
	.word	263
	.word	14
	.word	20
	.word	8
	.word	13
	.word	6
	.word	57
	.word	39
	.word	38
	.align 16
_ZZN11ImFontAtlas21GetGlyphRangesChineseEvE6ranges:
	.word	32
	.word	255
	.word	12288
	.word	12543
	.word	12784
	.word	12799
	.word	-256
	.word	-17
	.word	19968
	.word	-24657
	.word	0
	.align 8
_ZZN11ImFontAtlas20GetGlyphRangesKoreanEvE6ranges:
	.word	32
	.word	255
	.word	12593
	.word	12643
	.word	-21504
	.word	-10339
	.word	0
	.align 2
_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges:
	.word	32
	.word	255
	.word	0
.lcomm _ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE17circle_vtx_builds,1,1
.lcomm _ZGVZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx,8,8
.lcomm _ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx,96,32
.lcomm _ZL13GNullClipRect,16,16
	.align 4
.LC0:
	.long	1048576000
	.align 4
.LC1:
	.long	1056964608
	.align 4
.LC5:
	.long	0
	.align 4
.LC18:
	.long	1065353216
	.align 16
.LC29:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 16
.LC30:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC31:
	.long	931135488
	.align 4
.LC32:
	.long	947912704
	.align 4
.LC34:
	.long	1258291200
	.align 4
.LC43:
	.long	1120403456
	.align 4
.LC44:
	.long	897988541
	.align 4
.LC46:
	.long	1077936128
	.align 4
.LC47:
	.long	1100480512
	.align 4
.LC48:
	.long	1094713344
	.align 4
.LC49:
	.long	1119223808
	.align 4
.LC50:
	.long	1095761920
	.align 4
.LC51:
	.long	1098907648
	.align 4
.LC52:
	.long	1088421888
	.align 4
.LC53:
	.long	1106771968
	.align 4
.LC54:
	.long	1102577664
	.align 4
.LC55:
	.long	1101529088
	.align 4
.LC56:
	.long	1091567616
	.align 4
.LC57:
	.long	1099956224
	.align 4
.LC58:
	.long	1113325568
	.align 4
.LC59:
	.long	1116864512
	.align 4
.LC60:
	.long	1099431936
	.align 4
.LC70:
	.long	-1082130432
	.align 4
.LC72:
	.long	1082130432
	.align 16
.LC73:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC87:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC88:
	.quad	1
	.quad	1
	.align 16
.LC94:
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
.LC95:
	.long	1051931443
	.align 4
.LC102:
	.long	1065437102
	.align 4
.LC104:
	.long	1132396544
	.align 4
.LC107:
	.long	1073657938
	.align 16
.LC108:
	.long	16777215
	.long	16777215
	.long	16777215
	.long	16777215
	.align 4
.LC111:
	.long	1086918619
	.align 16
.LC112:
	.long	-973078528
	.long	-973078528
	.long	1174405120
	.long	1174405120
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 7.1.0"
	.def	_assert;	.scl	2;	.type	32;	.endef
	.def	sqrtf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8MemAllocEy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7MemFreeEPv;	.scl	2;	.type	32;	.endef
	.def	qsort;	.scl	2;	.type	32;	.endef
	.def	__mingw_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	sqrtf;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_Z18ImFileLoadToMemoryPKcS0_Pii;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_Z18ImTextCharFromUtf8PjPKcS1_;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_acquire;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_release;	.scl	2;	.type	32;	.endef
	.def	sinf;	.scl	2;	.type	32;	.endef
	.def	cosf;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.GImGui, "dr"
	.globl	.refptr.GImGui
	.linkonce	discard
.refptr.GImGui:
	.quad	GImGui
