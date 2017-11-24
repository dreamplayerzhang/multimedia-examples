	.file	"imgui_draw.cpp"
	.text
	.p2align 4,,15
	.def	_ZL19rect_original_orderPKvS0_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19rect_original_orderPKvS0_
_ZL19rect_original_orderPKvS0_:
.LFB295:
	.seh_endprologue
	movl	12(%rdx), %eax
	cmpl	%eax, 12(%rcx)
	movl	$-1, %edx
	setg	%al
	movzbl	%al, %eax
	cmovl	%edx, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17stbtt__find_tablePhjPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17stbtt__find_tablePhjPKc
_ZL17stbtt__find_tablePhjPKc:
.LFB316:
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
	je	.L8
	movsbl	(%r8), %ebx
	xorl	%eax, %eax
	jmp	.L7
	.p2align 4,,7
.L6:
	incl	%eax
	addl	$16, %edx
	cmpl	%eax, %r11d
	je	.L8
.L7:
	movl	%edx, %r9d
	movzbl	(%rcx,%r9), %r10d
	cmpl	%ebx, %r10d
	jne	.L6
	movzbl	1(%rcx,%r9), %esi
	movsbl	1(%r8), %r10d
	cmpl	%r10d, %esi
	jne	.L6
	movzbl	2(%rcx,%r9), %esi
	movsbl	2(%r8), %r10d
	cmpl	%r10d, %esi
	jne	.L6
	movzbl	3(%rcx,%r9), %esi
	movsbl	3(%r8), %r10d
	cmpl	%r10d, %esi
	jne	.L6
	leaq	8(%rcx,%r9), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rcx), %eax
	sall	$24, %edx
	sall	$16, %eax
	addl	%eax, %edx
	movzbl	2(%rcx), %eax
	sall	$8, %eax
	addl	%eax, %edx
	movzbl	3(%rcx), %eax
	addl	%edx, %eax
	jmp	.L5
	.p2align 4,,7
.L8:
	xorl	%eax, %eax
.L5:
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei
_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei:
.LFB363:
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
	cmpl	$12, %edx
	movq	%rcx, %rdi
	movl	%edx, %ebp
	jle	.L11
.L14:
	movl	%ebp, %eax
	movss	4(%rdi), %xmm0
	sarl	%eax
	leal	-1(%rbp), %ebx
	cltq
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %rax
	movslq	%ebp, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	addq	%rdi, %rax
	leaq	(%rcx,%rdx,4), %rdx
	movss	4(%rax), %xmm1
	xorl	%ecx, %ecx
	movss	-16(%rdi,%rdx), %xmm2
	ucomiss	%xmm1, %xmm2
	seta	%cl
	xorl	%r8d, %r8d
	ucomiss	%xmm0, %xmm1
	seta	%r8b
	cmpl	%ecx, %r8d
	je	.L16
	xorl	%r8d, %r8d
	ucomiss	%xmm0, %xmm2
	seta	%r8b
	cmpl	%r8d, %ecx
	je	.L30
	leal	-1(%rbp), %ebx
	subq	$20, %rdx
.L18:
	movq	(%rax), %r8
	addq	%rdi, %rdx
	movss	(%rdx), %xmm3
	movl	16(%rdx), %ecx
	movss	4(%rdx), %xmm2
	movq	%r8, (%rdx)
	movq	8(%rax), %r8
	movss	12(%rdx), %xmm0
	movss	8(%rdx), %xmm1
	movq	%r8, 8(%rdx)
	movl	16(%rax), %r8d
	movl	%r8d, 16(%rdx)
	movss	%xmm3, (%rax)
	movl	%ecx, 16(%rax)
	movss	%xmm2, 4(%rax)
	movss	%xmm1, 8(%rax)
	movss	%xmm0, 12(%rax)
	movss	4(%rdi), %xmm0
.L16:
	movq	(%rax), %rcx
	movss	(%rdi), %xmm3
	movss	12(%rdi), %xmm1
	movl	16(%rdi), %edx
	movss	8(%rdi), %xmm2
	leaq	20(%rdi), %rsi
	movq	%rcx, (%rdi)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movl	16(%rax), %ecx
	movl	%ecx, 16(%rdi)
	movss	%xmm3, (%rax)
	movl	%edx, 16(%rax)
	movss	%xmm0, 4(%rax)
	movl	$2, %ecx
	movss	%xmm2, 8(%rax)
	movss	%xmm1, 12(%rax)
	movss	4(%rdi), %xmm1
	.p2align 4,,7
.L19:
	movss	4(%rsi), %xmm2
	leal	-1(%rcx), %r8d
	ucomiss	%xmm2, %xmm1
	ja	.L20
	movslq	%ebx, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %rax
	leaq	(%rdi,%rax), %rdx
	leaq	-20(%rdi,%rax), %rax
	movss	4(%rdx), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L21
	.p2align 4,,7
.L28:
	movq	%rax, %rdx
	subq	$20, %rax
	decl	%ebx
	movss	24(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.L28
.L21:
	cmpl	%r8d, %ebx
	jle	.L24
	movq	(%rdx), %r8
	movss	(%rsi), %xmm3
	movss	8(%rsi), %xmm1
	movl	16(%rsi), %eax
	movss	12(%rsi), %xmm0
	decl	%ebx
	movq	%r8, (%rsi)
	movq	8(%rdx), %r8
	movq	%r8, 8(%rsi)
	movl	16(%rdx), %r8d
	movl	%r8d, 16(%rsi)
	movss	%xmm3, (%rdx)
	movl	%eax, 16(%rdx)
	movss	%xmm2, 4(%rdx)
	movss	%xmm1, 8(%rdx)
	movss	%xmm0, 12(%rdx)
	movss	4(%rdi), %xmm1
.L20:
	incl	%ecx
	addq	$20, %rsi
	jmp	.L19
.L24:
	subl	%r8d, %ebp
	cmpl	%ebx, %ebp
	jle	.L25
	movq	%rdi, %rcx
	movl	%ebx, %edx
	movq	%rsi, %rdi
	call	_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei
.L26:
	cmpl	$12, %ebp
	jg	.L14
.L11:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L25:
	movl	%ebp, %edx
	movq	%rsi, %rcx
	movl	%ebx, %ebp
	call	_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei
	jmp	.L26
.L30:
	leal	-1(%rbp), %ebx
	xorl	%edx, %edx
	jmp	.L18
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi
_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi:
.LFB367:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$192, %rsp
	.seh_stackalloc	192
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
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	cmpl	$16, 296(%rsp)
	movss	256(%rsp), %xmm11
	movss	264(%rsp), %xmm8
	movss	272(%rsp), %xmm10
	movss	280(%rsp), %xmm9
	jg	.L32
	movaps	%xmm11, %xmm6
	movaps	%xmm8, %xmm7
	movss	.LC0(%rip), %xmm0
	addss	%xmm11, %xmm6
	movaps	%xmm2, %xmm1
	addss	%xmm8, %xmm7
	movss	.LC1(%rip), %xmm12
	addss	%xmm10, %xmm1
	addss	%xmm2, %xmm6
	addss	%xmm3, %xmm7
	mulss	%xmm12, %xmm1
	addss	%xmm10, %xmm6
	addss	%xmm9, %xmm7
	mulss	%xmm0, %xmm6
	mulss	%xmm0, %xmm7
	movaps	%xmm3, %xmm0
	addss	%xmm9, %xmm0
	subss	%xmm6, %xmm1
	mulss	%xmm12, %xmm0
	mulss	%xmm1, %xmm1
	subss	%xmm7, %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	ucomiss	288(%rsp), %xmm0
	ja	.L41
	testq	%rcx, %rcx
	movl	(%rdx), %eax
	je	.L35
	movslq	%eax, %rdx
	leaq	(%rcx,%rdx,8), %rdx
	movss	%xmm10, (%rdx)
	movss	%xmm9, 4(%rdx)
.L35:
	incl	%eax
	movl	%eax, (%rsi)
.L32:
	movaps	80(%rsp), %xmm6
	movl	$1, %eax
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
	movaps	144(%rsp), %xmm10
	movaps	160(%rsp), %xmm11
	movaps	176(%rsp), %xmm12
	addq	$192, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L41:
	movaps	%xmm8, %xmm0
	movl	296(%rsp), %eax
	movss	288(%rsp), %xmm4
	addss	%xmm3, %xmm0
	movss	%xmm4, 64(%rsp)
	leal	1(%rax), %ebx
	movss	%xmm7, 56(%rsp)
	movss	%xmm6, 48(%rsp)
	movl	%ebx, 72(%rsp)
	mulss	%xmm12, %xmm0
	movss	%xmm0, 40(%rsp)
	movaps	%xmm11, %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm12, %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi
	movss	%xmm10, 48(%rsp)
	addss	%xmm9, %xmm8
	movl	%ebx, 72(%rsp)
	addss	%xmm11, %xmm10
	movss	288(%rsp), %xmm5
	movss	%xmm5, 64(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm9, 56(%rsp)
	movaps	%xmm6, %xmm2
	mulss	%xmm12, %xmm8
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	mulss	%xmm12, %xmm10
	movss	%xmm8, 40(%rsp)
	movss	%xmm10, 32(%rsp)
	call	_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi
	jmp	.L32
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
.LFB299:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	12(%rcx), %eax
	movq	%rcx, %rsi
	movl	%edx, %ebx
	cmpl	%edx, %eax
	jl	.L48
	movl	%edx, %ecx
	subl	$0, %ecx
	js	.L48
.L43:
	movl	%ebx, %edx
	shrl	$31, %edx
	jne	.L45
	cmpl	%eax, %ebx
	cmovle	%ebx, %eax
.L45:
	movl	%eax, 8(%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L48:
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movl	$1000, %r8d
	call	_assert
	movl	12(%rsi), %eax
	jmp	.L43
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "!info->cff.size\0"
	.text
	.p2align 4,,15
	.def	_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi
_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi:
.LFB324:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	68(%rcx), %eax
	movq	%rcx, %rsi
	movl	%edx, %ebx
	testl	%eax, %eax
	jne	.L60
.L53:
	cmpl	%ebx, 20(%rsi)
	jle	.L57
	movl	52(%rsi), %edx
	movl	$-1, %eax
	cmpl	$1, %edx
	jg	.L54
	testl	%edx, %edx
	je	.L61
	movslq	24(%rsi), %rax
	movq	8(%rsi), %r9
	sall	$2, %ebx
	movslq	%ebx, %rbx
	movl	32(%rsi), %ecx
	addq	%rax, %rbx
	leaq	(%r9,%rbx), %r8
	leaq	4(%r9,%rbx), %r9
	movzbl	(%r8), %edx
	movzbl	1(%r8), %eax
	sall	$24, %edx
	sall	$16, %eax
	addl	%eax, %edx
	movzbl	2(%r8), %eax
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	3(%r8), %edx
	movzbl	(%r9), %r8d
	addl	%edx, %eax
	movzbl	1(%r9), %edx
	sall	$24, %r8d
	addl	%ecx, %eax
	sall	$16, %edx
	addl	%edx, %r8d
	movzbl	2(%r9), %edx
	sall	$8, %edx
	addl	%r8d, %edx
	movzbl	3(%r9), %r8d
	addl	%r8d, %edx
	addl	%ecx, %edx
.L56:
	cmpl	%edx, %eax
	movl	$-1, %edx
	cmove	%edx, %eax
.L54:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L61:
	movslq	24(%rsi), %rax
	movq	8(%rsi), %rcx
	addl	%ebx, %ebx
	movslq	%ebx, %rbx
	movl	32(%rsi), %r8d
	addq	%rax, %rbx
	leaq	(%rcx,%rbx), %rdx
	leaq	2(%rcx,%rbx), %rcx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	(%rcx), %edx
	movzbl	1(%rcx), %ecx
	movzwl	%ax, %eax
	leal	(%r8,%rax,2), %eax
	sall	$8, %edx
	addl	%ecx, %edx
	movzwl	%dx, %edx
	leal	(%r8,%rdx,2), %edx
	jmp	.L56
	.p2align 4,,7
.L60:
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	movl	$1439, %r8d
	call	_assert
	jmp	.L53
	.p2align 4,,7
.L57:
	movl	$-1, %eax
	jmp	.L54
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi
_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi:
.LFB368:
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
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movss	368(%rsp), %xmm4
	movl	408(%rsp), %ebx
	movss	376(%rsp), %xmm1
	movaps	%xmm4, %xmm10
	movss	352(%rsp), %xmm14
	movss	360(%rsp), %xmm13
	movaps	%xmm1, %xmm11
	movss	384(%rsp), %xmm5
	movss	.LC1(%rip), %xmm15
	jmp	.L74
	.p2align 4,,7
.L85:
	ucomiss	400(%rsp), %xmm6
	jbe	.L80
	movaps	%xmm14, %xmm0
	movaps	%xmm13, %xmm1
	addss	%xmm10, %xmm14
	movss	%xmm5, 108(%rsp)
	incl	%ebx
	addss	%xmm2, %xmm0
	movl	%ebx, 88(%rsp)
	movq	%rsi, %rdx
	addss	%xmm3, %xmm1
	movq	%rdi, %rcx
	addss	%xmm11, %xmm13
	addss	392(%rsp), %xmm11
	mulss	%xmm15, %xmm14
	mulss	%xmm15, %xmm0
	addss	%xmm5, %xmm10
	mulss	%xmm15, %xmm1
	movss	400(%rsp), %xmm5
	mulss	%xmm15, %xmm13
	movss	%xmm5, 80(%rsp)
	movaps	%xmm0, %xmm4
	mulss	%xmm15, %xmm10
	movaps	%xmm1, %xmm8
	mulss	%xmm15, %xmm11
	addss	%xmm14, %xmm4
	movss	%xmm1, 40(%rsp)
	addss	%xmm13, %xmm8
	movss	%xmm0, 32(%rsp)
	addss	%xmm10, %xmm14
	addss	%xmm11, %xmm13
	mulss	%xmm15, %xmm4
	mulss	%xmm15, %xmm8
	mulss	%xmm15, %xmm14
	mulss	%xmm15, %xmm13
	movaps	%xmm4, %xmm6
	movss	%xmm4, 48(%rsp)
	movaps	%xmm8, %xmm7
	movss	%xmm8, 56(%rsp)
	addss	%xmm14, %xmm6
	addss	%xmm13, %xmm7
	mulss	%xmm15, %xmm6
	mulss	%xmm15, %xmm7
	movss	%xmm6, 64(%rsp)
	movss	%xmm7, 72(%rsp)
	call	_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi
	movaps	%xmm7, %xmm3
	movaps	%xmm6, %xmm2
	movss	108(%rsp), %xmm5
.L74:
	movaps	%xmm14, %xmm0
	movaps	%xmm13, %xmm6
	movaps	%xmm10, %xmm4
	subss	%xmm2, %xmm0
	movaps	%xmm11, %xmm9
	subss	%xmm3, %xmm6
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm12
	movss	392(%rsp), %xmm8
	subss	%xmm14, %xmm4
	mulss	%xmm0, %xmm0
	movss	392(%rsp), %xmm7
	mulss	%xmm6, %xmm6
	subss	%xmm13, %xmm9
	subss	%xmm10, %xmm1
	subss	%xmm11, %xmm8
	subss	%xmm2, %xmm12
	addss	%xmm0, %xmm6
	subss	%xmm3, %xmm7
	cvtss2sd	%xmm6, %xmm0
	sqrtsd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L81
.L63:
	mulss	%xmm9, %xmm9
	mulss	%xmm4, %xmm4
	addss	%xmm9, %xmm4
	cvtss2sd	%xmm4, %xmm0
	sqrtsd	%xmm0, %xmm9
	ucomisd	%xmm9, %xmm9
	jp	.L82
.L65:
	mulss	%xmm1, %xmm1
	mulss	%xmm8, %xmm8
	addss	%xmm1, %xmm8
	cvtss2sd	%xmm8, %xmm8
	sqrtsd	%xmm8, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	.L83
.L67:
	mulss	%xmm12, %xmm12
	addsd	%xmm9, %xmm6
	mulss	%xmm7, %xmm7
	movsd	%xmm6, %xmm1
	addss	%xmm12, %xmm7
	addsd	%xmm0, %xmm1
	cvtss2sd	%xmm7, %xmm7
	cvtsd2ss	%xmm1, %xmm6
	sqrtsd	%xmm7, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	.L84
.L69:
	cvtsd2ss	%xmm0, %xmm1
	mulss	%xmm6, %xmm6
	cmpl	$16, %ebx
	mulss	%xmm1, %xmm1
	subss	%xmm1, %xmm6
	jle	.L85
.L62:
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
	.p2align 4,,7
.L80:
	testq	%rdi, %rdi
	movl	(%rsi), %eax
	je	.L75
	movslq	%eax, %rdx
	movss	392(%rsp), %xmm2
	leaq	(%rdi,%rdx,8), %rdx
	movss	%xmm5, (%rdx)
	movss	%xmm2, 4(%rdx)
.L75:
	incl	%eax
	movl	%eax, (%rsi)
	jmp	.L62
.L84:
	movsd	%xmm7, %xmm0
	movss	%xmm5, 116(%rsp)
	movss	%xmm3, 112(%rsp)
	movss	%xmm2, 108(%rsp)
	call	sqrt
	movss	116(%rsp), %xmm5
	movss	112(%rsp), %xmm3
	movss	108(%rsp), %xmm2
	jmp	.L69
.L81:
	movss	%xmm5, 124(%rsp)
	movss	%xmm3, 120(%rsp)
	movss	%xmm2, 116(%rsp)
	movss	%xmm1, 112(%rsp)
	movss	%xmm4, 108(%rsp)
	call	sqrt
	movss	124(%rsp), %xmm5
	movsd	%xmm0, %xmm6
	movss	120(%rsp), %xmm3
	movss	116(%rsp), %xmm2
	movss	112(%rsp), %xmm1
	movss	108(%rsp), %xmm4
	jmp	.L63
.L82:
	movss	%xmm5, 120(%rsp)
	movss	%xmm3, 116(%rsp)
	movss	%xmm2, 112(%rsp)
	movss	%xmm1, 108(%rsp)
	call	sqrt
	movss	120(%rsp), %xmm5
	movsd	%xmm0, %xmm9
	movss	116(%rsp), %xmm3
	movss	112(%rsp), %xmm2
	movss	108(%rsp), %xmm1
	jmp	.L65
.L83:
	movsd	%xmm8, %xmm0
	movss	%xmm5, 116(%rsp)
	movss	%xmm3, 112(%rsp)
	movss	%xmm2, 108(%rsp)
	call	sqrt
	movss	116(%rsp), %xmm5
	movss	112(%rsp), %xmm3
	movss	108(%rsp), %xmm2
	jmp	.L67
	.seh_endproc
	.p2align 4,,15
	.def	_ZL19rect_height_comparePKvS0_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19rect_height_comparePKvS0_
_ZL19rect_height_comparePKvS0_:
.LFB293:
	.seh_endprologue
	movzwl	6(%rdx), %eax
	cmpw	%ax, 6(%rcx)
	ja	.L88
	movl	$1, %eax
	jb	.L87
	movzwl	4(%rdx), %eax
	movl	$-1, %edx
	cmpw	%ax, 4(%rcx)
	setb	%al
	movzbl	%al, %eax
	cmova	%edx, %eax
	ret
	.p2align 4,,7
.L88:
	movl	$-1, %eax
.L87:
	rep ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "C:/libraries/include/imgui/imgui_draw.cpp\0"
	.align 8
.LC6:
	.ascii "stb__dout + length <= stb__barrier\0"
	.text
	.p2align 4,,15
	.def	_ZL10stb__matchPhj;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL10stb__matchPhj
_ZL10stb__matchPhj:
.LFB499:
	pushq	%r14
	.seh_pushreg	%r14
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
	movq	_ZL9stb__dout(%rip), %rax
	movl	%edx, %edi
	movq	_ZL12stb__barrier(%rip), %rdx
	movq	%rcx, %rbx
	movq	%rdi, %rsi
	leaq	(%rax,%rdi), %rcx
	cmpq	%rcx, %rdx
	jb	.L201
.L92:
	cmpq	%rbx, _ZL13stb__barrier4(%rip)
	ja	.L94
	testl	%esi, %esi
	leal	-1(%rsi), %r11d
	je	.L91
	leaq	16(%rbx), %rdx
	cmpq	%rdx, %rax
	leaq	16(%rax), %rdx
	setnb	%cl
	cmpq	%rdx, %rbx
	setnb	%dl
	orb	%dl, %cl
	je	.L96
	cmpl	$20, %esi
	jbe	.L96
	movq	%rbx, %r9
	negq	%r9
	andl	$15, %r9d
	cmpl	%esi, %r9d
	cmova	%esi, %r9d
	testl	%r9d, %r9d
	je	.L109
	movzbl	(%rbx), %r8d
	cmpl	$1, %r9d
	leaq	1(%rax), %rdx
	leaq	1(%rbx), %rcx
	movb	%r8b, (%rax)
	leal	-2(%rsi), %r8d
	je	.L97
	movzbl	1(%rbx), %r8d
	cmpl	$2, %r9d
	leaq	2(%rax), %rdx
	leaq	2(%rbx), %rcx
	movb	%r8b, 1(%rax)
	leal	-3(%rsi), %r8d
	je	.L97
	movzbl	2(%rbx), %r8d
	cmpl	$3, %r9d
	leaq	3(%rax), %rdx
	leaq	3(%rbx), %rcx
	movb	%r8b, 2(%rax)
	leal	-4(%rsi), %r8d
	je	.L97
	movzbl	3(%rbx), %r8d
	cmpl	$4, %r9d
	leaq	4(%rax), %rdx
	leaq	4(%rbx), %rcx
	movb	%r8b, 3(%rax)
	leal	-5(%rsi), %r8d
	je	.L97
	movzbl	4(%rbx), %r8d
	cmpl	$5, %r9d
	leaq	5(%rax), %rdx
	leaq	5(%rbx), %rcx
	movb	%r8b, 4(%rax)
	leal	-6(%rsi), %r8d
	je	.L97
	movzbl	5(%rbx), %r8d
	cmpl	$6, %r9d
	leaq	6(%rax), %rdx
	leaq	6(%rbx), %rcx
	movb	%r8b, 5(%rax)
	leal	-7(%rsi), %r8d
	je	.L97
	movzbl	6(%rbx), %r8d
	cmpl	$7, %r9d
	leaq	7(%rax), %rdx
	leaq	7(%rbx), %rcx
	movb	%r8b, 6(%rax)
	leal	-8(%rsi), %r8d
	je	.L97
	movzbl	7(%rbx), %r8d
	cmpl	$8, %r9d
	leaq	8(%rax), %rdx
	leaq	8(%rbx), %rcx
	movb	%r8b, 7(%rax)
	leal	-9(%rsi), %r8d
	je	.L97
	movzbl	8(%rbx), %r8d
	cmpl	$9, %r9d
	leaq	9(%rax), %rdx
	leaq	9(%rbx), %rcx
	movb	%r8b, 8(%rax)
	leal	-10(%rsi), %r8d
	je	.L97
	movzbl	9(%rbx), %r8d
	cmpl	$10, %r9d
	leaq	10(%rax), %rdx
	leaq	10(%rbx), %rcx
	movb	%r8b, 9(%rax)
	leal	-11(%rsi), %r8d
	je	.L97
	movzbl	10(%rbx), %r8d
	cmpl	$11, %r9d
	leaq	11(%rax), %rdx
	leaq	11(%rbx), %rcx
	movb	%r8b, 10(%rax)
	leal	-12(%rsi), %r8d
	je	.L97
	movzbl	11(%rbx), %r8d
	cmpl	$12, %r9d
	leaq	12(%rax), %rdx
	leaq	12(%rbx), %rcx
	movb	%r8b, 11(%rax)
	leal	-13(%rsi), %r8d
	je	.L97
	movzbl	12(%rbx), %r8d
	cmpl	$13, %r9d
	leaq	13(%rax), %rdx
	leaq	13(%rbx), %rcx
	movb	%r8b, 12(%rax)
	leal	-14(%rsi), %r8d
	je	.L97
	movzbl	13(%rbx), %r8d
	cmpl	$15, %r9d
	leaq	14(%rax), %rdx
	leaq	14(%rbx), %rcx
	movb	%r8b, 13(%rax)
	leal	-15(%rsi), %r8d
	jne	.L97
	movzbl	14(%rbx), %r8d
	leaq	15(%rax), %rdx
	leaq	15(%rbx), %rcx
	movb	%r8b, 14(%rax)
	leal	-16(%rsi), %r8d
.L97:
	subl	%r9d, %esi
	movl	%r11d, %r14d
	movl	%r9d, %r12d
	leal	-16(%rsi), %r10d
	subl	%r9d, %r14d
	shrl	$4, %r10d
	leal	1(%r10), %ebp
	movl	%ebp, %edi
	sall	$4, %edi
	cmpl	$14, %r14d
	jbe	.L99
	subl	$4, %r10d
	addq	%r12, %rbx
	leaq	(%rax,%r12), %r9
	cmpl	$-6, %r10d
	ja	.L110
	shrl	$2, %r10d
	leal	4(,%r10,4), %r12d
	xorl	%r10d, %r10d
.L101:
	movdqa	(%rbx), %xmm0
	prefetcht0	464(%rbx)
	addl	$4, %r10d
	prefetcht0	464(%r9)
	addq	$64, %rbx
	addq	$64, %r9
	movups	%xmm0, -64(%r9)
	movdqa	-48(%rbx), %xmm0
	movups	%xmm0, -48(%r9)
	movdqa	-32(%rbx), %xmm0
	movups	%xmm0, -32(%r9)
	movdqa	-16(%rbx), %xmm0
	movups	%xmm0, -16(%r9)
	cmpl	%r10d, %r12d
	jne	.L101
.L100:
	xorl	%r10d, %r10d
.L105:
	movdqa	(%rbx,%r10), %xmm0
	incl	%r12d
	movups	%xmm0, (%r9,%r10)
	addq	$16, %r10
	cmpl	%ebp, %r12d
	jb	.L105
	movl	%edi, %r9d
	subl	%edi, %r8d
	addq	%r9, %rcx
	addq	%r9, %rdx
	cmpl	%edi, %esi
	movl	%r11d, %r9d
	je	.L108
.L99:
	movzbl	(%rcx), %r9d
	testl	%r8d, %r8d
	movb	%r9b, (%rdx)
	movl	%r11d, %r9d
	je	.L108
	movzbl	1(%rcx), %r10d
	cmpl	$1, %r8d
	movb	%r10b, 1(%rdx)
	je	.L108
	movzbl	2(%rcx), %r10d
	cmpl	$2, %r8d
	movb	%r10b, 2(%rdx)
	je	.L108
	movzbl	3(%rcx), %r10d
	cmpl	$3, %r8d
	movb	%r10b, 3(%rdx)
	je	.L108
	movzbl	4(%rcx), %r10d
	cmpl	$4, %r8d
	movb	%r10b, 4(%rdx)
	je	.L108
	movzbl	5(%rcx), %r10d
	cmpl	$5, %r8d
	movb	%r10b, 5(%rdx)
	je	.L108
	movzbl	6(%rcx), %r10d
	cmpl	$6, %r8d
	movb	%r10b, 6(%rdx)
	je	.L108
	movzbl	7(%rcx), %r10d
	cmpl	$7, %r8d
	movb	%r10b, 7(%rdx)
	je	.L108
	movzbl	8(%rcx), %r10d
	cmpl	$8, %r8d
	movb	%r10b, 8(%rdx)
	je	.L108
	movzbl	9(%rcx), %r10d
	cmpl	$9, %r8d
	movb	%r10b, 9(%rdx)
	je	.L108
	movzbl	10(%rcx), %r9d
	cmpl	$10, %r8d
	movb	%r9b, 10(%rdx)
	movl	%r11d, %r9d
	je	.L108
	movzbl	11(%rcx), %r10d
	cmpl	$11, %r8d
	movb	%r10b, 11(%rdx)
	je	.L108
	movzbl	12(%rcx), %r10d
	cmpl	$12, %r8d
	movb	%r10b, 12(%rdx)
	je	.L108
	movzbl	13(%rcx), %r10d
	cmpl	$13, %r8d
	movb	%r10b, 13(%rdx)
	je	.L108
	movzbl	14(%rcx), %ecx
	movb	%cl, 14(%rdx)
.L108:
	leaq	1(%rax,%r9), %rax
	movq	%rax, _ZL9stb__dout(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r14
	ret
	.p2align 4,,7
.L94:
	incq	%rdx
	movq	%rdx, _ZL9stb__dout(%rip)
.L91:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r14
	ret
	.p2align 4,,7
.L201:
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rcx
	movl	$2217, %r8d
	call	_assert
	movq	_ZL9stb__dout(%rip), %rax
	movq	_ZL12stb__barrier(%rip), %rdx
	addq	%rax, %rdi
	cmpq	%rdx, %rdi
	jbe	.L92
	movq	%rdi, _ZL9stb__dout(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r14
	ret
	.p2align 4,,7
.L109:
	movq	%rax, %rdx
	movq	%rbx, %rcx
	movl	%r11d, %r8d
	jmp	.L97
	.p2align 4,,7
.L96:
	movl	%r11d, %r9d
	xorl	%edx, %edx
	leaq	1(%r9), %r8
	.p2align 4,,7
.L107:
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, (%rax,%rdx)
	incq	%rdx
	cmpq	%rdx, %r8
	jne	.L107
	jmp	.L108
	.p2align 4,,7
.L110:
	xorl	%r12d, %r12d
	jmp	.L100
	.seh_endproc
	.section .rdata,"dr"
.LC7:
	.ascii "0\0"
	.align 8
.LC8:
	.ascii "unicode_codepoint <= ttUSHORT(data + endCount + 2*item)\0"
	.text
	.p2align 4,,15
	.def	stbtt_FindGlyphIndex.isra.11;	.scl	3;	.type	32;	.endef
	.seh_proc	stbtt_FindGlyphIndex.isra.11
stbtt_FindGlyphIndex.isra.11:
.LFB744:
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
	movl	%edx, %edi
	movq	%rcx, %rbx
	movslq	%r8d, %rsi
	leaq	(%rcx,%rdi), %rcx
	movzbl	(%rcx), %ebp
	movzbl	1(%rcx), %eax
	sall	$8, %ebp
	addw	%ax, %bp
	jne	.L203
	leaq	2(%rbx,%rdi), %rdx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	subl	$6, %eax
	cmpl	%esi, %eax
	jg	.L226
.L225:
	xorl	%eax, %eax
.L205:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L203:
	cmpw	$6, %bp
	je	.L227
	cmpw	$2, %bp
	je	.L228
	cmpw	$4, %bp
	je	.L229
	leal	-12(%rbp), %eax
	cmpw	$1, %ax
	jbe	.L230
	leaq	.LC2(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movl	$1417, %r8d
	call	_assert
	jmp	.L225
	.p2align 4,,7
.L226:
	movzbl	6(%rcx,%rsi), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L227:
	leaq	6(%rbx,%rdi), %rdx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	cmpl	%esi, %eax
	ja	.L225
	leaq	8(%rbx,%rdi), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rcx), %ecx
	sall	$8, %edx
	addl	%ecx, %edx
	movzwl	%dx, %edx
	addl	%eax, %edx
	cmpl	%edx, %esi
	jnb	.L225
	subl	%eax, %esi
	leal	(%rsi,%rsi), %eax
	leaq	10(%rdi,%rax), %rax
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	movzbl	1(%rbx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	jmp	.L205
	.p2align 4,,7
.L230:
	leaq	12(%rbx,%rdi), %rdx
	xorl	%r11d, %r11d
	movzbl	(%rdx), %eax
	sall	$24, %eax
	movl	%eax, %r10d
	movzbl	1(%rdx), %eax
	sall	$16, %eax
	addl	%r10d, %eax
	movzbl	2(%rdx), %r10d
	sall	$8, %r10d
	addl	%r10d, %eax
	movzbl	3(%rdx), %r10d
	addl	%eax, %r10d
.L219:
	cmpl	%r10d, %r11d
	jl	.L216
	jmp	.L225
	.p2align 4,,7
.L217:
	cmpl	%r11d, %eax
	movl	%eax, %r10d
	jle	.L225
.L216:
	movl	%r10d, %eax
	movl	$12, %ecx
	subl	%r11d, %eax
	sarl	%eax
	addl	%r11d, %eax
	movl	%eax, %edx
	imull	%ecx, %edx
	movslq	%edx, %rdx
	addq	%rdi, %rdx
	leaq	16(%rbx,%rdx), %r9
	movzbl	(%r9), %r8d
	movzbl	1(%r9), %ecx
	sall	$24, %r8d
	sall	$16, %ecx
	addl	%ecx, %r8d
	movzbl	2(%r9), %ecx
	sall	$8, %ecx
	addl	%r8d, %ecx
	movzbl	3(%r9), %r8d
	addl	%r8d, %ecx
	cmpl	%esi, %ecx
	ja	.L217
	leaq	20(%rbx,%rdx), %r11
	movzbl	(%r11), %r9d
	movzbl	1(%r11), %r8d
	sall	$24, %r9d
	sall	$16, %r8d
	addl	%r8d, %r9d
	movzbl	2(%r11), %r8d
	sall	$8, %r8d
	addl	%r9d, %r8d
	movzbl	3(%r11), %r9d
	addl	%r9d, %r8d
	cmpl	%esi, %r8d
	jnb	.L218
	leal	1(%rax), %r11d
	jmp	.L219
	.p2align 4,,7
.L229:
	cmpl	$65535, %esi
	jg	.L225
	leaq	12(%rbx,%rdi), %rcx
	leal	14(%rdx), %r10d
	movzbl	(%rcx), %eax
	movzbl	1(%rcx), %ecx
	movq	%r10, %rdx
	sall	$8, %eax
	addl	%ecx, %eax
	andl	$65534, %eax
	movslq	%eax, %rcx
	addq	%r10, %rcx
	addq	%rbx, %rcx
	movzbl	(%rcx), %r9d
	movzbl	1(%rcx), %r8d
	sall	$8, %r9d
	leal	(%r9,%r8), %ecx
	leal	(%rax,%r10), %r8d
	leaq	10(%rbx,%rdi), %rax
	movzbl	(%rax), %r9d
	movzbl	1(%rax), %eax
	movzwl	%cx, %ecx
	cmpl	%ecx, %esi
	cmovl	%r10d, %r8d
	subl	$2, %r8d
	sall	$8, %r9d
	addw	%ax, %r9w
	je	.L211
	leaq	8(%rbx,%rdi), %rcx
	movzbl	(%rcx), %eax
	movzbl	1(%rcx), %ecx
	sall	$8, %eax
	addl	%ecx, %eax
	movzwl	%ax, %eax
	shrl	%eax
	movl	%eax, %r11d
	.p2align 4,,7
.L212:
	movzwl	%r11w, %eax
	movl	%r8d, %ebp
	sarl	%eax
	movl	%eax, %r11d
	addl	%eax, %eax
	movslq	%eax, %rcx
	addl	%r8d, %eax
	addq	%rbp, %rcx
	addq	%rbx, %rcx
	movzbl	(%rcx), %r12d
	movzbl	1(%rcx), %ebp
	sall	$8, %r12d
	leal	(%r12,%rbp), %ecx
	movzwl	%cx, %ecx
	cmpl	%ecx, %esi
	cmovg	%eax, %r8d
	decw	%r9w
	jne	.L212
.L211:
	subl	%edx, %r8d
	leaq	6(%rbx,%rdi), %rax
	leal	2(%r8), %r12d
	movzbl	(%rax), %r13d
	movzbl	1(%rax), %ebp
	andl	$131070, %r12d
	addq	%r12, %r10
	addq	%rbx, %r10
	movzbl	(%r10), %eax
	movzbl	1(%r10), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	cmpl	%eax, %esi
	jg	.L231
.L213:
	sall	$8, %r13d
	addq	$16, %rdi
	leal	0(%r13,%rbp), %eax
	movzwl	%ax, %eax
	sarl	%eax
	leal	(%rax,%rax), %r9d
	movslq	%r9d, %rcx
	leaq	(%rcx,%rdi), %rdx
	addq	%r12, %rdx
	addq	%rbx, %rdx
	movzbl	(%rdx), %r10d
	movzbl	1(%rdx), %r8d
	sall	$8, %r10d
	leal	(%r10,%r8), %edx
	movzwl	%dx, %edx
	cmpl	%edx, %esi
	jl	.L225
	sall	$3, %eax
	subl	%r9d, %eax
	cltq
	addq	%rdi, %rax
	leaq	(%r12,%rax), %r8
	leaq	(%rbx,%r8), %r11
	movzbl	(%r11), %r9d
	movl	%r9d, %r10d
	movzbl	1(%r11), %r9d
	sall	$8, %r10d
	addw	%r10w, %r9w
	jne	.L214
	subq	%rcx, %rax
	addq	%rax, %r12
	addq	%r12, %rbx
	movzbl	(%rbx), %eax
	movzbl	1(%rbx), %edx
	sall	$8, %eax
	addl	%edx, %esi
	addl	%esi, %eax
	movzwl	%ax, %eax
	jmp	.L205
.L231:
	leaq	.LC2(%rip), %rdx
	leaq	.LC8(%rip), %rcx
	movl	$1382, %r8d
	call	_assert
	jmp	.L213
	.p2align 4,,7
.L228:
	leaq	.LC2(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movl	$1346, %r8d
	call	_assert
	xorl	%eax, %eax
	jmp	.L205
.L214:
	subl	%edx, %esi
	movzwl	%r9w, %r9d
	leal	(%rsi,%rsi), %eax
	addq	%r9, %r8
	cltq
	addq	%r8, %rax
	addq	%rax, %rbx
	movzbl	(%rbx), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	1(%rbx), %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	jmp	.L205
.L218:
	leaq	24(%rbx,%rdx), %r8
	movzbl	(%r8), %edx
	movzbl	1(%r8), %eax
	sall	$24, %edx
	sall	$16, %eax
	addl	%eax, %edx
	movzbl	2(%r8), %eax
	sall	$8, %eax
	addl	%eax, %edx
	movzbl	3(%r8), %eax
	addl	%edx, %eax
	cmpw	$12, %bp
	jne	.L205
	subl	%ecx, %esi
	addl	%esi, %eax
	jmp	.L205
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "C:/libraries/include/imgui/stb_rect_pack.h\0"
.LC10:
	.ascii "first->x <= x0\0"
.LC11:
	.ascii "node->next->x > x0\0"
.LC12:
	.ascii "node->x <= x0\0"
	.text
	.p2align 4,,15
	.def	_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.isra.12;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.isra.12
_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.isra.12:
.LFB745:
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
	movl	%edx, %ebp
	leal	(%rdx,%r8), %esi
	movzwl	(%rcx), %edx
	movq	%rcx, %rbx
	movl	%r8d, %edi
	movq	%r9, %r12
	cmpl	%edx, %ebp
	jl	.L247
	movq	8(%rcx), %rax
	movzwl	(%rax), %eax
	cmpl	%eax, %ebp
	jge	.L242
.L235:
	xorl	%r10d, %r10d
	cmpl	%edx, %esi
	jle	.L243
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.L241
	.p2align 4,,7
.L248:
	movl	%ecx, %r11d
	movq	8(%rbx), %rbx
	subl	%eax, %r11d
	movl	%r11d, %eax
	imull	%r8d, %eax
	addl	%eax, %r10d
	cmpl	%edx, %ebp
	jle	.L238
	movzwl	(%rbx), %edx
	movl	%edx, %eax
	subl	%ebp, %eax
	addl	%eax, %r8d
	movl	%ecx, %eax
.L239:
	cmpl	%edx, %esi
	jle	.L236
.L241:
	movzwl	2(%rbx), %ecx
	cmpl	%eax, %ecx
	jg	.L248
	movq	8(%rbx), %rbx
	movzwl	(%rbx), %r9d
	movl	%r9d, %r11d
	subl	%edx, %r11d
	movl	%r11d, %edx
	leal	(%r11,%r8), %r11d
	cmpl	%r11d, %edi
	jge	.L244
	movl	%edi, %edx
	subl	%r8d, %edx
	movl	%edi, %r8d
.L240:
	movl	%eax, %r11d
	subl	%ecx, %r11d
	imull	%r11d, %edx
	addl	%edx, %r10d
	movl	%r9d, %edx
	cmpl	%edx, %esi
	jg	.L241
.L236:
	movl	%r10d, (%r12)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L238:
	movzwl	(%rbx), %eax
	movl	%eax, %r9d
	subl	%edx, %r9d
	movl	%eax, %edx
	movl	%ecx, %eax
	addl	%r9d, %r8d
	jmp	.L239
	.p2align 4,,7
.L244:
	movl	%r11d, %r8d
	jmp	.L240
	.p2align 4,,7
.L247:
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rcx
	movl	$287, %r8d
	call	_assert
	movq	8(%rbx), %rax
	movzwl	(%rax), %eax
	cmpl	%eax, %ebp
	jge	.L242
.L234:
	movzwl	(%rbx), %edx
	cmpl	%edx, %ebp
	jge	.L235
	leaq	.LC9(%rip), %rdx
	leaq	.LC12(%rip), %rcx
	movl	$297, %r8d
	call	_assert
	movzwl	(%rbx), %edx
	jmp	.L235
	.p2align 4,,7
.L242:
	leaq	.LC9(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$294, %r8d
	call	_assert
	jmp	.L234
.L243:
	xorl	%eax, %eax
	jmp	.L236
	.seh_endproc
	.section .rdata,"dr"
.LC13:
	.ascii "width % c->align == 0\0"
.LC14:
	.ascii "xpos >= 0\0"
	.align 8
.LC15:
	.ascii "node->next->x > xpos && node->x <= xpos\0"
	.text
	.p2align 4,,15
	.def	stbrp_pack_rects;	.scl	3;	.type	32;	.endef
	.seh_proc	stbrp_pack_rects
stbrp_pack_rects:
.LFB296:
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
	testl	%r8d, %r8d
	movq	%rcx, %r13
	movq	%rdx, 216(%rsp)
	movl	%r8d, 224(%rsp)
	jle	.L250
	cmpl	$4, %r8d
	leal	-3(%r8), %r9d
	jle	.L299
	leaq	556(%rdx), %rdx
	movl	$1, %ecx
	xorl	%eax, %eax
	.p2align 4,,7
.L252:
	leal	1(%rcx), %r8d
	movl	%ecx, -528(%rdx)
	movl	%eax, -544(%rdx)
	prefetcht0	(%rdx)
	addl	$4, %eax
	addq	$64, %rdx
	movl	%r8d, -576(%rdx)
	leal	2(%rcx), %r8d
	addl	$4, %ecx
	movl	%r8d, -560(%rdx)
	cmpl	%ecx, %r9d
	jg	.L252
	movl	224(%rsp), %ecx
.L251:
	movslq	%eax, %rdx
	salq	$4, %rdx
	addq	216(%rsp), %rdx
	.p2align 4,,7
.L254:
	movl	%eax, 12(%rdx)
	incl	%eax
	addq	$16, %rdx
	cmpl	%eax, %ecx
	jg	.L254
	movslq	224(%rsp), %rax
	movq	216(%rsp), %rcx
	leaq	_ZL19rect_height_comparePKvS0_(%rip), %r9
	movl	$16, %r8d
	movq	%r13, %r14
	movq	%rax, %rdx
	movq	%rax, 88(%rsp)
	call	qsort
	movq	216(%rsp), %rax
	movq	216(%rsp), %rdi
	leaq	26(%rax), %r15
	movl	224(%rsp), %eax
	decl	%eax
	salq	$4, %rax
	leaq	42(%rdi,%rax), %rax
	movq	%rax, 40(%rsp)
	leaq	24(%r13), %rax
	movq	%rax, 72(%rsp)
	jmp	.L291
	.p2align 4,,7
.L255:
	movw	$0, -16(%r15)
	movw	$0, -18(%r15)
	prefetcht0	(%r15)
.L257:
	addq	$16, %r15
	cmpq	%r15, 40(%rsp)
	je	.L340
.L291:
	movzwl	-22(%r15), %r12d
	testw	%r12w, %r12w
	je	.L255
	movzwl	-20(%r15), %eax
	prefetcht0	-4(%r15)
	testw	%ax, %ax
	movw	%ax, 100(%rsp)
	je	.L255
	movzwl	100(%rsp), %eax
	movl	8(%r14), %ecx
	movl	%eax, 60(%rsp)
	movzwl	%r12w, %eax
	leal	-1(%rax,%rcx), %edi
	movl	%eax, 96(%rsp)
	movl	%edi, %eax
	cltd
	idivl	%ecx
	subl	%edx, %edi
	movl	%edi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.L341
.L258:
	movq	24(%r14), %rbx
	movq	72(%rsp), %rcx
	movzwl	(%rbx), %edx
	movq	%rcx, 80(%rsp)
	leal	(%rdi,%rdx), %eax
	cmpl	%eax, (%r14)
	movl	%edx, %esi
	jl	.L259
	leaq	124(%rsp), %rax
	movq	%rcx, %rsi
	movq	%r14, %rcx
	movq	%r15, 64(%rsp)
	movl	%r12d, %r14d
	movq	%rbx, %r15
	movq	$0, 32(%rsp)
	movl	$1073741824, 56(%rsp)
	movl	$1073741824, %ebp
	movq	%rax, 48(%rsp)
	movl	60(%rsp), %ebx
	movq	%rax, %r13
	movq	%rcx, %r12
	jmp	.L264
	.p2align 4,,7
.L343:
	cmpl	%ebp, %eax
	jge	.L261
.L300:
	movq	%rsi, 32(%rsp)
	movl	%eax, %ebp
.L261:
	leaq	8(%r15), %rsi
	movq	8(%r15), %r15
	movzwl	(%r15), %edx
	leal	(%rdi,%rdx), %eax
	cmpl	(%r12), %eax
	jg	.L342
.L264:
	movq	%r15, %rcx
	movq	%r13, %r9
	movl	%edi, %r8d
	call	_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.isra.12
	movl	16(%r12), %ecx
	testl	%ecx, %ecx
	je	.L343
	leal	(%rbx,%rax), %edx
	cmpl	4(%r12), %edx
	jg	.L261
	cmpl	%ebp, %eax
	jge	.L262
	movl	124(%rsp), %edx
	movl	%edx, 56(%rsp)
	jmp	.L300
	.p2align 4,,7
.L262:
	jne	.L261
	movl	124(%rsp), %edx
	cmpl	56(%rsp), %edx
	jge	.L261
	movl	%edx, 56(%rsp)
	jmp	.L300
	.p2align 4,,7
.L342:
	movq	%r12, %rax
	movl	%r14d, %r12d
	movq	64(%rsp), %r15
	movq	%rax, %r14
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.L265
	movq	(%rax), %rax
	decl	%ecx
	movzwl	(%rax), %eax
	movl	%eax, 64(%rsp)
	je	.L344
.L266:
	movl	60(%rsp), %eax
	addl	%ebp, %eax
	cmpl	4(%r14), %eax
	jg	.L268
	movq	32(%r14), %r8
	testq	%r8, %r8
	je	.L268
	movl	%ebp, %r9d
	addw	100(%rsp), %bp
	movl	64(%rsp), %edi
	movq	8(%r8), %rax
	movw	%di, (%r8)
	movl	%edi, %r11d
	movw	%bp, 2(%r8)
	movq	%rax, 32(%r14)
	movq	32(%rsp), %rax
	movq	(%rax), %rdx
	movzwl	(%rdx), %eax
	cmpl	%edi, %eax
	jl	.L345
	movq	32(%rsp), %rax
	movq	%r8, (%rax)
.L285:
	movq	8(%rdx), %rcx
	testq	%rcx, %rcx
	je	.L346
	movzwl	(%rcx), %eax
	movl	96(%rsp), %r13d
	addl	64(%rsp), %r13d
	movl	%eax, %edi
	cmpl	%eax, %r13d
	jl	.L286
	movq	32(%r14), %rsi
	jmp	.L287
	.p2align 4,,7
.L288:
	movzwl	(%rax), %ebx
	movq	%rdx, %rsi
	cmpl	%r13d, %ebx
	jg	.L336
	movq	%rcx, %rdx
	movzwl	%bx, %edi
	movq	%rax, %rcx
.L287:
	movq	%rsi, 8(%rdx)
	movq	8(%rcx), %rax
	testq	%rax, %rax
	jne	.L288
.L336:
	movq	%rdx, 32(%r14)
.L284:
	cmpl	%r13d, %edi
	movq	%rcx, 8(%r8)
	jge	.L281
	addl	%r11d, %r12d
	movw	%r12w, (%rcx)
	jmp	.L281
	.p2align 4,,7
.L340:
	movq	88(%rsp), %rdx
	movq	216(%rsp), %rcx
	leaq	_ZL19rect_original_orderPKvS0_(%rip), %r9
	movl	$16, %r8d
	call	qsort
	xorl	%edx, %edx
	cmpl	$4, 224(%rsp)
	jle	.L298
	movl	224(%rsp), %edi
	movq	216(%rsp), %rax
	leal	-5(%rdi), %edx
	addq	$408, %rax
	shrl	$2, %edx
	leal	4(,%rdx,4), %r8d
	xorl	%edx, %edx
	.p2align 4,,7
.L292:
	xorl	%ecx, %ecx
	cmpl	$-1, -400(%rax)
	prefetcht0	(%rax)
	prefetcht0	4(%rax)
	setne	%cl
	movl	%ecx, -396(%rax)
	xorl	%ecx, %ecx
	cmpl	$-1, -384(%rax)
	setne	%cl
	movl	%ecx, -380(%rax)
	xorl	%ecx, %ecx
	cmpl	$-1, -368(%rax)
	setne	%cl
	movl	%ecx, -364(%rax)
	xorl	%ecx, %ecx
	cmpl	$-1, -352(%rax)
	setne	%cl
	addl	$4, %edx
	addq	$64, %rax
	movl	%ecx, -412(%rax)
	cmpl	%r8d, %edx
	jne	.L292
.L298:
	movslq	%edx, %rax
	movl	224(%rsp), %r8d
	salq	$4, %rax
	addq	216(%rsp), %rax
	.p2align 4,,7
.L293:
	xorl	%ecx, %ecx
	cmpl	$-1, 8(%rax)
	setne	%cl
	incl	%edx
	addq	$16, %rax
	movl	%ecx, -4(%rax)
	cmpl	%edx, %r8d
	jg	.L293
.L249:
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
.L347:
	cmpq	$0, 32(%rsp)
	movzwl	102(%rsp), %r12d
	movq	104(%rsp), %r15
	jne	.L266
.L268:
	movl	$-1, %r9d
	movl	%r9d, %r11d
.L281:
	movw	%r9w, -16(%r15)
	movw	%r11w, -18(%r15)
	jmp	.L257
.L345:
	movq	8(%rdx), %rax
	movq	%r8, 8(%rdx)
	movq	%rax, %rdx
	jmp	.L285
.L341:
	leaq	.LC9(%rip), %rdx
	leaq	.LC13(%rip), %rcx
	movl	$344, %r8d
	call	_assert
	jmp	.L258
.L344:
	movq	24(%r14), %rbx
	movzwl	(%rbx), %esi
.L267:
	cmpl	%esi, %edi
	movq	%rbx, %r13
	jle	.L302
	.p2align 4,,7
.L270:
	movq	8(%r13), %r13
	movzwl	0(%r13), %esi
	cmpl	%esi, %edi
	jg	.L270
.L302:
	movl	%esi, %r10d
	movw	%r12w, 102(%rsp)
	movq	%r15, 104(%rsp)
	movl	%r10d, %esi
	movq	%r13, %r12
	movq	80(%rsp), %r15
	subl	%edi, %esi
	movl	60(%rsp), %r13d
	js	.L271
	.p2align 4,,7
.L348:
	movq	8(%rbx), %rax
	movzwl	(%rax), %edx
	cmpl	%edx, %esi
	movl	%edx, %r8d
	jl	.L272
	movq	%rbx, %r15
	movq	%rax, %rbx
	jmp	.L274
	.p2align 4,,7
.L303:
	movq	%rbx, %r15
	movzwl	%ax, %r8d
	movq	%rdx, %rbx
.L274:
	movq	8(%rbx), %rdx
	movzwl	(%rdx), %ecx
	cmpl	%ecx, %esi
	movl	%ecx, %eax
	jge	.L303
	addq	$8, %r15
.L275:
	cmpl	%r8d, %esi
	jge	.L295
	leaq	.LC9(%rip), %rdx
	leaq	.LC15(%rip), %rcx
	movl	$407, %r8d
	call	_assert
.L295:
	movq	48(%rsp), %r9
	movl	%esi, %edx
	movl	%edi, %r8d
	movq	%rbx, %rcx
	call	_ZL25stbrp__skyline_find_min_yP13stbrp_contextP10stbrp_nodeiiPi.isra.12
	leal	0(%r13,%rax), %edx
	cmpl	4(%r14), %edx
	jge	.L276
	cmpl	%ebp, %eax
	jg	.L276
	jge	.L277
	movl	124(%rsp), %ecx
	movl	%ecx, 56(%rsp)
.L278:
	movq	%r15, 32(%rsp)
	movl	%eax, %ebp
	movl	%esi, 64(%rsp)
.L276:
	movq	8(%r12), %r12
	testq	%r12, %r12
	je	.L347
	movzwl	(%r12), %r10d
	movl	%r10d, %esi
	subl	%edi, %esi
	jns	.L348
.L271:
	leaq	.LC9(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$401, %r8d
	call	_assert
.L272:
	movzwl	(%rbx), %r8d
	jmp	.L275
	.p2align 4,,7
.L277:
	movl	124(%rsp), %edx
	movl	56(%rsp), %ecx
	cmpl	%ecx, %edx
	jl	.L304
	cmpl	64(%rsp), %esi
	jge	.L276
	cmpl	%ecx, %edx
	jne	.L276
.L304:
	movl	%edx, 56(%rsp)
	jmp	.L278
.L259:
	cmpl	$1, 16(%r14)
	jne	.L268
	leaq	124(%rsp), %rax
	movl	$1073741824, %ebp
	movl	$1073741824, 56(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, 64(%rsp)
	movq	%rax, 48(%rsp)
	jmp	.L267
.L299:
	xorl	%eax, %eax
	movl	%r8d, %ecx
	jmp	.L251
.L250:
	movslq	224(%rsp), %rbx
	leaq	_ZL19rect_height_comparePKvS0_(%rip), %r9
	movq	%rdx, %rcx
	movl	$16, %r8d
	movq	%rbx, %rdx
	call	qsort
	movq	216(%rsp), %rcx
	leaq	_ZL19rect_original_orderPKvS0_(%rip), %r9
	movl	$16, %r8d
	movq	%rbx, %rdx
	call	qsort
	jmp	.L249
.L265:
	decl	%ecx
	jne	.L268
	movq	24(%r14), %rbx
	movl	$0, 64(%rsp)
	movzwl	(%rbx), %esi
	jmp	.L267
.L286:
	movzwl	(%rdx), %edi
	movq	%rdx, %rcx
	jmp	.L284
.L346:
	movl	96(%rsp), %r13d
	movzwl	(%rdx), %edi
	movq	%rdx, %rcx
	addl	64(%rsp), %r13d
	jmp	.L284
	.seh_endproc
	.section .rdata,"dr"
.LC16:
	.ascii "y0 < y1\0"
.LC17:
	.ascii "e->sy <= e->ey\0"
.LC18:
	.ascii "x1 <= x+1\0"
.LC19:
	.ascii "x1 >= x\0"
.LC20:
	.ascii "x1 <= x\0"
.LC21:
	.ascii "x1 >= x+1\0"
.LC22:
	.ascii "x1 >= x && x1 <= x+1\0"
	.align 8
.LC23:
	.ascii "x0 >= x && x0 <= x+1 && x1 >= x && x1 <= x+1\0"
	.text
	.p2align 4,,15
	.def	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15:
.LFB748:
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
	movq	%rcx, %rdi
	movslq	%edx, %rsi
	movq	%r8, %rbx
	movss	192(%rsp), %xmm8
	movss	208(%rsp), %xmm6
	movaps	%xmm3, %xmm9
	ucomiss	%xmm8, %xmm6
	movss	200(%rsp), %xmm7
	jbe	.L403
.L350:
	movss	28(%rbx), %xmm0
	ucomiss	24(%rbx), %xmm0
	jb	.L404
.L351:
	ucomiss	%xmm0, %xmm8
	ja	.L349
	movss	24(%rbx), %xmm1
	ucomiss	%xmm6, %xmm1
	ja	.L349
	ucomiss	%xmm8, %xmm1
	jbe	.L356
	movaps	%xmm7, %xmm3
	movaps	%xmm1, %xmm2
	subss	%xmm9, %xmm3
	subss	%xmm8, %xmm2
	mulss	%xmm3, %xmm2
	movaps	%xmm6, %xmm3
	subss	%xmm8, %xmm3
	movaps	%xmm1, %xmm8
	divss	%xmm3, %xmm2
	addss	%xmm2, %xmm9
.L356:
	ucomiss	%xmm0, %xmm6
	ja	.L405
.L358:
	cvtsi2ss	%esi, %xmm10
	ucomiss	%xmm10, %xmm9
	jp	.L360
	jne	.L360
	leal	1(%rsi), %eax
	cvtsi2ss	%eax, %xmm11
	ucomiss	%xmm7, %xmm11
	jb	.L406
.L362:
	ucomiss	%xmm7, %xmm10
	jb	.L385
	ucomiss	%xmm9, %xmm10
	jb	.L385
.L372:
	subss	%xmm8, %xmm6
	leaq	(%rdi,%rsi,4), %rax
	mulss	20(%rbx), %xmm6
	addss	(%rax), %xmm6
	movss	%xmm6, (%rax)
.L349:
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
	.p2align 4,,7
.L404:
	leaq	.LC2(%rip), %rdx
	leaq	.LC17(%rip), %rcx
	movl	$2544, %r8d
	call	_assert
	movss	28(%rbx), %xmm0
	jmp	.L351
	.p2align 4,,7
.L403:
	leaq	.LC2(%rip), %rdx
	leaq	.LC16(%rip), %rcx
	movl	$2543, %r8d
	call	_assert
	jmp	.L350
	.p2align 4,,7
.L405:
	movaps	%xmm7, %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm9, %xmm2
	subss	%xmm6, %xmm1
	subss	%xmm8, %xmm6
	mulss	%xmm2, %xmm1
	divss	%xmm6, %xmm1
	movaps	%xmm0, %xmm6
	addss	%xmm1, %xmm7
	jmp	.L358
	.p2align 4,,7
.L360:
	leal	1(%rsi), %eax
	cvtsi2ss	%eax, %xmm11
	ucomiss	%xmm11, %xmm9
	jp	.L363
	jne	.L363
	ucomiss	%xmm10, %xmm7
	jnb	.L362
	leaq	.LC2(%rip), %rdx
	leaq	.LC19(%rip), %rcx
	movl	$2559, %r8d
	call	_assert
	jmp	.L362
	.p2align 4,,7
.L385:
	ucomiss	%xmm11, %xmm7
	jb	.L386
	ucomiss	%xmm11, %xmm9
	.p2align 4,,3
	jnb	.L349
.L386:
	ucomiss	%xmm10, %xmm9
	setnb	%dl
	ucomiss	%xmm10, %xmm7
	setnb	%al
	andl	%edx, %eax
	ucomiss	%xmm9, %xmm11
	setnb	%dl
	testb	%dl, %al
	je	.L387
	ucomiss	%xmm7, %xmm11
	jb	.L387
.L375:
	subss	%xmm10, %xmm9
	movss	.LC24(%rip), %xmm0
	subss	%xmm10, %xmm7
	leaq	(%rdi,%rsi,4), %rax
	subss	%xmm8, %xmm6
	addss	%xmm9, %xmm7
	mulss	20(%rbx), %xmm6
	mulss	.LC1(%rip), %xmm7
	subss	%xmm7, %xmm0
	mulss	%xmm0, %xmm6
	addss	(%rax), %xmm6
	movss	%xmm6, (%rax)
	jmp	.L349
	.p2align 4,,7
.L387:
	leaq	.LC2(%rip), %rdx
	leaq	.LC23(%rip), %rcx
	movl	$2572, %r8d
	call	_assert
	jmp	.L375
	.p2align 4,,7
.L363:
	ucomiss	%xmm9, %xmm10
	jnb	.L407
	ucomiss	%xmm11, %xmm9
	.p2align 4,,3
	jnb	.L408
	ucomiss	%xmm10, %xmm7
	jb	.L384
	ucomiss	%xmm7, %xmm11
	jnb	.L362
.L384:
	leaq	.LC2(%rip), %rdx
	leaq	.LC22(%rip), %rcx
	movl	$2565, %r8d
	call	_assert
	jmp	.L362
	.p2align 4,,7
.L406:
	leaq	.LC2(%rip), %rdx
	leaq	.LC18(%rip), %rcx
	movl	$2557, %r8d
	call	_assert
	jmp	.L362
	.p2align 4,,7
.L407:
	ucomiss	%xmm7, %xmm10
	jnb	.L372
	leaq	.LC2(%rip), %rdx
	leaq	.LC20(%rip), %rcx
	movl	$2561, %r8d
	call	_assert
	jmp	.L362
	.p2align 4,,7
.L408:
	ucomiss	%xmm11, %xmm7
	jnb	.L362
	leaq	.LC2(%rip), %rdx
	leaq	.LC21(%rip), %rcx
	movl	$2563, %r8d
	call	_assert
	jmp	.L362
	.seh_endproc
	.align 2
	.p2align 4,,15
	.def	_ZN11ImFontAtlas19RenderCustomTexDataEiPv.constprop.66;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas19RenderCustomTexDataEiPv.constprop.66
_ZN11ImFontAtlas19RenderCustomTexDataEiPv.constprop.66:
.LFB814:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, %rbx
	movslq	(%rdx), %rdx
	movq	$0, 32(%rsp)
	cmpl	4(%rbx), %edx
	movq	$0, 40(%rsp)
	movw	$181, 36(%rsp)
	movw	$28, 38(%rsp)
	je	.L410
	movq	8(%rbx), %rax
	leal	1(%rdx), %r8d
.L411:
	movl	%r8d, (%rbx)
	movq	32(%rsp), %rcx
	salq	$4, %rdx
	movq	40(%rsp), %rbx
	movq	%rcx, (%rax,%rdx)
	movq	%rbx, 8(%rax,%rdx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L410:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L420
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L413
.L421:
	movq	8(%rbx), %rax
	jmp	.L411
	.p2align 4,,7
.L420:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jle	.L421
.L413:
	movslq	%eax, %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L414
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rbx), %rcx
.L414:
	call	_ZN5ImGui7MemFreeEPv
	movslq	(%rbx), %rdx
	movq	%rdi, 8(%rbx)
	movq	%rdi, %rax
	movl	%esi, 4(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L411
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.77;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.77
_ZL14stbtt__buf_getP10stbtt__bufi.constprop.77:
.LFB803:
	.seh_endprologue
	movl	12(%rcx), %r10d
	movl	8(%rcx), %edx
	cmpl	%edx, %r10d
	jle	.L424
	movq	(%rcx), %r11
	leal	1(%rdx), %r9d
	movslq	%edx, %rax
	movl	%r9d, 8(%rcx)
	movzbl	(%r11,%rax), %eax
	sall	$8, %eax
	cmpl	%r10d, %r9d
	movl	%eax, %r8d
	jge	.L425
	addl	$2, %edx
	movslq	%r9d, %r9
	movl	%edx, 8(%rcx)
	movzbl	(%r11,%r9), %eax
.L423:
	orl	%r8d, %eax
	ret
	.p2align 4,,7
.L424:
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	orl	%r8d, %eax
	ret
.L425:
	xorl	%eax, %eax
	jmp	.L423
	.seh_endproc
	.p2align 4,,15
	.def	_ZL15stbtt__dict_getP10stbtt__bufi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15stbtt__dict_getP10stbtt__bufi
_ZL15stbtt__dict_getP10stbtt__bufi:
.LFB307:
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
	movl	%r8d, %ebp
	movl	12(%rdx), %r8d
	movq	%rcx, %rdi
	movq	%rdx, %r12
	testl	%r8d, %r8d
	js	.L476
.L427:
	testl	%r8d, %r8d
	movl	$0, %esi
	cmovle	%r8d, %esi
	cmpl	%r8d, %esi
	movl	%esi, 8(%r12)
	jge	.L428
	.p2align 4,,7
.L479:
	movl	%esi, %ebx
	.p2align 4,,7
.L430:
	movq	(%r12), %rdx
	movslq	%ebx, %rcx
	leaq	(%rdx,%rcx), %r9
	movzbl	(%r9), %eax
	cmpb	$27, %al
	jbe	.L432
	cmpb	$30, %al
	je	.L477
	leal	1(%rbx), %eax
	movl	%eax, 8(%r12)
	movzbl	(%rdx,%rcx), %edx
	leal	-32(%rdx), %ecx
	cmpl	$214, %ecx
	ja	.L478
	movl	%eax, %ebx
.L439:
	cmpl	%r8d, %ebx
	jl	.L430
.L438:
	xorl	%eax, %eax
.L431:
	cmpl	%ebp, %eax
	je	.L452
.L483:
	movl	8(%r12), %esi
	cmpl	%r8d, %esi
	jl	.L479
.L428:
	testl	%r8d, %r8d
	movq	$0, (%rdi)
	movl	$0, 12(%rdi)
	movl	$0, 8(%rdi)
	js	.L426
	movq	(%r12), %rax
	movq	%rax, (%rdi)
.L426:
	movq	%rdi, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L477:
	incl	%ebx
	js	.L462
	cmpl	%r8d, %ebx
	jg	.L462
	cmpl	%r8d, %ebx
	.p2align 4,,3
	jg	.L463
.L481:
	movl	%ebx, %eax
	shrl	$31, %eax
	jne	.L463
.L436:
	movl	%ebx, 8(%r12)
	movslq	%ebx, %rdx
	jmp	.L440
	.p2align 4,,7
.L480:
	movq	(%r12), %rax
	incl	%ebx
	movl	%ebx, 8(%r12)
	movzbl	(%rax,%rdx), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpb	$15, %cl
	je	.L439
	sarl	$4, %eax
	incq	%rdx
	cmpl	$15, %eax
	je	.L439
.L440:
	cmpl	%r8d, %ebx
	jl	.L480
	jmp	.L438
	.p2align 4,,7
.L462:
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movl	$1000, %r8d
	call	_assert
	movl	12(%r12), %r8d
	cmpl	%r8d, %ebx
	jle	.L481
.L463:
	movl	%r8d, %ebx
	jmp	.L436
	.p2align 4,,7
.L478:
	leal	-247(%rdx), %ecx
	cmpl	$3, %ecx
	ja	.L482
.L442:
	cmpl	%r8d, %eax
	jge	.L460
	addl	$2, %ebx
	movl	%ebx, 8(%r12)
	jmp	.L439
.L474:
	movl	%eax, 8(%r12)
	.p2align 4,,7
.L460:
	movl	%eax, %ebx
	jmp	.L438
.L432:
	leal	1(%rbx), %ecx
	movl	%ecx, 8(%r12)
	movzbl	(%r9), %eax
	cmpl	$12, %eax
	jne	.L431
	cmpl	%r8d, %ecx
	movl	$256, %eax
	jge	.L431
	leal	2(%rbx), %eax
	movslq	%ecx, %rcx
	movl	%eax, 8(%r12)
	movzbl	(%rdx,%rcx), %eax
	orb	$1, %ah
	cmpl	%ebp, %eax
	jne	.L483
.L452:
	subl	%esi, %ebx
	movl	%esi, %edx
	movq	$0, (%rdi)
	movl	%ebx, %eax
	shrl	$31, %edx
	movl	$0, 12(%rdi)
	shrl	$31, %eax
	movl	$0, 8(%rdi)
	orb	%al, %dl
	jne	.L426
	cmpl	%r8d, %esi
	jg	.L426
	subl	%esi, %r8d
	cmpl	%r8d, %ebx
	jg	.L426
	movslq	%esi, %rax
	addq	(%r12), %rax
	movl	%ebx, 12(%rdi)
	movq	%rax, (%rdi)
	movq	%rdi, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L476:
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movl	$1000, %r8d
	call	_assert
	movl	12(%r12), %r8d
	jmp	.L427
.L482:
	leal	-251(%rdx), %ecx
	cmpl	$3, %ecx
	jbe	.L442
	cmpl	$28, %edx
	je	.L484
	cmpl	$29, %edx
	jne	.L447
	cmpl	%r8d, %eax
	.p2align 4,,2
	jge	.L460
	leal	2(%rbx), %eax
	cmpl	%eax, %r8d
	jle	.L474
	leal	3(%rbx), %eax
	cmpl	%eax, %r8d
	movl	%eax, 8(%r12)
	jle	.L460
	leal	4(%rbx), %eax
	cmpl	%eax, %r8d
	movl	%eax, 8(%r12)
	jle	.L460
	addl	$5, %ebx
	movl	%ebx, 8(%r12)
	jmp	.L439
.L447:
	leaq	.LC2(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movl	$1063, %r8d
	call	_assert
	movl	8(%r12), %ebx
	movl	12(%r12), %r8d
	jmp	.L439
.L484:
	cmpl	%r8d, %eax
	jge	.L460
	leal	2(%rbx), %eax
	cmpl	%r8d, %eax
	jge	.L474
	addl	$3, %ebx
	movl	%ebx, 8(%r12)
	jmp	.L439
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.76;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.76
_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.76:
.LFB804:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rax
	leaq	32(%rsp), %rcx
	movq	%r8, %rbx
	movl	%edx, %r8d
	movq	%rax, %rdx
	call	_ZL15stbtt__dict_getP10stbtt__bufi
	movq	40(%rsp), %rax
	movq	32(%rsp), %r9
	movq	%rax, %r8
	sarq	$32, %r8
	cmpl	%r8d, %eax
	jge	.L485
	movslq	%eax, %rdx
	movzbl	(%r9,%rdx), %edx
	leal	-32(%rdx), %r10d
	leal	-139(%rdx), %ecx
	cmpl	$214, %r10d
	ja	.L504
.L492:
	movl	%ecx, (%rbx)
.L485:
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L504:
	leal	-247(%rdx), %ecx
	leal	1(%rax), %r10d
	cmpl	$3, %ecx
	ja	.L505
	sall	$8, %ecx
	cmpl	%r8d, %r10d
	jge	.L506
	movslq	%r10d, %r10
	movzbl	(%r9,%r10), %eax
.L500:
	leal	108(%rax,%rcx), %ecx
	jmp	.L492
	.p2align 4,,7
.L505:
	leal	-251(%rdx), %ecx
	cmpl	$3, %ecx
	ja	.L507
	movl	$251, %ecx
	subl	%edx, %ecx
	sall	$8, %ecx
	cmpl	%r8d, %r10d
	jge	.L508
	movslq	%r10d, %r10
	movzbl	(%r9,%r10), %eax
.L498:
	subl	%eax, %ecx
	subl	$108, %ecx
	jmp	.L492
	.p2align 4,,7
.L507:
	cmpl	$28, %edx
	je	.L509
	cmpl	$29, %edx
	je	.L510
	leaq	.LC7(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$1063, %r8d
	call	_assert
	xorl	%ecx, %ecx
	jmp	.L492
	.p2align 4,,7
.L506:
	xorl	%eax, %eax
	jmp	.L500
	.p2align 4,,7
.L508:
	xorl	%eax, %eax
	.p2align 4,,5
	jmp	.L498
	.p2align 4,,7
.L510:
	cmpl	%r8d, %r10d
	.p2align 4,,4
	jge	.L502
	movslq	%r10d, %r10
	leal	2(%rax), %r11d
	movzbl	(%r9,%r10), %ecx
	movl	%ecx, %r10d
	sall	$8, %r10d
	cmpl	%r8d, %r11d
	jge	.L495
	movslq	%r11d, %r11
	leal	3(%rax), %edx
	movzbl	(%r9,%r11), %ecx
	orl	%r10d, %ecx
	sall	$8, %ecx
	cmpl	%edx, %r8d
	jle	.L494
	movslq	%edx, %rdx
	addl	$4, %eax
	movzbl	(%r9,%rdx), %edx
	orl	%edx, %ecx
	sall	$8, %ecx
	cmpl	%eax, %r8d
	jle	.L503
	cltq
	movzbl	(%r9,%rax), %eax
	orl	%eax, %ecx
	jmp	.L492
	.p2align 4,,7
.L502:
	xorl	%ecx, %ecx
.L494:
	sall	$8, %ecx
	xorl	%eax, %eax
	orl	%eax, %ecx
	jmp	.L492
	.p2align 4,,7
.L509:
	xorl	%ecx, %ecx
	cmpl	%r8d, %r10d
	jge	.L492
	movslq	%r10d, %r10
	addl	$2, %eax
	movzbl	(%r9,%r10), %ecx
	sall	$8, %ecx
	cmpl	%r8d, %eax
	jge	.L492
	cltq
	movzbl	(%r9,%rax), %eax
	orl	%eax, %ecx
	jmp	.L492
.L503:
	xorl	%eax, %eax
	orl	%eax, %ecx
	jmp	.L492
.L495:
	sall	$24, %ecx
	xorl	%eax, %eax
	orl	%eax, %ecx
	jmp	.L492
	.seh_endproc
	.p2align 4,,15
	.def	_ZL14stbtt__cff_intP10stbtt__buf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL14stbtt__cff_intP10stbtt__buf
_ZL14stbtt__cff_intP10stbtt__buf:
.LFB305:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	8(%rcx), %r8d
	movl	12(%rcx), %r9d
	cmpl	%r9d, %r8d
	jl	.L533
.L512:
	leaq	.LC2(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movl	$1063, %r8d
	call	_assert
	xorl	%eax, %eax
.L530:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L533:
	movq	(%rcx), %r11
	leal	1(%r8), %r10d
	movslq	%r8d, %rax
	movl	%r10d, 8(%rcx)
	movzbl	(%r11,%rax), %eax
	leal	-32(%rax), %edx
	cmpl	$214, %edx
	ja	.L513
	subl	$139, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L513:
	leal	-247(%rax), %edx
	cmpl	$3, %edx
	ja	.L534
	movl	%edx, %eax
	xorl	%edx, %edx
	sall	$8, %eax
	cmpl	%r10d, %r9d
	jle	.L518
	addl	$2, %r8d
	movslq	%r10d, %r10
	movl	%r8d, 8(%rcx)
	movzbl	(%r11,%r10), %edx
.L518:
	leal	108(%rax,%rdx), %eax
	addq	$32, %rsp
	popq	%rbx
	ret
.L534:
	leal	-251(%rax), %edx
	cmpl	$3, %edx
	ja	.L535
	movl	$251, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	sall	$8, %eax
	cmpl	%r10d, %r9d
	jle	.L519
	addl	$2, %r8d
	movslq	%r10d, %r10
	movl	%r8d, 8(%rcx)
	movzbl	(%r11,%r10), %edx
.L519:
	subl	%edx, %eax
	subl	$108, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
.L535:
	cmpl	$28, %eax
	je	.L536
	cmpl	$29, %eax
	jne	.L512
	cmpl	%r10d, %r9d
	.p2align 4,,2
	jle	.L528
	leal	2(%r8), %ebx
	movslq	%r10d, %r10
	movl	%ebx, 8(%rcx)
	movzbl	(%r11,%r10), %eax
	movl	%eax, %edx
	sall	$8, %edx
	cmpl	%ebx, %r9d
	jle	.L522
	leal	3(%r8), %r10d
	movslq	%ebx, %rbx
	movl	%edx, %eax
	movl	%r10d, 8(%rcx)
	movzbl	(%r11,%rbx), %r8d
.L521:
	orl	%r8d, %eax
	movl	%eax, %edx
	sall	$8, %edx
	cmpl	%r10d, %r9d
	jle	.L523
	leal	1(%r10), %ebx
	movslq	%r10d, %r10
	movl	%edx, %eax
	movl	%ebx, 8(%rcx)
	movzbl	(%r11,%r10), %r8d
.L525:
	orl	%r8d, %eax
	sall	$8, %eax
	cmpl	%ebx, %r9d
	jle	.L529
	leal	1(%rbx), %edx
	movslq	%ebx, %rbx
	movl	%edx, 8(%rcx)
	movzbl	(%r11,%rbx), %edx
	orl	%edx, %eax
	jmp	.L530
.L536:
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.77
	.p2align 4,,7
.L528:
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	jmp	.L521
	.p2align 4,,7
.L523:
	sall	$16, %eax
	xorl	%edx, %edx
	orl	%edx, %eax
	jmp	.L530
.L529:
	xorl	%edx, %edx
	orl	%edx, %eax
	jmp	.L530
.L522:
	sall	$16, %eax
	xorl	%r8d, %r8d
	jmp	.L525
	.seh_endproc
	.p2align 4,,15
	.def	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff
_ZL21stbtt__csctx_rline_toP12stbtt__csctxff:
.LFB334:
	.seh_endprologue
	movl	(%rcx), %eax
	addss	16(%rcx), %xmm1
	addss	20(%rcx), %xmm2
	testl	%eax, %eax
	movss	%xmm1, 16(%rcx)
	movss	%xmm2, 20(%rcx)
	cvttss2si	%xmm2, %r8d
	cvttss2si	%xmm1, %edx
	jne	.L552
	movslq	48(%rcx), %rax
	leaq	(%rax,%rax), %r9
	salq	$4, %rax
	subq	%r9, %rax
	addq	40(%rcx), %rax
	movb	$2, 12(%rax)
	movw	%dx, (%rax)
	movw	%r8w, 2(%rax)
	movw	$0, 4(%rax)
	movw	$0, 6(%rax)
	movslq	48(%rcx), %rax
	leaq	(%rax,%rax), %r8
	movq	%rax, %rdx
	salq	$4, %rax
	incl	%edx
	subq	%r8, %rax
	addq	40(%rcx), %rax
	movw	$0, 8(%rax)
	movw	$0, 10(%rax)
	movl	%edx, 48(%rcx)
	ret
	.p2align 4,,7
.L552:
	cmpl	28(%rcx), %edx
	jle	.L553
.L539:
	movl	%edx, 28(%rcx)
.L540:
	cmpl	36(%rcx), %r8d
	jg	.L541
	movl	4(%rcx), %r10d
	testl	%r10d, %r10d
	je	.L541
	cmpl	24(%rcx), %edx
	jge	.L545
.L543:
	cmpl	32(%rcx), %r8d
	movl	%edx, 24(%rcx)
	jl	.L548
	movl	4(%rcx), %eax
	testl	%eax, %eax
	jne	.L547
.L548:
	movl	%r8d, 32(%rcx)
.L547:
	movl	48(%rcx), %edx
	movl	$1, 4(%rcx)
	incl	%edx
	movl	%edx, 48(%rcx)
	ret
	.p2align 4,,7
.L541:
	cmpl	24(%rcx), %edx
	movl	%r8d, 36(%rcx)
	jl	.L543
	movl	4(%rcx), %r9d
	testl	%r9d, %r9d
	jne	.L545
	movl	%edx, 24(%rcx)
	jmp	.L548
	.p2align 4,,7
.L553:
	movl	4(%rcx), %r11d
	testl	%r11d, %r11d
	jne	.L540
	jmp	.L539
	.p2align 4,,7
.L545:
	cmpl	32(%rcx), %r8d
	jl	.L548
	.p2align 4,,7
	jmp	.L547
	.seh_endproc
	.p2align 4,,15
	.def	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff:
.LFB335:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movl	(%rcx), %edi
	addss	16(%rcx), %xmm1
	movss	64(%rsp), %xmm5
	addss	20(%rcx), %xmm2
	movss	72(%rsp), %xmm0
	movss	80(%rsp), %xmm4
	testl	%edi, %edi
	addss	%xmm1, %xmm3
	cvttss2si	%xmm1, %r8d
	addss	%xmm2, %xmm5
	cvttss2si	%xmm2, %edx
	addss	%xmm3, %xmm0
	cvttss2si	%xmm3, %r11d
	addss	%xmm5, %xmm4
	cvttss2si	%xmm5, %r10d
	movss	%xmm0, 16(%rcx)
	movss	%xmm4, 20(%rcx)
	cvttss2si	%xmm4, %ebx
	cvttss2si	%xmm0, %r9d
	jne	.L580
	movslq	48(%rcx), %rax
	leaq	(%rax,%rax), %rsi
	salq	$4, %rax
	subq	%rsi, %rax
	addq	40(%rcx), %rax
	movb	$4, 12(%rax)
	movw	%r8w, 4(%rax)
	movw	%dx, 6(%rax)
	movw	%r9w, (%rax)
	movw	%bx, 2(%rax)
	movslq	48(%rcx), %rax
	leaq	(%rax,%rax), %r8
	movq	%rax, %rdx
	salq	$4, %rax
	incl	%edx
	subq	%r8, %rax
	addq	40(%rcx), %rax
	movw	%r11w, 8(%rax)
	movw	%r10w, 10(%rax)
	movl	%edx, 48(%rcx)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L580:
	movl	28(%rcx), %eax
	cmpl	%eax, %r9d
	jle	.L581
.L556:
	movl	%r9d, 28(%rcx)
	movl	%r9d, %eax
.L557:
	movl	36(%rcx), %esi
	cmpl	%esi, %ebx
	jg	.L558
	movl	4(%rcx), %edi
	testl	%edi, %edi
	je	.L558
	movl	24(%rcx), %edi
	cmpl	%edi, %r9d
	jl	.L560
.L562:
	movl	32(%rcx), %r9d
	cmpl	%r9d, %ebx
	jge	.L582
	movl	%edi, %r9d
	jmp	.L563
	.p2align 4,,7
.L558:
	movl	24(%rcx), %edi
	movl	%ebx, 36(%rcx)
	cmpl	%edi, %r9d
	jge	.L583
	movl	%ebx, %esi
.L560:
	movl	32(%rcx), %edi
	movl	%r9d, 24(%rcx)
	cmpl	%edi, %ebx
	jl	.L563
	cmpl	$0, 4(%rcx)
	jne	.L584
.L563:
	movl	%ebx, 32(%rcx)
.L564:
	cmpl	%eax, %r8d
	movl	$1, 4(%rcx)
	jle	.L565
	movl	%r8d, 28(%rcx)
	movl	%r8d, %eax
.L565:
	cmpl	%esi, %edx
	jle	.L566
	movl	%edx, 36(%rcx)
	movl	%edx, %esi
.L566:
	cmpl	%r9d, %r8d
	jge	.L567
	movl	%r8d, 24(%rcx)
	movl	%r8d, %r9d
.L567:
	cmpl	%ebx, %edx
	jge	.L568
	movl	%edx, 32(%rcx)
	movl	%edx, %ebx
.L568:
	cmpl	%eax, %r11d
	jle	.L569
	movl	%r11d, 28(%rcx)
.L569:
	cmpl	%esi, %r10d
	jle	.L570
	movl	%r10d, 36(%rcx)
.L570:
	cmpl	%r9d, %r11d
	jge	.L571
	movl	%r11d, 24(%rcx)
.L571:
	cmpl	%ebx, %r10d
	jge	.L578
	movl	%r10d, 32(%rcx)
.L578:
	movl	48(%rcx), %edx
	incl	%edx
	movl	%edx, 48(%rcx)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L581:
	movl	4(%rcx), %esi
	testl	%esi, %esi
	jne	.L557
	jmp	.L556
	.p2align 4,,7
.L583:
	movl	4(%rcx), %esi
	testl	%esi, %esi
	jne	.L585
	movl	%r9d, 24(%rcx)
	movl	%ebx, %esi
	jmp	.L563
	.p2align 4,,7
.L582:
	movl	%r9d, %ebx
	movl	%edi, %r9d
	jmp	.L564
	.p2align 4,,7
.L585:
	movl	%ebx, %esi
	jmp	.L562
	.p2align 4,,7
.L584:
	movl	%edi, %ebx
	jmp	.L564
	.seh_endproc
	.section .rdata,"dr"
.LC25:
	.ascii "i >= 0 && i < count\0"
.LC26:
	.ascii "offsize >= 1 && offsize <= 4\0"
.LC27:
	.ascii "n >= 1 && n <= 4\0"
	.text
	.p2align 4,,15
	.def	_ZL20stbtt__cff_index_get10stbtt__bufi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbtt__cff_index_get10stbtt__bufi
_ZL20stbtt__cff_index_get10stbtt__bufi:
.LFB310:
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
	movslq	12(%rdx), %r13
	movq	(%rdx), %r12
	movq	%rcx, %r15
	movl	%r8d, %ebx
	cmpl	$0, %r13d
	movl	%r13d, %r14d
	jl	.L630
	jle	.L612
	movzbl	(%r12), %edx
	sall	$8, %edx
	cmpl	$1, %r13d
	jle	.L613
	movzbl	1(%r12), %ecx
	movl	$2, %esi
.L589:
	orl	%ecx, %edx
	cmpl	%esi, %r13d
	jle	.L590
	movzbl	(%r12,%rsi), %edi
	leal	1(%rsi), %ecx
	movl	%ebx, %esi
	subl	$0, %esi
	movl	%edi, %eax
	js	.L591
	cmpl	%ebx, %edx
	jle	.L591
	incl	%edx
	leal	-1(%rdi), %ebp
	imull	%edi, %edx
	imull	%edi, %ebx
	leal	2(%rdx), %eax
	movl	%eax, 40(%rsp)
.L592:
	cmpl	$3, %ebp
	ja	.L631
	addl	%ecx, %ebx
	cmpl	%r13d, %ebx
	jg	.L594
.L635:
	movl	%ebx, %eax
	subl	$0, %eax
	js	.L594
.L596:
	testl	%ebx, %ebx
	cmovs	%r13d, %ebx
	cmpl	$3, %ebp
	ja	.L632
.L597:
	testl	%edi, %edi
	je	.L633
.L611:
	xorl	%esi, %esi
	xorl	%edx, %edx
	.p2align 4,,7
.L601:
	sall	$8, %esi
	xorl	%ecx, %ecx
	cmpl	%ebx, %r14d
	jle	.L599
	movslq	%ebx, %rcx
	incl	%ebx
	movzbl	(%r12,%rcx), %ecx
.L599:
	incl	%edx
	orl	%ecx, %esi
	cmpl	%edi, %edx
	jne	.L601
	cmpl	$3, %ebp
	movl	%esi, %r9d
	ja	.L634
.L608:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align 4,,7
.L603:
	sall	$8, %edx
	xorl	%r8d, %r8d
	cmpl	%ebx, %r14d
	jle	.L602
	movslq	%ebx, %r8
	incl	%ebx
	movzbl	(%r12,%r8), %r8d
.L602:
	incl	%ecx
	orl	%r8d, %edx
	cmpl	%edi, %ecx
	jl	.L603
	subl	%esi, %edx
	movl	%edx, %eax
	shrl	$31, %eax
.L610:
	movl	40(%rsp), %ebp
	movq	$0, (%r15)
	movl	$0, 12(%r15)
	movl	$0, 8(%r15)
	addl	%r9d, %ebp
	movl	%ebp, %ecx
	shrl	$31, %ecx
	orb	%cl, %al
	jne	.L586
	cmpl	%r13d, %ebp
	jg	.L586
	subl	%ebp, %r13d
	cmpl	%edx, %r13d
	jl	.L586
	movslq	%ebp, %rbp
	movl	%edx, 12(%r15)
	addq	%rbp, %r12
	movq	%r12, (%r15)
.L586:
	movq	%r15, %rax
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
.L630:
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movl	$1000, %r8d
	movl	%r13d, %esi
	call	_assert
	xorl	%edx, %edx
.L590:
	movl	%ebx, %eax
	movl	$2, 40(%rsp)
	subl	$0, %eax
	js	.L618
	cmpl	%edx, %ebx
	jge	.L618
	xorl	%ebx, %ebx
	movl	$-1, %ebp
	xorl	%edi, %edi
.L605:
	leaq	.LC26(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$1118, %r8d
	call	_assert
	movl	%esi, %ecx
	addl	%ecx, %ebx
	cmpl	%r13d, %ebx
	jle	.L635
	.p2align 4,,7
.L594:
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movl	$1000, %r8d
	call	_assert
	cmpl	%ebx, %r13d
	jge	.L596
	cmpl	$3, %ebp
	movl	%r13d, %ebx
	jbe	.L597
.L632:
	leaq	.LC2(%rip), %rdx
	leaq	.LC27(%rip), %rcx
	movl	$1013, %r8d
	call	_assert
	testl	%edi, %edi
	jne	.L611
	leaq	.LC2(%rip), %rdx
	leaq	.LC27(%rip), %rcx
	movl	$1013, %r8d
	call	_assert
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	jmp	.L610
	.p2align 4,,7
.L618:
	xorl	%ebx, %ebx
	movl	$-1, %ebp
	xorl	%edi, %edi
.L607:
	leaq	.LC25(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$1117, %r8d
	call	_assert
	movl	%esi, %ecx
	jmp	.L592
	.p2align 4,,7
.L612:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.L589
	.p2align 4,,7
.L634:
	leaq	.LC2(%rip), %rdx
	leaq	.LC27(%rip), %rcx
	movl	$1013, %r8d
	movl	%esi, 44(%rsp)
	call	_assert
	movl	44(%rsp), %r9d
	jmp	.L608
.L591:
	incl	%edx
	leal	-1(%rax), %ebp
	movl	%ecx, %esi
	imull	%eax, %edx
	imull	%eax, %ebx
	leal	2(%rdx), %eax
	movl	%eax, 40(%rsp)
	jmp	.L607
.L613:
	movl	$1, %esi
	jmp	.L590
.L631:
	movl	%ecx, %esi
	jmp	.L605
.L633:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	jmp	.L610
	.seh_endproc
	.p2align 4,,15
	.def	_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff
_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff:
.LFB333:
	.seh_endprologue
	movss	8(%rcx), %xmm4
	movss	16(%rcx), %xmm0
	ucomiss	%xmm0, %xmm4
	movss	12(%rcx), %xmm5
	jp	.L639
	jne	.L639
	movss	20(%rcx), %xmm3
	ucomiss	%xmm3, %xmm5
	jp	.L639
	.p2align 4,,3
	je	.L670
.L639:
	movl	(%rcx), %r9d
	cvttss2si	%xmm5, %r8d
	cvttss2si	%xmm4, %edx
	testl	%r9d, %r9d
	jne	.L671
	movslq	48(%rcx), %rax
	leaq	(%rax,%rax), %r9
	salq	$4, %rax
	subq	%r9, %rax
	addq	40(%rcx), %rax
	movb	$2, 12(%rax)
	movw	%dx, (%rax)
	movslq	48(%rcx), %rdx
	movw	%r8w, 2(%rax)
	movw	$0, 4(%rax)
	movw	$0, 6(%rax)
	movl	(%rcx), %r9d
	movss	16(%rcx), %xmm0
	leaq	(%rdx,%rdx), %r8
	movq	%rdx, %rax
	salq	$4, %rdx
	subq	%r8, %rdx
	addq	40(%rcx), %rdx
	movw	$0, 8(%rdx)
	movw	$0, 10(%rdx)
.L652:
	incl	%eax
	movss	20(%rcx), %xmm3
	movl	%eax, 48(%rcx)
.L640:
	addss	%xmm0, %xmm1
	testl	%r9d, %r9d
	addss	%xmm3, %xmm2
	movss	%xmm1, 16(%rcx)
	movss	%xmm1, 8(%rcx)
	movss	%xmm2, 20(%rcx)
	movss	%xmm2, 12(%rcx)
	cvttss2si	%xmm2, %r8d
	cvttss2si	%xmm1, %edx
	jne	.L672
	cltq
	leaq	(%rax,%rax), %r9
	salq	$4, %rax
	subq	%r9, %rax
	addq	40(%rcx), %rax
	movb	$1, 12(%rax)
	movw	%dx, (%rax)
	movslq	48(%rcx), %rdx
	movw	%r8w, 2(%rax)
	movw	$0, 4(%rax)
	movw	$0, 6(%rax)
	leaq	(%rdx,%rdx), %r8
	movq	%rdx, %rax
	salq	$4, %rdx
	incl	%eax
	subq	%r8, %rdx
	addq	40(%rcx), %rdx
	movw	$0, 8(%rdx)
	movw	$0, 10(%rdx)
	movl	%eax, 48(%rcx)
	ret
	.p2align 4,,7
.L670:
	movl	48(%rcx), %eax
	movl	(%rcx), %r9d
	jmp	.L640
	.p2align 4,,7
.L672:
	cmpl	28(%rcx), %edx
	jle	.L673
.L654:
	movl	%edx, 28(%rcx)
.L655:
	cmpl	36(%rcx), %r8d
	jg	.L656
	movl	4(%rcx), %r10d
	testl	%r10d, %r10d
	je	.L656
	cmpl	24(%rcx), %edx
	jge	.L660
.L658:
	cmpl	32(%rcx), %r8d
	movl	%edx, 24(%rcx)
	jl	.L663
	movl	4(%rcx), %edx
	testl	%edx, %edx
	jne	.L662
.L663:
	movl	%r8d, 32(%rcx)
.L662:
	incl	%eax
	movl	$1, 4(%rcx)
	movl	%eax, 48(%rcx)
	ret
	.p2align 4,,7
.L656:
	cmpl	24(%rcx), %edx
	movl	%r8d, 36(%rcx)
	jl	.L658
	movl	4(%rcx), %r9d
	testl	%r9d, %r9d
	jne	.L660
	movl	%edx, 24(%rcx)
	jmp	.L663
	.p2align 4,,7
.L671:
	cmpl	28(%rcx), %edx
	jle	.L674
.L642:
	movl	%edx, 28(%rcx)
.L643:
	cmpl	36(%rcx), %r8d
	jg	.L644
	movl	4(%rcx), %eax
	testl	%eax, %eax
	je	.L644
	cmpl	24(%rcx), %edx
	jge	.L648
.L646:
	cmpl	32(%rcx), %r8d
	movl	%edx, 24(%rcx)
	jl	.L651
	movl	4(%rcx), %eax
	testl	%eax, %eax
	jne	.L650
.L651:
	movl	%r8d, 32(%rcx)
.L650:
	movl	$1, 4(%rcx)
	movl	48(%rcx), %eax
	jmp	.L652
	.p2align 4,,7
.L673:
	movl	4(%rcx), %r11d
	testl	%r11d, %r11d
	jne	.L655
	jmp	.L654
	.p2align 4,,7
.L674:
	movl	4(%rcx), %eax
	testl	%eax, %eax
	jne	.L643
	.p2align 4,,6
	jmp	.L642
	.p2align 4,,7
.L660:
	cmpl	32(%rcx), %r8d
	jl	.L663
	.p2align 4,,7
	jmp	.L662
	.p2align 4,,7
.L648:
	cmpl	32(%rcx), %r8d
	.p2align 4,,3
	jl	.L651
	.p2align 4,,7
	jmp	.L650
	.p2align 4,,7
.L644:
	cmpl	24(%rcx), %edx
	movl	%r8d, 36(%rcx)
	jl	.L646
	movl	4(%rcx), %eax
	testl	%eax, %eax
	jne	.L648
	movl	%edx, 24(%rcx)
	jmp	.L651
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20stbtt__cff_get_indexP10stbtt__buf;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20stbtt__cff_get_indexP10stbtt__buf
_ZL20stbtt__cff_get_indexP10stbtt__buf:
.LFB304:
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
	movslq	8(%rdx), %rbp
	movl	12(%rdx), %eax
	movq	%rcx, %r12
	movq	%rdx, %rdi
	cmpl	%eax, %ebp
	movl	%ebp, %esi
	jge	.L676
	movq	(%rdx), %rcx
	leal	1(%rbp), %edx
	movslq	%ebp, %r8
	movl	%edx, 8(%rdi)
	movzbl	(%rcx,%r8), %ebx
	sall	$8, %ebx
	cmpl	%edx, %eax
	jle	.L677
	leal	2(%rbp), %esi
	movslq	%edx, %rdx
	movl	%esi, 8(%rdi)
	movzbl	(%rcx,%rdx), %edx
	orl	%edx, %ebx
	je	.L676
	cmpl	%eax, %esi
	jge	.L699
	leal	3(%rbp), %edx
	movslq	%esi, %rsi
	movl	%edx, 8(%rdi)
	movzbl	(%rcx,%rsi), %r13d
	leal	-1(%r13), %esi
	imull	%r13d, %ebx
	cmpl	$3, %esi
	ja	.L678
.L680:
	addl	%edx, %ebx
	js	.L700
	cmpl	%eax, %ebx
	jg	.L700
.L681:
	movl	%ebx, %edx
	shrl	$31, %edx
	.p2align 4,,2
	jne	.L701
	cmpl	%eax, %ebx
	.p2align 4,,2
	jg	.L701
.L683:
	cmpl	$3, %esi
	movl	%ebx, 8(%rdi)
	ja	.L710
.L685:
	testl	%r13d, %r13d
	movl	$-1, %esi
	je	.L686
	xorl	%esi, %esi
	xorl	%edx, %edx
	.p2align 4,,7
.L688:
	sall	$8, %esi
	xorl	%ecx, %ecx
	cmpl	%ebx, %eax
	jle	.L687
	movq	(%rdi), %rcx
	leal	1(%rbx), %r8d
	movslq	%ebx, %rbx
	movl	%r8d, 8(%rdi)
	movzbl	(%rcx,%rbx), %ecx
	movl	%r8d, %ebx
.L687:
	incl	%edx
	orl	%ecx, %esi
	cmpl	%r13d, %edx
	jne	.L688
	decl	%esi
.L686:
	addl	%ebx, %esi
	js	.L702
	cmpl	%eax, %esi
	jg	.L702
.L689:
	cmpl	%eax, %esi
	.p2align 4,,3
	jg	.L703
	movl	%esi, %ecx
	shrl	$31, %ecx
	.p2align 4,,2
	jne	.L703
.L691:
	movl	%esi, 8(%rdi)
.L676:
	movl	%esi, %ebx
	movl	%ebp, %edx
	movq	$0, (%r12)
	subl	%ebp, %ebx
	shrl	$31, %edx
	movl	$0, 12(%r12)
	movl	$0, 8(%r12)
	jne	.L675
	movl	%ebx, %edx
	shrl	$31, %edx
	jne	.L675
	cmpl	%eax, %ebp
	jg	.L675
	subl	%ebp, %eax
	cmpl	%eax, %ebx
	jg	.L675
	addq	(%rdi), %rbp
	movl	%ebx, 12(%r12)
	movq	%rbp, (%r12)
.L675:
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L677:
	testl	%ebx, %ebx
	movl	%edx, %esi
	je	.L676
	.p2align 4,,7
.L699:
	xorl	%ebx, %ebx
	movl	$-1, %esi
	xorl	%r13d, %r13d
.L678:
	leaq	.LC2(%rip), %rdx
	leaq	.LC26(%rip), %rcx
	movl	$1048, %r8d
	call	_assert
	movl	12(%rdi), %eax
	movl	8(%rdi), %edx
	jmp	.L680
	.p2align 4,,7
.L700:
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movl	$1000, %r8d
	call	_assert
	movl	12(%rdi), %eax
	jmp	.L681
	.p2align 4,,7
.L702:
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movl	$1000, %r8d
	call	_assert
	movl	12(%rdi), %eax
	jmp	.L689
	.p2align 4,,7
.L710:
	leaq	.LC2(%rip), %rdx
	leaq	.LC27(%rip), %rcx
	movl	$1013, %r8d
	call	_assert
	movl	12(%rdi), %eax
	movl	8(%rdi), %ebx
	jmp	.L685
	.p2align 4,,7
.L703:
	movl	%eax, %esi
	jmp	.L691
	.p2align 4,,7
.L701:
	movl	%eax, %ebx
	jmp	.L683
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16stbtt__get_subrs10stbtt__bufS_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16stbtt__get_subrs10stbtt__bufS_
_ZL16stbtt__get_subrs10stbtt__bufS_:
.LFB319:
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
	movq	%rcx, %rsi
	leaq	32(%rsp), %rcx
	movl	$0, 80(%rsp)
	movl	$0, 84(%rsp)
	movq	%rdx, 72(%rsp)
	movq	8(%r8), %rdx
	movq	%rax, 64(%rsp)
	movq	(%r8), %rax
	movl	$18, %r8d
	movq	%rdx, 56(%rsp)
	leaq	48(%rsp), %rdx
	movq	%rax, 48(%rsp)
	call	_ZL15stbtt__dict_getP10stbtt__bufi
	movq	40(%rsp), %rax
	movq	32(%rsp), %rbp
	movq	%rax, %rdi
	sarq	$32, %rdi
	cmpl	%eax, %edi
	jle	.L712
	movslq	%eax, %rdx
	leal	1(%rax), %ebx
	movzbl	0(%rbp,%rdx), %edx
	leal	-32(%rdx), %r8d
	leal	-139(%rdx), %ecx
	cmpl	$214, %r8d
	ja	.L778
.L718:
	cmpl	%edi, %ebx
	movl	%ecx, 80(%rsp)
	jge	.L712
	movslq	%ebx, %rax
	leal	1(%rbx), %edx
	movzbl	0(%rbp,%rax), %eax
	leal	-32(%rax), %ecx
	cmpl	$214, %ecx
	ja	.L733
	subl	$139, %eax
.L734:
	movl	%eax, 84(%rsp)
.L712:
	movl	84(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L745
	movl	80(%rsp), %eax
	testl	%eax, %eax
	je	.L745
	movl	%ebx, %edi
	shrl	$31, %edi
	jne	.L760
	movl	%eax, %edi
	shrl	$31, %edi
	jne	.L760
	movl	76(%rsp), %edx
	cmpl	%edx, %ebx
	jg	.L760
	subl	%ebx, %edx
	cmpl	%edx, %eax
	jle	.L779
	.p2align 4,,7
.L760:
	xorl	%eax, %eax
	xorl	%edx, %edx
.L748:
	leaq	112(%rsp), %rdi
	movq	%rdx, 96(%rsp)
	leaq	96(%rsp), %rdx
	movl	$19, %r8d
	movl	%eax, 108(%rsp)
	movl	$0, 104(%rsp)
	movq	%rdi, %rcx
	call	_ZL15stbtt__dict_getP10stbtt__bufi
	movl	120(%rsp), %eax
	cmpl	%eax, 124(%rsp)
	jle	.L745
	movq	%rdi, %rcx
	call	_ZL14stbtt__cff_intP10stbtt__buf
	testl	%eax, %eax
	jne	.L780
.L745:
	movq	%rsi, %rax
	movq	$0, (%rsi)
	movl	$0, 12(%rsi)
	movl	$0, 8(%rsi)
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L778:
	leal	-247(%rdx), %ecx
	cmpl	$3, %ecx
	ja	.L781
	sall	$8, %ecx
	cmpl	%edi, %ebx
	jge	.L782
	movslq	%ebx, %rbx
	movzbl	0(%rbp,%rbx), %edx
	leal	2(%rax), %ebx
.L729:
	leal	108(%rcx,%rdx), %ecx
	jmp	.L718
	.p2align 4,,7
.L733:
	leal	-247(%rax), %ecx
	cmpl	$3, %ecx
	ja	.L735
	sall	$8, %ecx
	xorl	%eax, %eax
	cmpl	%edi, %edx
	jge	.L736
	movslq	%edx, %rdx
	movzbl	0(%rbp,%rdx), %eax
.L736:
	leal	108(%rcx,%rax), %eax
	jmp	.L734
	.p2align 4,,7
.L781:
	leal	-251(%rdx), %ecx
	cmpl	$3, %ecx
	ja	.L783
	movl	$251, %ecx
	subl	%edx, %ecx
	sall	$8, %ecx
	cmpl	%edi, %ebx
	jge	.L784
	movslq	%ebx, %rbx
	movzbl	0(%rbp,%rbx), %edx
	leal	2(%rax), %ebx
.L727:
	subl	%edx, %ecx
	subl	$108, %ecx
	jmp	.L718
	.p2align 4,,7
.L735:
	leal	-251(%rax), %ecx
	cmpl	$3, %ecx
	ja	.L737
	movl	$251, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	sall	$8, %eax
	cmpl	%edi, %edx
	jge	.L738
	movslq	%edx, %rdx
	movzbl	0(%rbp,%rdx), %ecx
.L738:
	subl	%ecx, %eax
	subl	$108, %eax
	jmp	.L734
	.p2align 4,,7
.L783:
	cmpl	$28, %edx
	je	.L716
	cmpl	$29, %edx
	je	.L717
	leaq	.LC7(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$1063, %r8d
	call	_assert
	xorl	%ecx, %ecx
	jmp	.L718
	.p2align 4,,7
.L780:
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
	.p2align 4,,7
.L737:
	cmpl	$28, %eax
	je	.L785
	cmpl	$29, %eax
	je	.L786
	leaq	.LC2(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movl	$1063, %r8d
	call	_assert
	xorl	%eax, %eax
	jmp	.L734
	.p2align 4,,7
.L782:
	xorl	%edx, %edx
	jmp	.L729
	.p2align 4,,7
.L784:
	xorl	%edx, %edx
	.p2align 4,,5
	jmp	.L727
	.p2align 4,,7
.L779:
	movslq	%ebx, %rdx
	addq	64(%rsp), %rdx
	jmp	.L748
	.p2align 4,,7
.L717:
	cmpl	%edi, %ebx
	jl	.L787
	xorl	%edx, %edx
.L719:
	sall	$8, %edx
	xorl	%ecx, %ecx
	orl	%edx, %ecx
	jmp	.L718
	.p2align 4,,7
.L786:
	cmpl	%edi, %edx
	jge	.L756
	movslq	%edx, %rdx
	leal	2(%rbx), %r8d
	movzbl	0(%rbp,%rdx), %eax
	movl	%eax, %edx
	sall	$8, %edx
	cmpl	%r8d, %edi
	jle	.L743
	movslq	%r8d, %r8
	leal	3(%rbx), %ecx
	movzbl	0(%rbp,%r8), %eax
	orl	%edx, %eax
	sall	$8, %eax
	cmpl	%ecx, %edi
	jle	.L742
	movslq	%ecx, %rcx
	addl	$4, %ebx
	movzbl	0(%rbp,%rcx), %edx
	orl	%edx, %eax
	sall	$8, %eax
	cmpl	%ebx, %edi
	movl	%eax, %edx
	jle	.L757
	movslq	%ebx, %rbx
	movzbl	0(%rbp,%rbx), %eax
	orl	%edx, %eax
	jmp	.L734
	.p2align 4,,7
.L787:
	movslq	%ebx, %rbx
	leal	2(%rax), %r8d
	movzbl	0(%rbp,%rbx), %edx
	movl	%edx, %ecx
	sall	$8, %ecx
	cmpl	%edi, %r8d
	jge	.L788
	movslq	%r8d, %r8
	leal	3(%rax), %ebx
	movzbl	0(%rbp,%r8), %edx
	orl	%ecx, %edx
	sall	$8, %edx
	cmpl	%edi, %ebx
	jge	.L719
	movslq	%ebx, %rbx
	leal	4(%rax), %ecx
	movzbl	0(%rbp,%rbx), %r8d
	orl	%r8d, %edx
	sall	$8, %edx
	cmpl	%edi, %ecx
	jge	.L789
	movslq	%ecx, %rcx
	leal	5(%rax), %ebx
	movzbl	0(%rbp,%rcx), %ecx
	orl	%edx, %ecx
	jmp	.L718
	.p2align 4,,7
.L716:
	cmpl	%edi, %ebx
	jge	.L752
	movslq	%ebx, %rbx
	leal	2(%rax), %ecx
	movzbl	0(%rbp,%rbx), %edx
	sall	$8, %edx
	cmpl	%edi, %ecx
	jge	.L725
	movslq	%ecx, %rcx
	leal	3(%rax), %ebx
	movzbl	0(%rbp,%rcx), %ecx
	orl	%edx, %ecx
	jmp	.L718
	.p2align 4,,7
.L756:
	xorl	%eax, %eax
.L742:
	sall	$8, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	orl	%edx, %eax
	jmp	.L734
	.p2align 4,,7
.L785:
	xorl	%eax, %eax
	cmpl	%edi, %edx
	jge	.L734
	movslq	%edx, %rdx
	addl	$2, %ebx
	movzbl	0(%rbp,%rdx), %eax
	sall	$8, %eax
	cmpl	%edi, %ebx
	jge	.L734
	movslq	%ebx, %rbx
	movzbl	0(%rbp,%rbx), %edx
	orl	%edx, %eax
	jmp	.L734
.L752:
	xorl	%edx, %edx
.L725:
	movl	%edx, 80(%rsp)
	jmp	.L712
.L789:
	movl	%ecx, %ebx
	xorl	%ecx, %ecx
	orl	%edx, %ecx
	jmp	.L718
.L788:
	sall	$24, %edx
	xorl	%ecx, %ecx
	movl	%r8d, %ebx
	orl	%edx, %ecx
	jmp	.L718
.L757:
	xorl	%eax, %eax
	orl	%edx, %eax
	jmp	.L734
.L743:
	sall	$24, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	orl	%edx, %eax
	jmp	.L734
	.seh_endproc
	.p2align 4,,15
	.def	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx:
.LFB338:
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
	subq	$728, %rsp
	.seh_stackalloc	728
	movaps	%xmm6, 560(%rsp)
	.seh_savexmm	%xmm6, 560
	movaps	%xmm7, 576(%rsp)
	.seh_savexmm	%xmm7, 576
	movaps	%xmm8, 592(%rsp)
	.seh_savexmm	%xmm8, 592
	movaps	%xmm9, 608(%rsp)
	.seh_savexmm	%xmm9, 608
	movaps	%xmm10, 624(%rsp)
	.seh_savexmm	%xmm10, 624
	movaps	%xmm11, 640(%rsp)
	.seh_savexmm	%xmm11, 640
	movaps	%xmm12, 656(%rsp)
	.seh_savexmm	%xmm12, 656
	movaps	%xmm13, 672(%rsp)
	.seh_savexmm	%xmm13, 672
	movaps	%xmm14, 688(%rsp)
	.seh_savexmm	%xmm14, 688
	movaps	%xmm15, 704(%rsp)
	.seh_savexmm	%xmm15, 704
	.seh_endprologue
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %ebp
	movq	%rcx, %rdi
	movq	%r8, %r15
	movq	104(%rcx), %rax
	movl	%edx, 808(%rsp)
	movq	112(%rcx), %rdx
	movl	808(%rsp), %r8d
	movq	%rax, 160(%rsp)
	leaq	144(%rsp), %rax
	movq	%rdx, 168(%rsp)
	movq	80(%rdi), %rdx
	movq	%rax, %rcx
	movq	%rax, 80(%rsp)
	movq	72(%rdi), %rax
	movq	%rdx, 136(%rsp)
	movq	%rax, 128(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, %rdx
	movq	%rax, 72(%rsp)
	call	_ZL20stbtt__cff_index_get10stbtt__bufi
	movq	152(%rsp), %rdx
	movss	.LC29(%rip), %xmm6
	movq	144(%rsp), %rax
	movsd	.LC30(%rip), %xmm12
	movl	$0, 88(%rsp)
	movaps	%xmm6, %xmm13
	movaps	%xmm6, %xmm15
	movq	%rdx, 184(%rsp)
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	movaps	%xmm6, %xmm14
	movq	%rax, 176(%rsp)
	movl	$0, 68(%rsp)
	.p2align 4,,7
.L791:
	cmpl	%r11d, %edx
	jge	.L927
.L980:
	movq	176(%rsp), %r12
	leal	1(%rdx), %r10d
	movslq	%edx, %rax
	movl	%r10d, 184(%rsp)
	movzbl	(%r12,%rax), %r14d
	cmpb	$31, %r14b
	movl	%r14d, %ecx
	ja	.L793
	leaq	.L795(%rip), %rax
	movzbl	%r14b, %r8d
	movslq	(%rax,%r8,4), %r8
	addq	%r8, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L795:
	.long	.L793-.L795
	.long	.L794-.L795
	.long	.L793-.L795
	.long	.L794-.L795
	.long	.L796-.L795
	.long	.L797-.L795
	.long	.L798-.L795
	.long	.L799-.L795
	.long	.L800-.L795
	.long	.L793-.L795
	.long	.L801-.L795
	.long	.L802-.L795
	.long	.L803-.L795
	.long	.L793-.L795
	.long	.L804-.L795
	.long	.L793-.L795
	.long	.L793-.L795
	.long	.L793-.L795
	.long	.L794-.L795
	.long	.L805-.L795
	.long	.L805-.L795
	.long	.L806-.L795
	.long	.L807-.L795
	.long	.L794-.L795
	.long	.L808-.L795
	.long	.L809-.L795
	.long	.L810-.L795
	.long	.L810-.L795
	.long	.L793-.L795
	.long	.L811-.L795
	.long	.L812-.L795
	.long	.L813-.L795
	.text
	.p2align 4,,7
.L801:
	movl	88(%rsp), %eax
	testl	%eax, %eax
	jne	.L811
	movl	148(%rdi), %eax
	movl	$1, 88(%rsp)
	testl	%eax, %eax
	je	.L811
	movq	136(%rdi), %rax
	movq	144(%rdi), %rdx
	movq	%rax, 192(%rsp)
	movq	%rdx, 200(%rsp)
	js	.L976
.L860:
	movl	204(%rsp), %eax
	testl	%eax, %eax
	js	.L861
	movl	$0, 200(%rsp)
	je	.L862
	movq	192(%rsp), %rax
	movl	$1, 200(%rsp)
	movzbl	(%rax), %eax
	testl	%eax, %eax
	je	.L977
	cmpl	$3, %eax
	je	.L978
.L867:
	movl	$-1, %r8d
.L865:
	movq	128(%rdi), %rdx
	movq	72(%rsp), %r12
	movq	80(%rsp), %r13
	movq	120(%rdi), %rax
	movq	%rdx, 136(%rsp)
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%rax, 128(%rsp)
	call	_ZL20stbtt__cff_index_get10stbtt__bufi
	movq	64(%rdi), %rdx
	movq	56(%rdi), %rax
	leaq	112(%rsp), %r8
	movq	%r13, %rcx
	movq	%rdx, 136(%rsp)
	movq	152(%rsp), %rdx
	movq	%rax, 128(%rsp)
	movq	144(%rsp), %rax
	movq	%rdx, 120(%rsp)
	movq	%r12, %rdx
	movq	%rax, 112(%rsp)
	call	_ZL16stbtt__get_subrs10stbtt__bufS_
	movq	144(%rsp), %rax
	movq	152(%rsp), %rdx
	movl	$1, 88(%rsp)
	movq	%rax, 160(%rsp)
	movq	%rdx, 168(%rsp)
	.p2align 4,,7
.L811:
	testl	%ebx, %ebx
	je	.L927
	decl	%ebx
	cmpl	$9, %esi
	movslq	%ebx, %rax
	movss	368(%rsp,%rax,4), %xmm0
	cvttss2si	%xmm0, %r13d
	jg	.L927
	movq	176(%rsp), %rax
	movq	184(%rsp), %rdx
	leal	1(%rsi), %r12d
	movslq	%esi, %rsi
	salq	$4, %rsi
	cmpl	$10, %r14d
	movq	%rax, 208(%rsp,%rsi)
	movq	%rdx, 216(%rsp,%rsi)
	leaq	160(%rsp), %rax
	leaq	88(%rdi), %rdx
	cmovne	%rdx, %rax
	movl	12(%rax), %esi
	movq	(%rax), %r14
	testl	%esi, %esi
	js	.L979
	je	.L922
	movzbl	(%r14), %eax
	sall	$8, %eax
	cmpl	$1, %esi
	je	.L923
	movzbl	1(%r14), %edx
	movl	$2, %ecx
.L874:
	orl	%edx, %eax
	movl	$32768, %r8d
	cmpl	$33899, %eax
	ja	.L875
	cmpl	$1240, %eax
	sbbl	%r8d, %r8d
	andl	$-1024, %r8d
	addl	$1131, %r8d
.L875:
	addl	%r13d, %r8d
	js	.L927
	cmpl	%eax, %r8d
	jge	.L927
	salq	$32, %rsi
	movq	72(%rsp), %rdx
	movq	%r14, 128(%rsp)
	orq	%rsi, %rcx
	movq	%rcx, 136(%rsp)
	movq	80(%rsp), %rcx
	call	_ZL20stbtt__cff_index_get10stbtt__bufi
	movslq	156(%rsp), %rax
	movq	144(%rsp), %rdx
	movq	%rdx, 176(%rsp)
	testl	%eax, %eax
	movl	%eax, %r11d
	movl	%eax, 188(%rsp)
	je	.L927
	xorl	%edx, %edx
	movl	%r12d, %esi
	cmpl	%r11d, %edx
	jl	.L980
	.p2align 4,,7
.L927:
	xorl	%eax, %eax
.L969:
	movaps	560(%rsp), %xmm6
	movaps	576(%rsp), %xmm7
	movaps	592(%rsp), %xmm8
	movaps	608(%rsp), %xmm9
	movaps	624(%rsp), %xmm10
	movaps	640(%rsp), %xmm11
	movaps	656(%rsp), %xmm12
	movaps	672(%rsp), %xmm13
	movaps	688(%rsp), %xmm14
	movaps	704(%rsp), %xmm15
	addq	$728, %rsp
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
.L813:
	cmpl	$3, %ebx
	jle	.L927
	movl	$4, %r14d
	movl	$1, %ecx
	movl	$2, %edx
	movl	$7, %eax
	movl	$3, %r13d
	xorl	%r12d, %r12d
.L834:
	movl	%ebx, %r8d
	movslq	%r13d, %r13
	subl	%r12d, %r8d
	movss	368(%rsp,%r13,4), %xmm2
	cmpl	$5, %r8d
	xorps	%xmm0, %xmm0
	je	.L981
.L837:
	movslq	%ecx, %rcx
	movslq	%r12d, %r12
	movslq	%edx, %rdx
	movss	368(%rsp,%rcx,4), %xmm3
	movq	%r15, %rcx
	movss	368(%rsp,%r12,4), %xmm1
	movl	%eax, 92(%rsp)
	movss	%xmm2, 48(%rsp)
	xorps	%xmm2, %xmm2
	movss	%xmm0, 40(%rsp)
	movss	368(%rsp,%rdx,4), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movslq	92(%rsp), %rax
	cmpl	%eax, %ebx
	jg	.L982
.L973:
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
.L815:
	xorl	%ebx, %ebx
	jmp	.L791
	.p2align 4,,7
.L812:
	cmpl	$3, %ebx
	jle	.L927
	movl	$7, %r13d
	movl	$4, %r12d
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %eax
	xorl	%r14d, %r14d
.L839:
	movl	%ebx, %r8d
	xorps	%xmm0, %xmm0
	subl	%r14d, %r8d
	cmpl	$5, %r8d
	je	.L983
.L835:
	movslq	%edx, %rdx
	movslq	%r14d, %r14
	movslq	%ecx, %rcx
	movss	368(%rsp,%rdx,4), %xmm3
	movss	368(%rsp,%r14,4), %xmm2
	xorps	%xmm1, %xmm1
	movss	%xmm0, 48(%rsp)
	movss	368(%rsp,%rax,4), %xmm0
	movss	%xmm0, 40(%rsp)
	movss	368(%rsp,%rcx,4), %xmm0
	movq	%r15, %rcx
	movss	%xmm0, 32(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	cmpl	%r13d, %ebx
	jle	.L973
	leal	7(%r12), %eax
	leal	2(%r12), %edx
	leal	1(%r12), %ecx
	leal	4(%r12), %r14d
	jmp	.L834
	.p2align 4,,7
.L810:
	cmpl	$3, %ebx
	jle	.L927
	testb	$1, %bl
	je	.L916
	cmpl	$4, %ebx
	movss	368(%rsp), %xmm1
	je	.L917
	xorps	%xmm7, %xmm7
	movl	$4, %eax
	movl	$1, %r12d
.L855:
	cmpl	$27, %r14d
	je	.L856
	.p2align 4,,7
.L858:
	leal	1(%r12), %edx
	cltq
	movq	%r15, %rcx
	movss	368(%rsp,%rax,4), %xmm0
	leal	2(%r12), %eax
	movslq	%edx, %rdx
	movss	368(%rsp,%rdx,4), %xmm3
	movslq	%r12d, %rdx
	cltq
	movss	368(%rsp,%rdx,4), %xmm2
	movl	$0x00000000, 40(%rsp)
	movss	%xmm0, 48(%rsp)
	addl	$4, %r12d
	movss	368(%rsp,%rax,4), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	leal	3(%r12), %eax
	movaps	%xmm7, %xmm1
	cmpl	%eax, %ebx
	jg	.L858
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	jmp	.L815
	.p2align 4,,7
.L809:
	cmpl	$7, %ebx
	jle	.L927
	leal	-8(%rbx), %r9d
	leaq	368(%rsp), %rdx
	movl	48(%r15), %eax
	leaq	372(%rsp), %rcx
	shrl	%r9d
	movl	%r9d, %r8d
	leaq	12(%rdx,%r8,8), %r8
	jmp	.L854
	.p2align 4,,7
.L842:
	cltq
	addq	$8, %rcx
	leaq	(%rax,%rax), %r11
	salq	$4, %rax
	subq	%r11, %rax
	addq	40(%r15), %rax
	movb	$2, 12(%rax)
	movw	%dx, (%rax)
	movslq	48(%r15), %rdx
	movw	%r10w, 2(%rax)
	movw	$0, 4(%rax)
	movw	$0, 6(%rax)
	leaq	(%rdx,%rdx), %r10
	movq	%rdx, %rax
	salq	$4, %rdx
	incl	%eax
	subq	%r10, %rdx
	addq	40(%r15), %rdx
	cmpq	%r8, %rcx
	movw	$0, 8(%rdx)
	movw	$0, 10(%rdx)
	movl	%eax, 48(%r15)
	je	.L984
.L854:
	movss	(%rcx), %xmm1
	movl	(%r15), %r14d
	movss	-4(%rcx), %xmm0
	addss	20(%r15), %xmm1
	addss	16(%r15), %xmm0
	testl	%r14d, %r14d
	movss	%xmm1, 20(%r15)
	movss	%xmm0, 16(%r15)
	cvttss2si	%xmm1, %r10d
	cvttss2si	%xmm0, %edx
	je	.L842
	cmpl	28(%r15), %edx
	jg	.L843
	movl	4(%r15), %r13d
	testl	%r13d, %r13d
	jne	.L844
.L843:
	movl	%edx, 28(%r15)
.L844:
	cmpl	36(%r15), %r10d
	jg	.L845
	movl	4(%r15), %r12d
	testl	%r12d, %r12d
	je	.L845
	cmpl	24(%r15), %edx
	jl	.L847
.L849:
	cmpl	%r10d, 32(%r15)
	jle	.L851
	.p2align 4,,7
.L852:
	movl	%r10d, 32(%r15)
.L851:
	addq	$8, %rcx
	incl	%eax
	movl	$1, 4(%r15)
	cmpq	%r8, %rcx
	movl	%eax, 48(%r15)
	jne	.L854
.L984:
	leal	2(%r9,%r9), %eax
	leal	3(%r9,%r9), %r8d
	leal	5(%rax), %edx
	cmpl	%edx, %ebx
	jle	.L927
	leal	2(%rax), %ecx
	movslq	%edx, %rdx
	xorl	%ebx, %ebx
	movss	368(%rsp,%rdx,4), %xmm0
	leal	4(%rax), %edx
	movslq	%ecx, %rcx
	movss	368(%rsp,%rcx,4), %xmm3
	movslq	%r8d, %rcx
	movslq	%edx, %rdx
	movss	368(%rsp,%rcx,4), %xmm2
	movslq	%eax, %rcx
	movss	368(%rsp,%rcx,4), %xmm1
	addl	$3, %eax
	movss	%xmm0, 48(%rsp)
	cltq
	movq	%r15, %rcx
	movss	368(%rsp,%rdx,4), %xmm0
	movss	%xmm0, 40(%rsp)
	movss	368(%rsp,%rax,4), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	jmp	.L791
	.p2align 4,,7
.L808:
	cmpl	$7, %ebx
	jle	.L927
	leal	-2(%rbx), %r14d
	leaq	368(%rsp), %r12
	xorl	%r13d, %r13d
	jmp	.L841
	.p2align 4,,7
.L915:
	movl	%eax, %r13d
.L841:
	movss	20(%r12), %xmm0
	movq	%r15, %rcx
	addq	$24, %r12
	movss	%xmm0, 48(%rsp)
	movss	-8(%r12), %xmm0
	movss	%xmm0, 40(%rsp)
	movss	-12(%r12), %xmm0
	movss	%xmm0, 32(%rsp)
	movss	-16(%r12), %xmm3
	movss	-20(%r12), %xmm2
	movss	-24(%r12), %xmm1
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	leal	11(%r13), %edx
	leal	6(%r13), %eax
	cmpl	%r14d, %edx
	jl	.L915
	addl	$7, %r13d
	cmpl	%r13d, %ebx
	jle	.L927
	cltq
	movslq	%r13d, %r13
	movq	%r15, %rcx
	movss	368(%rsp,%r13,4), %xmm2
	xorl	%ebx, %ebx
	movss	368(%rsp,%rax,4), %xmm1
	call	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	jmp	.L791
	.p2align 4,,7
.L807:
	testl	%ebx, %ebx
	je	.L927
	xorps	%xmm2, %xmm2
	decl	%ebx
	movslq	%ebx, %rbx
.L974:
	movss	368(%rsp,%rbx,4), %xmm1
.L975:
	movq	%r15, %rcx
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	call	_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	jmp	.L791
	.p2align 4,,7
.L806:
	cmpl	$1, %ebx
	jle	.L927
	leal	-1(%rbx), %eax
	subl	$2, %ebx
	movslq	%ebx, %rbx
	cltq
	movss	368(%rsp,%rax,4), %xmm2
	jmp	.L974
	.p2align 4,,7
.L805:
	testl	%ebp, %ebp
	je	.L814
	sarl	%ebx
	addl	%ebx, 68(%rsp)
.L814:
	movl	68(%rsp), %eax
	leaq	176(%rsp), %rcx
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	leal	7(%rax), %edx
	sarl	$3, %edx
	addl	%r10d, %edx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	jmp	.L791
	.p2align 4,,7
.L804:
	movss	8(%r15), %xmm0
	ucomiss	16(%r15), %xmm0
	movss	12(%r15), %xmm1
	jp	.L879
	jne	.L879
	ucomiss	20(%r15), %xmm1
	jp	.L879
	movl	$1, %eax
	je	.L969
.L879:
	movl	(%r15), %r11d
	cvttss2si	%xmm1, %ecx
	cvttss2si	%xmm0, %edx
	testl	%r11d, %r11d
	jne	.L985
	movslq	48(%r15), %rax
	leaq	(%rax,%rax), %r8
	salq	$4, %rax
	subq	%r8, %rax
	addq	40(%r15), %rax
	movb	$2, 12(%rax)
	movw	%dx, (%rax)
	movw	%cx, 2(%rax)
	movw	$0, 4(%rax)
	movw	$0, 6(%rax)
	movslq	48(%r15), %rax
	leaq	(%rax,%rax), %rcx
	movq	%rax, %rdx
	salq	$4, %rax
	subq	%rcx, %rax
	addq	40(%r15), %rax
	movw	$0, 8(%rax)
	movw	$0, 10(%rax)
.L893:
	incl	%edx
	movl	$1, %eax
	movl	%edx, 48(%r15)
	jmp	.L969
	.p2align 4,,7
.L800:
	cmpl	$5, %ebx
	jle	.L927
	leaq	368(%rsp), %r12
	movl	$5, %r13d
	.p2align 4,,7
.L840:
	movss	20(%r12), %xmm0
	movq	%r15, %rcx
	addl	$6, %r13d
	movss	%xmm0, 48(%rsp)
	addq	$24, %r12
	movss	-8(%r12), %xmm0
	movss	%xmm0, 40(%rsp)
	movss	-12(%r12), %xmm0
	movss	%xmm0, 32(%rsp)
	movss	-16(%r12), %xmm3
	movss	-20(%r12), %xmm2
	movss	-24(%r12), %xmm1
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	cmpl	%r13d, %ebx
	jg	.L840
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	jmp	.L815
	.p2align 4,,7
.L799:
	testl	%ebx, %ebx
	je	.L927
	movl	$1, %r13d
	xorl	%r12d, %r12d
.L830:
	xorps	%xmm1, %xmm1
	movslq	%r12d, %r12
	movq	%r15, %rcx
	movss	368(%rsp,%r12,4), %xmm2
	call	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff
	cmpl	%r13d, %ebx
	jle	.L973
	leal	1(%r13), %r12d
	jmp	.L833
	.p2align 4,,7
.L802:
	testl	%esi, %esi
	je	.L927
	decl	%esi
	movslq	%esi, %rax
	salq	$4, %rax
	movq	216(%rsp,%rax), %rdx
	movq	208(%rsp,%rax), %rax
	movq	%rdx, 184(%rsp)
	movq	%rax, 176(%rsp)
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	jmp	.L791
	.p2align 4,,7
.L803:
	cmpl	%r11d, %r10d
	jge	.L927
	addl	$2, %edx
	movslq	%r10d, %r10
	movl	%edx, 184(%rsp)
	movzbl	(%r12,%r10), %eax
	cmpb	$35, %al
	je	.L894
	jbe	.L986
	cmpb	$36, %al
	je	.L897
	cmpb	$37, %al
	.p2align 4,,7
	jne	.L927
	cmpl	$10, %ebx
	.p2align 4,,4
	jle	.L927
	movss	380(%rsp), %xmm5
	movss	404(%rsp), %xmm0
	movss	%xmm0, 104(%rsp)
	movaps	%xmm5, %xmm0
	movss	372(%rsp), %xmm2
	movss	384(%rsp), %xmm4
	addss	%xmm2, %xmm0
	movaps	%xmm4, %xmm7
	movss	368(%rsp), %xmm1
	movss	%xmm4, 108(%rsp)
	movss	388(%rsp), %xmm4
	movss	%xmm4, 92(%rsp)
	movaps	%xmm1, %xmm4
	movss	376(%rsp), %xmm3
	addss	%xmm3, %xmm4
	movss	396(%rsp), %xmm9
	addss	92(%rsp), %xmm0
	movss	392(%rsp), %xmm8
	movss	400(%rsp), %xmm10
	movss	%xmm5, 96(%rsp)
	addss	%xmm7, %xmm4
	movss	408(%rsp), %xmm11
	addss	%xmm9, %xmm0
	addss	%xmm8, %xmm4
	addss	104(%rsp), %xmm0
	addss	%xmm10, %xmm4
	cvtss2sd	%xmm4, %xmm7
	cvtss2sd	%xmm0, %xmm5
	andpd	%xmm12, %xmm7
	andpd	%xmm12, %xmm5
	ucomisd	%xmm5, %xmm7
	jbe	.L970
	movaps	%xmm0, %xmm7
	xorps	%xmm15, %xmm7
.L901:
	movss	92(%rsp), %xmm5
	movq	%r15, %rcx
	xorl	%ebx, %ebx
	movss	%xmm5, 48(%rsp)
	movss	108(%rsp), %xmm5
	movss	%xmm5, 40(%rsp)
	movss	96(%rsp), %xmm5
	movss	%xmm5, 32(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movss	104(%rsp), %xmm5
	movq	%r15, %rcx
	movss	%xmm7, 48(%rsp)
	movaps	%xmm10, %xmm3
	movss	%xmm11, 40(%rsp)
	movaps	%xmm9, %xmm2
	movss	%xmm5, 32(%rsp)
	movaps	%xmm8, %xmm1
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	jmp	.L791
	.p2align 4,,7
.L796:
	testl	%ebx, %ebx
	je	.L927
	decl	%ebx
	xorps	%xmm1, %xmm1
	movslq	%ebx, %rbx
	movss	368(%rsp,%rbx,4), %xmm2
	jmp	.L975
	.p2align 4,,7
.L794:
	sarl	%ebx
	movl	%r10d, %edx
	addl	%ebx, 68(%rsp)
	xorl	%ebx, %ebx
	jmp	.L791
	.p2align 4,,7
.L798:
	testl	%ebx, %ebx
	je	.L927
	movl	$1, %r12d
	xorl	%r13d, %r13d
.L833:
	xorps	%xmm2, %xmm2
	movslq	%r13d, %r13
	movq	%r15, %rcx
	movss	368(%rsp,%r13,4), %xmm1
	call	_ZL21stbtt__csctx_rline_toP12stbtt__csctxff
	cmpl	%r12d, %ebx
	jle	.L973
	leal	1(%r12), %r13d
	jmp	.L830
	.p2align 4,,7
.L797:
	cmpl	$1, %ebx
	jle	.L927
	subl	$2, %ebx
	leaq	368(%rsp), %rcx
	movl	48(%r15), %eax
	shrl	%ebx
	leaq	372(%rsp), %r8
	movl	%ebx, %edx
	leaq	12(%rcx,%rdx,8), %r9
	jmp	.L829
	.p2align 4,,7
.L816:
	cltq
	leaq	(%rax,%rax), %r10
	salq	$4, %rax
	subq	%r10, %rax
	addq	40(%r15), %rax
	movb	$2, 12(%rax)
	movw	%dx, (%rax)
	movslq	48(%r15), %rdx
	movw	%cx, 2(%rax)
	movw	$0, 4(%rax)
	movw	$0, 6(%rax)
	leaq	(%rdx,%rdx), %rcx
	movq	%rdx, %rax
	salq	$4, %rdx
	subq	%rcx, %rdx
	addq	40(%r15), %rdx
	movw	$0, 8(%rdx)
	movw	$0, 10(%rdx)
.L827:
	addq	$8, %r8
	incl	%eax
	cmpq	%r9, %r8
	movl	%eax, 48(%r15)
	je	.L973
.L829:
	movss	(%r8), %xmm1
	movl	(%r15), %r12d
	movss	-4(%r8), %xmm0
	addss	20(%r15), %xmm1
	addss	16(%r15), %xmm0
	testl	%r12d, %r12d
	movss	%xmm1, 20(%r15)
	movss	%xmm0, 16(%r15)
	cvttss2si	%xmm1, %ecx
	cvttss2si	%xmm0, %edx
	je	.L816
	cmpl	28(%r15), %edx
	jg	.L817
	movl	4(%r15), %ebx
	testl	%ebx, %ebx
	jne	.L818
.L817:
	movl	%edx, 28(%r15)
.L818:
	cmpl	36(%r15), %ecx
	jg	.L819
	movl	4(%r15), %r11d
	testl	%r11d, %r11d
	je	.L819
	cmpl	24(%r15), %edx
	jl	.L821
.L823:
	cmpl	%ecx, 32(%r15)
	jle	.L825
	.p2align 4,,7
.L826:
	movl	%ecx, 32(%r15)
.L825:
	movl	$1, 4(%r15)
	jmp	.L827
	.p2align 4,,7
.L819:
	cmpl	24(%r15), %edx
	movl	%ecx, 36(%r15)
	jl	.L821
	movl	4(%r15), %r10d
	testl	%r10d, %r10d
	jne	.L823
	movl	%edx, 24(%r15)
	jmp	.L826
	.p2align 4,,7
.L845:
	cmpl	24(%r15), %edx
	movl	%r10d, 36(%r15)
	jl	.L847
	movl	4(%r15), %r11d
	testl	%r11d, %r11d
	jne	.L849
	movl	%edx, 24(%r15)
	jmp	.L852
	.p2align 4,,7
.L847:
	cmpl	32(%r15), %r10d
	movl	%edx, 24(%r15)
	jl	.L852
	movl	4(%r15), %edx
	testl	%edx, %edx
	je	.L852
	jmp	.L851
	.p2align 4,,7
.L821:
	cmpl	32(%r15), %ecx
	movl	%edx, 24(%r15)
	jl	.L826
	movl	4(%r15), %edx
	testl	%edx, %edx
	je	.L826
	jmp	.L825
.L793:
	cmpl	$28, %r14d
	je	.L902
	subl	$32, %ecx
	cmpb	$-33, %cl
	ja	.L927
	cmpl	$255, %r14d
	jne	.L902
	cmpl	%r11d, %r10d
	jge	.L928
	leal	2(%rdx), %r13d
	movslq	%r10d, %r10
	movl	%r13d, 184(%rsp)
	movzbl	(%r12,%r10), %eax
	movl	%eax, %r8d
	sall	$8, %r8d
	cmpl	%r11d, %r13d
	jge	.L904
	leal	3(%rdx), %r9d
	movslq	%r13d, %r13
	movl	%r9d, 184(%rsp)
	movzbl	(%r12,%r13), %eax
	orl	%r8d, %eax
	sall	$8, %eax
	cmpl	%r11d, %r9d
	jge	.L903
	leal	4(%rdx), %r8d
	movslq	%r9d, %r9
	movl	%r8d, 184(%rsp)
	movzbl	(%r12,%r9), %ecx
	orl	%ecx, %eax
	sall	$8, %eax
	cmpl	%r11d, %r8d
	movl	%eax, %ecx
	jge	.L929
	addl	$5, %edx
	movslq	%r8d, %r8
	movl	%edx, 184(%rsp)
	movzbl	(%r12,%r8), %eax
.L905:
	orl	%ecx, %eax
	cvtsi2ssq	%rax, %xmm0
	mulss	.LC31(%rip), %xmm0
	jmp	.L908
	.p2align 4,,7
.L902:
	leaq	176(%rsp), %r12
	movq	%r12, %rcx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movq	%r12, %rcx
	call	_ZL14stbtt__cff_intP10stbtt__buf
	cwtl
	cvtsi2ss	%eax, %xmm0
.L908:
	cmpl	$47, %ebx
	jg	.L927
	movslq	%ebx, %rax
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	movss	%xmm0, 368(%rsp,%rax,4)
	incl	%ebx
	jmp	.L791
	.p2align 4,,7
.L922:
	xorl	%ecx, %ecx
.L873:
	xorl	%eax, %eax
	movl	$107, %r8d
	jmp	.L875
	.p2align 4,,7
.L916:
	xorps	%xmm7, %xmm7
	movl	$3, %eax
	xorl	%r12d, %r12d
	movaps	%xmm7, %xmm1
	jmp	.L855
	.p2align 4,,7
.L923:
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	.L874
.L985:
	cmpl	28(%r15), %edx
	jle	.L987
.L883:
	movl	%edx, 28(%r15)
.L884:
	cmpl	36(%r15), %ecx
	jg	.L885
	movl	4(%r15), %r9d
	testl	%r9d, %r9d
	je	.L885
	cmpl	24(%r15), %edx
	jl	.L887
.L889:
	cmpl	32(%r15), %ecx
	jge	.L891
.L892:
	movl	%ecx, 32(%r15)
.L891:
	movl	$1, 4(%r15)
	movl	48(%r15), %edx
	jmp	.L893
.L981:
	movslq	%r14d, %r8
	movss	368(%rsp,%r8,4), %xmm0
	jmp	.L837
.L897:
	cmpl	$8, %ebx
	jle	.L927
	xorps	%xmm7, %xmm7
	movss	372(%rsp), %xmm0
	movss	380(%rsp), %xmm8
	movq	%r15, %rcx
	movss	384(%rsp), %xmm1
	xorl	%ebx, %ebx
	movaps	%xmm0, %xmm2
	movss	%xmm1, 40(%rsp)
	movss	%xmm8, 32(%rsp)
	movss	%xmm7, 48(%rsp)
	movss	400(%rsp), %xmm4
	movss	376(%rsp), %xmm3
	movss	368(%rsp), %xmm1
	movss	396(%rsp), %xmm9
	movss	388(%rsp), %xmm10
	movss	392(%rsp), %xmm11
	movss	%xmm4, 104(%rsp)
	movss	%xmm0, 92(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movss	92(%rsp), %xmm0
	movq	%r15, %rcx
	addss	%xmm0, %xmm8
	movss	104(%rsp), %xmm4
	movss	%xmm4, 40(%rsp)
	movaps	%xmm11, %xmm3
	movss	%xmm9, 32(%rsp)
	movaps	%xmm7, %xmm2
	movaps	%xmm10, %xmm1
	addss	%xmm9, %xmm8
	movaps	%xmm8, %xmm0
	xorps	%xmm6, %xmm0
	movss	%xmm0, 48(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	jmp	.L791
.L885:
	cmpl	24(%r15), %edx
	movl	%ecx, 36(%r15)
	jge	.L988
.L887:
	cmpl	32(%r15), %ecx
	movl	%edx, 24(%r15)
	jl	.L892
	movl	4(%r15), %eax
	testl	%eax, %eax
	je	.L892
	jmp	.L891
	.p2align 4,,7
.L979:
	leaq	.LC3(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	movl	$1000, %r8d
	call	_assert
	movl	%esi, %ecx
	jmp	.L873
	.p2align 4,,7
.L856:
	movaps	%xmm1, %xmm2
	.p2align 4,,7
.L859:
	leal	1(%r12), %edx
	cltq
	movq	%r15, %rcx
	movslq	%edx, %rdx
	movss	368(%rsp,%rdx,4), %xmm3
	movslq	%r12d, %rdx
	movss	368(%rsp,%rdx,4), %xmm1
	movl	$0x00000000, 48(%rsp)
	movss	368(%rsp,%rax,4), %xmm0
	leal	2(%r12), %eax
	addl	$4, %r12d
	movss	%xmm0, 40(%rsp)
	cltq
	movss	368(%rsp,%rax,4), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	leal	3(%r12), %eax
	movaps	%xmm7, %xmm2
	cmpl	%eax, %ebx
	jg	.L859
	jmp	.L973
.L894:
	cmpl	$12, %ebx
	jle	.L927
	movss	388(%rsp), %xmm1
	movq	%r15, %rcx
	movss	%xmm1, 48(%rsp)
	movss	384(%rsp), %xmm1
	movss	%xmm1, 40(%rsp)
	movss	380(%rsp), %xmm1
	movss	%xmm1, 32(%rsp)
	movss	412(%rsp), %xmm0
	movss	376(%rsp), %xmm3
	movss	372(%rsp), %xmm2
	movss	368(%rsp), %xmm1
	movss	392(%rsp), %xmm7
	movss	396(%rsp), %xmm8
	movss	400(%rsp), %xmm9
	movss	404(%rsp), %xmm10
	movss	408(%rsp), %xmm11
	movss	%xmm0, 92(%rsp)
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movss	92(%rsp), %xmm0
	movq	%r15, %rcx
	movss	%xmm0, 48(%rsp)
	movaps	%xmm9, %xmm3
	movss	%xmm11, 40(%rsp)
	movaps	%xmm8, %xmm2
	movss	%xmm10, 32(%rsp)
	movaps	%xmm7, %xmm1
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	jmp	.L973
.L928:
	xorl	%eax, %eax
.L903:
	sall	$8, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	jmp	.L905
.L983:
	movslq	%r12d, %r8
	movss	368(%rsp,%r8,4), %xmm0
	jmp	.L835
.L987:
	movl	4(%r15), %r10d
	testl	%r10d, %r10d
	jne	.L884
	jmp	.L883
.L988:
	movl	4(%r15), %r8d
	testl	%r8d, %r8d
	jne	.L889
	movl	%edx, 24(%r15)
	jmp	.L892
.L986:
	cmpb	$34, %al
	jne	.L927
	cmpl	$6, %ebx
	.p2align 4,,2
	jle	.L927
	xorps	%xmm7, %xmm7
	movss	376(%rsp), %xmm8
	movss	380(%rsp), %xmm0
	movq	%r15, %rcx
	movss	%xmm8, 32(%rsp)
	xorps	%xmm14, %xmm8
	movss	%xmm0, 40(%rsp)
	movaps	%xmm7, %xmm2
	movss	%xmm7, 48(%rsp)
	xorl	%ebx, %ebx
	movss	384(%rsp), %xmm9
	movss	388(%rsp), %xmm10
	movss	392(%rsp), %xmm11
	movss	372(%rsp), %xmm3
	movss	368(%rsp), %xmm1
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movss	%xmm7, 48(%rsp)
	movaps	%xmm10, %xmm3
	movss	%xmm11, 40(%rsp)
	movaps	%xmm7, %xmm2
	movss	%xmm8, 32(%rsp)
	movaps	%xmm9, %xmm1
	movq	%r15, %rcx
	call	_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff
	movl	184(%rsp), %edx
	movl	188(%rsp), %r11d
	jmp	.L791
.L970:
	xorps	%xmm13, %xmm4
	movaps	%xmm11, %xmm7
	movaps	%xmm4, %xmm11
	jmp	.L901
.L917:
	movl	%r10d, %edx
	xorl	%ebx, %ebx
	jmp	.L791
.L977:
	movl	$1, %eax
.L862:
	addl	808(%rsp), %eax
	leaq	192(%rsp), %rcx
	movl	%eax, %edx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movslq	200(%rsp), %rax
	xorl	%r8d, %r8d
	cmpl	204(%rsp), %eax
	jge	.L865
	leal	1(%rax), %edx
	movl	%edx, 200(%rsp)
	movq	192(%rsp), %rdx
	movzbl	(%rdx,%rax), %r8d
	jmp	.L865
.L861:
	movl	%eax, 200(%rsp)
	jmp	.L862
.L976:
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movl	$1000, %r8d
	call	_assert
	jmp	.L860
.L978:
	leaq	192(%rsp), %rax
	movq	%rax, %r13
	movq	%rax, %rcx
	call	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.77
	movq	%r13, %rcx
	movl	%eax, %r12d
	movq	%r13, 96(%rsp)
	call	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.77
	testl	%r12d, %r12d
	movl	%eax, %r13d
	movl	%r12d, %ecx
	jle	.L867
	xorl	%r12d, %r12d
	movl	%ebp, 88(%rsp)
	movl	%esi, 92(%rsp)
	movq	%rdi, 800(%rsp)
	movl	%ebx, 104(%rsp)
	movl	%r12d, %edi
	movl	%ecx, %esi
	movl	808(%rsp), %ebp
	movq	96(%rsp), %r12
	jmp	.L870
	.p2align 4,,7
.L930:
	incl	%edi
	cmpl	%edi, %esi
	je	.L972
	movl	%eax, %r13d
.L870:
	movslq	200(%rsp), %rax
	xorl	%ebx, %ebx
	cmpl	204(%rsp), %eax
	jge	.L868
	leal	1(%rax), %ecx
	movl	%ecx, 200(%rsp)
	movq	192(%rsp), %rcx
	movzbl	(%rcx,%rax), %ebx
.L868:
	movq	%r12, %rcx
	call	_ZL14stbtt__buf_getP10stbtt__bufi.constprop.77
	cmpl	%r13d, %ebp
	jl	.L930
	cmpl	%eax, %ebp
	jge	.L930
	movl	%ebx, %r8d
	movl	88(%rsp), %ebp
	movl	92(%rsp), %esi
	movl	104(%rsp), %ebx
	movq	800(%rsp), %rdi
	jmp	.L865
.L972:
	movl	88(%rsp), %ebp
	movl	92(%rsp), %esi
	movl	104(%rsp), %ebx
	movq	800(%rsp), %rdi
	jmp	.L867
.L929:
	xorl	%eax, %eax
	jmp	.L905
.L982:
	leal	2(%r14), %ecx
	leal	1(%r14), %edx
	leal	7(%r14), %r13d
	leal	4(%r14), %r12d
	jmp	.L839
.L904:
	sall	$24, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	jmp	.L905
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC34:
	.ascii "output_ctx.num_vertices == count_ctx.num_vertices\0"
	.text
	.p2align 4,,15
	.def	_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex
_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex:
.LFB329:
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
	movaps	%xmm6, 208(%rsp)
	.seh_savexmm	%xmm6, 208
	movaps	%xmm7, 224(%rsp)
	.seh_savexmm	%xmm7, 224
	movaps	%xmm8, 240(%rsp)
	.seh_savexmm	%xmm8, 240
	movaps	%xmm9, 256(%rsp)
	.seh_savexmm	%xmm9, 256
	movaps	%xmm10, 272(%rsp)
	.seh_savexmm	%xmm10, 272
	movaps	%xmm11, 288(%rsp)
	.seh_savexmm	%xmm11, 288
	movaps	%xmm12, 304(%rsp)
	.seh_savexmm	%xmm12, 304
	movaps	%xmm13, 320(%rsp)
	.seh_savexmm	%xmm13, 320
	movaps	%xmm14, 336(%rsp)
	.seh_savexmm	%xmm14, 336
	movaps	%xmm15, 352(%rsp)
	.seh_savexmm	%xmm15, 352
	.seh_endprologue
	movq	%rcx, %r13
	movq	%r8, 464(%rsp)
	movq	8(%rcx), %rbx
	call	_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi
	movq	464(%rsp), %rsi
	testl	%eax, %eax
	movq	$0, (%rsi)
	js	.L1045
	cltq
	leaq	(%rbx,%rax), %rdx
	movzbl	(%rdx), %esi
	movzbl	1(%rdx), %edx
	sall	$8, %esi
	addl	%edx, %esi
	testw	%si, %si
	jle	.L992
	movswl	%si, %esi
	leaq	10(%rbx,%rax), %rdi
	addl	%esi, %esi
	movslq	%esi, %r12
	movq	%rdi, %r15
	movq	%rdi, 48(%rsp)
	addq	%r12, %rax
	leaq	10(%rbx,%rax), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rcx), %ecx
	sall	$8, %edx
	addl	%ecx, %edx
	movzwl	%dx, %edx
	leaq	12(%rax,%rdx), %rdi
	leaq	-2(%r15,%r12), %rax
	movzbl	(%rax), %r13d
	movzbl	1(%rax), %eax
	addq	%rbx, %rdi
	sall	$8, %r13d
	addl	%eax, %r13d
	movzwl	%r13w, %eax
	leal	1(%rax), %ebp
	leal	(%rsi,%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx), %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1045
	movzwl	%r13w, %r13d
	leaq	(%r12,%r12), %rax
	movq	%r12, %r9
	addq	%r13, %r12
	salq	$4, %r9
	xorl	%ecx, %ecx
	leaq	(%r12,%r12), %rdx
	salq	$4, %r12
	subq	%rax, %r9
	leaq	194(%rbx,%r9), %rax
	subq	%rdx, %r12
	xorl	%edx, %edx
	leaq	208(%rbx,%r12), %r8
	jmp	.L997
	.p2align 4,,7
.L1091:
	movzbl	(%rdi), %ecx
	testb	$8, %cl
	jne	.L995
	incq	%rdi
.L996:
	movb	%cl, -182(%rax)
	prefetcht0	(%rax)
	addq	$14, %rax
	cmpq	%r8, %rax
	je	.L1090
.L997:
	testb	%dl, %dl
	je	.L1091
	decl	%edx
	jmp	.L996
	.p2align 4,,7
.L992:
	cmpw	$-1, %si
	.p2align 4,,3
	je	.L1092
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	testw	%si, %si
	jne	.L1093
.L1021:
	movq	464(%rsp), %rax
	movq	%rbx, (%rax)
	movl	%r12d, %eax
.L991:
	movaps	208(%rsp), %xmm6
	movaps	224(%rsp), %xmm7
	movaps	240(%rsp), %xmm8
	movaps	256(%rsp), %xmm9
	movaps	272(%rsp), %xmm10
	movaps	288(%rsp), %xmm11
	movaps	304(%rsp), %xmm12
	movaps	320(%rsp), %xmm13
	movaps	336(%rsp), %xmm14
	movaps	352(%rsp), %xmm15
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
.L995:
	movzbl	1(%rdi), %edx
	addq	$2, %rdi
	jmp	.L996
	.p2align 4,,7
.L1090:
	leaq	124(%rbx,%r9), %rax
	xorl	%r8d, %r8d
	leaq	138(%rbx,%r12), %r9
	movq	%rax, %rdx
	jmp	.L1002
	.p2align 4,,7
.L1095:
	movzbl	(%rdi), %r10d
	andl	$16, %ecx
	leaq	1(%rdi), %r11
	movzbl	%r10b, %ecx
	jne	.L1000
	negl	%ecx
.L1000:
	addl	%ecx, %r8d
	movq	%r11, %rdi
.L1001:
	movw	%r8w, -124(%rdx)
	addq	$14, %rdx
	cmpq	%r9, %rdx
	je	.L1094
.L1002:
	movzbl	-112(%rdx), %ecx
	prefetcht0	(%rdx)
	testb	$2, %cl
	jne	.L1095
	andl	$16, %ecx
	jne	.L1001
	movzbl	(%rdi), %ecx
	movzbl	1(%rdi), %r10d
	addq	$14, %rdx
	addq	$2, %rdi
	sall	$8, %ecx
	addl	%r10d, %ecx
	movswl	%cx, %ecx
	addl	%ecx, %r8d
	movw	%r8w, -138(%rdx)
	cmpq	%r9, %rdx
	jne	.L1002
.L1094:
	xorl	%ecx, %ecx
	jmp	.L1007
	.p2align 4,,7
.L1097:
	movzbl	(%rdi), %r8d
	andl	$32, %edx
	leaq	1(%rdi), %r10
	movzbl	%r8b, %edx
	jne	.L1005
	negl	%edx
.L1005:
	addl	%edx, %ecx
	movq	%r10, %rdi
.L1006:
	movw	%cx, -122(%rax)
	addq	$14, %rax
	cmpq	%rax, %r9
	je	.L1096
.L1007:
	movzbl	-112(%rax), %edx
	prefetcht0	(%rax)
	testb	$4, %dl
	jne	.L1097
	andl	$32, %edx
	jne	.L1006
	movzbl	(%rdi), %edx
	movzbl	1(%rdi), %r8d
	addq	$14, %rax
	addq	$2, %rdi
	sall	$8, %edx
	addl	%r8d, %edx
	movswl	%dx, %edx
	addl	%edx, %ecx
	movw	%cx, -136(%rax)
	cmpq	%rax, %r9
	jne	.L1007
.L1096:
	movl	$0, 60(%rsp)
	movl	$0, 56(%rsp)
	xorl	%r14d, %r14d
	movl	$0, 44(%rsp)
	movl	$0, 40(%rsp)
	xorl	%r15d, %r15d
	movl	$0, 36(%rsp)
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movl	$0, 32(%rsp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L1018
	.p2align 4,,7
.L1100:
	testl	%r13d, %r13d
	je	.L1051
	movslq	%ecx, %rax
	movl	$1, %r13d
	incl	%ecx
	leaq	(%rax,%rax), %r8
	salq	$4, %rax
	subq	%r8, %rax
	leal	(%r9,%r15), %r8d
	addq	%rbx, %rax
	sarl	%r8d
	movw	%r15w, 4(%rax)
	movw	%r14w, 6(%rax)
	movw	%r8w, (%rax)
	leal	(%r10,%r14), %r8d
	movb	$3, 12(%rax)
	movl	%r10d, %r14d
	movl	%r9d, %r15d
	sarl	%r8d
	movw	%r8w, 2(%rax)
.L1015:
	incl	%edx
	cmpl	%edx, %ebp
	jle	.L1098
.L1018:
	leal	(%rsi,%rdx), %eax
	cltq
	leaq	(%rax,%rax), %r8
	salq	$4, %rax
	subq	%r8, %rax
	cmpl	%edx, %r12d
	leaq	(%rbx,%rax), %r10
	movzbl	12(%r10), %r8d
	movswl	(%r10), %r9d
	movswl	2(%r10), %r10d
	je	.L1099
	andl	$1, %r8d
	je	.L1100
	movslq	%ecx, %rax
	leaq	(%rax,%rax), %r8
	salq	$4, %rax
	subq	%r8, %rax
	addq	%rbx, %rax
	testl	%r13d, %r13d
	je	.L1017
	incl	%edx
	incl	%ecx
	xorl	%r13d, %r13d
	cmpl	%edx, %ebp
	movb	$3, 12(%rax)
	movw	%r9w, (%rax)
	movw	%r10w, 2(%rax)
	movw	%r15w, 4(%rax)
	movw	%r14w, 6(%rax)
	jg	.L1018
	.p2align 4,,7
.L1098:
	movl	36(%rsp), %edx
	testl	%edx, %edx
	je	.L1019
	testl	%r13d, %r13d
	je	.L1020
	movslq	%ecx, %rax
	movl	56(%rsp), %esi
	incl	%ecx
	leaq	(%rax,%rax), %rdx
	salq	$4, %rax
	subq	%rdx, %rax
	leal	(%r15,%rsi), %edx
	movl	60(%rsp), %esi
	addq	%rbx, %rax
	sarl	%edx
	movb	$3, 12(%rax)
	movw	%r15w, 4(%rax)
	movw	%dx, (%rax)
	leal	(%r14,%rsi), %edx
	movw	%r14w, 6(%rax)
	sarl	%edx
	movw	%dx, 2(%rax)
.L1020:
	leal	1(%rcx), %r12d
	movslq	%ecx, %rcx
	movzwl	40(%rsp), %esi
	leaq	(%rcx,%rcx), %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	leaq	(%rbx,%rcx), %rax
	movw	%si, (%rax)
	movzwl	44(%rsp), %esi
	movb	$3, 12(%rax)
	movw	%si, 2(%rax)
	movzwl	56(%rsp), %esi
	movw	%si, 4(%rax)
	movzwl	60(%rsp), %esi
	movw	%si, 6(%rax)
	jmp	.L1021
	.p2align 4,,7
.L1099:
	testl	%r12d, %r12d
	jne	.L1101
.L1009:
	andl	$1, %r8d
	movl	%r8d, %r11d
	xorl	$1, %r11d
	testb	%r8b, %r8b
	movzbl	%r11b, %edi
	movl	%edi, 36(%rsp)
	jne	.L1013
	leaq	14(%rbx,%rax), %rax
	testb	$1, 12(%rax)
	jne	.L1014
	movswl	(%rax), %edx
	movswl	2(%rax), %eax
	movl	%r10d, 60(%rsp)
	movl	%r9d, 56(%rsp)
	addl	%r9d, %edx
	addl	%r10d, %eax
	sarl	%eax
	sarl	%edx
	movl	%eax, %r10d
	movl	%edx, %r9d
.L1013:
	movslq	%ecx, %rax
	movl	32(%rsp), %edi
	movl	%r10d, 44(%rsp)
	leaq	(%rax,%rax), %rdx
	salq	$4, %rax
	movl	%r9d, 40(%rsp)
	incl	%ecx
	xorl	%r13d, %r13d
	subq	%rdx, %rax
	leal	(%rdi,%rdi), %edx
	incl	%edi
	addq	%rbx, %rax
	movl	%edi, 32(%rsp)
	movslq	%edx, %rdx
	addq	48(%rsp), %rdx
	movb	$1, 12(%rax)
	movw	%r9w, (%rax)
	movw	%r10w, 2(%rax)
	movw	$0, 4(%rax)
	movw	$0, 6(%rax)
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movl	%r12d, %edx
	movzwl	%ax, %eax
	leal	1(%rax), %r12d
	jmp	.L1015
	.p2align 4,,7
.L1051:
	movl	%r10d, %r14d
	movl	%r9d, %r15d
	movl	$1, %r13d
	jmp	.L1015
	.p2align 4,,7
.L1017:
	movb	$2, 12(%rax)
	movw	%r9w, (%rax)
	incl	%ecx
	movw	%r10w, 2(%rax)
	movw	$0, 4(%rax)
	movw	$0, 6(%rax)
	jmp	.L1015
	.p2align 4,,7
.L1101:
	movl	36(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L1010
	testl	%r13d, %r13d
	movl	%ecx, %r11d
	je	.L1011
	movslq	%ecx, %rcx
	incl	%r11d
	leaq	(%rcx,%rcx), %rdi
	salq	$4, %rcx
	subq	%rdi, %rcx
	movl	56(%rsp), %edi
	addq	%rbx, %rcx
	movb	$3, 12(%rcx)
	movw	%r15w, 4(%rcx)
	addl	%r15d, %edi
	movw	%r14w, 6(%rcx)
	sarl	%edi
	movw	%di, (%rcx)
	movl	60(%rsp), %edi
	addl	%r14d, %edi
	sarl	%edi
	movw	%di, 2(%rcx)
.L1011:
	leal	1(%r11), %ecx
	movslq	%r11d, %r11
	leaq	(%r11,%r11), %rdi
	salq	$4, %r11
	subq	%rdi, %r11
	movzwl	40(%rsp), %edi
	addq	%rbx, %r11
	movb	$3, 12(%r11)
	movw	%di, (%r11)
	movzwl	44(%rsp), %edi
	movw	%di, 2(%r11)
	movzwl	56(%rsp), %edi
	movw	%di, 4(%r11)
	movzwl	60(%rsp), %edi
	movw	%di, 6(%r11)
	jmp	.L1009
.L1109:
	testq	%rbx, %rbx
	je	.L1044
	movq	%rbx, %rcx
	call	_ZN5ImGui7MemFreeEPv
.L1044:
	movq	72(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1045
	call	_ZN5ImGui7MemFreeEPv
	.p2align 4,,7
.L1045:
	xorl	%eax, %eax
	jmp	.L991
	.p2align 4,,7
.L1014:
	movl	%r10d, 60(%rsp)
	movl	%r9d, 56(%rsp)
	leal	1(%rdx), %r12d
	movswl	2(%rax), %r10d
	movswl	(%rax), %r9d
	jmp	.L1013
	.p2align 4,,7
.L1019:
	leal	1(%rcx), %r12d
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx), %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	testl	%r13d, %r13d
	leaq	(%rbx,%rcx), %rax
	jne	.L1102
	movzwl	40(%rsp), %esi
	movb	$2, 12(%rax)
	movw	$0, 4(%rax)
	movw	$0, 6(%rax)
	movw	%si, (%rax)
	movzwl	44(%rsp), %esi
	movw	%si, 2(%rax)
	jmp	.L1021
	.p2align 4,,7
.L1010:
	movslq	%ecx, %r11
	leaq	(%r11,%r11), %rdi
	salq	$4, %r11
	subq	%rdi, %r11
	addq	%rbx, %r11
	testl	%r13d, %r13d
	jne	.L1103
	movzwl	40(%rsp), %edi
	movb	$2, 12(%r11)
	incl	%ecx
	movw	$0, 4(%r11)
	movw	$0, 6(%r11)
	movw	%di, (%r11)
	movzwl	44(%rsp), %edi
	movw	%di, 2(%r11)
	jmp	.L1009
	.p2align 4,,7
.L1092:
	leaq	10(%rbx,%rax), %r14
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	xorps	%xmm8, %xmm8
	jmp	.L1049
	.p2align 4,,7
.L1108:
	movzbl	(%r14), %ecx
	movzbl	1(%r14), %r8d
	addq	$2, %r14
	movaps	%xmm8, %xmm12
	movaps	%xmm8, %xmm13
	sall	$8, %ecx
	addl	%r8d, %ecx
	movswl	%cx, %ecx
	cvtsi2ss	%ecx, %xmm6
	mulss	.LC33(%rip), %xmm6
	movaps	%xmm6, %xmm14
	movaps	%xmm6, %xmm7
	mulss	%xmm6, %xmm14
	movaps	%xmm14, %xmm0
	addss	%xmm8, %xmm0
	cvtss2sd	%xmm0, %xmm0
.L1028:
	sqrtsd	%xmm0, %xmm9
	ucomisd	%xmm9, %xmm9
	jp	.L1104
.L1030:
	movaps	%xmm12, %xmm0
	mulss	%xmm12, %xmm0
	addss	%xmm0, %xmm14
	cvtss2sd	%xmm14, %xmm0
	sqrtsd	%xmm0, %xmm15
	ucomisd	%xmm15, %xmm15
	jp	.L1105
.L1032:
	movl	68(%r13), %eax
	movzwl	%r15w, %r15d
	testl	%eax, %eax
	je	.L1106
	leaq	80(%rsp), %rdi
	leaq	144(%rsp), %rbp
	xorl	%eax, %eax
	movl	$7, %ecx
	leaq	80(%rsp), %r8
	movl	%r15d, %edx
	rep stosq
	movl	$7, %ecx
	movq	%rbp, %rdi
	movl	$1, 80(%rsp)
	rep stosq
	movq	%r13, %rcx
	call	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
	testl	%eax, %eax
	jne	.L1107
.L1039:
	andl	$32, %esi
	je	.L1021
.L1049:
	movq	$0, 72(%rsp)
	movzbl	(%r14), %esi
	movzbl	1(%r14), %eax
	movzbl	3(%r14), %r15d
	sall	$8, %esi
	addl	%eax, %esi
	movzbl	2(%r14), %eax
	sall	$8, %eax
	addl	%eax, %r15d
	testb	$2, %sil
	je	.L1024
	testb	$1, %sil
	je	.L1025
	movzbl	4(%r14), %eax
	movzbl	5(%r14), %edx
	addq	$8, %r14
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	-1(%r14), %edx
	cwtl
	cvtsi2ss	%eax, %xmm11
	movzbl	-2(%r14), %eax
	sall	$8, %eax
	addl	%edx, %eax
	cwtl
	cvtsi2ss	%eax, %xmm10
.L1026:
	testb	$8, %sil
	jne	.L1108
	testb	$64, %sil
	je	.L1029
	movzbl	(%r14), %eax
	movzbl	1(%r14), %edx
	addq	$4, %r14
	movss	.LC33(%rip), %xmm6
	xorps	%xmm3, %xmm3
	xorps	%xmm12, %xmm12
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	-1(%r14), %edx
	cwtl
	movaps	%xmm12, %xmm13
	cvtsi2ss	%eax, %xmm7
	movzbl	-2(%r14), %eax
	sall	$8, %eax
	addl	%edx, %eax
	cwtl
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm6, %xmm7
	mulss	%xmm0, %xmm6
	movaps	%xmm7, %xmm0
	mulss	%xmm7, %xmm0
	movaps	%xmm6, %xmm14
	addss	%xmm3, %xmm0
	mulss	%xmm6, %xmm14
	cvtss2sd	%xmm0, %xmm0
	jmp	.L1028
	.p2align 4,,7
.L1106:
	leaq	72(%rsp), %r8
	movl	%r15d, %edx
	movq	%r13, %rcx
	call	_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex
	movl	%eax, %edi
.L1035:
	testl	%edi, %edi
	jle	.L1039
	cmpl	$4, %edi
	cvtsd2ss	%xmm9, %xmm3
	cvtsd2ss	%xmm15, %xmm0
	movq	72(%rsp), %r9
	jle	.L1053
	leal	-5(%rdi), %edx
	leaq	76(%r9), %rax
	shrl	$2, %edx
	leal	4(,%rdx,4), %r8d
	xorl	%edx, %edx
	.p2align 4,,7
.L1041:
	movswl	-76(%rax), %ecx
	movaps	%xmm7, %xmm5
	prefetcht0	(%rax)
	movaps	%xmm12, %xmm4
	addl	$4, %edx
	addq	$56, %rax
	cvtsi2ss	%ecx, %xmm2
	movswl	-130(%rax), %ecx
	cvtsi2ss	%ecx, %xmm1
	mulss	%xmm2, %xmm5
	mulss	%xmm13, %xmm2
	mulss	%xmm1, %xmm4
	mulss	%xmm6, %xmm1
	addss	%xmm5, %xmm4
	movaps	%xmm7, %xmm5
	addss	%xmm2, %xmm1
	addss	%xmm11, %xmm4
	addss	%xmm10, %xmm1
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm4, %ecx
	movaps	%xmm12, %xmm4
	movw	%cx, -132(%rax)
	cvttss2si	%xmm1, %ecx
	movw	%cx, -130(%rax)
	movswl	-128(%rax), %ecx
	cvtsi2ss	%ecx, %xmm2
	movswl	-126(%rax), %ecx
	cvtsi2ss	%ecx, %xmm1
	mulss	%xmm2, %xmm5
	mulss	%xmm13, %xmm2
	mulss	%xmm1, %xmm4
	mulss	%xmm6, %xmm1
	addss	%xmm5, %xmm4
	movaps	%xmm12, %xmm5
	addss	%xmm2, %xmm1
	addss	%xmm11, %xmm4
	addss	%xmm10, %xmm1
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm4, %ecx
	movaps	%xmm7, %xmm4
	movw	%cx, -128(%rax)
	cvttss2si	%xmm1, %ecx
	movw	%cx, -126(%rax)
	movswl	-118(%rax), %ecx
	cvtsi2ss	%ecx, %xmm1
	movswl	-116(%rax), %ecx
	cvtsi2ss	%ecx, %xmm2
	mulss	%xmm1, %xmm4
	mulss	%xmm13, %xmm1
	mulss	%xmm2, %xmm5
	mulss	%xmm6, %xmm2
	addss	%xmm5, %xmm4
	movaps	%xmm12, %xmm5
	addss	%xmm2, %xmm1
	addss	%xmm11, %xmm4
	addss	%xmm10, %xmm1
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm4, %ecx
	movaps	%xmm7, %xmm4
	movw	%cx, -118(%rax)
	cvttss2si	%xmm1, %ecx
	movw	%cx, -116(%rax)
	movswl	-114(%rax), %ecx
	cvtsi2ss	%ecx, %xmm1
	movswl	-112(%rax), %ecx
	cvtsi2ss	%ecx, %xmm2
	mulss	%xmm1, %xmm4
	mulss	%xmm13, %xmm1
	mulss	%xmm2, %xmm5
	mulss	%xmm6, %xmm2
	addss	%xmm5, %xmm4
	movaps	%xmm12, %xmm5
	addss	%xmm2, %xmm1
	addss	%xmm11, %xmm4
	addss	%xmm10, %xmm1
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm4, %ecx
	movaps	%xmm7, %xmm4
	movw	%cx, -114(%rax)
	cvttss2si	%xmm1, %ecx
	movw	%cx, -112(%rax)
	movswl	-104(%rax), %ecx
	cvtsi2ss	%ecx, %xmm1
	movswl	-102(%rax), %ecx
	cvtsi2ss	%ecx, %xmm2
	mulss	%xmm1, %xmm4
	mulss	%xmm13, %xmm1
	mulss	%xmm2, %xmm5
	mulss	%xmm6, %xmm2
	addss	%xmm5, %xmm4
	movaps	%xmm12, %xmm5
	addss	%xmm2, %xmm1
	addss	%xmm11, %xmm4
	addss	%xmm10, %xmm1
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm4, %ecx
	movaps	%xmm7, %xmm4
	movw	%cx, -104(%rax)
	cvttss2si	%xmm1, %ecx
	movw	%cx, -102(%rax)
	movswl	-100(%rax), %ecx
	cvtsi2ss	%ecx, %xmm1
	movswl	-98(%rax), %ecx
	cvtsi2ss	%ecx, %xmm2
	mulss	%xmm1, %xmm4
	mulss	%xmm13, %xmm1
	mulss	%xmm2, %xmm5
	mulss	%xmm6, %xmm2
	addss	%xmm5, %xmm4
	movaps	%xmm12, %xmm5
	addss	%xmm2, %xmm1
	addss	%xmm11, %xmm4
	addss	%xmm10, %xmm1
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm4, %ecx
	movaps	%xmm7, %xmm4
	movw	%cx, -100(%rax)
	cvttss2si	%xmm1, %ecx
	movw	%cx, -98(%rax)
	movswl	-90(%rax), %ecx
	cvtsi2ss	%ecx, %xmm1
	movswl	-88(%rax), %ecx
	cvtsi2ss	%ecx, %xmm2
	mulss	%xmm1, %xmm4
	mulss	%xmm13, %xmm1
	mulss	%xmm2, %xmm5
	mulss	%xmm6, %xmm2
	addss	%xmm5, %xmm4
	movaps	%xmm12, %xmm5
	addss	%xmm2, %xmm1
	addss	%xmm11, %xmm4
	addss	%xmm10, %xmm1
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm4, %ecx
	movaps	%xmm7, %xmm4
	movw	%cx, -90(%rax)
	cvttss2si	%xmm1, %ecx
	movw	%cx, -88(%rax)
	movswl	-86(%rax), %ecx
	cvtsi2ss	%ecx, %xmm1
	movswl	-84(%rax), %ecx
	cvtsi2ss	%ecx, %xmm2
	mulss	%xmm1, %xmm4
	mulss	%xmm13, %xmm1
	mulss	%xmm2, %xmm5
	mulss	%xmm6, %xmm2
	addss	%xmm5, %xmm4
	addss	%xmm2, %xmm1
	addss	%xmm11, %xmm4
	addss	%xmm10, %xmm1
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm4, %ecx
	movw	%cx, -86(%rax)
	cvttss2si	%xmm1, %ecx
	movw	%cx, -84(%rax)
	cmpl	%edx, %r8d
	jne	.L1041
.L1040:
	movslq	%edx, %rax
	leaq	(%rax,%rax), %rcx
	salq	$4, %rax
	subq	%rcx, %rax
	addq	%r9, %rax
	.p2align 4,,7
.L1042:
	movswl	(%rax), %ecx
	movaps	%xmm12, %xmm5
	movaps	%xmm7, %xmm4
	incl	%edx
	addq	$14, %rax
	cvtsi2ss	%ecx, %xmm1
	movswl	-12(%rax), %ecx
	cvtsi2ss	%ecx, %xmm2
	mulss	%xmm1, %xmm4
	mulss	%xmm13, %xmm1
	mulss	%xmm2, %xmm5
	mulss	%xmm6, %xmm2
	addss	%xmm5, %xmm4
	movaps	%xmm12, %xmm5
	addss	%xmm2, %xmm1
	addss	%xmm11, %xmm4
	addss	%xmm10, %xmm1
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm4, %ecx
	movaps	%xmm7, %xmm4
	movw	%cx, -14(%rax)
	cvttss2si	%xmm1, %ecx
	movw	%cx, -12(%rax)
	movswl	-10(%rax), %ecx
	cvtsi2ss	%ecx, %xmm1
	movswl	-8(%rax), %ecx
	cvtsi2ss	%ecx, %xmm2
	mulss	%xmm1, %xmm4
	mulss	%xmm13, %xmm1
	mulss	%xmm2, %xmm5
	mulss	%xmm6, %xmm2
	addss	%xmm5, %xmm4
	addss	%xmm2, %xmm1
	addss	%xmm11, %xmm4
	addss	%xmm10, %xmm1
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm4, %ecx
	movw	%cx, -10(%rax)
	cvttss2si	%xmm1, %ecx
	movw	%cx, -8(%rax)
	cmpl	%edx, %edi
	jg	.L1042
	leal	(%rdi,%r12), %r15d
	movslq	%r15d, %rcx
	leaq	(%rcx,%rcx), %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1109
	testl	%r12d, %r12d
	je	.L1046
	leaq	(%r12,%r12), %rax
	salq	$4, %r12
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	subq	%rax, %r12
	movq	%r12, %r8
	call	memcpy
	movslq	%edi, %r8
	movq	72(%rsp), %rdx
	leaq	0(%rbp,%r12), %rcx
	leaq	(%r8,%r8), %rax
	salq	$4, %r8
	subq	%rax, %r8
	call	memcpy
.L1047:
	movq	%rbx, %rcx
	call	_ZN5ImGui7MemFreeEPv
.L1048:
	movq	72(%rsp), %rcx
	movslq	%r15d, %r12
	movq	%rbp, %rbx
	call	_ZN5ImGui7MemFreeEPv
	jmp	.L1039
	.p2align 4,,7
.L1025:
	movsbl	4(%r14), %eax
	addq	$6, %r14
	cvtsi2ss	%eax, %xmm11
	movsbl	-1(%r14), %eax
	cvtsi2ss	%eax, %xmm10
	jmp	.L1026
	.p2align 4,,7
.L1046:
	movslq	%edi, %r8
	movq	72(%rsp), %rdx
	movq	%rbp, %rcx
	leaq	(%r8,%r8), %rax
	salq	$4, %r8
	subq	%rax, %r8
	call	memcpy
	testq	%rbx, %rbx
	je	.L1048
	jmp	.L1047
	.p2align 4,,7
.L1024:
	xorps	%xmm10, %xmm10
	leaq	.LC2(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movl	$1670, %r8d
	addq	$4, %r14
	call	_assert
	movaps	%xmm10, %xmm11
	jmp	.L1026
	.p2align 4,,7
.L1029:
	testb	$-128, %sil
	je	.L1052
	movzbl	(%r14), %eax
	movzbl	1(%r14), %edx
	addq	$8, %r14
	movss	.LC33(%rip), %xmm6
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	-5(%r14), %edx
	cwtl
	cvtsi2ss	%eax, %xmm7
	movzbl	-6(%r14), %eax
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	-3(%r14), %edx
	cwtl
	cvtsi2ss	%eax, %xmm13
	movzbl	-4(%r14), %eax
	sall	$8, %eax
	mulss	%xmm6, %xmm7
	addl	%edx, %eax
	movzbl	-1(%r14), %edx
	cwtl
	cvtsi2ss	%eax, %xmm12
	movzbl	-2(%r14), %eax
	movaps	%xmm7, %xmm1
	mulss	%xmm7, %xmm1
	sall	$8, %eax
	mulss	%xmm6, %xmm13
	addl	%edx, %eax
	cwtl
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm6, %xmm12
	mulss	%xmm0, %xmm6
	movaps	%xmm13, %xmm0
	mulss	%xmm13, %xmm0
	movaps	%xmm6, %xmm14
	addss	%xmm1, %xmm0
	mulss	%xmm6, %xmm14
	cvtss2sd	%xmm0, %xmm0
	jmp	.L1028
	.p2align 4,,7
.L1107:
	movslq	128(%rsp), %rcx
	leaq	(%rcx,%rcx), %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	%rbp, %r8
	movl	%r15d, %edx
	movq	%r13, %rcx
	movq	%rax, 72(%rsp)
	movq	%rax, 184(%rsp)
	call	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
	testl	%eax, %eax
	je	.L1039
	movl	128(%rsp), %edi
	cmpl	%edi, 192(%rsp)
	je	.L1035
	leaq	.LC2(%rip), %rdx
	leaq	.LC34(%rip), %rcx
	movl	$2113, %r8d
	call	_assert
	movl	192(%rsp), %edi
	jmp	.L1035
	.p2align 4,,7
.L1052:
	xorps	%xmm12, %xmm12
	movlpd	.LC32(%rip), %xmm0
	movss	.LC24(%rip), %xmm6
	movaps	%xmm6, %xmm7
	movaps	%xmm6, %xmm14
	movaps	%xmm12, %xmm13
	jmp	.L1028
.L1053:
	xorl	%edx, %edx
	jmp	.L1040
.L1102:
	movzwl	40(%rsp), %esi
	movb	$3, 12(%rax)
	movw	%r15w, 4(%rax)
	movw	%r14w, 6(%rax)
	movw	%si, (%rax)
	movzwl	44(%rsp), %esi
	movw	%si, 2(%rax)
	jmp	.L1021
.L1103:
	movzwl	40(%rsp), %edi
	movb	$3, 12(%r11)
	incl	%ecx
	movw	%r15w, 4(%r11)
	movw	%r14w, 6(%r11)
	movw	%di, (%r11)
	movzwl	44(%rsp), %edi
	movw	%di, 2(%r11)
	jmp	.L1009
.L1093:
	leaq	.LC2(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movl	$1723, %r8d
	call	_assert
	jmp	.L1021
.L1105:
	call	sqrt
	movsd	%xmm0, %xmm15
	.p2align 4,,3
	jmp	.L1032
.L1104:
	call	sqrt
	movsd	%xmm0, %xmm9
	jmp	.L1030
	.seh_endproc
	.p2align 4,,15
	.def	stbtt_GetGlyphBitmapBoxSubpixel.constprop.72;	.scl	3;	.type	32;	.endef
	.seh_proc	stbtt_GetGlyphBitmapBoxSubpixel.constprop.72
stbtt_GetGlyphBitmapBoxSubpixel.constprop.72:
.LFB808:
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
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	.seh_endprologue
	movq	%rcx, %rbx
	movaps	%xmm2, %xmm7
	movl	68(%rcx), %eax
	movaps	%xmm3, %xmm6
	movq	224(%rsp), %rbp
	movq	232(%rsp), %r13
	movq	240(%rsp), %r14
	movq	248(%rsp), %r12
	testl	%eax, %eax
	jne	.L1142
	call	_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi
	testl	%eax, %eax
	js	.L1114
	movq	8(%rbx), %rcx
	cltq
	leaq	2(%rcx,%rax), %r8
	movzbl	(%r8), %edx
	movzbl	1(%r8), %r8d
	sall	$8, %edx
	addl	%r8d, %edx
	leaq	4(%rcx,%rax), %r8
	movswl	%dx, %edx
	movzbl	(%r8), %ebx
	movzbl	1(%r8), %r8d
	sall	$8, %ebx
	addl	%r8d, %ebx
	leaq	6(%rcx,%rax), %r8
	leaq	8(%rcx,%rax), %rax
	movswl	%bx, %ebx
	movzbl	(%r8), %edi
	movzbl	(%rax), %esi
	movzbl	1(%r8), %r8d
	movzbl	1(%rax), %eax
	sall	$8, %edi
	sall	$8, %esi
	addl	%r8d, %edi
	addl	%eax, %esi
	movswl	%di, %edi
	movswl	%si, %esi
.L1113:
	testq	%rbp, %rbp
	je	.L1125
	cvtsi2ss	%edx, %xmm0
	mulss	%xmm7, %xmm0
	addss	.LC28(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 0(%rbp)
.L1125:
	testq	%r13, %r13
	je	.L1119
	negl	%esi
	cvtsi2ss	%esi, %xmm0
	mulss	%xmm6, %xmm0
	addss	.LC28(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 0(%r13)
.L1119:
	testq	%r14, %r14
	je	.L1120
	cvtsi2ss	%edi, %xmm0
	mulss	%xmm7, %xmm0
	addss	.LC28(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, (%r14)
.L1120:
	testq	%r12, %r12
	je	.L1110
	negl	%ebx
	cvtsi2ss	%ebx, %xmm0
	mulss	%xmm6, %xmm0
	addss	.LC28(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, (%r12)
.L1110:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	subq	$-128, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L1114:
	testq	%rbp, %rbp
	je	.L1123
	movl	$0, 0(%rbp)
.L1123:
	testq	%r13, %r13
	je	.L1115
	movl	$0, 0(%r13)
.L1115:
	testq	%r14, %r14
	je	.L1116
	movl	$0, (%r14)
.L1116:
	testq	%r12, %r12
	je	.L1110
	movl	$0, (%r12)
	jmp	.L1110
	.p2align 4,,7
.L1142:
	leaq	32(%rsp), %rdi
	xorl	%eax, %eax
	movl	$7, %ecx
	leaq	32(%rsp), %r8
	rep stosq
	movq	%rbx, %rcx
	movl	$1, 32(%rsp)
	call	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
	testl	%eax, %eax
	je	.L1126
	movl	56(%rsp), %edx
	movl	64(%rsp), %ebx
	movl	60(%rsp), %edi
	movl	68(%rsp), %esi
	jmp	.L1113
	.p2align 4,,7
.L1126:
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	jmp	.L1113
	.seh_endproc
	.section	.text$snprintf,"x"
	.linkonce discard
	.p2align 4,,15
	.globl	snprintf
	.def	snprintf;	.scl	2;	.type	32;	.endef
	.seh_proc	snprintf
snprintf:
.LFB144:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%r9, 88(%rsp)
	leaq	88(%rsp), %r9
	movq	%r9, 40(%rsp)
	call	__ms_vsnprintf
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
.LFB406:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	4(%rcx), %eax
	movq	%rcx, %rbx
	testl	%eax, %eax
	jns	.L1145
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1146
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	movq	%r8, %rax
	salq	$6, %r8
	salq	$4, %rax
	subq	%rax, %r8
	call	memcpy
	movq	8(%rbx), %rcx
.L1146:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 8(%rbx)
	movl	$0, 4(%rbx)
.L1145:
	movl	20(%rbx), %r8d
	movl	$0, (%rbx)
	testl	%r8d, %r8d
	js	.L1188
	movl	36(%rbx), %esi
	movl	$0, 16(%rbx)
	testl	%esi, %esi
	jns	.L1152
.L1151:
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	40(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1150
	movslq	32(%rbx), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	call	memcpy
	movq	40(%rbx), %rcx
.L1150:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 40(%rbx)
	movl	$0, 36(%rbx)
.L1152:
	movl	84(%rbx), %ecx
	movl	$0, 32(%rbx)
	movl	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movq	$0, 72(%rbx)
	testl	%ecx, %ecx
	js	.L1162
	movl	100(%rbx), %r10d
	movl	$0, 80(%rbx)
	testl	%r10d, %r10d
	jns	.L1155
.L1164:
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	104(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1156
	movslq	96(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	104(%rbx), %rcx
.L1156:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 104(%rbx)
	movl	$0, 100(%rbx)
.L1155:
	movl	116(%rbx), %eax
	movl	$0, 96(%rbx)
	testl	%eax, %eax
	js	.L1157
.L1158:
	movl	$0, 112(%rbx)
	movl	$0, 128(%rbx)
	movl	$1, 132(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L1188:
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1147
	movslq	16(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%rbx), %rcx
.L1147:
	call	_ZN5ImGui7MemFreeEPv
	movl	36(%rbx), %eax
	movq	%rsi, 24(%rbx)
	movl	$0, 20(%rbx)
	movl	$0, 16(%rbx)
	testl	%eax, %eax
	js	.L1151
	movl	84(%rbx), %r11d
	movl	$0, 32(%rbx)
	movl	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movq	$0, 72(%rbx)
	testl	%r11d, %r11d
	jns	.L1153
.L1162:
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	88(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1154
	movslq	80(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	88(%rbx), %rcx
.L1154:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 88(%rbx)
	movl	$0, 84(%rbx)
.L1153:
	movl	100(%rbx), %edx
	movl	$0, 80(%rbx)
	testl	%edx, %edx
	js	.L1164
	movl	116(%rbx), %r9d
	movl	$0, 96(%rbx)
	testl	%r9d, %r9d
	jns	.L1158
.L1157:
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1159
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L1159:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
	jmp	.L1158
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
.LFB407:
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
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L1190
	movl	$0, 4(%rsi)
	movl	$0, (%rsi)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 8(%rsi)
.L1190:
	movq	24(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1191
	movl	$0, 20(%rsi)
	movl	$0, 16(%rsi)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 24(%rsi)
.L1191:
	movq	40(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1192
	movl	$0, 36(%rsi)
	movl	$0, 32(%rsi)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 40(%rsi)
.L1192:
	movq	88(%rsi), %rcx
	movl	$0, 56(%rsi)
	movq	$0, 64(%rsi)
	movq	$0, 72(%rsi)
	testq	%rcx, %rcx
	je	.L1193
	movl	$0, 84(%rsi)
	movl	$0, 80(%rsi)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 88(%rsi)
.L1193:
	movq	104(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1194
	movl	$0, 100(%rsi)
	movl	$0, 96(%rsi)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 104(%rsi)
.L1194:
	movq	120(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1195
	movl	$0, 116(%rsi)
	movl	$0, 112(%rsi)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 120(%rsi)
.L1195:
	movl	136(%rsi), %eax
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	movl	$0, 128(%rsi)
	movl	$1, 132(%rsi)
	testl	%eax, %eax
	jg	.L1232
	jmp	.L1205
	.p2align 4,,7
.L1200:
	movq	%rbp, %rbx
	addq	144(%rsi), %rbx
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1203
.L1207:
	movl	$0, 4(%rbx)
	movl	$0, (%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 8(%rbx)
.L1201:
	cmpl	%edi, 136(%rsi)
	jg	.L1233
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
.L1233:
	movq	%rbp, %rbx
	addq	144(%rsi), %rbx
.L1203:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1204
	movl	$0, 20(%rbx)
	movl	$0, 16(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 24(%rbx)
.L1204:
	movl	136(%rsi), %eax
	incl	%edi
	addq	$32, %rbp
	cmpl	%edi, %eax
	jle	.L1205
.L1232:
	testl	%edi, %edi
	jne	.L1199
	movq	144(%rsi), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movl	136(%rsi), %eax
.L1199:
	cmpl	%eax, %edi
	jl	.L1200
	leaq	.LC36(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	movq	%rbp, %rbx
	call	_assert
	addq	144(%rsi), %rbx
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L1207
	jmp	.L1201
	.p2align 4,,7
.L1205:
	movq	144(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1189
	movl	$0, 140(%rsi)
	movl	$0, 136(%rsi)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 144(%rsi)
.L1189:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
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
.LFB408:
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
	movq	%rcx, %rbx
	movslq	80(%rcx), %rdx
	testl	%edx, %edx
	je	.L1235
	movq	88(%rcx), %rax
	salq	$4, %rdx
	leaq	-16(%rax,%rdx), %rax
.L1235:
	movss	(%rax), %xmm7
	xorl	%edi, %edi
	movss	4(%rax), %xmm9
	movss	8(%rax), %xmm6
	movss	12(%rax), %xmm8
	movslq	96(%rbx), %rax
	testl	%eax, %eax
	je	.L1236
	movq	104(%rbx), %rdx
	movq	-8(%rdx,%rax,8), %rdi
.L1236:
	ucomiss	%xmm7, %xmm6
	jb	.L1237
	ucomiss	%xmm9, %xmm8
	jnb	.L1239
.L1237:
	leaq	.LC5(%rip), %rdx
	leaq	.LC37(%rip), %rcx
	movl	$171, %r8d
	call	_assert
.L1239:
	movslq	(%rbx), %rdx
	cmpl	4(%rbx), %edx
	je	.L1240
	movq	8(%rbx), %rax
	leal	1(%rdx), %r8d
.L1241:
	movq	%rdx, %rcx
	salq	$6, %rdx
	movl	%r8d, (%rbx)
	salq	$4, %rcx
	subq	%rcx, %rdx
	addq	%rdx, %rax
	movss	%xmm7, 4(%rax)
	movl	$0, (%rax)
	movq	%rdi, 24(%rax)
	movss	%xmm9, 8(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movss	%xmm6, 12(%rax)
	movss	%xmm8, 16(%rax)
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
	.p2align 4,,7
.L1240:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L1255
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %ebp
	jg	.L1243
.L1256:
	movq	8(%rbx), %rax
	jmp	.L1241
	.p2align 4,,7
.L1255:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %ebp
	jle	.L1256
.L1243:
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$6, %rcx
	salq	$4, %rax
	subq	%rax, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1244
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	movq	%r8, %rax
	salq	$6, %r8
	salq	$4, %rax
	subq	%rax, %r8
	call	memcpy
	movq	8(%rbx), %rcx
.L1244:
	call	_ZN5ImGui7MemFreeEPv
	movslq	(%rbx), %rdx
	movq	%rsi, 8(%rbx)
	movq	%rsi, %rax
	movl	%ebp, 4(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L1241
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
.LFB409:
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
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%r8, %rsi
	cmpl	$0, %eax
	jne	.L1258
.L1262:
	movq	%rbx, %rcx
	call	_ZN10ImDrawList10AddDrawCmdEv
	movslq	(%rbx), %rax
	testl	%eax, %eax
	jle	.L1269
.L1259:
	movq	%rax, %rdx
	salq	$6, %rax
	salq	$4, %rdx
	subq	%rdx, %rax
	movq	8(%rbx), %rdx
	leaq	-48(%rdx,%rax), %rax
.L1263:
	movq	%rbx, %rcx
	movq	%rdi, 32(%rax)
	movq	%rsi, 40(%rax)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN10ImDrawList10AddDrawCmdEv
	.p2align 4,,7
.L1258:
	jle	.L1270
.L1261:
	movq	%rax, %rdx
	salq	$6, %rax
	salq	$4, %rdx
	subq	%rdx, %rax
	movq	8(%rbx), %rdx
	leaq	-48(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L1262
	movl	(%rax), %edx
	testl	%edx, %edx
	jne	.L1262
	cmpq	$0, 32(%rax)
	jne	.L1262
	.p2align 4,,2
	jmp	.L1263
	.p2align 4,,7
.L1269:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	(%rbx), %rax
	jmp	.L1259
	.p2align 4,,7
.L1270:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	(%rbx), %rax
	jmp	.L1261
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList14UpdateClipRectEv
	.def	_ZN10ImDrawList14UpdateClipRectEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList14UpdateClipRectEv
_ZN10ImDrawList14UpdateClipRectEv:
.LFB410:
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
	movslq	80(%rcx), %rax
	leaq	_ZL13GNullClipRect(%rip), %rdx
	movq	%rcx, %rbx
	testl	%eax, %eax
	je	.L1272
	movq	88(%rcx), %rdx
	salq	$4, %rax
	leaq	-16(%rdx,%rax), %rdx
.L1272:
	movl	(%rbx), %edi
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	testl	%edi, %edi
	movq	%rax, 32(%rsp)
	movq	%rdx, 40(%rsp)
	jle	.L1273
	movslq	%edi, %rax
	movq	%rax, %rdx
	salq	$6, %rax
	salq	$4, %rdx
	subq	%rdx, %rax
	movq	8(%rbx), %rdx
	leaq	-48(%rdx,%rax), %rsi
	testq	%rsi, %rsi
	je	.L1273
	movl	(%rsi), %ebp
	testl	%ebp, %ebp
	jne	.L1298
	cmpq	$0, 32(%rsi)
	je	.L1275
.L1273:
	movq	%rbx, %rcx
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN10ImDrawList10AddDrawCmdEv
	.p2align 4,,7
.L1298:
	leaq	32(%rsp), %rdx
	leaq	4(%rsi), %rcx
	movl	$16, %r8d
	call	memcmp
	testl	%eax, %eax
	jne	.L1273
	cmpq	$0, 32(%rsi)
	jne	.L1273
.L1275:
	cmpl	$1, %edi
	je	.L1276
	cmpq	$48, %rsi
	leaq	-48(%rsi), %rcx
	je	.L1276
	testl	%ebp, %ebp
	jne	.L1276
	leaq	32(%rsp), %rdx
	addq	$4, %rcx
	movl	$16, %r8d
	call	memcmp
	testl	%eax, %eax
	jne	.L1276
	movslq	96(%rbx), %rax
	xorl	%edx, %edx
	movq	-24(%rsi), %rcx
	testl	%eax, %eax
	je	.L1277
	movq	104(%rbx), %rdx
	movq	-8(%rdx,%rax,8), %rdx
.L1277:
	cmpq	%rcx, %rdx
	jne	.L1276
	cmpq	$0, -16(%rsi)
	jne	.L1276
	decl	%edi
	movl	%edi, (%rbx)
	jmp	.L1271
	.p2align 4,,7
.L1276:
	movq	32(%rsp), %rax
	movq	40(%rsp), %rdx
	movq	%rax, 4(%rsi)
	movq	%rdx, 12(%rsi)
.L1271:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList15UpdateTextureIDEv
	.def	_ZN10ImDrawList15UpdateTextureIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList15UpdateTextureIDEv
_ZN10ImDrawList15UpdateTextureIDEv:
.LFB411:
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
	xorl	%ebp, %ebp
	movq	%rcx, %rbx
	testl	%eax, %eax
	je	.L1300
	movq	104(%rcx), %rdx
	movq	-8(%rdx,%rax,8), %rbp
.L1300:
	movl	(%rbx), %edi
	cmpl	$0, %edi
	jne	.L1301
.L1303:
	movq	%rbx, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN10ImDrawList10AddDrawCmdEv
	.p2align 4,,7
.L1301:
	jle	.L1318
.L1302:
	movslq	%edi, %rax
	movq	%rax, %rdx
	salq	$6, %rax
	salq	$4, %rdx
	subq	%rdx, %rax
	movq	8(%rbx), %rdx
	leaq	-48(%rdx,%rax), %rsi
	testq	%rsi, %rsi
	je	.L1303
	movl	(%rsi), %eax
	testl	%eax, %eax
	je	.L1304
	cmpq	24(%rsi), %rbp
	jne	.L1303
	.p2align 4,,7
.L1304:
	cmpq	$0, 32(%rsi)
	jne	.L1303
	cmpl	$1, %edi
	jle	.L1305
	movq	%rsi, %rcx
	subq	$48, %rcx
	je	.L1305
	cmpq	-24(%rsi), %rbp
	je	.L1319
.L1305:
	movq	%rbp, 24(%rsi)
.L1299:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L1318:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	(%rbx), %edi
	jmp	.L1302
	.p2align 4,,7
.L1319:
	movslq	80(%rbx), %rax
	leaq	_ZL13GNullClipRect(%rip), %rdx
	testl	%eax, %eax
	je	.L1306
	movq	88(%rbx), %rdx
	salq	$4, %rax
	leaq	-16(%rdx,%rax), %rdx
.L1306:
	addq	$4, %rcx
	movl	$16, %r8d
	call	memcmp
	testl	%eax, %eax
	jne	.L1305
	cmpq	$0, -16(%rsi)
	jne	.L1305
	decl	%edi
	movl	%edi, (%rbx)
	jmp	.L1299
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b
	.def	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b
_ZN10ImDrawList12PushClipRectE6ImVec2S0_b:
.LFB412:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$112, %rsp
	.seh_stackalloc	112
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	movaps	%xmm8, 80(%rsp)
	.seh_savexmm	%xmm8, 80
	movaps	%xmm9, 96(%rsp)
	.seh_savexmm	%xmm9, 96
	.seh_endprologue
	movq	%r8, %rax
	movq	%rcx, %rbx
	shrq	$32, %rax
	movl	%eax, 44(%rsp)
	movq	%rdx, %rax
	movss	44(%rsp), %xmm7
	shrq	$32, %rax
	movl	%r8d, 44(%rsp)
	movss	44(%rsp), %xmm6
	movl	%eax, 44(%rsp)
	movss	44(%rsp), %xmm9
	testb	%r9b, %r9b
	movl	%edx, 44(%rsp)
	movslq	80(%rcx), %rdx
	movss	44(%rsp), %xmm8
	je	.L1322
	testl	%edx, %edx
	jne	.L1349
.L1322:
	movaps	%xmm6, %xmm0
	cmpl	84(%rbx), %edx
	cmpnless	%xmm8, %xmm0
	andps	%xmm0, %xmm6
	andnps	%xmm8, %xmm0
	orps	%xmm0, %xmm6
	movaps	%xmm7, %xmm0
	cmpnless	%xmm9, %xmm0
	andps	%xmm0, %xmm7
	andnps	%xmm9, %xmm0
	orps	%xmm0, %xmm7
	je	.L1330
	movq	88(%rbx), %rax
	leal	1(%rdx), %r8d
.L1331:
	salq	$4, %rdx
	movl	%r8d, 80(%rbx)
	movq	%rbx, %rcx
	addq	%rax, %rdx
	movss	%xmm8, (%rdx)
	movss	%xmm9, 4(%rdx)
	movss	%xmm6, 8(%rdx)
	movss	%xmm7, 12(%rdx)
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	movaps	96(%rsp), %xmm9
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN10ImDrawList14UpdateClipRectEv
	.p2align 4,,7
.L1349:
	movq	88(%rcx), %rcx
	movslq	%edx, %rax
	salq	$4, %rax
	leaq	-16(%rcx,%rax), %rax
	movss	(%rax), %xmm3
	movss	4(%rax), %xmm2
	maxss	%xmm8, %xmm3
	movss	8(%rax), %xmm1
	maxss	%xmm9, %xmm2
	movss	12(%rax), %xmm0
	minss	%xmm6, %xmm1
	minss	%xmm7, %xmm0
	movaps	%xmm3, %xmm8
	movaps	%xmm2, %xmm9
	movaps	%xmm1, %xmm6
	movaps	%xmm0, %xmm7
	jmp	.L1322
	.p2align 4,,7
.L1330:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L1350
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L1333
.L1351:
	movq	88(%rbx), %rax
	jmp	.L1331
	.p2align 4,,7
.L1350:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jle	.L1351
.L1333:
	movslq	%eax, %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	88(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L1334
	movslq	80(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	88(%rbx), %rcx
.L1334:
	call	_ZN5ImGui7MemFreeEPv
	movslq	80(%rbx), %rdx
	movq	%rdi, 88(%rbx)
	movq	%rdi, %rax
	movl	%esi, 84(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L1331
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList22PushClipRectFullScreenEv
	.def	_ZN10ImDrawList22PushClipRectFullScreenEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList22PushClipRectFullScreenEv
_ZN10ImDrawList22PushClipRectFullScreenEv:
.LFB413:
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
	movq	%rcx, %rbx
	movss	8+_ZL13GNullClipRect(%rip), %xmm7
	movslq	80(%rcx), %rdx
	movaps	%xmm7, %xmm0
	movss	_ZL13GNullClipRect(%rip), %xmm9
	movss	12+_ZL13GNullClipRect(%rip), %xmm6
	cmpl	84(%rcx), %edx
	cmpnless	%xmm9, %xmm0
	movss	4+_ZL13GNullClipRect(%rip), %xmm8
	andps	%xmm0, %xmm7
	andnps	%xmm9, %xmm0
	orps	%xmm0, %xmm7
	movaps	%xmm6, %xmm0
	cmpnless	%xmm8, %xmm0
	andps	%xmm0, %xmm6
	andnps	%xmm8, %xmm0
	orps	%xmm0, %xmm6
	je	.L1357
	movq	88(%rcx), %rax
	leal	1(%rdx), %r8d
.L1358:
	salq	$4, %rdx
	movl	%r8d, 80(%rbx)
	movq	%rbx, %rcx
	addq	%rax, %rdx
	movss	%xmm9, (%rdx)
	movss	%xmm8, 4(%rdx)
	movss	%xmm7, 8(%rdx)
	movss	%xmm6, 12(%rdx)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN10ImDrawList14UpdateClipRectEv
	.p2align 4,,7
.L1357:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L1369
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L1360
.L1370:
	movq	88(%rbx), %rax
	jmp	.L1358
	.p2align 4,,7
.L1369:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jle	.L1370
.L1360:
	movslq	%eax, %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	88(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L1361
	movslq	80(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	88(%rbx), %rcx
.L1361:
	call	_ZN5ImGui7MemFreeEPv
	movslq	80(%rbx), %rdx
	movq	%rdi, 88(%rbx)
	movq	%rdi, %rax
	movl	%esi, 84(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L1358
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
.LFB414:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	80(%rcx), %eax
	movq	%rcx, %rbx
	testl	%eax, %eax
	jle	.L1373
.L1372:
	decl	%eax
	movq	%rbx, %rcx
	movl	%eax, 80(%rbx)
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN10ImDrawList14UpdateClipRectEv
	.p2align 4,,7
.L1373:
	leaq	.LC5(%rip), %rdx
	leaq	.LC39(%rip), %rcx
	movl	$259, %r8d
	call	_assert
	movl	80(%rbx), %eax
	testl	%eax, %eax
	jg	.L1372
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	80(%rbx), %eax
	jmp	.L1372
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList13PushTextureIDERKPv
	.def	_ZN10ImDrawList13PushTextureIDERKPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList13PushTextureIDERKPv
_ZN10ImDrawList13PushTextureIDERKPv:
.LFB415:
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
	movq	%rdx, %rbp
	movslq	96(%rcx), %rdx
	movq	%rcx, %rbx
	cmpl	100(%rcx), %edx
	je	.L1375
	movq	104(%rcx), %rax
	leal	1(%rdx), %r8d
.L1376:
	movq	0(%rbp), %rcx
	movl	%r8d, 96(%rbx)
	movq	%rcx, (%rax,%rdx,8)
	movq	%rbx, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN10ImDrawList15UpdateTextureIDEv
	.p2align 4,,7
.L1375:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L1385
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L1378
.L1386:
	movq	104(%rbx), %rax
	jmp	.L1376
	.p2align 4,,7
.L1385:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jle	.L1386
.L1378:
	movslq	%eax, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	104(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L1379
	movslq	96(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	104(%rbx), %rcx
.L1379:
	call	_ZN5ImGui7MemFreeEPv
	movslq	96(%rbx), %rdx
	movq	%rdi, 104(%rbx)
	movq	%rdi, %rax
	movl	%esi, 100(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L1376
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
.LFB416:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	96(%rcx), %eax
	movq	%rcx, %rbx
	testl	%eax, %eax
	jle	.L1389
.L1388:
	decl	%eax
	movq	%rbx, %rcx
	movl	%eax, 96(%rbx)
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN10ImDrawList15UpdateTextureIDEv
	.p2align 4,,7
.L1389:
	leaq	.LC5(%rip), %rdx
	leaq	.LC40(%rip), %rcx
	movl	$272, %r8d
	call	_assert
	movl	96(%rbx), %eax
	testl	%eax, %eax
	jg	.L1388
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	96(%rbx), %eax
	jmp	.L1388
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
.LFB417:
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
	movq	%rcx, %rbx
	movl	%edx, %edi
	cmpq	%rax, 128(%rcx)
	je	.L1391
	leaq	.LC5(%rip), %rdx
	leaq	.LC41(%rip), %rcx
	movl	$279, %r8d
	call	_assert
.L1391:
	movl	136(%rbx), %ebp
	cmpl	%edi, %ebp
	movl	%ebp, %eax
	jl	.L1443
	testl	%eax, %eax
	movl	%edi, 132(%rbx)
	jle	.L1444
.L1397:
	movq	144(%rbx), %rax
	cmpl	$1, %edi
	movl	$32, %r12d
	movl	$1, %esi
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	jg	.L1440
	jmp	.L1390
	.p2align 4,,7
.L1448:
	cmpl	136(%rbx), %esi
	jge	.L1445
.L1400:
	movq	%r12, %rax
	addq	144(%rbx), %rax
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	movl	$0, 16(%rax)
	movl	$0, 20(%rax)
	cmpl	136(%rbx), %esi
	movq	$0, 8(%rax)
	movq	$0, 24(%rax)
	jge	.L1446
.L1406:
	movq	144(%rbx), %rax
	movl	(%rax,%r12), %ecx
	testl	%ecx, %ecx
	je	.L1447
.L1407:
	incl	%esi
	addq	$32, %r12
	cmpl	%esi, %edi
	je	.L1390
.L1440:
	cmpl	%esi, %ebp
	jle	.L1448
	cmpl	136(%rbx), %esi
	jge	.L1449
.L1402:
	movq	%r12, %r13
	addq	144(%rbx), %r13
	movl	4(%r13), %edx
	testl	%edx, %edx
	js	.L1450
	movl	$0, 0(%r13)
	cmpl	136(%rbx), %esi
	jge	.L1451
.L1404:
	movq	%r12, %r13
	addq	144(%rbx), %r13
	movl	20(%r13), %eax
	testl	%eax, %eax
	js	.L1452
.L1421:
	movl	$0, 16(%r13)
	cmpl	136(%rbx), %esi
	jl	.L1406
.L1446:
	leaq	.LC36(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	call	_assert
	movq	144(%rbx), %rax
	movl	(%rax,%r12), %ecx
	testl	%ecx, %ecx
	jne	.L1407
.L1447:
	movslq	80(%rbx), %rax
	testl	%eax, %eax
	jle	.L1453
.L1408:
	movq	88(%rbx), %rdx
	salq	$4, %rax
	leaq	-16(%rdx,%rax), %rax
	movss	(%rax), %xmm9
	movss	4(%rax), %xmm8
	movss	8(%rax), %xmm7
	movss	12(%rax), %xmm6
	movslq	96(%rbx), %rax
	testl	%eax, %eax
	jle	.L1454
.L1409:
	cmpl	136(%rbx), %esi
	movq	104(%rbx), %rdx
	movq	-8(%rdx,%rax,8), %r13
	jge	.L1455
.L1410:
	movq	%r12, %r15
	addq	144(%rbx), %r15
	movslq	(%r15), %rdx
	cmpl	4(%r15), %edx
	je	.L1411
	movq	8(%r15), %rax
	leal	1(%rdx), %ecx
.L1412:
	movl	%ecx, (%r15)
	movq	%rdx, %rcx
	salq	$6, %rdx
	salq	$4, %rcx
	incl	%esi
	addq	$32, %r12
	subq	%rcx, %rdx
	addq	%rdx, %rax
	cmpl	%esi, %edi
	movl	$0, (%rax)
	movss	%xmm9, 4(%rax)
	movq	%r13, 24(%rax)
	movss	%xmm8, 8(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movss	%xmm7, 12(%rax)
	movss	%xmm6, 16(%rax)
	jne	.L1440
.L1390:
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
	.p2align 4,,7
.L1450:
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%r13), %rcx
	movq	%rax, %r14
	testq	%rcx, %rcx
	je	.L1403
	movslq	0(%r13), %r8
	movq	%rcx, %rdx
	movq	%r14, %rcx
	movq	%r8, %rax
	salq	$6, %r8
	salq	$4, %rax
	subq	%rax, %r8
	call	memcpy
	movq	8(%r13), %rcx
.L1403:
	call	_ZN5ImGui7MemFreeEPv
	movl	$0, 4(%r13)
	movl	$0, 0(%r13)
	cmpl	136(%rbx), %esi
	movq	%r14, 8(%r13)
	jl	.L1404
.L1451:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L1404
	.p2align 4,,7
.L1452:
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%r13), %rcx
	movq	%rax, %r14
	testq	%rcx, %rcx
	je	.L1405
	movslq	16(%r13), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%r13), %rcx
.L1405:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r14, 24(%r13)
	movl	$0, 20(%r13)
	jmp	.L1421
	.p2align 4,,7
.L1445:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L1400
	.p2align 4,,7
.L1449:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L1402
	.p2align 4,,7
.L1411:
	testl	%edx, %edx
	leal	1(%rdx), %ecx
	movl	$8, %eax
	je	.L1413
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L1413:
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	cmpl	%eax, %edx
	movl	%eax, %r14d
	jl	.L1414
	movq	8(%r15), %rax
	jmp	.L1412
	.p2align 4,,7
.L1455:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L1410
	.p2align 4,,7
.L1414:
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$6, %rcx
	salq	$4, %rax
	subq	%rax, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%r15), %rcx
	movq	%rax, %r9
	movq	%rax, 40(%rsp)
	testq	%rcx, %rcx
	je	.L1415
	movslq	(%r15), %r8
	movq	%rcx, %rdx
	movq	%r9, %rcx
	movq	%r8, %rax
	salq	$6, %r8
	salq	$4, %rax
	subq	%rax, %r8
	call	memcpy
	movq	8(%r15), %rcx
.L1415:
	call	_ZN5ImGui7MemFreeEPv
	movslq	(%r15), %rdx
	movq	40(%rsp), %rax
	movl	%r14d, 4(%r15)
	movq	%rax, 8(%r15)
	leal	1(%rdx), %ecx
	jmp	.L1412
	.p2align 4,,7
.L1443:
	movl	140(%rbx), %eax
	cmpl	%eax, %edi
	jle	.L1393
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1394
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1394:
	cmpl	%edx, %edi
	jge	.L1424
	cmpl	%edx, %eax
	jl	.L1456
.L1393:
	movl	%edi, %eax
	movl	%edi, 136(%rbx)
	movl	%edi, 132(%rbx)
	testl	%eax, %eax
	jg	.L1397
.L1444:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L1397
	.p2align 4,,7
.L1454:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	96(%rbx), %rax
	jmp	.L1409
	.p2align 4,,7
.L1453:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	80(%rbx), %rax
	jmp	.L1408
.L1424:
	movl	%edi, %esi
.L1395:
	movslq	%esi, %rcx
	salq	$5, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	144(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L1396
	movslq	136(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$5, %r8
	call	memcpy
	movq	144(%rbx), %rcx
.L1396:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r12, 144(%rbx)
	movl	%esi, 140(%rbx)
	jmp	.L1393
.L1456:
	movl	%edx, %esi
	jmp	.L1395
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList13ChannelsMergeEv
	.def	_ZN10ImDrawList13ChannelsMergeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList13ChannelsMergeEv
_ZN10ImDrawList13ChannelsMergeEv:
.LFB421:
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
	jle	.L1457
	movslq	128(%rcx), %rax
	testl	%eax, %eax
	je	.L1459
	salq	$5, %rax
	addq	144(%rcx), %rax
	movq	(%rcx), %r9
	movq	8(%rcx), %r10
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
	movq	%rcx, 24(%rbx)
	leaq	(%rcx,%rax,2), %rax
	movq	%rax, 72(%rbx)
.L1459:
	movl	(%rbx), %eax
	cmpl	$0, %eax
	jne	.L1528
.L1484:
	cmpl	$1, 132(%rbx)
	jle	.L1490
	movl	$32, %r12d
	movl	$1, %esi
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	jmp	.L1468
	.p2align 4,,7
.L1464:
	movq	%r12, %rdi
	addq	144(%rbx), %rdi
	movl	(%rdi), %eax
	cmpl	$0, %eax
	jne	.L1529
.L1487:
	addl	%eax, %ebp
	addl	16(%rdi), %r13d
	incl	%esi
	addq	$32, %r12
	cmpl	%esi, 132(%rbx)
	jle	.L1530
.L1468:
	cmpl	%esi, 136(%rbx)
	jg	.L1464
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L1464
	.p2align 4,,7
.L1529:
	jle	.L1531
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$6, %rdx
	salq	$4, %rcx
	subq	%rcx, %rdx
	addq	8(%rdi), %rdx
	movl	-48(%rdx), %edx
	testl	%edx, %edx
	jne	.L1487
.L1488:
	decl	%eax
	movl	%eax, (%rdi)
	jmp	.L1487
	.p2align 4,,7
.L1482:
	movq	%rbx, %rcx
	call	_ZN10ImDrawList10AddDrawCmdEv
	movl	$1, 132(%rbx)
.L1457:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L1530:
	movslq	%ebp, %rsi
.L1463:
	addl	(%rbx), %ebp
	movl	4(%rbx), %eax
	cmpl	%eax, %ebp
	jle	.L1469
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1470
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1470:
	cmpl	%edx, %ebp
	jl	.L1532
	movl	%ebp, %edi
.L1471:
	movslq	%edi, %rcx
	movq	%rcx, %rax
	salq	$6, %rcx
	salq	$4, %rax
	subq	%rax, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L1472
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	movq	%r8, %rax
	salq	$6, %r8
	salq	$4, %rax
	subq	%rax, %r8
	call	memcpy
	movq	8(%rbx), %rcx
.L1472:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r12, 8(%rbx)
	movl	%edi, 4(%rbx)
.L1469:
	movslq	16(%rbx), %rdi
	movl	20(%rbx), %eax
	movl	%ebp, (%rbx)
	addl	%edi, %r13d
	cmpl	%r13d, %eax
	jge	.L1523
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1475
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1475:
	cmpl	%edx, %r13d
	jl	.L1533
	movl	%r13d, %ebp
.L1476:
	movslq	%ebp, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L1477
	movslq	16(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%rbx), %rcx
.L1477:
	call	_ZN5ImGui7MemFreeEPv
	movl	%ebp, 20(%rbx)
	movq	%r12, 24(%rbx)
	movq	%r12, %rax
	movl	(%rbx), %ebp
	jmp	.L1474
	.p2align 4,,7
.L1533:
	cmpl	%edx, %eax
	jl	.L1495
.L1523:
	movq	24(%rbx), %rax
.L1474:
	movslq	%ebp, %rbp
	leaq	(%rax,%rdi,2), %rax
	movl	%r13d, 16(%rbx)
	subq	%rsi, %rbp
	movl	$32, %r13d
	movq	%rbp, %rdx
	salq	$6, %rbp
	movq	%rax, 72(%rbx)
	salq	$4, %rdx
	subq	%rdx, %rbp
	movq	%rbp, %rsi
	addq	8(%rbx), %rsi
	cmpl	$1, 132(%rbx)
	movl	$1, %ebp
	jg	.L1520
	jmp	.L1482
	.p2align 4,,7
.L1479:
	movq	%r13, %r12
	addq	144(%rbx), %r12
	movl	(%r12), %r8d
	testl	%r8d, %r8d
	jne	.L1534
.L1480:
	movslq	16(%r12), %r8
	testl	%r8d, %r8d
	jne	.L1535
.L1481:
	incl	%ebp
	addq	$32, %r13
	cmpl	%ebp, 132(%rbx)
	jle	.L1482
.L1520:
	cmpl	%ebp, 136(%rbx)
	jg	.L1479
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L1479
	.p2align 4,,7
.L1535:
	leaq	(%r8,%r8), %rdi
	movq	72(%rbx), %rcx
	movq	24(%r12), %rdx
	movq	%rdi, %r8
	call	memcpy
	addq	%rdi, 72(%rbx)
	jmp	.L1481
	.p2align 4,,7
.L1534:
	movslq	%r8d, %rdi
	movq	8(%r12), %rdx
	movq	%rsi, %rcx
	movq	%rdi, %rax
	salq	$6, %rdi
	salq	$4, %rax
	subq	%rax, %rdi
	movq	%rdi, %r8
	addq	%rdi, %rsi
	call	memcpy
	jmp	.L1480
	.p2align 4,,7
.L1532:
	cmpl	%edx, %eax
	jge	.L1469
	movl	%edx, %edi
	.p2align 4,,7
	jmp	.L1471
	.p2align 4,,7
.L1528:
	.p2align 4,,7
	jle	.L1536
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$6, %rdx
	salq	$4, %rcx
	subq	%rcx, %rdx
	addq	8(%rbx), %rdx
	movl	-48(%rdx), %ecx
	testl	%ecx, %ecx
	jne	.L1484
.L1485:
	decl	%eax
	movl	%eax, (%rbx)
	jmp	.L1484
	.p2align 4,,7
.L1531:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	(%rdi), %rdx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	salq	$6, %rdx
	salq	$4, %rcx
	subq	%rcx, %rdx
	addq	8(%rdi), %rdx
	movl	-48(%rdx), %r8d
	testl	%r8d, %r8d
	jne	.L1487
	testl	%eax, %eax
	jg	.L1488
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	(%rdi), %eax
	jmp	.L1488
.L1490:
	xorl	%esi, %esi
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	jmp	.L1463
.L1536:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	(%rbx), %rdx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	salq	$6, %rdx
	salq	$4, %rcx
	subq	%rcx, %rdx
	addq	8(%rbx), %rdx
	movl	-48(%rdx), %r9d
	testl	%r9d, %r9d
	jne	.L1484
	testl	%eax, %eax
	jg	.L1485
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	(%rbx), %eax
	jmp	.L1485
.L1495:
	movl	%edx, %ebp
	jmp	.L1476
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
.LFB422:
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
	jle	.L1540
.L1538:
	movslq	128(%rbx), %rax
	cmpl	%eax, %esi
	je	.L1537
	salq	$5, %rax
	addq	144(%rbx), %rax
	movq	(%rbx), %r9
	movq	8(%rbx), %r10
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
	movq	%rcx, 24(%rbx)
	leaq	(%rcx,%rax,2), %rax
	movq	%rax, 72(%rbx)
.L1537:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L1540:
	leaq	.LC5(%rip), %rdx
	leaq	.LC42(%rip), %rcx
	movl	$346, %r8d
	call	_assert
	jmp	.L1538
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList11PrimReserveEii
	.def	_ZN10ImDrawList11PrimReserveEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList11PrimReserveEii
_ZN10ImDrawList11PrimReserveEii:
.LFB423:
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
	movl	%edx, %esi
	movq	%rcx, %rbx
	movq	%rax, %rdx
	salq	$6, %rax
	leal	(%rdi,%r8), %r12d
	salq	$4, %rdx
	subq	%rdx, %rax
	movq	8(%rcx), %rdx
	addl	%esi, -48(%rdx,%rax)
	movl	36(%rcx), %eax
	cmpl	%eax, %r12d
	jle	.L1546
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1544
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1544:
	cmpl	%edx, %r12d
	jl	.L1566
	movl	%r12d, %ebp
.L1545:
	movslq	%ebp, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	40(%rbx), %rcx
	movq	%rax, %r13
	testq	%rcx, %rcx
	je	.L1547
	movslq	32(%rbx), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %r8
	movq	%rcx, %rdx
	movq	%r13, %rcx
	call	memcpy
	movq	40(%rbx), %rcx
.L1547:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r13, 40(%rbx)
	movl	%ebp, 36(%rbx)
	movq	%r13, %rax
	jmp	.L1543
	.p2align 4,,7
.L1566:
	cmpl	%edx, %eax
	jl	.L1567
.L1546:
	movq	40(%rbx), %rax
.L1543:
	movq	%rdi, %rdx
	movl	%r12d, 32(%rbx)
	salq	$4, %rdx
	leaq	(%rdx,%rdi,4), %rdx
	movslq	16(%rbx), %rdi
	addq	%rdx, %rax
	movq	%rax, 64(%rbx)
	movl	20(%rbx), %eax
	addl	%edi, %esi
	cmpl	%eax, %esi
	jle	.L1552
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1550
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1550:
	cmpl	%edx, %esi
	jl	.L1568
	movl	%esi, %ebp
.L1551:
	movslq	%ebp, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L1553
	movslq	16(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%rbx), %rcx
.L1553:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r12, 24(%rbx)
	movl	%ebp, 20(%rbx)
	movq	%r12, %rax
	jmp	.L1549
	.p2align 4,,7
.L1568:
	cmpl	%edx, %eax
	jl	.L1569
.L1552:
	movq	24(%rbx), %rax
.L1549:
	leaq	(%rax,%rdi,2), %rax
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
.L1569:
	movl	%edx, %ebp
	jmp	.L1551
.L1567:
	movl	%edx, %ebp
	jmp	.L1545
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList8PrimRectERK6ImVec2S2_j
	.def	_ZN10ImDrawList8PrimRectERK6ImVec2S2_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList8PrimRectERK6ImVec2S2_j
_ZN10ImDrawList8PrimRectERK6ImVec2S2_j:
.LFB424:
	.seh_endprologue
	movq	.refptr.GImGui(%rip), %rax
	movl	56(%rcx), %r11d
	movq	72(%rcx), %r10
	movss	4(%rdx), %xmm4
	movss	4(%r8), %xmm2
	movq	(%rax), %rax
	movss	(%rdx), %xmm3
	movss	(%r8), %xmm5
	movq	(%rdx), %rdx
	addq	$12, %r10
	movss	5952(%rax), %xmm1
	movss	5956(%rax), %xmm0
	leal	1(%r11), %eax
	movw	%r11w, -12(%r10)
	movw	%r11w, -6(%r10)
	movw	%ax, -10(%r10)
	leal	2(%r11), %eax
	movw	%ax, -8(%r10)
	movw	%ax, -4(%r10)
	leal	3(%r11), %eax
	addl	$4, %r11d
	movw	%ax, -2(%r10)
	movq	64(%rcx), %rax
	movq	%rdx, (%rax)
	movss	%xmm1, 8(%rax)
	movl	%r9d, 16(%rax)
	movss	%xmm0, 12(%rax)
	movl	%r9d, 36(%rax)
	addq	$80, %rax
	movss	%xmm5, -60(%rax)
	movss	%xmm4, -56(%rax)
	movss	%xmm1, -52(%rax)
	movss	%xmm0, -48(%rax)
	movq	(%r8), %rdx
	movss	%xmm1, -32(%rax)
	movl	%r9d, -24(%rax)
	movss	%xmm0, -28(%rax)
	movq	%rdx, -40(%rax)
	movss	%xmm3, -20(%rax)
	movss	%xmm2, -16(%rax)
	movl	%r9d, -4(%rax)
	movss	%xmm1, -12(%rax)
	movss	%xmm0, -8(%rax)
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
.LFB425:
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
	movss	4(%rdx), %xmm6
	movq	(%rdx), %rdx
	leal	1(%r11), %eax
	movss	(%r8), %xmm7
	movss	4(%r8), %xmm2
	movl	104(%rsp), %ebx
	movss	4(%rsi), %xmm0
	addq	$12, %r10
	movss	(%r9), %xmm1
	movss	4(%r9), %xmm4
	movss	(%rsi), %xmm5
	movw	%ax, -10(%r10)
	leal	2(%r11), %eax
	movw	%r11w, -12(%r10)
	movw	%r11w, -6(%r10)
	movw	%ax, -8(%r10)
	movw	%ax, -4(%r10)
	leal	3(%r11), %eax
	addl	$4, %r11d
	movw	%ax, -2(%r10)
	movq	64(%rcx), %rax
	movq	%rdx, (%rax)
	movq	(%r9), %rdx
	movss	%xmm7, 20(%rax)
	movss	%xmm6, 24(%rax)
	movl	%ebx, 16(%rax)
	movl	%ebx, 36(%rax)
	movss	%xmm5, 28(%rax)
	addq	$80, %rax
	movq	%rdx, -72(%rax)
	movss	%xmm4, -48(%rax)
	movq	(%r8), %rdx
	movq	%rdx, -40(%rax)
	movq	(%rsi), %rdx
	movq	%rdx, -32(%rax)
	movss	%xmm3, -20(%rax)
	movl	%ebx, -24(%rax)
	movss	%xmm2, -16(%rax)
	movl	%ebx, -4(%rax)
	movss	%xmm1, -12(%rax)
	movss	%xmm0, -8(%rax)
	movq	%rax, 64(%rcx)
	movl	%r11d, 56(%rcx)
	movq	%r10, 72(%rcx)
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
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
.LFB426:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movl	56(%rcx), %r11d
	movq	72(%rcx), %r10
	movq	(%rdx), %rdx
	movl	88(%rsp), %ebx
	leal	1(%r11), %eax
	movw	%r11w, (%r10)
	movw	%r11w, 6(%r10)
	addq	$12, %r10
	movw	%ax, -10(%r10)
	leal	2(%r11), %eax
	movw	%ax, -8(%r10)
	movw	%ax, -4(%r10)
	leal	3(%r11), %eax
	addl	$4, %r11d
	movw	%ax, -2(%r10)
	movq	64(%rcx), %rax
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
.LFB427:
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
	subq	$248, %rsp
	.seh_stackalloc	248
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	movaps	%xmm6, -32(%rbp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, -16(%rbp)
	.seh_savexmm	%xmm7, 112
	movaps	%xmm8, 0(%rbp)
	.seh_savexmm	%xmm8, 128
	movaps	%xmm9, 16(%rbp)
	.seh_savexmm	%xmm9, 144
	movaps	%xmm10, 32(%rbp)
	.seh_savexmm	%xmm10, 160
	movaps	%xmm11, 48(%rbp)
	.seh_savexmm	%xmm11, 176
	movaps	%xmm12, 64(%rbp)
	.seh_savexmm	%xmm12, 192
	movaps	%xmm13, 80(%rbp)
	.seh_savexmm	%xmm13, 208
	movaps	%xmm14, 96(%rbp)
	.seh_savexmm	%xmm14, 224
	.seh_endprologue
	cmpl	$1, %r8d
	movq	%rcx, %rsi
	movq	%rdx, 200(%rbp)
	movl	%r8d, 208(%rbp)
	movl	%r9d, 216(%rbp)
	movl	224(%rbp), %r12d
	movss	232(%rbp), %xmm11
	movl	240(%rbp), %eax
	jle	.L1573
	movq	.refptr.GImGui(%rip), %rdx
	movl	%r8d, %edi
	movq	(%rdx), %rdx
	andb	5240(%rdx), %al
	cmpb	$1, %r12b
	sbbl	$0, %edi
	movss	5952(%rdx), %xmm9
	movss	5956(%rdx), %xmm8
	movl	%edi, -40(%rbp)
	testb	%al, %al
	je	.L1577
	movl	%r9d, %eax
	movss	.LC24(%rip), %xmm10
	andl	$16777215, %eax
	ucomiss	%xmm10, %xmm11
	movl	%eax, -56(%rbp)
	jbe	.L1639
	movl	%edi, %eax
	sall	$4, %eax
	leal	(%rax,%rdi,2), %edx
.L1580:
	movl	208(%rbp), %eax
	movq	%rsi, %rcx
	sall	$2, %eax
	movl	%eax, %r8d
	movl	%eax, %ebx
	movl	%eax, -52(%rbp)
	call	_ZN10ImDrawList11PrimReserveEii
	movl	208(%rbp), %eax
	addl	%ebx, %eax
.L1583:
	cltq
	leaq	30(,%rax,8), %rax
	andq	$-16, %rax
	call	___chkstk_ms
	movslq	208(%rbp), %rcx
	movq	200(%rbp), %rdi
	movss	.LC29(%rip), %xmm13
	subq	%rax, %rsp
	xorps	%xmm12, %xmm12
	leaq	32(%rsp), %rax
	movaps	%xmm10, %xmm14
	leaq	4(%rdi), %r15
	xorl	%edx, %edx
	movl	$1, %edi
	salq	$3, %rcx
	movq	%rax, %r14
	movq	%rax, -48(%rbp)
	leaq	(%rax,%rcx), %rbx
	movq	%rax, %r13
	movl	-40(%rbp), %r8d
	movl	$1, %eax
	movq	200(%rbp), %r9
	movl	208(%rbp), %r10d
	jmp	.L1585
	.p2align 4,,7
.L1591:
	incl	%edi
	movl	%edx, %eax
	cmpl	%edi, %r10d
	cmovne	%edi, %eax
	addq	$8, %r15
	addq	$8, %r14
.L1585:
	cltq
	leaq	(%r9,%rax,8), %rax
	movss	4(%rax), %xmm7
	movss	(%rax), %xmm6
	subss	(%r15), %xmm7
	subss	-4(%r15), %xmm6
	movaps	%xmm7, %xmm0
	movaps	%xmm6, %xmm1
	mulss	%xmm7, %xmm0
	mulss	%xmm6, %xmm1
	addss	%xmm0, %xmm1
	movaps	%xmm14, %xmm0
	ucomiss	%xmm12, %xmm1
	jbe	.L1587
	sqrtss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm0
	jp	.L1645
.L1589:
	movaps	%xmm10, %xmm5
	divss	%xmm0, %xmm5
	movaps	%xmm5, %xmm0
.L1587:
	mulss	%xmm0, %xmm6
	cmpl	%edi, %r8d
	mulss	%xmm0, %xmm7
	xorps	%xmm13, %xmm6
	movss	%xmm7, (%r14)
	movss	%xmm6, 4(%r14)
	jne	.L1591
	testb	%r12b, %r12b
	jne	.L1592
	movq	-48(%rbp), %rdi
	leaq	-8(%rcx), %rdx
	movq	%rdi, %rax
	movq	-16(%rdi,%rcx), %rcx
	addq	%rdx, %rax
	ucomiss	%xmm10, %xmm11
	movq	%rcx, (%rax)
	jbe	.L1646
	subss	%xmm10, %xmm11
	movss	.LC1(%rip), %xmm7
	movq	200(%rbp), %rdi
	movq	200(%rbp), %rcx
	addq	200(%rbp), %rdx
	mulss	%xmm7, %xmm11
	movss	4(%rdi), %xmm0
	movq	-48(%rbp), %rdi
	movss	(%rcx), %xmm1
	movaps	%xmm0, %xmm5
	movaps	%xmm11, %xmm4
	movss	4(%rdi), %xmm2
	addss	%xmm10, %xmm4
	movss	(%rdi), %xmm3
	mulss	%xmm4, %xmm2
	mulss	%xmm4, %xmm3
	addss	%xmm0, %xmm2
	addss	%xmm1, %xmm3
	movss	%xmm2, 4(%rbx)
	movss	%xmm3, (%rbx)
	movss	4(%rdi), %xmm2
	movss	(%rdi), %xmm3
	mulss	%xmm11, %xmm2
	mulss	%xmm11, %xmm3
	addss	%xmm0, %xmm2
	addss	%xmm1, %xmm3
	movss	%xmm2, 12(%rbx)
	movss	%xmm3, 8(%rbx)
	movss	4(%rdi), %xmm2
	mulss	%xmm11, %xmm2
	movss	(%rdi), %xmm3
	mulss	%xmm11, %xmm3
	subss	%xmm2, %xmm5
	movaps	%xmm5, %xmm2
	movaps	%xmm1, %xmm5
	movss	%xmm2, 20(%rbx)
	subss	%xmm3, %xmm5
	movss	%xmm5, 16(%rbx)
	movss	4(%rdi), %xmm2
	mulss	%xmm4, %xmm2
	subss	%xmm2, %xmm0
	movss	(%rdi), %xmm2
	mulss	%xmm4, %xmm2
	movl	208(%rbp), %edi
	movss	%xmm0, 28(%rbx)
	decl	%edi
	subss	%xmm2, %xmm1
	movss	4(%rdx), %xmm0
	leal	0(,%rdi,4), %ecx
	movl	%edi, -60(%rbp)
	movaps	%xmm0, %xmm5
	movslq	%ecx, %rcx
	movss	%xmm1, 24(%rbx)
	leaq	(%rbx,%rcx,8), %r8
	movss	(%rdx), %xmm1
	leaq	8(,%rcx,8), %rdx
	movss	4(%rax), %xmm2
	movss	(%rax), %xmm3
	mulss	%xmm4, %xmm2
	leaq	(%rbx,%rdx), %rcx
	mulss	%xmm4, %xmm3
	addss	%xmm0, %xmm2
	addss	%xmm1, %xmm3
	movss	%xmm2, 4(%r8)
	movss	%xmm3, (%r8)
	movss	4(%rax), %xmm2
	movss	(%rax), %xmm3
	mulss	%xmm11, %xmm2
	mulss	%xmm11, %xmm3
	addss	%xmm0, %xmm2
	addss	%xmm1, %xmm3
	movss	%xmm2, 4(%rcx)
	movss	%xmm3, (%rcx)
	leaq	8(%rbx,%rdx), %rcx
	leaq	16(%rbx,%rdx), %rdx
	movss	4(%rax), %xmm2
	mulss	%xmm11, %xmm2
	movss	(%rax), %xmm3
	mulss	%xmm11, %xmm3
	subss	%xmm2, %xmm5
	movaps	%xmm5, %xmm2
	movaps	%xmm1, %xmm5
	movss	%xmm2, 4(%rcx)
	subss	%xmm3, %xmm5
	movss	%xmm5, (%rcx)
	movss	4(%rax), %xmm2
	mulss	%xmm4, %xmm2
	subss	%xmm2, %xmm0
	movss	(%rax), %xmm2
	mulss	%xmm4, %xmm2
	movss	%xmm0, 4(%rdx)
	subss	%xmm2, %xmm1
	movss	%xmm1, (%rdx)
.L1619:
	movl	56(%rsi), %eax
	movss	.LC43(%rip), %xmm5
	xorl	%r9d, %r9d
	movl	$8, %r15d
	xorl	%r14d, %r14d
	movaps	%xmm5, %xmm6
	movq	%rsi, 192(%rbp)
	movl	%eax, %edx
	movl	%eax, -64(%rbp)
	movq	72(%rsi), %rax
	movq	%rax, -72(%rbp)
	jmp	.L1605
	.p2align 4,,7
.L1628:
	movl	%r8d, %edx
.L1605:
	incl	%r14d
	cmpl	%r14d, 208(%rbp)
	je	.L1647
	leaq	32(%r9), %r12
	leal	4(%rdx), %r8d
	leaq	40(%r9), %rsi
	leaq	48(%r9), %r11
	leaq	56(%r9), %r10
	movq	%r15, %rcx
	movq	%r12, %rdi
.L1616:
	movq	-48(%rbp), %r9
	movss	4(%r13), %xmm0
	movss	0(%r13), %xmm1
	addq	%rcx, %r9
	addss	4(%r9), %xmm0
	addss	(%r9), %xmm1
	mulss	%xmm7, %xmm0
	mulss	%xmm7, %xmm1
	movaps	%xmm0, %xmm2
	movaps	%xmm1, %xmm3
	mulss	%xmm0, %xmm2
	mulss	%xmm1, %xmm3
	addss	%xmm3, %xmm2
	ucomiss	.LC44(%rip), %xmm2
	jbe	.L1602
	movaps	%xmm10, %xmm3
	divss	%xmm2, %xmm3
	movaps	%xmm3, %xmm2
	movaps	%xmm6, %xmm3
	cmpnltss	%xmm2, %xmm3
	andps	%xmm3, %xmm2
	andnps	%xmm5, %xmm3
	orps	%xmm3, %xmm2
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
.L1602:
	addq	200(%rbp), %rcx
	movaps	%xmm1, %xmm13
	movaps	%xmm0, %xmm12
	addq	%rbx, %rdi
	mulss	%xmm4, %xmm13
	addq	%rbx, %rsi
	addq	%rbx, %r11
	mulss	%xmm4, %xmm12
	addq	%rbx, %r10
	leal	2(%r8), %r9d
	movss	(%rcx), %xmm3
	mulss	%xmm11, %xmm1
	movaps	%xmm3, %xmm14
	mulss	%xmm11, %xmm0
	movss	4(%rcx), %xmm2
	movw	%dx, 16(%rax)
	addss	%xmm13, %xmm14
	movw	%dx, 18(%rax)
	leal	1(%r8), %ecx
	movw	%r9w, 8(%rax)
	movw	%r9w, 24(%rax)
	addq	$8, %r15
	movw	%r9w, 34(%rax)
	movw	%cx, (%rax)
	addq	$8, %r13
	movw	%cx, 10(%rax)
	movw	%cx, 12(%rax)
	addq	$36, %rax
	movss	%xmm14, (%rdi)
	movaps	%xmm2, %xmm14
	movw	%r8w, -16(%rax)
	movw	%cx, -14(%rax)
	movq	%r12, %r9
	addss	%xmm12, %xmm14
	movss	%xmm14, 4(%rdi)
	movaps	%xmm3, %xmm14
	addss	%xmm1, %xmm14
	movss	%xmm14, (%rsi)
	movaps	%xmm2, %xmm14
	addss	%xmm0, %xmm14
	movss	%xmm14, 4(%rsi)
	movaps	%xmm3, %xmm14
	subss	%xmm13, %xmm3
	subss	%xmm1, %xmm14
	movaps	%xmm2, %xmm1
	subss	%xmm12, %xmm2
	subss	%xmm0, %xmm1
	movss	%xmm14, (%r11)
	movss	%xmm1, 4(%r11)
	leal	1(%rdx), %r11d
	movss	%xmm3, (%r10)
	movss	%xmm2, 4(%r10)
	leal	2(%rdx), %r10d
	addl	$3, %edx
	movw	%dx, -8(%rax)
	movw	%dx, -6(%rax)
	leal	3(%r8), %edx
	movw	%r11w, -34(%rax)
	movw	%r10w, -32(%rax)
	movw	%r10w, -30(%rax)
	movw	%r11w, -22(%rax)
	movw	%r10w, -10(%rax)
	movw	%dx, -4(%rax)
	cmpl	%r14d, -40(%rbp)
	jne	.L1628
	movl	-40(%rbp), %eax
	movl	-60(%rbp), %ecx
	movq	192(%rbp), %rsi
	movl	216(%rbp), %r8d
	decl	%eax
	incq	%rax
	incq	%rcx
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,4), %rax
	addq	-72(%rbp), %rax
	movq	%rcx, %rdx
	salq	$4, %rdx
	salq	$6, %rcx
	addq	%rdx, %rcx
	movl	-56(%rbp), %edx
	movq	%rax, 72(%rsi)
	movq	64(%rsi), %rax
	addq	%rax, %rcx
	.p2align 4,,7
.L1606:
	movq	(%rbx), %r9
	movss	%xmm9, 8(%rax)
	movl	%edx, 16(%rax)
	movss	%xmm8, 12(%rax)
	movl	%r8d, 36(%rax)
	movl	%r8d, 56(%rax)
	movss	%xmm9, 28(%rax)
	movl	%edx, 76(%rax)
	addq	$80, %rax
	movq	%r9, -80(%rax)
	movss	%xmm8, -48(%rax)
	addq	$32, %rbx
	movq	-24(%rbx), %r9
	movss	%xmm9, -32(%rax)
	movss	%xmm8, -28(%rax)
	movss	%xmm9, -12(%rax)
	movq	%r9, -60(%rax)
	movss	%xmm8, -8(%rax)
	movq	-16(%rbx), %r9
	movq	%r9, -40(%rax)
	movq	-8(%rbx), %r9
	movq	%r9, -20(%rax)
	cmpq	%rcx, %rax
	movq	%rax, 64(%rsi)
	jne	.L1606
	movl	-64(%rbp), %r12d
.L1599:
	movzwl	-52(%rbp), %eax
	addl	%eax, %r12d
	movl	%r12d, 56(%rsi)
.L1573:
	movaps	-32(%rbp), %xmm6
	movaps	-16(%rbp), %xmm7
	movaps	0(%rbp), %xmm8
	movaps	16(%rbp), %xmm9
	movaps	32(%rbp), %xmm10
	movaps	48(%rbp), %xmm11
	movaps	64(%rbp), %xmm12
	movaps	80(%rbp), %xmm13
	movaps	96(%rbp), %xmm14
	leaq	120(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.p2align 4,,7
.L1592:
	ucomiss	%xmm10, %xmm11
	jbe	.L1648
	subss	%xmm10, %xmm11
	movss	.LC1(%rip), %xmm7
	movl	208(%rbp), %eax
	mulss	%xmm7, %xmm11
	decl	%eax
	movl	%eax, -60(%rbp)
	movaps	%xmm11, %xmm4
	addss	%xmm10, %xmm4
	jmp	.L1619
	.p2align 4,,7
.L1577:
	movl	%edi, %edx
	movl	$6, %ecx
	leal	0(,%rdi,4), %r8d
	imull	%ecx, %edx
	movq	%rsi, %rcx
	movl	%edi, %r14d
	xorps	%xmm12, %xmm12
	movl	$1, %edi
	xorl	%r12d, %r12d
	call	_ZN10ImDrawList11PrimReserveEii
	movq	200(%rbp), %rax
	movss	.LC24(%rip), %xmm10
	movss	.LC1(%rip), %xmm7
	movq	200(%rbp), %r15
	movaps	%xmm10, %xmm13
	movl	208(%rbp), %ecx
	leaq	4(%rax), %rbx
	movl	216(%rbp), %r13d
	movl	$1, %eax
	jmp	.L1607
	.p2align 4,,7
.L1650:
	sqrtss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm0
	jp	.L1649
.L1611:
	movaps	%xmm10, %xmm1
	divss	%xmm0, %xmm1
.L1609:
	movaps	%xmm14, %xmm2
	movq	64(%rsi), %rax
	movaps	%xmm11, %xmm0
	movss	%xmm9, 8(%rax)
	movl	%r13d, 16(%rax)
	addq	$80, %rax
	movss	%xmm8, -68(%rax)
	mulss	%xmm1, %xmm2
	mulss	%xmm7, %xmm0
	mulss	%xmm1, %xmm6
	mulss	%xmm0, %xmm2
	mulss	%xmm6, %xmm0
	subss	%xmm2, %xmm3
	addss	%xmm0, %xmm4
	movss	%xmm3, -76(%rax)
	movss	%xmm4, -80(%rax)
	movss	(%rdx), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -60(%rax)
	movss	4(%rdx), %xmm1
	movl	%r13d, -44(%rax)
	subss	%xmm2, %xmm1
	movss	%xmm9, -52(%rax)
	movss	%xmm8, -48(%rax)
	movss	%xmm1, -56(%rax)
	movss	(%rdx), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -40(%rax)
	movss	4(%rdx), %xmm1
	movl	56(%rsi), %edx
	addss	%xmm2, %xmm1
	movss	%xmm9, -32(%rax)
	movl	%r13d, -24(%rax)
	movss	%xmm8, -28(%rax)
	leal	1(%rdx), %r8d
	movss	%xmm1, -36(%rax)
	movss	-4(%rbx), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -20(%rax)
	addss	(%rbx), %xmm2
	movss	%xmm9, -12(%rax)
	movss	%xmm8, -8(%rax)
	movl	%r13d, -4(%rax)
	movss	%xmm2, -16(%rax)
	movq	%rax, 64(%rsi)
	movq	72(%rsi), %rax
	movw	%r8w, 2(%rax)
	leal	2(%rdx), %r8d
	movw	%dx, (%rax)
	addq	$12, %rax
	movw	%r8w, -8(%rax)
	movw	%r8w, -4(%rax)
	leal	3(%rdx), %r8d
	movw	%dx, -6(%rax)
	addl	$4, %edx
	movw	%r8w, -2(%rax)
	cmpl	%edi, %r14d
	movq	%rax, 72(%rsi)
	movl	%edx, 56(%rsi)
	je	.L1573
	incl	%edi
	movl	%r12d, %eax
	cmpl	%edi, %ecx
	cmovne	%edi, %eax
	addq	$8, %rbx
.L1607:
	cltq
	movss	(%rbx), %xmm3
	leaq	(%r15,%rax,8), %rdx
	movss	-4(%rbx), %xmm4
	movss	4(%rdx), %xmm6
	movss	(%rdx), %xmm2
	subss	%xmm3, %xmm6
	subss	%xmm4, %xmm2
	movaps	%xmm6, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm2, %xmm14
	mulss	%xmm6, %xmm0
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	ucomiss	%xmm12, %xmm1
	ja	.L1650
	movaps	%xmm13, %xmm1
	jmp	.L1609
	.p2align 4,,7
.L1639:
	movl	-40(%rbp), %eax
	movl	$12, %r9d
	imull	%r9d, %eax
	ucomiss	%xmm10, %xmm11
	movl	%eax, %edx
	ja	.L1580
	leal	(%r8,%r8,2), %ebx
	movl	%eax, %edx
	movl	%ebx, %r8d
	movl	%ebx, -52(%rbp)
	call	_ZN10ImDrawList11PrimReserveEii
	ucomiss	%xmm10, %xmm11
	ja	.L1651
	movl	-52(%rbp), %eax
	jmp	.L1583
	.p2align 4,,7
.L1648:
	movl	208(%rbp), %eax
	decl	%eax
	movl	%eax, -60(%rbp)
.L1617:
	movq	72(%rsi), %r13
	movq	-48(%rbp), %rdi
	xorl	%r10d, %r10d
	movl	56(%rsi), %r12d
	movss	.LC43(%rip), %xmm4
	movq	%rsi, 192(%rbp)
	movss	.LC1(%rip), %xmm7
	movq	%r13, %rax
	movq	%r13, -48(%rbp)
	leaq	4(%rdi), %r11
	movl	%r12d, %r8d
	movaps	%xmm4, %xmm5
	movl	-40(%rbp), %esi
	movq	200(%rbp), %r13
	movq	%rdi, %r15
	movl	208(%rbp), %r14d
	jmp	.L1598
	.p2align 4,,7
.L1625:
	movl	%r9d, %r8d
.L1598:
	incl	%r10d
	cmpl	%r10d, %r14d
	je	.L1652
	leal	3(%r8), %r9d
	movl	%r10d, %edx
.L1615:
	movslq	%edx, %rcx
	movss	(%r11), %xmm0
	salq	$3, %rcx
	movss	-4(%r11), %xmm1
	leaq	(%r15,%rcx), %rdi
	addss	4(%rdi), %xmm0
	addss	(%rdi), %xmm1
	mulss	%xmm7, %xmm0
	mulss	%xmm7, %xmm1
	movaps	%xmm0, %xmm2
	movaps	%xmm1, %xmm3
	mulss	%xmm0, %xmm2
	mulss	%xmm1, %xmm3
	addss	%xmm3, %xmm2
	ucomiss	.LC44(%rip), %xmm2
	jbe	.L1595
	movaps	%xmm10, %xmm6
	movaps	%xmm5, %xmm3
	divss	%xmm2, %xmm6
	cmpnltss	%xmm6, %xmm3
	movaps	%xmm6, %xmm2
	andps	%xmm3, %xmm2
	andnps	%xmm4, %xmm3
	orps	%xmm3, %xmm2
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
.L1595:
	addq	%r13, %rcx
	movaps	%xmm1, %xmm6
	movss	(%rcx), %xmm3
	addl	%edx, %edx
	addss	%xmm3, %xmm6
	movslq	%edx, %rdx
	addq	$24, %rax
	leaq	(%rbx,%rdx,8), %rdi
	movss	4(%rcx), %xmm2
	subss	%xmm1, %xmm3
	leaq	8(%rbx,%rdx,8), %rdx
	leal	1(%r8), %ecx
	movw	%r9w, -24(%rax)
	movw	%r8w, -22(%rax)
	addq	$8, %r11
	movss	%xmm6, (%rdi)
	movaps	%xmm2, %xmm6
	subss	%xmm0, %xmm2
	movw	%r9w, -14(%rax)
	movw	%cx, -10(%rax)
	addss	%xmm0, %xmm6
	movw	%r8w, -8(%rax)
	movw	%r8w, -6(%rax)
	movw	%r9w, -4(%rax)
	movss	%xmm6, 4(%rdi)
	movss	%xmm3, (%rdx)
	movss	%xmm2, 4(%rdx)
	leal	2(%r8), %edx
	movw	%dx, -20(%rax)
	movw	%dx, -18(%rax)
	leal	2(%r9), %edx
	movw	%dx, -16(%rax)
	leal	1(%r9), %edx
	movw	%dx, -12(%rax)
	movw	%dx, -2(%rax)
	cmpl	%r10d, %esi
	jne	.L1625
	movl	-40(%rbp), %eax
	movq	192(%rbp), %rsi
	movq	-48(%rbp), %r13
	movl	-56(%rbp), %ecx
	movq	200(%rbp), %r10
	movl	216(%rbp), %r11d
	decl	%eax
	incq	%rax
	leaq	0(,%rax,8), %rdx
	salq	$5, %rax
	subq	%rdx, %rax
	movl	-60(%rbp), %edx
	addq	%rax, %r13
	movq	64(%rsi), %rax
	movq	%r13, 72(%rsi)
	leaq	8(,%rdx,8), %r8
	xorl	%edx, %edx
	.p2align 4,,7
.L1600:
	movq	(%r10,%rdx), %r9
	addq	$60, %rax
	movss	%xmm9, -52(%rax)
	movss	%xmm8, -48(%rax)
	movl	%r11d, -44(%rax)
	movl	%ecx, -24(%rax)
	movss	%xmm9, -32(%rax)
	movl	%ecx, -4(%rax)
	movq	%r9, -60(%rax)
	movss	%xmm8, -28(%rax)
	movq	(%rbx,%rdx,2), %r9
	movss	%xmm9, -12(%rax)
	movss	%xmm8, -8(%rax)
	movq	%r9, -40(%rax)
	movq	8(%rbx,%rdx,2), %r9
	addq	$8, %rdx
	movq	%r9, -20(%rax)
	cmpq	%r8, %rdx
	movq	%rax, 64(%rsi)
	jne	.L1600
	jmp	.L1599
	.p2align 4,,7
.L1646:
	movq	200(%rbp), %rdi
	movq	200(%rbp), %rcx
	addq	200(%rbp), %rdx
	movss	4(%rdi), %xmm0
	movq	-48(%rbp), %rdi
	movss	(%rcx), %xmm1
	movss	4(%rdi), %xmm2
	movss	(%rdi), %xmm3
	addss	%xmm0, %xmm2
	addss	%xmm1, %xmm3
	movss	%xmm2, 4(%rbx)
	movss	%xmm3, (%rbx)
	subss	4(%rdi), %xmm0
	subss	(%rdi), %xmm1
	movl	208(%rbp), %edi
	decl	%edi
	leal	(%rdi,%rdi), %ecx
	movl	%edi, -60(%rbp)
	movss	%xmm0, 12(%rbx)
	movss	%xmm1, 8(%rbx)
	movslq	%ecx, %rcx
	movss	4(%rdx), %xmm0
	leaq	(%rbx,%rcx,8), %r8
	movss	4(%rax), %xmm2
	movss	(%rax), %xmm3
	addss	%xmm0, %xmm2
	movss	(%rdx), %xmm1
	leaq	8(%rbx,%rcx,8), %rdx
	addss	%xmm1, %xmm3
	movss	%xmm2, 4(%r8)
	movss	%xmm3, (%r8)
	subss	4(%rax), %xmm0
	subss	(%rax), %xmm1
	movss	%xmm0, 4(%rdx)
	movss	%xmm1, (%rdx)
	jmp	.L1617
.L1645:
	movaps	%xmm1, %xmm0
	movl	%r10d, -84(%rbp)
	movq	%r9, -80(%rbp)
	movq	%rcx, -72(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%edx, -60(%rbp)
	call	sqrtf
	movl	-84(%rbp), %r10d
	movq	-80(%rbp), %r9
	movq	-72(%rbp), %rcx
	movl	-64(%rbp), %r8d
	movl	-60(%rbp), %edx
	jmp	.L1589
.L1649:
	movaps	%xmm1, %xmm0
	movl	%ecx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	call	sqrtf
	movss	(%rbx), %xmm3
	movl	-48(%rbp), %ecx
	movss	-4(%rbx), %xmm4
	movq	-40(%rbp), %rdx
	jmp	.L1611
.L1647:
	movl	-64(%rbp), %r8d
	movl	$24, %r10d
	movl	$16, %r11d
	movl	$8, %esi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	leaq	32(%r9), %r12
	jmp	.L1616
.L1652:
	movl	%r12d, %r9d
	xorl	%edx, %edx
	jmp	.L1615
.L1651:
	imull	$5, 208(%rbp), %eax
	jmp	.L1583
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	.def	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb:
.LFB428:
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
	movq	%rdx, %rbx
	movl	%r8d, %esi
	movq	.refptr.GImGui(%rip), %rax
	movq	%rcx, 160(%rbp)
	movl	%r9d, 184(%rbp)
	movl	192(%rbp), %edx
	movq	(%rax), %rax
	cmpb	$0, 5241(%rax)
	movss	5952(%rax), %xmm9
	movss	5956(%rax), %xmm8
	je	.L1654
	testb	%dl, %dl
	je	.L1654
	movl	%r9d, %eax
	leal	-6(%r8,%r8,8), %edx
	andl	$16777215, %eax
	movl	%eax, -80(%rbp)
	leal	(%r8,%r8), %eax
	movl	%eax, %r8d
	movl	%eax, -72(%rbp)
	call	_ZN10ImDrawList11PrimReserveEii
	movq	160(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -64(%rbp)
	incl	%eax
	cmpl	$2, %esi
	movl	%eax, -84(%rbp)
	jle	.L1697
	movq	160(%rbp), %rax
	leal	-9(%rsi), %edi
	cmpl	$12, %esi
	movzwl	-64(%rbp), %edx
	movl	%edi, -56(%rbp)
	movq	72(%rax), %rax
	movq	%rax, -96(%rbp)
	jle	.L1682
	movl	$3, %r15d
	movq	%rbx, 168(%rbp)
	movl	$9, %r13d
	movl	$8, %r12d
	movl	$7, %edi
	movl	$6, %r11d
	movl	$5, %r10d
	movl	$4, %r9d
	xorl	%r8d, %r8d
	movl	$2, %ecx
	movl	%r15d, %ebx
	.p2align 4,,7
.L1659:
	leal	2(%rdx,%r8,2), %r14d
	leal	(%rdx,%r13,2), %r15d
	movw	%dx, (%rax)
	movw	%dx, 6(%rax)
	movw	%dx, 12(%rax)
	prefetcht0	102(%rax)
	movw	%r14w, 2(%rax)
	leal	(%rdx,%rcx,2), %r14d
	movw	%r15w, 46(%rax)
	movw	%r15w, 50(%rax)
	movw	%dx, 18(%rax)
	prefetcht0	104(%rax)
	movw	%r14w, 4(%rax)
	movw	%r14w, 8(%rax)
	leal	(%rdx,%rbx,2), %r14d
	movw	%dx, 24(%rax)
	movw	%dx, 30(%rax)
	prefetcht0	106(%rax)
	movw	%r14w, 10(%rax)
	movw	%r14w, 14(%rax)
	leal	(%rdx,%r9,2), %r14d
	movw	%dx, 36(%rax)
	movw	%dx, 42(%rax)
	addl	$10, %ecx
	movw	%r14w, 16(%rax)
	movw	%r14w, 20(%rax)
	leal	(%rdx,%r10,2), %r14d
	movw	%dx, 48(%rax)
	movw	%dx, 54(%rax)
	addl	$10, %ebx
	movw	%r14w, 22(%rax)
	movw	%r14w, 26(%rax)
	leal	(%rdx,%r11,2), %r14d
	addq	$60, %rax
	addl	$10, %r9d
	addl	$10, %r10d
	movw	%r14w, -32(%rax)
	movw	%r14w, -28(%rax)
	leal	(%rdx,%rdi,2), %r14d
	addl	$10, %r11d
	addl	$10, %edi
	addl	$10, %r13d
	movw	%r14w, -26(%rax)
	movw	%r14w, -22(%rax)
	leal	(%rdx,%r12,2), %r14d
	addl	$10, %r12d
	movw	%r14w, -20(%rax)
	movw	%r14w, -16(%rax)
	leal	10(%r8), %r14d
	leal	22(%rdx,%r8,2), %r8d
	leal	(%rdx,%r14,2), %r15d
	movw	%r15w, -8(%rax)
	movw	%r15w, -4(%rax)
	movw	%r8w, -2(%rax)
	cmpl	-56(%rbp), %ebx
	movl	%r14d, %r8d
	jl	.L1659
	movq	168(%rbp), %rbx
.L1658:
	leal	-1(%rcx), %r8d
	.p2align 4,,7
.L1661:
	leal	(%rdx,%r8,2), %r9d
	movw	%dx, (%rax)
	incl	%r8d
	addq	$6, %rax
	movw	%r9w, -4(%rax)
	leal	(%rdx,%rcx,2), %r9d
	incl	%ecx
	movw	%r9w, -2(%rax)
	cmpl	%ecx, %esi
	jg	.L1661
	movq	-96(%rbp), %rdi
	leal	-3(%rsi), %eax
	movslq	%esi, %r14
	salq	$3, %r14
	incq	%rax
	leaq	(%rax,%rax), %rdx
	leaq	(%rdi,%rax,8), %rax
	movq	160(%rbp), %rdi
	subq	%rdx, %rax
	movq	%rax, 72(%rdi)
	leaq	30(%r14), %rax
	andq	$-16, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leal	-1(%rsi), %r12d
	leaq	32(%rsp), %r8
	movl	%r12d, %edx
.L1657:
	movss	.LC24(%rip), %xmm10
	xorps	%xmm12, %xmm12
	movl	%r12d, %edi
	movss	.LC29(%rip), %xmm11
	subq	$8, %r14
	movaps	%xmm10, %xmm13
	incq	%rdi
	xorl	%r13d, %r13d
	.p2align 4,,7
.L1666:
	movslq	%r12d, %rax
	movss	4(%rbx,%r13,8), %xmm7
	leaq	0(,%rax,8), %r12
	movss	(%rbx,%r13,8), %xmm6
	movl	%r13d, %r15d
	leaq	(%rbx,%r12), %rcx
	subss	4(%rcx), %xmm7
	subss	(%rcx), %xmm6
	movaps	%xmm7, %xmm0
	movaps	%xmm6, %xmm1
	mulss	%xmm7, %xmm0
	mulss	%xmm6, %xmm1
	addss	%xmm0, %xmm1
	movaps	%xmm13, %xmm0
	ucomiss	%xmm12, %xmm1
	jbe	.L1662
	sqrtss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm0
	jp	.L1698
.L1664:
	movaps	%xmm10, %xmm5
	divss	%xmm0, %xmm5
	movaps	%xmm5, %xmm0
.L1662:
	mulss	%xmm0, %xmm6
	leaq	(%r8,%r12), %rax
	incq	%r13
	mulss	%xmm0, %xmm7
	cmpq	%rdi, %r13
	movl	%r15d, %r12d
	xorps	%xmm11, %xmm6
	movss	%xmm7, (%rax)
	movss	%xmm6, 4(%rax)
	jne	.L1666
	movq	160(%rbp), %rax
	addq	%r8, %r14
	movzwl	-64(%rbp), %r12d
	movss	.LC43(%rip), %xmm7
	movzwl	-84(%rbp), %r11d
	movss	4(%r14), %xmm0
	xorl	%r10d, %r10d
	movq	64(%rax), %r15
	movq	72(%rax), %rax
	movss	(%r14), %xmm1
	movaps	%xmm7, %xmm11
	movl	-80(%rbp), %r14d
	movss	.LC1(%rip), %xmm4
	movq	%rax, -56(%rbp)
	movq	%rax, %rcx
	movq	%r15, -80(%rbp)
	movq	%r15, %rax
	movq	%rdi, -64(%rbp)
	movl	184(%rbp), %r15d
	jmp	.L1670
	.p2align 4,,7
.L1685:
	movl	%r9d, %r10d
.L1670:
	movss	4(%r8), %xmm6
	movss	(%r8), %xmm5
	addss	%xmm6, %xmm0
	addss	%xmm5, %xmm1
	mulss	%xmm4, %xmm0
	mulss	%xmm4, %xmm1
	movaps	%xmm0, %xmm2
	movaps	%xmm1, %xmm3
	mulss	%xmm0, %xmm2
	mulss	%xmm1, %xmm3
	addss	%xmm3, %xmm2
	ucomiss	.LC44(%rip), %xmm2
	jbe	.L1667
	movaps	%xmm10, %xmm3
	divss	%xmm2, %xmm3
	movaps	%xmm3, %xmm2
	movaps	%xmm11, %xmm3
	cmpnltss	%xmm2, %xmm3
	andps	%xmm3, %xmm2
	andnps	%xmm7, %xmm3
	orps	%xmm3, %xmm2
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
.L1667:
	mulss	%xmm4, %xmm1
	movss	4(%rbx), %xmm2
	mulss	%xmm4, %xmm0
	movss	(%rbx), %xmm3
	movss	%xmm9, 8(%rax)
	leal	(%r10,%r10), %r9d
	addl	%edx, %edx
	movss	%xmm8, 12(%rax)
	movl	%r15d, 16(%rax)
	leal	(%rdx,%r12), %r13d
	subss	%xmm1, %xmm3
	leal	(%r9,%r12), %edi
	addl	%r11d, %r9d
	subss	%xmm0, %xmm2
	addl	%r11d, %edx
	addq	$40, %rax
	addq	$12, %rcx
	addq	$8, %r8
	addq	$8, %rbx
	movss	%xmm3, -40(%rax)
	movss	%xmm2, -36(%rax)
	addss	-4(%rbx), %xmm0
	addss	-8(%rbx), %xmm1
	movss	%xmm9, -12(%rax)
	movl	%r14d, -4(%rax)
	movss	%xmm8, -8(%rax)
	movss	%xmm0, -16(%rax)
	movaps	%xmm6, %xmm0
	movss	%xmm1, -20(%rax)
	movw	%r9w, -4(%rcx)
	leal	1(%r10), %r9d
	movw	%dx, -8(%rcx)
	movaps	%xmm5, %xmm1
	movw	%dx, -6(%rcx)
	movl	%r10d, %edx
	movw	%di, -12(%rcx)
	movw	%r13w, -10(%rcx)
	movw	%di, -2(%rcx)
	cmpl	%r9d, %esi
	jne	.L1685
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %r15
	movq	%rdi, %rax
	salq	$5, %rax
	leaq	(%rax,%rdi,8), %rax
	addq	%rax, %r15
	movq	160(%rbp), %rax
	movq	%r15, 64(%rax)
	leaq	0(,%rdi,4), %rax
	salq	$4, %rdi
	subq	%rax, %rdi
	movq	160(%rbp), %rax
	addq	-56(%rbp), %rdi
	movl	56(%rax), %r12d
	movq	%rdi, 72(%rax)
.L1656:
	movzwl	-72(%rbp), %eax
	addl	%eax, %r12d
	movq	160(%rbp), %rax
	movl	%r12d, 56(%rax)
	jmp	.L1653
	.p2align 4,,7
.L1654:
	leal	-6(%rsi,%rsi,2), %edx
	movl	%esi, %r8d
	call	_ZN10ImDrawList11PrimReserveEii
	testl	%esi, %esi
	jle	.L1672
	movq	160(%rbp), %rax
	movq	160(%rbp), %r8
	xorl	%edx, %edx
	movl	184(%rbp), %r9d
	movq	64(%rax), %rax
	.p2align 4,,7
.L1677:
	movq	(%rbx,%rdx,8), %rcx
	incq	%rdx
	movss	%xmm9, 8(%rax)
	movss	%xmm8, 12(%rax)
	movl	%r9d, 16(%rax)
	addq	$20, %rax
	movq	%rcx, -20(%rax)
	cmpl	%edx, %esi
	movq	%rax, 64(%r8)
	jg	.L1677
	cmpl	$2, %esi
	jle	.L1672
	movq	160(%rbp), %rdi
	movq	160(%rbp), %rax
	cmpl	$12, %esi
	movl	56(%rdi), %edi
	movq	72(%rax), %rax
	movl	%edi, %ecx
	movl	%edi, -64(%rbp)
	movl	%edi, %edx
	leal	-9(%rsi), %edi
	movq	%rax, -72(%rbp)
	movl	%edi, -56(%rbp)
	jle	.L1686
	movl	%ecx, %r15d
	movl	%ecx, %edi
	movl	%ecx, %ebx
	movl	%ecx, %r11d
	movl	%ecx, %r10d
	leal	8(%r15), %r9d
	leal	2(%rdi), %r13d
	leal	3(%rdi), %r12d
	movl	%ecx, %r8d
	addl	$4, %edi
	addl	$5, %ebx
	addl	$6, %r11d
	addl	$7, %r10d
	movl	$2, %ecx
	.p2align 4,,7
.L1679:
	leal	1(%r8), %r14d
	leal	10(%r8), %r15d
	movw	%r13w, 4(%rax)
	movw	%r13w, 8(%rax)
	movw	%r12w, 10(%rax)
	prefetcht0	138(%rax)
	movw	%r14w, 2(%rax)
	leal	9(%r8), %r14d
	addl	$11, %r8d
	movw	%r12w, 14(%rax)
	movw	%di, 16(%rax)
	prefetcht0	140(%rax)
	movw	%r14w, 46(%rax)
	movw	%r14w, 50(%rax)
	movl	%ecx, %r14d
	movw	%di, 20(%rax)
	movw	%bx, 22(%rax)
	prefetcht0	142(%rax)
	movw	%bx, 26(%rax)
	movw	%r11w, 28(%rax)
	addl	$10, %ecx
	movw	%r11w, 32(%rax)
	movw	%r10w, 34(%rax)
	addl	$10, %r13d
	movw	%r10w, 38(%rax)
	movw	%r9w, 40(%rax)
	addl	$10, %r12d
	movw	%r9w, 44(%rax)
	movw	%dx, (%rax)
	addl	$10, %edi
	movw	%dx, 6(%rax)
	movw	%dx, 12(%rax)
	addl	$10, %ebx
	movw	%dx, 18(%rax)
	movw	%dx, 24(%rax)
	addl	$10, %r11d
	movw	%dx, 30(%rax)
	movw	%dx, 36(%rax)
	addl	$10, %r10d
	movw	%dx, 42(%rax)
	movw	%dx, 48(%rax)
	addl	$10, %r9d
	movw	%r15w, 52(%rax)
	movw	%dx, 54(%rax)
	addl	$11, %r14d
	movw	%r15w, 56(%rax)
	movw	%r8w, 58(%rax)
	addq	$60, %rax
	cmpl	%r14d, -56(%rbp)
	movl	%r15d, %r8d
	jg	.L1679
.L1678:
	leal	(%rdx,%rcx), %r8d
	.p2align 4,,7
.L1680:
	leal	-1(%r8), %r9d
	incl	%ecx
	movw	%r8w, 4(%rax)
	movw	%dx, (%rax)
	incl	%r8d
	addq	$6, %rax
	movw	%r9w, -4(%rax)
	cmpl	%ecx, %esi
	jg	.L1680
	movq	-72(%rbp), %rdi
	leal	-3(%rsi), %eax
	incq	%rax
	leaq	(%rax,%rax), %rdx
	leaq	(%rdi,%rax,8), %rax
	movq	160(%rbp), %rdi
	subq	%rdx, %rax
	movq	%rax, 72(%rdi)
	movq	%rdi, %rax
.L1675:
	movzwl	%si, %esi
	addl	-64(%rbp), %esi
	movl	%esi, 56(%rax)
.L1653:
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
.L1672:
	movq	160(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	160(%rbp), %rax
	jmp	.L1675
.L1697:
	movslq	%esi, %r14
	salq	$3, %r14
	leaq	30(%r14), %rax
	andq	$-16, %rax
	call	___chkstk_ms
	leal	-1(%rsi), %r12d
	subq	%rax, %rsp
	testl	%esi, %esi
	leaq	32(%rsp), %r8
	movl	%r12d, %edx
	jg	.L1657
	movl	-64(%rbp), %r12d
	jmp	.L1656
.L1686:
	movl	$2, %ecx
	jmp	.L1678
.L1682:
	movl	$2, %ecx
	jmp	.L1658
.L1698:
	movaps	%xmm1, %xmm0
	movq	%r8, -96(%rbp)
	movl	%edx, -56(%rbp)
	call	sqrtf
	movq	-96(%rbp), %r8
	movl	-56(%rbp), %edx
	jmp	.L1664
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj
	.def	_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj
_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj:
.LFB437:
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
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%r8, %r13
	movl	184(%rsp), %edi
	movl	192(%rsp), %esi
	movl	176(%rsp), %ebp
	movl	%edi, %eax
	orl	%esi, %eax
	orl	%ebp, %eax
	orl	%r9d, %eax
	testl	$-16777216, %eax
	je	.L1699
	movq	.refptr.GImGui(%rip), %rax
	movl	$6, %edx
	movl	$4, %r8d
	movl	%r9d, 44(%rsp)
	movq	(%rax), %rax
	movss	5952(%rax), %xmm7
	movss	5956(%rax), %xmm6
	call	_ZN10ImDrawList11PrimReserveEii
	movl	56(%rbx), %edx
	movq	72(%rbx), %rax
	movl	44(%rsp), %r9d
	leal	1(%rdx), %ecx
	movw	%dx, (%rax)
	movw	%dx, 6(%rax)
	addq	$12, %rax
	movw	%cx, -10(%rax)
	leal	2(%rdx), %ecx
	addl	$3, %edx
	movw	%dx, -2(%rax)
	movq	(%r12), %rdx
	movw	%cx, -8(%rax)
	movw	%cx, -4(%rax)
	movq	%rax, 72(%rbx)
	movq	64(%rbx), %rax
	movss	%xmm7, 8(%rax)
	movq	%rdx, (%rax)
	movl	%r9d, 16(%rax)
	movss	%xmm6, 12(%rax)
	incl	56(%rbx)
	addq	$80, %rax
	movss	4(%r12), %xmm0
	movss	0(%r13), %xmm1
	movss	%xmm1, -60(%rax)
	movl	%ebp, -44(%rax)
	movss	%xmm0, -56(%rax)
	movss	%xmm7, -52(%rax)
	movss	%xmm6, -48(%rax)
	movq	0(%r13), %rdx
	incl	56(%rbx)
	movss	%xmm7, -32(%rax)
	movss	%xmm6, -28(%rax)
	movl	%edi, -24(%rax)
	movq	%rdx, -40(%rax)
	incl	56(%rbx)
	movss	4(%r13), %xmm0
	movss	(%r12), %xmm1
	movl	%esi, -4(%rax)
	movss	%xmm1, -20(%rax)
	movss	%xmm0, -16(%rax)
	movss	%xmm7, -12(%rax)
	movss	%xmm6, -8(%rax)
	incl	56(%rbx)
	movq	%rax, 64(%rbx)
.L1699:
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
	.section .rdata,"dr"
	.align 8
.LC45:
	.ascii "font->ContainerAtlas->TexID == _TextureIdStack.back()\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_
	.def	_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_
_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_:
.LFB446:
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
	subq	$248, %rsp
	.seh_stackalloc	248
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
	movaps	%xmm14, 208(%rsp)
	.seh_savexmm	%xmm14, 208
	movaps	%xmm15, 224(%rsp)
	.seh_savexmm	%xmm15, 224
	.seh_endprologue
	testl	$-16777216, %r8d
	movq	%rcx, %r15
	movq	%rdx, %rbp
	movl	%r8d, %r12d
	movq	%r9, %rbx
	movq	352(%rsp), %rsi
	je	.L1704
	testq	%rsi, %rsi
	je	.L1798
.L1706:
	cmpq	%rsi, %rbx
	je	.L1704
	movq	.refptr.GImGui(%rip), %rax
	movq	(%rax), %rax
	movq	5936(%rax), %rdi
	movss	5944(%rax), %xmm7
	movq	88(%rdi), %rax
	movq	(%rax), %r13
	movslq	96(%r15), %rax
	testl	%eax, %eax
	jle	.L1799
.L1707:
	movq	104(%r15), %rdx
	cmpq	-8(%rdx,%rax,8), %r13
	je	.L1708
	leaq	.LC5(%rip), %rdx
	leaq	.LC45(%rip), %rcx
	movl	$943, %r8d
	call	_assert
.L1708:
	movslq	80(%r15), %rax
	testl	%eax, %eax
	jle	.L1800
.L1709:
	movq	88(%r15), %rdx
	salq	$4, %rax
	testq	%rsi, %rsi
	movss	4(%rbp), %xmm6
	leaq	-16(%rdx,%rax), %r13
	movss	12(%r13), %xmm14
	je	.L1801
.L1710:
	cvttss2si	%xmm6, %eax
	cvtsi2ss	%eax, %xmm9
	addss	12(%rdi), %xmm9
	ucomiss	%xmm14, %xmm9
	ja	.L1704
	movss	(%rdi), %xmm0
	movaps	%xmm9, %xmm8
	divss	%xmm0, %xmm7
	movss	4(%r13), %xmm12
	movss	0(%r13), %xmm5
	movss	%xmm5, 56(%rsp)
	movss	8(%r13), %xmm11
	movss	0(%rbp), %xmm10
	movss	8(%rdi), %xmm6
	mulss	%xmm7, %xmm0
	addss	%xmm0, %xmm8
	movaps	%xmm0, %xmm13
	ucomiss	%xmm8, %xmm12
	ja	.L1802
	movq	%rsi, %r8
	movl	$6, %r9d
	movl	16(%r15), %eax
	subq	%rbx, %r8
	movq	%r15, %rcx
	movl	%r8d, %edx
	sall	$2, %r8d
	imull	%r9d, %edx
	addl	%edx, %eax
	movl	%eax, 60(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	cmpq	%rsi, %rbx
	movq	64(%r15), %r13
	movq	72(%r15), %rbp
	movl	56(%r15), %r14d
	jnb	.L1718
.L1719:
	cvttss2si	%xmm10, %eax
	movss	%xmm13, 52(%rsp)
	movss	%xmm14, 48(%rsp)
	cvtsi2ss	%eax, %xmm10
	leaq	76(%rsp), %rax
	movq	%rax, 40(%rsp)
	addss	%xmm6, %xmm10
	movaps	%xmm10, %xmm6
	jmp	.L1720
	.p2align 4,,7
.L1805:
	incq	%rbx
.L1722:
	cmpl	$31, %eax
	ja	.L1724
	cmpl	$10, %eax
	je	.L1803
	cmpl	$13, %eax
	je	.L1736
.L1724:
	movzwl	%ax, %edx
	cmpl	48(%rdi), %edx
	jl	.L1804
.L1731:
	movq	64(%rdi), %rdx
.L1732:
	testq	%rdx, %rdx
	xorps	%xmm0, %xmm0
	je	.L1733
	movss	4(%rdx), %xmm0
	cmpl	$32, %eax
	mulss	%xmm7, %xmm0
	je	.L1733
	cmpl	$9, %eax
	je	.L1733
	movss	8(%rdx), %xmm1
	mulss	%xmm7, %xmm1
	addss	%xmm6, %xmm1
	ucomiss	%xmm1, %xmm11
	jb	.L1733
	movss	16(%rdx), %xmm2
	mulss	%xmm7, %xmm2
	addss	%xmm6, %xmm2
	ucomiss	56(%rsp), %xmm2
	jb	.L1733
	movss	20(%rdx), %xmm4
	leal	1(%r14), %eax
	addq	$80, %r13
	mulss	%xmm7, %xmm4
	movss	12(%rdx), %xmm3
	mulss	%xmm7, %xmm3
	movss	24(%rdx), %xmm13
	movss	28(%rdx), %xmm15
	addq	$12, %rbp
	movss	32(%rdx), %xmm5
	addss	%xmm9, %xmm4
	addss	%xmm9, %xmm3
	movaps	%xmm4, %xmm14
	movss	36(%rdx), %xmm4
	movw	%ax, -10(%rbp)
	leal	2(%r14), %eax
	movw	%r14w, -12(%rbp)
	movw	%r14w, -6(%rbp)
	movw	%ax, -8(%rbp)
	movw	%ax, -4(%rbp)
	leal	3(%r14), %eax
	addl	$4, %r14d
	movw	%ax, -2(%rbp)
	movss	%xmm1, -80(%r13)
	movl	%r12d, -64(%r13)
	movss	%xmm3, -76(%r13)
	movl	%r12d, -44(%r13)
	movl	%r12d, -24(%r13)
	movss	%xmm13, -72(%r13)
	movl	%r12d, -4(%r13)
	movss	%xmm15, -68(%r13)
	movss	%xmm2, -60(%r13)
	movss	%xmm3, -56(%r13)
	movss	%xmm5, -52(%r13)
	movss	%xmm15, -48(%r13)
	movss	%xmm2, -40(%r13)
	movss	%xmm14, -36(%r13)
	movss	%xmm5, -32(%r13)
	movss	%xmm4, -28(%r13)
	movss	%xmm1, -20(%r13)
	movss	%xmm14, -16(%r13)
	movss	%xmm13, -12(%r13)
	movss	%xmm4, -8(%r13)
	.p2align 4,,7
.L1733:
	addss	%xmm0, %xmm6
.L1736:
	cmpq	%rbx, %rsi
	jbe	.L1718
.L1720:
	movsbl	(%rbx), %eax
	cmpl	$127, %eax
	movl	%eax, 76(%rsp)
	jbe	.L1805
	movq	40(%rsp), %rcx
	movq	%rbx, %rdx
	movq	%rsi, %r8
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	76(%rsp), %eax
	testl	%eax, %eax
	jne	.L1722
	.p2align 4,,7
.L1718:
	movq	%r13, %rbx
	subq	40(%r15), %rbx
	movabsq	$-3689348814741910323, %rax
	sarq	$2, %rbx
	imulq	%rax, %rbx
	movl	36(%r15), %eax
	cmpl	%eax, %ebx
	movl	%ebx, %esi
	jle	.L1737
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1738
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1738:
	cmpl	%edx, %ebx
	jge	.L1754
	cmpl	%edx, %eax
	jl	.L1806
.L1737:
	movl	%ebx, 32(%r15)
	movq	%rbp, %rbx
	subq	24(%r15), %rbx
	movl	20(%r15), %eax
	sarq	%rbx
	cmpl	%eax, %ebx
	jle	.L1741
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1742
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1742:
	cmpl	%edx, %ebx
	jge	.L1756
	cmpl	%edx, %eax
	jl	.L1807
.L1741:
	movl	(%r15), %eax
	movl	%ebx, 16(%r15)
	decl	%eax
	cltq
	movq	%rax, %rdx
	salq	$6, %rax
	salq	$4, %rdx
	subq	%rdx, %rax
	addq	8(%r15), %rax
	movl	60(%rsp), %edx
	subl	%ebx, %edx
	subl	%edx, (%rax)
	movq	%r13, 64(%r15)
	movq	%rbp, 72(%r15)
	movl	%esi, 56(%r15)
.L1704:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
	movaps	144(%rsp), %xmm10
	movaps	160(%rsp), %xmm11
	movaps	176(%rsp), %xmm12
	movaps	192(%rsp), %xmm13
	movaps	208(%rsp), %xmm14
	movaps	224(%rsp), %xmm15
	addq	$248, %rsp
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
.L1802:
	cmpq	%rsi, %rbx
	jb	.L1788
	jmp	.L1713
	.p2align 4,,7
.L1809:
	incq	%rbx
	cmpq	%rbx, %rsi
	.p2align 4,,2
	je	.L1808
.L1788:
	cmpb	$10, (%rbx)
	.p2align 4,,2
	jne	.L1809
	movq	%rsi, %r8
	movl	$6, %ecx
	movl	16(%r15), %eax
	subq	%rbx, %r8
	movl	%r8d, %edx
	sall	$2, %r8d
	imull	%ecx, %edx
	movq	%r15, %rcx
	addl	%edx, %eax
	movl	%eax, 60(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movq	64(%r15), %r13
	movq	72(%r15), %rbp
	movl	56(%r15), %r14d
	jmp	.L1719
	.p2align 4,,7
.L1798:
	movq	%r9, %rcx
	call	strlen
	leaq	(%rbx,%rax), %rsi
	jmp	.L1706
	.p2align 4,,7
.L1804:
	movq	56(%rdi), %rcx
	movzwl	%ax, %edx
	movzwl	(%rcx,%rdx,2), %edx
	cmpw	$-1, %dx
	je	.L1731
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	(%rcx,%rdx,8), %rdx
	addq	24(%rdi), %rdx
	jmp	.L1732
	.p2align 4,,7
.L1803:
	ucomiss	48(%rsp), %xmm8
	movaps	%xmm8, %xmm9
	ja	.L1718
	addss	52(%rsp), %xmm8
	ucomiss	%xmm8, %xmm12
	jbe	.L1794
	cmpq	%rbx, %rsi
	ja	.L1790
	jmp	.L1794
	.p2align 4,,7
.L1811:
	incq	%rbx
	cmpq	%rbx, %rsi
	.p2align 4,,2
	je	.L1810
.L1790:
	cmpb	$10, (%rbx)
	.p2align 4,,2
	jne	.L1811
.L1794:
	movaps	%xmm10, %xmm6
	jmp	.L1736
	.p2align 4,,7
.L1810:
	movq	%rsi, %rbx
	movaps	%xmm10, %xmm6
	jmp	.L1736
	.p2align 4,,7
.L1756:
	movl	%ebx, %esi
.L1743:
	movslq	%esi, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%r15), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L1744
	movslq	16(%r15), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%r15), %rcx
.L1744:
	call	_ZN5ImGui7MemFreeEPv
	movl	%esi, 20(%r15)
	movq	%rdi, 24(%r15)
	movl	32(%r15), %esi
	jmp	.L1741
	.p2align 4,,7
.L1754:
	movl	%ebx, %edi
.L1739:
	movslq	%edi, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	40(%r15), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L1740
	movslq	32(%r15), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	call	memcpy
	movq	40(%r15), %rcx
.L1740:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r12, 40(%r15)
	movl	%edi, 36(%r15)
	jmp	.L1737
	.p2align 4,,7
.L1808:
	movq	%rsi, %rbx
.L1713:
	subq	%rbx, %rsi
	movl	$6, %eax
	movq	%r15, %rcx
	movl	%esi, %edx
	movq	%rsi, %r8
	imull	%eax, %edx
	movl	16(%r15), %eax
	sall	$2, %r8d
	addl	%edx, %eax
	movl	%eax, 60(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movq	64(%r15), %r13
	movq	72(%r15), %rbp
	jmp	.L1718
	.p2align 4,,7
.L1801:
	movq	%rbx, %rcx
	call	strlen
	leaq	(%rbx,%rax), %rsi
	jmp	.L1710
.L1799:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	96(%r15), %rax
	jmp	.L1707
.L1800:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	80(%r15), %rax
	jmp	.L1709
.L1807:
	movl	%edx, %esi
	jmp	.L1743
.L1806:
	movl	%edx, %edi
	.p2align 4,,3
	jmp	.L1739
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	.def	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j:
.LFB447:
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
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%r8, %rbp
	movl	208(%rsp), %edi
	movq	%r9, %r12
	movq	192(%rsp), %r13
	movq	200(%rsp), %r14
	testl	$-16777216, %edi
	je	.L1812
	movl	96(%rcx), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	.L1837
	movl	100(%rbx), %eax
	cmpl	%edx, %eax
	je	.L1825
.L1841:
	movq	104(%rbx), %rsi
	leal	1(%rdx), %ecx
.L1820:
	movl	%ecx, 96(%rbx)
	movq	%r15, (%rsi,%rdx,8)
	movq	%rbx, %rcx
	movl	$1, %esi
	call	_ZN10ImDrawList15UpdateTextureIDEv
.L1817:
	movl	$4, %r8d
	movl	$6, %edx
	movq	%rbx, %rcx
	call	_ZN10ImDrawList11PrimReserveEii
	movl	56(%rbx), %ecx
	movq	72(%rbx), %rdx
	movss	4(%r12), %xmm2
	movq	0(%rbp), %r8
	movss	4(%r14), %xmm0
	leal	1(%rcx), %eax
	movss	0(%r13), %xmm1
	movss	4(%rbp), %xmm6
	addq	$12, %rdx
	movss	(%r12), %xmm7
	movss	0(%rbp), %xmm3
	movss	4(%r13), %xmm4
	movss	(%r14), %xmm5
	movw	%ax, -10(%rdx)
	leal	2(%rcx), %eax
	movw	%cx, -12(%rdx)
	movw	%cx, -6(%rdx)
	movw	%ax, -8(%rdx)
	movw	%ax, -4(%rdx)
	leal	3(%rcx), %eax
	addl	$4, %ecx
	movw	%ax, -2(%rdx)
	movq	64(%rbx), %rax
	movq	%r8, (%rax)
	movq	0(%r13), %r8
	movss	%xmm7, 20(%rax)
	movss	%xmm6, 24(%rax)
	movl	%edi, 16(%rax)
	movl	%edi, 36(%rax)
	movss	%xmm5, 28(%rax)
	addq	$80, %rax
	movq	%r8, -72(%rax)
	movss	%xmm4, -48(%rax)
	movq	(%r12), %r8
	movq	%r8, -40(%rax)
	movq	(%r14), %r8
	movl	%edi, -24(%rax)
	movq	%r8, -32(%rax)
	movss	%xmm3, -20(%rax)
	movl	%edi, -4(%rax)
	movss	%xmm2, -16(%rax)
	movss	%xmm1, -12(%rax)
	movss	%xmm0, -8(%rax)
	testb	%sil, %sil
	movq	%rax, 64(%rbx)
	movl	%ecx, 56(%rbx)
	movq	%rdx, 72(%rbx)
	je	.L1812
	movl	96(%rbx), %eax
	testl	%eax, %eax
	jle	.L1838
.L1823:
	movl	96(%rbx), %eax
	testl	%eax, %eax
	jle	.L1839
.L1824:
	movaps	48(%rsp), %xmm6
	decl	%eax
	movq	%rbx, %rcx
	movl	%eax, 96(%rbx)
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
	jmp	_ZN10ImDrawList15UpdateTextureIDEv
	.p2align 4,,7
.L1812:
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
	.p2align 4,,7
.L1825:
	testl	%edx, %edx
	leal	1(%rdx), %ecx
	movl	$8, %r8d
	je	.L1818
	movl	%edx, %r8d
	shrl	$31, %r8d
	addl	%edx, %r8d
	sarl	%r8d
	addl	%edx, %r8d
.L1818:
	cmpl	%r8d, %ecx
	movl	%r8d, %esi
	cmovge	%ecx, %esi
	cmpl	%esi, %eax
	jl	.L1819
	movq	104(%rbx), %rsi
	movslq	%eax, %rdx
	jmp	.L1820
	.p2align 4,,7
.L1837:
	movslq	%eax, %rdx
	testl	%edx, %edx
	jle	.L1840
.L1816:
	movq	104(%rbx), %rcx
	movslq	%edx, %rax
	xorl	%esi, %esi
	cmpq	%r15, -8(%rcx,%rax,8)
	je	.L1817
	movl	100(%rbx), %eax
	cmpl	%edx, %eax
	jne	.L1841
	jmp	.L1825
	.p2align 4,,7
.L1839:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	96(%rbx), %eax
	jmp	.L1824
	.p2align 4,,7
.L1819:
	movslq	%esi, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	104(%rbx), %rcx
	movq	%rax, 40(%rsp)
	testq	%rcx, %rcx
	je	.L1821
	movslq	96(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	104(%rbx), %rcx
.L1821:
	call	_ZN5ImGui7MemFreeEPv
	movslq	96(%rbx), %rdx
	movq	40(%rsp), %rax
	movl	%esi, 100(%rbx)
	movq	%rax, 104(%rbx)
	movq	%rax, %rsi
	leal	1(%rdx), %ecx
	jmp	.L1820
	.p2align 4,,7
.L1838:
	leaq	.LC5(%rip), %rdx
	leaq	.LC40(%rip), %rcx
	movl	$272, %r8d
	call	_assert
	jmp	.L1823
	.p2align 4,,7
.L1840:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	96(%rbx), %rdx
	jmp	.L1816
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList12AddImageQuadEPvRK6ImVec2S3_S3_S3_S3_S3_S3_S3_j
	.def	_ZN10ImDrawList12AddImageQuadEPvRK6ImVec2S3_S3_S3_S3_S3_S3_S3_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList12AddImageQuadEPvRK6ImVec2S3_S3_S3_S3_S3_S3_S3_j
_ZN10ImDrawList12AddImageQuadEPvRK6ImVec2S3_S3_S3_S3_S3_S3_S3_j:
.LFB448:
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
	movq	192(%rsp), %r12
	movq	%r9, %rbp
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%r8, %rdi
	movq	200(%rsp), %r13
	movq	208(%rsp), %r14
	testl	$-16777216, %esi
	movq	216(%rsp), %r9
	movq	224(%rsp), %r10
	movq	232(%rsp), %r11
	je	.L1842
	movl	96(%rcx), %eax
	testl	%eax, %eax
	jne	.L1867
	movl	100(%rcx), %eax
	testl	%eax, %eax
	je	.L1860
	movq	104(%rbx), %rdx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.L1857:
	leal	1(%rax), %r8d
.L1850:
	movl	%r8d, 96(%rbx)
	movq	%r15, (%rdx,%rcx,8)
	movq	%rbx, %rcx
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movl	$1, %r15d
	movq	%r9, 40(%rsp)
	call	_ZN10ImDrawList15UpdateTextureIDEv
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r9
.L1848:
	movl	$4, %r8d
	movl	$6, %edx
	movq	%rbx, %rcx
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r9, 40(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movl	56(%rbx), %ecx
	movq	72(%rbx), %rdx
	movq	(%rdi), %r8
	movq	40(%rsp), %r9
	movq	48(%rsp), %r10
	movq	56(%rsp), %r11
	leal	1(%rcx), %eax
	movw	%cx, (%rdx)
	movw	%cx, 6(%rdx)
	addq	$12, %rdx
	movw	%ax, -10(%rdx)
	leal	2(%rcx), %eax
	movw	%ax, -8(%rdx)
	movw	%ax, -4(%rdx)
	leal	3(%rcx), %eax
	addl	$4, %ecx
	movw	%ax, -2(%rdx)
	movq	64(%rbx), %rax
	movq	%r8, (%rax)
	movq	(%r14), %r8
	addq	$80, %rax
	movl	%esi, -64(%rax)
	movq	%r8, -72(%rax)
	movq	0(%rbp), %r8
	movq	%r8, -60(%rax)
	movq	(%r9), %r8
	movl	%esi, -44(%rax)
	movq	%r8, -52(%rax)
	movq	(%r12), %r8
	movq	%r8, -40(%rax)
	movq	(%r10), %r8
	movl	%esi, -24(%rax)
	movq	%r8, -32(%rax)
	movq	0(%r13), %r8
	movq	%r8, -20(%rax)
	movq	(%r11), %r8
	movl	%esi, -4(%rax)
	movq	%r8, -12(%rax)
	testb	%r15b, %r15b
	movq	%rax, 64(%rbx)
	movl	%ecx, 56(%rbx)
	movq	%rdx, 72(%rbx)
	je	.L1842
	movl	96(%rbx), %eax
	testl	%eax, %eax
	jle	.L1868
.L1853:
	movl	96(%rbx), %eax
	testl	%eax, %eax
	jle	.L1869
.L1854:
	decl	%eax
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
	.p2align 4,,7
.L1842:
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
	.p2align 4,,7
.L1867:
	testl	%eax, %eax
	jle	.L1870
.L1846:
	movq	104(%rbx), %rdx
	movslq	%eax, %rcx
	cmpq	%r15, -8(%rdx,%rcx,8)
	je	.L1871
	cmpl	%eax, 100(%rbx)
	jne	.L1857
	testl	%eax, %eax
	leal	1(%rax), %r8d
	je	.L1859
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1856:
	cmpl	%r8d, %edx
	cmovl	%r8d, %edx
	cmpl	%eax, %edx
	movl	%edx, 40(%rsp)
	jg	.L1849
	movq	104(%rbx), %rdx
	movslq	%eax, %rcx
	jmp	.L1850
	.p2align 4,,7
.L1869:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	96(%rbx), %eax
	jmp	.L1854
	.p2align 4,,7
.L1860:
	movl	$1, %r8d
	movl	$8, %edx
	jmp	.L1856
	.p2align 4,,7
.L1868:
	leaq	.LC5(%rip), %rdx
	leaq	.LC40(%rip), %rcx
	movl	$272, %r8d
	call	_assert
	jmp	.L1853
	.p2align 4,,7
.L1871:
	xorl	%r15d, %r15d
	jmp	.L1848
.L1859:
	movl	$8, 40(%rsp)
	.p2align 4,,7
.L1849:
	movslq	40(%rsp), %rcx
	movq	%r11, 72(%rsp)
	movq	%r10, 64(%rsp)
	movq	%r9, 56(%rsp)
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	104(%rbx), %rcx
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %r9
	movq	64(%rsp), %r10
	movq	72(%rsp), %r11
	testq	%rcx, %rcx
	je	.L1851
	movslq	96(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	104(%rbx), %rcx
	movq	72(%rsp), %r11
	movq	64(%rsp), %r10
	movq	56(%rsp), %r9
.L1851:
	movq	%r11, 72(%rsp)
	movq	%r10, 64(%rsp)
	movq	%r9, 56(%rsp)
	call	_ZN5ImGui7MemFreeEPv
	movslq	96(%rbx), %rcx
	movq	48(%rsp), %rdx
	movl	40(%rsp), %eax
	movq	72(%rsp), %r11
	movq	64(%rsp), %r10
	movq	56(%rsp), %r9
	movq	%rdx, 104(%rbx)
	movl	%eax, 100(%rbx)
	leal	1(%rcx), %r8d
	jmp	.L1850
	.p2align 4,,7
.L1870:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r9, 40(%rsp)
	call	_assert
	movl	96(%rbx), %eax
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r9
	jmp	.L1846
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawData17DeIndexAllBuffersEv
	.def	_ZN10ImDrawData17DeIndexAllBuffersEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawData17DeIndexAllBuffersEv
_ZN10ImDrawData17DeIndexAllBuffersEv:
.LFB449:
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
	.seh_endprologue
	movl	16(%rcx), %edx
	movq	%rcx, %r15
	movl	$0, 24(%rcx)
	movl	$0, 20(%rcx)
	testl	%edx, %edx
	jle	.L1872
	xorl	%r14d, %r14d
	movq	$0, 48(%rsp)
	movl	$0, 60(%rsp)
	xorl	%ebp, %ebp
	movl	$0, 40(%rsp)
	jmp	.L1894
	.p2align 4,,7
.L1875:
	incl	40(%rsp)
	addq	$8, %r14
	movl	40(%rsp), %eax
	cmpl	%edx, %eax
	jge	.L1932
.L1894:
	movq	8(%r15), %rax
	movq	(%rax,%r14), %rdi
	movl	16(%rdi), %r13d
	testl	%r13d, %r13d
	je	.L1875
	movl	60(%rsp), %edx
	cmpl	%edx, %r13d
	jle	.L1901
	testl	%edx, %edx
	movl	$8, %eax
	je	.L1877
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L1877:
	cmpl	%eax, %r13d
	jge	.L1900
	cmpl	%eax, 60(%rsp)
	jl	.L1933
.L1901:
	movq	48(%rsp), %rdx
	movl	%r13d, %eax
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	testl	%eax, %eax
	leaq	80(%rdx), %rbx
	jg	.L1924
	jmp	.L1934
	.p2align 4,,7
.L1938:
	cmpl	%ebp, 16(%rdi)
	jle	.L1935
.L1883:
	movq	24(%rdi), %rax
	movzwl	(%rax,%r12), %eax
	cmpl	32(%rdi), %eax
	movq	%rax, %rsi
	jge	.L1936
.L1886:
	movq	%rsi, %rax
	movq	40(%rdi), %rdx
	prefetcht0	(%rbx)
	salq	$4, %rax
	incl	%ebp
	addq	$20, %rbx
	leaq	(%rax,%rsi,4), %rax
	addq	$2, %r12
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -100(%rbx)
	movq	8(%rax), %rcx
	movq	%rcx, -92(%rbx)
	movl	16(%rax), %eax
	movl	%eax, -84(%rbx)
	cmpl	%ebp, 16(%rdi)
	jle	.L1937
.L1924:
	cmpl	%ebp, %r13d
	jg	.L1938
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
.LEHB0:
	call	_assert
	cmpl	%ebp, 16(%rdi)
	jg	.L1883
.L1935:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L1883
	.p2align 4,,7
.L1936:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
.LEHE0:
	jmp	.L1886
	.p2align 4,,7
.L1937:
	movq	%rdx, %rbx
.L1881:
	movl	60(%rsp), %eax
	movl	36(%rdi), %esi
	movslq	32(%rdi), %rbp
	movl	%r13d, 32(%rdi)
	movl	%eax, 36(%rdi)
	movq	48(%rsp), %rax
	movq	%rax, 40(%rdi)
	movl	20(%rdi), %eax
	testl	%eax, %eax
	jns	.L1889
	xorl	%ecx, %ecx
.LEHB1:
	call	_ZN5ImGui8MemAllocEy
.LEHE1:
	movq	24(%rdi), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L1893
	movslq	16(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%rdi), %rcx
.L1893:
.LEHB2:
	call	_ZN5ImGui7MemFreeEPv
.LEHE2:
	movl	32(%rdi), %r13d
	movq	%r12, 24(%rdi)
	movl	$0, 20(%rdi)
.L1889:
	incl	40(%rsp)
	movl	16(%r15), %edx
	addq	$8, %r14
	movl	40(%rsp), %eax
	movl	$0, 16(%rdi)
	addl	%r13d, 20(%r15)
	movq	%rbx, 48(%rsp)
	movl	%esi, 60(%rsp)
	cmpl	%edx, %eax
	jl	.L1894
.L1932:
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.L1872
	movq	%rax, %rcx
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	_ZN5ImGui7MemFreeEPv
.L1900:
	movl	%r13d, 60(%rsp)
.L1878:
	movslq	60(%rsp), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %rcx
.LEHB3:
	call	_ZN5ImGui8MemAllocEy
	movq	48(%rsp), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	je	.L1879
	movq	%rbp, %rax
	movq	%rbx, %rcx
	salq	$4, %rax
	leaq	(%rax,%rbp,4), %r8
	call	memcpy
.L1879:
	movq	48(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
.LEHE3:
	movl	16(%rdi), %eax
	movq	%rbx, %rdx
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	movq	%rbx, 48(%rsp)
	leaq	80(%rdx), %rbx
	testl	%eax, %eax
	jg	.L1924
.L1934:
	movq	40(%rdi), %rbx
	jmp	.L1881
.L1872:
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
.L1933:
	movl	%eax, 60(%rsp)
	jmp	.L1878
.L1904:
	movq	48(%rsp), %rdx
.L1892:
	testq	%rdx, %rdx
	je	.L1897
	movq	%rdx, %rcx
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui7MemFreeEPv
	movq	40(%rsp), %rax
.L1897:
	movq	%rax, %rcx
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L1906:
.L1928:
	movq	%rbx, 48(%rsp)
	movq	%rbx, %rdx
	jmp	.L1892
.L1905:
	jmp	.L1928
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA449:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE449-.LLSDACSB449
.LLSDACSB449:
	.uleb128 .LEHB0-.LFB449
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L1904-.LFB449
	.uleb128 0
	.uleb128 .LEHB1-.LFB449
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L1906-.LFB449
	.uleb128 0
	.uleb128 .LEHB2-.LFB449
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L1905-.LFB449
	.uleb128 0
	.uleb128 .LEHB3-.LFB449
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L1904-.LFB449
	.uleb128 0
	.uleb128 .LEHB4-.LFB449
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE449:
	.text
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawData14ScaleClipRectsERK6ImVec2
	.def	_ZN10ImDrawData14ScaleClipRectsERK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawData14ScaleClipRectsERK6ImVec2
_ZN10ImDrawData14ScaleClipRectsERK6ImVec2:
.LFB450:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movl	16(%rcx), %r11d
	testl	%r11d, %r11d
	jle	.L1939
	movq	8(%rcx), %rbx
	xorl	%r10d, %r10d
	.p2align 4,,7
.L1943:
	movq	(%rbx,%r10,8), %r9
	movl	(%r9), %eax
	testl	%eax, %eax
	jle	.L1944
	leal	-1(%rax), %r8d
	movss	4(%rdx), %xmm1
	movss	(%rdx), %xmm0
	xorl	%ecx, %ecx
	incq	%r8
	movq	%r8, %rax
	salq	$6, %r8
	salq	$4, %rax
	subq	%rax, %r8
	.p2align 4,,7
.L1945:
	movq	%rcx, %rax
	addq	8(%r9), %rax
	addq	$48, %rcx
	cmpq	%r8, %rcx
	movss	16(%rax), %xmm2
	movss	12(%rax), %xmm3
	mulss	%xmm1, %xmm2
	movss	8(%rax), %xmm4
	mulss	%xmm0, %xmm3
	movss	4(%rax), %xmm5
	mulss	%xmm1, %xmm4
	mulss	%xmm0, %xmm5
	movss	%xmm2, 16(%rax)
	movss	%xmm3, 12(%rax)
	movss	%xmm4, 8(%rax)
	movss	%xmm5, 4(%rax)
	jne	.L1945
.L1944:
	incq	%r10
	cmpl	%r10d, %r11d
	jg	.L1943
.L1939:
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImFontConfigC2Ev
	.def	_ZN12ImFontConfigC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImFontConfigC2Ev
_ZN12ImFontConfigC2Ev:
.LFB452:
	.seh_endprologue
	xorps	%xmm0, %xmm0
	movq	$0, (%rcx)
	movl	$0, 8(%rcx)
	movb	$1, 12(%rcx)
	movl	$0, 16(%rcx)
	movss	%xmm0, 40(%rcx)
	movl	$3, 24(%rcx)
	movl	$1, 28(%rcx)
	movss	%xmm0, 36(%rcx)
	movb	$0, 32(%rcx)
	movq	$0, 56(%rcx)
	movss	%xmm0, 48(%rcx)
	movb	$0, 64(%rcx)
	movss	%xmm0, 44(%rcx)
	movq	$0, 104(%rcx)
	movss	%xmm0, 20(%rcx)
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
.LFB455:
	.seh_endprologue
	xorps	%xmm0, %xmm0
	movl	$0, 52(%rcx)
	movl	$0, 48(%rcx)
	movq	$0, 56(%rcx)
	movl	$0, 68(%rcx)
	movss	%xmm0, 40(%rcx)
	movl	$0, 64(%rcx)
	movq	$0, 72(%rcx)
	movss	%xmm0, 36(%rcx)
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movl	$0, 32(%rcx)
	movl	$0, 28(%rcx)
	movl	$0, 24(%rcx)
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
.LFB460:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	64(%rcx), %edx
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	%rcx, %rbx
	movq	72(%rcx), %rax
	testl	%edx, %edx
	jg	.L1957
	jmp	.L1956
	.p2align 4,,7
.L1953:
	cmpb	$0, 12(%r8)
	je	.L1964
.L1966:
	.p2align 4,,6
	call	_ZN5ImGui7MemFreeEPv
	movl	64(%rbx), %edx
	cmpl	%edx, %esi
	jge	.L1978
.L1955:
	movq	72(%rbx), %rax
	movq	$0, (%rax,%rdi)
	movq	72(%rbx), %rax
.L1964:
	incl	%esi
	addq	$112, %rdi
	cmpl	%edx, %esi
	jge	.L1956
.L1957:
	leaq	(%rax,%rdi), %r8
	movq	(%r8), %rcx
	testq	%rcx, %rcx
	je	.L1964
	cmpl	%edx, %esi
	jl	.L1953
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	72(%rbx), %rax
	leaq	(%rax,%rdi), %rdx
	cmpb	$0, 12(%rdx)
	jne	.L1954
	movl	64(%rbx), %edx
	incl	%esi
	addq	$112, %rdi
	cmpl	%edx, %esi
	jl	.L1957
	.p2align 4,,7
.L1956:
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.L1950
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	56(%rbx), %r9
	jmp	.L1962
	.p2align 4,,7
.L1959:
	movslq	64(%rbx), %rdx
	movq	%rdx, %r11
	salq	$7, %rdx
	salq	$4, %r11
	subq	%r11, %rdx
	addq	%rax, %rdx
	cmpq	%rdx, %r10
	jnb	.L1969
.L1967:
	movq	$0, 80(%r8)
.L1961:
	movq	56(%rbx), %r9
	movq	(%r9,%rdi), %rax
	movw	$0, 78(%rax)
	movq	72(%rbx), %rax
.L1969:
	incl	%esi
	addq	$8, %rdi
	cmpl	%ecx, %esi
	jge	.L1950
.L1962:
	movq	(%r9,%rdi), %r8
	movq	80(%r8), %r10
	cmpq	%rax, %r10
	jb	.L1969
	cmpl	%ecx, %esi
	jl	.L1959
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movslq	64(%rbx), %rdx
	movq	56(%rbx), %r9
	movq	72(%rbx), %rax
	movq	(%r9,%rdi), %r8
	movq	%rdx, %rcx
	salq	$7, %rdx
	salq	$4, %rcx
	subq	%rcx, %rdx
	movl	48(%rbx), %ecx
	addq	%rax, %rdx
	cmpq	%rdx, 80(%r8)
	jnb	.L1969
	cmpl	%ecx, %esi
	jl	.L1967
	leaq	.LC36(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	call	_assert
	movq	56(%rbx), %rax
	movl	48(%rbx), %ecx
	movq	(%rax,%rdi), %rax
	cmpl	%ecx, %esi
	movq	$0, 80(%rax)
	jl	.L1961
	leaq	.LC36(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	movl	$856, %r8d
	call	_assert
	movl	48(%rbx), %ecx
	jmp	.L1961
	.p2align 4,,7
.L1954:
	cmpl	64(%rbx), %esi
	jl	.L1979
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	72(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movl	64(%rbx), %edx
	cmpl	%edx, %esi
	jl	.L1955
.L1978:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movl	64(%rbx), %edx
	jmp	.L1955
	.p2align 4,,7
.L1950:
	testq	%rax, %rax
	je	.L1948
	movl	$0, 68(%rbx)
	movl	$0, 64(%rbx)
	movq	%rax, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 72(%rbx)
.L1948:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L1979:
	movq	(%rdx), %rcx
	jmp	.L1966
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas12ClearTexDataEv
	.def	_ZN11ImFontAtlas12ClearTexDataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas12ClearTexDataEv
_ZN11ImFontAtlas12ClearTexDataEv:
.LFB461:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L1981
	call	_ZN5ImGui7MemFreeEPv
.L1981:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1982
	call	_ZN5ImGui7MemFreeEPv
.L1982:
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
.LFB462:
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
	movl	48(%rcx), %eax
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	movq	%rcx, %rsi
	testl	%eax, %eax
	jg	.L2014
	jmp	.L1998
	.p2align 4,,7
.L1997:
	movq	56(%rsi), %rax
	incl	%edi
	movq	(%rax,%rbp), %rcx
	addq	$8, %rbp
.LEHB5:
	call	_ZN5ImGui7MemFreeEPv
.LEHE5:
	cmpl	%edi, 48(%rsi)
	jle	.L1998
.L2014:
	movq	56(%rsi), %rax
	movq	(%rax,%rbp), %rbx
	movq	24(%rbx), %rcx
	movl	$0x00000000, (%rbx)
	movl	$0x00000000, 8(%rbx)
	movl	$0x3f800000, 12(%rbx)
	testq	%rcx, %rcx
	je	.L1993
	movl	$0, 20(%rbx)
	movl	$0, 16(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 24(%rbx)
.L1993:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1994
	movl	$0, 36(%rbx)
	movl	$0, 32(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 40(%rbx)
.L1994:
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1995
	movl	$0, 52(%rbx)
	movl	$0, 48(%rbx)
	call	_ZN5ImGui7MemFreeEPv
.L1995:
	movq	40(%rbx), %rcx
	movq	$0, 64(%rbx)
	movl	$0x00000000, 72(%rbx)
	movw	$0, 78(%rbx)
	movq	$0, 80(%rbx)
	movq	$0, 88(%rbx)
	testq	%rcx, %rcx
	movl	$0x00000000, 100(%rbx)
	movl	$0x00000000, 96(%rbx)
	movl	$0, 104(%rbx)
	je	.L2001
	call	_ZN5ImGui7MemFreeEPv
.L2001:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L1996
	call	_ZN5ImGui7MemFreeEPv
.L1996:
	cmpl	%edi, 48(%rsi)
	jg	.L1997
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
.LEHB6:
	call	_assert
	jmp	.L1997
	.p2align 4,,7
.L1998:
	movq	56(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L1989
	movl	$0, 52(%rsi)
	movl	$0, 48(%rsi)
	call	_ZN5ImGui7MemFreeEPv
.LEHE6:
	movq	$0, 56(%rsi)
.L1989:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA462:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE462-.LLSDACSB462
.LLSDACSB462:
	.uleb128 .LEHB5-.LFB462
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB462
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE462:
	.text
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlasD2Ev
	.def	_ZN11ImFontAtlasD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlasD2Ev
_ZN11ImFontAtlasD2Ev:
.LFB458:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZN11ImFontAtlas14ClearInputDataEv
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2016
	call	_ZN5ImGui7MemFreeEPv
.L2016:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2017
	call	_ZN5ImGui7MemFreeEPv
.L2017:
	movq	%rbx, %rcx
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	call	_ZN11ImFontAtlas10ClearFontsEv
	movq	72(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2018
	call	_ZN5ImGui7MemFreeEPv
.L2018:
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2015
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,7
.L2015:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA458:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE458-.LLSDACSB458
.LLSDACSB458:
.LLSDACSE458:
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
.LFB463:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZN11ImFontAtlas14ClearInputDataEv
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2030
	call	_ZN5ImGui7MemFreeEPv
.L2030:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2031
	call	_ZN5ImGui7MemFreeEPv
.L2031:
	movq	%rbx, %rcx
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN11ImFontAtlas10ClearFontsEv
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC46:
	.ascii "..-         -XXXXXXX-    X    -           X           -XXXXXXX          -          XXXXXXX..-         -X.....X-   X.X   -          X.X          -X.....X          -          X.....X---         -XXX.XXX-  X...X  -         X...X         -X....X           -           X....XX           -  X.X  - X.....X -        X.....X        -X...X            -            X...XXX          -  X.X  -X.......X-       X.......X       -X..X.X           -           X.X..XX.X         -  X.X  -XXXX.XXXX-       XXXX.XXXX       -X.X X.X          -          X.X X.XX..X        -  X.X  -   X.X   -          X.X          -XX   X.X         -         X.X   XXX...X       -  X.X  -   X.X   -    XX    X.X    XX    -      X.X        -        X.X      X....X      -  X.X  -   X.X   -   X.X    X.X    X.X   -       X.X       -       X.X       X.....X     -  X.X  -   X.X   -  X..X    X.X    X..X  -        X.X      -      X.X        X......X    -  X.X  -   X.X   - X...XXXXXX.XXXXXX...X -         X.X   XX-XX   X.X         X.......X   -  X.X  -   X.X   -X.....................X-          X.X X.X-X.X X.X          X........X  -  X.X  -   X.X   - X...XXXXXX.XXXXXX...X -           X.X..X-X..X.X           X.........X -XXX.XXX-   X.X   -  X..X    X.X    X..X  -            X...X-X...X            X..........X-X.....X-   X.X   -   X.X    X.X    X.X   -           X....X-X....X           X......XXXXX-XXXXXXX-   X.X   -    XX    X.X    XX    -          X.....X-X.....X          X...X..X    ---------   X.X   -          X.X          -          XXXXXXX-XXXXXXX          X..X X..X   -       -XXXX.XXXX-       XXXX.XXXX       ------------------------------------X.X  X..X   -       -X.......X-       X.......X       -    XX           XX    -           XX    X..X  -       - X.....X -        X.....X        -   X.X           X.X   -                 X..X          -  X...X  -         X...X         -  X..X           X..X  -                  XX           -   X.X   -          X.X          - X...XXXXXXXXXXXXX...X -           ------------        "
	.ascii "-    X    -           X           -X.....................X-                               ----------------------------------- X...XXXXXXXXXXXXX...X -                                                                 -  X..X           X..X  -                                                                 -   X.X           X.X   -                                                                 -    XX           XX    -           \0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas19RenderCustomTexDataEiPv
	.def	_ZN11ImFontAtlas19RenderCustomTexDataEiPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas19RenderCustomTexDataEiPv
_ZN11ImFontAtlas19RenderCustomTexDataEiPv:
.LFB475:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$2792, %rsp
	.seh_stackalloc	2792
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
	movaps	%xmm13, 2752(%rsp)
	.seh_savexmm	%xmm13, 2752
	movaps	%xmm14, 2768(%rsp)
	.seh_savexmm	%xmm14, 2768
	.seh_endprologue
	leaq	.LC46(%rip), %rsi
	movq	%rcx, %rbx
	leaq	208(%rsp), %rdi
	movl	$303, %ecx
	rep movsq
	testl	%edx, %edx
	movq	%r8, %rbp
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	movzwl	2428+.LC46(%rip), %ecx
	movw	%cx, 4(%rdi)
	movzbl	2430+.LC46(%rip), %ecx
	movb	%cl, 6(%rdi)
	je	.L2058
	decl	%edx
	je	.L2059
.L2038:
	movaps	2640(%rsp), %xmm6
	movaps	2656(%rsp), %xmm7
	movaps	2672(%rsp), %xmm8
	movaps	2688(%rsp), %xmm9
	movaps	2704(%rsp), %xmm10
	movaps	2720(%rsp), %xmm11
	movaps	2736(%rsp), %xmm12
	movaps	2752(%rsp), %xmm13
	movaps	2768(%rsp), %xmm14
	addq	$2792, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L2059:
	movl	(%r8), %eax
	testl	%eax, %eax
	jle	.L2060
.L2046:
	movq	8(%rbp), %r8
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.p2align 4,,7
.L2049:
	xorl	%ecx, %ecx
	jmp	.L2048
	.p2align 4,,7
.L2062:
	movb	$0, (%rax)
	movslq	%edx, %rax
	addq	8(%rbx), %rax
	cmpb	$88, %r11b
	sete	%dl
	incl	%ecx
	negl	%edx
	cmpl	$90, %ecx
	movb	%dl, (%rax)
	je	.L2061
.L2048:
	movzwl	10(%r8), %eax
	leal	(%r9,%rcx), %r11d
	movzwl	8(%r8), %edx
	movslq	%r11d, %r11
	movzbl	208(%rsp,%r11), %r11d
	addl	%r10d, %eax
	addl	%ecx, %edx
	imull	24(%rbx), %eax
	addl	%edx, %eax
	leal	91(%rax), %edx
	cltq
	addq	8(%rbx), %rax
	cmpb	$46, %r11b
	jne	.L2062
	movb	$-1, (%rax)
	movslq	%edx, %rax
	addq	8(%rbx), %rax
	incl	%ecx
	xorl	%edx, %edx
	cmpl	$90, %ecx
	movb	%dl, (%rax)
	jne	.L2048
.L2061:
	addl	$90, %r9d
	incl	%r10d
	cmpl	$2430, %r9d
	jne	.L2049
	cvtsi2ss	24(%rbx), %xmm2
	movzwl	8(%r8), %edx
	movss	.LC24(%rip), %xmm0
	movzwl	10(%r8), %eax
	movaps	%xmm0, %xmm5
	cvtsi2ss	28(%rbx), %xmm1
	movl	$0x00000000, 32(%rsp)
	movss	.LC1(%rip), %xmm3
	movl	$0x40400000, 36(%rsp)
	cvtsi2ss	%edx, %xmm6
	movl	$0x00000000, 48(%rsp)
	movss	.LC56(%rip), %xmm4
	movl	$0x00000000, 52(%rsp)
	divss	%xmm2, %xmm0
	movss	.LC48(%rip), %xmm9
	movss	.LC49(%rip), %xmm12
	movl	$0x41500000, 56(%rsp)
	movss	.LC51(%rip), %xmm8
	movl	$0x00000000, 60(%rsp)
	movss	.LC52(%rip), %xmm11
	movl	$0x40800000, 72(%rsp)
	movss	%xmm9, 40(%rsp)
	movl	$0x41000000, 76(%rsp)
	movl	$0x41f80000, 80(%rsp)
	movss	%xmm12, 44(%rsp)
	movl	$0x00000000, 84(%rsp)
	movl	$0x41300000, 96(%rsp)
	movss	%xmm8, 64(%rsp)
	movl	$0x41300000, 100(%rsp)
	movss	%xmm11, 68(%rsp)
	movl	$0x41a80000, 104(%rsp)
	movss	%xmm4, 88(%rsp)
	movaps	%xmm6, %xmm2
	movss	%xmm4, 92(%rsp)
	addss	%xmm3, %xmm2
	divss	%xmm1, %xmm5
	movaps	%xmm0, %xmm14
	mulss	%xmm0, %xmm2
	movaps	%xmm5, %xmm1
	movss	%xmm2, 36(%rbx)
	cvtsi2ss	%eax, %xmm2
	movaps	%xmm1, %xmm13
	addss	%xmm2, %xmm3
	mulss	%xmm5, %xmm3
	movss	%xmm3, 40(%rbx)
	movl	$0x00000000, 108(%rsp)
	movq	.refptr.GImGui(%rip), %rax
	movss	36(%rsp), %xmm7
	movq	48(%rsp), %rdx
	addss	%xmm2, %xmm7
	movss	32(%rsp), %xmm10
	movq	(%rax), %rax
	addss	%xmm6, %xmm10
	movss	%xmm4, 116(%rsp)
	movss	.LC64(%rip), %xmm5
	movl	$0x40a00000, 120(%rsp)
	movss	.LC59(%rip), %xmm3
	mulss	%xmm7, %xmm13
	addss	%xmm12, %xmm7
	movss	%xmm12, 6564(%rax)
	movss	%xmm3, 112(%rsp)
	movl	$0x41300000, 124(%rsp)
	movl	$0x425c0000, 128(%rsp)
	movss	%xmm4, 136(%rsp)
	movl	$0x41900000, 132(%rsp)
	mulss	%xmm10, %xmm14
	movss	%xmm3, 140(%rsp)
	movl	$0x41300000, 144(%rsp)
	mulss	%xmm1, %xmm7
	movss	%xmm3, 168(%rsp)
	movl	$0x40a00000, 148(%rsp)
	movss	%xmm3, 172(%rsp)
	movl	$0x42920000, 152(%rsp)
	movss	%xmm3, 192(%rsp)
	movl	$0x00000000, 156(%rsp)
	movss	%xmm3, 196(%rsp)
	movl	$0x425c0000, 176(%rsp)
	movaps	%xmm7, %xmm12
	movaps	%xmm9, %xmm7
	movss	%xmm9, 6560(%rax)
	movl	$0x00000000, 180(%rsp)
	addss	%xmm10, %xmm7
	movss	%xmm5, 160(%rsp)
	movl	$0, 6548(%rax)
	movss	%xmm5, 164(%rsp)
	movss	%xmm5, 184(%rsp)
	movss	%xmm5, 188(%rsp)
	movq	%rdx, 6552(%rax)
	mulss	%xmm0, %xmm7
	movss	%xmm14, 6568(%rax)
	movq	72(%rsp), %rdx
	movaps	%xmm0, %xmm14
	movss	%xmm12, 6588(%rax)
	movss	%xmm12, 6596(%rax)
	movaps	%xmm1, %xmm12
	movss	%xmm13, 6572(%rax)
	movq	%rdx, 6604(%rax)
	movss	%xmm7, 6584(%rax)
	movq	96(%rsp), %rdx
	movss	.LC65(%rip), %xmm7
	addss	%xmm7, %xmm10
	movss	%xmm13, 6580(%rax)
	movl	$1, 6600(%rax)
	movss	%xmm11, 6616(%rax)
	movaps	%xmm0, %xmm13
	movss	%xmm8, 6612(%rax)
	movq	%rdx, 6656(%rax)
	movss	%xmm4, 6664(%rax)
	movl	$2, 6652(%rax)
	addss	%xmm10, %xmm9
	mulss	%xmm10, %xmm14
	movss	%xmm4, 6668(%rax)
	movss	60(%rsp), %xmm10
	addss	%xmm2, %xmm10
	mulss	%xmm0, %xmm9
	movss	%xmm14, 6576(%rax)
	mulss	%xmm10, %xmm12
	addss	%xmm11, %xmm10
	movaps	%xmm8, %xmm11
	movss	%xmm9, 6592(%rax)
	movss	56(%rsp), %xmm9
	addss	%xmm6, %xmm9
	mulss	%xmm1, %xmm10
	movss	%xmm12, 6624(%rax)
	movss	%xmm12, 6632(%rax)
	mulss	%xmm9, %xmm13
	addss	%xmm9, %xmm11
	movss	%xmm10, 6640(%rax)
	addss	%xmm7, %xmm9
	movss	%xmm10, 6648(%rax)
	movaps	%xmm0, %xmm10
	mulss	%xmm0, %xmm11
	movss	%xmm13, 6620(%rax)
	addss	%xmm9, %xmm8
	movss	%xmm11, 6636(%rax)
	movaps	%xmm0, %xmm11
	mulss	%xmm0, %xmm8
	mulss	%xmm9, %xmm11
	movss	84(%rsp), %xmm9
	addss	%xmm2, %xmm9
	movss	%xmm8, 6644(%rax)
	movss	80(%rsp), %xmm8
	addss	%xmm6, %xmm8
	movss	%xmm11, 6628(%rax)
	addss	%xmm4, %xmm9
	movaps	%xmm0, %xmm11
	mulss	%xmm8, %xmm10
	mulss	%xmm1, %xmm9
	movss	%xmm10, 6672(%rax)
	movaps	%xmm4, %xmm10
	movss	%xmm12, 6676(%rax)
	movq	120(%rsp), %rdx
	movl	$3, 6704(%rax)
	addss	%xmm8, %xmm10
	movss	%xmm9, 6692(%rax)
	movl	$4, 6756(%rax)
	addss	%xmm7, %xmm8
	movss	%xmm9, 6700(%rax)
	movss	108(%rsp), %xmm9
	addss	%xmm2, %xmm9
	movss	%xmm3, 6716(%rax)
	movq	%rdx, 6708(%rax)
	mulss	%xmm0, %xmm10
	movss	%xmm3, 6772(%rax)
	movq	144(%rsp), %rdx
	movss	%xmm4, 6720(%rax)
	movss	%xmm4, 6768(%rax)
	addss	%xmm4, %xmm9
	movq	%rdx, 6760(%rax)
	movss	%xmm12, 6684(%rax)
	movss	%xmm10, 6688(%rax)
	movaps	%xmm0, %xmm10
	movss	%xmm12, 6728(%rax)
	mulss	%xmm8, %xmm10
	addss	%xmm4, %xmm8
	movss	%xmm12, 6736(%rax)
	mulss	%xmm1, %xmm9
	mulss	%xmm0, %xmm8
	movss	%xmm10, 6680(%rax)
	movaps	%xmm0, %xmm10
	movss	%xmm9, 6744(%rax)
	movss	%xmm9, 6752(%rax)
	movss	132(%rsp), %xmm9
	movss	%xmm8, 6696(%rax)
	addss	%xmm2, %xmm9
	movss	104(%rsp), %xmm8
	addss	%xmm6, %xmm8
	mulss	%xmm8, %xmm10
	movss	%xmm10, 6724(%rax)
	movaps	%xmm8, %xmm10
	addss	%xmm7, %xmm8
	addss	%xmm3, %xmm10
	mulss	%xmm0, %xmm10
	movss	%xmm10, 6740(%rax)
	movaps	%xmm0, %xmm10
	mulss	%xmm8, %xmm10
	addss	%xmm3, %xmm8
	addss	%xmm9, %xmm3
	mulss	%xmm0, %xmm8
	movss	%xmm10, 6732(%rax)
	movaps	%xmm1, %xmm10
	mulss	%xmm1, %xmm3
	mulss	%xmm9, %xmm10
	movss	%xmm8, 6748(%rax)
	movss	128(%rsp), %xmm8
	addss	%xmm6, %xmm8
	movss	%xmm3, 6796(%rax)
	movss	%xmm10, 6780(%rax)
	movaps	%xmm8, %xmm9
	mulss	%xmm8, %xmm11
	addss	%xmm7, %xmm8
	addss	%xmm4, %xmm9
	movss	%xmm11, 6776(%rax)
	addss	%xmm8, %xmm4
	mulss	%xmm0, %xmm9
	mulss	%xmm0, %xmm4
	movss	%xmm9, 6792(%rax)
	movaps	%xmm0, %xmm9
	mulss	%xmm8, %xmm9
	movaps	%xmm0, %xmm8
	movss	%xmm9, 6784(%rax)
	movq	168(%rsp), %rdx
	movl	$5, 6808(%rax)
	movss	%xmm4, 6800(%rax)
	movl	$6, 6860(%rax)
	movss	156(%rsp), %xmm4
	addss	%xmm2, %xmm4
	movss	%xmm3, 6804(%rax)
	movq	%rdx, 6812(%rax)
	addss	180(%rsp), %xmm2
	movss	152(%rsp), %xmm3
	addss	%xmm6, %xmm3
	movq	192(%rsp), %rdx
	movss	%xmm10, 6788(%rax)
	addss	176(%rsp), %xmm6
	movss	%xmm5, 6820(%rax)
	addss	%xmm5, %xmm4
	movss	%xmm5, 6824(%rax)
	movss	%xmm12, 6832(%rax)
	movq	%rdx, 6864(%rax)
	mulss	%xmm3, %xmm8
	movss	%xmm12, 6840(%rax)
	addss	%xmm5, %xmm2
	movss	%xmm5, 6872(%rax)
	mulss	%xmm1, %xmm4
	movss	%xmm5, 6876(%rax)
	movss	%xmm11, 6880(%rax)
	movss	%xmm8, 6828(%rax)
	movaps	%xmm3, %xmm8
	mulss	%xmm2, %xmm1
	movaps	%xmm6, %xmm2
	addss	%xmm5, %xmm8
	movss	%xmm4, 6848(%rax)
	addss	%xmm5, %xmm2
	movss	%xmm4, 6856(%rax)
	addss	%xmm7, %xmm3
	movss	%xmm12, 6884(%rax)
	addss	%xmm7, %xmm6
	movss	%xmm1, 6900(%rax)
	mulss	%xmm0, %xmm8
	movss	%xmm12, 6892(%rax)
	mulss	%xmm0, %xmm2
	movss	%xmm8, 6844(%rax)
	movaps	%xmm0, %xmm8
	movss	%xmm2, 6896(%rax)
	movaps	%xmm0, %xmm2
	mulss	%xmm3, %xmm8
	addss	%xmm5, %xmm3
	mulss	%xmm6, %xmm2
	addss	%xmm5, %xmm6
	mulss	%xmm0, %xmm3
	movss	%xmm8, 6836(%rax)
	mulss	%xmm6, %xmm0
	movss	%xmm2, 6888(%rax)
	movss	%xmm3, 6852(%rax)
	movss	%xmm0, 6904(%rax)
	movss	%xmm1, 6908(%rax)
	jmp	.L2038
.L2058:
	movslq	(%r8), %rax
	movq	$0, 32(%rsp)
	cmpl	4(%r8), %eax
	movq	$0, 40(%rsp)
	movw	$181, 36(%rsp)
	movw	$28, 38(%rsp)
	je	.L2040
	movq	8(%r8), %rsi
	leal	1(%rax), %edx
.L2041:
	movq	32(%rsp), %rcx
	movq	40(%rsp), %rbx
	salq	$4, %rax
	movl	%edx, 0(%rbp)
	movq	%rcx, (%rsi,%rax)
	movq	%rbx, 8(%rsi,%rax)
	jmp	.L2038
.L2060:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L2046
.L2040:
	testl	%eax, %eax
	leal	1(%rax), %edx
	movl	$8, %ebx
	je	.L2042
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	addl	%eax, %ebx
.L2042:
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%eax, %ebx
	jg	.L2043
	movq	8(%rbp), %rsi
	jmp	.L2041
.L2043:
	movslq	%ebx, %rcx
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rbp), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	je	.L2044
	movslq	0(%rbp), %r8
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rbp), %rdx
.L2044:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movslq	0(%rbp), %rax
	movq	%rsi, 8(%rbp)
	movl	%ebx, 4(%rbp)
	leal	1(%rax), %edx
	jmp	.L2041
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas21GetGlyphRangesDefaultEv
	.def	_ZN11ImFontAtlas21GetGlyphRangesDefaultEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas21GetGlyphRangesDefaultEv
_ZN11ImFontAtlas21GetGlyphRangesDefaultEv:
.LFB476:
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
.LFB477:
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
.LFB478:
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
.LFB479:
	.seh_endprologue
	cmpb	$0, _ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE20full_ranges_unpacked(%rip)
	jne	.L2067
	movq	_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11base_ranges(%rip), %rax
	movq	8+_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11base_ranges(%rip), %rdx
	leaq	_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE19offsets_from_0x4E00(%rip), %r9
	leaq	7760+_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges(%rip), %r10
	xorl	%ecx, %ecx
	movq	%r9, %r8
	movq	%rax, _ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges(%rip)
	leaq	16+_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges(%rip), %rax
	movq	%rdx, 8+_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges(%rip)
	movl	$19968, %edx
	.p2align 4,,7
.L2068:
	movswl	(%r8), %r11d
	prefetcht0	40(%r8)
	prefetcht0	82(%rax)
	prefetcht0	80(%rax)
	addq	$64, %rax
	addl	$16, %ecx
	addq	$32, %r8
	leal	1(%rdx,%r11), %edx
	movswl	-30(%r8), %r11d
	movw	%dx, -62(%rax)
	movw	%dx, -64(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-28(%r8), %r11d
	movw	%dx, -58(%rax)
	movw	%dx, -60(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-26(%r8), %r11d
	movw	%dx, -54(%rax)
	movw	%dx, -56(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-24(%r8), %r11d
	movw	%dx, -50(%rax)
	movw	%dx, -52(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-22(%r8), %r11d
	movw	%dx, -46(%rax)
	movw	%dx, -48(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-20(%r8), %r11d
	movw	%dx, -42(%rax)
	movw	%dx, -44(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-18(%r8), %r11d
	movw	%dx, -38(%rax)
	movw	%dx, -40(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-16(%r8), %r11d
	movw	%dx, -34(%rax)
	movw	%dx, -36(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-14(%r8), %r11d
	movw	%dx, -30(%rax)
	movw	%dx, -32(%rax)
	leal	1(%rdx,%r11), %edx
	movw	%dx, -26(%rax)
	movw	%dx, -28(%rax)
	movswl	-12(%r8), %r11d
	leal	1(%rdx,%r11), %edx
	movswl	-10(%r8), %r11d
	movw	%dx, -22(%rax)
	movw	%dx, -24(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-8(%r8), %r11d
	movw	%dx, -18(%rax)
	movw	%dx, -20(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-6(%r8), %r11d
	movw	%dx, -14(%rax)
	movw	%dx, -16(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-4(%r8), %r11d
	movw	%dx, -10(%rax)
	movw	%dx, -12(%rax)
	leal	1(%rdx,%r11), %edx
	movswl	-2(%r8), %r11d
	movw	%dx, -6(%rax)
	movw	%dx, -8(%rax)
	leal	1(%rdx,%r11), %edx
	movw	%dx, -2(%rax)
	movw	%dx, -4(%rax)
	cmpq	%r10, %rax
	jne	.L2068
	.p2align 4,,7
.L2069:
	movslq	%ecx, %r8
	incl	%ecx
	addq	$4, %rax
	movswl	(%r9,%r8,2), %r8d
	leal	1(%rdx,%r8), %edx
	movw	%dx, -2(%rax)
	movw	%dx, -4(%rax)
	cmpl	$1946, %ecx
	jne	.L2069
	movw	$0, 7800+_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges(%rip)
	movb	$1, _ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE20full_ranges_unpacked(%rip)
.L2067:
	leaq	_ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges(%rip), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas22GetGlyphRangesCyrillicEv
	.def	_ZN11ImFontAtlas22GetGlyphRangesCyrillicEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas22GetGlyphRangesCyrillicEv
_ZN11ImFontAtlas22GetGlyphRangesCyrillicEv:
.LFB480:
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
.LFB481:
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
.LFB483:
	.seh_endprologue
	xorps	%xmm0, %xmm0
	movss	.LC24(%rip), %xmm1
	movl	$0, 20(%rcx)
	movl	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movss	%xmm1, 4(%rcx)
	movss	%xmm0, 8(%rcx)
	movl	$0, 36(%rcx)
	movl	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movss	%xmm0, (%rcx)
	movl	$0, 52(%rcx)
	movss	%xmm1, 12(%rcx)
	movl	$0, 48(%rcx)
	movss	%xmm0, 72(%rcx)
	movq	$0, 56(%rcx)
	movss	%xmm0, 100(%rcx)
	movw	$63, 76(%rcx)
	movss	%xmm0, 96(%rcx)
	movq	$0, 64(%rcx)
	movw	$0, 78(%rcx)
	movq	$0, 80(%rcx)
	movq	$0, 88(%rcx)
	movl	$0, 104(%rcx)
	ret
	.seh_endproc
	.globl	_ZN6ImFontC1Ev
	.def	_ZN6ImFontC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN6ImFontC1Ev,_ZN6ImFontC2Ev
	.section .rdata,"dr"
	.align 8
.LC66:
	.ascii "font_cfg->FontData != __null && font_cfg->FontDataSize > 0\0"
.LC67:
	.ascii "font_cfg->SizePixels > 0.0f\0"
.LC68:
	.ascii "!Fonts.empty()\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig
	.def	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig
_ZN11ImFontAtlas7AddFontEPK12ImFontConfig:
.LFB466:
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
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	je	.L2076
	movl	8(%rdx), %edx
	testl	%edx, %edx
	jle	.L2076
	movss	20(%rbp), %xmm0
	ucomiss	.LC28(%rip), %xmm0
	jbe	.L2113
.L2078:
	cmpb	$0, 64(%rbp)
	je	.L2114
.L2079:
	movl	48(%rbx), %eax
	testl	%eax, %eax
	je	.L2115
.L2085:
	movslq	64(%rbx), %rdx
	cmpl	68(%rbx), %edx
	je	.L2086
	movq	72(%rbx), %rax
	leal	1(%rdx), %r8d
.L2087:
	movq	%rdx, %rcx
	salq	$7, %rdx
	movl	%r8d, 64(%rbx)
	salq	$4, %rcx
	movq	%rbp, %rsi
	subq	%rcx, %rdx
	movl	$14, %ecx
	addq	%rdx, %rax
	movq	%rax, %rdi
	rep movsq
	movslq	64(%rbx), %rax
	testl	%eax, %eax
	jle	.L2116
.L2091:
	movq	%rax, %rdx
	salq	$7, %rax
	salq	$4, %rdx
	subq	%rdx, %rax
	movq	72(%rbx), %rdx
	leaq	-112(%rdx,%rax), %rsi
	cmpq	$0, 104(%rsi)
	je	.L2117
.L2092:
	cmpb	$0, 12(%rsi)
	jne	.L2094
	movslq	8(%rsi), %rcx
	call	_ZN5ImGui8MemAllocEy
	movslq	8(%rsi), %r8
	movq	%rax, (%rsi)
	movq	%rax, %rcx
	movq	0(%rbp), %rdx
	movb	$1, 12(%rsi)
	call	memcpy
.L2094:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2095
	call	_ZN5ImGui7MemFreeEPv
.L2095:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2096
	call	_ZN5ImGui7MemFreeEPv
.L2096:
	movq	104(%rsi), %rax
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L2086:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L2118
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %edi
	jg	.L2089
.L2119:
	movq	72(%rbx), %rax
	jmp	.L2087
	.p2align 4,,7
.L2076:
	leaq	.LC5(%rip), %rdx
	leaq	.LC66(%rip), %rcx
	movl	$1152, %r8d
	call	_assert
	movss	20(%rbp), %xmm0
	ucomiss	.LC28(%rip), %xmm0
	ja	.L2078
.L2113:
	leaq	.LC5(%rip), %rdx
	leaq	.LC67(%rip), %rcx
	movl	$1153, %r8d
	call	_assert
	cmpb	$0, 64(%rbp)
	jne	.L2079
	.p2align 4,,7
.L2114:
	movl	$112, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	%rax, %rcx
	movq	%rax, %rdi
	call	_ZN6ImFontC1Ev
	movslq	48(%rbx), %rdx
	cmpl	52(%rbx), %edx
	je	.L2080
	movq	56(%rbx), %rax
	leal	1(%rdx), %r8d
.L2081:
	movl	%r8d, 48(%rbx)
	movq	%rdi, (%rax,%rdx,8)
	jmp	.L2085
	.p2align 4,,7
.L2115:
	leaq	.LC5(%rip), %rdx
	leaq	.LC68(%rip), %rcx
	movl	$1164, %r8d
	call	_assert
	jmp	.L2085
	.p2align 4,,7
.L2118:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %edi
	jle	.L2119
.L2089:
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rcx
	salq	$4, %rax
	subq	%rax, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	72(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L2090
	movslq	64(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	movq	%r8, %rax
	salq	$7, %r8
	salq	$4, %rax
	subq	%rax, %r8
	call	memcpy
	movq	72(%rbx), %rcx
.L2090:
	call	_ZN5ImGui7MemFreeEPv
	movslq	64(%rbx), %rdx
	movq	%rsi, 72(%rbx)
	movq	%rsi, %rax
	movl	%edi, 68(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L2087
	.p2align 4,,7
.L2080:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	je	.L2082
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L2082:
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L2083
	movq	56(%rbx), %rax
	jmp	.L2081
	.p2align 4,,7
.L2116:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	64(%rbx), %rax
	jmp	.L2091
	.p2align 4,,7
.L2117:
	movslq	48(%rbx), %rax
	testl	%eax, %eax
	jle	.L2120
.L2093:
	movq	56(%rbx), %rdx
	movq	-8(%rdx,%rax,8), %rax
	movq	%rax, 104(%rsi)
	jmp	.L2092
	.p2align 4,,7
.L2083:
	movslq	%eax, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	56(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L2084
	movslq	48(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	56(%rbx), %rcx
.L2084:
	call	_ZN5ImGui7MemFreeEPv
	movslq	48(%rbx), %rdx
	movq	%r12, 56(%rbx)
	movq	%r12, %rax
	movl	%esi, 52(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L2081
.L2120:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	48(%rbx), %rax
	jmp	.L2093
	.seh_endproc
	.section .rdata,"dr"
.LC69:
	.ascii "font_cfg.FontData == __null\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt
	.def	_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt
_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt:
.LFB471:
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
	subq	$160, %rsp
	.seh_stackalloc	160
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	.seh_endprologue
	movq	%rcx, %r12
	movq	%rdx, %r14
	movl	%r8d, %r13d
	movq	256(%rsp), %rsi
	movaps	%xmm3, %xmm6
	movq	264(%rsp), %rbp
	testq	%rsi, %rsi
	je	.L2122
	leaq	32(%rsp), %rbx
	movl	$14, %ecx
	movq	%rbx, %rdi
	rep movsq
	cmpq	$0, 32(%rsp)
	je	.L2123
	leaq	.LC5(%rip), %rdx
	leaq	.LC69(%rip), %rcx
	movl	$1239, %r8d
	call	_assert
.L2123:
	testq	%rbp, %rbp
	movq	%r14, 32(%rsp)
	movl	%r13d, 40(%rsp)
	movss	%xmm6, 52(%rsp)
	je	.L2125
	movq	%rbp, 88(%rsp)
.L2125:
	movq	%rbx, %rdx
	movq	%r12, %rcx
	call	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig
	movaps	144(%rsp), %xmm6
	addq	$160, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L2122:
	leaq	32(%rsp), %rbx
	movq	$0, 136(%rsp)
	movq	$0, 97(%rsp)
	movl	$0x00000000, 72(%rsp)
	movl	$0x00000000, 68(%rsp)
	movl	$0x00000000, 80(%rsp)
	movl	$0x00000000, 76(%rsp)
	movb	$1, 44(%rsp)
	movl	$0, 48(%rsp)
	movl	$3, 56(%rsp)
	movl	$1, 60(%rsp)
	movb	$0, 64(%rsp)
	movq	$0, 88(%rsp)
	movb	$0, 96(%rsp)
	movq	$0, 73(%rbx)
	movq	$0, 81(%rbx)
	movq	$0, 89(%rbx)
	jmp	.L2123
	.seh_endproc
	.section .rdata,"dr"
.LC70:
	.ascii "stb__dout == output + olen\0"
.LC71:
	.ascii "stb__dout <= output + olen\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt
	.def	_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt
_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt:
.LFB472:
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
	movaps	%xmm6, 272(%rsp)
	.seh_savexmm	%xmm6, 272
	.seh_endprologue
	movq	%rcx, %r15
	movq	%rdx, %rsi
	movzbl	8(%rdx), %eax
	movaps	%xmm3, %xmm6
	movq	408(%rsp), %r13
	sall	$24, %eax
	movl	%eax, %ebx
	movzbl	9(%rdx), %eax
	sall	$16, %eax
	addl	%ebx, %eax
	movzbl	10(%rdx), %ebx
	sall	$8, %ebx
	addl	%ebx, %eax
	movzbl	11(%rdx), %ebx
	leal	(%rbx,%rax), %ecx
	movq	%rcx, %rbx
	call	_ZN5ImGui8MemAllocEy
	movzbl	2(%rsi), %edx
	movq	%rax, %r14
	movzbl	3(%rsi), %ecx
	movzbl	1(%rsi), %eax
	sall	$8, %edx
	sall	$16, %eax
	addl	%ecx, %edx
	addl	%eax, %edx
	movzbl	(%rsi), %eax
	sall	$24, %eax
	addl	%edx, %eax
	cmpl	$1471938560, %eax
	je	.L2204
.L2132:
	cmpq	$0, 400(%rsp)
	je	.L2172
	leaq	48(%rsp), %r12
	movl	$14, %ecx
	movq	400(%rsp), %rsi
	movq	%r12, %rdi
	rep movsq
	cmpq	$0, 48(%rsp)
	je	.L2173
	leaq	.LC5(%rip), %rdx
	leaq	.LC69(%rip), %rcx
	leaq	160(%rsp), %rbp
	movl	$1255, %r8d
	movq	%r12, %rsi
	call	_assert
	movq	%rbp, %rdi
	movb	$1, 60(%rsp)
	movl	$14, %ecx
	leaq	.LC5(%rip), %rdx
	movl	$1239, %r8d
	rep movsq
	leaq	.LC69(%rip), %rcx
	call	_assert
.L2176:
	testq	%r13, %r13
	movq	%r14, 160(%rsp)
	movl	%ebx, 168(%rsp)
	movss	%xmm6, 180(%rsp)
	je	.L2175
	movq	%r13, 216(%rsp)
.L2175:
	movq	%rbp, %rdx
	movq	%r15, %rcx
	call	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig
	movaps	272(%rsp), %xmm6
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
.L2204:
	movzbl	6(%rsi), %eax
	movzbl	7(%rsi), %ecx
	sall	$8, %eax
	leal	(%rax,%rcx), %edx
	movzbl	5(%rsi), %eax
	sall	$16, %eax
	addl	%edx, %eax
	movzbl	4(%rsi), %edx
	sall	$24, %edx
	addl	%edx, %eax
	jne	.L2132
	movzbl	8(%rsi), %edx
	movzbl	9(%rsi), %eax
	leaq	16(%rsi), %rbp
	movq	%rsi, _ZL13stb__barrier2(%rip)
	movq	%r14, _ZL13stb__barrier4(%rip)
	movq	%r14, _ZL9stb__dout(%rip)
	sall	$16, %eax
	sall	$24, %edx
	addl	%eax, %edx
	movzbl	10(%rsi), %eax
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	11(%rsi), %edx
	leal	(%rax,%rdx), %r12d
	movl	%r12d, 44(%rsp)
	addq	%r14, %r12
	movq	%r12, _ZL12stb__barrier(%rip)
	jmp	.L2170
	.p2align 4,,7
.L2207:
	testb	%al, %al
	js	.L2205
	cmpb	$63, %al
	jbe	.L2137
	movzbl	1(%rbp), %ecx
	sall	$8, %eax
	movzbl	2(%rbp), %edx
	leaq	3(%rbp), %rsi
	addl	%ecx, %eax
	movl	$16383, %ecx
	incl	%edx
	cltq
	subq	%rax, %rcx
	addq	_ZL9stb__dout(%rip), %rcx
	call	_ZL10stb__matchPhj
.L2136:
	cmpq	%rsi, %rbp
	je	.L2206
	cmpq	_ZL9stb__dout(%rip), %r12
	jb	.L2169
.L2171:
	movq	%rsi, %rbp
.L2170:
	movzbl	0(%rbp), %eax
	cmpb	$31, %al
	ja	.L2207
	cmpb	$23, %al
	ja	.L2208
	cmpb	$15, %al
	ja	.L2209
	cmpb	$7, %al
	.p2align 4,,5
	ja	.L2210
	.p2align 4,,7
	je	.L2211
	cmpb	$6, %al
	.p2align 4,,7
	je	.L2212
	cmpb	$4, %al
	.p2align 4,,7
	je	.L2213
.L2162:
	cmpb	$5, %al
	.p2align 4,,5
	jne	.L2164
	cmpb	$-6, 1(%rbp)
	.p2align 4,,3
	je	.L2214
.L2164:
	leaq	.LC5(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movl	$2308, %r8d
	call	_assert
	jmp	.L2132
	.p2align 4,,7
.L2169:
	leaq	.LC5(%rip), %rdx
	leaq	.LC71(%rip), %rcx
	movl	$2312, %r8d
	call	_assert
	cmpq	_ZL9stb__dout(%rip), %r12
	jnb	.L2171
	jmp	.L2132
	.p2align 4,,7
.L2137:
	leal	-31(%rax), %esi
	movq	_ZL9stb__dout(%rip), %rdx
	movq	_ZL12stb__barrier(%rip), %rax
	movslq	%esi, %rdi
	leaq	(%rdx,%rdi), %rcx
	cmpq	%rax, %rcx
	ja	.L2215
.L2138:
	leaq	1(%rbp), %r8
	cmpq	_ZL13stb__barrier2(%rip), %r8
	jnb	.L2140
	incq	%rax
	movq	%rax, _ZL9stb__dout(%rip)
.L2139:
	movzbl	0(%rbp), %eax
	leaq	-30(%rbp,%rax), %rsi
	jmp	.L2136
	.p2align 4,,7
.L2208:
	movzbl	1(%rbp), %ecx
	movzbl	2(%rbp), %r8d
	sall	$16, %eax
	movzbl	3(%rbp), %edx
	leaq	4(%rbp), %rsi
	sall	$8, %ecx
	addl	%r8d, %ecx
	incl	%edx
	addl	%ecx, %eax
	movl	$1572863, %ecx
	cltq
	subq	%rax, %rcx
	addq	_ZL9stb__dout(%rip), %rcx
	call	_ZL10stb__matchPhj
	jmp	.L2136
	.p2align 4,,7
.L2172:
	leaq	48(%rsp), %r12
	movq	$0, 152(%rsp)
	movq	$0, 113(%rsp)
	movl	$0x00000000, 88(%rsp)
	movl	$0x00000000, 84(%rsp)
	movl	$0x00000000, 96(%rsp)
	movl	$0x00000000, 92(%rsp)
	movq	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	$0x00000000, 68(%rsp)
	movl	$3, 72(%rsp)
	movl	$1, 76(%rsp)
	movb	$0, 80(%rsp)
	movq	$0, 104(%rsp)
	movb	$0, 112(%rsp)
	movq	$0, 73(%r12)
	movq	$0, 81(%r12)
	movq	$0, 89(%r12)
.L2173:
	leaq	160(%rsp), %rbp
	movb	$1, 60(%rsp)
	movl	$14, %ecx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	rep movsq
	jmp	.L2176
	.p2align 4,,7
.L2209:
	movzbl	3(%rbp), %edx
	movzbl	4(%rbp), %ecx
	sall	$16, %eax
	movzbl	2(%rbp), %r8d
	leaq	5(%rbp), %rsi
	sall	$8, %edx
	leal	1(%rdx,%rcx), %edx
	movzbl	1(%rbp), %ecx
	sall	$8, %ecx
	addl	%r8d, %ecx
	addl	%ecx, %eax
	movl	$1048575, %ecx
	cltq
	subq	%rax, %rcx
	addq	_ZL9stb__dout(%rip), %rcx
	call	_ZL10stb__matchPhj
	jmp	.L2136
	.p2align 4,,7
.L2215:
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rcx
	movl	$2225, %r8d
	call	_assert
	movq	_ZL9stb__dout(%rip), %rdx
	movq	_ZL12stb__barrier(%rip), %rax
	leaq	(%rdx,%rdi), %rcx
	cmpq	%rax, %rcx
	jbe	.L2138
.L2142:
	movq	%rcx, _ZL9stb__dout(%rip)
	jmp	.L2139
	.p2align 4,,7
.L2210:
	movzbl	1(%rbp), %ecx
	sall	$8, %eax
	movq	_ZL9stb__dout(%rip), %rdx
	leal	-2047(%rax,%rcx), %edi
	movq	_ZL12stb__barrier(%rip), %rcx
	movslq	%edi, %rsi
	leaq	(%rdx,%rsi), %rax
	cmpq	%rcx, %rax
	ja	.L2216
.L2150:
	leaq	2(%rbp), %rsi
	cmpq	_ZL13stb__barrier2(%rip), %rsi
	jnb	.L2152
	incq	%rcx
	movq	%rcx, _ZL9stb__dout(%rip)
.L2151:
	movzbl	0(%rbp), %eax
	movzbl	1(%rbp), %edx
	sall	$8, %eax
	addl	%edx, %eax
	cltq
	leaq	-2045(%rbp,%rax), %rsi
	jmp	.L2136
	.p2align 4,,7
.L2140:
	cmpl	$8, %esi
	jnb	.L2141
	testb	$4, %sil
	jne	.L2217
	testl	%esi, %esi
	.p2align 4,,2
	je	.L2142
	movzbl	(%r8), %eax
	testb	$2, %sil
	movb	%al, (%rdx)
	je	.L2142
	movl	%esi, %esi
	movzwl	-2(%r8,%rsi), %eax
	movw	%ax, -2(%rdx,%rsi)
	jmp	.L2142
	.p2align 4,,7
.L2205:
	movzbl	1(%rbp), %ecx
	leal	-127(%rax), %edx
	leaq	2(%rbp), %rsi
	notq	%rcx
	addq	_ZL9stb__dout(%rip), %rcx
	call	_ZL10stb__matchPhj
	jmp	.L2136
	.p2align 4,,7
.L2213:
	movzbl	4(%rbp), %eax
	movzbl	2(%rbp), %ecx
	leaq	6(%rbp), %rsi
	movzbl	5(%rbp), %edx
	movzbl	3(%rbp), %r8d
	sall	$8, %eax
	sall	$8, %ecx
	leal	1(%rax,%rdx), %edx
	leal	(%rcx,%r8), %eax
	movzbl	1(%rbp), %ecx
	sall	$16, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	notq	%rcx
	addq	_ZL9stb__dout(%rip), %rcx
	call	_ZL10stb__matchPhj
	jmp	.L2136
	.p2align 4,,7
.L2141:
	movq	(%r8), %rax
	movq	%rax, (%rdx)
	movl	%esi, %eax
	movq	-8(%r8,%rax), %r9
	movq	%r9, -8(%rdx,%rax)
	leaq	8(%rdx), %rax
	andq	$-8, %rax
	subq	%rax, %rdx
	addl	%edx, %esi
	subq	%rdx, %r8
	andl	$-8, %esi
	cmpl	$8, %esi
	jb	.L2142
	andl	$-8, %esi
	xorl	%edx, %edx
.L2145:
	movl	%edx, %r9d
	addl	$8, %edx
	movq	(%r8,%r9), %r10
	cmpl	%esi, %edx
	movq	%r10, (%rax,%r9)
	jb	.L2145
	jmp	.L2142
	.p2align 4,,7
.L2211:
	movzbl	1(%rbp), %eax
	movzbl	2(%rbp), %edx
	movq	_ZL9stb__dout(%rip), %rcx
	sall	$8, %eax
	leal	1(%rax,%rdx), %esi
	movq	_ZL12stb__barrier(%rip), %rax
	movslq	%esi, %rsi
	leaq	(%rcx,%rsi), %rdi
	cmpq	%rax, %rdi
	ja	.L2218
.L2158:
	leaq	3(%rbp), %rdx
	cmpq	_ZL13stb__barrier2(%rip), %rdx
	jnb	.L2160
	incq	%rax
	movq	%rax, _ZL9stb__dout(%rip)
.L2159:
	movzbl	1(%rbp), %eax
	movzbl	2(%rbp), %edx
	sall	$8, %eax
	addl	%edx, %eax
	cltq
	leaq	4(%rbp,%rax), %rsi
	jmp	.L2136
	.p2align 4,,7
.L2212:
	movzbl	2(%rbp), %ecx
	movzbl	3(%rbp), %r8d
	leaq	5(%rbp), %rsi
	movzbl	4(%rbp), %edx
	sall	$8, %ecx
	leal	(%rcx,%r8), %eax
	movzbl	1(%rbp), %ecx
	incl	%edx
	sall	$16, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	notq	%rcx
	addq	_ZL9stb__dout(%rip), %rcx
	call	_ZL10stb__matchPhj
	jmp	.L2136
	.p2align 4,,7
.L2214:
	cmpq	_ZL9stb__dout(%rip), %r12
	je	.L2167
	leaq	.LC5(%rip), %rdx
	leaq	.LC70(%rip), %rcx
	movl	$2302, %r8d
	call	_assert
	cmpq	_ZL9stb__dout(%rip), %r12
	jne	.L2132
.L2167:
	movl	44(%rsp), %eax
	movl	$1584310703, %edx
	movl	44(%rsp), %edi
	mull	%edx
	movl	%edi, %eax
	shrl	$11, %edx
	imull	$5552, %edx, %edx
	subl	%edx, %eax
	testl	%edi, %edi
	movl	%eax, %edx
	je	.L2132
	movl	%edi, %eax
.L2168:
	subl	%edx, %eax
	movl	$5552, %edx
	testl	%eax, %eax
	jne	.L2168
	jmp	.L2132
.L2218:
	leaq	.LC6(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	movl	$2225, %r8d
	call	_assert
	movq	_ZL9stb__dout(%rip), %rcx
	movq	_ZL12stb__barrier(%rip), %rax
	leaq	(%rcx,%rsi), %rdi
	cmpq	%rax, %rdi
	jbe	.L2158
.L2203:
	movq	%rdi, _ZL9stb__dout(%rip)
	jmp	.L2159
	.p2align 4,,7
.L2216:
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rcx
	movl	$2225, %r8d
	call	_assert
	movq	_ZL9stb__dout(%rip), %rdx
	movq	_ZL12stb__barrier(%rip), %rcx
	leaq	(%rdx,%rsi), %rax
	cmpq	%rcx, %rax
	jbe	.L2150
.L2154:
	movq	%rax, _ZL9stb__dout(%rip)
	jmp	.L2151
	.p2align 4,,7
.L2152:
	cmpl	$8, %edi
	jnb	.L2153
	testb	$4, %dil
	jne	.L2219
	testl	%edi, %edi
	.p2align 4,,2
	je	.L2154
	movzbl	(%rsi), %ecx
	testb	$2, %dil
	movb	%cl, (%rdx)
	je	.L2154
	movl	%edi, %r9d
	movzwl	-2(%rsi,%r9), %ecx
	movw	%cx, -2(%rdx,%r9)
	jmp	.L2154
	.p2align 4,,7
.L2153:
	movq	(%rsi), %rcx
	movq	%rcx, (%rdx)
	movl	%edi, %ecx
	movq	-8(%rsi,%rcx), %r8
	movq	%r8, -8(%rdx,%rcx)
	leaq	8(%rdx), %r8
	andq	$-8, %r8
	subq	%r8, %rdx
	subq	%rdx, %rsi
	addl	%edi, %edx
	movq	%r8, %rdi
	shrl	$3, %edx
	movl	%edx, %ecx
	rep movsq
	jmp	.L2154
.L2160:
	movq	%rsi, %r8
	call	memcpy
	jmp	.L2203
.L2217:
	movl	(%r8), %eax
	movl	%esi, %esi
	movl	%eax, (%rdx)
	movl	-4(%r8,%rsi), %eax
	movl	%eax, -4(%rdx,%rsi)
	jmp	.L2142
.L2219:
	movl	(%rsi), %ecx
	movl	%edi, %r9d
	movl	%ecx, (%rdx)
	movl	-4(%rsi,%r9), %ecx
	movl	%ecx, -4(%rdx,%r9)
	jmp	.L2154
.L2206:
	movzbl	0(%rbp), %eax
	jmp	.L2162
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt
	.def	_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt
_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt:
.LFB473:
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
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	%rdx, %rbx
	movaps	%xmm2, %xmm6
	movq	%rcx, 160(%rsp)
	movq	%rdx, %rcx
	movq	%r9, %r13
	call	strlen
	leal	4(%rax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	sarl	$31, %ecx
	imull	%edx
	sarl	%edx
	subl	%ecx, %edx
	leal	0(,%rdx,4), %eax
	movslq	%eax, %rcx
	movl	%eax, 56(%rsp)
	call	_ZN5ImGui8MemAllocEy
	movzbl	(%rbx), %edi
	movq	%rax, %r12
	movq	%rax, %rsi
	testb	%dil, %dil
	je	.L2222
	.p2align 4,,7
.L2226:
	movsbl	4(%rbx), %edx
	movsbl	3(%rbx), %r14d
	movsbl	%dil, %eax
	movsbl	2(%rbx), %r8d
	movsbl	1(%rbx), %r10d
	movl	%edx, %ecx
	leal	-36(%rdx), %r9d
	subl	$35, %edx
	cmpb	$91, %cl
	movl	%r8d, %ebp
	cmovle	%edx, %r9d
	movl	$85, %edx
	movl	%r9d, %ecx
	leal	-35(%r14), %r9d
	imull	%edx, %ecx
	leal	-36(%r14), %edx
	cmpb	$91, %r14b
	cmovg	%edx, %r9d
	leal	-36(%r8), %edx
	subl	$35, %r8d
	addl	%ecx, %r9d
	movl	$85, %ecx
	imull	%ecx, %r9d
	cmpb	$91, %bpl
	cmovg	%edx, %r8d
	leal	-36(%r10), %edx
	leal	(%r9,%r8), %ecx
	movl	$85, %r9d
	movl	%ecx, %r8d
	leal	-35(%r10), %ecx
	imull	%r9d, %r8d
	cmpb	$91, %r10b
	movl	$85, %r10d
	cmovg	%edx, %ecx
	leal	-36(%rax), %edx
	subl	$35, %eax
	addl	%r8d, %ecx
	imull	%r10d, %ecx
	cmpb	$91, %dil
	cmovg	%edx, %eax
	addq	$5, %rbx
	addq	$4, %rsi
	addl	%ecx, %eax
	movl	%eax, %edx
	movb	%al, -4(%rsi)
	shrl	$8, %edx
	movb	%dl, -3(%rsi)
	movl	%eax, %edx
	shrl	$24, %eax
	shrl	$16, %edx
	movb	%al, -1(%rsi)
	movb	%dl, -2(%rsi)
	movzbl	(%rbx), %edi
	testb	%dil, %dil
	jne	.L2226
.L2222:
	movq	192(%rsp), %rax
	movl	56(%rsp), %r8d
	movq	%r12, %rdx
	movq	160(%rsp), %rcx
	movaps	%xmm6, %xmm3
	movq	%r13, 32(%rsp)
	movq	%rax, 40(%rsp)
	call	_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt
	movq	%r12, %rcx
	movq	%rax, 56(%rsp)
	call	_ZN5ImGui7MemFreeEPv
	movq	56(%rsp), %rax
	movaps	64(%rsp), %xmm6
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
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig
	.def	_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig
_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig:
.LFB469:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	subq	$168, %rsp
	.seh_stackalloc	168
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rax
	je	.L2231
	leaq	48(%rsp), %r9
	movl	$14, %ecx
	movq	%rdx, %rsi
	movq	%r9, %rdi
	rep movsq
	cmpb	$0, 113(%rsp)
	je	.L2232
.L2233:
	leaq	_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges(%rip), %rsi
	leaq	_ZL39proggy_clean_ttf_compressed_data_base85(%rip), %rdx
	movq	%rax, %rcx
	movss	.LC50(%rip), %xmm2
	movq	%rsi, 32(%rsp)
	call	_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt
	addq	$168, %rsp
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L2231:
	leaq	48(%rsp), %r9
	movq	$0, 152(%rsp)
	movl	$0x00000000, 88(%rsp)
	movl	$0x00000000, 84(%rsp)
	movl	$0x00000000, 96(%rsp)
	movl	$0x00000000, 92(%rsp)
	movq	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	movb	$1, 60(%rsp)
	movl	$0, 64(%rsp)
	movl	$0x00000000, 68(%rsp)
	movq	$0, 104(%rsp)
	movb	$0, 112(%rsp)
	movq	$0, 73(%r9)
	movq	$0, 81(%r9)
	movq	$0, 89(%r9)
	movl	$1, 76(%rsp)
	movl	$1, 72(%rsp)
	movb	$1, 80(%rsp)
.L2232:
	movabsq	$7801212464559780432, %rdi
	movq	%rdi, 113(%rsp)
	movabsq	$3199372627637330277, %rdi
	movl	$1882403104, 81(%r9)
	movq	%rdi, 73(%r9)
	movw	$120, 85(%r9)
	jmp	.L2233
	.seh_endproc
	.section .rdata,"dr"
.LC72:
	.ascii "rb\0"
.LC73:
	.ascii "%s, %.0fpx\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas18AddFontFromFileTTFEPKcfPK12ImFontConfigPKt
	.def	_ZN11ImFontAtlas18AddFontFromFileTTFEPKcfPK12ImFontConfigPKt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas18AddFontFromFileTTFEPKcfPK12ImFontConfigPKt
_ZN11ImFontAtlas18AddFontFromFileTTFEPKcfPK12ImFontConfigPKt:
.LFB470:
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
	movq	%rdx, %r13
	leaq	60(%rsp), %r8
	leaq	.LC72(%rip), %rdx
	movq	%rcx, %r12
	movq	%r9, %rsi
	movq	%r13, %rcx
	xorl	%r9d, %r9d
	movaps	%xmm2, %xmm6
	movq	416(%rsp), %rbp
	movl	$0, 60(%rsp)
	call	_Z18ImFileLoadToMemoryPKcS0_Pii
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L2254
	testq	%rsi, %rsi
	je	.L2237
	leaq	64(%rsp), %r14
	movl	$14, %ecx
	movq	%r14, %rdi
	rep movsq
	cmpb	$0, 129(%rsp)
	je	.L2238
.L2239:
	leaq	176(%rsp), %r13
	movl	$14, %ecx
	movq	%r14, %rsi
	movl	60(%rsp), %r15d
	movq	%r13, %rdi
	rep movsq
	cmpq	$0, 176(%rsp)
	je	.L2244
	leaq	.LC5(%rip), %rdx
	leaq	.LC69(%rip), %rcx
	movl	$1239, %r8d
	call	_assert
.L2244:
	testq	%rbp, %rbp
	movq	%rbx, 176(%rsp)
	movl	%r15d, 184(%rsp)
	movss	%xmm6, 196(%rsp)
	je	.L2245
	movq	%rbp, 232(%rsp)
.L2245:
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_ZN11ImFontAtlas7AddFontEPK12ImFontConfig
	nop
.L2236:
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
	.p2align 4,,7
.L2237:
	leaq	64(%rsp), %r14
	movq	$0, 168(%rsp)
	movq	$0, 129(%rsp)
	movl	$0x00000000, 104(%rsp)
	movl	$0x00000000, 100(%rsp)
	movl	$0x00000000, 112(%rsp)
	movl	$0x00000000, 108(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 72(%rsp)
	movb	$1, 76(%rsp)
	movl	$0, 80(%rsp)
	movl	$0x00000000, 84(%rsp)
	movl	$3, 88(%rsp)
	movl	$1, 92(%rsp)
	movb	$0, 96(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	$0, 73(%r14)
	movq	$0, 81(%r14)
	movq	$0, 89(%r14)
	.p2align 4,,7
.L2238:
	movq	%r13, %rcx
	call	strlen
	addq	%r13, %rax
	cmpq	%rax, %r13
	jnb	.L2248
	.p2align 4,,7
.L2243:
	movzbl	-1(%rax), %edx
	cmpb	$92, %dl
	je	.L2248
	cmpb	$47, %dl
	je	.L2248
	decq	%rax
	cmpq	%rax, %r13
	jne	.L2243
.L2240:
	cvtss2sd	%xmm6, %xmm0
	leaq	65(%r14), %rcx
	leaq	.LC73(%rip), %r8
	movq	%r13, %r9
	movl	$32, %edx
	movsd	%xmm0, 32(%rsp)
	call	snprintf
	jmp	.L2239
	.p2align 4,,7
.L2248:
	movq	%rax, %r13
	jmp	.L2240
.L2254:
	leaq	.LC5(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movl	$1221, %r8d
	call	_assert
	xorl	%eax, %eax
	jmp	.L2236
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN6ImFontD2Ev
	.def	_ZN6ImFontD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6ImFontD2Ev
_ZN6ImFontD2Ev:
.LFB486:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movl	$0x00000000, (%rcx)
	movl	$0x00000000, 8(%rcx)
	movl	$0x3f800000, 12(%rcx)
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2256
	movl	$0, 20(%rbx)
	movl	$0, 16(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 24(%rbx)
.L2256:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2257
	movl	$0, 36(%rbx)
	movl	$0, 32(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 40(%rbx)
.L2257:
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2258
	movl	$0, 52(%rbx)
	movl	$0, 48(%rbx)
	call	_ZN5ImGui7MemFreeEPv
.L2258:
	movq	40(%rbx), %rcx
	movq	$0, 64(%rbx)
	movl	$0x00000000, 72(%rbx)
	movw	$0, 78(%rbx)
	movq	$0, 80(%rbx)
	movq	$0, 88(%rbx)
	testq	%rcx, %rcx
	movl	$0x00000000, 100(%rbx)
	movl	$0x00000000, 96(%rbx)
	movl	$0, 104(%rbx)
	je	.L2261
	call	_ZN5ImGui7MemFreeEPv
.L2261:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2255
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,7
.L2255:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA486:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE486-.LLSDACSB486
.LLSDACSB486:
.LLSDACSE486:
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
.LFB488:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movl	$0x00000000, (%rcx)
	movl	$0x00000000, 8(%rcx)
	movl	$0x3f800000, 12(%rcx)
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2272
	movl	$0, 20(%rbx)
	movl	$0, 16(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 24(%rbx)
.L2272:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2273
	movl	$0, 36(%rbx)
	movl	$0, 32(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 40(%rbx)
.L2273:
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2274
	movl	$0, 52(%rbx)
	movl	$0, 48(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 56(%rbx)
.L2274:
	movq	$0, 64(%rbx)
	movl	$0x00000000, 72(%rbx)
	movw	$0, 78(%rbx)
	movq	$0, 80(%rbx)
	movq	$0, 88(%rbx)
	movl	$0x00000000, 100(%rbx)
	movl	$0x00000000, 96(%rbx)
	movl	$0, 104(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC74:
	.ascii "IndexXAdvance.Size == IndexLookup.Size\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6ImFont9GrowIndexEi
	.def	_ZN6ImFont9GrowIndexEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6ImFont9GrowIndexEi
_ZN6ImFont9GrowIndexEi:
.LFB491:
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
	movl	48(%rcx), %ebx
	cmpl	%ebx, 32(%rcx)
	movq	%rcx, %rsi
	movl	%edx, %r12d
	je	.L2285
	leaq	.LC5(%rip), %rdx
	leaq	.LC74(%rip), %rcx
	movl	$1779, %r8d
	call	_assert
	movl	48(%rsi), %ebx
.L2285:
	cmpl	%ebx, %r12d
	jg	.L2314
.L2284:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L2314:
	movl	36(%rsi), %eax
	cmpl	%eax, %r12d
	jle	.L2287
	testl	%eax, %eax
	movl	$8, %edx
	je	.L2288
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L2288:
	cmpl	%edx, %r12d
	jl	.L2315
	movl	%r12d, %edi
.L2289:
	movslq	%edi, %rcx
	salq	$2, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	40(%rsi), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L2290
	movslq	32(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	40(%rsi), %rcx
.L2290:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rbp, 40(%rsi)
	movl	%edi, 36(%rsi)
.L2287:
	movl	52(%rsi), %edx
	movl	%r12d, 32(%rsi)
	movl	%r12d, %eax
	cmpl	%edx, %r12d
	jle	.L2291
	testl	%edx, %edx
	movl	$8, %eax
	je	.L2292
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L2292:
	cmpl	%eax, %r12d
	jl	.L2316
	movl	%r12d, %edi
.L2293:
	movslq	%edi, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	56(%rsi), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L2294
	movslq	48(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	56(%rsi), %rcx
.L2294:
	call	_ZN5ImGui7MemFreeEPv
	movl	32(%rsi), %eax
	movq	%rbp, 56(%rsi)
	movl	%edi, 52(%rsi)
.L2291:
	movslq	%ebx, %rdi
	movl	%r12d, 48(%rsi)
	leaq	(%rdi,%rdi), %rbp
	salq	$2, %rdi
	jmp	.L2298
	.p2align 4,,7
.L2295:
	cmpl	%ebx, 48(%rsi)
	movq	40(%rsi), %rax
	movl	$0xbf800000, (%rax,%rdi)
	jle	.L2317
.L2296:
	movq	56(%rsi), %rax
	incl	%ebx
	addq	$4, %rdi
	movw	$-1, (%rax,%rbp)
	addq	$2, %rbp
	cmpl	%ebx, %r12d
	je	.L2284
	movl	32(%rsi), %eax
.L2298:
	cmpl	%eax, %ebx
	jl	.L2295
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	cmpl	%ebx, 48(%rsi)
	movq	40(%rsi), %rax
	movl	$0xbf800000, (%rax,%rdi)
	jg	.L2296
.L2317:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L2296
	.p2align 4,,7
.L2316:
	cmpl	%eax, %edx
	jl	.L2318
	movl	%r12d, %eax
	.p2align 4,,6
	jmp	.L2291
	.p2align 4,,7
.L2315:
	cmpl	%edx, %eax
	jge	.L2287
	movl	%edx, %edi
	.p2align 4,,4
	jmp	.L2289
.L2318:
	movl	%eax, %edi
	.p2align 4,,5
	jmp	.L2293
	.seh_endproc
	.section .rdata,"dr"
.LC76:
	.ascii "Glyphs.Size < 0xFFFF\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6ImFont16BuildLookupTableEv
	.def	_ZN6ImFont16BuildLookupTableEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6ImFont16BuildLookupTableEv
_ZN6ImFont16BuildLookupTableEv:
.LFB489:
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
	movq	%rcx, %rbx
	movl	16(%rcx), %edx
	testl	%edx, %edx
	je	.L2360
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	jmp	.L2322
	.p2align 4,,7
.L2321:
	movq	24(%rbx), %rax
	movzwl	(%rax,%rdi), %eax
	cmpl	%eax, %ebp
	cmovl	%eax, %ebp
	incl	%esi
	addq	$40, %rdi
	cmpl	%edx, %esi
	je	.L2396
.L2322:
	cmpl	%esi, %edx
	jg	.L2321
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movl	16(%rbx), %edx
	jmp	.L2321
	.p2align 4,,7
.L2396:
	cmpl	$65534, %esi
	jg	.L2397
.L2392:
	leal	1(%rbp), %esi
.L2320:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2324
	movl	$0, 36(%rbx)
	movl	$0, 32(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 40(%rbx)
.L2324:
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2325
	movl	$0, 52(%rbx)
	movl	$0, 48(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 56(%rbx)
.L2325:
	movl	%esi, %edx
	movq	%rbx, %rcx
	xorl	%r12d, %r12d
	call	_ZN6ImFont9GrowIndexEi
	movl	16(%rbx), %eax
	xorl	%edi, %edi
	testl	%eax, %eax
	jg	.L2390
	jmp	.L2332
	.p2align 4,,7
.L2329:
	movq	40(%rbx), %rdx
	cmpl	%eax, %edi
	leaq	(%rdx,%rsi,4), %r14
	jge	.L2398
.L2330:
	movq	24(%rbx), %rax
	cmpl	48(%rbx), %r13d
	movss	4(%rax,%r12), %xmm0
	movss	%xmm0, (%r14)
	jge	.L2399
.L2331:
	movq	56(%rbx), %rax
	addq	$40, %r12
	movw	%di, (%rax,%rsi,2)
	movl	16(%rbx), %eax
	incl	%edi
	cmpl	%edi, %eax
	jle	.L2332
.L2390:
	movq	24(%rbx), %rdx
	movzwl	(%rdx,%r12), %r13d
	cmpl	32(%rbx), %r13d
	movq	%r13, %rsi
	jl	.L2329
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movl	16(%rbx), %eax
	movq	40(%rbx), %rdx
	cmpl	%eax, %edi
	leaq	(%rdx,%rsi,4), %r14
	jl	.L2330
.L2398:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L2330
	.p2align 4,,7
.L2399:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L2331
	.p2align 4,,7
.L2332:
	movl	48(%rbx), %ecx
	cmpl	$32, %ecx
	jle	.L2328
	movq	56(%rbx), %rax
	movzwl	64(%rax), %eax
	cmpw	$-1, %ax
	je	.L2328
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rdx
	addq	24(%rbx), %rdx
	movl	%ecx, %eax
	testq	%rdx, %rdx
	jne	.L2400
	.p2align 4,,7
.L2335:
	movzwl	76(%rbx), %edx
	movq	$0, 64(%rbx)
	movzwl	%dx, %ecx
	cmpl	%eax, %ecx
	jl	.L2401
.L2348:
	xorps	%xmm6, %xmm6
	movaps	%xmm6, %xmm0
.L2350:
	movss	%xmm0, 72(%rbx)
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.L2355
	.p2align 4,,7
.L2351:
	movq	%rdi, %rax
	addq	40(%rbx), %rax
	ucomiss	(%rax), %xmm6
	ja	.L2354
.L2353:
	incl	%esi
	addq	$4, %rdi
	cmpl	%ebp, %esi
	jg	.L2402
.L2355:
	cmpl	%esi, 32(%rbx)
	jg	.L2351
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	%rdi, %rax
	addq	40(%rbx), %rax
	ucomiss	(%rax), %xmm6
	jbe	.L2353
	cmpl	%esi, 32(%rbx)
	jg	.L2354
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	%rdi, %rax
	addq	40(%rbx), %rax
.L2354:
	incl	%esi
	movss	72(%rbx), %xmm0
	addq	$4, %rdi
	cmpl	%ebp, %esi
	movss	%xmm0, (%rax)
	jle	.L2355
.L2402:
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
	.p2align 4,,7
.L2328:
	movq	64(%rbx), %rdx
	movl	%ecx, %eax
	testq	%rdx, %rdx
	je	.L2335
.L2400:
	movl	16(%rbx), %edi
	testl	%edi, %edi
	jle	.L2403
	movslq	%edi, %rax
	movq	24(%rbx), %r8
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	-40(%rdx,%rax,8), %rsi
	movl	%ecx, %eax
	addq	%r8, %rsi
	cmpw	$9, (%rsi)
	jne	.L2358
.L2343:
	cmpl	$32, %eax
	jg	.L2404
.L2344:
	movq	64(%rbx), %rdx
.L2345:
	movq	(%rdx), %rcx
	movss	.LC53(%rip), %xmm0
	cmpl	$9, 32(%rbx)
	movq	%rcx, (%rsi)
	movq	8(%rdx), %rcx
	mulss	4(%rsi), %xmm0
	movq	%rcx, 8(%rsi)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rsi)
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%rsi)
	movq	32(%rdx), %rdx
	movss	%xmm0, 4(%rsi)
	movw	$9, (%rsi)
	movq	%rdx, 32(%rsi)
	jle	.L2405
	movl	$18, %esi
	movl	$9, %edx
.L2346:
	movq	40(%rbx), %rcx
	cmpl	%eax, %edx
	movss	%xmm0, 36(%rcx)
	jge	.L2406
.L2347:
	movl	16(%rbx), %edx
	movq	56(%rbx), %rcx
	decl	%edx
	movw	%dx, (%rcx,%rsi)
	jmp	.L2335
	.p2align 4,,7
.L2401:
	movq	56(%rbx), %rax
	movzwl	(%rax,%rdx,2), %eax
	cmpw	$-1, %ax
	je	.L2348
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rax
	addq	24(%rbx), %rax
	testq	%rax, %rax
	movq	%rax, 64(%rbx)
	je	.L2348
	movss	4(%rax), %xmm0
	xorps	%xmm6, %xmm6
	jmp	.L2350
.L2403:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	16(%rbx), %rax
	movq	%rax, %rdx
	movq	%rax, %rdi
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rax
	addq	24(%rbx), %rax
	cmpw	$9, -40(%rax)
	je	.L2337
	.p2align 4,,7
.L2358:
	movl	20(%rbx), %eax
	incl	%edi
	cmpl	%edi, %eax
	jge	.L2338
	testl	%eax, %eax
	movl	$8, %edx
	je	.L2339
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L2339:
	cmpl	%edx, %edi
	jl	.L2407
	movl	%edi, %esi
.L2340:
	movslq	%esi, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L2341
	movslq	16(%rbx), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	call	memcpy
	movq	24(%rbx), %rcx
.L2341:
	call	_ZN5ImGui7MemFreeEPv
	movq	%r12, 24(%rbx)
	movl	%esi, 20(%rbx)
.L2338:
	movl	%edi, 16(%rbx)
.L2337:
	testl	%edi, %edi
	jle	.L2408
	movslq	%edi, %rdi
	movq	24(%rbx), %r8
	movl	48(%rbx), %eax
	movq	%rdi, %rdx
	salq	$5, %rdx
	leaq	-40(%rdx,%rdi,8), %rsi
	addq	%r8, %rsi
	cmpl	$32, %eax
	jle	.L2344
.L2404:
	movq	56(%rbx), %rdx
	movzwl	64(%rdx), %edx
	cmpw	$-1, %dx
	je	.L2344
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	(%rcx,%rdx,8), %rdx
	addq	%r8, %rdx
	jmp	.L2345
	.p2align 4,,7
.L2397:
	leaq	.LC5(%rip), %rdx
	leaq	.LC76(%rip), %rcx
	movl	$1738, %r8d
	call	_assert
	jmp	.L2392
	.p2align 4,,7
.L2406:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movl	48(%rbx), %eax
	jmp	.L2347
	.p2align 4,,7
.L2405:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movzwl	(%rsi), %edx
	movss	4(%rsi), %xmm0
	movl	48(%rbx), %eax
	movq	%rdx, %rsi
	addq	%rsi, %rsi
	jmp	.L2346
	.p2align 4,,7
.L2407:
	cmpl	%edx, %eax
	jge	.L2338
	movl	%edx, %esi
	jmp	.L2340
	.p2align 4,,7
.L2360:
	movl	$1, %esi
	xorl	%ebp, %ebp
	jmp	.L2320
.L2408:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	16(%rbx), %rdx
	movq	24(%rbx), %r8
	movl	48(%rbx), %eax
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	-40(%rcx,%rdx,8), %rsi
	addq	%r8, %rsi
	jmp	.L2343
	.seh_endproc
	.section .rdata,"dr"
.LC77:
	.ascii "ConfigData.Size > 0\0"
	.align 8
.LC78:
	.ascii "cfg.DstFont && (!cfg.DstFont->IsLoaded() || cfg.DstFont->ContainerAtlas == this)\0"
.LC79:
	.ascii "font_offset >= 0\0"
.LC80:
	.ascii "cmap\0"
.LC81:
	.ascii "loca\0"
.LC82:
	.ascii "head\0"
.LC83:
	.ascii "glyf\0"
.LC84:
	.ascii "hhea\0"
.LC85:
	.ascii "hmtx\0"
.LC86:
	.ascii "kern\0"
.LC87:
	.ascii "CFF \0"
.LC88:
	.ascii "maxp\0"
	.align 8
.LC89:
	.ascii "width <= 0xffff && height <= 0xffff\0"
.LC90:
	.ascii "h_oversample <= 8\0"
.LC91:
	.ascii "v_oversample <= 8\0"
	.align 8
.LC92:
	.ascii "buf_rects_n == total_glyph_count\0"
	.align 8
.LC93:
	.ascii "buf_packedchars_n == total_glyph_count\0"
	.align 8
.LC94:
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
.LFB474:
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
	jg	.L2410
	leaq	.LC5(%rip), %rdx
	leaq	.LC77(%rip), %rcx
	movl	$1272, %r8d
.LEHB7:
	call	_assert
.L2410:
	movq	1520(%rsp), %rax
	movq	8(%rax), %rcx
	movq	$0, (%rax)
	movl	$0, 28(%rax)
	movl	$0, 24(%rax)
	movl	$0x00000000, 36(%rax)
	movl	$0x00000000, 40(%rax)
	testq	%rcx, %rcx
	je	.L2411
	call	_ZN5ImGui7MemFreeEPv
	movq	1520(%rsp), %rax
.L2411:
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	je	.L2412
	call	_ZN5ImGui7MemFreeEPv
	movq	1520(%rsp), %rax
.L2412:
	movslq	64(%rax), %rcx
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	imulq	$176, %rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	1520(%rsp), %rdi
	movq	%rax, 376(%rsp)
	movl	64(%rdi), %edx
	testl	%edx, %edx
	jle	.L2413
	leaq	204(%rax), %r13
	movq	%rax, %rsi
	leaq	480(%rsp), %rax
	leaq	688(%rsp), %r14
	leaq	496(%rsp), %r15
	movq	$0, 120(%rsp)
	movq	%rax, 144(%rsp)
	leaq	600(%rsp), %rax
	movl	$0, 104(%rsp)
	movl	$0, 140(%rsp)
	movl	$0, 128(%rsp)
	movq	%rax, 160(%rsp)
	leaq	752(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	592(%rsp), %rax
	movq	%rax, 168(%rsp)
.L2447:
	movq	1520(%rsp), %rax
	movq	120(%rsp), %rdi
	addq	72(%rax), %rdi
	movq	104(%rdi), %rax
	testq	%rax, %rax
	je	.L2414
	movq	88(%rax), %rax
	cmpq	%rax, 1520(%rsp)
	je	.L2415
	testq	%rax, %rax
	je	.L2415
.L2414:
	leaq	.LC5(%rip), %rdx
	leaq	.LC78(%rip), %rcx
	movl	$1296, %r8d
	call	_assert
.L2415:
	movq	(%rdi), %r12
	movl	16(%rdi), %ebp
	movzbl	(%r12), %eax
	cmpb	$49, %al
	je	.L3206
	cmpb	$116, %al
	je	.L3207
	cmpb	$79, %al
	je	.L3208
	testb	%al, %al
	.p2align 4,,5
	jne	.L2880
	cmpb	$1, 1(%r12)
	je	.L3182
.L2880:
	movl	$-1, %ebx
	movl	%ebx, %ebp
.L2417:
	leaq	.LC5(%rip), %rdx
	leaq	.LC79(%rip), %rcx
	movl	$1298, %r8d
	call	_assert
	movq	(%rdi), %r12
.L2425:
	leaq	.LC80(%rip), %r8
	movl	%ebp, 16(%rsi)
	movl	%ebx, %edx
	movq	%r12, %rcx
	movq	%r12, 8(%rsi)
	movq	$0, 56(%rsi)
	movl	$0, 64(%rsi)
	movl	$0, 68(%rsi)
	prefetcht0	192(%rsi)
	call	_ZL17stbtt__find_tablePhjPKc
	prefetcht0	232(%rsi)
	prefetcht0	240(%rsi)
	leaq	.LC81(%rip), %r8
	movl	%ebx, %edx
	movq	%r12, %rcx
	movl	%eax, %ebp
	prefetcht0	244(%rsi)
	prefetcht0	0(%r13)
	call	_ZL17stbtt__find_tablePhjPKc
	prefetcht0	212(%rsi)
	leaq	.LC82(%rip), %r8
	movl	%ebx, %edx
	movq	%r12, %rcx
	movl	%eax, 24(%rsi)
	movl	%eax, 192(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	leaq	.LC83(%rip), %r8
	movl	%ebx, %edx
	movq	%r12, %rcx
	movl	%eax, 28(%rsi)
	movl	%eax, 184(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	leaq	.LC84(%rip), %r8
	movl	%ebx, %edx
	movq	%r12, %rcx
	movl	%eax, 32(%rsi)
	movl	%eax, 112(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	leaq	.LC85(%rip), %r8
	movl	%ebx, %edx
	movq	%r12, %rcx
	movl	%eax, 36(%rsi)
	movl	%eax, 176(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	leaq	.LC86(%rip), %r8
	movl	%ebx, %edx
	movl	%eax, 40(%rsi)
	movq	%r12, %rcx
	movl	%eax, 152(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	movl	184(%rsp), %r11d
	movl	176(%rsp), %r10d
	movl	%eax, 44(%rsi)
	testl	%r11d, %r11d
	sete	%dl
	testl	%r10d, %r10d
	sete	%al
	orl	%edx, %eax
	testl	%ebp, %ebp
	sete	%dl
	movl	%eax, %r11d
	orb	%dl, %r11b
	jne	.L2434
	movl	152(%rsp), %eax
	testl	%eax, %eax
	je	.L2434
	movl	112(%rsp), %eax
	testl	%eax, %eax
	je	.L2427
	movl	192(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L2434
.L2428:
	leaq	.LC88(%rip), %r8
	movl	%ebx, %edx
	movq	%r12, %rcx
	call	_ZL17stbtt__find_tablePhjPKc
	testl	%eax, %eax
	movl	$65535, %edx
	je	.L2435
	movl	%eax, %eax
	leaq	4(%r12,%rax), %rax
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	sall	$8, %edx
	addl	%eax, %edx
	movzwl	%dx, %edx
.L2435:
	movl	%ebp, %eax
	movl	%edx, 20(%rsi)
	leaq	2(%r12,%rax), %rcx
	movzbl	(%rcx), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	1(%rcx), %eax
	movl	$0, 48(%rsi)
	addw	%dx, %ax
	je	.L2434
	leal	4(%rbp), %edx
	movzwl	%ax, %eax
	leal	(%rdx,%rax,8), %ecx
	jmp	.L2440
	.p2align 4,,7
.L3210:
	cmpw	$3, %r8w
	jne	.L2436
	leaq	2(%r12,%rax), %r10
	movzbl	(%r10), %r8d
	movl	%r8d, %r9d
	movzbl	1(%r10), %r8d
	sall	$8, %r9d
	addl	%r9d, %r8d
	cmpw	$1, %r8w
	je	.L2437
	cmpw	$10, %r8w
	je	.L2437
.L2436:
	addl	$8, %edx
	cmpl	%ecx, %edx
	je	.L3209
.L2440:
	movl	%edx, %eax
	leaq	(%r12,%rax), %r10
	movzbl	(%r10), %r8d
	movl	%r8d, %r9d
	movzbl	1(%r10), %r8d
	sall	$8, %r9d
	addw	%r9w, %r8w
	jne	.L3210
.L2437:
	leaq	4(%r12,%rax), %r9
	addl	$8, %edx
	movzbl	(%r9), %r8d
	movzbl	1(%r9), %eax
	sall	$24, %r8d
	sall	$16, %eax
	addl	%eax, %r8d
	movzbl	2(%r9), %eax
	sall	$8, %eax
	addl	%eax, %r8d
	movzbl	3(%r9), %eax
	addl	%r8d, %eax
	addl	%ebp, %eax
	cmpl	%ecx, %edx
	movl	%eax, 48(%rsi)
	jne	.L2440
.L3209:
	movl	48(%rsi), %ebp
	prefetcht0	224(%rsi)
	testl	%ebp, %ebp
	je	.L2434
	movslq	28(%rsi), %rax
	prefetcht0	0(%r13)
	leaq	50(%r12,%rax), %rcx
	movzbl	(%rcx), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	1(%rcx), %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	movl	%eax, 52(%rsi)
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.L2441
	movzwl	(%rax), %edx
	testw	%dx, %dx
	je	.L2442
.L2443:
	movzwl	2(%rax), %ecx
	testw	%cx, %cx
	je	.L2442
	movl	128(%rsp), %edi
	jmp	.L2445
.L2446:
	movzwl	2(%rax), %ecx
	testw	%cx, %cx
	je	.L2442
.L2445:
	addq	$4, %rax
	subl	%edx, %ecx
	incl	140(%rsp)
	movzwl	(%rax), %edx
	leal	1(%rdi,%rcx), %edi
	movl	%edi, 128(%rsp)
	testw	%dx, %dx
	jne	.L2446
.L2442:
	movq	1520(%rsp), %rdi
	incl	104(%rsp)
	addq	$176, %r13
	movl	104(%rsp), %eax
	addq	$112, 120(%rsp)
	addq	$176, %rsi
	cmpl	%eax, 64(%rdi)
	jg	.L2447
	movl	32(%rdi), %eax
	testl	%eax, %eax
	jle	.L2448
	movl	%eax, 160(%rsp)
	movq	%rdi, %rsi
	jmp	.L2816
.L2427:
	leaq	.LC87(%rip), %r8
	movl	%ebx, %edx
	movq	%r12, %rcx
	movl	$2, 592(%rsp)
	movl	$0, 600(%rsp)
	movl	$0, 608(%rsp)
	movl	$0, 624(%rsp)
	call	_ZL17stbtt__find_tablePhjPKc
	testl	%eax, %eax
	je	.L2434
	movl	%eax, %eax
	movl	$536870912, 68(%rsi)
	movq	64(%rsi), %rdx
	addq	%r12, %rax
	movq	$0, 120(%rsi)
	movl	$0, 128(%rsi)
	movq	%rax, 56(%rsi)
	movq	56(%rsi), %rax
	prefetcht0	296(%rsi)
	movl	$0, 132(%rsi)
	movq	$0, 136(%rsi)
	prefetcht0	304(%rsi)
	movl	$0, 144(%rsi)
	movl	$0, 148(%rsi)
	prefetcht0	308(%rsi)
	prefetcht0	312(%rsi)
	prefetcht0	320(%rsi)
	prefetcht0	324(%rsi)
	movq	%rax, 688(%rsp)
	movq	%rdx, 696(%rsp)
	movl	700(%rsp), %eax
	cmpl	$1, %eax
	jle	.L2430
	xorl	%edx, %edx
	cmpl	$2, %eax
	movl	$2, 696(%rsp)
	je	.L2431
	movq	688(%rsp), %rax
	movl	$3, 696(%rsp)
	movzbl	2(%rax), %edx
.L2431:
	movq	%r14, %rcx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movq	%r14, %rdx
	movq	%r15, %rcx
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	%r14, %rdx
	movq	%r15, %rcx
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	504(%rsp), %rdx
	movq	496(%rsp), %rax
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movq	%rdx, 488(%rsp)
	movq	144(%rsp), %rdx
	movq	%rax, 480(%rsp)
	call	_ZL20stbtt__cff_index_get10stbtt__bufi
	movq	504(%rsp), %rdx
	movq	496(%rsp), %rax
	movq	%r15, %rcx
	movq	%rdx, 760(%rsp)
	movq	%r14, %rdx
	movq	%rax, 752(%rsp)
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	%r14, %rdx
	movq	%r15, %rcx
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	496(%rsp), %rax
	movq	504(%rsp), %rdx
	movq	160(%rsp), %r8
	movq	96(%rsp), %rcx
	movq	%rax, 88(%rsi)
	movq	%rdx, 96(%rsi)
	movl	$17, %edx
	call	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.76
	movq	168(%rsp), %r8
	movq	96(%rsp), %rcx
	movl	$262, %edx
	call	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.76
	movq	96(%rsp), %rcx
	leaq	608(%rsp), %r8
	movl	$292, %edx
	call	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.76
	movq	96(%rsp), %rcx
	leaq	624(%rsp), %r8
	movl	$293, %edx
	call	_ZL20stbtt__dict_get_intsP10stbtt__bufiiPj.constprop.76
	movq	696(%rsp), %rdx
	movq	688(%rsp), %rax
	leaq	464(%rsp), %r8
	movq	%r15, %rcx
	movq	%rdx, 488(%rsp)
	movq	760(%rsp), %rdx
	movq	%rax, 480(%rsp)
	movq	752(%rsp), %rax
	movq	%rdx, 472(%rsp)
	movq	144(%rsp), %rdx
	movq	%rax, 464(%rsp)
	call	_ZL16stbtt__get_subrs10stbtt__bufS_
	movq	496(%rsp), %rax
	movq	504(%rsp), %rdx
	movq	%rax, 104(%rsi)
	movq	%rdx, 112(%rsi)
	cmpl	$2, 592(%rsp)
	je	.L3211
.L2434:
	xorl	%eax, %eax
.L3162:
	movaps	1280(%rsp), %xmm6
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
.L3207:
	movzbl	1(%r12), %eax
	cmpb	$121, %al
	je	.L3212
	cmpb	$114, %al
	je	.L3213
	cmpb	$116, %al
	jne	.L2880
	cmpb	$99, 2(%r12)
	jne	.L2880
	cmpb	$102, 3(%r12)
	jne	.L2880
	movzbl	4(%r12), %edx
	movzbl	5(%r12), %eax
	sall	$24, %edx
	sall	$16, %eax
	addl	%eax, %edx
	movzbl	6(%r12), %eax
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	7(%r12), %edx
	leal	-65536(%rax,%rdx), %eax
	testl	$-65537, %eax
	jne	.L2880
	movzbl	8(%r12), %edx
	movzbl	9(%r12), %eax
	sall	$24, %edx
	sall	$16, %eax
	addl	%eax, %edx
	movzbl	10(%r12), %eax
	sall	$8, %eax
	addl	%edx, %eax
	movzbl	11(%r12), %edx
	addl	%edx, %eax
	cmpl	%eax, %ebp
	jge	.L2880
	leal	0(,%rbp,4), %eax
	cltq
	leaq	12(%r12,%rax), %rdx
	movzbl	(%rdx), %ebp
	movzbl	1(%rdx), %eax
	sall	$24, %ebp
	sall	$16, %eax
	addl	%eax, %ebp
	movzbl	2(%rdx), %eax
	sall	$8, %eax
	addl	%ebp, %eax
	movzbl	3(%rdx), %ebp
	addl	%eax, %ebp
	movl	%ebp, %ebx
	jns	.L2425
	jmp	.L2417
.L3213:
	cmpb	$117, 2(%r12)
	jne	.L2880
	cmpb	$101, 3(%r12)
	jne	.L2880
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	je	.L2425
.L3214:
	movl	$-1, %ebp
	movl	%ebp, %ebx
	jmp	.L2417
.L3212:
	cmpb	$112, 2(%r12)
	jne	.L2880
	cmpb	$49, 3(%r12)
	jne	.L2880
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	je	.L2425
	jmp	.L3214
.L2413:
	movl	32(%rdi), %eax
	testl	%eax, %eax
	.p2align 4,,2
	jle	.L3215
	movq	1520(%rsp), %rsi
	movl	%eax, 160(%rsp)
	movl	$0, 140(%rsp)
	movl	$0, 128(%rsp)
.L2816:
	leal	-1(%rax), %ebx
	movl	%eax, 24(%rsi)
	movl	$0, 28(%rsi)
	movl	$72, %ecx
	call	_ZN5ImGui8MemAllocEy
	movslq	%ebx, %rcx
	movq	%rax, %rsi
	movq	%rax, 368(%rsp)
	salq	$4, %rcx
	call	_ZN5ImGui8MemAllocEy
	testq	%rsi, %rsi
	movq	%rax, 360(%rsp)
	je	.L2449
	testq	%rax, %rax
	je	.L2449
	cmpl	$65535, %ebx
	jle	.L2454
	leaq	.LC9(%rip), %rdx
	leaq	.LC89(%rip), %rcx
	movl	$250, %r8d
	call	_assert
.L2454:
	movl	160(%rsp), %esi
	leal	-2(%rsi), %ecx
	testl	%ecx, %ecx
	jle	.L2837
	cmpl	$6, %esi
	jle	.L2838
	movq	360(%rsp), %rax
	leal	-7(%rsi), %edx
	shrl	$2, %edx
	leal	4(,%rdx,4), %r8d
	addq	$376, %rax
	xorl	%edx, %edx
.L2457:
	leaq	-360(%rax), %r9
	addl	$4, %edx
	prefetcht0	(%rax)
	movq	%r9, -368(%rax)
	leaq	-344(%rax), %r9
	movq	%r9, -352(%rax)
	leaq	-328(%rax), %r9
	movq	%r9, -336(%rax)
	leaq	-312(%rax), %r9
	addq	$64, %rax
	movq	%r9, -384(%rax)
	cmpl	%edx, %r8d
	jne	.L2457
.L2456:
	movslq	%edx, %rax
	incq	%rax
	salq	$4, %rax
	addq	360(%rsp), %rax
.L2458:
	incl	%edx
	movq	%rax, -8(%rax)
	addq	$16, %rax
	cmpl	%edx, %ecx
	jg	.L2458
	movslq	%ecx, %rax
	salq	$4, %rax
.L2455:
	movq	368(%rsp), %rdi
	movq	360(%rsp), %rsi
	movq	$0, 8(%rsi,%rax)
	movq	%rdi, %rax
	movl	$1, 12(%rdi)
	addq	$40, %rax
	movl	$0, 16(%rdi)
	movq	%rsi, 32(%rdi)
	movq	%rax, 24(%rdi)
	leal	-1(%rbx,%rbx), %eax
	movl	%ebx, (%rdi)
	movl	$32767, 4(%rdi)
	movl	%ebx, 20(%rdi)
	cltd
	movw	$0, 40(%rdi)
	movw	$0, 42(%rdi)
	idivl	%ebx
	movw	%bx, 56(%rdi)
	movw	$-1, 58(%rdi)
	movq	$0, 64(%rdi)
	movl	%eax, 8(%rdi)
	movq	%rdi, %rax
	addq	$56, %rax
	movq	%rax, 48(%rdi)
	jmp	.L2453
.L3215:
	movl	$0, 140(%rsp)
	movl	$0, 128(%rsp)
.L2836:
	movq	1520(%rsp), %rax
	movl	$8176, %esi
	movl	$511, %ebx
	movl	$512, 160(%rsp)
.L2451:
	movl	160(%rsp), %edi
	movl	$72, %ecx
	movl	$0, 28(%rax)
	movl	%edi, 24(%rax)
	call	_ZN5ImGui8MemAllocEy
	movq	%rsi, %rcx
	movq	%rax, %rdi
	movq	%rax, 368(%rsp)
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	movq	%rax, 360(%rsp)
	je	.L2449
	testq	%rdi, %rdi
	jne	.L2454
.L2449:
	movq	368(%rsp), %rax
	testq	%rax, %rax
	je	.L2452
	movq	%rax, %rcx
	call	_ZN5ImGui7MemFreeEPv
.L2452:
	movq	360(%rsp), %rax
	testq	%rax, %rax
	je	.L2453
	movq	%rax, %rcx
	call	_ZN5ImGui7MemFreeEPv
.LEHE7:
.L2453:
	leaq	608(%rsp), %rax
	movq	1520(%rsp), %rcx
	movl	$0, 612(%rsp)
	movl	$0, 608(%rsp)
	movq	$0, 616(%rsp)
	movq	%rax, %rdx
	movq	%rax, 440(%rsp)
.LEHB8:
	call	_ZN11ImFontAtlas19RenderCustomTexDataEiPv.constprop.66
	movl	608(%rsp), %ebx
	testl	%ebx, %ebx
	jle	.L2459
.L2461:
	movq	616(%rsp), %rdx
	movq	368(%rsp), %rcx
	movl	%ebx, %r8d
	call	stbrp_pack_rects
	movl	608(%rsp), %edx
	testl	%edx, %edx
	jle	.L2467
	movq	616(%rsp), %rcx
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	.L2468
	.p2align 4,,7
.L2465:
	movzwl	10(%rax), %edi
.L2466:
	movzwl	6(%rax), %eax
	addl	%eax, %edi
	movq	1520(%rsp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	movq	1520(%rsp), %rax
	movl	%edi, 28(%rax)
.L2464:
	incl	%ebx
	addq	$16, %rsi
	cmpl	%edx, %ebx
	jge	.L2467
.L2468:
	leaq	(%rcx,%rsi), %rax
	movl	12(%rax), %edi
	testl	%edi, %edi
	je	.L2464
	cmpl	%edx, %ebx
	jl	.L2465
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	616(%rsp), %rcx
	movl	608(%rsp), %edx
	leaq	(%rcx,%rsi), %rax
	cmpl	%ebx, %edx
	movzwl	10(%rax), %edi
	jg	.L2466
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	616(%rsp), %rcx
	movl	608(%rsp), %edx
	leaq	(%rcx,%rsi), %rax
	jmp	.L2466
.L2467:
	movslq	128(%rsp), %rbx
	leaq	0(,%rbx,4), %rax
	movq	%rbx, %rsi
	salq	$5, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rcx
	call	_ZN5ImGui8MemAllocEy
	salq	$4, %rbx
	movq	%rax, 384(%rsp)
	movq	%rbx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	%rax, %r14
	movq	%rax, 424(%rsp)
	movslq	140(%rsp), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rdi
	movq	%rdi, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	384(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rsi, %r8
	movq	%rax, %r15
	movq	%rax, 392(%rsp)
	call	memset
	movq	%rbx, %r8
	xorl	%edx, %edx
	movq	%r14, %rcx
	call	memset
	xorl	%edx, %edx
	movq	%rdi, %r8
	movq	%r15, %rcx
	call	memset
	movq	1520(%rsp), %rax
	movl	64(%rax), %ebx
	testl	%ebx, %ebx
	jle	.L2840
	movq	376(%rsp), %rax
	xorps	%xmm7, %xmm7
	movss	.LC29(%rip), %xmm8
	movq	$0, 216(%rsp)
	movl	$1, %r14d
	movl	$1, %r12d
	movl	$0, 184(%rsp)
	movl	$0, 144(%rsp)
	leaq	336(%rax), %rbp
	leaq	528(%rsp), %rax
	movl	$0, 176(%rsp)
	movl	$0, 168(%rsp)
	movq	%rax, 104(%rsp)
	leaq	524(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	520(%rsp), %rax
	movq	%rax, 120(%rsp)
.L2491:
	movq	1520(%rsp), %rax
	movq	216(%rsp), %r11
	addq	72(%rax), %r11
	movq	56(%r11), %r8
	movzwl	(%r8), %r10d
	testw	%r10w, %r10w
	je	.L2470
	movzwl	2(%r8), %eax
	testw	%ax, %ax
	je	.L2470
	movq	%r8, %rcx
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	jmp	.L2473
.L2474:
	movzwl	2(%rcx), %eax
	testw	%ax, %ax
	je	.L2472
.L2473:
	addq	$4, %rcx
	subl	%r10d, %eax
	incl	%edx
	movzwl	(%rcx), %r10d
	leal	1(%r9,%rax), %r9d
	testw	%r10w, %r10w
	jne	.L2474
.L2472:
	movl	144(%rsp), %edi
	movl	%edx, -168(%rbp)
	prefetcht0	0(%rbp)
	movq	384(%rsp), %rsi
	movl	168(%rsp), %r10d
	prefetcht0	8(%rbp)
	movss	20(%r11), %xmm0
	movslq	%edi, %rax
	addl	%edx, %edi
	decl	%edx
	movq	%rax, %rcx
	incq	%rdx
	movl	%edi, 144(%rsp)
	salq	$5, %rcx
	leaq	(%rcx,%rax,8), %rax
	movq	%rdx, %rcx
	addq	392(%rsp), %rax
	salq	$5, %rcx
	leaq	(%rcx,%rdx,8), %rbx
	movq	%rax, -176(%rbp)
	addq	%rax, %rbx
.L2475:
	movzwl	(%r8), %edx
	movzwl	2(%r8), %ecx
	movss	%xmm0, (%rax)
	addq	$40, %rax
	addq	$4, %r8
	movl	%edx, -36(%rax)
	subl	%edx, %ecx
	movslq	%r10d, %rdx
	leaq	0(,%rdx,4), %rdi
	salq	$5, %rdx
	incl	%ecx
	movl	%ecx, -24(%rax)
	addl	%ecx, %r10d
	subq	%rdi, %rdx
	addq	%rsi, %rdx
	movq	%rdx, -16(%rax)
	cmpq	%rbx, %rax
	jne	.L2475
	movl	%r10d, 168(%rsp)
.L2810:
	movl	176(%rsp), %esi
	movl	24(%r11), %ebx
	movslq	%esi, %rax
	salq	$4, %rax
	addq	424(%rsp), %rax
	movq	%rax, -184(%rbp)
	movl	%esi, %eax
	movl	28(%r11), %esi
	addl	%r9d, %eax
	cmpl	$8, %ebx
	movl	%eax, 176(%rsp)
	ja	.L2476
.L2479:
	cmpl	$8, %esi
	ja	.L3216
	cmpl	$9, %ebx
	movl	%esi, %r14d
	cmovb	%ebx, %r12d
.L2480:
	movl	-168(%rbp), %edx
	movq	-184(%rbp), %rax
	leaq	-336(%rbp), %rsi
	prefetcht0	-8(%rbp)
	prefetcht0	0(%rbp)
	movq	%rsi, 96(%rsp)
	testl	%edx, %edx
	movq	%rax, 152(%rsp)
	movq	-176(%rbp), %rax
	jle	.L2841
	decl	%edx
	leaq	80(%rax), %rdi
	leaq	516(%rsp), %r15
	movq	%rdx, %rcx
	movb	%r12b, 200(%rsp)
	movb	%r14b, 208(%rsp)
	salq	$5, %rcx
	xorl	%r13d, %r13d
	leaq	120(%rcx,%rdx,8), %rdx
	addq	%rdx, %rax
	movq	%rax, 192(%rsp)
.L2489:
	movss	-80(%rdi), %xmm6
	prefetcht0	(%rdi)
	ucomiss	%xmm7, %xmm6
	jbe	.L3127
	movslq	-300(%rbp), %rax
	movq	-328(%rbp), %rdx
	leaq	4(%rdx,%rax), %rcx
	leaq	6(%rdx,%rax), %r8
	movzbl	(%rcx), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	1(%rcx), %eax
	addl	%edx, %eax
	movzbl	(%r8), %edx
	cwtl
	movl	%edx, %ecx
	movzbl	1(%r8), %edx
	sall	$8, %ecx
	addl	%ecx, %edx
	movswl	%dx, %edx
	subl	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	divss	%xmm0, %xmm6
.L2484:
	movzbl	200(%rsp), %eax
	movl	-64(%rdi), %r11d
	prefetcht0	33(%rdi)
	testl	%r11d, %r11d
	movb	%al, -48(%rdi)
	movzbl	208(%rsp), %eax
	movb	%al, -47(%rdi)
	jle	.L2485
	movq	152(%rsp), %rsi
	movslq	%r13d, %rax
	incl	%r13d
	salq	$4, %rax
	leaq	54(%rsi,%rax), %rbx
	xorl	%esi, %esi
	jmp	.L2488
	.p2align 4,,7
.L2486:
	movl	(%rax,%rsi,4), %r8d
.L2487:
	movl	-288(%rbp), %edx
	movq	-328(%rbp), %rcx
	call	stbtt_FindGlyphIndex.isra.11
	cvtsi2ss	%r14d, %xmm3
	movq	104(%rsp), %rcx
	cvtsi2ss	%r12d, %xmm2
	movq	%r15, 32(%rsp)
	movl	%eax, %edx
	movq	%rcx, 56(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movq	120(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movq	96(%rsp), %rcx
	mulss	%xmm6, %xmm3
	mulss	%xmm6, %xmm2
	call	stbtt_GetGlyphBitmapBoxSubpixel.constprop.72
	movl	524(%rsp), %eax
	subw	516(%rsp), %ax
	prefetcht0	(%rbx)
	leal	0(%r13,%rsi), %edx
	addq	$16, %rbx
	addl	%r12d, %eax
	movw	%ax, -66(%rbx)
	movl	528(%rsp), %eax
	subw	520(%rsp), %ax
	addl	%r14d, %eax
	movw	%ax, -64(%rbx)
	movl	%esi, %eax
	incq	%rsi
	incl	%eax
	cmpl	%eax, -64(%rdi)
	jle	.L3217
.L2488:
	movq	-72(%rdi), %rax
	testq	%rax, %rax
	jne	.L2486
	movl	-76(%rdi), %r8d
	addl	%esi, %r8d
	jmp	.L2487
.L3217:
	movl	%edx, %r13d
.L2485:
	addq	$40, %rdi
	cmpq	192(%rsp), %rdi
	jne	.L2489
	movq	-184(%rbp), %rax
	movq	%rax, 152(%rsp)
	movq	%rax, %rdx
.L2481:
	movq	368(%rsp), %rcx
	movl	%r13d, %r8d
	call	stbrp_pack_rects
	testl	%r13d, %r13d
	jle	.L2493
	movq	-184(%rbp), %rcx
	leal	-1(%r13), %edx
	movq	1520(%rsp), %r9
	salq	$4, %rdx
	leaq	12(%rcx), %rax
	leaq	28(%rcx,%rdx), %r8
.L2494:
	movl	(%rax), %r10d
	testl	%r10d, %r10d
	je	.L2492
	movzwl	-2(%rax), %ecx
	movzwl	-6(%rax), %edx
	addl	%ecx, %edx
	movl	28(%r9), %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	movl	%edx, 28(%r9)
.L2492:
	addq	$16, %rax
	cmpq	%r8, %rax
	jne	.L2494
.L2493:
	movq	1520(%rsp), %rsi
	incl	184(%rsp)
	addq	$176, %rbp
	movl	184(%rsp), %eax
	addq	$112, 216(%rsp)
	cmpl	%eax, 64(%rsi)
	jg	.L2491
.L2469:
	movl	128(%rsp), %edi
	cmpl	%edi, 176(%rsp)
	jne	.L2495
.L2498:
	movl	128(%rsp), %esi
	cmpl	%esi, 168(%rsp)
	jne	.L3128
.L2496:
	movl	140(%rsp), %edi
	cmpl	%edi, 144(%rsp)
	je	.L2499
	leaq	.LC5(%rip), %rdx
	leaq	.LC94(%rip), %rcx
	movl	$1380, %r8d
	call	_assert
.L2499:
	movq	1520(%rsp), %rax
	movq	1520(%rsp), %rsi
	movl	28(%rax), %eax
	leal	-1(%rax), %edx
	movl	%eax, 96(%rsp)
	movl	%edx, %eax
	sarl	%eax
	orl	%eax, %edx
	movl	%edx, %eax
	sarl	$2, %eax
	orl	%eax, %edx
	movl	%edx, %eax
	sarl	$4, %eax
	orl	%eax, %edx
	movl	%edx, %eax
	sarl	$8, %eax
	orl	%eax, %edx
	movl	%edx, %eax
	sarl	$16, %eax
	orl	%edx, %eax
	incl	%eax
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
	movq	%rax, 328(%rsp)
	movq	1520(%rsp), %rax
	movl	64(%rax), %ecx
	testl	%ecx, %ecx
	jle	.L2510
	movslq	160(%rsp), %r14
	movq	376(%rsp), %rax
	movq	$0, 432(%rsp)
	movl	$0, 412(%rsp)
	movq	%rax, 200(%rsp)
	movq	%r14, %rdx
	leaq	(%r14,%r14), %rax
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	%rdx, 216(%rsp)
	leaq	0(,%r14,8), %rdx
	leaq	(%rdx,%r14), %rdi
	subq	%rax, %rdx
	movq	%rdx, 104(%rsp)
	movq	%rdi, 344(%rsp)
.L2511:
	movq	1520(%rsp), %rsi
	movq	432(%rsp), %rax
	addq	72(%rsi), %rax
	cmpl	$8, 24(%rax)
	movl	28(%rax), %ebx
	ja	.L2504
.L2507:
	cmpl	$8, %ebx
	ja	.L3218
.L2505:
	movq	200(%rsp), %rax
	movl	168(%rax), %edx
	movq	152(%rax), %rdi
	prefetcht0	328(%rax)
	prefetcht0	336(%rax)
	movq	160(%rax), %rax
	testl	%edx, %edx
	movq	%rdi, 400(%rsp)
	jle	.L2508
	decl	%edx
	leaq	73(%rax), %rsi
	movl	$0, 256(%rsp)
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	%rsi, 232(%rsp)
	leaq	113(%rcx,%rdx,8), %rdx
	addq	%rdx, %rax
	movq	%rax, 416(%rsp)
	movq	%rsi, %rax
.L2775:
	xorps	%xmm4, %xmm4
	movss	-73(%rax), %xmm1
	ucomiss	%xmm4, %xmm1
	jbe	.L3133
	movq	200(%rsp), %rax
	movq	8(%rax), %rdx
	movslq	36(%rax), %rax
	leaq	4(%rdx,%rax), %rcx
	leaq	6(%rdx,%rax), %r8
	movzbl	(%rcx), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	1(%rcx), %eax
	addl	%edx, %eax
	movzbl	(%r8), %edx
	cwtl
	movl	%edx, %ecx
	movzbl	1(%r8), %edx
	sall	$8, %ecx
	addl	%ecx, %edx
	movswl	%dx, %edx
	subl	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, 244(%rsp)
.L2514:
	movq	232(%rsp), %rdi
	movss	.LC24(%rip), %xmm2
	movss	.LC24(%rip), %xmm5
	movzbl	-41(%rdi), %eax
	movzbl	-40(%rdi), %r15d
	prefetcht0	(%rdi)
	movl	$0x00000000, 308(%rsp)
	movl	%eax, %esi
	movb	%al, 140(%rsp)
	movl	%eax, 96(%rsp)
	cvtsi2ss	%esi, %xmm4
	testl	%esi, %esi
	movb	%r15b, 144(%rsp)
	divss	%xmm4, %xmm2
	movss	%xmm4, 316(%rsp)
	movss	%xmm2, 320(%rsp)
	cvtsi2ss	%r15d, %xmm2
	divss	%xmm2, %xmm5
	movss	%xmm2, 324(%rsp)
	movss	%xmm5, 408(%rsp)
	je	.L2515
	movl	$1, %eax
	movaps	%xmm4, %xmm1
	subl	%esi, %eax
	cvtsi2ss	%eax, %xmm0
	addss	%xmm4, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 308(%rsp)
.L2515:
	testl	%r15d, %r15d
	movl	$0x00000000, 312(%rsp)
	je	.L2516
	cvtsi2ss	%r15d, %xmm1
	movl	$1, %eax
	subl	%r15d, %eax
	cvtsi2ss	%eax, %xmm0
	addss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 312(%rsp)
.L2516:
	movq	232(%rsp), %rax
	movl	-57(%rax), %eax
	testl	%eax, %eax
	jle	.L2517
	movslq	256(%rsp), %rdx
	movq	400(%rsp), %rdi
	movq	$0, 208(%rsp)
	movl	$0, 176(%rsp)
	salq	$4, %rdx
	leaq	28(%rdi,%rdx), %rdi
	movq	%rdi, 152(%rsp)
	.p2align 4,,7
.L2774:
	movq	152(%rsp), %rsi
	movl	-16(%rsi), %edx
	prefetcht0	(%rsi)
	testl	%edx, %edx
	je	.L2518
	movq	208(%rsp), %rsi
	movq	232(%rsp), %rdi
	movq	%rsi, %rax
	salq	$3, %rax
	subq	%rsi, %rax
	addq	-49(%rdi), %rax
	movq	%rax, 248(%rsp)
	movq	-65(%rdi), %rax
	testq	%rax, %rax
	je	.L3219
	movl	(%rax,%rsi), %r8d
.L2520:
	movq	200(%rsp), %rdi
	movl	48(%rdi), %edx
	movq	8(%rdi), %rcx
	call	stbtt_FindGlyphIndex.isra.11
	movl	%eax, %esi
	movq	152(%rsp), %rax
	movq	8(%rdi), %rcx
	incw	-20(%rax)
	incw	-18(%rax)
	decw	-24(%rax)
	decw	-22(%rax)
	movslq	36(%rdi), %rax
	leaq	34(%rcx,%rax), %rdx
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	cmpl	%eax, %esi
	jge	.L2521
	movslq	40(%rdi), %rax
	leal	0(,%rsi,4), %edx
	movslq	%edx, %rdx
.L3167:
	addq	%rdx, %rax
	movss	244(%rsp), %xmm5
	addq	%rcx, %rax
	movss	324(%rsp), %xmm4
	movzbl	(%rax), %edx
	movzbl	1(%rax), %eax
	mulss	%xmm5, %xmm4
	movss	316(%rsp), %xmm2
	movq	200(%rsp), %rbx
	mulss	%xmm5, %xmm2
	sall	$8, %edx
	movaps	%xmm4, %xmm3
	addl	%edx, %eax
	movq	%rbx, %rcx
	movl	%esi, %edx
	cwtl
	movss	%xmm4, 224(%rsp)
	movl	%eax, 304(%rsp)
	leaq	544(%rsp), %rax
	movss	%xmm2, 240(%rsp)
	movq	%rax, 56(%rsp)
	leaq	540(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	536(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	532(%rsp), %rax
	movq	%rax, 32(%rsp)
	call	stbtt_GetGlyphBitmapBoxSubpixel.constprop.72
	movq	152(%rsp), %rdi
	movzwl	-18(%rdi), %eax
	movzwl	-20(%rdi), %edx
	imull	160(%rsp), %eax
	movzwl	-22(%rdi), %ebp
	movzwl	-24(%rdi), %r13d
	cltq
	addq	%rdx, %rax
	movq	%rax, 272(%rsp)
	movl	68(%rbx), %eax
	testl	%eax, %eax
	je	.L3220
	leaq	624(%rsp), %rdi
	leaq	688(%rsp), %rbx
	xorl	%eax, %eax
	movl	$7, %ecx
	leaq	624(%rsp), %r8
	movl	%esi, %edx
	rep stosq
	movl	$7, %ecx
	movq	%rbx, %rdi
	movl	$1, 624(%rsp)
	rep stosq
	movq	200(%rsp), %rcx
	call	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
	testl	%eax, %eax
	jne	.L3221
.L2525:
	movq	$0, 592(%rsp)
	xorl	%edi, %edi
.L2524:
	leaq	552(%rsp), %rax
	movq	200(%rsp), %rcx
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movss	224(%rsp), %xmm3
	movq	%rax, 40(%rsp)
	leaq	548(%rsp), %rax
	movl	%esi, %edx
	movss	240(%rsp), %xmm2
	movq	%rax, 32(%rsp)
	call	stbtt_GetGlyphBitmapBoxSubpixel.constprop.72
	movl	$1, %r12d
	movl	%r12d, %eax
	subl	96(%rsp), %r12d
	subl	%r15d, %eax
	leal	(%rax,%rbp), %esi
	addl	%r13d, %r12d
	addl	%ebp, %eax
	movl	%esi, 288(%rsp)
	je	.L3178
	testl	%r12d, %r12d
	je	.L3178
	movss	224(%rsp), %xmm1
	movl	552(%rsp), %eax
	testl	%edi, %edi
	minss	240(%rsp), %xmm1
	movss	.LC95(%rip), %xmm0
	movl	$0, 556(%rsp)
	movl	%eax, 168(%rsp)
	movl	548(%rsp), %eax
	movl	%eax, 192(%rsp)
	movq	592(%rsp), %rax
	divss	%xmm1, %xmm0
	movq	%rax, 184(%rsp)
	movaps	%xmm0, %xmm4
	mulss	%xmm0, %xmm4
	movss	%xmm4, 128(%rsp)
	jle	.L2530
	cmpl	$4, %edi
	jle	.L2845
	leaq	362(%rax), %rcx
	leal	-5(%rdi), %eax
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	shrl	$2, %eax
	leal	4(,%rax,4), %r8d
	.p2align 4,,7
.L2535:
	xorl	%eax, %eax
	cmpb	$1, -350(%rcx)
	prefetcht0	(%rcx)
	sete	%al
	addl	%eax, %ebx
	xorl	%eax, %eax
	cmpb	$1, -336(%rcx)
	sete	%al
	addl	%eax, %ebx
	xorl	%eax, %eax
	cmpb	$1, -322(%rcx)
	sete	%al
	addl	%ebx, %eax
	xorl	%ebx, %ebx
	cmpb	$1, -308(%rcx)
	sete	%bl
	addl	$4, %edx
	addq	$56, %rcx
	addl	%eax, %ebx
	cmpl	%edx, %r8d
	jne	.L2535
	movq	184(%rsp), %rsi
.L2534:
	movslq	%edx, %rax
	leaq	(%rax,%rax), %rcx
	salq	$4, %rax
	subq	%rcx, %rax
	leaq	12(%rsi,%rax), %rax
	.p2align 4,,7
.L2536:
	xorl	%ecx, %ecx
	cmpb	$1, (%rax)
	sete	%cl
	incl	%edx
	addq	$14, %rax
	addl	%ecx, %ebx
	cmpl	%edx, %edi
	jg	.L2536
	testl	%ebx, %ebx
	je	.L2530
	movslq	%ebx, %rcx
	salq	$2, %rcx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	movq	%rax, 280(%rsp)
	je	.L3178
	leal	-1(%rdi), %eax
	movq	184(%rsp), %rdi
	leaq	556(%rsp), %rsi
	movl	$0, 112(%rsp)
	movq	$0, 336(%rsp)
	leaq	(%rax,%rax), %rdx
	salq	$4, %rax
	movl	$0, 260(%rsp)
	movss	.LC1(%rip), %xmm14
	subq	%rdx, %rax
	leaq	40(%rdi,%rax), %rdi
.L2563:
	cmpl	$1, 260(%rsp)
	je	.L3222
	movq	336(%rsp), %rbp
	movl	$0, 556(%rsp)
.L2813:
	movq	184(%rsp), %rax
	xorps	%xmm3, %xmm3
	movl	%r12d, 264(%rsp)
	movl	%ebx, 352(%rsp)
	movq	%r14, 296(%rsp)
	leaq	26(%rax), %r13
	movaps	%xmm3, %xmm2
	movl	$-1, %eax
	movq	%r13, %r12
	movl	112(%rsp), %r13d
	movl	%eax, %ebx
	.p2align 4,,7
.L2561:
	movzbl	-14(%r12), %eax
	prefetcht0	(%r12)
	cmpb	$2, %al
	je	.L2542
	jbe	.L3223
	cmpb	$3, %al
	je	.L2545
	cmpb	$4, %al
	.p2align 4,,7
	jne	.L2541
	movswl	-24(%r12), %eax
	xorl	%r14d, %r14d
	cvtsi2ss	%eax, %xmm4
	movswl	-26(%r12), %eax
	movss	%xmm4, 112(%rsp)
	cvtsi2ss	%eax, %xmm4
	movswl	-16(%r12), %eax
	cvtsi2ss	%eax, %xmm5
	movswl	-18(%r12), %eax
	cvtsi2ss	%eax, %xmm1
	movswl	-20(%r12), %eax
	cvtsi2ss	%eax, %xmm15
	movswl	-22(%r12), %eax
	movaps	%xmm5, %xmm11
	cvtsi2ss	%eax, %xmm13
	movaps	%xmm1, %xmm10
	jmp	.L2559
	.p2align 4,,7
.L3228:
	movss	128(%rsp), %xmm9
	ucomiss	%xmm9, %xmm6
	jbe	.L3135
	movaps	%xmm13, %xmm0
	movaps	%xmm15, %xmm1
	addss	%xmm10, %xmm13
	incl	%r14d
	movss	%xmm9, 80(%rsp)
	addss	%xmm2, %xmm0
	movl	%r14d, 88(%rsp)
	movq	%rsi, %rdx
	addss	%xmm3, %xmm1
	movq	%rbp, %rcx
	movss	%xmm4, 120(%rsp)
	addss	%xmm11, %xmm15
	addss	112(%rsp), %xmm11
	mulss	%xmm14, %xmm13
	mulss	%xmm14, %xmm0
	addss	%xmm4, %xmm10
	mulss	%xmm14, %xmm1
	mulss	%xmm14, %xmm15
	movaps	%xmm0, %xmm5
	mulss	%xmm14, %xmm10
	movaps	%xmm1, %xmm8
	mulss	%xmm14, %xmm11
	addss	%xmm13, %xmm5
	movss	%xmm1, 40(%rsp)
	addss	%xmm15, %xmm8
	movss	%xmm0, 32(%rsp)
	addss	%xmm10, %xmm13
	addss	%xmm11, %xmm15
	mulss	%xmm14, %xmm5
	mulss	%xmm14, %xmm8
	mulss	%xmm14, %xmm13
	mulss	%xmm14, %xmm15
	movaps	%xmm5, %xmm6
	movss	%xmm5, 48(%rsp)
	movaps	%xmm8, %xmm7
	movss	%xmm8, 56(%rsp)
	addss	%xmm13, %xmm6
	addss	%xmm15, %xmm7
	mulss	%xmm14, %xmm6
	mulss	%xmm14, %xmm7
	movss	%xmm6, 64(%rsp)
	movss	%xmm7, 72(%rsp)
	call	_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi
	movaps	%xmm7, %xmm3
	movaps	%xmm6, %xmm2
	movss	120(%rsp), %xmm4
.L2559:
	movaps	%xmm13, %xmm0
	movaps	%xmm15, %xmm6
	movss	112(%rsp), %xmm7
	subss	%xmm2, %xmm0
	movaps	%xmm7, %xmm8
	subss	%xmm3, %xmm6
	movaps	%xmm10, %xmm5
	movaps	%xmm11, %xmm9
	movaps	%xmm4, %xmm1
	movaps	%xmm4, %xmm12
	mulss	%xmm0, %xmm0
	subss	%xmm13, %xmm5
	mulss	%xmm6, %xmm6
	subss	%xmm15, %xmm9
	subss	%xmm10, %xmm1
	subss	%xmm11, %xmm8
	subss	%xmm2, %xmm12
	addss	%xmm0, %xmm6
	subss	%xmm3, %xmm7
	cvtss2sd	%xmm6, %xmm0
	sqrtsd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm6
	jp	.L3224
.L2548:
	mulss	%xmm9, %xmm9
	mulss	%xmm5, %xmm5
	addss	%xmm9, %xmm5
	cvtss2sd	%xmm5, %xmm0
	sqrtsd	%xmm0, %xmm9
	ucomisd	%xmm9, %xmm9
	jp	.L3225
.L2550:
	mulss	%xmm1, %xmm1
	mulss	%xmm8, %xmm8
	addss	%xmm8, %xmm1
	cvtss2sd	%xmm1, %xmm1
	sqrtsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	.L3226
.L2552:
	mulss	%xmm12, %xmm12
	addsd	%xmm9, %xmm6
	mulss	%xmm7, %xmm7
	movsd	%xmm6, %xmm5
	addss	%xmm12, %xmm7
	addsd	%xmm0, %xmm5
	cvtss2sd	%xmm7, %xmm7
	cvtsd2ss	%xmm5, %xmm6
	sqrtsd	%xmm7, %xmm0
	ucomisd	%xmm0, %xmm0
	jp	.L3227
.L2554:
	cvtsd2ss	%xmm0, %xmm1
	mulss	%xmm6, %xmm6
	cmpl	$17, %r14d
	mulss	%xmm1, %xmm1
	subss	%xmm1, %xmm6
	jne	.L3228
.L2556:
	movswl	-26(%r12), %eax
	cvtsi2ss	%eax, %xmm2
	movswl	-24(%r12), %eax
	cvtsi2ss	%eax, %xmm3
.L2541:
	addq	$14, %r12
	cmpq	%r12, %rdi
	jne	.L2561
	movl	556(%rsp), %eax
	movq	280(%rsp), %rcx
	movslq	%ebx, %rdx
	incl	260(%rsp)
	movl	264(%rsp), %r12d
	movl	%r13d, 112(%rsp)
	movq	296(%rsp), %r14
	subl	%r13d, %eax
	movl	352(%rsp), %ebx
	movl	%eax, (%rcx,%rdx,4)
	movl	260(%rsp), %eax
	cmpl	$2, %eax
	jne	.L2563
	cmpq	$0, 336(%rsp)
	je	.L3178
	movq	%rcx, %rax
	movss	224(%rsp), %xmm6
	andl	$15, %eax
	xorps	.LC29(%rip), %xmm6
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	cmpl	%ebx, %eax
	cmova	%ebx, %eax
	cmpl	$9, %ebx
	jg	.L3229
	movq	280(%rsp), %rsi
	movl	%ebx, %eax
	cmpl	$1, %eax
	movl	(%rsi), %edx
	je	.L2848
.L3244:
	addl	4(%rsi), %edx
	cmpl	$2, %eax
	je	.L2849
	addl	8(%rsi), %edx
	cmpl	$3, %eax
	je	.L2850
	addl	12(%rsi), %edx
	cmpl	$4, %eax
	je	.L2851
	addl	16(%rsi), %edx
	cmpl	$5, %eax
	je	.L2852
	addl	20(%rsi), %edx
	cmpl	$6, %eax
	je	.L2853
	addl	24(%rsi), %edx
	cmpl	$7, %eax
	je	.L2854
	addl	28(%rsi), %edx
	cmpl	$8, %eax
	je	.L2855
	addl	32(%rsi), %edx
	movl	$9, %ecx
.L2567:
	cmpl	%ebx, %eax
	je	.L2568
.L2566:
	movl	%ebx, %r10d
	leal	-1(%rbx), %r11d
	movl	%eax, %edi
	subl	%eax, %r10d
	leal	-4(%r10), %r8d
	subl	%eax, %r11d
	shrl	$2, %r8d
	cmpl	$2, %r11d
	leal	1(%r8), %r9d
	leal	0(,%r9,4), %esi
	jbe	.L2569
	movq	280(%rsp), %rax
	subl	$4, %r8d
	cmpl	$-6, %r8d
	leaq	(%rax,%rdi,4), %rax
	ja	.L2856
	pxor	%xmm0, %xmm0
	shrl	$2, %r8d
	leal	8(,%r8,4), %edi
	movl	$4, %r8d
.L2571:
	leal	4(%r8), %r11d
	paddd	(%rax), %xmm0
	prefetcht0	544(%rax)
	paddd	16(%rax), %xmm0
	addq	$64, %rax
	paddd	-32(%rax), %xmm0
	paddd	-16(%rax), %xmm0
	cmpl	%edi, %r11d
	je	.L2576
	movl	%r11d, %r8d
	jmp	.L2571
.L3127:
	movslq	-308(%rbp), %rax
	movq	-328(%rbp), %rdx
	xorps	%xmm8, %xmm6
	leaq	18(%rdx,%rax), %rcx
	movzbl	(%rcx), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	1(%rcx), %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	cvtsi2ss	%eax, %xmm0
	divss	%xmm0, %xmm6
	jmp	.L2484
.L3216:
	leaq	.LC2(%rip), %rdx
	leaq	.LC91(%rip), %rcx
	movl	$3428, %r8d
	call	_assert
	cmpl	$8, %ebx
	cmovbe	%ebx, %r12d
	jmp	.L2480
.L2476:
	leaq	.LC2(%rip), %rdx
	leaq	.LC90(%rip), %rcx
	movl	$3427, %r8d
	call	_assert
	jmp	.L2479
.L2841:
	xorl	%r13d, %r13d
	movq	152(%rsp), %rdx
	jmp	.L2481
	.p2align 4,,7
.L2856:
	pxor	%xmm0, %xmm0
	xorl	%r8d, %r8d
.L2576:
	incl	%r8d
	paddd	(%rax), %xmm0
	addq	$16, %rax
	cmpl	%r9d, %r8d
	jb	.L2576
	movdqa	%xmm0, %xmm1
	addl	%esi, %ecx
	psrldq	$8, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, 112(%rsp)
	movl	112(%rsp), %eax
	addl	%eax, %edx
	cmpl	%esi, %r10d
	je	.L2568
.L2569:
	movq	280(%rsp), %rdi
	movslq	%ecx, %rax
	addl	(%rdi,%rax,4), %edx
	leal	1(%rcx), %eax
	cmpl	%ebx, %eax
	jge	.L2568
	cltq
	addl	$2, %ecx
	addl	(%rdi,%rax,4), %edx
	cmpl	%ecx, %ebx
	jle	.L2568
	movslq	%ecx, %rcx
	addl	(%rdi,%rcx,4), %edx
.L2568:
	leal	1(%rdx), %eax
	cltq
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %rcx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	movq	%rax, 352(%rsp)
	je	.L2711
	movq	280(%rsp), %rdi
	leal	-1(%rbx), %eax
	movl	%r12d, 112(%rsp)
	movq	336(%rsp), %r13
	movq	352(%rsp), %r12
	xorl	%ebx, %ebx
	movss	240(%rsp), %xmm4
	movq	%rdi, %r11
	leaq	4(%rdi,%rax,4), %rbp
	xorl	%edi, %edi
	.p2align 4,,7
.L2585:
	movl	(%r11), %r9d
	movslq	%edi, %rax
	leaq	0(%r13,%rax,8), %rsi
	addl	%r9d, %edi
	testl	%r9d, %r9d
	leal	-1(%r9), %r8d
	jle	.L2579
	movslq	%r8d, %rax
	xorl	%edx, %edx
	movss	4(%rsi,%rax,8), %xmm0
	movq	%rsi, %rax
	jmp	.L2584
	.p2align 4,,7
.L3230:
	movaps	%xmm0, %xmm2
	movq	%r8, %r10
	movaps	%xmm1, %xmm0
	movl	$0, 16(%rcx)
	movq	%rax, %r8
.L2583:
	mulss	%xmm6, %xmm0
	movss	(%r8), %xmm3
	xorps	%xmm5, %xmm5
	movl	(%r11), %r9d
	mulss	%xmm6, %xmm2
	incl	%ebx
	mulss	%xmm4, %xmm3
	addss	%xmm5, %xmm0
	addss	%xmm5, %xmm3
	movss	%xmm0, 4(%rcx)
	movss	(%r10), %xmm0
	mulss	%xmm4, %xmm0
	movss	%xmm3, (%rcx)
	addss	%xmm5, %xmm0
	movss	%xmm0, 8(%rcx)
	movaps	%xmm2, %xmm0
	addss	%xmm5, %xmm0
	movss	%xmm0, 12(%rcx)
.L2580:
	leal	1(%rdx), %ecx
	addq	$8, %rax
	movl	%edx, %r8d
	movaps	%xmm1, %xmm0
	cmpl	%r9d, %ecx
	jge	.L2579
	movl	%ecx, %edx
.L2584:
	movss	4(%rax), %xmm1
	movq	%rax, %r10
	ucomiss	%xmm0, %xmm1
	jp	.L2888
	je	.L2580
.L2888:
	movslq	%ebx, %rcx
	movslq	%r8d, %r8
	movq	%rcx, %r9
	leaq	(%rsi,%r8,8), %r8
	salq	$4, %r9
	leaq	(%r9,%rcx,4), %rcx
	addq	%r12, %rcx
	ucomiss	%xmm1, %xmm0
	jbe	.L3230
	movl	$1, 16(%rcx)
	movaps	%xmm1, %xmm2
	jmp	.L2583
	.p2align 4,,7
.L2771:
	incq	%r13
	cmpq	120(%rsp), %r13
	jne	.L2765
	movq	152(%rsp), %rax
	movzwl	-24(%rax), %ebp
	movzwl	-20(%rax), %r9d
	movzwl	-18(%rax), %r8d
	movzwl	-22(%rax), %eax
	movl	%ebp, %ecx
	movl	%eax, %edx
.L2744:
	cvtsi2ss	304(%rsp), %xmm0
	movq	248(%rsp), %rdi
	addl	%r9d, %ecx
	movss	320(%rsp), %xmm4
	addl	%r8d, %edx
	movss	308(%rsp), %xmm2
	movw	%cx, 4(%rdi)
	movl	532(%rsp), %ecx
	movw	%dx, 6(%rdi)
	movl	536(%rsp), %edx
	movss	408(%rsp), %xmm5
	movw	%r9w, (%rdi)
	mulss	244(%rsp), %xmm0
	movss	312(%rsp), %xmm6
	addl	%ecx, %ebp
	addl	%edx, %eax
	movw	%r8w, 2(%rdi)
	movss	%xmm0, 16(%rdi)
	cvtsi2ss	%ecx, %xmm0
	mulss	%xmm4, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 8(%rdi)
	cvtsi2ss	%edx, %xmm0
	mulss	%xmm5, %xmm0
	addss	%xmm6, %xmm0
	movss	%xmm0, 12(%rdi)
	cvtsi2ss	%ebp, %xmm0
	mulss	%xmm4, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 20(%rdi)
	cvtsi2ss	%eax, %xmm0
	movq	232(%rsp), %rax
	movl	-57(%rax), %eax
	mulss	%xmm5, %xmm0
	addss	%xmm6, %xmm0
	movss	%xmm0, 24(%rdi)
.L2518:
	incl	176(%rsp)
	incl	256(%rsp)
	movl	176(%rsp), %edi
	addq	$16, 152(%rsp)
	addq	$4, 208(%rsp)
	cmpl	%eax, %edi
	jl	.L2774
.L2517:
	addq	$40, 232(%rsp)
	movq	232(%rsp), %rax
	cmpq	416(%rsp), %rax
	jne	.L2775
.L2508:
	movq	200(%rsp), %rax
	incl	412(%rsp)
	movl	412(%rsp), %esi
	addq	$112, 432(%rsp)
	movq	$0, 152(%rax)
	addq	$176, %rax
	movq	%rax, 200(%rsp)
	movq	1520(%rsp), %rax
	cmpl	%esi, 64(%rax)
	jg	.L2511
.L2510:
	movq	360(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	368(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	424(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	1520(%rsp), %rax
	movl	64(%rax), %r8d
	testl	%r8d, %r8d
	jle	.L2800
	movq	376(%rsp), %rax
	movq	1520(%rsp), %rsi
	movq	$0, 192(%rsp)
	movl	$0, 184(%rsp)
	movss	.LC24(%rip), %xmm14
	addq	$344, %rax
	movss	.LC1(%rip), %xmm15
	movq	%rax, 168(%rsp)
.L2801:
	movq	192(%rsp), %rax
	addq	72(%rsi), %rax
	cmpb	$0, 64(%rax)
	movq	%rax, 104(%rsp)
	movq	104(%rax), %r12
	je	.L2778
	movzwl	78(%r12), %eax
	incl	%eax
.L2779:
	movw	%ax, 78(%r12)
	movq	104(%rsp), %rax
	xorps	%xmm10, %xmm10
	movss	.LC107(%rip), %xmm13
	movss	44(%rax), %xmm11
	movss	48(%rax), %xmm12
	movq	168(%rsp), %rax
	movq	$0, 64(%r12)
	prefetcht0	(%rax)
	movl	-176(%rax), %eax
	movq	$0, 176(%rsp)
	movl	$0, 160(%rsp)
	testl	%eax, %eax
	jle	.L2798
	.p2align 4,,7
.L3161:
	movq	168(%rsp), %rdi
	movq	176(%rsp), %r13
	addq	-184(%rdi), %r13
	movl	16(%r13), %edx
	testl	%edx, %edx
	jle	.L2784
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	jmp	.L2797
	.p2align 4,,7
.L2787:
	movq	1520(%rsp), %rax
	movss	8(%rbx), %xmm7
	movss	12(%rbx), %xmm6
	movzwl	6(%rbx), %r15d
	movss	20(%rbx), %xmm8
	movl	28(%rax), %eax
	movss	24(%rbx), %xmm9
	movl	%eax, 112(%rsp)
	movq	1520(%rsp), %rax
	movl	24(%rax), %eax
	movl	%eax, 120(%rsp)
	movzwl	2(%rbx), %eax
	movw	%ax, 128(%rsp)
	movzwl	4(%rbx), %eax
	movw	%ax, 140(%rsp)
	movl	16(%r12), %eax
	leal	1(%rax), %esi
	movl	20(%r12), %eax
	cmpl	%esi, %eax
	jge	.L2792
	testl	%eax, %eax
	movl	$8, %edx
	je	.L2790
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L2790:
	cmpl	%edx, %esi
	jge	.L2878
	cmpl	%edx, %eax
	jl	.L3231
.L2792:
	testl	%esi, %esi
	movl	%esi, 16(%r12)
	jle	.L3232
.L2794:
	cvtsi2ss	112(%rsp), %xmm1
	movaps	%xmm14, %xmm3
	cvtsi2ss	120(%rsp), %xmm0
	movzwl	128(%rsp), %eax
	addss	%xmm10, %xmm6
	movaps	%xmm14, %xmm5
	movslq	%esi, %rsi
	addss	%xmm10, %xmm9
	cvtsi2ss	%edi, %xmm4
	addss	%xmm10, %xmm7
	movzwl	96(%rsp), %edi
	cvtsi2ss	%eax, %xmm2
	movzwl	140(%rsp), %eax
	addss	%xmm12, %xmm6
	divss	%xmm1, %xmm3
	addss	%xmm10, %xmm8
	addss	%xmm12, %xmm9
	addss	%xmm11, %xmm7
	cvtsi2ss	%eax, %xmm1
	movq	%rsi, %rax
	salq	$5, %rax
	addss	%xmm11, %xmm8
	leaq	-40(%rax,%rsi,8), %rax
	addq	24(%r12), %rax
	movq	104(%rsp), %rsi
	cmpb	$0, 32(%rsi)
	movw	%di, (%rax)
	movss	%xmm7, 8(%rax)
	movss	%xmm8, 16(%rax)
	divss	%xmm0, %xmm5
	cvtsi2ss	%r15d, %xmm0
	mulss	%xmm3, %xmm2
	mulss	%xmm3, %xmm0
	movss	96(%r12), %xmm3
	addss	%xmm15, %xmm3
	mulss	%xmm5, %xmm4
	mulss	%xmm5, %xmm1
	movss	%xmm2, 28(%rax)
	movss	%xmm0, 36(%rax)
	cvttss2si	%xmm3, %edx
	movss	%xmm4, 24(%rax)
	movss	%xmm1, 32(%rax)
	cvtsi2ss	%edx, %xmm3
	addss	%xmm3, %xmm6
	addss	%xmm9, %xmm3
	movss	%xmm6, 12(%rax)
	movss	%xmm3, 20(%rax)
	movss	16(%rbx), %xmm3
	addss	36(%rsi), %xmm3
	movss	%xmm3, 4(%rax)
	je	.L2795
	addss	%xmm15, %xmm3
	cvttss2si	%xmm3, %edx
	cvtsi2ss	%edx, %xmm3
	movss	%xmm3, 4(%rax)
.L2795:
	movq	1520(%rsp), %rax
	subss	%xmm4, %xmm1
	subss	%xmm2, %xmm0
	cvtsi2ss	24(%rax), %xmm3
	mulss	%xmm3, %xmm1
	addss	%xmm13, %xmm1
	cvttss2si	%xmm1, %edx
	cvtsi2ss	28(%rax), %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm13, %xmm0
	cvttss2si	%xmm0, %eax
	imull	%edx, %eax
	addl	%eax, 104(%r12)
.L2796:
	incl	%ebp
	addq	$28, %r14
	cmpl	%ebp, 16(%r13)
	jle	.L3233
.L2797:
	movq	%r14, %rbx
	addq	24(%r13), %rbx
	movzwl	(%rbx), %edi
	testw	%di, %di
	jne	.L2785
	cmpw	$0, 4(%rbx)
	jne	.L2785
	cmpw	$0, 2(%rbx)
	jne	.L2785
	cmpw	$0, 6(%rbx)
	je	.L2796
	.p2align 4,,7
.L2785:
	movl	4(%r13), %eax
	addl	%ebp, %eax
	movl	%eax, 96(%rsp)
	movq	104(%rsp), %rax
	cmpb	$0, 64(%rax)
	je	.L2787
	movl	96(%rsp), %esi
	movzwl	%si, %eax
	cmpl	48(%r12), %eax
	jge	.L2788
	movq	56(%r12), %rdx
	movzwl	%si, %eax
	movzwl	(%rdx,%rax,2), %eax
	cmpw	$-1, %ax
	je	.L2788
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rax
	addq	24(%r12), %rax
.L2789:
	testq	%rax, %rax
	je	.L2787
	incl	%ebp
	addq	$28, %r14
	cmpl	%ebp, 16(%r13)
	jg	.L2797
.L3233:
	movq	168(%rsp), %rax
	movl	-176(%rax), %eax
.L2784:
	incl	160(%rsp)
	addq	$40, 176(%rsp)
	movl	160(%rsp), %edi
	cmpl	%eax, %edi
	jl	.L3161
.L2798:
	movq	104(%rsp), %rax
	movq	104(%rax), %rcx
	call	_ZN6ImFont16BuildLookupTableEv
	movq	1520(%rsp), %rsi
	incl	184(%rsp)
	movl	184(%rsp), %eax
	addq	$112, 192(%rsp)
	addq	$176, 168(%rsp)
	cmpl	%eax, 64(%rsi)
	jg	.L2801
.L2800:
	movq	384(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	392(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	376(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	440(%rsp), %r8
	movq	1520(%rsp), %rcx
	movl	$1, %edx
	call	_ZN11ImFontAtlas19RenderCustomTexDataEiPv
.LEHE8:
	movq	616(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2802
	call	_ZN5ImGui7MemFreeEPv
.L2802:
	movl	$1, %eax
	jmp	.L3162
	.p2align 4,,7
.L2579:
	addq	$4, %r11
	cmpq	%rbp, %r11
	jne	.L2585
	movq	352(%rsp), %rdi
	movl	%ebx, %edx
	movl	112(%rsp), %r12d
	movq	%rdi, %rcx
	call	_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei
	cmpl	$1, %ebx
	jle	.L2586
	leaq	20(%rdi), %r8
	movl	$1, %r9d
	movq	%rdi, %r10
	.p2align 4,,7
.L2592:
	movl	16(%r8), %r11d
	movss	(%r8), %xmm4
	movss	4(%r8), %xmm1
	movq	%r8, %rax
	movss	8(%r8), %xmm3
	movl	%r9d, %edx
	movss	12(%r8), %xmm2
	.p2align 4,,7
.L2590:
	movq	%rax, %rcx
	movss	-16(%rax), %xmm0
	subq	%r10, %rcx
	ucomiss	%xmm1, %xmm0
	jbe	.L3138
	movq	-20(%rax), %rcx
	subq	$20, %rax
	movq	%rcx, 20(%rax)
	movq	8(%rax), %rcx
	movq	%rcx, 28(%rax)
	movl	16(%rax), %ecx
	movl	%ecx, 36(%rax)
	decl	%edx
	jne	.L2590
	xorl	%ecx, %ecx
.L2589:
	addq	%r10, %rcx
	movss	%xmm4, (%rcx)
	movl	%r11d, 16(%rcx)
	movss	%xmm1, 4(%rcx)
	movss	%xmm3, 8(%rcx)
	movss	%xmm2, 12(%rcx)
.L2591:
	incl	%r9d
	addq	$20, %r8
	cmpl	%ebx, %r9d
	jne	.L2592
.L2586:
	cmpl	$64, %r12d
	movq	$0, 600(%rsp)
	jg	.L3234
	movl	288(%rsp), %esi
	movl	168(%rsp), %edi
	movslq	%r12d, %rax
	leaq	752(%rsp), %r13
	salq	$2, %rax
	movslq	%ebx, %rbx
	movq	%rax, 264(%rsp)
	addl	%esi, %edi
	addq	%r13, %rax
	cvtsi2ss	%edi, %xmm0
	movq	%rax, 184(%rsp)
	movq	%rbx, %rax
	salq	$4, %rax
	movl	%edi, 260(%rsp)
	movq	352(%rsp), %rdi
	leaq	(%rax,%rbx,4), %rax
	testl	%esi, %esi
	addss	.LC24(%rip), %xmm0
	movss	%xmm0, 4(%rdi,%rax)
	jle	.L2712
.L2815:
	movq	264(%rsp), %rax
	movq	352(%rsp), %rbp
	xorl	%ebx, %ebx
	movl	$0, 240(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 128(%rsp)
	addq	$4, %rax
	movq	%rax, 288(%rsp)
	movq	272(%rsp), %rax
	addq	328(%rsp), %rax
	movq	%rax, 224(%rsp)
	leaq	600(%rsp), %rax
	movq	%rax, 296(%rsp)
	.p2align 4,,7
.L2706:
	cvtsi2ss	168(%rsp), %xmm7
	movq	264(%rsp), %r8
	xorl	%edx, %edx
	xorps	%xmm6, %xmm6
	movq	%r13, %rcx
	addss	%xmm7, %xmm6
	addss	.LC24(%rip), %xmm7
	call	memset
	movq	288(%rsp), %r8
	movq	184(%rsp), %rcx
	xorl	%edx, %edx
	call	memset
	movq	296(%rsp), %rsi
	jmp	.L2595
	.p2align 4,,7
.L3236:
	xorps	%xmm4, %xmm4
	movq	(%rbx), %rax
	ucomiss	20(%rbx), %xmm4
	movq	%rax, (%rsi)
	jp	.L2604
	je	.L3140
.L2604:
	movq	112(%rsp), %rax
	movl	$0x00000000, 20(%rbx)
	movq	%rbx, 112(%rsp)
	movq	%rax, (%rbx)
.L2603:
	movq	(%rsi), %rbx
.L2595:
	testq	%rbx, %rbx
	je	.L3235
	ucomiss	28(%rbx), %xmm6
	jnb	.L3236
	movq	%rbx, %rsi
	jmp	.L2603
	.p2align 4,,7
.L3140:
	leaq	.LC2(%rip), %rdx
	leaq	.LC96(%rip), %rcx
	movl	$2774, %r8d
.LEHB9:
	call	_assert
	jmp	.L2604
	.p2align 4,,7
.L3235:
	movss	4(%rbp), %xmm5
	ucomiss	%xmm5, %xmm7
	movaps	%xmm5, %xmm0
	xorps	%xmm8, %xmm8
	movss	.LC24(%rip), %xmm9
	jnb	.L3141
	jmp	.L2598
	.p2align 4,,7
.L2605:
	addq	$20, %rbp
	movss	4(%rbp), %xmm0
	ucomiss	%xmm0, %xmm7
	prefetcht0	44(%rbp)
	jb	.L2598
	movaps	%xmm0, %xmm5
.L3141:
	movss	12(%rbp), %xmm2
	ucomiss	%xmm0, %xmm2
	jp	.L2891
	je	.L2605
.L2891:
	movq	112(%rsp), %rax
	testq	%rax, %rax
	je	.L2607
	movss	0(%rbp), %xmm4
	movq	%rax, %rbx
	movq	(%rax), %rax
	movss	8(%rbp), %xmm1
	subss	%xmm4, %xmm1
	movq	%rax, 112(%rsp)
	movaps	%xmm1, %xmm3
	movaps	%xmm2, %xmm1
	subss	%xmm5, %xmm1
	divss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
.L2608:
	xorps	%xmm5, %xmm5
	movss	%xmm1, 12(%rbx)
	ucomiss	%xmm5, %xmm1
	jp	.L2807
	movaps	%xmm8, %xmm3
	je	.L2808
.L2807:
	movss	.LC24(%rip), %xmm3
	divss	%xmm1, %xmm3
.L2808:
	movss	%xmm3, 16(%rbx)
	movaps	%xmm6, %xmm3
	movl	16(%rbp), %eax
	subss	%xmm0, %xmm3
	testl	%eax, %eax
	mulss	%xmm3, %xmm1
	cvtsi2ss	192(%rsp), %xmm3
	addss	%xmm4, %xmm1
	subss	%xmm3, %xmm1
	movss	%xmm1, 8(%rbx)
	movss	.LC75(%rip), %xmm1
	je	.L2613
	movaps	%xmm9, %xmm1
.L2613:
	ucomiss	%xmm6, %xmm2
	movss	%xmm1, 20(%rbx)
	movq	$0, (%rbx)
	movss	%xmm0, 24(%rbx)
	movss	%xmm2, 28(%rbx)
	jb	.L3142
.L2616:
	movq	600(%rsp), %rax
	movq	%rax, (%rbx)
	movq	%rbx, 600(%rsp)
	jmp	.L2605
	.p2align 4,,7
.L2598:
	movq	600(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	je	.L2618
	movq	184(%rsp), %rdi
	movss	.LC24(%rip), %xmm10
	addss	%xmm6, %xmm10
	leaq	4(%rdi), %rsi
	movq	%rax, %rdi
	movq	%rsi, 272(%rsp)
	jmp	.L2700
	.p2align 4,,7
.L2621:
	cvtsi2ss	%r12d, %xmm0
	movss	8(%rdi), %xmm7
	ucomiss	%xmm7, %xmm0
	jbe	.L2644
	ucomiss	%xmm4, %xmm7
	jb	.L3144
	ucomiss	%xmm10, %xmm6
	jp	.L2894
	.p2align 4,,4
	jne	.L2894
	.p2align 4,,7
.L2644:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L3237
.L2700:
	movss	28(%rdi), %xmm0
	ucomiss	%xmm6, %xmm0
	jb	.L3143
.L2624:
	xorps	%xmm4, %xmm4
	movss	12(%rdi), %xmm8
	ucomiss	%xmm4, %xmm8
	jp	.L2623
	je	.L2621
.L2623:
	movss	24(%rdi), %xmm12
	movaps	%xmm8, %xmm9
	ucomiss	%xmm12, %xmm10
	movss	8(%rdi), %xmm7
	addss	%xmm7, %xmm9
	movss	16(%rdi), %xmm15
	jb	.L2631
	movss	28(%rdi), %xmm11
	ucomiss	%xmm6, %xmm11
	jnb	.L2633
.L2631:
	leaq	.LC2(%rip), %rdx
	leaq	.LC100(%rip), %rcx
	movl	$2604, %r8d
	call	_assert
	movss	28(%rdi), %xmm11
	movss	24(%rdi), %xmm12
.L2633:
	ucomiss	%xmm6, %xmm12
	jbe	.L3145
	movaps	%xmm12, %xmm14
	ucomiss	%xmm11, %xmm10
	subss	%xmm6, %xmm14
	mulss	%xmm8, %xmm14
	addss	%xmm7, %xmm14
	jbe	.L3146
.L3242:
	movaps	%xmm11, %xmm13
	subss	%xmm6, %xmm13
	mulss	%xmm8, %xmm13
	addss	%xmm7, %xmm13
.L2636:
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm13
	jb	.L2638
	ucomiss	%xmm4, %xmm14
	jb	.L2638
	cvtsi2ss	%r12d, %xmm0
	ucomiss	%xmm14, %xmm0
	jbe	.L2638
	ucomiss	%xmm13, %xmm0
	jbe	.L2638
	cvttss2si	%xmm14, %esi
	cvttss2si	%xmm13, %ebx
	cmpl	%ebx, %esi
	je	.L3238
	ucomiss	%xmm13, %xmm14
	jbe	.L2646
	movaps	%xmm12, %xmm0
	movaps	%xmm10, %xmm12
	subss	%xmm6, %xmm11
	xorps	.LC29(%rip), %xmm15
	subss	%xmm6, %xmm0
	movl	%esi, %eax
	movl	%ebx, %esi
	movaps	%xmm9, %xmm7
	movl	%eax, %ebx
	subss	%xmm11, %xmm12
	movaps	%xmm10, %xmm11
	subss	%xmm0, %xmm11
	movaps	%xmm14, %xmm0
	movaps	%xmm13, %xmm14
	movaps	%xmm0, %xmm13
.L2646:
	leal	1(%rsi), %r8d
	cvtsi2ss	%esi, %xmm0
	movss	20(%rdi), %xmm8
	movslq	%esi, %rax
	cvtsi2ss	%r8d, %xmm2
	salq	$2, %rax
	leaq	0(%r13,%rax), %rdx
	cmpl	%ebx, %r8d
	subss	%xmm0, %xmm14
	movss	.LC24(%rip), %xmm0
	subss	%xmm7, %xmm2
	addss	.LC24(%rip), %xmm14
	mulss	%xmm15, %xmm2
	addss	%xmm6, %xmm2
	mulss	.LC1(%rip), %xmm14
	movaps	%xmm2, %xmm7
	subss	%xmm12, %xmm7
	subss	%xmm14, %xmm0
	mulss	%xmm8, %xmm7
	mulss	%xmm7, %xmm0
	addss	(%rdx), %xmm0
	movss	%xmm0, (%rdx)
	movaps	%xmm15, %xmm0
	mulss	%xmm8, %xmm0
	jge	.L2648
	leal	-15(%rbx), %r9d
	addl	$2, %esi
	movss	.LC1(%rip), %xmm1
	cmpl	%esi, %r9d
	mulss	%xmm0, %xmm1
	jle	.L2865
	cmpl	$-2147483633, %ebx
	jl	.L2865
	leaq	84(%r13,%rax), %rax
	movl	%r8d, %edx
	.p2align 4,,7
.L2650:
	movaps	%xmm7, %xmm3
	movl	%edx, %ecx
	prefetcht0	(%rax)
	addss	%xmm0, %xmm7
	addl	$17, %ecx
	addl	$16, %edx
	addss	%xmm1, %xmm3
	addq	$64, %rax
	addss	-144(%rax), %xmm3
	movss	%xmm3, -144(%rax)
	movaps	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	%xmm1, %xmm3
	addss	-140(%rax), %xmm3
	movss	%xmm3, -140(%rax)
	movaps	%xmm1, %xmm3
	addss	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	-136(%rax), %xmm3
	movss	%xmm3, -136(%rax)
	movaps	%xmm1, %xmm3
	addss	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	-132(%rax), %xmm3
	movss	%xmm3, -132(%rax)
	movaps	%xmm1, %xmm3
	addss	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	-128(%rax), %xmm3
	movss	%xmm3, -128(%rax)
	movaps	%xmm1, %xmm3
	addss	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	-124(%rax), %xmm3
	movss	%xmm3, -124(%rax)
	movaps	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	%xmm1, %xmm3
	addss	-120(%rax), %xmm3
	movss	%xmm3, -120(%rax)
	movaps	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	%xmm1, %xmm3
	addss	-116(%rax), %xmm3
	movss	%xmm3, -116(%rax)
	movaps	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	%xmm1, %xmm3
	addss	-112(%rax), %xmm3
	movss	%xmm3, -112(%rax)
	movaps	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	%xmm1, %xmm3
	addss	-108(%rax), %xmm3
	movss	%xmm3, -108(%rax)
	movaps	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	%xmm1, %xmm3
	addss	-104(%rax), %xmm3
	movss	%xmm3, -104(%rax)
	movaps	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	%xmm1, %xmm3
	addss	-100(%rax), %xmm3
	movss	%xmm3, -100(%rax)
	movaps	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	%xmm1, %xmm3
	addss	-96(%rax), %xmm3
	movss	%xmm3, -96(%rax)
	movaps	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	%xmm1, %xmm3
	addss	-92(%rax), %xmm3
	movss	%xmm3, -92(%rax)
	movaps	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	%xmm1, %xmm3
	addss	-88(%rax), %xmm3
	movss	%xmm3, -88(%rax)
	movaps	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	%xmm1, %xmm3
	addss	-84(%rax), %xmm3
	movss	%xmm3, -84(%rax)
	cmpl	%ecx, %r9d
	jg	.L2650
.L2649:
	movslq	%edx, %rax
	leaq	0(%r13,%rax,4), %rax
	.p2align 4,,7
.L2651:
	movaps	%xmm1, %xmm3
	incl	%edx
	addq	$4, %rax
	addss	%xmm7, %xmm3
	addss	%xmm0, %xmm7
	addss	-4(%rax), %xmm3
	movss	%xmm3, -4(%rax)
	cmpl	%edx, %ebx
	jg	.L2651
.L2648:
	movl	%ebx, %eax
	movlpd	.LC102(%rip), %xmm4
	subl	%r8d, %eax
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm0, %xmm15
	cvtss2sd	%xmm7, %xmm0
	andpd	.LC30(%rip), %xmm0
	addss	%xmm2, %xmm15
	ucomisd	%xmm0, %xmm4
	jb	.L3147
.L2654:
	cvtsi2ss	%ebx, %xmm0
	xorps	%xmm4, %xmm4
	movslq	%ebx, %rax
	movq	(%rdi), %rdi
	salq	$2, %rax
	leaq	0(%r13,%rax), %rdx
	addq	272(%rsp), %rax
	testq	%rdi, %rdi
	subss	%xmm0, %xmm13
	movss	.LC24(%rip), %xmm0
	addss	%xmm4, %xmm13
	mulss	.LC1(%rip), %xmm13
	subss	%xmm13, %xmm0
	movaps	%xmm0, %xmm1
	movaps	%xmm11, %xmm0
	mulss	%xmm8, %xmm1
	subss	%xmm12, %xmm11
	subss	%xmm15, %xmm0
	mulss	%xmm11, %xmm8
	mulss	%xmm1, %xmm0
	addss	%xmm0, %xmm7
	addss	(%rdx), %xmm7
	movss	%xmm7, (%rdx)
	addss	(%rax), %xmm8
	movss	%xmm8, (%rax)
	jne	.L2700
	.p2align 4,,7
.L3237:
	testl	%r12d, %r12d
	jle	.L2702
.L2814:
	xorps	%xmm1, %xmm1
	movq	184(%rsp), %r8
	movq	224(%rsp), %r9
	xorl	%edx, %edx
	movss	.LC1(%rip), %xmm3
	movss	.LC104(%rip), %xmm2
	movl	$255, %ecx
	.p2align 4,,7
.L2704:
	addss	(%r8,%rdx,4), %xmm1
	movss	0(%r13,%rdx,4), %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	andpd	.LC30(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	cmpl	$255, %eax
	cmovg	%ecx, %eax
	movb	%al, (%r9,%rdx)
	incq	%rdx
	cmpl	%edx, %r12d
	jg	.L2704
	cmpq	$0, 120(%rsp)
	je	.L2701
.L2702:
	movq	120(%rsp), %rax
	.p2align 4,,7
.L2705:
	movss	8(%rax), %xmm0
	addss	12(%rax), %xmm0
	movss	%xmm0, 8(%rax)
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2705
.L2701:
	incl	168(%rsp)
	addq	%r14, 224(%rsp)
	movl	168(%rsp), %eax
	cmpl	260(%rsp), %eax
	movq	120(%rsp), %rbx
	jne	.L2706
	cmpq	$0, 128(%rsp)
	je	.L2594
	.p2align 4,,7
.L2708:
	movq	128(%rsp), %rax
	movq	%rax, %rcx
	movq	(%rax), %rbx
	call	_ZN5ImGui7MemFreeEPv
	testq	%rbx, %rbx
	movq	%rbx, 128(%rsp)
	jne	.L2708
.L2594:
	leaq	752(%rsp), %rax
	cmpq	%rax, %r13
	je	.L2712
	movq	%r13, %rcx
	call	_ZN5ImGui7MemFreeEPv
.L2712:
	movq	352(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
.L2711:
	movq	280(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	336(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
.L3178:
	movq	592(%rsp), %rax
	movq	%rax, 184(%rsp)
.L2530:
	movq	184(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	cmpl	$1, 96(%rsp)
	jbe	.L2734
	movq	152(%rsp), %rdi
	movzwl	-18(%rdi), %r10d
	movzwl	-24(%rdi), %ebp
	movzwl	-22(%rdi), %r12d
	movzwl	-20(%rdi), %r13d
	movq	328(%rsp), %rdi
	movq	$0, 560(%rsp)
	movl	%r10d, %r8d
	movl	%ebp, %esi
	subl	96(%rsp), %esi
	imull	160(%rsp), %r10d
	movq	%r13, %r9
	movl	%r12d, %edx
	movl	%r12d, %eax
	movl	%ebp, %ecx
	movl	%esi, 128(%rsp)
	leaq	560(%rsp), %rsi
	movq	%rsi, 168(%rsp)
	movslq	%r10d, %r10
	addq	%r13, %r10
	testl	%r12d, %r12d
	leaq	(%rdi,%r10), %r13
	je	.L2714
	movzbl	140(%rsp), %eax
	movl	$0, 112(%rsp)
	movl	%eax, %edi
	movl	%eax, %esi
	movq	%rax, 120(%rsp)
	shrl	$3, %edi
	andl	$4, %esi
	andl	$2, %eax
	movl	%edi, 224(%rsp)
	movl	%esi, 184(%rsp)
	movl	%eax, 192(%rsp)
	.p2align 4,,7
.L2735:
	cmpl	$8, 120(%rsp)
	movq	168(%rsp), %rsi
	movq	%rsi, %rdi
	jb	.L2716
	movl	224(%rsp), %ecx
	xorl	%eax, %eax
	rep stosq
.L2716:
	movl	184(%rsp), %eax
	testl	%eax, %eax
	je	.L2717
	movl	$0, (%rdi)
	addq	$4, %rdi
.L2717:
	movl	192(%rsp), %eax
	testl	%eax, %eax
	je	.L2718
	movw	$0, (%rdi)
	addq	$2, %rdi
.L2718:
	testb	$1, 120(%rsp)
	je	.L2719
	movb	$0, (%rdi)
.L2719:
	cmpb	$3, 140(%rsp)
	je	.L2721
	jbe	.L3239
	movzbl	140(%rsp), %eax
	cmpb	$4, %al
	je	.L2724
	cmpb	$5, %al
	jne	.L2720
	movl	128(%rsp), %eax
	testl	%eax, %eax
	js	.L2870
	movl	128(%rsp), %eax
	movq	%r13, %r8
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	$-858993459, %r9d
	leal	1(%rax), %ecx
	.p2align 4,,7
.L2738:
	movl	%ebx, %r10d
	movzbl	(%r8), %eax
	incq	%r8
	andl	$7, %r10d
	movzbl	560(%rsp,%r10), %r10d
	movl	%eax, %edx
	subl	%r10d, %eax
	addl	%eax, %esi
	leal	5(%rbx), %eax
	incl	%ebx
	andl	$7, %eax
	movb	%dl, 560(%rsp,%rax)
	movl	%esi, %eax
	mull	%r9d
	shrl	$2, %edx
	movb	%dl, -1(%r8)
	cmpl	%ecx, %ebx
	jne	.L2738
	.p2align 4,,7
.L2726:
	movslq	%ebx, %rdi
	addq	%r13, %rdi
	cmpl	%ebx, %ebp
	jg	.L3122
	jmp	.L2741
	.p2align 4,,7
.L2743:
	movl	%ebx, %eax
	xorl	%edx, %edx
	incl	%ebx
	andl	$7, %eax
	incq	%rdi
	movzbl	560(%rsp,%rax), %eax
	subl	%eax, %esi
	movl	%esi, %eax
	divl	96(%rsp)
	movb	%al, -1(%rdi)
	cmpl	%ebx, %ebp
	je	.L2741
.L3122:
	cmpb	$0, (%rdi)
	je	.L2743
	leaq	.LC2(%rip), %rdx
	leaq	.LC105(%rip), %rcx
	movl	$3490, %r8d
	call	_assert
	jmp	.L2743
	.p2align 4,,7
.L2638:
	testl	%r12d, %r12d
	jle	.L2644
	xorl	%ebx, %ebx
	.p2align 4,,6
	jmp	.L2641
	.p2align 4,,7
.L3240:
	testb	%dl, %dl
	je	.L2655
	ucomiss	%xmm11, %xmm6
	.p2align 4,,3
	jp	.L2656
	.p2align 4,,5
	jne	.L2656
.L2661:
	ucomiss	%xmm12, %xmm11
	.p2align 4,,3
	jp	.L2660
	.p2align 4,,7
	jne	.L2660
.L2697:
	ucomiss	%xmm12, %xmm10
	.p2align 4,,3
	jp	.L2696
.L3241:
	.p2align 4,,7
	jne	.L2696
.L2662:
	cmpl	%esi, %r12d
	movl	%esi, %ebx
	.p2align 4,,2
	je	.L2644
.L2641:
	leal	1(%rbx), %esi
	cvtsi2ss	%ebx, %xmm13
	cvtsi2ss	%esi, %xmm14
	movaps	%xmm13, %xmm11
	movaps	%xmm14, %xmm12
	subss	%xmm7, %xmm11
	subss	%xmm7, %xmm12
	ucomiss	%xmm14, %xmm9
	divss	%xmm8, %xmm11
	seta	%al
	ucomiss	%xmm7, %xmm13
	seta	%dl
	testb	%al, %al
	divss	%xmm8, %xmm12
	addss	%xmm6, %xmm11
	addss	%xmm6, %xmm12
	jne	.L3240
.L2655:
	ucomiss	%xmm14, %xmm7
	seta	%cl
	ucomiss	%xmm9, %xmm13
	seta	%r8b
	jbe	.L2665
	testb	%cl, %cl
	je	.L2665
	ucomiss	%xmm12, %xmm6
	jp	.L2666
	.p2align 4,,5
	jne	.L2666
.L2671:
	ucomiss	%xmm12, %xmm11
	.p2align 4,,3
	jp	.L2670
	.p2align 4,,7
	jne	.L2670
.L2685:
	ucomiss	%xmm11, %xmm10
	.p2align 4,,3
	jp	.L2684
	.p2align 4,,7
	je	.L2662
.L2684:
	movss	%xmm10, 48(%rsp)
	movaps	%xmm13, %xmm3
	movss	%xmm9, 40(%rsp)
	movq	%rdi, %r8
	movl	%ebx, %edx
	movss	%xmm11, 32(%rsp)
	movq	%r13, %rcx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2662
	.p2align 4,,7
.L2665:
	ucomiss	%xmm13, %xmm9
	jbe	.L2674
	testb	%dl, %dl
	.p2align 4,,5
	je	.L2674
.L3187:
	ucomiss	%xmm11, %xmm6
	jp	.L2681
	.p2align 4,,5
	je	.L2685
.L2681:
	movss	%xmm11, 48(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm13, 40(%rsp)
	movq	%rdi, %r8
	movl	%ebx, %edx
	movss	%xmm6, 32(%rsp)
	movq	%r13, %rcx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2685
	.p2align 4,,7
.L2674:
	ucomiss	%xmm13, %xmm7
	jbe	.L2680
	testb	%r8b, %r8b
	.p2align 4,,4
	jne	.L3187
.L2680:
	ucomiss	%xmm7, %xmm14
	jbe	.L2686
	testb	%al, %al
	.p2align 4,,2
	je	.L2686
.L3190:
	ucomiss	%xmm12, %xmm6
	jp	.L2693
	.p2align 4,,5
	je	.L2697
.L2693:
	movss	%xmm12, 48(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm14, 40(%rsp)
	movq	%rdi, %r8
	movl	%ebx, %edx
	movss	%xmm6, 32(%rsp)
	movq	%r13, %rcx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	ucomiss	%xmm12, %xmm10
	jnp	.L3241
	.p2align 4,,7
.L2696:
	movss	%xmm10, 48(%rsp)
	movaps	%xmm14, %xmm3
	movss	%xmm9, 40(%rsp)
	movq	%rdi, %r8
	movl	%ebx, %edx
	movss	%xmm12, 32(%rsp)
	movq	%r13, %rcx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2662
	.p2align 4,,7
.L2686:
	ucomiss	%xmm9, %xmm14
	jbe	.L2692
	testb	%cl, %cl
	.p2align 4,,5
	jne	.L3190
.L2692:
	ucomiss	%xmm10, %xmm6
	jp	.L2900
	.p2align 4,,5
	je	.L2662
.L2900:
	movss	%xmm10, 48(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm9, 40(%rsp)
	movq	%rdi, %r8
	movl	%ebx, %edx
	movss	%xmm6, 32(%rsp)
	movq	%r13, %rcx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2662
	.p2align 4,,7
.L2660:
	movss	%xmm12, 48(%rsp)
	movaps	%xmm13, %xmm3
	movss	%xmm14, 40(%rsp)
	movq	%rdi, %r8
	movl	%ebx, %edx
	movss	%xmm11, 32(%rsp)
	movq	%r13, %rcx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2697
	.p2align 4,,7
.L2656:
	movss	%xmm11, 48(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm13, 40(%rsp)
	movq	%rdi, %r8
	movl	%ebx, %edx
	movss	%xmm6, 32(%rsp)
	movq	%r13, %rcx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2661
	.p2align 4,,7
.L3143:
	leaq	.LC2(%rip), %rdx
	leaq	.LC99(%rip), %rcx
	movl	$2585, %r8d
	call	_assert
	jmp	.L2624
	.p2align 4,,7
.L3145:
	ucomiss	%xmm11, %xmm10
	movaps	%xmm6, %xmm12
	movaps	%xmm7, %xmm14
	ja	.L3242
.L3146:
	movaps	%xmm10, %xmm11
	movaps	%xmm9, %xmm13
	jmp	.L2636
	.p2align 4,,7
.L2670:
	movss	%xmm11, 48(%rsp)
	movaps	%xmm14, %xmm3
	movss	%xmm13, 40(%rsp)
	movq	%rdi, %r8
	movl	%ebx, %edx
	movss	%xmm12, 32(%rsp)
	movq	%r13, %rcx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2685
	.p2align 4,,7
.L2666:
	movss	%xmm12, 48(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm14, 40(%rsp)
	movq	%rdi, %r8
	movl	%ebx, %edx
	movss	%xmm6, 32(%rsp)
	movq	%r13, %rcx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2671
	.p2align 4,,7
.L3142:
	leaq	.LC2(%rip), %rdx
	leaq	.LC98(%rip), %rcx
	movl	$2787, %r8d
	call	_assert
	jmp	.L2616
	.p2align 4,,7
.L2741:
	incl	112(%rsp)
	addq	%r14, %r13
	movl	112(%rsp), %eax
	cmpl	%eax, %r12d
	jne	.L2735
.L2734:
	movq	152(%rsp), %rsi
	movzwl	-22(%rsi), %r12d
	movzwl	-24(%rsi), %ebp
	movzwl	-20(%rsi), %r9d
	movzwl	-18(%rsi), %r8d
	movl	%r12d, %edx
	movl	%r12d, %eax
	movl	%ebp, %ecx
.L2714:
	cmpl	$1, %r15d
	jbe	.L2744
	movzwl	%r8w, %r10d
	movq	328(%rsp), %rdi
	movzwl	%r9w, %r13d
	imull	160(%rsp), %r10d
	movl	%r12d, %esi
	movq	$0, 576(%rsp)
	subl	%r15d, %esi
	movslq	%r10d, %r10
	addq	%r13, %r10
	testl	%ebp, %ebp
	leaq	(%rdi,%r10), %r13
	leaq	576(%rsp), %rdi
	movq	%rdi, 128(%rsp)
	je	.L2744
	movzbl	144(%rsp), %eax
	movq	%rax, %rdi
	movq	%rax, 112(%rsp)
	leal	-1(%rbp), %eax
	leaq	1(%r13,%rax), %rax
	movq	%rax, 120(%rsp)
	movq	%rdi, %rax
	shrl	$3, %edi
	movl	%edi, 192(%rsp)
	movl	%eax, %edi
	andl	$2, %eax
	andl	$4, %edi
	movl	%eax, 184(%rsp)
	movl	%edi, 168(%rsp)
	.p2align 4,,7
.L2765:
	cmpl	$8, 112(%rsp)
	movq	128(%rsp), %rdx
	movq	%rdx, %rdi
	jb	.L2746
	movl	192(%rsp), %ecx
	xorl	%eax, %eax
	rep stosq
.L2746:
	movl	168(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L2747
	movl	$0, (%rdi)
	addq	$4, %rdi
.L2747:
	movl	184(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L2748
	movw	$0, (%rdi)
	addq	$2, %rdi
.L2748:
	testb	$1, 112(%rsp)
	je	.L2749
	movb	$0, (%rdi)
.L2749:
	cmpb	$3, 144(%rsp)
	je	.L2751
	jbe	.L3243
	movzbl	144(%rsp), %eax
	cmpb	$4, %al
	je	.L2754
	cmpb	$5, %al
	jne	.L2750
	testl	%esi, %esi
	js	.L2875
	movq	216(%rsp), %r10
	movq	%r13, %r8
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	$-858993459, %r9d
	.p2align 4,,7
.L2768:
	movl	%ecx, %r11d
	movzbl	(%r8), %eax
	prefetcht0	(%r8,%r10)
	andl	$7, %r11d
	movzbl	576(%rsp,%r11), %r11d
	movl	%eax, %edx
	subl	%r11d, %eax
	addl	%eax, %ebx
	leal	5(%rcx), %eax
	incl	%ecx
	andl	$7, %eax
	movb	%dl, 576(%rsp,%rax)
	movl	%ebx, %eax
	mull	%r9d
	shrl	$2, %edx
	movb	%dl, (%r8)
	addq	%r14, %r8
	cmpl	%ecx, %esi
	jge	.L2768
.L3179:
	leal	1(%rsi), %ebp
.L2756:
	cmpl	%r12d, %ebp
	jge	.L2771
	movl	160(%rsp), %edi
	imull	%ebp, %edi
	movslq	%edi, %rdi
	addq	%r13, %rdi
	jmp	.L2772
	.p2align 4,,7
.L2773:
	movl	%ebp, %eax
	xorl	%edx, %edx
	incl	%ebp
	andl	$7, %eax
	movzbl	576(%rsp,%rax), %eax
	subl	%eax, %ebx
	movl	%ebx, %eax
	divl	%r15d
	movb	%al, (%rdi)
	addq	%r14, %rdi
	cmpl	%r12d, %ebp
	je	.L2771
.L2772:
	cmpb	$0, (%rdi)
	movq	104(%rsp), %rax
	prefetcht0	(%rdi,%rax)
	je	.L2773
	leaq	.LC2(%rip), %rdx
	leaq	.LC106(%rip), %rcx
	movl	$3552, %r8d
	call	_assert
	jmp	.L2773
	.p2align 4,,7
.L3243:
	cmpb	$2, 144(%rsp)
	jne	.L2750
	testl	%esi, %esi
	js	.L2875
	movq	216(%rsp), %r9
	movq	%r13, %rdx
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.p2align 4,,7
.L2762:
	movl	%eax, %r10d
	movzbl	(%rdx), %ecx
	prefetcht0	(%rdx,%r9)
	andl	$7, %r10d
	movzbl	576(%rsp,%r10), %r10d
	movl	%ecx, %r8d
	subl	%r10d, %ecx
	addl	%ecx, %ebx
	leal	2(%rax), %ecx
	incl	%eax
	andl	$7, %ecx
	movb	%r8b, 576(%rsp,%rcx)
	movl	%ebx, %ecx
	shrl	%ecx
	movb	%cl, (%rdx)
	addq	%r14, %rdx
	cmpl	%eax, %esi
	jge	.L2762
	jmp	.L3179
	.p2align 4,,7
.L3239:
	cmpb	$2, 140(%rsp)
	jne	.L2720
	movl	128(%rsp), %ebx
	testl	%ebx, %ebx
	js	.L2870
	movl	128(%rsp), %edi
	movq	%r13, %rax
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	leal	1(%rdi), %ecx
	.p2align 4,,7
.L2732:
	movl	%ebx, %r9d
	movzbl	(%rax), %edx
	incq	%rax
	andl	$7, %r9d
	movzbl	560(%rsp,%r9), %r9d
	movl	%edx, %r8d
	subl	%r9d, %edx
	addl	%edx, %esi
	leal	2(%rbx), %edx
	incl	%ebx
	andl	$7, %edx
	movb	%r8b, 560(%rsp,%rdx)
	movl	%esi, %edx
	shrl	%edx
	movb	%dl, -1(%rax)
	cmpl	%ecx, %ebx
	jne	.L2732
	jmp	.L2726
	.p2align 4,,7
.L3223:
	decb	%al
	jne	.L2541
	cmpl	$-1, %ebx
	.p2align 4,,6
	je	.L2547
	movl	556(%rsp), %eax
	movq	280(%rsp), %rcx
	movslq	%ebx, %rdx
	subl	%r13d, %eax
	movl	%eax, (%rcx,%rdx,4)
.L2547:
	movswl	-26(%r12), %eax
	movl	556(%rsp), %r13d
	incl	%ebx
	testq	%rbp, %rbp
	cvtsi2ss	%eax, %xmm2
	movswl	-24(%r12), %eax
	cvtsi2ss	%eax, %xmm3
	leal	1(%r13), %eax
	movl	%eax, 556(%rsp)
	je	.L2541
	movslq	%r13d, %rax
	leaq	0(%rbp,%rax,8), %rax
	movss	%xmm2, (%rax)
	movss	%xmm3, 4(%rax)
	jmp	.L2541
	.p2align 4,,7
.L2607:
	movl	240(%rsp), %eax
	testl	%eax, %eax
	je	.L2609
	decl	%eax
	movslq	%eax, %rbx
	movl	%eax, 240(%rsp)
	salq	$5, %rbx
	addq	128(%rsp), %rbx
	je	.L2611
.L2612:
	movaps	%xmm2, %xmm3
	movss	0(%rbp), %xmm4
	movss	8(%rbp), %xmm1
	subss	%xmm4, %xmm1
	subss	%xmm0, %xmm3
	divss	%xmm3, %xmm1
	jmp	.L2608
	.p2align 4,,7
.L2721:
	movl	128(%rsp), %esi
	testl	%esi, %esi
	js	.L2870
	movl	128(%rsp), %eax
	movq	%r13, %r8
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	$-1431655765, %r9d
	leal	1(%rax), %ecx
	.p2align 4,,7
.L2736:
	movl	%ebx, %r10d
	movzbl	(%r8), %eax
	incq	%r8
	andl	$7, %r10d
	movzbl	560(%rsp,%r10), %r10d
	movl	%eax, %edx
	subl	%r10d, %eax
	addl	%eax, %esi
	leal	3(%rbx), %eax
	incl	%ebx
	andl	$7, %eax
	movb	%dl, 560(%rsp,%rax)
	movl	%esi, %eax
	mull	%r9d
	shrl	%edx
	movb	%dl, -1(%r8)
	cmpl	%ecx, %ebx
	jne	.L2736
	jmp	.L2726
	.p2align 4,,7
.L2724:
	movl	128(%rsp), %edi
	testl	%edi, %edi
	js	.L2870
	movl	128(%rsp), %edi
	movq	%r13, %rax
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	leal	1(%rdi), %ecx
	.p2align 4,,7
.L2737:
	movl	%ebx, %r9d
	movzbl	(%rax), %edx
	incq	%rax
	andl	$7, %r9d
	movzbl	560(%rsp,%r9), %r9d
	movl	%edx, %r8d
	subl	%r9d, %edx
	addl	%edx, %esi
	leal	4(%rbx), %edx
	incl	%ebx
	andl	$7, %edx
	movb	%r8b, 560(%rsp,%rdx)
	movl	%esi, %edx
	shrl	$2, %edx
	movb	%dl, -1(%rax)
	cmpl	%ecx, %ebx
	jne	.L2737
	jmp	.L2726
	.p2align 4,,7
.L2750:
	testl	%esi, %esi
	js	.L2875
	movq	344(%rsp), %r9
	movq	%r13, %r8
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	.p2align 4,,7
.L2769:
	movl	%ecx, %r10d
	movzbl	(%r8), %eax
	prefetcht0	(%r8,%r9)
	andl	$7, %r10d
	movzbl	576(%rsp,%r10), %r10d
	movl	%eax, %edx
	subl	%r10d, %eax
	addl	%eax, %ebx
	leal	(%rcx,%r15), %eax
	incl	%ecx
	andl	$7, %eax
	movb	%dl, 576(%rsp,%rax)
	xorl	%edx, %edx
	movl	%ebx, %eax
	divl	%r15d
	movb	%al, (%r8)
	addq	%r14, %r8
	cmpl	%ecx, %esi
	jge	.L2769
	jmp	.L3179
	.p2align 4,,7
.L2754:
	testl	%esi, %esi
	js	.L2875
	movq	216(%rsp), %r9
	movq	%r13, %rdx
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.p2align 4,,7
.L2767:
	movl	%eax, %r10d
	movzbl	(%rdx), %ecx
	prefetcht0	(%rdx,%r9)
	andl	$7, %r10d
	movzbl	576(%rsp,%r10), %r10d
	movl	%ecx, %r8d
	subl	%r10d, %ecx
	addl	%ecx, %ebx
	leal	4(%rax), %ecx
	incl	%eax
	andl	$7, %ecx
	movb	%r8b, 576(%rsp,%rcx)
	movl	%ebx, %ecx
	shrl	$2, %ecx
	movb	%cl, (%rdx)
	addq	%r14, %rdx
	cmpl	%eax, %esi
	jge	.L2767
	jmp	.L3179
	.p2align 4,,7
.L2720:
	movl	128(%rsp), %r11d
	testl	%r11d, %r11d
	js	.L2870
	movl	128(%rsp), %eax
	movl	96(%rsp), %r9d
	movq	%r13, %r8
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	leal	1(%rax), %ecx
	.p2align 4,,7
.L2739:
	movl	%ebx, %r10d
	movzbl	(%r8), %eax
	incq	%r8
	andl	$7, %r10d
	movzbl	560(%rsp,%r10), %r10d
	movl	%eax, %edx
	subl	%r10d, %eax
	addl	%eax, %esi
	leal	(%rbx,%r9), %eax
	incl	%ebx
	andl	$7, %eax
	movb	%dl, 560(%rsp,%rax)
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%r9d
	movb	%al, -1(%r8)
	cmpl	%ecx, %ebx
	jne	.L2739
	jmp	.L2726
	.p2align 4,,7
.L2751:
	testl	%esi, %esi
	js	.L2875
	movq	216(%rsp), %r10
	movq	%r13, %r8
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	$-1431655765, %r9d
	.p2align 4,,7
.L2766:
	movl	%ecx, %r11d
	movzbl	(%r8), %eax
	prefetcht0	(%r8,%r10)
	andl	$7, %r11d
	movzbl	576(%rsp,%r11), %r11d
	movl	%eax, %edx
	subl	%r11d, %eax
	addl	%eax, %ebx
	leal	3(%rcx), %eax
	incl	%ecx
	andl	$7, %eax
	movb	%dl, 576(%rsp,%rax)
	movl	%ebx, %eax
	mull	%r9d
	shrl	%edx
	movb	%dl, (%r8)
	addq	%r14, %r8
	cmpl	%ecx, %esi
	jge	.L2766
	jmp	.L3179
	.p2align 4,,7
.L3138:
	cmpl	%r9d, %edx
	je	.L2591
	.p2align 4,,8
	jmp	.L2589
	.p2align 4,,7
.L3144:
	ucomiss	%xmm10, %xmm6
	.p2align 4,,4
	jp	.L2895
	.p2align 4,,7
	je	.L2644
.L2895:
	movq	184(%rsp), %rcx
	movss	%xmm10, 48(%rsp)
	movq	%rdi, %r8
	movss	%xmm7, 40(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm6, 32(%rsp)
	xorl	%edx, %edx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2644
	.p2align 4,,7
.L2542:
	movswl	-26(%r12), %eax
	testq	%rbp, %rbp
	cvtsi2ss	%eax, %xmm2
	movswl	-24(%r12), %eax
	cvtsi2ss	%eax, %xmm3
	movslq	556(%rsp), %rax
	leal	1(%rax), %edx
	movl	%edx, 556(%rsp)
	je	.L2541
	leaq	0(%rbp,%rax,8), %rax
	movss	%xmm2, (%rax)
	movss	%xmm3, 4(%rax)
	jmp	.L2541
	.p2align 4,,7
.L2545:
	movss	128(%rsp), %xmm4
	movl	$0, 72(%rsp)
	movss	%xmm4, 64(%rsp)
	movswl	-24(%r12), %eax
	movq	%rsi, %rdx
	movq	%rbp, %rcx
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 56(%rsp)
	movswl	-26(%r12), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 48(%rsp)
	movswl	-20(%r12), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 40(%rsp)
	movswl	-22(%r12), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi
	movswl	-26(%r12), %eax
	cvtsi2ss	%eax, %xmm2
	movswl	-24(%r12), %eax
	cvtsi2ss	%eax, %xmm3
	jmp	.L2541
	.p2align 4,,7
.L2894:
	cvttss2si	%xmm7, %ebx
	movq	%rdi, %r8
	movss	%xmm10, 48(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm7, 40(%rsp)
	movq	%r13, %rcx
	movss	%xmm6, 32(%rsp)
	movl	%ebx, %edx
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	movq	184(%rsp), %rcx
	leal	1(%rbx), %edx
	movss	%xmm10, 48(%rsp)
	movss	%xmm7, 40(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm6, 32(%rsp)
	movq	%rdi, %r8
	call	_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.part.15
	jmp	.L2644
.L2609:
	movl	$25608, %ecx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	je	.L2611
	movq	128(%rsp), %rdi
	movl	$25568, %ebx
	movq	%rax, 128(%rsp)
	addq	128(%rsp), %rbx
	movss	12(%rbp), %xmm2
	movss	4(%rbp), %xmm0
	movl	$799, 240(%rsp)
	movq	%rdi, (%rax)
	jne	.L2612
.L2611:
	leaq	.LC2(%rip), %rdx
	leaq	.LC97(%rip), %rcx
	movl	$2373, %r8d
	call	_assert
	jmp	.L2605
.L2618:
	testl	%r12d, %r12d
	jg	.L2814
	.p2align 4,,8
	jmp	.L2701
.L2521:
	leal	-4(,%rax,4), %eax
	movslq	%eax, %rdx
	movq	200(%rsp), %rax
	movslq	40(%rax), %rax
	jmp	.L3167
.L2870:
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	.L2726
.L2875:
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	.L2756
.L3220:
	movq	200(%rsp), %rcx
	leaq	592(%rsp), %r8
	movl	%esi, %edx
	call	_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex
	movl	%eax, %edi
	jmp	.L2524
.L3135:
	testq	%rbp, %rbp
	movl	556(%rsp), %eax
	je	.L2560
	movslq	%eax, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	movss	%xmm4, (%rdx)
	movss	112(%rsp), %xmm4
	movss	%xmm4, 4(%rdx)
.L2560:
	incl	%eax
	movl	%eax, 556(%rsp)
	jmp	.L2556
.L3238:
	movl	%esi, %eax
	subss	%xmm12, %xmm11
	subl	$0, %eax
	js	.L2643
	cmpl	%esi, %r12d
	jle	.L2643
.L2645:
	cvtsi2ss	%esi, %xmm1
	movaps	%xmm14, %xmm0
	movss	.LC24(%rip), %xmm4
	movslq	%esi, %rax
	salq	$2, %rax
	leaq	0(%r13,%rax), %rdx
	addq	272(%rsp), %rax
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm13
	addss	%xmm13, %xmm0
	mulss	.LC1(%rip), %xmm0
	subss	%xmm0, %xmm4
	movss	20(%rdi), %xmm0
	mulss	%xmm4, %xmm0
	mulss	%xmm11, %xmm0
	addss	(%rdx), %xmm0
	movss	%xmm0, (%rdx)
	mulss	20(%rdi), %xmm11
	addss	(%rax), %xmm11
	movss	%xmm11, (%rax)
	jmp	.L2644
.L3221:
	movslq	672(%rsp), %rax
	leaq	(%rax,%rax), %rdx
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	200(%rsp), %rcx
	movq	%rbx, %r8
	movl	%esi, %edx
	movq	%rax, 592(%rsp)
	movq	%rax, 728(%rsp)
	call	_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx
	testl	%eax, %eax
	je	.L2525
	movl	672(%rsp), %edi
	cmpl	%edi, 736(%rsp)
	je	.L2524
	leaq	.LC2(%rip), %rdx
	leaq	.LC34(%rip), %rcx
	movl	$2113, %r8d
	call	_assert
	movl	736(%rsp), %edi
	jmp	.L2524
.L3147:
	leaq	.LC2(%rip), %rdx
	leaq	.LC103(%rip), %rcx
	movl	$2669, %r8d
	call	_assert
	jmp	.L2654
.L3219:
	movl	176(%rsp), %r8d
	addl	-69(%rdi), %r8d
	jmp	.L2520
.L3227:
	movsd	%xmm7, %xmm0
	movss	%xmm3, 452(%rsp)
	movss	%xmm2, 448(%rsp)
	movss	%xmm4, 120(%rsp)
	call	sqrt
	movss	452(%rsp), %xmm3
	movss	448(%rsp), %xmm2
	movss	120(%rsp), %xmm4
	jmp	.L2554
.L3226:
	movsd	%xmm1, %xmm0
	movss	%xmm3, 452(%rsp)
	movss	%xmm2, 448(%rsp)
	movss	%xmm4, 120(%rsp)
	call	sqrt
	movss	452(%rsp), %xmm3
	movss	448(%rsp), %xmm2
	movss	120(%rsp), %xmm4
	jmp	.L2552
.L3225:
	movss	%xmm3, 456(%rsp)
	movss	%xmm2, 452(%rsp)
	movss	%xmm4, 448(%rsp)
	movss	%xmm1, 120(%rsp)
	call	sqrt
	movss	456(%rsp), %xmm3
	movsd	%xmm0, %xmm9
	movss	452(%rsp), %xmm2
	movss	448(%rsp), %xmm4
	movss	120(%rsp), %xmm1
	jmp	.L2550
.L3224:
	movss	%xmm3, 460(%rsp)
	movss	%xmm2, 456(%rsp)
	movss	%xmm4, 452(%rsp)
	movss	%xmm1, 448(%rsp)
	movss	%xmm5, 120(%rsp)
	call	sqrt
	movss	460(%rsp), %xmm3
	movsd	%xmm0, %xmm6
	movss	456(%rsp), %xmm2
	movss	452(%rsp), %xmm4
	movss	448(%rsp), %xmm1
	movss	120(%rsp), %xmm5
	jmp	.L2548
.L2643:
	leaq	.LC2(%rip), %rdx
	leaq	.LC101(%rip), %rcx
	movl	$2632, %r8d
	call	_assert
	jmp	.L2645
.L3229:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.L2566
	movq	280(%rsp), %rsi
	cmpl	$1, %eax
	movl	(%rsi), %edx
	jne	.L3244
.L2848:
	movl	$1, %ecx
	jmp	.L2567
.L2865:
	movl	%r8d, %edx
	jmp	.L2649
.L3133:
	movq	200(%rsp), %rsi
	movss	.LC29(%rip), %xmm0
	xorps	%xmm0, %xmm1
	movslq	28(%rsi), %rax
	movq	8(%rsi), %rdx
	leaq	18(%rdx,%rax), %rcx
	movzbl	(%rcx), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	1(%rcx), %eax
	addl	%edx, %eax
	movzwl	%ax, %eax
	cvtsi2ss	%eax, %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, 244(%rsp)
	jmp	.L2514
.L3234:
	leal	1(%r12,%r12), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	call	_ZN5ImGui8MemAllocEy
	movl	288(%rsp), %esi
	movl	168(%rsp), %edi
	movq	%rax, %r13
	movslq	%r12d, %rax
	movslq	%ebx, %rbx
	salq	$2, %rax
	addl	%esi, %edi
	movq	%rax, 264(%rsp)
	addq	%r13, %rax
	cvtsi2ss	%edi, %xmm0
	movq	%rax, 184(%rsp)
	movq	%rbx, %rax
	movl	%edi, 260(%rsp)
	movq	352(%rsp), %rdi
	salq	$4, %rax
	testl	%esi, %esi
	leaq	(%rax,%rbx,4), %rax
	addss	.LC24(%rip), %xmm0
	movss	%xmm0, 4(%rdi,%rax)
	jg	.L2815
	jmp	.L2594
.L2845:
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movq	%rax, %rsi
	jmp	.L2534
.L2855:
	movl	$8, %ecx
	jmp	.L2567
.L2854:
	movl	$7, %ecx
	jmp	.L2567
.L2849:
	movl	$2, %ecx
	jmp	.L2567
.L2853:
	movl	$6, %ecx
	jmp	.L2567
.L2852:
	movl	$5, %ecx
	jmp	.L2567
.L2851:
	movl	$4, %ecx
	jmp	.L2567
.L2850:
	movl	$3, %ecx
	jmp	.L2567
.L3218:
	leaq	.LC2(%rip), %rdx
	leaq	.LC91(%rip), %rcx
	movl	$3428, %r8d
	call	_assert
	jmp	.L2505
.L2504:
	leaq	.LC2(%rip), %rdx
	leaq	.LC90(%rip), %rcx
	movl	$3427, %r8d
	call	_assert
	jmp	.L2507
.L3222:
	movslq	556(%rsp), %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	testq	%rax, %rax
	movq	%rax, 336(%rsp)
	je	.L3245
	movl	$0, 556(%rsp)
	movq	%rax, %rbp
	jmp	.L2813
	.p2align 4,,7
.L2788:
	movq	64(%r12), %rax
	jmp	.L2789
	.p2align 4,,7
.L2878:
	movl	%esi, 144(%rsp)
.L2791:
	movslq	144(%rsp), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%r12), %rcx
	movq	%rax, %r11
	movq	%rax, 152(%rsp)
	testq	%rcx, %rcx
	je	.L2793
	movslq	16(%r12), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %r8
	movq	%rcx, %rdx
	movq	%r11, %rcx
	call	memcpy
	movq	24(%r12), %rcx
.L2793:
	call	_ZN5ImGui7MemFreeEPv
	movq	152(%rsp), %rax
	testl	%esi, %esi
	movl	%esi, 16(%r12)
	movq	%rax, 24(%r12)
	movl	144(%rsp), %eax
	movl	%eax, 20(%r12)
	jg	.L2794
.L3232:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	16(%r12), %esi
	jmp	.L2794
.L2778:
	movss	20(%rax), %xmm2
	movq	%rax, %rsi
	movq	168(%rsp), %rax
	movaps	%xmm2, %xmm1
	movq	1520(%rsp), %rdi
	movslq	-308(%rax), %rcx
	movq	-336(%rax), %r8
	prefetcht0	-160(%rax)
	prefetcht0	-132(%rax)
	leaq	4(%r8,%rcx), %rdx
	leaq	6(%r8,%rcx), %r8
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %edx
	sall	$8, %eax
	addl	%eax, %edx
	movzbl	(%r8), %eax
	movswl	%dx, %edx
	sall	$8, %eax
	movl	%eax, %ecx
	movzbl	1(%r8), %eax
	movq	%rdi, 88(%r12)
	movq	%rsi, 80(%r12)
	movw	$0, 78(%r12)
	movss	%xmm2, (%r12)
	addl	%ecx, %eax
	movl	%edx, %ecx
	cwtl
	subl	%eax, %ecx
	cvtsi2ss	%ecx, %xmm0
	movl	20(%r12), %ecx
	testl	%ecx, %ecx
	divss	%xmm0, %xmm1
	cvtsi2ss	%edx, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 96(%r12)
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 100(%r12)
	jns	.L2876
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%r12), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	je	.L2781
	movslq	16(%r12), %rax
	movq	%rax, %rcx
	salq	$5, %rcx
	leaq	(%rcx,%rax,8), %r8
	movq	%rbx, %rcx
	call	memcpy
	movq	24(%r12), %rdx
.L2781:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movzwl	78(%r12), %eax
	movq	%rbx, 24(%r12)
	movl	$0, 20(%r12)
	incl	%eax
.L2780:
	movl	$0, 16(%r12)
	movl	$0, 104(%r12)
	jmp	.L2779
.L2876:
	movl	$1, %eax
	jmp	.L2780
.L3128:
	leaq	.LC5(%rip), %rdx
	leaq	.LC93(%rip), %rcx
	movl	$1379, %r8d
	call	_assert
	jmp	.L2496
.L2495:
	leaq	.LC5(%rip), %rdx
	leaq	.LC92(%rip), %rcx
	movl	$1378, %r8d
	call	_assert
	jmp	.L2498
.L3245:
.L2539:
	xorl	%ecx, %ecx
	call	_ZN5ImGui7MemFreeEPv
	movq	280(%rsp), %rcx
	call	_ZN5ImGui7MemFreeEPv
	jmp	.L3178
.L3231:
	movl	%edx, 144(%rsp)
	jmp	.L2791
.L2470:
	movslq	144(%rsp), %rax
	movl	$0, -168(%rbp)
	xorl	%r9d, %r9d
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rax
	addq	392(%rsp), %rax
	movq	%rax, -176(%rbp)
	jmp	.L2810
.L2840:
	movl	$0, 144(%rsp)
	movl	$0, 176(%rsp)
	movl	$0, 168(%rsp)
	jmp	.L2469
.L2459:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
.LEHE9:
	jmp	.L2461
.L2882:
	movq	616(%rsp), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L2804
	call	_ZN5ImGui7MemFreeEPv
.L2804:
	movq	%rbx, %rcx
.LEHB10:
	call	_Unwind_Resume
.L2838:
	xorl	%edx, %edx
	jmp	.L2456
.L2837:
	xorl	%eax, %eax
	jmp	.L2455
.L3206:
	cmpb	$0, 1(%r12)
	jne	.L2880
.L3182:
	cmpb	$0, 2(%r12)
	jne	.L2880
	cmpb	$0, 3(%r12)
	jne	.L2880
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	je	.L2425
	jmp	.L3214
.L3208:
	cmpb	$84, 1(%r12)
	jne	.L2880
	cmpb	$84, 2(%r12)
	jne	.L2880
	cmpb	$79, 3(%r12)
	jne	.L2880
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	je	.L2425
	jmp	.L3214
.L2441:
	leaq	_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges(%rip), %rax
	movl	$32, %edx
	movq	%rax, 56(%rdi)
	jmp	.L2443
.L2430:
	movl	%eax, 696(%rsp)
	xorl	%edx, %edx
	jmp	.L2431
.L3211:
	movl	600(%rsp), %eax
	testl	%eax, %eax
	je	.L2434
	movl	608(%rsp), %edx
	testl	%edx, %edx
	je	.L2432
	movl	624(%rsp), %eax
	testl	%eax, %eax
	je	.L2434
	movq	%r14, %rcx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movq	%r14, %rdx
	movq	%r15, %rcx
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
	movq	496(%rsp), %rax
	movq	504(%rsp), %rdx
	movq	%rax, 120(%rsi)
	movq	%rdx, 128(%rsi)
	movslq	624(%rsp), %rax
	movl	700(%rsp), %ecx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%eax, %r10d
	shrl	$31, %r10d
	movl	%edx, %r8d
	shrl	$31, %r8d
	movl	%r10d, %r11d
	orb	%r8b, %r11b
	jne	.L2831
	cmpl	%eax, %ecx
	jl	.L2831
	addq	688(%rsp), %rax
	movl	%edx, 112(%rsp)
.L2433:
	movq	%rax, 136(%rsi)
	movl	112(%rsp), %eax
	movl	$0, 144(%rsi)
	movl	%eax, 148(%rsi)
	movl	600(%rsp), %eax
.L2432:
	movl	%eax, %edx
	movq	%r14, %rcx
	call	_ZL15stbtt__buf_seekP10stbtt__bufi
	movq	%r14, %rdx
	movq	%r15, %rcx
	call	_ZL20stbtt__cff_get_indexP10stbtt__buf
.LEHE10:
	movq	496(%rsp), %rax
	movq	504(%rsp), %rdx
	movq	%rax, 72(%rsi)
	movq	%rdx, 80(%rsi)
	jmp	.L2428
.L2448:
	movl	128(%rsp), %eax
	cmpl	$4000, %eax
	jg	.L2834
	cmpl	$2000, %eax
	jg	.L2835
	cmpl	$1000, %eax
	jle	.L2836
	movl	$16368, %esi
	movl	$1023, %ebx
	movl	$1024, 160(%rsp)
	movq	%rdi, %rax
	jmp	.L2451
.L2831:
	xorl	%eax, %eax
	jmp	.L2433
.L2835:
	movl	$32752, %esi
	movl	$2047, %ebx
	movl	$2048, 160(%rsp)
	movq	%rdi, %rax
	jmp	.L2451
.L2834:
	movl	$65520, %esi
	movl	$4095, %ebx
	movl	$4096, 160(%rsp)
	movq	%rdi, %rax
	jmp	.L2451
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA474:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE474-.LLSDACSB474
.LLSDACSB474:
	.uleb128 .LEHB7-.LFB474
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB474
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L2882-.LFB474
	.uleb128 0
	.uleb128 .LEHB9-.LFB474
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L2882-.LFB474
	.uleb128 0
	.uleb128 .LEHB10-.LFB474
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE474:
	.text
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas18GetTexDataAsAlpha8EPPhPiS2_S2_
	.def	_ZN11ImFontAtlas18GetTexDataAsAlpha8EPPhPiS2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas18GetTexDataAsAlpha8EPPhPiS2_S2_
_ZN11ImFontAtlas18GetTexDataAsAlpha8EPPhPiS2_S2_:
.LFB464:
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
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%r9, %rdi
	testq	%rax, %rax
	je	.L3262
.L3247:
	testq	%r8, %r8
	movq	%rax, 0(%rbp)
	je	.L3250
	movl	24(%rbx), %eax
	movl	%eax, (%r8)
.L3250:
	testq	%rdi, %rdi
	je	.L3251
	movl	28(%rbx), %eax
	movl	%eax, (%rdi)
.L3251:
	testq	%rsi, %rsi
	je	.L3246
	movl	$1, (%rsi)
.L3246:
	addq	$184, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3262:
	movl	64(%rcx), %eax
	testl	%eax, %eax
	je	.L3263
.L3248:
	movq	%rbx, %rcx
	movq	%r8, 56(%rsp)
	call	_ZN11ImFontAtlas5BuildEv
	movq	8(%rbx), %rax
	movq	56(%rsp), %r8
	jmp	.L3247
	.p2align 4,,7
.L3263:
	leaq	64(%rsp), %r9
	movq	%r8, 56(%rsp)
	movq	%r9, %rcx
	call	_ZN12ImFontConfigC1Ev
	cmpb	$0, 129(%rsp)
	movl	$1, 92(%rsp)
	movl	$1, 88(%rsp)
	movb	$1, 96(%rsp)
	movq	56(%rsp), %r8
	jne	.L3249
	movabsq	$7801212464559780432, %rdx
	movq	%rdx, 129(%rsp)
	movabsq	$3199372627637330277, %rdx
	movl	$1882403104, 81(%r9)
	movq	%rdx, 73(%r9)
	movw	$120, 85(%r9)
.L3249:
	leaq	_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges(%rip), %rax
	leaq	_ZL39proggy_clean_ttf_compressed_data_base85(%rip), %rdx
	movq	%rbx, %rcx
	movss	.LC50(%rip), %xmm2
	movq	%r8, 56(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt
	movq	56(%rsp), %r8
	jmp	.L3248
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImFontAtlas18GetTexDataAsRGBA32EPPhPiS2_S2_
	.def	_ZN11ImFontAtlas18GetTexDataAsRGBA32EPPhPiS2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImFontAtlas18GetTexDataAsRGBA32EPPhPiS2_S2_
_ZN11ImFontAtlas18GetTexDataAsRGBA32EPPhPiS2_S2_:
.LFB465:
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
	movq	16(%rcx), %rax
	movq	160(%rsp), %rsi
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	testq	%rax, %rax
	je	.L3356
.L3265:
	testq	%r8, %r8
	movq	%rax, 0(%rbp)
	je	.L3281
	movl	24(%rbx), %eax
	movl	%eax, (%r8)
.L3281:
	testq	%r9, %r9
	je	.L3282
	movl	28(%rbx), %eax
	movl	%eax, (%r9)
.L3282:
	testq	%rsi, %rsi
	je	.L3264
	movl	$4, (%rsi)
.L3264:
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
.L3356:
	movq	8(%rcx), %rdi
	testq	%rdi, %rdi
	je	.L3357
.L3266:
	movl	24(%rbx), %ecx
	movq	%r9, 40(%rsp)
	imull	28(%rbx), %ecx
	movq	%r8, 32(%rsp)
	sall	$2, %ecx
	movslq	%ecx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movl	24(%rbx), %edx
	movq	%rax, 16(%rbx)
	imull	28(%rbx), %edx
	movq	32(%rsp), %r8
	movq	40(%rsp), %r9
	testl	%edx, %edx
	jle	.L3265
	movslq	%edx, %rcx
	movl	%edx, %r12d
	leaq	(%rax,%rcx,4), %r10
	cmpq	%r10, %rdi
	setnb	%r10b
	addq	%rdi, %rcx
	cmpq	%rcx, %rax
	setnb	%cl
	orb	%cl, %r10b
	je	.L3268
	cmpl	$18, %edx
	jbe	.L3268
	movq	%rax, %r11
	andl	$15, %r11d
	shrq	$2, %r11
	negq	%r11
	andl	$3, %r11d
	cmpl	%edx, %r11d
	cmova	%edx, %r11d
	testl	%r11d, %r11d
	je	.L3286
	movzbl	(%rdi), %ecx
	leaq	4(%rax), %r13
	leaq	1(%rdi), %r10
	sall	$24, %ecx
	orl	$16777215, %ecx
	cmpl	$1, %r11d
	movl	%ecx, (%rax)
	leal	-1(%rdx), %ecx
	je	.L3288
	movzbl	1(%rdi), %ecx
	leaq	8(%rax), %r13
	leaq	2(%rdi), %r10
	sall	$24, %ecx
	orl	$16777215, %ecx
	cmpl	$2, %r11d
	movl	%ecx, 4(%rax)
	leal	-2(%rdx), %ecx
	je	.L3288
	movzbl	2(%rdi), %ecx
	leaq	12(%rax), %r13
	leaq	3(%rdi), %r10
	subl	$3, %edx
	sall	$24, %ecx
	orl	$16777215, %ecx
	movl	%ecx, 8(%rax)
.L3269:
	subl	%r11d, %r12d
	movl	%r11d, %ecx
	leal	-16(%r12), %r11d
	addq	%rcx, %rdi
	leaq	(%rax,%rcx,4), %rcx
	shrl	$4, %r11d
	leal	1(%r11), %r15d
	subl	$4, %r11d
	movl	%r15d, %r14d
	movl	%r15d, 32(%rsp)
	sall	$4, %r14d
	cmpl	$-6, %r11d
	ja	.L3289
	pxor	%xmm3, %xmm3
	shrl	$2, %r11d
	pxor	%xmm1, %xmm1
	movdqa	.LC108(%rip), %xmm0
	leal	4(,%r11,4), %r15d
	xorl	%r11d, %r11d
.L3272:
	movdqu	(%rdi), %xmm2
	prefetcht0	128(%rdi)
	addl	$4, %r11d
	prefetcht0	560(%rcx)
	prefetcht0	624(%rcx)
	prefetcht0	688(%rcx)
	movdqa	%xmm2, %xmm4
	prefetcht0	752(%rcx)
	addq	$64, %rdi
	punpckhbw	%xmm3, %xmm2
	addq	$256, %rcx
	punpcklbw	%xmm3, %xmm4
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm1, %xmm4
	punpcklwd	%xmm1, %xmm5
	pslld	$24, %xmm4
	por	%xmm0, %xmm4
	pslld	$24, %xmm5
	por	%xmm0, %xmm5
	movaps	%xmm4, -240(%rcx)
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm1, %xmm4
	movaps	%xmm5, -256(%rcx)
	pslld	$24, %xmm2
	por	%xmm0, %xmm2
	pslld	$24, %xmm4
	por	%xmm0, %xmm4
	movaps	%xmm2, -208(%rcx)
	movaps	%xmm4, -224(%rcx)
	movdqu	-48(%rdi), %xmm2
	movdqa	%xmm2, %xmm4
	punpckhbw	%xmm3, %xmm2
	punpcklbw	%xmm3, %xmm4
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm1, %xmm4
	punpcklwd	%xmm1, %xmm5
	pslld	$24, %xmm4
	por	%xmm0, %xmm4
	pslld	$24, %xmm5
	por	%xmm0, %xmm5
	movaps	%xmm4, -176(%rcx)
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm1, %xmm4
	movaps	%xmm5, -192(%rcx)
	pslld	$24, %xmm2
	por	%xmm0, %xmm2
	pslld	$24, %xmm4
	por	%xmm0, %xmm4
	movaps	%xmm2, -144(%rcx)
	movaps	%xmm4, -160(%rcx)
	movdqu	-32(%rdi), %xmm2
	movdqa	%xmm2, %xmm4
	punpckhbw	%xmm3, %xmm2
	punpcklbw	%xmm3, %xmm4
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm1, %xmm4
	punpcklwd	%xmm1, %xmm5
	pslld	$24, %xmm4
	por	%xmm0, %xmm4
	pslld	$24, %xmm5
	por	%xmm0, %xmm5
	movaps	%xmm4, -112(%rcx)
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm1, %xmm4
	movaps	%xmm5, -128(%rcx)
	pslld	$24, %xmm2
	por	%xmm0, %xmm2
	pslld	$24, %xmm4
	por	%xmm0, %xmm4
	movaps	%xmm2, -80(%rcx)
	movaps	%xmm4, -96(%rcx)
	movdqu	-16(%rdi), %xmm2
	movdqa	%xmm2, %xmm4
	punpckhbw	%xmm3, %xmm2
	punpcklbw	%xmm3, %xmm4
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm1, %xmm4
	punpcklwd	%xmm1, %xmm5
	pslld	$24, %xmm4
	por	%xmm0, %xmm4
	pslld	$24, %xmm5
	por	%xmm0, %xmm5
	movaps	%xmm4, -48(%rcx)
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm1, %xmm4
	movaps	%xmm5, -64(%rcx)
	pslld	$24, %xmm2
	por	%xmm0, %xmm2
	pslld	$24, %xmm4
	por	%xmm0, %xmm4
	movaps	%xmm2, -16(%rcx)
	movaps	%xmm4, -32(%rcx)
	cmpl	%r11d, %r15d
	jne	.L3272
.L3271:
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
.L3276:
	movdqu	(%rdi), %xmm1
	addq	$64, %rcx
	addq	$16, %rdi
	incl	%r15d
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm5, %xmm1
	punpcklbw	%xmm5, %xmm2
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm4, %xmm2
	punpcklwd	%xmm4, %xmm3
	pslld	$24, %xmm2
	por	%xmm0, %xmm2
	pslld	$24, %xmm3
	por	%xmm0, %xmm3
	movaps	%xmm2, -48(%rcx)
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm4, %xmm1
	punpcklwd	%xmm4, %xmm2
	movaps	%xmm3, -64(%rcx)
	pslld	$24, %xmm1
	por	%xmm0, %xmm1
	pslld	$24, %xmm2
	por	%xmm0, %xmm2
	movaps	%xmm1, -16(%rcx)
	movaps	%xmm2, -32(%rcx)
	cmpl	%r15d, 32(%rsp)
	ja	.L3276
	movl	%r14d, %ecx
	subl	%r14d, %edx
	addq	%rcx, %r10
	cmpl	%r14d, %r12d
	leaq	0(%r13,%rcx,4), %rcx
	je	.L3265
	movzbl	(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$1, %edx
	movl	%r11d, (%rcx)
	je	.L3265
	movzbl	1(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$2, %edx
	movl	%r11d, 4(%rcx)
	je	.L3265
	movzbl	2(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$3, %edx
	movl	%r11d, 8(%rcx)
	je	.L3265
	movzbl	3(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$4, %edx
	movl	%r11d, 12(%rcx)
	je	.L3265
	movzbl	4(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$5, %edx
	movl	%r11d, 16(%rcx)
	je	.L3265
	movzbl	5(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$6, %edx
	movl	%r11d, 20(%rcx)
	je	.L3265
	movzbl	6(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$7, %edx
	movl	%r11d, 24(%rcx)
	je	.L3265
	movzbl	7(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$8, %edx
	movl	%r11d, 28(%rcx)
	je	.L3265
	movzbl	8(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$9, %edx
	movl	%r11d, 32(%rcx)
	je	.L3265
	movzbl	9(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$10, %edx
	movl	%r11d, 36(%rcx)
	je	.L3265
	movzbl	10(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$11, %edx
	movl	%r11d, 40(%rcx)
	je	.L3265
	movzbl	11(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$12, %edx
	movl	%r11d, 44(%rcx)
	je	.L3265
	movzbl	12(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$13, %edx
	movl	%r11d, 48(%rcx)
	je	.L3265
	movzbl	13(%r10), %r11d
	sall	$24, %r11d
	orl	$16777215, %r11d
	cmpl	$14, %edx
	movl	%r11d, 52(%rcx)
	je	.L3265
	movzbl	14(%r10), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, 56(%rcx)
	jmp	.L3265
	.p2align 4,,7
.L3268:
	cmpl	$16, %edx
	jle	.L3290
	leal	-16(%rdx), %r10d
	subl	$17, %edx
	movq	%rax, %rcx
	andl	$-16, %edx
	movl	%r10d, %r11d
	subl	%edx, %r11d
	jmp	.L3278
	.p2align 4,,7
.L3358:
	subl	$16, %r10d
.L3278:
	movzbl	(%rdi), %edx
	prefetcht0	23(%rdi)
	addq	$16, %rdi
	prefetcht0	92(%rcx)
	addq	$64, %rcx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -64(%rcx)
	movzbl	-15(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -60(%rcx)
	movzbl	-14(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -56(%rcx)
	movzbl	-13(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -52(%rcx)
	movzbl	-12(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -48(%rcx)
	movzbl	-11(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -44(%rcx)
	movzbl	-10(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -40(%rcx)
	movzbl	-9(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -36(%rcx)
	movzbl	-8(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -32(%rcx)
	movzbl	-7(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -28(%rcx)
	movzbl	-6(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -24(%rcx)
	movzbl	-5(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -20(%rcx)
	movzbl	-4(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -16(%rcx)
	movzbl	-3(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -12(%rcx)
	movzbl	-2(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	movl	%edx, -8(%rcx)
	movzbl	-1(%rdi), %edx
	sall	$24, %edx
	orl	$16777215, %edx
	cmpl	%r10d, %r11d
	movl	%edx, -4(%rcx)
	movl	%r10d, %edx
	jne	.L3358
	.p2align 4,,7
.L3280:
	incq	%rdi
	movzbl	-1(%rdi), %r10d
	addq	$4, %rcx
	sall	$24, %r10d
	orl	$16777215, %r10d
	decl	%edx
	movl	%r10d, -4(%rcx)
	jne	.L3280
	jmp	.L3265
	.p2align 4,,7
.L3288:
	movl	%ecx, %edx
	jmp	.L3269
	.p2align 4,,7
.L3286:
	movq	%rax, %r13
	movq	%rdi, %r10
	.p2align 4,,3
	jmp	.L3269
	.p2align 4,,7
.L3357:
	movl	64(%rcx), %eax
	testl	%eax, %eax
	je	.L3359
.L3267:
	movq	%rbx, %rcx
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	_ZN11ImFontAtlas5BuildEv
	movq	8(%rbx), %rdi
	movq	40(%rsp), %r9
	movq	32(%rsp), %r8
	jmp	.L3266
.L3289:
	xorl	%r15d, %r15d
	movdqa	.LC108(%rip), %xmm0
	jmp	.L3271
.L3359:
	xorl	%edx, %edx
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig
	movq	40(%rsp), %r9
	movq	32(%rsp), %r8
	jmp	.L3267
.L3290:
	movq	%rax, %rcx
	jmp	.L3280
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN6ImFont15SetFallbackCharEt
	.def	_ZN6ImFont15SetFallbackCharEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6ImFont15SetFallbackCharEt
_ZN6ImFont15SetFallbackCharEt:
.LFB490:
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
.LFB492:
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
	.seh_endprologue
	movl	48(%rcx), %r13d
	movq	%rcx, %rbp
	movl	%edx, %ebx
	movl	%r8d, %esi
	movzwl	%dx, %edi
	movzwl	%r8w, %r12d
	testl	%r13d, %r13d
	jle	.L3377
.L3362:
	movzwl	%bx, %ebx
	cmpl	%r13d, %ebx
	jge	.L3363
	movq	56(%rbp), %rax
	leaq	(%rdi,%rdi), %r14
	cmpw	$-1, (%rax,%rdi,2)
	jne	.L3364
	testb	%r9b, %r9b
	jne	.L3364
.L3361:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L3363:
	movzwl	%si, %esi
	cmpl	%r13d, %esi
	jge	.L3361
	leal	1(%rbx), %edx
	movq	%rbp, %rcx
	leaq	(%rdi,%rdi), %r14
	call	_ZN6ImFont9GrowIndexEi
	cmpl	48(%rbp), %ebx
	jge	.L3378
.L3366:
	movq	56(%rbp), %rdx
	cmpl	%esi, %r13d
	leaq	(%rdx,%r14), %rax
	jle	.L3367
.L3379:
	movzwl	(%rdx,%r12,2), %edx
	cmpl	32(%rbp), %ebx
	movw	%dx, (%rax)
	jl	.L3375
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
.L3375:
	movq	40(%rbp), %rdx
	leaq	(%rdx,%rdi,4), %rax
	movss	(%rdx,%r12,4), %xmm0
.L3372:
	movss	%xmm0, (%rax)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L3364:
	leal	1(%rbx), %edx
	movq	%rbp, %rcx
	movzwl	%si, %esi
	call	_ZN6ImFont9GrowIndexEi
	cmpl	48(%rbp), %ebx
	jl	.L3366
.L3378:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	56(%rbp), %rdx
	cmpl	%esi, %r13d
	leaq	(%rdx,%r14), %rax
	jg	.L3379
.L3367:
	cmpl	32(%rbp), %ebx
	movw	$-1, (%rax)
	jge	.L3380
.L3376:
	movq	40(%rbp), %rax
	movss	.LC24(%rip), %xmm0
	leaq	(%rax,%rdi,4), %rax
	jmp	.L3372
	.p2align 4,,7
.L3377:
	leaq	.LC5(%rip), %rdx
	leaq	.LC109(%rip), %rcx
	movl	$1794, %r8d
	movl	%r9d, 44(%rsp)
	call	_assert
	movl	48(%rbp), %r13d
	movl	44(%rsp), %r9d
	jmp	.L3362
.L3380:
	leaq	.LC35(%rip), %rdx
	leaq	.LC36(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L3376
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK6ImFont9FindGlyphEt
	.def	_ZNK6ImFont9FindGlyphEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6ImFont9FindGlyphEt
_ZNK6ImFont9FindGlyphEt:
.LFB493:
	.seh_endprologue
	movzwl	%dx, %eax
	movzwl	%dx, %edx
	cmpl	48(%rcx), %edx
	jge	.L3382
	movq	56(%rcx), %rdx
	movzwl	(%rdx,%rax,2), %eax
	cmpw	$-1, %ax
	je	.L3382
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rax
	addq	24(%rcx), %rax
	ret
	.p2align 4,,7
.L3382:
	movq	64(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f
	.def	_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f
_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f:
.LFB494:
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
	cmpq	%r9, %r8
	movq	%rcx, %r13
	movq	%r8, %r14
	movaps	%xmm1, %xmm11
	movq	%r9, %r15
	movss	256(%rsp), %xmm10
	jnb	.L3411
	xorps	%xmm9, %xmm9
	movq	%r8, %rsi
	movl	$1, %ebx
	xorl	%r12d, %r12d
	leaq	44(%rsp), %rbp
	movabsq	$-8646823297851326464, %rdi
	movaps	%xmm9, %xmm7
	movaps	%xmm9, %xmm6
	movaps	%xmm9, %xmm8
	jmp	.L3390
	.p2align 4,,7
.L3392:
	testl	%ecx, %ecx
	je	.L3393
.L3433:
	cmpl	$31, %ecx
	ja	.L3394
	cmpl	$10, %ecx
	.p2align 4,,3
	je	.L3412
	cmpl	$13, %ecx
	.p2align 4,,2
	je	.L3404
.L3394:
	cmpl	%ecx, 32(%r13)
	jg	.L3430
	movss	72(%r13), %xmm0
.L3396:
	cmpl	$32, %ecx
	mulss	%xmm11, %xmm0
	sete	%r8b
	cmpl	$9, %ecx
	sete	%dl
	orb	%dl, %r8b
	jne	.L3397
	cmpl	$12288, %ecx
	je	.L3397
	testb	%bl, %bl
	addss	%xmm0, %xmm6
	je	.L3431
	movq	%rax, %r14
.L3409:
	cmpl	$63, %ecx
	movl	$1, %ebx
	ja	.L3399
	movq	%rdi, %rbx
	shrq	%cl, %rbx
	andl	$1, %ebx
	xorq	$1, %rbx
	andl	$1, %ebx
.L3399:
	movaps	%xmm8, %xmm0
	addss	%xmm6, %xmm0
	ucomiss	%xmm10, %xmm0
	jnb	.L3432
.L3404:
	cmpq	%r15, %rax
	jnb	.L3420
	movq	%rax, %rsi
.L3390:
	movsbl	(%rsi), %ecx
	leaq	1(%rsi), %rax
	cmpl	$127, %ecx
	movl	%ecx, 44(%rsp)
	jbe	.L3392
	movq	%rbp, %rcx
	movq	%r15, %r8
	movq	%rsi, %rdx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	movl	44(%rsp), %ecx
	cltq
	addq	%rsi, %rax
	testl	%ecx, %ecx
	jne	.L3433
.L3393:
	movq	%rsi, %rax
.L3420:
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
	.p2align 4,,7
.L3397:
	testb	%bl, %bl
	je	.L3408
	addss	%xmm7, %xmm8
	movaps	%xmm9, %xmm7
	movq	%rsi, %r14
.L3408:
	addss	%xmm0, %xmm7
	movaps	%xmm8, %xmm0
	xorl	%ebx, %ebx
	addss	%xmm6, %xmm0
	ucomiss	%xmm10, %xmm0
	jb	.L3404
.L3432:
	ucomiss	%xmm6, %xmm10
	jbe	.L3393
	testq	%r12, %r12
	movq	%r12, %rsi
	cmove	%r14, %rsi
	movq	%rsi, %rax
	jmp	.L3420
	.p2align 4,,7
.L3430:
	movq	40(%r13), %r8
	movslq	%ecx, %rdx
	movss	(%r8,%rdx,4), %xmm0
	jmp	.L3396
	.p2align 4,,7
.L3431:
	addss	%xmm7, %xmm6
	movq	%r14, %r12
	movaps	%xmm9, %xmm7
	addss	%xmm6, %xmm8
	movaps	%xmm9, %xmm6
	jmp	.L3409
	.p2align 4,,7
.L3412:
	movl	$1, %ebx
	movaps	%xmm9, %xmm7
	movaps	%xmm9, %xmm6
	movaps	%xmm9, %xmm8
	jmp	.L3404
.L3411:
	movq	%r8, %rax
	jmp	.L3420
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
	.def	_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_:
.LFB495:
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
	movaps	%xmm14, 208(%rsp)
	.seh_savexmm	%xmm14, 208
	.seh_endprologue
	movq	%rcx, %r13
	movaps	%xmm1, %xmm10
	movq	328(%rsp), %rsi
	movaps	%xmm2, %xmm11
	movaps	%xmm3, %xmm13
	movq	320(%rsp), %rbx
	movq	336(%rsp), %rbp
	testq	%rsi, %rsi
	je	.L3485
.L3435:
	movaps	%xmm10, %xmm9
	cmpq	%rbx, %rsi
	divss	0(%r13), %xmm9
	jbe	.L3465
	leaq	76(%rsp), %rdi
	xorl	%r12d, %r12d
	xorps	%xmm12, %xmm12
	movaps	%xmm12, %xmm8
	movaps	%xmm12, %xmm7
	movaps	%xmm12, %xmm6
	movaps	%xmm12, %xmm14
	.p2align 4,,7
.L3439:
	ucomiss	%xmm12, %xmm13
	jbe	.L3440
	testq	%r12, %r12
	je	.L3486
.L3442:
	cmpq	%rbx, %r12
	ja	.L3440
	maxss	%xmm7, %xmm6
	cmpq	%rbx, %rsi
	addss	%xmm10, %xmm8
	movaps	%xmm6, %xmm7
	jbe	.L3481
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	movl	%eax, %edx
	je	.L3476
	cmpl	$32, %eax
	jne	.L3446
	.p2align 4,,7
.L3476:
	incq	%rbx
	cmpq	%rbx, %rsi
	je	.L3487
	movsbl	(%rbx), %eax
	cmpl	$32, %eax
	movl	%eax, %edx
	je	.L3476
	cmpl	$9, %eax
	je	.L3476
.L3446:
	cmpb	$10, %dl
	je	.L3488
.L3481:
	movaps	%xmm14, %xmm6
	xorl	%r12d, %r12d
.L3456:
	cmpq	%rbx, %rsi
	ja	.L3439
.L3438:
	movaps	%xmm6, %xmm4
	ucomiss	%xmm12, %xmm6
	maxss	%xmm7, %xmm4
	movaps	%xmm4, %xmm7
	jbe	.L3489
.L3436:
	addss	%xmm10, %xmm8
.L3458:
	testq	%rbp, %rbp
	je	.L3460
	movq	%rbx, 0(%rbp)
.L3460:
	movss	%xmm7, 60(%rsp)
	movl	60(%rsp), %edx
	movss	%xmm8, 60(%rsp)
	movl	60(%rsp), %eax
	movq	%rax, %rcx
	movaps	80(%rsp), %xmm6
	salq	$32, %rcx
	movl	%edx, %eax
	movaps	96(%rsp), %xmm7
	orq	%rcx, %rax
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
	movaps	144(%rsp), %xmm10
	movaps	160(%rsp), %xmm11
	movaps	176(%rsp), %xmm12
	movaps	192(%rsp), %xmm13
	movaps	208(%rsp), %xmm14
	addq	$232, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L3440:
	movsbq	(%rbx), %rax
	leaq	1(%rbx), %rdx
	cmpl	$127, %eax
	movl	%eax, 76(%rsp)
	ja	.L3490
.L3449:
	cmpl	$31, %eax
	ja	.L3451
	cmpl	$10, %eax
	je	.L3491
	cmpl	$13, %eax
	.p2align 4,,2
	je	.L3492
.L3451:
	cmpl	32(%r13), %eax
	jl	.L3493
	movss	72(%r13), %xmm0
.L3455:
	mulss	%xmm9, %xmm0
	addss	%xmm6, %xmm0
	ucomiss	%xmm11, %xmm0
	jnb	.L3438
	movq	%rdx, %rbx
	movaps	%xmm0, %xmm6
	jmp	.L3456
	.p2align 4,,7
.L3493:
	movq	40(%r13), %rcx
	movss	(%rcx,%rax,4), %xmm0
	jmp	.L3455
	.p2align 4,,7
.L3490:
	movq	%rbx, %rdx
	movq	%rsi, %r8
	movq	%rdi, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	movslq	%eax, %rdx
	movslq	76(%rsp), %rax
	addq	%rbx, %rdx
	testl	%eax, %eax
	jne	.L3449
	movaps	%xmm6, %xmm4
	movq	%rdx, %rbx
	ucomiss	%xmm12, %xmm6
	maxss	%xmm7, %xmm4
	movaps	%xmm4, %xmm7
	ja	.L3436
.L3489:
	ucomiss	%xmm12, %xmm8
	jp	.L3458
	jne	.L3458
	.p2align 4,,7
	jmp	.L3436
	.p2align 4,,7
.L3487:
	movq	%rsi, %rbx
	.p2align 4,,8
	jmp	.L3481
	.p2align 4,,7
.L3491:
	movaps	%xmm6, %xmm0
	movq	%rdx, %rbx
	addss	%xmm10, %xmm8
	cmpnless	%xmm7, %xmm0
	andps	%xmm0, %xmm6
	andnps	%xmm7, %xmm0
	movaps	%xmm0, %xmm7
	orps	%xmm6, %xmm7
	movaps	%xmm14, %xmm6
	jmp	.L3456
	.p2align 4,,7
.L3492:
	movq	%rdx, %rbx
	jmp	.L3456
	.p2align 4,,7
.L3488:
	incq	%rbx
	xorl	%r12d, %r12d
	movaps	%xmm14, %xmm6
	jmp	.L3456
	.p2align 4,,7
.L3486:
	movaps	%xmm13, %xmm0
	movq	%rsi, %r9
	movaps	%xmm9, %xmm1
	movq	%rbx, %r8
	subss	%xmm6, %xmm0
	movq	%r13, %rcx
	movss	%xmm0, 32(%rsp)
	call	_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f
	movq	%rax, %r12
	xorl	%eax, %eax
	cmpq	%rbx, %r12
	sete	%al
	addq	%rax, %r12
	jmp	.L3442
.L3485:
	movq	%rbx, %rcx
	call	strlen
	leaq	(%rbx,%rax), %rsi
	jmp	.L3435
.L3465:
	xorps	%xmm8, %xmm8
	movaps	%xmm8, %xmm7
	jmp	.L3436
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt
	.def	_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt
_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt:
.LFB496:
	pushq	%rbx
	.seh_pushreg	%rbx
	addq	$-128, %rsp
	.seh_stackalloc	128
	.seh_endprologue
	movq	%rdx, %rbx
	movl	184(%rsp), %edx
	movq	%rcx, %r8
	cmpw	$32, %dx
	movzwl	%dx, %edx
	jbe	.L3510
.L3495:
	movq	%r8, %rcx
	call	_ZNK6ImFont9FindGlyphEt
	testq	%rax, %rax
	je	.L3494
	ucomiss	.LC28(%rip), %xmm2
	jb	.L3509
	divss	(%r8), %xmm2
.L3497:
	movl	%r9d, 56(%rsp)
	shrq	$32, %r9
	movq	%rbx, %rcx
	movss	56(%rsp), %xmm0
	movl	%r9d, 56(%rsp)
	movss	56(%rsp), %xmm3
	movq	%rax, 56(%rsp)
	cvttss2si	%xmm3, %r9d
	cvttss2si	%xmm0, %edx
	movss	12(%rax), %xmm3
	movss	8(%rax), %xmm4
	cvtsi2ss	%r9d, %xmm0
	cvtsi2ss	%edx, %xmm1
	movl	$6, %edx
	mulss	%xmm2, %xmm3
	mulss	%xmm2, %xmm4
	addss	12(%r8), %xmm0
	addss	8(%r8), %xmm1
	movl	$4, %r8d
	addss	%xmm0, %xmm3
	addss	%xmm1, %xmm4
	movss	%xmm3, 68(%rsp)
	movss	20(%rax), %xmm3
	mulss	%xmm2, %xmm3
	movss	%xmm4, 64(%rsp)
	mulss	16(%rax), %xmm2
	addss	%xmm3, %xmm0
	addss	%xmm1, %xmm2
	movss	%xmm0, 84(%rsp)
	movss	%xmm2, 80(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movq	56(%rsp), %rax
	leaq	64(%rsp), %rdx
	leaq	96(%rsp), %r9
	leaq	80(%rsp), %r8
	movq	%rbx, %rcx
	movss	36(%rax), %xmm0
	movss	32(%rax), %xmm1
	movss	%xmm1, 112(%rsp)
	movss	%xmm0, 116(%rsp)
	movss	24(%rax), %xmm1
	movss	28(%rax), %xmm0
	movl	176(%rsp), %eax
	movss	%xmm1, 96(%rsp)
	movss	%xmm0, 100(%rsp)
	movl	%eax, 40(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 32(%rsp)
	call	_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	nop
	subq	$-128, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3510:
	movabsq	$4294977024, %rax
	btq	%rdx, %rax
	jnc	.L3495
.L3494:
	subq	$-128, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3509:
	movss	.LC24(%rip), %xmm2
	jmp	.L3497
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb
	.def	_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb
_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb:
.LFB497:
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
	movq	%rcx, %rdi
	movq	%rdx, %r15
	movzbl	424(%rsp), %eax
	movq	408(%rsp), %rsi
	movq	392(%rsp), %rbp
	movq	400(%rsp), %rbx
	movss	416(%rsp), %xmm8
	movb	%al, 75(%rsp)
	movq	%r9, %rax
	shrq	$32, %rax
	testq	%rsi, %rsi
	movl	%eax, 56(%rsp)
	movss	56(%rsp), %xmm6
	je	.L3637
.L3512:
	cvttss2si	%xmm6, %eax
	cvtsi2ss	%eax, %xmm6
	addss	12(%rdi), %xmm6
	ucomiss	12(%rbp), %xmm6
	ja	.L3511
	movss	(%rdi), %xmm0
	xorps	%xmm9, %xmm9
	divss	%xmm0, %xmm2
	movl	%r9d, 56(%rsp)
	movss	56(%rsp), %xmm7
	ucomiss	%xmm9, %xmm8
	movss	8(%rdi), %xmm10
	mulss	%xmm2, %xmm0
	movaps	%xmm2, %xmm15
	movaps	%xmm0, %xmm13
	jbe	.L3638
.L3514:
	movq	%rsi, %r8
	movl	$6, %r9d
	movl	16(%r15), %eax
	subq	%rbx, %r8
	movq	%r15, %rcx
	movl	%r8d, %edx
	sall	$2, %r8d
	imull	%r9d, %edx
	addl	%edx, %eax
	movl	%eax, 88(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movl	56(%r15), %eax
	cmpq	%rbx, %rsi
	movq	64(%r15), %r14
	movq	72(%r15), %r12
	movl	%eax, %ecx
	jbe	.L3521
.L3522:
	cvttss2si	%xmm7, %eax
	xorl	%r13d, %r13d
	movq	%r15, 360(%rsp)
	movq	%r13, %r15
	movq	%r14, %r13
	movq	%rbp, %r14
	movl	%ecx, %ebp
	cvtsi2ss	%eax, %xmm0
	leaq	108(%rsp), %rax
	movq	%rax, 56(%rsp)
	addss	%xmm10, %xmm0
	movaps	%xmm0, %xmm14
	movaps	%xmm0, %xmm7
	.p2align 4,,7
.L3523:
	ucomiss	%xmm9, %xmm8
	jbe	.L3524
	testq	%r15, %r15
	je	.L3639
.L3526:
	cmpq	%rbx, %r15
	ja	.L3524
	cmpq	%rbx, %rsi
	addss	%xmm13, %xmm6
	ja	.L3621
	jmp	.L3629
	.p2align 4,,7
.L3607:
	incq	%rbx
	cmpq	%rbx, %rsi
	je	.L3640
.L3621:
	movsbl	(%rbx), %eax
	cmpl	$32, %eax
	je	.L3607
	cmpl	$9, %eax
	je	.L3607
	cmpb	$10, %al
	je	.L3565
.L3629:
	movaps	%xmm14, %xmm7
	xorl	%r15d, %r15d
	.p2align 4,,7
.L3555:
	cmpq	%rbx, %rsi
	ja	.L3523
.L3627:
	movq	360(%rsp), %r15
	movq	%r13, %r14
.L3521:
	movq	%r14, %rbx
	subq	40(%r15), %rbx
	movl	36(%r15), %edx
	movq	%rbx, %rax
	movabsq	$-3689348814741910323, %rbx
	sarq	$2, %rax
	imulq	%rax, %rbx
	cmpl	%edx, %ebx
	movl	%ebx, %esi
	jle	.L3556
	testl	%edx, %edx
	movl	$8, %eax
	je	.L3557
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L3557:
	cmpl	%eax, %ebx
	jl	.L3641
	movl	%ebx, %edi
.L3558:
	movslq	%edi, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	40(%r15), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L3559
	movslq	32(%r15), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %r8
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	call	memcpy
	movq	40(%r15), %rcx
.L3559:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rbp, 40(%r15)
	movl	%edi, 36(%r15)
.L3556:
	movl	%ebx, 32(%r15)
	movq	%r12, %rbx
	subq	24(%r15), %rbx
	movl	20(%r15), %edx
	sarq	%rbx
	cmpl	%ebx, %edx
	jge	.L3560
	testl	%edx, %edx
	movl	$8, %eax
	je	.L3561
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L3561:
	cmpl	%eax, %ebx
	jl	.L3642
	movl	%ebx, %esi
.L3562:
	movslq	%esi, %rcx
	addq	%rcx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	24(%r15), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L3563
	movslq	16(%r15), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	24(%r15), %rcx
.L3563:
	call	_ZN5ImGui7MemFreeEPv
	movl	%esi, 20(%r15)
	movl	32(%r15), %esi
	movq	%rdi, 24(%r15)
.L3560:
	movl	(%r15), %eax
	movl	%ebx, 16(%r15)
	decl	%eax
	cltq
	movq	%rax, %rdx
	salq	$6, %rax
	salq	$4, %rdx
	subq	%rdx, %rax
	addq	8(%r15), %rax
	movl	88(%rsp), %edx
	subl	%ebx, %edx
	subl	%edx, (%rax)
	movq	%r14, 64(%r15)
	movq	%r12, 72(%r15)
	movl	%esi, 56(%r15)
.L3511:
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
.L3524:
	movsbl	(%rbx), %eax
	cmpl	$127, %eax
	movl	%eax, 108(%rsp)
	ja	.L3531
	incq	%rbx
.L3532:
	cmpl	$31, %eax
	ja	.L3534
	cmpl	$10, %eax
	je	.L3643
	cmpl	$13, %eax
	je	.L3555
.L3534:
	movzwl	%ax, %edx
	cmpl	%edx, 48(%rdi)
	jg	.L3644
.L3540:
	movq	64(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L3575
.L3646:
	movss	4(%rdx), %xmm0
	cmpl	$32, %eax
	mulss	%xmm15, %xmm0
	je	.L3542
	cmpl	$9, %eax
	je	.L3542
	movss	8(%rdx), %xmm1
	mulss	%xmm15, %xmm1
	movss	8(%r14), %xmm3
	addss	%xmm7, %xmm1
	ucomiss	%xmm1, %xmm3
	jb	.L3542
	movss	16(%rdx), %xmm2
	mulss	%xmm15, %xmm2
	movss	(%r14), %xmm10
	addss	%xmm7, %xmm2
	ucomiss	%xmm10, %xmm2
	jb	.L3542
	movss	12(%rdx), %xmm5
	cmpb	$0, 75(%rsp)
	movss	20(%rdx), %xmm4
	mulss	%xmm15, %xmm5
	mulss	%xmm15, %xmm4
	movss	24(%rdx), %xmm12
	movss	28(%rdx), %xmm11
	movss	%xmm12, 64(%rsp)
	movss	%xmm11, 76(%rsp)
	addss	%xmm6, %xmm5
	movss	32(%rdx), %xmm11
	addss	%xmm6, %xmm4
	movss	36(%rdx), %xmm12
	movss	%xmm11, 84(%rsp)
	movss	%xmm12, 80(%rsp)
	jne	.L3645
.L3545:
	leal	1(%rbp), %eax
	movss	76(%rsp), %xmm3
	movw	%bp, (%r12)
	addq	$80, %r13
	addq	$12, %r12
	movw	%ax, -10(%r12)
	leal	2(%rbp), %eax
	movw	%bp, -6(%r12)
	movss	64(%rsp), %xmm12
	movw	%ax, -8(%r12)
	movw	%ax, -4(%r12)
	leal	3(%rbp), %eax
	addl	$4, %ebp
	movw	%ax, -2(%r12)
	movl	384(%rsp), %eax
	movss	%xmm5, -76(%r13)
	movss	%xmm3, -68(%r13)
	movss	%xmm5, -56(%r13)
	movss	%xmm3, -48(%r13)
	movl	%eax, -64(%r13)
	movss	84(%rsp), %xmm5
	movss	80(%rsp), %xmm3
	movss	%xmm1, -80(%r13)
	movl	%eax, -44(%r13)
	movl	%eax, -24(%r13)
	movss	%xmm12, -72(%r13)
	movl	%eax, -4(%r13)
	movss	%xmm2, -60(%r13)
	movss	%xmm5, -52(%r13)
	movss	%xmm2, -40(%r13)
	movss	%xmm4, -36(%r13)
	movss	%xmm5, -32(%r13)
	movss	%xmm3, -28(%r13)
	movss	%xmm1, -20(%r13)
	movss	%xmm4, -16(%r13)
	movss	%xmm12, -12(%r13)
	movss	%xmm3, -8(%r13)
	.p2align 4,,7
.L3542:
	addss	%xmm0, %xmm7
	jmp	.L3555
	.p2align 4,,7
.L3644:
	movq	56(%rdi), %rcx
	movzwl	%ax, %edx
	movzwl	(%rcx,%rdx,2), %edx
	cmpw	$-1, %dx
	je	.L3540
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	(%rcx,%rdx,8), %rdx
	addq	24(%rdi), %rdx
	testq	%rdx, %rdx
	jne	.L3646
.L3575:
	movaps	%xmm9, %xmm0
	jmp	.L3542
	.p2align 4,,7
.L3531:
	movq	56(%rsp), %rcx
	movq	%rbx, %rdx
	movq	%rsi, %r8
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	108(%rsp), %eax
	testl	%eax, %eax
	jne	.L3532
	jmp	.L3627
	.p2align 4,,7
.L3640:
	movq	%rsi, %rbx
	movaps	%xmm14, %xmm7
	xorl	%r15d, %r15d
	jmp	.L3555
	.p2align 4,,7
.L3643:
	addss	%xmm13, %xmm6
	ucomiss	12(%r14), %xmm6
	ja	.L3627
	ucomiss	%xmm9, %xmm8
	movaps	%xmm14, %xmm7
	ja	.L3555
	movaps	%xmm13, %xmm0
	movss	4(%r14), %xmm1
	addss	%xmm6, %xmm0
	ucomiss	%xmm0, %xmm1
	jbe	.L3630
	cmpq	%rbx, %rsi
	ja	.L3620
	jmp	.L3630
	.p2align 4,,7
.L3648:
	incq	%rbx
	cmpq	%rbx, %rsi
	.p2align 4,,2
	je	.L3647
.L3620:
	cmpb	$10, (%rbx)
	.p2align 4,,2
	jne	.L3648
.L3630:
	movaps	%xmm14, %xmm7
	jmp	.L3555
	.p2align 4,,7
.L3565:
	incq	%rbx
	movaps	%xmm14, %xmm7
	xorl	%r15d, %r15d
	jmp	.L3555
	.p2align 4,,7
.L3639:
	movaps	%xmm7, %xmm0
	movq	%rsi, %r9
	movaps	%xmm8, %xmm4
	movq	%rbx, %r8
	subss	%xmm14, %xmm0
	movaps	%xmm15, %xmm1
	movq	%rdi, %rcx
	subss	%xmm0, %xmm4
	movss	%xmm4, 32(%rsp)
	call	_ZNK6ImFont21CalcWordWrapPositionAEfPKcS1_f
	movq	%rax, %r15
	xorl	%eax, %eax
	cmpq	%rbx, %r15
	sete	%al
	addq	%rax, %r15
	jmp	.L3526
.L3645:
	ucomiss	%xmm1, %xmm10
	jbe	.L3546
	movaps	%xmm2, %xmm12
	subss	%xmm10, %xmm12
	movss	%xmm12, 92(%rsp)
	movaps	%xmm2, %xmm12
	subss	%xmm1, %xmm12
	movaps	%xmm12, %xmm1
	movss	92(%rsp), %xmm12
	divss	%xmm1, %xmm12
	movaps	%xmm12, %xmm1
	movss	.LC24(%rip), %xmm12
	subss	%xmm1, %xmm12
	movaps	%xmm11, %xmm1
	movss	64(%rsp), %xmm11
	subss	%xmm11, %xmm1
	mulss	%xmm12, %xmm1
	addss	%xmm11, %xmm1
	movss	%xmm1, 64(%rsp)
	movaps	%xmm10, %xmm1
.L3546:
	movss	4(%r14), %xmm10
	ucomiss	%xmm5, %xmm10
	jbe	.L3548
	movaps	%xmm4, %xmm12
	movaps	%xmm4, %xmm11
	subss	%xmm10, %xmm12
	subss	%xmm5, %xmm11
	divss	%xmm11, %xmm12
	movss	76(%rsp), %xmm11
	movaps	%xmm12, %xmm5
	movss	.LC24(%rip), %xmm12
	subss	%xmm5, %xmm12
	movss	80(%rsp), %xmm5
	subss	%xmm11, %xmm5
	mulss	%xmm12, %xmm5
	addss	%xmm11, %xmm5
	movss	%xmm5, 76(%rsp)
	movaps	%xmm10, %xmm5
.L3548:
	ucomiss	%xmm3, %xmm2
	jbe	.L3550
	movaps	%xmm3, %xmm10
	movss	64(%rsp), %xmm11
	subss	%xmm1, %xmm2
	subss	%xmm1, %xmm10
	divss	%xmm2, %xmm10
	movss	84(%rsp), %xmm2
	subss	%xmm11, %xmm2
	mulss	%xmm10, %xmm2
	addss	%xmm11, %xmm2
	movss	%xmm2, 84(%rsp)
	movaps	%xmm3, %xmm2
.L3550:
	movss	12(%r14), %xmm3
	ucomiss	%xmm3, %xmm4
	jbe	.L3552
	movaps	%xmm3, %xmm10
	movss	80(%rsp), %xmm11
	subss	%xmm5, %xmm4
	subss	%xmm5, %xmm10
	divss	%xmm4, %xmm10
	movss	76(%rsp), %xmm4
	subss	%xmm4, %xmm11
	mulss	%xmm10, %xmm11
	addss	%xmm4, %xmm11
	movaps	%xmm3, %xmm4
	movss	%xmm11, 80(%rsp)
.L3552:
	ucomiss	%xmm4, %xmm5
	jnb	.L3542
	jmp	.L3545
.L3642:
	cmpl	%eax, %edx
	jge	.L3560
	movl	%eax, %esi
	.p2align 4,,7
	jmp	.L3562
	.p2align 4,,7
.L3641:
	cmpl	%eax, %edx
	.p2align 4,,5
	jge	.L3556
	movl	%eax, %edi
	.p2align 4,,5
	jmp	.L3558
	.p2align 4,,7
.L3638:
	movaps	%xmm6, %xmm0
	movss	4(%rbp), %xmm1
	addss	%xmm13, %xmm0
	ucomiss	%xmm0, %xmm1
	jbe	.L3514
	cmpq	%rbx, %rsi
	ja	.L3618
	jmp	.L3516
	.p2align 4,,7
.L3650:
	incq	%rbx
	cmpq	%rbx, %rsi
	.p2align 4,,2
	je	.L3649
.L3618:
	cmpb	$10, (%rbx)
	.p2align 4,,2
	jne	.L3650
	movq	%rsi, %r8
	movl	$6, %eax
	movq	%r15, %rcx
	subq	%rbx, %r8
	movl	%r8d, %edx
	sall	$2, %r8d
	imull	%eax, %edx
	movl	16(%r15), %eax
	addl	%edx, %eax
	movl	%eax, 88(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movl	56(%r15), %eax
	movq	64(%r15), %r14
	movq	72(%r15), %r12
	movl	%eax, %ecx
	jmp	.L3522
.L3637:
	movq	%rbx, %rcx
	movq	%r9, 64(%rsp)
	movss	%xmm2, 56(%rsp)
	call	strlen
	movq	64(%rsp), %r9
	leaq	(%rbx,%rax), %rsi
	movss	56(%rsp), %xmm2
	jmp	.L3512
.L3647:
	movq	%rsi, %rbx
	movaps	%xmm14, %xmm7
	jmp	.L3555
.L3649:
	movq	%rsi, %rbx
.L3516:
	subq	%rbx, %rsi
	movl	$6, %ecx
	movl	16(%r15), %eax
	movl	%esi, %edx
	movq	%rsi, %r8
	imull	%ecx, %edx
	sall	$2, %r8d
	movq	%r15, %rcx
	addl	%edx, %eax
	movl	%eax, 88(%rsp)
	call	_ZN10ImDrawList11PrimReserveEii
	movq	64(%r15), %r14
	movq	72(%r15), %r12
	jmp	.L3521
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	.def	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4:
.LFB445:
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
	movl	208(%rsp), %ebp
	movq	224(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%rdx, %r12
	movq	240(%rsp), %rbx
	testl	$-16777216, %ebp
	je	.L3651
	testq	%rdi, %rdi
	je	.L3681
.L3653:
	cmpq	216(%rsp), %rdi
	je	.L3651
	testq	%r12, %r12
	je	.L3682
.L3654:
	ucomiss	.LC28(%rip), %xmm2
	jp	.L3655
	jne	.L3655
	movq	.refptr.GImGui(%rip), %rax
	movq	(%rax), %rax
	movss	5944(%rax), %xmm2
.L3655:
	movq	88(%r12), %rax
	movq	(%rax), %r13
	movslq	96(%rsi), %rax
	testl	%eax, %eax
	jle	.L3683
.L3657:
	movq	104(%rsi), %rdx
	cmpq	-8(%rdx,%rax,8), %r13
	je	.L3658
	leaq	.LC5(%rip), %rdx
	leaq	.LC45(%rip), %rcx
	movl	$943, %r8d
	movq	%r9, 88(%rsp)
	movss	%xmm2, 84(%rsp)
	call	_assert
	movq	88(%rsp), %r9
	movss	84(%rsp), %xmm2
.L3658:
	movslq	80(%rsi), %rdx
	testl	%edx, %edx
	jle	.L3684
.L3659:
	salq	$4, %rdx
	addq	88(%rsi), %rdx
	testq	%rbx, %rbx
	movq	-16(%rdx), %rax
	movq	-8(%rdx), %rdx
	movq	%rax, 96(%rsp)
	movq	%rdx, 104(%rsp)
	je	.L3660
	movss	(%rbx), %xmm0
	movaps	%xmm0, %xmm1
	movss	96(%rsp), %xmm3
	cmpnless	%xmm3, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm3, %xmm1
	movss	100(%rsp), %xmm3
	orps	%xmm1, %xmm0
	movss	%xmm0, 96(%rsp)
	movss	4(%rbx), %xmm0
	movaps	%xmm0, %xmm1
	cmpnless	%xmm3, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm3, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 100(%rsp)
	movss	104(%rsp), %xmm0
	minss	8(%rbx), %xmm0
	movss	%xmm0, 104(%rsp)
	movss	108(%rsp), %xmm0
	minss	12(%rbx), %xmm0
	movss	%xmm0, 108(%rsp)
.L3660:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	movq	%rdi, 56(%rsp)
	setne	%al
	movss	232(%rsp), %xmm0
	movl	%eax, 72(%rsp)
	movq	216(%rsp), %rax
	movss	%xmm0, 64(%rsp)
	movl	%ebp, 32(%rsp)
	movq	%rsi, %rdx
	movq	%r12, %rcx
	movq	%rax, 48(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	(%r9), %r9
	call	_ZNK6ImFont10RenderTextEP10ImDrawListf6ImVec2jRK6ImVec4PKcS7_fb
	nop
.L3651:
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L3681:
	movq	216(%rsp), %rcx
	movq	%r9, 88(%rsp)
	movss	%xmm2, 84(%rsp)
	call	strlen
	addq	216(%rsp), %rax
	movq	88(%rsp), %r9
	movss	84(%rsp), %xmm2
	movq	%rax, %rdi
	jmp	.L3653
	.p2align 4,,7
.L3682:
	movq	.refptr.GImGui(%rip), %rax
	movq	(%rax), %rax
	movq	5936(%rax), %r12
	jmp	.L3654
	.p2align 4,,7
.L3684:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	movq	%r9, 88(%rsp)
	movss	%xmm2, 84(%rsp)
	call	_assert
	movslq	80(%rsi), %rdx
	movq	88(%rsp), %r9
	movss	84(%rsp), %xmm2
	jmp	.L3659
	.p2align 4,,7
.L3683:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	movq	%r9, 88(%rsp)
	movss	%xmm2, 84(%rsp)
	call	_assert
	movslq	96(%rsi), %rax
	movq	88(%rsp), %r9
	movss	84(%rsp), %xmm2
	jmp	.L3657
	.seh_endproc
	.section	.text$_ZN8ImVectorI6ImVec2E9push_backERKS0_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	.def	_ZN8ImVectorI6ImVec2E9push_backERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorI6ImVec2E9push_backERKS0_
_ZN8ImVectorI6ImVec2E9push_backERKS0_:
.LFB562:
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
	movq	%rdx, %rdi
	movslq	(%rcx), %rdx
	movq	%rcx, %rbx
	cmpl	4(%rcx), %edx
	je	.L3686
	movq	8(%rcx), %rax
	leal	1(%rdx), %r8d
.L3687:
	movq	(%rdi), %rcx
	movl	%r8d, (%rbx)
	movq	%rcx, (%rax,%rdx,8)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3686:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L3696
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %esi
	jl	.L3689
.L3697:
	movq	8(%rbx), %rax
	jmp	.L3687
	.p2align 4,,7
.L3696:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %esi
	jge	.L3697
.L3689:
	movslq	%eax, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L3690
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rbx), %rcx
.L3690:
	call	_ZN5ImGui7MemFreeEPv
	movslq	(%rbx), %rdx
	movq	%rbp, 8(%rbx)
	movq	%rbp, %rax
	movl	%esi, 4(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L3687
	.seh_endproc
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	.def	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
_ZN10ImDrawList13PathArcToFastERK6ImVec2fii:
.LFB429:
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
	movq	%rcx, %r12
	movq	%rdx, %r13
	movl	%r9d, %ebx
	cmpb	$0, _ZGVZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movaps	%xmm2, %xmm8
	movl	192(%rsp), %edi
	je	.L3728
.L3700:
	cmpb	$0, _ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE17circle_vtx_builds(%rip)
	jne	.L3702
	movl	$0x3f800000, _ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0x00000000, 4+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0x3f5db3d7, 8+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0x3f000000, 12+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0x3effffff, 16+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0x3f5db3d8, 20+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xb33bbd2e, 24+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0x3f800000, 28+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xbf000001, 32+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0x3f5db3d7, 36+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xbf5db3d7, 40+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0x3f000001, 44+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xbf800000, 48+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xb3bbbd2e, 52+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xbf5db3d7, 56+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xbeffffff, 60+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xbefffffd, 64+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xbf5db3d8, 68+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0x324cde2e, 72+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xbf800000, 76+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0x3efffffd, 80+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xbf5db3d8, 84+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0x3f5db3da, 88+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movl	$0xbefffff8, 92+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movb	$1, _ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE17circle_vtx_builds(%rip)
.L3702:
	cmpl	%edi, %ebx
	jg	.L3698
	ucomiss	.LC28(%rip), %xmm8
	jp	.L3705
	je	.L3729
.L3705:
	movl	112(%r12), %ecx
	movl	%edi, %eax
	movl	116(%r12), %esi
	subl	%ebx, %eax
	leal	1(%rcx,%rax), %ebp
	cmpl	%ebp, %esi
	jl	.L3730
.L3707:
	leaq	_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip), %r14
	movl	$715827883, %ebp
	jmp	.L3715
	.p2align 4,,7
.L3731:
	movq	120(%r12), %r15
	movslq	%ecx, %rax
	incl	%ecx
.L3710:
	leaq	(%r15,%rax,8), %rax
	incl	%ebx
	movl	%ecx, 112(%r12)
	cmpl	%ebx, %edi
	movss	%xmm7, (%rax)
	movss	%xmm6, 4(%rax)
	jl	.L3698
.L3715:
	movl	%ebx, %eax
	imull	%ebp
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	%edx
	subl	%eax, %edx
	movl	$12, %eax
	imull	%eax, %edx
	movl	%ebx, %eax
	subl	%edx, %eax
	cmpl	%esi, %ecx
	movslq	%eax, %rdx
	movss	4(%r14,%rdx,8), %xmm6
	movss	(%r14,%rdx,8), %xmm7
	mulss	%xmm8, %xmm6
	mulss	%xmm8, %xmm7
	addss	4(%r13), %xmm6
	addss	0(%r13), %xmm7
	jne	.L3731
	testl	%ecx, %ecx
	leal	1(%rcx), %edx
	movl	$8, %esi
	je	.L3711
	movl	%ecx, %esi
	shrl	$31, %esi
	addl	%ecx, %esi
	sarl	%esi
	addl	%ecx, %esi
.L3711:
	cmpl	%esi, %edx
	cmovge	%edx, %esi
	cmpl	%ecx, %esi
	jg	.L3712
	movl	%ecx, %esi
	movslq	%ecx, %rax
	movq	120(%r12), %r15
	movl	%edx, %ecx
	jmp	.L3710
	.p2align 4,,7
.L3698:
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
	.p2align 4,,7
.L3712:
	movslq	%esi, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%r12), %rcx
	movq	%rax, %r15
	testq	%rcx, %rcx
	je	.L3713
	movslq	112(%r12), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%r12), %rcx
.L3713:
	call	_ZN5ImGui7MemFreeEPv
	movslq	112(%r12), %rax
	movq	%r15, 120(%r12)
	movl	%esi, 116(%r12)
	leal	1(%rax), %ecx
	jmp	.L3710
	.p2align 4,,7
.L3728:
	leaq	_ZGVZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L3700
	xorps	%xmm0, %xmm0
	leaq	_ZGVZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip), %rcx
	movaps	%xmm0, _ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movaps	%xmm0, 16+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movaps	%xmm0, 32+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movaps	%xmm0, 48+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movaps	%xmm0, 64+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	movaps	%xmm0, 80+_ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx(%rip)
	call	__cxa_guard_release
	jmp	.L3700
	.p2align 4,,7
.L3729:
	leaq	112(%r12), %rcx
	movaps	32(%rsp), %xmm6
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
	.p2align 4,,7
.L3730:
	movslq	%ebp, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%r12), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3708
	movslq	112(%r12), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%r12), %rcx
.L3708:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%r12)
	movl	%ebp, 116(%r12)
	movl	%ebp, %esi
	movl	112(%r12), %ecx
	jmp	.L3707
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList9PathArcToERK6ImVec2fffi
	.def	_ZN10ImDrawList9PathArcToERK6ImVec2fffi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList9PathArcToERK6ImVec2fffi
_ZN10ImDrawList9PathArcToERK6ImVec2fffi:
.LFB430:
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
	movq	%rcx, %rbp
	movq	%rdx, %r12
	ucomiss	.LC28(%rip), %xmm2
	movaps	%xmm2, %xmm8
	movl	232(%rsp), %r13d
	movaps	%xmm3, %xmm10
	jp	.L3733
	je	.L3754
.L3733:
	movl	112(%rbp), %eax
	movl	116(%rbp), %esi
	leal	1(%r13,%rax), %ebx
	cmpl	%esi, %ebx
	jg	.L3755
.L3735:
	testl	%r13d, %r13d
	js	.L3732
	movss	224(%rsp), %xmm9
	movl	112(%rbp), %ebx
	xorl	%edi, %edi
	cvtsi2ss	%r13d, %xmm11
	subss	%xmm10, %xmm9
	jmp	.L3744
	.p2align 4,,7
.L3756:
	movq	120(%rbp), %rax
	movslq	%ebx, %rdx
	incl	%ebx
.L3739:
	leaq	(%rax,%rdx,8), %rax
	incl	%edi
	movl	%ebx, 112(%rbp)
	cmpl	%edi, %r13d
	movss	%xmm6, (%rax)
	movss	%xmm7, 4(%rax)
	jl	.L3732
.L3744:
	cvtsi2ss	%edi, %xmm6
	divss	%xmm11, %xmm6
	mulss	%xmm9, %xmm6
	addss	%xmm10, %xmm6
	movaps	%xmm6, %xmm0
	call	sinf
	movaps	%xmm0, %xmm7
	movaps	%xmm6, %xmm0
	mulss	%xmm8, %xmm7
	call	cosf
	mulss	%xmm8, %xmm0
	movss	(%r12), %xmm6
	cmpl	%esi, %ebx
	addss	4(%r12), %xmm7
	addss	%xmm0, %xmm6
	jne	.L3756
	testl	%ebx, %ebx
	leal	1(%rbx), %ecx
	movl	$8, %esi
	je	.L3740
	movl	%ebx, %esi
	shrl	$31, %esi
	addl	%ebx, %esi
	sarl	%esi
	addl	%ebx, %esi
.L3740:
	cmpl	%esi, %ecx
	cmovge	%ecx, %esi
	cmpl	%ebx, %esi
	jg	.L3741
	movl	%ebx, %esi
	movslq	%ebx, %rdx
	movq	120(%rbp), %rax
	movl	%ecx, %ebx
	jmp	.L3739
	.p2align 4,,7
.L3741:
	movslq	%esi, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbp), %rcx
	movq	%rax, %r14
	testq	%rcx, %rcx
	je	.L3742
	movslq	112(%rbp), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbp), %rcx
.L3742:
	call	_ZN5ImGui7MemFreeEPv
	movslq	112(%rbp), %rdx
	movq	%r14, 120(%rbp)
	movq	%r14, %rax
	movl	%esi, 116(%rbp)
	leal	1(%rdx), %ebx
	jmp	.L3739
	.p2align 4,,7
.L3732:
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
	.p2align 4,,7
.L3754:
	leaq	112(%rcx), %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movl	112(%rbp), %eax
	movl	116(%rbp), %esi
	leal	1(%r13,%rax), %ebx
	cmpl	%esi, %ebx
	jle	.L3735
.L3755:
	movslq	%ebx, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbp), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3736
	movslq	112(%rbp), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbp), %rcx
.L3736:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbp)
	movl	%ebx, 116(%rbp)
	movl	%ebx, %esi
	jmp	.L3735
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList9AddCircleERK6ImVec2fjif
	.def	_ZN10ImDrawList9AddCircleERK6ImVec2fjif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList9AddCircleERK6ImVec2fjif
_ZN10ImDrawList9AddCircleERK6ImVec2fjif:
.LFB442:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	testl	$-16777216, %r9d
	movq	%rcx, %rbx
	jne	.L3767
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3767:
	cvtsi2ss	144(%rsp), %xmm1
	subss	.LC1(%rip), %xmm2
	movl	144(%rsp), %eax
	xorps	%xmm3, %xmm3
	movl	%r9d, 76(%rsp)
	movl	%eax, 40(%rsp)
	movaps	%xmm1, %xmm0
	subss	.LC24(%rip), %xmm0
	mulss	.LC125(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN10ImDrawList9PathArcToERK6ImVec2fffi
	movss	152(%rsp), %xmm0
	movq	120(%rbx), %rdx
	movl	76(%rsp), %r9d
	movl	112(%rbx), %r8d
	movss	%xmm0, 40(%rsp)
	movl	$1, 48(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, %rcx
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3759
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3760
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3760:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3759:
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
.LFB443:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	testl	$-16777216, %r9d
	movq	%rcx, %rbx
	jne	.L3778
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3778:
	cvtsi2ss	128(%rsp), %xmm1
	movl	128(%rsp), %eax
	xorps	%xmm3, %xmm3
	movl	%r9d, 60(%rsp)
	movl	%eax, 40(%rsp)
	movaps	%xmm1, %xmm0
	subss	.LC24(%rip), %xmm0
	mulss	.LC125(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN10ImDrawList9PathArcToERK6ImVec2fffi
	movq	120(%rbx), %rdx
	movl	60(%rsp), %r9d
	movq	%rbx, %rcx
	movl	112(%rbx), %r8d
	movl	$1, 32(%rsp)
	call	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3770
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3771
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3771:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3770:
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
.LFB431:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
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
	movaps	%xmm3, %xmm0
	movq	%rcx, %rsi
	movss	360(%rsp), %xmm9
	movss	368(%rsp), %xmm10
	movaps	%xmm9, %xmm6
	movss	336(%rsp), %xmm7
	subss	%xmm9, %xmm0
	movaps	%xmm10, %xmm5
	movaps	%xmm7, %xmm4
	movss	344(%rsp), %xmm11
	subss	%xmm1, %xmm6
	movss	352(%rsp), %xmm12
	subss	%xmm2, %xmm5
	movss	376(%rsp), %xmm13
	subss	%xmm10, %xmm4
	mulss	%xmm5, %xmm0
	mulss	%xmm6, %xmm4
	subss	%xmm4, %xmm0
	movaps	%xmm11, %xmm4
	subss	%xmm9, %xmm4
	movaps	%xmm0, %xmm8
	movaps	%xmm12, %xmm0
	mulss	%xmm5, %xmm4
	subss	%xmm10, %xmm0
	mulss	%xmm6, %xmm0
	subss	%xmm0, %xmm4
	movaps	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm8
	jb	.L3787
.L3780:
	ucomiss	%xmm4, %xmm0
	jb	.L3788
.L3781:
	mulss	%xmm6, %xmm6
	addss	%xmm8, %xmm0
	mulss	%xmm5, %xmm5
	mulss	%xmm0, %xmm0
	addss	%xmm6, %xmm5
	mulss	%xmm13, %xmm5
	ucomiss	%xmm0, %xmm5
	ja	.L3789
	cmpl	$9, 384(%rsp)
	jle	.L3790
.L3779:
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
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3790:
	movaps	%xmm1, %xmm0
	movl	384(%rsp), %eax
	movaps	%xmm2, %xmm4
	movss	%xmm13, 72(%rsp)
	addss	%xmm3, %xmm0
	movss	.LC1(%rip), %xmm8
	addss	%xmm11, %xmm3
	leal	1(%rax), %ebx
	movq	%rsi, %rcx
	addss	%xmm7, %xmm4
	addss	%xmm12, %xmm7
	movl	%ebx, 80(%rsp)
	mulss	%xmm8, %xmm0
	addss	%xmm9, %xmm11
	movaps	%xmm3, %xmm6
	mulss	%xmm8, %xmm4
	addss	%xmm10, %xmm12
	mulss	%xmm8, %xmm6
	mulss	%xmm8, %xmm7
	movaps	%xmm0, %xmm5
	mulss	%xmm8, %xmm11
	mulss	%xmm8, %xmm12
	movaps	%xmm4, %xmm15
	addss	%xmm6, %xmm5
	movss	%xmm4, 32(%rsp)
	addss	%xmm7, %xmm15
	addss	%xmm11, %xmm6
	addss	%xmm12, %xmm7
	mulss	%xmm8, %xmm5
	mulss	%xmm8, %xmm15
	mulss	%xmm8, %xmm6
	mulss	%xmm8, %xmm7
	movaps	%xmm5, %xmm14
	movss	%xmm5, 40(%rsp)
	movaps	%xmm15, %xmm3
	movss	%xmm15, 48(%rsp)
	addss	%xmm6, %xmm14
	addss	%xmm7, %xmm3
	mulss	%xmm8, %xmm14
	mulss	%xmm3, %xmm8
	movaps	%xmm0, %xmm3
	movss	%xmm14, 56(%rsp)
	movss	%xmm8, 64(%rsp)
	call	_ZL21PathBezierToCasteljauP8ImVectorI6ImVec2Efffffffffi
	movss	%xmm13, 72(%rsp)
	movaps	%xmm6, %xmm3
	movss	%xmm10, 64(%rsp)
	movaps	%xmm8, %xmm2
	movss	%xmm9, 56(%rsp)
	movaps	%xmm14, %xmm1
	movss	%xmm12, 48(%rsp)
	movl	%ebx, 80(%rsp)
	movq	%rsi, %rcx
	movss	%xmm11, 40(%rsp)
	movss	%xmm7, 32(%rsp)
	call	_ZL21PathBezierToCasteljauP8ImVectorI6ImVec2Efffffffffi
	jmp	.L3779
	.p2align 4,,7
.L3788:
	movss	.LC29(%rip), %xmm4
	xorps	%xmm4, %xmm0
	jmp	.L3781
	.p2align 4,,7
.L3787:
	movss	.LC29(%rip), %xmm14
	xorps	%xmm14, %xmm8
	jmp	.L3780
	.p2align 4,,7
.L3789:
	leaq	96(%rsp), %rdx
	movq	%rsi, %rcx
	movss	%xmm9, 96(%rsp)
	movss	%xmm10, 100(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	jmp	.L3779
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList17PathBezierCurveToERK6ImVec2S2_S2_i
	.def	_ZN10ImDrawList17PathBezierCurveToERK6ImVec2S2_S2_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList17PathBezierCurveToERK6ImVec2S2_S2_i
_ZN10ImDrawList17PathBezierCurveToERK6ImVec2S2_S2_i:
.LFB432:
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
	movq	%rdx, %rbp
	movq	%rcx, %rdi
	movq	%r8, %r14
	movl	112(%rcx), %edx
	movq	%r9, %r15
	movl	320(%rsp), %r12d
	testl	%edx, %edx
	jle	.L3808
.L3792:
	movq	120(%rdi), %r13
	movslq	%edx, %rax
	cmpl	$0, %r12d
	leaq	-8(%r13,%rax,8), %rax
	movss	(%rax), %xmm9
	movss	4(%rax), %xmm10
	je	.L3809
	cvtsi2ss	%r12d, %xmm0
	movss	.LC24(%rip), %xmm8
	movaps	%xmm8, %xmm11
	divss	%xmm0, %xmm11
	jle	.L3791
	movl	116(%rdi), %ebx
	movl	$1, %esi
	movss	.LC47(%rip), %xmm7
	jmp	.L3801
	.p2align 4,,7
.L3810:
	movslq	%edx, %r8
	incl	%edx
.L3797:
	leaq	0(%r13,%r8,8), %rax
	incl	%esi
	movl	%edx, 112(%rdi)
	cmpl	%esi, %r12d
	movss	%xmm6, (%rax)
	movss	%xmm12, 4(%rax)
	jl	.L3791
.L3801:
	cvtsi2ss	%esi, %xmm0
	movaps	%xmm8, %xmm3
	movss	4(%rbp), %xmm12
	cmpl	%ebx, %edx
	mulss	%xmm11, %xmm0
	subss	%xmm0, %xmm3
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	movaps	%xmm3, %xmm1
	movaps	%xmm3, %xmm4
	mulss	%xmm3, %xmm1
	mulss	%xmm7, %xmm4
	mulss	%xmm3, %xmm1
	mulss	%xmm4, %xmm3
	mulss	%xmm0, %xmm4
	mulss	%xmm0, %xmm3
	movaps	%xmm4, %xmm6
	movss	(%r14), %xmm4
	mulss	%xmm0, %xmm6
	mulss	%xmm2, %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm3, %xmm12
	mulss	%xmm10, %xmm2
	mulss	0(%rbp), %xmm3
	mulss	%xmm9, %xmm1
	mulss	%xmm6, %xmm4
	addss	%xmm2, %xmm12
	movss	4(%r14), %xmm2
	mulss	%xmm6, %xmm2
	addss	%xmm1, %xmm3
	addss	%xmm2, %xmm12
	movss	4(%r15), %xmm2
	mulss	%xmm0, %xmm2
	movaps	%xmm3, %xmm6
	mulss	(%r15), %xmm0
	addss	%xmm4, %xmm6
	addss	%xmm2, %xmm12
	addss	%xmm0, %xmm6
	jne	.L3810
	testl	%edx, %edx
	leal	1(%rdx), %eax
	movl	$8, %ebx
	je	.L3798
	movl	%edx, %ebx
	shrl	$31, %ebx
	addl	%edx, %ebx
	sarl	%ebx
	addl	%edx, %ebx
.L3798:
	cmpl	%ebx, %eax
	cmovge	%eax, %ebx
	cmpl	%edx, %ebx
	jg	.L3811
	movl	%edx, %ebx
	movslq	%edx, %r8
	movl	%eax, %edx
	jmp	.L3797
	.p2align 4,,7
.L3811:
	movslq	%ebx, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rdi), %rcx
	movq	%rax, %r13
	testq	%rcx, %rcx
	je	.L3799
	movslq	112(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rdi), %rcx
.L3799:
	call	_ZN5ImGui7MemFreeEPv
	movslq	112(%rdi), %r8
	movq	%r13, 120(%rdi)
	movl	%ebx, 116(%rdi)
	leal	1(%r8), %edx
	jmp	.L3797
	.p2align 4,,7
.L3809:
	movq	.refptr.GImGui(%rip), %rax
	movl	$0, 80(%rsp)
	leaq	112(%rdi), %rcx
	movaps	%xmm10, %xmm2
	movaps	%xmm9, %xmm1
	movq	(%rax), %rax
	movss	5244(%rax), %xmm0
	movss	%xmm0, 72(%rsp)
	movss	4(%r15), %xmm0
	movss	%xmm0, 64(%rsp)
	movss	(%r15), %xmm0
	movss	%xmm0, 56(%rsp)
	movss	4(%r14), %xmm0
	movss	%xmm0, 48(%rsp)
	movss	(%r14), %xmm0
	movss	%xmm0, 40(%rsp)
	movss	4(%rbp), %xmm0
	movss	%xmm0, 32(%rsp)
	movss	0(%rbp), %xmm3
	call	_ZL21PathBezierToCasteljauP8ImVectorI6ImVec2Efffffffffi
	nop
.L3791:
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
	.p2align 4,,7
.L3808:
	leaq	.LC35(%rip), %rdx
	leaq	.LC38(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	112(%rdi), %edx
	jmp	.L3792
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList8PathRectERK6ImVec2S2_fi
	.def	_ZN10ImDrawList8PathRectERK6ImVec2S2_fi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList8PathRectERK6ImVec2S2_fi
_ZN10ImDrawList8PathRectERK6ImVec2S2_fi:
.LFB433:
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
	movss	.LC126(%rip), %xmm2
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rbx
	movl	192(%rsp), %eax
	movss	(%rdx), %xmm4
	movss	(%r8), %xmm6
	subss	%xmm4, %xmm6
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$3, %edx
	andps	%xmm2, %xmm6
	je	.L3824
	movl	%eax, %edx
	andl	$12, %edx
	cmpl	$12, %edx
	je	.L3824
	movss	.LC24(%rip), %xmm1
	movaps	%xmm1, %xmm0
.L3813:
	mulss	%xmm0, %xmm6
	movss	4(%rbx), %xmm0
	movl	%eax, %edx
	andl	$9, %edx
	cmpl	$9, %edx
	subss	%xmm1, %xmm6
	minss	%xmm6, %xmm3
	movaps	%xmm3, %xmm6
	movss	4(%rdi), %xmm3
	subss	%xmm3, %xmm0
	andps	%xmm2, %xmm0
	je	.L3827
	movl	%eax, %edx
	movaps	%xmm1, %xmm2
	andl	$6, %edx
	cmpl	$6, %edx
	je	.L3827
.L3815:
	mulss	%xmm2, %xmm0
	subss	%xmm1, %xmm0
	minss	%xmm0, %xmm6
	xorps	%xmm0, %xmm0
	ucomiss	%xmm6, %xmm0
	jnb	.L3817
	testl	%eax, %eax
	je	.L3817
	testb	$1, %al
	movaps	%xmm0, %xmm2
	je	.L3820
	movaps	%xmm6, %xmm2
.L3820:
	testb	$2, %al
	movaps	%xmm0, %xmm8
	je	.L3821
	movaps	%xmm6, %xmm8
.L3821:
	testb	$4, %al
	movaps	%xmm0, %xmm7
	je	.L3822
	movaps	%xmm6, %xmm7
.L3822:
	testb	$8, %al
	je	.L3836
.L3823:
	addss	%xmm2, %xmm4
	leaq	48(%rsp), %rbp
	movl	$6, %r9d
	addss	%xmm2, %xmm3
	movq	%rsi, %rcx
	movl	$9, 32(%rsp)
	movq	%rbp, %rdx
	movss	%xmm4, 48(%rsp)
	movss	%xmm3, 52(%rsp)
	call	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	movss	4(%rdi), %xmm1
	movl	$9, %r9d
	movss	(%rbx), %xmm0
	addss	%xmm8, %xmm1
	subss	%xmm8, %xmm0
	movaps	%xmm8, %xmm2
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	movl	$12, 32(%rsp)
	movss	%xmm1, 52(%rsp)
	movss	%xmm0, 48(%rsp)
	call	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	movss	4(%rbx), %xmm0
	xorl	%r9d, %r9d
	movss	(%rbx), %xmm1
	subss	%xmm7, %xmm0
	subss	%xmm7, %xmm1
	movaps	%xmm7, %xmm2
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	movl	$3, 32(%rsp)
	movss	%xmm0, 52(%rsp)
	movss	%xmm1, 48(%rsp)
	call	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	movss	4(%rbx), %xmm0
	movl	$3, %r9d
	movss	(%rdi), %xmm1
	subss	%xmm6, %xmm0
	addss	%xmm6, %xmm1
	movaps	%xmm6, %xmm2
	movl	$6, 32(%rsp)
	movq	%rbp, %rdx
	movq	%rsi, %rcx
	movss	%xmm0, 52(%rsp)
	movss	%xmm1, 48(%rsp)
	call	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	nop
.L3812:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3836:
	movaps	%xmm0, %xmm6
	jmp	.L3823
	.p2align 4,,7
.L3827:
	movss	.LC1(%rip), %xmm2
	jmp	.L3815
	.p2align 4,,7
.L3824:
	movss	.LC1(%rip), %xmm0
	movss	.LC24(%rip), %xmm1
	jmp	.L3813
	.p2align 4,,7
.L3817:
	addq	$112, %rsi
	leaq	48(%rsp), %rbp
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movss	4(%rdi), %xmm0
	movq	%rbp, %rdx
	movss	(%rbx), %xmm1
	movq	%rsi, %rcx
	movss	%xmm1, 48(%rsp)
	movss	%xmm0, 52(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movss	4(%rbx), %xmm0
	movq	%rbp, %rdx
	movss	(%rdi), %xmm1
	movq	%rsi, %rcx
	movss	%xmm1, 48(%rsp)
	movss	%xmm0, 52(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	jmp	.L3812
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	.def	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif:
.LFB435:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
	testl	$-16777216, %r9d
	movq	%rcx, %rbx
	jne	.L3847
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3847:
	movss	.LC1(%rip), %xmm0
	movl	184(%rsp), %eax
	movss	4(%r8), %xmm1
	movl	%r9d, 76(%rsp)
	subss	%xmm0, %xmm1
	movss	(%r8), %xmm2
	subss	%xmm0, %xmm2
	leaq	96(%rsp), %r8
	movss	176(%rsp), %xmm3
	movss	%xmm1, 100(%rsp)
	movss	4(%rdx), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm2, 96(%rsp)
	addss	(%rdx), %xmm0
	leaq	80(%rsp), %rdx
	movl	%eax, 32(%rsp)
	movss	%xmm1, 84(%rsp)
	movss	%xmm0, 80(%rsp)
	call	_ZN10ImDrawList8PathRectERK6ImVec2S2_fi
	movss	192(%rsp), %xmm0
	movq	%rbx, %rcx
	movq	120(%rbx), %rdx
	movl	76(%rsp), %r9d
	movss	%xmm0, 40(%rsp)
	movl	112(%rbx), %r8d
	movl	$1, 48(%rsp)
	movl	$1, 32(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3839
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3840
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3840:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3839:
	movl	$0, 112(%rbx)
	addq	$120, %rsp
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
.LFB436:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	testl	$-16777216, %r9d
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%r8, %rsi
	je	.L3848
	movss	128(%rsp), %xmm2
	movl	%r9d, 60(%rsp)
	ucomiss	.LC28(%rip), %xmm2
	jbe	.L3861
	movl	136(%rsp), %eax
	movaps	%xmm2, %xmm3
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList8PathRectERK6ImVec2S2_fi
	movq	120(%rbx), %rdx
	movl	60(%rsp), %r9d
	movq	%rbx, %rcx
	movl	112(%rbx), %r8d
	movl	$1, 32(%rsp)
	call	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3852
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3853
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3853:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3852:
	movl	$0, 112(%rbx)
.L3848:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L3861:
	movl	$4, %r8d
	movl	$6, %edx
	call	_ZN10ImDrawList11PrimReserveEii
	movq	.refptr.GImGui(%rip), %rax
	movl	56(%rbx), %ecx
	movq	72(%rbx), %rdx
	movss	4(%rsi), %xmm2
	movss	(%rdi), %xmm3
	movq	(%rdi), %r8
	movq	(%rax), %rax
	movss	4(%rdi), %xmm4
	movss	(%rsi), %xmm5
	movl	60(%rsp), %r9d
	addq	$12, %rdx
	movss	5952(%rax), %xmm1
	movss	5956(%rax), %xmm0
	leal	1(%rcx), %eax
	movw	%cx, -12(%rdx)
	movw	%cx, -6(%rdx)
	movw	%ax, -10(%rdx)
	leal	2(%rcx), %eax
	movw	%ax, -8(%rdx)
	movw	%ax, -4(%rdx)
	leal	3(%rcx), %eax
	addl	$4, %ecx
	movw	%ax, -2(%rdx)
	movq	64(%rbx), %rax
	movq	%r8, (%rax)
	movss	%xmm1, 8(%rax)
	movl	%r9d, 16(%rax)
	movss	%xmm0, 12(%rax)
	movl	%r9d, 36(%rax)
	addq	$80, %rax
	movss	%xmm5, -60(%rax)
	movss	%xmm4, -56(%rax)
	movss	%xmm1, -52(%rax)
	movss	%xmm0, -48(%rax)
	movq	(%rsi), %r8
	movss	%xmm1, -32(%rax)
	movss	%xmm0, -28(%rax)
	movq	%r8, -40(%rax)
	movl	%r9d, -24(%rax)
	movss	%xmm3, -20(%rax)
	movss	%xmm2, -16(%rax)
	movl	%r9d, -4(%rax)
	movss	%xmm1, -12(%rax)
	movss	%xmm0, -8(%rax)
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
.LFB434:
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
	jne	.L3872
	movaps	96(%rsp), %xmm6
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L3872:
	movss	.LC1(%rip), %xmm6
	leaq	112(%rcx), %rsi
	movss	4(%rdx), %xmm0
	leaq	80(%rsp), %rdi
	movss	(%rdx), %xmm1
	addss	%xmm6, %xmm0
	addss	%xmm6, %xmm1
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movl	%r9d, 76(%rsp)
	movq	%r8, 64(%rsp)
	movss	%xmm0, 84(%rsp)
	movss	%xmm1, 80(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	64(%rsp), %r8
	movaps	%xmm6, %xmm0
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	addss	4(%r8), %xmm0
	addss	(%r8), %xmm6
	movss	%xmm0, 84(%rsp)
	movss	%xmm6, 80(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movss	176(%rsp), %xmm0
	movq	%rbx, %rcx
	movq	120(%rbx), %rdx
	movl	76(%rsp), %r9d
	movss	%xmm0, 40(%rsp)
	movl	112(%rbx), %r8d
	movl	$1, 48(%rsp)
	movl	$0, 32(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3864
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3865
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3865:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3864:
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
.LFB438:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	testl	$-16777216, 152(%rsp)
	movq	%rcx, %rbx
	jne	.L3883
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3883:
	leaq	112(%rcx), %rsi
	movq	%r9, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	%rsi, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	64(%rsp), %r8
	movq	%rsi, %rcx
	movq	%r8, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	72(%rsp), %r9
	movq	%rsi, %rcx
	movq	%r9, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	144(%rsp), %rdx
	movq	%rsi, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movss	160(%rsp), %xmm0
	movq	120(%rbx), %rdx
	movl	152(%rsp), %r9d
	movl	112(%rbx), %r8d
	movss	%xmm0, 40(%rsp)
	movl	$1, 48(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, %rcx
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3875
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3876
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3876:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3875:
	movl	$0, 112(%rbx)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf
	.def	_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf
_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf:
.LFB440:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	testl	$-16777216, 144(%rsp)
	movq	%rcx, %rbx
	jne	.L3894
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3894:
	leaq	112(%rcx), %rsi
	movq	%r9, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	%rsi, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	64(%rsp), %r8
	movq	%rsi, %rcx
	movq	%r8, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	72(%rsp), %r9
	movq	%rsi, %rcx
	movq	%r9, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movss	152(%rsp), %xmm0
	movq	120(%rbx), %rdx
	movl	144(%rsp), %r9d
	movl	112(%rbx), %r8d
	movss	%xmm0, 40(%rsp)
	movl	$1, 48(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, %rcx
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3886
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3887
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3887:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3886:
	movl	$0, 112(%rbx)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList14AddBezierCurveERK6ImVec2S2_S2_S2_jfi
	.def	_ZN10ImDrawList14AddBezierCurveERK6ImVec2S2_S2_S2_jfi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList14AddBezierCurveERK6ImVec2S2_S2_S2_jfi
_ZN10ImDrawList14AddBezierCurveERK6ImVec2S2_S2_S2_jfi:
.LFB444:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	testl	$-16777216, 136(%rsp)
	movq	%rcx, %rbx
	movq	%r8, %rsi
	movq	%r9, %rdi
	jne	.L3905
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L3905:
	leaq	112(%rcx), %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movl	152(%rsp), %eax
	movq	128(%rsp), %r9
	movq	%rdi, %r8
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList17PathBezierCurveToERK6ImVec2S2_S2_i
	movss	144(%rsp), %xmm0
	movq	120(%rbx), %rdx
	movl	136(%rsp), %r9d
	movl	112(%rbx), %r8d
	movss	%xmm0, 40(%rsp)
	movl	$1, 48(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, %rcx
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3897
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3898
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3898:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3897:
	movl	$0, 112(%rbx)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j
	.def	_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j
_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j:
.LFB439:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	testl	$-16777216, 136(%rsp)
	movq	%rcx, %rbx
	jne	.L3916
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3916:
	leaq	112(%rcx), %rsi
	movq	%r9, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rsi, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	48(%rsp), %r8
	movq	%rsi, %rcx
	movq	%r8, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	56(%rsp), %r9
	movq	%rsi, %rcx
	movq	%r9, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	128(%rsp), %rdx
	movq	%rsi, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	120(%rbx), %rdx
	movl	136(%rsp), %r9d
	movq	%rbx, %rcx
	movl	112(%rbx), %r8d
	movl	$1, 32(%rsp)
	call	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3908
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3909
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3909:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3908:
	movl	$0, 112(%rbx)
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j
	.def	_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j
_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j:
.LFB441:
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
	.seh_endprologue
	testl	$-16777216, 160(%rsp)
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%r8, %rsi
	jne	.L3937
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L3937:
	movslq	112(%rcx), %rdx
	leaq	112(%rcx), %rbp
	cmpl	116(%rcx), %edx
	je	.L3919
	movq	120(%rcx), %rax
	leal	1(%rdx), %r8d
.L3920:
	movq	(%rdi), %rcx
	movl	%r8d, 112(%rbx)
	movq	%r9, 56(%rsp)
	movq	%rcx, (%rax,%rdx,8)
	movq	%rsi, %rdx
	movq	%rbp, %rcx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	56(%rsp), %r9
	movq	%rbp, %rcx
	movq	%r9, %rdx
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	120(%rbx), %rdx
	movl	160(%rsp), %r9d
	movq	%rbx, %rcx
	movl	112(%rbx), %r8d
	movl	$1, 32(%rsp)
	call	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L3924
	xorl	%ecx, %ecx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L3925
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
.L3925:
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L3924:
	movl	$0, 112(%rbx)
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L3919:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	je	.L3921
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L3921:
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %r13d
	jl	.L3922
	movq	120(%rbx), %rax
	jmp	.L3920
	.p2align 4,,7
.L3922:
	movslq	%eax, %rcx
	movq	%r9, 56(%rsp)
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	120(%rbx), %rcx
	movq	%rax, %r12
	movq	56(%rsp), %r9
	testq	%rcx, %rcx
	je	.L3923
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
	movq	56(%rsp), %r9
.L3923:
	movq	%r9, 56(%rsp)
	call	_ZN5ImGui7MemFreeEPv
	movslq	112(%rbx), %rdx
	movq	%r12, 120(%rbx)
	movq	%r12, %rax
	movl	%r13d, 116(%rbx)
	movq	56(%rsp), %r9
	leal	1(%rdx), %r8d
	jmp	.L3920
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4,,15
	.def	_GLOBAL__sub_I__ZN10ImDrawList5ClearEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN10ImDrawList5ClearEv
_GLOBAL__sub_I__ZN10ImDrawList5ClearEv:
.LFB732:
	.seh_endprologue
	movss	.LC127(%rip), %xmm0
	movss	%xmm0, _ZL13GNullClipRect(%rip)
	movss	%xmm0, 4+_ZL13GNullClipRect(%rip)
	movss	.LC128(%rip), %xmm0
	movss	%xmm0, 8+_ZL13GNullClipRect(%rip)
	movss	%xmm0, 12+_ZL13GNullClipRect(%rip)
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__ZN10ImDrawList5ClearEv
	.section .rdata,"dr"
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
.lcomm _ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE11full_ranges,7802,32
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
.lcomm _ZZN11ImFontAtlas22GetGlyphRangesJapaneseEvE20full_ranges_unpacked,1,1
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
.lcomm _ZZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx,96,32
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
.lcomm _ZGVZN10ImDrawList13PathArcToFastERK6ImVec2fiiE10circle_vtx,8,8
.lcomm _ZL13GNullClipRect,16,16
	.align 4
.LC0:
	.long	1048576000
	.align 4
.LC1:
	.long	1056964608
	.align 4
.LC24:
	.long	1065353216
	.align 4
.LC28:
	.long	0
	.align 16
.LC29:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 16
.LC30:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 4
.LC31:
	.long	931135488
	.align 8
.LC32:
	.long	0
	.long	1072693248
	.align 4
.LC33:
	.long	947912704
	.align 4
.LC43:
	.long	1120403456
	.align 4
.LC44:
	.long	897988541
	.align 4
.LC47:
	.long	1077936128
	.align 4
.LC48:
	.long	1094713344
	.align 4
.LC49:
	.long	1100480512
	.align 4
.LC50:
	.long	1095761920
	.align 4
.LC51:
	.long	1088421888
	.align 4
.LC52:
	.long	1098907648
	.align 4
.LC53:
	.long	1082130432
	.align 4
.LC56:
	.long	1102577664
	.align 4
.LC59:
	.long	1091567616
	.align 4
.LC64:
	.long	1099431936
	.align 4
.LC65:
	.long	1119223808
	.align 4
.LC75:
	.long	-1082130432
	.align 4
.LC95:
	.long	1051931443
	.align 8
.LC102:
	.long	-1073741824
	.long	1072703733
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
.LC125:
	.long	1086918619
	.align 16
.LC126:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC127:
	.long	-973078528
	.align 4
.LC128:
	.long	1174405120
	.ident	"GCC: (GNU) 5.3.0"
	.def	_assert;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	qsort;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8MemAllocEy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7MemFreeEPv;	.scl	2;	.type	32;	.endef
	.def	floor;	.scl	2;	.type	32;	.endef
	.def	ceil;	.scl	2;	.type	32;	.endef
	.def	__ms_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.def	sqrtf;	.scl	2;	.type	32;	.endef
	.def	_Z18ImTextCharFromUtf8PjPKcS1_;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_Z18ImFileLoadToMemoryPKcS0_Pii;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_acquire;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_release;	.scl	2;	.type	32;	.endef
	.def	sinf;	.scl	2;	.type	32;	.endef
	.def	cosf;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.GImGui, "dr"
	.globl	.refptr.GImGui
	.linkonce	discard
.refptr.GImGui:
	.quad	GImGui
