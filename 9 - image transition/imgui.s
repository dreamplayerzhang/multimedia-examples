	.file	"imgui.cpp"
	.text
	.p2align 4,,15
	.def	_ZL19ChildWindowComparerPKvS0_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19ChildWindowComparerPKvS0_
_ZL19ChildWindowComparerPKvS0_:
.LFB680:
	.seh_endprologue
	movq	(%rcx), %r10
	movq	(%rdx), %r9
	movl	12(%r10), %ecx
	movl	12(%r9), %edx
	movl	%ecx, %eax
	movl	%edx, %r8d
	andl	$33554432, %eax
	andl	$33554432, %r8d
	subl	%r8d, %eax
	jne	.L1
	movl	%ecx, %eax
	movl	%edx, %r8d
	andl	$16777216, %eax
	andl	$16777216, %r8d
	subl	%r8d, %eax
	jne	.L1
	movl	%ecx, %eax
	andl	$8388608, %edx
	andl	$8388608, %eax
	subl	%edx, %eax
	jne	.L1
	movl	16(%r10), %eax
	subl	16(%r9), %eax
.L1:
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect
_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect:
.LFB763:
	subq	$168, %rsp
	.seh_stackalloc	168
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
	movaps	%xmm13, 112(%rsp)
	.seh_savexmm	%xmm13, 112
	movaps	%xmm14, 128(%rsp)
	.seh_savexmm	%xmm14, 128
	movaps	%xmm15, 144(%rsp)
	.seh_savexmm	%xmm15, 144
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	176(%rax), %xmm4
	movss	184(%rax), %xmm3
	movss	5232(%rax), %xmm2
	ucomiss	%xmm4, %xmm3
	movss	5236(%rax), %xmm0
	jp	.L61
	jne	.L61
.L5:
	movss	12(%rax), %xmm10
	pxor	%xmm1, %xmm1
	pxor	%xmm4, %xmm4
	movss	8(%rax), %xmm3
.L7:
	movaps	%xmm10, %xmm5
	movss	4(%rdx), %xmm7
	subss	%xmm1, %xmm5
	movaps	%xmm7, %xmm6
	subss	%xmm5, %xmm6
	movaps	%xmm0, %xmm5
	addss	%xmm0, %xmm5
	ucomiss	%xmm5, %xmm6
	jbe	.L76
	subss	%xmm0, %xmm10
.L8:
	movaps	%xmm3, %xmm5
	movss	(%rdx), %xmm6
	subss	%xmm4, %xmm5
	movaps	%xmm6, %xmm8
	subss	%xmm5, %xmm8
	movaps	%xmm2, %xmm5
	addss	%xmm2, %xmm5
	ucomiss	%xmm5, %xmm8
	jbe	.L77
	subss	%xmm2, %xmm3
.L10:
	addss	%xmm0, %xmm1
	movss	4(%rcx), %xmm11
	movaps	%xmm10, %xmm14
	movaps	%xmm3, %xmm15
	addss	%xmm4, %xmm2
	subss	%xmm7, %xmm14
	ucomiss	%xmm11, %xmm1
	movaps	%xmm1, %xmm9
	subss	%xmm6, %xmm15
	ja	.L12
	movaps	%xmm14, %xmm9
	minss	%xmm11, %xmm9
.L12:
	movss	(%rcx), %xmm12
	movaps	%xmm2, %xmm0
	ucomiss	%xmm12, %xmm2
	ja	.L14
	movaps	%xmm15, %xmm0
	minss	%xmm12, %xmm0
.L14:
	movl	(%r8), %eax
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	setne	%cl
	jne	.L85
	xorl	%edx, %edx
.L79:
	movss	8(%r9), %xmm8
	movaps	%xmm1, %xmm13
	movaps	%xmm3, %xmm4
	movaps	%xmm10, %xmm5
.L18:
	subss	%xmm8, %xmm4
	ucomiss	%xmm4, %xmm6
	ja	.L21
	subss	%xmm13, %xmm5
	ucomiss	%xmm5, %xmm7
	ja	.L21
.L22:
	cmpl	$1, %edx
	movl	%edx, (%r8)
	je	.L52
.L33:
	cmpl	$2, %edx
	je	.L86
.L35:
	testl	%edx, %edx
	jne	.L36
	movss	8(%r9), %xmm0
.L34:
	movd	%xmm9, %eax
	movd	%xmm0, %edx
	movq	%rax, %rcx
	movl	%edx, %eax
	salq	$32, %rcx
	orq	%rcx, %rax
.L81:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	movaps	32(%rsp), %xmm8
	movaps	48(%rsp), %xmm9
	movaps	64(%rsp), %xmm10
	movaps	80(%rsp), %xmm11
	movaps	96(%rsp), %xmm12
	movaps	112(%rsp), %xmm13
	movaps	128(%rsp), %xmm14
	movaps	144(%rsp), %xmm15
	addq	$168, %rsp
	ret
	.p2align 4,,10
.L61:
	movss	180(%rax), %xmm1
	movss	188(%rax), %xmm10
	ucomiss	%xmm1, %xmm10
	jp	.L7
	jne	.L7
	jmp	.L5
	.p2align 4,,10
.L21:
	movl	$1, %edx
	subl	%ecx, %edx
	cmpl	$1, %edx
	jne	.L87
	movss	12(%r9), %xmm5
	movaps	%xmm2, %xmm4
.L23:
	movaps	%xmm3, %xmm13
	subss	%xmm4, %xmm13
	ucomiss	%xmm13, %xmm6
	ja	.L24
	movaps	%xmm10, %xmm4
	subss	%xmm5, %xmm4
	ucomiss	%xmm4, %xmm7
	ja	.L24
	cmpl	$1, %edx
	movl	%edx, (%r8)
	jne	.L35
.L52:
	movss	12(%r9), %xmm9
	jmp	.L34
	.p2align 4,,10
.L77:
	pxor	%xmm2, %xmm2
	jmp	.L10
	.p2align 4,,10
.L76:
	pxor	%xmm0, %xmm0
	jmp	.L8
	.p2align 4,,10
.L24:
	movl	$2, %edx
	subl	%ecx, %edx
	cmpl	$2, %edx
	jne	.L88
	movss	4(%r9), %xmm4
	movaps	%xmm1, %xmm8
.L26:
	movaps	%xmm3, %xmm5
	subss	%xmm2, %xmm5
	ucomiss	%xmm5, %xmm6
	ja	.L27
	subss	%xmm8, %xmm4
	ucomiss	%xmm4, %xmm7
	jbe	.L22
.L27:
	movl	$3, %edx
	subl	%ecx, %edx
	cmpl	$2, %edx
	jne	.L89
	movss	4(%r9), %xmm5
	movaps	%xmm3, %xmm4
.L28:
	subss	%xmm2, %xmm4
	ucomiss	%xmm4, %xmm6
	ja	.L29
	movaps	%xmm5, %xmm4
	subss	%xmm1, %xmm4
	ucomiss	%xmm4, %xmm7
	ja	.L29
.L30:
	movl	%edx, (%r8)
	jmp	.L33
.L87:
	movss	8(%r9), %xmm4
	movaps	%xmm1, %xmm5
	jmp	.L23
	.p2align 4,,10
.L88:
	movss	12(%r9), %xmm8
	movaps	%xmm10, %xmm4
	jmp	.L26
	.p2align 4,,10
.L29:
	cmpl	$-1, %eax
	je	.L32
	movss	(%r9), %xmm4
	subss	%xmm2, %xmm4
	ucomiss	%xmm4, %xmm6
	ja	.L32
	movaps	%xmm10, %xmm4
	movl	$3, %edx
	subss	%xmm1, %xmm4
	ucomiss	%xmm4, %xmm7
	jbe	.L30
.L32:
	addss	%xmm6, %xmm12
	movl	$-1, (%r8)
	ucomiss	%xmm12, %xmm3
	jbe	.L38
	subss	%xmm6, %xmm12
	movaps	%xmm12, %xmm15
.L38:
	ucomiss	%xmm2, %xmm15
	jb	.L40
	movaps	%xmm15, %xmm2
.L40:
	addss	%xmm7, %xmm11
	ucomiss	%xmm11, %xmm10
	jbe	.L42
	subss	%xmm7, %xmm11
	movaps	%xmm11, %xmm14
.L42:
	ucomiss	%xmm1, %xmm14
	jb	.L44
	movaps	%xmm14, %xmm1
.L44:
	movd	%xmm1, %eax
	movd	%xmm2, %edx
	movq	%rax, %rcx
	movl	%edx, %eax
	salq	$32, %rcx
	orq	%rcx, %rax
	jmp	.L81
	.p2align 4,,10
.L86:
	movss	4(%r9), %xmm9
	subss	%xmm7, %xmm9
	jmp	.L34
	.p2align 4,,10
.L89:
	movss	(%r9), %xmm4
	movaps	%xmm10, %xmm5
	jmp	.L28
	.p2align 4,,10
.L85:
	cmpl	$2, %eax
	jne	.L90
	movss	4(%r9), %xmm5
	movl	$2, %edx
	movaps	%xmm1, %xmm13
	movaps	%xmm3, %xmm4
	movaps	%xmm2, %xmm8
	jmp	.L18
.L36:
	cmpl	$3, %edx
	jne	.L34
	movss	(%r9), %xmm0
	subss	%xmm6, %xmm0
	jmp	.L34
.L90:
	cmpl	$3, %eax
	movl	%eax, %edx
	jne	.L91
	movss	(%r9), %xmm4
	movaps	%xmm1, %xmm13
	movaps	%xmm10, %xmm5
	movaps	%xmm2, %xmm8
	jmp	.L18
.L91:
	cmpl	$1, %eax
	jne	.L20
	movss	12(%r9), %xmm13
	movaps	%xmm3, %xmm4
	movaps	%xmm10, %xmm5
	movaps	%xmm2, %xmm8
	jmp	.L18
.L20:
	testl	%eax, %eax
	je	.L79
	movaps	%xmm1, %xmm13
	movaps	%xmm3, %xmm4
	movaps	%xmm10, %xmm5
	movaps	%xmm2, %xmm8
	jmp	.L18
	.seh_endproc
	.p2align 4,,15
	.def	_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2
_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2:
.LFB766:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movd	%edx, %xmm1
	shrq	$32, %rdx
	cmpb	$0, 6296(%rbx)
	movq	%rcx, %rsi
	movd	%edx, %xmm0
	je	.L93
	movss	6260(%rbx), %xmm3
	pxor	%xmm2, %xmm2
	movss	6264(%rbx), %xmm4
	ucomiss	%xmm2, %xmm3
	movss	6268(%rbx), %xmm6
	movss	6272(%rbx), %xmm5
	jb	.L94
	ucomiss	%xmm2, %xmm6
	jb	.L94
	ucomiss	%xmm1, %xmm3
	ja	.L97
	minss	%xmm1, %xmm6
	ucomiss	%xmm2, %xmm4
	movaps	%xmm6, %xmm3
	jnb	.L111
	.p2align 4,,10
.L98:
	movss	48(%rsi), %xmm4
.L101:
	movq	6280(%rbx), %rax
	testq	%rax, %rax
	je	.L106
	movq	6288(%rbx), %rdx
	movss	%xmm3, 56(%rsp)
	leaq	32(%rsp), %rcx
	movss	%xmm4, 60(%rsp)
	movq	%rdx, 32(%rsp)
	movq	28(%rsi), %rdx
	movq	%rdx, 40(%rsp)
	movq	44(%rsi), %rdx
	movq	%rdx, 48(%rsp)
	call	*%rax
	movss	56(%rsp), %xmm1
	movss	60(%rsp), %xmm0
.L93:
	testl	$1048640, 12(%rsi)
	jne	.L102
	movss	5136(%rbx), %xmm2
	ucomiss	%xmm2, %xmm0
	jb	.L112
	movss	5132(%rbx), %xmm2
	ucomiss	%xmm2, %xmm1
	jnb	.L102
.L113:
	movaps	%xmm2, %xmm1
.L102:
	movaps	64(%rsp), %xmm6
	movss	%xmm1, 44(%rsi)
	movss	%xmm0, 48(%rsi)
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L112:
	movaps	%xmm2, %xmm0
	movss	5132(%rbx), %xmm2
	ucomiss	%xmm2, %xmm1
	jb	.L113
	jmp	.L102
	.p2align 4,,10
.L94:
	movss	44(%rsi), %xmm3
.L97:
	ucomiss	%xmm2, %xmm4
	jb	.L98
.L111:
	ucomiss	%xmm2, %xmm5
	jb	.L98
	ucomiss	%xmm0, %xmm4
	ja	.L101
	minss	%xmm0, %xmm5
	movaps	%xmm5, %xmm4
	jmp	.L101
	.p2align 4,,10
.L106:
	movaps	%xmm4, %xmm0
	movaps	%xmm3, %xmm1
	jmp	.L93
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16Plot_ArrayGetterPvi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16Plot_ArrayGetterPvi
_ZL16Plot_ArrayGetterPvi:
.LFB957:
	.seh_endprologue
	movslq	8(%rcx), %rax
	movslq	%edx, %rdx
	imulq	%rax, %rdx
	movq	(%rcx), %rax
	movss	(%rax,%rdx), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17Items_ArrayGetterPviPPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17Items_ArrayGetterPviPPKc
_ZL17Items_ArrayGetterPviPPKc:
.LFB1024:
	.seh_endprologue
	testq	%r8, %r8
	je	.L116
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rax
	movq	%rax, (%r8)
.L116:
	movl	$1, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB6218:
	.seh_endprologue
	movq	8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	testq	%rcx, %rcx
	je	.L120
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	rex.W jmp	*240(%rax)
	.p2align 4,,10
.L120:
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6218:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6218-.LLSDACSB6218
.LLSDACSB6218:
.LLSDACSE6218:
	.text
	.seh_endproc
	.p2align 4,,15
	.def	_ZL34ImeSetInputScreenPosFn_DefaultImplii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL34ImeSetInputScreenPosFn_DefaultImplii
_ZL34ImeSetInputScreenPosFn_DefaultImplii:
.LFB6220:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL24Items_SingleStringGetterPviPPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL24Items_SingleStringGetterPviPPKc
_ZL24Items_SingleStringGetterPviPPKc:
.LFB1025:
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
	cmpb	$0, (%rcx)
	movq	%rcx, %rbx
	movq	%r8, %rbp
	je	.L130
	testl	%edx, %edx
	je	.L125
	leal	-1(%rdx), %edi
	xorl	%esi, %esi
	addq	$1, %rdi
	jmp	.L126
	.p2align 4,,10
.L134:
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	je	.L125
.L126:
	movq	%rbx, %rcx
	call	strlen
	leaq	1(%rbx,%rax), %rbx
	cmpb	$0, (%rbx)
	jne	.L134
.L130:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L125:
	testq	%rbp, %rbp
	je	.L135
	movl	$1, %eax
	movq	%rbx, 0(%rbp)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L135:
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "C:/libraries/include/imgui/imgui.h\0"
.LC3:
	.ascii "i < Size\0"
	.text
	.p2align 4,,15
	.def	_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii
_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii:
.LFB971:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leal	(%rdx,%r8), %ebx
	cmpl	8(%rcx), %ebx
	movq	%rcx, %rsi
	jge	.L142
.L137:
	movq	16(%rsi), %rax
	movslq	%ebx, %rbx
	movzwl	(%rax,%rbx,2), %eax
	cmpw	$10, %ax
	je	.L141
	movq	GImGui(%rip), %rcx
	movzwl	%ax, %r8d
	movq	5936(%rcx), %rdx
	cmpl	32(%rdx), %r8d
	jl	.L143
	movss	72(%rdx), %xmm1
.L140:
	movss	5944(%rcx), %xmm0
	divss	(%rdx), %xmm0
	mulss	%xmm1, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L143:
	movq	40(%rdx), %r8
	movss	(%r8,%rax,4), %xmm1
	jmp	.L140
	.p2align 4,,10
.L142:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L137
	.p2align 4,,10
.L141:
	movss	.LC1(%rip), %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17FindHoveredWindow6ImVec2b;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17FindHoveredWindow6ImVec2b
_ZL17FindHoveredWindow6ImVec2b:
.LFB700:
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
	movq	GImGui(%rip), %rsi
	movl	5976(%rsi), %eax
	movq	%rcx, %rbp
	movl	%eax, %ebx
	subl	$1, %ebx
	js	.L145
	movslq	%ebx, %rdi
	shrq	$32, %rcx
	salq	$3, %rdi
	testb	%dl, %dl
	movd	%ecx, %xmm6
	je	.L154
	cmpl	%eax, %ebx
	jge	.L173
	.p2align 4,,10
.L155:
	movq	5984(%rsi), %rax
	movq	(%rax,%rdi), %rax
	cmpb	$0, 136(%rax)
	je	.L156
	movl	12(%rax), %edx
	testb	$2, %dh
	jne	.L156
	andl	$1048576, %edx
	jne	.L156
	movss	5184(%rsi), %xmm1
	movd	%ebp, %xmm2
	movss	528(%rax), %xmm0
	subss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm2
	jb	.L156
	movss	5188(%rsi), %xmm3
	movss	532(%rax), %xmm0
	subss	%xmm3, %xmm0
	ucomiss	%xmm0, %xmm6
	jb	.L156
	addss	536(%rax), %xmm1
	ucomiss	%xmm2, %xmm1
	ja	.L174
	.p2align 4,,10
.L156:
	subl	$1, %ebx
	subq	$8, %rdi
	cmpl	$-1, %ebx
	je	.L145
	movl	5976(%rsi), %eax
	cmpl	%eax, %ebx
	jl	.L155
.L173:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L155
	.p2align 4,,10
.L176:
	addss	540(%rax), %xmm3
	ucomiss	%xmm6, %xmm3
	ja	.L144
	.p2align 4,,10
.L148:
	subl	$1, %ebx
	subq	$8, %rdi
	cmpl	$-1, %ebx
	je	.L145
	movl	5976(%rsi), %eax
.L154:
	cmpl	%ebx, %eax
	jle	.L175
.L147:
	movq	5984(%rsi), %rax
	movq	(%rax,%rdi), %rax
	cmpb	$0, 136(%rax)
	je	.L148
	testb	$2, 13(%rax)
	jne	.L148
	movss	5184(%rsi), %xmm1
	movd	%ebp, %xmm2
	movss	528(%rax), %xmm0
	subss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm2
	jb	.L148
	movss	5188(%rsi), %xmm3
	movss	532(%rax), %xmm0
	subss	%xmm3, %xmm0
	ucomiss	%xmm0, %xmm6
	jb	.L148
	addss	536(%rax), %xmm1
	ucomiss	%xmm2, %xmm1
	jbe	.L148
	jmp	.L176
	.p2align 4,,10
.L175:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L147
	.p2align 4,,10
.L145:
	xorl	%eax, %eax
.L144:
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L174:
	addss	540(%rax), %xmm3
	ucomiss	%xmm6, %xmm3
	jbe	.L156
	jmp	.L144
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "Size > 0\0"
	.align 8
.LC5:
	.ascii "C:/libraries/include/imgui/imgui.cpp\0"
	.align 8
.LC6:
	.ascii "draw_list->VtxBuffer.Size == 0 || draw_list->_VtxWritePtr == draw_list->VtxBuffer.Data + draw_list->VtxBuffer.Size\0"
	.align 8
.LC7:
	.ascii "draw_list->IdxBuffer.Size == 0 || draw_list->_IdxWritePtr == draw_list->IdxBuffer.Data + draw_list->IdxBuffer.Size\0"
	.align 8
.LC8:
	.ascii "(int)draw_list->_VtxCurrentIdx == draw_list->VtxBuffer.Size\0"
	.align 8
.LC9:
	.ascii "(int64_t)draw_list->_VtxCurrentIdx <= ((int64_t)1L << (sizeof(ImDrawIdx)*8))\0"
	.text
	.p2align 4,,15
	.def	_ZL23AddDrawListToRenderListR8ImVectorIP10ImDrawListES1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23AddDrawListToRenderListR8ImVectorIP10ImDrawListES1_
_ZL23AddDrawListToRenderListR8ImVectorIP10ImDrawListES1_:
.LFB682:
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
	movl	(%rdx), %eax
	cmpl	$0, %eax
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	jne	.L209
.L177:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L209:
	jle	.L210
.L180:
	movq	8(%rbx), %rcx
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	salq	$4, %rdx
	leaq	-48(%rcx,%rdx), %rdx
	movl	(%rdx), %ecx
	testl	%ecx, %ecx
	jne	.L184
	cmpq	$0, 32(%rdx)
	jne	.L184
	testl	%eax, %eax
	jle	.L211
.L185:
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, (%rbx)
	je	.L177
	.p2align 4,,10
.L184:
	movslq	32(%rbx), %rax
	testl	%eax, %eax
	je	.L182
	leaq	(%rax,%rax,4), %rdx
	movq	40(%rbx), %rax
	leaq	(%rax,%rdx,4), %rax
	cmpq	%rax, 64(%rbx)
	je	.L182
	leaq	.LC5(%rip), %rdx
	movl	$2601, %r8d
	leaq	.LC6(%rip), %rcx
	call	_assert
.L182:
	movslq	16(%rbx), %rax
	testl	%eax, %eax
	je	.L187
	movq	24(%rbx), %rdx
	leaq	(%rdx,%rax,2), %rax
	cmpq	%rax, 72(%rbx)
	je	.L187
	leaq	.LC5(%rip), %rdx
	movl	$2602, %r8d
	leaq	.LC7(%rip), %rcx
	call	_assert
.L187:
	movl	56(%rbx), %eax
	cmpl	32(%rbx), %eax
	jne	.L212
	cmpl	$65536, %eax
	ja	.L213
.L189:
	movslq	(%rsi), %rax
	cmpl	4(%rsi), %eax
	je	.L190
.L214:
	movq	8(%rsi), %rdi
.L191:
	leal	1(%rax), %edx
	movl	%edx, (%rsi)
	movl	32(%rbx), %edx
	movq	%rbx, (%rdi,%rax,8)
	movq	GImGui(%rip), %rax
	addl	%edx, 848(%rax)
	movl	16(%rbx), %edx
	addl	%edx, 852(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L212:
	leaq	.LC5(%rip), %rdx
	movl	$2603, %r8d
	leaq	.LC8(%rip), %rcx
	call	_assert
	movl	56(%rbx), %eax
	cmpl	$65536, %eax
	jbe	.L189
.L213:
	leaq	.LC5(%rip), %rdx
	movl	$2607, %r8d
	leaq	.LC9(%rip), %rcx
	call	_assert
	movslq	(%rsi), %rax
	cmpl	4(%rsi), %eax
	jne	.L214
.L190:
	leal	1(%rax), %ebp
	testl	%eax, %eax
	movl	$8, %edx
	je	.L192
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L192:
	cmpl	%edx, %ebp
	movq	GImGui(%rip), %rax
	cmovl	%edx, %ebp
	movslq	%ebp, %rcx
	addl	$1, 844(%rax)
	salq	$3, %rcx
	call	*232(%rax)
	movq	8(%rsi), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L195
	movslq	(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L195
	subl	$1, 844(%rax)
.L195:
	call	*240(%rax)
	movq	%rdi, 8(%rsi)
	movslq	(%rsi), %rax
	movl	%ebp, 4(%rsi)
	jmp	.L191
	.p2align 4,,10
.L210:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	(%rbx), %eax
	jmp	.L180
	.p2align 4,,10
.L211:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	(%rbx), %eax
	jmp	.L185
	.seh_endproc
	.p2align 4,,15
	.def	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow
_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow:
.LFB683:
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
	movq	656(%rdx), %rdx
	movq	%rcx, %rdi
	call	_ZL23AddDrawListToRenderListR8ImVectorIP10ImDrawListES1_
	movl	280(%rsi), %eax
	testl	%eax, %eax
	jle	.L215
	xorl	%ebx, %ebx
.L219:
	movq	288(%rsi), %rdx
	movq	(%rdx,%rbx,8), %rdx
	cmpb	$0, 136(%rdx)
	je	.L217
	testb	$2, 15(%rdx)
	je	.L218
	movl	168(%rdx), %ecx
	testl	%ecx, %ecx
	jle	.L218
.L217:
	leal	1(%rbx), %edx
	addq	$1, %rbx
	cmpl	%eax, %edx
	jl	.L219
.L215:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L218:
	movq	%rdi, %rcx
	call	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow
	movl	280(%rsi), %eax
	jmp	.L217
	.seh_endproc
	.p2align 4,,15
	.def	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv
_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv:
.LFB1009:
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
	movl	(%rcx), %ebx
	cmpl	$127, %ebx
	movq	%rcx, %rbp
	movl	%edx, %esi
	ja	.L225
	cmpl	$32, %ebx
	je	.L225
	movq	%r9, 40(%rsp)
	movl	%ebx, %ecx
	movq	%r8, 32(%rsp)
	call	*__imp_isprint(%rip)
	movq	32(%rsp), %r8
	testl	%eax, %eax
	movq	40(%rsp), %r9
	jne	.L225
	cmpl	$10, %ebx
	je	.L261
	cmpl	$9, %ebx
	jne	.L234
	testl	$1024, %esi
	je	.L234
	.p2align 4,,10
.L227:
	testb	$15, %sil
	je	.L230
	testb	$1, %sil
	je	.L231
	leal	-45(%rbx), %eax
	cmpl	$12, %eax
	jbe	.L231
	leal	-42(%rbx), %eax
	cmpl	$1, %eax
	ja	.L234
	.p2align 4,,10
.L231:
	testb	$2, %sil
	je	.L232
	leal	-48(%rbx), %eax
	cmpl	$9, %eax
	jbe	.L232
	movl	%ebx, %eax
	andl	$-33, %eax
	subl	$65, %eax
	cmpl	$5, %eax
	ja	.L234
	.p2align 4,,10
.L232:
	testb	$4, %sil
	je	.L233
	leal	-97(%rbx), %eax
	cmpl	$25, %eax
	jbe	.L262
.L233:
	testb	$8, %sil
	je	.L230
	cmpl	$32, %ebx
	sete	%dl
	cmpl	$9, %ebx
	sete	%al
	orb	%al, %dl
	jne	.L234
	cmpl	$12288, %ebx
	je	.L234
	.p2align 4,,10
.L230:
	testl	$512, %esi
	movl	$1, %edi
	je	.L224
	leaq	48(%rsp), %rcx
	movl	$512, 48(%rsp)
	movq	$0, 64(%rsp)
	movl	%esi, 52(%rsp)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movw	%bx, 66(%rsp)
	movq	%r9, 56(%rsp)
	call	*%r8
	testl	%eax, %eax
	jne	.L234
	movzwl	66(%rsp), %edx
	testw	%dx, %dx
	movl	%edx, 0(%rbp)
	jne	.L224
	.p2align 4,,10
.L234:
	xorl	%edi, %edi
.L224:
	movl	%edi, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L225:
	leal	-57344(%rbx), %eax
	cmpl	$6399, %eax
	jbe	.L234
	jmp	.L227
	.p2align 4,,10
.L261:
	testl	$1048576, %esi
	jne	.L227
	jmp	.L234
	.p2align 4,,10
.L262:
	subl	$32, %ebx
	movl	%ebx, 0(%rbp)
	jmp	.L233
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_1;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_1
__tcf_1:
.LFB6488:
	.seh_endprologue
	leaq	_ZL19GImDefaultFontAtlas(%rip), %rcx
	jmp	_ZN11ImFontAtlasD1Ev
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE.part.7;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE.part.7
_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE.part.7:
.LFB6498:
	.seh_endprologue
	movl	4(%rdx), %r8d
	movl	8(%rdx), %eax
	cmpl	%eax, %r8d
	je	.L265
	movl	60(%rcx), %ecx
	cmpl	%r8d, %ecx
	jge	.L270
	movl	%ecx, 4(%rdx)
.L270:
	cmpl	%eax, %ecx
	jge	.L265
	movl	%ecx, 8(%rdx)
	movl	%ecx, %eax
.L265:
	movl	%eax, (%rdx)
	movl	%eax, 4(%rdx)
	movb	$0, 15(%rdx)
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui8SameLineEff.constprop.126;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8SameLineEff.constprop.126
_ZN5ImGui8SameLineEff.constprop.126:
.LFB6620:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L271
	pxor	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L276
.L273:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L271:
	ret
	.p2align 4,,10
.L276:
	movss	5168(%rdx), %xmm0
	jmp	.L273
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.constprop.136;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.constprop.136
_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.constprop.136:
.LFB6610:
	subq	$24, %rsp
	.seh_stackalloc	24
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	5936(%rax), %r10
	movss	5944(%rax), %xmm4
	cmpq	%rcx, %rdx
	movaps	%xmm4, %xmm5
	divss	(%r10), %xmm5
	jbe	.L301
	testb	%r9b, %r9b
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	je	.L318
.L279:
	addq	$2, %rcx
	movzwl	-2(%rcx), %eax
	cmpl	$10, %eax
	movq	%rax, %r9
	je	.L319
	cmpl	$13, %eax
	je	.L293
	cmpl	32(%r10), %eax
	jge	.L294
	movq	40(%r10), %rax
	movss	(%rax,%r9,4), %xmm0
.L295:
	mulss	%xmm5, %xmm0
	addss	%xmm0, %xmm2
.L293:
	cmpq	%rcx, %rdx
	ja	.L279
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
.L289:
	movaps	%xmm2, %xmm6
	ucomiss	%xmm3, %xmm2
	maxss	%xmm0, %xmm6
	movaps	%xmm6, %xmm0
	jbe	.L292
.L278:
	addss	%xmm4, %xmm1
.L298:
	testq	%r8, %r8
	je	.L300
	movq	%rcx, (%r8)
.L300:
	movd	%xmm1, %eax
	movd	%xmm0, %edx
	movaps	(%rsp), %xmm6
	movq	%rax, %rcx
	movl	%edx, %eax
	salq	$32, %rcx
	orq	%rcx, %rax
	addq	$24, %rsp
	ret
	.p2align 4,,10
.L319:
	ucomiss	%xmm2, %xmm3
	movaps	%xmm4, %xmm1
	pxor	%xmm0, %xmm0
	addss	%xmm3, %xmm1
	jnb	.L292
	movaps	%xmm3, %xmm0
	maxss	%xmm2, %xmm0
.L292:
	ucomiss	%xmm3, %xmm1
	jp	.L298
	jne	.L298
	addss	%xmm4, %xmm1
	jmp	.L298
	.p2align 4,,10
.L294:
	movss	72(%r10), %xmm0
	jmp	.L295
	.p2align 4,,10
.L318:
	movq	%rcx, %rax
	pxor	%xmm3, %xmm3
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
.L288:
	addq	$2, %rax
	movzwl	-2(%rax), %r9d
	cmpl	$10, %r9d
	movq	%r9, %r11
	je	.L280
	cmpl	$13, %r9d
	je	.L281
	cmpl	%r9d, 32(%r10)
	jle	.L320
	movq	40(%r10), %r9
	movss	(%r9,%r11,4), %xmm6
.L284:
	mulss	%xmm5, %xmm6
	addss	%xmm6, %xmm2
.L281:
	cmpq	%rax, %rdx
	ja	.L288
	movq	%rcx, %rax
	notq	%rax
	addq	%rax, %rdx
	shrq	%rdx
	leaq	2(%rcx,%rdx,2), %rcx
	jmp	.L289
	.p2align 4,,10
.L280:
	ucomiss	%xmm2, %xmm0
	jb	.L285
	movaps	%xmm0, %xmm2
.L285:
	movaps	%xmm2, %xmm0
	addss	%xmm4, %xmm1
	pxor	%xmm2, %xmm2
	jmp	.L281
	.p2align 4,,10
.L320:
	movss	72(%r10), %xmm6
	jmp	.L284
	.p2align 4,,10
.L301:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	jmp	.L278
	.seh_endproc
	.p2align 4,,15
	.def	_Z6ImHashPKvij.constprop.146;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z6ImHashPKvij.constprop.146
_Z6ImHashPKvij.constprop.146:
.LFB6600:
	subq	$40, %rsp
	.seh_stackalloc	40
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	.seh_endprologue
	movl	4+_ZZ6ImHashPKvijE9crc32_lut(%rip), %eax
	leaq	_ZZ6ImHashPKvijE9crc32_lut(%rip), %r10
	testl	%eax, %eax
	jne	.L322
	movdqa	.LC10(%rip), %xmm5
	movq	%r10, %rax
	pxor	%xmm2, %xmm2
	movdqa	.LC11(%rip), %xmm6
	leaq	1024(%r10), %r8
	movdqa	.LC12(%rip), %xmm4
	movdqa	.LC13(%rip), %xmm3
	.p2align 4,,10
.L323:
	movdqa	%xmm5, %xmm0
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm1
	addq	$16, %rax
	movdqa	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	paddd	%xmm6, %xmm5
	psrld	$1, %xmm1
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	pand	%xmm3, %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%rax, %r8
	jne	.L323
.L322:
	movzbl	(%rcx), %r8d
	notl	%edx
	testb	%r8b, %r8b
	je	.L330
	addq	$2, %rcx
	movl	%edx, %eax
	jmp	.L325
	.p2align 4,,10
.L326:
	xorl	%eax, %r8d
	movl	%eax, %r11d
	movzbl	%r8b, %eax
	shrl	$8, %r11d
	xorl	(%r10,%rax,4), %r11d
	testb	%r9b, %r9b
	movl	%r11d, %eax
	je	.L324
.L329:
	addq	$1, %rcx
	movl	%r9d, %r8d
.L325:
	cmpb	$35, %r8b
	movzbl	-1(%rcx), %r9d
	jne	.L326
	cmpb	$35, %r9b
	jne	.L326
	cmpb	$35, (%rcx)
	cmove	%edx, %eax
	movl	%eax, %r8d
	movzbl	%al, %eax
	xorq	$35, %rax
	shrl	$8, %r8d
	xorl	(%r10,%rax,4), %r8d
	movl	%r8d, %eax
	jmp	.L329
	.p2align 4,,10
.L330:
	movl	%edx, %eax
.L324:
	movaps	(%rsp), %xmm6
	notl	%eax
	movaps	16(%rsp), %xmm7
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL18FindWindowSettingsPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18FindWindowSettingsPKc
_ZL18FindWindowSettingsPKc:
.LFB675:
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
	movq	GImGui(%rip), %rsi
	xorl	%edx, %edx
	call	_Z6ImHashPKvij.constprop.146
	movl	6112(%rsi), %edx
	movl	%eax, %r12d
	testl	%edx, %edx
	je	.L334
	leaq	.LC2(%rip), %rbp
	xorl	%ebx, %ebx
	leaq	.LC3(%rip), %rdi
	jmp	.L337
	.p2align 4,,10
.L335:
	movq	6120(%rsi), %rax
	movq	%rbx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	cmpl	%r12d, 8(%rax)
	je	.L333
	movl	6112(%rsi), %edx
	leal	1(%rbx), %ecx
	addq	$1, %rbx
	cmpl	%ecx, %edx
	je	.L334
.L337:
	cmpl	%ebx, %edx
	jg	.L335
	movl	$856, %r8d
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	call	_assert
	jmp	.L335
	.p2align 4,,10
.L334:
	xorl	%eax, %eax
.L333:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "%s %04d { pos = (%8.2f,%8.2f), uv = (%.6f,%.6f), col = %08X }\12\0"
	.text
	.p2align 4,,15
	.def	_Z7sprintfPcPKcz.constprop.149;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z7sprintfPcPKcz.constprop.149
_Z7sprintfPcPKcz.constprop.149:
.LFB6597:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	.LC14(%rip), %rdx
	movq	%r8, 80(%rsp)
	leaq	80(%rsp), %r8
	movq	%r9, 88(%rsp)
	movq	%r8, 40(%rsp)
	call	__mingw_vsprintf
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui13PopStyleColorEi.constprop.142;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13PopStyleColorEi.constprop.142
_ZN5ImGui13PopStyleColorEi.constprop.142:
.LFB6604:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L347
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L345:
	subl	$1, %eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L347:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	6136(%rbx), %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	%rdx, %rax
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L345
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6136(%rbx), %eax
	subl	$1, %eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "idx >= 0 && idx < ImGuiStyleVar_Count_\0"
	.text
	.p2align 4,,15
	.def	_ZN5ImGui11PopStyleVarEi.constprop.141;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11PopStyleVarEi.constprop.141
_ZN5ImGui11PopStyleVarEi.constprop.141:
.LFB6605:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movslq	6152(%rsi), %rax
	testl	%eax, %eax
	jle	.L355
.L349:
	leaq	(%rax,%rax,2), %rdx
	movq	6160(%rsi), %rax
	leaq	-12(%rax,%rdx,4), %rdi
	movslq	(%rdi), %rbx
	cmpl	$11, %ebx
	ja	.L356
.L350:
	leaq	_ZL13GStyleVarInfo(%rip), %rax
	leaq	(%rax,%rbx,8), %rdx
	movl	(%rax,%rbx,8), %eax
	cmpl	$1, %eax
	je	.L351
	cmpl	$2, %eax
	je	.L352
	testl	%eax, %eax
	jne	.L353
	movl	4(%rdx), %eax
	movl	4(%rdi), %ecx
	movq	GImGui(%rip), %rdx
	movl	%ecx, 5120(%rdx,%rax)
.L353:
	movl	6152(%rsi), %eax
	testl	%eax, %eax
	jle	.L357
.L354:
	subl	$1, %eax
	movl	%eax, 6152(%rsi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L352:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	8(%rdi), %xmm0
	movss	4(%rdi), %xmm1
	leaq	5120(%rdx,%rax), %rax
	movss	%xmm1, (%rax)
	movss	%xmm0, 4(%rax)
	movl	6152(%rsi), %eax
	testl	%eax, %eax
	jg	.L354
.L357:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6152(%rsi), %eax
	jmp	.L354
	.p2align 4,,10
.L351:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	4(%rdi), %xmm0
	movss	%xmm0, 5120(%rdx,%rax)
	jmp	.L353
	.p2align 4,,10
.L356:
	leaq	.LC5(%rip), %rdx
	movl	$4761, %r8d
	leaq	.LC15(%rip), %rcx
	call	_assert
	jmp	.L350
	.p2align 4,,10
.L355:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	6152(%rsi), %rax
	jmp	.L349
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui11PopStyleVarEi.constprop.140;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11PopStyleVarEi.constprop.140
_ZN5ImGui11PopStyleVarEi.constprop.140:
.LFB6606:
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
	movq	GImGui(%rip), %rbx
	movslq	6152(%rbx), %rax
	testl	%eax, %eax
	jle	.L371
.L359:
	leaq	(%rax,%rax,2), %rdx
	movq	6160(%rbx), %rax
	leaq	-12(%rax,%rdx,4), %rbp
	movslq	0(%rbp), %rsi
	cmpl	$11, %esi
	ja	.L372
.L360:
	leaq	_ZL13GStyleVarInfo(%rip), %rdi
	movl	(%rdi,%rsi,8), %eax
	leaq	(%rdi,%rsi,8), %rdx
	cmpl	$1, %eax
	je	.L361
	cmpl	$2, %eax
	je	.L362
	testl	%eax, %eax
	jne	.L363
	movl	4(%rdx), %eax
	movl	4(%rbp), %ecx
	movq	GImGui(%rip), %rdx
	movl	%ecx, 5120(%rdx,%rax)
.L363:
	movl	6152(%rbx), %eax
	testl	%eax, %eax
	jle	.L373
.L364:
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, 6152(%rbx)
	jle	.L374
.L365:
	cltq
	leaq	(%rax,%rax,2), %rdx
	movq	6160(%rbx), %rax
	leaq	-12(%rax,%rdx,4), %rbp
	movslq	0(%rbp), %rsi
	cmpl	$11, %esi
	ja	.L375
.L366:
	movl	(%rdi,%rsi,8), %eax
	leaq	(%rdi,%rsi,8), %rdx
	cmpl	$1, %eax
	je	.L376
	cmpl	$2, %eax
	je	.L377
	testl	%eax, %eax
	jne	.L368
	movl	4(%rdx), %eax
	movl	4(%rbp), %ecx
	movq	GImGui(%rip), %rdx
	movl	%ecx, 5120(%rdx,%rax)
.L368:
	movl	6152(%rbx), %eax
	testl	%eax, %eax
	jle	.L378
.L370:
	subl	$1, %eax
	movl	%eax, 6152(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L362:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	8(%rbp), %xmm0
	movss	4(%rbp), %xmm1
	leaq	5120(%rdx,%rax), %rax
	movss	%xmm1, (%rax)
	movss	%xmm0, 4(%rax)
	movl	6152(%rbx), %eax
	testl	%eax, %eax
	jg	.L364
.L373:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6152(%rbx), %eax
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, 6152(%rbx)
	jg	.L365
.L374:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6152(%rbx), %eax
	jmp	.L365
	.p2align 4,,10
.L376:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	4(%rbp), %xmm0
	movss	%xmm0, 5120(%rdx,%rax)
	movl	6152(%rbx), %eax
	testl	%eax, %eax
	jg	.L370
.L378:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6152(%rbx), %eax
	jmp	.L370
	.p2align 4,,10
.L361:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	4(%rbp), %xmm0
	movss	%xmm0, 5120(%rdx,%rax)
	jmp	.L363
	.p2align 4,,10
.L372:
	leaq	.LC5(%rip), %rdx
	movl	$4761, %r8d
	leaq	.LC15(%rip), %rcx
	call	_assert
	jmp	.L360
	.p2align 4,,10
.L375:
	leaq	.LC5(%rip), %rdx
	movl	$4761, %r8d
	leaq	.LC15(%rip), %rcx
	call	_assert
	jmp	.L366
	.p2align 4,,10
.L371:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	6152(%rbx), %rax
	jmp	.L359
	.p2align 4,,10
.L377:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	8(%rbp), %xmm0
	movss	4(%rbp), %xmm1
	leaq	5120(%rdx,%rax), %rax
	movss	%xmm1, (%rax)
	movss	%xmm0, 4(%rax)
	jmp	.L368
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP18ImGuiTextEditStatei;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP18ImGuiTextEditStatei
_ZN8ImGuiStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP18ImGuiTextEditStatei:
.LFB976:
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
	movl	%edx, %ebx
	movq	%rcx, %r12
	subl	$1, %ebx
	js	.L390
	je	.L390
	leaq	.LC2(%rip), %rbp
	movslq	%ebx, %rax
	movabsq	$20895015895552, %r13
	leaq	-2(%rax,%rax), %rdi
	.p2align 4,,10
.L382:
	leal	-1(%rbx), %esi
	cmpl	8(%r12), %esi
	jge	.L408
.L383:
	movq	16(%r12), %rax
	movq	%r13, %r8
	movl	$0, %edx
	movzwl	(%rax,%rdi), %ecx
	shrq	%cl, %r8
	andl	$1, %r8d
	cmpw	$45, %cx
	cmovnb	%edx, %r8d
	cmpw	$12288, %cx
	je	.L385
	testb	%r8b, %r8b
	jne	.L385
	leal	-59(%rcx), %edx
	testw	$-33, %dx
	je	.L385
	leal	-123(%rcx), %edx
	cmpw	$2, %dx
	jbe	.L385
	cmpw	$93, %cx
	jne	.L386
	.p2align 4,,10
.L385:
	cmpl	%ebx, 8(%r12)
	jle	.L409
.L387:
	movzwl	2(%rax,%rdi), %ecx
	movq	%r13, %rax
	shrq	%cl, %rax
	movl	%ecx, %edx
	andl	$1, %eax
	cmpw	$45, %cx
	movl	$0, %ecx
	cmovnb	%ecx, %eax
	cmpw	$12288, %dx
	je	.L386
	testb	%al, %al
	jne	.L386
	leal	-59(%rdx), %eax
	testw	$-33, %ax
	je	.L386
	leal	-123(%rdx), %eax
	cmpw	$2, %ax
	jbe	.L386
	cmpw	$93, %dx
	jne	.L379
	.p2align 4,,10
.L386:
	cmpl	$-1, %esi
	je	.L390
	subq	$2, %rdi
	testl	%esi, %esi
	movl	%esi, %ebx
	jne	.L382
.L390:
	xorl	%ebx, %ebx
.L379:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L408:
	leaq	.LC3(%rip), %rcx
	movl	$856, %r8d
	movq	%rbp, %rdx
	call	_assert
	jmp	.L383
	.p2align 4,,10
.L409:
	leaq	.LC3(%rip), %rcx
	movl	$856, %r8d
	movq	%rbp, %rdx
	call	_assert
	movq	16(%r12), %rax
	jmp	.L387
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL31STB_TEXTEDIT_MOVEWORDRIGHT_IMPLEP18ImGuiTextEditStatei;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL31STB_TEXTEDIT_MOVEWORDRIGHT_IMPLEP18ImGuiTextEditStatei
_ZN8ImGuiStbL31STB_TEXTEDIT_MOVEWORDRIGHT_IMPLEP18ImGuiTextEditStatei:
.LFB977:
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
	movl	60(%rcx), %esi
	leal	1(%rdx), %ebx
	movq	%rcx, %rbp
	cmpl	%esi, %ebx
	jge	.L411
	testl	%ebx, %ebx
	jle	.L410
	leaq	.LC2(%rip), %rdi
	movslq	%ebx, %rax
	movabsq	$20895015895552, %r13
	leaq	-2(%rax,%rax), %r12
	leal	-1(%rbx), %eax
	cmpl	8(%rbp), %eax
	jge	.L432
	.p2align 4,,10
.L413:
	movq	16(%rbp), %rax
	movq	%r13, %r8
	movl	$0, %edx
	movzwl	(%rax,%r12), %ecx
	shrq	%cl, %r8
	andl	$1, %r8d
	cmpw	$45, %cx
	cmovnb	%edx, %r8d
	cmpw	$12288, %cx
	je	.L415
	testb	%r8b, %r8b
	jne	.L415
	leal	-59(%rcx), %edx
	testw	$-33, %dx
	je	.L415
	leal	-123(%rcx), %edx
	cmpw	$2, %dx
	jbe	.L415
	cmpw	$93, %cx
	jne	.L416
	.p2align 4,,10
.L415:
	cmpl	%ebx, 8(%rbp)
	jle	.L433
.L417:
	movzwl	2(%rax,%r12), %ecx
	movq	%r13, %rax
	shrq	%cl, %rax
	movl	%ecx, %edx
	andl	$1, %eax
	cmpw	$45, %cx
	movl	$0, %ecx
	cmovnb	%ecx, %eax
	cmpw	$12288, %dx
	je	.L416
	testb	%al, %al
	jne	.L416
	leal	-59(%rdx), %eax
	testw	$-33, %ax
	je	.L416
	leal	-123(%rdx), %eax
	cmpw	$2, %ax
	jbe	.L416
	cmpw	$93, %dx
	jne	.L410
	.p2align 4,,10
.L416:
	addl	$1, %ebx
	cmpl	%ebx, %esi
	je	.L434
	leal	-1(%rbx), %eax
	addq	$2, %r12
	cmpl	8(%rbp), %eax
	jl	.L413
.L432:
	leaq	.LC3(%rip), %rcx
	movl	$856, %r8d
	movq	%rdi, %rdx
	call	_assert
	jmp	.L413
	.p2align 4,,10
.L433:
	leaq	.LC3(%rip), %rcx
	movl	$856, %r8d
	movq	%rdi, %rdx
	call	_assert
	movq	16(%rbp), %rax
	jmp	.L417
	.p2align 4,,10
.L434:
	movl	%esi, %ebx
.L411:
	cmpl	%esi, %ebx
	cmovg	%esi, %ebx
.L410:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17AddWindowSettingsPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17AddWindowSettingsPKc
_ZL17AddWindowSettingsPKc:
.LFB676:
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
	movq	GImGui(%rip), %rbx
	movl	6112(%rbx), %eax
	movq	%rbx, %rbp
	movq	%rcx, %rdi
	leal	1(%rax), %esi
	movl	6116(%rbx), %eax
	cmpl	%eax, %esi
	jle	.L436
	testl	%eax, %eax
	movl	$8, %r12d
	je	.L437
	movl	%eax, %r12d
	shrl	$31, %r12d
	addl	%eax, %r12d
	sarl	%r12d
	addl	%eax, %r12d
.L437:
	cmpl	%r12d, %esi
	jl	.L450
	movl	%esi, %r12d
.L438:
	addl	$1, 844(%rbx)
	movslq	%r12d, %rcx
	salq	$5, %rcx
	call	*232(%rbx)
	movq	6120(%rbx), %rcx
	movq	%rax, %rbp
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L441
	movslq	6112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	salq	$5, %r8
	call	memcpy
	movq	6120(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L441
	subl	$1, 844(%rax)
.L441:
	call	*240(%rax)
	movq	%rbp, 6120(%rbx)
	movq	GImGui(%rip), %rbp
	movl	%r12d, 6116(%rbx)
.L436:
	movl	%esi, 6112(%rbx)
	movslq	6112(%rbp), %rax
	movq	%rbp, %r12
	testl	%eax, %eax
	jle	.L451
.L442:
	movq	6120(%rbp), %rdx
	salq	$5, %rax
	movq	%rdi, %rcx
	leaq	-32(%rdx,%rax), %rbx
	call	strlen
	addl	$1, 844(%r12)
	leaq	1(%rax), %rsi
	movq	%rsi, %rcx
	call	*232(%r12)
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	memcpy
	xorl	%edx, %edx
	movq	%rdi, %rcx
	movq	%rax, (%rbx)
	call	_Z6ImHashPKvij.constprop.146
	movaps	.LC16(%rip), %xmm0
	movb	$0, 28(%rbx)
	movl	%eax, 8(%rbx)
	movq	%rbx, %rax
	movlps	%xmm0, 12(%rbx)
	movq	$0, 20(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L450:
	cmpl	%r12d, %eax
	movq	%rbx, %rbp
	jl	.L438
	jmp	.L436
	.p2align 4,,10
.L451:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	GImGui(%rip), %r12
	movslq	6112(%rbp), %rax
	jmp	.L442
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi
_ZN8ImGuiStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi:
.LFB997:
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
	movl	$999, %r8d
	movq	%rcx, %rbx
	movl	$99, %ecx
	movl	%edx, %r12d
	movzwl	3186(%rbx), %eax
	movw	%cx, 3188(%rbx)
	movw	%r8w, 3192(%rbx)
	cmpw	$99, %ax
	je	.L468
.L453:
	leaq	1188(%rbx), %rdi
	cmpl	$999, %r12d
	leaq	20(%rbx), %rbp
	leaq	12(%rbx), %rsi
	jg	.L469
.L457:
	movswl	3190(%rbx), %edx
	movswq	3186(%rbx), %rax
	movl	%edx, %r8d
	addl	%r12d, %edx
	cmpl	$999, %edx
	jle	.L459
	testw	%ax, %ax
	jg	.L460
.L461:
	jmp	.L461
	.p2align 4,,10
.L460:
	cmpw	$0, 8(%rbx)
	jns	.L470
.L462:
	subl	$1, %eax
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	movw	%ax, 3186(%rbx)
	movswq	%ax, %rax
	leaq	(%rax,%rax,2), %r8
	salq	$2, %r8
	call	memmove
	jmp	.L457
	.p2align 4,,10
.L459:
	leal	1(%rax), %edx
	leaq	(%rax,%rax,2), %rax
	movw	%dx, 3186(%rbx)
	leaq	(%rbx,%rax,4), %rax
.L452:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L470:
	movswq	4(%rbx), %rax
	movq	%rdi, %rcx
	leaq	(%rdi,%rax,2), %rdx
	subl	%eax, %r8d
	movq	%rax, %r13
	movw	%r8w, 3190(%rbx)
	movswq	%r8w, %r8
	addq	%r8, %r8
	call	memmove
	movzwl	3186(%rbx), %eax
	testw	%ax, %ax
	jle	.L462
	leaq	8(%rbx), %rdx
	movswl	%ax, %ecx
	subl	$1, %ecx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	0(%rbp,%rcx,4), %r8
	.p2align 4,,10
.L464:
	movzwl	(%rdx), %ecx
	testw	%cx, %cx
	js	.L463
	subl	%r13d, %ecx
	movw	%cx, (%rdx)
.L463:
	addq	$12, %rdx
	cmpq	%rdx, %r8
	jne	.L464
	jmp	.L462
	.p2align 4,,10
.L468:
	cmpw	$0, 8(%rbx)
	jns	.L471
.L454:
	leaq	12(%rbx), %rdx
	subl	$1, %eax
	movq	%rbx, %rcx
	movw	%ax, 3186(%rbx)
	movswq	%ax, %rax
	leaq	(%rax,%rax,2), %r8
	salq	$2, %r8
	call	memmove
	jmp	.L453
	.p2align 4,,10
.L471:
	movswq	4(%rbx), %rdx
	leaq	1188(%rbx), %rcx
	movzwl	3190(%rbx), %eax
	movq	%rdx, %rsi
	subl	%edx, %eax
	movw	%ax, 3190(%rbx)
	leaq	(%rcx,%rdx,2), %rdx
	movswq	%ax, %rax
	leaq	(%rax,%rax), %r8
	call	memmove
	movzwl	3186(%rbx), %eax
	testw	%ax, %ax
	jle	.L454
	leaq	8(%rbx), %rdx
	movswl	%ax, %ecx
	subl	$1, %ecx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	20(%rbx,%rcx,4), %r8
	.p2align 4,,10
.L456:
	movzwl	(%rdx), %ecx
	testw	%cx, %cx
	js	.L455
	subl	%esi, %ecx
	movw	%cx, (%rdx)
.L455:
	addq	$12, %rdx
	cmpq	%rdx, %r8
	jne	.L456
	jmp	.L454
	.p2align 4,,10
.L469:
	xorl	%eax, %eax
	xorl	%edx, %edx
	movw	%ax, 3186(%rbx)
	xorl	%eax, %eax
	movw	%dx, 3190(%rbx)
	jmp	.L452
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii
_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii:
.LFB985:
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
	movl	$99, %r10d
	movl	$999, %r11d
	movzwl	3210(%rdx), %eax
	cmpw	$99, %ax
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movw	%r10w, 3212(%rdx)
	movl	%r8d, %ebx
	movl	%r9d, %ebp
	movw	%r11w, 3216(%rdx)
	leaq	24(%rdx), %r12
	je	.L514
.L473:
	leaq	1212(%rsi), %r14
	cmpl	$999, %ebp
	leaq	44(%rsi), %r15
	leaq	36(%rsi), %r13
	jg	.L515
.L477:
	movswq	3214(%rsi), %rdx
	movswq	3210(%rsi), %rax
	movq	%rdx, %r8
	addl	%ebp, %edx
	cmpl	$999, %edx
	jle	.L479
	testw	%ax, %ax
	jg	.L480
.L481:
	jmp	.L481
	.p2align 4,,10
.L480:
	cmpw	$0, 32(%rsi)
	jns	.L516
.L482:
	subl	$1, %eax
	movq	%r13, %rdx
	movq	%r12, %rcx
	movw	%ax, 3210(%rsi)
	movswq	%ax, %rax
	leaq	(%rax,%rax,2), %r8
	salq	$2, %r8
	call	memmove
	jmp	.L477
	.p2align 4,,10
.L479:
	leal	1(%rax), %edx
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	leaq	(%rax,%rax,2), %rax
	movw	%dx, 3210(%rsi)
	leaq	(%rsi,%rax,4), %rax
	movl	%ebx, 24(%rax)
	movw	%bp, 28(%rax)
	movw	%cx, 30(%rax)
	je	.L517
	movw	%r8w, 32(%rax)
	leal	(%r8,%rbp), %eax
	movslq	%ebx, %r13
	movw	%ax, 3214(%rsi)
	leal	-1(%rbp), %eax
	subq	%r13, %r8
	movq	%r13, %r15
	leaq	1(%rax,%r13), %rax
	leaq	(%r13,%r13), %rbx
	leaq	(%rax,%rax), %r14
	leaq	1188(%r12,%r8,2), %r12
	.p2align 4,,10
.L486:
	cmpl	8(%rdi), %r15d
	jge	.L518
	movq	16(%rdi), %r9
	addl	$1, %r15d
	movzwl	(%r9,%rbx), %edx
	movw	%dx, (%r12,%rbx)
	addq	$2, %rbx
	cmpq	%rbx, %r14
	jne	.L486
.L478:
	leaq	(%r9,%r13,2), %rcx
	movslq	%ebp, %rbx
	leaq	(%rcx,%rbx,2), %r10
	movq	%rcx, %rdx
	testq	%r10, %r10
	setne	%r11b
	xorl	%r8d, %r8d
.L490:
	cmpq	%rdx, %r10
	ja	.L500
	testb	%r11b, %r11b
	jne	.L491
.L500:
	movzwl	(%rdx), %eax
	testw	%ax, %ax
	je	.L491
	addq	$2, %rdx
	cmpl	$127, %eax
	ja	.L493
	addl	$1, %r8d
	cmpq	%rdx, %r10
	ja	.L500
	testb	%r11b, %r11b
	je	.L500
.L491:
	subl	%r8d, 56(%rdi)
	addq	%r13, %rbx
	subl	%ebp, 60(%rdi)
	leaq	(%r9,%rbx,2), %rax
	leaq	2(%rax), %rdx
	movzwl	(%rax), %eax
	testw	%ax, %ax
	je	.L498
	.p2align 4,,10
.L499:
	addq	$2, %rcx
	addq	$2, %rdx
	movw	%ax, -2(%rcx)
	movzwl	-2(%rdx), %eax
	testw	%ax, %ax
	jne	.L499
.L498:
	xorl	%eax, %eax
	movw	%ax, (%rcx)
	movb	$0, 15(%rsi)
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
.L493:
	cmpl	$2047, %eax
	ja	.L495
	addl	$2, %r8d
	jmp	.L490
	.p2align 4,,10
.L495:
	leal	-56320(%rax), %r12d
	cmpl	$1023, %r12d
	jbe	.L490
	subl	$55296, %eax
	cmpl	$1024, %eax
	adcl	$3, %r8d
	jmp	.L490
	.p2align 4,,10
.L518:
	leaq	.LC2(%rip), %rdx
	movl	$857, %r8d
	addl	$1, %r15d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movq	16(%rdi), %r9
	movzwl	(%r9,%rbx), %edx
	movw	%dx, (%r12,%rbx)
	addq	$2, %rbx
	cmpq	%r14, %rbx
	jne	.L486
	jmp	.L478
	.p2align 4,,10
.L516:
	movswq	28(%rsi), %rax
	movq	%r14, %rcx
	leaq	(%r14,%rax,2), %rdx
	subl	%eax, %r8d
	movl	%eax, 44(%rsp)
	movw	%r8w, 3214(%rsi)
	movswq	%r8w, %r8
	addq	%r8, %r8
	call	memmove
	movzwl	3210(%rsi), %eax
	testw	%ax, %ax
	jle	.L482
	movl	44(%rsp), %r9d
	leaq	32(%rsi), %rdx
	movswl	%ax, %ecx
	subl	$1, %ecx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r15,%rcx,4), %r8
	.p2align 4,,10
.L484:
	movzwl	(%rdx), %ecx
	testw	%cx, %cx
	js	.L483
	subl	%r9d, %ecx
	movw	%cx, (%rdx)
.L483:
	addq	$12, %rdx
	cmpq	%rdx, %r8
	jne	.L484
	jmp	.L482
	.p2align 4,,10
.L514:
	cmpw	$0, 32(%rdx)
	jns	.L519
.L474:
	leaq	36(%rsi), %rdx
	subl	$1, %eax
	movq	%r12, %rcx
	movw	%ax, 3210(%rsi)
	movswq	%ax, %rax
	leaq	(%rax,%rax,2), %r8
	salq	$2, %r8
	call	memmove
	jmp	.L473
	.p2align 4,,10
.L519:
	movswq	28(%rdx), %rdx
	leaq	1212(%rsi), %rcx
	movzwl	3214(%rsi), %eax
	movq	%rdx, %r13
	subl	%edx, %eax
	movw	%ax, 3214(%rsi)
	leaq	(%rcx,%rdx,2), %rdx
	movswq	%ax, %rax
	leaq	(%rax,%rax), %r8
	call	memmove
	movzwl	3210(%rsi), %eax
	testw	%ax, %ax
	jle	.L474
	leaq	32(%rsi), %rdx
	movswl	%ax, %ecx
	subl	$1, %ecx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	44(%rsi,%rcx,4), %r8
	.p2align 4,,10
.L476:
	movzwl	(%rdx), %ecx
	testw	%cx, %cx
	js	.L475
	subl	%r13d, %ecx
	movw	%cx, (%rdx)
.L475:
	addq	$12, %rdx
	cmpq	%rdx, %r8
	jne	.L476
	jmp	.L474
	.p2align 4,,10
.L515:
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movslq	%ebx, %r13
	movw	%r9w, 3214(%rsi)
	movq	16(%rdi), %r9
	movw	%r8w, 3210(%rsi)
	jmp	.L478
	.p2align 4,,10
.L517:
	movl	$-1, %edx
	movq	16(%rdi), %r9
	movslq	%ebx, %r13
	movw	%dx, 32(%rax)
	jmp	.L478
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE:
.LFB986:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbx
	movl	60(%rcx), %edx
	movl	4(%rbx), %eax
	movl	8(%rbx), %r8d
	cmpl	%r8d, %eax
	je	.L521
	cmpl	%eax, %edx
	jge	.L522
	cmpl	%r8d, %edx
	movl	%edx, 4(%rbx)
	jl	.L536
	movl	%r8d, %eax
	movl	%edx, %r8d
	cmpl	%r8d, %eax
	je	.L537
.L524:
	cmpl	(%rbx), %edx
	jge	.L526
	movl	%edx, (%rbx)
	jmp	.L526
	.p2align 4,,10
.L522:
	cmpl	%r8d, %edx
	jge	.L538
	movl	%eax, %r8d
	jmp	.L533
	.p2align 4,,10
.L521:
	movl	(%rbx), %r9d
.L525:
	cmpl	%r9d, %edx
	jge	.L520
	cmpl	%eax, %r8d
	movl	%edx, (%rbx)
	je	.L520
.L526:
	cmpl	%r8d, %eax
	jle	.L528
	subl	%r8d, %eax
	movq	%rbx, %rdx
	movl	%eax, %r9d
	call	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii
	movl	4(%rbx), %eax
	movl	%eax, (%rbx)
	movl	%eax, 8(%rbx)
.L529:
	movb	$0, 15(%rbx)
.L520:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L528:
	movl	%r8d, %r9d
	movq	%rbx, %rdx
	movl	%eax, %r8d
	subl	%eax, %r9d
	call	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii
	movl	8(%rbx), %eax
	movl	%eax, (%rbx)
	movl	%eax, 4(%rbx)
	jmp	.L529
	.p2align 4,,10
.L536:
	movl	%edx, %r8d
.L533:
	movl	%edx, %eax
	movl	%edx, 8(%rbx)
	cmpl	%r8d, %eax
	jne	.L524
.L537:
	movl	%eax, (%rbx)
	movl	%eax, %r9d
	jmp	.L525
	.p2align 4,,10
.L538:
	movl	%eax, %r9d
	movl	%r8d, %eax
	movl	%r9d, %r8d
	jmp	.L524
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.36;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.36
_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.36:
.LFB6527:
	.seh_endprologue
	movq	GImGui(%rip), %r10
	movss	5944(%r10), %xmm3
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	leaq	(%rdx,%r8,2), %r11
	leaq	(%rdx,%r9,2), %r9
	cmpq	%r9, %r11
	jbe	.L551
	movzwl	(%r9), %edx
	leaq	2(%r9), %rax
	cmpl	$10, %edx
	movq	%rdx, %r8
	je	.L560
	movq	5936(%r10), %r10
	pxor	%xmm2, %xmm2
	pxor	%xmm0, %xmm0
	movss	(%r10), %xmm5
.L544:
	cmpl	$13, %edx
	je	.L546
	cmpl	32(%r10), %edx
	jge	.L547
	movq	40(%r10), %rdx
	movss	(%rdx,%r8,4), %xmm4
.L548:
	movaps	%xmm3, %xmm1
	divss	%xmm5, %xmm1
	mulss	%xmm4, %xmm1
	addss	%xmm1, %xmm0
.L546:
	cmpq	%rax, %r11
	jbe	.L543
	addq	$2, %rax
	movzwl	-2(%rax), %edx
	cmpl	$10, %edx
	movq	%rdx, %r8
	jne	.L544
	subq	%r9, %rax
	movaps	%xmm3, %xmm1
	sarq	%rax
	ucomiss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	jnb	.L552
	movaps	%xmm2, %xmm5
	maxss	%xmm0, %xmm5
	movaps	%xmm5, %xmm0
.L542:
	ucomiss	%xmm2, %xmm1
	jp	.L549
	je	.L540
.L549:
	movl	$0x00000000, (%rcx)
	movss	%xmm0, 4(%rcx)
	movss	%xmm1, 8(%rcx)
	movl	$0x00000000, 12(%rcx)
	movss	%xmm1, 16(%rcx)
	movl	%eax, 20(%rcx)
	ret
	.p2align 4,,10
.L547:
	movss	72(%r10), %xmm4
	jmp	.L548
	.p2align 4,,10
.L543:
	subq	%r9, %rax
	sarq	%rax
	ucomiss	%xmm2, %xmm0
	jbe	.L561
	pxor	%xmm1, %xmm1
.L540:
	addss	%xmm3, %xmm1
	jmp	.L549
	.p2align 4,,10
.L560:
	movaps	%xmm3, %xmm1
	pxor	%xmm2, %xmm2
	movl	$1, %eax
	pxor	%xmm0, %xmm0
	addss	%xmm2, %xmm1
	jmp	.L542
	.p2align 4,,10
.L552:
	pxor	%xmm0, %xmm0
	jmp	.L542
	.p2align 4,,10
.L551:
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	jmp	.L540
.L561:
	movaps	%xmm2, %xmm0
	movaps	%xmm2, %xmm1
	ja	.L540
	jmp	.L542
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN8ImGuiStbL25stb_textedit_find_charposEPNS_12StbFindStateEP18ImGuiTextEditStateii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL25stb_textedit_find_charposEPNS_12StbFindStateEP18ImGuiTextEditStateii
_ZN8ImGuiStbL25stb_textedit_find_charposEPNS_12StbFindStateEP18ImGuiTextEditStateii:
.LFB983:
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
	cmpl	60(%rdx), %r8d
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movl	%r8d, %ebp
	jne	.L563
	testl	%r9d, %r9d
	je	.L564
	movq	16(%rdx), %rdx
	leaq	32(%rsp), %rcx
	xorl	%r9d, %r9d
	call	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.36
	movss	48(%rsp), %xmm0
	movl	$0x00000000, 4(%rbx)
	subss	44(%rsp), %xmm0
	movl	$0, 12(%rbx)
	movl	%ebp, 16(%rbx)
	movss	%xmm0, 8(%rbx)
	movss	36(%rsp), %xmm0
	movss	%xmm0, (%rbx)
	jmp	.L562
.L564:
	movq	$0, (%rcx)
	leaq	32(%rsp), %r12
	xorl	%esi, %esi
	movl	$1065353216, 8(%rcx)
.L567:
	cmpl	%ebp, %esi
	jge	.L566
	movq	16(%rdi), %rdx
	movl	%esi, %r9d
	movq	%r12, %rcx
	movl	60(%rdi), %r8d
	call	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.36
	movl	%esi, %r9d
	addl	52(%rsp), %esi
	jmp	.L567
.L566:
	movl	%esi, 12(%rbx)
	movl	$0, 16(%rbx)
	movl	%r9d, 20(%rbx)
	jmp	.L562
.L563:
	movl	$0x00000000, 4(%rcx)
	leaq	32(%rsp), %r13
	xorl	%esi, %esi
	xorl	%r12d, %r12d
.L569:
	movq	16(%rdi), %rdx
	movl	%esi, %r9d
	movq	%r13, %rcx
	movl	60(%rdi), %r8d
	call	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.36
	movl	52(%rsp), %eax
	leal	(%rax,%rsi), %edx
	cmpl	%ebp, %edx
	jg	.L568
	movss	4(%rbx), %xmm0
	movl	%esi, %r12d
	movl	%edx, %esi
	addss	40(%rsp), %xmm0
	movss	%xmm0, 4(%rbx)
	jmp	.L569
.L568:
	movss	48(%rsp), %xmm0
	movl	%r12d, 20(%rbx)
	xorl	%r12d, %r12d
	subss	44(%rsp), %xmm0
	movl	%esi, 12(%rbx)
	movl	%eax, 16(%rbx)
	movss	%xmm0, 8(%rbx)
	movss	32(%rsp), %xmm0
	movss	%xmm0, (%rbx)
.L570:
	leal	(%r12,%rsi), %eax
	cmpl	%eax, %ebp
	jle	.L562
	movl	%r12d, %r8d
	movl	%esi, %edx
	movq	%rdi, %rcx
	call	_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii
	addss	(%rbx), %xmm0
	incl	%r12d
	movss	%xmm0, (%rbx)
	jmp	.L570
.L562:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.seh_endproc
	.text
	.p2align 4,,15
	.def	_ZL23AddWindowToSortedBufferR8ImVectorIP11ImGuiWindowES1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23AddWindowToSortedBufferR8ImVectorIP11ImGuiWindowES1_
_ZL23AddWindowToSortedBufferR8ImVectorIP11ImGuiWindowES1_:
.LFB681:
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
	cmpl	4(%rcx), %eax
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	je	.L572
	movq	8(%rcx), %rbx
.L573:
	cmpb	$0, 136(%rsi)
	leal	1(%rax), %edx
	movl	%edx, (%rdi)
	movq	%rsi, (%rbx,%rax,8)
	je	.L571
	movl	280(%rsi), %ebx
	cmpl	$1, %ebx
	jg	.L589
	testl	%ebx, %ebx
	jg	.L580
.L571:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L589:
	movq	288(%rsi), %rcx
	movslq	%ebx, %rdx
	movl	$8, %r8d
	leaq	_ZL19ChildWindowComparerPKvS0_(%rip), %r9
	call	qsort
.L580:
	leal	-1(%rbx), %ebp
	xorl	%ebx, %ebx
	leaq	.LC2(%rip), %r13
	addq	$1, %rbp
	cmpl	%ebx, 280(%rsi)
	leaq	.LC3(%rip), %r12
	jle	.L590
	.p2align 4,,10
.L581:
	movq	288(%rsi), %rax
	movq	(%rax,%rbx,8), %rdx
	cmpb	$0, 136(%rdx)
	jne	.L591
.L582:
	addq	$1, %rbx
	cmpq	%rbx, %rbp
	je	.L571
	cmpl	%ebx, 280(%rsi)
	jg	.L581
.L590:
	movl	$856, %r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_assert
	jmp	.L581
	.p2align 4,,10
.L572:
	leal	1(%rax), %ebp
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L592
.L574:
	cmpl	%edx, %ebp
	movq	GImGui(%rip), %rax
	cmovl	%edx, %ebp
	movslq	%ebp, %rcx
	addl	$1, 844(%rax)
	salq	$3, %rcx
	call	*232(%rax)
	movq	8(%rdi), %rcx
	movq	%rax, %rbx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L577
	movslq	(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L577
	subl	$1, 844(%rax)
.L577:
	call	*240(%rax)
	movq	%rbx, 8(%rdi)
	movslq	(%rdi), %rax
	movl	%ebp, 4(%rdi)
	jmp	.L573
	.p2align 4,,10
.L592:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L574
	.p2align 4,,10
.L591:
	movq	%rdi, %rcx
	call	_ZL23AddWindowToSortedBufferR8ImVectorIP11ImGuiWindowES1_
	jmp	.L582
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii
_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii:
.LFB978:
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
	movq	16(%rcx), %rdi
	movslq	%edx, %rdx
	movslq	%r8d, %rbp
	leaq	(%rdi,%rdx,2), %r10
	leaq	(%r10,%rbp,2), %rbx
	movq	%r10, %r9
	testq	%rbx, %rbx
	setne	%sil
	xorl	%r11d, %r11d
.L594:
	cmpq	%r9, %rbx
	ja	.L604
	testb	%sil, %sil
	jne	.L595
.L604:
	movzwl	(%r9), %eax
	testw	%ax, %ax
	je	.L595
	addq	$2, %r9
	cmpl	$127, %eax
	ja	.L597
	addl	$1, %r11d
	cmpq	%r9, %rbx
	ja	.L604
	testb	%sil, %sil
	je	.L604
.L595:
	subl	%r11d, 56(%rcx)
	addq	%rbp, %rdx
	subl	%r8d, 60(%rcx)
	leaq	(%rdi,%rdx,2), %rax
	leaq	2(%rax), %rdx
	movzwl	(%rax), %eax
	testw	%ax, %ax
	je	.L602
	.p2align 4,,10
.L603:
	addq	$2, %r10
	addq	$2, %rdx
	movw	%ax, -2(%r10)
	movzwl	-2(%rdx), %eax
	testw	%ax, %ax
	jne	.L603
.L602:
	xorl	%eax, %eax
	movw	%ax, (%r10)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L597:
	cmpl	$2047, %eax
	ja	.L599
	addl	$2, %r11d
	jmp	.L594
	.p2align 4,,10
.L599:
	leal	-56320(%rax), %r12d
	cmpl	$1023, %r12d
	jbe	.L594
	subl	$55296, %eax
	cmpl	$1024, %eax
	adcl	$3, %r11d
	jmp	.L594
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL21stb_text_locate_coordEP18ImGuiTextEditStateff;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL21stb_text_locate_coordEP18ImGuiTextEditStateff
_ZN8ImGuiStbL21stb_text_locate_coordEP18ImGuiTextEditStateff:
.LFB980:
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
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	movaps	%xmm8, 80(%rsp)
	.seh_savexmm	%xmm8, 80
	.seh_endprologue
	movl	60(%rcx), %eax
	testl	%eax, %eax
	movq	%rcx, %rbp
	jle	.L615
	movq	16(%rcx), %r11
	movslq	%eax, %rdx
	xorl	%esi, %esi
	pxor	%xmm4, %xmm4
	pxor	%xmm5, %xmm5
	leaq	(%r11,%rdx,2), %r10
	movq	GImGui(%rip), %rdx
	movq	5936(%rdx), %r9
	movss	5944(%rdx), %xmm6
	movaps	%xmm6, %xmm7
	divss	(%r9), %xmm7
	.p2align 4,,10
.L629:
	movslq	%esi, %rdi
	addq	%rdi, %rdi
	leaq	(%r11,%rdi), %rbx
	cmpq	%r10, %rbx
	jnb	.L641
	movzwl	(%rbx), %ecx
	leaq	2(%rbx), %rdx
	pxor	%xmm0, %xmm0
	cmpl	$10, %ecx
	movq	%rcx, %r8
	je	.L660
.L618:
	cmpl	$13, %ecx
	je	.L622
	cmpl	32(%r9), %ecx
	jge	.L623
	movq	40(%r9), %rcx
	movss	(%rcx,%r8,4), %xmm3
.L624:
	mulss	%xmm7, %xmm3
	addss	%xmm3, %xmm0
.L622:
	cmpq	%r10, %rdx
	jnb	.L620
	addq	$2, %rdx
	movzwl	-2(%rdx), %ecx
	cmpl	$10, %ecx
	movq	%rcx, %r8
	jne	.L618
	subq	%rbx, %rdx
	movaps	%xmm6, %xmm3
	movq	%rdx, %rbx
	addss	%xmm4, %xmm3
	sarq	%rbx
	ucomiss	%xmm0, %xmm4
	jnb	.L643
	movaps	%xmm4, %xmm8
	maxss	%xmm0, %xmm8
	movaps	%xmm8, %xmm0
.L619:
	ucomiss	%xmm4, %xmm3
	jp	.L625
	je	.L617
	.p2align 4,,10
.L625:
	testl	%ebx, %ebx
	jle	.L615
	testl	%esi, %esi
	jne	.L627
	movaps	%xmm5, %xmm8
	addss	%xmm4, %xmm8
	ucomiss	%xmm2, %xmm8
	ja	.L646
.L627:
	addss	%xmm3, %xmm5
	ucomiss	%xmm2, %xmm5
	ja	.L628
	addl	%ebx, %esi
	cmpl	%eax, %esi
	jl	.L629
.L615:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L620:
	subq	%rbx, %rdx
	movq	%rdx, %rbx
	sarq	%rbx
	ucomiss	%xmm4, %xmm0
	jbe	.L661
	pxor	%xmm3, %xmm3
.L617:
	addss	%xmm6, %xmm3
	jmp	.L625
	.p2align 4,,10
.L623:
	movss	72(%r9), %xmm3
	jmp	.L624
	.p2align 4,,10
.L660:
	movaps	%xmm6, %xmm3
	movl	$1, %ebx
	addss	%xmm4, %xmm3
	jmp	.L619
	.p2align 4,,10
.L643:
	pxor	%xmm0, %xmm0
	jmp	.L619
	.p2align 4,,10
.L641:
	pxor	%xmm3, %xmm3
	xorl	%ebx, %ebx
	pxor	%xmm0, %xmm0
	addss	%xmm6, %xmm3
	jmp	.L625
	.p2align 4,,10
.L628:
	ucomiss	%xmm1, %xmm4
	movl	%esi, %eax
	ja	.L615
	ucomiss	%xmm1, %xmm0
	jbe	.L630
	xorl	%r14d, %r14d
	pxor	%xmm6, %xmm6
	movss	.LC1(%rip), %xmm7
	leaq	.LC2(%rip), %r13
	leaq	.LC3(%rip), %r12
	jmp	.L638
	.p2align 4,,10
.L664:
	movq	40(%rcx), %r9
	movss	(%r9,%rdx,4), %xmm2
.L635:
	movss	5944(%r8), %xmm0
	divss	(%rcx), %xmm0
	mulss	%xmm2, %xmm0
.L633:
	movaps	%xmm0, %xmm2
	addss	%xmm6, %xmm2
	ucomiss	%xmm1, %xmm2
	ja	.L662
	addq	$1, %r14
	addq	$2, %rdi
	movaps	%xmm2, %xmm6
	cmpl	%r14d, %ebx
	jle	.L630
.L638:
	leal	(%rsi,%r14), %eax
	cmpl	%eax, 8(%rbp)
	jle	.L663
.L632:
	movzwl	(%r11,%rdi), %edx
	movaps	%xmm7, %xmm0
	cmpw	$10, %dx
	je	.L633
	movq	GImGui(%rip), %r8
	movzwl	%dx, %r9d
	movq	5936(%r8), %rcx
	cmpl	32(%rcx), %r9d
	jl	.L664
	movss	72(%rcx), %xmm2
	jmp	.L635
	.p2align 4,,10
.L663:
	movl	$856, %r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	movl	%eax, 40(%rsp)
	movss	%xmm1, 44(%rsp)
	call	_assert
	movq	16(%rbp), %r11
	movss	44(%rsp), %xmm1
	movl	40(%rsp), %eax
	jmp	.L632
	.p2align 4,,10
.L646:
	xorl	%eax, %eax
	jmp	.L615
.L630:
	leal	(%rsi,%rbx), %eax
	leal	-1(%rax), %ebx
	cmpl	8(%rbp), %ebx
	jge	.L665
.L639:
	movslq	%ebx, %rdx
	cmpw	$10, (%r11,%rdx,2)
	cmove	%ebx, %eax
	jmp	.L615
.L665:
	movl	$857, %r8d
	movl	%eax, 40(%rsp)
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	call	_assert
	movq	16(%rbp), %r11
	movl	40(%rsp), %eax
	jmp	.L639
.L662:
	mulss	.LC17(%rip), %xmm0
	xorl	%edx, %edx
	addss	%xmm6, %xmm0
	ucomiss	%xmm1, %xmm0
	setbe	%dl
	addl	%edx, %eax
	jmp	.L615
.L661:
	movaps	%xmm4, %xmm0
	movaps	%xmm4, %xmm3
	ja	.L617
	jmp	.L619
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui11GetColorU32Eif.constprop.144;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetColorU32Eif.constprop.144
_ZN5ImGui11GetColorU32Eif.constprop.144:
.LFB6602:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	pxor	%xmm1, %xmm1
	movss	5120(%rdx), %xmm0
	movslq	%ecx, %rax
	addq	$328, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm4
	movss	4(%rax), %xmm3
	movss	8(%rax), %xmm2
	mulss	12(%rax), %xmm0
	xorl	%eax, %eax
	ucomiss	%xmm4, %xmm1
	ja	.L667
	ucomiss	.LC18(%rip), %xmm4
	movl	$255, %eax
	jbe	.L685
.L667:
	ucomiss	%xmm3, %xmm1
	ja	.L668
	ucomiss	.LC18(%rip), %xmm3
	jbe	.L682
	orb	$-1, %ah
.L668:
	ucomiss	%xmm2, %xmm1
	ja	.L671
	ucomiss	.LC18(%rip), %xmm2
	jbe	.L683
	orl	$16711680, %eax
.L671:
	ucomiss	%xmm0, %xmm1
	ja	.L666
	ucomiss	.LC18(%rip), %xmm0
	jbe	.L684
	orl	$-16777216, %eax
.L666:
	ret
	.p2align 4,,10
.L684:
	mulss	.LC19(%rip), %xmm0
	addss	.LC17(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	sall	$24, %edx
	orl	%edx, %eax
	ret
	.p2align 4,,10
.L685:
	mulss	.LC19(%rip), %xmm4
	addss	.LC17(%rip), %xmm4
	cvttss2si	%xmm4, %eax
	jmp	.L667
	.p2align 4,,10
.L682:
	mulss	.LC19(%rip), %xmm3
	addss	.LC17(%rip), %xmm3
	cvttss2si	%xmm3, %edx
	sall	$8, %edx
	orl	%edx, %eax
	jmp	.L668
	.p2align 4,,10
.L683:
	mulss	.LC19(%rip), %xmm2
	addss	.LC17(%rip), %xmm2
	cvttss2si	%xmm2, %edx
	sall	$16, %edx
	orl	%edx, %eax
	jmp	.L671
	.seh_endproc
	.section	.text$_ZN10ImDrawListC1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawListC1Ev
	.def	_ZN10ImDrawListC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawListC1Ev
_ZN10ImDrawListC1Ev:
.LFB145:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	$0, 80(%rcx)
	movq	%rcx, %rbx
	movq	$0, 88(%rcx)
	movq	$0, 96(%rcx)
	movq	$0, 104(%rcx)
	movq	$0, 112(%rcx)
	movq	$0, 120(%rcx)
	movq	$0, 136(%rcx)
	movq	$0, 144(%rcx)
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movq	$0, 48(%rcx)
.LEHB0:
	call	_ZN10ImDrawList5ClearEv
.LEHE0:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L695:
	movq	144(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L688
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L688:
	movq	120(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L689
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L689:
	movq	104(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L690
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L690:
	movq	88(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L691
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L691:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L692
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L692:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L693
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L693:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L694
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L694:
	movq	%rsi, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA145:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE145-.LLSDACSB145
.LLSDACSB145:
	.uleb128 .LEHB0-.LFB145
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L695-.LFB145
	.uleb128 0
	.uleb128 .LEHB1-.LFB145
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE145:
	.section	.text$_ZN10ImDrawListC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN10ImDrawListD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawListD1Ev
	.def	_ZN10ImDrawListD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawListD1Ev
_ZN10ImDrawListD1Ev:
.LFB148:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZN10ImDrawList15ClearFreeMemoryEv
	movq	144(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L719
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L719:
	movq	120(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L720
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L720:
	movq	104(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L721
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L721:
	movq	88(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L722
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L722:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L723
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L723:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L724
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L724:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L718
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	movq	240(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	rex.W jmp	*%rax
	.p2align 4,,10
.L718:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA148:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE148-.LLSDACSB148
.LLSDACSB148:
.LLSDACSE148:
	.section	.text$_ZN10ImDrawListD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_Z6sscanfPKcS0_z,"x"
	.linkonce discard
	.p2align 4,,15
	.globl	_Z6sscanfPKcS0_z
	.def	_Z6sscanfPKcS0_z;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6sscanfPKcS0_z
_Z6sscanfPKcS0_z:
.LFB163:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%r8, 80(%rsp)
	leaq	80(%rsp), %r8
	movq	%r9, 88(%rsp)
	movq	%r8, 40(%rsp)
	call	__mingw_vsscanf
	addq	$56, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC20:
	.ascii "%d\0"
.LC21:
	.ascii "%f\0"
	.text
	.p2align 4,,15
	.def	_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_
_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_:
.LFB921:
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
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rcx
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	movl	%eax, %esi
	jne	.L793
	.p2align 4,,10
.L788:
	addq	$1, %rbx
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	movl	%eax, %esi
	je	.L788
.L793:
	cmpl	$32, %eax
	je	.L788
	leal	-42(%rsi), %eax
	cmpb	$1, %al
	jbe	.L783
	cmpb	$47, %sil
	je	.L783
	movl	%esi, %eax
	xorl	%esi, %esi
.L749:
	xorl	%edi, %edi
	testb	%al, %al
	je	.L745
	testl	%r8d, %r8d
	jne	.L754
	movl	(%r9), %ebp
	leaq	.LC20(%rip), %rax
	cmpq	$0, 160(%rsp)
	cmovne	160(%rsp), %rax
	testb	%sil, %sil
	movq	%rax, 160(%rsp)
	movl	%ebp, 56(%rsp)
	jne	.L796
	movl	$0x00000000, 60(%rsp)
	leaq	56(%rsp), %r12
.L763:
	movq	160(%rsp), %rdx
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%r9, 40(%rsp)
	call	_Z6sscanfPKcS0_z
	movq	40(%rsp), %r9
	cmpl	$1, %eax
	je	.L767
.L795:
	movl	(%r9), %eax
.L760:
	cmpl	%eax, %ebp
	setne	%dil
.L745:
	movaps	64(%rsp), %xmm6
	movl	%edi, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L783:
	movsbl	1(%rbx), %edx
	leaq	1(%rbx), %r10
	cmpl	$9, %edx
	movl	%edx, %eax
	je	.L784
	cmpl	$32, %edx
	movq	%r10, %rbx
	jne	.L749
.L784:
	movq	%r10, %rbx
	.p2align 4,,10
.L789:
	addq	$1, %rbx
	movsbl	(%rbx), %edx
	cmpl	$32, %edx
	movl	%edx, %eax
	je	.L789
	cmpl	$9, %edx
	je	.L789
	jmp	.L749
	.p2align 4,,10
.L754:
	cmpl	$1, %r8d
	jne	.L745
	movss	(%r9), %xmm6
	testb	%sil, %sil
	movq	%r9, 40(%rsp)
	movss	%xmm6, 56(%rsp)
	je	.L768
	leaq	56(%rsp), %r8
	leaq	.LC21(%rip), %rdx
	call	_Z6sscanfPKcS0_z
	movq	40(%rsp), %r9
	testl	%eax, %eax
	jle	.L771
	leaq	60(%rsp), %r8
	movq	%rbx, %rcx
	movq	%r9, 40(%rsp)
	leaq	.LC21(%rip), %rdx
	movl	$0x00000000, 60(%rsp)
	call	_Z6sscanfPKcS0_z
	testl	%eax, %eax
	jle	.L771
	cmpb	$43, %sil
	movss	60(%rsp), %xmm0
	movq	40(%rsp), %r9
	jne	.L772
	addss	56(%rsp), %xmm0
	movss	%xmm0, (%r9)
.L773:
	ucomiss	%xmm0, %xmm6
	movl	$1, %eax
	setp	%dil
	cmovne	%eax, %edi
	jmp	.L745
	.p2align 4,,10
.L796:
	leaq	56(%rsp), %r12
	movq	%rax, %rdx
	movq	%r9, 40(%rsp)
	movq	%r12, %r8
	call	_Z6sscanfPKcS0_z
	testl	%eax, %eax
	jle	.L745
	cmpb	$43, %sil
	movl	$0x00000000, 60(%rsp)
	movq	40(%rsp), %r9
	jne	.L758
	leaq	60(%rsp), %r8
	movq	%rbx, %rcx
	leaq	.LC21(%rip), %rdx
	call	_Z6sscanfPKcS0_z
	movq	40(%rsp), %r9
	cmpl	$1, %eax
	jne	.L795
	pxor	%xmm0, %xmm0
	cvtsi2ss	56(%rsp), %xmm0
	addss	60(%rsp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, (%r9)
	jmp	.L760
.L768:
	leaq	60(%rsp), %r8
	movq	%rbx, %rcx
	movl	$0x00000000, 60(%rsp)
	leaq	.LC21(%rip), %rdx
	call	_Z6sscanfPKcS0_z
	movss	60(%rsp), %xmm0
	testl	%eax, %eax
	movq	40(%rsp), %r9
	jg	.L775
.L771:
	xorl	%edi, %edi
	jmp	.L745
.L775:
	movss	%xmm0, (%r9)
	jmp	.L773
.L758:
	cmpb	$42, %sil
	je	.L797
	cmpb	$47, %sil
	jne	.L763
	leaq	60(%rsp), %r8
	movq	%rbx, %rcx
	movq	%r9, 40(%rsp)
	leaq	.LC21(%rip), %rdx
	call	_Z6sscanfPKcS0_z
	movq	40(%rsp), %r9
	cmpl	$1, %eax
	jne	.L795
	movss	60(%rsp), %xmm1
	ucomiss	.LC0(%rip), %xmm1
	jp	.L785
	je	.L795
.L785:
	pxor	%xmm0, %xmm0
	cvtsi2ss	56(%rsp), %xmm0
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, (%r9)
	jmp	.L760
.L797:
	leaq	60(%rsp), %r8
	movq	%rbx, %rcx
	movq	%r9, 40(%rsp)
	leaq	.LC21(%rip), %rdx
	call	_Z6sscanfPKcS0_z
	movq	40(%rsp), %r9
	cmpl	$1, %eax
	jne	.L795
	pxor	%xmm0, %xmm0
	cvtsi2ss	56(%rsp), %xmm0
	mulss	60(%rsp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, (%r9)
	jmp	.L760
.L767:
	movl	56(%rsp), %eax
	movl	%eax, (%r9)
	jmp	.L760
.L772:
	cmpb	$42, %sil
	jne	.L774
	mulss	56(%rsp), %xmm0
	movss	%xmm0, (%r9)
	jmp	.L773
.L774:
	cmpb	$47, %sil
	jne	.L775
	ucomiss	.LC0(%rip), %xmm0
	jp	.L776
	jne	.L776
	movss	(%r9), %xmm0
	jmp	.L773
.L776:
	movss	56(%rsp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm1, (%r9)
	jmp	.L773
	.seh_endproc
	.section	.text$_Z7fprintfP6_iobufPKcz,"x"
	.linkonce discard
	.p2align 4,,15
	.globl	_Z7fprintfP6_iobufPKcz
	.def	_Z7fprintfP6_iobufPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7fprintfP6_iobufPKcz
_Z7fprintfP6_iobufPKcz:
.LFB169:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%r8, 80(%rsp)
	leaq	80(%rsp), %r8
	movq	%r9, 88(%rsp)
	movq	%r8, 40(%rsp)
	call	__mingw_vfprintf
	addq	$56, %rsp
	ret
	.seh_endproc
	.section	.text$_ZN18ImGuiTextEditStateD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN18ImGuiTextEditStateD1Ev
	.def	_ZN18ImGuiTextEditStateD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18ImGuiTextEditStateD1Ev
_ZN18ImGuiTextEditStateD1Ev:
.LFB538:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	48(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L800
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L800:
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L801
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L801:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L799
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	movq	240(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	rex.W jmp	*%rax
	.p2align 4,,10
.L799:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA538:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE538-.LLSDACSB538
.LLSDACSB538:
.LLSDACSE538:
	.section	.text$_ZN18ImGuiTextEditStateD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImGuiStyleC2Ev
	.def	_ZN10ImGuiStyleC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImGuiStyleC2Ev
_ZN10ImGuiStyleC2Ev:
.LFB559:
	.seh_endprologue
	leaq	128(%rcx), %rax
	leaq	816(%rcx), %rdx
	.p2align 4,,10
.L810:
	movq	$0, (%rax)
	addq	$16, %rax
	movq	$0, -8(%rax)
	cmpq	%rax, %rdx
	jne	.L810
	movaps	.LC22(%rip), %xmm0
	movq	$0, 64(%rcx)
	movb	$1, 120(%rcx)
	movlps	%xmm0, (%rcx)
	movhps	%xmm0, 8(%rcx)
	movaps	.LC23(%rip), %xmm0
	movb	$1, 121(%rcx)
	movlps	%xmm0, 16(%rcx)
	movhps	%xmm0, 24(%rcx)
	movaps	.LC24(%rip), %xmm0
	movlps	%xmm0, 32(%rcx)
	movhps	%xmm0, 40(%rcx)
	movaps	.LC25(%rip), %xmm0
	movlps	%xmm0, 48(%rcx)
	movhps	%xmm0, 56(%rcx)
	movaps	.LC26(%rip), %xmm0
	movhps	%xmm0, 72(%rcx)
	movaps	.LC27(%rip), %xmm0
	movlps	%xmm0, 80(%rcx)
	movhps	%xmm0, 88(%rcx)
	movaps	.LC28(%rip), %xmm0
	movlps	%xmm0, 96(%rcx)
	movhps	%xmm0, 104(%rcx)
	movss	.LC29(%rip), %xmm0
	movss	%xmm0, 112(%rcx)
	movss	%xmm0, 116(%rcx)
	movaps	.LC30(%rip), %xmm0
	movlps	%xmm0, 124(%rcx)
	movhps	%xmm0, 132(%rcx)
	movaps	.LC31(%rip), %xmm0
	movlps	%xmm0, 140(%rcx)
	movhps	%xmm0, 148(%rcx)
	movss	.LC32(%rip), %xmm0
	movlps	%xmm0, 156(%rcx)
	movss	.LC33(%rip), %xmm0
	movlps	%xmm0, 172(%rcx)
	movaps	.LC34(%rip), %xmm0
	movq	$0, 164(%rcx)
	movlps	%xmm0, 188(%rcx)
	movhps	%xmm0, 196(%rcx)
	movaps	.LC35(%rip), %xmm0
	movq	$0, 180(%rcx)
	movlps	%xmm0, 204(%rcx)
	movhps	%xmm0, 212(%rcx)
	movss	.LC36(%rip), %xmm0
	movlps	%xmm0, 220(%rcx)
	movaps	.LC37(%rip), %xmm0
	movq	$0, 228(%rcx)
	movlps	%xmm0, 236(%rcx)
	movhps	%xmm0, 244(%rcx)
	movaps	.LC38(%rip), %xmm0
	movlps	%xmm0, 252(%rcx)
	movhps	%xmm0, 260(%rcx)
	movaps	.LC39(%rip), %xmm0
	movlps	%xmm0, 268(%rcx)
	movhps	%xmm0, 276(%rcx)
	movaps	.LC40(%rip), %xmm0
	movlps	%xmm0, 284(%rcx)
	movhps	%xmm0, 292(%rcx)
	movaps	.LC41(%rip), %xmm0
	movlps	%xmm0, 300(%rcx)
	movhps	%xmm0, 308(%rcx)
	movaps	.LC42(%rip), %xmm0
	movlps	%xmm0, 316(%rcx)
	movhps	%xmm0, 324(%rcx)
	movaps	.LC43(%rip), %xmm0
	movlps	%xmm0, 332(%rcx)
	movhps	%xmm0, 340(%rcx)
	movaps	.LC44(%rip), %xmm0
	movlps	%xmm0, 348(%rcx)
	movhps	%xmm0, 356(%rcx)
	movaps	.LC45(%rip), %xmm0
	movlps	%xmm0, 364(%rcx)
	movhps	%xmm0, 372(%rcx)
	movaps	.LC46(%rip), %xmm0
	movlps	%xmm0, 380(%rcx)
	movhps	%xmm0, 388(%rcx)
	movaps	.LC47(%rip), %xmm0
	movlps	%xmm0, 396(%rcx)
	movhps	%xmm0, 404(%rcx)
	movaps	.LC48(%rip), %xmm0
	movlps	%xmm0, 412(%rcx)
	movhps	%xmm0, 420(%rcx)
	movaps	.LC49(%rip), %xmm0
	movlps	%xmm0, 428(%rcx)
	movhps	%xmm0, 436(%rcx)
	movaps	.LC50(%rip), %xmm0
	movlps	%xmm0, 444(%rcx)
	movhps	%xmm0, 452(%rcx)
	movaps	.LC51(%rip), %xmm0
	movlps	%xmm0, 460(%rcx)
	movhps	%xmm0, 468(%rcx)
	movaps	.LC52(%rip), %xmm0
	movlps	%xmm0, 476(%rcx)
	movhps	%xmm0, 484(%rcx)
	movaps	.LC53(%rip), %xmm0
	movlps	%xmm0, 492(%rcx)
	movhps	%xmm0, 500(%rcx)
	movaps	.LC54(%rip), %xmm0
	movaps	.LC62(%rip), %xmm1
	movlps	%xmm0, 508(%rcx)
	movhps	%xmm0, 516(%rcx)
	movaps	.LC55(%rip), %xmm0
	movlps	%xmm1, 636(%rcx)
	movlps	%xmm0, 524(%rcx)
	movhps	%xmm0, 532(%rcx)
	movaps	.LC56(%rip), %xmm0
	movhps	%xmm1, 644(%rcx)
	movaps	.LC63(%rip), %xmm1
	movlps	%xmm0, 540(%rcx)
	movhps	%xmm0, 548(%rcx)
	movaps	.LC57(%rip), %xmm0
	movlps	%xmm1, 652(%rcx)
	movlps	%xmm0, 556(%rcx)
	movhps	%xmm0, 564(%rcx)
	movaps	.LC58(%rip), %xmm0
	movhps	%xmm1, 660(%rcx)
	movaps	.LC64(%rip), %xmm1
	movlps	%xmm0, 572(%rcx)
	movhps	%xmm0, 580(%rcx)
	movaps	.LC59(%rip), %xmm0
	movlps	%xmm1, 668(%rcx)
	movlps	%xmm0, 588(%rcx)
	movhps	%xmm0, 596(%rcx)
	movaps	.LC60(%rip), %xmm0
	movlps	%xmm0, 604(%rcx)
	movhps	%xmm0, 612(%rcx)
	movaps	.LC61(%rip), %xmm0
	movlps	%xmm0, 620(%rcx)
	movhps	%xmm0, 628(%rcx)
	movhps	%xmm1, 676(%rcx)
	movaps	.LC65(%rip), %xmm1
	movlps	%xmm0, 716(%rcx)
	movhps	%xmm0, 724(%rcx)
	movaps	.LC67(%rip), %xmm0
	movlps	%xmm1, 684(%rcx)
	movlps	%xmm0, 732(%rcx)
	movhps	%xmm0, 740(%rcx)
	movlps	%xmm0, 748(%rcx)
	movhps	%xmm0, 756(%rcx)
	movaps	.LC68(%rip), %xmm0
	movhps	%xmm1, 692(%rcx)
	movaps	.LC66(%rip), %xmm1
	movlps	%xmm0, 764(%rcx)
	movhps	%xmm0, 772(%rcx)
	movaps	.LC69(%rip), %xmm0
	movlps	%xmm1, 700(%rcx)
	movlps	%xmm0, 780(%rcx)
	movhps	%xmm0, 788(%rcx)
	movaps	.LC70(%rip), %xmm0
	movhps	%xmm1, 708(%rcx)
	movlps	%xmm0, 796(%rcx)
	movhps	%xmm0, 804(%rcx)
	movl	$0x3eb33333, 812(%rcx)
	ret
	.seh_endproc
	.globl	_ZN10ImGuiStyleC1Ev
	.def	_ZN10ImGuiStyleC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN10ImGuiStyleC1Ev,_ZN10ImGuiStyleC2Ev
	.section .rdata,"dr"
.LC73:
	.ascii "imgui.ini\0"
.LC74:
	.ascii "imgui_log.txt\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7ImGuiIOC2Ev
	.def	_ZN7ImGuiIOC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN7ImGuiIOC2Ev
_ZN7ImGuiIOC2Ev:
.LFB562:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	.LC73(%rip), %rsi
	xorl	%edx, %edx
	movl	$5112, %r8d
	movq	$0, 876(%rcx)
	movq	$0, 884(%rcx)
	movq	$0, 892(%rcx)
	movq	$0, 900(%rcx)
	movl	$0x00000000, 912(%rcx)
	movl	$0x00000000, 908(%rcx)
	call	memset
	movaps	.LC72(%rip), %xmm0
	movq	%rax, %r9
	movss	.LC1(%rip), %xmm1
	movlps	%xmm0, (%rax)
	movhps	%xmm0, 8(%rax)
	leaq	.LC74(%rip), %rax
	movq	%rsi, %xmm0
	movq	%rax, %xmm2
	movl	$0x3f800000, 144(%r9)
	leaq	_ZL19GImDefaultFontAtlas(%rip), %rax
	punpcklqdq	%xmm2, %xmm0
	movups	%xmm0, 16(%r9)
	movaps	.LC75(%rip), %xmm0
	movq	%rax, 136(%r9)
	movabsq	$4575657222473777152, %rax
	movq	%rax, 160(%r9)
	movabsq	$-4647714812233515008, %rax
	movq	%rax, 256(%r9)
	movq	%rax, 860(%r9)
	movabsq	$4665729215006087578, %rax
	movq	%rax, 32(%r9)
	leaq	3060(%r9), %rax
	shrq	$2, %rax
	movl	$1086324736, 40(%r9)
	negq	%rax
	movlps	%xmm0, 972(%r9)
	andl	$3, %eax
	movhps	%xmm0, 980(%r9)
	movlps	%xmm0, 952(%r9)
	movhps	%xmm0, 960(%r9)
	movss	%xmm1, 988(%r9)
	movss	%xmm1, 968(%r9)
	je	.L817
	movss	%xmm1, 3060(%r9)
	cmpl	$1, %eax
	movss	%xmm1, 1012(%r9)
	je	.L818
	movss	%xmm1, 3064(%r9)
	cmpl	$2, %eax
	movss	%xmm1, 1016(%r9)
	je	.L819
	movss	%xmm1, 3068(%r9)
	movl	$509, %esi
	movl	$3, %r11d
	movss	%xmm1, 1020(%r9)
	jmp	.L813
.L817:
	movl	$512, %esi
	xorl	%r11d, %r11d
.L813:
	movl	$512, %ebx
	xorl	%edx, %edx
	subl	%eax, %ebx
	movl	%eax, %eax
	leaq	3060(,%rax,4), %rax
	movl	%ebx, %r10d
	leaq	(%r9,%rax), %r8
	shrl	$2, %r10d
	leaq	-2048(%r9,%rax), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
.L815:
	addl	$1, %edx
	movaps	%xmm0, (%r8,%rax)
	movlps	%xmm0, (%rcx,%rax)
	movhps	%xmm0, 8(%rcx,%rax)
	addq	$16, %rax
	cmpl	%r10d, %edx
	jb	.L815
	movl	%ebx, %edx
	andl	$-4, %edx
	leal	(%rdx,%r11), %eax
	subl	%edx, %esi
	cmpl	%ebx, %edx
	je	.L816
	movslq	%eax, %rdx
	cmpl	$1, %esi
	leaq	(%r9,%rdx,4), %rdx
	movss	%xmm1, 3060(%rdx)
	movss	%xmm1, 1012(%rdx)
	leal	1(%rax), %edx
	je	.L816
	movslq	%edx, %rdx
	addl	$2, %eax
	cmpl	$2, %esi
	leaq	(%r9,%rdx,4), %rdx
	movss	%xmm1, 3060(%rdx)
	movss	%xmm1, 1012(%rdx)
	je	.L816
	cltq
	leaq	(%r9,%rax,4), %rax
	movss	%xmm1, 3060(%rax)
	movss	%xmm1, 1012(%rax)
.L816:
	movq	$-1, %rax
	movq	$0, 128(%r9)
	movq	%rax, 44(%r9)
	movq	%rax, 52(%r9)
	movq	%rax, 60(%r9)
	movq	%rax, 68(%r9)
	movq	%rax, 76(%r9)
	movq	%rax, 84(%r9)
	movq	%rax, 92(%r9)
	movq	%rax, 100(%r9)
	movq	%rax, 108(%r9)
	movl	%eax, 116(%r9)
	movabsq	$4417130516432551936, %rax
	movq	%rax, 120(%r9)
	movq	.refptr.malloc(%rip), %rax
	movq	$0, 192(%r9)
	movq	$0, 216(%r9)
	movq	%rax, 224(%r9)
	movq	.refptr.free(%rip), %rax
	movq	%rax, 232(%r9)
	leaq	_ZL30GetClipboardTextFn_DefaultImplPv(%rip), %rax
	movq	%rax, 200(%r9)
	leaq	_ZL30SetClipboardTextFn_DefaultImplPvPKc(%rip), %rax
	movq	%rax, 208(%r9)
	leaq	_ZL34ImeSetInputScreenPosFn_DefaultImplii(%rip), %rax
	movq	%rax, 240(%r9)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L818:
	movl	$511, %esi
	movl	$1, %r11d
	jmp	.L813
.L819:
	movl	$510, %esi
	movl	$2, %r11d
	jmp	.L813
	.seh_endproc
	.globl	_ZN7ImGuiIOC1Ev
	.def	_ZN7ImGuiIOC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN7ImGuiIOC1Ev,_ZN7ImGuiIOC2Ev
	.section .rdata,"dr"
.LC79:
	.ascii "##Overlay\0"
	.section	.text$_ZN12ImGuiContextC1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiContextC1Ev
	.def	_ZN12ImGuiContextC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiContextC1Ev
_ZN12ImGuiContextC1Ev:
.LFB546:
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
	leaq	8(%rcx), %rcx
	call	_ZN7ImGuiIOC1Ev
	leaq	5120(%rbx), %rcx
	call	_ZN10ImGuiStyleC1Ev
	leaq	6392(%rbx), %rsi
	movabsq	$9187343237679939583, %rax
	movq	$0, 5952(%rbx)
	movq	%rax, 6260(%rbx)
	movq	%rsi, %rcx
	movabsq	$-36028797027352577, %rax
	movq	$0, 5976(%rbx)
	leaq	6336(%rbx), %r12
	movq	$0, 5984(%rbx)
	movq	$0, 5992(%rbx)
	movq	$0, 6000(%rbx)
	movq	$0, 6016(%rbx)
	movq	$0, 6024(%rbx)
	movq	$0, 6080(%rbx)
	movq	$0, 6112(%rbx)
	movq	$0, 6120(%rbx)
	movq	$0, 6136(%rbx)
	movq	$0, 6144(%rbx)
	movq	$0, 6152(%rbx)
	movq	$0, 6160(%rbx)
	movq	$0, 6168(%rbx)
	movq	$0, 6176(%rbx)
	movq	$0, 6184(%rbx)
	movq	$0, 6192(%rbx)
	movq	$0, 6200(%rbx)
	movq	$0, 6208(%rbx)
	movq	$0, 6216(%rbx)
	movq	$0, 6224(%rbx)
	movq	$0, 6232(%rbx)
	movq	%rax, 6268(%rbx)
	movb	$0, 6304(%rbx)
	movq	$0, 6312(%rbx)
	movq	$0, 6320(%rbx)
	movl	$0, 6328(%rbx)
	movq	$0, 6336(%rbx)
	movq	$0, 6344(%rbx)
	movq	$0, 6352(%rbx)
	movq	$0, 6360(%rbx)
	movq	$0, 6368(%rbx)
	movq	$0, 6376(%rbx)
.LEHB2:
	call	_ZN10ImDrawListC1Ev
.LEHE2:
	leaq	6912(%rbx), %rdi
	xorl	%edx, %edx
	movq	$0, 6552(%rbx)
	movl	$3304, %r8d
	movq	$0, 6560(%rbx)
	movq	%rdi, %rcx
	movq	$0, 6568(%rbx)
	leaq	6548(%rbx), %rbp
	movq	$0, 6576(%rbx)
	movq	$0, 6584(%rbx)
	movq	$0, 6592(%rbx)
	movq	$0, 6604(%rbx)
	movq	$0, 6612(%rbx)
	movq	$0, 6620(%rbx)
	movq	$0, 6628(%rbx)
	movq	$0, 6636(%rbx)
	movq	$0, 6644(%rbx)
	movq	$0, 6656(%rbx)
	movq	$0, 6664(%rbx)
	movq	$0, 6672(%rbx)
	movq	$0, 6680(%rbx)
	movq	$0, 6688(%rbx)
	movq	$0, 6696(%rbx)
	movq	$0, 6708(%rbx)
	movq	$0, 6716(%rbx)
	movq	$0, 6724(%rbx)
	movq	$0, 6732(%rbx)
	movq	$0, 6740(%rbx)
	movq	$0, 6748(%rbx)
	movq	$0, 6760(%rbx)
	movq	$0, 6768(%rbx)
	movq	$0, 6776(%rbx)
	movq	$0, 6784(%rbx)
	movq	$0, 6792(%rbx)
	movq	$0, 6800(%rbx)
	movq	$0, 6812(%rbx)
	movq	$0, 6820(%rbx)
	movq	$0, 6828(%rbx)
	movq	$0, 6836(%rbx)
	movq	$0, 6844(%rbx)
	movq	$0, 6852(%rbx)
	movq	$0, 6864(%rbx)
	movq	$0, 6872(%rbx)
	movq	$0, 6880(%rbx)
	movq	$0, 6888(%rbx)
	movq	$0, 6896(%rbx)
	movq	$0, 6904(%rbx)
	call	memset
	leaq	10216(%rbx), %rcx
.LEHB3:
	call	_ZN6ImFontC1Ev
.LEHE3:
	movss	.LC1(%rip), %xmm1
	movb	$0, (%rbx)
	xorl	%edx, %edx
	movq	%rbp, %rdi
	pxor	%xmm0, %xmm0
	movl	$1024, %r8d
	movups	%xmm0, 6032(%rbx)
	movq	$-1, %rsi
	movups	%xmm0, 6088(%rbx)
	pxor	%xmm0, %xmm0
	leaq	10384(%rbx), %rcx
	movups	%xmm0, 6244(%rbx)
	movaps	.LC76(%rip), %xmm0
	movss	%xmm1, 6080(%rbx)
	movss	%xmm1, 6084(%rbx)
	movlps	%xmm0, 6260(%rbx)
	movhps	%xmm0, 6268(%rbx)
	movl	$0, 10340(%rbx)
	movl	$0, 10336(%rbx)
	movq	$0, 10344(%rbx)
	movq	$0, 5936(%rbx)
	movq	$0, 5944(%rbx)
	movq	$0, 5952(%rbx)
	movq	$0, 5960(%rbx)
	movq	%rsi, 5968(%rbx)
	movq	$0, 6008(%rbx)
	movq	$0, 6048(%rbx)
	movl	$0, 6056(%rbx)
	movb	$0, 6060(%rbx)
	movq	$0, 6064(%rbx)
	movl	$0, 6072(%rbx)
	movb	$0, 6076(%rbx)
	movb	$0, 6077(%rbx)
	movb	$0, 6078(%rbx)
	movl	$0, 6104(%rbx)
	movl	$0x00000000, 6128(%rbx)
	movq	$0, 6216(%rbx)
	movq	$0, 6224(%rbx)
	movb	$0, 6240(%rbx)
	movq	$0, 6280(%rbx)
	movaps	.LC77(%rip), %xmm0
	movq	$0, 6288(%rbx)
	movhps	%xmm0, 10360(%rbx)
	movaps	.LC78(%rip), %xmm0
	movb	$0, 6296(%rbx)
	movb	$0, 6297(%rbx)
	movb	$0, 6298(%rbx)
	movl	$0, 6300(%rbx)
	movl	$0, 10328(%rbx)
	movq	$0, 10352(%rbx)
	movlps	%xmm0, 10368(%rbx)
	movq	$0, 10376(%rbx)
	call	memset
	movl	$45, %ecx
	movl	$3073, %r8d
	movabsq	$-4647714812233515008, %rax
	movq	%rax, 11424(%rbx)
	movabsq	$8589934592, %rdx
	movq	%rax, 11416(%rbx)
	leaq	.LC79(%rip), %rax
	movq	%rax, 6440(%rbx)
	xorl	%eax, %eax
	movq	$0, 11408(%rbx)
	movl	$0x00000000, 6384(%rbx)
	movl	$0, 6544(%rbx)
	rep stosq
	movl	$60, %ecx
	movl	$0, (%rdi)
	movq	%rdx, 11456(%rbx)
	leaq	11464(%rbx), %rdx
	movq	%rdx, %rdi
	xorl	%edx, %edx
	movb	$0, 11432(%rbx)
	movq	$0, 11440(%rbx)
	movq	$0, 11448(%rbx)
	rep stosq
	leaq	11960(%rbx), %rcx
	movq	$0, 11944(%rbx)
	movq	%rsi, 11952(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	memset
.L842:
	movq	%rax, %rbp
.L829:
	leaq	6384(%rbx), %rdi
.L832:
	cmpq	%r12, %rdi
	je	.L830
	subq	$16, %rdi
	movq	8(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L832
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
	jmp	.L832
.L843:
	movq	%rdi, %rcx
	movq	%rax, %rbp
	call	_ZN18ImGuiTextEditStateD1Ev
	movq	%rsi, %rcx
	call	_ZN10ImDrawListD1Ev
	jmp	.L829
.L830:
	movq	6208(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L833
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L833:
	movq	6192(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L834
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L834:
	movq	6176(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L835
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L835:
	movq	6160(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L836
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L836:
	movq	6144(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L837
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L837:
	movq	6120(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L838
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L838:
	movq	6024(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L839
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L839:
	movq	6000(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L840
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L840:
	movq	5984(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L841
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L841:
	movq	%rbp, %rcx
.LEHB4:
	call	_Unwind_Resume
	nop
.LEHE4:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA546:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE546-.LLSDACSB546
.LLSDACSB546:
	.uleb128 .LEHB2-.LFB546
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L842-.LFB546
	.uleb128 0
	.uleb128 .LEHB3-.LFB546
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L843-.LFB546
	.uleb128 0
	.uleb128 .LEHB4-.LFB546
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE546:
	.section	.text$_ZN12ImGuiContextC1Ev,"x"
	.linkonce discard
	.seh_endproc
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7ImGuiIO17AddInputCharacterEt
	.def	_ZN7ImGuiIO17AddInputCharacterEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN7ImGuiIO17AddInputCharacterEt
_ZN7ImGuiIO17AddInputCharacterEt:
.LFB564:
	.seh_endprologue
	cmpw	$0, 794(%rcx)
	leaq	796(%rcx), %rax
	je	.L878
	xorl	%r8d, %r8d
	jmp	.L876
	.p2align 4,,10
.L879:
	movl	%r9d, %r8d
.L876:
	leal	1(%r8), %r9d
	addq	$2, %rax
	cmpw	$0, -2(%rax)
	jne	.L879
	addl	$2, %r8d
	cmpl	$15, %r9d
	jle	.L875
	ret
	.p2align 4,,10
.L878:
	movl	$1, %r8d
	xorl	%r9d, %r9d
.L875:
	movslq	%r9d, %r9
	movslq	%r8d, %r8
	xorl	%eax, %eax
	movw	%dx, 794(%rcx,%r9,2)
	movw	%ax, 794(%rcx,%r8,2)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z19ImIsPointInTriangleRK6ImVec2S1_S1_S1_
	.def	_Z19ImIsPointInTriangleRK6ImVec2S1_S1_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z19ImIsPointInTriangleRK6ImVec2S1_S1_S1_
_Z19ImIsPointInTriangleRK6ImVec2S1_S1_S1_:
.LFB566:
	subq	$88, %rsp
	.seh_stackalloc	88
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
	.seh_endprologue
	movss	(%rcx), %xmm0
	movss	4(%r8), %xmm8
	movss	(%r9), %xmm2
	movaps	%xmm0, %xmm4
	movss	4(%r9), %xmm3
	movaps	%xmm8, %xmm5
	subss	%xmm2, %xmm4
	movss	(%r8), %xmm9
	subss	%xmm3, %xmm5
	movss	4(%rcx), %xmm1
	movaps	%xmm9, %xmm10
	movss	4(%rdx), %xmm7
	subss	%xmm2, %xmm10
	movss	(%rdx), %xmm6
	mulss	%xmm5, %xmm4
	movaps	%xmm1, %xmm5
	subss	%xmm3, %xmm5
	subss	%xmm6, %xmm2
	subss	%xmm7, %xmm3
	mulss	%xmm10, %xmm5
	movaps	%xmm7, %xmm10
	subss	%xmm8, %xmm10
	subss	%xmm5, %xmm4
	pxor	%xmm5, %xmm5
	ucomiss	%xmm4, %xmm5
	movaps	%xmm0, %xmm4
	subss	%xmm9, %xmm4
	subss	%xmm6, %xmm0
	seta	%dl
	mulss	%xmm10, %xmm4
	movaps	%xmm1, %xmm10
	subss	%xmm8, %xmm10
	mulss	%xmm3, %xmm0
	subss	%xmm7, %xmm1
	movaps	16(%rsp), %xmm7
	movaps	%xmm10, %xmm8
	movaps	%xmm6, %xmm10
	movaps	(%rsp), %xmm6
	subss	%xmm9, %xmm10
	mulss	%xmm2, %xmm1
	movaps	48(%rsp), %xmm9
	mulss	%xmm10, %xmm8
	movaps	64(%rsp), %xmm10
	subss	%xmm1, %xmm0
	subss	%xmm8, %xmm4
	movaps	32(%rsp), %xmm8
	ucomiss	%xmm4, %xmm5
	seta	%al
	cmpb	%dl, %al
	sete	%al
	ucomiss	%xmm0, %xmm5
	seta	%cl
	cmpb	%dl, %cl
	sete	%dl
	andl	%edx, %eax
	addq	$88, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9ImStricmpPKcS0_
	.def	_Z9ImStricmpPKcS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9ImStricmpPKcS0_
_Z9ImStricmpPKcS0_:
.LFB567:
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
	movq	__imp_toupper(%rip), %r12
	movq	%rcx, %rbp
	movq	%rdx, %rdi
	jmp	.L883
	.p2align 4,,10
.L887:
	testb	%sil, %sil
	je	.L881
	addq	$1, %rbp
	addq	$1, %rdi
.L883:
	movsbl	(%rdi), %ecx
	call	*%r12
	movsbl	0(%rbp), %ecx
	movl	%eax, %ebx
	movl	%ecx, %esi
	call	*%r12
	subl	%eax, %ebx
	je	.L887
.L881:
	movl	%ebx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z10ImStrnicmpPKcS0_i
	.def	_Z10ImStrnicmpPKcS0_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10ImStrnicmpPKcS0_i
_Z10ImStrnicmpPKcS0_i:
.LFB568:
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
	testl	%r8d, %r8d
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	jle	.L891
	leal	-1(%r8), %eax
	movq	__imp_toupper(%rip), %r12
	leaq	1(%rcx,%rax), %r13
	jmp	.L890
	.p2align 4,,10
.L896:
	testb	%bpl, %bpl
	je	.L888
	addq	$1, %rsi
	addq	$1, %rdi
	cmpq	%r13, %rsi
	je	.L888
.L890:
	movsbl	(%rdi), %ecx
	call	*%r12
	movsbl	(%rsi), %ecx
	movl	%eax, %ebx
	movl	%ecx, %ebp
	call	*%r12
	subl	%eax, %ebx
	je	.L896
.L888:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L891:
	xorl	%ebx, %ebx
	jmp	.L888
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9ImStrncpyPcPKci
	.def	_Z9ImStrncpyPcPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9ImStrncpyPcPKci
_Z9ImStrncpyPcPKci:
.LFB569:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testl	%r8d, %r8d
	jle	.L897
	movslq	%r8d, %rbx
	movq	%rbx, %r8
	call	strncpy
	movb	$0, -1(%rax,%rbx)
.L897:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z8ImStrdupPKc
	.def	_Z8ImStrdupPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8ImStrdupPKc
_Z8ImStrdupPKc:
.LFB570:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	call	strlen
	leaq	1(%rax), %rbx
	movq	GImGui(%rip), %rax
	movq	%rbx, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	memcpy
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9ImStrlenWPKt
	.def	_Z9ImStrlenWPKt;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9ImStrlenWPKt
_Z9ImStrlenWPKt:
.LFB571:
	.seh_endprologue
	xorl	%eax, %eax
	cmpw	$0, (%rcx)
	leaq	2(%rcx), %rdx
	je	.L900
	.p2align 4,,10
.L902:
	addq	$2, %rdx
	addl	$1, %eax
	cmpw	$0, -2(%rdx)
	jne	.L902
.L900:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9ImStrbolWPKtS0_
	.def	_Z9ImStrbolWPKtS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9ImStrbolWPKtS0_
_Z9ImStrbolWPKtS0_:
.LFB572:
	.seh_endprologue
	cmpq	%rdx, %rcx
	movq	%rcx, %rax
	ja	.L908
	jmp	.L906
	.p2align 4,,10
.L909:
	subq	$2, %rax
	cmpq	%rax, %rdx
	jnb	.L906
.L908:
	cmpw	$10, -2(%rax)
	jne	.L909
.L906:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9ImStristrPKcS0_S0_S0_
	.def	_Z9ImStristrPKcS0_S0_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9ImStristrPKcS0_S0_S0_
_Z9ImStristrPKcS0_S0_S0_:
.LFB573:
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
	testq	%r9, %r9
	movq	%rcx, %rsi
	movq	%rdx, %r13
	movq	%r9, 168(%rsp)
	movq	%r8, %rbx
	je	.L925
.L911:
	movsbl	(%rbx), %ecx
	movq	__imp_toupper(%rip), %rdi
	call	*%rdi
	leaq	1(%rbx), %rdx
	notq	%rbx
	addq	168(%rsp), %rbx
	movsbl	%al, %eax
	movq	%rdx, 48(%rsp)
	movl	%eax, 44(%rsp)
	movq	%rbx, 56(%rsp)
	jmp	.L912
	.p2align 4,,10
.L913:
	cmpq	%r13, %rsi
	jnb	.L919
	movsbl	(%rsi), %ecx
.L915:
	call	*%rdi
	cmpl	44(%rsp), %eax
	leaq	1(%rsi), %r12
	je	.L926
.L916:
	movq	%r12, %rsi
.L912:
	testq	%r13, %r13
	jne	.L913
	movsbl	(%rsi), %ecx
	testb	%cl, %cl
	jne	.L915
.L914:
	movq	%r13, %rax
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
.L926:
	movq	48(%rsp), %rbx
	cmpq	%rbx, 168(%rsp)
	jbe	.L917
	movq	56(%rsp), %rax
	movq	%r12, %r15
	leaq	(%r12,%rax), %r14
	jmp	.L918
	.p2align 4,,10
.L927:
	addq	$1, %r15
	addq	$1, %rbx
	cmpq	%r15, %r14
	je	.L917
.L918:
	movsbl	(%r15), %ecx
	call	*%rdi
	movsbl	(%rbx), %ecx
	movl	%eax, %ebp
	call	*%rdi
	cmpl	%eax, %ebp
	je	.L927
.L917:
	cmpq	%rbx, 168(%rsp)
	jne	.L916
	movq	%rsi, %r13
	jmp	.L914
	.p2align 4,,10
.L925:
	movq	%r8, %rcx
	call	strlen
	addq	%rbx, %rax
	movq	%rax, 168(%rsp)
	jmp	.L911
.L919:
	xorl	%r13d, %r13d
	jmp	.L914
	.seh_endproc
	.section .rdata,"dr"
.LC80:
	.ascii "buf_size > 0\0"
	.text
	.p2align 4,,15
	.globl	_Z14ImFormatStringPciPKcz
	.def	_Z14ImFormatStringPciPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14ImFormatStringPciPKcz
_Z14ImFormatStringPciPKcz:
.LFB574:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testl	%edx, %edx
	movq	%rcx, %rsi
	movl	%edx, %ebx
	movq	%r9, 104(%rsp)
	movq	%r8, %rdi
	jle	.L936
.L929:
	leaq	104(%rsp), %r9
	movslq	%ebx, %rdx
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	%r9, 40(%rsp)
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L932
	cmpl	%eax, %ebx
	jle	.L932
	movslq	%eax, %rdx
	movb	$0, (%rsi,%rdx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L932:
	leal	-1(%rbx), %eax
	movslq	%eax, %rdx
	movb	$0, (%rsi,%rdx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L936:
	leaq	.LC5(%rip), %rdx
	movl	$973, %r8d
	leaq	.LC80(%rip), %rcx
	call	_assert
	jmp	.L929
	.seh_endproc
	.p2align 4,,15
	.globl	_Z15ImFormatStringVPciPKcS_
	.def	_Z15ImFormatStringVPciPKcS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15ImFormatStringVPciPKcS_
_Z15ImFormatStringVPciPKcS_:
.LFB575:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	testl	%edx, %edx
	movq	%rcx, %rsi
	movl	%edx, %ebx
	movq	%r8, %rdi
	jle	.L945
.L938:
	movslq	%ebx, %rdx
	movq	%rdi, %r8
	movq	%rsi, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L941
	cmpl	%eax, %ebx
	jle	.L941
	movslq	%eax, %rdx
	movb	$0, (%rsi,%rdx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L941:
	leal	-1(%rbx), %eax
	movslq	%eax, %rdx
	movb	$0, (%rsi,%rdx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L945:
	movl	$986, %r8d
	movq	%r9, 40(%rsp)
	leaq	.LC5(%rip), %rdx
	leaq	.LC80(%rip), %rcx
	call	_assert
	movq	40(%rsp), %r9
	jmp	.L938
	.seh_endproc
	.p2align 4,,15
	.globl	_Z6ImHashPKvij
	.def	_Z6ImHashPKvij;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6ImHashPKvij
_Z6ImHashPKvij:
.LFB576:
	subq	$40, %rsp
	.seh_stackalloc	40
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	.seh_endprologue
	movl	4+_ZZ6ImHashPKvijE9crc32_lut(%rip), %eax
	leaq	_ZZ6ImHashPKvijE9crc32_lut(%rip), %r10
	testl	%eax, %eax
	jne	.L947
	movdqa	.LC10(%rip), %xmm5
	movq	%r10, %rax
	pxor	%xmm2, %xmm2
	movdqa	.LC11(%rip), %xmm6
	leaq	1024(%r10), %r9
	movdqa	.LC12(%rip), %xmm4
	movdqa	.LC13(%rip), %xmm3
	.p2align 4,,10
.L948:
	movdqa	%xmm5, %xmm0
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm1
	addq	$16, %rax
	movdqa	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	paddd	%xmm6, %xmm5
	psrld	$1, %xmm1
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	pand	%xmm3, %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%r9, %rax
	jne	.L948
.L947:
	testl	%edx, %edx
	notl	%r8d
	jle	.L949
	leal	-1(%rdx), %eax
	leaq	1(%rcx,%rax), %r9
	movl	%r8d, %eax
	.p2align 4,,10
.L950:
	addq	$1, %rcx
	movl	%eax, %edx
	xorb	-1(%rcx), %al
	shrl	$8, %edx
	movzbl	%al, %eax
	xorl	(%r10,%rax,4), %edx
	cmpq	%r9, %rcx
	movl	%edx, %eax
	jne	.L950
.L951:
	movaps	(%rsp), %xmm6
	notl	%eax
	movaps	16(%rsp), %xmm7
	addq	$40, %rsp
	ret
	.p2align 4,,10
.L949:
	movzbl	(%rcx), %edx
	testb	%dl, %dl
	je	.L957
	addq	$2, %rcx
	movl	%r8d, %eax
	jmp	.L952
	.p2align 4,,10
.L953:
	movl	%eax, %r11d
	xorl	%edx, %eax
	movzbl	%al, %eax
	shrl	$8, %r11d
	xorl	(%r10,%rax,4), %r11d
	testb	%r9b, %r9b
	movl	%r11d, %eax
	je	.L951
.L956:
	addq	$1, %rcx
	movl	%r9d, %edx
.L952:
	cmpb	$35, %dl
	movzbl	-1(%rcx), %r9d
	jne	.L953
	cmpb	$35, %r9b
	jne	.L953
	cmpb	$35, (%rcx)
	cmove	%r8d, %eax
	movl	%eax, %edx
	movzbl	%al, %eax
	xorq	$35, %rax
	shrl	$8, %edx
	xorl	(%r10,%rax,4), %edx
	movl	%edx, %eax
	jmp	.L956
.L957:
	movl	%r8d, %eax
	jmp	.L951
	.seh_endproc
	.align 2
	.p2align 4,,15
	.def	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138:
.LFB6608:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movslq	496(%rcx), %rax
	testl	%eax, %eax
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	jle	.L964
.L962:
	movq	504(%rbx), %rdx
	movq	%rsi, %rcx
	movl	-4(%rdx,%rax,4), %r8d
	xorl	%edx, %edx
	call	_Z6ImHashPKvij
	movq	GImGui(%rip), %rdx
	cmpl	6068(%rdx), %eax
	jne	.L961
	movb	$1, 6076(%rdx)
.L961:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L964:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	496(%rbx), %rax
	jmp	.L962
	.seh_endproc
	.p2align 4,,15
	.globl	_Z18ImTextCharFromUtf8PjPKcS1_
	.def	_Z18ImTextCharFromUtf8PjPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18ImTextCharFromUtf8PjPKcS1_
_Z18ImTextCharFromUtf8PjPKcS1_:
.LFB577:
	.seh_endprologue
	movzbl	(%rdx), %eax
	testb	%al, %al
	js	.L966
	movl	%eax, (%rcx)
	movl	$1, %eax
.L965:
	ret
	.p2align 4,,10
.L966:
	movl	%eax, %r9d
	andl	$-32, %r9d
	cmpb	$-64, %r9b
	je	.L1005
	movl	%eax, %r9d
	andl	$-16, %r9d
	cmpb	$-32, %r9b
	je	.L1006
	andl	$-8, %eax
	cmpb	$-16, %al
	je	.L1007
	xorl	%eax, %eax
	movl	$0, (%rcx)
	ret
	.p2align 4,,10
.L1006:
	testq	%r8, %r8
	movl	$65533, (%rcx)
	je	.L971
	subq	%rdx, %r8
	cmpq	$2, %r8
	jle	.L972
.L971:
	movzbl	(%rdx), %r8d
	movzbl	1(%rdx), %r9d
	cmpb	$-32, %r8b
	je	.L1008
	cmpb	$-19, %r8b
	je	.L975
.L974:
	movl	%r9d, %r10d
	movl	$3, %eax
	andl	$-64, %r10d
	cmpb	$-128, %r10b
	jne	.L965
	movzbl	2(%rdx), %edx
	movl	%edx, %r10d
	andl	$-64, %r10d
	cmpb	$-128, %r10b
	jne	.L965
	sall	$12, %r8d
	andl	$63, %edx
	sall	$6, %r9d
	andl	$61440, %r8d
	andl	$4032, %r9d
	addl	%r8d, %edx
	addl	%r9d, %edx
	movl	%edx, (%rcx)
	ret
	.p2align 4,,10
.L972:
	movl	$1, %eax
	ret
	.p2align 4,,10
.L1005:
	testq	%r8, %r8
	movl	$65533, (%rcx)
	je	.L969
	subq	%rdx, %r8
	cmpq	$1, %r8
	jle	.L972
.L969:
	movzbl	(%rdx), %r8d
	movl	$2, %eax
	cmpb	$-63, %r8b
	jbe	.L965
	movzbl	1(%rdx), %edx
	movl	%edx, %r9d
	andl	$-64, %r9d
	cmpb	$-128, %r9b
	jne	.L965
	sall	$6, %r8d
	andl	$63, %edx
	andl	$1984, %r8d
	addl	%edx, %r8d
	movl	%r8d, (%rcx)
	ret
	.p2align 4,,10
.L1007:
	testq	%r8, %r8
	movl	$65533, (%rcx)
	je	.L977
	subq	%rdx, %r8
	cmpq	$3, %r8
	jle	.L972
.L977:
	movzbl	(%rdx), %r8d
	movl	$4, %eax
	cmpb	$-12, %r8b
	ja	.L965
	cmpb	$-16, %r8b
	movzbl	1(%rdx), %r9d
	je	.L1009
	cmpb	$-12, %r8b
	je	.L1010
.L979:
	movl	%r9d, %r10d
	movl	$4, %eax
	andl	$-64, %r10d
	cmpb	$-128, %r10b
	jne	.L965
	movzbl	2(%rdx), %r10d
	movl	%r10d, %r11d
	andl	$-64, %r11d
	cmpb	$-128, %r11b
	jne	.L965
	movzbl	3(%rdx), %r11d
	movl	%r11d, %edx
	andl	$-64, %edx
	cmpb	$-128, %dl
	jne	.L965
	movl	%r10d, %edx
	sall	$18, %r8d
	andl	$63, %r11d
	sall	$12, %r9d
	sall	$6, %edx
	andl	$1835008, %r8d
	andl	$258048, %r9d
	andl	$4032, %edx
	addl	%r11d, %edx
	orl	%r9d, %r8d
	addl	%edx, %r8d
	movl	%r8d, %edx
	andl	$-2048, %edx
	cmpl	$55296, %edx
	je	.L965
	movl	%r8d, (%rcx)
	ret
	.p2align 4,,10
.L1008:
	leal	96(%r9), %r10d
	movl	$3, %eax
	cmpb	$31, %r10b
	jbe	.L974
	ret
	.p2align 4,,10
.L975:
	cmpb	$-97, %r9b
	movl	$3, %eax
	jbe	.L974
	ret
.L1009:
	leal	112(%r9), %r10d
	cmpb	$47, %r10b
	jbe	.L979
	ret
.L1010:
	cmpb	$-113, %r9b
	jbe	.L979
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.150;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.150
_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.150:
.LFB6596:
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
	movslq	%edx, %rdx
	movq	%rcx, %r13
	movq	%r8, %rbx
	leaq	-2(%rcx,%rdx,2), %rsi
	movq	%r9, %rbp
	movq	%rcx, %r12
	cmpq	%rsi, %rcx
	jnb	.L1019
	cmpb	$0, (%r8)
	je	.L1019
	leaq	44(%rsp), %rdi
	jmp	.L1013
	.p2align 4,,10
.L1025:
	cmpl	$65535, %eax
	ja	.L1015
	movw	%ax, 0(%r13)
	addq	$2, %r13
.L1015:
	cmpq	%rsi, %r13
	jnb	.L1014
	cmpb	$0, (%rbx)
	je	.L1014
.L1013:
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	.L1025
.L1014:
	movq	%r13, %rax
	subq	%r12, %rax
	sarq	%rax
.L1012:
	xorl	%edx, %edx
	testq	%rbp, %rbp
	movw	%dx, 0(%r13)
	je	.L1011
	movq	%rbx, 0(%rbp)
.L1011:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L1019:
	xorl	%eax, %eax
	jmp	.L1012
	.seh_endproc
	.p2align 4,,15
	.def	_ZL30SetClipboardTextFn_DefaultImplPvPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL30SetClipboardTextFn_DefaultImplPvPKc
_ZL30SetClipboardTextFn_DefaultImplPvPKc:
.LFB6219:
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
	xorl	%ecx, %ecx
	movq	%rdx, %r12
	call	*__imp_OpenClipboard(%rip)
	testl	%eax, %eax
	jne	.L1039
.L1026:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L1039:
	cmpb	$0, (%r12)
	je	.L1034
	leaq	44(%rsp), %rbp
	movq	%r12, %rbx
	xorl	%edi, %edi
	jmp	.L1032
	.p2align 4,,10
.L1040:
	cmpl	$65535, %eax
	ja	.L1031
	leal	2(%rdi), %eax
	movl	%esi, %edi
	movl	%eax, %esi
.L1031:
	cmpb	$0, (%rbx)
	je	.L1030
.L1032:
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	leal	1(%rdi), %esi
	cltq
	addq	%rax, %rbx
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	.L1040
.L1030:
	movslq	%esi, %rdx
	addq	%rdx, %rdx
.L1029:
	movl	$2, %ecx
	call	*__imp_GlobalAlloc(%rip)
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1026
	movq	%rax, %rcx
	call	*__imp_GlobalLock(%rip)
	xorl	%r9d, %r9d
	movq	%r12, %r8
	movl	%esi, %edx
	movq	%rax, %rcx
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.150
	movq	%rbx, %rcx
	call	*__imp_GlobalUnlock(%rip)
	call	*__imp_EmptyClipboard(%rip)
	movq	%rbx, %rdx
	movl	$13, %ecx
	call	*__imp_SetClipboardData(%rip)
	call	*__imp_CloseClipboard(%rip)
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L1034:
	movl	$2, %edx
	movl	$1, %esi
	jmp	.L1029
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN7ImGuiIO22AddInputCharactersUTF8EPKc
	.def	_ZN7ImGuiIO22AddInputCharactersUTF8EPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN7ImGuiIO22AddInputCharactersUTF8EPKc
_ZN7ImGuiIO22AddInputCharactersUTF8EPKc:
.LFB565:
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
	leaq	48(%rsp), %rbx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	leaq	44(%rsp), %rbp
	movq	%rbx, %r13
	leaq	32(%rbx), %r12
	.p2align 4,,10
.L1042:
	cmpb	$0, (%rsi)
	je	.L1043
	xorl	%r8d, %r8d
	movq	%rsi, %rdx
	movq	%rbp, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rsi
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.L1043
	cmpl	$65535, %eax
	ja	.L1045
	leaq	2(%r13), %rdx
	movw	%ax, 0(%r13)
	cmpq	%r12, %rdx
	movq	%rdx, %r13
	jb	.L1042
	.p2align 4,,10
.L1043:
	leaq	34(%rbx), %r10
	xorl	%edx, %edx
	movq	%rbx, %r8
	movw	%dx, 0(%r13)
	.p2align 4,,10
.L1052:
	movzwl	(%r8), %r9d
	testw	%r9w, %r9w
	je	.L1041
	cmpw	$0, 794(%rdi)
	leaq	796(%rdi), %rax
	je	.L1054
	xorl	%edx, %edx
	jmp	.L1050
	.p2align 4,,10
.L1055:
	movl	%ecx, %edx
.L1050:
	leal	1(%rdx), %ecx
	addq	$2, %rax
	cmpw	$0, -2(%rax)
	jne	.L1055
	addl	$2, %edx
	cmpl	$15, %ecx
	jle	.L1049
.L1051:
	addq	$2, %r8
	cmpq	%r10, %r8
	jne	.L1052
.L1041:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L1054:
	movl	$1, %edx
	xorl	%ecx, %ecx
.L1049:
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	xorl	%eax, %eax
	movw	%r9w, 794(%rdi,%rcx,2)
	movw	%ax, 794(%rdi,%rdx,2)
	jmp	.L1051
	.p2align 4,,10
.L1045:
	cmpq	%r12, %r13
	jb	.L1042
	jmp	.L1043
	.seh_endproc
	.p2align 4,,15
	.globl	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_
	.def	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_
_Z17ImTextStrFromUtf8PtiPKcS1_PS1_:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	160(%rsp), %r12
	movslq	%edx, %rdx
	movq	%rcx, %r15
	movq	%r8, %rbx
	leaq	-2(%rcx,%rdx,2), %rsi
	movq	%r9, %r14
	movq	%rcx, %r13
	cmpq	%rsi, %rcx
	jnb	.L1074
	testq	%r9, %r9
	setne	%bpl
	cmpq	%r9, %r8
	jb	.L1075
	testb	%bpl, %bpl
	jne	.L1074
.L1075:
	cmpb	$0, (%rbx)
	je	.L1074
	leaq	44(%rsp), %rdi
	jmp	.L1066
	.p2align 4,,10
.L1089:
	cmpl	$65535, %eax
	ja	.L1069
	movw	%ax, (%r15)
	addq	$2, %r15
.L1069:
	cmpq	%rsi, %r15
	jnb	.L1068
	cmpq	%rbx, %r14
	ja	.L1067
	testb	%bpl, %bpl
	jne	.L1068
.L1067:
	cmpb	$0, (%rbx)
	je	.L1068
.L1066:
	movq	%rbx, %rdx
	movq	%r14, %r8
	movq	%rdi, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	.L1089
.L1068:
	movq	%r15, %rax
	subq	%r13, %rax
	sarq	%rax
.L1064:
	xorl	%edx, %edx
	testq	%r12, %r12
	movw	%dx, (%r15)
	je	.L1063
	movq	%rbx, (%r12)
.L1063:
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
.L1074:
	xorl	%eax, %eax
	jmp	.L1064
	.seh_endproc
	.p2align 4,,15
	.globl	_Z24ImTextCountCharsFromUtf8PKcS0_
	.def	_Z24ImTextCountCharsFromUtf8PKcS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z24ImTextCountCharsFromUtf8PKcS0_
_Z24ImTextCountCharsFromUtf8PKcS0_:
.LFB579:
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
	testq	%rdx, %rdx
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	setne	%r12b
	xorl	%edi, %edi
	cmpq	%rdx, %rcx
	jb	.L1100
	testb	%r12b, %r12b
	jne	.L1090
.L1100:
	cmpb	$0, (%rbx)
	je	.L1090
	leaq	44(%rsp), %rbp
	jmp	.L1093
	.p2align 4,,10
.L1110:
	cmpl	$65536, %eax
	adcl	$0, %edi
	cmpq	%rbx, %rsi
	ja	.L1097
	testb	%r12b, %r12b
	jne	.L1090
.L1097:
	cmpb	$0, (%rbx)
	je	.L1090
.L1093:
	movq	%rbx, %rdx
	movq	%rsi, %r8
	movq	%rbp, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	.L1110
.L1090:
	movl	%edi, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z15ImTextStrToUtf8PciPKtS1_
	.def	_Z15ImTextStrToUtf8PciPKtS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15ImTextStrToUtf8PciPKtS1_
_Z15ImTextStrToUtf8PciPKtS1_:
.LFB582:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movslq	%edx, %rdx
	movq	%rcx, %rax
	leaq	(%rcx,%rdx), %rbx
	leaq	-1(%rbx), %r11
.L1112:
	cmpq	%r11, %rax
	jnb	.L1113
.L1127:
	testq	%r9, %r9
	je	.L1120
	cmpq	%r9, %r8
	jnb	.L1113
.L1120:
	movzwl	(%r8), %edx
	testw	%dx, %dx
	je	.L1113
	movzwl	%dx, %r10d
	addq	$2, %r8
	cmpl	$127, %r10d
	ja	.L1115
	movb	%dl, (%rax)
	addq	$1, %rax
	cmpq	%r11, %rax
	jb	.L1127
.L1113:
	movb	$0, (%rax)
	subq	%rcx, %rax
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L1115:
	movq	%rbx, %rsi
	subq	%rax, %rsi
	subl	$1, %esi
	cmpl	$2047, %r10d
	ja	.L1117
	cmpl	$1, %esi
	jle	.L1112
	shrl	$6, %r10d
	andl	$63, %edx
	addq	$2, %rax
	subl	$64, %r10d
	addl	$-128, %edx
	movb	%r10b, -2(%rax)
	movb	%dl, -1(%rax)
	jmp	.L1112
	.p2align 4,,10
.L1117:
	leal	-56320(%r10), %edi
	cmpl	$1023, %edi
	jbe	.L1112
	leal	-55296(%r10), %edi
	cmpl	$1023, %edi
	ja	.L1119
	cmpl	$3, %esi
	jle	.L1112
	shrl	$6, %r10d
	andl	$63, %edx
	movl	$-29200, %esi
	andl	$63, %r10d
	addl	$-128, %edx
	movw	%si, (%rax)
	addq	$4, %rax
	addl	$-128, %r10d
	movb	%dl, -1(%rax)
	movb	%r10b, -2(%rax)
	jmp	.L1112
	.p2align 4,,10
.L1119:
	cmpl	$2, %esi
	jle	.L1112
	movl	%r10d, %esi
	shrl	$6, %r10d
	andl	$63, %edx
	shrl	$12, %esi
	andl	$63, %r10d
	addl	$-128, %edx
	subl	$32, %esi
	addl	$-128, %r10d
	movb	%dl, 2(%rax)
	addq	$3, %rax
	movb	%sil, -3(%rax)
	movb	%r10b, -2(%rax)
	jmp	.L1112
	.seh_endproc
	.p2align 4,,15
	.globl	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	.def	_Z27ImTextCountUtf8BytesFromStrPKtS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z27ImTextCountUtf8BytesFromStrPKtS0_
_Z27ImTextCountUtf8BytesFromStrPKtS0_:
.LFB583:
	.seh_endprologue
	testq	%rdx, %rdx
	setne	%r9b
	xorl	%eax, %eax
.L1129:
	cmpq	%rdx, %rcx
	jb	.L1137
	testb	%r9b, %r9b
	jne	.L1128
.L1137:
	movzwl	(%rcx), %r8d
	testw	%r8w, %r8w
	je	.L1128
	addq	$2, %rcx
	cmpl	$127, %r8d
	ja	.L1132
	addl	$1, %eax
	cmpq	%rdx, %rcx
	jb	.L1137
	testb	%r9b, %r9b
	je	.L1137
.L1128:
	ret
	.p2align 4,,10
.L1132:
	cmpl	$2047, %r8d
	ja	.L1134
	addl	$2, %eax
	jmp	.L1129
	.p2align 4,,10
.L1134:
	leal	-56320(%r8), %r10d
	cmpl	$1023, %r10d
	jbe	.L1129
	subl	$55296, %r8d
	cmpl	$1024, %r8d
	adcl	$3, %eax
	jmp	.L1129
	.seh_endproc
	.section .rdata,"dr"
.LC81:
	.ascii "pos <= text_len\0"
	.text
	.p2align 4,,15
	.def	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti:
.LFB979:
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
	movl	60(%rcx), %edi
	cmpl	%edx, %edi
	movq	%rcx, %rbx
	movl	%edx, %ebp
	movq	%r8, %r13
	movl	%r9d, %esi
	jl	.L1151
.L1145:
	leal	(%rdi,%rsi), %eax
	xorl	%r11d, %r11d
	cmpl	8(%rbx), %eax
	jl	.L1152
.L1144:
	movl	%r11d, %eax
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
.L1152:
	movslq	%esi, %r15
	movq	%r13, %rcx
	leaq	(%r15,%r15), %r12
	leaq	0(%r13,%r12), %rdx
	call	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	movl	%eax, %r14d
	movl	56(%rbx), %eax
	addl	%r14d, %eax
	cmpl	64(%rbx), %eax
	jge	.L1144
	movq	16(%rbx), %rax
	movslq	%ebp, %rdx
	cmpl	%ebp, %edi
	leaq	(%rax,%rdx,2), %r9
	je	.L1147
	subl	%ebp, %edi
	addq	%rdx, %r15
	movq	%r9, %rdx
	movq	%r9, 40(%rsp)
	leaq	(%rax,%r15,2), %rcx
	movslq	%edi, %r8
	addq	%r8, %r8
	call	memmove
	movq	40(%rsp), %r9
.L1147:
	movq	%r12, %r8
	movq	%r13, %rdx
	movq	%r9, %rcx
	call	memcpy
	addl	60(%rbx), %esi
	addl	%r14d, 56(%rbx)
	cmpl	8(%rbx), %esi
	movl	%esi, 60(%rbx)
	jge	.L1153
.L1148:
	movq	16(%rbx), %rax
	movslq	%esi, %rsi
	xorl	%edx, %edx
	movl	$1, %r11d
	movw	%dx, (%rax,%rsi,2)
	jmp	.L1144
	.p2align 4,,10
.L1151:
	leaq	.LC5(%rip), %rdx
	movl	$7527, %r8d
	leaq	.LC81(%rip), %rcx
	call	_assert
	jmp	.L1145
	.p2align 4,,10
.L1153:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L1148
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi:
.LFB993:
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
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	movaps	%xmm8, 160(%rsp)
	.seh_savexmm	%xmm8, 160
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
.L1155:
	cmpl	$65548, %r8d
	je	.L1157
	jle	.L1526
	cmpl	$196613, %r8d
	je	.L1174
	jg	.L1175
	cmpl	$196609, %r8d
	je	.L1176
	jg	.L1177
	cmpl	$65549, %r8d
	je	.L1178
	cmpl	$196608, %r8d
	jne	.L1156
	movl	4(%rbx), %ecx
	movl	8(%rbx), %edx
	movl	60(%rsi), %eax
	cmpl	%edx, %ecx
	je	.L1241
	cmpl	%ecx, %eax
	jge	.L1242
	cmpl	%edx, %eax
	movl	%eax, 4(%rbx)
	jge	.L1243
.L1390:
	movl	%eax, 8(%rbx)
	movl	%eax, %edx
.L1243:
	cmpl	%edx, 4(%rbx)
	movl	%edx, %ecx
	je	.L1527
.L1244:
	cmpl	(%rbx), %eax
	jl	.L1372
.L1245:
	movl	%edx, (%rbx)
.L1246:
	testl	%ecx, %ecx
	jle	.L1247
	subl	$1, %ecx
	movl	%ecx, 8(%rbx)
.L1247:
	movl	%ecx, (%rbx)
	movb	$0, 15(%rbx)
	jmp	.L1154
	.p2align 4,,10
.L1526:
	cmpl	$65541, %r8d
	je	.L1159
	jle	.L1528
	cmpl	$65544, %r8d
	je	.L1167
	jle	.L1529
	cmpl	$65546, %r8d
	je	.L1171
	jle	.L1173
	movswq	3212(%rbx), %rdx
	cmpw	$99, %dx
	je	.L1502
	leaq	24(%rbx), %rax
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(%rax,%rdx,4), %rdx
	movzwl	8(%rdx), %edi
	movzwl	6(%rdx), %ecx
	movl	(%rdx), %r15d
	movzwl	4(%rdx), %r14d
	movswq	3210(%rbx), %rdx
	movw	%di, 32(%rsp)
	testw	%cx, %cx
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(%rbx,%rdx,4), %rdi
	movl	$-1, %edx
	movw	%r14w, 30(%rdi)
	movw	%cx, 28(%rdi)
	movl	%r15d, 24(%rdi)
	movw	%dx, 32(%rdi)
	je	.L1224
	movswl	3214(%rbx), %r8d
	movswl	%cx, %r9d
	movswl	3216(%rbx), %ebp
	movl	%r8d, %edx
	addl	%r9d, %r8d
	cmpl	%ebp, %r8d
	jle	.L1225
	movl	$0, 28(%rdi)
.L1226:
	movl	%r9d, %r8d
	movl	%r15d, %edx
	movq	%rsi, %rcx
	movq	%rax, 40(%rsp)
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii
	movq	40(%rsp), %rax
.L1224:
	testw	%r14w, %r14w
	movswl	%r14w, %edi
	je	.L1231
	movswq	32(%rsp), %rdx
	movl	%edi, %r9d
	movq	%rsi, %rcx
	leaq	1188(%rax,%rdx,2), %r8
	movl	%r15d, %edx
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
	addw	%r14w, 3216(%rbx)
.L1231:
	addw	$1, 3210(%rbx)
	addw	$1, 3212(%rbx)
	leal	(%r15,%rdi), %r10d
	movl	%r10d, (%rbx)
	.p2align 4,,10
.L1502:
	movb	$0, 15(%rbx)
.L1154:
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	movaps	160(%rsp), %xmm8
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
.L1175:
	cmpl	$196616, %r8d
	je	.L1167
	jle	.L1530
	cmpl	$196620, %r8d
	je	.L1184
	cmpl	$196621, %r8d
	jne	.L1531
	movl	8(%rbx), %eax
	cmpl	%eax, 4(%rbx)
	movl	(%rbx), %edx
	jne	.L1266
	movl	%edx, 8(%rbx)
	movl	%edx, 4(%rbx)
.L1266:
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL31STB_TEXTEDIT_MOVEWORDRIGHT_IMPLEP18ImGuiTextEditStatei
.L1519:
	movl	4(%rbx), %ecx
	movl	%eax, (%rbx)
	movl	%eax, 8(%rbx)
	movl	60(%rsi), %edx
	cmpl	%ecx, %eax
	je	.L1267
	cmpl	%ecx, %edx
	jge	.L1268
	cmpl	%edx, %eax
	movl	%edx, 4(%rbx)
	jg	.L1532
	jne	.L1154
	movl	%edx, %ecx
.L1271:
	movl	%ecx, (%rbx)
.L1267:
	cmpl	%ecx, %edx
	jge	.L1154
	movl	%edx, (%rbx)
	jmp	.L1154
	.p2align 4,,10
.L1528:
	cmpl	$65538, %r8d
	je	.L1161
	jg	.L1162
	cmpl	$65536, %r8d
	je	.L1163
	cmpl	$65537, %r8d
	jne	.L1156
	movl	4(%rbx), %edx
	movl	8(%rbx), %eax
	cmpl	%eax, %edx
	je	.L1234
	jle	.L1235
	movl	%edx, 8(%rbx)
	movl	%eax, 4(%rbx)
.L1235:
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE.part.7
	movl	4(%rbx), %eax
	movl	8(%rbx), %ecx
	movl	60(%rsi), %edx
	cmpl	%ecx, %eax
	je	.L1498
	cmpl	%eax, %edx
	jge	.L1238
	cmpl	%ecx, %edx
	movl	%edx, 4(%rbx)
	movl	%edx, %eax
	jge	.L1239
.L1371:
	movl	%edx, 8(%rbx)
	movl	%edx, %ecx
.L1239:
	cmpl	%ecx, %eax
	je	.L1240
.L1498:
	movl	(%rbx), %eax
.L1237:
	cmpl	%eax, %edx
	jge	.L1502
	movl	%edx, (%rbx)
	jmp	.L1502
	.p2align 4,,10
.L1530:
	cmpl	$196614, %r8d
	je	.L1182
	cmpl	$196615, %r8d
	jne	.L1156
	movl	8(%rbx), %eax
	cmpl	%eax, 4(%rbx)
	je	.L1533
	movl	%eax, (%rbx)
.L1332:
	movl	60(%rsi), %eax
	movl	%eax, 8(%rbx)
.L1501:
	movl	%eax, (%rbx)
	jmp	.L1502
	.p2align 4,,10
.L1529:
	cmpl	$65542, %r8d
	je	.L1169
	cmpl	$65543, %r8d
	jne	.L1156
	movl	60(%rsi), %eax
	movq	$0, 4(%rbx)
	movb	$0, 15(%rbx)
	movl	%eax, (%rbx)
	jmp	.L1154
	.p2align 4,,10
.L1177:
	cmpl	$196611, %r8d
	je	.L1165
	jle	.L1161
	movl	4(%rbx), %eax
	movl	8(%rbx), %edx
	movl	60(%rsi), %ecx
	cmpl	%edx, %eax
	je	.L1351
	cmpl	%eax, %ecx
	jge	.L1352
	cmpl	%edx, %ecx
	movl	%ecx, 4(%rbx)
	jge	.L1353
.L1400:
	movl	%ecx, 8(%rbx)
	movl	%ecx, %edx
.L1353:
	cmpl	%edx, 4(%rbx)
	movl	%edx, %eax
	je	.L1534
.L1386:
	movl	%edx, (%rbx)
.L1355:
	cmpb	$0, 16(%rbx)
	je	.L1356
	movl	$0, (%rbx)
	xorl	%eax, %eax
.L1357:
	movl	%eax, 8(%rbx)
	jmp	.L1502
	.p2align 4,,10
.L1162:
	cmpl	$65539, %r8d
	je	.L1165
	cmpl	$65540, %r8d
	jne	.L1156
	movl	4(%rbx), %ecx
	movl	8(%rbx), %edx
	movl	60(%rsi), %r8d
	cmpl	%edx, %ecx
	je	.L1333
	cmpl	%ecx, %r8d
	jge	.L1334
	cmpl	%edx, %r8d
	movl	%r8d, 4(%rbx)
	movl	%r8d, %ecx
	jge	.L1335
.L1395:
	movl	%r8d, 8(%rbx)
	movl	%r8d, %edx
.L1335:
	cmpl	%edx, %ecx
	movl	%ecx, %eax
	je	.L1535
.L1336:
	cmpl	(%rbx), %r8d
	jl	.L1381
.L1382:
	cmpl	%ecx, %edx
	jge	.L1338
	movl	%edx, 4(%rbx)
	movl	%edx, %eax
.L1338:
	movl	%eax, (%rbx)
	movl	%eax, 8(%rbx)
	movb	$0, 15(%rbx)
.L1337:
	cmpb	$0, 16(%rbx)
	je	.L1339
	movl	$0, (%rbx)
	jmp	.L1502
	.p2align 4,,10
.L1174:
	movl	4(%rbx), %edi
	movl	8(%rbx), %eax
	movl	60(%rsi), %ebp
	cmpl	%eax, %edi
	je	.L1360
	cmpl	%edi, %ebp
	jge	.L1361
	cmpl	%eax, %ebp
	movl	%ebp, 4(%rbx)
	movl	%ebp, %edx
	movl	%eax, %edi
	jge	.L1362
.L1402:
	movl	%ebp, 8(%rbx)
	movl	%ebp, %edi
.L1362:
	cmpl	%edi, %edx
	je	.L1536
.L1365:
	movl	%edi, (%rbx)
.L1366:
	cmpb	$0, 16(%rbx)
	je	.L1367
	movl	%ebp, (%rbx)
.L1368:
	movl	%ebp, 8(%rbx)
	movb	$0, 15(%rbx)
	jmp	.L1154
	.p2align 4,,10
.L1173:
	movl	8(%rbx), %eax
	cmpl	%eax, 4(%rbx)
	jne	.L1328
	movl	60(%rsi), %edx
	movl	(%rbx), %eax
	cmpl	%eax, %edx
	jge	.L1329
	movl	%edx, (%rbx)
	movl	%edx, %eax
.L1329:
	testl	%eax, %eax
	jle	.L1502
	movl	$1, %r9d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	leal	-1(%rax), %r8d
	call	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii
	subl	$1, (%rbx)
	jmp	.L1502
	.p2align 4,,10
.L1161:
	andl	$131072, %r8d
	cmpb	$0, 16(%rbx)
	je	.L1303
	orl	$65536, %r8d
	jmp	.L1155
	.p2align 4,,10
.L1531:
	cmpl	$196617, %r8d
	je	.L1173
.L1156:
	leal	-1(%r8), %eax
	cmpl	$65534, %eax
	ja	.L1154
	cmpl	$10, %r8d
	movw	%r8w, 96(%rsp)
	je	.L1537
.L1188:
	cmpb	$0, 12(%rbx)
	je	.L1190
	movl	8(%rbx), %eax
	cmpl	%eax, 4(%rbx)
	je	.L1538
.L1190:
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
	movl	(%rbx), %edx
	movl	$1, %r9d
	movq	%rsi, %rcx
	leaq	96(%rsp), %r8
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
	testb	%al, %al
	je	.L1154
	leaq	24(%rbx), %rcx
	xorl	%edx, %edx
	movl	(%rbx), %esi
	call	_ZN8ImGuiStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi
	testq	%rax, %rax
	je	.L1206
	movl	$-1, %r10d
	movl	%esi, (%rax)
	movl	$65536, 4(%rax)
	movw	%r10w, 8(%rax)
.L1206:
	addl	$1, (%rbx)
	movb	$0, 15(%rbx)
	jmp	.L1154
.L1536:
	movl	%edi, (%rbx)
	movl	%edi, %eax
	movl	%edi, %edx
.L1364:
	cmpl	%edx, %ebp
	jge	.L1539
	cmpl	%eax, %edi
	movl	%ebp, (%rbx)
	jne	.L1365
	movl	%ebp, %edi
.L1389:
	movl	%edi, 8(%rbx)
	movl	%edi, 4(%rbx)
	jmp	.L1366
.L1534:
	movl	%edx, (%rbx)
.L1351:
	movl	(%rbx), %eax
	cmpl	%eax, %ecx
	jl	.L1540
.L1387:
	movl	%eax, 8(%rbx)
	movl	%eax, 4(%rbx)
	jmp	.L1355
.L1240:
	movl	%eax, (%rbx)
	jmp	.L1237
	.p2align 4,,10
.L1176:
	movl	8(%rbx), %edx
	cmpl	%edx, 4(%rbx)
	je	.L1541
	movl	4(%rbx), %eax
	movl	%edx, (%rbx)
.L1274:
	addl	$1, %edx
	cmpl	%eax, %edx
	movl	%edx, 8(%rbx)
	je	.L1501
	movl	60(%rsi), %ecx
	cmpl	%eax, %ecx
	jge	.L1276
	cmpl	%ecx, %edx
	movl	%ecx, 4(%rbx)
	movl	%edx, %eax
	jle	.L1501
.L1376:
	movl	%ecx, %eax
	movl	%ecx, 8(%rbx)
	movl	%eax, (%rbx)
	jmp	.L1502
	.p2align 4,,10
.L1165:
	andl	$131072, %r8d
	cmpb	$0, 16(%rbx)
	je	.L1278
	orl	$65537, %r8d
	jmp	.L1155
	.p2align 4,,10
.L1184:
	movl	8(%rbx), %eax
	cmpl	%eax, 4(%rbx)
	movl	(%rbx), %edx
	jne	.L1254
	movl	%edx, 8(%rbx)
	movl	%edx, 4(%rbx)
.L1254:
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP18ImGuiTextEditStatei
	jmp	.L1519
	.p2align 4,,10
.L1182:
	movl	8(%rbx), %eax
	cmpl	%eax, 4(%rbx)
	jne	.L1330
	movl	(%rbx), %eax
	movl	%eax, 4(%rbx)
.L1330:
	movl	$0, 8(%rbx)
	movl	$0, (%rbx)
	movb	$0, 15(%rbx)
	jmp	.L1154
	.p2align 4,,10
.L1169:
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
	movb	$0, 15(%rbx)
	jmp	.L1154
	.p2align 4,,10
.L1167:
	movl	8(%rbx), %eax
	cmpl	%eax, 4(%rbx)
	jne	.L1328
	movl	(%rbx), %r8d
	cmpl	60(%rsi), %r8d
	jge	.L1502
	movl	$1, %r9d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii
	jmp	.L1502
	.p2align 4,,10
.L1157:
	movl	4(%rbx), %eax
	movl	8(%rbx), %edx
	cmpl	%edx, %eax
	je	.L1248
	jle	.L1249
	movl	%edx, 4(%rbx)
	movl	%edx, %eax
.L1249:
	movl	%eax, (%rbx)
	movl	%eax, 8(%rbx)
	movb	$0, 15(%rbx)
	jmp	.L1154
	.p2align 4,,10
.L1163:
	movl	4(%rbx), %ecx
	movl	8(%rbx), %eax
	cmpl	%eax, %ecx
	je	.L1232
	jle	.L1233
	movl	%eax, 4(%rbx)
	movl	%eax, %ecx
.L1233:
	movl	%ecx, (%rbx)
	movl	%ecx, 8(%rbx)
	jmp	.L1502
	.p2align 4,,10
.L1159:
	movl	4(%rbx), %ecx
	movl	8(%rbx), %edx
	movl	60(%rsi), %ebp
	cmpl	%edx, %ecx
	je	.L1342
	cmpl	%ecx, %ebp
	jge	.L1343
	cmpl	%edx, %ebp
	movl	%ebp, 4(%rbx)
	movl	%ebp, %ecx
	jge	.L1344
.L1397:
	movl	%ebp, 8(%rbx)
	movl	%ebp, %edx
.L1344:
	cmpl	%edx, %ecx
	movl	%ecx, %edi
	je	.L1542
.L1345:
	cmpl	(%rbx), %ebp
	jl	.L1383
.L1385:
	cmpl	%ecx, %edx
	jge	.L1347
	movl	%edx, 4(%rbx)
	movl	%edx, %edi
.L1347:
	movl	%edi, (%rbx)
	movl	%edi, 8(%rbx)
	movb	$0, 15(%rbx)
.L1384:
	cmpb	$0, 16(%rbx)
	jne	.L1399
	cmpl	%edi, %ebp
	jle	.L1502
	leaq	.LC2(%rip), %r13
	leaq	.LC3(%rip), %r12
	jmp	.L1350
	.p2align 4,,10
.L1349:
	movq	16(%rsi), %rax
	movslq	%edi, %rdi
	cmpw	$10, (%rax,%rdi,2)
	je	.L1502
	movl	(%rbx), %eax
	leal	1(%rax), %edi
	cmpl	%ebp, %edi
	movl	%edi, (%rbx)
	jge	.L1502
.L1350:
	cmpl	%edi, 8(%rsi)
	jg	.L1349
	movl	$857, %r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_assert
	jmp	.L1349
	.p2align 4,,10
.L1178:
	movl	4(%rbx), %edx
	movl	8(%rbx), %eax
	cmpl	%eax, %edx
	je	.L1261
	jle	.L1262
	movl	%edx, 8(%rbx)
	movl	%eax, 4(%rbx)
.L1262:
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE.part.7
	jmp	.L1154
	.p2align 4,,10
.L1171:
	movswl	3210(%rbx), %eax
	testw	%ax, %ax
	je	.L1502
	leaq	24(%rbx), %r13
	subl	$1, %eax
	movswq	3212(%rbx), %rdx
	movl	$-1, %r9d
	cltq
	leaq	(%rax,%rax,2), %rax
	leaq	0(%r13,%rax,4), %rax
	movzwl	6(%rax), %r15d
	movl	(%rax), %edi
	movzwl	4(%rax), %r12d
	movzwl	8(%rax), %eax
	testw	%r15w, %r15w
	movw	%ax, 32(%rsp)
	movq	%rdx, %rax
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(%rbx,%rdx,4), %rcx
	movw	%r9w, 20(%rcx)
	movw	%r15w, 16(%rcx)
	movw	%r12w, 18(%rcx)
	movl	%edi, 12(%rcx)
	je	.L1209
	movswl	3214(%rbx), %edx
	movswl	%r15w, %r14d
	leal	(%rdx,%r14), %r8d
	cmpl	$998, %r8d
	jg	.L1480
	leaq	1212(%rbx), %rbp
	movq	%rsi, 256(%rsp)
	jmp	.L1210
.L1214:
	movswl	%ax, %r8d
	movswq	%ax, %rax
.L1215:
	leaq	(%rax,%rax,2), %rcx
	movl	$99, %eax
	subl	%r8d, %eax
	salq	$2, %rcx
	leaq	-12(%r13,%rcx), %rdx
	cltq
	addq	%r13, %rcx
	leaq	(%rax,%rax,2), %r8
	salq	$2, %r8
	call	memmove
	movzwl	3212(%rbx), %eax
	addl	$1, %eax
	movw	%ax, 3212(%rbx)
.L1213:
	cmpw	$99, %ax
	je	.L1502
	movswl	3214(%rbx), %edx
.L1210:
	movswl	3216(%rbx), %r8d
	addl	%r14d, %edx
	cmpl	%r8d, %edx
	movl	%r8d, %ecx
	jle	.L1212
	cmpw	$98, %ax
	jg	.L1213
	cmpw	$0, 1208(%rbx)
	js	.L1214
	movswq	1204(%rbx), %rdx
	movl	$999, %r8d
	addl	%edx, %ecx
	movq	%rdx, %rsi
	movswq	%cx, %rax
	movw	%cx, 3216(%rbx)
	movswl	%cx, %ecx
	subl	%ecx, %r8d
	movq	%rax, %rcx
	subq	%rdx, %rcx
	movslq	%r8d, %r8
	leaq	0(%rbp,%rcx,2), %rdx
	addq	%r8, %r8
	leaq	0(%rbp,%rax,2), %rcx
	call	memmove
	movswq	3212(%rbx), %r8
	cmpl	$97, %r8d
	movq	%r8, %rax
	jg	.L1215
	leaq	(%r8,%r8,2), %rdx
	movl	$97, %ecx
	leaq	32(%rbx,%rdx,4), %rdx
	subl	%r8d, %ecx
	addq	%r8, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	44(%rbx,%rcx,4), %r10
	.p2align 4,,10
.L1217:
	movzwl	(%rdx), %ecx
	testw	%cx, %cx
	js	.L1216
	addl	%esi, %ecx
	movw	%cx, (%rdx)
.L1216:
	addq	$12, %rdx
	cmpq	%rdx, %r10
	jne	.L1217
	jmp	.L1215
	.p2align 4,,10
.L1328:
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
	jmp	.L1502
	.p2align 4,,10
.L1268:
	cmpl	%edx, %eax
	jle	.L1154
	cmpl	%ecx, %edx
	movl	%edx, 8(%rbx)
	je	.L1271
	movl	%edx, (%rbx)
	jmp	.L1154
.L1542:
	movl	%ecx, (%rbx)
.L1342:
	movl	(%rbx), %edi
	cmpl	%edi, %ebp
	jge	.L1384
.L1383:
	cmpl	%edx, %ecx
	movl	%ebp, (%rbx)
	movl	%ecx, %edi
	jne	.L1385
	cmpb	$0, 16(%rbx)
	je	.L1502
.L1399:
	movl	%ebp, (%rbx)
	jmp	.L1502
.L1535:
	movl	%ecx, (%rbx)
.L1333:
	movl	(%rbx), %eax
	cmpl	%eax, %r8d
	jge	.L1337
.L1381:
	cmpl	%edx, %ecx
	movl	%r8d, (%rbx)
	movl	%ecx, %eax
	jne	.L1382
	movl	%r8d, %eax
	jmp	.L1337
.L1527:
	movl	%edx, (%rbx)
.L1241:
	movl	(%rbx), %ecx
	cmpl	%eax, %ecx
	jle	.L1543
.L1372:
	cmpl	%edx, 4(%rbx)
	movl	%eax, (%rbx)
	movl	%edx, %ecx
	jne	.L1245
.L1373:
	movl	%eax, 8(%rbx)
	movl	%eax, %ecx
	movl	%eax, 4(%rbx)
	jmp	.L1246
	.p2align 4,,10
.L1367:
	cmpl	%edi, %ebp
	jle	.L1409
	leaq	.LC2(%rip), %r13
	leaq	.LC3(%rip), %r12
	jmp	.L1370
	.p2align 4,,10
.L1369:
	movq	16(%rsi), %rdx
	movslq	%edi, %rdi
	cmpw	$10, (%rdx,%rdi,2)
	je	.L1411
	leal	1(%rax), %edi
	cmpl	%ebp, %edi
	movl	%edi, (%rbx)
	jge	.L1409
.L1370:
	cmpl	%edi, 8(%rsi)
	movl	%edi, %eax
	jg	.L1369
	movl	$857, %r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_assert
	movl	(%rbx), %eax
	jmp	.L1369
	.p2align 4,,10
.L1339:
	testl	%eax, %eax
	jle	.L1502
	leaq	.LC2(%rip), %r12
	leaq	.LC3(%rip), %rbp
	jmp	.L1341
	.p2align 4,,10
.L1340:
	movq	16(%rsi), %rdx
	movslq	%edi, %rax
	cmpw	$10, (%rdx,%rax,2)
	je	.L1502
	movl	(%rbx), %eax
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, (%rbx)
	jle	.L1502
.L1341:
	leal	-1(%rax), %edi
	cmpl	8(%rsi), %edi
	jl	.L1340
	movl	$857, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	_assert
	jmp	.L1340
	.p2align 4,,10
.L1356:
	testl	%eax, %eax
	jle	.L1357
	leaq	.LC2(%rip), %r12
	leaq	.LC3(%rip), %rbp
	jmp	.L1359
	.p2align 4,,10
.L1358:
	movq	16(%rsi), %rdx
	movslq	%edi, %rdi
	cmpw	$10, (%rdx,%rdi,2)
	je	.L1357
	subl	$1, %eax
	testl	%eax, %eax
	movl	%eax, (%rbx)
	jle	.L1357
.L1359:
	leal	-1(%rax), %edi
	cmpl	8(%rsi), %edi
	jl	.L1358
	movl	$857, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	_assert
	movl	(%rbx), %eax
	jmp	.L1358
.L1480:
	xorl	%r8d, %r8d
	movw	%r8w, 16(%rcx)
.L1211:
	movl	%r14d, %r8d
	movl	%edi, %edx
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii
.L1209:
	testw	%r12w, %r12w
	movswl	%r12w, %ebp
	je	.L1223
	movswq	32(%rsp), %rax
	movl	%ebp, %r9d
	movl	%edi, %edx
	movq	%rsi, %rcx
	leaq	1188(%r13,%rax,2), %r8
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
	subw	%r12w, 3214(%rbx)
.L1223:
	subw	$1, 3210(%rbx)
	addl	%ebp, %edi
	subw	$1, 3212(%rbx)
	movl	%edi, (%rbx)
	jmp	.L1502
	.p2align 4,,10
.L1276:
	cmpl	%ecx, %edx
	movl	%edx, %eax
	jg	.L1376
	movl	%eax, (%rbx)
	jmp	.L1502
	.p2align 4,,10
.L1541:
	movl	(%rbx), %edx
	movl	%edx, 8(%rbx)
	movl	%edx, %eax
	movl	%edx, 4(%rbx)
	jmp	.L1274
	.p2align 4,,10
.L1232:
	movl	(%rbx), %eax
	testl	%eax, %eax
	jle	.L1502
	subl	$1, %eax
	movl	%eax, (%rbx)
	jmp	.L1502
	.p2align 4,,10
.L1234:
	movl	(%rbx), %eax
	addl	$1, %eax
	movl	%eax, (%rbx)
	movl	60(%rsi), %edx
	jmp	.L1237
	.p2align 4,,10
.L1360:
	movl	(%rbx), %edx
	jmp	.L1364
	.p2align 4,,10
.L1533:
	movl	(%rbx), %eax
	movl	%eax, 8(%rbx)
	movl	%eax, 4(%rbx)
	jmp	.L1332
	.p2align 4,,10
.L1352:
	cmpl	%edx, %ecx
	jl	.L1400
	movl	%edx, %eax
	jmp	.L1386
	.p2align 4,,10
.L1242:
	cmpl	%edx, %eax
	jl	.L1390
	movl	%edx, %ecx
	jmp	.L1244
	.p2align 4,,10
.L1238:
	cmpl	%ecx, %edx
	jl	.L1371
	jmp	.L1498
	.p2align 4,,10
.L1343:
	cmpl	%edx, %ebp
	jl	.L1397
	movl	%ecx, %edi
	jmp	.L1345
	.p2align 4,,10
.L1334:
	cmpl	%edx, %r8d
	jl	.L1395
	movl	%ecx, %eax
	jmp	.L1336
	.p2align 4,,10
.L1361:
	cmpl	%eax, %ebp
	jl	.L1415
	movl	%eax, %edi
	jmp	.L1365
	.p2align 4,,10
.L1409:
	movl	%edi, %ebp
	jmp	.L1368
	.p2align 4,,10
.L1411:
	movl	%eax, %ebp
	jmp	.L1368
.L1540:
	cmpl	%edx, 4(%rbx)
	movl	%edx, %eax
	movl	%ecx, (%rbx)
	jne	.L1386
	movl	%ecx, %eax
	jmp	.L1387
	.p2align 4,,10
.L1248:
	movl	(%rbx), %edx
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP18ImGuiTextEditStatei
	movl	4(%rbx), %ecx
	movl	8(%rbx), %r8d
	movl	%eax, (%rbx)
	movl	60(%rsi), %edx
	cmpl	%r8d, %ecx
	je	.L1263
	cmpl	%ecx, %edx
	jge	.L1251
	cmpl	%r8d, %edx
	movl	%edx, 4(%rbx)
	movl	%edx, %ecx
	jge	.L1265
.L1374:
	movl	%edx, 8(%rbx)
	movl	%edx, %r8d
.L1265:
	cmpl	%r8d, %ecx
	jne	.L1263
	movl	%ecx, (%rbx)
	movl	%ecx, %eax
.L1263:
	cmpl	%eax, %edx
	jge	.L1154
	movl	%edx, (%rbx)
	jmp	.L1154
.L1261:
	movl	(%rbx), %edx
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL31STB_TEXTEDIT_MOVEWORDRIGHT_IMPLEP18ImGuiTextEditStatei
	movl	4(%rbx), %r8d
	movl	8(%rbx), %ecx
	movl	%eax, (%rbx)
	movl	60(%rsi), %edx
	cmpl	%ecx, %r8d
	je	.L1263
	cmpl	%r8d, %edx
	jge	.L1264
	cmpl	%ecx, %edx
	movl	%edx, 4(%rbx)
	movl	%edx, %r8d
	jge	.L1265
.L1375:
	movl	%edx, 8(%rbx)
	movl	%edx, %ecx
	jmp	.L1265
.L1225:
	movw	%dx, 32(%rdi)
	addl	%ecx, %edx
	testw	%cx, %cx
	movw	%dx, 3214(%rbx)
	jle	.L1226
	xorl	%r12d, %r12d
	.p2align 4,,10
.L1228:
	movl	24(%rdi), %r13d
	movswl	32(%rdi), %ebp
	addl	%r12d, %r13d
	addl	%r12d, %ebp
	cmpl	8(%rsi), %r13d
	jge	.L1544
	movq	16(%rsi), %rdx
	movslq	%r13d, %r13
	movslq	%ebp, %rbp
	addl	$1, %r12d
	movzwl	(%rdx,%r13,2), %edx
	movw	%dx, 1212(%rbx,%rbp,2)
	movswl	28(%rdi), %edx
	cmpl	%r12d, %edx
	jg	.L1228
	jmp	.L1226
	.p2align 4,,10
.L1544:
	movq	%rax, 48(%rsp)
	movslq	%r13d, %r13
	movslq	%ebp, %rbp
	addl	$1, %r12d
	leaq	.LC2(%rip), %rdx
	movl	$857, %r8d
	movl	%r9d, 40(%rsp)
	leaq	.LC3(%rip), %rcx
	call	_assert
	movq	16(%rsi), %rdx
	movl	40(%rsp), %r9d
	movq	48(%rsp), %rax
	movzwl	(%rdx,%r13,2), %edx
	movw	%dx, 1212(%rbx,%rbp,2)
	movswl	28(%rdi), %edx
	cmpl	%r12d, %edx
	jg	.L1228
	jmp	.L1226
.L1415:
	movl	%edi, %edx
	jmp	.L1402
.L1537:
	cmpb	$0, 16(%rbx)
	je	.L1188
	jmp	.L1154
.L1538:
	movslq	(%rbx), %rdi
	cmpl	60(%rsi), %edi
	jge	.L1190
	leaq	24(%rbx), %r12
	movl	$99, %r11d
	movl	$999, %ebp
	cmpw	$99, 3210(%rbx)
	movw	%r11w, 3212(%rbx)
	movw	%bp, 3216(%rbx)
	je	.L1545
.L1193:
	leaq	36(%rbx), %rax
	leaq	1212(%rbx), %rbp
	movq	%rax, 32(%rsp)
	leaq	44(%rbx), %r14
.L1203:
	movswq	3214(%rbx), %r15
	movswq	3210(%rbx), %rax
	cmpw	$998, %r15w
	jle	.L1197
	testw	%ax, %ax
	jg	.L1198
.L1199:
	jmp	.L1199
.L1198:
	cmpw	$0, 32(%rbx)
	jns	.L1546
.L1200:
	subl	$1, %eax
	movq	32(%rsp), %rdx
	movq	%r12, %rcx
	movw	%ax, 3210(%rbx)
	movswq	%ax, %rax
	leaq	(%rax,%rax,2), %r8
	salq	$2, %r8
	call	memmove
	jmp	.L1203
.L1251:
	cmpl	%r8d, %edx
	jl	.L1374
	jmp	.L1263
.L1264:
	cmpl	%ecx, %edx
	jl	.L1375
	jmp	.L1263
.L1212:
	movswq	%ax, %rax
	subl	%r15d, %ecx
	testl	%r14d, %r14d
	movq	256(%rsp), %rsi
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,4), %r11
	movw	%cx, 20(%r11)
	movw	%cx, 3216(%rbx)
	jle	.L1211
	leal	-1(%r14), %r10d
	movslq	%edi, %r9
	xorl	%r15d, %r15d
	addq	%r9, %r9
	addq	$1, %r10
	movq	%r9, %rbp
	.p2align 4,,10
.L1220:
	movswl	20(%r11), %eax
	leal	(%rdi,%r15), %edx
	addl	%r15d, %eax
	cmpl	%edx, 8(%rsi)
	jle	.L1547
	movq	16(%rsi), %rdx
	addq	$1, %r15
	cltq
	movzwl	(%rdx,%rbp), %edx
	addq	$2, %rbp
	cmpq	%r15, %r10
	movw	%dx, 1212(%rbx,%rax,2)
	jne	.L1220
	jmp	.L1211
.L1547:
	leaq	.LC2(%rip), %rdx
	movl	$857, %r8d
	movq	%r10, 56(%rsp)
	addq	$1, %r15
	leaq	.LC3(%rip), %rcx
	movq	%r11, 48(%rsp)
	movl	%eax, 40(%rsp)
	call	_assert
	movq	16(%rsi), %rdx
	movq	56(%rsp), %r10
	movslq	40(%rsp), %rax
	movq	48(%rsp), %r11
	movzwl	(%rdx,%rbp), %edx
	addq	$2, %rbp
	cmpq	%r10, %r15
	movw	%dx, 1212(%rbx,%rax,2)
	jne	.L1220
	jmp	.L1211
.L1539:
	movl	%edx, %edi
	jmp	.L1389
.L1543:
	movl	%ecx, %eax
	jmp	.L1373
.L1197:
	leal	1(%rax), %edx
	leaq	(%rax,%rax,2), %rax
	movw	%dx, 3210(%rbx)
	leaq	(%rbx,%rax,4), %rax
	movl	%edi, 24(%rax)
	movl	$65537, 28(%rax)
	movw	%r15w, 32(%rax)
	cmpl	8(%rsi), %edi
	leal	1(%r15), %eax
	movw	%ax, 3214(%rbx)
	jge	.L1548
.L1204:
	movq	16(%rsi), %rax
	movl	$1, %r8d
	movq	%rsi, %rcx
	movl	(%rbx), %edx
	movzwl	(%rax,%rdi,2), %eax
	movw	%ax, 1212(%rbx,%r15,2)
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii
	movl	(%rbx), %edx
	movl	$1, %r9d
	leaq	96(%rsp), %r8
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
	testb	%al, %al
	jne	.L1206
	jmp	.L1154
.L1278:
	testl	%r8d, %r8d
	movl	%r8d, %edi
	movl	4(%rbx), %ecx
	movl	8(%rbx), %edx
	je	.L1280
	cmpl	%edx, %ecx
	je	.L1549
	movl	%edx, (%rbx)
	movl	60(%rsi), %eax
.L1283:
	cmpl	%ecx, %eax
	jge	.L1286
	cmpl	%edx, %eax
	movl	%eax, 4(%rbx)
	movl	%eax, %ecx
	jge	.L1287
.L1377:
	movl	%eax, 8(%rbx)
.L1287:
	cmpl	8(%rbx), %ecx
	jne	.L1285
	movl	%ecx, (%rbx)
.L1285:
	cmpl	%eax, (%rbx)
	jle	.L1288
	movl	%eax, (%rbx)
.L1288:
	movzbl	16(%rbx), %r9d
	leaq	64(%rsp), %rcx
	movq	%rsi, %rdx
	movl	(%rbx), %r8d
	call	_ZN8ImGuiStbL25stb_textedit_find_charposEPNS_12StbFindStateEP18ImGuiTextEditStateii
	movl	80(%rsp), %r12d
	testl	%r12d, %r12d
	je	.L1154
	cmpb	$0, 15(%rbx)
	je	.L1291
	movss	20(%rbx), %xmm8
.L1292:
	addl	76(%rsp), %r12d
	leaq	96(%rsp), %rcx
	movq	16(%rsi), %rdx
	movl	%r12d, (%rbx)
	movl	60(%rsi), %r8d
	movl	%r12d, %r9d
	call	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.36
	cmpl	$0, 116(%rsp)
	movss	96(%rsp), %xmm6
	jle	.L1317
	xorl	%ebp, %ebp
	movss	.LC1(%rip), %xmm7
	jmp	.L1295
.L1416:
	addss	%xmm0, %xmm6
	ucomiss	%xmm8, %xmm6
	ja	.L1317
	addl	$1, (%rbx)
	addl	$1, %ebp
	cmpl	%ebp, 116(%rsp)
	jle	.L1317
.L1295:
	movl	%ebp, %r8d
	movl	%r12d, %edx
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii
	ucomiss	%xmm7, %xmm0
	jp	.L1416
	jne	.L1416
.L1317:
	movl	4(%rbx), %ecx
	movl	8(%rbx), %edx
	movl	60(%rsi), %eax
	cmpl	%edx, %ecx
	je	.L1321
	cmpl	%ecx, %eax
	jge	.L1322
	cmpl	%edx, %eax
	movl	%eax, 4(%rbx)
	movl	%eax, %ecx
	jge	.L1323
.L1380:
	movl	%eax, 8(%rbx)
.L1323:
	cmpl	8(%rbx), %ecx
	jne	.L1321
	movl	%ecx, (%rbx)
.L1321:
	cmpl	(%rbx), %eax
	jge	.L1325
	movl	%eax, (%rbx)
.L1325:
	testl	%edi, %edi
	movb	$1, 15(%rbx)
	movss	%xmm8, 20(%rbx)
	je	.L1154
	movl	(%rbx), %eax
	movl	%eax, 8(%rbx)
	jmp	.L1154
.L1303:
	testl	%r8d, %r8d
	movl	%r8d, %edi
	movl	4(%rbx), %ecx
	movl	8(%rbx), %edx
	je	.L1304
	cmpl	%edx, %ecx
	je	.L1550
	movl	%edx, (%rbx)
	movl	60(%rsi), %eax
	cmpl	%eax, %ecx
	jle	.L1551
	cmpl	%edx, %eax
	movl	%eax, 4(%rbx)
	movl	%eax, %ecx
	jl	.L1379
	cmpl	%eax, 8(%rbx)
	je	.L1394
.L1312:
	movl	(%rbx), %r8d
	leaq	64(%rsp), %rcx
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	call	_ZN8ImGuiStbL25stb_textedit_find_charposEPNS_12StbFindStateEP18ImGuiTextEditStateii
	movl	84(%rsp), %r9d
	cmpl	76(%rsp), %r9d
	je	.L1154
	cmpb	$0, 15(%rbx)
	je	.L1315
	movss	20(%rbx), %xmm8
.L1316:
	movl	%r9d, (%rbx)
	movq	16(%rsi), %rdx
	leaq	96(%rsp), %rcx
	movl	60(%rsi), %r8d
	call	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.36
	cmpl	$0, 116(%rsp)
	movss	96(%rsp), %xmm6
	jle	.L1317
	xorl	%ebp, %ebp
	movss	.LC1(%rip), %xmm7
	jmp	.L1319
.L1417:
	addss	%xmm0, %xmm6
	ucomiss	%xmm8, %xmm6
	ja	.L1317
	addl	$1, (%rbx)
	addl	$1, %ebp
	cmpl	%ebp, 116(%rsp)
	jle	.L1317
.L1319:
	movl	84(%rsp), %edx
	movl	%ebp, %r8d
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii
	ucomiss	%xmm7, %xmm0
	jp	.L1417
	jne	.L1417
	jmp	.L1317
.L1551:
	cmpl	%edx, %eax
	jge	.L1312
.L1379:
	cmpl	%eax, %ecx
	movl	%eax, 8(%rbx)
	je	.L1394
.L1311:
	cmpl	%eax, (%rbx)
	jle	.L1312
	movl	%eax, (%rbx)
	jmp	.L1312
.L1304:
	cmpl	%edx, %ecx
	je	.L1306
	jle	.L1309
	movl	%edx, 4(%rbx)
	movl	%edx, %ecx
.L1309:
	movl	%ecx, (%rbx)
	movl	%ecx, 8(%rbx)
	movb	$0, 15(%rbx)
.L1306:
	movl	60(%rsi), %eax
	jmp	.L1311
.L1322:
	cmpl	%edx, %eax
	jl	.L1380
	jmp	.L1321
.L1546:
	movswq	28(%rbx), %rax
	movq	%rbp, %rcx
	subl	%eax, %r15d
	movq	%rax, %r13
	addq	%rax, %rax
	movw	%r15w, 3214(%rbx)
	movswq	%r15w, %r15
	leaq	0(%rbp,%rax), %rdx
	leaq	(%r15,%r15), %r8
	call	memmove
	movswl	3210(%rbx), %eax
	testw	%ax, %ax
	jle	.L1200
	leaq	32(%rbx), %rdx
	subl	$1, %eax
	imulq	$12, %rax, %rax
	addq	%r14, %rax
.L1202:
	movzwl	(%rdx), %ecx
	testw	%cx, %cx
	js	.L1201
	subl	%r13d, %ecx
	movw	%cx, (%rdx)
.L1201:
	addq	$12, %rdx
	cmpq	%rax, %rdx
	jne	.L1202
	movzwl	3210(%rbx), %eax
	jmp	.L1200
.L1280:
	cmpl	%edx, %ecx
	je	.L1282
	jle	.L1284
	movl	%ecx, 8(%rbx)
	movl	%edx, 4(%rbx)
.L1284:
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE.part.7
	movl	4(%rbx), %ecx
	movl	8(%rbx), %edx
	movl	60(%rsi), %eax
	cmpl	%edx, %ecx
	jne	.L1283
	jmp	.L1285
.L1286:
	cmpl	%edx, %eax
	jl	.L1377
	jmp	.L1285
.L1315:
	movss	64(%rsp), %xmm8
	jmp	.L1316
.L1394:
	movl	%ecx, (%rbx)
	jmp	.L1311
.L1548:
	leaq	.LC2(%rip), %rdx
	movl	$857, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L1204
.L1291:
	movss	64(%rsp), %xmm8
	jmp	.L1292
.L1549:
	movl	(%rbx), %eax
	movl	%eax, 8(%rbx)
	movl	%eax, 4(%rbx)
.L1282:
	movl	60(%rsi), %eax
	jmp	.L1285
.L1545:
	cmpw	$0, 32(%rbx)
	jns	.L1552
.L1194:
	movzwl	3210(%rbx), %eax
	leaq	36(%rbx), %rdx
	movq	%r12, %rcx
	subl	$1, %eax
	movw	%ax, 3210(%rbx)
	movswq	%ax, %rax
	imulq	$12, %rax, %r8
	call	memmove
	jmp	.L1193
.L1550:
	movl	(%rbx), %eax
	movl	%eax, 8(%rbx)
	movl	%eax, 4(%rbx)
	jmp	.L1306
.L1552:
	movzwl	28(%rbx), %ebp
	leaq	1212(%rbx), %rcx
	movzwl	3214(%rbx), %eax
	subl	%ebp, %eax
	movw	%ax, 3214(%rbx)
	movswq	%ax, %r8
	movswq	%bp, %rax
	addq	%rax, %rax
	addq	%r8, %r8
	leaq	(%rcx,%rax), %rdx
	call	memmove
	movswl	3210(%rbx), %r8d
	leaq	32(%rbx), %rax
	xorl	%ecx, %ecx
	jmp	.L1196
.L1553:
	movzwl	(%rax), %edx
	testw	%dx, %dx
	js	.L1195
	subl	%ebp, %edx
	movw	%dx, (%rax)
.L1195:
	addl	$1, %ecx
	addq	$12, %rax
.L1196:
	cmpl	%ecx, %r8d
	jg	.L1553
	jmp	.L1194
.L1532:
	movl	%edx, 8(%rbx)
	movl	%edx, %ecx
	jmp	.L1271
	.seh_endproc
	.p2align 4,,15
	.def	_ZL30GetClipboardTextFn_DefaultImplPv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL30GetClipboardTextFn_DefaultImplPv
_ZL30GetClipboardTextFn_DefaultImplPv:
.LFB6217:
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
	movzbl	_ZGVZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %eax
	testb	%al, %al
	je	.L1587
.L1556:
	movq	8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	testq	%rcx, %rcx
	je	.L1558
	movq	GImGui(%rip), %rax
	movq	$0, _ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
.L1558:
	xorl	%ecx, %ecx
	call	*__imp_OpenClipboard(%rip)
	testl	%eax, %eax
	je	.L1561
	movl	$13, %ecx
	call	*__imp_GetClipboardData(%rip)
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1561
	movq	%rax, %rcx
	call	*__imp_GlobalLock(%rip)
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L1562
	xorl	%edx, %edx
	movq	%rax, %rcx
	call	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	leal	1(%rax), %esi
	movl	4+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %eax
	cmpl	%eax, %esi
	jle	.L1567
	testl	%eax, %eax
	movl	$8, %ebp
	je	.L1565
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	addl	%eax, %ebp
.L1565:
	cmpl	%ebp, %esi
	jl	.L1588
	movl	%esi, %ebp
.L1566:
	movq	GImGui(%rip), %rax
	movslq	%ebp, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	movq	%rax, %r12
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1570
	movslq	_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	call	memcpy
	movq	8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1570
	subl	$1, 844(%rax)
.L1570:
	call	*240(%rax)
	movq	%r12, 8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	movl	%ebp, 4+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	jmp	.L1564
	.p2align 4,,10
.L1588:
	cmpl	%ebp, %eax
	jl	.L1566
	.p2align 4,,10
.L1567:
	movq	8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %r12
.L1564:
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	movl	%esi, %edx
	movl	%esi, _ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	movq	%r12, %rcx
	call	_Z15ImTextStrToUtf8PciPKtS1_
.L1562:
	movq	%rbx, %rcx
	call	*__imp_GlobalUnlock(%rip)
	call	*__imp_CloseClipboard(%rip)
	movq	8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L1587:
	leaq	_ZGVZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L1556
	leaq	_ZGVZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	movq	$0, _ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	movq	$0, 8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	call	__cxa_guard_release
	leaq	__tcf_0(%rip), %rcx
	call	atexit
	jmp	.L1556
	.p2align 4,,10
.L1561:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui23ColorConvertU32ToFloat4Ej
	.def	_ZN5ImGui23ColorConvertU32ToFloat4Ej;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui23ColorConvertU32ToFloat4Ej
_ZN5ImGui23ColorConvertU32ToFloat4Ej:
.LFB584:
	.seh_endprologue
	pxor	%xmm1, %xmm1
	movss	.LC82(%rip), %xmm2
	pxor	%xmm0, %xmm0
	movq	%rcx, %rax
	movzbl	%dl, %ecx
	movl	%edx, %r8d
	cvtsi2ss	%ecx, %xmm1
	movzbl	%dh, %ecx
	shrl	$16, %r8d
	movzbl	%r8b, %r8d
	shrl	$24, %edx
	cvtsi2ss	%edx, %xmm0
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
	movss	%xmm1, (%rax)
	pxor	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm1
	movss	%xmm0, 12(%rax)
	mulss	%xmm2, %xmm1
	movss	%xmm1, 4(%rax)
	pxor	%xmm1, %xmm1
	cvtsi2ss	%r8d, %xmm1
	mulss	%xmm2, %xmm1
	movss	%xmm1, 8(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	.def	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4:
.LFB585:
	.seh_endprologue
	pxor	%xmm1, %xmm1
	xorl	%eax, %eax
	movss	(%rcx), %xmm0
	ucomiss	%xmm0, %xmm1
	ja	.L1591
	ucomiss	.LC18(%rip), %xmm0
	movl	$255, %eax
	jbe	.L1609
.L1591:
	movss	4(%rcx), %xmm0
	ucomiss	%xmm0, %xmm1
	ja	.L1592
	ucomiss	.LC18(%rip), %xmm0
	jbe	.L1606
	orb	$-1, %ah
.L1592:
	movss	8(%rcx), %xmm0
	ucomiss	%xmm0, %xmm1
	ja	.L1595
	ucomiss	.LC18(%rip), %xmm0
	jbe	.L1607
	orl	$16711680, %eax
.L1595:
	movss	12(%rcx), %xmm0
	ucomiss	%xmm0, %xmm1
	ja	.L1590
	ucomiss	.LC18(%rip), %xmm0
	jbe	.L1608
	orl	$-16777216, %eax
.L1590:
	ret
	.p2align 4,,10
.L1608:
	mulss	.LC19(%rip), %xmm0
	addss	.LC17(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	sall	$24, %edx
	orl	%edx, %eax
	ret
	.p2align 4,,10
.L1609:
	mulss	.LC19(%rip), %xmm0
	addss	.LC17(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	jmp	.L1591
	.p2align 4,,10
.L1606:
	mulss	.LC19(%rip), %xmm0
	addss	.LC17(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	sall	$8, %edx
	orl	%edx, %eax
	jmp	.L1592
	.p2align 4,,10
.L1607:
	mulss	.LC19(%rip), %xmm0
	addss	.LC17(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	sall	$16, %edx
	orl	%edx, %eax
	jmp	.L1595
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11GetColorU32Eif
	.def	_ZN5ImGui11GetColorU32Eif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetColorU32Eif
_ZN5ImGui11GetColorU32Eif:
.LFB586:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	pxor	%xmm0, %xmm0
	mulss	5120(%rdx), %xmm1
	movslq	%ecx, %rax
	addq	$328, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm4
	movss	4(%rax), %xmm3
	movss	8(%rax), %xmm2
	mulss	12(%rax), %xmm1
	xorl	%eax, %eax
	ucomiss	%xmm4, %xmm0
	ja	.L1611
	ucomiss	.LC18(%rip), %xmm4
	movl	$255, %eax
	jbe	.L1629
.L1611:
	ucomiss	%xmm3, %xmm0
	ja	.L1612
	ucomiss	.LC18(%rip), %xmm3
	jbe	.L1626
	orb	$-1, %ah
.L1612:
	ucomiss	%xmm2, %xmm0
	ja	.L1615
	ucomiss	.LC18(%rip), %xmm2
	jbe	.L1627
	orl	$16711680, %eax
.L1615:
	ucomiss	%xmm1, %xmm0
	ja	.L1610
	ucomiss	.LC18(%rip), %xmm1
	jbe	.L1628
	orl	$-16777216, %eax
.L1610:
	ret
	.p2align 4,,10
.L1628:
	mulss	.LC19(%rip), %xmm1
	addss	.LC17(%rip), %xmm1
	cvttss2si	%xmm1, %edx
	sall	$24, %edx
	orl	%edx, %eax
	ret
	.p2align 4,,10
.L1629:
	mulss	.LC19(%rip), %xmm4
	addss	.LC17(%rip), %xmm4
	cvttss2si	%xmm4, %eax
	jmp	.L1611
	.p2align 4,,10
.L1626:
	mulss	.LC19(%rip), %xmm3
	addss	.LC17(%rip), %xmm3
	cvttss2si	%xmm3, %edx
	sall	$8, %edx
	orl	%edx, %eax
	jmp	.L1612
	.p2align 4,,10
.L1627:
	mulss	.LC19(%rip), %xmm2
	addss	.LC17(%rip), %xmm2
	cvttss2si	%xmm2, %edx
	sall	$16, %edx
	orl	%edx, %eax
	jmp	.L1615
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11GetColorU32ERK6ImVec4
	.def	_ZN5ImGui11GetColorU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetColorU32ERK6ImVec4
_ZN5ImGui11GetColorU32ERK6ImVec4:
.LFB587:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	pxor	%xmm1, %xmm1
	movss	(%rcx), %xmm4
	movss	4(%rcx), %xmm3
	movss	5120(%rax), %xmm0
	xorl	%eax, %eax
	ucomiss	%xmm4, %xmm1
	movss	8(%rcx), %xmm2
	mulss	12(%rcx), %xmm0
	ja	.L1631
	ucomiss	.LC18(%rip), %xmm4
	movl	$255, %eax
	jbe	.L1649
.L1631:
	ucomiss	%xmm3, %xmm1
	ja	.L1632
	ucomiss	.LC18(%rip), %xmm3
	jbe	.L1646
	orb	$-1, %ah
.L1632:
	ucomiss	%xmm2, %xmm1
	ja	.L1635
	ucomiss	.LC18(%rip), %xmm2
	jbe	.L1647
	orl	$16711680, %eax
.L1635:
	ucomiss	%xmm0, %xmm1
	ja	.L1630
	ucomiss	.LC18(%rip), %xmm0
	jbe	.L1648
	orl	$-16777216, %eax
.L1630:
	ret
	.p2align 4,,10
.L1648:
	mulss	.LC19(%rip), %xmm0
	addss	.LC17(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	sall	$24, %edx
	orl	%edx, %eax
	ret
	.p2align 4,,10
.L1649:
	mulss	.LC19(%rip), %xmm4
	addss	.LC17(%rip), %xmm4
	cvttss2si	%xmm4, %eax
	jmp	.L1631
	.p2align 4,,10
.L1646:
	mulss	.LC19(%rip), %xmm3
	addss	.LC17(%rip), %xmm3
	cvttss2si	%xmm3, %edx
	sall	$8, %edx
	orl	%edx, %eax
	jmp	.L1632
	.p2align 4,,10
.L1647:
	mulss	.LC19(%rip), %xmm2
	addss	.LC17(%rip), %xmm2
	cvttss2si	%xmm2, %edx
	sall	$16, %edx
	orl	%edx, %eax
	jmp	.L1635
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_
	.def	_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_
_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_:
.LFB588:
	.seh_endprologue
	ucomiss	%xmm1, %xmm2
	ja	.L1655
	movss	.LC83(%rip), %xmm5
	movaps	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movaps	%xmm3, %xmm1
	pxor	%xmm3, %xmm3
.L1651:
	ucomiss	%xmm0, %xmm2
	ja	.L1652
	movaps	%xmm3, %xmm5
	movaps	%xmm2, %xmm3
	movaps	%xmm0, %xmm2
	movaps	%xmm3, %xmm0
.L1652:
	movaps	%xmm0, %xmm3
	subss	%xmm1, %xmm0
	movaps	%xmm2, %xmm4
	movq	40(%rsp), %rax
	minss	%xmm1, %xmm3
	movss	.LC86(%rip), %xmm1
	subss	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	mulss	.LC85(%rip), %xmm4
	addss	%xmm1, %xmm4
	addss	%xmm2, %xmm1
	divss	%xmm4, %xmm0
	divss	%xmm1, %xmm3
	addss	%xmm5, %xmm0
	andps	.LC87(%rip), %xmm0
	movss	%xmm0, (%r9)
	movss	%xmm3, (%rax)
	movq	48(%rsp), %rax
	movss	%xmm2, (%rax)
	ret
	.p2align 4,,10
.L1655:
	movss	.LC84(%rip), %xmm5
	movss	.LC1(%rip), %xmm3
	jmp	.L1651
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	.def	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_:
.LFB589:
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	ucomiss	.LC0(%rip), %xmm1
	movaps	%xmm1, %xmm7
	movaps	%xmm2, %xmm6
	jp	.L1659
	jne	.L1659
	movq	136(%rsp), %rax
	movss	%xmm2, (%rax)
	movq	128(%rsp), %rax
	movss	%xmm2, (%rax)
	movss	%xmm2, (%r9)
.L1658:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	addq	$88, %rsp
	ret
	.p2align 4,,10
.L1659:
	movss	.LC18(%rip), %xmm1
	movq	%r9, 40(%rsp)
	call	fmodf
	divss	.LC88(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	pxor	%xmm1, %xmm1
	movss	.LC18(%rip), %xmm2
	movaps	%xmm7, %xmm3
	movq	40(%rsp), %r9
	movaps	%xmm2, %xmm5
	movaps	%xmm2, %xmm4
	cvtsi2ss	%eax, %xmm1
	cmpl	$4, %eax
	subss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm7, %xmm1
	subss	%xmm0, %xmm5
	mulss	%xmm0, %xmm3
	mulss	%xmm6, %xmm1
	mulss	%xmm5, %xmm7
	subss	%xmm3, %xmm4
	subss	%xmm7, %xmm2
	movaps	%xmm4, %xmm3
	mulss	%xmm6, %xmm3
	mulss	%xmm6, %xmm2
	ja	.L1662
	leaq	.L1664(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L1664:
	.long	.L1663-.L1664
	.long	.L1665-.L1664
	.long	.L1666-.L1664
	.long	.L1667-.L1664
	.long	.L1668-.L1664
	.text
	.p2align 4,,10
.L1667:
	movq	128(%rsp), %rax
	movss	%xmm1, (%r9)
	movss	%xmm3, (%rax)
	movq	136(%rsp), %rax
	movss	%xmm6, (%rax)
	jmp	.L1658
	.p2align 4,,10
.L1666:
	movq	128(%rsp), %rax
	movss	%xmm1, (%r9)
	movss	%xmm6, (%rax)
	movq	136(%rsp), %rax
	movss	%xmm2, (%rax)
	jmp	.L1658
	.p2align 4,,10
.L1665:
	movq	128(%rsp), %rax
	movss	%xmm3, (%r9)
	movss	%xmm6, (%rax)
	movq	136(%rsp), %rax
	movss	%xmm1, (%rax)
	jmp	.L1658
	.p2align 4,,10
.L1663:
	movq	128(%rsp), %rax
	movss	%xmm6, (%r9)
	movss	%xmm2, (%rax)
	movq	136(%rsp), %rax
	movss	%xmm1, (%rax)
	jmp	.L1658
	.p2align 4,,10
.L1668:
	movq	128(%rsp), %rax
	movss	%xmm2, (%r9)
	movss	%xmm1, (%rax)
	movq	136(%rsp), %rax
	movss	%xmm6, (%rax)
	jmp	.L1658
	.p2align 4,,10
.L1662:
	movq	128(%rsp), %rax
	movss	%xmm6, (%r9)
	movss	%xmm1, (%rax)
	movq	136(%rsp), %rax
	movss	%xmm3, (%rax)
	jmp	.L1658
	.seh_endproc
	.p2align 4,,15
	.globl	_Z10ImFileOpenPKcS0_
	.def	_Z10ImFileOpenPKcS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10ImFileOpenPKcS0_
_Z10ImFileOpenPKcS0_:
.LFB590:
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
	cmpb	$0, (%rcx)
	movq	%rcx, %rdi
	movq	%rdx, %rbp
	je	.L1684
	leaq	44(%rsp), %rsi
	movq	%rcx, %rbx
	xorl	%r13d, %r13d
	jmp	.L1674
	.p2align 4,,10
.L1699:
	cmpl	$65535, %eax
	ja	.L1673
	leal	2(%r13), %eax
	movl	%r12d, %r13d
	movl	%eax, %r12d
.L1673:
	cmpb	$0, (%rbx)
	je	.L1671
.L1674:
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	leal	1(%r13), %r12d
	cltq
	addq	%rax, %rbx
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	.L1699
.L1671:
	cmpb	$0, 0(%rbp)
	je	.L1685
	leaq	44(%rsp), %rsi
	movq	%rbp, %rbx
	xorl	%r13d, %r13d
	jmp	.L1678
	.p2align 4,,10
.L1700:
	cmpl	$65535, %eax
	ja	.L1677
	leal	2(%r13), %eax
	movl	%r14d, %r13d
	movl	%eax, %r14d
.L1677:
	cmpb	$0, (%rbx)
	je	.L1675
.L1678:
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	leal	1(%r13), %r14d
	cltq
	addq	%rax, %rbx
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	.L1700
.L1675:
	movq	GImGui(%rip), %rax
	leal	(%r14,%r12), %esi
	movl	$8, %ecx
	addl	$1, 844(%rax)
	cmpl	$8, %esi
	cmovge	%esi, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
.LEHB5:
	call	*232(%rax)
	xorl	%ecx, %ecx
	movq	%rax, %rbx
	movq	GImGui(%rip), %rax
	call	*240(%rax)
.LEHE5:
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	movl	%r12d, %edx
	movq	%rbx, %rcx
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.150
	cmpl	%r12d, %esi
	jle	.L1682
	movslq	%r12d, %r12
	xorl	%r9d, %r9d
	movq	%rbp, %r8
	leaq	(%rbx,%r12,2), %rsi
	movl	%r14d, %edx
	movq	%rsi, %rcx
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.150
.L1683:
	movq	%rsi, %rdx
	movq	%rbx, %rcx
.LEHB6:
	call	*__imp__wfopen(%rip)
.LEHE6:
	testq	%rbx, %rbx
	movq	%rax, %rsi
	je	.L1670
	movq	GImGui(%rip), %rdx
	movq	%rbx, %rcx
	subl	$1, 844(%rdx)
	call	*240(%rdx)
.L1670:
	movq	%rsi, %rax
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
.L1682:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
.LEHB7:
	call	_assert
	movslq	%r12d, %r12
	movq	%rbp, %r8
	movl	%r14d, %edx
	leaq	(%rbx,%r12,2), %rsi
	xorl	%r9d, %r9d
	movq	%rsi, %rcx
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.150
	movl	$856, %r8d
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	call	_assert
.LEHE7:
	jmp	.L1683
.L1684:
	movl	$1, %r12d
	jmp	.L1671
.L1685:
	movl	$1, %r14d
	jmp	.L1675
.L1686:
	testq	%rbx, %rbx
	movq	%rax, %rsi
	je	.L1681
	movq	GImGui(%rip), %rdx
	movq	%rbx, %rcx
	subl	$1, 844(%rdx)
	call	*240(%rdx)
.L1681:
	movq	%rsi, %rcx
.LEHB8:
	call	_Unwind_Resume
	nop
.LEHE8:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA590:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE590-.LLSDACSB590
.LLSDACSB590:
	.uleb128 .LEHB5-.LFB590
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB590
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L1686-.LFB590
	.uleb128 0
	.uleb128 .LEHB7-.LFB590
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L1686-.LFB590
	.uleb128 0
	.uleb128 .LEHB8-.LFB590
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE590:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC89:
	.ascii "wt\0"
.LC91:
	.ascii "###\0"
.LC92:
	.ascii "[%s]\12\0"
.LC93:
	.ascii "Pos=%d,%d\12\0"
.LC94:
	.ascii "Size=%d,%d\12\0"
.LC95:
	.ascii "Collapsed=%d\12\0"
.LC96:
	.ascii "\12\0"
	.text
	.p2align 4,,15
	.def	_ZL21SaveIniSettingsToDiskPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21SaveIniSettingsToDiskPKc
_ZL21SaveIniSettingsToDiskPKc:
.LFB678:
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
	movq	GImGui(%rip), %rsi
	movl	$0x00000000, 6128(%rsi)
	testq	%rcx, %rcx
	movq	%rcx, 40(%rsp)
	je	.L1701
	movl	5976(%rsi), %eax
	testl	%eax, %eax
	je	.L1704
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	.p2align 4,,10
.L1711:
	cmpl	%eax, %edi
	jge	.L1735
.L1705:
	movq	5984(%rsi), %rax
	movq	(%rax,%rbp), %r14
	movl	12(%r14), %ebx
	andl	$256, %ebx
	jne	.L1706
	movq	GImGui(%rip), %r12
	xorl	%edx, %edx
	movq	(%r14), %rcx
	call	_Z6ImHashPKvij.constprop.146
	movl	6112(%r12), %edx
	movl	%eax, %r13d
	testl	%edx, %edx
	je	.L1707
	xorl	%r15d, %r15d
	jmp	.L1710
	.p2align 4,,10
.L1708:
	movq	6120(%r12), %rdx
	addq	%r15, %rdx
	cmpl	8(%rdx), %r13d
	je	.L1709
	movl	6112(%r12), %edx
	addl	$1, %ebx
	addq	$32, %r15
	cmpl	%ebx, %edx
	je	.L1707
.L1710:
	cmpl	%ebx, %edx
	jg	.L1708
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L1708
	.p2align 4,,10
.L1709:
	movq	28(%r14), %rax
	movq	%rax, 12(%rdx)
	movq	44(%r14), %rax
	movq	%rax, 20(%rdx)
	movzbl	139(%r14), %eax
	movb	%al, 28(%rdx)
.L1706:
	movl	5976(%rsi), %eax
	addl	$1, %edi
	addq	$8, %rbp
	cmpl	%edi, %eax
	jne	.L1711
.L1704:
	movq	40(%rsp), %rcx
	leaq	.LC89(%rip), %rdx
	call	_Z10ImFileOpenPKcS0_
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1701
	movl	6112(%rsi), %eax
	testl	%eax, %eax
	je	.L1713
	leaq	.LC2(%rip), %r14
	xorl	%edi, %edi
	leaq	.LC3(%rip), %r13
	leaq	.LC91(%rip), %r12
	jmp	.L1718
	.p2align 4,,10
.L1714:
	movq	%rdi, %rbx
	salq	$5, %rbx
	addq	6120(%rsi), %rbx
	movss	12(%rbx), %xmm0
	ucomiss	.LC90(%rip), %xmm0
	jp	.L1720
	je	.L1715
.L1720:
	movq	(%rbx), %r15
	movq	%r12, %rdx
	movq	%r15, %rcx
	call	strstr
	movq	%r15, %r8
	movq	%rbp, %rcx
	leaq	.LC92(%rip), %rdx
	testq	%rax, %rax
	cmovne	%rax, %r8
	call	_Z7fprintfP6_iobufPKcz
	cvttss2si	16(%rbx), %r9d
	leaq	.LC93(%rip), %rdx
	movq	%rbp, %rcx
	cvttss2si	12(%rbx), %r8d
	call	_Z7fprintfP6_iobufPKcz
	cvttss2si	24(%rbx), %r9d
	leaq	.LC94(%rip), %rdx
	movq	%rbp, %rcx
	cvttss2si	20(%rbx), %r8d
	call	_Z7fprintfP6_iobufPKcz
	movzbl	28(%rbx), %r8d
	leaq	.LC95(%rip), %rdx
	movq	%rbp, %rcx
	call	_Z7fprintfP6_iobufPKcz
	leaq	.LC96(%rip), %rdx
	movq	%rbp, %rcx
	call	_Z7fprintfP6_iobufPKcz
.L1715:
	movl	6112(%rsi), %eax
	leal	1(%rdi), %edx
	addq	$1, %rdi
	cmpl	%edx, %eax
	je	.L1713
.L1718:
	cmpl	%edi, %eax
	jg	.L1714
	movl	$856, %r8d
	movq	%r14, %rdx
	movq	%r13, %rcx
	call	_assert
	jmp	.L1714
	.p2align 4,,10
.L1713:
	movq	%rbp, %rcx
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	fclose
	.p2align 4,,10
.L1707:
	movq	28(%r14), %rax
	movq	%rax, 12
	ud2
	.p2align 4,,10
.L1735:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L1705
	.p2align 4,,10
.L1701:
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
	.seh_endproc
	.section .rdata,"dr"
.LC97:
	.ascii "filename && file_open_mode\0"
	.text
	.p2align 4,,15
	.globl	_Z18ImFileLoadToMemoryPKcS0_Pii
	.def	_Z18ImFileLoadToMemoryPKcS0_Pii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18ImFileLoadToMemoryPKcS0_Pii
_Z18ImFileLoadToMemoryPKcS0_Pii:
.LFB591:
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
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %rdi
	movl	%r9d, %r13d
	je	.L1747
	testq	%rdx, %rdx
	je	.L1747
.L1737:
	testq	%rdi, %rdi
	je	.L1739
	movl	$0, (%rdi)
.L1739:
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	call	_Z10ImFileOpenPKcS0_
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1746
	xorl	%edx, %edx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	fseek
	testl	%eax, %eax
	jne	.L1742
	movq	%rbx, %rcx
	call	ftell
	cmpl	$-1, %eax
	movl	%eax, %ebp
	je	.L1742
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rcx
	call	fseek
	testl	%eax, %eax
	jne	.L1742
	movq	GImGui(%rip), %rax
	leal	0(%rbp,%r13), %ecx
	movslq	%ecx, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L1760
	movslq	%ebp, %r12
	movq	%rbx, %r9
	movl	$1, %edx
	movq	%r12, %r8
	movq	%rax, %rcx
	call	fread
	cmpq	%rax, %r12
	jne	.L1761
	testl	%r13d, %r13d
	jg	.L1762
	movq	%rbx, %rcx
	call	fclose
	testq	%rdi, %rdi
	je	.L1736
.L1763:
	movl	%ebp, (%rdi)
.L1736:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L1762:
	leaq	(%rsi,%r12), %rcx
	xorl	%edx, %edx
	movslq	%r13d, %r8
	call	memset
	movq	%rbx, %rcx
	call	fclose
	testq	%rdi, %rdi
	jne	.L1763
	jmp	.L1736
	.p2align 4,,10
.L1747:
	leaq	.LC5(%rip), %rdx
	movl	$1319, %r8d
	leaq	.LC97(%rip), %rcx
	call	_assert
	jmp	.L1737
	.p2align 4,,10
.L1742:
	movq	%rbx, %rcx
	xorl	%esi, %esi
	call	fclose
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L1746:
	xorl	%esi, %esi
	jmp	.L1736
	.p2align 4,,10
.L1761:
	movq	%rbx, %rcx
	call	fclose
	movq	GImGui(%rip), %rax
	movq	%rsi, %rcx
	xorl	%esi, %esi
	subl	$1, 844(%rax)
	call	*240(%rax)
	jmp	.L1736
	.p2align 4,,10
.L1760:
	movq	%rbx, %rcx
	call	fclose
	jmp	.L1736
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage5ClearEv
	.def	_ZN12ImGuiStorage5ClearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage5ClearEv
_ZN12ImGuiStorage5ClearEv:
.LFB592:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L1764
	movq	GImGui(%rip), %rax
	movq	$0, (%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 8(%rbx)
.L1764:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK12ImGuiStorage6GetIntEji
	.def	_ZNK12ImGuiStorage6GetIntEji;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK12ImGuiStorage6GetIntEji
_ZNK12ImGuiStorage6GetIntEji:
.LFB594:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movslq	(%rcx), %rbx
	movq	8(%rcx), %r11
	salq	$4, %rbx
	leaq	(%r11,%rbx), %rax
	sarq	$4, %rbx
.L1774:
	testl	%ebx, %ebx
	jle	.L1770
	movl	%ebx, %r9d
	sarl	%r9d
	movslq	%r9d, %rcx
	salq	$4, %rcx
	addq	%r11, %rcx
	cmpl	(%rcx), %edx
	jbe	.L1772
	jmp	.L1781
	.p2align 4,,10
.L1780:
	movl	%r9d, %r10d
	sarl	%r10d
	movslq	%r10d, %rcx
	salq	$4, %rcx
	addq	%r11, %rcx
	cmpl	(%rcx), %edx
	ja	.L1771
	movl	%r10d, %r9d
.L1772:
	testl	%r9d, %r9d
	jne	.L1780
.L1770:
	cmpq	%r11, %rax
	je	.L1775
	cmpl	%edx, (%r11)
	je	.L1782
.L1775:
	movl	%r8d, %eax
	popq	%rbx
	ret
	.p2align 4,,10
.L1781:
	movl	%r9d, %r10d
	movl	%ebx, %r9d
	.p2align 4,,10
.L1771:
	leaq	16(%rcx), %r11
	addl	$1, %r10d
	movl	%r9d, %ebx
	subl	%r10d, %ebx
	jmp	.L1774
	.p2align 4,,10
.L1782:
	movl	8(%r11), %r8d
	movl	%r8d, %eax
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK12ImGuiStorage7GetBoolEjb
	.def	_ZNK12ImGuiStorage7GetBoolEjb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK12ImGuiStorage7GetBoolEjb
_ZNK12ImGuiStorage7GetBoolEjb:
.LFB595:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movslq	(%rcx), %r11
	movq	8(%rcx), %r10
	salq	$4, %r11
	movzbl	%r8b, %r8d
	leaq	(%r10,%r11), %rbx
	sarq	$4, %r11
.L1788:
	testl	%r11d, %r11d
	jle	.L1784
	movl	%r11d, %ecx
	sarl	%ecx
	movslq	%ecx, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %edx
	jbe	.L1786
	jmp	.L1795
	.p2align 4,,10
.L1794:
	movl	%ecx, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %edx
	ja	.L1785
	movl	%r9d, %ecx
.L1786:
	testl	%ecx, %ecx
	jne	.L1794
.L1784:
	cmpq	%r10, %rbx
	je	.L1789
	cmpl	(%r10), %edx
	je	.L1796
.L1789:
	testl	%r8d, %r8d
	setne	%al
	popq	%rbx
	ret
	.p2align 4,,10
.L1795:
	movl	%ecx, %r9d
	movl	%r11d, %ecx
	.p2align 4,,10
.L1785:
	leaq	16(%rax), %r10
	addl	$1, %r9d
	subl	%r9d, %ecx
	movl	%ecx, %r11d
	jmp	.L1788
	.p2align 4,,10
.L1796:
	movl	8(%r10), %r8d
	testl	%r8d, %r8d
	setne	%al
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK12ImGuiStorage8GetFloatEjf
	.def	_ZNK12ImGuiStorage8GetFloatEjf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK12ImGuiStorage8GetFloatEjf
_ZNK12ImGuiStorage8GetFloatEjf:
.LFB596:
	.seh_endprologue
	movslq	(%rcx), %r10
	movq	8(%rcx), %r9
	salq	$4, %r10
	leaq	(%r9,%r10), %r11
	sarq	$4, %r10
.L1802:
	testl	%r10d, %r10d
	jle	.L1798
	movl	%r10d, %ecx
	sarl	%ecx
	movslq	%ecx, %rax
	salq	$4, %rax
	addq	%r9, %rax
	cmpl	(%rax), %edx
	jbe	.L1800
	jmp	.L1809
	.p2align 4,,10
.L1808:
	movl	%ecx, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r9, %rax
	cmpl	(%rax), %edx
	ja	.L1799
	movl	%r8d, %ecx
.L1800:
	testl	%ecx, %ecx
	jne	.L1808
.L1798:
	cmpq	%r9, %r11
	je	.L1803
	cmpl	%edx, (%r9)
	je	.L1810
.L1803:
	movaps	%xmm2, %xmm0
	ret
	.p2align 4,,10
.L1809:
	movl	%ecx, %r8d
	movl	%r10d, %ecx
	.p2align 4,,10
.L1799:
	leaq	16(%rax), %r9
	addl	$1, %r8d
	subl	%r8d, %ecx
	movl	%ecx, %r10d
	jmp	.L1802
	.p2align 4,,10
.L1810:
	movss	8(%r9), %xmm2
	movaps	%xmm2, %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK12ImGuiStorage10GetVoidPtrEj
	.def	_ZNK12ImGuiStorage10GetVoidPtrEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK12ImGuiStorage10GetVoidPtrEj
_ZNK12ImGuiStorage10GetVoidPtrEj:
.LFB597:
	.seh_endprologue
	movslq	(%rcx), %r10
	movq	8(%rcx), %r9
	salq	$4, %r10
	leaq	(%r9,%r10), %r11
	sarq	$4, %r10
.L1816:
	testl	%r10d, %r10d
	jle	.L1812
	movl	%r10d, %ecx
	sarl	%ecx
	movslq	%ecx, %rax
	salq	$4, %rax
	addq	%r9, %rax
	cmpl	(%rax), %edx
	jbe	.L1814
	jmp	.L1825
	.p2align 4,,10
.L1824:
	movl	%ecx, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r9, %rax
	cmpl	(%rax), %edx
	ja	.L1813
	movl	%r8d, %ecx
.L1814:
	testl	%ecx, %ecx
	jne	.L1824
.L1812:
	cmpq	%r9, %r11
	je	.L1820
	cmpl	%edx, (%r9)
	jne	.L1820
	movq	8(%r9), %rax
	ret
	.p2align 4,,10
.L1825:
	movl	%ecx, %r8d
	movl	%r10d, %ecx
	.p2align 4,,10
.L1813:
	leaq	16(%rax), %r9
	addl	$1, %r8d
	subl	%r8d, %ecx
	movl	%ecx, %r10d
	jmp	.L1816
	.p2align 4,,10
.L1820:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage9SetAllIntEi
	.def	_ZN12ImGuiStorage9SetAllIntEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage9SetAllIntEi
_ZN12ImGuiStorage9SetAllIntEi:
.LFB606:
	.seh_endprologue
	movl	(%rcx), %eax
	testl	%eax, %eax
	jle	.L1826
	leal	-1(%rax), %r9d
	xorl	%eax, %eax
	addq	$1, %r9
	salq	$4, %r9
	.p2align 4,,10
.L1828:
	movq	8(%rcx), %r8
	movl	%edx, 8(%r8,%rax)
	addq	$16, %rax
	cmpq	%rax, %r9
	jne	.L1828
.L1826:
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN15ImGuiTextFilter9TextRange5splitEcR8ImVectorIS0_E
	.def	_ZN15ImGuiTextFilter9TextRange5splitEcR8ImVectorIS0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN15ImGuiTextFilter9TextRange5splitEcR8ImVectorIS0_E
_ZN15ImGuiTextFilter9TextRange5splitEcR8ImVectorIS0_E:
.LFB611:
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
	movl	4(%r8), %eax
	testl	%eax, %eax
	movq	%rcx, %rbp
	movq	%r8, %rdi
	movl	%edx, %r12d
	jns	.L1831
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8(%rdi), %rcx
	movq	%rax, %rbx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1834
	movslq	(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1834
	subl	$1, 844(%rax)
.L1834:
	call	*240(%rax)
	movq	%rbx, 8(%rdi)
	movl	$0, 4(%rdi)
.L1831:
	movq	0(%rbp), %r13
	movl	$0, (%rdi)
	movq	8(%rbp), %rax
	movq	%r13, %rsi
	cmpq	%rax, %r13
	jb	.L1835
	jmp	.L1830
	.p2align 4,,10
.L1837:
	cmpq	%rbx, %rax
	movq	%rbx, %rsi
	jbe	.L1861
.L1835:
	cmpb	%r12b, (%rsi)
	leaq	1(%rsi), %rbx
	jne	.L1837
	movslq	(%rdi), %rax
	cmpl	4(%rdi), %eax
	je	.L1838
	movq	8(%rdi), %r14
.L1839:
	leal	1(%rax), %edx
	salq	$4, %rax
	addq	%r14, %rax
	movl	%edx, (%rdi)
	movq	%r13, (%rax)
	movq	%rbx, %r13
	movq	%rsi, 8(%rax)
	movq	8(%rbp), %rax
	movq	%rbx, %rsi
	cmpq	%rbx, %rax
	ja	.L1835
.L1861:
	cmpq	%rbx, %r13
	je	.L1830
	movslq	(%rdi), %rax
	cmpl	4(%rdi), %eax
	je	.L1845
	movq	8(%rdi), %rsi
.L1846:
	leal	1(%rax), %edx
	salq	$4, %rax
	addq	%rsi, %rax
	movl	%edx, (%rdi)
	movq	%r13, (%rax)
	movq	%rbx, 8(%rax)
.L1830:
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
.L1845:
	leal	1(%rax), %ebp
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1847
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1847:
	cmpl	%edx, %ebp
	movq	GImGui(%rip), %rax
	cmovl	%edx, %ebp
	movslq	%ebp, %rcx
	addl	$1, 844(%rax)
	salq	$4, %rcx
	call	*232(%rax)
	movq	8(%rdi), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1850
	movslq	(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1850
	subl	$1, 844(%rax)
.L1850:
	call	*240(%rax)
	movq	%rsi, 8(%rdi)
	movslq	(%rdi), %rax
	movl	%ebp, 4(%rdi)
	jmp	.L1846
	.p2align 4,,10
.L1838:
	leal	1(%rax), %r15d
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1840
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1840:
	cmpl	%edx, %r15d
	movq	GImGui(%rip), %rax
	cmovl	%edx, %r15d
	movslq	%r15d, %rcx
	addl	$1, 844(%rax)
	salq	$4, %rcx
	call	*232(%rax)
	movq	8(%rdi), %rcx
	movq	%rax, %r14
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1843
	movslq	(%rdi), %r8
	movq	%rcx, %rdx
	movq	%r14, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1843
	subl	$1, 844(%rax)
.L1843:
	call	*240(%rax)
	movq	%r14, 8(%rdi)
	movslq	(%rdi), %rax
	movl	%r15d, 4(%rdi)
	jmp	.L1839
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN15ImGuiTextFilter5BuildEv
	.def	_ZN15ImGuiTextFilter5BuildEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN15ImGuiTextFilter5BuildEv
_ZN15ImGuiTextFilter5BuildEv:
.LFB612:
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
	movl	260(%rcx), %eax
	leaq	256(%rcx), %rbx
	testl	%eax, %eax
	movq	%rcx, %rdi
	jns	.L1863
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	264(%rdi), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1866
	movslq	256(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$4, %r8
	call	memcpy
	movq	264(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1866
	subl	$1, 844(%rax)
.L1866:
	call	*240(%rax)
	movq	%rsi, 264(%rdi)
	movl	$0, 260(%rdi)
.L1863:
	movl	$0, 256(%rdi)
	movq	%rdi, %rcx
	call	strlen
	leaq	32(%rsp), %rcx
	movq	%rbx, %r8
	movl	$44, %edx
	addq	%rdi, %rax
	movq	%rdi, 32(%rsp)
	movq	%rax, 40(%rsp)
	call	_ZN15ImGuiTextFilter9TextRange5splitEcR8ImVectorIS0_E
	movl	256(%rdi), %r10d
	movl	$0, 272(%rdi)
	testl	%r10d, %r10d
	je	.L1862
	leaq	.LC2(%rip), %rsi
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	leaq	.LC3(%rip), %rbx
	.p2align 4,,10
.L1883:
	cmpl	%ebp, %r10d
	jle	.L1897
.L1868:
	movq	264(%rdi), %r8
	addq	%r12, %r8
	movq	(%r8), %rcx
	movq	8(%r8), %rdx
	cmpq	%rcx, %rdx
	jbe	.L1869
	movzbl	(%rcx), %eax
	cmpb	$9, %al
	je	.L1870
	cmpb	$32, %al
	jne	.L1871
.L1870:
	leaq	1(%rcx), %rax
	.p2align 4,,10
.L1892:
	cmpq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rax, (%r8)
	je	.L1869
	movzbl	(%rax), %r9d
	addq	$1, %rax
	cmpb	$32, %r9b
	je	.L1892
	cmpb	$9, %r9b
	je	.L1892
.L1871:
	movzbl	-1(%rdx), %eax
	cmpb	$32, %al
	je	.L1884
	cmpb	$9, %al
	jne	.L1869
.L1884:
	leaq	-1(%rdx), %rax
	.p2align 4,,10
.L1875:
	cmpq	%rax, %rcx
	movq	%rax, %rdx
	movq	%rax, 8(%r8)
	jnb	.L1869
	movzbl	-1(%rax), %r9d
	subq	$1, %rax
	cmpb	$32, %r9b
	je	.L1875
	cmpb	$9, %r9b
	je	.L1875
.L1869:
	cmpl	%r10d, %ebp
	jge	.L1898
	movq	(%r8), %rax
	cmpq	%rdx, %rax
	je	.L1880
.L1881:
	cmpb	$45, (%rax)
	je	.L1880
	addl	$1, 272(%rdi)
.L1880:
	movl	256(%rdi), %r10d
	addl	$1, %ebp
	addq	$16, %r12
	cmpl	%ebp, %r10d
	jne	.L1883
.L1862:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L1898:
	movq	%rsi, %rdx
	movl	$856, %r8d
	movq	%rbx, %rcx
	call	_assert
	movq	264(%rdi), %rdx
	addq	%r12, %rdx
	movq	(%rdx), %rax
	cmpq	8(%rdx), %rax
	je	.L1880
	cmpl	256(%rdi), %ebp
	jl	.L1881
	movl	$856, %r8d
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_assert
	movq	264(%rdi), %rax
	movq	(%rax,%r12), %rax
	jmp	.L1881
	.p2align 4,,10
.L1897:
	movl	$856, %r8d
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_assert
	movl	256(%rdi), %r10d
	jmp	.L1868
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN15ImGuiTextFilterC2EPKc
	.def	_ZN15ImGuiTextFilterC2EPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN15ImGuiTextFilterC2EPKc
_ZN15ImGuiTextFilterC2EPKc:
.LFB608:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rbx
	movq	$0, 256(%rcx)
	movq	$0, 264(%rcx)
	je	.L1900
	movl	$256, %r8d
	call	strncpy
	movb	$0, 255(%rbx)
	movq	%rbx, %rcx
.LEHB9:
	call	_ZN15ImGuiTextFilter5BuildEv
.LEHE9:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L1900:
	movb	$0, (%rcx)
	movl	$0, 272(%rcx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L1904:
	movq	264(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L1903
	movq	GImGui(%rip), %rdx
	subl	$1, 844(%rdx)
	call	*240(%rdx)
.L1903:
	movq	%rsi, %rcx
.LEHB10:
	call	_Unwind_Resume
	nop
.LEHE10:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA608:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE608-.LLSDACSB608
.LLSDACSB608:
	.uleb128 .LEHB9-.LFB608
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L1904-.LFB608
	.uleb128 0
	.uleb128 .LEHB10-.LFB608
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE608:
	.text
	.seh_endproc
	.globl	_ZN15ImGuiTextFilterC1EPKc
	.def	_ZN15ImGuiTextFilterC1EPKc;	.scl	2;	.type	32;	.endef
	.set	_ZN15ImGuiTextFilterC1EPKc,_ZN15ImGuiTextFilterC2EPKc
	.section .rdata,"dr"
.LC98:
	.ascii "\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_
	.def	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_
_ZNK15ImGuiTextFilter10PassFilterEPKcS1_:
.LFB613:
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
	movl	256(%rcx), %eax
	testl	%eax, %eax
	movq	%rcx, 160(%rsp)
	movq	%r8, %r12
	movq	%rdx, 168(%rsp)
	je	.L1928
	movq	__imp_toupper(%rip), %r13
	leaq	.LC98(%rip), %rdx
	movq	$0, 56(%rsp)
	cmpq	$0, 168(%rsp)
	movl	$0, 44(%rsp)
	cmovne	168(%rsp), %rdx
	movq	%r13, %r15
	movq	%rdx, 168(%rsp)
	.p2align 4,,10
.L1930:
	cmpl	44(%rsp), %eax
	jle	.L1949
.L1912:
	movq	160(%rsp), %rdx
	movq	56(%rsp), %rax
	addq	264(%rdx), %rax
	movq	(%rax), %rbx
	movq	8(%rax), %r14
	cmpq	%r14, %rbx
	je	.L1913
	movzbl	(%rbx), %esi
	leaq	1(%rbx), %rax
	movq	%rax, 48(%rsp)
	cmpb	$45, %sil
	je	.L1950
	testq	%r14, %r14
	je	.L1951
.L1922:
	movsbl	%sil, %ecx
	call	*%r13
	movq	168(%rsp), %rsi
	movsbl	%al, %eax
	movl	%eax, 40(%rsp)
	.p2align 4,,10
.L1923:
	testq	%r12, %r12
	je	.L1952
	cmpq	%rsi, %r12
	jbe	.L1913
	movsbl	(%rsi), %ecx
.L1925:
	call	*%r13
	addq	$1, %rsi
	cmpl	40(%rsp), %eax
	jne	.L1923
	movq	48(%rsp), %rbx
	cmpq	%rbx, %r14
	jbe	.L1927
	movq	%rsi, %rdi
	jmp	.L1929
	.p2align 4,,10
.L1953:
	addq	$1, %rbx
	addq	$1, %rdi
	cmpq	%rbx, %r14
	je	.L1928
.L1929:
	movsbl	(%rdi), %ecx
	call	*%r13
	movsbl	(%rbx), %ecx
	movl	%eax, %ebp
	call	*%r13
	cmpl	%eax, %ebp
	je	.L1953
.L1927:
	cmpq	%rbx, %r14
	jne	.L1923
	.p2align 4,,10
.L1928:
	movl	$1, %eax
.L1908:
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
.L1952:
	movsbl	(%rsi), %ecx
	testb	%cl, %cl
	jne	.L1925
.L1913:
	movq	160(%rsp), %rax
	addl	$1, 44(%rsp)
	movl	44(%rsp), %edx
	addq	$16, 56(%rsp)
	movl	256(%rax), %eax
	cmpl	%edx, %eax
	jne	.L1930
	movq	160(%rsp), %rax
	movl	272(%rax), %eax
	testl	%eax, %eax
	sete	%al
	jmp	.L1908
	.p2align 4,,10
.L1949:
	leaq	.LC2(%rip), %rdx
	movl	$857, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L1912
	.p2align 4,,10
.L1950:
	testq	%r14, %r14
	je	.L1954
.L1915:
	movsbl	1(%rbx), %ecx
	call	*%r15
	leaq	2(%rbx), %rdx
	movq	168(%rsp), %rbx
	movsbl	%al, %eax
	movq	%rdx, 64(%rsp)
	movl	%eax, 40(%rsp)
	movq	%r14, %rax
	subq	%rdx, %rax
	movq	%rax, 72(%rsp)
	.p2align 4,,10
.L1916:
	testq	%r12, %r12
	je	.L1955
	cmpq	%rbx, %r12
	jbe	.L1913
	movsbl	(%rbx), %ecx
.L1918:
	call	*%r15
	addq	$1, %rbx
	cmpl	40(%rsp), %eax
	jne	.L1916
	movq	64(%rsp), %rsi
	cmpq	%r14, %rsi
	jnb	.L1920
	movq	72(%rsp), %rax
	movq	%rbx, 48(%rsp)
	addq	%rbx, %rax
	movq	%rax, %rbp
	jmp	.L1921
	.p2align 4,,10
.L1956:
	addq	$1, %rbx
	addq	$1, %rsi
	cmpq	%rbp, %rbx
	je	.L1945
.L1921:
	movsbl	(%rbx), %ecx
	call	*%r15
	movsbl	(%rsi), %ecx
	movl	%eax, %edi
	call	*%r15
	cmpl	%eax, %edi
	je	.L1956
.L1945:
	movq	48(%rsp), %rbx
.L1920:
	cmpq	%rsi, %r14
	jne	.L1916
	xorl	%eax, %eax
	jmp	.L1908
	.p2align 4,,10
.L1955:
	movsbl	(%rbx), %ecx
	testb	%cl, %cl
	je	.L1913
	jmp	.L1918
	.p2align 4,,10
.L1951:
	movq	%rbx, %rcx
	call	strlen
	leaq	(%rbx,%rax), %r14
	jmp	.L1922
.L1954:
	movq	%rax, %rcx
	movq	%rax, %r14
	call	strlen
	addq	%rax, %r14
	jmp	.L1915
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN15ImGuiTextBuffer7appendvEPKcPc
	.def	_ZN15ImGuiTextBuffer7appendvEPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN15ImGuiTextBuffer7appendvEPKcPc
_ZN15ImGuiTextBuffer7appendvEPKcPc:
.LFB614:
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
	movq	%r8, %r9
	movq	%rcx, %rbx
	movq	%rdx, %r12
	xorl	%ecx, %ecx
	movq	%r8, %r14
	movq	%rdx, %r8
	xorl	%edx, %edx
	call	__mingw_vsnprintf
	testl	%eax, %eax
	movl	%eax, %ebp
	jle	.L1957
	movslq	(%rbx), %rdi
	leal	(%rdi,%rax), %esi
	movl	4(%rbx), %eax
	cmpl	%esi, %eax
	jg	.L1959
	leal	(%rax,%rax), %r13d
	cmpl	%esi, %r13d
	cmovl	%esi, %r13d
	cmpl	%r13d, %eax
	jge	.L1972
	movq	GImGui(%rip), %rax
	movslq	%r13d, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %r15
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1963
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%r15, %rcx
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1963
	subl	$1, 844(%rax)
.L1963:
	call	*240(%rax)
	movq	%r15, 8(%rbx)
	movl	%r13d, 4(%rbx)
.L1960:
	cmpl	%r13d, %esi
	jle	.L1959
	testl	%r13d, %r13d
	movl	$8, %r15d
	je	.L1964
	movl	%r13d, %r15d
	shrl	$31, %r15d
	addl	%r13d, %r15d
	sarl	%r15d
	addl	%r13d, %r15d
.L1964:
	cmpl	%r15d, %esi
	jl	.L1982
	movl	%esi, %r15d
.L1965:
	movq	GImGui(%rip), %rax
	movslq	%r15d, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %r13
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1968
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%r13, %rcx
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1968
	subl	$1, 844(%rax)
.L1968:
	call	*240(%rax)
	movq	%r13, 8(%rbx)
	movl	%r15d, 4(%rbx)
.L1959:
	movl	%esi, (%rbx)
	leal	1(%rbp), %r13d
	cmpl	%esi, %edi
	jge	.L1983
.L1969:
	movq	8(%rbx), %rax
	movslq	%r13d, %rdx
	movq	%r14, %r9
	movq	%r12, %r8
	leaq	-1(%rax,%rdi), %rbx
	movq	%rbx, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L1975
	cmpl	%eax, %r13d
	jle	.L1975
.L1970:
	cltq
	movb	$0, (%rbx,%rax)
.L1957:
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
.L1983:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L1969
	.p2align 4,,10
.L1975:
	movl	%ebp, %eax
	jmp	.L1970
	.p2align 4,,10
.L1982:
	cmpl	%r13d, %r15d
	jg	.L1965
	jmp	.L1959
	.p2align 4,,10
.L1972:
	movl	%eax, %r13d
	jmp	.L1960
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN15ImGuiTextBuffer6appendEPKcz
	.def	_ZN15ImGuiTextBuffer6appendEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN15ImGuiTextBuffer6appendEPKcz
_ZN15ImGuiTextBuffer6appendEPKcz:
.LFB615:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%r8, 80(%rsp)
	leaq	80(%rsp), %r8
	movq	%r9, 88(%rsp)
	movq	%r8, 40(%rsp)
	call	_ZN15ImGuiTextBuffer7appendvEPKcPc
	nop
	addq	$56, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN18ImGuiSimpleColumnsC2Ev
	.def	_ZN18ImGuiSimpleColumnsC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18ImGuiSimpleColumnsC2Ev
_ZN18ImGuiSimpleColumnsC2Ev:
.LFB617:
	.seh_endprologue
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movq	$0, 56(%rcx)
	movq	$0, 64(%rcx)
	movq	$0, 72(%rcx)
	ret
	.seh_endproc
	.globl	_ZN18ImGuiSimpleColumnsC1Ev
	.def	_ZN18ImGuiSimpleColumnsC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN18ImGuiSimpleColumnsC1Ev,_ZN18ImGuiSimpleColumnsC2Ev
	.section .rdata,"dr"
	.align 8
.LC99:
	.ascii "Count <= ((int)(sizeof(Pos)/sizeof(*Pos)))\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN18ImGuiSimpleColumns6UpdateEifb
	.def	_ZN18ImGuiSimpleColumns6UpdateEifb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18ImGuiSimpleColumns6UpdateEifb
_ZN18ImGuiSimpleColumns6UpdateEifb:
.LFB619:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	cmpl	$8, (%rcx)
	movq	%rcx, %rbx
	movl	%edx, %esi
	movaps	%xmm2, %xmm6
	jg	.L2033
.L1987:
	testb	%r9b, %r9b
	movl	%esi, (%rbx)
	movq	$0, 8(%rbx)
	movss	%xmm6, 4(%rbx)
	jne	.L2034
.L1988:
	testl	%esi, %esi
	jle	.L1986
	movss	48(%rbx), %xmm0
	cmpl	$1, %esi
	pxor	%xmm1, %xmm1
	movl	$0x00000000, 16(%rbx)
	movl	$0x00000000, 48(%rbx)
	addss	%xmm1, %xmm0
	je	.L1990
	movss	52(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L1991
	addss	%xmm6, %xmm0
.L1991:
	cvttss2si	%xmm0, %eax
	pxor	%xmm2, %xmm2
	cmpl	$2, %esi
	movl	$0x00000000, 52(%rbx)
	addss	%xmm3, %xmm0
	cvtsi2ss	%eax, %xmm2
	movss	%xmm2, 20(%rbx)
	je	.L1990
	movss	56(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L1993
	addss	%xmm6, %xmm0
.L1993:
	cvttss2si	%xmm0, %eax
	pxor	%xmm2, %xmm2
	cmpl	$3, %esi
	movl	$0x00000000, 56(%rbx)
	addss	%xmm3, %xmm0
	cvtsi2ss	%eax, %xmm2
	movss	%xmm2, 24(%rbx)
	je	.L1990
	movss	60(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L1995
	addss	%xmm6, %xmm0
.L1995:
	cvttss2si	%xmm0, %eax
	pxor	%xmm2, %xmm2
	cmpl	$4, %esi
	movl	$0x00000000, 60(%rbx)
	addss	%xmm3, %xmm0
	cvtsi2ss	%eax, %xmm2
	movss	%xmm2, 28(%rbx)
	je	.L1990
	movss	64(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L1997
	addss	%xmm6, %xmm0
.L1997:
	cvttss2si	%xmm0, %eax
	pxor	%xmm2, %xmm2
	cmpl	$5, %esi
	movl	$0x00000000, 64(%rbx)
	addss	%xmm3, %xmm0
	cvtsi2ss	%eax, %xmm2
	movss	%xmm2, 32(%rbx)
	je	.L1990
	movss	68(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L1999
	addss	%xmm6, %xmm0
.L1999:
	cvttss2si	%xmm0, %eax
	pxor	%xmm2, %xmm2
	cmpl	$6, %esi
	movl	$0x00000000, 68(%rbx)
	addss	%xmm3, %xmm0
	cvtsi2ss	%eax, %xmm2
	movss	%xmm2, 36(%rbx)
	je	.L1990
	movss	72(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L2001
	addss	%xmm6, %xmm0
.L2001:
	cvttss2si	%xmm0, %eax
	pxor	%xmm2, %xmm2
	cmpl	$7, %esi
	movl	$0x00000000, 72(%rbx)
	addss	%xmm3, %xmm0
	cvtsi2ss	%eax, %xmm2
	movss	%xmm2, 40(%rbx)
	je	.L1990
	movss	76(%rbx), %xmm2
	ucomiss	%xmm1, %xmm2
	jbe	.L2003
	addss	%xmm6, %xmm0
.L2003:
	cvttss2si	%xmm0, %eax
	pxor	%xmm1, %xmm1
	movl	$0x00000000, 76(%rbx)
	addss	%xmm2, %xmm0
	cvtsi2ss	%eax, %xmm1
	movss	%xmm1, 44(%rbx)
.L1990:
	movss	%xmm0, 8(%rbx)
.L1986:
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L2034:
	movq	$0, 48(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movq	$0, 72(%rbx)
	jmp	.L1988
	.p2align 4,,10
.L2033:
	movl	$1648, %r8d
	movl	%r9d, 44(%rsp)
	leaq	.LC5(%rip), %rdx
	leaq	.LC99(%rip), %rcx
	call	_assert
	movl	44(%rsp), %r9d
	jmp	.L1987
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN18ImGuiSimpleColumns11DeclColumnsEfff
	.def	_ZN18ImGuiSimpleColumns11DeclColumnsEfff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18ImGuiSimpleColumns11DeclColumnsEfff
_ZN18ImGuiSimpleColumns11DeclColumnsEfff:
.LFB620:
	.seh_endprologue
	movss	48(%rcx), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L2036
	movaps	%xmm0, %xmm1
.L2036:
	movss	52(%rcx), %xmm0
	movss	%xmm1, 48(%rcx)
	ucomiss	%xmm2, %xmm0
	jb	.L2038
	movaps	%xmm0, %xmm2
.L2038:
	movss	56(%rcx), %xmm0
	movss	%xmm2, 52(%rcx)
	ucomiss	%xmm3, %xmm0
	jb	.L2040
	movaps	%xmm0, %xmm3
.L2040:
	movss	%xmm3, 56(%rcx)
	pxor	%xmm3, %xmm3
	addss	%xmm3, %xmm1
	movss	52(%rcx), %xmm0
	ucomiss	%xmm3, %xmm0
	addss	%xmm3, %xmm1
	movss	%xmm1, 12(%rcx)
	jbe	.L2052
	movss	4(%rcx), %xmm2
.L2045:
	addss	%xmm2, %xmm0
	movss	56(%rcx), %xmm2
	ucomiss	%xmm3, %xmm2
	addss	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	movss	%xmm1, 12(%rcx)
	jbe	.L2044
	movss	4(%rcx), %xmm0
.L2044:
	addss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	8(%rcx), %xmm1
	ucomiss	%xmm0, %xmm1
	movss	%xmm0, 12(%rcx)
	jnb	.L2053
	ret
	.p2align 4,,10
.L2053:
	movaps	%xmm1, %xmm0
	ret
	.p2align 4,,10
.L2052:
	pxor	%xmm2, %xmm2
	jmp	.L2045
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN18ImGuiSimpleColumns14CalcExtraSpaceEf
	.def	_ZN18ImGuiSimpleColumns14CalcExtraSpaceEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18ImGuiSimpleColumns14CalcExtraSpaceEf
_ZN18ImGuiSimpleColumns14CalcExtraSpaceEf:
.LFB621:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	subss	8(%rcx), %xmm1
	ucomiss	%xmm1, %xmm0
	jnb	.L2057
	movaps	%xmm1, %xmm0
	ret
	.p2align 4,,10
.L2057:
	pxor	%xmm1, %xmm1
	movaps	%xmm1, %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN16ImGuiListClipper5BeginEif
	.def	_ZN16ImGuiListClipper5BeginEif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16ImGuiListClipper5BeginEif
_ZN16ImGuiListClipper5BeginEif:
.LFB623:
	.seh_endprologue
	movq	GImGui(%rip), %r8
	ucomiss	.LC0(%rip), %xmm2
	movq	6008(%r8), %rax
	movss	196(%rax), %xmm0
	subss	32(%rax), %xmm0
	addss	100(%rax), %xmm0
	movss	%xmm2, 4(%rcx)
	movabsq	$-4294967296, %rax
	movl	%edx, 8(%rcx)
	movq	%rax, 12(%rcx)
	movss	%xmm0, (%rcx)
	movl	$-1, 20(%rcx)
	jbe	.L2058
	cmpb	$0, 11432(%r8)
	je	.L2061
	movl	$0, 16(%rcx)
	movl	%edx, 20(%rcx)
.L2067:
	movl	$2, 12(%rcx)
.L2058:
	ret
	.p2align 4,,10
.L2061:
	movq	6008(%r8), %rax
	cmpb	$0, 140(%rax)
	jne	.L2074
	movss	196(%rax), %xmm3
	movss	516(%rax), %xmm1
	subss	%xmm3, %xmm1
	divss	%xmm2, %xmm1
	cvttss2si	%xmm1, %r10d
	movss	524(%rax), %xmm1
	xorl	%eax, %eax
	subss	%xmm3, %xmm1
	testl	%r10d, %r10d
	divss	%xmm2, %xmm1
	cvttss2si	%xmm1, %r9d
	js	.L2064
	cmpl	%r10d, %edx
	movl	%r10d, %eax
	cmovle	%edx, %eax
.L2064:
	addl	$1, %r9d
	movl	%eax, %r10d
	cmpl	%eax, %r9d
	jl	.L2065
	cmpl	%r9d, %edx
	cmovle	%edx, %r9d
	movl	%r9d, %r10d
.L2065:
	testl	%eax, %eax
	movl	%eax, 16(%rcx)
	movl	%r10d, 20(%rcx)
	jle	.L2067
	movq	6008(%r8), %rdx
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movb	$1, 138(%rdx)
	mulss	%xmm2, %xmm1
	movq	6008(%r8), %rdx
	addss	%xmm1, %xmm0
	movss	32(%rdx), %xmm1
	subss	100(%rdx), %xmm1
	addss	%xmm1, %xmm0
	movss	220(%rdx), %xmm1
	ucomiss	%xmm0, %xmm1
	movss	%xmm0, 196(%rdx)
	jb	.L2068
	movaps	%xmm1, %xmm0
.L2068:
	movss	%xmm0, 220(%rdx)
	movq	6008(%r8), %rax
	movb	$1, 138(%rax)
	movq	6008(%r8), %rax
	movss	196(%rax), %xmm0
	cmpl	$1, 444(%rax)
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, 204(%rax)
	subss	5172(%r8), %xmm2
	movss	%xmm2, 232(%rax)
	jle	.L2067
	movss	%xmm0, 460(%rax)
	jmp	.L2067
	.p2align 4,,10
.L2074:
	movq	$0, 16(%rcx)
	jmp	.L2067
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN16ImGuiListClipper3EndEv
	.def	_ZN16ImGuiListClipper3EndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16ImGuiListClipper3EndEv
_ZN16ImGuiListClipper3EndEv:
.LFB624:
	.seh_endprologue
	movl	8(%rcx), %eax
	testl	%eax, %eax
	js	.L2075
	cmpl	$2147483647, %eax
	jne	.L2081
.L2078:
	movabsq	$17179869183, %rax
	movq	%rax, 8(%rcx)
.L2075:
	ret
	.p2align 4,,10
.L2081:
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	GImGui(%rip), %rax
	movss	4(%rcx), %xmm2
	movq	6008(%rax), %rdx
	mulss	%xmm2, %xmm0
	addss	(%rcx), %xmm0
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rdx
	movss	32(%rdx), %xmm1
	subss	100(%rdx), %xmm1
	addss	%xmm1, %xmm0
	movss	220(%rdx), %xmm1
	ucomiss	%xmm0, %xmm1
	movss	%xmm0, 196(%rdx)
	jb	.L2082
.L2079:
	movss	%xmm1, 220(%rdx)
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rdx
	movss	196(%rdx), %xmm0
	cmpl	$1, 444(%rdx)
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm1, 204(%rdx)
	subss	5172(%rax), %xmm2
	movss	%xmm2, 232(%rdx)
	jle	.L2078
	movabsq	$17179869183, %rax
	movss	%xmm0, 460(%rdx)
	movq	%rax, 8(%rcx)
	jmp	.L2075
	.p2align 4,,10
.L2082:
	movaps	%xmm0, %xmm1
	jmp	.L2079
	.seh_endproc
	.section .rdata,"dr"
.LC100:
	.ascii "items_height > 0.0f\0"
	.align 8
.LC101:
	.ascii "DisplayStart >= 0 && DisplayEnd >= 0\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN16ImGuiListClipper4StepEv
	.def	_ZN16ImGuiListClipper4StepEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16ImGuiListClipper4StepEv
_ZN16ImGuiListClipper4StepEv:
.LFB625:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	8(%rcx), %edx
	testl	%edx, %edx
	movq	%rcx, %rbx
	je	.L2084
	movq	GImGui(%rip), %rcx
	movq	6008(%rcx), %r8
	movzbl	140(%r8), %eax
	testb	%al, %al
	jne	.L2084
	movl	12(%rbx), %r9d
	testl	%r9d, %r9d
	je	.L2099
	cmpl	$1, %r9d
	je	.L2100
	cmpl	$2, %r9d
	je	.L2101
	cmpl	$3, %r9d
	jne	.L2083
	movq	%rbx, %rcx
	movb	%al, 44(%rsp)
	call	_ZN16ImGuiListClipper3EndEv
	movzbl	44(%rsp), %eax
	jmp	.L2083
	.p2align 4,,10
.L2100:
	cmpl	$1, %edx
	jne	.L2102
	.p2align 4,,10
.L2084:
	movl	$-1, 8(%rbx)
	xorl	%eax, %eax
.L2083:
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L2099:
	movabsq	$4294967296, %rax
	movq	%rax, 16(%rbx)
	movq	6008(%rcx), %rax
	movss	196(%rax), %xmm0
	subss	32(%rax), %xmm0
	addss	100(%rax), %xmm0
	movl	$1, %eax
	movl	$1, 12(%rbx)
	movss	%xmm0, (%rbx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L2102:
	movss	196(%r8), %xmm2
	subss	32(%r8), %xmm2
	addss	100(%r8), %xmm2
	subss	(%rbx), %xmm2
	ucomiss	.LC0(%rip), %xmm2
	jbe	.L2103
.L2089:
	subl	$1, %edx
	movq	%rbx, %rcx
	call	_ZN16ImGuiListClipper5BeginEif
	movl	$3, 12(%rbx)
	movl	$1, %eax
	addl	$1, 16(%rbx)
	addl	$1, 20(%rbx)
	jmp	.L2083
	.p2align 4,,10
.L2101:
	movl	16(%rbx), %edx
	testl	%edx, %edx
	js	.L2091
	movl	20(%rbx), %eax
	testl	%eax, %eax
	js	.L2091
.L2092:
	movl	$3, 12(%rbx)
	movl	$1, %eax
	jmp	.L2083
	.p2align 4,,10
.L2091:
	leaq	.LC5(%rip), %rdx
	movl	$1753, %r8d
	leaq	.LC101(%rip), %rcx
	call	_assert
	jmp	.L2092
.L2103:
	leaq	.LC5(%rip), %rdx
	movl	$1744, %r8d
	movss	%xmm2, 44(%rsp)
	leaq	.LC100(%rip), %rcx
	call	_assert
	movl	8(%rbx), %edx
	movss	44(%rsp), %xmm2
	jmp	.L2089
	.seh_endproc
	.section	.text$_ZN16ImGuiDrawContextD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN16ImGuiDrawContextD1Ev
	.def	_ZN16ImGuiDrawContextD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16ImGuiDrawContextD1Ev
_ZN16ImGuiDrawContextD1Ev:
.LFB629:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	296(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2105
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2105:
	movq	200(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2106
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2106:
	movq	184(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2107
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2107:
	movq	168(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2108
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2108:
	movq	152(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2109
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2109:
	movq	136(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2110
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2110:
	movq	96(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2104
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	movq	240(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	rex.W jmp	*%rax
	.p2align 4,,10
.L2104:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA629:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE629-.LLSDACSB629
.LLSDACSB629:
.LLSDACSE629:
	.section	.text$_ZN16ImGuiDrawContextD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC102:
	.ascii "#MOVE\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImGuiWindowC2EPKc
	.def	_ZN11ImGuiWindowC2EPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImGuiWindowC2EPKc
_ZN11ImGuiWindowC2EPKc:
.LFB630:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$3212836864, %esi
	movabsq	$-36028797027352577, %rax
	movq	%rdx, %rdi
	movq	%rax, 76(%rcx)
	movabsq	$9187343237679939583, %rdx
	movq	%rcx, %rbx
	movq	%rdx, 68(%rcx)
	movq	$0, 20(%rcx)
	movq	$0, 28(%rcx)
	movq	$0, 36(%rcx)
	movq	$0, 44(%rcx)
	movq	$0, 52(%rcx)
	movq	$0, 60(%rcx)
	movq	$0, 84(%rcx)
	movq	$0, 96(%rcx)
	movq	$0, 104(%rcx)
	movq	$0, 112(%rcx)
	movq	$0, 124(%rcx)
	movq	$0, 280(%rcx)
	movq	$0, 288(%rcx)
	movq	$0, 320(%rcx)
	movq	$0, 328(%rcx)
	movq	$0, 336(%rcx)
	movq	$0, 344(%rcx)
	movq	$0, 352(%rcx)
	movq	$0, 360(%rcx)
	movq	$0, 368(%rcx)
	movq	$0, 376(%rcx)
	movq	$0, 384(%rcx)
	movq	$0, 392(%rcx)
	movq	$0, 480(%rcx)
	movq	$0, 488(%rcx)
	movq	$0, 216(%rcx)
	movq	$0, 208(%rcx)
	movq	$0, 200(%rcx)
	movq	$0, 192(%rcx)
	movq	$0, 224(%rcx)
	movq	$0, 232(%rcx)
	movq	%rsi, 240(%rcx)
	movq	%rdx, 512(%rcx)
	movq	%rax, 520(%rcx)
	movq	%rdx, 528(%rcx)
	movq	%rax, 536(%rcx)
	movq	$0, 248(%rcx)
	movq	$0, 256(%rcx)
	movl	$0, 264(%rcx)
	movb	$0, 269(%rcx)
	movb	$0, 268(%rcx)
	movb	$0, 270(%rcx)
	movl	$0x00000000, 272(%rcx)
	movb	$0, 317(%rcx)
	movb	$1, 316(%rcx)
	movq	$0, 296(%rcx)
	movq	$0, 304(%rcx)
	movl	$-1082130432, 312(%rcx)
	movl	$0, 400(%rcx)
	movq	$0, 404(%rcx)
	movq	$0, 412(%rcx)
	movq	$0, 420(%rcx)
	movq	$0, 428(%rcx)
	movq	$0, 436(%rcx)
	movq	$1, 444(%rcx)
	movq	$0, 452(%rcx)
	movq	$0, 460(%rcx)
	movb	$1, 468(%rcx)
	movl	$0, 472(%rcx)
	movq	$0, 496(%rcx)
	movq	$0, 504(%rcx)
	movq	$0, 552(%rcx)
	movq	$0, 560(%rcx)
	movq	$0, 568(%rcx)
	movq	$0, 576(%rcx)
	movq	$0, 584(%rcx)
	movq	$0, 592(%rcx)
	movq	$0, 600(%rcx)
	movq	$0, 608(%rcx)
	movq	$0, 616(%rcx)
	movq	$0, 624(%rcx)
	movq	$0, 632(%rcx)
	movq	$0, 640(%rcx)
	movq	%rdi, %rcx
	call	strlen
	leaq	1(%rax), %rsi
	movq	GImGui(%rip), %rax
	movq	%rsi, %rcx
	addl	$1, 844(%rax)
.LEHB11:
	call	*232(%rax)
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	memcpy
	xorl	%edx, %edx
	movq	%rdi, %rcx
	movq	%rax, (%rbx)
	call	_Z6ImHashPKvij.constprop.146
	movslq	496(%rbx), %rdx
	cmpl	500(%rbx), %edx
	movl	%eax, 8(%rbx)
	je	.L2131
	movq	504(%rbx), %rsi
.L2132:
	leal	1(%rdx), %ecx
	movl	%ecx, 496(%rbx)
	movq	%rbx, %rcx
	movl	%eax, (%rsi,%rdx,4)
	leaq	.LC102(%rip), %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, 92(%rbx)
	movl	$152, %ecx
	movabsq	$9187343237679939583, %rax
	movabsq	$64424509455, %rdi
	movq	%rax, 104(%rbx)
	movabsq	$4539628425446424576, %rax
	movq	%rax, 112(%rbx)
	movl	$4294967295, %eax
	movq	%rax, 164(%rbx)
	movq	%rax, 544(%rbx)
	movq	GImGui(%rip), %rax
	movq	$0, 12(%rbx)
	movq	$0, 28(%rbx)
	movq	$0, 20(%rbx)
	movq	$0, 44(%rbx)
	movq	$0, 36(%rbx)
	movq	$0, 60(%rbx)
	movq	$0, 52(%rbx)
	movq	$0, 84(%rbx)
	movq	$0, 96(%rbx)
	movb	$0, 121(%rbx)
	movb	$0, 120(%rbx)
	movq	$0, 124(%rbx)
	movl	$0, 132(%rbx)
	movb	$0, 137(%rbx)
	movb	$0, 136(%rbx)
	movb	$0, 138(%rbx)
	movb	$0, 139(%rbx)
	movb	$0, 140(%rbx)
	movq	$0, 144(%rbx)
	movq	$-1, 152(%rbx)
	movb	$0, 160(%rbx)
	movq	%rdi, 172(%rbx)
	movl	$15, 180(%rbx)
	movb	$0, 184(%rbx)
	movl	$0x3f800000, 648(%rbx)
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	%rax, %rcx
	movq	%rax, 656(%rbx)
	call	_ZN10ImDrawListC1Ev
	movq	656(%rbx), %rax
	pxor	%xmm0, %xmm0
	movq	(%rbx), %rdx
	movq	%rdx, 48(%rax)
	movups	%xmm0, 664(%rbx)
	movdqa	.LC103(%rip), %xmm0
	movq	$0, 680(%rbx)
	movups	%xmm0, 688(%rbx)
	movl	$2147483647, 708(%rbx)
	movl	$2147483647, 704(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L2131:
	leal	1(%rdx), %ecx
	testl	%edx, %edx
	movl	$8, %eax
	jne	.L2151
.L2133:
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movslq	%eax, %rcx
	movq	GImGui(%rip), %rax
	movq	%rcx, %rdi
	salq	$2, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2136
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2136
	subl	$1, 844(%rax)
.L2136:
	call	*240(%rax)
.LEHE11:
	movslq	496(%rbx), %rdx
	movq	%rsi, 504(%rbx)
	movl	8(%rbx), %eax
	movl	%edi, 500(%rbx)
	jmp	.L2132
	.p2align 4,,10
.L2151:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	jmp	.L2133
.L2141:
	movq	640(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L2138
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2138:
	movq	504(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2139
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2139:
	leaq	192(%rbx), %rcx
	call	_ZN16ImGuiDrawContextD1Ev
	movq	%rsi, %rcx
.LEHB12:
	call	_Unwind_Resume
	nop
.LEHE12:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA630:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE630-.LLSDACSB630
.LLSDACSB630:
	.uleb128 .LEHB11-.LFB630
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L2141-.LFB630
	.uleb128 0
	.uleb128 .LEHB12-.LFB630
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE630:
	.text
	.seh_endproc
	.globl	_ZN11ImGuiWindowC1EPKc
	.def	_ZN11ImGuiWindowC1EPKc;	.scl	2;	.type	32;	.endef
	.set	_ZN11ImGuiWindowC1EPKc,_ZN11ImGuiWindowC2EPKc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImGuiWindowD2Ev
	.def	_ZN11ImGuiWindowD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImGuiWindowD2Ev
_ZN11ImGuiWindowD2Ev:
.LFB633:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	656(%rcx), %rcx
	call	_ZN10ImDrawListD1Ev
	movq	656(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2154
	subl	$1, 844(%rax)
.L2154:
	call	*240(%rax)
	movq	(%rbx), %rcx
	movq	$0, 656(%rbx)
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2156
	subl	$1, 844(%rax)
.L2156:
	call	*240(%rax)
	movq	640(%rbx), %rcx
	movq	$0, (%rbx)
	testq	%rcx, %rcx
	je	.L2157
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2157:
	movq	504(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2158
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2158:
	movq	488(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2159
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2159:
	movq	392(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2160
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2160:
	movq	376(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2161
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2161:
	movq	360(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2162
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2162:
	movq	344(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2163
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2163:
	movq	328(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2164
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2164:
	movq	288(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2152
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	movq	240(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	rex.W jmp	*%rax
	.p2align 4,,10
.L2152:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA633:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE633-.LLSDACSB633
.LLSDACSB633:
.LLSDACSE633:
	.text
	.seh_endproc
	.globl	_ZN11ImGuiWindowD1Ev
	.def	_ZN11ImGuiWindowD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN11ImGuiWindowD1Ev,_ZN11ImGuiWindowD2Ev
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImGuiWindow5GetIDEPKcS1_
	.def	_ZN11ImGuiWindow5GetIDEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImGuiWindow5GetIDEPKcS1_
_ZN11ImGuiWindow5GetIDEPKcS1_:
.LFB635:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movslq	496(%rcx), %rax
	testl	%eax, %eax
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %rdi
	jle	.L2195
.L2191:
	movq	504(%rbx), %rcx
	movq	%rdi, %r8
	movl	$0, %edx
	subq	%rsi, %r8
	testq	%rdi, %rdi
	cmovne	%r8d, %edx
	movl	-4(%rcx,%rax,4), %r8d
	movq	%rsi, %rcx
	call	_Z6ImHashPKvij
	movq	GImGui(%rip), %rdx
	cmpl	6068(%rdx), %eax
	jne	.L2190
	movb	$1, 6076(%rdx)
.L2190:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L2195:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	496(%rbx), %rax
	jmp	.L2191
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImGuiWindow5GetIDEPKv
	.def	_ZN11ImGuiWindow5GetIDEPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImGuiWindow5GetIDEPKv
_ZN11ImGuiWindow5GetIDEPKv:
.LFB636:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movslq	496(%rcx), %rax
	testl	%eax, %eax
	movq	%rcx, %rbx
	movq	%rdx, 88(%rsp)
	jle	.L2202
.L2197:
	movq	504(%rbx), %rdx
	leaq	_ZZ6ImHashPKvijE9crc32_lut(%rip), %r8
	movl	-4(%rdx,%rax,4), %ecx
	movl	4+_ZZ6ImHashPKvijE9crc32_lut(%rip), %eax
	testl	%eax, %eax
	jne	.L2198
	movdqa	.LC10(%rip), %xmm5
	movq	%r8, %rax
	pxor	%xmm2, %xmm2
	movdqa	.LC11(%rip), %xmm6
	leaq	1024(%r8), %rdx
	movdqa	.LC12(%rip), %xmm4
	movdqa	.LC13(%rip), %xmm3
	.p2align 4,,10
.L2199:
	movdqa	%xmm5, %xmm0
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm1
	addq	$16, %rax
	movdqa	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	paddd	%xmm6, %xmm5
	psrld	$1, %xmm1
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	pand	%xmm3, %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L2199
.L2198:
	movzbl	88(%rsp), %edx
	movl	%ecx, %eax
	notl	%eax
	xorl	%eax, %edx
	shrl	$8, %eax
	movzbl	%dl, %edx
	xorl	(%r8,%rdx,4), %eax
	movl	%eax, %edx
	xorb	89(%rsp), %al
	shrl	$8, %edx
	movzbl	%al, %eax
	xorl	(%r8,%rax,4), %edx
	movl	%edx, %eax
	xorb	90(%rsp), %dl
	shrl	$8, %eax
	movzbl	%dl, %edx
	xorl	(%r8,%rdx,4), %eax
	movl	%eax, %edx
	xorb	91(%rsp), %al
	shrl	$8, %edx
	movzbl	%al, %eax
	xorl	(%r8,%rax,4), %edx
	movl	%edx, %eax
	xorb	92(%rsp), %dl
	shrl	$8, %eax
	movzbl	%dl, %edx
	xorl	(%r8,%rdx,4), %eax
	movl	%eax, %edx
	xorb	93(%rsp), %al
	shrl	$8, %edx
	movzbl	%al, %eax
	xorl	(%r8,%rax,4), %edx
	movl	%edx, %eax
	xorb	94(%rsp), %dl
	shrl	$8, %eax
	movzbl	%dl, %edx
	xorl	(%r8,%rdx,4), %eax
	movl	%eax, %edx
	xorb	95(%rsp), %al
	shrl	$8, %edx
	movzbl	%al, %eax
	xorl	(%r8,%rax,4), %edx
	movl	%edx, %eax
	movq	GImGui(%rip), %rdx
	notl	%eax
	cmpl	%eax, 6068(%rdx)
	jne	.L2196
	movb	$1, 6076(%rdx)
.L2196:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L2202:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	496(%rbx), %rax
	jmp	.L2197
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImGuiWindow16GetIDNoKeepAliveEPKcS1_
	.def	_ZN11ImGuiWindow16GetIDNoKeepAliveEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImGuiWindow16GetIDNoKeepAliveEPKcS1_
_ZN11ImGuiWindow16GetIDNoKeepAliveEPKcS1_:
.LFB637:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movslq	496(%rcx), %rax
	testl	%eax, %eax
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %rdi
	jle	.L2207
.L2204:
	movq	504(%rbx), %rcx
	movq	%rdi, %r8
	movl	$0, %edx
	subq	%rsi, %r8
	testq	%rdi, %rdi
	cmovne	%r8d, %edx
	movl	-4(%rcx,%rax,4), %r8d
	movq	%rsi, %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_Z6ImHashPKvij
	.p2align 4,,10
.L2207:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	496(%rbx), %rax
	jmp	.L2204
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC104:
	.ascii "g.CurrentWindowStack.Size >= 2\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui15GetParentWindowEv
	.def	_ZN5ImGui15GetParentWindowEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15GetParentWindowEv
_ZN5ImGui15GetParentWindowEv:
.LFB639:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movl	6016(%rsi), %eax
	cmpl	$1, %eax
	jle	.L2211
.L2209:
	leal	-2(%rax), %ebx
	cmpl	%eax, %ebx
	jl	.L2210
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
.L2210:
	movq	6024(%rsi), %rax
	movslq	%ebx, %rbx
	movq	(%rax,%rbx,8), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L2211:
	leaq	.LC5(%rip), %rdx
	movl	$1860, %r8d
	leaq	.LC104(%rip), %rcx
	call	_assert
	movl	6016(%rsi), %eax
	jmp	.L2209
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	.def	_ZN5ImGui11SetActiveIDEjP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11SetActiveIDEjP11ImGuiWindow
_ZN5ImGui11SetActiveIDEjP11ImGuiWindow:
.LFB640:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	testl	%ecx, %ecx
	movl	%ecx, 6068(%rax)
	je	.L2213
	movb	$1, 6076(%rax)
.L2213:
	movq	%rdx, 6088(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13ClearActiveIDEv
	.def	_ZN5ImGui13ClearActiveIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13ClearActiveIDEv
_ZN5ImGui13ClearActiveIDEv:
.LFB641:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12SetHoveredIDEj
	.def	_ZN5ImGui12SetHoveredIDEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SetHoveredIDEj
_ZN5ImGui12SetHoveredIDEj:
.LFB642:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movb	$0, 6060(%rax)
	movl	%ecx, 6056(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11KeepAliveIDEj
	.def	_ZN5ImGui11KeepAliveIDEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11KeepAliveIDEj
_ZN5ImGui11KeepAliveIDEj:
.LFB643:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	cmpl	%ecx, 6068(%rax)
	je	.L2221
	ret
	.p2align 4,,10
.L2221:
	movb	$1, 6076(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8ItemSizeERK6ImVec2f
	.def	_ZN5ImGui8ItemSizeERK6ImVec2f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8ItemSizeERK6ImVec2f
_ZN5ImGui8ItemSizeERK6ImVec2f:
.LFB644:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L2222
	movss	4(%rcx), %xmm0
	movss	224(%rax), %xmm3
	ucomiss	%xmm0, %xmm3
	jb	.L2228
	movss	228(%rax), %xmm4
	ucomiss	%xmm1, %xmm4
	jb	.L2229
.L2225:
	movss	192(%rax), %xmm2
	addss	(%rcx), %xmm2
	movss	196(%rax), %xmm0
	movss	28(%rax), %xmm1
	movss	%xmm0, 204(%rax)
	addss	%xmm3, %xmm0
	movss	%xmm2, 200(%rax)
	addss	5172(%rdx), %xmm0
	addss	428(%rax), %xmm1
	addss	436(%rax), %xmm1
	cvttss2si	%xmm0, %edx
	pxor	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm0
	cvttss2si	%xmm1, %edx
	pxor	%xmm1, %xmm1
	movss	%xmm0, 196(%rax)
	cvtsi2ss	%edx, %xmm1
	movss	%xmm1, 192(%rax)
	movss	216(%rax), %xmm1
	ucomiss	%xmm2, %xmm1
	jb	.L2230
.L2226:
	movss	%xmm1, 216(%rax)
	movss	220(%rax), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L2231
.L2227:
	movss	%xmm1, 220(%rax)
	movss	%xmm3, 232(%rax)
	movss	%xmm4, 236(%rax)
	movq	$0, 224(%rax)
.L2222:
	ret
	.p2align 4,,10
.L2231:
	movaps	%xmm0, %xmm1
	jmp	.L2227
	.p2align 4,,10
.L2230:
	movaps	%xmm2, %xmm1
	jmp	.L2226
	.p2align 4,,10
.L2229:
	movaps	%xmm1, %xmm4
	jmp	.L2225
	.p2align 4,,10
.L2228:
	movss	228(%rax), %xmm4
	movaps	%xmm0, %xmm3
	ucomiss	%xmm1, %xmm4
	jnb	.L2225
	jmp	.L2229
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8ItemSizeERK6ImRectf
	.def	_ZN5ImGui8ItemSizeERK6ImRectf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8ItemSizeERK6ImRectf
_ZN5ImGui8ItemSizeERK6ImRectf:
.LFB645:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movss	12(%rcx), %xmm0
	movss	8(%rcx), %xmm2
	subss	4(%rcx), %xmm0
	subss	(%rcx), %xmm2
	leaq	40(%rsp), %rcx
	movss	%xmm0, 44(%rsp)
	movss	%xmm2, 40(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	nop
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11IsClippedExERK6ImRectPKjb
	.def	_ZN5ImGui11IsClippedExERK6ImRectPKjb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11IsClippedExERK6ImRectPKjb
_ZN5ImGui11IsClippedExERK6ImRectPKjb:
.LFB647:
	.seh_endprologue
	movq	GImGui(%rip), %r9
	movss	12(%rcx), %xmm0
	movq	6008(%r9), %rax
	ucomiss	516(%rax), %xmm0
	jbe	.L2234
	movss	524(%rax), %xmm0
	ucomiss	4(%rcx), %xmm0
	ja	.L2250
.L2234:
	testq	%rdx, %rdx
	je	.L2239
	xorl	%eax, %eax
	movl	6068(%r9), %ecx
	cmpl	%ecx, (%rdx)
	je	.L2233
.L2239:
	testb	%r8b, %r8b
	movl	%r8d, %eax
	jne	.L2233
	movzbl	11432(%r9), %eax
	xorl	$1, %eax
.L2233:
	ret
	.p2align 4,,10
.L2250:
	movss	8(%rcx), %xmm0
	ucomiss	512(%rax), %xmm0
	jbe	.L2234
	movss	520(%rax), %xmm0
	xorl	%eax, %eax
	ucomiss	(%rcx), %xmm0
	jbe	.L2234
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui23FocusableItemUnregisterEP11ImGuiWindow
	.def	_ZN5ImGui23FocusableItemUnregisterEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui23FocusableItemUnregisterEP11ImGuiWindow
_ZN5ImGui23FocusableItemUnregisterEP11ImGuiWindow:
.LFB650:
	.seh_endprologue
	subl	$1, 688(%rcx)
	subl	$1, 692(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8MemAllocEy
	.def	_ZN5ImGui8MemAllocEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8MemAllocEy
_ZN5ImGui8MemAllocEy:
.LFB653:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	addl	$1, 844(%rax)
	rex.W jmp	*232(%rax)
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7MemFreeEPv
	.def	_ZN5ImGui7MemFreeEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7MemFreeEPv
_ZN5ImGui7MemFreeEPv:
.LFB654:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2254
	subl	$1, 844(%rax)
.L2254:
	rex.W jmp	*240(%rax)
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16GetClipboardTextEv
	.def	_ZN5ImGui16GetClipboardTextEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16GetClipboardTextEv
_ZN5ImGui16GetClipboardTextEv:
.LFB655:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	208(%rdx), %rax
	testq	%rax, %rax
	je	.L2259
	movq	224(%rdx), %rcx
	rex.W jmp	*%rax
	.p2align 4,,10
.L2259:
	leaq	.LC98(%rip), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16SetClipboardTextEPKc
	.def	_ZN5ImGui16SetClipboardTextEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16SetClipboardTextEPKc
_ZN5ImGui16SetClipboardTextEPKc:
.LFB656:
	.seh_endprologue
	movq	GImGui(%rip), %r8
	movq	216(%r8), %rax
	movq	%rcx, %rdx
	testq	%rax, %rax
	je	.L2260
	movq	224(%r8), %rcx
	rex.W jmp	*%rax
	.p2align 4,,10
.L2260:
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC105:
	.ascii "1.50 WIP\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10GetVersionEv
	.def	_ZN5ImGui10GetVersionEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10GetVersionEv
_ZN5ImGui10GetVersionEv:
.LFB657:
	.seh_endprologue
	leaq	.LC105(%rip), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17GetCurrentContextEv
	.def	_ZN5ImGui17GetCurrentContextEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17GetCurrentContextEv
_ZN5ImGui17GetCurrentContextEv:
.LFB658:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17SetCurrentContextEP12ImGuiContext
	.def	_ZN5ImGui17SetCurrentContextEP12ImGuiContext;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17SetCurrentContextEP12ImGuiContext
_ZN5ImGui17SetCurrentContextEP12ImGuiContext:
.LFB659:
	.seh_endprologue
	movq	%rcx, GImGui(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13CreateContextEPFPvyEPFvS0_E
	.def	_ZN5ImGui13CreateContextEPFPvyEPFvS0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13CreateContextEPFPvyEPFvS0_E
_ZN5ImGui13CreateContextEPFPvyEPFvS0_E:
.LFB660:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	malloc(%rip), %rax
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	cmove	%rax, %rbx
	movl	$15040, %ecx
	call	*%rbx
	movq	%rax, %rcx
	movq	%rax, %rsi
	call	_ZN12ImGuiContextC1Ev
	testq	%rdi, %rdi
	movq	%rbx, 232(%rsi)
	leaq	free(%rip), %rax
	cmove	%rax, %rdi
	movq	%rsi, %rax
	movq	%rdi, 240(%rsi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section	.text$_ZN12ImGuiContextD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiContextD1Ev
	.def	_ZN12ImGuiContextD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiContextD1Ev
_ZN12ImGuiContextD1Ev:
.LFB664:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rsi
	movq	10344(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2269
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2269:
	leaq	10216(%rsi), %rcx
	call	_ZN6ImFontD1Ev
	movq	6960(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2270
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2270:
	movq	6944(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2271
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2271:
	movq	6928(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2272
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2272:
	leaq	6392(%rsi), %rcx
	call	_ZN10ImDrawListD1Ev
	leaq	6368(%rsi), %rbx
	leaq	6320(%rsi), %rdi
	.p2align 4,,10
.L2273:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2274
	movq	GImGui(%rip), %rax
	subq	$16, %rbx
	subl	$1, 844(%rax)
	call	*240(%rax)
	cmpq	%rbx, %rdi
	jne	.L2273
.L2275:
	movq	6208(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2277
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2277:
	movq	6192(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2278
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2278:
	movq	6176(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2279
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2279:
	movq	6160(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2280
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2280:
	movq	6144(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2281
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2281:
	movq	6120(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2282
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2282:
	movq	6024(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2283
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2283:
	movq	6000(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2284
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
.L2284:
	movq	5984(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2268
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	movq	240(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*%rax
	.p2align 4,,10
.L2274:
	subq	$16, %rbx
	cmpq	%rdi, %rbx
	jne	.L2273
	jmp	.L2275
.L2268:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA664:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE664-.LLSDACSB664
.LLSDACSB664:
.LLSDACSE664:
	.section	.text$_ZN12ImGuiContextD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.text
	.p2align 4,,15
	.def	__tcf_2;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_2
__tcf_2:
.LFB6489:
	.seh_endprologue
	leaq	_ZL17GImDefaultContext(%rip), %rcx
	jmp	_ZN12ImGuiContextD1Ev
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14DestroyContextEP12ImGuiContext
	.def	_ZN5ImGui14DestroyContextEP12ImGuiContext;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14DestroyContextEP12ImGuiContext
_ZN5ImGui14DestroyContextEP12ImGuiContext:
.LFB661:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	240(%rcx), %rsi
	movq	%rcx, %rbx
	call	_ZN12ImGuiContextD1Ev
	movq	%rbx, %rcx
	call	*%rsi
	cmpq	%rbx, GImGui(%rip)
	jne	.L2323
	movq	$0, GImGui(%rip)
.L2323:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5GetIOEv
	.def	_ZN5ImGui5GetIOEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5GetIOEv
_ZN5ImGui5GetIOEv:
.LFB665:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	addq	$8, %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8GetStyleEv
	.def	_ZN5ImGui8GetStyleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8GetStyleEv
_ZN5ImGui8GetStyleEv:
.LFB666:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	addq	$5120, %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11GetDrawDataEv
	.def	_ZN5ImGui11GetDrawDataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetDrawDataEv
_ZN5ImGui11GetDrawDataEv:
.LFB667:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	cmpb	$0, 6304(%rax)
	je	.L2329
	addq	$6304, %rax
	ret
	.p2align 4,,10
.L2329:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7GetTimeEv
	.def	_ZN5ImGui7GetTimeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7GetTimeEv
_ZN5ImGui7GetTimeEv:
.LFB668:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	5960(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13GetFrameCountEv
	.def	_ZN5ImGui13GetFrameCountEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13GetFrameCountEv
_ZN5ImGui13GetFrameCountEv:
.LFB669:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	5964(%rax), %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8ShutdownEv
	.def	_ZN5ImGui8ShutdownEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8ShutdownEv
_ZN5ImGui8ShutdownEv:
.LFB671:
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
	movq	GImGui(%rip), %rbx
	movq	144(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2333
.LEHB13:
	call	_ZN11ImFontAtlas5ClearEv
.L2333:
	cmpb	$0, (%rbx)
	jne	.L2428
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L2428:
	movq	24(%rbx), %rcx
	call	_ZL21SaveIniSettingsToDiskPKc
	movl	5976(%rbx), %edx
	testl	%edx, %edx
	jle	.L2335
	leaq	.LC2(%rip), %r12
	xorl	%edi, %edi
	xorl	%esi, %esi
	leaq	.LC3(%rip), %rbp
	jmp	.L2336
	.p2align 4,,10
.L2337:
	movq	5984(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2338
	subl	$1, 844(%rax)
.L2425:
	call	*240(%rax)
	addl	$1, %esi
	addq	$8, %rdi
	cmpl	%esi, 5976(%rbx)
	jle	.L2335
.L2336:
	movq	5984(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	call	_ZN11ImGuiWindowD1Ev
	cmpl	%esi, 5976(%rbx)
	jg	.L2337
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	_assert
	jmp	.L2337
	.p2align 4,,10
.L2338:
	xorl	%ecx, %ecx
	jmp	.L2425
	.p2align 4,,10
.L2335:
	movq	5984(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2340
	movq	GImGui(%rip), %rax
	movq	$0, 5976(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 5984(%rbx)
.L2340:
	movq	6000(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2341
	movq	GImGui(%rip), %rax
	movq	$0, 5992(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 6000(%rbx)
.L2341:
	movq	6024(%rbx), %rcx
	movq	$0, 6008(%rbx)
	testq	%rcx, %rcx
	je	.L2342
	movq	GImGui(%rip), %rax
	movq	$0, 6016(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 6024(%rbx)
.L2342:
	movl	6112(%rbx), %eax
	movq	$0, 6032(%rbx)
	movq	$0, 6040(%rbx)
	movq	$0, 6048(%rbx)
	movq	$0, 6088(%rbx)
	testl	%eax, %eax
	movq	$0, 6096(%rbx)
	jle	.L2343
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.L2344
	.p2align 4,,10
.L2429:
	subl	$1, 844(%rax)
.L2427:
	call	*240(%rax)
	addl	$1, %esi
	addq	$32, %rdi
	cmpl	%esi, 6112(%rbx)
	jle	.L2343
.L2344:
	movq	6120(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	jne	.L2429
	xorl	%ecx, %ecx
	jmp	.L2427
	.p2align 4,,10
.L2343:
	movq	6120(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2347
	movq	GImGui(%rip), %rax
	movq	$0, 6112(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 6120(%rbx)
.L2347:
	movq	6144(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2348
	movq	GImGui(%rip), %rax
	movq	$0, 6136(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 6144(%rbx)
.L2348:
	movq	6160(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2349
	movq	GImGui(%rip), %rax
	movq	$0, 6152(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 6160(%rbx)
.L2349:
	movq	6176(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2350
	movq	GImGui(%rip), %rax
	movq	$0, 6168(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 6176(%rbx)
.L2350:
	movq	6192(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2351
	movq	GImGui(%rip), %rax
	movq	$0, 6184(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 6192(%rbx)
.L2351:
	movq	6208(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2352
	movq	GImGui(%rip), %rax
	movq	$0, 6200(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 6208(%rbx)
.L2352:
	leaq	6336(%rbx), %rsi
	movq	$0, 6280(%rbx)
	leaq	6384(%rbx), %rdi
	movq	$0, 6288(%rbx)
.L2354:
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2353
	movq	GImGui(%rip), %rax
	movl	$0, 4(%rsi)
	movl	$0, (%rsi)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 8(%rsi)
.L2353:
	addq	$16, %rsi
	cmpq	%rsi, %rdi
	jne	.L2354
	leaq	6392(%rbx), %rcx
	call	_ZN10ImDrawList15ClearFreeMemoryEv
	movq	10344(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2355
	movq	GImGui(%rip), %rax
	movq	$0, 10336(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 10344(%rbx)
.L2355:
	movq	11408(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2356
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 11408(%rbx)
.L2356:
	movq	6928(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2357
	movq	GImGui(%rip), %rax
	movq	$0, 6920(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 6928(%rbx)
.L2357:
	movq	6944(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2358
	movq	GImGui(%rip), %rax
	movq	$0, 6936(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 6944(%rbx)
.L2358:
	movq	6960(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2359
	movq	GImGui(%rip), %rax
	movq	$0, 6952(%rbx)
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 6960(%rbx)
.L2359:
	movq	11440(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L2361
	call	*__imp___iob_func(%rip)
	addq	$48, %rax
	cmpq	%rax, %rsi
	je	.L2361
	movq	11440(%rbx), %rcx
	call	fclose
.LEHE13:
	movq	$0, 11440(%rbx)
.L2361:
	movq	11448(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L2363
	movq	8(%rdx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2364
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	GImGui(%rip), %rax
	movq	11448(%rbx), %rdx
.L2364:
	testq	%rdx, %rdx
	je	.L2365
	subl	$1, 844(%rax)
.L2365:
	movq	%rdx, %rcx
.LEHB14:
	call	*240(%rax)
.LEHE14:
.L2363:
	movb	$0, (%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA671:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE671-.LLSDACSB671
.LLSDACSB671:
	.uleb128 .LEHB13-.LFB671
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB671
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE671:
	.text
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
	.def	_ZN5ImGui12PushClipRectERK6ImVec2S2_b;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
_ZN5ImGui12PushClipRectERK6ImVec2S2_b:
.LFB684:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %r9
	movb	$1, 138(%r9)
	movq	6008(%rax), %rbx
	movzbl	%r8b, %r9d
	movq	(%rdx), %r8
	movq	(%rcx), %rdx
	movq	656(%rbx), %rcx
	call	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b
	movq	656(%rbx), %rsi
	movslq	80(%rsi), %rax
	testl	%eax, %eax
	jle	.L2432
.L2431:
	salq	$4, %rax
	addq	88(%rsi), %rax
	pxor	%xmm0, %xmm0
	movlps	-16(%rax), %xmm0
	movhps	-8(%rax), %xmm0
	movlps	%xmm0, 512(%rbx)
	movhps	%xmm0, 520(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L2432:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	80(%rsi), %rax
	jmp	.L2431
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11PopClipRectEv
	.def	_ZN5ImGui11PopClipRectEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11PopClipRectEv
_ZN5ImGui11PopClipRectEv:
.LFB685:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	movq	656(%rbx), %rcx
	call	_ZN10ImDrawList11PopClipRectEv
	movq	656(%rbx), %rsi
	movslq	80(%rsi), %rax
	testl	%eax, %eax
	jle	.L2435
.L2434:
	salq	$4, %rax
	addq	88(%rsi), %rax
	pxor	%xmm0, %xmm0
	movlps	-16(%rax), %xmm0
	movhps	-8(%rax), %xmm0
	movlps	%xmm0, 512(%rbx)
	movhps	%xmm0, 520(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L2435:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	80(%rsi), %rax
	jmp	.L2434
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19FindRenderedTextEndEPKcS1_
	.def	_ZN5ImGui19FindRenderedTextEndEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19FindRenderedTextEndEPKcS1_
_ZN5ImGui19FindRenderedTextEndEPKcS1_:
.LFB688:
	.seh_endprologue
	movq	%rcx, %rax
	testq	%rdx, %rdx
	movq	$-1, %rcx
	cmove	%rcx, %rdx
	cmpq	%rax, %rdx
	ja	.L2441
	jmp	.L2438
	.p2align 4,,10
.L2440:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L2438
.L2441:
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	je	.L2438
	cmpb	$35, %cl
	jne	.L2440
	cmpb	$35, 1(%rax)
	jne	.L2440
.L2438:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7LogTextEPKcz
	.def	_ZN5ImGui7LogTextEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7LogTextEPKcz
_ZN5ImGui7LogTextEPKcz:
.LFB689:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	cmpb	$0, 11432(%rax)
	jne	.L2453
.L2448:
	addq	$56, %rsp
	ret
	.p2align 4,,10
.L2453:
	movq	11440(%rax), %r9
	leaq	72(%rsp), %r8
	movq	%r8, 40(%rsp)
	testq	%r9, %r9
	je	.L2450
	movq	%rcx, %rdx
	movq	%r9, %rcx
	call	__mingw_vfprintf
	nop
	addq	$56, %rsp
	ret
	.p2align 4,,10
.L2450:
	movq	11448(%rax), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	_ZN15ImGuiTextBuffer7appendvEPKcPc
	jmp	.L2448
	.seh_endproc
	.section .rdata,"dr"
.LC106:
	.ascii "\15\12%*s%.*s\0"
.LC107:
	.ascii " %.*s\0"
	.text
	.p2align 4,,15
	.def	_ZL15LogRenderedTextRK6ImVec2PKcS3_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15LogRenderedTextRK6ImVec2PKcS3_
_ZL15LogRenderedTextRK6ImVec2PKcS3_:
.LFB690:
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
	movq	%r8, %rsi
	movq	GImGui(%rip), %r8
	movq	%rdx, %r12
	testq	%rsi, %rsi
	movq	6008(%r8), %rdx
	je	.L2480
.L2455:
	movss	4(%rcx), %xmm1
	movss	.LC18(%rip), %xmm0
	addss	240(%rdx), %xmm0
	movss	%xmm1, 240(%rdx)
	movl	244(%rdx), %ebp
	movl	11456(%r8), %eax
	ucomiss	%xmm0, %xmm1
	seta	%r13b
	cmpl	%ebp, %eax
	jle	.L2459
	movl	%ebp, 11456(%r8)
	movl	%ebp, %eax
	movl	244(%rdx), %ebp
.L2459:
	leaq	.LC98(%rip), %r14
	subl	%eax, %ebp
	movq	%r12, %r8
	sall	$2, %ebp
	cmpq	%r8, %rsi
	jbe	.L2460
	.p2align 4,,10
.L2482:
	cmpb	$10, (%r8)
	je	.L2473
	movq	%r8, %rbx
	jmp	.L2462
	.p2align 4,,10
.L2463:
	cmpb	$10, (%rbx)
	je	.L2481
.L2462:
	addq	$1, %rbx
	cmpq	%rbx, %rsi
	jne	.L2463
	cmpq	%r8, %rsi
	movq	%rsi, %rdx
	setne	%dil
.L2464:
	testb	%dil, %dil
	jne	.L2470
.L2454:
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
.L2481:
	movq	%rbx, %rdx
.L2461:
	xorl	%edi, %edi
.L2470:
	subq	%r8, %rdx
	cmpq	%r12, %r8
	jne	.L2474
	testb	%r13b, %r13b
	jne	.L2474
	leaq	.LC107(%rip), %rcx
	call	_ZN5ImGui7LogTextEPKcz
.L2467:
	testb	%dil, %dil
	jne	.L2454
	leaq	1(%rbx), %r8
	cmpq	%r8, %rsi
	ja	.L2482
.L2460:
	movq	%rsi, %rdx
	setne	%dil
	movq	%rsi, %rbx
	jmp	.L2464
	.p2align 4,,10
.L2474:
	movq	%r8, 32(%rsp)
	movl	%edx, %r9d
	movq	%r14, %r8
	movl	%ebp, %edx
	leaq	.LC106(%rip), %rcx
	call	_ZN5ImGui7LogTextEPKcz
	jmp	.L2467
	.p2align 4,,10
.L2473:
	movq	%r8, %rdx
	movq	%r8, %rbx
	jmp	.L2461
.L2480:
	movq	$-1, %rsi
	cmpq	%rsi, %r12
	je	.L2455
	movzbl	(%r12), %eax
	movq	%r12, %rsi
	testb	%al, %al
	jne	.L2456
	jmp	.L2455
	.p2align 4,,10
.L2457:
	addq	$1, %rsi
	cmpq	$-1, %rsi
	je	.L2455
	movzbl	(%rsi), %eax
	testb	%al, %al
	je	.L2455
.L2456:
	cmpb	$35, %al
	jne	.L2457
	cmpb	$35, 1(%rsi)
	jne	.L2457
	jmp	.L2455
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	.def	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
_ZN5ImGui10RenderTextE6ImVec2PKcS2_b:
.LFB691:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	GImGui(%rip), %rdi
	movq	6008(%rdi), %rax
	testb	%r9b, %r9b
	movq	%rcx, 112(%rsp)
	movq	%rdx, %rsi
	movq	%r8, %rbx
	movb	$1, 138(%rax)
	je	.L2484
	testq	%r8, %r8
	movq	$-1, %rdx
	cmovne	%r8, %rdx
	cmpq	%rdx, %rsi
	jnb	.L2483
	movzbl	(%rsi), %eax
	testb	%al, %al
	je	.L2483
	movq	%rsi, %rbx
	jmp	.L2487
	.p2align 4,,10
.L2489:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L2499
	movzbl	(%rbx), %eax
	testb	%al, %al
	je	.L2499
.L2487:
	cmpb	$35, %al
	jne	.L2489
	cmpb	$35, 1(%rbx)
	jne	.L2489
	.p2align 4,,10
.L2499:
	movl	%ebx, %eax
	subl	%esi, %eax
.L2488:
	testl	%eax, %eax
	jle	.L2483
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	6008(%rdi), %rcx
	leaq	112(%rsp), %r9
	movq	5936(%rdi), %rdx
	movss	5944(%rdi), %xmm2
	movq	656(%rcx), %rcx
	movl	$0x00000000, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	cmpb	$0, 11432(%rdi)
	jne	.L2500
.L2483:
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L2484:
	testq	%r8, %r8
	jne	.L2499
	movq	%rdx, %rcx
	call	strlen
	leaq	(%rsi,%rax), %rbx
	jmp	.L2488
	.p2align 4,,10
.L2500:
	leaq	112(%rsp), %rcx
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	nop
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f
	.def	_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f
_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f:
.LFB692:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rax
	testq	%r8, %r8
	movq	%rcx, 128(%rsp)
	movq	%rdx, %rdi
	movq	%r8, %rbx
	movb	$1, 138(%rax)
	je	.L2506
.L2502:
	movq	%rbx, %rax
	movss	%xmm3, 92(%rsp)
	subq	%rdi, %rax
	testl	%eax, %eax
	jle	.L2501
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	6008(%rsi), %rcx
	leaq	128(%rsp), %r9
	movq	5936(%rsi), %rdx
	movss	92(%rsp), %xmm3
	movss	5944(%rsi), %xmm2
	movq	656(%rcx), %rcx
	movss	%xmm3, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%rdi, 40(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	cmpb	$0, 11432(%rsi)
	jne	.L2507
.L2501:
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L2506:
	movq	%rdx, %rcx
	movss	%xmm3, 92(%rsp)
	call	strlen
	movss	92(%rsp), %xmm3
	leaq	(%rdi,%rax), %rbx
	jmp	.L2502
	.p2align 4,,10
.L2507:
	leaq	128(%rsp), %rcx
	movq	%rbx, %r8
	movq	%rdi, %rdx
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	nop
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	.def	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
_ZN5ImGui11RenderFrameE6ImVec2S0_jbf:
.LFB694:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$112, %rsp
	.seh_stackalloc	112
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	176(%rsp), %xmm6
	movq	%rdx, 152(%rsp)
	movq	6008(%rax), %rdx
	leaq	152(%rsp), %rsi
	movl	%r9d, %edi
	movq	%rcx, 144(%rsp)
	movl	%r8d, %r9d
	movq	%rsi, %r8
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	leaq	144(%rsp), %rdx
	movq	656(%rbx), %rcx
	movl	$-1, 40(%rsp)
	movss	%xmm6, 32(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	testb	%dil, %dil
	je	.L2508
	testb	$-128, 12(%rbx)
	jne	.L2513
.L2508:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L2513:
	movl	$6, %ecx
	movq	656(%rbx), %r10
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	leaq	64(%rsp), %rdx
	movss	.LC18(%rip), %xmm7
	movl	$-1, 40(%rsp)
	leaq	72(%rsp), %r8
	movl	%eax, %r9d
	movss	%xmm6, 32(%rsp)
	movss	156(%rsp), %xmm0
	movss	152(%rsp), %xmm1
	movss	%xmm7, 48(%rsp)
	addss	%xmm7, %xmm0
	movq	%r10, %rcx
	addss	%xmm7, %xmm1
	movss	%xmm0, 76(%rsp)
	movss	148(%rsp), %xmm0
	movss	%xmm1, 72(%rsp)
	movss	144(%rsp), %xmm1
	addss	%xmm7, %xmm0
	addss	%xmm7, %xmm1
	movss	%xmm0, 68(%rsp)
	movss	%xmm1, 64(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movl	$5, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	656(%rbx), %rcx
	movq	%rsi, %r8
	movss	%xmm7, 48(%rsp)
	movl	%eax, %r9d
	movl	$-1, 40(%rsp)
	movss	%xmm6, 32(%rsp)
	leaq	144(%rsp), %rdx
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	jmp	.L2508
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	.def	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf:
.LFB695:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	.LC108(%rip), %xmm0
	movq	6008(%rax), %r8
	movd	%ecx, %xmm1
	movb	$1, 138(%r8)
	movss	5944(%rax), %xmm3
	movq	6008(%rax), %r8
	movq	%rcx, %rax
	mulss	%xmm3, %xmm0
	shrq	$32, %rax
	testb	%dl, %dl
	mulss	.LC17(%rip), %xmm3
	movd	%eax, %xmm4
	mulss	%xmm2, %xmm0
	mulss	%xmm3, %xmm2
	addss	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	addss	%xmm4, %xmm2
	jne	.L2517
	addss	%xmm1, %xmm3
	movss	%xmm3, 56(%rsp)
	pxor	%xmm3, %xmm3
	mulss	%xmm0, %xmm3
	addss	%xmm2, %xmm3
	movss	%xmm3, 60(%rsp)
	movss	.LC110(%rip), %xmm3
	mulss	%xmm0, %xmm3
	addss	%xmm3, %xmm1
	movss	.LC112(%rip), %xmm3
	mulss	%xmm0, %xmm3
	mulss	.LC111(%rip), %xmm0
	movss	%xmm1, 64(%rsp)
	movss	%xmm1, 72(%rsp)
	addss	%xmm2, %xmm3
	addss	%xmm2, %xmm0
	movss	%xmm3, 68(%rsp)
	movss	%xmm0, 76(%rsp)
.L2516:
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	leaq	56(%rsp), %rdx
	movq	656(%r8), %rcx
	leaq	72(%rsp), %r9
	movl	%eax, 32(%rsp)
	leaq	64(%rsp), %r8
	call	_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j
	nop
	addq	$88, %rsp
	ret
	.p2align 4,,10
.L2517:
	mulss	.LC109(%rip), %xmm3
	subss	%xmm3, %xmm2
	pxor	%xmm3, %xmm3
	mulss	%xmm0, %xmm3
	addss	%xmm1, %xmm3
	movss	%xmm3, 56(%rsp)
	movaps	%xmm2, %xmm3
	addss	%xmm0, %xmm3
	movss	%xmm3, 60(%rsp)
	movss	.LC110(%rip), %xmm3
	mulss	%xmm0, %xmm3
	addss	%xmm3, %xmm2
	movss	.LC111(%rip), %xmm3
	mulss	%xmm0, %xmm3
	mulss	.LC112(%rip), %xmm0
	movss	%xmm2, 68(%rsp)
	movss	%xmm2, 76(%rsp)
	addss	%xmm1, %xmm3
	addss	%xmm1, %xmm0
	movss	%xmm3, 64(%rsp)
	movss	%xmm0, 72(%rsp)
	jmp	.L2516
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12RenderBulletE6ImVec2
	.def	_ZN5ImGui12RenderBulletE6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12RenderBulletE6ImVec2
_ZN5ImGui12RenderBulletE6ImVec2:
.LFB696:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	GImGui(%rip), %r8
	movq	6008(%r8), %rax
	movq	%rcx, 64(%rsp)
	xorl	%ecx, %ecx
	movb	$1, 138(%rax)
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	.LC113(%rip), %xmm2
	leaq	64(%rsp), %rdx
	mulss	5944(%r8), %xmm2
	movl	%eax, %r9d
	movq	6008(%r8), %rax
	movq	656(%rax), %rcx
	movl	$8, 32(%rsp)
	call	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
	nop
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15RenderCheckMarkE6ImVec2j
	.def	_ZN5ImGui15RenderCheckMarkE6ImVec2j;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15RenderCheckMarkE6ImVec2j
_ZN5ImGui15RenderCheckMarkE6ImVec2j:
.LFB697:
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
	subq	$176, %rsp
	.seh_stackalloc	176
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
	.seh_endprologue
	movq	GImGui(%rip), %r8
	pxor	%xmm2, %xmm2
	movss	.LC114(%rip), %xmm1
	movss	.LC17(%rip), %xmm3
	movss	.LC115(%rip), %xmm8
	movq	6008(%r8), %rax
	movss	.LC18(%rip), %xmm10
	movl	%edx, %esi
	movd	%ecx, %xmm7
	shrq	$32, %rcx
	movq	%rcx, %xmm6
	addss	%xmm3, %xmm7
	movb	$1, 138(%rax)
	movq	5936(%r8), %rdx
	subss	%xmm10, %xmm6
	movss	5944(%r8), %xmm0
	movq	6008(%r8), %rbx
	mulss	%xmm0, %xmm1
	movq	656(%rbx), %rdi
	addss	%xmm3, %xmm1
	cvttss2si	%xmm1, %eax
	movaps	%xmm0, %xmm1
	divss	(%rdx), %xmm0
	mulss	96(%rdx), %xmm0
	cvtsi2ss	%eax, %xmm2
	addss	%xmm3, %xmm0
	subss	%xmm2, %xmm1
	addss	%xmm2, %xmm7
	divss	%xmm8, %xmm1
	movaps	%xmm7, %xmm9
	cvttss2si	%xmm1, %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	mulss	%xmm1, %xmm8
	addss	%xmm1, %xmm9
	cvtsi2ss	%eax, %xmm0
	cvttss2si	12(%rdx), %eax
	movl	116(%rdi), %edx
	addss	%xmm7, %xmm8
	addss	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movslq	112(%rdi), %rax
	addss	%xmm0, %xmm6
	cmpl	%edx, %eax
	movaps	%xmm6, %xmm12
	movaps	%xmm6, %xmm11
	subss	%xmm1, %xmm12
	addss	%xmm1, %xmm1
	subss	%xmm1, %xmm11
	je	.L2520
	movq	120(%rdi), %r12
	movq	%rdi, %rbp
.L2521:
	leal	1(%rax), %ecx
	leaq	(%r12,%rax,8), %rax
	movl	%ecx, 112(%rdi)
	movss	%xmm7, (%rax)
	movss	%xmm12, 4(%rax)
	movslq	112(%rbp), %rax
	cmpl	%edx, %eax
	je	.L2526
	movq	120(%rbp), %r12
	movq	%rbp, %rdi
.L2527:
	leal	1(%rax), %ecx
	leaq	(%r12,%rax,8), %rax
	movl	%ecx, 112(%rbp)
	movss	%xmm9, (%rax)
	movss	%xmm6, 4(%rax)
	movslq	112(%rdi), %rax
	cmpl	%edx, %eax
	je	.L2532
	movq	120(%rdi), %rbp
	movq	%rdi, %rbx
	movq	%rbp, %rdx
.L2533:
	leal	1(%rax), %ecx
	movl	%esi, %r9d
	movl	%ecx, 112(%rdi)
	movl	112(%rbx), %r8d
	leaq	0(%rbp,%rax,8), %rax
	movq	%rbx, %rcx
	movss	%xmm8, (%rax)
	movss	%xmm11, 4(%rax)
	movl	$1, 48(%rsp)
	movss	%xmm10, 40(%rsp)
	movl	$0, 32(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L2538
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2541
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2541
	subl	$1, 844(%rax)
.L2541:
	call	*240(%rax)
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L2538:
	movl	$0, 112(%rbx)
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
	movaps	128(%rsp), %xmm10
	movaps	144(%rsp), %xmm11
	movaps	160(%rsp), %xmm12
	addq	$176, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L2520:
	leal	1(%rax), %ebp
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L2552
.L2522:
	cmpl	%edx, %ebp
	cmovl	%edx, %ebp
	addl	$1, 844(%r8)
	movslq	%ebp, %rcx
	salq	$3, %rcx
	call	*232(%r8)
	movq	120(%rdi), %rcx
	movq	%rax, %r12
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2525
	movslq	112(%rdi), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2525
	subl	$1, 844(%rax)
.L2525:
	call	*240(%rax)
	movl	%ebp, 116(%rdi)
	movslq	112(%rdi), %rax
	movq	656(%rbx), %rbp
	movq	%r12, 120(%rdi)
	movl	116(%rbp), %edx
	jmp	.L2521
	.p2align 4,,10
.L2532:
	leal	1(%rdx), %r12d
	testl	%edx, %edx
	movl	$8, %eax
	jne	.L2553
.L2534:
	cmpl	%eax, %r12d
	cmovl	%eax, %r12d
	movq	GImGui(%rip), %rax
	movslq	%r12d, %rcx
	salq	$3, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	120(%rdi), %rcx
	movq	%rax, %rbp
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2537
	movslq	112(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2537
	subl	$1, 844(%rax)
.L2537:
	call	*240(%rax)
	movq	%rbp, 120(%rdi)
	movslq	112(%rdi), %rax
	movq	656(%rbx), %rbx
	movl	%r12d, 116(%rdi)
	movq	120(%rbx), %rdx
	jmp	.L2533
	.p2align 4,,10
.L2526:
	leal	1(%rdx), %edi
	testl	%edx, %edx
	movl	$8, %eax
	jne	.L2554
.L2528:
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	movq	GImGui(%rip), %rax
	movslq	%edi, %rcx
	salq	$3, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	120(%rbp), %rcx
	movq	%rax, %r12
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2531
	movslq	112(%rbp), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbp), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2531
	subl	$1, 844(%rax)
.L2531:
	call	*240(%rax)
	movl	%edi, 116(%rbp)
	movslq	112(%rbp), %rax
	movq	656(%rbx), %rdi
	movq	%r12, 120(%rbp)
	movl	116(%rdi), %edx
	jmp	.L2527
	.p2align 4,,10
.L2554:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	jmp	.L2528
	.p2align 4,,10
.L2553:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	jmp	.L2534
	.p2align 4,,10
.L2552:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L2522
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	.def	_ZN5ImGui12CalcTextSizeEPKcS1_bf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12CalcTextSizeEPKcS1_bf
_ZN5ImGui12CalcTextSizeEPKcS1_bf:
.LFB698:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	GImGui(%rip), %r9
	testb	%r8b, %r8b
	je	.L2556
	testq	%rdx, %rdx
	movq	$-1, %r8
	cmovne	%rdx, %r8
	cmpq	%r8, %rcx
	jnb	.L2558
	movzbl	(%rcx), %eax
	testb	%al, %al
	je	.L2558
	movq	%rcx, %rdx
	jmp	.L2559
	.p2align 4,,10
.L2560:
	addq	$1, %rdx
	cmpq	%r8, %rdx
	je	.L2556
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L2556
.L2559:
	cmpb	$35, %al
	jne	.L2560
	cmpb	$35, 1(%rdx)
	jne	.L2560
	.p2align 4,,10
.L2556:
	movss	5944(%r9), %xmm6
	cmpq	%rcx, %rdx
	je	.L2566
	movq	5936(%r9), %rbx
	movaps	%xmm6, %xmm1
	movq	%rcx, 32(%rsp)
	movss	.LC90(%rip), %xmm2
	movq	%rdx, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%rbx, %rcx
	call	_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
	movss	(%rbx), %xmm1
	movd	%eax, %xmm0
	ucomiss	.LC0(%rip), %xmm0
	jbe	.L2564
	divss	%xmm1, %xmm6
	subss	%xmm6, %xmm0
.L2564:
	addss	.LC116(%rip), %xmm0
	pxor	%xmm4, %xmm4
	movaps	64(%rsp), %xmm6
	cvttss2si	%xmm0, %ecx
	cvtsi2ss	%ecx, %xmm4
	movabsq	$-4294967296, %rcx
	andq	%rcx, %rax
	movd	%xmm4, %edx
	movl	%edx, %edx
	orq	%rdx, %rax
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L2558:
	movss	5944(%r9), %xmm6
.L2566:
	movd	%xmm6, %eax
	movaps	64(%rsp), %xmm6
	salq	$32, %rax
	addq	$80, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	.def	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect:
.LFB693:
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
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	.seh_endprologue
	movq	$-1, %rax
	movq	272(%rsp), %r14
	testq	%r9, %r9
	movq	%rdx, %r12
	movq	%rcx, %rbp
	movq	256(%rsp), %rdx
	cmove	%rax, %r9
	movq	%r8, %rsi
	cmpq	%r9, %r8
	jnb	.L2576
	movzbl	(%r8), %eax
	testb	%al, %al
	je	.L2576
	movq	%r8, %rbx
	jmp	.L2579
	.p2align 4,,10
.L2581:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	je	.L2619
	movzbl	(%rbx), %eax
	testb	%al, %al
	je	.L2619
.L2579:
	cmpb	$35, %al
	jne	.L2581
	cmpb	$35, 1(%rbx)
	jne	.L2581
	.p2align 4,,10
.L2619:
	movl	%ebx, %eax
	subl	%esi, %eax
	testl	%eax, %eax
	je	.L2576
	movq	GImGui(%rip), %rdi
	testq	%rdx, %rdx
	movq	6008(%rdi), %rax
	movb	$1, 138(%rax)
	movq	0(%rbp), %rax
	movq	6008(%rdi), %r13
	movq	%rax, 104(%rsp)
	je	.L2583
	movss	(%rdx), %xmm7
	movss	4(%rdx), %xmm4
.L2584:
	movss	104(%rsp), %xmm2
	movaps	%xmm7, %xmm0
	testq	%r14, %r14
	addss	%xmm2, %xmm0
	je	.L2585
	movss	8(%r14), %xmm5
	movq	%r14, %rbp
	movl	$1, %edx
	leaq	8(%r14), %rcx
	ucomiss	%xmm5, %xmm0
	jnb	.L2601
	movss	108(%rsp), %xmm0
	addss	%xmm4, %xmm0
	ucomiss	12(%r14), %xmm0
	setnb	%dl
.L2601:
	movss	(%r14), %xmm0
	movl	$1, %eax
	ucomiss	%xmm2, %xmm0
	jbe	.L2621
.L2599:
	movq	264(%rsp), %rdx
	pxor	%xmm3, %xmm3
	movss	(%rdx), %xmm6
	ucomiss	%xmm3, %xmm6
	jbe	.L2589
	movss	(%r12), %xmm1
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	subss	%xmm7, %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm2, %xmm0
	ucomiss	%xmm0, %xmm2
	jnb	.L2622
.L2591:
	movq	264(%rsp), %rdx
	movss	%xmm0, 104(%rsp)
.L2589:
	movss	4(%rdx), %xmm2
	ucomiss	%xmm3, %xmm2
	jbe	.L2593
	movss	108(%rsp), %xmm1
	movss	4(%r12), %xmm0
	subss	%xmm1, %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm1
	jnb	.L2623
.L2595:
	movss	%xmm0, 108(%rsp)
.L2593:
	movss	5944(%rdi), %xmm2
	testb	%al, %al
	movq	656(%r13), %r8
	movq	5936(%rdi), %r10
	movss	%xmm2, 92(%rsp)
	je	.L2597
	movss	4(%rcx), %xmm0
	xorl	%ecx, %ecx
	movss	%xmm5, 120(%rsp)
	movss	4(%rbp), %xmm1
	movss	0(%rbp), %xmm3
	movss	%xmm0, 124(%rsp)
	leaq	104(%rsp), %rbp
	movss	%xmm1, 116(%rsp)
	movss	%xmm3, 112(%rsp)
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	leaq	112(%rsp), %rdx
	movq	%rdx, 64(%rsp)
.L2620:
	movss	92(%rsp), %xmm2
	movl	%eax, 32(%rsp)
	movq	%rbp, %r9
	movq	%r10, %rdx
	movl	$0x00000000, 56(%rsp)
	movq	%r8, %rcx
	movq	%rbx, 48(%rsp)
	movq	%rsi, 40(%rsp)
	call	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	cmpb	$0, 11432(%rdi)
	jne	.L2624
.L2576:
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	addq	$160, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L2597:
	leaq	104(%rsp), %rbp
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	$0, 64(%rsp)
	jmp	.L2620
	.p2align 4,,10
.L2624:
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%rbp, %rcx
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	jmp	.L2576
	.p2align 4,,10
.L2621:
	movss	4(%r14), %xmm0
	ucomiss	108(%rsp), %xmm0
	seta	%al
	orl	%edx, %eax
	jmp	.L2599
	.p2align 4,,10
.L2623:
	movaps	%xmm1, %xmm0
	jmp	.L2595
	.p2align 4,,10
.L2622:
	movaps	%xmm2, %xmm0
	jmp	.L2591
	.p2align 4,,10
.L2583:
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	pxor	%xmm3, %xmm3
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movd	%eax, %xmm7
	shrq	$32, %rax
	movd	%eax, %xmm4
	jmp	.L2584
	.p2align 4,,10
.L2585:
	movss	(%r12), %xmm5
	ucomiss	%xmm5, %xmm0
	jb	.L2625
	movq	%r12, %rcx
	movl	$1, %eax
	jmp	.L2599
.L2625:
	movss	108(%rsp), %xmm0
	movq	%r12, %rcx
	addss	%xmm4, %xmm0
	ucomiss	4(%r12), %xmm0
	setnb	%al
	jmp	.L2599
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16CalcListClippingEifPiS0_
	.def	_ZN5ImGui16CalcListClippingEifPiS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16CalcListClippingEifPiS0_
_ZN5ImGui16CalcListClippingEifPiS0_:
.LFB699:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	cmpb	$0, 11432(%rax)
	je	.L2627
	movl	$0, (%r8)
	movl	%ecx, (%r9)
	ret
	.p2align 4,,10
.L2627:
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	je	.L2629
	movl	$0, (%r9)
	movl	$0, (%r8)
	ret
	.p2align 4,,10
.L2629:
	movss	196(%rax), %xmm2
	xorl	%r10d, %r10d
	movss	516(%rax), %xmm0
	subss	%xmm2, %xmm0
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movss	524(%rax), %xmm0
	subss	%xmm2, %xmm0
	testl	%edx, %edx
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	js	.L2630
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	movl	%edx, %r10d
.L2630:
	addl	$1, %eax
	movl	%r10d, %edx
	cmpl	%r10d, %eax
	jl	.L2631
	cmpl	%ecx, %eax
	movl	%ecx, %edx
	cmovle	%eax, %edx
.L2631:
	movl	%r10d, (%r8)
	movl	%edx, (%r9)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	.def	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b:
.LFB701:
	subq	$24, %rsp
	.seh_stackalloc	24
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	(%rcx), %xmm0
	movss	4(%rcx), %xmm1
	movss	(%rdx), %xmm2
	movss	4(%rdx), %xmm5
	testb	%r8b, %r8b
	je	.L2635
	movq	6008(%rax), %rdx
	movss	512(%rdx), %xmm3
	maxss	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	movss	516(%rdx), %xmm3
	maxss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	movss	520(%rdx), %xmm3
	minss	%xmm2, %xmm3
	movaps	%xmm3, %xmm2
	movss	524(%rdx), %xmm3
	minss	%xmm5, %xmm3
	movaps	%xmm3, %xmm5
.L2635:
	movss	5184(%rax), %xmm4
	movss	264(%rax), %xmm3
	subss	%xmm4, %xmm0
	ucomiss	%xmm0, %xmm3
	jb	.L2659
	movss	5188(%rax), %xmm0
	movss	268(%rax), %xmm6
	subss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm6
	jnb	.L2660
.L2659:
	movaps	(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$24, %rsp
	ret
	.p2align 4,,10
.L2660:
	addss	%xmm4, %xmm2
	ucomiss	%xmm3, %xmm2
	jbe	.L2659
	addss	%xmm0, %xmm5
	ucomiss	%xmm6, %xmm5
	movaps	(%rsp), %xmm6
	seta	%al
	addq	$24, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7ItemAddERK6ImRectPKj
	.def	_ZN5ImGui7ItemAddERK6ImRectPKj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7ItemAddERK6ImRectPKj
_ZN5ImGui7ItemAddERK6ImRectPKj:
.LFB646:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %r9
	movq	6008(%r9), %rax
	testq	%rdx, %rdx
	movq	%rdx, %r11
	movb	$1, 138(%rax)
	movq	6008(%r9), %r10
	je	.L2662
	movl	(%rdx), %eax
	movq	8(%rcx), %rdx
	movl	%eax, 248(%r10)
	movq	(%rcx), %rax
	movq	%rdx, 260(%r10)
	movb	$0, 269(%r10)
	movb	$0, 268(%r10)
	movq	%rax, 252(%r10)
	movq	6008(%r9), %rax
	movss	12(%rcx), %xmm0
	ucomiss	516(%rax), %xmm0
	jbe	.L2675
	movss	524(%rax), %xmm0
	ucomiss	4(%rcx), %xmm0
	jbe	.L2675
	movss	8(%rcx), %xmm0
	ucomiss	512(%rax), %xmm0
	ja	.L2696
	.p2align 4,,10
.L2675:
	movl	6068(%r9), %eax
	cmpl	%eax, (%r11)
	je	.L2667
.L2664:
	movzbl	11432(%r9), %eax
	testb	%al, %al
	je	.L2661
.L2667:
	leaq	8(%rcx), %rdx
	movl	$1, %r8d
	call	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	testb	%al, %al
	je	.L2666
	movb	$1, 269(%r10)
	movq	6048(%r9), %rdx
	cmpq	664(%r10), %rdx
	jne	.L2666
	movl	6068(%r9), %ecx
	testl	%ecx, %ecx
	je	.L2669
	testq	%r11, %r11
	je	.L2670
	cmpl	(%r11), %ecx
	je	.L2669
.L2670:
	cmpb	$0, 6078(%r9)
	jne	.L2669
	cmpl	92(%r10), %ecx
	je	.L2669
	.p2align 4,,10
.L2666:
	movl	$1, %eax
.L2661:
	addq	$40, %rsp
	ret
	.p2align 4,,10
.L2662:
	movl	$0, 248(%r10)
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movb	$0, 269(%r10)
	movb	$0, 268(%r10)
	movq	%rax, 252(%r10)
	movq	%rdx, 260(%r10)
	movq	6008(%r9), %rax
	movss	12(%rcx), %xmm0
	ucomiss	516(%rax), %xmm0
	jbe	.L2664
	movss	524(%rax), %xmm0
	ucomiss	4(%rcx), %xmm0
	jbe	.L2664
	movss	8(%rcx), %xmm0
	ucomiss	512(%rax), %xmm0
	jbe	.L2664
	movss	520(%rax), %xmm0
	ucomiss	(%rcx), %xmm0
	ja	.L2667
	jmp	.L2664
	.p2align 4,,10
.L2696:
	movss	520(%rax), %xmm0
	ucomiss	(%rcx), %xmm0
	jbe	.L2675
	jmp	.L2667
	.p2align 4,,10
.L2669:
	movq	6032(%r9), %rcx
	testq	%rcx, %rcx
	je	.L2671
	movq	664(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2671
	testb	$2, 15(%rcx)
	je	.L2671
	cmpb	$0, 137(%rcx)
	je	.L2671
	cmpq	%rcx, %rdx
	jne	.L2666
	.p2align 4,,10
.L2671:
	movb	$1, 268(%r10)
	jmp	.L2661
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9IsHoveredERK6ImRectjb
	.def	_ZN5ImGui9IsHoveredERK6ImRectjb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9IsHoveredERK6ImRectjb
_ZN5ImGui9IsHoveredERK6ImRectjb:
.LFB648:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %r9
	movl	6056(%r9), %eax
	cmpl	%edx, %eax
	je	.L2698
	testl	%eax, %eax
	jne	.L2722
.L2698:
	movq	6008(%r9), %r10
	cmpq	%r10, 6040(%r9)
	je	.L2700
.L2723:
	xorl	%eax, %eax
	testb	%r8b, %r8b
	je	.L2697
	movq	664(%r10), %r11
	cmpq	%r11, 6048(%r9)
	je	.L2700
.L2697:
	addq	$40, %rsp
	ret
	.p2align 4,,10
.L2722:
	movzbl	6060(%r9), %eax
	testb	%al, %al
	je	.L2697
	movq	6008(%r9), %r10
	cmpq	%r10, 6040(%r9)
	jne	.L2723
	.p2align 4,,10
.L2700:
	movl	6068(%r9), %eax
	testl	%eax, %eax
	je	.L2701
	cmpl	%edx, %eax
	je	.L2701
	movzbl	6078(%r9), %eax
	testb	%al, %al
	je	.L2697
.L2701:
	leaq	8(%rcx), %rdx
	movl	$1, %r8d
	call	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	testb	%al, %al
	je	.L2697
	movq	6032(%r9), %rdx
	testq	%rdx, %rdx
	je	.L2697
	movq	664(%rdx), %rdx
	testq	%rdx, %rdx
	je	.L2697
	testb	$2, 15(%rdx)
	je	.L2697
	cmpb	$0, 137(%rdx)
	je	.L2697
	movq	6048(%r9), %rax
	cmpq	%rdx, 664(%rax)
	sete	%al
	jmp	.L2697
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143:
.LFB6603:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %r10
	movq	8(%rcx), %rdx
	movq	6008(%r10), %rax
	movb	$1, 138(%rax)
	movq	(%rcx), %rax
	movq	6008(%r10), %r9
	movq	%rax, 252(%r9)
	movq	%rdx, 260(%r9)
	movss	12(%rcx), %xmm0
	movl	$0, 248(%r9)
	movb	$0, 269(%r9)
	movb	$0, 268(%r9)
	movq	6008(%r10), %rax
	ucomiss	516(%rax), %xmm0
	jbe	.L2725
	movss	524(%rax), %xmm0
	ucomiss	4(%rcx), %xmm0
	ja	.L2757
.L2725:
	movzbl	11432(%r10), %eax
	testb	%al, %al
	je	.L2724
.L2729:
	leaq	8(%rcx), %rdx
	movl	$1, %r8d
	call	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	testb	%al, %al
	je	.L2732
	movb	$1, 269(%r9)
	movq	6048(%r10), %rdx
	cmpq	664(%r9), %rdx
	jne	.L2732
	movl	6068(%r10), %ecx
	testl	%ecx, %ecx
	je	.L2733
	cmpb	$0, 6078(%r10)
	jne	.L2733
	cmpl	92(%r9), %ecx
	je	.L2733
	.p2align 4,,10
.L2732:
	movl	$1, %eax
.L2724:
	addq	$40, %rsp
	ret
	.p2align 4,,10
.L2757:
	movss	8(%rcx), %xmm0
	ucomiss	512(%rax), %xmm0
	jbe	.L2725
	movss	520(%rax), %xmm0
	ucomiss	(%rcx), %xmm0
	ja	.L2729
	jmp	.L2725
	.p2align 4,,10
.L2733:
	movq	6032(%r10), %rcx
	testq	%rcx, %rcx
	je	.L2734
	movq	664(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2734
	testb	$2, 15(%rcx)
	je	.L2734
	cmpq	%rcx, %rdx
	je	.L2734
	cmpb	$0, 137(%rcx)
	jne	.L2732
	.p2align 4,,10
.L2734:
	movb	$1, 268(%r9)
	jmp	.L2724
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui21IsMouseHoveringWindowEv
	.def	_ZN5ImGui21IsMouseHoveringWindowEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21IsMouseHoveringWindowEv
_ZN5ImGui21IsMouseHoveringWindowEv:
.LFB702:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	cmpq	%rdx, 6040(%rax)
	sete	%al
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui24IsMouseHoveringAnyWindowEv
	.def	_ZN5ImGui24IsMouseHoveringAnyWindowEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui24IsMouseHoveringAnyWindowEv
_ZN5ImGui24IsMouseHoveringAnyWindowEv:
.LFB703:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	cmpq	$0, 6040(%rax)
	setne	%al
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22IsPosHoveringAnyWindowERK6ImVec2
	.def	_ZN5ImGui22IsPosHoveringAnyWindowERK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22IsPosHoveringAnyWindowERK6ImVec2
_ZN5ImGui22IsPosHoveringAnyWindowERK6ImVec2:
.LFB704:
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
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	GImGui(%rip), %rdi
	movss	(%rcx), %xmm6
	movss	4(%rcx), %xmm7
	movl	5976(%rdi), %eax
	movl	%eax, %ebx
	subl	$1, %ebx
	js	.L2761
	leaq	.LC2(%rip), %r12
	movslq	%ebx, %rsi
	leaq	.LC3(%rip), %rbp
	salq	$3, %rsi
	jmp	.L2768
	.p2align 4,,10
.L2762:
	movq	5984(%rdi), %rax
	movq	(%rax,%rsi), %rdx
	movzbl	136(%rdx), %eax
	testb	%al, %al
	je	.L2763
	testb	$2, 13(%rdx)
	jne	.L2763
	movss	5184(%rdi), %xmm1
	movss	528(%rdx), %xmm0
	subss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm6
	jb	.L2763
	movss	5188(%rdi), %xmm2
	movss	532(%rdx), %xmm0
	subss	%xmm2, %xmm0
	ucomiss	%xmm0, %xmm7
	jb	.L2763
	addss	536(%rdx), %xmm1
	ucomiss	%xmm6, %xmm1
	jbe	.L2763
	addss	540(%rdx), %xmm2
	ucomiss	%xmm7, %xmm2
	ja	.L2760
	.p2align 4,,10
.L2763:
	subl	$1, %ebx
	subq	$8, %rsi
	cmpl	$-1, %ebx
	je	.L2761
	movl	5976(%rdi), %eax
.L2768:
	cmpl	%eax, %ebx
	jl	.L2762
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	_assert
	jmp	.L2762
	.p2align 4,,10
.L2761:
	xorl	%eax, %eax
.L2760:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC117:
	.ascii "imgui_key >= 0 && imgui_key < ImGuiKey_COUNT\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11GetKeyIndexEi
	.def	_ZN5ImGui11GetKeyIndexEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetKeyIndexEi
_ZN5ImGui11GetKeyIndexEi:
.LFB706:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movslq	%ecx, %rbx
	cmpl	$18, %ebx
	jbe	.L2779
	leaq	.LC5(%rip), %rdx
	movl	$3153, %r8d
	leaq	.LC117(%rip), %rcx
	call	_assert
.L2779:
	movq	GImGui(%rip), %rax
	movl	52(%rax,%rbx,4), %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC118:
	.ascii "user_key_index >= 0 && user_key_index < ((int)(sizeof(GImGui->IO.KeysDown)/sizeof(*GImGui->IO.KeysDown)))\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui9IsKeyDownEi
	.def	_ZN5ImGui9IsKeyDownEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9IsKeyDownEi
_ZN5ImGui9IsKeyDownEi:
.LFB707:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	xorl	%eax, %eax
	movslq	%ecx, %rbx
	testl	%ebx, %ebx
	js	.L2780
	cmpl	$511, %ebx
	jg	.L2784
.L2782:
	movq	GImGui(%rip), %rax
	movzbl	289(%rax,%rbx), %eax
.L2780:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L2784:
	leaq	.LC5(%rip), %rdx
	movl	$3161, %r8d
	leaq	.LC118(%rip), %rcx
	call	_assert
	jmp	.L2782
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC119:
	.ascii "user_key_index >= 0 && user_key_index < ((int)(sizeof(g.IO.KeysDown)/sizeof(*g.IO.KeysDown)))\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12IsKeyPressedEib
	.def	_ZN5ImGui12IsKeyPressedEib;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12IsKeyPressedEib
_ZN5ImGui12IsKeyPressedEib:
.LFB708:
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
	movslq	%ecx, %rbx
	movl	%edx, %edi
	testl	%ebx, %ebx
	js	.L2790
	cmpl	$511, %ebx
	movq	GImGui(%rip), %rsi
	jg	.L2795
.L2788:
	movss	1020(%rsi,%rbx,4), %xmm6
	ucomiss	.LC0(%rip), %xmm6
	jp	.L2793
	movl	$1, %eax
	je	.L2785
.L2793:
	testb	%dil, %dil
	je	.L2790
	movss	128(%rsi), %xmm1
	ucomiss	%xmm1, %xmm6
	jbe	.L2790
	subss	%xmm1, %xmm6
	movss	132(%rsi), %xmm7
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	fmodf
	movaps	%xmm7, %xmm1
	movss	.LC17(%rip), %xmm8
	movaps	%xmm0, %xmm9
	movaps	%xmm6, %xmm0
	mulss	%xmm7, %xmm8
	subss	16(%rsi), %xmm0
	call	fmodf
	ucomiss	%xmm8, %xmm9
	seta	%al
	ucomiss	%xmm8, %xmm0
	seta	%dl
	xorl	%edx, %eax
.L2785:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L2790:
	xorl	%eax, %eax
	jmp	.L2785
	.p2align 4,,10
.L2795:
	leaq	.LC5(%rip), %rdx
	movl	$3169, %r8d
	leaq	.LC119(%rip), %rcx
	call	_assert
	jmp	.L2788
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb
	.def	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb
_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb:
.LFB649:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rdi
	movzbl	316(%rcx), %esi
	movl	688(%rcx), %eax
	movq	%rcx, %rbx
	testb	%sil, %sil
	leal	1(%rax), %ecx
	movl	%ecx, 688(%rbx)
	je	.L2797
	addl	$1, 692(%rbx)
.L2797:
	testb	%r8b, %r8b
	je	.L2798
	movabsq	$9223372034707292159, %rax
	cmpq	%rax, 704(%rbx)
	jne	.L2798
	testb	%dl, %dl
	jne	.L2813
.L2798:
	cmpl	%ecx, 696(%rbx)
	movl	$1, %eax
	je	.L2796
	xorl	%eax, %eax
	testb	%sil, %sil
	je	.L2796
	movl	700(%rbx), %eax
	cmpl	%eax, 692(%rbx)
	sete	%al
.L2796:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L2813:
	movl	52(%rdi), %ecx
	movl	$1, %edx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L2812
	cmpb	$0, 286(%rdi)
	movl	$1, %eax
	movl	692(%rbx), %edx
	je	.L2800
	movzbl	%sil, %eax
	negl	%eax
.L2800:
	addl	%edx, %eax
	movl	%eax, 708(%rbx)
.L2812:
	movl	688(%rbx), %ecx
	jmp	.L2798
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13IsKeyReleasedEi
	.def	_ZN5ImGui13IsKeyReleasedEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13IsKeyReleasedEi
_ZN5ImGui13IsKeyReleasedEi:
.LFB709:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movslq	%ecx, %rbx
	testl	%ebx, %ebx
	js	.L2815
	cmpl	$511, %ebx
	movq	GImGui(%rip), %rsi
	jg	.L2821
.L2816:
	movss	3068(%rsi,%rbx,4), %xmm0
	ucomiss	.LC0(%rip), %xmm0
	jb	.L2815
	cmpb	$0, 289(%rsi,%rbx)
	movl	$1, %eax
	je	.L2814
.L2815:
	xorl	%eax, %eax
.L2814:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L2821:
	leaq	.LC5(%rip), %rdx
	movl	$3187, %r8d
	leaq	.LC119(%rip), %rcx
	call	_assert
	jmp	.L2816
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC120:
	.ascii "button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown)))\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11IsMouseDownEi
	.def	_ZN5ImGui11IsMouseDownEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11IsMouseDownEi
_ZN5ImGui11IsMouseDownEi:
.LFB710:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movslq	%ecx, %rbx
	cmpl	$4, %ebx
	jbe	.L2823
	leaq	.LC5(%rip), %rdx
	movl	$3196, %r8d
	leaq	.LC120(%rip), %rcx
	call	_assert
.L2823:
	movzbl	272(%rsi,%rbx), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14IsMouseClickedEib
	.def	_ZN5ImGui14IsMouseClickedEib;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14IsMouseClickedEib
_ZN5ImGui14IsMouseClickedEib:
.LFB711:
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
	movq	GImGui(%rip), %rsi
	movslq	%ecx, %rbx
	movl	%edx, %edi
	cmpl	$4, %ebx
	ja	.L2834
.L2825:
	movss	960(%rsi,%rbx,4), %xmm6
	ucomiss	.LC0(%rip), %xmm6
	jp	.L2832
	movl	$1, %eax
	je	.L2824
.L2832:
	xorl	%eax, %eax
	testb	%dil, %dil
	je	.L2824
	movss	128(%rsi), %xmm1
	ucomiss	%xmm1, %xmm6
	ja	.L2835
.L2824:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L2834:
	leaq	.LC5(%rip), %rdx
	movl	$3203, %r8d
	leaq	.LC120(%rip), %rcx
	call	_assert
	jmp	.L2825
	.p2align 4,,10
.L2835:
	subss	%xmm1, %xmm6
	movss	132(%rsi), %xmm7
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	fmodf
	movaps	%xmm7, %xmm1
	movss	.LC17(%rip), %xmm8
	movaps	%xmm0, %xmm9
	movaps	%xmm6, %xmm0
	mulss	%xmm7, %xmm8
	subss	16(%rsi), %xmm0
	call	fmodf
	ucomiss	%xmm8, %xmm9
	seta	%al
	ucomiss	%xmm8, %xmm0
	seta	%dl
	xorl	%edx, %eax
	jmp	.L2824
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15IsMouseReleasedEi
	.def	_ZN5ImGui15IsMouseReleasedEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15IsMouseReleasedEi
_ZN5ImGui15IsMouseReleasedEi:
.LFB712:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movslq	%ecx, %rbx
	cmpl	$4, %ebx
	jbe	.L2837
	leaq	.LC5(%rip), %rdx
	movl	$3221, %r8d
	leaq	.LC120(%rip), %rcx
	call	_assert
.L2837:
	movzbl	949(%rsi,%rbx), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui20IsMouseDoubleClickedEi
	.def	_ZN5ImGui20IsMouseDoubleClickedEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui20IsMouseDoubleClickedEi
_ZN5ImGui20IsMouseDoubleClickedEi:
.LFB713:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movslq	%ecx, %rbx
	cmpl	$4, %ebx
	jbe	.L2839
	leaq	.LC5(%rip), %rdx
	movl	$3228, %r8d
	leaq	.LC120(%rip), %rcx
	call	_assert
.L2839:
	movzbl	944(%rsi,%rbx), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15IsMouseDraggingEif
	.def	_ZN5ImGui15IsMouseDraggingEif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15IsMouseDraggingEif
_ZN5ImGui15IsMouseDraggingEif:
.LFB714:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movslq	%ecx, %rbx
	movaps	%xmm1, %xmm6
	cmpl	$4, %ebx
	ja	.L2849
.L2841:
	movzbl	272(%rsi,%rbx), %eax
	testb	%al, %al
	je	.L2840
	pxor	%xmm0, %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L2850
.L2843:
	movss	1000(%rsi,%rbx,4), %xmm0
	mulss	%xmm6, %xmm6
	ucomiss	%xmm6, %xmm0
	setnb	%al
.L2840:
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L2849:
	leaq	.LC5(%rip), %rdx
	movl	$3235, %r8d
	leaq	.LC120(%rip), %rcx
	call	_assert
	jmp	.L2841
	.p2align 4,,10
.L2850:
	movss	48(%rsi), %xmm6
	jmp	.L2843
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11GetMousePosEv
	.def	_ZN5ImGui11GetMousePosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetMousePosEv
_ZN5ImGui11GetMousePosEv:
.LFB715:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	264(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui32GetMousePosOnOpeningCurrentPopupEv
	.def	_ZN5ImGui32GetMousePosOnOpeningCurrentPopupEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui32GetMousePosOnOpeningCurrentPopupEv
_ZN5ImGui32GetMousePosOnOpeningCurrentPopupEv:
.LFB716:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movl	6200(%rsi), %eax
	testl	%eax, %eax
	jle	.L2853
	leal	-1(%rax), %ebx
	cmpl	6184(%rsi), %ebx
	jge	.L2856
.L2854:
	movq	6192(%rsi), %rdx
	movslq	%ebx, %rax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdx,%rax,8), %rax
	movq	28(%rax), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L2856:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L2854
	.p2align 4,,10
.L2853:
	movq	264(%rsi), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17GetMouseDragDeltaEif
	.def	_ZN5ImGui17GetMouseDragDeltaEif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17GetMouseDragDeltaEif
_ZN5ImGui17GetMouseDragDeltaEif:
.LFB717:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movslq	%ecx, %rbx
	movaps	%xmm1, %xmm6
	cmpl	$4, %ebx
	ja	.L2868
.L2858:
	pxor	%xmm0, %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L2859
	movss	48(%rsi), %xmm6
.L2859:
	cmpb	$0, 272(%rsi,%rbx)
	je	.L2867
	movss	1000(%rsi,%rbx,4), %xmm1
	mulss	%xmm6, %xmm6
	ucomiss	%xmm6, %xmm1
	jnb	.L2869
.L2867:
	pxor	%xmm1, %xmm1
.L2861:
	movd	%xmm0, %eax
	movd	%xmm1, %edx
	movaps	32(%rsp), %xmm6
	movl	%edx, %edx
	salq	$32, %rax
	orq	%rdx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L2869:
	leaq	(%rsi,%rbx,8), %rax
	movss	268(%rsi), %xmm0
	movss	264(%rsi), %xmm1
	subss	888(%rax), %xmm0
	subss	884(%rax), %xmm1
	jmp	.L2861
	.p2align 4,,10
.L2868:
	leaq	.LC5(%rip), %rdx
	movl	$3260, %r8d
	leaq	.LC120(%rip), %rcx
	call	_assert
	jmp	.L2858
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19ResetMouseDragDeltaEi
	.def	_ZN5ImGui19ResetMouseDragDeltaEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19ResetMouseDragDeltaEi
_ZN5ImGui19ResetMouseDragDeltaEi:
.LFB718:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movslq	%ecx, %rbx
	cmpl	$4, %ebx
	jbe	.L2871
	leaq	.LC5(%rip), %rdx
	movl	$3272, %r8d
	leaq	.LC120(%rip), %rcx
	call	_assert
.L2871:
	movq	264(%rsi), %rax
	movq	%rax, 884(%rsi,%rbx,8)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14GetMouseCursorEv
	.def	_ZN5ImGui14GetMouseCursorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14GetMouseCursorEv
_ZN5ImGui14GetMouseCursorEv:
.LFB719:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	6544(%rax), %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14SetMouseCursorEi
	.def	_ZN5ImGui14SetMouseCursorEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14SetMouseCursorEi
_ZN5ImGui14SetMouseCursorEi:
.LFB720:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	%ecx, 6544(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22CaptureKeyboardFromAppEb
	.def	_ZN5ImGui22CaptureKeyboardFromAppEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22CaptureKeyboardFromAppEb
_ZN5ImGui22CaptureKeyboardFromAppEb:
.LFB721:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movzbl	%cl, %ecx
	movl	%ecx, 11956(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19CaptureMouseFromAppEb
	.def	_ZN5ImGui19CaptureMouseFromAppEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19CaptureMouseFromAppEb
_ZN5ImGui19CaptureMouseFromAppEb:
.LFB722:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movzbl	%cl, %ecx
	movl	%ecx, 11952(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13IsItemHoveredEv
	.def	_ZN5ImGui13IsItemHoveredEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13IsItemHoveredEv
_ZN5ImGui13IsItemHoveredEv:
.LFB723:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movzbl	268(%rax), %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17IsItemHoveredRectEv
	.def	_ZN5ImGui17IsItemHoveredRectEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17IsItemHoveredRectEv
_ZN5ImGui17IsItemHoveredRectEv:
.LFB724:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movzbl	269(%rax), %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12IsItemActiveEv
	.def	_ZN5ImGui12IsItemActiveEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12IsItemActiveEv
_ZN5ImGui12IsItemActiveEv:
.LFB725:
	.seh_endprologue
	movq	GImGui(%rip), %rcx
	xorl	%eax, %eax
	movl	6068(%rcx), %edx
	testl	%edx, %edx
	je	.L2878
	movq	6008(%rcx), %rax
	cmpl	%edx, 248(%rax)
	sete	%al
.L2878:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13IsItemClickedEi
	.def	_ZN5ImGui13IsItemClickedEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13IsItemClickedEi
_ZN5ImGui13IsItemClickedEi:
.LFB726:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movslq	%ecx, %rbx
	cmpl	$4, %ebx
	ja	.L2888
.L2883:
	pxor	%xmm0, %xmm0
	ucomiss	960(%rsi,%rbx,4), %xmm0
	jp	.L2886
	je	.L2889
.L2886:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L2889:
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movzbl	268(%rax), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L2888:
	leaq	.LC5(%rip), %rdx
	movl	$3203, %r8d
	leaq	.LC120(%rip), %rcx
	call	_assert
	jmp	.L2883
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16IsAnyItemHoveredEv
	.def	_ZN5ImGui16IsAnyItemHoveredEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16IsAnyItemHoveredEv
_ZN5ImGui16IsAnyItemHoveredEv:
.LFB727:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movl	$1, %eax
	movl	6056(%rdx), %ecx
	testl	%ecx, %ecx
	jne	.L2890
	movl	6064(%rdx), %eax
	testl	%eax, %eax
	setne	%al
.L2890:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15IsAnyItemActiveEv
	.def	_ZN5ImGui15IsAnyItemActiveEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15IsAnyItemActiveEv
_ZN5ImGui15IsAnyItemActiveEv:
.LFB728:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	6068(%rax), %eax
	testl	%eax, %eax
	setne	%al
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13IsItemVisibleEv
	.def	_ZN5ImGui13IsItemVisibleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13IsItemVisibleEv
_ZN5ImGui13IsItemVisibleEv:
.LFB729:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	524(%rax), %xmm0
	ucomiss	256(%rax), %xmm0
	jbe	.L2907
	movss	264(%rax), %xmm0
	ucomiss	516(%rax), %xmm0
	jbe	.L2907
	movss	520(%rax), %xmm0
	ucomiss	252(%rax), %xmm0
	jbe	.L2907
	movss	260(%rax), %xmm0
	ucomiss	512(%rax), %xmm0
	seta	%al
	ret
	.p2align 4,,10
.L2907:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19SetItemAllowOverlapEv
	.def	_ZN5ImGui19SetItemAllowOverlapEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19SetItemAllowOverlapEv
_ZN5ImGui19SetItemAllowOverlapEv:
.LFB730:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rcx
	movl	248(%rcx), %edx
	cmpl	%edx, 6056(%rax)
	jne	.L2909
	movb	$1, 6060(%rax)
	movl	248(%rcx), %edx
.L2909:
	cmpl	%edx, 6068(%rax)
	je	.L2911
	ret
	.p2align 4,,10
.L2911:
	movb	$1, 6078(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14GetItemRectMinEv
	.def	_ZN5ImGui14GetItemRectMinEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14GetItemRectMinEv
_ZN5ImGui14GetItemRectMinEv:
.LFB731:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movq	252(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14GetItemRectMaxEv
	.def	_ZN5ImGui14GetItemRectMaxEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14GetItemRectMaxEv
_ZN5ImGui14GetItemRectMaxEv:
.LFB732:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movq	260(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15GetItemRectSizeEv
	.def	_ZN5ImGui15GetItemRectSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15GetItemRectSizeEv
_ZN5ImGui15GetItemRectSizeEv:
.LFB733:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	264(%rax), %xmm1
	subss	256(%rax), %xmm1
	movss	260(%rax), %xmm0
	subss	252(%rax), %xmm0
	movd	%xmm1, %eax
	movq	%rax, %rdx
	salq	$32, %rdx
	movd	%xmm0, %eax
	orq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui24CalcItemRectClosestPointERK6ImVec2bf
	.def	_ZN5ImGui24CalcItemRectClosestPointERK6ImVec2bf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui24CalcItemRectClosestPointERK6ImVec2bf
_ZN5ImGui24CalcItemRectClosestPointERK6ImVec2bf:
.LFB734:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	(%rcx), %xmm4
	movss	4(%rcx), %xmm5
	movq	6008(%rax), %rax
	testb	%dl, %dl
	movss	252(%rax), %xmm0
	movaps	%xmm0, %xmm1
	movss	256(%rax), %xmm0
	subss	%xmm2, %xmm1
	movaps	%xmm0, %xmm3
	movss	260(%rax), %xmm0
	subss	%xmm2, %xmm3
	addss	%xmm2, %xmm0
	addss	264(%rax), %xmm2
	jne	.L2916
	ucomiss	%xmm1, %xmm4
	jb	.L2916
	ucomiss	%xmm3, %xmm5
	jb	.L2916
	ucomiss	%xmm4, %xmm0
	jbe	.L2916
	ucomiss	%xmm5, %xmm2
	ja	.L2925
	.p2align 4,,10
.L2916:
	ucomiss	%xmm0, %xmm4
	jbe	.L2933
	ucomiss	%xmm2, %xmm5
	jbe	.L2934
.L2920:
	movd	%xmm0, %edx
	movd	%xmm2, %eax
	salq	$32, %rax
	movl	%edx, %edx
	orq	%rdx, %rax
	ret
	.p2align 4,,10
.L2934:
	maxss	%xmm5, %xmm3
	movaps	%xmm3, %xmm2
	jmp	.L2920
	.p2align 4,,10
.L2933:
	maxss	%xmm4, %xmm1
	ucomiss	%xmm2, %xmm5
	movaps	%xmm1, %xmm0
	ja	.L2920
	jmp	.L2934
	.p2align 4,,10
.L2925:
	movaps	%xmm5, %xmm2
	movaps	%xmm4, %xmm0
	jmp	.L2920
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11SetTooltipVEPKcPc
	.def	_ZN5ImGui11SetTooltipVEPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11SetTooltipVEPKcPc
_ZN5ImGui11SetTooltipVEPKcPc:
.LFB735:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	%rcx, %r8
	movq	%rdx, %r9
	movl	$1024, %edx
	leaq	10384(%rbx), %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L2938
	cmpl	$1023, %eax
	jg	.L2938
	cltq
	movb	$0, 10384(%rbx,%rax)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L2938:
	movl	$1023, %eax
	cltq
	movb	$0, 10384(%rbx,%rax)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SetTooltipEPKcz
	.def	_ZN5ImGui10SetTooltipEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SetTooltipEPKcz
_ZN5ImGui10SetTooltipEPKcz:
.LFB736:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	leaq	10384(%rbx), %rax
	movq	%rdx, 72(%rsp)
	movl	$1024, %edx
	movq	%r8, 80(%rsp)
	movq	%rcx, %r8
	movq	%rax, %rcx
	movq	%r9, 88(%rsp)
	leaq	72(%rsp), %r9
	movq	%r9, 40(%rsp)
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L2945
	cmpl	$1023, %eax
	jg	.L2945
	cltq
	movb	$0, 10384(%rbx,%rax)
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L2945:
	movl	$1023, %eax
	cltq
	movb	$0, 10384(%rbx,%rax)
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC121:
	.ascii "##menus\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11OpenPopupExEPKcb
	.def	_ZN5ImGui11OpenPopupExEPKcb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11OpenPopupExEPKcb
_ZN5ImGui11OpenPopupExEPKcb:
.LFB741:
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
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rdi
	movl	%edx, %r13d
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	leaq	.LC121(%rip), %rdx
	movq	%rdi, %rcx
	movl	6200(%rbx), %esi
	movl	%eax, %ebp
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movss	264(%rbx), %xmm7
	movl	%eax, %r12d
	movslq	6184(%rbx), %rax
	movss	268(%rbx), %xmm6
	cmpl	%esi, %eax
	jle	.L2975
	movslq	%esi, %rax
	testb	%r13b, %r13b
	leaq	(%rax,%rax,4), %rax
	leaq	0(,%rax,8), %r14
	jne	.L2958
	movq	6192(%rbx), %rax
	cmpl	%ebp, (%rax,%r14)
	je	.L2949
.L2958:
	movl	6188(%rbx), %eax
	leal	1(%rsi), %r13d
	cmpl	%eax, %r13d
	jle	.L2973
	testl	%eax, %eax
	movl	$8, %r15d
	je	.L2961
	movl	%eax, %r15d
	shrl	$31, %r15d
	addl	%eax, %r15d
	sarl	%r15d
	addl	%eax, %r15d
.L2961:
	cmpl	%r15d, %r13d
	jl	.L2976
	movl	%r13d, %r15d
.L2962:
	movq	GImGui(%rip), %rax
	movslq	%r15d, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	salq	$3, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	6192(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2965
	movslq	6184(%rbx), %rax
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$3, %r8
	call	memcpy
	movq	6192(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2965
	subl	$1, 844(%rax)
.L2965:
	call	*240(%rax)
	movq	%rsi, 6192(%rbx)
	movl	%r15d, 6188(%rbx)
	jmp	.L2960
	.p2align 4,,10
.L2976:
	cmpl	%r15d, %eax
	jl	.L2962
	.p2align 4,,10
.L2973:
	movq	6192(%rbx), %rsi
.L2960:
	movl	%r13d, 6184(%rbx)
	leaq	(%rsi,%r14), %rax
.L2974:
	movl	%ebp, (%rax)
	movq	$0, 8(%rax)
	movq	%rdi, 16(%rax)
	movl	%r12d, 24(%rax)
	movss	%xmm7, 28(%rax)
	movss	%xmm6, 32(%rax)
.L2949:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
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
.L2975:
	cmpl	6188(%rbx), %eax
	je	.L2951
	movq	6192(%rbx), %rsi
.L2952:
	leal	1(%rax), %edx
	leaq	(%rax,%rax,4), %rax
	movl	%edx, 6184(%rbx)
	leaq	(%rsi,%rax,8), %rax
	jmp	.L2974
	.p2align 4,,10
.L2951:
	leal	1(%rax), %r13d
	testl	%eax, %eax
	movl	$8, %edx
	je	.L2953
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L2953:
	cmpl	%edx, %r13d
	movq	GImGui(%rip), %rax
	cmovl	%edx, %r13d
	movslq	%r13d, %rdx
	addl	$1, 844(%rax)
	leaq	(%rdx,%rdx,4), %rcx
	salq	$3, %rcx
	call	*232(%rax)
	movq	6192(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2956
	movslq	6184(%rbx), %rax
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$3, %r8
	call	memcpy
	movq	6192(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2956
	subl	$1, 844(%rax)
.L2956:
	call	*240(%rax)
	movq	%rsi, 6192(%rbx)
	movslq	6184(%rbx), %rax
	movl	%r13d, 6188(%rbx)
	jmp	.L2952
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9OpenPopupEPKc
	.def	_ZN5ImGui9OpenPopupEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9OpenPopupEPKc
_ZN5ImGui9OpenPopupEPKc:
.LFB742:
	.seh_endprologue
	xorl	%edx, %edx
	jmp	_ZN5ImGui11OpenPopupExEPKcb
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16FindWindowByNameEPKc
	.def	_ZN5ImGui16FindWindowByNameEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16FindWindowByNameEPKc
_ZN5ImGui16FindWindowByNameEPKc:
.LFB764:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	xorl	%edx, %edx
	call	_Z6ImHashPKvij.constprop.146
	movl	5976(%rbx), %r8d
	testl	%r8d, %r8d
	jle	.L2982
	movq	5984(%rbx), %rdx
	movq	(%rdx), %rcx
	cmpl	8(%rcx), %eax
	je	.L2978
	leal	-1(%r8), %ecx
	addq	$8, %rdx
	leaq	(%rdx,%rcx,8), %r8
	jmp	.L2980
	.p2align 4,,10
.L2981:
	movq	(%rdx), %rcx
	addq	$8, %rdx
	cmpl	%eax, 8(%rcx)
	je	.L2978
.L2980:
	cmpq	%r8, %rdx
	jne	.L2981
.L2982:
	xorl	%ecx, %ecx
.L2978:
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13PushItemWidthEf
	.def	_ZN5ImGui13PushItemWidthEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13PushItemWidthEf
_ZN5ImGui13PushItemWidthEf:
.LFB775:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	ucomiss	.LC0(%rip), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rbx
	jp	.L2984
	jne	.L2984
	movss	548(%rbx), %xmm0
.L2984:
	movslq	320(%rbx), %rax
	movss	%xmm0, 308(%rbx)
	cmpl	324(%rbx), %eax
	je	.L2986
	movq	328(%rbx), %rsi
.L2987:
	leal	1(%rax), %edx
	movl	%edx, 320(%rbx)
	movss	%xmm0, (%rsi,%rax,4)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L2986:
	leal	1(%rax), %r8d
	testl	%eax, %eax
	movl	$8, %ecx
	jne	.L2996
.L2988:
	cmpl	%ecx, %r8d
	movl	%ecx, %edi
	cmovge	%r8d, %edi
	addl	$1, 844(%rdx)
	movslq	%edi, %rcx
	salq	$2, %rcx
	call	*232(%rdx)
	movq	328(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2991
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2991
	subl	$1, 844(%rax)
.L2991:
	call	*240(%rax)
	movq	%rsi, 328(%rbx)
	movslq	320(%rbx), %rax
	movss	308(%rbx), %xmm0
	movl	%edi, 324(%rbx)
	jmp	.L2987
	.p2align 4,,10
.L2996:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	jmp	.L2988
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12PopItemWidthEv
	.def	_ZN5ImGui12PopItemWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12PopItemWidthEv
_ZN5ImGui12PopItemWidthEv:
.LFB777:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	movl	320(%rbx), %eax
	testl	%eax, %eax
	jle	.L3002
.L2998:
	subl	$1, %eax
	cmpl	$0, %eax
	movl	%eax, 320(%rbx)
	jne	.L2999
	movss	548(%rbx), %xmm0
	movss	%xmm0, 308(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L2999:
	jle	.L3003
.L3001:
	movq	328(%rbx), %rdx
	cltq
	movss	-4(%rdx,%rax,4), %xmm0
	movss	%xmm0, 308(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3002:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	320(%rbx), %eax
	jmp	.L2998
	.p2align 4,,10
.L3003:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	320(%rbx), %eax
	jmp	.L3001
	.seh_endproc
	.section .rdata,"dr"
.LC122:
	.ascii "font && font->IsLoaded()\0"
.LC123:
	.ascii "font->Scale > 0.0f\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8PushFontEP6ImFont
	.def	_ZN5ImGui8PushFontEP6ImFont;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8PushFontEP6ImFont
_ZN5ImGui8PushFontEP6ImFont:
.LFB781:
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
	movq	GImGui(%rip), %rsi
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	je	.L3027
.L3005:
	movq	%rsi, %rdi
.L3017:
	cmpq	$0, 88(%rbx)
	je	.L3007
	movss	4(%rbx), %xmm0
	pxor	%xmm6, %xmm6
	ucomiss	%xmm6, %xmm0
	jbe	.L3028
.L3009:
	movq	6008(%rdi), %rax
	movq	%rbx, 5936(%rdi)
	movss	152(%rdi), %xmm0
	mulss	(%rbx), %xmm0
	mulss	4(%rbx), %xmm0
	testq	%rax, %rax
	movss	%xmm0, 5948(%rdi)
	je	.L3010
	movq	GImGui(%rip), %rdx
	movss	5948(%rdx), %xmm6
	mulss	648(%rax), %xmm6
.L3010:
	movss	%xmm6, 5944(%rdi)
	movq	88(%rbx), %rax
	movq	36(%rax), %rax
	movq	%rax, 5952(%rdi)
	movslq	6168(%rsi), %rax
	cmpl	6172(%rsi), %eax
	je	.L3011
	movq	6176(%rsi), %rdi
.L3012:
	leal	1(%rax), %edx
	movl	%edx, 6168(%rsi)
	movq	88(%rbx), %rdx
	movq	%rbx, (%rdi,%rax,8)
	movq	6008(%rsi), %rax
	movaps	32(%rsp), %xmm6
	movq	656(%rax), %rcx
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN10ImDrawList13PushTextureIDERKPv
	.p2align 4,,10
.L3027:
	movq	160(%rsi), %rbx
	testq	%rbx, %rbx
	jne	.L3005
	movq	144(%rsi), %rbx
	movq	%rsi, %rdi
	movl	48(%rbx), %eax
	testl	%eax, %eax
	jle	.L3029
.L3006:
	movq	56(%rbx), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3017
.L3007:
	movl	$4646, %r8d
	pxor	%xmm6, %xmm6
	leaq	.LC5(%rip), %rdx
	leaq	.LC122(%rip), %rcx
	call	_assert
	movss	4(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L3009
.L3028:
	leaq	.LC5(%rip), %rdx
	movl	$4647, %r8d
	leaq	.LC123(%rip), %rcx
	call	_assert
	jmp	.L3009
	.p2align 4,,10
.L3011:
	leal	1(%rax), %ebp
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L3030
.L3013:
	cmpl	%edx, %ebp
	movq	GImGui(%rip), %rax
	cmovl	%edx, %ebp
	movslq	%ebp, %rcx
	addl	$1, 844(%rax)
	salq	$3, %rcx
	call	*232(%rax)
	movq	6176(%rsi), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3016
	movslq	6168(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$3, %r8
	call	memcpy
	movq	6176(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3016
	subl	$1, 844(%rax)
.L3016:
	call	*240(%rax)
	movq	%rdi, 6176(%rsi)
	movslq	6168(%rsi), %rax
	movl	%ebp, 6172(%rsi)
	jmp	.L3012
	.p2align 4,,10
.L3030:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L3013
	.p2align 4,,10
.L3029:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movq	GImGui(%rip), %rdi
	jmp	.L3006
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7PopFontEv
	.def	_ZN5ImGui7PopFontEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7PopFontEv
_ZN5ImGui7PopFontEv:
.LFB782:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movq	656(%rax), %rcx
	call	_ZN10ImDrawList12PopTextureIDEv
	movl	6168(%rbx), %eax
	testl	%eax, %eax
	jle	.L3047
.L3032:
	subl	$1, %eax
	cmpl	$0, %eax
	movl	%eax, 6168(%rbx)
	je	.L3048
	jle	.L3049
.L3037:
	movq	6176(%rbx), %rdx
	cltq
	movq	GImGui(%rip), %rsi
	movq	-8(%rdx,%rax,8), %rbx
	testq	%rbx, %rbx
	je	.L3038
.L3034:
	cmpq	$0, 88(%rbx)
	je	.L3038
	movss	4(%rbx), %xmm0
	pxor	%xmm6, %xmm6
	ucomiss	%xmm6, %xmm0
	jbe	.L3050
.L3040:
	movq	6008(%rsi), %rax
	movq	%rbx, 5936(%rsi)
	movss	152(%rsi), %xmm0
	mulss	(%rbx), %xmm0
	mulss	4(%rbx), %xmm0
	testq	%rax, %rax
	movss	%xmm0, 5948(%rsi)
	je	.L3041
	movq	GImGui(%rip), %rdx
	movss	5948(%rdx), %xmm6
	mulss	648(%rax), %xmm6
.L3041:
	movss	%xmm6, 5944(%rsi)
	movq	88(%rbx), %rax
	movq	36(%rax), %rax
	movq	%rax, 5952(%rsi)
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3048:
	movq	GImGui(%rip), %rsi
	movq	160(%rsi), %rbx
	testq	%rbx, %rbx
	jne	.L3034
	movq	144(%rsi), %rbx
	movl	48(%rbx), %eax
	testl	%eax, %eax
	jle	.L3051
.L3035:
	movq	56(%rbx), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3034
	.p2align 4,,10
.L3038:
	movl	$4646, %r8d
	pxor	%xmm6, %xmm6
	leaq	.LC5(%rip), %rdx
	leaq	.LC122(%rip), %rcx
	call	_assert
	movss	4(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L3040
.L3050:
	leaq	.LC5(%rip), %rdx
	movl	$4647, %r8d
	leaq	.LC123(%rip), %rcx
	call	_assert
	jmp	.L3040
	.p2align 4,,10
.L3047:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6168(%rbx), %eax
	jmp	.L3032
	.p2align 4,,10
.L3049:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6168(%rbx), %eax
	jmp	.L3037
	.p2align 4,,10
.L3051:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movq	GImGui(%rip), %rsi
	jmp	.L3035
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22PushAllowKeyboardFocusEb
	.def	_ZN5ImGui22PushAllowKeyboardFocusEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22PushAllowKeyboardFocusEb
_ZN5ImGui22PushAllowKeyboardFocusEb:
.LFB783:
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
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movl	%ecx, %esi
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rbx
	movslq	352(%rbx), %rax
	movb	%cl, 316(%rbx)
	cmpl	356(%rbx), %eax
	je	.L3053
	movq	360(%rbx), %rdi
.L3054:
	leal	1(%rax), %edx
	movl	%edx, 352(%rbx)
	movb	%sil, (%rdi,%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L3053:
	leal	1(%rax), %r8d
	testl	%eax, %eax
	movl	$8, %ecx
	jne	.L3062
.L3055:
	cmpl	%ecx, %r8d
	cmovge	%r8d, %ecx
	addl	$1, 844(%rdx)
	movslq	%ecx, %rcx
	movq	%rcx, %rbp
	call	*232(%rdx)
	movq	360(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3058
	movslq	352(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	call	memcpy
	movq	360(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3058
	subl	$1, 844(%rax)
.L3058:
	call	*240(%rax)
	movq	%rdi, 360(%rbx)
	movslq	352(%rbx), %rax
	movl	%ebp, 356(%rbx)
	jmp	.L3054
	.p2align 4,,10
.L3062:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	jmp	.L3055
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui21PopAllowKeyboardFocusEv
	.def	_ZN5ImGui21PopAllowKeyboardFocusEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21PopAllowKeyboardFocusEv
_ZN5ImGui21PopAllowKeyboardFocusEv:
.LFB784:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	movl	352(%rbx), %eax
	testl	%eax, %eax
	jle	.L3069
.L3064:
	subl	$1, %eax
	movl	$1, %edx
	cmpl	$0, %eax
	movl	%eax, 352(%rbx)
	je	.L3065
	jle	.L3070
.L3066:
	movq	360(%rbx), %rdx
	cltq
	movzbl	-1(%rdx,%rax), %edx
.L3065:
	movb	%dl, 316(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3069:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	352(%rbx), %eax
	jmp	.L3064
	.p2align 4,,10
.L3070:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	352(%rbx), %eax
	jmp	.L3066
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16PushButtonRepeatEb
	.def	_ZN5ImGui16PushButtonRepeatEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16PushButtonRepeatEb
_ZN5ImGui16PushButtonRepeatEb:
.LFB785:
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
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movl	%ecx, %esi
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rbx
	movslq	368(%rbx), %rax
	movb	%cl, 317(%rbx)
	cmpl	372(%rbx), %eax
	je	.L3072
	movq	376(%rbx), %rdi
.L3073:
	leal	1(%rax), %edx
	movl	%edx, 368(%rbx)
	movb	%sil, (%rdi,%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L3072:
	leal	1(%rax), %r8d
	testl	%eax, %eax
	movl	$8, %ecx
	jne	.L3081
.L3074:
	cmpl	%ecx, %r8d
	cmovge	%r8d, %ecx
	addl	$1, 844(%rdx)
	movslq	%ecx, %rcx
	movq	%rcx, %rbp
	call	*232(%rdx)
	movq	376(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3077
	movslq	368(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	call	memcpy
	movq	376(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3077
	subl	$1, 844(%rax)
.L3077:
	call	*240(%rax)
	movq	%rdi, 376(%rbx)
	movslq	368(%rbx), %rax
	movl	%ebp, 372(%rbx)
	jmp	.L3073
	.p2align 4,,10
.L3081:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	jmp	.L3074
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15PopButtonRepeatEv
	.def	_ZN5ImGui15PopButtonRepeatEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15PopButtonRepeatEv
_ZN5ImGui15PopButtonRepeatEv:
.LFB786:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	movl	368(%rbx), %eax
	testl	%eax, %eax
	jle	.L3088
.L3083:
	subl	$1, %eax
	xorl	%edx, %edx
	cmpl	$0, %eax
	movl	%eax, 368(%rbx)
	je	.L3084
	jle	.L3089
.L3085:
	movq	376(%rbx), %rdx
	cltq
	movzbl	-1(%rdx,%rax), %edx
.L3084:
	movb	%dl, 317(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3088:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	368(%rbx), %eax
	jmp	.L3083
	.p2align 4,,10
.L3089:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	368(%rbx), %eax
	jmp	.L3085
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15PushTextWrapPosEf
	.def	_ZN5ImGui15PushTextWrapPosEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15PushTextWrapPosEf
_ZN5ImGui15PushTextWrapPosEf:
.LFB787:
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
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movaps	%xmm0, %xmm6
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rbx
	movslq	336(%rbx), %rax
	movss	%xmm0, 312(%rbx)
	cmpl	340(%rbx), %eax
	je	.L3091
	movq	344(%rbx), %rsi
.L3092:
	leal	1(%rax), %edx
	movl	%edx, 336(%rbx)
	movss	%xmm6, (%rsi,%rax,4)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3091:
	leal	1(%rax), %edi
	testl	%eax, %eax
	movl	$8, %ecx
	jne	.L3100
.L3093:
	cmpl	%ecx, %edi
	cmovl	%ecx, %edi
	addl	$1, 844(%rdx)
	movslq	%edi, %rcx
	salq	$2, %rcx
	call	*232(%rdx)
	movq	344(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3096
	movslq	336(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	344(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3096
	subl	$1, 844(%rax)
.L3096:
	call	*240(%rax)
	movq	%rsi, 344(%rbx)
	movslq	336(%rbx), %rax
	movl	%edi, 340(%rbx)
	jmp	.L3092
	.p2align 4,,10
.L3100:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	jmp	.L3093
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14PopTextWrapPosEv
	.def	_ZN5ImGui14PopTextWrapPosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14PopTextWrapPosEv
_ZN5ImGui14PopTextWrapPosEv:
.LFB788:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	movl	336(%rbx), %eax
	testl	%eax, %eax
	jle	.L3107
.L3102:
	subl	$1, %eax
	movss	.LC1(%rip), %xmm0
	cmpl	$0, %eax
	movl	%eax, 336(%rbx)
	jne	.L3108
	movss	%xmm0, 312(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3108:
	jle	.L3109
.L3104:
	movq	344(%rbx), %rdx
	cltq
	movss	-4(%rdx,%rax,4), %xmm0
	movss	%xmm0, 312(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3107:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	336(%rbx), %eax
	jmp	.L3102
	.p2align 4,,10
.L3109:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	336(%rbx), %eax
	jmp	.L3104
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	.def	_ZN5ImGui14PushStyleColorEiRK6ImVec4;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14PushStyleColorEiRK6ImVec4
_ZN5ImGui14PushStyleColorEiRK6ImVec4:
.LFB789:
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
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movslq	%ecx, %rsi
	movq	%rdx, %rdi
	leaq	328(%rsi), %rax
	movq	%rsi, %rbp
	salq	$4, %rax
	addq	%rbx, %rax
	movss	(%rax), %xmm9
	movss	4(%rax), %xmm8
	movss	8(%rax), %xmm7
	movss	12(%rax), %xmm6
	movslq	6136(%rbx), %rax
	cmpl	6140(%rbx), %eax
	je	.L3111
	movq	6144(%rbx), %r12
.L3112:
	leal	1(%rax), %edx
	addq	$328, %rsi
	leaq	(%rax,%rax,4), %rax
	movl	%edx, 6136(%rbx)
	salq	$4, %rsi
	leaq	(%r12,%rax,4), %rax
	movl	%ebp, (%rax)
	movss	%xmm9, 4(%rax)
	movss	%xmm8, 8(%rax)
	movss	%xmm7, 12(%rax)
	movss	%xmm6, 16(%rax)
	movq	(%rdi), %rax
	movq	8(%rdi), %rdx
	movq	%rax, (%rbx,%rsi)
	movq	%rdx, 8(%rbx,%rsi)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L3111:
	leal	1(%rax), %r13d
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L3120
.L3113:
	cmpl	%edx, %r13d
	cmovl	%edx, %r13d
	addl	$1, 844(%rbx)
	movslq	%r13d, %rax
	leaq	(%rax,%rax,4), %rcx
	salq	$2, %rcx
	call	*232(%rbx)
	movq	6144(%rbx), %rcx
	movq	%rax, %r12
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3116
	movslq	6136(%rbx), %rax
	movq	%rcx, %rdx
	movq	%r12, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$2, %r8
	call	memcpy
	movq	6144(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3116
	subl	$1, 844(%rax)
.L3116:
	call	*240(%rax)
	movq	%r12, 6144(%rbx)
	movslq	6136(%rbx), %rax
	movl	%r13d, 6140(%rbx)
	jmp	.L3112
	.p2align 4,,10
.L3120:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L3113
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13PopStyleColorEi
	.def	_ZN5ImGui13PopStyleColorEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13PopStyleColorEi
_ZN5ImGui13PopStyleColorEi:
.LFB793:
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
	movq	GImGui(%rip), %rbx
	testl	%ecx, %ecx
	movl	%ecx, %esi
	jle	.L3121
	movl	6136(%rbx), %eax
	leaq	.LC2(%rip), %rbp
	leaq	.LC4(%rip), %rdi
	jmp	.L3125
	.p2align 4,,10
.L3123:
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L3124:
	subl	$1, %eax
	subl	$1, %esi
	movl	%eax, 6136(%rbx)
	je	.L3121
.L3125:
	testl	%eax, %eax
	jg	.L3123
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6136(%rbx), %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	%rdx, %rax
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L3124
	movl	$885, %r8d
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	call	_assert
	movl	6136(%rbx), %eax
	subl	$1, %eax
	subl	$1, %esi
	movl	%eax, 6136(%rbx)
	jne	.L3125
.L3121:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC124:
	.ascii "0\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12PushStyleVarEif
	.def	_ZN5ImGui12PushStyleVarEif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12PushStyleVarEif
_ZN5ImGui12PushStyleVarEif:
.LFB796:
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
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	cmpl	$11, %ecx
	movl	%ecx, %ebx
	ja	.L3141
	leaq	_ZL13GStyleVarInfo(%rip), %rax
	movslq	%ebx, %rdx
	cmpl	$1, (%rax,%rdx,8)
	je	.L3142
.L3129:
	movaps	48(%rsp), %xmm6
	movl	$4775, %r8d
	leaq	.LC5(%rip), %rdx
	leaq	.LC124(%rip), %rcx
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_assert
	.p2align 4,,10
.L3141:
	leaq	.LC5(%rip), %rdx
	movl	$4761, %r8d
	movss	%xmm1, 44(%rsp)
	leaq	.LC15(%rip), %rcx
	call	_assert
	leaq	_ZL13GStyleVarInfo(%rip), %rax
	movslq	%ebx, %rdx
	movss	44(%rsp), %xmm1
	cmpl	$1, (%rax,%rdx,8)
	jne	.L3129
.L3142:
	movq	GImGui(%rip), %rsi
	movl	4(%rax,%rdx,8), %eax
	leaq	5120(%rsi,%rax), %rdi
	movslq	6152(%rsi), %rax
	cmpl	6156(%rsi), %eax
	movss	(%rdi), %xmm6
	je	.L3130
	movq	6160(%rsi), %rbp
.L3131:
	leal	1(%rax), %edx
	leaq	(%rax,%rax,2), %rax
	movl	%edx, 6152(%rsi)
	leaq	0(%rbp,%rax,4), %rax
	movl	%ebx, (%rax)
	movss	%xmm6, 4(%rax)
	movss	%xmm1, (%rdi)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L3130:
	leal	1(%rax), %r12d
	testl	%eax, %eax
	movl	$8, %edx
	je	.L3132
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L3132:
	cmpl	%edx, %r12d
	movss	%xmm1, 44(%rsp)
	cmovl	%edx, %r12d
	addl	$1, 844(%rsi)
	movslq	%r12d, %rax
	leaq	(%rax,%rax,2), %rcx
	salq	$2, %rcx
	call	*232(%rsi)
	movq	6160(%rsi), %rcx
	movq	%rax, %rbp
	movss	44(%rsp), %xmm1
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3135
	movslq	6152(%rsi), %rax
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	leaq	(%rax,%rax,2), %r8
	salq	$2, %r8
	call	memcpy
	movq	6160(%rsi), %rcx
	movq	GImGui(%rip), %rax
	movss	44(%rsp), %xmm1
	testq	%rcx, %rcx
	je	.L3135
	subl	$1, 844(%rax)
.L3135:
	movss	%xmm1, 44(%rsp)
	call	*240(%rax)
	movslq	6152(%rsi), %rax
	movq	%rbp, 6160(%rsi)
	movss	44(%rsp), %xmm1
	movl	%r12d, 6156(%rsi)
	jmp	.L3131
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	.def	_ZN5ImGui12PushStyleVarEiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12PushStyleVarEiRK6ImVec2
_ZN5ImGui12PushStyleVarEiRK6ImVec2:
.LFB797:
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
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	cmpl	$11, %ecx
	movl	%ecx, %ebx
	movq	%rdx, %rdi
	ja	.L3157
	leaq	_ZL13GStyleVarInfo(%rip), %rax
	movslq	%ebx, %rdx
	cmpl	$2, (%rax,%rdx,8)
	je	.L3158
.L3145:
	movaps	32(%rsp), %xmm6
	movl	$4788, %r8d
	movaps	48(%rsp), %xmm7
	leaq	.LC5(%rip), %rdx
	leaq	.LC124(%rip), %rcx
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	jmp	_assert
	.p2align 4,,10
.L3157:
	leaq	.LC5(%rip), %rdx
	movl	$4761, %r8d
	leaq	.LC15(%rip), %rcx
	call	_assert
	leaq	_ZL13GStyleVarInfo(%rip), %rax
	movslq	%ebx, %rdx
	cmpl	$2, (%rax,%rdx,8)
	jne	.L3145
.L3158:
	movq	GImGui(%rip), %rsi
	movl	4(%rax,%rdx,8), %eax
	leaq	5120(%rsi,%rax), %rbp
	movslq	6152(%rsi), %rax
	cmpl	6156(%rsi), %eax
	movss	0(%rbp), %xmm7
	movss	4(%rbp), %xmm6
	je	.L3146
	movq	6160(%rsi), %r12
.L3147:
	leal	1(%rax), %edx
	leaq	(%rax,%rax,2), %rax
	movl	%edx, 6152(%rsi)
	leaq	(%r12,%rax,4), %rax
	movl	%ebx, (%rax)
	movss	%xmm7, 4(%rax)
	movss	%xmm6, 8(%rax)
	movq	(%rdi), %rax
	movq	%rax, 0(%rbp)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L3146:
	leal	1(%rax), %r13d
	testl	%eax, %eax
	movl	$8, %edx
	je	.L3148
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L3148:
	cmpl	%edx, %r13d
	cmovl	%edx, %r13d
	addl	$1, 844(%rsi)
	movslq	%r13d, %rax
	leaq	(%rax,%rax,2), %rcx
	salq	$2, %rcx
	call	*232(%rsi)
	movq	6160(%rsi), %rcx
	movq	%rax, %r12
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3151
	movslq	6152(%rsi), %rax
	movq	%rcx, %rdx
	movq	%r12, %rcx
	leaq	(%rax,%rax,2), %r8
	salq	$2, %r8
	call	memcpy
	movq	6160(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3151
	subl	$1, 844(%rax)
.L3151:
	call	*240(%rax)
	movq	%r12, 6160(%rsi)
	movslq	6152(%rsi), %rax
	movl	%r13d, 6156(%rsi)
	jmp	.L3147
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11PopStyleVarEi
	.def	_ZN5ImGui11PopStyleVarEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11PopStyleVarEi
_ZN5ImGui11PopStyleVarEi:
.LFB798:
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
	movq	GImGui(%rip), %r12
	testl	%ecx, %ecx
	movl	%ecx, %r13d
	jle	.L3159
	movl	6152(%r12), %eax
	leaq	_ZL13GStyleVarInfo(%rip), %r14
	leaq	.LC2(%rip), %rdi
	leaq	.LC4(%rip), %rsi
	leaq	.LC5(%rip), %rbp
	.p2align 4,,10
.L3161:
	testl	%eax, %eax
	jle	.L3173
.L3162:
	cltq
	leaq	(%rax,%rax,2), %rdx
	movq	6160(%r12), %rax
	leaq	-12(%rax,%rdx,4), %r15
	movslq	(%r15), %rbx
	cmpl	$11, %ebx
	ja	.L3174
.L3163:
	movl	(%r14,%rbx,8), %eax
	leaq	(%r14,%rbx,8), %rdx
	cmpl	$1, %eax
	je	.L3175
	cmpl	$2, %eax
	je	.L3176
	testl	%eax, %eax
	jne	.L3165
	movl	4(%rdx), %eax
	movl	4(%r15), %ecx
	movq	GImGui(%rip), %rdx
	movl	%ecx, 5120(%rdx,%rax)
.L3165:
	movl	6152(%r12), %eax
	testl	%eax, %eax
	jle	.L3177
.L3167:
	subl	$1, %eax
	subl	$1, %r13d
	movl	%eax, 6152(%r12)
	jne	.L3161
.L3159:
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
.L3175:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	4(%r15), %xmm0
	movss	%xmm0, 5120(%rdx,%rax)
	movl	6152(%r12), %eax
	testl	%eax, %eax
	jg	.L3167
.L3177:
	movl	$885, %r8d
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_assert
	movl	6152(%r12), %eax
	subl	$1, %eax
	subl	$1, %r13d
	movl	%eax, 6152(%r12)
	je	.L3159
	testl	%eax, %eax
	jg	.L3162
	.p2align 4,,10
.L3173:
	movl	$866, %r8d
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_assert
	movl	6152(%r12), %eax
	jmp	.L3162
	.p2align 4,,10
.L3174:
	leaq	.LC15(%rip), %rcx
	movl	$4761, %r8d
	movq	%rbp, %rdx
	call	_assert
	jmp	.L3163
	.p2align 4,,10
.L3176:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	8(%r15), %xmm0
	movss	4(%r15), %xmm1
	leaq	5120(%rdx,%rax), %rax
	movss	%xmm1, (%rax)
	movss	%xmm0, 4(%rax)
	jmp	.L3165
	.seh_endproc
	.section .rdata,"dr"
.LC125:
	.ascii "Text\0"
.LC126:
	.ascii "TextDisabled\0"
.LC127:
	.ascii "WindowBg\0"
.LC128:
	.ascii "ChildWindowBg\0"
.LC129:
	.ascii "PopupBg\0"
.LC130:
	.ascii "Border\0"
.LC131:
	.ascii "BorderShadow\0"
.LC132:
	.ascii "FrameBg\0"
.LC133:
	.ascii "FrameBgHovered\0"
.LC134:
	.ascii "FrameBgActive\0"
.LC135:
	.ascii "TitleBg\0"
.LC136:
	.ascii "TitleBgCollapsed\0"
.LC137:
	.ascii "TitleBgActive\0"
.LC138:
	.ascii "MenuBarBg\0"
.LC139:
	.ascii "ScrollbarBg\0"
.LC140:
	.ascii "ScrollbarGrab\0"
.LC141:
	.ascii "ScrollbarGrabHovered\0"
.LC142:
	.ascii "ScrollbarGrabActive\0"
.LC143:
	.ascii "ComboBg\0"
.LC144:
	.ascii "CheckMark\0"
.LC145:
	.ascii "SliderGrab\0"
.LC146:
	.ascii "SliderGrabActive\0"
.LC147:
	.ascii "Button\0"
.LC148:
	.ascii "ButtonHovered\0"
.LC149:
	.ascii "ButtonActive\0"
.LC150:
	.ascii "Header\0"
.LC151:
	.ascii "HeaderHovered\0"
.LC152:
	.ascii "HeaderActive\0"
.LC153:
	.ascii "Column\0"
.LC154:
	.ascii "ColumnHovered\0"
.LC155:
	.ascii "ColumnActive\0"
.LC156:
	.ascii "ResizeGrip\0"
.LC157:
	.ascii "ResizeGripHovered\0"
.LC158:
	.ascii "ResizeGripActive\0"
.LC159:
	.ascii "CloseButton\0"
.LC160:
	.ascii "CloseButtonHovered\0"
.LC161:
	.ascii "CloseButtonActive\0"
.LC162:
	.ascii "PlotLines\0"
.LC163:
	.ascii "PlotLinesHovered\0"
.LC164:
	.ascii "PlotHistogram\0"
.LC165:
	.ascii "PlotHistogramHovered\0"
.LC166:
	.ascii "TextSelectedBg\0"
.LC167:
	.ascii "ModalWindowDarkening\0"
.LC168:
	.ascii "Unknown\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui15GetStyleColNameEi
	.def	_ZN5ImGui15GetStyleColNameEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15GetStyleColNameEi
_ZN5ImGui15GetStyleColNameEi:
.LFB799:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	cmpl	$42, %ecx
	ja	.L3179
	leaq	.L3181(%rip), %rdx
	movl	%ecx, %ecx
	movslq	(%rdx,%rcx,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L3181:
	.long	.L3224-.L3181
	.long	.L3182-.L3181
	.long	.L3183-.L3181
	.long	.L3184-.L3181
	.long	.L3185-.L3181
	.long	.L3186-.L3181
	.long	.L3187-.L3181
	.long	.L3188-.L3181
	.long	.L3189-.L3181
	.long	.L3190-.L3181
	.long	.L3191-.L3181
	.long	.L3192-.L3181
	.long	.L3193-.L3181
	.long	.L3194-.L3181
	.long	.L3195-.L3181
	.long	.L3196-.L3181
	.long	.L3197-.L3181
	.long	.L3198-.L3181
	.long	.L3199-.L3181
	.long	.L3200-.L3181
	.long	.L3201-.L3181
	.long	.L3202-.L3181
	.long	.L3203-.L3181
	.long	.L3204-.L3181
	.long	.L3205-.L3181
	.long	.L3206-.L3181
	.long	.L3207-.L3181
	.long	.L3208-.L3181
	.long	.L3209-.L3181
	.long	.L3210-.L3181
	.long	.L3211-.L3181
	.long	.L3212-.L3181
	.long	.L3213-.L3181
	.long	.L3214-.L3181
	.long	.L3215-.L3181
	.long	.L3216-.L3181
	.long	.L3217-.L3181
	.long	.L3218-.L3181
	.long	.L3219-.L3181
	.long	.L3220-.L3181
	.long	.L3221-.L3181
	.long	.L3222-.L3181
	.long	.L3223-.L3181
	.text
	.p2align 4,,10
.L3224:
	leaq	.LC125(%rip), %rax
.L3178:
	addq	$40, %rsp
	ret
	.p2align 4,,10
.L3223:
	leaq	.LC167(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3222:
	leaq	.LC166(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3221:
	leaq	.LC165(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3220:
	leaq	.LC164(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3219:
	leaq	.LC163(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3218:
	leaq	.LC162(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3217:
	leaq	.LC161(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3216:
	leaq	.LC160(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3215:
	leaq	.LC159(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3214:
	leaq	.LC158(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3213:
	leaq	.LC157(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3212:
	leaq	.LC156(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3211:
	leaq	.LC155(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3210:
	leaq	.LC154(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3209:
	leaq	.LC153(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3208:
	leaq	.LC152(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3207:
	leaq	.LC151(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3206:
	leaq	.LC150(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3205:
	leaq	.LC149(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3204:
	leaq	.LC148(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3203:
	leaq	.LC147(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3202:
	leaq	.LC146(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3201:
	leaq	.LC145(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3200:
	leaq	.LC144(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3199:
	leaq	.LC143(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3198:
	leaq	.LC142(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3197:
	leaq	.LC141(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3196:
	leaq	.LC140(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3195:
	leaq	.LC139(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3194:
	leaq	.LC138(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3193:
	leaq	.LC137(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3192:
	leaq	.LC136(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3191:
	leaq	.LC135(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3190:
	leaq	.LC134(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3189:
	leaq	.LC133(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3188:
	leaq	.LC132(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3187:
	leaq	.LC131(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3186:
	leaq	.LC130(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3185:
	leaq	.LC129(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3184:
	leaq	.LC128(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3183:
	leaq	.LC127(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3182:
	leaq	.LC126(%rip), %rax
	jmp	.L3178
	.p2align 4,,10
.L3179:
	leaq	.LC5(%rip), %rdx
	movl	$4855, %r8d
	leaq	.LC124(%rip), %rcx
	call	_assert
	leaq	.LC168(%rip), %rax
	jmp	.L3178
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15IsWindowHoveredEv
	.def	_ZN5ImGui15IsWindowHoveredEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15IsWindowHoveredEv
_ZN5ImGui15IsWindowHoveredEv:
.LFB800:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	xorl	%eax, %eax
	movq	6008(%rdx), %rcx
	cmpq	%rcx, 6040(%rdx)
	je	.L3235
.L3225:
	ret
	.p2align 4,,10
.L3235:
	movq	6032(%rdx), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	je	.L3225
	movq	664(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L3225
	testb	$2, 15(%rcx)
	je	.L3225
	cmpb	$0, 137(%rcx)
	je	.L3225
	movq	6048(%rdx), %rax
	cmpq	%rcx, 664(%rax)
	sete	%al
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15IsWindowFocusedEv
	.def	_ZN5ImGui15IsWindowFocusedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15IsWindowFocusedEv
_ZN5ImGui15IsWindowFocusedEv:
.LFB801:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	cmpq	%rdx, 6032(%rax)
	sete	%al
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19IsRootWindowFocusedEv
	.def	_ZN5ImGui19IsRootWindowFocusedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19IsRootWindowFocusedEv
_ZN5ImGui19IsRootWindowFocusedEv:
.LFB802:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movq	6032(%rax), %rax
	cmpq	%rax, 664(%rdx)
	sete	%al
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui29IsRootWindowOrAnyChildFocusedEv
	.def	_ZN5ImGui29IsRootWindowOrAnyChildFocusedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui29IsRootWindowOrAnyChildFocusedEv
_ZN5ImGui29IsRootWindowOrAnyChildFocusedEv:
.LFB803:
	.seh_endprologue
	movq	GImGui(%rip), %rcx
	xorl	%eax, %eax
	movq	6032(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L3238
	movq	6008(%rcx), %rax
	movq	664(%rdx), %rdx
	cmpq	%rdx, 664(%rax)
	sete	%al
.L3238:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui29IsRootWindowOrAnyChildHoveredEv
	.def	_ZN5ImGui29IsRootWindowOrAnyChildHoveredEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui29IsRootWindowOrAnyChildHoveredEv
_ZN5ImGui29IsRootWindowOrAnyChildHoveredEv:
.LFB804:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	xorl	%eax, %eax
	movq	6048(%rdx), %rcx
	testq	%rcx, %rcx
	je	.L3242
	movq	6008(%rdx), %r8
	cmpq	664(%r8), %rcx
	je	.L3254
.L3242:
	ret
	.p2align 4,,10
.L3254:
	movq	6032(%rdx), %rdx
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.L3242
	movq	664(%rdx), %rdx
	testq	%rdx, %rdx
	je	.L3242
	testb	$2, 15(%rdx)
	je	.L3242
	cmpb	$0, 137(%rdx)
	je	.L3242
	cmpq	%rdx, 664(%rcx)
	sete	%al
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14GetWindowWidthEv
	.def	_ZN5ImGui14GetWindowWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14GetWindowWidthEv
_ZN5ImGui14GetWindowWidthEv:
.LFB805:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	36(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15GetWindowHeightEv
	.def	_ZN5ImGui15GetWindowHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15GetWindowHeightEv
_ZN5ImGui15GetWindowHeightEv:
.LFB806:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	40(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12GetWindowPosEv
	.def	_ZN5ImGui12GetWindowPosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12GetWindowPosEv
_ZN5ImGui12GetWindowPosEv:
.LFB807:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movq	28(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12SetWindowPosERK6ImVec2i
	.def	_ZN5ImGui12SetWindowPosERK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SetWindowPosERK6ImVec2i
_ZN5ImGui12SetWindowPosERK6ImVec2i:
.LFB810:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	testl	%edx, %edx
	movl	172(%rax), %r8d
	je	.L3259
	testl	%r8d, %edx
	je	.L3258
.L3259:
	movq	(%rcx), %rdx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	andl	$-15, %r8d
	movss	28(%rax), %xmm2
	movl	%r8d, 172(%rax)
	movss	32(%rax), %xmm3
	movb	$0, 184(%rax)
	movq	%rdx, 20(%rax)
	cvttss2si	24(%rax), %edx
	cvtsi2ss	%edx, %xmm0
	cvttss2si	20(%rax), %edx
	movss	%xmm0, 32(%rax)
	subss	%xmm3, %xmm0
	cvtsi2ss	%edx, %xmm1
	movss	%xmm1, 28(%rax)
	subss	%xmm2, %xmm1
	movss	192(%rax), %xmm2
	addss	%xmm1, %xmm2
	addss	216(%rax), %xmm1
	movss	%xmm2, 192(%rax)
	movss	196(%rax), %xmm2
	movss	%xmm1, 216(%rax)
	addss	%xmm0, %xmm2
	addss	220(%rax), %xmm0
	movss	%xmm2, 196(%rax)
	movss	%xmm0, 220(%rax)
.L3258:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12SetWindowPosEPKcRK6ImVec2i
	.def	_ZN5ImGui12SetWindowPosEPKcRK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SetWindowPosEPKcRK6ImVec2i
_ZN5ImGui12SetWindowPosEPKcRK6ImVec2i:
.LFB811:
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
	movl	4+_ZZ6ImHashPKvijE9crc32_lut(%rip), %eax
	leaq	_ZZ6ImHashPKvijE9crc32_lut(%rip), %rbx
	movq	GImGui(%rip), %r11
	testl	%eax, %eax
	jne	.L3268
	movdqa	.LC10(%rip), %xmm5
	movq	%rbx, %rax
	pxor	%xmm2, %xmm2
	movdqa	.LC11(%rip), %xmm6
	leaq	1024(%rbx), %r9
	movdqa	.LC12(%rip), %xmm4
	movdqa	.LC13(%rip), %xmm3
	.p2align 4,,10
.L3269:
	movdqa	%xmm5, %xmm0
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm1
	addq	$16, %rax
	movdqa	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	paddd	%xmm6, %xmm5
	psrld	$1, %xmm1
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	pand	%xmm3, %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%r9, %rax
	jne	.L3269
.L3268:
	movzbl	(%rcx), %eax
	testb	%al, %al
	je	.L3282
	leaq	2(%rcx), %r9
	movl	$-1, %ecx
	jmp	.L3271
	.p2align 4,,10
.L3272:
	xorl	%ecx, %eax
	movl	%ecx, %esi
	movzbl	%al, %eax
	shrl	$8, %esi
	xorl	(%rbx,%rax,4), %esi
	testb	%r10b, %r10b
	movl	%esi, %ecx
	je	.L3290
.L3275:
	addq	$1, %r9
	movl	%r10d, %eax
.L3271:
	cmpb	$35, %al
	movzbl	-1(%r9), %r10d
	jne	.L3272
	cmpb	$35, %r10b
	jne	.L3272
	cmpb	$35, (%r9)
	je	.L3291
	movl	%ecx, %esi
	movzbl	%cl, %eax
	shrl	$8, %esi
.L3273:
	xorl	$35, %eax
	movl	(%rbx,%rax,4), %ecx
	xorl	%esi, %ecx
	jmp	.L3275
	.p2align 4,,10
.L3290:
	movl	%esi, %eax
	notl	%eax
.L3270:
	movl	5976(%r11), %r10d
	testl	%r10d, %r10d
	jle	.L3267
	movq	5984(%r11), %rcx
	movq	(%rcx), %r9
	cmpl	%eax, 8(%r9)
	je	.L3277
	leal	-1(%r10), %r9d
	addq	$8, %rcx
	leaq	(%rcx,%r9,8), %r10
	jmp	.L3278
	.p2align 4,,10
.L3289:
	movq	(%rcx), %r9
	addq	$8, %rcx
	cmpl	%eax, 8(%r9)
	je	.L3277
.L3278:
	cmpq	%rcx, %r10
	jne	.L3289
.L3267:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3277:
	testl	%r8d, %r8d
	movl	172(%r9), %eax
	je	.L3281
	testl	%eax, %r8d
	je	.L3267
.L3281:
	andl	$-15, %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movss	28(%r9), %xmm2
	movl	%eax, 172(%r9)
	movq	(%rdx), %rax
	movss	32(%r9), %xmm3
	movb	$0, 184(%r9)
	movq	%rax, 20(%r9)
	cvttss2si	24(%r9), %eax
	cvtsi2ss	%eax, %xmm0
	cvttss2si	20(%r9), %eax
	movss	%xmm0, 32(%r9)
	subss	%xmm3, %xmm0
	cvtsi2ss	%eax, %xmm1
	movss	%xmm1, 28(%r9)
	subss	%xmm2, %xmm1
	movss	192(%r9), %xmm2
	addss	%xmm1, %xmm2
	addss	216(%r9), %xmm1
	movss	%xmm2, 192(%r9)
	movss	196(%r9), %xmm2
	movss	%xmm1, 216(%r9)
	addss	%xmm0, %xmm2
	addss	220(%r9), %xmm0
	movss	%xmm2, 196(%r9)
	movss	%xmm0, 220(%r9)
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3291:
	movl	$255, %eax
	movl	$16777215, %esi
	jmp	.L3273
	.p2align 4,,10
.L3282:
	xorl	%eax, %eax
	jmp	.L3270
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13GetWindowSizeEv
	.def	_ZN5ImGui13GetWindowSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13GetWindowSizeEv
_ZN5ImGui13GetWindowSizeEv:
.LFB812:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movq	36(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13SetWindowSizeERK6ImVec2i
	.def	_ZN5ImGui13SetWindowSizeERK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13SetWindowSizeERK6ImVec2i
_ZN5ImGui13SetWindowSizeERK6ImVec2i:
.LFB814:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	testl	%edx, %edx
	movl	176(%rax), %r8d
	je	.L3294
	testl	%r8d, %edx
	je	.L3293
.L3294:
	movss	(%rcx), %xmm1
	andl	$-15, %r8d
	pxor	%xmm0, %xmm0
	movl	%r8d, 176(%rax)
	ucomiss	%xmm0, %xmm1
	jbe	.L3309
	movss	%xmm1, 44(%rax)
	movss	4(%rcx), %xmm1
	xorl	%edx, %edx
	movl	%edx, 152(%rax)
	ucomiss	%xmm0, %xmm1
	jbe	.L3310
.L3311:
	movl	$0, 156(%rax)
	movss	%xmm1, 48(%rax)
.L3293:
	ret
	.p2align 4,,10
.L3309:
	movss	4(%rcx), %xmm1
	movl	$2, %edx
	movb	$0, 160(%rax)
	movl	%edx, 152(%rax)
	ucomiss	%xmm0, %xmm1
	ja	.L3311
.L3310:
	movl	$2, 156(%rax)
	movb	$0, 160(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13SetWindowSizeEPKcRK6ImVec2i
	.def	_ZN5ImGui13SetWindowSizeEPKcRK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13SetWindowSizeEPKcRK6ImVec2i
_ZN5ImGui13SetWindowSizeEPKcRK6ImVec2i:
.LFB815:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rbx
	movl	%r8d, %esi
	call	_ZN5ImGui16FindWindowByNameEPKc
	testq	%rax, %rax
	je	.L3312
	testl	%esi, %esi
	movl	176(%rax), %ecx
	je	.L3314
	testl	%ecx, %esi
	je	.L3312
.L3314:
	movss	(%rbx), %xmm1
	andl	$-15, %ecx
	pxor	%xmm0, %xmm0
	movl	%ecx, 176(%rax)
	ucomiss	%xmm0, %xmm1
	jbe	.L3331
	movss	%xmm1, 44(%rax)
	movss	4(%rbx), %xmm1
	xorl	%edx, %edx
	movl	%edx, 152(%rax)
	ucomiss	%xmm0, %xmm1
	jbe	.L3332
.L3333:
	movl	$0, 156(%rax)
	movss	%xmm1, 48(%rax)
.L3312:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3331:
	movss	4(%rbx), %xmm1
	movl	$2, %edx
	movb	$0, 160(%rax)
	movl	%edx, 152(%rax)
	ucomiss	%xmm0, %xmm1
	ja	.L3333
.L3332:
	movl	$2, 156(%rax)
	movb	$0, 160(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui18SetWindowCollapsedEbi
	.def	_ZN5ImGui18SetWindowCollapsedEbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui18SetWindowCollapsedEbi
_ZN5ImGui18SetWindowCollapsedEbi:
.LFB817:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %r8
	testl	%edx, %edx
	movl	180(%r8), %eax
	je	.L3335
	testl	%eax, %edx
	je	.L3334
.L3335:
	andl	$-15, %eax
	movb	%cl, 139(%r8)
	movl	%eax, 180(%r8)
.L3334:
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17IsWindowCollapsedEv
	.def	_ZN5ImGui17IsWindowCollapsedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17IsWindowCollapsedEv
_ZN5ImGui17IsWindowCollapsedEv:
.LFB818:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movzbl	139(%rax), %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui18SetWindowCollapsedEPKcbi
	.def	_ZN5ImGui18SetWindowCollapsedEPKcbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui18SetWindowCollapsedEPKcbi
_ZN5ImGui18SetWindowCollapsedEPKcbi:
.LFB819:
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
	movl	4+_ZZ6ImHashPKvijE9crc32_lut(%rip), %eax
	leaq	_ZZ6ImHashPKvijE9crc32_lut(%rip), %rbx
	movq	GImGui(%rip), %r11
	testl	%eax, %eax
	jne	.L3345
	movdqa	.LC10(%rip), %xmm5
	movq	%rbx, %rax
	pxor	%xmm2, %xmm2
	movdqa	.LC11(%rip), %xmm6
	leaq	1024(%rbx), %r9
	movdqa	.LC12(%rip), %xmm4
	movdqa	.LC13(%rip), %xmm3
	.p2align 4,,10
.L3346:
	movdqa	%xmm5, %xmm0
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm1
	addq	$16, %rax
	movdqa	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	paddd	%xmm6, %xmm5
	psrld	$1, %xmm1
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm1
	pxor	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm4, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm2, %xmm7
	pand	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm4, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	pand	%xmm3, %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%r9, %rax
	jne	.L3346
.L3345:
	movzbl	(%rcx), %eax
	testb	%al, %al
	je	.L3359
	leaq	2(%rcx), %r9
	movl	$-1, %ecx
	jmp	.L3348
	.p2align 4,,10
.L3349:
	xorl	%ecx, %eax
	movl	%ecx, %esi
	movzbl	%al, %eax
	shrl	$8, %esi
	xorl	(%rbx,%rax,4), %esi
	testb	%r10b, %r10b
	movl	%esi, %ecx
	je	.L3367
.L3352:
	addq	$1, %r9
	movl	%r10d, %eax
.L3348:
	cmpb	$35, %al
	movzbl	-1(%r9), %r10d
	jne	.L3349
	cmpb	$35, %r10b
	jne	.L3349
	cmpb	$35, (%r9)
	je	.L3368
	movl	%ecx, %esi
	movzbl	%cl, %eax
	shrl	$8, %esi
.L3350:
	xorl	$35, %eax
	movl	(%rbx,%rax,4), %ecx
	xorl	%esi, %ecx
	jmp	.L3352
	.p2align 4,,10
.L3367:
	movl	%esi, %eax
	notl	%eax
.L3347:
	movl	5976(%r11), %r10d
	testl	%r10d, %r10d
	jle	.L3344
	movq	5984(%r11), %rcx
	movq	(%rcx), %r9
	cmpl	%eax, 8(%r9)
	je	.L3354
	leal	-1(%r10), %r9d
	addq	$8, %rcx
	leaq	(%rcx,%r9,8), %r10
	jmp	.L3355
	.p2align 4,,10
.L3366:
	movq	(%rcx), %r9
	addq	$8, %rcx
	cmpl	%eax, 8(%r9)
	je	.L3354
.L3355:
	cmpq	%rcx, %r10
	jne	.L3366
.L3344:
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3354:
	testl	%r8d, %r8d
	movl	180(%r9), %eax
	je	.L3358
	testl	%eax, %r8d
	je	.L3344
.L3358:
	andl	$-15, %eax
	movb	%dl, 139(%r9)
	movl	%eax, 180(%r9)
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3368:
	movl	$255, %eax
	movl	$16777215, %esi
	jmp	.L3350
	.p2align 4,,10
.L3359:
	xorl	%eax, %eax
	jmp	.L3347
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16SetNextWindowPosERK6ImVec2i
	.def	_ZN5ImGui16SetNextWindowPosERK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16SetNextWindowPosERK6ImVec2i
_ZN5ImGui16SetNextWindowPosERK6ImVec2i:
.LFB822:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	(%rcx), %rcx
	testl	%edx, %edx
	movq	%rcx, 6216(%rax)
	movl	$1, %ecx
	cmove	%ecx, %edx
	movl	%edx, 6244(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22SetNextWindowPosCenterEi
	.def	_ZN5ImGui22SetNextWindowPosCenterEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22SetNextWindowPosCenterEi
_ZN5ImGui22SetNextWindowPosCenterEi:
.LFB823:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movabsq	$-36028797027352577, %rdx
	movq	%rdx, 6216(%rax)
	movl	$1, %edx
	testl	%ecx, %ecx
	cmove	%edx, %ecx
	movl	%ecx, 6244(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
	.def	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
_ZN5ImGui17SetNextWindowSizeERK6ImVec2i:
.LFB824:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	(%rcx), %rcx
	testl	%edx, %edx
	movq	%rcx, 6224(%rax)
	movl	$1, %ecx
	cmove	%ecx, %edx
	movl	%edx, 6248(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP31ImGuiSizeConstraintCallbackDataEPv
	.def	_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP31ImGuiSizeConstraintCallbackDataEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP31ImGuiSizeConstraintCallbackDataEPv
_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP31ImGuiSizeConstraintCallbackDataEPv:
.LFB825:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movb	$1, 6296(%rax)
	movss	(%rcx), %xmm3
	movss	4(%rcx), %xmm2
	movss	(%rdx), %xmm1
	movss	4(%rdx), %xmm0
	movss	%xmm3, 6260(%rax)
	movss	%xmm2, 6264(%rax)
	movss	%xmm1, 6268(%rax)
	movss	%xmm0, 6272(%rax)
	movq	%r8, 6280(%rax)
	movq	%r9, 6288(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2
	.def	_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2
_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2:
.LFB826:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	(%rcx), %rdx
	movl	$1, 6252(%rax)
	movq	%rdx, 6232(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui25SetNextWindowContentWidthEf
	.def	_ZN5ImGui25SetNextWindowContentWidthEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui25SetNextWindowContentWidthEf
_ZN5ImGui25SetNextWindowContentWidthEf:
.LFB827:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	pxor	%xmm1, %xmm1
	movl	6252(%rax), %edx
	testl	%edx, %edx
	je	.L3378
	movss	6236(%rax), %xmm1
.L3378:
	movss	%xmm0, 6232(%rax)
	movss	%xmm1, 6236(%rax)
	movl	$1, 6252(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22SetNextWindowCollapsedEbi
	.def	_ZN5ImGui22SetNextWindowCollapsedEbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22SetNextWindowCollapsedEbi
_ZN5ImGui22SetNextWindowCollapsedEbi:
.LFB828:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movb	%cl, 6240(%rax)
	movl	$1, %ecx
	cmove	%ecx, %edx
	movl	%edx, 6256(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui18SetNextWindowFocusEv
	.def	_ZN5ImGui18SetNextWindowFocusEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui18SetNextWindowFocusEv
_ZN5ImGui18SetNextWindowFocusEv:
.LFB829:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movb	$1, 6297(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui25GetWindowContentRegionMinEv
	.def	_ZN5ImGui25GetWindowContentRegionMinEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui25GetWindowContentRegionMinEv
_ZN5ImGui25GetWindowContentRegionMinEv:
.LFB833:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movq	68(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui25GetWindowContentRegionMaxEv
	.def	_ZN5ImGui25GetWindowContentRegionMaxEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui25GetWindowContentRegionMaxEv
_ZN5ImGui25GetWindowContentRegionMaxEv:
.LFB834:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movq	76(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui27GetWindowContentRegionWidthEv
	.def	_ZN5ImGui27GetWindowContentRegionWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui27GetWindowContentRegionWidthEv
_ZN5ImGui27GetWindowContentRegionWidthEv:
.LFB835:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	76(%rax), %xmm0
	subss	68(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17GetTextLineHeightEv
	.def	_ZN5ImGui17GetTextLineHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17GetTextLineHeightEv
_ZN5ImGui17GetTextLineHeightEv:
.LFB836:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	5944(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui28GetTextLineHeightWithSpacingEv
	.def	_ZN5ImGui28GetTextLineHeightWithSpacingEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui28GetTextLineHeightWithSpacingEv
_ZN5ImGui28GetTextLineHeightWithSpacingEv:
.LFB837:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	5944(%rax), %xmm0
	addss	5172(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui29GetItemsLineHeightWithSpacingEv
	.def	_ZN5ImGui29GetItemsLineHeightWithSpacingEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui29GetItemsLineHeightWithSpacingEv
_ZN5ImGui29GetItemsLineHeightWithSpacingEv:
.LFB838:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	5160(%rax), %xmm0
	addss	%xmm0, %xmm0
	addss	5944(%rax), %xmm0
	addss	5172(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17GetWindowDrawListEv
	.def	_ZN5ImGui17GetWindowDrawListEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17GetWindowDrawListEv
_ZN5ImGui17GetWindowDrawListEv:
.LFB839:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	movq	656(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7GetFontEv
	.def	_ZN5ImGui7GetFontEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7GetFontEv
_ZN5ImGui7GetFontEv:
.LFB840:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	5936(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11GetFontSizeEv
	.def	_ZN5ImGui11GetFontSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetFontSizeEv
_ZN5ImGui11GetFontSizeEv:
.LFB841:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	5944(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22GetFontTexUvWhitePixelEv
	.def	_ZN5ImGui22GetFontTexUvWhitePixelEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22GetFontTexUvWhitePixelEv
_ZN5ImGui22GetFontTexUvWhitePixelEv:
.LFB842:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	5952(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui18SetWindowFontScaleEf
	.def	_ZN5ImGui18SetWindowFontScaleEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui18SetWindowFontScaleEf
_ZN5ImGui18SetWindowFontScaleEf:
.LFB843:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rdx
	movss	%xmm0, 648(%rdx)
	mulss	5948(%rax), %xmm0
	movss	%xmm0, 5944(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12GetCursorPosEv
	.def	_ZN5ImGui12GetCursorPosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12GetCursorPosEv
_ZN5ImGui12GetCursorPosEv:
.LFB844:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	196(%rax), %xmm0
	movaps	%xmm0, %xmm1
	subss	32(%rax), %xmm1
	addss	100(%rax), %xmm1
	movss	192(%rax), %xmm0
	subss	28(%rax), %xmm0
	addss	96(%rax), %xmm0
	movd	%xmm1, %eax
	movq	%rax, %rdx
	salq	$32, %rdx
	movd	%xmm0, %eax
	orq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13GetCursorPosXEv
	.def	_ZN5ImGui13GetCursorPosXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13GetCursorPosXEv
_ZN5ImGui13GetCursorPosXEv:
.LFB845:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	192(%rax), %xmm0
	subss	28(%rax), %xmm0
	addss	96(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13GetCursorPosYEv
	.def	_ZN5ImGui13GetCursorPosYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13GetCursorPosYEv
_ZN5ImGui13GetCursorPosYEv:
.LFB846:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	196(%rax), %xmm0
	subss	32(%rax), %xmm0
	addss	100(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12SetCursorPosERK6ImVec2
	.def	_ZN5ImGui12SetCursorPosERK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SetCursorPosERK6ImVec2
_ZN5ImGui12SetCursorPosERK6ImVec2:
.LFB847:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	movss	32(%rax), %xmm1
	subss	100(%rax), %xmm1
	addss	4(%rcx), %xmm1
	movss	220(%rax), %xmm2
	movss	28(%rax), %xmm0
	ucomiss	%xmm1, %xmm2
	subss	96(%rax), %xmm0
	addss	(%rcx), %xmm0
	movss	%xmm1, 196(%rax)
	movss	%xmm0, 192(%rax)
	jnb	.L3398
	movaps	%xmm1, %xmm2
.L3398:
	movss	216(%rax), %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L3399
	movaps	%xmm0, %xmm1
.L3399:
	movss	%xmm1, 216(%rax)
	movss	%xmm2, 220(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13SetCursorPosXEf
	.def	_ZN5ImGui13SetCursorPosXEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13SetCursorPosXEf
_ZN5ImGui13SetCursorPosXEf:
.LFB848:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	movss	28(%rax), %xmm1
	subss	96(%rax), %xmm1
	addss	%xmm1, %xmm0
	movss	216(%rax), %xmm1
	ucomiss	%xmm0, %xmm1
	movss	%xmm0, 192(%rax)
	jnb	.L3401
	movaps	%xmm0, %xmm1
.L3401:
	movss	%xmm1, 216(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13SetCursorPosYEf
	.def	_ZN5ImGui13SetCursorPosYEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13SetCursorPosYEf
_ZN5ImGui13SetCursorPosYEf:
.LFB849:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	movss	32(%rax), %xmm1
	subss	100(%rax), %xmm1
	addss	%xmm1, %xmm0
	movss	220(%rax), %xmm1
	ucomiss	%xmm0, %xmm1
	movss	%xmm0, 196(%rax)
	jnb	.L3403
	movaps	%xmm0, %xmm1
.L3403:
	movss	%xmm1, 220(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17GetCursorStartPosEv
	.def	_ZN5ImGui17GetCursorStartPosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17GetCursorStartPosEv
_ZN5ImGui17GetCursorStartPosEv:
.LFB850:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	212(%rax), %xmm1
	subss	32(%rax), %xmm1
	movss	208(%rax), %xmm0
	subss	28(%rax), %xmm0
	movd	%xmm1, %eax
	movq	%rax, %rdx
	salq	$32, %rdx
	movd	%xmm0, %eax
	orq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui18GetCursorScreenPosEv
	.def	_ZN5ImGui18GetCursorScreenPosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui18GetCursorScreenPosEv
_ZN5ImGui18GetCursorScreenPosEv:
.LFB851:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movq	192(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui18SetCursorScreenPosERK6ImVec2
	.def	_ZN5ImGui18SetCursorScreenPosERK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui18SetCursorScreenPosERK6ImVec2
_ZN5ImGui18SetCursorScreenPosERK6ImVec2:
.LFB852:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	(%rcx), %rdx
	movq	6008(%rax), %rax
	movq	%rdx, 192(%rax)
	movss	220(%rax), %xmm1
	movss	196(%rax), %xmm0
	ucomiss	%xmm0, %xmm1
	jnb	.L3407
	movaps	%xmm0, %xmm1
.L3407:
	movss	192(%rax), %xmm2
	movss	216(%rax), %xmm0
	ucomiss	%xmm2, %xmm0
	jnb	.L3408
	movaps	%xmm2, %xmm0
.L3408:
	movss	%xmm0, 216(%rax)
	movss	%xmm1, 220(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10GetScrollXEv
	.def	_ZN5ImGui10GetScrollXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10GetScrollXEv
_ZN5ImGui10GetScrollXEv:
.LFB853:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	96(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10GetScrollYEv
	.def	_ZN5ImGui10GetScrollYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10GetScrollYEv
_ZN5ImGui10GetScrollYEv:
.LFB854:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	100(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13GetScrollMaxXEv
	.def	_ZN5ImGui13GetScrollMaxXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13GetScrollMaxXEv
_ZN5ImGui13GetScrollMaxXEv:
.LFB855:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	52(%rax), %xmm0
	subss	44(%rax), %xmm0
	subss	124(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13GetScrollMaxYEv
	.def	_ZN5ImGui13GetScrollMaxYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13GetScrollMaxYEv
_ZN5ImGui13GetScrollMaxYEv:
.LFB856:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	56(%rax), %xmm0
	subss	48(%rax), %xmm0
	subss	128(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SetScrollXEf
	.def	_ZN5ImGui10SetScrollXEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SetScrollXEf
_ZN5ImGui10SetScrollXEf:
.LFB857:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	movss	%xmm0, 104(%rax)
	movl	$0x00000000, 112(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SetScrollYEf
	.def	_ZN5ImGui10SetScrollYEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SetScrollYEf
_ZN5ImGui10SetScrollYEf:
.LFB858:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	pxor	%xmm1, %xmm1
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rdx
	movl	12(%rdx), %ecx
	testb	$1, %cl
	jne	.L3415
	movss	5160(%rax), %xmm2
	movss	648(%rdx), %xmm1
	mulss	5948(%rax), %xmm1
	addss	%xmm2, %xmm2
	addss	%xmm2, %xmm1
.L3415:
	andb	$4, %ch
	addss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	je	.L3416
	movss	5160(%rax), %xmm2
	movss	648(%rdx), %xmm1
	mulss	5948(%rax), %xmm1
	addss	%xmm2, %xmm2
	addss	%xmm2, %xmm1
.L3416:
	addss	%xmm1, %xmm0
	movl	$0x00000000, 116(%rdx)
	movss	%xmm0, 108(%rdx)
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC169:
	.ascii "center_y_ratio >= 0.0f && center_y_ratio <= 1.0f\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui17SetScrollFromPosYEff
	.def	_ZN5ImGui17SetScrollFromPosYEff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17SetScrollFromPosYEff
_ZN5ImGui17SetScrollFromPosYEff:
.LFB859:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	movq	GImGui(%rip), %rax
	pxor	%xmm7, %xmm7
	movq	6008(%rax), %rdx
	ucomiss	%xmm7, %xmm1
	movaps	%xmm1, %xmm6
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	jb	.L3421
	movss	.LC18(%rip), %xmm1
	ucomiss	%xmm6, %xmm1
	jnb	.L3423
.L3421:
	movl	$5281, %r8d
	movss	%xmm0, 44(%rsp)
	leaq	.LC5(%rip), %rdx
	leaq	.LC169(%rip), %rcx
	call	_assert
	movss	44(%rsp), %xmm0
.L3423:
	addss	100(%rbx), %xmm0
	ucomiss	%xmm6, %xmm7
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 108(%rbx)
	jnb	.L3430
.L3424:
	movss	%xmm6, 116(%rbx)
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3430:
	movss	88(%rbx), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L3424
	movl	$0x00000000, 108(%rbx)
	jmp	.L3424
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13SetScrollHereEf
	.def	_ZN5ImGui13SetScrollHereEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13SetScrollHereEf
_ZN5ImGui13SetScrollHereEf:
.LFB860:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	movq	GImGui(%rip), %rax
	pxor	%xmm8, %xmm8
	movq	6008(%rax), %rdx
	movaps	%xmm0, %xmm6
	subss	.LC17(%rip), %xmm6
	movaps	%xmm0, %xmm7
	ucomiss	%xmm8, %xmm0
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rdx
	mulss	5172(%rax), %xmm6
	movss	232(%rdx), %xmm1
	movb	$1, 138(%rdx)
	addss	%xmm6, %xmm6
	movq	6008(%rax), %rbx
	mulss	%xmm0, %xmm1
	addss	204(%rdx), %xmm1
	addss	%xmm1, %xmm6
	subss	32(%rdx), %xmm6
	jb	.L3432
	movss	.LC18(%rip), %xmm0
	ucomiss	%xmm7, %xmm0
	jnb	.L3434
.L3432:
	leaq	.LC5(%rip), %rdx
	movl	$5281, %r8d
	leaq	.LC169(%rip), %rcx
	call	_assert
.L3434:
	addss	100(%rbx), %xmm6
	pxor	%xmm1, %xmm1
	ucomiss	%xmm7, %xmm8
	cvttss2si	%xmm6, %eax
	cvtsi2ss	%eax, %xmm1
	movss	%xmm1, 108(%rbx)
	jnb	.L3441
.L3435:
	movss	%xmm7, 116(%rbx)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3441:
	movss	88(%rbx), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L3435
	movl	$0x00000000, 108(%rbx)
	jmp	.L3435
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui20SetKeyboardFocusHereEi
	.def	_ZN5ImGui20SetKeyboardFocusHereEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui20SetKeyboardFocusHereEi
_ZN5ImGui20SetKeyboardFocusHereEi:
.LFB861:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	movl	$2147483647, 708(%rax)
	movl	688(%rax), %edx
	leal	1(%rcx,%rdx), %edx
	movl	%edx, 704(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15SetStateStorageEP12ImGuiStorage
	.def	_ZN5ImGui15SetStateStorageEP12ImGuiStorage;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15SetStateStorageEP12ImGuiStorage
_ZN5ImGui15SetStateStorageEP12ImGuiStorage:
.LFB862:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	testq	%rcx, %rcx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	leaq	632(%rax), %rdx
	cmove	%rdx, %rcx
	movq	%rcx, 296(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15GetStateStorageEv
	.def	_ZN5ImGui15GetStateStorageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15GetStateStorageEv
_ZN5ImGui15GetStateStorageEv:
.LFB863:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movq	296(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	.def	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
_ZN5ImGui29AlignFirstTextHeightToWidgetsEv:
.LFB873:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rdx
	cmpb	$0, 140(%rdx)
	je	.L3450
.L3446:
	addq	$56, %rsp
	ret
	.p2align 4,,10
.L3450:
	movss	5160(%rax), %xmm1
	leaq	40(%rsp), %rcx
	movl	$0x00000000, 40(%rsp)
	movaps	%xmm1, %xmm0
	addss	%xmm1, %xmm0
	addss	5944(%rax), %xmm0
	movss	%xmm0, 44(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	jne	.L3446
	pxor	%xmm0, %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
	.def	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_:
.LFB883:
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
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	216(%rsp), %r11
	movq	%rcx, %rsi
	movq	6008(%rax), %rcx
	movq	%r8, %rdi
	movq	%r9, %rbp
	movb	$1, 138(%rcx)
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	jne	.L3451
	movss	196(%rbx), %xmm2
	pxor	%xmm6, %xmm6
	movss	4(%rdx), %xmm0
	movss	192(%rbx), %xmm3
	movss	(%rdx), %xmm1
	addss	%xmm2, %xmm0
	movss	12(%r11), %xmm4
	movq	192(%rbx), %rax
	addss	%xmm3, %xmm1
	ucomiss	%xmm6, %xmm4
	movss	%xmm0, 92(%rsp)
	movss	%xmm1, 88(%rsp)
	movq	%rax, 80(%rsp)
	jbe	.L3453
	movss	.LC170(%rip), %xmm4
	addss	%xmm4, %xmm1
	addss	%xmm4, %xmm0
	movss	%xmm1, 88(%rsp)
	movss	%xmm0, 92(%rsp)
.L3453:
	subss	%xmm3, %xmm1
	leaq	72(%rsp), %r13
	subss	%xmm2, %xmm0
	leaq	80(%rsp), %r12
	movq	%r13, %rcx
	movss	%xmm1, 72(%rsp)
	pxor	%xmm1, %xmm1
	movss	%xmm0, 76(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movq	%r12, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	testb	%al, %al
	jne	.L3464
.L3451:
	movaps	96(%rsp), %xmm6
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L3464:
	movss	12(%r11), %xmm0
	movq	656(%rbx), %r10
	ucomiss	%xmm6, %xmm0
	jbe	.L3463
	movq	%r11, %rcx
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	movss	.LC18(%rip), %xmm6
	movq	%r12, %rdx
	movl	$-1, 40(%rsp)
	leaq	8(%r12), %r8
	movl	%eax, %r9d
	movq	%r10, %rcx
	movl	$0x00000000, 32(%rsp)
	movss	%xmm6, 48(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movq	208(%rsp), %rcx
	movq	656(%rbx), %r10
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	movq	%rbp, 40(%rsp)
	movq	%r13, %r9
	movq	%rsi, %rdx
	movss	92(%rsp), %xmm0
	movl	%eax, 48(%rsp)
	leaq	64(%rsp), %r8
	movq	%r10, %rcx
	movss	88(%rsp), %xmm1
	movq	%rdi, 32(%rsp)
	subss	%xmm6, %xmm0
	subss	%xmm6, %xmm1
	movss	%xmm0, 76(%rsp)
	movss	84(%rsp), %xmm0
	movss	%xmm1, 72(%rsp)
	addss	%xmm6, %xmm0
	addss	80(%rsp), %xmm6
	movss	%xmm0, 68(%rsp)
	movss	%xmm6, 64(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	jmp	.L3451
	.p2align 4,,10
.L3463:
	movq	208(%rsp), %rcx
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	movq	%rbp, 40(%rsp)
	movq	%r12, %r8
	movq	%rsi, %rdx
	movl	%eax, 48(%rsp)
	leaq	8(%r12), %r9
	movq	%r10, %rcx
	movq	%rdi, 32(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	jmp	.L3451
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8LogToTTYEi
	.def	_ZN5ImGui8LogToTTYEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8LogToTTYEi
_ZN5ImGui8LogToTTYEi:
.LFB885:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	cmpb	$0, 11432(%rbx)
	je	.L3469
.L3465:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3469:
	movq	6008(%rbx), %rsi
	movl	%ecx, 44(%rsp)
	movb	$1, 11432(%rbx)
	call	*__imp___iob_func(%rip)
	movl	44(%rsp), %ecx
	addq	$48, %rax
	movq	%rax, 11440(%rbx)
	movl	244(%rsi), %eax
	testl	%ecx, %ecx
	movl	%eax, 11456(%rbx)
	js	.L3465
	movl	%ecx, 11460(%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC171:
	.ascii "ab\0"
.LC172:
	.ascii "g.LogFile != __null\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui9LogToFileEiPKc
	.def	_ZN5ImGui9LogToFileEiPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9LogToFileEiPKc
_ZN5ImGui9LogToFileEiPKc:
.LFB886:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	cmpb	$0, 11432(%rbx)
	movl	%ecx, %esi
	movq	%rdx, %rcx
	jne	.L3470
	testq	%rdx, %rdx
	movq	6008(%rbx), %rdi
	je	.L3479
.L3473:
	leaq	.LC171(%rip), %rdx
	call	_Z10ImFileOpenPKcS0_
	testq	%rax, %rax
	movq	%rax, 11440(%rbx)
	je	.L3480
	movb	$1, 11432(%rbx)
	movl	244(%rdi), %eax
	testl	%esi, %esi
	movl	%eax, 11456(%rbx)
	js	.L3470
	movl	%esi, 11460(%rbx)
.L3470:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3479:
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L3473
	jmp	.L3470
	.p2align 4,,10
.L3480:
	leaq	.LC5(%rip), %rdx
	movl	$5820, %r8d
	leaq	.LC172(%rip), %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_assert
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14LogToClipboardEi
	.def	_ZN5ImGui14LogToClipboardEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14LogToClipboardEi
_ZN5ImGui14LogToClipboardEi:
.LFB887:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	cmpb	$0, 11432(%rax)
	jne	.L3481
	movq	6008(%rax), %rdx
	movb	$1, 11432(%rax)
	testl	%ecx, %ecx
	movq	$0, 11440(%rax)
	movl	244(%rdx), %edx
	movl	%edx, 11456(%rax)
	js	.L3481
	movl	%ecx, 11460(%rax)
.L3481:
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC173:
	.ascii "\15\12\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui9LogFinishEv
	.def	_ZN5ImGui9LogFinishEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9LogFinishEv
_ZN5ImGui9LogFinishEv:
.LFB888:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	cmpb	$0, 11432(%rbx)
	jne	.L3512
.L3485:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3512:
	leaq	.LC173(%rip), %rcx
	call	_ZN5ImGui7LogTextEPKcz
	movq	11440(%rbx), %rsi
	movb	$0, 11432(%rbx)
	testq	%rsi, %rsi
	je	.L3488
	call	*__imp___iob_func(%rip)
	movq	11440(%rbx), %rcx
	addq	$48, %rax
	cmpq	%rax, %rsi
	je	.L3513
	call	fclose
.L3490:
	movq	$0, 11440(%rbx)
.L3488:
	movq	11448(%rbx), %rsi
	cmpl	$2, (%rsi)
	jle	.L3485
	movq	GImGui(%rip), %rcx
	movq	8(%rsi), %rdx
	movq	216(%rcx), %rax
	testq	%rax, %rax
	je	.L3492
	movq	224(%rcx), %rcx
	call	*%rax
	movq	11448(%rbx), %rsi
	movq	8(%rsi), %rdx
.L3492:
	testq	%rdx, %rdx
	je	.L3493
	movq	GImGui(%rip), %rax
	movq	$0, (%rsi)
	movq	%rdx, %rcx
	subl	$1, 844(%rax)
	call	*240(%rax)
	movq	$0, 8(%rsi)
.L3493:
	movslq	(%rsi), %rax
	xorl	%ebx, %ebx
	cmpl	4(%rsi), %eax
	je	.L3514
.L3494:
	leal	1(%rax), %edx
	movl	%edx, (%rsi)
	movb	$0, (%rbx,%rax)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3514:
	leal	1(%rax), %ecx
	testl	%eax, %eax
	movl	$8, %edx
	je	.L3495
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L3495:
	movq	GImGui(%rip), %rax
	cmpl	%edx, %ecx
	movl	%edx, %edi
	cmovge	%ecx, %edi
	movslq	%edi, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8(%rsi), %rcx
	movq	%rax, %rbx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3498
	movslq	(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	call	memcpy
	movq	8(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3498
	subl	$1, 844(%rax)
.L3498:
	call	*240(%rax)
	movq	%rbx, 8(%rsi)
	movslq	(%rsi), %rax
	movl	%edi, 4(%rsi)
	jmp	.L3494
	.p2align 4,,10
.L3513:
	call	fflush
	jmp	.L3490
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui21TreeAdvanceToLabelPosEv
	.def	_ZN5ImGui21TreeAdvanceToLabelPosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21TreeAdvanceToLabelPosEv
_ZN5ImGui21TreeAdvanceToLabelPosEv:
.LFB904:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movss	5156(%rax), %xmm0
	addss	%xmm0, %xmm0
	addss	5944(%rax), %xmm0
	addss	192(%rdx), %xmm0
	movss	%xmm0, 192(%rdx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui25GetTreeNodeToLabelSpacingEv
	.def	_ZN5ImGui25GetTreeNodeToLabelSpacingEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui25GetTreeNodeToLabelSpacingEv
_ZN5ImGui25GetTreeNodeToLabelSpacingEv:
.LFB905:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	5156(%rax), %xmm0
	addss	%xmm0, %xmm0
	addss	5944(%rax), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19SetNextTreeNodeOpenEbi
	.def	_ZN5ImGui19SetNextTreeNodeOpenEbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19SetNextTreeNodeOpenEbi
_ZN5ImGui19SetNextTreeNodeOpenEbi:
.LFB906:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movb	%cl, 6298(%rax)
	movl	$1, %ecx
	cmove	%ecx, %edx
	movl	%edx, 6300(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6PushIDEPKc
	.def	_ZN5ImGui6PushIDEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6PushIDEPKc
_ZN5ImGui6PushIDEPKc:
.LFB907:
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
	movq	GImGui(%rip), %rax
	movq	%rcx, %rdx
	movq	6008(%rax), %rcx
	movb	$1, 138(%rcx)
	movq	6008(%rax), %rbx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, %ebp
	movslq	496(%rbx), %rax
	cmpl	500(%rbx), %eax
	je	.L3520
	movq	504(%rbx), %rsi
.L3521:
	leal	1(%rax), %edx
	movl	%edx, 496(%rbx)
	movl	%ebp, (%rsi,%rax,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L3520:
	leal	1(%rax), %edi
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L3529
.L3522:
	cmpl	%edx, %edi
	movq	GImGui(%rip), %rax
	cmovl	%edx, %edi
	movslq	%edi, %rcx
	addl	$1, 844(%rax)
	salq	$2, %rcx
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3525
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3525
	subl	$1, 844(%rax)
.L3525:
	call	*240(%rax)
	movq	%rsi, 504(%rbx)
	movslq	496(%rbx), %rax
	movl	%edi, 500(%rbx)
	jmp	.L3521
	.p2align 4,,10
.L3529:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L3522
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6PushIDEPKcS1_
	.def	_ZN5ImGui6PushIDEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6PushIDEPKcS1_
_ZN5ImGui6PushIDEPKcS1_:
.LFB908:
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
	movq	GImGui(%rip), %rax
	movq	%rdx, %rdi
	movq	6008(%rax), %rdx
	movq	%rcx, %rsi
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	movslq	496(%rbx), %rax
	testl	%eax, %eax
	jle	.L3544
.L3531:
	movq	504(%rbx), %rcx
	movq	%rdi, %r8
	movl	$0, %edx
	subq	%rsi, %r8
	testq	%rdi, %rdi
	cmovne	%r8d, %edx
	movl	-4(%rcx,%rax,4), %r8d
	movq	%rsi, %rcx
	call	_Z6ImHashPKvij
	movq	GImGui(%rip), %rdx
	movl	%eax, %esi
	cmpl	6068(%rdx), %eax
	jne	.L3533
	movb	$1, 6076(%rdx)
.L3533:
	movslq	496(%rbx), %rax
	cmpl	500(%rbx), %eax
	je	.L3534
	movq	504(%rbx), %rdi
.L3535:
	leal	1(%rax), %edx
	movl	%edx, 496(%rbx)
	movl	%esi, (%rdi,%rax,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L3534:
	leal	1(%rax), %ebp
	testl	%eax, %eax
	movl	$8, %ecx
	jne	.L3545
.L3536:
	cmpl	%ecx, %ebp
	cmovl	%ecx, %ebp
	addl	$1, 844(%rdx)
	movslq	%ebp, %rcx
	salq	$2, %rcx
	call	*232(%rdx)
	movq	504(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3539
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3539
	subl	$1, 844(%rax)
.L3539:
	call	*240(%rax)
	movq	%rdi, 504(%rbx)
	movslq	496(%rbx), %rax
	movl	%ebp, 500(%rbx)
	jmp	.L3535
	.p2align 4,,10
.L3544:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	496(%rbx), %rax
	jmp	.L3531
	.p2align 4,,10
.L3545:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	jmp	.L3536
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6PushIDEPKv
	.def	_ZN5ImGui6PushIDEPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6PushIDEPKv
_ZN5ImGui6PushIDEPKv:
.LFB909:
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
	movq	GImGui(%rip), %rax
	movq	%rcx, %rdx
	movq	6008(%rax), %rcx
	movb	$1, 138(%rcx)
	movq	6008(%rax), %rbx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKv
	movl	%eax, %ebp
	movslq	496(%rbx), %rax
	cmpl	500(%rbx), %eax
	je	.L3547
	movq	504(%rbx), %rsi
.L3548:
	leal	1(%rax), %edx
	movl	%edx, 496(%rbx)
	movl	%ebp, (%rsi,%rax,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L3547:
	leal	1(%rax), %edi
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L3556
.L3549:
	cmpl	%edx, %edi
	movq	GImGui(%rip), %rax
	cmovl	%edx, %edi
	movslq	%edi, %rcx
	addl	$1, 844(%rax)
	salq	$2, %rcx
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3552
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3552
	subl	$1, 844(%rax)
.L3552:
	call	*240(%rax)
	movq	%rsi, 504(%rbx)
	movslq	496(%rbx), %rax
	movl	%edi, 500(%rbx)
	jmp	.L3548
	.p2align 4,,10
.L3556:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L3549
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6PushIDEi
	.def	_ZN5ImGui6PushIDEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6PushIDEi
_ZN5ImGui6PushIDEi:
.LFB910:
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
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	movslq	%ecx, %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKv
	movl	%eax, %ebp
	movslq	496(%rbx), %rax
	cmpl	500(%rbx), %eax
	je	.L3558
	movq	504(%rbx), %rsi
.L3559:
	leal	1(%rax), %edx
	movl	%edx, 496(%rbx)
	movl	%ebp, (%rsi,%rax,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L3558:
	leal	1(%rax), %edi
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L3567
.L3560:
	cmpl	%edx, %edi
	movq	GImGui(%rip), %rax
	cmovl	%edx, %edi
	movslq	%edi, %rcx
	addl	$1, 844(%rax)
	salq	$2, %rcx
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3563
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3563
	subl	$1, 844(%rax)
.L3563:
	call	*240(%rax)
	movq	%rsi, 504(%rbx)
	movslq	496(%rbx), %rax
	movl	%edi, 500(%rbx)
	jmp	.L3559
	.p2align 4,,10
.L3567:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L3560
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5PopIDEv
	.def	_ZN5ImGui5PopIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5PopIDEv
_ZN5ImGui5PopIDEv:
.LFB911:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	movl	496(%rbx), %eax
	testl	%eax, %eax
	jle	.L3570
	subl	$1, %eax
	movl	%eax, 496(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3570:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	496(%rbx), %eax
	subl	$1, %eax
	movl	%eax, 496(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5GetIDEPKc
	.def	_ZN5ImGui5GetIDEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5GetIDEPKc
_ZN5ImGui5GetIDEPKc:
.LFB912:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rcx, %rdx
	movq	6008(%rax), %rcx
	jmp	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5GetIDEPKcS1_
	.def	_ZN5ImGui5GetIDEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5GetIDEPKcS1_
_ZN5ImGui5GetIDEPKcS1_:
.LFB913:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movslq	496(%rbx), %rax
	testl	%eax, %eax
	jle	.L3577
.L3573:
	movq	504(%rbx), %rcx
	movq	%rdi, %r8
	movl	$0, %edx
	subq	%rsi, %r8
	testq	%rdi, %rdi
	cmovne	%r8d, %edx
	movl	-4(%rcx,%rax,4), %r8d
	movq	%rsi, %rcx
	call	_Z6ImHashPKvij
	movq	GImGui(%rip), %rdx
	cmpl	6068(%rdx), %eax
	jne	.L3572
	movb	$1, 6076(%rdx)
.L3572:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3577:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	496(%rbx), %rax
	jmp	.L3573
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5GetIDEPKv
	.def	_ZN5ImGui5GetIDEPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5GetIDEPKv
_ZN5ImGui5GetIDEPKv:
.LFB914:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rcx, %rdx
	movq	6008(%rax), %rcx
	jmp	_ZN11ImGuiWindow5GetIDEPKv
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6BulletEv
	.def	_ZN5ImGui6BulletEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6BulletEv
_ZN5ImGui6BulletEv:
.LFB915:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rax
	cmpb	$0, 140(%rax)
	jne	.L3579
	movss	5160(%rbx), %xmm1
	movss	5944(%rbx), %xmm0
	addss	%xmm1, %xmm1
	movss	224(%rax), %xmm6
	addss	%xmm0, %xmm1
	minss	%xmm1, %xmm6
	ucomiss	%xmm0, %xmm6
	jb	.L3586
.L3582:
	movss	196(%rax), %xmm2
	leaq	56(%rsp), %r11
	movss	192(%rax), %xmm3
	movq	%r11, %rcx
	movaps	%xmm2, %xmm1
	movq	192(%rax), %rax
	addss	%xmm3, %xmm0
	addss	%xmm6, %xmm1
	movss	%xmm0, 72(%rsp)
	subss	%xmm3, %xmm0
	movss	%xmm1, 76(%rsp)
	subss	%xmm2, %xmm1
	movq	%rax, 64(%rsp)
	movss	%xmm0, 56(%rsp)
	movss	%xmm1, 60(%rsp)
	pxor	%xmm1, %xmm1
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	64(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	testb	%al, %al
	jne	.L3583
.L3585:
	movss	5156(%rbx), %xmm0
	addss	%xmm0, %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	nop
.L3579:
	movaps	80(%rsp), %xmm6
	addq	$96, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3586:
	movaps	%xmm0, %xmm6
	jmp	.L3582
	.p2align 4,,10
.L3583:
	movss	.LC17(%rip), %xmm0
	xorl	%ecx, %ecx
	movq	GImGui(%rip), %r8
	mulss	%xmm0, %xmm6
	addss	68(%rsp), %xmm6
	mulss	5944(%rbx), %xmm0
	addss	5156(%rbx), %xmm0
	addss	64(%rsp), %xmm0
	movss	%xmm6, 60(%rsp)
	movss	%xmm0, 56(%rsp)
	movq	6008(%r8), %rax
	movb	$1, 138(%rax)
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	.LC113(%rip), %xmm2
	mulss	5944(%r8), %xmm2
	movl	%eax, %r9d
	movq	%r11, %rdx
	movq	6008(%r8), %rax
	movq	656(%rax), %rcx
	movl	$8, 32(%rsp)
	call	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
	jmp	.L3585
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11BulletTextVEPKcPc
	.def	_ZN5ImGui11BulletTextVEPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11BulletTextVEPKcPc
_ZN5ImGui11BulletTextVEPKcPc:
.LFB916:
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
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rbp
	cmpb	$0, 140(%rbp)
	je	.L3616
.L3587:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L3616:
	leaq	11960(%rbx), %rdi
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	$3073, %edx
	movq	%rdi, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L3604
	cmpl	$3072, %eax
	jg	.L3604
.L3589:
	cltq
	movss	.LC1(%rip), %xmm3
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	leaq	(%rdi,%rax), %rsi
	movb	$0, (%rsi)
	movq	%rsi, %rdx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	228(%rbp), %xmm7
	pxor	%xmm2, %xmm2
	movd	%eax, %xmm4
	ucomiss	%xmm7, %xmm2
	jb	.L3591
	pxor	%xmm7, %xmm7
.L3591:
	movss	5160(%rbx), %xmm6
	movss	5944(%rbx), %xmm1
	addss	%xmm6, %xmm6
	movss	224(%rbp), %xmm0
	addss	%xmm1, %xmm6
	minss	%xmm6, %xmm0
	ucomiss	%xmm1, %xmm0
	movaps	%xmm0, %xmm6
	jb	.L3617
	shrq	$32, %rax
	movd	%eax, %xmm0
	ucomiss	%xmm0, %xmm6
	jnb	.L3618
.L3597:
	ucomiss	%xmm2, %xmm4
	jbe	.L3599
	movss	5156(%rbx), %xmm3
	addss	%xmm3, %xmm3
	movaps	%xmm3, %xmm2
	addss	%xmm4, %xmm2
.L3599:
	addss	%xmm2, %xmm1
	movss	196(%rbp), %xmm3
	leaq	40(%rsp), %rcx
	movss	192(%rbp), %xmm4
	addss	%xmm3, %xmm0
	movq	192(%rbp), %rax
	addss	%xmm4, %xmm1
	movss	%xmm0, 60(%rsp)
	subss	%xmm3, %xmm0
	movss	%xmm1, 56(%rsp)
	subss	%xmm4, %xmm1
	movq	%rax, 48(%rsp)
	movss	%xmm0, 44(%rsp)
	movss	%xmm1, 40(%rsp)
	pxor	%xmm1, %xmm1
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	48(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	testb	%al, %al
	je	.L3587
	movss	.LC17(%rip), %xmm0
	mulss	%xmm0, %xmm6
	addss	52(%rsp), %xmm6
	mulss	5944(%rbx), %xmm0
	addss	5156(%rbx), %xmm0
	addss	48(%rsp), %xmm0
	movd	%xmm6, %ecx
	salq	$32, %rcx
	movd	%xmm0, %eax
	orq	%rax, %rcx
	call	_ZN5ImGui12RenderBulletE6ImVec2
	xorl	%r9d, %r9d
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movss	5156(%rbx), %xmm0
	addss	52(%rsp), %xmm7
	addss	%xmm0, %xmm0
	addss	5944(%rbx), %xmm0
	addss	48(%rsp), %xmm0
	movq	%xmm7, %rcx
	salq	$32, %rcx
	movd	%xmm0, %eax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L3587
	.p2align 4,,10
.L3618:
	movaps	%xmm6, %xmm0
	jmp	.L3597
	.p2align 4,,10
.L3617:
	shrq	$32, %rax
	movaps	%xmm1, %xmm6
	movd	%eax, %xmm0
	ucomiss	%xmm0, %xmm6
	jb	.L3597
	jmp	.L3618
	.p2align 4,,10
.L3604:
	movl	$3072, %eax
	jmp	.L3589
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10BulletTextEPKcz
	.def	_ZN5ImGui10BulletTextEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10BulletTextEPKcz
_ZN5ImGui10BulletTextEPKcz:
.LFB917:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rdx, 72(%rsp)
	leaq	72(%rsp), %rdx
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rdx, 40(%rsp)
	call	_ZN5ImGui11BulletTextVEPKcPc
	nop
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui20ParseFormatPrecisionEPKci
	.def	_ZN5ImGui20ParseFormatPrecisionEPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui20ParseFormatPrecisionEPKci
_ZN5ImGui20ParseFormatPrecisionEPKci:
.LFB923:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%edx, %ebx
.L3624:
	movl	$37, %edx
	call	strchr
	testq	%rax, %rax
	je	.L3627
	movzbl	1(%rax), %edx
	cmpb	$37, %dl
	je	.L3629
	leal	-48(%rdx), %ecx
	addq	$1, %rax
	cmpb	$9, %cl
	ja	.L3625
	.p2align 4,,10
.L3626:
	addq	$1, %rax
	movzbl	(%rax), %edx
	leal	-48(%rdx), %ecx
	cmpb	$9, %cl
	jbe	.L3626
.L3625:
	cmpb	$46, %dl
	je	.L3630
.L3627:
	movl	%ebx, %eax
.L3620:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3630:
	leaq	1(%rax), %rcx
	call	atoi
	cmpl	$10, %eax
	ja	.L3627
	jmp	.L3620
	.p2align 4,,10
.L3629:
	leaq	2(%rax), %rcx
	jmp	.L3624
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11RoundScalarEfi
	.def	_ZN5ImGui11RoundScalarEfi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11RoundScalarEfi
_ZN5ImGui11RoundScalarEfi:
.LFB924:
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	cmpl	$9, %edx
	movaps	%xmm0, %xmm8
	ja	.L3632
	leaq	_ZZN5ImGui11RoundScalarEfiE9min_steps(%rip), %rax
	movslq	%edx, %rdx
	movss	(%rax,%rdx,4), %xmm7
.L3633:
	movaps	%xmm7, %xmm1
	movaps	%xmm8, %xmm6
	andps	.LC87(%rip), %xmm6
	movaps	%xmm6, %xmm0
	call	fmodf
	movss	.LC17(%rip), %xmm1
	mulss	%xmm7, %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L3641
	subss	%xmm0, %xmm6
	movaps	%xmm6, %xmm0
.L3636:
	pxor	%xmm1, %xmm1
	ucomiss	%xmm8, %xmm1
	jbe	.L3631
	xorps	.LC175(%rip), %xmm0
.L3631:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$88, %rsp
	ret
	.p2align 4,,10
.L3641:
	subss	%xmm0, %xmm7
	movaps	%xmm7, %xmm0
	addss	%xmm6, %xmm0
	jmp	.L3636
	.p2align 4,,10
.L3632:
	negl	%edx
	pxor	%xmm1, %xmm1
	movsd	.LC174(%rip), %xmm0
	pxor	%xmm7, %xmm7
	cvtsi2ss	%edx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	call	pow
	cvtsd2ss	%xmm0, %xmm7
	jmp	.L3633
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii
	.def	_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii
_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii:
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
	movq	GImGui(%rip), %rsi
	movl	$1, %r12d
	movss	376(%rsp), %xmm12
	movss	368(%rsp), %xmm14
	movq	6008(%rsi), %rax
	movq	%rcx, %rbx
	movl	$7, %ecx
	movaps	%xmm3, %xmm8
	movl	%edx, %edi
	movq	%r8, %r14
	movb	$1, 138(%rax)
	movq	6008(%rsi), %r13
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	8(%rbx), %rdx
	movl	$1, %r9d
	movq	(%rbx), %rcx
	movl	%eax, %r8d
	movss	5164(%rsi), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movss	.LC176(%rip), %xmm3
	ucomiss	%xmm12, %xmm3
	ja	.L3643
	ucomiss	.LC177(%rip), %xmm12
	seta	%r12b
.L3643:
	movl	392(%rsp), %r15d
	andl	$1, %r15d
	jne	.L3644
	movss	8(%rbx), %xmm7
	subss	(%rbx), %xmm7
	subss	.LC29(%rip), %xmm7
.L3645:
	movl	384(%rsp), %eax
	movss	5208(%rsi), %xmm2
	testl	%eax, %eax
	jle	.L3646
.L3652:
	movss	.LC17(%rip), %xmm11
	minss	%xmm7, %xmm2
	testl	%r15d, %r15d
	movss	.LC170(%rip), %xmm9
	mulss	%xmm2, %xmm11
	movaps	%xmm9, %xmm10
	jne	.L3655
	addss	(%rbx), %xmm10
	movss	8(%rbx), %xmm6
	addss	%xmm11, %xmm10
	subss	%xmm9, %xmm6
.L3656:
	movaps	%xmm8, %xmm0
	pxor	%xmm15, %xmm15
	subss	%xmm11, %xmm6
	mulss	%xmm14, %xmm0
	ucomiss	%xmm0, %xmm15
	ja	.L3741
	movss	.LC18(%rip), %xmm13
	ucomiss	%xmm8, %xmm15
	ja	.L3659
	pxor	%xmm13, %xmm13
.L3659:
	cmpl	%edi, 6068(%rsi)
	je	.L3661
	movss	(%r14), %xmm2
	xorl	%ebp, %ebp
.L3662:
	ucomiss	%xmm14, %xmm8
	jp	.L3724
	pxor	%xmm0, %xmm0
	je	.L3680
.L3724:
	ucomiss	%xmm12, %xmm3
	movl	$1, %eax
	jbe	.L3742
	ucomiss	%xmm8, %xmm14
	jbe	.L3737
.L3746:
	ucomiss	%xmm2, %xmm8
	ja	.L3709
	movaps	%xmm14, %xmm4
	minss	%xmm2, %xmm4
	movaps	%xmm4, %xmm2
.L3685:
	testb	%al, %al
	je	.L3688
.L3745:
	ucomiss	%xmm2, %xmm15
	ja	.L3743
	ucomiss	%xmm8, %xmm15
	jnb	.L3693
	subss	%xmm8, %xmm2
	subss	%xmm8, %xmm14
.L3693:
	movss	.LC18(%rip), %xmm7
	divss	%xmm14, %xmm2
	pxor	%xmm0, %xmm0
	movaps	%xmm7, %xmm1
	divss	%xmm12, %xmm1
	cvtss2sd	%xmm2, %xmm0
	cvtss2sd	%xmm1, %xmm1
	call	pow
	subss	%xmm13, %xmm7
	cvtsd2ss	%xmm0, %xmm0
	mulss	%xmm0, %xmm7
	addss	%xmm13, %xmm7
	movaps	%xmm7, %xmm0
	.p2align 4,,10
.L3680:
	testl	%r15d, %r15d
	subss	%xmm10, %xmm6
	je	.L3694
	movss	.LC18(%rip), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	8(%rbx), %xmm1
	mulss	%xmm6, %xmm0
	subss	%xmm9, %xmm1
	addss	(%rbx), %xmm9
	addss	%xmm10, %xmm0
	movss	%xmm1, 88(%rsp)
	movss	%xmm9, 80(%rsp)
	movaps	%xmm0, %xmm2
	addss	%xmm11, %xmm0
	subss	%xmm11, %xmm2
	movss	%xmm0, 92(%rsp)
	movss	%xmm2, 84(%rsp)
.L3696:
	xorl	%ecx, %ecx
	cmpl	%edi, 6068(%rsi)
	movq	656(%r13), %r10
	movss	5212(%rsi), %xmm5
	sete	%cl
	addl	$20, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	leaq	80(%rsp), %rdx
	movl	$-1, 40(%rsp)
	movss	%xmm5, 32(%rsp)
	leaq	8(%rdx), %r8
	movl	%eax, %r9d
	movq	%r10, %rcx
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	nop
	movaps	96(%rsp), %xmm6
	movl	%ebp, %eax
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
.L3655:
	addss	4(%rbx), %xmm10
	movss	12(%rbx), %xmm6
	addss	%xmm11, %xmm10
	subss	%xmm9, %xmm6
	jmp	.L3656
	.p2align 4,,10
.L3644:
	movss	12(%rbx), %xmm7
	subss	4(%rbx), %xmm7
	subss	.LC29(%rip), %xmm7
	jmp	.L3645
	.p2align 4,,10
.L3694:
	mulss	%xmm6, %xmm0
	movss	12(%rbx), %xmm1
	subss	%xmm9, %xmm1
	addss	4(%rbx), %xmm9
	addss	%xmm10, %xmm0
	movss	%xmm1, 92(%rsp)
	movss	%xmm9, 84(%rsp)
	movaps	%xmm0, %xmm2
	addss	%xmm11, %xmm0
	subss	%xmm11, %xmm2
	movss	%xmm0, 88(%rsp)
	movss	%xmm2, 80(%rsp)
	jmp	.L3696
	.p2align 4,,10
.L3737:
	ucomiss	%xmm2, %xmm14
	jbe	.L3744
	testb	%al, %al
	movaps	%xmm14, %xmm2
	jne	.L3745
.L3688:
	subss	%xmm8, %xmm2
	subss	%xmm8, %xmm14
	movaps	%xmm2, %xmm0
	divss	%xmm14, %xmm0
	jmp	.L3680
	.p2align 4,,10
.L3742:
	ucomiss	.LC177(%rip), %xmm12
	seta	%al
	ucomiss	%xmm8, %xmm14
	jbe	.L3737
	jmp	.L3746
	.p2align 4,,10
.L3646:
	ucomiss	%xmm8, %xmm14
	ja	.L3747
	movaps	%xmm8, %xmm0
	subss	%xmm14, %xmm0
	addss	.LC18(%rip), %xmm0
.L3651:
	movaps	%xmm7, %xmm4
	divss	%xmm0, %xmm4
	ucomiss	%xmm2, %xmm4
	jb	.L3652
	movaps	%xmm4, %xmm2
	jmp	.L3652
	.p2align 4,,10
.L3661:
	movzbl	272(%rsi), %ebp
	testb	%bpl, %bpl
	je	.L3663
	testl	%r15d, %r15d
	subss	%xmm2, %xmm7
	jne	.L3664
	ucomiss	%xmm15, %xmm7
	movss	264(%rsi), %xmm0
	ja	.L3665
.L3713:
	pxor	%xmm2, %xmm2
.L3666:
	testb	%r12b, %r12b
	je	.L3669
	ucomiss	%xmm2, %xmm13
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm12, %xmm1
	ja	.L3748
	movss	.LC18(%rip), %xmm4
	movaps	%xmm13, %xmm0
	subss	%xmm4, %xmm0
	andps	.LC87(%rip), %xmm0
	ucomiss	.LC178(%rip), %xmm0
	jbe	.L3675
	subss	%xmm13, %xmm2
	subss	%xmm13, %xmm4
	divss	%xmm4, %xmm2
.L3675:
	movss	%xmm3, 60(%rsp)
	pxor	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	call	pow
	ucomiss	%xmm15, %xmm8
	movaps	%xmm14, %xmm2
	pxor	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm0
	movss	60(%rsp), %xmm3
	jb	.L3677
	subss	%xmm8, %xmm2
	movaps	%xmm8, %xmm1
.L3677:
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
.L3674:
	movl	384(%rsp), %edx
	movss	%xmm3, 60(%rsp)
	call	_ZN5ImGui11RoundScalarEfi
	movss	(%r14), %xmm2
	movss	60(%rsp), %xmm3
	ucomiss	%xmm0, %xmm2
	jp	.L3723
	je	.L3736
.L3723:
	movss	%xmm0, (%r14)
	movaps	%xmm0, %xmm2
	jmp	.L3662
	.p2align 4,,10
.L3741:
	movss	.LC18(%rip), %xmm4
	movaps	%xmm15, %xmm0
	movss	.LC87(%rip), %xmm13
	movss	%xmm3, 76(%rsp)
	subss	%xmm8, %xmm0
	movss	%xmm2, 72(%rsp)
	divss	%xmm12, %xmm4
	andps	%xmm13, %xmm0
	cvtss2sd	%xmm0, %xmm0
	andps	%xmm14, %xmm13
	cvtss2sd	%xmm4, %xmm4
	movapd	%xmm4, %xmm1
	movsd	%xmm4, 64(%rsp)
	call	pow
	movsd	64(%rsp), %xmm4
	pxor	%xmm5, %xmm5
	cvtsd2ss	%xmm0, %xmm5
	pxor	%xmm0, %xmm0
	movss	%xmm5, 60(%rsp)
	cvtss2sd	%xmm13, %xmm0
	movapd	%xmm4, %xmm1
	call	pow
	movss	60(%rsp), %xmm5
	cvtsd2ss	%xmm0, %xmm0
	movss	72(%rsp), %xmm2
	addss	%xmm5, %xmm0
	movss	76(%rsp), %xmm3
	divss	%xmm0, %xmm5
	movaps	%xmm5, %xmm13
	jmp	.L3659
	.p2align 4,,10
.L3747:
	movaps	%xmm14, %xmm0
	subss	%xmm8, %xmm0
	addss	.LC18(%rip), %xmm0
	jmp	.L3651
	.p2align 4,,10
.L3663:
	movq	GImGui(%rip), %rax
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	movss	(%r14), %xmm2
	jmp	.L3662
	.p2align 4,,10
.L3744:
	movaps	%xmm8, %xmm4
	minss	%xmm2, %xmm4
	movaps	%xmm4, %xmm2
	jmp	.L3685
	.p2align 4,,10
.L3709:
	movaps	%xmm8, %xmm2
	jmp	.L3685
	.p2align 4,,10
.L3743:
	minss	%xmm14, %xmm15
	movss	.LC18(%rip), %xmm7
	subss	%xmm8, %xmm2
	movaps	%xmm7, %xmm1
	movaps	%xmm7, %xmm0
	divss	%xmm12, %xmm1
	movaps	%xmm15, %xmm14
	subss	%xmm8, %xmm14
	divss	%xmm14, %xmm2
	cvtss2sd	%xmm1, %xmm1
	subss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	pow
	cvtsd2ss	%xmm0, %xmm0
	subss	%xmm0, %xmm7
	mulss	%xmm13, %xmm7
	movaps	%xmm7, %xmm0
	jmp	.L3680
	.p2align 4,,10
.L3736:
	xorl	%ebp, %ebp
	jmp	.L3662
	.p2align 4,,10
.L3669:
	movaps	%xmm14, %xmm0
	subss	%xmm8, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm8, %xmm0
	jmp	.L3674
	.p2align 4,,10
.L3664:
	ucomiss	%xmm15, %xmm7
	movss	268(%rsi), %xmm1
	jbe	.L3712
	subss	%xmm10, %xmm1
	divss	%xmm7, %xmm1
	ucomiss	%xmm1, %xmm15
	ja	.L3712
	movss	.LC18(%rip), %xmm0
	movaps	%xmm0, %xmm5
	movaps	%xmm0, %xmm2
	minss	%xmm1, %xmm5
	subss	%xmm5, %xmm2
	jmp	.L3666
	.p2align 4,,10
.L3748:
	divss	%xmm13, %xmm2
	movss	.LC18(%rip), %xmm4
	movss	%xmm3, 60(%rsp)
	pxor	%xmm0, %xmm0
	subss	%xmm2, %xmm4
	cvtss2sd	%xmm4, %xmm0
	call	pow
	ucomiss	%xmm14, %xmm15
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	cvtsd2ss	%xmm0, %xmm1
	movss	60(%rsp), %xmm3
	movaps	%xmm8, %xmm0
	jbe	.L3672
	subss	%xmm14, %xmm0
	movaps	%xmm14, %xmm2
.L3672:
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	jmp	.L3674
	.p2align 4,,10
.L3665:
	subss	%xmm10, %xmm0
	movaps	%xmm0, %xmm2
	divss	%xmm7, %xmm2
	ucomiss	%xmm2, %xmm15
	ja	.L3713
	movss	.LC18(%rip), %xmm0
	minss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	jmp	.L3666
	.p2align 4,,10
.L3712:
	movss	.LC18(%rip), %xmm2
	jmp	.L3666
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12DragBehaviorERK6ImRectjPffffif
	.def	_ZN5ImGui12DragBehaviorERK6ImRectjPffffif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12DragBehaviorERK6ImRectjPffffif
_ZN5ImGui12DragBehaviorERK6ImRectjPffffif:
.LFB940:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$176, %rsp
	.seh_stackalloc	176
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
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	cmpl	%edx, 6068(%rbx)
	movq	%rcx, %r10
	movl	%edx, %esi
	movq	%r8, %rdi
	movaps	%xmm3, %xmm8
	movl	$9, %ecx
	je	.L3750
	xorl	%ecx, %ecx
	cmpl	%edx, 6056(%rbx)
	sete	%cl
	addl	$7, %ecx
.L3750:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	5164(%rbx), %xmm0
	movl	$1, %r9d
	movq	8(%r10), %rdx
	movl	%eax, %r8d
	movq	(%r10), %rcx
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	xorl	%eax, %eax
	cmpl	%esi, 6068(%rbx)
	je	.L3813
.L3749:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
	movaps	128(%rsp), %xmm10
	movaps	144(%rsp), %xmm11
	movaps	160(%rsp), %xmm12
	addq	$176, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3813:
	movzbl	272(%rbx), %eax
	movq	GImGui(%rip), %rdx
	testb	%al, %al
	je	.L3752
	cmpb	$0, 6077(%rbx)
	jne	.L3753
	cmpb	$0, 272(%rdx)
	pxor	%xmm9, %xmm9
	movss	10356(%rbx), %xmm0
	movss	10352(%rbx), %xmm7
	jne	.L3754
.L3809:
	pxor	%xmm12, %xmm12
.L3755:
	movaps	%xmm12, %xmm4
	movss	.LC87(%rip), %xmm6
	subss	%xmm0, %xmm4
	movaps	%xmm4, %xmm1
	movaps	%xmm4, %xmm0
	andps	%xmm6, %xmm1
	ucomiss	%xmm9, %xmm1
	jbe	.L3756
	ucomiss	%xmm9, %xmm8
	jp	.L3759
	jne	.L3759
	movss	248(%rsp), %xmm1
	subss	240(%rsp), %xmm1
	ucomiss	%xmm9, %xmm1
	jp	.L3795
	je	.L3759
.L3795:
	movss	.LC90(%rip), %xmm2
	ucomiss	%xmm1, %xmm2
	jbe	.L3759
	mulss	10364(%rbx), %xmm1
	movaps	%xmm1, %xmm8
	.p2align 4,,10
.L3759:
	cmpb	$0, 286(%rbx)
	je	.L3763
	movss	10372(%rbx), %xmm1
	ucomiss	%xmm9, %xmm1
	jb	.L3763
	mulss	%xmm1, %xmm8
.L3763:
	cmpb	$0, 287(%rbx)
	je	.L3765
	movss	10368(%rbx), %xmm1
	ucomiss	%xmm9, %xmm1
	jb	.L3765
	mulss	%xmm1, %xmm8
.L3765:
	movss	.LC18(%rip), %xmm10
	mulss	%xmm0, %xmm8
	movss	264(%rsp), %xmm0
	subss	%xmm10, %xmm0
	andps	%xmm6, %xmm0
	ucomiss	.LC179(%rip), %xmm0
	jbe	.L3810
	ucomiss	%xmm9, %xmm7
	movaps	%xmm10, %xmm11
	jb	.L3814
.L3769:
	movb	%al, 63(%rsp)
	movaps	%xmm10, %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	%xmm7, %xmm0
	divss	264(%rsp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	call	pow
	mulss	%xmm11, %xmm8
	cvtsd2ss	%xmm0, %xmm0
	movzbl	63(%rsp), %eax
	addss	%xmm8, %xmm0
	ucomiss	%xmm9, %xmm0
	jb	.L3815
.L3770:
	movb	%al, 63(%rsp)
	cvtss2sd	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	pxor	%xmm7, %xmm7
	cvtss2sd	264(%rsp), %xmm1
	call	pow
	movzbl	63(%rsp), %eax
	cvtsd2ss	%xmm0, %xmm7
	mulss	%xmm11, %xmm7
	mulss	%xmm10, %xmm7
.L3771:
	movss	248(%rsp), %xmm5
	movss	%xmm12, 10356(%rbx)
	ucomiss	240(%rsp), %xmm5
	jbe	.L3772
	movss	240(%rsp), %xmm2
	ucomiss	%xmm7, %xmm2
	jbe	.L3816
	movaps	%xmm2, %xmm7
.L3772:
	movss	%xmm7, 10352(%rbx)
.L3756:
	cmpl	$9, 256(%rsp)
	ja	.L3775
	movslq	256(%rsp), %rcx
	leaq	_ZZN5ImGui11RoundScalarEfiE9min_steps(%rip), %rdx
	movss	(%rdx,%rcx,4), %xmm8
.L3776:
	movaps	%xmm8, %xmm1
	andps	%xmm7, %xmm6
	movaps	%xmm6, %xmm0
	movb	%al, 63(%rsp)
	call	fmodf
	movss	.LC17(%rip), %xmm1
	movzbl	63(%rsp), %eax
	mulss	%xmm8, %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L3811
	subss	%xmm0, %xmm6
.L3779:
	ucomiss	%xmm7, %xmm9
	jbe	.L3780
	xorps	.LC175(%rip), %xmm6
.L3780:
	ucomiss	(%rdi), %xmm6
	jp	.L3804
	je	.L3812
.L3804:
	movss	%xmm6, (%rdi)
	jmp	.L3749
	.p2align 4,,10
.L3752:
	movl	$0, 6068(%rdx)
	movb	$0, 6078(%rdx)
	movb	$1, 6077(%rdx)
	movq	$0, 6088(%rdx)
	jmp	.L3749
	.p2align 4,,10
.L3753:
	movss	(%rdi), %xmm7
	pxor	%xmm9, %xmm9
	movq	$0, 10356(%rbx)
	movss	%xmm7, 10352(%rbx)
	cmpb	$0, 272(%rdx)
	je	.L3817
	pxor	%xmm0, %xmm0
.L3754:
	movss	1000(%rdx), %xmm1
	ucomiss	.LC18(%rip), %xmm1
	jb	.L3809
	movss	264(%rdx), %xmm12
	subss	884(%rdx), %xmm12
	jmp	.L3755
	.p2align 4,,10
.L3811:
	subss	%xmm0, %xmm8
	addss	%xmm8, %xmm6
	jmp	.L3779
	.p2align 4,,10
.L3812:
	xorl	%eax, %eax
	jmp	.L3749
	.p2align 4,,10
.L3775:
	movl	256(%rsp), %edx
	pxor	%xmm1, %xmm1
	movb	%al, 63(%rsp)
	pxor	%xmm8, %xmm8
	movsd	.LC174(%rip), %xmm0
	negl	%edx
	cvtsi2ss	%edx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	call	pow
	movzbl	63(%rsp), %eax
	cvtsd2ss	%xmm0, %xmm8
	jmp	.L3776
	.p2align 4,,10
.L3810:
	addss	%xmm8, %xmm7
	jmp	.L3771
	.p2align 4,,10
.L3817:
	movss	.LC87(%rip), %xmm6
	jmp	.L3756
	.p2align 4,,10
.L3816:
	movaps	%xmm5, %xmm2
	minss	%xmm7, %xmm2
	movaps	%xmm2, %xmm7
	jmp	.L3772
	.p2align 4,,10
.L3815:
	movss	.LC1(%rip), %xmm10
	xorps	.LC175(%rip), %xmm0
	jmp	.L3770
	.p2align 4,,10
.L3814:
	movss	.LC1(%rip), %xmm11
	xorps	.LC175(%rip), %xmm7
	jmp	.L3769
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN18ImGuiTextEditState12OnKeyPressedEi
	.def	_ZN18ImGuiTextEditState12OnKeyPressedEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18ImGuiTextEditState12OnKeyPressedEi
_ZN18ImGuiTextEditState12OnKeyPressedEi:
.LFB1006:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%edx, %r8d
	movq	%rcx, %rbx
	leaq	72(%rcx), %rdx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 3296(%rbx)
	movl	$0xbe99999a, 3292(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC181:
	.ascii "pos + bytes_count <= BufTextLen\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN25ImGuiTextEditCallbackData11DeleteCharsEii
	.def	_ZN25ImGuiTextEditCallbackData11DeleteCharsEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN25ImGuiTextEditCallbackData11DeleteCharsEii
_ZN25ImGuiTextEditCallbackData11DeleteCharsEii:
.LFB1007:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leal	(%rdx,%r8), %eax
	cmpl	32(%rcx), %eax
	movq	%rcx, %rbx
	movl	%edx, %edi
	movl	%r8d, %esi
	jg	.L3829
.L3820:
	movq	24(%rbx), %rdx
	movslq	%edi, %r8
	movslq	%esi, %rcx
	addq	%r8, %rcx
	leaq	(%rdx,%r8), %rax
	addq	%rcx, %rdx
	leaq	1(%rdx), %rcx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L3821
	.p2align 4,,10
.L3822:
	addq	$1, %rax
	addq	$1, %rcx
	movb	%dl, -1(%rax)
	movzbl	-1(%rcx), %edx
	testb	%dl, %dl
	jne	.L3822
.L3821:
	movb	$0, (%rax)
	movl	44(%rbx), %eax
	leal	(%rax,%rsi), %edx
	cmpl	%edi, %edx
	jge	.L3830
	cmpl	%edi, %eax
	jl	.L3824
	movl	%edi, 44(%rbx)
	movl	%edi, %eax
.L3824:
	subl	%esi, 32(%rbx)
	movl	%eax, 52(%rbx)
	movl	%eax, 48(%rbx)
	movb	$1, 40(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L3830:
	subl	%esi, %eax
	movl	%eax, 44(%rbx)
	jmp	.L3824
	.p2align 4,,10
.L3829:
	leaq	.LC5(%rip), %rdx
	movl	$7581, %r8d
	leaq	.LC181(%rip), %rcx
	call	_assert
	jmp	.L3820
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_
	.def	_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_
_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_:
.LFB1008:
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
	testq	%r9, %r9
	movq	%rcx, %rbx
	movl	%edx, %edi
	movq	%r8, %rbp
	je	.L3832
	movl	%r9d, %esi
	subl	%r8d, %esi
.L3833:
	movl	32(%rbx), %r8d
	leal	1(%r8,%rsi), %eax
	cmpl	36(%rbx), %eax
	jge	.L3831
	movq	24(%rbx), %rax
	movslq	%edi, %r12
	cmpl	%edi, %r8d
	movslq	%esi, %r13
	leaq	(%rax,%r12), %rcx
	jne	.L3837
.L3835:
	movq	%rbp, %rdx
	movq	%r13, %r8
	call	memcpy
	movl	32(%rbx), %eax
	movq	24(%rbx), %rdx
	addl	%esi, %eax
	cltq
	movb	$0, (%rdx,%rax)
	movl	44(%rbx), %eax
	cmpl	%edi, %eax
	jge	.L3838
.L3836:
	addl	%esi, 32(%rbx)
	movl	%eax, 52(%rbx)
	movl	%eax, 48(%rbx)
	movb	$1, 40(%rbx)
.L3831:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L3838:
	addl	%esi, %eax
	movl	%eax, 44(%rbx)
	jmp	.L3836
	.p2align 4,,10
.L3837:
	leaq	0(%r13,%r12), %rdx
	subl	%edi, %r8d
	addq	%rdx, %rax
	movslq	%r8d, %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memmove
	movq	24(%rbx), %rcx
	addq	%r12, %rcx
	jmp	.L3835
	.p2align 4,,10
.L3832:
	movq	%r8, %rcx
	call	strlen
	movl	%eax, %esi
	jmp	.L3833
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13ColorEditModeEi
	.def	_ZN5ImGui13ColorEditModeEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13ColorEditModeEi
_ZN5ImGui13ColorEditModeEi:
.LFB1047:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	movl	%ecx, 400(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7SpacingEv
	.def	_ZN5ImGui7SpacingEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7SpacingEv
_ZN5ImGui7SpacingEv:
.LFB1049:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	jne	.L3840
	leaq	40(%rsp), %rcx
	pxor	%xmm1, %xmm1
	movq	$0, 40(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	nop
.L3840:
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5DummyERK6ImVec2
	.def	_ZN5ImGui5DummyERK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5DummyERK6ImVec2
_ZN5ImGui5DummyERK6ImVec2:
.LFB1050:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	je	.L3845
	addq	$72, %rsp
	ret
	.p2align 4,,10
.L3845:
	movss	196(%rax), %xmm2
	movss	192(%rax), %xmm3
	movss	4(%rcx), %xmm0
	movss	(%rcx), %xmm1
	leaq	40(%rsp), %rcx
	addss	%xmm2, %xmm0
	movq	192(%rax), %rax
	addss	%xmm3, %xmm1
	movss	%xmm0, 60(%rsp)
	subss	%xmm2, %xmm0
	movss	%xmm1, 56(%rsp)
	subss	%xmm3, %xmm1
	movq	%rax, 48(%rsp)
	movss	%xmm0, 44(%rsp)
	movss	%xmm1, 40(%rsp)
	pxor	%xmm1, %xmm1
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	48(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13IsRectVisibleERK6ImVec2
	.def	_ZN5ImGui13IsRectVisibleERK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13IsRectVisibleERK6ImVec2
_ZN5ImGui13IsRectVisibleERK6ImVec2:
.LFB1051:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	196(%rax), %xmm0
	movss	524(%rax), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.L3859
	addss	4(%rcx), %xmm0
	ucomiss	516(%rax), %xmm0
	jbe	.L3859
	movss	192(%rax), %xmm0
	movss	520(%rax), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.L3859
	addss	(%rcx), %xmm0
	ucomiss	512(%rax), %xmm0
	seta	%al
	ret
	.p2align 4,,10
.L3859:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13IsRectVisibleERK6ImVec2S2_
	.def	_ZN5ImGui13IsRectVisibleERK6ImVec2S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13IsRectVisibleERK6ImVec2S2_
_ZN5ImGui13IsRectVisibleERK6ImVec2S2_:
.LFB1052:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	524(%rax), %xmm0
	ucomiss	4(%rcx), %xmm0
	jbe	.L3873
	movss	4(%rdx), %xmm0
	ucomiss	516(%rax), %xmm0
	jbe	.L3873
	movss	520(%rax), %xmm0
	ucomiss	(%rcx), %xmm0
	jbe	.L3873
	movss	(%rdx), %xmm0
	ucomiss	512(%rax), %xmm0
	seta	%al
	ret
	.p2align 4,,10
.L3873:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10BeginGroupEv
	.def	_ZN5ImGui10BeginGroupEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10BeginGroupEv
_ZN5ImGui10BeginGroupEv:
.LFB1053:
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
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	movl	384(%rbx), %edi
	movl	388(%rbx), %edx
	leal	1(%rdi), %esi
	cmpl	%edx, %esi
	jle	.L3875
	testl	%edx, %edx
	movl	$8, %edi
	je	.L3876
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edx, %edi
	sarl	%edi
	addl	%edx, %edi
.L3876:
	cmpl	%edi, %esi
	jl	.L3886
	movl	%esi, %edi
.L3877:
	addl	$1, 844(%rax)
	movslq	%edi, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	salq	$3, %rcx
	call	*232(%rax)
	movq	392(%rbx), %rcx
	movq	%rax, %rbp
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3880
	movslq	384(%rbx), %rax
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$3, %r8
	call	memcpy
	movq	392(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3880
	subl	$1, 844(%rax)
.L3880:
	call	*240(%rax)
	movq	%rbp, 392(%rbx)
	movl	%edi, 388(%rbx)
.L3875:
	testl	%esi, %esi
	movl	%esi, 384(%rbx)
	jle	.L3887
.L3881:
	movq	392(%rbx), %rax
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,4), %rdx
	movss	428(%rbx), %xmm0
	leaq	-40(%rax,%rdx,8), %rax
	movq	192(%rbx), %rdx
	movq	%rdx, (%rax)
	movq	216(%rbx), %rdx
	movss	%xmm0, 16(%rax)
	movss	432(%rbx), %xmm0
	movss	%xmm0, 20(%rax)
	movss	224(%rbx), %xmm0
	movq	%rdx, 8(%rax)
	movq	GImGui(%rip), %rdx
	movss	%xmm0, 24(%rax)
	movss	228(%rbx), %xmm0
	movss	%xmm0, 28(%rax)
	movss	240(%rbx), %xmm0
	movss	%xmm0, 32(%rax)
	movzbl	6076(%rdx), %edx
	movss	192(%rbx), %xmm0
	movb	$1, 37(%rax)
	subss	28(%rbx), %xmm0
	subss	436(%rbx), %xmm0
	movb	%dl, 36(%rax)
	movq	192(%rbx), %rax
	movl	$0x00000000, 224(%rbx)
	movss	%xmm0, 432(%rbx)
	movss	%xmm0, 428(%rbx)
	movss	196(%rbx), %xmm0
	subss	.LC182(%rip), %xmm0
	movq	%rax, 216(%rbx)
	movss	%xmm0, 240(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L3886:
	cmpl	%edi, %edx
	jl	.L3877
	jmp	.L3875
	.p2align 4,,10
.L3887:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	384(%rbx), %esi
	jmp	.L3881
	.seh_endproc
	.section .rdata,"dr"
.LC183:
	.ascii "!window->DC.MenuBarAppending\0"
.LC184:
	.ascii "##menubar\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12BeginMenuBarEv
	.def	_ZN5ImGui12BeginMenuBarEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12BeginMenuBarEv
_ZN5ImGui12BeginMenuBarEv:
.LFB1040:
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
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	movzbl	140(%rbx), %eax
	testb	%al, %al
	jne	.L3895
	testb	$4, 13(%rbx)
	je	.L3888
	cmpb	$0, 270(%rbx)
	jne	.L3903
.L3890:
	call	_ZN5ImGui10BeginGroupEv
	leaq	.LC184(%rip), %rcx
	pxor	%xmm6, %xmm6
	call	_ZN5ImGui6PushIDEPKc
	movl	12(%rbx), %eax
	movss	32(%rbx), %xmm2
	testb	$1, %al
	jne	.L3891
	movq	GImGui(%rip), %rdx
	movss	648(%rbx), %xmm0
	movss	5160(%rdx), %xmm1
	mulss	5948(%rdx), %xmm0
	addss	%xmm1, %xmm1
	movaps	%xmm0, %xmm6
	addss	%xmm1, %xmm6
.L3891:
	testb	$4, %ah
	addss	%xmm2, %xmm6
	pxor	%xmm0, %xmm0
	je	.L3892
	movq	GImGui(%rip), %rax
	movss	648(%rbx), %xmm0
	movss	5160(%rax), %xmm1
	mulss	5948(%rax), %xmm0
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
.L3892:
	movss	28(%rbx), %xmm7
	addss	%xmm6, %xmm0
	leaq	40(%rsp), %rsi
	xorl	%r8d, %r8d
	movss	44(%rbx), %xmm2
	leaq	32(%rsp), %rcx
	movq	%rsi, %rdx
	movss	.LC17(%rip), %xmm1
	addss	%xmm7, %xmm2
	addss	%xmm1, %xmm0
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	pxor	%xmm2, %xmm2
	cvtsi2ss	%eax, %xmm2
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	movss	%xmm2, 40(%rsp)
	pxor	%xmm2, %xmm2
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 44(%rsp)
	movss	132(%rbx), %xmm0
	addss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm7, %xmm1
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm2
	cvttss2si	%xmm1, %eax
	movss	%xmm2, 36(%rsp)
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
	movq	GImGui(%rip), %rax
	movss	%xmm6, 196(%rbx)
	addss	272(%rbx), %xmm7
	movb	$1, 270(%rbx)
	movl	$1, 304(%rbx)
	movss	%xmm7, 192(%rbx)
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rdx
	cmpb	$0, 140(%rdx)
	je	.L3893
.L3902:
	movl	$1, %eax
.L3888:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3895:
	xorl	%eax, %eax
	jmp	.L3888
	.p2align 4,,10
.L3893:
	movss	5160(%rax), %xmm1
	movq	%rsi, %rcx
	movaps	%xmm1, %xmm0
	addss	%xmm1, %xmm0
	addss	5944(%rax), %xmm0
	movl	$0x00000000, 40(%rsp)
	movss	%xmm0, 44(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	jne	.L3902
	pxor	%xmm0, %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	jmp	.L3902
	.p2align 4,,10
.L3903:
	leaq	.LC5(%rip), %rdx
	movl	$8826, %r8d
	leaq	.LC183(%rip), %rcx
	call	_assert
	jmp	.L3890
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC185:
	.ascii "!window->DC.GroupStack.empty()\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8EndGroupEv
	.def	_ZN5ImGui8EndGroupEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8EndGroupEv
_ZN5ImGui8EndGroupEv:
.LFB1054:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rax
	movb	$1, 138(%rax)
	movq	6008(%rsi), %rbx
	movl	384(%rbx), %eax
	testl	%eax, %eax
	je	.L3930
	testl	%eax, %eax
	jle	.L3931
.L3906:
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	392(%rbx), %rdx
	leaq	-40(%rdx,%rcx,8), %r11
	movq	(%r11), %rdx
	movq	%rdx, 48(%rsp)
	movq	216(%rbx), %rdx
	movss	52(%rsp), %xmm4
	movq	%rdx, 56(%rsp)
	movss	60(%rsp), %xmm0
	subss	5172(%rsi), %xmm0
	ucomiss	%xmm0, %xmm4
	jb	.L3907
	movaps	%xmm4, %xmm0
.L3907:
	movss	56(%rsp), %xmm2
	movss	48(%rsp), %xmm5
	ucomiss	%xmm2, %xmm5
	jb	.L3909
	movaps	%xmm5, %xmm2
.L3909:
	movq	(%r11), %rdx
	movss	%xmm0, 60(%rsp)
	movss	220(%rbx), %xmm1
	movss	%xmm2, 56(%rsp)
	movq	%rdx, 192(%rbx)
	movss	12(%r11), %xmm3
	ucomiss	%xmm1, %xmm3
	jb	.L3911
	movaps	%xmm3, %xmm1
.L3911:
	movss	216(%rbx), %xmm3
	movss	8(%r11), %xmm6
	ucomiss	%xmm3, %xmm6
	jb	.L3913
	movaps	%xmm6, %xmm3
.L3913:
	movss	%xmm3, 216(%rbx)
	movss	16(%r11), %xmm3
	movss	%xmm1, 220(%rbx)
	movss	24(%r11), %xmm1
	cmpb	$0, 37(%r11)
	movss	%xmm1, 224(%rbx)
	movss	28(%r11), %xmm1
	movss	%xmm3, 428(%rbx)
	movss	20(%r11), %xmm3
	movss	%xmm1, 228(%rbx)
	movss	%xmm3, 432(%rbx)
	movss	196(%rbx), %xmm3
	subss	.LC182(%rip), %xmm3
	movss	%xmm3, 240(%rbx)
	je	.L3915
	movss	236(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jb	.L3932
.L3916:
	subss	%xmm5, %xmm2
	movss	%xmm3, 228(%rbx)
	leaq	40(%rsp), %rcx
	subss	%xmm4, %xmm0
	movss	%xmm2, 40(%rsp)
	movss	%xmm0, 44(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	48(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	movl	384(%rbx), %eax
.L3915:
	cmpb	$0, 36(%r11)
	jne	.L3919
	cmpb	$0, 6076(%rsi)
	jne	.L3933
	.p2align 4,,10
.L3919:
	testl	%eax, %eax
	jle	.L3934
.L3921:
	subl	$1, %eax
	movl	%eax, 384(%rbx)
	movaps	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3933:
	movl	6068(%rsi), %edx
	testl	%edx, %edx
	je	.L3919
	movq	6088(%rsi), %rcx
	movq	664(%rbx), %r9
	cmpq	%r9, 664(%rcx)
	jne	.L3919
	movl	%edx, 248(%rbx)
	movl	6068(%rsi), %ecx
	cmpl	%ecx, 6056(%rsi)
	jne	.L3919
	testl	%eax, %eax
	movb	$1, 269(%rbx)
	movb	$1, 268(%rbx)
	jg	.L3921
	.p2align 4,,10
.L3934:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	384(%rbx), %eax
	jmp	.L3921
	.p2align 4,,10
.L3932:
	movaps	%xmm1, %xmm3
	jmp	.L3916
	.p2align 4,,10
.L3930:
	leaq	.LC5(%rip), %rdx
	movl	$9246, %r8d
	leaq	.LC185(%rip), %rcx
	call	_assert
	movl	384(%rbx), %eax
	testl	%eax, %eax
	jg	.L3906
.L3931:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	384(%rbx), %eax
	jmp	.L3906
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC186:
	.ascii "window->Flags & ImGuiWindowFlags_MenuBar\0"
.LC187:
	.ascii "window->DC.MenuBarAppending\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10EndMenuBarEv
	.def	_ZN5ImGui10EndMenuBarEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10EndMenuBarEv
_ZN5ImGui10EndMenuBarEv:
.LFB1041:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	jne	.L3935
	testb	$4, 13(%rbx)
	je	.L3940
	cmpb	$0, 270(%rbx)
	je	.L3941
.L3938:
	call	_ZN5ImGui11PopClipRectEv
	call	_ZN5ImGui5PopIDEv
	movslq	384(%rbx), %rax
	movss	192(%rbx), %xmm0
	subss	28(%rbx), %xmm0
	testl	%eax, %eax
	movss	%xmm0, 272(%rbx)
	jle	.L3942
.L3939:
	movq	392(%rbx), %rdx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdx,%rax,8), %rax
	movb	$0, -3(%rax)
	call	_ZN5ImGui8EndGroupEv
	movb	$0, 270(%rbx)
	movl	$0, 304(%rbx)
.L3935:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3941:
	leaq	.LC5(%rip), %rdx
	movl	$8845, %r8d
	leaq	.LC187(%rip), %rcx
	call	_assert
	jmp	.L3938
	.p2align 4,,10
.L3940:
	leaq	.LC5(%rip), %rdx
	movl	$8844, %r8d
	leaq	.LC186(%rip), %rcx
	call	_assert
	cmpb	$0, 270(%rbx)
	jne	.L3938
	jmp	.L3941
	.p2align 4,,10
.L3942:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	384(%rbx), %rax
	jmp	.L3939
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8SameLineEff
	.def	_ZN5ImGui8SameLineEff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8SameLineEff
_ZN5ImGui8SameLineEff:
.LFB1055:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L3943
	pxor	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jp	.L3952
	je	.L3955
.L3952:
	maxss	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	movss	28(%rax), %xmm2
	subss	96(%rax), %xmm2
	addss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	addss	432(%rax), %xmm0
	addss	436(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
.L3949:
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L3943:
	ret
	.p2align 4,,10
.L3955:
	ucomiss	%xmm1, %xmm2
	ja	.L3956
.L3950:
	addss	200(%rax), %xmm1
	movss	204(%rax), %xmm0
	movss	%xmm1, 192(%rax)
	movss	%xmm0, 196(%rax)
	jmp	.L3949
	.p2align 4,,10
.L3956:
	movss	5168(%rdx), %xmm1
	jmp	.L3950
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7NewLineEv
	.def	_ZN5ImGui7NewLineEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7NewLineEv
_ZN5ImGui7NewLineEv:
.LFB1056:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rdx
	cmpb	$0, 140(%rdx)
	jne	.L3957
	movss	224(%rdx), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L3962
	movq	$0, 40(%rsp)
	leaq	40(%rsp), %rcx
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	nop
.L3957:
	addq	$56, %rsp
	ret
	.p2align 4,,10
.L3962:
	movss	5944(%rax), %xmm0
	leaq	40(%rsp), %rcx
	movl	$0x00000000, 40(%rsp)
	movss	%xmm0, 44(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	nop
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14GetColumnIndexEv
	.def	_ZN5ImGui14GetColumnIndexEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14GetColumnIndexEv
_ZN5ImGui14GetColumnIndexEv:
.LFB1058:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movl	440(%rax), %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15GetColumnsCountEv
	.def	_ZN5ImGui15GetColumnsCountEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15GetColumnsCountEv
_ZN5ImGui15GetColumnsCountEv:
.LFB1059:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movl	444(%rax), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC188:
	.ascii "column_index < window->DC.ColumnsData.Size\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui15GetColumnOffsetEi
	.def	_ZN5ImGui15GetColumnOffsetEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15GetColumnOffsetEi
_ZN5ImGui15GetColumnOffsetEi:
.LFB1061:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rsi
	movslq	%ecx, %rbx
	testl	%ebx, %ebx
	jns	.L3966
	movslq	440(%rsi), %rbx
.L3966:
	movl	6068(%rax), %eax
	testl	%eax, %eax
	je	.L3967
	movl	472(%rsi), %edx
	addl	%ebx, %edx
	cmpl	%edx, %eax
	je	.L3972
.L3967:
	cmpl	%ebx, 480(%rsi)
	jle	.L3973
.L3968:
	movq	488(%rsi), %rax
	movss	448(%rsi), %xmm1
	movss	452(%rsi), %xmm0
	subss	%xmm1, %xmm0
	mulss	(%rax,%rbx,4), %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L3973:
	leaq	.LC5(%rip), %rdx
	movl	$9395, %r8d
	leaq	.LC188(%rip), %rcx
	call	_assert
	cmpl	480(%rsi), %ebx
	jl	.L3968
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L3968
	.p2align 4,,10
.L3972:
	movl	%ebx, %ecx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZL22GetDraggedColumnOffseti
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19GetContentRegionMaxEv
	.def	_ZN5ImGui19GetContentRegionMaxEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19GetContentRegionMaxEv
_ZN5ImGui19GetContentRegionMaxEv:
.LFB830:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	cmpl	$1, 444(%rbx)
	movss	80(%rbx), %xmm6
	je	.L3977
	movl	440(%rbx), %eax
	leal	1(%rax), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	subss	84(%rbx), %xmm0
.L3976:
	movd	%xmm6, %eax
	movd	%xmm0, %edx
	movaps	32(%rsp), %xmm6
	movq	%rax, %rcx
	movl	%edx, %eax
	salq	$32, %rcx
	orq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3977:
	movss	76(%rbx), %xmm0
	jmp	.L3976
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	.def	_ZN5ImGui12CalcItemSizeE6ImVec2ff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12CalcItemSizeE6ImVec2ff
_ZN5ImGui12CalcItemSizeE6ImVec2ff:
.LFB651:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	movaps	%xmm8, 80(%rsp)
	.seh_savexmm	%xmm8, 80
	.seh_endprologue
	pxor	%xmm8, %xmm8
	movq	GImGui(%rip), %rbx
	movd	%ecx, %xmm7
	shrq	$32, %rcx
	ucomiss	%xmm7, %xmm8
	movd	%ecx, %xmm6
	ja	.L3979
	ucomiss	%xmm6, %xmm8
	pxor	%xmm3, %xmm3
	pxor	%xmm0, %xmm0
	ja	.L3979
	ucomiss	%xmm7, %xmm8
	jnb	.L4000
.L3982:
	ucomiss	%xmm6, %xmm8
	jnb	.L4001
.L3986:
	movd	%xmm7, %edx
	movd	%xmm6, %eax
	movaps	64(%rsp), %xmm7
	salq	$32, %rax
	movl	%edx, %edx
	movaps	48(%rsp), %xmm6
	movaps	80(%rsp), %xmm8
	orq	%rdx, %rax
	addq	$96, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3979:
	movss	%xmm2, 44(%rsp)
	movss	%xmm1, 40(%rsp)
	call	_ZN5ImGui19GetContentRegionMaxEv
	movq	6008(%rbx), %rdx
	movq	%rax, %rcx
	movd	%eax, %xmm0
	movss	40(%rsp), %xmm1
	shrq	$32, %rcx
	ucomiss	%xmm7, %xmm8
	movss	44(%rsp), %xmm2
	movq	%rcx, %xmm3
	addss	28(%rdx), %xmm0
	addss	32(%rdx), %xmm3
	jb	.L3982
.L4000:
	ucomiss	%xmm8, %xmm7
	jp	.L3994
	je	.L3998
.L3994:
	movq	6008(%rbx), %rax
	subss	192(%rax), %xmm0
	ucomiss	.LC29(%rip), %xmm0
	jnb	.L3985
	movss	.LC29(%rip), %xmm0
.L3985:
	ucomiss	%xmm6, %xmm8
	addss	%xmm0, %xmm7
	jb	.L3986
	.p2align 4,,10
.L4001:
	ucomiss	%xmm8, %xmm6
	jp	.L3996
	je	.L3999
.L3996:
	movq	6008(%rbx), %rax
	subss	196(%rax), %xmm3
	ucomiss	.LC29(%rip), %xmm3
	jb	.L4002
	addss	%xmm3, %xmm6
	jmp	.L3986
	.p2align 4,,10
.L3998:
	movaps	%xmm1, %xmm7
	jmp	.L3982
	.p2align 4,,10
.L4002:
	movss	.LC29(%rip), %xmm3
	addss	%xmm3, %xmm6
	jmp	.L3986
	.p2align 4,,10
.L3999:
	movaps	%xmm2, %xmm6
	jmp	.L3986
	.seh_endproc
	.section .rdata,"dr"
.LC189:
	.ascii "text != __null\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui15TextUnformattedEPKcS1_
	.def	_ZN5ImGui15TextUnformattedEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15TextUnformattedEPKcS1_
_ZN5ImGui15TextUnformattedEPKcS1_:
.LFB872:
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
	subq	$224, %rsp
	.seh_stackalloc	224
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
	movaps	%xmm14, 192(%rsp)
	.seh_savexmm	%xmm14, 192
	movaps	%xmm15, 208(%rsp)
	.seh_savexmm	%xmm15, 208
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rsi
	cmpb	$0, 140(%rsi)
	jne	.L4003
	testq	%rcx, %rcx
	je	.L4065
.L4005:
	testq	%rdi, %rdi
	je	.L4066
.L4006:
	movq	%rdi, %rax
	movss	312(%rsi), %xmm0
	pxor	%xmm6, %xmm6
	subq	%rbx, %rax
	cmpq	$2000, %rax
	jle	.L4007
	ucomiss	%xmm6, %xmm0
	jb	.L4067
.L4008:
	ucomiss	%xmm0, %xmm6
	pxor	%xmm7, %xmm7
	jbe	.L4068
.L4034:
	xorl	%r8d, %r8d
	movq	%rdi, %rdx
	movaps	%xmm7, %xmm3
	movq	%rbx, %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	leaq	40(%rsp), %rcx
	movq	%rax, 40(%rsp)
	movss	196(%rsi), %xmm0
	addss	228(%rsi), %xmm0
	movss	192(%rsi), %xmm1
	movss	44(%rsp), %xmm2
	movss	40(%rsp), %xmm3
	movss	%xmm1, 48(%rsp)
	addss	%xmm0, %xmm2
	movss	%xmm0, 52(%rsp)
	addss	%xmm1, %xmm3
	pxor	%xmm1, %xmm1
	movss	%xmm2, 60(%rsp)
	movss	%xmm3, 56(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	48(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	testb	%al, %al
	jne	.L4069
.L4003:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
	movaps	128(%rsp), %xmm10
	movaps	144(%rsp), %xmm11
	movaps	160(%rsp), %xmm12
	movaps	176(%rsp), %xmm13
	movaps	192(%rsp), %xmm14
	movaps	208(%rsp), %xmm15
	addq	$224, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L4007:
	ucomiss	%xmm6, %xmm0
	pxor	%xmm7, %xmm7
	jb	.L4034
	jmp	.L4008
	.p2align 4,,10
.L4066:
	movq	%rbx, %rcx
	call	strlen
	leaq	(%rbx,%rax), %rdi
	jmp	.L4006
	.p2align 4,,10
.L4068:
	movq	GImGui(%rip), %rax
	ucomiss	%xmm6, %xmm0
	movq	6008(%rax), %rbp
	jp	.L4036
	je	.L4070
.L4036:
	ucomiss	%xmm6, %xmm0
	jbe	.L4038
	movss	28(%rbp), %xmm1
	subss	96(%rbp), %xmm1
	addss	%xmm1, %xmm0
.L4038:
	movaps	%xmm0, %xmm7
	subss	192(%rsi), %xmm7
	movss	.LC18(%rip), %xmm0
	ucomiss	%xmm0, %xmm7
	jnb	.L4034
	movaps	%xmm0, %xmm7
	jmp	.L4034
	.p2align 4,,10
.L4069:
	movq	48(%rsp), %rcx
	movaps	%xmm7, %xmm3
	movq	%rdi, %r8
	movq	%rbx, %rdx
	call	_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f
	jmp	.L4003
	.p2align 4,,10
.L4067:
	movss	228(%rsi), %xmm9
	addss	196(%rsi), %xmm9
	movss	524(%rsi), %xmm0
	movss	192(%rsi), %xmm10
	ucomiss	%xmm9, %xmm0
	addss	%xmm6, %xmm10
	jb	.L4061
	movq	GImGui(%rip), %r12
	movaps	%xmm9, %xmm7
	cmpb	$0, 11432(%rbp)
	movss	5944(%r12), %xmm13
	jne	.L4011
	movss	516(%rsi), %xmm0
	subss	%xmm9, %xmm0
	divss	%xmm13, %xmm0
	cvttss2si	%xmm0, %ebp
	testl	%ebp, %ebp
	jle	.L4011
	cmpq	%rbx, %rdi
	jbe	.L4045
	xorl	%esi, %esi
.L4013:
	movl	$10, %edx
	movq	%rbx, %rcx
	call	strchr
	testq	%rax, %rax
	je	.L4014
	leaq	1(%rax), %rbx
	addl	$1, %esi
	cmpl	%esi, %ebp
	jle	.L4015
	cmpq	%rbx, %rdi
	ja	.L4013
	.p2align 4,,10
.L4015:
	pxor	%xmm7, %xmm7
	cvtsi2ss	%esi, %xmm7
.L4012:
	mulss	%xmm13, %xmm7
	addss	%xmm9, %xmm7
.L4011:
	cmpq	%rbx, %rdi
	pxor	%xmm8, %xmm8
	jbe	.L4017
	movss	.LC90(%rip), %xmm15
	movaps	%xmm7, %xmm12
	pxor	%xmm11, %xmm11
	movss	.LC1(%rip), %xmm14
	addss	%xmm13, %xmm12
	addss	%xmm10, %xmm15
	jmp	.L4030
	.p2align 4,,10
.L4072:
	leaq	1(%rsi), %rbx
	addss	%xmm13, %xmm7
	cmpq	%rbx, %rdi
	addss	%xmm13, %xmm12
	jbe	.L4071
	movq	GImGui(%rip), %r12
	movaps	%xmm8, %xmm11
.L4030:
	movl	$10, %edx
	movq	%rbx, %rcx
	call	strchr
	movq	%rax, %rsi
	movq	6008(%r12), %rax
	ucomiss	516(%rax), %xmm12
	jbe	.L4018
	movss	524(%rax), %xmm0
	ucomiss	%xmm7, %xmm0
	jbe	.L4018
	ucomiss	512(%rax), %xmm15
	jbe	.L4018
	movss	520(%rax), %xmm0
	ucomiss	%xmm10, %xmm0
	ja	.L4022
	.p2align 4,,10
.L4018:
	cmpb	$0, 11432(%r12)
	je	.L4023
.L4022:
	xorl	%r8d, %r8d
	movaps	%xmm14, %xmm3
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movd	%eax, %xmm8
	ucomiss	%xmm8, %xmm11
	jb	.L4025
	movaps	%xmm11, %xmm8
.L4025:
	movd	%xmm7, %ecx
	movd	%xmm10, %eax
	xorl	%r9d, %r9d
	movq	%rcx, %rdx
	movl	%eax, %ecx
	movq	%rsi, %r8
	salq	$32, %rdx
	orq	%rdx, %rcx
	movq	%rbx, %rdx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	testq	%rsi, %rsi
	jne	.L4072
	addss	%xmm13, %xmm7
	pxor	%xmm0, %xmm0
.L4026:
	mulss	%xmm13, %xmm0
	addss	%xmm0, %xmm7
.L4017:
	subss	%xmm9, %xmm7
	pxor	%xmm1, %xmm1
	addss	%xmm7, %xmm6
.L4009:
	addss	%xmm9, %xmm6
	leaq	40(%rsp), %rcx
	movss	%xmm10, 48(%rsp)
	addss	%xmm10, %xmm8
	movss	%xmm9, 52(%rsp)
	movss	%xmm6, 60(%rsp)
	subss	%xmm9, %xmm6
	movss	%xmm8, 56(%rsp)
	subss	%xmm10, %xmm8
	movss	%xmm6, 44(%rsp)
	movss	%xmm8, 40(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	48(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	jmp	.L4003
	.p2align 4,,10
.L4065:
	leaq	.LC5(%rip), %rdx
	movl	$5387, %r8d
	leaq	.LC189(%rip), %rcx
	call	_assert
	jmp	.L4005
	.p2align 4,,10
.L4070:
	call	_ZN5ImGui19GetContentRegionMaxEv
	movd	%eax, %xmm0
	addss	28(%rbp), %xmm0
	jmp	.L4038
	.p2align 4,,10
.L4014:
	leaq	1(%rdi), %rbx
	addl	$1, %esi
	jmp	.L4015
	.p2align 4,,10
.L4061:
	pxor	%xmm8, %xmm8
	movaps	%xmm6, %xmm1
	jmp	.L4009
	.p2align 4,,10
.L4023:
	cmpq	%rbx, %rdi
	jbe	.L4047
	xorl	%esi, %esi
	.p2align 4,,10
.L4027:
	movl	$10, %edx
	movq	%rbx, %rcx
	call	strchr
	testq	%rax, %rax
	je	.L4031
	leaq	1(%rax), %rbx
	addl	$1, %esi
	cmpq	%rbx, %rdi
	ja	.L4027
	.p2align 4,,10
.L4032:
	pxor	%xmm0, %xmm0
	movaps	%xmm11, %xmm8
	cvtsi2ss	%esi, %xmm0
	jmp	.L4026
	.p2align 4,,10
.L4031:
	addl	$1, %esi
	jmp	.L4032
	.p2align 4,,10
.L4071:
	pxor	%xmm0, %xmm0
	jmp	.L4026
.L4045:
	pxor	%xmm7, %xmm7
	jmp	.L4012
.L4047:
	movaps	%xmm11, %xmm8
	pxor	%xmm0, %xmm0
	jmp	.L4026
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5TextVEPKcPc
	.def	_ZN5ImGui5TextVEPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5TextVEPKcPc
_ZN5ImGui5TextVEPKcPc:
.LFB864:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %r10
	movb	$1, 138(%r10)
	movq	6008(%rax), %r10
	cmpb	$0, 140(%r10)
	je	.L4081
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L4081:
	leaq	11960(%rax), %rbx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L4077
	cmpl	$3072, %eax
	jg	.L4077
.L4075:
	cltq
	movq	%rbx, %rcx
	leaq	(%rbx,%rax), %rdx
	movb	$0, (%rdx)
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui15TextUnformattedEPKcS1_
	.p2align 4,,10
.L4077:
	movl	$3072, %eax
	jmp	.L4075
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui4TextEPKcz
	.def	_ZN5ImGui4TextEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui4TextEPKcz
_ZN5ImGui4TextEPKcz:
.LFB865:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%r9, 88(%rsp)
	leaq	72(%rsp), %r9
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	6008(%rax), %rdx
	movq	%r9, 40(%rsp)
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rdx
	cmpb	$0, 140(%rdx)
	je	.L4090
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L4090:
	leaq	11960(%rax), %rbx
	movq	%rcx, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L4086
	cmpl	$3072, %eax
	jg	.L4086
.L4084:
	cltq
	movq	%rbx, %rcx
	leaq	(%rbx,%rax), %rdx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L4086:
	movl	$3072, %eax
	jmp	.L4084
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12TextDisabledEPKcz
	.def	_ZN5ImGui12TextDisabledEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12TextDisabledEPKcz
_ZN5ImGui12TextDisabledEPKcz:
.LFB869:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rdx, 88(%rsp)
	leaq	88(%rsp), %rsi
	movq	%rcx, %rdi
	xorl	%ecx, %ecx
	leaq	5264(%rax), %rdx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rax
	cmpb	$0, 140(%rax)
	je	.L4102
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L4103
.L4095:
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L4096:
	subl	$1, %eax
	movl	%eax, 6136(%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L4102:
	addq	$11960, %rbx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L4097
	cmpl	$3072, %eax
	jg	.L4097
.L4093:
	cltq
	movq	%rbx, %rcx
	leaq	(%rbx,%rax), %rdx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	movq	GImGui(%rip), %rbx
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jg	.L4095
.L4103:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	6136(%rbx), %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	%rdx, %rax
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L4096
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6136(%rbx), %eax
	jmp	.L4096
	.p2align 4,,10
.L4097:
	movl	$3072, %eax
	jmp	.L4093
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12TextColoredVERK6ImVec4PKcPc
	.def	_ZN5ImGui12TextColoredVERK6ImVec4PKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12TextColoredVERK6ImVec4PKcPc
_ZN5ImGui12TextColoredVERK6ImVec4PKcPc:
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
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	xorl	%ecx, %ecx
	movq	%r8, %rdi
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rax
	cmpb	$0, 140(%rax)
	je	.L4115
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L4116
.L4108:
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L4109:
	subl	$1, %eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L4115:
	addq	$11960, %rbx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L4110
	cmpl	$3072, %eax
	jg	.L4110
.L4106:
	cltq
	movq	%rbx, %rcx
	leaq	(%rbx,%rax), %rdx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	movq	GImGui(%rip), %rbx
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jg	.L4108
.L4116:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	6136(%rbx), %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	%rdx, %rax
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L4109
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6136(%rbx), %eax
	jmp	.L4109
	.p2align 4,,10
.L4110:
	movl	$3072, %eax
	jmp	.L4106
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11TextColoredERK6ImVec4PKcz
	.def	_ZN5ImGui11TextColoredERK6ImVec4PKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11TextColoredERK6ImVec4PKcz
_ZN5ImGui11TextColoredERK6ImVec4PKcz:
.LFB867:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	96(%rsp), %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%r8, 96(%rsp)
	xorl	%ecx, %ecx
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rax
	cmpb	$0, 140(%rax)
	je	.L4128
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L4129
.L4121:
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L4122:
	subl	$1, %eax
	movl	%eax, 6136(%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L4128:
	addq	$11960, %rbx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L4123
	cmpl	$3072, %eax
	jg	.L4123
.L4119:
	cltq
	movq	%rbx, %rcx
	leaq	(%rbx,%rax), %rdx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	movq	GImGui(%rip), %rbx
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jg	.L4121
.L4129:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	6136(%rbx), %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	%rdx, %rax
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L4122
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6136(%rbx), %eax
	jmp	.L4122
	.p2align 4,,10
.L4123:
	movl	$3072, %eax
	jmp	.L4119
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13TextDisabledVEPKcPc
	.def	_ZN5ImGui13TextDisabledVEPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13TextDisabledVEPKcPc
_ZN5ImGui13TextDisabledVEPKcPc:
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
	movq	GImGui(%rip), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	xorl	%ecx, %ecx
	leaq	5264(%rax), %rdx
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rax
	cmpb	$0, 140(%rax)
	je	.L4141
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L4142
.L4134:
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L4135:
	subl	$1, %eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L4141:
	addq	$11960, %rbx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L4136
	cmpl	$3072, %eax
	jg	.L4136
.L4132:
	cltq
	movq	%rbx, %rcx
	leaq	(%rbx,%rax), %rdx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	movq	GImGui(%rip), %rbx
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jg	.L4134
.L4142:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	6136(%rbx), %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	%rdx, %rax
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L4135
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6136(%rbx), %eax
	jmp	.L4135
	.p2align 4,,10
.L4136:
	movl	$3072, %eax
	jmp	.L4132
	.seh_endproc
	.section .rdata,"dr"
.LC190:
	.ascii "column_index > 0\0"
	.align 8
.LC191:
	.ascii "g.ActiveId == window->DC.ColumnsSetId + ImGuiID(column_index)\0"
	.text
	.p2align 4,,15
	.def	_ZL22GetDraggedColumnOffseti;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22GetDraggedColumnOffseti
_ZL22GetDraggedColumnOffseti:
.LFB1060:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rdi
	testl	%ecx, %ecx
	movl	%ecx, %esi
	jle	.L4147
.L4144:
	movl	472(%rdi), %eax
	addl	%esi, %eax
	cmpl	%eax, 6068(%rbx)
	je	.L4145
	leaq	.LC5(%rip), %rdx
	movl	$9373, %r8d
	leaq	.LC191(%rip), %rcx
	call	_assert
.L4145:
	leal	1(%rsi), %ecx
	movss	264(%rbx), %xmm6
	subss	6080(%rbx), %xmm6
	subss	28(%rdi), %xmm6
	call	_ZN5ImGui15GetColumnOffsetEi
	leal	-1(%rsi), %ecx
	movss	5196(%rbx), %xmm7
	movaps	%xmm0, %xmm8
	call	_ZN5ImGui15GetColumnOffsetEi
	addss	5196(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L4146
	movaps	%xmm8, %xmm0
	subss	%xmm7, %xmm0
	minss	%xmm6, %xmm0
.L4146:
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	cvtsi2ss	%eax, %xmm0
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L4147:
	leaq	.LC5(%rip), %rdx
	movl	$9372, %r8d
	leaq	.LC190(%rip), %rcx
	call	_assert
	jmp	.L4144
	.seh_endproc
	.p2align 4,,15
	.def	_ZL18PushColumnClipRecti.constprop.139;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18PushColumnClipRecti.constprop.139
_ZL18PushColumnClipRecti.constprop.139:
.LFB6607:
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
	movq	GImGui(%rip), %rax
	movss	.LC17(%rip), %xmm6
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rsi
	movl	440(%rsi), %ebx
	movss	28(%rsi), %xmm7
	addss	%xmm6, %xmm7
	movl	%ebx, %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	addss	28(%rsi), %xmm6
	leal	1(%rbx), %ecx
	movaps	%xmm0, %xmm8
	call	_ZN5ImGui15GetColumnOffsetEi
	addss	%xmm8, %xmm7
	pxor	%xmm2, %xmm2
	movabsq	$-36028801313931264, %rax
	addss	%xmm0, %xmm6
	movss	.LC18(%rip), %xmm0
	pxor	%xmm1, %xmm1
	movl	$1, %r9d
	subss	%xmm0, %xmm7
	subss	%xmm0, %xmm6
	cvttss2si	%xmm7, %edx
	cvttss2si	%xmm6, %r8d
	cvtsi2ss	%edx, %xmm2
	cvtsi2ss	%r8d, %xmm1
	movd	%xmm2, %edx
	movl	%edx, %edx
	movd	%xmm1, %r8d
	orq	%rax, %rdx
	movq	GImGui(%rip), %rax
	movl	%r8d, %r8d
	movq	6008(%rax), %rcx
	movb	$1, 138(%rcx)
	movq	6008(%rax), %rbx
	movabsq	$9187343235540844544, %rax
	orq	%rax, %r8
	movq	656(%rbx), %rcx
	call	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b
	movq	656(%rbx), %rsi
	movslq	80(%rsi), %rax
	testl	%eax, %eax
	jle	.L4150
.L4149:
	salq	$4, %rax
	addq	88(%rsi), %rax
	pxor	%xmm0, %xmm0
	movlps	-16(%rax), %xmm0
	movhps	-8(%rax), %xmm0
	movlps	%xmm0, 512(%rbx)
	movhps	%xmm0, 520(%rbx)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4150:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	80(%rsi), %rax
	jmp	.L4149
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC193:
	.ascii "\15\12--------------------------------\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui9SeparatorEv
	.def	_ZN5ImGui9SeparatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9SeparatorEv
_ZN5ImGui9SeparatorEv:
.LFB1048:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	jne	.L4151
	cmpl	$1, 444(%rbx)
	jg	.L4158
.L4153:
	movl	384(%rbx), %eax
	movss	28(%rbx), %xmm1
	movss	36(%rbx), %xmm2
	testl	%eax, %eax
	addss	%xmm1, %xmm2
	je	.L4154
	addss	428(%rbx), %xmm1
.L4154:
	movss	196(%rbx), %xmm0
	leaq	56(%rsp), %rsi
	movss	%xmm1, 64(%rsp)
	pxor	%xmm1, %xmm1
	movss	.LC18(%rip), %xmm6
	movq	%rsi, %rcx
	movss	%xmm2, 72(%rsp)
	movss	%xmm0, 68(%rsp)
	movq	$0, 56(%rsp)
	addss	%xmm6, %xmm0
	movss	%xmm0, 76(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	64(%rsp), %r11
	movq	%r11, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	testb	%al, %al
	jne	.L4155
	cmpl	$1, 444(%rbx)
	jg	.L4159
.L4151:
	movaps	80(%rsp), %xmm6
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4158:
	call	_ZN5ImGui11PopClipRectEv
	jmp	.L4153
	.p2align 4,,10
.L4155:
	movq	656(%rbx), %r10
	movl	$5, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	72(%rsp), %xmm0
	movss	%xmm6, 32(%rsp)
	movq	%rsi, %r8
	movl	%eax, %r9d
	movq	%r11, %rdx
	movss	%xmm0, 56(%rsp)
	movss	68(%rsp), %xmm0
	movq	%r10, %rcx
	movss	%xmm0, 60(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	movq	GImGui(%rip), %rax
	cmpb	$0, 11432(%rax)
	jne	.L4160
.L4157:
	cmpl	$1, 444(%rbx)
	jle	.L4151
	call	_ZL18PushColumnClipRecti.constprop.139
	movss	196(%rbx), %xmm0
	movss	%xmm0, 460(%rbx)
	jmp	.L4151
	.p2align 4,,10
.L4159:
	call	_ZL18PushColumnClipRecti.constprop.139
	nop
	movaps	80(%rsp), %xmm6
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4160:
	leaq	.LC193(%rip), %rcx
	call	_ZN5ImGui7LogTextEPKcz
	jmp	.L4157
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10NextColumnEv
	.def	_ZN5ImGui10NextColumnEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10NextColumnEv
_ZN5ImGui10NextColumnEv:
.LFB1057:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rax
	movb	$1, 138(%rax)
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	jne	.L4161
	cmpl	$1, 444(%rbx)
	jle	.L4161
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui11PopClipRectEv
	movss	196(%rbx), %xmm1
	movss	464(%rbx), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L4166
.L4163:
	movl	440(%rbx), %eax
	movss	%xmm0, 464(%rbx)
	leal	1(%rax), %ecx
	cmpl	444(%rbx), %ecx
	movl	%ecx, 440(%rbx)
	jl	.L4167
	movq	656(%rbx), %rcx
	movss	%xmm0, 460(%rbx)
	xorl	%edx, %edx
	movq	$0, 436(%rbx)
	call	_ZN10ImDrawList18ChannelsSetCurrentEi
.L4165:
	movq	$0, 224(%rbx)
	movss	28(%rbx), %xmm0
	addss	428(%rbx), %xmm0
	addss	436(%rbx), %xmm0
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 192(%rbx)
	movss	460(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	call	_ZL18PushColumnClipRecti.constprop.139
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movl	440(%rax), %ebx
	leal	1(%rbx), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	movl	%ebx, %ecx
	movaps	%xmm0, %xmm6
	call	_ZN5ImGui15GetColumnOffsetEi
	subss	%xmm0, %xmm6
	movss	.LC194(%rip), %xmm0
	mulss	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZN5ImGui13PushItemWidthEf
	.p2align 4,,10
.L4161:
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4166:
	movaps	%xmm1, %xmm0
	jmp	.L4163
	.p2align 4,,10
.L4167:
	call	_ZN5ImGui15GetColumnOffsetEi
	movl	440(%rbx), %edx
	subss	428(%rbx), %xmm0
	movq	656(%rbx), %rcx
	addss	5168(%rsi), %xmm0
	movss	%xmm0, 436(%rbx)
	call	_ZN10ImDrawList18ChannelsSetCurrentEi
	jmp	.L4165
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui26GetContentRegionAvailWidthEv
	.def	_ZN5ImGui26GetContentRegionAvailWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui26GetContentRegionAvailWidthEv
_ZN5ImGui26GetContentRegionAvailWidthEv:
.LFB832:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	cmpl	$1, 444(%rbx)
	movss	192(%rbx), %xmm6
	subss	28(%rbx), %xmm6
	je	.L4171
	movl	440(%rbx), %eax
	leal	1(%rax), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	subss	84(%rbx), %xmm0
	subss	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L4171:
	movss	76(%rbx), %xmm0
	subss	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui21GetContentRegionAvailEv
	.def	_ZN5ImGui21GetContentRegionAvailEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21GetContentRegionAvailEv
_ZN5ImGui21GetContentRegionAvailEv:
.LFB831:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	cmpl	$1, 444(%rbx)
	movss	196(%rbx), %xmm7
	movss	192(%rbx), %xmm8
	subss	32(%rbx), %xmm7
	subss	28(%rbx), %xmm8
	movss	80(%rbx), %xmm6
	je	.L4175
	movl	440(%rbx), %eax
	leal	1(%rax), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	subss	84(%rbx), %xmm0
.L4174:
	subss	%xmm7, %xmm6
	movaps	48(%rsp), %xmm7
	subss	%xmm8, %xmm0
	movaps	64(%rsp), %xmm8
	movd	%xmm6, %eax
	movaps	32(%rsp), %xmm6
	movq	%rax, %rdx
	movd	%xmm0, %eax
	salq	$32, %rdx
	orq	%rdx, %rax
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L4175:
	movss	76(%rbx), %xmm0
	jmp	.L4174
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13CalcItemWidthEv
	.def	_ZN5ImGui13CalcItemWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13CalcItemWidthEv
_ZN5ImGui13CalcItemWidthEv:
.LFB778:
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	pxor	%xmm0, %xmm0
	movq	6008(%rax), %rax
	movss	308(%rax), %xmm6
	ucomiss	%xmm6, %xmm0
	ja	.L4177
.L4180:
	cvttss2si	%xmm6, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
.L4176:
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	ret
	.p2align 4,,10
.L4177:
	call	_ZN5ImGui21GetContentRegionAvailEv
	movss	.LC18(%rip), %xmm0
	movd	%eax, %xmm1
	addss	%xmm1, %xmm6
	ucomiss	%xmm6, %xmm0
	jb	.L4180
	jmp	.L4176
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10LabelTextVEPKcS1_Pc
	.def	_ZN5ImGui10LabelTextVEPKcS1_Pc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10LabelTextVEPKcS1_Pc
_ZN5ImGui10LabelTextVEPKcS1_Pc:
.LFB874:
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
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rbp
	movb	$1, 138(%rax)
	movq	6008(%rbx), %r12
	cmpb	$0, 140(%r12)
	je	.L4200
.L4181:
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
	ret
	.p2align 4,,10
.L4200:
	call	_ZN5ImGui13CalcItemWidthEv
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rsi, %rcx
	movss	.LC1(%rip), %xmm3
	movaps	%xmm0, %xmm9
	pxor	%xmm6, %xmm6
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	5160(%rbx), %xmm1
	movaps	%xmm9, %xmm0
	movss	196(%r12), %xmm5
	movd	%eax, %xmm7
	shrq	$32, %rax
	movaps	%xmm1, %xmm3
	ucomiss	%xmm6, %xmm7
	movd	%eax, %xmm4
	movss	192(%r12), %xmm8
	addss	%xmm1, %xmm3
	movq	192(%r12), %rax
	addss	%xmm8, %xmm0
	movaps	%xmm3, %xmm2
	addss	%xmm4, %xmm2
	movq	%rax, 80(%rsp)
	movss	%xmm0, 88(%rsp)
	addss	%xmm5, %xmm2
	movss	%xmm2, 92(%rsp)
	pxor	%xmm2, %xmm2
	jbe	.L4183
	movss	5176(%rbx), %xmm2
.L4183:
	addss	%xmm9, %xmm2
	leaq	72(%rsp), %r12
	movq	%rax, 96(%rsp)
	addss	%xmm5, %xmm3
	movq	%r12, %rcx
	movaps	%xmm2, %xmm0
	addss	%xmm8, %xmm0
	addss	%xmm4, %xmm3
	addss	%xmm7, %xmm0
	movss	%xmm3, 108(%rsp)
	subss	%xmm5, %xmm3
	movss	%xmm0, 104(%rsp)
	subss	%xmm8, %xmm0
	movss	%xmm3, 76(%rsp)
	movss	%xmm0, 72(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	96(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	testb	%al, %al
	je	.L4181
	leaq	11960(%rbx), %r13
	movq	%rbp, %r9
	movq	%rdi, %r8
	movl	$3073, %edx
	movq	%r13, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L4191
	cmpl	$3072, %eax
	jg	.L4191
.L4185:
	leaq	80(%rsp), %rcx
	cltq
	movq	%r13, %r8
	leaq	0(%r13,%rax), %r9
	movabsq	$4539628424389459968, %rax
	movb	$0, (%r9)
	leaq	8(%rcx), %rdx
	movq	$0, 48(%rsp)
	movq	%r12, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 72(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	ucomiss	%xmm6, %xmm7
	jbe	.L4181
	movss	84(%rsp), %xmm1
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	%rsi, %rdx
	addss	5160(%rbx), %xmm1
	movss	88(%rsp), %xmm0
	addss	5176(%rbx), %xmm0
	movd	%xmm1, %ecx
	movq	%rcx, %rax
	salq	$32, %rax
	movd	%xmm0, %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L4181
	.p2align 4,,10
.L4191:
	movl	$3072, %eax
	jmp	.L4185
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9LabelTextEPKcS1_z
	.def	_ZN5ImGui9LabelTextEPKcS1_z;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9LabelTextEPKcS1_z
_ZN5ImGui9LabelTextEPKcS1_z:
.LFB875:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%r8, 80(%rsp)
	leaq	80(%rsp), %r8
	movq	%r9, 88(%rsp)
	movq	%r8, 40(%rsp)
	call	_ZN5ImGui10LabelTextVEPKcS1_Pc
	nop
	addq	$56, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC196:
	.ascii "v_idx >= 0 && v_idx < values_count\0"
.LC197:
	.ascii "%d: %8.4g\12%d: %8.4g\0"
.LC198:
	.ascii "%d: %8.4g\0"
	.align 8
.LC199:
	.ascii "v1_idx >= 0 && v1_idx < values_count\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2
	.def	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2
_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2:
.LFB953:
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
	movq	GImGui(%rip), %rbx
	movq	504(%rsp), %rax
	movl	%eax, %r15d
	shrq	$32, %rax
	movl	%ecx, %r12d
	movd	%eax, %xmm7
	movq	6008(%rbx), %rax
	movq	%rdx, %r14
	movq	%r8, %rdi
	movq	%r9, %rbp
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rsi
	cmpb	$0, 140(%rsi)
	je	.L4307
.L4202:
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
	.p2align 4,,10
.L4307:
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%r14, %rcx
	pxor	%xmm6, %xmm6
	movss	.LC1(%rip), %xmm3
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movd	%r15d, %xmm5
	ucomiss	%xmm6, %xmm5
	movl	%eax, 88(%rsp)
	jp	.L4204
	je	.L4308
.L4204:
	ucomiss	%xmm6, %xmm7
	movss	5160(%rbx), %xmm1
	jp	.L4206
	je	.L4309
.L4206:
	movq	192(%rsi), %rax
	movd	%r15d, %xmm3
	addss	196(%rsi), %xmm7
	addss	192(%rsi), %xmm3
	movss	88(%rsp), %xmm2
	movq	%rax, 144(%rsp)
	movaps	%xmm7, %xmm11
	movaps	%xmm7, %xmm0
	movss	148(%rsp), %xmm4
	movss	%xmm7, 156(%rsp)
	movss	5156(%rbx), %xmm7
	movaps	%xmm3, %xmm13
	ucomiss	%xmm6, %xmm2
	movss	144(%rsp), %xmm5
	movaps	%xmm4, %xmm8
	subss	%xmm1, %xmm11
	movss	%xmm3, 152(%rsp)
	subss	%xmm7, %xmm13
	addss	%xmm1, %xmm8
	movss	%xmm11, 172(%rsp)
	addss	%xmm5, %xmm7
	movss	%xmm13, 168(%rsp)
	movss	%xmm8, 164(%rsp)
	movss	%xmm7, 160(%rsp)
	jbe	.L4298
	addss	5176(%rbx), %xmm2
.L4208:
	addss	%xmm3, %xmm2
	movq	144(%rsp), %rax
	addss	%xmm6, %xmm0
	movss	%xmm2, 184(%rsp)
	subss	%xmm5, %xmm2
	movss	%xmm0, 188(%rsp)
	subss	%xmm4, %xmm0
	movq	%rax, 176(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
	movss	%xmm2, 136(%rsp)
	movss	%xmm0, 140(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	176(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	testb	%al, %al
	je	.L4202
	movss	488(%rsp), %xmm5
	movl	$0, %edx
	ucomiss	.LC90(%rip), %xmm5
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	jne	.L4276
	movss	496(%rsp), %xmm5
	ucomiss	.LC90(%rip), %xmm5
	setnp	%dl
	cmove	%edx, %eax
	testb	%al, %al
	jne	.L4276
.L4210:
	movl	$7, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	152(%rsp), %rdx
	movl	$1, %r9d
	movq	144(%rsp), %rcx
	movl	%eax, %r8d
	movss	5164(%rbx), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movl	464(%rsp), %eax
	testl	%eax, %eax
	jle	.L4221
.L4255:
	leaq	160(%rsp), %rcx
	xorl	%eax, %eax
	movd	%r15d, %xmm5
	testl	%r12d, %r12d
	cvttss2si	%xmm5, %r13d
	sete	%al
	cmpl	464(%rsp), %r13d
	cmovg	464(%rsp), %r13d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	subl	%eax, %r13d
	movl	%r13d, 96(%rsp)
	movl	464(%rsp), %r13d
	subl	%eax, %r13d
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	je	.L4222
	movss	264(%rbx), %xmm0
	movaps	%xmm13, %xmm14
	subss	%xmm7, %xmm14
	subss	%xmm7, %xmm0
	divss	%xmm14, %xmm0
	ucomiss	%xmm0, %xmm6
	ja	.L4259
	ucomiss	.LC195(%rip), %xmm0
	jbe	.L4223
	movss	.LC195(%rip), %xmm0
.L4223:
	pxor	%xmm1, %xmm1
	cvtsi2ss	%r13d, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	testl	%eax, %eax
	movl	%eax, 100(%rsp)
	js	.L4280
	cmpl	%eax, 464(%rsp)
	jle	.L4280
.L4225:
	movl	100(%rsp), %r15d
	movq	%rbp, %rcx
	movl	472(%rsp), %eax
	addl	%r15d, %eax
	cltd
	idivl	464(%rsp)
	call	*%rdi
	leal	1(%r15), %r9d
	movq	%rbp, %rcx
	movl	%r9d, %eax
	addl	472(%rsp), %eax
	movl	%r9d, 80(%rsp)
	movaps	%xmm0, %xmm10
	cltd
	idivl	464(%rsp)
	call	*%rdi
	testl	%r12d, %r12d
	movl	80(%rsp), %r9d
	je	.L4310
	cmpl	$1, %r12d
	je	.L4311
	movss	.LC18(%rip), %xmm12
	pxor	%xmm0, %xmm0
	cvtsi2ss	96(%rsp), %xmm0
	movaps	%xmm12, %xmm3
	divss	%xmm0, %xmm3
	movss	%xmm3, 92(%rsp)
.L4306:
	movl	472(%rsp), %eax
	movq	%rbp, %rcx
	cltd
	idivl	464(%rsp)
	call	*%rdi
	movss	496(%rsp), %xmm4
	subss	488(%rsp), %xmm0
	subss	488(%rsp), %xmm4
	divss	%xmm4, %xmm0
	movss	%xmm4, 80(%rsp)
	ucomiss	%xmm0, %xmm6
	ja	.L4312
	ucomiss	%xmm12, %xmm0
	pxor	%xmm15, %xmm15
	jbe	.L4251
.L4231:
	movl	$39, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movl	$40, %ecx
	movl	%eax, 108(%rsp)
	jmp	.L4248
	.p2align 4,,10
.L4309:
	movaps	%xmm1, %xmm0
	shrq	$32, %rax
	addss	%xmm1, %xmm0
	movd	%eax, %xmm7
	addss	%xmm0, %xmm7
	jmp	.L4206
	.p2align 4,,10
.L4313:
	movq	120(%rsp), %rbx
	movq	440(%rsp), %r14
.L4221:
	cmpq	$0, 480(%rsp)
	je	.L4244
	movq	72(%rsp), %rax
	xorl	%r9d, %r9d
	movq	$1056964608, 136(%rsp)
	movq	480(%rsp), %r8
	leaq	152(%rsp), %rdx
	movss	148(%rsp), %xmm0
	leaq	128(%rsp), %rcx
	addss	5160(%rbx), %xmm0
	movq	$0, 48(%rsp)
	movss	144(%rsp), %xmm1
	movq	%rax, 40(%rsp)
	movq	$0, 32(%rsp)
	movss	%xmm1, 128(%rsp)
	movss	%xmm0, 132(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
.L4244:
	movss	88(%rsp), %xmm4
	ucomiss	%xmm6, %xmm4
	jbe	.L4202
	movss	152(%rsp), %xmm0
	movd	%xmm8, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdx
	addss	5176(%rbx), %xmm0
	movq	%rcx, %rax
	movl	$1, %r9d
	salq	$32, %rax
	movd	%xmm0, %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L4202
	.p2align 4,,10
.L4298:
	pxor	%xmm2, %xmm2
	jmp	.L4208
	.p2align 4,,10
.L4308:
	movq	%rax, 72(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	movq	72(%rsp), %rax
	movd	%xmm0, %r15d
	jmp	.L4204
	.p2align 4,,10
.L4276:
	movl	464(%rsp), %edx
	testl	%edx, %edx
	jle	.L4212
	xorl	%r13d, %r13d
	movq	%rbx, 80(%rsp)
	movss	.LC192(%rip), %xmm10
	movss	.LC90(%rip), %xmm12
	movl	%r13d, %ebx
	movl	464(%rsp), %r13d
	.p2align 4,,10
.L4217:
	movl	%ebx, %edx
	movq	%rbp, %rcx
	call	*%rdi
	ucomiss	%xmm0, %xmm10
	minss	%xmm0, %xmm12
	jb	.L4215
	movaps	%xmm10, %xmm0
.L4215:
	addl	$1, %ebx
	movaps	%xmm0, %xmm10
	cmpl	%ebx, %r13d
	jne	.L4217
	movss	488(%rsp), %xmm5
	ucomiss	.LC90(%rip), %xmm5
	movq	80(%rsp), %rbx
	jp	.L4218
	jne	.L4218
.L4252:
	movss	496(%rsp), %xmm5
	ucomiss	.LC90(%rip), %xmm5
	jp	.L4303
	je	.L4258
.L4303:
	movss	%xmm12, 488(%rsp)
	jmp	.L4210
	.p2align 4,,10
.L4222:
	movl	472(%rsp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	96(%rsp), %xmm0
	movq	%rbp, %rcx
	movss	.LC18(%rip), %xmm12
	movaps	%xmm12, %xmm5
	divss	%xmm0, %xmm5
	cltd
	idivl	464(%rsp)
	movss	%xmm5, 92(%rsp)
	call	*%rdi
	movss	496(%rsp), %xmm3
	subss	488(%rsp), %xmm0
	subss	488(%rsp), %xmm3
	divss	%xmm3, %xmm0
	movss	%xmm3, 80(%rsp)
	ucomiss	%xmm0, %xmm6
	ja	.L4262
	ucomiss	%xmm12, %xmm0
	pxor	%xmm15, %xmm15
	movl	$-1, 100(%rsp)
	jbe	.L4251
.L4233:
	testl	%r12d, %r12d
	jne	.L4231
.L4228:
	movl	$37, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movl	$38, %ecx
	movl	%eax, 108(%rsp)
.L4248:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movl	%eax, 104(%rsp)
	movl	96(%rsp), %eax
	testl	%eax, %eax
	jle	.L4221
	pxor	%xmm4, %xmm4
	cvtsi2ss	%r13d, %xmm4
	movaps	%xmm13, %xmm14
	xorl	%r13d, %r13d
	movq	%rbx, 120(%rsp)
	leaq	128(%rsp), %rdx
	pxor	%xmm9, %xmm9
	movl	%eax, %ebx
	subss	%xmm7, %xmm14
	movq	%rdx, 112(%rsp)
	movl	464(%rsp), %r15d
	subss	%xmm8, %xmm11
	movq	%r14, 440(%rsp)
	movss	%xmm4, 96(%rsp)
	jmp	.L4243
	.p2align 4,,10
.L4237:
	movss	%xmm0, 136(%rsp)
	movaps	%xmm11, %xmm0
	movq	72(%rsp), %r8
	mulss	%xmm10, %xmm0
	movq	656(%rsi), %rcx
	movss	%xmm12, 32(%rsp)
	movq	112(%rsp), %rdx
	cmpl	100(%rsp), %r14d
	movl	104(%rsp), %r9d
	cmovne	108(%rsp), %r9d
	addss	%xmm8, %xmm0
	movss	%xmm0, 140(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
.L4239:
	addl	$1, %r13d
	movaps	%xmm10, %xmm15
	movaps	%xmm13, %xmm9
	cmpl	%ebx, %r13d
	je	.L4313
.L4243:
	movss	96(%rsp), %xmm0
	movss	92(%rsp), %xmm13
	mulss	%xmm9, %xmm0
	addss	.LC17(%rip), %xmm0
	addss	%xmm9, %xmm13
	cvttss2si	%xmm0, %r14d
	testl	%r14d, %r14d
	js	.L4281
	cmpl	%r14d, %r15d
	jle	.L4281
.L4234:
	movl	472(%rsp), %eax
	movq	%rbp, %rcx
	movaps	%xmm12, %xmm10
	leal	1(%r14,%rax), %eax
	cltd
	idivl	%r15d
	call	*%rdi
	subss	488(%rsp), %xmm0
	divss	80(%rsp), %xmm0
	ucomiss	%xmm0, %xmm6
	ja	.L4236
	ucomiss	%xmm12, %xmm0
	pxor	%xmm10, %xmm10
	ja	.L4236
	movaps	%xmm12, %xmm10
	subss	%xmm0, %xmm10
.L4236:
	mulss	%xmm14, %xmm9
	movaps	%xmm13, %xmm0
	testl	%r12d, %r12d
	mulss	%xmm11, %xmm15
	mulss	%xmm14, %xmm0
	addss	%xmm7, %xmm9
	addss	%xmm8, %xmm15
	addss	%xmm7, %xmm0
	movss	%xmm9, 128(%rsp)
	movss	%xmm15, 132(%rsp)
	je	.L4237
	movaps	%xmm8, %xmm1
	cmpl	$1, %r12d
	movss	%xmm0, 136(%rsp)
	addss	%xmm11, %xmm1
	movss	%xmm1, 140(%rsp)
	jne	.L4239
	movss	.LC170(%rip), %xmm1
	addss	%xmm9, %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.L4240
	subss	%xmm12, %xmm0
	movss	%xmm0, 136(%rsp)
.L4240:
	movq	656(%rsi), %rcx
	movl	$-1, 40(%rsp)
	movq	72(%rsp), %r8
	movl	$0x00000000, 32(%rsp)
	movq	112(%rsp), %rdx
	cmpl	100(%rsp), %r14d
	movl	104(%rsp), %r9d
	cmovne	108(%rsp), %r9d
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	jmp	.L4239
	.p2align 4,,10
.L4218:
	movl	$7, %ecx
	movss	%xmm0, 80(%rsp)
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	152(%rsp), %rdx
	movl	$1, %r9d
	movq	144(%rsp), %rcx
	movl	%eax, %r8d
	movss	5164(%rbx), %xmm1
	movss	%xmm1, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movss	80(%rsp), %xmm0
	movss	%xmm0, 496(%rsp)
	jmp	.L4255
	.p2align 4,,10
.L4259:
	pxor	%xmm0, %xmm0
	jmp	.L4223
	.p2align 4,,10
.L4262:
	movaps	%xmm12, %xmm15
	movl	$-1, 100(%rsp)
	jmp	.L4233
	.p2align 4,,10
.L4281:
	leaq	.LC5(%rip), %rdx
	movl	$7183, %r8d
	leaq	.LC199(%rip), %rcx
	call	_assert
	jmp	.L4234
	.p2align 4,,10
.L4310:
	movl	100(%rsp), %edx
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm10, %xmm10
	movsd	%xmm0, 32(%rsp)
	movapd	%xmm10, %xmm2
	movq	%xmm10, %r8
	leaq	.LC197(%rip), %rcx
	call	_ZN5ImGui10SetTooltipEPKcz
	movl	472(%rsp), %eax
	pxor	%xmm0, %xmm0
	movq	%rbp, %rcx
	movss	.LC18(%rip), %xmm12
	cvtsi2ss	96(%rsp), %xmm0
	movaps	%xmm12, %xmm5
	cltd
	idivl	464(%rsp)
	divss	%xmm0, %xmm5
	movss	%xmm5, 92(%rsp)
	call	*%rdi
	movss	496(%rsp), %xmm3
	subss	488(%rsp), %xmm0
	subss	488(%rsp), %xmm3
	divss	%xmm3, %xmm0
	movss	%xmm3, 80(%rsp)
	ucomiss	%xmm0, %xmm6
	ja	.L4314
	ucomiss	%xmm12, %xmm0
	pxor	%xmm15, %xmm15
	ja	.L4228
	.p2align 4,,10
.L4251:
	movaps	%xmm12, %xmm15
	subss	%xmm0, %xmm15
	jmp	.L4233
	.p2align 4,,10
.L4280:
	leaq	.LC5(%rip), %rdx
	movl	$7159, %r8d
	leaq	.LC196(%rip), %rcx
	call	_assert
	jmp	.L4225
	.p2align 4,,10
.L4312:
	movaps	%xmm12, %xmm15
	jmp	.L4231
	.p2align 4,,10
.L4212:
	movss	488(%rsp), %xmm5
	ucomiss	.LC90(%rip), %xmm5
	jp	.L4254
	jne	.L4254
	movss	.LC90(%rip), %xmm12
	movss	.LC192(%rip), %xmm0
	jmp	.L4252
.L4311:
	movl	100(%rsp), %edx
	cvtss2sd	%xmm10, %xmm10
	leaq	.LC198(%rip), %rcx
	movapd	%xmm10, %xmm2
	movq	%xmm10, %r8
	call	_ZN5ImGui10SetTooltipEPKcz
	pxor	%xmm0, %xmm0
	cvtsi2ss	96(%rsp), %xmm0
	movss	.LC18(%rip), %xmm12
	movaps	%xmm12, %xmm5
	divss	%xmm0, %xmm5
	movss	%xmm5, 92(%rsp)
	jmp	.L4306
.L4314:
	movaps	%xmm12, %xmm15
	jmp	.L4228
.L4254:
	movl	$7, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	152(%rsp), %rdx
	movl	$1, %r9d
	movq	144(%rsp), %rcx
	movl	%eax, %r8d
	movss	5164(%rbx), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	jmp	.L4221
.L4258:
	movss	%xmm0, 496(%rsp)
	jmp	.L4303
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2
	.def	_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2
_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2:
.LFB959:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	160(%rsp), %rax
	movss	152(%rsp), %xmm0
	movq	%rax, 72(%rsp)
	movq	136(%rsp), %rax
	movss	%xmm0, 64(%rsp)
	movss	144(%rsp), %xmm0
	movl	%r9d, 32(%rsp)
	movq	%r8, %r9
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movss	%xmm0, 56(%rsp)
	xorl	%ecx, %ecx
	movq	%rax, 48(%rsp)
	movl	128(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2
	nop
	addq	$88, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13PlotHistogramEPKcPFfPviES2_iiS1_ff6ImVec2
	.def	_ZN5ImGui13PlotHistogramEPKcPFfPviES2_iiS1_ff6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13PlotHistogramEPKcPFfPviES2_iiS1_ff6ImVec2
_ZN5ImGui13PlotHistogramEPKcPFfPviES2_iiS1_ff6ImVec2:
.LFB961:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	160(%rsp), %rax
	movss	152(%rsp), %xmm0
	movq	%rax, 72(%rsp)
	movq	136(%rsp), %rax
	movss	%xmm0, 64(%rsp)
	movss	144(%rsp), %xmm0
	movl	%r9d, 32(%rsp)
	movq	%r8, %r9
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movss	%xmm0, 56(%rsp)
	movl	$1, %ecx
	movq	%rax, 48(%rsp)
	movl	128(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2
	nop
	addq	$88, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC202:
	.ascii "%.0f%%\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11ProgressBarEfRK6ImVec2PKc
	.def	_ZN5ImGui11ProgressBarEfRK6ImVec2PKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11ProgressBarEfRK6ImVec2PKc
_ZN5ImGui11ProgressBarEfRK6ImVec2PKc:
.LFB962:
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
	subq	$208, %rsp
	.seh_stackalloc	208
	movaps	%xmm6, 160(%rsp)
	.seh_savexmm	%xmm6, 160
	movaps	%xmm7, 176(%rsp)
	.seh_savexmm	%xmm7, 176
	movaps	%xmm8, 192(%rsp)
	.seh_savexmm	%xmm8, 192
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movaps	%xmm0, %xmm6
	movq	%r8, %rdi
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rsi
	cmpb	$0, 140(%rsi)
	je	.L4330
.L4317:
	movaps	160(%rsp), %xmm6
	movaps	176(%rsp), %xmm7
	movaps	192(%rsp), %xmm8
	addq	$208, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L4330:
	movss	5160(%rbx), %xmm2
	movq	%rdx, 72(%rsp)
	leaq	112(%rsp), %rbp
	movss	196(%rsi), %xmm7
	leaq	128(%rsp), %r12
	movss	192(%rsi), %xmm8
	addss	%xmm2, %xmm2
	addss	5944(%rbx), %xmm2
	movss	%xmm2, 68(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	movq	72(%rsp), %rdx
	movss	68(%rsp), %xmm2
	movaps	%xmm0, %xmm1
	movq	(%rdx), %rcx
	call	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	movss	5160(%rbx), %xmm1
	movss	%xmm8, 112(%rsp)
	movq	%rax, %rcx
	movd	%eax, %xmm0
	movss	%xmm7, 116(%rsp)
	shrq	$32, %rcx
	addss	%xmm8, %xmm0
	movq	%rcx, %xmm2
	movq	%r12, %rcx
	addss	%xmm7, %xmm2
	movss	%xmm0, 120(%rsp)
	subss	%xmm8, %xmm0
	movss	%xmm2, 124(%rsp)
	subss	%xmm7, %xmm2
	movss	%xmm0, 128(%rsp)
	movss	%xmm2, 132(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movq	%rbp, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	testb	%al, %al
	je	.L4317
	pxor	%xmm8, %xmm8
	ucomiss	%xmm6, %xmm8
	ja	.L4324
	movss	.LC18(%rip), %xmm0
	minss	%xmm6, %xmm0
	movaps	%xmm0, %xmm6
.L4319:
	movl	$7, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	120(%rsp), %rdx
	movl	$1, %r9d
	movq	112(%rsp), %rcx
	movl	%eax, %r8d
	movss	5164(%rbx), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movss	112(%rsp), %xmm7
	movl	$39, %ecx
	movss	132(%rsi), %xmm2
	movss	120(%rsp), %xmm1
	addss	%xmm2, %xmm7
	movss	124(%rsp), %xmm0
	subss	%xmm2, %xmm1
	movss	5164(%rbx), %xmm5
	subss	%xmm2, %xmm0
	addss	116(%rsp), %xmm2
	movaps	%xmm7, %xmm4
	movaps	%xmm1, %xmm3
	subss	%xmm7, %xmm1
	unpcklps	%xmm0, %xmm3
	movd	%xmm0, %r9d
	unpcklps	%xmm2, %xmm4
	movaps	%xmm4, %xmm2
	salq	$32, %r9
	mulss	%xmm6, %xmm1
	movlhps	%xmm3, %xmm2
	movaps	%xmm2, 112(%rsp)
	addss	%xmm1, %xmm7
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	112(%rsp), %rcx
	movl	%eax, %r8d
	movss	%xmm5, 32(%rsp)
	movd	%xmm7, %edx
	movl	%edx, %edx
	orq	%r9, %rdx
	xorl	%r9d, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	testq	%rdi, %rdi
	je	.L4331
.L4320:
	movss	.LC1(%rip), %xmm3
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rdi, %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movq	%rax, 88(%rsp)
	movss	88(%rsp), %xmm1
	ucomiss	%xmm8, %xmm1
	jbe	.L4317
	movabsq	$4539628424389459968, %rax
	addss	5168(%rbx), %xmm7
	movss	112(%rsp), %xmm0
	movq	%rax, 104(%rsp)
	movss	116(%rsp), %xmm3
	ucomiss	%xmm7, %xmm0
	movss	120(%rsp), %xmm2
	movss	5176(%rbx), %xmm4
	ja	.L4322
	movaps	%xmm2, %xmm0
	subss	%xmm1, %xmm0
	subss	%xmm4, %xmm0
	minss	%xmm7, %xmm0
.L4322:
	leaq	104(%rsp), %rax
	movq	%rbp, 48(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	movq	%rax, 40(%rsp)
	leaq	88(%rsp), %rax
	leaq	8(%rbp), %rdx
	movq	%rax, 32(%rsp)
	leaq	96(%rsp), %rcx
	movss	%xmm0, 96(%rsp)
	movss	%xmm3, 100(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	jmp	.L4317
	.p2align 4,,10
.L4324:
	pxor	%xmm6, %xmm6
	jmp	.L4319
	.p2align 4,,10
.L4331:
	mulss	.LC200(%rip), %xmm6
	movl	$32, %edx
	movq	%r12, %rcx
	movss	.LC201(%rip), %xmm0
	leaq	.LC202(%rip), %r8
	movq	%r12, %rdi
	addss	%xmm6, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm3
	movq	%xmm0, %r9
	call	_Z14ImFormatStringPciPKcz
	jmp	.L4320
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2.constprop.112;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2.constprop.112
_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2.constprop.112:
.LFB6634:
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
	movaps	%xmm6, 176(%rsp)
	.seh_savexmm	%xmm6, 176
	movaps	%xmm7, 192(%rsp)
	.seh_savexmm	%xmm7, 192
	movaps	%xmm8, 208(%rsp)
	.seh_savexmm	%xmm8, 208
	movaps	%xmm9, 224(%rsp)
	.seh_savexmm	%xmm9, 224
	movaps	%xmm10, 240(%rsp)
	.seh_savexmm	%xmm10, 240
	movaps	%xmm11, 256(%rsp)
	.seh_savexmm	%xmm11, 256
	movaps	%xmm12, 272(%rsp)
	.seh_savexmm	%xmm12, 272
	movaps	%xmm13, 288(%rsp)
	.seh_savexmm	%xmm13, 288
	movaps	%xmm14, 304(%rsp)
	.seh_savexmm	%xmm14, 304
	movaps	%xmm15, 320(%rsp)
	.seh_savexmm	%xmm15, 320
	.seh_endprologue
	movq	GImGui(%rip), %r14
	movq	480(%rsp), %rax
	movl	%eax, %r13d
	shrq	$32, %rax
	movl	%ecx, %ebp
	movd	%eax, %xmm7
	movq	6008(%r14), %rax
	movq	%rdx, %r12
	movq	%r8, %rdi
	movl	%r9d, %ebx
	movb	$1, 138(%rax)
	movq	6008(%r14), %rsi
	cmpb	$0, 140(%rsi)
	je	.L4419
.L4332:
	movaps	176(%rsp), %xmm6
	movaps	192(%rsp), %xmm7
	movaps	208(%rsp), %xmm8
	movaps	224(%rsp), %xmm9
	movaps	240(%rsp), %xmm10
	movaps	256(%rsp), %xmm11
	movaps	272(%rsp), %xmm12
	movaps	288(%rsp), %xmm13
	movaps	304(%rsp), %xmm14
	movaps	320(%rsp), %xmm15
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
	.p2align 4,,10
.L4419:
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%r12, %rcx
	pxor	%xmm6, %xmm6
	movss	.LC1(%rip), %xmm3
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movd	%r13d, %xmm4
	ucomiss	%xmm6, %xmm4
	movl	%eax, 72(%rsp)
	jp	.L4334
	je	.L4420
.L4334:
	movss	5160(%r14), %xmm1
	ucomiss	%xmm6, %xmm7
	jp	.L4336
	je	.L4421
.L4336:
	movq	192(%rsi), %rax
	movd	%r13d, %xmm2
	addss	196(%rsi), %xmm7
	addss	192(%rsi), %xmm2
	movss	72(%rsp), %xmm5
	movq	%rax, 128(%rsp)
	movaps	%xmm7, %xmm11
	movaps	%xmm7, %xmm0
	movss	132(%rsp), %xmm3
	movss	%xmm7, 140(%rsp)
	movaps	%xmm2, %xmm13
	subss	%xmm1, %xmm11
	movss	5156(%r14), %xmm7
	movss	128(%rsp), %xmm4
	movaps	%xmm3, %xmm8
	ucomiss	%xmm6, %xmm5
	movss	%xmm2, 136(%rsp)
	subss	%xmm7, %xmm13
	movss	%xmm11, 156(%rsp)
	addss	%xmm1, %xmm8
	addss	%xmm4, %xmm7
	movss	%xmm13, 152(%rsp)
	movss	%xmm8, 148(%rsp)
	movss	%xmm7, 144(%rsp)
	jbe	.L4415
	addss	5176(%r14), %xmm5
.L4338:
	addss	%xmm5, %xmm2
	movq	128(%rsp), %rax
	leaq	120(%rsp), %r15
	addss	%xmm6, %xmm0
	movq	%r15, %rcx
	movss	%xmm2, 168(%rsp)
	subss	%xmm4, %xmm2
	movss	%xmm0, 172(%rsp)
	subss	%xmm3, %xmm0
	movq	%rax, 160(%rsp)
	movss	%xmm2, 120(%rsp)
	movss	%xmm0, 124(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	160(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	testb	%al, %al
	je	.L4332
	movss	464(%rsp), %xmm3
	movl	$0, %edx
	ucomiss	.LC90(%rip), %xmm3
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	jne	.L4396
	movss	472(%rsp), %xmm4
	ucomiss	.LC90(%rip), %xmm4
	setnp	%dl
	cmove	%edx, %eax
	testb	%al, %al
	jne	.L4396
.L4340:
	movl	$7, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	136(%rsp), %rdx
	movl	$1, %r9d
	movq	128(%rsp), %rcx
	movl	%eax, %r8d
	movss	5164(%r14), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	testl	%ebx, %ebx
	jle	.L4351
.L4381:
	leaq	144(%rsp), %rcx
	movd	%r13d, %xmm3
	xorl	%eax, %eax
	cvttss2si	%xmm3, %r13d
	testl	%ebp, %ebp
	sete	%al
	cmpl	%ebx, %r13d
	cmovg	%ebx, %r13d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	subl	%eax, %r13d
	movl	%r13d, 76(%rsp)
	movl	%ebx, %r13d
	subl	%eax, %r13d
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	jne	.L4352
	movq	(%rdi), %rcx
	movl	$-1, 80(%rsp)
	movslq	8(%rdi), %r9
.L4353:
	movl	448(%rsp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	76(%rsp), %xmm0
	movss	.LC18(%rip), %xmm14
	movss	472(%rsp), %xmm10
	movaps	%xmm14, %xmm3
	movaps	%xmm14, %xmm15
	subss	464(%rsp), %xmm10
	divss	%xmm0, %xmm3
	cltd
	idivl	%ebx
	movss	%xmm3, 64(%rsp)
	movslq	%edx, %rdx
	imulq	%rdx, %r9
	movss	(%rcx,%r9), %xmm0
	subss	464(%rsp), %xmm0
	divss	%xmm10, %xmm0
	ucomiss	%xmm0, %xmm6
	ja	.L4359
	ucomiss	%xmm14, %xmm0
	pxor	%xmm15, %xmm15
	jbe	.L4422
.L4359:
	testl	%ebp, %ebp
	jne	.L4423
	movl	$37, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movl	$38, %ecx
	movl	%eax, 96(%rsp)
.L4375:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movl	%eax, 84(%rsp)
	movl	76(%rsp), %eax
	testl	%eax, %eax
	jle	.L4351
	pxor	%xmm4, %xmm4
	cvtsi2ss	%r13d, %xmm4
	movaps	%xmm13, %xmm12
	xorl	%r13d, %r13d
	leaq	112(%rsp), %rcx
	movq	%r14, 104(%rsp)
	pxor	%xmm0, %xmm0
	movl	%r13d, %r14d
	movq	%r12, 424(%rsp)
	subss	%xmm7, %xmm12
	movq	%rdi, %r12
	movq	%rsi, %rdi
	subss	%xmm8, %xmm11
	movq	%rcx, 88(%rsp)
	movl	%eax, %esi
	movss	%xmm4, 76(%rsp)
	jmp	.L4371
	.p2align 4,,10
.L4365:
	movaps	%xmm11, %xmm0
	movq	656(%rdi), %rcx
	movq	%r15, %r8
	movss	%xmm14, 32(%rsp)
	mulss	%xmm13, %xmm0
	movq	88(%rsp), %rdx
	movss	%xmm1, 120(%rsp)
	cmpl	80(%rsp), %r13d
	movl	84(%rsp), %r9d
	cmovne	96(%rsp), %r9d
	addss	%xmm8, %xmm0
	movss	%xmm0, 124(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
.L4367:
	addl	$1, %r14d
	movaps	%xmm9, %xmm0
	movaps	%xmm13, %xmm15
	cmpl	%esi, %r14d
	je	.L4424
.L4371:
	movss	76(%rsp), %xmm1
	movss	64(%rsp), %xmm9
	mulss	%xmm0, %xmm1
	addss	.LC17(%rip), %xmm1
	addss	%xmm0, %xmm9
	cvttss2si	%xmm1, %r13d
	testl	%r13d, %r13d
	js	.L4401
	cmpl	%r13d, %ebx
	jle	.L4401
.L4362:
	movl	448(%rsp), %eax
	movaps	%xmm14, %xmm13
	leal	1(%r13,%rax), %eax
	cltd
	idivl	%ebx
	movslq	8(%r12), %rax
	movslq	%edx, %rdx
	imulq	%rax, %rdx
	movq	(%r12), %rax
	movss	(%rax,%rdx), %xmm1
	subss	464(%rsp), %xmm1
	divss	%xmm10, %xmm1
	ucomiss	%xmm1, %xmm6
	ja	.L4364
	ucomiss	%xmm14, %xmm1
	pxor	%xmm13, %xmm13
	ja	.L4364
	movaps	%xmm14, %xmm13
	subss	%xmm1, %xmm13
.L4364:
	mulss	%xmm12, %xmm0
	movaps	%xmm9, %xmm1
	testl	%ebp, %ebp
	mulss	%xmm11, %xmm15
	mulss	%xmm12, %xmm1
	addss	%xmm7, %xmm0
	addss	%xmm8, %xmm15
	addss	%xmm7, %xmm1
	movss	%xmm0, 112(%rsp)
	movss	%xmm15, 116(%rsp)
	je	.L4365
	movaps	%xmm8, %xmm2
	cmpl	$1, %ebp
	movss	%xmm1, 120(%rsp)
	addss	%xmm11, %xmm2
	movss	%xmm2, 124(%rsp)
	jne	.L4367
	addss	.LC170(%rip), %xmm0
	ucomiss	%xmm0, %xmm1
	jb	.L4368
	subss	%xmm14, %xmm1
	movss	%xmm1, 120(%rsp)
.L4368:
	movq	656(%rdi), %rcx
	movq	%r15, %r8
	movl	$-1, 40(%rsp)
	movq	88(%rsp), %rdx
	movl	$0x00000000, 32(%rsp)
	cmpl	80(%rsp), %r13d
	movl	84(%rsp), %r9d
	cmovne	96(%rsp), %r9d
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	jmp	.L4367
	.p2align 4,,10
.L4421:
	movaps	%xmm1, %xmm0
	shrq	$32, %rax
	addss	%xmm1, %xmm0
	movd	%eax, %xmm7
	addss	%xmm0, %xmm7
	jmp	.L4336
	.p2align 4,,10
.L4401:
	movl	$7183, %r8d
	movss	%xmm0, 100(%rsp)
	leaq	.LC5(%rip), %rdx
	leaq	.LC199(%rip), %rcx
	call	_assert
	movss	100(%rsp), %xmm0
	jmp	.L4362
	.p2align 4,,10
.L4424:
	movq	104(%rsp), %r14
	movq	424(%rsp), %r12
.L4351:
	cmpq	$0, 456(%rsp)
	je	.L4372
	movq	456(%rsp), %r8
	leaq	112(%rsp), %rcx
	xorl	%r9d, %r9d
	movq	$1056964608, 120(%rsp)
	movss	132(%rsp), %xmm0
	leaq	136(%rsp), %rdx
	addss	5160(%r14), %xmm0
	movq	%r15, 40(%rsp)
	movss	128(%rsp), %xmm1
	movq	$0, 48(%rsp)
	movq	$0, 32(%rsp)
	movss	%xmm1, 112(%rsp)
	movss	%xmm0, 116(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
.L4372:
	movss	72(%rsp), %xmm4
	ucomiss	%xmm6, %xmm4
	jbe	.L4332
	movss	136(%rsp), %xmm0
	movd	%xmm8, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	addss	5176(%r14), %xmm0
	movq	%rcx, %rax
	movl	$1, %r9d
	salq	$32, %rax
	movd	%xmm0, %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L4332
	.p2align 4,,10
.L4415:
	pxor	%xmm5, %xmm5
	jmp	.L4338
	.p2align 4,,10
.L4420:
	movq	%rax, 64(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	movq	64(%rsp), %rax
	movd	%xmm0, %r13d
	jmp	.L4334
	.p2align 4,,10
.L4396:
	testl	%ebx, %ebx
	jle	.L4342
	movslq	8(%rdi), %rcx
	xorl	%eax, %eax
	movq	(%rdi), %rdx
	movss	.LC192(%rip), %xmm0
	movss	.LC90(%rip), %xmm1
	.p2align 4,,10
.L4347:
	movss	(%rdx), %xmm10
	ucomiss	%xmm10, %xmm0
	minss	%xmm10, %xmm1
	jb	.L4345
	movaps	%xmm0, %xmm10
.L4345:
	addl	$1, %eax
	addq	%rcx, %rdx
	movaps	%xmm10, %xmm0
	cmpl	%eax, %ebx
	jne	.L4347
	movss	464(%rsp), %xmm3
	ucomiss	.LC90(%rip), %xmm3
	jp	.L4348
	jne	.L4348
.L4378:
	movss	472(%rsp), %xmm3
	ucomiss	.LC90(%rip), %xmm3
	jp	.L4418
	je	.L4384
.L4418:
	movss	%xmm1, 464(%rsp)
	jmp	.L4340
	.p2align 4,,10
.L4423:
	movl	$39, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movl	$40, %ecx
	movl	%eax, 96(%rsp)
	jmp	.L4375
	.p2align 4,,10
.L4352:
	movss	264(%r14), %xmm0
	movaps	%xmm13, %xmm12
	subss	%xmm7, %xmm12
	subss	%xmm7, %xmm0
	divss	%xmm12, %xmm0
	ucomiss	%xmm0, %xmm6
	ja	.L4385
	ucomiss	.LC195(%rip), %xmm0
	jbe	.L4354
	movss	.LC195(%rip), %xmm0
.L4354:
	pxor	%xmm1, %xmm1
	cvtsi2ss	%r13d, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	testl	%eax, %eax
	movl	%eax, 80(%rsp)
	js	.L4400
	cmpl	%eax, %ebx
	jle	.L4400
.L4356:
	addl	448(%rsp), %eax
	movslq	8(%rdi), %r9
	movq	(%rdi), %rcx
	cltd
	idivl	%ebx
	movslq	%edx, %rdx
	imulq	%r9, %rdx
	testl	%ebp, %ebp
	movss	(%rcx,%rdx), %xmm2
	je	.L4425
	cmpl	$1, %ebp
	jne	.L4353
	movl	80(%rsp), %edx
	leaq	.LC198(%rip), %rcx
	pxor	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	movq	%xmm0, %r8
	call	_ZN5ImGui10SetTooltipEPKcz
	movq	(%rdi), %rcx
	movslq	8(%rdi), %r9
	jmp	.L4353
	.p2align 4,,10
.L4348:
	movl	$7, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	136(%rsp), %rdx
	movl	$1, %r9d
	movq	128(%rsp), %rcx
	movl	%eax, %r8d
	movss	5164(%r14), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movss	%xmm10, 472(%rsp)
	jmp	.L4381
	.p2align 4,,10
.L4422:
	movaps	%xmm14, %xmm15
	subss	%xmm0, %xmm15
	jmp	.L4359
	.p2align 4,,10
.L4385:
	pxor	%xmm0, %xmm0
	jmp	.L4354
	.p2align 4,,10
.L4425:
	movl	80(%rsp), %r11d
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm0
	movl	448(%rsp), %eax
	movapd	%xmm0, %xmm2
	movq	%xmm0, %r8
	leal	1(%r11), %r10d
	addl	%r10d, %eax
	cltd
	idivl	%ebx
	movslq	%edx, %rdx
	imulq	%r9, %rdx
	movl	%r10d, %r9d
	cvtss2sd	(%rcx,%rdx), %xmm1
	leaq	.LC197(%rip), %rcx
	movl	%r11d, %edx
	movsd	%xmm1, 32(%rsp)
	call	_ZN5ImGui10SetTooltipEPKcz
	movq	(%rdi), %rcx
	movslq	8(%rdi), %r9
	jmp	.L4353
	.p2align 4,,10
.L4400:
	leaq	.LC5(%rip), %rdx
	movl	$7159, %r8d
	leaq	.LC196(%rip), %rcx
	call	_assert
	movl	80(%rsp), %eax
	jmp	.L4356
	.p2align 4,,10
.L4342:
	movss	464(%rsp), %xmm4
	ucomiss	.LC90(%rip), %xmm4
	jp	.L4380
	jne	.L4380
	movss	.LC90(%rip), %xmm1
	movss	.LC192(%rip), %xmm10
	jmp	.L4378
.L4380:
	movl	$7, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	136(%rsp), %rdx
	movl	$1, %r9d
	movq	128(%rsp), %rcx
	movl	%eax, %r8d
	movss	5164(%r14), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	jmp	.L4351
.L4384:
	movss	%xmm10, 472(%rsp)
	jmp	.L4418
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i
	.def	_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i
_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i:
.LFB958:
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movl	176(%rsp), %eax
	movss	160(%rsp), %xmm0
	movl	%eax, 88(%rsp)
	movq	168(%rsp), %rax
	movss	%xmm0, 56(%rsp)
	movss	152(%rsp), %xmm0
	movq	%rdx, 80(%rsp)
	movq	%rcx, %rdx
	xorl	%ecx, %ecx
	movl	%r9d, 32(%rsp)
	movl	%r8d, %r9d
	movq	%rax, 64(%rsp)
	movq	144(%rsp), %rax
	leaq	80(%rsp), %r8
	movss	%xmm0, 48(%rsp)
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2.constprop.112
	nop
	addq	$104, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i
	.def	_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i
_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i:
.LFB960:
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movl	176(%rsp), %eax
	movss	160(%rsp), %xmm0
	movl	%eax, 88(%rsp)
	movq	168(%rsp), %rax
	movss	%xmm0, 56(%rsp)
	movss	152(%rsp), %xmm0
	movq	%rdx, 80(%rsp)
	movq	%rcx, %rdx
	movl	$1, %ecx
	movl	%r9d, 32(%rsp)
	movl	%r8d, %r9d
	movq	%rax, 64(%rsp)
	movq	144(%rsp), %rax
	leaq	80(%rsp), %r8
	movss	%xmm0, 48(%rsp)
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2.constprop.112
	nop
	addq	$104, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20PushMultiItemsWidthsif.constprop.130;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20PushMultiItemsWidthsif.constprop.130
_ZL20PushMultiItemsWidthsif.constprop.130:
.LFB6616:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	pxor	%xmm6, %xmm6
	movq	6008(%rsi), %rax
	movb	$1, 138(%rax)
	movq	6008(%rsi), %rbx
	call	_ZN5ImGui13CalcItemWidthEv
	movss	5176(%rsi), %xmm2
	movss	.LC115(%rip), %xmm3
	movaps	%xmm0, %xmm4
	movaps	%xmm2, %xmm1
	mulss	%xmm3, %xmm1
	subss	%xmm1, %xmm4
	movss	.LC109(%rip), %xmm1
	mulss	%xmm4, %xmm1
	cvttss2si	%xmm1, %eax
	movss	.LC18(%rip), %xmm1
	cvtsi2ss	%eax, %xmm6
	ucomiss	%xmm6, %xmm1
	jb	.L4429
	movaps	%xmm1, %xmm6
.L4429:
	addss	%xmm6, %xmm2
	pxor	%xmm7, %xmm7
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm7
	ucomiss	%xmm7, %xmm1
	jb	.L4431
	movaps	%xmm1, %xmm7
.L4431:
	movl	320(%rbx), %eax
	movl	324(%rbx), %esi
	cmpl	%esi, %eax
	je	.L4433
	movq	328(%rbx), %rdi
.L4434:
	leal	1(%rax), %ecx
	movslq	%eax, %rdx
	cmpl	%esi, %ecx
	movl	%ecx, 320(%rbx)
	movss	%xmm7, (%rdi,%rdx,4)
	je	.L4467
.L4439:
	leal	1(%rcx), %edx
	movslq	%ecx, %rax
	cmpl	%esi, %edx
	movl	%edx, 320(%rbx)
	movss	%xmm6, (%rdi,%rax,4)
	je	.L4468
.L4445:
	leal	1(%rdx), %eax
	movslq	%edx, %rcx
	cmpl	%eax, %esi
	movl	%eax, 320(%rbx)
	movss	%xmm6, (%rdi,%rcx,4)
	je	.L4469
.L4451:
	leal	1(%rax), %edx
	cltq
	testl	%edx, %edx
	movl	%edx, 320(%rbx)
	movss	%xmm6, (%rdi,%rax,4)
	jle	.L4470
.L4456:
	movslq	%edx, %rdx
	movss	-4(%rdi,%rdx,4), %xmm0
	movss	%xmm0, 308(%rbx)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L4467:
	addl	$2, %eax
	testl	%esi, %esi
	jne	.L4440
	movl	$8, %esi
.L4444:
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L4465
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L4465
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
.L4443:
	call	*240(%rax)
	movq	%rdi, 328(%rbx)
	movl	320(%rbx), %ecx
	movl	%esi, 324(%rbx)
	jmp	.L4439
	.p2align 4,,10
.L4469:
	addl	$2, %edx
	testl	%esi, %esi
	movl	$8, %eax
	jne	.L4471
.L4452:
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movslq	%eax, %rcx
	movq	GImGui(%rip), %rax
	movq	%rcx, %rsi
	salq	$2, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4455
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4455
	subl	$1, 844(%rax)
.L4455:
	call	*240(%rax)
	movq	%rdi, 328(%rbx)
	movl	320(%rbx), %eax
	movl	%esi, 324(%rbx)
	jmp	.L4451
	.p2align 4,,10
.L4468:
	addl	$2, %ecx
	testl	%esi, %esi
	jne	.L4446
	movl	$8, %esi
.L4450:
	cmpl	%ecx, %esi
	movq	GImGui(%rip), %rax
	cmovl	%ecx, %esi
	movslq	%esi, %rcx
	addl	$1, 844(%rax)
	salq	$2, %rcx
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L4466
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L4466
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
.L4449:
	call	*240(%rax)
	movq	%rdi, 328(%rbx)
	movl	320(%rbx), %edx
	movl	%esi, 324(%rbx)
	jmp	.L4445
	.p2align 4,,10
.L4433:
	leal	1(%rax), %esi
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L4472
.L4435:
	cmpl	%edx, %esi
	movq	GImGui(%rip), %rax
	cmovl	%edx, %esi
	movslq	%esi, %rcx
	addl	$1, 844(%rax)
	salq	$2, %rcx
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4438
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4438
	subl	$1, 844(%rax)
.L4438:
	call	*240(%rax)
	movq	%rdi, 328(%rbx)
	movl	320(%rbx), %eax
	movl	%esi, 324(%rbx)
	jmp	.L4434
	.p2align 4,,10
.L4470:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	328(%rbx), %rdi
	movl	320(%rbx), %edx
	jmp	.L4456
	.p2align 4,,10
.L4446:
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	%eax, %esi
	jmp	.L4450
	.p2align 4,,10
.L4440:
	movl	%esi, %edx
	shrl	$31, %edx
	addl	%esi, %edx
	sarl	%edx
	addl	%edx, %esi
	jmp	.L4444
	.p2align 4,,10
.L4471:
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	%esi, %eax
	jmp	.L4452
	.p2align 4,,10
.L4472:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L4435
	.p2align 4,,10
.L4466:
	movq	GImGui(%rip), %rax
	jmp	.L4449
	.p2align 4,,10
.L4465:
	movq	GImGui(%rip), %rax
	jmp	.L4443
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20PushMultiItemsWidthsif.constprop.131;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20PushMultiItemsWidthsif.constprop.131
_ZL20PushMultiItemsWidthsif.constprop.131:
.LFB6615:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	pxor	%xmm6, %xmm6
	movq	6008(%rsi), %rax
	movb	$1, 138(%rax)
	movq	6008(%rsi), %rbx
	call	_ZN5ImGui13CalcItemWidthEv
	movss	5176(%rsi), %xmm2
	movaps	%xmm0, %xmm3
	movaps	%xmm2, %xmm1
	addss	%xmm2, %xmm1
	subss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	divss	.LC115(%rip), %xmm1
	cvttss2si	%xmm1, %eax
	movss	.LC18(%rip), %xmm1
	cvtsi2ss	%eax, %xmm6
	ucomiss	%xmm6, %xmm1
	jb	.L4474
	movaps	%xmm1, %xmm6
.L4474:
	addss	%xmm6, %xmm2
	pxor	%xmm7, %xmm7
	addss	%xmm2, %xmm2
	subss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm7
	ucomiss	%xmm7, %xmm1
	jb	.L4476
	movaps	%xmm1, %xmm7
.L4476:
	movl	320(%rbx), %eax
	movl	324(%rbx), %esi
	cmpl	%esi, %eax
	je	.L4478
	movq	328(%rbx), %rdi
.L4479:
	leal	1(%rax), %edx
	movslq	%eax, %rcx
	cmpl	%esi, %edx
	movl	%edx, 320(%rbx)
	movss	%xmm7, (%rdi,%rcx,4)
	je	.L4505
.L4484:
	leal	1(%rdx), %eax
	movslq	%edx, %rcx
	cmpl	%esi, %eax
	movl	%eax, 320(%rbx)
	movss	%xmm6, (%rdi,%rcx,4)
	je	.L4506
.L4490:
	leal	1(%rax), %edx
	cltq
	testl	%edx, %edx
	movl	%edx, 320(%rbx)
	movss	%xmm6, (%rdi,%rax,4)
	jle	.L4507
.L4495:
	movslq	%edx, %rdx
	movss	-4(%rdi,%rdx,4), %xmm0
	movss	%xmm0, 308(%rbx)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L4505:
	addl	$2, %eax
	testl	%esi, %esi
	jne	.L4485
	movl	$8, %esi
.L4489:
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L4504
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L4504
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
.L4488:
	call	*240(%rax)
	movq	%rdi, 328(%rbx)
	movl	320(%rbx), %edx
	movl	%esi, 324(%rbx)
	jmp	.L4484
	.p2align 4,,10
.L4506:
	addl	$2, %edx
	testl	%esi, %esi
	movl	$8, %eax
	jne	.L4508
.L4491:
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movslq	%eax, %rcx
	movq	GImGui(%rip), %rax
	movq	%rcx, %rsi
	salq	$2, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4494
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4494
	subl	$1, 844(%rax)
.L4494:
	call	*240(%rax)
	movq	%rdi, 328(%rbx)
	movl	320(%rbx), %eax
	movl	%esi, 324(%rbx)
	jmp	.L4490
	.p2align 4,,10
.L4478:
	leal	1(%rax), %esi
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L4509
.L4480:
	cmpl	%edx, %esi
	movq	GImGui(%rip), %rax
	cmovl	%edx, %esi
	movslq	%esi, %rcx
	addl	$1, 844(%rax)
	salq	$2, %rcx
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4483
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4483
	subl	$1, 844(%rax)
.L4483:
	call	*240(%rax)
	movq	%rdi, 328(%rbx)
	movl	320(%rbx), %eax
	movl	%esi, 324(%rbx)
	jmp	.L4479
	.p2align 4,,10
.L4507:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	328(%rbx), %rdi
	movl	320(%rbx), %edx
	jmp	.L4495
	.p2align 4,,10
.L4485:
	movl	%esi, %edx
	shrl	$31, %edx
	addl	%esi, %edx
	sarl	%edx
	addl	%edx, %esi
	jmp	.L4489
	.p2align 4,,10
.L4508:
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	%esi, %eax
	jmp	.L4491
	.p2align 4,,10
.L4509:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L4480
	.p2align 4,,10
.L4504:
	movq	GImGui(%rip), %rax
	jmp	.L4488
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20PushMultiItemsWidthsif.constprop.132;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20PushMultiItemsWidthsif.constprop.132
_ZL20PushMultiItemsWidthsif.constprop.132:
.LFB6614:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	pxor	%xmm6, %xmm6
	movq	6008(%rsi), %rax
	movb	$1, 138(%rax)
	movq	6008(%rsi), %rbx
	call	_ZN5ImGui13CalcItemWidthEv
	movss	5176(%rsi), %xmm2
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	mulss	.LC17(%rip), %xmm1
	cvttss2si	%xmm1, %eax
	movss	.LC18(%rip), %xmm1
	cvtsi2ss	%eax, %xmm6
	ucomiss	%xmm6, %xmm1
	jb	.L4511
	movaps	%xmm1, %xmm6
.L4511:
	addss	%xmm6, %xmm2
	pxor	%xmm7, %xmm7
	subss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm7
	ucomiss	%xmm7, %xmm1
	jb	.L4513
	movaps	%xmm1, %xmm7
.L4513:
	movl	320(%rbx), %edx
	movl	324(%rbx), %esi
	cmpl	%esi, %edx
	je	.L4515
	movq	328(%rbx), %rdi
.L4516:
	leal	1(%rdx), %eax
	movslq	%edx, %rcx
	cmpl	%esi, %eax
	movl	%eax, 320(%rbx)
	movss	%xmm7, (%rdi,%rcx,4)
	je	.L4538
.L4521:
	leal	1(%rax), %edx
	cltq
	testl	%edx, %edx
	movl	%edx, 320(%rbx)
	movss	%xmm6, (%rdi,%rax,4)
	jle	.L4539
.L4529:
	movslq	%edx, %rdx
	movss	-4(%rdi,%rdx,4), %xmm0
	movss	%xmm0, 308(%rbx)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L4538:
	addl	$2, %edx
	testl	%esi, %esi
	jne	.L4522
	movl	$8, %esi
.L4528:
	cmpl	%edx, %esi
	movq	GImGui(%rip), %rax
	cmovl	%edx, %esi
	movslq	%esi, %rcx
	addl	$1, 844(%rax)
	salq	$2, %rcx
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L4536
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L4536
	movq	GImGui(%rip), %rax
	subl	$1, 844(%rax)
.L4525:
	call	*240(%rax)
	movq	%rdi, 328(%rbx)
	movl	320(%rbx), %eax
	movl	%esi, 324(%rbx)
	jmp	.L4521
	.p2align 4,,10
.L4515:
	leal	1(%rdx), %esi
	testl	%edx, %edx
	movl	$8, %eax
	jne	.L4540
.L4517:
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4520
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4520
	subl	$1, 844(%rax)
.L4520:
	call	*240(%rax)
	movq	%rdi, 328(%rbx)
	movl	320(%rbx), %edx
	movl	%esi, 324(%rbx)
	jmp	.L4516
	.p2align 4,,10
.L4539:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	328(%rbx), %rdi
	movl	320(%rbx), %edx
	jmp	.L4529
	.p2align 4,,10
.L4540:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	jmp	.L4517
	.p2align 4,,10
.L4522:
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	%eax, %esi
	jmp	.L4528
	.p2align 4,,10
.L4536:
	movq	GImGui(%rip), %rax
	jmp	.L4525
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20PushMultiItemsWidthsif.constprop.133;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20PushMultiItemsWidthsif.constprop.133
_ZL20PushMultiItemsWidthsif.constprop.133:
.LFB6613:
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
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	GImGui(%rip), %rdi
	pxor	%xmm6, %xmm6
	movq	6008(%rdi), %rax
	movl	%ecx, %esi
	leal	-1(%rsi), %ebp
	movb	$1, 138(%rax)
	movq	6008(%rdi), %rbx
	call	_ZN5ImGui13CalcItemWidthEv
	pxor	%xmm4, %xmm4
	cvtsi2ss	%ebp, %xmm4
	movss	5176(%rdi), %xmm2
	movaps	%xmm0, %xmm5
	pxor	%xmm3, %xmm3
	cvtsi2ss	%esi, %xmm3
	movaps	%xmm2, %xmm1
	mulss	%xmm4, %xmm1
	subss	%xmm1, %xmm5
	movaps	%xmm5, %xmm1
	divss	%xmm3, %xmm1
	cvttss2si	%xmm1, %eax
	movss	.LC18(%rip), %xmm1
	cvtsi2ss	%eax, %xmm6
	ucomiss	%xmm6, %xmm1
	jb	.L4542
	movaps	%xmm1, %xmm6
.L4542:
	addss	%xmm6, %xmm2
	pxor	%xmm7, %xmm7
	mulss	%xmm4, %xmm2
	subss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm7
	ucomiss	%xmm7, %xmm1
	jb	.L4544
	movaps	%xmm1, %xmm7
.L4544:
	movslq	320(%rbx), %rdx
	movl	324(%rbx), %esi
	cmpl	%esi, %edx
	je	.L4546
	movq	328(%rbx), %r12
.L4547:
	leal	1(%rdx), %eax
	testl	%ebp, %ebp
	movl	%eax, 320(%rbx)
	movss	%xmm7, (%r12,%rdx,4)
	jle	.L4552
	xorl	%edi, %edi
	jmp	.L4558
	.p2align 4,,10
.L4553:
	leal	1(%rdx), %eax
	addl	$1, %edi
	cmpl	%ebp, %edi
	movl	%eax, 320(%rbx)
	movss	%xmm6, (%r12,%rdx,4)
	je	.L4552
.L4558:
	cmpl	%esi, %eax
	movslq	%eax, %rdx
	jne	.L4553
	leal	1(%rax), %esi
	testl	%eax, %eax
	movl	$8, %edx
	je	.L4554
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L4554:
	cmpl	%edx, %esi
	movq	GImGui(%rip), %rax
	cmovl	%edx, %esi
	movslq	%esi, %rcx
	addl	$1, 844(%rax)
	salq	$2, %rcx
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %r12
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4557
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4557
	subl	$1, 844(%rax)
.L4557:
	call	*240(%rax)
	movq	%r12, 328(%rbx)
	movslq	320(%rbx), %rdx
	movl	%esi, 324(%rbx)
	jmp	.L4553
	.p2align 4,,10
.L4552:
	testl	%eax, %eax
	jle	.L4570
.L4559:
	cltq
	movss	-4(%r12,%rax,4), %xmm0
	movss	%xmm0, 308(%rbx)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L4546:
	leal	1(%rdx), %esi
	testl	%edx, %edx
	movl	$8, %eax
	jne	.L4571
.L4548:
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %r12
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4551
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4551
	subl	$1, 844(%rax)
.L4551:
	call	*240(%rax)
	movq	%r12, 328(%rbx)
	movslq	320(%rbx), %rdx
	movl	%esi, 324(%rbx)
	jmp	.L4547
	.p2align 4,,10
.L4570:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	328(%rbx), %r12
	movl	320(%rbx), %eax
	jmp	.L4559
	.p2align 4,,10
.L4571:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	jmp	.L4548
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f
	.def	_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f
_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f:
.LFB652:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm2, %xmm2
	pxor	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm2
	movq	%rcx, %rsi
	ja	.L4572
	movq	GImGui(%rip), %rax
	ucomiss	%xmm2, %xmm1
	movq	6008(%rax), %rbx
	jp	.L4574
	je	.L4583
.L4574:
	ucomiss	%xmm2, %xmm1
	jbe	.L4578
	movss	28(%rbx), %xmm0
	subss	96(%rbx), %xmm0
	addss	%xmm0, %xmm1
.L4578:
	movaps	%xmm1, %xmm0
	subss	(%rsi), %xmm0
	movss	.LC18(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jnb	.L4572
	movaps	%xmm1, %xmm0
.L4572:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4583:
	cmpl	$1, 444(%rbx)
	je	.L4584
	movl	440(%rbx), %eax
	leal	1(%rax), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	movaps	%xmm0, %xmm1
	subss	84(%rbx), %xmm1
.L4577:
	addss	28(%rbx), %xmm1
	jmp	.L4578
	.p2align 4,,10
.L4584:
	movss	76(%rbx), %xmm1
	jmp	.L4577
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14GetColumnWidthEi
	.def	_ZN5ImGui14GetColumnWidthEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14GetColumnWidthEi
_ZN5ImGui14GetColumnWidthEi:
.LFB1063:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	testl	%ecx, %ecx
	movl	%ecx, %ebx
	jns	.L4586
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movl	440(%rax), %ebx
.L4586:
	leal	1(%rbx), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	movl	%ebx, %ecx
	movaps	%xmm0, %xmm6
	call	_ZN5ImGui15GetColumnOffsetEi
	subss	%xmm0, %xmm6
	movaps	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6IndentEf
	.def	_ZN5ImGui6IndentEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6IndentEf
_ZN5ImGui6IndentEf:
.LFB1066:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	ucomiss	.LC0(%rip), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	movss	428(%rax), %xmm1
	ja	.L4588
	movss	5192(%rdx), %xmm0
.L4588:
	addss	%xmm1, %xmm0
	movss	%xmm0, 428(%rax)
	addss	28(%rax), %xmm0
	addss	436(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8UnindentEf
	.def	_ZN5ImGui8UnindentEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8UnindentEf
_ZN5ImGui8UnindentEf:
.LFB1067:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movaps	%xmm0, %xmm1
	ucomiss	.LC0(%rip), %xmm1
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	movss	428(%rax), %xmm0
	ja	.L4590
	movss	5192(%rdx), %xmm1
.L4590:
	subss	%xmm1, %xmm0
	movss	%xmm0, 428(%rax)
	addss	28(%rax), %xmm0
	addss	436(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC203:
	.ascii "#TreePush\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8TreePushEPKc
	.def	_ZN5ImGui8TreePushEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8TreePushEPKc
_ZN5ImGui8TreePushEPKc:
.LFB1068:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r8
	movb	$1, 138(%r8)
	movq	6008(%rdx), %rax
	movss	428(%rax), %xmm0
	addss	5192(%rdx), %xmm0
	movss	%xmm0, 428(%rax)
	addss	28(%rax), %xmm0
	addss	436(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	leaq	.LC203(%rip), %rax
	addl	$1, 244(%r8)
	testq	%rcx, %rcx
	cmove	%rax, %rcx
	jmp	_ZN5ImGui6PushIDEPKc
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8TreePushEPKv
	.def	_ZN5ImGui8TreePushEPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8TreePushEPKv
_ZN5ImGui8TreePushEPKv:
.LFB1069:
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
	movq	GImGui(%rip), %rax
	movq	%rcx, %rdx
	movq	6008(%rax), %rcx
	movb	$1, 138(%rcx)
	movq	6008(%rax), %rcx
	movb	$1, 138(%rcx)
	movq	6008(%rax), %r8
	movss	428(%r8), %xmm0
	addss	5192(%rax), %xmm0
	movss	%xmm0, 428(%r8)
	addss	28(%r8), %xmm0
	addss	436(%r8), %xmm0
	movss	%xmm0, 192(%r8)
	addl	$1, 244(%rcx)
	testq	%rdx, %rdx
	leaq	.LC203(%rip), %rcx
	cmove	%rcx, %rdx
	movq	6008(%rax), %rcx
	movb	$1, 138(%rcx)
	movq	6008(%rax), %rbx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKv
	movl	%eax, %ebp
	movslq	496(%rbx), %rax
	cmpl	500(%rbx), %eax
	je	.L4595
	movq	504(%rbx), %rsi
.L4596:
	leal	1(%rax), %edx
	movl	%edx, 496(%rbx)
	movl	%ebp, (%rsi,%rax,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L4595:
	leal	1(%rax), %edi
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L4605
.L4597:
	cmpl	%edx, %edi
	movq	GImGui(%rip), %rax
	cmovl	%edx, %edi
	movslq	%edi, %rcx
	addl	$1, 844(%rax)
	salq	$2, %rcx
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4600
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4600
	subl	$1, 844(%rax)
.L4600:
	call	*240(%rax)
	movq	%rsi, 504(%rbx)
	movslq	496(%rbx), %rax
	movl	%edi, 500(%rbx)
	jmp	.L4596
	.p2align 4,,10
.L4605:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L4597
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13TreePushRawIDEj
	.def	_ZN5ImGui13TreePushRawIDEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13TreePushRawIDEj
_ZN5ImGui13TreePushRawIDEj:
.LFB1070:
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
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movl	%ecx, %edi
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rbx
	movb	$1, 138(%rbx)
	movq	6008(%rdx), %rax
	movss	428(%rax), %xmm0
	addss	5192(%rdx), %xmm0
	movss	%xmm0, 428(%rax)
	addss	28(%rax), %xmm0
	addss	436(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movslq	496(%rbx), %rax
	addl	$1, 244(%rbx)
	cmpl	500(%rbx), %eax
	je	.L4607
	movq	504(%rbx), %rsi
.L4608:
	leal	1(%rax), %edx
	movl	%edx, 496(%rbx)
	movl	%edi, (%rsi,%rax,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L4607:
	leal	1(%rax), %ebp
	testl	%eax, %eax
	movl	$8, %ecx
	jne	.L4616
.L4609:
	cmpl	%ecx, %ebp
	cmovl	%ecx, %ebp
	addl	$1, 844(%rdx)
	movslq	%ebp, %rcx
	salq	$2, %rcx
	call	*232(%rdx)
	movq	504(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4612
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4612
	subl	$1, 844(%rax)
.L4612:
	call	*240(%rax)
	movq	%rsi, 504(%rbx)
	movslq	496(%rbx), %rax
	movl	%ebp, 500(%rbx)
	jmp	.L4608
	.p2align 4,,10
.L4616:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	jmp	.L4609
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7TreePopEv
	.def	_ZN5ImGui7TreePopEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7TreePopEv
_ZN5ImGui7TreePopEv:
.LFB1071:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rcx
	movb	$1, 138(%rcx)
	movq	6008(%rdx), %rax
	movss	428(%rax), %xmm0
	subss	5192(%rdx), %xmm0
	movss	%xmm0, 428(%rax)
	addss	28(%rax), %xmm0
	addss	436(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	subl	$1, 244(%rcx)
	jmp	_ZN5ImGui5PopIDEv
	.seh_endproc
	.section .rdata,"dr"
.LC204:
	.ascii "true\0"
.LC205:
	.ascii "false\0"
.LC206:
	.ascii "%s: %s\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui5ValueEPKcb
	.def	_ZN5ImGui5ValueEPKcb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ValueEPKcb
_ZN5ImGui5ValueEPKcb:
.LFB1072:
	.seh_endprologue
	leaq	.LC205(%rip), %rax
	leaq	.LC204(%rip), %r8
	testb	%dl, %dl
	movq	%rcx, %rdx
	cmove	%rax, %r8
	leaq	.LC206(%rip), %rcx
	jmp	_ZN5ImGui4TextEPKcz
	.seh_endproc
	.section .rdata,"dr"
.LC207:
	.ascii "%s: %d\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui5ValueEPKci
	.def	_ZN5ImGui5ValueEPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ValueEPKci
_ZN5ImGui5ValueEPKci:
.LFB1073:
	.seh_endprologue
	movl	%edx, %r8d
	movq	%rcx, %rdx
	leaq	.LC207(%rip), %rcx
	jmp	_ZN5ImGui4TextEPKcz
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5ValueEPKcj
	.def	_ZN5ImGui5ValueEPKcj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ValueEPKcj
_ZN5ImGui5ValueEPKcj:
.LFB1074:
	.seh_endprologue
	movl	%edx, %r8d
	movq	%rcx, %rdx
	leaq	.LC207(%rip), %rcx
	jmp	_ZN5ImGui4TextEPKcz
	.seh_endproc
	.section .rdata,"dr"
.LC208:
	.ascii "%%s: %s\0"
.LC209:
	.ascii "%s: %.3f\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui5ValueEPKcfS1_
	.def	_ZN5ImGui5ValueEPKcfS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ValueEPKcfS1_
_ZN5ImGui5ValueEPKcfS1_:
.LFB1075:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rbx
	movaps	%xmm1, %xmm6
	je	.L4624
	leaq	32(%rsp), %rsi
	movq	%r8, %r9
	movl	$64, %edx
	leaq	.LC208(%rip), %r8
	movq	%rsi, %rcx
	call	_Z14ImFormatStringPciPKcz
	cvtss2sd	%xmm6, %xmm6
	movq	%rbx, %rdx
	movapd	%xmm6, %xmm2
	movq	%xmm6, %r8
	movq	%rsi, %rcx
	call	_ZN5ImGui4TextEPKcz
	nop
	movaps	96(%rsp), %xmm6
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4624:
	movq	%rcx, %rdx
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm1, %xmm6
	movapd	%xmm6, %xmm2
	leaq	.LC209(%rip), %rcx
	movq	%xmm6, %r8
	call	_ZN5ImGui4TextEPKcz
	nop
	movaps	96(%rsp), %xmm6
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section	.text$_ZN8ImVectorI6ImVec2E9push_backERKS0_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	.def	_ZN8ImVectorI6ImVec2E9push_backERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorI6ImVec2E9push_backERKS0_
_ZN8ImVectorI6ImVec2E9push_backERKS0_:
.LFB6282:
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
	je	.L4627
	movq	8(%rcx), %rsi
.L4628:
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
.L4627:
	leal	1(%rax), %edi
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L4636
.L4629:
	cmpl	%edx, %edi
	movq	GImGui(%rip), %rax
	cmovl	%edx, %edi
	movslq	%edi, %rcx
	addl	$1, 844(%rax)
	salq	$3, %rcx
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4632
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4632
	subl	$1, 844(%rax)
.L4632:
	call	*240(%rax)
	movq	%rsi, 8(%rbx)
	movslq	(%rbx), %rax
	movl	%edi, 4(%rbx)
	jmp	.L4628
	.p2align 4,,10
.L4636:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L4629
	.seh_endproc
	.section	.text$_ZN8ImVectorItE6resizeEi,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorItE6resizeEi
	.def	_ZN8ImVectorItE6resizeEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorItE6resizeEi
_ZN8ImVectorItE6resizeEi:
.LFB6357:
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
	movl	4(%rcx), %eax
	cmpl	%edx, %eax
	movq	%rcx, %rbx
	movl	%edx, %edi
	jge	.L4638
	testl	%eax, %eax
	movl	$8, %esi
	je	.L4639
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
.L4639:
	cmpl	%esi, %edi
	jl	.L4648
	movl	%edi, %esi
.L4640:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rbp
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4643
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4643
	subl	$1, 844(%rax)
.L4643:
	call	*240(%rax)
	movq	%rbp, 8(%rbx)
	movl	%esi, 4(%rbx)
.L4638:
	movl	%edi, (%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L4648:
	cmpl	%esi, %eax
	jl	.L4640
	jmp	.L4638
	.seh_endproc
	.section .rdata,"dr"
.LC210:
	.ascii "it >= Data && it <= Data+Size\0"
	.section	.text$_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
	.def	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_:
.LFB6363:
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
	movq	8(%rcx), %rsi
	cmpq	%rdx, %rsi
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%r8, %rbp
	ja	.L4650
	movslq	(%rcx), %rax
	movq	%rax, %r9
	salq	$4, %rax
	addq	%rsi, %rax
	cmpq	%rax, %rdx
	ja	.L4650
	subq	%rsi, %r12
	movq	%r12, %rdi
	sarq	$4, %rdi
	cmpl	%r9d, 4(%rbx)
	je	.L4661
.L4652:
	leaq	(%rsi,%r12), %rax
	movslq	%r9d, %r8
	cmpq	%rdi, %r8
	jle	.L4657
	leaq	1(%rdi), %rcx
	subq	%rdi, %r8
	movq	%rax, %rdx
	movq	%rcx, %rdi
	salq	$4, %r8
	salq	$4, %rdi
	leaq	(%rsi,%rdi), %rcx
	call	memmove
	movq	8(%rbx), %rax
	movl	(%rbx), %r9d
	addq	%r12, %rax
.L4657:
	movq	0(%rbp), %r11
	addl	$1, %r9d
	movq	8(%rbp), %r12
	movq	%r11, (%rax)
	movq	%r12, 8(%rax)
	movl	%r9d, (%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L4650:
	leaq	.LC2(%rip), %rdx
	movl	$888, %r8d
	leaq	.LC210(%rip), %rcx
	call	_assert
	movq	8(%rbx), %rsi
	movl	(%rbx), %r9d
	subq	%rsi, %r12
	movq	%r12, %rdi
	sarq	$4, %rdi
	cmpl	%r9d, 4(%rbx)
	jne	.L4652
.L4661:
	testl	%r9d, %r9d
	jne	.L4662
	movl	$64, %ecx
	movl	$4, %r13d
.L4653:
	movq	GImGui(%rip), %rax
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4656
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4656
	subl	$1, 844(%rax)
.L4656:
	call	*240(%rax)
	movq	%rsi, 8(%rbx)
	movl	(%rbx), %r9d
	movl	%r13d, 4(%rbx)
	jmp	.L4652
	.p2align 4,,10
.L4662:
	leal	(%r9,%r9), %r13d
	cmpl	%r13d, %r9d
	jge	.L4652
	movslq	%r13d, %rcx
	salq	$4, %rcx
	jmp	.L4653
	.seh_endproc
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage9GetIntRefEji
	.def	_ZN12ImGuiStorage9GetIntRefEji;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage9GetIntRefEji
_ZN12ImGuiStorage9GetIntRefEji:
.LFB598:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movslq	(%rcx), %rbx
	movq	8(%rcx), %rax
	salq	$4, %rbx
	leaq	(%rax,%rbx), %rsi
	sarq	$4, %rbx
.L4668:
	testl	%ebx, %ebx
	jle	.L4664
	movl	%ebx, %r10d
	sarl	%r10d
	movslq	%r10d, %r9
	salq	$4, %r9
	addq	%rax, %r9
	cmpl	(%r9), %edx
	jbe	.L4666
	jmp	.L4676
	.p2align 4,,10
.L4675:
	movl	%r10d, %r11d
	sarl	%r11d
	movslq	%r11d, %r9
	salq	$4, %r9
	addq	%rax, %r9
	cmpl	(%r9), %edx
	ja	.L4665
	movl	%r11d, %r10d
.L4666:
	testl	%r10d, %r10d
	jne	.L4675
.L4664:
	cmpq	%rax, %rsi
	je	.L4669
	cmpl	%edx, (%rax)
	je	.L4670
.L4669:
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	movl	%r8d, 40(%rsp)
	leaq	32(%rsp), %r8
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
.L4670:
	addq	$8, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4676:
	movl	%r10d, %r11d
	movl	%ebx, %r10d
	.p2align 4,,10
.L4665:
	leaq	16(%r9), %rax
	addl	$1, %r11d
	movl	%r10d, %ebx
	subl	%r11d, %ebx
	jmp	.L4668
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage11GetFloatRefEjf
	.def	_ZN12ImGuiStorage11GetFloatRefEjf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage11GetFloatRefEjf
_ZN12ImGuiStorage11GetFloatRefEjf:
.LFB600:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movslq	(%rcx), %r11
	movq	8(%rcx), %rax
	salq	$4, %r11
	leaq	(%rax,%r11), %rbx
	sarq	$4, %r11
.L4682:
	testl	%r11d, %r11d
	jle	.L4678
	movl	%r11d, %r9d
	sarl	%r9d
	movslq	%r9d, %r8
	salq	$4, %r8
	addq	%rax, %r8
	cmpl	(%r8), %edx
	jbe	.L4680
	jmp	.L4690
	.p2align 4,,10
.L4689:
	movl	%r9d, %r10d
	sarl	%r10d
	movslq	%r10d, %r8
	salq	$4, %r8
	addq	%rax, %r8
	cmpl	(%r8), %edx
	ja	.L4679
	movl	%r10d, %r9d
.L4680:
	testl	%r9d, %r9d
	jne	.L4689
.L4678:
	cmpq	%rax, %rbx
	je	.L4683
	cmpl	%edx, (%rax)
	je	.L4684
.L4683:
	movl	%edx, 32(%rsp)
	leaq	32(%rsp), %r8
	movq	%rax, %rdx
	movss	%xmm2, 40(%rsp)
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
.L4684:
	addq	$8, %rax
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L4690:
	movl	%r9d, %r10d
	movl	%r11d, %r9d
	.p2align 4,,10
.L4679:
	leaq	16(%r8), %rax
	addl	$1, %r10d
	movl	%r9d, %r11d
	subl	%r10d, %r11d
	jmp	.L4682
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage13GetVoidPtrRefEjPv
	.def	_ZN12ImGuiStorage13GetVoidPtrRefEjPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage13GetVoidPtrRefEjPv
_ZN12ImGuiStorage13GetVoidPtrRefEjPv:
.LFB601:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movslq	(%rcx), %rbx
	movq	8(%rcx), %rax
	salq	$4, %rbx
	leaq	(%rax,%rbx), %rsi
	sarq	$4, %rbx
.L4696:
	testl	%ebx, %ebx
	jle	.L4692
	movl	%ebx, %r10d
	sarl	%r10d
	movslq	%r10d, %r9
	salq	$4, %r9
	addq	%rax, %r9
	cmpl	(%r9), %edx
	jbe	.L4694
	jmp	.L4704
	.p2align 4,,10
.L4703:
	movl	%r10d, %r11d
	sarl	%r11d
	movslq	%r11d, %r9
	salq	$4, %r9
	addq	%rax, %r9
	cmpl	(%r9), %edx
	ja	.L4693
	movl	%r11d, %r10d
.L4694:
	testl	%r10d, %r10d
	jne	.L4703
.L4692:
	cmpq	%rax, %rsi
	je	.L4697
	cmpl	%edx, (%rax)
	je	.L4698
.L4697:
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	movq	%r8, 40(%rsp)
	leaq	32(%rsp), %r8
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
.L4698:
	addq	$8, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4704:
	movl	%r10d, %r11d
	movl	%ebx, %r10d
	.p2align 4,,10
.L4693:
	leaq	16(%r9), %rax
	addl	$1, %r11d
	movl	%r10d, %ebx
	subl	%r11d, %ebx
	jmp	.L4696
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage6SetIntEji
	.def	_ZN12ImGuiStorage6SetIntEji;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage6SetIntEji
_ZN12ImGuiStorage6SetIntEji:
.LFB602:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movslq	(%rcx), %rbx
	movq	8(%rcx), %r11
	salq	$4, %rbx
	leaq	(%r11,%rbx), %rsi
	sarq	$4, %rbx
.L4710:
	testl	%ebx, %ebx
	jle	.L4706
	movl	%ebx, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	jbe	.L4708
	jmp	.L4718
	.p2align 4,,10
.L4717:
	movl	%r9d, %r10d
	sarl	%r10d
	movslq	%r10d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	ja	.L4707
	movl	%r10d, %r9d
.L4708:
	testl	%r9d, %r9d
	jne	.L4717
.L4706:
	cmpq	%r11, %rsi
	je	.L4711
	cmpl	%edx, (%r11)
	je	.L4719
.L4711:
	movl	%edx, 32(%rsp)
	movq	%r11, %rdx
	movl	%r8d, 40(%rsp)
	leaq	32(%rsp), %r8
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4718:
	movl	%r9d, %r10d
	movl	%ebx, %r9d
	.p2align 4,,10
.L4707:
	leaq	16(%rax), %r11
	addl	$1, %r10d
	movl	%r9d, %ebx
	subl	%r10d, %ebx
	jmp	.L4710
	.p2align 4,,10
.L4719:
	movl	%r8d, 8(%r11)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22TreeNodeBehaviorIsOpenEji
	.def	_ZN5ImGui22TreeNodeBehaviorIsOpenEji;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22TreeNodeBehaviorIsOpenEji
_ZN5ImGui22TreeNodeBehaviorIsOpenEji:
.LFB890:
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
	testb	$1, %dh
	movl	%edx, %esi
	jne	.L4721
	movq	GImGui(%rip), %rbx
	movl	6300(%rbx), %eax
	movq	6008(%rbx), %rdi
	testl	%eax, %eax
	movq	296(%rdi), %r9
	je	.L4722
	testb	$1, %al
	jne	.L4730
	movslq	(%r9), %rbp
	movq	8(%r9), %r10
	salq	$4, %rbp
	leaq	(%r10,%rbp), %r11
	sarq	$4, %rbp
.L4729:
	testl	%ebp, %ebp
	jle	.L4725
	movl	%ebp, %edx
	sarl	%edx
	movslq	%edx, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %ecx
	jbe	.L4727
	jmp	.L4750
	.p2align 4,,10
.L4748:
	movl	%edx, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %ecx
	ja	.L4726
	movl	%r8d, %edx
.L4727:
	testl	%edx, %edx
	jne	.L4748
.L4725:
	cmpq	%r10, %r11
	je	.L4730
	cmpl	(%r10), %ecx
	jne	.L4730
	movl	8(%r10), %eax
	cmpl	$-1, %eax
	je	.L4730
	testl	%eax, %eax
	setne	%al
	jmp	.L4724
	.p2align 4,,10
.L4730:
	movzbl	6298(%rbx), %r8d
	movl	%ecx, %edx
	movq	%r9, %rcx
	movb	%r8b, 47(%rsp)
	call	_ZN12ImGuiStorage6SetIntEji
	movzbl	47(%rsp), %eax
.L4724:
	movl	$0, 6300(%rbx)
.L4732:
	cmpb	$0, 11432(%rbx)
	je	.L4720
	andl	$16, %esi
	jne	.L4720
	movl	11460(%rbx), %esi
	cmpl	%esi, 244(%rdi)
	jge	.L4720
	.p2align 4,,10
.L4721:
	movl	$1, %eax
.L4720:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L4722:
	movslq	(%r9), %rbp
	movl	%edx, %r11d
	movq	8(%r9), %r10
	sarl	$5, %r11d
	andl	$1, %r11d
	salq	$4, %rbp
	leaq	(%r10,%rbp), %r9
	sarq	$4, %rbp
.L4737:
	testl	%ebp, %ebp
	jle	.L4733
	movl	%ebp, %edx
	sarl	%edx
	movslq	%edx, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %ecx
	jbe	.L4735
	jmp	.L4751
	.p2align 4,,10
.L4749:
	movl	%edx, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %ecx
	ja	.L4734
	movl	%r8d, %edx
.L4735:
	testl	%edx, %edx
	jne	.L4749
.L4733:
	cmpq	%r10, %r9
	je	.L4738
	cmpl	(%r10), %ecx
	jne	.L4738
	movl	8(%r10), %r11d
.L4738:
	testl	%r11d, %r11d
	setne	%al
	jmp	.L4732
	.p2align 4,,10
.L4750:
	movl	%edx, %r8d
	movl	%ebp, %edx
	.p2align 4,,10
.L4726:
	leaq	16(%rax), %r10
	addl	$1, %r8d
	subl	%r8d, %edx
	movl	%edx, %ebp
	jmp	.L4729
	.p2align 4,,10
.L4751:
	movl	%edx, %r8d
	movl	%ebp, %edx
	.p2align 4,,10
.L4734:
	leaq	16(%rax), %r10
	addl	$1, %r8d
	subl	%r8d, %edx
	movl	%edx, %ebp
	jmp	.L4737
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage8SetFloatEjf
	.def	_ZN12ImGuiStorage8SetFloatEjf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage8SetFloatEjf
_ZN12ImGuiStorage8SetFloatEjf:
.LFB604:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movslq	(%rcx), %r11
	movq	8(%rcx), %r10
	salq	$4, %r11
	leaq	(%r10,%r11), %rbx
	sarq	$4, %r11
.L4757:
	testl	%r11d, %r11d
	jle	.L4753
	movl	%r11d, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %edx
	jbe	.L4755
	jmp	.L4765
	.p2align 4,,10
.L4764:
	movl	%r8d, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %edx
	ja	.L4754
	movl	%r9d, %r8d
.L4755:
	testl	%r8d, %r8d
	jne	.L4764
.L4753:
	cmpq	%r10, %rbx
	je	.L4758
	cmpl	%edx, (%r10)
	je	.L4766
.L4758:
	movl	%edx, 32(%rsp)
	leaq	32(%rsp), %r8
	movq	%r10, %rdx
	movss	%xmm2, 40(%rsp)
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L4765:
	movl	%r8d, %r9d
	movl	%r11d, %r8d
	.p2align 4,,10
.L4754:
	leaq	16(%rax), %r10
	addl	$1, %r9d
	movl	%r8d, %r11d
	subl	%r9d, %r11d
	jmp	.L4757
	.p2align 4,,10
.L4766:
	movss	%xmm2, 8(%r10)
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage10SetVoidPtrEjPv
	.def	_ZN12ImGuiStorage10SetVoidPtrEjPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage10SetVoidPtrEjPv
_ZN12ImGuiStorage10SetVoidPtrEjPv:
.LFB605:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movslq	(%rcx), %rbx
	movq	8(%rcx), %r11
	salq	$4, %rbx
	leaq	(%r11,%rbx), %rsi
	sarq	$4, %rbx
.L4772:
	testl	%ebx, %ebx
	jle	.L4768
	movl	%ebx, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	jbe	.L4770
	jmp	.L4780
	.p2align 4,,10
.L4779:
	movl	%r9d, %r10d
	sarl	%r10d
	movslq	%r10d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	ja	.L4769
	movl	%r10d, %r9d
.L4770:
	testl	%r9d, %r9d
	jne	.L4779
.L4768:
	cmpq	%r11, %rsi
	je	.L4773
	cmpl	%edx, (%r11)
	je	.L4781
.L4773:
	movl	%edx, 32(%rsp)
	movq	%r11, %rdx
	movq	%r8, 40(%rsp)
	leaq	32(%rsp), %r8
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4780:
	movl	%r9d, %r10d
	movl	%ebx, %r9d
	.p2align 4,,10
.L4769:
	leaq	16(%rax), %r11
	addl	$1, %r10d
	movl	%r9d, %ebx
	subl	%r10d, %ebx
	jmp	.L4772
	.p2align 4,,10
.L4781:
	movq	%r8, 8(%r11)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage10GetBoolRefEjb
	.def	_ZN12ImGuiStorage10GetBoolRefEjb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage10GetBoolRefEjb
_ZN12ImGuiStorage10GetBoolRefEjb:
.LFB599:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movslq	(%rcx), %rbx
	movq	8(%rcx), %rax
	salq	$4, %rbx
	leaq	(%rax,%rbx), %rsi
	sarq	$4, %rbx
.L4787:
	testl	%ebx, %ebx
	jle	.L4783
	movl	%ebx, %r10d
	sarl	%r10d
	movslq	%r10d, %r9
	salq	$4, %r9
	addq	%rax, %r9
	cmpl	(%r9), %edx
	jbe	.L4785
	jmp	.L4795
	.p2align 4,,10
.L4794:
	movl	%r10d, %r11d
	sarl	%r11d
	movslq	%r11d, %r9
	salq	$4, %r9
	addq	%rax, %r9
	cmpl	(%r9), %edx
	ja	.L4784
	movl	%r11d, %r10d
.L4785:
	testl	%r10d, %r10d
	jne	.L4794
.L4783:
	cmpq	%rax, %rsi
	je	.L4788
	cmpl	(%rax), %edx
	je	.L4789
.L4788:
	movzbl	%r8b, %r8d
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	movl	%r8d, 40(%rsp)
	leaq	32(%rsp), %r8
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
.L4789:
	addq	$8, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4795:
	movl	%r10d, %r11d
	movl	%ebx, %r10d
	.p2align 4,,10
.L4784:
	leaq	16(%r9), %rax
	addl	$1, %r11d
	movl	%r10d, %ebx
	subl	%r11d, %ebx
	jmp	.L4787
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15SetColumnOffsetEif
	.def	_ZN5ImGui15SetColumnOffsetEif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15SetColumnOffsetEif
_ZN5ImGui15SetColumnOffsetEif:
.LFB1062:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	testl	%ecx, %ecx
	movl	%ecx, %ebx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rsi
	jns	.L4797
	movl	440(%rsi), %ebx
.L4797:
	cmpl	%ebx, 480(%rsi)
	jle	.L4812
	movss	448(%rsi), %xmm2
	movss	452(%rsi), %xmm0
	subss	%xmm2, %xmm1
	subss	%xmm2, %xmm0
	movaps	%xmm1, %xmm6
	divss	%xmm0, %xmm6
.L4799:
	movq	296(%rsi), %rcx
	movslq	%ebx, %rdx
	movq	488(%rsi), %rax
	addl	472(%rsi), %ebx
	movslq	(%rcx), %r11
	movss	%xmm6, (%rax,%rdx,4)
	movq	8(%rcx), %rdx
	movl	%ebx, %r10d
	salq	$4, %r11
	leaq	(%rdx,%r11), %rbx
	sarq	$4, %r11
.L4804:
	testl	%r11d, %r11d
	jle	.L4800
	movl	%r11d, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	cmpl	(%rax), %r10d
	jbe	.L4802
	jmp	.L4813
	.p2align 4,,10
.L4811:
	movl	%r8d, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	cmpl	(%rax), %r10d
	ja	.L4801
	movl	%r9d, %r8d
.L4802:
	testl	%r8d, %r8d
	jne	.L4811
.L4800:
	cmpq	%rdx, %rbx
	je	.L4805
	cmpl	(%rdx), %r10d
	je	.L4814
.L4805:
	leaq	48(%rsp), %r8
	movss	%xmm6, 56(%rsp)
	movl	%r10d, 48(%rsp)
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
	nop
	movaps	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4813:
	movl	%r8d, %r9d
	movl	%r11d, %r8d
	.p2align 4,,10
.L4801:
	leaq	16(%rax), %rdx
	addl	$1, %r9d
	movl	%r8d, %r11d
	subl	%r9d, %r11d
	jmp	.L4804
	.p2align 4,,10
.L4812:
	movl	$9407, %r8d
	movss	%xmm1, 44(%rsp)
	leaq	.LC5(%rip), %rdx
	leaq	.LC188(%rip), %rcx
	call	_assert
	movss	44(%rsp), %xmm1
	movss	448(%rsi), %xmm2
	movss	452(%rsi), %xmm0
	movaps	%xmm1, %xmm6
	cmpl	480(%rsi), %ebx
	subss	%xmm2, %xmm6
	subss	%xmm2, %xmm0
	divss	%xmm0, %xmm6
	jl	.L4799
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L4799
	.p2align 4,,10
.L4814:
	movss	%xmm6, 8(%rdx)
	movaps	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage7SetBoolEjb
	.def	_ZN12ImGuiStorage7SetBoolEjb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage7SetBoolEjb
_ZN12ImGuiStorage7SetBoolEjb:
.LFB603:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movslq	(%rcx), %rbx
	movq	8(%rcx), %r11
	salq	$4, %rbx
	movzbl	%r8b, %r8d
	leaq	(%r11,%rbx), %rsi
	sarq	$4, %rbx
.L4820:
	testl	%ebx, %ebx
	jle	.L4816
	movl	%ebx, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	jbe	.L4818
	jmp	.L4828
	.p2align 4,,10
.L4827:
	movl	%r9d, %r10d
	sarl	%r10d
	movslq	%r10d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	ja	.L4817
	movl	%r10d, %r9d
.L4818:
	testl	%r9d, %r9d
	jne	.L4827
.L4816:
	cmpq	%r11, %rsi
	je	.L4821
	cmpl	(%r11), %edx
	je	.L4829
.L4821:
	movl	%edx, 32(%rsp)
	movq	%r11, %rdx
	movl	%r8d, 40(%rsp)
	leaq	32(%rsp), %r8
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L4828:
	movl	%r9d, %r10d
	movl	%ebx, %r9d
	.p2align 4,,10
.L4817:
	leaq	16(%rax), %r11
	addl	$1, %r10d
	movl	%r9d, %ebx
	subl	%r10d, %ebx
	jmp	.L4820
	.p2align 4,,10
.L4829:
	movl	%r8d, 8(%r11)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section	.text$_ZN8ImVectorIcE6resizeEi,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorIcE6resizeEi
	.def	_ZN8ImVectorIcE6resizeEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIcE6resizeEi
_ZN8ImVectorIcE6resizeEi:
.LFB6373:
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
	movl	4(%rcx), %eax
	cmpl	%edx, %eax
	movq	%rcx, %rbx
	movl	%edx, %edi
	jge	.L4831
	testl	%eax, %eax
	movl	$8, %esi
	je	.L4832
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
.L4832:
	cmpl	%esi, %edi
	jl	.L4841
	movl	%edi, %esi
.L4833:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rbp
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4836
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4836
	subl	$1, 844(%rax)
.L4836:
	call	*240(%rax)
	movq	%rbp, 8(%rbx)
	movl	%esi, 4(%rbx)
.L4831:
	movl	%edi, (%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L4841:
	cmpl	%esi, %eax
	jl	.L4833
	jmp	.L4831
	.seh_endproc
	.section	.text$_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_
	.def	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_
_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_:
.LFB6400:
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
	je	.L4843
	movq	8(%rcx), %rsi
.L4844:
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
.L4843:
	leal	1(%rax), %edi
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L4852
.L4845:
	cmpl	%edx, %edi
	movq	GImGui(%rip), %rax
	cmovl	%edx, %edi
	movslq	%edi, %rcx
	addl	$1, 844(%rax)
	salq	$3, %rcx
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4848
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4848
	subl	$1, 844(%rax)
.L4848:
	call	*240(%rax)
	movq	%rsi, 8(%rbx)
	movslq	(%rbx), %rax
	movl	%edi, 4(%rbx)
	jmp	.L4844
	.p2align 4,,10
.L4852:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L4845
	.seh_endproc
	.section	.text$_ZN8ImVectorIP11ImGuiWindowE7reserveEi,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorIP11ImGuiWindowE7reserveEi
	.def	_ZN8ImVectorIP11ImGuiWindowE7reserveEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIP11ImGuiWindowE7reserveEi
_ZN8ImVectorIP11ImGuiWindowE7reserveEi:
.LFB6407:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	cmpl	%edx, 4(%rcx)
	movq	%rcx, %rbx
	movl	%edx, %esi
	jge	.L4853
	movq	GImGui(%rip), %rax
	movslq	%edx, %rcx
	salq	$3, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4857
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4857
	subl	$1, 844(%rax)
.L4857:
	call	*240(%rax)
	movq	%rdi, 8(%rbx)
	movl	%esi, 4(%rbx)
.L4853:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC211:
	.ascii "it >= Data && it < Data+Size\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	.def	_ZN5ImGui11FocusWindowEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11FocusWindowEP11ImGuiWindow
_ZN5ImGui11FocusWindowEP11ImGuiWindow:
.LFB774:
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
	movq	GImGui(%rip), %rdi
	testq	%rcx, %rcx
	movq	%rcx, 6032(%rdi)
	je	.L4859
	movq	664(%rcx), %rsi
	testq	%rsi, %rsi
	cmove	%rcx, %rsi
	movl	12(%rsi), %ebx
	testl	$33554432, %ebx
	je	.L4863
	movl	6068(%rdi), %eax
	testl	%eax, %eax
	je	.L4863
	movq	6088(%rdi), %rax
	testq	%rax, %rax
	je	.L4863
	cmpq	%rsi, 664(%rax)
	je	.L4863
	movl	$0, 6068(%rdi)
	movb	$0, 6078(%rdi)
	movb	$1, 6077(%rdi)
	movq	$0, 6088(%rdi)
	movl	12(%rsi), %ebx
	.p2align 4,,10
.L4863:
	andl	$8192, %ebx
	je	.L4887
.L4859:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L4887:
	movl	5976(%rdi), %eax
	testl	%eax, %eax
	jle	.L4888
	movq	5984(%rdi), %rcx
	movslq	%eax, %r8
	leaq	0(,%r8,8), %r9
	cmpq	%rsi, -8(%rcx,%r9)
	je	.L4859
.L4875:
	cmpq	%rsi, (%rcx)
	leaq	8(%rcx), %rdx
	jne	.L4869
	jmp	.L4889
	.p2align 4,,10
.L4872:
	movq	%rdx, %rbp
	cmpq	%rsi, (%rdx)
	leaq	8(%rdx), %rdx
	je	.L4890
.L4869:
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jg	.L4872
.L4866:
	cmpl	%eax, 5980(%rdi)
	je	.L4891
.L4873:
	movq	5984(%rdi), %rdx
	leal	1(%rax), %ecx
	cltq
	movl	%ecx, 5976(%rdi)
	movq	%rsi, (%rdx,%rax,8)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L4890:
	cmpq	%rcx, %rbp
	jb	.L4870
.L4867:
	addq	%rcx, %r9
	cmpq	%r9, %rbp
	jb	.L4871
.L4870:
	leaq	.LC211(%rip), %rcx
	movl	$887, %r8d
	leaq	.LC2(%rip), %rdx
	call	_assert
	movq	5984(%rdi), %rcx
	movslq	5976(%rdi), %r8
.L4871:
	movq	%rbp, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	leaq	8(%rcx,%rax,8), %rdx
	subq	%rax, %r8
	movq	%rbp, %rcx
	leaq	-8(,%r8,8), %r8
	call	memmove
	movl	5976(%rdi), %eax
	subl	$1, %eax
	movl	%eax, 5976(%rdi)
	jmp	.L4866
	.p2align 4,,10
.L4891:
	leal	1(%rax), %ecx
	testl	%eax, %eax
	movl	$8, %edx
	je	.L4874
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L4874:
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	leaq	5976(%rdi), %rcx
	call	_ZN8ImVectorIP11ImGuiWindowE7reserveEi
	movl	5976(%rdi), %eax
	jmp	.L4873
	.p2align 4,,10
.L4888:
	leaq	.LC4(%rip), %rcx
	movl	$866, %r8d
	leaq	.LC2(%rip), %rdx
	call	_assert
	movslq	5976(%rdi), %r8
	movq	5984(%rdi), %rcx
	leaq	0(,%r8,8), %r9
	movq	%r8, %rax
	cmpq	%rsi, -8(%rcx,%r9)
	je	.L4859
	testl	%r8d, %r8d
	jg	.L4875
	jmp	.L4866
	.p2align 4,,10
.L4889:
	movq	%rcx, %rbp
	jmp	.L4867
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14SetWindowFocusEv
	.def	_ZN5ImGui14SetWindowFocusEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14SetWindowFocusEv
_ZN5ImGui14SetWindowFocusEv:
.LFB820:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rcx
	jmp	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14SetWindowFocusEPKc
	.def	_ZN5ImGui14SetWindowFocusEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14SetWindowFocusEPKc
_ZN5ImGui14SetWindowFocusEPKc:
.LFB821:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rcx, %rcx
	je	.L4894
	call	_ZN5ImGui16FindWindowByNameEPKc
	testq	%rax, %rax
	je	.L4893
	movq	%rax, %rcx
	addq	$40, %rsp
	jmp	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	.p2align 4,,10
.L4894:
	movq	GImGui(%rip), %rax
	movq	$0, 6032(%rax)
.L4893:
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	.def	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i:
.LFB877:
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
	movq	GImGui(%rip), %rbx
	movl	160(%rsp), %esi
	movq	6008(%rbx), %rax
	movq	%rbx, %r14
	testb	$-128, %sil
	movl	%edx, %edi
	movq	%r8, %r13
	movq	%r9, %rbp
	movb	$1, 138(%rax)
	je	.L4900
	testq	%r8, %r8
	je	.L4901
	movb	$0, (%r8)
.L4901:
	testq	%rbp, %rbp
	je	.L4902
	movb	$0, 0(%rbp)
.L4902:
	xorl	%r12d, %r12d
	cmpl	%edi, 6068(%rbx)
	je	.L4991
.L4899:
	movl	%r12d, %eax
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
.L4900:
	movl	%esi, %eax
	movq	%rcx, 32(%rsp)
	orl	$2, %eax
	testb	$30, %sil
	cmove	%eax, %esi
	movl	%esi, %r8d
	shrl	$5, %r8d
	andl	$1, %r8d
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	movl	%eax, %r15d
	je	.L4905
	testl	$512, %esi
	movq	6008(%rbx), %rax
	movl	%edi, 6056(%rbx)
	movb	$0, 6060(%rbx)
	movq	32(%rsp), %r10
	jne	.L4992
.L4906:
	testb	$2, %sil
	je	.L4910
	cmpb	$0, 876(%rbx)
	je	.L4911
	testl	%edi, %edi
	movl	%edi, 6068(%rbx)
	movb	$0, 6078(%rbx)
	movb	$1, 6077(%rbx)
	je	.L4912
	movb	$1, 6076(%rbx)
.L4912:
	movq	%rax, 6088(%rbx)
	movq	%rax, %rcx
	movq	%r10, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movq	40(%rsp), %r10
	movss	268(%rbx), %xmm0
	movss	264(%rbx), %xmm1
	movq	32(%rsp), %rax
	subss	4(%r10), %xmm0
	subss	(%r10), %xmm1
	movss	%xmm0, 6084(%rbx)
	movss	%xmm1, 6080(%rbx)
.L4910:
	testb	$4, %sil
	je	.L4911
	cmpb	$0, 876(%rbx)
	je	.L4911
.L4914:
	movq	GImGui(%rip), %rdx
	movq	%rax, %rcx
	movl	%r15d, %r12d
	movl	$0, 6068(%rdx)
	movb	$0, 6078(%rdx)
	movb	$1, 6077(%rdx)
	movq	$0, 6088(%rdx)
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
.L4913:
	movl	%esi, %eax
	andl	$1, %eax
	testb	$8, %sil
	je	.L4915
	movzbl	949(%rbx), %edx
	testb	%dl, %dl
	je	.L4915
	testl	%eax, %eax
	je	.L4916
	movss	980(%rbx), %xmm0
	ucomiss	128(%rbx), %xmm0
	cmovnb	%r12d, %edx
.L4916:
	movq	GImGui(%rip), %rbx
	movl	%edx, %r12d
	movl	$0, 6068(%rbx)
	movb	$0, 6078(%rbx)
	movb	$1, 6077(%rbx)
	movq	$0, 6088(%rbx)
.L4915:
	testl	%eax, %eax
	movl	6068(%r14), %edx
	je	.L4909
	xorl	%eax, %eax
	cmpl	%edx, %edi
	je	.L4993
	.p2align 4,,10
.L4918:
	andl	$1024, %esi
	movl	$1, %r15d
	je	.L4924
	movl	6064(%r14), %edx
	cmpl	%edi, %edx
	je	.L4937
	testl	%edx, %edx
	jne	.L4928
.L4937:
	movl	$1, %r15d
	jmp	.L4924
	.p2align 4,,10
.L4905:
	cmpl	6068(%rbx), %edi
	jne	.L4928
	movzbl	272(%rbx), %r12d
	testb	%r12b, %r12b
	jne	.L4994
.L4922:
	xorl	%eax, %eax
	testb	%r15b, %r15b
	movl	$0, 6068(%rbx)
	movb	$0, 6078(%rbx)
	movb	$1, 6077(%rbx)
	movq	$0, 6088(%rbx)
	jne	.L4918
	.p2align 4,,10
.L4924:
	testq	%r13, %r13
	je	.L4925
	movb	%r15b, 0(%r13)
.L4925:
	testq	%rbp, %rbp
	je	.L4899
	movb	%al, 0(%rbp)
	jmp	.L4899
	.p2align 4,,10
.L4991:
	movl	$0, 6068(%rbx)
	movb	$0, 6078(%rbx)
	movb	$1, 6077(%rbx)
	movq	$0, 6088(%rbx)
	jmp	.L4899
	.p2align 4,,10
.L4992:
	movzbl	285(%rbx), %r12d
	testb	%r12b, %r12b
	jne	.L4907
	cmpb	$0, 286(%rbx)
	jne	.L4990
	cmpb	$0, 287(%rbx)
	je	.L4906
.L4990:
	movl	6068(%r14), %edx
.L4909:
	cmpl	%edx, %edi
	je	.L4929
	xorl	%eax, %eax
	jmp	.L4918
	.p2align 4,,10
.L4928:
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	jmp	.L4924
	.p2align 4,,10
.L4911:
	xorl	%r12d, %r12d
	testb	$16, %sil
	je	.L4913
	movzbl	944(%rbx), %r12d
	testb	%r12b, %r12b
	jne	.L4914
	jmp	.L4913
	.p2align 4,,10
.L4994:
	movl	%r12d, %eax
	xorl	%r12d, %r12d
	jmp	.L4924
	.p2align 4,,10
.L4907:
	movl	6068(%rbx), %edx
	xorl	%r12d, %r12d
	jmp	.L4909
	.p2align 4,,10
.L4993:
	movss	960(%r14), %xmm0
	ucomiss	.LC0(%rip), %xmm0
	ja	.L4995
.L4929:
	movzbl	272(%r14), %eax
	testb	%al, %al
	jne	.L4918
	testb	$2, %sil
	movq	GImGui(%rip), %rbx
	je	.L4922
	testb	$1, %sil
	je	.L4933
	movss	980(%r14), %xmm0
	ucomiss	128(%r14), %xmm0
	cmovb	%r15d, %r12d
	jmp	.L4922
	.p2align 4,,10
.L4995:
	movl	$1, %edx
	xorl	%ecx, %ecx
	call	_ZN5ImGui14IsMouseClickedEib
	movl	6068(%r14), %edx
	testb	%al, %al
	je	.L4909
	movl	%eax, %r12d
	jmp	.L4909
	.p2align 4,,10
.L4933:
	movl	%r15d, %r12d
	jmp	.L4922
	.seh_endproc
	.section .rdata,"dr"
.LC212:
	.ascii "#SCROLLX\0"
.LC213:
	.ascii "#SCROLLY\0"
	.text
	.p2align 4,,15
	.def	_ZL9ScrollbarP11ImGuiWindowb;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL9ScrollbarP11ImGuiWindowb
_ZL9ScrollbarP11ImGuiWindowb:
.LFB773:
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
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	testb	%dl, %dl
	movq	%rcx, %rbx
	movl	%edx, %edi
	je	.L5099
	leaq	.LC212(%rip), %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, %ebp
	movzbl	121(%rbx), %eax
	testb	%al, %al
	jne	.L5100
	movss	28(%rbx), %xmm1
	pxor	%xmm7, %xmm7
	pxor	%xmm6, %xmm6
	movss	36(%rbx), %xmm4
	movss	40(%rbx), %xmm0
	addss	%xmm1, %xmm4
	movss	132(%rbx), %xmm3
	addss	32(%rbx), %xmm0
.L5057:
	subss	%xmm6, %xmm4
	movaps	%xmm0, %xmm5
	subss	%xmm3, %xmm5
	subss	5200(%rsi), %xmm0
	subss	%xmm3, %xmm4
	addss	%xmm1, %xmm3
	movss	%xmm5, 92(%rsp)
	movss	%xmm0, 84(%rsp)
	movss	%xmm4, 88(%rsp)
	movss	%xmm3, 80(%rsp)
.L4999:
	subss	%xmm3, %xmm4
	ucomiss	%xmm4, %xmm7
	jnb	.L4996
	subss	%xmm0, %xmm5
	ucomiss	%xmm5, %xmm7
	jnb	.L4996
	movl	12(%rbx), %edx
	testl	$1048576, %edx
	je	.L5005
	movss	5152(%rsi), %xmm5
.L5006:
	testb	%dil, %dil
	je	.L5007
	cmpb	$1, %al
	sbbl	%r8d, %r8d
	andl	$4, %r8d
	addl	$8, %r8d
.L5008:
	leaq	80(%rsp), %r12
	movl	$14, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	656(%rbx), %rcx
	movq	%r12, %rdx
	movl	%eax, %r9d
	movl	%r8d, 40(%rsp)
	movss	%xmm5, 32(%rsp)
	leaq	8(%r12), %r8
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	92(%rsp), %xmm10
	pxor	%xmm0, %xmm0
	movss	84(%rsp), %xmm3
	movss	.LC170(%rip), %xmm9
	movaps	%xmm10, %xmm1
	movss	.LC17(%rip), %xmm8
	subss	%xmm3, %xmm1
	subss	%xmm9, %xmm1
	mulss	%xmm8, %xmm1
	cvttss2si	%xmm1, %eax
	cvtsi2ss	%eax, %xmm0
	ucomiss	%xmm0, %xmm7
	ja	.L5062
	ucomiss	.LC115(%rip), %xmm0
	ja	.L5101
	subss	%xmm0, %xmm10
.L5011:
	movss	88(%rsp), %xmm5
	pxor	%xmm1, %xmm1
	movss	80(%rsp), %xmm4
	movaps	%xmm5, %xmm2
	subss	%xmm4, %xmm2
	subss	%xmm9, %xmm2
	mulss	%xmm8, %xmm2
	cvttss2si	%xmm2, %eax
	cvtsi2ss	%eax, %xmm1
	ucomiss	%xmm1, %xmm7
	ja	.L5063
	ucomiss	.LC115(%rip), %xmm1
	jbe	.L5090
	movss	.LC115(%rip), %xmm1
	subss	%xmm1, %xmm5
.L5014:
	addss	%xmm3, %xmm0
	testb	%dil, %dil
	movss	%xmm5, 88(%rsp)
	movss	52(%rbx), %xmm11
	addss	%xmm4, %xmm1
	movss	%xmm10, 92(%rsp)
	movss	56(%rbx), %xmm2
	movss	96(%rbx), %xmm9
	movss	%xmm0, 84(%rsp)
	movss	100(%rbx), %xmm3
	movss	%xmm1, 80(%rsp)
	je	.L5017
	movss	36(%rbx), %xmm12
	subss	%xmm1, %xmm5
	subss	%xmm6, %xmm12
	movaps	%xmm5, %xmm10
.L5018:
	movaps	%xmm12, %xmm0
	movaps	%xmm11, %xmm1
	movaps	%xmm12, %xmm2
	movss	5208(%rsi), %xmm6
	cmpless	%xmm11, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm12, %xmm0
	orps	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	ucomiss	%xmm2, %xmm7
	movaps	%xmm2, %xmm0
	ja	.L5065
	movss	.LC18(%rip), %xmm13
	ucomiss	%xmm13, %xmm2
	jbe	.L5021
.L5072:
	movaps	%xmm10, %xmm6
.L5025:
	leaq	62(%rsp), %r9
	movl	%ebp, %edx
	movq	%r12, %rcx
	movb	$0, 62(%rsp)
	movl	6068(%rsi), %r13d
	leaq	63(%rsp), %r8
	movb	$0, 63(%rsp)
	movl	$0, 32(%rsp)
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	subss	%xmm12, %xmm11
	ucomiss	%xmm11, %xmm13
	jnb	.L5067
	divss	%xmm11, %xmm9
.L5027:
	ucomiss	%xmm9, %xmm7
	ja	.L5068
	movaps	%xmm13, %xmm3
	minss	%xmm9, %xmm3
	movaps	%xmm3, %xmm9
.L5028:
	movaps	%xmm10, %xmm2
	movzbl	62(%rsp), %eax
	subss	%xmm6, %xmm2
	movss	84(%rsp), %xmm12
	movss	80(%rsp), %xmm5
	mulss	%xmm2, %xmm9
	testb	%al, %al
	divss	%xmm10, %xmm9
	je	.L5030
	movaps	%xmm6, %xmm1
	movl	$17, %ecx
	divss	%xmm10, %xmm1
	ucomiss	%xmm1, %xmm13
	ja	.L5102
.L5031:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	testb	%dil, %dil
	movq	656(%rbx), %rcx
	movl	%eax, %r9d
	movss	5204(%rsi), %xmm2
	movss	92(%rsp), %xmm0
	movss	88(%rsp), %xmm1
	je	.L5051
	subss	%xmm5, %xmm1
	movss	%xmm0, 76(%rsp)
	movss	%xmm12, 68(%rsp)
	mulss	%xmm9, %xmm1
	addss	%xmm5, %xmm1
	addss	%xmm1, %xmm6
	movss	%xmm1, 64(%rsp)
	movss	%xmm6, 72(%rsp)
.L5098:
	leaq	64(%rsp), %rdx
	movl	$-1, 40(%rsp)
	movss	%xmm2, 32(%rsp)
	leaq	72(%rsp), %r8
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	nop
.L4996:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	movaps	128(%rsp), %xmm8
	movaps	144(%rsp), %xmm9
	movaps	160(%rsp), %xmm10
	movaps	176(%rsp), %xmm11
	movaps	192(%rsp), %xmm12
	movaps	208(%rsp), %xmm13
	addq	$232, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L5099:
	leaq	.LC213(%rip), %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, %ebp
	movzbl	120(%rbx), %eax
	testb	%al, %al
	je	.L5103
	movss	32(%rbx), %xmm1
	pxor	%xmm7, %xmm7
	movss	40(%rbx), %xmm5
	movss	5200(%rsi), %xmm6
	movss	36(%rbx), %xmm3
	addss	%xmm1, %xmm5
	addss	28(%rbx), %xmm3
	movaps	%xmm6, %xmm2
	movss	132(%rbx), %xmm0
.L5056:
	subss	%xmm6, %xmm5
	movl	12(%rbx), %edx
	movaps	%xmm3, %xmm4
	pxor	%xmm8, %xmm8
	subss	%xmm0, %xmm4
	subss	%xmm2, %xmm3
	subss	%xmm0, %xmm5
	testb	$1, %dl
	addss	%xmm1, %xmm0
	movss	%xmm4, 88(%rsp)
	movss	%xmm3, 80(%rsp)
	movss	%xmm5, 92(%rsp)
	jne	.L5000
	movq	GImGui(%rip), %rcx
	movss	5160(%rcx), %xmm8
	movss	5948(%rcx), %xmm1
	mulss	648(%rbx), %xmm1
	addss	%xmm8, %xmm8
	addss	%xmm1, %xmm8
.L5000:
	andb	$4, %dh
	pxor	%xmm1, %xmm1
	je	.L5001
	movq	GImGui(%rip), %rdx
	movss	5160(%rdx), %xmm1
	movss	5948(%rdx), %xmm2
	mulss	648(%rbx), %xmm2
	addss	%xmm1, %xmm1
	addss	%xmm2, %xmm1
.L5001:
	addss	%xmm8, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, 84(%rsp)
	jmp	.L4999
	.p2align 4,,10
.L5007:
	andl	$1025, %edx
	cmpl	$1, %edx
	sete	%dl
	movzbl	%dl, %r8d
	movzbl	%dl, %edx
	leal	4(%r8,%r8), %r8d
	addl	%edx, %edx
	testb	%al, %al
	cmovne	%edx, %r8d
	jmp	.L5008
	.p2align 4,,10
.L5005:
	movss	5140(%rsi), %xmm5
	jmp	.L5006
	.p2align 4,,10
.L5101:
	movss	.LC115(%rip), %xmm0
	subss	%xmm0, %xmm10
	jmp	.L5011
	.p2align 4,,10
.L5065:
	movss	.LC18(%rip), %xmm13
	pxor	%xmm0, %xmm0
.L5021:
	mulss	%xmm10, %xmm0
	ucomiss	%xmm6, %xmm0
	jb	.L5023
	movaps	%xmm0, %xmm6
.L5023:
	ucomiss	%xmm6, %xmm10
	ja	.L5025
	jmp	.L5072
	.p2align 4,,10
.L5051:
	subss	%xmm12, %xmm0
	movss	%xmm1, 72(%rsp)
	movss	%xmm5, 64(%rsp)
	mulss	%xmm9, %xmm0
	addss	%xmm12, %xmm0
	addss	%xmm0, %xmm6
	movss	%xmm0, 68(%rsp)
	movss	%xmm6, 76(%rsp)
	jmp	.L5098
	.p2align 4,,10
.L5030:
	cmpb	$1, 63(%rsp)
	sbbl	%ecx, %ecx
	addl	$16, %ecx
	jmp	.L5031
	.p2align 4,,10
.L5017:
	movss	40(%rbx), %xmm12
	subss	%xmm0, %xmm10
	movaps	%xmm3, %xmm9
	movaps	%xmm2, %xmm11
	subss	%xmm6, %xmm12
	jmp	.L5018
	.p2align 4,,10
.L5063:
	pxor	%xmm1, %xmm1
	jmp	.L5014
	.p2align 4,,10
.L5068:
	pxor	%xmm9, %xmm9
	jmp	.L5028
	.p2align 4,,10
.L5062:
	pxor	%xmm0, %xmm0
	jmp	.L5011
	.p2align 4,,10
.L5067:
	movaps	%xmm13, %xmm11
	jmp	.L5027
	.p2align 4,,10
.L5090:
	subss	%xmm1, %xmm5
	jmp	.L5014
	.p2align 4,,10
.L5102:
	testb	%dil, %dil
	movss	264(%rsi), %xmm0
	movss	268(%rsi), %xmm3
	leaq	10376(%rsi), %rcx
	je	.L5104
.L5034:
	subss	%xmm5, %xmm0
	divss	%xmm10, %xmm0
	ucomiss	%xmm0, %xmm7
	ja	.L5070
	movaps	%xmm13, %xmm3
	minss	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
.L5035:
	movq	GImGui(%rip), %rdx
	movaps	%xmm1, %xmm3
	cmpl	%ebp, %r13d
	mulss	%xmm8, %xmm3
	movl	%ebp, 6056(%rdx)
	movb	$0, 6060(%rdx)
	je	.L5105
	ucomiss	%xmm9, %xmm0
	jnb	.L5106
.L5039:
	movl	$0x00000000, (%rcx)
	movaps	%xmm0, %xmm4
.L5038:
	movaps	%xmm13, %xmm5
	subss	%xmm3, %xmm4
	subss	%xmm1, %xmm5
	movaps	%xmm11, %xmm1
	divss	%xmm5, %xmm4
	ucomiss	%xmm4, %xmm7
	ja	.L5107
	ucomiss	%xmm13, %xmm4
	ja	.L5044
	mulss	%xmm11, %xmm4
	movaps	%xmm4, %xmm1
.L5044:
	addss	%xmm1, %xmm8
	testb	%dil, %dil
	cvttss2si	%xmm8, %edx
	pxor	%xmm8, %xmm8
	cvtsi2ss	%edx, %xmm8
	je	.L5045
	movss	%xmm8, 96(%rbx)
.L5046:
	divss	%xmm11, %xmm8
	ucomiss	%xmm8, %xmm7
	ja	.L5108
	ucomiss	%xmm13, %xmm8
	ja	.L5049
	mulss	%xmm8, %xmm2
.L5049:
	divss	%xmm10, %xmm2
	testb	%al, %al
	movaps	%xmm2, %xmm9
	je	.L5097
	subss	%xmm2, %xmm0
	subss	%xmm3, %xmm0
	movss	%xmm0, (%rcx)
.L5097:
	movss	84(%rsp), %xmm12
	movl	$17, %ecx
	movss	80(%rsp), %xmm5
	jmp	.L5031
	.p2align 4,,10
.L5104:
	leaq	10380(%rsi), %rcx
	movaps	%xmm3, %xmm0
	movaps	%xmm12, %xmm5
	jmp	.L5034
	.p2align 4,,10
.L5106:
	movaps	%xmm1, %xmm4
	addss	%xmm9, %xmm4
	ucomiss	%xmm0, %xmm4
	jb	.L5039
	movaps	%xmm0, %xmm4
	movaps	%xmm0, %xmm5
	xorl	%eax, %eax
	subss	%xmm9, %xmm4
	subss	%xmm3, %xmm4
	subss	%xmm4, %xmm5
	movss	%xmm4, (%rcx)
	movaps	%xmm5, %xmm4
	jmp	.L5038
	.p2align 4,,10
.L5045:
	movss	%xmm8, 100(%rbx)
	jmp	.L5046
	.p2align 4,,10
.L5107:
	mulss	%xmm7, %xmm1
	jmp	.L5044
	.p2align 4,,10
.L5108:
	mulss	%xmm7, %xmm2
	jmp	.L5049
	.p2align 4,,10
.L5070:
	pxor	%xmm0, %xmm0
	jmp	.L5035
	.p2align 4,,10
.L5105:
	movaps	%xmm0, %xmm4
	subss	(%rcx), %xmm4
	xorl	%eax, %eax
	jmp	.L5038
.L5100:
	movss	28(%rbx), %xmm1
	pxor	%xmm7, %xmm7
	movss	36(%rbx), %xmm4
	movss	40(%rbx), %xmm0
	movss	5200(%rsi), %xmm6
	addss	%xmm1, %xmm4
	addss	32(%rbx), %xmm0
	movss	132(%rbx), %xmm3
	jmp	.L5057
.L5103:
	movss	32(%rbx), %xmm1
	pxor	%xmm7, %xmm7
	pxor	%xmm6, %xmm6
	movss	40(%rbx), %xmm5
	movss	36(%rbx), %xmm3
	addss	%xmm1, %xmm5
	movss	132(%rbx), %xmm0
	addss	28(%rbx), %xmm3
	movss	5200(%rsi), %xmm2
	jmp	.L5056
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	.def	_ZN5ImGui8ButtonExEPKcRK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
_ZN5ImGui8ButtonExEPKcRK6ImVec2i:
.LFB878:
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
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	movaps	%xmm7, 128(%rsp)
	.seh_savexmm	%xmm7, 128
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movq	%rcx, %rdi
	movq	%rdx, %r12
	movl	%r8d, %ebp
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rsi
	cmpb	$0, 140(%rsi)
	je	.L5110
.L5115:
	xorl	%esi, %esi
.L5109:
	movaps	112(%rsp), %xmm6
	movl	%esi, %eax
	movaps	128(%rsp), %xmm7
	addq	$152, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L5110:
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rdi, %rcx
	movss	.LC1(%rip), %xmm3
	movl	%eax, 68(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	testl	$256, %ebp
	movss	192(%rsi), %xmm7
	movq	%rax, 72(%rsp)
	movss	196(%rsi), %xmm6
	movss	5160(%rbx), %xmm2
	je	.L5113
	movss	228(%rsi), %xmm0
	ucomiss	%xmm2, %xmm0
	jbe	.L5113
	subss	%xmm2, %xmm0
	addss	%xmm0, %xmm6
.L5113:
	movq	(%r12), %rcx
	addss	%xmm2, %xmm2
	leaq	88(%rsp), %r13
	movss	5156(%rbx), %xmm1
	leaq	96(%rsp), %r12
	addss	76(%rsp), %xmm2
	addss	%xmm1, %xmm1
	addss	72(%rsp), %xmm1
	call	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	movss	5160(%rbx), %xmm1
	movq	%r13, %rcx
	movss	%xmm7, 96(%rsp)
	movq	%rax, %rdx
	movd	%eax, %xmm0
	movss	%xmm6, 100(%rsp)
	shrq	$32, %rdx
	addss	%xmm7, %xmm0
	movq	%rdx, %xmm2
	addss	%xmm6, %xmm2
	movss	%xmm0, 104(%rsp)
	subss	%xmm7, %xmm0
	movss	%xmm2, 108(%rsp)
	subss	%xmm6, %xmm2
	movss	%xmm0, 88(%rsp)
	movss	%xmm2, 92(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	68(%rsp), %rdx
	movq	%r12, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5115
	cmpb	$0, 317(%rsi)
	je	.L5116
	orl	$1, %ebp
.L5116:
	movl	68(%rsp), %edx
	movl	%ebp, 32(%rsp)
	leaq	67(%rsp), %r9
	movq	%r12, %rcx
	leaq	66(%rsp), %r8
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 66(%rsp)
	movl	$22, %ecx
	movl	%eax, %esi
	je	.L5117
	cmpb	$1, 67(%rsp)
	sbbl	%ecx, %ecx
	addl	$24, %ecx
.L5117:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	104(%rsp), %rdx
	movl	$1, %r9d
	addq	$5216, %rbx
	movq	96(%rsp), %rcx
	movl	%eax, %r8d
	movss	-52(%rbx), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movss	-56(%rbx), %xmm0
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	movss	108(%rsp), %xmm1
	leaq	72(%rsp), %rax
	movq	%r13, %rdx
	movss	104(%rsp), %xmm3
	leaq	80(%rsp), %rcx
	subss	%xmm0, %xmm1
	addss	100(%rsp), %xmm0
	movaps	%xmm1, %xmm2
	movss	-60(%rbx), %xmm1
	movq	%r12, 48(%rsp)
	movq	%rbx, 40(%rsp)
	subss	%xmm1, %xmm3
	movq	%rax, 32(%rsp)
	addss	96(%rsp), %xmm1
	movss	%xmm2, 92(%rsp)
	movss	%xmm0, 84(%rsp)
	movss	%xmm3, 88(%rsp)
	movss	%xmm1, 80(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	jmp	.L5109
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6ButtonEPKcRK6ImVec2
	.def	_ZN5ImGui6ButtonEPKcRK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6ButtonEPKcRK6ImVec2
_ZN5ImGui6ButtonEPKcRK6ImVec2:
.LFB879:
	.seh_endprologue
	xorl	%r8d, %r8d
	jmp	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11SmallButtonEPKc
	.def	_ZN5ImGui11SmallButtonEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11SmallButtonEPKc
_ZN5ImGui11SmallButtonEPKc:
.LFB880:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movl	$256, %r8d
	movss	5160(%rbx), %xmm6
	movl	$0x00000000, 5160(%rbx)
	movq	$0, 40(%rsp)
	leaq	40(%rsp), %rdx
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	movss	%xmm6, 5160(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2
	.def	_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2
_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2:
.LFB881:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rdx, %rsi
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	je	.L5127
.L5129:
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L5127:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movq	(%rsi), %rcx
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movl	%eax, 52(%rsp)
	call	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	movss	196(%rbx), %xmm2
	movq	%rax, %rsi
	movss	192(%rbx), %xmm3
	movd	%eax, %xmm0
	shrq	$32, %rsi
	movq	192(%rbx), %rax
	addss	%xmm3, %xmm0
	leaq	64(%rsp), %rbx
	movq	%rsi, %xmm1
	addss	%xmm2, %xmm1
	leaq	56(%rsp), %rsi
	movq	%rsi, %rcx
	movss	%xmm0, 72(%rsp)
	subss	%xmm3, %xmm0
	movss	%xmm1, 76(%rsp)
	subss	%xmm2, %xmm1
	movq	%rax, 64(%rsp)
	movss	%xmm0, 56(%rsp)
	movss	%xmm1, 60(%rsp)
	pxor	%xmm1, %xmm1
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	52(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5129
	movl	52(%rsp), %edx
	leaq	51(%rsp), %r8
	movq	%rsi, %r9
	movq	%rbx, %rcx
	movl	$0, 32(%rsp)
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11CloseButtonEjRK6ImVec2f
	.def	_ZN5ImGui11CloseButtonEjRK6ImVec2f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11CloseButtonEjRK6ImVec2f
_ZN5ImGui11CloseButtonEjRK6ImVec2f:
.LFB882:
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
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	(%rdx), %xmm1
	movss	4(%rdx), %xmm0
	leaq	55(%rsp), %r9
	movaps	%xmm2, %xmm6
	movaps	%xmm1, %xmm2
	subss	%xmm6, %xmm2
	leaq	54(%rsp), %r8
	movl	%ecx, %r10d
	movq	6008(%rax), %rcx
	addss	%xmm6, %xmm1
	movl	%r10d, %edx
	movss	%xmm2, 80(%rsp)
	movaps	%xmm0, %xmm2
	addss	%xmm6, %xmm0
	subss	%xmm6, %xmm2
	movb	$1, 138(%rcx)
	leaq	80(%rsp), %rcx
	movq	6008(%rax), %rbx
	movl	$0, 32(%rsp)
	movss	%xmm1, 88(%rsp)
	movss	%xmm2, 84(%rsp)
	movss	%xmm0, 92(%rsp)
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$1, 54(%rsp)
	movl	%eax, %esi
	sbbl	%ecx, %ecx
	cmpb	$0, 55(%rsp)
	je	.L5134
	andl	$-2, %ecx
	addl	$36, %ecx
.L5135:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	84(%rsp), %xmm0
	leaq	56(%rsp), %rdx
	addss	92(%rsp), %xmm0
	movl	%eax, %r9d
	movss	.LC17(%rip), %xmm2
	movss	80(%rsp), %xmm1
	mulss	%xmm2, %xmm0
	addss	88(%rsp), %xmm1
	movq	656(%rbx), %rcx
	movl	$12, 32(%rsp)
	mulss	%xmm2, %xmm1
	movaps	%xmm6, %xmm2
	movss	%xmm0, 60(%rsp)
	movss	.LC170(%rip), %xmm0
	cmpless	%xmm0, %xmm2
	movss	%xmm1, 56(%rsp)
	andps	%xmm2, %xmm0
	andnps	%xmm6, %xmm2
	orps	%xmm0, %xmm2
	call	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
	cmpb	$0, 54(%rsp)
	je	.L5133
	movss	.LC18(%rip), %xmm7
	leaq	72(%rsp), %rbp
	xorl	%ecx, %ecx
	movq	656(%rbx), %r10
	leaq	64(%rsp), %rdi
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	mulss	.LC214(%rip), %xmm6
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movss	56(%rsp), %xmm1
	movl	%eax, %r9d
	movss	%xmm7, 32(%rsp)
	movss	60(%rsp), %xmm0
	movaps	%xmm1, %xmm2
	movq	%r10, %rcx
	subss	%xmm7, %xmm6
	subss	%xmm6, %xmm2
	addss	%xmm6, %xmm1
	movss	%xmm2, 72(%rsp)
	movaps	%xmm0, %xmm2
	addss	%xmm6, %xmm0
	subss	%xmm6, %xmm2
	movss	%xmm1, 64(%rsp)
	movss	%xmm0, 68(%rsp)
	movss	%xmm2, 76(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	xorl	%ecx, %ecx
	movq	656(%rbx), %r10
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	56(%rsp), %xmm1
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movss	60(%rsp), %xmm0
	movl	%eax, %r9d
	movss	%xmm7, 32(%rsp)
	movaps	%xmm1, %xmm2
	addss	%xmm6, %xmm1
	subss	%xmm6, %xmm2
	movq	%r10, %rcx
	movss	%xmm1, 64(%rsp)
	movss	%xmm2, 72(%rsp)
	movaps	%xmm6, %xmm2
	addss	%xmm0, %xmm2
	subss	%xmm6, %xmm0
	movss	%xmm2, 76(%rsp)
	movss	%xmm0, 68(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	nop
.L5133:
	movaps	96(%rsp), %xmm6
	movl	%esi, %eax
	movaps	112(%rsp), %xmm7
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5134:
	addl	$35, %ecx
	jmp	.L5135
	.seh_endproc
	.section .rdata,"dr"
.LC215:
	.ascii "#image\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_
	.def	_ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_
_ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_:
.LFB884:
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
	subq	$176, %rsp
	.seh_stackalloc	176
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	movaps	%xmm7, 128(%rsp)
	.seh_savexmm	%xmm7, 128
	movaps	%xmm8, 144(%rsp)
	.seh_savexmm	%xmm8, 144
	movaps	%xmm9, 160(%rsp)
	.seh_savexmm	%xmm9, 160
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rax
	movq	%rcx, %rdi
	movq	%rdx, %r13
	movq	%r8, %rbp
	movq	%r9, %r12
	movb	$1, 138(%rax)
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	je	.L5142
.L5146:
	xorl	%r13d, %r13d
.L5141:
	movaps	112(%rsp), %xmm6
	movl	%r13d, %eax
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
	movaps	160(%rsp), %xmm9
	addq	$176, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L5142:
	call	_ZN5ImGui6PushIDEPKv
	leaq	.LC215(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, 68(%rsp)
	call	_ZN5ImGui5PopIDEv
	movl	272(%rsp), %eax
	testl	%eax, %eax
	js	.L5144
	pxor	%xmm6, %xmm6
	cvtsi2ss	272(%rsp), %xmm6
	movaps	%xmm6, %xmm7
.L5145:
	movss	4(%r13), %xmm8
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm2
	movaps	%xmm6, %xmm3
	addss	%xmm7, %xmm1
	movss	196(%rbx), %xmm4
	leaq	72(%rsp), %r14
	movss	192(%rbx), %xmm5
	addss	%xmm6, %xmm2
	movq	%r14, %rcx
	movaps	%xmm4, %xmm0
	movss	0(%r13), %xmm9
	addss	%xmm5, %xmm3
	movq	192(%rbx), %rax
	leaq	80(%rsp), %r13
	addss	%xmm8, %xmm0
	movss	%xmm3, 96(%rsp)
	addss	%xmm9, %xmm3
	addss	%xmm1, %xmm0
	movaps	%xmm5, %xmm1
	movq	%rax, 80(%rsp)
	addss	%xmm9, %xmm1
	movss	%xmm3, 104(%rsp)
	movss	%xmm0, 92(%rsp)
	subss	%xmm4, %xmm0
	addss	%xmm2, %xmm1
	movaps	%xmm7, %xmm2
	addss	%xmm4, %xmm2
	movss	%xmm0, 76(%rsp)
	movss	%xmm1, 88(%rsp)
	subss	%xmm5, %xmm1
	movss	%xmm2, 100(%rsp)
	addss	%xmm8, %xmm2
	movss	%xmm1, 72(%rsp)
	pxor	%xmm1, %xmm1
	movss	%xmm2, 108(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	68(%rsp), %rdx
	movq	%r13, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5146
	movl	68(%rsp), %edx
	leaq	67(%rsp), %r8
	movq	%r13, %rcx
	movq	%r14, %r9
	movl	$0, 32(%rsp)
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 67(%rsp)
	movl	$22, %ecx
	movl	%eax, %r13d
	je	.L5147
	cmpb	$1, 72(%rsp)
	sbbl	%ecx, %ecx
	addl	$24, %ecx
.L5147:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	minss	%xmm7, %xmm6
	pxor	%xmm7, %xmm7
	movss	5164(%rsi), %xmm0
	movl	%eax, %r8d
	ucomiss	%xmm6, %xmm7
	ja	.L5154
	minss	%xmm6, %xmm0
.L5149:
	movq	88(%rsp), %rdx
	movss	%xmm0, 32(%rsp)
	leaq	96(%rsp), %rsi
	movl	$1, %r9d
	movq	80(%rsp), %rcx
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movq	280(%rsp), %rax
	movss	12(%rax), %xmm0
	ucomiss	%xmm7, %xmm0
	jbe	.L5150
	leaq	96(%rsp), %rsi
	movq	%rax, %rcx
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	movq	656(%rbx), %rcx
	leaq	104(%rsp), %r8
	movq	%rsi, %rdx
	movl	%eax, %r9d
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
.L5150:
	movq	288(%rsp), %rcx
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	leaq	8(%rsi), %r9
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	656(%rbx), %rcx
	movl	%eax, 48(%rsp)
	movq	%r12, 40(%rsp)
	movq	%rbp, 32(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	jmp	.L5141
	.p2align 4,,10
.L5144:
	movss	5156(%rsi), %xmm6
	movss	5160(%rsi), %xmm7
	jmp	.L5145
	.p2align 4,,10
.L5154:
	pxor	%xmm0, %xmm0
	jmp	.L5149
	.seh_endproc
	.section .rdata,"dr"
.LC218:
	.ascii ">\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.def	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_:
.LFB891:
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
	movaps	%xmm6, 160(%rsp)
	.seh_savexmm	%xmm6, 160
	movaps	%xmm7, 176(%rsp)
	.seh_savexmm	%xmm7, 176
	movaps	%xmm8, 192(%rsp)
	.seh_savexmm	%xmm8, 192
	movaps	%xmm9, 208(%rsp)
	.seh_savexmm	%xmm9, 208
	movaps	%xmm10, 224(%rsp)
	.seh_savexmm	%xmm10, 224
	movaps	%xmm11, 240(%rsp)
	.seh_savexmm	%xmm11, 240
	movaps	%xmm12, 256(%rsp)
	.seh_savexmm	%xmm12, 256
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rax
	movl	%ecx, 352(%rsp)
	movl	%edx, %edi
	movq	%r8, %r12
	movq	%r9, %rbx
	movb	$1, 138(%rax)
	movq	6008(%rsi), %r14
	cmpb	$0, 140(%r14)
	jne	.L5201
	movss	5156(%rsi), %xmm10
	movl	%edx, %eax
	andl	$2, %eax
	movl	%eax, 64(%rsp)
	jne	.L5288
	testq	%rbx, %rbx
	pxor	%xmm11, %xmm11
	pxor	%xmm8, %xmm8
	je	.L5289
.L5163:
	movss	.LC1(%rip), %xmm3
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%r12, %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	228(%r14), %xmm7
	movq	%rax, 104(%rsp)
	subss	%xmm8, %xmm7
	ucomiss	%xmm7, %xmm11
	jb	.L5167
	pxor	%xmm7, %xmm7
.L5167:
	movss	5160(%rsi), %xmm0
	movaps	%xmm8, %xmm6
	movss	224(%r14), %xmm1
	addss	%xmm8, %xmm6
	addss	%xmm0, %xmm0
	addss	5944(%rsi), %xmm0
	addss	108(%rsp), %xmm6
	minss	%xmm0, %xmm1
	ucomiss	%xmm6, %xmm1
	jb	.L5171
	movaps	%xmm1, %xmm6
.L5171:
	movss	196(%r14), %xmm12
	movss	28(%r14), %xmm9
	call	_ZN5ImGui19GetContentRegionMaxEv
	movl	64(%rsp), %r10d
	addss	%xmm6, %xmm12
	movd	%eax, %xmm0
	movq	192(%r14), %rax
	addss	%xmm9, %xmm0
	movss	%xmm12, 140(%rsp)
	testl	%r10d, %r10d
	movq	%rax, 128(%rsp)
	movss	%xmm0, 136(%rsp)
	je	.L5173
	movss	.LC17(%rip), %xmm1
	mulss	84(%r14), %xmm1
	movss	128(%rsp), %xmm2
	movss	.LC115(%rip), %xmm9
	cvttss2si	%xmm1, %eax
	pxor	%xmm1, %xmm1
	mulss	%xmm10, %xmm9
	cvtsi2ss	%eax, %xmm1
	subss	.LC18(%rip), %xmm1
	addss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	movss	%xmm0, 136(%rsp)
	movss	104(%rsp), %xmm0
	movss	%xmm2, 128(%rsp)
	movss	5944(%rsi), %xmm2
	ucomiss	%xmm11, %xmm0
	addss	%xmm2, %xmm9
	jbe	.L5290
	movaps	%xmm10, %xmm1
	addss	%xmm10, %xmm1
	addss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 144(%rsp)
.L5283:
	leaq	144(%rsp), %r13
	movaps	%xmm7, %xmm1
	movss	%xmm6, 148(%rsp)
	movq	%r13, %rcx
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movq	128(%rsp), %rax
	movq	136(%rsp), %rdx
	movq	%rax, 144(%rsp)
	movq	%rdx, 152(%rsp)
.L5176:
	movl	%edi, %eax
	andl	$256, %eax
	movl	%eax, 68(%rsp)
	je	.L5291
.L5286:
	leaq	352(%rsp), %rdx
	movq	%r13, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5199
	movl	$1, %ebp
.L5200:
	movl	%edi, %eax
	movl	%edi, %r15d
	sall	$8, %eax
	andl	$1024, %eax
	orb	$2, %ah
	andl	$64, %r15d
	je	.L5202
	movl	%edi, %edx
	sarl	$6, %edx
	andl	$2, %edx
	orl	$16, %edx
	orl	%edx, %eax
.L5202:
	movl	352(%rsp), %edx
	leaq	96(%rsp), %r9
	movl	%eax, 32(%rsp)
	movq	%r13, %rcx
	leaq	95(%rsp), %r8
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movl	68(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L5203
	testb	%al, %al
	jne	.L5292
.L5203:
	testb	$4, %dil
	je	.L5207
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rcx
	movl	248(%rcx), %edx
	cmpl	%edx, 6056(%rax)
	jne	.L5208
	movb	$1, 6060(%rax)
	movl	248(%rcx), %edx
.L5208:
	cmpl	%edx, 6068(%rax)
	jne	.L5207
	movb	$1, 6078(%rax)
	.p2align 4,,10
.L5207:
	cmpb	$0, 96(%rsp)
	movzbl	95(%rsp), %eax
	je	.L5210
	testb	%al, %al
	je	.L5212
	movl	$27, %ecx
.L5211:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movaps	%xmm8, %xmm0
	movss	128(%rsp), %xmm1
	movl	%eax, %r8d
	movl	64(%rsp), %eax
	addss	%xmm7, %xmm0
	addss	%xmm9, %xmm1
	addss	132(%rsp), %xmm0
	testl	%eax, %eax
	movss	%xmm1, 112(%rsp)
	movss	%xmm0, 116(%rsp)
	je	.L5225
.L5223:
	movq	136(%rsp), %rdx
	movl	$1, %r9d
	movq	128(%rsp), %rcx
	movss	5164(%rsi), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movss	.LC18(%rip), %xmm2
	movzbl	%bpl, %edx
	addss	132(%rsp), %xmm8
	addss	128(%rsp), %xmm10
	addss	%xmm7, %xmm8
	addss	%xmm11, %xmm10
	movq	%xmm8, %rax
	salq	$32, %rax
	movd	%xmm10, %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	cmpb	$0, 11432(%rsi)
	je	.L5213
	leaq	100(%rsp), %rdx
	movl	$8995, %r8d
	movl	$2302730, 100(%rsp)
	leaq	112(%rsp), %rsi
	movw	%r8w, 97(%rsp)
	leaq	3(%rdx), %r8
	movq	%rsi, %rcx
	movb	$0, 99(%rsp)
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	leaq	120(%rsp), %rax
	movq	%r12, %r8
	movq	%rsi, %rcx
	movq	%rax, 40(%rsp)
	leaq	104(%rsp), %rax
	movq	%rbx, %r9
	leaq	136(%rsp), %rdx
	movq	%rax, 32(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 120(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	leaq	98(%rsp), %rdx
	movq	%rsi, %rcx
	leaq	100(%rsp), %r8
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	jmp	.L5214
	.p2align 4,,10
.L5291:
	movq	GImGui(%rip), %r15
	movl	352(%rsp), %edx
	movl	6300(%r15), %eax
	movq	6008(%r15), %r10
	testl	%eax, %eax
	movq	296(%r10), %rcx
	je	.L5178
	testb	$1, %al
	jne	.L5186
	movslq	(%rcx), %rbp
	movq	8(%rcx), %r11
	salq	$4, %rbp
	leaq	(%r11,%rbp), %rax
	sarq	$4, %rbp
	movq	%rax, 72(%rsp)
.L5185:
	testl	%ebp, %ebp
	jle	.L5181
	movl	%ebp, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	jbe	.L5183
	jmp	.L5293
	.p2align 4,,10
.L5271:
	movl	%r8d, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	ja	.L5182
	movl	%r9d, %r8d
.L5183:
	testl	%r8d, %r8d
	jne	.L5271
.L5181:
	cmpq	%r11, 72(%rsp)
	jne	.L5294
	.p2align 4,,10
.L5186:
	movzbl	6298(%r15), %r8d
	movq	%r10, 72(%rsp)
	movl	%r8d, %ebp
	call	_ZN12ImGuiStorage6SetIntEji
	movq	72(%rsp), %r10
.L5180:
	movl	$0, 6300(%r15)
.L5188:
	cmpb	$0, 11432(%r15)
	je	.L5195
	testb	$16, %dil
	jne	.L5195
	movl	11460(%r15), %eax
	cmpl	%eax, 244(%r10)
	jl	.L5286
	.p2align 4,,10
.L5195:
	leaq	352(%rsp), %rdx
	movq	%r13, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	jne	.L5200
	testb	%bpl, %bpl
	jne	.L5199
	.p2align 4,,10
.L5201:
	xorl	%ebp, %ebp
.L5159:
	movaps	160(%rsp), %xmm6
	movl	%ebp, %eax
	movaps	176(%rsp), %xmm7
	movaps	192(%rsp), %xmm8
	movaps	208(%rsp), %xmm9
	movaps	224(%rsp), %xmm10
	movaps	240(%rsp), %xmm11
	movaps	256(%rsp), %xmm12
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
.L5288:
	testq	%rbx, %rbx
	pxor	%xmm11, %xmm11
	movss	5160(%rsi), %xmm8
	jne	.L5163
.L5289:
	movq	$-1, %rbx
	cmpq	%rbx, %r12
	je	.L5163
	movzbl	(%r12), %eax
	movq	%r12, %rbx
	testb	%al, %al
	jne	.L5164
	jmp	.L5163
	.p2align 4,,10
.L5165:
	addq	$1, %rbx
	cmpq	$-1, %rbx
	je	.L5163
	movzbl	(%rbx), %eax
	testb	%al, %al
	je	.L5163
.L5164:
	cmpb	$35, %al
	jne	.L5165
	cmpb	$35, 1(%rbx)
	jne	.L5165
	jmp	.L5163
	.p2align 4,,10
.L5199:
	andl	$8, %edi
	je	.L5295
.L5287:
	movl	$1, %ebp
	jmp	.L5159
	.p2align 4,,10
.L5173:
	movaps	%xmm10, %xmm5
	movss	104(%rsp), %xmm1
	addss	%xmm10, %xmm5
	movss	5944(%rsi), %xmm0
	ucomiss	%xmm11, %xmm1
	movaps	%xmm5, %xmm9
	addss	%xmm0, %xmm9
	ja	.L5296
	movaps	%xmm0, %xmm5
	addss	%xmm11, %xmm5
.L5284:
	leaq	144(%rsp), %r13
	movaps	%xmm7, %xmm1
	movss	%xmm5, 144(%rsp)
	movss	%xmm6, 148(%rsp)
	movq	%r13, %rcx
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movss	5168(%rsi), %xmm0
	movss	128(%rsp), %xmm2
	movaps	%xmm0, %xmm1
	movss	%xmm2, 144(%rsp)
	addss	%xmm2, %xmm5
	addss	%xmm0, %xmm1
	movaps	%xmm5, %xmm0
	addss	%xmm1, %xmm0
	movss	132(%rsp), %xmm1
	movss	%xmm1, 148(%rsp)
	movss	%xmm0, 152(%rsp)
	movss	140(%rsp), %xmm0
	movss	%xmm0, 156(%rsp)
	jmp	.L5176
	.p2align 4,,10
.L5296:
	addss	%xmm1, %xmm5
	addss	%xmm0, %xmm5
	jmp	.L5284
	.p2align 4,,10
.L5210:
	testb	%al, %al
	movl	$26, %ecx
	jne	.L5211
.L5212:
	movl	$25, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movl	64(%rsp), %edx
	movaps	%xmm8, %xmm0
	movss	128(%rsp), %xmm1
	addss	%xmm7, %xmm0
	movl	%eax, %r8d
	addss	132(%rsp), %xmm0
	addss	%xmm9, %xmm1
	testl	%edx, %edx
	movss	%xmm0, 116(%rsp)
	movss	%xmm1, 112(%rsp)
	jne	.L5223
	testb	$1, %dil
	je	.L5215
.L5225:
	movq	136(%rsp), %rdx
	movl	$0x00000000, 32(%rsp)
	xorl	%r9d, %r9d
	movq	128(%rsp), %rcx
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
.L5215:
	testl	$512, %edi
	jne	.L5297
	movl	68(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L5298
.L5217:
	cmpb	$0, 11432(%rsi)
	jne	.L5299
.L5218:
	movq	112(%rsp), %rcx
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	movq	%r12, %rdx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
.L5214:
	testb	%bpl, %bpl
	je	.L5201
	andl	$8, %edi
	jne	.L5287
	movl	352(%rsp), %ecx
	call	_ZN5ImGui13TreePushRawIDEj
	jmp	.L5159
	.p2align 4,,10
.L5292:
	testb	$-64, %dil
	sete	%r9b
	testb	$-128, %dil
	jne	.L5300
.L5204:
	testl	%r15d, %r15d
	je	.L5205
	orb	944(%rsi), %r9b
.L5205:
	testb	%r9b, %r9b
	je	.L5203
	movq	296(%r14), %rcx
	xorl	$1, %ebp
	movl	352(%rsp), %edx
	movzbl	%bpl, %r8d
	call	_ZN12ImGuiStorage6SetIntEji
	jmp	.L5203
	.p2align 4,,10
.L5299:
	leaq	112(%rsp), %rcx
	xorl	%r8d, %r8d
	leaq	.LC218(%rip), %rdx
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	jmp	.L5218
	.p2align 4,,10
.L5297:
	movss	.LC17(%rip), %xmm0
	movss	5944(%rsi), %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm9, %xmm0
	addss	128(%rsp), %xmm0
	addss	%xmm1, %xmm7
	addss	132(%rsp), %xmm7
	movd	%xmm7, %ecx
	movq	%rcx, %rax
	movd	%xmm0, %ecx
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui12RenderBulletE6ImVec2
	jmp	.L5217
	.p2align 4,,10
.L5178:
	movslq	(%rcx), %r11
	movl	%edi, %ebp
	movq	8(%rcx), %r9
	sarl	$5, %ebp
	andl	$1, %ebp
	salq	$4, %r11
	leaq	(%r9,%r11), %rax
	sarq	$4, %r11
	movq	%rax, 72(%rsp)
.L5193:
	testl	%r11d, %r11d
	jle	.L5189
	movl	%r11d, %ecx
	sarl	%ecx
	movslq	%ecx, %rax
	salq	$4, %rax
	addq	%r9, %rax
	cmpl	(%rax), %edx
	jbe	.L5191
	jmp	.L5301
	.p2align 4,,10
.L5272:
	movl	%ecx, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r9, %rax
	cmpl	(%rax), %edx
	ja	.L5190
	movl	%r8d, %ecx
.L5191:
	testl	%ecx, %ecx
	jne	.L5272
.L5189:
	cmpq	%r9, 72(%rsp)
	je	.L5194
	cmpl	(%r9), %edx
	jne	.L5194
	movl	8(%r9), %ebp
.L5194:
	testl	%ebp, %ebp
	setne	%bpl
	jmp	.L5188
.L5293:
	movl	%r8d, %r9d
	movl	%ebp, %r8d
	.p2align 4,,10
.L5182:
	leaq	16(%rax), %r11
	addl	$1, %r9d
	subl	%r9d, %r8d
	movl	%r8d, %ebp
	jmp	.L5185
.L5301:
	movl	%ecx, %r8d
	movl	%r11d, %ecx
	.p2align 4,,10
.L5190:
	leaq	16(%rax), %r9
	addl	$1, %r8d
	subl	%r8d, %ecx
	movl	%ecx, %r11d
	jmp	.L5193
	.p2align 4,,10
.L5295:
	movl	352(%rsp), %ecx
	call	_ZN5ImGui13TreePushRawIDEj
	jmp	.L5287
	.p2align 4,,10
.L5213:
	leaq	120(%rsp), %rax
	movq	%rbx, %r9
	movq	%r12, %r8
	movq	$0, 48(%rsp)
	movq	%rax, 40(%rsp)
	leaq	104(%rsp), %rax
	leaq	136(%rsp), %rdx
	movq	%rax, 32(%rsp)
	movq	$0, 120(%rsp)
	leaq	112(%rsp), %rcx
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	jmp	.L5214
	.p2align 4,,10
.L5294:
	cmpl	(%r11), %edx
	jne	.L5186
	movl	8(%r11), %eax
	cmpl	$-1, %eax
	je	.L5186
	testl	%eax, %eax
	setne	%bpl
	jmp	.L5180
	.p2align 4,,10
.L5300:
	leaq	120(%rsp), %rdx
	movl	$1, %r8d
	movq	%r13, %rcx
	movss	144(%rsp), %xmm0
	addss	%xmm9, %xmm0
	movss	%xmm0, 120(%rsp)
	movss	156(%rsp), %xmm0
	movss	%xmm0, 124(%rsp)
	call	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	orl	%eax, %r9d
	jmp	.L5204
	.p2align 4,,10
.L5298:
	movss	.LC216(%rip), %xmm0
	movzbl	%bpl, %edx
	mulss	5944(%rsi), %xmm0
	addss	128(%rsp), %xmm10
	movss	.LC217(%rip), %xmm2
	addss	%xmm0, %xmm7
	movd	%xmm10, %eax
	addss	132(%rsp), %xmm7
	movd	%xmm7, %ecx
	salq	$32, %rcx
	orq	%rax, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	jmp	.L5217
.L5290:
	addss	%xmm11, %xmm2
	movss	%xmm2, 144(%rsp)
	jmp	.L5283
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16CollapsingHeaderEPKci
	.def	_ZN5ImGui16CollapsingHeaderEPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16CollapsingHeaderEPKci
_ZN5ImGui16CollapsingHeaderEPKci:
.LFB892:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	%edx, %ebx
	movq	6008(%rax), %rdx
	movq	%rcx, %rsi
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rcx
	cmpb	$0, 140(%rcx)
	je	.L5304
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L5304:
	movq	%rsi, %rdx
	orl	$26, %ebx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%ebx, %edx
	xorl	%r9d, %r9d
	movq	%rsi, %r8
	movl	%eax, %ecx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16CollapsingHeaderEPKcPbi
	.def	_ZN5ImGui16CollapsingHeaderEPKcPbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16CollapsingHeaderEPKcPbi
_ZN5ImGui16CollapsingHeaderEPKcPbi:
.LFB893:
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
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	GImGui(%rip), %rax
	xorl	%esi, %esi
	movq	%rdx, %rdi
	movq	6008(%rax), %rdx
	movq	%rcx, %rbp
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	jne	.L5305
	testq	%rdi, %rdi
	je	.L5307
	movzbl	(%rdi), %esi
	testb	%sil, %sil
	je	.L5305
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movl	%r8d, 44(%rsp)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	44(%rsp), %r8d
	xorl	%r9d, %r9d
	movl	%eax, %ecx
	movl	%eax, %r12d
	movl	%r8d, %edx
	movq	%rbp, %r8
	orl	$30, %edx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	movss	256(%rbx), %xmm0
	leal	1(%r12), %edx
	movq	%rbx, %rcx
	movl	%eax, %esi
	movq	GImGui(%rip), %rax
	movss	.LC17(%rip), %xmm6
	addss	5160(%rax), %xmm0
	mulss	5944(%rax), %xmm6
	movaps	%xmm0, %xmm1
	movss	260(%rbx), %xmm0
	minss	520(%rbx), %xmm0
	subss	5156(%rax), %xmm0
	addss	%xmm6, %xmm1
	subss	%xmm6, %xmm0
	movss	%xmm1, 60(%rsp)
	movss	%xmm0, 56(%rsp)
	call	_ZN11ImGuiWindow5GetIDEPKv
	leaq	56(%rsp), %rdx
	movaps	%xmm6, %xmm2
	movl	%eax, %ecx
	call	_ZN5ImGui11CloseButtonEjRK6ImVec2f
	testb	%al, %al
	je	.L5305
	movb	$0, (%rdi)
.L5305:
	movaps	64(%rsp), %xmm6
	movl	%esi, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5307:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movl	%r8d, 44(%rsp)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	44(%rsp), %r8d
	xorl	%r9d, %r9d
	movl	%eax, %ecx
	movl	%r8d, %edx
	movq	%rbp, %r8
	orl	$26, %edx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	movl	%eax, %esi
	jmp	.L5305
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10TreeNodeExEPKci
	.def	_ZN5ImGui10TreeNodeExEPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10TreeNodeExEPKci
_ZN5ImGui10TreeNodeExEPKci:
.LFB894:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	%edx, %esi
	movq	6008(%rax), %rdx
	movq	%rcx, %rbx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rcx
	cmpb	$0, 140(%rcx)
	je	.L5318
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L5318:
	movq	%rbx, %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	movl	%esi, %edx
	movl	%eax, %ecx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11TreeNodeExVEPKciS1_Pc
	.def	_ZN5ImGui11TreeNodeExVEPKciS1_Pc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11TreeNodeExVEPKciS1_Pc
_ZN5ImGui11TreeNodeExVEPKciS1_Pc:
.LFB895:
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
	movq	GImGui(%rip), %rcx
	movl	%edx, %ebp
	movq	6008(%rcx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rdi
	cmpb	$0, 140(%rdi)
	je	.L5327
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5327:
	leaq	11960(%rcx), %rsi
	movl	$3073, %edx
	movq	%rsi, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L5323
	cmpl	$3072, %eax
	jg	.L5323
.L5321:
	cltq
	movq	%r12, %rdx
	movq	%rdi, %rcx
	leaq	(%rsi,%rax), %rbx
	movb	$0, (%rbx)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	%ebp, %edx
	movl	%eax, %ecx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.p2align 4,,10
.L5323:
	movl	$3072, %eax
	jmp	.L5321
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11TreeNodeExVEPKviPKcPc
	.def	_ZN5ImGui11TreeNodeExVEPKviPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11TreeNodeExVEPKviPKcPc
_ZN5ImGui11TreeNodeExVEPKviPKcPc:
.LFB896:
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
	movq	GImGui(%rip), %rcx
	movl	%edx, %ebp
	movq	6008(%rcx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rdi
	cmpb	$0, 140(%rdi)
	je	.L5336
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5336:
	leaq	11960(%rcx), %rsi
	movl	$3073, %edx
	movq	%rsi, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L5332
	cmpl	$3072, %eax
	jg	.L5332
.L5330:
	cltq
	movq	%r12, %rdx
	movq	%rdi, %rcx
	leaq	(%rsi,%rax), %rbx
	movb	$0, (%rbx)
	call	_ZN11ImGuiWindow5GetIDEPKv
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	%ebp, %edx
	movl	%eax, %ecx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.p2align 4,,10
.L5332:
	movl	$3072, %eax
	jmp	.L5330
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8TreeNodeEPKc
	.def	_ZN5ImGui8TreeNodeEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8TreeNodeEPKc
_ZN5ImGui8TreeNodeEPKc:
.LFB903:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movq	%rcx, %rbx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rcx
	cmpb	$0, 140(%rcx)
	je	.L5339
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L5339:
	movq	%rbx, %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	xorl	%edx, %edx
	movl	%eax, %ecx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9TreeNodeVEPKvPKcPc
	.def	_ZN5ImGui9TreeNodeVEPKvPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9TreeNodeVEPKvPKcPc
_ZN5ImGui9TreeNodeVEPKvPKcPc:
.LFB898:
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
	movq	%rcx, %rbp
	movq	GImGui(%rip), %rcx
	movq	6008(%rcx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rdi
	cmpb	$0, 140(%rdi)
	je	.L5348
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5348:
	leaq	11960(%rcx), %rsi
	movq	%r8, %r9
	movq	%rdx, %r8
	movq	%rsi, %rcx
	movl	$3073, %edx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L5344
	cmpl	$3072, %eax
	jg	.L5344
.L5342:
	cltq
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	leaq	(%rsi,%rax), %rbx
	movb	$0, (%rbx)
	call	_ZN11ImGuiWindow5GetIDEPKv
	movq	%rbx, %r9
	movq	%rsi, %r8
	xorl	%edx, %edx
	movl	%eax, %ecx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.p2align 4,,10
.L5344:
	movl	$3072, %eax
	jmp	.L5342
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10TreeNodeExEPKviPKcz
	.def	_ZN5ImGui10TreeNodeExEPKviPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10TreeNodeExEPKviPKcz
_ZN5ImGui10TreeNodeExEPKviPKcz:
.LFB900:
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
	movq	%rcx, %r12
	movq	GImGui(%rip), %rcx
	movq	%r9, 120(%rsp)
	movl	%edx, %ebp
	leaq	120(%rsp), %r9
	movq	%r9, 40(%rsp)
	movq	6008(%rcx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rdi
	xorl	%eax, %eax
	cmpb	$0, 140(%rdi)
	je	.L5358
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5358:
	leaq	11960(%rcx), %rsi
	movl	$3073, %edx
	movq	%rsi, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L5354
	cmpl	$3072, %eax
	jg	.L5354
.L5351:
	cltq
	movq	%r12, %rdx
	movq	%rdi, %rcx
	leaq	(%rsi,%rax), %rbx
	movb	$0, (%rbx)
	call	_ZN11ImGuiWindow5GetIDEPKv
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	%ebp, %edx
	movl	%eax, %ecx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5354:
	movl	$3072, %eax
	jmp	.L5351
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8TreeNodeEPKvPKcz
	.def	_ZN5ImGui8TreeNodeEPKvPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8TreeNodeEPKvPKcz
_ZN5ImGui8TreeNodeEPKvPKcz:
.LFB902:
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
	movq	%r8, 112(%rsp)
	movq	GImGui(%rip), %r8
	movq	%rcx, %rbp
	movq	%r9, 120(%rsp)
	leaq	112(%rsp), %r9
	movq	%r9, 40(%rsp)
	movq	6008(%r8), %rax
	movb	$1, 138(%rax)
	movq	6008(%r8), %rdi
	xorl	%eax, %eax
	cmpb	$0, 140(%rdi)
	je	.L5368
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5368:
	leaq	11960(%r8), %rsi
	movq	%rdx, %r8
	movl	$3073, %edx
	movq	%rsi, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L5364
	cmpl	$3072, %eax
	jg	.L5364
.L5361:
	cltq
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	leaq	(%rsi,%rax), %rbx
	movb	$0, (%rbx)
	call	_ZN11ImGuiWindow5GetIDEPKv
	movq	%rbx, %r9
	movq	%rsi, %r8
	xorl	%edx, %edx
	movl	%eax, %ecx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5364:
	movl	$3072, %eax
	jmp	.L5361
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9TreeNodeVEPKcS1_Pc
	.def	_ZN5ImGui9TreeNodeVEPKcS1_Pc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9TreeNodeVEPKcS1_Pc
_ZN5ImGui9TreeNodeVEPKcS1_Pc:
.LFB897:
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
	movq	%rcx, %rbp
	movq	GImGui(%rip), %rcx
	movq	6008(%rcx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rdi
	cmpb	$0, 140(%rdi)
	je	.L5377
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5377:
	leaq	11960(%rcx), %rsi
	movq	%r8, %r9
	movq	%rdx, %r8
	movq	%rsi, %rcx
	movl	$3073, %edx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L5373
	cmpl	$3072, %eax
	jg	.L5373
.L5371:
	cltq
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	leaq	(%rsi,%rax), %rbx
	movb	$0, (%rbx)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movq	%rbx, %r9
	movq	%rsi, %r8
	xorl	%edx, %edx
	movl	%eax, %ecx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.p2align 4,,10
.L5373:
	movl	$3072, %eax
	jmp	.L5371
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8TreeNodeEPKcS1_z
	.def	_ZN5ImGui8TreeNodeEPKcS1_z;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8TreeNodeEPKcS1_z
_ZN5ImGui8TreeNodeEPKcS1_z:
.LFB901:
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
	movq	%r8, 112(%rsp)
	movq	GImGui(%rip), %r8
	movq	%rcx, %rbp
	movq	%r9, 120(%rsp)
	leaq	112(%rsp), %r9
	movq	%r9, 40(%rsp)
	movq	6008(%r8), %rax
	movb	$1, 138(%rax)
	movq	6008(%r8), %rdi
	xorl	%eax, %eax
	cmpb	$0, 140(%rdi)
	je	.L5387
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5387:
	leaq	11960(%r8), %rsi
	movq	%rdx, %r8
	movl	$3073, %edx
	movq	%rsi, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L5383
	cmpl	$3072, %eax
	jg	.L5383
.L5380:
	cltq
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	leaq	(%rsi,%rax), %rbx
	movb	$0, (%rbx)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movq	%rbx, %r9
	movq	%rsi, %r8
	xorl	%edx, %edx
	movl	%eax, %ecx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5383:
	movl	$3072, %eax
	jmp	.L5380
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10TreeNodeExEPKciS1_z
	.def	_ZN5ImGui10TreeNodeExEPKciS1_z;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10TreeNodeExEPKciS1_z
_ZN5ImGui10TreeNodeExEPKciS1_z:
.LFB899:
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
	movq	%rcx, %r12
	movq	GImGui(%rip), %rcx
	movq	%r9, 120(%rsp)
	movl	%edx, %ebp
	leaq	120(%rsp), %r9
	movq	%r9, 40(%rsp)
	movq	6008(%rcx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rdi
	xorl	%eax, %eax
	cmpb	$0, 140(%rdi)
	je	.L5397
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5397:
	leaq	11960(%rcx), %rsi
	movl	$3073, %edx
	movq	%rsi, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L5393
	cmpl	$3072, %eax
	jg	.L5393
.L5390:
	cltq
	movq	%r12, %rdx
	movq	%rdi, %rcx
	leaq	(%rsi,%rax), %rbx
	movb	$0, (%rbx)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	%ebp, %edx
	movl	%eax, %ecx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5393:
	movl	$3072, %eax
	jmp	.L5390
	.seh_endproc
	.section .rdata,"dr"
.LC219:
	.ascii "[x]\0"
.LC220:
	.ascii "[ ]\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8CheckboxEPKcPb
	.def	_ZN5ImGui8CheckboxEPKcPb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8CheckboxEPKcPb
_ZN5ImGui8CheckboxEPKcPb:
.LFB963:
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
	subq	$272, %rsp
	.seh_stackalloc	272
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
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movq	%rcx, %rdi
	movq	%rdx, %rbp
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rsi
	cmpb	$0, 140(%rsi)
	je	.L5399
.L5412:
	xorl	%r12d, %r12d
.L5398:
	movaps	112(%rsp), %xmm6
	movl	%r12d, %eax
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
	movaps	160(%rsp), %xmm9
	movaps	176(%rsp), %xmm10
	movaps	192(%rsp), %xmm11
	movaps	208(%rsp), %xmm12
	movaps	224(%rsp), %xmm13
	movaps	240(%rsp), %xmm14
	movaps	256(%rsp), %xmm15
	addq	$272, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L5399:
	leaq	96(%rsp), %r12
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	pxor	%xmm12, %xmm12
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rdi, %rcx
	movss	.LC1(%rip), %xmm3
	movl	%eax, 76(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	5160(%rbx), %xmm1
	movq	%r12, %rcx
	movl	%eax, %r14d
	shrq	$32, %rax
	movss	196(%rsi), %xmm7
	movss	192(%rsi), %xmm8
	movaps	%xmm1, %xmm6
	movd	%eax, %xmm5
	addss	%xmm1, %xmm6
	addss	%xmm5, %xmm6
	movaps	%xmm6, %xmm14
	addss	%xmm8, %xmm6
	addss	%xmm7, %xmm14
	movaps	%xmm6, %xmm15
	movaps	%xmm14, %xmm13
	subss	%xmm8, %xmm15
	subss	%xmm7, %xmm13
	movss	%xmm15, 96(%rsp)
	movss	%xmm13, 100(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movd	%r14d, %xmm2
	movaps	%xmm8, %xmm1
	movaps	%xmm6, %xmm0
	ucomiss	%xmm12, %xmm2
	unpcklps	%xmm7, %xmm1
	movaps	%xmm1, %xmm4
	unpcklps	%xmm14, %xmm0
	movlhps	%xmm0, %xmm4
	movaps	%xmm4, 48(%rsp)
	movaps	%xmm4, 96(%rsp)
	ja	.L5447
	movss	192(%rsi), %xmm10
	movss	5160(%rbx), %xmm9
	addss	%xmm12, %xmm10
	addss	196(%rsi), %xmm9
.L5405:
	leaq	76(%rsp), %rdx
	movq	%r12, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5412
	movl	76(%rsp), %edx
	movq	%r12, %rcx
	movl	$0, 32(%rsp)
	leaq	75(%rsp), %r9
	leaq	74(%rsp), %r8
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	testb	%al, %al
	movl	%eax, %r12d
	je	.L5413
	xorb	$1, 0(%rbp)
.L5413:
	cmpb	$0, 75(%rsp)
	movss	5164(%rbx), %xmm5
	movzbl	74(%rsp), %eax
	je	.L5414
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	andl	$-2, %ecx
	addl	$9, %ecx
.L5415:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	48(%rsp), %rcx
	movl	$1, %r9d
	movq	56(%rsp), %rdx
	movl	%eax, %r8d
	movss	%xmm5, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	cmpb	$0, 0(%rbp)
	je	.L5416
	minss	%xmm13, %xmm15
	pxor	%xmm5, %xmm5
	movss	.LC18(%rip), %xmm0
	movaps	%xmm15, %xmm13
	divss	.LC85(%rip), %xmm13
	cvttss2si	%xmm13, %eax
	cvtsi2ss	%eax, %xmm5
	ucomiss	%xmm5, %xmm0
	jnb	.L5448
.L5419:
	movq	656(%rsi), %r10
	leaq	88(%rsp), %r13
	movl	$19, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	leaq	80(%rsp), %rdx
	movq	%r13, %r8
	movss	5164(%rbx), %xmm13
	subss	%xmm5, %xmm6
	movl	%eax, %r9d
	movl	$-1, 40(%rsp)
	subss	%xmm5, %xmm14
	movss	%xmm13, 32(%rsp)
	addss	%xmm5, %xmm8
	movq	%r10, %rcx
	addss	%xmm7, %xmm5
	movss	%xmm6, 88(%rsp)
	movss	%xmm14, 92(%rsp)
	movss	%xmm8, 80(%rsp)
	movss	%xmm5, 84(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	cmpb	$0, 11432(%rbx)
	je	.L5422
	cmpb	$0, 0(%rbp)
	je	.L5425
	leaq	.LC219(%rip), %rdx
	jmp	.L5423
	.p2align 4,,10
.L5447:
	movss	5176(%rbx), %xmm0
	leaq	88(%rsp), %r13
	movd	%r14d, %xmm11
	call	_ZN5ImGui8SameLineEff.constprop.126
	movss	5160(%rbx), %xmm1
	movq	%r13, %rcx
	movss	192(%rsi), %xmm10
	movss	196(%rsi), %xmm9
	movss	%xmm13, 92(%rsp)
	addss	%xmm12, %xmm10
	addss	%xmm1, %xmm9
	addss	%xmm10, %xmm11
	addss	%xmm9, %xmm5
	movaps	%xmm11, %xmm2
	subss	%xmm10, %xmm2
	movss	%xmm2, 88(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	ucomiss	%xmm5, %xmm14
	jb	.L5404
	movaps	%xmm14, %xmm5
.L5404:
	ucomiss	%xmm11, %xmm6
	jb	.L5406
	movaps	%xmm6, %xmm11
.L5406:
	movaps	%xmm8, %xmm0
	movaps	%xmm7, %xmm2
	movaps	%xmm11, %xmm1
	minss	%xmm10, %xmm0
	unpcklps	%xmm5, %xmm1
	minss	%xmm9, %xmm2
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movaps	%xmm0, 96(%rsp)
	jmp	.L5405
	.p2align 4,,10
.L5416:
	cmpb	$0, 11432(%rbx)
	leaq	88(%rsp), %r13
	je	.L5422
.L5425:
	leaq	.LC220(%rip), %rdx
.L5423:
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	movss	%xmm10, 88(%rsp)
	movss	%xmm9, 92(%rsp)
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
.L5422:
	movd	%r14d, %xmm3
	ucomiss	%xmm12, %xmm3
	jbe	.L5398
	movd	%xmm9, %ecx
	movd	%xmm10, %eax
	movl	$1, %r9d
	movq	%rcx, %rdx
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	salq	$32, %rdx
	orq	%rdx, %rcx
	movq	%rdi, %rdx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L5398
	.p2align 4,,10
.L5414:
	xorl	%ecx, %ecx
	testb	%al, %al
	setne	%cl
	addl	$7, %ecx
	jmp	.L5415
	.p2align 4,,10
.L5448:
	movaps	%xmm0, %xmm5
	jmp	.L5419
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13CheckboxFlagsEPKcPjj
	.def	_ZN5ImGui13CheckboxFlagsEPKcPjj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13CheckboxFlagsEPKcPjj
_ZN5ImGui13CheckboxFlagsEPKcPjj:
.LFB964:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	(%rdx), %eax
	andl	%r8d, %eax
	movq	%rdx, %rsi
	movl	%r8d, %ebx
	leaq	47(%rsp), %rdx
	cmpl	%r8d, %eax
	sete	47(%rsp)
	call	_ZN5ImGui8CheckboxEPKcPb
	testb	%al, %al
	je	.L5449
	cmpb	$0, 47(%rsp)
	movl	(%rsi), %r8d
	jne	.L5455
	notl	%ebx
	andl	%r8d, %ebx
	movl	%ebx, (%rsi)
.L5449:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L5455:
	orl	%r8d, %ebx
	movl	%ebx, (%rsi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC221:
	.ascii "(x)\0"
.LC222:
	.ascii "( )\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11RadioButtonEPKcb
	.def	_ZN5ImGui11RadioButtonEPKcb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11RadioButtonEPKcb
_ZN5ImGui11RadioButtonEPKcb:
.LFB965:
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
	subq	$272, %rsp
	.seh_stackalloc	272
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
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rax
	movq	%rcx, %rdi
	movl	%edx, %r12d
	movb	$1, 138(%rax)
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	je	.L5457
.L5469:
	xorl	%ebp, %ebp
.L5456:
	movaps	112(%rsp), %xmm6
	movl	%ebp, %eax
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
	movaps	160(%rsp), %xmm9
	movaps	176(%rsp), %xmm10
	movaps	192(%rsp), %xmm11
	movaps	208(%rsp), %xmm12
	movaps	224(%rsp), %xmm13
	movaps	240(%rsp), %xmm14
	movaps	256(%rsp), %xmm15
	addq	$272, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L5457:
	leaq	96(%rsp), %rbp
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	pxor	%xmm12, %xmm12
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rdi, %rcx
	movss	.LC1(%rip), %xmm3
	movl	%eax, 76(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	5160(%rsi), %xmm1
	movq	%rbp, %rcx
	movl	%eax, %r14d
	shrq	$32, %rax
	movss	.LC18(%rip), %xmm14
	movaps	%xmm1, %xmm6
	movd	%eax, %xmm5
	movss	196(%rbx), %xmm7
	movss	192(%rbx), %xmm8
	addss	%xmm1, %xmm6
	addss	%xmm5, %xmm6
	subss	%xmm14, %xmm6
	movaps	%xmm6, %xmm13
	addss	%xmm8, %xmm6
	addss	%xmm7, %xmm13
	movaps	%xmm6, %xmm15
	movaps	%xmm13, %xmm9
	subss	%xmm8, %xmm15
	subss	%xmm7, %xmm9
	movss	%xmm15, 96(%rsp)
	movss	%xmm9, 100(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movd	%r14d, %xmm4
	movaps	%xmm6, %xmm1
	movaps	%xmm8, %xmm0
	ucomiss	%xmm12, %xmm4
	unpcklps	%xmm13, %xmm1
	unpcklps	%xmm7, %xmm0
	movlhps	%xmm1, %xmm0
	movaps	%xmm0, 96(%rsp)
	ja	.L5498
	movss	192(%rbx), %xmm11
	movss	5160(%rsi), %xmm10
	addss	%xmm12, %xmm11
	addss	196(%rbx), %xmm10
.L5463:
	leaq	76(%rsp), %rdx
	movq	%rbp, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5469
	addss	%xmm6, %xmm8
	pxor	%xmm0, %xmm0
	movl	76(%rsp), %edx
	movq	%rbp, %rcx
	movss	.LC17(%rip), %xmm2
	addss	%xmm13, %xmm7
	leaq	74(%rsp), %r8
	movl	$0, 32(%rsp)
	leaq	75(%rsp), %r9
	mulss	%xmm2, %xmm8
	mulss	%xmm2, %xmm7
	cvttss2si	%xmm8, %eax
	cvtsi2ss	%eax, %xmm0
	cvttss2si	%xmm7, %eax
	addss	%xmm2, %xmm0
	movss	%xmm0, 80(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm9, %xmm2
	movss	%xmm0, 84(%rsp)
	movaps	%xmm2, %xmm6
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$1, 74(%rsp)
	movl	%eax, %ebp
	movq	656(%rbx), %r8
	sbbl	%ecx, %ecx
	cmpb	$0, 75(%rsp)
	je	.L5470
	andl	$-2, %ecx
	addl	$9, %ecx
.L5471:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	leaq	80(%rsp), %r13
	movl	$16, 32(%rsp)
	movaps	%xmm6, %xmm2
	movl	%eax, %r9d
	movq	%r13, %rdx
	movq	%r8, %rcx
	call	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
	testb	%r12b, %r12b
	je	.L5472
	minss	%xmm9, %xmm15
	pxor	%xmm5, %xmm5
	movaps	%xmm15, %xmm9
	divss	.LC85(%rip), %xmm9
	cvttss2si	%xmm9, %eax
	cvtsi2ss	%eax, %xmm5
	ucomiss	%xmm5, %xmm14
	jnb	.L5499
.L5475:
	movl	$19, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	656(%rbx), %rcx
	movaps	%xmm6, %xmm2
	movq	%r13, %rdx
	subss	%xmm5, %xmm2
	movl	%eax, %r9d
	movl	$16, 32(%rsp)
	call	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
.L5472:
	testb	$-128, 12(%rbx)
	jne	.L5500
.L5477:
	cmpb	$0, 11432(%rsi)
	je	.L5478
	leaq	88(%rsp), %rcx
	testb	%r12b, %r12b
	movss	%xmm11, 88(%rsp)
	leaq	.LC222(%rip), %rdx
	movss	%xmm10, 92(%rsp)
	leaq	.LC221(%rip), %rax
	cmovne	%rax, %rdx
	xorl	%r8d, %r8d
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
.L5478:
	movd	%r14d, %xmm3
	ucomiss	%xmm12, %xmm3
	jbe	.L5456
	movd	%xmm10, %ecx
	movd	%xmm11, %eax
	movl	$1, %r9d
	movq	%rcx, %rdx
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	salq	$32, %rdx
	orq	%rdx, %rcx
	movq	%rdi, %rdx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L5456
	.p2align 4,,10
.L5498:
	movss	5176(%rsi), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	leaq	88(%rsp), %rcx
	movd	%r14d, %xmm0
	movss	192(%rbx), %xmm11
	movss	5160(%rsi), %xmm1
	movss	196(%rbx), %xmm10
	addss	%xmm12, %xmm11
	movss	%xmm9, 92(%rsp)
	addss	%xmm1, %xmm10
	addss	%xmm11, %xmm0
	addss	%xmm10, %xmm5
	movaps	%xmm0, %xmm2
	movss	%xmm0, 60(%rsp)
	subss	%xmm11, %xmm2
	movss	%xmm2, 88(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movss	96(%rsp), %xmm1
	movss	60(%rsp), %xmm0
	ucomiss	%xmm11, %xmm1
	jbe	.L5462
	movss	%xmm11, 96(%rsp)
.L5462:
	movss	100(%rsp), %xmm1
	ucomiss	%xmm10, %xmm1
	jbe	.L5464
	movss	%xmm10, 100(%rsp)
.L5464:
	ucomiss	104(%rsp), %xmm0
	jbe	.L5466
	movss	%xmm0, 104(%rsp)
.L5466:
	ucomiss	108(%rsp), %xmm5
	jbe	.L5463
	movss	%xmm5, 108(%rsp)
	jmp	.L5463
	.p2align 4,,10
.L5470:
	addl	$8, %ecx
	jmp	.L5471
	.p2align 4,,10
.L5499:
	movaps	%xmm14, %xmm5
	jmp	.L5475
	.p2align 4,,10
.L5500:
	movl	$6, %ecx
	movq	656(%rbx), %r8
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	84(%rsp), %xmm0
	leaq	88(%rsp), %rdx
	movaps	%xmm6, %xmm2
	movss	80(%rsp), %xmm1
	movl	%eax, %r9d
	movss	%xmm14, 40(%rsp)
	addss	%xmm14, %xmm0
	movl	$16, 32(%rsp)
	addss	%xmm14, %xmm1
	movq	%r8, %rcx
	movss	%xmm0, 92(%rsp)
	movss	%xmm1, 88(%rsp)
	call	_ZN10ImDrawList9AddCircleERK6ImVec2fjif
	movl	$5, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	656(%rbx), %rcx
	movaps	%xmm6, %xmm2
	movq	%r13, %rdx
	movl	%eax, %r9d
	movss	%xmm14, 40(%rsp)
	movl	$16, 32(%rsp)
	call	_ZN10ImDrawList9AddCircleERK6ImVec2fjif
	jmp	.L5477
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11RadioButtonEPKcPii
	.def	_ZN5ImGui11RadioButtonEPKcPii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11RadioButtonEPKcPii
_ZN5ImGui11RadioButtonEPKcPii:
.LFB966:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rbx
	xorl	%edx, %edx
	movl	%r8d, %esi
	cmpl	%r8d, (%rbx)
	sete	%dl
	call	_ZN5ImGui11RadioButtonEPKcb
	testb	%al, %al
	je	.L5501
	movl	%esi, (%rbx)
.L5501:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC223:
	.ascii "#colorbutton\0"
	.align 8
.LC224:
	.ascii "Color:\12(%.2f,%.2f,%.2f,%.2f)\12#%02X%02X%02X%02X\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11ColorButtonERK6ImVec4bb
	.def	_ZN5ImGui11ColorButtonERK6ImVec4bb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11ColorButtonERK6ImVec4bb
_ZN5ImGui11ColorButtonERK6ImVec4bb:
.LFB1044:
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
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movq	%rcx, %rdi
	movl	%edx, %r12d
	movl	%r8d, %ebp
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rsi
	cmpb	$0, 140(%rsi)
	je	.L5507
.L5510:
	xorl	%esi, %esi
.L5506:
	movaps	112(%rsp), %xmm6
	movl	%esi, %eax
	subq	$-128, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5507:
	leaq	.LC223(%rip), %rdx
	movq	%rsi, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	testb	%r12b, %r12b
	movss	5944(%rbx), %xmm6
	movl	%eax, 84(%rsp)
	jne	.L5509
	movss	5160(%rbx), %xmm1
	movss	196(%rsi), %xmm5
	movaps	%xmm1, %xmm0
	movss	192(%rsi), %xmm4
	addss	%xmm1, %xmm0
	movq	192(%rsi), %rax
	addss	%xmm6, %xmm0
	movq	%rax, 96(%rsp)
	movaps	%xmm0, %xmm3
	addss	%xmm4, %xmm0
	addss	%xmm5, %xmm3
	movss	%xmm0, 104(%rsp)
	movss	%xmm3, 108(%rsp)
.L5515:
	subss	%xmm4, %xmm0
	leaq	88(%rsp), %r12
	subss	%xmm5, %xmm3
	leaq	96(%rsp), %rsi
	movq	%r12, %rcx
	movss	%xmm0, 88(%rsp)
	movss	%xmm3, 92(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	84(%rsp), %rdx
	movq	%rsi, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5510
	movl	84(%rsp), %edx
	leaq	83(%rsp), %r8
	movq	%r12, %r9
	movq	%rsi, %rcx
	movl	$0, 32(%rsp)
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movq	%rdi, %rcx
	movl	%eax, %esi
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	movq	104(%rsp), %rdx
	movzbl	%bpl, %r9d
	movq	96(%rsp), %rcx
	movl	%eax, %r8d
	movss	5164(%rbx), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	cmpb	$0, 83(%rsp)
	je	.L5506
	movss	12(%rdi), %xmm6
	pxor	%xmm0, %xmm0
	xorl	%r8d, %r8d
	ucomiss	%xmm6, %xmm0
	ja	.L5511
	ucomiss	.LC18(%rip), %xmm6
	movl	$255, %r8d
	ja	.L5511
	movss	.LC19(%rip), %xmm1
	mulss	%xmm6, %xmm1
	addss	.LC17(%rip), %xmm1
	cvttss2si	%xmm1, %r8d
.L5511:
	movss	8(%rdi), %xmm3
	xorl	%ecx, %ecx
	ucomiss	%xmm3, %xmm0
	ja	.L5512
	ucomiss	.LC18(%rip), %xmm3
	movl	$255, %ecx
	ja	.L5512
	movss	.LC19(%rip), %xmm1
	mulss	%xmm3, %xmm1
	addss	.LC17(%rip), %xmm1
	cvttss2si	%xmm1, %ecx
.L5512:
	movss	4(%rdi), %xmm2
	xorl	%edx, %edx
	ucomiss	%xmm2, %xmm0
	ja	.L5513
	ucomiss	.LC18(%rip), %xmm2
	movl	$255, %edx
	ja	.L5513
	movss	.LC19(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LC17(%rip), %xmm1
	cvttss2si	%xmm1, %edx
.L5513:
	movss	(%rdi), %xmm1
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	ja	.L5514
	ucomiss	.LC18(%rip), %xmm1
	movl	$255, %eax
	ja	.L5514
	movss	.LC19(%rip), %xmm0
	mulss	%xmm1, %xmm0
	addss	.LC17(%rip), %xmm0
	cvttss2si	%xmm0, %eax
.L5514:
	movl	%ecx, 56(%rsp)
	cvtss2sd	%xmm6, %xmm6
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm5
	cvtss2sd	%xmm2, %xmm4
	movl	%edx, 48(%rsp)
	pxor	%xmm0, %xmm0
	movl	%eax, 40(%rsp)
	cvtss2sd	%xmm1, %xmm0
	movapd	%xmm5, %xmm3
	movq	%xmm5, %r9
	movl	%r8d, 64(%rsp)
	movapd	%xmm4, %xmm2
	movq	%xmm4, %r8
	movapd	%xmm0, %xmm1
	movsd	%xmm6, 32(%rsp)
	movq	%xmm0, %rdx
	leaq	.LC224(%rip), %rcx
	call	_ZN5ImGui10SetTooltipEPKcz
	jmp	.L5506
	.p2align 4,,10
.L5509:
	movss	5160(%rbx), %xmm2
	movaps	%xmm6, %xmm3
	pxor	%xmm1, %xmm1
	addss	%xmm1, %xmm3
	movss	196(%rsi), %xmm5
	addss	%xmm2, %xmm2
	movss	192(%rsi), %xmm4
	movq	192(%rsi), %rax
	addss	%xmm5, %xmm3
	addss	%xmm6, %xmm2
	movq	%rax, 96(%rsp)
	addss	%xmm4, %xmm2
	movss	%xmm3, 108(%rsp)
	movaps	%xmm2, %xmm0
	movss	%xmm2, 104(%rsp)
	jmp	.L5515
	.seh_endproc
	.section .rdata,"dr"
.LC225:
	.ascii "%s: (%.2f,%.2f,%.2f,%.2f)\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10ValueColorEPKcRK6ImVec4
	.def	_ZN5ImGui10ValueColorEPKcRK6ImVec4;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10ValueColorEPKcRK6ImVec4
_ZN5ImGui10ValueColorEPKcRK6ImVec4:
.LFB1076:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	4(%rdx), %xmm1
	cvtss2sd	(%rdx), %xmm0
	cvtss2sd	12(%rdx), %xmm2
	movq	%rdx, %rbx
	movsd	%xmm2, 40(%rsp)
	movapd	%xmm1, %xmm3
	pxor	%xmm2, %xmm2
	movq	%xmm1, %r9
	cvtss2sd	8(%rdx), %xmm2
	movq	%xmm0, %r8
	movq	%rcx, %rdx
	movsd	%xmm2, 32(%rsp)
	leaq	.LC225(%rip), %rcx
	movapd	%xmm0, %xmm2
	call	_ZN5ImGui4TextEPKcz
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L5528
	movss	5168(%rdx), %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L5528:
	movl	$1, %r8d
	movl	$1, %edx
	movq	%rbx, %rcx
	addq	$48, %rsp
	popq	%rbx
	jmp	_ZN5ImGui11ColorButtonERK6ImVec4bb
	.seh_endproc
	.section .rdata,"dr"
.LC226:
	.ascii "%s: %08X\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10ValueColorEPKcj
	.def	_ZN5ImGui10ValueColorEPKcj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10ValueColorEPKcj
_ZN5ImGui10ValueColorEPKcj:
.LFB1077:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%edx, %r8d
	movl	%edx, %ebx
	movq	%rcx, %rdx
	leaq	.LC226(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L5530
	movss	5168(%rdx), %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L5530:
	movzbl	%bl, %eax
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movss	.LC82(%rip), %xmm2
	cvtsi2ss	%eax, %xmm1
	movzbl	%bh, %eax
	movl	$1, %r8d
	leaq	32(%rsp), %rcx
	movl	$1, %edx
	mulss	%xmm2, %xmm1
	movss	%xmm1, 32(%rsp)
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movl	%ebx, %eax
	shrl	$16, %eax
	shrl	$24, %ebx
	movzbl	%al, %eax
	cvtsi2ss	%ebx, %xmm0
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
	movss	%xmm1, 36(%rsp)
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movss	%xmm0, 44(%rsp)
	mulss	%xmm2, %xmm1
	movss	%xmm1, 40(%rsp)
	call	_ZN5ImGui11ColorButtonERK6ImVec4bb
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC227:
	.ascii "columns\0"
.LC228:
	.ascii "columns_count >= 1\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui7ColumnsEiPKcb
	.def	_ZN5ImGui7ColumnsEiPKcb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7ColumnsEiPKcb
_ZN5ImGui7ColumnsEiPKcb:
.LFB1065:
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
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rax
	movslq	%ecx, %rbx
	movq	%rdx, %rbp
	movl	%r8d, %r12d
	testl	%ebx, %ebx
	movb	$1, 138(%rax)
	movq	6008(%rsi), %r15
	jle	.L5589
.L5532:
	cmpl	$1, 444(%r15)
	je	.L5533
	movl	440(%r15), %eax
	testl	%eax, %eax
	jne	.L5590
.L5534:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui11PopClipRectEv
	movq	656(%r15), %rcx
	call	_ZN10ImDrawList13ChannelsMergeEv
	movss	196(%r15), %xmm7
	movss	464(%r15), %xmm0
	ucomiss	%xmm7, %xmm0
	jnb	.L5591
.L5535:
	movss	%xmm7, 464(%r15)
	movl	444(%r15), %eax
	movss	%xmm7, 196(%r15)
	cmpl	$1, %eax
	je	.L5533
	cmpl	%ebx, %eax
	je	.L5533
	cmpb	$0, 468(%r15)
	je	.L5533
	cmpb	$0, 140(%r15)
	jne	.L5533
	movss	456(%r15), %xmm9
	cmpl	$1, %eax
	jle	.L5533
	leaq	75(%rsp), %rax
	movl	$1, %edi
	movss	.LC29(%rip), %xmm8
	movq	%rax, 48(%rsp)
	leaq	74(%rsp), %rax
	movss	.LC18(%rip), %xmm10
	leaq	96(%rsp), %r13
	movq	%rax, 56(%rsp)
	leaq	76(%rsp), %r14
	jmp	.L5538
.L5592:
	movl	$4, 6544(%rsi)
	xorl	%ecx, %ecx
	cmpb	$0, 75(%rsp)
	setne	%cl
	addl	$29, %ecx
.L5540:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	cvttss2si	%xmm6, %edx
	pxor	%xmm0, %xmm0
	movq	656(%r15), %rcx
	leaq	88(%rsp), %r8
	movl	%eax, %r9d
	movss	%xmm10, 32(%rsp)
	movss	%xmm7, 92(%rsp)
	cvtsi2ss	%edx, %xmm0
	leaq	80(%rsp), %rdx
	movss	%xmm0, 88(%rsp)
	movss	%xmm0, 80(%rsp)
	movaps	%xmm9, %xmm0
	addss	%xmm10, %xmm0
	movss	%xmm0, 84(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	cmpb	$0, 75(%rsp)
	je	.L5542
	cmpb	$0, 6077(%rsi)
	je	.L5543
	movss	6080(%rsi), %xmm0
	subss	%xmm8, %xmm0
	movss	%xmm0, 6080(%rsi)
.L5543:
	movl	%edi, %ecx
	call	_ZL22GetDraggedColumnOffseti
	movl	%edi, %ecx
	movaps	%xmm0, %xmm1
	call	_ZN5ImGui15SetColumnOffsetEif
.L5542:
	addl	$1, %edi
	cmpl	%edi, 444(%r15)
	jle	.L5533
.L5538:
	movss	28(%r15), %xmm6
	movl	%edi, %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	xorl	%r8d, %r8d
	movq	%r14, %rdx
	movq	%r13, %rcx
	addss	%xmm0, %xmm6
	movl	472(%r15), %r11d
	movss	%xmm9, 100(%rsp)
	movss	%xmm7, 108(%rsp)
	movaps	%xmm6, %xmm0
	subss	%xmm8, %xmm0
	addl	%edi, %r11d
	movl	%r11d, 76(%rsp)
	movss	%xmm0, 96(%rsp)
	movaps	%xmm6, %xmm0
	addss	%xmm8, %xmm0
	movss	%xmm0, 104(%rsp)
	call	_ZN5ImGui11IsClippedExERK6ImRectPKjb
	testb	%al, %al
	jne	.L5542
	movq	48(%rsp), %r9
	movl	$0, 32(%rsp)
	movl	%r11d, %edx
	movq	%r13, %rcx
	movq	56(%rsp), %r8
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 74(%rsp)
	jne	.L5592
	cmpb	$0, 75(%rsp)
	jne	.L5541
	movl	$28, %ecx
	jmp	.L5540
	.p2align 4,,10
.L5533:
	testq	%rbp, %rbp
	je	.L5593
	movl	$287454023, %ecx
	call	_ZN5ImGui6PushIDEi
.L5570:
	movq	%rbp, %rdx
	movq	%r15, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, 472(%r15)
	call	_ZN5ImGui5PopIDEv
	movss	60(%r15), %xmm1
	pxor	%xmm2, %xmm2
	movl	$0, 440(%r15)
	movl	%ebx, 444(%r15)
	ucomiss	%xmm2, %xmm1
	movb	%r12b, 468(%r15)
	jp	.L5545
	jne	.L5545
	movss	36(%r15), %xmm1
.L5545:
	testb	$8, 12(%r15)
	movss	428(%r15), %xmm0
	subss	96(%r15), %xmm1
	movss	%xmm0, 448(%r15)
	jne	.L5546
	subss	5200(%rsi), %xmm1
.L5546:
	addss	28(%r15), %xmm0
	cmpl	$1, %ebx
	movss	%xmm1, 452(%r15)
	movss	196(%r15), %xmm1
	movl	$0x00000000, 436(%r15)
	movss	%xmm1, 456(%r15)
	addss	%xmm2, %xmm0
	movss	%xmm1, 464(%r15)
	movss	%xmm1, 460(%r15)
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movl	484(%r15), %eax
	movss	%xmm0, 192(%r15)
	je	.L5547
	leal	1(%rbx), %edi
	cmpl	%eax, %edi
	jle	.L5548
	testl	%eax, %eax
	movl	$8, %esi
	je	.L5549
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
.L5549:
	cmpl	%esi, %edi
	jl	.L5594
	movl	%edi, %esi
.L5550:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	488(%r15), %rcx
	movq	%rax, %rbp
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5553
	movslq	480(%r15), %r8
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	salq	$2, %r8
	call	memcpy
	movq	488(%r15), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5553
	subl	$1, 844(%rax)
.L5553:
	call	*240(%rax)
	movq	%rbp, 488(%r15)
	movl	%esi, 484(%r15)
.L5548:
	testl	%ebx, %ebx
	movl	%edi, 480(%r15)
	js	.L5554
	movq	GImGui(%rip), %r12
	leaq	1(%rbx), %rbp
	xorl	%edi, %edi
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rbx
	.p2align 4,,10
.L5555:
	movl	472(%r15), %r8d
	movl	%edi, %r9d
	addl	%edi, %r8d
	cmpl	6068(%r12), %r8d
	jne	.L5556
	movb	$1, 6076(%r12)
.L5556:
	pxor	%xmm6, %xmm6
	pxor	%xmm0, %xmm0
	cvtsi2ss	%r9d, %xmm6
	movq	296(%r15), %rax
	cvtsi2ss	444(%r15), %xmm0
	movslq	(%rax), %r14
	divss	%xmm0, %xmm6
	movq	8(%rax), %r13
	salq	$4, %r14
	leaq	0(%r13,%r14), %r11
	sarq	$4, %r14
.L5561:
	testl	%r14d, %r14d
	jle	.L5557
	movl	%r14d, %ecx
	sarl	%ecx
	movslq	%ecx, %rax
	salq	$4, %rax
	addq	%r13, %rax
	cmpl	(%rax), %r8d
	jbe	.L5559
	jmp	.L5595
	.p2align 4,,10
.L5588:
	movl	%ecx, %edx
	sarl	%edx
	movslq	%edx, %rax
	salq	$4, %rax
	addq	%r13, %rax
	cmpl	(%rax), %r8d
	ja	.L5558
	movl	%edx, %ecx
.L5559:
	testl	%ecx, %ecx
	jne	.L5588
.L5557:
	cmpq	%r13, %r11
	je	.L5562
	cmpl	0(%r13), %r8d
	jne	.L5562
	movss	8(%r13), %xmm6
.L5562:
	cmpl	%r9d, 480(%r15)
	jle	.L5596
	movq	488(%r15), %rax
	movss	%xmm6, (%rax,%rdi,4)
	addq	$1, %rdi
	cmpq	%rbp, %rdi
	jne	.L5555
.L5554:
	movl	444(%r15), %edx
	movq	656(%r15), %rcx
	call	_ZN10ImDrawList13ChannelsSplitEi
	call	_ZL18PushColumnClipRecti.constprop.139
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movl	440(%rax), %ebx
	leal	1(%rbx), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	movl	%ebx, %ecx
	movaps	%xmm0, %xmm6
	call	_ZN5ImGui15GetColumnOffsetEi
	subss	%xmm0, %xmm6
	movss	.LC194(%rip), %xmm0
	mulss	%xmm6, %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	nop
.L5531:
	movaps	112(%rsp), %xmm6
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
	movaps	160(%rsp), %xmm9
	movaps	176(%rsp), %xmm10
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
.L5595:
	movl	%ecx, %edx
	movl	%r14d, %ecx
	.p2align 4,,10
.L5558:
	leaq	16(%rax), %r13
	addl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, %r14d
	jmp	.L5561
	.p2align 4,,10
.L5596:
	movl	$856, %r8d
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_assert
	movq	488(%r15), %rax
	movss	%xmm6, (%rax,%rdi,4)
	addq	$1, %rdi
	cmpq	%rbp, %rdi
	je	.L5554
	movq	GImGui(%rip), %r12
	jmp	.L5555
.L5591:
	movaps	%xmm0, %xmm7
	jmp	.L5535
.L5590:
	leaq	96(%rsp), %r13
	pxor	%xmm1, %xmm1
	movq	$0, 96(%rsp)
	movq	%r13, %rcx
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	jmp	.L5534
.L5547:
	testl	%eax, %eax
	jns	.L5566
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	488(%r15), %rcx
	movq	%rax, %rbx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5569
	movslq	480(%r15), %r8
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	salq	$2, %r8
	call	memcpy
	movq	488(%r15), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5569
	subl	$1, 844(%rax)
.L5569:
	call	*240(%rax)
	movq	%rbx, 488(%r15)
	movl	$0, 484(%r15)
.L5566:
	movl	$0, 480(%r15)
	jmp	.L5531
.L5593:
	leal	287454023(%rbx), %ecx
	call	_ZN5ImGui6PushIDEi
	leaq	.LC227(%rip), %rbp
	jmp	.L5570
.L5589:
	leaq	.LC5(%rip), %rdx
	movl	$9440, %r8d
	leaq	.LC228(%rip), %rcx
	call	_assert
	jmp	.L5532
.L5594:
	cmpl	%eax, %esi
	jg	.L5550
	jmp	.L5548
.L5541:
	movl	$4, 6544(%rsi)
	movl	$30, %ecx
	jmp	.L5540
	.seh_endproc
	.section .rdata,"dr"
.LC229:
	.ascii "#CLOSECOLUMNS\0"
	.align 8
.LC230:
	.ascii "*p_backup == current && \"PushID/PopID or TreeNode/TreePop Mismatch!\"\0"
	.align 8
.LC231:
	.ascii "*p_backup == current && \"BeginGroup/EndGroup Mismatch!\"\0"
	.align 8
.LC232:
	.ascii "*p_backup == current && \"BeginMenu/EndMenu or BeginPopup/EndPopup Mismatch\"\0"
	.align 8
.LC233:
	.ascii "*p_backup == current && \"PushStyleColor/PopStyleColor Mismatch!\"\0"
	.align 8
.LC234:
	.ascii "*p_backup == current && \"PushStyleVar/PopStyleVar Mismatch!\"\0"
	.align 8
.LC235:
	.ascii "*p_backup == current && \"PushFont/PopFont Mismatch!\"\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui3EndEv
	.def	_ZN5ImGui3EndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui3EndEv
_ZN5ImGui3EndEv:
.LFB772:
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
	movq	GImGui(%rip), %rdi
	movq	6008(%rdi), %rsi
	cmpl	$1, 444(%rsi)
	jne	.L5648
	call	_ZN5ImGui11PopClipRectEv
	testb	$16, 14(%rsi)
	je	.L5649
.L5620:
	movl	6016(%rdi), %eax
	testl	%eax, %eax
	jle	.L5650
.L5621:
	subl	$1, %eax
	movl	%eax, 6016(%rdi)
	testb	$2, 15(%rsi)
	je	.L5622
	movl	6200(%rdi), %eax
	testl	%eax, %eax
	jle	.L5651
.L5623:
	subl	$1, %eax
	movl	%eax, 6200(%rdi)
.L5622:
	movl	404(%rsi), %eax
	cmpl	%eax, 496(%rsi)
	movq	GImGui(%rip), %rbx
	je	.L5624
	leaq	.LC5(%rip), %rdx
	movl	$3726, %r8d
	leaq	.LC230(%rip), %rcx
	call	_assert
.L5624:
	movl	408(%rsi), %eax
	cmpl	%eax, 384(%rsi)
	je	.L5625
	leaq	.LC5(%rip), %rdx
	movl	$3727, %r8d
	leaq	.LC231(%rip), %rcx
	call	_assert
.L5625:
	movl	412(%rsi), %eax
	cmpl	%eax, 6200(%rbx)
	je	.L5626
	leaq	.LC5(%rip), %rdx
	movl	$3728, %r8d
	leaq	.LC232(%rip), %rcx
	call	_assert
.L5626:
	movl	416(%rsi), %eax
	cmpl	%eax, 6136(%rbx)
	je	.L5627
	leaq	.LC5(%rip), %rdx
	movl	$3729, %r8d
	leaq	.LC233(%rip), %rcx
	call	_assert
.L5627:
	movl	420(%rsi), %eax
	cmpl	%eax, 6152(%rbx)
	je	.L5628
	leaq	.LC5(%rip), %rdx
	movl	$3730, %r8d
	leaq	.LC234(%rip), %rcx
	call	_assert
.L5628:
	movl	424(%rsi), %eax
	cmpl	%eax, 6168(%rbx)
	je	.L5629
	leaq	.LC5(%rip), %rdx
	movl	$3731, %r8d
	leaq	.LC235(%rip), %rcx
	call	_assert
.L5629:
	movslq	6016(%rdi), %rax
	cmpl	$0, %eax
	jne	.L5630
	movq	GImGui(%rip), %rax
	movq	$0, 6008(%rax)
.L5597:
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
.L5648:
	movb	$1, 138(%rsi)
	movq	6008(%rdi), %rbx
	cmpl	$1, 444(%rbx)
	je	.L5599
	movl	440(%rbx), %edx
	testl	%edx, %edx
	jne	.L5652
.L5600:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui11PopClipRectEv
	movq	656(%rbx), %rcx
	call	_ZN10ImDrawList13ChannelsMergeEv
	movss	196(%rbx), %xmm7
	movss	464(%rbx), %xmm0
	ucomiss	%xmm7, %xmm0
	jnb	.L5653
.L5601:
	movl	444(%rbx), %eax
	movss	%xmm7, 464(%rbx)
	movss	%xmm7, 196(%rbx)
	cmpl	$1, %eax
	je	.L5599
	cmpb	$0, 468(%rbx)
	jne	.L5654
.L5599:
	movl	$287454023, %ecx
	call	_ZN5ImGui6PushIDEi
	leaq	.LC229(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, 472(%rbx)
	call	_ZN5ImGui5PopIDEv
	movss	60(%rbx), %xmm1
	pxor	%xmm2, %xmm2
	movabsq	$4294967296, %rax
	movq	%rax, 440(%rbx)
	ucomiss	%xmm2, %xmm1
	movb	$1, 468(%rbx)
	jp	.L5614
	jne	.L5614
	movss	36(%rbx), %xmm1
.L5614:
	testb	$8, 12(%rbx)
	movss	428(%rbx), %xmm0
	subss	96(%rbx), %xmm1
	movss	%xmm0, 448(%rbx)
	jne	.L5615
	subss	5200(%rdi), %xmm1
.L5615:
	addss	28(%rbx), %xmm0
	movss	%xmm1, 452(%rbx)
	movss	196(%rbx), %xmm1
	movl	$0x00000000, 436(%rbx)
	addss	%xmm2, %xmm0
	movss	%xmm1, 456(%rbx)
	movss	%xmm1, 464(%rbx)
	movss	%xmm1, 460(%rbx)
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movl	484(%rbx), %eax
	testl	%eax, %eax
	movss	%xmm0, 192(%rbx)
	jns	.L5616
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	488(%rbx), %rcx
	movq	%rax, %rbp
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5619
	movslq	480(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	salq	$2, %r8
	call	memcpy
	movq	488(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5619
	subl	$1, 844(%rax)
.L5619:
	call	*240(%rax)
	movq	%rbp, 488(%rbx)
	movl	$0, 484(%rbx)
.L5616:
	movl	$0, 480(%rbx)
	call	_ZN5ImGui11PopClipRectEv
	testb	$16, 14(%rsi)
	jne	.L5620
.L5649:
	call	_ZN5ImGui9LogFinishEv
	movl	6016(%rdi), %eax
	testl	%eax, %eax
	jg	.L5621
.L5650:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6016(%rdi), %eax
	jmp	.L5621
	.p2align 4,,10
.L5630:
	jle	.L5655
.L5632:
	movq	6024(%rdi), %rdx
	movq	-8(%rdx,%rax,8), %rdx
	movq	GImGui(%rip), %rax
	testq	%rdx, %rdx
	movq	%rdx, 6008(%rax)
	je	.L5597
	movss	648(%rdx), %xmm0
	mulss	5948(%rax), %xmm0
	movss	%xmm0, 5944(%rax)
	jmp	.L5597
	.p2align 4,,10
.L5653:
	movaps	%xmm0, %xmm7
	jmp	.L5601
	.p2align 4,,10
.L5651:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6200(%rdi), %eax
	jmp	.L5623
	.p2align 4,,10
.L5654:
	cmpb	$0, 140(%rbx)
	jne	.L5599
	movss	456(%rbx), %xmm9
	cmpl	$1, %eax
	jle	.L5599
	movss	.LC29(%rip), %xmm8
	leaq	63(%rsp), %r13
	movl	$1, %ebp
	movss	.LC18(%rip), %xmm10
	leaq	62(%rsp), %r12
	jmp	.L5611
	.p2align 4,,10
.L5657:
	movss	524(%rcx), %xmm2
	ucomiss	%xmm9, %xmm2
	jbe	.L5603
	ucomiss	512(%rcx), %xmm0
	jbe	.L5603
	movss	520(%rcx), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L5603
	.p2align 4,,10
.L5607:
	leaq	80(%rsp), %rcx
	movl	$0, 32(%rsp)
	movq	%r13, %r9
	movq	%r12, %r8
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 62(%rsp)
	jne	.L5656
	cmpb	$0, 63(%rsp)
	jne	.L5612
	movl	$28, %ecx
.L5610:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	cvttss2si	%xmm6, %edx
	pxor	%xmm0, %xmm0
	movq	656(%rbx), %rcx
	leaq	64(%rsp), %r8
	movl	%eax, %r9d
	movss	%xmm10, 32(%rsp)
	movss	%xmm7, 68(%rsp)
	cvtsi2ss	%edx, %xmm0
	leaq	72(%rsp), %rdx
	movss	%xmm0, 64(%rsp)
	movss	%xmm0, 72(%rsp)
	movaps	%xmm9, %xmm0
	addss	%xmm10, %xmm0
	movss	%xmm0, 76(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	cmpb	$0, 63(%rsp)
	je	.L5608
	cmpb	$0, 6077(%rdi)
	je	.L5613
	movss	6080(%rdi), %xmm0
	subss	%xmm8, %xmm0
	movss	%xmm0, 6080(%rdi)
.L5613:
	movl	%ebp, %ecx
	call	_ZL22GetDraggedColumnOffseti
	movl	%ebp, %ecx
	movaps	%xmm0, %xmm1
	call	_ZN5ImGui15SetColumnOffsetEif
.L5608:
	addl	$1, %ebp
	cmpl	%ebp, 444(%rbx)
	jle	.L5599
.L5611:
	movss	28(%rbx), %xmm6
	movl	%ebp, %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	movq	GImGui(%rip), %rax
	addss	%xmm0, %xmm6
	movl	472(%rbx), %edx
	movss	%xmm7, 92(%rsp)
	movss	%xmm9, 84(%rsp)
	movaps	%xmm6, %xmm0
	movaps	%xmm6, %xmm1
	addss	%xmm8, %xmm0
	addl	%ebp, %edx
	subss	%xmm8, %xmm1
	movss	%xmm0, 88(%rsp)
	movss	%xmm1, 80(%rsp)
	movq	6008(%rax), %rcx
	ucomiss	516(%rcx), %xmm7
	ja	.L5657
.L5603:
	cmpl	6068(%rax), %edx
	je	.L5607
	cmpb	$0, 11432(%rax)
	jne	.L5607
	jmp	.L5608
	.p2align 4,,10
.L5652:
	leaq	80(%rsp), %rcx
	pxor	%xmm1, %xmm1
	movq	$0, 80(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	jmp	.L5600
	.p2align 4,,10
.L5655:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	6016(%rdi), %rax
	jmp	.L5632
	.p2align 4,,10
.L5656:
	movl	$4, 6544(%rdi)
	xorl	%ecx, %ecx
	cmpb	$0, 63(%rsp)
	setne	%cl
	addl	$29, %ecx
	jmp	.L5610
	.p2align 4,,10
.L5612:
	movl	$4, 6544(%rdi)
	movl	$30, %ecx
	jmp	.L5610
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC236:
	.ascii "GetCurrentWindowRead()->Flags & ImGuiWindowFlags_Tooltip\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10EndTooltipEv
	.def	_ZN5ImGui10EndTooltipEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10EndTooltipEv
_ZN5ImGui10EndTooltipEv:
.LFB739:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	testb	$1, 15(%rax)
	jne	.L5659
	leaq	.LC5(%rip), %rdx
	movl	$3409, %r8d
	leaq	.LC236(%rip), %rcx
	call	_assert
	nop
.L5659:
	addq	$40, %rsp
	jmp	_ZN5ImGui3EndEv
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC237:
	.ascii "window->Flags & ImGuiWindowFlags_Popup\0"
	.align 8
.LC238:
	.ascii "GImGui->CurrentPopupStack.Size > 0\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8EndPopupEv
	.def	_ZN5ImGui8EndPopupEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8EndPopupEv
_ZN5ImGui8EndPopupEv:
.LFB752:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	testb	$2, 15(%rbx)
	je	.L5664
	movl	6200(%rax), %eax
	testl	%eax, %eax
	jle	.L5665
.L5662:
	call	_ZN5ImGui3EndEv
	testb	$4, 15(%rbx)
	je	.L5666
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L5666:
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui11PopStyleVarEi.constprop.141
	.p2align 4,,10
.L5664:
	leaq	.LC5(%rip), %rdx
	movl	$3588, %r8d
	leaq	.LC237(%rip), %rcx
	call	_assert
	movq	GImGui(%rip), %rax
	movl	6200(%rax), %eax
	testl	%eax, %eax
	jg	.L5662
.L5665:
	leaq	.LC5(%rip), %rdx
	movl	$3589, %r8d
	leaq	.LC238(%rip), %rcx
	call	_assert
	jmp	.L5662
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC239:
	.ascii "window->Flags & ImGuiWindowFlags_ChildWindow\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8EndChildEv
	.def	_ZN5ImGui8EndChildEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8EndChildEv
_ZN5ImGui8EndChildEv:
.LFB759:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	movl	12(%rbx), %eax
	testl	$1048576, %eax
	je	.L5686
.L5668:
	testl	$8388608, %eax
	jne	.L5669
	cmpl	$1, 144(%rbx)
	jle	.L5670
.L5669:
	call	_ZN5ImGui3EndEv
	nop
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L5670:
	movq	GImGui(%rip), %rdx
	testl	$2097152, %eax
	movq	6008(%rdx), %rdx
	movss	36(%rdx), %xmm1
	movss	40(%rdx), %xmm0
	movss	%xmm1, 40(%rsp)
	movss	%xmm0, 44(%rsp)
	je	.L5672
	movss	.LC29(%rip), %xmm2
	ucomiss	%xmm1, %xmm2
	jb	.L5673
	movaps	%xmm2, %xmm1
.L5673:
	movss	%xmm1, 40(%rsp)
.L5672:
	testl	$4194304, %eax
	je	.L5675
	movss	.LC29(%rip), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L5676
	movaps	%xmm1, %xmm0
.L5676:
	movss	%xmm0, 44(%rsp)
.L5675:
	call	_ZN5ImGui3EndEv
	movq	GImGui(%rip), %rax
	leaq	40(%rsp), %rcx
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	movss	196(%rax), %xmm0
	movss	192(%rax), %xmm1
	movq	192(%rax), %rax
	addss	44(%rsp), %xmm0
	addss	40(%rsp), %xmm1
	movq	%rax, 48(%rsp)
	movss	%xmm1, 56(%rsp)
	pxor	%xmm1, %xmm1
	movss	%xmm0, 60(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	48(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj.constprop.143
	nop
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L5686:
	leaq	.LC5(%rip), %rdx
	movl	$3679, %r8d
	leaq	.LC239(%rip), %rcx
	call	_assert
	movl	12(%rbx), %eax
	jmp	.L5668
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13EndChildFrameEv
	.def	_ZN5ImGui13EndChildFrameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13EndChildFrameEv
_ZN5ImGui13EndChildFrameEv:
.LFB761:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	call	_ZN5ImGui8EndChildEv
	call	_ZN5ImGui11PopStyleVarEi.constprop.140
	movq	GImGui(%rip), %rbx
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L5691
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L5689:
	subl	$1, %eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L5691:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	6136(%rbx), %rdx
	leaq	(%rdx,%rdx,4), %rcx
	movq	%rdx, %rax
	movq	6144(%rbx), %rdx
	leaq	-20(%rdx,%rcx,4), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L5689
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	6136(%rbx), %eax
	subl	$1, %eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13ListBoxFooterEv
	.def	_ZN5ImGui13ListBoxFooterEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13ListBoxFooterEv
_ZN5ImGui13ListBoxFooterEv:
.LFB1033:
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
	movq	GImGui(%rip), %rsi
	movl	6016(%rsi), %eax
	cmpl	$1, %eax
	jle	.L5696
.L5693:
	leal	-2(%rax), %ebx
	cmpl	%eax, %ebx
	jl	.L5694
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
.L5694:
	movq	6024(%rsi), %rax
	movslq	%ebx, %rbx
	movq	GImGui(%rip), %rsi
	movq	(%rax,%rbx,8), %rbx
	movss	252(%rbx), %xmm9
	movss	256(%rbx), %xmm8
	movss	260(%rbx), %xmm7
	movss	264(%rbx), %xmm6
	call	_ZN5ImGui8EndChildEv
	call	_ZN5ImGui11PopStyleVarEi.constprop.140
	call	_ZN5ImGui13PopStyleColorEi.constprop.142
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L5695
	movss	5168(%rdx), %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L5695:
	subss	%xmm9, %xmm7
	leaq	40(%rsp), %rcx
	movss	5160(%rsi), %xmm1
	movss	%xmm9, 192(%rbx)
	movss	%xmm8, 196(%rbx)
	subss	%xmm8, %xmm6
	movss	%xmm7, 40(%rsp)
	movss	%xmm6, 44(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	call	_ZN5ImGui8EndGroupEv
	nop
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	movaps	96(%rsp), %xmm9
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L5696:
	leaq	.LC5(%rip), %rdx
	movl	$1860, %r8d
	leaq	.LC104(%rip), %rcx
	call	_assert
	movl	6016(%rsi), %eax
	jmp	.L5693
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14EndMainMenuBarEv
	.def	_ZN5ImGui14EndMainMenuBarEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14EndMainMenuBarEv
_ZN5ImGui14EndMainMenuBarEv:
.LFB1039:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	jne	.L5698
	testb	$4, 13(%rbx)
	je	.L5702
	cmpb	$0, 270(%rbx)
	je	.L5703
.L5700:
	call	_ZN5ImGui11PopClipRectEv
	call	_ZN5ImGui5PopIDEv
	movslq	384(%rbx), %rax
	movss	192(%rbx), %xmm0
	subss	28(%rbx), %xmm0
	testl	%eax, %eax
	movss	%xmm0, 272(%rbx)
	jle	.L5704
.L5701:
	movq	392(%rbx), %rdx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rdx,%rax,8), %rax
	movb	$0, -3(%rax)
	call	_ZN5ImGui8EndGroupEv
	movb	$0, 270(%rbx)
	movl	$0, 304(%rbx)
.L5698:
	call	_ZN5ImGui3EndEv
	nop
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui11PopStyleVarEi.constprop.140
	.p2align 4,,10
.L5703:
	leaq	.LC5(%rip), %rdx
	movl	$8845, %r8d
	leaq	.LC187(%rip), %rcx
	call	_assert
	jmp	.L5700
	.p2align 4,,10
.L5702:
	leaq	.LC5(%rip), %rdx
	movl	$8844, %r8d
	leaq	.LC186(%rip), %rcx
	call	_assert
	cmpb	$0, 270(%rbx)
	jne	.L5700
	jmp	.L5703
	.p2align 4,,10
.L5704:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	384(%rbx), %rax
	jmp	.L5701
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7EndMenuEv
	.def	_ZN5ImGui7EndMenuEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7EndMenuEv
_ZN5ImGui7EndMenuEv:
.LFB1043:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	testb	$2, 15(%rbx)
	je	.L5709
	movl	6200(%rax), %eax
	testl	%eax, %eax
	jle	.L5710
.L5707:
	call	_ZN5ImGui3EndEv
	testb	$4, 15(%rbx)
	je	.L5711
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L5711:
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui11PopStyleVarEi.constprop.141
	.p2align 4,,10
.L5709:
	leaq	.LC5(%rip), %rdx
	movl	$3588, %r8d
	leaq	.LC237(%rip), %rcx
	call	_assert
	movq	GImGui(%rip), %rax
	movl	6200(%rax), %eax
	testl	%eax, %eax
	jg	.L5707
.L5710:
	leaq	.LC5(%rip), %rdx
	movl	$3589, %r8d
	leaq	.LC238(%rip), %rcx
	call	_assert
	jmp	.L5707
	.seh_endproc
	.section .rdata,"dr"
.LC240:
	.ascii "%.3f\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f
	.def	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f
_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f:
.LFB928:
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
	subq	$240, %rsp
	.seh_stackalloc	240
	movaps	%xmm6, 192(%rsp)
	.seh_savexmm	%xmm6, 192
	movaps	%xmm7, 208(%rsp)
	.seh_savexmm	%xmm7, 208
	movaps	%xmm8, 224(%rsp)
	.seh_savexmm	%xmm8, 224
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movq	%rcx, %rdi
	movq	%rdx, %r12
	movq	%r8, %rbp
	movaps	%xmm3, %xmm7
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rsi
	cmpb	$0, 140(%rsi)
	je	.L5713
.L5717:
	xorl	%esi, %esi
.L5712:
	movaps	192(%rsp), %xmm6
	movl	%esi, %eax
	movaps	208(%rsp), %xmm7
	movaps	224(%rsp), %xmm8
	addq	$240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L5713:
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	pxor	%xmm8, %xmm8
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rdi, %rcx
	movss	.LC1(%rip), %xmm3
	movl	%eax, 92(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	192(%rsi), %xmm2
	movss	(%r12), %xmm3
	movd	%eax, %xmm6
	movq	192(%rsi), %rax
	ucomiss	%xmm8, %xmm6
	addss	%xmm2, %xmm3
	movss	196(%rsi), %xmm0
	pxor	%xmm2, %xmm2
	addss	4(%r12), %xmm0
	movq	%rax, 112(%rsp)
	movss	%xmm3, 120(%rsp)
	movss	%xmm0, 124(%rsp)
	jbe	.L5715
	movss	5176(%rbx), %xmm2
	addss	%xmm6, %xmm2
.L5715:
	addss	%xmm3, %xmm2
	movss	5160(%rbx), %xmm1
	leaq	128(%rsp), %r13
	subss	112(%rsp), %xmm2
	leaq	112(%rsp), %r12
	movq	%r13, %rcx
	addss	%xmm8, %xmm0
	subss	116(%rsp), %xmm0
	movss	%xmm2, 128(%rsp)
	movss	%xmm0, 132(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	92(%rsp), %rdx
	movq	%r12, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5717
	movl	92(%rsp), %r14d
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	movl	%r14d, %edx
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	je	.L5718
	movq	GImGui(%rip), %rax
	cmpq	$0, 344(%rsp)
	movl	%r14d, 6056(%rax)
	movb	$0, 6060(%rax)
	jne	.L5739
	leaq	.LC240(%rip), %rcx
	movl	$3, %edx
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
	leaq	.LC240(%rip), %rcx
	movq	%rcx, 344(%rsp)
.L5726:
	cmpb	$0, 876(%rbx)
	movl	92(%rsp), %edx
	je	.L5721
	movq	GImGui(%rip), %rcx
	testl	%edx, %edx
	movl	%edx, 6068(%rcx)
	movb	$0, 6078(%rcx)
	movb	$1, 6077(%rcx)
	je	.L5722
	movb	$1, 6076(%rcx)
.L5722:
	movq	%rsi, 6088(%rcx)
	movq	%rsi, %rcx
	movl	%eax, 76(%rsp)
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	92(%rsp), %edx
	movl	76(%rsp), %eax
	jmp	.L5721
	.p2align 4,,10
.L5718:
	cmpq	$0, 344(%rsp)
	je	.L5740
	movq	344(%rsp), %rcx
	movl	$3, %edx
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
	movl	92(%rsp), %edx
.L5721:
	movaps	%xmm7, %xmm3
	movq	%rbp, %r8
	movq	%r12, %rcx
	movl	%eax, 48(%rsp)
	movss	352(%rsp), %xmm0
	movl	$1, 56(%rsp)
	movss	%xmm0, 40(%rsp)
	movss	336(%rsp), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii
	movq	344(%rsp), %r8
	movq	%r13, %rcx
	movl	$64, %edx
	pxor	%xmm0, %xmm0
	cvtss2sd	0(%rbp), %xmm0
	movapd	%xmm0, %xmm3
	movq	%xmm0, %r9
	movl	%eax, %esi
	call	_Z14ImFormatStringPciPKcz
	movss	116(%rsp), %xmm0
	leaq	104(%rsp), %r8
	movq	$1056964608, 104(%rsp)
	addss	5160(%rbx), %xmm0
	cltq
	movq	%r8, 40(%rsp)
	movq	%r13, %r8
	movss	112(%rsp), %xmm1
	leaq	8(%r12), %rdx
	movq	$0, 48(%rsp)
	movq	$0, 32(%rsp)
	leaq	96(%rsp), %rcx
	leaq	0(%r13,%rax), %r9
	movss	%xmm1, 96(%rsp)
	movss	%xmm0, 100(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	ucomiss	%xmm8, %xmm6
	jbe	.L5712
	movss	116(%rsp), %xmm1
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	%rdi, %rdx
	addss	5160(%rbx), %xmm1
	movss	120(%rsp), %xmm0
	addss	5176(%rbx), %xmm0
	movd	%xmm1, %ecx
	movq	%rcx, %rax
	salq	$32, %rax
	movd	%xmm0, %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L5712
	.p2align 4,,10
.L5739:
	movq	344(%rsp), %rcx
	movl	$3, %edx
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
	jmp	.L5726
.L5740:
	leaq	.LC240(%rip), %rcx
	movl	$3, %edx
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
	leaq	.LC240(%rip), %rcx
	movl	92(%rsp), %edx
	movq	%rcx, 344(%rsp)
	jmp	.L5721
	.seh_endproc
	.section .rdata,"dr"
.LC241:
	.ascii "%.0f\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_
	.def	_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_
_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_:
.LFB931:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movq	136(%rsp), %rax
	movq	%r8, %rbx
	cvtsi2ss	%r9d, %xmm3
	testq	%rax, %rax
	movl	$0x3f800000, 48(%rsp)
	cvtsi2ss	(%rbx), %xmm0
	leaq	.LC241(%rip), %r8
	cmove	%r8, %rax
	leaq	76(%rsp), %r8
	movq	%rax, 40(%rsp)
	movss	%xmm0, 76(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	128(%rsp), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f
	cvttss2si	76(%rsp), %edx
	movl	%edx, (%rbx)
	addq	$80, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17ClosePopupToLeveli;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17ClosePopupToLeveli
_ZL17ClosePopupToLeveli:
.LFB745:
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
	movq	GImGui(%rip), %rbx
	movl	6184(%rbx), %eax
	testl	%ecx, %ecx
	movl	%ecx, %esi
	jle	.L5744
	leal	-1(%rcx), %edi
	cmpl	%eax, %edi
	jge	.L5758
.L5745:
	movq	6192(%rbx), %rdx
	movslq	%edi, %rdi
	leaq	(%rdi,%rdi,4), %rax
	leaq	(%rdx,%rax,8), %rax
	movq	8(%rax), %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
.L5746:
	movl	6188(%rbx), %eax
	cmpl	%eax, %esi
	jle	.L5748
	testl	%eax, %eax
	movl	$8, %edi
	je	.L5749
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	addl	%eax, %edi
.L5749:
	cmpl	%edi, %esi
	jl	.L5759
	movl	%esi, %edi
.L5750:
	movq	GImGui(%rip), %rax
	movslq	%edi, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	salq	$3, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	6192(%rbx), %rcx
	movq	%rax, %rbp
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5753
	movslq	6184(%rbx), %rax
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$3, %r8
	call	memcpy
	movq	6192(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5753
	subl	$1, 844(%rax)
.L5753:
	call	*240(%rax)
	movq	%rbp, 6192(%rbx)
	movl	%edi, 6188(%rbx)
.L5748:
	movl	%esi, 6184(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5759:
	cmpl	%edi, %eax
	jl	.L5750
	jmp	.L5748
	.p2align 4,,10
.L5758:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L5745
	.p2align 4,,10
.L5744:
	testl	%eax, %eax
	jle	.L5760
.L5747:
	movq	6192(%rbx), %rax
	movq	16(%rax), %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	jmp	.L5746
	.p2align 4,,10
.L5760:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L5747
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17CloseCurrentPopupEv
	.def	_ZN5ImGui17CloseCurrentPopupEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17CloseCurrentPopupEv
_ZN5ImGui17CloseCurrentPopupEv:
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movl	6200(%rsi), %ebx
	subl	$1, %ebx
	js	.L5761
	movl	6184(%rsi), %eax
	cmpl	%ebx, %eax
	jl	.L5761
	movslq	%ebx, %rdx
	leaq	(%rdx,%rdx,4), %rbp
	movq	6208(%rsi), %rdx
	salq	$3, %rbp
	cmpl	%ebx, %eax
	movq	%rbp, %rdi
	movl	(%rdx,%rbp), %r12d
	jle	.L5774
.L5763:
	movq	6192(%rsi), %rdx
	cmpl	(%rdx,%rbp), %r12d
	je	.L5775
.L5761:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L5775:
	leaq	.LC2(%rip), %r12
	testl	%ebx, %ebx
	leaq	.LC3(%rip), %rbp
	jne	.L5764
	jmp	.L5770
	.p2align 4,,10
.L5766:
	movq	8(%rdx,%rdi), %rax
	testq	%rax, %rax
	je	.L5765
.L5768:
	testb	$8, 15(%rax)
	je	.L5765
	subq	$40, %rdi
	subl	$1, %ebx
	je	.L5770
.L5764:
	cmpl	%ebx, 6184(%rsi)
	jg	.L5766
	movq	%r12, %rdx
	movl	$856, %r8d
	movq	%rbp, %rcx
	call	_assert
	movq	6192(%rsi), %rdx
	movq	8(%rdx,%rdi), %rax
	testq	%rax, %rax
	je	.L5765
	cmpl	%ebx, 6184(%rsi)
	jg	.L5768
	movq	%r12, %rdx
	movl	$856, %r8d
	movq	%rbp, %rcx
	call	_assert
	movq	6192(%rsi), %rdx
	movq	8(%rdx,%rdi), %rax
	jmp	.L5768
	.p2align 4,,10
.L5770:
	xorl	%ebx, %ebx
.L5765:
	movl	%ebx, %ecx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_ZL17ClosePopupToLeveli
	.p2align 4,,10
.L5774:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L5763
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	.def	_ZN5ImGui10SelectableEPKcbiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
_ZN5ImGui10SelectableEPKcbiRK6ImVec2:
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
	subq	$248, %rsp
	.seh_stackalloc	248
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
	.seh_endprologue
	movq	GImGui(%rip), %r13
	movq	6008(%r13), %rax
	movq	%rcx, %rsi
	movl	%edx, %ebp
	movl	%r8d, %ebx
	movq	%r9, %r14
	movb	$1, 138(%rax)
	movq	6008(%r13), %r12
	cmpb	$0, 140(%r12)
	jne	.L5793
	movl	%r8d, %edi
	andl	$2, %edi
	jne	.L5845
.L5779:
	movq	%rsi, %rdx
	movq	%r12, %rcx
	pxor	%xmm10, %xmm10
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rsi, %rcx
	movss	.LC1(%rip), %xmm3
	movl	%eax, 92(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	4(%r14), %xmm6
	movq	%rax, 96(%rsp)
	ucomiss	%xmm10, %xmm6
	jp	.L5780
	movd	%xmm6, %eax
	cmove	100(%rsp), %eax
	movd	%eax, %xmm6
.L5780:
	movss	(%r14), %xmm0
	ucomiss	%xmm10, %xmm0
	jp	.L5781
	movd	%xmm0, %eax
	cmove	96(%rsp), %eax
	movd	%eax, %xmm0
.L5781:
	movss	192(%r12), %xmm9
	leaq	128(%rsp), %r15
	pxor	%xmm1, %xmm1
	movss	196(%r12), %xmm7
	movq	%r15, %rcx
	addss	%xmm9, %xmm0
	movss	%xmm9, 112(%rsp)
	addss	228(%r12), %xmm7
	movss	%xmm0, 120(%rsp)
	subss	%xmm9, %xmm0
	addss	%xmm7, %xmm6
	movss	%xmm7, 116(%rsp)
	movss	%xmm0, 128(%rsp)
	movaps	%xmm6, %xmm0
	movss	%xmm6, 124(%rsp)
	subss	%xmm7, %xmm0
	movss	%xmm0, 132(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	testl	%edi, %edi
	movss	84(%r12), %xmm11
	je	.L5782
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	76(%rax), %xmm8
.L5783:
	movss	28(%r12), %xmm0
	movss	96(%rsp), %xmm1
	addss	%xmm8, %xmm0
	subss	%xmm11, %xmm0
	subss	192(%r12), %xmm0
	ucomiss	%xmm0, %xmm1
	jb	.L5784
	movaps	%xmm1, %xmm0
.L5784:
	movss	4(%r14), %xmm1
	ucomiss	%xmm10, %xmm1
	jp	.L5818
	je	.L5786
.L5818:
	movaps	%xmm1, %xmm6
	addss	%xmm7, %xmm6
.L5786:
	movss	(%r14), %xmm2
	ucomiss	%xmm10, %xmm2
	jp	.L5819
	je	.L5839
.L5819:
	testb	$64, %bl
	je	.L5790
.L5839:
	addss	%xmm9, %xmm0
	addss	%xmm0, %xmm11
.L5813:
	movss	5168(%r13), %xmm2
	pxor	%xmm3, %xmm3
	movq	%r15, %rcx
	movss	.LC17(%rip), %xmm0
	movaps	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movss	5172(%r13), %xmm1
	mulss	%xmm1, %xmm0
	cvtsi2ss	%eax, %xmm3
	cvttss2si	%xmm0, %edx
	pxor	%xmm0, %xmm0
	subss	%xmm3, %xmm2
	subss	%xmm3, %xmm9
	cvtsi2ss	%edx, %xmm0
	leaq	92(%rsp), %rdx
	addss	%xmm11, %xmm2
	movss	%xmm9, 128(%rsp)
	movss	%xmm2, 136(%rsp)
	subss	%xmm0, %xmm1
	subss	%xmm0, %xmm7
	addss	%xmm6, %xmm1
	movss	%xmm7, 132(%rsp)
	movss	%xmm1, 140(%rsp)
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	movl	%eax, %r14d
	jne	.L5792
	testl	%edi, %edi
	je	.L5793
	cmpl	$1, 444(%r12)
	jle	.L5793
	call	_ZL18PushColumnClipRecti.constprop.139
	jmp	.L5776
	.p2align 4,,10
.L5793:
	xorl	%r14d, %r14d
.L5776:
	movaps	144(%rsp), %xmm6
	movl	%r14d, %eax
	movaps	160(%rsp), %xmm7
	movaps	176(%rsp), %xmm8
	movaps	192(%rsp), %xmm9
	movaps	208(%rsp), %xmm10
	movaps	224(%rsp), %xmm11
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
	.p2align 4,,10
.L5845:
	cmpl	$1, 444(%r12)
	jle	.L5779
	call	_ZN5ImGui11PopClipRectEv
	jmp	.L5779
	.p2align 4,,10
.L5792:
	movl	%ebx, %eax
	andl	$8, %eax
	je	.L5846
	movl	$22, %r8d
	movl	$150, %ecx
	movl	$132, %r9d
	movl	$4, %eax
.L5794:
	movl	%ebx, %edx
	movl	$30, %r10d
	movl	%ebx, %r11d
	andl	$16, %edx
	movl	$12, %edx
	cmovne	%r10d, %r8d
	movl	$158, %r10d
	cmovne	%r10d, %ecx
	movl	$140, %r10d
	cmovne	%r10d, %r9d
	movl	%ebx, %r10d
	cmovne	%edx, %eax
	andl	$4, %r10d
	movl	92(%rsp), %edx
	andl	$32, %r11d
	movl	%r11d, 76(%rsp)
	je	.L5796
	testl	%r10d, %r10d
	je	.L5847
	movl	%ecx, 32(%rsp)
.L5843:
	leaq	91(%rsp), %r9
	movq	%r15, %rcx
	leaq	90(%rsp), %r8
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 90(%rsp)
	movl	%eax, %r14d
	jne	.L5799
	testl	%edi, %edi
	jne	.L5811
.L5812:
	leaq	5264(%r13), %rdx
	xorl	%ecx, %ecx
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	leaq	104(%rsp), %rax
	xorl	%r9d, %r9d
	movq	%rsi, %r8
	movq	%rax, 40(%rsp)
	leaq	96(%rsp), %rax
	leaq	8(%r15), %rdx
	movq	%rax, 32(%rsp)
	movq	$0, 48(%rsp)
	leaq	112(%rsp), %rcx
	movq	$0, 104(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	call	_ZN5ImGui13PopStyleColorEi.constprop.142
	jmp	.L5805
	.p2align 4,,10
.L5782:
	call	_ZN5ImGui19GetContentRegionMaxEv
	movd	%eax, %xmm8
	jmp	.L5783
	.p2align 4,,10
.L5790:
	addss	%xmm9, %xmm2
	movaps	%xmm2, %xmm11
	jmp	.L5813
	.p2align 4,,10
.L5846:
	movl	$18, %r8d
	movl	$146, %ecx
	movl	$128, %r9d
	jmp	.L5794
	.p2align 4,,10
.L5799:
	cmpb	$1, 91(%rsp)
	sbbl	%ecx, %ecx
	addl	$27, %ecx
.L5804:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	136(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	$0x00000000, 32(%rsp)
	movq	128(%rsp), %rcx
	movl	%eax, %r8d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	testl	%edi, %edi
	je	.L5802
.L5811:
	cmpl	$1, 444(%r12)
	jle	.L5802
	call	_ZL18PushColumnClipRecti.constprop.139
	call	_ZN5ImGui19GetContentRegionMaxEv
	movss	136(%rsp), %xmm1
	movd	%eax, %xmm0
	subss	%xmm8, %xmm0
	subss	%xmm0, %xmm1
	movss	%xmm1, 136(%rsp)
.L5802:
	movl	76(%rsp), %eax
	testl	%eax, %eax
	jne	.L5812
.L5803:
	leaq	104(%rsp), %rax
	xorl	%r9d, %r9d
	movq	%rsi, %r8
	movq	$0, 48(%rsp)
	movq	%rax, 40(%rsp)
	leaq	96(%rsp), %rax
	leaq	8(%r15), %rdx
	movq	%rax, 32(%rsp)
	movq	$0, 104(%rsp)
	leaq	112(%rsp), %rcx
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
.L5805:
	testb	%r14b, %r14b
	je	.L5793
	andl	$1, %ebx
	jne	.L5776
	testb	$2, 15(%r12)
	je	.L5776
	call	_ZN5ImGui17CloseCurrentPopupEv
	jmp	.L5776
	.p2align 4,,10
.L5796:
	testl	%r10d, %r10d
	jne	.L5848
	movl	%eax, 32(%rsp)
.L5844:
	leaq	91(%rsp), %r9
	movq	%r15, %rcx
	leaq	90(%rsp), %r8
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 90(%rsp)
	movl	%eax, %r14d
	jne	.L5799
	testb	%bpl, %bpl
	je	.L5801
	movl	$25, %ecx
	jmp	.L5804
	.p2align 4,,10
.L5801:
	testl	%edi, %edi
	jne	.L5811
	jmp	.L5803
.L5847:
	movl	%r9d, 32(%rsp)
	jmp	.L5843
.L5848:
	movl	%r8d, 32(%rsp)
	jmp	.L5844
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
	.def	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
_ZN5ImGui10SelectableEPKcPbiRK6ImVec2:
.LFB1030:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbx
	movzbl	(%rdx), %edx
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	testb	%al, %al
	je	.L5849
	xorb	$1, (%rbx)
.L5849:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8MenuItemEPKcS1_bb
	.def	_ZN5ImGui8MenuItemEPKcS1_bb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8MenuItemEPKcS1_bb
_ZN5ImGui8MenuItemEPKcS1_bb:
.LFB1036:
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
	subq	$144, %rsp
	.seh_stackalloc	144
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
	movq	GImGui(%rip), %r14
	xorl	%r13d, %r13d
	movq	6008(%r14), %rax
	movq	%rcx, %rdi
	movq	%rdx, %rbp
	movl	%r8d, %r12d
	movl	%r9d, %esi
	movb	$1, 138(%rax)
	movq	6008(%r14), %rbx
	cmpb	$0, 140(%rbx)
	je	.L5883
.L5854:
	movaps	48(%rsp), %xmm6
	movl	%r13d, %eax
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	movaps	96(%rsp), %xmm9
	movaps	112(%rsp), %xmm10
	movaps	128(%rsp), %xmm11
	addq	$144, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L5883:
	movss	.LC1(%rip), %xmm3
	xorl	%edx, %edx
	movl	$1, %r8d
	movss	192(%rbx), %xmm9
	movss	196(%rbx), %xmm8
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	testq	%rbp, %rbp
	movq	%rax, %r13
	je	.L5856
	movss	.LC1(%rip), %xmm3
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbp, %rcx
	pxor	%xmm11, %xmm11
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movd	%eax, %xmm10
.L5857:
	movss	.LC242(%rip), %xmm0
	pxor	%xmm1, %xmm1
	mulss	5944(%r14), %xmm0
	movss	600(%rbx), %xmm2
	cvttss2si	%xmm0, %eax
	movd	%r13d, %xmm0
	ucomiss	%xmm0, %xmm2
	cvtsi2ss	%eax, %xmm1
	jb	.L5858
	movaps	%xmm2, %xmm0
.L5858:
	movss	604(%rbx), %xmm2
	movss	%xmm0, 600(%rbx)
	ucomiss	%xmm10, %xmm2
	jnb	.L5860
	movaps	%xmm10, %xmm2
.L5860:
	movss	%xmm2, 604(%rbx)
	movss	608(%rbx), %xmm2
	ucomiss	%xmm1, %xmm2
	jb	.L5862
	movaps	%xmm2, %xmm1
.L5862:
	addss	%xmm11, %xmm0
	movss	604(%rbx), %xmm7
	movss	%xmm1, 608(%rbx)
	ucomiss	%xmm11, %xmm7
	addss	%xmm11, %xmm0
	movss	%xmm0, 564(%rbx)
	jbe	.L5884
	movss	556(%rbx), %xmm1
.L5867:
	addss	%xmm1, %xmm7
	movss	608(%rbx), %xmm1
	ucomiss	%xmm11, %xmm1
	addss	%xmm7, %xmm0
	pxor	%xmm7, %xmm7
	movss	%xmm0, 564(%rbx)
	jbe	.L5866
	movss	556(%rbx), %xmm7
.L5866:
	addss	%xmm7, %xmm1
	addss	%xmm0, %xmm1
	movss	560(%rbx), %xmm0
	ucomiss	%xmm1, %xmm0
	movaps	%xmm1, %xmm7
	movss	%xmm1, 564(%rbx)
	jb	.L5868
	movaps	%xmm0, %xmm7
.L5868:
	call	_ZN5ImGui21GetContentRegionAvailEv
	movd	%eax, %xmm6
	subss	%xmm7, %xmm6
	ucomiss	%xmm6, %xmm11
	jb	.L5870
	pxor	%xmm6, %xmm6
.L5870:
	cmpb	$1, %sil
	movq	%rdi, %rcx
	movss	%xmm7, 40(%rsp)
	leaq	40(%rsp), %r9
	sbbl	%eax, %eax
	xorl	%edx, %edx
	movl	$0x00000000, 44(%rsp)
	andl	$32, %eax
	leal	80(%rax), %r8d
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	ucomiss	%xmm11, %xmm10
	movl	%eax, %r13d
	jbe	.L5873
	leaq	5264(%r14), %rdx
	xorl	%ecx, %ecx
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movaps	%xmm8, %xmm4
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movss	572(%rbx), %xmm0
	addss	%xmm11, %xmm4
	movq	%rbp, %rdx
	addss	%xmm6, %xmm0
	movd	%xmm4, %eax
	salq	$32, %rax
	addss	%xmm9, %xmm0
	movd	%xmm0, %ecx
	movl	%ecx, %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	call	_ZN5ImGui13PopStyleColorEi.constprop.142
.L5873:
	testb	%r12b, %r12b
	je	.L5854
	xorl	$1, %esi
	addss	%xmm11, %xmm8
	movzbl	%sil, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	.LC113(%rip), %xmm0
	mulss	5944(%r14), %xmm0
	movq	%xmm8, %r8
	movl	%eax, %edx
	addss	576(%rbx), %xmm6
	salq	$32, %r8
	addss	%xmm0, %xmm6
	addss	%xmm9, %xmm6
	movd	%xmm6, %ecx
	orq	%r8, %rcx
	call	_ZN5ImGui15RenderCheckMarkE6ImVec2j
	jmp	.L5854
	.p2align 4,,10
.L5856:
	pxor	%xmm11, %xmm11
	pxor	%xmm10, %xmm10
	jmp	.L5857
	.p2align 4,,10
.L5884:
	pxor	%xmm1, %xmm1
	jmp	.L5867
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8MenuItemEPKcS1_Pbb
	.def	_ZN5ImGui8MenuItemEPKcS1_Pbb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8MenuItemEPKcS1_Pbb
_ZN5ImGui8MenuItemEPKcS1_Pbb:
.LFB1037:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%r8, %r8
	movq	%r8, %rbx
	movzbl	%r9b, %r9d
	je	.L5886
	cmpb	$0, (%r8)
	je	.L5897
	movl	$1, %r8d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	testb	%al, %al
	je	.L5890
.L5891:
	xorb	$1, (%rbx)
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L5897:
	xorl	%r8d, %r8d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	testb	%al, %al
	jne	.L5891
.L5890:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L5886:
	xorl	%r8d, %r8d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	testb	%al, %al
	je	.L5890
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.129;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.129
_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.129:
.LFB6617:
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
	.seh_endprologue
	movq	GImGui(%rip), %r12
	movq	6008(%r12), %rax
	movq	%rcx, %rsi
	movl	%edx, %edi
	movq	%r8, %r13
	movb	$1, 138(%rax)
	movq	6008(%r12), %rbx
	cmpb	$0, 140(%rbx)
	jne	.L5909
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	pxor	%xmm9, %xmm9
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rsi, %rcx
	movss	.LC1(%rip), %xmm3
	movl	%eax, 76(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	4(%r13), %xmm6
	movq	%rax, 80(%rsp)
	ucomiss	%xmm9, %xmm6
	jp	.L5901
	movd	%xmm6, %eax
	cmove	84(%rsp), %eax
	movd	%eax, %xmm6
.L5901:
	movss	0(%r13), %xmm0
	ucomiss	%xmm9, %xmm0
	jp	.L5902
	movd	%xmm0, %eax
	cmove	80(%rsp), %eax
	movd	%eax, %xmm0
.L5902:
	movss	192(%rbx), %xmm8
	leaq	112(%rsp), %rbp
	pxor	%xmm1, %xmm1
	movss	196(%rbx), %xmm7
	movq	%rbp, %rcx
	addss	228(%rbx), %xmm7
	movss	%xmm8, 96(%rsp)
	addss	%xmm8, %xmm0
	addss	%xmm7, %xmm6
	movss	%xmm7, 100(%rsp)
	movss	%xmm0, 104(%rsp)
	subss	%xmm8, %xmm0
	movss	%xmm6, 108(%rsp)
	movss	%xmm0, 112(%rsp)
	movaps	%xmm6, %xmm0
	subss	%xmm7, %xmm0
	movss	%xmm0, 116(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movss	84(%rbx), %xmm10
	call	_ZN5ImGui19GetContentRegionMaxEv
	movss	80(%rsp), %xmm1
	movd	%eax, %xmm0
	addss	28(%rbx), %xmm0
	subss	%xmm10, %xmm0
	subss	192(%rbx), %xmm0
	ucomiss	%xmm0, %xmm1
	jnb	.L5927
.L5903:
	movss	4(%r13), %xmm1
	ucomiss	%xmm9, %xmm1
	jp	.L5916
	jne	.L5916
.L5905:
	movss	0(%r13), %xmm1
	ucomiss	%xmm9, %xmm1
	jp	.L5907
	jne	.L5907
	addss	%xmm8, %xmm0
	addss	%xmm10, %xmm0
.L5913:
	movss	.LC17(%rip), %xmm1
	pxor	%xmm4, %xmm4
	leaq	76(%rsp), %rdx
	movq	%rbp, %rcx
	movss	5168(%r12), %xmm3
	movaps	%xmm3, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	movss	5172(%r12), %xmm2
	mulss	%xmm2, %xmm1
	cvtsi2ss	%eax, %xmm4
	cvttss2si	%xmm1, %eax
	pxor	%xmm1, %xmm1
	subss	%xmm4, %xmm3
	subss	%xmm4, %xmm8
	cvtsi2ss	%eax, %xmm1
	addss	%xmm0, %xmm3
	movss	%xmm8, 112(%rsp)
	subss	%xmm1, %xmm2
	movss	%xmm3, 120(%rsp)
	subss	%xmm1, %xmm7
	addss	%xmm6, %xmm2
	movss	%xmm7, 116(%rsp)
	movss	%xmm2, 124(%rsp)
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5909
	movl	76(%rsp), %edx
	movl	$0, 32(%rsp)
	leaq	75(%rsp), %r9
	movq	%rbp, %rcx
	leaq	74(%rsp), %r8
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 74(%rsp)
	movl	%eax, %r12d
	jne	.L5910
	testb	%dil, %dil
	je	.L5911
	movl	$25, %ecx
.L5912:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	120(%rsp), %rdx
	movl	$0x00000000, 32(%rsp)
	xorl	%r9d, %r9d
	movq	112(%rsp), %rcx
	movl	%eax, %r8d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
.L5911:
	leaq	88(%rsp), %rax
	xorl	%r9d, %r9d
	movq	%rsi, %r8
	movq	$0, 48(%rsp)
	movq	%rax, 40(%rsp)
	leaq	80(%rsp), %rax
	leaq	8(%rbp), %rdx
	movq	%rax, 32(%rsp)
	movq	$0, 88(%rsp)
	leaq	96(%rsp), %rcx
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	testb	%r12b, %r12b
	je	.L5909
	testb	$2, 15(%rbx)
	je	.L5898
	call	_ZN5ImGui17CloseCurrentPopupEv
	jmp	.L5898
	.p2align 4,,10
.L5909:
	xorl	%r12d, %r12d
.L5898:
	movaps	128(%rsp), %xmm6
	movl	%r12d, %eax
	movaps	144(%rsp), %xmm7
	movaps	160(%rsp), %xmm8
	movaps	176(%rsp), %xmm9
	movaps	192(%rsp), %xmm10
	addq	$216, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L5927:
	movaps	%xmm1, %xmm0
	jmp	.L5903
	.p2align 4,,10
.L5916:
	movaps	%xmm1, %xmm6
	addss	%xmm7, %xmm6
	jmp	.L5905
	.p2align 4,,10
.L5907:
	addss	%xmm8, %xmm1
	movaps	%xmm1, %xmm0
	jmp	.L5913
	.p2align 4,,10
.L5910:
	cmpb	$1, 75(%rsp)
	sbbl	%ecx, %ecx
	addl	$27, %ecx
	jmp	.L5912
	.seh_endproc
	.section .rdata,"dr"
.LC243:
	.ascii "non-indexed\0"
.LC244:
	.ascii "indexed\0"
.LC245:
	.ascii "DrawList\0"
	.align 8
.LC246:
	.ascii "%s: '%s' %d vtx, %d indices, %d cmds\0"
.LC248:
	.ascii "CURRENTLY APPENDING\0"
.LC249:
	.ascii "Callback %p, user_data %p\0"
	.align 8
.LC250:
	.ascii "Draw %-4d %s vtx, tex = %p, clip_rect = (%.0f,%.0f)..(%.0f,%.0f)\0"
.LC251:
	.ascii "   \0"
.LC252:
	.ascii "ItemsCount == -1\0"
.LC253:
	.ascii "vtx\0"
	.text
	.p2align 4,,15
	.def	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs12NodeDrawListEP10ImDrawListPKc.constprop.128;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs12NodeDrawListEP10ImDrawListPKc.constprop.128
_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs12NodeDrawListEP10ImDrawListPKc.constprop.128:
.LFB6618:
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
	subq	$552, %rsp
	.seh_stackalloc	552
	movaps	%xmm6, 512(%rsp)
	.seh_savexmm	%xmm6, 512
	movaps	%xmm7, 528(%rsp)
	.seh_savexmm	%xmm7, 528
	.seh_endprologue
	leaq	.LC98(%rip), %r9
	movl	(%rcx), %r8d
	movq	%rcx, %rbp
	movl	16(%rcx), %ecx
	movq	48(%rbp), %rax
	movl	32(%rbp), %edx
	movl	%r8d, 48(%rsp)
	leaq	.LC245(%rip), %r8
	movl	%ecx, 40(%rsp)
	movq	%rbp, %rcx
	testq	%rax, %rax
	cmovne	%rax, %r9
	movl	%edx, 32(%rsp)
	leaq	.LC246(%rip), %rdx
.LEHB15:
	call	_ZN5ImGui8TreeNodeEPKvPKcz
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rcx
	movb	$1, 138(%rcx)
	movq	6008(%rdx), %rcx
	cmpq	656(%rcx), %rbp
	je	.L6013
	testb	%al, %al
	jne	.L6014
.L5928:
	movaps	512(%rsp), %xmm6
	movaps	528(%rsp), %xmm7
	addq	$552, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L6014:
	leaq	6392(%rdx), %rax
	movq	%rax, %rcx
	movq	%rax, 112(%rsp)
	call	_ZN10ImDrawList22PushClipRectFullScreenEv
	movslq	0(%rbp), %rax
	movq	8(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	addq	%rcx, %rax
	cmpq	%rax, %rcx
	jnb	.L5935
	movq	%rcx, 96(%rsp)
	movss	.LC1(%rip), %xmm6
	movl	$0, 108(%rsp)
	jmp	.L5981
	.p2align 4,,10
.L5936:
	movl	16(%rbp), %edx
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	cvtss2sd	16(%rax), %xmm3
	cvtss2sd	12(%rax), %xmm2
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	8(%rax), %xmm1
	cvtss2sd	4(%rax), %xmm0
	movq	24(%rax), %rax
	testl	%edx, %edx
	jle	.L5985
	movq	24(%rbp), %r14
	leaq	.LC244(%rip), %r9
.L5938:
	movq	96(%rsp), %rdi
	movsd	%xmm3, 64(%rsp)
	leaq	.LC250(%rip), %rdx
	movsd	%xmm2, 56(%rsp)
	movsd	%xmm1, 48(%rsp)
	movsd	%xmm0, 40(%rsp)
	movq	%rdi, %rsi
	movq	%rax, 32(%rsp)
	movl	(%rdi), %r8d
	subq	%rcx, %rsi
	movq	%rsi, %rcx
	movabsq	$-6148914691236517205, %rsi
	sarq	$4, %rcx
	imulq	%rsi, %rcx
	call	_ZN5ImGui8TreeNodeEPKvPKcz
	cmpb	$0, _ZZN5ImGui17ShowMetricsWindowEPbE15show_clip_rects(%rip)
	movl	%eax, %esi
	jne	.L5939
	movl	(%rdi), %edx
.L5940:
	testb	%sil, %sil
	jne	.L6015
.L5980:
	movslq	0(%rbp), %rax
	movq	8(%rbp), %rcx
	addq	$48, 96(%rsp)
	movq	96(%rsp), %rdi
	addl	%edx, 108(%rsp)
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdi
	jnb	.L5935
.L5981:
	movq	96(%rsp), %rax
	movq	32(%rax), %rdx
	testq	%rdx, %rdx
	je	.L5936
	movq	40(%rax), %r8
	leaq	.LC249(%rip), %rcx
	movq	%rax, %rdi
	call	_ZN5ImGui10BulletTextEPKcz
	movl	(%rdi), %edx
	jmp	.L5980
	.p2align 4,,10
.L5939:
	movq	96(%rsp), %rax
	movl	(%rax), %ecx
	movq	GImGui(%rip), %rax
	movl	%ecx, %edx
	movq	6008(%rax), %rax
	cmpb	$0, 268(%rax)
	je	.L5940
	movq	96(%rsp), %rax
	movl	108(%rsp), %edi
	movss	8(%rax), %xmm2
	movss	4(%rax), %xmm0
	movss	%xmm2, 180(%rsp)
	movss	%xmm0, 176(%rsp)
	movss	16(%rax), %xmm3
	movss	12(%rax), %xmm1
	movabsq	$9187343237679939583, %rax
	movq	%rax, 208(%rsp)
	movabsq	$-36028797027352577, %rax
	movq	%rax, 216(%rsp)
	leal	(%rcx,%rdi), %eax
	movss	%xmm1, 184(%rsp)
	cmpl	%eax, %edi
	movss	%xmm3, 188(%rsp)
	jge	.L5941
	testq	%r14, %r14
	movslq	%edi, %rax
	je	.L6016
	leal	1(%rax), %ebx
	movslq	%ebx, %rbx
	subq	%rbx, %rax
	leaq	(%r14,%rax,2), %r12
.L5955:
	movzwl	(%r12,%rbx,2), %edi
	cmpl	32(%rbp), %edi
	jge	.L6017
.L5956:
	movq	40(%rbp), %rax
	leaq	(%rdi,%rdi,4), %rdx
	movss	208(%rsp), %xmm0
	leaq	(%rax,%rdx,4), %rax
	movss	(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L5957
	movss	%xmm1, 208(%rsp)
	movss	(%rax), %xmm1
.L5957:
	movss	4(%rax), %xmm0
	movss	212(%rsp), %xmm2
	ucomiss	%xmm0, %xmm2
	jbe	.L5959
	movss	%xmm0, 212(%rsp)
	movss	4(%rax), %xmm0
.L5959:
	ucomiss	216(%rsp), %xmm1
	jbe	.L5961
	movss	%xmm1, 216(%rsp)
.L5961:
	ucomiss	220(%rsp), %xmm0
	jbe	.L6007
	movss	%xmm0, 220(%rsp)
	movl	108(%rsp), %eax
	movl	%ebx, %edx
	addq	$1, %rbx
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jl	.L5955
.L5953:
	movss	176(%rsp), %xmm0
	movss	180(%rsp), %xmm2
	movss	184(%rsp), %xmm1
	movss	188(%rsp), %xmm3
.L5941:
	movq	112(%rsp), %rdi
	unpcklps	%xmm3, %xmm1
	unpcklps	%xmm2, %xmm0
	leaq	176(%rsp), %rdx
	movss	.LC18(%rip), %xmm7
	movlhps	%xmm1, %xmm0
	movl	$-16711681, %r9d
	movl	$-1, 40(%rsp)
	leaq	8(%rdx), %r8
	movl	$0x00000000, 32(%rsp)
	cvttps2dq	%xmm0, %xmm0
	cvtdq2ps	%xmm0, %xmm0
	movss	%xmm7, 48(%rsp)
	movq	%rdi, %rcx
	movaps	%xmm0, 176(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	leaq	208(%rsp), %rax
	movq	%rdi, %rcx
	movss	%xmm7, 48(%rsp)
	movq	%rax, %rdx
	movl	$-1, 40(%rsp)
	movl	$-65281, %r9d
	cvttps2dq	208(%rsp), %xmm0
	movl	$0x00000000, 32(%rsp)
	leaq	216(%rsp), %r8
	cvtdq2ps	%xmm0, %xmm0
	movaps	%xmm0, 208(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
.LEHE15:
	movq	96(%rsp), %rax
	testb	%sil, %sil
	movl	(%rax), %edx
	je	.L5980
	.p2align 4,,10
.L6015:
	movq	GImGui(%rip), %rax
	movl	$-1431655765, %ecx
	movss	%xmm6, 148(%rsp)
	movl	$-1, 164(%rsp)
	movq	6008(%rax), %rax
	movss	196(%rax), %xmm0
	subss	32(%rax), %xmm0
	addss	100(%rax), %xmm0
	movl	%edx, %eax
	mull	%ecx
	movabsq	$-4294967296, %rax
	movq	%rax, 156(%rsp)
	leaq	144(%rsp), %rax
	movss	%xmm0, 144(%rsp)
	shrl	%edx
	movq	%rax, 120(%rsp)
	movl	%edx, 152(%rsp)
	.p2align 4,,10
.L5968:
	movq	120(%rsp), %rcx
.LEHB16:
	call	_ZN16ImGuiListClipper4StepEv
	testb	%al, %al
	je	.L5966
	movl	160(%rsp), %eax
	leaq	208(%rsp), %rcx
	movq	%rcx, 88(%rsp)
	leal	(%rax,%rax,2), %r15d
	addl	108(%rsp), %r15d
	movl	%eax, 104(%rsp)
	cmpl	164(%rsp), %eax
	jge	.L5968
	.p2align 4,,10
.L5967:
	movslq	%r15d, %rbx
	xorl	%esi, %esi
	testq	%r14, %r14
	movq	$0, 176(%rsp)
	movq	88(%rsp), %rdi
	movl	%ebx, %r13d
	movslq	%ebx, %r12
	movq	$0, 184(%rsp)
	movq	$0, 192(%rsp)
	je	.L5970
.L6020:
	movzwl	(%r14,%rbx,2), %r12d
.L5970:
	cmpl	%r12d, 32(%rbp)
	jle	.L5971
.L5974:
	movq	40(%rbp), %rax
	leaq	(%r12,%r12,4), %rdx
	testq	%rsi, %rsi
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	leal	1(%rbx), %r15d
	leaq	176(%rsp), %r12
	leaq	(%rax,%rdx,4), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%r12,%rsi,8)
	movl	16(%rax), %edx
	cvtss2sd	12(%rax), %xmm3
	cvtss2sd	8(%rax), %xmm2
	cvtss2sd	4(%rax), %xmm1
	cvtss2sd	(%rax), %xmm0
	je	.L6018
	movl	%edx, 64(%rsp)
	movl	%r13d, %r9d
	movq	%rdi, %rcx
	movsd	%xmm3, 56(%rsp)
	leaq	.LC251(%rip), %r8
	movsd	%xmm2, 48(%rsp)
	leaq	.LC14(%rip), %rdx
	movsd	%xmm1, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	call	_Z7sprintfPcPKcz.constprop.149
	cmpl	$2, %esi
	je	.L6019
	cltq
	addq	%rax, %rdi
.L5984:
	addq	$1, %rbx
	addq	$1, %rsi
	testq	%r14, %r14
	movl	%ebx, %r13d
	movslq	%ebx, %r12
	jne	.L6020
	cmpl	%r12d, 32(%rbp)
	jg	.L5974
.L5971:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	jmp	.L5974
	.p2align 4,,10
.L5985:
	leaq	.LC243(%rip), %r9
	xorl	%r14d, %r14d
	jmp	.L5938
	.p2align 4,,10
.L6019:
	movq	88(%rsp), %rcx
	xorl	%edx, %edx
	movq	$0, 136(%rsp)
	leaq	136(%rsp), %r8
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.129
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	cmpb	$0, 268(%rax)
	jne	.L5976
.L5978:
	addl	$1, 104(%rsp)
	movl	104(%rsp), %eax
	cmpl	%eax, 164(%rsp)
	jg	.L5967
	jmp	.L5968
	.p2align 4,,10
.L5976:
	movq	112(%rsp), %rcx
	movl	$0, 48(%rsp)
	movl	$-16711681, %r9d
	movl	$3, %r8d
	movl	$0x3f800000, 40(%rsp)
	movq	%r12, %rdx
	movl	$1, 32(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	jmp	.L5978
	.p2align 4,,10
.L6018:
	movl	%edx, 64(%rsp)
	movq	%rdi, %rcx
	movl	%r13d, %r9d
	movsd	%xmm3, 56(%rsp)
	leaq	.LC253(%rip), %r8
	movsd	%xmm2, 48(%rsp)
	leaq	.LC14(%rip), %rdx
	movsd	%xmm1, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	call	_Z7sprintfPcPKcz.constprop.149
	cltq
	addq	%rax, %rdi
	jmp	.L5984
	.p2align 4,,10
.L5966:
	call	_ZN5ImGui7TreePopEv
.LEHE16:
	cmpl	$-1, 152(%rsp)
	jne	.L6021
	movq	96(%rsp), %rax
	movl	(%rax), %edx
	jmp	.L5980
.L6013:
	movb	$1, 138(%rcx)
	movq	6008(%rdx), %rcx
	cmpb	$0, 140(%rcx)
	je	.L6022
.L5931:
	movaps	.LC247(%rip), %xmm0
	leaq	208(%rsp), %rcx
	movb	%al, 104(%rsp)
	leaq	.LC248(%rip), %rdx
	movaps	%xmm0, 208(%rsp)
.LEHB17:
	call	_ZN5ImGui11TextColoredERK6ImVec4PKcz
	movzbl	104(%rsp), %eax
	testb	%al, %al
	je	.L5928
	call	_ZN5ImGui7TreePopEv
	jmp	.L5928
.L5935:
	movq	112(%rsp), %rcx
	call	_ZN10ImDrawList11PopClipRectEv
	call	_ZN5ImGui7TreePopEv
.LEHE17:
	jmp	.L5928
.L6021:
	leaq	.LC2(%rip), %rdx
	movl	$1103, %r8d
	leaq	.LC252(%rip), %rcx
	call	_assert
	movq	96(%rsp), %rax
	movl	(%rax), %edx
	jmp	.L5980
.L6022:
	movss	5168(%rdx), %xmm0
	addss	200(%rcx), %xmm0
	movss	%xmm0, 192(%rcx)
	movss	204(%rcx), %xmm0
	movss	%xmm0, 196(%rcx)
	movss	232(%rcx), %xmm0
	movss	%xmm0, 224(%rcx)
	movss	236(%rcx), %xmm0
	movss	%xmm0, 228(%rcx)
	jmp	.L5931
	.p2align 4,,10
.L6007:
	movl	108(%rsp), %edi
	movl	%ebx, %eax
	addq	$1, %rbx
	leal	(%rdi,%rcx), %edx
	cmpl	%eax, %edx
	jle	.L5953
	movzwl	(%r12,%rbx,2), %edi
	cmpl	32(%rbp), %edi
	jl	.L5956
.L6017:
	leaq	.LC3(%rip), %rcx
	movl	$856, %r8d
	leaq	.LC2(%rip), %rdx
.LEHB18:
	call	_assert
	movq	96(%rsp), %rax
	movl	(%rax), %ecx
	jmp	.L5956
.L6016:
	leaq	(%rax,%rax,4), %rdi
	movq	%rax, %rbx
	salq	$2, %rdi
.L5943:
	cmpl	32(%rbp), %ebx
	jl	.L5944
	leaq	.LC3(%rip), %rcx
	movl	$856, %r8d
	leaq	.LC2(%rip), %rdx
	call	_assert
.LEHE18:
	movq	96(%rsp), %rax
	movl	(%rax), %ecx
.L5944:
	movq	40(%rbp), %rax
	movss	208(%rsp), %xmm0
	addq	%rdi, %rax
	movss	(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L5945
	movss	%xmm1, 208(%rsp)
	movss	(%rax), %xmm1
.L5945:
	movss	4(%rax), %xmm0
	movss	212(%rsp), %xmm2
	ucomiss	%xmm0, %xmm2
	jbe	.L5947
	movss	%xmm0, 212(%rsp)
	movss	4(%rax), %xmm0
.L5947:
	ucomiss	216(%rsp), %xmm1
	jbe	.L5949
	movss	%xmm1, 216(%rsp)
.L5949:
	ucomiss	220(%rsp), %xmm0
	jbe	.L6006
	movss	%xmm0, 220(%rsp)
.L6006:
	movl	108(%rsp), %eax
	addl	$1, %ebx
	addq	$20, %rdi
	addl	%ecx, %eax
	cmpl	%ebx, %eax
	jg	.L5943
	jmp	.L5953
.L5987:
	cmpl	$-1, 152(%rsp)
	movq	%rax, %rbx
	je	.L5983
	leaq	.LC2(%rip), %rdx
	movl	$1103, %r8d
	leaq	.LC252(%rip), %rcx
	call	_assert
.L5983:
	movq	%rbx, %rcx
.LEHB19:
	call	_Unwind_Resume
	nop
.LEHE19:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6618:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6618-.LLSDACSB6618
.LLSDACSB6618:
	.uleb128 .LEHB15-.LFB6618
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB6618
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L5987-.LFB6618
	.uleb128 0
	.uleb128 .LEHB17-.LFB6618
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB6618
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB6618
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE6618:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC254:
	.ascii "%s '%s', %d @ 0x%p\0"
.LC255:
	.ascii "Pos: (%.1f,%.1f)\0"
	.align 8
.LC256:
	.ascii "Size: (%.1f,%.1f), SizeContents (%.1f,%.1f)\0"
.LC257:
	.ascii "Scroll: (%.2f,%.2f)\0"
.LC258:
	.ascii "RootWindow\0"
.LC259:
	.ascii "ChildWindows\0"
.LC260:
	.ascii "%s (%d)\0"
.LC261:
	.ascii "Window\0"
.LC262:
	.ascii "Storage: %d bytes\0"
	.text
	.p2align 4,,15
	.def	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc
_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc:
.LFB6224:
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
	movl	$1, %eax
	cmpb	$0, 136(%rcx)
	movq	%rcx, %rbx
	movq	%rdx, %r8
	jne	.L6024
	movzbl	137(%rcx), %eax
.L6024:
	movq	(%rbx), %r9
	movq	%rbx, 40(%rsp)
	movq	%rbx, %rcx
	movl	%eax, 32(%rsp)
	leaq	.LC254(%rip), %rdx
	call	_ZN5ImGui8TreeNodeEPKvPKcz
	testb	%al, %al
	jne	.L6037
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L6037:
	movq	656(%rbx), %rcx
	call	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs12NodeDrawListEP10ImDrawListPKc.constprop.128
	leaq	.LC255(%rip), %rcx
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	32(%rbx), %xmm1
	cvtss2sd	28(%rbx), %xmm0
	movapd	%xmm1, %xmm2
	movq	%xmm1, %r8
	movq	%xmm0, %rdx
	movapd	%xmm0, %xmm1
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC256(%rip), %rcx
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	cvtss2sd	52(%rbx), %xmm2
	cvtss2sd	40(%rbx), %xmm1
	movq	%xmm2, %r9
	movq	%xmm1, %r8
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	36(%rbx), %xmm0
	cvtss2sd	56(%rbx), %xmm3
	movq	%xmm0, %rdx
	movsd	%xmm3, 32(%rsp)
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC257(%rip), %rcx
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	100(%rbx), %xmm1
	cvtss2sd	96(%rbx), %xmm0
	movapd	%xmm1, %xmm2
	movq	%xmm1, %r8
	movq	%xmm0, %rdx
	movapd	%xmm0, %xmm1
	call	_ZN5ImGui10BulletTextEPKcz
	movq	664(%rbx), %rcx
	cmpq	%rbx, %rcx
	jne	.L6038
.L6026:
	movl	280(%rbx), %r9d
	testl	%r9d, %r9d
	jg	.L6039
.L6028:
	movl	632(%rbx), %edx
	leaq	.LC262(%rip), %rcx
	sall	$4, %edx
	call	_ZN5ImGui10BulletTextEPKcz
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN5ImGui7TreePopEv
	.p2align 4,,10
.L6039:
	leaq	.LC259(%rip), %r8
	leaq	.LC260(%rip), %rdx
	movq	%r8, %rcx
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	testb	%al, %al
	je	.L6028
	movl	280(%rbx), %eax
	testl	%eax, %eax
	jle	.L6030
	leaq	.LC261(%rip), %rbp
	xorl	%edi, %edi
	xorl	%esi, %esi
	.p2align 4,,10
.L6031:
	movq	288(%rbx), %rax
	movq	%rbp, %rdx
	addl	$1, %esi
	movq	(%rax,%rdi), %rcx
	addq	$8, %rdi
	call	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc
	cmpl	%esi, 280(%rbx)
	jg	.L6031
.L6030:
	call	_ZN5ImGui7TreePopEv
	jmp	.L6028
	.p2align 4,,10
.L6038:
	leaq	.LC258(%rip), %rdx
	call	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc
	jmp	.L6026
	.seh_endproc
	.section	.text$_ZN8ImVectorIfE9push_backERKf,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorIfE9push_backERKf
	.def	_ZN8ImVectorIfE9push_backERKf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIfE9push_backERKf
_ZN8ImVectorIfE9push_backERKf:
.LFB6425:
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
	je	.L6041
	movq	8(%rcx), %rsi
.L6042:
	movss	0(%rbp), %xmm0
	leal	1(%rax), %edx
	movl	%edx, (%rbx)
	movss	%xmm0, (%rsi,%rax,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L6041:
	leal	1(%rax), %edi
	testl	%eax, %eax
	movl	$8, %edx
	jne	.L6050
.L6043:
	cmpl	%edx, %edi
	movq	GImGui(%rip), %rax
	cmovl	%edx, %edi
	movslq	%edi, %rcx
	addl	$1, 844(%rax)
	salq	$2, %rcx
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6046
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6046
	subl	$1, 844(%rax)
.L6046:
	call	*240(%rax)
	movq	%rsi, 8(%rbx)
	movslq	(%rbx), %rax
	movl	%edi, 4(%rbx)
	jmp	.L6042
	.p2align 4,,10
.L6050:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	jmp	.L6043
	.seh_endproc
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12TextWrappedVEPKcPc
	.def	_ZN5ImGui12TextWrappedVEPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12TextWrappedVEPKcPc
_ZN5ImGui12TextWrappedVEPKcPc:
.LFB870:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	pxor	%xmm7, %xmm7
	movq	%rcx, %rsi
	movq	GImGui(%rip), %rcx
	movq	%rdx, %rdi
	movq	6008(%rcx), %rax
	movss	312(%rax), %xmm6
	ucomiss	%xmm6, %xmm7
	ja	.L6073
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rax
	cmpb	$0, 140(%rax)
	je	.L6055
	ucomiss	%xmm6, %xmm7
	ja	.L6074
.L6051:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L6073:
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rcx
	leaq	44(%rsp), %rdx
	movl	$0x00000000, 44(%rsp)
	movl	$0x00000000, 312(%rcx)
	addq	$336, %rcx
	call	_ZN8ImVectorIfE9push_backERKf
	movq	GImGui(%rip), %rcx
	movq	6008(%rcx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rax
	cmpb	$0, 140(%rax)
	jne	.L6054
.L6055:
	leaq	11960(%rcx), %rbx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L6066
	cmpl	$3072, %eax
	jg	.L6066
.L6057:
	cltq
	movq	%rbx, %rcx
	leaq	(%rbx,%rax), %rdx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	ucomiss	%xmm6, %xmm7
	jbe	.L6051
.L6074:
	movq	GImGui(%rip), %rcx
	movq	6008(%rcx), %rax
.L6054:
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rbx
	movl	336(%rbx), %eax
	testl	%eax, %eax
	jle	.L6075
.L6061:
	subl	$1, %eax
	movss	.LC1(%rip), %xmm0
	cmpl	$0, %eax
	movl	%eax, 336(%rbx)
	jne	.L6076
.L6062:
	movss	%xmm0, 312(%rbx)
	jmp	.L6051
	.p2align 4,,10
.L6066:
	movl	$3072, %eax
	jmp	.L6057
	.p2align 4,,10
.L6076:
	jle	.L6077
.L6063:
	movq	344(%rbx), %rdx
	cltq
	movss	-4(%rdx,%rax,4), %xmm0
	jmp	.L6062
	.p2align 4,,10
.L6075:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	336(%rbx), %eax
	jmp	.L6061
	.p2align 4,,10
.L6077:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	336(%rbx), %eax
	jmp	.L6063
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11TextWrappedEPKcz
	.def	_ZN5ImGui11TextWrappedEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11TextWrappedEPKcz
_ZN5ImGui11TextWrappedEPKcz:
.LFB871:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	pxor	%xmm7, %xmm7
	movq	%rdx, 120(%rsp)
	leaq	120(%rsp), %rsi
	movq	%rcx, %rdi
	movq	GImGui(%rip), %rcx
	movq	%r8, 128(%rsp)
	movq	%r9, 136(%rsp)
	movq	%rsi, 40(%rsp)
	movq	6008(%rcx), %rax
	movss	312(%rax), %xmm6
	ucomiss	%xmm6, %xmm7
	ja	.L6100
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rax
	cmpb	$0, 140(%rax)
	je	.L6082
	ucomiss	%xmm6, %xmm7
	ja	.L6101
.L6078:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L6100:
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rcx
	leaq	36(%rsp), %rdx
	movl	$0x00000000, 36(%rsp)
	movl	$0x00000000, 312(%rcx)
	addq	$336, %rcx
	call	_ZN8ImVectorIfE9push_backERKf
	movq	GImGui(%rip), %rcx
	movq	6008(%rcx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rax
	cmpb	$0, 140(%rax)
	jne	.L6081
.L6082:
	leaq	11960(%rcx), %rbx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__mingw_vsnprintf
	cmpl	$-1, %eax
	je	.L6093
	cmpl	$3072, %eax
	jg	.L6093
.L6084:
	cltq
	movq	%rbx, %rcx
	leaq	(%rbx,%rax), %rdx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	ucomiss	%xmm6, %xmm7
	jbe	.L6078
.L6101:
	movq	GImGui(%rip), %rcx
	movq	6008(%rcx), %rax
.L6081:
	movb	$1, 138(%rax)
	movq	6008(%rcx), %rbx
	movl	336(%rbx), %eax
	testl	%eax, %eax
	jle	.L6102
.L6088:
	subl	$1, %eax
	movss	.LC1(%rip), %xmm0
	cmpl	$0, %eax
	movl	%eax, 336(%rbx)
	jne	.L6103
.L6089:
	movss	%xmm0, 312(%rbx)
	jmp	.L6078
	.p2align 4,,10
.L6093:
	movl	$3072, %eax
	jmp	.L6084
	.p2align 4,,10
.L6103:
	jle	.L6104
.L6090:
	movq	344(%rbx), %rdx
	cltq
	movss	-4(%rdx,%rax,4), %xmm0
	jmp	.L6089
	.p2align 4,,10
.L6102:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	336(%rbx), %eax
	jmp	.L6088
	.p2align 4,,10
.L6104:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	336(%rbx), %eax
	jmp	.L6090
	.seh_endproc
	.section	.text$_ZN8ImVectorIfE7reserveEi,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorIfE7reserveEi
	.def	_ZN8ImVectorIfE7reserveEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIfE7reserveEi
_ZN8ImVectorIfE7reserveEi:
.LFB6473:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	cmpl	%edx, 4(%rcx)
	movq	%rcx, %rbx
	movl	%edx, %esi
	jge	.L6105
	movq	GImGui(%rip), %rax
	movslq	%edx, %rcx
	salq	$2, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6109
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6109
	subl	$1, 844(%rax)
.L6109:
	call	*240(%rax)
	movq	%rdi, 8(%rbx)
	movl	%esi, 4(%rbx)
.L6105:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section	.text$_ZN8ImVectorIbE7reserveEi,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorIbE7reserveEi
	.def	_ZN8ImVectorIbE7reserveEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIbE7reserveEi
_ZN8ImVectorIbE7reserveEi:
.LFB6475:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	cmpl	%edx, 4(%rcx)
	movq	%rcx, %rbx
	movl	%edx, %esi
	jge	.L6111
	movq	GImGui(%rip), %rax
	movslq	%edx, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6115
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6115
	subl	$1, 844(%rax)
.L6115:
	call	*240(%rax)
	movq	%rdi, 8(%rbx)
	movl	%esi, 4(%rbx)
.L6111:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC264:
	.ascii "name != __null\0"
.LC265:
	.ascii "g.Initialized\0"
	.align 8
.LC266:
	.ascii "g.FrameCountEnded != g.FrameCount\0"
	.align 8
.LC269:
	.ascii "parent_window != __null || !(flags & ImGuiWindowFlags_ChildWindow)\0"
.LC271:
	.ascii "window_pos_set_by_api\0"
.LC277:
	.ascii "#RESIZE\0"
.LC278:
	.ascii "#CLOSE\0"
	.align 8
.LC279:
	.ascii "(flags & ImGuiWindowFlags_NoTitleBar) != 0\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	.def	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
_ZN5ImGui5BeginEPKcPbRK6ImVec2fi:
.LFB771:
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
	movaps	%xmm6, 176(%rsp)
	.seh_savexmm	%xmm6, 176
	movaps	%xmm7, 192(%rsp)
	.seh_savexmm	%xmm7, 192
	movaps	%xmm8, 208(%rsp)
	.seh_savexmm	%xmm8, 208
	movaps	%xmm9, 224(%rsp)
	.seh_savexmm	%xmm9, 224
	movaps	%xmm10, 240(%rsp)
	.seh_savexmm	%xmm10, 240
	movaps	%xmm11, 256(%rsp)
	.seh_savexmm	%xmm11, 256
	movaps	%xmm12, 272(%rsp)
	.seh_savexmm	%xmm12, 272
	movaps	%xmm13, 288(%rsp)
	.seh_savexmm	%xmm13, 288
	movaps	%xmm14, 304(%rsp)
	.seh_savexmm	%xmm14, 304
	movaps	%xmm15, 320(%rsp)
	.seh_savexmm	%xmm15, 320
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movl	448(%rsp), %esi
	testq	%rcx, %rcx
	movq	%rcx, 416(%rsp)
	movaps	%xmm3, %xmm12
	movq	%rdx, 424(%rsp)
	movq	%r8, 432(%rsp)
	je	.L6746
.L6118:
	cmpb	$0, (%rbx)
	je	.L6747
	movl	5964(%rbx), %eax
	cmpl	%eax, 5968(%rbx)
	je	.L6748
.L6120:
	movq	416(%rsp), %rcx
	movl	%esi, %eax
	orl	$6, %eax
	testl	$512, %esi
	cmovne	%eax, %esi
	call	_ZN5ImGui16FindWindowByNameEPKc
	testq	%rax, %rax
	movq	%rax, 112(%rsp)
	je	.L6749
	leaq	160(%rsp), %rdi
	movb	$0, 99(%rsp)
	pxor	%xmm6, %xmm6
	movq	%rdi, 80(%rsp)
.L6122:
	movq	GImGui(%rip), %rdx
	movl	544(%rax), %ecx
	movl	5964(%rdx), %edi
	movl	%ecx, 72(%rsp)
	cmpl	%edi, %ecx
	movl	%edi, 64(%rsp)
	je	.L6146
	movl	%esi, 12(%rax)
	movslq	6016(%rbx), %rax
	xorl	%ebp, %ebp
	cmpl	$0, %eax
	jne	.L6750
.L6148:
	leaq	112(%rsp), %rax
	leaq	6016(%rbx), %rcx
	movq	%rax, %rdx
	movq	%rax, 104(%rsp)
	call	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_
	movq	112(%rsp), %rax
	movq	GImGui(%rip), %rdx
	testq	%rax, %rax
	movq	%rax, 6008(%rdx)
	je	.L6150
	movss	5948(%rdx), %xmm0
	mulss	648(%rax), %xmm0
	movss	%xmm0, 5944(%rdx)
.L6150:
	movl	496(%rax), %ecx
	movl	%esi, %edi
	andl	$1048576, %edi
	testq	%rbp, %rbp
	movl	%edi, 76(%rsp)
	movl	%ecx, 404(%rax)
	movl	384(%rax), %ecx
	movl	%ecx, 408(%rax)
	movl	6200(%rdx), %ecx
	movl	%ecx, 412(%rax)
	movl	6136(%rdx), %ecx
	movl	%ecx, 416(%rax)
	movl	6152(%rdx), %ecx
	movl	%ecx, 420(%rax)
	movl	6168(%rdx), %edx
	movl	%edx, 424(%rax)
	je	.L6751
.L6151:
	movl	64(%rsp), %edi
	leal	-1(%rdi), %edx
	cmpl	%edx, 544(%rax)
	movl	%esi, %edi
	sete	98(%rsp)
	andl	$33554432, %edi
	movl	%edi, 100(%rsp)
	je	.L6152
	movslq	6200(%rbx), %r12
	cmpl	6184(%rbx), %r12d
	movslq	%r12d, %rdx
	jge	.L6752
.L6153:
	movq	6192(%rbx), %rcx
	leaq	(%r12,%r12,4), %r8
	leaq	(%rcx,%r8,8), %r13
	movl	0(%r13), %edi
	cmpl	%edi, 148(%rax)
	sete	%r8b
	cmpq	%rax, 8(%r13)
	movq	%rax, 8(%r13)
	sete	%cl
	andb	98(%rsp), %cl
	andl	%ecx, %r8d
	cmpl	%edx, 6204(%rbx)
	movb	%r8b, 98(%rsp)
	je	.L6154
	movq	6208(%rbx), %r14
.L6155:
	leal	1(%rdx), %ecx
	movl	%ecx, 6200(%rbx)
	movq	0(%r13), %rcx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%r14,%rdx,8), %rdx
	movq	%rcx, (%rdx)
	movq	8(%r13), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%r13), %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%r13), %rcx
	movq	%rcx, 24(%rdx)
	movl	32(%r13), %ecx
	movl	%ecx, 32(%rdx)
	movl	0(%r13), %edx
	movl	%edx, 148(%rax)
.L6152:
	cmpl	$1, 168(%rax)
	movb	$0, 88(%rsp)
	movl	6244(%rbx), %ecx
	sete	68(%rsp)
	movzbl	68(%rsp), %edi
	testl	%ecx, %ecx
	je	.L6160
	movzbl	98(%rsp), %r8d
	movss	192(%rax), %xmm3
	movss	196(%rax), %xmm2
	movl	172(%rax), %edx
	xorl	$1, %r8d
	orb	%dil, %r8b
	movb	%r8b, 88(%rsp)
	jne	.L6753
	andl	%edx, %ecx
	je	.L6165
.L6466:
	movss	.LC90(%rip), %xmm10
	movss	6220(%rbx), %xmm0
	movss	.LC179(%rip), %xmm1
	addss	%xmm10, %xmm0
	addss	6216(%rbx), %xmm10
	mulss	%xmm0, %xmm0
	mulss	%xmm10, %xmm10
	addss	%xmm10, %xmm0
	ucomiss	%xmm0, %xmm1
	ja	.L6754
	testl	%ecx, %ecx
	movb	$1, 88(%rsp)
	je	.L6165
.L6454:
	andl	$-15, %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movss	28(%rax), %xmm5
	movl	%edx, 172(%rax)
	movq	6216(%rbx), %rdx
	movss	32(%rax), %xmm4
	movb	$0, 184(%rax)
	movq	%rdx, 20(%rax)
	cvttss2si	24(%rax), %edx
	cvtsi2ss	%edx, %xmm0
	cvttss2si	20(%rax), %edx
	movss	%xmm0, 32(%rax)
	subss	%xmm4, %xmm0
	cvtsi2ss	%edx, %xmm1
	addss	220(%rax), %xmm0
	movss	%xmm1, 28(%rax)
	subss	%xmm5, %xmm1
	addss	216(%rax), %xmm1
	movss	%xmm0, 220(%rax)
	movss	%xmm1, 216(%rax)
.L6165:
	movss	%xmm3, 192(%rax)
	movss	%xmm2, 196(%rax)
	movl	$0, 6244(%rbx)
.L6160:
	movl	6248(%rbx), %edx
	movb	$0, 92(%rsp)
	testl	%edx, %edx
	je	.L6166
	cmpb	$0, 98(%rsp)
	movl	176(%rax), %ecx
	je	.L6559
	cmpb	$0, 68(%rsp)
	jne	.L6559
.L6167:
	movl	%ecx, %r8d
	andl	%edx, %r8d
	setne	92(%rsp)
	testl	%edx, %edx
	je	.L6560
	testl	%r8d, %r8d
	je	.L6169
.L6560:
	movss	6224(%rbx), %xmm0
	andl	$-15, %ecx
	movl	%ecx, 176(%rax)
	ucomiss	%xmm6, %xmm0
	jbe	.L6717
	movss	%xmm0, 44(%rax)
	xorl	%edx, %edx
.L6173:
	movss	6228(%rbx), %xmm0
	movl	%edx, 152(%rax)
	ucomiss	%xmm6, %xmm0
	jbe	.L6718
	movl	$0, 156(%rax)
	movss	%xmm0, 48(%rax)
.L6169:
	movl	$0, 6248(%rbx)
.L6166:
	movl	6252(%rbx), %r8d
	testl	%r8d, %r8d
	je	.L6176
	movq	6232(%rbx), %rdx
	movq	%rdx, 60(%rax)
	movl	$0, 6252(%rbx)
.L6177:
	movl	6256(%rbx), %edx
	testl	%edx, %edx
	je	.L6178
	cmpb	$0, 98(%rsp)
	movl	180(%rax), %ecx
	je	.L6563
	cmpb	$0, 68(%rsp)
	jne	.L6563
	movzbl	6240(%rbx), %r8d
.L6467:
	testl	%ecx, %edx
	jne	.L6181
	movl	$0, 6256(%rbx)
	.p2align 4,,10
.L6178:
	cmpb	$0, 6297(%rbx)
	jne	.L6755
.L6183:
	movl	6016(%rbx), %edx
	leal	-1(%rdx), %edi
	movslq	%edi, %r10
	testl	%edi, %edi
	leaq	0(,%r10,8), %r15
	jle	.L6184
	leaq	.LC2(%rip), %r13
	leaq	.LC3(%rip), %r12
	jmp	.L6188
	.p2align 4,,10
.L6185:
	movq	6024(%rbx), %rcx
	movq	(%rcx,%r15), %rax
	testb	$16, 14(%rax)
	je	.L6186
	subq	$8, %r15
	subl	$1, %edi
	je	.L6756
.L6188:
	cmpl	%edx, %edi
	jl	.L6185
	movq	%r13, %rdx
	movl	$856, %r8d
	movq	%r12, %rcx
	call	_assert
	movl	6016(%rbx), %edx
	jmp	.L6185
	.p2align 4,,10
.L6176:
	movl	64(%rsp), %edx
	cmpl	%edx, 72(%rsp)
	je	.L6177
	movq	$0, 60(%rax)
	jmp	.L6177
	.p2align 4,,10
.L6753:
	orl	$8, %edx
	movl	%edx, 172(%rax)
	movl	6244(%rbx), %r8d
	movl	%edx, %ecx
	andl	%r8d, %ecx
	jne	.L6466
	testl	%r8d, %r8d
	movb	$0, 88(%rsp)
	je	.L6454
	jmp	.L6165
	.p2align 4,,10
.L6563:
	orl	$8, %ecx
	movl	%ecx, 180(%rax)
	movl	6256(%rbx), %edx
	movzbl	6240(%rbx), %r8d
	testl	%edx, %edx
	jne	.L6467
.L6181:
	andl	$-15, %ecx
	movb	%r8b, 139(%rax)
	movl	%ecx, 180(%rax)
	movl	$0, 6256(%rbx)
	jmp	.L6178
	.p2align 4,,10
.L6559:
	orl	$8, %ecx
	movl	%ecx, 176(%rax)
	movl	6248(%rbx), %edx
	jmp	.L6167
	.p2align 4,,10
.L6186:
	leaq	.LC3(%rip), %r12
	movslq	%edi, %r11
	movl	%edi, %r14d
	leaq	0(,%r11,8), %r13
	jmp	.L6190
	.p2align 4,,10
.L6189:
	movq	(%rcx,%r13), %rax
	testl	$34603008, 12(%rax)
	je	.L6187
.L6758:
	subq	$8, %r13
	subl	$1, %r14d
	je	.L6757
.L6190:
	cmpl	%edx, %r14d
	jl	.L6189
	leaq	.LC2(%rip), %rdx
	movq	%r12, %rcx
	movl	$856, %r8d
	call	_assert
	movq	6024(%rbx), %rcx
	movl	6016(%rbx), %edx
	movq	(%rcx,%r13), %rax
	testl	$34603008, 12(%rax)
	jne	.L6758
	.p2align 4,,10
.L6187:
	movq	112(%rsp), %r12
	cmpl	%edx, %edi
	movq	%rbp, 680(%r12)
	jge	.L6759
.L6191:
	movq	6024(%rbx), %rax
	cmpl	%edx, %r14d
	movq	(%rax,%r15), %rcx
	movq	%rcx, 664(%r12)
	jge	.L6760
.L6192:
	movq	(%rax,%r13), %rax
	movl	64(%rsp), %edi
	cmpl	%edi, 72(%rsp)
	movq	%rax, 672(%r12)
	jne	.L6193
	movss	36(%r12), %xmm8
	movss	40(%r12), %xmm3
	movss	32(%r12), %xmm1
	movss	28(%r12), %xmm2
	movss	.LC17(%rip), %xmm7
.L6194:
	movl	12(%r12), %edx
	pxor	%xmm0, %xmm0
	testb	$1, %dl
	jne	.L6432
	movq	GImGui(%rip), %rax
	movss	648(%r12), %xmm0
	movss	5160(%rax), %xmm4
	mulss	5948(%rax), %xmm0
	addss	%xmm4, %xmm4
	addss	%xmm4, %xmm0
.L6432:
	movss	84(%r12), %xmm5
	addss	%xmm1, %xmm0
	movss	132(%r12), %xmm4
	addss	%xmm7, %xmm2
	mulss	%xmm7, %xmm5
	cvttss2si	%xmm5, %eax
	pxor	%xmm5, %xmm5
	cvtsi2ss	%eax, %xmm5
	ucomiss	%xmm5, %xmm4
	jb	.L6433
	movaps	%xmm4, %xmm5
.L6433:
	movaps	%xmm2, %xmm9
	addss	%xmm7, %xmm0
	andb	$4, %dh
	addss	%xmm5, %xmm9
	cvttss2si	%xmm9, %eax
	pxor	%xmm9, %xmm9
	cvtsi2ss	%eax, %xmm9
	movss	%xmm9, 160(%rsp)
	pxor	%xmm9, %xmm9
	je	.L6435
	movq	GImGui(%rip), %rax
	movss	648(%r12), %xmm9
	movss	5160(%rax), %xmm10
	mulss	5948(%rax), %xmm9
	addss	%xmm10, %xmm10
	addss	%xmm10, %xmm9
.L6435:
	addss	%xmm9, %xmm0
	movq	80(%rsp), %rcx
	movl	$1, %r8d
	addss	%xmm8, %xmm2
	subss	124(%r12), %xmm2
	addss	%xmm4, %xmm0
	addss	%xmm1, %xmm7
	leaq	8(%rcx), %rdx
	subss	%xmm5, %xmm2
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	addss	%xmm3, %xmm7
	subss	128(%r12), %xmm7
	cvtsi2ss	%eax, %xmm0
	cvttss2si	%xmm2, %eax
	subss	%xmm4, %xmm7
	movss	%xmm0, 164(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	cvttss2si	%xmm7, %eax
	movss	%xmm0, 168(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 172(%rsp)
	call	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
	movl	64(%rsp), %edi
	cmpl	%edi, 72(%rsp)
	movq	112(%rsp), %rdx
	je	.L6437
	movb	$0, 138(%rdx)
.L6437:
	movl	76(%rsp), %r13d
	addl	$1, 144(%rdx)
	movb	$0, 6296(%rbx)
	testl	%r13d, %r13d
	je	.L6438
	testb	$1, %sil
	je	.L6761
.L6439:
	testq	%rbp, %rbp
	je	.L6744
	movzbl	139(%rbp), %eax
	testb	%al, %al
	je	.L6744
	andl	$64, %esi
	movb	$1, 139(%rdx)
	jne	.L6735
	movl	152(%rdx), %r8d
	testl	%r8d, %r8d
	jle	.L6762
.L6735:
	movss	5120(%rbx), %xmm0
.L6445:
	ucomiss	%xmm0, %xmm6
	movb	$0, 136(%rdx)
	jb	.L6449
.L6448:
	movb	$0, 136(%rdx)
.L6449:
	movl	152(%rdx), %r12d
	testl	%r12d, %r12d
	jg	.L6452
	movl	156(%rdx), %ebp
	testl	%ebp, %ebp
	jg	.L6452
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.L6453
	.p2align 4,,10
.L6744:
	andl	$64, %esi
	movb	$0, 139(%rdx)
	jne	.L6734
	movl	152(%rdx), %ecx
	testl	%ecx, %ecx
	jg	.L6734
	movl	156(%rdx), %eax
	testl	%eax, %eax
	jg	.L6734
	xorl	%eax, %eax
.L6475:
	movss	528(%rdx), %xmm0
	ucomiss	536(%rdx), %xmm0
	jb	.L6727
	movb	$1, 139(%rdx)
	movss	5120(%rbx), %xmm0
	jmp	.L6445
	.p2align 4,,10
.L6734:
	movss	5120(%rbx), %xmm0
.L6442:
	ucomiss	%xmm0, %xmm6
	jnb	.L6448
.L6469:
	cmpb	$0, 136(%rdx)
	je	.L6449
.L6452:
	movl	$1, %eax
	xorl	%ecx, %ecx
.L6453:
	movb	%cl, 140(%rdx)
	movaps	176(%rsp), %xmm6
	movaps	192(%rsp), %xmm7
	movaps	208(%rsp), %xmm8
	movaps	224(%rsp), %xmm9
	movaps	240(%rsp), %xmm10
	movaps	256(%rsp), %xmm11
	movaps	272(%rsp), %xmm12
	movaps	288(%rsp), %xmm13
	movaps	304(%rsp), %xmm14
	movaps	320(%rsp), %xmm15
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
	.p2align 4,,10
.L6438:
	ucomiss	5120(%rbx), %xmm6
	jnb	.L6448
	cmpb	$0, 139(%rdx)
	jne	.L6449
	jmp	.L6469
	.p2align 4,,10
.L6193:
	movl	500(%r12), %eax
	movq	%r12, %rdx
	movb	$1, 136(%r12)
	movaps	.LC270(%rip), %xmm0
	movl	%edi, 544(%r12)
	movl	$0, 16(%r12)
	movl	$0, 144(%r12)
	movlps	%xmm0, 512(%r12)
	testl	%eax, %eax
	movhps	%xmm0, 520(%r12)
	jg	.L6195
	cmpl	$1, %eax
	sbbq	%rcx, %rcx
	andl	$28, %ecx
	addq	$4, %rcx
	cmpl	$1, %eax
	movq	GImGui(%rip), %rax
	sbbl	%r13d, %r13d
	andl	$7, %r13d
	addl	$1, %r13d
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	504(%r12), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6199
	movslq	496(%r12), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%r12), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6199
	subl	$1, 844(%rax)
.L6199:
	call	*240(%rax)
	movq	112(%rsp), %rdx
	movq	%rdi, 504(%r12)
	movl	%r13d, 500(%r12)
.L6195:
	movq	656(%rdx), %rcx
	movl	$1, 496(%r12)
	call	_ZN10ImDrawList5ClearEv
	movq	5936(%rbx), %rax
	movq	88(%rax), %rdx
	movq	112(%rsp), %rax
	movq	656(%rax), %rcx
	call	_ZN10ImDrawList13PushTextureIDERKPv
	movq	GImGui(%rip), %rax
	movss	176(%rax), %xmm0
	ucomiss	184(%rax), %xmm0
	jp	.L6564
	je	.L6200
.L6564:
	movss	180(%rax), %xmm0
	ucomiss	188(%rax), %xmm0
	jp	.L6565
	jne	.L6565
.L6200:
	movss	8(%rax), %xmm1
	movq	$0, 144(%rsp)
	movss	12(%rax), %xmm0
	movl	%esi, %eax
	movss	%xmm1, 152(%rsp)
	andl	$42991616, %eax
	movss	%xmm0, 156(%rsp)
	cmpl	$1048576, %eax
	je	.L6763
.L6204:
	leaq	144(%rsp), %rcx
	movl	$1, %r8d
	leaq	8(%rcx), %rdx
	call	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
.L6205:
	cmpb	$0, 98(%rsp)
	movq	112(%rsp), %r9
	jne	.L6207
	movl	$-1, 164(%r9)
	movl	100(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L6207
	cmpb	$0, 88(%rsp)
	jne	.L6207
	movq	264(%rbx), %rax
	movq	%rax, 20(%r9)
	.p2align 4,,10
.L6207:
	testb	$33, %sil
	jne	.L6209
	testb	$1, 12(%r9)
	pxor	%xmm0, %xmm0
	movss	32(%r9), %xmm2
	je	.L6764
.L6210:
	movq	28(%r9), %rax
	addss	%xmm2, %xmm0
	movss	28(%r9), %xmm1
	addss	44(%r9), %xmm1
	movss	%xmm0, 172(%rsp)
	movq	%rax, 160(%rsp)
	movss	%xmm1, 168(%rsp)
	movq	6040(%rbx), %r10
	cmpq	%r9, %r10
	je	.L6765
.L6214:
	movss	60(%r9), %xmm0
	ucomiss	%xmm6, %xmm0
	jp	.L6737
	jne	.L6737
	cmpb	$0, 99(%rsp)
	pxor	%xmm0, %xmm0
	je	.L6766
.L6218:
	addss	96(%r9), %xmm0
.L6737:
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 52(%r9)
	movss	64(%r9), %xmm0
	ucomiss	%xmm6, %xmm0
	jp	.L6738
	jne	.L6738
	cmpb	$0, 99(%rsp)
	pxor	%xmm0, %xmm0
	je	.L6767
.L6222:
	addss	100(%r9), %xmm0
.L6738:
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movl	168(%r9), %eax
	testl	%eax, %eax
	movss	%xmm0, 56(%r9)
	jle	.L6223
	subl	$1, %eax
	movl	%eax, 168(%r9)
.L6223:
	testl	$50331648, %esi
	je	.L6226
	cmpb	$0, 98(%rsp)
	je	.L6768
.L6226:
	movl	%esi, %eax
	andl	$43057280, %eax
	cmpl	$1048576, %eax
	je	.L6769
	movq	5124(%rbx), %rax
	movq	%rax, 84(%r9)
	movss	88(%r9), %xmm15
	movss	84(%r9), %xmm0
.L6230:
	movss	56(%r9), %xmm3
	movl	%esi, %r12d
	movss	52(%r9), %xmm4
	andl	$16777216, %r12d
	movss	5172(%rbx), %xmm8
	addss	%xmm3, %xmm15
	addss	%xmm4, %xmm0
	je	.L6231
	subss	%xmm8, %xmm15
	movaps	%xmm0, %xmm14
.L6232:
	cmpb	$0, 139(%r9)
	je	.L6246
	movl	152(%r9), %edx
	testl	%edx, %edx
	jle	.L6247
	cmpb	$0, 160(%r9)
	movaps	%xmm14, %xmm0
	je	.L6248
	movss	44(%r9), %xmm0
	ucomiss	%xmm14, %xmm0
	jb	.L6770
.L6248:
	movss	%xmm0, 44(%r9)
.L6247:
	movl	156(%r9), %eax
	testl	%eax, %eax
	jle	.L6251
	cmpb	$0, 160(%r9)
	movaps	%xmm15, %xmm0
	je	.L6252
	movss	48(%r9), %xmm0
	ucomiss	%xmm15, %xmm0
	jb	.L6771
.L6252:
	movss	%xmm0, 48(%r9)
.L6251:
	movq	44(%r9), %rdx
	movq	%r9, %rcx
	call	_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2
	movq	112(%rsp), %r10
	cmpb	$0, 139(%r10)
	movq	%r10, %r11
	je	.L6264
	testb	$1, 12(%r10)
	pxor	%xmm0, %xmm0
	movss	32(%r10), %xmm3
	je	.L6772
.L6265:
	movss	28(%r10), %xmm4
	addss	%xmm3, %xmm0
	movss	44(%r10), %xmm1
	movl	76(%rsp), %eax
	addss	%xmm4, %xmm1
	subss	%xmm3, %xmm0
	subss	%xmm4, %xmm1
	testl	%eax, %eax
	movss	%xmm0, 40(%r10)
	movss	%xmm1, 36(%r10)
	jne	.L6773
.L6267:
	movl	%esi, %eax
	andl	$34603008, %eax
	cmpl	$1048576, %eax
	jne	.L6268
	movq	192(%rbp), %rax
	movq	%rax, 20(%r10)
	movq	%rax, 28(%r10)
	movq	432(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 44(%r10)
	movq	%rax, 36(%r10)
.L6268:
	movl	%esi, %r13d
	andl	$67108864, %r13d
	cmpb	$0, 184(%r10)
	je	.L6269
	movl	168(%r10), %eax
	testl	%eax, %eax
	je	.L6270
.L6269:
	testl	%r13d, %r13d
	jne	.L6774
.L6271:
	testl	$134217728, %esi
	je	.L6277
	cmpb	$0, 88(%rsp)
	je	.L6775
.L6278:
	cmpb	$0, 270(%rbp)
	movabsq	$9187343237679939583, %rax
	movss	5168(%rbx), %xmm3
	movq	%rax, 160(%rsp)
	movabsq	$-36028797027352577, %rax
	movq	%rax, 168(%rsp)
	je	.L6279
	movl	12(%rbp), %eax
	pxor	%xmm1, %xmm1
	movss	32(%rbp), %xmm0
	testb	$1, %al
	jne	.L6280
	movq	GImGui(%rip), %rdx
	movss	648(%rbp), %xmm1
	movss	5160(%rdx), %xmm3
	mulss	5948(%rdx), %xmm1
	addss	%xmm3, %xmm3
	addss	%xmm3, %xmm1
.L6280:
	testb	$4, %ah
	addss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	jne	.L6776
.L6281:
	movss	%xmm0, 164(%rsp)
	addss	%xmm1, %xmm0
	movss	.LC90(%rip), %xmm10
	movl	$0xff7fffff, 160(%rsp)
	movss	%xmm10, 168(%rsp)
	movss	%xmm0, 172(%rsp)
.L6282:
	movq	80(%rsp), %r9
	leaq	36(%r10), %rdx
	leaq	20(%r10), %rcx
	leaq	164(%r10), %r8
	call	_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect
	testl	%r12d, %r12d
	movss	.LC17(%rip), %xmm7
	movq	%rax, 20(%r10)
	movq	112(%rsp), %r10
	movq	%r10, %r11
	jne	.L6286
.L6741:
	movss	24(%r10), %xmm3
	movss	20(%r10), %xmm1
.L6284:
	testl	$17825792, %esi
	movss	36(%r10), %xmm0
	jne	.L6287
	cmpb	$0, 88(%rsp)
	jne	.L6287
	movl	152(%r10), %r14d
	testl	%r14d, %r14d
	jle	.L6777
	.p2align 4,,10
.L6287:
	cvttss2si	%xmm3, %eax
	pxor	%xmm9, %xmm9
	pxor	%xmm8, %xmm8
	ucomiss	%xmm6, %xmm0
	cvtsi2ss	%eax, %xmm9
	cvttss2si	%xmm1, %eax
	movss	%xmm9, 32(%r10)
	cvtsi2ss	%eax, %xmm8
	movss	%xmm8, 28(%r10)
	jbe	.L6304
	testl	$16777280, %esi
	je	.L6778
.L6304:
	movss	.LC272(%rip), %xmm0
	mulss	5944(%rbx), %xmm0
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
.L6306:
	movss	%xmm0, 548(%r10)
	movl	704(%r10), %edx
	cmpl	$2147483647, %edx
	je	.L6307
	movl	688(%r10), %ecx
	cmpl	$-1, %ecx
	je	.L6511
	addl	$1, %ecx
	leal	(%rdx,%rcx), %eax
	cltd
	idivl	%ecx
.L6307:
	movl	%edx, 696(%r10)
	movl	708(%r10), %edx
	cmpl	$2147483647, %edx
	je	.L6308
	movl	692(%r10), %ecx
	cmpl	$-1, %ecx
	je	.L6512
	addl	$1, %ecx
	leal	(%rdx,%rcx), %eax
	cltd
	idivl	%ecx
.L6308:
	movss	104(%r10), %xmm1
	movabsq	$9223372034707292159, %rax
	movl	%edx, 700(%r10)
	movq	$-1, 688(%r10)
	ucomiss	%xmm1, %xmm10
	movq	%rax, 704(%r10)
	ja	.L6309
	movss	96(%r10), %xmm1
.L6310:
	movss	108(%r10), %xmm0
	ucomiss	%xmm0, %xmm10
	ja	.L6311
	movss	100(%r10), %xmm0
.L6312:
	ucomiss	%xmm6, %xmm0
	jnb	.L6315
	pxor	%xmm0, %xmm0
.L6315:
	ucomiss	%xmm6, %xmm1
	jnb	.L6317
	pxor	%xmm1, %xmm1
.L6317:
	movzbl	139(%r10), %r12d
	movss	%xmm1, 96(%r10)
	movss	%xmm0, 100(%r10)
	testb	%r12b, %r12b
	jne	.L6319
	cmpb	$0, 140(%r10)
	je	.L6779
.L6319:
	testl	%r13d, %r13d
	je	.L6328
	movq	GImGui(%rip), %rax
	movl	6184(%rax), %edx
	subl	$1, %edx
	js	.L6328
	movq	6192(%rax), %r8
	movslq	%edx, %rax
	movl	%edx, %edx
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rdx,%rdx,4), %rdx
	salq	$3, %rcx
	salq	$3, %rdx
	leaq	8(%r8,%rcx), %rax
	leaq	-32(%r8,%rcx), %rcx
	subq	%rdx, %rcx
	.p2align 4,,10
.L6331:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L6329
	testb	$4, 15(%rdx)
	jne	.L6330
.L6329:
	subq	$40, %rax
	cmpq	%rcx, %rax
	jne	.L6331
.L6328:
	testb	$1, 12(%r10)
	pxor	%xmm10, %xmm10
	jne	.L6332
	movq	GImGui(%rip), %rax
	movss	648(%r10), %xmm10
	movss	5160(%rax), %xmm0
	mulss	5948(%rax), %xmm10
	addss	%xmm0, %xmm0
	addss	%xmm0, %xmm10
.L6332:
	movss	44(%r10), %xmm4
	addss	%xmm9, %xmm10
	movl	76(%rsp), %edi
	addss	%xmm8, %xmm4
	testl	%edi, %edi
	movss	%xmm4, 88(%rsp)
	je	.L6333
	movss	5152(%rbx), %xmm11
	movl	%esi, %eax
	andl	$1, %eax
	testb	%r12b, %r12b
	movl	%eax, 68(%rsp)
	jne	.L6780
.L6335:
	movss	5944(%rbx), %xmm0
	movss	.LC113(%rip), %xmm1
	movss	.LC18(%rip), %xmm13
	mulss	%xmm0, %xmm1
	addss	%xmm11, %xmm13
	mulss	.LC275(%rip), %xmm0
	addss	%xmm1, %xmm13
	ucomiss	%xmm13, %xmm0
	jb	.L6337
	movaps	%xmm0, %xmm13
.L6337:
	movl	%esi, %r13d
	movl	$0, 92(%rsp)
	andl	$2, %r13d
	testb	$64, %sil
	jne	.L6339
	movl	152(%r10), %r11d
	testl	%r11d, %r11d
	jg	.L6339
	movl	156(%r10), %r9d
	testl	%r9d, %r9d
	jle	.L6781
	.p2align 4,,10
.L6339:
	movl	%esi, %eax
	andl	$32768, %eax
	testl	$16384, %esi
	jne	.L6354
	movss	40(%r10), %xmm0
	addss	5172(%rbx), %xmm0
	movss	56(%r10), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.L6352
	testb	$8, %sil
	je	.L6354
.L6352:
	testl	%eax, %eax
	movb	$0, 121(%r10)
	jne	.L6355
	movss	52(%r10), %xmm2
	movss	36(%r10), %xmm0
	jmp	.L6356
	.p2align 4,,10
.L6774:
	cmpb	$1, 88(%rsp)
	je	.L6271
	cmpb	$0, 68(%rsp)
	je	.L6271
.L6270:
	movss	148(%rsp), %xmm0
	addss	156(%rsp), %xmm0
	movss	.LC17(%rip), %xmm7
	movss	48(%r10), %xmm1
	mulss	%xmm7, %xmm0
	movss	44(%r10), %xmm3
	mulss	%xmm7, %xmm1
	mulss	%xmm7, %xmm3
	subss	%xmm1, %xmm0
	movss	144(%rsp), %xmm1
	addss	152(%rsp), %xmm1
	mulss	%xmm7, %xmm1
	subss	%xmm3, %xmm1
	movss	5236(%rbx), %xmm3
	ucomiss	%xmm0, %xmm3
	jb	.L6272
	movaps	%xmm3, %xmm0
.L6272:
	movss	5232(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jnb	.L6782
.L6274:
	cvttss2si	%xmm0, %eax
	movss	%xmm0, 24(%r10)
	pxor	%xmm0, %xmm0
	movss	28(%r10), %xmm3
	movss	%xmm1, 20(%r10)
	movss	32(%r10), %xmm4
	andl	$-15, 172(%r10)
	movb	$0, 184(%r10)
	movss	.LC90(%rip), %xmm10
	cvtsi2ss	%eax, %xmm0
	cvttss2si	%xmm1, %eax
	pxor	%xmm1, %xmm1
	movss	%xmm0, 32(%r10)
	subss	%xmm4, %xmm0
	cvtsi2ss	%eax, %xmm1
	movss	%xmm1, 28(%r10)
	subss	%xmm3, %xmm1
	movss	192(%r10), %xmm3
	addss	%xmm1, %xmm3
	addss	216(%r10), %xmm1
	movss	%xmm3, 192(%r10)
	movss	196(%r10), %xmm3
	movss	%xmm1, 216(%r10)
	addss	%xmm0, %xmm3
	addss	220(%r10), %xmm0
	movss	%xmm3, 196(%r10)
	movss	%xmm0, 220(%r10)
.L6276:
	testl	%r12d, %r12d
	je	.L6741
.L6286:
	cmpb	$0, 88(%rsp)
	je	.L6285
	movss	24(%r10), %xmm3
	movss	20(%r10), %xmm1
	movss	36(%r10), %xmm0
	jmp	.L6287
	.p2align 4,,10
.L6756:
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	jmp	.L6187
	.p2align 4,,10
.L6146:
	movl	12(%rax), %esi
	xorl	%ebp, %ebp
	movslq	6016(%rbx), %rax
	cmpl	$0, %eax
	je	.L6148
.L6750:
	jle	.L6783
.L6149:
	movq	6024(%rbx), %rdx
	movq	-8(%rdx,%rax,8), %rbp
	jmp	.L6148
	.p2align 4,,10
.L6755:
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movb	$0, 6297(%rbx)
	jmp	.L6183
	.p2align 4,,10
.L6760:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movq	112(%rsp), %r12
	movq	6024(%rbx), %rax
	jmp	.L6192
	.p2align 4,,10
.L6759:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movq	112(%rsp), %r12
	movl	6016(%rbx), %edx
	jmp	.L6191
	.p2align 4,,10
.L6747:
	leaq	.LC5(%rip), %rdx
	movl	$3884, %r8d
	leaq	.LC265(%rip), %rcx
	call	_assert
	movl	5964(%rbx), %eax
	cmpl	%eax, 5968(%rbx)
	jne	.L6120
.L6748:
	leaq	.LC5(%rip), %rdx
	movl	$3885, %r8d
	leaq	.LC266(%rip), %rcx
	call	_assert
	jmp	.L6120
	.p2align 4,,10
.L6751:
	testl	%edi, %edi
	je	.L6151
	leaq	.LC5(%rip), %rdx
	movl	$3911, %r8d
	leaq	.LC269(%rip), %rcx
	call	_assert
	movq	112(%rsp), %rax
	jmp	.L6151
	.p2align 4,,10
.L6354:
	testl	%eax, %eax
	movb	$1, 121(%r10)
	movss	5200(%rbx), %xmm0
	je	.L6784
	movb	$1, 120(%r10)
	movaps	%xmm0, %xmm1
.L6359:
	movl	%esi, %r14d
	movss	%xmm1, 124(%r10)
	movss	%xmm0, 128(%r10)
	andl	$128, %r14d
	pxor	%xmm0, %xmm0
	je	.L6364
	movss	.LC18(%rip), %xmm0
.L6364:
	testl	$8388608, %esi
	movl	$18, %eax
	movss	%xmm0, 132(%r10)
	jne	.L6365
	testl	$50331648, %esi
	movl	$4, %eax
	jne	.L6365
	movl	76(%rsp), %r8d
	xorl	%eax, %eax
	testl	%r8d, %r8d
	setne	%al
	addl	$2, %eax
.L6365:
	cltq
	addq	$8, %rax
	salq	$4, %rax
	ucomiss	%xmm6, %xmm12
	movq	5128(%rbx,%rax), %rdx
	movq	5120(%rbx,%rax), %rax
	movq	%rdx, 168(%rsp)
	movq	%rax, 160(%rsp)
	jnb	.L6366
	movss	172(%rsp), %xmm12
.L6366:
	mulss	5120(%rbx), %xmm12
	movss	%xmm12, 172(%rsp)
	ucomiss	%xmm6, %xmm12
	jbe	.L6367
	cmpl	$1, 68(%rsp)
	movq	80(%rsp), %rcx
	movq	656(%r10), %r11
	sbbl	%r8d, %r8d
	andl	$-3, %r8d
	addl	$15, %r8d
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	32(%r10), %xmm3
	movl	%eax, %r9d
	movss	40(%r10), %xmm0
	movss	28(%r10), %xmm2
	movss	36(%r10), %xmm1
	addss	%xmm3, %xmm0
	testb	$1, 12(%r10)
	addss	%xmm2, %xmm1
	movss	%xmm0, 140(%rsp)
	pxor	%xmm0, %xmm0
	movss	%xmm1, 136(%rsp)
	jne	.L6370
	movq	GImGui(%rip), %rax
	movss	648(%r10), %xmm1
	movss	5160(%rax), %xmm0
	mulss	5948(%rax), %xmm1
	addss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
.L6370:
	addss	%xmm6, %xmm2
	leaq	128(%rsp), %r12
	movl	%r8d, 40(%rsp)
	movq	%r11, %rcx
	addss	%xmm3, %xmm0
	movss	%xmm11, 32(%rsp)
	leaq	136(%rsp), %r8
	movq	%r12, %rdx
	movss	%xmm2, 128(%rsp)
	movss	%xmm0, 132(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movq	112(%rsp), %r10
.L6367:
	movl	68(%rsp), %ecx
	movq	%r10, %r12
	testl	%ecx, %ecx
	jne	.L6371
	movq	6032(%rbx), %rax
	movl	$10, %ecx
	movq	656(%r10), %r11
	testq	%rax, %rax
	je	.L6372
	xorl	%ecx, %ecx
	movq	672(%rax), %rax
	cmpq	%rax, 672(%r10)
	sete	%cl
	leal	10(%rcx,%rcx), %ecx
.L6372:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	leaq	128(%rsp), %r12
	movss	88(%rsp), %xmm4
	movl	$3, 40(%rsp)
	movq	%r12, %rdx
	movl	%eax, %r9d
	movss	%xmm11, 32(%rsp)
	movq	%r11, %rcx
	leaq	136(%rsp), %r8
	movss	%xmm4, 136(%rsp)
	movss	%xmm10, 140(%rsp)
	movss	%xmm8, 128(%rsp)
	movss	%xmm9, 132(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movq	112(%rsp), %r12
.L6371:
	testl	$1024, %esi
	jne	.L6785
.L6373:
	cmpb	$0, 120(%r12)
	jne	.L6786
	cmpb	$0, 121(%r12)
	jne	.L6787
.L6379:
	testl	%r13d, %r13d
	movss	28(%r12), %xmm5
	movss	32(%r12), %xmm15
	je	.L6788
.L6380:
	testl	%r14d, %r14d
	jne	.L6789
.L6336:
	movss	84(%r12), %xmm4
	pxor	%xmm2, %xmm2
	movss	96(%r12), %xmm11
	movaps	%xmm4, %xmm0
	movl	12(%r12), %eax
	subss	%xmm11, %xmm0
	movss	100(%r12), %xmm8
	movss	%xmm0, 68(%r12)
	movss	88(%r12), %xmm0
	movl	%eax, %edx
	andl	$1, %edx
	movaps	%xmm0, %xmm1
	subss	%xmm8, %xmm1
	jne	.L6387
	movq	GImGui(%rip), %rcx
	movss	648(%r12), %xmm2
	movss	5160(%rcx), %xmm3
	mulss	5948(%rcx), %xmm2
	addss	%xmm3, %xmm3
	addss	%xmm3, %xmm2
.L6387:
	andl	$1024, %eax
	addss	%xmm2, %xmm1
	pxor	%xmm2, %xmm2
	je	.L6388
	movq	GImGui(%rip), %rcx
	movss	648(%r12), %xmm2
	movss	5160(%rcx), %xmm3
	mulss	5948(%rcx), %xmm2
	addss	%xmm3, %xmm3
	addss	%xmm3, %xmm2
.L6388:
	movss	60(%r12), %xmm3
	addss	%xmm2, %xmm1
	movss	.LC175(%rip), %xmm2
	ucomiss	%xmm6, %xmm3
	movss	%xmm1, 72(%r12)
	movaps	%xmm11, %xmm1
	xorps	%xmm2, %xmm1
	subss	%xmm4, %xmm1
	jp	.L6389
	jne	.L6389
	movss	36(%r12), %xmm3
	subss	124(%r12), %xmm3
.L6389:
	addss	%xmm3, %xmm1
	xorps	%xmm8, %xmm2
	subss	%xmm0, %xmm2
	movss	%xmm1, 76(%r12)
	movss	64(%r12), %xmm1
	ucomiss	%xmm6, %xmm1
	jp	.L6390
	jne	.L6390
	movss	40(%r12), %xmm1
	subss	128(%r12), %xmm1
.L6390:
	movaps	%xmm4, %xmm3
	addss	%xmm1, %xmm2
	testl	%edx, %edx
	movq	$0, 432(%r12)
	addss	%xmm6, %xmm3
	movss	%xmm2, 80(%r12)
	subss	%xmm11, %xmm3
	pxor	%xmm11, %xmm11
	movss	%xmm3, 428(%r12)
	jne	.L6391
	movq	GImGui(%rip), %rdx
	movss	648(%r12), %xmm1
	movss	5160(%rdx), %xmm11
	mulss	5948(%rdx), %xmm1
	addss	%xmm11, %xmm11
	addss	%xmm1, %xmm11
.L6391:
	testl	%eax, %eax
	pxor	%xmm1, %xmm1
	je	.L6392
	movq	GImGui(%rip), %rax
	movss	648(%r12), %xmm2
	movss	5160(%rax), %xmm1
	mulss	5948(%rax), %xmm2
	addss	%xmm1, %xmm1
	addss	%xmm2, %xmm1
.L6392:
	movq	$0, 224(%r12)
	addss	%xmm6, %xmm3
	movb	$0, 270(%r12)
	addss	%xmm11, %xmm1
	movq	$0, 232(%r12)
	addss	%xmm5, %xmm3
	addss	%xmm1, %xmm0
	movss	5168(%rbx), %xmm1
	movss	%xmm3, 208(%r12)
	ucomiss	%xmm1, %xmm4
	subss	%xmm8, %xmm0
	addss	%xmm15, %xmm0
	movss	%xmm0, 212(%r12)
	movq	208(%r12), %rax
	movq	%rax, 192(%r12)
	movq	%rax, 200(%r12)
	movq	%rax, 216(%r12)
	jb	.L6394
	movaps	%xmm4, %xmm1
.L6394:
	movl	284(%r12), %edi
	movq	%r12, %r13
	movss	%xmm1, 272(%r12)
	subss	.LC182(%rip), %xmm0
	movss	%xmm0, 240(%r12)
	testl	%edi, %edi
	jns	.L6459
	leaq	280(%r12), %rcx
	xorl	%edx, %edx
	call	_ZN8ImVectorIP11ImGuiWindowE7reserveEi
	movq	112(%rsp), %r13
.L6459:
	movl	324(%r13), %eax
	movl	$0, 280(%r12)
	movq	%r13, %r12
	movss	548(%r13), %xmm0
	movb	$1, 316(%r13)
	movl	$0, 304(%r13)
	movss	%xmm0, 308(%r13)
	testl	%eax, %eax
	movb	$0, 317(%r13)
	movl	$0xbf800000, 312(%r13)
	jns	.L6395
	leaq	320(%r13), %rcx
	xorl	%edx, %edx
	call	_ZN8ImVectorIfE7reserveEi
	movq	112(%rsp), %r12
.L6395:
	movl	356(%r12), %r10d
	movl	$0, 320(%r13)
	testl	%r10d, %r10d
	js	.L6790
	movl	372(%r12), %eax
	movq	%r12, %r14
	movl	$0, 352(%r12)
	testl	%eax, %eax
	jns	.L6396
	leaq	368(%r12), %rcx
.L6462:
	xorl	%edx, %edx
	call	_ZN8ImVectorIbE7reserveEi
	movq	112(%rsp), %r14
.L6396:
	movl	340(%r14), %r9d
	movq	%r14, %r13
	movl	$0, 368(%r12)
	leaq	336(%r14), %rcx
	testl	%r9d, %r9d
	js	.L6465
.L6397:
	movabsq	$4294967296, %rax
	movq	%r13, %r12
	movl	$0, 336(%r14)
	movss	196(%r13), %xmm0
	movq	%rax, 440(%r13)
	leaq	632(%r13), %rax
	movq	%rax, 296(%r13)
	movl	388(%r13), %eax
	movss	%xmm0, 456(%r13)
	movss	%xmm0, 464(%r13)
	movss	%xmm0, 460(%r13)
	movl	$0, 244(%r13)
	testl	%eax, %eax
	jns	.L6398
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	392(%r13), %rcx
	movq	%rax, %r12
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6401
	movslq	384(%r13), %rax
	movq	%rcx, %rdx
	movq	%r12, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$3, %r8
	call	memcpy
	movq	392(%r13), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6401
	subl	$1, 844(%rax)
.L6401:
	call	*240(%rax)
	movq	%r12, 392(%r13)
	movq	112(%rsp), %r12
	movl	$0, 388(%r13)
.L6398:
	cmpl	$8, 552(%r12)
	movq	%r12, %rcx
	movl	$0, 384(%r13)
	movss	5168(%rbx), %xmm8
	movl	$-2, 400(%r12)
	jg	.L6791
.L6402:
	movss	%xmm8, 556(%r12)
	cmpb	$0, 98(%rsp)
	movl	$3, 552(%r12)
	movq	$0, 560(%r12)
	je	.L6792
.L6403:
	movss	600(%r12), %xmm0
	movl	$0x00000000, 568(%r12)
	movss	604(%r12), %xmm2
	movl	$0x00000000, 600(%r12)
	addss	%xmm6, %xmm0
	ucomiss	%xmm6, %xmm2
	movss	%xmm0, 560(%r12)
	jbe	.L6407
	addss	%xmm8, %xmm0
.L6407:
	cvttss2si	%xmm0, %eax
	pxor	%xmm1, %xmm1
	movl	$0x00000000, 604(%r12)
	addss	%xmm2, %xmm0
	movss	608(%r12), %xmm2
	ucomiss	%xmm6, %xmm2
	movss	%xmm0, 560(%r12)
	cvtsi2ss	%eax, %xmm1
	movss	%xmm1, 572(%r12)
	jbe	.L6406
	addss	%xmm8, %xmm0
.L6406:
	cvttss2si	%xmm0, %eax
	pxor	%xmm1, %xmm1
	movl	$0x00000000, 608(%r12)
	addss	%xmm2, %xmm0
	movss	%xmm0, 560(%r12)
	cvtsi2ss	%eax, %xmm1
	movss	%xmm1, 576(%r12)
	movl	152(%rcx), %eax
	testl	%eax, %eax
	jle	.L6409
	subl	$1, %eax
	movl	%eax, 152(%rcx)
.L6409:
	movl	156(%rcx), %eax
	testl	%eax, %eax
	jle	.L6410
	subl	$1, %eax
	movl	%eax, 156(%rcx)
.L6410:
	cmpb	$0, 98(%rsp)
	jne	.L6411
	testl	$4096, %esi
	jne	.L6411
	testl	$17825792, %esi
	je	.L6595
	movl	100(%rsp), %r15d
	testl	%r15d, %r15d
	jne	.L6595
	.p2align 4,,10
.L6411:
	movl	68(%rsp), %r14d
	testl	%r14d, %r14d
	jne	.L6413
	cmpq	$0, 424(%rsp)
	je	.L6415
	movq	112(%rsp), %rcx
	testb	$1, 12(%rcx)
	jne	.L6544
	movq	GImGui(%rip), %rax
	movss	648(%rcx), %xmm8
	movss	.LC170(%rip), %xmm1
	movss	5160(%rax), %xmm0
	mulss	5948(%rax), %xmm8
	addss	%xmm0, %xmm0
	addss	%xmm0, %xmm8
	movss	.LC263(%rip), %xmm0
	subss	.LC29(%rip), %xmm8
	movaps	%xmm0, %xmm2
	mulss	%xmm7, %xmm8
	addss	%xmm8, %xmm1
	subss	%xmm8, %xmm2
.L6416:
	movss	28(%rcx), %xmm0
	leaq	.LC278(%rip), %rdx
	addss	36(%rcx), %xmm0
	addss	32(%rcx), %xmm1
	addss	%xmm2, %xmm0
	movss	%xmm1, 164(%rsp)
	movss	%xmm0, 160(%rsp)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movq	80(%rsp), %rdx
	movaps	%xmm8, %xmm2
	movl	%eax, %ecx
	call	_ZN5ImGui11CloseButtonEjRK6ImVec2f
	testb	%al, %al
	je	.L6415
	movq	424(%rsp), %rax
	movb	$0, (%rax)
.L6415:
	movq	416(%rsp), %rcx
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	%esi, %r12d
	movss	.LC1(%rip), %xmm3
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	andl	$32, %r12d
	movq	%rax, 120(%rsp)
	je	.L6793
.L6418:
	movq	112(%rsp), %rax
	cmpq	$0, 424(%rsp)
	movq	28(%rax), %rdx
	movq	%rdx, 128(%rsp)
	movss	5160(%rbx), %xmm0
	movss	32(%rax), %xmm3
	addss	%xmm0, %xmm0
	movss	28(%rax), %xmm4
	addss	124(%rsp), %xmm0
	movss	36(%rax), %xmm2
	addss	%xmm3, %xmm0
	addss	%xmm4, %xmm2
	movss	%xmm0, 140(%rsp)
	movss	5156(%rbx), %xmm1
	je	.L6419
	subss	%xmm9, %xmm10
	movaps	%xmm2, %xmm5
	testl	%r12d, %r12d
	movss	%xmm0, 172(%rsp)
	subss	.LC115(%rip), %xmm10
	subss	%xmm10, %xmm5
	movss	%xmm5, 168(%rsp)
	jne	.L6545
.L6470:
	movss	5944(%rbx), %xmm5
	cmpq	$0, 424(%rsp)
	addss	%xmm1, %xmm5
	movss	5176(%rbx), %xmm0
	addss	%xmm5, %xmm0
	je	.L6421
.L6420:
	addss	5176(%rbx), %xmm5
	movaps	%xmm5, %xmm1
.L6421:
	movss	5144(%rbx), %xmm5
	ucomiss	%xmm6, %xmm5
	jbe	.L6422
	movaps	%xmm0, %xmm8
	subss	%xmm1, %xmm8
	mulss	%xmm8, %xmm5
	addss	%xmm5, %xmm1
.L6422:
	movq	80(%rsp), %rax
	addss	%xmm4, %xmm0
	xorl	%r9d, %r9d
	movss	%xmm3, 164(%rsp)
	movq	416(%rsp), %r8
	subss	%xmm1, %xmm2
	leaq	136(%rsp), %rdx
	leaq	128(%rsp), %rcx
	movss	%xmm0, 128(%rsp)
	movq	%rax, 48(%rsp)
	leaq	5144(%rbx), %rax
	movq	%rax, 40(%rsp)
	leaq	120(%rsp), %rax
	movq	%rax, 32(%rsp)
	movss	%xmm2, 136(%rsp)
	movss	%xmm0, 160(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
.L6413:
	movq	112(%rsp), %r12
	movss	28(%r12), %xmm2
	movss	32(%r12), %xmm1
	movss	36(%r12), %xmm8
	movaps	%xmm2, %xmm4
	movss	%xmm2, 528(%r12)
	movss	40(%r12), %xmm3
	movaps	%xmm1, %xmm0
	movss	%xmm1, 532(%r12)
	movss	512(%r12), %xmm5
	addss	%xmm8, %xmm4
	addss	%xmm3, %xmm0
	ucomiss	%xmm2, %xmm5
	movss	%xmm4, 536(%r12)
	movss	%xmm0, 540(%r12)
	jbe	.L6424
	movss	%xmm5, 528(%r12)
.L6424:
	movss	516(%r12), %xmm5
	ucomiss	%xmm1, %xmm5
	jbe	.L6426
	movss	%xmm5, 532(%r12)
.L6426:
	movss	520(%r12), %xmm5
	ucomiss	%xmm5, %xmm4
	jbe	.L6428
	movss	%xmm5, 536(%r12)
.L6428:
	movss	524(%r12), %xmm4
	ucomiss	%xmm4, %xmm0
	jbe	.L6194
	movss	%xmm4, 540(%r12)
	jmp	.L6194
	.p2align 4,,10
.L6333:
	movss	5140(%rbx), %xmm11
	movl	%esi, %eax
	andl	$1, %eax
	testb	%r12b, %r12b
	movl	%eax, 68(%rsp)
	je	.L6335
.L6780:
	movl	$11, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movd	%xmm10, %edx
	movd	%xmm9, %ecx
	movss	%xmm11, 32(%rsp)
	movl	%eax, %r8d
	movl	88(%rsp), %eax
	salq	$32, %rdx
	movq	%rcx, %r9
	salq	$32, %r9
	movl	%eax, %eax
	orq	%rax, %rdx
	movd	%xmm8, %eax
	movl	%eax, %ecx
	orq	%r9, %rcx
	movl	$1, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movq	112(%rsp), %r12
	movss	32(%r12), %xmm15
	movss	28(%r12), %xmm5
	jmp	.L6336
	.p2align 4,,10
.L6311:
	movss	116(%r10), %xmm5
	pxor	%xmm2, %xmm2
	movss	.LC18(%rip), %xmm3
	movl	12(%r10), %eax
	subss	%xmm5, %xmm3
	testb	$1, %al
	movaps	%xmm3, %xmm11
	jne	.L6313
	movq	GImGui(%rip), %rdx
	movss	648(%r10), %xmm3
	movss	5160(%rdx), %xmm4
	mulss	5948(%rdx), %xmm3
	addss	%xmm4, %xmm4
	addss	%xmm4, %xmm3
	movaps	%xmm3, %xmm2
.L6313:
	testb	$4, %ah
	pxor	%xmm3, %xmm3
	je	.L6314
	movq	GImGui(%rip), %rax
	movss	648(%r10), %xmm4
	movss	5160(%rax), %xmm3
	mulss	5948(%rax), %xmm4
	addss	%xmm3, %xmm3
	addss	%xmm4, %xmm3
.L6314:
	addss	%xmm2, %xmm3
	mulss	48(%r10), %xmm5
	movss	%xmm10, 108(%r10)
	mulss	%xmm11, %xmm3
	subss	%xmm3, %xmm0
	subss	%xmm5, %xmm0
	jmp	.L6312
	.p2align 4,,10
.L6309:
	movss	%xmm1, 96(%r10)
	movss	%xmm10, 104(%r10)
	jmp	.L6310
	.p2align 4,,10
.L6264:
	movq	44(%r10), %rax
	movq	%rax, 36(%r10)
	movl	76(%rsp), %eax
	testl	%eax, %eax
	je	.L6267
.L6773:
	movl	280(%rbp), %eax
	leaq	280(%rbp), %rcx
	movq	104(%rsp), %rdx
	movl	%eax, 16(%r10)
	call	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_
	movq	112(%rsp), %r10
	movq	%r10, %r11
	jmp	.L6267
	.p2align 4,,10
.L6246:
	testb	$64, %sil
	je	.L6254
	cmpb	$0, 92(%rsp)
	je	.L6794
.L6254:
	movl	152(%r9), %eax
	testl	%eax, %eax
	jle	.L6795
	cmpb	$0, 92(%rsp)
	jne	.L6251
	cmpb	$0, 160(%r9)
	movaps	%xmm14, %xmm0
	je	.L6258
	movss	44(%r9), %xmm0
	ucomiss	%xmm14, %xmm0
	jnb	.L6258
	movaps	%xmm14, %xmm0
.L6258:
	movl	156(%r9), %eax
	movss	%xmm0, 44(%r9)
	testl	%eax, %eax
	jg	.L6257
.L6260:
	testl	$256, %esi
	jne	.L6251
	movq	GImGui(%rip), %rax
	ucomiss	6128(%rax), %xmm6
	jb	.L6251
	movss	20(%rax), %xmm0
	movss	%xmm0, 6128(%rax)
	jmp	.L6251
	.p2align 4,,10
.L6231:
	movss	12(%rbx), %xmm7
	subss	5236(%rbx), %xmm7
	movss	5136(%rbx), %xmm1
	movss	8(%rbx), %xmm5
	ucomiss	%xmm7, %xmm1
	subss	5232(%rbx), %xmm5
	jb	.L6233
	movaps	%xmm1, %xmm7
.L6233:
	movss	5132(%rbx), %xmm14
	ucomiss	%xmm5, %xmm14
	jb	.L6235
	movaps	%xmm14, %xmm5
.L6235:
	ucomiss	%xmm15, %xmm1
	jbe	.L6796
	ucomiss	%xmm0, %xmm14
	jbe	.L6797
.L6239:
	ucomiss	%xmm14, %xmm4
	jbe	.L6241
.L6799:
	movl	%esi, %eax
	andl	$2056, %eax
	cmpl	$2048, %eax
	je	.L6798
.L6241:
	ucomiss	%xmm1, %xmm3
	jbe	.L6243
	testb	$8, %sil
	jne	.L6243
	addss	5200(%rbx), %xmm14
.L6243:
	subss	%xmm8, %xmm1
	ucomiss	%xmm6, %xmm1
	movaps	%xmm1, %xmm15
	jnb	.L6232
	pxor	%xmm15, %xmm15
	jmp	.L6232
	.p2align 4,,10
.L6209:
	movb	$0, 139(%r9)
	jmp	.L6214
	.p2align 4,,10
.L6154:
	leal	1(%rdx), %ecx
	testl	%edx, %edx
	movl	$8, %eax
	je	.L6156
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L6156:
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movslq	%eax, %rdx
	movq	GImGui(%rip), %rax
	leaq	(%rdx,%rdx,4), %rcx
	movq	%rdx, %r12
	salq	$3, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	6208(%rbx), %rcx
	movq	%rax, %r14
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6159
	movslq	6200(%rbx), %rax
	movq	%rcx, %rdx
	movq	%r14, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$3, %r8
	call	memcpy
	movq	6208(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6159
	subl	$1, 844(%rax)
.L6159:
	call	*240(%rax)
	movq	%r14, 6208(%rbx)
	movq	112(%rsp), %rax
	movslq	6200(%rbx), %rdx
	movl	%r12d, 6204(%rbx)
	jmp	.L6155
	.p2align 4,,10
.L6754:
	andl	$-15, %edx
	movb	$1, 184(%rax)
	movl	%edx, 172(%rax)
	movb	$1, 88(%rsp)
	jmp	.L6165
	.p2align 4,,10
.L6752:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movq	112(%rsp), %rax
	movslq	6200(%rbx), %rdx
	jmp	.L6153
	.p2align 4,,10
.L6778:
	mulss	.LC194(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	jmp	.L6306
	.p2align 4,,10
.L6782:
	movaps	%xmm3, %xmm1
	jmp	.L6274
	.p2align 4,,10
.L6277:
	movl	100(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L6740
	cmpb	$1, 88(%rsp)
	je	.L6740
	cmpb	$0, 68(%rsp)
	je	.L6740
	movss	20(%r10), %xmm3
	leaq	36(%r10), %rdx
	movss	.LC18(%rip), %xmm1
	leaq	20(%r10), %rcx
	movss	24(%r10), %xmm0
	movaps	%xmm3, %xmm4
	subss	%xmm1, %xmm4
	movq	80(%rsp), %r9
	leaq	164(%r10), %r8
	addss	%xmm1, %xmm3
	movss	%xmm4, 160(%rsp)
	movaps	%xmm0, %xmm4
	addss	%xmm1, %xmm0
	movss	%xmm3, 168(%rsp)
	subss	%xmm1, %xmm4
	movss	%xmm0, 172(%rsp)
	movss	%xmm4, 164(%rsp)
	call	_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect
	testl	%r12d, %r12d
	movq	%rax, 20(%r10)
	jne	.L6283
	movq	112(%rsp), %r10
	movss	.LC90(%rip), %xmm10
	movss	.LC17(%rip), %xmm7
	movss	24(%r10), %xmm3
	movss	20(%r10), %xmm1
	jmp	.L6284
	.p2align 4,,10
.L6797:
	minss	%xmm0, %xmm5
	movaps	%xmm5, %xmm14
	ucomiss	%xmm14, %xmm4
	jbe	.L6241
	jmp	.L6799
	.p2align 4,,10
.L6796:
	minss	%xmm15, %xmm7
	ucomiss	%xmm0, %xmm14
	movaps	%xmm7, %xmm1
	ja	.L6239
	jmp	.L6797
	.p2align 4,,10
.L6779:
	movss	56(%r10), %xmm3
	subss	48(%r10), %xmm3
	addss	128(%r10), %xmm3
	movss	52(%r10), %xmm4
	subss	44(%r10), %xmm4
	ucomiss	%xmm3, %xmm6
	addss	124(%r10), %xmm4
	jb	.L6320
	pxor	%xmm3, %xmm3
.L6320:
	ucomiss	%xmm4, %xmm6
	jb	.L6322
	pxor	%xmm4, %xmm4
.L6322:
	minss	%xmm3, %xmm0
	minss	%xmm4, %xmm1
	movss	%xmm0, 100(%r10)
	movss	%xmm1, 96(%r10)
	jmp	.L6319
	.p2align 4,,10
.L6767:
	movss	220(%r9), %xmm0
	subss	32(%r9), %xmm0
	jmp	.L6222
	.p2align 4,,10
.L6766:
	movss	216(%r9), %xmm0
	subss	28(%r9), %xmm0
	jmp	.L6218
	.p2align 4,,10
.L6764:
	movq	GImGui(%rip), %rax
	movss	648(%r9), %xmm1
	movss	5160(%rax), %xmm0
	mulss	5948(%rax), %xmm1
	addss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	jmp	.L6210
	.p2align 4,,10
.L6772:
	movq	GImGui(%rip), %rax
	movss	648(%r10), %xmm0
	movss	5160(%rax), %xmm1
	mulss	5948(%rax), %xmm0
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
	jmp	.L6265
	.p2align 4,,10
.L6768:
	movl	$1, 168(%r9)
	testb	$64, %sil
	je	.L6226
	cmpb	$0, 92(%rsp)
	jne	.L6228
	movq	$0, 44(%r9)
	movq	$0, 36(%r9)
.L6228:
	movq	$0, 52(%r9)
	jmp	.L6226
	.p2align 4,,10
.L6565:
	movq	176(%rax), %rdx
	movq	184(%rax), %rax
	movq	%rdx, 144(%rsp)
	movq	%rax, 152(%rsp)
	movl	%esi, %eax
	andl	$42991616, %eax
	cmpl	$1048576, %eax
	jne	.L6204
.L6763:
	leaq	520(%rbp), %rdx
	movl	$1, %r8d
	leaq	512(%rbp), %rcx
	call	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
	jmp	.L6205
	.p2align 4,,10
.L6784:
	movss	36(%r10), %xmm1
	movl	$1, %r12d
	movss	52(%r10), %xmm2
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
.L6356:
	subss	84(%r10), %xmm0
	ucomiss	%xmm0, %xmm2
	jbe	.L6360
	movl	%esi, %eax
	andl	$2056, %eax
	cmpl	$2048, %eax
	je	.L6362
.L6360:
	movb	$0, 120(%r10)
	pxor	%xmm0, %xmm0
.L6363:
	testb	%r12b, %r12b
	pxor	%xmm1, %xmm1
	je	.L6359
	movss	5200(%rbx), %xmm1
	jmp	.L6359
.L6283:
	movq	112(%rsp), %r11
	movss	.LC90(%rip), %xmm10
	movss	.LC17(%rip), %xmm7
	.p2align 4,,10
.L6285:
	movss	264(%rbx), %xmm1
	leaq	36(%r11), %rdx
	movss	268(%rbx), %xmm0
	leaq	264(%rbx), %rcx
	movq	80(%rsp), %r9
	leaq	164(%r11), %r8
	movaps	%xmm1, %xmm3
	subss	.LC272(%rip), %xmm3
	movss	%xmm3, 160(%rsp)
	movaps	%xmm0, %xmm3
	subss	.LC273(%rip), %xmm3
	movss	%xmm3, 164(%rsp)
	movss	.LC274(%rip), %xmm3
	addss	%xmm3, %xmm1
	addss	%xmm3, %xmm0
	movss	%xmm1, 168(%rsp)
	movss	%xmm0, 172(%rsp)
	call	_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect
	movq	112(%rsp), %r10
	movq	%rax, 20(%r11)
	cmpl	$-1, 164(%r10)
	jne	.L6741
	movss	268(%rbx), %xmm3
	movss	.LC170(%rip), %xmm1
	addss	%xmm1, %xmm3
	addss	264(%rbx), %xmm1
	movss	%xmm3, 24(%r10)
	movss	%xmm1, 20(%r10)
	jmp	.L6284
	.p2align 4,,10
.L6595:
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	jmp	.L6411
	.p2align 4,,10
.L6795:
	movl	156(%r9), %eax
	testl	%eax, %eax
	jle	.L6251
	cmpb	$0, 92(%rsp)
	jne	.L6251
.L6257:
	cmpb	$0, 160(%r9)
	movaps	%xmm15, %xmm0
	je	.L6261
	movss	48(%r9), %xmm0
	ucomiss	%xmm15, %xmm0
	jnb	.L6261
	movaps	%xmm15, %xmm0
.L6261:
	movss	%xmm0, 48(%r9)
	jmp	.L6260
	.p2align 4,,10
.L6740:
	movss	.LC90(%rip), %xmm10
	movss	.LC17(%rip), %xmm7
	jmp	.L6276
.L6727:
	movss	532(%rdx), %xmm0
	ucomiss	540(%rdx), %xmm0
	movss	5120(%rbx), %xmm0
	setnb	%cl
	orl	%ecx, %eax
	testb	%al, %al
	movb	%al, 139(%rdx)
	jne	.L6445
	jmp	.L6442
	.p2align 4,,10
.L6790:
	leaq	352(%r12), %rcx
	xorl	%edx, %edx
	call	_ZN8ImVectorIbE7reserveEi
	movq	112(%rsp), %r14
	movl	$0, 352(%r12)
	movl	372(%r14), %r11d
	testl	%r11d, %r11d
	jns	.L6461
	leaq	368(%r14), %rcx
	movq	%r14, %r12
	jmp	.L6462
	.p2align 4,,10
.L6461:
	movl	340(%r14), %eax
	leaq	336(%r14), %rcx
	movl	$0, 368(%r14)
	testl	%eax, %eax
	jns	.L6541
.L6465:
	xorl	%edx, %edx
	call	_ZN8ImVectorIfE7reserveEi
	movq	112(%rsp), %r13
	jmp	.L6397
	.p2align 4,,10
.L6746:
	leaq	.LC5(%rip), %rdx
	movl	$3883, %r8d
	leaq	.LC264(%rip), %rcx
	call	_assert
	jmp	.L6118
	.p2align 4,,10
.L6749:
	movq	432(%rsp), %rax
	movl	$712, %ecx
	movq	GImGui(%rip), %rdi
	movss	(%rax), %xmm7
	movss	4(%rax), %xmm6
	addl	$1, 844(%rdi)
	call	*232(%rdi)
	movq	416(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 160(%rsp)
	call	_ZN11ImGuiWindowC1EPKc
	movq	160(%rsp), %rdx
	testl	$256, %esi
	movl	%esi, 12(%rdx)
	je	.L6123
.L6129:
	movss	%xmm7, 44(%rdx)
	testb	$64, %sil
	movss	%xmm6, 48(%rdx)
	movq	44(%rdx), %rax
	movq	%rax, 36(%rdx)
	je	.L6131
	movabsq	$8589934594, %rax
	movb	$0, 160(%rdx)
	pxor	%xmm6, %xmm6
	movq	%rax, 152(%rdx)
.L6132:
	leaq	5976(%rdi), %r12
	testl	$8192, %esi
	jne	.L6800
	leaq	160(%rsp), %rax
	movq	%r12, %rcx
	movq	%rax, %rdx
	movq	%rax, 80(%rsp)
	call	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_
.L6145:
	movq	160(%rsp), %rax
	movb	$1, 99(%rsp)
	movq	%rax, 112(%rsp)
	jmp	.L6122
	.p2align 4,,10
.L6769:
	movq	$0, 84(%r9)
	pxor	%xmm0, %xmm0
	pxor	%xmm15, %xmm15
	jmp	.L6230
	.p2align 4,,10
.L6761:
	leaq	.LC5(%rip), %rdx
	movl	$4417, %r8d
	leaq	.LC279(%rip), %rcx
	call	_assert
	movq	112(%rsp), %rdx
	jmp	.L6439
	.p2align 4,,10
.L6791:
	leaq	.LC99(%rip), %rcx
	movl	$1648, %r8d
	leaq	.LC5(%rip), %rdx
	call	_assert
	movq	112(%rsp), %rcx
	jmp	.L6402
	.p2align 4,,10
.L6792:
	movq	$0, 600(%r12)
	movq	$0, 608(%r12)
	movq	$0, 616(%r12)
	movq	$0, 624(%r12)
	jmp	.L6403
	.p2align 4,,10
.L6718:
	movl	$2, 156(%rax)
	movb	$0, 160(%rax)
	jmp	.L6169
	.p2align 4,,10
.L6717:
	movb	$0, 160(%rax)
	movl	$2, %edx
	jmp	.L6173
	.p2align 4,,10
.L6511:
	movl	$2147483647, %edx
	jmp	.L6307
	.p2align 4,,10
.L6512:
	movl	$2147483647, %edx
	jmp	.L6308
	.p2align 4,,10
.L6786:
	movq	%r12, %rcx
	movl	$1, %edx
	call	_ZL9ScrollbarP11ImGuiWindowb
	movq	112(%rsp), %r12
	cmpb	$0, 121(%r12)
	je	.L6379
.L6787:
	movq	%r12, %rcx
	xorl	%edx, %edx
	call	_ZL9ScrollbarP11ImGuiWindowb
	movq	112(%rsp), %r12
	jmp	.L6379
	.p2align 4,,10
.L6785:
	movl	12(%r12), %eax
	pxor	%xmm0, %xmm0
	movss	32(%r12), %xmm3
	testb	$1, %al
	jne	.L6374
	movq	GImGui(%rip), %rdx
	movss	648(%r12), %xmm1
	movss	5160(%rdx), %xmm2
	mulss	5948(%rdx), %xmm1
	addss	%xmm2, %xmm2
	addss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
.L6374:
	addss	%xmm0, %xmm3
	testb	$4, %ah
	pxor	%xmm15, %xmm15
	movaps	%xmm3, %xmm12
	je	.L6375
	movq	GImGui(%rip), %rax
	movss	648(%r12), %xmm15
	movss	5160(%rax), %xmm1
	mulss	5948(%rax), %xmm15
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm15
.L6375:
	movss	28(%r12), %xmm14
	testl	%r14d, %r14d
	addss	%xmm12, %xmm15
	movss	44(%r12), %xmm4
	movq	656(%r12), %r10
	addss	%xmm14, %xmm4
	movd	%xmm4, %r15d
	jne	.L6726
	leaq	136(%rsp), %rdi
	leaq	128(%rsp), %r12
.L6376:
	movl	68(%rsp), %edx
	pxor	%xmm5, %xmm5
	testl	%edx, %edx
	je	.L6377
	movaps	%xmm11, %xmm5
.L6377:
	movl	$13, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	%r12, %rdx
	movq	%rdi, %r8
	movl	$3, 40(%rsp)
	movl	%eax, %r9d
	movss	%xmm5, 32(%rsp)
	movq	%r10, %rcx
	movl	%r15d, 136(%rsp)
	movss	%xmm15, 140(%rsp)
	movss	%xmm14, 128(%rsp)
	movss	%xmm12, 132(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movq	112(%rsp), %r12
	jmp	.L6373
	.p2align 4,,10
.L6789:
	movl	$6, %ecx
	movq	656(%r12), %r10
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	40(%r12), %xmm0
	leaq	128(%rsp), %r13
	movss	36(%r12), %xmm1
	movl	%eax, %r9d
	movq	%r13, %rdx
	movl	$0x3f800000, 48(%rsp)
	addss	%xmm15, %xmm0
	leaq	136(%rsp), %r12
	movl	$-1, 40(%rsp)
	addss	.LC18(%rip), %xmm0
	movq	%r10, %rcx
	movq	%r12, %r8
	movss	%xmm11, 32(%rsp)
	addss	%xmm5, %xmm1
	addss	.LC18(%rip), %xmm15
	addss	.LC18(%rip), %xmm1
	movss	%xmm0, 140(%rsp)
	addss	.LC18(%rip), %xmm5
	movss	%xmm15, 132(%rsp)
	movss	%xmm1, 136(%rsp)
	movss	%xmm5, 128(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movq	112(%rsp), %r8
	movl	$5, %ecx
	movq	656(%r8), %r10
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	32(%r8), %xmm0
	leaq	28(%r8), %rdx
	movl	%eax, %r9d
	movss	28(%r8), %xmm1
	addss	40(%r8), %xmm0
	movq	%r10, %rcx
	addss	36(%r8), %xmm1
	movss	%xmm11, 32(%rsp)
	movq	%r12, %r8
	movl	$0x3f800000, 48(%rsp)
	movl	$-1, 40(%rsp)
	movss	%xmm1, 136(%rsp)
	movss	%xmm0, 140(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movl	68(%rsp), %eax
	testl	%eax, %eax
	je	.L6386
.L6743:
	movq	112(%rsp), %r12
	movss	32(%r12), %xmm15
	movss	28(%r12), %xmm5
	jmp	.L6336
	.p2align 4,,10
.L6788:
	addss	36(%r12), %xmm5
	addss	40(%r12), %xmm15
	movq	656(%r12), %rcx
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm12
	subss	%xmm13, %xmm1
	movaps	%xmm15, %xmm0
	subss	132(%r12), %xmm0
	leaq	136(%rsp), %r12
	addq	$112, %rcx
	movq	%r12, %rdx
	movss	%xmm1, 136(%rsp)
	movss	%xmm0, 140(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	112(%rsp), %rax
	movaps	%xmm12, %xmm0
	movq	%r12, %rdx
	subss	132(%rax), %xmm0
	movq	656(%rax), %rcx
	movss	%xmm0, 136(%rsp)
	movaps	%xmm15, %xmm0
	subss	%xmm13, %xmm0
	addq	$112, %rcx
	movss	%xmm0, 140(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	112(%rsp), %rax
	xorl	%r9d, %r9d
	movq	%r12, %rdx
	movaps	%xmm12, %xmm5
	subss	%xmm11, %xmm15
	movaps	%xmm11, %xmm2
	subss	%xmm11, %xmm5
	movss	132(%rax), %xmm0
	movq	656(%rax), %rcx
	movl	$3, 32(%rsp)
	subss	%xmm0, %xmm5
	subss	%xmm0, %xmm15
	movss	%xmm5, 136(%rsp)
	movss	%xmm15, 140(%rsp)
	call	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	movq	112(%rsp), %rax
	movl	92(%rsp), %r9d
	movq	656(%rax), %r13
	movl	112(%r13), %r8d
	movq	%r13, %rcx
	movq	120(%r13), %rdx
	movl	$1, 32(%rsp)
	call	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	movl	116(%r13), %eax
	testl	%eax, %eax
	jns	.L6381
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	120(%r13), %rcx
	movq	%rax, %r12
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6384
	movslq	112(%r13), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%r13), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6384
	subl	$1, 844(%rax)
.L6384:
	call	*240(%rax)
	movq	%r12, 120(%r13)
	movl	$0, 116(%r13)
.L6381:
	movq	112(%rsp), %r12
	movl	$0, 112(%r13)
	movss	32(%r12), %xmm15
	movss	28(%r12), %xmm5
	jmp	.L6380
	.p2align 4,,10
.L6544:
	movss	.LC263(%rip), %xmm8
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	jmp	.L6416
	.p2align 4,,10
.L6330:
	cmpq	%r10, %rdx
	jne	.L6328
	movss	6384(%rbx), %xmm1
	movl	$42, %ecx
	call	_ZN5ImGui11GetColorU32Eif
	leaq	144(%rsp), %rdx
	movq	656(%r10), %rcx
	leaq	8(%rdx), %r8
	movl	%eax, %r9d
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movq	112(%rsp), %r10
	movzbl	139(%r10), %r12d
	movss	32(%r10), %xmm9
	movss	28(%r10), %xmm8
	jmp	.L6328
	.p2align 4,,10
.L6131:
	pxor	%xmm6, %xmm6
	ucomiss	36(%rdx), %xmm6
	movss	40(%rdx), %xmm0
	jnb	.L6801
	ucomiss	%xmm0, %xmm6
	movl	152(%rdx), %eax
	jnb	.L6802
.L6138:
	testl	%eax, %eax
	jg	.L6135
	movl	156(%rdx), %r9d
	testl	%r9d, %r9d
	setg	%al
	jmp	.L6137
.L6801:
	movl	$2, 152(%rdx)
	ucomiss	%xmm0, %xmm6
	jb	.L6135
	movl	$2, 156(%rdx)
.L6135:
	movl	$1, %eax
.L6137:
	movb	%al, 160(%rdx)
	jmp	.L6132
	.p2align 4,,10
.L6783:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movslq	6016(%rbx), %rax
	jmp	.L6149
	.p2align 4,,10
.L6793:
	movq	112(%rsp), %rax
	movss	.LC18(%rip), %xmm2
	movss	32(%rax), %xmm1
	addss	5160(%rbx), %xmm1
	movzbl	139(%rax), %edx
	movss	28(%rax), %xmm0
	addss	5156(%rbx), %xmm0
	movd	%xmm1, %ecx
	movq	%rcx, %r8
	xorl	$1, %edx
	salq	$32, %r8
	movd	%xmm0, %eax
	movzbl	%dl, %edx
	movl	%eax, %ecx
	orq	%r8, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	jmp	.L6418
	.p2align 4,,10
.L6800:
	movq	5984(%rdi), %rbp
	movslq	5976(%rdi), %rdx
	movq	%rdx, %rax
	leaq	0(%rbp,%rdx,8), %rdx
	cmpq	%rdx, %rbp
	jbe	.L6479
	leaq	.LC2(%rip), %rdx
	movl	$888, %r8d
	leaq	.LC210(%rip), %rcx
	call	_assert
	movq	5984(%rdi), %rdx
	movl	5976(%rdi), %eax
	subq	%rdx, %rbp
	movq	%rbp, %r14
	movq	%rbp, %r13
	movq	%rdx, %rbp
	sarq	$3, %r14
.L6141:
	cmpl	%eax, 5980(%rdi)
	jne	.L6142
	leal	(%rax,%rax), %edx
	testl	%eax, %eax
	movl	$4, %eax
	cmove	%eax, %edx
	movq	%r12, %rcx
	call	_ZN8ImVectorIP11ImGuiWindowE7reserveEi
	movl	5976(%rdi), %eax
	movq	5984(%rdi), %rbp
.L6142:
	leaq	0(%rbp,%r13), %rdx
	movslq	%eax, %r8
	cmpq	%r14, %r8
	jle	.L6144
	leaq	8(%rbp,%r14,8), %rcx
	subq	%r14, %r8
	salq	$3, %r8
	call	memmove
	movq	5984(%rdi), %rdx
	movl	5976(%rdi), %eax
	addq	%r13, %rdx
.L6144:
	movq	160(%rsp), %rcx
	addl	$1, %eax
	movq	%rcx, (%rdx)
	movl	%eax, 5976(%rdi)
	leaq	160(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.L6145
	.p2align 4,,10
.L6184:
	movq	%r15, %r13
	movl	%edi, %r14d
	jmp	.L6187
	.p2align 4,,10
.L6419:
	movss	%xmm0, 172(%rsp)
	movaps	%xmm2, %xmm5
	testl	%r12d, %r12d
	subss	%xmm1, %xmm5
	movss	%xmm5, 168(%rsp)
	je	.L6470
	movaps	%xmm1, %xmm0
	jmp	.L6421
.L6355:
	movb	$1, 120(%r10)
	movss	5200(%rbx), %xmm0
	pxor	%xmm1, %xmm1
	jmp	.L6359
.L6794:
	movss	%xmm14, 44(%r9)
	movss	%xmm15, 48(%r9)
	jmp	.L6251
.L6279:
	movss	28(%rbp), %xmm1
	movss	36(%rbp), %xmm0
	movss	.LC90(%rip), %xmm10
	addss	%xmm1, %xmm0
	addss	%xmm3, %xmm1
	subss	%xmm3, %xmm0
	subss	124(%rbp), %xmm0
	movss	%xmm1, 160(%rsp)
	movl	$0xff7fffff, 164(%rsp)
	movss	%xmm10, 172(%rsp)
	movss	%xmm0, 168(%rsp)
	jmp	.L6282
.L6123:
	movq	416(%rsp), %rcx
	movaps	.LC267(%rip), %xmm0
	movlps	%xmm0, 20(%rdx)
	movhps	%xmm0, 28(%rdx)
	call	_ZL18FindWindowSettingsPKc
	testq	%rax, %rax
	je	.L6803
	movq	160(%rsp), %rdx
	andl	$-5, 172(%rdx)
	andl	$-5, 176(%rdx)
	andl	$-5, 180(%rdx)
.L6126:
	movss	12(%rax), %xmm0
	ucomiss	.LC90(%rip), %xmm0
	jp	.L6553
	je	.L6127
.L6553:
	movq	12(%rax), %rcx
	pxor	%xmm1, %xmm1
	movq	%rcx, 20(%rdx)
	cvttss2si	24(%rdx), %ecx
	cvtsi2ss	%ecx, %xmm1
	cvttss2si	%xmm0, %ecx
	pxor	%xmm0, %xmm0
	movss	%xmm1, 32(%rdx)
	cvtsi2ss	%ecx, %xmm0
	movzbl	28(%rax), %ecx
	movss	%xmm0, 28(%rdx)
	movb	%cl, 139(%rdx)
.L6127:
	movss	20(%rax), %xmm1
	movss	24(%rax), %xmm2
	movaps	%xmm1, %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm2, %xmm3
	mulss	%xmm2, %xmm3
	addss	%xmm3, %xmm0
	ucomiss	.LC268(%rip), %xmm0
	jbe	.L6129
	testb	$2, %sil
	jne	.L6129
	movaps	%xmm2, %xmm6
	movaps	%xmm1, %xmm7
	jmp	.L6129
.L6777:
	movl	156(%r10), %r12d
	testl	%r12d, %r12d
	jg	.L6287
	movss	8(%rbx), %xmm4
	ucomiss	%xmm6, %xmm4
	jbe	.L6287
	movss	12(%rbx), %xmm4
	ucomiss	%xmm6, %xmm4
	jbe	.L6287
	movss	5236(%rbx), %xmm9
	movss	5228(%rbx), %xmm4
	ucomiss	%xmm9, %xmm4
	jb	.L6292
	movaps	%xmm4, %xmm9
.L6292:
	movss	5232(%rbx), %xmm8
	movss	5224(%rbx), %xmm4
	ucomiss	%xmm8, %xmm4
	jb	.L6294
	movaps	%xmm4, %xmm8
.L6294:
	movss	40(%r10), %xmm4
	addss	%xmm0, %xmm1
	addss	%xmm4, %xmm3
	ucomiss	%xmm9, %xmm3
	jnb	.L6296
	movaps	%xmm9, %xmm3
.L6296:
	ucomiss	%xmm8, %xmm1
	jnb	.L6298
	movaps	%xmm8, %xmm1
.L6298:
	movaps	%xmm3, %xmm5
	subss	%xmm4, %xmm5
	movaps	%xmm1, %xmm4
	subss	%xmm0, %xmm4
	movss	%xmm5, 24(%r10)
	movss	%xmm4, 20(%r10)
	movss	12(%rbx), %xmm3
	movss	8(%rbx), %xmm1
	subss	%xmm9, %xmm3
	subss	%xmm8, %xmm1
	minss	%xmm3, %xmm5
	minss	%xmm1, %xmm4
	movaps	%xmm5, %xmm3
	movss	%xmm5, 24(%r10)
	movaps	%xmm4, %xmm1
	movss	%xmm4, 20(%r10)
	jmp	.L6287
.L6798:
	addss	5200(%rbx), %xmm1
	jmp	.L6241
.L6479:
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	jmp	.L6141
.L6770:
	movaps	%xmm14, %xmm0
	jmp	.L6248
.L6771:
	movaps	%xmm15, %xmm0
	jmp	.L6252
.L6776:
	movq	GImGui(%rip), %rax
	movss	648(%rbp), %xmm1
	movss	5160(%rax), %xmm3
	mulss	5948(%rax), %xmm1
	addss	%xmm3, %xmm3
	addss	%xmm3, %xmm1
	jmp	.L6281
.L6781:
	testl	%r13d, %r13d
	jne	.L6339
	addss	40(%r10), %xmm9
	leaq	.LC277(%rip), %rdx
	movq	%r10, %rcx
	movss	.LC276(%rip), %xmm0
	addss	36(%r10), %xmm8
	mulss	%xmm13, %xmm0
	movaps	%xmm9, %xmm4
	movss	%xmm9, 172(%rsp)
	movss	%xmm8, 168(%rsp)
	movaps	%xmm8, %xmm1
	subss	%xmm0, %xmm1
	subss	%xmm0, %xmm4
	movss	%xmm1, 160(%rsp)
	movss	%xmm4, 164(%rsp)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movq	80(%rsp), %rcx
	movl	$32, 32(%rsp)
	leaq	136(%rsp), %r9
	leaq	128(%rsp), %r8
	movl	%eax, %edx
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 136(%rsp)
	jne	.L6340
	cmpb	$0, 128(%rsp)
	movq	112(%rsp), %r10
	je	.L6341
	movl	$32, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movl	$6, 6544(%rbx)
	movl	%eax, 92(%rsp)
.L6342:
	movq	44(%r10), %rax
	pxor	%xmm10, %xmm10
	testb	$1, 12(%r10)
	movss	32(%r10), %xmm9
	movq	%rax, 36(%r10)
	jne	.L6348
	movq	GImGui(%rip), %rax
	movss	648(%r10), %xmm10
	movss	5160(%rax), %xmm0
	mulss	5948(%rax), %xmm10
	addss	%xmm0, %xmm0
	addss	%xmm0, %xmm10
.L6348:
	movss	28(%r10), %xmm8
	addss	%xmm9, %xmm10
	movss	44(%r10), %xmm4
	addss	%xmm8, %xmm4
	movss	%xmm4, 88(%rsp)
	jmp	.L6339
.L6802:
	movl	$2, 156(%rdx)
	jmp	.L6138
.L6803:
	movq	416(%rsp), %rcx
	call	_ZL17AddWindowSettingsPKc
	movq	160(%rsp), %rdx
	jmp	.L6126
.L6545:
	movss	5944(%rbx), %xmm5
	movaps	%xmm1, %xmm0
	addss	%xmm1, %xmm5
	jmp	.L6420
.L6765:
	movq	80(%rsp), %rcx
	movl	$1, %r8d
	leaq	8(%rcx), %rdx
	call	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	testb	%al, %al
	je	.L6214
	cmpb	$0, 944(%rbx)
	je	.L6214
	xorb	$1, 139(%r9)
	testl	$256, %esi
	jne	.L6212
	movq	GImGui(%rip), %rax
	ucomiss	6128(%rax), %xmm6
	jb	.L6212
	movss	20(%rax), %xmm0
	movss	%xmm0, 6128(%rax)
.L6212:
	movq	%r10, %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movq	112(%rsp), %r9
	jmp	.L6214
.L6775:
	leaq	.LC5(%rip), %rdx
	movl	$4130, %r8d
	leaq	.LC271(%rip), %rcx
	call	_assert
	movq	112(%rsp), %r10
	jmp	.L6278
.L6386:
	movq	112(%rsp), %rax
	movl	$5, %ecx
	movq	656(%rax), %r10
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movaps	%xmm10, %xmm0
	movq	%r12, %r8
	movq	%r13, %rdx
	movss	88(%rsp), %xmm12
	addss	%xmm6, %xmm0
	movl	%eax, %r9d
	movl	$0x3f800000, 32(%rsp)
	subss	.LC18(%rip), %xmm12
	movss	%xmm10, 140(%rsp)
	addss	.LC18(%rip), %xmm8
	movq	%r10, %rcx
	movss	%xmm0, 132(%rsp)
	movss	%xmm12, 136(%rsp)
	movss	%xmm8, 128(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	jmp	.L6743
.L6726:
	leaq	136(%rsp), %rdi
	movl	$5, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	leaq	128(%rsp), %r12
	movq	%rdi, %r8
	movl	$0x3f800000, 32(%rsp)
	movl	%eax, %r9d
	movq	%r10, %rcx
	movq	%r12, %rdx
	movl	%r15d, 136(%rsp)
	movss	%xmm15, 140(%rsp)
	movss	%xmm14, 128(%rsp)
	movss	%xmm15, 132(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	movq	112(%rsp), %rax
	movq	656(%rax), %r10
	jmp	.L6376
.L6362:
	movb	$1, 120(%r10)
	movss	5200(%rbx), %xmm0
	jmp	.L6363
.L6340:
	movl	$33, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	112(%rsp), %rcx
	movl	$6, 6544(%rbx)
	cmpq	6040(%rbx), %rcx
	movl	%eax, 92(%rsp)
	je	.L6804
.L6343:
	movss	268(%rbx), %xmm0
	subss	6084(%rbx), %xmm0
	movss	172(%rsp), %xmm1
	subss	164(%rsp), %xmm1
	movaps	%xmm0, %xmm2
	movss	264(%rbx), %xmm0
	subss	6080(%rbx), %xmm0
	addss	%xmm1, %xmm2
	movss	168(%rsp), %xmm1
	subss	160(%rsp), %xmm1
	subss	32(%rcx), %xmm2
	addss	%xmm1, %xmm0
	subss	28(%rcx), %xmm0
	movd	%xmm2, %eax
	salq	$32, %rax
	movd	%xmm0, %edx
	movl	%edx, %edx
	orq	%rax, %rdx
	call	_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2
	testl	$256, %esi
	je	.L6346
	movq	112(%rsp), %r10
	jmp	.L6342
.L6341:
	movl	$31, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movl	%eax, 92(%rsp)
	jmp	.L6342
.L6346:
	movq	GImGui(%rip), %rax
	movq	112(%rsp), %r10
	ucomiss	6128(%rax), %xmm6
	jb	.L6342
	movss	20(%rax), %xmm0
	movss	%xmm0, 6128(%rax)
	jmp	.L6342
.L6804:
	cmpb	$0, 944(%rbx)
	je	.L6343
	movd	%xmm14, %edx
	movd	%xmm15, %eax
	salq	$32, %rax
	movl	%edx, %edx
	orq	%rax, %rdx
	call	_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2
	testl	$256, %esi
	movq	GImGui(%rip), %rax
	jne	.L6344
	ucomiss	6128(%rax), %xmm6
	jb	.L6344
	movss	20(%rax), %xmm0
	movss	%xmm0, 6128(%rax)
.L6344:
	movl	$0, 6068(%rax)
	movq	112(%rsp), %r10
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	jmp	.L6342
.L6757:
	xorl	%r13d, %r13d
	jmp	.L6187
.L6541:
	movq	%r14, %r13
	jmp	.L6397
.L6762:
	cmpl	$0, 156(%rdx)
	jg	.L6735
	jmp	.L6475
	.seh_endproc
	.section .rdata,"dr"
.LC280:
	.ascii "%s.%s.%08X\0"
.LC281:
	.ascii "%s.%08X\0"
	.text
	.p2align 4,,15
	.def	_ZL12BeginChildExPKcjRK6ImVec2bi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL12BeginChildExPKcjRK6ImVec2bi
_ZL12BeginChildExPKcjRK6ImVec2bi:
.LFB756:
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
	subq	$400, %rsp
	.seh_stackalloc	400
	movaps	%xmm6, 320(%rsp)
	.seh_savexmm	%xmm6, 320
	movaps	%xmm7, 336(%rsp)
	.seh_savexmm	%xmm7, 336
	movaps	%xmm8, 352(%rsp)
	.seh_savexmm	%xmm8, 352
	movaps	%xmm9, 368(%rsp)
	.seh_savexmm	%xmm9, 368
	movaps	%xmm10, 384(%rsp)
	.seh_savexmm	%xmm10, 384
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	%edx, %ebp
	movq	6008(%rax), %rdx
	movq	%rcx, %rdi
	movq	%r8, %r12
	movl	%r9d, %esi
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	cmpl	$1, 444(%rbx)
	movss	196(%rbx), %xmm7
	movss	32(%rbx), %xmm9
	movss	192(%rbx), %xmm8
	movss	28(%rbx), %xmm10
	movss	80(%rbx), %xmm6
	je	.L6833
	movl	440(%rbx), %eax
	leal	1(%rax), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	subss	84(%rbx), %xmm0
.L6807:
	cvttss2si	4(%r12), %eax
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	cvtsi2ss	%eax, %xmm1
	cvttss2si	(%r12), %eax
	movss	%xmm1, 60(%rsp)
	cvtsi2ss	%eax, %xmm2
	movl	$1048835, %eax
	ucomiss	%xmm2, %xmm3
	movss	%xmm2, 56(%rsp)
	jnb	.L6834
.L6808:
	ucomiss	%xmm1, %xmm3
	jnb	.L6835
.L6814:
	movq	(%rbx), %r9
	leaq	64(%rsp), %r12
	movl	%eax, %edx
	orb	$-128, %dl
	testb	%sil, %sil
	cmovne	%edx, %eax
	orl	480(%rsp), %eax
	testq	%rdi, %rdi
	movl	%eax, %esi
	je	.L6821
	movl	%ebp, 40(%rsp)
	leaq	.LC280(%rip), %r8
	movl	$256, %edx
	movq	%r12, %rcx
	movq	%rdi, 32(%rsp)
	call	_Z14ImFormatStringPciPKcz
.L6822:
	movl	%esi, 32(%rsp)
	leaq	56(%rsp), %r8
	xorl	%edx, %edx
	movq	%r12, %rcx
	movss	.LC1(%rip), %xmm3
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	testb	$-128, 12(%rbx)
	jne	.L6805
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rcx
	movb	$1, 138(%rcx)
	movq	6008(%rdx), %rdx
	andl	$-129, 12(%rdx)
.L6805:
	movaps	320(%rsp), %xmm6
	movaps	336(%rsp), %xmm7
	movaps	352(%rsp), %xmm8
	movaps	368(%rsp), %xmm9
	movaps	384(%rsp), %xmm10
	addq	$400, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L6833:
	movss	76(%rbx), %xmm0
	jmp	.L6807
	.p2align 4,,10
.L6835:
	ucomiss	%xmm3, %xmm1
	jp	.L6816
	movl	%eax, %edx
	orl	$4194304, %edx
	ucomiss	%xmm3, %xmm1
	cmove	%edx, %eax
.L6816:
	subss	%xmm9, %xmm7
	subss	%xmm7, %xmm6
	ucomiss	.LC29(%rip), %xmm6
	jb	.L6836
.L6818:
	andps	.LC87(%rip), %xmm1
	subss	%xmm1, %xmm6
	movss	%xmm6, 60(%rsp)
	jmp	.L6814
	.p2align 4,,10
.L6834:
	ucomiss	%xmm3, %xmm2
	jp	.L6829
	movl	$3145987, %eax
	jne	.L6829
.L6810:
	subss	%xmm10, %xmm8
	subss	%xmm8, %xmm0
	ucomiss	.LC29(%rip), %xmm0
	jb	.L6837
.L6812:
	andps	.LC87(%rip), %xmm2
	subss	%xmm2, %xmm0
	movss	%xmm0, 56(%rsp)
	jmp	.L6808
	.p2align 4,,10
.L6821:
	movl	%ebp, 32(%rsp)
	leaq	.LC281(%rip), %r8
	movl	$256, %edx
	movq	%r12, %rcx
	call	_Z14ImFormatStringPciPKcz
	jmp	.L6822
	.p2align 4,,10
.L6837:
	movss	.LC29(%rip), %xmm0
	jmp	.L6812
	.p2align 4,,10
.L6836:
	movss	.LC29(%rip), %xmm6
	jmp	.L6818
	.p2align 4,,10
.L6829:
	movl	$1048835, %eax
	jmp	.L6810
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	.def	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
_ZN5ImGui10BeginChildEPKcRK6ImVec2bi:
.LFB757:
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
	movq	GImGui(%rip), %rax
	movq	%rdx, %rsi
	movq	6008(%rax), %rdx
	movq	%rcx, %rbx
	movl	%r8d, %edi
	movl	%r9d, %ebp
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rcx
	movq	%rbx, %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%ebp, 32(%rsp)
	movzbl	%dil, %r9d
	movq	%rsi, %r8
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZL12BeginChildExPKcjRK6ImVec2bi
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10BeginChildEjRK6ImVec2bi
	.def	_ZN5ImGui10BeginChildEjRK6ImVec2bi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10BeginChildEjRK6ImVec2bi
_ZN5ImGui10BeginChildEjRK6ImVec2bi:
.LFB758:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	%r9d, 32(%rsp)
	movzbl	%r8b, %r9d
	movq	%rdx, %r8
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	call	_ZL12BeginChildExPKcjRK6ImVec2bi
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15BeginChildFrameEjRK6ImVec2i
	.def	_ZN5ImGui15BeginChildFrameEjRK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15BeginChildFrameEjRK6ImVec2i
_ZN5ImGui15BeginChildFrameEjRK6ImVec2i:
.LFB760:
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
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movl	%ecx, %ebp
	movq	%rdx, %r12
	movl	$3, %ecx
	leaq	5360(%rsi), %rdx
	movl	%r8d, %edi
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movq	GImGui(%rip), %rbx
	movss	5164(%rsi), %xmm6
	movslq	6152(%rbx), %rax
	cmpl	6156(%rbx), %eax
	movss	5152(%rbx), %xmm7
	je	.L6841
	movq	6160(%rbx), %r14
.L6842:
	leal	1(%rax), %edx
	movl	$1, %ecx
	orl	$65540, %edi
	leaq	(%rax,%rax,2), %rax
	movl	%edx, 6152(%rbx)
	leaq	(%r14,%rax,4), %rax
	movss	%xmm7, 4(%rax)
	leaq	5156(%rsi), %rdx
	movl	$4, (%rax)
	movss	%xmm6, 5152(%rbx)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movq	6008(%rsi), %rax
	movl	%ebp, %edx
	xorl	%ecx, %ecx
	movq	%r12, %r8
	movl	12(%rax), %r9d
	movl	%edi, 32(%rsp)
	sarl	$7, %r9d
	andl	$1, %r9d
	call	_ZL12BeginChildExPKcjRK6ImVec2bi
	nop
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L6841:
	leal	1(%rax), %r13d
	testl	%eax, %eax
	movl	$8, %edx
	je	.L6843
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L6843:
	cmpl	%edx, %r13d
	cmovl	%edx, %r13d
	addl	$1, 844(%rbx)
	movslq	%r13d, %rax
	leaq	(%rax,%rax,2), %rcx
	salq	$2, %rcx
	call	*232(%rbx)
	movq	6160(%rbx), %rcx
	movq	%rax, %r14
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6846
	movslq	6152(%rbx), %rax
	movq	%rcx, %rdx
	movq	%r14, %rcx
	leaq	(%rax,%rax,2), %r8
	salq	$2, %r8
	call	memcpy
	movq	6160(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6846
	subl	$1, 844(%rax)
.L6846:
	call	*240(%rax)
	movq	%r14, 6160(%rbx)
	movslq	6152(%rbx), %rax
	movl	%r13d, 6156(%rbx)
	jmp	.L6842
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC282:
	.ascii "!((flags & ImGuiInputTextFlags_CallbackHistory) && (flags & ImGuiInputTextFlags_Multiline))\0"
	.align 8
.LC283:
	.ascii "!((flags & ImGuiInputTextFlags_CallbackCompletion) && (flags & ImGuiInputTextFlags_AllowTabInput))\0"
	.align 8
.LC284:
	.ascii "password_font->Glyphs.empty() && password_font->IndexXAdvance.empty() && password_font->IndexLookup.empty()\0"
.LC285:
	.ascii "callback != __null\0"
	.align 8
.LC286:
	.ascii "callback_data.Buf == edit_state.TempTextBuffer.Data\0"
	.align 8
.LC287:
	.ascii "callback_data.BufSize == edit_state.BufSizeA\0"
.LC288:
	.ascii "callback_data.Flags == flags\0"
	.align 8
.LC289:
	.ascii "callback_data.BufTextLen == (int)strlen(callback_data.Buf)\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	.def	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv:
.LFB1010:
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
	movaps	%xmm6, 304(%rsp)
	.seh_savexmm	%xmm6, 304
	movaps	%xmm7, 320(%rsp)
	.seh_savexmm	%xmm7, 320
	movaps	%xmm8, 336(%rsp)
	.seh_savexmm	%xmm8, 336
	movaps	%xmm9, 352(%rsp)
	.seh_savexmm	%xmm9, 352
	movaps	%xmm10, 368(%rsp)
	.seh_savexmm	%xmm10, 368
	movaps	%xmm11, 384(%rsp)
	.seh_savexmm	%xmm11, 384
	movaps	%xmm12, 400(%rsp)
	.seh_savexmm	%xmm12, 400
	movaps	%xmm13, 416(%rsp)
	.seh_savexmm	%xmm13, 416
	movaps	%xmm14, 432(%rsp)
	.seh_savexmm	%xmm14, 432
	movaps	%xmm15, 448(%rsp)
	.seh_savexmm	%xmm15, 448
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rdx, 552(%rsp)
	movq	6008(%rax), %rdx
	movslq	%r8d, %rbp
	movq	%r9, %rdi
	movq	%rcx, 544(%rsp)
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	jne	.L6861
	movl	576(%rsp), %eax
	andl	$1048704, %eax
	cmpl	$1048704, %eax
	je	.L7421
.L6853:
	movl	576(%rsp), %eax
	andl	$1088, %eax
	cmpl	$1088, %eax
	je	.L7422
.L6854:
	movl	576(%rsp), %esi
	movq	GImGui(%rip), %r13
	andl	$1048576, %esi
	jne	.L7423
	movq	544(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movq	544(%rsp), %rcx
	movl	$1, %r8d
	xorl	%edx, %edx
	movss	.LC1(%rip), %xmm3
	movl	%eax, 172(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movl	%eax, 92(%rsp)
	shrq	$32, %rax
	movd	%eax, %xmm2
.L7107:
	movss	5160(%r13), %xmm0
	pxor	%xmm7, %xmm7
	addss	%xmm0, %xmm0
	addss	%xmm0, %xmm2
	movss	%xmm2, 96(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	movq	(%rdi), %rcx
	movss	96(%rsp), %xmm2
	movaps	%xmm0, %xmm1
	call	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	movss	92(%rsp), %xmm3
	pxor	%xmm0, %xmm0
	movd	%eax, %xmm14
	movss	196(%rbx), %xmm4
	shrq	$32, %rax
	movss	192(%rbx), %xmm5
	movd	%eax, %xmm1
	ucomiss	%xmm7, %xmm3
	movd	%eax, %xmm13
	movaps	%xmm14, %xmm2
	movq	192(%rbx), %rax
	addss	%xmm4, %xmm1
	addss	%xmm5, %xmm2
	movss	%xmm1, 204(%rsp)
	movq	%rax, 192(%rsp)
	movss	%xmm2, 200(%rsp)
	jbe	.L6856
	addss	5176(%r13), %xmm3
	movaps	%xmm3, %xmm0
.L6856:
	movaps	%xmm1, %xmm3
	movq	192(%rsp), %rax
	addss	%xmm2, %xmm0
	testl	%esi, %esi
	addss	%xmm7, %xmm3
	movss	%xmm0, 216(%rsp)
	movq	%rax, 208(%rsp)
	movss	%xmm3, 220(%rsp)
	je	.L6858
	movl	172(%rsp), %ecx
	subss	%xmm5, %xmm2
	xorl	%r8d, %r8d
	subss	%xmm4, %xmm1
	leaq	240(%rsp), %rax
	movq	%rax, %rdx
	movq	%rax, 112(%rsp)
	movss	%xmm2, 240(%rsp)
	movss	%xmm1, 244(%rsp)
	call	_ZN5ImGui15BeginChildFrameEjRK6ImVec2i
	testb	%al, %al
	movl	%eax, %r12d
	je	.L7424
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	subss	124(%rax), %xmm14
	movq	%rax, 104(%rsp)
.L6860:
	movl	576(%rsp), %eax
	andl	$32768, %eax
	movl	%eax, 128(%rsp)
	jne	.L7425
.L6862:
	xorl	%r8d, %r8d
	movl	172(%rsp), %eax
	movq	%rbx, %rcx
	testl	$1088, 576(%rsp)
	sete	%r8b
	xorl	%edx, %edx
	cmpl	%eax, 6068(%r13)
	sete	%dl
	call	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb
	testb	%al, %al
	movl	%eax, %r15d
	je	.L7142
	movl	688(%rbx), %eax
	movl	$0, %edi
	cmpl	696(%rbx), %eax
	cmovne	%r15d, %edi
	sete	96(%rsp)
	movb	%dil, 120(%rsp)
.L6865:
	movl	172(%rsp), %r14d
	leaq	192(%rsp), %rcx
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	movl	%r14d, %edx
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	movl	%eax, %r12d
	je	.L6866
	movq	GImGui(%rip), %rax
	movl	%r14d, 6056(%rax)
	movb	$0, 6060(%rax)
	movzbl	876(%r13), %edi
	movl	$1, 6544(%r13)
	orl	%edi, %r15d
.L6866:
	testl	%esi, %esi
	movl	6068(%r13), %edx
	je	.L6867
	testl	%edx, %edx
	jne	.L6867
	cmpl	6912(%r13), %r14d
	je	.L7426
	.p2align 4,,10
.L6867:
	cmpl	%r14d, %edx
	je	.L6869
	movl	576(%rsp), %eax
	shrl	$4, %eax
	andl	$1, %eax
	testb	%r15b, %r15b
	movb	%al, 124(%rsp)
	je	.L6870
	movl	6972(%r13), %eax
	leal	1(%rbp), %r15d
	movl	%eax, 132(%rsp)
	movl	6924(%r13), %eax
	cmpl	%eax, %r15d
	jle	.L6871
	testl	%eax, %eax
	movl	$8, %r14d
	je	.L6872
	movl	%eax, %r11d
	shrl	$31, %r11d
	addl	%eax, %r11d
	sarl	%r11d
	leal	(%r11,%rax), %r14d
.L6872:
	cmpl	%r14d, %r15d
	jl	.L7427
	movl	%r15d, %r14d
.L6873:
	movq	GImGui(%rip), %rax
	movslq	%r14d, %rcx
	addq	%rcx, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	6928(%r13), %rcx
	movq	%rax, %r10
	movq	%rax, 136(%rsp)
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6876
	movslq	6920(%r13), %r8
	movq	%rcx, %rdx
	movq	%r10, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	6928(%r13), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6876
	subl	$1, 844(%rax)
.L6876:
	call	*240(%rax)
	movq	136(%rsp), %rax
	movl	%r14d, 6924(%r13)
	movq	%rax, 6928(%r13)
.L6871:
	movl	%r15d, 6920(%r13)
	movl	%r15d, %edx
	leaq	6936(%r13), %rcx
	call	_ZN8ImVectorIcE6resizeEi
	movslq	6936(%r13), %r15
	testl	%r15d, %r15d
	jle	.L6877
	movq	6944(%r13), %r9
	movq	%r15, %r8
	movq	552(%rsp), %rdx
	movq	%r9, %rcx
	call	strncpy
	movb	$0, -1(%rax,%r15)
.L6877:
	movl	6920(%r13), %edx
	movq	$0, 240(%rsp)
	movq	6928(%r13), %rcx
	movq	112(%rsp), %r9
	movq	552(%rsp), %r8
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.150
	movq	240(%rsp), %rdx
	movl	$0xbe99999a, 10204(%r13)
	subq	552(%rsp), %rdx
	movl	%eax, 6972(%r13)
	movl	%edx, 6968(%r13)
	movl	172(%rsp), %edx
	cmpl	%edx, 6912(%r13)
	jne	.L6878
	cmpl	132(%rsp), %eax
	je	.L7428
.L6878:
	testl	%esi, %esi
	movabsq	$281193501740433408, %rax
	movl	%edx, 6912(%r13)
	sete	%r15b
	movq	%rax, 10194(%r13)
	movzbl	124(%rsp), %eax
	movb	%r15b, 7000(%r13)
	andb	96(%rsp), %r15b
	movl	$0x00000000, 7004(%r13)
	movq	$0, 6980(%r13)
	movq	$0, 6988(%r13)
	cmovne	%r15d, %eax
	movl	$65536, 6996(%r13)
	movl	%eax, %r15d
.L6879:
	testl	$8192, 576(%rsp)
	je	.L6880
	movb	$1, 6996(%r13)
.L6880:
	testl	%esi, %esi
	jne	.L7126
	cmpb	$0, 120(%rsp)
	jne	.L7147
	testb	%dil, %dil
	je	.L7126
	movzbl	285(%r13), %eax
	testb	%al, %al
	cmovne	%eax, %r15d
	.p2align 4,,10
.L7126:
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movl	%edx, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	je	.L6882
	movb	$1, 6076(%rax)
.L6882:
	movq	%rbx, 6088(%rax)
	movq	%rbx, %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	6068(%r13), %eax
	movl	172(%rsp), %r14d
.L6883:
	movl	576(%rsp), %edi
	andl	$16384, %edi
	cmpl	%r14d, %eax
	movl	%edi, 120(%rsp)
	jne	.L6970
.L6885:
	movl	120(%rsp), %ebx
	testl	%ebx, %ebx
	je	.L6887
	cmpb	$0, 6077(%r13)
	je	.L7429
.L6887:
	movzbl	272(%r13), %eax
	movl	%ebp, 6976(%r13)
	movl	%eax, %edx
	xorl	$1, %edx
	testl	%esi, %esi
	movb	%dl, 6078(%r13)
	je	.L6888
	movq	104(%rsp), %rdi
	movss	268(%r13), %xmm11
	subss	196(%rdi), %xmm11
	subss	5160(%r13), %xmm11
.L6889:
	leaq	6912(%r13), %rdi
	testb	%r15b, %r15b
	movq	%rdi, 96(%rsp)
	jne	.L6890
	cmpb	$1, 192(%r13)
	je	.L6891
	testb	%r12b, %r12b
	je	.L6892
	cmpb	$0, 944(%r13)
	jne	.L6890
.L6892:
	cmpb	$0, 876(%r13)
	movss	264(%r13), %xmm0
	subss	192(%rsp), %xmm0
	subss	5156(%r13), %xmm0
	movss	6980(%r13), %xmm1
	movzbl	10209(%r13), %edx
	addss	%xmm0, %xmm1
	je	.L6895
	testb	%dl, %dl
	je	.L7430
	testb	%al, %al
	jne	.L6900
.L6897:
	testb	%dl, %dl
	je	.L6900
.L7128:
	movb	$0, 10209(%r13)
.L6900:
	movzwl	802(%r13), %eax
	testw	%ax, %ax
	je	.L6902
	cmpb	$0, 285(%r13)
	jne	.L7431
.L6903:
	movl	120(%rsp), %r10d
	testl	%r10d, %r10d
	jne	.L6904
	movl	576(%rsp), %r14d
	leaq	6984(%r13), %rdi
	movq	112(%rsp), %r15
	leaq	804(%r13), %r12
	movq	%rdi, %rdx
	movss	.LC180(%rip), %xmm6
	leaq	836(%r13), %rbx
	movq	%r12, %rdi
	movq	%rdx, %r12
	.p2align 4,,10
.L6905:
	movq	592(%rsp), %r9
	movl	%r14d, %edx
	movq	%r15, %rcx
	movl	%eax, 240(%rsp)
	movq	584(%rsp), %r8
	call	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	je	.L6907
	movl	240(%rsp), %r8d
	movq	%r12, %rdx
	movq	96(%rsp), %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%r13)
	movss	%xmm6, 10204(%r13)
.L6907:
	cmpq	%rbx, %rdi
	je	.L6904
	addq	$2, %rdi
	movzwl	-2(%rdi), %eax
	testw	%ax, %ax
	jne	.L6905
	jmp	.L6904
	.p2align 4,,10
.L6858:
	subss	212(%rsp), %xmm3
	leaq	240(%rsp), %rax
	subss	208(%rsp), %xmm0
	movq	%rax, %rcx
	movq	%rax, 112(%rsp)
	movss	5160(%r13), %xmm1
	movss	%xmm3, 244(%rsp)
	movss	%xmm0, 240(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	172(%rsp), %rdx
	leaq	208(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	jne	.L7432
.L6861:
	xorl	%r12d, %r12d
.L6850:
	movaps	304(%rsp), %xmm6
	movl	%r12d, %eax
	movaps	320(%rsp), %xmm7
	movaps	336(%rsp), %xmm8
	movaps	352(%rsp), %xmm9
	movaps	368(%rsp), %xmm10
	movaps	384(%rsp), %xmm11
	movaps	400(%rsp), %xmm12
	movaps	416(%rsp), %xmm13
	movaps	432(%rsp), %xmm14
	movaps	448(%rsp), %xmm15
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
	.p2align 4,,10
.L7423:
	call	_ZN5ImGui10BeginGroupEv
	movq	544(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movq	544(%rsp), %rcx
	movl	$1, %r8d
	xorl	%edx, %edx
	movss	.LC1(%rip), %xmm3
	movl	%eax, 172(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	.LC273(%rip), %xmm2
	movl	%eax, 92(%rsp)
	movq	GImGui(%rip), %rax
	mulss	5944(%rax), %xmm2
	jmp	.L7107
	.p2align 4,,10
.L7432:
	movq	%rbx, 104(%rsp)
	jmp	.L6860
	.p2align 4,,10
.L7421:
	leaq	.LC5(%rip), %rdx
	movl	$7678, %r8d
	leaq	.LC282(%rip), %rcx
	call	_assert
	jmp	.L6853
	.p2align 4,,10
.L7422:
	leaq	.LC5(%rip), %rdx
	movl	$7679, %r8d
	leaq	.LC283(%rip), %rcx
	call	_assert
	jmp	.L6854
	.p2align 4,,10
.L7424:
	call	_ZN5ImGui13EndChildFrameEv
	call	_ZN5ImGui8EndGroupEv
	jmp	.L6850
	.p2align 4,,10
.L7142:
	movb	$0, 120(%rsp)
	movb	$0, 96(%rsp)
	jmp	.L6865
	.p2align 4,,10
.L6870:
	movl	576(%rsp), %eax
	andl	$16384, %eax
	movl	%eax, 120(%rsp)
.L6970:
	movb	$0, 124(%rsp)
	xorl	%r12d, %r12d
.L6886:
	movss	196(%rsp), %xmm6
	testl	%esi, %esi
	movss	192(%rsp), %xmm8
	je	.L7433
	movss	%xmm8, 224(%rsp)
	movq	104(%rsp), %rax
	addss	%xmm14, %xmm8
	movss	%xmm6, 228(%rsp)
	addss	%xmm13, %xmm6
	movl	6068(%r13), %ebx
	movss	%xmm8, 232(%rsp)
	movss	%xmm6, 236(%rsp)
	movq	192(%rax), %rax
	movq	%rax, 176(%rsp)
	movl	172(%rsp), %eax
	cmpl	%eax, 6912(%r13)
	je	.L7434
	cmpl	%eax, %ebx
	jne	.L7030
.L7024:
	movslq	6984(%r13), %rax
	movq	6928(%r13), %r14
	movslq	6992(%r13), %rcx
	movss	10204(%r13), %xmm0
	addss	16(%r13), %xmm0
	leaq	(%r14,%rax,2), %rdx
	movslq	6988(%r13), %rax
	movss	%xmm0, 10204(%r13)
	cmpl	%ecx, %eax
	je	.L7435
	cmovg	%rcx, %rax
	testl	%esi, %esi
	movzwl	(%r14), %ecx
	setne	96(%rsp)
	movzbl	96(%rsp), %r9d
	leaq	(%r14,%rax,2), %r15
	addl	$2, %r9d
	testw	%cx, %cx
	je	.L7161
	movl	$-1, %edi
.L7140:
	movq	%r14, %rax
	movl	$-1, %ebp
	xorl	%r8d, %r8d
	jmp	.L7036
	.p2align 4,,10
.L7032:
	addq	$2, %rax
	movzwl	(%rax), %ecx
	testw	%cx, %cx
	je	.L7035
.L7036:
	leal	1(%r8), %ebx
	cmpw	$10, %cx
	jne	.L7032
	cmpl	$-1, %ebp
	je	.L7436
.L7033:
	leal	2(%r8), %ecx
	cmpl	$-1, %edi
	je	.L7437
.L7163:
	addq	$2, %rax
	movl	%ebx, %r8d
	movl	%ecx, %ebx
	movzwl	(%rax), %ecx
	testw	%cx, %cx
	jne	.L7036
.L7035:
	cmpl	$-1, %ebp
	cmove	%ebx, %ebp
.L7037:
	cmpl	$-1, %edi
	cmove	%ebx, %edi
.L7031:
	cmpq	%r14, %rdx
	movq	%rdx, %rcx
	jbe	.L7038
	cmpw	$10, -2(%rdx)
	jne	.L7039
	jmp	.L7038
	.p2align 4,,10
.L7040:
	cmpw	$10, -2(%rcx)
	je	.L7038
.L7039:
	subq	$2, %rcx
	cmpq	%rcx, %r14
	jb	.L7040
.L7038:
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	pxor	%xmm8, %xmm8
	call	_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.constprop.136
	cvtsi2ss	%ebp, %xmm8
	testl	%edi, %edi
	movss	5944(%r13), %xmm5
	movl	%eax, 132(%rsp)
	mulss	%xmm5, %xmm8
	js	.L7169
	cmpq	%r15, %r14
	movq	%r15, %rcx
	jnb	.L7042
	cmpw	$10, -2(%r15)
	jne	.L7043
	jmp	.L7042
	.p2align 4,,10
.L7044:
	cmpw	$10, -2(%rcx)
	je	.L7042
.L7043:
	subq	$2, %rcx
	cmpq	%rcx, %r14
	jb	.L7044
.L7042:
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	pxor	%xmm6, %xmm6
	call	_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.constprop.136
	cvtsi2ss	%edi, %xmm6
	movss	5944(%r13), %xmm5
	movd	%eax, %xmm11
	mulss	%xmm5, %xmm6
.L7041:
	cmpb	$0, 96(%rsp)
	je	.L7172
	movss	%xmm14, 136(%rsp)
	pxor	%xmm9, %xmm9
	cvtsi2ss	%ebx, %xmm9
	mulss	%xmm5, %xmm9
	movd	%xmm9, %ebp
.L7045:
	cmpb	$0, 10208(%r13)
	movslq	6988(%r13), %rax
	movl	6992(%r13), %edx
	je	.L7046
	testl	$4096, 576(%rsp)
	jne	.L7047
	movss	6980(%r13), %xmm10
	movss	132(%rsp), %xmm4
	movss	.LC109(%rip), %xmm0
	ucomiss	%xmm4, %xmm10
	mulss	%xmm14, %xmm0
	jbe	.L7391
	subss	%xmm0, %xmm4
	pxor	%xmm10, %xmm10
	ucomiss	%xmm4, %xmm7
	jnb	.L7050
	cvttss2si	%xmm4, %ecx
	pxor	%xmm10, %xmm10
	cvtsi2ss	%ecx, %xmm10
.L7050:
	movss	%xmm10, 6980(%r13)
	jmp	.L7051
	.p2align 4,,10
.L7436:
	cmpq	%rax, %rdx
	ja	.L7033
	subl	$1, %r9d
	movl	%ebx, %ebp
	jne	.L7033
	leal	2(%r8), %ebx
	jmp	.L7037
	.p2align 4,,10
.L7437:
	cmpq	%rax, %r15
	ja	.L7163
	subl	$1, %r9d
	movl	%ebx, %edi
	je	.L7164
	movl	%ebx, %r8d
	movl	%ecx, %ebx
	jmp	.L7032
	.p2align 4,,10
.L7433:
	movl	$7, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	200(%rsp), %rdx
	movl	$1, %r9d
	movq	192(%rsp), %rcx
	movl	%eax, %r8d
	movss	5164(%r13), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movaps	%xmm14, %xmm0
	movl	172(%rsp), %eax
	movss	%xmm8, 224(%rsp)
	addss	%xmm8, %xmm0
	cmpl	%eax, 6068(%r13)
	movss	%xmm6, 228(%rsp)
	addss	5156(%r13), %xmm8
	movss	%xmm0, 232(%rsp)
	movaps	%xmm13, %xmm0
	movss	%xmm8, 176(%rsp)
	addss	%xmm6, %xmm0
	addss	5160(%r13), %xmm6
	movss	%xmm0, 236(%rsp)
	movss	%xmm6, 180(%rsp)
	je	.L7024
	movq	104(%rsp), %rax
	xorl	%r8d, %r8d
	movd	%xmm7, %ebp
	movss	%xmm7, 136(%rsp)
	movss	5944(%r13), %xmm5
	leaq	224(%rsp), %r9
	movq	656(%rax), %r11
	jmp	.L7124
	.p2align 4,,10
.L6869:
	testb	%r15b, %r15b
	je	.L7438
	xorl	%r15d, %r15d
	jmp	.L7126
	.p2align 4,,10
.L7172:
	movss	%xmm7, 136(%rsp)
	movd	%xmm7, %ebp
	jmp	.L7045
	.p2align 4,,10
.L7046:
	movss	6980(%r13), %xmm10
	cmpl	%edx, %eax
	movss	180(%rsp), %xmm12
	movss	176(%rsp), %xmm1
	je	.L7419
.L7059:
	movslq	%edx, %rcx
	cmpl	%edx, %eax
	leaq	(%r14,%rcx,2), %r11
	jl	.L7061
	leaq	(%r14,%rax,2), %r15
.L7123:
	cmpb	$0, 96(%rsp)
	jne	.L7175
	movss	.LC1(%rip), %xmm14
	movss	.LC170(%rip), %xmm13
.L7062:
	movl	$41, %ecx
	addss	%xmm12, %xmm6
	movss	%xmm1, 144(%rsp)
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	144(%rsp), %xmm1
	cmpq	%r11, %r15
	movl	%eax, %ebx
	movq	%r11, 184(%rsp)
	addss	%xmm1, %xmm11
	subss	%xmm10, %xmm11
	movaps	%xmm11, %xmm15
	jbe	.L7419
	movss	236(%rsp), %xmm0
	leaq	184(%rsp), %rdi
	movq	%r11, %rcx
	movss	.LC17(%rip), %xmm11
	addss	%xmm5, %xmm0
	ucomiss	%xmm0, %xmm6
	ja	.L7439
	.p2align 4,,10
.L7064:
	movss	228(%rsp), %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L7070
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%r15, %rdx
	call	_ZL22InputTextCalcTextSizeWPKtS0_PS0_P6ImVec2b.constprop.136
	movd	%eax, %xmm9
	ucomiss	%xmm9, %xmm7
	jnb	.L7440
.L7072:
	movaps	%xmm15, %xmm0
	movaps	%xmm14, %xmm1
	movss	5944(%r13), %xmm5
	movaps	%xmm13, %xmm12
	movss	224(%rsp), %xmm4
	addss	%xmm7, %xmm0
	movss	228(%rsp), %xmm2
	subss	%xmm5, %xmm1
	movss	236(%rsp), %xmm3
	addss	%xmm15, %xmm9
	movss	%xmm0, 240(%rsp)
	addss	%xmm6, %xmm12
	movss	232(%rsp), %xmm15
	addss	%xmm6, %xmm1
	movss	%xmm9, 248(%rsp)
	ucomiss	%xmm0, %xmm4
	movss	%xmm12, 252(%rsp)
	movss	%xmm1, 244(%rsp)
	jbe	.L7076
	movss	%xmm4, 240(%rsp)
	movaps	%xmm4, %xmm0
.L7076:
	ucomiss	%xmm1, %xmm2
	jbe	.L7078
	movss	%xmm2, 244(%rsp)
	movaps	%xmm2, %xmm1
.L7078:
	ucomiss	%xmm15, %xmm9
	jbe	.L7080
	movss	%xmm15, 248(%rsp)
	movaps	%xmm15, %xmm9
.L7080:
	ucomiss	%xmm3, %xmm12
	jbe	.L7082
	movss	%xmm3, 252(%rsp)
	movaps	%xmm3, %xmm12
.L7082:
	ucomiss	%xmm2, %xmm12
	jbe	.L7084
	ucomiss	%xmm1, %xmm3
	jbe	.L7084
	ucomiss	%xmm4, %xmm9
	jbe	.L7084
	ucomiss	%xmm0, %xmm15
	ja	.L7441
	.p2align 4,,10
.L7084:
	movq	184(%rsp), %rcx
	movss	176(%rsp), %xmm1
.L7071:
	movaps	%xmm1, %xmm0
	addss	%xmm5, %xmm6
	cmpq	%rcx, %r15
	subss	%xmm10, %xmm0
	movaps	%xmm0, %xmm15
	jbe	.L7420
	movss	236(%rsp), %xmm2
	addss	%xmm5, %xmm2
	ucomiss	%xmm2, %xmm6
	jbe	.L7064
.L7420:
	movss	180(%rsp), %xmm12
	jmp	.L7060
	.p2align 4,,10
.L7068:
	addq	$2, %rcx
	cmpw	$10, -2(%rcx)
	je	.L7442
.L7070:
	cmpq	%r15, %rcx
	jb	.L7068
	movss	5944(%r13), %xmm5
	subss	%xmm10, %xmm1
	movss	180(%rsp), %xmm12
	movaps	%xmm1, %xmm0
.L7060:
	movq	104(%rsp), %rax
	leaq	224(%rsp), %r11
	cmpb	$0, 96(%rsp)
	movq	656(%rax), %r8
	movl	$0, %eax
	cmovne	%rax, %r11
.L7090:
	movslq	6968(%r13), %r9
	xorl	%ecx, %ecx
	movss	%xmm0, 96(%rsp)
	addq	552(%rsp), %r9
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movss	96(%rsp), %xmm0
	movss	%xmm12, 244(%rsp)
	movq	552(%rsp), %rdi
	movaps	%xmm5, %xmm2
	movq	%r8, %rcx
	movss	%xmm0, 240(%rsp)
	movq	5936(%r13), %rdx
	movq	%r9, 48(%rsp)
	movq	112(%rsp), %r9
	movq	%r11, 64(%rsp)
	movl	$0x00000000, 56(%rsp)
	movq	%rdi, 40(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	movl	$1, %edx
	movss	10204(%r13), %xmm0
	ucomiss	%xmm0, %xmm7
	jnb	.L7091
	movss	.LC242(%rip), %xmm1
	call	fmodf
	movss	.LC290(%rip), %xmm1
	ucomiss	%xmm0, %xmm1
	setnb	%dl
.L7091:
	movss	132(%rsp), %xmm6
	testb	%dl, %dl
	addss	176(%rsp), %xmm6
	addss	180(%rsp), %xmm8
	subss	%xmm10, %xmm6
	movss	.LC18(%rip), %xmm10
	movaps	%xmm8, %xmm2
	movaps	%xmm8, %xmm5
	subss	5944(%r13), %xmm2
	movaps	%xmm6, %xmm0
	subss	.LC291(%rip), %xmm5
	movss	%xmm6, 240(%rsp)
	addss	%xmm10, %xmm0
	addss	%xmm2, %xmm11
	movss	%xmm5, 252(%rsp)
	movss	%xmm0, 248(%rsp)
	movss	%xmm11, 244(%rsp)
	je	.L7092
	ucomiss	228(%rsp), %xmm5
	jbe	.L7092
	movss	236(%rsp), %xmm1
	ucomiss	%xmm11, %xmm1
	ja	.L7443
	.p2align 4,,10
.L7092:
	movl	120(%rsp), %edx
	testl	%edx, %edx
	jne	.L7098
	subss	5944(%r13), %xmm8
	subss	%xmm10, %xmm6
	movss	%xmm8, 11420(%r13)
	movss	%xmm6, 11416(%r13)
.L7098:
	testl	%esi, %esi
	jne	.L7444
.L7102:
	movl	128(%rsp), %eax
	testl	%eax, %eax
	jne	.L7445
	cmpb	$0, 11432(%r13)
	jne	.L7446
.L7104:
	movss	92(%rsp), %xmm4
	ucomiss	%xmm7, %xmm4
	jbe	.L7105
	movss	196(%rsp), %xmm1
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addss	5160(%r13), %xmm1
	movss	200(%rsp), %xmm0
	addss	5176(%r13), %xmm0
	movd	%xmm1, %ecx
	movq	544(%rsp), %rdx
	movq	%rcx, %rax
	salq	$32, %rax
	movd	%xmm0, %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
.L7105:
	testb	$32, 576(%rsp)
	movzbl	124(%rsp), %eax
	cmove	%r12d, %eax
	movl	%eax, %r12d
	jmp	.L6850
	.p2align 4,,10
.L7442:
	movss	5944(%r13), %xmm5
	movq	%rcx, 184(%rsp)
	jmp	.L7071
	.p2align 4,,10
.L7440:
	movq	5936(%r13), %rax
	cmpl	$32, 32(%rax)
	jle	.L7074
	movq	40(%rax), %rax
	movss	128(%rax), %xmm0
.L7075:
	mulss	%xmm11, %xmm0
	pxor	%xmm9, %xmm9
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm9
	jmp	.L7072
	.p2align 4,,10
.L7445:
	call	_ZN5ImGui7PopFontEv
	jmp	.L7104
	.p2align 4,,10
.L7444:
	movss	136(%rsp), %xmm12
	movd	%ebp, %xmm9
	movq	112(%rsp), %rcx
	addss	5944(%r13), %xmm9
	addss	%xmm7, %xmm12
	movss	%xmm9, 244(%rsp)
	movss	%xmm12, 240(%rsp)
	call	_ZN5ImGui5DummyERK6ImVec2
	call	_ZN5ImGui8EndChildEv
	call	_ZN5ImGui11PopStyleVarEi.constprop.140
	call	_ZN5ImGui13PopStyleColorEi.constprop.142
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7102
	.p2align 4,,10
.L7425:
	movq	5936(%r13), %rcx
	movl	$42, %edx
	leaq	10216(%r13), %rdi
	call	_ZNK6ImFont9FindGlyphEt
	movq	5936(%r13), %rdx
	movl	10232(%r13), %r15d
	movss	(%rdx), %xmm0
	movq	8(%rdx), %rcx
	testl	%r15d, %r15d
	movss	%xmm0, 10216(%r13)
	movss	4(%rdx), %xmm0
	movss	%xmm0, 10220(%r13)
	movss	96(%rdx), %xmm0
	movq	%rcx, 10224(%r13)
	movss	%xmm0, 10312(%r13)
	movss	100(%rdx), %xmm0
	movq	88(%rdx), %rdx
	movq	%rax, 10280(%r13)
	movss	%xmm0, 10316(%r13)
	movss	4(%rax), %xmm0
	movss	%xmm0, 10288(%r13)
	movq	%rdx, 10304(%r13)
	jne	.L6863
	movl	10248(%r13), %r14d
	testl	%r14d, %r14d
	je	.L7447
.L6863:
	leaq	.LC5(%rip), %rdx
	movl	$7729, %r8d
	leaq	.LC284(%rip), %rcx
	call	_assert
.L6864:
	movq	%rdi, %rcx
	call	_ZN5ImGui8PushFontEP6ImFont
	jmp	.L6862
	.p2align 4,,10
.L7435:
	testl	%esi, %esi
	movzwl	(%r14), %ecx
	setne	96(%rsp)
	movzbl	96(%rsp), %r9d
	addl	$1, %r9d
	testw	%cx, %cx
	je	.L7182
	xorl	%r15d, %r15d
	movl	$-999, %edi
	jmp	.L7140
	.p2align 4,,10
.L7169:
	pxor	%xmm6, %xmm6
	pxor	%xmm11, %xmm11
	jmp	.L7041
	.p2align 4,,10
.L7074:
	movss	72(%rax), %xmm0
	jmp	.L7075
	.p2align 4,,10
.L7175:
	pxor	%xmm14, %xmm14
	pxor	%xmm13, %xmm13
	jmp	.L7062
	.p2align 4,,10
.L7061:
	movq	%r11, %r15
	leaq	(%r14,%rax,2), %r11
	jmp	.L7123
	.p2align 4,,10
.L6890:
	movl	6972(%r13), %edx
	movb	$0, 6999(%r13)
	movl	$0, 6988(%r13)
	movb	$1, 10209(%r13)
	movl	%edx, 6992(%r13)
	movl	%edx, 6984(%r13)
.L6893:
	testb	%al, %al
	je	.L7128
	jmp	.L6900
.L7431:
	cmpb	$0, 287(%r13)
	jne	.L6903
.L6904:
	movq	$0, 802(%r13)
	xorl	%r11d, %r11d
	movq	$0, 810(%r13)
	movq	$0, 818(%r13)
	movq	$0, 826(%r13)
	movw	%r11w, 834(%r13)
.L6902:
	movzbl	286(%r13), %eax
	movzbl	192(%r13), %r11d
	movq	GImGui(%rip), %rdx
	cmpb	$1, %al
	sbbl	%ebx, %ebx
	andl	$-131072, %ebx
	movl	56(%rdx), %ecx
	addl	$196620, %ebx
	cmpb	$1, %al
	sbbl	%r14d, %r14d
	andl	$-131072, %r14d
	addl	$196610, %r14d
	cmpb	$1, %al
	sbbl	%edi, %edi
	andl	$-131072, %edi
	addl	$196614, %edi
	cmpb	$1, %al
	sbbl	%r9d, %r9d
	movl	%edi, 144(%rsp)
	andl	$-131072, %r9d
	addl	$196612, %r9d
	cmpb	$1, %al
	sbbl	%r15d, %r15d
	andl	$-131072, %r15d
	addl	$196615, %r15d
	cmpb	$1, %al
	sbbl	%r8d, %r8d
	andl	$-131072, %r8d
	addl	$196613, %r8d
	cmpb	$1, %al
	sbbl	%edi, %edi
	andl	$-131072, %edi
	addl	$196617, %edi
	cmpb	$1, %al
	sbbl	%r10d, %r10d
	andl	$-131072, %r10d
	addl	$196616, %r10d
	cmpb	$1, %al
	sbbl	%r12d, %r12d
	notl	%r12d
	andl	$131072, %r12d
	testb	%r11b, %r11b
	je	.L6910
	movzbl	288(%r13), %edx
	testb	%dl, %dl
	movb	%dl, 124(%rsp)
	je	.L6911
	movzbl	285(%r13), %edx
	testb	%dl, %dl
	movb	%dl, 136(%rsp)
	jne	.L6911
	cmpb	$0, 287(%r13)
	je	.L7448
.L6919:
	movl	$1, %edx
	movl	%r10d, 152(%rsp)
	movl	%r9d, 148(%rsp)
	movl	%r8d, 132(%rsp)
	movb	%r11b, 124(%rsp)
	call	_ZN5ImGui12IsKeyPressedEib
	movzbl	124(%rsp), %r11d
	testb	%al, %al
	movl	132(%rsp), %r8d
	movl	148(%rsp), %r9d
	movl	152(%rsp), %r10d
	jne	.L6921
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r10d, 156(%rsp)
	movl	%r9d, 152(%rsp)
	movl	%r8d, 148(%rsp)
	movb	%r11b, 124(%rsp)
	movl	60(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	%eax, %ebx
	jne	.L6923
	movzbl	124(%rsp), %r11d
	movl	148(%rsp), %r8d
	movl	152(%rsp), %r9d
	movl	156(%rsp), %r10d
	movb	%r11b, 132(%rsp)
	jmp	.L6924
	.p2align 4,,10
.L7434:
	movq	104(%rsp), %rax
	movslq	496(%rax), %rax
	testl	%eax, %eax
	jle	.L7449
.L7026:
	movq	104(%rsp), %rdi
	leaq	.LC213(%rip), %rcx
	movq	504(%rdi), %rdx
	movl	-4(%rdx,%rax,4), %edx
	call	_Z6ImHashPKvij.constprop.146
	cmpl	%ebx, %eax
	je	.L7024
	movl	172(%rsp), %eax
	cmpl	%eax, 6068(%r13)
	je	.L7024
.L7030:
	movq	552(%rsp), %r8
	movl	$1, %ecx
	jmp	.L7099
	.p2align 4,,10
.L7450:
	cmpb	$10, %dl
	movq	%rax, %r8
	sete	%dl
	movzbl	%dl, %edx
	addl	%edx, %ecx
.L7099:
	movzbl	(%r8), %edx
	leaq	1(%r8), %rax
	testb	%dl, %dl
	jne	.L7450
	pxor	%xmm9, %xmm9
	cvtsi2ss	%ecx, %xmm9
	xorl	%r9d, %r9d
	movq	104(%rsp), %rax
	movss	5944(%r13), %xmm5
	movss	%xmm14, 136(%rsp)
	mulss	%xmm5, %xmm9
	movq	656(%rax), %r11
	movd	%xmm9, %ebp
.L7124:
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	552(%rsp), %rdi
	movq	5936(%r13), %rdx
	movaps	%xmm5, %xmm2
	movq	%r9, 64(%rsp)
	movq	%r11, %rcx
	movl	$0x00000000, 56(%rsp)
	leaq	176(%rsp), %r9
	movq	%r8, 48(%rsp)
	movq	%rdi, 40(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	jmp	.L7098
	.p2align 4,,10
.L6888:
	movss	.LC17(%rip), %xmm11
	mulss	5944(%r13), %xmm11
	jmp	.L6889
	.p2align 4,,10
.L6910:
	movzbl	285(%r13), %edx
	testb	%dl, %dl
	movb	%dl, 132(%rsp)
	je	.L6913
	cmpb	$0, 288(%r13)
	jne	.L6913
	movzbl	287(%r13), %r11d
	testb	%r11b, %r11b
	jne	.L7451
	testb	%al, %al
	jne	.L6913
	movl	$1, %edx
	movl	%r10d, 148(%rsp)
	movl	%r9d, 136(%rsp)
	movl	%r8d, 124(%rsp)
	call	_ZN5ImGui12IsKeyPressedEib
	movl	124(%rsp), %r8d
	testb	%al, %al
	movl	136(%rsp), %r9d
	movl	148(%rsp), %r10d
	jne	.L6921
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r10d, 152(%rsp)
	movl	%r9d, 148(%rsp)
	movl	%r8d, 124(%rsp)
	movl	60(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	%eax, %ebx
	jne	.L6923
	movzbl	132(%rsp), %eax
	movl	124(%rsp), %r8d
	movl	148(%rsp), %r9d
	movl	152(%rsp), %r10d
	movb	%al, 136(%rsp)
.L6924:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r10d, 152(%rsp)
	movl	%r9d, 148(%rsp)
	movl	%r8d, 124(%rsp)
	movl	64(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	movl	124(%rsp), %r8d
	testb	%al, %al
	movl	148(%rsp), %r9d
	movl	152(%rsp), %r10d
	je	.L6927
	testl	%esi, %esi
	je	.L7452
	movzbl	285(%r13), %eax
	testb	%al, %al
	movb	%al, 124(%rsp)
	je	.L6933
	movq	104(%rsp), %rax
	movss	100(%rax), %xmm0
	movaps	%xmm0, %xmm1
	subss	5944(%r13), %xmm1
	ucomiss	%xmm7, %xmm1
	jnb	.L6934
	pxor	%xmm1, %xmm1
.L6934:
	addss	220(%rax), %xmm0
	movss	%xmm1, 100(%rax)
	movb	$0, 124(%rsp)
	subss	%xmm1, %xmm0
	movss	%xmm0, 220(%rax)
	jmp	.L6922
	.p2align 4,,10
.L6913:
	movb	%dl, 132(%rsp)
	movl	$1, %edx
	movl	%r10d, 152(%rsp)
	movl	%r9d, 148(%rsp)
	movl	%r8d, 124(%rsp)
	call	_ZN5ImGui12IsKeyPressedEib
	movb	%al, 136(%rsp)
.L7412:
	testb	%al, %al
	movl	124(%rsp), %r8d
	movl	148(%rsp), %r9d
	movl	152(%rsp), %r10d
	je	.L7453
	orl	$65536, %r12d
	cmpb	$0, 132(%rsp)
	cmove	%r12d, %ebx
.L6921:
	movl	%ebx, %r8d
	leaq	6984(%r13), %rdx
.L7417:
	movq	96(%rsp), %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%r13)
	movl	$0xbe99999a, 10204(%r13)
	movb	$0, 124(%rsp)
.L6922:
	movl	120(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L6952
.L7006:
	xorl	%r12d, %r12d
	testl	$448, 576(%rsp)
	je	.L6886
.L7136:
	cmpq	$0, 584(%rsp)
	je	.L7454
.L7008:
	testb	$64, 576(%rsp)
	jne	.L7009
.L7013:
	testb	$-128, 576(%rsp)
	jne	.L7455
.L7011:
	testl	$256, 576(%rsp)
	je	.L7007
	movl	$19, %edx
	movl	$256, %ecx
.L7012:
	movq	112(%rsp), %r14
	movq	$0, 256(%rsp)
	movl	576(%rsp), %eax
	movl	120(%rsp), %r8d
	movq	$0, 24(%r14)
	movq	$0, 32(%r14)
	movq	$0, 40(%r14)
	testl	%r8d, %r8d
	movq	$0, 48(%r14)
	movq	6928(%r13), %r11
	setne	256(%rsp)
	movl	%eax, 244(%rsp)
	movq	592(%rsp), %rax
	movl	%ecx, 240(%rsp)
	movl	%edx, 260(%rsp)
	movq	%r11, %rcx
	movq	%rax, 248(%rsp)
	movq	6960(%r13), %rax
	movq	%rax, 264(%rsp)
	movl	6968(%r13), %eax
	movl	%eax, 272(%rsp)
	movl	6976(%r13), %eax
	movl	%eax, 276(%rsp)
	movslq	6984(%r13), %rax
	leaq	(%r11,%rax,2), %rdx
	call	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	movl	%eax, 284(%rsp)
	movl	%eax, %r12d
	movq	%r11, %rcx
	movslq	6988(%r13), %rax
	leaq	(%r11,%rax,2), %rdx
	call	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	movl	%eax, 288(%rsp)
	movl	%eax, %edi
	movslq	6992(%r13), %rax
	movq	%r11, %rcx
	leaq	(%r11,%rax,2), %rdx
	call	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	movq	%r14, %rcx
	movl	%eax, %ebx
	movl	%eax, 292(%rsp)
	call	*584(%rsp)
	movq	6960(%r13), %rax
	cmpq	%rax, 264(%rsp)
	je	.L7015
	leaq	.LC5(%rip), %rdx
	movl	$8040, %r8d
	leaq	.LC286(%rip), %rcx
	call	_assert
.L7015:
	movl	6976(%r13), %eax
	cmpl	%eax, 276(%rsp)
	je	.L7016
	leaq	.LC5(%rip), %rdx
	movl	$8041, %r8d
	leaq	.LC287(%rip), %rcx
	call	_assert
.L7016:
	movl	576(%rsp), %eax
	cmpl	%eax, 244(%rsp)
	je	.L7017
	leaq	.LC5(%rip), %rdx
	movl	$8042, %r8d
	leaq	.LC288(%rip), %rcx
	call	_assert
.L7017:
	movslq	284(%rsp), %rax
	cmpl	%eax, %r12d
	je	.L7018
	movq	264(%rsp), %rcx
	leaq	(%rcx,%rax), %rdx
	call	_Z24ImTextCountCharsFromUtf8PKcS0_
	movl	%eax, 6984(%r13)
.L7018:
	movslq	288(%rsp), %rax
	cmpl	%eax, %edi
	je	.L7019
	movq	264(%rsp), %rcx
	leaq	(%rcx,%rax), %rdx
	call	_Z24ImTextCountCharsFromUtf8PKcS0_
	movl	%eax, 6988(%r13)
.L7019:
	movslq	292(%rsp), %rax
	cmpl	%eax, %ebx
	je	.L7020
	movq	264(%rsp), %rcx
	leaq	(%rcx,%rax), %rdx
	call	_Z24ImTextCountCharsFromUtf8PKcS0_
	movl	%eax, 6992(%r13)
.L7020:
	cmpb	$0, 280(%rsp)
	je	.L7007
	movq	264(%rsp), %rbx
	movq	%rbx, %rcx
	call	strlen
	cmpl	%eax, 272(%rsp)
	je	.L7022
	leaq	.LC5(%rip), %rdx
	movl	$8048, %r8d
	leaq	.LC289(%rip), %rcx
	call	_assert
	movq	264(%rsp), %rbx
.L7022:
	movl	6920(%r13), %edx
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	movq	6928(%r13), %rcx
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.150
	movl	%eax, 6972(%r13)
	movl	272(%rsp), %eax
	movl	$0xbe99999a, 10204(%r13)
	movl	%eax, 6968(%r13)
.L7007:
	movl	120(%rsp), %ecx
	xorl	%r12d, %r12d
	testl	%ecx, %ecx
	jne	.L6886
.L7139:
	movq	6960(%r13), %rbx
	movq	552(%rsp), %rdx
	movq	%rbx, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L7159
	testl	%ebp, %ebp
	movl	$1, %r12d
	jg	.L7456
.L7004:
	movl	172(%rsp), %eax
	cmpl	%eax, 6068(%r13)
	jne	.L6886
.L7119:
	movq	6960(%r13), %rax
	movq	%rax, 552(%rsp)
	jmp	.L6886
	.p2align 4,,10
.L7047:
	movl	$0x00000000, 6980(%r13)
	pxor	%xmm10, %xmm10
.L7051:
	cmpb	$0, 96(%rsp)
	je	.L7053
	movq	104(%rsp), %rdi
	movaps	%xmm8, %xmm0
	subss	%xmm5, %xmm0
	movss	100(%rdi), %xmm2
	ucomiss	%xmm0, %xmm2
	ja	.L7457
	movaps	%xmm8, %xmm0
	subss	%xmm13, %xmm0
	ucomiss	%xmm2, %xmm0
	jnb	.L7057
	movaps	%xmm2, %xmm0
	subss	%xmm2, %xmm2
.L7056:
	addss	196(%rdi), %xmm2
	cmpl	%edx, %eax
	movss	%xmm0, 100(%rdi)
	movss	176(%rsp), %xmm1
	movss	%xmm2, 196(%rdi)
	movaps	%xmm2, %xmm12
	movss	%xmm2, 180(%rsp)
	movb	$0, 10208(%r13)
	je	.L7058
	movss	5944(%r13), %xmm5
	jmp	.L7059
	.p2align 4,,10
.L7053:
	cmpl	%edx, %eax
	movb	$0, 10208(%r13)
	movss	180(%rsp), %xmm12
	movss	176(%rsp), %xmm1
	jne	.L7059
	movq	104(%rsp), %rax
	subss	%xmm10, %xmm1
	leaq	224(%rsp), %r11
	movss	.LC17(%rip), %xmm11
	movaps	%xmm1, %xmm0
	movq	656(%rax), %r8
	jmp	.L7090
	.p2align 4,,10
.L7446:
	movq	552(%rsp), %rdx
	leaq	176(%rsp), %rcx
	xorl	%r8d, %r8d
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	jmp	.L7104
.L7447:
	movl	10264(%r13), %r12d
	testl	%r12d, %r12d
	je	.L6864
	jmp	.L6863
.L7427:
	cmpl	%r14d, %eax
	jl	.L6873
	jmp	.L6871
.L7147:
	movzbl	120(%rsp), %r15d
	jmp	.L7126
	.p2align 4,,10
.L6911:
	movzbl	287(%r13), %eax
	movb	%al, 132(%rsp)
	movzbl	124(%rsp), %eax
	testb	%al, %al
	movb	%al, 136(%rsp)
	jne	.L7458
.L6916:
	movl	$1, %edx
	movl	%r10d, 152(%rsp)
	movl	%r9d, 148(%rsp)
	movl	%r8d, 124(%rsp)
	call	_ZN5ImGui12IsKeyPressedEib
	jmp	.L7412
.L7391:
	movaps	%xmm4, %xmm1
	subss	%xmm14, %xmm1
	ucomiss	%xmm10, %xmm1
	jb	.L7051
	addss	%xmm1, %xmm0
	pxor	%xmm10, %xmm10
	cvttss2si	%xmm0, %ecx
	cvtsi2ss	%ecx, %xmm10
	movss	%xmm10, 6980(%r13)
	jmp	.L7051
.L7443:
	ucomiss	224(%rsp), %xmm0
	jbe	.L7092
	movss	232(%rsp), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L7092
	movq	104(%rsp), %rax
	xorl	%ecx, %ecx
	movq	656(%rax), %r11
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	112(%rsp), %rdx
	movss	%xmm10, 32(%rsp)
	leaq	184(%rsp), %r8
	movss	%xmm6, 184(%rsp)
	movl	%eax, %r9d
	movss	%xmm5, 188(%rsp)
	movq	%r11, %rcx
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	jmp	.L7092
.L7457:
	ucomiss	%xmm0, %xmm7
	jnb	.L7174
.L7057:
	subss	%xmm0, %xmm2
	jmp	.L7056
.L7009:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	52(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L7013
	xorl	%edx, %edx
	movl	$64, %ecx
	jmp	.L7012
.L7429:
	leal	1(%rbp), %edx
	leaq	6920(%r13), %rcx
	call	_ZN8ImVectorItE6resizeEi
	movl	6920(%r13), %edx
	movq	$0, 240(%rsp)
	movq	6928(%r13), %rcx
	movq	112(%rsp), %r9
	movq	552(%rsp), %r8
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.150
	movq	240(%rsp), %rdx
	subq	552(%rsp), %rdx
	movl	%eax, 6972(%r13)
	cmpl	%eax, 6984(%r13)
	movl	%edx, 6968(%r13)
	movl	%eax, %edx
	cmovle	6984(%r13), %edx
	cmpl	%eax, 6988(%r13)
	movl	%edx, 6984(%r13)
	movl	%eax, %edx
	cmovle	6988(%r13), %edx
	cmpl	%eax, 6992(%r13)
	cmovle	6992(%r13), %eax
	movl	%edx, 6988(%r13)
	movl	%eax, 6992(%r13)
	jmp	.L6887
.L7441:
	movq	104(%rsp), %rax
	movl	%ebx, %r9d
	movq	656(%rax), %rcx
	movl	$-1, 40(%rsp)
	movq	112(%rsp), %rax
	movl	$0x00000000, 32(%rsp)
	leaq	8(%rax), %r8
	movq	%rax, %rdx
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	5944(%r13), %xmm5
	jmp	.L7084
.L6891:
	testb	%r12b, %r12b
	je	.L6892
	cmpb	$0, 944(%r13)
	je	.L6892
	leaq	6984(%r13), %rbx
	movl	$65548, %r8d
	leaq	6912(%r13), %rdi
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movss	.LC180(%rip), %xmm6
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movb	$1, 10208(%r13)
	movl	$196621, %r8d
	movss	%xmm6, 10204(%r13)
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%r13)
	movss	%xmm6, 10204(%r13)
.L6894:
	cmpb	$0, 10209(%r13)
	je	.L6900
	movzbl	272(%r13), %eax
	jmp	.L6893
	.p2align 4,,10
.L7454:
	leaq	.LC5(%rip), %rdx
	movl	$7992, %r8d
	leaq	.LC285(%rip), %rcx
	call	_assert
	jmp	.L7008
	.p2align 4,,10
.L7419:
	movss	.LC17(%rip), %xmm11
	subss	%xmm10, %xmm1
	movaps	%xmm1, %xmm0
	jmp	.L7060
.L6959:
	testb	%dl, %dl
	jne	.L6958
.L6960:
	cmpl	$0, 120(%rsp)
	jne	.L6961
	movq	592(%rsp), %r9
	movl	$10, 240(%rsp)
	movq	584(%rsp), %r8
	movl	576(%rsp), %edx
	movq	112(%rsp), %rcx
	call	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	je	.L6962
	movl	240(%rsp), %r8d
	leaq	6984(%r13), %rdx
	movq	96(%rsp), %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%r13)
	movl	$0xbe99999a, 10204(%r13)
.L6962:
	movb	$0, 124(%rsp)
.L6952:
	movl	6920(%r13), %eax
	leaq	6952(%r13), %rcx
	leal	0(,%rax,4), %edx
	call	_ZN8ImVectorIcE6resizeEi
	movl	6952(%r13), %edx
	xorl	%r9d, %r9d
	movq	6960(%r13), %rcx
	movq	6928(%r13), %r8
	call	_Z15ImTextStrToUtf8PciPKtS1_
	testl	$448, 576(%rsp)
	jne	.L7136
	jmp	.L7139
.L7453:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r10d, 152(%rsp)
	movl	%r9d, 148(%rsp)
	movl	%r8d, 124(%rsp)
	movl	60(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	movl	124(%rsp), %r8d
	testb	%al, %al
	movl	%eax, %ebx
	movl	148(%rsp), %r9d
	movl	152(%rsp), %r10d
	je	.L6924
	movl	%r12d, %r8d
	orl	$65537, %r8d
	cmpb	$0, 132(%rsp)
	jne	.L6923
.L6926:
	leaq	6984(%r13), %rdx
	jmp	.L7417
.L7159:
	xorl	%r12d, %r12d
	jmp	.L7004
.L7058:
	subss	%xmm10, %xmm1
	movq	656(%rdi), %r8
	xorl	%r11d, %r11d
	movss	5944(%r13), %xmm5
	movss	.LC17(%rip), %xmm11
	movaps	%xmm1, %xmm0
	jmp	.L7090
.L6895:
	testb	%al, %al
	je	.L6897
	testb	%dl, %dl
	jne	.L6900
	ucomiss	860(%r13), %xmm7
	jp	.L6899
	jne	.L6899
	ucomiss	864(%r13), %xmm7
	jp	.L6899
	je	.L6900
.L6899:
	leaq	6912(%r13), %rcx
	movaps	%xmm11, %xmm2
	call	_ZN8ImGuiStbL21stb_text_locate_coordEP18ImGuiTextEditStateff
	movl	6992(%r13), %edi
	cmpl	%edi, 6988(%r13)
	jne	.L6901
	movl	6984(%r13), %edx
	movl	%edx, 6988(%r13)
.L6901:
	movl	%eax, 6992(%r13)
	movl	%eax, 6984(%r13)
	movl	$0xbe99999a, 10204(%r13)
	movb	$1, 10208(%r13)
	jmp	.L6894
.L7426:
	movl	6072(%r13), %eax
	movl	%eax, 124(%rsp)
	movq	104(%rsp), %rax
	movslq	496(%rax), %rax
	testl	%eax, %eax
	jle	.L7459
.L6868:
	movq	104(%rsp), %rdx
	leaq	.LC213(%rip), %rcx
	movq	504(%rdx), %rdx
	movl	-4(%rdx,%rax,4), %edx
	call	_Z6ImHashPKvij.constprop.146
	cmpl	%eax, 124(%rsp)
	movl	6068(%r13), %edx
	movl	172(%rsp), %r14d
	sete	%al
	orl	%eax, %r15d
	jmp	.L6867
.L7455:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	64(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L7460
	movl	$3, %edx
	movl	$128, %ecx
	jmp	.L7012
.L7428:
	cmpl	%eax, 6984(%r13)
	movl	%eax, %ecx
	cmovle	6984(%r13), %ecx
	cmpl	%eax, 6988(%r13)
	movl	%ecx, 6984(%r13)
	movl	%eax, %ecx
	movzbl	124(%rsp), %r15d
	cmovle	6988(%r13), %ecx
	cmpl	%eax, 6992(%r13)
	cmovle	6992(%r13), %eax
	movl	%ecx, 6988(%r13)
	movl	%eax, 6992(%r13)
	jmp	.L6879
.L7458:
	movb	$0, 136(%rsp)
.L6915:
	cmpb	$0, 285(%r13)
	jne	.L6916
	cmpb	$0, 132(%rsp)
	jne	.L6919
	movl	$1, %edx
	movl	%r10d, 152(%rsp)
	movl	%r9d, 148(%rsp)
	movl	%r8d, 132(%rsp)
	movb	%r11b, 124(%rsp)
	call	_ZN5ImGui12IsKeyPressedEib
	movl	148(%rsp), %r9d
	testb	%al, %al
	movzbl	124(%rsp), %r11d
	movl	132(%rsp), %r8d
	movl	152(%rsp), %r10d
	movl	%r9d, %ebx
	jne	.L6921
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r10d, 156(%rsp)
	movl	%r9d, 152(%rsp)
	movl	%r8d, 148(%rsp)
	movb	%r11b, 124(%rsp)
	movl	60(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	movzbl	124(%rsp), %r11d
	testb	%al, %al
	movb	%al, 132(%rsp)
	movl	148(%rsp), %r8d
	movl	152(%rsp), %r9d
	movl	156(%rsp), %r10d
	jne	.L6926
	movl	%r11d, %ebx
	jmp	.L6924
	.p2align 4,,10
.L7456:
	movq	552(%rsp), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	strncpy
	movq	552(%rsp), %rax
	movb	$0, -1(%rax,%rbp)
.L7005:
	movl	172(%rsp), %eax
	movl	$1, %r12d
	cmpl	%eax, 6068(%r13)
	jne	.L6886
	jmp	.L7119
.L7460:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	68(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L7011
	movl	$4, %edx
	movl	$128, %ecx
	jmp	.L7012
.L7161:
	movl	$1, %ebx
	movl	$1, %ebp
	movl	$1, %edi
	jmp	.L7031
.L7164:
	movl	%ecx, %ebx
	jmp	.L7035
.L7174:
	pxor	%xmm0, %xmm0
	jmp	.L7056
.L7439:
	subss	%xmm10, %xmm1
	movaps	%xmm1, %xmm0
	jmp	.L7060
.L7449:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	104(%rsp), %rax
	movslq	496(%rax), %rax
	jmp	.L7026
.L6923:
	movl	%r12d, %r8d
	orl	$65549, %r8d
	jmp	.L6926
.L7430:
	leaq	6912(%r13), %rcx
	movaps	%xmm11, %xmm2
	call	_ZN8ImGuiStbL21stb_text_locate_coordEP18ImGuiTextEditStateff
	movb	$0, 6999(%r13)
	movl	%eax, 6984(%r13)
	movl	%eax, 6988(%r13)
	movl	%eax, 6992(%r13)
	movl	$0xbe99999a, 10204(%r13)
	jmp	.L6894
.L7452:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r10d, 152(%rsp)
	movl	%r9d, 148(%rsp)
	movl	%r8d, 124(%rsp)
	movl	68(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	movl	124(%rsp), %r8d
	movl	148(%rsp), %r9d
	movl	152(%rsp), %r10d
.L6932:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r10d, 156(%rsp)
	movl	%r9d, 152(%rsp)
	movl	%r8d, 148(%rsp)
	movl	80(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	movl	148(%rsp), %r8d
	testb	%al, %al
	movb	%al, 124(%rsp)
	movl	152(%rsp), %r9d
	movl	156(%rsp), %r10d
	je	.L7461
	cmpb	$0, 285(%r13)
	leaq	6984(%r13), %rdx
	cmovne	144(%rsp), %r9d
	movl	%r9d, %r8d
	jmp	.L7417
.L7459:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	104(%rsp), %rax
	movslq	496(%rax), %rax
	jmp	.L6868
.L6927:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r10d, 152(%rsp)
	movl	%r9d, 148(%rsp)
	movl	%r8d, 124(%rsp)
	movl	68(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testl	%esi, %esi
	movl	124(%rsp), %r8d
	movl	148(%rsp), %r9d
	movl	152(%rsp), %r10d
	je	.L6932
	testb	%al, %al
	je	.L6932
	movzbl	285(%r13), %eax
	testb	%al, %al
	movb	%al, 124(%rsp)
	je	.L6939
	movq	GImGui(%rip), %rax
	movb	$0, 124(%rsp)
	movss	5944(%r13), %xmm2
	movq	6008(%rax), %rax
	movss	56(%rax), %xmm0
	subss	48(%rax), %xmm0
	subss	128(%rax), %xmm0
	movq	104(%rsp), %rax
	movss	100(%rax), %xmm1
	addss	%xmm1, %xmm2
	addss	220(%rax), %xmm1
	minss	%xmm0, %xmm2
	subss	%xmm2, %xmm1
	movss	%xmm2, 100(%rax)
	movss	%xmm1, 220(%rax)
	jmp	.L6922
.L6933:
	movq	96(%rsp), %rcx
	leaq	6984(%r13), %rdx
	testb	%bl, %bl
	cmovne	144(%rsp), %r14d
	movl	%r14d, %r8d
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%r13)
	movl	$0xbe99999a, 10204(%r13)
	jmp	.L6922
.L7461:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r10d, 148(%rsp)
	movl	%r8d, 144(%rsp)
	movl	84(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	movl	148(%rsp), %r10d
	testb	%al, %al
	je	.L6944
	movl	144(%rsp), %r8d
	leaq	6984(%r13), %rdx
	cmpb	$0, 285(%r13)
	movq	96(%rsp), %rcx
	cmove	%r8d, %r15d
	movl	%r15d, %r8d
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%r13)
	movl	$0xbe99999a, 10204(%r13)
	jmp	.L6922
.L6939:
	movq	96(%rsp), %rcx
	leaq	6984(%r13), %rdx
	cmpb	$1, %bl
	sbbl	%r8d, %r8d
	andl	$-4, %r8d
	addl	$65543, %r8d
	orl	%r12d, %r8d
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%r13)
	movl	$0xbe99999a, 10204(%r13)
	jmp	.L6922
.L6944:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r10d, 144(%rsp)
	movl	88(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L6946
	cmpl	$0, 120(%rsp)
	movl	144(%rsp), %r10d
	je	.L7462
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	92(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
.L6951:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	96(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L7463
	movl	576(%rsp), %ecx
	andl	$2048, %ecx
	testl	%esi, %esi
	je	.L6958
	testl	%ecx, %ecx
	movzbl	285(%r13), %edx
	je	.L6959
	testb	%dl, %dl
	jne	.L6960
.L6958:
	movq	GImGui(%rip), %rdx
	movb	%al, 124(%rsp)
	movl	$0, 6068(%rdx)
	movb	$0, 6078(%rdx)
	movb	$1, 6077(%rdx)
	movq	$0, 6088(%rdx)
	jmp	.L6922
.L7463:
	testl	$1024, 576(%rsp)
	movq	GImGui(%rip), %rdx
	je	.L6963
	movl	52(%rdx), %ecx
	movl	$1, %edx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L7415
	cmpb	$0, 285(%r13)
	jne	.L7415
	cmpb	$0, 286(%r13)
	jne	.L7415
	movzbl	287(%r13), %eax
	testb	%al, %al
	movb	%al, 124(%rsp)
	je	.L7384
.L7415:
	movq	GImGui(%rip), %rdx
.L6963:
	movl	100(%rdx), %ecx
	movl	$1, %edx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	%eax, %r12d
	je	.L7464
	movq	GImGui(%rip), %rax
	cmpl	$0, 120(%rsp)
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	jne	.L6970
	testl	%ebp, %ebp
	movq	6944(%r13), %rdx
	movb	$0, 124(%rsp)
	jle	.L7004
	movq	552(%rsp), %rcx
	movq	%rbp, %r8
	call	strncpy
	movq	552(%rsp), %rax
	movb	$0, -1(%rax,%rbp)
	jmp	.L7005
.L7384:
	cmpl	$0, 120(%rsp)
	je	.L7465
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	100(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	%eax, %ebx
	je	.L7466
	movq	GImGui(%rip), %rax
	xorl	%r12d, %r12d
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	jmp	.L6886
.L7464:
	cmpb	$0, 136(%rsp)
	jne	.L7467
.L6971:
	movb	$0, 124(%rsp)
	jmp	.L6922
.L7466:
	cmpb	$0, 136(%rsp)
	je	.L7006
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	124(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	120(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
.L7133:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	104(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movb	%al, 124(%rsp)
	je	.L7468
	movl	6972(%r13), %eax
	movb	$0, 6999(%r13)
	movl	$0, 6988(%r13)
	movb	$1, 10208(%r13)
	movb	$0, 124(%rsp)
	movl	%eax, 6992(%r13)
	movl	%eax, 6984(%r13)
	jmp	.L6922
.L7465:
	movq	592(%rsp), %r9
	movl	$9, 240(%rsp)
	movq	584(%rsp), %r8
	movl	576(%rsp), %edx
	movq	112(%rsp), %rcx
	call	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	je	.L6952
	movl	240(%rsp), %r8d
	leaq	6984(%r13), %rdx
	movq	96(%rsp), %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%r13)
	movl	$0xbe99999a, 10204(%r13)
	jmp	.L6952
.L7467:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	124(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	cmpl	$0, 120(%rsp)
	sete	%dil
	testb	%dil, %dil
	movl	%edi, %ebx
	je	.L6972
	testb	%al, %al
	jne	.L7469
.L6972:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	120(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%dil, %dil
	je	.L7133
	testb	%al, %al
	je	.L7133
	leaq	6984(%r13), %rdx
	movl	$65547, %r8d
.L7418:
	movq	96(%rsp), %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movl	6984(%r13), %eax
	movb	$1, 10208(%r13)
	movl	$0xbe99999a, 10204(%r13)
	movl	%eax, 6992(%r13)
	movl	%eax, 6988(%r13)
.L6957:
	movl	6920(%r13), %eax
	leaq	6952(%r13), %rcx
	leal	0(,%rax,4), %edx
	call	_ZN8ImVectorIcE6resizeEi
	movl	6952(%r13), %edx
	xorl	%r9d, %r9d
	movq	6960(%r13), %rcx
	movq	6928(%r13), %r8
	call	_Z15ImTextStrToUtf8PciPKtS1_
	movb	$0, 124(%rsp)
	testl	$448, 576(%rsp)
	jne	.L7136
	jmp	.L7007
.L7468:
	cmpl	$0, 128(%rsp)
	movq	GImGui(%rip), %rdx
	je	.L7470
.L6974:
	movl	112(%rdx), %ecx
	movl	$1, %edx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L6971
	cmpl	$0, 120(%rsp)
	jne	.L6961
	movq	GImGui(%rip), %rdx
	movq	208(%rdx), %rax
	testq	%rax, %rax
	je	.L7153
	movq	224(%rdx), %rcx
	call	*%rax
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L6952
	movq	GImGui(%rip), %rdx
.L6987:
	xorl	%eax, %eax
	movq	%r12, %rdi
	orq	$-1, %rcx
	repnz scasb
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	addl	$1, 844(%rdx)
	movq	%rcx, %rax
	notl	%eax
	movslq	%eax, %rcx
	addq	%rcx, %rcx
	call	*232(%rdx)
	movq	%rax, %rdi
.L6988:
	leaq	(%r15,%r15), %r14
	addq	%rdi, %r14
	cmpb	$0, (%r12)
	je	.L6989
	movq	112(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %r12
	movl	240(%rsp), %eax
	testl	%eax, %eax
	je	.L6989
	cmpl	$65535, %eax
	ja	.L6988
	movq	592(%rsp), %r9
	movq	584(%rsp), %r8
	movl	576(%rsp), %edx
	movq	112(%rsp), %rcx
	call	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	je	.L6988
	movl	240(%rsp), %eax
	addl	$1, %ebx
	movslq	%ebx, %r15
	movw	%ax, (%r14)
	jmp	.L6988
.L7469:
	leaq	6984(%r13), %rdx
	movl	$65546, %r8d
	jmp	.L7418
.L6989:
	testl	%ebx, %ebx
	movw	$0, (%r14)
	jne	.L7471
.L6993:
	testq	%rdi, %rdi
	movq	GImGui(%rip), %rax
	je	.L7003
	subl	$1, 844(%rax)
.L7003:
	movq	%rdi, %rcx
	call	*240(%rax)
	jmp	.L6952
.L7471:
	movl	6988(%r13), %ecx
	leaq	6984(%r13), %rdx
	movl	6992(%r13), %r8d
	movl	6972(%r13), %eax
	cmpl	%r8d, %ecx
	je	.L6995
	cmpl	%ecx, %eax
	jge	.L6996
	cmpl	%r8d, %eax
	movl	%eax, 6988(%r13)
	movl	%eax, %ecx
	jge	.L6997
.L7135:
	movl	%eax, 6992(%r13)
.L6997:
	cmpl	6992(%r13), %ecx
	jne	.L6995
	movl	%ecx, 6984(%r13)
.L6995:
	cmpl	6984(%r13), %eax
	jge	.L6999
	movl	%eax, 6984(%r13)
.L6999:
	movq	96(%rsp), %r14
	movq	%r14, %rcx
	call	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
	movl	%ebx, %r9d
	movq	%rdi, %r8
	movq	%r14, %rcx
	movl	6984(%r13), %edx
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
	testb	%al, %al
	jne	.L7472
	movzwl	10194(%r13), %eax
	testw	%ax, %ax
	je	.L7002
	subl	$1, %eax
	movw	%ax, 10194(%r13)
.L7002:
	movb	$1, 10208(%r13)
	jmp	.L6993
.L7472:
	leaq	7008(%r13), %rcx
	xorl	%edx, %edx
	movl	6984(%r13), %r12d
	call	_ZN8ImGuiStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi
	testq	%rax, %rax
	je	.L7001
	movl	%r12d, (%rax)
	movw	$0, 4(%rax)
	movw	%bx, 6(%rax)
	movw	$-1, 8(%rax)
.L7001:
	addl	%ebx, 6984(%r13)
	movb	$0, 6999(%r13)
	jmp	.L7002
.L6996:
	cmpl	%r8d, %eax
	jl	.L7135
	jmp	.L6995
.L7153:
	leaq	.LC98(%rip), %r12
	jmp	.L6987
.L6961:
	movb	$0, 124(%rsp)
	jmp	.L7006
.L7470:
	movl	116(%rdx), %ecx
	movl	$1, %edx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L6975
	testb	%bl, %bl
	je	.L6975
.L6978:
	testl	%esi, %esi
	je	.L6976
	movl	6992(%r13), %eax
	cmpl	%eax, 6988(%r13)
	je	.L7416
.L6976:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	116(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	%eax, %ebx
	je	.L6979
	movl	6988(%r13), %edx
	movl	6992(%r13), %eax
	movq	216(%r13), %rcx
	cmpl	%eax, %edx
	je	.L7473
	testq	%rcx, %rcx
	je	.L6984
.L6983:
	cmpl	%eax, %edx
	movl	%eax, %edi
	cmovge	%edx, %eax
	cmovle	%edx, %edi
	movl	%eax, %r12d
.L7118:
	leaq	6952(%r13), %rcx
	movl	%r12d, %eax
	subl	%edi, %eax
	leal	1(,%rax,4), %edx
	call	_ZN8ImVectorIcE6resizeEi
	movq	6928(%r13), %r8
	movslq	%r12d, %r9
	movslq	%edi, %rax
	movl	6952(%r13), %edx
	addq	%rax, %rax
	addq	%r9, %r9
	movq	6960(%r13), %rcx
	addq	%r8, %r9
	addq	%rax, %r8
	call	_Z15ImTextStrToUtf8PciPKtS1_
	movq	GImGui(%rip), %rax
	movq	6960(%r13), %rdx
	movq	216(%rax), %r8
	testq	%r8, %r8
	je	.L6986
	movq	224(%rax), %rcx
	call	*%r8
.L6986:
	testb	%bl, %bl
	je	.L6971
.L6984:
	movl	6992(%r13), %eax
	movb	$1, 10208(%r13)
	leaq	6984(%r13), %rdx
	cmpl	%eax, 6988(%r13)
	je	.L6971
	movq	96(%rsp), %rcx
	call	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
	movb	$0, 6999(%r13)
	jmp	.L6922
.L7473:
	movl	6972(%r13), %eax
	testq	%rcx, %rcx
	movl	$0, 6988(%r13)
	movb	$0, 6999(%r13)
	movl	%eax, 6992(%r13)
	movl	%eax, 6984(%r13)
	je	.L6984
.L6981:
	movl	6988(%r13), %edx
	movl	6992(%r13), %eax
	cmpl	%eax, %edx
	jne	.L6983
	movl	6972(%r13), %r12d
	xorl	%edi, %edi
	jmp	.L7118
.L6979:
	cmpq	$0, 216(%r13)
	jne	.L6981
	jmp	.L6971
.L6975:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	108(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	jne	.L6978
.L7416:
	movq	GImGui(%rip), %rdx
	jmp	.L6974
.L7462:
	movq	96(%rsp), %rcx
	leaq	6984(%r13), %rdx
	movl	%r10d, %r8d
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%r13)
	movl	$0xbe99999a, 10204(%r13)
	jmp	.L6952
.L6946:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	92(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	cmpl	$0, 120(%rsp)
	jne	.L6951
	testb	%al, %al
	je	.L6951
	movl	6992(%r13), %eax
	leaq	6984(%r13), %rbx
	cmpl	%eax, 6988(%r13)
	je	.L7376
.L7414:
	movss	.LC180(%rip), %xmm6
.L6955:
	movq	96(%rsp), %rcx
	movl	%edi, %r8d
	movq	%rbx, %rdx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%r13)
	movss	%xmm6, 10204(%r13)
	jmp	.L6957
.L7376:
	cmpb	$0, 132(%rsp)
	movl	$196620, %r8d
	jne	.L7413
	cmpb	$0, 192(%r13)
	je	.L7414
	cmpb	$0, 288(%r13)
	je	.L7414
	cmpb	$0, 287(%r13)
	jne	.L7414
	cmpb	$0, 285(%r13)
	jne	.L7414
	movl	$196612, %r8d
.L7413:
	movq	96(%rsp), %rcx
	movq	%rbx, %rdx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movss	.LC180(%rip), %xmm6
	movb	$1, 10208(%r13)
	movss	%xmm6, 10204(%r13)
	jmp	.L6955
.L7451:
	movl	$1, %edx
	movb	%r11b, 148(%rsp)
	movl	%r10d, 136(%rsp)
	movl	%r9d, 132(%rsp)
	movl	%r8d, 124(%rsp)
	call	_ZN5ImGui12IsKeyPressedEib
	movl	124(%rsp), %r8d
	testb	%al, %al
	movl	132(%rsp), %r9d
	movl	136(%rsp), %r10d
	movzbl	148(%rsp), %r11d
	jne	.L6921
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movb	%r11b, 148(%rsp)
	movl	%r10d, 136(%rsp)
	movl	%r9d, 132(%rsp)
	movl	%r8d, 124(%rsp)
	movl	60(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	movl	124(%rsp), %r8d
	testb	%al, %al
	movl	%eax, %ebx
	movl	132(%rsp), %r9d
	movl	136(%rsp), %r10d
	movzbl	148(%rsp), %r11d
	jne	.L6923
	movb	%r11b, 132(%rsp)
	movb	$0, 136(%rsp)
	jmp	.L6924
.L7448:
	testb	%al, %al
	jne	.L6911
	movzbl	124(%rsp), %eax
	movb	$0, 132(%rsp)
	movb	%al, 136(%rsp)
	jmp	.L6915
.L7182:
	movl	$1, %ebx
	xorl	%r15d, %r15d
	movl	$1, %ebp
	movl	$-999, %edi
	jmp	.L7031
.L7438:
	cmpb	$0, 876(%r13)
	je	.L6884
	movq	GImGui(%rip), %rax
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	movl	6068(%r13), %eax
	jmp	.L6883
.L6884:
	movl	576(%rsp), %eax
	andl	$16384, %eax
	movl	%eax, 120(%rsp)
	jmp	.L6885
	.seh_endproc
	.section .rdata,"dr"
.LC292:
	.ascii "%.*d\0"
.LC293:
	.ascii "%.*f\0"
.LC294:
	.ascii "g.ActiveId == id\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji
	.def	_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji
_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji:
.LFB922:
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
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movl	224(%rsp), %ebp
	movq	6008(%rbx), %rax
	movq	%rdx, %r14
	movq	%r9, %r12
	movq	%rcx, %rsi
	movl	232(%rsp), %r9d
	movl	%r8d, %edi
	movb	$1, 138(%rax)
	movl	10328(%rbx), %edx
	movq	6008(%rbx), %rax
	movb	$0, 6078(%rbx)
	movb	$1, 6077(%rbx)
	testl	%edx, %edx
	movl	%edx, 6068(%rbx)
	je	.L7475
	movb	$1, 6076(%rbx)
.L7475:
	movq	%rax, 6088(%rbx)
	movl	$0, 6056(%rbx)
	movb	$0, 6060(%rbx)
	subl	$1, 688(%rax)
	subl	$1, 692(%rax)
	testl	%edi, %edi
	jne	.L7476
	movl	(%r12), %eax
	leaq	96(%rsp), %r13
	testl	%r9d, %r9d
	js	.L7492
	movl	%eax, 32(%rsp)
	leaq	.LC292(%rip), %r8
	movl	$32, %edx
	movq	%r13, %rcx
	call	_Z14ImFormatStringPciPKcz
.L7478:
	movss	12(%rsi), %xmm0
	leaq	88(%rsp), %r9
	movq	%r13, %rdx
	movq	%r14, %rcx
	subss	4(%rsi), %xmm0
	movl	$32, %r8d
	movq	$0, 48(%rsp)
	movss	8(%rsi), %xmm1
	movl	$17, 32(%rsp)
	movq	$0, 40(%rsp)
	subss	(%rsi), %xmm1
	movss	%xmm0, 92(%rsp)
	movss	%xmm1, 88(%rsp)
	call	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	movl	10328(%rbx), %edx
	testl	%edx, %edx
	jne	.L7480
	cmpl	%ebp, 6068(%rbx)
	movl	%ebp, %edx
	jne	.L7493
.L7481:
	movl	%edx, 10328(%rbx)
	movq	GImGui(%rip), %rdx
	movl	%ebp, 6056(%rdx)
	movb	$0, 6060(%rdx)
.L7482:
	testb	%al, %al
	je	.L7474
	movq	GImGui(%rip), %rax
	movq	%r12, %r9
	movl	%edi, %r8d
	movq	%r13, %rcx
	movq	6944(%rax), %rdx
	movq	$0, 32(%rsp)
	call	_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_
.L7474:
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
.L7476:
	leaq	96(%rsp), %r13
	cmpl	$1, %edi
	jne	.L7478
	testl	%r9d, %r9d
	pxor	%xmm0, %xmm0
	cvtss2sd	(%r12), %xmm0
	js	.L7494
	movsd	%xmm0, 32(%rsp)
	leaq	.LC293(%rip), %r8
	movl	$32, %edx
	movq	%r13, %rcx
	call	_Z14ImFormatStringPciPKcz
	jmp	.L7478
	.p2align 4,,10
.L7480:
	cmpl	6068(%rbx), %edx
	je	.L7482
	movl	$0, 10328(%rbx)
	jmp	.L7482
	.p2align 4,,10
.L7493:
	leaq	.LC5(%rip), %rdx
	movl	$6411, %r8d
	movb	%al, 79(%rsp)
	leaq	.LC294(%rip), %rcx
	call	_assert
	movl	6068(%rbx), %edx
	movzbl	79(%rsp), %eax
	jmp	.L7481
	.p2align 4,,10
.L7492:
	movl	%eax, %r9d
	movl	$32, %edx
	movq	%r13, %rcx
	leaq	.LC20(%rip), %r8
	call	_Z14ImFormatStringPciPKcz
	jmp	.L7478
	.p2align 4,,10
.L7494:
	movapd	%xmm0, %xmm3
	movq	%xmm0, %r9
	movl	$32, %edx
	leaq	.LC21(%rip), %r8
	movq	%r13, %rcx
	call	_Z14ImFormatStringPciPKcz
	jmp	.L7478
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	.def	_ZN5ImGui11SliderFloatEPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11SliderFloatEPKcPfffS1_f
_ZN5ImGui11SliderFloatEPKcPfffS1_f:
.LFB927:
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
	subq	$240, %rsp
	.seh_stackalloc	240
	movaps	%xmm6, 192(%rsp)
	.seh_savexmm	%xmm6, 192
	movaps	%xmm7, 208(%rsp)
	.seh_savexmm	%xmm7, 208
	movaps	%xmm8, 224(%rsp)
	.seh_savexmm	%xmm8, 224
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	xorl	%edi, %edi
	movq	6008(%rbx), %rax
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movaps	%xmm3, %xmm6
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rsi
	cmpb	$0, 140(%rsi)
	je	.L7529
.L7495:
	movaps	192(%rsp), %xmm6
	movl	%edi, %eax
	movaps	208(%rsp), %xmm7
	movaps	224(%rsp), %xmm8
	addq	$240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L7529:
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	movss	%xmm2, 76(%rsp)
	pxor	%xmm8, %xmm8
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, 84(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rbp, %rcx
	movss	.LC1(%rip), %xmm3
	movss	%xmm0, 72(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	72(%rsp), %xmm0
	pxor	%xmm3, %xmm3
	movss	5160(%rbx), %xmm1
	movd	%eax, %xmm7
	shrq	$32, %rax
	movd	%eax, %xmm4
	ucomiss	%xmm8, %xmm7
	movq	192(%rsi), %rax
	addss	%xmm1, %xmm1
	movss	76(%rsp), %xmm2
	addss	192(%rsi), %xmm0
	addss	%xmm4, %xmm1
	movq	%rax, 96(%rsp)
	addss	196(%rsi), %xmm1
	movss	%xmm0, 104(%rsp)
	movss	%xmm1, 108(%rsp)
	jbe	.L7497
	movss	5176(%rbx), %xmm3
	addss	%xmm7, %xmm3
.L7497:
	movq	96(%rsp), %rax
	addss	%xmm3, %xmm0
	leaq	84(%rsp), %rdx
	movss	%xmm2, 72(%rsp)
	addss	%xmm8, %xmm1
	leaq	112(%rsp), %rcx
	movss	%xmm0, 120(%rsp)
	movq	%rax, 112(%rsp)
	movss	%xmm1, 124(%rsp)
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	movss	72(%rsp), %xmm2
	testb	%al, %al
	movl	%eax, %edi
	je	.L7530
	movl	84(%rsp), %edi
	leaq	96(%rsp), %r13
	xorl	%r8d, %r8d
	movss	%xmm2, 72(%rsp)
	movq	%r13, %rcx
	movl	%edi, %edx
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	movss	72(%rsp), %xmm2
	testb	%al, %al
	movl	%eax, %r14d
	je	.L7500
	movq	GImGui(%rip), %rax
	movl	%edi, 6056(%rax)
	movb	$0, 6060(%rax)
.L7500:
	cmpq	$0, 336(%rsp)
	leaq	.LC240(%rip), %rax
	movl	$3, %edx
	movss	%xmm2, 72(%rsp)
	cmovne	336(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 336(%rsp)
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rsi, %rcx
	movl	%eax, %edi
	movl	84(%rsp), %eax
	cmpl	%eax, 6068(%rbx)
	sete	%dl
	call	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb
	testb	%al, %al
	jne	.L7502
	testb	%r14b, %r14b
	movl	84(%rsp), %eax
	movss	72(%rsp), %xmm2
	je	.L7503
	cmpb	$0, 876(%rbx)
	je	.L7503
	movq	GImGui(%rip), %rdx
	testl	%eax, %eax
	movl	%eax, 6068(%rdx)
	movb	$0, 6078(%rdx)
	movb	$1, 6077(%rdx)
	je	.L7531
	movb	$1, 6076(%rdx)
	movq	%rsi, %rcx
	movq	%rsi, 6088(%rdx)
	movss	%xmm2, 72(%rsp)
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movss	72(%rsp), %xmm2
.L7508:
	cmpb	$0, 285(%rbx)
	movl	84(%rsp), %eax
	jne	.L7511
.L7503:
	cmpl	%eax, 6068(%rbx)
	jne	.L7506
	cmpl	%eax, 10328(%rbx)
	je	.L7505
.L7506:
	movss	124(%rsp), %xmm0
	leaq	128(%rsp), %rsi
	movss	%xmm2, 72(%rsp)
	subss	116(%rsp), %xmm0
	movq	%rsi, %rcx
	movss	120(%rsp), %xmm3
	subss	112(%rsp), %xmm3
	movss	5160(%rbx), %xmm1
	movss	%xmm0, 132(%rsp)
	movss	%xmm3, 128(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movl	84(%rsp), %edx
	movl	%edi, 48(%rsp)
	movq	%r12, %r8
	movss	72(%rsp), %xmm2
	movq	%r13, %rcx
	movl	$0, 56(%rsp)
	movss	344(%rsp), %xmm0
	movss	%xmm6, 32(%rsp)
	movaps	%xmm2, %xmm3
	movss	%xmm0, 40(%rsp)
	call	_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii
	movq	336(%rsp), %r8
	movq	%rsi, %rcx
	movl	$64, %edx
	pxor	%xmm0, %xmm0
	cvtss2sd	(%r12), %xmm0
	movapd	%xmm0, %xmm3
	movl	%eax, %edi
	movq	%xmm0, %r9
	call	_Z14ImFormatStringPciPKcz
	leaq	88(%rsp), %rcx
	movq	%rsi, %r8
	movabsq	$4539628425446424576, %rdx
	cltq
	movq	%rdx, 88(%rsp)
	movq	%rcx, 40(%rsp)
	leaq	8(%r13), %rdx
	movq	%r13, %rcx
	movq	$0, 48(%rsp)
	leaq	(%rsi,%rax), %r9
	movq	$0, 32(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	ucomiss	%xmm8, %xmm7
	jbe	.L7495
	movss	100(%rsp), %xmm1
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	%rbp, %rdx
	addss	5160(%rbx), %xmm1
	movss	104(%rsp), %xmm0
	addss	5176(%rbx), %xmm0
	movd	%xmm1, %ecx
	movq	%rcx, %rax
	salq	$32, %rax
	movd	%xmm0, %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L7495
	.p2align 4,,10
.L7530:
	movss	124(%rsp), %xmm0
	leaq	128(%rsp), %rcx
	subss	116(%rsp), %xmm0
	movss	120(%rsp), %xmm2
	subss	112(%rsp), %xmm2
	movss	5160(%rbx), %xmm1
	movss	%xmm0, 132(%rsp)
	movss	%xmm2, 128(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	jmp	.L7495
	.p2align 4,,10
.L7502:
	movl	84(%rsp), %edx
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movl	%edx, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	je	.L7528
	movb	$1, 6076(%rax)
.L7528:
	movq	%rsi, 6088(%rax)
	movq	%rsi, %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	84(%rsp), %eax
.L7511:
	movl	$0, 10328(%rbx)
.L7505:
	movl	%edi, 40(%rsp)
	movq	%r12, %r9
	movl	$1, %r8d
	movq	%rbp, %rdx
	movl	%eax, 32(%rsp)
	movq	%r13, %rcx
	call	_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji
	movl	%eax, %edi
	jmp	.L7495
.L7531:
	movq	%rsi, 6088(%rdx)
	movq	%rsi, %rcx
	movss	%xmm2, 72(%rsp)
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movss	72(%rsp), %xmm2
	jmp	.L7508
	.seh_endproc
	.section .rdata,"dr"
.LC297:
	.ascii "%.0f deg\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11SliderAngleEPKcPfff
	.def	_ZN5ImGui11SliderAngleEPKcPfff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11SliderAngleEPKcPfff
_ZN5ImGui11SliderAngleEPKcPfff:
.LFB929:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movss	.LC295(%rip), %xmm7
	leaq	.LC297(%rip), %rax
	movss	.LC296(%rip), %xmm6
	movss	(%rdx), %xmm0
	mulss	%xmm7, %xmm0
	movq	%rdx, %rbx
	movl	$0x3f800000, 40(%rsp)
	leaq	60(%rsp), %rdx
	movq	%rax, 32(%rsp)
	divss	%xmm6, %xmm0
	movss	%xmm0, 60(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	mulss	60(%rsp), %xmm6
	divss	%xmm7, %xmm6
	movaps	80(%rsp), %xmm7
	movss	%xmm6, (%rbx)
	movaps	64(%rsp), %xmm6
	addq	$96, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9SliderIntEPKcPiiiS1_
	.def	_ZN5ImGui9SliderIntEPKcPiiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9SliderIntEPKcPiiiS1_
_ZN5ImGui9SliderIntEPKcPiiiS1_:
.LFB930:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movq	112(%rsp), %rax
	movq	%rdx, %rbx
	testq	%rax, %rax
	movl	$0x3f800000, 40(%rsp)
	cvtsi2ss	(%rbx), %xmm0
	leaq	.LC241(%rip), %rdx
	cmove	%rdx, %rax
	cvtsi2ss	%r9d, %xmm3
	cvtsi2ss	%r8d, %xmm2
	leaq	60(%rsp), %rdx
	movq	%rax, 32(%rsp)
	movss	%xmm0, 60(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	cvttss2si	60(%rsp), %edx
	movl	%edx, (%rbx)
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC298:
	.ascii "LogButtons\0"
.LC299:
	.ascii "Log To TTY\0"
.LC300:
	.ascii "Log To File\0"
.LC301:
	.ascii "Log To Clipboard\0"
.LC303:
	.ascii "Depth\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10LogButtonsEv
	.def	_ZN5ImGui10LogButtonsEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10LogButtonsEv
_ZN5ImGui10LogButtonsEv:
.LFB889:
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
	leaq	.LC298(%rip), %rcx
	movq	GImGui(%rip), %rbx
	call	_ZN5ImGui6PushIDEPKc
	leaq	56(%rsp), %r12
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	leaq	.LC299(%rip), %rcx
	movq	%r12, %rdx
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	movq	GImGui(%rip), %rdx
	movl	%eax, %edi
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7536
	movss	5168(%rdx), %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L7536:
	leaq	.LC300(%rip), %rcx
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	movq	$0, 56(%rsp)
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	movq	GImGui(%rip), %rdx
	movl	%eax, %esi
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7537
	movss	5168(%rdx), %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L7537:
	leaq	.LC301(%rip), %rcx
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	movq	$0, 56(%rsp)
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	movq	GImGui(%rip), %rdx
	movl	%eax, %ebp
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7538
	movss	5168(%rdx), %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7538:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rcx
	movl	$0x42a00000, 308(%rcx)
	leaq	308(%rcx), %rdx
	addq	$320, %rcx
	call	_ZN8ImVectorIfE9push_backERKf
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r13
	movslq	352(%r13), %rax
	movb	$0, 316(%r13)
	cmpl	356(%r13), %eax
	je	.L7539
	movq	360(%r13), %r15
.L7540:
	leal	1(%rax), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movss	.LC304(%rip), %xmm3
	movl	%edx, 352(%r13)
	leaq	.LC303(%rip), %rcx
	movq	%r12, %rdx
	cvtsi2ss	11460(%rbx), %xmm0
	movb	$0, (%r15,%rax)
	leaq	.LC241(%rip), %rax
	movl	$0x3f800000, 40(%rsp)
	movq	%rax, 32(%rsp)
	movss	%xmm0, 56(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	cvttss2si	56(%rsp), %eax
	movl	%eax, 11460(%rbx)
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %r12
	movl	352(%r12), %eax
	testl	%eax, %eax
	jle	.L7569
.L7545:
	subl	$1, %eax
	movl	$1, %edx
	cmpl	$0, %eax
	movl	%eax, 352(%r12)
	je	.L7546
	jle	.L7570
.L7547:
	movq	360(%r12), %rdx
	cltq
	movzbl	-1(%rdx,%rax), %edx
.L7546:
	movb	%dl, 316(%r12)
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui5PopIDEv
	testb	%dil, %dil
	jne	.L7571
.L7549:
	testb	%sil, %sil
	jne	.L7572
.L7552:
	testb	%bpl, %bpl
	je	.L7535
	movq	GImGui(%rip), %rsi
	cmpb	$0, 11432(%rsi)
	jne	.L7535
	movl	11460(%rbx), %edi
	movq	6008(%rsi), %r12
.L7560:
	movb	$1, 11432(%rsi)
	testl	%edi, %edi
	movq	$0, 11440(%rsi)
	movl	244(%r12), %eax
	movl	%eax, 11456(%rsi)
	js	.L7535
	movl	%edi, 11460(%rsi)
.L7535:
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
.L7539:
	leal	1(%rax), %r14d
	testl	%eax, %eax
	movl	$8, %ecx
	jne	.L7573
.L7541:
	cmpl	%ecx, %r14d
	cmovl	%ecx, %r14d
	addl	$1, 844(%rdx)
	movslq	%r14d, %rcx
	call	*232(%rdx)
	movq	360(%r13), %rcx
	movq	%rax, %r15
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L7544
	movslq	352(%r13), %r8
	movq	%rcx, %rdx
	movq	%r15, %rcx
	call	memcpy
	movq	360(%r13), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L7544
	subl	$1, 844(%rax)
.L7544:
	call	*240(%rax)
	movq	%r15, 360(%r13)
	movslq	352(%r13), %rax
	movl	%r14d, 356(%r13)
	jmp	.L7540
	.p2align 4,,10
.L7572:
	movq	GImGui(%rip), %rsi
	cmpb	$0, 11432(%rsi)
	jne	.L7535
	movq	32(%rbx), %rcx
	movl	11460(%rbx), %edi
	movq	6008(%rsi), %r12
	testq	%rcx, %rcx
	je	.L7574
.L7555:
	leaq	.LC171(%rip), %rdx
	call	_Z10ImFileOpenPKcS0_
	testq	%rax, %rax
	movq	%rax, 11440(%rsi)
	je	.L7575
	movb	$1, 11432(%rsi)
	movl	244(%r12), %eax
	testl	%edi, %edi
	movl	%eax, 11456(%rsi)
	js	.L7552
	movl	%edi, 11460(%rsi)
	jmp	.L7552
	.p2align 4,,10
.L7571:
	movq	GImGui(%rip), %rdi
	cmpb	$0, 11432(%rdi)
	jne	.L7549
	movq	6008(%rdi), %r13
	movl	11460(%rbx), %r12d
	movb	$1, 11432(%rdi)
	call	*__imp___iob_func(%rip)
	addq	$48, %rax
	movq	%rax, 11440(%rdi)
	movl	244(%r13), %eax
	testl	%r12d, %r12d
	movl	%eax, 11456(%rdi)
	js	.L7549
	movl	%r12d, 11460(%rdi)
	jmp	.L7549
	.p2align 4,,10
.L7569:
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	352(%r12), %eax
	jmp	.L7545
	.p2align 4,,10
.L7573:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	jmp	.L7541
	.p2align 4,,10
.L7570:
	leaq	.LC2(%rip), %rdx
	movl	$866, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	352(%r12), %eax
	jmp	.L7547
	.p2align 4,,10
.L7574:
	movq	32(%rsi), %rcx
	testq	%rcx, %rcx
	jne	.L7555
	testb	%bpl, %bpl
	jne	.L7560
	jmp	.L7535
	.p2align 4,,10
.L7575:
	leaq	.LC5(%rip), %rdx
	movl	$5820, %r8d
	leaq	.LC172(%rip), %rcx
	call	_assert
	jmp	.L7552
	.seh_endproc
	.section .rdata,"dr"
.LC305:
	.ascii "##v\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12SliderFloatNEPKcPfiffS1_f
	.def	_ZN5ImGui12SliderFloatNEPKcPfiffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SliderFloatNEPKcPfiffS1_f
_ZN5ImGui12SliderFloatNEPKcPfiffS1_f:
.LFB932:
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
	movq	GImGui(%rip), %rbp
	movq	200(%rsp), %r14
	movss	208(%rsp), %xmm7
	movq	6008(%rbp), %rax
	movq	%rcx, %r13
	movq	%rdx, %rsi
	movl	%r8d, %r12d
	movaps	%xmm3, %xmm6
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %edi
	testb	%dil, %dil
	je	.L7592
	xorl	%edi, %edi
.L7576:
	movaps	48(%rsp), %xmm6
	movl	%edi, %eax
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
.L7592:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%r12d, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.133
	testl	%r12d, %r12d
	jle	.L7578
	leaq	.LC305(%rip), %r15
	xorl	%ebx, %ebx
	.p2align 4,,10
.L7579:
	movl	%ebx, %ecx
	addl	$1, %ebx
	call	_ZN5ImGui6PushIDEi
	movq	%rsi, %rdx
	movaps	%xmm6, %xmm2
	movq	%r15, %rcx
	movss	192(%rsp), %xmm3
	movss	%xmm7, 40(%rsp)
	addq	$4, %rsi
	movq	%r14, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	movss	5176(%rbp), %xmm0
	orl	%eax, %edi
	call	_ZN5ImGui8SameLineEff.constprop.126
	call	_ZN5ImGui5PopIDEv
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	%ebx, %r12d
	jne	.L7579
.L7578:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7580
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7581
	jmp	.L7580
	.p2align 4,,10
.L7582:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7580
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7580
.L7581:
	cmpb	$35, %al
	jne	.L7582
	cmpb	$35, 1(%rdx)
	jne	.L7582
	.p2align 4,,10
.L7580:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7576
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
	.def	_ZN5ImGui12SliderFloat2EPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
_ZN5ImGui12SliderFloat2EPKcPfffS1_f:
.LFB933:
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
	movq	GImGui(%rip), %rbp
	movq	224(%rsp), %r12
	movss	232(%rsp), %xmm8
	movq	6008(%rbp), %rax
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movaps	%xmm2, %xmm6
	movaps	%xmm3, %xmm7
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %esi
	testb	%sil, %sil
	je	.L7617
	xorl	%esi, %esi
.L7593:
	movaps	48(%rsp), %xmm6
	movl	%esi, %eax
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
.L7617:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorl	%edi, %edi
	pxor	%xmm9, %xmm9
	call	_ZN5ImGui6PushIDEPKc
	leaq	.LC305(%rip), %r14
	call	_ZL20PushMultiItemsWidthsif.constprop.132
	jmp	.L7595
	.p2align 4,,10
.L7599:
	subl	$1, %eax
	addq	$4, %rbx
	movl	%eax, 496(%r15)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$1, %edi
	je	.L7600
.L7601:
	movl	$1, %edi
.L7595:
	movl	%edi, %ecx
	call	_ZN5ImGui6PushIDEi
	movq	%rbx, %rdx
	movq	%r12, 32(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm8, 40(%rsp)
	movaps	%xmm6, %xmm2
	movq	%r14, %rcx
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	movq	GImGui(%rip), %rdx
	orl	%eax, %esi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7596
	ucomiss	%xmm0, %xmm9
	jbe	.L7597
	movss	5168(%rdx), %xmm0
.L7597:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7596:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r15
	movl	496(%r15), %eax
	testl	%eax, %eax
	jg	.L7599
	movl	$885, %r8d
	addq	$4, %rbx
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	subl	$1, 496(%r15)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$1, %edi
	jne	.L7601
.L7600:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7602
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7603
	jmp	.L7602
	.p2align 4,,10
.L7604:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7602
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7602
.L7603:
	cmpb	$35, %al
	jne	.L7604
	cmpb	$35, 1(%rdx)
	jne	.L7604
	.p2align 4,,10
.L7602:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7593
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12SliderFloat3EPKcPfffS1_f
	.def	_ZN5ImGui12SliderFloat3EPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SliderFloat3EPKcPfffS1_f
_ZN5ImGui12SliderFloat3EPKcPfffS1_f:
.LFB934:
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
	movq	GImGui(%rip), %rbp
	movq	224(%rsp), %r12
	movss	232(%rsp), %xmm8
	movq	6008(%rbp), %rax
	movq	%rcx, %r13
	movq	%rdx, %rsi
	movaps	%xmm2, %xmm6
	movaps	%xmm3, %xmm7
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %edi
	testb	%dil, %dil
	je	.L7644
	xorl	%edi, %edi
.L7618:
	movaps	48(%rsp), %xmm6
	movl	%edi, %eax
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
.L7644:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorl	%ebx, %ebx
	pxor	%xmm9, %xmm9
	call	_ZN5ImGui6PushIDEPKc
	leaq	.LC305(%rip), %r14
	call	_ZL20PushMultiItemsWidthsif.constprop.131
	jmp	.L7620
	.p2align 4,,10
.L7624:
	subl	$1, %eax
	movl	%eax, 496(%r15)
.L7643:
	call	_ZN5ImGui12PopItemWidthEv
	addl	$1, %ebx
	addq	$4, %rsi
	cmpl	$3, %ebx
	je	.L7645
.L7620:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	movq	%rsi, %rdx
	movq	%r12, 32(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm8, 40(%rsp)
	movaps	%xmm6, %xmm2
	movq	%r14, %rcx
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7621
	ucomiss	%xmm0, %xmm9
	jbe	.L7622
	movss	5168(%rdx), %xmm0
.L7622:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7621:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r15
	movl	496(%r15), %eax
	testl	%eax, %eax
	jg	.L7624
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	subl	$1, 496(%r15)
	jmp	.L7643
	.p2align 4,,10
.L7645:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7627
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7628
	jmp	.L7627
	.p2align 4,,10
.L7629:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7627
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7627
.L7628:
	cmpb	$35, %al
	jne	.L7629
	cmpb	$35, 1(%rdx)
	jne	.L7629
	.p2align 4,,10
.L7627:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7618
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12SliderFloat4EPKcPfffS1_f
	.def	_ZN5ImGui12SliderFloat4EPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SliderFloat4EPKcPfffS1_f
_ZN5ImGui12SliderFloat4EPKcPfffS1_f:
.LFB935:
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
	movq	GImGui(%rip), %rbp
	movq	224(%rsp), %r12
	movss	232(%rsp), %xmm8
	movq	6008(%rbp), %rax
	movq	%rcx, %r13
	movq	%rdx, %rsi
	movaps	%xmm2, %xmm6
	movaps	%xmm3, %xmm7
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %edi
	testb	%dil, %dil
	je	.L7672
	xorl	%edi, %edi
.L7646:
	movaps	48(%rsp), %xmm6
	movl	%edi, %eax
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
.L7672:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorl	%ebx, %ebx
	pxor	%xmm9, %xmm9
	call	_ZN5ImGui6PushIDEPKc
	leaq	.LC305(%rip), %r14
	call	_ZL20PushMultiItemsWidthsif.constprop.130
	jmp	.L7648
	.p2align 4,,10
.L7652:
	subl	$1, %eax
	movl	%eax, 496(%r15)
.L7671:
	call	_ZN5ImGui12PopItemWidthEv
	addl	$1, %ebx
	addq	$4, %rsi
	cmpl	$4, %ebx
	je	.L7673
.L7648:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	movq	%rsi, %rdx
	movq	%r12, 32(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm8, 40(%rsp)
	movaps	%xmm6, %xmm2
	movq	%r14, %rcx
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7649
	ucomiss	%xmm0, %xmm9
	jbe	.L7650
	movss	5168(%rdx), %xmm0
.L7650:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7649:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r15
	movl	496(%r15), %eax
	testl	%eax, %eax
	jg	.L7652
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	subl	$1, 496(%r15)
	jmp	.L7671
	.p2align 4,,10
.L7673:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7655
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7656
	jmp	.L7655
	.p2align 4,,10
.L7657:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7655
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7655
.L7656:
	cmpb	$35, %al
	jne	.L7657
	cmpb	$35, 1(%rdx)
	jne	.L7657
	.p2align 4,,10
.L7655:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7646
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SliderInt2EPKcPiiiS1_
	.def	_ZN5ImGui10SliderInt2EPKcPiiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SliderInt2EPKcPiiiS1_
_ZN5ImGui10SliderInt2EPKcPiiiS1_:
.LFB937:
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
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	movaps	%xmm9, 128(%rsp)
	.seh_savexmm	%xmm9, 128
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, %r13
	movq	%rdx, %rdi
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %esi
	testb	%sil, %sil
	je	.L7698
	xorl	%esi, %esi
.L7674:
	movaps	80(%rsp), %xmm6
	movl	%esi, %eax
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
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
.L7698:
	movl	%r9d, 60(%rsp)
	leaq	.LC241(%rip), %r12
	pxor	%xmm7, %xmm7
	pxor	%xmm6, %xmm6
	movl	%r8d, 48(%rsp)
	leaq	76(%rsp), %r15
	pxor	%xmm9, %xmm9
	call	_ZN5ImGui10BeginGroupEv
	leaq	.LC305(%rip), %r14
	movq	%r13, %rcx
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.132
	movl	60(%rsp), %r9d
	movl	48(%rsp), %r8d
	cmpq	$0, 256(%rsp)
	movss	.LC18(%rip), %xmm8
	cmovne	256(%rsp), %r12
	cvtsi2ss	%r9d, %xmm7
	xorl	%ebx, %ebx
	cvtsi2ss	%r8d, %xmm6
	jmp	.L7676
	.p2align 4,,10
.L7680:
	subl	$1, %eax
	movl	%eax, 496(%r10)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$1, %rbx
	je	.L7681
.L7682:
	movl	$1, %ebx
.L7676:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	pxor	%xmm0, %xmm0
	movq	%r15, %rdx
	movaps	%xmm7, %xmm3
	cvtsi2ss	(%rdi,%rbx,4), %xmm0
	movq	%r12, 32(%rsp)
	movaps	%xmm6, %xmm2
	movq	%r14, %rcx
	movss	%xmm8, 40(%rsp)
	movss	%xmm0, 76(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	cvttss2si	76(%rsp), %edx
	orl	%eax, %esi
	movl	%edx, (%rdi,%rbx,4)
	movq	GImGui(%rip), %rdx
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7677
	ucomiss	%xmm0, %xmm9
	jbe	.L7678
	movss	5168(%rdx), %xmm0
.L7678:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7677:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r10
	movl	496(%r10), %eax
	testl	%eax, %eax
	jg	.L7680
	movl	$885, %r8d
	movq	%r10, 48(%rsp)
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	48(%rsp), %r10
	subl	$1, 496(%r10)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$1, %rbx
	jne	.L7682
.L7681:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7683
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7684
	jmp	.L7683
	.p2align 4,,10
.L7685:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7683
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7683
.L7684:
	cmpb	$35, %al
	jne	.L7685
	cmpb	$35, 1(%rdx)
	jne	.L7685
	.p2align 4,,10
.L7683:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7674
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SliderInt4EPKcPiiiS1_
	.def	_ZN5ImGui10SliderInt4EPKcPiiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SliderInt4EPKcPiiiS1_
_ZN5ImGui10SliderInt4EPKcPiiiS1_:
.LFB939:
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
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	movaps	%xmm9, 128(%rsp)
	.seh_savexmm	%xmm9, 128
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, %r13
	movq	%rdx, %rdi
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %esi
	testb	%sil, %sil
	je	.L7723
	xorl	%esi, %esi
.L7699:
	movaps	80(%rsp), %xmm6
	movl	%esi, %eax
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
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
.L7723:
	movl	%r9d, 60(%rsp)
	pxor	%xmm7, %xmm7
	pxor	%xmm6, %xmm6
	leaq	.LC241(%rip), %r12
	movl	%r8d, 48(%rsp)
	leaq	76(%rsp), %r15
	pxor	%xmm9, %xmm9
	call	_ZN5ImGui10BeginGroupEv
	leaq	.LC305(%rip), %r14
	movq	%r13, %rcx
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.130
	movl	60(%rsp), %r9d
	movl	48(%rsp), %r8d
	movss	.LC18(%rip), %xmm8
	cmpq	$0, 256(%rsp)
	cmovne	256(%rsp), %r12
	cvtsi2ss	%r9d, %xmm7
	xorl	%ebx, %ebx
	cvtsi2ss	%r8d, %xmm6
	.p2align 4,,10
.L7701:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	pxor	%xmm0, %xmm0
	movq	%r15, %rdx
	movaps	%xmm7, %xmm3
	cvtsi2ss	(%rdi,%rbx,4), %xmm0
	movq	%r12, 32(%rsp)
	movaps	%xmm6, %xmm2
	movq	%r14, %rcx
	movss	%xmm8, 40(%rsp)
	movss	%xmm0, 76(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	cvttss2si	76(%rsp), %edx
	orl	%eax, %esi
	movl	%edx, (%rdi,%rbx,4)
	movq	GImGui(%rip), %rdx
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7702
	ucomiss	%xmm0, %xmm9
	jbe	.L7703
	movss	5168(%rdx), %xmm0
.L7703:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7702:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r10
	movl	496(%r10), %eax
	testl	%eax, %eax
	jle	.L7724
	subl	$1, %eax
	addq	$1, %rbx
	movl	%eax, 496(%r10)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$4, %rbx
	jne	.L7701
.L7706:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7708
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7709
	jmp	.L7708
	.p2align 4,,10
.L7710:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7708
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7708
.L7709:
	cmpb	$35, %al
	jne	.L7710
	cmpb	$35, 1(%rdx)
	jne	.L7710
	.p2align 4,,10
.L7708:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7699
	.p2align 4,,10
.L7724:
	movl	$885, %r8d
	movq	%r10, 48(%rsp)
	addq	$1, %rbx
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	48(%rsp), %r10
	subl	$1, 496(%r10)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$4, %rbx
	jne	.L7701
	jmp	.L7706
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SliderInt3EPKcPiiiS1_
	.def	_ZN5ImGui10SliderInt3EPKcPiiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SliderInt3EPKcPiiiS1_
_ZN5ImGui10SliderInt3EPKcPiiiS1_:
.LFB938:
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
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	movaps	%xmm9, 128(%rsp)
	.seh_savexmm	%xmm9, 128
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, %r13
	movq	%rdx, %rdi
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %esi
	testb	%sil, %sil
	je	.L7749
	xorl	%esi, %esi
.L7725:
	movaps	80(%rsp), %xmm6
	movl	%esi, %eax
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
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
.L7749:
	movl	%r9d, 60(%rsp)
	pxor	%xmm7, %xmm7
	pxor	%xmm6, %xmm6
	leaq	.LC241(%rip), %r12
	movl	%r8d, 48(%rsp)
	leaq	76(%rsp), %r15
	pxor	%xmm9, %xmm9
	call	_ZN5ImGui10BeginGroupEv
	leaq	.LC305(%rip), %r14
	movq	%r13, %rcx
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.131
	movl	60(%rsp), %r9d
	movl	48(%rsp), %r8d
	movss	.LC18(%rip), %xmm8
	cmpq	$0, 256(%rsp)
	cmovne	256(%rsp), %r12
	cvtsi2ss	%r9d, %xmm7
	xorl	%ebx, %ebx
	cvtsi2ss	%r8d, %xmm6
	.p2align 4,,10
.L7727:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	pxor	%xmm0, %xmm0
	movq	%r15, %rdx
	movaps	%xmm7, %xmm3
	cvtsi2ss	(%rdi,%rbx,4), %xmm0
	movq	%r12, 32(%rsp)
	movaps	%xmm6, %xmm2
	movq	%r14, %rcx
	movss	%xmm8, 40(%rsp)
	movss	%xmm0, 76(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	cvttss2si	76(%rsp), %edx
	orl	%eax, %esi
	movl	%edx, (%rdi,%rbx,4)
	movq	GImGui(%rip), %rdx
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7728
	ucomiss	%xmm0, %xmm9
	jbe	.L7729
	movss	5168(%rdx), %xmm0
.L7729:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7728:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r10
	movl	496(%r10), %eax
	testl	%eax, %eax
	jle	.L7750
	subl	$1, %eax
	addq	$1, %rbx
	movl	%eax, 496(%r10)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$3, %rbx
	jne	.L7727
.L7732:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7734
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7735
	jmp	.L7734
	.p2align 4,,10
.L7736:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7734
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7734
.L7735:
	cmpb	$35, %al
	jne	.L7736
	cmpb	$35, 1(%rdx)
	jne	.L7736
	.p2align 4,,10
.L7734:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7725
	.p2align 4,,10
.L7750:
	movl	$885, %r8d
	movq	%r10, 48(%rsp)
	addq	$1, %rbx
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	48(%rsp), %r10
	subl	$1, 496(%r10)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$3, %rbx
	jne	.L7727
	jmp	.L7732
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SliderIntNEPKcPiiiiS1_
	.def	_ZN5ImGui10SliderIntNEPKcPiiiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SliderIntNEPKcPiiiiS1_
_ZN5ImGui10SliderIntNEPKcPiiiiS1_:
.LFB936:
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
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	.seh_endprologue
	movq	GImGui(%rip), %r14
	movq	6008(%r14), %rax
	movq	%rcx, %r13
	movq	%rdx, %rdi
	movl	%r8d, %ebx
	movb	$1, 138(%rax)
	movq	6008(%r14), %rax
	movzbl	140(%rax), %esi
	testb	%sil, %sil
	je	.L7767
	xorl	%esi, %esi
.L7751:
	movaps	80(%rsp), %xmm6
	movl	%esi, %eax
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
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
	.p2align 4,,10
.L7767:
	movl	%r9d, 60(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%ebx, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.133
	testl	%ebx, %ebx
	jle	.L7753
	movl	60(%rsp), %r9d
	pxor	%xmm8, %xmm8
	pxor	%xmm6, %xmm6
	cvtsi2ss	240(%rsp), %xmm8
	leal	-1(%rbx), %r12d
	movss	.LC18(%rip), %xmm7
	cmpq	$0, 248(%rsp)
	leaq	.LC241(%rip), %rbp
	cmovne	248(%rsp), %rbp
	addq	$1, %r12
	xorl	%ebx, %ebx
	cvtsi2ss	%r9d, %xmm6
	leaq	76(%rsp), %r15
	.p2align 4,,10
.L7754:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	pxor	%xmm0, %xmm0
	movaps	%xmm8, %xmm3
	cvtsi2ss	(%rdi,%rbx,4), %xmm0
	movaps	%xmm6, %xmm2
	movq	%r15, %rdx
	movq	%rbp, 32(%rsp)
	leaq	.LC305(%rip), %rcx
	movss	%xmm7, 40(%rsp)
	movss	%xmm0, 76(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	cvttss2si	76(%rsp), %edx
	orl	%eax, %esi
	movl	%edx, (%rdi,%rbx,4)
	addq	$1, %rbx
	movss	5176(%r14), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	call	_ZN5ImGui5PopIDEv
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	%r12, %rbx
	jne	.L7754
.L7753:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7755
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7756
	jmp	.L7755
	.p2align 4,,10
.L7757:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7755
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7755
.L7756:
	cmpb	$35, %al
	jne	.L7757
	cmpb	$35, 1(%rdx)
	jne	.L7757
	.p2align 4,,10
.L7755:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7751
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9DragFloatEPKcPffffS1_f
	.def	_ZN5ImGui9DragFloatEPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9DragFloatEPKcPffffS1_f
_ZN5ImGui9DragFloatEPKcPffffS1_f:
.LFB941:
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
	subq	$272, %rsp
	.seh_stackalloc	272
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
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	xorl	%edi, %edi
	movq	6008(%rbx), %rax
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movaps	%xmm3, %xmm7
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rsi
	cmpb	$0, 140(%rsi)
	je	.L7802
.L7768:
	movaps	192(%rsp), %xmm6
	movl	%edi, %eax
	movaps	208(%rsp), %xmm7
	movaps	224(%rsp), %xmm8
	movaps	240(%rsp), %xmm9
	movaps	256(%rsp), %xmm10
	addq	$272, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L7802:
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	movss	%xmm2, 76(%rsp)
	pxor	%xmm9, %xmm9
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, 84(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rbp, %rcx
	movss	.LC1(%rip), %xmm3
	movss	%xmm0, 72(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	5160(%rbx), %xmm6
	movd	%eax, %xmm8
	shrq	$32, %rax
	movss	72(%rsp), %xmm0
	movaps	%xmm6, %xmm3
	movq	%rax, %xmm1
	movq	192(%rsi), %rax
	addss	%xmm6, %xmm3
	movss	76(%rsp), %xmm2
	addss	192(%rsi), %xmm0
	ucomiss	%xmm9, %xmm8
	addss	%xmm3, %xmm1
	movq	%rax, 96(%rsp)
	pxor	%xmm3, %xmm3
	movss	100(%rsp), %xmm10
	addss	196(%rsi), %xmm1
	movss	%xmm0, 104(%rsp)
	movss	%xmm1, 108(%rsp)
	jbe	.L7770
	movss	5176(%rbx), %xmm3
	addss	%xmm8, %xmm3
.L7770:
	movq	96(%rsp), %rax
	addss	%xmm3, %xmm0
	leaq	84(%rsp), %rdx
	movss	%xmm2, 72(%rsp)
	addss	%xmm9, %xmm1
	leaq	112(%rsp), %rcx
	movss	%xmm0, 120(%rsp)
	movq	%rax, 112(%rsp)
	movss	%xmm1, 124(%rsp)
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	movss	72(%rsp), %xmm2
	testb	%al, %al
	movl	%eax, %edi
	je	.L7803
	movl	84(%rsp), %edi
	leaq	96(%rsp), %r13
	xorl	%r8d, %r8d
	movss	%xmm2, 72(%rsp)
	movq	%r13, %rcx
	movl	%edi, %edx
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	movss	72(%rsp), %xmm2
	testb	%al, %al
	movl	%eax, %r14d
	je	.L7773
	movq	GImGui(%rip), %rax
	movl	%edi, 6056(%rax)
	movb	$0, 6060(%rax)
.L7773:
	cmpq	$0, 376(%rsp)
	leaq	.LC240(%rip), %rax
	movl	$3, %edx
	movss	%xmm2, 72(%rsp)
	cmovne	376(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 376(%rsp)
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rsi, %rcx
	movl	%eax, %edi
	movl	84(%rsp), %eax
	cmpl	%eax, 6068(%rbx)
	sete	%dl
	call	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb
	testb	%al, %al
	jne	.L7775
	testb	%r14b, %r14b
	movl	84(%rsp), %eax
	movss	72(%rsp), %xmm2
	je	.L7776
	cmpb	$0, 876(%rbx)
	jne	.L7777
	cmpb	$0, 944(%rbx)
	je	.L7776
.L7777:
	movq	GImGui(%rip), %rdx
	testl	%eax, %eax
	movl	%eax, 6068(%rdx)
	movb	$0, 6078(%rdx)
	movb	$1, 6077(%rdx)
	je	.L7804
	movb	$1, 6076(%rdx)
	movq	%rsi, %rcx
	movq	%rsi, 6088(%rdx)
	movss	%xmm2, 72(%rsp)
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movss	72(%rsp), %xmm2
.L7782:
	cmpb	$0, 285(%rbx)
	movl	84(%rsp), %eax
	jne	.L7778
	cmpb	$0, 944(%rbx)
	jne	.L7778
	.p2align 4,,10
.L7776:
	cmpl	%eax, 6068(%rbx)
	jne	.L7780
	cmpl	%eax, 10328(%rbx)
	je	.L7779
.L7780:
	movss	124(%rsp), %xmm0
	leaq	128(%rsp), %rsi
	movss	%xmm2, 72(%rsp)
	subss	116(%rsp), %xmm0
	movq	%rsi, %rcx
	movss	120(%rsp), %xmm3
	subss	112(%rsp), %xmm3
	movss	5160(%rbx), %xmm1
	movss	%xmm0, 132(%rsp)
	movss	%xmm3, 128(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movl	84(%rsp), %edx
	movl	%edi, 48(%rsp)
	movq	%r12, %r8
	movss	72(%rsp), %xmm2
	movq	%r13, %rcx
	movss	%xmm7, 32(%rsp)
	movss	384(%rsp), %xmm0
	movaps	%xmm2, %xmm3
	movss	%xmm0, 56(%rsp)
	movss	368(%rsp), %xmm0
	movss	%xmm0, 40(%rsp)
	call	_ZN5ImGui12DragBehaviorERK6ImRectjPffffif
	movq	376(%rsp), %r8
	movq	%rsi, %rcx
	movl	$64, %edx
	pxor	%xmm0, %xmm0
	cvtss2sd	(%r12), %xmm0
	movapd	%xmm0, %xmm3
	movl	%eax, %edi
	movq	%xmm0, %r9
	call	_Z14ImFormatStringPciPKcz
	leaq	88(%rsp), %rcx
	movq	%rsi, %r8
	movabsq	$4539628425446424576, %rdx
	cltq
	movq	%rdx, 88(%rsp)
	movq	%rcx, 40(%rsp)
	leaq	8(%r13), %rdx
	movq	%r13, %rcx
	movq	$0, 48(%rsp)
	leaq	(%rsi,%rax), %r9
	movq	$0, 32(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	ucomiss	%xmm9, %xmm8
	jbe	.L7768
	addss	%xmm10, %xmm6
	movss	104(%rsp), %xmm0
	xorl	%r8d, %r8d
	movq	%rbp, %rdx
	addss	5176(%rbx), %xmm0
	movl	$1, %r9d
	movq	%xmm6, %rax
	salq	$32, %rax
	movd	%xmm0, %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L7768
	.p2align 4,,10
.L7803:
	movss	124(%rsp), %xmm0
	leaq	128(%rsp), %rcx
	subss	116(%rsp), %xmm0
	movss	120(%rsp), %xmm2
	subss	112(%rsp), %xmm2
	movss	5160(%rbx), %xmm1
	movss	%xmm0, 132(%rsp)
	movss	%xmm2, 128(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	jmp	.L7768
	.p2align 4,,10
.L7775:
	movl	84(%rsp), %edx
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movl	%edx, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	je	.L7801
	movb	$1, 6076(%rax)
.L7801:
	movq	%rsi, 6088(%rax)
	movq	%rsi, %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	84(%rsp), %eax
.L7778:
	movl	$0, 10328(%rbx)
.L7779:
	movl	%edi, 40(%rsp)
	movq	%r12, %r9
	movl	$1, %r8d
	movq	%rbp, %rdx
	movl	%eax, 32(%rsp)
	movq	%r13, %rcx
	call	_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji
	movl	%eax, %edi
	jmp	.L7768
.L7804:
	movq	%rsi, 6088(%rdx)
	movq	%rsi, %rcx
	movss	%xmm2, 72(%rsp)
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movss	72(%rsp), %xmm2
	jmp	.L7782
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10DragFloatNEPKcPfifffS1_f
	.def	_ZN5ImGui10DragFloatNEPKcPfifffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10DragFloatNEPKcPfifffS1_f
_ZN5ImGui10DragFloatNEPKcPfifffS1_f:
.LFB942:
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
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movss	232(%rsp), %xmm7
	movq	240(%rsp), %r14
	movq	6008(%rbp), %rax
	movss	248(%rsp), %xmm8
	movq	%rcx, %r13
	movq	%rdx, %rsi
	movl	%r8d, %r12d
	movaps	%xmm3, %xmm6
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %edi
	testb	%dil, %dil
	je	.L7821
	xorl	%edi, %edi
.L7805:
	movaps	64(%rsp), %xmm6
	movl	%edi, %eax
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
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
.L7821:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%r12d, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.133
	testl	%r12d, %r12d
	jle	.L7807
	leaq	.LC305(%rip), %r15
	xorl	%ebx, %ebx
	.p2align 4,,10
.L7808:
	movl	%ebx, %ecx
	addl	$1, %ebx
	call	_ZN5ImGui6PushIDEi
	movq	%rsi, %rdx
	movaps	%xmm6, %xmm2
	movq	%r15, %rcx
	movss	224(%rsp), %xmm3
	movq	%r14, 40(%rsp)
	addq	$4, %rsi
	movss	%xmm8, 48(%rsp)
	movss	%xmm7, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movss	5176(%rbp), %xmm0
	orl	%eax, %edi
	call	_ZN5ImGui8SameLineEff.constprop.126
	call	_ZN5ImGui5PopIDEv
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	%ebx, %r12d
	jne	.L7808
.L7807:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7809
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7810
	jmp	.L7809
	.p2align 4,,10
.L7811:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7809
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7809
.L7810:
	cmpb	$35, %al
	jne	.L7811
	cmpb	$35, 1(%rdx)
	jne	.L7811
	.p2align 4,,10
.L7809:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7805
	.seh_endproc
	.section .rdata,"dr"
.LC306:
	.ascii "##min\0"
.LC307:
	.ascii "##max\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_f
	.def	_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_f
_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_f:
.LFB946:
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
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	movaps	%xmm9, 112(%rsp)
	.seh_savexmm	%xmm9, 112
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	xorl	%esi, %esi
	movss	224(%rsp), %xmm7
	movss	232(%rsp), %xmm6
	movq	6008(%rbx), %rax
	movq	240(%rsp), %rbp
	movq	%rcx, %rdi
	movq	%rdx, %r13
	movq	%r8, %r12
	movss	256(%rsp), %xmm9
	movaps	%xmm3, %xmm8
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rax
	cmpb	$0, 140(%rax)
	je	.L7850
.L7822:
	movaps	64(%rsp), %xmm6
	movl	%esi, %eax
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L7850:
	call	_ZN5ImGui6PushIDEPKc
	call	_ZN5ImGui10BeginGroupEv
	call	_ZL20PushMultiItemsWidthsif.constprop.132
	ucomiss	%xmm6, %xmm7
	jnb	.L7851
	movaps	%xmm6, %xmm0
	movaps	%xmm7, %xmm3
	movaps	%xmm8, %xmm2
	movq	%rbp, 40(%rsp)
	minss	(%r12), %xmm0
	movq	%r13, %rdx
	movss	%xmm9, 48(%rsp)
	leaq	.LC306(%rip), %rcx
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movl	%eax, %esi
	call	_ZN5ImGui12PopItemWidthEv
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	cmpq	$0, 248(%rsp)
	cmovne	248(%rsp), %rbp
.L7827:
	ucomiss	%xmm6, %xmm7
	movss	0(%r13), %xmm3
	jnb	.L7837
	ucomiss	%xmm3, %xmm7
	jb	.L7830
	movaps	%xmm7, %xmm3
.L7830:
	movq	%r12, %rdx
	movaps	%xmm8, %xmm2
	movss	%xmm9, 48(%rsp)
	leaq	.LC307(%rip), %rcx
	movq	%rbp, 40(%rsp)
	movss	%xmm6, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	orl	%eax, %esi
	call	_ZN5ImGui12PopItemWidthEv
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	movq	$-1, %rdx
	cmpq	%rdx, %rdi
	je	.L7832
	movzbl	(%rdi), %ecx
	movq	%rdi, %rdx
	testb	%cl, %cl
	jne	.L7833
	jmp	.L7832
	.p2align 4,,10
.L7834:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7832
	movzbl	(%rdx), %ecx
	testb	%cl, %cl
	je	.L7832
.L7833:
	cmpb	$35, %cl
	jne	.L7834
	cmpb	$35, 1(%rdx)
	jne	.L7834
	.p2align 4,,10
.L7832:
	movq	%rdi, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	call	_ZN5ImGui5PopIDEv
	jmp	.L7822
	.p2align 4,,10
.L7851:
	movss	(%r12), %xmm0
	movaps	%xmm8, %xmm2
	movq	%r13, %rdx
	movq	%rbp, 40(%rsp)
	movss	.LC192(%rip), %xmm3
	leaq	.LC306(%rip), %rcx
	movss	%xmm9, 48(%rsp)
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movl	%eax, %esi
	call	_ZN5ImGui12PopItemWidthEv
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	cmpq	$0, 248(%rsp)
	je	.L7827
	movss	0(%r13), %xmm3
	movq	248(%rsp), %rbp
	movss	.LC90(%rip), %xmm6
	jmp	.L7830
	.p2align 4,,10
.L7837:
	movss	.LC90(%rip), %xmm6
	jmp	.L7830
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7DragIntEPKcPifiiS1_
	.def	_ZN5ImGui7DragIntEPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7DragIntEPKcPifiiS1_
_ZN5ImGui7DragIntEPKcPifiiS1_:
.LFB947:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movq	136(%rsp), %rax
	movq	%rdx, %rbx
	cvtsi2ss	%r9d, %xmm3
	testq	%rax, %rax
	movl	$0x3f800000, 48(%rsp)
	cvtsi2ss	(%rbx), %xmm0
	leaq	.LC241(%rip), %rdx
	cmove	%rdx, %rax
	leaq	76(%rsp), %rdx
	movq	%rax, 40(%rsp)
	movss	%xmm0, 76(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	128(%rsp), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	cvttss2si	76(%rsp), %edx
	movl	%edx, (%rbx)
	addq	$80, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10DragFloat2EPKcPffffS1_f
	.def	_ZN5ImGui10DragFloat2EPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10DragFloat2EPKcPffffS1_f
_ZN5ImGui10DragFloat2EPKcPffffS1_f:
.LFB943:
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
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movss	256(%rsp), %xmm8
	movq	264(%rsp), %r12
	movq	6008(%rbp), %rax
	movss	272(%rsp), %xmm9
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movaps	%xmm2, %xmm6
	movaps	%xmm3, %xmm7
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %esi
	testb	%sil, %sil
	je	.L7878
	xorl	%esi, %esi
.L7854:
	movaps	64(%rsp), %xmm6
	movl	%esi, %eax
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
	movaps	128(%rsp), %xmm10
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
.L7878:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorl	%edi, %edi
	pxor	%xmm10, %xmm10
	call	_ZN5ImGui6PushIDEPKc
	leaq	.LC305(%rip), %r14
	call	_ZL20PushMultiItemsWidthsif.constprop.132
	jmp	.L7856
	.p2align 4,,10
.L7860:
	subl	$1, %eax
	addq	$4, %rbx
	movl	%eax, 496(%r15)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$1, %edi
	je	.L7861
.L7862:
	movl	$1, %edi
.L7856:
	movl	%edi, %ecx
	call	_ZN5ImGui6PushIDEi
	movq	%rbx, %rdx
	movq	%r12, 40(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm9, 48(%rsp)
	movaps	%xmm6, %xmm2
	movq	%r14, %rcx
	movss	%xmm8, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movq	GImGui(%rip), %rdx
	orl	%eax, %esi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7857
	ucomiss	%xmm0, %xmm10
	jbe	.L7858
	movss	5168(%rdx), %xmm0
.L7858:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7857:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r15
	movl	496(%r15), %eax
	testl	%eax, %eax
	jg	.L7860
	movl	$885, %r8d
	addq	$4, %rbx
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	subl	$1, 496(%r15)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$1, %edi
	jne	.L7862
.L7861:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7863
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7864
	jmp	.L7863
	.p2align 4,,10
.L7865:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7863
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7863
.L7864:
	cmpb	$35, %al
	jne	.L7865
	cmpb	$35, 1(%rdx)
	jne	.L7865
	.p2align 4,,10
.L7863:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7854
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10DragFloat3EPKcPffffS1_f
	.def	_ZN5ImGui10DragFloat3EPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10DragFloat3EPKcPffffS1_f
_ZN5ImGui10DragFloat3EPKcPffffS1_f:
.LFB944:
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
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movss	256(%rsp), %xmm8
	movq	264(%rsp), %r12
	movq	6008(%rbp), %rax
	movss	272(%rsp), %xmm9
	movq	%rcx, %r13
	movq	%rdx, %rsi
	movaps	%xmm2, %xmm6
	movaps	%xmm3, %xmm7
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %edi
	testb	%dil, %dil
	je	.L7905
	xorl	%edi, %edi
.L7879:
	movaps	64(%rsp), %xmm6
	movl	%edi, %eax
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
	movaps	128(%rsp), %xmm10
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
.L7905:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorl	%ebx, %ebx
	pxor	%xmm10, %xmm10
	call	_ZN5ImGui6PushIDEPKc
	leaq	.LC305(%rip), %r14
	call	_ZL20PushMultiItemsWidthsif.constprop.131
	jmp	.L7881
	.p2align 4,,10
.L7885:
	subl	$1, %eax
	movl	%eax, 496(%r15)
.L7904:
	call	_ZN5ImGui12PopItemWidthEv
	addl	$1, %ebx
	addq	$4, %rsi
	cmpl	$3, %ebx
	je	.L7906
.L7881:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	movq	%rsi, %rdx
	movq	%r12, 40(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm9, 48(%rsp)
	movaps	%xmm6, %xmm2
	movq	%r14, %rcx
	movss	%xmm8, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7882
	ucomiss	%xmm0, %xmm10
	jbe	.L7883
	movss	5168(%rdx), %xmm0
.L7883:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7882:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r15
	movl	496(%r15), %eax
	testl	%eax, %eax
	jg	.L7885
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	subl	$1, 496(%r15)
	jmp	.L7904
	.p2align 4,,10
.L7906:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7888
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7889
	jmp	.L7888
	.p2align 4,,10
.L7890:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7888
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7888
.L7889:
	cmpb	$35, %al
	jne	.L7890
	cmpb	$35, 1(%rdx)
	jne	.L7890
	.p2align 4,,10
.L7888:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7879
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10DragFloat4EPKcPffffS1_f
	.def	_ZN5ImGui10DragFloat4EPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10DragFloat4EPKcPffffS1_f
_ZN5ImGui10DragFloat4EPKcPffffS1_f:
.LFB945:
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
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movss	256(%rsp), %xmm8
	movq	264(%rsp), %r12
	movq	6008(%rbp), %rax
	movss	272(%rsp), %xmm9
	movq	%rcx, %r13
	movq	%rdx, %rsi
	movaps	%xmm2, %xmm6
	movaps	%xmm3, %xmm7
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %edi
	testb	%dil, %dil
	je	.L7933
	xorl	%edi, %edi
.L7907:
	movaps	64(%rsp), %xmm6
	movl	%edi, %eax
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
	movaps	128(%rsp), %xmm10
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
.L7933:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorl	%ebx, %ebx
	pxor	%xmm10, %xmm10
	call	_ZN5ImGui6PushIDEPKc
	leaq	.LC305(%rip), %r14
	call	_ZL20PushMultiItemsWidthsif.constprop.130
	jmp	.L7909
	.p2align 4,,10
.L7913:
	subl	$1, %eax
	movl	%eax, 496(%r15)
.L7932:
	call	_ZN5ImGui12PopItemWidthEv
	addl	$1, %ebx
	addq	$4, %rsi
	cmpl	$4, %ebx
	je	.L7934
.L7909:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	movq	%rsi, %rdx
	movq	%r12, 40(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm9, 48(%rsp)
	movaps	%xmm6, %xmm2
	movq	%r14, %rcx
	movss	%xmm8, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7910
	ucomiss	%xmm0, %xmm10
	jbe	.L7911
	movss	5168(%rdx), %xmm0
.L7911:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7910:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r15
	movl	496(%r15), %eax
	testl	%eax, %eax
	jg	.L7913
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	subl	$1, 496(%r15)
	jmp	.L7932
	.p2align 4,,10
.L7934:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7916
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7917
	jmp	.L7916
	.p2align 4,,10
.L7918:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7916
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7916
.L7917:
	cmpb	$35, %al
	jne	.L7918
	cmpb	$35, 1(%rdx)
	jne	.L7918
	.p2align 4,,10
.L7916:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7907
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8DragInt4EPKcPifiiS1_
	.def	_ZN5ImGui8DragInt4EPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8DragInt4EPKcPifiiS1_
_ZN5ImGui8DragInt4EPKcPifiiS1_:
.LFB951:
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
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, %r13
	movq	%rdx, %rdi
	movaps	%xmm2, %xmm7
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %esi
	testb	%sil, %sil
	je	.L7961
	xorl	%esi, %esi
.L7935:
	movaps	96(%rsp), %xmm6
	movl	%esi, %eax
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
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L7961:
	movl	%r9d, 72(%rsp)
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	leaq	.LC241(%rip), %r12
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	pxor	%xmm10, %xmm10
	call	_ZN5ImGui6PushIDEPKc
	leaq	92(%rsp), %r15
	call	_ZL20PushMultiItemsWidthsif.constprop.130
	movl	72(%rsp), %r9d
	cvtsi2ss	288(%rsp), %xmm8
	leaq	.LC305(%rip), %r14
	movss	.LC18(%rip), %xmm9
	cmpq	$0, 296(%rsp)
	cmovne	296(%rsp), %r12
	xorl	%ebx, %ebx
	cvtsi2ss	%r9d, %xmm6
	.p2align 4,,10
.L7937:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	pxor	%xmm0, %xmm0
	movq	%r15, %rdx
	movaps	%xmm6, %xmm3
	cvtsi2ss	(%rdi,%rbx,4), %xmm0
	movq	%r12, 40(%rsp)
	movaps	%xmm7, %xmm2
	movq	%r14, %rcx
	movss	%xmm9, 48(%rsp)
	movss	%xmm8, 32(%rsp)
	movss	%xmm0, 92(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	cvttss2si	92(%rsp), %edx
	orl	%eax, %esi
	movl	%edx, (%rdi,%rbx,4)
	movq	GImGui(%rip), %rdx
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7938
	ucomiss	%xmm0, %xmm10
	jbe	.L7939
	movss	5168(%rdx), %xmm0
.L7939:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7938:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r9
	movl	496(%r9), %eax
	testl	%eax, %eax
	jle	.L7962
	subl	$1, %eax
	addq	$1, %rbx
	movl	%eax, 496(%r9)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$4, %rbx
	jne	.L7937
.L7942:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7944
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7945
	jmp	.L7944
	.p2align 4,,10
.L7946:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7944
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7944
.L7945:
	cmpb	$35, %al
	jne	.L7946
	cmpb	$35, 1(%rdx)
	jne	.L7946
	.p2align 4,,10
.L7944:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7935
	.p2align 4,,10
.L7962:
	movl	$885, %r8d
	movq	%r9, 72(%rsp)
	addq	$1, %rbx
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	72(%rsp), %r9
	subl	$1, 496(%r9)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$4, %rbx
	jne	.L7937
	jmp	.L7942
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8DragInt3EPKcPifiiS1_
	.def	_ZN5ImGui8DragInt3EPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8DragInt3EPKcPifiiS1_
_ZN5ImGui8DragInt3EPKcPifiiS1_:
.LFB950:
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
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, %r13
	movq	%rdx, %rdi
	movaps	%xmm2, %xmm7
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %esi
	testb	%sil, %sil
	je	.L7989
	xorl	%esi, %esi
.L7963:
	movaps	96(%rsp), %xmm6
	movl	%esi, %eax
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
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L7989:
	movl	%r9d, 72(%rsp)
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	leaq	.LC241(%rip), %r12
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	pxor	%xmm10, %xmm10
	call	_ZN5ImGui6PushIDEPKc
	leaq	92(%rsp), %r15
	call	_ZL20PushMultiItemsWidthsif.constprop.131
	movl	72(%rsp), %r9d
	cvtsi2ss	288(%rsp), %xmm8
	leaq	.LC305(%rip), %r14
	movss	.LC18(%rip), %xmm9
	cmpq	$0, 296(%rsp)
	cmovne	296(%rsp), %r12
	xorl	%ebx, %ebx
	cvtsi2ss	%r9d, %xmm6
	.p2align 4,,10
.L7965:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	pxor	%xmm0, %xmm0
	movq	%r15, %rdx
	movaps	%xmm6, %xmm3
	cvtsi2ss	(%rdi,%rbx,4), %xmm0
	movq	%r12, 40(%rsp)
	movaps	%xmm7, %xmm2
	movq	%r14, %rcx
	movss	%xmm9, 48(%rsp)
	movss	%xmm8, 32(%rsp)
	movss	%xmm0, 92(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	cvttss2si	92(%rsp), %edx
	orl	%eax, %esi
	movl	%edx, (%rdi,%rbx,4)
	movq	GImGui(%rip), %rdx
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7966
	ucomiss	%xmm0, %xmm10
	jbe	.L7967
	movss	5168(%rdx), %xmm0
.L7967:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7966:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r9
	movl	496(%r9), %eax
	testl	%eax, %eax
	jle	.L7990
	subl	$1, %eax
	addq	$1, %rbx
	movl	%eax, 496(%r9)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$3, %rbx
	jne	.L7965
.L7970:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L7972
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L7973
	jmp	.L7972
	.p2align 4,,10
.L7974:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L7972
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L7972
.L7973:
	cmpb	$35, %al
	jne	.L7974
	cmpb	$35, 1(%rdx)
	jne	.L7974
	.p2align 4,,10
.L7972:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7963
	.p2align 4,,10
.L7990:
	movl	$885, %r8d
	movq	%r9, 72(%rsp)
	addq	$1, %rbx
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	72(%rsp), %r9
	subl	$1, 496(%r9)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$3, %rbx
	jne	.L7965
	jmp	.L7970
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8DragInt2EPKcPifiiS1_
	.def	_ZN5ImGui8DragInt2EPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8DragInt2EPKcPifiiS1_
_ZN5ImGui8DragInt2EPKcPifiiS1_:
.LFB949:
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
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, %r13
	movq	%rdx, %rdi
	movaps	%xmm2, %xmm7
	movb	$1, 138(%rax)
	movq	6008(%rbp), %rax
	movzbl	140(%rax), %esi
	testb	%sil, %sil
	je	.L8015
	xorl	%esi, %esi
.L7991:
	movaps	96(%rsp), %xmm6
	movl	%esi, %eax
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
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
.L8015:
	movl	%r9d, 72(%rsp)
	leaq	.LC241(%rip), %r12
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	pxor	%xmm10, %xmm10
	call	_ZN5ImGui6PushIDEPKc
	leaq	92(%rsp), %r15
	call	_ZL20PushMultiItemsWidthsif.constprop.132
	movl	72(%rsp), %r9d
	cvtsi2ss	288(%rsp), %xmm8
	leaq	.LC305(%rip), %r14
	cmpq	$0, 296(%rsp)
	movss	.LC18(%rip), %xmm9
	cmovne	296(%rsp), %r12
	xorl	%ebx, %ebx
	cvtsi2ss	%r9d, %xmm6
	jmp	.L7993
	.p2align 4,,10
.L7997:
	subl	$1, %eax
	movl	%eax, 496(%r10)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$1, %rbx
	je	.L7998
.L7999:
	movl	$1, %ebx
.L7993:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	pxor	%xmm0, %xmm0
	movq	%r15, %rdx
	movaps	%xmm6, %xmm3
	cvtsi2ss	(%rdi,%rbx,4), %xmm0
	movq	%r12, 40(%rsp)
	movaps	%xmm7, %xmm2
	movq	%r14, %rcx
	movss	%xmm9, 48(%rsp)
	movss	%xmm8, 32(%rsp)
	movss	%xmm0, 92(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	cvttss2si	92(%rsp), %edx
	orl	%eax, %esi
	movl	%edx, (%rdi,%rbx,4)
	movq	GImGui(%rip), %rdx
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L7994
	ucomiss	%xmm0, %xmm10
	jbe	.L7995
	movss	5168(%rdx), %xmm0
.L7995:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L7994:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r10
	movl	496(%r10), %eax
	testl	%eax, %eax
	jg	.L7997
	movl	$885, %r8d
	movq	%r10, 72(%rsp)
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	72(%rsp), %r10
	subl	$1, 496(%r10)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$1, %rbx
	jne	.L7999
.L7998:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L8000
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L8001
	jmp	.L8000
	.p2align 4,,10
.L8002:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L8000
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8000
.L8001:
	cmpb	$35, %al
	jne	.L8002
	cmpb	$35, 1(%rdx)
	jne	.L8002
	.p2align 4,,10
.L8000:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L7991
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8DragIntNEPKcPiifiiS1_
	.def	_ZN5ImGui8DragIntNEPKcPiifiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8DragIntNEPKcPiifiiS1_
_ZN5ImGui8DragIntNEPKcPiifiiS1_:
.LFB948:
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
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	movaps	%xmm9, 128(%rsp)
	.seh_savexmm	%xmm9, 128
	.seh_endprologue
	movq	GImGui(%rip), %r14
	movq	6008(%r14), %rax
	movq	%rcx, %r13
	movq	%rdx, %rdi
	movl	%r8d, %ebx
	movaps	%xmm3, %xmm6
	movb	$1, 138(%rax)
	movq	6008(%r14), %rax
	movzbl	140(%rax), %esi
	testb	%sil, %sil
	je	.L8032
	xorl	%esi, %esi
.L8016:
	movaps	80(%rsp), %xmm6
	movl	%esi, %eax
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
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
.L8032:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%ebx, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.133
	testl	%ebx, %ebx
	jle	.L8018
	pxor	%xmm9, %xmm9
	pxor	%xmm7, %xmm7
	cvtsi2ss	256(%rsp), %xmm9
	leal	-1(%rbx), %r12d
	cvtsi2ss	264(%rsp), %xmm7
	leaq	.LC241(%rip), %rbp
	movss	.LC18(%rip), %xmm8
	cmpq	$0, 272(%rsp)
	leaq	76(%rsp), %r15
	cmovne	272(%rsp), %rbp
	addq	$1, %r12
	xorl	%ebx, %ebx
	.p2align 4,,10
.L8019:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	pxor	%xmm0, %xmm0
	cvtsi2ss	(%rdi,%rbx,4), %xmm0
	movaps	%xmm9, %xmm3
	movaps	%xmm6, %xmm2
	movq	%r15, %rdx
	movss	%xmm8, 48(%rsp)
	leaq	.LC305(%rip), %rcx
	movq	%rbp, 40(%rsp)
	movss	%xmm7, 32(%rsp)
	movss	%xmm0, 76(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	cvttss2si	76(%rsp), %edx
	orl	%eax, %esi
	movl	%edx, (%rdi,%rbx,4)
	addq	$1, %rbx
	movss	5176(%r14), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	call	_ZN5ImGui5PopIDEv
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	%r12, %rbx
	jne	.L8019
.L8018:
	call	_ZN5ImGui5PopIDEv
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L8020
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L8021
	jmp	.L8020
	.p2align 4,,10
.L8022:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L8020
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8020
.L8021:
	cmpb	$35, %al
	jne	.L8022
	cmpb	$35, 1(%rdx)
	jne	.L8022
	.p2align 4,,10
.L8020:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8016
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_
	.def	_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_
_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_:
.LFB952:
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
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	xorl	%esi, %esi
	movq	232(%rsp), %rbp
	movq	6008(%rbx), %rax
	movq	%rcx, %rdi
	movq	%rdx, %r13
	movq	%r8, %r12
	movaps	%xmm3, %xmm6
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rax
	cmpb	$0, 140(%rax)
	je	.L8056
.L8033:
	movaps	80(%rsp), %xmm6
	movl	%esi, %eax
	movaps	96(%rsp), %xmm7
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
.L8056:
	call	_ZN5ImGui6PushIDEPKc
	call	_ZN5ImGui10BeginGroupEv
	call	_ZL20PushMultiItemsWidthsif.constprop.132
	movl	216(%rsp), %eax
	cmpl	%eax, 208(%rsp)
	jge	.L8057
	pxor	%xmm3, %xmm3
	cmpl	%eax, (%r12)
	cvtsi2ss	208(%rsp), %xmm3
	cmovle	(%r12), %eax
.L8036:
	pxor	%xmm0, %xmm0
	cvtsi2ss	0(%r13), %xmm0
	movss	.LC18(%rip), %xmm7
	movaps	%xmm6, %xmm2
	cmpq	$0, 224(%rsp)
	movss	%xmm7, 48(%rsp)
	leaq	.LC241(%rip), %rdx
	movss	%xmm0, 76(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	leaq	76(%rsp), %r14
	cmovne	224(%rsp), %rdx
	leaq	.LC306(%rip), %rcx
	movq	%rdx, 40(%rsp)
	movq	%r14, %rdx
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movl	%eax, %esi
	cvttss2si	76(%rsp), %eax
	movl	%eax, 0(%r13)
	call	_ZN5ImGui12PopItemWidthEv
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	testq	%rbp, %rbp
	movl	0(%r13), %eax
	je	.L8058
	movl	216(%rsp), %ecx
	cmpl	%ecx, 208(%rsp)
	movss	.LC309(%rip), %xmm0
	jge	.L8040
.L8039:
	pxor	%xmm0, %xmm0
	cmpl	208(%rsp), %eax
	cvtsi2ss	216(%rsp), %xmm0
	cmovl	208(%rsp), %eax
.L8045:
	testq	%rbp, %rbp
	leaq	.LC241(%rip), %rdx
	cmove	%rdx, %rbp
.L8040:
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	cvtsi2ss	(%r12), %xmm1
	movss	%xmm0, 32(%rsp)
	cvtsi2ss	%eax, %xmm3
	movaps	%xmm6, %xmm2
	movq	%r14, %rdx
	movss	%xmm7, 48(%rsp)
	leaq	.LC307(%rip), %rcx
	movq	%rbp, 40(%rsp)
	movss	%xmm1, 76(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	cvttss2si	76(%rsp), %edx
	orl	%eax, %esi
	movl	%edx, (%r12)
	call	_ZN5ImGui12PopItemWidthEv
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	movq	$-1, %rdx
	cmpq	%rdx, %rdi
	je	.L8041
	movzbl	(%rdi), %ecx
	movq	%rdi, %rdx
	testb	%cl, %cl
	jne	.L8042
	jmp	.L8041
	.p2align 4,,10
.L8043:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L8041
	movzbl	(%rdx), %ecx
	testb	%cl, %cl
	je	.L8041
.L8042:
	cmpb	$35, %cl
	jne	.L8043
	cmpb	$35, 1(%rdx)
	jne	.L8043
	.p2align 4,,10
.L8041:
	movq	%rdi, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	call	_ZN5ImGui5PopIDEv
	jmp	.L8033
	.p2align 4,,10
.L8057:
	movl	(%r12), %eax
	movss	.LC308(%rip), %xmm3
	jmp	.L8036
	.p2align 4,,10
.L8058:
	movl	216(%rsp), %ecx
	cmpl	%ecx, 208(%rsp)
	movq	224(%rsp), %rbp
	jl	.L8039
	movss	.LC309(%rip), %xmm0
	jmp	.L8045
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC310:
	.ascii "!(flags & ImGuiInputTextFlags_Multiline)\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	.def	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv:
.LFB1011:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	testl	$1048576, %r9d
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %rdi
	je	.L8060
	movl	$8246, %r8d
	movl	%r9d, 76(%rsp)
	leaq	.LC5(%rip), %rdx
	leaq	.LC310(%rip), %rcx
	call	_assert
	movl	76(%rsp), %r9d
.L8060:
	movl	%r9d, 32(%rsp)
	movl	%edi, %r8d
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	movq	168(%rsp), %rax
	leaq	88(%rsp), %r9
	movq	$0, 88(%rsp)
	movq	%rax, 48(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui18InputTextMultilineEPKcPcyRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	.def	_ZN5ImGui18InputTextMultilineEPKcPcyRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui18InputTextMultilineEPKcPcyRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
_ZN5ImGui18InputTextMultilineEPKcPcyRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv:
.LFB1012:
	.seh_endprologue
	orl	$1048576, 40(%rsp)
	jmp	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN15ImGuiTextFilter4DrawEPKcf
	.def	_ZN15ImGuiTextFilter4DrawEPKcf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN15ImGuiTextFilter4DrawEPKcf
_ZN15ImGuiTextFilter4DrawEPKcf:
.LFB610:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	ucomiss	.LC0(%rip), %xmm2
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	jp	.L8070
	jne	.L8070
	movl	$0, 32(%rsp)
	leaq	88(%rsp), %r9
	movq	%rcx, %rdx
	movl	$256, %r8d
	movq	$0, 48(%rsp)
	movq	%rsi, %rcx
	movq	$0, 40(%rsp)
	movq	$0, 88(%rsp)
	call	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
.L8069:
	testb	%al, %al
	je	.L8065
	movq	%rbx, %rcx
	movb	%al, 79(%rsp)
	call	_ZN15ImGuiTextFilter5BuildEv
	movzbl	79(%rsp), %eax
.L8065:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L8070:
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rcx
	movss	%xmm2, 308(%rcx)
	leaq	308(%rcx), %rdx
	addq	$320, %rcx
	call	_ZN8ImVectorIfE9push_backERKf
	leaq	88(%rsp), %r9
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	movl	$256, %r8d
	movl	$0, 32(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 88(%rsp)
	call	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	movb	%al, 79(%rsp)
	call	_ZN5ImGui12PopItemWidthEv
	movzbl	79(%rsp), %eax
	jmp	.L8069
	.seh_endproc
	.section .rdata,"dr"
.LC311:
	.ascii "-\0"
.LC312:
	.ascii "+\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	.def	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i:
.LFB1013:
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
	movq	GImGui(%rip), %rbx
	xorl	%r15d, %r15d
	movq	6008(%rbx), %rax
	movq	%rcx, %r12
	movl	%edx, %ebp
	movq	%r8, %r14
	movq	%r9, %r13
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rdi
	cmpb	$0, 140(%rdi)
	je	.L8121
.L8075:
	movl	%r15d, %eax
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
.L8121:
	movss	.LC1(%rip), %xmm3
	xorl	%edx, %edx
	movl	$1, %r8d
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movq	%rax, 72(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	movq	%r12, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movss	5160(%rbx), %xmm0
	testq	%r13, %r13
	movss	5156(%rbx), %xmm1
	addss	%xmm0, %xmm0
	movss	5944(%rbx), %xmm2
	addss	%xmm1, %xmm1
	addss	%xmm2, %xmm0
	addss	%xmm2, %xmm1
	movss	%xmm0, 84(%rsp)
	movss	%xmm1, 80(%rsp)
	je	.L8077
	call	_ZN5ImGui13CalcItemWidthEv
	movss	80(%rsp), %xmm1
	addss	5176(%rbx), %xmm1
	addss	%xmm1, %xmm1
	subss	%xmm1, %xmm0
	movss	.LC18(%rip), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L8078
	movaps	%xmm1, %xmm0
.L8078:
	call	_ZN5ImGui13PushItemWidthEf
.L8077:
	leaq	96(%rsp), %rsi
	testl	%ebp, %ebp
	je	.L8122
	cmpl	$1, %ebp
	je	.L8123
.L8080:
	movl	288(%rsp), %eax
	orl	$1, %eax
	testb	$2, 288(%rsp)
	cmovne	288(%rsp), %eax
	movl	%eax, %r15d
	movl	%eax, 288(%rsp)
	orl	$16, %r15d
	testl	$1048576, %eax
	je	.L8082
	leaq	.LC5(%rip), %rdx
	movl	$8246, %r8d
	leaq	.LC310(%rip), %rcx
	call	_assert
.L8082:
	movl	%r15d, 32(%rsp)
	leaq	88(%rsp), %r9
	movq	%rsi, %rdx
	movl	$64, %r8d
	movq	$0, 48(%rsp)
	leaq	.LC98(%rip), %rcx
	movq	$0, 40(%rsp)
	movq	$0, 88(%rsp)
	call	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	movl	%eax, %r15d
	jne	.L8124
.L8083:
	testq	%r13, %r13
	je	.L8084
	call	_ZN5ImGui12PopItemWidthEv
	movss	5176(%rbx), %xmm0
	leaq	80(%rsp), %rsi
	call	_ZN5ImGui8SameLineEff.constprop.126
	movl	$65, %r8d
	movq	%rsi, %rdx
	leaq	.LC311(%rip), %rcx
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	testb	%al, %al
	je	.L8085
	cmpb	$0, 285(%rbx)
	je	.L8099
	movq	272(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L8099
.L8086:
	testl	%ebp, %ebp
	je	.L8125
	cmpl	$1, %ebp
	movl	%eax, %r15d
	jne	.L8085
	movss	(%r14), %xmm0
	subss	(%rdx), %xmm0
	movss	%xmm0, (%r14)
	.p2align 4,,10
.L8085:
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	movl	$65, %r8d
	movq	%rsi, %rdx
	leaq	.LC312(%rip), %rcx
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	testb	%al, %al
	je	.L8084
	cmpb	$0, 285(%rbx)
	je	.L8100
	cmpq	$0, 272(%rsp)
	je	.L8100
.L8089:
	testl	%ebp, %ebp
	je	.L8126
	cmpl	$1, %ebp
	movl	%eax, %r15d
	jne	.L8084
	movq	272(%rsp), %rax
	movss	(%r14), %xmm0
	addss	(%rax), %xmm0
	movss	%xmm0, (%r14)
	.p2align 4,,10
.L8084:
	call	_ZN5ImGui5PopIDEv
	movss	72(%rsp), %xmm0
	ucomiss	.LC0(%rip), %xmm0
	ja	.L8127
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8075
	.p2align 4,,10
.L8127:
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	movss	196(%rdi), %xmm0
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	addss	5160(%rbx), %xmm0
	movl	$1, %r9d
	movl	192(%rdi), %eax
	movq	%xmm0, %rcx
	salq	$32, %rcx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	movss	5160(%rbx), %xmm1
	leaq	72(%rsp), %rcx
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8075
	.p2align 4,,10
.L8123:
	movq	280(%rsp), %r8
	pxor	%xmm0, %xmm0
	movl	$64, %edx
	movq	%rsi, %rcx
	cvtss2sd	(%r14), %xmm0
	movapd	%xmm0, %xmm3
	movq	%xmm0, %r9
	call	_Z14ImFormatStringPciPKcz
	jmp	.L8080
	.p2align 4,,10
.L8124:
	movq	GImGui(%rip), %rax
	movq	%r14, %r9
	movl	%ebp, %r8d
	movq	%rsi, %rcx
	movq	6944(%rax), %rdx
	movq	280(%rsp), %rax
	movq	%rax, 32(%rsp)
	call	_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_
	movl	%eax, %r15d
	jmp	.L8083
	.p2align 4,,10
.L8122:
	movl	(%r14), %r9d
	movl	$64, %edx
	movq	%rsi, %rcx
	movq	280(%rsp), %r8
	call	_Z14ImFormatStringPciPKcz
	jmp	.L8080
	.p2align 4,,10
.L8126:
	movq	272(%rsp), %rsi
	movl	%eax, %r15d
	movl	(%rsi), %edx
	addl	%edx, (%r14)
	jmp	.L8084
	.p2align 4,,10
.L8125:
	movl	(%rdx), %edx
	movl	%eax, %r15d
	subl	%edx, (%r14)
	jmp	.L8085
	.p2align 4,,10
.L8100:
	movq	%r13, 272(%rsp)
	jmp	.L8089
	.p2align 4,,10
.L8099:
	movq	%r13, %rdx
	jmp	.L8086
	.seh_endproc
	.section .rdata,"dr"
.LC313:
	.ascii "%%.%df\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10InputFloatEPKcPfffii
	.def	_ZN5ImGui10InputFloatEPKcPfffii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10InputFloatEPKcPfffii
_ZN5ImGui10InputFloatEPKcPfffii:
.LFB1014:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movl	144(%rsp), %r9d
	testl	%r9d, %r9d
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movss	%xmm2, 128(%rsp)
	movss	%xmm3, 136(%rsp)
	js	.L8135
	leaq	64(%rsp), %rbx
	movl	$16, %edx
	leaq	.LC313(%rip), %r8
	movq	%rbx, %rcx
	call	_Z14ImFormatStringPciPKcz
	movss	136(%rsp), %xmm1
.L8130:
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	ucomiss	%xmm0, %xmm1
	movss	128(%rsp), %xmm1
	leaq	136(%rsp), %rax
	movq	%rbx, 40(%rsp)
	movq	%rdi, %r8
	movq	%rsi, %rcx
	leaq	128(%rsp), %r9
	cmovbe	%rdx, %rax
	ucomiss	%xmm0, %xmm1
	movq	%rax, 32(%rsp)
	cmovbe	%rdx, %r9
	movl	152(%rsp), %edx
	movl	%edx, 48(%rsp)
	movl	$1, %edx
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L8135:
	movl	$26149, %eax
	movb	$0, 66(%rsp)
	movaps	%xmm3, %xmm1
	movw	%ax, 64(%rsp)
	leaq	64(%rsp), %rbx
	jmp	.L8130
	.seh_endproc
	.section .rdata,"dr"
.LC314:
	.ascii "%08X\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8InputIntEPKcPiiii
	.def	_ZN5ImGui8InputIntEPKcPiiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8InputIntEPKcPiiii
_ZN5ImGui8InputIntEPKcPiiii:
.LFB1015:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	pxor	%xmm1, %xmm1
	leaq	.LC20(%rip), %rax
	pxor	%xmm0, %xmm0
	leaq	.LC314(%rip), %r10
	movl	112(%rsp), %r11d
	cvtsi2ss	%r9d, %xmm1
	testb	$2, %r11b
	movl	%r9d, 104(%rsp)
	cmove	%rax, %r10
	xorl	%ebx, %ebx
	movl	%r8d, 96(%rsp)
	movl	%r11d, 48(%rsp)
	leaq	104(%rsp), %rax
	movq	%r10, 40(%rsp)
	ucomiss	%xmm0, %xmm1
	pxor	%xmm1, %xmm1
	leaq	96(%rsp), %r9
	cvtsi2ss	%r8d, %xmm1
	movq	%rdx, %r8
	cmovbe	%rbx, %rax
	ucomiss	%xmm0, %xmm1
	movq	%rax, 32(%rsp)
	cmovbe	%rbx, %r9
	xorl	%edx, %edx
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11InputFloat4EPKcPfii
	.def	_ZN5ImGui11InputFloat4EPKcPfii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11InputFloat4EPKcPfii
_ZN5ImGui11InputFloat4EPKcPfii:
.LFB1019:
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
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, 224(%rsp)
	movq	%rdx, %rsi
	movl	%r8d, %r13d
	movl	%r9d, %r14d
	movb	$1, 138(%rax)
	movq	6008(%rbp), %r15
	movzbl	140(%r15), %edi
	testb	%dil, %dil
	je	.L8184
	xorl	%edi, %edi
.L8143:
	movaps	128(%rsp), %xmm6
	movl	%edi, %eax
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
.L8184:
	call	_ZN5ImGui10BeginGroupEv
	pxor	%xmm6, %xmm6
	xorl	%ebx, %ebx
	movq	224(%rsp), %rcx
	leaq	112(%rsp), %r12
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.130
	leaq	104(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	108(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.L8145
	.p2align 4,,10
.L8146:
	movl	%r13d, %r9d
	movl	$16, %edx
	movq	%r12, %rcx
	leaq	.LC313(%rip), %r8
	call	_Z14ImFormatStringPciPKcz
	movss	108(%rsp), %xmm0
	ucomiss	%xmm6, %xmm0
	movss	104(%rsp), %xmm0
	jbe	.L8179
	movq	80(%rsp), %rax
.L8150:
	ucomiss	%xmm6, %xmm0
	movl	$0, %r9d
	cmova	72(%rsp), %r9
.L8147:
	movl	$1, %edx
	movl	%r14d, 48(%rsp)
	movq	%rsi, %r8
	movq	%r12, 40(%rsp)
	movq	%rax, 32(%rsp)
	leaq	.LC305(%rip), %rcx
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L8152
	ucomiss	%xmm0, %xmm6
	jbe	.L8153
	movss	5168(%rdx), %xmm0
.L8153:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L8152:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r9
	movl	496(%r9), %eax
	testl	%eax, %eax
	jle	.L8185
	subl	$1, %eax
	movl	%eax, 496(%r9)
.L8183:
	call	_ZN5ImGui12PopItemWidthEv
	addl	$1, %ebx
	addq	$4, %rsi
	cmpl	$4, %ebx
	je	.L8186
.L8145:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	testl	%r13d, %r13d
	movl	$0x00000000, 104(%rsp)
	movl	$0x00000000, 108(%rsp)
	jns	.L8146
	movl	$26149, %eax
	movb	$0, 2(%r12)
	xorl	%r9d, %r9d
	movw	%ax, (%r12)
	xorl	%eax, %eax
	jmp	.L8147
	.p2align 4,,10
.L8185:
	movl	$885, %r8d
	movq	%r9, 88(%rsp)
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	88(%rsp), %r9
	subl	$1, 496(%r9)
	jmp	.L8183
	.p2align 4,,10
.L8186:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rbp), %xmm0
	movss	228(%r15), %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L8187
.L8158:
	movss	%xmm0, 228(%r15)
	movq	$-1, %rdx
	cmpq	%rdx, 224(%rsp)
	je	.L8160
	movq	224(%rsp), %rax
	movq	224(%rsp), %rdx
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L8161
	jmp	.L8160
	.p2align 4,,10
.L8162:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L8160
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8160
.L8161:
	cmpb	$35, %al
	jne	.L8162
	cmpb	$35, 1(%rdx)
	jne	.L8162
	.p2align 4,,10
.L8160:
	movq	224(%rsp), %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8143
	.p2align 4,,10
.L8187:
	movaps	%xmm1, %xmm0
	jmp	.L8158
.L8179:
	xorl	%eax, %eax
	jmp	.L8150
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11InputFloat2EPKcPfii
	.def	_ZN5ImGui11InputFloat2EPKcPfii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11InputFloat2EPKcPfii
_ZN5ImGui11InputFloat2EPKcPfii:
.LFB1017:
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
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, 224(%rsp)
	movq	%rdx, %rbx
	movl	%r8d, %r13d
	movl	%r9d, %r14d
	movb	$1, 138(%rax)
	movq	6008(%rbp), %r15
	movzbl	140(%r15), %esi
	testb	%sil, %sil
	je	.L8228
	xorl	%esi, %esi
.L8188:
	movaps	128(%rsp), %xmm6
	movl	%esi, %eax
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
.L8228:
	call	_ZN5ImGui10BeginGroupEv
	pxor	%xmm6, %xmm6
	xorl	%edi, %edi
	movq	224(%rsp), %rcx
	leaq	112(%rsp), %r12
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.132
	leaq	104(%rsp), %rax
	movq	%r15, 88(%rsp)
	movq	%rax, 72(%rsp)
	leaq	108(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.L8190
	.p2align 4,,10
.L8191:
	movl	%r13d, %r9d
	movl	$16, %edx
	movq	%r12, %rcx
	leaq	.LC313(%rip), %r8
	call	_Z14ImFormatStringPciPKcz
	movss	108(%rsp), %xmm0
	ucomiss	%xmm6, %xmm0
	movss	104(%rsp), %xmm0
	jbe	.L8224
	movq	80(%rsp), %rax
.L8195:
	ucomiss	%xmm6, %xmm0
	movl	$0, %r9d
	cmova	72(%rsp), %r9
.L8192:
	movl	$1, %edx
	movl	%r14d, 48(%rsp)
	movq	%rbx, %r8
	movq	%r12, 40(%rsp)
	movq	%rax, 32(%rsp)
	leaq	.LC305(%rip), %rcx
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	movq	GImGui(%rip), %rdx
	orl	%eax, %esi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L8197
	ucomiss	%xmm0, %xmm6
	jbe	.L8198
	movss	5168(%rdx), %xmm0
.L8198:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L8197:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r15
	movl	496(%r15), %eax
	testl	%eax, %eax
	jle	.L8229
	subl	$1, %eax
	addq	$4, %rbx
	movl	%eax, 496(%r15)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$1, %edi
	je	.L8227
.L8202:
	movl	$1, %edi
.L8190:
	movl	%edi, %ecx
	call	_ZN5ImGui6PushIDEi
	testl	%r13d, %r13d
	movl	$0x00000000, 104(%rsp)
	movl	$0x00000000, 108(%rsp)
	jns	.L8191
	movl	$26149, %eax
	movb	$0, 2(%r12)
	xorl	%r9d, %r9d
	movw	%ax, (%r12)
	xorl	%eax, %eax
	jmp	.L8192
	.p2align 4,,10
.L8229:
	movl	$885, %r8d
	addq	$4, %rbx
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	subl	$1, 496(%r15)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$1, %edi
	jne	.L8202
.L8227:
	movq	88(%rsp), %r15
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rbp), %xmm0
	movss	228(%r15), %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L8230
.L8203:
	movss	%xmm0, 228(%r15)
	movq	$-1, %rdx
	cmpq	%rdx, 224(%rsp)
	je	.L8205
	movq	224(%rsp), %rax
	movq	224(%rsp), %rdx
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L8206
	jmp	.L8205
	.p2align 4,,10
.L8207:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L8205
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8205
.L8206:
	cmpb	$35, %al
	jne	.L8207
	cmpb	$35, 1(%rdx)
	jne	.L8207
	.p2align 4,,10
.L8205:
	movq	224(%rsp), %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8188
	.p2align 4,,10
.L8230:
	movaps	%xmm1, %xmm0
	jmp	.L8203
.L8224:
	xorl	%eax, %eax
	jmp	.L8195
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11InputFloat3EPKcPfii
	.def	_ZN5ImGui11InputFloat3EPKcPfii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11InputFloat3EPKcPfii
_ZN5ImGui11InputFloat3EPKcPfii:
.LFB1018:
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
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, 224(%rsp)
	movq	%rdx, %rsi
	movl	%r8d, %r13d
	movl	%r9d, %r14d
	movb	$1, 138(%rax)
	movq	6008(%rbp), %r15
	movzbl	140(%r15), %edi
	testb	%dil, %dil
	je	.L8272
	xorl	%edi, %edi
.L8231:
	movaps	128(%rsp), %xmm6
	movl	%edi, %eax
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
.L8272:
	call	_ZN5ImGui10BeginGroupEv
	pxor	%xmm6, %xmm6
	xorl	%ebx, %ebx
	movq	224(%rsp), %rcx
	leaq	112(%rsp), %r12
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.131
	leaq	104(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	108(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.L8233
	.p2align 4,,10
.L8234:
	movl	%r13d, %r9d
	movl	$16, %edx
	movq	%r12, %rcx
	leaq	.LC313(%rip), %r8
	call	_Z14ImFormatStringPciPKcz
	movss	108(%rsp), %xmm0
	ucomiss	%xmm6, %xmm0
	movss	104(%rsp), %xmm0
	jbe	.L8267
	movq	80(%rsp), %rax
.L8238:
	ucomiss	%xmm6, %xmm0
	movl	$0, %r9d
	cmova	72(%rsp), %r9
.L8235:
	movl	$1, %edx
	movl	%r14d, 48(%rsp)
	movq	%rsi, %r8
	movq	%r12, 40(%rsp)
	movq	%rax, 32(%rsp)
	leaq	.LC305(%rip), %rcx
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L8240
	ucomiss	%xmm0, %xmm6
	jbe	.L8241
	movss	5168(%rdx), %xmm0
.L8241:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L8240:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r9
	movl	496(%r9), %eax
	testl	%eax, %eax
	jle	.L8273
	subl	$1, %eax
	movl	%eax, 496(%r9)
.L8271:
	call	_ZN5ImGui12PopItemWidthEv
	addl	$1, %ebx
	addq	$4, %rsi
	cmpl	$3, %ebx
	je	.L8274
.L8233:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	testl	%r13d, %r13d
	movl	$0x00000000, 104(%rsp)
	movl	$0x00000000, 108(%rsp)
	jns	.L8234
	movl	$26149, %eax
	movb	$0, 2(%r12)
	xorl	%r9d, %r9d
	movw	%ax, (%r12)
	xorl	%eax, %eax
	jmp	.L8235
	.p2align 4,,10
.L8273:
	movl	$885, %r8d
	movq	%r9, 88(%rsp)
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	88(%rsp), %r9
	subl	$1, 496(%r9)
	jmp	.L8271
	.p2align 4,,10
.L8274:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rbp), %xmm0
	movss	228(%r15), %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L8275
.L8246:
	movss	%xmm0, 228(%r15)
	movq	$-1, %rdx
	cmpq	%rdx, 224(%rsp)
	je	.L8248
	movq	224(%rsp), %rax
	movq	224(%rsp), %rdx
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L8249
	jmp	.L8248
	.p2align 4,,10
.L8250:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L8248
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8248
.L8249:
	cmpb	$35, %al
	jne	.L8250
	cmpb	$35, 1(%rdx)
	jne	.L8250
	.p2align 4,,10
.L8248:
	movq	224(%rsp), %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8231
	.p2align 4,,10
.L8275:
	movaps	%xmm1, %xmm0
	jmp	.L8246
.L8267:
	xorl	%eax, %eax
	jmp	.L8238
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11InputFloatNEPKcPfiii
	.def	_ZN5ImGui11InputFloatNEPKcPfiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11InputFloatNEPKcPfiii
_ZN5ImGui11InputFloatNEPKcPfiii:
.LFB1016:
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
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%r8d, %r13d
	movl	%r9d, 232(%rsp)
	movb	$1, 138(%rax)
	movq	6008(%rbp), %r15
	movzbl	140(%r15), %esi
	testb	%sil, %sil
	je	.L8310
	xorl	%esi, %esi
.L8276:
	movaps	112(%rsp), %xmm6
	movl	%esi, %eax
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
	.p2align 4,,10
.L8310:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%r13d, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.133
	testl	%r13d, %r13d
	jle	.L8278
	movl	232(%rsp), %edx
	xorl	%edi, %edi
	testl	%edx, %edx
	js	.L8279
	leaq	92(%rsp), %rax
	pxor	%xmm6, %xmm6
	movq	%rax, 64(%rsp)
	leaq	88(%rsp), %rax
	leaq	96(%rsp), %r12
	movq	%rax, 72(%rsp)
	.p2align 4,,10
.L8280:
	movl	%edi, %ecx
	call	_ZN5ImGui6PushIDEi
	movl	232(%rsp), %r9d
	movl	$16, %edx
	movq	%r12, %rcx
	leaq	.LC313(%rip), %r8
	movl	$0x00000000, 88(%rsp)
	movl	$0x00000000, 92(%rsp)
	call	_Z14ImFormatStringPciPKcz
	movss	92(%rsp), %xmm0
	ucomiss	%xmm6, %xmm0
	movss	88(%rsp), %xmm0
	jbe	.L8311
	movq	64(%rsp), %rax
.L8282:
	movl	240(%rsp), %ecx
	xorl	%r9d, %r9d
	ucomiss	%xmm6, %xmm0
	movq	%r12, 40(%rsp)
	movq	%rax, 32(%rsp)
	movl	%ecx, 48(%rsp)
	jbe	.L8309
	movq	72(%rsp), %r9
.L8309:
	movq	%rbx, %r8
	movl	$1, %edx
	addl	$1, %edi
	leaq	.LC305(%rip), %rcx
	addq	$4, %rbx
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	movss	5176(%rbp), %xmm0
	orl	%eax, %esi
	call	_ZN5ImGui8SameLineEff.constprop.126
	call	_ZN5ImGui5PopIDEv
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	%edi, %r13d
	jne	.L8280
.L8278:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rbp), %xmm0
	movss	228(%r15), %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L8312
.L8289:
	movss	%xmm0, 228(%r15)
	movq	$-1, %rdx
	cmpq	%rdx, %r14
	je	.L8291
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L8292
	jmp	.L8291
	.p2align 4,,10
.L8293:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L8291
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8291
.L8292:
	cmpb	$35, %al
	jne	.L8293
	cmpb	$35, 1(%rdx)
	jne	.L8293
	.p2align 4,,10
.L8291:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8276
	.p2align 4,,10
.L8312:
	movaps	%xmm1, %xmm0
	jmp	.L8289
	.p2align 4,,10
.L8279:
	movq	%r14, 208(%rsp)
	leaq	96(%rsp), %r12
	movl	%edi, %r14d
	movl	240(%rsp), %edi
	.p2align 4,,10
.L8288:
	movl	%r14d, %ecx
	addl	$1, %r14d
	call	_ZN5ImGui6PushIDEi
	movl	$26149, %eax
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	movw	%ax, (%r12)
	movl	$1, %edx
	addq	$4, %rbx
	movb	$0, 2(%r12)
	leaq	.LC305(%rip), %rcx
	movl	%edi, 48(%rsp)
	movq	%r12, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0x00000000, 88(%rsp)
	movl	$0x00000000, 92(%rsp)
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	movss	5176(%rbp), %xmm0
	orl	%eax, %esi
	call	_ZN5ImGui8SameLineEff.constprop.126
	call	_ZN5ImGui5PopIDEv
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	%r14d, %r13d
	jne	.L8288
	movq	208(%rsp), %r14
	jmp	.L8278
.L8311:
	xorl	%eax, %eax
	jmp	.L8282
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.111;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.111
_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.111:
.LFB6635:
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
	subq	$144, %rsp
	.seh_stackalloc	144
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	xorl	%edi, %edi
	movq	6008(%rbx), %rax
	movq	%rcx, %r12
	movq	%rdx, %r13
	movl	%r8d, %esi
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rbp
	cmpb	$0, 140(%rbp)
	je	.L8328
.L8313:
	movl	%edi, %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
.L8328:
	movss	.LC1(%rip), %xmm3
	xorl	%edx, %edx
	movl	$1, %r8d
	leaq	.LC305(%rip), %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	leaq	80(%rsp), %r14
	movq	%rax, 64(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	leaq	.LC305(%rip), %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	(%r12), %r9d
	movq	%r13, %r8
	movq	%r14, %rcx
	movl	$64, %edx
	call	_Z14ImFormatStringPciPKcz
	movl	%esi, %eax
	orl	$1, %eax
	testb	$2, %sil
	cmove	%eax, %esi
	movl	%esi, %edi
	orl	$16, %edi
	andl	$1048576, %esi
	je	.L8316
	leaq	.LC5(%rip), %rdx
	movl	$8246, %r8d
	leaq	.LC310(%rip), %rcx
	call	_assert
.L8316:
	movl	%edi, 32(%rsp)
	leaq	72(%rsp), %r9
	movq	%r14, %rdx
	movl	$64, %r8d
	movq	$0, 48(%rsp)
	leaq	.LC98(%rip), %rcx
	movq	$0, 40(%rsp)
	movq	$0, 72(%rsp)
	call	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	movl	%eax, %edi
	jne	.L8329
.L8317:
	call	_ZN5ImGui5PopIDEv
	movss	64(%rsp), %xmm0
	ucomiss	.LC0(%rip), %xmm0
	ja	.L8330
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8313
	.p2align 4,,10
.L8330:
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	movss	196(%rbp), %xmm0
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addss	5160(%rbx), %xmm0
	leaq	.LC305(%rip), %rdx
	movl	192(%rbp), %eax
	movq	%xmm0, %rcx
	salq	$32, %rcx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	movss	5160(%rbx), %xmm1
	leaq	64(%rsp), %rcx
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8313
	.p2align 4,,10
.L8329:
	movq	GImGui(%rip), %rax
	movq	%r12, %r9
	xorl	%r8d, %r8d
	movq	%r14, %rcx
	movq	6944(%rax), %rdx
	movq	%r13, 32(%rsp)
	call	_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_
	movl	%eax, %edi
	jmp	.L8317
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9InputIntNEPKcPiii
	.def	_ZN5ImGui9InputIntNEPKcPiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9InputIntNEPKcPiii
_ZN5ImGui9InputIntNEPKcPiii:
.LFB1020:
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
	movq	GImGui(%rip), %rdi
	movq	6008(%rdi), %rax
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movl	%r8d, %ebp
	movl	%r9d, %r12d
	movb	$1, 138(%rax)
	movq	6008(%rdi), %r15
	movzbl	140(%r15), %esi
	testb	%sil, %sil
	je	.L8348
	xorl	%esi, %esi
.L8331:
	movl	%esi, %eax
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
.L8348:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%ebp, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.133
	testl	%ebp, %ebp
	jle	.L8333
	leaq	.LC314(%rip), %r14
	testb	$2, %r12b
	leaq	.LC20(%rip), %rax
	cmovne	%r14, %rax
	xorl	%r14d, %r14d
	movq	%rax, 40(%rsp)
	.p2align 4,,10
.L8334:
	movl	%r14d, %ecx
	addl	$1, %r14d
	call	_ZN5ImGui6PushIDEi
	movq	40(%rsp), %rdx
	movq	%rbx, %rcx
	movl	%r12d, %r8d
	addq	$4, %rbx
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.111
	movss	5176(%rdi), %xmm0
	orl	%eax, %esi
	call	_ZN5ImGui8SameLineEff.constprop.126
	call	_ZN5ImGui5PopIDEv
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	%r14d, %ebp
	jne	.L8334
.L8333:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rdi), %xmm1
	movss	228(%r15), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L8349
.L8335:
	movss	%xmm0, 228(%r15)
	movq	$-1, %rdx
	cmpq	%rdx, %r13
	je	.L8336
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L8337
	jmp	.L8336
	.p2align 4,,10
.L8338:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L8336
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8336
.L8337:
	cmpb	$35, %al
	jne	.L8338
	cmpb	$35, 1(%rdx)
	jne	.L8338
	.p2align 4,,10
.L8336:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8331
	.p2align 4,,10
.L8349:
	movaps	%xmm1, %xmm0
	jmp	.L8335
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9InputInt4EPKcPii
	.def	_ZN5ImGui9InputInt4EPKcPii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9InputInt4EPKcPii
_ZN5ImGui9InputInt4EPKcPii:
.LFB1023:
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
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, %r14
	movq	%rdx, %rsi
	movl	%r8d, %r12d
	movb	$1, 138(%rax)
	movq	6008(%rbp), %r15
	movzbl	140(%r15), %edi
	testb	%dil, %dil
	je	.L8379
	xorl	%edi, %edi
.L8350:
	movaps	48(%rsp), %xmm6
	movl	%edi, %eax
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
.L8379:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	pxor	%xmm6, %xmm6
	call	_ZN5ImGui6PushIDEPKc
	leaq	.LC314(%rip), %r13
	call	_ZL20PushMultiItemsWidthsif.constprop.130
	leaq	.LC20(%rip), %rax
	testb	$2, %r12b
	cmove	%rax, %r13
	xorl	%ebx, %ebx
	jmp	.L8352
	.p2align 4,,10
.L8356:
	subl	$1, %eax
	movl	%eax, 496(%r9)
.L8378:
	call	_ZN5ImGui12PopItemWidthEv
	addl	$1, %ebx
	addq	$4, %rsi
	cmpl	$4, %ebx
	je	.L8380
.L8352:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	movq	%r13, %rdx
	movl	%r12d, %r8d
	movq	%rsi, %rcx
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.111
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L8353
	ucomiss	%xmm0, %xmm6
	jbe	.L8354
	movss	5168(%rdx), %xmm0
.L8354:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L8353:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r9
	movl	496(%r9), %eax
	testl	%eax, %eax
	jg	.L8356
	movl	$885, %r8d
	movq	%r9, 40(%rsp)
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	40(%rsp), %r9
	subl	$1, 496(%r9)
	jmp	.L8378
	.p2align 4,,10
.L8380:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rbp), %xmm0
	movss	228(%r15), %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L8381
.L8359:
	movss	%xmm0, 228(%r15)
	movq	$-1, %rdx
	cmpq	%rdx, %r14
	je	.L8361
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L8362
	jmp	.L8361
	.p2align 4,,10
.L8363:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L8361
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8361
.L8362:
	cmpb	$35, %al
	jne	.L8363
	cmpb	$35, 1(%rdx)
	jne	.L8363
	.p2align 4,,10
.L8361:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8350
	.p2align 4,,10
.L8381:
	movaps	%xmm1, %xmm0
	jmp	.L8359
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9InputInt3EPKcPii
	.def	_ZN5ImGui9InputInt3EPKcPii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9InputInt3EPKcPii
_ZN5ImGui9InputInt3EPKcPii:
.LFB1022:
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
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, %r14
	movq	%rdx, %rsi
	movl	%r8d, %r12d
	movb	$1, 138(%rax)
	movq	6008(%rbp), %r15
	movzbl	140(%r15), %edi
	testb	%dil, %dil
	je	.L8411
	xorl	%edi, %edi
.L8382:
	movaps	48(%rsp), %xmm6
	movl	%edi, %eax
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
.L8411:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	pxor	%xmm6, %xmm6
	call	_ZN5ImGui6PushIDEPKc
	leaq	.LC314(%rip), %r13
	call	_ZL20PushMultiItemsWidthsif.constprop.131
	leaq	.LC20(%rip), %rax
	testb	$2, %r12b
	cmove	%rax, %r13
	xorl	%ebx, %ebx
	jmp	.L8384
	.p2align 4,,10
.L8388:
	subl	$1, %eax
	movl	%eax, 496(%r9)
.L8410:
	call	_ZN5ImGui12PopItemWidthEv
	addl	$1, %ebx
	addq	$4, %rsi
	cmpl	$3, %ebx
	je	.L8412
.L8384:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	movq	%r13, %rdx
	movl	%r12d, %r8d
	movq	%rsi, %rcx
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.111
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L8385
	ucomiss	%xmm0, %xmm6
	jbe	.L8386
	movss	5168(%rdx), %xmm0
.L8386:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L8385:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r9
	movl	496(%r9), %eax
	testl	%eax, %eax
	jg	.L8388
	movl	$885, %r8d
	movq	%r9, 40(%rsp)
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	40(%rsp), %r9
	subl	$1, 496(%r9)
	jmp	.L8410
	.p2align 4,,10
.L8412:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rbp), %xmm0
	movss	228(%r15), %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L8413
.L8391:
	movss	%xmm0, 228(%r15)
	movq	$-1, %rdx
	cmpq	%rdx, %r14
	je	.L8393
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L8394
	jmp	.L8393
	.p2align 4,,10
.L8395:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L8393
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8393
.L8394:
	cmpb	$35, %al
	jne	.L8395
	cmpb	$35, 1(%rdx)
	jne	.L8395
	.p2align 4,,10
.L8393:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8382
	.p2align 4,,10
.L8413:
	movaps	%xmm1, %xmm0
	jmp	.L8391
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9InputInt2EPKcPii
	.def	_ZN5ImGui9InputInt2EPKcPii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9InputInt2EPKcPii
_ZN5ImGui9InputInt2EPKcPii:
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
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %rax
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%r8d, %r12d
	movb	$1, 138(%rax)
	movq	6008(%rbp), %r15
	movzbl	140(%r15), %esi
	testb	%sil, %sil
	je	.L8441
	xorl	%esi, %esi
.L8414:
	movaps	48(%rsp), %xmm6
	movl	%esi, %eax
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
.L8441:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	pxor	%xmm6, %xmm6
	call	_ZN5ImGui6PushIDEPKc
	leaq	.LC314(%rip), %r13
	call	_ZL20PushMultiItemsWidthsif.constprop.132
	leaq	.LC20(%rip), %rax
	testb	$2, %r12b
	cmove	%rax, %r13
	xorl	%edi, %edi
	jmp	.L8416
	.p2align 4,,10
.L8420:
	subl	$1, %eax
	addq	$4, %rbx
	movl	%eax, 496(%r9)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$1, %edi
	je	.L8421
.L8422:
	movl	$1, %edi
.L8416:
	movl	%edi, %ecx
	call	_ZN5ImGui6PushIDEi
	movq	%r13, %rdx
	movl	%r12d, %r8d
	movq	%rbx, %rcx
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.111
	movq	GImGui(%rip), %rdx
	orl	%eax, %esi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L8417
	ucomiss	%xmm0, %xmm6
	jbe	.L8418
	movss	5168(%rdx), %xmm0
.L8418:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movq	6008(%rdx), %rax
.L8417:
	movb	$1, 138(%rax)
	movq	6008(%rdx), %r9
	movl	496(%r9), %eax
	testl	%eax, %eax
	jg	.L8420
	movl	$885, %r8d
	movq	%r9, 40(%rsp)
	addq	$4, %rbx
	leaq	.LC2(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	call	_assert
	movq	40(%rsp), %r9
	subl	$1, 496(%r9)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$1, %edi
	jne	.L8422
.L8421:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rbp), %xmm0
	movss	228(%r15), %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L8442
.L8423:
	movss	%xmm0, 228(%r15)
	movq	$-1, %rdx
	cmpq	%rdx, %r14
	je	.L8425
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L8426
	jmp	.L8425
	.p2align 4,,10
.L8427:
	addq	$1, %rdx
	cmpq	$-1, %rdx
	je	.L8425
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8425
.L8426:
	cmpb	$35, %al
	jne	.L8427
	cmpb	$35, 1(%rdx)
	jne	.L8427
	.p2align 4,,10
.L8425:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8414
	.p2align 4,,10
.L8442:
	movaps	%xmm1, %xmm0
	jmp	.L8423
	.seh_endproc
	.section .rdata,"dr"
.LC315:
	.ascii "%3.0f\0"
.LC316:
	.ascii "R:%3.0f\0"
.LC317:
	.ascii "H:%3.0f\0"
.LC318:
	.ascii "##X\0"
.LC319:
	.ascii "G:%3.0f\0"
.LC320:
	.ascii "A:%3.0f\0"
.LC321:
	.ascii "B:%3.0f\0"
.LC322:
	.ascii "S:%3.0f\0"
.LC323:
	.ascii "V:%3.0f\0"
.LC324:
	.ascii "##Y\0"
.LC325:
	.ascii "##Z\0"
.LC326:
	.ascii "##W\0"
.LC327:
	.ascii "M:999\0"
.LC328:
	.ascii "#%02X%02X%02X%02X\0"
.LC329:
	.ascii "#%02X%02X%02X\0"
.LC330:
	.ascii "##Text\0"
.LC331:
	.ascii "%02X%02X%02X%02X\0"
.LC332:
	.ascii "%02X%02X%02X\0"
.LC333:
	.ascii "RGB\0"
.LC334:
	.ascii "HSV\0"
.LC335:
	.ascii "HEX\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10ColorEdit4EPKcPfb
	.def	_ZN5ImGui10ColorEdit4EPKcPfb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10ColorEdit4EPKcPfb
_ZN5ImGui10ColorEdit4EPKcPfb:
.LFB1046:
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
	movaps	%xmm6, 304(%rsp)
	.seh_savexmm	%xmm6, 304
	movaps	%xmm7, 320(%rsp)
	.seh_savexmm	%xmm7, 320
	movaps	%xmm8, 336(%rsp)
	.seh_savexmm	%xmm8, 336
	movaps	%xmm9, 352(%rsp)
	.seh_savexmm	%xmm9, 352
	movaps	%xmm10, 368(%rsp)
	.seh_savexmm	%xmm10, 368
	movaps	%xmm11, 384(%rsp)
	.seh_savexmm	%xmm11, 384
	movaps	%xmm12, 400(%rsp)
	.seh_savexmm	%xmm12, 400
	movaps	%xmm13, 416(%rsp)
	.seh_savexmm	%xmm13, 416
	movaps	%xmm14, 432(%rsp)
	.seh_savexmm	%xmm14, 432
	movaps	%xmm15, 448(%rsp)
	.seh_savexmm	%xmm15, 448
	.seh_endprologue
	movq	GImGui(%rip), %r13
	movq	6008(%r13), %rax
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movl	%r8d, 96(%rsp)
	movb	$1, 138(%rax)
	movq	6008(%r13), %rbp
	movzbl	140(%rbp), %esi
	testb	%sil, %sil
	je	.L8562
	xorl	%esi, %esi
.L8443:
	movaps	304(%rsp), %xmm6
	movl	%esi, %eax
	movaps	320(%rsp), %xmm7
	movaps	336(%rsp), %xmm8
	movaps	352(%rsp), %xmm9
	movaps	368(%rsp), %xmm10
	movaps	384(%rsp), %xmm11
	movaps	400(%rsp), %xmm12
	movaps	416(%rsp), %xmm13
	movaps	432(%rsp), %xmm14
	movaps	448(%rsp), %xmm15
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
	.p2align 4,,10
.L8562:
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, 100(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	movl	400(%rbp), %edi
	movss	5160(%r13), %xmm7
	movaps	%xmm0, %xmm8
	addss	%xmm7, %xmm7
	addss	5944(%r13), %xmm7
	cmpl	$-2, %edi
	jnb	.L8563
.L8445:
	pxor	%xmm0, %xmm0
	movlps	(%rbx), %xmm0
	cmpl	$1, %edi
	movss	(%rbx), %xmm1
	movhps	8(%rbx), %xmm0
	movss	4(%rbx), %xmm5
	pxor	%xmm6, %xmm6
	movss	8(%rbx), %xmm2
	movaps	%xmm0, 144(%rsp)
	movss	12(%rbx), %xmm3
	je	.L8564
.L8446:
	ucomiss	%xmm6, %xmm1
	movaps	%xmm1, %xmm0
	movss	.LC19(%rip), %xmm9
	movss	.LC17(%rip), %xmm4
	mulss	%xmm9, %xmm0
	jnb	.L8451
	movss	.LC110(%rip), %xmm4
.L8451:
	addss	%xmm4, %xmm0
	movss	.LC17(%rip), %xmm1
	ucomiss	%xmm6, %xmm5
	cvttss2si	%xmm0, %eax
	movaps	%xmm5, %xmm0
	mulss	%xmm9, %xmm0
	movl	%eax, 160(%rsp)
	jnb	.L8453
	movss	.LC110(%rip), %xmm1
.L8453:
	addss	%xmm1, %xmm0
	movss	.LC17(%rip), %xmm1
	ucomiss	%xmm6, %xmm2
	cvttss2si	%xmm0, %eax
	movaps	%xmm2, %xmm0
	mulss	%xmm9, %xmm0
	movl	%eax, 164(%rsp)
	jnb	.L8455
	movss	.LC110(%rip), %xmm1
.L8455:
	addss	%xmm1, %xmm0
	movss	.LC17(%rip), %xmm1
	ucomiss	%xmm6, %xmm3
	cvttss2si	%xmm0, %eax
	movaps	%xmm3, %xmm0
	mulss	%xmm9, %xmm0
	movl	%eax, 168(%rsp)
	jnb	.L8457
	movss	.LC110(%rip), %xmm1
.L8457:
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 172(%rsp)
	movl	96(%rsp), %eax
	cmpb	$1, %al
	sbbl	%r14d, %r14d
	addl	$3, %r14d
	cmpb	$1, %al
	sbbl	%eax, %eax
	addl	$4, %eax
	movl	%eax, 88(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	movq	%r12, %rcx
	call	_ZN5ImGui6PushIDEPKc
	testl	%edi, %edi
	js	.L8561
	cmpl	$1, %edi
	jle	.L8461
	cmpl	$2, %edi
	jne	.L8561
	cmpb	$0, 96(%rsp)
	subss	%xmm7, %xmm8
	leaq	208(%rsp), %r14
	movl	168(%rsp), %edx
	movl	164(%rsp), %eax
	movl	160(%rsp), %r9d
	je	.L8472
	movl	172(%rsp), %ecx
	movl	%edx, 40(%rsp)
	leaq	.LC328(%rip), %r8
	movl	$64, %edx
	movl	%eax, 32(%rsp)
	movl	%ecx, 48(%rsp)
	movq	%r14, %rcx
	call	_Z14ImFormatStringPciPKcz
.L8473:
	leaq	176(%rsp), %r15
	movaps	%xmm8, %xmm0
	subss	5176(%r13), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	movl	$6, 32(%rsp)
	movq	%r15, %r9
	movq	%r14, %rdx
	movq	$0, 48(%rsp)
	movl	$64, %r8d
	movq	$0, 40(%rsp)
	leaq	.LC330(%rip), %rcx
	movq	$0, 176(%rsp)
	call	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	movl	%eax, %esi
	je	.L8474
	movabsq	$38654706176, %rdx
	movq	%r14, %rcx
	.p2align 4,,10
.L8479:
	movzbl	(%rcx), %eax
	cmpb	$35, %al
	jbe	.L8565
.L8475:
	cmpb	$0, 96(%rsp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 160(%rsp)
	je	.L8566
	leaq	160(%rsp), %r8
	leaq	12(%r8), %rax
	movq	%rax, 40(%rsp)
	leaq	8(%r8), %rax
	movq	%rax, 32(%rsp)
	leaq	4(%r8), %r9
	leaq	.LC331(%rip), %rdx
	call	_Z6sscanfPKcS0_z
	movzbl	96(%rsp), %esi
.L8474:
	call	_ZN5ImGui12PopItemWidthEv
	movss	.LC18(%rip), %xmm7
.L8460:
	movss	5176(%r13), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	movss	8(%rbx), %xmm0
	xorl	%edx, %edx
	movq	%r15, %rcx
	movss	4(%rbx), %xmm1
	movl	$1, %r8d
	movss	%xmm7, 188(%rsp)
	movss	%xmm0, 184(%rsp)
	movss	(%rbx), %xmm2
	movss	%xmm1, 180(%rsp)
	movss	%xmm2, 176(%rsp)
	call	_ZN5ImGui11ColorButtonERK6ImVec4bb
	testb	%al, %al
	jne	.L8567
.L8480:
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	cmpb	$0, 268(%rax)
	je	.L8481
	movss	12(%rbx), %xmm8
	xorl	%ecx, %ecx
	ucomiss	%xmm8, %xmm6
	ja	.L8482
	ucomiss	%xmm7, %xmm8
	movl	$255, %ecx
	ja	.L8482
	movaps	%xmm8, %xmm0
	mulss	%xmm9, %xmm0
	addss	.LC17(%rip), %xmm0
	cvttss2si	%xmm0, %ecx
.L8482:
	movss	8(%rbx), %xmm3
	xorl	%edx, %edx
	ucomiss	%xmm3, %xmm6
	ja	.L8483
	ucomiss	%xmm7, %xmm3
	movl	$255, %edx
	ja	.L8483
	movaps	%xmm3, %xmm0
	mulss	%xmm9, %xmm0
	addss	.LC17(%rip), %xmm0
	cvttss2si	%xmm0, %edx
.L8483:
	movss	4(%rbx), %xmm2
	xorl	%eax, %eax
	ucomiss	%xmm2, %xmm6
	ja	.L8484
	ucomiss	%xmm7, %xmm2
	movl	$255, %eax
	ja	.L8484
	movaps	%xmm2, %xmm0
	mulss	%xmm9, %xmm0
	addss	.LC17(%rip), %xmm0
	cvttss2si	%xmm0, %eax
.L8484:
	movss	(%rbx), %xmm1
	xorl	%r8d, %r8d
	ucomiss	%xmm1, %xmm6
	ja	.L8485
	ucomiss	%xmm7, %xmm1
	movl	$255, %r8d
	ja	.L8485
	mulss	%xmm1, %xmm9
	addss	.LC17(%rip), %xmm9
	cvttss2si	%xmm9, %r8d
.L8485:
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm5
	cvtss2sd	%xmm2, %xmm4
	pxor	%xmm0, %xmm0
	movl	%ecx, 64(%rsp)
	cvtss2sd	%xmm1, %xmm0
	cvtss2sd	%xmm8, %xmm8
	movl	%edx, 56(%rsp)
	movapd	%xmm5, %xmm3
	movapd	%xmm4, %xmm2
	movapd	%xmm0, %xmm1
	movl	%r8d, 40(%rsp)
	movq	%xmm5, %r9
	movq	%xmm4, %r8
	movq	%xmm0, %rdx
	movl	%eax, 48(%rsp)
	leaq	.LC224(%rip), %rcx
	movsd	%xmm8, 32(%rsp)
	call	_ZN5ImGui10SetTooltipEPKcz
.L8481:
	cmpl	$-1, 400(%rbp)
	je	.L8568
.L8486:
	cmpq	$-1, %r12
	je	.L8488
	movzbl	(%r12), %eax
	testb	%al, %al
	je	.L8488
	movq	%r12, %rcx
	jmp	.L8489
	.p2align 4,,10
.L8491:
	addq	$1, %rcx
	cmpq	$-1, %rcx
	je	.L8492
	movzbl	(%rcx), %eax
	testb	%al, %al
	je	.L8490
.L8489:
	cmpb	$35, %al
	jne	.L8491
	cmpb	$35, 1(%rcx)
	jne	.L8491
.L8490:
	cmpq	%rcx, %r12
	je	.L8488
.L8492:
	cmpl	$-1, 400(%rbp)
	je	.L8526
	movss	5176(%r13), %xmm0
.L8494:
	call	_ZN5ImGui8SameLineEff.constprop.126
	movq	%rcx, %rdx
	movq	%r12, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
.L8488:
	cmpl	$1, %edi
	cvtdq2ps	160(%rsp), %xmm0
	divps	.LC336(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	je	.L8569
.L8495:
	testb	%sil, %sil
	je	.L8506
	movss	144(%rsp), %xmm0
	cmpb	$0, 96(%rsp)
	movss	%xmm0, (%rbx)
	movss	148(%rsp), %xmm0
	movss	%xmm0, 4(%rbx)
	movss	152(%rsp), %xmm0
	movss	%xmm0, 8(%rbx)
	je	.L8506
	movss	156(%rsp), %xmm0
	movss	%xmm0, 12(%rbx)
.L8506:
	call	_ZN5ImGui5PopIDEv
	call	_ZN5ImGui8EndGroupEv
	jmp	.L8443
	.p2align 4,,10
.L8461:
	pxor	%xmm1, %xmm1
	cvtsi2ss	%r14d, %xmm1
	pxor	%xmm3, %xmm3
	movss	5176(%r13), %xmm2
	cvtsi2ss	88(%rsp), %xmm3
	pxor	%xmm10, %xmm10
	addss	%xmm2, %xmm7
	movaps	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	subss	%xmm7, %xmm8
	movss	.LC18(%rip), %xmm7
	movaps	%xmm8, %xmm4
	subss	%xmm0, %xmm4
	movaps	%xmm4, %xmm0
	divss	%xmm3, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm10
	ucomiss	%xmm10, %xmm7
	jb	.L8463
	movaps	%xmm7, %xmm10
.L8463:
	addss	%xmm10, %xmm2
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm8
	cvttss2si	%xmm8, %eax
	pxor	%xmm8, %xmm8
	cvtsi2ss	%eax, %xmm8
	ucomiss	%xmm8, %xmm7
	jb	.L8465
	movaps	%xmm7, %xmm8
.L8465:
	leaq	.LC319(%rip), %rax
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movddup	.LC337(%rip), %xmm13
	leaq	.LC316(%rip), %r14
	movq	%rax, %xmm3
	leaq	.LC321(%rip), %rax
	movq	%r14, %xmm15
	movq	%rax, %xmm12
	punpcklqdq	%xmm3, %xmm15
	leaq	.LC322(%rip), %rax
	movhps	.LC338(%rip), %xmm12
	leaq	.LC317(%rip), %r15
	movq	%rax, %xmm3
	leaq	.LC323(%rip), %rax
	movq	%r15, %xmm14
	punpcklqdq	%xmm3, %xmm14
	movss	.LC1(%rip), %xmm3
	movq	%rax, %xmm11
	leaq	.LC327(%rip), %rcx
	movhps	.LC338(%rip), %xmm11
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	leaq	.LC324(%rip), %rdx
	movaps	%xmm13, 208(%rsp)
	leaq	.LC318(%rip), %rcx
	movd	%eax, %xmm3
	movq	%rdx, %xmm4
	movaps	%xmm13, 224(%rsp)
	ucomiss	%xmm10, %xmm3
	movq	%rcx, %xmm0
	movaps	%xmm15, 240(%rsp)
	leaq	.LC326(%rip), %rdx
	punpcklqdq	%xmm4, %xmm0
	movaps	%xmm0, 176(%rsp)
	leaq	.LC325(%rip), %rcx
	movq	%rdx, %xmm5
	movaps	%xmm12, 256(%rsp)
	movaps	%xmm14, 272(%rsp)
	movq	%rcx, %xmm0
	movaps	%xmm11, 288(%rsp)
	punpcklqdq	%xmm5, %xmm0
	movaps	%xmm0, 192(%rsp)
	jnb	.L8516
	cmpl	$1, %edi
	je	.L8570
	leaq	240(%rsp), %rdx
	movq	%r14, %rax
	movq	%rdx, 120(%rsp)
	jmp	.L8467
	.p2align 4,,10
.L8565:
	btq	%rax, %rdx
	jnc	.L8475
	addq	$1, %rcx
	jmp	.L8479
	.p2align 4,,10
.L8564:
	ucomiss	%xmm5, %xmm2
	ja	.L8509
	movss	.LC83(%rip), %xmm10
	movaps	%xmm2, %xmm0
	movaps	%xmm5, %xmm2
	movaps	%xmm0, %xmm5
	pxor	%xmm0, %xmm0
.L8447:
	ucomiss	%xmm1, %xmm2
	ja	.L8448
	movaps	%xmm0, %xmm10
	movaps	%xmm2, %xmm0
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
.L8448:
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm9
	movss	.LC85(%rip), %xmm4
	movss	%xmm2, 152(%rsp)
	minss	%xmm5, %xmm0
	subss	%xmm5, %xmm1
	subss	%xmm0, %xmm9
	movss	.LC86(%rip), %xmm0
	mulss	%xmm9, %xmm4
	movaps	%xmm9, %xmm5
	addss	%xmm0, %xmm4
	addss	%xmm2, %xmm0
	divss	%xmm4, %xmm1
	divss	%xmm0, %xmm5
	addss	%xmm10, %xmm1
	andps	.LC87(%rip), %xmm1
	movss	%xmm1, 144(%rsp)
	movss	%xmm5, 148(%rsp)
	jmp	.L8446
	.p2align 4,,10
.L8569:
	movss	148(%rsp), %xmm9
	movss	152(%rsp), %xmm8
	ucomiss	%xmm6, %xmm9
	jp	.L8496
	jne	.L8496
	movss	%xmm8, 148(%rsp)
	movss	%xmm8, 144(%rsp)
	jmp	.L8495
	.p2align 4,,10
.L8561:
	movss	.LC18(%rip), %xmm7
	leaq	176(%rsp), %r15
	jmp	.L8460
	.p2align 4,,10
.L8567:
	leal	1(%rdi), %r8d
	movl	$1431655766, %edx
	leaq	10336(%r13), %rcx
	movl	%r8d, %eax
	imull	%edx
	movl	%r8d, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx,2), %eax
	movl	100(%rsp), %edx
	subl	%eax, %r8d
	call	_ZN12ImGuiStorage6SetIntEji
	jmp	.L8480
	.p2align 4,,10
.L8526:
	movss	.LC1(%rip), %xmm0
	jmp	.L8494
	.p2align 4,,10
.L8563:
	movl	100(%rsp), %edx
	leaq	10336(%r13), %rcx
	xorl	%r8d, %r8d
	call	_ZNK12ImGuiStorage6GetIntEji
	movl	$1431655766, %edx
	movl	%eax, %ecx
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	leal	(%rdi,%rdi,2), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	jmp	.L8445
	.p2align 4,,10
.L8568:
	movss	5176(%r13), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	leaq	.LC334(%rip), %rax
	movl	$64, %r8d
	movq	$0, 136(%rsp)
	leaq	.LC333(%rip), %rdx
	movq	%rax, %xmm4
	leaq	.LC335(%rip), %rax
	movq	%rdx, %xmm0
	movq	%rax, 224(%rsp)
	movslq	%edi, %rax
	punpcklqdq	%xmm4, %xmm0
	movaps	%xmm0, 208(%rsp)
	movq	208(%rsp,%rax,8), %rcx
	leaq	136(%rsp), %rdx
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	testb	%al, %al
	je	.L8486
	leal	1(%rdi), %r8d
	movl	$1431655766, %edx
	leaq	10336(%r13), %rcx
	movl	%r8d, %eax
	imull	%edx
	movl	%r8d, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx,2), %eax
	movl	100(%rsp), %edx
	subl	%eax, %r8d
	call	_ZN12ImGuiStorage6SetIntEji
	jmp	.L8486
	.p2align 4,,10
.L8509:
	movss	.LC84(%rip), %xmm10
	movss	.LC1(%rip), %xmm0
	jmp	.L8447
	.p2align 4,,10
.L8516:
	leaq	208(%rsp), %rdx
	leaq	.LC315(%rip), %rax
	movq	%rdx, 120(%rsp)
.L8467:
	movaps	%xmm10, %xmm0
	movq	%rax, 112(%rsp)
	movl	$1, %r14d
	call	_ZN5ImGui13PushItemWidthEf
	movl	%edi, 104(%rsp)
	leaq	156(%rsp), %rdx
	movl	88(%rsp), %edi
	movq	%rbx, 552(%rsp)
	leaq	.LC318(%rip), %rcx
	movq	%r14, %rbx
	movss	.LC18(%rip), %xmm10
	movq	%rbp, 88(%rsp)
	leaq	176(%rsp), %r15
	movq	112(%rsp), %rax
	movq	%rdx, %rbp
	movq	120(%rsp), %r14
	jmp	.L8468
	.p2align 4,,10
.L8471:
	movss	5176(%r13), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.126
	movq	(%r14,%rbx,8), %rax
	movq	(%r15,%rbx,8), %rcx
	addq	$1, %rbx
.L8468:
	leaq	0(%rbp,%rbx,4), %rdx
	cmpl	%ebx, %edi
	je	.L8571
	movq	-8(%r14,%rbx,8), %rax
	xorl	%r9d, %r9d
	movaps	%xmm10, %xmm2
	movq	-8(%r15,%rbx,8), %rcx
	movl	$255, 32(%rsp)
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui7DragIntEPKcPifiiS1_
	orl	%eax, %esi
	cmpl	%ebx, %edi
	jg	.L8471
	movl	104(%rsp), %edi
	movq	88(%rsp), %rbp
	movq	552(%rsp), %rbx
.L8470:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui12PopItemWidthEv
	jmp	.L8460
	.p2align 4,,10
.L8472:
	movl	%edx, 40(%rsp)
	leaq	.LC329(%rip), %r8
	movl	$64, %edx
	movq	%r14, %rcx
	movl	%eax, 32(%rsp)
	call	_Z14ImFormatStringPciPKcz
	jmp	.L8473
	.p2align 4,,10
.L8566:
	leaq	160(%rsp), %r8
	leaq	8(%r8), %rax
	movq	%rax, 32(%rsp)
	leaq	4(%r8), %r9
	leaq	.LC332(%rip), %rdx
	call	_Z6sscanfPKcS0_z
	jmp	.L8474
.L8570:
	leaq	272(%rsp), %rdx
	movq	%r15, %rax
	movq	%rdx, 120(%rsp)
	jmp	.L8467
	.p2align 4,,10
.L8496:
	movss	.LC18(%rip), %xmm1
	movaps	%xmm7, %xmm6
	movss	144(%rsp), %xmm0
	call	fmodf
	pxor	%xmm1, %xmm1
	movaps	%xmm9, %xmm2
	divss	.LC88(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm1
	cmpl	$4, %eax
	subss	%xmm1, %xmm0
	movaps	%xmm7, %xmm1
	subss	%xmm9, %xmm1
	mulss	%xmm0, %xmm2
	mulss	%xmm8, %xmm1
	subss	%xmm2, %xmm6
	movaps	%xmm6, %xmm2
	movaps	%xmm7, %xmm6
	subss	%xmm0, %xmm6
	mulss	%xmm8, %xmm2
	mulss	%xmm6, %xmm9
	subss	%xmm9, %xmm7
	mulss	%xmm8, %xmm7
	ja	.L8498
	leaq	.L8500(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L8500:
	.long	.L8499-.L8500
	.long	.L8501-.L8500
	.long	.L8502-.L8500
	.long	.L8503-.L8500
	.long	.L8504-.L8500
	.text
.L8503:
	movss	%xmm1, 144(%rsp)
	movss	%xmm2, 148(%rsp)
	jmp	.L8495
.L8502:
	movss	%xmm1, 144(%rsp)
	movss	%xmm8, 148(%rsp)
	movss	%xmm7, 152(%rsp)
	jmp	.L8495
.L8501:
	movss	%xmm2, 144(%rsp)
	movss	%xmm8, 148(%rsp)
	movss	%xmm1, 152(%rsp)
	jmp	.L8495
.L8499:
	movss	%xmm8, 144(%rsp)
	movss	%xmm7, 148(%rsp)
	movss	%xmm1, 152(%rsp)
	jmp	.L8495
.L8504:
	movss	%xmm7, 144(%rsp)
	movss	%xmm1, 148(%rsp)
	jmp	.L8495
.L8498:
	movss	%xmm8, 144(%rsp)
	movss	%xmm1, 148(%rsp)
	movss	%xmm2, 152(%rsp)
	jmp	.L8495
.L8571:
	movaps	%xmm8, %xmm0
	movl	104(%rsp), %edi
	movq	%rdx, 112(%rsp)
	movq	88(%rsp), %rbp
	movq	%rax, 104(%rsp)
	movq	%rcx, 88(%rsp)
	movq	552(%rsp), %rbx
	call	_ZN5ImGui13PushItemWidthEf
	movq	104(%rsp), %rax
	xorl	%r9d, %r9d
	movl	$255, 32(%rsp)
	movq	112(%rsp), %rdx
	movq	88(%rsp), %rcx
	movss	.LC18(%rip), %xmm2
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui7DragIntEPKcPifiiS1_
	orl	%eax, %esi
	jmp	.L8470
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10ColorEdit3EPKcPf
	.def	_ZN5ImGui10ColorEdit3EPKcPf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10ColorEdit3EPKcPf
_ZN5ImGui10ColorEdit3EPKcPf:
.LFB1045:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	xorl	%r8d, %r8d
	movss	(%rdx), %xmm0
	movss	%xmm0, 32(%rsp)
	movss	4(%rdx), %xmm0
	movq	%rdx, %rbx
	movl	$0x3f800000, 44(%rsp)
	movss	%xmm0, 36(%rsp)
	movss	8(%rdx), %xmm0
	leaq	32(%rsp), %rdx
	movss	%xmm0, 40(%rsp)
	call	_ZN5ImGui10ColorEdit4EPKcPfb
	movss	32(%rsp), %xmm0
	movss	%xmm0, (%rbx)
	movss	36(%rsp), %xmm0
	movss	%xmm0, 4(%rbx)
	movss	40(%rsp), %xmm0
	movss	%xmm0, 8(%rbx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2
	.def	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2
_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2:
.LFB1031:
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
	.seh_endprologue
	movq	GImGui(%rip), %rdi
	movq	6008(%rdi), %rax
	movq	%rcx, %r12
	movq	%rdx, %r13
	movb	$1, 138(%rax)
	movq	6008(%rdi), %rsi
	xorl	%eax, %eax
	cmpb	$0, 140(%rsi)
	je	.L8584
.L8573:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
	movaps	144(%rsp), %xmm10
	addq	$168, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L8584:
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%r12, %rcx
	movss	.LC1(%rip), %xmm3
	movl	%eax, %ebp
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movq	%rax, %rbx
	movd	%eax, %xmm8
	movq	GImGui(%rip), %rax
	shrq	$32, %rbx
	movss	5944(%rax), %xmm2
	addss	5172(%rax), %xmm2
	mulss	.LC339(%rip), %xmm2
	addss	5172(%rdi), %xmm2
	movss	%xmm2, 60(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	movq	0(%r13), %rcx
	movss	60(%rsp), %xmm2
	movaps	%xmm0, %xmm1
	call	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	movd	%ebx, %xmm0
	movq	%rax, %rbx
	shrq	$32, %rbx
	movd	%ebx, %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L8585
.L8575:
	movss	196(%rsi), %xmm9
	movaps	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm8
	movss	192(%rsi), %xmm10
	movd	%eax, %xmm7
	addss	%xmm9, %xmm6
	addss	%xmm10, %xmm7
	movaps	%xmm6, %xmm1
	addss	%xmm0, %xmm1
	jbe	.L8583
	addss	5176(%rdi), %xmm8
	movss	%xmm10, 252(%rsi)
	movss	%xmm9, 256(%rsi)
	movss	%xmm1, 264(%rsi)
	addss	%xmm7, %xmm8
	movss	%xmm8, 260(%rsi)
	call	_ZN5ImGui10BeginGroupEv
	movss	5160(%rdi), %xmm5
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movss	5176(%rdi), %xmm4
	addss	%xmm9, %xmm5
	addss	%xmm7, %xmm4
	movd	%xmm5, %ecx
	movq	%rcx, %rdx
	movd	%xmm4, %eax
	salq	$32, %rdx
	movl	%eax, %ecx
	orq	%rdx, %rcx
	movq	%r12, %rdx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
.L8579:
	movq	GImGui(%rip), %rbx
	subss	%xmm10, %xmm7
	movl	$3, %ecx
	subss	%xmm9, %xmm6
	movss	%xmm7, 72(%rsp)
	leaq	5360(%rbx), %rdx
	movss	%xmm6, 76(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movss	5164(%rbx), %xmm1
	movl	$4, %ecx
	call	_ZN5ImGui12PushStyleVarEif
	leaq	5156(%rbx), %rdx
	movl	$1, %ecx
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movq	6008(%rbx), %rax
	movl	%ebp, %edx
	xorl	%ecx, %ecx
	leaq	72(%rsp), %r8
	movl	12(%rax), %r9d
	movl	$65540, 32(%rsp)
	sarl	$7, %r9d
	andl	$1, %r9d
	call	_ZL12BeginChildExPKcjRK6ImVec2bi
	movl	$1, %eax
	jmp	.L8573
	.p2align 4,,10
.L8585:
	movd	%ebx, %xmm0
	jmp	.L8575
	.p2align 4,,10
.L8583:
	addss	%xmm7, %xmm0
	movss	%xmm1, 264(%rsi)
	movss	%xmm10, 252(%rsi)
	movss	%xmm9, 256(%rsi)
	movss	%xmm0, 260(%rsi)
	call	_ZN5ImGui10BeginGroupEv
	jmp	.L8579
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13ListBoxHeaderEPKcii
	.def	_ZN5ImGui13ListBoxHeaderEPKcii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13ListBoxHeaderEPKcii
_ZN5ImGui13ListBoxHeaderEPKcii:
.LFB1032:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	testl	%r8d, %r8d
	js	.L8587
	pxor	%xmm0, %xmm0
	cvtsi2ss	%r8d, %xmm0
.L8588:
	cmpl	%edx, %r8d
	jge	.L8590
	addss	.LC108(%rip), %xmm0
	jmp	.L8591
	.p2align 4,,10
.L8587:
	cmpl	$6, %edx
	jg	.L8592
	pxor	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm0
.L8590:
	addss	.LC0(%rip), %xmm0
.L8591:
	movq	GImGui(%rip), %rax
	leaq	40(%rsp), %rdx
	movl	$0x00000000, 40(%rsp)
	movss	5172(%rax), %xmm2
	movss	5944(%rax), %xmm1
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 44(%rsp)
	call	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2
	addq	$56, %rsp
	ret
	.p2align 4,,10
.L8592:
	movss	.LC340(%rip), %xmm0
	movl	$7, %r8d
	jmp	.L8588
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7ListBoxEPKcPiPKS1_ii
	.def	_ZN5ImGui7ListBoxEPKcPiPKS1_ii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7ListBoxEPKcPiPKS1_ii
_ZN5ImGui7ListBoxEPKcPiPKS1_ii:
.LFB1034:
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
	movl	208(%rsp), %eax
	testl	%eax, %eax
	movq	%rdx, %r12
	movq	%r8, 192(%rsp)
	movl	%r9d, %ebx
	js	.L8594
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
.L8595:
	cmpl	%eax, %ebx
	jle	.L8597
	addss	.LC108(%rip), %xmm0
	jmp	.L8598
	.p2align 4,,10
.L8594:
	cmpl	$6, %r9d
	jg	.L8616
	pxor	%xmm0, %xmm0
	cvtsi2ss	%r9d, %xmm0
.L8597:
	addss	.LC0(%rip), %xmm0
.L8598:
	movq	GImGui(%rip), %rax
	movl	$0x00000000, 64(%rsp)
	movss	5172(%rax), %xmm2
	movss	5944(%rax), %xmm1
	leaq	64(%rsp), %rax
	movq	%rax, %rdx
	movq	%rax, 40(%rsp)
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 68(%rsp)
.LEHB20:
	call	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2
.LEHE20:
	testb	%al, %al
	movl	%eax, %r14d
	jne	.L8617
.L8593:
	movl	%r14d, %eax
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
	.p2align 4,,10
.L8617:
	movq	40(%rsp), %rcx
	leaq	56(%rsp), %r13
	movl	%ebx, %edx
	xorl	%r14d, %r14d
	movq	GImGui(%rip), %rax
	movss	5944(%rax), %xmm2
	addss	5172(%rax), %xmm2
	call	_ZN16ImGuiListClipper5BeginEif
	.p2align 4,,10
.L8602:
	movq	40(%rsp), %rcx
.LEHB21:
	call	_ZN16ImGuiListClipper4StepEv
	testb	%al, %al
	je	.L8600
	movl	80(%rsp), %ebx
	cmpl	84(%rsp), %ebx
	jge	.L8602
	movq	192(%rsp), %rdi
	movslq	%ebx, %rax
	leaq	.LC4(%rip), %r15
	leaq	(%rdi,%rax,8), %rdi
	jmp	.L8606
	.p2align 4,,10
.L8604:
	subl	$1, %eax
	addl	$1, %ebx
	addq	$8, %rdi
	movl	%eax, 496(%rsi)
	cmpl	%ebx, 84(%rsp)
	jle	.L8602
.L8606:
	cmpl	%ebx, (%r12)
	movl	%ebx, %ecx
	movq	(%rdi), %rbp
	sete	%sil
	call	_ZN5ImGui6PushIDEi
	movzbl	%sil, %edx
	movq	%r13, %r8
	movq	%rbp, %rcx
	movq	$0, 56(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.129
	testb	%al, %al
	je	.L8603
	movl	%ebx, (%r12)
	movl	%eax, %r14d
.L8603:
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rsi
	movl	496(%rsi), %eax
	testl	%eax, %eax
	jg	.L8604
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	movq	%r15, %rcx
	call	_assert
	movl	496(%rsi), %eax
	jmp	.L8604
	.p2align 4,,10
.L8600:
	call	_ZN5ImGui13ListBoxFooterEv
.LEHE21:
	cmpl	$-1, 72(%rsp)
	je	.L8593
	leaq	.LC2(%rip), %rdx
	movl	$1103, %r8d
	leaq	.LC252(%rip), %rcx
	call	_assert
	jmp	.L8593
	.p2align 4,,10
.L8616:
	movss	.LC340(%rip), %xmm0
	movl	$7, %eax
	jmp	.L8595
.L8609:
	cmpl	$-1, 72(%rsp)
	movq	%rax, %rbx
	je	.L8608
	leaq	.LC2(%rip), %rdx
	movl	$1103, %r8d
	leaq	.LC252(%rip), %rcx
	call	_assert
.L8608:
	movq	%rbx, %rcx
.LEHB22:
	call	_Unwind_Resume
	nop
.LEHE22:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1034:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1034-.LLSDACSB1034
.LLSDACSB1034:
	.uleb128 .LEHB20-.LFB1034
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB1034
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L8609-.LFB1034
	.uleb128 0
	.uleb128 .LEHB22-.LFB1034
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE1034:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC341:
	.ascii "*Unknown item*\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii
	.def	_ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii
_ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii:
.LFB1035:
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
	movl	216(%rsp), %eax
	movl	208(%rsp), %ebx
	testl	%eax, %eax
	movq	%rdx, %rdi
	movq	%r8, %r13
	movq	%r9, %r14
	js	.L8619
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
.L8620:
	cmpl	%eax, %ebx
	jle	.L8622
	addss	.LC108(%rip), %xmm0
	jmp	.L8623
	.p2align 4,,10
.L8619:
	cmpl	$6, %ebx
	jg	.L8643
	pxor	%xmm0, %xmm0
	cvtsi2ss	%ebx, %xmm0
.L8622:
	addss	.LC0(%rip), %xmm0
.L8623:
	movq	GImGui(%rip), %rax
	movl	$0x00000000, 64(%rsp)
	movss	5172(%rax), %xmm2
	movss	5944(%rax), %xmm1
	leaq	64(%rsp), %rax
	movq	%rax, %rdx
	movq	%rax, 40(%rsp)
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 68(%rsp)
.LEHB23:
	call	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2
.LEHE23:
	testb	%al, %al
	movl	%eax, %r15d
	jne	.L8644
.L8618:
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
	.p2align 4,,10
.L8644:
	movq	GImGui(%rip), %rax
	movl	%ebx, %edx
	xorl	%r15d, %r15d
	movq	40(%rsp), %rcx
	movss	5944(%rax), %xmm2
	addss	5172(%rax), %xmm2
	call	_ZN16ImGuiListClipper5BeginEif
	.p2align 4,,10
.L8627:
	movq	40(%rsp), %rcx
.LEHB24:
	call	_ZN16ImGuiListClipper4StepEv
	testb	%al, %al
	je	.L8625
	movl	80(%rsp), %ebx
	leaq	48(%rsp), %rbp
	cmpl	84(%rsp), %ebx
	leaq	56(%rsp), %r12
	jl	.L8626
	jmp	.L8627
	.p2align 4,,10
.L8630:
	subl	$1, %eax
	addl	$1, %ebx
	movl	%eax, 496(%rsi)
	cmpl	%ebx, 84(%rsp)
	jle	.L8627
.L8626:
	cmpl	%ebx, (%rdi)
	movq	%rbp, %r8
	movl	%ebx, %edx
	movq	%r14, %rcx
	sete	%sil
	call	*%r13
	testb	%al, %al
	jne	.L8628
	leaq	.LC341(%rip), %rax
	movq	%rax, 48(%rsp)
.L8628:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	movq	48(%rsp), %rcx
	movzbl	%sil, %edx
	movq	%r12, %r8
	movq	$0, 56(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.129
	testb	%al, %al
	je	.L8629
	movl	%ebx, (%rdi)
	movl	%eax, %r15d
.L8629:
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rsi
	movl	496(%rsi), %eax
	testl	%eax, %eax
	jg	.L8630
	leaq	.LC2(%rip), %rdx
	movl	$885, %r8d
	leaq	.LC4(%rip), %rcx
	call	_assert
	movl	496(%rsi), %eax
	jmp	.L8630
	.p2align 4,,10
.L8625:
	call	_ZN5ImGui13ListBoxFooterEv
.LEHE24:
	cmpl	$-1, 72(%rsp)
	je	.L8618
	leaq	.LC2(%rip), %rdx
	movl	$1103, %r8d
	leaq	.LC252(%rip), %rcx
	call	_assert
	jmp	.L8618
	.p2align 4,,10
.L8643:
	movss	.LC340(%rip), %xmm0
	movl	$7, %eax
	jmp	.L8620
.L8634:
	cmpl	$-1, 72(%rsp)
	movq	%rax, %rbx
	je	.L8633
	leaq	.LC2(%rip), %rdx
	movl	$1103, %r8d
	leaq	.LC252(%rip), %rcx
	call	_assert
.L8633:
	movq	%rbx, %rcx
.LEHB25:
	call	_Unwind_Resume
	nop
.LEHE25:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA1035:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1035-.LLSDACSB1035
.LLSDACSB1035:
	.uleb128 .LEHB23-.LFB1035
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB1035
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L8634-.LFB1035
	.uleb128 0
	.uleb128 .LEHB25-.LFB1035
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE1035:
	.text
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5BeginEPKcPbi
	.def	_ZN5ImGui5BeginEPKcPbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5BeginEPKcPbi
_ZN5ImGui5BeginEPKcPbi:
.LFB770:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movss	.LC1(%rip), %xmm3
	movl	%r8d, 32(%rsp)
	leaq	56(%rsp), %r8
	movq	$0, 56(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	addq	$72, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC345:
	.ascii "g.IO.DeltaTime >= 0.0f\0"
	.align 8
.LC346:
	.ascii "g.IO.DisplaySize.x >= 0.0f && g.IO.DisplaySize.y >= 0.0f\0"
.LC347:
	.ascii "g.IO.Fonts->Fonts.Size > 0\0"
	.align 8
.LC348:
	.ascii "g.IO.Fonts->Fonts[0]->IsLoaded()\0"
	.align 8
.LC349:
	.ascii "g.Style.CurveTessellationTol > 0.0f\0"
.LC350:
	.ascii "g.Settings.empty()\0"
.LC351:
	.ascii "rb\0"
.LC352:
	.ascii "%.*s\0"
.LC353:
	.ascii "Pos=%f,%f\0"
.LC354:
	.ascii "Size=%f,%f\0"
.LC355:
	.ascii "Collapsed=%d\0"
.LC356:
	.ascii "g.Font->IsLoaded()\0"
	.align 8
.LC358:
	.ascii "g.MovedWindow && g.MovedWindow->RootWindow\0"
	.align 8
.LC359:
	.ascii "g.MovedWindow->RootWindow->MoveId == g.MovedWindowMoveId\0"
	.align 8
.LC361:
	.ascii "(popup.Window->Flags & ImGuiWindowFlags_Popup) != 0\0"
.LC362:
	.ascii "Debug\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8NewFrameEv
	.def	_ZN5ImGui8NewFrameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8NewFrameEv
_ZN5ImGui8NewFrameEv:
.LFB670:
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
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movaps	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	pxor	%xmm6, %xmm6
	movss	16(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jb	.L8997
.L8647:
	movss	8(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jb	.L8648
	movss	12(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jb	.L8648
	movq	144(%rbx), %rsi
	movl	48(%rsi), %eax
	testl	%eax, %eax
	jle	.L8998
.L8651:
	movq	56(%rsi), %rax
	movq	(%rax), %rax
	cmpq	$0, 88(%rax)
	je	.L8999
.L8652:
	movss	5244(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L9000
.L8653:
	cmpb	$0, (%rbx)
	leaq	80(%rsp), %rbp
	movq	GImGui(%rip), %rsi
	jne	.L8654
	addl	$1, 844(%rsi)
	movl	$16, %ecx
.LEHB26:
	call	*232(%rsi)
.LEHE26:
	movl	$8, %ecx
	movq	%rax, %rsi
	movq	%rax, 11448(%rbx)
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	GImGui(%rip), %rax
	addl	$1, 844(%rax)
.LEHB27:
	call	*232(%rax)
	movq	8(%rsi), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L8657
	movslq	(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	call	memcpy
	movq	8(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L8657
	subl	$1, 844(%rax)
.L8657:
	call	*240(%rax)
.LEHE27:
	movslq	(%rsi), %rax
	movl	$8, 4(%rsi)
	movq	%rdi, 8(%rsi)
	leal	1(%rax), %edx
	movl	%edx, (%rsi)
	movb	$0, (%rdi,%rax)
	movl	6112(%rbx), %eax
	testl	%eax, %eax
	jne	.L9001
.L8658:
	movq	24(%rbx), %rcx
	leaq	80(%rsp), %rbp
	testq	%rcx, %rcx
	je	.L8678
	movq	GImGui(%rip), %rax
	movl	$1, %r9d
	leaq	68(%rsp), %r8
	leaq	.LC351(%rip), %rdx
	movq	%rax, 56(%rsp)
.LEHB28:
	call	_Z18ImFileLoadToMemoryPKcS0_Pii
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L8678
	movslq	68(%rsp), %rdi
	addq	%rax, %rdi
	cmpq	%rdi, %rax
	jnb	.L8663
	leaq	76(%rsp), %r14
	movq	%rax, %r13
	xorl	%r15d, %r15d
	leaq	72(%rsp), %rax
	movq	%rax, 48(%rsp)
	.p2align 4,,10
.L8677:
	cmpq	%rdi, %r13
	jnb	.L8828
	movzbl	0(%r13), %edx
	movq	%r13, %rsi
	cmpb	$10, %dl
	je	.L8664
	cmpb	$13, %dl
	jne	.L8665
	jmp	.L8664
	.p2align 4,,10
.L8667:
	movzbl	(%rsi), %eax
	cmpb	$13, %al
	je	.L8666
	cmpb	$10, %al
	je	.L8666
.L8665:
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.L8667
	movq	%rdi, %rsi
.L8666:
	cmpq	%rsi, %r13
	jnb	.L8664
	cmpb	$91, %dl
	je	.L9002
.L8664:
	testq	%r15, %r15
	je	.L8669
	movq	48(%rsp), %r8
	leaq	.LC353(%rip), %rdx
	movq	%r14, %r9
	movq	%r13, %rcx
	call	_Z6sscanfPKcS0_z
	cmpl	$2, %eax
	jne	.L8670
	movss	72(%rsp), %xmm0
	movss	%xmm0, 12(%r15)
	movss	76(%rsp), %xmm0
	movss	%xmm0, 16(%r15)
.L8669:
	leaq	1(%rsi), %r13
	cmpq	%r13, %rdi
	ja	.L8677
.L8663:
	movq	GImGui(%rip), %rax
	movq	%r12, %rcx
	subl	$1, 844(%rax)
	call	*240(%rax)
.L8678:
	movb	$1, (%rbx)
	movq	GImGui(%rip), %rsi
.L8654:
	movq	160(%rsi), %rdi
	testq	%rdi, %rdi
	je	.L9003
.L8679:
	cmpq	$0, 88(%rdi)
	je	.L8681
	movss	4(%rdi), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L9004
.L8683:
	movq	6008(%rsi), %rax
	movq	%rdi, 5936(%rsi)
	movss	152(%rsi), %xmm0
	mulss	(%rdi), %xmm0
	mulss	4(%rdi), %xmm0
	testq	%rax, %rax
	movss	%xmm0, 5948(%rsi)
	pxor	%xmm0, %xmm0
	je	.L8684
	movq	GImGui(%rip), %rdx
	movss	5948(%rdx), %xmm0
	mulss	648(%rax), %xmm0
.L8684:
	movss	%xmm0, 5944(%rsi)
	movq	88(%rdi), %rax
	movq	36(%rax), %rax
	movq	%rax, 5952(%rsi)
	movq	5936(%rbx), %rax
	cmpq	$0, 88(%rax)
	je	.L9005
.L8685:
	movss	5960(%rbx), %xmm0
	leaq	6392(%rbx), %rsi
	movb	$0, 10384(%rbx)
	addss	16(%rbx), %xmm0
	movq	%rsi, %rcx
	addl	$1, 5964(%rbx)
	movss	%xmm0, 5960(%rbx)
	call	_ZN10ImDrawList5ClearEv
	movq	144(%rbx), %rdx
	movq	%rsi, %rcx
	call	_ZN10ImDrawList13PushTextureIDERKPv
	movq	%rsi, %rcx
	call	_ZN10ImDrawList22PushClipRectFullScreenEv
	movss	264(%rbx), %xmm0
	movb	$0, 6304(%rbx)
	movq	$0, 6312(%rbx)
	movq	$0, 6320(%rbx)
	ucomiss	%xmm0, %xmm6
	movl	$0, 6328(%rbx)
	ja	.L9006
	ja	.L8690
.L8691:
	movss	868(%rbx), %xmm2
	movss	872(%rbx), %xmm3
	ucomiss	%xmm2, %xmm6
	ja	.L9007
.L8695:
	movss	268(%rbx), %xmm1
	subss	%xmm2, %xmm0
	subss	%xmm3, %xmm1
.L8694:
	movq	264(%rbx), %rax
	movss	%xmm1, 864(%rbx)
	movss	.LC1(%rip), %xmm2
	movss	%xmm0, 860(%rbx)
	movss	16(%rbx), %xmm7
	movss	.LC192(%rip), %xmm3
	movaps	%xmm2, %xmm5
	movq	%rax, 868(%rbx)
	xorl	%eax, %eax
.L8705:
	cmpb	$0, 272(%rbx,%rax)
	movss	960(%rbx,%rax,4), %xmm0
	je	.L8698
	ucomiss	%xmm0, %xmm6
	ja	.L9008
	movb	$0, 876(%rbx,%rax)
	movb	$0, 949(%rbx,%rax)
	movss	%xmm0, 980(%rbx,%rax,4)
	addss	%xmm7, %xmm0
	movss	%xmm0, 960(%rbx,%rax,4)
	movb	$0, 944(%rbx,%rax)
	movss	268(%rbx), %xmm1
	movss	264(%rbx), %xmm0
	subss	888(%rbx,%rax,8), %xmm1
	subss	884(%rbx,%rax,8), %xmm0
	mulss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	movss	1000(%rbx,%rax,4), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L8825
	movaps	%xmm1, %xmm0
.L8825:
	movss	%xmm0, 1000(%rbx,%rax,4)
.L8704:
	addq	$1, %rax
	cmpq	$5, %rax
	jne	.L8705
	leaq	3068(%rbx), %rcx
	movl	$2048, %r8d
	leaq	1020(%rbx), %rdx
	call	memcpy
	movss	.LC1(%rip), %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
.L8707:
	cmpb	$0, 289(%rbx,%rax)
	movaps	%xmm2, %xmm0
	je	.L8706
	movss	1020(%rbx,%rax,4), %xmm1
	pxor	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm6
	ja	.L8706
	addss	%xmm7, %xmm1
	movaps	%xmm1, %xmm0
.L8706:
	movss	%xmm0, 1020(%rbx,%rax,4)
	addq	$1, %rax
	cmpq	$512, %rax
	jne	.L8707
	movslq	11944(%rbx), %rax
	movaps	%xmm7, %xmm0
	movl	$-2004318071, %edx
	movq	%rax, %rcx
	leaq	(%rbx,%rax,4), %rax
	addl	$1, %ecx
	subss	11464(%rax), %xmm0
	addss	11948(%rbx), %xmm0
	movss	%xmm0, 11948(%rbx)
	divss	.LC357(%rip), %xmm0
	movss	%xmm7, 11464(%rax)
	movss	.LC18(%rip), %xmm7
	movl	%ecx, %eax
	imull	%edx
	movb	$0, 6060(%rbx)
	movaps	%xmm7, %xmm5
	divss	%xmm0, %xmm5
	leal	(%rdx,%rcx), %eax
	movl	%ecx, %edx
	sarl	$6, %eax
	sarl	$31, %edx
	subl	%edx, %eax
	imull	$120, %eax, %eax
	subl	%eax, %ecx
	movl	6056(%rbx), %eax
	movl	$0, 6056(%rbx)
	cmpb	$0, 6076(%rbx)
	movl	%ecx, 11944(%rbx)
	movl	%eax, 6064(%rbx)
	movl	6068(%rbx), %eax
	movss	%xmm5, 840(%rbx)
	jne	.L8708
	cmpl	%eax, 6072(%rbx)
	jne	.L8708
	testl	%eax, %eax
	jne	.L9009
.L8708:
	movl	6104(%rbx), %edx
	movl	%eax, 6072(%rbx)
	movb	$0, 6076(%rbx)
	movb	$0, 6077(%rbx)
	testl	%edx, %edx
	je	.L8709
	cmpl	%eax, %edx
	je	.L9010
.L8709:
	movq	$0, 6096(%rbx)
	movl	$0, 6104(%rbx)
.L8721:
	movss	6128(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L8826
.L8719:
	subss	16(%rbx), %xmm0
	ucomiss	%xmm0, %xmm6
	movss	%xmm0, 6128(%rbx)
	jnb	.L9011
.L8720:
	movq	6096(%rbx), %rax
	testq	%rax, %rax
	je	.L8826
	movq	%rax, 6040(%rbx)
	testb	$16, 14(%rax)
	jne	.L8815
.L8816:
	movq	664(%rax), %rax
.L8728:
	movq	%rax, 6048(%rbx)
.L8726:
	movq	GImGui(%rip), %r8
	movl	6184(%r8), %edx
	subl	$1, %edx
	js	.L8729
	movq	6192(%r8), %r9
	movslq	%edx, %rax
	movl	%edx, %edx
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rdx,%rdx,4), %rdx
	salq	$3, %rcx
	salq	$3, %rdx
	leaq	8(%r9,%rcx), %rax
	leaq	-32(%r9,%rcx), %rcx
	subq	%rdx, %rcx
	.p2align 4,,10
.L8732:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L8730
	testb	$4, 15(%rdx)
	jne	.L8731
.L8730:
	subq	$40, %rax
	cmpq	%rax, %rcx
	jne	.L8732
.L8729:
	movl	$0x00000000, 6384(%rbx)
.L8736:
	movzbl	876(%rbx), %eax
	testb	%al, %al
	je	.L8738
	cmpq	$0, 6040(%rbx)
	je	.L8737
.L8739:
	movb	%al, 954(%rbx)
.L8738:
	movzbl	272(%rbx), %edx
	movzbl	877(%rbx), %ecx
	movl	%edx, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	negl	%eax
	testb	%cl, %cl
	je	.L8740
	cmpq	$0, 6040(%rbx)
	je	.L8741
.L8742:
	movb	%cl, 955(%rbx)
.L8740:
	movzbl	273(%rbx), %r9d
	testb	%r9b, %r9b
	je	.L8743
	cmpl	$-1, %eax
	je	.L8833
	xorl	%eax, %eax
	movss	924(%rbx), %xmm0
	ucomiss	928(%rbx), %xmm0
	seta	%al
.L8743:
	movzbl	878(%rbx), %ecx
	testb	%cl, %cl
	je	.L8744
	cmpq	$0, 6040(%rbx)
	je	.L8745
.L8746:
	movb	%cl, 956(%rbx)
.L8744:
	movzbl	274(%rbx), %ecx
	orl	%ecx, %edx
	orl	%r9d, %edx
	testb	%cl, %cl
	je	.L8747
	cmpl	$-1, %eax
	je	.L8834
	movslq	%eax, %rcx
	movss	924(%rbx,%rcx,4), %xmm0
	movl	$2, %ecx
	ucomiss	932(%rbx), %xmm0
	cmova	%ecx, %eax
.L8747:
	movzbl	879(%rbx), %ecx
	testb	%cl, %cl
	je	.L8748
	cmpq	$0, 6040(%rbx)
	je	.L8749
.L8750:
	movb	%cl, 957(%rbx)
.L8748:
	movzbl	275(%rbx), %esi
	testb	%sil, %sil
	je	.L8751
	cmpl	$-1, %eax
	je	.L8836
	movslq	%eax, %rcx
	movss	924(%rbx,%rcx,4), %xmm0
	movl	$3, %ecx
	ucomiss	936(%rbx), %xmm0
	cmova	%ecx, %eax
.L8751:
	movzbl	880(%rbx), %ecx
	testb	%cl, %cl
	je	.L8752
	cmpq	$0, 6040(%rbx)
	je	.L9012
.L8753:
	movb	%cl, 958(%rbx)
.L8752:
	movzbl	276(%rbx), %r11d
	testb	%r11b, %r11b
	je	.L8754
	cmpl	$-1, %eax
	movl	$4, %ecx
	je	.L8755
	movslq	%eax, %rcx
	movl	$4, %eax
	movss	924(%rbx,%rcx,4), %xmm0
	ucomiss	940(%rbx), %xmm0
	cmova	%rax, %rcx
.L8755:
	movl	11952(%rbx), %r10d
	movl	6068(%rbx), %r9d
.L8757:
	movzbl	954(%rbx,%rcx), %eax
	testb	%al, %al
	je	.L8760
	cmpl	$-1, %r10d
	jne	.L8758
.L8759:
	cmpq	$0, 6040(%rbx)
	setne	%al
	orl	%eax, %edx
	orl	%edx, %esi
	orl	%esi, %r11d
	testb	%r11b, %r11b
	movl	%r11d, %eax
	je	.L9013
.L8763:
	movb	%r11b, 836(%rbx)
.L9022:
	movl	11956(%rbx), %edx
	cmpl	$-1, %edx
	jne	.L9014
.L8764:
	testl	%r9d, %r9d
	setne	%dl
	jmp	.L8765
	.p2align 4,,10
.L8698:
	ucomiss	%xmm6, %xmm0
	movb	$0, 876(%rbx,%rax)
	jb	.L9015
	movb	$1, 949(%rbx,%rax)
	movss	%xmm0, 980(%rbx,%rax,4)
	movss	%xmm5, 960(%rbx,%rax,4)
	movb	$0, 944(%rbx,%rax)
	jmp	.L8704
.L9008:
	movb	$1, 876(%rbx,%rax)
	movb	$0, 949(%rbx,%rax)
	movss	%xmm0, 980(%rbx,%rax,4)
	movl	$0x00000000, 960(%rbx,%rax,4)
	movb	$0, 944(%rbx,%rax)
	movss	5960(%rbx), %xmm0
	movss	40(%rbx), %xmm4
	movaps	%xmm0, %xmm1
	subss	924(%rbx,%rax,4), %xmm1
	ucomiss	%xmm1, %xmm4
	jbe	.L9016
	movss	268(%rbx), %xmm1
	movss	264(%rbx), %xmm0
	subss	888(%rbx,%rax,8), %xmm1
	subss	884(%rbx,%rax,8), %xmm0
	movss	44(%rbx), %xmm4
	mulss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	mulss	%xmm4, %xmm4
	addss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm4
	jbe	.L8701
	movb	$1, 944(%rbx,%rax)
.L8701:
	movss	%xmm3, 924(%rbx,%rax,4)
.L8703:
	movq	264(%rbx), %rdx
	movq	%rdx, 884(%rbx,%rax,8)
	movl	$0x00000000, 1000(%rbx,%rax,4)
	jmp	.L8704
	.p2align 4,,10
.L9016:
	movss	%xmm0, 924(%rbx,%rax,4)
	jmp	.L8703
.L9015:
	movb	$0, 949(%rbx,%rax)
	movss	%xmm0, 980(%rbx,%rax,4)
	movss	%xmm2, 960(%rbx,%rax,4)
	movb	$0, 944(%rbx,%rax)
	jmp	.L8704
.L8731:
	movss	.LC85(%rip), %xmm0
	mulss	16(%rbx), %xmm0
	addss	6384(%rbx), %xmm0
	movq	6048(%rbx), %rax
	minss	%xmm7, %xmm0
	testq	%rax, %rax
	movss	%xmm0, 6384(%rbx)
	jne	.L8988
	jmp	.L8733
	.p2align 4,,10
.L9017:
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L8733
.L8988:
	cmpq	%rdx, %rax
	jne	.L9017
.L8733:
	testq	%rax, %rax
	jne	.L8736
	cmpb	$0, 876(%rbx)
	movq	$0, 6040(%rbx)
	movq	$0, 6048(%rbx)
	je	.L8738
.L8737:
	movl	6184(%rbx), %r13d
	testl	%r13d, %r13d
	setne	%al
	jmp	.L8739
.L8754:
	cmpl	$-1, %eax
	movl	11952(%rbx), %r10d
	movslq	%eax, %rcx
	movl	6068(%rbx), %r9d
	jne	.L8757
	cmpl	$-1, %r10d
	movl	$1, %eax
	je	.L8759
.L8758:
	movl	11956(%rbx), %edx
	testl	%r10d, %r10d
	setne	836(%rbx)
	cmpl	$-1, %edx
	je	.L8764
.L9014:
	testl	%edx, %edx
	setne	%dl
.L8765:
	movb	%dl, 837(%rbx)
	xorl	%edx, %edx
	testl	%r9d, %r9d
	je	.L8766
	cmpl	%r9d, 6912(%rbx)
	sete	%dl
.L8766:
	movabsq	$4575657222473777152, %rdi
	testb	%al, %al
	movb	%dl, 838(%rbx)
	movl	$0, 6544(%rbx)
	movq	$-1, 11952(%rbx)
	movq	%rdi, 11416(%rbx)
	jne	.L8767
	movq	$0, 6048(%rbx)
	movq	$0, 6040(%rbx)
.L8768:
	testl	%r9d, %r9d
	jne	.L8775
	movq	6032(%rbx), %rax
	testq	%rax, %rax
	je	.L8777
	cmpb	$0, 136(%rax)
	jne	.L9018
.L8777:
	movl	5976(%rbx), %eax
	testl	%eax, %eax
	je	.L8790
.L8827:
	leaq	.LC2(%rip), %r13
	xorl	%edi, %edi
	xorl	%esi, %esi
	leaq	.LC3(%rip), %r12
	.p2align 4,,10
.L8780:
	cmpl	%eax, %esi
	jge	.L9019
	movq	5984(%rbx), %rax
	addl	$1, %esi
	movq	(%rax,%rdi), %rax
	addq	$8, %rdi
	movzbl	136(%rax), %edx
	movb	$0, 138(%rax)
	movb	$0, 136(%rax)
	movb	%dl, 137(%rax)
	movl	5976(%rbx), %eax
	cmpl	%esi, %eax
	jne	.L8780
.L8779:
	movq	6032(%rbx), %rax
	testq	%rax, %rax
	je	.L8790
.L9023:
	cmpb	$0, 137(%rax)
	jne	.L8790
	subl	$1, %esi
	cmpl	$-1, %esi
	je	.L8790
	leaq	.LC2(%rip), %r13
	movslq	%esi, %rdi
	leaq	.LC3(%rip), %r12
	salq	$3, %rdi
	jmp	.L8786
	.p2align 4,,10
.L8784:
	movq	5984(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	cmpb	$0, 137(%rcx)
	je	.L8788
	cmpl	%esi, 5976(%rbx)
	jle	.L9020
	testb	$16, 14(%rcx)
	je	.L9021
.L8788:
	subl	$1, %esi
	subq	$8, %rdi
	cmpl	$-1, %esi
	je	.L8790
.L8786:
	cmpl	%esi, 5976(%rbx)
	jg	.L8784
	movl	$856, %r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_assert
	jmp	.L8784
.L8648:
	leaq	.LC5(%rip), %rdx
	movl	$2134, %r8d
	leaq	.LC346(%rip), %rcx
	call	_assert
	movq	144(%rbx), %rsi
	movl	48(%rsi), %eax
	testl	%eax, %eax
	jg	.L8651
.L8998:
	leaq	.LC5(%rip), %rdx
	movl	$2135, %r8d
	leaq	.LC347(%rip), %rcx
	call	_assert
	movq	144(%rbx), %rsi
	movl	48(%rsi), %eax
	testl	%eax, %eax
	jg	.L8651
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movq	56(%rsi), %rax
	movq	(%rax), %rax
	cmpq	$0, 88(%rax)
	jne	.L8652
.L8999:
	leaq	.LC5(%rip), %rdx
	movl	$2136, %r8d
	leaq	.LC348(%rip), %rcx
	call	_assert
	movss	5244(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L8653
.L9000:
	leaq	.LC5(%rip), %rdx
	movl	$2137, %r8d
	leaq	.LC349(%rip), %rcx
	call	_assert
	jmp	.L8653
.L9031:
	testb	$16, 14(%rax)
	je	.L8725
.L8815:
	movq	664(%rax), %rax
	movq	%rax, 6048(%rbx)
	jmp	.L8726
.L8760:
	cmpl	$-1, %r10d
	jne	.L8758
.L8761:
	testl	%r9d, %r9d
	movl	$1, %r11d
	jne	.L8763
	movl	6184(%rbx), %r10d
	testl	%r10d, %r10d
	setne	%r11b
	movb	%r11b, 836(%rbx)
	jmp	.L9022
.L8836:
	movl	$3, %eax
	jmp	.L8751
.L8834:
	movl	$2, %eax
	jmp	.L8747
.L8833:
	movl	$1, %eax
	jmp	.L8743
.L8741:
	movl	6184(%rbx), %r12d
	testl	%r12d, %r12d
	setne	%cl
	jmp	.L8742
.L9012:
	movl	6184(%rbx), %r11d
	testl	%r11d, %r11d
	setne	%cl
	jmp	.L8753
.L8749:
	movl	6184(%rbx), %esi
	testl	%esi, %esi
	setne	%cl
	jmp	.L8750
.L8745:
	movl	6184(%rbx), %edi
	testl	%edi, %edi
	setne	%cl
	jmp	.L8746
	.p2align 4,,10
.L9019:
	movq	%r13, %rdx
	movl	$856, %r8d
	movq	%r12, %rcx
	call	_assert
	movq	5984(%rbx), %rax
	addl	$1, %esi
	movq	(%rax,%rdi), %rax
	addq	$8, %rdi
	movzbl	136(%rax), %edx
	movb	$0, 138(%rax)
	movb	$0, 136(%rax)
	movb	%dl, 137(%rax)
	movl	5976(%rbx), %eax
	cmpl	%eax, %esi
	jne	.L8780
	movq	6032(%rbx), %rax
	testq	%rax, %rax
	jne	.L9023
.L8790:
	movl	6020(%rbx), %eax
	testl	%eax, %eax
	js	.L9024
.L8989:
	movl	$0, 6016(%rbx)
	movl	6204(%rbx), %ecx
	testl	%ecx, %ecx
	jns	.L8792
.L8791:
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	6208(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L8795
	movslq	6200(%rbx), %rax
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$3, %r8
	call	memcpy
	movq	6208(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L8795
	subl	$1, 844(%rax)
.L8795:
	call	*240(%rax)
	movq	%rsi, 6208(%rbx)
	movl	$0, 6204(%rbx)
.L8792:
	movl	$0, 6200(%rbx)
	movq	GImGui(%rip), %rbx
	movl	6184(%rbx), %r8d
	movq	%rbx, %r13
	testl	%r8d, %r8d
	je	.L8796
	cmpq	$0, 6032(%rbx)
	je	.L8797
	testl	%r8d, %r8d
	jle	.L8796
	leaq	.LC5(%rip), %rdi
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	leaq	.LC361(%rip), %rsi
	.p2align 4,,10
.L8806:
	movq	6192(%rbx), %r15
	addq	%r14, %r15
	movq	8(%r15), %rax
	testq	%rax, %rax
	je	.L8991
	movl	12(%rax), %eax
	testl	$33554432, %eax
	je	.L9025
.L8800:
	testl	$1048576, %eax
	jne	.L8991
	cmpl	%r8d, %r12d
	jge	.L8993
	movq	6192(%rbx), %rax
	leal	1(%r12), %r10d
	movl	%r10d, %ecx
	leaq	8(%rax,%r14), %rdx
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L8803
	.p2align 4,,10
.L9027:
	movq	6032(%rbx), %r9
	movq	664(%r9), %r11
	cmpq	%r11, 664(%rax)
	je	.L8799
.L8803:
	cmpl	%r8d, %ecx
	jge	.L9026
	addq	$40, %rdx
	movq	(%rdx), %rax
	addl	$1, %ecx
	testq	%rax, %rax
	jne	.L9027
	jmp	.L8803
	.p2align 4,,10
.L8991:
	leal	1(%r12), %r10d
.L8799:
	addq	$40, %r14
	cmpl	%r8d, %r10d
	movl	%r10d, %r12d
	jl	.L8806
.L8993:
	movq	GImGui(%rip), %r13
.L8796:
	movabsq	$4884153797020483584, %rax
	movss	.LC1(%rip), %xmm3
	movq	%rbp, %r8
	xorl	%edx, %edx
	movq	%rax, 6224(%r13)
	leaq	.LC362(%rip), %rcx
	movl	$4, 6248(%r13)
	movl	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	nop
	movaps	144(%rsp), %xmm6
	movaps	160(%rsp), %xmm7
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
.L9025:
	movl	$3460, %r8d
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_assert
	movq	8(%r15), %rax
	movl	6184(%rbx), %r8d
	movl	12(%rax), %eax
	jmp	.L8800
.L9018:
	movl	52(%r8), %ecx
	xorl	%edx, %edx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L8775
	movq	6032(%rbx), %rax
	movl	$0, 708(%rax)
.L8775:
	movl	5976(%rbx), %eax
	testl	%eax, %eax
	jne	.L8827
	xorl	%esi, %esi
	jmp	.L8779
	.p2align 4,,10
.L9020:
	movq	%r12, %rcx
	movl	$856, %r8d
	movq	%r13, %rdx
	call	_assert
	movq	5984(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	testb	$16, 14(%rcx)
	jne	.L8788
.L9021:
	cmpl	%esi, 5976(%rbx)
	jle	.L9028
.L8789:
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	6020(%rbx), %eax
	testl	%eax, %eax
	jns	.L8989
.L9024:
	leaq	6016(%rbx), %rcx
	xorl	%edx, %edx
	call	_ZN8ImVectorIP11ImGuiWindowE7reserveEi
	movl	6204(%rbx), %edx
	movl	$0, 6016(%rbx)
	testl	%edx, %edx
	js	.L8791
	jmp	.L8792
.L9026:
	movq	GImGui(%rip), %rbx
.L8804:
	movl	6188(%r13), %eax
	cmpl	%r12d, %eax
	jge	.L8807
	testl	%eax, %eax
	movl	$8, %esi
	je	.L8808
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
.L8808:
	cmpl	%r12d, %esi
	jle	.L8847
	cmpl	%esi, %eax
	jge	.L8807
.L8809:
	addl	$1, 844(%rbx)
	movslq	%esi, %rax
	leaq	(%rax,%rax,4), %rcx
	salq	$3, %rcx
	call	*232(%rbx)
	movq	6192(%r13), %rdx
	movq	%rax, %rbx
	movq	GImGui(%rip), %rax
	testq	%rdx, %rdx
	je	.L8812
	movslq	6184(%r13), %rax
	movq	%rbx, %rcx
	leaq	(%rax,%rax,4), %r8
	salq	$3, %r8
	call	memcpy
	movq	6192(%r13), %rdx
	movq	GImGui(%rip), %rax
	testq	%rdx, %rdx
	je	.L8812
	subl	$1, 844(%rax)
.L8812:
	movq	%rdx, %rcx
	call	*240(%rax)
	movq	%rbx, 6192(%r13)
	movq	GImGui(%rip), %rbx
	movl	%esi, 6188(%r13)
.L8807:
	movl	%r12d, 6184(%r13)
	movq	%rbx, %r13
	jmp	.L8796
.L8767:
	movq	6040(%rbx), %rax
	testq	%rax, %rax
	je	.L8768
	movss	280(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jp	.L8860
	je	.L8768
.L8860:
	cmpb	$0, 139(%rax)
	jne	.L8768
	cmpb	$0, 285(%rbx)
	je	.L8770
	cmpb	$0, 156(%rbx)
	je	.L8768
	mulss	.LC360(%rip), %xmm0
	movss	648(%rax), %xmm1
	movss	.LC17(%rip), %xmm2
	addss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm2
	ja	.L8843
	ucomiss	.LC343(%rip), %xmm0
	jbe	.L8771
	movss	.LC343(%rip), %xmm0
.L8771:
	movaps	%xmm0, %xmm2
	movss	40(%rax), %xmm3
	movss	%xmm0, 648(%rax)
	divss	%xmm1, %xmm2
	movss	268(%rbx), %xmm0
	movss	32(%rax), %xmm5
	movss	36(%rax), %xmm4
	subss	%xmm5, %xmm0
	movss	28(%rax), %xmm6
	subss	%xmm2, %xmm7
	movaps	%xmm7, %xmm1
	mulss	%xmm3, %xmm1
	mulss	%xmm4, %xmm7
	mulss	%xmm1, %xmm0
	movss	264(%rbx), %xmm1
	subss	%xmm6, %xmm1
	divss	%xmm3, %xmm0
	mulss	%xmm7, %xmm1
	mulss	%xmm2, %xmm3
	movss	%xmm3, 40(%rax)
	divss	%xmm4, %xmm1
	addss	%xmm0, %xmm5
	mulss	%xmm2, %xmm4
	addss	24(%rax), %xmm0
	movss	%xmm5, 32(%rax)
	movss	%xmm0, 24(%rax)
	movss	44(%rax), %xmm0
	movss	%xmm4, 36(%rax)
	mulss	%xmm2, %xmm0
	mulss	48(%rax), %xmm2
	movss	%xmm0, 44(%rax)
	movss	%xmm2, 48(%rax)
	addss	%xmm1, %xmm6
	addss	20(%rax), %xmm1
	movss	%xmm6, 28(%rax)
	movss	%xmm1, 20(%rax)
	movl	6068(%rbx), %r9d
	jmp	.L8768
	.p2align 4,,10
.L8670:
	movq	48(%rsp), %r8
	leaq	.LC354(%rip), %rdx
	movq	%r14, %r9
	movq	%r13, %rcx
	call	_Z6sscanfPKcS0_z
	cmpl	$2, %eax
	jne	.L8672
	movq	56(%rsp), %rax
	movss	76(%rsp), %xmm1
	movss	72(%rsp), %xmm2
	movss	5136(%rax), %xmm0
	ucomiss	%xmm0, %xmm1
	jb	.L8673
	movaps	%xmm1, %xmm0
.L8673:
	movss	5132(%rax), %xmm1
	ucomiss	%xmm1, %xmm2
	jb	.L8675
	movaps	%xmm2, %xmm1
.L8675:
	movss	%xmm1, 20(%r15)
	movss	%xmm0, 24(%r15)
	jmp	.L8669
.L9003:
	movq	144(%rsi), %rdi
	movl	48(%rdi), %r14d
	testl	%r14d, %r14d
	jle	.L9029
.L8680:
	movq	56(%rdi), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	jne	.L8679
.L8681:
	leaq	.LC5(%rip), %rdx
	movl	$4646, %r8d
	leaq	.LC122(%rip), %rcx
	call	_assert
	movss	4(%rdi), %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L8683
.L9004:
	leaq	.LC5(%rip), %rdx
	movl	$4647, %r8d
	leaq	.LC123(%rip), %rcx
	call	_assert
	jmp	.L8683
.L9006:
	movss	268(%rbx), %xmm1
	ucomiss	%xmm1, %xmm6
	ja	.L9030
.L8688:
	ucomiss	%xmm1, %xmm6
	jbe	.L8691
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	jmp	.L8694
.L9002:
	cmpb	$93, -1(%rsi)
	jne	.L8664
	movq	%rsi, %rax
	movl	$64, %edx
	movq	%rbp, %rcx
	leaq	1(%r13), %r10
	subq	%r13, %rax
	movq	%r10, 32(%rsp)
	leal	-2(%rax), %r9d
	leaq	.LC352(%rip), %r8
	call	_Z14ImFormatStringPciPKcz
	movq	%rbp, %rcx
	call	_ZL18FindWindowSettingsPKc
	testq	%rax, %rax
	movq	%rax, %r15
	jne	.L8669
	movq	%rbp, %rcx
	call	_ZL17AddWindowSettingsPKc
	movq	%rax, %r15
	jmp	.L8669
	.p2align 4,,10
.L9007:
	ucomiss	%xmm3, %xmm6
	jbe	.L8695
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	jmp	.L8694
.L9001:
	leaq	.LC5(%rip), %rdx
	movl	$2145, %r8d
	leaq	.LC350(%rip), %rcx
	call	_assert
	jmp	.L8658
.L8672:
	leaq	.LC355(%rip), %rdx
	movq	%rbp, %r8
	movq	%r13, %rcx
	call	_Z6sscanfPKcS0_z
	cmpl	$1, %eax
	jne	.L8669
	movl	80(%rsp), %eax
	testl	%eax, %eax
	setne	28(%r15)
	jmp	.L8669
.L8997:
	leaq	.LC5(%rip), %rdx
	movl	$2133, %r8d
	leaq	.LC345(%rip), %rcx
	call	_assert
	jmp	.L8647
.L9010:
	movq	GImGui(%rip), %rax
	cmpl	6068(%rax), %edx
	jne	.L8710
	movb	$1, 6076(%rax)
.L8710:
	movq	6096(%rbx), %rax
	testq	%rax, %rax
	je	.L8711
	movq	664(%rax), %rax
	testq	%rax, %rax
	je	.L8711
.L8712:
	movl	6104(%rbx), %edi
	cmpl	%edi, 92(%rax)
	je	.L8713
	leaq	.LC5(%rip), %rdx
	movl	$2225, %r8d
	leaq	.LC359(%rip), %rcx
	call	_assert
.L8713:
	cmpb	$0, 272(%rbx)
	je	.L8714
	movq	6096(%rbx), %rcx
	testb	$4, 12(%rcx)
	jne	.L8715
	movss	20(%rcx), %xmm0
	addss	860(%rbx), %xmm0
	movss	%xmm0, 20(%rcx)
	movss	24(%rcx), %xmm0
	addss	864(%rbx), %xmm0
	movss	%xmm0, 24(%rcx)
	movq	6096(%rbx), %rcx
	testb	$1, 13(%rcx)
	jne	.L8715
	ucomiss	860(%rbx), %xmm6
	jp	.L8716
	jne	.L8716
	ucomiss	864(%rbx), %xmm6
	jp	.L8716
	je	.L8715
.L8716:
	movq	GImGui(%rip), %rax
	ucomiss	6128(%rax), %xmm6
	jb	.L8715
	movss	20(%rax), %xmm0
	movss	%xmm0, 6128(%rax)
	movq	6096(%rbx), %rcx
.L8715:
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movss	6128(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L8720
	jmp	.L8719
	.p2align 4,,10
.L9009:
	movq	GImGui(%rip), %rax
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	movl	6068(%rbx), %eax
	jmp	.L8708
.L9005:
	leaq	.LC5(%rip), %rdx
	movl	$2151, %r8d
	leaq	.LC356(%rip), %rcx
	call	_assert
	jmp	.L8685
.L8826:
	movq	264(%rbx), %rcx
	xorl	%edx, %edx
	call	_ZL17FindHoveredWindow6ImVec2b
	testq	%rax, %rax
	movq	%rax, 6040(%rbx)
	jne	.L9031
.L8725:
	movq	6096(%rbx), %rax
	testq	%rax, %rax
	jne	.L8816
	movq	264(%rbx), %rcx
	movl	$1, %edx
	call	_ZL17FindHoveredWindow6ImVec2b
	jmp	.L8728
.L9011:
	movq	24(%rbx), %rcx
	call	_ZL21SaveIniSettingsToDiskPKc
	jmp	.L8720
.L9030:
	movabsq	$-4171393180830516224, %rax
	movss	.LC342(%rip), %xmm0
	movq	%rax, 264(%rbx)
.L8690:
	movss	268(%rbx), %xmm1
	jmp	.L8688
.L8828:
	movq	%r13, %rsi
	jmp	.L8664
.L8714:
	movq	GImGui(%rip), %rax
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	movq	$0, 6096(%rbx)
	movl	$0, 6104(%rbx)
	jmp	.L8721
.L8770:
	movl	12(%rax), %edx
	testb	$16, %dl
	jne	.L8768
	andl	$8388608, %edx
	movss	.LC344(%rip), %xmm3
	je	.L8773
	movss	.LC115(%rip), %xmm3
.L8773:
	movss	648(%rax), %xmm1
	mulss	5948(%r8), %xmm1
	movss	100(%rax), %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm3, %xmm0
	movaps	%xmm2, %xmm3
	addss	220(%rax), %xmm2
	subss	%xmm0, %xmm3
	subss	%xmm3, %xmm2
	movss	%xmm3, 100(%rax)
	movss	%xmm2, 220(%rax)
	movl	6068(%rbx), %r9d
	jmp	.L8768
.L8711:
	leaq	.LC5(%rip), %rdx
	movl	$2224, %r8d
	leaq	.LC358(%rip), %rcx
	call	_assert
	movq	6096(%rbx), %rax
	movq	664(%rax), %rax
	jmp	.L8712
.L9029:
	leaq	.LC2(%rip), %rdx
	movl	$856, %r8d
	leaq	.LC3(%rip), %rcx
	call	_assert
	movq	GImGui(%rip), %rsi
	jmp	.L8680
.L8847:
	movl	%r12d, %esi
	jmp	.L8809
.L9013:
	movl	$1, %eax
	jmp	.L8761
.L8843:
	movaps	%xmm2, %xmm0
	jmp	.L8771
.L9028:
	leaq	.LC3(%rip), %rcx
	movl	$856, %r8d
	leaq	.LC2(%rip), %rdx
	call	_assert
.LEHE28:
	movq	5984(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	jmp	.L8789
.L8849:
	movq	8(%rsi), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L8661
	movq	GImGui(%rip), %rdx
	subl	$1, 844(%rdx)
	call	*240(%rdx)
.L8661:
	movq	%rbx, %rcx
.LEHB29:
	call	_Unwind_Resume
.LEHE29:
.L8797:
	testl	%r8d, %r8d
	jle	.L8796
	xorl	%r12d, %r12d
	jmp	.L8804
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA670:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE670-.LLSDACSB670
.LLSDACSB670:
	.uleb128 .LEHB26-.LFB670
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB670
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L8849-.LFB670
	.uleb128 0
	.uleb128 .LEHB28-.LFB670
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB670
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE670:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC363:
	.ascii "##Tooltip\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12BeginTooltipEv
	.def	_ZN5ImGui12BeginTooltipEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12BeginTooltipEv
_ZN5ImGui12BeginTooltipEv:
.LFB738:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movss	.LC1(%rip), %xmm3
	xorl	%edx, %edx
	leaq	.LC363(%rip), %rcx
	movl	$16777543, 32(%rsp)
	leaq	56(%rsp), %r8
	movq	$0, 56(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC365:
	.ascii "g.CurrentWindowStack.Size == 1\0"
	.align 8
.LC366:
	.ascii "g.Windows.Size == g.WindowsSortBuffer.Size\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8EndFrameEv
	.def	_ZN5ImGui8EndFrameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8EndFrameEv
_ZN5ImGui8EndFrameEv:
.LFB686:
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
	movq	GImGui(%rip), %rbx
	cmpb	$0, (%rbx)
	je	.L9110
	movl	5964(%rbx), %eax
	cmpl	%eax, 5968(%rbx)
	je	.L9111
.L9035:
	cmpb	$0, 10384(%rbx)
	jne	.L9112
.L9036:
	movq	248(%rbx), %rax
	testq	%rax, %rax
	je	.L9038
	movss	11420(%rbx), %xmm3
	movss	11416(%rbx), %xmm2
	movaps	%xmm3, %xmm1
	subss	11428(%rbx), %xmm1
	movaps	%xmm2, %xmm0
	subss	11424(%rbx), %xmm0
	mulss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	ucomiss	.LC364(%rip), %xmm0
	jbe	.L9038
	cvttss2si	%xmm3, %edx
	cvttss2si	%xmm2, %ecx
	call	*%rax
	movq	11416(%rbx), %rax
	movq	%rax, 11424(%rbx)
.L9038:
	cmpl	$1, 6016(%rbx)
	je	.L9040
	leaq	.LC5(%rip), %rdx
	movl	$2666, %r8d
	leaq	.LC365(%rip), %rcx
	call	_assert
.L9040:
	movq	6008(%rbx), %rax
	testq	%rax, %rax
	je	.L9041
	cmpb	$0, 138(%rax)
	je	.L9113
.L9041:
	call	_ZN5ImGui3EndEv
	movl	6068(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.L9043
	movl	6056(%rbx), %edx
	testl	%edx, %edx
	je	.L9114
.L9043:
	movl	5996(%rbx), %eax
	leaq	5992(%rbx), %r13
	movq	GImGui(%rip), %rdx
	testl	%eax, %eax
	js	.L9080
.L9053:
	movl	$0, 5992(%rbx)
	movl	5976(%rbx), %esi
	cmpl	%eax, %esi
	jle	.L9057
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$3, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	6000(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9060
	movslq	5992(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$3, %r8
	call	memcpy
	movq	6000(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9060
	subl	$1, 844(%rax)
.L9060:
	call	*240(%rax)
	movl	%esi, 5996(%rbx)
	movl	5976(%rbx), %esi
	movq	%rdi, 6000(%rbx)
.L9057:
	testl	%esi, %esi
	je	.L9081
	leaq	.LC2(%rip), %r12
	xorl	%r14d, %r14d
	leaq	.LC3(%rip), %rbp
	.p2align 4,,10
.L9076:
	cmpl	%r14d, %esi
	jle	.L9115
.L9062:
	movq	5984(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movzbl	136(%rsi), %edx
	testb	%dl, %dl
	je	.L9063
	testb	$16, 14(%rsi)
	jne	.L9064
.L9063:
	movslq	5992(%rbx), %rax
	cmpl	5996(%rbx), %eax
	je	.L9065
	movq	6000(%rbx), %rdi
.L9066:
	leal	1(%rax), %ecx
	testb	%dl, %dl
	movl	%ecx, 5992(%rbx)
	movq	%rsi, (%rdi,%rax,8)
	je	.L9064
	movl	280(%rsi), %edi
	cmpl	$1, %edi
	jg	.L9116
	testl	%edi, %edi
	jle	.L9064
.L9072:
	leal	-1(%rdi), %r15d
	xorl	%edi, %edi
	addq	$1, %r15
.L9075:
	cmpl	%edi, 280(%rsi)
	jle	.L9117
.L9073:
	movq	288(%rsi), %rax
	movq	(%rax,%rdi,8), %rdx
	cmpb	$0, 136(%rdx)
	jne	.L9118
.L9074:
	addq	$1, %rdi
	cmpq	%rdi, %r15
	jne	.L9075
.L9064:
	movl	5976(%rbx), %esi
	leal	1(%r14), %eax
	addq	$1, %r14
	cmpl	%eax, %esi
	jne	.L9076
.L9061:
	cmpl	%eax, 5992(%rbx)
	je	.L9077
	leaq	.LC5(%rip), %rdx
	movl	$2705, %r8d
	leaq	.LC366(%rip), %rcx
	call	_assert
	movl	5992(%rbx), %eax
	movl	5976(%rbx), %esi
.L9077:
	movl	%eax, 5976(%rbx)
	movl	5996(%rbx), %eax
	movl	5980(%rbx), %edx
	movl	%esi, 5992(%rbx)
	movl	$0x00000000, 280(%rbx)
	movq	$0, 802(%rbx)
	movl	%eax, 5980(%rbx)
	movq	6000(%rbx), %rax
	movl	%edx, 5996(%rbx)
	movq	5984(%rbx), %rdx
	movq	$0, 810(%rbx)
	movq	$0, 818(%rbx)
	movq	%rax, 5984(%rbx)
	xorl	%eax, %eax
	movw	%ax, 834(%rbx)
	movl	5964(%rbx), %eax
	movq	%rdx, 6000(%rbx)
	movq	$0, 826(%rbx)
	movl	%eax, 5968(%rbx)
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
.L9117:
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	_assert
	jmp	.L9073
	.p2align 4,,10
.L9115:
	movl	$856, %r8d
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	_assert
	jmp	.L9062
	.p2align 4,,10
.L9065:
	leal	1(%rax), %r15d
	testl	%eax, %eax
	movl	$8, %edx
	je	.L9067
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L9067:
	cmpl	%edx, %r15d
	movq	GImGui(%rip), %rax
	cmovl	%edx, %r15d
	movslq	%r15d, %rcx
	addl	$1, 844(%rax)
	salq	$3, %rcx
	call	*232(%rax)
	movq	6000(%rbx), %rcx
	movq	%rax, %rdi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9070
	movslq	5992(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	salq	$3, %r8
	call	memcpy
	movq	6000(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9070
	subl	$1, 844(%rax)
.L9070:
	call	*240(%rax)
	movq	%rdi, 6000(%rbx)
	movzbl	136(%rsi), %edx
	movslq	5992(%rbx), %rax
	movl	%r15d, 5996(%rbx)
	jmp	.L9066
	.p2align 4,,10
.L9116:
	movq	288(%rsi), %rcx
	movslq	%edi, %rdx
	movl	$8, %r8d
	leaq	_ZL19ChildWindowComparerPKvS0_(%rip), %r9
	call	qsort
	jmp	.L9072
	.p2align 4,,10
.L9118:
	movq	%r13, %rcx
	call	_ZL23AddWindowToSortedBufferR8ImVectorIP11ImGuiWindowES1_
	jmp	.L9074
	.p2align 4,,10
.L9113:
	movb	$0, 136(%rax)
	jmp	.L9041
	.p2align 4,,10
.L9114:
	cmpb	$0, 876(%rbx)
	je	.L9043
	movq	6032(%rbx), %rax
	testq	%rax, %rax
	je	.L9045
	cmpb	$0, 137(%rax)
	je	.L9119
.L9046:
	cmpq	$0, 6048(%rbx)
	jne	.L9078
	movq	GImGui(%rip), %rdx
	movl	6184(%rdx), %ecx
	subl	$1, %ecx
	js	.L9049
	movq	6192(%rdx), %r9
	movslq	%ecx, %rax
	movl	%ecx, %ecx
	leaq	(%rax,%rax,4), %r8
	leaq	(%rcx,%rcx,4), %rcx
	salq	$3, %r8
	salq	$3, %rcx
	leaq	8(%r9,%r8), %rax
	leaq	-32(%r9,%r8), %r8
	subq	%rcx, %r8
	.p2align 4,,10
.L9052:
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.L9050
	testb	$4, 15(%rcx)
	jne	.L9051
.L9050:
	subq	$40, %rax
	cmpq	%rax, %r8
	jne	.L9052
.L9049:
	movq	$0, 6032(%rdx)
	jmp	.L9043
.L9051:
	movl	5996(%rbx), %eax
	leaq	5992(%rbx), %r13
	testl	%eax, %eax
	jns	.L9053
	.p2align 4,,10
.L9080:
	addl	$1, 844(%rdx)
	xorl	%ecx, %ecx
	call	*232(%rdx)
	movq	6000(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9056
	movslq	5992(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	salq	$3, %r8
	call	memcpy
	movq	6000(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9056
	subl	$1, 844(%rax)
.L9056:
	call	*240(%rax)
	movq	%rsi, 6000(%rbx)
	xorl	%eax, %eax
	movl	$0, 5996(%rbx)
	jmp	.L9053
	.p2align 4,,10
.L9110:
	leaq	.LC5(%rip), %rdx
	movl	$2647, %r8d
	leaq	.LC265(%rip), %rcx
	call	_assert
	movl	5964(%rbx), %eax
	cmpl	%eax, 5968(%rbx)
	jne	.L9035
.L9111:
	leaq	.LC5(%rip), %rdx
	movl	$2648, %r8d
	leaq	.LC266(%rip), %rcx
	call	_assert
	cmpb	$0, 10384(%rbx)
	je	.L9036
.L9112:
	movss	.LC1(%rip), %xmm3
	leaq	56(%rsp), %r8
	xorl	%edx, %edx
	movl	$16777543, 32(%rsp)
	movq	$0, 56(%rsp)
	leaq	.LC363(%rip), %rcx
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	leaq	10384(%rbx), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	testb	$1, 15(%rax)
	jne	.L9037
	leaq	.LC5(%rip), %rdx
	movl	$3409, %r8d
	leaq	.LC236(%rip), %rcx
	call	_assert
.L9037:
	call	_ZN5ImGui3EndEv
	jmp	.L9036
.L9045:
	cmpq	$0, 6048(%rbx)
	je	.L9043
.L9078:
	movq	6040(%rbx), %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movq	6040(%rbx), %rax
	testb	$4, 12(%rax)
	jne	.L9043
	movq	6048(%rbx), %rcx
	movq	%rax, 6096(%rbx)
	movq	GImGui(%rip), %rax
	movl	92(%rcx), %edx
	testl	%edx, %edx
	movl	%edx, 6104(%rbx)
	movl	%edx, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	je	.L9048
	movb	$1, 6076(%rax)
.L9048:
	movq	%rcx, 6088(%rax)
	jmp	.L9043
	.p2align 4,,10
.L9081:
	xorl	%eax, %eax
	jmp	.L9061
.L9119:
	cmpb	$0, 136(%rax)
	jne	.L9043
	jmp	.L9046
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6RenderEv
	.def	_ZN5ImGui6RenderEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6RenderEv
_ZN5ImGui6RenderEv:
.LFB687:
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
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	movaps	%xmm7, 128(%rsp)
	.seh_savexmm	%xmm7, 128
	movaps	%xmm8, 144(%rsp)
	.seh_savexmm	%xmm8, 144
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	cmpb	$0, (%rbx)
	je	.L9167
.L9121:
	movl	5964(%rbx), %eax
	cmpl	%eax, 5968(%rbx)
	je	.L9122
	call	_ZN5ImGui8EndFrameEv
	movl	5964(%rbx), %eax
.L9122:
	movss	5120(%rbx), %xmm0
	pxor	%xmm6, %xmm6
	movl	%eax, 5972(%rbx)
	ucomiss	%xmm6, %xmm0
	jbe	.L9120
	leaq	6336(%rbx), %r14
	movq	$0, 848(%rbx)
	movl	$0, 856(%rbx)
	movq	%r14, %rdi
	leaq	6384(%rbx), %rsi
.L9129:
	movl	4(%rdi), %r8d
	testl	%r8d, %r8d
	jns	.L9125
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	8(%rdi), %rcx
	movq	%rax, %rbp
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9128
	movslq	(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9128
	subl	$1, 844(%rax)
.L9128:
	call	*240(%rax)
	movq	%rbp, 8(%rdi)
	movl	$0, 4(%rdi)
.L9125:
	movl	$0, (%rdi)
	addq	$16, %rdi
	cmpq	%rdi, %rsi
	jne	.L9129
	movl	5976(%rbx), %eax
	leaq	6352(%rbx), %rbp
	testl	%eax, %eax
	je	.L9130
	leaq	6352(%rbx), %rbp
	xorl	%esi, %esi
	leaq	.LC2(%rip), %r13
	leaq	.LC3(%rip), %r12
	leaq	6368(%rbx), %r15
	jmp	.L9135
	.p2align 4,,10
.L9131:
	movq	5984(%rbx), %rax
	movq	(%rax,%rsi,8), %rdx
	cmpb	$0, 136(%rdx)
	je	.L9132
	movl	168(%rdx), %ecx
	testl	%ecx, %ecx
	jle	.L9168
.L9132:
	movl	5976(%rbx), %eax
	leal	1(%rsi), %edx
	addq	$1, %rsi
	cmpl	%edx, %eax
	je	.L9130
.L9135:
	cmpl	%esi, %eax
	jg	.L9131
	movl	$856, %r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_assert
	jmp	.L9131
	.p2align 4,,10
.L9130:
	movl	6336(%rbx), %esi
	movl	6352(%rbx), %r12d
	movl	6340(%rbx), %eax
	addl	%esi, %r12d
	addl	6368(%rbx), %r12d
	cmpl	%r12d, %eax
	jge	.L9136
	testl	%eax, %eax
	movl	$8, %r15d
	je	.L9137
	movl	%eax, %r15d
	shrl	$31, %r15d
	addl	%eax, %r15d
	sarl	%r15d
	addl	%eax, %r15d
.L9137:
	cmpl	%r12d, %r15d
	jg	.L9169
	movl	%r12d, %r15d
.L9138:
	movq	GImGui(%rip), %rax
	movslq	%r15d, %rcx
	salq	$3, %rcx
	addl	$1, 844(%rax)
	call	*232(%rax)
	movq	6344(%rbx), %rcx
	movq	%rax, %r13
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9141
	movslq	6336(%rbx), %r8
	movq	%rcx, %rdx
	movq	%r13, %rcx
	salq	$3, %r8
	call	memcpy
	movq	6344(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9141
	subl	$1, 844(%rax)
.L9141:
	call	*240(%rax)
	movq	%r13, 6344(%rbx)
	movl	%r15d, 6340(%rbx)
.L9136:
	movl	%r12d, 6336(%rbx)
	leaq	.LC2(%rip), %r13
	leaq	.LC3(%rip), %r12
.L9145:
	movl	0(%rbp), %eax
	testl	%eax, %eax
	je	.L9142
	movslq	%eax, %r15
	salq	$3, %r15
	testl	%eax, %eax
	jle	.L9170
.L9143:
	cmpl	%esi, 6336(%rbx)
	movq	8(%rbp), %rax
	jle	.L9171
.L9144:
	movq	6344(%rbx), %rdx
	movslq	%esi, %rcx
	movq	%r15, %r8
	leaq	(%rdx,%rcx,8), %rcx
	movq	%rax, %rdx
	call	memcpy
	addl	0(%rbp), %esi
.L9142:
	addq	$16, %rbp
	cmpq	%rbp, %rdi
	jne	.L9145
	cmpb	$0, 284(%rbx)
	je	.L9146
	movslq	6544(%rbx), %rax
	leaq	6392(%rbx), %rdi
	movss	268(%rbx), %xmm0
	leaq	104(%rsp), %rbp
	movq	%rdi, %rcx
	movss	264(%rbx), %xmm1
	leaq	96(%rsp), %r15
	leaq	(%rax,%rax,2), %rdx
	leaq	(%rax,%rdx,4), %rsi
	leaq	80(%rsp), %rdx
	salq	$2, %rsi
	leaq	(%rbx,%rsi), %rax
	subss	6556(%rax), %xmm0
	leaq	6592(%rbx,%rsi), %r13
	subss	6552(%rax), %xmm1
	leaq	6560(%rbx,%rsi), %rax
	movss	(%rax), %xmm8
	leaq	6576(%rbx,%rsi), %r12
	movss	4(%rax), %xmm7
	movss	%xmm0, 92(%rsp)
	movq	144(%rbx), %rax
	movss	%xmm1, 88(%rsp)
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
	call	_ZN10ImDrawList13PushTextureIDERKPv
	movaps	%xmm8, %xmm2
	movq	%r15, %r8
	movq	%rbp, %r9
	movss	.LC18(%rip), %xmm0
	movq	%rdi, %rcx
	movl	$805306368, 48(%rsp)
	addss	88(%rsp), %xmm0
	movq	%r13, 40(%rsp)
	movss	92(%rsp), %xmm1
	movq	%r12, 32(%rsp)
	movq	80(%rsp), %rdx
	addss	%xmm0, %xmm2
	movss	%xmm0, 96(%rsp)
	addss	%xmm6, %xmm1
	movss	%xmm2, 104(%rsp)
	movaps	%xmm7, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm1, 100(%rsp)
	movss	%xmm2, 108(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	movaps	%xmm8, %xmm1
	movq	%r15, %r8
	movq	%rbp, %r9
	movss	.LC170(%rip), %xmm0
	movq	%r13, 40(%rsp)
	leaq	88(%rsp), %r15
	movq	%rdi, %rcx
	addss	88(%rsp), %xmm0
	movl	$805306368, 48(%rsp)
	addss	92(%rsp), %xmm6
	movq	%r12, 32(%rsp)
	movq	80(%rsp), %rdx
	addss	%xmm0, %xmm1
	movss	%xmm0, 96(%rsp)
	movss	%xmm6, 100(%rsp)
	movss	%xmm1, 104(%rsp)
	movaps	%xmm7, %xmm1
	addss	%xmm6, %xmm1
	movss	%xmm1, 108(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	movq	80(%rsp), %rdx
	movq	%rbp, %r9
	movq	%r15, %r8
	movss	92(%rsp), %xmm0
	movq	%rdi, %rcx
	movl	$-16777216, 48(%rsp)
	movss	88(%rsp), %xmm1
	movq	%r13, 40(%rsp)
	addss	%xmm7, %xmm0
	movq	%r12, 32(%rsp)
	addss	%xmm8, %xmm1
	movss	%xmm0, 108(%rsp)
	movss	%xmm1, 104(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	movq	80(%rsp), %rdx
	movq	%rdi, %rcx
	movq	%rbp, %r9
	addss	92(%rsp), %xmm7
	leaq	6584(%rbx,%rsi), %rax
	movq	%r15, %r8
	movl	$-1, 48(%rsp)
	addss	88(%rsp), %xmm8
	movq	%rax, 40(%rsp)
	leaq	6568(%rbx,%rsi), %rax
	movq	%rax, 32(%rsp)
	movss	%xmm7, 108(%rsp)
	movss	%xmm8, 104(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	movq	%rdi, %rcx
	call	_ZN10ImDrawList12PopTextureIDEv
.L9146:
	movl	6424(%rbx), %eax
	testl	%eax, %eax
	je	.L9147
	leaq	6392(%rbx), %rdx
	movq	%r14, %rcx
	call	_ZL23AddDrawListToRenderListR8ImVectorIP10ImDrawListES1_
.L9147:
	movl	6336(%rbx), %eax
	movb	$1, 6304(%rbx)
	movl	848(%rbx), %ecx
	movl	852(%rbx), %edx
	testl	%eax, %eax
	jle	.L9148
	movl	%eax, 6320(%rbx)
	movq	200(%rbx), %rax
	movq	6344(%rbx), %r8
	movl	%ecx, 6324(%rbx)
	movl	%edx, 6328(%rbx)
	testq	%rax, %rax
	movq	%r8, 6312(%rbx)
	je	.L9120
	leaq	6304(%rbx), %rcx
	call	*%rax
	nop
.L9120:
	movaps	112(%rsp), %xmm6
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
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
.L9168:
	testb	$16, 14(%rdx)
	jne	.L9132
	addl	$1, 856(%rbx)
	movl	12(%rdx), %eax
	testl	$33554432, %eax
	jne	.L9172
	testl	$16777216, %eax
	je	.L9134
	movq	%r15, %rcx
	call	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow
	jmp	.L9132
	.p2align 4,,10
.L9148:
	movq	$0, 6312(%rbx)
	movl	%eax, 6320(%rbx)
	movl	%ecx, 6324(%rbx)
	movl	%edx, 6328(%rbx)
	jmp	.L9120
	.p2align 4,,10
.L9167:
	leaq	.LC5(%rip), %rdx
	movl	$2718, %r8d
	leaq	.LC265(%rip), %rcx
	call	_assert
	jmp	.L9121
	.p2align 4,,10
.L9171:
	movl	$856, %r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rax, 72(%rsp)
	call	_assert
	movq	72(%rsp), %rax
	jmp	.L9144
	.p2align 4,,10
.L9169:
	cmpl	%r15d, %eax
	jl	.L9138
	jmp	.L9136
	.p2align 4,,10
.L9134:
	movq	%r14, %rcx
	call	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow
	jmp	.L9132
	.p2align 4,,10
.L9170:
	movl	$856, %r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	_assert
	jmp	.L9143
	.p2align 4,,10
.L9172:
	movq	%rbp, %rcx
	call	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow
	jmp	.L9132
	.seh_endproc
	.section .rdata,"dr"
.LC367:
	.ascii "##menu_%d\0"
.LC368:
	.ascii "##popup_%08x\0"
	.text
	.p2align 4,,15
	.def	_ZL12BeginPopupExPKci;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL12BeginPopupExPKci
_ZL12BeginPopupExPKci:
.LFB749:
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
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rsi
	movl	%edx, %edi
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movq	GImGui(%rip), %rdx
	movslq	6200(%rdx), %rcx
	cmpl	%ecx, 6184(%rdx)
	jle	.L9174
	movq	6192(%rdx), %r8
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%r8,%rcx,8), %rcx
	cmpl	(%rcx), %eax
	je	.L9182
.L9174:
	pxor	%xmm0, %xmm0
	movb	$0, 6297(%rdx)
	xorl	%eax, %eax
	movups	%xmm0, 6244(%rdx)
	movb	$0, 6296(%rdx)
.L9173:
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L9182:
	movl	%edi, %ebp
	movl	$2, %ecx
	movl	%eax, 60(%rsp)
	pxor	%xmm1, %xmm1
	call	_ZN5ImGui12PushStyleVarEif
	orl	$33554759, %ebp
	andl	$134217728, %edi
	je	.L9183
	movl	6200(%rbx), %r9d
	leaq	80(%rsp), %rdi
	movl	$20, %edx
	leaq	.LC367(%rip), %r8
	movq	%rdi, %rcx
	call	_Z14ImFormatStringPciPKcz
.L9178:
	movl	%ebp, 32(%rsp)
	leaq	72(%rsp), %r8
	xorl	%edx, %edx
	movq	%rdi, %rcx
	movss	.LC1(%rip), %xmm3
	movq	$0, 72(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	testb	$-128, 12(%rsi)
	jne	.L9179
	movq	6008(%rbx), %rdx
	andl	$-129, 12(%rdx)
.L9179:
	testb	%al, %al
	jne	.L9173
	movb	%al, 60(%rsp)
	call	_ZN5ImGui8EndPopupEv
	movzbl	60(%rsp), %eax
	jmp	.L9173
	.p2align 4,,10
.L9183:
	movl	60(%rsp), %eax
	leaq	80(%rsp), %rdi
	movl	$20, %edx
	leaq	.LC368(%rip), %r8
	movq	%rdi, %rcx
	movl	%eax, %r9d
	call	_Z14ImFormatStringPciPKcz
	jmp	.L9178
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10BeginPopupEPKc
	.def	_ZN5ImGui10BeginPopupEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10BeginPopupEPKc
_ZN5ImGui10BeginPopupEPKc:
.LFB750:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	6200(%rax), %edx
	cmpl	%edx, 6184(%rax)
	jg	.L9189
	pxor	%xmm0, %xmm0
	movb	$0, 6297(%rax)
	movups	%xmm0, 6244(%rax)
	movb	$0, 6296(%rax)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L9189:
	movl	$128, %edx
	jmp	_ZL12BeginPopupExPKci
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9BeginMenuEPKcb
	.def	_ZN5ImGui9BeginMenuEPKcb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9BeginMenuEPKcb
_ZN5ImGui9BeginMenuEPKcb:
.LFB1042:
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
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	movq	%rcx, %r12
	movl	%edx, %ebp
	movl	%edx, %r13d
	movb	$1, 138(%rax)
	movq	6008(%rbx), %rsi
	movzbl	140(%rsi), %edi
	testb	%dil, %dil
	je	.L9191
.L9235:
	xorl	%edi, %edi
.L9190:
	movaps	96(%rsp), %xmm6
	movl	%edi, %eax
	movaps	112(%rsp), %xmm7
	movaps	128(%rsp), %xmm8
	movaps	144(%rsp), %xmm9
	movaps	160(%rsp), %xmm10
	movaps	176(%rsp), %xmm11
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
.L9191:
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%r12, %rcx
	movss	.LC1(%rip), %xmm3
	movl	%eax, %r15d
	movl	%eax, 56(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movq	GImGui(%rip), %rdx
	movl	%eax, %r8d
	movq	6032(%rbx), %rax
	movq	%rax, 48(%rsp)
	movslq	6200(%rdx), %rax
	cmpl	6184(%rdx), %eax
	jl	.L9296
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
.L9193:
	testb	$2, 15(%rsi)
	jne	.L9196
	movslq	6200(%rbx), %rax
	cmpl	%eax, 6184(%rbx)
	jg	.L9297
.L9196:
	movb	$0, 36(%rsp)
.L9195:
	cmpl	$1, 304(%rsi)
	movss	192(%rsi), %xmm8
	movss	196(%rsi), %xmm10
	jne	.L9197
	testb	$4, 13(%rsi)
	pxor	%xmm7, %xmm7
	subss	5160(%rbx), %xmm10
	je	.L9198
	movq	GImGui(%rip), %rax
	movss	648(%rsi), %xmm0
	movss	5160(%rax), %xmm7
	mulss	5948(%rax), %xmm0
	addss	%xmm7, %xmm7
	addss	%xmm0, %xmm7
.L9198:
	movaps	%xmm8, %xmm9
	movl	$7, %ecx
	movl	%r8d, 60(%rsp)
	movss	5168(%rbx), %xmm0
	movss	.LC17(%rip), %xmm6
	addss	%xmm10, %xmm7
	subss	84(%rsi), %xmm9
	mulss	%xmm6, %xmm0
	cvttss2si	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	leaq	88(%rsp), %rax
	movq	%rax, %rdx
	movq	%rax, 40(%rsp)
	addss	%xmm0, %xmm8
	movss	5172(%rbx), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm8, 192(%rsi)
	movss	5168(%rbx), %xmm1
	addss	%xmm1, %xmm1
	movss	%xmm0, 92(%rsp)
	movss	%xmm1, 88(%rsp)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movl	60(%rsp), %r8d
	movl	%r15d, %edx
	movq	%r12, %rcx
	cmpb	$1, %bpl
	movq	40(%rsp), %r9
	movl	$0x00000000, 92(%rsp)
	sbbl	%eax, %eax
	andl	$32, %eax
	movl	%r8d, 88(%rsp)
	leal	9(%rax), %r8d
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	movl	%eax, %r15d
	call	_ZN5ImGui11PopStyleVarEi.constprop.141
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	jne	.L9200
	movss	5168(%rdx), %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L9200:
	mulss	5168(%rbx), %xmm6
	pxor	%xmm0, %xmm0
	testb	%bpl, %bpl
	cvttss2si	%xmm6, %eax
	cvtsi2ss	%eax, %xmm0
	addss	192(%rsi), %xmm0
	movss	%xmm0, 192(%rsi)
	jne	.L9201
.L9292:
	xorl	%r11d, %r11d
.L9202:
	cmpb	$0, 36(%rsp)
	je	.L9207
	movq	48(%rsp), %rax
	movq	%rax, 6032(%rbx)
.L9207:
	testl	$167772160, 12(%rsi)
	je	.L9208
	movl	%r14d, %r10d
	xorl	$1, %r10d
	cmpq	%rsi, 6040(%rbx)
	je	.L9298
	testb	%r11b, %r11b
	je	.L9220
	testb	%r10b, %r10b
	je	.L9220
.L9221:
	testb	%bpl, %bpl
	jne	.L9261
	xorl	%r14d, %r14d
	movl	$1, %r13d
	movl	$1, %eax
	jmp	.L9223
	.p2align 4,,10
.L9296:
	movq	6192(%rdx), %r11
	leaq	(%rax,%rax,4), %rax
	leaq	(%r11,%rax,8), %rax
	cmpl	%r15d, (%rax)
	sete	%r14b
	movzbl	%r14b, %r15d
	jmp	.L9193
	.p2align 4,,10
.L9298:
	movslq	6200(%rbx), %rax
	xorl	%edx, %edx
	cmpl	%eax, 6184(%rbx)
	jle	.L9210
	leaq	(%rax,%rax,4), %rcx
	movq	6192(%rbx), %rax
	leaq	(%rax,%rcx,8), %rax
	cmpq	%rsi, 16(%rax)
	jne	.L9210
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L9210
	movss	28(%rax), %xmm10
	movss	268(%rbx), %xmm2
	movss	28(%rsi), %xmm3
	movaps	%xmm2, %xmm5
	movss	264(%rbx), %xmm2
	ucomiss	%xmm3, %xmm10
	movss	32(%rax), %xmm1
	subss	860(%rbx), %xmm2
	subss	864(%rbx), %xmm5
	movss	40(%rax), %xmm6
	movss	36(%rax), %xmm4
	movaps	%xmm2, %xmm8
	movss	%xmm2, 72(%rsp)
	addss	%xmm1, %xmm6
	movss	%xmm5, 76(%rsp)
	addss	%xmm10, %xmm4
	ja	.L9211
	ucomiss	%xmm3, %xmm10
	movaps	%xmm2, %xmm0
	movss	%xmm4, 80(%rsp)
	subss	%xmm4, %xmm0
	andps	.LC87(%rip), %xmm0
	mulss	.LC371(%rip), %xmm0
	ja	.L9212
	movss	.LC344(%rip), %xmm2
	movss	%xmm4, 88(%rsp)
	ucomiss	%xmm0, %xmm2
	ja	.L9250
	ucomiss	.LC369(%rip), %xmm0
	jbe	.L9213
	movss	.LC369(%rip), %xmm0
.L9213:
	ucomiss	%xmm3, %xmm10
	movss	.LC17(%rip), %xmm2
	ja	.L9293
.L9214:
	subss	%xmm0, %xmm1
	addss	%xmm8, %xmm2
	subss	%xmm5, %xmm1
	ucomiss	.LC370(%rip), %xmm1
	movss	%xmm2, 72(%rsp)
	jnb	.L9216
	movss	.LC370(%rip), %xmm1
.L9216:
	addss	%xmm6, %xmm0
	movq	40(%rsp), %r9
	leaq	72(%rsp), %rdx
	addss	%xmm5, %xmm1
	leaq	264(%rbx), %rcx
	leaq	80(%rsp), %r8
	subss	%xmm5, %xmm0
	minss	.LC200(%rip), %xmm0
	movss	%xmm1, 84(%rsp)
	addss	%xmm5, %xmm0
	movss	%xmm0, 92(%rsp)
	call	_Z19ImIsPointInTriangleRK6ImVec2S1_S1_S1_
	movl	%eax, %edx
	.p2align 4,,10
.L9210:
	movl	%r11d, %eax
	xorl	$1, %eax
	andb	%r14b, %al
	movl	%eax, %ecx
	jne	.L9239
	testb	%r11b, %r11b
	je	.L9220
	testb	%r10b, %r10b
	je	.L9220
	movl	%edx, %eax
	xorl	$1, %eax
	orb	%r15b, %al
	movl	%eax, %r14d
	jne	.L9221
.L9220:
	testb	%bpl, %bpl
	jne	.L9230
	xorl	%eax, %eax
.L9223:
	movq	GImGui(%rip), %rdx
	movl	6200(%rdx), %ecx
	cmpl	%ecx, 6184(%rdx)
	jle	.L9231
	movq	6192(%rdx), %r9
	movslq	%ecx, %r8
	leaq	(%r8,%r8,4), %r8
	leaq	(%r9,%r8,8), %r8
	movl	56(%rsp), %r9d
	cmpl	(%r8), %r9d
	je	.L9299
.L9231:
	testb	%r13b, %r13b
	jne	.L9241
	orl	%eax, %r14d
	testb	%al, %al
	jne	.L9237
.L9230:
	testb	%r14b, %r14b
	je	.L9235
.L9229:
	movq	GImGui(%rip), %rax
	movq	%r12, %rcx
	movss	%xmm9, 6216(%rax)
	movss	%xmm7, 6220(%rax)
	movl	$1, 6244(%rax)
	movl	12(%rsi), %eax
	andl	$167772160, %eax
	cmpl	$1, %eax
	sbbl	%edx, %edx
	andl	$-1048576, %edx
	addl	$135266432, %edx
	call	_ZL12BeginPopupExPKci
	movl	%eax, %edi
	jmp	.L9190
	.p2align 4,,10
.L9261:
	movl	%ebp, %eax
	xorl	%r14d, %r14d
	.p2align 4,,10
.L9241:
	orl	%eax, %r14d
	movl	6200(%rbx), %eax
	cmpl	%eax, 6184(%rbx)
	jg	.L9300
.L9237:
	xorl	%edx, %edx
	movq	%r12, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
	jmp	.L9230
	.p2align 4,,10
.L9208:
	movl	%r14d, %eax
	andb	%r15b, %al
	je	.L9222
	cmpb	$0, 36(%rsp)
	jne	.L9255
	testb	%bpl, %bpl
	movl	%eax, %r14d
	je	.L9223
	xorl	%edx, %edx
	movq	%r12, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
	jmp	.L9229
	.p2align 4,,10
.L9197:
	movss	.LC242(%rip), %xmm0
	pxor	%xmm3, %xmm3
	leaq	552(%rsi), %rcx
	movd	%r8d, %xmm1
	mulss	5944(%rbx), %xmm0
	pxor	%xmm2, %xmm2
	movaps	%xmm10, %xmm7
	pxor	%xmm9, %xmm9
	subss	5128(%rbx), %xmm7
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm3
	call	_ZN18ImGuiSimpleColumns11DeclColumnsEfff
	movaps	%xmm0, %xmm11
	call	_ZN5ImGui21GetContentRegionAvailEv
	movd	%eax, %xmm6
	subss	%xmm11, %xmm6
	ucomiss	%xmm6, %xmm9
	jb	.L9203
	pxor	%xmm6, %xmm6
.L9203:
	testb	%bpl, %bpl
	movss	%xmm11, 88(%rsp)
	movl	$0x00000000, 92(%rsp)
	jne	.L9205
	leaq	88(%rsp), %rax
	movl	$105, %r8d
	movl	%r15d, %edx
	movq	%rax, %r9
	movq	%r12, %rcx
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	leaq	5264(%rbx), %rdx
	xorl	%ecx, %ecx
	movl	%eax, %r15d
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movss	.LC113(%rip), %xmm0
	xorl	%edx, %edx
	addss	%xmm10, %xmm9
	mulss	5944(%rbx), %xmm0
	addss	576(%rsi), %xmm6
	movq	%xmm9, %rax
	movss	.LC18(%rip), %xmm2
	movaps	%xmm8, %xmm9
	salq	$32, %rax
	addss	%xmm0, %xmm6
	addss	%xmm8, %xmm6
	movd	%xmm6, %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	call	_ZN5ImGui13PopStyleColorEi.constprop.142
	jmp	.L9292
	.p2align 4,,10
.L9205:
	leaq	88(%rsp), %rax
	movl	%r15d, %edx
	movl	$73, %r8d
	movq	%rax, %r9
	movq	%r12, %rcx
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	movss	.LC113(%rip), %xmm0
	xorl	%edx, %edx
	addss	%xmm10, %xmm9
	mulss	5944(%rbx), %xmm0
	movl	%eax, %r15d
	addss	576(%rsi), %xmm6
	movq	%xmm9, %rax
	movss	.LC18(%rip), %xmm2
	movaps	%xmm8, %xmm9
	salq	$32, %rax
	addss	%xmm0, %xmm6
	addss	%xmm8, %xmm6
	movd	%xmm6, %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
.L9201:
	movl	56(%rsp), %edx
	leaq	252(%rsi), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	movl	%eax, %r11d
	jmp	.L9202
	.p2align 4,,10
.L9222:
	testb	%r15b, %r15b
	jne	.L9225
	testb	%r11b, %r11b
	je	.L9220
	cmpb	$0, 36(%rsp)
	je	.L9220
	testb	%r14b, %r14b
	je	.L9225
	testb	%bpl, %bpl
	jne	.L9229
	movl	%r15d, %eax
	jmp	.L9223
	.p2align 4,,10
.L9297:
	movq	6192(%rbx), %r10
	leaq	(%rax,%rax,4), %rax
	movq	%rsi, %rcx
	movl	%r8d, 40(%rsp)
	leaq	.LC121(%rip), %rdx
	leaq	(%r10,%rax,8), %rax
	movl	24(%rax), %eax
	movl	%eax, 36(%rsp)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	cmpl	%eax, 36(%rsp)
	movl	40(%rsp), %r8d
	jne	.L9196
	movq	%rsi, 6032(%rbx)
	movb	$1, 36(%rsp)
	jmp	.L9195
	.p2align 4,,10
.L9300:
	xorl	%edx, %edx
	movq	%r12, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
	jmp	.L9190
	.p2align 4,,10
.L9255:
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	jmp	.L9223
	.p2align 4,,10
.L9239:
	movl	6064(%rbx), %r8d
	cmpl	56(%rsp), %r8d
	setne	%al
	testl	%r8d, %r8d
	setne	%r8b
	andl	%r8d, %eax
	xorl	$1, %eax
	orb	%dl, %al
	jne	.L9220
	xorl	%r13d, %r13d
	movl	%ecx, %r14d
	jmp	.L9223
	.p2align 4,,10
.L9225:
	testb	%bpl, %bpl
	jne	.L9259
	movl	%r14d, %r13d
	movl	$1, %eax
	xorl	$1, %r13d
	jmp	.L9223
	.p2align 4,,10
.L9299:
	movb	%al, 36(%rsp)
	call	_ZL17ClosePopupToLeveli
	movzbl	36(%rsp), %eax
	jmp	.L9231
	.p2align 4,,10
.L9259:
	movl	%ebp, %eax
	jmp	.L9241
.L9211:
	movaps	%xmm2, %xmm0
	movss	%xmm10, 80(%rsp)
	subss	%xmm10, %xmm0
	andps	.LC87(%rip), %xmm0
	mulss	.LC371(%rip), %xmm0
.L9212:
	movss	.LC344(%rip), %xmm2
	movss	%xmm10, 88(%rsp)
	ucomiss	%xmm0, %xmm2
	jbe	.L9301
	movaps	%xmm2, %xmm0
	movss	.LC110(%rip), %xmm2
	jmp	.L9214
.L9301:
	ucomiss	.LC369(%rip), %xmm0
	jbe	.L9213
	movss	.LC369(%rip), %xmm0
.L9293:
	movss	.LC110(%rip), %xmm2
	jmp	.L9214
.L9250:
	movaps	%xmm2, %xmm0
	jmp	.L9213
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii
	.def	_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii
_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii:
.LFB1028:
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
	movaps	%xmm6, 176(%rsp)
	.seh_savexmm	%xmm6, 176
	movaps	%xmm7, 192(%rsp)
	.seh_savexmm	%xmm7, 192
	movaps	%xmm8, 208(%rsp)
	.seh_savexmm	%xmm8, 208
	movaps	%xmm9, 224(%rsp)
	.seh_savexmm	%xmm9, 224
	movaps	%xmm10, 240(%rsp)
	.seh_savexmm	%xmm10, 240
	movaps	%xmm11, 256(%rsp)
	.seh_savexmm	%xmm11, 256
	movaps	%xmm12, 272(%rsp)
	.seh_savexmm	%xmm12, 272
	.seh_endprologue
	movq	GImGui(%rip), %r15
	movq	6008(%r15), %rax
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movq	%r8, %rsi
	movq	%r9, %rdi
	movb	$1, 138(%rax)
	movq	6008(%r15), %r13
	cmpb	$0, 140(%r13)
	je	.L9303
.L9307:
	xorl	%r15d, %r15d
.L9302:
	movaps	176(%rsp), %xmm6
	movl	%r15d, %eax
	movaps	192(%rsp), %xmm7
	movaps	208(%rsp), %xmm8
	movaps	224(%rsp), %xmm9
	movaps	240(%rsp), %xmm10
	movaps	256(%rsp), %xmm11
	movaps	272(%rsp), %xmm12
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
.L9303:
	movq	%rcx, %rdx
	movq	%r13, %rcx
	pxor	%xmm10, %xmm10
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, 100(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rbp, %rcx
	movss	.LC1(%rip), %xmm3
	movaps	%xmm0, %xmm8
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	pxor	%xmm3, %xmm3
	movss	5160(%r15), %xmm1
	movss	196(%r13), %xmm9
	movd	%eax, %xmm11
	shrq	$32, %rax
	movaps	%xmm1, %xmm6
	ucomiss	%xmm10, %xmm11
	movd	%eax, %xmm7
	movq	192(%r13), %rax
	addss	%xmm1, %xmm6
	addss	192(%r13), %xmm8
	addss	%xmm7, %xmm6
	movq	%rax, 128(%rsp)
	movss	%xmm8, 136(%rsp)
	addss	%xmm9, %xmm6
	movss	%xmm6, 140(%rsp)
	jbe	.L9305
	movss	5176(%r15), %xmm3
	addss	%xmm11, %xmm3
.L9305:
	movq	128(%rsp), %rax
	movaps	%xmm6, %xmm2
	addss	%xmm8, %xmm3
	addss	%xmm10, %xmm2
	leaq	160(%rsp), %r12
	movq	%r12, %rcx
	movss	%xmm3, 152(%rsp)
	movq	%rax, 144(%rsp)
	subss	144(%rsp), %xmm3
	movss	%xmm2, 156(%rsp)
	subss	148(%rsp), %xmm2
	movss	%xmm3, 160(%rsp)
	movss	%xmm2, 164(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	100(%rsp), %rdx
	leaq	144(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L9307
	movl	100(%rsp), %r14d
	xorl	%r8d, %r8d
	movss	5156(%r15), %xmm0
	leaq	128(%rsp), %rcx
	addss	%xmm0, %xmm0
	addss	5944(%r15), %xmm0
	movl	%r14d, %edx
	movaps	%xmm0, %xmm12
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	movq	GImGui(%rip), %rdx
	movaps	%xmm8, %xmm4
	movb	%al, 72(%rsp)
	subss	%xmm12, %xmm4
	movss	5164(%r15), %xmm5
	movslq	6200(%rdx), %rax
	movaps	%xmm4, %xmm12
	cmpl	%eax, 6184(%rdx)
	jle	.L9309
	movq	6192(%rdx), %r10
	leaq	(%rax,%rax,4), %rax
	leaq	(%r10,%rax,8), %rax
	cmpl	(%rax), %r14d
	je	.L9310
.L9309:
	movq	128(%rsp), %r11
	movl	$7, %ecx
	movss	%xmm12, 168(%rsp)
	movss	%xmm6, 172(%rsp)
	movq	%r11, 160(%rsp)
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	136(%rsp), %rdx
	movl	$1, %r9d
	movss	%xmm5, 32(%rsp)
	movq	%r11, %rcx
	movl	%eax, %r8d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	xorl	%ecx, %ecx
	cmpb	$0, 72(%rsp)
	movss	5164(%r15), %xmm5
	setne	%cl
	addl	$22, %ecx
.L9311:
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movd	%xmm9, %ecx
	movq	136(%rsp), %rdx
	movl	$1, %r9d
	movl	%eax, %r8d
	movd	%xmm12, %eax
	salq	$32, %rcx
	movss	%xmm5, 32(%rsp)
	movl	%eax, %eax
	orq	%rax, %rcx
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movss	.LC18(%rip), %xmm2
	movl	$1, %edx
	addss	5160(%r15), %xmm9
	addss	5156(%r15), %xmm12
	movd	%xmm9, %ecx
	movq	%rcx, %rax
	movd	%xmm12, %ecx
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	movl	(%rbx), %edx
	testl	%edx, %edx
	js	.L9312
	cmpl	400(%rsp), %edx
	jge	.L9312
	leaq	104(%rsp), %r8
	movq	%rdi, %rcx
	call	*%rsi
	testb	%al, %al
	jne	.L9378
.L9312:
	ucomiss	%xmm10, %xmm11
	jbe	.L9314
	movss	5176(%r15), %xmm4
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movss	132(%rsp), %xmm0
	addss	5160(%r15), %xmm0
	addss	%xmm8, %xmm4
	movd	%xmm0, %ecx
	movq	%rcx, %rdx
	movd	%xmm4, %eax
	salq	$32, %rdx
	movl	%eax, %ecx
	orq	%rdx, %rcx
	movq	%rbp, %rdx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
.L9314:
	movq	GImGui(%rip), %rax
	xorl	%r12d, %r12d
	cmpb	$0, 72(%rsp)
	movl	100(%rsp), %ecx
	movl	6184(%rax), %r8d
	movslq	6200(%rax), %rdx
	je	.L9316
	movl	%ecx, 6056(%rax)
	movb	$0, 6060(%rax)
	movzbl	876(%r15), %r12d
	testb	%r12b, %r12b
	je	.L9316
	cmpl	%edx, %r8d
	movb	$0, 6078(%rax)
	movl	$0, 6068(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	jle	.L9317
	movq	6192(%rax), %r9
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%r9,%rdx,8), %rdx
	cmpl	%ecx, (%rdx)
	je	.L9379
.L9317:
	movq	%r13, %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	xorl	%edx, %edx
	movq	%rbp, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
	movq	GImGui(%rip), %rax
	movl	100(%rsp), %ecx
	movl	6184(%rax), %r8d
	movslq	6200(%rax), %rdx
.L9316:
	cmpl	%edx, %r8d
	jle	.L9307
	movq	6192(%rax), %r8
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%r8,%rdx,8), %rdx
	cmpl	%ecx, (%rdx)
	jne	.L9307
	movl	408(%rsp), %edx
	pxor	%xmm0, %xmm0
	addss	5172(%r15), %xmm7
	movss	12(%r15), %xmm1
	movss	5236(%r15), %xmm2
	testl	%edx, %edx
	movl	$7, %edx
	cmovns	408(%rsp), %edx
	movl	%edx, 408(%rsp)
	movl	400(%rsp), %edx
	cmpl	%edx, 408(%rsp)
	cmovle	408(%rsp), %edx
	cvtsi2ss	%edx, %xmm0
	mulss	%xmm0, %xmm7
	movss	.LC115(%rip), %xmm0
	mulss	5160(%r15), %xmm0
	addss	%xmm0, %xmm7
	movaps	%xmm6, %xmm0
	addss	%xmm7, %xmm0
	ucomiss	%xmm0, %xmm6
	ja	.L9341
	subss	%xmm2, %xmm1
	minss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
.L9319:
	movaps	%xmm0, %xmm1
	movaps	%xmm7, %xmm4
	movss	132(%rsp), %xmm0
	subss	%xmm6, %xmm1
	movaps	%xmm0, %xmm3
	subss	%xmm2, %xmm3
	minss	%xmm3, %xmm4
	ucomiss	%xmm1, %xmm4
	jbe	.L9323
	movaps	%xmm0, %xmm6
	subss	%xmm7, %xmm6
	ucomiss	%xmm6, %xmm2
	ja	.L9343
	ucomiss	%xmm0, %xmm6
	movaps	%xmm0, %xmm1
	jbe	.L9377
	subss	%xmm0, %xmm1
	movaps	%xmm0, %xmm6
	.p2align 4,,10
.L9323:
	movss	128(%rsp), %xmm0
	movss	%xmm6, 6220(%rax)
	movabsq	$4294967297, %rdx
	movl	$1, %ecx
	movq	%rdx, 6244(%rax)
	leaq	5156(%r15), %rdx
	subss	%xmm0, %xmm8
	movss	%xmm0, 6216(%rax)
	movss	%xmm1, 6228(%rax)
	movss	%xmm8, 6224(%rax)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movl	12(%r13), %edx
	movq	%rbp, %rcx
	andl	$128, %edx
	orl	$8388608, %edx
	call	_ZL12BeginPopupExPKci
	testb	%al, %al
	movl	%eax, %r15d
	je	.L9327
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movb	$1, 138(%rdx)
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	je	.L9380
.L9328:
	movl	400(%rsp), %eax
	testl	%eax, %eax
	jle	.L9344
	movl	400(%rsp), %eax
	leaq	120(%rsp), %r14
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	subl	$1, %eax
	addq	$1, %rax
	movq	%rax, 80(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 72(%rsp)
	.p2align 4,,10
.L9330:
	movq	%rbp, %rcx
	movl	%ebp, 92(%rsp)
	call	_ZN5ImGui6PushIDEPKv
	cmpl	%ebp, (%rbx)
	movl	%ebp, %edx
	movq	%rdi, %rcx
	movq	72(%rsp), %r8
	sete	%r13b
	call	*%rsi
	testb	%al, %al
	je	.L9331
	movq	112(%rsp), %rcx
.L9332:
	movq	$0, 120(%rsp)
	movzbl	%r13b, %edx
	movq	%r14, %r8
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.129
	testb	%al, %al
	je	.L9333
	movq	GImGui(%rip), %rdx
	movl	%eax, %r15d
	movl	$0, 6068(%rdx)
	movb	$0, 6078(%rdx)
	movb	$1, 6077(%rdx)
	movq	$0, 6088(%rdx)
	movl	%ebp, (%rbx)
.L9333:
	testb	%r12b, %r12b
	je	.L9334
	testb	%r13b, %r13b
	je	.L9334
	movss	.LC17(%rip), %xmm0
	addq	$1, %rbp
	call	_ZN5ImGui13SetScrollHereEf
	call	_ZN5ImGui5PopIDEv
	cmpq	80(%rsp), %rbp
	jne	.L9330
.L9329:
	call	_ZN5ImGui8EndPopupEv
.L9327:
	call	_ZN5ImGui11PopStyleVarEi.constprop.141
	jmp	.L9302
	.p2align 4,,10
.L9378:
	movq	104(%rsp), %r8
	leaq	112(%rsp), %rax
	xorl	%r9d, %r9d
	movq	$0, 120(%rsp)
	movss	132(%rsp), %xmm0
	leaq	120(%rsp), %r14
	movq	%rax, %rcx
	addss	5160(%r15), %xmm0
	leaq	8(%r12), %rdx
	movss	128(%rsp), %xmm1
	addss	5156(%r15), %xmm1
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 32(%rsp)
	movss	%xmm1, 112(%rsp)
	movss	%xmm0, 116(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	jmp	.L9312
	.p2align 4,,10
.L9310:
	movq	128(%rsp), %r11
	movl	$7, %ecx
	movss	%xmm4, 168(%rsp)
	movss	%xmm6, 172(%rsp)
	movq	%r11, 160(%rsp)
	call	_ZN5ImGui11GetColorU32Eif.constprop.144
	movq	136(%rsp), %rdx
	movl	$1, %r9d
	movss	%xmm5, 32(%rsp)
	movq	%r11, %rcx
	movl	%eax, %r8d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movl	$23, %ecx
	movss	5164(%r15), %xmm5
	jmp	.L9311
	.p2align 4,,10
.L9334:
	call	_ZN5ImGui5PopIDEv
	addq	$1, %rbp
	cmpq	%rbp, 80(%rsp)
	jne	.L9330
	jmp	.L9329
	.p2align 4,,10
.L9331:
	leaq	.LC341(%rip), %rax
	movq	%rax, 112(%rsp)
	movq	%rax, %rcx
	jmp	.L9332
	.p2align 4,,10
.L9341:
	movaps	%xmm6, %xmm0
	jmp	.L9319
.L9343:
	movaps	%xmm3, %xmm1
	movaps	%xmm2, %xmm6
	jmp	.L9323
.L9380:
	leaq	120(%rsp), %r14
	pxor	%xmm1, %xmm1
	movq	$0, 120(%rsp)
	movq	%r14, %rcx
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	jmp	.L9328
.L9377:
	subss	%xmm6, %xmm1
	jmp	.L9323
.L9344:
	xorl	%r15d, %r15d
	jmp	.L9329
.L9379:
	leal	-1(%r8), %ecx
	xorl	%r12d, %r12d
	call	_ZL17ClosePopupToLeveli
	movq	GImGui(%rip), %rax
	movl	100(%rsp), %ecx
	movl	6184(%rax), %r8d
	movslq	6200(%rax), %rdx
	jmp	.L9316
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5ComboEPKcPiPKS1_ii
	.def	_ZN5ImGui5ComboEPKcPiPKS1_ii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ComboEPKcPiPKS1_ii
_ZN5ImGui5ComboEPKcPiPKS1_ii:
.LFB1026:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	96(%rsp), %eax
	movl	%r9d, 32(%rsp)
	movq	%r8, %r9
	movl	%eax, 40(%rsp)
	leaq	_ZL17Items_ArrayGetterPviPPKc(%rip), %r8
	call	_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5ComboEPKcPiS1_i
	.def	_ZN5ImGui5ComboEPKcPiS1_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ComboEPKcPiS1_i
_ZN5ImGui5ComboEPKcPiS1_i:
.LFB1027:
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
	cmpb	$0, (%r8)
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movq	%r8, %rdi
	movl	%r9d, %r13d
	je	.L9385
	movq	%r8, %rbx
	xorl	%esi, %esi
	.p2align 4,,10
.L9384:
	movq	%rbx, %rcx
	addl	$1, %esi
	call	strlen
	leaq	1(%rbx,%rax), %rbx
	cmpb	$0, (%rbx)
	jne	.L9384
.L9383:
	movl	%r13d, 40(%rsp)
	movq	%rdi, %r9
	movq	%r12, %rdx
	movq	%rbp, %rcx
	movl	%esi, 32(%rsp)
	leaq	_ZL24Items_SingleStringGetterPviPPKc(%rip), %r8
	call	_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L9385:
	xorl	%esi, %esi
	jmp	.L9383
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui21BeginPopupContextItemEPKci
	.def	_ZN5ImGui21BeginPopupContextItemEPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21BeginPopupContextItemEPKci
_ZN5ImGui21BeginPopupContextItemEPKci:
.LFB753:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rcx, %rbx
	movl	%edx, %ecx
	movq	6008(%rax), %rdx
	cmpb	$0, 268(%rdx)
	jne	.L9395
	movl	6200(%rax), %ecx
	cmpl	%ecx, 6184(%rax)
	jg	.L9396
.L9393:
	pxor	%xmm0, %xmm0
	movb	$0, 6297(%rax)
	movups	%xmm0, 6244(%rax)
	movb	$0, 6296(%rax)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L9395:
	xorl	%edx, %edx
	call	_ZN5ImGui14IsMouseClickedEib
	testb	%al, %al
	je	.L9394
	xorl	%edx, %edx
	movq	%rbx, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
.L9394:
	movq	GImGui(%rip), %rax
	movl	6200(%rax), %ecx
	cmpl	%ecx, 6184(%rax)
	jle	.L9393
.L9396:
	movl	$128, %edx
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZL12BeginPopupExPKci
	.seh_endproc
	.section .rdata,"dr"
.LC372:
	.ascii "void_context_menu\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui21BeginPopupContextVoidEPKci
	.def	_ZN5ImGui21BeginPopupContextVoidEPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21BeginPopupContextVoidEPKci
_ZN5ImGui21BeginPopupContextVoidEPKci:
.LFB755:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC372(%rip), %rax
	movq	%rcx, %rbx
	movl	%edx, %ecx
	testq	%rbx, %rbx
	cmove	%rax, %rbx
	movq	GImGui(%rip), %rax
	cmpq	$0, 6040(%rax)
	je	.L9407
.L9399:
	movl	6200(%rax), %edx
	cmpl	%edx, 6184(%rax)
	jg	.L9408
	pxor	%xmm0, %xmm0
	movb	$0, 6297(%rax)
	movups	%xmm0, 6244(%rax)
	movb	$0, 6296(%rax)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L9408:
	movl	$128, %edx
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZL12BeginPopupExPKci
	.p2align 4,,10
.L9407:
	xorl	%edx, %edx
	call	_ZN5ImGui14IsMouseClickedEib
	testb	%al, %al
	je	.L9406
	movl	$1, %edx
	movq	%rbx, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
.L9406:
	movq	GImGui(%rip), %rax
	jmp	.L9399
	.seh_endproc
	.section .rdata,"dr"
.LC373:
	.ascii "window_context_menu\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui23BeginPopupContextWindowEbPKci
	.def	_ZN5ImGui23BeginPopupContextWindowEbPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui23BeginPopupContextWindowEbPKci
_ZN5ImGui23BeginPopupContextWindowEbPKci:
.LFB754:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	.LC373(%rip), %rax
	testq	%rdx, %rdx
	movq	%rdx, %rbx
	movl	%ecx, %esi
	cmove	%rax, %rbx
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	cmpq	%rdx, 6040(%rax)
	je	.L9420
.L9411:
	movl	6200(%rax), %esi
	cmpl	%esi, 6184(%rax)
	jg	.L9421
	pxor	%xmm0, %xmm0
	movb	$0, 6297(%rax)
	movups	%xmm0, 6244(%rax)
	movb	$0, 6296(%rax)
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L9421:
	movl	$128, %edx
	movq	%rbx, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZL12BeginPopupExPKci
	.p2align 4,,10
.L9420:
	xorl	%edx, %edx
	movl	%r8d, %ecx
	call	_ZN5ImGui14IsMouseClickedEib
	testb	%al, %al
	je	.L9419
	testb	%sil, %sil
	jne	.L9413
	movq	GImGui(%rip), %rax
	movl	6056(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L9411
	movl	6064(%rax), %edx
	testl	%edx, %edx
	jne	.L9411
.L9413:
	movl	$1, %edx
	movq	%rbx, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
.L9419:
	movq	GImGui(%rip), %rax
	jmp	.L9411
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15BeginPopupModalEPKcPbi
	.def	_ZN5ImGui15BeginPopupModalEPKcPbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15BeginPopupModalEPKcPbi
_ZN5ImGui15BeginPopupModalEPKcPbi:
.LFB751:
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
	movq	GImGui(%rip), %rax
	movq	%rcx, %rsi
	movq	6008(%rax), %rcx
	movq	%rdx, %rbx
	movl	%r8d, %edi
	movq	%rsi, %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.138
	movl	%eax, %ebp
	movq	GImGui(%rip), %rax
	movslq	6200(%rax), %rdx
	cmpl	%edx, 6184(%rax)
	jle	.L9423
	movq	6192(%rax), %r10
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%r10,%rdx,8), %rdx
	cmpl	(%rdx), %ebp
	je	.L9434
.L9423:
	pxor	%xmm0, %xmm0
	movb	$0, 6297(%rax)
	movups	%xmm0, 6244(%rax)
	movb	$0, 6296(%rax)
	xorl	%eax, %eax
.L9422:
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L9434:
	orl	$100663584, %edi
	movss	.LC1(%rip), %xmm3
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	movl	%edi, 32(%rsp)
	leaq	72(%rsp), %r8
	movq	$0, 72(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	testb	%al, %al
	je	.L9435
	testq	%rbx, %rbx
	je	.L9422
	movzbl	(%rbx), %eax
	testb	%al, %al
	jne	.L9422
	movb	%al, 63(%rsp)
	call	_ZN5ImGui8EndPopupEv
	movq	GImGui(%rip), %rcx
	movzbl	63(%rsp), %eax
	movl	6184(%rcx), %r8d
	movslq	6200(%rcx), %rdx
	cmpl	%edx, %r8d
	jle	.L9422
	movq	6192(%rcx), %r9
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%r9,%rdx,8), %rdx
	cmpl	(%rdx), %ebp
	jne	.L9422
	leal	-1(%r8), %ecx
	movb	%al, 63(%rsp)
	call	_ZL17ClosePopupToLeveli
	movzbl	63(%rsp), %eax
	jmp	.L9422
	.p2align 4,,10
.L9435:
	movb	%al, 63(%rsp)
	call	_ZN5ImGui8EndPopupEv
	movzbl	63(%rsp), %eax
	jmp	.L9422
	.seh_endproc
	.section .rdata,"dr"
.LC374:
	.ascii "##MainMenuBar\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui16BeginMainMenuBarEv
	.def	_ZN5ImGui16BeginMainMenuBarEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16BeginMainMenuBarEv
_ZN5ImGui16BeginMainMenuBarEv:
.LFB1038:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	$0, 6216(%rbx)
	movss	8(%rbx), %xmm1
	movss	5160(%rbx), %xmm0
	movl	$1, 6244(%rbx)
	movslq	6152(%rbx), %rax
	movss	%xmm1, 6224(%rbx)
	cmpl	6156(%rbx), %eax
	addss	%xmm0, %xmm0
	movl	$1, 6248(%rbx)
	addss	5948(%rbx), %xmm0
	movss	5140(%rbx), %xmm6
	movss	%xmm0, 6228(%rbx)
	je	.L9437
	movq	6160(%rbx), %rsi
.L9438:
	leal	1(%rax), %edx
	movl	$3, %ecx
	leaq	(%rax,%rax,2), %rax
	movl	%edx, 6152(%rbx)
	leaq	(%rsi,%rax,4), %rax
	leaq	56(%rsp), %rsi
	movl	$2, (%rax)
	movss	%xmm6, 4(%rax)
	movq	%rsi, %rdx
	movl	$0x00000000, 5140(%rbx)
	movq	$0, 56(%rsp)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movss	.LC1(%rip), %xmm3
	xorl	%edx, %edx
	movq	%rsi, %r8
	movl	$1295, 32(%rsp)
	leaq	.LC374(%rip), %rcx
	movq	$0, 56(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	testb	%al, %al
	je	.L9445
	call	_ZN5ImGui12BeginMenuBarEv
	testb	%al, %al
	je	.L9445
	movq	6008(%rbx), %rdx
	movss	272(%rdx), %xmm0
	addss	5232(%rbx), %xmm0
	movss	%xmm0, 272(%rdx)
	movaps	64(%rsp), %xmm6
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L9445:
	call	_ZN5ImGui3EndEv
	call	_ZN5ImGui11PopStyleVarEi.constprop.140
	nop
	movaps	64(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
.L9437:
	leal	1(%rax), %edi
	testl	%eax, %eax
	movl	$8, %edx
	je	.L9439
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L9439:
	cmpl	%edx, %edi
	cmovl	%edx, %edi
	addl	$1, 844(%rbx)
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rcx
	salq	$2, %rcx
	call	*232(%rbx)
	movq	6160(%rbx), %rcx
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9442
	movslq	6152(%rbx), %rax
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	leaq	(%rax,%rax,2), %r8
	salq	$2, %r8
	call	memcpy
	movq	6160(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9442
	subl	$1, 844(%rax)
.L9442:
	call	*240(%rax)
	movq	%rsi, 6160(%rbx)
	movslq	6152(%rbx), %rax
	movl	%edi, 6156(%rbx)
	jmp	.L9438
	.seh_endproc
	.section .rdata,"dr"
.LC375:
	.ascii " ChildMenu\0"
.LC376:
	.ascii " ChildWindow\0"
.LC377:
	.ascii "NULL\0"
.LC378:
	.ascii "ImGui Metrics\0"
.LC379:
	.ascii "ImGui %s\0"
	.align 8
.LC381:
	.ascii "Application average %.3f ms/frame (%.1f FPS)\0"
	.align 8
.LC382:
	.ascii "%d vertices, %d indices (%d triangles)\0"
.LC383:
	.ascii "%d allocations\0"
	.align 8
.LC384:
	.ascii "Show clipping rectangles when hovering a ImDrawCmd\0"
.LC385:
	.ascii "Windows\0"
.LC386:
	.ascii "Active DrawLists (%d)\0"
.LC387:
	.ascii "Open Popups Stack (%d)\0"
.LC388:
	.ascii "Popups\0"
	.align 8
.LC389:
	.ascii "PopupID: %08x, Window: '%s'%s%s\0"
.LC390:
	.ascii "Basic state\0"
.LC391:
	.ascii "FocusedWindow: '%s'\0"
.LC392:
	.ascii "HoveredWindow: '%s'\0"
.LC393:
	.ascii "HoveredRootWindow: '%s'\0"
.LC394:
	.ascii "HoveredID: 0x%08X/0x%08X\0"
.LC395:
	.ascii "ActiveID: 0x%08X/0x%08X\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui17ShowMetricsWindowEPb
	.def	_ZN5ImGui17ShowMetricsWindowEPb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17ShowMetricsWindowEPb
_ZN5ImGui17ShowMetricsWindowEPb:
.LFB6221:
	pushq	%r12
	.seh_pushreg	%r12
.L9454: