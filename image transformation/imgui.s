	.file	"imgui.cpp"
	.text
	.p2align 4,,15
	.def	_ZL19ChildWindowComparerPKvS0_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19ChildWindowComparerPKvS0_
_ZL19ChildWindowComparerPKvS0_:
.LFB409:
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
	jne	.L2
	movl	%ecx, %eax
	movl	%edx, %r8d
	andl	$16777216, %eax
	andl	$16777216, %r8d
	subl	%r8d, %eax
	jne	.L2
	movl	%ecx, %eax
	andl	$8388608, %edx
	andl	$8388608, %eax
	subl	%edx, %eax
	jne	.L2
	movl	16(%r10), %eax
	subl	16(%r9), %eax
.L2:
	rep ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect
_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect:
.LFB492:
	subq	$184, %rsp
	.seh_stackalloc	184
	movaps	%xmm6, 16(%rsp)
	.seh_savexmm	%xmm6, 16
	movaps	%xmm7, 32(%rsp)
	.seh_savexmm	%xmm7, 32
	movaps	%xmm8, 48(%rsp)
	.seh_savexmm	%xmm8, 48
	movaps	%xmm9, 64(%rsp)
	.seh_savexmm	%xmm9, 64
	movaps	%xmm10, 80(%rsp)
	.seh_savexmm	%xmm10, 80
	movaps	%xmm11, 96(%rsp)
	.seh_savexmm	%xmm11, 96
	movaps	%xmm12, 112(%rsp)
	.seh_savexmm	%xmm12, 112
	movaps	%xmm13, 128(%rsp)
	.seh_savexmm	%xmm13, 128
	movaps	%xmm14, 144(%rsp)
	.seh_savexmm	%xmm14, 144
	movaps	%xmm15, 160(%rsp)
	.seh_savexmm	%xmm15, 160
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	176(%rax), %xmm0
	movss	184(%rax), %xmm2
	ucomiss	%xmm0, %xmm2
	movss	5232(%rax), %xmm8
	movss	5236(%rax), %xmm4
	jp	.L64
	jne	.L64
.L8:
	xorps	%xmm1, %xmm1
	movss	12(%rax), %xmm5
	movss	8(%rax), %xmm2
	movaps	%xmm1, %xmm0
.L10:
	movaps	%xmm5, %xmm3
	movss	4(%rdx), %xmm6
	movaps	%xmm6, %xmm7
	subss	%xmm1, %xmm3
	subss	%xmm3, %xmm7
	movaps	%xmm4, %xmm3
	addss	%xmm4, %xmm3
	cmpltss	%xmm7, %xmm3
	movss	(%rdx), %xmm7
	movaps	%xmm7, %xmm9
	andps	%xmm4, %xmm3
	movaps	%xmm2, %xmm4
	subss	%xmm0, %xmm4
	addss	%xmm3, %xmm1
	subss	%xmm3, %xmm5
	subss	%xmm4, %xmm9
	movaps	%xmm8, %xmm4
	movaps	%xmm1, %xmm3
	addss	%xmm8, %xmm4
	movaps	%xmm5, %xmm11
	subss	%xmm6, %xmm11
	cmpltss	%xmm9, %xmm4
	andps	%xmm8, %xmm4
	movss	4(%rcx), %xmm8
	ucomiss	%xmm8, %xmm1
	subss	%xmm4, %xmm2
	addss	%xmm4, %xmm0
	movaps	%xmm5, %xmm4
	movaps	%xmm2, %xmm12
	subss	%xmm7, %xmm12
	ja	.L13
	movaps	%xmm11, %xmm3
	minss	%xmm8, %xmm3
.L13:
	movss	(%rcx), %xmm9
	movaps	%xmm0, %xmm5
	ucomiss	%xmm9, %xmm0
	ja	.L15
	movaps	%xmm12, %xmm5
	minss	%xmm9, %xmm5
.L15:
	movl	(%r8), %ecx
	xorl	%edx, %edx
	cmpl	$-1, %ecx
	setne	%dl
	jne	.L87
	xorl	%eax, %eax
.L81:
	movaps	%xmm1, %xmm14
	movaps	%xmm2, %xmm10
	movaps	%xmm4, %xmm13
	movss	8(%r9), %xmm15
.L19:
	subss	%xmm15, %xmm10
	ucomiss	%xmm10, %xmm7
	ja	.L22
	subss	%xmm14, %xmm13
	ucomiss	%xmm13, %xmm6
	jbe	.L23
.L22:
	movl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L88
	movaps	%xmm0, %xmm10
	movss	12(%r9), %xmm13
.L26:
	movaps	%xmm2, %xmm15
	subss	%xmm10, %xmm15
	ucomiss	%xmm15, %xmm7
	ja	.L27
	movaps	%xmm4, %xmm10
	subss	%xmm13, %xmm10
	ucomiss	%xmm10, %xmm6
	jbe	.L82
.L27:
	movl	$2, %eax
	subl	%edx, %eax
	cmpl	$2, %eax
	jne	.L89
	movaps	%xmm1, %xmm14
	movss	4(%r9), %xmm10
.L31:
	movaps	%xmm2, %xmm13
	subss	%xmm0, %xmm13
	ucomiss	%xmm13, %xmm7
	ja	.L32
	subss	%xmm14, %xmm10
	ucomiss	%xmm10, %xmm6
	jbe	.L23
.L32:
	movl	$3, %eax
	subl	%edx, %eax
	cmpl	$2, %eax
	jne	.L90
	movaps	%xmm2, %xmm10
	movss	4(%r9), %xmm13
.L35:
	subss	%xmm0, %xmm10
	ucomiss	%xmm10, %xmm7
	ja	.L36
	subss	%xmm1, %xmm13
	ucomiss	%xmm13, %xmm6
	jbe	.L37
.L36:
	incl	%ecx
	je	.L39
	movss	(%r9), %xmm10
	subss	%xmm0, %xmm10
	ucomiss	%xmm10, %xmm7
	ja	.L39
	movaps	%xmm4, %xmm10
	movl	$3, %eax
	subss	%xmm1, %xmm10
	ucomiss	%xmm10, %xmm6
	jbe	.L37
.L39:
	addss	%xmm7, %xmm9
	movl	$-1, (%r8)
	ucomiss	%xmm9, %xmm2
	jbe	.L44
	movaps	%xmm9, %xmm12
	subss	%xmm7, %xmm12
.L44:
	addss	%xmm6, %xmm8
	movaps	%xmm0, %xmm2
	cmpnless	%xmm12, %xmm2
	ucomiss	%xmm8, %xmm4
	andps	%xmm2, %xmm0
	andnps	%xmm12, %xmm2
	orps	%xmm2, %xmm0
	ja	.L91
.L48:
	movaps	%xmm1, %xmm2
	movss	%xmm0, (%rsp)
	movl	(%rsp), %edx
	cmpnless	%xmm11, %xmm2
	andps	%xmm2, %xmm1
	movl	%edx, %eax
	andnps	%xmm11, %xmm2
	orps	%xmm1, %xmm2
	movss	%xmm2, (%rsp)
	movq	(%rsp), %rcx
	salq	$32, %rcx
	orq	%rcx, %rax
.L85:
	movaps	16(%rsp), %xmm6
	movaps	32(%rsp), %xmm7
	movaps	48(%rsp), %xmm8
	movaps	64(%rsp), %xmm9
	movaps	80(%rsp), %xmm10
	movaps	96(%rsp), %xmm11
	movaps	112(%rsp), %xmm12
	movaps	128(%rsp), %xmm13
	movaps	144(%rsp), %xmm14
	movaps	160(%rsp), %xmm15
	addq	$184, %rsp
	ret
	.p2align 4,,7
.L64:
	movss	180(%rax), %xmm1
	movss	188(%rax), %xmm5
	ucomiss	%xmm1, %xmm5
	jp	.L10
	jne	.L10
	jmp	.L8
	.p2align 4,,7
.L91:
	movaps	%xmm8, %xmm11
	subss	%xmm6, %xmm11
	.p2align 4,,2
	jmp	.L48
	.p2align 4,,7
.L23:
	cmpl	$1, %eax
	movl	%eax, (%r8)
	je	.L52
.L53:
	cmpl	$2, %eax
	je	.L92
.L41:
	testl	%eax, %eax
	jne	.L42
	movss	8(%r9), %xmm5
.L40:
	movss	%xmm5, (%rsp)
	movl	(%rsp), %ecx
	movss	%xmm3, (%rsp)
	movl	(%rsp), %eax
	movq	%rax, %rdx
	movl	%ecx, %eax
	salq	$32, %rdx
	orq	%rdx, %rax
	jmp	.L85
	.p2align 4,,7
.L88:
	movss	8(%r9), %xmm10
	movaps	%xmm1, %xmm13
	jmp	.L26
	.p2align 4,,7
.L90:
	movss	(%r9), %xmm10
	movaps	%xmm4, %xmm13
	jmp	.L35
	.p2align 4,,7
.L89:
	movss	12(%r9), %xmm14
	movaps	%xmm4, %xmm10
	jmp	.L31
	.p2align 4,,7
.L37:
	movl	%eax, (%r8)
	jmp	.L53
	.p2align 4,,7
.L82:
	cmpl	$1, %eax
	movl	%eax, (%r8)
	jne	.L41
	.p2align 4,,7
.L52:
	movss	12(%r9), %xmm3
	jmp	.L40
	.p2align 4,,7
.L92:
	movss	4(%r9), %xmm3
	subss	%xmm6, %xmm3
	jmp	.L40
.L42:
	cmpl	$3, %eax
	jne	.L40
	movss	(%r9), %xmm5
	subss	%xmm7, %xmm5
	jmp	.L40
.L87:
	cmpl	$2, %ecx
	jne	.L93
	movss	4(%r9), %xmm13
	movl	$2, %eax
	movaps	%xmm1, %xmm14
	movaps	%xmm2, %xmm10
	movaps	%xmm0, %xmm15
	jmp	.L19
.L93:
	cmpl	$3, %ecx
	movl	%ecx, %eax
	je	.L94
	cmpl	$1, %ecx
	jne	.L21
	movss	12(%r9), %xmm14
	movaps	%xmm2, %xmm10
	movaps	%xmm4, %xmm13
	movaps	%xmm0, %xmm15
	jmp	.L19
.L94:
	movss	(%r9), %xmm10
	movaps	%xmm1, %xmm14
	movaps	%xmm4, %xmm13
	movaps	%xmm0, %xmm15
	jmp	.L19
	.p2align 4,,7
.L21:
	testl	%ecx, %ecx
	je	.L81
	movaps	%xmm1, %xmm14
	movaps	%xmm2, %xmm10
	movaps	%xmm4, %xmm13
	movaps	%xmm0, %xmm15
	jmp	.L19
	.seh_endproc
	.p2align 4,,15
	.def	_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2
_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2:
.LFB495:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	movq	%rcx, %rsi
	movq	GImGui(%rip), %rbx
	movl	%edx, 44(%rsp)
	shrq	$32, %rdx
	movss	44(%rsp), %xmm1
	movl	%edx, 44(%rsp)
	movss	44(%rsp), %xmm0
	cmpb	$0, 6296(%rbx)
	je	.L96
	xorps	%xmm2, %xmm2
	movss	6268(%rbx), %xmm6
	movss	6260(%rbx), %xmm4
	movss	6264(%rbx), %xmm3
	ucomiss	%xmm2, %xmm6
	movss	6272(%rbx), %xmm5
	jb	.L97
	ucomiss	%xmm2, %xmm4
	jb	.L97
	ucomiss	%xmm1, %xmm4
	jbe	.L122
	movaps	%xmm4, %xmm1
	.p2align 4,,2
	jmp	.L98
	.p2align 4,,7
.L99:
	movss	48(%rsi), %xmm0
.L100:
	movq	6280(%rbx), %rax
	testq	%rax, %rax
	je	.L96
	movq	6288(%rbx), %rdx
	movss	%xmm1, 72(%rsp)
	leaq	48(%rsp), %rcx
	movss	%xmm0, 76(%rsp)
	movq	%rdx, 48(%rsp)
	movq	28(%rsi), %rdx
	movq	%rdx, 56(%rsp)
	movq	44(%rsi), %rdx
	movq	%rdx, 64(%rsp)
	call	*%rax
	movss	72(%rsp), %xmm1
	movss	76(%rsp), %xmm0
.L96:
	testl	$1048640, 12(%rsi)
	jne	.L101
	movss	5136(%rbx), %xmm3
	movaps	%xmm3, %xmm2
	cmpless	%xmm0, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm3, %xmm2
	movss	5132(%rbx), %xmm3
	orps	%xmm2, %xmm0
	movaps	%xmm3, %xmm2
	cmpless	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm3, %xmm2
	orps	%xmm2, %xmm1
.L101:
	movaps	80(%rsp), %xmm6
	movss	%xmm1, 44(%rsi)
	movss	%xmm0, 48(%rsi)
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L97:
	movss	44(%rsi), %xmm1
.L98:
	ucomiss	%xmm2, %xmm5
	jb	.L99
	ucomiss	%xmm2, %xmm3
	jb	.L99
	ucomiss	%xmm0, %xmm3
	jbe	.L123
	movaps	%xmm3, %xmm0
	.p2align 4,,2
	jmp	.L100
	.p2align 4,,7
.L123:
	minss	%xmm0, %xmm5
	movaps	%xmm5, %xmm0
	jmp	.L100
	.p2align 4,,7
.L122:
	minss	%xmm1, %xmm6
	movaps	%xmm6, %xmm1
	jmp	.L98
	.seh_endproc
	.p2align 4,,15
	.def	_ZL16Plot_ArrayGetterPvi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL16Plot_ArrayGetterPvi
_ZL16Plot_ArrayGetterPvi:
.LFB686:
	.seh_endprologue
	movslq	8(%rcx), %rax
	movslq	%edx, %rdx
	imulq	%rax, %rdx
	movq	(%rcx), %rax
	movss	(%rax,%rdx), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE:
.LFB718:
	.seh_endprologue
	movl	4(%rdx), %eax
	movl	8(%rdx), %r8d
	cmpl	%r8d, %eax
	je	.L125
	jg	.L134
	movl	60(%rcx), %ecx
	movl	%r8d, %r9d
	movl	%eax, %r8d
	movl	%r9d, %eax
.L130:
	cmpl	%r8d, %ecx
	jge	.L133
	movl	%ecx, 4(%rdx)
.L133:
	cmpl	%ecx, %eax
	jle	.L132
	movl	%ecx, 8(%rdx)
	movl	%ecx, %eax
.L132:
	movl	%eax, (%rdx)
	movl	%eax, 4(%rdx)
	movb	$0, 15(%rdx)
	ret
	.p2align 4,,7
.L125:
	rep ret
	.p2align 4,,7
.L134:
	movl	%eax, 8(%rdx)
	movl	%r8d, 4(%rdx)
	movl	60(%rcx), %ecx
	jmp	.L130
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17Items_ArrayGetterPviPPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17Items_ArrayGetterPviPPKc
_ZL17Items_ArrayGetterPviPPKc:
.LFB753:
	.seh_endprologue
	testq	%r8, %r8
	je	.L136
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rax
	movq	%rax, (%r8)
.L136:
	movl	$1, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB5782:
	.seh_endprologue
	movq	8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	testq	%rcx, %rcx
	je	.L140
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	rex.W jmp *240(%rax)
	.p2align 4,,7
.L140:
	rep ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA5782:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5782-.LLSDACSB5782
.LLSDACSB5782:
.LLSDACSE5782:
	.text
	.seh_endproc
	.p2align 4,,15
	.def	_ZL34ImeSetInputScreenPosFn_DefaultImplii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL34ImeSetInputScreenPosFn_DefaultImplii
_ZL34ImeSetInputScreenPosFn_DefaultImplii:
.LFB5784:
	.seh_endprologue
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL24Items_SingleStringGetterPviPPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL24Items_SingleStringGetterPviPPKc
_ZL24Items_SingleStringGetterPviPPKc:
.LFB754:
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
	je	.L150
	testl	%edx, %edx
	je	.L145
	leal	-1(%rdx), %edi
	xorl	%esi, %esi
	incq	%rdi
	jmp	.L146
	.p2align 4,,7
.L154:
	incq	%rsi
	cmpq	%rsi, %rdi
	je	.L145
.L146:
	movq	%rbx, %rcx
	call	strlen
	leaq	1(%rbx,%rax), %rbx
	cmpb	$0, (%rbx)
	jne	.L154
.L150:
	xorl	%eax, %eax
.L155:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L145:
	testq	%rbp, %rbp
	je	.L156
	movl	$1, %eax
	movq	%rbx, 0(%rbp)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L156:
	movl	$1, %eax
	jmp	.L155
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "C:/libraries/include/imgui/imgui.h\0"
.LC11:
	.ascii "i < Size\0"
	.text
	.p2align 4,,15
	.def	_ZL17FindHoveredWindow6ImVec2b;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17FindHoveredWindow6ImVec2b
_ZL17FindHoveredWindow6ImVec2b:
.LFB429:
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
	movq	%rcx, %rbp
	movq	GImGui(%rip), %rsi
	movl	5976(%rsi), %eax
	movl	%eax, %ebx
	decl	%ebx
	js	.L158
	shrq	$32, %rcx
	movslq	%ebx, %rdi
	salq	$3, %rdi
	movl	%ecx, 44(%rsp)
	testb	%dl, %dl
	movss	44(%rsp), %xmm6
	je	.L165
	cmpl	%eax, %ebx
	jge	.L186
	.p2align 4,,7
.L167:
	movq	5984(%rsi), %rax
	movq	(%rax,%rdi), %rax
	cmpb	$0, 136(%rax)
	je	.L168
	movl	12(%rax), %edx
	testb	$2, %dh
	jne	.L168
	andl	$1048576, %edx
	jne	.L168
	movss	5184(%rsi), %xmm2
	movl	%ebp, 44(%rsp)
	movss	528(%rax), %xmm1
	subss	%xmm2, %xmm1
	movss	44(%rsp), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L168
	addss	536(%rax), %xmm2
	movss	5188(%rsi), %xmm1
	ucomiss	%xmm0, %xmm2
	movss	532(%rax), %xmm0
	subss	%xmm1, %xmm0
	seta	%cl
	ucomiss	%xmm0, %xmm6
	setnb	%dl
	testb	%dl, %cl
	je	.L168
	addss	540(%rax), %xmm1
	ucomiss	%xmm6, %xmm1
	ja	.L166
	.p2align 4,,7
.L168:
	decl	%ebx
	subq	$8, %rdi
	cmpl	$-1, %ebx
	je	.L158
	movl	5976(%rsi), %eax
	cmpl	%eax, %ebx
	jl	.L167
.L186:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L167
	.p2align 4,,7
.L188:
	addss	540(%rax), %xmm3
	ucomiss	%xmm6, %xmm3
	ja	.L166
	.p2align 4,,7
.L161:
	decl	%ebx
	subq	$8, %rdi
	cmpl	$-1, %ebx
	je	.L158
	movl	5976(%rsi), %eax
.L165:
	cmpl	%ebx, %eax
	jle	.L187
.L160:
	movq	5984(%rsi), %rax
	movq	(%rax,%rdi), %rax
	cmpb	$0, 136(%rax)
	je	.L161
	testb	$2, 13(%rax)
	jne	.L161
	movss	5184(%rsi), %xmm2
	movl	%ebp, 44(%rsp)
	movss	528(%rax), %xmm1
	subss	%xmm2, %xmm1
	movss	44(%rsp), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L161
	movss	5188(%rsi), %xmm3
	addss	536(%rax), %xmm2
	movss	532(%rax), %xmm1
	subss	%xmm3, %xmm1
	ucomiss	%xmm1, %xmm6
	setnb	%cl
	ucomiss	%xmm0, %xmm2
	seta	%dl
	testb	%dl, %cl
	jne	.L188
	jmp	.L161
	.p2align 4,,7
.L187:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L160
	.p2align 4,,7
.L158:
	xorl	%eax, %eax
.L166:
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL11IsPopupOpenj;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL11IsPopupOpenj
_ZL11IsPopupOpenj:
.LFB469:
	.seh_endprologue
	movq	GImGui(%rip), %r8
	xorl	%eax, %eax
	movslq	6200(%r8), %rdx
	cmpl	%edx, 6184(%r8)
	jle	.L190
	movq	%rdx, %rax
	salq	$5, %rax
	leaq	(%rax,%rdx,8), %rax
	addq	6192(%r8), %rax
	cmpl	%ecx, (%rax)
	sete	%al
.L190:
	rep ret
	.seh_endproc
	.section .rdata,"dr"
.LC12:
	.ascii "%d\0"
.LC13:
	.ascii "%f\0"
	.text
	.p2align 4,,15
	.def	_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_
_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_:
.LFB650:
	pushq	%r12
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
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rcx
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	movl	%eax, %esi
	jne	.L240
	.p2align 4,,7
.L232:
	incq	%rbx
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	movl	%eax, %esi
	je	.L232
.L240:
	cmpl	$32, %eax
	je	.L232
	leal	-42(%rsi), %eax
	cmpb	$1, %al
	jbe	.L220
	cmpb	$47, %sil
	je	.L220
	movl	%esi, %eax
	xorl	%esi, %esi
.L221:
	xorl	%edi, %edi
	testb	%al, %al
	je	.L231
	testl	%r8d, %r8d
	jne	.L197
	cmpq	$0, 176(%rsp)
	leaq	.LC12(%rip), %rax
	movl	(%r9), %ebp
	cmovne	176(%rsp), %rax
	testb	%sil, %sil
	movl	%ebp, 56(%rsp)
	movq	%rax, 176(%rsp)
	jne	.L244
	leaq	56(%rsp), %r12
	movl	$0x00000000, 60(%rsp)
.L206:
	movq	176(%rsp), %rdx
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%r9, 40(%rsp)
	call	sscanf
	decl	%eax
	movq	40(%rsp), %r9
	je	.L210
.L239:
	movl	(%r9), %eax
.L203:
	cmpl	%eax, %ebp
	setne	%dil
.L231:
	movaps	64(%rsp), %xmm6
	movl	%edi, %eax
	movaps	80(%rsp), %xmm7
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L220:
	movsbl	1(%rbx), %edx
	leaq	1(%rbx), %r10
	movq	%r10, %rbx
	cmpl	$32, %edx
	movl	%edx, %eax
	jne	.L242
	.p2align 4,,7
.L233:
	incq	%rbx
	movsbl	(%rbx), %edx
	cmpl	$32, %edx
	movl	%edx, %eax
	je	.L233
.L242:
	cmpl	$9, %edx
	je	.L233
	jmp	.L221
	.p2align 4,,7
.L197:
	decl	%r8d
	.p2align 4,,5
	jne	.L231
	movss	(%r9), %xmm6
	testb	%sil, %sil
	movq	%r9, 40(%rsp)
	movss	%xmm6, 56(%rsp)
	jne	.L245
	leaq	60(%rsp), %r8
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	movl	$0x00000000, 60(%rsp)
	call	sscanf
	testl	%eax, %eax
	movq	40(%rsp), %r9
	jg	.L217
.L225:
	xorl	%edi, %edi
	jmp	.L231
.L244:
	leaq	56(%rsp), %r12
	movq	%rax, %rdx
	movq	%r9, 40(%rsp)
	movq	%r12, %r8
	call	sscanf
	testl	%eax, %eax
	movq	40(%rsp), %r9
	jle	.L231
	xorps	%xmm6, %xmm6
	cmpb	$43, %sil
	movss	%xmm6, 60(%rsp)
	je	.L246
	cmpb	$42, %sil
	je	.L247
	cmpb	$47, %sil
	jne	.L206
	leaq	60(%rsp), %r8
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	movq	%r9, 40(%rsp)
	call	sscanf
	decl	%eax
	movq	40(%rsp), %r9
	jne	.L239
	movss	60(%rsp), %xmm1
	ucomiss	%xmm6, %xmm1
	jp	.L208
	je	.L239
.L208:
	cvtsi2ss	56(%rsp), %xmm0
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, (%r9)
	jmp	.L203
.L210:
	movl	56(%rsp), %eax
	movl	%eax, (%r9)
	jmp	.L203
.L217:
	movss	60(%rsp), %xmm0
	movss	%xmm0, (%r9)
.L215:
	ucomiss	%xmm0, %xmm6
	movl	$1, %edi
	setp	%al
	cmove	%eax, %edi
	jmp	.L231
.L245:
	leaq	56(%rsp), %r8
	leaq	.LC13(%rip), %rdx
	call	sscanf
	testl	%eax, %eax
	movq	40(%rsp), %r9
	jle	.L225
	xorps	%xmm7, %xmm7
	leaq	60(%rsp), %r8
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	movq	%r9, 40(%rsp)
	movss	%xmm7, 60(%rsp)
	call	sscanf
	testl	%eax, %eax
	movq	40(%rsp), %r9
	jle	.L225
	cmpb	$43, %sil
	je	.L248
	cmpb	$42, %sil
	jne	.L216
	movss	56(%rsp), %xmm0
	mulss	60(%rsp), %xmm0
	movss	%xmm0, (%r9)
	jmp	.L215
.L246:
	leaq	60(%rsp), %r8
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	movq	%r9, 40(%rsp)
	call	sscanf
	decl	%eax
	movq	40(%rsp), %r9
	jne	.L239
	cvtsi2ss	56(%rsp), %xmm0
	addss	60(%rsp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, (%r9)
	jmp	.L203
.L247:
	leaq	60(%rsp), %r8
	leaq	.LC13(%rip), %rdx
	movq	%rbx, %rcx
	movq	%r9, 40(%rsp)
	call	sscanf
	decl	%eax
	movq	40(%rsp), %r9
	jne	.L239
	cvtsi2ss	56(%rsp), %xmm0
	mulss	60(%rsp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, (%r9)
	jmp	.L203
.L248:
	movss	56(%rsp), %xmm0
	addss	60(%rsp), %xmm0
	movss	%xmm0, (%r9)
	jmp	.L215
.L216:
	cmpb	$47, %sil
	jne	.L217
	movss	60(%rsp), %xmm1
	ucomiss	%xmm7, %xmm1
	jp	.L218
	jne	.L218
	movss	(%r9), %xmm0
	jmp	.L215
.L218:
	movss	56(%rsp), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, (%r9)
	jmp	.L215
	.seh_endproc
	.p2align 4,,15
	.def	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv
_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv:
.LFB738:
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
	movl	(%rcx), %ebx
	movq	%rcx, %rbp
	cmpl	$127, %ebx
	ja	.L250
	cmpl	$32, %ebx
	je	.L250
	movq	%r9, 56(%rsp)
	movq	%r8, 48(%rsp)
	movl	%ebx, %ecx
	movl	%edx, 44(%rsp)
	call	*__imp_isprint(%rip)
	testl	%eax, %eax
	movl	44(%rsp), %edx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r9
	jne	.L250
	cmpl	$10, %ebx
	je	.L286
	cmpl	$9, %ebx
	jne	.L259
	testb	$4, %dh
	.p2align 4,,2
	jne	.L252
	.p2align 4,,7
.L259:
	xorl	%esi, %esi
.L253:
	movl	%esi, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L250:
	leal	-57344(%rbx), %eax
	cmpl	$6399, %eax
	jbe	.L259
.L252:
	testb	$15, %dl
	je	.L255
	testb	$1, %dl
	je	.L256
	leal	-45(%rbx), %eax
	cmpl	$12, %eax
	jbe	.L256
	leal	-42(%rbx), %eax
	cmpl	$1, %eax
	ja	.L259
	.p2align 4,,7
.L256:
	testb	$2, %dl
	je	.L257
	leal	-48(%rbx), %eax
	cmpl	$9, %eax
	jbe	.L257
	movl	%ebx, %eax
	andl	$-33, %eax
	subl	$65, %eax
	cmpl	$5, %eax
	ja	.L259
	.p2align 4,,7
.L257:
	testb	$4, %dl
	je	.L258
	leal	-97(%rbx), %eax
	cmpl	$25, %eax
	ja	.L258
	subl	$32, %ebx
	movl	%ebx, 0(%rbp)
.L258:
	testb	$8, %dl
	je	.L255
	cmpl	$32, %ebx
	sete	%cl
	cmpl	$9, %ebx
	sete	%al
	orb	%al, %cl
	jne	.L259
	cmpl	$12288, %ebx
	je	.L259
	.p2align 4,,7
.L255:
	testb	$2, %dh
	movl	$1, %esi
	je	.L253
	leaq	64(%rsp), %r10
	xorl	%eax, %eax
	movl	$7, %ecx
	movq	%r10, %rdi
	rep stosq
	movl	$512, 64(%rsp)
	movw	%bx, 82(%rsp)
	movq	%r10, %rcx
	movl	%edx, 68(%rsp)
	movq	%r9, 72(%rsp)
	call	*%r8
	testl	%eax, %eax
	jne	.L259
	movzwl	82(%rsp), %edx
	testw	%dx, %dx
	movl	%edx, 0(%rbp)
	je	.L259
	jmp	.L253
	.p2align 4,,7
.L286:
	testl	$1048576, %edx
	jne	.L252
	.p2align 4,,5
	jmp	.L259
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_1;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_1
__tcf_1:
.LFB6052:
	.seh_endprologue
	leaq	_ZL19GImDefaultFontAtlas(%rip), %rcx
	jmp	_ZN11ImFontAtlasD1Ev
	.seh_endproc
	.align 2
	.p2align 4,,15
	.def	_ZN8ImVectorIP11ImGuiWindowE7reserveEi.part.51;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIP11ImGuiWindowE7reserveEi.part.51
_ZN8ImVectorIP11ImGuiWindowE7reserveEi.part.51:
.LFB6106:
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
	movq	%rcx, %rbx
	movslq	%edx, %rcx
	movq	%rcx, %rsi
	salq	$3, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L289
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L291
	decl	844(%rax)
.L291:
	call	*240(%rax)
	movq	%rdi, 8(%rbx)
	movl	%esi, 4(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L289:
	movq	GImGui(%rip), %rax
	jmp	.L291
	.seh_endproc
	.section .rdata,"dr"
.LC14:
	.ascii "Size > 0\0"
	.align 8
.LC15:
	.ascii "C:/libraries/include/imgui/imgui.cpp\0"
	.align 8
.LC16:
	.ascii "draw_list->VtxBuffer.Size == 0 || draw_list->_VtxWritePtr == draw_list->VtxBuffer.Data + draw_list->VtxBuffer.Size\0"
	.align 8
.LC17:
	.ascii "draw_list->IdxBuffer.Size == 0 || draw_list->_IdxWritePtr == draw_list->IdxBuffer.Data + draw_list->IdxBuffer.Size\0"
	.align 8
.LC18:
	.ascii "(int)draw_list->_VtxCurrentIdx == draw_list->VtxBuffer.Size\0"
	.align 8
.LC19:
	.ascii "(int64_t)draw_list->_VtxCurrentIdx <= ((int64_t)1L << (sizeof(ImDrawIdx)*8))\0"
	.text
	.p2align 4,,15
	.def	_ZL23AddDrawListToRenderListR8ImVectorIP10ImDrawListES1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23AddDrawListToRenderListR8ImVectorIP10ImDrawListES1_
_ZL23AddDrawListToRenderListR8ImVectorIP10ImDrawListES1_:
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
	movl	(%rdx), %eax
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testl	%eax, %eax
	jne	.L327
.L293:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L327:
	testl	%eax, %eax
	jle	.L328
.L296:
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$6, %rdx
	salq	$4, %rcx
	subq	%rcx, %rdx
	movq	8(%rbx), %rcx
	leaq	-48(%rcx,%rdx), %rdx
	movl	(%rdx), %ecx
	testl	%ecx, %ecx
	jne	.L300
	cmpq	$0, 32(%rdx)
	je	.L329
.L300:
	movslq	32(%rbx), %rax
	testl	%eax, %eax
	je	.L298
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %rax
	addq	40(%rbx), %rax
	cmpq	%rax, 64(%rbx)
	je	.L298
	leaq	.LC15(%rip), %rdx
	leaq	.LC16(%rip), %rcx
	movl	$2601, %r8d
	call	_assert
.L298:
	movslq	16(%rbx), %rax
	testl	%eax, %eax
	je	.L303
	movq	24(%rbx), %rdx
	leaq	(%rdx,%rax,2), %rax
	cmpq	%rax, 72(%rbx)
	je	.L303
	leaq	.LC15(%rip), %rdx
	leaq	.LC17(%rip), %rcx
	movl	$2602, %r8d
	call	_assert
.L303:
	movl	56(%rbx), %eax
	cmpl	32(%rbx), %eax
	je	.L304
	leaq	.LC15(%rip), %rdx
	leaq	.LC18(%rip), %rcx
	movl	$2603, %r8d
	call	_assert
	movl	56(%rbx), %eax
.L304:
	cmpq	$65536, %rax
	jg	.L330
.L305:
	movslq	(%rsi), %rdx
	cmpl	4(%rsi), %edx
	je	.L306
	movq	8(%rsi), %rax
	leal	1(%rdx), %r8d
.L307:
	movl	%r8d, (%rsi)
	movq	%rbx, (%rax,%rdx,8)
	movq	GImGui(%rip), %rax
	movl	32(%rbx), %edx
	addl	%edx, 848(%rax)
	movl	16(%rbx), %edx
	addl	%edx, 852(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L306:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	je	.L308
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L308:
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %edi
	jl	.L309
	movq	8(%rsi), %rax
	jmp	.L307
	.p2align 4,,7
.L330:
	leaq	.LC15(%rip), %rdx
	leaq	.LC19(%rip), %rcx
	movl	$2607, %r8d
	call	_assert
	jmp	.L305
	.p2align 4,,7
.L309:
	movq	GImGui(%rip), %rax
	movslq	%edi, %rcx
	salq	$3, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rsi), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L310
	movslq	(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L312
	decl	844(%rax)
.L312:
	call	*240(%rax)
	movslq	(%rsi), %rdx
	movq	%rbp, 8(%rsi)
	movq	%rbp, %rax
	movl	%edi, 4(%rsi)
	leal	1(%rdx), %r8d
	jmp	.L307
	.p2align 4,,7
.L329:
	testl	%eax, %eax
	jle	.L331
.L301:
	decl	%eax
	testl	%eax, %eax
	movl	%eax, (%rbx)
	jne	.L300
	.p2align 4,,3
	jmp	.L293
	.p2align 4,,7
.L310:
	movq	GImGui(%rip), %rax
	jmp	.L312
	.p2align 4,,7
.L328:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	(%rbx), %eax
	jmp	.L296
.L331:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	(%rbx), %eax
	jmp	.L301
	.seh_endproc
	.p2align 4,,15
	.def	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow
_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow:
.LFB412:
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
	xorl	%ebx, %ebx
	movq	%rdx, %rdi
	movq	656(%rdx), %rdx
	movq	%rcx, %rbp
	call	_ZL23AddDrawListToRenderListR8ImVectorIP10ImDrawListES1_
	movl	280(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.L340
	jmp	.L332
	.p2align 4,,7
.L342:
	movl	168(%rdx), %eax
	testl	%eax, %eax
	jle	.L335
.L334:
	incl	%ebx
	addq	$8, %rsi
	cmpl	%ecx, %ebx
	jge	.L332
.L340:
	movq	288(%rdi), %rax
	movq	(%rax,%rsi), %rdx
	cmpb	$0, 136(%rdx)
	je	.L334
	testb	$2, 15(%rdx)
	jne	.L342
.L335:
	movq	%rbp, %rcx
	incl	%ebx
	addq	$8, %rsi
	call	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow
	movl	280(%rdi), %ecx
	cmpl	%ecx, %ebx
	jl	.L340
.L332:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.def	_ZN8ImVectorIfE7reserveEi.part.98;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIfE7reserveEi.part.98
_ZN8ImVectorIfE7reserveEi.part.98:
.LFB6153:
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
	movq	%rcx, %rbx
	movslq	%edx, %rcx
	movq	%rcx, %rsi
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L344
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L346
	decl	844(%rax)
.L346:
	call	*240(%rax)
	movq	%rdi, 8(%rbx)
	movl	%esi, 4(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L344:
	movq	GImGui(%rip), %rax
	jmp	.L346
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui8SameLineEff.constprop.140;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8SameLineEff.constprop.140
_ZN5ImGui8SameLineEff.constprop.140:
.LFB6198:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L348
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L353
.L350:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L348:
	rep ret
	.p2align 4,,7
.L353:
	movss	5168(%rdx), %xmm0
	jmp	.L350
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152:
.LFB6186:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	cmpq	$-1, %rcx
	movq	GImGui(%rip), %r8
	je	.L355
	movzbl	(%rcx), %edx
	testb	%dl, %dl
	je	.L355
	movq	%rcx, %rax
	jmp	.L358
	.p2align 4,,7
.L359:
	incq	%rax
	cmpq	$-1, %rax
	je	.L380
	movzbl	(%rax), %edx
	testb	%dl, %dl
	je	.L357
.L358:
	cmpb	$35, %dl
	jne	.L359
	cmpb	$35, 1(%rax)
	jne	.L359
.L357:
	cmpq	%rcx, %rax
	movq	5936(%r8), %rbx
	movss	5944(%r8), %xmm6
	je	.L366
.L362:
	movaps	%xmm6, %xmm1
	movq	%rcx, 32(%rsp)
	movq	$0, 48(%rsp)
	movq	%rax, 40(%rsp)
	movss	.LC20(%rip), %xmm3
	movss	.LC21(%rip), %xmm2
	movq	%rbx, %rcx
	call	_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
	movl	%eax, 76(%rsp)
	movss	(%rbx), %xmm1
	movss	76(%rsp), %xmm0
	ucomiss	.LC9(%rip), %xmm0
	jbe	.L364
	divss	%xmm1, %xmm6
	subss	%xmm6, %xmm0
.L364:
	addss	.LC22(%rip), %xmm0
	movabsq	$-4294967296, %rcx
	andq	%rcx, %rax
	movaps	80(%rsp), %xmm6
	cvttss2si	%xmm0, %edx
	cvtsi2ss	%edx, %xmm4
	movss	%xmm4, 76(%rsp)
	movl	76(%rsp), %edx
	orq	%rdx, %rax
	addq	$96, %rsp
	popq	%rbx
	ret
.L355:
	movss	5944(%r8), %xmm6
.L366:
	movss	%xmm6, 76(%rsp)
	movl	76(%rsp), %eax
	movaps	80(%rsp), %xmm6
	salq	$32, %rax
	addq	$96, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L380:
	movq	5936(%r8), %rbx
	movss	5944(%r8), %xmm6
	jmp	.L362
	.seh_endproc
	.p2align 4,,15
	.def	_Z6ImHashPKvij.constprop.164;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z6ImHashPKvij.constprop.164
_Z6ImHashPKvij.constprop.164:
.LFB6174:
	subq	$40, %rsp
	.seh_stackalloc	40
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	.seh_endprologue
	leaq	_ZZ6ImHashPKvijE9crc32_lut(%rip), %r10
	movl	4+_ZZ6ImHashPKvijE9crc32_lut(%rip), %eax
	testl	%eax, %eax
	jne	.L385
	pxor	%xmm3, %xmm3
	leaq	1024+_ZZ6ImHashPKvijE9crc32_lut(%rip), %r8
	movq	%r10, %rax
	movdqa	.LC23(%rip), %xmm6
	movdqa	.LC24(%rip), %xmm7
	movdqa	.LC25(%rip), %xmm5
	movdqa	.LC26(%rip), %xmm4
	.p2align 4,,7
.L386:
	movdqa	%xmm6, %xmm0
	movdqa	%xmm3, %xmm2
	movdqa	%xmm6, %xmm1
	addq	$16, %rax
	paddd	%xmm7, %xmm6
	pand	%xmm5, %xmm0
	psrld	$1, %xmm1
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pand	%xmm4, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm5, %xmm1
	psubd	%xmm1, %xmm2
	pand	%xmm4, %xmm2
	movdqa	%xmm3, %xmm1
	pxor	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	psrld	$1, %xmm2
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm1
	pand	%xmm4, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pand	%xmm4, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm5, %xmm1
	psubd	%xmm1, %xmm2
	pand	%xmm4, %xmm2
	movdqa	%xmm3, %xmm1
	pxor	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	psrld	$1, %xmm2
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm1
	pand	%xmm4, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pand	%xmm4, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm5, %xmm1
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	pand	%xmm4, %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%rax, %r8
	jne	.L386
.L385:
	leaq	1(%rcx), %r8
	movzbl	(%rcx), %ecx
	notl	%edx
	movl	%edx, %eax
	testb	%cl, %cl
	jne	.L388
	jmp	.L383
	.p2align 4,,7
.L387:
	movl	%eax, %r9d
	incq	%r8
	xorl	%ecx, %eax
	movzbl	%al, %eax
	movzbl	-1(%r8), %ecx
	shrl	$8, %r9d
	xorl	(%r10,%rax,4), %r9d
	testb	%cl, %cl
	movl	%r9d, %eax
	je	.L383
.L388:
	cmpb	$35, %cl
	jne	.L387
	cmpb	$35, (%r8)
	jne	.L387
	cmpb	$35, 1(%r8)
	cmove	%edx, %eax
	jmp	.L387
	.p2align 4,,7
.L383:
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
.LFB404:
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
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	_Z6ImHashPKvij.constprop.164
	xorl	%ebx, %ebx
	movl	%eax, %ebp
	movl	6112(%rdi), %edx
	testl	%edx, %edx
	jne	.L398
	jmp	.L395
	.p2align 4,,7
.L394:
	movq	%rsi, %rdx
	addq	6120(%rdi), %rdx
	cmpl	8(%rdx), %ebp
	je	.L397
.L399:
	movl	6112(%rdi), %edx
	incl	%ebx
	addq	$32, %rsi
	cmpl	%ebx, %edx
	je	.L395
.L398:
	cmpl	%ebx, %edx
	jg	.L394
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	%rsi, %rdx
	addq	6120(%rdi), %rdx
	cmpl	8(%rdx), %ebp
	jne	.L399
.L397:
	movq	%rdx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L395:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_Z14ImFormatStringPciPKcz.constprop.166;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z14ImFormatStringPciPKcz.constprop.166
_Z14ImFormatStringPciPKcz.constprop.166:
.LFB6172:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$64, %edx
	movq	%r9, 88(%rsp)
	leaq	88(%rsp), %r9
	movq	%rcx, %rbx
	movq	%r9, 40(%rsp)
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L402
	cmpl	$63, %eax
	movslq	%eax, %rdx
	jg	.L402
	movb	$0, (%rbx,%rdx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L402:
	movl	$63, %edx
	movl	$63, %eax
	movb	$0, (%rbx,%rdx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui13PopStyleColorEi.constprop.161;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13PopStyleColorEi.constprop.161
_ZN5ImGui13PopStyleColorEi.constprop.161:
.LFB6177:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L407
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L405:
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L407:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6136(%rbx), %rdx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L405
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6136(%rbx), %eax
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC27:
	.ascii "idx >= 0 && idx < ImGuiStyleVar_Count_\0"
	.text
	.p2align 4,,15
	.def	_ZN5ImGui11PopStyleVarEi.constprop.159;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11PopStyleVarEi.constprop.159
_ZN5ImGui11PopStyleVarEi.constprop.159:
.LFB6179:
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
	jle	.L421
.L409:
	leaq	0(,%rax,4), %rdx
	salq	$4, %rax
	subq	%rdx, %rax
	movq	6160(%rbx), %rdx
	leaq	-12(%rdx,%rax), %rbp
	movslq	0(%rbp), %rsi
	cmpl	$11, %esi
	ja	.L422
.L410:
	leaq	_ZL13GStyleVarInfo(%rip), %rdi
	movl	(%rdi,%rsi,8), %eax
	leaq	(%rdi,%rsi,8), %rdx
	cmpl	$1, %eax
	je	.L411
	cmpl	$2, %eax
	je	.L412
	testl	%eax, %eax
	je	.L423
.L413:
	movl	6152(%rbx), %eax
	testl	%eax, %eax
	jle	.L424
.L414:
	decl	%eax
	testl	%eax, %eax
	movl	%eax, 6152(%rbx)
	jle	.L425
.L415:
	cltq
	leaq	0(,%rax,4), %rdx
	salq	$4, %rax
	subq	%rdx, %rax
	movq	6160(%rbx), %rdx
	leaq	-12(%rdx,%rax), %rbp
	movslq	0(%rbp), %rsi
	cmpl	$11, %esi
	ja	.L426
	movl	(%rdi,%rsi,8), %eax
	leaq	(%rdi,%rsi,8), %rdx
	cmpl	$1, %eax
	je	.L427
.L417:
	cmpl	$2, %eax
	je	.L428
	testl	%eax, %eax
	je	.L429
.L418:
	movl	6152(%rbx), %eax
	testl	%eax, %eax
	jle	.L430
.L420:
	decl	%eax
	movl	%eax, 6152(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L429:
	movl	4(%rdx), %eax
	movl	4(%rbp), %ecx
	movq	GImGui(%rip), %rdx
	movl	%ecx, 5120(%rdx,%rax)
	movl	6152(%rbx), %eax
	testl	%eax, %eax
	jg	.L420
.L430:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6152(%rbx), %eax
	jmp	.L420
	.p2align 4,,7
.L423:
	movl	4(%rdx), %eax
	movl	4(%rbp), %ecx
	movq	GImGui(%rip), %rdx
	movl	%ecx, 5120(%rdx,%rax)
	movl	6152(%rbx), %eax
	testl	%eax, %eax
	jg	.L414
.L424:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6152(%rbx), %eax
	jmp	.L414
	.p2align 4,,7
.L426:
	leaq	.LC15(%rip), %rdx
	leaq	.LC27(%rip), %rcx
	movl	$4761, %r8d
	call	_assert
	movl	(%rdi,%rsi,8), %eax
	leaq	(%rdi,%rsi,8), %rdx
	cmpl	$1, %eax
	jne	.L417
.L427:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	4(%rbp), %xmm0
	movss	%xmm0, 5120(%rdx,%rax)
	jmp	.L418
	.p2align 4,,7
.L422:
	leaq	.LC15(%rip), %rdx
	leaq	.LC27(%rip), %rcx
	movl	$4761, %r8d
	call	_assert
	jmp	.L410
	.p2align 4,,7
.L411:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	4(%rbp), %xmm0
	movss	%xmm0, 5120(%rdx,%rax)
	jmp	.L413
	.p2align 4,,7
.L428:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	8(%rbp), %xmm0
	movss	4(%rbp), %xmm1
	leaq	5120(%rdx,%rax), %rax
	movss	%xmm1, (%rax)
	movss	%xmm0, 4(%rax)
	jmp	.L418
	.p2align 4,,7
.L412:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	8(%rbp), %xmm0
	movss	4(%rbp), %xmm1
	leaq	5120(%rdx,%rax), %rax
	movss	%xmm1, (%rax)
	movss	%xmm0, 4(%rax)
	jmp	.L413
	.p2align 4,,7
.L425:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	6152(%rbx), %eax
	jmp	.L415
	.p2align 4,,7
.L421:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6152(%rbx), %rax
	jmp	.L409
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui11PopStyleVarEi.constprop.160;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11PopStyleVarEi.constprop.160
_ZN5ImGui11PopStyleVarEi.constprop.160:
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
	movq	GImGui(%rip), %rsi
	movslq	6152(%rsi), %rax
	testl	%eax, %eax
	jle	.L438
.L432:
	leaq	0(,%rax,4), %rdx
	salq	$4, %rax
	subq	%rdx, %rax
	movq	6160(%rsi), %rdx
	leaq	-12(%rdx,%rax), %rdi
	movslq	(%rdi), %rbx
	cmpl	$11, %ebx
	ja	.L439
.L433:
	leaq	_ZL13GStyleVarInfo(%rip), %rax
	leaq	(%rax,%rbx,8), %rdx
	movl	(%rax,%rbx,8), %eax
	cmpl	$1, %eax
	je	.L434
	cmpl	$2, %eax
	je	.L435
	testl	%eax, %eax
	je	.L440
.L436:
	movl	6152(%rsi), %eax
	testl	%eax, %eax
	jle	.L441
.L437:
	decl	%eax
	movl	%eax, 6152(%rsi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L440:
	movl	4(%rdx), %eax
	movl	4(%rdi), %ecx
	movq	GImGui(%rip), %rdx
	movl	%ecx, 5120(%rdx,%rax)
	movl	6152(%rsi), %eax
	testl	%eax, %eax
	jg	.L437
.L441:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6152(%rsi), %eax
	decl	%eax
	movl	%eax, 6152(%rsi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L439:
	leaq	.LC15(%rip), %rdx
	leaq	.LC27(%rip), %rcx
	movl	$4761, %r8d
	call	_assert
	jmp	.L433
	.p2align 4,,7
.L434:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	4(%rdi), %xmm0
	movss	%xmm0, 5120(%rdx,%rax)
	jmp	.L436
	.p2align 4,,7
.L435:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	8(%rdi), %xmm0
	movss	4(%rdi), %xmm1
	leaq	5120(%rdx,%rax), %rax
	movss	%xmm1, (%rax)
	movss	%xmm0, 4(%rax)
	jmp	.L436
	.p2align 4,,7
.L438:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6152(%rsi), %rax
	jmp	.L432
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii
_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii:
.LFB700:
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
	jge	.L448
.L443:
	movq	16(%rsi), %rax
	movslq	%ebx, %rbx
	movzwl	(%rax,%rbx,2), %eax
	cmpw	$10, %ax
	je	.L447
	movq	GImGui(%rip), %rcx
	movzwl	%ax, %r8d
	movq	5936(%rcx), %rdx
	cmpl	32(%rdx), %r8d
	jl	.L449
	movss	72(%rdx), %xmm1
.L446:
	movss	5944(%rcx), %xmm0
	divss	(%rdx), %xmm0
	mulss	%xmm1, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L449:
	movq	40(%rdx), %r8
	movss	(%r8,%rax,4), %xmm1
	jmp	.L446
	.p2align 4,,7
.L447:
	movss	.LC20(%rip), %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L448:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L443
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP18ImGuiTextEditStatei;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP18ImGuiTextEditStatei
_ZN8ImGuiStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP18ImGuiTextEditStatei:
.LFB705:
	pushq	%r12
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
	decl	%edx
	movq	%rcx, %rdi
	movl	%edx, %ebx
	js	.L451
	je	.L483
	movslq	%edx, %rsi
	movl	%edx, %ebp
	movabsq	$20895015895552, %r12
	addq	%rsi, %rsi
	jmp	.L454
	.p2align 4,,7
.L465:
	subq	$2, %rsi
	testl	%ebx, %ebx
	movl	%ebx, %ebp
	je	.L483
.L454:
	decl	%ebx
	cmpl	8(%rdi), %ebx
	jge	.L484
.L455:
	movq	16(%rdi), %rdx
	movl	$1, %eax
	movzwl	-2(%rdx,%rsi), %ecx
	cmpw	$44, %cx
	ja	.L456
	movq	%r12, %rax
	shrq	%cl, %rax
	andl	$1, %eax
	xorq	$1, %rax
	andl	$1, %eax
.L456:
	cmpw	$12288, %cx
	sete	%r8b
	cmpb	%al, %r8b
	jnb	.L457
	leal	-59(%rcx), %eax
	testw	$-33, %ax
	je	.L457
	leal	-123(%rcx), %eax
	cmpw	$2, %ax
	jbe	.L457
	cmpw	$93, %cx
	je	.L457
.L459:
	cmpl	$-1, %ebx
	jne	.L465
.L451:
	testl	%ebx, %ebx
	movl	$0, %eax
	cmovns	%ebx, %eax
.L486:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L483:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L457:
	cmpl	%ebp, 8(%rdi)
	jle	.L485
.L460:
	movzwl	(%rdx,%rsi), %ecx
	movl	$1, %eax
	cmpw	$44, %cx
	ja	.L461
	movq	%r12, %rax
	shrq	%cl, %rax
	andl	$1, %eax
	xorq	$1, %rax
	andl	$1, %eax
.L461:
	cmpw	$12288, %cx
	sete	%dl
	cmpb	%al, %dl
	jnb	.L459
	leal	-59(%rcx), %eax
	testw	$-33, %ax
	je	.L459
	leal	-123(%rcx), %eax
	cmpw	$2, %ax
	jbe	.L459
	cmpw	$93, %cx
	je	.L459
	movl	%ebp, %ebx
	movl	$0, %eax
	testl	%ebx, %ebx
	cmovns	%ebx, %eax
	jmp	.L486
	.p2align 4,,7
.L484:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L455
	.p2align 4,,7
.L485:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	16(%rdi), %rdx
	jmp	.L460
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL31STB_TEXTEDIT_MOVEWORDRIGHT_IMPLEP18ImGuiTextEditStatei;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL31STB_TEXTEDIT_MOVEWORDRIGHT_IMPLEP18ImGuiTextEditStatei
_ZN8ImGuiStbL31STB_TEXTEDIT_MOVEWORDRIGHT_IMPLEP18ImGuiTextEditStatei:
.LFB706:
	pushq	%r12
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
	movl	60(%rcx), %edi
	leal	1(%rdx), %ebx
	movq	%rcx, %rsi
	cmpl	%edi, %ebx
	jl	.L518
.L489:
	cmpl	%ebx, %edi
	movl	%ebx, %eax
	cmovle	%edi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L518:
	testl	%ebx, %ebx
	jle	.L489
	movslq	%ebx, %rbp
	leal	-1(%rbx), %eax
	movabsq	$20895015895552, %r12
	addq	%rbp, %rbp
	cmpl	%eax, 8(%rsi)
	jle	.L519
	.p2align 4,,7
.L490:
	movq	16(%rsi), %rax
	movl	$1, %r8d
	movzwl	-2(%rax,%rbp), %ecx
	cmpw	$44, %cx
	ja	.L491
	movq	%r12, %r8
	shrq	%cl, %r8
	andl	$1, %r8d
	xorq	$1, %r8
	andl	$1, %r8d
.L491:
	cmpw	$12288, %cx
	sete	%dl
	cmpb	%r8b, %dl
	jnb	.L492
	leal	-59(%rcx), %edx
	testw	$-33, %dx
	je	.L492
	leal	-123(%rcx), %edx
	cmpw	$2, %dx
	jbe	.L492
	cmpw	$93, %cx
	je	.L492
.L494:
	incl	%ebx
	cmpl	%ebx, %edi
	je	.L520
	addq	$2, %rbp
	leal	-1(%rbx), %eax
	cmpl	%eax, 8(%rsi)
	jg	.L490
.L519:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L490
	.p2align 4,,7
.L492:
	cmpl	%ebx, 8(%rsi)
	jle	.L521
.L495:
	movzwl	(%rax,%rbp), %ecx
	movl	$1, %edx
	cmpw	$44, %cx
	ja	.L496
	movq	%r12, %rdx
	shrq	%cl, %rdx
	andl	$1, %edx
	xorq	$1, %rdx
	andl	$1, %edx
.L496:
	cmpw	$12288, %cx
	sete	%al
	cmpb	%dl, %al
	jnb	.L494
	leal	-59(%rcx), %eax
	testw	$-33, %ax
	je	.L494
	leal	-123(%rcx), %eax
	cmpw	$2, %ax
	jbe	.L494
	cmpw	$93, %cx
	jne	.L489
	jmp	.L494
	.p2align 4,,7
.L521:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	16(%rsi), %rax
	jmp	.L495
.L520:
	movl	%edi, %ebx
	jmp	.L489
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.33;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.33
_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.33:
.LFB6088:
	.seh_endprologue
	movq	GImGui(%rip), %r11
	movslq	%r8d, %r8
	movslq	%r9d, %r9
	leaq	(%rdx,%r8,2), %r10
	leaq	(%rdx,%r9,2), %r9
	movss	5944(%r11), %xmm3
	cmpq	%r9, %r10
	jbe	.L537
	movzwl	(%r9), %edx
	leaq	2(%r9), %rax
	xorps	%xmm2, %xmm2
	cmpl	$10, %edx
	movq	%rdx, %r8
	je	.L524
	xorps	%xmm2, %xmm2
	movq	5936(%r11), %r11
	movaps	%xmm2, %xmm0
	movss	(%r11), %xmm5
.L527:
	cmpl	$13, %edx
	je	.L529
	cmpl	32(%r11), %edx
	jge	.L530
	movq	40(%r11), %rdx
	movss	(%rdx,%r8,4), %xmm1
.L531:
	movaps	%xmm3, %xmm4
	divss	%xmm5, %xmm4
	mulss	%xmm4, %xmm1
	addss	%xmm1, %xmm0
.L529:
	cmpq	%rax, %r10
	jbe	.L526
	addq	$2, %rax
	movzwl	-2(%rax), %edx
	cmpl	$10, %edx
	movq	%rdx, %r8
	jne	.L527
	ucomiss	%xmm0, %xmm2
	jnb	.L524
	movaps	%xmm2, %xmm5
	movaps	%xmm3, %xmm1
	maxss	%xmm0, %xmm5
	addss	%xmm2, %xmm1
	movaps	%xmm5, %xmm0
.L528:
	ucomiss	%xmm2, %xmm1
	jp	.L540
	je	.L523
.L540:
	subq	%r9, %rax
	shrq	%rax
	movq	%rax, %rdx
.L535:
	movl	$0x00000000, (%rcx)
	movss	%xmm0, 4(%rcx)
	movl	$0x00000000, 12(%rcx)
	movss	%xmm1, 8(%rcx)
	movl	%edx, 20(%rcx)
	movss	%xmm1, 16(%rcx)
	ret
	.p2align 4,,7
.L530:
	movss	72(%r11), %xmm1
	jmp	.L531
	.p2align 4,,7
.L524:
	movaps	%xmm3, %xmm1
	movaps	%xmm2, %xmm0
	addss	%xmm2, %xmm1
	jmp	.L528
	.p2align 4,,7
.L537:
	xorps	%xmm0, %xmm0
	movq	%r9, %rax
	movaps	%xmm0, %xmm1
.L523:
	subq	%r9, %rax
	shrq	%rax
	movq	%rax, %rdx
.L533:
	addss	%xmm3, %xmm1
	jmp	.L535
	.p2align 4,,7
.L526:
	ucomiss	%xmm2, %xmm0
	jbe	.L549
	subq	%r9, %rax
	movaps	%xmm2, %xmm1
	shrq	%rax
	movq	%rax, %rdx
	jmp	.L533
.L549:
	movq	%rax, %rdx
	movaps	%xmm2, %xmm1
	subq	%r9, %rdx
	shrq	%rdx
	ucomiss	%xmm2, %xmm0
	movaps	%xmm2, %xmm0
	ja	.L533
	jmp	.L523
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN8ImGuiStbL25stb_textedit_find_charposEPNS_12StbFindStateEP18ImGuiTextEditStateii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL25stb_textedit_find_charposEPNS_12StbFindStateEP18ImGuiTextEditStateii
_ZN8ImGuiStbL25stb_textedit_find_charposEPNS_12StbFindStateEP18ImGuiTextEditStateii:
.LFB712:
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
	jne	.L551
	testl	%r9d, %r9d
	je	.L552
	movq	16(%rdx), %rdx
	leaq	32(%rsp), %rcx
	xorl	%r9d, %r9d
	call	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.33
	movss	48(%rsp), %xmm0
	movl	$0x00000000, 4(%rbx)
	subss	44(%rsp), %xmm0
	movl	$0, 12(%rbx)
	movl	%ebp, 16(%rbx)
	movss	%xmm0, 8(%rbx)
	movss	36(%rsp), %xmm0
	movss	%xmm0, (%rbx)
	jmp	.L550
.L552:
	leaq	32(%rsp), %r12
	movl	$0x00000000, 4(%rcx)
	movl	$0x00000000, (%rcx)
	movl	$0x3f800000, 8(%rcx)
	xorl	%esi, %esi
	xorl	%eax, %eax
.L555:
	cmpl	%ebp, %esi
	jge	.L554
	movq	16(%rdi), %rdx
	movl	60(%rdi), %r8d
	movl	%esi, %r9d
	movq	%r12, %rcx
	call	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.33
	movl	%esi, %eax
	addl	52(%rsp), %esi
	jmp	.L555
.L554:
	movl	%esi, 12(%rbx)
	movl	$0, 16(%rbx)
	movl	%eax, 20(%rbx)
	jmp	.L550
.L551:
	leaq	32(%rsp), %r13
	movl	$0x00000000, 4(%rcx)
	xorl	%esi, %esi
	xorl	%r12d, %r12d
.L557:
	movq	16(%rdi), %rdx
	movl	60(%rdi), %r8d
	movl	%esi, %r9d
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.33
	movl	52(%rsp), %eax
	leal	(%rsi,%rax), %edx
	cmpl	%edx, %ebp
	jl	.L556
	movss	4(%rbx), %xmm0
	movl	%esi, %r12d
	movl	%edx, %esi
	addss	40(%rsp), %xmm0
	movss	%xmm0, 4(%rbx)
	jmp	.L557
.L556:
	movss	48(%rsp), %xmm0
	movl	%r12d, 20(%rbx)
	subss	44(%rsp), %xmm0
	movl	%esi, 12(%rbx)
	xorl	%r12d, %r12d
	movl	%eax, 16(%rbx)
	movss	%xmm0, 8(%rbx)
	movss	32(%rsp), %xmm0
	movss	%xmm0, (%rbx)
.L559:
	leal	(%rsi,%r12), %eax
	cmpl	%eax, %ebp
	jle	.L550
	movl	%r12d, %r8d
	movl	%esi, %edx
	movq	%rdi, %rcx
	call	_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii
	addss	(%rbx), %xmm0
	incq	%r12
	movss	%xmm0, (%rbx)
	jmp	.L559
.L550:
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
	.def	_ZN8ImGuiStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi
_ZN8ImGuiStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi:
.LFB726:
	pushq	%r12
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
	movw	$99, 3188(%rcx)
	movw	$999, 3192(%rcx)
	movzwl	3186(%rcx), %ecx
	movl	%edx, %esi
	cmpw	$99, %cx
	je	.L578
.L562:
	cmpl	$999, %esi
	leaq	1188(%r12), %rdi
	leaq	12(%r12), %rbp
	jg	.L579
	.p2align 4,,7
.L576:
	movswl	3190(%r12), %edx
	movswq	3186(%r12), %r8
	movl	%edx, %eax
	addl	%esi, %edx
	cmpl	$999, %edx
	jle	.L568
	testw	%r8w, %r8w
	jle	.L577
	cmpw	$0, 8(%r12)
	js	.L571
	movswq	4(%r12), %rdx
	movq	%rdi, %rcx
	subl	%edx, %eax
	movq	%rdx, %rbx
	leaq	(%rdi,%rdx,2), %rdx
	movswq	%ax, %r8
	movw	%ax, 3190(%r12)
	addq	%r8, %r8
	call	memmove
	movzwl	3186(%r12), %r8d
	testw	%r8w, %r8w
	jle	.L571
	movswl	%r8w, %edx
	leaq	8(%r12), %rax
	decl	%edx
	leaq	0(,%rdx,4), %rcx
	salq	$4, %rdx
	subq	%rcx, %rdx
	leaq	20(%r12,%rdx), %rcx
	.p2align 4,,7
.L573:
	movzwl	(%rax), %edx
	testw	%dx, %dx
	js	.L572
	subl	%ebx, %edx
	movw	%dx, (%rax)
.L572:
	addq	$12, %rax
	cmpq	%rax, %rcx
	jne	.L573
.L571:
	decl	%r8d
	movq	%rbp, %rdx
	movq	%r12, %rcx
	movw	%r8w, 3186(%r12)
	movswq	%r8w, %r8
	leaq	0(,%r8,4), %rax
	salq	$4, %r8
	subq	%rax, %r8
	call	memmove
	jmp	.L576
.L577:
	jmp	.L577
	.p2align 4,,7
.L568:
	leal	1(%r8), %eax
	movw	%ax, 3186(%r12)
	leaq	0(,%r8,4), %rax
	salq	$4, %r8
	subq	%rax, %r8
	leaq	(%r12,%r8), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L578:
	cmpw	$0, 8(%r12)
	js	.L563
	movswq	4(%r12), %rdx
	movzwl	3190(%r12), %eax
	leaq	1188(%r12), %rcx
	subl	%edx, %eax
	movq	%rdx, %rbx
	leaq	(%rcx,%rdx,2), %rdx
	movswq	%ax, %r8
	movw	%ax, 3190(%r12)
	addq	%r8, %r8
	call	memmove
	movzwl	3186(%r12), %ecx
	testw	%cx, %cx
	jle	.L563
	movswl	%cx, %edx
	leaq	8(%r12), %rax
	decl	%edx
	leaq	0(,%rdx,4), %r8
	salq	$4, %rdx
	subq	%r8, %rdx
	leaq	20(%r12,%rdx), %r8
	.p2align 4,,7
.L565:
	movzwl	(%rax), %edx
	testw	%dx, %dx
	js	.L564
	subl	%ebx, %edx
	movw	%dx, (%rax)
.L564:
	addq	$12, %rax
	cmpq	%r8, %rax
	jne	.L565
.L563:
	leal	-1(%rcx), %eax
	leaq	12(%r12), %rdx
	movw	%ax, 3186(%r12)
	movswq	%ax, %rax
	leaq	0(,%rax,4), %rcx
	salq	$4, %rax
	movq	%rax, %r8
	subq	%rcx, %r8
	movq	%r12, %rcx
	call	memmove
	jmp	.L562
.L579:
	xorl	%eax, %eax
	movw	$0, 3186(%r12)
	movw	$0, 3190(%r12)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17AddWindowSettingsPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17AddWindowSettingsPKc
_ZL17AddWindowSettingsPKc:
.LFB405:
	pushq	%r12
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
	movq	%rcx, %rdi
	movl	6112(%rbx), %eax
	movq	%rbx, %rbp
	leal	1(%rax), %esi
	movl	6116(%rbx), %eax
	cmpl	%eax, %esi
	jle	.L581
	testl	%eax, %eax
	movl	$8, %edx
	je	.L582
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L582:
	cmpl	%edx, %esi
	jge	.L590
	cmpl	%edx, %eax
	jl	.L595
	movq	%rbx, %rbp
.L581:
	movl	%esi, 6112(%rbx)
	movslq	6112(%rbp), %rax
	movq	%rbp, %r12
	testl	%eax, %eax
	jle	.L596
.L587:
	movq	6120(%rbp), %rdx
	salq	$5, %rax
	movq	%rdi, %rcx
	leaq	-32(%rdx,%rax), %rbx
	call	strlen
	leaq	1(%rax), %rsi
	incl	844(%r12)
	movq	%rsi, %rcx
	call	*232(%r12)
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	memcpy
	xorl	%edx, %edx
	movq	%rax, (%rbx)
	movq	%rdi, %rcx
	call	_Z6ImHashPKvij.constprop.164
	movl	%eax, 8(%rbx)
	movq	%rbx, %rax
	movb	$0, 28(%rbx)
	movl	$0x7f7fffff, 12(%rbx)
	movl	$0x7f7fffff, 16(%rbx)
	movl	$0x00000000, 20(%rbx)
	movl	$0x00000000, 24(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L590:
	movl	%esi, %ebp
.L583:
	incl	844(%rbx)
	movslq	%ebp, %rcx
	salq	$5, %rcx
	call	*232(%rbx)
	movq	6120(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L584
	movslq	6112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$5, %r8
	call	memcpy
	movq	6120(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L586
	decl	844(%rax)
.L586:
	call	*240(%rax)
	movl	%ebp, 6116(%rbx)
	movq	%r12, 6120(%rbx)
	movq	GImGui(%rip), %rbp
	jmp	.L581
	.p2align 4,,7
.L584:
	movq	GImGui(%rip), %rax
	jmp	.L586
	.p2align 4,,7
.L596:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movq	GImGui(%rip), %r12
	movslq	6112(%rbp), %rax
	jmp	.L587
.L595:
	movl	%edx, %ebp
	jmp	.L583
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL21stb_text_locate_coordEP18ImGuiTextEditStateff;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL21stb_text_locate_coordEP18ImGuiTextEditStateff
_ZN8ImGuiStbL21stb_text_locate_coordEP18ImGuiTextEditStateff:
.LFB709:
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
	xorps	%xmm6, %xmm6
	movq	%rcx, %rsi
	movaps	%xmm1, %xmm8
	movl	60(%rcx), %edi
	movaps	%xmm2, %xmm7
	movss	%xmm6, 52(%rsp)
	movl	$0, 68(%rsp)
	movss	%xmm6, 48(%rsp)
	testl	%edi, %edi
	movss	%xmm6, 64(%rsp)
	movss	%xmm6, 60(%rsp)
	jle	.L616
	movl	%edi, %r8d
	xorl	%ebx, %ebx
	leaq	48(%rsp), %rbp
	jmp	.L601
	.p2align 4,,7
.L625:
	testl	%ebx, %ebx
	jne	.L599
	movss	60(%rsp), %xmm0
	addss	%xmm6, %xmm0
	ucomiss	%xmm7, %xmm0
	ja	.L615
.L599:
	movss	64(%rsp), %xmm0
	addss	%xmm6, %xmm0
	ucomiss	%xmm7, %xmm0
	ja	.L600
	addl	%edx, %ebx
	addss	56(%rsp), %xmm6
	cmpl	%edi, %ebx
	jge	.L616
	movl	60(%rsi), %r8d
.L601:
	movq	16(%rsi), %rdx
	movl	%ebx, %r9d
	movq	%rbp, %rcx
	call	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.33
	movl	68(%rsp), %edx
	testl	%edx, %edx
	jg	.L625
.L616:
	movl	%edi, %eax
.L622:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L600:
	movss	48(%rsp), %xmm6
	movl	%ebx, %eax
	ucomiss	%xmm8, %xmm6
	ja	.L622
	movss	52(%rsp), %xmm0
	ucomiss	%xmm8, %xmm0
	jbe	.L602
	movslq	%ebx, %rbp
	xorl	%edi, %edi
	addq	%rbp, %rbp
	movss	.LC20(%rip), %xmm7
	jmp	.L610
	.p2align 4,,7
.L628:
	movq	40(%rcx), %r9
	movss	(%r9,%rdx,4), %xmm1
.L607:
	movss	5944(%r8), %xmm0
	divss	(%rcx), %xmm0
	mulss	%xmm1, %xmm0
.L605:
	movaps	%xmm0, %xmm1
	addss	%xmm6, %xmm1
	ucomiss	%xmm8, %xmm1
	ja	.L626
	movl	68(%rsp), %edx
	incl	%edi
	addq	$2, %rbp
	cmpl	%edi, %edx
	jle	.L602
	movaps	%xmm1, %xmm6
.L610:
	leal	(%rbx,%rdi), %eax
	cmpl	%eax, 8(%rsi)
	jle	.L627
.L604:
	movq	16(%rsi), %rdx
	movaps	%xmm7, %xmm0
	movzwl	(%rdx,%rbp), %edx
	cmpw	$10, %dx
	je	.L605
	movq	GImGui(%rip), %r8
	movzwl	%dx, %r9d
	movq	5936(%r8), %rcx
	cmpl	32(%rcx), %r9d
	jl	.L628
	movss	72(%rcx), %xmm1
	jmp	.L607
	.p2align 4,,7
.L602:
	leal	(%rbx,%rdx), %eax
	leal	-1(%rax), %edi
	cmpl	8(%rsi), %edi
	jge	.L629
.L611:
	movq	16(%rsi), %rdx
	movslq	%edi, %rdi
	cmpw	$10, (%rdx,%rdi,2)
	sete	%dl
	movzbl	%dl, %edx
	subl	%edx, %eax
	jmp	.L622
	.p2align 4,,7
.L627:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	movl	%eax, 44(%rsp)
	call	_assert
	movl	44(%rsp), %eax
	jmp	.L604
	.p2align 4,,7
.L615:
	xorl	%eax, %eax
	jmp	.L622
.L626:
	mulss	.LC29(%rip), %xmm0
	leal	1(%rax), %edx
	addss	%xmm6, %xmm0
	ucomiss	%xmm8, %xmm0
	cmovbe	%edx, %eax
	jmp	.L622
.L629:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$857, %r8d
	call	_assert
	movl	68(%rsp), %eax
	addl	%ebx, %eax
	jmp	.L611
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii
_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii:
.LFB714:
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
	movq	%rcx, %rsi
	movzwl	3210(%rdx), %ecx
	movq	%rdx, %r14
	movslq	%r8d, %rbx
	movl	%r9d, %edi
	movw	$99, 3212(%rdx)
	movw	$999, 3216(%rdx)
	cmpw	$99, %cx
	je	.L674
.L631:
	cmpl	$999, %edi
	leaq	1212(%r14), %rbp
	leaq	36(%r14), %r13
	leaq	24(%r14), %r12
	jg	.L675
	.p2align 4,,7
.L672:
	movswl	3214(%r14), %ecx
	movswq	3210(%r14), %r8
	leal	(%rdi,%rcx), %eax
	movl	%ecx, %edx
	cmpl	$999, %eax
	jle	.L637
	testw	%r8w, %r8w
	jle	.L673
	cmpw	$0, 32(%r14)
	js	.L640
	movswq	28(%r14), %rax
	movq	%rbp, %rcx
	subl	%eax, %edx
	movq	%rax, %r15
	movw	%dx, 3214(%r14)
	movswq	%dx, %r8
	leaq	0(%rbp,%rax,2), %rdx
	addq	%r8, %r8
	call	memmove
	movzwl	3210(%r14), %r8d
	testw	%r8w, %r8w
	jle	.L640
	movswl	%r8w, %edx
	leaq	32(%r14), %rax
	decl	%edx
	leaq	0(,%rdx,4), %rcx
	salq	$4, %rdx
	subq	%rcx, %rdx
	leaq	44(%r14,%rdx), %rcx
	.p2align 4,,7
.L642:
	movzwl	(%rax), %edx
	testw	%dx, %dx
	js	.L641
	subl	%r15d, %edx
	movw	%dx, (%rax)
.L641:
	addq	$12, %rax
	cmpq	%rcx, %rax
	jne	.L642
.L640:
	decl	%r8d
	movq	%r13, %rdx
	movq	%r12, %rcx
	movw	%r8w, 3210(%r14)
	movswq	%r8w, %r8
	leaq	0(,%r8,4), %rax
	salq	$4, %r8
	subq	%rax, %r8
	call	memmove
	jmp	.L672
.L673:
	jmp	.L673
	.p2align 4,,7
.L637:
	leal	1(%r8), %eax
	movw	%ax, 3210(%r14)
	leaq	0(,%r8,4), %rax
	salq	$4, %r8
	subq	%rax, %r8
	testl	%edi, %edi
	leaq	(%r14,%r8), %rax
	movl	%ebx, 24(%rax)
	movw	%di, 28(%rax)
	movw	$0, 30(%rax)
	je	.L676
	movw	%cx, 32(%rax)
	addl	%edi, %edx
	movslq	%ecx, %rcx
	testl	%edi, %edi
	movw	%dx, 3214(%r14)
	leaq	1212(%r14,%rcx,2), %rax
	jle	.L677
	movslq	%ebx, %rbx
	movq	%rbx, %rdx
	movq	%rbx, %rbp
	leaq	(%rbx,%rbx), %r12
	negq	%rdx
	leal	(%rdi,%rbx), %r15d
	leaq	(%rax,%rdx,2), %r13
	jmp	.L646
	.p2align 4,,7
.L645:
	movq	16(%rsi), %r9
	incl	%ebp
	movzwl	(%r9,%r12), %eax
	movw	%ax, 0(%r13,%r12)
	addq	$2, %r12
	cmpl	%ebp, %r15d
	je	.L636
.L646:
	cmpl	8(%rsi), %ebp
	jl	.L645
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$857, %r8d
	call	_assert
	jmp	.L645
.L675:
	movq	16(%rsi), %r9
	movw	$0, 3210(%r14)
	movw	$0, 3214(%r14)
.L636:
	leaq	(%r9,%rbx,2), %rcx
	movslq	%edi, %r12
	leaq	(%rcx,%r12,2), %r10
	movq	%rcx, %rdx
	testq	%r10, %r10
	setne	%bpl
	xorl	%r8d, %r8d
	.p2align 4,,7
.L647:
	cmpq	%rdx, %r10
	ja	.L658
	testb	%bpl, %bpl
	jne	.L648
.L658:
	movzwl	(%rdx), %eax
	testw	%ax, %ax
	je	.L648
	addq	$2, %rdx
	cmpl	$127, %eax
	jbe	.L678
	cmpl	$2047, %eax
	movl	$2, %r11d
	jbe	.L652
	leal	-56320(%rax), %r13d
	xorl	%r11d, %r11d
	cmpl	$1023, %r13d
	jbe	.L652
	subl	$55296, %eax
	cmpl	$1024, %eax
	sbbl	%r11d, %r11d
	notl	%r11d
	addl	$4, %r11d
.L652:
	addl	%r11d, %r8d
	cmpq	%rdx, %r10
	ja	.L658
	testb	%bpl, %bpl
	je	.L658
.L648:
	addq	%r12, %rbx
	subl	%r8d, 56(%rsi)
	subl	%edi, 60(%rsi)
	leaq	(%r9,%rbx,2), %rax
	leaq	2(%rax), %rdx
	movzwl	(%rax), %eax
	testw	%ax, %ax
	je	.L653
	.p2align 4,,7
.L654:
	addq	$2, %rcx
	addq	$2, %rdx
	movw	%ax, -2(%rcx)
	movzwl	-2(%rdx), %eax
	testw	%ax, %ax
	jne	.L654
.L653:
	movw	$0, (%rcx)
	movb	$0, 15(%r14)
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
.L678:
	incl	%r8d
	jmp	.L647
.L674:
	cmpw	$0, 32(%rdx)
	js	.L632
	movswq	28(%rdx), %rdx
	movzwl	3214(%r14), %eax
	leaq	1212(%r14), %rcx
	subl	%edx, %eax
	movq	%rdx, %rbp
	leaq	(%rcx,%rdx,2), %rdx
	movswq	%ax, %r8
	movw	%ax, 3214(%r14)
	addq	%r8, %r8
	call	memmove
	movzwl	3210(%r14), %ecx
	testw	%cx, %cx
	jle	.L632
	movswl	%cx, %edx
	leaq	32(%r14), %rax
	decl	%edx
	leaq	0(,%rdx,4), %r8
	salq	$4, %rdx
	subq	%r8, %rdx
	leaq	44(%r14,%rdx), %r8
	.p2align 4,,7
.L634:
	movzwl	(%rax), %edx
	testw	%dx, %dx
	js	.L633
	subl	%ebp, %edx
	movw	%dx, (%rax)
.L633:
	addq	$12, %rax
	cmpq	%r8, %rax
	jne	.L634
.L632:
	leal	-1(%rcx), %eax
	leaq	36(%r14), %rdx
	leaq	24(%r14), %rcx
	movw	%ax, 3210(%r14)
	movswq	%ax, %rax
	leaq	0(,%rax,4), %r8
	salq	$4, %rax
	subq	%r8, %rax
	movq	%rax, %r8
	call	memmove
	jmp	.L631
.L676:
	movw	$-1, 32(%rax)
	movq	16(%rsi), %r9
	jmp	.L636
.L677:
	movq	16(%rsi), %r9
	jmp	.L636
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE:
.LFB715:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbx
	movl	60(%rcx), %edx
	movl	4(%rbx), %r8d
	movl	8(%rbx), %eax
	cmpl	%eax, %r8d
	je	.L680
	cmpl	%r8d, %edx
	jge	.L681
	cmpl	%eax, %edx
	movl	%edx, 4(%rbx)
	movl	%edx, %r8d
	jl	.L692
	cmpl	%r8d, %eax
	je	.L695
.L683:
	cmpl	(%rbx), %edx
	jl	.L696
.L691:
	cmpl	%r8d, %eax
	.p2align 4,,3
	jle	.L686
	subl	%r8d, %eax
	movq	%rbx, %rdx
	movl	%eax, %r9d
	call	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii
	movl	4(%rbx), %eax
	movl	%eax, (%rbx)
	movl	%eax, 8(%rbx)
.L687:
	movb	$0, 15(%rbx)
.L679:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L681:
	cmpl	%eax, %edx
	jge	.L683
.L692:
	movl	%edx, %eax
	movl	%edx, 8(%rbx)
	cmpl	%r8d, %eax
	jne	.L683
.L695:
	movl	%eax, (%rbx)
	jmp	.L684
	.p2align 4,,7
.L686:
	movl	%r8d, %r9d
	movq	%rbx, %rdx
	movl	%eax, %r8d
	subl	%eax, %r9d
	call	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii
	movl	8(%rbx), %eax
	movl	%eax, (%rbx)
	movl	%eax, 4(%rbx)
	jmp	.L687
	.p2align 4,,7
.L680:
	movl	(%rbx), %eax
.L684:
	cmpl	%eax, %edx
	jge	.L679
	movl	%edx, (%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L696:
	movl	%edx, (%rbx)
	jmp	.L691
	.seh_endproc
	.p2align 4,,15
	.def	_ZL23AddWindowToSortedBufferR8ImVectorIP11ImGuiWindowES1_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL23AddWindowToSortedBufferR8ImVectorIP11ImGuiWindowES1_
_ZL23AddWindowToSortedBufferR8ImVectorIP11ImGuiWindowES1_:
.LFB410:
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
	movq	%rdx, %rsi
	movslq	(%rcx), %rdx
	movq	%rcx, %rbp
	cmpl	4(%rcx), %edx
	je	.L698
	movq	8(%rcx), %rax
	leal	1(%rdx), %r8d
.L699:
	cmpb	$0, 136(%rsi)
	movl	%r8d, 0(%rbp)
	movq	%rsi, (%rax,%rdx,8)
	je	.L697
	movl	280(%rsi), %edi
	cmpl	$1, %edi
	jle	.L706
	movq	288(%rsi), %rcx
	leaq	_ZL19ChildWindowComparerPKvS0_(%rip), %r9
	movslq	%edi, %rdx
	movl	$8, %r8d
	call	qsort
.L707:
	xorl	%ebx, %ebx
	jmp	.L711
	.p2align 4,,7
.L709:
	movq	288(%rsi), %rax
	movq	(%rax,%rbx,8), %rdx
	cmpb	$0, 136(%rdx)
	jne	.L714
.L710:
	incq	%rbx
	cmpl	%ebx, %edi
	jle	.L697
.L711:
	cmpl	%ebx, 280(%rsi)
	jg	.L709
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L709
	.p2align 4,,7
.L706:
	testl	%edi, %edi
	jg	.L707
.L697:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L714:
	movq	%rbp, %rcx
	call	_ZL23AddWindowToSortedBufferR8ImVectorIP11ImGuiWindowES1_
	jmp	.L710
	.p2align 4,,7
.L698:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L715
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %ebx
	jg	.L701
.L716:
	movq	8(%rbp), %rax
	jmp	.L699
	.p2align 4,,7
.L715:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %ebx
	jle	.L716
.L701:
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	salq	$3, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rbp), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L702
	movslq	0(%rbp), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rbp), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L704
	decl	844(%rax)
.L704:
	call	*240(%rax)
	movslq	0(%rbp), %rdx
	movq	%rdi, 8(%rbp)
	movq	%rdi, %rax
	movl	%ebx, 4(%rbp)
	leal	1(%rdx), %r8d
	jmp	.L699
.L702:
	movq	GImGui(%rip), %rax
	jmp	.L704
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii
_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii:
.LFB707:
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
	.seh_endprologue
	movq	16(%rcx), %r12
	movslq	%edx, %rdx
	movslq	%r8d, %rbp
	leaq	(%r12,%rdx,2), %r10
	leaq	(%r10,%rbp,2), %rbx
	movq	%r10, %r9
	testq	%rbx, %rbx
	setne	%dil
	xorl	%r11d, %r11d
	.p2align 4,,7
.L718:
	cmpq	%r9, %rbx
	ja	.L729
	testb	%dil, %dil
	jne	.L719
.L729:
	movzwl	(%r9), %eax
	testw	%ax, %ax
	je	.L719
	addq	$2, %r9
	cmpl	$127, %eax
	jbe	.L740
	cmpl	$2047, %eax
	movl	$2, %esi
	jbe	.L723
	leal	-56320(%rax), %r13d
	xorl	%esi, %esi
	cmpl	$1023, %r13d
	jbe	.L723
	subl	$55296, %eax
	cmpl	$1024, %eax
	sbbl	%esi, %esi
	notl	%esi
	addl	$4, %esi
.L723:
	addl	%esi, %r11d
	cmpq	%r9, %rbx
	ja	.L729
	testb	%dil, %dil
	je	.L729
.L719:
	addq	%rdx, %rbp
	subl	%r11d, 56(%rcx)
	subl	%r8d, 60(%rcx)
	leaq	(%r12,%rbp,2), %rax
	leaq	2(%rax), %rdx
	movzwl	(%rax), %eax
	testw	%ax, %ax
	je	.L724
	.p2align 4,,7
.L725:
	addq	$2, %r10
	addq	$2, %rdx
	movw	%ax, -2(%r10)
	movzwl	-2(%rdx), %eax
	testw	%ax, %ax
	jne	.L725
.L724:
	movw	$0, (%r10)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L740:
	incl	%r11d
	jmp	.L718
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui11GetColorU32Eif.constprop.162;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetColorU32Eif.constprop.162
_ZN5ImGui11GetColorU32Eif.constprop.162:
.LFB6176:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	xorps	%xmm1, %xmm1
	movslq	%ecx, %rax
	addq	$328, %rax
	salq	$4, %rax
	movss	5120(%rdx), %xmm0
	addq	%rdx, %rax
	movss	(%rax), %xmm4
	mulss	12(%rax), %xmm0
	movss	4(%rax), %xmm3
	movss	8(%rax), %xmm2
	xorl	%eax, %eax
	ucomiss	%xmm4, %xmm1
	ja	.L742
	ucomiss	.LC28(%rip), %xmm4
	movl	$255, %eax
	jbe	.L754
.L742:
	xorl	%edx, %edx
	ucomiss	%xmm3, %xmm1
	ja	.L743
	ucomiss	.LC28(%rip), %xmm3
	movl	$65280, %edx
	jbe	.L755
.L743:
	orl	%edx, %eax
	xorl	%edx, %edx
	ucomiss	%xmm2, %xmm1
	ja	.L744
	ucomiss	.LC28(%rip), %xmm2
	movl	$16711680, %edx
	jbe	.L756
.L744:
	orl	%eax, %edx
	ucomiss	%xmm0, %xmm1
	ja	.L752
.L757:
	ucomiss	.LC28(%rip), %xmm0
	movl	$-16777216, %eax
	ja	.L745
	mulss	.LC30(%rip), %xmm0
	addss	.LC29(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	sall	$24, %eax
.L745:
	orl	%edx, %eax
	ret
	.p2align 4,,7
.L756:
	mulss	.LC30(%rip), %xmm2
	addss	.LC29(%rip), %xmm2
	cvttss2si	%xmm2, %ecx
	sall	$16, %ecx
	movl	%ecx, %edx
	orl	%eax, %edx
	ucomiss	%xmm0, %xmm1
	jbe	.L757
.L752:
	xorl	%eax, %eax
	orl	%edx, %eax
	ret
	.p2align 4,,7
.L754:
	mulss	.LC30(%rip), %xmm4
	addss	.LC29(%rip), %xmm4
	cvttss2si	%xmm4, %eax
	jmp	.L742
	.p2align 4,,7
.L755:
	mulss	.LC30(%rip), %xmm3
	addss	.LC29(%rip), %xmm3
	cvttss2si	%xmm3, %ecx
	sall	$8, %ecx
	movl	%ecx, %edx
	jmp	.L743
	.seh_endproc
	.section	.text$_ZN10ImDrawListC1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN10ImDrawListC1Ev
	.def	_ZN10ImDrawListC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10ImDrawListC1Ev
_ZN10ImDrawListC1Ev:
.LFB122:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	$0, 4(%rcx)
	movl	$0, (%rcx)
	movq	%rcx, %rbx
	movq	$0, 8(%rcx)
	movl	$0, 20(%rcx)
	movl	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movl	$0, 36(%rcx)
	movl	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movl	$0, 84(%rcx)
	movl	$0, 80(%rcx)
	movq	$0, 88(%rcx)
	movl	$0, 100(%rcx)
	movl	$0, 96(%rcx)
	movq	$0, 104(%rcx)
	movl	$0, 116(%rcx)
	movl	$0, 112(%rcx)
	movq	$0, 120(%rcx)
	movl	$0, 140(%rcx)
	movl	$0, 136(%rcx)
	movq	$0, 144(%rcx)
	movq	$0, 48(%rcx)
.LEHB0:
	call	_ZN10ImDrawList5ClearEv
.LEHE0:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L767:
	movq	144(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L760
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L760:
	movq	120(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L761
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L761:
	movq	104(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L762
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L762:
	movq	88(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L763
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L763:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L764
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L764:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L765
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L765:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L766
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L766:
	movq	%rsi, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA122:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE122-.LLSDACSB122
.LLSDACSB122:
	.uleb128 .LEHB0-.LFB122
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L767-.LFB122
	.uleb128 0
	.uleb128 .LEHB1-.LFB122
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE122:
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
.LFB125:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZN10ImDrawList15ClearFreeMemoryEv
	movq	144(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L792
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L792:
	movq	120(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L831
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
	movq	104(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L825
.L793:
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L825:
	movq	88(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L827
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L827:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L828
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L828:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L829
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L829:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L791
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	movq	240(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	rex.W jmp *%rax
	.p2align 4,,7
.L831:
	movq	104(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L793
	jmp	.L825
	.p2align 4,,7
.L791:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA125:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE125-.LLSDACSB125
.LLSDACSB125:
.LLSDACSE125:
	.section	.text$_ZN10ImDrawListD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN18ImGuiTextEditStateD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN18ImGuiTextEditStateD1Ev
	.def	_ZN18ImGuiTextEditStateD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18ImGuiTextEditStateD1Ev
_ZN18ImGuiTextEditStateD1Ev:
.LFB267:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	48(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L833
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L833:
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L847
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L832
.L834:
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	movq	240(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	rex.W jmp *%rax
	.p2align 4,,7
.L847:
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L834
.L832:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA267:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE267-.LLSDACSB267
.LLSDACSB267:
.LLSDACSE267:
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
.LFB288:
	.seh_endprologue
	leaq	128(%rcx), %rax
	leaq	816(%rcx), %rdx
	.p2align 4,,7
.L849:
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L849
	movl	$0x3f800000, (%rcx)
	movl	$0x41000000, 4(%rcx)
	movl	$0x41000000, 8(%rcx)
	movl	$0x42000000, 12(%rcx)
	movl	$0x42000000, 16(%rcx)
	movl	$0x41100000, 20(%rcx)
	movl	$0x00000000, 24(%rcx)
	movl	$0x3f000000, 28(%rcx)
	movl	$0x00000000, 32(%rcx)
	movl	$0x40800000, 36(%rcx)
	movl	$0x40400000, 40(%rcx)
	movl	$0x00000000, 44(%rcx)
	movl	$0x41000000, 48(%rcx)
	movl	$0x40800000, 52(%rcx)
	movl	$0x40800000, 56(%rcx)
	movl	$0x40800000, 60(%rcx)
	movl	$0x00000000, 64(%rcx)
	movl	$0x00000000, 68(%rcx)
	movl	$0x41a80000, 72(%rcx)
	movl	$0x40c00000, 76(%rcx)
	movl	$0x41800000, 80(%rcx)
	movl	$0x41100000, 84(%rcx)
	movl	$0x41200000, 88(%rcx)
	movl	$0x00000000, 92(%rcx)
	movl	$0x3f000000, 96(%rcx)
	movl	$0x3f000000, 100(%rcx)
	movl	$0x41b00000, 104(%rcx)
	movl	$0x41b00000, 108(%rcx)
	movl	$0x40800000, 112(%rcx)
	movl	$0x40800000, 116(%rcx)
	movb	$1, 120(%rcx)
	movb	$1, 121(%rcx)
	movl	$0x3fa00000, 124(%rcx)
	movl	$0x3f666666, 128(%rcx)
	movl	$0x3f666666, 132(%rcx)
	movl	$0x3f666666, 136(%rcx)
	movl	$0x3f800000, 140(%rcx)
	movl	$0x3f19999a, 144(%rcx)
	movl	$0x3f19999a, 148(%rcx)
	movl	$0x3f19999a, 152(%rcx)
	movl	$0x3f800000, 156(%rcx)
	movl	$0x00000000, 160(%rcx)
	movl	$0x00000000, 164(%rcx)
	movl	$0x00000000, 168(%rcx)
	movl	$0x3f333333, 172(%rcx)
	movl	$0x00000000, 176(%rcx)
	movl	$0x00000000, 180(%rcx)
	movl	$0x00000000, 184(%rcx)
	movl	$0x00000000, 188(%rcx)
	movl	$0x3d4ccccd, 192(%rcx)
	movl	$0x3d4ccccd, 196(%rcx)
	movl	$0x3dcccccd, 200(%rcx)
	movl	$0x3f666666, 204(%rcx)
	movl	$0x3f333333, 208(%rcx)
	movl	$0x3f333333, 212(%rcx)
	movl	$0x3f333333, 216(%rcx)
	movl	$0x3f266666, 220(%rcx)
	movl	$0x00000000, 224(%rcx)
	movl	$0x00000000, 228(%rcx)
	movl	$0x00000000, 232(%rcx)
	movl	$0x00000000, 236(%rcx)
	movl	$0x3f4ccccd, 240(%rcx)
	movl	$0x3f4ccccd, 244(%rcx)
	movl	$0x3f4ccccd, 248(%rcx)
	movl	$0x3e99999a, 252(%rcx)
	movl	$0x3f666666, 256(%rcx)
	movl	$0x3f4ccccd, 260(%rcx)
	movl	$0x3f4ccccd, 264(%rcx)
	movl	$0x3ecccccd, 268(%rcx)
	movl	$0x3f666666, 272(%rcx)
	movl	$0x3f266666, 276(%rcx)
	movl	$0x3f266666, 280(%rcx)
	movl	$0x3ee66666, 284(%rcx)
	movl	$0x3e8a3d71, 288(%rcx)
	movl	$0x3e8a3d71, 292(%rcx)
	movl	$0x3f0a3d71, 296(%rcx)
	movl	$0x3f547ae1, 300(%rcx)
	movl	$0x3ecccccd, 304(%rcx)
	movl	$0x3ecccccd, 308(%rcx)
	movl	$0x3f4ccccd, 312(%rcx)
	movl	$0x3e4ccccd, 316(%rcx)
	movl	$0x3ea3d70a, 320(%rcx)
	movl	$0x3ea3d70a, 324(%rcx)
	movl	$0x3f2147ae, 328(%rcx)
	movl	$0x3f5eb852, 332(%rcx)
	movl	$0x3ecccccd, 336(%rcx)
	movl	$0x3ecccccd, 340(%rcx)
	movl	$0x3f0ccccd, 344(%rcx)
	movl	$0x3f4ccccd, 348(%rcx)
	movl	$0x3e4ccccd, 352(%rcx)
	movl	$0x3e800000, 356(%rcx)
	movl	$0x3e99999a, 360(%rcx)
	movl	$0x3f19999a, 364(%rcx)
	movl	$0x3ecccccd, 368(%rcx)
	movl	$0x3ecccccd, 372(%rcx)
	movl	$0x3f4ccccd, 376(%rcx)
	movl	$0x3e99999a, 380(%rcx)
	movl	$0x3ecccccd, 384(%rcx)
	movl	$0x3ecccccd, 388(%rcx)
	movl	$0x3f4ccccd, 392(%rcx)
	movl	$0x3ecccccd, 396(%rcx)
	movl	$0x3f4ccccd, 400(%rcx)
	movl	$0x3f000000, 404(%rcx)
	movl	$0x3f000000, 408(%rcx)
	movl	$0x3ecccccd, 412(%rcx)
	movl	$0x3e4ccccd, 416(%rcx)
	movl	$0x3e4ccccd, 420(%rcx)
	movl	$0x3e4ccccd, 424(%rcx)
	movl	$0x3f7d70a4, 428(%rcx)
	movl	$0x3f666666, 432(%rcx)
	movl	$0x3f666666, 436(%rcx)
	movl	$0x3f666666, 440(%rcx)
	movl	$0x3f000000, 444(%rcx)
	movl	$0x3f800000, 448(%rcx)
	movl	$0x3f800000, 452(%rcx)
	movl	$0x3f800000, 456(%rcx)
	movl	$0x3e99999a, 460(%rcx)
	movl	$0x3f4ccccd, 464(%rcx)
	movl	$0x3f000000, 468(%rcx)
	movl	$0x3f000000, 472(%rcx)
	movl	$0x3f800000, 476(%rcx)
	movl	$0x3f2b851f, 480(%rcx)
	movl	$0x3ecccccd, 484(%rcx)
	movl	$0x3ecccccd, 488(%rcx)
	movl	$0x3f19999a, 492(%rcx)
	movl	$0x3f2b851f, 496(%rcx)
	movl	$0x3ecccccd, 500(%rcx)
	movl	$0x3ecccccd, 504(%rcx)
	movl	$0x3f800000, 508(%rcx)
	movl	$0x3f4ccccd, 512(%rcx)
	movl	$0x3f000000, 516(%rcx)
	movl	$0x3f000000, 520(%rcx)
	movl	$0x3f800000, 524(%rcx)
	movl	$0x3ecccccd, 528(%rcx)
	movl	$0x3ecccccd, 532(%rcx)
	movl	$0x3f666666, 536(%rcx)
	movl	$0x3ee66666, 540(%rcx)
	movl	$0x3ee66666, 544(%rcx)
	movl	$0x3ee66666, 548(%rcx)
	movl	$0x3f666666, 552(%rcx)
	movl	$0x3f4ccccd, 556(%rcx)
	movl	$0x3f07ae14, 560(%rcx)
	movl	$0x3f07ae14, 564(%rcx)
	movl	$0x3f5eb852, 568(%rcx)
	movl	$0x3f4ccccd, 572(%rcx)
	movl	$0x3f000000, 576(%rcx)
	movl	$0x3f000000, 580(%rcx)
	movl	$0x3f000000, 584(%rcx)
	movl	$0x3f800000, 588(%rcx)
	movl	$0x3f333333, 592(%rcx)
	movl	$0x3f19999a, 596(%rcx)
	movl	$0x3f19999a, 600(%rcx)
	movl	$0x3f800000, 604(%rcx)
	movl	$0x3f666666, 608(%rcx)
	movl	$0x3f333333, 612(%rcx)
	movl	$0x3f333333, 616(%rcx)
	movl	$0x3f800000, 620(%rcx)
	movl	$0x3f800000, 624(%rcx)
	movl	$0x3f800000, 628(%rcx)
	movl	$0x3f800000, 632(%rcx)
	movl	$0x3e99999a, 636(%rcx)
	movl	$0x3f800000, 640(%rcx)
	movl	$0x3f800000, 644(%rcx)
	movl	$0x3f800000, 648(%rcx)
	movl	$0x3f19999a, 652(%rcx)
	movl	$0x3f800000, 656(%rcx)
	movl	$0x3f800000, 660(%rcx)
	movl	$0x3f800000, 664(%rcx)
	movl	$0x3f666666, 668(%rcx)
	movl	$0x3f000000, 672(%rcx)
	movl	$0x3f000000, 676(%rcx)
	movl	$0x3f666666, 680(%rcx)
	movl	$0x3f000000, 684(%rcx)
	movl	$0x3f333333, 688(%rcx)
	movl	$0x3f333333, 692(%rcx)
	movl	$0x3f666666, 696(%rcx)
	movl	$0x3f19999a, 700(%rcx)
	movl	$0x3f333333, 704(%rcx)
	movl	$0x3f333333, 708(%rcx)
	movl	$0x3f333333, 712(%rcx)
	movl	$0x3f800000, 716(%rcx)
	movl	$0x3f800000, 720(%rcx)
	movl	$0x3f800000, 724(%rcx)
	movl	$0x3f800000, 728(%rcx)
	movl	$0x3f800000, 732(%rcx)
	movl	$0x3f666666, 736(%rcx)
	movl	$0x3f333333, 740(%rcx)
	movl	$0x00000000, 744(%rcx)
	movl	$0x3f800000, 748(%rcx)
	movl	$0x3f666666, 752(%rcx)
	movl	$0x3f333333, 756(%rcx)
	movl	$0x00000000, 760(%rcx)
	movl	$0x3f800000, 764(%rcx)
	movl	$0x3f800000, 768(%rcx)
	movl	$0x3f19999a, 772(%rcx)
	movl	$0x00000000, 776(%rcx)
	movl	$0x3f800000, 780(%rcx)
	movl	$0x00000000, 784(%rcx)
	movl	$0x00000000, 788(%rcx)
	movl	$0x3f800000, 792(%rcx)
	movl	$0x3eb33333, 796(%rcx)
	movl	$0x3e4ccccd, 800(%rcx)
	movl	$0x3e4ccccd, 804(%rcx)
	movl	$0x3e4ccccd, 808(%rcx)
	movl	$0x3eb33333, 812(%rcx)
	ret
	.seh_endproc
	.globl	_ZN10ImGuiStyleC1Ev
	.def	_ZN10ImGuiStyleC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN10ImGuiStyleC1Ev,_ZN10ImGuiStyleC2Ev
	.section .rdata,"dr"
.LC67:
	.ascii "imgui.ini\0"
.LC68:
	.ascii "imgui_log.txt\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN7ImGuiIOC2Ev
	.def	_ZN7ImGuiIOC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN7ImGuiIOC2Ev
_ZN7ImGuiIOC2Ev:
.LFB291:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	xorl	%eax, %eax
	movaps	.LC69(%rip), %xmm0
	leaq	8(%rcx), %rdi
	movq	%rcx, %r8
	movq	$0, 876(%rcx)
	movq	$0, 884(%rcx)
	movq	$0, 892(%rcx)
	andq	$-8, %rdi
	movq	$0, 900(%rcx)
	movl	$0x00000000, 912(%rcx)
	movl	$0x00000000, 908(%rcx)
	movq	$0, 5104(%rcx)
	subq	%rdi, %rcx
	addl	$5112, %ecx
	shrl	$3, %ecx
	rep stosq
	leaq	.LC67(%rip), %rax
	movl	$0xbf800000, (%r8)
	movl	$0xbf800000, 4(%r8)
	movl	$0x3c888889, 8(%r8)
	movl	$0x40a00000, 12(%r8)
	movlps	%xmm0, 972(%r8)
	movq	%rax, 16(%r8)
	leaq	.LC68(%rip), %rax
	movl	$0x3f800000, 144(%r8)
	movq	$0, 152(%r8)
	movhps	%xmm0, 980(%r8)
	movq	%rax, 24(%r8)
	leaq	_ZL19GImDefaultFontAtlas(%rip), %rax
	movl	$0x3f800000, 160(%r8)
	movl	$0x3f800000, 164(%r8)
	movlps	%xmm0, 952(%r8)
	movq	%rax, 136(%r8)
	leaq	3060(%r8), %rax
	movl	$0xbf800000, 256(%r8)
	movl	$0xbf800000, 260(%r8)
	movhps	%xmm0, 960(%r8)
	andl	$15, %eax
	movl	$0xbf800000, 860(%r8)
	movl	$0xbf800000, 864(%r8)
	shrq	$2, %rax
	movl	$0x3e99999a, 32(%r8)
	negq	%rax
	movl	$0x40c00000, 36(%r8)
	movl	$0x40c00000, 40(%r8)
	andl	$3, %eax
	movl	$0xbf800000, 988(%r8)
	movl	$0xbf800000, 968(%r8)
	je	.L860
	cmpl	$1, %eax
	movl	$0xbf800000, 3060(%r8)
	movl	$0xbf800000, 1012(%r8)
	je	.L861
	cmpl	$2, %eax
	movl	$0xbf800000, 3064(%r8)
	movl	$0xbf800000, 1016(%r8)
	je	.L862
	movl	$0xbf800000, 3068(%r8)
	movl	$0xbf800000, 1020(%r8)
	movl	$509, %edi
	movl	$3, %r11d
.L853:
	movl	$512, %ebx
	movl	%eax, %edx
	movl	$127, %r10d
	subl	%eax, %ebx
	movl	$508, %esi
.L852:
	leaq	3060(,%rdx,4), %rax
	xorl	%ecx, %ecx
	leaq	(%r8,%rax), %r9
	leaq	-2048(%r8,%rax), %rdx
	.p2align 4,,7
.L854:
	addl	$4, %ecx
	prefetcht0	464(%r9)
	prefetcht0	464(%rdx)
	movaps	%xmm0, (%r9)
	addq	$64, %rdx
	addq	$64, %r9
	movlps	%xmm0, -64(%rdx)
	movhps	%xmm0, -56(%rdx)
	movaps	%xmm0, -48(%r9)
	movhps	%xmm0, -48(%rdx)
	movhps	%xmm0, -40(%rdx)
	movaps	%xmm0, -32(%r9)
	movhps	%xmm0, -32(%rdx)
	movhps	%xmm0, -24(%rdx)
	movaps	%xmm0, -16(%r9)
	movhps	%xmm0, -16(%rdx)
	movhps	%xmm0, -8(%rdx)
	cmpl	$124, %ecx
	jne	.L854
	xorl	%eax, %eax
	.p2align 4,,7
.L859:
	incl	%ecx
	movaps	%xmm0, (%r9,%rax)
	movlps	%xmm0, (%rdx,%rax)
	movhps	%xmm0, 8(%rdx,%rax)
	addq	$16, %rax
	cmpl	%r10d, %ecx
	jb	.L859
	addl	%esi, %r11d
	subl	%esi, %edi
	cmpl	%ebx, %esi
	je	.L856
	movslq	%r11d, %rax
	cmpl	$1, %edi
	leaq	(%r8,%rax,4), %rax
	movl	$0xbf800000, 3060(%rax)
	movl	$0xbf800000, 1012(%rax)
	leal	1(%r11), %eax
	je	.L856
	cltq
	addl	$2, %r11d
	cmpl	$2, %edi
	leaq	(%r8,%rax,4), %rax
	movl	$0xbf800000, 3060(%rax)
	movl	$0xbf800000, 1012(%rax)
	je	.L856
	movslq	%r11d, %r11
	leaq	(%r8,%r11,4), %rax
	movl	$0xbf800000, 3060(%rax)
	movl	$0xbf800000, 1012(%rax)
.L856:
	leaq	52(%r8), %rdi
	movl	%r8d, %edx
	movq	$-1, %rax
	movq	%rax, 44(%r8)
	movq	%rax, 112(%r8)
	andq	$-8, %rdi
	subl	%edi, %edx
	leal	120(%rdx), %ecx
	shrl	$3, %ecx
	rep stosq
	movq	.refptr.malloc(%rip), %rax
	movl	$0x3e800000, 120(%r8)
	movl	$0x3d4ccccd, 124(%r8)
	movq	$0, 128(%r8)
	movq	$0, 192(%r8)
	movq	$0, 216(%r8)
	movq	%rax, 224(%r8)
	movq	.refptr.free(%rip), %rax
	movq	%rax, 232(%r8)
	leaq	_ZL30GetClipboardTextFn_DefaultImplPv(%rip), %rax
	movq	%rax, 200(%r8)
	leaq	_ZL30SetClipboardTextFn_DefaultImplPvPKc(%rip), %rax
	movq	%rax, 208(%r8)
	leaq	_ZL34ImeSetInputScreenPosFn_DefaultImplii(%rip), %rax
	movq	%rax, 240(%r8)
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L860:
	movl	$512, %edi
	xorl	%r11d, %r11d
	movl	$512, %ebx
	xorl	%edx, %edx
	movl	$128, %r10d
	movl	$512, %esi
	jmp	.L852
	.p2align 4,,7
.L862:
	movl	$510, %edi
	movl	$2, %r11d
	jmp	.L853
	.p2align 4,,7
.L861:
	movl	$511, %edi
	movl	$1, %r11d
	jmp	.L853
	.seh_endproc
	.globl	_ZN7ImGuiIOC1Ev
	.def	_ZN7ImGuiIOC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN7ImGuiIOC1Ev,_ZN7ImGuiIOC2Ev
	.section .rdata,"dr"
.LC74:
	.ascii "##Overlay\0"
	.section	.text$_ZN12ImGuiContextC1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiContextC1Ev
	.def	_ZN12ImGuiContextC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiContextC1Ev
_ZN12ImGuiContextC1Ev:
.LFB275:
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
	leaq	8(%rcx), %rcx
	leaq	6392(%rbx), %rbp
	leaq	6336(%rbx), %r13
	call	_ZN7ImGuiIOC1Ev
	leaq	5120(%rbx), %rcx
	call	_ZN10ImGuiStyleC1Ev
	movl	$0x00000000, 5956(%rbx)
	movl	$0x00000000, 5952(%rbx)
	movq	%rbp, %rcx
	movl	$0, 5980(%rbx)
	movl	$0, 5976(%rbx)
	movq	$0, 5984(%rbx)
	movl	$0, 5996(%rbx)
	movl	$0, 5992(%rbx)
	movq	$0, 6000(%rbx)
	movl	$0, 6020(%rbx)
	movl	$0, 6016(%rbx)
	movq	$0, 6024(%rbx)
	movl	$0x00000000, 6084(%rbx)
	movl	$0x00000000, 6080(%rbx)
	movl	$0, 6116(%rbx)
	movl	$0, 6112(%rbx)
	movq	$0, 6120(%rbx)
	movl	$0, 6140(%rbx)
	movl	$0, 6136(%rbx)
	movq	$0, 6144(%rbx)
	movl	$0, 6156(%rbx)
	movl	$0, 6152(%rbx)
	movq	$0, 6160(%rbx)
	movl	$0, 6172(%rbx)
	movl	$0, 6168(%rbx)
	movq	$0, 6176(%rbx)
	movl	$0, 6188(%rbx)
	movl	$0, 6184(%rbx)
	movq	$0, 6192(%rbx)
	movl	$0, 6204(%rbx)
	movl	$0, 6200(%rbx)
	movq	$0, 6208(%rbx)
	movl	$0x00000000, 6220(%rbx)
	movl	$0x00000000, 6216(%rbx)
	movl	$0x00000000, 6228(%rbx)
	movl	$0x00000000, 6224(%rbx)
	movl	$0x00000000, 6236(%rbx)
	movl	$0x00000000, 6232(%rbx)
	movl	$0x7f7fffff, 6260(%rbx)
	movl	$0x7f7fffff, 6264(%rbx)
	movl	$0xff7fffff, 6268(%rbx)
	movl	$0xff7fffff, 6272(%rbx)
	movb	$0, 6304(%rbx)
	movq	$0, 6312(%rbx)
	movl	$0, 6328(%rbx)
	movl	$0, 6324(%rbx)
	movl	$0, 6320(%rbx)
	movl	$0, 6340(%rbx)
	movl	$0, 6336(%rbx)
	movq	$0, 6344(%rbx)
	movl	$0, 6356(%rbx)
	movl	$0, 6352(%rbx)
	movq	$0, 6360(%rbx)
	movl	$0, 6372(%rbx)
	movl	$0, 6368(%rbx)
	movq	$0, 6376(%rbx)
.LEHB2:
	call	_ZN10ImDrawListC1Ev
.LEHE2:
	leaq	6912(%rbx), %r12
	leaq	6920(%rbx), %rdi
	xorl	%eax, %eax
	movl	$0x00000000, 6556(%rbx)
	movl	$0x00000000, 6552(%rbx)
	leaq	10216(%rbx), %rdx
	andq	$-8, %rdi
	movq	%r12, %rcx
	movl	$0x00000000, 6564(%rbx)
	subq	%rdi, %rcx
	movl	$0x00000000, 6560(%rbx)
	movl	$0x00000000, 6572(%rbx)
	addl	$3304, %ecx
	movl	$0x00000000, 6568(%rbx)
	movl	$0x00000000, 6580(%rbx)
	shrl	$3, %ecx
	movl	$0x00000000, 6576(%rbx)
	movl	$0x00000000, 6588(%rbx)
	movl	$0x00000000, 6584(%rbx)
	movl	$0x00000000, 6596(%rbx)
	leaq	6548(%rbx), %rsi
	movl	$0x00000000, 6592(%rbx)
	movl	$0x00000000, 6608(%rbx)
	movl	$0x00000000, 6604(%rbx)
	movl	$0x00000000, 6616(%rbx)
	movl	$0x00000000, 6612(%rbx)
	movl	$0x00000000, 6624(%rbx)
	movl	$0x00000000, 6620(%rbx)
	movl	$0x00000000, 6632(%rbx)
	movl	$0x00000000, 6628(%rbx)
	movl	$0x00000000, 6640(%rbx)
	movl	$0x00000000, 6636(%rbx)
	movl	$0x00000000, 6648(%rbx)
	movl	$0x00000000, 6644(%rbx)
	movl	$0x00000000, 6660(%rbx)
	movl	$0x00000000, 6656(%rbx)
	movl	$0x00000000, 6668(%rbx)
	movl	$0x00000000, 6664(%rbx)
	movl	$0x00000000, 6676(%rbx)
	movl	$0x00000000, 6672(%rbx)
	movl	$0x00000000, 6684(%rbx)
	movl	$0x00000000, 6680(%rbx)
	movl	$0x00000000, 6692(%rbx)
	movl	$0x00000000, 6688(%rbx)
	movl	$0x00000000, 6700(%rbx)
	movl	$0x00000000, 6696(%rbx)
	movl	$0x00000000, 6712(%rbx)
	movl	$0x00000000, 6708(%rbx)
	movl	$0x00000000, 6720(%rbx)
	movl	$0x00000000, 6716(%rbx)
	movl	$0x00000000, 6728(%rbx)
	movl	$0x00000000, 6724(%rbx)
	movl	$0x00000000, 6736(%rbx)
	movl	$0x00000000, 6732(%rbx)
	movl	$0x00000000, 6744(%rbx)
	movl	$0x00000000, 6740(%rbx)
	movl	$0x00000000, 6752(%rbx)
	movl	$0x00000000, 6748(%rbx)
	movl	$0x00000000, 6764(%rbx)
	movl	$0x00000000, 6760(%rbx)
	movl	$0x00000000, 6772(%rbx)
	movl	$0x00000000, 6768(%rbx)
	movl	$0x00000000, 6780(%rbx)
	movl	$0x00000000, 6776(%rbx)
	movl	$0x00000000, 6788(%rbx)
	movl	$0x00000000, 6784(%rbx)
	movl	$0x00000000, 6796(%rbx)
	movl	$0x00000000, 6792(%rbx)
	movl	$0x00000000, 6804(%rbx)
	movl	$0x00000000, 6800(%rbx)
	movl	$0x00000000, 6816(%rbx)
	movl	$0x00000000, 6812(%rbx)
	movl	$0x00000000, 6824(%rbx)
	movl	$0x00000000, 6820(%rbx)
	movl	$0x00000000, 6832(%rbx)
	movl	$0x00000000, 6828(%rbx)
	movl	$0x00000000, 6840(%rbx)
	movl	$0x00000000, 6836(%rbx)
	movl	$0x00000000, 6848(%rbx)
	movl	$0x00000000, 6844(%rbx)
	movl	$0x00000000, 6856(%rbx)
	movl	$0x00000000, 6852(%rbx)
	movl	$0x00000000, 6868(%rbx)
	movl	$0x00000000, 6864(%rbx)
	movl	$0x00000000, 6876(%rbx)
	movl	$0x00000000, 6872(%rbx)
	movl	$0x00000000, 6884(%rbx)
	movl	$0x00000000, 6880(%rbx)
	movl	$0x00000000, 6892(%rbx)
	movl	$0x00000000, 6888(%rbx)
	movl	$0x00000000, 6900(%rbx)
	movl	$0x00000000, 6896(%rbx)
	movl	$0x00000000, 6908(%rbx)
	movl	$0x00000000, 6904(%rbx)
	movq	$0, 6912(%rbx)
	movq	$0, 10208(%rbx)
	rep stosq
	movq	%rdx, %rcx
.LEHB3:
	call	_ZN6ImFontC1Ev
.LEHE3:
	leaq	10392(%rbx), %rdi
	pxor	%xmm0, %xmm0
	movl	%ebx, %edx
	movl	$0, 10340(%rbx)
	movl	$0, 10336(%rbx)
	andq	$-8, %rdi
	movq	$0, 10344(%rbx)
	movb	$0, (%rbx)
	subl	%edi, %edx
	movq	$0, 5936(%rbx)
	movl	$0x00000000, 5948(%rbx)
	leal	11408(%rdx), %ecx
	movl	$0x00000000, 5944(%rbx)
	movl	$0x00000000, 5952(%rbx)
	movl	$0x00000000, 5956(%rbx)
	movl	$0x00000000, 5960(%rbx)
	xorl	%eax, %eax
	movl	$0, 5964(%rbx)
	movl	$-1, 5972(%rbx)
	shrl	$3, %ecx
	movl	$-1, 5968(%rbx)
	movq	$0, 6008(%rbx)
	movq	$0, 6032(%rbx)
	movq	$0, 6040(%rbx)
	movq	$0, 6048(%rbx)
	movl	$0, 6056(%rbx)
	movb	$0, 6060(%rbx)
	movl	$0, 6064(%rbx)
	movl	$0, 6068(%rbx)
	movl	$0, 6072(%rbx)
	movb	$0, 6076(%rbx)
	movb	$0, 6077(%rbx)
	movb	$0, 6078(%rbx)
	movl	$0xbf800000, 6080(%rbx)
	movl	$0xbf800000, 6084(%rbx)
	movq	$0, 6088(%rbx)
	movq	$0, 6096(%rbx)
	movl	$0, 6104(%rbx)
	movl	$0x00000000, 6128(%rbx)
	movl	$0x00000000, 6216(%rbx)
	movl	$0x00000000, 6220(%rbx)
	movl	$0x00000000, 6224(%rbx)
	movups	%xmm0, 6244(%rbx)
	movl	$0x00000000, 6228(%rbx)
	movb	$0, 6240(%rbx)
	movaps	.LC71(%rip), %xmm0
	movq	$0, 6280(%rbx)
	movq	$0, 6288(%rbx)
	movaps	.LC72(%rip), %xmm1
	movb	$0, 6296(%rbx)
	movb	$0, 6297(%rbx)
	movaps	.LC73(%rip), %xmm2
	movb	$0, 6298(%rbx)
	movl	$0, 6300(%rbx)
	movlps	%xmm0, 6260(%rbx)
	movl	$0, 10328(%rbx)
	movq	$0, 10352(%rbx)
	movhps	%xmm0, 6268(%rbx)
	movq	$0, 10376(%rbx)
	movq	$0, 10384(%rbx)
	movhps	%xmm1, 10360(%rbx)
	movq	$0, 11400(%rbx)
	movlps	%xmm2, 10368(%rbx)
	rep stosq
	movl	$0xbf800000, 11424(%rbx)
	leaq	8(%rsi), %rdi
	movl	$0xbf800000, 11428(%rbx)
	movq	$0, 11408(%rbx)
	movq	11424(%rbx), %rdx
	andq	$-8, %rdi
	movl	$0x00000000, 6384(%rbx)
	movl	$0, 6544(%rbx)
	movq	$0, 6548(%rbx)
	movq	%rdx, 11416(%rbx)
	leaq	.LC74(%rip), %rdx
	movq	%rdx, 6440(%rbx)
	movq	$0, 356(%rsi)
	subq	%rdi, %rsi
	leal	364(%rsi), %ecx
	movl	%ebx, %edx
	shrl	$3, %ecx
	rep stosq
	leaq	11472(%rbx), %rdi
	movb	$0, 11432(%rbx)
	movq	$0, 11440(%rbx)
	movq	$0, 11448(%rbx)
	movl	$0, 11456(%rbx)
	andq	$-8, %rdi
	movl	$2, 11460(%rbx)
	movq	$0, 11464(%rbx)
	subl	%edi, %edx
	movq	$0, 11936(%rbx)
	leal	11944(%rdx), %ecx
	shrl	$3, %ecx
	rep stosq
	leaq	11968(%rbx), %rdi
	movl	$0, 11944(%rbx)
	movl	$0x00000000, 11948(%rbx)
	movl	$-1, 11956(%rbx)
	movl	$-1, 11952(%rbx)
	andq	$-8, %rdi
	movq	$0, 11960(%rbx)
	movq	$0, 15025(%rbx)
	subl	%edi, %ebx
	leal	15033(%rbx), %ecx
	shrl	$3, %ecx
	rep stosq
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L889:
	movq	%rax, %rdi
.L874:
	leaq	6384(%rbx), %rsi
.L921:
	cmpq	%rsi, %r13
	je	.L922
	subq	$16, %rsi
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L921
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
	jmp	.L921
.L890:
	movq	%r12, %rcx
	movq	%rax, %rdi
	call	_ZN18ImGuiTextEditStateD1Ev
	movq	%rbp, %rcx
	call	_ZN10ImDrawListD1Ev
	jmp	.L874
.L922:
	movq	6208(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L877
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L877:
	movq	6192(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L881
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L881:
	movq	6176(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L882
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L882:
	movq	6160(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L883
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L883:
	movq	6144(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L884
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L884:
	movq	6120(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L885
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L885:
	movq	6024(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L886
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L886:
	movq	6000(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L887
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L887:
	movq	5984(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L888
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L888:
	movq	%rdi, %rcx
.LEHB4:
	call	_Unwind_Resume
	nop
.LEHE4:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA275:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE275-.LLSDACSB275
.LLSDACSB275:
	.uleb128 .LEHB2-.LFB275
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L889-.LFB275
	.uleb128 0
	.uleb128 .LEHB3-.LFB275
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L890-.LFB275
	.uleb128 0
	.uleb128 .LEHB4-.LFB275
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE275:
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
.LFB293:
	.seh_endprologue
	cmpw	$0, 794(%rcx)
	leaq	796(%rcx), %rax
	je	.L927
	xorl	%r8d, %r8d
	jmp	.L925
	.p2align 4,,7
.L928:
	movl	%r9d, %r8d
.L925:
	addq	$2, %rax
	leal	1(%r8), %r9d
	cmpw	$0, -2(%rax)
	jne	.L928
	addl	$2, %r8d
	cmpl	$15, %r9d
	jg	.L923
.L924:
	movslq	%r9d, %r9
	movslq	%r8d, %r8
	movw	%dx, 794(%rcx,%r9,2)
	movw	$0, 794(%rcx,%r8,2)
.L923:
	rep ret
.L927:
	movl	$1, %r8d
	xorl	%r9d, %r9d
	jmp	.L924
	.seh_endproc
	.p2align 4,,15
	.globl	_Z19ImIsPointInTriangleRK6ImVec2S1_S1_S1_
	.def	_Z19ImIsPointInTriangleRK6ImVec2S1_S1_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z19ImIsPointInTriangleRK6ImVec2S1_S1_S1_
_Z19ImIsPointInTriangleRK6ImVec2S1_S1_S1_:
.LFB295:
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
	movss	(%rcx), %xmm3
	movss	4(%r8), %xmm8
	movaps	%xmm3, %xmm5
	movaps	%xmm8, %xmm4
	movss	(%r9), %xmm1
	movss	4(%r9), %xmm0
	subss	%xmm1, %xmm5
	subss	%xmm0, %xmm4
	movss	(%r8), %xmm9
	movss	4(%rcx), %xmm2
	movaps	%xmm2, %xmm10
	movss	4(%rdx), %xmm7
	movss	(%rdx), %xmm6
	mulss	%xmm5, %xmm4
	movaps	%xmm9, %xmm5
	subss	%xmm0, %xmm10
	subss	%xmm1, %xmm5
	subss	%xmm7, %xmm0
	subss	%xmm6, %xmm1
	mulss	%xmm10, %xmm5
	movaps	%xmm3, %xmm10
	subss	%xmm6, %xmm3
	subss	%xmm9, %xmm10
	subss	%xmm5, %xmm4
	xorps	%xmm5, %xmm5
	mulss	%xmm3, %xmm0
	ucomiss	%xmm4, %xmm5
	movaps	%xmm7, %xmm4
	subss	%xmm8, %xmm4
	seta	%dl
	mulss	%xmm10, %xmm4
	movaps	%xmm2, %xmm10
	subss	%xmm7, %xmm2
	movaps	16(%rsp), %xmm7
	subss	%xmm8, %xmm10
	movaps	%xmm6, %xmm8
	movaps	(%rsp), %xmm6
	subss	%xmm9, %xmm8
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
	sete	%cl
	ucomiss	%xmm0, %xmm5
	seta	%al
	cmpb	%dl, %al
	sete	%al
	andl	%ecx, %eax
	addq	$88, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9ImStricmpPKcS0_
	.def	_Z9ImStricmpPKcS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9ImStricmpPKcS0_
_Z9ImStricmpPKcS0_:
.LFB296:
	pushq	%r12
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
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	jmp	.L932
	.p2align 4,,7
.L939:
	testb	%bpl, %bpl
	je	.L931
	incq	%rdi
	incq	%rsi
.L932:
	movsbl	(%rsi), %ecx
	call	*%r12
	movsbl	(%rdi), %ecx
	movl	%eax, %ebx
	movl	%ecx, %ebp
	call	*%r12
	subl	%eax, %ebx
	movl	%ebx, %eax
	je	.L939
.L931:
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
.LFB297:
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
	movq	%rcx, %r12
	movq	%rdx, %r13
	jle	.L943
	leal	-1(%r8), %ebp
	movq	__imp_toupper(%rip), %rdi
	xorl	%ebx, %ebx
	incq	%rbp
	.p2align 4,,7
.L942:
	movsbl	0(%r13,%rbx), %ecx
	call	*%rdi
	movsbl	(%r12,%rbx), %ecx
	movl	%eax, %esi
	movl	%ecx, %r14d
	call	*%rdi
	subl	%eax, %esi
	movl	%esi, %eax
	jne	.L941
	testb	%r14b, %r14b
	jne	.L948
.L941:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L948:
	incq	%rbx
	cmpq	%rbx, %rbp
	jne	.L942
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L943:
	xorl	%eax, %eax
	jmp	.L941
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9ImStrncpyPcPKci
	.def	_Z9ImStrncpyPcPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9ImStrncpyPcPKci
_Z9ImStrncpyPcPKci:
.LFB298:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testl	%r8d, %r8d
	movq	%rcx, %rsi
	jle	.L949
	movslq	%r8d, %rbx
	movq	%rbx, %r8
	call	strncpy
	movb	$0, -1(%rsi,%rbx)
.L949:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z8ImStrdupPKc
	.def	_Z8ImStrdupPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8ImStrdupPKc
_Z8ImStrdupPKc:
.LFB299:
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
	incl	844(%rax)
	call	*232(%rax)
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	memcpy
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9ImStrlenWPKt
	.def	_Z9ImStrlenWPKt;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9ImStrlenWPKt
_Z9ImStrlenWPKt:
.LFB300:
	.seh_endprologue
	xorl	%eax, %eax
	cmpw	$0, (%rcx)
	leaq	2(%rcx), %rdx
	je	.L955
	.p2align 4,,7
.L954:
	addq	$2, %rdx
	incl	%eax
	cmpw	$0, -2(%rdx)
	jne	.L954
	rep ret
.L955:
	rep ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9ImStrbolWPKtS0_
	.def	_Z9ImStrbolWPKtS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9ImStrbolWPKtS0_
_Z9ImStrbolWPKtS0_:
.LFB301:
	.seh_endprologue
	cmpq	%rdx, %rcx
	movq	%rcx, %rax
	jbe	.L958
	cmpw	$10, -2(%rcx)
	jne	.L960
	jmp	.L962
	.p2align 4,,7
.L961:
	cmpw	$10, -2(%rax)
	je	.L958
.L960:
	subq	$2, %rax
	cmpq	%rax, %rdx
	jb	.L961
.L958:
	rep ret
.L962:
	.p2align 4,,4
	rep ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9ImStristrPKcS0_S0_S0_
	.def	_Z9ImStristrPKcS0_S0_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9ImStristrPKcS0_S0_S0_
_Z9ImStristrPKcS0_S0_S0_:
.LFB302:
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
	testq	%r9, %r9
	movq	%rcx, %rbp
	movq	%rdx, %r14
	movq	%r8, %rbx
	movq	%r9, %r12
	je	.L978
.L964:
	movsbl	(%rbx), %ecx
	movq	__imp_toupper(%rip), %rsi
	call	*%rsi
	leaq	1(%rbx), %rdx
	movsbl	%al, %eax
	movl	%eax, 36(%rsp)
	movq	%rdx, 40(%rsp)
	jmp	.L971
	.p2align 4,,7
.L968:
	movq	%r13, %rbp
.L971:
	testq	%r14, %r14
	je	.L979
	cmpq	%r14, %rbp
	jnb	.L973
	movsbl	0(%rbp), %ecx
.L967:
	call	*%rsi
	cmpl	36(%rsp), %eax
	leaq	1(%rbp), %r13
	jne	.L968
	movq	40(%rsp), %rax
	movq	%r13, %r15
	cmpq	%rax, %r12
	movq	%rax, %rbx
	ja	.L970
	jmp	.L969
	.p2align 4,,7
.L980:
	incq	%rbx
	incq	%r15
	cmpq	%rbx, %r12
	je	.L976
.L970:
	movsbl	(%r15), %ecx
	call	*%rsi
	movsbl	(%rbx), %ecx
	movl	%eax, %edi
	call	*%rsi
	cmpl	%eax, %edi
	je	.L980
.L969:
	cmpq	%rbx, %r12
	jne	.L968
	.p2align 4,,7
.L976:
	movq	%rbp, %rax
	jmp	.L966
	.p2align 4,,7
.L979:
	movsbl	0(%rbp), %ecx
	testb	%cl, %cl
	jne	.L967
.L973:
	xorl	%eax, %eax
.L966:
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
.L978:
	movq	%r8, %rcx
	call	strlen
	leaq	(%rbx,%rax), %r12
	jmp	.L964
	.seh_endproc
	.section .rdata,"dr"
.LC75:
	.ascii "buf_size > 0\0"
	.text
	.p2align 4,,15
	.globl	_Z14ImFormatStringPciPKcz
	.def	_Z14ImFormatStringPciPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14ImFormatStringPciPKcz
_Z14ImFormatStringPciPKcz:
.LFB303:
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
	movq	%r9, 104(%rsp)
	jle	.L989
.L982:
	leaq	104(%rsp), %r9
	movslq	%ebx, %rdx
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	%r9, 40(%rsp)
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L985
	cmpl	%eax, %ebx
	jle	.L985
	movslq	%eax, %rdx
	movb	$0, (%rsi,%rdx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L985:
	leal	-1(%rbx), %eax
	movslq	%eax, %rdx
	movb	$0, (%rsi,%rdx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L989:
	leaq	.LC15(%rip), %rdx
	leaq	.LC75(%rip), %rcx
	movl	$973, %r8d
	call	_assert
	jmp	.L982
	.seh_endproc
	.p2align 4,,15
	.globl	_Z15ImFormatStringVPciPKcS_
	.def	_Z15ImFormatStringVPciPKcS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15ImFormatStringVPciPKcS_
_Z15ImFormatStringVPciPKcS_:
.LFB304:
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
	jle	.L998
.L991:
	movslq	%ebx, %rdx
	movq	%rdi, %r8
	movq	%rsi, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L994
	cmpl	%eax, %ebx
	jle	.L994
	movslq	%eax, %rdx
	movb	$0, (%rsi,%rdx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L994:
	leal	-1(%rbx), %eax
	movslq	%eax, %rdx
	movb	$0, (%rsi,%rdx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L998:
	leaq	.LC15(%rip), %rdx
	leaq	.LC75(%rip), %rcx
	movl	$986, %r8d
	movq	%r9, 40(%rsp)
	call	_assert
	movq	40(%rsp), %r9
	jmp	.L991
	.seh_endproc
	.p2align 4,,15
	.globl	_Z6ImHashPKvij
	.def	_Z6ImHashPKvij;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6ImHashPKvij
_Z6ImHashPKvij:
.LFB305:
	subq	$40, %rsp
	.seh_stackalloc	40
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	.seh_endprologue
	leaq	_ZZ6ImHashPKvijE9crc32_lut(%rip), %r10
	movl	4+_ZZ6ImHashPKvijE9crc32_lut(%rip), %eax
	testl	%eax, %eax
	jne	.L1000
	pxor	%xmm3, %xmm3
	leaq	1024+_ZZ6ImHashPKvijE9crc32_lut(%rip), %r9
	movq	%r10, %rax
	movdqa	.LC23(%rip), %xmm6
	movdqa	.LC24(%rip), %xmm7
	movdqa	.LC25(%rip), %xmm5
	movdqa	.LC26(%rip), %xmm4
	.p2align 4,,7
.L1001:
	movdqa	%xmm6, %xmm0
	movdqa	%xmm3, %xmm2
	movdqa	%xmm6, %xmm1
	addq	$16, %rax
	paddd	%xmm7, %xmm6
	pand	%xmm5, %xmm0
	psrld	$1, %xmm1
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pand	%xmm4, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm5, %xmm1
	psubd	%xmm1, %xmm2
	pand	%xmm4, %xmm2
	movdqa	%xmm3, %xmm1
	pxor	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	psrld	$1, %xmm2
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm1
	pand	%xmm4, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pand	%xmm4, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm5, %xmm1
	psubd	%xmm1, %xmm2
	pand	%xmm4, %xmm2
	movdqa	%xmm3, %xmm1
	pxor	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	psrld	$1, %xmm2
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm1
	pand	%xmm4, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pand	%xmm4, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm5, %xmm1
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	pand	%xmm4, %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%r9, %rax
	jne	.L1001
.L1000:
	movl	%r8d, %eax
	testl	%edx, %edx
	leal	-1(%rdx), %r8d
	notl	%eax
	jle	.L1019
	movslq	%r8d, %r8
	leaq	1(%rcx,%r8), %r8
	.p2align 4,,7
.L1005:
	incq	%rcx
	movl	%eax, %edx
	xorb	-1(%rcx), %al
	shrl	$8, %edx
	movzbl	%al, %eax
	xorl	(%r10,%rax,4), %edx
	cmpq	%r8, %rcx
	movl	%edx, %eax
	jne	.L1005
.L1003:
	movaps	(%rsp), %xmm6
	notl	%eax
	movaps	16(%rsp), %xmm7
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L1019:
	movzbl	(%rcx), %edx
	movl	%eax, %r9d
	leaq	1(%rcx), %r8
	testb	%dl, %dl
	jne	.L1007
	jmp	.L1003
	.p2align 4,,7
.L1006:
	movl	%eax, %ecx
	incq	%r8
	xorl	%edx, %eax
	movzbl	%al, %eax
	movzbl	-1(%r8), %edx
	shrl	$8, %ecx
	xorl	(%r10,%rax,4), %ecx
	testb	%dl, %dl
	movl	%ecx, %eax
	je	.L1003
.L1007:
	cmpb	$35, %dl
	jne	.L1006
	cmpb	$35, (%r8)
	jne	.L1006
	cmpb	$35, 1(%r8)
	cmove	%r9d, %eax
	jmp	.L1006
	.seh_endproc
	.align 2
	.p2align 4,,15
	.def	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157:
.LFB6181:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movslq	496(%rcx), %rax
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	testl	%eax, %eax
	jle	.L1023
.L1021:
	movq	504(%rbx), %rdx
	movq	%rsi, %rcx
	movl	-4(%rdx,%rax,4), %r8d
	xorl	%edx, %edx
	call	_Z6ImHashPKvij
	movq	GImGui(%rip), %rdx
	cmpl	6068(%rdx), %eax
	jne	.L1022
	movb	$1, 6076(%rdx)
.L1022:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L1023:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	496(%rbx), %rax
	jmp	.L1021
	.seh_endproc
	.p2align 4,,15
	.globl	_Z18ImTextCharFromUtf8PjPKcS1_
	.def	_Z18ImTextCharFromUtf8PjPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18ImTextCharFromUtf8PjPKcS1_
_Z18ImTextCharFromUtf8PjPKcS1_:
.LFB306:
	.seh_endprologue
	movzbl	(%rdx), %eax
	testb	%al, %al
	js	.L1025
	movl	%eax, (%rcx)
	movl	$1, %eax
	ret
	.p2align 4,,7
.L1025:
	movl	%eax, %r9d
	andl	$-32, %r9d
	cmpb	$-64, %r9b
	je	.L1068
	movl	%eax, %r9d
	andl	$-16, %r9d
	cmpb	$-32, %r9b
	je	.L1069
	andl	$-8, %eax
	cmpb	$-16, %al
	je	.L1070
	movl	$0, (%rcx)
	xorl	%eax, %eax
.L1026:
	rep ret
	.p2align 4,,7
.L1069:
	testq	%r8, %r8
	movl	$65533, (%rcx)
	je	.L1030
	subq	%rdx, %r8
	cmpq	$2, %r8
	jle	.L1031
.L1030:
	movzbl	(%rdx), %r8d
	movzbl	1(%rdx), %r9d
	cmpb	$-32, %r8b
	je	.L1071
	cmpb	$-19, %r8b
	je	.L1072
.L1035:
	movl	%r9d, %r10d
	movl	$3, %eax
	andl	$-64, %r10d
	cmpb	$-128, %r10b
	jne	.L1026
.L1033:
	movzbl	2(%rdx), %r10d
	movl	$3, %eax
	movl	%r10d, %edx
	andl	$-64, %edx
	cmpb	$-128, %dl
	jne	.L1026
	movl	%r8d, %edx
	movl	%r10d, %r8d
	sall	$12, %edx
	andl	$63, %r8d
	andl	$61440, %edx
	addl	%r8d, %edx
	movl	%r9d, %r8d
	andl	$63, %r8d
	sall	$6, %r8d
	addl	%edx, %r8d
	movl	%r8d, (%rcx)
	ret
	.p2align 4,,7
.L1031:
	movl	$1, %eax
	ret
	.p2align 4,,7
.L1068:
	testq	%r8, %r8
	movl	$65533, (%rcx)
	je	.L1028
	subq	%rdx, %r8
	decq	%r8
	jle	.L1031
.L1028:
	movzbl	(%rdx), %r8d
	movl	$2, %eax
	cmpb	$-63, %r8b
	jbe	.L1026
	movzbl	1(%rdx), %edx
	movl	%edx, %r9d
	andl	$-64, %r9d
	cmpb	$-128, %r9b
	jne	.L1026
	andl	$31, %r8d
	andl	$63, %edx
	sall	$6, %r8d
	addl	%r8d, %edx
	movl	%edx, (%rcx)
	ret
	.p2align 4,,7
.L1070:
	testq	%r8, %r8
	movl	$65533, (%rcx)
	je	.L1037
	subq	%rdx, %r8
	cmpq	$3, %r8
	jle	.L1031
.L1037:
	movzbl	(%rdx), %r8d
	movl	$4, %eax
	cmpb	$-12, %r8b
	ja	.L1026
	cmpb	$-16, %r8b
	movzbl	1(%rdx), %r9d
	je	.L1073
	cmpb	$-12, %r8b
	je	.L1074
.L1041:
	movl	%r9d, %r10d
	movl	$4, %eax
	andl	$-64, %r10d
	cmpb	$-128, %r10b
	jne	.L1026
.L1039:
	movzbl	2(%rdx), %r11d
	movl	$4, %eax
	movl	%r11d, %r10d
	andl	$-64, %r10d
	cmpb	$-128, %r10b
	jne	.L1026
	movzbl	3(%rdx), %r10d
	movl	%r10d, %edx
	andl	$-64, %edx
	cmpb	$-128, %dl
	jne	.L1026
	movl	%r8d, %edx
	movl	%r11d, %r8d
	andl	$63, %r10d
	andl	$7, %edx
	andl	$63, %r8d
	sall	$6, %r8d
	sall	$18, %edx
	addl	%r8d, %edx
	leal	(%rdx,%r10), %r8d
	movl	%r9d, %edx
	andl	$63, %edx
	sall	$12, %edx
	addl	%r8d, %edx
	movl	%edx, %r8d
	andl	$-2048, %r8d
	cmpl	$55296, %r8d
	je	.L1026
	movl	%edx, (%rcx)
	ret
	.p2align 4,,7
.L1071:
	leal	96(%r9), %r10d
	movl	$3, %eax
	cmpb	$31, %r10b
	jbe	.L1033
	rep ret
	.p2align 4,,7
.L1072:
	cmpb	$-97, %r9b
	movl	$3, %eax
	jbe	.L1035
	.p2align 4,,2
	rep ret
.L1073:
	leal	112(%r9), %r10d
	cmpb	$47, %r10b
	jbe	.L1039
	.p2align 4,,3
	rep ret
.L1074:
	cmpb	$-113, %r9b
	jbe	.L1041
	.p2align 4,,7
	rep ret
	.seh_endproc
	.p2align 4,,15
	.def	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.167;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.167
_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.167:
.LFB6171:
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
	movq	%rcx, %rbp
	movq	%r8, %rbx
	leaq	-2(%rcx,%rdx,2), %rsi
	movq	%r9, %r12
	movq	%rcx, %r13
	cmpq	%rsi, %rcx
	jnb	.L1084
	cmpb	$0, (%r8)
	je	.L1084
	leaq	44(%rsp), %rdi
	jmp	.L1078
	.p2align 4,,7
.L1090:
	cmpl	$65535, %eax
	ja	.L1080
	movw	%ax, 0(%r13)
	addq	$2, %r13
.L1080:
	cmpq	%rsi, %r13
	jnb	.L1079
	cmpb	$0, (%rbx)
	je	.L1079
.L1078:
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	.L1090
.L1079:
	movq	%r13, %rax
	subq	%rbp, %rax
	shrq	%rax
.L1076:
	testq	%r12, %r12
	movw	$0, 0(%r13)
	je	.L1082
	movq	%rbx, (%r12)
.L1082:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L1084:
	xorl	%eax, %eax
	jmp	.L1076
	.seh_endproc
	.p2align 4,,15
	.def	_ZL30SetClipboardTextFn_DefaultImplPvPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL30SetClipboardTextFn_DefaultImplPvPKc
_ZL30SetClipboardTextFn_DefaultImplPvPKc:
.LFB5783:
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
	xorl	%ecx, %ecx
	movq	%rdx, %rbp
	call	*__imp_OpenClipboard(%rip)
	testl	%eax, %eax
	jne	.L1104
.L1091:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L1104:
	cmpb	$0, 0(%rbp)
	je	.L1099
	movq	%rbp, %rbx
	xorl	%esi, %esi
	leaq	44(%rsp), %rdi
	jmp	.L1097
	.p2align 4,,7
.L1105:
	cmpl	$65536, %eax
	adcl	$0, %esi
	cmpb	$0, (%rbx)
	je	.L1095
.L1097:
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	.L1105
.L1095:
	incl	%esi
	movslq	%esi, %rdx
	addq	%rdx, %rdx
.L1094:
	movl	$2, %ecx
	call	*__imp_GlobalAlloc(%rip)
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1091
	movq	%rax, %rcx
	call	*__imp_GlobalLock(%rip)
	xorl	%r9d, %r9d
	movq	%rbp, %r8
	movl	%esi, %edx
	movq	%rax, %rcx
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.167
	movq	%rbx, %rcx
	call	*__imp_GlobalUnlock(%rip)
	call	*__imp_EmptyClipboard(%rip)
	movq	%rbx, %rdx
	movl	$13, %ecx
	call	*__imp_SetClipboardData(%rip)
	call	*__imp_CloseClipboard(%rip)
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L1099:
	movl	$2, %edx
	movl	$1, %esi
	jmp	.L1094
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN7ImGuiIO22AddInputCharactersUTF8EPKc
	.def	_ZN7ImGuiIO22AddInputCharactersUTF8EPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN7ImGuiIO22AddInputCharactersUTF8EPKc
_ZN7ImGuiIO22AddInputCharactersUTF8EPKc:
.LFB294:
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
	cmpb	$0, (%rdx)
	leaq	48(%rsp), %rsi
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movq	%rsi, %r13
	je	.L1107
	leaq	44(%rsp), %rbp
	leaq	32(%rsi), %r12
	jmp	.L1109
	.p2align 4,,7
.L1126:
	cmpl	$65535, %eax
	ja	.L1111
	movw	%ax, 0(%r13)
	addq	$2, %r13
.L1111:
	cmpq	%r12, %r13
	jnb	.L1107
	cmpb	$0, (%rbx)
	je	.L1107
.L1109:
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	.L1126
.L1107:
	leaq	34(%rsi), %r10
	movw	$0, 0(%r13)
	movq	%rsi, %r8
	.p2align 4,,7
.L1118:
	movzwl	(%r8), %r9d
	testw	%r9w, %r9w
	je	.L1106
	cmpw	$0, 794(%rdi)
	leaq	796(%rdi), %rax
	je	.L1120
	xorl	%edx, %edx
	jmp	.L1115
	.p2align 4,,7
.L1121:
	movl	%ecx, %edx
.L1115:
	addq	$2, %rax
	leal	1(%rdx), %ecx
	cmpw	$0, -2(%rax)
	jne	.L1121
	addl	$2, %edx
	cmpl	$15, %ecx
	jle	.L1114
.L1116:
	addq	$2, %r8
	cmpq	%r10, %r8
	jne	.L1118
.L1106:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L1120:
	movl	$1, %edx
	xorl	%ecx, %ecx
	.p2align 4,,7
.L1114:
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	movw	%r9w, 794(%rdi,%rcx,2)
	movw	$0, 794(%rdi,%rdx,2)
	jmp	.L1116
	.seh_endproc
	.p2align 4,,15
	.globl	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_
	.def	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_
_Z17ImTextStrFromUtf8PtiPKcS1_PS1_:
.LFB307:
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
	movq	160(%rsp), %r14
	movslq	%edx, %rdx
	movq	%rcx, %r13
	movq	%r8, %rbx
	leaq	-2(%rcx,%rdx,2), %rdi
	movq	%r9, %rsi
	cmpq	%rdi, %rcx
	jnb	.L1138
	testq	%r9, %r9
	setne	%r12b
	cmpq	%r9, %r8
	jb	.L1140
	testb	%r12b, %r12b
	jne	.L1138
.L1140:
	cmpb	$0, (%rbx)
	movq	%r13, %r15
	je	.L1139
	leaq	44(%rsp), %rbp
	jmp	.L1132
	.p2align 4,,7
.L1154:
	cmpl	$65535, %eax
	ja	.L1134
	movw	%ax, (%r15)
	addq	$2, %r15
.L1134:
	cmpq	%rdi, %r15
	jnb	.L1133
	cmpq	%rbx, %rsi
	ja	.L1131
	testb	%r12b, %r12b
	jne	.L1133
.L1131:
	cmpb	$0, (%rbx)
	.p2align 4,,2
	je	.L1133
.L1132:
	movq	%rbx, %rdx
	movq	%rsi, %r8
	movq	%rbp, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	.L1154
.L1133:
	movq	%r15, %rax
	subq	%r13, %rax
	shrq	%rax
.L1128:
	testq	%r14, %r14
	movw	$0, (%r15)
	je	.L1136
	movq	%rbx, (%r14)
.L1136:
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
.L1138:
	movq	%r13, %r15
	xorl	%eax, %eax
	jmp	.L1128
.L1139:
	xorl	%eax, %eax
	jmp	.L1128
	.seh_endproc
	.p2align 4,,15
	.globl	_Z24ImTextCountCharsFromUtf8PKcS0_
	.def	_Z24ImTextCountCharsFromUtf8PKcS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z24ImTextCountCharsFromUtf8PKcS0_
_Z24ImTextCountCharsFromUtf8PKcS0_:
.LFB308:
	pushq	%r12
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
	jb	.L1166
	testb	%r12b, %r12b
	jne	.L1156
.L1166:
	cmpb	$0, (%rbx)
	je	.L1156
	leaq	44(%rsp), %rbp
	jmp	.L1159
	.p2align 4,,7
.L1176:
	cmpl	$65536, %eax
	adcl	$0, %edi
	cmpq	%rbx, %rsi
	ja	.L1163
	testb	%r12b, %r12b
	jne	.L1156
.L1163:
	cmpb	$0, (%rbx)
	je	.L1156
.L1159:
	movq	%rbx, %rdx
	movq	%rsi, %r8
	movq	%rbp, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	.L1176
.L1156:
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
.LFB311:
	pushq	%rbp
	.seh_pushreg	%rbp
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
	leaq	-1(%rbx), %rdx
.L1178:
	cmpq	%rdx, %rax
	jnb	.L1179
.L1197:
	testq	%r9, %r9
	je	.L1190
	cmpq	%r9, %r8
	jnb	.L1179
.L1190:
	movzwl	(%r8), %r10d
	testw	%r10w, %r10w
	je	.L1179
	movzwl	%r10w, %r11d
	addq	$2, %r8
	cmpl	$127, %r11d
	ja	.L1181
	movb	%r10b, (%rax)
	incq	%rax
	cmpq	%rdx, %rax
	jb	.L1197
.L1179:
	movb	$0, (%rax)
	subq	%rcx, %rax
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L1181:
	movq	%rbx, %rsi
	subq	%rax, %rsi
	decl	%esi
	cmpl	$2047, %r11d
	ja	.L1183
	decl	%esi
	jle	.L1186
	shrl	$6, %r11d
	andl	$63, %r10d
	movl	$2, %edi
	subl	$64, %r11d
	addl	$-128, %r10d
	movb	%r11b, (%rax)
	movb	%r10b, 1(%rax)
.L1184:
	addq	%rdi, %rax
	jmp	.L1178
	.p2align 4,,7
.L1183:
	leal	-56320(%r11), %ebp
	xorl	%edi, %edi
	cmpl	$1023, %ebp
	jbe	.L1184
	leal	-55296(%r11), %ebp
	cmpl	$1023, %ebp
	ja	.L1185
	cmpl	$3, %esi
	jle	.L1184
	shrl	$6, %r11d
	andl	$63, %r10d
	movb	$-16, (%rax)
	andl	$63, %r11d
	addl	$-128, %r10d
	movb	$-115, 1(%rax)
	addl	$-128, %r11d
	movb	%r10b, 3(%rax)
	movl	$4, %edi
	movb	%r11b, 2(%rax)
	jmp	.L1184
	.p2align 4,,7
.L1185:
	cmpl	$2, %esi
	jle	.L1184
	movl	%r11d, %esi
	shrl	$6, %r11d
	andl	$63, %r10d
	shrl	$12, %esi
	andl	$63, %r11d
	addl	$-128, %r10d
	subl	$32, %esi
	addl	$-128, %r11d
	movb	%r10b, 2(%rax)
	movb	%sil, (%rax)
	movb	%r11b, 1(%rax)
	movl	$3, %edi
	jmp	.L1184
	.p2align 4,,7
.L1186:
	xorl	%edi, %edi
	jmp	.L1184
	.seh_endproc
	.p2align 4,,15
	.globl	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	.def	_Z27ImTextCountUtf8BytesFromStrPKtS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z27ImTextCountUtf8BytesFromStrPKtS0_
_Z27ImTextCountUtf8BytesFromStrPKtS0_:
.LFB312:
	.seh_endprologue
	testq	%rdx, %rdx
	setne	%r10b
	xorl	%eax, %eax
	.p2align 4,,7
.L1199:
	cmpq	%rdx, %rcx
	jb	.L1208
	testb	%r10b, %r10b
	jne	.L1200
.L1208:
	movzwl	(%rcx), %r8d
	testw	%r8w, %r8w
	je	.L1200
	addq	$2, %rcx
	cmpl	$127, %r8d
	jbe	.L1215
	cmpl	$2047, %r8d
	movl	$2, %r9d
	jbe	.L1204
	leal	-56320(%r8), %r11d
	xorl	%r9d, %r9d
	cmpl	$1023, %r11d
	jbe	.L1204
	subl	$55296, %r8d
	cmpl	$1024, %r8d
	sbbl	%r9d, %r9d
	notl	%r9d
	addl	$4, %r9d
.L1204:
	addl	%r9d, %eax
	cmpq	%rdx, %rcx
	jb	.L1208
	testb	%r10b, %r10b
	je	.L1208
.L1200:
	rep ret
	.p2align 4,,7
.L1215:
	incl	%eax
	.p2align 4,,6
	jmp	.L1199
	.seh_endproc
	.section .rdata,"dr"
.LC76:
	.ascii "pos <= text_len\0"
	.text
	.p2align 4,,15
	.def	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti:
.LFB708:
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
	movslq	60(%rcx), %rsi
	movq	%rcx, %rbx
	movl	%edx, %ebp
	movq	%r8, %r14
	movl	%r9d, %edi
	cmpl	%edx, %esi
	jl	.L1224
.L1217:
	leal	(%rsi,%rdi), %eax
	xorl	%r12d, %r12d
	cmpl	8(%rbx), %eax
	jl	.L1225
.L1218:
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
	.p2align 4,,7
.L1225:
	movslq	%edi, %r9
	movq	%r14, %rcx
	leaq	(%r9,%r9), %r13
	movq	%r9, 40(%rsp)
	leaq	(%r14,%r13), %rdx
	call	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	movl	%eax, %r15d
	movl	56(%rbx), %eax
	addl	%r15d, %eax
	cmpl	64(%rbx), %eax
	jge	.L1218
	cmpl	%ebp, %esi
	movq	16(%rbx), %rdx
	movq	40(%rsp), %r9
	je	.L1226
	movslq	%ebp, %rax
	subl	%ebp, %esi
	leaq	(%rdx,%rax,2), %r12
	addq	%rax, %r9
	movslq	%esi, %r8
	leaq	(%rdx,%r9,2), %rcx
	addq	%r8, %r8
	movq	%r12, %rdx
	call	memmove
	movq	%r12, %rcx
.L1220:
	movq	%r13, %r8
	movq	%r14, %rdx
	call	memcpy
	addl	60(%rbx), %edi
	addl	%r15d, 56(%rbx)
	movslq	%edi, %rsi
	cmpl	8(%rbx), %esi
	movl	%esi, 60(%rbx)
	jge	.L1227
.L1221:
	movq	16(%rbx), %rax
	movl	$1, %r12d
	movw	$0, (%rax,%rsi,2)
	jmp	.L1218
	.p2align 4,,7
.L1224:
	leaq	.LC15(%rip), %rdx
	leaq	.LC76(%rip), %rcx
	movl	$7527, %r8d
	call	_assert
	jmp	.L1217
	.p2align 4,,7
.L1226:
	leaq	(%rdx,%rsi,2), %rcx
	jmp	.L1220
	.p2align 4,,7
.L1227:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L1221
	.seh_endproc
	.p2align 4,,15
	.def	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi:
.LFB722:
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
	movq	%rcx, %r13
	movq	%rdx, %r15
.L1229:
	cmpl	$65548, %r8d
	je	.L1231
	jle	.L1638
	cmpl	$196613, %r8d
	je	.L1248
	.p2align 4,,4
	jg	.L1249
	cmpl	$196609, %r8d
	je	.L1250
	.p2align 4,,4
	jg	.L1251
	cmpl	$65549, %r8d
	je	.L1252
	cmpl	$196608, %r8d
	jne	.L1230
	movl	4(%r15), %ecx
	movl	8(%r15), %eax
	movl	60(%r13), %edx
	cmpl	%eax, %ecx
	je	.L1313
	cmpl	%ecx, %edx
	jge	.L1314
	cmpl	%eax, %edx
	movl	%edx, 4(%r15)
	movl	%edx, %ecx
	jge	.L1315
.L1484:
	movl	%edx, 8(%r15)
	movl	%edx, %eax
.L1315:
	cmpl	%eax, %ecx
	je	.L1639
.L1316:
	movl	%eax, (%r15)
.L1462:
	testl	%eax, %eax
	jle	.L1318
	decl	%eax
	movl	%eax, 8(%r15)
.L1318:
	movl	%eax, (%r15)
	movb	$0, 15(%r15)
	jmp	.L1228
	.p2align 4,,7
.L1638:
	cmpl	$65541, %r8d
	je	.L1233
	jle	.L1640
	cmpl	$65544, %r8d
	je	.L1241
	.p2align 4,,4
	jle	.L1641
	cmpl	$65546, %r8d
	je	.L1245
	.p2align 4,,4
	jle	.L1247
	movswq	3212(%r15), %rax
	cmpw	$99, %ax
	je	.L1599
	leaq	0(,%rax,4), %rdx
	leaq	24(%r15), %rbx
	salq	$4, %rax
	subq	%rdx, %rax
	addq	%rbx, %rax
	movzwl	6(%rax), %edx
	movl	(%rax), %edi
	movzwl	4(%rax), %r12d
	movswq	8(%rax), %rbp
	movswq	3210(%r15), %rax
	leaq	0(,%rax,4), %rcx
	salq	$4, %rax
	subq	%rcx, %rax
	testw	%dx, %dx
	leaq	(%r15,%rax), %r14
	movw	%r12w, 30(%r14)
	movw	%dx, 28(%r14)
	movl	%edi, 24(%r14)
	movw	$-1, 32(%r14)
	je	.L1296
	movswl	3214(%r15), %ecx
	movswl	3216(%r15), %r8d
	movswl	%dx, %esi
	movl	%esi, 44(%rsp)
	movl	%ecx, %eax
	addl	%esi, %ecx
	cmpl	%r8d, %ecx
	jle	.L1297
	movw	$0, 28(%r14)
	movw	$0, 30(%r14)
.L1298:
	movl	44(%rsp), %r8d
	movl	%edi, %edx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii
.L1296:
	xorl	%esi, %esi
	testw	%r12w, %r12w
	je	.L1303
	movswl	%r12w, %esi
	leaq	1188(%rbx,%rbp,2), %r8
	movl	%edi, %edx
	movl	%esi, %r9d
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
	addw	%r12w, 3216(%r15)
.L1303:
	addl	%esi, %edi
	incw	3210(%r15)
	movl	%edi, (%r15)
	incw	3212(%r15)
	jmp	.L1599
	.p2align 4,,7
.L1249:
	cmpl	$196616, %r8d
	je	.L1241
	jle	.L1642
	cmpl	$196620, %r8d
	je	.L1258
	cmpl	$196621, %r8d
	jne	.L1643
	movl	8(%r15), %eax
	cmpl	%eax, 4(%r15)
	movl	(%r15), %edx
	je	.L1644
.L1338:
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL31STB_TEXTEDIT_MOVEWORDRIGHT_IMPLEP18ImGuiTextEditStatei
.L1624:
	movl	4(%r15), %ecx
	movl	%eax, (%r15)
	movl	%eax, 8(%r15)
	movl	60(%r13), %edx
	cmpl	%ecx, %eax
	je	.L1339
	cmpl	%ecx, %edx
	jge	.L1340
	cmpl	%eax, %edx
	movl	%edx, 4(%r15)
	jge	.L1645
	movl	%edx, 8(%r15)
	movl	%edx, %ecx
.L1343:
	movl	%ecx, (%r15)
.L1339:
	cmpl	%ecx, %edx
	jge	.L1228
.L1344:
	movl	%edx, (%r15)
	jmp	.L1228
	.p2align 4,,7
.L1640:
	cmpl	$65538, %r8d
	je	.L1235
	jg	.L1236
	cmpl	$65536, %r8d
	je	.L1237
	cmpl	$65537, %r8d
	jne	.L1230
	movl	8(%r15), %eax
	cmpl	%eax, 4(%r15)
	je	.L1307
	movq	%r15, %rdx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
	movl	4(%r15), %ecx
	movl	8(%r15), %eax
	movl	60(%r13), %edx
	cmpl	%eax, %ecx
	je	.L1595
	cmpl	%ecx, %edx
	jge	.L1310
	cmpl	%eax, %edx
	movl	%edx, 4(%r15)
	movl	%edx, %ecx
	jge	.L1311
.L1459:
	movl	%edx, 8(%r15)
	movl	%edx, %eax
.L1311:
	cmpl	%ecx, %eax
	je	.L1646
.L1595:
	movl	(%r15), %eax
.L1309:
	cmpl	%edx, %eax
	jle	.L1599
	movl	%edx, (%r15)
	jmp	.L1599
	.p2align 4,,7
.L1642:
	cmpl	$196614, %r8d
	je	.L1256
	cmpl	$196615, %r8d
	jne	.L1230
	movl	8(%r15), %eax
	cmpl	%eax, 4(%r15)
	je	.L1647
	movl	%eax, (%r15)
.L1406:
	movl	60(%r13), %eax
	movb	$0, 15(%r15)
	movl	%eax, 8(%r15)
	movl	%eax, (%r15)
	jmp	.L1228
	.p2align 4,,7
.L1641:
	cmpl	$65542, %r8d
	je	.L1243
	cmpl	$65543, %r8d
	jne	.L1230
	movl	60(%r13), %eax
	movl	$0, 8(%r15)
	movl	$0, 4(%r15)
	movb	$0, 15(%r15)
	movl	%eax, (%r15)
	jmp	.L1228
	.p2align 4,,7
.L1251:
	cmpl	$196611, %r8d
	je	.L1239
	jle	.L1235
	movl	4(%r15), %ecx
	movl	8(%r15), %eax
	movl	60(%r13), %edx
	cmpl	%eax, %ecx
	je	.L1429
	cmpl	%ecx, %edx
	jge	.L1430
	cmpl	%eax, %edx
	movl	%edx, 4(%r15)
	movl	%edx, %ecx
	jge	.L1431
.L1489:
	movl	%edx, 8(%r15)
	movl	%edx, %eax
.L1431:
	cmpl	%eax, %ecx
	je	.L1648
.L1432:
	movl	%eax, (%r15)
.L1478:
	cmpb	$0, 16(%r15)
	je	.L1598
	movl	$0, (%r15)
	xorl	%eax, %eax
	.p2align 4,,7
.L1437:
	movl	%eax, 8(%r15)
	jmp	.L1599
	.p2align 4,,7
.L1236:
	cmpl	$65539, %r8d
	je	.L1239
	cmpl	$65540, %r8d
	jne	.L1230
	movl	4(%r15), %eax
	movl	8(%r15), %ecx
	movl	60(%r13), %edx
	cmpl	%ecx, %eax
	je	.L1407
	cmpl	%eax, %edx
	jge	.L1408
	cmpl	%ecx, %edx
	movl	%edx, 4(%r15)
	movl	%edx, %eax
	jge	.L1409
.L1487:
	movl	%edx, 8(%r15)
	movl	%edx, %ecx
.L1409:
	cmpl	%ecx, %eax
	je	.L1649
.L1410:
	cmpl	(%r15), %edx
	jge	.L1471
	movl	%edx, (%r15)
.L1471:
	cmpl	%eax, %ecx
	jge	.L1412
	movl	%ecx, 4(%r15)
	movl	%ecx, %eax
.L1412:
	movl	%eax, (%r15)
	movl	%eax, 8(%r15)
	movb	$0, 15(%r15)
.L1473:
	cmpb	$0, 16(%r15)
	je	.L1594
	movl	$0, (%r15)
	.p2align 4,,7
.L1599:
	movb	$0, 15(%r15)
.L1228:
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
.L1650:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$857, %r8d
	call	_assert
.L1415:
	movq	16(%r13), %rdx
	movslq	%ebx, %rax
	cmpw	$10, (%rdx,%rax,2)
	je	.L1599
	movl	(%r15), %eax
	decl	%eax
	movl	%eax, (%r15)
.L1594:
	testl	%eax, %eax
	jle	.L1599
	leal	-1(%rax), %ebx
	cmpl	%ebx, 8(%r13)
	jg	.L1415
	jmp	.L1650
.L1248:
	movl	4(%r15), %eax
	movl	8(%r15), %ebx
	movl	60(%r13), %esi
	cmpl	%ebx, %eax
	je	.L1440
	cmpl	%eax, %esi
	jge	.L1441
	cmpl	%ebx, %esi
	movl	%esi, 4(%r15)
	movl	%esi, %eax
	jge	.L1442
.L1490:
	movl	%esi, 8(%r15)
	movl	%esi, %ebx
.L1442:
	cmpl	%ebx, %eax
	je	.L1651
.L1443:
	movl	%ebx, (%r15)
.L1483:
	cmpb	$0, 16(%r15)
	jne	.L1445
	cmpl	%ebx, %esi
	jg	.L1458
	.p2align 4,,7
.L1448:
	movl	%ebx, 8(%r15)
	movb	$0, 15(%r15)
	jmp	.L1228
.L1653:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$857, %r8d
	call	_assert
	movl	(%r15), %eax
.L1449:
	movq	16(%r13), %rdx
	movslq	%ebx, %rbx
	cmpw	$10, (%rdx,%rbx,2)
	je	.L1652
	leal	1(%rax), %ebx
	cmpl	%esi, %ebx
	movl	%ebx, (%r15)
	jge	.L1448
.L1458:
	cmpl	%ebx, 8(%r13)
	movl	%ebx, %eax
	jg	.L1449
	jmp	.L1653
.L1654:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$857, %r8d
	call	_assert
	movl	(%r15), %eax
.L1438:
	movq	16(%r13), %rdx
	movslq	%ebx, %rbx
	cmpw	$10, (%rdx,%rbx,2)
	je	.L1437
	decl	%eax
	movl	%eax, (%r15)
.L1598:
	testl	%eax, %eax
	jle	.L1437
	leal	-1(%rax), %ebx
	cmpl	%ebx, 8(%r13)
	jg	.L1438
	jmp	.L1654
.L1235:
	andl	$131072, %r8d
	cmpb	$0, 16(%r15)
	je	.L1375
	orl	$65536, %r8d
	jmp	.L1229
.L1247:
	movl	8(%r15), %eax
	cmpl	%eax, 4(%r15)
	jne	.L1402
	movl	60(%r13), %edx
	movl	(%r15), %eax
	cmpl	%eax, %edx
	jge	.L1403
	movl	%edx, (%r15)
	movl	%edx, %eax
.L1403:
	testl	%eax, %eax
	jle	.L1599
	leal	-1(%rax), %r8d
	movl	$1, %r9d
	movq	%r15, %rdx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii
	decl	(%r15)
	jmp	.L1599
.L1643:
	cmpl	$196617, %r8d
	je	.L1247
.L1230:
	leal	-1(%r8), %eax
	cmpl	$65534, %eax
	ja	.L1228
	cmpl	$10, %r8d
	movw	%r8w, 96(%rsp)
	je	.L1655
.L1262:
	cmpb	$0, 12(%r15)
	je	.L1264
	movl	8(%r15), %eax
	cmpl	%eax, 4(%r15)
	je	.L1656
.L1264:
	movq	%r15, %rdx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
	movl	(%r15), %edx
	leaq	96(%rsp), %r8
	movl	$1, %r9d
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
	testb	%al, %al
	je	.L1228
	leaq	24(%r15), %rcx
	xorl	%edx, %edx
	movl	(%r15), %ebx
	call	_ZN8ImGuiStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi
	testq	%rax, %rax
	je	.L1279
	movl	%ebx, (%rax)
	movw	$0, 4(%rax)
	movw	$1, 6(%rax)
	movw	$-1, 8(%rax)
.L1279:
	incl	(%r15)
	movb	$0, 15(%r15)
	jmp	.L1228
.L1402:
	movq	%r15, %rdx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
	jmp	.L1599
.L1243:
	movl	$0, 8(%r15)
	movl	$0, 4(%r15)
	movl	$0, (%r15)
	movb	$0, 15(%r15)
	jmp	.L1228
.L1258:
	movl	8(%r15), %eax
	cmpl	%eax, 4(%r15)
	movl	(%r15), %edx
	je	.L1657
.L1326:
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP18ImGuiTextEditStatei
	jmp	.L1624
.L1252:
	movl	8(%r15), %eax
	cmpl	%eax, 4(%r15)
	je	.L1333
	movq	%r15, %rdx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
	jmp	.L1228
.L1245:
	movswl	3210(%r15), %eax
	testw	%ax, %ax
	je	.L1599
	decl	%eax
	leaq	24(%r15), %rbx
	cltq
	leaq	0(,%rax,4), %rdx
	salq	$4, %rax
	subq	%rdx, %rax
	addq	%rbx, %rax
	movzwl	6(%rax), %ebp
	movl	(%rax), %edi
	movzwl	4(%rax), %r12d
	movzwl	8(%rax), %eax
	movw	%ax, 44(%rsp)
	movswq	3212(%r15), %rax
	leaq	0(,%rax,4), %rdx
	movq	%rax, %rcx
	salq	$4, %rax
	subq	%rdx, %rax
	addq	%r15, %rax
	testw	%bp, %bp
	movw	$-1, 20(%rax)
	movw	%bp, 16(%rax)
	movw	%r12w, 18(%rax)
	movl	%edi, 12(%rax)
	je	.L1281
	movswl	3214(%r15), %edx
	movswl	%bp, %esi
	leal	(%rdx,%rsi), %r8d
	cmpl	$998, %r8d
	jg	.L1282
	leaq	1212(%r15), %rax
	movl	%edi, 48(%rsp)
	movq	%rax, %r14
.L1283:
	movswl	3216(%r15), %r8d
	addl	%esi, %edx
	cmpl	%r8d, %edx
	movl	%r8d, %eax
	jle	.L1285
	cmpw	$98, %cx
	jg	.L1286
	cmpw	$0, 1208(%r15)
	movswl	%cx, %r8d
	js	.L1288
	movzwl	1204(%r15), %edi
	movl	$999, %r8d
	addl	%edi, %eax
	movswq	%ax, %rcx
	movw	%ax, 3216(%r15)
	cwtl
	subl	%eax, %r8d
	movq	%rcx, %rdx
	movswq	%di, %rax
	subq	%rax, %rdx
	leaq	(%r14,%rcx,2), %rcx
	movslq	%r8d, %r8
	leaq	(%r14,%rdx,2), %rdx
	addq	%r8, %r8
	call	memmove
	movswl	3212(%r15), %r8d
	cmpl	$97, %r8d
	movl	%r8d, %ecx
	jg	.L1288
	movl	%r8d, %edx
	.p2align 4,,7
.L1290:
	movslq	%edx, %rax
	leaq	0(,%rax,4), %r9
	salq	$4, %rax
	subq	%r9, %rax
	addq	%r15, %rax
	movzwl	32(%rax), %r9d
	testw	%r9w, %r9w
	js	.L1289
	addl	%edi, %r9d
	movw	%r9w, 32(%rax)
.L1289:
	incl	%edx
	cmpl	$98, %edx
	jne	.L1290
.L1288:
	movswq	%cx, %rax
	movl	$99, %edi
	leaq	0(,%rax,4), %rdx
	subl	%r8d, %edi
	salq	$4, %rax
	movslq	%edi, %r8
	subq	%rdx, %rax
	leaq	0(,%r8,4), %r9
	salq	$4, %r8
	leaq	(%rbx,%rax), %rcx
	leaq	-12(%rbx,%rax), %rdx
	subq	%r9, %r8
	call	memmove
	movzwl	3212(%r15), %eax
	leal	1(%rax), %ecx
	movw	%cx, 3212(%r15)
.L1286:
	cmpw	$99, %cx
	je	.L1599
	movswl	3214(%r15), %edx
	jmp	.L1283
.L1239:
	andl	$131072, %r8d
	cmpb	$0, 16(%r15)
	je	.L1350
	orl	$65537, %r8d
	jmp	.L1229
.L1237:
	movl	4(%r15), %eax
	movl	8(%r15), %edx
	cmpl	%edx, %eax
	je	.L1305
	jle	.L1306
	movl	%edx, 4(%r15)
	movl	%edx, %eax
.L1306:
	movl	%eax, (%r15)
	movl	%eax, 8(%r15)
	jmp	.L1599
.L1231:
	movl	4(%r15), %eax
	movl	8(%r15), %edx
	cmpl	%edx, %eax
	je	.L1319
	jle	.L1320
	movl	%edx, 4(%r15)
	movl	%edx, %eax
.L1320:
	movl	%eax, (%r15)
	movl	%eax, 8(%r15)
	movb	$0, 15(%r15)
	jmp	.L1228
.L1250:
	movl	4(%r15), %edx
	movl	8(%r15), %eax
	cmpl	%eax, %edx
	je	.L1658
	movl	%eax, (%r15)
.L1346:
	incl	%eax
	cmpl	%edx, %eax
	movl	%eax, 8(%r15)
	je	.L1347
	movl	60(%r13), %ecx
	cmpl	%edx, %ecx
	jge	.L1348
	cmpl	%eax, %ecx
	movl	%ecx, 4(%r15)
	movl	%eax, %edx
	jge	.L1347
.L1465:
	movl	%ecx, 8(%r15)
	movl	%ecx, %edx
.L1347:
	movl	%edx, (%r15)
	movb	$0, 15(%r15)
	jmp	.L1228
.L1233:
	movl	4(%r15), %ebx
	movl	8(%r15), %eax
	movl	60(%r13), %esi
	cmpl	%eax, %ebx
	je	.L1418
	cmpl	%ebx, %esi
	jge	.L1419
	cmpl	%eax, %esi
	movl	%esi, 4(%r15)
	movl	%esi, %ebx
	jge	.L1420
.L1488:
	movl	%esi, 8(%r15)
	movl	%esi, %eax
.L1420:
	cmpl	%eax, %ebx
	je	.L1659
.L1421:
	cmpl	(%r15), %esi
	jge	.L1475
	movl	%esi, (%r15)
.L1475:
	cmpl	%ebx, %eax
	jge	.L1423
	movl	%eax, 4(%r15)
	movl	%eax, %ebx
.L1423:
	movl	%ebx, (%r15)
	movl	%ebx, 8(%r15)
	movb	$0, 15(%r15)
.L1477:
	cmpb	$0, 16(%r15)
	jne	.L1424
	cmpl	%ebx, %esi
	jg	.L1546
	jmp	.L1599
	.p2align 4,,7
.L1427:
	movq	16(%r13), %rax
	movslq	%ebx, %rbx
	cmpw	$10, (%rax,%rbx,2)
	je	.L1599
	movl	(%r15), %eax
	leal	1(%rax), %ebx
	cmpl	%esi, %ebx
	movl	%ebx, (%r15)
	jge	.L1599
.L1546:
	cmpl	8(%r13), %ebx
	jl	.L1427
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$857, %r8d
	call	_assert
	jmp	.L1427
.L1241:
	movl	8(%r15), %eax
	cmpl	%eax, 4(%r15)
	jne	.L1402
	movl	(%r15), %r8d
	cmpl	60(%r13), %r8d
	jge	.L1599
	movl	$1, %r9d
	movq	%r15, %rdx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL19stb_textedit_deleteEP18ImGuiTextEditStatePNS_17STB_TexteditStateEii
	jmp	.L1599
.L1256:
	movl	8(%r15), %eax
	cmpl	%eax, 4(%r15)
	je	.L1660
.L1404:
	movl	$0, 8(%r15)
	movl	$0, (%r15)
	movb	$0, 15(%r15)
	jmp	.L1228
.L1652:
	movl	%eax, %ebx
	jmp	.L1448
.L1340:
	cmpl	%eax, %edx
	jge	.L1228
	cmpl	%ecx, %edx
	movl	%edx, 8(%r15)
	jne	.L1344
	.p2align 4,,3
	jmp	.L1343
	.p2align 4,,7
.L1307:
	movl	(%r15), %eax
	incl	%eax
	movl	%eax, (%r15)
	movl	60(%r13), %edx
	jmp	.L1309
.L1418:
	movl	(%r15), %ebx
.L1422:
	cmpl	%ebx, %esi
	jge	.L1477
	cmpb	$0, 16(%r15)
	movl	%esi, (%r15)
	je	.L1599
.L1424:
	movl	%esi, (%r15)
	jmp	.L1599
.L1445:
	movl	%esi, (%r15)
	movl	%esi, %ebx
	jmp	.L1448
.L1282:
	movw	$0, 16(%rax)
.L1284:
	movl	%esi, %r8d
	movl	%edi, %edx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii
.L1281:
	xorl	%esi, %esi
	testw	%r12w, %r12w
	je	.L1295
	movswq	44(%rsp), %rax
	movswl	%r12w, %esi
	movl	%edi, %edx
	movl	%esi, %r9d
	movq	%r13, %rcx
	leaq	1188(%rbx,%rax,2), %r8
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
	subw	%r12w, 3214(%r15)
.L1295:
	addl	%edi, %esi
	decw	3210(%r15)
	movl	%esi, (%r15)
	decw	3212(%r15)
	jmp	.L1599
.L1430:
	cmpl	%eax, %edx
	jl	.L1489
	jmp	.L1432
.L1419:
	cmpl	%eax, %esi
	.p2align 4,,7
	jl	.L1488
	.p2align 4,,9
	jmp	.L1421
.L1333:
	movl	(%r15), %edx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL31STB_TEXTEDIT_MOVEWORDRIGHT_IMPLEP18ImGuiTextEditStatei
.L1622:
	movl	4(%r15), %r8d
	movl	8(%r15), %ecx
	movl	%eax, (%r15)
	movl	60(%r13), %edx
	cmpl	%ecx, %r8d
	je	.L1334
	cmpl	%r8d, %edx
	jge	.L1335
	cmpl	%ecx, %edx
	movl	%edx, 4(%r15)
	movl	%edx, %r8d
	jge	.L1336
.L1464:
	movl	%edx, 8(%r15)
	movl	%edx, %ecx
.L1336:
	cmpl	%r8d, %ecx
	jne	.L1334
	movl	%ecx, (%r15)
	movl	%ecx, %eax
.L1334:
	cmpl	%eax, %edx
	jge	.L1228
	jmp	.L1344
.L1348:
	cmpl	%eax, %ecx
	movl	%eax, %edx
	jge	.L1347
	.p2align 4,,7
	jmp	.L1465
.L1314:
	cmpl	%eax, %edx
	.p2align 4,,5
	jl	.L1484
	.p2align 4,,9
	jmp	.L1316
.L1310:
	cmpl	%eax, %edx
	.p2align 4,,7
	jl	.L1459
	.p2align 4,,9
	jmp	.L1595
.L1441:
	cmpl	%ebx, %esi
	.p2align 4,,7
	jl	.L1490
	.p2align 4,,9
	jmp	.L1443
.L1408:
	cmpl	%ecx, %edx
	.p2align 4,,7
	jl	.L1487
	.p2align 4,,9
	jmp	.L1410
.L1407:
	movl	(%r15), %eax
.L1411:
	cmpl	%eax, %edx
	.p2align 4,,4
	jge	.L1473
	movl	%edx, (%r15)
	movl	%edx, %eax
	jmp	.L1473
.L1660:
	movl	(%r15), %eax
	movl	%eax, 4(%r15)
	jmp	.L1404
.L1429:
	movl	(%r15), %eax
.L1433:
	cmpl	%eax, %edx
	jge	.L1480
	movl	%edx, (%r15)
	movl	%edx, %eax
.L1480:
	movl	%eax, 8(%r15)
	movl	%eax, 4(%r15)
	jmp	.L1478
.L1440:
	movl	(%r15), %ebx
.L1444:
	cmpl	%ebx, %esi
	jge	.L1482
	movl	%esi, (%r15)
	movl	%esi, %ebx
.L1482:
	movl	%ebx, 8(%r15)
	movl	%ebx, 4(%r15)
	jmp	.L1483
.L1647:
	movl	(%r15), %eax
	movl	%eax, 8(%r15)
	movl	%eax, 4(%r15)
	jmp	.L1406
.L1305:
	movl	(%r15), %eax
	testl	%eax, %eax
	jle	.L1599
	decl	%eax
	movl	%eax, (%r15)
	jmp	.L1599
.L1658:
	movl	(%r15), %edx
	movl	%edx, 4(%r15)
	movl	%edx, %eax
	jmp	.L1346
.L1313:
	movl	(%r15), %ecx
.L1317:
	cmpl	%ecx, %edx
	jge	.L1661
	movl	%edx, (%r15)
	movl	%edx, %eax
.L1461:
	movl	%eax, 8(%r15)
	movl	%eax, 4(%r15)
	jmp	.L1462
.L1655:
	cmpb	$0, 16(%r15)
	je	.L1262
	jmp	.L1228
.L1649:
	movl	%eax, (%r15)
	.p2align 4,,3
	jmp	.L1411
.L1659:
	movl	%ebx, (%r15)
	.p2align 4,,5
	jmp	.L1422
.L1648:
	movl	%eax, (%r15)
	.p2align 4,,2
	jmp	.L1433
.L1639:
	movl	%ecx, (%r15)
	.p2align 4,,2
	jmp	.L1317
.L1646:
	movl	%eax, (%r15)
	.p2align 4,,2
	jmp	.L1309
.L1651:
	movl	%ebx, (%r15)
	.p2align 4,,2
	jmp	.L1444
.L1335:
	cmpl	%ecx, %edx
	.p2align 4,,3
	jl	.L1464
	.p2align 4,,6
	jmp	.L1334
.L1297:
	movw	%ax, 32(%r14)
	xorl	%r9d, %r9d
	addl	%edx, %eax
	testw	%dx, %dx
	movw	%ax, 3214(%r15)
	jle	.L1298
	movl	%edi, 48(%rsp)
	movq	%rbx, 56(%rsp)
	movq	%r13, %rdi
	movq	%r15, %r13
	movq	%r14, %r15
	movl	%r9d, %r14d
	jmp	.L1574
	.p2align 4,,7
.L1300:
	movq	16(%rdi), %rdx
	movslq	%ebx, %rax
	movslq	%esi, %rsi
	incl	%r14d
	movzwl	(%rdx,%rax,2), %eax
	movw	%ax, 1212(%r13,%rsi,2)
	movswl	28(%r15), %eax
	cmpl	%r14d, %eax
	jle	.L1662
.L1574:
	movswl	32(%r15), %esi
	movl	24(%r15), %ebx
	addl	%r14d, %ebx
	addl	%r14d, %esi
	cmpl	8(%rdi), %ebx
	jl	.L1300
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$857, %r8d
	call	_assert
	jmp	.L1300
.L1662:
	movq	%r13, %r15
	movq	56(%rsp), %rbx
	movq	%rdi, %r13
	movl	48(%rsp), %edi
	jmp	.L1298
.L1319:
	movl	(%r15), %edx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP18ImGuiTextEditStatei
	jmp	.L1622
.L1656:
	movslq	(%r15), %rbp
	cmpl	60(%r13), %ebp
	jge	.L1264
	movswq	3210(%r15), %r8
	movw	$99, 3212(%r15)
	movw	$999, 3216(%r15)
	cmpw	$99, %r8w
	je	.L1663
.L1452:
	leaq	1212(%r15), %rbx
	leaq	36(%r15), %rdi
	leaq	24(%r15), %rsi
	.p2align 4,,7
.L1275:
	movzwl	3214(%r15), %eax
	cmpw	$998, %ax
	jle	.L1269
	testw	%r8w, %r8w
	jle	.L1575
	cmpw	$0, 32(%r15)
	js	.L1272
	movswq	28(%r15), %rdx
	movq	%rbx, %rcx
	subl	%edx, %eax
	movq	%rdx, %r12
	leaq	(%rbx,%rdx,2), %rdx
	movswq	%ax, %r8
	movw	%ax, 3214(%r15)
	addq	%r8, %r8
	call	memmove
	movzwl	3210(%r15), %r8d
	testw	%r8w, %r8w
	jle	.L1272
	movswl	%r8w, %edx
	leaq	32(%r15), %rax
	decl	%edx
	leaq	0(,%rdx,4), %rcx
	salq	$4, %rdx
	subq	%rcx, %rdx
	leaq	44(%r15,%rdx), %rcx
	.p2align 4,,7
.L1274:
	movzwl	(%rax), %edx
	testw	%dx, %dx
	js	.L1273
	subl	%r12d, %edx
	movw	%dx, (%rax)
.L1273:
	addq	$12, %rax
	cmpq	%rax, %rcx
	jne	.L1274
.L1272:
	decl	%r8d
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movw	%r8w, 3210(%r15)
	movswq	%r8w, %r8
	leaq	0(,%r8,4), %rax
	salq	$4, %r8
	subq	%rax, %r8
	call	memmove
	movswq	3210(%r15), %r8
	jmp	.L1275
.L1575:
	jmp	.L1575
	.p2align 4,,7
.L1269:
	leal	1(%r8), %edx
	movswl	%ax, %ebx
	movw	%dx, 3210(%r15)
	leaq	0(,%r8,4), %rdx
	salq	$4, %r8
	subq	%rdx, %r8
	leaq	(%r15,%r8), %rdx
	movl	%ebp, 24(%rdx)
	movw	$1, 28(%rdx)
	movw	$1, 30(%rdx)
	movw	%ax, 32(%rdx)
	leal	1(%rax), %edx
	cmpl	8(%r13), %ebp
	movw	%dx, 3214(%r15)
	movl	%ebp, %edx
	jge	.L1664
.L1276:
	movq	16(%r13), %rax
	movl	$1, %r8d
	movzwl	(%rax,%rbp,2), %ecx
	movslq	%ebx, %rax
	movw	%cx, 1212(%r15,%rax,2)
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_DELETECHARSEP18ImGuiTextEditStateii
	movl	(%r15), %edx
	leaq	96(%rsp), %r8
	movl	$1, %r9d
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
	testb	%al, %al
	jne	.L1279
	jmp	.L1228
.L1664:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$857, %r8d
	call	_assert
	movl	(%r15), %edx
	jmp	.L1276
.L1657:
	movl	%edx, 8(%r15)
	movl	%edx, 4(%r15)
	jmp	.L1326
.L1644:
	movl	%edx, 8(%r15)
	movl	%edx, 4(%r15)
	jmp	.L1338
.L1285:
	subl	%ebp, %eax
	movswq	%cx, %rcx
	movslq	48(%rsp), %r9
	movl	%eax, %edx
	leaq	0(,%rcx,4), %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	xorl	%eax, %eax
	leaq	(%r15,%rcx), %rbp
	movq	%r9, %rdi
	addq	%r9, %r9
	testl	%esi, %esi
	movw	%dx, 20(%rbp)
	movw	%dx, 3216(%r15)
	jg	.L1573
	jmp	.L1284
	.p2align 4,,7
.L1292:
	movq	16(%r13), %rdx
	incl	%eax
	movslq	%r14d, %r14
	movzwl	(%rdx,%r9), %edx
	addq	$2, %r9
	cmpl	%eax, %esi
	movw	%dx, 1212(%r15,%r14,2)
	je	.L1284
.L1573:
	movswl	20(%rbp), %r14d
	leal	(%rdi,%rax), %edx
	addl	%eax, %r14d
	cmpl	%edx, 8(%r13)
	jg	.L1292
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$857, %r8d
	movl	%eax, 56(%rsp)
	movq	%r9, 48(%rsp)
	call	_assert
	movl	56(%rsp), %eax
	movq	48(%rsp), %r9
	jmp	.L1292
.L1663:
	cmpw	$0, 32(%r15)
	js	.L1266
	movswq	28(%r15), %rdx
	movzwl	3214(%r15), %eax
	leaq	1212(%r15), %rcx
	subl	%edx, %eax
	movq	%rdx, %rbx
	leaq	(%rcx,%rdx,2), %rdx
	movswq	%ax, %r8
	movw	%ax, 3214(%r15)
	addq	%r8, %r8
	call	memmove
	movzwl	3210(%r15), %r8d
	testw	%r8w, %r8w
	jle	.L1266
	movswl	%r8w, %edx
	leaq	32(%r15), %rax
	decl	%edx
	leaq	0(,%rdx,4), %rcx
	salq	$4, %rdx
	subq	%rcx, %rdx
	leaq	44(%r15,%rdx), %rcx
	.p2align 4,,7
.L1268:
	movzwl	(%rax), %edx
	testw	%dx, %dx
	js	.L1267
	subl	%ebx, %edx
	movw	%dx, (%rax)
.L1267:
	addq	$12, %rax
	cmpq	%rcx, %rax
	jne	.L1268
.L1266:
	leal	-1(%r8), %eax
	leaq	36(%r15), %rdx
	leaq	24(%r15), %rcx
	movw	%ax, 3210(%r15)
	movswq	%ax, %rax
	leaq	0(,%rax,4), %r8
	salq	$4, %rax
	subq	%r8, %rax
	movq	%rax, %r8
	call	memmove
	movswq	3210(%r15), %r8
	jmp	.L1452
.L1350:
	testl	%r8d, %r8d
	movl	%r8d, %ebx
	je	.L1352
	movl	4(%r15), %eax
	movl	8(%r15), %ecx
	cmpl	%ecx, %eax
	je	.L1665
	movl	%ecx, (%r15)
	movl	60(%r13), %edx
.L1355:
	cmpl	%eax, %edx
	jge	.L1357
	cmpl	%edx, %ecx
	movl	%edx, 4(%r15)
	movl	%edx, %eax
	jle	.L1358
.L1466:
	movl	%edx, 8(%r15)
.L1358:
	cmpl	8(%r15), %eax
	jne	.L1597
	movl	%eax, (%r15)
.L1356:
	cmpl	%edx, %eax
	movl	%eax, %r8d
	jle	.L1359
	movl	%edx, (%r15)
	movl	%edx, %r8d
.L1359:
	movzbl	16(%r15), %r9d
	leaq	64(%rsp), %rcx
	movq	%r13, %rdx
	call	_ZN8ImGuiStbL25stb_textedit_find_charposEPNS_12StbFindStateEP18ImGuiTextEditStateii
	movl	80(%rsp), %esi
	testl	%esi, %esi
	je	.L1228
	cmpb	$0, 15(%r15)
	je	.L1362
	movss	20(%r15), %xmm6
.L1363:
	addl	76(%rsp), %esi
	movq	16(%r13), %rdx
	leaq	96(%rsp), %rcx
	xorl	%edi, %edi
	movl	%esi, (%r15)
	movl	60(%r13), %r8d
	movl	%esi, %r9d
	call	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.33
	movl	116(%rsp), %edx
	movss	96(%rsp), %xmm8
	movss	.LC20(%rip), %xmm7
	testl	%edx, %edx
	jg	.L1555
	jmp	.L1393
	.p2align 4,,7
.L1507:
	addss	%xmm0, %xmm8
	ucomiss	%xmm6, %xmm8
	ja	.L1393
	incl	(%r15)
	incl	%edi
	cmpl	%edi, 116(%rsp)
	jle	.L1393
.L1555:
	movl	%edi, %r8d
	movl	%esi, %edx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii
	ucomiss	%xmm7, %xmm0
	jp	.L1507
	jne	.L1507
.L1393:
	movl	4(%r15), %eax
	movl	8(%r15), %ecx
	movl	60(%r13), %edx
	cmpl	%ecx, %eax
	je	.L1396
	cmpl	%eax, %edx
	jge	.L1397
	cmpl	%ecx, %edx
	movl	%edx, 4(%r15)
	movl	%edx, %eax
	jge	.L1398
.L1469:
	movl	%edx, 8(%r15)
.L1398:
	cmpl	8(%r15), %eax
	jne	.L1396
	movl	%eax, (%r15)
.L1396:
	movl	(%r15), %eax
	cmpl	%eax, %edx
	jge	.L1399
	movl	%edx, (%r15)
	movl	%edx, %eax
.L1399:
	testl	%ebx, %ebx
	movb	$1, 15(%r15)
	movss	%xmm6, 20(%r15)
	je	.L1228
	movl	%eax, 8(%r15)
	jmp	.L1228
.L1397:
	cmpl	%ecx, %edx
	jge	.L1396
	.p2align 4,,5
	jmp	.L1469
	.p2align 4,,7
.L1357:
	cmpl	%edx, %ecx
	.p2align 4,,7
	jg	.L1466
.L1597:
	movl	(%r15), %eax
	.p2align 4,,6
	jmp	.L1356
.L1352:
	movl	8(%r15), %eax
	cmpl	%eax, 4(%r15)
	jne	.L1578
	movl	(%r15), %eax
.L1354:
	movl	60(%r13), %edx
	jmp	.L1356
	.p2align 4,,7
.L1375:
	testl	%r8d, %r8d
	movl	%r8d, %ebx
	movl	4(%r15), %eax
	je	.L1376
	movl	8(%r15), %r8d
	cmpl	%r8d, %eax
	je	.L1666
	movl	%r8d, (%r15)
	movl	60(%r13), %edx
	cmpl	%edx, %eax
	jle	.L1667
	cmpl	%edx, %r8d
	movl	%edx, 4(%r15)
	movl	%edx, %eax
	jle	.L1382
.L1468:
	movl	%edx, 8(%r15)
.L1382:
	cmpl	8(%r15), %eax
	movl	%eax, %r8d
	jne	.L1668
	movl	%eax, (%r15)
.L1384:
	cmpl	%edx, %r8d
	jle	.L1385
	movl	%edx, (%r15)
	movl	%edx, %r8d
.L1385:
	leaq	64(%rsp), %rcx
	xorl	%r9d, %r9d
	movq	%r13, %rdx
	call	_ZN8ImGuiStbL25stb_textedit_find_charposEPNS_12StbFindStateEP18ImGuiTextEditStateii
	movl	84(%rsp), %r9d
	cmpl	76(%rsp), %r9d
	je	.L1228
	cmpb	$0, 15(%r15)
	je	.L1388
	movss	20(%r15), %xmm6
.L1389:
	movl	%r9d, (%r15)
	movq	16(%r13), %rdx
	leaq	96(%rsp), %rcx
	movl	60(%r13), %r8d
	xorl	%esi, %esi
	call	_ZN8ImGuiStbL22STB_TEXTEDIT_LAYOUTROWEPNS_14StbTexteditRowEP18ImGuiTextEditStatei.isra.33
	movl	116(%rsp), %eax
	movss	96(%rsp), %xmm8
	movss	.LC20(%rip), %xmm7
	testl	%eax, %eax
	jg	.L1556
	jmp	.L1393
	.p2align 4,,7
.L1508:
	addss	%xmm0, %xmm8
	ucomiss	%xmm6, %xmm8
	ja	.L1393
	incl	(%r15)
	incl	%esi
	cmpl	%esi, 116(%rsp)
	jle	.L1393
.L1556:
	movl	84(%rsp), %edx
	movl	%esi, %r8d
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL21STB_TEXTEDIT_GETWIDTHEP18ImGuiTextEditStateii
	ucomiss	%xmm7, %xmm0
	jp	.L1508
	jne	.L1508
	.p2align 4,,8
	jmp	.L1393
	.p2align 4,,7
.L1388:
	movss	64(%rsp), %xmm6
	.p2align 4,,5
	jmp	.L1389
.L1667:
	cmpl	%edx, %r8d
	.p2align 4,,2
	jle	.L1385
	.p2align 4,,2
	jmp	.L1468
	.p2align 4,,7
.L1376:
	movl	8(%r15), %edx
	cmpl	%edx, %eax
	.p2align 4,,2
	je	.L1669
	.p2align 4,,5
	jle	.L1381
	movl	%edx, 4(%r15)
	movl	%edx, %eax
.L1381:
	movl	%eax, (%r15)
	movl	%eax, 8(%r15)
	movb	$0, 15(%r15)
.L1378:
	movl	60(%r13), %edx
	movl	%eax, %r8d
	jmp	.L1384
	.p2align 4,,7
.L1578:
	movq	%r15, %rdx
	movq	%r13, %rcx
	call	_ZN8ImGuiStbL25stb_textedit_move_to_lastEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
	movl	4(%r15), %eax
	movl	8(%r15), %ecx
	movl	60(%r13), %edx
	cmpl	%ecx, %eax
	jne	.L1355
	jmp	.L1597
.L1645:
	jne	.L1228
	movl	%edx, %ecx
	.p2align 4,,9
	jmp	.L1343
.L1362:
	movss	64(%rsp), %xmm6
	.p2align 4,,3
	jmp	.L1363
.L1665:
	movl	(%r15), %eax
	movl	%eax, 8(%r15)
	movl	%eax, 4(%r15)
	jmp	.L1354
.L1669:
	movl	(%r15), %eax
	jmp	.L1378
.L1661:
	movl	%ecx, %eax
	jmp	.L1461
.L1668:
	movl	(%r15), %r8d
	.p2align 4,,3
	jmp	.L1384
.L1666:
	movl	(%r15), %eax
	movl	%eax, 8(%r15)
	movl	%eax, 4(%r15)
	jmp	.L1378
	.seh_endproc
	.p2align 4,,15
	.def	_ZL30GetClipboardTextFn_DefaultImplPv;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL30GetClipboardTextFn_DefaultImplPv
_ZL30GetClipboardTextFn_DefaultImplPv:
.LFB5781:
	pushq	%r12
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
	cmpb	$0, _ZGVZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	je	.L1700
.L1672:
	movq	8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	testq	%rcx, %rcx
	je	.L1685
	movq	GImGui(%rip), %rax
	movl	$0, 4+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	movl	$0, _ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
.L1685:
	xorl	%ecx, %ecx
	call	*__imp_OpenClipboard(%rip)
	testl	%eax, %eax
	je	.L1675
	movl	$13, %ecx
	call	*__imp_GetClipboardData(%rip)
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L1675
	movq	%rax, %rcx
	call	*__imp_GlobalLock(%rip)
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L1676
	xorl	%edx, %edx
	movq	%rax, %rcx
	call	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	leal	1(%rax), %ebx
	movl	4+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %eax
	cmpl	%eax, %ebx
	jle	.L1681
	testl	%eax, %eax
	movl	$8, %edx
	je	.L1679
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L1679:
	cmpl	%edx, %ebx
	jl	.L1701
	movl	%ebx, %ebp
.L1680:
	movq	GImGui(%rip), %rax
	movslq	%ebp, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L1682
	movslq	_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L1684
	decl	844(%rax)
.L1684:
	call	*240(%rax)
	movq	%r12, 8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	movl	%ebp, 4+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	movq	%r12, %rcx
	jmp	.L1678
	.p2align 4,,7
.L1701:
	cmpl	%edx, %eax
	jl	.L1702
.L1681:
	movq	8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
.L1678:
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	movl	%ebx, %edx
	movl	%ebx, _ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	call	_Z15ImTextStrToUtf8PciPKtS1_
.L1676:
	movq	%rsi, %rcx
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
	.p2align 4,,7
.L1700:
	leaq	_ZGVZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L1672
	leaq	_ZGVZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip), %rcx
	movl	$0, 4+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	movl	$0, _ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	movq	$0, 8+_ZZL30GetClipboardTextFn_DefaultImplPvE9buf_local(%rip)
	call	__cxa_guard_release
	leaq	__tcf_0(%rip), %rcx
	call	atexit
	jmp	.L1672
	.p2align 4,,7
.L1675:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L1682:
	movq	GImGui(%rip), %rax
	jmp	.L1684
.L1702:
	movl	%edx, %ebp
	jmp	.L1680
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui23ColorConvertU32ToFloat4Ej
	.def	_ZN5ImGui23ColorConvertU32ToFloat4Ej;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui23ColorConvertU32ToFloat4Ej
_ZN5ImGui23ColorConvertU32ToFloat4Ej:
.LFB313:
	.seh_endprologue
	movss	.LC77(%rip), %xmm2
	movq	%rcx, %rax
	movzbl	%dl, %ecx
	movl	%edx, %r8d
	cvtsi2ss	%ecx, %xmm0
	movzbl	%dh, %ecx
	shrl	$16, %r8d
	shrl	$24, %edx
	movzbl	%r8b, %r8d
	cvtsi2ss	%r8d, %xmm1
	mulss	%xmm2, %xmm0
	mulss	%xmm2, %xmm1
	movss	%xmm0, (%rax)
	cvtsi2ss	%ecx, %xmm0
	movss	%xmm1, 8(%rax)
	mulss	%xmm2, %xmm0
	movss	%xmm0, 4(%rax)
	cvtsi2ss	%edx, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, 12(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	.def	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4:
.LFB314:
	.seh_endprologue
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movss	(%rcx), %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.L1705
	ucomiss	.LC28(%rip), %xmm1
	movl	$255, %eax
	jbe	.L1717
.L1705:
	movss	4(%rcx), %xmm1
	xorl	%edx, %edx
	ucomiss	%xmm1, %xmm0
	ja	.L1706
	ucomiss	.LC28(%rip), %xmm1
	movl	$65280, %edx
	jbe	.L1718
.L1706:
	movss	8(%rcx), %xmm1
	orl	%edx, %eax
	xorl	%edx, %edx
	ucomiss	%xmm1, %xmm0
	ja	.L1707
	ucomiss	.LC28(%rip), %xmm1
	movl	$16711680, %edx
	jbe	.L1719
.L1707:
	movss	12(%rcx), %xmm1
	orl	%eax, %edx
	ucomiss	%xmm1, %xmm0
	ja	.L1715
.L1720:
	ucomiss	.LC28(%rip), %xmm1
	movl	$-16777216, %eax
	ja	.L1708
	mulss	.LC30(%rip), %xmm1
	addss	.LC29(%rip), %xmm1
	cvttss2si	%xmm1, %eax
	sall	$24, %eax
.L1708:
	orl	%edx, %eax
	ret
	.p2align 4,,7
.L1719:
	mulss	.LC30(%rip), %xmm1
	addss	.LC29(%rip), %xmm1
	cvttss2si	%xmm1, %r8d
	movss	12(%rcx), %xmm1
	movl	%r8d, %edx
	sall	$16, %edx
	orl	%eax, %edx
	ucomiss	%xmm1, %xmm0
	jbe	.L1720
.L1715:
	xorl	%eax, %eax
	orl	%edx, %eax
	ret
	.p2align 4,,7
.L1717:
	mulss	.LC30(%rip), %xmm1
	addss	.LC29(%rip), %xmm1
	cvttss2si	%xmm1, %eax
	jmp	.L1705
	.p2align 4,,7
.L1718:
	mulss	.LC30(%rip), %xmm1
	addss	.LC29(%rip), %xmm1
	cvttss2si	%xmm1, %r8d
	movl	%r8d, %edx
	sall	$8, %edx
	jmp	.L1706
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11GetColorU32Eif
	.def	_ZN5ImGui11GetColorU32Eif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetColorU32Eif
_ZN5ImGui11GetColorU32Eif:
.LFB315:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	xorps	%xmm0, %xmm0
	movslq	%ecx, %rax
	addq	$328, %rax
	mulss	5120(%rdx), %xmm1
	salq	$4, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm4
	movss	4(%rax), %xmm3
	movss	8(%rax), %xmm2
	mulss	12(%rax), %xmm1
	xorl	%eax, %eax
	ucomiss	%xmm4, %xmm0
	ja	.L1722
	ucomiss	.LC28(%rip), %xmm4
	movl	$255, %eax
	jbe	.L1734
.L1722:
	xorl	%edx, %edx
	ucomiss	%xmm3, %xmm0
	ja	.L1723
	ucomiss	.LC28(%rip), %xmm3
	movl	$65280, %edx
	jbe	.L1735
.L1723:
	orl	%edx, %eax
	xorl	%edx, %edx
	ucomiss	%xmm2, %xmm0
	ja	.L1724
	ucomiss	.LC28(%rip), %xmm2
	movl	$16711680, %edx
	jbe	.L1736
.L1724:
	orl	%eax, %edx
	ucomiss	%xmm1, %xmm0
	ja	.L1732
.L1737:
	ucomiss	.LC28(%rip), %xmm1
	movl	$-16777216, %eax
	ja	.L1725
	mulss	.LC30(%rip), %xmm1
	addss	.LC29(%rip), %xmm1
	cvttss2si	%xmm1, %eax
	sall	$24, %eax
.L1725:
	orl	%edx, %eax
	ret
	.p2align 4,,7
.L1736:
	mulss	.LC30(%rip), %xmm2
	addss	.LC29(%rip), %xmm2
	cvttss2si	%xmm2, %ecx
	sall	$16, %ecx
	movl	%ecx, %edx
	orl	%eax, %edx
	ucomiss	%xmm1, %xmm0
	jbe	.L1737
.L1732:
	xorl	%eax, %eax
	orl	%edx, %eax
	ret
	.p2align 4,,7
.L1734:
	mulss	.LC30(%rip), %xmm4
	addss	.LC29(%rip), %xmm4
	cvttss2si	%xmm4, %eax
	jmp	.L1722
	.p2align 4,,7
.L1735:
	mulss	.LC30(%rip), %xmm3
	addss	.LC29(%rip), %xmm3
	cvttss2si	%xmm3, %ecx
	sall	$8, %ecx
	movl	%ecx, %edx
	jmp	.L1723
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11GetColorU32ERK6ImVec4
	.def	_ZN5ImGui11GetColorU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetColorU32ERK6ImVec4
_ZN5ImGui11GetColorU32ERK6ImVec4:
.LFB316:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	xorps	%xmm1, %xmm1
	movss	(%rcx), %xmm4
	movss	4(%rcx), %xmm3
	movss	5120(%rax), %xmm0
	xorl	%eax, %eax
	ucomiss	%xmm4, %xmm1
	movss	8(%rcx), %xmm2
	mulss	12(%rcx), %xmm0
	ja	.L1739
	ucomiss	.LC28(%rip), %xmm4
	movl	$255, %eax
	jbe	.L1751
.L1739:
	xorl	%edx, %edx
	ucomiss	%xmm3, %xmm1
	ja	.L1740
	ucomiss	.LC28(%rip), %xmm3
	movl	$65280, %edx
	jbe	.L1752
.L1740:
	orl	%edx, %eax
	xorl	%edx, %edx
	ucomiss	%xmm2, %xmm1
	ja	.L1741
	ucomiss	.LC28(%rip), %xmm2
	movl	$16711680, %edx
	jbe	.L1753
.L1741:
	orl	%eax, %edx
	ucomiss	%xmm0, %xmm1
	ja	.L1749
.L1754:
	ucomiss	.LC28(%rip), %xmm0
	movl	$-16777216, %eax
	ja	.L1742
	mulss	.LC30(%rip), %xmm0
	addss	.LC29(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	sall	$24, %eax
.L1742:
	orl	%edx, %eax
	ret
	.p2align 4,,7
.L1753:
	mulss	.LC30(%rip), %xmm2
	addss	.LC29(%rip), %xmm2
	cvttss2si	%xmm2, %ecx
	sall	$16, %ecx
	movl	%ecx, %edx
	orl	%eax, %edx
	ucomiss	%xmm0, %xmm1
	jbe	.L1754
.L1749:
	xorl	%eax, %eax
	orl	%edx, %eax
	ret
	.p2align 4,,7
.L1751:
	mulss	.LC30(%rip), %xmm4
	addss	.LC29(%rip), %xmm4
	cvttss2si	%xmm4, %eax
	jmp	.L1739
	.p2align 4,,7
.L1752:
	mulss	.LC30(%rip), %xmm3
	addss	.LC29(%rip), %xmm3
	cvttss2si	%xmm3, %ecx
	sall	$8, %ecx
	movl	%ecx, %edx
	jmp	.L1740
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_
	.def	_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_
_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_:
.LFB317:
	.seh_endprologue
	ucomiss	%xmm1, %xmm2
	ja	.L1760
	ucomiss	%xmm0, %xmm1
	movss	.LC78(%rip), %xmm3
	xorps	%xmm4, %xmm4
	ja	.L1761
.L1764:
	movaps	%xmm4, %xmm3
.L1757:
	movaps	%xmm1, %xmm4
	movaps	%xmm0, %xmm5
	subss	%xmm2, %xmm1
	movq	40(%rsp), %rax
	minss	%xmm2, %xmm4
	movss	.LC80(%rip), %xmm2
	subss	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	mulss	.LC37(%rip), %xmm5
	addss	%xmm2, %xmm5
	addss	%xmm0, %xmm2
	divss	%xmm5, %xmm1
	divss	%xmm2, %xmm4
	addss	%xmm3, %xmm1
	movss	.LC81(%rip), %xmm3
	andps	%xmm3, %xmm1
	movss	%xmm1, (%r9)
	movss	%xmm4, (%rax)
	movq	48(%rsp), %rax
	movss	%xmm0, (%rax)
	ret
	.p2align 4,,7
.L1760:
	movaps	%xmm1, %xmm3
	movaps	%xmm2, %xmm1
	movss	.LC20(%rip), %xmm4
	movaps	%xmm3, %xmm2
	ucomiss	%xmm0, %xmm1
	movss	.LC79(%rip), %xmm3
	jbe	.L1764
.L1761:
	movaps	%xmm0, %xmm4
	movaps	%xmm1, %xmm0
	movaps	%xmm4, %xmm1
	jmp	.L1757
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	.def	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_:
.LFB318:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movaps	%xmm1, %xmm6
	ucomiss	.LC9(%rip), %xmm1
	movq	128(%rsp), %rsi
	movq	136(%rsp), %rbx
	jp	.L1766
	jne	.L1766
	movss	%xmm2, (%rbx)
	movss	%xmm2, (%rsi)
	movss	%xmm2, (%r9)
.L1765:
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L1766:
	movss	.LC28(%rip), %xmm1
	movq	%r9, 40(%rsp)
	movss	%xmm2, 36(%rsp)
	call	fmodf
	divss	.LC82(%rip), %xmm0
	movaps	%xmm6, %xmm4
	movss	36(%rsp), %xmm2
	movq	40(%rsp), %r9
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm1
	cmpl	$4, %eax
	subss	%xmm1, %xmm0
	movss	.LC28(%rip), %xmm1
	movaps	%xmm1, %xmm5
	movaps	%xmm1, %xmm3
	mulss	%xmm0, %xmm4
	subss	%xmm6, %xmm3
	subss	%xmm4, %xmm5
	mulss	%xmm2, %xmm3
	movaps	%xmm5, %xmm4
	movaps	%xmm1, %xmm5
	mulss	%xmm2, %xmm4
	subss	%xmm0, %xmm5
	mulss	%xmm5, %xmm6
	subss	%xmm6, %xmm1
	mulss	%xmm2, %xmm1
	ja	.L1769
	leaq	.L1771(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rax, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L1771:
	.long	.L1770-.L1771
	.long	.L1772-.L1771
	.long	.L1773-.L1771
	.long	.L1774-.L1771
	.long	.L1775-.L1771
	.text
	.p2align 4,,7
.L1774:
	movss	%xmm3, (%r9)
	movss	%xmm4, (%rsi)
	movss	%xmm2, (%rbx)
	jmp	.L1765
	.p2align 4,,7
.L1773:
	movss	%xmm3, (%r9)
	movss	%xmm2, (%rsi)
	movss	%xmm1, (%rbx)
	jmp	.L1765
	.p2align 4,,7
.L1772:
	movss	%xmm4, (%r9)
	movss	%xmm2, (%rsi)
	movss	%xmm3, (%rbx)
	jmp	.L1765
	.p2align 4,,7
.L1770:
	movss	%xmm2, (%r9)
	movss	%xmm1, (%rsi)
	movss	%xmm3, (%rbx)
	jmp	.L1765
	.p2align 4,,7
.L1775:
	movss	%xmm1, (%r9)
	movss	%xmm3, (%rsi)
	movss	%xmm2, (%rbx)
	jmp	.L1765
	.p2align 4,,7
.L1769:
	movss	%xmm2, (%r9)
	movss	%xmm3, (%rsi)
	movss	%xmm4, (%rbx)
	jmp	.L1765
	.seh_endproc
	.p2align 4,,15
	.globl	_Z10ImFileOpenPKcS0_
	.def	_Z10ImFileOpenPKcS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10ImFileOpenPKcS0_
_Z10ImFileOpenPKcS0_:
.LFB319:
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
	cmpb	$0, (%rcx)
	movq	%rcx, %rdi
	movq	%rdx, %rbp
	je	.L1778
	movq	%rcx, %rbx
	xorl	%r12d, %r12d
	leaq	60(%rsp), %rsi
	jmp	.L1782
	.p2align 4,,7
.L1811:
	cmpl	$65536, %eax
	adcl	$0, %r12d
	cmpb	$0, (%rbx)
	je	.L1781
.L1782:
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	60(%rsp), %eax
	testl	%eax, %eax
	jne	.L1811
.L1781:
	incl	%r12d
	cmpb	$0, 0(%rbp)
	je	.L1795
.L1792:
	movq	%rbp, %rbx
	xorl	%r13d, %r13d
	jmp	.L1786
	.p2align 4,,7
.L1812:
	cmpl	$65536, %eax
	adcl	$0, %r13d
	cmpb	$0, (%rbx)
	je	.L1784
.L1786:
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %rbx
	movl	60(%rsp), %eax
	testl	%eax, %eax
	jne	.L1812
.L1784:
	leal	1(%r13), %edx
.L1783:
	leal	(%r12,%rdx), %esi
	cmpl	$7, %esi
	jle	.L1796
	movslq	%esi, %rcx
	movl	%edx, %r13d
	addq	%rcx, %rcx
.L1787:
	movq	GImGui(%rip), %rax
	incl	844(%rax)
.LEHB5:
	call	*232(%rax)
	movq	%rax, %rbx
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	call	*240(%rax)
.LEHE5:
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	movl	%r12d, %edx
	movq	%rbx, %rcx
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.167
	cmpl	%r12d, %esi
	jg	.L1788
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
.LEHB6:
	call	_assert
	movslq	%r12d, %r12
	movq	%rbp, %r8
	movl	%r13d, %edx
	leaq	(%rbx,%r12,2), %rsi
	xorl	%r9d, %r9d
	movq	%rsi, %rcx
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.167
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
.L1793:
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	*__imp__wfopen(%rip)
.LEHE6:
	testq	%rbx, %rbx
	je	.L1803
	movq	GImGui(%rip), %rdx
	movq	%rax, 40(%rsp)
	movq	%rbx, %rcx
	decl	844(%rdx)
	call	*240(%rdx)
	movq	40(%rsp), %rax
.L1803:
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L1788:
	movslq	%r12d, %r12
	xorl	%r9d, %r9d
	movq	%rbp, %r8
	leaq	(%rbx,%r12,2), %rsi
	movl	%r13d, %edx
	movq	%rsi, %rcx
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.167
	jmp	.L1793
	.p2align 4,,7
.L1796:
	movl	%edx, %r13d
	movl	$16, %ecx
	jmp	.L1787
.L1778:
	cmpb	$0, (%rdx)
	je	.L1797
	movl	$1, %r12d
	leaq	60(%rsp), %rsi
	jmp	.L1792
.L1795:
	movl	$1, %edx
	jmp	.L1783
.L1797:
	movl	$16, %ecx
	movl	$2, %esi
	movl	$1, %r13d
	movl	$1, %r12d
	jmp	.L1787
.L1798:
	testq	%rbx, %rbx
	je	.L1791
	movq	GImGui(%rip), %rdx
	movq	%rax, 40(%rsp)
	movq	%rbx, %rcx
	decl	844(%rdx)
	call	*240(%rdx)
	movq	40(%rsp), %rax
.L1791:
	movq	%rax, %rcx
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
.L1799:
	jmp	.L1791
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA319:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE319-.LLSDACSB319
.LLSDACSB319:
	.uleb128 .LEHB5-.LFB319
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L1799-.LFB319
	.uleb128 0
	.uleb128 .LEHB6-.LFB319
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L1798-.LFB319
	.uleb128 0
	.uleb128 .LEHB7-.LFB319
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE319:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC83:
	.ascii "wt\0"
.LC84:
	.ascii "###\0"
.LC85:
	.ascii "[%s]\12\0"
.LC86:
	.ascii "Pos=%d,%d\12\0"
.LC87:
	.ascii "Size=%d,%d\12\0"
.LC88:
	.ascii "Collapsed=%d\12\0"
	.text
	.p2align 4,,15
	.def	_ZL21SaveIniSettingsToDiskPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL21SaveIniSettingsToDiskPKc
_ZL21SaveIniSettingsToDiskPKc:
.LFB407:
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
	.seh_endprologue
	testq	%rcx, %rcx
	movq	GImGui(%rip), %r12
	movq	%rcx, 40(%rsp)
	movl	$0x00000000, 6128(%r12)
	je	.L1813
	movl	5976(%r12), %eax
	xorl	%edi, %edi
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.L1834
	leaq	1024+_ZZ6ImHashPKvijE9crc32_lut(%rip), %r14
	movdqa	.LC23(%rip), %xmm6
	pxor	%xmm7, %xmm7
	movdqa	.LC24(%rip), %xmm10
	movdqa	.LC25(%rip), %xmm9
	movdqa	.LC26(%rip), %xmm8
	jmp	.L1855
	.p2align 4,,7
.L1819:
	movq	5984(%r12), %rax
	movq	(%rax,%rdi), %r15
	testb	$1, 13(%r15)
	je	.L1857
.L1820:
	movl	5976(%r12), %eax
	incl	%r13d
	addq	$8, %rdi
	cmpl	%r13d, %eax
	je	.L1834
.L1855:
	cmpl	%r13d, %eax
	jg	.L1819
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L1819
	.p2align 4,,7
.L1857:
	movl	4+_ZZ6ImHashPKvijE9crc32_lut(%rip), %eax
	movq	(%r15), %rdx
	leaq	_ZZ6ImHashPKvijE9crc32_lut(%rip), %r8
	movq	GImGui(%rip), %rsi
	testl	%eax, %eax
	jne	.L1824
	movdqa	%xmm6, %xmm3
	movq	%r8, %rax
	.p2align 4,,7
.L1825:
	movdqa	%xmm3, %xmm0
	movdqa	%xmm7, %xmm4
	movdqa	%xmm3, %xmm1
	addq	$16, %rax
	paddd	%xmm10, %xmm3
	pand	%xmm9, %xmm0
	psrld	$1, %xmm1
	movdqa	%xmm7, %xmm2
	movdqa	%xmm7, %xmm5
	psubd	%xmm0, %xmm4
	movdqa	%xmm4, %xmm0
	movdqa	%xmm7, %xmm4
	pand	%xmm8, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm9, %xmm1
	psubd	%xmm1, %xmm2
	pand	%xmm8, %xmm2
	movdqa	%xmm7, %xmm1
	pxor	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	psrld	$1, %xmm2
	pand	%xmm9, %xmm0
	psubd	%xmm0, %xmm1
	pand	%xmm8, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm9, %xmm0
	psubd	%xmm0, %xmm5
	movdqa	%xmm5, %xmm0
	movdqa	%xmm7, %xmm5
	pand	%xmm8, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm9, %xmm1
	psubd	%xmm1, %xmm2
	pand	%xmm8, %xmm2
	movdqa	%xmm7, %xmm1
	pxor	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	psrld	$1, %xmm2
	pand	%xmm9, %xmm0
	psubd	%xmm0, %xmm1
	pand	%xmm8, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm9, %xmm0
	psubd	%xmm0, %xmm4
	movdqa	%xmm4, %xmm0
	pand	%xmm8, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm9, %xmm1
	psubd	%xmm1, %xmm5
	movdqa	%xmm5, %xmm1
	pand	%xmm8, %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%r14, %rax
	jne	.L1825
.L1824:
	leaq	1(%rdx), %rcx
	movzbl	(%rdx), %edx
	movl	$-1, %eax
	testb	%dl, %dl
	jne	.L1829
	jmp	.L1858
	.p2align 4,,7
.L1856:
	movl	%eax, %r9d
	movzbl	%al, %eax
	shrl	$8, %r9d
.L1827:
	xorl	%edx, %eax
	incq	%rcx
	movzbl	-1(%rcx), %edx
	movzbl	%al, %eax
	xorl	(%r8,%rax,4), %r9d
	testb	%dl, %dl
	movl	%r9d, %eax
	je	.L1859
.L1829:
	cmpb	$35, %dl
	jne	.L1856
	cmpb	$35, (%rcx)
	jne	.L1856
	cmpb	$35, 1(%rcx)
	jne	.L1856
	movl	$255, %eax
	movl	$16777215, %r9d
	jmp	.L1827
	.p2align 4,,7
.L1859:
	notl	%eax
	movl	%eax, %ebx
.L1822:
	movl	6112(%rsi), %edx
	testl	%edx, %edx
	je	.L1830
	xorl	%r9d, %r9d
	xorl	%ebp, %ebp
	jmp	.L1833
	.p2align 4,,7
.L1831:
	movq	%r9, %rdx
	addq	6120(%rsi), %rdx
	cmpl	%ebx, 8(%rdx)
	je	.L1832
.L1860:
	movl	6112(%rsi), %edx
	incl	%ebp
	addq	$32, %r9
	cmpl	%ebp, %edx
	je	.L1830
.L1833:
	cmpl	%ebp, %edx
	jg	.L1831
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	movq	%r9, 32(%rsp)
	call	_assert
	movq	32(%rsp), %r9
	movq	%r9, %rdx
	addq	6120(%rsi), %rdx
	cmpl	%ebx, 8(%rdx)
	jne	.L1860
.L1832:
	movq	28(%r15), %rax
	movq	%rax, 12(%rdx)
	movq	44(%r15), %rax
	movq	%rax, 20(%rdx)
	movzbl	139(%r15), %eax
	movb	%al, 28(%rdx)
	jmp	.L1820
	.p2align 4,,7
.L1830:
	movq	28(%r15), %rax
	movq	%rax, 12
	ud2
	.p2align 4,,7
.L1834:
	movq	40(%rsp), %rcx
	leaq	.LC83(%rip), %rdx
	call	_Z10ImFileOpenPKcS0_
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1813
	movl	6112(%r12), %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	testl	%eax, %eax
	jne	.L1853
	jmp	.L1841
	.p2align 4,,7
.L1837:
	movq	%rdi, %rbx
	addq	6120(%r12), %rbx
	movss	12(%rbx), %xmm0
	ucomiss	.LC21(%rip), %xmm0
	jp	.L1845
	je	.L1838
.L1845:
	movq	(%rbx), %r13
	leaq	.LC84(%rip), %rdx
	movq	%r13, %rcx
	call	strstr
	leaq	.LC85(%rip), %rdx
	testq	%rax, %rax
	movq	%r13, %r8
	cmovne	%rax, %r8
	movq	%rbp, %rcx
	call	fprintf
	movss	16(%rbx), %xmm0
	leaq	.LC86(%rip), %rdx
	movss	12(%rbx), %xmm1
	movq	%rbp, %rcx
	cvttss2si	%xmm0, %r9d
	cvttss2si	%xmm1, %r8d
	call	fprintf
	movss	24(%rbx), %xmm2
	leaq	.LC87(%rip), %rdx
	movss	20(%rbx), %xmm3
	movq	%rbp, %rcx
	cvttss2si	%xmm3, %r8d
	cvttss2si	%xmm2, %r9d
	call	fprintf
	movzbl	28(%rbx), %r8d
	leaq	.LC88(%rip), %rdx
	movq	%rbp, %rcx
	call	fprintf
	movq	%rbp, %rdx
	movl	$10, %ecx
	call	fputc
.L1838:
	movl	6112(%r12), %eax
	incl	%esi
	addq	$32, %rdi
	cmpl	%esi, %eax
	je	.L1841
.L1853:
	cmpl	%esi, %eax
	jg	.L1837
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L1837
	.p2align 4,,7
.L1841:
	movaps	48(%rsp), %xmm6
	movq	%rbp, %rcx
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	movaps	96(%rsp), %xmm9
	movaps	112(%rsp), %xmm10
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	fclose
.L1813:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	movaps	96(%rsp), %xmm9
	movaps	112(%rsp), %xmm10
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
.L1858:
	xorl	%ebx, %ebx
	jmp	.L1822
	.seh_endproc
	.section .rdata,"dr"
.LC89:
	.ascii "filename && file_open_mode\0"
	.text
	.p2align 4,,15
	.globl	_Z18ImFileLoadToMemoryPKcS0_Pii
	.def	_Z18ImFileLoadToMemoryPKcS0_Pii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18ImFileLoadToMemoryPKcS0_Pii
_Z18ImFileLoadToMemoryPKcS0_Pii:
.LFB320:
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
	movl	%r9d, %r12d
	je	.L1873
	testq	%rdx, %rdx
	je	.L1873
.L1862:
	testq	%rdi, %rdi
	je	.L1864
	movl	$0, (%rdi)
.L1864:
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	call	_Z10ImFileOpenPKcS0_
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1889
	xorl	%edx, %edx
	movl	$2, %r8d
	movq	%rax, %rcx
	call	fseek
	testl	%eax, %eax
	je	.L1892
.L1866:
	movq	%rbx, %rcx
	call	fclose
.L1889:
	xorl	%esi, %esi
.L1878:
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L1873:
	leaq	.LC15(%rip), %rdx
	leaq	.LC89(%rip), %rcx
	movl	$1319, %r8d
	call	_assert
	jmp	.L1862
	.p2align 4,,7
.L1892:
	movq	%rbx, %rcx
	call	ftell
	cmpl	$-1, %eax
	movl	%eax, %r13d
	je	.L1866
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rcx
	call	fseek
	testl	%eax, %eax
	jne	.L1866
	movq	GImGui(%rip), %rax
	leal	0(%r13,%r12), %ecx
	movslq	%ecx, %rcx
	incl	844(%rax)
	call	*232(%rax)
	testq	%rax, %rax
	movq	%rax, %rsi
	je	.L1893
	movslq	%r13d, %rbp
	movq	%rbx, %r9
	movl	$1, %edx
	movq	%rbp, %r8
	movq	%rsi, %rcx
	call	fread
	cmpq	%rax, %rbp
	jne	.L1894
	testl	%r12d, %r12d
	jle	.L1869
	leaq	(%rsi,%rbp), %rcx
	movslq	%r12d, %r8
	xorl	%edx, %edx
	call	memset
.L1869:
	movq	%rbx, %rcx
	call	fclose
	testq	%rdi, %rdi
	je	.L1878
	movq	%rsi, %rax
	movl	%r13d, (%rdi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L1894:
	movq	%rbx, %rcx
	call	fclose
	movq	GImGui(%rip), %rax
	movq	%rsi, %rcx
	xorl	%esi, %esi
	decl	844(%rax)
	call	*240(%rax)
	jmp	.L1878
	.p2align 4,,7
.L1893:
	movq	%rbx, %rcx
	call	fclose
	.p2align 4,,5
	jmp	.L1878
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage5ClearEv
	.def	_ZN12ImGuiStorage5ClearEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage5ClearEv
_ZN12ImGuiStorage5ClearEv:
.LFB321:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L1895
	movq	GImGui(%rip), %rax
	movl	$0, 4(%rbx)
	movl	$0, (%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 8(%rbx)
.L1895:
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
.LFB323:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movslq	(%rcx), %rbx
	movq	8(%rcx), %r11
	salq	$4, %rbx
	leaq	(%r11,%rbx), %rax
	shrq	$4, %rbx
.L1906:
	testl	%ebx, %ebx
	jle	.L1901
	movl	%ebx, %r9d
	sarl	%r9d
	movslq	%r9d, %rcx
	salq	$4, %rcx
	addq	%r11, %rcx
	cmpl	(%rcx), %edx
	jbe	.L1904
	jmp	.L1917
	.p2align 4,,7
.L1914:
	movl	%r9d, %r10d
	sarl	%r10d
	movslq	%r10d, %rcx
	salq	$4, %rcx
	addq	%r11, %rcx
	cmpl	(%rcx), %edx
	ja	.L1902
	movl	%r10d, %r9d
.L1904:
	testl	%r9d, %r9d
	jne	.L1914
.L1901:
	cmpq	%r11, %rax
	je	.L1910
	cmpl	(%r11), %edx
	je	.L1908
.L1910:
	movl	%r8d, %eax
	popq	%rbx
	ret
.L1917:
	movl	%r9d, %r10d
	movl	%ebx, %r9d
	.p2align 4,,7
.L1902:
	incl	%r10d
	movl	%r9d, %ebx
	leaq	16(%rcx), %r11
	subl	%r10d, %ebx
	jmp	.L1906
	.p2align 4,,7
.L1908:
	movl	8(%r11), %eax
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK12ImGuiStorage7GetBoolEjb
	.def	_ZNK12ImGuiStorage7GetBoolEjb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK12ImGuiStorage7GetBoolEjb
_ZNK12ImGuiStorage7GetBoolEjb:
.LFB324:
	pushq	%rbx
	.seh_pushreg	%rbx
	.seh_endprologue
	movslq	(%rcx), %r11
	movq	8(%rcx), %r10
	movzbl	%r8b, %r8d
	salq	$4, %r11
	leaq	(%r10,%r11), %rbx
	shrq	$4, %r11
.L1924:
	testl	%r11d, %r11d
	jle	.L1919
	movl	%r11d, %ecx
	sarl	%ecx
	movslq	%ecx, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %edx
	jbe	.L1922
	jmp	.L1934
	.p2align 4,,7
.L1931:
	movl	%ecx, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %edx
	ja	.L1920
	movl	%r9d, %ecx
.L1922:
	testl	%ecx, %ecx
	jne	.L1931
.L1919:
	cmpq	%r10, %rbx
	je	.L1925
	cmpl	(%r10), %edx
	jne	.L1925
	movl	8(%r10), %r8d
.L1925:
	testl	%r8d, %r8d
	setne	%al
	popq	%rbx
	ret
.L1934:
	movl	%ecx, %r9d
	movl	%r11d, %ecx
	.p2align 4,,7
.L1920:
	incl	%r9d
	leaq	16(%rax), %r10
	subl	%r9d, %ecx
	movl	%ecx, %r11d
	jmp	.L1924
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK12ImGuiStorage8GetFloatEjf
	.def	_ZNK12ImGuiStorage8GetFloatEjf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK12ImGuiStorage8GetFloatEjf
_ZNK12ImGuiStorage8GetFloatEjf:
.LFB325:
	.seh_endprologue
	movslq	(%rcx), %r10
	movq	8(%rcx), %r9
	salq	$4, %r10
	leaq	(%r9,%r10), %r11
	shrq	$4, %r10
.L1941:
	testl	%r10d, %r10d
	jle	.L1936
	movl	%r10d, %ecx
	sarl	%ecx
	movslq	%ecx, %rax
	salq	$4, %rax
	addq	%r9, %rax
	cmpl	(%rax), %edx
	jbe	.L1939
	jmp	.L1952
	.p2align 4,,7
.L1949:
	movl	%ecx, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r9, %rax
	cmpl	(%rax), %edx
	ja	.L1937
	movl	%r8d, %ecx
.L1939:
	testl	%ecx, %ecx
	jne	.L1949
.L1936:
	cmpq	%r9, %r11
	je	.L1945
	cmpl	(%r9), %edx
	je	.L1943
.L1945:
	movaps	%xmm2, %xmm0
	.p2align 4,,2
	ret
.L1952:
	movl	%ecx, %r8d
	movl	%r10d, %ecx
	.p2align 4,,7
.L1937:
	incl	%r8d
	leaq	16(%rax), %r9
	subl	%r8d, %ecx
	movl	%ecx, %r10d
	jmp	.L1941
	.p2align 4,,7
.L1943:
	movss	8(%r9), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZNK12ImGuiStorage10GetVoidPtrEj
	.def	_ZNK12ImGuiStorage10GetVoidPtrEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK12ImGuiStorage10GetVoidPtrEj
_ZNK12ImGuiStorage10GetVoidPtrEj:
.LFB326:
	.seh_endprologue
	movslq	(%rcx), %r10
	movq	8(%rcx), %r9
	salq	$4, %r10
	leaq	(%r9,%r10), %r11
	shrq	$4, %r10
.L1959:
	testl	%r10d, %r10d
	jle	.L1954
	movl	%r10d, %ecx
	sarl	%ecx
	movslq	%ecx, %rax
	salq	$4, %rax
	addq	%r9, %rax
	cmpl	(%rax), %edx
	jbe	.L1957
	jmp	.L1970
	.p2align 4,,7
.L1967:
	movl	%ecx, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r9, %rax
	cmpl	(%rax), %edx
	ja	.L1955
	movl	%r8d, %ecx
.L1957:
	testl	%ecx, %ecx
	jne	.L1967
.L1954:
	cmpq	%r9, %r11
	je	.L1963
	cmpl	(%r9), %edx
	je	.L1961
.L1963:
	xorl	%eax, %eax
	.p2align 4,,3
	ret
.L1970:
	movl	%ecx, %r8d
	movl	%r10d, %ecx
	.p2align 4,,7
.L1955:
	incl	%r8d
	leaq	16(%rax), %r9
	subl	%r8d, %ecx
	movl	%ecx, %r10d
	jmp	.L1959
	.p2align 4,,7
.L1961:
	movq	8(%r9), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC90:
	.ascii "it >= Data && it <= Data+Size\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage10GetBoolRefEjb
	.def	_ZN12ImGuiStorage10GetBoolRefEjb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage10GetBoolRefEjb
_ZN12ImGuiStorage10GetBoolRefEjb:
.LFB328:
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
	movslq	(%rcx), %r11
	movq	8(%rcx), %rax
	movq	%rcx, %rsi
	movl	%edx, %ebx
	movl	%r8d, %edi
	movq	%rax, %rbp
	movq	%r11, %r9
	salq	$4, %r11
	leaq	(%rax,%r11), %r10
	shrq	$4, %r11
.L1977:
	testl	%r11d, %r11d
	jle	.L1972
	movl	%r11d, %ecx
	sarl	%ecx
	movslq	%ecx, %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	cmpl	(%rdx), %ebx
	jbe	.L1975
	jmp	.L2003
	.p2align 4,,7
.L2000:
	movl	%ecx, %r8d
	sarl	%r8d
	movslq	%r8d, %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	cmpl	(%rdx), %ebx
	ja	.L1973
	movl	%r8d, %ecx
.L1975:
	testl	%ecx, %ecx
	jne	.L2000
.L1972:
	cmpq	%rbp, %r10
	je	.L1978
	cmpl	0(%rbp), %ebx
	je	.L1979
.L1978:
	cmpq	%rbp, %r10
	.p2align 4,,2
	jb	.L1989
	cmpq	%rbp, %rax
	.p2align 4,,2
	ja	.L1989
	subq	%rax, %rbp
	movq	%rbp, %r13
	sarq	$4, %r13
	cmpl	%r9d, 4(%rsi)
	je	.L2004
.L1980:
	movslq	%r9d, %r8
	cmpq	%r8, %r13
	jge	.L1986
	subq	%r13, %r8
	incq	%r13
	leaq	(%rax,%rbp), %rdx
	salq	$4, %r13
	salq	$4, %r8
	leaq	(%rax,%r13), %rcx
	call	memmove
	movl	(%rsi), %r9d
	movq	8(%rsi), %rax
.L1986:
	addq	%rax, %rbp
	movzbl	%dil, %edi
	incl	%r9d
	movl	%ebx, 0(%rbp)
	movl	%edi, 8(%rbp)
	movl	%r9d, (%rsi)
.L1979:
	leaq	8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L2003:
	movl	%ecx, %r8d
	movl	%r11d, %ecx
	.p2align 4,,7
.L1973:
	incl	%r8d
	leaq	16(%rdx), %rbp
	subl	%r8d, %ecx
	movl	%ecx, %r11d
	jmp	.L1977
	.p2align 4,,7
.L1989:
	leaq	.LC10(%rip), %rdx
	leaq	.LC90(%rip), %rcx
	movl	$888, %r8d
	call	_assert
	movq	8(%rsi), %rax
	movl	(%rsi), %r9d
	subq	%rax, %rbp
	movq	%rbp, %r13
	sarq	$4, %r13
	cmpl	%r9d, 4(%rsi)
	jne	.L1980
.L2004:
	testl	%r9d, %r9d
	je	.L1991
	leal	(%r9,%r9), %r14d
	cmpl	%r14d, %r9d
	jge	.L1980
	movslq	%r14d, %rcx
	salq	$4, %rcx
	jmp	.L1981
	.p2align 4,,7
.L1991:
	movl	$64, %ecx
	movl	$4, %r14d
.L1981:
	movq	GImGui(%rip), %rax
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rsi), %rdx
	movq	%rax, %r12
	testq	%rdx, %rdx
	je	.L1982
	movslq	(%rsi), %r8
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rsi), %rdx
	movq	GImGui(%rip), %rax
	testq	%rdx, %rdx
	je	.L1984
	decl	844(%rax)
.L1984:
	movq	%rdx, %rcx
	call	*240(%rax)
	movq	%r12, 8(%rsi)
	movq	%r12, %rax
	movl	%r14d, 4(%rsi)
	movl	(%rsi), %r9d
	jmp	.L1980
.L1982:
	movq	GImGui(%rip), %rax
	jmp	.L1984
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage9SetAllIntEi
	.def	_ZN12ImGuiStorage9SetAllIntEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage9SetAllIntEi
_ZN12ImGuiStorage9SetAllIntEi:
.LFB335:
	.seh_endprologue
	movl	(%rcx), %eax
	testl	%eax, %eax
	jle	.L2005
	leal	-1(%rax), %r9d
	xorl	%eax, %eax
	incq	%r9
	salq	$4, %r9
	.p2align 4,,7
.L2008:
	movq	8(%rcx), %r8
	movl	%edx, 8(%r8,%rax)
	addq	$16, %rax
	cmpq	%r9, %rax
	jne	.L2008
.L2005:
	rep ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN15ImGuiTextFilter9TextRange5splitEcR8ImVectorIS0_E
	.def	_ZN15ImGuiTextFilter9TextRange5splitEcR8ImVectorIS0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN15ImGuiTextFilter9TextRange5splitEcR8ImVectorIS0_E
_ZN15ImGuiTextFilter9TextRange5splitEcR8ImVectorIS0_E:
.LFB340:
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
	movl	4(%r8), %eax
	movq	%rcx, %r15
	movq	%r8, %rdi
	movl	%edx, %ebp
	testl	%eax, %eax
	jns	.L2010
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rdi), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L2011
	movslq	(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2013
	decl	844(%rax)
.L2013:
	call	*240(%rax)
	movq	%rbx, 8(%rdi)
	movl	$0, 4(%rdi)
.L2010:
	movq	(%r15), %r13
	movq	8(%r15), %rax
	movl	$0, (%rdi)
	leaq	1(%r13), %rbx
	cmpq	%rax, %r13
	jb	.L2035
	jmp	.L2009
	.p2align 4,,7
.L2016:
	incq	%rbx
	cmpq	%rax, %rsi
	jnb	.L2039
.L2035:
	cmpb	%bpl, -1(%rbx)
	leaq	-1(%rbx), %r12
	movq	%rbx, %rsi
	jne	.L2016
	movslq	(%rdi), %r8
	cmpl	4(%rdi), %r8d
	je	.L2017
	movq	8(%rdi), %rax
	leal	1(%r8), %edx
.L2018:
	salq	$4, %r8
	movl	%edx, (%rdi)
	addq	%r8, %rax
	movq	%r13, (%rax)
	movq	%r12, 8(%rax)
	movq	%rbx, %r13
	movq	8(%r15), %rax
	incq	%rbx
	cmpq	%rax, %rsi
	jb	.L2035
	.p2align 4,,7
.L2039:
	cmpq	%rsi, %r13
	je	.L2009
	movslq	(%rdi), %rdx
	cmpl	4(%rdi), %edx
	je	.L2026
	movq	8(%rdi), %rax
	leal	1(%rdx), %ecx
.L2027:
	salq	$4, %rdx
	movl	%ecx, (%rdi)
	addq	%rdx, %rax
	movq	%r13, (%rax)
	movq	%rsi, 8(%rax)
.L2009:
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
.L2017:
	testl	%r8d, %r8d
	leal	1(%r8), %edx
	movl	$8, %eax
	je	.L2019
	movl	%r8d, %eax
	shrl	$31, %eax
	addl	%r8d, %eax
	sarl	%eax
	addl	%r8d, %eax
.L2019:
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	cmpl	%eax, %r8d
	movl	%eax, %r14d
	jl	.L2020
	movq	8(%rdi), %rax
	jmp	.L2018
	.p2align 4,,7
.L2026:
	testl	%edx, %edx
	leal	1(%rdx), %ecx
	movl	$8, %eax
	je	.L2028
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L2028:
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	cmpl	%eax, %edx
	movl	%eax, %ebx
	jl	.L2029
	movq	8(%rdi), %rax
	jmp	.L2027
	.p2align 4,,7
.L2020:
	movq	GImGui(%rip), %rax
	movslq	%r14d, %rcx
	salq	$4, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rdi), %rcx
	movq	%rax, 40(%rsp)
	testq	%rcx, %rcx
	je	.L2021
	movslq	(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2023
	decl	844(%rax)
.L2023:
	call	*240(%rax)
	movslq	(%rdi), %r8
	movq	40(%rsp), %rax
	movl	%r14d, 4(%rdi)
	movq	%rax, 8(%rdi)
	leal	1(%r8), %edx
	jmp	.L2018
	.p2align 4,,7
.L2011:
	movq	GImGui(%rip), %rax
	jmp	.L2013
	.p2align 4,,7
.L2029:
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	salq	$4, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rdi), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L2030
	movslq	(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2032
	decl	844(%rax)
.L2032:
	call	*240(%rax)
	movslq	(%rdi), %rdx
	movq	%rbp, 8(%rdi)
	movq	%rbp, %rax
	movl	%ebx, 4(%rdi)
	leal	1(%rdx), %ecx
	jmp	.L2027
.L2021:
	movq	GImGui(%rip), %rax
	jmp	.L2023
.L2030:
	movq	GImGui(%rip), %rax
	jmp	.L2032
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN15ImGuiTextFilter5BuildEv
	.def	_ZN15ImGuiTextFilter5BuildEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN15ImGuiTextFilter5BuildEv
_ZN15ImGuiTextFilter5BuildEv:
.LFB341:
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
	movq	%rcx, %rsi
	leaq	256(%rcx), %rbx
	testl	%eax, %eax
	jns	.L2041
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	incl	844(%rax)
	call	*232(%rax)
	movq	264(%rsi), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L2042
	movslq	256(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	264(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2044
	decl	844(%rax)
.L2044:
	call	*240(%rax)
	movq	%rdi, 264(%rsi)
	movl	$0, 260(%rsi)
.L2041:
	movq	%rsi, %rcx
	movl	$0, 256(%rsi)
	xorl	%edi, %edi
	call	strlen
	leaq	32(%rsp), %rcx
	addq	%rsi, %rax
	movq	%rbx, %r8
	movl	$44, %edx
	movq	%rsi, 32(%rsp)
	movq	%rax, 40(%rsp)
	call	_ZN15ImGuiTextFilter9TextRange5splitEcR8ImVectorIS0_E
	movl	256(%rsi), %r10d
	xorl	%ebx, %ebx
	movl	$0, 272(%rsi)
	testl	%r10d, %r10d
	jne	.L2067
	jmp	.L2040
	.p2align 4,,7
.L2060:
	movq	%rdi, %rdx
	addq	264(%rsi), %rdx
	movq	(%rdx), %rax
	cmpq	8(%rdx), %rax
	je	.L2054
.L2055:
	cmpb	$45, (%rax)
	je	.L2069
	incl	272(%rsi)
.L2069:
	movl	256(%rsi), %r10d
.L2054:
	incl	%ebx
	addq	$16, %rdi
	cmpl	%r10d, %ebx
	je	.L2040
.L2067:
	cmpl	%ebx, %r10d
	jle	.L2071
.L2046:
	movq	%rdi, %rcx
	addq	264(%rsi), %rcx
	movq	(%rcx), %r8
	movq	8(%rcx), %rdx
	cmpq	%r8, %rdx
	jbe	.L2052
	movzbl	(%r8), %eax
	cmpb	$32, %al
	je	.L2048
	cmpb	$9, %al
	je	.L2048
	.p2align 4,,7
.L2049:
	movzbl	-1(%rdx), %eax
	cmpb	$32, %al
	je	.L2063
	cmpb	$9, %al
	je	.L2063
	.p2align 4,,7
.L2052:
	cmpl	%r10d, %ebx
	jl	.L2060
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	%rdi, %rdx
	addq	264(%rsi), %rdx
	movq	(%rdx), %rax
	cmpq	8(%rdx), %rax
	je	.L2069
	cmpl	%ebx, 256(%rsi)
	jg	.L2055
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	264(%rsi), %rax
	movq	(%rax,%rdi), %rax
	jmp	.L2055
	.p2align 4,,7
.L2063:
	leaq	-1(%rdx), %rax
.L2066:
	cmpq	%r8, %rax
	movq	%rax, 8(%rcx)
	jbe	.L2052
	movzbl	-1(%rax), %edx
	decq	%rax
	cmpb	$32, %dl
	je	.L2066
	cmpb	$9, %dl
	jne	.L2052
	jmp	.L2066
	.p2align 4,,7
.L2071:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movl	256(%rsi), %r10d
	jmp	.L2046
	.p2align 4,,7
.L2048:
	leaq	1(%r8), %rax
	.p2align 4,,7
.L2065:
	cmpq	%rdx, %rax
	movq	%rax, %r8
	movq	%rax, (%rcx)
	je	.L2052
	movzbl	(%rax), %r9d
	incq	%rax
	cmpb	$32, %r9b
	je	.L2065
	cmpb	$9, %r9b
	jne	.L2049
	jmp	.L2065
.L2040:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L2042:
	movq	GImGui(%rip), %rax
	jmp	.L2044
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN15ImGuiTextFilterC2EPKc
	.def	_ZN15ImGuiTextFilterC2EPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN15ImGuiTextFilterC2EPKc
_ZN15ImGuiTextFilterC2EPKc:
.LFB337:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rbx
	movl	$0, 260(%rcx)
	movl	$0, 256(%rcx)
	movq	$0, 264(%rcx)
	je	.L2073
	movl	$256, %r8d
	call	strncpy
	movb	$0, 255(%rbx)
	movq	%rbx, %rcx
.LEHB8:
	call	_ZN15ImGuiTextFilter5BuildEv
.LEHE8:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L2073:
	movb	$0, (%rcx)
	movl	$0, 272(%rcx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L2077:
	movq	264(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L2076
	movq	GImGui(%rip), %rdx
	decl	844(%rdx)
	call	*240(%rdx)
.L2076:
	movq	%rsi, %rcx
.LEHB9:
	call	_Unwind_Resume
	nop
.LEHE9:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA337:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE337-.LLSDACSB337
.LLSDACSB337:
	.uleb128 .LEHB8-.LFB337
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L2077-.LFB337
	.uleb128 0
	.uleb128 .LEHB9-.LFB337
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE337:
	.text
	.seh_endproc
	.globl	_ZN15ImGuiTextFilterC1EPKc
	.def	_ZN15ImGuiTextFilterC1EPKc;	.scl	2;	.type	32;	.endef
	.set	_ZN15ImGuiTextFilterC1EPKc,_ZN15ImGuiTextFilterC2EPKc
	.section .rdata,"dr"
.LC91:
	.ascii "\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_
	.def	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_
_ZNK15ImGuiTextFilter10PassFilterEPKcS1_:
.LFB342:
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
	movl	256(%rcx), %eax
	movq	%rcx, 144(%rsp)
	movq	%rdx, 152(%rsp)
	movq	%r8, %r14
	testl	%eax, %eax
	je	.L2100
	cmpq	$0, 152(%rsp)
	leaq	.LC91(%rip), %rdx
	movq	__imp_toupper(%rip), %rsi
	cmovne	152(%rsp), %rdx
	movq	$0, 56(%rsp)
	movl	$0, 44(%rsp)
	movq	%rsi, %r13
	movq	%rdx, 152(%rsp)
	.p2align 4,,7
.L2104:
	cmpl	44(%rsp), %eax
	jle	.L2118
.L2085:
	movq	144(%rsp), %rdx
	movq	56(%rsp), %rax
	addq	264(%rdx), %rax
	movq	(%rax), %rbx
	movq	8(%rax), %rbp
	cmpq	%rbp, %rbx
	je	.L2086
	movzbl	(%rbx), %edi
	cmpb	$45, %dil
	je	.L2119
	testq	%rbp, %rbp
	je	.L2120
.L2095:
	movsbl	%dil, %ecx
	call	*%rsi
	leaq	1(%rbx), %rdx
	movsbl	%al, %eax
	movl	%eax, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	152(%rsp), %rdx
	leaq	1(%rdx), %r12
	jmp	.L2102
	.p2align 4,,7
.L2098:
	incq	%r12
.L2102:
	testq	%r14, %r14
	je	.L2121
	leaq	-1(%r12), %rax
	cmpq	%rax, %r14
	jbe	.L2086
	movsbl	-1(%r12), %ecx
.L2097:
	call	*%rsi
	cmpl	40(%rsp), %eax
	jne	.L2098
	movq	48(%rsp), %rax
	movq	%r12, %r15
	cmpq	%rbp, %rax
	movq	%rax, %rbx
	jb	.L2101
	jmp	.L2099
	.p2align 4,,7
.L2122:
	incq	%rbx
	incq	%r15
	cmpq	%rbx, %rbp
	je	.L2100
.L2101:
	movsbl	(%r15), %ecx
	call	*%rsi
	movsbl	(%rbx), %ecx
	movl	%eax, %edi
	call	*%rsi
	cmpl	%eax, %edi
	je	.L2122
.L2099:
	cmpq	%rbx, %rbp
	jne	.L2098
	.p2align 4,,7
.L2100:
	movl	$1, %eax
	jmp	.L2116
	.p2align 4,,7
.L2121:
	movsbl	-1(%r12), %ecx
	testb	%cl, %cl
	jne	.L2097
.L2086:
	movq	144(%rsp), %rax
	incl	44(%rsp)
	movl	44(%rsp), %edx
	addq	$16, 56(%rsp)
	movl	256(%rax), %eax
	cmpl	%edx, %eax
	jne	.L2104
	movq	144(%rsp), %rax
	movl	272(%rax), %eax
	testl	%eax, %eax
	sete	%al
	jmp	.L2116
.L2118:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$857, %r8d
	call	_assert
	jmp	.L2085
.L2119:
	testq	%rbp, %rbp
	je	.L2123
.L2088:
	movsbl	1(%rbx), %ecx
	.p2align 4,,4
	call	*%r13
	leaq	2(%rbx), %rdx
	movsbl	%al, %eax
	movl	%eax, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	152(%rsp), %rdx
	leaq	1(%rdx), %r12
	jmp	.L2094
	.p2align 4,,7
.L2091:
	incq	%r12
.L2094:
	testq	%r14, %r14
	je	.L2124
	leaq	-1(%r12), %rax
	cmpq	%rax, %r14
	jbe	.L2086
	movsbl	-1(%r12), %ecx
.L2090:
	call	*%r13
	cmpl	40(%rsp), %eax
	jne	.L2091
	movq	48(%rsp), %rax
	movq	%r12, %r15
	cmpq	%rbp, %rax
	movq	%rax, %rbx
	jb	.L2093
	jmp	.L2092
	.p2align 4,,7
.L2125:
	incq	%rbx
	incq	%r15
	cmpq	%rbx, %rbp
	je	.L2108
.L2093:
	movsbl	(%r15), %ecx
	call	*%r13
	movsbl	(%rbx), %ecx
	movl	%eax, %edi
	call	*%r13
	cmpl	%eax, %edi
	je	.L2125
.L2092:
	cmpq	%rbx, %rbp
	jne	.L2091
	.p2align 4,,7
.L2108:
	xorl	%eax, %eax
.L2116:
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
	.p2align 4,,7
.L2124:
	movsbl	-1(%r12), %ecx
	testb	%cl, %cl
	je	.L2086
	jmp	.L2090
.L2120:
	movq	%rbx, %rcx
	call	strlen
	leaq	(%rbx,%rax), %rbp
	jmp	.L2095
.L2123:
	leaq	1(%rbx), %rdi
	movq	%rdi, %rcx
	call	strlen
	leaq	(%rdi,%rax), %rbp
	jmp	.L2088
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN15ImGuiTextBuffer7appendvEPKcPc
	.def	_ZN15ImGuiTextBuffer7appendvEPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN15ImGuiTextBuffer7appendvEPKcPc
_ZN15ImGuiTextBuffer7appendvEPKcPc:
.LFB343:
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
	call	__ms_vsnprintf
	testl	%eax, %eax
	movl	%eax, %ebp
	jle	.L2126
	movslq	(%rbx), %rdi
	leal	(%rdi,%rax), %esi
	movl	4(%rbx), %eax
	cmpl	%eax, %esi
	jl	.L2128
	leal	(%rax,%rax), %edx
	cmpl	%esi, %edx
	cmovl	%esi, %edx
	cmpl	%edx, %eax
	movl	%edx, %r13d
	jl	.L2148
.L2129:
	cmpl	%eax, %esi
	jle	.L2128
	testl	%eax, %eax
	movl	$8, %edx
	je	.L2133
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L2133:
	cmpl	%edx, %esi
	jge	.L2142
	cmpl	%eax, %edx
	jg	.L2149
.L2128:
	cmpl	%esi, %edi
	movl	%esi, (%rbx)
	leal	1(%rbp), %r13d
	jge	.L2150
.L2138:
	movq	8(%rbx), %rax
	movslq	%r13d, %rdx
	movq	%r14, %r9
	movq	%r12, %r8
	leaq	-1(%rax,%rdi), %rbx
	movq	%rbx, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L2143
	cmpl	%eax, %r13d
	jle	.L2143
.L2139:
	cltq
	movb	$0, (%rbx,%rax)
.L2126:
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
.L2150:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L2138
	.p2align 4,,7
.L2143:
	movl	%ebp, %eax
	jmp	.L2139
	.p2align 4,,7
.L2142:
	movl	%esi, %r13d
.L2134:
	movq	GImGui(%rip), %rax
	movslq	%r13d, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %r15
	testq	%rcx, %rcx
	je	.L2135
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2137
	decl	844(%rax)
.L2137:
	call	*240(%rax)
	cmpl	%esi, %edi
	movl	%r13d, 4(%rbx)
	movq	%r15, 8(%rbx)
	movl	%esi, (%rbx)
	leal	1(%rbp), %r13d
	jl	.L2138
	jmp	.L2150
	.p2align 4,,7
.L2135:
	movq	GImGui(%rip), %rax
	jmp	.L2137
	.p2align 4,,7
.L2148:
	movq	GImGui(%rip), %rax
	movslq	%edx, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %r15
	testq	%rcx, %rcx
	je	.L2130
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2132
	decl	844(%rax)
.L2132:
	call	*240(%rax)
	movq	%r15, 8(%rbx)
	movl	%r13d, 4(%rbx)
	movl	%r13d, %eax
	jmp	.L2129
	.p2align 4,,7
.L2130:
	movq	GImGui(%rip), %rax
	jmp	.L2132
.L2149:
	movl	%edx, %r13d
	jmp	.L2134
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN15ImGuiTextBuffer6appendEPKcz
	.def	_ZN15ImGuiTextBuffer6appendEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN15ImGuiTextBuffer6appendEPKcz
_ZN15ImGuiTextBuffer6appendEPKcz:
.LFB344:
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
.LFB346:
	.seh_endprologue
	xorps	%xmm0, %xmm0
	movl	$0, (%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movss	%xmm0, 12(%rcx)
	movq	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movss	%xmm0, 8(%rcx)
	movq	$0, 56(%rcx)
	movq	$0, 64(%rcx)
	movss	%xmm0, 4(%rcx)
	movq	$0, 72(%rcx)
	ret
	.seh_endproc
	.globl	_ZN18ImGuiSimpleColumnsC1Ev
	.def	_ZN18ImGuiSimpleColumnsC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN18ImGuiSimpleColumnsC1Ev,_ZN18ImGuiSimpleColumnsC2Ev
	.section .rdata,"dr"
	.align 8
.LC92:
	.ascii "Count <= ((int)(sizeof(Pos)/sizeof(*Pos)))\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN18ImGuiSimpleColumns6UpdateEifb
	.def	_ZN18ImGuiSimpleColumns6UpdateEifb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18ImGuiSimpleColumns6UpdateEifb
_ZN18ImGuiSimpleColumns6UpdateEifb:
.LFB348:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	cmpl	$8, (%rcx)
	movq	%rcx, %rbx
	movl	%edx, %esi
	jg	.L2200
.L2154:
	testb	%r9b, %r9b
	movl	%esi, (%rbx)
	movl	$0x00000000, 12(%rbx)
	movl	$0x00000000, 8(%rbx)
	movss	%xmm2, 4(%rbx)
	jne	.L2201
.L2155:
	testl	%esi, %esi
	jle	.L2153
	xorps	%xmm1, %xmm1
	movss	48(%rbx), %xmm0
	cmpl	$1, %esi
	movss	%xmm1, 16(%rbx)
	addss	%xmm1, %xmm0
	movss	%xmm1, 48(%rbx)
	je	.L2157
	movss	52(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L2158
	addss	%xmm2, %xmm0
.L2158:
	cvttss2si	%xmm0, %eax
	cmpl	$2, %esi
	addss	52(%rbx), %xmm0
	movss	%xmm1, 52(%rbx)
	cvtsi2ss	%eax, %xmm3
	movss	%xmm3, 20(%rbx)
	je	.L2157
	movss	56(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L2160
	addss	%xmm2, %xmm0
.L2160:
	cvttss2si	%xmm0, %eax
	cmpl	$3, %esi
	addss	56(%rbx), %xmm0
	movss	%xmm1, 56(%rbx)
	cvtsi2ss	%eax, %xmm3
	movss	%xmm3, 24(%rbx)
	je	.L2157
	movss	60(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L2162
	addss	%xmm2, %xmm0
.L2162:
	cvttss2si	%xmm0, %eax
	cmpl	$4, %esi
	addss	60(%rbx), %xmm0
	movss	%xmm1, 60(%rbx)
	cvtsi2ss	%eax, %xmm3
	movss	%xmm3, 28(%rbx)
	je	.L2157
	movss	64(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L2164
	addss	%xmm2, %xmm0
.L2164:
	cvttss2si	%xmm0, %eax
	cmpl	$5, %esi
	addss	64(%rbx), %xmm0
	movss	%xmm1, 64(%rbx)
	cvtsi2ss	%eax, %xmm3
	movss	%xmm3, 32(%rbx)
	je	.L2157
	movss	68(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L2166
	addss	%xmm2, %xmm0
.L2166:
	cvttss2si	%xmm0, %eax
	cmpl	$6, %esi
	addss	68(%rbx), %xmm0
	movss	%xmm1, 68(%rbx)
	cvtsi2ss	%eax, %xmm3
	movss	%xmm3, 36(%rbx)
	je	.L2157
	movss	72(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L2168
	addss	%xmm2, %xmm0
.L2168:
	cvttss2si	%xmm0, %eax
	cmpl	$7, %esi
	addss	72(%rbx), %xmm0
	movss	%xmm1, 72(%rbx)
	cvtsi2ss	%eax, %xmm3
	movss	%xmm3, 40(%rbx)
	je	.L2157
	movss	76(%rbx), %xmm3
	ucomiss	%xmm1, %xmm3
	jbe	.L2170
	addss	%xmm2, %xmm0
.L2170:
	cvttss2si	%xmm0, %eax
	addss	76(%rbx), %xmm0
	movl	$0x00000000, 76(%rbx)
	cvtsi2ss	%eax, %xmm1
	movss	%xmm1, 44(%rbx)
.L2157:
	movss	%xmm0, 8(%rbx)
.L2153:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L2200:
	leaq	.LC15(%rip), %rdx
	leaq	.LC92(%rip), %rcx
	movl	$1648, %r8d
	movl	%r9d, 44(%rsp)
	movss	%xmm2, 40(%rsp)
	call	_assert
	movl	44(%rsp), %r9d
	movss	40(%rsp), %xmm2
	jmp	.L2154
	.p2align 4,,7
.L2201:
	movq	$0, 48(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movq	$0, 72(%rbx)
	jmp	.L2155
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN18ImGuiSimpleColumns11DeclColumnsEfff
	.def	_ZN18ImGuiSimpleColumns11DeclColumnsEfff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18ImGuiSimpleColumns11DeclColumnsEfff
_ZN18ImGuiSimpleColumns11DeclColumnsEfff:
.LFB349:
	.seh_endprologue
	movaps	%xmm1, %xmm0
	movl	$0x00000000, 12(%rcx)
	movss	48(%rcx), %xmm4
	cmpless	%xmm4, %xmm0
	andps	%xmm0, %xmm4
	andnps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	orps	%xmm0, %xmm4
	movss	52(%rcx), %xmm0
	cmpless	%xmm0, %xmm1
	movss	%xmm4, 48(%rcx)
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	orps	%xmm1, %xmm0
	movss	56(%rcx), %xmm1
	cmpless	%xmm1, %xmm2
	movss	%xmm0, 52(%rcx)
	andps	%xmm2, %xmm1
	andnps	%xmm3, %xmm2
	orps	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	movss	%xmm1, 56(%rcx)
	addss	%xmm2, %xmm4
	ucomiss	%xmm2, %xmm0
	addss	%xmm2, %xmm4
	movaps	%xmm4, %xmm1
	jbe	.L2223
	movss	4(%rcx), %xmm4
.L2209:
	addss	%xmm4, %xmm0
	movaps	%xmm0, %xmm4
	movss	56(%rcx), %xmm0
	ucomiss	%xmm2, %xmm0
	addss	%xmm1, %xmm4
	jbe	.L2224
	movss	4(%rcx), %xmm1
.L2211:
	addss	%xmm1, %xmm0
	movss	8(%rcx), %xmm2
	addss	%xmm4, %xmm0
	movaps	%xmm0, %xmm1
	movss	%xmm0, 12(%rcx)
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	ret
.L2223:
	movaps	%xmm2, %xmm4
	jmp	.L2209
.L2224:
	movaps	%xmm2, %xmm1
	jmp	.L2211
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN18ImGuiSimpleColumns14CalcExtraSpaceEf
	.def	_ZN18ImGuiSimpleColumns14CalcExtraSpaceEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18ImGuiSimpleColumns14CalcExtraSpaceEf
_ZN18ImGuiSimpleColumns14CalcExtraSpaceEf:
.LFB350:
	.seh_endprologue
	subss	8(%rcx), %xmm1
	movaps	%xmm1, %xmm0
	cmpnless	.LC9(%rip), %xmm0
	andps	%xmm1, %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN16ImGuiListClipper5BeginEif
	.def	_ZN16ImGuiListClipper5BeginEif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16ImGuiListClipper5BeginEif
_ZN16ImGuiListClipper5BeginEif:
.LFB352:
	.seh_endprologue
	movq	GImGui(%rip), %r8
	ucomiss	.LC9(%rip), %xmm2
	movq	6008(%r8), %rax
	movss	196(%rax), %xmm3
	movaps	%xmm3, %xmm0
	movss	32(%rax), %xmm1
	movss	100(%rax), %xmm4
	movl	%edx, 8(%rcx)
	subss	%xmm1, %xmm0
	movss	%xmm2, 4(%rcx)
	movl	$0, 12(%rcx)
	movl	$-1, 16(%rcx)
	movl	$-1, 20(%rcx)
	addss	%xmm4, %xmm0
	movss	%xmm0, (%rcx)
	jbe	.L2228
	cmpb	$0, 11432(%r8)
	je	.L2231
	movl	$0, 16(%rcx)
	movl	%edx, 20(%rcx)
.L2237:
	movl	$2, 12(%rcx)
.L2228:
	rep ret
	.p2align 4,,7
.L2231:
	cmpb	$0, 140(%rax)
	jne	.L2245
	movss	516(%rax), %xmm5
	xorl	%r9d, %r9d
	subss	%xmm3, %xmm5
	divss	%xmm2, %xmm5
	cvttss2si	%xmm5, %r11d
	movss	524(%rax), %xmm5
	subss	%xmm3, %xmm5
	movaps	%xmm5, %xmm3
	divss	%xmm2, %xmm3
	testl	%r11d, %r11d
	cvttss2si	%xmm3, %r10d
	js	.L2234
	cmpl	%r11d, %edx
	cmovle	%edx, %r11d
	movl	%r11d, %r9d
.L2234:
	incl	%r10d
	movl	%r9d, %r11d
	cmpl	%r9d, %r10d
	jl	.L2235
	cmpl	%r10d, %edx
	cmovle	%edx, %r10d
	movl	%r10d, %r11d
.L2235:
	testl	%r9d, %r9d
	movl	%r9d, 16(%rcx)
	movl	%r11d, 20(%rcx)
	jle	.L2237
	cvtsi2ss	%r9d, %xmm3
	subss	%xmm4, %xmm1
	cmpl	$1, 444(%rax)
	movb	$1, 138(%rax)
	mulss	%xmm2, %xmm3
	addss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	movss	220(%rax), %xmm1
	movaps	%xmm0, %xmm3
	movss	%xmm0, 196(%rax)
	cmpless	%xmm1, %xmm3
	andps	%xmm3, %xmm1
	andnps	%xmm0, %xmm3
	orps	%xmm3, %xmm1
	movss	%xmm1, 220(%rax)
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	subss	5172(%r8), %xmm2
	movss	%xmm1, 204(%rax)
	movss	%xmm2, 232(%rax)
	jle	.L2237
	movss	%xmm0, 460(%rax)
	jmp	.L2237
	.p2align 4,,7
.L2245:
	movl	$0, 20(%rcx)
	movl	$0, 16(%rcx)
	jmp	.L2237
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN16ImGuiListClipper3EndEv
	.def	_ZN16ImGuiListClipper3EndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16ImGuiListClipper3EndEv
_ZN16ImGuiListClipper3EndEv:
.LFB353:
	.seh_endprologue
	movl	8(%rcx), %eax
	testl	%eax, %eax
	js	.L2246
	cmpl	$2147483647, %eax
	je	.L2249
	cvtsi2ss	%eax, %xmm0
	movq	GImGui(%rip), %rdx
	movss	4(%rcx), %xmm2
	movss	(%rcx), %xmm1
	movq	6008(%rdx), %rax
	cmpl	$1, 444(%rax)
	movb	$1, 138(%rax)
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	32(%rax), %xmm0
	subss	100(%rax), %xmm0
	addss	%xmm1, %xmm0
	movss	220(%rax), %xmm1
	movaps	%xmm0, %xmm3
	movss	%xmm0, 196(%rax)
	cmpless	%xmm1, %xmm3
	andps	%xmm3, %xmm1
	andnps	%xmm0, %xmm3
	orps	%xmm3, %xmm1
	movss	%xmm1, 220(%rax)
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	subss	5172(%rdx), %xmm2
	movss	%xmm1, 204(%rax)
	movss	%xmm2, 232(%rax)
	jle	.L2249
	movss	%xmm0, 460(%rax)
.L2249:
	movl	$-1, 8(%rcx)
	movl	$3, 12(%rcx)
.L2246:
	rep ret
	.seh_endproc
	.section .rdata,"dr"
.LC93:
	.ascii "items_height > 0.0f\0"
	.align 8
.LC94:
	.ascii "DisplayStart >= 0 && DisplayEnd >= 0\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN16ImGuiListClipper4StepEv
	.def	_ZN16ImGuiListClipper4StepEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16ImGuiListClipper4StepEv
_ZN16ImGuiListClipper4StepEv:
.LFB354:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	8(%rcx), %edx
	movq	%rcx, %rbx
	testl	%edx, %edx
	je	.L2253
	movq	GImGui(%rip), %r8
	movq	6008(%r8), %rcx
	cmpb	$0, 140(%rcx)
	je	.L2279
.L2253:
	movl	$-1, 8(%rbx)
	xorl	%eax, %eax
.L2275:
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L2279:
	movl	12(%rbx), %eax
	testl	%eax, %eax
	je	.L2280
	cmpl	$1, %eax
	je	.L2281
	cmpl	$2, %eax
	je	.L2282
	cmpl	$3, %eax
	movl	%edx, %eax
	setne	%r9b
	shrl	$31, %eax
	orb	%r9b, %al
	jne	.L2269
	cmpl	$2147483647, %edx
	je	.L2263
	cvtsi2ss	%edx, %xmm0
	cmpl	$1, 444(%rcx)
	movss	4(%rbx), %xmm2
	movss	(%rbx), %xmm1
	movb	$1, 138(%rcx)
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	32(%rcx), %xmm0
	subss	100(%rcx), %xmm0
	addss	%xmm1, %xmm0
	movss	220(%rcx), %xmm1
	movaps	%xmm0, %xmm3
	movss	%xmm0, 196(%rcx)
	cmpless	%xmm1, %xmm3
	andps	%xmm3, %xmm1
	andnps	%xmm0, %xmm3
	orps	%xmm3, %xmm1
	movss	%xmm1, 220(%rcx)
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	subss	5172(%r8), %xmm2
	movss	%xmm1, 204(%rcx)
	movss	%xmm2, 232(%rcx)
	jle	.L2263
	movss	%xmm0, 460(%rcx)
.L2263:
	movl	$-1, 8(%rbx)
	movl	$3, 12(%rbx)
	jmp	.L2275
	.p2align 4,,7
.L2280:
	movss	196(%rcx), %xmm0
	movl	$1, %eax
	subss	32(%rcx), %xmm0
	movl	$0, 16(%rbx)
	movl	$1, 20(%rbx)
	addss	100(%rcx), %xmm0
	movl	$1, 12(%rbx)
	movss	%xmm0, (%rbx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L2282:
	movl	16(%rbx), %edx
	testl	%edx, %edx
	js	.L2260
	movl	20(%rbx), %eax
	testl	%eax, %eax
	js	.L2260
.L2261:
	movl	$3, 12(%rbx)
	movl	$1, %eax
	jmp	.L2275
	.p2align 4,,7
.L2281:
	cmpl	$1, %edx
	je	.L2253
	movss	196(%rcx), %xmm2
	subss	32(%rcx), %xmm2
	addss	100(%rcx), %xmm2
	subss	(%rbx), %xmm2
	ucomiss	.LC9(%rip), %xmm2
	jbe	.L2283
.L2258:
	decl	%edx
	movq	%rbx, %rcx
	call	_ZN16ImGuiListClipper5BeginEif
	incl	16(%rbx)
	incl	20(%rbx)
	movl	$1, %eax
	movl	$3, 12(%rbx)
	jmp	.L2275
	.p2align 4,,7
.L2260:
	leaq	.LC15(%rip), %rdx
	leaq	.LC94(%rip), %rcx
	movl	$1753, %r8d
	call	_assert
	jmp	.L2261
	.p2align 4,,7
.L2283:
	leaq	.LC15(%rip), %rdx
	leaq	.LC93(%rip), %rcx
	movl	$1744, %r8d
	movss	%xmm2, 44(%rsp)
	call	_assert
	movl	8(%rbx), %edx
	movss	44(%rsp), %xmm2
	jmp	.L2258
.L2269:
	xorl	%eax, %eax
	jmp	.L2275
	.seh_endproc
	.section	.text$_ZN16ImGuiDrawContextD1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN16ImGuiDrawContextD1Ev
	.def	_ZN16ImGuiDrawContextD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16ImGuiDrawContextD1Ev
_ZN16ImGuiDrawContextD1Ev:
.LFB358:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	296(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2285
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2285:
	movq	200(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2324
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
	movq	184(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2318
.L2286:
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2318:
	movq	168(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2320
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2320:
	movq	152(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2321
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2321:
	movq	136(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2322
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2322:
	movq	96(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2284
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	movq	240(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	rex.W jmp *%rax
	.p2align 4,,7
.L2324:
	movq	184(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L2286
	jmp	.L2318
	.p2align 4,,7
.L2284:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA358:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE358-.LLSDACSB358
.LLSDACSB358:
.LLSDACSE358:
	.section	.text$_ZN16ImGuiDrawContextD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC95:
	.ascii "#MOVE\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImGuiWindowC2EPKc
	.def	_ZN11ImGuiWindowC2EPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImGuiWindowC2EPKc
_ZN11ImGuiWindowC2EPKc:
.LFB359:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$0x00000000, 24(%rcx)
	movl	$0x00000000, 20(%rcx)
	movq	%rcx, %rbx
	movl	$0x00000000, 32(%rcx)
	movl	$0x00000000, 28(%rcx)
	movq	%rdx, %rdi
	movl	$0x00000000, 40(%rcx)
	movl	$0x00000000, 36(%rcx)
	movl	$0x00000000, 48(%rcx)
	movl	$0x00000000, 44(%rcx)
	movl	$0x00000000, 56(%rcx)
	movl	$0x00000000, 52(%rcx)
	movl	$0x00000000, 64(%rcx)
	movl	$0x00000000, 60(%rcx)
	movl	$0x7f7fffff, 68(%rcx)
	movl	$0x7f7fffff, 72(%rcx)
	movl	$0xff7fffff, 76(%rcx)
	movl	$0xff7fffff, 80(%rcx)
	movl	$0x00000000, 88(%rcx)
	movl	$0x00000000, 84(%rcx)
	movl	$0x00000000, 100(%rcx)
	movl	$0x00000000, 96(%rcx)
	movl	$0x00000000, 108(%rcx)
	movl	$0x00000000, 104(%rcx)
	movl	$0x00000000, 116(%rcx)
	movl	$0x00000000, 112(%rcx)
	movl	$0x00000000, 128(%rcx)
	movl	$0x00000000, 124(%rcx)
	movl	$0x00000000, 220(%rcx)
	movl	$0x00000000, 216(%rcx)
	movl	$0, 284(%rcx)
	movl	$0, 280(%rcx)
	movq	$0, 288(%rcx)
	movl	$0, 324(%rcx)
	movl	$0, 320(%rcx)
	movq	216(%rcx), %rax
	movq	$0, 328(%rcx)
	movl	$0, 340(%rcx)
	movl	$0, 336(%rcx)
	movq	$0, 344(%rcx)
	movq	%rax, 208(%rcx)
	movq	%rax, 200(%rcx)
	movq	%rax, 192(%rcx)
	movl	$0, 356(%rcx)
	movl	$0, 352(%rcx)
	movq	$0, 360(%rcx)
	movl	$0, 372(%rcx)
	movl	$0, 368(%rcx)
	movq	$0, 376(%rcx)
	movl	$0, 388(%rcx)
	movl	$0, 384(%rcx)
	movq	$0, 392(%rcx)
	movl	$0, 484(%rcx)
	movl	$0, 480(%rcx)
	movq	$0, 488(%rcx)
	movl	$0x00000000, 232(%rcx)
	movl	$0x00000000, 224(%rcx)
	movl	$0x00000000, 236(%rcx)
	movl	$0x00000000, 228(%rcx)
	movl	$0xbf800000, 240(%rcx)
	movl	$0, 244(%rcx)
	movl	$0, 248(%rcx)
	movl	$0x00000000, 252(%rcx)
	movl	$0x00000000, 256(%rcx)
	movl	$0x00000000, 260(%rcx)
	movl	$0x00000000, 264(%rcx)
	movb	$0, 269(%rcx)
	movb	$0, 268(%rcx)
	movb	$0, 270(%rcx)
	movl	$0x00000000, 272(%rcx)
	movq	$0, 296(%rcx)
	movl	$0, 304(%rcx)
	movl	$0x00000000, 308(%rcx)
	movb	$0, 317(%rcx)
	movb	$1, 316(%rcx)
	movl	$0xbf800000, 312(%rcx)
	movl	$0, 400(%rcx)
	movq	$0, 404(%rcx)
	movq	$0, 412(%rcx)
	movq	$0, 420(%rcx)
	movl	$0x00000000, 428(%rcx)
	movl	$0x00000000, 432(%rcx)
	movl	$0x00000000, 436(%rcx)
	movl	$0, 440(%rcx)
	movl	$1, 444(%rcx)
	movl	$0x00000000, 452(%rcx)
	movl	$0x00000000, 448(%rcx)
	movl	$0x00000000, 456(%rcx)
	movl	$0x00000000, 464(%rcx)
	movl	$0x00000000, 460(%rcx)
	movb	$1, 468(%rcx)
	movl	$0, 472(%rcx)
	movl	$0, 500(%rcx)
	movl	$0, 496(%rcx)
	movq	$0, 504(%rcx)
	movl	$0x7f7fffff, 512(%rcx)
	movl	$0x7f7fffff, 516(%rcx)
	movl	$0xff7fffff, 520(%rcx)
	movl	$0xff7fffff, 524(%rcx)
	movl	$0x7f7fffff, 528(%rcx)
	movl	$0x7f7fffff, 532(%rcx)
	movl	$0xff7fffff, 536(%rcx)
	movl	$0xff7fffff, 540(%rcx)
	movl	$0, 552(%rcx)
	movl	$0x00000000, 564(%rcx)
	movl	$0x00000000, 560(%rcx)
	movl	$0x00000000, 556(%rcx)
	movq	$0, 568(%rcx)
	movq	$0, 576(%rcx)
	movq	$0, 584(%rcx)
	movq	$0, 592(%rcx)
	movq	$0, 600(%rcx)
	movq	$0, 608(%rcx)
	movq	$0, 616(%rcx)
	movq	$0, 624(%rcx)
	movl	$0, 636(%rcx)
	movl	$0, 632(%rcx)
	movq	$0, 640(%rcx)
	movq	%rdx, %rcx
	call	strlen
	leaq	1(%rax), %rsi
	movq	GImGui(%rip), %rax
	movq	%rsi, %rcx
	incl	844(%rax)
.LEHB10:
	call	*232(%rax)
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	%rax, %rcx
	call	memcpy
	xorl	%edx, %edx
	movq	%rax, (%rbx)
	movq	%rdi, %rcx
	call	_Z6ImHashPKvij.constprop.164
	movslq	496(%rbx), %rdx
	movl	%eax, 8(%rbx)
	cmpl	500(%rbx), %edx
	je	.L2326
	movq	504(%rbx), %rcx
	leal	1(%rdx), %r8d
.L2327:
	movl	%r8d, 496(%rbx)
	movl	%eax, (%rcx,%rdx,4)
	leaq	.LC95(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movl	%eax, 92(%rbx)
	movl	$0x00000000, 28(%rbx)
	movl	$152, %ecx
	movl	$0x00000000, 32(%rbx)
	movq	28(%rbx), %rax
	movl	$0x00000000, 44(%rbx)
	movl	$0x00000000, 48(%rbx)
	movl	$0x00000000, 60(%rbx)
	movl	$0x00000000, 64(%rbx)
	movq	%rax, 20(%rbx)
	movq	44(%rbx), %rax
	movl	$0, 12(%rbx)
	movl	$0, 16(%rbx)
	movl	$0x00000000, 84(%rbx)
	movl	$0x00000000, 88(%rbx)
	movq	%rax, 36(%rbx)
	movq	60(%rbx), %rax
	movl	$0x00000000, 96(%rbx)
	movl	$0x00000000, 100(%rbx)
	movl	$0x7f7fffff, 104(%rbx)
	movl	$0x7f7fffff, 108(%rbx)
	movq	%rax, 52(%rbx)
	movl	$0x3f000000, 112(%rbx)
	movl	$0x3f000000, 116(%rbx)
	movb	$0, 121(%rbx)
	movb	$0, 120(%rbx)
	movl	$0x00000000, 124(%rbx)
	movl	$0x00000000, 128(%rbx)
	movl	$0x00000000, 132(%rbx)
	movb	$0, 137(%rbx)
	movb	$0, 136(%rbx)
	movb	$0, 138(%rbx)
	movb	$0, 139(%rbx)
	movb	$0, 140(%rbx)
	movq	GImGui(%rip), %rax
	movl	$0, 144(%rbx)
	movl	$0, 148(%rbx)
	movl	$-1, 156(%rbx)
	movl	$-1, 152(%rbx)
	movb	$0, 160(%rbx)
	movl	$-1, 164(%rbx)
	movl	$0, 168(%rbx)
	movl	$15, 180(%rbx)
	movl	$15, 176(%rbx)
	movl	$15, 172(%rbx)
	movb	$0, 184(%rbx)
	movl	$-1, 544(%rbx)
	movl	$0x00000000, 548(%rbx)
	movl	$0x3f800000, 648(%rbx)
	incl	844(%rax)
	call	*232(%rax)
	movq	%rax, 656(%rbx)
	movq	%rax, %rcx
	call	_ZN10ImDrawListC1Ev
	movq	656(%rbx), %rax
	movq	(%rbx), %rdx
	movq	%rdx, 48(%rax)
	movq	$0, 664(%rbx)
	movq	$0, 672(%rbx)
	movq	$0, 680(%rbx)
	movl	$-1, 692(%rbx)
	movl	$-1, 688(%rbx)
	movl	$2147483647, 700(%rbx)
	movl	$2147483647, 696(%rbx)
	movl	$2147483647, 708(%rbx)
	movl	$2147483647, 704(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L2326:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %ecx
	jne	.L2346
	cmpl	%ecx, %r8d
	movl	%ecx, %esi
	cmovge	%r8d, %esi
	cmpl	%esi, %edx
	jl	.L2329
.L2347:
	movq	504(%rbx), %rcx
	jmp	.L2327
	.p2align 4,,7
.L2346:
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
	addl	%edx, %ecx
	cmpl	%ecx, %r8d
	movl	%ecx, %esi
	cmovge	%r8d, %esi
	cmpl	%esi, %edx
	jge	.L2347
.L2329:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L2330
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2332
	decl	844(%rax)
.L2332:
	call	*240(%rax)
.LEHE10:
	movslq	496(%rbx), %rdx
	movq	%rdi, 504(%rbx)
	movq	%rdi, %rcx
	movl	%esi, 500(%rbx)
	movl	8(%rbx), %eax
	leal	1(%rdx), %r8d
	jmp	.L2327
	.p2align 4,,7
.L2330:
	movq	GImGui(%rip), %rax
	jmp	.L2332
.L2337:
	movq	640(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L2334
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2334:
	movq	504(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2335
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2335:
	leaq	192(%rbx), %rcx
	call	_ZN16ImGuiDrawContextD1Ev
	movq	%rsi, %rcx
.LEHB11:
	call	_Unwind_Resume
	nop
.LEHE11:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA359:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE359-.LLSDACSB359
.LLSDACSB359:
	.uleb128 .LEHB10-.LFB359
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L2337-.LFB359
	.uleb128 0
	.uleb128 .LEHB11-.LFB359
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE359:
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
.LFB362:
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
	je	.L2350
	decl	844(%rax)
.L2350:
	call	*240(%rax)
	movq	(%rbx), %rcx
	movq	$0, 656(%rbx)
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2352
	decl	844(%rax)
.L2352:
	call	*240(%rax)
	movq	640(%rbx), %rcx
	movq	$0, (%rbx)
	testq	%rcx, %rcx
	je	.L2363
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
	movq	504(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2354
.L2353:
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2354:
	leaq	192(%rbx), %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN16ImGuiDrawContextD1Ev
	.p2align 4,,7
.L2363:
	movq	504(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L2353
	jmp	.L2354
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA362:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE362-.LLSDACSB362
.LLSDACSB362:
.LLSDACSE362:
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
.LFB364:
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
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rbx
	testl	%eax, %eax
	jle	.L2369
.L2365:
	movq	504(%rsi), %rdx
	movq	%rdi, %rcx
	movl	-4(%rdx,%rax,4), %r8d
	movl	%ebx, %eax
	movl	$0, %edx
	subl	%edi, %eax
	testq	%rbx, %rbx
	cmovne	%eax, %edx
	call	_Z6ImHashPKvij
	movq	GImGui(%rip), %rdx
	cmpl	6068(%rdx), %eax
	jne	.L2367
	movb	$1, 6076(%rdx)
.L2367:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L2369:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	496(%rsi), %rax
	jmp	.L2365
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImGuiWindow5GetIDEPKv
	.def	_ZN11ImGuiWindow5GetIDEPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImGuiWindow5GetIDEPKv
_ZN11ImGuiWindow5GetIDEPKv:
.LFB365:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	%rcx, %rbx
	movslq	496(%rcx), %rax
	movq	%rdx, 88(%rsp)
	testl	%eax, %eax
	jle	.L2378
.L2371:
	movq	504(%rbx), %rdx
	leaq	_ZZ6ImHashPKvijE9crc32_lut(%rip), %rcx
	movl	-4(%rdx,%rax,4), %r8d
	movl	4+_ZZ6ImHashPKvijE9crc32_lut(%rip), %eax
	testl	%eax, %eax
	jne	.L2375
	pxor	%xmm3, %xmm3
	leaq	1024+_ZZ6ImHashPKvijE9crc32_lut(%rip), %rdx
	movq	%rcx, %rax
	movdqa	.LC23(%rip), %xmm6
	movdqa	.LC24(%rip), %xmm7
	movdqa	.LC25(%rip), %xmm5
	movdqa	.LC26(%rip), %xmm4
	.p2align 4,,7
.L2376:
	movdqa	%xmm6, %xmm0
	movdqa	%xmm3, %xmm2
	movdqa	%xmm6, %xmm1
	addq	$16, %rax
	paddd	%xmm7, %xmm6
	pand	%xmm5, %xmm0
	psrld	$1, %xmm1
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pand	%xmm4, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm5, %xmm1
	psubd	%xmm1, %xmm2
	pand	%xmm4, %xmm2
	movdqa	%xmm3, %xmm1
	pxor	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	psrld	$1, %xmm2
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm1
	pand	%xmm4, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pand	%xmm4, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm5, %xmm1
	psubd	%xmm1, %xmm2
	pand	%xmm4, %xmm2
	movdqa	%xmm3, %xmm1
	pxor	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	psrld	$1, %xmm2
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm1
	pand	%xmm4, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm5, %xmm0
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	pand	%xmm4, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$1, %xmm0
	pand	%xmm5, %xmm1
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	pand	%xmm4, %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L2376
.L2375:
	movl	%r8d, %edx
	notl	%edx
	movl	%edx, %eax
	xorb	88(%rsp), %dl
	shrl	$8, %eax
	movzbl	%dl, %edx
	xorl	(%rcx,%rdx,4), %eax
	movl	%eax, %edx
	xorb	89(%rsp), %al
	shrl	$8, %edx
	movzbl	%al, %eax
	xorl	(%rcx,%rax,4), %edx
	movl	%edx, %eax
	xorb	90(%rsp), %dl
	shrl	$8, %eax
	movzbl	%dl, %edx
	xorl	(%rcx,%rdx,4), %eax
	movl	%eax, %edx
	xorb	91(%rsp), %al
	shrl	$8, %edx
	movzbl	%al, %eax
	xorl	(%rcx,%rax,4), %edx
	movl	%edx, %eax
	xorb	92(%rsp), %dl
	shrl	$8, %eax
	movzbl	%dl, %edx
	xorl	(%rcx,%rdx,4), %eax
	movl	%eax, %edx
	xorb	93(%rsp), %al
	shrl	$8, %edx
	movzbl	%al, %eax
	xorl	(%rcx,%rax,4), %edx
	movl	%edx, %eax
	xorb	94(%rsp), %dl
	shrl	$8, %eax
	movzbl	%dl, %edx
	xorl	(%rcx,%rdx,4), %eax
	movl	%eax, %edx
	xorb	95(%rsp), %al
	shrl	$8, %edx
	movzbl	%al, %eax
	xorl	(%rcx,%rax,4), %edx
	movl	%edx, %eax
	movq	GImGui(%rip), %rdx
	notl	%eax
	cmpl	%eax, 6068(%rdx)
	jne	.L2374
	movb	$1, 6076(%rdx)
.L2374:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$64, %rsp
	popq	%rbx
	ret
.L2378:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	496(%rbx), %rax
	jmp	.L2371
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN11ImGuiWindow16GetIDNoKeepAliveEPKcS1_
	.def	_ZN11ImGuiWindow16GetIDNoKeepAliveEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11ImGuiWindow16GetIDNoKeepAliveEPKcS1_
_ZN11ImGuiWindow16GetIDNoKeepAliveEPKcS1_:
.LFB366:
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
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rbx
	testl	%eax, %eax
	jle	.L2383
.L2380:
	movq	504(%rsi), %rdx
	movq	%rdi, %rcx
	movl	-4(%rdx,%rax,4), %r8d
	movl	%ebx, %eax
	movl	$0, %edx
	subl	%edi, %eax
	testq	%rbx, %rbx
	cmovne	%eax, %edx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_Z6ImHashPKvij
	.p2align 4,,7
.L2383:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	496(%rsi), %rax
	jmp	.L2380
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC96:
	.ascii "g.CurrentWindowStack.Size >= 2\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui15GetParentWindowEv
	.def	_ZN5ImGui15GetParentWindowEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15GetParentWindowEv
_ZN5ImGui15GetParentWindowEv:
.LFB368:
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
	jle	.L2387
.L2385:
	leal	-2(%rax), %ebx
	cmpl	%eax, %ebx
	jl	.L2386
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
.L2386:
	movq	6024(%rsi), %rax
	movslq	%ebx, %rbx
	movq	(%rax,%rbx,8), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L2387:
	leaq	.LC15(%rip), %rdx
	leaq	.LC96(%rip), %rcx
	movl	$1860, %r8d
	call	_assert
	movl	6016(%rsi), %eax
	jmp	.L2385
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	.def	_ZN5ImGui11SetActiveIDEjP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11SetActiveIDEjP11ImGuiWindow
_ZN5ImGui11SetActiveIDEjP11ImGuiWindow:
.LFB369:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	testl	%ecx, %ecx
	movl	%ecx, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	je	.L2389
	movb	$1, 6076(%rax)
.L2389:
	movq	%rdx, 6088(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13ClearActiveIDEv
	.def	_ZN5ImGui13ClearActiveIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13ClearActiveIDEv
_ZN5ImGui13ClearActiveIDEv:
.LFB370:
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
.LFB371:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	%ecx, 6056(%rax)
	movb	$0, 6060(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11KeepAliveIDEj
	.def	_ZN5ImGui11KeepAliveIDEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11KeepAliveIDEj
_ZN5ImGui11KeepAliveIDEj:
.LFB372:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	cmpl	%ecx, 6068(%rax)
	je	.L2397
	rep ret
	.p2align 4,,7
.L2397:
	movb	$1, 6076(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8ItemSizeERK6ImVec2f
	.def	_ZN5ImGui8ItemSizeERK6ImVec2f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8ItemSizeERK6ImVec2f
_ZN5ImGui8ItemSizeERK6ImVec2f:
.LFB373:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L2398
	movss	4(%rcx), %xmm3
	movaps	%xmm3, %xmm0
	movss	224(%rax), %xmm2
	movss	192(%rax), %xmm4
	cmpless	%xmm2, %xmm0
	addss	(%rcx), %xmm4
	andps	%xmm0, %xmm2
	andnps	%xmm3, %xmm0
	movss	228(%rax), %xmm3
	orps	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movss	%xmm4, 200(%rax)
	movaps	%xmm4, %xmm5
	cmpless	%xmm3, %xmm0
	andps	%xmm0, %xmm3
	andnps	%xmm1, %xmm0
	movss	28(%rax), %xmm1
	addss	428(%rax), %xmm1
	orps	%xmm0, %xmm3
	movss	196(%rax), %xmm0
	movss	%xmm0, 204(%rax)
	addss	%xmm2, %xmm0
	addss	436(%rax), %xmm1
	addss	5172(%rdx), %xmm0
	movss	%xmm2, 232(%rax)
	movl	$0x00000000, 228(%rax)
	movss	%xmm3, 236(%rax)
	movl	$0x00000000, 224(%rax)
	cvttss2si	%xmm0, %edx
	cvtsi2ss	%edx, %xmm0
	cvttss2si	%xmm1, %edx
	movss	%xmm0, 196(%rax)
	cvtsi2ss	%edx, %xmm1
	movss	%xmm1, 192(%rax)
	movss	216(%rax), %xmm1
	cmpless	%xmm1, %xmm5
	andps	%xmm5, %xmm1
	andnps	%xmm4, %xmm5
	movaps	%xmm0, %xmm4
	orps	%xmm5, %xmm1
	movss	%xmm1, 216(%rax)
	movss	220(%rax), %xmm1
	cmpless	%xmm1, %xmm4
	andps	%xmm4, %xmm1
	andnps	%xmm0, %xmm4
	orps	%xmm4, %xmm1
	movss	%xmm1, 220(%rax)
.L2398:
	rep ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8ItemSizeERK6ImRectf
	.def	_ZN5ImGui8ItemSizeERK6ImRectf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8ItemSizeERK6ImRectf
_ZN5ImGui8ItemSizeERK6ImRectf:
.LFB374:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movss	12(%rcx), %xmm0
	movss	8(%rcx), %xmm2
	subss	4(%rcx), %xmm0
	subss	(%rcx), %xmm2
	leaq	32(%rsp), %rcx
	movss	%xmm0, 36(%rsp)
	movss	%xmm2, 32(%rsp)
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
.LFB376:
	.seh_endprologue
	movq	GImGui(%rip), %r9
	movss	12(%rcx), %xmm0
	movq	6008(%r9), %rax
	ucomiss	516(%rax), %xmm0
	jbe	.L2406
	movss	524(%rax), %xmm0
	ucomiss	4(%rcx), %xmm0
	ja	.L2424
.L2406:
	testq	%rdx, %rdx
	je	.L2411
	xorl	%eax, %eax
	movl	6068(%r9), %ecx
	cmpl	%ecx, (%rdx)
	je	.L2421
.L2411:
	testb	%r8b, %r8b
	movl	$1, %eax
	jne	.L2421
	movzbl	11432(%r9), %eax
	xorl	$1, %eax
	ret
	.p2align 4,,7
.L2424:
	movss	8(%rcx), %xmm0
	ucomiss	512(%rax), %xmm0
	jbe	.L2406
	movss	520(%rax), %xmm0
	xorl	%eax, %eax
	ucomiss	(%rcx), %xmm0
	jbe	.L2406
.L2421:
	rep ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui23FocusableItemUnregisterEP11ImGuiWindow
	.def	_ZN5ImGui23FocusableItemUnregisterEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui23FocusableItemUnregisterEP11ImGuiWindow
_ZN5ImGui23FocusableItemUnregisterEP11ImGuiWindow:
.LFB379:
	.seh_endprologue
	decl	688(%rcx)
	decl	692(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8MemAllocEy
	.def	_ZN5ImGui8MemAllocEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8MemAllocEy
_ZN5ImGui8MemAllocEy:
.LFB382:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	incl	844(%rax)
	movq	232(%rax), %rax
	rex.W jmp *%rax
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7MemFreeEPv
	.def	_ZN5ImGui7MemFreeEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7MemFreeEPv
_ZN5ImGui7MemFreeEPv:
.LFB383:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2429
	decl	844(%rax)
.L2429:
	rex.W jmp *240(%rax)
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16GetClipboardTextEv
	.def	_ZN5ImGui16GetClipboardTextEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16GetClipboardTextEv
_ZN5ImGui16GetClipboardTextEv:
.LFB384:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	208(%rdx), %rax
	testq	%rax, %rax
	je	.L2431
	movq	224(%rdx), %rcx
	rex.W jmp *%rax
	.p2align 4,,7
.L2431:
	leaq	.LC91(%rip), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16SetClipboardTextEPKc
	.def	_ZN5ImGui16SetClipboardTextEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16SetClipboardTextEPKc
_ZN5ImGui16SetClipboardTextEPKc:
.LFB385:
	.seh_endprologue
	movq	GImGui(%rip), %r8
	movq	%rcx, %rdx
	movq	216(%r8), %rax
	testq	%rax, %rax
	je	.L2432
	movq	224(%r8), %rcx
	rex.W jmp *%rax
	.p2align 4,,7
.L2432:
	rep ret
	.seh_endproc
	.section .rdata,"dr"
.LC97:
	.ascii "1.50 WIP\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10GetVersionEv
	.def	_ZN5ImGui10GetVersionEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10GetVersionEv
_ZN5ImGui10GetVersionEv:
.LFB386:
	.seh_endprologue
	leaq	.LC97(%rip), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17GetCurrentContextEv
	.def	_ZN5ImGui17GetCurrentContextEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17GetCurrentContextEv
_ZN5ImGui17GetCurrentContextEv:
.LFB387:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17SetCurrentContextEP12ImGuiContext
	.def	_ZN5ImGui17SetCurrentContextEP12ImGuiContext;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17SetCurrentContextEP12ImGuiContext
_ZN5ImGui17SetCurrentContextEP12ImGuiContext:
.LFB388:
	.seh_endprologue
	movq	%rcx, GImGui(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13CreateContextEPFPvyEPFvS0_E
	.def	_ZN5ImGui13CreateContextEPFPvyEPFvS0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13CreateContextEPFPvyEPFvS0_E
_ZN5ImGui13CreateContextEPFPvyEPFvS0_E:
.LFB389:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	malloc(%rip), %rax
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	cmove	%rax, %rbx
	movl	$15040, %ecx
	call	*%rbx
	movq	%rax, %rcx
	movq	%rax, 40(%rsp)
	call	_ZN12ImGuiContextC1Ev
	movq	40(%rsp), %rax
	leaq	free(%rip), %rdx
	testq	%rsi, %rsi
	cmove	%rdx, %rsi
	movq	%rbx, 232(%rax)
	movq	%rsi, 240(%rax)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
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
.LFB393:
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
	je	.L2442
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2442:
	leaq	10216(%rsi), %rcx
	call	_ZN6ImFontD1Ev
	movq	6960(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2523
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
	movq	6944(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2510
.L2443:
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2510:
	movq	6928(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2447
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2447:
	leaq	6392(%rsi), %rcx
	leaq	6336(%rsi), %rdi
	leaq	6384(%rsi), %rbx
	call	_ZN10ImDrawListD1Ev
.L2520:
	cmpq	%rbx, %rdi
	je	.L2448
.L2524:
	subq	$16, %rbx
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2520
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
	cmpq	%rbx, %rdi
	jne	.L2524
.L2448:
	movq	6208(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2525
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
	movq	6192(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2511
.L2451:
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2511:
	movq	6176(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2514
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2514:
	movq	6160(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2515
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2515:
	movq	6144(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2516
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2516:
	movq	6120(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2517
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2517:
	movq	6024(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2518
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2518:
	movq	6000(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2519
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
.L2519:
	movq	5984(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2441
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	movq	240(%rax), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp *%rax
	.p2align 4,,7
.L2523:
	movq	6944(%rsi), %rcx
	testq	%rcx, %rcx
	jne	.L2443
	jmp	.L2510
	.p2align 4,,7
.L2525:
	movq	6192(%rsi), %rcx
	testq	%rcx, %rcx
	jne	.L2451
	jmp	.L2511
	.p2align 4,,7
.L2441:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA393:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE393-.LLSDACSB393
.LLSDACSB393:
.LLSDACSE393:
	.section	.text$_ZN12ImGuiContextD1Ev,"x"
	.linkonce discard
	.seh_endproc
	.text
	.p2align 4,,15
	.def	__tcf_2;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_2
__tcf_2:
.LFB6053:
	.seh_endprologue
	leaq	_ZL17GImDefaultContext(%rip), %rcx
	jmp	_ZN12ImGuiContextD1Ev
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14DestroyContextEP12ImGuiContext
	.def	_ZN5ImGui14DestroyContextEP12ImGuiContext;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14DestroyContextEP12ImGuiContext
_ZN5ImGui14DestroyContextEP12ImGuiContext:
.LFB390:
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
	cmpq	GImGui(%rip), %rbx
	je	.L2529
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L2529:
	movq	$0, GImGui(%rip)
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
.LFB394:
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
.LFB395:
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
.LFB396:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	cmpb	$0, 6304(%rdx)
	leaq	6304(%rdx), %rax
	movl	$0, %edx
	cmove	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7GetTimeEv
	.def	_ZN5ImGui7GetTimeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7GetTimeEv
_ZN5ImGui7GetTimeEv:
.LFB397:
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
.LFB398:
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
.LFB400:
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
	je	.L2538
.LEHB12:
	call	_ZN11ImFontAtlas5ClearEv
.L2538:
	cmpb	$0, (%rbx)
	jne	.L2660
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L2660:
	movq	24(%rbx), %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	call	_ZL21SaveIniSettingsToDiskPKc
	movl	5976(%rbx), %edx
	testl	%edx, %edx
	jg	.L2640
	jmp	.L2546
	.p2align 4,,7
.L2543:
	movq	5984(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2545
	decl	844(%rax)
.L2545:
	call	*240(%rax)
	incl	%esi
	addq	$8, %rdi
	cmpl	%esi, 5976(%rbx)
	jle	.L2546
.L2640:
	movq	5984(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	call	_ZN11ImGuiWindowD1Ev
	cmpl	%esi, 5976(%rbx)
	jg	.L2543
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L2543
	.p2align 4,,7
.L2546:
	movq	5984(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2542
	movq	GImGui(%rip), %rax
	movl	$0, 5980(%rbx)
	movl	$0, 5976(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 5984(%rbx)
.L2542:
	movq	6000(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2661
	movq	GImGui(%rip), %rax
	movl	$0, 5996(%rbx)
	movl	$0, 5992(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	6024(%rbx), %rcx
	movq	$0, 6000(%rbx)
	movq	$0, 6008(%rbx)
	testq	%rcx, %rcx
	je	.L2549
.L2649:
	movq	GImGui(%rip), %rax
	movl	$0, 6020(%rbx)
	movl	$0, 6016(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 6024(%rbx)
.L2549:
	movl	6112(%rbx), %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	$0, 6032(%rbx)
	movq	$0, 6040(%rbx)
	movq	$0, 6048(%rbx)
	testl	%eax, %eax
	movq	$0, 6088(%rbx)
	movq	$0, 6096(%rbx)
	jle	.L2555
	.p2align 4,,7
.L2628:
	movq	6120(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2554
	decl	844(%rax)
.L2554:
	call	*240(%rax)
	incl	%esi
	addq	$32, %rdi
	cmpl	%esi, 6112(%rbx)
	jg	.L2628
.L2555:
	movq	6120(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2552
	movq	GImGui(%rip), %rax
	movl	$0, 6116(%rbx)
	movl	$0, 6112(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 6120(%rbx)
.L2552:
	movq	6144(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2662
	movq	GImGui(%rip), %rax
	movl	$0, 6140(%rbx)
	movl	$0, 6136(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	6160(%rbx), %rcx
	movq	$0, 6144(%rbx)
	testq	%rcx, %rcx
	je	.L2643
.L2650:
	movq	GImGui(%rip), %rax
	movl	$0, 6156(%rbx)
	movl	$0, 6152(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 6160(%rbx)
.L2643:
	movq	6176(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2645
	movq	GImGui(%rip), %rax
	movl	$0, 6172(%rbx)
	movl	$0, 6168(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 6176(%rbx)
.L2645:
	movq	6192(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2646
	movq	GImGui(%rip), %rax
	movl	$0, 6188(%rbx)
	movl	$0, 6184(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 6192(%rbx)
.L2646:
	movq	6208(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2561
	movq	GImGui(%rip), %rax
	movl	$0, 6204(%rbx)
	movl	$0, 6200(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 6208(%rbx)
.L2561:
	leaq	6344(%rbx), %rsi
	leaq	6392(%rbx), %rdi
	movq	$0, 6280(%rbx)
	movq	$0, 6288(%rbx)
.L2563:
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L2562
	movq	GImGui(%rip), %rax
	movl	$0, -4(%rsi)
	movl	$0, -8(%rsi)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, (%rsi)
.L2562:
	addq	$16, %rsi
	cmpq	%rsi, %rdi
	jne	.L2563
	movq	%rdi, %rcx
	call	_ZN10ImDrawList15ClearFreeMemoryEv
	movq	10344(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2564
	movq	GImGui(%rip), %rax
	movl	$0, 10340(%rbx)
	movl	$0, 10336(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 10344(%rbx)
.L2564:
	movq	11408(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2663
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
	movq	6928(%rbx), %rcx
	movq	$0, 11408(%rbx)
	testq	%rcx, %rcx
	je	.L2641
.L2654:
	movq	GImGui(%rip), %rax
	movl	$0, 6924(%rbx)
	movl	$0, 6920(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 6928(%rbx)
.L2641:
	movq	6944(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2648
	movq	GImGui(%rip), %rax
	movl	$0, 6940(%rbx)
	movl	$0, 6936(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 6944(%rbx)
.L2648:
	movq	6960(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L2570
	movq	GImGui(%rip), %rax
	movl	$0, 6956(%rbx)
	movl	$0, 6952(%rbx)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 6960(%rbx)
.L2570:
	movq	11440(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L2604
	call	*__imp___iob_func(%rip)
	addq	$48, %rax
	cmpq	%rax, %rsi
	je	.L2604
	movq	11440(%rbx), %rcx
	call	fclose
.LEHE12:
	movq	$0, 11440(%rbx)
.L2604:
	movq	11448(%rbx), %rax
	testq	%rax, %rax
	je	.L2573
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.L2574
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
	movq	11448(%rbx), %rax
	movq	GImGui(%rip), %rdx
	testq	%rax, %rax
	je	.L2575
.L2574:
	movq	GImGui(%rip), %rdx
	decl	844(%rdx)
.L2575:
	movq	%rax, %rcx
.LEHB13:
	call	*240(%rdx)
.LEHE13:
.L2573:
	movb	$0, (%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L2661:
	movq	6024(%rbx), %rcx
	movq	$0, 6008(%rbx)
	testq	%rcx, %rcx
	jne	.L2649
	jmp	.L2549
	.p2align 4,,7
.L2663:
	movq	6928(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L2654
	jmp	.L2641
	.p2align 4,,7
.L2662:
	movq	6160(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L2650
	jmp	.L2643
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA400:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE400-.LLSDACSB400
.LLSDACSB400:
	.uleb128 .LEHB12-.LFB400
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB400
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE400:
	.text
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
	.def	_ZN5ImGui12PushClipRectERK6ImVec2S2_b;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
_ZN5ImGui12PushClipRectERK6ImVec2S2_b:
.LFB413:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movzbl	%r8b, %r9d
	movq	(%rdx), %r8
	movq	(%rcx), %rdx
	movq	6008(%rax), %rbx
	movq	656(%rbx), %rcx
	movb	$1, 138(%rbx)
	call	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b
	movq	656(%rbx), %rsi
	movslq	80(%rsi), %rax
	testl	%eax, %eax
	jle	.L2666
.L2665:
	movq	88(%rsi), %rdx
	salq	$4, %rax
	leaq	-16(%rdx,%rax), %rax
	movss	4(%rax), %xmm2
	movss	12(%rax), %xmm0
	movss	8(%rax), %xmm1
	movss	(%rax), %xmm3
	movss	%xmm3, 512(%rbx)
	movss	%xmm2, 516(%rbx)
	movss	%xmm1, 520(%rbx)
	movss	%xmm0, 524(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L2666:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	80(%rsi), %rax
	jmp	.L2665
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11PopClipRectEv
	.def	_ZN5ImGui11PopClipRectEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11PopClipRectEv
_ZN5ImGui11PopClipRectEv:
.LFB414:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movq	656(%rbx), %rcx
	movb	$1, 138(%rbx)
	call	_ZN10ImDrawList11PopClipRectEv
	movq	656(%rbx), %rsi
	movslq	80(%rsi), %rax
	testl	%eax, %eax
	jle	.L2669
.L2668:
	movq	88(%rsi), %rdx
	salq	$4, %rax
	leaq	-16(%rdx,%rax), %rax
	movss	4(%rax), %xmm2
	movss	12(%rax), %xmm0
	movss	8(%rax), %xmm1
	movss	(%rax), %xmm3
	movss	%xmm3, 512(%rbx)
	movss	%xmm2, 516(%rbx)
	movss	%xmm1, 520(%rbx)
	movss	%xmm0, 524(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L2669:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	80(%rsi), %rax
	jmp	.L2668
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19FindRenderedTextEndEPKcS1_
	.def	_ZN5ImGui19FindRenderedTextEndEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19FindRenderedTextEndEPKcS1_
_ZN5ImGui19FindRenderedTextEndEPKcS1_:
.LFB417:
	.seh_endprologue
	movq	%rcx, %rax
	testq	%rdx, %rdx
	movq	$-1, %rcx
	cmove	%rcx, %rdx
	cmpq	%rdx, %rax
	jnb	.L2672
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	jne	.L2674
	jmp	.L2683
	.p2align 4,,7
.L2675:
	incq	%rax
	cmpq	%rax, %rdx
	je	.L2672
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	je	.L2672
.L2674:
	cmpb	$35, %cl
	jne	.L2675
	cmpb	$35, 1(%rax)
	jne	.L2675
.L2672:
	.p2align 4,,4
	rep ret
.L2683:
	.p2align 4,,7
	rep ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7LogTextEPKcz
	.def	_ZN5ImGui7LogTextEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7LogTextEPKcz
_ZN5ImGui7LogTextEPKcz:
.LFB418:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	cmpb	$0, 11432(%rax)
	jne	.L2689
.L2684:
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L2689:
	movq	11440(%rax), %r9
	leaq	72(%rsp), %r8
	movq	%r8, 40(%rsp)
	testq	%r9, %r9
	je	.L2686
	movq	%rcx, %rdx
	movq	%r9, %rcx
	call	vfprintf
	nop
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L2686:
	movq	11448(%rax), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	_ZN15ImGuiTextBuffer7appendvEPKcPc
	jmp	.L2684
	.seh_endproc
	.section .rdata,"dr"
.LC98:
	.ascii "\15\12%*s%.*s\0"
.LC99:
	.ascii " %.*s\0"
	.text
	.p2align 4,,15
	.def	_ZL15LogRenderedTextRK6ImVec2PKcS3_;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL15LogRenderedTextRK6ImVec2PKcS3_
_ZL15LogRenderedTextRK6ImVec2PKcS3_:
.LFB419:
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
	movq	%r8, %rsi
	movq	GImGui(%rip), %r8
	movq	%rdx, %r12
	testq	%rsi, %rsi
	movq	6008(%r8), %rdx
	je	.L2718
.L2691:
	movss	.LC28(%rip), %xmm0
	movl	244(%rdx), %eax
	addss	240(%rdx), %xmm0
	movss	4(%rcx), %xmm1
	movl	11456(%r8), %ecx
	movss	%xmm1, 240(%rdx)
	ucomiss	%xmm0, %xmm1
	seta	%dil
	cmpl	%eax, %ecx
	jg	.L2696
	subl	%ecx, %eax
.L2697:
	leal	0(,%rax,4), %ebp
	movq	%r12, %r8
.L2707:
	cmpq	%r8, %rsi
	jbe	.L2698
	cmpb	$10, (%r8)
	movq	%r8, %rbx
	jne	.L2701
	jmp	.L2699
	.p2align 4,,7
.L2702:
	cmpb	$10, (%rbx)
	je	.L2699
.L2701:
	incq	%rbx
	cmpq	%rbx, %rsi
	.p2align 4,,2
	jne	.L2702
.L2698:
	cmpq	%r8, %rsi
	movq	%rsi, %rdx
	je	.L2690
	movq	%rsi, %rbx
	movl	$1, %r13d
.L2708:
	subq	%r8, %rdx
	cmpq	%r12, %r8
	jne	.L2713
	testb	%dil, %dil
	jne	.L2713
	leaq	.LC99(%rip), %rcx
	call	_ZN5ImGui7LogTextEPKcz
.L2706:
	testb	%r13b, %r13b
	jne	.L2690
	leaq	1(%rbx), %r8
	jmp	.L2707
	.p2align 4,,7
.L2699:
	cmpq	%rbx, %rsi
	jbe	.L2698
	movq	%rbx, %rdx
	xorl	%r13d, %r13d
	jmp	.L2708
	.p2align 4,,7
.L2690:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L2713:
	movq	%r8, 32(%rsp)
	leaq	.LC98(%rip), %rcx
	leaq	.LC91(%rip), %r8
	movl	%edx, %r9d
	movl	%ebp, %edx
	call	_ZN5ImGui7LogTextEPKcz
	jmp	.L2706
	.p2align 4,,7
.L2696:
	movl	%eax, 11456(%r8)
	xorl	%eax, %eax
	jmp	.L2697
.L2718:
	cmpq	$-1, %r12
	je	.L2710
	movzbl	(%r12), %eax
	movq	%r12, %rsi
	testb	%al, %al
	jne	.L2693
	jmp	.L2691
	.p2align 4,,7
.L2694:
	incq	%rsi
	cmpq	$-1, %rsi
	je	.L2691
	movzbl	(%rsi), %eax
	testb	%al, %al
	je	.L2691
.L2693:
	cmpb	$35, %al
	jne	.L2694
	cmpb	$35, 1(%rsi)
	jne	.L2694
	.p2align 4,,5
	jmp	.L2691
.L2710:
	movq	%r12, %rsi
	.p2align 4,,4
	jmp	.L2691
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	.def	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
_ZN5ImGui10RenderTextE6ImVec2PKcS2_b:
.LFB420:
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
	movq	GImGui(%rip), %rdi
	testb	%r9b, %r9b
	movq	%rcx, 128(%rsp)
	movq	%rdx, %rsi
	movq	6008(%rdi), %rbp
	movb	$1, 138(%rbp)
	je	.L2720
	testq	%r8, %r8
	movq	$-1, %rax
	cmove	%rax, %r8
	cmpq	%r8, %rdx
	jnb	.L2719
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L2719
	movq	%rdx, %rbx
	jmp	.L2724
	.p2align 4,,7
.L2726:
	incq	%rbx
	cmpq	%r8, %rbx
	je	.L2736
	movzbl	(%rbx), %eax
	testb	%al, %al
	je	.L2736
.L2724:
	cmpb	$35, %al
	jne	.L2726
	cmpb	$35, 1(%rbx)
	jne	.L2726
	.p2align 4,,7
.L2736:
	movl	%ebx, %edx
	subl	%esi, %edx
	testl	%edx, %edx
	jg	.L2737
.L2719:
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L2720:
	testq	%r8, %r8
	je	.L2728
	movl	%r8d, %edx
	movq	%r8, %rbx
	subl	%esi, %edx
.L2725:
	testl	%edx, %edx
	jle	.L2719
.L2737:
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	5936(%rdi), %rdx
	movq	656(%rbp), %rcx
	leaq	128(%rsp), %r9
	movss	5944(%rdi), %xmm2
	movq	$0, 64(%rsp)
	movl	$0x00000000, 56(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	cmpb	$0, 11432(%rdi)
	je	.L2719
	leaq	128(%rsp), %rcx
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L2728:
	movq	%rdx, %rcx
	call	strlen
	movl	%eax, %edx
	leaq	(%rsi,%rax), %rbx
	jmp	.L2725
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f
	.def	_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f
_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f:
.LFB421:
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
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	testq	%r8, %r8
	movq	%rdx, %rdi
	movq	%r8, %rbx
	movq	GImGui(%rip), %rsi
	movq	%rcx, 144(%rsp)
	movaps	%xmm3, %xmm6
	movq	6008(%rsi), %rbp
	movb	$1, 138(%rbp)
	je	.L2743
.L2739:
	movq	%rbx, %rax
	subq	%rdi, %rax
	testl	%eax, %eax
	jle	.L2738
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	5936(%rsi), %rdx
	movq	656(%rbp), %rcx
	leaq	144(%rsp), %r9
	movss	5944(%rsi), %xmm2
	movq	$0, 64(%rsp)
	movss	%xmm6, 56(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%rdi, 40(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	cmpb	$0, 11432(%rsi)
	jne	.L2744
.L2738:
	movaps	80(%rsp), %xmm6
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L2744:
	leaq	144(%rsp), %rcx
	movq	%rbx, %r8
	movq	%rdi, %rdx
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	nop
	movaps	80(%rsp), %xmm6
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L2743:
	movq	%rdx, %rcx
	call	strlen
	leaq	(%rdi,%rax), %rbx
	jmp	.L2739
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	.def	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
_ZN5ImGui11RenderFrameE6ImVec2S0_jbf:
.LFB423:
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
	leaq	168(%rsp), %rsi
	movl	%r9d, %edi
	movl	%r8d, %r9d
	movq	GImGui(%rip), %rax
	movq	%rcx, 160(%rsp)
	movss	192(%rsp), %xmm6
	movq	%rdx, 168(%rsp)
	leaq	160(%rsp), %rdx
	movq	%rsi, %r8
	movq	6008(%rax), %rbx
	movq	656(%rbx), %rcx
	movb	$1, 138(%rbx)
	movss	%xmm6, 32(%rsp)
	movl	$-1, 40(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	testb	%dil, %dil
	je	.L2745
	testb	$-128, 12(%rbx)
	jne	.L2750
.L2745:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	subq	$-128, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L2750:
	movl	$6, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	.LC28(%rip), %xmm7
	movq	656(%rbx), %rcx
	movss	172(%rsp), %xmm0
	leaq	64(%rsp), %rdx
	movss	168(%rsp), %xmm1
	addss	%xmm7, %xmm0
	addss	%xmm7, %xmm1
	leaq	80(%rsp), %r8
	movss	%xmm7, 48(%rsp)
	movss	%xmm6, 32(%rsp)
	movl	%eax, %r9d
	movl	$-1, 40(%rsp)
	movss	%xmm0, 84(%rsp)
	movss	%xmm1, 80(%rsp)
	movss	164(%rsp), %xmm0
	movss	160(%rsp), %xmm1
	addss	%xmm7, %xmm0
	addss	%xmm7, %xmm1
	movss	%xmm0, 68(%rsp)
	movss	%xmm1, 64(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movl	$5, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	656(%rbx), %rcx
	leaq	160(%rsp), %rdx
	movss	%xmm7, 48(%rsp)
	movss	%xmm6, 32(%rsp)
	movl	%eax, %r9d
	movl	$-1, 40(%rsp)
	movq	%rsi, %r8
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	jmp	.L2745
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	.def	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf:
.LFB424:
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	.LC50(%rip), %xmm0
	movss	5944(%rax), %xmm1
	movq	6008(%rax), %r8
	mulss	%xmm1, %xmm0
	movq	%rcx, %rax
	mulss	.LC29(%rip), %xmm1
	shrq	$32, %rax
	testb	%dl, %dl
	movq	%rax, 48(%rsp)
	movb	$1, 138(%r8)
	mulss	%xmm2, %xmm0
	mulss	%xmm1, %xmm2
	movaps	%xmm0, %xmm4
	addss	48(%rsp), %xmm2
	movl	%ecx, 48(%rsp)
	movd	48(%rsp), %xmm3
	addss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	jne	.L2754
	mulss	%xmm0, %xmm3
	addss	%xmm1, %xmm4
	addss	%xmm2, %xmm3
	movss	%xmm4, 64(%rsp)
	movss	%xmm3, 68(%rsp)
	movss	.LC100(%rip), %xmm3
	mulss	%xmm0, %xmm3
	addss	%xmm3, %xmm1
	movss	.LC102(%rip), %xmm3
	mulss	%xmm0, %xmm3
	mulss	.LC101(%rip), %xmm0
	movss	%xmm1, 80(%rsp)
	addss	%xmm2, %xmm3
	movss	%xmm1, 96(%rsp)
	addss	%xmm0, %xmm2
	movss	%xmm3, 84(%rsp)
	movss	%xmm2, 100(%rsp)
.L2753:
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	656(%r8), %rcx
	leaq	64(%rsp), %rdx
	leaq	96(%rsp), %r9
	leaq	80(%rsp), %r8
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j
	nop
	addq	$120, %rsp
	ret
	.p2align 4,,7
.L2754:
	mulss	%xmm0, %xmm3
	mulss	.LC60(%rip), %xmm4
	addss	%xmm1, %xmm3
	subss	%xmm4, %xmm2
	movss	%xmm3, 64(%rsp)
	movaps	%xmm0, %xmm3
	addss	%xmm2, %xmm3
	movss	%xmm3, 68(%rsp)
	movss	.LC100(%rip), %xmm3
	mulss	%xmm0, %xmm3
	addss	%xmm3, %xmm2
	movss	.LC101(%rip), %xmm3
	mulss	%xmm0, %xmm3
	mulss	.LC102(%rip), %xmm0
	movss	%xmm2, 84(%rsp)
	addss	%xmm1, %xmm3
	movss	%xmm2, 100(%rsp)
	addss	%xmm0, %xmm1
	movss	%xmm3, 80(%rsp)
	movss	%xmm1, 96(%rsp)
	jmp	.L2753
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12RenderBulletE6ImVec2
	.def	_ZN5ImGui12RenderBulletE6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12RenderBulletE6ImVec2
_ZN5ImGui12RenderBulletE6ImVec2:
.LFB425:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	GImGui(%rip), %r10
	movq	%rcx, 64(%rsp)
	xorl	%ecx, %ecx
	movq	6008(%r10), %r8
	movb	$1, 138(%r8)
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	.LC55(%rip), %xmm2
	movq	656(%r8), %rcx
	mulss	5944(%r10), %xmm2
	leaq	64(%rsp), %rdx
	movl	%eax, %r9d
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
.LFB426:
	pushq	%r12
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
	movl	%edx, %esi
	movq	GImGui(%rip), %r9
	movss	.LC103(%rip), %xmm0
	movss	.LC29(%rip), %xmm1
	movl	%ecx, 64(%rsp)
	movss	.LC35(%rip), %xmm8
	shrq	$32, %rcx
	movss	5944(%r9), %xmm3
	movq	5936(%r9), %rdx
	mulss	%xmm3, %xmm0
	movd	64(%rsp), %xmm6
	movq	%rcx, 64(%rsp)
	movss	64(%rsp), %xmm7
	movq	6008(%r9), %rdi
	addss	%xmm1, %xmm6
	subss	.LC28(%rip), %xmm7
	addss	%xmm1, %xmm0
	movq	656(%rdi), %rbx
	movb	$1, 138(%rdi)
	movl	116(%rbx), %r8d
	cvttss2si	%xmm0, %eax
	movaps	%xmm3, %xmm0
	divss	(%rdx), %xmm3
	cvtsi2ss	%eax, %xmm2
	subss	%xmm2, %xmm0
	mulss	96(%rdx), %xmm3
	addss	%xmm2, %xmm6
	movss	12(%rdx), %xmm2
	movslq	112(%rbx), %rdx
	divss	%xmm8, %xmm0
	cmpl	%r8d, %edx
	addss	%xmm3, %xmm1
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm0
	cvttss2si	%xmm1, %eax
	movaps	%xmm0, %xmm9
	mulss	%xmm0, %xmm8
	cvtsi2ss	%eax, %xmm1
	cvttss2si	%xmm2, %eax
	addss	%xmm6, %xmm9
	addss	%xmm6, %xmm8
	addss	%xmm7, %xmm1
	cvtsi2ss	%eax, %xmm2
	movaps	%xmm1, %xmm7
	addss	%xmm2, %xmm7
	movaps	%xmm7, %xmm11
	movaps	%xmm7, %xmm10
	subss	%xmm0, %xmm11
	addss	%xmm0, %xmm0
	subss	%xmm0, %xmm10
	je	.L2757
	movq	120(%rbx), %rbp
	leal	1(%rdx), %r10d
	movq	%rbx, %r12
.L2758:
	movl	%r10d, 112(%rbx)
	leaq	0(%rbp,%rdx,8), %rax
	movslq	112(%r12), %rdx
	movss	%xmm6, (%rax)
	movss	%xmm11, 4(%rax)
	cmpl	%r8d, %edx
	je	.L2764
	movq	120(%r12), %rbx
	leal	1(%rdx), %r9d
	movq	%r12, %rbp
.L2765:
	movl	%r9d, 112(%r12)
	movslq	112(%rbp), %r9
	leaq	(%rbx,%rdx,8), %rax
	movss	%xmm9, (%rax)
	movss	%xmm7, 4(%rax)
	cmpl	%r8d, %r9d
	je	.L2771
	movq	120(%rbp), %rax
	leal	1(%r9), %r10d
	movq	%rbp, %rbx
	movq	%rax, %rdx
.L2772:
	leaq	(%rax,%r9,8), %rax
	movl	%r10d, 112(%rbp)
	movl	112(%rbx), %r8d
	movl	%esi, %r9d
	movq	%rbx, %rcx
	movss	%xmm8, (%rax)
	movss	%xmm10, 4(%rax)
	movl	$1, 48(%rsp)
	movl	$0x3f800000, 40(%rsp)
	movl	$0, 32(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	movl	116(%rbx), %eax
	testl	%eax, %eax
	jns	.L2778
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	incl	844(%rax)
	call	*232(%rax)
	movq	120(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L2779
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2781
	decl	844(%rax)
.L2781:
	call	*240(%rax)
	movq	%rsi, 120(%rbx)
	movl	$0, 116(%rbx)
.L2778:
	movl	$0, 112(%rbx)
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
	movaps	144(%rsp), %xmm10
	movaps	160(%rsp), %xmm11
	addq	$176, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L2757:
	testl	%edx, %edx
	leal	1(%rdx), %r10d
	movl	$8, %eax
	jne	.L2789
	cmpl	%eax, %r10d
	cmovge	%r10d, %eax
	cmpl	%edx, %eax
	movl	%eax, %r12d
	jg	.L2760
.L2794:
	movq	120(%rbx), %rbp
	movl	%edx, %r8d
	movq	%rbx, %r12
	jmp	.L2758
	.p2align 4,,7
.L2771:
	testl	%r8d, %r8d
	leal	1(%r8), %r10d
	movl	$8, %eax
	jne	.L2790
	cmpl	%eax, %r10d
	cmovge	%r10d, %eax
	cmpl	%eax, %r9d
	movl	%eax, %ebx
	jl	.L2774
.L2793:
	movq	120(%rbp), %rax
	movq	%rbp, %rbx
	movq	%rax, %rdx
	jmp	.L2772
	.p2align 4,,7
.L2764:
	testl	%r8d, %r8d
	leal	1(%r8), %r9d
	movl	$8, %eax
	jne	.L2791
	cmpl	%eax, %r9d
	cmovge	%r9d, %eax
	cmpl	%edx, %eax
	movl	%eax, %ebp
	jg	.L2767
.L2792:
	movq	120(%r12), %rbx
	movl	%edx, %r8d
	movq	%r12, %rbp
	jmp	.L2765
	.p2align 4,,7
.L2791:
	movl	%r8d, %eax
	shrl	$31, %eax
	addl	%r8d, %eax
	sarl	%eax
	addl	%r8d, %eax
	cmpl	%eax, %r9d
	cmovge	%r9d, %eax
	cmpl	%edx, %eax
	movl	%eax, %ebp
	jle	.L2792
.L2767:
	movq	GImGui(%rip), %rax
	movslq	%ebp, %rcx
	salq	$3, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	120(%r12), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L2768
	movslq	112(%r12), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%r12), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2770
	decl	844(%rax)
.L2770:
	call	*240(%rax)
	movslq	112(%r12), %rdx
	movl	%ebp, 116(%r12)
	movq	656(%rdi), %rbp
	movq	%rbx, 120(%r12)
	movl	116(%rbp), %r8d
	leal	1(%rdx), %r9d
	jmp	.L2765
	.p2align 4,,7
.L2790:
	movl	%r8d, %eax
	shrl	$31, %eax
	addl	%r8d, %eax
	sarl	%eax
	addl	%r8d, %eax
	cmpl	%eax, %r10d
	cmovge	%r10d, %eax
	cmpl	%eax, %r9d
	movl	%eax, %ebx
	jge	.L2793
.L2774:
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	salq	$3, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	120(%rbp), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L2775
	movslq	112(%rbp), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbp), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2777
	decl	844(%rax)
.L2777:
	call	*240(%rax)
	movslq	112(%rbp), %r9
	movl	%ebx, 116(%rbp)
	movq	%r12, %rax
	movq	656(%rdi), %rbx
	movq	%r12, 120(%rbp)
	leal	1(%r9), %r10d
	movq	120(%rbx), %rdx
	jmp	.L2772
	.p2align 4,,7
.L2789:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r10d
	cmovge	%r10d, %eax
	cmpl	%edx, %eax
	movl	%eax, %r12d
	jle	.L2794
.L2760:
	incl	844(%r9)
	movslq	%eax, %rcx
	salq	$3, %rcx
	call	*232(%r9)
	movq	120(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L2761
	movslq	112(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L2763
	decl	844(%rax)
.L2763:
	call	*240(%rax)
	movslq	112(%rbx), %rdx
	movl	%r12d, 116(%rbx)
	movq	656(%rdi), %r12
	movq	%rbp, 120(%rbx)
	movl	116(%r12), %r8d
	leal	1(%rdx), %r10d
	jmp	.L2758
	.p2align 4,,7
.L2779:
	movq	GImGui(%rip), %rax
	jmp	.L2781
	.p2align 4,,7
.L2761:
	movq	GImGui(%rip), %rax
	jmp	.L2763
	.p2align 4,,7
.L2775:
	movq	GImGui(%rip), %rax
	jmp	.L2777
	.p2align 4,,7
.L2768:
	movq	GImGui(%rip), %rax
	jmp	.L2770
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	.def	_ZN5ImGui12CalcTextSizeEPKcS1_bf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12CalcTextSizeEPKcS1_bf
_ZN5ImGui12CalcTextSizeEPKcS1_bf:
.LFB427:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	testb	%r8b, %r8b
	movq	GImGui(%rip), %r9
	je	.L2808
	testq	%rdx, %rdx
	movq	$-1, %rax
	cmove	%rax, %rdx
	cmpq	%rdx, %rcx
	jnb	.L2798
	movzbl	(%rcx), %r8d
	testb	%r8b, %r8b
	je	.L2798
	movq	%rcx, %rax
	jmp	.L2800
	.p2align 4,,7
.L2801:
	incq	%rax
	cmpq	%rdx, %rax
	je	.L2796
	movzbl	(%rax), %r8d
	testb	%r8b, %r8b
	je	.L2796
.L2800:
	cmpb	$35, %r8b
	jne	.L2801
	cmpb	$35, 1(%rax)
	jne	.L2801
	.p2align 4,,3
	jmp	.L2796
	.p2align 4,,7
.L2808:
	movq	%rdx, %rax
.L2796:
	cmpq	%rcx, %rax
	movss	5944(%r9), %xmm6
	je	.L2807
	movq	5936(%r9), %rbx
	movaps	%xmm6, %xmm1
	movq	%rcx, 32(%rsp)
	movq	$0, 48(%rsp)
	movq	%rax, 40(%rsp)
	movss	.LC21(%rip), %xmm2
	movq	%rbx, %rcx
	call	_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
	movl	%eax, 76(%rsp)
	movss	(%rbx), %xmm1
	movss	76(%rsp), %xmm0
	ucomiss	.LC9(%rip), %xmm0
	jbe	.L2805
	divss	%xmm1, %xmm6
	subss	%xmm6, %xmm0
.L2805:
	addss	.LC22(%rip), %xmm0
	movabsq	$-4294967296, %rcx
	andq	%rcx, %rax
	movaps	80(%rsp), %xmm6
	cvttss2si	%xmm0, %edx
	cvtsi2ss	%edx, %xmm4
	movss	%xmm4, 76(%rsp)
	movl	76(%rsp), %edx
	orq	%rdx, %rax
	addq	$96, %rsp
	popq	%rbx
	ret
.L2798:
	movss	5944(%r9), %xmm6
.L2807:
	movss	%xmm6, 76(%rsp)
	movl	76(%rsp), %eax
	movaps	80(%rsp), %xmm6
	salq	$32, %rax
	addq	$96, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	.def	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect:
.LFB422:
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
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	.seh_endprologue
	movq	$-1, %rax
	testq	%r9, %r9
	movq	%rdx, %r13
	movq	%rcx, %rbp
	cmove	%rax, %r9
	movq	%r8, %rsi
	movq	240(%rsp), %rdx
	cmpq	%r9, %r8
	movq	256(%rsp), %rdi
	jnb	.L2819
	movzbl	(%r8), %eax
	testb	%al, %al
	je	.L2819
	movq	%r8, %rbx
	jmp	.L2823
	.p2align 4,,7
.L2825:
	incq	%rbx
	cmpq	%r9, %rbx
	je	.L2863
	movzbl	(%rbx), %eax
	testb	%al, %al
	je	.L2863
.L2823:
	cmpb	$35, %al
	jne	.L2825
	cmpb	$35, 1(%rbx)
	jne	.L2825
	.p2align 4,,7
.L2863:
	movl	%ebx, %eax
	subl	%esi, %eax
	testl	%eax, %eax
	je	.L2819
	movq	GImGui(%rip), %r12
	movq	0(%rbp), %rax
	testq	%rdx, %rdx
	movq	6008(%r12), %r14
	movq	%rax, 96(%rsp)
	movb	$1, 138(%r14)
	je	.L2827
	movss	(%rdx), %xmm6
	movss	4(%rdx), %xmm4
.L2828:
	testq	%rdi, %rdi
	je	.L2829
	movaps	%xmm6, %xmm0
	movss	96(%rsp), %xmm2
	movss	8(%rdi), %xmm3
	movq	%rdi, %rbp
	addss	%xmm2, %xmm0
	leaq	8(%rdi), %rcx
	movl	$1, %edx
	ucomiss	%xmm3, %xmm0
	jnb	.L2846
	movss	100(%rsp), %xmm0
	addss	%xmm4, %xmm0
	ucomiss	12(%rdi), %xmm0
	setnb	%dl
.L2846:
	movss	(%rdi), %xmm0
	movl	$1, %eax
	ucomiss	%xmm2, %xmm0
	ja	.L2845
	movss	4(%rdi), %xmm0
	ucomiss	100(%rsp), %xmm0
	seta	%al
	orl	%edx, %eax
.L2845:
	movq	248(%rsp), %rdi
	xorps	%xmm5, %xmm5
	movss	(%rdi), %xmm1
	ucomiss	%xmm5, %xmm1
	jbe	.L2833
	movss	0(%r13), %xmm0
	subss	%xmm2, %xmm0
	subss	%xmm6, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm1
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 96(%rsp)
.L2833:
	movss	4(%rdi), %xmm1
	ucomiss	%xmm5, %xmm1
	jbe	.L2837
	movss	100(%rsp), %xmm2
	movss	4(%r13), %xmm0
	subss	%xmm2, %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm1
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 100(%rsp)
.L2837:
	testb	%al, %al
	je	.L2841
	movss	4(%rcx), %xmm0
	xorl	%ecx, %ecx
	leaq	96(%rsp), %rdi
	movss	0(%rbp), %xmm2
	movss	4(%rbp), %xmm1
	movss	%xmm2, 112(%rsp)
	movss	%xmm1, 116(%rsp)
	movss	%xmm3, 120(%rsp)
	movss	%xmm0, 124(%rsp)
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	leaq	112(%rsp), %r8
	movss	5944(%r12), %xmm2
	movq	5936(%r12), %rdx
	movq	656(%r14), %rcx
	movq	%r8, 64(%rsp)
.L2864:
	movl	$0x00000000, 56(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%rdi, %r9
	movq	%rsi, 40(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	cmpb	$0, 11432(%r12)
	jne	.L2865
.L2819:
	movaps	128(%rsp), %xmm6
	addq	$144, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L2841:
	xorl	%ecx, %ecx
	leaq	96(%rsp), %rdi
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	5944(%r12), %xmm2
	movq	5936(%r12), %rdx
	movq	656(%r14), %rcx
	movq	$0, 64(%rsp)
	jmp	.L2864
	.p2align 4,,7
.L2865:
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	jmp	.L2819
.L2829:
	movaps	%xmm6, %xmm0
	movss	96(%rsp), %xmm2
	addss	%xmm2, %xmm0
	movss	0(%r13), %xmm3
	ucomiss	%xmm3, %xmm0
	jnb	.L2849
	movss	100(%rsp), %xmm0
	movq	%r13, %rcx
	addss	%xmm4, %xmm0
	ucomiss	4(%r13), %xmm0
	setnb	%al
	jmp	.L2845
.L2827:
	xorps	%xmm3, %xmm3
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movl	%eax, 92(%rsp)
	shrq	$32, %rax
	movss	92(%rsp), %xmm6
	movl	%eax, 92(%rsp)
	movss	92(%rsp), %xmm4
	jmp	.L2828
.L2849:
	movq	%r13, %rcx
	movl	$1, %eax
	jmp	.L2845
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16CalcListClippingEifPiS0_
	.def	_ZN5ImGui16CalcListClippingEifPiS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16CalcListClippingEifPiS0_
_ZN5ImGui16CalcListClippingEifPiS0_:
.LFB428:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	cmpb	$0, 11432(%rax)
	je	.L2867
	movl	$0, (%r8)
	movl	%ecx, (%r9)
	ret
	.p2align 4,,7
.L2867:
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	je	.L2869
	movl	$0, (%r9)
	movl	$0, (%r8)
	ret
	.p2align 4,,7
.L2869:
	movss	196(%rax), %xmm2
	xorl	%r10d, %r10d
	movss	516(%rax), %xmm0
	subss	%xmm2, %xmm0
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movss	524(%rax), %xmm0
	subss	%xmm2, %xmm0
	divss	%xmm1, %xmm0
	testl	%edx, %edx
	cvttss2si	%xmm0, %eax
	js	.L2870
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	movl	%edx, %r10d
.L2870:
	incl	%eax
	movl	%r10d, %edx
	cmpl	%r10d, %eax
	jl	.L2871
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	movl	%eax, %edx
.L2871:
	movl	%r10d, (%r8)
	movl	%edx, (%r9)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	.def	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b:
.LFB430:
	subq	$24, %rsp
	.seh_stackalloc	24
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	.seh_endprologue
	testb	%r8b, %r8b
	movq	GImGui(%rip), %rax
	movss	(%rcx), %xmm0
	movss	4(%rcx), %xmm3
	movss	(%rdx), %xmm2
	movss	4(%rdx), %xmm1
	je	.L2875
	movq	6008(%rax), %rdx
	movss	512(%rdx), %xmm4
	maxss	%xmm0, %xmm4
	movaps	%xmm4, %xmm0
	movss	516(%rdx), %xmm4
	maxss	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	movss	520(%rdx), %xmm4
	minss	%xmm2, %xmm4
	movaps	%xmm4, %xmm2
	movss	524(%rdx), %xmm4
	minss	%xmm1, %xmm4
	movaps	%xmm4, %xmm1
.L2875:
	movss	5184(%rax), %xmm5
	subss	%xmm5, %xmm0
	movss	264(%rax), %xmm4
	ucomiss	%xmm0, %xmm4
	jb	.L2891
	movss	5188(%rax), %xmm6
	addss	%xmm5, %xmm2
	subss	%xmm6, %xmm3
	movss	268(%rax), %xmm0
	addss	%xmm6, %xmm1
	movaps	(%rsp), %xmm6
	ucomiss	%xmm3, %xmm0
	setnb	%dl
	ucomiss	%xmm4, %xmm2
	seta	%al
	andl	%edx, %eax
	ucomiss	%xmm0, %xmm1
	seta	%dl
	andl	%edx, %eax
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L2891:
	movaps	(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$24, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7ItemAddERK6ImRectPKj
	.def	_ZN5ImGui7ItemAddERK6ImRectPKj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7ItemAddERK6ImRectPKj
_ZN5ImGui7ItemAddERK6ImRectPKj:
.LFB375:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %r11
	testq	%rdx, %rdx
	movq	%rdx, %r10
	movq	6008(%r11), %r9
	movb	$1, 138(%r9)
	je	.L2893
	movl	(%rdx), %eax
	movq	8(%rcx), %rdx
	movl	%eax, 248(%r9)
	movq	(%rcx), %rax
	movq	%rdx, 260(%r9)
	movb	$0, 269(%r9)
	movb	$0, 268(%r9)
	movq	%rax, 252(%r9)
	movss	12(%rcx), %xmm0
	ucomiss	516(%r9), %xmm0
	jbe	.L2895
	movss	524(%r9), %xmm0
	ucomiss	4(%rcx), %xmm0
	jbe	.L2895
.L2909:
	movss	8(%rcx), %xmm0
	ucomiss	512(%r9), %xmm0
	jbe	.L2896
	movss	520(%r9), %xmm0
	ucomiss	(%rcx), %xmm0
	jbe	.L2896
	.p2align 4,,7
.L2901:
	leaq	8(%rcx), %rdx
	movl	$1, %r8d
	call	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	testb	%al, %al
	je	.L2900
	movq	6048(%r11), %rdx
	cmpq	664(%r9), %rdx
	movb	$1, 269(%r9)
	je	.L2931
.L2900:
	movl	$1, %eax
.L2929:
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L2896:
	testq	%r10, %r10
	je	.L2907
.L2895:
	movl	6068(%r11), %eax
	cmpl	%eax, (%r10)
	je	.L2901
.L2907:
	movzbl	11432(%r11), %eax
	testb	%al, %al
	jne	.L2901
	jmp	.L2929
	.p2align 4,,7
.L2931:
	movl	6068(%r11), %ecx
	testl	%ecx, %ecx
	je	.L2903
	testq	%r10, %r10
	je	.L2904
	cmpl	(%r10), %ecx
	je	.L2903
.L2904:
	cmpb	$0, 6078(%r11)
	jne	.L2903
	cmpl	92(%r9), %ecx
	jne	.L2900
	.p2align 4,,7
.L2903:
	movq	6032(%r11), %rcx
	testq	%rcx, %rcx
	je	.L2905
	movq	664(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L2905
	testb	$2, 15(%rcx)
	je	.L2905
	cmpb	$0, 137(%rcx)
	je	.L2905
	cmpq	%rcx, %rdx
	jne	.L2900
	.p2align 4,,7
.L2905:
	movb	$1, 268(%r9)
	jmp	.L2929
	.p2align 4,,7
.L2893:
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movl	$0, 248(%r9)
	movb	$0, 269(%r9)
	movb	$0, 268(%r9)
	movq	%rax, 252(%r9)
	movq	%rdx, 260(%r9)
	movss	12(%rcx), %xmm0
	ucomiss	516(%r9), %xmm0
	jbe	.L2907
	movss	524(%r9), %xmm0
	ucomiss	4(%rcx), %xmm0
	ja	.L2909
	jmp	.L2907
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9IsHoveredERK6ImRectjb
	.def	_ZN5ImGui9IsHoveredERK6ImRectjb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9IsHoveredERK6ImRectjb
_ZN5ImGui9IsHoveredERK6ImRectjb:
.LFB377:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %r9
	movl	6056(%r9), %eax
	testl	%eax, %eax
	je	.L2933
	cmpl	%edx, %eax
	je	.L2933
	movzbl	6060(%r9), %eax
	testb	%al, %al
	je	.L2945
.L2933:
	movq	6008(%r9), %r10
	cmpq	%r10, 6040(%r9)
	je	.L2935
	xorl	%eax, %eax
	testb	%r8b, %r8b
	je	.L2945
	movq	664(%r10), %r11
	cmpq	%r11, 6048(%r9)
	je	.L2935
.L2945:
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L2935:
	movl	6068(%r9), %eax
	testl	%eax, %eax
	je	.L2936
	cmpl	%eax, %edx
	je	.L2936
	movzbl	6078(%r9), %eax
	testb	%al, %al
	je	.L2945
.L2936:
	leaq	8(%rcx), %rdx
	movl	$1, %r8d
	call	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	testb	%al, %al
	je	.L2945
	movq	6032(%r9), %rdx
	testq	%rdx, %rdx
	je	.L2945
	movq	664(%rdx), %rdx
	testq	%rdx, %rdx
	je	.L2945
	testb	$2, 15(%rdx)
	je	.L2945
	cmpb	$0, 137(%rdx)
	je	.L2945
	movq	6048(%r9), %rax
	cmpq	%rdx, 664(%rax)
	sete	%al
	jmp	.L2945
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui21IsMouseHoveringWindowEv
	.def	_ZN5ImGui21IsMouseHoveringWindowEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21IsMouseHoveringWindowEv
_ZN5ImGui21IsMouseHoveringWindowEv:
.LFB431:
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
.LFB432:
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
.LFB433:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rcx
	xorl	%edx, %edx
	call	_ZL17FindHoveredWindow6ImVec2b
	testq	%rax, %rax
	setne	%al
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC104:
	.ascii "imgui_key >= 0 && imgui_key < ImGuiKey_COUNT\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11GetKeyIndexEi
	.def	_ZN5ImGui11GetKeyIndexEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetKeyIndexEi
_ZN5ImGui11GetKeyIndexEi:
.LFB435:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movslq	%ecx, %rbx
	cmpl	$18, %ebx
	ja	.L2959
.L2958:
	movq	GImGui(%rip), %rax
	movl	52(%rax,%rbx,4), %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L2959:
	leaq	.LC15(%rip), %rdx
	leaq	.LC104(%rip), %rcx
	movl	$3153, %r8d
	call	_assert
	jmp	.L2958
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC105:
	.ascii "user_key_index >= 0 && user_key_index < ((int)(sizeof(GImGui->IO.KeysDown)/sizeof(*GImGui->IO.KeysDown)))\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui9IsKeyDownEi
	.def	_ZN5ImGui9IsKeyDownEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9IsKeyDownEi
_ZN5ImGui9IsKeyDownEi:
.LFB436:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movslq	%ecx, %rbx
	testl	%ebx, %ebx
	js	.L2963
	cmpl	$511, %ebx
	jg	.L2964
.L2962:
	movq	GImGui(%rip), %rax
	movzbl	289(%rax,%rbx), %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L2964:
	leaq	.LC15(%rip), %rdx
	leaq	.LC105(%rip), %rcx
	movl	$3161, %r8d
	call	_assert
	jmp	.L2962
	.p2align 4,,7
.L2963:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC106:
	.ascii "user_key_index >= 0 && user_key_index < ((int)(sizeof(g.IO.KeysDown)/sizeof(*g.IO.KeysDown)))\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12IsKeyPressedEib
	.def	_ZN5ImGui12IsKeyPressedEib;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12IsKeyPressedEib
_ZN5ImGui12IsKeyPressedEib:
.LFB437:
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
	js	.L2970
	cmpl	$511, %ebx
	movq	GImGui(%rip), %rsi
	jg	.L2975
.L2968:
	movss	1020(%rsi,%rbx,4), %xmm0
	ucomiss	.LC9(%rip), %xmm0
	jp	.L2973
	movl	$1, %eax
	je	.L2967
.L2973:
	testb	%dil, %dil
	je	.L2970
	movss	128(%rsi), %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.L2976
.L2970:
	xorl	%eax, %eax
.L2967:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L2975:
	leaq	.LC15(%rip), %rdx
	leaq	.LC106(%rip), %rcx
	movl	$3169, %r8d
	call	_assert
	jmp	.L2968
	.p2align 4,,7
.L2976:
	movaps	%xmm0, %xmm6
	movss	132(%rsi), %xmm7
	subss	%xmm1, %xmm6
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	fmodf
	subss	16(%rsi), %xmm6
	movss	.LC29(%rip), %xmm8
	mulss	%xmm7, %xmm8
	movaps	%xmm0, %xmm9
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	fmodf
	ucomiss	%xmm8, %xmm9
	seta	%dl
	ucomiss	%xmm8, %xmm0
	seta	%al
	xorl	%edx, %eax
	jmp	.L2967
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb
	.def	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb
_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb:
.LFB378:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movzbl	316(%rcx), %esi
	movl	688(%rcx), %eax
	movq	%rcx, %rbx
	movq	GImGui(%rip), %rdi
	incl	%eax
	testb	%sil, %sil
	movl	%eax, 688(%rcx)
	je	.L2978
	incl	692(%rcx)
.L2978:
	testb	%r8b, %r8b
	je	.L2982
	movabsq	$9223372034707292159, %rcx
	cmpq	%rcx, 704(%rbx)
	jne	.L2982
	testb	%dl, %dl
	jne	.L2996
	.p2align 4,,7
.L2982:
	cmpl	%eax, 696(%rbx)
	je	.L2985
	xorl	%eax, %eax
	testb	%sil, %sil
	je	.L2991
	movl	700(%rbx), %eax
	cmpl	%eax, 692(%rbx)
	sete	%al
.L2991:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L2985:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L2996:
	movl	52(%rdi), %ecx
	movl	$1, %edx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L2995
	cmpb	$0, 286(%rdi)
	movl	692(%rbx), %eax
	movl	$1, %edx
	je	.L2984
	movzbl	%sil, %edx
	negl	%edx
.L2984:
	addl	%edx, %eax
	movl	%eax, 708(%rbx)
.L2995:
	movl	688(%rbx), %eax
	jmp	.L2982
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13IsKeyReleasedEi
	.def	_ZN5ImGui13IsKeyReleasedEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13IsKeyReleasedEi
_ZN5ImGui13IsKeyReleasedEi:
.LFB438:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movslq	%ecx, %rbx
	testl	%ebx, %ebx
	js	.L2998
	cmpl	$511, %ebx
	movq	GImGui(%rip), %rsi
	jg	.L3004
.L2999:
	movss	3068(%rsi,%rbx,4), %xmm0
	ucomiss	.LC9(%rip), %xmm0
	jb	.L2998
	cmpb	$0, 289(%rsi,%rbx)
	movl	$1, %eax
	je	.L3001
.L2998:
	xorl	%eax, %eax
.L3001:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3004:
	leaq	.LC15(%rip), %rdx
	leaq	.LC106(%rip), %rcx
	movl	$3187, %r8d
	call	_assert
	jmp	.L2999
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC107:
	.ascii "button >= 0 && button < ((int)(sizeof(g.IO.MouseDown)/sizeof(*g.IO.MouseDown)))\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11IsMouseDownEi
	.def	_ZN5ImGui11IsMouseDownEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11IsMouseDownEi
_ZN5ImGui11IsMouseDownEi:
.LFB439:
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
	jbe	.L3006
	leaq	.LC15(%rip), %rdx
	leaq	.LC107(%rip), %rcx
	movl	$3196, %r8d
	call	_assert
.L3006:
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
.LFB440:
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
	cmpl	$4, %ebx
	movq	GImGui(%rip), %rsi
	jbe	.L3008
	leaq	.LC15(%rip), %rdx
	leaq	.LC107(%rip), %rcx
	movl	$3203, %r8d
	call	_assert
.L3008:
	movss	960(%rsi,%rbx,4), %xmm0
	ucomiss	.LC9(%rip), %xmm0
	jp	.L3015
	movl	$1, %eax
	je	.L3009
.L3015:
	xorl	%eax, %eax
	testb	%dil, %dil
	je	.L3009
	movss	128(%rsi), %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.L3017
.L3009:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L3017:
	movaps	%xmm0, %xmm6
	movss	132(%rsi), %xmm7
	subss	%xmm1, %xmm6
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	fmodf
	subss	16(%rsi), %xmm6
	movss	.LC29(%rip), %xmm8
	mulss	%xmm7, %xmm8
	movaps	%xmm0, %xmm9
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	fmodf
	ucomiss	%xmm8, %xmm9
	seta	%dl
	ucomiss	%xmm8, %xmm0
	seta	%al
	xorl	%edx, %eax
	jmp	.L3009
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15IsMouseReleasedEi
	.def	_ZN5ImGui15IsMouseReleasedEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15IsMouseReleasedEi
_ZN5ImGui15IsMouseReleasedEi:
.LFB441:
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
	jbe	.L3019
	leaq	.LC15(%rip), %rdx
	leaq	.LC107(%rip), %rcx
	movl	$3221, %r8d
	call	_assert
.L3019:
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
.LFB442:
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
	jbe	.L3021
	leaq	.LC15(%rip), %rdx
	leaq	.LC107(%rip), %rcx
	movl	$3228, %r8d
	call	_assert
.L3021:
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
.LFB443:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movslq	%ecx, %rbx
	movaps	%xmm1, %xmm6
	cmpl	$4, %ebx
	movq	GImGui(%rip), %rsi
	jbe	.L3023
	leaq	.LC15(%rip), %rdx
	leaq	.LC107(%rip), %rcx
	movl	$3235, %r8d
	call	_assert
.L3023:
	movzbl	272(%rsi,%rbx), %eax
	testb	%al, %al
	je	.L3024
	xorps	%xmm0, %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L3031
.L3025:
	mulss	%xmm6, %xmm6
	movss	1000(%rsi,%rbx,4), %xmm0
	ucomiss	%xmm6, %xmm0
	setnb	%al
.L3024:
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3031:
	movss	48(%rsi), %xmm6
	jmp	.L3025
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11GetMousePosEv
	.def	_ZN5ImGui11GetMousePosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11GetMousePosEv
_ZN5ImGui11GetMousePosEv:
.LFB444:
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
.LFB445:
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
	jle	.L3034
	leal	-1(%rax), %ebx
	cmpl	6184(%rsi), %ebx
	jge	.L3037
.L3035:
	movslq	%ebx, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rax
	addq	6192(%rsi), %rax
	movq	28(%rax), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3037:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L3035
	.p2align 4,,7
.L3034:
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
.LFB446:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movslq	%ecx, %rbx
	movaps	%xmm1, %xmm6
	cmpl	$4, %ebx
	movq	GImGui(%rip), %rsi
	jbe	.L3039
	leaq	.LC15(%rip), %rdx
	leaq	.LC107(%rip), %rcx
	movl	$3260, %r8d
	call	_assert
.L3039:
	xorps	%xmm0, %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L3049
.L3040:
	cmpb	$0, 272(%rsi,%rbx)
	je	.L3048
	mulss	%xmm6, %xmm6
	movss	1000(%rsi,%rbx,4), %xmm1
	ucomiss	%xmm6, %xmm1
	jnb	.L3050
.L3048:
	movaps	%xmm0, %xmm1
.L3042:
	movss	%xmm0, 44(%rsp)
	movl	44(%rsp), %eax
	movss	%xmm1, 44(%rsp)
	movl	44(%rsp), %edx
	salq	$32, %rax
	movl	%edx, %edx
	movaps	48(%rsp), %xmm6
	orq	%rdx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3049:
	movss	48(%rsi), %xmm6
	jmp	.L3040
	.p2align 4,,7
.L3050:
	leaq	(%rsi,%rbx,8), %rax
	movss	268(%rsi), %xmm0
	movss	264(%rsi), %xmm1
	subss	888(%rax), %xmm0
	subss	884(%rax), %xmm1
	jmp	.L3042
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19ResetMouseDragDeltaEi
	.def	_ZN5ImGui19ResetMouseDragDeltaEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19ResetMouseDragDeltaEi
_ZN5ImGui19ResetMouseDragDeltaEi:
.LFB447:
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
	jbe	.L3052
	leaq	.LC15(%rip), %rdx
	leaq	.LC107(%rip), %rcx
	movl	$3272, %r8d
	call	_assert
.L3052:
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
.LFB448:
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
.LFB449:
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
.LFB450:
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
.LFB451:
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
.LFB452:
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
.LFB453:
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
.LFB454:
	.seh_endprologue
	movq	GImGui(%rip), %rcx
	xorl	%eax, %eax
	movl	6068(%rcx), %edx
	testl	%edx, %edx
	je	.L3060
	movq	6008(%rcx), %rax
	cmpl	%edx, 248(%rax)
	sete	%al
.L3060:
	rep ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13IsItemClickedEi
	.def	_ZN5ImGui13IsItemClickedEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13IsItemClickedEi
_ZN5ImGui13IsItemClickedEi:
.LFB455:
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
	jbe	.L3064
	leaq	.LC15(%rip), %rdx
	leaq	.LC107(%rip), %rcx
	movl	$3203, %r8d
	call	_assert
.L3064:
	xorps	%xmm0, %xmm0
	ucomiss	960(%rsi,%rbx,4), %xmm0
	jp	.L3068
	je	.L3065
.L3068:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3065:
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movzbl	268(%rax), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16IsAnyItemHoveredEv
	.def	_ZN5ImGui16IsAnyItemHoveredEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16IsAnyItemHoveredEv
_ZN5ImGui16IsAnyItemHoveredEv:
.LFB456:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movl	$1, %eax
	movl	6056(%rdx), %ecx
	testl	%ecx, %ecx
	jne	.L3071
	movl	6064(%rdx), %eax
	testl	%eax, %eax
	setne	%al
.L3071:
	rep ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15IsAnyItemActiveEv
	.def	_ZN5ImGui15IsAnyItemActiveEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15IsAnyItemActiveEv
_ZN5ImGui15IsAnyItemActiveEv:
.LFB457:
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
.LFB458:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	524(%rax), %xmm0
	ucomiss	256(%rax), %xmm0
	jbe	.L3087
	movss	264(%rax), %xmm0
	ucomiss	516(%rax), %xmm0
	jbe	.L3087
	movss	520(%rax), %xmm0
	ucomiss	252(%rax), %xmm0
	jbe	.L3087
	movss	260(%rax), %xmm0
	ucomiss	512(%rax), %xmm0
	seta	%al
	ret
	.p2align 4,,7
.L3087:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19SetItemAllowOverlapEv
	.def	_ZN5ImGui19SetItemAllowOverlapEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19SetItemAllowOverlapEv
_ZN5ImGui19SetItemAllowOverlapEv:
.LFB459:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movl	248(%rdx), %edx
	cmpl	%edx, 6056(%rax)
	je	.L3091
.L3089:
	cmpl	6068(%rax), %edx
	je	.L3092
	rep ret
	.p2align 4,,7
.L3092:
	movb	$1, 6078(%rax)
	ret
	.p2align 4,,7
.L3091:
	movb	$1, 6060(%rax)
	jmp	.L3089
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14GetItemRectMinEv
	.def	_ZN5ImGui14GetItemRectMinEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14GetItemRectMinEv
_ZN5ImGui14GetItemRectMinEv:
.LFB460:
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
.LFB461:
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
.LFB462:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	264(%rax), %xmm0
	movss	260(%rax), %xmm1
	subss	256(%rax), %xmm0
	subss	252(%rax), %xmm1
	movss	%xmm0, 16(%rsp)
	movq	16(%rsp), %rax
	movss	%xmm1, 12(%rsp)
	movl	12(%rsp), %edx
	salq	$32, %rax
	orq	%rdx, %rax
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui24CalcItemRectClosestPointERK6ImVec2bf
	.def	_ZN5ImGui24CalcItemRectClosestPointERK6ImVec2bf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui24CalcItemRectClosestPointERK6ImVec2bf
_ZN5ImGui24CalcItemRectClosestPointERK6ImVec2bf:
.LFB463:
	subq	$24, %rsp
	.seh_stackalloc	24
	.seh_endprologue
	movq	GImGui(%rip), %rax
	testb	%dl, %dl
	movss	(%rcx), %xmm1
	movq	6008(%rax), %rax
	movss	252(%rax), %xmm0
	movaps	%xmm0, %xmm4
	movss	256(%rax), %xmm0
	movaps	%xmm0, %xmm3
	movss	260(%rax), %xmm5
	subss	%xmm2, %xmm4
	subss	%xmm2, %xmm3
	movss	4(%rcx), %xmm0
	addss	%xmm2, %xmm5
	addss	264(%rax), %xmm2
	jne	.L3097
	ucomiss	%xmm4, %xmm1
	setnb	%dl
	ucomiss	%xmm3, %xmm0
	setnb	%al
	andl	%edx, %eax
	ucomiss	%xmm1, %xmm5
	seta	%dl
	testb	%dl, %al
	je	.L3097
	ucomiss	%xmm0, %xmm2
	jbe	.L3097
.L3098:
	movss	%xmm1, 12(%rsp)
	movl	12(%rsp), %ecx
	movss	%xmm0, 12(%rsp)
	movl	12(%rsp), %eax
	movq	%rax, %rdx
	movl	%ecx, %eax
	salq	$32, %rdx
	orq	%rdx, %rax
	addq	$24, %rsp
	ret
	.p2align 4,,7
.L3097:
	ucomiss	%xmm5, %xmm1
	ja	.L3104
	maxss	%xmm1, %xmm4
	movaps	%xmm4, %xmm1
.L3100:
	ucomiss	%xmm2, %xmm0
	ja	.L3102
	maxss	%xmm0, %xmm3
	movaps	%xmm3, %xmm2
.L3102:
	movaps	%xmm2, %xmm0
	jmp	.L3098
	.p2align 4,,7
.L3104:
	movaps	%xmm5, %xmm1
	jmp	.L3100
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11SetTooltipVEPKcPc
	.def	_ZN5ImGui11SetTooltipVEPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11SetTooltipVEPKcPc
_ZN5ImGui11SetTooltipVEPKcPc:
.LFB464:
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
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L3113
	cmpl	$1023, %eax
	jg	.L3113
	cltq
	movb	$0, 10384(%rbx,%rax)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3113:
	movl	$1023, %eax
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
.LFB465:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	%r9, 88(%rsp)
	leaq	72(%rsp), %r9
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movl	$1024, %edx
	movq	%rcx, %r8
	leaq	10384(%rbx), %rax
	movq	%r9, 40(%rsp)
	movq	%rax, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L3116
	cmpl	$1023, %eax
	jg	.L3116
	cltq
	movb	$0, 10384(%rbx,%rax)
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3116:
	movl	$1023, %eax
	movb	$0, 10384(%rbx,%rax)
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC108:
	.ascii "##menus\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11OpenPopupExEPKcb
	.def	_ZN5ImGui11OpenPopupExEPKcb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11OpenPopupExEPKcb
_ZN5ImGui11OpenPopupExEPKcb:
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
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movl	%edx, %r12d
	movq	%rcx, %rdx
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rdi
	movq	%rdi, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	leaq	.LC108(%rip), %rdx
	movq	%rdi, %rcx
	movl	6200(%rbx), %esi
	movl	%eax, %ebp
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movslq	6184(%rbx), %rdx
	movl	%eax, %r13d
	movss	264(%rbx), %xmm7
	movss	268(%rbx), %xmm6
	cmpl	%edx, %esi
	jge	.L3145
	movslq	%esi, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	testb	%r12b, %r12b
	leaq	(%rdx,%rax,8), %r14
	je	.L3146
	movl	6188(%rbx), %eax
	incl	%esi
	cmpl	%eax, %esi
	jle	.L3142
.L3135:
	testl	%eax, %eax
	movl	$8, %edx
	je	.L3129
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L3129:
	cmpl	%edx, %esi
	jge	.L3138
	cmpl	%edx, %eax
	jl	.L3147
.L3142:
	movq	6192(%rbx), %rax
.L3131:
	movl	%esi, 6184(%rbx)
	addq	%r14, %rax
.L3143:
	movss	%xmm7, 28(%rax)
	movl	%ebp, (%rax)
	movq	$0, 8(%rax)
	movss	%xmm6, 32(%rax)
	movq	%rdi, 16(%rax)
	movl	%r13d, 24(%rax)
.L3117:
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
	.p2align 4,,7
.L3146:
	movq	6192(%rbx), %rax
	cmpl	(%rax,%r14), %ebp
	je	.L3117
	movl	6188(%rbx), %eax
	incl	%esi
	cmpl	%eax, %esi
	jg	.L3135
	jmp	.L3142
	.p2align 4,,7
.L3145:
	cmpl	6188(%rbx), %edx
	je	.L3119
	movq	6192(%rbx), %rax
	leal	1(%rdx), %r8d
.L3120:
	movl	%r8d, 6184(%rbx)
	movq	%rdx, %r8
	salq	$5, %r8
	leaq	(%r8,%rdx,8), %rdx
	addq	%rdx, %rax
	jmp	.L3143
	.p2align 4,,7
.L3119:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	je	.L3121
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L3121:
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %esi
	jl	.L3122
	movq	6192(%rbx), %rax
	jmp	.L3120
	.p2align 4,,7
.L3138:
	movl	%esi, %r15d
.L3130:
	movq	GImGui(%rip), %rax
	movslq	%r15d, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	incl	844(%rax)
	leaq	(%rcx,%rdx,8), %rcx
	call	*232(%rax)
	movq	6192(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L3132
	movslq	6184(%rbx), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	call	memcpy
	movq	6192(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3134
	decl	844(%rax)
.L3134:
	call	*240(%rax)
	movq	%r12, 6192(%rbx)
	movl	%r15d, 6188(%rbx)
	movq	%r12, %rax
	jmp	.L3131
	.p2align 4,,7
.L3122:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	incl	844(%rax)
	leaq	(%rcx,%rdx,8), %rcx
	call	*232(%rax)
	movq	6192(%rbx), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L3123
	movslq	6184(%rbx), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	call	memcpy
	movq	6192(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3125
	decl	844(%rax)
.L3125:
	call	*240(%rax)
	movslq	6184(%rbx), %rdx
	movq	%r12, 6192(%rbx)
	movq	%r12, %rax
	movl	%esi, 6188(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L3120
	.p2align 4,,7
.L3132:
	movq	GImGui(%rip), %rax
	jmp	.L3134
.L3123:
	movq	GImGui(%rip), %rax
	jmp	.L3125
.L3147:
	movl	%edx, %r15d
	jmp	.L3130
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9OpenPopupEPKc
	.def	_ZN5ImGui9OpenPopupEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9OpenPopupEPKc
_ZN5ImGui9OpenPopupEPKc:
.LFB471:
	.seh_endprologue
	xorl	%edx, %edx
	jmp	_ZN5ImGui11OpenPopupExEPKcb
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16FindWindowByNameEPKc
	.def	_ZN5ImGui16FindWindowByNameEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16FindWindowByNameEPKc
_ZN5ImGui16FindWindowByNameEPKc:
.LFB493:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	xorl	%edx, %edx
	call	_Z6ImHashPKvij.constprop.164
	movl	5976(%rsi), %r9d
	testl	%r9d, %r9d
	jle	.L3155
	movq	5984(%rsi), %r10
	movq	(%r10), %rdx
	cmpl	8(%rdx), %eax
	je	.L3156
	movl	$8, %ebx
	xorl	%edx, %edx
	jmp	.L3153
	.p2align 4,,7
.L3154:
	movq	(%r10,%rbx), %rcx
	leaq	8(%rbx), %r8
	cmpl	8(%rcx), %eax
	je	.L3158
	movq	%r8, %rbx
.L3153:
	incl	%edx
	cmpl	%r9d, %edx
	jne	.L3154
.L3155:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3158:
	cmpl	%r9d, %edx
	jl	.L3151
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	5984(%rsi), %r10
.L3151:
	movq	(%r10,%rbx), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L3156:
	xorl	%ebx, %ebx
	jmp	.L3151
	.seh_endproc
	.section .rdata,"dr"
.LC109:
	.ascii "it >= Data && it < Data+Size\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	.def	_ZN5ImGui11FocusWindowEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11FocusWindowEP11ImGuiWindow
_ZN5ImGui11FocusWindowEP11ImGuiWindow:
.LFB503:
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
	je	.L3159
	movq	664(%rcx), %rsi
	testq	%rsi, %rsi
	cmove	%rcx, %rsi
	movl	12(%rsi), %eax
	testl	$33554432, %eax
	je	.L3162
	movl	6068(%rdi), %edx
	testl	%edx, %edx
	je	.L3162
	movq	6088(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L3162
	cmpq	664(%rdx), %rsi
	je	.L3162
	movl	$0, 6068(%rdi)
	movb	$0, 6078(%rdi)
	movb	$1, 6077(%rdi)
	movq	$0, 6088(%rdi)
	.p2align 4,,7
.L3162:
	testb	$32, %ah
	je	.L3199
.L3159:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3199:
	movl	5976(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.L3200
	movq	5984(%rdi), %r8
	movslq	%ecx, %r10
	leaq	0(,%r10,8), %r11
	movq	%r10, %r9
	cmpq	-8(%r8,%r11), %rsi
	movq	%r8, %rbp
	je	.L3159
.L3177:
	cmpq	(%r8), %rsi
	je	.L3201
	leal	-1(%rcx), %edx
	leaq	8(%r8), %rax
	leaq	8(%r8,%rdx,8), %rdx
	jmp	.L3168
	.p2align 4,,7
.L3195:
	movq	%rax, %rbx
	leaq	8(%rax), %rax
	cmpq	-8(%rax), %rsi
	je	.L3202
.L3168:
	cmpq	%rax, %rdx
	jne	.L3195
	cmpl	5980(%rdi), %ecx
	je	.L3203
.L3180:
	leal	1(%rcx), %eax
.L3174:
	movl	%eax, 5976(%rdi)
	movq	%rsi, (%r8,%r10,8)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3202:
	cmpq	%r8, %rbx
	jb	.L3169
.L3166:
	addq	%r11, %r8
	cmpq	%r8, %rbx
	jb	.L3170
.L3169:
	leaq	.LC10(%rip), %rdx
	leaq	.LC109(%rip), %rcx
	movl	$887, %r8d
	call	_assert
	movslq	5976(%rdi), %r9
	movq	5984(%rdi), %rbp
.L3170:
	movq	%rbx, %rax
	decq	%r9
	movq	%rbx, %rcx
	subq	%rbp, %rax
	sarq	$3, %rax
	subq	%rax, %r9
	leaq	8(%rbp,%rax,8), %rdx
	movq	%r9, %r8
	salq	$3, %r8
	call	memmove
	movl	5976(%rdi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 5976(%rdi)
.L3165:
	cmpl	%ecx, 5980(%rdi)
	je	.L3173
	movq	5984(%rdi), %r8
	movslq	%ecx, %r10
	jmp	.L3180
	.p2align 4,,7
.L3203:
	leal	1(%rcx), %eax
.L3178:
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	addl	%ecx, %edx
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.L3175
	movq	5984(%rdi), %r8
	movslq	%ecx, %r10
	jmp	.L3174
	.p2align 4,,7
.L3173:
	testl	%ecx, %ecx
	leal	1(%rcx), %eax
	jne	.L3178
	movl	$8, %edx
.L3175:
	leaq	5976(%rdi), %rcx
	call	_ZN8ImVectorIP11ImGuiWindowE7reserveEi.part.51
	movslq	5976(%rdi), %r10
	movq	5984(%rdi), %r8
	leal	1(%r10), %eax
	jmp	.L3174
.L3200:
	leaq	.LC14(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$866, %r8d
	call	_assert
	movslq	5976(%rdi), %r10
	movq	5984(%rdi), %r8
	movq	%r8, %rbp
	leaq	0(,%r10,8), %r11
	movq	%r10, %rcx
	movq	%r10, %r9
	cmpq	-8(%r8,%r11), %rsi
	je	.L3159
	testl	%r10d, %r10d
	jg	.L3177
	jmp	.L3165
.L3201:
	movq	%r8, %rbx
	.p2align 4,,5
	jmp	.L3166
	.seh_endproc
	.p2align 4,,15
	.def	_ZL17ClosePopupToLeveli;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL17ClosePopupToLeveli
_ZL17ClosePopupToLeveli:
.LFB474:
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
	jle	.L3205
	leal	-1(%rcx), %edi
	cmpl	6184(%rbx), %edi
	jge	.L3219
.L3206:
	movslq	%edi, %rdi
	movq	%rdi, %rax
	salq	$5, %rax
	leaq	(%rax,%rdi,8), %rax
	addq	6192(%rbx), %rax
	movq	8(%rax), %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
.L3207:
	movl	6188(%rbx), %eax
	cmpl	%eax, %esi
	jle	.L3209
	testl	%eax, %eax
	movl	$8, %edx
	je	.L3210
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L3210:
	cmpl	%edx, %esi
	jl	.L3220
	movl	%esi, %edi
.L3211:
	movq	GImGui(%rip), %rax
	movslq	%edi, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	incl	844(%rax)
	leaq	(%rcx,%rdx,8), %rcx
	call	*232(%rax)
	movq	6192(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L3212
	movslq	6184(%rbx), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %r8
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	call	memcpy
	movq	6192(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3214
	decl	844(%rax)
.L3214:
	call	*240(%rax)
	movq	%rbp, 6192(%rbx)
	movl	%edi, 6188(%rbx)
.L3209:
	movl	%esi, 6184(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3220:
	cmpl	%edx, %eax
	jge	.L3209
	movl	%edx, %edi
	jmp	.L3211
	.p2align 4,,7
.L3219:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L3206
	.p2align 4,,7
.L3205:
	movl	6184(%rbx), %eax
	testl	%eax, %eax
	jle	.L3221
.L3208:
	movq	6192(%rbx), %rax
	movq	16(%rax), %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	jmp	.L3207
	.p2align 4,,7
.L3212:
	movq	GImGui(%rip), %rax
	jmp	.L3214
	.p2align 4,,7
.L3221:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L3208
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17CloseCurrentPopupEv
	.def	_ZN5ImGui17CloseCurrentPopupEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17CloseCurrentPopupEv
_ZN5ImGui17CloseCurrentPopupEv:
.LFB476:
	pushq	%r12
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
	movq	GImGui(%rip), %rdi
	movl	6200(%rdi), %ebx
	decl	%ebx
	js	.L3222
	movl	6184(%rdi), %eax
	cmpl	%eax, %ebx
	jg	.L3222
	movslq	%ebx, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	cmpl	%eax, %ebx
	leaq	(%rcx,%rdx,8), %rbp
	movq	6208(%rdi), %rdx
	movq	%rbp, %rsi
	movl	(%rdx,%rbp), %r12d
	jge	.L3237
	movq	6192(%rdi), %rdx
	cmpl	(%rdx,%rbp), %r12d
	je	.L3238
.L3222:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L3237:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	6192(%rdi), %rdx
	cmpl	(%rdx,%rbp), %r12d
	jne	.L3222
.L3238:
	testl	%ebx, %ebx
	jle	.L3225
	cmpl	%ebx, 6184(%rdi)
	jle	.L3239
	.p2align 4,,7
.L3226:
	movq	8(%rdx,%rsi), %rax
	testq	%rax, %rax
	je	.L3225
.L3227:
	testb	$8, 15(%rax)
	jne	.L3240
.L3225:
	movl	%ebx, %ecx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_ZL17ClosePopupToLeveli
	.p2align 4,,7
.L3240:
	subq	$40, %rsi
	decl	%ebx
	je	.L3225
	cmpl	%ebx, 6184(%rdi)
	jg	.L3226
.L3239:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	6192(%rdi), %rdx
	movq	8(%rdx,%rsi), %rax
	testq	%rax, %rax
	je	.L3225
	cmpl	%ebx, 6184(%rdi)
	jg	.L3227
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	6192(%rdi), %rdx
	movq	8(%rdx,%rsi), %rax
	jmp	.L3227
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13PushItemWidthEf
	.def	_ZN5ImGui13PushItemWidthEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13PushItemWidthEf
_ZN5ImGui13PushItemWidthEf:
.LFB504:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %r9
	ucomiss	.LC9(%rip), %xmm0
	movq	6008(%r9), %rbx
	movb	$1, 138(%rbx)
	jp	.L3242
	jne	.L3242
	movss	548(%rbx), %xmm0
.L3242:
	movslq	320(%rbx), %rdx
	movss	%xmm0, 308(%rbx)
	cmpl	324(%rbx), %edx
	je	.L3244
	movq	328(%rbx), %rax
	leal	1(%rdx), %r8d
.L3245:
	movl	%r8d, 320(%rbx)
	movss	%xmm0, (%rax,%rdx,4)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L3244:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L3256
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L3247
.L3257:
	movq	328(%rbx), %rax
	jmp	.L3245
	.p2align 4,,7
.L3256:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jle	.L3257
.L3247:
	incl	844(%r9)
	movslq	%eax, %rcx
	salq	$2, %rcx
	call	*232(%r9)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L3248
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3250
	decl	844(%rax)
.L3250:
	call	*240(%rax)
	movslq	320(%rbx), %rdx
	movq	%rdi, 328(%rbx)
	movq	%rdi, %rax
	movl	%esi, 324(%rbx)
	movss	308(%rbx), %xmm0
	leal	1(%rdx), %r8d
	jmp	.L3245
	.p2align 4,,7
.L3248:
	movq	GImGui(%rip), %rax
	jmp	.L3250
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12PopItemWidthEv
	.def	_ZN5ImGui12PopItemWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12PopItemWidthEv
_ZN5ImGui12PopItemWidthEv:
.LFB506:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movl	320(%rbx), %eax
	movb	$1, 138(%rbx)
	testl	%eax, %eax
	jle	.L3263
.L3259:
	decl	%eax
	cmpl	$0, %eax
	movl	%eax, 320(%rbx)
	jne	.L3260
	movss	548(%rbx), %xmm0
	movss	%xmm0, 308(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3260:
	jle	.L3264
.L3262:
	movq	328(%rbx), %rdx
	cltq
	movss	-4(%rdx,%rax,4), %xmm0
	movss	%xmm0, 308(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3263:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	320(%rbx), %eax
	jmp	.L3259
	.p2align 4,,7
.L3264:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	320(%rbx), %eax
	jmp	.L3262
	.seh_endproc
	.section .rdata,"dr"
.LC110:
	.ascii "font && font->IsLoaded()\0"
.LC111:
	.ascii "font->Scale > 0.0f\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8PushFontEP6ImFont
	.def	_ZN5ImGui8PushFontEP6ImFont;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8PushFontEP6ImFont
_ZN5ImGui8PushFontEP6ImFont:
.LFB510:
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
	testq	%rcx, %rcx
	movq	%rcx, %rbx
	movq	GImGui(%rip), %rsi
	je	.L3285
.L3266:
	movq	%rsi, %rdi
.L3279:
	cmpq	$0, 88(%rbx)
	je	.L3268
	xorps	%xmm6, %xmm6
	movss	4(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L3286
.L3270:
	movss	152(%rdi), %xmm1
	movq	6008(%rdi), %rax
	mulss	(%rbx), %xmm1
	movq	%rbx, 5936(%rdi)
	testq	%rax, %rax
	mulss	%xmm1, %xmm0
	movss	%xmm0, 5948(%rdi)
	je	.L3271
	movq	GImGui(%rip), %rdx
	movss	5948(%rdx), %xmm6
	mulss	648(%rax), %xmm6
.L3271:
	movq	88(%rbx), %rax
	movslq	6168(%rsi), %rdx
	movss	%xmm6, 5944(%rdi)
	cmpl	6172(%rsi), %edx
	movq	36(%rax), %rax
	movq	%rax, 5952(%rdi)
	je	.L3272
	movq	6176(%rsi), %rax
	leal	1(%rdx), %r8d
.L3273:
	movl	%r8d, 6168(%rsi)
	movq	%rbx, (%rax,%rdx,8)
	movq	6008(%rsi), %rax
	movq	88(%rbx), %rdx
	movaps	32(%rsp), %xmm6
	movq	656(%rax), %rcx
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN10ImDrawList13PushTextureIDERKPv
	.p2align 4,,7
.L3272:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L3287
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %edi
	jl	.L3275
.L3289:
	movq	6176(%rsi), %rax
	jmp	.L3273
	.p2align 4,,7
.L3285:
	movq	160(%rsi), %rbx
	testq	%rbx, %rbx
	jne	.L3266
	movq	144(%rsi), %rbx
	movq	%rsi, %rdi
	movl	48(%rbx), %eax
	testl	%eax, %eax
	jle	.L3288
.L3267:
	movq	56(%rbx), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L3279
	.p2align 4,,7
.L3268:
	leaq	.LC15(%rip), %rdx
	leaq	.LC110(%rip), %rcx
	movl	$4646, %r8d
	xorps	%xmm6, %xmm6
	call	_assert
	movss	4(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L3270
.L3286:
	leaq	.LC15(%rip), %rdx
	leaq	.LC111(%rip), %rcx
	movl	$4647, %r8d
	call	_assert
	movss	4(%rbx), %xmm0
	jmp	.L3270
	.p2align 4,,7
.L3287:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %edi
	jge	.L3289
.L3275:
	movq	GImGui(%rip), %rax
	movslq	%edi, %rcx
	salq	$3, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	6176(%rsi), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L3276
	movslq	6168(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	6176(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3278
	decl	844(%rax)
.L3278:
	call	*240(%rax)
	movslq	6168(%rsi), %rdx
	movq	%rbp, 6176(%rsi)
	movq	%rbp, %rax
	movl	%edi, 6172(%rsi)
	leal	1(%rdx), %r8d
	jmp	.L3273
	.p2align 4,,7
.L3276:
	movq	GImGui(%rip), %rax
	jmp	.L3278
.L3288:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	GImGui(%rip), %rdi
	jmp	.L3267
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7PopFontEv
	.def	_ZN5ImGui7PopFontEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7PopFontEv
_ZN5ImGui7PopFontEv:
.LFB511:
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
	jle	.L3305
.L3291:
	decl	%eax
	cmpl	$0, %eax
	movl	%eax, 6168(%rbx)
	je	.L3306
	jle	.L3307
.L3296:
	movq	6176(%rbx), %rdx
	cltq
	movq	GImGui(%rip), %rbx
	movq	-8(%rdx,%rax,8), %rsi
.L3295:
	testq	%rsi, %rsi
	je	.L3297
.L3293:
	cmpq	$0, 88(%rsi)
	je	.L3297
	xorps	%xmm6, %xmm6
	movss	4(%rsi), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L3308
.L3299:
	movss	152(%rbx), %xmm1
	movq	6008(%rbx), %rax
	mulss	(%rsi), %xmm1
	movq	%rsi, 5936(%rbx)
	testq	%rax, %rax
	mulss	%xmm1, %xmm0
	movss	%xmm0, 5948(%rbx)
	je	.L3300
	movq	GImGui(%rip), %rdx
	movss	5948(%rdx), %xmm6
	mulss	648(%rax), %xmm6
.L3300:
	movq	88(%rsi), %rax
	movss	%xmm6, 5944(%rbx)
	movq	36(%rax), %rax
	movq	%rax, 5952(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3306:
	movq	GImGui(%rip), %rax
	movq	160(%rax), %rsi
	movq	%rax, %rbx
	testq	%rsi, %rsi
	jne	.L3293
	movq	144(%rax), %rsi
	movl	48(%rsi), %eax
	testl	%eax, %eax
	jle	.L3309
.L3294:
	movq	56(%rsi), %rax
	movq	(%rax), %rsi
	jmp	.L3295
	.p2align 4,,7
.L3297:
	leaq	.LC15(%rip), %rdx
	leaq	.LC110(%rip), %rcx
	movl	$4646, %r8d
	xorps	%xmm6, %xmm6
	call	_assert
	movss	4(%rsi), %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L3299
.L3308:
	leaq	.LC15(%rip), %rdx
	leaq	.LC111(%rip), %rcx
	movl	$4647, %r8d
	call	_assert
	movss	4(%rsi), %xmm0
	jmp	.L3299
	.p2align 4,,7
.L3305:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6168(%rbx), %eax
	jmp	.L3291
	.p2align 4,,7
.L3307:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	6168(%rbx), %eax
	jmp	.L3296
	.p2align 4,,7
.L3309:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	GImGui(%rip), %rbx
	jmp	.L3294
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22PushAllowKeyboardFocusEb
	.def	_ZN5ImGui22PushAllowKeyboardFocusEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22PushAllowKeyboardFocusEb
_ZN5ImGui22PushAllowKeyboardFocusEb:
.LFB512:
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
	movq	GImGui(%rip), %r9
	movl	%ecx, %edi
	movq	6008(%r9), %rbx
	movslq	352(%rbx), %rdx
	movb	$1, 138(%rbx)
	cmpl	356(%rbx), %edx
	movb	%cl, 316(%rbx)
	je	.L3311
	movq	360(%rbx), %rax
	leal	1(%rdx), %r8d
.L3312:
	movl	%r8d, 352(%rbx)
	movb	%dil, (%rax,%rdx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3311:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L3321
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L3314
.L3322:
	movq	360(%rbx), %rax
	jmp	.L3312
	.p2align 4,,7
.L3321:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jle	.L3322
.L3314:
	incl	844(%r9)
	movslq	%eax, %rcx
	call	*232(%r9)
	movq	360(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L3315
	movslq	352(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	360(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3317
	decl	844(%rax)
.L3317:
	call	*240(%rax)
	movslq	352(%rbx), %rdx
	movq	%rbp, 360(%rbx)
	movq	%rbp, %rax
	movl	%esi, 356(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L3312
	.p2align 4,,7
.L3315:
	movq	GImGui(%rip), %rax
	jmp	.L3317
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui21PopAllowKeyboardFocusEv
	.def	_ZN5ImGui21PopAllowKeyboardFocusEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21PopAllowKeyboardFocusEv
_ZN5ImGui21PopAllowKeyboardFocusEv:
.LFB513:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movl	352(%rbx), %eax
	movb	$1, 138(%rbx)
	testl	%eax, %eax
	jle	.L3329
.L3324:
	decl	%eax
	movl	$1, %edx
	cmpl	$0, %eax
	movl	%eax, 352(%rbx)
	je	.L3325
	jle	.L3330
.L3326:
	movq	360(%rbx), %rdx
	cltq
	movzbl	-1(%rdx,%rax), %edx
.L3325:
	movb	%dl, 316(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3329:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	352(%rbx), %eax
	jmp	.L3324
	.p2align 4,,7
.L3330:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	352(%rbx), %eax
	jmp	.L3326
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16PushButtonRepeatEb
	.def	_ZN5ImGui16PushButtonRepeatEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16PushButtonRepeatEb
_ZN5ImGui16PushButtonRepeatEb:
.LFB514:
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
	movq	GImGui(%rip), %r9
	movl	%ecx, %edi
	movq	6008(%r9), %rbx
	movslq	368(%rbx), %rdx
	movb	$1, 138(%rbx)
	cmpl	372(%rbx), %edx
	movb	%cl, 317(%rbx)
	je	.L3332
	movq	376(%rbx), %rax
	leal	1(%rdx), %r8d
.L3333:
	movl	%r8d, 368(%rbx)
	movb	%dil, (%rax,%rdx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3332:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L3342
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L3335
.L3343:
	movq	376(%rbx), %rax
	jmp	.L3333
	.p2align 4,,7
.L3342:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jle	.L3343
.L3335:
	incl	844(%r9)
	movslq	%eax, %rcx
	call	*232(%r9)
	movq	376(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L3336
	movslq	368(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	376(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3338
	decl	844(%rax)
.L3338:
	call	*240(%rax)
	movslq	368(%rbx), %rdx
	movq	%rbp, 376(%rbx)
	movq	%rbp, %rax
	movl	%esi, 372(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L3333
	.p2align 4,,7
.L3336:
	movq	GImGui(%rip), %rax
	jmp	.L3338
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15PopButtonRepeatEv
	.def	_ZN5ImGui15PopButtonRepeatEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15PopButtonRepeatEv
_ZN5ImGui15PopButtonRepeatEv:
.LFB515:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movl	368(%rbx), %eax
	movb	$1, 138(%rbx)
	testl	%eax, %eax
	jle	.L3350
.L3345:
	decl	%eax
	xorl	%edx, %edx
	cmpl	$0, %eax
	movl	%eax, 368(%rbx)
	je	.L3346
	jle	.L3351
.L3347:
	movq	376(%rbx), %rdx
	cltq
	movzbl	-1(%rdx,%rax), %edx
.L3346:
	movb	%dl, 317(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3350:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	368(%rbx), %eax
	jmp	.L3345
	.p2align 4,,7
.L3351:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	368(%rbx), %eax
	jmp	.L3347
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15PushTextWrapPosEf
	.def	_ZN5ImGui15PushTextWrapPosEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15PushTextWrapPosEf
_ZN5ImGui15PushTextWrapPosEf:
.LFB516:
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
	movaps	%xmm0, %xmm6
	movq	GImGui(%rip), %r9
	movq	6008(%r9), %rbx
	movslq	336(%rbx), %rdx
	movb	$1, 138(%rbx)
	movss	%xmm0, 312(%rbx)
	cmpl	340(%rbx), %edx
	je	.L3353
	movq	344(%rbx), %rax
	leal	1(%rdx), %r8d
.L3354:
	movl	%r8d, 336(%rbx)
	movss	%xmm6, (%rax,%rdx,4)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L3353:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L3363
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L3356
.L3364:
	movq	344(%rbx), %rax
	jmp	.L3354
	.p2align 4,,7
.L3363:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jle	.L3364
.L3356:
	incl	844(%r9)
	movslq	%eax, %rcx
	salq	$2, %rcx
	call	*232(%r9)
	movq	344(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L3357
	movslq	336(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	344(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3359
	decl	844(%rax)
.L3359:
	call	*240(%rax)
	movslq	336(%rbx), %rdx
	movq	%rdi, 344(%rbx)
	movq	%rdi, %rax
	movl	%esi, 340(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L3354
	.p2align 4,,7
.L3357:
	movq	GImGui(%rip), %rax
	jmp	.L3359
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14PopTextWrapPosEv
	.def	_ZN5ImGui14PopTextWrapPosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14PopTextWrapPosEv
_ZN5ImGui14PopTextWrapPosEv:
.LFB517:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movl	336(%rbx), %eax
	movb	$1, 138(%rbx)
	testl	%eax, %eax
	jle	.L3371
.L3366:
	decl	%eax
	movss	.LC20(%rip), %xmm0
	cmpl	$0, %eax
	movl	%eax, 336(%rbx)
	jne	.L3372
	movss	%xmm0, 312(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3372:
	jle	.L3373
.L3368:
	movq	344(%rbx), %rdx
	cltq
	movss	-4(%rdx,%rax,4), %xmm0
	movss	%xmm0, 312(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3371:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	336(%rbx), %eax
	jmp	.L3366
	.p2align 4,,7
.L3373:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	336(%rbx), %eax
	jmp	.L3368
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	.def	_ZN5ImGui14PushStyleColorEiRK6ImVec4;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14PushStyleColorEiRK6ImVec4
_ZN5ImGui14PushStyleColorEiRK6ImVec4:
.LFB518:
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
	movslq	%ecx, %rsi
	movq	%rdx, %rdi
	movq	GImGui(%rip), %rbx
	leaq	328(%rsi), %rax
	movq	%rsi, %rbp
	salq	$4, %rax
	movslq	6136(%rbx), %rdx
	addq	%rbx, %rax
	cmpl	6140(%rbx), %edx
	movss	(%rax), %xmm8
	movss	4(%rax), %xmm9
	movss	8(%rax), %xmm7
	movss	12(%rax), %xmm6
	je	.L3375
	movq	6144(%rbx), %rax
	leal	1(%rdx), %r8d
.L3376:
	movl	%r8d, 6136(%rbx)
	movq	%rdx, %r8
	addq	$328, %rsi
	salq	$4, %r8
	salq	$4, %rsi
	leaq	(%r8,%rdx,4), %rdx
	addq	%rdx, %rax
	movl	%ebp, (%rax)
	movss	%xmm8, 4(%rax)
	movss	%xmm9, 8(%rax)
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
	.p2align 4,,7
.L3375:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L3385
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %r12d
	jg	.L3378
.L3386:
	movq	6144(%rbx), %rax
	jmp	.L3376
	.p2align 4,,7
.L3385:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %r12d
	jle	.L3386
.L3378:
	cltq
	incl	844(%rbx)
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %rcx
	call	*232(%rbx)
	movq	6144(%rbx), %rcx
	movq	%rax, %r13
	testq	%rcx, %rcx
	je	.L3379
	movslq	6136(%rbx), %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %r8
	movq	%rcx, %rdx
	movq	%r13, %rcx
	call	memcpy
	movq	6144(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3381
	decl	844(%rax)
.L3381:
	call	*240(%rax)
	movslq	6136(%rbx), %rdx
	movq	%r13, 6144(%rbx)
	movq	%r13, %rax
	movl	%r12d, 6140(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L3376
	.p2align 4,,7
.L3379:
	movq	GImGui(%rip), %rax
	jmp	.L3381
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13PopStyleColorEi
	.def	_ZN5ImGui13PopStyleColorEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13PopStyleColorEi
_ZN5ImGui13PopStyleColorEi:
.LFB522:
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
	jle	.L3387
	movl	6136(%rbx), %edx
	.p2align 4,,7
.L3392:
	testl	%edx, %edx
	jle	.L3396
	movslq	%edx, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	leaq	-20(%rcx,%rax,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rax
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rax
	salq	$4, %rax
	movq	%r9, (%rbx,%rax)
	movq	%r10, 8(%rbx,%rax)
.L3390:
	decl	%edx
	decl	%esi
	movl	%edx, 6136(%rbx)
	jne	.L3392
.L3387:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3396:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6136(%rbx), %rax
	movq	%rax, %rcx
	movq	%rax, %rdx
	salq	$4, %rcx
	leaq	-20(%rcx,%rax,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rax
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rax
	salq	$4, %rax
	testl	%edx, %edx
	movq	%r9, (%rbx,%rax)
	movq	%r10, 8(%rbx,%rax)
	jg	.L3390
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6136(%rbx), %edx
	jmp	.L3390
	.seh_endproc
	.section .rdata,"dr"
.LC112:
	.ascii "0\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12PushStyleVarEif
	.def	_ZN5ImGui12PushStyleVarEif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12PushStyleVarEif
_ZN5ImGui12PushStyleVarEif:
.LFB525:
	pushq	%r12
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
	ja	.L3411
.L3398:
	leaq	_ZL13GStyleVarInfo(%rip), %rax
	movslq	%ebx, %rdx
	cmpl	$1, (%rax,%rdx,8)
	je	.L3412
	leaq	.LC15(%rip), %rdx
	leaq	.LC112(%rip), %rcx
	movl	$4775, %r8d
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_assert
	.p2align 4,,7
.L3411:
	leaq	.LC15(%rip), %rdx
	leaq	.LC27(%rip), %rcx
	movl	$4761, %r8d
	movss	%xmm1, 44(%rsp)
	call	_assert
	movss	44(%rsp), %xmm1
	jmp	.L3398
	.p2align 4,,7
.L3412:
	movq	GImGui(%rip), %rsi
	movl	4(%rax,%rdx,8), %eax
	movslq	6152(%rsi), %rdx
	cmpl	6156(%rsi), %edx
	leaq	5120(%rsi,%rax), %rbp
	movss	0(%rbp), %xmm6
	je	.L3400
	movq	6160(%rsi), %rax
	leal	1(%rdx), %r8d
.L3401:
	movl	%r8d, 6152(%rsi)
	leaq	0(,%rdx,4), %r8
	salq	$4, %rdx
	subq	%r8, %rdx
	addq	%rdx, %rax
	movl	%ebx, (%rax)
	movss	%xmm6, 4(%rax)
	movss	%xmm1, 0(%rbp)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L3400:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	je	.L3402
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L3402:
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %edi
	jg	.L3403
	movq	6160(%rsi), %rax
	jmp	.L3401
	.p2align 4,,7
.L3403:
	movslq	%eax, %rcx
	incl	844(%rsi)
	movss	%xmm1, 44(%rsp)
	leaq	0(,%rcx,4), %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	call	*232(%rsi)
	movq	6160(%rsi), %rcx
	movq	%rax, %r12
	movss	44(%rsp), %xmm1
	testq	%rcx, %rcx
	je	.L3404
	movslq	6152(%rsi), %r8
	movq	%rcx, %rdx
	movq	%r12, %rcx
	leaq	0(,%r8,4), %rax
	salq	$4, %r8
	subq	%rax, %r8
	call	memcpy
	movq	6160(%rsi), %rcx
	movq	GImGui(%rip), %rax
	movss	44(%rsp), %xmm1
	testq	%rcx, %rcx
	je	.L3406
	decl	844(%rax)
.L3406:
	movss	%xmm1, 44(%rsp)
	call	*240(%rax)
	movq	%r12, %rax
	movslq	6152(%rsi), %rdx
	movq	%r12, 6160(%rsi)
	movl	%edi, 6156(%rsi)
	movss	44(%rsp), %xmm1
	leal	1(%rdx), %r8d
	jmp	.L3401
.L3404:
	movq	GImGui(%rip), %rax
	jmp	.L3406
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	.def	_ZN5ImGui12PushStyleVarEiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12PushStyleVarEiRK6ImVec2
_ZN5ImGui12PushStyleVarEiRK6ImVec2:
.LFB526:
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
	ja	.L3427
.L3414:
	leaq	_ZL13GStyleVarInfo(%rip), %rax
	movslq	%ebx, %rdx
	cmpl	$2, (%rax,%rdx,8)
	je	.L3428
	leaq	.LC15(%rip), %rdx
	leaq	.LC112(%rip), %rcx
	movl	$4788, %r8d
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	jmp	_assert
	.p2align 4,,7
.L3427:
	leaq	.LC15(%rip), %rdx
	leaq	.LC27(%rip), %rcx
	movl	$4761, %r8d
	call	_assert
	jmp	.L3414
	.p2align 4,,7
.L3428:
	movq	GImGui(%rip), %rsi
	movl	4(%rax,%rdx,8), %eax
	movslq	6152(%rsi), %rdx
	cmpl	6156(%rsi), %edx
	leaq	5120(%rsi,%rax), %rbp
	movss	0(%rbp), %xmm6
	movss	4(%rbp), %xmm7
	je	.L3416
	movq	6160(%rsi), %rax
	leal	1(%rdx), %r8d
.L3417:
	movl	%r8d, 6152(%rsi)
	leaq	0(,%rdx,4), %r8
	salq	$4, %rdx
	subq	%r8, %rdx
	addq	%rdx, %rax
	movl	%ebx, (%rax)
	movss	%xmm6, 4(%rax)
	movss	%xmm7, 8(%rax)
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
	.p2align 4,,7
.L3416:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	je	.L3418
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L3418:
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %r12d
	jg	.L3419
	movq	6160(%rsi), %rax
	jmp	.L3417
	.p2align 4,,7
.L3419:
	movslq	%eax, %rcx
	incl	844(%rsi)
	leaq	0(,%rcx,4), %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	call	*232(%rsi)
	movq	6160(%rsi), %rcx
	movq	%rax, %r13
	testq	%rcx, %rcx
	je	.L3420
	movslq	6152(%rsi), %r8
	movq	%rcx, %rdx
	movq	%r13, %rcx
	leaq	0(,%r8,4), %rax
	salq	$4, %r8
	subq	%rax, %r8
	call	memcpy
	movq	6160(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3422
	decl	844(%rax)
.L3422:
	call	*240(%rax)
	movslq	6152(%rsi), %rdx
	movq	%r13, 6160(%rsi)
	movq	%r13, %rax
	movl	%r12d, 6156(%rsi)
	leal	1(%rdx), %r8d
	jmp	.L3417
.L3420:
	movq	GImGui(%rip), %rax
	jmp	.L3422
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11PopStyleVarEi
	.def	_ZN5ImGui11PopStyleVarEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11PopStyleVarEi
_ZN5ImGui11PopStyleVarEi:
.LFB527:
	pushq	%r12
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
	testl	%ecx, %ecx
	movl	%ecx, %edi
	jle	.L3429
	movl	6152(%rsi), %eax
	leaq	_ZL13GStyleVarInfo(%rip), %r12
	jmp	.L3438
	.p2align 4,,7
.L3432:
	movl	(%r12,%rbx,8), %eax
	leaq	(%r12,%rbx,8), %rdx
	cmpl	$1, %eax
	je	.L3442
.L3433:
	cmpl	$2, %eax
	je	.L3443
	testl	%eax, %eax
	jne	.L3434
	movl	4(%rdx), %eax
	movl	4(%rbp), %ecx
	movq	GImGui(%rip), %rdx
	movl	%ecx, 5120(%rdx,%rax)
.L3434:
	movl	6152(%rsi), %eax
	testl	%eax, %eax
	jle	.L3444
.L3436:
	decl	%eax
	decl	%edi
	movl	%eax, 6152(%rsi)
	je	.L3429
.L3438:
	testl	%eax, %eax
	jle	.L3445
.L3431:
	cltq
	leaq	0(,%rax,4), %rdx
	salq	$4, %rax
	subq	%rdx, %rax
	movq	6160(%rsi), %rdx
	leaq	-12(%rdx,%rax), %rbp
	movslq	0(%rbp), %rbx
	cmpl	$11, %ebx
	jbe	.L3432
	leaq	.LC15(%rip), %rdx
	leaq	.LC27(%rip), %rcx
	movl	$4761, %r8d
	call	_assert
	movl	(%r12,%rbx,8), %eax
	leaq	(%r12,%rbx,8), %rdx
	cmpl	$1, %eax
	jne	.L3433
.L3442:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	4(%rbp), %xmm0
	movss	%xmm0, 5120(%rdx,%rax)
	movl	6152(%rsi), %eax
	testl	%eax, %eax
	jg	.L3436
.L3444:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6152(%rsi), %eax
	decl	%eax
	decl	%edi
	movl	%eax, 6152(%rsi)
	jne	.L3438
.L3429:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L3443:
	movl	4(%rdx), %eax
	movq	GImGui(%rip), %rdx
	movss	8(%rbp), %xmm0
	movss	4(%rbp), %xmm1
	leaq	5120(%rdx,%rax), %rax
	movss	%xmm1, (%rax)
	movss	%xmm0, 4(%rax)
	jmp	.L3434
	.p2align 4,,7
.L3445:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	6152(%rsi), %eax
	jmp	.L3431
	.seh_endproc
	.section .rdata,"dr"
.LC113:
	.ascii "Text\0"
.LC114:
	.ascii "TextDisabled\0"
.LC115:
	.ascii "WindowBg\0"
.LC116:
	.ascii "ChildWindowBg\0"
.LC117:
	.ascii "PopupBg\0"
.LC118:
	.ascii "Border\0"
.LC119:
	.ascii "BorderShadow\0"
.LC120:
	.ascii "FrameBg\0"
.LC121:
	.ascii "FrameBgHovered\0"
.LC122:
	.ascii "FrameBgActive\0"
.LC123:
	.ascii "TitleBg\0"
.LC124:
	.ascii "TitleBgCollapsed\0"
.LC125:
	.ascii "TitleBgActive\0"
.LC126:
	.ascii "MenuBarBg\0"
.LC127:
	.ascii "ScrollbarBg\0"
.LC128:
	.ascii "ScrollbarGrab\0"
.LC129:
	.ascii "ScrollbarGrabHovered\0"
.LC130:
	.ascii "ScrollbarGrabActive\0"
.LC131:
	.ascii "ComboBg\0"
.LC132:
	.ascii "CheckMark\0"
.LC133:
	.ascii "SliderGrab\0"
.LC134:
	.ascii "SliderGrabActive\0"
.LC135:
	.ascii "Button\0"
.LC136:
	.ascii "ButtonHovered\0"
.LC137:
	.ascii "ButtonActive\0"
.LC138:
	.ascii "Header\0"
.LC139:
	.ascii "HeaderHovered\0"
.LC140:
	.ascii "HeaderActive\0"
.LC141:
	.ascii "Column\0"
.LC142:
	.ascii "ColumnHovered\0"
.LC143:
	.ascii "ColumnActive\0"
.LC144:
	.ascii "ResizeGrip\0"
.LC145:
	.ascii "ResizeGripHovered\0"
.LC146:
	.ascii "ResizeGripActive\0"
.LC147:
	.ascii "CloseButton\0"
.LC148:
	.ascii "CloseButtonHovered\0"
.LC149:
	.ascii "CloseButtonActive\0"
.LC150:
	.ascii "PlotLines\0"
.LC151:
	.ascii "PlotLinesHovered\0"
.LC152:
	.ascii "PlotHistogram\0"
.LC153:
	.ascii "PlotHistogramHovered\0"
.LC154:
	.ascii "TextSelectedBg\0"
.LC155:
	.ascii "ModalWindowDarkening\0"
.LC156:
	.ascii "Unknown\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui15GetStyleColNameEi
	.def	_ZN5ImGui15GetStyleColNameEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15GetStyleColNameEi
_ZN5ImGui15GetStyleColNameEi:
.LFB528:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	cmpl	$42, %ecx
	ja	.L3447
	leaq	.L3449(%rip), %rax
	movl	%ecx, %ecx
	movslq	(%rax,%rcx,4), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L3449:
	.long	.L3492-.L3449
	.long	.L3450-.L3449
	.long	.L3451-.L3449
	.long	.L3452-.L3449
	.long	.L3453-.L3449
	.long	.L3454-.L3449
	.long	.L3455-.L3449
	.long	.L3456-.L3449
	.long	.L3457-.L3449
	.long	.L3458-.L3449
	.long	.L3459-.L3449
	.long	.L3460-.L3449
	.long	.L3461-.L3449
	.long	.L3462-.L3449
	.long	.L3463-.L3449
	.long	.L3464-.L3449
	.long	.L3465-.L3449
	.long	.L3466-.L3449
	.long	.L3467-.L3449
	.long	.L3468-.L3449
	.long	.L3469-.L3449
	.long	.L3470-.L3449
	.long	.L3471-.L3449
	.long	.L3472-.L3449
	.long	.L3473-.L3449
	.long	.L3474-.L3449
	.long	.L3475-.L3449
	.long	.L3476-.L3449
	.long	.L3477-.L3449
	.long	.L3478-.L3449
	.long	.L3479-.L3449
	.long	.L3480-.L3449
	.long	.L3481-.L3449
	.long	.L3482-.L3449
	.long	.L3483-.L3449
	.long	.L3484-.L3449
	.long	.L3485-.L3449
	.long	.L3486-.L3449
	.long	.L3487-.L3449
	.long	.L3488-.L3449
	.long	.L3489-.L3449
	.long	.L3490-.L3449
	.long	.L3491-.L3449
	.text
	.p2align 4,,7
.L3492:
	leaq	.LC113(%rip), %rax
.L3448:
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L3491:
	leaq	.LC155(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3490:
	leaq	.LC154(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3489:
	leaq	.LC153(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3488:
	leaq	.LC152(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3487:
	leaq	.LC151(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3486:
	leaq	.LC150(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3485:
	leaq	.LC149(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3484:
	leaq	.LC148(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3483:
	leaq	.LC147(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3482:
	leaq	.LC146(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3481:
	leaq	.LC145(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3480:
	leaq	.LC144(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3479:
	leaq	.LC143(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3478:
	leaq	.LC142(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3477:
	leaq	.LC141(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3476:
	leaq	.LC140(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3475:
	leaq	.LC139(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3474:
	leaq	.LC138(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3473:
	leaq	.LC137(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3472:
	leaq	.LC136(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3471:
	leaq	.LC135(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3470:
	leaq	.LC134(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3469:
	leaq	.LC133(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3468:
	leaq	.LC132(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3467:
	leaq	.LC131(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3466:
	leaq	.LC130(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3465:
	leaq	.LC129(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3464:
	leaq	.LC128(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3463:
	leaq	.LC127(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3462:
	leaq	.LC126(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3461:
	leaq	.LC125(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3460:
	leaq	.LC124(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3459:
	leaq	.LC123(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3458:
	leaq	.LC122(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3457:
	leaq	.LC121(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3456:
	leaq	.LC120(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3455:
	leaq	.LC119(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3454:
	leaq	.LC118(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3453:
	leaq	.LC117(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3452:
	leaq	.LC116(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3451:
	leaq	.LC115(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3450:
	leaq	.LC114(%rip), %rax
	jmp	.L3448
	.p2align 4,,7
.L3447:
	leaq	.LC15(%rip), %rdx
	leaq	.LC112(%rip), %rcx
	movl	$4855, %r8d
	call	_assert
	leaq	.LC156(%rip), %rax
	jmp	.L3448
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15IsWindowHoveredEv
	.def	_ZN5ImGui15IsWindowHoveredEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15IsWindowHoveredEv
_ZN5ImGui15IsWindowHoveredEv:
.LFB529:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	xorl	%eax, %eax
	movq	6008(%rdx), %rcx
	cmpq	%rcx, 6040(%rdx)
	je	.L3501
.L3494:
	rep ret
	.p2align 4,,7
.L3501:
	movq	6032(%rdx), %rax
	testq	%rax, %rax
	je	.L3496
	movq	664(%rax), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	je	.L3494
	testb	$2, 15(%rcx)
	je	.L3494
	cmpb	$0, 137(%rcx)
	je	.L3494
	movq	6048(%rdx), %rax
	cmpq	%rcx, 664(%rax)
	sete	%al
	ret
	.p2align 4,,7
.L3496:
	movl	$1, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15IsWindowFocusedEv
	.def	_ZN5ImGui15IsWindowFocusedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15IsWindowFocusedEv
_ZN5ImGui15IsWindowFocusedEv:
.LFB530:
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
.LFB531:
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
.LFB532:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6032(%rdx), %rax
	testq	%rax, %rax
	je	.L3506
	movq	6008(%rdx), %rdx
	movq	664(%rax), %rax
	cmpq	%rax, 664(%rdx)
	sete	%al
	ret
	.p2align 4,,7
.L3506:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui29IsRootWindowOrAnyChildHoveredEv
	.def	_ZN5ImGui29IsRootWindowOrAnyChildHoveredEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui29IsRootWindowOrAnyChildHoveredEv
_ZN5ImGui29IsRootWindowOrAnyChildHoveredEv:
.LFB533:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6048(%rdx), %rcx
	testq	%rcx, %rcx
	je	.L3509
	movq	6008(%rdx), %r8
	xorl	%eax, %eax
	cmpq	664(%r8), %rcx
	je	.L3516
.L3508:
	rep ret
	.p2align 4,,7
.L3516:
	movq	6032(%rdx), %rax
	testq	%rax, %rax
	je	.L3511
	movq	664(%rax), %rdx
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.L3508
	testb	$2, 15(%rdx)
	je	.L3508
	cmpb	$0, 137(%rdx)
	je	.L3508
	cmpq	%rdx, 664(%rcx)
	sete	%al
	ret
	.p2align 4,,7
.L3509:
	xorl	%eax, %eax
	ret
	.p2align 4,,7
.L3511:
	movl	$1, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14GetWindowWidthEv
	.def	_ZN5ImGui14GetWindowWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14GetWindowWidthEv
_ZN5ImGui14GetWindowWidthEv:
.LFB534:
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
.LFB535:
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
.LFB536:
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
.LFB539:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movq	6008(%rax), %rax
	movl	172(%rax), %r8d
	je	.L3522
	testl	%r8d, %edx
	je	.L3520
.L3522:
	movq	(%rcx), %rdx
	movss	28(%rax), %xmm2
	movss	32(%rax), %xmm3
	andl	$-15, %r8d
	movl	%r8d, 172(%rax)
	movb	$0, 184(%rax)
	movq	%rdx, 20(%rax)
	movss	24(%rax), %xmm0
	cvttss2si	%xmm0, %edx
	movss	20(%rax), %xmm1
	cvtsi2ss	%edx, %xmm0
	cvttss2si	%xmm1, %edx
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
	addss	%xmm0, %xmm2
	addss	220(%rax), %xmm0
	movss	%xmm1, 216(%rax)
	movss	%xmm2, 196(%rax)
	movss	%xmm0, 220(%rax)
.L3520:
	rep ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12SetWindowPosEPKcRK6ImVec2i
	.def	_ZN5ImGui12SetWindowPosEPKcRK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SetWindowPosEPKcRK6ImVec2i
_ZN5ImGui12SetWindowPosEPKcRK6ImVec2i:
.LFB540:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rsi
	movl	%r8d, %ebx
	call	_ZN5ImGui16FindWindowByNameEPKc
	testq	%rax, %rax
	je	.L3527
	testl	%ebx, %ebx
	movl	172(%rax), %ecx
	jne	.L3538
.L3530:
	movq	(%rsi), %rdx
	movss	28(%rax), %xmm2
	movss	32(%rax), %xmm3
	andl	$-15, %ecx
	movl	%ecx, 172(%rax)
	movb	$0, 184(%rax)
	movq	%rdx, 20(%rax)
	movss	24(%rax), %xmm0
	cvttss2si	%xmm0, %edx
	movss	20(%rax), %xmm1
	cvtsi2ss	%edx, %xmm0
	cvttss2si	%xmm1, %edx
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
	addss	%xmm0, %xmm2
	addss	220(%rax), %xmm0
	movss	%xmm1, 216(%rax)
	movss	%xmm2, 196(%rax)
	movss	%xmm0, 220(%rax)
.L3527:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3538:
	testl	%ecx, %ebx
	jne	.L3530
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13GetWindowSizeEv
	.def	_ZN5ImGui13GetWindowSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13GetWindowSizeEv
_ZN5ImGui13GetWindowSizeEv:
.LFB541:
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
.LFB543:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movq	6008(%rax), %rax
	movl	176(%rax), %r8d
	je	.L3542
	testl	%r8d, %edx
	je	.L3540
.L3542:
	xorps	%xmm0, %xmm0
	movss	(%rcx), %xmm1
	andl	$-15, %r8d
	movl	%r8d, 176(%rax)
	ucomiss	%xmm0, %xmm1
	jbe	.L3554
	movss	%xmm1, 44(%rax)
	xorl	%edx, %edx
.L3546:
	movss	4(%rcx), %xmm1
	movl	%edx, 152(%rax)
	ucomiss	%xmm0, %xmm1
	jbe	.L3555
	movl	$0, 156(%rax)
	movss	%xmm1, 48(%rax)
	ret
	.p2align 4,,7
.L3555:
	movl	$2, 156(%rax)
	movb	$0, 160(%rax)
.L3540:
	rep ret
	.p2align 4,,7
.L3554:
	movb	$0, 160(%rax)
	movl	$2, %edx
	jmp	.L3546
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13SetWindowSizeEPKcRK6ImVec2i
	.def	_ZN5ImGui13SetWindowSizeEPKcRK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13SetWindowSizeEPKcRK6ImVec2i
_ZN5ImGui13SetWindowSizeEPKcRK6ImVec2i:
.LFB544:
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
	je	.L3556
	testl	%esi, %esi
	movl	176(%rax), %ecx
	jne	.L3575
.L3559:
	xorps	%xmm0, %xmm0
	movss	(%rbx), %xmm1
	andl	$-15, %ecx
	movl	%ecx, 176(%rax)
	ucomiss	%xmm0, %xmm1
	jbe	.L3573
	movss	%xmm1, 44(%rax)
	xorl	%edx, %edx
.L3562:
	movss	4(%rbx), %xmm1
	movl	%edx, 152(%rax)
	ucomiss	%xmm0, %xmm1
	jbe	.L3574
	movss	%xmm1, 48(%rax)
	movl	$0, 156(%rax)
.L3556:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3575:
	testl	%ecx, %esi
	jne	.L3559
	jmp	.L3556
	.p2align 4,,7
.L3574:
	movl	$2, 156(%rax)
	movb	$0, 160(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3573:
	movb	$0, 160(%rax)
	movl	$2, %edx
	jmp	.L3562
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui18SetWindowCollapsedEbi
	.def	_ZN5ImGui18SetWindowCollapsedEbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui18SetWindowCollapsedEbi
_ZN5ImGui18SetWindowCollapsedEbi:
.LFB546:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movq	6008(%rax), %r8
	movl	180(%r8), %eax
	je	.L3578
	testl	%eax, %edx
	je	.L3576
.L3578:
	andl	$-15, %eax
	movb	%cl, 139(%r8)
	movl	%eax, 180(%r8)
.L3576:
	rep ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17IsWindowCollapsedEv
	.def	_ZN5ImGui17IsWindowCollapsedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17IsWindowCollapsedEv
_ZN5ImGui17IsWindowCollapsedEv:
.LFB547:
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
.LFB548:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %esi
	movl	%r8d, %ebx
	call	_ZN5ImGui16FindWindowByNameEPKc
	testq	%rax, %rax
	je	.L3584
	testl	%ebx, %ebx
	movl	180(%rax), %ecx
	jne	.L3595
.L3587:
	andl	$-15, %ecx
	movb	%sil, 139(%rax)
	movl	%ecx, 180(%rax)
.L3584:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3595:
	testl	%ecx, %ebx
	jne	.L3587
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14SetWindowFocusEv
	.def	_ZN5ImGui14SetWindowFocusEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14SetWindowFocusEv
_ZN5ImGui14SetWindowFocusEv:
.LFB549:
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
.LFB550:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rcx, %rcx
	je	.L3598
	call	_ZN5ImGui16FindWindowByNameEPKc
	testq	%rax, %rax
	je	.L3597
	movq	%rax, %rcx
	addq	$40, %rsp
	jmp	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	.p2align 4,,7
.L3598:
	movq	GImGui(%rip), %rax
	movq	$0, 6032(%rax)
.L3597:
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16SetNextWindowPosERK6ImVec2i
	.def	_ZN5ImGui16SetNextWindowPosERK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16SetNextWindowPosERK6ImVec2i
_ZN5ImGui16SetNextWindowPosERK6ImVec2i:
.LFB551:
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
.LFB552:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	testl	%ecx, %ecx
	cmove	%edx, %ecx
	movl	$0xff7fffff, 6216(%rax)
	movl	$0xff7fffff, 6220(%rax)
	movl	%ecx, 6244(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
	.def	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
_ZN5ImGui17SetNextWindowSizeERK6ImVec2i:
.LFB553:
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
.LFB554:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	(%rcx), %xmm3
	movss	4(%rcx), %xmm2
	movss	(%rdx), %xmm1
	movb	$1, 6296(%rax)
	movss	4(%rdx), %xmm0
	movq	%r8, 6280(%rax)
	movss	%xmm3, 6260(%rax)
	movq	%r9, 6288(%rax)
	movss	%xmm2, 6264(%rax)
	movss	%xmm1, 6268(%rax)
	movss	%xmm0, 6272(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2
	.def	_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2
_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2:
.LFB555:
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
.LFB556:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	xorps	%xmm1, %xmm1
	movl	6252(%rax), %edx
	testl	%edx, %edx
	je	.L3615
	movss	6236(%rax), %xmm1
.L3615:
	movss	%xmm0, 6232(%rax)
	movl	$1, 6252(%rax)
	movss	%xmm1, 6236(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22SetNextWindowCollapsedEbi
	.def	_ZN5ImGui22SetNextWindowCollapsedEbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22SetNextWindowCollapsedEbi
_ZN5ImGui22SetNextWindowCollapsedEbi:
.LFB557:
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
.LFB558:
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
.LFB562:
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
.LFB563:
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
.LFB564:
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
.LFB565:
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
.LFB566:
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
.LFB567:
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
.LFB568:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movb	$1, 138(%rax)
	movq	656(%rax), %rax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7GetFontEv
	.def	_ZN5ImGui7GetFontEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7GetFontEv
_ZN5ImGui7GetFontEv:
.LFB569:
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
.LFB570:
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
.LFB571:
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
.LFB572:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movss	%xmm0, 648(%rdx)
	mulss	5948(%rax), %xmm0
	movb	$1, 138(%rdx)
	movss	%xmm0, 5944(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12GetCursorPosEv
	.def	_ZN5ImGui12GetCursorPosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12GetCursorPosEv
_ZN5ImGui12GetCursorPosEv:
.LFB573:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	196(%rax), %xmm0
	movss	192(%rax), %xmm1
	subss	32(%rax), %xmm0
	subss	28(%rax), %xmm1
	addss	100(%rax), %xmm0
	addss	96(%rax), %xmm1
	movss	%xmm0, 16(%rsp)
	movq	16(%rsp), %rax
	movss	%xmm1, 12(%rsp)
	movl	12(%rsp), %edx
	salq	$32, %rax
	orq	%rdx, %rax
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13GetCursorPosXEv
	.def	_ZN5ImGui13GetCursorPosXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13GetCursorPosXEv
_ZN5ImGui13GetCursorPosXEv:
.LFB574:
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
.LFB575:
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
.LFB576:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	32(%rax), %xmm1
	movb	$1, 138(%rax)
	subss	100(%rax), %xmm1
	movss	28(%rax), %xmm0
	subss	96(%rax), %xmm0
	movss	220(%rax), %xmm2
	addss	4(%rcx), %xmm1
	addss	(%rcx), %xmm0
	movaps	%xmm1, %xmm3
	movss	%xmm1, 196(%rax)
	movss	%xmm0, 192(%rax)
	cmpless	%xmm2, %xmm3
	andps	%xmm3, %xmm2
	andnps	%xmm1, %xmm3
	movss	216(%rax), %xmm1
	orps	%xmm3, %xmm2
	movaps	%xmm0, %xmm3
	cmpless	%xmm1, %xmm3
	movss	%xmm2, 220(%rax)
	andps	%xmm3, %xmm1
	andnps	%xmm0, %xmm3
	orps	%xmm3, %xmm1
	movss	%xmm1, 216(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13SetCursorPosXEf
	.def	_ZN5ImGui13SetCursorPosXEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13SetCursorPosXEf
_ZN5ImGui13SetCursorPosXEf:
.LFB577:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	28(%rax), %xmm1
	movb	$1, 138(%rax)
	subss	96(%rax), %xmm1
	addss	%xmm1, %xmm0
	movss	216(%rax), %xmm1
	movaps	%xmm0, %xmm2
	movss	%xmm0, 192(%rax)
	cmpless	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm0, %xmm2
	orps	%xmm2, %xmm1
	movss	%xmm1, 216(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13SetCursorPosYEf
	.def	_ZN5ImGui13SetCursorPosYEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13SetCursorPosYEf
_ZN5ImGui13SetCursorPosYEf:
.LFB578:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	32(%rax), %xmm1
	movb	$1, 138(%rax)
	subss	100(%rax), %xmm1
	addss	%xmm1, %xmm0
	movss	220(%rax), %xmm1
	movaps	%xmm0, %xmm2
	movss	%xmm0, 196(%rax)
	cmpless	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm0, %xmm2
	orps	%xmm2, %xmm1
	movss	%xmm1, 220(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui17GetCursorStartPosEv
	.def	_ZN5ImGui17GetCursorStartPosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17GetCursorStartPosEv
_ZN5ImGui17GetCursorStartPosEv:
.LFB579:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	212(%rax), %xmm0
	movss	208(%rax), %xmm1
	subss	32(%rax), %xmm0
	subss	28(%rax), %xmm1
	movss	%xmm0, 16(%rsp)
	movq	16(%rsp), %rax
	movss	%xmm1, 12(%rsp)
	movl	12(%rsp), %edx
	salq	$32, %rax
	orq	%rdx, %rax
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui18GetCursorScreenPosEv
	.def	_ZN5ImGui18GetCursorScreenPosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui18GetCursorScreenPosEv
_ZN5ImGui18GetCursorScreenPosEv:
.LFB580:
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
.LFB581:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	(%rcx), %rdx
	movq	6008(%rax), %rax
	movq	%rdx, 192(%rax)
	movss	220(%rax), %xmm0
	movss	196(%rax), %xmm2
	movb	$1, 138(%rax)
	movaps	%xmm2, %xmm1
	movss	192(%rax), %xmm3
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	orps	%xmm1, %xmm0
	movss	216(%rax), %xmm1
	cmpless	%xmm1, %xmm2
	movss	%xmm0, 220(%rax)
	andps	%xmm2, %xmm1
	andnps	%xmm3, %xmm2
	orps	%xmm2, %xmm1
	movss	%xmm1, 216(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10GetScrollXEv
	.def	_ZN5ImGui10GetScrollXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10GetScrollXEv
_ZN5ImGui10GetScrollXEv:
.LFB582:
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
.LFB583:
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
.LFB584:
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
.LFB585:
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
.LFB586:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movb	$1, 138(%rax)
	movss	%xmm0, 104(%rax)
	movl	$0x00000000, 112(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SetScrollYEf
	.def	_ZN5ImGui10SetScrollYEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SetScrollYEf
_ZN5ImGui10SetScrollYEf:
.LFB587:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	xorps	%xmm1, %xmm1
	movq	6008(%rdx), %rax
	movl	12(%rax), %ecx
	movb	$1, 138(%rax)
	testb	$1, %cl
	jne	.L3653
	movss	648(%rax), %xmm1
	mulss	5948(%rdx), %xmm1
	movss	5160(%rdx), %xmm2
	addss	%xmm2, %xmm2
	addss	%xmm2, %xmm1
.L3653:
	andb	$4, %ch
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	je	.L3654
	movss	648(%rax), %xmm1
	mulss	5948(%rdx), %xmm1
	movss	5160(%rdx), %xmm2
	addss	%xmm2, %xmm2
	addss	%xmm2, %xmm1
.L3654:
	addss	%xmm1, %xmm0
	movl	$0x00000000, 116(%rax)
	movss	%xmm0, 108(%rax)
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC157:
	.ascii "center_y_ratio >= 0.0f && center_y_ratio <= 1.0f\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui17SetScrollFromPosYEff
	.def	_ZN5ImGui17SetScrollFromPosYEff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17SetScrollFromPosYEff
_ZN5ImGui17SetScrollFromPosYEff:
.LFB588:
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
	xorps	%xmm8, %xmm8
	movaps	%xmm0, %xmm6
	movaps	%xmm1, %xmm7
	movq	GImGui(%rip), %rax
	movss	.LC28(%rip), %xmm0
	ucomiss	%xmm1, %xmm0
	movq	6008(%rax), %rbx
	movb	$1, 138(%rbx)
	jb	.L3663
	ucomiss	%xmm8, %xmm1
	jnb	.L3658
.L3663:
	leaq	.LC15(%rip), %rdx
	leaq	.LC157(%rip), %rcx
	movl	$5281, %r8d
	call	_assert
.L3658:
	addss	100(%rbx), %xmm6
	ucomiss	%xmm7, %xmm8
	cvttss2si	%xmm6, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 108(%rbx)
	jnb	.L3669
.L3660:
	movss	%xmm7, 116(%rbx)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3669:
	movss	88(%rbx), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L3660
	movl	$0x00000000, 108(%rbx)
	jmp	.L3660
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13SetScrollHereEf
	.def	_ZN5ImGui13SetScrollHereEf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13SetScrollHereEf
_ZN5ImGui13SetScrollHereEf:
.LFB589:
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
	xorps	%xmm8, %xmm8
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm7
	movq	GImGui(%rip), %rax
	subss	.LC29(%rip), %xmm2
	ucomiss	%xmm8, %xmm0
	movq	6008(%rax), %rbx
	movss	232(%rbx), %xmm6
	movb	$1, 138(%rbx)
	mulss	5172(%rax), %xmm2
	mulss	%xmm0, %xmm6
	addss	204(%rbx), %xmm6
	movaps	%xmm2, %xmm1
	addss	%xmm2, %xmm1
	addss	%xmm6, %xmm1
	movaps	%xmm1, %xmm6
	subss	32(%rbx), %xmm6
	jb	.L3676
	movss	.LC28(%rip), %xmm0
	ucomiss	%xmm7, %xmm0
	jnb	.L3671
.L3676:
	leaq	.LC15(%rip), %rdx
	leaq	.LC157(%rip), %rcx
	movl	$5281, %r8d
	call	_assert
.L3671:
	movss	100(%rbx), %xmm1
	addss	%xmm6, %xmm1
	ucomiss	%xmm7, %xmm8
	cvttss2si	%xmm1, %eax
	cvtsi2ss	%eax, %xmm1
	movss	%xmm1, 108(%rbx)
	jnb	.L3682
.L3673:
	movss	%xmm7, 116(%rbx)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L3682:
	movss	88(%rbx), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L3673
	movl	$0x00000000, 108(%rbx)
	jmp	.L3673
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui20SetKeyboardFocusHereEi
	.def	_ZN5ImGui20SetKeyboardFocusHereEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui20SetKeyboardFocusHereEi
_ZN5ImGui20SetKeyboardFocusHereEi:
.LFB590:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movl	688(%rax), %edx
	movb	$1, 138(%rax)
	movl	$2147483647, 708(%rax)
	leal	1(%rcx,%rdx), %edx
	movl	%edx, 704(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15SetStateStorageEP12ImGuiStorage
	.def	_ZN5ImGui15SetStateStorageEP12ImGuiStorage;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15SetStateStorageEP12ImGuiStorage
_ZN5ImGui15SetStateStorageEP12ImGuiStorage:
.LFB591:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	movq	6008(%rax), %rax
	leaq	632(%rax), %rdx
	movb	$1, 138(%rax)
	cmove	%rdx, %rcx
	movq	%rcx, 296(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15GetStateStorageEv
	.def	_ZN5ImGui15GetStateStorageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15GetStateStorageEv
_ZN5ImGui15GetStateStorageEv:
.LFB592:
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
.LFB602:
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	je	.L3692
.L3688:
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L3692:
	movss	5160(%rdx), %xmm1
	leaq	32(%rsp), %rcx
	movaps	%xmm1, %xmm0
	xorps	%xmm6, %xmm6
	addss	%xmm1, %xmm0
	movss	%xmm6, 32(%rsp)
	addss	5944(%rdx), %xmm0
	movss	%xmm0, 36(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L3688
	addss	200(%rax), %xmm6
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movss	%xmm6, 192(%rax)
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	.def	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i:
.LFB606:
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
	movl	160(%rsp), %ebx
	movq	%rcx, %rdi
	movl	%edx, %ebp
	movq	%r8, %r12
	movq	6008(%rsi), %r14
	testb	$-128, %bl
	movq	%rsi, %r13
	movb	$1, 138(%r14)
	je	.L3694
	testq	%r8, %r8
	je	.L3695
	movb	$0, (%r8)
.L3695:
	testq	%r9, %r9
	je	.L3696
	movb	$0, (%r9)
.L3696:
	xorl	%eax, %eax
	cmpl	%ebp, 6068(%rsi)
	je	.L3777
.L3760:
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
.L3694:
	movl	%ebx, %eax
	movq	%r9, 40(%rsp)
	orl	$2, %eax
	testb	$30, %bl
	cmove	%eax, %ebx
	movl	%ebx, %r8d
	shrl	$5, %r8d
	andl	$1, %r8d
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	movl	%eax, %r15d
	movq	40(%rsp), %r9
	jne	.L3778
	cmpl	6068(%rsi), %ebp
	je	.L3779
.L3725:
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	xorl	%edi, %edi
.L3722:
	testq	%r12, %r12
	je	.L3723
	movb	%al, (%r12)
.L3723:
	testq	%r9, %r9
	je	.L3738
	movb	%r15b, (%r9)
	movl	%edi, %eax
	jmp	.L3760
	.p2align 4,,7
.L3778:
	testb	$2, %bh
	movl	%ebp, 6056(%rsi)
	movb	$0, 6060(%rsi)
	jne	.L3780
.L3700:
	testb	$2, %bl
	je	.L3704
	cmpb	$0, 876(%rsi)
	je	.L3705
	testl	%ebp, %ebp
	movl	%ebp, 6068(%rsi)
	movb	$0, 6078(%rsi)
	movb	$1, 6077(%rsi)
	je	.L3706
	movb	$1, 6076(%rsi)
.L3706:
	movq	%r14, 6088(%rsi)
	movq	%r14, %rcx
	movq	%r9, 40(%rsp)
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movss	268(%rsi), %xmm0
	movq	40(%rsp), %r9
	movss	264(%rsi), %xmm1
	subss	4(%rdi), %xmm0
	subss	(%rdi), %xmm1
	movss	%xmm0, 6084(%rsi)
	movss	%xmm1, 6080(%rsi)
.L3704:
	testb	$4, %bl
	je	.L3705
	cmpb	$0, 876(%rsi)
	je	.L3705
.L3708:
	movq	GImGui(%rip), %rax
	movq	%r14, %rcx
	movq	%r9, 40(%rsp)
	movl	%r15d, %edi
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movq	40(%rsp), %r9
.L3707:
	testb	$8, %bl
	movl	%ebx, %eax
	je	.L3774
	cmpb	$0, 949(%rsi)
	jne	.L3711
.L3774:
	andl	$1, %eax
.L3710:
	testl	%eax, %eax
	je	.L3714
	cmpl	6068(%r13), %ebp
	je	.L3781
.L3732:
	xorl	%r15d, %r15d
.L3715:
	andb	$4, %bh
	movl	$1, %eax
	je	.L3722
	movl	6064(%r13), %eax
	testl	%eax, %eax
	je	.L3737
	cmpl	%eax, %ebp
	jne	.L3725
.L3737:
	movl	$1, %eax
	jmp	.L3722
	.p2align 4,,7
.L3777:
	movl	$0, 6068(%rsi)
	movb	$0, 6078(%rsi)
	movb	$1, 6077(%rsi)
	movq	$0, 6088(%rsi)
	jmp	.L3760
	.p2align 4,,7
.L3780:
	cmpb	$0, 285(%rsi)
	jne	.L3701
	cmpb	$0, 286(%rsi)
	je	.L3782
.L3701:
	movl	6068(%r13), %eax
	xorl	%edi, %edi
.L3703:
	cmpl	%eax, %ebp
	jne	.L3732
.L3716:
	cmpb	$0, 272(%r13)
	jne	.L3715
	testb	$2, %bl
	jne	.L3727
.L3773:
	movq	GImGui(%rip), %rsi
.L3720:
	testb	%r15b, %r15b
	movl	$0, 6068(%rsi)
	movb	$0, 6078(%rsi)
	movb	$1, 6077(%rsi)
	movq	$0, 6088(%rsi)
	jne	.L3732
	xorl	%eax, %eax
	jmp	.L3722
	.p2align 4,,7
.L3705:
	xorl	%edi, %edi
	testb	$16, %bl
	je	.L3707
	cmpb	$0, 944(%rsi)
	jne	.L3708
	jmp	.L3707
	.p2align 4,,7
.L3714:
	movl	6068(%r13), %eax
	jmp	.L3703
	.p2align 4,,7
.L3738:
	movl	%edi, %eax
	jmp	.L3760
	.p2align 4,,7
.L3711:
	andl	$1, %eax
	je	.L3730
	movss	980(%rsi), %xmm0
	ucomiss	128(%rsi), %xmm0
	cmovb	%r15d, %edi
.L3712:
	movq	GImGui(%rip), %rsi
	movl	$0, 6068(%rsi)
	movb	$0, 6078(%rsi)
	movb	$1, 6077(%rsi)
	movq	$0, 6088(%rsi)
	jmp	.L3710
	.p2align 4,,7
.L3727:
	testb	$1, %bl
	je	.L3733
	movss	980(%r13), %xmm0
	movq	GImGui(%rip), %rsi
	ucomiss	128(%r13), %xmm0
	cmovb	%r15d, %edi
	jmp	.L3720
	.p2align 4,,7
.L3782:
	cmpb	$0, 287(%rsi)
	jne	.L3701
	jmp	.L3700
	.p2align 4,,7
.L3781:
	movss	960(%r13), %xmm0
	ucomiss	.LC9(%rip), %xmm0
	jbe	.L3716
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%r9, 40(%rsp)
	call	_ZN5ImGui14IsMouseClickedEib
	testb	%al, %al
	movq	40(%rsp), %r9
	movl	6068(%r13), %eax
	je	.L3703
	movl	%r15d, %edi
	jmp	.L3703
	.p2align 4,,7
.L3730:
	movl	%r15d, %edi
	jmp	.L3712
.L3733:
	movl	%r15d, %edi
	.p2align 4,,2
	jmp	.L3773
.L3779:
	xorl	%edi, %edi
	cmpb	$0, 272(%rsi)
	je	.L3720
	xorl	%eax, %eax
	xorl	%edi, %edi
	movl	$1, %r15d
	jmp	.L3722
	.seh_endproc
	.section .rdata,"dr"
.LC159:
	.ascii "#SCROLLX\0"
.LC160:
	.ascii "#SCROLLY\0"
	.text
	.p2align 4,,15
	.def	_ZL9ScrollbarP11ImGuiWindowb;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL9ScrollbarP11ImGuiWindowb
_ZL9ScrollbarP11ImGuiWindowb:
.LFB502:
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
	.seh_endprologue
	testb	%dl, %dl
	movq	%rcx, %rbx
	movl	%edx, %edi
	movq	GImGui(%rip), %rsi
	je	.L3886
	leaq	.LC159(%rip), %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movzbl	121(%rbx), %edx
	movl	%eax, %ebp
	testb	%dl, %dl
	jne	.L3887
	movss	40(%rbx), %xmm0
	xorps	%xmm7, %xmm7
	addss	32(%rbx), %xmm0
	movss	28(%rbx), %xmm3
	movss	36(%rbx), %xmm1
	addss	%xmm3, %xmm1
	movaps	%xmm7, %xmm6
	movss	132(%rbx), %xmm2
.L3844:
	subss	%xmm6, %xmm1
	movaps	%xmm0, %xmm4
	subss	5200(%rsi), %xmm0
	subss	%xmm2, %xmm4
	subss	%xmm2, %xmm1
	addss	%xmm3, %xmm2
	movss	%xmm4, 108(%rsp)
	movaps	%xmm4, %xmm3
	movss	%xmm0, 100(%rsp)
	movss	%xmm1, 104(%rsp)
	movss	%xmm2, 96(%rsp)
.L3786:
	subss	%xmm2, %xmm1
	ucomiss	%xmm1, %xmm7
	jnb	.L3783
	subss	%xmm0, %xmm3
	ucomiss	%xmm3, %xmm7
	jnb	.L3783
	testb	$16, 14(%rbx)
	jne	.L3839
	testb	%dil, %dil
	movss	5140(%rsi), %xmm8
	je	.L3791
.L3891:
	cmpb	$1, %dl
	sbbl	%r13d, %r13d
	andl	$4, %r13d
	addl	$8, %r13d
.L3792:
	movl	$14, %ecx
	leaq	96(%rsp), %r12
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	656(%rbx), %rcx
	movss	%xmm8, 32(%rsp)
	leaq	8(%r12), %r8
	movl	%eax, %r9d
	movl	%r13d, 40(%rsp)
	movq	%r12, %rdx
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	108(%rsp), %xmm2
	movaps	%xmm2, %xmm0
	movss	100(%rsp), %xmm1
	movss	.LC158(%rip), %xmm9
	subss	%xmm1, %xmm0
	movss	.LC29(%rip), %xmm8
	subss	%xmm9, %xmm0
	mulss	%xmm8, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm5
	ucomiss	%xmm5, %xmm7
	ja	.L3849
	movss	.LC35(%rip), %xmm3
	movaps	%xmm3, %xmm0
	cmpnltss	%xmm5, %xmm0
	andps	%xmm0, %xmm5
	andnps	%xmm3, %xmm0
	orps	%xmm0, %xmm5
.L3795:
	movss	104(%rsp), %xmm4
	movaps	%xmm4, %xmm0
	movss	96(%rsp), %xmm3
	subss	%xmm3, %xmm0
	subss	%xmm9, %xmm0
	mulss	%xmm8, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm0
	ucomiss	%xmm0, %xmm7
	ja	.L3850
	movss	.LC35(%rip), %xmm10
	movaps	%xmm10, %xmm9
	cmpnltss	%xmm0, %xmm9
	andps	%xmm9, %xmm0
	andnps	%xmm10, %xmm9
	orps	%xmm9, %xmm0
.L3797:
	addss	%xmm0, %xmm3
	testb	%dil, %dil
	addss	%xmm5, %xmm1
	movss	52(%rbx), %xmm10
	subss	%xmm0, %xmm4
	movss	96(%rbx), %xmm9
	subss	%xmm5, %xmm2
	movss	56(%rbx), %xmm0
	movss	%xmm3, 96(%rsp)
	movss	%xmm1, 100(%rsp)
	movss	%xmm4, 104(%rsp)
	movss	%xmm2, 108(%rsp)
	movss	100(%rbx), %xmm5
	je	.L3799
	subss	%xmm3, %xmm4
	movss	36(%rbx), %xmm13
	subss	%xmm6, %xmm13
	movaps	%xmm4, %xmm11
.L3800:
	movaps	%xmm13, %xmm3
	movaps	%xmm10, %xmm0
	movaps	%xmm13, %xmm4
	cmpless	%xmm10, %xmm3
	movss	5208(%rsi), %xmm6
	andps	%xmm3, %xmm0
	andnps	%xmm13, %xmm3
	orps	%xmm0, %xmm3
	divss	%xmm3, %xmm4
	ucomiss	%xmm4, %xmm7
	movaps	%xmm4, %xmm3
	ja	.L3852
	movss	.LC28(%rip), %xmm12
	ucomiss	%xmm12, %xmm4
	jbe	.L3803
.L3859:
	movaps	%xmm11, %xmm6
.L3807:
	leaq	62(%rsp), %r9
	leaq	63(%rsp), %r8
	movl	6068(%rsi), %r13d
	movl	%ebp, %edx
	movl	$0, 32(%rsp)
	movq	%r12, %rcx
	movb	$0, 62(%rsp)
	movb	$0, 63(%rsp)
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	subss	%xmm13, %xmm10
	movaps	%xmm9, %xmm0
	movaps	%xmm10, %xmm1
	cmpnless	%xmm12, %xmm1
	andps	%xmm1, %xmm10
	andnps	%xmm12, %xmm1
	orps	%xmm1, %xmm10
	divss	%xmm10, %xmm0
	ucomiss	%xmm0, %xmm7
	ja	.L3854
	movaps	%xmm12, %xmm4
	minss	%xmm0, %xmm4
	movaps	%xmm4, %xmm0
.L3811:
	movaps	%xmm11, %xmm1
	cmpb	$0, 62(%rsp)
	subss	%xmm6, %xmm1
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm5
	divss	%xmm11, %xmm5
	movaps	%xmm5, %xmm13
	je	.L3813
	movaps	%xmm6, %xmm0
	divss	%xmm11, %xmm0
	ucomiss	%xmm0, %xmm12
	ja	.L3888
.L3814:
	movl	$17, %ecx
.L3842:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	testb	%dil, %dil
	movl	%eax, %r9d
	movss	5204(%rsi), %xmm2
	je	.L3831
	movss	96(%rsp), %xmm1
	movaps	%xmm13, %xmm5
	movss	104(%rsp), %xmm0
	subss	%xmm1, %xmm0
	mulss	%xmm0, %xmm5
	movss	108(%rsp), %xmm0
	movss	%xmm0, 84(%rsp)
	movss	100(%rsp), %xmm0
	movss	%xmm0, 68(%rsp)
	addss	%xmm1, %xmm5
	addss	%xmm5, %xmm6
	movss	%xmm5, 64(%rsp)
	movss	%xmm6, 80(%rsp)
.L3881:
	movq	656(%rbx), %rcx
	leaq	64(%rsp), %rdx
	movss	%xmm2, 32(%rsp)
	leaq	80(%rsp), %r8
	movl	$-1, 40(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	nop
.L3783:
	movaps	112(%rsp), %xmm6
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
	movaps	160(%rsp), %xmm9
	movaps	176(%rsp), %xmm10
	movaps	192(%rsp), %xmm11
	movaps	208(%rsp), %xmm12
	movaps	224(%rsp), %xmm13
	addq	$248, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L3886:
	leaq	.LC160(%rip), %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movzbl	120(%rbx), %edx
	movl	%eax, %ebp
	testb	%dl, %dl
	je	.L3889
	movss	36(%rbx), %xmm2
	xorps	%xmm7, %xmm7
	addss	28(%rbx), %xmm2
	movss	32(%rbx), %xmm1
	movss	40(%rbx), %xmm3
	addss	%xmm1, %xmm3
	movss	5200(%rsi), %xmm6
	movaps	%xmm6, %xmm4
	movss	132(%rbx), %xmm0
.L3843:
	subss	%xmm6, %xmm3
	movaps	%xmm2, %xmm5
	movl	12(%rbx), %eax
	subss	%xmm4, %xmm2
	subss	%xmm0, %xmm5
	subss	%xmm0, %xmm3
	testb	$1, %al
	addss	%xmm1, %xmm0
	movaps	%xmm2, %xmm4
	movss	%xmm2, 96(%rsp)
	movaps	%xmm7, %xmm1
	movss	%xmm5, 104(%rsp)
	movss	%xmm3, 108(%rsp)
	jne	.L3787
	movq	GImGui(%rip), %rcx
	movss	648(%rbx), %xmm1
	mulss	5948(%rcx), %xmm1
	movss	5160(%rcx), %xmm2
	addss	%xmm2, %xmm2
	addss	%xmm2, %xmm1
.L3787:
	testb	$4, %ah
	movaps	%xmm7, %xmm2
	jne	.L3890
.L3838:
	addss	%xmm2, %xmm1
	movaps	%xmm4, %xmm2
	addss	%xmm1, %xmm0
	movaps	%xmm5, %xmm1
	movss	%xmm0, 100(%rsp)
	jmp	.L3786
	.p2align 4,,7
.L3839:
	testb	%dil, %dil
	movss	5152(%rsi), %xmm8
	jne	.L3891
.L3791:
	movl	12(%rbx), %eax
	andl	$1025, %eax
	decl	%eax
	sete	%r8b
	movzbl	%r8b, %eax
	movzbl	%r8b, %r8d
	leal	4(%rax,%rax), %eax
	addl	%r8d, %r8d
	testb	%dl, %dl
	cmove	%eax, %r8d
	movl	%r8d, %r13d
	jmp	.L3792
	.p2align 4,,7
.L3831:
	movss	100(%rsp), %xmm1
	movss	108(%rsp), %xmm0
	movaps	%xmm13, %xmm5
	subss	%xmm1, %xmm0
	mulss	%xmm0, %xmm5
	movss	104(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)
	movss	96(%rsp), %xmm0
	movss	%xmm0, 64(%rsp)
	addss	%xmm1, %xmm5
	addss	%xmm5, %xmm6
	movss	%xmm5, 68(%rsp)
	movss	%xmm6, 84(%rsp)
	jmp	.L3881
	.p2align 4,,7
.L3813:
	cmpb	$1, 63(%rsp)
	sbbl	%ecx, %ecx
	addl	$16, %ecx
	jmp	.L3842
	.p2align 4,,7
.L3799:
	subss	%xmm1, %xmm2
	movss	40(%rbx), %xmm13
	subss	%xmm6, %xmm13
	movaps	%xmm5, %xmm9
	movaps	%xmm0, %xmm10
	movaps	%xmm2, %xmm11
	jmp	.L3800
	.p2align 4,,7
.L3852:
	movaps	%xmm7, %xmm3
	movss	.LC28(%rip), %xmm12
.L3803:
	mulss	%xmm11, %xmm3
	movaps	%xmm6, %xmm0
	cmpnless	%xmm3, %xmm0
	andps	%xmm0, %xmm6
	andnps	%xmm3, %xmm0
	orps	%xmm0, %xmm6
	ucomiss	%xmm6, %xmm11
	ja	.L3807
	jmp	.L3859
	.p2align 4,,7
.L3890:
	movq	GImGui(%rip), %rax
	movss	5948(%rax), %xmm2
	mulss	648(%rbx), %xmm2
	movss	5160(%rax), %xmm8
	addss	%xmm8, %xmm8
	addss	%xmm8, %xmm2
	jmp	.L3838
	.p2align 4,,7
.L3888:
	testb	%dil, %dil
	movss	96(%rsp), %xmm2
	movss	100(%rsp), %xmm4
	leaq	10376(%rsi), %rdx
	movss	264(%rsi), %xmm3
	movss	268(%rsi), %xmm9
	jne	.L3817
	leaq	10380(%rsi), %rdx
	movaps	%xmm9, %xmm3
	movaps	%xmm4, %xmm2
.L3817:
	subss	%xmm2, %xmm3
	divss	%xmm11, %xmm3
	ucomiss	%xmm3, %xmm7
	ja	.L3855
	movaps	%xmm12, %xmm4
	minss	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
.L3818:
	movq	GImGui(%rip), %rax
	cmpl	%ebp, %r13d
	movl	%ebp, 6056(%rax)
	movb	$0, 6060(%rax)
	je	.L3892
	ucomiss	%xmm13, %xmm3
	jb	.L3822
	movaps	%xmm0, %xmm2
	addss	%xmm13, %xmm2
	ucomiss	%xmm3, %xmm2
	jb	.L3822
	movaps	%xmm0, %xmm4
	movaps	%xmm3, %xmm2
	xorl	%ecx, %ecx
	mulss	%xmm8, %xmm4
	subss	%xmm13, %xmm2
	subss	%xmm4, %xmm2
	movss	%xmm2, (%rdx)
	.p2align 4,,7
.L3821:
	movaps	%xmm3, %xmm5
	subss	%xmm2, %xmm5
	movaps	%xmm5, %xmm2
	movaps	%xmm12, %xmm5
	subss	%xmm4, %xmm2
	subss	%xmm0, %xmm5
	divss	%xmm5, %xmm2
	ucomiss	%xmm2, %xmm7
	ja	.L3856
	movaps	%xmm12, %xmm5
	minss	%xmm2, %xmm5
	movaps	%xmm5, %xmm2
.L3825:
	mulss	%xmm10, %xmm2
	testb	%dil, %dil
	addss	%xmm2, %xmm8
	cvttss2si	%xmm8, %eax
	cvtsi2ss	%eax, %xmm0
	je	.L3827
	movss	%xmm0, 96(%rbx)
.L3828:
	divss	%xmm10, %xmm0
	ucomiss	%xmm0, %xmm7
	ja	.L3857
	minss	%xmm0, %xmm12
	movaps	%xmm12, %xmm0
.L3829:
	mulss	%xmm1, %xmm0
	testb	%cl, %cl
	movaps	%xmm0, %xmm5
	divss	%xmm11, %xmm5
	movaps	%xmm5, %xmm13
	je	.L3814
	subss	%xmm5, %xmm3
	subss	%xmm4, %xmm3
	movss	%xmm3, (%rdx)
	jmp	.L3814
	.p2align 4,,7
.L3854:
	movaps	%xmm7, %xmm0
	jmp	.L3811
	.p2align 4,,7
.L3850:
	movaps	%xmm7, %xmm0
	jmp	.L3797
	.p2align 4,,7
.L3849:
	movaps	%xmm7, %xmm5
	jmp	.L3795
	.p2align 4,,7
.L3855:
	movaps	%xmm7, %xmm3
	jmp	.L3818
	.p2align 4,,7
.L3822:
	movaps	%xmm0, %xmm4
	movl	$0x00000000, (%rdx)
	movaps	%xmm7, %xmm2
	movl	$1, %ecx
	mulss	%xmm8, %xmm4
	jmp	.L3821
	.p2align 4,,7
.L3827:
	movss	%xmm0, 100(%rbx)
	jmp	.L3828
	.p2align 4,,7
.L3892:
	movaps	%xmm0, %xmm4
	xorl	%ecx, %ecx
	movss	(%rdx), %xmm2
	mulss	%xmm8, %xmm4
	jmp	.L3821
	.p2align 4,,7
.L3856:
	movaps	%xmm7, %xmm2
	jmp	.L3825
	.p2align 4,,7
.L3857:
	movaps	%xmm7, %xmm0
	jmp	.L3829
.L3889:
	xorps	%xmm7, %xmm7
	movss	32(%rbx), %xmm1
	movss	40(%rbx), %xmm3
	movss	28(%rbx), %xmm2
	addss	%xmm1, %xmm3
	addss	36(%rbx), %xmm2
	movss	132(%rbx), %xmm0
	movss	5200(%rsi), %xmm4
	movaps	%xmm7, %xmm6
	jmp	.L3843
.L3887:
	movss	28(%rbx), %xmm3
	movss	40(%rbx), %xmm0
	xorps	%xmm7, %xmm7
	movss	36(%rbx), %xmm1
	addss	32(%rbx), %xmm0
	movss	5200(%rsi), %xmm6
	addss	%xmm3, %xmm1
	movss	132(%rbx), %xmm2
	jmp	.L3844
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11CloseButtonEjRK6ImVec2f
	.def	_ZN5ImGui11CloseButtonEjRK6ImVec2f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11CloseButtonEjRK6ImVec2f
_ZN5ImGui11CloseButtonEjRK6ImVec2f:
.LFB611:
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
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	.seh_endprologue
	movaps	%xmm2, %xmm6
	movl	%ecx, %eax
	movss	(%rdx), %xmm1
	movq	GImGui(%rip), %rcx
	movaps	%xmm1, %xmm2
	leaq	63(%rsp), %r9
	movss	4(%rdx), %xmm0
	addss	%xmm6, %xmm1
	subss	%xmm6, %xmm2
	movq	6008(%rcx), %rbx
	leaq	62(%rsp), %r8
	leaq	112(%rsp), %rcx
	movl	%eax, %edx
	movb	$1, 138(%rbx)
	movl	$0, 32(%rsp)
	movss	%xmm1, 120(%rsp)
	movss	%xmm2, 112(%rsp)
	movaps	%xmm0, %xmm2
	addss	%xmm6, %xmm0
	subss	%xmm6, %xmm2
	movss	%xmm0, 124(%rsp)
	movss	%xmm2, 116(%rsp)
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$1, 62(%rsp)
	movl	%eax, %esi
	sbbl	%ecx, %ecx
	cmpb	$0, 63(%rsp)
	je	.L3894
	andl	$-2, %ecx
	addl	$36, %ecx
.L3895:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	116(%rsp), %xmm0
	movq	656(%rbx), %rcx
	addss	124(%rsp), %xmm0
	movss	112(%rsp), %xmm2
	addss	120(%rsp), %xmm2
	movss	.LC29(%rip), %xmm1
	leaq	64(%rsp), %rdx
	movl	%eax, %r9d
	movl	$12, 32(%rsp)
	mulss	%xmm1, %xmm0
	mulss	%xmm2, %xmm1
	movaps	%xmm6, %xmm2
	movss	%xmm0, 68(%rsp)
	movss	.LC158(%rip), %xmm0
	cmpless	%xmm0, %xmm2
	movss	%xmm1, 64(%rsp)
	andps	%xmm2, %xmm0
	andnps	%xmm6, %xmm2
	orps	%xmm0, %xmm2
	call	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
	cmpb	$0, 62(%rsp)
	je	.L3897
	mulss	.LC161(%rip), %xmm6
	movss	.LC28(%rip), %xmm7
	xorl	%ecx, %ecx
	leaq	96(%rsp), %rbp
	leaq	80(%rsp), %rdi
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	64(%rsp), %xmm1
	movq	656(%rbx), %rcx
	movaps	%xmm1, %xmm2
	movss	%xmm7, 32(%rsp)
	movss	68(%rsp), %xmm0
	movl	%eax, %r9d
	subss	%xmm7, %xmm6
	movq	%rbp, %r8
	movq	%rdi, %rdx
	subss	%xmm6, %xmm2
	addss	%xmm6, %xmm1
	movss	%xmm2, 96(%rsp)
	movaps	%xmm0, %xmm2
	addss	%xmm6, %xmm0
	movss	%xmm1, 80(%rsp)
	subss	%xmm6, %xmm2
	movss	%xmm0, 84(%rsp)
	movss	%xmm2, 100(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	64(%rsp), %xmm1
	movq	656(%rbx), %rcx
	movaps	%xmm1, %xmm2
	movss	%xmm7, 32(%rsp)
	movss	68(%rsp), %xmm0
	addss	%xmm6, %xmm1
	subss	%xmm6, %xmm2
	movl	%eax, %r9d
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movss	%xmm1, 80(%rsp)
	movss	%xmm2, 96(%rsp)
	movaps	%xmm6, %xmm2
	addss	%xmm0, %xmm2
	subss	%xmm6, %xmm0
	movss	%xmm2, 100(%rsp)
	movss	%xmm0, 84(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
.L3897:
	movl	%esi, %eax
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	addq	$168, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3894:
	addl	$35, %ecx
	jmp	.L3895
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
	.def	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_:
.LFB612:
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
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	.seh_endprologue
	movq	%rcx, %rbp
	movq	%r8, %r12
	movq	%r9, %r13
	movq	GImGui(%rip), %rax
	movq	232(%rsp), %rsi
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L3901
	xorps	%xmm6, %xmm6
	movss	196(%rbx), %xmm3
	movss	4(%rdx), %xmm1
	movq	192(%rbx), %rax
	movss	192(%rbx), %xmm4
	addss	%xmm3, %xmm1
	movss	(%rdx), %xmm0
	movss	12(%rsi), %xmm2
	addss	%xmm4, %xmm0
	movq	%rax, 96(%rsp)
	ucomiss	%xmm6, %xmm2
	movss	%xmm1, 108(%rsp)
	movss	%xmm0, 104(%rsp)
	jbe	.L3903
	movss	.LC158(%rip), %xmm2
	addss	%xmm2, %xmm0
	addss	%xmm2, %xmm1
	movss	%xmm0, 104(%rsp)
	movss	%xmm1, 108(%rsp)
.L3903:
	subss	%xmm3, %xmm1
	leaq	80(%rsp), %r14
	leaq	96(%rsp), %rdi
	subss	%xmm4, %xmm0
	movq	%r14, %rcx
	movss	%xmm1, 84(%rsp)
	xorps	%xmm1, %xmm1
	movss	%xmm0, 80(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	xorl	%edx, %edx
	movq	%rdi, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	jne	.L3917
.L3901:
	movaps	112(%rsp), %xmm6
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
.L3917:
	movss	12(%rsi), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L3916
	movq	%rsi, %rcx
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	movq	656(%rbx), %rcx
	movss	.LC28(%rip), %xmm6
	leaq	8(%rdi), %r8
	movss	%xmm6, 48(%rsp)
	movq	%rdi, %rdx
	movl	%eax, %r9d
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movq	224(%rsp), %rcx
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	movss	108(%rsp), %xmm0
	movq	656(%rbx), %rcx
	subss	%xmm6, %xmm0
	movss	104(%rsp), %xmm1
	subss	%xmm6, %xmm1
	leaq	64(%rsp), %r8
	movl	%eax, 48(%rsp)
	movq	%r13, 40(%rsp)
	movq	%r12, 32(%rsp)
	movq	%r14, %r9
	movq	%rbp, %rdx
	movss	%xmm0, 84(%rsp)
	movss	100(%rsp), %xmm0
	addss	%xmm6, %xmm0
	movss	%xmm1, 80(%rsp)
	addss	96(%rsp), %xmm6
	movss	%xmm0, 68(%rsp)
	movss	%xmm6, 64(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	jmp	.L3901
	.p2align 4,,7
.L3916:
	movq	224(%rsp), %rcx
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	movq	656(%rbx), %rcx
	leaq	8(%rdi), %r9
	movl	%eax, 48(%rsp)
	movq	%r13, 40(%rsp)
	movq	%r12, 32(%rsp)
	movq	%rdi, %r8
	movq	%rbp, %rdx
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	jmp	.L3901
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8LogToTTYEi
	.def	_ZN5ImGui8LogToTTYEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8LogToTTYEi
_ZN5ImGui8LogToTTYEi:
.LFB614:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	cmpb	$0, 11432(%rbx)
	je	.L3922
.L3918:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L3922:
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
	js	.L3918
	movl	%ecx, 11460(%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC162:
	.ascii "g.LogFile != __null\0"
.LC163:
	.ascii "ab\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui9LogToFileEiPKc
	.def	_ZN5ImGui9LogToFileEiPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9LogToFileEiPKc
_ZN5ImGui9LogToFileEiPKc:
.LFB615:
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
	movl	%ecx, %esi
	movq	%rdx, %rcx
	cmpb	$0, 11432(%rbx)
	jne	.L3923
	testq	%rdx, %rdx
	movq	6008(%rbx), %rdi
	je	.L3935
.L3926:
	leaq	.LC163(%rip), %rdx
	call	_Z10ImFileOpenPKcS0_
	testq	%rax, %rax
	movq	%rax, 11440(%rbx)
	je	.L3936
	movl	244(%rdi), %eax
	testl	%esi, %esi
	movb	$1, 11432(%rbx)
	movl	%eax, 11456(%rbx)
	js	.L3923
	movl	%esi, 11460(%rbx)
.L3923:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L3935:
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.L3926
	jmp	.L3923
.L3936:
	leaq	.LC15(%rip), %rdx
	leaq	.LC162(%rip), %rcx
	movl	$5820, %r8d
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
.LFB616:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	cmpb	$0, 11432(%rax)
	jne	.L3937
	movq	6008(%rax), %rdx
	testl	%ecx, %ecx
	movb	$1, 11432(%rax)
	movq	$0, 11440(%rax)
	movl	244(%rdx), %edx
	movl	%edx, 11456(%rax)
	js	.L3937
	movl	%ecx, 11460(%rax)
.L3937:
	rep ret
	.seh_endproc
	.section .rdata,"dr"
.LC164:
	.ascii "\15\12\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui9LogFinishEv
	.def	_ZN5ImGui9LogFinishEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9LogFinishEv
_ZN5ImGui9LogFinishEv:
.LFB617:
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
	jne	.L3966
.L3941:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L3966:
	leaq	.LC164(%rip), %rcx
	call	_ZN5ImGui7LogTextEPKcz
	movq	11440(%rbx), %rsi
	movb	$0, 11432(%rbx)
	testq	%rsi, %rsi
	je	.L3944
	call	*__imp___iob_func(%rip)
	addq	$48, %rax
	movq	11440(%rbx), %rcx
	cmpq	%rax, %rsi
	je	.L3967
	call	fclose
.L3946:
	movq	$0, 11440(%rbx)
.L3944:
	movq	11448(%rbx), %rsi
	cmpl	$2, (%rsi)
	jle	.L3941
	movq	GImGui(%rip), %rcx
	movq	8(%rsi), %rdx
	movq	216(%rcx), %rax
	testq	%rax, %rax
	je	.L3947
	movq	224(%rcx), %rcx
	call	*%rax
	movq	11448(%rbx), %rsi
	movq	8(%rsi), %rdx
.L3947:
	testq	%rdx, %rdx
	je	.L3956
	movq	GImGui(%rip), %rax
	movl	$0, 4(%rsi)
	movq	%rdx, %rcx
	movl	$0, (%rsi)
	decl	844(%rax)
	call	*240(%rax)
	movq	$0, 8(%rsi)
.L3956:
	movslq	(%rsi), %rdx
	xorl	%eax, %eax
	cmpl	4(%rsi), %edx
	leal	1(%rdx), %r8d
	je	.L3968
.L3949:
	movl	%r8d, (%rsi)
	movb	$0, (%rax,%rdx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L3968:
	testl	%edx, %edx
	movl	$8, %eax
	je	.L3950
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L3950:
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	movl	%eax, %ebx
	xorl	%eax, %eax
	cmpl	%edx, %ebx
	jle	.L3949
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rsi), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L3951
	movslq	(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	8(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3953
	decl	844(%rax)
.L3953:
	call	*240(%rax)
	movslq	(%rsi), %rdx
	movq	%rdi, 8(%rsi)
	movq	%rdi, %rax
	movl	%ebx, 4(%rsi)
	leal	1(%rdx), %r8d
	jmp	.L3949
	.p2align 4,,7
.L3967:
	call	fflush
	jmp	.L3946
	.p2align 4,,7
.L3951:
	movq	GImGui(%rip), %rax
	jmp	.L3953
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui21TreeAdvanceToLabelPosEv
	.def	_ZN5ImGui21TreeAdvanceToLabelPosEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21TreeAdvanceToLabelPosEv
_ZN5ImGui21TreeAdvanceToLabelPosEv:
.LFB633:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	5156(%rax), %xmm0
	movq	6008(%rax), %rdx
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
.LFB634:
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
.LFB635:
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
.LFB636:
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
	movq	6008(%rax), %rbx
	movb	$1, 138(%rbx)
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movslq	496(%rbx), %rdx
	movl	%eax, %edi
	cmpl	500(%rbx), %edx
	je	.L3975
	movq	504(%rbx), %rax
	leal	1(%rdx), %r8d
.L3976:
	movl	%r8d, 496(%rbx)
	movl	%edi, (%rax,%rdx,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3975:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L3985
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L3978
.L3986:
	movq	504(%rbx), %rax
	jmp	.L3976
	.p2align 4,,7
.L3985:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jle	.L3986
.L3978:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L3979
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3981
	decl	844(%rax)
.L3981:
	call	*240(%rax)
	movslq	496(%rbx), %rdx
	movq	%rbp, 504(%rbx)
	movq	%rbp, %rax
	movl	%esi, 500(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L3976
	.p2align 4,,7
.L3979:
	movq	GImGui(%rip), %rax
	jmp	.L3981
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6PushIDEPKcS1_
	.def	_ZN5ImGui6PushIDEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6PushIDEPKcS1_
_ZN5ImGui6PushIDEPKcS1_:
.LFB637:
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
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	6008(%rax), %rbx
	movslq	496(%rbx), %rax
	movb	$1, 138(%rbx)
	testl	%eax, %eax
	jle	.L4002
.L3988:
	movq	504(%rbx), %rdx
	movq	%rdi, %rcx
	movl	-4(%rdx,%rax,4), %r8d
	movl	%esi, %eax
	movl	$0, %edx
	subl	%edi, %eax
	testq	%rsi, %rsi
	cmovne	%eax, %edx
	call	_Z6ImHashPKvij
	movl	%eax, %edi
	movq	GImGui(%rip), %rax
	cmpl	6068(%rax), %edi
	jne	.L3990
	movb	$1, 6076(%rax)
.L3990:
	movslq	496(%rbx), %rdx
	cmpl	500(%rbx), %edx
	je	.L3991
	movq	504(%rbx), %rax
	leal	1(%rdx), %r8d
.L3992:
	movl	%r8d, 496(%rbx)
	movl	%edi, (%rax,%rdx,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L3991:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %ecx
	jne	.L4003
	cmpl	%ecx, %r8d
	movl	%ecx, %esi
	cmovge	%r8d, %esi
	cmpl	%edx, %esi
	jg	.L3994
.L4004:
	movq	504(%rbx), %rax
	jmp	.L3992
	.p2align 4,,7
.L4003:
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
	addl	%edx, %ecx
	cmpl	%ecx, %r8d
	movl	%ecx, %esi
	cmovge	%r8d, %esi
	cmpl	%edx, %esi
	jle	.L4004
.L3994:
	incl	844(%rax)
	movslq	%esi, %rcx
	salq	$2, %rcx
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L3995
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L3997
	decl	844(%rax)
.L3997:
	call	*240(%rax)
	movslq	496(%rbx), %rdx
	movq	%rbp, 504(%rbx)
	movq	%rbp, %rax
	movl	%esi, 500(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L3992
	.p2align 4,,7
.L4002:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	496(%rbx), %rax
	jmp	.L3988
	.p2align 4,,7
.L3995:
	movq	GImGui(%rip), %rax
	jmp	.L3997
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6PushIDEPKv
	.def	_ZN5ImGui6PushIDEPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6PushIDEPKv
_ZN5ImGui6PushIDEPKv:
.LFB638:
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
	movq	6008(%rax), %rbx
	movb	$1, 138(%rbx)
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKv
	movslq	496(%rbx), %rdx
	movl	%eax, %edi
	cmpl	500(%rbx), %edx
	je	.L4006
	movq	504(%rbx), %rax
	leal	1(%rdx), %r8d
.L4007:
	movl	%r8d, 496(%rbx)
	movl	%edi, (%rax,%rdx,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L4006:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L4016
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L4009
.L4017:
	movq	504(%rbx), %rax
	jmp	.L4007
	.p2align 4,,7
.L4016:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jle	.L4017
.L4009:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L4010
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4012
	decl	844(%rax)
.L4012:
	call	*240(%rax)
	movslq	496(%rbx), %rdx
	movq	%rbp, 504(%rbx)
	movq	%rbp, %rax
	movl	%esi, 500(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L4007
	.p2align 4,,7
.L4010:
	movq	GImGui(%rip), %rax
	jmp	.L4012
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6PushIDEi
	.def	_ZN5ImGui6PushIDEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6PushIDEi
_ZN5ImGui6PushIDEi:
.LFB639:
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
	movslq	%ecx, %rdx
	movq	6008(%rax), %rbx
	movb	$1, 138(%rbx)
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKv
	movslq	496(%rbx), %rdx
	movl	%eax, %edi
	cmpl	500(%rbx), %edx
	je	.L4019
	movq	504(%rbx), %rax
	leal	1(%rdx), %r8d
.L4020:
	movl	%r8d, 496(%rbx)
	movl	%edi, (%rax,%rdx,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L4019:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L4029
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jg	.L4022
.L4030:
	movq	504(%rbx), %rax
	jmp	.L4020
	.p2align 4,,7
.L4029:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %esi
	jle	.L4030
.L4022:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L4023
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4025
	decl	844(%rax)
.L4025:
	call	*240(%rax)
	movslq	496(%rbx), %rdx
	movq	%rbp, 504(%rbx)
	movq	%rbp, %rax
	movl	%esi, 500(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L4020
	.p2align 4,,7
.L4023:
	movq	GImGui(%rip), %rax
	jmp	.L4025
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5PopIDEv
	.def	_ZN5ImGui5PopIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5PopIDEv
_ZN5ImGui5PopIDEv:
.LFB640:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movl	496(%rbx), %eax
	movb	$1, 138(%rbx)
	testl	%eax, %eax
	jle	.L4033
	decl	%eax
	movl	%eax, 496(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L4033:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %eax
	decl	%eax
	movl	%eax, 496(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC165:
	.ascii "#image\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_
	.def	_ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_
_ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_:
.LFB613:
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
	subq	$192, %rsp
	.seh_stackalloc	192
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	movaps	%xmm8, 160(%rsp)
	.seh_savexmm	%xmm8, 160
	movaps	%xmm9, 176(%rsp)
	.seh_savexmm	%xmm9, 176
	.seh_endprologue
	movq	%rcx, %rbp
	movq	%rdx, %rdi
	movq	%r8, %r12
	movq	GImGui(%rip), %rsi
	movq	%r9, %r13
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L4035
.L4039:
	xorl	%eax, %eax
.L4036:
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	movaps	160(%rsp), %xmm8
	movaps	176(%rsp), %xmm9
	addq	$192, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L4035:
	call	_ZN5ImGui6PushIDEPKv
	leaq	.LC165(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movl	%eax, 76(%rsp)
	call	_ZN5ImGui5PopIDEv
	movl	288(%rsp), %eax
	testl	%eax, %eax
	js	.L4037
	cvtsi2ss	288(%rsp), %xmm6
	movaps	%xmm6, %xmm7
.L4038:
	movss	196(%rbx), %xmm4
	movaps	%xmm7, %xmm0
	movaps	%xmm4, %xmm1
	movq	192(%rbx), %rax
	movss	4(%rdi), %xmm2
	addss	%xmm7, %xmm0
	addss	%xmm2, %xmm1
	movss	192(%rbx), %xmm5
	movaps	%xmm5, %xmm8
	leaq	80(%rsp), %r14
	movss	(%rdi), %xmm3
	leaq	96(%rsp), %rdi
	addss	%xmm3, %xmm8
	movaps	%xmm6, %xmm9
	addss	%xmm1, %xmm0
	movaps	%xmm6, %xmm1
	addss	%xmm5, %xmm9
	movq	%r14, %rcx
	movq	%rax, 96(%rsp)
	addss	%xmm6, %xmm1
	movss	%xmm0, 108(%rsp)
	subss	%xmm4, %xmm0
	addss	%xmm9, %xmm3
	movss	%xmm9, 112(%rsp)
	addss	%xmm8, %xmm1
	movaps	%xmm4, %xmm8
	addss	%xmm7, %xmm8
	movss	%xmm0, 84(%rsp)
	movss	%xmm3, 120(%rsp)
	movss	%xmm1, 104(%rsp)
	subss	%xmm5, %xmm1
	addss	%xmm8, %xmm2
	movss	%xmm8, 116(%rsp)
	movss	%xmm1, 80(%rsp)
	xorps	%xmm1, %xmm1
	movss	%xmm2, 124(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	76(%rsp), %rdx
	movq	%rdi, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L4039
	movl	76(%rsp), %edx
	leaq	75(%rsp), %r8
	movq	%rdi, %rcx
	movl	$0, 32(%rsp)
	movq	%r14, %r9
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 75(%rsp)
	movl	%eax, %edi
	movl	$22, %ecx
	je	.L4040
	cmpb	$1, 80(%rsp)
	sbbl	%ecx, %ecx
	addl	$24, %ecx
.L4040:
	minss	%xmm7, %xmm6
	xorps	%xmm7, %xmm7
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	5164(%rsi), %xmm0
	movl	%eax, %r8d
	ucomiss	%xmm6, %xmm7
	ja	.L4048
	minss	%xmm6, %xmm0
.L4042:
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rcx
	movss	%xmm0, 32(%rsp)
	movl	$1, %r9d
	leaq	112(%rsp), %rsi
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movq	296(%rsp), %rax
	movss	12(%rax), %xmm0
	ucomiss	%xmm7, %xmm0
	jbe	.L4043
	movq	%rax, %rcx
	leaq	112(%rsp), %rsi
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	movq	656(%rbx), %rcx
	leaq	120(%rsp), %r8
	movl	%eax, %r9d
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	movq	%rsi, %rdx
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
.L4043:
	movq	304(%rsp), %rcx
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	movq	656(%rbx), %rcx
	leaq	8(%rsi), %r9
	movl	%eax, 48(%rsp)
	movq	%r13, 40(%rsp)
	movq	%r12, 32(%rsp)
	movq	%rsi, %r8
	movq	%rbp, %rdx
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	movl	%edi, %eax
	jmp	.L4036
	.p2align 4,,7
.L4037:
	movss	5156(%rsi), %xmm6
	movss	5160(%rsi), %xmm7
	jmp	.L4038
	.p2align 4,,7
.L4048:
	movaps	%xmm7, %xmm0
	jmp	.L4042
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5GetIDEPKc
	.def	_ZN5ImGui5GetIDEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5GetIDEPKc
_ZN5ImGui5GetIDEPKc:
.LFB641:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rcx, %rdx
	movq	6008(%rax), %rcx
	jmp	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5GetIDEPKcS1_
	.def	_ZN5ImGui5GetIDEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5GetIDEPKcS1_
_ZN5ImGui5GetIDEPKcS1_:
.LFB642:
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
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movq	6008(%rax), %rsi
	movslq	496(%rsi), %rax
	testl	%eax, %eax
	jle	.L4059
.L4055:
	movq	504(%rsi), %rdx
	movq	%rdi, %rcx
	movl	-4(%rdx,%rax,4), %r8d
	movl	%ebx, %eax
	movl	$0, %edx
	subl	%edi, %eax
	testq	%rbx, %rbx
	cmovne	%eax, %edx
	call	_Z6ImHashPKvij
	movq	GImGui(%rip), %rdx
	cmpl	6068(%rdx), %eax
	jne	.L4057
	movb	$1, 6076(%rdx)
.L4057:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L4059:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	496(%rsi), %rax
	jmp	.L4055
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5GetIDEPKv
	.def	_ZN5ImGui5GetIDEPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5GetIDEPKv
_ZN5ImGui5GetIDEPKv:
.LFB643:
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
.LFB644:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L4061
	movss	5160(%rbx), %xmm1
	leaq	48(%rsp), %rsi
	addss	%xmm1, %xmm1
	movss	5944(%rbx), %xmm0
	movss	224(%rax), %xmm6
	movq	%rsi, %rcx
	movss	196(%rax), %xmm2
	movss	192(%rax), %xmm3
	movq	192(%rax), %rax
	addss	%xmm0, %xmm1
	movq	%rax, 64(%rsp)
	minss	%xmm1, %xmm6
	movaps	%xmm0, %xmm1
	cmpless	%xmm6, %xmm1
	andps	%xmm1, %xmm6
	andnps	%xmm0, %xmm1
	addss	%xmm3, %xmm0
	orps	%xmm1, %xmm6
	movss	%xmm0, 72(%rsp)
	subss	%xmm3, %xmm0
	movaps	%xmm6, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm0, 48(%rsp)
	movss	%xmm1, 76(%rsp)
	subss	%xmm2, %xmm1
	movss	%xmm1, 52(%rsp)
	xorps	%xmm1, %xmm1
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	jne	.L4068
.L4067:
	movss	5156(%rbx), %xmm0
	addss	%xmm0, %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	nop
.L4061:
	movaps	80(%rsp), %xmm6
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L4068:
	movss	.LC29(%rip), %xmm0
	movq	GImGui(%rip), %r10
	mulss	%xmm0, %xmm6
	xorl	%ecx, %ecx
	mulss	5944(%rbx), %xmm0
	movq	6008(%r10), %r8
	addss	68(%rsp), %xmm6
	addss	5156(%rbx), %xmm0
	movss	%xmm6, 52(%rsp)
	addss	64(%rsp), %xmm0
	movss	%xmm0, 48(%rsp)
	movb	$1, 138(%r8)
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	.LC55(%rip), %xmm2
	movl	%eax, %r9d
	mulss	5944(%r10), %xmm2
	movq	656(%r8), %rcx
	movq	%rsi, %rdx
	movl	$8, 32(%rsp)
	call	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
	jmp	.L4067
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11BulletTextVEPKcPc
	.def	_ZN5ImGui11BulletTextVEPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11BulletTextVEPKcPc
_ZN5ImGui11BulletTextVEPKcPc:
.LFB645:
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
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L4094
.L4069:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L4094:
	leaq	11960(%rsi), %rbp
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	$3073, %edx
	movq	%rbp, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L4083
	cmpl	$3072, %eax
	movslq	%eax, %rdi
	jg	.L4083
.L4071:
	addq	%rbp, %rdi
	movss	.LC20(%rip), %xmm3
	xorl	%r8d, %r8d
	movb	$0, (%rdi)
	movq	%rdi, %rdx
	movq	%rbp, %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	5160(%rsi), %xmm6
	movl	%eax, 44(%rsp)
	addss	%xmm6, %xmm6
	movss	228(%rbx), %xmm7
	xorps	%xmm4, %xmm4
	shrq	$32, %rax
	movss	5944(%rsi), %xmm1
	movaps	%xmm7, %xmm0
	movss	44(%rsp), %xmm2
	addss	%xmm1, %xmm6
	movl	%eax, 44(%rsp)
	cmpnless	%xmm4, %xmm0
	ucomiss	%xmm4, %xmm2
	andps	%xmm0, %xmm7
	movss	224(%rbx), %xmm0
	minss	%xmm6, %xmm0
	movaps	%xmm0, %xmm6
	movaps	%xmm1, %xmm0
	cmpless	%xmm6, %xmm0
	andps	%xmm0, %xmm6
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm6
	movss	44(%rsp), %xmm0
	movaps	%xmm0, %xmm3
	cmpnless	%xmm6, %xmm3
	andps	%xmm3, %xmm0
	andnps	%xmm6, %xmm3
	orps	%xmm3, %xmm0
	jbe	.L4093
	movss	5156(%rsi), %xmm3
	addss	%xmm3, %xmm3
	addss	%xmm3, %xmm2
.L4080:
	addss	%xmm2, %xmm1
	movss	192(%rbx), %xmm4
	movss	196(%rbx), %xmm3
	movq	192(%rbx), %rax
	addss	%xmm3, %xmm0
	leaq	64(%rsp), %rcx
	addss	%xmm4, %xmm1
	movq	%rax, 80(%rsp)
	movss	%xmm0, 92(%rsp)
	subss	%xmm3, %xmm0
	movss	%xmm1, 88(%rsp)
	subss	%xmm4, %xmm1
	movss	%xmm0, 68(%rsp)
	movss	%xmm1, 64(%rsp)
	xorps	%xmm1, %xmm1
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	80(%rsp), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L4069
	movss	.LC29(%rip), %xmm0
	mulss	%xmm0, %xmm6
	mulss	5944(%rsi), %xmm0
	addss	84(%rsp), %xmm6
	addss	5156(%rsi), %xmm0
	movss	%xmm6, 48(%rsp)
	movq	48(%rsp), %rax
	addss	80(%rsp), %xmm0
	salq	$32, %rax
	movss	%xmm0, 44(%rsp)
	movl	44(%rsp), %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui12RenderBulletE6ImVec2
	movss	5156(%rsi), %xmm0
	addss	84(%rsp), %xmm7
	addss	%xmm0, %xmm0
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	movq	%rbp, %rdx
	addss	5944(%rsi), %xmm0
	movss	%xmm7, 48(%rsp)
	movq	48(%rsp), %rax
	salq	$32, %rax
	addss	80(%rsp), %xmm0
	movss	%xmm0, 44(%rsp)
	movl	44(%rsp), %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L4069
	.p2align 4,,7
.L4083:
	movl	$3072, %edi
	jmp	.L4071
	.p2align 4,,7
.L4093:
	movaps	%xmm4, %xmm2
	jmp	.L4080
	.seh_endproc
	.section .rdata,"dr"
.LC166:
	.ascii "Callback %p, user_data %p\0"
	.text
	.p2align 4,,15
	.def	_ZN5ImGui10BulletTextEPKcz.constprop.144;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10BulletTextEPKcz.constprop.144
_ZN5ImGui10BulletTextEPKcz.constprop.144:
.LFB6194:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	.LC166(%rip), %rcx
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
	.globl	_ZN5ImGui10BulletTextEPKcz
	.def	_ZN5ImGui10BulletTextEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10BulletTextEPKcz
_ZN5ImGui10BulletTextEPKcz:
.LFB646:
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
.LFB652:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%edx, %ebx
	jmp	.L4103
	.p2align 4,,7
.L4108:
	movzbl	1(%rax), %edx
	cmpb	$37, %dl
	jne	.L4107
	leaq	2(%rax), %rcx
.L4103:
	movl	$37, %edx
	call	strchr
	testq	%rax, %rax
	jne	.L4108
.L4099:
	movl	%ebx, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L4107:
	leal	-48(%rdx), %ecx
	incq	%rax
	cmpb	$9, %cl
	ja	.L4101
	.p2align 4,,7
.L4104:
	incq	%rax
	movzbl	(%rax), %edx
	leal	-48(%rdx), %ecx
	cmpb	$9, %cl
	jbe	.L4104
.L4101:
	cmpb	$46, %dl
	jne	.L4099
	leaq	1(%rax), %rcx
	call	atoi
	cmpl	$10, %eax
	cmovbe	%eax, %ebx
	jmp	.L4099
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11RoundScalarEfi
	.def	_ZN5ImGui11RoundScalarEfi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11RoundScalarEfi
_ZN5ImGui11RoundScalarEfi:
.LFB653:
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
	ja	.L4110
	leaq	_ZZN5ImGui11RoundScalarEfiE9min_steps(%rip), %rax
	movslq	%edx, %rdx
	movss	(%rax,%rdx,4), %xmm7
.L4111:
	movss	.LC81(%rip), %xmm6
	movaps	%xmm7, %xmm1
	andps	%xmm8, %xmm6
	movaps	%xmm6, %xmm0
	call	fmodf
	movss	.LC29(%rip), %xmm1
	mulss	%xmm7, %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L4120
	subss	%xmm0, %xmm6
	xorps	%xmm0, %xmm0
	ucomiss	%xmm8, %xmm0
	ja	.L4122
.L4121:
	movaps	%xmm6, %xmm0
.L4115:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$88, %rsp
	ret
	.p2align 4,,7
.L4120:
	subss	%xmm0, %xmm7
	xorps	%xmm0, %xmm0
	ucomiss	%xmm8, %xmm0
	addss	%xmm7, %xmm6
	jbe	.L4121
.L4122:
	movss	.LC168(%rip), %xmm0
	xorps	%xmm6, %xmm0
	jmp	.L4115
	.p2align 4,,7
.L4110:
	negl	%edx
	movlpd	.LC167(%rip), %xmm0
	cvtsi2ss	%edx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	call	pow
	cvtsd2ss	%xmm0, %xmm7
	jmp	.L4111
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii
	.def	_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii
_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii:
.LFB655:
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
	movl	$1, %r15d
	movq	%rcx, %rbx
	movl	$7, %ecx
	movl	%edx, %r12d
	movq	GImGui(%rip), %rsi
	movaps	%xmm3, %xmm8
	movq	%r8, %r14
	movss	376(%rsp), %xmm13
	movss	368(%rsp), %xmm7
	movl	384(%rsp), %r13d
	movq	6008(%rsi), %rbp
	movb	$1, 138(%rbp)
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	5164(%rsi), %xmm0
	movq	8(%rbx), %rdx
	movq	(%rbx), %rcx
	movss	%xmm0, 32(%rsp)
	movl	%eax, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movss	.LC169(%rip), %xmm3
	ucomiss	%xmm13, %xmm3
	ja	.L4124
	ucomiss	.LC170(%rip), %xmm13
	seta	%r15b
.L4124:
	movl	392(%rsp), %edi
	andl	$1, %edi
	jne	.L4125
	movss	8(%rbx), %xmm0
	testl	%r13d, %r13d
	movaps	%xmm0, %xmm2
	movss	12(%rbx), %xmm6
	movss	5208(%rsi), %xmm15
	subss	(%rbx), %xmm2
	subss	.LC34(%rip), %xmm2
	jle	.L4231
.L4228:
	minss	%xmm2, %xmm15
	movss	.LC29(%rip), %xmm11
	movss	.LC158(%rip), %xmm9
	testl	%edi, %edi
	movaps	%xmm9, %xmm1
	mulss	%xmm15, %xmm11
	jne	.L4136
	addss	(%rbx), %xmm1
	movaps	%xmm0, %xmm6
	addss	%xmm11, %xmm1
	movaps	%xmm1, %xmm12
.L4137:
	movaps	%xmm8, %xmm0
	xorps	%xmm14, %xmm14
	subss	%xmm9, %xmm6
	mulss	%xmm7, %xmm0
	subss	%xmm11, %xmm6
	ucomiss	%xmm0, %xmm14
	ja	.L4232
	movaps	%xmm8, %xmm0
	movss	.LC28(%rip), %xmm10
	cmpltss	%xmm14, %xmm0
	andps	%xmm0, %xmm10
.L4140:
	cmpl	%r12d, 6068(%rsi)
	je	.L4233
.L4229:
	movss	(%r14), %xmm2
	xorl	%r13d, %r13d
.L4143:
	ucomiss	%xmm7, %xmm8
	jp	.L4210
	movaps	%xmm14, %xmm1
	je	.L4161
.L4210:
	ucomiss	%xmm13, %xmm3
	movl	$1, %eax
	jbe	.L4234
	ucomiss	%xmm8, %xmm7
	jbe	.L4225
.L4239:
	ucomiss	%xmm2, %xmm8
	ja	.L4192
	movaps	%xmm7, %xmm5
	minss	%xmm2, %xmm5
	movaps	%xmm5, %xmm2
.L4166:
	testb	%al, %al
	je	.L4169
.L4238:
	ucomiss	%xmm2, %xmm14
	ja	.L4235
	ucomiss	%xmm8, %xmm14
	jnb	.L4174
	movaps	%xmm8, %xmm4
	subss	%xmm8, %xmm2
	cmpless	%xmm14, %xmm4
	movaps	%xmm4, %xmm14
	andnps	%xmm8, %xmm14
.L4174:
	subss	%xmm14, %xmm7
	movss	.LC28(%rip), %xmm8
	movaps	%xmm8, %xmm1
	divss	%xmm13, %xmm1
	divss	%xmm7, %xmm2
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm0
	call	pow
	cvtsd2ss	%xmm0, %xmm0
	movaps	%xmm8, %xmm1
	subss	%xmm10, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm10, %xmm1
.L4161:
	testl	%edi, %edi
	je	.L4176
	movss	.LC28(%rip), %xmm0
	subss	%xmm12, %xmm6
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	8(%rbx), %xmm0
	mulss	%xmm6, %xmm1
	subss	%xmm9, %xmm0
	addss	(%rbx), %xmm9
	addss	%xmm12, %xmm1
	movss	%xmm0, 88(%rsp)
	movss	%xmm9, 80(%rsp)
	movaps	%xmm1, %xmm2
	addss	%xmm11, %xmm1
	subss	%xmm11, %xmm2
	movss	%xmm1, 92(%rsp)
	movss	%xmm2, 84(%rsp)
.L4178:
	xorl	%ecx, %ecx
	cmpl	6068(%rsi), %r12d
	movss	5212(%rsi), %xmm5
	sete	%cl
	addl	$20, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	leaq	80(%rsp), %rdx
	movq	656(%rbp), %rcx
	movss	%xmm5, 32(%rsp)
	movl	%eax, %r9d
	movl	$-1, 40(%rsp)
	leaq	8(%rdx), %r8
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	nop
	movaps	96(%rsp), %xmm6
	movl	%r13d, %eax
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
	.p2align 4,,7
.L4136:
	addss	4(%rbx), %xmm1
	addss	%xmm11, %xmm1
	movaps	%xmm1, %xmm12
	jmp	.L4137
	.p2align 4,,7
.L4125:
	movss	12(%rbx), %xmm6
	testl	%r13d, %r13d
	movaps	%xmm6, %xmm2
	movss	8(%rbx), %xmm0
	subss	4(%rbx), %xmm2
	movss	5208(%rsi), %xmm15
	subss	.LC34(%rip), %xmm2
	jg	.L4228
.L4231:
	ucomiss	%xmm8, %xmm7
	ja	.L4236
	movaps	%xmm8, %xmm1
	subss	%xmm7, %xmm1
	addss	.LC28(%rip), %xmm1
.L4132:
	movaps	%xmm2, %xmm4
	divss	%xmm1, %xmm4
	movaps	%xmm15, %xmm1
	cmpnless	%xmm4, %xmm1
	andps	%xmm1, %xmm15
	andnps	%xmm4, %xmm1
	orps	%xmm1, %xmm15
	jmp	.L4228
	.p2align 4,,7
.L4176:
	subss	%xmm12, %xmm6
	movss	12(%rbx), %xmm0
	subss	%xmm9, %xmm0
	addss	4(%rbx), %xmm9
	mulss	%xmm6, %xmm1
	movss	%xmm0, 92(%rsp)
	addss	%xmm12, %xmm1
	movss	%xmm9, 84(%rsp)
	movaps	%xmm1, %xmm2
	addss	%xmm11, %xmm1
	subss	%xmm11, %xmm2
	movss	%xmm1, 88(%rsp)
	movss	%xmm2, 80(%rsp)
	jmp	.L4178
	.p2align 4,,7
.L4225:
	ucomiss	%xmm2, %xmm7
	jbe	.L4237
	testb	%al, %al
	movaps	%xmm7, %xmm2
	jne	.L4238
.L4169:
	subss	%xmm8, %xmm2
	subss	%xmm8, %xmm7
	movaps	%xmm2, %xmm1
	divss	%xmm7, %xmm1
	jmp	.L4161
	.p2align 4,,7
.L4234:
	ucomiss	.LC170(%rip), %xmm13
	seta	%al
	ucomiss	%xmm8, %xmm7
	jbe	.L4225
	jmp	.L4239
	.p2align 4,,7
.L4233:
	cmpb	$0, 272(%rsi)
	je	.L4144
	testl	%edi, %edi
	subss	%xmm15, %xmm2
	movss	264(%rsi), %xmm1
	movss	268(%rsi), %xmm0
	jne	.L4240
	ucomiss	%xmm14, %xmm2
	ja	.L4241
.L4199:
	movaps	%xmm14, %xmm0
.L4149:
	testb	%r15b, %r15b
	je	.L4150
	ucomiss	%xmm0, %xmm10
	ja	.L4242
	movaps	%xmm10, %xmm1
	movss	.LC28(%rip), %xmm2
	movss	.LC81(%rip), %xmm4
	subss	%xmm2, %xmm1
	andps	%xmm4, %xmm1
	ucomiss	.LC171(%rip), %xmm1
	jbe	.L4156
	subss	%xmm10, %xmm0
	subss	%xmm10, %xmm2
	divss	%xmm2, %xmm0
.L4156:
	cvtss2sd	%xmm13, %xmm1
	cvtss2sd	%xmm0, %xmm0
	movss	%xmm3, 60(%rsp)
	call	pow
	cvtsd2ss	%xmm0, %xmm2
	movaps	%xmm14, %xmm0
	movss	60(%rsp), %xmm3
	cmpless	%xmm8, %xmm0
	movaps	%xmm0, %xmm1
	movaps	%xmm7, %xmm0
	andps	%xmm8, %xmm1
	subss	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	jmp	.L4155
	.p2align 4,,7
.L4192:
	movaps	%xmm8, %xmm2
	jmp	.L4166
	.p2align 4,,7
.L4237:
	movaps	%xmm8, %xmm4
	minss	%xmm2, %xmm4
	movaps	%xmm4, %xmm2
	jmp	.L4166
	.p2align 4,,7
.L4144:
	movq	GImGui(%rip), %rax
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	jmp	.L4229
	.p2align 4,,7
.L4236:
	movaps	%xmm7, %xmm1
	subss	%xmm8, %xmm1
	addss	.LC28(%rip), %xmm1
	jmp	.L4132
	.p2align 4,,7
.L4232:
	movss	.LC28(%rip), %xmm1
	movss	.LC81(%rip), %xmm10
	divss	%xmm13, %xmm1
	movaps	%xmm14, %xmm0
	movss	%xmm3, 76(%rsp)
	subss	%xmm8, %xmm0
	movss	%xmm2, 72(%rsp)
	andps	%xmm10, %xmm0
	andps	%xmm7, %xmm10
	cvtss2sd	%xmm1, %xmm4
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm4, %xmm1
	movsd	%xmm4, 64(%rsp)
	call	pow
	cvtsd2ss	%xmm0, %xmm5
	movlpd	64(%rsp), %xmm4
	cvtss2sd	%xmm10, %xmm0
	movsd	%xmm4, %xmm1
	movss	%xmm5, 60(%rsp)
	call	pow
	cvtsd2ss	%xmm0, %xmm0
	movss	60(%rsp), %xmm5
	addss	%xmm5, %xmm0
	movss	72(%rsp), %xmm2
	movss	76(%rsp), %xmm3
	divss	%xmm0, %xmm5
	movaps	%xmm5, %xmm10
	jmp	.L4140
	.p2align 4,,7
.L4235:
	minss	%xmm7, %xmm14
	movss	.LC28(%rip), %xmm7
	subss	%xmm8, %xmm2
	movaps	%xmm7, %xmm1
	movaps	%xmm7, %xmm0
	divss	%xmm13, %xmm1
	subss	%xmm8, %xmm14
	divss	%xmm14, %xmm2
	cvtss2sd	%xmm1, %xmm1
	subss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	pow
	cvtsd2ss	%xmm0, %xmm0
	subss	%xmm0, %xmm7
	mulss	%xmm10, %xmm7
	movaps	%xmm7, %xmm1
	jmp	.L4161
	.p2align 4,,7
.L4240:
	ucomiss	%xmm14, %xmm2
	jbe	.L4198
	subss	%xmm12, %xmm0
	divss	%xmm2, %xmm0
	ucomiss	%xmm0, %xmm14
	ja	.L4198
.L4182:
	movss	.LC28(%rip), %xmm1
	testl	%edi, %edi
	movaps	%xmm1, %xmm2
	cmpnltss	%xmm0, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm1, %xmm2
	orps	%xmm2, %xmm0
	je	.L4149
.L4180:
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	jmp	.L4149
	.p2align 4,,7
.L4150:
	movaps	%xmm7, %xmm1
	subss	%xmm8, %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm8, %xmm0
.L4155:
	movl	%r13d, %edx
	movss	%xmm3, 60(%rsp)
	call	_ZN5ImGui11RoundScalarEfi
	movss	(%r14), %xmm2
	ucomiss	%xmm2, %xmm0
	movss	60(%rsp), %xmm3
	jp	.L4209
	je	.L4224
.L4209:
	movss	%xmm0, (%r14)
	movaps	%xmm0, %xmm2
	movl	$1, %r13d
	jmp	.L4143
	.p2align 4,,7
.L4224:
	xorl	%r13d, %r13d
	jmp	.L4143
	.p2align 4,,7
.L4241:
	subss	%xmm12, %xmm1
	movaps	%xmm1, %xmm0
	divss	%xmm2, %xmm0
	ucomiss	%xmm0, %xmm14
	ja	.L4199
	jmp	.L4182
	.p2align 4,,7
.L4242:
	movaps	%xmm0, %xmm1
	movss	%xmm3, 60(%rsp)
	movss	.LC28(%rip), %xmm0
	divss	%xmm10, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm13, %xmm1
	cvtss2sd	%xmm0, %xmm0
	call	pow
	cvtsd2ss	%xmm0, %xmm2
	movaps	%xmm7, %xmm0
	movss	60(%rsp), %xmm3
	cmpltss	%xmm14, %xmm0
	movaps	%xmm0, %xmm1
	movaps	%xmm8, %xmm0
	andps	%xmm7, %xmm1
	subss	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	jmp	.L4155
.L4198:
	movaps	%xmm14, %xmm0
	movss	.LC28(%rip), %xmm1
	jmp	.L4180
	.seh_endproc
	.section .rdata,"dr"
.LC172:
	.ascii "%.3f\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f
	.def	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f
_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f:
.LFB657:
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
	movaps	%xmm6, 224(%rsp)
	.seh_savexmm	%xmm6, 224
	movaps	%xmm7, 240(%rsp)
	.seh_savexmm	%xmm7, 240
	movaps	%xmm8, 256(%rsp)
	.seh_savexmm	%xmm8, 256
	.seh_endprologue
	movq	%rcx, %rbp
	movq	%rdx, %rdi
	movq	%r8, %r12
	movq	GImGui(%rip), %rsi
	movaps	%xmm3, %xmm7
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L4244
.L4248:
	xorl	%eax, %eax
.L4268:
	movaps	224(%rsp), %xmm6
	movaps	240(%rsp), %xmm7
	movaps	256(%rsp), %xmm8
	addq	$272, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L4244:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rbp, %rcx
	xorps	%xmm8, %xmm8
	movl	%eax, 108(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movss	4(%rdi), %xmm0
	movl	%eax, 72(%rsp)
	movss	192(%rbx), %xmm2
	addss	196(%rbx), %xmm0
	addss	(%rdi), %xmm2
	movss	72(%rsp), %xmm6
	ucomiss	%xmm8, %xmm6
	movq	192(%rbx), %rax
	movaps	%xmm8, %xmm3
	movq	%rax, 144(%rsp)
	movss	%xmm0, 156(%rsp)
	movss	%xmm2, 152(%rsp)
	jbe	.L4246
	movss	5176(%rsi), %xmm3
	addss	%xmm6, %xmm3
.L4246:
	addss	%xmm3, %xmm2
	leaq	160(%rsp), %r13
	leaq	144(%rsp), %rdi
	addss	%xmm8, %xmm0
	movss	5160(%rsi), %xmm1
	movq	%r13, %rcx
	subss	144(%rsp), %xmm2
	subss	148(%rsp), %xmm0
	movss	%xmm2, 160(%rsp)
	movss	%xmm0, 164(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	108(%rsp), %rdx
	movq	%rdi, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L4248
	movl	108(%rsp), %r14d
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	movl	%r14d, %edx
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	je	.L4249
	cmpq	$0, 376(%rsp)
	movq	GImGui(%rip), %rax
	movl	%r14d, 6056(%rax)
	movb	$0, 6060(%rax)
	je	.L4275
	movq	376(%rsp), %rcx
	movl	$3, %edx
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
.L4257:
	cmpb	$0, 876(%rsi)
	je	.L4252
	movl	108(%rsp), %ecx
	movq	GImGui(%rip), %rdx
	testl	%ecx, %ecx
	movl	%ecx, 6068(%rdx)
	movb	$0, 6078(%rdx)
	movb	$1, 6077(%rdx)
	je	.L4253
	movb	$1, 6076(%rdx)
.L4253:
	movq	%rbx, 6088(%rdx)
	movq	%rbx, %rcx
	movl	%eax, 72(%rsp)
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	72(%rsp), %eax
	jmp	.L4252
	.p2align 4,,7
.L4249:
	cmpq	$0, 376(%rsp)
	je	.L4276
	movq	376(%rsp), %rcx
	movl	$3, %edx
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
.L4252:
	movss	384(%rsp), %xmm0
	movl	108(%rsp), %edx
	movss	%xmm0, 40(%rsp)
	movaps	%xmm7, %xmm3
	movss	368(%rsp), %xmm0
	movq	%r12, %r8
	movss	%xmm0, 32(%rsp)
	movq	%rdi, %rcx
	movl	$1, 56(%rsp)
	movl	%eax, 48(%rsp)
	call	_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii
	cvtss2sd	(%r12), %xmm0
	movq	376(%rsp), %r8
	movl	$64, %edx
	movq	%r13, %rcx
	movl	%eax, %ebx
	movsd	%xmm0, 72(%rsp)
	movq	72(%rsp), %r9
	movsd	%xmm0, %xmm3
	call	_Z14ImFormatStringPciPKcz.constprop.166
	movss	148(%rsp), %xmm0
	cltq
	addss	5160(%rsi), %xmm0
	leaq	128(%rsp), %r8
	leaq	0(%r13,%rax), %r9
	leaq	8(%rdi), %rdx
	leaq	112(%rsp), %rcx
	movq	$0, 48(%rsp)
	movss	144(%rsp), %xmm1
	movq	%r8, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%r13, %r8
	movl	$0x3f000000, 128(%rsp)
	movl	$0x00000000, 132(%rsp)
	movss	%xmm1, 112(%rsp)
	movss	%xmm0, 116(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	ucomiss	%xmm8, %xmm6
	movl	%ebx, %eax
	jbe	.L4268
	movss	152(%rsp), %xmm0
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addss	5176(%rsi), %xmm0
	movq	%rbp, %rdx
	movss	%xmm0, 72(%rsp)
	movl	72(%rsp), %ecx
	movss	148(%rsp), %xmm0
	addss	5160(%rsi), %xmm0
	movss	%xmm0, 80(%rsp)
	movq	80(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	movl	%ebx, %eax
	jmp	.L4268
	.p2align 4,,7
.L4275:
	leaq	.LC172(%rip), %rcx
	movl	$3, %edx
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
	leaq	.LC172(%rip), %rdx
	movq	%rdx, 376(%rsp)
	jmp	.L4257
.L4276:
	leaq	.LC172(%rip), %rcx
	movl	$3, %edx
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
	leaq	.LC172(%rip), %rdx
	movq	%rdx, 376(%rsp)
	jmp	.L4252
	.seh_endproc
	.section .rdata,"dr"
.LC173:
	.ascii "%.0f\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_
	.def	_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_
_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_:
.LFB660:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	136(%rsp), %rax
	movq	%r8, %rbx
	cvtsi2ss	%r9d, %xmm3
	cvtsi2ss	(%rbx), %xmm0
	leaq	.LC173(%rip), %r8
	movl	$0x3f800000, 48(%rsp)
	testq	%rax, %rax
	cmove	%r8, %rax
	leaq	76(%rsp), %r8
	movq	%rax, 40(%rsp)
	movss	%xmm0, 76(%rsp)
	cvtsi2ss	128(%rsp), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f
	movss	76(%rsp), %xmm0
	cvttss2si	%xmm0, %edx
	movl	%edx, (%rbx)
	addq	$80, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12DragBehaviorERK6ImRectjPffffif
	.def	_ZN5ImGui12DragBehaviorERK6ImRectjPffffif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12DragBehaviorERK6ImRectjPffffif
_ZN5ImGui12DragBehaviorERK6ImRectjPffffif:
.LFB669:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$160, %rsp
	.seh_stackalloc	160
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
	movaps	%xmm12, 144(%rsp)
	.seh_savexmm	%xmm12, 144
	.seh_endprologue
	movq	%rcx, %r10
	movl	%edx, %esi
	movq	%r8, %rdi
	movq	GImGui(%rip), %rbx
	movaps	%xmm3, %xmm8
	movl	$9, %ecx
	cmpl	%edx, 6068(%rbx)
	je	.L4280
	xorl	%ecx, %ecx
	cmpl	6056(%rbx), %edx
	sete	%cl
	addl	$7, %ecx
.L4280:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	5164(%rbx), %xmm0
	movq	8(%r10), %rdx
	movq	(%r10), %rcx
	movss	%xmm0, 32(%rsp)
	movl	%eax, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	xorl	%eax, %eax
	cmpl	6068(%rbx), %esi
	je	.L4355
.L4281:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	movaps	96(%rsp), %xmm9
	movaps	112(%rsp), %xmm10
	movaps	128(%rsp), %xmm11
	movaps	144(%rsp), %xmm12
	addq	$160, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L4355:
	cmpb	$0, 272(%rbx)
	je	.L4282
	cmpb	$0, 6077(%rbx)
	jne	.L4283
	movq	GImGui(%rip), %rax
	movss	10352(%rbx), %xmm2
	movss	10356(%rbx), %xmm0
	xorps	%xmm9, %xmm9
	cmpb	$0, 272(%rax)
	je	.L4356
.L4284:
	movss	1000(%rax), %xmm1
	movaps	%xmm2, %xmm7
	ucomiss	.LC28(%rip), %xmm1
	movaps	%xmm9, %xmm11
	jb	.L4285
	movss	264(%rax), %xmm11
	movaps	%xmm2, %xmm7
	subss	884(%rax), %xmm11
.L4285:
	movaps	%xmm11, %xmm3
	movss	.LC81(%rip), %xmm6
	subss	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	andps	%xmm6, %xmm0
	ucomiss	%xmm9, %xmm0
	jbe	.L4286
	ucomiss	%xmm9, %xmm8
	jp	.L4289
	jne	.L4289
	movss	232(%rsp), %xmm0
	movl	$1, %edx
	subss	224(%rsp), %xmm0
	ucomiss	%xmm9, %xmm0
	setp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L4289
	movss	.LC21(%rip), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.L4289
	mulss	10364(%rbx), %xmm0
	movaps	%xmm0, %xmm8
	.p2align 4,,7
.L4289:
	cmpb	$0, 286(%rbx)
	je	.L4291
	movss	10372(%rbx), %xmm0
	ucomiss	%xmm9, %xmm0
	jb	.L4291
	mulss	%xmm0, %xmm8
.L4291:
	cmpb	$0, 287(%rbx)
	je	.L4293
	movss	10368(%rbx), %xmm0
	ucomiss	%xmm9, %xmm0
	jb	.L4293
	mulss	%xmm0, %xmm8
.L4293:
	movss	.LC28(%rip), %xmm10
	mulss	%xmm3, %xmm8
	movss	248(%rsp), %xmm1
	subss	%xmm10, %xmm1
	andps	%xmm6, %xmm1
	ucomiss	.LC174(%rip), %xmm1
	jbe	.L4349
	ucomiss	%xmm9, %xmm2
	movaps	%xmm10, %xmm12
	jb	.L4357
.L4297:
	movaps	%xmm10, %xmm1
	cvtss2sd	%xmm7, %xmm0
	divss	248(%rsp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	call	pow
	cvtsd2ss	%xmm0, %xmm1
	mulss	%xmm12, %xmm8
	addss	%xmm1, %xmm8
	ucomiss	%xmm9, %xmm8
	jb	.L4358
.L4299:
	cvtss2sd	248(%rsp), %xmm1
	cvtss2sd	%xmm8, %xmm0
	call	pow
	cvtsd2ss	%xmm0, %xmm7
	mulss	%xmm12, %xmm7
	mulss	%xmm10, %xmm7
.L4301:
	movss	232(%rsp), %xmm4
	ucomiss	224(%rsp), %xmm4
	movss	%xmm11, 10356(%rbx)
	jbe	.L4302
	movss	224(%rsp), %xmm5
	ucomiss	%xmm7, %xmm5
	jbe	.L4359
	movaps	%xmm5, %xmm7
.L4302:
	movss	%xmm7, 10352(%rbx)
.L4286:
	cmpl	$9, 240(%rsp)
	ja	.L4305
	movslq	240(%rsp), %rdx
	leaq	_ZZN5ImGui11RoundScalarEfiE9min_steps(%rip), %rax
	movss	(%rax,%rdx,4), %xmm8
.L4306:
	andps	%xmm7, %xmm6
	movaps	%xmm8, %xmm1
	movaps	%xmm6, %xmm0
	call	fmodf
	movss	.LC29(%rip), %xmm1
	mulss	%xmm8, %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L4352
	subss	%xmm0, %xmm6
.L4309:
	ucomiss	%xmm7, %xmm9
	jbe	.L4310
	movss	.LC168(%rip), %xmm0
	xorps	%xmm0, %xmm6
.L4310:
	ucomiss	(%rdi), %xmm6
	jp	.L4337
	je	.L4354
.L4337:
	movss	%xmm6, (%rdi)
	movl	$1, %eax
	jmp	.L4281
	.p2align 4,,7
.L4282:
	movq	GImGui(%rip), %rdx
	movl	$0, 6068(%rdx)
	movb	$0, 6078(%rdx)
	movb	$1, 6077(%rdx)
	movq	$0, 6088(%rdx)
	jmp	.L4281
	.p2align 4,,7
.L4352:
	subss	%xmm0, %xmm8
	addss	%xmm8, %xmm6
	jmp	.L4309
	.p2align 4,,7
.L4283:
	xorps	%xmm9, %xmm9
	movq	GImGui(%rip), %rax
	movss	(%rdi), %xmm7
	movss	%xmm7, 10352(%rbx)
	movss	%xmm9, 10356(%rbx)
	movss	%xmm9, 10360(%rbx)
	cmpb	$0, 272(%rax)
	je	.L4360
	movaps	%xmm7, %xmm2
	movaps	%xmm9, %xmm0
	jmp	.L4284
	.p2align 4,,7
.L4354:
	xorl	%eax, %eax
	jmp	.L4281
	.p2align 4,,7
.L4349:
	addss	%xmm8, %xmm2
	movaps	%xmm2, %xmm7
	jmp	.L4301
	.p2align 4,,7
.L4305:
	movl	240(%rsp), %eax
	movlpd	.LC167(%rip), %xmm0
	negl	%eax
	cvtsi2ss	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	call	pow
	cvtsd2ss	%xmm0, %xmm8
	jmp	.L4306
	.p2align 4,,7
.L4360:
	movss	.LC81(%rip), %xmm6
	jmp	.L4286
	.p2align 4,,7
.L4356:
	xorps	%xmm9, %xmm9
	movaps	%xmm2, %xmm7
	movaps	%xmm9, %xmm11
	jmp	.L4285
	.p2align 4,,7
.L4359:
	movaps	%xmm4, %xmm5
	minss	%xmm7, %xmm5
	movaps	%xmm5, %xmm7
	jmp	.L4302
	.p2align 4,,7
.L4358:
	movss	.LC168(%rip), %xmm0
	ucomiss	%xmm9, %xmm8
	xorps	%xmm8, %xmm0
	movaps	%xmm0, %xmm8
	jnb	.L4299
	movss	.LC20(%rip), %xmm10
	jmp	.L4299
	.p2align 4,,7
.L4357:
	ucomiss	%xmm9, %xmm2
	movss	.LC168(%rip), %xmm7
	xorps	%xmm2, %xmm7
	jnb	.L4297
	movss	.LC20(%rip), %xmm12
	jmp	.L4297
	.seh_endproc
	.section .rdata,"dr"
.LC175:
	.ascii "[x]\0"
.LC176:
	.ascii "[ ]\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8CheckboxEPKcPb
	.def	_ZN5ImGui8CheckboxEPKcPb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8CheckboxEPKcPb
_ZN5ImGui8CheckboxEPKcPb:
.LFB692:
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
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L4362
.L4373:
	xorl	%eax, %eax
.L4405:
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
	ret
	.p2align 4,,7
.L4362:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	leaq	112(%rsp), %rdi
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rbp, %rcx
	movl	%eax, 76(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movss	5160(%rsi), %xmm1
	movl	%eax, 60(%rsp)
	movaps	%xmm1, %xmm7
	shrq	$32, %rax
	movss	60(%rsp), %xmm12
	movl	%eax, 60(%rsp)
	addss	%xmm1, %xmm7
	movss	60(%rsp), %xmm6
	movss	196(%rbx), %xmm10
	movq	%rdi, %rcx
	movss	192(%rbx), %xmm9
	addss	%xmm6, %xmm7
	movaps	%xmm7, %xmm11
	addss	%xmm9, %xmm7
	addss	%xmm10, %xmm11
	movaps	%xmm7, %xmm8
	movaps	%xmm11, %xmm15
	subss	%xmm9, %xmm8
	subss	%xmm10, %xmm15
	movss	%xmm8, 112(%rsp)
	movss	%xmm15, 116(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	xorps	%xmm3, %xmm3
	movss	%xmm9, 112(%rsp)
	movss	%xmm10, 116(%rsp)
	movss	%xmm7, 120(%rsp)
	ucomiss	%xmm3, %xmm12
	movss	%xmm11, 124(%rsp)
	jbe	.L4406
	xorps	%xmm13, %xmm13
	movss	5176(%rsi), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	movss	5160(%rsi), %xmm1
	addss	192(%rbx), %xmm13
	movss	196(%rbx), %xmm14
	addss	%xmm1, %xmm14
	movaps	%xmm6, %xmm0
	movaps	%xmm12, %xmm6
	addss	%xmm14, %xmm0
	addss	%xmm13, %xmm6
.L4366:
	movaps	%xmm6, %xmm2
	leaq	96(%rsp), %r13
	movss	%xmm0, 60(%rsp)
	movss	%xmm15, 100(%rsp)
	subss	%xmm13, %xmm2
	movq	%r13, %rcx
	movss	%xmm2, 96(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movss	60(%rsp), %xmm0
	movaps	%xmm0, %xmm1
	movaps	%xmm9, %xmm2
	cmpnless	%xmm11, %xmm1
	minss	%xmm13, %xmm2
	andps	%xmm1, %xmm0
	andnps	%xmm11, %xmm1
	movss	%xmm2, 112(%rsp)
	orps	%xmm1, %xmm0
	movaps	%xmm6, %xmm1
	cmpnless	%xmm7, %xmm1
	movss	%xmm0, 124(%rsp)
	andps	%xmm1, %xmm6
	andnps	%xmm7, %xmm1
	orps	%xmm1, %xmm6
	movaps	%xmm10, %xmm1
	minss	%xmm14, %xmm1
	movss	%xmm6, 120(%rsp)
	movss	%xmm1, 116(%rsp)
.L4367:
	leaq	76(%rsp), %rdx
	movq	%rdi, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L4373
	movl	76(%rsp), %edx
	leaq	75(%rsp), %r9
	leaq	74(%rsp), %r8
	movq	%rdi, %rcx
	movl	$0, 32(%rsp)
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	testb	%al, %al
	movl	%eax, %edi
	je	.L4374
	xorb	$1, (%r12)
.L4374:
	cmpb	$1, 74(%rsp)
	movss	5164(%rsi), %xmm6
	sbbl	%ecx, %ecx
	cmpb	$0, 75(%rsp)
	je	.L4375
	andl	$-2, %ecx
	addl	$9, %ecx
.L4376:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	%xmm9, 60(%rsp)
	movl	%eax, %r8d
	movl	60(%rsp), %eax
	movss	%xmm10, 60(%rsp)
	movl	60(%rsp), %ecx
	movss	%xmm7, 60(%rsp)
	movl	60(%rsp), %r10d
	movss	%xmm11, 60(%rsp)
	movq	%rcx, %rdx
	movl	%eax, %ecx
	movss	%xmm6, 32(%rsp)
	salq	$32, %rdx
	orq	%rdx, %rcx
	movl	60(%rsp), %edx
	movq	%rdx, %r9
	movl	%r10d, %edx
	salq	$32, %r9
	orq	%r9, %rdx
	movl	$1, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	cmpb	$0, (%r12)
	je	.L4377
	minss	%xmm15, %xmm8
	movss	.LC28(%rip), %xmm1
	movl	$19, %ecx
	movss	5164(%rsi), %xmm6
	leaq	96(%rsp), %r13
	divss	.LC37(%rip), %xmm8
	cvttss2si	%xmm8, %eax
	cvtsi2ss	%eax, %xmm15
	movaps	%xmm15, %xmm0
	movaps	%xmm15, %xmm5
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm5
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm5
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	656(%rbx), %rcx
	leaq	80(%rsp), %rdx
	movss	%xmm6, 32(%rsp)
	subss	%xmm5, %xmm7
	movl	%eax, %r9d
	movl	$-1, 40(%rsp)
	subss	%xmm5, %xmm11
	movq	%r13, %r8
	addss	%xmm5, %xmm9
	addss	%xmm5, %xmm10
	movss	%xmm7, 96(%rsp)
	movss	%xmm11, 100(%rsp)
	movss	%xmm9, 80(%rsp)
	movss	%xmm10, 84(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	cmpb	$0, 11432(%rsi)
	je	.L4381
	cmpb	$0, (%r12)
	je	.L4384
	leaq	.LC175(%rip), %rdx
	jmp	.L4382
	.p2align 4,,7
.L4377:
	cmpb	$0, 11432(%rsi)
	leaq	96(%rsp), %r13
	je	.L4381
.L4384:
	leaq	.LC176(%rip), %rdx
.L4382:
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	movss	%xmm13, 96(%rsp)
	movss	%xmm14, 100(%rsp)
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
.L4381:
	xorps	%xmm4, %xmm4
	movl	%edi, %eax
	ucomiss	%xmm4, %xmm12
	jbe	.L4405
	movss	%xmm13, 60(%rsp)
	movl	60(%rsp), %edx
	movl	$1, %r9d
	movss	%xmm14, 60(%rsp)
	movl	60(%rsp), %ecx
	xorl	%r8d, %r8d
	movq	%rcx, %rax
	movl	%edx, %ecx
	movq	%rbp, %rdx
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	movl	%edi, %eax
	jmp	.L4405
	.p2align 4,,7
.L4406:
	movaps	%xmm3, %xmm13
	movss	5160(%rsi), %xmm1
	movss	196(%rbx), %xmm14
	addss	192(%rbx), %xmm13
	addss	%xmm1, %xmm14
	jbe	.L4367
	movaps	%xmm6, %xmm0
	movaps	%xmm12, %xmm6
	addss	%xmm14, %xmm0
	addss	%xmm13, %xmm6
	jmp	.L4366
	.p2align 4,,7
.L4375:
	addl	$8, %ecx
	jmp	.L4376
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13CheckboxFlagsEPKcPjj
	.def	_ZN5ImGui13CheckboxFlagsEPKcPjj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13CheckboxFlagsEPKcPjj
_ZN5ImGui13CheckboxFlagsEPKcPjj:
.LFB693:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	(%rdx), %eax
	movq	%rdx, %rsi
	leaq	47(%rsp), %rdx
	movl	%r8d, %ebx
	andl	%r8d, %eax
	cmpl	%r8d, %eax
	sete	47(%rsp)
	call	_ZN5ImGui8CheckboxEPKcPb
	testb	%al, %al
	je	.L4409
	cmpb	$0, 47(%rsp)
	jne	.L4414
	notl	%ebx
	andl	%ebx, (%rsi)
.L4409:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L4414:
	orl	%ebx, (%rsi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC177:
	.ascii "(x)\0"
.LC178:
	.ascii "( )\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11RadioButtonEPKcb
	.def	_ZN5ImGui11RadioButtonEPKcb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11RadioButtonEPKcb
_ZN5ImGui11RadioButtonEPKcb:
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
	movq	%rcx, %rbp
	movl	%edx, %r12d
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L4416
.L4430:
	xorl	%eax, %eax
.L4417:
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
	ret
	.p2align 4,,7
.L4416:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	leaq	112(%rsp), %rdi
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rbp, %rcx
	movl	%eax, 76(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movss	5160(%rsi), %xmm1
	movl	%eax, 60(%rsp)
	movaps	%xmm1, %xmm6
	shrq	$32, %rax
	movss	60(%rsp), %xmm10
	movl	%eax, 60(%rsp)
	addss	%xmm1, %xmm6
	movss	60(%rsp), %xmm7
	movss	196(%rbx), %xmm12
	movq	%rdi, %rcx
	movss	192(%rbx), %xmm8
	addss	%xmm7, %xmm6
	subss	.LC28(%rip), %xmm6
	movaps	%xmm6, %xmm9
	addss	%xmm8, %xmm6
	addss	%xmm12, %xmm9
	movaps	%xmm6, %xmm11
	movaps	%xmm9, %xmm15
	subss	%xmm8, %xmm11
	subss	%xmm12, %xmm15
	movss	%xmm11, 112(%rsp)
	movss	%xmm15, 116(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	xorps	%xmm3, %xmm3
	movss	%xmm8, 112(%rsp)
	movss	%xmm12, 116(%rsp)
	movss	%xmm6, 120(%rsp)
	ucomiss	%xmm3, %xmm10
	movss	%xmm9, 124(%rsp)
	jbe	.L4458
	movss	5176(%rsi), %xmm0
	xorps	%xmm13, %xmm13
	call	_ZN5ImGui8SameLineEff.constprop.140
	movss	5160(%rsi), %xmm1
	movss	196(%rbx), %xmm14
	addss	192(%rbx), %xmm13
	addss	%xmm1, %xmm14
	addss	%xmm14, %xmm7
	movaps	%xmm7, %xmm0
	movaps	%xmm10, %xmm7
	addss	%xmm13, %xmm7
.L4420:
	movaps	%xmm7, %xmm2
	leaq	96(%rsp), %rcx
	movss	%xmm0, 60(%rsp)
	movss	%xmm15, 100(%rsp)
	subss	%xmm13, %xmm2
	movss	%xmm2, 96(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movss	112(%rsp), %xmm1
	ucomiss	%xmm13, %xmm1
	movss	60(%rsp), %xmm0
	jbe	.L4423
	movss	%xmm13, 112(%rsp)
.L4423:
	movss	116(%rsp), %xmm1
	ucomiss	%xmm14, %xmm1
	jbe	.L4425
	movss	%xmm14, 116(%rsp)
.L4425:
	ucomiss	120(%rsp), %xmm7
	jbe	.L4427
	movss	%xmm7, 120(%rsp)
.L4427:
	ucomiss	124(%rsp), %xmm0
	jbe	.L4421
	movss	%xmm0, 124(%rsp)
.L4421:
	leaq	76(%rsp), %rdx
	movq	%rdi, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L4430
	addss	%xmm8, %xmm6
	movss	.LC29(%rip), %xmm2
	addss	%xmm12, %xmm9
	movl	76(%rsp), %edx
	leaq	75(%rsp), %r9
	leaq	74(%rsp), %r8
	movq	%rdi, %rcx
	movl	$0, 32(%rsp)
	mulss	%xmm2, %xmm6
	mulss	%xmm2, %xmm9
	cvttss2si	%xmm6, %eax
	cvtsi2ss	%eax, %xmm0
	cvttss2si	%xmm9, %eax
	addss	%xmm2, %xmm0
	movss	%xmm0, 80(%rsp)
	cvtsi2ss	%eax, %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm15, %xmm2
	movss	%xmm0, 84(%rsp)
	movaps	%xmm2, %xmm6
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$1, 74(%rsp)
	movl	%eax, %edi
	sbbl	%ecx, %ecx
	cmpb	$0, 75(%rsp)
	je	.L4431
	andl	$-2, %ecx
	addl	$9, %ecx
.L4432:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	leaq	80(%rsp), %r13
	movq	656(%rbx), %rcx
	movl	%eax, %r9d
	movaps	%xmm6, %xmm2
	movl	$16, 32(%rsp)
	movq	%r13, %rdx
	call	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
	testb	%r12b, %r12b
	je	.L4433
	minss	%xmm15, %xmm11
	movss	.LC28(%rip), %xmm4
	movl	$19, %ecx
	divss	.LC37(%rip), %xmm11
	cvttss2si	%xmm11, %eax
	cvtsi2ss	%eax, %xmm7
	movaps	%xmm7, %xmm0
	movaps	%xmm7, %xmm5
	cmpnless	.LC28(%rip), %xmm0
	andps	%xmm0, %xmm5
	andnps	%xmm4, %xmm0
	orps	%xmm0, %xmm5
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movaps	%xmm6, %xmm2
	movq	656(%rbx), %rcx
	movl	%eax, %r9d
	movl	$16, 32(%rsp)
	movq	%r13, %rdx
	subss	%xmm5, %xmm2
	call	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
.L4433:
	testb	$-128, 12(%rbx)
	jne	.L4460
.L4436:
	cmpb	$0, 11432(%rsi)
	je	.L4437
	leaq	.LC178(%rip), %rdx
	leaq	.LC177(%rip), %rax
	testb	%r12b, %r12b
	leaq	96(%rsp), %rcx
	movss	%xmm13, 96(%rsp)
	cmovne	%rax, %rdx
	xorl	%r8d, %r8d
	movss	%xmm14, 100(%rsp)
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
.L4437:
	xorps	%xmm4, %xmm4
	movl	%edi, %eax
	ucomiss	%xmm4, %xmm10
	jbe	.L4417
	movss	%xmm13, 60(%rsp)
	movl	60(%rsp), %edx
	movl	$1, %r9d
	movss	%xmm14, 60(%rsp)
	movl	60(%rsp), %ecx
	xorl	%r8d, %r8d
	movl	%edx, %eax
	movq	%rbp, %rdx
	salq	$32, %rcx
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	movl	%edi, %eax
	jmp	.L4417
	.p2align 4,,7
.L4458:
	movaps	%xmm3, %xmm13
	movss	5160(%rsi), %xmm1
	movss	196(%rbx), %xmm14
	addss	192(%rbx), %xmm13
	addss	%xmm1, %xmm14
	jbe	.L4421
	addss	%xmm14, %xmm7
	movaps	%xmm7, %xmm0
	movaps	%xmm10, %xmm7
	addss	%xmm13, %xmm7
	jmp	.L4420
	.p2align 4,,7
.L4431:
	addl	$8, %ecx
	jmp	.L4432
	.p2align 4,,7
.L4460:
	movl	$6, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	.LC28(%rip), %xmm1
	movq	656(%rbx), %rcx
	movss	.LC28(%rip), %xmm0
	addss	84(%rsp), %xmm1
	addss	80(%rsp), %xmm0
	leaq	96(%rsp), %rdx
	movl	%eax, %r9d
	movaps	%xmm6, %xmm2
	movl	$0x3f800000, 40(%rsp)
	movl	$16, 32(%rsp)
	movss	%xmm1, 100(%rsp)
	movss	%xmm0, 96(%rsp)
	call	_ZN10ImDrawList9AddCircleERK6ImVec2fjif
	movl	$5, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	656(%rbx), %rcx
	movaps	%xmm6, %xmm2
	movl	%eax, %r9d
	movl	$0x3f800000, 40(%rsp)
	movl	$16, 32(%rsp)
	movq	%r13, %rdx
	call	_ZN10ImDrawList9AddCircleERK6ImVec2fjif
	jmp	.L4436
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11RadioButtonEPKcPii
	.def	_ZN5ImGui11RadioButtonEPKcPii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11RadioButtonEPKcPii
_ZN5ImGui11RadioButtonEPKcPii:
.LFB695:
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
	je	.L4462
	movl	%esi, (%rbx)
.L4462:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN18ImGuiTextEditState12OnKeyPressedEi
	.def	_ZN18ImGuiTextEditState12OnKeyPressedEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN18ImGuiTextEditState12OnKeyPressedEi
_ZN18ImGuiTextEditState12OnKeyPressedEi:
.LFB735:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%edx, %r8d
	leaq	72(%rcx), %rdx
	movq	%rcx, %rbx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 3296(%rbx)
	movl	$0xbe99999a, 3292(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC180:
	.ascii "pos + bytes_count <= BufTextLen\0"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN25ImGuiTextEditCallbackData11DeleteCharsEii
	.def	_ZN25ImGuiTextEditCallbackData11DeleteCharsEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN25ImGuiTextEditCallbackData11DeleteCharsEii
_ZN25ImGuiTextEditCallbackData11DeleteCharsEii:
.LFB736:
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
	jg	.L4477
.L4468:
	movq	24(%rbx), %r8
	movslq	%edi, %rcx
	movslq	%esi, %rdx
	leaq	(%r8,%rcx), %rax
	addq	%rdx, %rcx
	leaq	(%r8,%rcx), %rdx
	leaq	1(%rdx), %rcx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	je	.L4469
	.p2align 4,,7
.L4470:
	incq	%rax
	incq	%rcx
	movb	%dl, -1(%rax)
	movzbl	-1(%rcx), %edx
	testb	%dl, %dl
	jne	.L4470
.L4469:
	movb	$0, (%rax)
	movl	44(%rbx), %eax
	leal	(%rsi,%rax), %edx
	cmpl	%edx, %edi
	jle	.L4478
	cmpl	%eax, %edi
	jg	.L4472
	movl	%edi, 44(%rbx)
	movl	%edi, %eax
.L4472:
	subl	%esi, 32(%rbx)
	movl	%eax, 52(%rbx)
	movl	%eax, 48(%rbx)
	movb	$1, 40(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L4478:
	subl	%esi, %eax
	movl	%eax, 44(%rbx)
	jmp	.L4472
	.p2align 4,,7
.L4477:
	leaq	.LC15(%rip), %rdx
	leaq	.LC180(%rip), %rcx
	movl	$7581, %r8d
	call	_assert
	jmp	.L4468
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_
	.def	_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_
_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_:
.LFB737:
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
	movl	%edx, %ebp
	movq	%r8, %r12
	je	.L4480
	movl	%r9d, %esi
	subl	%r8d, %esi
.L4481:
	movl	32(%rbx), %r8d
	leal	1(%rsi,%r8), %eax
	cmpl	36(%rbx), %eax
	jge	.L4479
	cmpl	%ebp, %r8d
	je	.L4486
	movq	24(%rbx), %rcx
	movslq	%ebp, %rdi
	movslq	%esi, %r13
	leaq	(%rdi,%r13), %rax
	subl	%ebp, %r8d
	movslq	%r8d, %r8
	leaq	(%rcx,%rdi), %rdx
	addq	%rax, %rcx
	call	memmove
.L4484:
	addq	24(%rbx), %rdi
	movq	%r12, %rdx
	movq	%r13, %r8
	movq	%rdi, %rcx
	call	memcpy
	movl	32(%rbx), %eax
	movq	24(%rbx), %rdx
	addl	%esi, %eax
	cltq
	movb	$0, (%rdx,%rax)
	movl	44(%rbx), %eax
	cmpl	%eax, %ebp
	jg	.L4485
	addl	%esi, %eax
	movl	%eax, 44(%rbx)
.L4485:
	addl	%esi, 32(%rbx)
	movl	%eax, 52(%rbx)
	movl	%eax, 48(%rbx)
	movb	$1, 40(%rbx)
.L4479:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L4486:
	movslq	%ebp, %rdi
	movslq	%esi, %r13
	jmp	.L4484
	.p2align 4,,7
.L4480:
	movq	%r8, %rcx
	call	strlen
	movl	%eax, %esi
	jmp	.L4481
	.seh_endproc
	.section .rdata,"dr"
.LC181:
	.ascii "#colorbutton\0"
	.align 8
.LC182:
	.ascii "Color:\12(%.2f,%.2f,%.2f,%.2f)\12#%02X%02X%02X%02X\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11ColorButtonERK6ImVec4bb
	.def	_ZN5ImGui11ColorButtonERK6ImVec4bb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11ColorButtonERK6ImVec4bb
_ZN5ImGui11ColorButtonERK6ImVec4bb:
.LFB773:
	pushq	%r12
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
	movq	%rcx, %rdi
	movl	%edx, %ebp
	movl	%r8d, %r12d
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L4488
.L4491:
	xorl	%eax, %eax
.L4508:
	movaps	144(%rsp), %xmm6
	addq	$160, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L4488:
	leaq	.LC181(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	testb	%bpl, %bpl
	movl	%eax, 108(%rsp)
	movss	5944(%rsi), %xmm2
	jne	.L4490
	movss	5160(%rsi), %xmm1
	movaps	%xmm1, %xmm0
	movss	196(%rbx), %xmm5
	movss	192(%rbx), %xmm4
	addss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm3
	addss	%xmm5, %xmm3
.L4510:
	addss	%xmm4, %xmm0
	movss	%xmm3, 140(%rsp)
	movq	192(%rbx), %rax
	subss	%xmm5, %xmm3
	leaq	112(%rsp), %rbp
	leaq	128(%rsp), %rbx
	movq	%rbp, %rcx
	movq	%rax, 128(%rsp)
	movss	%xmm0, 136(%rsp)
	subss	%xmm4, %xmm0
	movss	%xmm3, 116(%rsp)
	movss	%xmm0, 112(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	108(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L4491
	movl	108(%rsp), %edx
	leaq	107(%rsp), %r8
	movq	%rbp, %r9
	movq	%rbx, %rcx
	movl	$0, 32(%rsp)
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movq	%rdi, %rcx
	movl	%eax, %ebx
	call	_ZN5ImGui11GetColorU32ERK6ImVec4
	movss	5164(%rsi), %xmm0
	movq	136(%rsp), %rdx
	movq	128(%rsp), %rcx
	movss	%xmm0, 32(%rsp)
	movl	%eax, %r8d
	movzbl	%r12b, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	cmpb	$0, 107(%rsp)
	movl	%ebx, %eax
	je	.L4508
	xorps	%xmm0, %xmm0
	movss	12(%rdi), %xmm6
	xorl	%r8d, %r8d
	ucomiss	%xmm6, %xmm0
	ja	.L4492
	ucomiss	.LC28(%rip), %xmm6
	movl	$255, %r8d
	jbe	.L4511
.L4492:
	movss	8(%rdi), %xmm3
	xorl	%ecx, %ecx
	ucomiss	%xmm3, %xmm0
	ja	.L4493
	ucomiss	.LC28(%rip), %xmm3
	movl	$255, %ecx
	jbe	.L4512
.L4493:
	movss	4(%rdi), %xmm2
	xorl	%edx, %edx
	ucomiss	%xmm2, %xmm0
	ja	.L4494
	ucomiss	.LC28(%rip), %xmm2
	movl	$255, %edx
	jbe	.L4513
.L4494:
	movss	(%rdi), %xmm1
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	ja	.L4495
	ucomiss	.LC28(%rip), %xmm1
	movl	$255, %eax
	jbe	.L4514
.L4495:
	cvtss2sd	%xmm3, %xmm5
	movl	%r8d, 64(%rsp)
	movl	%edx, 48(%rsp)
	cvtss2sd	%xmm2, %xmm4
	movl	%ecx, 56(%rsp)
	leaq	.LC182(%rip), %rcx
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm5, %xmm3
	movl	%eax, 40(%rsp)
	cvtss2sd	%xmm6, %xmm6
	movsd	%xmm4, %xmm2
	movsd	%xmm5, 88(%rsp)
	movq	88(%rsp), %r9
	movsd	%xmm0, %xmm1
	movsd	%xmm4, 88(%rsp)
	movq	88(%rsp), %r8
	movsd	%xmm0, 88(%rsp)
	movq	88(%rsp), %rdx
	movsd	%xmm6, 32(%rsp)
	call	_ZN5ImGui10SetTooltipEPKcz
	movl	%ebx, %eax
	jmp	.L4508
	.p2align 4,,7
.L4490:
	xorps	%xmm1, %xmm1
	movaps	%xmm2, %xmm3
	movss	5160(%rsi), %xmm0
	addss	%xmm0, %xmm0
	movss	196(%rbx), %xmm5
	addss	%xmm1, %xmm3
	movss	192(%rbx), %xmm4
	addss	%xmm2, %xmm0
	addss	%xmm5, %xmm3
	jmp	.L4510
	.p2align 4,,7
.L4514:
	movss	.LC30(%rip), %xmm0
	mulss	%xmm1, %xmm0
	addss	.LC29(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	jmp	.L4495
	.p2align 4,,7
.L4513:
	movss	.LC30(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LC29(%rip), %xmm1
	cvttss2si	%xmm1, %edx
	jmp	.L4494
	.p2align 4,,7
.L4512:
	movss	.LC30(%rip), %xmm1
	mulss	%xmm3, %xmm1
	addss	.LC29(%rip), %xmm1
	cvttss2si	%xmm1, %ecx
	jmp	.L4493
	.p2align 4,,7
.L4511:
	movss	.LC30(%rip), %xmm1
	mulss	%xmm6, %xmm1
	addss	.LC29(%rip), %xmm1
	cvttss2si	%xmm1, %r8d
	jmp	.L4492
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13ColorEditModeEi
	.def	_ZN5ImGui13ColorEditModeEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13ColorEditModeEi
_ZN5ImGui13ColorEditModeEi:
.LFB776:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movb	$1, 138(%rax)
	movl	%ecx, 400(%rax)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7SpacingEv
	.def	_ZN5ImGui7SpacingEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7SpacingEv
_ZN5ImGui7SpacingEv:
.LFB778:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L4516
	xorps	%xmm1, %xmm1
	leaq	32(%rsp), %rcx
	movss	%xmm1, 32(%rsp)
	movss	%xmm1, 36(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	nop
.L4516:
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5DummyERK6ImVec2
	.def	_ZN5ImGui5DummyERK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5DummyERK6ImVec2
_ZN5ImGui5DummyERK6ImVec2:
.LFB779:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	je	.L4521
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L4521:
	movss	192(%rax), %xmm3
	movss	(%rcx), %xmm1
	addss	%xmm3, %xmm1
	movss	196(%rax), %xmm2
	movss	4(%rcx), %xmm0
	movq	192(%rax), %rax
	addss	%xmm2, %xmm0
	leaq	32(%rsp), %rcx
	movss	%xmm1, 56(%rsp)
	subss	%xmm3, %xmm1
	movq	%rax, 48(%rsp)
	movss	%xmm0, 60(%rsp)
	subss	%xmm2, %xmm0
	movss	%xmm1, 32(%rsp)
	xorps	%xmm1, %xmm1
	movss	%xmm0, 36(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13IsRectVisibleERK6ImVec2
	.def	_ZN5ImGui13IsRectVisibleERK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13IsRectVisibleERK6ImVec2
_ZN5ImGui13IsRectVisibleERK6ImVec2:
.LFB780:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	196(%rax), %xmm0
	movss	524(%rax), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.L4535
	addss	4(%rcx), %xmm0
	ucomiss	516(%rax), %xmm0
	jbe	.L4535
	movss	192(%rax), %xmm0
	movss	520(%rax), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.L4535
	addss	(%rcx), %xmm0
	ucomiss	512(%rax), %xmm0
	seta	%al
	ret
	.p2align 4,,7
.L4535:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13IsRectVisibleERK6ImVec2S2_
	.def	_ZN5ImGui13IsRectVisibleERK6ImVec2S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13IsRectVisibleERK6ImVec2S2_
_ZN5ImGui13IsRectVisibleERK6ImVec2S2_:
.LFB781:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	524(%rax), %xmm0
	ucomiss	4(%rcx), %xmm0
	jbe	.L4549
	movss	4(%rdx), %xmm0
	ucomiss	516(%rax), %xmm0
	jbe	.L4549
	movss	520(%rax), %xmm0
	ucomiss	(%rcx), %xmm0
	jbe	.L4549
	movss	(%rdx), %xmm0
	ucomiss	512(%rax), %xmm0
	seta	%al
	ret
	.p2align 4,,7
.L4549:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10BeginGroupEv
	.def	_ZN5ImGui10BeginGroupEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10BeginGroupEv
_ZN5ImGui10BeginGroupEv:
.LFB782:
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
	movq	GImGui(%rip), %r8
	movq	6008(%r8), %rbx
	movl	384(%rbx), %eax
	movb	$1, 138(%rbx)
	leal	1(%rax), %esi
	movl	388(%rbx), %eax
	cmpl	%eax, %esi
	jle	.L4551
	testl	%eax, %eax
	movl	$8, %edx
	je	.L4552
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L4552:
	cmpl	%edx, %esi
	jl	.L4562
	movl	%esi, %edi
.L4553:
	movslq	%edi, %rax
	incl	844(%r8)
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rcx
	call	*232(%r8)
	movq	392(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L4554
	movslq	384(%rbx), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %r8
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	call	memcpy
	movq	392(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L4556
	decl	844(%rax)
.L4556:
	call	*240(%rax)
	movq	%rbp, 392(%rbx)
	movl	%edi, 388(%rbx)
.L4551:
	testl	%esi, %esi
	movl	%esi, 384(%rbx)
	jle	.L4563
.L4557:
	movslq	%esi, %rsi
	movq	192(%rbx), %rdx
	movq	%rsi, %rax
	movss	428(%rbx), %xmm0
	salq	$5, %rax
	leaq	-40(%rax,%rsi,8), %rax
	addq	392(%rbx), %rax
	movq	%rdx, (%rax)
	movq	216(%rbx), %rdx
	movss	%xmm0, 16(%rax)
	movss	432(%rbx), %xmm0
	movss	%xmm0, 20(%rax)
	movss	224(%rbx), %xmm0
	movq	%rdx, 8(%rax)
	movss	%xmm0, 24(%rax)
	movq	GImGui(%rip), %rdx
	movss	228(%rbx), %xmm0
	movss	%xmm0, 28(%rax)
	movss	240(%rbx), %xmm0
	movzbl	6076(%rdx), %edx
	movss	%xmm0, 32(%rax)
	movb	$1, 37(%rax)
	movss	192(%rbx), %xmm0
	subss	28(%rbx), %xmm0
	movb	%dl, 36(%rax)
	movq	192(%rbx), %rax
	movl	$0x00000000, 224(%rbx)
	movq	%rax, 216(%rbx)
	subss	436(%rbx), %xmm0
	movss	%xmm0, 432(%rbx)
	movss	%xmm0, 428(%rbx)
	movss	196(%rbx), %xmm0
	subss	.LC183(%rip), %xmm0
	movss	%xmm0, 240(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L4562:
	cmpl	%edx, %eax
	jge	.L4551
	movl	%edx, %edi
	jmp	.L4553
	.p2align 4,,7
.L4554:
	movq	GImGui(%rip), %rax
	jmp	.L4556
	.p2align 4,,7
.L4563:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	384(%rbx), %esi
	jmp	.L4557
	.seh_endproc
	.section .rdata,"dr"
.LC184:
	.ascii "!window->DC.MenuBarAppending\0"
.LC185:
	.ascii "##menubar\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12BeginMenuBarEv
	.def	_ZN5ImGui12BeginMenuBarEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12BeginMenuBarEv
_ZN5ImGui12BeginMenuBarEv:
.LFB769:
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
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movzbl	140(%rbx), %eax
	movb	$1, 138(%rbx)
	testb	%al, %al
	jne	.L4571
	testb	$4, 13(%rbx)
	je	.L4565
	cmpb	$0, 270(%rbx)
	jne	.L4578
.L4566:
	call	_ZN5ImGui10BeginGroupEv
	leaq	.LC185(%rip), %rcx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui6PushIDEPKc
	movl	12(%rbx), %eax
	movss	32(%rbx), %xmm1
	testb	$1, %al
	je	.L4579
.L4567:
	testb	$4, %ah
	addss	%xmm1, %xmm6
	xorps	%xmm0, %xmm0
	je	.L4568
	movq	GImGui(%rip), %rax
	movss	648(%rbx), %xmm0
	mulss	5948(%rax), %xmm0
	movss	5160(%rax), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
.L4568:
	movss	28(%rbx), %xmm7
	addss	%xmm6, %xmm0
	leaq	48(%rsp), %rsi
	movss	44(%rbx), %xmm2
	leaq	32(%rsp), %rcx
	addss	%xmm7, %xmm2
	movss	.LC29(%rip), %xmm1
	xorl	%r8d, %r8d
	movq	%rsi, %rdx
	addss	%xmm1, %xmm0
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	cvtsi2ss	%eax, %xmm2
	cvttss2si	%xmm0, %eax
	movss	%xmm2, 48(%rsp)
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 52(%rsp)
	movss	132(%rbx), %xmm0
	addss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm7, %xmm1
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm2
	cvttss2si	%xmm1, %eax
	movss	%xmm2, 36(%rsp)
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
	addss	272(%rbx), %xmm7
	movss	%xmm6, 196(%rbx)
	movq	GImGui(%rip), %rdx
	movl	$1, 304(%rbx)
	movb	$1, 270(%rbx)
	movss	%xmm7, 192(%rbx)
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	je	.L4580
.L4577:
	movl	$1, %eax
.L4565:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L4571:
	xorl	%eax, %eax
	jmp	.L4565
	.p2align 4,,7
.L4579:
	movq	GImGui(%rip), %rdx
	movss	648(%rbx), %xmm6
	mulss	5948(%rdx), %xmm6
	movss	5160(%rdx), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm0, %xmm6
	jmp	.L4567
	.p2align 4,,7
.L4580:
	movss	5160(%rdx), %xmm1
	movq	%rsi, %rcx
	movaps	%xmm1, %xmm0
	xorps	%xmm6, %xmm6
	addss	%xmm1, %xmm0
	addss	5944(%rdx), %xmm0
	movss	%xmm6, 48(%rsp)
	movss	%xmm0, 52(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L4577
	addss	200(%rax), %xmm6
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
	movss	%xmm6, 192(%rax)
	jmp	.L4577
	.p2align 4,,7
.L4578:
	leaq	.LC15(%rip), %rdx
	leaq	.LC184(%rip), %rcx
	movl	$8826, %r8d
	call	_assert
	jmp	.L4566
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC186:
	.ascii "!window->DC.GroupStack.empty()\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8EndGroupEv
	.def	_ZN5ImGui8EndGroupEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8EndGroupEv
_ZN5ImGui8EndGroupEv:
.LFB783:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movq	GImGui(%rip), %rdi
	movq	6008(%rdi), %rbx
	movl	384(%rbx), %eax
	movb	$1, 138(%rbx)
	testl	%eax, %eax
	je	.L4613
.L4582:
	testl	%eax, %eax
	jle	.L4614
.L4583:
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	-40(%rcx,%rdx,8), %rsi
	addq	392(%rbx), %rsi
	movq	(%rsi), %rdx
	cmpb	$0, 37(%rsi)
	movq	%rdx, 48(%rsp)
	movq	216(%rbx), %rdx
	movss	52(%rsp), %xmm5
	movss	48(%rsp), %xmm6
	movq	%rdx, 56(%rsp)
	movq	(%rsi), %rdx
	movss	60(%rsp), %xmm0
	subss	5172(%rdi), %xmm0
	movss	56(%rsp), %xmm2
	movq	%rdx, 192(%rbx)
	movaps	%xmm0, %xmm1
	cmpnless	%xmm5, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm5, %xmm1
	orps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	cmpnless	%xmm6, %xmm1
	movss	%xmm0, 60(%rsp)
	andps	%xmm1, %xmm2
	andnps	%xmm6, %xmm1
	movss	12(%rsi), %xmm4
	orps	%xmm1, %xmm2
	movss	220(%rbx), %xmm1
	movaps	%xmm1, %xmm3
	movss	%xmm2, 56(%rsp)
	cmpnless	%xmm4, %xmm3
	movss	8(%rsi), %xmm7
	andps	%xmm3, %xmm1
	andnps	%xmm4, %xmm3
	orps	%xmm3, %xmm1
	movss	216(%rbx), %xmm3
	movaps	%xmm3, %xmm4
	movss	%xmm1, 220(%rbx)
	cmpnless	%xmm7, %xmm4
	movss	24(%rsi), %xmm1
	movss	%xmm1, 224(%rbx)
	andps	%xmm4, %xmm3
	movss	28(%rsi), %xmm1
	andnps	%xmm7, %xmm4
	movss	%xmm1, 228(%rbx)
	orps	%xmm4, %xmm3
	movss	%xmm3, 216(%rbx)
	movss	16(%rsi), %xmm3
	movss	%xmm3, 428(%rbx)
	movss	20(%rsi), %xmm3
	movss	%xmm3, 432(%rbx)
	movss	196(%rbx), %xmm3
	subss	.LC183(%rip), %xmm3
	movss	%xmm3, 240(%rbx)
	je	.L4592
	movaps	%xmm1, %xmm4
	movss	236(%rbx), %xmm3
	subss	%xmm6, %xmm2
	leaq	32(%rsp), %rcx
	cmpless	%xmm3, %xmm4
	subss	%xmm5, %xmm0
	andps	%xmm4, %xmm3
	andnps	%xmm1, %xmm4
	movss	%xmm2, 32(%rsp)
	movss	%xmm0, 36(%rsp)
	orps	%xmm4, %xmm3
	movss	%xmm3, 228(%rbx)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	movl	384(%rbx), %eax
.L4592:
	cmpb	$0, 36(%rsi)
	jne	.L4596
	cmpb	$0, 6076(%rdi)
	jne	.L4615
	.p2align 4,,7
.L4596:
	testl	%eax, %eax
	jle	.L4616
.L4599:
	decl	%eax
	movl	%eax, 384(%rbx)
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L4615:
	movl	6068(%rdi), %edx
	testl	%edx, %edx
	je	.L4596
	movq	6088(%rdi), %rcx
	movq	664(%rbx), %rsi
	cmpq	%rsi, 664(%rcx)
	jne	.L4596
	cmpl	6056(%rdi), %edx
	movl	%edx, 248(%rbx)
	jne	.L4596
	testl	%eax, %eax
	movb	$1, 269(%rbx)
	movb	$1, 268(%rbx)
	jg	.L4599
	.p2align 4,,7
.L4616:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	384(%rbx), %eax
	jmp	.L4599
	.p2align 4,,7
.L4613:
	leaq	.LC15(%rip), %rdx
	leaq	.LC186(%rip), %rcx
	movl	$9246, %r8d
	call	_assert
	movl	384(%rbx), %eax
	jmp	.L4582
	.p2align 4,,7
.L4614:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	384(%rbx), %eax
	jmp	.L4583
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC187:
	.ascii "window->Flags & ImGuiWindowFlags_MenuBar\0"
.LC188:
	.ascii "window->DC.MenuBarAppending\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10EndMenuBarEv
	.def	_ZN5ImGui10EndMenuBarEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10EndMenuBarEv
_ZN5ImGui10EndMenuBarEv:
.LFB770:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L4617
	testb	$4, 13(%rbx)
	je	.L4622
	cmpb	$0, 270(%rbx)
	je	.L4623
.L4620:
	call	_ZN5ImGui11PopClipRectEv
	call	_ZN5ImGui5PopIDEv
	movss	192(%rbx), %xmm0
	movslq	384(%rbx), %rax
	subss	28(%rbx), %xmm0
	testl	%eax, %eax
	movss	%xmm0, 272(%rbx)
	jle	.L4624
.L4621:
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rax
	addq	392(%rbx), %rax
	movb	$0, -3(%rax)
	call	_ZN5ImGui8EndGroupEv
	movl	$0, 304(%rbx)
	movb	$0, 270(%rbx)
.L4617:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L4623:
	leaq	.LC15(%rip), %rdx
	leaq	.LC188(%rip), %rcx
	movl	$8845, %r8d
	call	_assert
	jmp	.L4620
	.p2align 4,,7
.L4622:
	leaq	.LC15(%rip), %rdx
	leaq	.LC187(%rip), %rcx
	movl	$8844, %r8d
	call	_assert
	cmpb	$0, 270(%rbx)
	jne	.L4620
	jmp	.L4623
	.p2align 4,,7
.L4624:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	384(%rbx), %rax
	jmp	.L4621
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8SameLineEff
	.def	_ZN5ImGui8SameLineEff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8SameLineEff
_ZN5ImGui8SameLineEff:
.LFB784:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L4625
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jp	.L4634
	jne	.L4634
	ucomiss	%xmm1, %xmm2
	.p2align 4,,2
	ja	.L4638
.L4632:
	addss	200(%rax), %xmm1
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	%xmm1, 192(%rax)
.L4631:
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L4625:
	rep ret
	.p2align 4,,7
.L4634:
	maxss	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	movss	28(%rax), %xmm2
	subss	96(%rax), %xmm2
	addss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	addss	432(%rax), %xmm1
	addss	436(%rax), %xmm1
	movss	%xmm1, 192(%rax)
	jmp	.L4631
	.p2align 4,,7
.L4638:
	movss	5168(%rdx), %xmm1
	jmp	.L4632
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7NewLineEv
	.def	_ZN5ImGui7NewLineEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7NewLineEv
_ZN5ImGui7NewLineEv:
.LFB785:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L4639
	xorps	%xmm1, %xmm1
	movss	224(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L4644
	leaq	32(%rsp), %rcx
	movss	%xmm1, 32(%rsp)
	movss	%xmm1, 36(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	nop
.L4639:
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L4644:
	leaq	32(%rsp), %rcx
	movss	5944(%rdx), %xmm0
	movss	%xmm0, 36(%rsp)
	movss	%xmm1, 32(%rsp)
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
.LFB787:
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
.LFB788:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movl	444(%rax), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC189:
	.ascii "column_index < window->DC.ColumnsData.Size\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui15GetColumnOffsetEi
	.def	_ZN5ImGui15GetColumnOffsetEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15GetColumnOffsetEi
_ZN5ImGui15GetColumnOffsetEi:
.LFB790:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movslq	%ecx, %rbx
	testl	%ebx, %ebx
	movq	6008(%rax), %rsi
	js	.L4654
.L4648:
	movl	6068(%rax), %eax
	testl	%eax, %eax
	je	.L4649
	movl	472(%rsi), %edx
	addl	%ebx, %edx
	cmpl	%edx, %eax
	je	.L4655
.L4649:
	cmpl	480(%rsi), %ebx
	jge	.L4656
.L4650:
	movss	448(%rsi), %xmm0
	movq	488(%rsi), %rax
	movss	452(%rsi), %xmm1
	subss	%xmm0, %xmm1
	mulss	(%rax,%rbx,4), %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L4656:
	leaq	.LC15(%rip), %rdx
	leaq	.LC189(%rip), %rcx
	movl	$9395, %r8d
	call	_assert
	cmpl	480(%rsi), %ebx
	jl	.L4650
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L4650
	.p2align 4,,7
.L4654:
	movslq	440(%rsi), %rbx
	jmp	.L4648
	.p2align 4,,7
.L4655:
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
.LFB559:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	cmpl	$1, 444(%rbx)
	movss	80(%rbx), %xmm6
	je	.L4660
	movl	440(%rbx), %eax
	leal	1(%rax), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	subss	84(%rbx), %xmm0
.L4659:
	movss	%xmm0, 44(%rsp)
	movl	44(%rsp), %ecx
	movss	%xmm6, 44(%rsp)
	movl	44(%rsp), %eax
	movq	%rax, %rdx
	movaps	48(%rsp), %xmm6
	salq	$32, %rdx
	movl	%ecx, %eax
	orq	%rdx, %rax
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L4660:
	movss	76(%rbx), %xmm0
	jmp	.L4659
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	.def	_ZN5ImGui12CalcItemSizeE6ImVec2ff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12CalcItemSizeE6ImVec2ff
_ZN5ImGui12CalcItemSizeE6ImVec2ff:
.LFB380:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$112, %rsp
	.seh_stackalloc	112
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	.seh_endprologue
	xorps	%xmm7, %xmm7
	movl	%ecx, 32(%rsp)
	shrq	$32, %rcx
	movq	GImGui(%rip), %rbx
	movss	32(%rsp), %xmm8
	movl	%ecx, 32(%rsp)
	ucomiss	%xmm8, %xmm7
	movss	32(%rsp), %xmm6
	ja	.L4662
	ucomiss	%xmm6, %xmm7
	movaps	%xmm7, %xmm3
	movaps	%xmm7, %xmm0
	ja	.L4662
	ucomiss	%xmm8, %xmm7
	jnb	.L4683
.L4665:
	ucomiss	%xmm6, %xmm7
	jnb	.L4684
.L4669:
	movss	%xmm8, 32(%rsp)
	movl	32(%rsp), %ecx
	movss	%xmm6, 32(%rsp)
	movl	32(%rsp), %eax
	movq	%rax, %rdx
	movaps	64(%rsp), %xmm6
	salq	$32, %rdx
	movl	%ecx, %eax
	movaps	80(%rsp), %xmm7
	orq	%rdx, %rax
	movaps	96(%rsp), %xmm8
	addq	$112, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L4684:
	ucomiss	%xmm7, %xmm6
	jp	.L4679
	je	.L4682
.L4679:
	movq	6008(%rbx), %rax
	movss	.LC34(%rip), %xmm1
	movaps	%xmm1, %xmm0
	subss	196(%rax), %xmm3
	cmpless	%xmm3, %xmm0
	andps	%xmm0, %xmm3
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm3
	addss	%xmm3, %xmm6
	jmp	.L4669
	.p2align 4,,7
.L4662:
	movss	%xmm2, 60(%rsp)
	movss	%xmm1, 56(%rsp)
	call	_ZN5ImGui19GetContentRegionMaxEv
	movq	%rax, %rcx
	movq	6008(%rbx), %rdx
	shrq	$32, %rcx
	movss	56(%rsp), %xmm1
	movq	%rcx, 32(%rsp)
	movss	60(%rsp), %xmm2
	ucomiss	%xmm8, %xmm7
	movss	32(%rsp), %xmm3
	movl	%eax, 32(%rsp)
	movd	32(%rsp), %xmm0
	addss	32(%rdx), %xmm3
	addss	28(%rdx), %xmm0
	jb	.L4665
.L4683:
	ucomiss	%xmm7, %xmm8
	jp	.L4677
	je	.L4681
.L4677:
	movq	6008(%rbx), %rax
	movss	.LC34(%rip), %xmm4
	movaps	%xmm4, %xmm1
	subss	192(%rax), %xmm0
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm4, %xmm1
	orps	%xmm1, %xmm0
	addss	%xmm0, %xmm8
	jmp	.L4665
	.p2align 4,,7
.L4681:
	movaps	%xmm1, %xmm8
	jmp	.L4665
	.p2align 4,,7
.L4682:
	movaps	%xmm2, %xmm6
	jmp	.L4669
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	.def	_ZN5ImGui8ButtonExEPKcRK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
_ZN5ImGui8ButtonExEPKcRK6ImVec2i:
.LFB607:
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
	movaps	%xmm6, 160(%rsp)
	.seh_savexmm	%xmm6, 160
	movaps	%xmm7, 176(%rsp)
	.seh_savexmm	%xmm7, 176
	.seh_endprologue
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movl	%r8d, %edi
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L4686
.L4691:
	xorl	%eax, %eax
.L4687:
	movaps	160(%rsp), %xmm6
	movaps	176(%rsp), %xmm7
	addq	$200, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L4686:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rbp, %rcx
	movl	%eax, 92(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	testl	$256, %edi
	movq	%rax, 96(%rsp)
	movss	192(%rbx), %xmm7
	movss	196(%rbx), %xmm6
	movss	5160(%rsi), %xmm2
	je	.L4689
	movss	228(%rbx), %xmm0
	ucomiss	%xmm2, %xmm0
	jbe	.L4689
	subss	%xmm2, %xmm0
	addss	%xmm0, %xmm6
.L4689:
	movss	5156(%rsi), %xmm1
	addss	%xmm2, %xmm2
	movq	(%r12), %rcx
	addss	%xmm1, %xmm1
	leaq	128(%rsp), %r13
	leaq	144(%rsp), %r12
	addss	100(%rsp), %xmm2
	addss	96(%rsp), %xmm1
	call	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	movq	%rax, %rdx
	movss	5160(%rsi), %xmm1
	shrq	$32, %rdx
	movq	%r13, %rcx
	movss	%xmm7, 144(%rsp)
	movq	%rdx, 64(%rsp)
	movss	%xmm6, 148(%rsp)
	movss	64(%rsp), %xmm2
	movl	%eax, 64(%rsp)
	addss	%xmm6, %xmm2
	movd	64(%rsp), %xmm0
	addss	%xmm7, %xmm0
	movss	%xmm2, 156(%rsp)
	subss	%xmm6, %xmm2
	movss	%xmm0, 152(%rsp)
	subss	%xmm7, %xmm0
	movss	%xmm2, 132(%rsp)
	movss	%xmm0, 128(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	92(%rsp), %rdx
	movq	%r12, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L4691
	movl	%edi, %eax
	movl	92(%rsp), %edx
	leaq	91(%rsp), %r9
	orl	$1, %eax
	cmpb	$0, 317(%rbx)
	leaq	90(%rsp), %r8
	movq	%r12, %rcx
	cmovne	%eax, %edi
	movl	%edi, 32(%rsp)
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 90(%rsp)
	movl	%eax, %ebx
	movl	$22, %ecx
	jne	.L4702
.L4693:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	5164(%rsi), %xmm0
	movq	152(%rsp), %rdx
	movq	144(%rsp), %rcx
	movss	%xmm0, 32(%rsp)
	movl	%eax, %r8d
	movl	$1, %r9d
	addq	$5216, %rsi
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movss	-56(%rsi), %xmm0
	leaq	96(%rsp), %rax
	movss	-60(%rsi), %xmm1
	leaq	112(%rsp), %rcx
	movss	156(%rsp), %xmm2
	movq	%rax, 32(%rsp)
	movss	152(%rsp), %xmm3
	subss	%xmm0, %xmm2
	subss	%xmm1, %xmm3
	movq	%r12, 48(%rsp)
	movq	%rsi, 40(%rsp)
	addss	148(%rsp), %xmm0
	xorl	%r9d, %r9d
	movq	%rbp, %r8
	addss	144(%rsp), %xmm1
	movq	%r13, %rdx
	movss	%xmm2, 132(%rsp)
	movss	%xmm3, 128(%rsp)
	movss	%xmm0, 116(%rsp)
	movss	%xmm1, 112(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	movl	%ebx, %eax
	jmp	.L4687
	.p2align 4,,7
.L4702:
	cmpb	$1, 91(%rsp)
	sbbl	%ecx, %ecx
	addl	$24, %ecx
	jmp	.L4693
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6ButtonEPKcRK6ImVec2
	.def	_ZN5ImGui6ButtonEPKcRK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6ButtonEPKcRK6ImVec2
_ZN5ImGui6ButtonEPKcRK6ImVec2:
.LFB608:
	.seh_endprologue
	xorl	%r8d, %r8d
	jmp	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11SmallButtonEPKc
	.def	_ZN5ImGui11SmallButtonEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11SmallButtonEPKc
_ZN5ImGui11SmallButtonEPKc:
.LFB609:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	xorps	%xmm0, %xmm0
	movl	$256, %r8d
	leaq	32(%rsp), %rdx
	movq	GImGui(%rip), %rbx
	movss	%xmm0, 32(%rsp)
	movss	%xmm0, 36(%rsp)
	movss	5160(%rbx), %xmm6
	movss	%xmm0, 5160(%rbx)
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
.LFB610:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rdx, %rsi
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L4706
.L4708:
	xorl	%eax, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L4706:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	xorps	%xmm2, %xmm2
	movq	(%rsi), %rcx
	movl	%eax, 76(%rsp)
	movaps	%xmm2, %xmm1
	call	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	movq	%rax, %rsi
	movss	196(%rbx), %xmm2
	shrq	$32, %rsi
	movss	192(%rbx), %xmm3
	movq	%rsi, 48(%rsp)
	leaq	80(%rsp), %rsi
	movss	48(%rsp), %xmm1
	movl	%eax, 48(%rsp)
	addss	%xmm2, %xmm1
	movd	48(%rsp), %xmm0
	movq	192(%rbx), %rax
	movq	%rsi, %rcx
	leaq	96(%rsp), %rbx
	addss	%xmm3, %xmm0
	movq	%rax, 96(%rsp)
	movss	%xmm1, 108(%rsp)
	subss	%xmm2, %xmm1
	movss	%xmm0, 104(%rsp)
	subss	%xmm3, %xmm0
	movss	%xmm1, 84(%rsp)
	xorps	%xmm1, %xmm1
	movss	%xmm0, 80(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	76(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L4708
	movl	76(%rsp), %edx
	leaq	75(%rsp), %r8
	movl	$0, 32(%rsp)
	movq	%rsi, %r9
	movq	%rbx, %rcx
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f
	.def	_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f
_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f:
.LFB381:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.L4713
	ucomiss	%xmm0, %xmm1
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	jp	.L4714
	je	.L4721
.L4714:
	ucomiss	%xmm0, %xmm1
	jbe	.L4716
	movss	28(%rbx), %xmm0
	subss	96(%rbx), %xmm0
	addss	%xmm0, %xmm1
.L4716:
	subss	(%rcx), %xmm1
	movss	.LC28(%rip), %xmm3
	movaps	%xmm3, %xmm2
	cmpless	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm3, %xmm2
	movaps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
.L4713:
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L4721:
	movq	%rcx, 40(%rsp)
	call	_ZN5ImGui19GetContentRegionMaxEv
	movl	%eax, 36(%rsp)
	movq	40(%rsp), %rcx
	movd	36(%rsp), %xmm1
	addss	28(%rbx), %xmm1
	jmp	.L4716
	.seh_endproc
	.section .rdata,"dr"
.LC190:
	.ascii "text != __null\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui15TextUnformattedEPKcS1_
	.def	_ZN5ImGui15TextUnformattedEPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15TextUnformattedEPKcS1_
_ZN5ImGui15TextUnformattedEPKcS1_:
.LFB601:
	pushq	%r12
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
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	GImGui(%rip), %r12
	movq	6008(%r12), %rdi
	cmpb	$0, 140(%rdi)
	movb	$1, 138(%rdi)
	jne	.L4722
	testq	%rcx, %rcx
	je	.L4793
.L4724:
	testq	%rsi, %rsi
	je	.L4794
.L4725:
	movq	%rsi, %rax
	movss	312(%rdi), %xmm0
	subq	%rbx, %rax
	xorps	%xmm6, %xmm6
	cmpq	$2000, %rax
	jle	.L4726
	ucomiss	%xmm6, %xmm0
	jb	.L4795
.L4727:
	ucomiss	%xmm0, %xmm6
	ja	.L4749
	ucomiss	%xmm6, %xmm0
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbp
	jp	.L4751
	je	.L4796
.L4751:
	ucomiss	%xmm6, %xmm0
	jbe	.L4790
	movss	28(%rbp), %xmm6
	subss	96(%rbp), %xmm6
	addss	%xmm0, %xmm6
.L4753:
	subss	192(%rdi), %xmm6
	movss	.LC28(%rip), %xmm1
	movaps	%xmm1, %xmm0
	cmpless	%xmm6, %xmm0
	andps	%xmm0, %xmm6
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm6
	jmp	.L4749
	.p2align 4,,7
.L4795:
	movss	228(%rdi), %xmm13
	addss	196(%rdi), %xmm13
	movss	524(%rdi), %xmm0
	movss	192(%rdi), %xmm12
	addss	%xmm6, %xmm12
	ucomiss	%xmm13, %xmm0
	jb	.L4788
	cmpb	$0, 11432(%r12)
	movq	GImGui(%rip), %rbp
	movss	5944(%rbp), %xmm9
	je	.L4797
	cmpq	%rbx, %rsi
	ja	.L4760
	movaps	%xmm13, %xmm7
	movaps	%xmm6, %xmm8
.L4736:
	subss	%xmm13, %xmm7
	xorps	%xmm1, %xmm1
	addss	%xmm7, %xmm6
.L4728:
	addss	%xmm13, %xmm6
	leaq	48(%rsp), %rcx
	movss	%xmm12, 64(%rsp)
	addss	%xmm12, %xmm8
	movss	%xmm13, 68(%rsp)
	movss	%xmm6, 76(%rsp)
	subss	%xmm13, %xmm6
	movss	%xmm8, 72(%rsp)
	subss	%xmm12, %xmm8
	movss	%xmm6, 52(%rsp)
	movss	%xmm8, 48(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	nop
.L4722:
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
	addq	$240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L4726:
	ucomiss	%xmm6, %xmm0
	jnb	.L4727
.L4749:
	movaps	%xmm6, %xmm3
	xorl	%r8d, %r8d
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movq	%rax, 48(%rsp)
	leaq	48(%rsp), %rcx
	movss	196(%rdi), %xmm0
	addss	228(%rdi), %xmm0
	movss	192(%rdi), %xmm1
	movss	52(%rsp), %xmm2
	movss	48(%rsp), %xmm3
	addss	%xmm1, %xmm3
	movss	%xmm1, 64(%rsp)
	xorps	%xmm1, %xmm1
	addss	%xmm0, %xmm2
	movss	%xmm0, 68(%rsp)
	movss	%xmm3, 72(%rsp)
	movss	%xmm2, 76(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L4722
	movq	64(%rsp), %rcx
	movaps	%xmm6, %xmm3
	movq	%rsi, %r8
	movq	%rbx, %rdx
	call	_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f
	jmp	.L4722
	.p2align 4,,7
.L4796:
	call	_ZN5ImGui19GetContentRegionMaxEv
	movl	%eax, 44(%rsp)
	movss	28(%rbp), %xmm6
	movd	44(%rsp), %xmm0
	addss	%xmm0, %xmm6
	jmp	.L4753
	.p2align 4,,7
.L4794:
	movq	%rbx, %rcx
	call	strlen
	leaq	(%rbx,%rax), %rsi
	jmp	.L4725
	.p2align 4,,7
.L4797:
	movss	516(%rdi), %xmm0
	subss	%xmm13, %xmm0
	movaps	%xmm13, %xmm7
	divss	%xmm9, %xmm0
	cvttss2si	%xmm0, %r12d
	testl	%r12d, %r12d
	jle	.L4731
	cmpq	%rbx, %rsi
	jbe	.L4763
	xorl	%edi, %edi
	jmp	.L4734
	.p2align 4,,7
.L4798:
	cmpl	%edi, %r12d
	jle	.L4776
.L4734:
	movq	%rbx, %rcx
	movl	$10, %edx
	call	strchr
	testq	%rax, %rax
	cmove	%rsi, %rax
	incl	%edi
	leaq	1(%rax), %rbx
	cmpq	%rbx, %rsi
	ja	.L4798
.L4776:
	cvtsi2ss	%edi, %xmm7
.L4732:
	mulss	%xmm9, %xmm7
	addss	%xmm13, %xmm7
.L4731:
	cmpq	%rbx, %rsi
	movaps	%xmm6, %xmm8
	jbe	.L4736
	movaps	%xmm9, %xmm11
	movss	.LC21(%rip), %xmm15
	addss	%xmm12, %xmm15
	addss	%xmm7, %xmm11
.L4759:
	movaps	%xmm7, %xmm10
	movaps	%xmm6, %xmm8
	movss	.LC20(%rip), %xmm14
	jmp	.L4746
	.p2align 4,,7
.L4799:
	movss	524(%rax), %xmm0
	ucomiss	%xmm7, %xmm0
	jbe	.L4737
	ucomiss	512(%rax), %xmm15
	jbe	.L4737
	movss	520(%rax), %xmm0
	ucomiss	%xmm12, %xmm0
	jbe	.L4737
	.p2align 4,,7
.L4757:
	movaps	%xmm14, %xmm3
	xorl	%r8d, %r8d
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movl	%eax, 44(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	movss	44(%rsp), %xmm0
	movaps	%xmm0, %xmm1
	movss	%xmm12, 44(%rsp)
	movl	44(%rsp), %edx
	movss	%xmm10, 44(%rsp)
	movl	44(%rsp), %ecx
	cmpless	%xmm8, %xmm1
	movq	%rcx, %rax
	andps	%xmm1, %xmm8
	andnps	%xmm0, %xmm1
	salq	$32, %rax
	movl	%edx, %ecx
	movq	%rbx, %rdx
	orq	%rax, %rcx
	orps	%xmm1, %xmm8
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	testq	%rdi, %rdi
	addss	%xmm9, %xmm7
	cmove	%rsi, %rdi
	addss	%xmm9, %xmm11
	leaq	1(%rdi), %rbx
	addss	%xmm9, %xmm10
	cmpq	%rbx, %rsi
	jbe	.L4769
	movq	GImGui(%rip), %rbp
.L4746:
	movl	$10, %edx
	movq	%rbx, %rcx
	call	strchr
	movq	%rax, %rdi
	movq	6008(%rbp), %rax
	ucomiss	516(%rax), %xmm11
	ja	.L4799
.L4737:
	cmpb	$0, 11432(%rbp)
	jne	.L4757
	cmpq	%rbx, %rsi
	jbe	.L4769
	xorl	%edi, %edi
	.p2align 4,,7
.L4748:
	movq	%rbx, %rcx
	movl	$10, %edx
	call	strchr
	testq	%rax, %rax
	cmove	%rsi, %rax
	incl	%edi
	leaq	1(%rax), %rbx
	cmpq	%rbx, %rsi
	ja	.L4748
	cvtsi2ss	%edi, %xmm7
.L4745:
	mulss	%xmm9, %xmm7
	addss	%xmm10, %xmm7
	jmp	.L4736
	.p2align 4,,7
.L4790:
	movaps	%xmm0, %xmm6
	jmp	.L4753
	.p2align 4,,7
.L4793:
	leaq	.LC15(%rip), %rdx
	leaq	.LC190(%rip), %rcx
	movl	$5387, %r8d
	call	_assert
	jmp	.L4724
	.p2align 4,,7
.L4788:
	movaps	%xmm6, %xmm8
	movaps	%xmm6, %xmm1
	jmp	.L4728
	.p2align 4,,7
.L4760:
	movaps	%xmm13, %xmm11
	movss	.LC21(%rip), %xmm15
	movaps	%xmm13, %xmm7
	addss	%xmm9, %xmm11
	addss	%xmm12, %xmm15
	jmp	.L4759
	.p2align 4,,7
.L4769:
	movaps	%xmm6, %xmm7
	jmp	.L4745
.L4763:
	movaps	%xmm6, %xmm7
	jmp	.L4732
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5TextVEPKcPc
	.def	_ZN5ImGui5TextVEPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5TextVEPKcPc
_ZN5ImGui5TextVEPKcPc:
.LFB593:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %r10
	cmpb	$0, 140(%r10)
	movb	$1, 138(%r10)
	je	.L4804
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L4804:
	leaq	11960(%rax), %rbx
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L4803
	cmpl	$3072, %eax
	movslq	%eax, %rdx
	jg	.L4803
.L4802:
	addq	%rbx, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rdx)
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui15TextUnformattedEPKcS1_
	.p2align 4,,7
.L4803:
	movl	$3072, %edx
	jmp	.L4802
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12TextDisabledEPKcz
	.def	_ZN5ImGui12TextDisabledEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12TextDisabledEPKcz
_ZN5ImGui12TextDisabledEPKcz:
.LFB598:
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
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	5264(%rax), %rdx
	movq	%rsi, 40(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movq	GImGui(%rip), %rcx
	movq	6008(%rcx), %rax
	movq	%rcx, %rbx
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	je	.L4813
.L4806:
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L4814
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L4809:
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L4813:
	leaq	11960(%rcx), %rbx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L4811
	cmpl	$3072, %eax
	movslq	%eax, %rdx
	jg	.L4811
.L4807:
	addq	%rbx, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	movq	GImGui(%rip), %rbx
	jmp	.L4806
	.p2align 4,,7
.L4811:
	movl	$3072, %edx
	jmp	.L4807
	.p2align 4,,7
.L4814:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6136(%rbx), %rdx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L4809
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6136(%rbx), %eax
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui4TextEPKcz
	.def	_ZN5ImGui4TextEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui4TextEPKcz
_ZN5ImGui4TextEPKcz:
.LFB594:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%r9, 88(%rsp)
	movq	%rdx, 72(%rsp)
	leaq	72(%rsp), %r9
	movq	%r8, 80(%rsp)
	movq	6008(%rax), %rdx
	movq	%r9, 40(%rsp)
	cmpb	$0, 140(%rdx)
	movb	$1, 138(%rdx)
	je	.L4819
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L4819:
	leaq	11960(%rax), %rbx
	movq	%rcx, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L4818
	cmpl	$3072, %eax
	movslq	%eax, %rdx
	jg	.L4818
	addq	%rbx, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	nop
.L4820:
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L4818:
	movl	$3072, %edx
	movq	%rbx, %rcx
	addq	%rbx, %rdx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	jmp	.L4820
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11TextColoredERK6ImVec4PKcz
	.def	_ZN5ImGui11TextColoredERK6ImVec4PKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11TextColoredERK6ImVec4PKcz
_ZN5ImGui11TextColoredERK6ImVec4PKcz:
.LFB596:
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
	xorl	%ecx, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movq	GImGui(%rip), %rcx
	movq	6008(%rcx), %rax
	movq	%rcx, %rbx
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	je	.L4829
.L4822:
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L4830
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L4825:
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L4829:
	leaq	11960(%rcx), %rbx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L4827
	cmpl	$3072, %eax
	movslq	%eax, %rdx
	jg	.L4827
.L4823:
	addq	%rbx, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	movq	GImGui(%rip), %rbx
	jmp	.L4822
	.p2align 4,,7
.L4827:
	movl	$3072, %edx
	jmp	.L4823
	.p2align 4,,7
.L4830:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6136(%rbx), %rdx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L4825
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6136(%rbx), %eax
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12TextColoredVERK6ImVec4PKcPc
	.def	_ZN5ImGui12TextColoredVERK6ImVec4PKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12TextColoredVERK6ImVec4PKcPc
_ZN5ImGui12TextColoredVERK6ImVec4PKcPc:
.LFB595:
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
	movq	GImGui(%rip), %rcx
	movq	6008(%rcx), %rax
	movq	%rcx, %rbx
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	je	.L4839
.L4832:
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L4840
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L4835:
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L4839:
	leaq	11960(%rcx), %rbx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L4837
	cmpl	$3072, %eax
	movslq	%eax, %rdx
	jg	.L4837
.L4833:
	addq	%rbx, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	movq	GImGui(%rip), %rbx
	jmp	.L4832
	.p2align 4,,7
.L4837:
	movl	$3072, %edx
	jmp	.L4833
	.p2align 4,,7
.L4840:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6136(%rbx), %rdx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L4835
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6136(%rbx), %eax
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13TextDisabledVEPKcPc
	.def	_ZN5ImGui13TextDisabledVEPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13TextDisabledVEPKcPc
_ZN5ImGui13TextDisabledVEPKcPc:
.LFB597:
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
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	xorl	%ecx, %ecx
	leaq	5264(%rax), %rdx
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movq	GImGui(%rip), %rcx
	movq	6008(%rcx), %rax
	movq	%rcx, %rbx
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	je	.L4849
.L4842:
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L4850
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L4845:
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L4849:
	leaq	11960(%rcx), %rbx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3073, %edx
	movq	%rbx, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L4847
	cmpl	$3072, %eax
	movslq	%eax, %rdx
	jg	.L4847
.L4843:
	addq	%rbx, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rdx)
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	movq	GImGui(%rip), %rbx
	jmp	.L4842
	.p2align 4,,7
.L4847:
	movl	$3072, %edx
	jmp	.L4843
	.p2align 4,,7
.L4850:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6136(%rbx), %rdx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L4845
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6136(%rbx), %eax
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC191:
	.ascii "column_index > 0\0"
	.align 8
.LC192:
	.ascii "g.ActiveId == window->DC.ColumnsSetId + ImGuiID(column_index)\0"
	.text
	.p2align 4,,15
	.def	_ZL22GetDraggedColumnOffseti;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL22GetDraggedColumnOffseti
_ZL22GetDraggedColumnOffseti:
.LFB789:
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
	testl	%ecx, %ecx
	movl	%ecx, %esi
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rdi
	jle	.L4855
.L4852:
	movl	472(%rdi), %eax
	addl	%esi, %eax
	cmpl	%eax, 6068(%rbx)
	je	.L4853
	leaq	.LC15(%rip), %rdx
	leaq	.LC192(%rip), %rcx
	movl	$9373, %r8d
	call	_assert
.L4853:
	movss	264(%rbx), %xmm6
	leal	1(%rsi), %ecx
	subss	6080(%rbx), %xmm6
	subss	28(%rdi), %xmm6
	call	_ZN5ImGui15GetColumnOffsetEi
	leal	-1(%rsi), %ecx
	movaps	%xmm0, %xmm8
	movss	5196(%rbx), %xmm7
	call	_ZN5ImGui15GetColumnOffsetEi
	addss	5196(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L4854
	movaps	%xmm8, %xmm0
	subss	%xmm7, %xmm0
	minss	%xmm6, %xmm0
.L4854:
	cvttss2si	%xmm0, %eax
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	cvtsi2ss	%eax, %xmm0
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L4855:
	leaq	.LC15(%rip), %rdx
	leaq	.LC191(%rip), %rcx
	movl	$9372, %r8d
	call	_assert
	jmp	.L4852
	.seh_endproc
	.p2align 4,,15
	.def	_ZL18PushColumnClipRecti.constprop.158;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL18PushColumnClipRecti.constprop.158
_ZL18PushColumnClipRecti.constprop.158:
.LFB6180:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	movaps	%xmm8, 80(%rsp)
	.seh_savexmm	%xmm8, 80
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movss	.LC29(%rip), %xmm7
	movq	6008(%rax), %rsi
	movl	440(%rsi), %ebx
	movss	28(%rsi), %xmm8
	movb	$1, 138(%rsi)
	addss	%xmm7, %xmm8
	movl	%ebx, %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	addss	28(%rsi), %xmm7
	leal	1(%rbx), %ecx
	movaps	%xmm0, %xmm6
	call	_ZN5ImGui15GetColumnOffsetEi
	movss	.LC28(%rip), %xmm1
	addss	%xmm8, %xmm6
	movl	$1, %r9d
	addss	%xmm7, %xmm0
	subss	%xmm1, %xmm6
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm4
	cvttss2si	%xmm6, %eax
	movss	%xmm4, 44(%rsp)
	movl	44(%rsp), %r8d
	cvtsi2ss	%eax, %xmm5
	movabsq	$-36028801313931264, %rax
	movss	%xmm5, 44(%rsp)
	movl	44(%rsp), %edx
	orq	%rax, %rdx
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movabsq	$9187343235540844544, %rax
	orq	%rax, %r8
	movq	656(%rbx), %rcx
	movb	$1, 138(%rbx)
	call	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b
	movq	656(%rbx), %rsi
	movslq	80(%rsi), %rax
	testl	%eax, %eax
	jle	.L4858
.L4857:
	movq	88(%rsi), %rdx
	salq	$4, %rax
	leaq	-16(%rdx,%rax), %rax
	movss	4(%rax), %xmm2
	movss	12(%rax), %xmm0
	movss	8(%rax), %xmm1
	movss	(%rax), %xmm3
	movss	%xmm3, 512(%rbx)
	movss	%xmm2, 516(%rbx)
	movss	%xmm1, 520(%rbx)
	movss	%xmm0, 524(%rbx)
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	movaps	80(%rsp), %xmm8
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L4858:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	80(%rsi), %rax
	jmp	.L4857
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.143;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.143
_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.143:
.LFB6195:
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
	.seh_endprologue
	movq	%rcx, %rbp
	movl	%edx, %r12d
	movq	%r8, %rsi
	movq	GImGui(%rip), %r13
	movq	6008(%r13), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L4870
	movq	%rcx, %rdx
	xorps	%xmm10, %xmm10
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rbp, %rcx
	movl	%eax, 92(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movss	4(%rsi), %xmm7
	movq	%rax, 96(%rsp)
	ucomiss	%xmm10, %xmm7
	jp	.L4862
	je	.L4895
.L4862:
	movss	(%rsi), %xmm0
	ucomiss	%xmm10, %xmm0
	jp	.L4863
	.p2align 4,,3
	je	.L4896
.L4863:
	movss	196(%rbx), %xmm6
	xorps	%xmm1, %xmm1
	addss	228(%rbx), %xmm6
	movss	192(%rbx), %xmm8
	addss	%xmm8, %xmm0
	leaq	144(%rsp), %rdi
	movss	%xmm8, 128(%rsp)
	movq	%rdi, %rcx
	movss	%xmm0, 136(%rsp)
	subss	%xmm8, %xmm0
	addss	%xmm6, %xmm7
	movss	%xmm6, 132(%rsp)
	movss	%xmm0, 144(%rsp)
	movaps	%xmm7, %xmm0
	movss	%xmm7, 140(%rsp)
	subss	%xmm6, %xmm0
	movss	%xmm0, 148(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movss	84(%rbx), %xmm9
	call	_ZN5ImGui19GetContentRegionMaxEv
	movl	%eax, 76(%rsp)
	movss	96(%rsp), %xmm2
	movd	76(%rsp), %xmm0
	addss	28(%rbx), %xmm0
	subss	%xmm9, %xmm0
	subss	192(%rbx), %xmm0
	movaps	%xmm0, %xmm1
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	4(%rsi), %xmm1
	ucomiss	%xmm10, %xmm1
	jp	.L4881
	jne	.L4881
.L4866:
	movss	(%rsi), %xmm1
	ucomiss	%xmm10, %xmm1
	jp	.L4868
	.p2align 4,,3
	jne	.L4868
	addss	%xmm8, %xmm0
	addss	%xmm9, %xmm0
.L4875:
	movss	5168(%r13), %xmm9
	leaq	92(%rsp), %rdx
	movq	%rdi, %rcx
	movaps	%xmm9, %xmm2
	movss	.LC29(%rip), %xmm1
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	movss	5172(%r13), %xmm2
	mulss	%xmm2, %xmm1
	cvtsi2ss	%eax, %xmm3
	cvttss2si	%xmm1, %eax
	subss	%xmm3, %xmm9
	cvtsi2ss	%eax, %xmm1
	subss	%xmm3, %xmm8
	addss	%xmm9, %xmm0
	movss	%xmm8, 144(%rsp)
	movss	%xmm0, 152(%rsp)
	subss	%xmm1, %xmm2
	subss	%xmm1, %xmm6
	addss	%xmm2, %xmm7
	movss	%xmm6, 148(%rsp)
	movss	%xmm7, 156(%rsp)
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	movl	%eax, %esi
	je	.L4870
	movl	92(%rsp), %edx
	leaq	91(%rsp), %r9
	leaq	90(%rsp), %r8
	movl	$0, 32(%rsp)
	movq	%rdi, %rcx
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movl	%eax, %r13d
	movzbl	90(%rsp), %eax
	testb	%al, %al
	jne	.L4882
	testb	%r12b, %r12b
	jne	.L4882
.L4871:
	leaq	112(%rsp), %rax
	leaq	8(%rdi), %rdx
	leaq	128(%rsp), %rcx
	xorl	%r9d, %r9d
	movq	$0, 48(%rsp)
	movq	%rbp, %r8
	movq	%rax, 40(%rsp)
	leaq	96(%rsp), %rax
	movl	$0x00000000, 112(%rsp)
	movl	$0x00000000, 116(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	testb	%r13b, %r13b
	je	.L4870
	testb	$2, 15(%rbx)
	je	.L4886
	call	_ZN5ImGui17CloseCurrentPopupEv
	.p2align 4,,4
	jmp	.L4886
	.p2align 4,,7
.L4870:
	xorl	%esi, %esi
.L4886:
	movaps	160(%rsp), %xmm6
	movl	%esi, %eax
	movaps	176(%rsp), %xmm7
	movaps	192(%rsp), %xmm8
	movaps	208(%rsp), %xmm9
	movaps	224(%rsp), %xmm10
	addq	$248, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L4868:
	addss	%xmm8, %xmm1
	movaps	%xmm1, %xmm0
	jmp	.L4875
	.p2align 4,,7
.L4881:
	movaps	%xmm1, %xmm7
	addss	%xmm6, %xmm7
	jmp	.L4866
	.p2align 4,,7
.L4896:
	movss	96(%rsp), %xmm0
	jmp	.L4863
	.p2align 4,,7
.L4895:
	movss	100(%rsp), %xmm7
	jmp	.L4862
	.p2align 4,,7
.L4882:
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	cmpb	$0, 91(%rsp)
	je	.L4873
	andl	$-2, %ecx
	addl	$27, %ecx
.L4874:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	152(%rsp), %rdx
	movq	144(%rsp), %rcx
	movl	%eax, %r8d
	movl	$0x00000000, 32(%rsp)
	xorl	%r9d, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	jmp	.L4871
	.p2align 4,,7
.L4873:
	addl	$26, %ecx
	jmp	.L4874
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	.def	_ZN5ImGui10SelectableEPKcbiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
_ZN5ImGui10SelectableEPKcbiRK6ImVec2:
.LFB758:
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
	.seh_endprologue
	movq	%rcx, %rbp
	movl	%r8d, %ebx
	movq	%r9, %r14
	movq	GImGui(%rip), %rsi
	movl	%edx, 72(%rsp)
	movq	6008(%rsi), %r13
	cmpb	$0, 140(%r13)
	movb	$1, 138(%r13)
	jne	.L4914
	movl	%r8d, %r12d
	andl	$2, %r12d
	jne	.L4978
.L4900:
	movq	%rbp, %rdx
	movq	%r13, %rcx
	xorps	%xmm9, %xmm9
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rbp, %rcx
	movl	%eax, 92(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movss	4(%r14), %xmm8
	movq	%rax, 96(%rsp)
	ucomiss	%xmm9, %xmm8
	jp	.L4901
	je	.L4979
.L4901:
	movss	(%r14), %xmm0
	ucomiss	%xmm9, %xmm0
	jp	.L4902
	.p2align 4,,2
	je	.L4980
.L4902:
	movss	228(%r13), %xmm7
	leaq	144(%rsp), %rdi
	addss	196(%r13), %xmm7
	movss	192(%r13), %xmm10
	addss	%xmm10, %xmm0
	xorps	%xmm1, %xmm1
	movq	%rdi, %rcx
	movss	%xmm10, 128(%rsp)
	movss	%xmm0, 136(%rsp)
	subss	%xmm10, %xmm0
	addss	%xmm7, %xmm8
	movss	%xmm7, 132(%rsp)
	movss	%xmm0, 144(%rsp)
	movaps	%xmm8, %xmm0
	movss	%xmm8, 140(%rsp)
	subss	%xmm7, %xmm0
	movss	%xmm0, 148(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	testl	%r12d, %r12d
	movss	84(%r13), %xmm11
	je	.L4903
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	76(%rax), %xmm6
.L4904:
	movss	28(%r13), %xmm0
	addss	%xmm6, %xmm0
	movss	96(%rsp), %xmm3
	movss	4(%r14), %xmm1
	ucomiss	%xmm9, %xmm1
	subss	%xmm11, %xmm0
	subss	192(%r13), %xmm0
	movaps	%xmm0, %xmm2
	cmpnless	%xmm3, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm3, %xmm2
	orps	%xmm2, %xmm0
	jp	.L4945
	je	.L4907
.L4945:
	addss	%xmm7, %xmm1
	movaps	%xmm1, %xmm8
.L4907:
	movss	(%r14), %xmm1
	ucomiss	%xmm9, %xmm1
	jp	.L4946
	je	.L4968
.L4946:
	testb	$64, %bl
	je	.L4911
.L4968:
	addss	%xmm10, %xmm0
	movaps	%xmm11, %xmm1
	addss	%xmm0, %xmm1
.L4936:
	movss	5168(%rsi), %xmm0
	leaq	92(%rsp), %rdx
	movq	%rdi, %rcx
	movaps	%xmm0, %xmm3
	movss	.LC29(%rip), %xmm2
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %eax
	movss	5172(%rsi), %xmm3
	mulss	%xmm3, %xmm2
	cvtsi2ss	%eax, %xmm4
	cvttss2si	%xmm2, %eax
	subss	%xmm4, %xmm0
	cvtsi2ss	%eax, %xmm2
	subss	%xmm4, %xmm10
	addss	%xmm1, %xmm0
	movss	%xmm10, 144(%rsp)
	movss	%xmm0, 152(%rsp)
	subss	%xmm2, %xmm3
	subss	%xmm2, %xmm7
	addss	%xmm3, %xmm8
	movss	%xmm7, 148(%rsp)
	movss	%xmm8, 156(%rsp)
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	movl	%eax, %r15d
	jne	.L4913
	testl	%r12d, %r12d
	je	.L4914
	cmpl	$1, 444(%r13)
	jle	.L4914
	call	_ZL18PushColumnClipRecti.constprop.158
	jmp	.L4954
	.p2align 4,,7
.L4914:
	xorl	%r15d, %r15d
.L4954:
	movaps	160(%rsp), %xmm6
	movl	%r15d, %eax
	movaps	176(%rsp), %xmm7
	movaps	192(%rsp), %xmm8
	movaps	208(%rsp), %xmm9
	movaps	224(%rsp), %xmm10
	movaps	240(%rsp), %xmm11
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
	.p2align 4,,7
.L4978:
	cmpl	$1, 444(%r13)
	jle	.L4900
	call	_ZN5ImGui11PopClipRectEv
	jmp	.L4900
	.p2align 4,,7
.L4980:
	movss	96(%rsp), %xmm0
	.p2align 4,,2
	jmp	.L4902
	.p2align 4,,7
.L4979:
	movss	100(%rsp), %xmm8
	jmp	.L4901
	.p2align 4,,7
.L4913:
	movl	%ebx, %r8d
	movl	%ebx, %r9d
	movl	$158, %r14d
	andl	$8, %r8d
	movl	%ebx, %r10d
	cmpl	$1, %r8d
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$150, %ecx
	cmpl	$1, %r8d
	sbbl	%eax, %eax
	andl	$-4, %eax
	addl	$22, %eax
	cmpl	$1, %r8d
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$132, %edx
	cmpl	$1, %r8d
	sbbl	%r8d, %r8d
	notl	%r8d
	andl	$4, %r8d
	andl	$16, %r9d
	movl	$12, %r9d
	cmovne	%r14d, %ecx
	movl	$30, %r14d
	cmovne	%r9d, %r8d
	cmovne	%r14d, %eax
	movl	$140, %r14d
	cmovne	%r14d, %edx
	andl	$32, %r10d
	movl	%r10d, 76(%rsp)
	jne	.L4981
	testb	$4, %bl
	je	.L4982
	movl	%eax, 32(%rsp)
.L4972:
	movl	92(%rsp), %edx
	leaq	91(%rsp), %r9
	leaq	90(%rsp), %r8
	movq	%rdi, %rcx
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 72(%rsp)
	movl	%eax, %r14d
	movzbl	90(%rsp), %eax
	jne	.L4947
	testb	%al, %al
	je	.L4920
.L4947:
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	cmpb	$0, 91(%rsp)
	je	.L4922
	andl	$-2, %ecx
	addl	$27, %ecx
.L4923:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	152(%rsp), %rdx
	movq	144(%rsp), %rcx
	xorl	%r9d, %r9d
	movl	%eax, %r8d
	movl	$0x00000000, 32(%rsp)
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	testl	%r12d, %r12d
	je	.L4924
.L4934:
	cmpl	$1, 444(%r13)
	jle	.L4924
	call	_ZL18PushColumnClipRecti.constprop.158
	call	_ZN5ImGui19GetContentRegionMaxEv
	movl	%eax, 72(%rsp)
	movss	152(%rsp), %xmm1
	movd	72(%rsp), %xmm0
	subss	%xmm6, %xmm0
	subss	%xmm0, %xmm1
	movss	%xmm1, 152(%rsp)
.L4924:
	movl	76(%rsp), %eax
	testl	%eax, %eax
	jne	.L4935
.L4925:
	leaq	112(%rsp), %rax
	leaq	8(%rdi), %rdx
	leaq	128(%rsp), %rcx
	movq	$0, 48(%rsp)
	xorl	%r9d, %r9d
	movq	%rbp, %r8
	movq	%rax, 40(%rsp)
	leaq	96(%rsp), %rax
	movl	$0x00000000, 112(%rsp)
	movl	$0x00000000, 116(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
.L4928:
	testb	%r14b, %r14b
	je	.L4914
	andl	$1, %ebx
	jne	.L4954
	testb	$2, 15(%r13)
	je	.L4954
	call	_ZN5ImGui17CloseCurrentPopupEv
	.p2align 4,,3
	jmp	.L4954
	.p2align 4,,7
.L4903:
	.p2align 4,,8
	call	_ZN5ImGui19GetContentRegionMaxEv
	movl	%eax, 76(%rsp)
	movss	76(%rsp), %xmm6
	jmp	.L4904
	.p2align 4,,7
.L4911:
	addss	%xmm10, %xmm1
	jmp	.L4936
	.p2align 4,,7
.L4981:
	testb	$4, %bl
	jne	.L4983
	movl	%edx, 32(%rsp)
.L4973:
	movl	92(%rsp), %edx
	leaq	91(%rsp), %r9
	leaq	90(%rsp), %r8
	movq	%rdi, %rcx
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 90(%rsp)
	movl	%eax, %r14d
	je	.L4984
	cmpb	$1, 91(%rsp)
	sbbl	%ecx, %ecx
	addl	$27, %ecx
	jmp	.L4923
	.p2align 4,,7
.L4984:
	testl	%r12d, %r12d
	jne	.L4934
.L4935:
	leaq	5264(%rsi), %rdx
	xorl	%ecx, %ecx
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	leaq	112(%rsp), %rax
	leaq	8(%rdi), %rdx
	leaq	128(%rsp), %rcx
	xorl	%r9d, %r9d
	movq	%rbp, %r8
	movq	$0, 48(%rsp)
	movq	%rax, 40(%rsp)
	leaq	96(%rsp), %rax
	movl	$0x00000000, 112(%rsp)
	movl	$0x00000000, 116(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	call	_ZN5ImGui13PopStyleColorEi.constprop.161
	jmp	.L4928
	.p2align 4,,7
.L4922:
	addl	$26, %ecx
	.p2align 4,,5
	jmp	.L4923
.L4920:
	testl	%r12d, %r12d
	.p2align 4,,5
	jne	.L4934
	.p2align 4,,5
	jmp	.L4925
.L4982:
	movl	%r8d, 32(%rsp)
	.p2align 4,,3
	jmp	.L4972
.L4983:
	movl	%ecx, 32(%rsp)
	.p2align 4,,2
	jmp	.L4973
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
	.def	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
_ZN5ImGui10SelectableEPKcPbiRK6ImVec2:
.LFB759:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbx
	movzbl	(%rdx), %edx
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	testb	%al, %al
	je	.L4986
	xorb	$1, (%rbx)
.L4986:
	addq	$32, %rsp
	popq	%rbx
	ret
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
.LFB777:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L4990
	cmpl	$1, 444(%rbx)
	jle	.L4992
	call	_ZN5ImGui11PopClipRectEv
.L4992:
	movl	384(%rbx), %eax
	movss	28(%rbx), %xmm1
	movss	36(%rbx), %xmm2
	addss	%xmm1, %xmm2
	testl	%eax, %eax
	je	.L4993
	addss	428(%rbx), %xmm1
.L4993:
	movss	196(%rbx), %xmm0
	leaq	48(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movss	.LC28(%rip), %xmm6
	movss	%xmm0, 68(%rsp)
	addss	%xmm6, %xmm0
	movq	%rdi, %rcx
	movss	%xmm1, 64(%rsp)
	xorps	%xmm1, %xmm1
	movss	%xmm2, 72(%rsp)
	movss	%xmm0, 76(%rsp)
	movss	%xmm1, 48(%rsp)
	movss	%xmm1, 52(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	xorl	%edx, %edx
	movq	%rsi, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	jne	.L4994
	cmpl	$1, 444(%rbx)
	jle	.L4990
	call	_ZL18PushColumnClipRecti.constprop.158
	nop
.L4990:
	movaps	80(%rsp), %xmm6
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L4994:
	movl	$5, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	656(%rbx), %rcx
	movss	72(%rsp), %xmm0
	movss	%xmm6, 32(%rsp)
	movl	%eax, %r9d
	movq	%rdi, %r8
	movss	%xmm0, 48(%rsp)
	movq	%rsi, %rdx
	movss	68(%rsp), %xmm0
	movss	%xmm0, 52(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	movq	GImGui(%rip), %rax
	cmpb	$0, 11432(%rax)
	jne	.L4999
.L4996:
	cmpl	$1, 444(%rbx)
	jle	.L4990
	call	_ZL18PushColumnClipRecti.constprop.158
	movss	196(%rbx), %xmm0
	movss	%xmm0, 460(%rbx)
	jmp	.L4990
	.p2align 4,,7
.L4999:
	leaq	.LC193(%rip), %rcx
	call	_ZN5ImGui7LogTextEPKcz
	jmp	.L4996
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui26GetContentRegionAvailWidthEv
	.def	_ZN5ImGui26GetContentRegionAvailWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui26GetContentRegionAvailWidthEv
_ZN5ImGui26GetContentRegionAvailWidthEv:
.LFB561:
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
	je	.L5003
	movl	440(%rbx), %eax
	leal	1(%rax), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	subss	84(%rbx), %xmm0
	subss	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L5003:
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
.LFB560:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$112, %rsp
	.seh_stackalloc	112
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	cmpl	$1, 444(%rbx)
	movss	196(%rbx), %xmm6
	movss	192(%rbx), %xmm7
	subss	32(%rbx), %xmm6
	subss	28(%rbx), %xmm7
	movss	80(%rbx), %xmm8
	je	.L5007
	movl	440(%rbx), %eax
	leal	1(%rax), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	subss	84(%rbx), %xmm0
.L5006:
	subss	%xmm7, %xmm0
	movaps	80(%rsp), %xmm7
	subss	%xmm6, %xmm8
	movaps	64(%rsp), %xmm6
	movss	%xmm0, 44(%rsp)
	movl	44(%rsp), %edx
	movss	%xmm8, 48(%rsp)
	movq	48(%rsp), %rax
	movaps	96(%rsp), %xmm8
	salq	$32, %rax
	orq	%rdx, %rax
	addq	$112, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L5007:
	movss	76(%rbx), %xmm0
	jmp	.L5006
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13CalcItemWidthEv
	.def	_ZN5ImGui13CalcItemWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13CalcItemWidthEv
_ZN5ImGui13CalcItemWidthEv:
.LFB507:
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	xorps	%xmm0, %xmm0
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movss	308(%rax), %xmm6
	ucomiss	%xmm6, %xmm0
	ja	.L5013
.L5012:
	cvttss2si	%xmm6, %eax
	cvtsi2ss	%eax, %xmm0
.L5010:
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
	ret
	.p2align 4,,7
.L5013:
	call	_ZN5ImGui21GetContentRegionAvailEv
	movl	%eax, 44(%rsp)
	movd	44(%rsp), %xmm0
	addss	%xmm0, %xmm6
	movss	.LC28(%rip), %xmm0
	ucomiss	%xmm6, %xmm0
	jb	.L5012
	jmp	.L5010
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10LabelTextVEPKcS1_Pc
	.def	_ZN5ImGui10LabelTextVEPKcS1_Pc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10LabelTextVEPKcS1_Pc
_ZN5ImGui10LabelTextVEPKcS1_Pc:
.LFB603:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$192, %rsp
	.seh_stackalloc	192
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movaps	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	movaps	%xmm8, 176(%rsp)
	.seh_savexmm	%xmm8, 176
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rbp
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L5030
.L5014:
	movaps	144(%rsp), %xmm6
	movaps	160(%rsp), %xmm7
	movaps	176(%rsp), %xmm8
	addq	$192, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L5030:
	movq	%r8, 80(%rsp)
	xorps	%xmm8, %xmm8
	call	_ZN5ImGui13CalcItemWidthEv
	movq	%rdi, %rcx
	movaps	%xmm0, %xmm6
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movss	5160(%rsi), %xmm1
	movl	%eax, 72(%rsp)
	movaps	%xmm1, %xmm2
	shrq	$32, %rax
	movaps	%xmm6, %xmm0
	movq	80(%rsp), %r8
	movss	192(%rbx), %xmm5
	addss	%xmm1, %xmm2
	addss	%xmm5, %xmm0
	movss	72(%rsp), %xmm7
	movl	%eax, 72(%rsp)
	movss	196(%rbx), %xmm4
	movss	72(%rsp), %xmm3
	movq	192(%rbx), %rax
	ucomiss	%xmm8, %xmm7
	movss	%xmm0, 120(%rsp)
	movaps	%xmm2, %xmm0
	movq	%rax, 112(%rsp)
	addss	%xmm3, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 124(%rsp)
	movaps	%xmm8, %xmm0
	jbe	.L5016
	movss	5176(%rsi), %xmm0
.L5016:
	addss	%xmm6, %xmm0
	leaq	96(%rsp), %rbx
	movq	%r8, 72(%rsp)
	addss	%xmm4, %xmm2
	movq	%rax, 128(%rsp)
	movq	%rbx, %rcx
	addss	%xmm5, %xmm0
	addss	%xmm3, %xmm2
	addss	%xmm7, %xmm0
	movss	%xmm2, 140(%rsp)
	subss	%xmm4, %xmm2
	movss	%xmm0, 136(%rsp)
	subss	%xmm5, %xmm0
	movss	%xmm2, 100(%rsp)
	movss	%xmm0, 96(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	128(%rsp), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	movq	72(%rsp), %r8
	je	.L5014
	leaq	11960(%rsi), %r12
	movq	%r8, %r9
	movl	$3073, %edx
	movq	%rbp, %r8
	movq	%r12, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L5023
	cmpl	$3072, %eax
	movslq	%eax, %r9
	jg	.L5023
.L5018:
	leaq	112(%rsp), %rcx
	addq	%r12, %r9
	movq	%r12, %r8
	movb	$0, (%r9)
	movq	$0, 48(%rsp)
	leaq	8(%rcx), %rdx
	movq	%rbx, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0x00000000, 96(%rsp)
	movl	$0x3f000000, 100(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	ucomiss	%xmm8, %xmm7
	jbe	.L5014
	movss	120(%rsp), %xmm0
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addss	5176(%rsi), %xmm0
	movq	%rdi, %rdx
	movss	%xmm0, 72(%rsp)
	movl	72(%rsp), %ecx
	movss	116(%rsp), %xmm0
	addss	5160(%rsi), %xmm0
	movss	%xmm0, 80(%rsp)
	movq	80(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L5014
	.p2align 4,,7
.L5023:
	movl	$3072, %r9d
	jmp	.L5018
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9LabelTextEPKcS1_z
	.def	_ZN5ImGui9LabelTextEPKcS1_z;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9LabelTextEPKcS1_z
_ZN5ImGui9LabelTextEPKcS1_z:
.LFB604:
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
.LC195:
	.ascii "v_idx >= 0 && v_idx < values_count\0"
.LC196:
	.ascii "%d: %8.4g\12%d: %8.4g\0"
.LC197:
	.ascii "%d: %8.4g\0"
	.align 8
.LC198:
	.ascii "v1_idx >= 0 && v1_idx < values_count\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2
	.def	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2
_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2:
.LFB682:
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
	subq	$392, %rsp
	.seh_stackalloc	392
	movaps	%xmm6, 224(%rsp)
	.seh_savexmm	%xmm6, 224
	movaps	%xmm7, 240(%rsp)
	.seh_savexmm	%xmm7, 240
	movaps	%xmm8, 256(%rsp)
	.seh_savexmm	%xmm8, 256
	movaps	%xmm9, 272(%rsp)
	.seh_savexmm	%xmm9, 272
	movaps	%xmm10, 288(%rsp)
	.seh_savexmm	%xmm10, 288
	movaps	%xmm11, 304(%rsp)
	.seh_savexmm	%xmm11, 304
	movaps	%xmm12, 320(%rsp)
	.seh_savexmm	%xmm12, 320
	movaps	%xmm13, 336(%rsp)
	.seh_savexmm	%xmm13, 336
	movaps	%xmm14, 352(%rsp)
	.seh_savexmm	%xmm14, 352
	movaps	%xmm15, 368(%rsp)
	.seh_savexmm	%xmm15, 368
	.seh_endprologue
	movl	%ecx, %r14d
	movq	%r8, %r12
	movq	%r9, %r13
	movq	GImGui(%rip), %rbp
	movq	%rdx, 472(%rsp)
	movl	496(%rsp), %ebx
	movss	536(%rsp), %xmm12
	movss	540(%rsp), %xmm6
	movq	6008(%rbp), %rsi
	cmpb	$0, 140(%rsi)
	movb	$1, 138(%rsi)
	je	.L5129
.L5032:
	movaps	224(%rsp), %xmm6
	movaps	240(%rsp), %xmm7
	movaps	256(%rsp), %xmm8
	movaps	272(%rsp), %xmm9
	movaps	288(%rsp), %xmm10
	movaps	304(%rsp), %xmm11
	movaps	320(%rsp), %xmm12
	movaps	336(%rsp), %xmm13
	movaps	352(%rsp), %xmm14
	movaps	368(%rsp), %xmm15
	addq	$392, %rsp
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
.L5129:
	xorps	%xmm10, %xmm10
	movq	%rdx, %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movl	%eax, 132(%rsp)
	ucomiss	%xmm10, %xmm12
	jp	.L5034
	je	.L5130
.L5034:
	ucomiss	%xmm10, %xmm6
	movss	5160(%rbp), %xmm1
	jp	.L5038
	je	.L5131
.L5038:
	addss	196(%rsi), %xmm6
	movss	192(%rsi), %xmm0
	movq	192(%rsi), %rax
	addss	%xmm12, %xmm0
	movss	5156(%rbp), %xmm7
	movss	132(%rsp), %xmm4
	movq	%rax, 176(%rsp)
	movss	180(%rsp), %xmm2
	movaps	%xmm0, %xmm9
	movaps	%xmm6, %xmm11
	movss	%xmm0, 184(%rsp)
	movaps	%xmm2, %xmm8
	movss	%xmm6, 188(%rsp)
	movss	176(%rsp), %xmm3
	subss	%xmm7, %xmm9
	subss	%xmm1, %xmm11
	addss	%xmm1, %xmm8
	addss	%xmm3, %xmm7
	ucomiss	%xmm10, %xmm4
	movss	%xmm9, 200(%rsp)
	movss	%xmm8, 196(%rsp)
	movss	%xmm7, 192(%rsp)
	movss	%xmm11, 204(%rsp)
	jbe	.L5122
	addss	5176(%rbp), %xmm4
.L5039:
	addss	%xmm4, %xmm0
	movq	176(%rsp), %rax
	addss	%xmm10, %xmm6
	movq	%rax, 208(%rsp)
	leaq	160(%rsp), %rax
	movss	%xmm0, 216(%rsp)
	subss	%xmm3, %xmm0
	movss	%xmm6, 220(%rsp)
	subss	%xmm2, %xmm6
	movq	%rax, %rcx
	movq	%rax, 104(%rsp)
	movss	%xmm0, 160(%rsp)
	movss	%xmm6, 164(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	208(%rsp), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5032
	movss	520(%rsp), %xmm5
	movl	$0, %edx
	ucomiss	.LC21(%rip), %xmm5
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	jne	.L5106
	movss	528(%rsp), %xmm5
	ucomiss	.LC21(%rip), %xmm5
	setnp	%dl
	cmove	%edx, %eax
	testb	%al, %al
	jne	.L5106
.L5041:
	movl	$7, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	5164(%rbp), %xmm0
	movq	184(%rsp), %rdx
	movq	176(%rsp), %rcx
	movss	%xmm0, 32(%rsp)
	movl	%eax, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	testl	%ebx, %ebx
	jle	.L5067
	cvttss2si	%xmm12, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	testl	%r14d, %r14d
	movl	%eax, 64(%rsp)
	je	.L5055
	xorl	%edi, %edi
.L5081:
	leaq	192(%rsp), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	addl	%ebx, %edi
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	je	.L5056
	movaps	%xmm9, %xmm14
	movss	264(%rbp), %xmm0
	subss	%xmm7, %xmm0
	subss	%xmm7, %xmm14
	divss	%xmm14, %xmm0
	ucomiss	%xmm0, %xmm10
	ja	.L5092
	movss	.LC194(%rip), %xmm2
	movaps	%xmm2, %xmm1
	cmpnltss	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
.L5057:
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, %edx
	movl	%eax, 112(%rsp)
	subl	$0, %edx
	js	.L5108
	cmpl	%eax, %ebx
	jle	.L5108
.L5059:
	movl	112(%rsp), %r15d
	movl	504(%rsp), %eax
	movq	%r13, %rcx
	addl	%r15d, %eax
	cltd
	idivl	%ebx
	call	*%r12
	leal	1(%r15), %r9d
	movaps	%xmm0, %xmm6
	movq	%r13, %rcx
	movl	%r9d, %eax
	addl	504(%rsp), %eax
	movl	%r9d, 88(%rsp)
	cltd
	idivl	%ebx
	call	*%r12
	testl	%r14d, %r14d
	movl	88(%rsp), %r9d
	je	.L5132
	cmpl	$1, %r14d
	je	.L5133
.L5064:
	cvtsi2ss	64(%rsp), %xmm0
	movl	504(%rsp), %eax
	movq	%r13, %rcx
	movss	.LC28(%rip), %xmm13
	movaps	%xmm13, %xmm4
	cltd
	idivl	%ebx
	divss	%xmm0, %xmm4
	movss	%xmm4, 88(%rsp)
	call	*%r12
	movss	528(%rsp), %xmm5
	subss	520(%rsp), %xmm5
	subss	520(%rsp), %xmm0
	movss	%xmm5, 96(%rsp)
	divss	%xmm5, %xmm0
	ucomiss	%xmm0, %xmm10
	ja	.L5100
	ucomiss	%xmm13, %xmm0
	movaps	%xmm10, %xmm6
	jbe	.L5085
.L5066:
	movl	$39, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movl	$40, %ecx
	movl	%eax, 128(%rsp)
	jmp	.L5082
	.p2align 4,,7
.L5131:
	movaps	%xmm1, %xmm6
	shrq	$32, %rax
	movq	%rax, 64(%rsp)
	addss	%xmm1, %xmm6
	addss	64(%rsp), %xmm6
	jmp	.L5038
	.p2align 4,,7
.L5125:
	movq	136(%rsp), %rbp
.L5067:
	cmpq	$0, 512(%rsp)
	je	.L5054
	movl	$0x3f000000, 160(%rsp)
	movl	$0x00000000, 164(%rsp)
	leaq	184(%rsp), %rdx
	movss	180(%rsp), %xmm0
	movq	104(%rsp), %rax
	addss	5160(%rbp), %xmm0
	movq	512(%rsp), %r8
	leaq	144(%rsp), %rcx
	movss	176(%rsp), %xmm1
	movq	$0, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movss	%xmm1, 144(%rsp)
	movss	%xmm0, 148(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
.L5054:
	movss	132(%rsp), %xmm4
	ucomiss	%xmm10, %xmm4
	jbe	.L5032
	movss	184(%rsp), %xmm0
	movq	472(%rsp), %rdx
	movl	$1, %r9d
	addss	5176(%rbp), %xmm0
	movss	%xmm8, 88(%rsp)
	movl	88(%rsp), %ecx
	xorl	%r8d, %r8d
	salq	$32, %rcx
	movss	%xmm0, 64(%rsp)
	movl	64(%rsp), %eax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L5032
	.p2align 4,,7
.L5130:
	movq	%rax, 64(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	movq	64(%rsp), %rax
	movaps	%xmm0, %xmm12
	jmp	.L5034
	.p2align 4,,7
.L5122:
	movaps	%xmm10, %xmm4
	jmp	.L5039
	.p2align 4,,7
.L5106:
	testl	%ebx, %ebx
	jle	.L5087
	xorl	%edi, %edi
	movss	.LC70(%rip), %xmm6
	movss	.LC21(%rip), %xmm13
	.p2align 4,,7
.L5048:
	movl	%edi, %edx
	movq	%r13, %rcx
	incl	%edi
	call	*%r12
	movaps	%xmm0, %xmm1
	cmpl	%edi, %ebx
	minss	%xmm0, %xmm13
	cmpless	%xmm6, %xmm1
	andps	%xmm1, %xmm6
	andnps	%xmm0, %xmm1
	orps	%xmm1, %xmm6
	jne	.L5048
.L5043:
	movss	520(%rsp), %xmm4
	ucomiss	.LC21(%rip), %xmm4
	jp	.L5049
	movss	%xmm13, 64(%rsp)
	movl	64(%rsp), %eax
	cmovne	520(%rsp), %eax
	movl	%eax, 520(%rsp)
.L5049:
	movss	528(%rsp), %xmm3
	ucomiss	.LC21(%rip), %xmm3
	jp	.L5041
	movss	%xmm6, 64(%rsp)
	movl	64(%rsp), %eax
	cmovne	528(%rsp), %eax
	movl	%eax, 528(%rsp)
	jmp	.L5041
	.p2align 4,,7
.L5056:
	cvtsi2ss	64(%rsp), %xmm0
	movl	504(%rsp), %eax
	movq	%r13, %rcx
	movss	.LC28(%rip), %xmm13
	movaps	%xmm13, %xmm4
	cltd
	idivl	%ebx
	divss	%xmm0, %xmm4
	movss	%xmm4, 88(%rsp)
	call	*%r12
	movss	528(%rsp), %xmm5
	subss	520(%rsp), %xmm5
	subss	520(%rsp), %xmm0
	movss	%xmm5, 96(%rsp)
	divss	%xmm5, %xmm0
	ucomiss	%xmm0, %xmm10
	ja	.L5094
	ucomiss	%xmm13, %xmm0
	movaps	%xmm10, %xmm6
	movl	$-1, 112(%rsp)
	jbe	.L5085
.L5065:
	testl	%r14d, %r14d
	jne	.L5066
.L5062:
	movl	$37, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movl	$38, %ecx
	movl	%eax, 128(%rsp)
.L5082:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movl	%eax, 116(%rsp)
	movl	64(%rsp), %eax
	testl	%eax, %eax
	jle	.L5067
	cvtsi2ss	%edi, %xmm4
	movaps	%xmm9, %xmm14
	leaq	144(%rsp), %rax
	xorl	%edi, %edi
	subss	%xmm8, %xmm11
	subss	%xmm7, %xmm14
	movaps	%xmm10, %xmm12
	movq	%rax, 120(%rsp)
	movq	%rbp, 136(%rsp)
	movl	504(%rsp), %r15d
	movss	%xmm4, 100(%rsp)
	movaps	%xmm4, %xmm1
	jmp	.L5077
	.p2align 4,,7
.L5071:
	movaps	%xmm9, %xmm0
	cmpl	112(%rsp), %ebp
	movl	116(%rsp), %r9d
	cmovne	128(%rsp), %r9d
	mulss	%xmm14, %xmm0
	movq	656(%rsi), %rcx
	movq	104(%rsp), %r8
	movq	120(%rsp), %rdx
	movl	$0x3f800000, 32(%rsp)
	addss	%xmm7, %xmm0
	movss	%xmm0, 160(%rsp)
	movaps	%xmm11, %xmm0
	mulss	%xmm15, %xmm0
	addss	%xmm8, %xmm0
	movss	%xmm0, 164(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
.L5073:
	incl	%edi
	cmpl	64(%rsp), %edi
	movaps	%xmm9, %xmm12
	je	.L5125
	movaps	%xmm15, %xmm6
	movss	100(%rsp), %xmm1
.L5077:
	mulss	%xmm12, %xmm1
	movss	88(%rsp), %xmm9
	addss	%xmm12, %xmm9
	addss	.LC29(%rip), %xmm1
	cvttss2si	%xmm1, %ebp
	movl	%ebp, %eax
	subl	$0, %eax
	js	.L5109
	cmpl	%ebp, %ebx
	jle	.L5109
.L5068:
	leal	1(%rbp,%r15), %eax
	movq	%r13, %rcx
	movaps	%xmm13, %xmm15
	cltd
	idivl	%ebx
	call	*%r12
	subss	520(%rsp), %xmm0
	divss	96(%rsp), %xmm0
	ucomiss	%xmm0, %xmm10
	ja	.L5070
	ucomiss	%xmm13, %xmm0
	xorps	%xmm15, %xmm15
	jbe	.L5134
.L5070:
	movaps	%xmm12, %xmm0
	mulss	%xmm11, %xmm6
	testl	%r14d, %r14d
	mulss	%xmm14, %xmm0
	addss	%xmm8, %xmm6
	addss	%xmm7, %xmm0
	movss	%xmm6, 148(%rsp)
	movss	%xmm0, 144(%rsp)
	je	.L5071
	movaps	%xmm9, %xmm2
	movaps	%xmm8, %xmm3
	cmpl	$1, %r14d
	mulss	%xmm14, %xmm2
	addss	%xmm11, %xmm3
	addss	%xmm7, %xmm2
	movss	%xmm3, 164(%rsp)
	movss	%xmm2, 160(%rsp)
	jne	.L5073
	addss	.LC158(%rip), %xmm0
	ucomiss	%xmm0, %xmm2
	jb	.L5074
	subss	%xmm13, %xmm2
	movss	%xmm2, 160(%rsp)
.L5074:
	cmpl	112(%rsp), %ebp
	movl	116(%rsp), %r9d
	cmovne	128(%rsp), %r9d
	movq	656(%rsi), %rcx
	movq	104(%rsp), %r8
	movq	120(%rsp), %rdx
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	jmp	.L5073
	.p2align 4,,7
.L5055:
	decl	64(%rsp)
	movl	$-1, %edi
	jmp	.L5081
	.p2align 4,,7
.L5092:
	movaps	%xmm10, %xmm0
	jmp	.L5057
	.p2align 4,,7
.L5094:
	movaps	%xmm13, %xmm6
	movl	$-1, 112(%rsp)
	jmp	.L5065
	.p2align 4,,7
.L5109:
	leaq	.LC15(%rip), %rdx
	leaq	.LC198(%rip), %rcx
	movl	$7183, %r8d
	call	_assert
	jmp	.L5068
	.p2align 4,,7
.L5134:
	movaps	%xmm13, %xmm15
	subss	%xmm0, %xmm15
	jmp	.L5070
	.p2align 4,,7
.L5132:
	cvtss2sd	%xmm6, %xmm6
	movl	112(%rsp), %edx
	leaq	.LC196(%rip), %rcx
	cvtss2sd	%xmm0, %xmm4
	movsd	%xmm6, 88(%rsp)
	movq	88(%rsp), %r8
	movsd	%xmm6, %xmm2
	movsd	%xmm4, 32(%rsp)
	call	_ZN5ImGui10SetTooltipEPKcz
	cvtsi2ss	64(%rsp), %xmm0
	movl	504(%rsp), %eax
	movq	%r13, %rcx
	movss	.LC28(%rip), %xmm13
	movaps	%xmm13, %xmm3
	cltd
	idivl	%ebx
	divss	%xmm0, %xmm3
	movss	%xmm3, 88(%rsp)
	call	*%r12
	movss	528(%rsp), %xmm5
	subss	520(%rsp), %xmm5
	subss	520(%rsp), %xmm0
	movss	%xmm5, 96(%rsp)
	divss	%xmm5, %xmm0
	ucomiss	%xmm0, %xmm10
	ja	.L5135
	ucomiss	%xmm13, %xmm0
	movaps	%xmm10, %xmm6
	ja	.L5062
	.p2align 4,,7
.L5085:
	movaps	%xmm13, %xmm6
	subss	%xmm0, %xmm6
	jmp	.L5065
	.p2align 4,,7
.L5108:
	leaq	.LC15(%rip), %rdx
	leaq	.LC195(%rip), %rcx
	movl	$7159, %r8d
	call	_assert
	jmp	.L5059
.L5100:
	movaps	%xmm13, %xmm6
	jmp	.L5066
.L5087:
	movss	.LC70(%rip), %xmm6
	movss	.LC21(%rip), %xmm13
	jmp	.L5043
.L5133:
	cvtss2sd	%xmm6, %xmm6
	movl	112(%rsp), %edx
	leaq	.LC197(%rip), %rcx
	movsd	%xmm6, 88(%rsp)
	movq	88(%rsp), %r8
	movsd	%xmm6, %xmm2
	call	_ZN5ImGui10SetTooltipEPKcz
	jmp	.L5064
.L5135:
	movaps	%xmm13, %xmm6
	jmp	.L5062
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2
	.def	_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2
_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2:
.LFB688:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	160(%rsp), %rax
	movss	152(%rsp), %xmm0
	movl	%r9d, 32(%rsp)
	movq	%r8, %r9
	movss	%xmm0, 64(%rsp)
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%rax, 72(%rsp)
	movq	136(%rsp), %rax
	xorl	%ecx, %ecx
	movss	144(%rsp), %xmm0
	movss	%xmm0, 56(%rsp)
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
.LFB690:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	160(%rsp), %rax
	movss	152(%rsp), %xmm0
	movl	%r9d, 32(%rsp)
	movq	%r8, %r9
	movss	%xmm0, 64(%rsp)
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%rax, 72(%rsp)
	movq	136(%rsp), %rax
	movl	$1, %ecx
	movss	144(%rsp), %xmm0
	movss	%xmm0, 56(%rsp)
	movq	%rax, 48(%rsp)
	movl	128(%rsp), %eax
	movl	%eax, 40(%rsp)
	call	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2
	nop
	addq	$88, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC201:
	.ascii "%.0f%%\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11ProgressBarEfRK6ImVec2PKc
	.def	_ZN5ImGui11ProgressBarEfRK6ImVec2PKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11ProgressBarEfRK6ImVec2PKc
_ZN5ImGui11ProgressBarEfRK6ImVec2PKc:
.LFB691:
	pushq	%r12
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
	movaps	%xmm6, 176(%rsp)
	.seh_savexmm	%xmm6, 176
	movaps	%xmm7, 192(%rsp)
	.seh_savexmm	%xmm7, 192
	movaps	%xmm8, 208(%rsp)
	.seh_savexmm	%xmm8, 208
	movaps	%xmm9, 224(%rsp)
	.seh_savexmm	%xmm9, 224
	.seh_endprologue
	movaps	%xmm0, %xmm9
	movq	%r8, %rdi
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L5152
.L5138:
	movaps	176(%rsp), %xmm6
	movaps	192(%rsp), %xmm7
	movaps	208(%rsp), %xmm8
	movaps	224(%rsp), %xmm9
	addq	$240, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L5152:
	movss	5160(%rsi), %xmm2
	movq	%rdx, 64(%rsp)
	addss	%xmm2, %xmm2
	movss	5944(%rsi), %xmm6
	movss	192(%rbx), %xmm8
	leaq	144(%rsp), %r12
	movss	196(%rbx), %xmm7
	leaq	128(%rsp), %rbp
	addss	%xmm2, %xmm6
	call	_ZN5ImGui13CalcItemWidthEv
	movq	64(%rsp), %rdx
	movaps	%xmm0, %xmm1
	movaps	%xmm6, %xmm2
	movq	(%rdx), %rcx
	call	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	movq	%rax, %rcx
	movss	5160(%rsi), %xmm1
	shrq	$32, %rcx
	movss	%xmm8, 128(%rsp)
	movq	%rcx, 64(%rsp)
	movq	%r12, %rcx
	movss	%xmm7, 132(%rsp)
	movss	64(%rsp), %xmm2
	movl	%eax, 64(%rsp)
	addss	%xmm7, %xmm2
	movd	64(%rsp), %xmm0
	addss	%xmm8, %xmm0
	movss	%xmm2, 140(%rsp)
	subss	%xmm7, %xmm2
	movss	%xmm0, 136(%rsp)
	subss	%xmm8, %xmm0
	movss	%xmm2, 148(%rsp)
	movss	%xmm0, 144(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	xorl	%edx, %edx
	movq	%rbp, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5138
	xorps	%xmm7, %xmm7
	ucomiss	%xmm9, %xmm7
	movaps	%xmm7, %xmm6
	ja	.L5140
	movss	.LC28(%rip), %xmm6
	minss	%xmm9, %xmm6
.L5140:
	movl	$7, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	5164(%rsi), %xmm0
	movq	136(%rsp), %rdx
	movq	128(%rsp), %rcx
	movss	%xmm0, 32(%rsp)
	movl	%eax, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movss	132(%rbx), %xmm2
	movl	$39, %ecx
	movss	128(%rsp), %xmm3
	movss	136(%rsp), %xmm1
	addss	%xmm2, %xmm3
	subss	%xmm2, %xmm1
	movss	132(%rsp), %xmm0
	addss	%xmm2, %xmm0
	movss	5164(%rsi), %xmm5
	movss	%xmm3, 128(%rsp)
	movss	%xmm1, 136(%rsp)
	subss	%xmm3, %xmm1
	movss	%xmm0, 132(%rsp)
	movss	140(%rsp), %xmm0
	subss	%xmm2, %xmm0
	mulss	%xmm6, %xmm1
	movss	%xmm0, 64(%rsp)
	movl	64(%rsp), %r9d
	addss	%xmm3, %xmm1
	movss	%xmm0, 140(%rsp)
	salq	$32, %r9
	movaps	%xmm1, %xmm8
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	%xmm8, 64(%rsp)
	movl	64(%rsp), %edx
	movq	128(%rsp), %rcx
	movss	%xmm5, 32(%rsp)
	movl	%eax, %r8d
	movl	%edx, %edx
	orq	%r9, %rdx
	xorl	%r9d, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	testq	%rdi, %rdi
	je	.L5153
.L5141:
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rdi, %rcx
	movss	.LC20(%rip), %xmm3
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movq	%rax, 80(%rsp)
	movss	80(%rsp), %xmm2
	ucomiss	%xmm7, %xmm2
	jbe	.L5138
	movss	5168(%rsi), %xmm1
	movl	$0x00000000, 112(%rsp)
	addss	%xmm8, %xmm1
	movss	128(%rsp), %xmm0
	movl	$0x3f000000, 116(%rsp)
	movss	132(%rsp), %xmm4
	movss	136(%rsp), %xmm3
	movss	5176(%rsi), %xmm5
	ucomiss	%xmm1, %xmm0
	ja	.L5144
	subss	%xmm2, %xmm3
	movaps	%xmm3, %xmm0
	subss	%xmm5, %xmm0
	minss	%xmm1, %xmm0
.L5144:
	leaq	112(%rsp), %rax
	leaq	8(%rbp), %rdx
	leaq	96(%rsp), %rcx
	movq	%rbp, 48(%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	movq	%rax, 40(%rsp)
	leaq	80(%rsp), %rax
	movss	%xmm0, 96(%rsp)
	movss	%xmm4, 100(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	jmp	.L5138
.L5153:
	mulss	.LC199(%rip), %xmm6
	leaq	.LC201(%rip), %r8
	movl	$32, %edx
	movq	%r12, %rcx
	movq	%r12, %rdi
	addss	.LC200(%rip), %xmm6
	cvtss2sd	%xmm6, %xmm0
	movsd	%xmm0, 64(%rsp)
	movq	64(%rsp), %r9
	movsd	%xmm0, %xmm3
	call	_Z14ImFormatStringPciPKcz
	jmp	.L5141
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2.constprop.124;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2.constprop.124
_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2.constprop.124:
.LFB6214:
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
	movl	%ecx, %ebp
	movq	%rdx, %r12
	movq	%r8, %r14
	movq	GImGui(%rip), %rdi
	movl	%r9d, %ebx
	movss	512(%rsp), %xmm10
	movss	516(%rsp), %xmm6
	movq	6008(%rdi), %r13
	cmpb	$0, 140(%r13)
	movb	$1, 138(%r13)
	je	.L5239
.L5154:
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
.L5239:
	xorps	%xmm8, %xmm8
	movq	%rdx, %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movl	%eax, 108(%rsp)
	ucomiss	%xmm8, %xmm10
	jp	.L5156
	je	.L5240
.L5156:
	ucomiss	%xmm8, %xmm6
	movss	5160(%rdi), %xmm1
	jp	.L5160
	je	.L5241
.L5160:
	addss	196(%r13), %xmm6
	movss	192(%r13), %xmm3
	movq	192(%r13), %rax
	addss	%xmm10, %xmm3
	movss	108(%rsp), %xmm0
	ucomiss	%xmm8, %xmm0
	movq	%rax, 160(%rsp)
	movss	164(%rsp), %xmm4
	movaps	%xmm3, %xmm15
	movaps	%xmm6, %xmm9
	movss	%xmm6, 172(%rsp)
	movaps	%xmm4, %xmm7
	movss	%xmm3, 168(%rsp)
	movaps	%xmm6, %xmm2
	movss	160(%rsp), %xmm5
	subss	%xmm1, %xmm9
	movss	5156(%rdi), %xmm6
	addss	%xmm1, %xmm7
	subss	%xmm6, %xmm15
	addss	%xmm5, %xmm6
	movss	%xmm9, 188(%rsp)
	movss	%xmm7, 180(%rsp)
	movss	%xmm15, 184(%rsp)
	movss	%xmm6, 176(%rsp)
	jbe	.L5232
	addss	5176(%rdi), %xmm0
.L5161:
	addss	%xmm3, %xmm0
	movq	160(%rsp), %rax
	addss	%xmm8, %xmm2
	movq	%rax, 192(%rsp)
	leaq	144(%rsp), %rax
	movss	%xmm0, 200(%rsp)
	subss	%xmm5, %xmm0
	movss	%xmm2, 204(%rsp)
	subss	%xmm4, %xmm2
	movq	%rax, %rcx
	movq	%rax, 80(%rsp)
	movss	%xmm0, 144(%rsp)
	movss	%xmm2, 148(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	192(%rsp), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5154
	movss	496(%rsp), %xmm5
	movl	$0, %edx
	ucomiss	.LC21(%rip), %xmm5
	setnp	%al
	cmovne	%edx, %eax
	testb	%al, %al
	jne	.L5219
	movss	504(%rsp), %xmm5
	ucomiss	.LC21(%rip), %xmm5
	setnp	%dl
	cmove	%edx, %eax
	testb	%al, %al
	jne	.L5219
.L5163:
	movl	$7, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	5164(%rdi), %xmm0
	movq	168(%rsp), %rdx
	movq	160(%rsp), %rcx
	movss	%xmm0, 32(%rsp)
	movl	%eax, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	testl	%ebx, %ebx
	jle	.L5187
	cvttss2si	%xmm10, %esi
	cmpl	%ebx, %esi
	cmovg	%ebx, %esi
	testl	%ebp, %ebp
	je	.L5176
	xorl	%r15d, %r15d
.L5201:
	leaq	176(%rsp), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	addl	%ebx, %r15d
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	jne	.L5177
	movslq	8(%r14), %rcx
	movq	(%r14), %r8
	movl	$-1, 88(%rsp)
.L5178:
	movl	480(%rsp), %eax
	cvtsi2ss	%esi, %xmm0
	movss	.LC28(%rip), %xmm11
	movaps	%xmm11, %xmm4
	movss	504(%rsp), %xmm10
	cltd
	subss	496(%rsp), %xmm10
	idivl	%ebx
	movaps	%xmm11, %xmm14
	movslq	%edx, %rdx
	imulq	%rdx, %rcx
	divss	%xmm0, %xmm4
	movss	(%r8,%rcx), %xmm0
	subss	496(%rsp), %xmm0
	divss	%xmm10, %xmm0
	movss	%xmm4, 64(%rsp)
	ucomiss	%xmm0, %xmm8
	ja	.L5184
	ucomiss	%xmm11, %xmm0
	movaps	%xmm8, %xmm14
	jbe	.L5242
.L5184:
	testl	%ebp, %ebp
	jne	.L5243
	movl	$37, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movl	$38, %ecx
	movl	%eax, 104(%rsp)
.L5202:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	testl	%esi, %esi
	movl	%eax, 92(%rsp)
	jle	.L5187
	cvtsi2ss	%r15d, %xmm5
	movaps	%xmm15, %xmm12
	leaq	128(%rsp), %rax
	xorl	%r15d, %r15d
	movq	%rdi, 120(%rsp)
	movq	%r12, 456(%rsp)
	movaps	%xmm8, %xmm0
	movq	%r14, %r12
	subss	%xmm6, %xmm12
	movq	%r13, %r14
	subss	%xmm7, %xmm9
	movq	%rax, 96(%rsp)
	movl	%r15d, %edi
	movaps	%xmm14, %xmm2
	movl	480(%rsp), %r13d
	movaps	%xmm5, %xmm15
	jmp	.L5197
	.p2align 4,,7
.L5191:
	movaps	%xmm14, %xmm0
	cmpl	88(%rsp), %r15d
	movl	92(%rsp), %r9d
	cmovne	104(%rsp), %r9d
	mulss	%xmm12, %xmm0
	movq	656(%r14), %rcx
	movq	80(%rsp), %r8
	movq	96(%rsp), %rdx
	movl	$0x3f800000, 32(%rsp)
	addss	%xmm6, %xmm0
	movss	%xmm0, 144(%rsp)
	movaps	%xmm9, %xmm0
	mulss	%xmm13, %xmm0
	addss	%xmm7, %xmm0
	movss	%xmm0, 148(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
.L5193:
	incl	%edi
	movaps	%xmm14, %xmm0
	cmpl	%esi, %edi
	je	.L5235
	movaps	%xmm13, %xmm2
.L5197:
	movaps	%xmm0, %xmm1
	movss	64(%rsp), %xmm14
	addss	%xmm0, %xmm14
	mulss	%xmm15, %xmm1
	addss	.LC29(%rip), %xmm1
	cvttss2si	%xmm1, %r15d
	movl	%r15d, %eax
	subl	$0, %eax
	js	.L5222
	cmpl	%r15d, %ebx
	jle	.L5222
.L5188:
	leal	1(%r15,%r13), %eax
	movslq	8(%r12), %rcx
	movaps	%xmm11, %xmm13
	cltd
	idivl	%ebx
	movq	(%r12), %rax
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	movss	(%rax,%rdx), %xmm1
	subss	496(%rsp), %xmm1
	divss	%xmm10, %xmm1
	ucomiss	%xmm1, %xmm8
	ja	.L5190
	ucomiss	%xmm11, %xmm1
	xorps	%xmm13, %xmm13
	jbe	.L5244
.L5190:
	mulss	%xmm12, %xmm0
	testl	%ebp, %ebp
	mulss	%xmm9, %xmm2
	addss	%xmm6, %xmm0
	addss	%xmm7, %xmm2
	movss	%xmm0, 128(%rsp)
	movss	%xmm2, 132(%rsp)
	je	.L5191
	movaps	%xmm14, %xmm1
	movaps	%xmm7, %xmm2
	cmpl	$1, %ebp
	mulss	%xmm12, %xmm1
	addss	%xmm9, %xmm2
	addss	%xmm6, %xmm1
	movss	%xmm2, 148(%rsp)
	movss	%xmm1, 144(%rsp)
	jne	.L5193
	addss	.LC158(%rip), %xmm0
	ucomiss	%xmm0, %xmm1
	jb	.L5194
	subss	%xmm11, %xmm1
	movss	%xmm1, 144(%rsp)
.L5194:
	cmpl	88(%rsp), %r15d
	movl	92(%rsp), %r9d
	cmovne	104(%rsp), %r9d
	movq	656(%r14), %rcx
	movq	80(%rsp), %r8
	movq	96(%rsp), %rdx
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	jmp	.L5193
	.p2align 4,,7
.L5241:
	movaps	%xmm1, %xmm6
	shrq	$32, %rax
	movq	%rax, 64(%rsp)
	addss	%xmm1, %xmm6
	addss	64(%rsp), %xmm6
	jmp	.L5160
	.p2align 4,,7
.L5222:
	leaq	.LC15(%rip), %rdx
	leaq	.LC198(%rip), %rcx
	movl	$7183, %r8d
	movss	%xmm0, 116(%rsp)
	movss	%xmm2, 112(%rsp)
	call	_assert
	movss	116(%rsp), %xmm0
	movss	112(%rsp), %xmm2
	jmp	.L5188
	.p2align 4,,7
.L5244:
	movaps	%xmm11, %xmm13
	subss	%xmm1, %xmm13
	jmp	.L5190
	.p2align 4,,7
.L5235:
	movq	120(%rsp), %rdi
	movq	456(%rsp), %r12
.L5187:
	cmpq	$0, 488(%rsp)
	je	.L5175
	movl	$0x3f000000, 144(%rsp)
	movl	$0x00000000, 148(%rsp)
	leaq	168(%rsp), %rdx
	movss	164(%rsp), %xmm0
	movq	80(%rsp), %rax
	addss	5160(%rdi), %xmm0
	movq	488(%rsp), %r8
	leaq	128(%rsp), %rcx
	movss	160(%rsp), %xmm1
	movq	$0, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	$0, 32(%rsp)
	xorl	%r9d, %r9d
	movss	%xmm1, 128(%rsp)
	movss	%xmm0, 132(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
.L5175:
	movss	108(%rsp), %xmm4
	ucomiss	%xmm8, %xmm4
	jbe	.L5154
	movss	168(%rsp), %xmm0
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addss	5176(%rdi), %xmm0
	movss	%xmm7, 80(%rsp)
	movl	80(%rsp), %ecx
	movq	%r12, %rdx
	salq	$32, %rcx
	movss	%xmm0, 64(%rsp)
	movl	64(%rsp), %eax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	jmp	.L5154
	.p2align 4,,7
.L5240:
	movq	%rax, 64(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	movq	64(%rsp), %rax
	movaps	%xmm0, %xmm10
	jmp	.L5156
	.p2align 4,,7
.L5232:
	movaps	%xmm8, %xmm0
	jmp	.L5161
	.p2align 4,,7
.L5219:
	testl	%ebx, %ebx
	jle	.L5206
	movslq	8(%r14), %rcx
	movq	(%r14), %rdx
	xorl	%eax, %eax
	movss	.LC70(%rip), %xmm1
	movss	.LC21(%rip), %xmm3
	.p2align 4,,7
.L5169:
	movss	(%rdx), %xmm2
	incl	%eax
	addq	%rcx, %rdx
	movaps	%xmm2, %xmm0
	cmpl	%eax, %ebx
	minss	%xmm2, %xmm3
	cmpless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm0, %xmm1
	jne	.L5169
.L5165:
	movss	496(%rsp), %xmm4
	ucomiss	.LC21(%rip), %xmm4
	jp	.L5170
	movss	%xmm3, 64(%rsp)
	movl	64(%rsp), %eax
	cmovne	496(%rsp), %eax
	movl	%eax, 496(%rsp)
.L5170:
	movss	504(%rsp), %xmm4
	ucomiss	.LC21(%rip), %xmm4
	jp	.L5163
	movss	%xmm1, 64(%rsp)
	movl	64(%rsp), %eax
	cmovne	504(%rsp), %eax
	movl	%eax, 504(%rsp)
	jmp	.L5163
	.p2align 4,,7
.L5176:
	decl	%esi
	movl	$-1, %r15d
	jmp	.L5201
	.p2align 4,,7
.L5243:
	movl	$39, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movl	$40, %ecx
	movl	%eax, 104(%rsp)
	jmp	.L5202
	.p2align 4,,7
.L5177:
	movaps	%xmm15, %xmm12
	movss	264(%rdi), %xmm0
	subss	%xmm6, %xmm0
	subss	%xmm6, %xmm12
	divss	%xmm12, %xmm0
	ucomiss	%xmm0, %xmm8
	ja	.L5209
	movss	.LC194(%rip), %xmm2
	movaps	%xmm2, %xmm1
	cmpnltss	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
.L5179:
	cvtsi2ss	%r15d, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, %ecx
	movl	%eax, 88(%rsp)
	subl	$0, %ecx
	js	.L5221
	cmpl	%eax, %ebx
	jle	.L5221
.L5181:
	addl	480(%rsp), %eax
	movslq	8(%r14), %rcx
	movq	(%r14), %r8
	cltd
	idivl	%ebx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	testl	%ebp, %ebp
	movss	(%r8,%rdx), %xmm0
	je	.L5245
	cmpl	$1, %ebp
	jne	.L5178
	cvtss2sd	%xmm0, %xmm0
	movl	88(%rsp), %edx
	leaq	.LC197(%rip), %rcx
	movsd	%xmm0, 64(%rsp)
	movq	64(%rsp), %r8
	movsd	%xmm0, %xmm2
	call	_ZN5ImGui10SetTooltipEPKcz
	movq	(%r14), %r8
	movslq	8(%r14), %rcx
	jmp	.L5178
	.p2align 4,,7
.L5209:
	movaps	%xmm8, %xmm0
	jmp	.L5179
	.p2align 4,,7
.L5242:
	movaps	%xmm11, %xmm14
	subss	%xmm0, %xmm14
	jmp	.L5184
	.p2align 4,,7
.L5221:
	leaq	.LC15(%rip), %rdx
	leaq	.LC195(%rip), %rcx
	movl	$7159, %r8d
	call	_assert
	movl	88(%rsp), %eax
	jmp	.L5181
	.p2align 4,,7
.L5245:
	movl	88(%rsp), %r10d
	movl	480(%rsp), %eax
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 64(%rsp)
	movsd	%xmm0, %xmm2
	leal	1(%r10), %r9d
	addl	%r9d, %eax
	cltd
	idivl	%ebx
	movslq	%edx, %rdx
	imulq	%rdx, %rcx
	movl	%r10d, %edx
	cvtss2sd	(%r8,%rcx), %xmm4
	movq	64(%rsp), %r8
	leaq	.LC196(%rip), %rcx
	movsd	%xmm4, 32(%rsp)
	call	_ZN5ImGui10SetTooltipEPKcz
	movq	(%r14), %r8
	movslq	8(%r14), %rcx
	jmp	.L5178
.L5206:
	movss	.LC70(%rip), %xmm1
	movss	.LC21(%rip), %xmm3
	jmp	.L5165
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i
	.def	_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i
_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i:
.LFB687:
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movl	176(%rsp), %eax
	movss	160(%rsp), %xmm0
	movl	%r9d, 32(%rsp)
	movl	%r8d, %r9d
	movss	%xmm0, 56(%rsp)
	leaq	80(%rsp), %r8
	movq	%rdx, 80(%rsp)
	movl	%eax, 88(%rsp)
	movq	168(%rsp), %rax
	movq	%rcx, %rdx
	movss	152(%rsp), %xmm0
	xorl	%ecx, %ecx
	movss	%xmm0, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2.constprop.124
	nop
	addq	$104, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i
	.def	_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i
_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i:
.LFB689:
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movl	176(%rsp), %eax
	movss	160(%rsp), %xmm0
	movl	%r9d, 32(%rsp)
	movl	%r8d, %r9d
	movss	%xmm0, 56(%rsp)
	leaq	80(%rsp), %r8
	movq	%rdx, 80(%rsp)
	movl	%eax, 88(%rsp)
	movq	168(%rsp), %rax
	movq	%rcx, %rdx
	movss	152(%rsp), %xmm0
	movl	$1, %ecx
	movss	%xmm0, 48(%rsp)
	movq	%rax, 64(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ff6ImVec2.constprop.124
	nop
	addq	$104, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20PushMultiItemsWidthsif.constprop.145;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20PushMultiItemsWidthsif.constprop.145
_ZL20PushMultiItemsWidthsif.constprop.145:
.LFB6193:
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
	movq	6008(%rbx), %rsi
	movb	$1, 138(%rsi)
	call	_ZN5ImGui13CalcItemWidthEv
	movss	5176(%rbx), %xmm3
	movslq	320(%rsi), %rcx
	movaps	%xmm3, %xmm1
	movl	324(%rsi), %ebx
	movss	.LC35(%rip), %xmm2
	mulss	%xmm2, %xmm1
	movaps	%xmm0, %xmm5
	cmpl	%ebx, %ecx
	subss	%xmm1, %xmm5
	movss	.LC60(%rip), %xmm1
	mulss	%xmm5, %xmm1
	cvttss2si	%xmm1, %eax
	movss	.LC28(%rip), %xmm1
	cvtsi2ss	%eax, %xmm6
	movaps	%xmm6, %xmm4
	cmpnless	%xmm1, %xmm4
	andps	%xmm4, %xmm6
	andnps	%xmm1, %xmm4
	orps	%xmm4, %xmm6
	addss	%xmm6, %xmm3
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm7
	movaps	%xmm7, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm7
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm7
	je	.L5253
	movq	328(%rsi), %rax
	leal	1(%rcx), %edx
.L5254:
	cmpl	%ebx, %edx
	movl	%edx, 320(%rsi)
	movss	%xmm7, (%rax,%rcx,4)
	leal	1(%rdx), %ecx
	je	.L5292
.L5262:
	movslq	%edx, %rdx
	cmpl	%ecx, %ebx
	movl	%ecx, 320(%rsi)
	movss	%xmm6, (%rax,%rdx,4)
	leal	1(%rcx), %edx
	je	.L5293
.L5269:
	movslq	%ecx, %rcx
	cmpl	%ebx, %edx
	movl	%edx, 320(%rsi)
	movss	%xmm6, (%rax,%rcx,4)
	leal	1(%rdx), %ecx
	je	.L5294
.L5275:
	movslq	%edx, %rdx
	testl	%ecx, %ecx
	movl	%ecx, 320(%rsi)
	movss	%xmm6, (%rax,%rdx,4)
	jle	.L5295
.L5280:
	movslq	%ecx, %rcx
	movss	-4(%rax,%rcx,4), %xmm0
	movss	%xmm0, 308(%rsi)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5292:
	testl	%edx, %edx
	jne	.L5261
	movl	$8, %ebx
	cmpl	%ecx, %ebx
	cmovl	%ecx, %ebx
	cmpl	%ebx, %edx
	jl	.L5296
.L5282:
	movl	%edx, %ebx
	jmp	.L5262
	.p2align 4,,7
.L5294:
	testl	%edx, %edx
	movl	$8, %r8d
	je	.L5276
	movl	%edx, %r8d
	shrl	$31, %r8d
	addl	%edx, %r8d
	sarl	%r8d
	addl	%edx, %r8d
.L5276:
	cmpl	%r8d, %ecx
	movl	%r8d, %edi
	cmovge	%ecx, %edi
	cmpl	%edx, %edi
	jle	.L5275
	movq	GImGui(%rip), %rax
	movslq	%edi, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	328(%rsi), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L5277
	movslq	320(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5279
	decl	844(%rax)
.L5279:
	call	*240(%rax)
	movl	320(%rsi), %edx
	movq	%rbx, 328(%rsi)
	movq	%rbx, %rax
	movl	%edi, 324(%rsi)
	leal	1(%rdx), %ecx
	jmp	.L5275
	.p2align 4,,7
.L5293:
	testl	%ebx, %ebx
	jne	.L5268
	movl	$8, %ecx
.L5273:
	cmpl	%edx, %ecx
	movl	%ecx, %edi
	movl	%ebx, %ecx
	cmovl	%edx, %edi
	cmpl	%edi, %ebx
	jge	.L5269
	movq	GImGui(%rip), %rax
	movslq	%edi, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	328(%rsi), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L5291
	movslq	320(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L5291
	movq	GImGui(%rip), %rax
	decl	844(%rax)
.L5272:
	call	*240(%rax)
	movl	320(%rsi), %ecx
	movq	%rbp, 328(%rsi)
	movl	%edi, %ebx
	movl	%edi, 324(%rsi)
	movq	%rbp, %rax
	leal	1(%rcx), %edx
	jmp	.L5269
	.p2align 4,,7
.L5253:
	testl	%ecx, %ecx
	leal	1(%rcx), %edx
	movl	$8, %ebx
	jne	.L5297
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%ebx, %ecx
	jl	.L5256
.L5298:
	movq	328(%rsi), %rax
	movl	%ecx, %ebx
	jmp	.L5254
	.p2align 4,,7
.L5268:
	movl	%ebx, %ecx
	shrl	$31, %ecx
	addl	%ebx, %ecx
	sarl	%ecx
	addl	%ebx, %ecx
	jmp	.L5273
	.p2align 4,,7
.L5261:
	movl	%edx, %ebx
	shrl	$31, %ebx
	addl	%edx, %ebx
	sarl	%ebx
	addl	%edx, %ebx
	cmpl	%ecx, %ebx
	cmovl	%ecx, %ebx
	cmpl	%ebx, %edx
	jge	.L5282
.L5296:
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	328(%rsi), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L5290
	movslq	320(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L5290
	movq	GImGui(%rip), %rax
	decl	844(%rax)
.L5265:
	call	*240(%rax)
	movl	320(%rsi), %edx
	movq	%rdi, 328(%rsi)
	movq	%rdi, %rax
	movl	%ebx, 324(%rsi)
	leal	1(%rdx), %ecx
	jmp	.L5262
	.p2align 4,,7
.L5297:
	movl	%ecx, %ebx
	shrl	$31, %ebx
	addl	%ecx, %ebx
	sarl	%ebx
	addl	%ecx, %ebx
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%ebx, %ecx
	jge	.L5298
.L5256:
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	328(%rsi), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L5257
	movslq	320(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5259
	decl	844(%rax)
.L5259:
	call	*240(%rax)
	movslq	320(%rsi), %rcx
	movq	%rdi, 328(%rsi)
	movq	%rdi, %rax
	movl	%ebx, 324(%rsi)
	leal	1(%rcx), %edx
	jmp	.L5254
	.p2align 4,,7
.L5295:
	leaq	.LC14(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$866, %r8d
	call	_assert
	movq	328(%rsi), %rax
	movl	320(%rsi), %ecx
	jmp	.L5280
	.p2align 4,,7
.L5291:
	movq	GImGui(%rip), %rax
	jmp	.L5272
	.p2align 4,,7
.L5257:
	movq	GImGui(%rip), %rax
	jmp	.L5259
	.p2align 4,,7
.L5290:
	movq	GImGui(%rip), %rax
	jmp	.L5265
	.p2align 4,,7
.L5277:
	movq	GImGui(%rip), %rax
	jmp	.L5279
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20PushMultiItemsWidthsif.constprop.146;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20PushMultiItemsWidthsif.constprop.146
_ZL20PushMultiItemsWidthsif.constprop.146:
.LFB6192:
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
	movq	GImGui(%rip), %rbx
	movq	6008(%rbx), %rsi
	movb	$1, 138(%rsi)
	call	_ZN5ImGui13CalcItemWidthEv
	movss	5176(%rbx), %xmm2
	movslq	320(%rsi), %r8
	movaps	%xmm2, %xmm1
	movl	324(%rsi), %ebx
	movaps	%xmm0, %xmm4
	addss	%xmm2, %xmm1
	cmpl	%ebx, %r8d
	subss	%xmm1, %xmm4
	movaps	%xmm4, %xmm1
	divss	.LC35(%rip), %xmm1
	cvttss2si	%xmm1, %eax
	movss	.LC28(%rip), %xmm1
	cvtsi2ss	%eax, %xmm6
	movaps	%xmm6, %xmm3
	cmpnless	%xmm1, %xmm3
	andps	%xmm3, %xmm6
	andnps	%xmm1, %xmm3
	orps	%xmm3, %xmm6
	addss	%xmm6, %xmm2
	addss	%xmm2, %xmm2
	subss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm7
	movaps	%xmm7, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm7
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm7
	je	.L5304
	movq	328(%rsi), %rax
	leal	1(%r8), %edx
.L5305:
	cmpl	%ebx, %edx
	movl	%edx, 320(%rsi)
	movss	%xmm7, (%rax,%r8,4)
	leal	1(%rdx), %r8d
	je	.L5335
.L5313:
	movslq	%edx, %rdx
	cmpl	%r8d, %ebx
	movl	%r8d, 320(%rsi)
	movss	%xmm6, (%rax,%rdx,4)
	leal	1(%r8), %edx
	je	.L5336
.L5319:
	movslq	%r8d, %r8
	testl	%edx, %edx
	movl	%edx, 320(%rsi)
	movss	%xmm6, (%rax,%r8,4)
	jle	.L5337
.L5324:
	movslq	%edx, %rdx
	movss	-4(%rax,%rdx,4), %xmm0
	movss	%xmm0, 308(%rsi)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L5335:
	testl	%edx, %edx
	jne	.L5312
	movl	$8, %ebx
	cmpl	%r8d, %ebx
	cmovl	%r8d, %ebx
	cmpl	%ebx, %edx
	jl	.L5338
.L5326:
	movl	%edx, %ebx
	jmp	.L5313
	.p2align 4,,7
.L5336:
	testl	%ebx, %ebx
	leal	1(%rbx), %edx
	movl	$8, %ecx
	je	.L5320
	movl	%ebx, %ecx
	shrl	$31, %ecx
	addl	%ebx, %ecx
	sarl	%ecx
	addl	%ebx, %ecx
.L5320:
	cmpl	%ecx, %edx
	movl	%ecx, %edi
	movl	%ebx, %r8d
	cmovge	%edx, %edi
	cmpl	%edi, %ebx
	jge	.L5319
	movq	GImGui(%rip), %rax
	movslq	%edi, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	328(%rsi), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L5321
	movslq	320(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5323
	decl	844(%rax)
.L5323:
	call	*240(%rax)
	movl	320(%rsi), %r8d
	movq	%rbx, 328(%rsi)
	movq	%rbx, %rax
	movl	%edi, 324(%rsi)
	leal	1(%r8), %edx
	jmp	.L5319
	.p2align 4,,7
.L5304:
	testl	%r8d, %r8d
	leal	1(%r8), %edx
	movl	$8, %ebx
	jne	.L5339
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%ebx, %r8d
	jl	.L5307
.L5340:
	movq	328(%rsi), %rax
	movl	%r8d, %ebx
	jmp	.L5305
	.p2align 4,,7
.L5312:
	movl	%edx, %ebx
	shrl	$31, %ebx
	addl	%edx, %ebx
	sarl	%ebx
	addl	%edx, %ebx
	cmpl	%r8d, %ebx
	cmovl	%r8d, %ebx
	cmpl	%ebx, %edx
	jge	.L5326
.L5338:
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	328(%rsi), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L5334
	movslq	320(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L5334
	movq	GImGui(%rip), %rax
	decl	844(%rax)
.L5316:
	call	*240(%rax)
	movl	320(%rsi), %edx
	movq	%rdi, 328(%rsi)
	movq	%rdi, %rax
	movl	%ebx, 324(%rsi)
	leal	1(%rdx), %r8d
	jmp	.L5313
	.p2align 4,,7
.L5339:
	movl	%r8d, %ebx
	shrl	$31, %ebx
	addl	%r8d, %ebx
	sarl	%ebx
	addl	%r8d, %ebx
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%ebx, %r8d
	jge	.L5340
.L5307:
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	328(%rsi), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L5308
	movslq	320(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5310
	decl	844(%rax)
.L5310:
	call	*240(%rax)
	movslq	320(%rsi), %r8
	movq	%rdi, 328(%rsi)
	movq	%rdi, %rax
	movl	%ebx, 324(%rsi)
	leal	1(%r8), %edx
	jmp	.L5305
	.p2align 4,,7
.L5337:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movq	328(%rsi), %rax
	movl	320(%rsi), %edx
	jmp	.L5324
	.p2align 4,,7
.L5321:
	movq	GImGui(%rip), %rax
	jmp	.L5323
	.p2align 4,,7
.L5334:
	movq	GImGui(%rip), %rax
	jmp	.L5316
	.p2align 4,,7
.L5308:
	movq	GImGui(%rip), %rax
	jmp	.L5310
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20PushMultiItemsWidthsif.constprop.147;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20PushMultiItemsWidthsif.constprop.147
_ZL20PushMultiItemsWidthsif.constprop.147:
.LFB6191:
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
	movq	6008(%rsi), %rbx
	movb	$1, 138(%rbx)
	call	_ZN5ImGui13CalcItemWidthEv
	movaps	%xmm0, %xmm1
	movl	320(%rbx), %r8d
	movss	5176(%rsi), %xmm2
	movl	324(%rbx), %esi
	subss	%xmm2, %xmm1
	cmpl	%esi, %r8d
	mulss	.LC29(%rip), %xmm1
	cvttss2si	%xmm1, %eax
	movss	.LC28(%rip), %xmm1
	cvtsi2ss	%eax, %xmm7
	movaps	%xmm7, %xmm3
	cmpnless	%xmm1, %xmm3
	andps	%xmm3, %xmm7
	andnps	%xmm1, %xmm3
	orps	%xmm3, %xmm7
	addss	%xmm7, %xmm2
	subss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm6
	movaps	%xmm6, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm6
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm6
	je	.L5346
	movq	328(%rbx), %rax
	leal	1(%r8), %edx
.L5347:
	movslq	%r8d, %rcx
	cmpl	%esi, %edx
	movl	%edx, 320(%rbx)
	movss	%xmm6, (%rax,%rcx,4)
	je	.L5372
.L5353:
	leal	1(%rdx), %r8d
	movslq	%edx, %rdx
	testl	%r8d, %r8d
	movl	%r8d, 320(%rbx)
	movss	%xmm7, (%rax,%rdx,4)
	jle	.L5373
.L5362:
	movslq	%r8d, %r8
	movss	-4(%rax,%r8,4), %xmm0
	movss	%xmm0, 308(%rbx)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L5346:
	testl	%r8d, %r8d
	leal	1(%r8), %edx
	movl	$8, %esi
	jne	.L5374
	cmpl	%esi, %edx
	cmovge	%edx, %esi
	cmpl	%esi, %r8d
	jl	.L5349
.L5375:
	movq	328(%rbx), %rax
	movl	%r8d, %esi
	jmp	.L5347
	.p2align 4,,7
.L5372:
	addl	$2, %r8d
	testl	%edx, %edx
	jne	.L5354
	cmpl	$8, %r8d
	movl	$8, %esi
	cmovge	%r8d, %esi
.L5361:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L5369
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L5369
	movq	GImGui(%rip), %rax
	decl	844(%rax)
.L5358:
	call	*240(%rax)
	movq	%rdi, 328(%rbx)
	movl	%esi, 324(%rbx)
	movq	%rdi, %rax
	movl	320(%rbx), %edx
	jmp	.L5353
	.p2align 4,,7
.L5354:
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	addl	%edx, %esi
	cmpl	%r8d, %esi
	cmovl	%r8d, %esi
	cmpl	%edx, %esi
	jg	.L5361
	jmp	.L5353
	.p2align 4,,7
.L5374:
	movl	%r8d, %esi
	shrl	$31, %esi
	addl	%r8d, %esi
	sarl	%esi
	addl	%r8d, %esi
	cmpl	%esi, %edx
	cmovge	%edx, %esi
	cmpl	%esi, %r8d
	jge	.L5375
.L5349:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	328(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L5350
	movslq	320(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5352
	decl	844(%rax)
.L5352:
	call	*240(%rax)
	movl	320(%rbx), %r8d
	movq	%rdi, 328(%rbx)
	movq	%rdi, %rax
	movl	%esi, 324(%rbx)
	leal	1(%r8), %edx
	jmp	.L5347
	.p2align 4,,7
.L5373:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movq	328(%rbx), %rax
	movl	320(%rbx), %r8d
	jmp	.L5362
	.p2align 4,,7
.L5369:
	movq	GImGui(%rip), %rax
	jmp	.L5358
	.p2align 4,,7
.L5350:
	movq	GImGui(%rip), %rax
	jmp	.L5352
	.seh_endproc
	.p2align 4,,15
	.def	_ZL20PushMultiItemsWidthsif.constprop.148;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL20PushMultiItemsWidthsif.constprop.148
_ZL20PushMultiItemsWidthsif.constprop.148:
.LFB6190:
	pushq	%r12
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
	movl	%ecx, %ebx
	movq	GImGui(%rip), %rsi
	leal	-1(%rbx), %ebp
	movq	6008(%rsi), %rdi
	movb	$1, 138(%rdi)
	call	_ZN5ImGui13CalcItemWidthEv
	cvtsi2ss	%ebp, %xmm2
	movslq	320(%rdi), %rcx
	movss	5176(%rsi), %xmm3
	movaps	%xmm3, %xmm1
	cvtsi2ss	%ebx, %xmm4
	movaps	%xmm0, %xmm5
	movl	324(%rdi), %ebx
	cmpl	%ebx, %ecx
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm5
	movaps	%xmm5, %xmm1
	divss	%xmm4, %xmm1
	cvttss2si	%xmm1, %eax
	movss	.LC28(%rip), %xmm1
	cvtsi2ss	%eax, %xmm6
	movaps	%xmm6, %xmm4
	cmpnless	%xmm1, %xmm4
	andps	%xmm4, %xmm6
	andnps	%xmm1, %xmm4
	orps	%xmm4, %xmm6
	addss	%xmm6, %xmm3
	mulss	%xmm3, %xmm2
	subss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm7
	movaps	%xmm7, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm7
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm7
	je	.L5381
	movq	328(%rdi), %rax
	leal	1(%rcx), %edx
.L5382:
	testl	%ebp, %ebp
	movl	%edx, 320(%rdi)
	movss	%xmm7, (%rax,%rcx,4)
	jle	.L5388
	xorl	%esi, %esi
	jmp	.L5395
	.p2align 4,,7
.L5406:
	movslq	%edx, %r8
	incl	%edx
.L5390:
	incl	%esi
	movl	%edx, 320(%rdi)
	movss	%xmm6, (%rax,%r8,4)
	cmpl	%ebp, %esi
	je	.L5388
.L5395:
	cmpl	%ebx, %edx
	jne	.L5406
	testl	%edx, %edx
	leal	1(%rdx), %ecx
	movl	$8, %ebx
	je	.L5391
	movl	%edx, %ebx
	shrl	$31, %ebx
	addl	%edx, %ebx
	sarl	%ebx
	addl	%edx, %ebx
.L5391:
	cmpl	%ebx, %ecx
	cmovge	%ecx, %ebx
	cmpl	%edx, %ebx
	jg	.L5407
	movl	%edx, %ebx
	movslq	%edx, %r8
	movl	%ecx, %edx
	jmp	.L5390
	.p2align 4,,7
.L5407:
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	328(%rdi), %rcx
	movq	%rax, %r12
	testq	%rcx, %rcx
	je	.L5392
	movslq	320(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5394
	decl	844(%rax)
.L5394:
	call	*240(%rax)
	movslq	320(%rdi), %r8
	movq	%r12, 328(%rdi)
	movq	%r12, %rax
	movl	%ebx, 324(%rdi)
	leal	1(%r8), %edx
	jmp	.L5390
	.p2align 4,,7
.L5388:
	testl	%edx, %edx
	jle	.L5408
.L5396:
	movslq	%edx, %rdx
	movss	-4(%rax,%rdx,4), %xmm0
	movss	%xmm0, 308(%rdi)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L5392:
	movq	GImGui(%rip), %rax
	jmp	.L5394
	.p2align 4,,7
.L5381:
	testl	%ecx, %ecx
	leal	1(%rcx), %edx
	movl	$8, %ebx
	jne	.L5409
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%ebx, %ecx
	jl	.L5384
.L5410:
	movq	328(%rdi), %rax
	movl	%ecx, %ebx
	jmp	.L5382
	.p2align 4,,7
.L5409:
	movl	%ecx, %ebx
	shrl	$31, %ebx
	addl	%ecx, %ebx
	sarl	%ebx
	addl	%ecx, %ebx
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%ebx, %ecx
	jge	.L5410
.L5384:
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	328(%rdi), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L5385
	movslq	320(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	328(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5387
	decl	844(%rax)
.L5387:
	call	*240(%rax)
	movslq	320(%rdi), %rcx
	movq	%rsi, 328(%rdi)
	movq	%rsi, %rax
	movl	%ebx, 324(%rdi)
	leal	1(%rcx), %edx
	jmp	.L5382
.L5408:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movl	320(%rdi), %edx
	movq	328(%rdi), %rax
	jmp	.L5396
.L5385:
	movq	GImGui(%rip), %rax
	jmp	.L5387
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8MenuItemEPKcS1_bb
	.def	_ZN5ImGui8MenuItemEPKcS1_bb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8MenuItemEPKcS1_bb
_ZN5ImGui8MenuItemEPKcS1_bb:
.LFB765:
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
	xorl	%ebx, %ebx
	movq	%rcx, %r13
	movq	%rdx, %r12
	movl	%r8d, %r14d
	movq	GImGui(%rip), %rdi
	movl	%r9d, %ebp
	movq	6008(%rdi), %rsi
	cmpb	$0, 140(%rsi)
	movb	$1, 138(%rsi)
	je	.L5447
.L5412:
	movaps	80(%rsp), %xmm6
	movl	%ebx, %eax
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
	movaps	144(%rsp), %xmm10
	movaps	160(%rsp), %xmm11
	addq	$176, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L5447:
	xorps	%xmm7, %xmm7
	movss	192(%rsi), %xmm8
	movss	196(%rsi), %xmm9
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	testq	%r12, %r12
	movq	%rax, %rbx
	movaps	%xmm7, %xmm10
	je	.L5413
	movss	.LC20(%rip), %xmm3
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r12, %rcx
	xorps	%xmm7, %xmm7
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movl	%eax, 44(%rsp)
	movss	44(%rsp), %xmm10
.L5413:
	movss	.LC202(%rip), %xmm0
	movl	%ebx, 44(%rsp)
	mulss	5944(%rdi), %xmm0
	movss	600(%rsi), %xmm2
	movss	608(%rsi), %xmm3
	movl	$0x00000000, 564(%rsi)
	cvttss2si	%xmm0, %eax
	movss	44(%rsp), %xmm0
	movaps	%xmm0, %xmm6
	cmpnless	%xmm2, %xmm6
	andps	%xmm6, %xmm0
	andnps	%xmm2, %xmm6
	movaps	%xmm10, %xmm2
	orps	%xmm6, %xmm0
	cvtsi2ss	%eax, %xmm1
	movss	604(%rsi), %xmm6
	cmpless	%xmm6, %xmm2
	movss	%xmm0, 600(%rsi)
	addss	%xmm7, %xmm0
	andps	%xmm2, %xmm6
	andnps	%xmm10, %xmm2
	orps	%xmm2, %xmm6
	movaps	%xmm1, %xmm2
	movss	%xmm6, 604(%rsi)
	ucomiss	%xmm7, %xmm6
	cmpnless	%xmm3, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm3, %xmm2
	orps	%xmm2, %xmm1
	movss	%xmm1, 608(%rsi)
	movaps	%xmm0, %xmm1
	addss	%xmm7, %xmm1
	jbe	.L5445
	movss	556(%rsi), %xmm0
.L5420:
	addss	%xmm0, %xmm6
	movaps	%xmm6, %xmm0
	movss	608(%rsi), %xmm6
	ucomiss	%xmm7, %xmm6
	addss	%xmm1, %xmm0
	jbe	.L5446
	movss	556(%rsi), %xmm1
.L5422:
	addss	%xmm1, %xmm6
	movss	560(%rsi), %xmm1
	addss	%xmm0, %xmm6
	movaps	%xmm6, %xmm0
	movss	%xmm6, 564(%rsi)
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm6
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm6
	call	_ZN5ImGui21GetContentRegionAvailEv
	movl	%eax, 44(%rsp)
	cmpb	$1, %bpl
	leaq	64(%rsp), %r9
	movd	44(%rsp), %xmm11
	sbbl	%eax, %eax
	movq	%r13, %rcx
	andl	$32, %eax
	xorl	%edx, %edx
	movss	%xmm6, 64(%rsp)
	subss	%xmm6, %xmm11
	leal	80(%rax), %r8d
	movl	$0x00000000, 68(%rsp)
	movaps	%xmm11, %xmm0
	cmpnless	%xmm7, %xmm0
	andps	%xmm0, %xmm11
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	ucomiss	%xmm7, %xmm10
	movl	%eax, %ebx
	jbe	.L5429
	leaq	5264(%rdi), %rdx
	xorl	%ecx, %ecx
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movss	572(%rsi), %xmm0
	xorl	%r9d, %r9d
	addss	%xmm11, %xmm0
	movaps	%xmm9, %xmm4
	xorl	%r8d, %r8d
	addss	%xmm7, %xmm4
	addss	%xmm8, %xmm0
	movss	%xmm4, 48(%rsp)
	movq	48(%rsp), %rdx
	movss	%xmm0, 44(%rsp)
	movl	44(%rsp), %ecx
	salq	$32, %rdx
	orq	%rdx, %rcx
	movq	%r12, %rdx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	call	_ZN5ImGui13PopStyleColorEi.constprop.161
.L5429:
	testb	%r14b, %r14b
	je	.L5412
	xorl	$1, %ebp
	addss	%xmm7, %xmm9
	movzbl	%bpl, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	.LC55(%rip), %xmm0
	addss	576(%rsi), %xmm11
	mulss	5944(%rdi), %xmm0
	movss	%xmm9, 48(%rsp)
	movq	48(%rsp), %rcx
	movl	%eax, %edx
	salq	$32, %rcx
	addss	%xmm0, %xmm11
	addss	%xmm8, %xmm11
	movss	%xmm11, 44(%rsp)
	movl	44(%rsp), %r8d
	orq	%r8, %rcx
	call	_ZN5ImGui15RenderCheckMarkE6ImVec2j
	jmp	.L5412
.L5445:
	movaps	%xmm7, %xmm0
	jmp	.L5420
.L5446:
	movaps	%xmm7, %xmm1
	.p2align 4,,5
	jmp	.L5422
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8MenuItemEPKcS1_Pbb
	.def	_ZN5ImGui8MenuItemEPKcS1_Pbb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8MenuItemEPKcS1_Pbb
_ZN5ImGui8MenuItemEPKcS1_Pbb:
.LFB766:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%r8, %r8
	movq	%r8, %rbx
	movzbl	%r9b, %r9d
	je	.L5449
	movzbl	(%r8), %r8d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	testb	%al, %al
	je	.L5452
	xorb	$1, (%rbx)
.L5451:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L5449:
	xorl	%r8d, %r8d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	testb	%al, %al
	jne	.L5451
.L5452:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14GetColumnWidthEi
	.def	_ZN5ImGui14GetColumnWidthEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14GetColumnWidthEi
_ZN5ImGui14GetColumnWidthEi:
.LFB792:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	testl	%ecx, %ecx
	movl	%ecx, %ebx
	jns	.L5457
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	movl	440(%rax), %ebx
.L5457:
	leal	1(%rbx), %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	movaps	%xmm0, %xmm6
	movl	%ebx, %ecx
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
.LFB795:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	ucomiss	.LC9(%rip), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movss	428(%rax), %xmm1
	ja	.L5459
	movss	5192(%rdx), %xmm0
.L5459:
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
.LFB796:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	ucomiss	.LC9(%rip), %xmm0
	movq	6008(%rdx), %rax
	movb	$1, 138(%rax)
	movss	428(%rax), %xmm1
	ja	.L5462
	movss	5192(%rdx), %xmm0
.L5462:
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm1, 428(%rax)
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
.LFB797:
	.seh_endprologue
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	movss	428(%rax), %xmm0
	movb	$1, 138(%rax)
	addss	5192(%rdx), %xmm0
	incl	244(%rax)
	testq	%rcx, %rcx
	movss	%xmm0, 428(%rax)
	addss	28(%rax), %xmm0
	addss	436(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	leaq	.LC203(%rip), %rax
	cmove	%rax, %rcx
	jmp	_ZN5ImGui6PushIDEPKc
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8TreePushEPKv
	.def	_ZN5ImGui8TreePushEPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8TreePushEPKv
_ZN5ImGui8TreePushEPKv:
.LFB798:
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
	leaq	.LC203(%rip), %rdx
	movq	6008(%rax), %rbx
	movss	428(%rbx), %xmm0
	movb	$1, 138(%rbx)
	addss	5192(%rax), %xmm0
	incl	244(%rbx)
	testq	%rcx, %rcx
	cmovne	%rcx, %rdx
	movq	%rbx, %rcx
	movss	%xmm0, 428(%rbx)
	addss	28(%rbx), %xmm0
	addss	436(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	call	_ZN11ImGuiWindow5GetIDEPKv
	movslq	496(%rbx), %rdx
	movl	%eax, %edi
	cmpl	500(%rbx), %edx
	je	.L5469
	movq	504(%rbx), %rax
	leal	1(%rdx), %r8d
.L5470:
	movl	%r8d, 496(%rbx)
	movl	%edi, (%rax,%rdx,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5469:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L5480
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %esi
	jl	.L5472
.L5481:
	movq	504(%rbx), %rax
	jmp	.L5470
	.p2align 4,,7
.L5480:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %esi
	jge	.L5481
.L5472:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$2, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L5473
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5475
	decl	844(%rax)
.L5475:
	call	*240(%rax)
	movslq	496(%rbx), %rdx
	movq	%rbp, 504(%rbx)
	movq	%rbp, %rax
	movl	%esi, 500(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L5470
	.p2align 4,,7
.L5473:
	movq	GImGui(%rip), %rax
	jmp	.L5475
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13TreePushRawIDEj
	.def	_ZN5ImGui13TreePushRawIDEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13TreePushRawIDEj
_ZN5ImGui13TreePushRawIDEj:
.LFB799:
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
	movl	%ecx, %edi
	movq	6008(%rax), %rbx
	movss	428(%rbx), %xmm0
	movslq	496(%rbx), %rdx
	addss	5192(%rax), %xmm0
	incl	244(%rbx)
	cmpl	500(%rbx), %edx
	movb	$1, 138(%rbx)
	movss	%xmm0, 428(%rbx)
	addss	28(%rbx), %xmm0
	addss	436(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	je	.L5483
	movq	504(%rbx), %rax
	leal	1(%rdx), %r8d
.L5484:
	movl	%r8d, 496(%rbx)
	movl	%edi, (%rax,%rdx,4)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5483:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %ecx
	jne	.L5493
	cmpl	%ecx, %r8d
	movl	%ecx, %esi
	cmovge	%r8d, %esi
	cmpl	%edx, %esi
	jg	.L5486
.L5494:
	movq	504(%rbx), %rax
	jmp	.L5484
	.p2align 4,,7
.L5493:
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
	addl	%edx, %ecx
	cmpl	%ecx, %r8d
	movl	%ecx, %esi
	cmovge	%r8d, %esi
	cmpl	%edx, %esi
	jle	.L5494
.L5486:
	incl	844(%rax)
	movslq	%esi, %rcx
	salq	$2, %rcx
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L5487
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5489
	decl	844(%rax)
.L5489:
	call	*240(%rax)
	movslq	496(%rbx), %rdx
	movq	%rbp, 504(%rbx)
	movq	%rbp, %rax
	movl	%esi, 500(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L5484
	.p2align 4,,7
.L5487:
	movq	GImGui(%rip), %rax
	jmp	.L5489
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7TreePopEv
	.def	_ZN5ImGui7TreePopEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7TreePopEv
_ZN5ImGui7TreePopEv:
.LFB800:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movss	428(%rbx), %xmm0
	movb	$1, 138(%rbx)
	subss	5192(%rax), %xmm0
	movl	496(%rbx), %eax
	decl	244(%rbx)
	testl	%eax, %eax
	movss	%xmm0, 428(%rbx)
	addss	28(%rbx), %xmm0
	addss	436(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	jle	.L5497
	decl	%eax
	movl	%eax, 496(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L5497:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %eax
	decl	%eax
	movl	%eax, 496(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
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
.LFB801:
	.seh_endprologue
	leaq	.LC205(%rip), %rax
	leaq	.LC204(%rip), %r8
	testb	%dl, %dl
	movq	%rcx, %rdx
	leaq	.LC206(%rip), %rcx
	cmove	%rax, %r8
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
.LFB802:
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
.LFB803:
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
.LFB804:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	.seh_endprologue
	testq	%r8, %r8
	movq	%rcx, %rsi
	movaps	%xmm1, %xmm6
	je	.L5504
	leaq	48(%rsp), %rbx
	movq	%r8, %r9
	leaq	.LC208(%rip), %r8
	movl	$64, %edx
	movq	%rbx, %rcx
	call	_Z14ImFormatStringPciPKcz.constprop.166
	cvtss2sd	%xmm6, %xmm1
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	movsd	%xmm1, 40(%rsp)
	movq	40(%rsp), %r8
	movsd	%xmm1, %xmm2
	call	_ZN5ImGui4TextEPKcz
	nop
	movaps	112(%rsp), %xmm6
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L5504:
	cvtss2sd	%xmm1, %xmm1
	movq	%rcx, %rdx
	leaq	.LC209(%rip), %rcx
	movsd	%xmm1, 40(%rsp)
	movq	40(%rsp), %r8
	movsd	%xmm1, %xmm2
	call	_ZN5ImGui4TextEPKcz
	nop
	movaps	112(%rsp), %xmm6
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC210:
	.ascii "%s: (%.2f,%.2f,%.2f,%.2f)\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10ValueColorEPKcRK6ImVec4
	.def	_ZN5ImGui10ValueColorEPKcRK6ImVec4;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10ValueColorEPKcRK6ImVec4
_ZN5ImGui10ValueColorEPKcRK6ImVec4:
.LFB805:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	cvtss2sd	12(%rdx), %xmm4
	movq	%rdx, %rbx
	cvtss2sd	4(%rdx), %xmm1
	cvtss2sd	(%rdx), %xmm0
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm1, 56(%rsp)
	movq	56(%rsp), %r9
	movsd	%xmm1, %xmm3
	cvtss2sd	8(%rdx), %xmm5
	movsd	%xmm0, %xmm2
	movq	%rcx, %rdx
	movsd	%xmm0, 56(%rsp)
	movq	56(%rsp), %r8
	leaq	.LC210(%rip), %rcx
	movsd	%xmm5, 32(%rsp)
	call	_ZN5ImGui4TextEPKcz
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L5507
	movss	5168(%rdx), %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L5507:
	movl	$1, %r8d
	movl	$1, %edx
	movq	%rbx, %rcx
	addq	$64, %rsp
	popq	%rbx
	jmp	_ZN5ImGui11ColorButtonERK6ImVec4bb
	.seh_endproc
	.section .rdata,"dr"
.LC211:
	.ascii "%s: %08X\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10ValueColorEPKcj
	.def	_ZN5ImGui10ValueColorEPKcj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10ValueColorEPKcj
_ZN5ImGui10ValueColorEPKcj:
.LFB806:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%edx, %r8d
	movl	%edx, %ebx
	movq	%rcx, %rdx
	leaq	.LC211(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L5509
	movss	5168(%rdx), %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L5509:
	movzbl	%bl, %eax
	movss	.LC77(%rip), %xmm2
	cvtsi2ss	%eax, %xmm0
	movzbl	%bh, %eax
	leaq	32(%rsp), %rcx
	movl	$1, %r8d
	movl	$1, %edx
	mulss	%xmm2, %xmm0
	movss	%xmm0, 32(%rsp)
	cvtsi2ss	%eax, %xmm0
	movl	%ebx, %eax
	shrl	$24, %ebx
	shrl	$16, %eax
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm2, %xmm0
	mulss	%xmm2, %xmm1
	movss	%xmm0, 36(%rsp)
	cvtsi2ss	%ebx, %xmm0
	movss	%xmm1, 40(%rsp)
	mulss	%xmm2, %xmm0
	movss	%xmm0, 44(%rsp)
	call	_ZN5ImGui11ColorButtonERK6ImVec4bb
	nop
	addq	$48, %rsp
	popq	%rbx
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
.LFB5846:
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
	je	.L5511
	movq	8(%rcx), %rax
	leal	1(%rdx), %r8d
.L5512:
	movl	%r8d, (%rbx)
	movq	(%rdi), %r8
	movq	%r8, (%rax,%rdx,8)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5511:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L5521
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %esi
	jl	.L5514
.L5522:
	movq	8(%rbx), %rax
	jmp	.L5512
	.p2align 4,,7
.L5521:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %esi
	jge	.L5522
.L5514:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$3, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L5515
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5517
	decl	844(%rax)
.L5517:
	call	*240(%rax)
	movslq	(%rbx), %rdx
	movq	%rbp, 8(%rbx)
	movq	%rbp, %rax
	movl	%esi, 4(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L5512
	.p2align 4,,7
.L5515:
	movq	GImGui(%rip), %rax
	jmp	.L5517
	.seh_endproc
	.section	.text$_ZN8ImVectorItE6resizeEi,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorItE6resizeEi
	.def	_ZN8ImVectorItE6resizeEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorItE6resizeEi
_ZN8ImVectorItE6resizeEi:
.LFB5921:
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
	movq	%rcx, %rsi
	movl	%edx, %edi
	cmpl	%edx, %eax
	jge	.L5524
	testl	%eax, %eax
	movl	$8, %edx
	je	.L5525
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L5525:
	cmpl	%edx, %edi
	jl	.L5534
	movl	%edi, %ebx
.L5526:
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	addq	%rcx, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rsi), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L5527
	movslq	(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	8(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5529
	decl	844(%rax)
.L5529:
	call	*240(%rax)
	movq	%rbp, 8(%rsi)
	movl	%ebx, 4(%rsi)
.L5524:
	movl	%edi, (%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5534:
	cmpl	%edx, %eax
	jge	.L5524
	movl	%edx, %ebx
	jmp	.L5526
	.p2align 4,,7
.L5527:
	movq	GImGui(%rip), %rax
	jmp	.L5529
	.seh_endproc
	.section	.text$_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
	.def	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_:
.LFB5927:
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
	movq	8(%rcx), %r10
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movq	%r8, %rbp
	cmpq	%rdx, %r10
	ja	.L5536
	movslq	(%rcx), %rdx
	movq	%rdx, %r9
	salq	$4, %rdx
	addq	%r10, %rdx
	cmpq	%rdx, %rbx
	ja	.L5536
.L5537:
	movq	%rbx, %rsi
	subq	%r10, %rsi
	movq	%rsi, %rbx
	sarq	$4, %rbx
	cmpl	%r9d, 4(%rdi)
	je	.L5548
.L5538:
	movslq	%r9d, %r8
	cmpq	%r8, %rbx
	jge	.L5544
	leaq	1(%rbx), %rcx
	leaq	(%r10,%rsi), %rdx
	subq	%rbx, %r8
	salq	$4, %r8
	salq	$4, %rcx
	leaq	(%r10,%rcx), %rcx
	call	memmove
	movl	(%rdi), %r9d
	movq	8(%rdi), %r10
.L5544:
	movq	0(%rbp), %rcx
	movq	8(%rbp), %rbx
	leaq	(%r10,%rsi), %rax
	incl	%r9d
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movl	%r9d, (%rdi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L5536:
	leaq	.LC10(%rip), %rdx
	leaq	.LC90(%rip), %rcx
	movl	$888, %r8d
	call	_assert
	movq	8(%rdi), %r10
	movl	(%rdi), %r9d
	jmp	.L5537
	.p2align 4,,7
.L5548:
	testl	%r9d, %r9d
	jne	.L5549
	movl	$64, %ecx
	movl	$4, %r12d
.L5539:
	movq	GImGui(%rip), %rax
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rdi), %rcx
	movq	%rax, %r13
	testq	%rcx, %rcx
	je	.L5540
	movslq	(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$4, %r8
	call	memcpy
	movq	8(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L5542
	decl	844(%rax)
.L5542:
	call	*240(%rax)
	movq	%r13, 8(%rdi)
	movl	%r12d, 4(%rdi)
	movq	%r13, %r10
	movl	(%rdi), %r9d
	jmp	.L5538
	.p2align 4,,7
.L5549:
	leal	(%r9,%r9), %r12d
	cmpl	%r12d, %r9d
	jge	.L5538
	movslq	%r12d, %rcx
	salq	$4, %rcx
	jmp	.L5539
	.p2align 4,,7
.L5540:
	movq	GImGui(%rip), %rax
	jmp	.L5542
	.seh_endproc
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage9GetIntRefEji
	.def	_ZN12ImGuiStorage9GetIntRefEji;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage9GetIntRefEji
_ZN12ImGuiStorage9GetIntRefEji:
.LFB327:
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
	shrq	$4, %rbx
.L5556:
	testl	%ebx, %ebx
	jle	.L5551
	movl	%ebx, %r10d
	sarl	%r10d
	movslq	%r10d, %r9
	salq	$4, %r9
	addq	%rax, %r9
	cmpl	(%r9), %edx
	jbe	.L5554
	jmp	.L5566
	.p2align 4,,7
.L5563:
	movl	%r10d, %r11d
	sarl	%r11d
	movslq	%r11d, %r9
	salq	$4, %r9
	addq	%rax, %r9
	cmpl	(%r9), %edx
	ja	.L5552
	movl	%r11d, %r10d
.L5554:
	testl	%r10d, %r10d
	jne	.L5563
.L5551:
	cmpq	%rax, %rsi
	je	.L5557
	cmpl	(%rax), %edx
	je	.L5558
.L5557:
	movl	%r8d, 40(%rsp)
	leaq	32(%rsp), %r8
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
.L5558:
	addq	$8, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L5566:
	movl	%r10d, %r11d
	movl	%ebx, %r10d
	.p2align 4,,7
.L5552:
	incl	%r11d
	movl	%r10d, %ebx
	leaq	16(%r9), %rax
	subl	%r11d, %ebx
	jmp	.L5556
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage11GetFloatRefEjf
	.def	_ZN12ImGuiStorage11GetFloatRefEjf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage11GetFloatRefEjf
_ZN12ImGuiStorage11GetFloatRefEjf:
.LFB329:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movslq	(%rcx), %r11
	movq	8(%rcx), %rax
	salq	$4, %r11
	leaq	(%rax,%r11), %rbx
	shrq	$4, %r11
.L5573:
	testl	%r11d, %r11d
	jle	.L5568
	movl	%r11d, %r9d
	sarl	%r9d
	movslq	%r9d, %r8
	salq	$4, %r8
	addq	%rax, %r8
	cmpl	(%r8), %edx
	jbe	.L5571
	jmp	.L5583
	.p2align 4,,7
.L5580:
	movl	%r9d, %r10d
	sarl	%r10d
	movslq	%r10d, %r8
	salq	$4, %r8
	addq	%rax, %r8
	cmpl	(%r8), %edx
	ja	.L5569
	movl	%r10d, %r9d
.L5571:
	testl	%r9d, %r9d
	jne	.L5580
.L5568:
	cmpq	%rax, %rbx
	je	.L5574
	cmpl	(%rax), %edx
	je	.L5575
.L5574:
	leaq	32(%rsp), %r8
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	movss	%xmm2, 40(%rsp)
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
.L5575:
	addq	$8, %rax
	addq	$48, %rsp
	popq	%rbx
	ret
.L5583:
	movl	%r9d, %r10d
	movl	%r11d, %r9d
	.p2align 4,,7
.L5569:
	incl	%r10d
	movl	%r9d, %r11d
	leaq	16(%r8), %rax
	subl	%r10d, %r11d
	jmp	.L5573
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage13GetVoidPtrRefEjPv
	.def	_ZN12ImGuiStorage13GetVoidPtrRefEjPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage13GetVoidPtrRefEjPv
_ZN12ImGuiStorage13GetVoidPtrRefEjPv:
.LFB330:
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
	shrq	$4, %rbx
.L5590:
	testl	%ebx, %ebx
	jle	.L5585
	movl	%ebx, %r10d
	sarl	%r10d
	movslq	%r10d, %r9
	salq	$4, %r9
	addq	%rax, %r9
	cmpl	(%r9), %edx
	jbe	.L5588
	jmp	.L5600
	.p2align 4,,7
.L5597:
	movl	%r10d, %r11d
	sarl	%r11d
	movslq	%r11d, %r9
	salq	$4, %r9
	addq	%rax, %r9
	cmpl	(%r9), %edx
	ja	.L5586
	movl	%r11d, %r10d
.L5588:
	testl	%r10d, %r10d
	jne	.L5597
.L5585:
	cmpq	%rax, %rsi
	je	.L5591
	cmpl	(%rax), %edx
	je	.L5592
.L5591:
	movq	%r8, 40(%rsp)
	leaq	32(%rsp), %r8
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
.L5592:
	addq	$8, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L5600:
	movl	%r10d, %r11d
	movl	%ebx, %r10d
	.p2align 4,,7
.L5586:
	incl	%r11d
	movl	%r10d, %ebx
	leaq	16(%r9), %rax
	subl	%r11d, %ebx
	jmp	.L5590
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage6SetIntEji
	.def	_ZN12ImGuiStorage6SetIntEji;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage6SetIntEji
_ZN12ImGuiStorage6SetIntEji:
.LFB331:
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
	shrq	$4, %rbx
.L5607:
	testl	%ebx, %ebx
	jle	.L5602
	movl	%ebx, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	jbe	.L5605
	jmp	.L5618
	.p2align 4,,7
.L5615:
	movl	%r9d, %r10d
	sarl	%r10d
	movslq	%r10d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	ja	.L5603
	movl	%r10d, %r9d
.L5605:
	testl	%r9d, %r9d
	jne	.L5615
.L5602:
	cmpq	%r11, %rsi
	je	.L5608
	cmpl	(%r11), %edx
	je	.L5616
.L5608:
	movl	%r8d, 40(%rsp)
	leaq	32(%rsp), %r8
	movl	%edx, 32(%rsp)
	movq	%r11, %rdx
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L5618:
	movl	%r9d, %r10d
	movl	%ebx, %r9d
	.p2align 4,,7
.L5603:
	incl	%r10d
	movl	%r9d, %ebx
	leaq	16(%rax), %r11
	subl	%r10d, %ebx
	jmp	.L5607
	.p2align 4,,7
.L5616:
	movl	%r8d, 8(%r11)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC213:
	.ascii ">\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.def	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_:
.LFB620:
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
	.seh_endprologue
	movl	%edx, %esi
	movq	%r8, %rbp
	movq	%r9, %rbx
	movq	GImGui(%rip), %rdi
	movl	%ecx, 432(%rsp)
	movq	6008(%rdi), %r13
	cmpb	$0, 140(%r13)
	movb	$1, 138(%r13)
	jne	.L5655
	movl	%edx, %eax
	xorps	%xmm9, %xmm9
	andl	$2, %eax
	movl	%eax, 84(%rsp)
	movss	5156(%rdi), %xmm10
	movaps	%xmm9, %xmm8
	jne	.L5747
.L5623:
	testq	%rbx, %rbx
	je	.L5748
.L5624:
	xorl	%r8d, %r8d
	movss	.LC20(%rip), %xmm3
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movss	228(%r13), %xmm7
	movq	%rax, 160(%rsp)
	subss	%xmm8, %xmm7
	movaps	%xmm8, %xmm6
	movss	224(%r13), %xmm1
	addss	%xmm8, %xmm6
	movss	196(%r13), %xmm11
	movss	28(%r13), %xmm12
	movaps	%xmm7, %xmm0
	cmpnless	%xmm9, %xmm0
	addss	164(%rsp), %xmm6
	andps	%xmm0, %xmm7
	movss	5160(%rdi), %xmm0
	addss	%xmm0, %xmm0
	addss	5944(%rdi), %xmm0
	minss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movaps	%xmm6, %xmm1
	cmpnless	%xmm0, %xmm1
	andps	%xmm1, %xmm6
	andnps	%xmm0, %xmm1
	orps	%xmm1, %xmm6
	call	_ZN5ImGui19GetContentRegionMaxEv
	movl	%eax, 64(%rsp)
	movaps	%xmm12, %xmm2
	movd	64(%rsp), %xmm0
	addss	%xmm6, %xmm11
	movl	84(%rsp), %r12d
	movq	192(%r13), %rax
	addss	%xmm0, %xmm2
	testl	%r12d, %r12d
	movq	%rax, 208(%rsp)
	movss	%xmm11, 220(%rsp)
	movss	%xmm2, 216(%rsp)
	je	.L5635
	movss	.LC29(%rip), %xmm1
	mulss	84(%r13), %xmm1
	movss	.LC35(%rip), %xmm12
	mulss	%xmm10, %xmm12
	cvttss2si	%xmm1, %eax
	cvtsi2ss	%eax, %xmm1
	subss	.LC28(%rip), %xmm1
	movaps	%xmm1, %xmm0
	movss	208(%rsp), %xmm1
	subss	%xmm0, %xmm1
	addss	%xmm2, %xmm0
	movss	%xmm1, 208(%rsp)
	movss	160(%rsp), %xmm1
	ucomiss	%xmm9, %xmm1
	movss	%xmm0, 216(%rsp)
	movss	5944(%rdi), %xmm0
	addss	%xmm0, %xmm12
	jbe	.L5731
	movaps	%xmm10, %xmm2
	addss	%xmm10, %xmm2
	addss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
.L5740:
	leaq	224(%rsp), %r12
	movaps	%xmm7, %xmm1
	movss	%xmm0, 224(%rsp)
	movq	%r12, %rcx
	movss	%xmm6, 228(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movq	208(%rsp), %rax
	movq	216(%rsp), %rdx
	movq	%rax, 224(%rsp)
	movl	%esi, %eax
	andl	$256, %eax
	movq	%rdx, 232(%rsp)
	movl	%eax, 64(%rsp)
	je	.L5749
.L5639:
	leaq	432(%rsp), %rdx
	movq	%r12, %rcx
	movl	$1, %r14d
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L5744
.L5654:
	movl	%esi, %r15d
	movl	%esi, %r10d
	andl	$4, %r15d
	cmpl	$1, %r15d
	sbbl	%edx, %edx
	andl	$-1024, %edx
	addl	$1554, %edx
	cmpl	$1, %r15d
	sbbl	%ecx, %ecx
	andl	$-1024, %ecx
	addl	$1552, %ecx
	cmpl	$1, %r15d
	sbbl	%eax, %eax
	andl	$-1024, %eax
	addl	$1536, %eax
	andl	$64, %r10d
	movl	%r10d, 88(%rsp)
	jne	.L5750
.L5658:
	movl	432(%rsp), %edx
	leaq	127(%rsp), %r9
	leaq	126(%rsp), %r8
	movl	%eax, 32(%rsp)
	movq	%r12, %rcx
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movl	64(%rsp), %r11d
	testl	%r11d, %r11d
	jne	.L5660
	testb	%al, %al
	je	.L5660
	testb	$-64, %sil
	sete	%r9b
	testb	$-128, %sil
	je	.L5661
	movss	224(%rsp), %xmm0
	leaq	192(%rsp), %rdx
	movl	$1, %r8d
	addss	%xmm12, %xmm0
	movq	%r12, %rcx
	movss	%xmm0, 192(%rsp)
	movss	236(%rsp), %xmm0
	movss	%xmm0, 196(%rsp)
	call	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	orl	%eax, %r9d
.L5661:
	movl	88(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L5662
	orb	944(%rdi), %r9b
.L5662:
	testb	%r9b, %r9b
	jne	.L5751
.L5660:
	testl	%r15d, %r15d
	je	.L5664
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movl	248(%rdx), %edx
	cmpl	%edx, 6056(%rax)
	je	.L5752
.L5665:
	cmpl	6068(%rax), %edx
	je	.L5753
.L5664:
	cmpb	$0, 127(%rsp)
	je	.L5667
	cmpb	$0, 126(%rsp)
	je	.L5669
	movl	$27, %ecx
.L5668:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movaps	%xmm8, %xmm0
	movl	84(%rsp), %edx
	movss	208(%rsp), %xmm1
	addss	%xmm7, %xmm0
	addss	%xmm12, %xmm1
	testl	%edx, %edx
	addss	212(%rsp), %xmm0
	movss	%xmm1, 176(%rsp)
	movss	%xmm0, 180(%rsp)
	je	.L5684
.L5682:
	movss	5164(%rdi), %xmm0
	movq	216(%rsp), %rdx
	movl	%eax, %r8d
	movq	208(%rsp), %rcx
	movss	%xmm0, 32(%rsp)
	movl	$1, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	addss	212(%rsp), %xmm8
	movzbl	%r14b, %edx
	addss	208(%rsp), %xmm10
	movss	.LC28(%rip), %xmm2
	addss	%xmm7, %xmm8
	addss	%xmm9, %xmm10
	movss	%xmm8, 64(%rsp)
	movq	64(%rsp), %rax
	movss	%xmm10, 84(%rsp)
	movl	84(%rsp), %ecx
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	cmpb	$0, 11432(%rdi)
	je	.L5670
	leaq	144(%rsp), %rdx
	leaq	176(%rsp), %rdi
	movl	$2302730, 144(%rsp)
	movw	$8995, 128(%rsp)
	movb	$0, 130(%rsp)
	leaq	3(%rdx), %r8
	movq	%rdi, %rcx
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	leaq	192(%rsp), %rax
	leaq	216(%rsp), %rdx
	movq	%rbp, %r8
	movq	%rdi, %rcx
	movq	$0, 48(%rsp)
	movq	%rbx, %r9
	movq	%rax, 40(%rsp)
	leaq	160(%rsp), %rax
	movl	$0x00000000, 192(%rsp)
	movl	$0x00000000, 196(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	leaq	129(%rsp), %rdx
	leaq	131(%rsp), %r8
	movq	%rdi, %rcx
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	jmp	.L5671
	.p2align 4,,7
.L5640:
	movq	8(%r11), %r8
	movslq	(%r11), %r11
	movl	%esi, %r14d
	shrl	$5, %r14d
	andl	$1, %r14d
	salq	$4, %r11
	leaq	(%r8,%r11), %rax
	shrq	$4, %r11
	movq	%rax, 88(%rsp)
.L5650:
	testl	%r11d, %r11d
	jle	.L5645
	movl	%r11d, %edx
	sarl	%edx
	movslq	%edx, %rax
	salq	$4, %rax
	addq	%r8, %rax
	cmpl	(%rax), %r15d
	jbe	.L5648
	jmp	.L5754
	.p2align 4,,7
.L5732:
	movl	%edx, %ecx
	sarl	%ecx
	movslq	%ecx, %rax
	salq	$4, %rax
	addq	%r8, %rax
	cmpl	(%rax), %r15d
	ja	.L5646
	movl	%ecx, %edx
.L5648:
	testl	%edx, %edx
	jne	.L5732
.L5645:
	cmpq	%r8, 88(%rsp)
	je	.L5651
	cmpl	(%r8), %r15d
	jne	.L5651
	movl	8(%r8), %r14d
.L5651:
	testl	%r14d, %r14d
	setne	%r14b
.L5644:
	cmpb	$0, 11432(%r9)
	je	.L5653
	testb	$16, %sil
	jne	.L5653
	movl	11460(%r9), %eax
	cmpl	%eax, 244(%r10)
	jl	.L5639
	.p2align 4,,7
.L5653:
	leaq	432(%rsp), %rdx
	movq	%r12, %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	jne	.L5654
	testb	%r14b, %r14b
	jne	.L5744
	.p2align 4,,7
.L5655:
	xorl	%eax, %eax
.L5730:
	movaps	240(%rsp), %xmm6
	movaps	256(%rsp), %xmm7
	movaps	272(%rsp), %xmm8
	movaps	288(%rsp), %xmm9
	movaps	304(%rsp), %xmm10
	movaps	320(%rsp), %xmm11
	movaps	336(%rsp), %xmm12
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
.L5635:
	movaps	%xmm10, %xmm11
	movss	160(%rsp), %xmm1
	addss	%xmm10, %xmm11
	movss	5944(%rdi), %xmm0
	ucomiss	%xmm9, %xmm1
	movaps	%xmm11, %xmm12
	addss	%xmm0, %xmm12
	ja	.L5755
	addss	%xmm9, %xmm0
	movaps	%xmm0, %xmm11
.L5741:
	leaq	224(%rsp), %r12
	movaps	%xmm7, %xmm1
	movss	%xmm11, 224(%rsp)
	movq	%r12, %rcx
	movss	%xmm6, 228(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movss	5168(%rdi), %xmm0
	movl	%esi, %eax
	movaps	%xmm0, %xmm1
	andl	$256, %eax
	movss	208(%rsp), %xmm2
	movl	%eax, 64(%rsp)
	addss	%xmm0, %xmm1
	movaps	%xmm11, %xmm0
	movss	%xmm2, 224(%rsp)
	addss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	212(%rsp), %xmm1
	movss	%xmm1, 228(%rsp)
	movss	%xmm0, 232(%rsp)
	movss	220(%rsp), %xmm0
	movss	%xmm0, 236(%rsp)
	jne	.L5639
.L5749:
	movq	GImGui(%rip), %r9
	movl	432(%rsp), %r15d
	movl	6300(%r9), %eax
	movq	6008(%r9), %r10
	testl	%eax, %eax
	movq	296(%r10), %r11
	je	.L5640
	testb	$1, %al
	jne	.L5756
	movq	%r11, %rcx
	movl	$-1, %r8d
	movl	%r15d, %edx
	movq	%r10, 104(%rsp)
	movq	%r9, 96(%rsp)
	movq	%r11, 88(%rsp)
	call	_ZNK12ImGuiStorage6GetIntEji
	testl	%eax, %eax
	movq	88(%rsp), %r11
	movq	96(%rsp), %r9
	setne	%r14b
	incl	%eax
	movq	104(%rsp), %r10
	je	.L5757
.L5642:
	movl	$0, 6300(%r9)
	jmp	.L5644
	.p2align 4,,7
.L5747:
	movss	5160(%rdi), %xmm8
	xorps	%xmm9, %xmm9
	jmp	.L5623
	.p2align 4,,7
.L5667:
	cmpb	$0, 126(%rsp)
	movl	$26, %ecx
	jne	.L5668
.L5669:
	movl	$25, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movaps	%xmm8, %xmm0
	movl	84(%rsp), %ecx
	movss	208(%rsp), %xmm1
	addss	%xmm7, %xmm0
	addss	%xmm12, %xmm1
	testl	%ecx, %ecx
	addss	212(%rsp), %xmm0
	movss	%xmm1, 176(%rsp)
	movss	%xmm0, 180(%rsp)
	jne	.L5682
	testb	$1, %sil
	je	.L5672
.L5684:
	movq	216(%rsp), %rdx
	movq	208(%rsp), %rcx
	xorl	%r9d, %r9d
	movl	$0x00000000, 32(%rsp)
	movl	%eax, %r8d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
.L5672:
	testl	$512, %esi
	jne	.L5758
	movl	64(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L5759
.L5674:
	cmpb	$0, 11432(%rdi)
	jne	.L5760
.L5675:
	movq	176(%rsp), %rcx
	xorl	%r9d, %r9d
	movq	%rbx, %r8
	movq	%rbp, %rdx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
.L5671:
	testb	%r14b, %r14b
	je	.L5655
.L5744:
	andl	$8, %esi
	jne	.L5743
	movl	432(%rsp), %ecx
	call	_ZN5ImGui13TreePushRawIDEj
.L5743:
	movl	$1, %eax
	jmp	.L5730
	.p2align 4,,7
.L5750:
	testb	$-128, %sil
	movl	%edx, %eax
	cmove	%ecx, %eax
	jmp	.L5658
	.p2align 4,,7
.L5755:
	addss	%xmm1, %xmm11
	addss	%xmm0, %xmm11
	jmp	.L5741
	.p2align 4,,7
.L5748:
	cmpq	$-1, %rbp
	je	.L5685
	movzbl	0(%rbp), %eax
	movq	%rbp, %rbx
	testb	%al, %al
	jne	.L5626
	jmp	.L5624
	.p2align 4,,7
.L5627:
	incq	%rbx
	cmpq	$-1, %rbx
	je	.L5624
	movzbl	(%rbx), %eax
	testb	%al, %al
	je	.L5624
.L5626:
	cmpb	$35, %al
	jne	.L5627
	cmpb	$35, 1(%rbx)
	jne	.L5627
	.p2align 4,,5
	jmp	.L5624
.L5754:
	movl	%edx, %ecx
	movl	%r11d, %edx
	.p2align 4,,7
.L5646:
	incl	%ecx
	leaq	16(%rax), %r8
	subl	%ecx, %edx
	movl	%edx, %r11d
	jmp	.L5650
	.p2align 4,,7
.L5760:
	leaq	176(%rsp), %rcx
	leaq	.LC213(%rip), %rdx
	xorl	%r8d, %r8d
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	jmp	.L5675
	.p2align 4,,7
.L5758:
	movss	.LC29(%rip), %xmm0
	movss	5944(%rdi), %xmm1
	mulss	%xmm0, %xmm12
	mulss	%xmm0, %xmm1
	addss	208(%rsp), %xmm12
	addss	%xmm1, %xmm7
	addss	212(%rsp), %xmm7
	movss	%xmm12, 84(%rsp)
	movl	84(%rsp), %ecx
	movss	%xmm7, 64(%rsp)
	movq	64(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui12RenderBulletE6ImVec2
	jmp	.L5674
	.p2align 4,,7
.L5756:
	movzbl	6298(%r9), %r8d
	movl	%r15d, %edx
	movq	%r11, %rcx
	movq	%r10, 96(%rsp)
	movq	%r9, 88(%rsp)
	movl	%r8d, %r14d
	call	_ZN12ImGuiStorage6SetIntEji
	movq	88(%rsp), %r9
	movq	96(%rsp), %r10
	jmp	.L5642
	.p2align 4,,7
.L5670:
	leaq	192(%rsp), %rax
	leaq	216(%rsp), %rdx
	leaq	176(%rsp), %rcx
	movq	$0, 48(%rsp)
	movq	%rbx, %r9
	movq	%rbp, %r8
	movq	%rax, 40(%rsp)
	leaq	160(%rsp), %rax
	movl	$0x00000000, 192(%rsp)
	movl	$0x00000000, 196(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	jmp	.L5671
	.p2align 4,,7
.L5753:
	movb	$1, 6078(%rax)
	jmp	.L5664
	.p2align 4,,7
.L5751:
	movq	296(%r13), %rcx
	movl	432(%rsp), %edx
	xorl	$1, %r14d
	movzbl	%r14b, %r8d
	call	_ZN12ImGuiStorage6SetIntEji
	jmp	.L5660
	.p2align 4,,7
.L5759:
	movss	.LC212(%rip), %xmm0
	addss	208(%rsp), %xmm10
	mulss	5944(%rdi), %xmm0
	movzbl	%r14b, %edx
	movss	.LC44(%rip), %xmm2
	movss	%xmm10, 84(%rsp)
	movl	84(%rsp), %ecx
	addss	%xmm0, %xmm7
	addss	212(%rsp), %xmm7
	movss	%xmm7, 64(%rsp)
	movq	64(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	jmp	.L5674
	.p2align 4,,7
.L5752:
	movb	$1, 6060(%rax)
	jmp	.L5665
.L5757:
	movzbl	6298(%r9), %r8d
	movl	%r15d, %edx
	movq	%r11, %rcx
	movq	%r10, 96(%rsp)
	movq	%r9, 88(%rsp)
	movl	%r8d, %r14d
	call	_ZN12ImGuiStorage6SetIntEji
	movq	96(%rsp), %r10
	movq	88(%rsp), %r9
	jmp	.L5642
.L5685:
	movq	%rbp, %rbx
	jmp	.L5624
.L5731:
	addss	%xmm9, %xmm0
	jmp	.L5740
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui16CollapsingHeaderEPKci
	.def	_ZN5ImGui16CollapsingHeaderEPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16CollapsingHeaderEPKci
_ZN5ImGui16CollapsingHeaderEPKci:
.LFB621:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rcx, %rsi
	movl	%edx, %ebx
	movq	6008(%rax), %rcx
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	je	.L5763
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L5763:
	movq	%rsi, %rdx
	orl	$26, %ebx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
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
.LFB622:
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
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	xorl	%eax, %eax
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L5772
	testq	%rdx, %rdx
	je	.L5766
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L5772
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movl	%r8d, 44(%rsp)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movl	44(%rsp), %r8d
	xorl	%r9d, %r9d
	movl	%eax, %ecx
	movl	%eax, %ebp
	movl	%r8d, %edx
	movq	%rsi, %r8
	orl	$30, %edx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	movss	260(%rbx), %xmm0
	movl	%eax, %esi
	minss	520(%rbx), %xmm0
	movq	GImGui(%rip), %rax
	leal	1(%rbp), %edx
	movss	.LC29(%rip), %xmm6
	movq	%rbx, %rcx
	movss	256(%rbx), %xmm1
	mulss	5944(%rax), %xmm6
	addss	5160(%rax), %xmm1
	subss	5156(%rax), %xmm0
	addss	%xmm6, %xmm1
	subss	%xmm6, %xmm0
	movss	%xmm1, 52(%rsp)
	movss	%xmm0, 48(%rsp)
	call	_ZN11ImGuiWindow5GetIDEPKv
	leaq	48(%rsp), %rdx
	movaps	%xmm6, %xmm2
	movl	%eax, %ecx
	call	_ZN5ImGui11CloseButtonEjRK6ImVec2f
	movl	%eax, %edx
	movl	%esi, %eax
	testb	%dl, %dl
	je	.L5772
	movb	$0, (%rdi)
.L5772:
	movaps	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5766:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movl	%r8d, 44(%rsp)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movl	44(%rsp), %r8d
	xorl	%r9d, %r9d
	movl	%eax, %ecx
	movl	%r8d, %edx
	movq	%rsi, %r8
	orl	$26, %edx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	jmp	.L5772
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10TreeNodeExEPKci
	.def	_ZN5ImGui10TreeNodeExEPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10TreeNodeExEPKci
_ZN5ImGui10TreeNodeExEPKci:
.LFB623:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rcx, %rbx
	movl	%edx, %esi
	movq	6008(%rax), %rcx
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	je	.L5777
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L5777:
	movq	%rbx, %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
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
.LFB624:
	pushq	%r12
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
	movq	6008(%rcx), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L5782
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L5782:
	leaq	11960(%rcx), %rdi
	movl	$3073, %edx
	movq	%rdi, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L5781
	cmpl	$3072, %eax
	movslq	%eax, %rsi
	jg	.L5781
.L5780:
	addq	%rdi, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rsi)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	%ebp, %edx
	movl	%eax, %ecx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.p2align 4,,7
.L5781:
	movl	$3072, %esi
	jmp	.L5780
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11TreeNodeExVEPKviPKcPc
	.def	_ZN5ImGui11TreeNodeExVEPKviPKcPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11TreeNodeExVEPKviPKcPc
_ZN5ImGui11TreeNodeExVEPKviPKcPc:
.LFB625:
	pushq	%r12
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
	movq	6008(%rcx), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L5787
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L5787:
	leaq	11960(%rcx), %rdi
	movl	$3073, %edx
	movq	%rdi, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L5786
	cmpl	$3072, %eax
	movslq	%eax, %rsi
	jg	.L5786
.L5785:
	addq	%rdi, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rsi)
	call	_ZN11ImGuiWindow5GetIDEPKv
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	%ebp, %edx
	movl	%eax, %ecx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.p2align 4,,7
.L5786:
	movl	$3072, %esi
	jmp	.L5785
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8TreeNodeEPKc
	.def	_ZN5ImGui8TreeNodeEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8TreeNodeEPKc
_ZN5ImGui8TreeNodeEPKc:
.LFB632:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rcx, %rbx
	movq	6008(%rax), %rcx
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	je	.L5790
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L5790:
	movq	%rbx, %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
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
.LFB627:
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
	movq	6008(%rcx), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L5795
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5795:
	leaq	11960(%rcx), %rdi
	movq	%r8, %r9
	movq	%rdx, %r8
	movl	$3073, %edx
	movq	%rdi, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L5794
	cmpl	$3072, %eax
	movslq	%eax, %rsi
	jg	.L5794
.L5793:
	addq	%rdi, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rsi)
	call	_ZN11ImGuiWindow5GetIDEPKv
	movq	%rsi, %r9
	movq	%rdi, %r8
	xorl	%edx, %edx
	movl	%eax, %ecx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.p2align 4,,7
.L5794:
	movl	$3072, %esi
	jmp	.L5793
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10TreeNodeExEPKviPKcz
	.def	_ZN5ImGui10TreeNodeExEPKviPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10TreeNodeExEPKviPKcz
_ZN5ImGui10TreeNodeExEPKviPKcz:
.LFB629:
	pushq	%r12
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
	xorl	%eax, %eax
	movq	%rcx, %r12
	movq	GImGui(%rip), %rcx
	movq	%r9, 120(%rsp)
	leaq	120(%rsp), %r9
	movl	%edx, %edi
	movq	6008(%rcx), %rbp
	movq	%r9, 40(%rsp)
	cmpb	$0, 140(%rbp)
	movb	$1, 138(%rbp)
	je	.L5801
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L5801:
	leaq	11960(%rcx), %rsi
	movl	$3073, %edx
	movq	%rsi, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L5800
	cmpl	$3072, %eax
	movslq	%eax, %rbx
	jg	.L5800
.L5798:
	addq	%rsi, %rbx
	movq	%r12, %rdx
	movq	%rbp, %rcx
	movb	$0, (%rbx)
	call	_ZN11ImGuiWindow5GetIDEPKv
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	%edi, %edx
	movl	%eax, %ecx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L5800:
	movl	$3072, %ebx
	jmp	.L5798
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8TreeNodeEPKvPKcz
	.def	_ZN5ImGui8TreeNodeEPKvPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8TreeNodeEPKvPKcz
_ZN5ImGui8TreeNodeEPKvPKcz:
.LFB631:
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
	xorl	%eax, %eax
	movq	%r8, 112(%rsp)
	movq	GImGui(%rip), %r8
	movq	%rcx, %rbp
	movq	%r9, 120(%rsp)
	leaq	112(%rsp), %r9
	movq	6008(%r8), %rbx
	movq	%r9, 40(%rsp)
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L5807
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5807:
	leaq	11960(%r8), %rdi
	movq	%rdx, %r8
	movl	$3073, %edx
	movq	%rdi, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L5806
	cmpl	$3072, %eax
	movslq	%eax, %rsi
	jg	.L5806
.L5804:
	addq	%rdi, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rsi)
	call	_ZN11ImGuiWindow5GetIDEPKv
	movq	%rsi, %r9
	movq	%rdi, %r8
	xorl	%edx, %edx
	movl	%eax, %ecx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5806:
	movl	$3072, %esi
	jmp	.L5804
	.seh_endproc
	.section .rdata,"dr"
.LC214:
	.ascii "non-indexed\0"
.LC215:
	.ascii "indexed\0"
.LC216:
	.ascii "DrawList\0"
	.align 8
.LC217:
	.ascii "%s: '%s' %d vtx, %d indices, %d cmds\0"
.LC219:
	.ascii "CURRENTLY APPENDING\0"
	.align 8
.LC220:
	.ascii "Draw %-4d %s vtx, tex = %p, clip_rect = (%.0f,%.0f)..(%.0f,%.0f)\0"
.LC221:
	.ascii "   \0"
	.align 8
.LC222:
	.ascii "%s %04d { pos = (%8.2f,%8.2f), uv = (%.6f,%.6f), col = %08X }\12\0"
.LC223:
	.ascii "ItemsCount == -1\0"
.LC224:
	.ascii "vtx\0"
	.text
	.p2align 4,,15
	.def	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs12NodeDrawListEP10ImDrawListPKc.constprop.142;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs12NodeDrawListEP10ImDrawListPKc.constprop.142
_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs12NodeDrawListEP10ImDrawListPKc.constprop.142:
.LFB6196:
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
	subq	$584, %rsp
	.seh_stackalloc	584
	movaps	%xmm6, 560(%rsp)
	.seh_savexmm	%xmm6, 560
	.seh_endprologue
	leaq	.LC91(%rip), %r9
	movq	%rcx, %r14
	movl	(%rcx), %r8d
	movl	32(%r14), %edx
	movq	48(%r14), %rax
	movl	16(%rcx), %ecx
	movl	%r8d, 48(%rsp)
	movl	%edx, 32(%rsp)
	leaq	.LC216(%rip), %r8
	testq	%rax, %rax
	leaq	.LC217(%rip), %rdx
	movl	%ecx, 40(%rsp)
	cmovne	%rax, %r9
	movq	%r14, %rcx
.LEHB14:
	call	_ZN5ImGui8TreeNodeEPKvPKcz
	movq	GImGui(%rip), %rcx
	movl	%eax, %ebx
	movq	6008(%rcx), %rdx
	cmpq	656(%rdx), %r14
	movb	$1, 138(%rdx)
	je	.L5898
	testb	%al, %al
	jne	.L5899
.L5808:
	movaps	560(%rsp), %xmm6
	addq	$584, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L5898:
	cmpb	$0, 140(%rdx)
	jne	.L5811
	movss	5168(%rcx), %xmm0
	addss	200(%rdx), %xmm0
	movss	%xmm0, 192(%rdx)
	movss	204(%rdx), %xmm0
	movss	%xmm0, 196(%rdx)
	movss	232(%rdx), %xmm0
	movss	%xmm0, 224(%rdx)
	movss	236(%rdx), %xmm0
	movss	%xmm0, 228(%rdx)
.L5811:
	leaq	256(%rsp), %rcx
	leaq	.LC219(%rip), %rdx
	movl	$0x3f800000, 256(%rsp)
	movl	$0x3ec8c8ca, 260(%rsp)
	movl	$0x3ec8c8ca, 264(%rsp)
	movl	$0x3f800000, 268(%rsp)
	call	_ZN5ImGui11TextColoredERK6ImVec4PKcz
	testb	%bl, %bl
	je	.L5808
	jmp	.L5896
.L5899:
	leaq	6392(%rcx), %rax
	movq	%rax, %rcx
	movq	%rax, 120(%rsp)
	call	_ZN10ImDrawList22PushClipRectFullScreenEv
	movq	8(%r14), %rax
	movq	%rax, %rdi
	movq	%rax, 136(%rsp)
	movslq	(%r14), %rax
	movq	%rax, %rdx
	salq	$6, %rax
	salq	$4, %rdx
	subq	%rdx, %rax
	addq	%rdi, %rax
	cmpq	%rax, %rdi
	jnb	.L5860
	movq	%rdi, %rax
	leaq	64(%rdi), %rdi
	movl	$0, 132(%rsp)
	movq	%rax, %rcx
	leaq	192(%rsp), %rax
	movq	%rdi, 152(%rsp)
	leaq	224(%rsp), %rdi
	movq	%rax, 144(%rsp)
	leaq	256(%rsp), %rax
	movq	%rdi, 96(%rsp)
	leaq	232(%rsp), %rdi
	movq	%rax, 104(%rsp)
	leaq	264(%rsp), %rax
	movaps	.LC71(%rip), %xmm6
	movq	%rdi, 160(%rsp)
	movq	%rax, 168(%rsp)
	jmp	.L5859
	.p2align 4,,7
.L5900:
	movq	40(%rax), %r8
	leaq	.LC166(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz.constprop.144
.L5858:
	movq	136(%rsp), %rax
	addq	$48, 152(%rsp)
	movl	(%rax), %ecx
	addq	$48, %rax
	movq	%rax, %rdi
	movq	%rax, 136(%rsp)
	movslq	(%r14), %rax
	addl	%ecx, 132(%rsp)
	movq	8(%r14), %rcx
	movq	%rax, %rdx
	salq	$6, %rax
	salq	$4, %rdx
	subq	%rdx, %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdi
	jnb	.L5860
.L5859:
	movq	136(%rsp), %rax
	movq	32(%rax), %rdx
	testq	%rdx, %rdx
	jne	.L5900
	movl	16(%r14), %edx
	testl	%edx, %edx
	jle	.L5818
	cvtss2sd	16(%rax), %xmm3
	movq	24(%r14), %r15
	leaq	.LC215(%rip), %r9
	cvtss2sd	12(%rax), %xmm2
	movq	24(%rax), %rdx
	movq	%rax, %rdi
	cvtss2sd	8(%rax), %xmm1
	cvtss2sd	4(%rax), %xmm0
.L5863:
	movq	%rdi, %rax
	movq	%rdx, 32(%rsp)
	movsd	%xmm3, 64(%rsp)
	subq	%rcx, %rax
	movsd	%xmm2, 56(%rsp)
	leaq	.LC220(%rip), %rdx
	movq	%rax, %rcx
	movabsq	$-6148914691236517205, %rax
	movsd	%xmm1, 48(%rsp)
	sarq	$4, %rcx
	movsd	%xmm0, 40(%rsp)
	movl	(%rdi), %r8d
	imulq	%rax, %rcx
	call	_ZN5ImGui8TreeNodeEPKvPKcz
	cmpb	$0, _ZZN5ImGui17ShowMetricsWindowEPbE15show_clip_rects(%rip)
	movl	%eax, %ebx
	je	.L5819
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	cmpb	$0, 268(%rax)
	je	.L5819
	movq	152(%rsp), %rdi
	movq	136(%rsp), %rax
	movlps	4(%rax), %xmm2
	prefetcht0	(%rdi)
	movl	132(%rsp), %edi
	movl	(%rax), %edx
	movss	8(%rax), %xmm3
	prefetcht0	52(%rax)
	movhps	12(%rax), %xmm2
	movss	4(%rax), %xmm0
	movss	16(%rax), %xmm4
	movss	12(%rax), %xmm1
	movl	%edi, %eax
	addl	%edx, %eax
	cmpl	%eax, %edi
	movaps	%xmm2, 224(%rsp)
	movaps	%xmm6, 256(%rsp)
	jge	.L5864
	movslq	%edi, %rax
	testq	%r15, %r15
	movl	%edi, %esi
	leaq	(%r15,%rax,2), %rdi
	jne	.L5842
	jmp	.L5901
	.p2align 4,,7
.L5833:
	movq	%rbp, %rax
	movss	256(%rsp), %xmm0
	salq	$4, %rax
	leaq	(%rax,%rbp,4), %rax
	addq	40(%r14), %rax
	movss	(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L5834
	movss	%xmm1, 256(%rsp)
	movss	(%rax), %xmm1
.L5834:
	movss	4(%rax), %xmm0
	movss	260(%rsp), %xmm2
	ucomiss	%xmm0, %xmm2
	jbe	.L5836
	movss	%xmm0, 260(%rsp)
	movss	4(%rax), %xmm0
.L5836:
	ucomiss	264(%rsp), %xmm1
	jbe	.L5838
	movss	%xmm1, 264(%rsp)
.L5838:
	ucomiss	268(%rsp), %xmm0
	jbe	.L5840
	movss	%xmm0, 268(%rsp)
.L5840:
	movl	132(%rsp), %eax
	incl	%esi
	addq	$2, %rdi
	addl	%edx, %eax
	cmpl	%esi, %eax
	jle	.L5831
.L5842:
	movzwl	(%rdi), %eax
	cmpl	32(%r14), %eax
	movq	%rax, %rbp
	jl	.L5833
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	136(%rsp), %rax
	movl	(%rax), %edx
	jmp	.L5833
.L5901:
	movq	%rax, %rcx
	salq	$4, %rcx
	leaq	(%rcx,%rax,4), %rdi
.L5832:
	cmpl	32(%r14), %esi
	jl	.L5822
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	136(%rsp), %rax
	movl	(%rax), %edx
.L5822:
	movq	%rdi, %rax
	addq	40(%r14), %rax
	movss	256(%rsp), %xmm0
	movss	(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L5823
	movss	%xmm1, 256(%rsp)
	movss	(%rax), %xmm1
.L5823:
	movss	4(%rax), %xmm0
	movss	260(%rsp), %xmm2
	ucomiss	%xmm0, %xmm2
	jbe	.L5825
	movss	%xmm0, 260(%rsp)
	movss	4(%rax), %xmm0
.L5825:
	ucomiss	264(%rsp), %xmm1
	jbe	.L5827
	movss	%xmm1, 264(%rsp)
.L5827:
	ucomiss	268(%rsp), %xmm0
	jbe	.L5829
	movss	%xmm0, 268(%rsp)
.L5829:
	movl	132(%rsp), %eax
	incl	%esi
	addq	$20, %rdi
	addl	%edx, %eax
	cmpl	%esi, %eax
	jg	.L5832
.L5831:
	movss	224(%rsp), %xmm0
	movss	228(%rsp), %xmm3
	movss	232(%rsp), %xmm1
	movss	236(%rsp), %xmm4
.L5864:
	unpcklps	%xmm4, %xmm1
	movq	120(%rsp), %rdi
	movq	160(%rsp), %r8
	unpcklps	%xmm3, %xmm0
	movq	96(%rsp), %rdx
	movl	$-16711681, %r9d
	movl	$0x3f800000, 48(%rsp)
	movl	$-1, 40(%rsp)
	movq	%rdi, %rcx
	movl	$0x00000000, 32(%rsp)
	movlhps	%xmm1, %xmm0
	cvttps2dq	%xmm0, %xmm0
	cvtdq2ps	%xmm0, %xmm0
	movaps	%xmm0, 224(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movl	$-65281, %r9d
	movq	%rdi, %rcx
	movss	256(%rsp), %xmm0
	movq	168(%rsp), %r8
	cvttss2si	%xmm0, %eax
	movq	104(%rsp), %rdx
	movss	260(%rsp), %xmm1
	movl	$0x3f800000, 48(%rsp)
	movss	264(%rsp), %xmm2
	movl	$-1, 40(%rsp)
	movss	268(%rsp), %xmm3
	movl	$0x00000000, 32(%rsp)
	cvtsi2ss	%eax, %xmm0
	cvttss2si	%xmm1, %eax
	movss	%xmm0, 256(%rsp)
	cvtsi2ss	%eax, %xmm0
	cvttss2si	%xmm2, %eax
	movss	%xmm0, 260(%rsp)
	cvtsi2ss	%eax, %xmm0
	cvttss2si	%xmm3, %eax
	movss	%xmm0, 264(%rsp)
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 268(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
.LEHE14:
.L5819:
	testb	%bl, %bl
	je	.L5858
	movq	136(%rsp), %rax
	movl	$-1431655765, %edx
	movl	(%rax), %eax
	movl	$0xbf800000, 196(%rsp)
	movl	$0, 204(%rsp)
	movl	$-1, 208(%rsp)
	movl	$-1, 212(%rsp)
	movl	%eax, 88(%rsp)
	mull	%edx
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	shrl	%edx
	movl	%edx, 200(%rsp)
	movss	196(%rax), %xmm0
	subss	32(%rax), %xmm0
	addss	100(%rax), %xmm0
	leaq	176(%rsp), %rax
	movq	%rax, 112(%rsp)
	movss	%xmm0, 192(%rsp)
.L5845:
	movq	144(%rsp), %rcx
.LEHB15:
	call	_ZN16ImGuiListClipper4StepEv
	testb	%al, %al
	je	.L5843
	movl	208(%rsp), %eax
	leal	(%rax,%rax,2), %ebx
	addl	132(%rsp), %ebx
	cmpl	212(%rsp), %eax
	movl	%eax, 128(%rsp)
	jge	.L5845
	.p2align 4,,7
.L5889:
	leal	1(%rbx), %edi
	movslq	%ebx, %rbx
	xorl	%esi, %esi
	leaq	(%r15,%rbx,2), %rax
	testq	%r15, %r15
	movl	$0x00000000, 228(%rsp)
	movl	$0x00000000, 224(%rsp)
	movl	$0x00000000, 236(%rsp)
	movl	$1, %r12d
	movl	$0x00000000, 232(%rsp)
	movl	$0x00000000, 244(%rsp)
	leal	-1(%rdi), %r13d
	movl	$0x00000000, 240(%rsp)
	movq	%rax, 88(%rsp)
	movq	104(%rsp), %rbp
	je	.L5871
.L5904:
	movq	88(%rsp), %rax
	movzwl	(%rax,%rsi,2), %ebx
	cmpl	%ebx, 32(%r14)
	jle	.L5848
.L5851:
	movq	%rbx, %rax
	movq	96(%rsp), %rcx
	salq	$4, %rax
	leaq	(%rax,%rbx,4), %rax
	addq	40(%r14), %rax
	testq	%rsi, %rsi
	movq	(%rax), %rdx
	movq	%rdx, (%rcx,%rsi,8)
	movl	16(%rax), %edx
	cvtss2sd	12(%rax), %xmm3
	cvtss2sd	8(%rax), %xmm2
	cvtss2sd	4(%rax), %xmm1
	cvtss2sd	(%rax), %xmm0
	je	.L5902
	movl	%edx, 64(%rsp)
	movsd	%xmm3, 56(%rsp)
	leaq	.LC221(%rip), %r8
	movsd	%xmm2, 48(%rsp)
	leaq	.LC222(%rip), %rdx
	movl	%r13d, %r9d
	movsd	%xmm1, 40(%rsp)
	movq	%rbp, %rcx
	movl	%edi, %ebx
	movsd	%xmm0, 32(%rsp)
	call	sprintf
	cmpl	$3, %r12d
	je	.L5903
	cltq
	addq	%rax, %rbp
.L5866:
	incl	%edi
	incq	%rsi
	incl	%r12d
	testq	%r15, %r15
	leal	-1(%rdi), %r13d
	jne	.L5904
.L5871:
	movslq	%r13d, %rbx
	cmpl	%ebx, 32(%r14)
	jg	.L5851
	.p2align 4,,7
.L5848:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L5851
	.p2align 4,,7
.L5903:
	movq	112(%rsp), %r8
	movq	104(%rsp), %rcx
	xorl	%edx, %edx
	movl	$0x00000000, 176(%rsp)
	movl	$0x00000000, 180(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.143
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	cmpb	$0, 268(%rax)
	jne	.L5853
.L5856:
	incl	128(%rsp)
	movl	128(%rsp), %eax
	cmpl	%eax, 212(%rsp)
	jg	.L5889
	jmp	.L5845
	.p2align 4,,7
.L5853:
	movq	96(%rsp), %rdx
	movq	120(%rsp), %rcx
	movl	$-16711681, %r9d
	movl	$0, 48(%rsp)
	movl	$0x3f800000, 40(%rsp)
	movl	$3, %r8d
	movl	$1, 32(%rsp)
	call	_ZN10ImDrawList11AddPolylineEPK6ImVec2ijbfb
	jmp	.L5856
.L5902:
	movl	%edx, 64(%rsp)
	movsd	%xmm3, 56(%rsp)
	leaq	.LC224(%rip), %r8
	movsd	%xmm2, 48(%rsp)
	leaq	.LC222(%rip), %rdx
	movq	%rbp, %rcx
	movsd	%xmm1, 40(%rsp)
	movl	%r13d, %r9d
	movsd	%xmm0, 32(%rsp)
	call	sprintf
	cltq
	addq	%rax, %rbp
	jmp	.L5866
.L5843:
	call	_ZN5ImGui7TreePopEv
.LEHE15:
	cmpl	$-1, 200(%rsp)
	je	.L5858
	leaq	.LC10(%rip), %rdx
	leaq	.LC223(%rip), %rcx
	movl	$1103, %r8d
	call	_assert
	jmp	.L5858
.L5818:
	movq	152(%rsp), %rax
	xorl	%r15d, %r15d
	leaq	.LC214(%rip), %r9
	prefetcht0	(%rax)
	movq	136(%rsp), %rax
	cvtss2sd	16(%rax), %xmm3
	movq	24(%rax), %rdx
	movq	%rax, %rdi
	cvtss2sd	12(%rax), %xmm2
	cvtss2sd	8(%rax), %xmm1
	cvtss2sd	4(%rax), %xmm0
	jmp	.L5863
.L5872:
	cmpl	$-1, 200(%rsp)
	movq	%rax, %rbx
	je	.L5862
	leaq	.LC10(%rip), %rdx
	leaq	.LC223(%rip), %rcx
	movl	$1103, %r8d
	call	_assert
.L5862:
	movq	%rbx, %rcx
.LEHB16:
	call	_Unwind_Resume
.L5860:
	movq	120(%rsp), %rcx
	call	_ZN10ImDrawList11PopClipRectEv
.L5896:
	call	_ZN5ImGui7TreePopEv
.LEHE16:
	jmp	.L5808
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6196:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6196-.LLSDACSB6196
.LLSDACSB6196:
	.uleb128 .LEHB14-.LFB6196
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB6196
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L5872-.LFB6196
	.uleb128 0
	.uleb128 .LEHB16-.LFB6196
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE6196:
	.text
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9TreeNodeVEPKcS1_Pc
	.def	_ZN5ImGui9TreeNodeVEPKcS1_Pc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9TreeNodeVEPKcS1_Pc
_ZN5ImGui9TreeNodeVEPKcS1_Pc:
.LFB626:
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
	movq	6008(%rcx), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L5909
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5909:
	leaq	11960(%rcx), %rdi
	movq	%r8, %r9
	movq	%rdx, %r8
	movl	$3073, %edx
	movq	%rdi, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L5908
	cmpl	$3072, %eax
	movslq	%eax, %rsi
	jg	.L5908
.L5907:
	addq	%rdi, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rsi)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rsi, %r9
	movq	%rdi, %r8
	xorl	%edx, %edx
	movl	%eax, %ecx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	.p2align 4,,7
.L5908:
	movl	$3072, %esi
	jmp	.L5907
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8TreeNodeEPKcS1_z
	.def	_ZN5ImGui8TreeNodeEPKcS1_z;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8TreeNodeEPKcS1_z
_ZN5ImGui8TreeNodeEPKcS1_z:
.LFB630:
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
	xorl	%eax, %eax
	movq	%r8, 112(%rsp)
	movq	GImGui(%rip), %r8
	movq	%rcx, %rbp
	movq	%r9, 120(%rsp)
	leaq	112(%rsp), %r9
	movq	6008(%r8), %rbx
	movq	%r9, 40(%rsp)
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L5915
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5915:
	leaq	11960(%r8), %rdi
	movq	%rdx, %r8
	movl	$3073, %edx
	movq	%rdi, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L5914
	cmpl	$3072, %eax
	movslq	%eax, %rsi
	jg	.L5914
.L5912:
	addq	%rdi, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movb	$0, (%rsi)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rsi, %r9
	movq	%rdi, %r8
	xorl	%edx, %edx
	movl	%eax, %ecx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5914:
	movl	$3072, %esi
	jmp	.L5912
	.seh_endproc
	.section .rdata,"dr"
.LC225:
	.ascii "%s '%s', %d @ 0x%p\0"
.LC226:
	.ascii "Pos: (%.1f,%.1f)\0"
	.align 8
.LC227:
	.ascii "Size: (%.1f,%.1f), SizeContents (%.1f,%.1f)\0"
.LC228:
	.ascii "Scroll: (%.2f,%.2f)\0"
.LC229:
	.ascii "RootWindow\0"
.LC230:
	.ascii "ChildWindows\0"
.LC231:
	.ascii "%s (%d)\0"
.LC232:
	.ascii "Window\0"
.LC233:
	.ascii "Storage: %d bytes\0"
	.text
	.p2align 4,,15
	.def	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc
_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc:
.LFB5788:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	cmpb	$0, 136(%rcx)
	movl	$1, %eax
	movq	%rcx, %rbx
	movq	%rdx, %r8
	jne	.L5917
	movzbl	137(%rcx), %eax
.L5917:
	movq	(%rbx), %r9
	leaq	.LC225(%rip), %rdx
	movq	%rbx, 40(%rsp)
	movl	%eax, 32(%rsp)
	movq	%rbx, %rcx
	call	_ZN5ImGui8TreeNodeEPKvPKcz
	testb	%al, %al
	jne	.L5931
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L5931:
	movq	656(%rbx), %rcx
	call	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs12NodeDrawListEP10ImDrawListPKc.constprop.142
	cvtss2sd	32(%rbx), %xmm1
	leaq	.LC226(%rip), %rcx
	cvtss2sd	28(%rbx), %xmm0
	movsd	%xmm1, 56(%rsp)
	movq	56(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 56(%rsp)
	movq	56(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui10BulletTextEPKcz
	cvtss2sd	52(%rbx), %xmm2
	leaq	.LC227(%rip), %rcx
	cvtss2sd	40(%rbx), %xmm1
	cvtss2sd	36(%rbx), %xmm0
	cvtss2sd	56(%rbx), %xmm4
	movsd	%xmm2, 56(%rsp)
	movq	56(%rsp), %r9
	movsd	%xmm2, %xmm3
	movsd	%xmm1, 56(%rsp)
	movq	56(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 56(%rsp)
	movq	56(%rsp), %rdx
	movsd	%xmm0, %xmm1
	movsd	%xmm4, 32(%rsp)
	call	_ZN5ImGui10BulletTextEPKcz
	cvtss2sd	100(%rbx), %xmm1
	leaq	.LC228(%rip), %rcx
	cvtss2sd	96(%rbx), %xmm0
	movsd	%xmm1, 56(%rsp)
	movq	56(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 56(%rsp)
	movq	56(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui10BulletTextEPKcz
	movq	664(%rbx), %rcx
	cmpq	%rcx, %rbx
	je	.L5919
	leaq	.LC229(%rip), %rdx
	call	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc
.L5919:
	movl	280(%rbx), %r9d
	testl	%r9d, %r9d
	jle	.L5921
	leaq	.LC230(%rip), %r8
	leaq	.LC231(%rip), %rdx
	movq	%r8, %rcx
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	testb	%al, %al
	je	.L5921
	movl	280(%rbx), %eax
	testl	%eax, %eax
	jle	.L5923
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.L5924
	.p2align 4,,7
.L5930:
	addq	$8, %rdi
.L5924:
	movq	288(%rbx), %rax
	leaq	.LC232(%rip), %rdx
	incl	%esi
	movq	(%rax,%rdi), %rcx
	call	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc
	cmpl	%esi, 280(%rbx)
	jg	.L5930
.L5923:
	call	_ZN5ImGui7TreePopEv
.L5921:
	movl	632(%rbx), %edx
	leaq	.LC233(%rip), %rcx
	sall	$4, %edx
	call	_ZN5ImGui10BulletTextEPKcz
	nop
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN5ImGui7TreePopEv
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10TreeNodeExEPKciS1_z
	.def	_ZN5ImGui10TreeNodeExEPKciS1_z;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10TreeNodeExEPKciS1_z
_ZN5ImGui10TreeNodeExEPKciS1_z:
.LFB628:
	pushq	%r12
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
	xorl	%eax, %eax
	movq	%rcx, %r12
	movq	GImGui(%rip), %rcx
	movq	%r9, 120(%rsp)
	leaq	120(%rsp), %r9
	movl	%edx, %edi
	movq	6008(%rcx), %rbp
	movq	%r9, 40(%rsp)
	cmpb	$0, 140(%rbp)
	movb	$1, 138(%rbp)
	je	.L5937
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L5937:
	leaq	11960(%rcx), %rsi
	movl	$3073, %edx
	movq	%rsi, %rcx
	call	__ms_vsnprintf
	cmpl	$-1, %eax
	je	.L5936
	cmpl	$3072, %eax
	movslq	%eax, %rbx
	jg	.L5936
.L5934:
	addq	%rsi, %rbx
	movq	%r12, %rdx
	movq	%rbp, %rcx
	movb	$0, (%rbx)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	%edi, %edx
	movl	%eax, %ecx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L5936:
	movl	$3072, %ebx
	jmp	.L5934
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui22TreeNodeBehaviorIsOpenEji
	.def	_ZN5ImGui22TreeNodeBehaviorIsOpenEji;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui22TreeNodeBehaviorIsOpenEji
_ZN5ImGui22TreeNodeBehaviorIsOpenEji:
.LFB619:
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
	testb	$1, %dh
	movl	%edx, %esi
	jne	.L5939
	movq	GImGui(%rip), %rbx
	movl	6300(%rbx), %eax
	movq	6008(%rbx), %rdi
	testl	%eax, %eax
	movq	296(%rdi), %r9
	jne	.L5982
	movslq	(%r9), %rbp
	movq	8(%r9), %r10
	movl	%edx, %r11d
	shrl	$5, %r11d
	andl	$1, %r11d
	salq	$4, %rbp
	leaq	(%r10,%rbp), %r9
	shrq	$4, %rbp
.L5957:
	testl	%ebp, %ebp
	jle	.L5952
	movl	%ebp, %edx
	sarl	%edx
	movslq	%edx, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %ecx
	jbe	.L5955
	jmp	.L5983
	.p2align 4,,7
.L5978:
	movl	%edx, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %ecx
	ja	.L5953
	movl	%r8d, %edx
.L5955:
	testl	%edx, %edx
	jne	.L5978
.L5952:
	cmpq	%r10, %r9
	je	.L5958
	cmpl	(%r10), %ecx
	je	.L5959
.L5958:
	testl	%r11d, %r11d
	setne	%bpl
.L5951:
	cmpb	$0, 11432(%rbx)
	movl	%ebp, %eax
	je	.L5973
	andl	$16, %esi
	jne	.L5973
	movl	11460(%rbx), %esi
	cmpl	%esi, 244(%rdi)
	jge	.L5973
.L5939:
	movl	$1, %eax
.L5973:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L5982:
	testb	$1, %al
	jne	.L5949
	movslq	(%r9), %rbp
	movq	8(%r9), %r10
	salq	$4, %rbp
	leaq	(%r10,%rbp), %r11
	shrq	$4, %rbp
.L5948:
	testl	%ebp, %ebp
	jle	.L5943
	movl	%ebp, %edx
	sarl	%edx
	movslq	%edx, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %ecx
	jbe	.L5946
	jmp	.L5984
	.p2align 4,,7
.L5977:
	movl	%edx, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %ecx
	ja	.L5944
	movl	%r8d, %edx
.L5946:
	testl	%edx, %edx
	jne	.L5977
.L5943:
	cmpq	%r10, %r11
	je	.L5949
	cmpl	(%r10), %ecx
	je	.L5950
.L5949:
	movzbl	6298(%rbx), %r8d
	movl	%ecx, %edx
	movq	%r9, %rcx
	movl	%r8d, %ebp
	call	_ZN12ImGuiStorage6SetIntEji
.L5942:
	movl	$0, 6300(%rbx)
	jmp	.L5951
.L5983:
	movl	%edx, %r8d
	movl	%ebp, %edx
	.p2align 4,,7
.L5953:
	incl	%r8d
	leaq	16(%rax), %r10
	subl	%r8d, %edx
	movl	%edx, %ebp
	jmp	.L5957
	.p2align 4,,7
.L5959:
	movl	8(%r10), %r11d
	jmp	.L5958
.L5950:
	movl	8(%r10), %eax
	cmpl	$-1, %eax
	je	.L5949
	testl	%eax, %eax
	setne	%bpl
	jmp	.L5942
.L5984:
	movl	%edx, %r8d
	movl	%ebp, %edx
	.p2align 4,,7
.L5944:
	incl	%r8d
	leaq	16(%rax), %r10
	subl	%r8d, %edx
	movl	%edx, %ebp
	jmp	.L5948
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage8SetFloatEjf
	.def	_ZN12ImGuiStorage8SetFloatEjf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage8SetFloatEjf
_ZN12ImGuiStorage8SetFloatEjf:
.LFB333:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movslq	(%rcx), %r11
	movq	8(%rcx), %r10
	salq	$4, %r11
	leaq	(%r10,%r11), %rbx
	shrq	$4, %r11
.L5991:
	testl	%r11d, %r11d
	jle	.L5986
	movl	%r11d, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %edx
	jbe	.L5989
	jmp	.L6002
	.p2align 4,,7
.L5999:
	movl	%r8d, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%r10, %rax
	cmpl	(%rax), %edx
	ja	.L5987
	movl	%r9d, %r8d
.L5989:
	testl	%r8d, %r8d
	jne	.L5999
.L5986:
	cmpq	%r10, %rbx
	je	.L5992
	cmpl	(%r10), %edx
	je	.L6000
.L5992:
	leaq	32(%rsp), %r8
	movl	%edx, 32(%rsp)
	movq	%r10, %rdx
	movss	%xmm2, 40(%rsp)
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
.L6002:
	movl	%r8d, %r9d
	movl	%r11d, %r8d
	.p2align 4,,7
.L5987:
	incl	%r9d
	movl	%r8d, %r11d
	leaq	16(%rax), %r10
	subl	%r9d, %r11d
	jmp	.L5991
	.p2align 4,,7
.L6000:
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
.LFB334:
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
	shrq	$4, %rbx
.L6009:
	testl	%ebx, %ebx
	jle	.L6004
	movl	%ebx, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	jbe	.L6007
	jmp	.L6020
	.p2align 4,,7
.L6017:
	movl	%r9d, %r10d
	sarl	%r10d
	movslq	%r10d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	ja	.L6005
	movl	%r10d, %r9d
.L6007:
	testl	%r9d, %r9d
	jne	.L6017
.L6004:
	cmpq	%r11, %rsi
	je	.L6010
	cmpl	(%r11), %edx
	je	.L6018
.L6010:
	movq	%r8, 40(%rsp)
	leaq	32(%rsp), %r8
	movl	%edx, 32(%rsp)
	movq	%r11, %rdx
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L6020:
	movl	%r9d, %r10d
	movl	%ebx, %r9d
	.p2align 4,,7
.L6005:
	incl	%r10d
	movl	%r9d, %ebx
	leaq	16(%rax), %r11
	subl	%r10d, %ebx
	jmp	.L6009
	.p2align 4,,7
.L6018:
	movq	%r8, 8(%r11)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15SetColumnOffsetEif
	.def	_ZN5ImGui15SetColumnOffsetEif;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15SetColumnOffsetEif
_ZN5ImGui15SetColumnOffsetEif:
.LFB791:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	testl	%ecx, %ecx
	movl	%ecx, %ebx
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rsi
	movb	$1, 138(%rsi)
	js	.L6041
.L6022:
	cmpl	480(%rsi), %ebx
	jge	.L6042
	movss	448(%rsi), %xmm2
	subss	%xmm2, %xmm1
	movss	452(%rsi), %xmm0
	subss	%xmm2, %xmm0
	movaps	%xmm1, %xmm6
	divss	%xmm0, %xmm6
.L6024:
	movq	296(%rsi), %rcx
	movq	488(%rsi), %rax
	movslq	%ebx, %rdx
	addl	472(%rsi), %ebx
	movslq	(%rcx), %r11
	movss	%xmm6, (%rax,%rdx,4)
	movq	8(%rcx), %rdx
	movl	%ebx, %r10d
	salq	$4, %r11
	leaq	(%rdx,%r11), %rbx
	shrq	$4, %r11
.L6030:
	testl	%r11d, %r11d
	jle	.L6025
	movl	%r11d, %r8d
	sarl	%r8d
	movslq	%r8d, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	cmpl	(%rax), %r10d
	jbe	.L6028
	jmp	.L6043
	.p2align 4,,7
.L6038:
	movl	%r8d, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	cmpl	(%rax), %r10d
	ja	.L6026
	movl	%r9d, %r8d
.L6028:
	testl	%r8d, %r8d
	jne	.L6038
.L6025:
	cmpq	%rdx, %rbx
	je	.L6031
	cmpl	(%rdx), %r10d
	je	.L6039
.L6031:
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
.L6043:
	movl	%r8d, %r9d
	movl	%r11d, %r8d
	.p2align 4,,7
.L6026:
	incl	%r9d
	movl	%r8d, %r11d
	leaq	16(%rax), %rdx
	subl	%r9d, %r11d
	jmp	.L6030
	.p2align 4,,7
.L6039:
	movss	%xmm6, 8(%rdx)
	movaps	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L6042:
	leaq	.LC15(%rip), %rdx
	leaq	.LC189(%rip), %rcx
	movl	$9407, %r8d
	movss	%xmm1, 44(%rsp)
	call	_assert
	movss	44(%rsp), %xmm1
	movaps	%xmm1, %xmm6
	movss	448(%rsi), %xmm2
	movss	452(%rsi), %xmm0
	cmpl	480(%rsi), %ebx
	subss	%xmm2, %xmm6
	subss	%xmm2, %xmm0
	divss	%xmm0, %xmm6
	jl	.L6024
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L6024
	.p2align 4,,7
.L6041:
	movl	440(%rsi), %ebx
	jmp	.L6022
	.seh_endproc
	.section .rdata,"dr"
.LC234:
	.ascii "#CLOSECOLUMNS\0"
	.align 8
.LC235:
	.ascii "*p_backup == current && \"PushID/PopID or TreeNode/TreePop Mismatch!\"\0"
	.align 8
.LC236:
	.ascii "*p_backup == current && \"BeginGroup/EndGroup Mismatch!\"\0"
	.align 8
.LC237:
	.ascii "*p_backup == current && \"BeginMenu/EndMenu or BeginPopup/EndPopup Mismatch\"\0"
	.align 8
.LC238:
	.ascii "*p_backup == current && \"PushStyleColor/PopStyleColor Mismatch!\"\0"
	.align 8
.LC239:
	.ascii "*p_backup == current && \"PushStyleVar/PopStyleVar Mismatch!\"\0"
	.align 8
.LC240:
	.ascii "*p_backup == current && \"PushFont/PopFont Mismatch!\"\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui3EndEv
	.def	_ZN5ImGui3EndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui3EndEv
_ZN5ImGui3EndEv:
.LFB501:
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
	.seh_endprologue
	movq	GImGui(%rip), %rsi
	movq	6008(%rsi), %rbx
	cmpl	$1, 444(%rbx)
	je	.L6045
	movl	440(%rbx), %edx
	movb	$1, 138(%rbx)
	xorps	%xmm6, %xmm6
	testl	%edx, %edx
	jne	.L6101
.L6046:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui11PopClipRectEv
	movq	656(%rbx), %rcx
	call	_ZN10ImDrawList13ChannelsMergeEv
	movss	196(%rbx), %xmm8
	movl	444(%rbx), %eax
	movaps	%xmm8, %xmm0
	movss	464(%rbx), %xmm1
	cmpnless	%xmm1, %xmm0
	cmpl	$1, %eax
	andps	%xmm0, %xmm8
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm8
	movss	%xmm8, 464(%rbx)
	movss	%xmm8, 196(%rbx)
	je	.L6052
	cmpb	$0, 468(%rbx)
	jne	.L6102
.L6052:
	movl	$287454023, %ecx
	call	_ZN5ImGui6PushIDEi
	leaq	.LC234(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movl	%eax, 472(%rbx)
	call	_ZN5ImGui5PopIDEv
	movss	60(%rbx), %xmm0
	movl	$0, 440(%rbx)
	ucomiss	%xmm6, %xmm0
	movl	$1, 444(%rbx)
	movb	$1, 468(%rbx)
	jp	.L6050
	jne	.L6050
	movss	36(%rbx), %xmm0
.L6050:
	testb	$8, 12(%rbx)
	movss	428(%rbx), %xmm1
	movss	%xmm1, 448(%rbx)
	subss	96(%rbx), %xmm0
	movaps	%xmm6, %xmm2
	jne	.L6066
	movss	5200(%rsi), %xmm2
.L6066:
	addss	28(%rbx), %xmm1
	movl	$0x00000000, 436(%rbx)
	subss	%xmm2, %xmm0
	movss	%xmm0, 452(%rbx)
	addss	%xmm1, %xmm6
	movss	196(%rbx), %xmm0
	movss	%xmm0, 456(%rbx)
	movss	%xmm0, 464(%rbx)
	movss	%xmm0, 460(%rbx)
	cvttss2si	%xmm6, %eax
	cvtsi2ss	%eax, %xmm0
	movl	484(%rbx), %eax
	testl	%eax, %eax
	movss	%xmm0, 192(%rbx)
	jns	.L6067
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	incl	844(%rax)
	call	*232(%rax)
	movq	488(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L6068
	movslq	480(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	488(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6070
	decl	844(%rax)
.L6070:
	call	*240(%rax)
	movq	%rdi, 488(%rbx)
	movl	$0, 484(%rbx)
.L6067:
	movl	$0, 480(%rbx)
.L6045:
	call	_ZN5ImGui11PopClipRectEv
	testb	$16, 14(%rbx)
	je	.L6103
	movl	6016(%rsi), %eax
	testl	%eax, %eax
	jle	.L6104
.L6072:
	decl	%eax
	movl	%eax, 6016(%rsi)
	testb	$2, 15(%rbx)
	je	.L6073
	movl	6200(%rsi), %eax
	testl	%eax, %eax
	jle	.L6105
.L6074:
	decl	%eax
	movl	%eax, 6200(%rsi)
.L6073:
	movl	404(%rbx), %eax
	cmpl	%eax, 496(%rbx)
	movq	GImGui(%rip), %rdi
	je	.L6075
	leaq	.LC15(%rip), %rdx
	leaq	.LC235(%rip), %rcx
	movl	$3726, %r8d
	call	_assert
.L6075:
	movl	408(%rbx), %eax
	cmpl	%eax, 384(%rbx)
	je	.L6076
	leaq	.LC15(%rip), %rdx
	leaq	.LC236(%rip), %rcx
	movl	$3727, %r8d
	call	_assert
.L6076:
	movl	412(%rbx), %eax
	cmpl	%eax, 6200(%rdi)
	je	.L6077
	leaq	.LC15(%rip), %rdx
	leaq	.LC237(%rip), %rcx
	movl	$3728, %r8d
	call	_assert
.L6077:
	movl	416(%rbx), %eax
	cmpl	%eax, 6136(%rdi)
	je	.L6078
	leaq	.LC15(%rip), %rdx
	leaq	.LC238(%rip), %rcx
	movl	$3729, %r8d
	call	_assert
.L6078:
	movl	420(%rbx), %eax
	cmpl	%eax, 6152(%rdi)
	je	.L6079
	leaq	.LC15(%rip), %rdx
	leaq	.LC239(%rip), %rcx
	movl	$3730, %r8d
	call	_assert
.L6079:
	movl	424(%rbx), %eax
	cmpl	%eax, 6168(%rdi)
	je	.L6080
	leaq	.LC15(%rip), %rdx
	leaq	.LC240(%rip), %rcx
	movl	$3731, %r8d
	call	_assert
.L6080:
	movslq	6016(%rsi), %rax
	testl	%eax, %eax
	jne	.L6106
	movq	GImGui(%rip), %rax
	movq	$0, 6008(%rax)
.L6044:
	movaps	112(%rsp), %xmm6
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
	movaps	160(%rsp), %xmm9
	movaps	176(%rsp), %xmm10
	movaps	192(%rsp), %xmm11
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
.L6106:
	testl	%eax, %eax
	jle	.L6107
.L6082:
	movq	6024(%rsi), %rdx
	movq	-8(%rdx,%rax,8), %rdx
	movq	GImGui(%rip), %rax
	testq	%rdx, %rdx
	movq	%rdx, 6008(%rax)
	je	.L6044
	movss	648(%rdx), %xmm0
	mulss	5948(%rax), %xmm0
	movss	%xmm0, 5944(%rax)
	jmp	.L6044
	.p2align 4,,7
.L6103:
	call	_ZN5ImGui9LogFinishEv
	movl	6016(%rsi), %eax
	testl	%eax, %eax
	jg	.L6072
.L6104:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6016(%rsi), %eax
	jmp	.L6072
	.p2align 4,,7
.L6101:
	leaq	96(%rsp), %rcx
	movaps	%xmm6, %xmm1
	movss	%xmm6, 96(%rsp)
	movss	%xmm6, 100(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	jmp	.L6046
	.p2align 4,,7
.L6102:
	cmpb	$0, 140(%rbx)
	jne	.L6052
	decl	%eax
	movss	456(%rbx), %xmm10
	jle	.L6052
	leaq	63(%rsp), %r14
	leaq	62(%rsp), %r13
	leaq	96(%rsp), %r12
	leaq	64(%rsp), %rbp
	leaq	80(%rsp), %rdi
	movl	$1, %r15d
	movss	.LC34(%rip), %xmm9
	movss	.LC28(%rip), %xmm11
	.p2align 4,,7
.L6065:
	movss	28(%rbx), %xmm7
	movl	%r15d, %ecx
	call	_ZN5ImGui15GetColumnOffsetEi
	addss	%xmm0, %xmm7
	movq	GImGui(%rip), %rax
	movl	472(%rbx), %edx
	movss	%xmm10, 100(%rsp)
	movss	%xmm8, 108(%rsp)
	movq	6008(%rax), %rcx
	addl	%r15d, %edx
	movaps	%xmm7, %xmm0
	movaps	%xmm7, %xmm1
	addss	%xmm9, %xmm0
	subss	%xmm9, %xmm1
	movss	%xmm0, 104(%rsp)
	movss	%xmm1, 96(%rsp)
	ucomiss	516(%rcx), %xmm8
	jbe	.L6053
	movss	524(%rcx), %xmm2
	ucomiss	%xmm10, %xmm2
	jbe	.L6053
	ucomiss	512(%rcx), %xmm0
	jbe	.L6053
	movss	520(%rcx), %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.L6057
	.p2align 4,,7
.L6053:
	cmpl	6068(%rax), %edx
	je	.L6057
	cmpb	$0, 11432(%rax)
	je	.L6064
.L6057:
	movl	$0, 32(%rsp)
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%r12, %rcx
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	cmpb	$0, 62(%rsp)
	je	.L6059
	cmpb	$1, 63(%rsp)
	movl	$4, 6544(%rsi)
	sbbl	%ecx, %ecx
	addl	$30, %ecx
.L6060:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	cvttss2si	%xmm7, %edx
	movq	656(%rbx), %rcx
	movss	%xmm11, 32(%rsp)
	movl	%eax, %r9d
	movq	%rbp, %r8
	movss	%xmm8, 68(%rsp)
	cvtsi2ss	%edx, %xmm0
	movq	%rdi, %rdx
	movss	%xmm0, 64(%rsp)
	movss	%xmm0, 80(%rsp)
	movaps	%xmm10, %xmm0
	addss	%xmm11, %xmm0
	movss	%xmm0, 84(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	cmpb	$0, 63(%rsp)
	je	.L6064
	cmpb	$0, 6077(%rsi)
	jne	.L6108
.L6063:
	movl	%r15d, %ecx
	call	_ZL22GetDraggedColumnOffseti
	movaps	%xmm0, %xmm1
	movl	%r15d, %ecx
	call	_ZN5ImGui15SetColumnOffsetEif
.L6064:
	incl	%r15d
	cmpl	%r15d, 444(%rbx)
	jg	.L6065
	jmp	.L6052
	.p2align 4,,7
.L6105:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6200(%rsi), %eax
	jmp	.L6074
	.p2align 4,,7
.L6059:
	cmpb	$0, 63(%rsp)
	je	.L6109
	movl	$4, 6544(%rsi)
	movl	$30, %ecx
	jmp	.L6060
	.p2align 4,,7
.L6068:
	movq	GImGui(%rip), %rax
	jmp	.L6070
	.p2align 4,,7
.L6109:
	movl	$28, %ecx
	jmp	.L6060
	.p2align 4,,7
.L6108:
	movss	6080(%rsi), %xmm0
	subss	%xmm9, %xmm0
	movss	%xmm0, 6080(%rsi)
	jmp	.L6063
	.p2align 4,,7
.L6107:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6016(%rsi), %rax
	jmp	.L6082
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC241:
	.ascii "GetCurrentWindowRead()->Flags & ImGuiWindowFlags_Tooltip\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10EndTooltipEv
	.def	_ZN5ImGui10EndTooltipEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10EndTooltipEv
_ZN5ImGui10EndTooltipEv:
.LFB468:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	testb	$1, 15(%rax)
	jne	.L6111
	leaq	.LC15(%rip), %rdx
	leaq	.LC241(%rip), %rcx
	movl	$3409, %r8d
	call	_assert
	nop
.L6111:
	addq	$40, %rsp
	jmp	_ZN5ImGui3EndEv
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC242:
	.ascii "window->Flags & ImGuiWindowFlags_Popup\0"
	.align 8
.LC243:
	.ascii "GImGui->CurrentPopupStack.Size > 0\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8EndPopupEv
	.def	_ZN5ImGui8EndPopupEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8EndPopupEv
_ZN5ImGui8EndPopupEv:
.LFB481:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	testb	$2, 15(%rbx)
	movb	$1, 138(%rbx)
	je	.L6117
	movl	6200(%rax), %eax
	testl	%eax, %eax
	jle	.L6118
.L6114:
	call	_ZN5ImGui3EndEv
	testb	$4, 15(%rbx)
	je	.L6119
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L6119:
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui11PopStyleVarEi.constprop.160
	.p2align 4,,7
.L6117:
	leaq	.LC15(%rip), %rdx
	leaq	.LC242(%rip), %rcx
	movl	$3588, %r8d
	call	_assert
	movq	GImGui(%rip), %rax
	movl	6200(%rax), %eax
	testl	%eax, %eax
	jg	.L6114
.L6118:
	leaq	.LC15(%rip), %rdx
	leaq	.LC243(%rip), %rcx
	movl	$3589, %r8d
	call	_assert
	jmp	.L6114
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC244:
	.ascii "window->Flags & ImGuiWindowFlags_ChildWindow\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8EndChildEv
	.def	_ZN5ImGui8EndChildEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8EndChildEv
_ZN5ImGui8EndChildEv:
.LFB488:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movl	12(%rbx), %eax
	movb	$1, 138(%rbx)
	testl	$1048576, %eax
	je	.L6139
.L6121:
	testl	$8388608, %eax
	jne	.L6122
	cmpl	$1, 144(%rbx)
	jle	.L6123
.L6122:
	call	_ZN5ImGui3EndEv
	nop
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L6123:
	movq	GImGui(%rip), %rdx
	testl	$2097152, %eax
	movq	6008(%rdx), %rdx
	movss	36(%rdx), %xmm1
	movss	40(%rdx), %xmm0
	movss	%xmm1, 32(%rsp)
	movss	%xmm0, 36(%rsp)
	je	.L6125
	movaps	%xmm1, %xmm2
	movss	.LC34(%rip), %xmm3
	cmpnless	%xmm3, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm3, %xmm2
	orps	%xmm2, %xmm1
	movss	%xmm1, 32(%rsp)
.L6125:
	testl	$4194304, %eax
	je	.L6128
	movaps	%xmm0, %xmm1
	movss	.LC34(%rip), %xmm2
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 36(%rsp)
.L6128:
	call	_ZN5ImGui3EndEv
	movq	GImGui(%rip), %rax
	leaq	32(%rsp), %rcx
	movq	6008(%rax), %rax
	movss	192(%rax), %xmm1
	movb	$1, 138(%rax)
	addss	32(%rsp), %xmm1
	movss	196(%rax), %xmm0
	addss	36(%rsp), %xmm0
	movq	192(%rax), %rax
	movq	%rax, 48(%rsp)
	movss	%xmm1, 56(%rsp)
	xorps	%xmm1, %xmm1
	movss	%xmm0, 60(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	nop
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L6139:
	leaq	.LC15(%rip), %rdx
	leaq	.LC244(%rip), %rcx
	movl	$3679, %r8d
	call	_assert
	movl	12(%rbx), %eax
	jmp	.L6121
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13ListBoxFooterEv
	.def	_ZN5ImGui13ListBoxFooterEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13ListBoxFooterEv
_ZN5ImGui13ListBoxFooterEv:
.LFB762:
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
	jle	.L6144
.L6141:
	leal	-2(%rax), %ebx
	cmpl	%eax, %ebx
	jl	.L6142
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
.L6142:
	movq	6024(%rsi), %rax
	movslq	%ebx, %rbx
	movq	GImGui(%rip), %rsi
	movq	(%rax,%rbx,8), %rbx
	movss	252(%rbx), %xmm9
	movss	256(%rbx), %xmm8
	movss	260(%rbx), %xmm7
	movss	264(%rbx), %xmm6
	call	_ZN5ImGui8EndChildEv
	call	_ZN5ImGui11PopStyleVarEi.constprop.159
	call	_ZN5ImGui13PopStyleColorEi.constprop.161
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L6143
	movss	5168(%rdx), %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L6143:
	subss	%xmm9, %xmm7
	movss	%xmm9, 192(%rbx)
	leaq	32(%rsp), %rcx
	subss	%xmm8, %xmm6
	movss	%xmm8, 196(%rbx)
	movss	5160(%rsi), %xmm1
	movss	%xmm7, 32(%rsp)
	movss	%xmm6, 36(%rsp)
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
	.p2align 4,,7
.L6144:
	leaq	.LC15(%rip), %rdx
	leaq	.LC96(%rip), %rcx
	movl	$1860, %r8d
	call	_assert
	movl	6016(%rsi), %eax
	jmp	.L6141
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui14EndMainMenuBarEv
	.def	_ZN5ImGui14EndMainMenuBarEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14EndMainMenuBarEv
_ZN5ImGui14EndMainMenuBarEv:
.LFB768:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L6146
	testb	$4, 13(%rbx)
	je	.L6150
	cmpb	$0, 270(%rbx)
	je	.L6151
.L6148:
	call	_ZN5ImGui11PopClipRectEv
	call	_ZN5ImGui5PopIDEv
	movss	192(%rbx), %xmm0
	movslq	384(%rbx), %rax
	subss	28(%rbx), %xmm0
	testl	%eax, %eax
	movss	%xmm0, 272(%rbx)
	jle	.L6152
.L6149:
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rax
	addq	392(%rbx), %rax
	movb	$0, -3(%rax)
	call	_ZN5ImGui8EndGroupEv
	movl	$0, 304(%rbx)
	movb	$0, 270(%rbx)
.L6146:
	call	_ZN5ImGui3EndEv
	nop
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui11PopStyleVarEi.constprop.159
	.p2align 4,,7
.L6151:
	leaq	.LC15(%rip), %rdx
	leaq	.LC188(%rip), %rcx
	movl	$8845, %r8d
	call	_assert
	jmp	.L6148
	.p2align 4,,7
.L6150:
	leaq	.LC15(%rip), %rdx
	leaq	.LC187(%rip), %rcx
	movl	$8844, %r8d
	call	_assert
	cmpb	$0, 270(%rbx)
	jne	.L6148
	jmp	.L6151
	.p2align 4,,7
.L6152:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	384(%rbx), %rax
	jmp	.L6149
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7EndMenuEv
	.def	_ZN5ImGui7EndMenuEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7EndMenuEv
_ZN5ImGui7EndMenuEv:
.LFB772:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	testb	$2, 15(%rbx)
	movb	$1, 138(%rbx)
	je	.L6158
	movl	6200(%rax), %eax
	testl	%eax, %eax
	jle	.L6159
.L6155:
	call	_ZN5ImGui3EndEv
	testb	$4, 15(%rbx)
	je	.L6160
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L6160:
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5ImGui11PopStyleVarEi.constprop.160
	.p2align 4,,7
.L6158:
	leaq	.LC15(%rip), %rdx
	leaq	.LC242(%rip), %rcx
	movl	$3588, %r8d
	call	_assert
	movq	GImGui(%rip), %rax
	movl	6200(%rax), %eax
	testl	%eax, %eax
	jg	.L6155
.L6159:
	leaq	.LC15(%rip), %rdx
	leaq	.LC243(%rip), %rcx
	movl	$3589, %r8d
	call	_assert
	jmp	.L6155
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13EndChildFrameEv
	.def	_ZN5ImGui13EndChildFrameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13EndChildFrameEv
_ZN5ImGui13EndChildFrameEv:
.LFB490:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movl	12(%rbx), %eax
	movb	$1, 138(%rbx)
	testl	$1048576, %eax
	je	.L6183
.L6162:
	testl	$8388608, %eax
	jne	.L6163
	cmpl	$1, 144(%rbx)
	jle	.L6164
.L6163:
	call	_ZN5ImGui3EndEv
.L6165:
	call	_ZN5ImGui11PopStyleVarEi.constprop.159
	movq	GImGui(%rip), %rbx
	movl	6136(%rbx), %eax
	testl	%eax, %eax
	jle	.L6184
	movslq	%eax, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
.L6173:
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L6164:
	movq	GImGui(%rip), %rdx
	testl	$2097152, %eax
	movq	6008(%rdx), %rdx
	movss	36(%rdx), %xmm1
	movss	40(%rdx), %xmm0
	movss	%xmm1, 32(%rsp)
	movss	%xmm0, 36(%rsp)
	je	.L6166
	movaps	%xmm1, %xmm2
	movss	.LC34(%rip), %xmm3
	cmpnless	%xmm3, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm3, %xmm2
	orps	%xmm2, %xmm1
	movss	%xmm1, 32(%rsp)
.L6166:
	testl	$4194304, %eax
	je	.L6169
	movaps	%xmm0, %xmm1
	movss	.LC34(%rip), %xmm2
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 36(%rsp)
.L6169:
	call	_ZN5ImGui3EndEv
	movq	GImGui(%rip), %rax
	leaq	32(%rsp), %rcx
	movq	6008(%rax), %rax
	movss	192(%rax), %xmm1
	movb	$1, 138(%rax)
	addss	32(%rsp), %xmm1
	movss	196(%rax), %xmm0
	addss	36(%rsp), %xmm0
	movq	192(%rax), %rax
	movq	%rax, 48(%rsp)
	movss	%xmm1, 56(%rsp)
	xorps	%xmm1, %xmm1
	movss	%xmm0, 60(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	jmp	.L6165
	.p2align 4,,7
.L6183:
	leaq	.LC15(%rip), %rdx
	leaq	.LC244(%rip), %rcx
	movl	$3679, %r8d
	call	_assert
	movl	12(%rbx), %eax
	jmp	.L6162
	.p2align 4,,7
.L6184:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6136(%rbx), %rdx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	salq	$4, %rcx
	leaq	-20(%rcx,%rdx,4), %rcx
	addq	6144(%rbx), %rcx
	movslq	(%rcx), %rdx
	movq	4(%rcx), %r9
	movq	12(%rcx), %r10
	addq	$328, %rdx
	salq	$4, %rdx
	testl	%eax, %eax
	movq	%r9, (%rbx,%rdx)
	movq	%r10, 8(%rbx,%rdx)
	jg	.L6173
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	6136(%rbx), %eax
	decl	%eax
	movl	%eax, 6136(%rbx)
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4,,15
	.globl	_ZN12ImGuiStorage7SetBoolEjb
	.def	_ZN12ImGuiStorage7SetBoolEjb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN12ImGuiStorage7SetBoolEjb
_ZN12ImGuiStorage7SetBoolEjb:
.LFB332:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movslq	(%rcx), %rbx
	movq	8(%rcx), %r11
	movzbl	%r8b, %r8d
	salq	$4, %rbx
	leaq	(%r11,%rbx), %rsi
	shrq	$4, %rbx
.L6191:
	testl	%ebx, %ebx
	jle	.L6186
	movl	%ebx, %r9d
	sarl	%r9d
	movslq	%r9d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	jbe	.L6189
	jmp	.L6201
	.p2align 4,,7
.L6199:
	movl	%r9d, %r10d
	sarl	%r10d
	movslq	%r10d, %rax
	salq	$4, %rax
	addq	%r11, %rax
	cmpl	(%rax), %edx
	ja	.L6187
	movl	%r10d, %r9d
.L6189:
	testl	%r9d, %r9d
	jne	.L6199
.L6186:
	cmpq	%r11, %rsi
	je	.L6192
	cmpl	(%r11), %edx
	je	.L6202
.L6192:
	movl	%r8d, 40(%rsp)
	leaq	32(%rsp), %r8
	movl	%edx, 32(%rsp)
	movq	%r11, %rdx
	call	_ZN8ImVectorIN12ImGuiStorage4PairEE6insertEPKS1_RS3_
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L6201:
	movl	%r9d, %r10d
	movl	%ebx, %r9d
	.p2align 4,,7
.L6187:
	incl	%r10d
	movl	%r9d, %ebx
	leaq	16(%rax), %r11
	subl	%r10d, %ebx
	jmp	.L6191
	.p2align 4,,7
.L6202:
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
.LFB5937:
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
	movl	4(%rcx), %edx
	movq	%rcx, %rsi
	cmpl	%edi, %edx
	jge	.L6204
	testl	%edx, %edx
	movl	$8, %eax
	je	.L6205
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L6205:
	cmpl	%eax, %edi
	jl	.L6214
	movl	%edi, %ebx
.L6206:
	movq	GImGui(%rip), %rax
	movslq	%ebx, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rsi), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L6207
	movslq	(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	8(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6209
	decl	844(%rax)
.L6209:
	call	*240(%rax)
	movq	%rbp, 8(%rsi)
	movl	%ebx, 4(%rsi)
.L6204:
	movl	%edi, (%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L6214:
	cmpl	%eax, %edx
	jge	.L6204
	movl	%eax, %ebx
	jmp	.L6206
	.p2align 4,,7
.L6207:
	movq	GImGui(%rip), %rax
	jmp	.L6209
	.seh_endproc
	.section	.text$_ZN8ImVectorIjE4backEv,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorIjE4backEv
	.def	_ZN8ImVectorIjE4backEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIjE4backEv
_ZN8ImVectorIjE4backEv:
.LFB5946:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movslq	(%rcx), %rax
	movq	%rcx, %rbx
	testl	%eax, %eax
	jle	.L6217
.L6216:
	movq	8(%rbx), %rdx
	leaq	-4(%rdx,%rax,4), %rax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L6217:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	(%rbx), %rax
	jmp	.L6216
	.seh_endproc
	.section	.text$_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_
	.def	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_
_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_:
.LFB5964:
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
	movslq	(%rcx), %rdx
	movq	%rcx, %rbx
	cmpl	4(%rcx), %edx
	je	.L6219
	movq	8(%rcx), %rax
	leal	1(%rdx), %r8d
.L6220:
	movl	%r8d, (%rbx)
	movq	0(%rbp), %r8
	movq	%r8, (%rax,%rdx,8)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L6219:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L6229
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %esi
	jl	.L6222
.L6230:
	movq	8(%rbx), %rax
	jmp	.L6220
	.p2align 4,,7
.L6229:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %esi
	jge	.L6230
.L6222:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rcx
	salq	$3, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L6223
	movslq	(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6225
	decl	844(%rax)
.L6225:
	call	*240(%rax)
	movslq	(%rbx), %rdx
	movq	%rdi, 8(%rbx)
	movq	%rdi, %rax
	movl	%esi, 4(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L6220
	.p2align 4,,7
.L6223:
	movq	GImGui(%rip), %rax
	jmp	.L6225
	.seh_endproc
	.section .rdata,"dr"
.LC246:
	.ascii "name != __null\0"
.LC247:
	.ascii "g.Initialized\0"
	.align 8
.LC248:
	.ascii "g.FrameCountEnded != g.FrameCount\0"
	.align 8
.LC251:
	.ascii "parent_window != __null || !(flags & ImGuiWindowFlags_ChildWindow)\0"
.LC252:
	.ascii "window_pos_set_by_api\0"
.LC256:
	.ascii "#RESIZE\0"
.LC257:
	.ascii "#CLOSE\0"
	.align 8
.LC258:
	.ascii "(flags & ImGuiWindowFlags_NoTitleBar) != 0\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	.def	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
_ZN5ImGui5BeginEPKcPbRK6ImVec2fi:
.LFB500:
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
	subq	$392, %rsp
	.seh_stackalloc	392
	movaps	%xmm6, 224(%rsp)
	.seh_savexmm	%xmm6, 224
	movaps	%xmm7, 240(%rsp)
	.seh_savexmm	%xmm7, 240
	movaps	%xmm8, 256(%rsp)
	.seh_savexmm	%xmm8, 256
	movaps	%xmm9, 272(%rsp)
	.seh_savexmm	%xmm9, 272
	movaps	%xmm10, 288(%rsp)
	.seh_savexmm	%xmm10, 288
	movaps	%xmm11, 304(%rsp)
	.seh_savexmm	%xmm11, 304
	movaps	%xmm12, 320(%rsp)
	.seh_savexmm	%xmm12, 320
	movaps	%xmm13, 336(%rsp)
	.seh_savexmm	%xmm13, 336
	movaps	%xmm14, 352(%rsp)
	.seh_savexmm	%xmm14, 352
	movaps	%xmm15, 368(%rsp)
	.seh_savexmm	%xmm15, 368
	.seh_endprologue
	testq	%rcx, %rcx
	movaps	%xmm3, %xmm11
	movq	%rcx, 464(%rsp)
	movq	%rdx, 472(%rsp)
	movq	%r8, 480(%rsp)
	movl	496(%rsp), %ebp
	movq	GImGui(%rip), %rbx
	je	.L6883
.L6232:
	cmpb	$0, (%rbx)
	je	.L6884
	movl	5964(%rbx), %eax
	cmpl	%eax, 5968(%rbx)
	je	.L6885
.L6234:
	movq	464(%rsp), %rcx
	movl	%ebp, %eax
	orl	$6, %eax
	testl	$512, %ebp
	cmovne	%eax, %ebp
	call	_ZN5ImGui16FindWindowByNameEPKc
	testq	%rax, %rax
	movq	%rax, 184(%rsp)
	je	.L6886
	leaq	208(%rsp), %rdi
	xorps	%xmm6, %xmm6
	movb	$0, 116(%rsp)
	movq	%rdi, 80(%rsp)
.L6236:
	movq	GImGui(%rip), %rdx
	movl	544(%rax), %esi
	movl	5964(%rdx), %edi
	movl	%esi, 88(%rsp)
	cmpl	%edi, %esi
	movl	%edi, 72(%rsp)
	je	.L6261
	movl	%ebp, 12(%rax)
.L6262:
	movslq	6016(%rbx), %rax
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.L6887
.L6263:
	leaq	184(%rsp), %rax
	leaq	6016(%rbx), %rcx
	movq	%rax, %rdx
	movq	%rax, 120(%rsp)
	call	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_
	movq	184(%rsp), %rax
	movq	GImGui(%rip), %rdx
	testq	%rax, %rax
	movq	%rax, 6008(%rdx)
	je	.L6265
	movss	5948(%rdx), %xmm0
	mulss	648(%rax), %xmm0
	movss	%xmm0, 5944(%rdx)
.L6265:
	movl	496(%rax), %ecx
	testq	%r14, %r14
	movl	%ebp, %edi
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
	je	.L6266
	andl	$1048576, %edi
	movl	%edi, 92(%rsp)
.L6267:
	movl	72(%rsp), %edi
	leal	-1(%rdi), %edx
	cmpl	%edx, 544(%rax)
	movl	%ebp, %edi
	sete	%r12b
	andl	$33554432, %edi
	movl	%edi, 136(%rsp)
	je	.L6268
	movslq	6200(%rbx), %rsi
	cmpl	6184(%rbx), %esi
	movslq	%esi, %rdx
	jge	.L6888
.L6269:
	movq	%rsi, %rcx
	movl	6204(%rbx), %r8d
	salq	$5, %rcx
	leaq	(%rcx,%rsi,8), %rdi
	addq	6192(%rbx), %rdi
	movl	(%rdi), %esi
	cmpl	%esi, 148(%rax)
	sete	%cl
	andl	%ecx, %r12d
	cmpq	%rax, 8(%rdi)
	movq	%rax, 8(%rdi)
	sete	%cl
	andl	%ecx, %r12d
	cmpl	%edx, %r8d
	je	.L6270
	movq	6208(%rbx), %rsi
	leal	1(%rdx), %ecx
.L6271:
	movl	%ecx, 6200(%rbx)
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	(%rcx,%rdx,8), %rdx
	addq	%rdx, %rsi
	movq	(%rdi), %rdx
	movq	%rdx, (%rsi)
	movq	8(%rdi), %rdx
	movq	%rdx, 8(%rsi)
	movq	16(%rdi), %rdx
	movq	%rdx, 16(%rsi)
	movq	24(%rdi), %rdx
	movq	%rdx, 24(%rsi)
	movl	32(%rdi), %edx
	movl	%edx, 32(%rsi)
	movl	(%rdi), %edx
	movl	%edx, 148(%rax)
.L6268:
	cmpl	$1, 168(%rax)
	movl	6244(%rbx), %edx
	movb	$0, 96(%rsp)
	sete	76(%rsp)
	testl	%edx, %edx
	movzbl	76(%rsp), %edi
	je	.L6277
	cmpb	%dil, %r12b
	movl	172(%rax), %ecx
	ja	.L6279
	orl	$8, %ecx
	movl	%ecx, 172(%rax)
.L6279:
	andl	%ecx, %edx
	setne	96(%rsp)
	jne	.L6889
.L6572:
	movl	$0, 6244(%rbx)
.L6277:
	movl	6248(%rbx), %edx
	movb	$0, 112(%rsp)
	testl	%edx, %edx
	je	.L6282
	cmpb	76(%rsp), %r12b
	movl	176(%rax), %ecx
	ja	.L6284
	orl	$8, %ecx
	movl	%ecx, 176(%rax)
.L6284:
	andl	%ecx, %edx
	setne	112(%rsp)
	jne	.L6890
.L6285:
	movl	$0, 6248(%rbx)
.L6282:
	movl	6252(%rbx), %edx
	testl	%edx, %edx
	je	.L6291
	movq	6232(%rbx), %rdx
	movq	%rdx, 60(%rax)
	movl	$0, 6252(%rbx)
.L6292:
	movl	6256(%rbx), %ecx
	testl	%ecx, %ecx
	je	.L6293
	cmpb	76(%rsp), %r12b
	movl	180(%rax), %edx
	ja	.L6295
	orl	$8, %edx
	movl	%edx, 180(%rax)
.L6295:
	testl	%edx, %ecx
	jne	.L6891
.L6296:
	movl	$0, 6256(%rbx)
.L6293:
	cmpb	$0, 6297(%rbx)
	jne	.L6892
.L6297:
	movl	6016(%rbx), %ecx
	leal	-1(%rcx), %esi
	movslq	%esi, %rax
	testl	%esi, %esi
	movl	%esi, %edi
	leaq	0(,%rax,8), %r13
	movq	%r13, %r15
	jg	.L6834
	jmp	.L6299
	.p2align 4,,7
.L6300:
	movq	6024(%rbx), %rdx
	movq	(%rdx,%r13), %rax
	testb	$16, 14(%rax)
	je	.L6893
	subq	$8, %r13
	decl	%esi
	je	.L6894
.L6834:
	cmpl	%ecx, %esi
	jl	.L6300
	leaq	.LC11(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$856, %r8d
	call	_assert
	movl	6016(%rbx), %ecx
	jmp	.L6300
	.p2align 4,,7
.L6894:
	xorl	%edi, %edi
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
.L6299:
	movq	184(%rsp), %r10
	cmpl	%esi, %ecx
	movq	%r14, 680(%r10)
	movq	%r10, %r11
	jle	.L6895
.L6305:
	movq	6024(%rbx), %rdx
	cmpl	%ecx, %edi
	movq	%r11, %rsi
	movq	(%rdx,%r13), %rax
	movq	%rax, 664(%r10)
	jge	.L6896
.L6306:
	movq	6024(%rbx), %rax
	movl	72(%rsp), %edi
	cmpl	%edi, 88(%rsp)
	movq	(%rax,%r15), %rax
	movq	%rax, 672(%r11)
	je	.L6897
	movl	500(%rsi), %eax
	movb	$1, 136(%rsi)
	movq	%rsi, %rdx
	movl	$0, 16(%rsi)
	movl	$0, 144(%rsi)
	movl	$0xff7fffff, 512(%rsi)
	movl	$0xff7fffff, 516(%rsi)
	testl	%eax, %eax
	movl	$0x7f7fffff, 520(%rsi)
	movl	$0x7f7fffff, 524(%rsi)
	movl	%edi, 544(%rsi)
	jg	.L6309
	cmpl	$1, %eax
	sbbq	%rcx, %rcx
	andl	$28, %ecx
	addq	$4, %rcx
	cmpl	$1, %eax
	movq	GImGui(%rip), %rax
	sbbl	%edi, %edi
	andl	$7, %edi
	incl	844(%rax)
	incl	%edi
	call	*232(%rax)
	movq	504(%rsi), %rcx
	movq	%rax, %r9
	testq	%rcx, %rcx
	je	.L6311
	movslq	496(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rsi), %rcx
	movq	%rax, %r9
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6313
	decl	844(%rax)
.L6313:
	movq	%r9, 128(%rsp)
	call	*240(%rax)
	movq	128(%rsp), %r9
	movq	184(%rsp), %rdx
	movl	%edi, 500(%rsi)
	movq	%r9, 504(%rsi)
.L6309:
	movq	656(%rdx), %rcx
	movl	$1, 496(%rsi)
	call	_ZN10ImDrawList5ClearEv
	movq	5936(%rbx), %rax
	movq	88(%rax), %rdx
	movq	184(%rsp), %rax
	movq	656(%rax), %rcx
	call	_ZN10ImDrawList13PushTextureIDERKPv
	movq	GImGui(%rip), %rax
	movss	176(%rax), %xmm0
	ucomiss	184(%rax), %xmm0
	jp	.L6700
	jne	.L6700
.L6314:
	movss	8(%rax), %xmm1
	movl	$0x00000000, 192(%rsp)
	movss	12(%rax), %xmm0
	movl	%ebp, %eax
	movl	$0x00000000, 196(%rsp)
	andl	$42991616, %eax
	movss	%xmm1, 200(%rsp)
	cmpl	$1048576, %eax
	movss	%xmm0, 204(%rsp)
	je	.L6898
.L6318:
	leaq	192(%rsp), %rcx
	movl	$1, %r8d
	leaq	8(%rcx), %rdx
	call	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
.L6319:
	testb	%r12b, %r12b
	movq	184(%rsp), %rsi
	jne	.L6321
	movl	136(%rsp), %eax
	movl	$-1, 164(%rsi)
	testl	%eax, %eax
	je	.L6321
	cmpb	$0, 96(%rsp)
	jne	.L6321
	movq	264(%rbx), %rax
	movq	%rax, 20(%rsi)
	.p2align 4,,7
.L6321:
	testb	$33, %bpl
	jne	.L6322
	testb	$1, 12(%rsi)
	movss	32(%rsi), %xmm2
	movaps	%xmm6, %xmm0
	je	.L6899
.L6323:
	movss	28(%rsi), %xmm1
	addss	%xmm2, %xmm0
	movq	6040(%rbx), %rdi
	addss	44(%rsi), %xmm1
	movq	28(%rsi), %rax
	cmpq	%rsi, %rdi
	movq	%rax, 208(%rsp)
	movss	%xmm0, 220(%rsp)
	movss	%xmm1, 216(%rsp)
	je	.L6900
.L6328:
	movss	60(%rsi), %xmm0
	ucomiss	%xmm6, %xmm0
	jp	.L6861
	jne	.L6861
	cmpb	$0, 116(%rsp)
	movaps	%xmm6, %xmm0
	je	.L6901
.L6332:
	addss	96(%rsi), %xmm0
.L6861:
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 52(%rsi)
	movss	64(%rsi), %xmm0
	ucomiss	%xmm6, %xmm0
	jp	.L6862
	jne	.L6862
	cmpb	$0, 116(%rsp)
	movaps	%xmm6, %xmm0
	je	.L6902
.L6336:
	addss	100(%rsi), %xmm0
.L6862:
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm0
	movl	168(%rsi), %eax
	testl	%eax, %eax
	movss	%xmm0, 56(%rsi)
	jle	.L6337
	decl	%eax
	movl	%eax, 168(%rsi)
.L6337:
	testl	$50331648, %ebp
	je	.L6340
	testb	%r12b, %r12b
	jne	.L6340
	testb	$64, %bpl
	movl	$1, 168(%rsi)
	jne	.L6903
	.p2align 4,,7
.L6340:
	movl	%ebp, %eax
	andl	$43057280, %eax
	cmpl	$1048576, %eax
	je	.L6904
	movq	5124(%rbx), %rax
	movq	%rax, 84(%rsi)
	movss	88(%rsi), %xmm1
	movss	84(%rsi), %xmm3
.L6344:
	movl	%ebp, %edi
	andl	$16777216, %edi
	je	.L6345
	addss	56(%rsi), %xmm1
	addss	52(%rsi), %xmm3
	movaps	%xmm1, %xmm12
	movaps	%xmm3, %xmm15
	subss	5172(%rbx), %xmm12
.L6346:
	cmpb	$0, 139(%rsi)
	je	.L6360
	movl	152(%rsi), %r15d
	testl	%r15d, %r15d
	jle	.L6361
	cmpb	$0, 160(%rsi)
	movaps	%xmm15, %xmm0
	je	.L6362
	movaps	%xmm15, %xmm1
	movss	44(%rsi), %xmm0
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm15, %xmm1
	orps	%xmm1, %xmm0
.L6362:
	movss	%xmm0, 44(%rsi)
.L6361:
	movl	156(%rsi), %r13d
	testl	%r13d, %r13d
	jle	.L6365
	cmpb	$0, 160(%rsi)
	movaps	%xmm12, %xmm0
	je	.L6366
	movaps	%xmm12, %xmm1
	movss	48(%rsi), %xmm0
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm12, %xmm1
	orps	%xmm1, %xmm0
.L6366:
	movss	%xmm0, 48(%rsi)
.L6365:
	movq	44(%rsi), %rdx
	movq	%rsi, %rcx
	call	_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2
	movq	184(%rsp), %r15
	cmpb	$0, 139(%r15)
	movq	%r15, %r13
	je	.L6378
	testb	$1, 12(%r15)
	movss	32(%r15), %xmm3
	movaps	%xmm6, %xmm0
	je	.L6905
.L6379:
	movss	28(%r15), %xmm4
	addss	%xmm3, %xmm0
	movl	92(%rsp), %r8d
	movss	44(%r15), %xmm1
	addss	%xmm4, %xmm1
	testl	%r8d, %r8d
	subss	%xmm3, %xmm0
	subss	%xmm4, %xmm1
	movss	%xmm0, 40(%r15)
	movss	%xmm1, 36(%r15)
	jne	.L6906
.L6381:
	movl	%ebp, %eax
	andl	$34603008, %eax
	cmpl	$1048576, %eax
	je	.L6907
.L6382:
	cmpb	$0, 184(%r15)
	je	.L6383
	movl	168(%r15), %ecx
	testl	%ecx, %ecx
	je	.L6384
.L6383:
	movzbl	76(%rsp), %esi
	cmpb	%sil, 96(%rsp)
	movl	%ebp, %esi
	setb	%al
	shrl	$26, %esi
	andl	$1, %esi
	movl	%esi, %r11d
	andb	%al, %r11b
	movb	%r11b, 76(%rsp)
	je	.L6908
.L6600:
	movss	196(%rsp), %xmm0
	addss	204(%rsp), %xmm0
	movss	.LC29(%rip), %xmm9
	movss	48(%r15), %xmm1
	mulss	%xmm9, %xmm1
	movss	44(%r15), %xmm3
	mulss	%xmm9, %xmm3
	movss	5236(%rbx), %xmm4
	movss	32(%r15), %xmm5
	movss	.LC21(%rip), %xmm10
	mulss	%xmm9, %xmm0
	subss	%xmm1, %xmm0
	movss	192(%rsp), %xmm1
	addss	200(%rsp), %xmm1
	mulss	%xmm9, %xmm1
	subss	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	cmpnless	%xmm4, %xmm3
	andps	%xmm3, %xmm0
	andnps	%xmm4, %xmm3
	movss	5232(%rbx), %xmm4
	andl	$-15, 172(%r15)
	movb	$0, 184(%r15)
	orps	%xmm3, %xmm0
	movaps	%xmm1, %xmm3
	cvttss2si	%xmm0, %eax
	cmpnless	%xmm4, %xmm3
	movss	%xmm0, 24(%r15)
	andps	%xmm3, %xmm1
	andnps	%xmm4, %xmm3
	movss	28(%r15), %xmm4
	orps	%xmm3, %xmm1
	movss	%xmm1, 20(%r15)
	cvtsi2ss	%eax, %xmm3
	cvttss2si	%xmm1, %eax
	movss	%xmm3, 32(%r15)
	subss	%xmm5, %xmm3
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm3, %xmm1
	movss	192(%r15), %xmm3
	movss	%xmm0, 28(%r15)
	subss	%xmm4, %xmm0
	addss	%xmm0, %xmm3
	addss	216(%r15), %xmm0
	movss	%xmm3, 192(%r15)
	movss	196(%r15), %xmm3
	addss	%xmm1, %xmm3
	addss	220(%r15), %xmm1
	movss	%xmm0, 216(%r15)
	movss	%xmm3, 196(%r15)
	movss	%xmm1, 220(%r15)
.L6389:
	testl	%edi, %edi
	je	.L6863
	cmpb	$0, 96(%rsp)
	je	.L6909
.L6863:
	movss	24(%r15), %xmm3
	movss	20(%r15), %xmm1
.L6399:
	testl	$17825792, %ebp
	jne	.L6865
	cmpb	$0, 96(%rsp)
	jne	.L6865
	movl	152(%r15), %eax
	testl	%eax, %eax
	jle	.L6910
.L6865:
	movss	36(%r15), %xmm0
.L6404:
	cvttss2si	%xmm3, %eax
	ucomiss	%xmm6, %xmm0
	cvtsi2ss	%eax, %xmm8
	cvttss2si	%xmm1, %eax
	movss	%xmm8, 32(%r15)
	cvtsi2ss	%eax, %xmm7
	movss	%xmm7, 28(%r15)
	jbe	.L6421
	testl	$16777280, %ebp
	je	.L6911
.L6421:
	movss	.LC38(%rip), %xmm0
	mulss	5944(%rbx), %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm0
.L6423:
	movl	704(%r15), %edx
	movss	%xmm0, 548(%r15)
	cmpl	$2147483647, %edx
	je	.L6424
	movl	688(%r15), %ecx
	cmpl	$-1, %ecx
	je	.L6646
	incl	%ecx
	leal	(%rdx,%rcx), %eax
	cltd
	idivl	%ecx
.L6424:
	movl	%edx, 696(%r15)
	movl	708(%r15), %edx
	cmpl	$2147483647, %edx
	je	.L6425
	movl	692(%r15), %ecx
	cmpl	$-1, %ecx
	je	.L6647
	incl	%ecx
	leal	(%rdx,%rcx), %eax
	cltd
	idivl	%ecx
.L6425:
	movss	104(%r15), %xmm0
	movl	%edx, 700(%r15)
	ucomiss	%xmm0, %xmm10
	movl	$-1, 692(%r15)
	movl	$-1, 688(%r15)
	movl	$2147483647, 708(%r15)
	movl	$2147483647, 704(%r15)
	ja	.L6426
	movss	96(%r15), %xmm1
.L6427:
	movss	108(%r15), %xmm0
	ucomiss	%xmm0, %xmm10
	ja	.L6428
	movss	100(%r15), %xmm0
.L6429:
	movaps	%xmm6, %xmm3
	movzbl	139(%r15), %esi
	cmpless	%xmm0, %xmm3
	andps	%xmm3, %xmm0
	testb	%sil, %sil
	movaps	%xmm6, %xmm3
	cmpless	%xmm1, %xmm3
	movss	%xmm0, 100(%r15)
	andps	%xmm3, %xmm1
	movss	%xmm1, 96(%r15)
	jne	.L6436
	cmpb	$0, 140(%r15)
	je	.L6912
.L6436:
	cmpb	$0, 76(%rsp)
	je	.L6445
	movq	GImGui(%rip), %r8
	movl	6184(%r8), %edx
	decl	%edx
	js	.L6445
	movslq	%edx, %rcx
	movl	%edx, %edx
	movq	6192(%r8), %r11
	movq	%rcx, %rax
	movq	%r13, %r9
	movq	%r15, %r10
	salq	$5, %rax
	leaq	-672(%rax,%rcx,8), %rax
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	salq	$5, %rdx
	addq	%r11, %rax
	leaq	-712(%rdx,%rcx,8), %rdx
	addq	%rdx, %r11
	.p2align 4,,7
.L6448:
	movq	680(%rax), %rdx
	prefetcht0	(%rax)
	testq	%rdx, %rdx
	je	.L6446
	testb	$4, 15(%rdx)
	jne	.L6447
.L6446:
	subq	$40, %rax
	cmpq	%rax, %r11
	jne	.L6448
	movq	%r9, %r13
	movq	%r10, %r15
.L6445:
	testb	$1, 12(%r15)
	movaps	%xmm6, %xmm10
	jne	.L6450
	movq	GImGui(%rip), %rax
	movss	648(%r15), %xmm10
	mulss	5948(%rax), %xmm10
	movss	5160(%rax), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm0, %xmm10
.L6450:
	movss	44(%r15), %xmm5
	movl	92(%rsp), %edi
	addss	%xmm8, %xmm10
	addss	%xmm7, %xmm5
	testl	%edi, %edi
	movss	%xmm5, 96(%rsp)
	je	.L6451
	testb	%sil, %sil
	movss	5152(%rbx), %xmm14
	jne	.L6913
.L6453:
	movss	5944(%rbx), %xmm0
	testb	$64, %bpl
	movss	.LC28(%rip), %xmm13
	movss	.LC55(%rip), %xmm1
	addss	%xmm14, %xmm13
	mulss	%xmm0, %xmm1
	mulss	.LC254(%rip), %xmm0
	addss	%xmm1, %xmm13
	movaps	%xmm13, %xmm1
	cmpnless	%xmm0, %xmm1
	andps	%xmm1, %xmm13
	andnps	%xmm0, %xmm1
	orps	%xmm1, %xmm13
	je	.L6914
.L6868:
	movl	%ebp, %eax
	movl	$0, 120(%rsp)
	andl	$2, %eax
	movl	%eax, 116(%rsp)
.L6458:
	testl	$16384, %ebp
	jne	.L6472
	movss	40(%r13), %xmm0
	addss	5172(%rbx), %xmm0
	movss	56(%r13), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.L6473
	testb	$8, %bpl
	je	.L6472
.L6473:
	testl	$32768, %ebp
	movb	$0, 121(%r13)
	jne	.L6871
	movss	36(%r13), %xmm0
	subss	84(%r13), %xmm0
	movss	52(%r13), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L6915
.L6858:
	movaps	%xmm6, %xmm1
	movb	$0, 120(%r13)
.L6869:
	movaps	%xmm6, %xmm0
	jmp	.L6583
	.p2align 4,,7
.L6291:
	movl	72(%rsp), %esi
	cmpl	%esi, 88(%rsp)
	je	.L6292
	movl	$0x00000000, 60(%rax)
	movl	$0x00000000, 64(%rax)
	jmp	.L6292
	.p2align 4,,7
.L6700:
	movss	180(%rax), %xmm0
	ucomiss	188(%rax), %xmm0
	jp	.L6701
	je	.L6314
.L6701:
	movq	176(%rax), %rdx
	movq	184(%rax), %rax
	movq	%rax, 200(%rsp)
	movl	%ebp, %eax
	movq	%rdx, 192(%rsp)
	andl	$42991616, %eax
	cmpl	$1048576, %eax
	jne	.L6318
.L6898:
	leaq	520(%r14), %rdx
	leaq	512(%r14), %rcx
	movl	$1, %r8d
	call	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
	jmp	.L6319
	.p2align 4,,7
.L6891:
	movzbl	6240(%rbx), %ecx
	andl	$-15, %edx
	movl	%edx, 180(%rax)
	movb	%cl, 139(%rax)
	jmp	.L6296
	.p2align 4,,7
.L6890:
	movss	6224(%rbx), %xmm0
	andl	$-15, %ecx
	ucomiss	%xmm6, %xmm0
	movl	%ecx, 176(%rax)
	jbe	.L6838
	movss	%xmm0, 44(%rax)
	xorl	%edx, %edx
.L6288:
	movss	6228(%rbx), %xmm0
	movl	%edx, 152(%rax)
	ucomiss	%xmm6, %xmm0
	jbe	.L6839
	movl	$0, 156(%rax)
	movss	%xmm0, 48(%rax)
	jmp	.L6285
	.p2align 4,,7
.L6889:
	movss	.LC21(%rip), %xmm10
	movss	6220(%rbx), %xmm0
	addss	%xmm10, %xmm0
	addss	6216(%rbx), %xmm10
	mulss	%xmm0, %xmm0
	mulss	%xmm10, %xmm10
	addss	%xmm0, %xmm10
	movss	.LC174(%rip), %xmm0
	ucomiss	%xmm10, %xmm0
	jbe	.L6916
	andl	$-15, %ecx
	movb	$1, 184(%rax)
	movl	%ecx, 172(%rax)
	jmp	.L6572
	.p2align 4,,7
.L6472:
	testl	$32768, %ebp
	movb	$1, 121(%r13)
	je	.L6581
	movl	$1, %esi
.L6871:
	movss	5200(%rbx), %xmm0
.L6577:
	testb	%sil, %sil
	movaps	%xmm0, %xmm1
	movb	$1, 120(%r13)
	je	.L6869
.L6583:
	movl	%ebp, %eax
	movss	%xmm0, 124(%r13)
	andl	$128, %eax
	movss	%xmm1, 128(%r13)
	movaps	%xmm6, %xmm0
	movl	%eax, 112(%rsp)
	je	.L6475
	movss	.LC28(%rip), %xmm0
.L6475:
	testl	$8388608, %ebp
	movss	%xmm0, 132(%r13)
	movl	$18, %eax
	jne	.L6476
	testl	$50331648, %ebp
	movl	$4, %eax
	jne	.L6476
	cmpl	$1, 92(%rsp)
	sbbl	%eax, %eax
	addl	$3, %eax
.L6476:
	cltq
	movaps	%xmm6, %xmm1
	addq	$8, %rax
	movaps	%xmm11, %xmm0
	salq	$4, %rax
	cmpless	%xmm11, %xmm1
	movq	5128(%rbx,%rax), %rdx
	movq	5120(%rbx,%rax), %rax
	andps	%xmm1, %xmm0
	movq	%rdx, 216(%rsp)
	movq	%rax, 208(%rsp)
	movl	%ebp, %eax
	movss	220(%rsp), %xmm2
	andl	$1, %eax
	andnps	%xmm2, %xmm1
	movl	%eax, 76(%rsp)
	movaps	%xmm1, %xmm11
	orps	%xmm0, %xmm11
	mulss	5120(%rbx), %xmm11
	ucomiss	%xmm6, %xmm11
	movss	%xmm11, 220(%rsp)
	jbe	.L6479
	movq	80(%rsp), %rcx
	cmpl	$1, %eax
	sbbl	%esi, %esi
	andl	$-3, %esi
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	32(%r13), %xmm3
	addl	$15, %esi
	movss	40(%r13), %xmm0
	testb	$1, 12(%r13)
	movss	28(%r13), %xmm1
	addss	%xmm3, %xmm0
	movss	36(%r13), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm0, 180(%rsp)
	movaps	%xmm6, %xmm0
	movss	%xmm2, 176(%rsp)
	jne	.L6481
	movq	GImGui(%rip), %rdx
	movss	648(%r13), %xmm0
	mulss	5948(%rdx), %xmm0
	movss	5160(%rdx), %xmm2
	addss	%xmm2, %xmm2
	addss	%xmm2, %xmm0
.L6481:
	addss	%xmm6, %xmm1
	movq	656(%r13), %rcx
	leaq	160(%rsp), %rdi
	addss	%xmm3, %xmm0
	movss	%xmm14, 32(%rsp)
	leaq	176(%rsp), %r8
	movl	%esi, 40(%rsp)
	movl	%eax, %r9d
	movq	%rdi, %rdx
	movss	%xmm1, 160(%rsp)
	movss	%xmm0, 164(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movq	184(%rsp), %r15
.L6479:
	movl	76(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L6482
	movq	6032(%rbx), %rax
	testq	%rax, %rax
	je	.L6484
	movq	672(%rax), %rax
	cmpq	%rax, 672(%r15)
	je	.L6669
.L6484:
	movl	$10, %ecx
.L6485:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	leaq	160(%rsp), %rdi
	movq	656(%r15), %rcx
	leaq	176(%rsp), %r8
	movss	%xmm14, 32(%rsp)
	movl	%eax, %r9d
	movl	$3, 40(%rsp)
	movss	96(%rsp), %xmm5
	movq	%rdi, %rdx
	movss	%xmm5, 176(%rsp)
	movss	%xmm10, 180(%rsp)
	movss	%xmm7, 160(%rsp)
	movss	%xmm8, 164(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movq	184(%rsp), %r15
.L6482:
	testl	$1024, %ebp
	jne	.L6917
.L6486:
	cmpb	$0, 120(%r15)
	movq	%r15, %rdi
	jne	.L6918
.L6491:
	cmpb	$0, 121(%rdi)
	jne	.L6919
.L6492:
	movl	116(%rsp), %edx
	testl	%edx, %edx
	je	.L6920
.L6493:
	movl	112(%rsp), %eax
	testl	%eax, %eax
	jne	.L6921
.L6454:
	movss	84(%rdi), %xmm3
	movl	12(%rdi), %eax
	movaps	%xmm3, %xmm0
	movss	96(%rdi), %xmm4
	movss	88(%rdi), %xmm2
	subss	%xmm4, %xmm0
	movaps	%xmm2, %xmm5
	movl	%eax, %edx
	movss	100(%rdi), %xmm7
	andl	$1, %edx
	subss	%xmm7, %xmm5
	movss	%xmm0, 68(%rdi)
	movaps	%xmm6, %xmm0
	jne	.L6500
	movq	GImGui(%rip), %rcx
	movss	648(%rdi), %xmm0
	mulss	5948(%rcx), %xmm0
	movss	5160(%rcx), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
.L6500:
	andl	$1024, %eax
	addss	%xmm0, %xmm5
	movaps	%xmm6, %xmm0
	je	.L6501
	movq	GImGui(%rip), %rcx
	movss	648(%rdi), %xmm0
	mulss	5948(%rcx), %xmm0
	movss	5160(%rcx), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
.L6501:
	addss	%xmm5, %xmm0
	movss	.LC168(%rip), %xmm1
	movss	%xmm0, 72(%rdi)
	movaps	%xmm4, %xmm0
	xorps	%xmm1, %xmm0
	movaps	%xmm0, %xmm5
	movss	60(%rdi), %xmm0
	ucomiss	%xmm6, %xmm0
	subss	%xmm3, %xmm5
	jp	.L6502
	jne	.L6502
	movss	36(%rdi), %xmm0
	subss	124(%rdi), %xmm0
.L6502:
	addss	%xmm5, %xmm0
	xorps	%xmm7, %xmm1
	subss	%xmm2, %xmm1
	movss	%xmm0, 76(%rdi)
	movss	64(%rdi), %xmm0
	ucomiss	%xmm6, %xmm0
	jp	.L6503
	jne	.L6503
	movss	40(%rdi), %xmm0
	subss	128(%rdi), %xmm0
.L6503:
	addss	%xmm0, %xmm1
	testl	%edx, %edx
	movl	$0x00000000, 432(%rdi)
	movl	$0x00000000, 436(%rdi)
	movss	%xmm1, 80(%rdi)
	movaps	%xmm3, %xmm1
	addss	%xmm6, %xmm1
	subss	%xmm4, %xmm1
	movaps	%xmm6, %xmm4
	movss	%xmm1, 428(%rdi)
	jne	.L6504
	movq	GImGui(%rip), %rdx
	movss	648(%rdi), %xmm4
	mulss	5948(%rdx), %xmm4
	movss	5160(%rdx), %xmm5
	addss	%xmm5, %xmm5
	addss	%xmm5, %xmm4
.L6504:
	testl	%eax, %eax
	movaps	%xmm6, %xmm0
	je	.L6505
	movq	GImGui(%rip), %rax
	movss	648(%rdi), %xmm0
	mulss	5948(%rax), %xmm0
	movss	5160(%rax), %xmm5
	addss	%xmm5, %xmm5
	addss	%xmm5, %xmm0
.L6505:
	addss	%xmm4, %xmm0
	movl	$0x00000000, 232(%rdi)
	movl	$0x00000000, 224(%rdi)
	addss	%xmm6, %xmm1
	movl	$0x00000000, 236(%rdi)
	movl	$0x00000000, 228(%rdi)
	movb	$0, 270(%rdi)
	addss	%xmm2, %xmm0
	addss	28(%rdi), %xmm1
	subss	%xmm7, %xmm0
	movss	%xmm1, 208(%rdi)
	addss	32(%rdi), %xmm0
	movss	5168(%rbx), %xmm1
	movaps	%xmm1, %xmm2
	cmpnless	%xmm3, %xmm2
	andps	%xmm2, %xmm1
	movss	%xmm0, 212(%rdi)
	movq	208(%rdi), %rax
	subss	.LC183(%rip), %xmm0
	andnps	%xmm3, %xmm2
	movq	%rax, 192(%rdi)
	movq	%rax, 200(%rdi)
	movq	%rax, 216(%rdi)
	movl	284(%rdi), %eax
	orps	%xmm2, %xmm1
	movss	%xmm0, 240(%rdi)
	testl	%eax, %eax
	movss	%xmm1, 272(%rdi)
	js	.L6922
	movl	324(%rdi), %eax
	movss	548(%rdi), %xmm0
	movl	$0, 280(%rdi)
	movss	%xmm0, 308(%rdi)
	leaq	320(%rdi), %rcx
	movl	$0, 304(%rdi)
	movl	$0xbf800000, 312(%rdi)
	movq	%rdi, %rsi
	testl	%eax, %eax
	movb	$1, 316(%rdi)
	movb	$0, 317(%rdi)
	jns	.L6510
.L6509:
	xorl	%edx, %edx
	call	_ZN8ImVectorIfE7reserveEi.part.98
	movq	184(%rsp), %rsi
.L6510:
	movl	356(%rsi), %r11d
	movl	$0, 320(%rdi)
	testl	%r11d, %r11d
	js	.L6586
	movl	372(%rsi), %r13d
	movl	$0, 352(%rsi)
	movq	%rsi, %rax
	testl	%r13d, %r13d
	jns	.L6515
.L6588:
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	incl	844(%rax)
	call	*232(%rax)
	movq	376(%rsi), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L6516
	movslq	368(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	376(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6518
	decl	844(%rax)
.L6518:
	call	*240(%rax)
	movq	%rdi, 376(%rsi)
	movl	$0, 372(%rsi)
	movq	%rsi, %rax
	movq	184(%rsp), %rsi
.L6515:
	movl	340(%rsi), %r9d
	movq	%rsi, %rdi
	leaq	336(%rsi), %rcx
	movl	$0, 368(%rax)
	testl	%r9d, %r9d
	js	.L6590
.L6519:
	movl	388(%rdi), %r11d
	leaq	632(%rdi), %rax
	movl	$0, 336(%rsi)
	movss	196(%rdi), %xmm0
	movl	$0, 440(%rdi)
	movl	$1, 444(%rdi)
	movss	%xmm0, 456(%rdi)
	movl	$0, 244(%rdi)
	testl	%r11d, %r11d
	movss	%xmm0, 464(%rdi)
	movq	%rax, 296(%rdi)
	movss	%xmm0, 460(%rdi)
	movq	%rdi, %rsi
	jns	.L6520
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	incl	844(%rax)
	call	*232(%rax)
	movq	392(%rdi), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L6521
	movslq	384(%rdi), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	call	memcpy
	movq	392(%rdi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6523
	decl	844(%rax)
.L6523:
	call	*240(%rax)
	movq	%rsi, 392(%rdi)
	movq	184(%rsp), %rsi
	movl	$0, 388(%rdi)
.L6520:
	cmpl	$8, 552(%rsi)
	movq	%rsi, %rcx
	movl	$0, 384(%rdi)
	movss	5168(%rbx), %xmm7
	movl	$-2, 400(%rsi)
	jg	.L6923
.L6524:
	testb	%r12b, %r12b
	movl	$3, 552(%rsi)
	movl	$0x00000000, 564(%rsi)
	movl	$0x00000000, 560(%rsi)
	movss	%xmm7, 556(%rsi)
	je	.L6924
.L6525:
	movss	600(%rsi), %xmm1
	movl	$0x00000000, 568(%rsi)
	movss	604(%rsi), %xmm0
	addss	%xmm6, %xmm1
	ucomiss	%xmm6, %xmm0
	movl	$0x00000000, 600(%rsi)
	movss	%xmm1, 560(%rsi)
	jbe	.L6526
	addss	%xmm7, %xmm1
.L6526:
	cvttss2si	%xmm1, %eax
	addss	%xmm1, %xmm0
	movl	$0x00000000, 604(%rsi)
	movss	608(%rsi), %xmm1
	ucomiss	%xmm6, %xmm1
	movss	%xmm0, 560(%rsi)
	cvtsi2ss	%eax, %xmm2
	movss	%xmm2, 572(%rsi)
	jbe	.L6527
	addss	%xmm7, %xmm0
.L6527:
	cvttss2si	%xmm0, %eax
	addss	%xmm1, %xmm0
	movl	$0x00000000, 608(%rsi)
	movss	%xmm0, 560(%rsi)
	cvtsi2ss	%eax, %xmm2
	movss	%xmm2, 576(%rsi)
	movl	152(%rcx), %eax
	testl	%eax, %eax
	jle	.L6607
	decl	%eax
	movl	%eax, 152(%rcx)
.L6607:
	movl	156(%rcx), %eax
	testl	%eax, %eax
	jle	.L6528
	decl	%eax
	movl	%eax, 156(%rcx)
.L6528:
	testb	%r12b, %r12b
	jne	.L6529
	testl	$4096, %ebp
	jne	.L6529
	testl	$17825792, %ebp
	je	.L6731
	movl	136(%rsp), %r10d
	testl	%r10d, %r10d
	jne	.L6731
	.p2align 4,,7
.L6529:
	movl	76(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L6531
	cmpq	$0, 472(%rsp)
	je	.L6533
	movq	184(%rsp), %rcx
	testb	$1, 12(%rcx)
	jne	.L6683
	movq	GImGui(%rip), %rax
	movss	648(%rcx), %xmm7
	movss	.LC158(%rip), %xmm2
	mulss	5948(%rax), %xmm7
	movss	5160(%rax), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm0, %xmm7
	movss	.LC245(%rip), %xmm0
	movaps	%xmm0, %xmm1
	subss	.LC34(%rip), %xmm7
	mulss	%xmm9, %xmm7
	addss	%xmm7, %xmm2
	subss	%xmm7, %xmm1
.L6534:
	movss	28(%rcx), %xmm0
	addss	32(%rcx), %xmm2
	leaq	.LC257(%rip), %rdx
	addss	36(%rcx), %xmm0
	movss	%xmm2, 212(%rsp)
	addss	%xmm1, %xmm0
	movss	%xmm0, 208(%rsp)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	80(%rsp), %rdx
	movaps	%xmm7, %xmm2
	movl	%eax, %ecx
	call	_ZN5ImGui11CloseButtonEjRK6ImVec2f
	testb	%al, %al
	je	.L6533
	movq	472(%rsp), %rax
	movb	$0, (%rax)
.L6533:
	movq	464(%rsp), %rcx
	movl	%ebp, %esi
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	andl	$32, %esi
	movq	%rax, 144(%rsp)
	je	.L6925
.L6536:
	movq	184(%rsp), %rax
	cmpq	$0, 472(%rsp)
	movq	28(%rax), %rdx
	movq	%rdx, 160(%rsp)
	movss	5160(%rbx), %xmm0
	addss	%xmm0, %xmm0
	movss	32(%rax), %xmm4
	movss	28(%rax), %xmm5
	movss	36(%rax), %xmm2
	addss	%xmm5, %xmm2
	addss	148(%rsp), %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 180(%rsp)
	movss	5156(%rbx), %xmm1
	je	.L6537
	subss	%xmm8, %xmm10
	movaps	%xmm2, %xmm3
	testl	%esi, %esi
	movss	%xmm0, 220(%rsp)
	subss	.LC35(%rip), %xmm10
	subss	%xmm10, %xmm3
	movss	%xmm3, 216(%rsp)
	jne	.L6926
.L6538:
	movss	5944(%rbx), %xmm3
	cmpq	$0, 472(%rsp)
	addss	%xmm1, %xmm3
	movss	5176(%rbx), %xmm0
	addss	%xmm3, %xmm0
	je	.L6540
.L6539:
	addss	5176(%rbx), %xmm3
	movaps	%xmm3, %xmm1
.L6540:
	movss	5144(%rbx), %xmm3
	ucomiss	%xmm6, %xmm3
	jbe	.L6541
	movaps	%xmm0, %xmm7
	subss	%xmm1, %xmm7
	mulss	%xmm7, %xmm3
	addss	%xmm3, %xmm1
.L6541:
	movq	80(%rsp), %rax
	addss	%xmm5, %xmm0
	movq	464(%rsp), %r8
	subss	%xmm1, %xmm2
	leaq	176(%rsp), %rdx
	leaq	160(%rsp), %rcx
	xorl	%r9d, %r9d
	movss	%xmm4, 212(%rsp)
	movq	%rax, 48(%rsp)
	leaq	5144(%rbx), %rax
	movss	%xmm0, 160(%rsp)
	movq	%rax, 40(%rsp)
	leaq	144(%rsp), %rax
	movss	%xmm2, 176(%rsp)
	movss	%xmm0, 208(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
.L6531:
	movq	184(%rsp), %rsi
	movss	28(%rsi), %xmm8
	movss	32(%rsi), %xmm5
	movaps	%xmm8, %xmm3
	movaps	%xmm5, %xmm1
	movss	%xmm8, 528(%rsi)
	movss	36(%rsi), %xmm0
	movss	40(%rsi), %xmm2
	addss	%xmm0, %xmm3
	movss	512(%rsi), %xmm4
	addss	%xmm2, %xmm1
	ucomiss	%xmm8, %xmm4
	movss	%xmm5, 532(%rsi)
	movss	%xmm3, 536(%rsi)
	movss	%xmm1, 540(%rsi)
	jbe	.L6543
	movss	%xmm4, 528(%rsi)
.L6543:
	movss	516(%rsi), %xmm4
	ucomiss	%xmm5, %xmm4
	jbe	.L6545
	movss	%xmm4, 532(%rsi)
.L6545:
	movss	520(%rsi), %xmm4
	ucomiss	%xmm4, %xmm3
	jbe	.L6547
	movss	%xmm4, 536(%rsi)
.L6547:
	movss	524(%rsi), %xmm3
	ucomiss	%xmm3, %xmm1
	jbe	.L6549
	movss	%xmm3, 540(%rsi)
.L6549:
	movaps	%xmm0, %xmm4
	jmp	.L6308
	.p2align 4,,7
.L6893:
	movslq	%esi, %r9
	movl	%esi, %edi
	leaq	0(,%r9,8), %r15
	jmp	.L6302
	.p2align 4,,7
.L6304:
	movq	(%rdx,%r15), %rax
	testl	$34603008, 12(%rax)
	je	.L6299
	subq	$8, %r15
	decl	%edi
	je	.L6927
.L6302:
	cmpl	%ecx, %edi
	jl	.L6304
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movl	6016(%rbx), %ecx
	movq	6024(%rbx), %rdx
	jmp	.L6304
	.p2align 4,,7
.L6897:
	movss	32(%rsi), %xmm5
	movss	36(%rsi), %xmm4
	movss	40(%rsi), %xmm2
	movss	28(%rsi), %xmm8
	movss	.LC29(%rip), %xmm9
.L6308:
	movl	12(%rsi), %edx
	movaps	%xmm6, %xmm1
	testb	$1, %dl
	jne	.L6551
	movq	GImGui(%rip), %rax
	movss	648(%rsi), %xmm1
	mulss	5948(%rax), %xmm1
	movss	5160(%rax), %xmm3
	addss	%xmm3, %xmm3
	addss	%xmm3, %xmm1
.L6551:
	addss	%xmm5, %xmm1
	movss	132(%rsi), %xmm3
	movaps	%xmm3, %xmm10
	andb	$4, %dh
	addss	%xmm9, %xmm8
	movaps	%xmm1, %xmm0
	movss	84(%rsi), %xmm1
	mulss	%xmm9, %xmm1
	addss	%xmm9, %xmm0
	cvttss2si	%xmm1, %eax
	cvtsi2ss	%eax, %xmm7
	movaps	%xmm7, %xmm1
	cmpless	%xmm3, %xmm1
	andps	%xmm1, %xmm10
	andnps	%xmm7, %xmm1
	orps	%xmm10, %xmm1
	movaps	%xmm0, %xmm10
	movaps	%xmm6, %xmm0
	addss	%xmm8, %xmm1
	cvttss2si	%xmm1, %eax
	cvtsi2ss	%eax, %xmm1
	movss	%xmm1, 208(%rsp)
	je	.L6554
	movq	GImGui(%rip), %rax
	movss	648(%rsi), %xmm0
	mulss	5948(%rax), %xmm0
	movss	5160(%rax), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
.L6554:
	addss	%xmm10, %xmm0
	movaps	%xmm7, %xmm1
	addss	%xmm5, %xmm9
	movl	$1, %r8d
	cmpnless	%xmm3, %xmm1
	addss	%xmm3, %xmm0
	andps	%xmm1, %xmm7
	andnps	%xmm3, %xmm1
	addss	%xmm2, %xmm9
	cvttss2si	%xmm0, %eax
	orps	%xmm1, %xmm7
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 212(%rsp)
	movaps	%xmm8, %xmm0
	addss	%xmm4, %xmm0
	subss	124(%rsi), %xmm0
	subss	%xmm7, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 216(%rsp)
	subss	128(%rsi), %xmm9
	subss	%xmm3, %xmm9
	cvttss2si	%xmm9, %eax
	cvtsi2ss	%eax, %xmm0
	movq	80(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rax, %rcx
	movss	%xmm0, 220(%rsp)
	call	_ZN5ImGui12PushClipRectERK6ImVec2S2_b
	movl	72(%rsp), %edi
	cmpl	%edi, 88(%rsp)
	movq	184(%rsp), %rdx
	je	.L6558
	movb	$0, 138(%rdx)
.L6558:
	movl	92(%rsp), %r8d
	incl	144(%rdx)
	movb	$0, 6296(%rbx)
	testl	%r8d, %r8d
	je	.L6559
	testb	$1, %bpl
	je	.L6928
.L6560:
	testq	%r14, %r14
	je	.L6561
	movzbl	139(%r14), %eax
	testb	%al, %al
	je	.L6561
	andl	$64, %ebp
	movb	$1, 139(%rdx)
	je	.L6929
.L6610:
	ucomiss	5120(%rbx), %xmm6
	movb	$0, 136(%rdx)
	jnb	.L6566
.L6567:
	movl	152(%rdx), %eax
	testl	%eax, %eax
	jle	.L6930
.L6570:
	movl	$1, %eax
	xorl	%ecx, %ecx
.L6571:
	movb	%cl, 140(%rdx)
	movaps	224(%rsp), %xmm6
	movaps	240(%rsp), %xmm7
	movaps	256(%rsp), %xmm8
	movaps	272(%rsp), %xmm9
	movaps	288(%rsp), %xmm10
	movaps	304(%rsp), %xmm11
	movaps	320(%rsp), %xmm12
	movaps	336(%rsp), %xmm13
	movaps	352(%rsp), %xmm14
	movaps	368(%rsp), %xmm15
	addq	$392, %rsp
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
.L6561:
	andl	$64, %ebp
	movb	$0, 139(%rdx)
	jne	.L6565
	movl	152(%rdx), %r8d
	testl	%r8d, %r8d
	jle	.L6931
.L6565:
	ucomiss	5120(%rbx), %xmm6
	jb	.L6599
.L6566:
	movl	152(%rdx), %eax
	movb	$0, 136(%rdx)
	testl	%eax, %eax
	jg	.L6570
.L6930:
	movl	156(%rdx), %eax
	testl	%eax, %eax
	jg	.L6570
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.L6571
	.p2align 4,,7
.L6559:
	ucomiss	5120(%rbx), %xmm6
	jnb	.L6566
	cmpb	$0, 139(%rdx)
	jne	.L6567
.L6599:
	cmpb	$0, 136(%rdx)
	jne	.L6570
	jmp	.L6567
	.p2align 4,,7
.L6887:
	testl	%eax, %eax
	jle	.L6932
.L6264:
	movq	6024(%rbx), %rdx
	movq	-8(%rdx,%rax,8), %r14
	jmp	.L6263
	.p2align 4,,7
.L6896:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	movq	%r11, 128(%rsp)
	call	_assert
	movq	184(%rsp), %rsi
	movq	128(%rsp), %r11
	jmp	.L6306
	.p2align 4,,7
.L6895:
	leaq	.LC11(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$856, %r8d
	movq	%r10, 128(%rsp)
	call	_assert
	movq	184(%rsp), %r11
	movl	6016(%rbx), %ecx
	movq	128(%rsp), %r10
	jmp	.L6305
	.p2align 4,,7
.L6892:
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movb	$0, 6297(%rbx)
	jmp	.L6297
	.p2align 4,,7
.L6884:
	leaq	.LC15(%rip), %rdx
	leaq	.LC247(%rip), %rcx
	movl	$3884, %r8d
	call	_assert
	movl	5964(%rbx), %eax
	cmpl	%eax, 5968(%rbx)
	jne	.L6234
.L6885:
	leaq	.LC15(%rip), %rdx
	leaq	.LC248(%rip), %rcx
	movl	$3885, %r8d
	call	_assert
	jmp	.L6234
	.p2align 4,,7
.L6261:
	movl	12(%rax), %ebp
	jmp	.L6262
	.p2align 4,,7
.L6451:
	testb	%sil, %sil
	movss	5140(%rbx), %xmm14
	je	.L6453
.L6913:
	movl	$11, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	%xmm10, 76(%rsp)
	movl	76(%rsp), %edx
	movl	96(%rsp), %ecx
	movl	%eax, %r8d
	movss	%xmm7, 76(%rsp)
	movl	$1, %r9d
	movss	%xmm14, 32(%rsp)
	movq	%rdx, %rax
	movl	%ecx, %edx
	salq	$32, %rax
	orq	%rax, %rdx
	movl	76(%rsp), %eax
	movss	%xmm8, 76(%rsp)
	movl	76(%rsp), %ecx
	movl	%eax, %eax
	salq	$32, %rcx
	orq	%rax, %rcx
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movl	%ebp, %eax
	movq	184(%rsp), %rdi
	andl	$1, %eax
	movl	%eax, 76(%rsp)
	jmp	.L6454
	.p2align 4,,7
.L6360:
	testb	$64, %bpl
	je	.L6368
	cmpb	$0, 112(%rsp)
	jne	.L6368
	movss	%xmm15, 44(%rsi)
	movss	%xmm12, 48(%rsi)
	jmp	.L6365
	.p2align 4,,7
.L6345:
	movss	8(%rbx), %xmm0
	subss	5232(%rbx), %xmm0
	movss	12(%rbx), %xmm2
	movaps	%xmm2, %xmm5
	movss	5132(%rbx), %xmm15
	subss	5236(%rbx), %xmm5
	movss	5136(%rbx), %xmm12
	movss	52(%rsi), %xmm7
	addss	%xmm7, %xmm3
	movaps	%xmm0, %xmm4
	cmpnless	%xmm15, %xmm4
	movaps	%xmm5, %xmm2
	andps	%xmm4, %xmm0
	andnps	%xmm15, %xmm4
	cmpnless	%xmm12, %xmm2
	andps	%xmm2, %xmm5
	orps	%xmm4, %xmm0
	movss	56(%rsi), %xmm4
	addss	%xmm4, %xmm1
	andnps	%xmm12, %xmm2
	orps	%xmm2, %xmm5
	ucomiss	%xmm1, %xmm12
	jbe	.L6933
	ucomiss	%xmm3, %xmm15
	jbe	.L6934
.L6353:
	ucomiss	%xmm15, %xmm7
	jbe	.L6355
.L6941:
	movl	%ebp, %eax
	andl	$2056, %eax
	cmpl	$2048, %eax
	je	.L6935
.L6355:
	ucomiss	%xmm12, %xmm4
	jbe	.L6357
	testb	$8, %bpl
	jne	.L6357
	addss	5200(%rbx), %xmm15
.L6357:
	subss	5172(%rbx), %xmm12
	movaps	%xmm6, %xmm0
	cmpless	%xmm12, %xmm0
	andps	%xmm0, %xmm12
	jmp	.L6346
	.p2align 4,,7
.L6322:
	movb	$0, 139(%rsi)
	jmp	.L6328
	.p2align 4,,7
.L6428:
	movss	116(%r15), %xmm10
	movl	12(%r15), %eax
	movss	.LC28(%rip), %xmm4
	subss	%xmm10, %xmm4
	movaps	%xmm6, %xmm3
	testb	$1, %al
	movaps	%xmm4, %xmm13
	jne	.L6430
	movq	GImGui(%rip), %rdx
	movss	648(%r15), %xmm3
	mulss	5948(%rdx), %xmm3
	movss	5160(%rdx), %xmm4
	addss	%xmm4, %xmm4
	addss	%xmm4, %xmm3
.L6430:
	testb	$4, %ah
	movaps	%xmm6, %xmm4
	je	.L6431
	movq	GImGui(%rip), %rax
	movss	648(%r15), %xmm4
	mulss	5948(%rax), %xmm4
	movss	5160(%rax), %xmm5
	addss	%xmm5, %xmm5
	addss	%xmm5, %xmm4
.L6431:
	addss	%xmm3, %xmm4
	movss	48(%r15), %xmm3
	mulss	%xmm10, %xmm3
	movl	$0x7f7fffff, 108(%r15)
	mulss	%xmm13, %xmm4
	subss	%xmm4, %xmm0
	subss	%xmm3, %xmm0
	jmp	.L6429
	.p2align 4,,7
.L6426:
	movss	%xmm0, 96(%r15)
	movl	$0x7f7fffff, 104(%r15)
	movaps	%xmm0, %xmm1
	jmp	.L6427
	.p2align 4,,7
.L6908:
	testl	$134217728, %ebp
	je	.L6390
	cmpb	$0, 96(%rsp)
	je	.L6936
.L6391:
	cmpb	$0, 270(%r14)
	movss	.LC21(%rip), %xmm10
	movss	5168(%rbx), %xmm3
	movl	$0xff7fffff, 216(%rsp)
	movss	%xmm10, 208(%rsp)
	movl	$0xff7fffff, 220(%rsp)
	movss	%xmm10, 212(%rsp)
	je	.L6392
	movl	12(%r14), %eax
	movss	32(%r14), %xmm3
	testb	$1, %al
	je	.L6937
	addss	%xmm6, %xmm3
	testb	$4, %ah
	movaps	%xmm3, %xmm1
	jne	.L6938
.L6595:
	movaps	%xmm1, %xmm0
	addss	%xmm6, %xmm0
.L6594:
	movl	$0xff7fffff, 208(%rsp)
	movss	%xmm1, 212(%rsp)
	movl	$0x7f7fffff, 216(%rsp)
	movss	%xmm0, 220(%rsp)
	jmp	.L6396
	.p2align 4,,7
.L6378:
	movl	92(%rsp), %r8d
	movq	44(%r15), %rax
	testl	%r8d, %r8d
	movq	%rax, 36(%r15)
	je	.L6381
.L6906:
	movl	280(%r14), %eax
	movq	120(%rsp), %rdx
	leaq	280(%r14), %rcx
	movl	%eax, 16(%r15)
	call	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_
	movq	184(%rsp), %r15
	movl	%ebp, %eax
	andl	$34603008, %eax
	cmpl	$1048576, %eax
	movq	%r15, %r13
	jne	.L6382
.L6907:
	movq	192(%r14), %rax
	movq	%rax, 20(%r15)
	movq	%rax, 28(%r15)
	movq	480(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 44(%r15)
	movq	%rax, 36(%r15)
	jmp	.L6382
	.p2align 4,,7
.L6270:
	testl	%edx, %edx
	leal	1(%rdx), %ecx
	movl	$8, %r9d
	je	.L6272
	movl	%edx, %r9d
	shrl	$31, %r9d
	addl	%edx, %r9d
	sarl	%r9d
	addl	%edx, %r9d
.L6272:
	cmpl	%r9d, %ecx
	movl	%r9d, %esi
	cmovge	%ecx, %esi
	cmpl	%esi, %r8d
	jl	.L6273
	movq	6208(%rbx), %rsi
	movslq	%r8d, %rdx
	jmp	.L6271
	.p2align 4,,7
.L6911:
	mulss	.LC47(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm0
	jmp	.L6423
	.p2align 4,,7
.L6914:
	movl	152(%r15), %r11d
	testl	%r11d, %r11d
	jg	.L6868
	movl	156(%r15), %r10d
	testl	%r10d, %r10d
	jg	.L6868
	movl	%ebp, %eax
	movl	$0, 120(%rsp)
	andl	$2, %eax
	movl	%eax, 116(%rsp)
	jne	.L6458
	addss	40(%r15), %xmm8
	movss	.LC255(%rip), %xmm0
	addss	36(%r15), %xmm7
	mulss	%xmm13, %xmm0
	leaq	.LC256(%rip), %rdx
	movq	%r15, %rcx
	movaps	%xmm8, %xmm5
	movss	%xmm8, 220(%rsp)
	movaps	%xmm7, %xmm1
	movss	%xmm7, 216(%rsp)
	subss	%xmm0, %xmm5
	subss	%xmm0, %xmm1
	movss	%xmm5, 212(%rsp)
	movss	%xmm1, 208(%rsp)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	80(%rsp), %rcx
	leaq	176(%rsp), %r9
	leaq	160(%rsp), %r8
	movl	$32, 32(%rsp)
	movl	%eax, %edx
	call	_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movzbl	176(%rsp), %edi
	testb	%dil, %dil
	jne	.L6657
	cmpb	$0, 160(%rsp)
	je	.L6939
	movl	$32, %ecx
.L6461:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	6040(%rbx), %r13
	movq	184(%rsp), %r15
	movl	%eax, 120(%rsp)
	movl	$6, 6544(%rbx)
	cmpq	%r15, %r13
	je	.L6940
	testb	%dil, %dil
	je	.L6660
.L6464:
	movss	268(%rbx), %xmm0
	movq	%r15, %rcx
	movaps	%xmm0, %xmm1
	movss	220(%rsp), %xmm0
	subss	212(%rsp), %xmm0
	subss	6084(%rbx), %xmm1
	addss	%xmm1, %xmm0
	movss	264(%rbx), %xmm1
	movaps	%xmm1, %xmm2
	movss	216(%rsp), %xmm1
	subss	6080(%rbx), %xmm2
	subss	208(%rsp), %xmm1
	subss	32(%r15), %xmm0
	addss	%xmm2, %xmm1
	movss	%xmm0, 96(%rsp)
	movq	96(%rsp), %rax
	subss	28(%r15), %xmm1
	salq	$32, %rax
	movss	%xmm1, 76(%rsp)
	movl	76(%rsp), %edx
	orq	%rax, %rdx
	call	_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2
	testl	$256, %ebp
	jne	.L6866
	movq	GImGui(%rip), %rax
	ucomiss	6128(%rax), %xmm6
	jb	.L6866
	movss	20(%rax), %xmm0
	movss	%xmm0, 6128(%rax)
.L6866:
	movq	184(%rsp), %r15
	movq	%r15, %r13
.L6463:
	testb	$1, 12(%r13)
	movq	44(%r13), %rax
	movss	32(%r13), %xmm8
	movaps	%xmm6, %xmm10
	movq	%rax, 36(%r13)
	jne	.L6471
	movq	GImGui(%rip), %rax
	movss	648(%r13), %xmm10
	mulss	5948(%rax), %xmm10
	movss	5160(%rax), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm0, %xmm10
.L6471:
	movss	28(%r13), %xmm7
	addss	%xmm8, %xmm10
	movss	44(%r13), %xmm5
	addss	%xmm7, %xmm5
	movss	%xmm5, 96(%rsp)
	jmp	.L6458
	.p2align 4,,7
.L6909:
	movss	264(%rbx), %xmm1
	movq	80(%rsp), %r9
	movaps	%xmm1, %xmm0
	leaq	36(%r15), %rdx
	movss	268(%rbx), %xmm3
	leaq	164(%r15), %r8
	subss	.LC38(%rip), %xmm0
	leaq	264(%rbx), %rcx
	movss	%xmm0, 208(%rsp)
	movaps	%xmm3, %xmm0
	subss	.LC31(%rip), %xmm0
	movss	%xmm0, 212(%rsp)
	movss	.LC253(%rip), %xmm0
	addss	%xmm0, %xmm1
	addss	%xmm3, %xmm0
	movss	%xmm1, 216(%rsp)
	movss	%xmm0, 220(%rsp)
	call	_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect
	movq	%rax, 20(%r15)
	movq	184(%rsp), %r15
	cmpl	$-1, 164(%r15)
	movq	%r15, %r13
	jne	.L6863
	movss	268(%rbx), %xmm3
	movss	.LC158(%rip), %xmm1
	addss	%xmm1, %xmm3
	addss	264(%rbx), %xmm1
	movss	%xmm3, 24(%r15)
	movss	%xmm1, 20(%r15)
	jmp	.L6399
	.p2align 4,,7
.L6888:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movslq	6200(%rbx), %rdx
	movq	184(%rsp), %rax
	jmp	.L6269
	.p2align 4,,7
.L6912:
	movss	56(%r15), %xmm3
	subss	48(%r15), %xmm3
	movss	52(%r15), %xmm4
	subss	44(%r15), %xmm4
	addss	128(%r15), %xmm3
	addss	124(%r15), %xmm4
	movaps	%xmm3, %xmm5
	cmpnless	%xmm6, %xmm5
	andps	%xmm5, %xmm3
	movaps	%xmm4, %xmm5
	cmpnless	%xmm6, %xmm5
	minss	%xmm3, %xmm0
	andps	%xmm5, %xmm4
	minss	%xmm4, %xmm1
	movss	%xmm0, 100(%r15)
	movss	%xmm1, 96(%r15)
	jmp	.L6436
	.p2align 4,,7
.L6384:
	movl	%ebp, %r11d
	shrl	$26, %r11d
	movl	%r11d, %eax
	andl	$1, %eax
	movb	%al, 76(%rsp)
	jmp	.L6600
	.p2align 4,,7
.L6905:
	movq	GImGui(%rip), %rax
	movss	648(%r15), %xmm0
	mulss	5948(%rax), %xmm0
	movss	5160(%rax), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
	jmp	.L6379
	.p2align 4,,7
.L6902:
	movss	220(%rsi), %xmm0
	subss	32(%rsi), %xmm0
	jmp	.L6336
	.p2align 4,,7
.L6901:
	movss	216(%rsi), %xmm0
	subss	28(%rsi), %xmm0
	jmp	.L6332
	.p2align 4,,7
.L6899:
	movq	GImGui(%rip), %rax
	movss	648(%rsi), %xmm0
	mulss	5948(%rax), %xmm0
	movss	5160(%rax), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
	jmp	.L6323
	.p2align 4,,7
.L6934:
	minss	%xmm3, %xmm0
	movaps	%xmm0, %xmm15
	ucomiss	%xmm15, %xmm7
	jbe	.L6355
	jmp	.L6941
	.p2align 4,,7
.L6933:
	minss	%xmm1, %xmm5
	ucomiss	%xmm3, %xmm15
	movaps	%xmm5, %xmm12
	ja	.L6353
	jmp	.L6934
	.p2align 4,,7
.L6390:
	movl	136(%rsp), %edx
	testl	%edx, %edx
	je	.L6643
	testb	%al, %al
	jne	.L6942
.L6643:
	movb	%sil, 76(%rsp)
	movss	.LC21(%rip), %xmm10
	movss	.LC29(%rip), %xmm9
	jmp	.L6389
	.p2align 4,,7
.L6916:
	movq	6216(%rbx), %rdx
	movss	28(%rax), %xmm3
	movss	32(%rax), %xmm2
	andl	$-15, %ecx
	movl	%ecx, 172(%rax)
	movb	$0, 184(%rax)
	movq	%rdx, 20(%rax)
	movss	24(%rax), %xmm0
	cvttss2si	%xmm0, %edx
	movss	20(%rax), %xmm1
	cvtsi2ss	%edx, %xmm0
	cvttss2si	%xmm1, %edx
	movss	%xmm0, 32(%rax)
	subss	%xmm2, %xmm0
	cvtsi2ss	%edx, %xmm1
	addss	220(%rax), %xmm0
	movss	%xmm0, 220(%rax)
	movss	%xmm1, 28(%rax)
	subss	%xmm3, %xmm1
	addss	216(%rax), %xmm1
	movss	%xmm1, 216(%rax)
	jmp	.L6572
.L6581:
	movss	5200(%rbx), %xmm0
	movss	36(%r13), %xmm1
	subss	%xmm0, %xmm1
	movss	52(%r13), %xmm2
	subss	84(%r13), %xmm1
	ucomiss	%xmm1, %xmm2
	jbe	.L6857
	movl	%ebp, %eax
	andl	$2056, %eax
	cmpl	$2048, %eax
	je	.L6943
.L6857:
	movb	$0, 120(%r13)
	movaps	%xmm6, %xmm1
	jmp	.L6583
.L6931:
	xorl	%eax, %eax
.L6611:
	movl	156(%rdx), %ecx
	testl	%ecx, %ecx
	jle	.L6944
.L6563:
	testb	%al, %al
	jne	.L6610
	jmp	.L6565
	.p2align 4,,7
.L6368:
	movl	152(%rsi), %r11d
	testl	%r11d, %r11d
	jle	.L6945
	cmpb	$0, 112(%rsp)
	jne	.L6365
	cmpb	$0, 160(%rsi)
	movaps	%xmm15, %xmm0
	je	.L6372
	movaps	%xmm15, %xmm1
	movss	44(%rsi), %xmm0
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm15, %xmm1
	orps	%xmm1, %xmm0
.L6372:
	movl	156(%rsi), %r9d
	movss	%xmm0, 44(%rsi)
	testl	%r9d, %r9d
	jle	.L6374
.L6592:
	cmpb	$0, 160(%rsi)
	movaps	%xmm12, %xmm0
	jne	.L6946
.L6375:
	movss	%xmm0, 48(%rsi)
.L6374:
	testl	$256, %ebp
	jne	.L6365
	movq	GImGui(%rip), %rax
	ucomiss	6128(%rax), %xmm6
	jb	.L6365
	movss	20(%rax), %xmm0
	movss	%xmm0, 6128(%rax)
	jmp	.L6365
.L6903:
	cmpb	$0, 112(%rsp)
	jne	.L6342
	movl	$0x00000000, 44(%rsi)
	movl	$0x00000000, 48(%rsi)
	movq	44(%rsi), %rax
	movq	%rax, 36(%rsi)
.L6342:
	movl	$0x00000000, 52(%rsi)
	movl	$0x00000000, 56(%rsi)
	jmp	.L6340
	.p2align 4,,7
.L6508:
	movl	356(%rsi), %r15d
	movl	$0, 320(%rsi)
	testl	%r15d, %r15d
	jns	.L6678
.L6586:
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	incl	844(%rax)
	call	*232(%rax)
	movq	360(%rsi), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L6512
	movslq	352(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movq	360(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6514
	decl	844(%rax)
.L6514:
	call	*240(%rax)
	movq	%rdi, 360(%rsi)
	movl	$0, 356(%rsi)
	movq	%rsi, %rax
	movq	184(%rsp), %rsi
.L6511:
	movl	372(%rsi), %r10d
	movl	$0, 352(%rax)
	testl	%r10d, %r10d
	js	.L6588
	movl	340(%rsi), %edi
	movl	$0, 368(%rsi)
	leaq	336(%rsi), %rcx
	testl	%edi, %edi
	jns	.L6680
.L6590:
	xorl	%edx, %edx
	call	_ZN8ImVectorIfE7reserveEi.part.98
	movq	184(%rsp), %rdi
	jmp	.L6519
	.p2align 4,,7
.L6922:
	leaq	280(%rdi), %rcx
	xorl	%edx, %edx
	call	_ZN8ImVectorIP11ImGuiWindowE7reserveEi.part.51
	movq	184(%rsp), %rsi
	movl	$0, 280(%rdi)
	movl	324(%rsi), %eax
	movss	548(%rsi), %xmm0
	movl	$0, 304(%rsi)
	movss	%xmm0, 308(%rsi)
	movl	$0xbf800000, 312(%rsi)
	movb	$1, 316(%rsi)
	movb	$0, 317(%rsi)
	testl	%eax, %eax
	jns	.L6508
	leaq	320(%rsi), %rcx
	movq	%rsi, %rdi
	jmp	.L6509
	.p2align 4,,7
.L6266:
	andl	$1048576, %edi
	movl	%edi, 92(%rsp)
	je	.L6267
	leaq	.LC15(%rip), %rdx
	leaq	.LC251(%rip), %rcx
	movl	$3911, %r8d
	call	_assert
	movq	184(%rsp), %rax
	jmp	.L6267
	.p2align 4,,7
.L6924:
	movq	$0, 600(%rsi)
	movq	$0, 608(%rsi)
	movq	$0, 616(%rsi)
	movq	$0, 624(%rsi)
	jmp	.L6525
	.p2align 4,,7
.L6923:
	leaq	.LC92(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	movl	$1648, %r8d
	call	_assert
	movq	184(%rsp), %rcx
	jmp	.L6524
	.p2align 4,,7
.L6928:
	leaq	.LC15(%rip), %rdx
	leaq	.LC258(%rip), %rcx
	movl	$4417, %r8d
	call	_assert
	movq	184(%rsp), %rdx
	jmp	.L6560
	.p2align 4,,7
.L6904:
	movl	$0x00000000, 84(%rsi)
	movl	$0x00000000, 88(%rsi)
	movaps	%xmm6, %xmm3
	movaps	%xmm6, %xmm1
	jmp	.L6344
	.p2align 4,,7
.L6683:
	movaps	%xmm6, %xmm1
	movaps	%xmm6, %xmm2
	movss	.LC245(%rip), %xmm7
	jmp	.L6534
	.p2align 4,,7
.L6447:
	cmpq	%r10, %rdx
	movq	%r9, %r13
	movq	%r10, %r15
	jne	.L6445
	movq	5928(%r8), %rdx
	movq	5920(%r8), %rax
	movss	6384(%rbx), %xmm0
	movq	80(%rsp), %rcx
	movq	%rdx, 216(%rsp)
	movq	%rax, 208(%rsp)
	mulss	5120(%r8), %xmm0
	mulss	220(%rsp), %xmm0
	movss	%xmm0, 220(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	leaq	192(%rsp), %rdx
	movq	656(%r10), %rcx
	movl	%eax, %r9d
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	leaq	8(%rdx), %r8
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movq	184(%rsp), %r15
	movq	%r15, %r13
	movzbl	139(%r15), %esi
	movss	28(%r15), %xmm7
	movss	32(%r15), %xmm8
	jmp	.L6445
.L6921:
	movl	$6, %ecx
	leaq	176(%rsp), %rsi
	leaq	160(%rsp), %r13
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	32(%rdi), %xmm0
	movq	656(%rdi), %rcx
	movss	28(%rdi), %xmm1
	movl	%eax, %r9d
	movss	40(%rdi), %xmm2
	movq	%rsi, %r8
	movss	36(%rdi), %xmm3
	addss	%xmm0, %xmm2
	addss	%xmm1, %xmm3
	movss	%xmm14, 32(%rsp)
	movq	%r13, %rdx
	addss	.LC28(%rip), %xmm1
	movl	$0x3f800000, 48(%rsp)
	addss	.LC28(%rip), %xmm0
	addss	.LC28(%rip), %xmm2
	movl	$-1, 40(%rsp)
	addss	.LC28(%rip), %xmm3
	movss	%xmm1, 160(%rsp)
	movss	%xmm0, 164(%rsp)
	movss	%xmm2, 180(%rsp)
	movss	%xmm3, 176(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movl	$5, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	184(%rsp), %rcx
	movl	%eax, %r9d
	movq	%rsi, %r8
	movss	32(%rcx), %xmm0
	leaq	28(%rcx), %rdx
	movss	28(%rcx), %xmm1
	addss	40(%rcx), %xmm0
	addss	36(%rcx), %xmm1
	movq	656(%rcx), %rcx
	movss	%xmm14, 32(%rsp)
	movl	$0x3f800000, 48(%rsp)
	movl	$-1, 40(%rsp)
	movss	%xmm0, 180(%rsp)
	movss	%xmm1, 176(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movl	76(%rsp), %eax
	testl	%eax, %eax
	je	.L6947
.L6870:
	movq	184(%rsp), %rdi
	jmp	.L6454
.L6920:
	movss	32(%rdi), %xmm11
	movq	656(%rdi), %rcx
	addss	40(%rdi), %xmm11
	movss	28(%rdi), %xmm12
	addss	36(%rdi), %xmm12
	leaq	176(%rsp), %rsi
	addq	$112, %rcx
	movq	%rsi, %rdx
	movaps	%xmm11, %xmm0
	movaps	%xmm12, %xmm1
	subss	132(%rdi), %xmm0
	subss	%xmm13, %xmm1
	movss	%xmm1, 176(%rsp)
	movss	%xmm0, 180(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	184(%rsp), %rax
	movaps	%xmm12, %xmm0
	movq	%rsi, %rdx
	subss	132(%rax), %xmm0
	movq	656(%rax), %rcx
	addq	$112, %rcx
	movss	%xmm0, 176(%rsp)
	movaps	%xmm11, %xmm0
	subss	%xmm13, %xmm0
	movss	%xmm0, 180(%rsp)
	call	_ZN8ImVectorI6ImVec2E9push_backERKS0_
	movq	184(%rsp), %rax
	subss	%xmm14, %xmm12
	xorl	%r9d, %r9d
	subss	%xmm14, %xmm11
	movaps	%xmm14, %xmm2
	movq	%rsi, %rdx
	movss	132(%rax), %xmm0
	movq	656(%rax), %rcx
	subss	%xmm0, %xmm12
	movl	$3, 32(%rsp)
	subss	%xmm0, %xmm11
	movss	%xmm12, 176(%rsp)
	movss	%xmm11, 180(%rsp)
	call	_ZN10ImDrawList13PathArcToFastERK6ImVec2fii
	movq	184(%rsp), %rax
	movl	120(%rsp), %r9d
	movq	656(%rax), %rsi
	movl	112(%rsi), %r8d
	movq	120(%rsi), %rdx
	movq	%rsi, %rcx
	movl	$1, 32(%rsp)
	call	_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ijb
	movl	116(%rsi), %eax
	testl	%eax, %eax
	jns	.L6494
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	incl	844(%rax)
	call	*232(%rax)
	movq	120(%rsi), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L6495
	movslq	112(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	120(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6497
	decl	844(%rax)
.L6497:
	call	*240(%rax)
	movq	%rdi, 120(%rsi)
	movl	$0, 116(%rsi)
.L6494:
	movl	$0, 112(%rsi)
	movq	184(%rsp), %rdi
	jmp	.L6493
.L6919:
	movq	%rdi, %rcx
	xorl	%edx, %edx
	call	_ZL9ScrollbarP11ImGuiWindowb
	movq	184(%rsp), %rdi
	jmp	.L6492
.L6918:
	movl	$1, %edx
	movq	%r15, %rcx
	call	_ZL9ScrollbarP11ImGuiWindowb
	movq	184(%rsp), %rdi
	jmp	.L6491
.L6917:
	movl	12(%r15), %eax
	movq	%r15, %r13
	movss	32(%r15), %xmm2
	movaps	%xmm6, %xmm0
	testb	$1, %al
	jne	.L6487
	movq	GImGui(%rip), %rdx
	movss	648(%r15), %xmm0
	mulss	5948(%rdx), %xmm0
	movss	5160(%rdx), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
.L6487:
	addss	%xmm0, %xmm2
	testb	$4, %ah
	movaps	%xmm6, %xmm11
	movaps	%xmm2, %xmm15
	je	.L6488
	movq	GImGui(%rip), %rax
	movss	648(%r15), %xmm11
	mulss	5948(%rax), %xmm11
	movss	5160(%rax), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm11
.L6488:
	movss	28(%r15), %xmm12
	movl	112(%rsp), %r8d
	addss	%xmm15, %xmm11
	movss	44(%r15), %xmm5
	addss	%xmm12, %xmm5
	testl	%r8d, %r8d
	movss	%xmm5, 140(%rsp)
	jne	.L6845
	leaq	176(%rsp), %rsi
	leaq	160(%rsp), %rdi
.L6489:
	movl	76(%rsp), %ecx
	movss	%xmm14, 128(%rsp)
	testl	%ecx, %ecx
	jne	.L6490
	movss	%xmm6, 128(%rsp)
.L6490:
	movl	$13, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	140(%rsp), %xmm5
	movq	656(%r13), %rcx
	movss	%xmm5, 176(%rsp)
	movl	%eax, %r9d
	movl	$3, 40(%rsp)
	movss	128(%rsp), %xmm5
	movq	%rsi, %r8
	movss	%xmm5, 32(%rsp)
	movq	%rdi, %rdx
	movss	%xmm11, 180(%rsp)
	movss	%xmm12, 160(%rsp)
	movss	%xmm15, 164(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movq	184(%rsp), %r15
	jmp	.L6486
.L6647:
	movl	$2147483647, %edx
	jmp	.L6425
.L6646:
	movl	$2147483647, %edx
	jmp	.L6424
.L6838:
	movb	$0, 160(%rax)
	movl	$2, %edx
	jmp	.L6288
.L6839:
	movl	$2, 156(%rax)
	movb	$0, 160(%rax)
	jmp	.L6285
.L6512:
	movq	GImGui(%rip), %rax
	jmp	.L6514
.L6516:
	movq	GImGui(%rip), %rax
	jmp	.L6518
.L6311:
	movq	GImGui(%rip), %rax
	jmp	.L6313
.L6521:
	movq	GImGui(%rip), %rax
	jmp	.L6523
.L6926:
	movss	5944(%rbx), %xmm3
	movaps	%xmm1, %xmm0
	addss	%xmm1, %xmm3
	jmp	.L6539
.L6731:
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	jmp	.L6529
.L6925:
	movq	184(%rsp), %rax
	movss	.LC28(%rip), %xmm2
	movss	32(%rax), %xmm0
	movzbl	139(%rax), %edx
	movss	28(%rax), %xmm1
	addss	5160(%rbx), %xmm0
	addss	5156(%rbx), %xmm1
	xorl	$1, %edx
	movzbl	%dl, %edx
	movss	%xmm0, 96(%rsp)
	movq	96(%rsp), %rax
	movss	%xmm1, 76(%rsp)
	movl	76(%rsp), %ecx
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	jmp	.L6536
.L6273:
	movq	GImGui(%rip), %rax
	movslq	%esi, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	incl	844(%rax)
	leaq	(%rcx,%rdx,8), %rcx
	call	*232(%rax)
	movq	6208(%rbx), %rcx
	movq	%rax, %r13
	testq	%rcx, %rcx
	je	.L6274
	movslq	6200(%rbx), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %r8
	movq	%rcx, %rdx
	movq	%r13, %rcx
	call	memcpy
	movq	6208(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L6276
	decl	844(%rax)
.L6276:
	call	*240(%rax)
	movslq	6200(%rbx), %rdx
	movl	%esi, 6204(%rbx)
	movq	%r13, %rsi
	movq	%r13, 6208(%rbx)
	movq	184(%rsp), %rax
	leal	1(%rdx), %ecx
	jmp	.L6271
.L6883:
	leaq	.LC15(%rip), %rdx
	leaq	.LC246(%rip), %rcx
	movl	$3883, %r8d
	call	_assert
	jmp	.L6232
.L6886:
	movq	480(%rsp), %rax
	movq	GImGui(%rip), %rsi
	movl	$712, %ecx
	movss	(%rax), %xmm7
	movss	4(%rax), %xmm6
	incl	844(%rsi)
	call	*232(%rsi)
	movq	464(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 208(%rsp)
	call	_ZN11ImGuiWindowC1EPKc
	movq	208(%rsp), %rdx
	testl	$256, %ebp
	movl	%ebp, 12(%rdx)
	je	.L6948
.L6243:
	movss	%xmm7, 44(%rdx)
	testb	$64, %bpl
	movss	%xmm6, 48(%rdx)
	movq	44(%rdx), %rax
	movq	%rax, 36(%rdx)
	jne	.L6949
	xorps	%xmm6, %xmm6
	ucomiss	36(%rdx), %xmm6
	jnb	.L6950
	ucomiss	40(%rdx), %xmm6
	jnb	.L6249
	movl	152(%rdx), %r8d
	testl	%r8d, %r8d
	jle	.L6951
.L6250:
	movl	$1, %eax
.L6254:
	movb	%al, 160(%rdx)
.L6246:
	testl	$8192, %ebp
	jne	.L6952
	leaq	208(%rsp), %rax
	leaq	5976(%rsi), %rcx
	movq	%rax, %rdx
	movq	%rax, 80(%rsp)
	call	_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_
.L6260:
	movq	208(%rsp), %rax
	movb	$1, 116(%rsp)
	movq	%rax, 184(%rsp)
	jmp	.L6236
.L6392:
	movss	28(%r14), %xmm1
	movss	36(%r14), %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm3, %xmm1
	subss	%xmm3, %xmm0
	subss	124(%r14), %xmm0
	movss	%xmm1, 208(%rsp)
	movl	$0xff7fffff, 212(%rsp)
	movss	%xmm10, 220(%rsp)
	movss	%xmm0, 216(%rsp)
.L6396:
	movq	80(%rsp), %r9
	leaq	36(%r15), %rdx
	leaq	20(%r15), %rcx
	leaq	164(%r15), %r8
	call	_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect
	movq	%rax, 20(%r15)
	movq	184(%rsp), %r15
	movb	%sil, 76(%rsp)
	movss	.LC29(%rip), %xmm9
	movq	%r15, %r13
	jmp	.L6389
.L6945:
	movl	156(%rsi), %r10d
	testl	%r10d, %r10d
	jle	.L6365
	cmpb	$0, 112(%rsp)
	je	.L6592
	jmp	.L6365
.L6935:
	addss	5200(%rbx), %xmm12
	jmp	.L6355
.L6910:
	movl	156(%r15), %eax
	testl	%eax, %eax
	jg	.L6865
	movss	8(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L6865
	movss	12(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L6865
	movss	5236(%rbx), %xmm8
	movaps	%xmm8, %xmm0
	movss	5228(%rbx), %xmm4
	movss	5232(%rbx), %xmm5
	cmpnless	%xmm4, %xmm0
	movss	40(%r15), %xmm7
	addss	%xmm7, %xmm3
	andps	%xmm0, %xmm8
	andnps	%xmm4, %xmm0
	movss	5224(%rbx), %xmm4
	orps	%xmm0, %xmm8
	movaps	%xmm5, %xmm0
	cmpnless	%xmm4, %xmm0
	andps	%xmm0, %xmm5
	andnps	%xmm4, %xmm0
	movaps	%xmm8, %xmm4
	cmpless	%xmm3, %xmm4
	orps	%xmm0, %xmm5
	movss	36(%r15), %xmm0
	andps	%xmm4, %xmm3
	addss	%xmm0, %xmm1
	andnps	%xmm8, %xmm4
	orps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	cmpless	%xmm1, %xmm4
	subss	%xmm7, %xmm3
	andps	%xmm4, %xmm1
	andnps	%xmm5, %xmm4
	movss	%xmm3, 24(%r15)
	movaps	%xmm3, %xmm7
	orps	%xmm4, %xmm1
	movaps	%xmm1, %xmm4
	subss	%xmm0, %xmm4
	movss	%xmm4, 20(%r15)
	movss	12(%rbx), %xmm3
	movss	8(%rbx), %xmm1
	subss	%xmm8, %xmm3
	subss	%xmm5, %xmm1
	minss	%xmm3, %xmm7
	minss	%xmm1, %xmm4
	movaps	%xmm7, %xmm3
	movss	%xmm7, 24(%r15)
	movaps	%xmm4, %xmm1
	movss	%xmm4, 20(%r15)
	jmp	.L6404
.L6949:
	movl	$2, 156(%rdx)
	movl	$2, 152(%rdx)
	movb	$0, 160(%rdx)
	xorps	%xmm6, %xmm6
	jmp	.L6246
.L6946:
	movaps	%xmm12, %xmm1
	movss	48(%rsi), %xmm0
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm12, %xmm1
	orps	%xmm1, %xmm0
	jmp	.L6375
.L6937:
	movq	GImGui(%rip), %rdx
	movss	648(%r14), %xmm0
	testb	$4, %ah
	mulss	5948(%rdx), %xmm0
	movss	5160(%rdx), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
	addss	%xmm0, %xmm3
	movaps	%xmm3, %xmm1
	je	.L6595
	addss	%xmm3, %xmm0
	jmp	.L6594
.L6948:
	movq	464(%rsp), %rcx
	movl	$0x42700000, 20(%rdx)
	movl	$0x42700000, 24(%rdx)
	movl	$0x42700000, 28(%rdx)
	movl	$0x42700000, 32(%rdx)
	call	_ZL18FindWindowSettingsPKc
	testq	%rax, %rax
	je	.L6953
	movq	208(%rsp), %rdx
	andl	$-5, 172(%rdx)
	andl	$-5, 176(%rdx)
	andl	$-5, 180(%rdx)
.L6240:
	movss	12(%rax), %xmm0
	ucomiss	.LC21(%rip), %xmm0
	jp	.L6694
	je	.L6241
.L6694:
	movq	12(%rax), %rcx
	movq	%rcx, 20(%rdx)
	movss	24(%rdx), %xmm1
	cvttss2si	%xmm1, %ecx
	cvtsi2ss	%ecx, %xmm1
	cvttss2si	%xmm0, %ecx
	movss	%xmm1, 32(%rdx)
	cvtsi2ss	%ecx, %xmm0
	movzbl	28(%rax), %ecx
	movb	%cl, 139(%rdx)
	movss	%xmm0, 28(%rdx)
.L6241:
	movss	20(%rax), %xmm0
	movss	24(%rax), %xmm1
	movaps	%xmm0, %xmm3
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm3
	mulss	%xmm1, %xmm2
	addss	%xmm3, %xmm2
	ucomiss	.LC250(%rip), %xmm2
	jbe	.L6243
	testb	$2, %bpl
	jne	.L6243
	movaps	%xmm1, %xmm6
	movaps	%xmm0, %xmm7
	jmp	.L6243
.L6495:
	movq	GImGui(%rip), %rax
	jmp	.L6497
.L6944:
	movss	528(%rdx), %xmm0
	ucomiss	536(%rdx), %xmm0
	jnb	.L6688
	movss	532(%rdx), %xmm0
	movl	$1, %ecx
	ucomiss	540(%rdx), %xmm0
	cmovnb	%ecx, %eax
.L6564:
	movb	%al, 139(%rdx)
	jmp	.L6563
.L6537:
	movaps	%xmm2, %xmm3
	testl	%esi, %esi
	movss	%xmm0, 220(%rsp)
	subss	%xmm1, %xmm3
	movss	%xmm3, 216(%rsp)
	je	.L6538
	movaps	%xmm1, %xmm0
	jmp	.L6540
.L6900:
	movq	80(%rsp), %rax
	movl	$1, %r8d
	leaq	8(%rax), %rdx
	movq	%rax, %rcx
	call	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	testb	%al, %al
	je	.L6328
	cmpb	$0, 944(%rbx)
	je	.L6328
	xorb	$1, 139(%rsi)
	testl	$256, %ebp
	jne	.L6326
	movq	GImGui(%rip), %rax
	ucomiss	6128(%rax), %xmm6
	jnb	.L6954
.L6326:
	movq	%rdi, %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movq	184(%rsp), %rsi
	jmp	.L6328
.L6936:
	leaq	.LC15(%rip), %rdx
	leaq	.LC252(%rip), %rcx
	movl	$4130, %r8d
	call	_assert
	movq	184(%rsp), %r15
	jmp	.L6391
.L6845:
	movl	$5, %ecx
	leaq	176(%rsp), %rsi
	leaq	160(%rsp), %rdi
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	656(%r15), %rcx
	movss	140(%rsp), %xmm5
	movl	%eax, %r9d
	movl	$0x3f800000, 32(%rsp)
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movss	%xmm5, 176(%rsp)
	movss	%xmm11, 180(%rsp)
	movss	%xmm12, 160(%rsp)
	movss	%xmm11, 164(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	movq	184(%rsp), %r13
	jmp	.L6489
.L6947:
	movl	$5, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	96(%rsp), %xmm15
	movl	%eax, %r9d
	subss	.LC28(%rip), %xmm15
	movaps	%xmm10, %xmm0
	addss	.LC28(%rip), %xmm7
	movq	184(%rsp), %rax
	movq	%rsi, %r8
	addss	%xmm6, %xmm0
	movq	%r13, %rdx
	movss	%xmm10, 180(%rsp)
	movq	656(%rax), %rcx
	movl	$0x3f800000, 32(%rsp)
	movss	%xmm15, 176(%rsp)
	movss	%xmm7, 160(%rsp)
	movss	%xmm0, 164(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	jmp	.L6870
.L6952:
	movslq	5976(%rsi), %rdx
	movq	5984(%rsi), %rdi
	movq	%rdx, %rax
	leaq	(%rdi,%rdx,8), %rdx
	cmpq	%rdx, %rdi
	ja	.L6955
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
.L6256:
	cmpl	%eax, 5980(%rsi)
	je	.L6956
.L6257:
	movslq	%eax, %rdx
	cmpq	%r13, %rdx
	jle	.L6259
	subq	%r13, %rdx
	leaq	8(%rdi,%r13,8), %rcx
	movq	%rdx, %r8
	leaq	(%rdi,%r12), %rdx
	salq	$3, %r8
	call	memmove
	movl	5976(%rsi), %eax
	movq	5984(%rsi), %rdi
.L6259:
	movq	208(%rsp), %rdx
	incl	%eax
	movq	%rdx, (%rdi,%r12)
	movl	%eax, 5976(%rsi)
	leaq	208(%rsp), %rax
	movq	%rax, 80(%rsp)
	jmp	.L6260
.L6943:
	movl	$1, %esi
	jmp	.L6577
.L6932:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$866, %r8d
	call	_assert
	movslq	6016(%rbx), %rax
	jmp	.L6264
.L6274:
	movq	GImGui(%rip), %rax
	jmp	.L6276
.L6669:
	movl	$12, %ecx
	jmp	.L6485
.L6942:
	movss	20(%r15), %xmm1
	movq	80(%rsp), %r9
	movaps	%xmm1, %xmm4
	leaq	36(%r15), %rdx
	movss	.LC28(%rip), %xmm0
	leaq	20(%r15), %rcx
	subss	%xmm0, %xmm4
	movss	24(%r15), %xmm3
	addss	%xmm0, %xmm1
	leaq	164(%r15), %r8
	movss	%xmm4, 208(%rsp)
	movaps	%xmm3, %xmm4
	movss	%xmm1, 216(%rsp)
	subss	%xmm0, %xmm4
	addss	%xmm3, %xmm0
	movss	%xmm4, 212(%rsp)
	movss	%xmm0, 220(%rsp)
	call	_ZL22FindBestPopupWindowPosRK6ImVec2S1_PiRK6ImRect
	movq	%rax, 20(%r15)
	movq	184(%rsp), %r15
	movb	%sil, 76(%rsp)
	movss	.LC21(%rip), %xmm10
	movss	.LC29(%rip), %xmm9
	movq	%r15, %r13
	jmp	.L6389
.L6955:
	leaq	.LC10(%rip), %rdx
	leaq	.LC90(%rip), %rcx
	movl	$888, %r8d
	call	_assert
	movq	5984(%rsi), %rdx
	movl	5976(%rsi), %eax
	subq	%rdx, %rdi
	movq	%rdi, %r13
	movq	%rdi, %r12
	movq	%rdx, %rdi
	sarq	$3, %r13
	jmp	.L6256
.L6954:
	movss	20(%rax), %xmm0
	movss	%xmm0, 6128(%rax)
	jmp	.L6326
.L6688:
	movl	$1, %eax
	jmp	.L6564
.L6950:
	ucomiss	40(%rdx), %xmm6
	movl	$2, 152(%rdx)
	jb	.L6250
.L6249:
	movl	$2, 156(%rdx)
	jmp	.L6250
.L6956:
	testl	%eax, %eax
	je	.L6614
	leal	(%rax,%rax), %edx
	cmpl	%edx, %eax
	jge	.L6257
.L6258:
	leaq	5976(%rsi), %rcx
	call	_ZN8ImVectorIP11ImGuiWindowE7reserveEi.part.51
	movl	5976(%rsi), %eax
	movq	5984(%rsi), %rdi
	jmp	.L6257
.L6951:
	movl	156(%rdx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jg	.L6250
	jmp	.L6254
.L6614:
	movl	$4, %edx
	jmp	.L6258
.L6657:
	movl	$33, %ecx
	jmp	.L6461
.L6953:
	movq	464(%rsp), %rcx
	call	_ZL17AddWindowSettingsPKc
	movq	208(%rsp), %rdx
	jmp	.L6240
.L6939:
	movl	$31, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	184(%rsp), %r15
	movl	%eax, 120(%rsp)
	movq	%r15, %r13
	jmp	.L6463
.L6940:
	testb	%dil, %dil
	je	.L6463
	cmpb	$0, 944(%rbx)
	je	.L6464
	movss	%xmm15, 76(%rsp)
	movl	76(%rsp), %edx
	movq	%r13, %rcx
	movss	%xmm12, 76(%rsp)
	movl	76(%rsp), %eax
	movl	%edx, %edx
	salq	$32, %rax
	orq	%rax, %rdx
	call	_ZL27ApplySizeFullWithConstraintP11ImGuiWindow6ImVec2
	testl	$256, %ebp
	movq	GImGui(%rip), %rax
	jne	.L6466
	ucomiss	6128(%rax), %xmm6
	jb	.L6466
	movss	20(%rax), %xmm0
	movss	%xmm0, 6128(%rax)
.L6466:
	movq	184(%rsp), %r15
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	movq	%r15, %r13
	jmp	.L6463
.L6660:
	movq	%r15, %r13
	jmp	.L6463
.L6678:
	movq	%rsi, %rax
	jmp	.L6511
.L6680:
	movq	%rsi, %rdi
	.p2align 4,,2
	jmp	.L6519
.L6938:
	movq	GImGui(%rip), %rax
	movss	648(%r14), %xmm0
	movss	5948(%rax), %xmm3
	mulss	%xmm0, %xmm3
	movss	5160(%rax), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	jmp	.L6594
.L6915:
	movl	%ebp, %eax
	andl	$2056, %eax
	cmpl	$2048, %eax
	jne	.L6858
	jmp	.L6871
.L6927:
	xorl	%r15d, %r15d
	jmp	.L6299
.L6929:
	movl	152(%rdx), %ecx
	testl	%ecx, %ecx
	jg	.L6610
	jmp	.L6611
	.seh_endproc
	.section .rdata,"dr"
.LC259:
	.ascii "%s.%s.%08X\0"
.LC260:
	.ascii "%s.%08X\0"
	.text
	.p2align 4,,15
	.def	_ZL12BeginChildExPKcjRK6ImVec2bi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL12BeginChildExPKcjRK6ImVec2bi
_ZL12BeginChildExPKcjRK6ImVec2bi:
.LFB485:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$336, %rsp
	.seh_stackalloc	336
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%r8, %rbx
	movl	%edx, %ebp
	movq	%rcx, %r12
	movl	%r9d, %edi
	movq	6008(%rax), %rsi
	movb	$1, 138(%rsi)
	call	_ZN5ImGui21GetContentRegionAvailEv
	movss	(%rbx), %xmm1
	cvttss2si	%xmm1, %r8d
	xorps	%xmm2, %xmm2
	movss	4(%rbx), %xmm0
	cvttss2si	%xmm0, %edx
	cvtsi2ss	%r8d, %xmm1
	movl	$1048835, %r8d
	cvtsi2ss	%edx, %xmm0
	ucomiss	%xmm1, %xmm2
	movss	%xmm1, 64(%rsp)
	movss	%xmm0, 68(%rsp)
	jnb	.L6979
	ucomiss	%xmm0, %xmm2
	jnb	.L6980
.L6963:
	movl	%r8d, %eax
	movl	416(%rsp), %ebx
	orb	$-128, %al
	testb	%dil, %dil
	leaq	80(%rsp), %rdi
	cmovne	%eax, %r8d
	orl	%r8d, %ebx
	testq	%r12, %r12
	je	.L6969
	movl	%ebp, 40(%rsp)
	movq	%r12, 32(%rsp)
	leaq	.LC259(%rip), %r8
	movq	(%rsi), %r9
	movl	$256, %edx
	movq	%rdi, %rcx
	call	_Z14ImFormatStringPciPKcz
.L6970:
	leaq	64(%rsp), %r8
	xorl	%edx, %edx
	movl	%ebx, 32(%rsp)
	movss	.LC20(%rip), %xmm3
	movq	%rdi, %rcx
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	testb	$-128, 12(%rsi)
	jne	.L6971
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rdx
	andl	$-129, 12(%rdx)
	movb	$1, 138(%rdx)
.L6971:
	addq	$336, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L6979:
	ucomiss	%xmm2, %xmm1
	jp	.L6973
	movl	$3145987, %r8d
	jne	.L6973
.L6960:
	movss	.LC34(%rip), %xmm5
	movl	%eax, 60(%rsp)
	movaps	%xmm5, %xmm4
	movss	60(%rsp), %xmm3
	ucomiss	%xmm0, %xmm2
	cmpless	%xmm3, %xmm4
	andps	%xmm4, %xmm3
	andnps	%xmm5, %xmm4
	orps	%xmm4, %xmm3
	movss	.LC81(%rip), %xmm4
	andps	%xmm4, %xmm1
	subss	%xmm1, %xmm3
	movss	%xmm3, 64(%rsp)
	jb	.L6963
.L6980:
	ucomiss	%xmm2, %xmm0
	jp	.L6965
	movl	%r8d, %edx
	orl	$4194304, %edx
	ucomiss	%xmm2, %xmm0
	cmove	%edx, %r8d
.L6965:
	movss	.LC34(%rip), %xmm3
	shrq	$32, %rax
	movl	%eax, 60(%rsp)
	movaps	%xmm3, %xmm2
	movss	60(%rsp), %xmm1
	cmpless	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm3, %xmm2
	orps	%xmm2, %xmm1
	movss	.LC81(%rip), %xmm2
	andps	%xmm2, %xmm0
	subss	%xmm0, %xmm1
	movss	%xmm1, 68(%rsp)
	jmp	.L6963
	.p2align 4,,7
.L6973:
	movl	$1048835, %r8d
	jmp	.L6960
	.p2align 4,,7
.L6969:
	movl	%ebp, 32(%rsp)
	movq	(%rsi), %r9
	leaq	.LC260(%rip), %r8
	movl	$256, %edx
	movq	%rdi, %rcx
	call	_Z14ImFormatStringPciPKcz
	jmp	.L6970
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	.def	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
_ZN5ImGui10BeginChildEPKcRK6ImVec2bi:
.LFB486:
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
	movq	%rcx, %rbx
	movl	%r8d, %edi
	movl	%r9d, %ebp
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	movq	6008(%rax), %rcx
	movb	$1, 138(%rcx)
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
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
	.globl	_ZN5ImGui5BeginEPKcPbi
	.def	_ZN5ImGui5BeginEPKcPbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5BeginEPKcPbi
_ZN5ImGui5BeginEPKcPbi:
.LFB499:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorps	%xmm0, %xmm0
	movl	%r8d, 32(%rsp)
	leaq	48(%rsp), %r8
	movss	.LC20(%rip), %xmm3
	movss	%xmm0, 48(%rsp)
	movss	%xmm0, 52(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	addq	$72, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC263:
	.ascii "g.IO.DeltaTime >= 0.0f\0"
	.align 8
.LC264:
	.ascii "g.IO.DisplaySize.x >= 0.0f && g.IO.DisplaySize.y >= 0.0f\0"
.LC265:
	.ascii "g.IO.Fonts->Fonts.Size > 0\0"
	.align 8
.LC266:
	.ascii "g.IO.Fonts->Fonts[0]->IsLoaded()\0"
	.align 8
.LC267:
	.ascii "g.Style.CurveTessellationTol > 0.0f\0"
.LC268:
	.ascii "g.Settings.empty()\0"
.LC269:
	.ascii "rb\0"
.LC270:
	.ascii "%.*s\0"
.LC271:
	.ascii "Pos=%f,%f\0"
.LC272:
	.ascii "Size=%f,%f\0"
.LC273:
	.ascii "Collapsed=%d\0"
.LC274:
	.ascii "g.Font->IsLoaded()\0"
	.align 8
.LC276:
	.ascii "g.MovedWindow && g.MovedWindow->RootWindow\0"
	.align 8
.LC277:
	.ascii "g.MovedWindow->RootWindow->MoveId == g.MovedWindowMoveId\0"
	.align 8
.LC278:
	.ascii "(popup.Window->Flags & ImGuiWindowFlags_Popup) != 0\0"
.LC280:
	.ascii "Debug\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8NewFrameEv
	.def	_ZN5ImGui8NewFrameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8NewFrameEv
_ZN5ImGui8NewFrameEv:
.LFB399:
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
	xorps	%xmm6, %xmm6
	movq	GImGui(%rip), %rbx
	movss	16(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jb	.L7331
.L6984:
	movss	8(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jb	.L6985
	movss	12(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jb	.L6985
	movq	144(%rbx), %rsi
	movl	48(%rsi), %eax
	testl	%eax, %eax
	jle	.L7332
.L6988:
	movq	56(%rsi), %rax
	movq	(%rax), %rax
	cmpq	$0, 88(%rax)
	je	.L7333
.L6989:
	movss	5244(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L7334
.L6990:
	cmpb	$0, (%rbx)
	je	.L6991
	movq	GImGui(%rip), %rdi
	leaq	80(%rsp), %rbp
	movq	160(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L7335
.L7020:
	cmpq	$0, 88(%rsi)
	je	.L7022
	movss	4(%rsi), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L7336
.L7024:
	movss	152(%rdi), %xmm1
	movq	6008(%rdi), %rax
	mulss	(%rsi), %xmm1
	movq	%rsi, 5936(%rdi)
	testq	%rax, %rax
	mulss	%xmm1, %xmm0
	movss	%xmm0, 5948(%rdi)
	je	.L7182
	movq	GImGui(%rip), %rdx
	movss	5948(%rdx), %xmm0
	mulss	648(%rax), %xmm0
.L7025:
	movq	88(%rsi), %rax
	movss	%xmm0, 5944(%rdi)
	movq	36(%rax), %rax
	movq	%rax, 5952(%rdi)
	movq	5936(%rbx), %rax
	cmpq	$0, 88(%rax)
	je	.L7337
.L7026:
	movss	5960(%rbx), %xmm0
	incl	5964(%rbx)
	leaq	6392(%rbx), %rsi
	addss	16(%rbx), %xmm0
	movb	$0, 10384(%rbx)
	movq	%rsi, %rcx
	movss	%xmm0, 5960(%rbx)
.LEHB17:
	call	_ZN10ImDrawList5ClearEv
	movq	144(%rbx), %rdx
	movq	%rsi, %rcx
	call	_ZN10ImDrawList13PushTextureIDERKPv
	movq	%rsi, %rcx
	call	_ZN10ImDrawList22PushClipRectFullScreenEv
	movss	264(%rbx), %xmm0
	movb	$0, 6304(%rbx)
	ucomiss	%xmm0, %xmm6
	movq	$0, 6312(%rbx)
	movl	$0, 6328(%rbx)
	movl	$0, 6324(%rbx)
	movl	$0, 6320(%rbx)
	ja	.L7338
	ja	.L7031
.L7032:
	movss	868(%rbx), %xmm2
	ucomiss	%xmm2, %xmm6
	movss	872(%rbx), %xmm3
	ja	.L7339
.L7037:
	movss	268(%rbx), %xmm1
	subss	%xmm2, %xmm0
	subss	%xmm3, %xmm1
.L7035:
	movq	264(%rbx), %rax
	movss	%xmm1, 864(%rbx)
	leaq	884(%rbx), %rcx
	movss	%xmm0, 860(%rbx)
	leaq	944(%rbx), %rdx
	leaq	980(%rbx), %r8
	movaps	%xmm6, %xmm2
	movq	%rax, 868(%rbx)
	movaps	%xmm6, %xmm3
	leaq	960(%rbx), %rax
	movss	16(%rbx), %xmm4
.L7047:
	cmpb	$0, -672(%rdx)
	je	.L7039
	movss	(%rax), %xmm0
	ucomiss	%xmm0, %xmm6
	ja	.L7340
	ucomiss	%xmm0, %xmm2
	movb	$0, -68(%rdx)
	movb	$0, 5(%rdx)
	movss	%xmm0, 20(%rax)
	ja	.L7341
	addss	%xmm4, %xmm0
.L7042:
	movss	%xmm0, (%rax)
	movb	$0, (%rdx)
	movss	40(%rax), %xmm5
	movss	268(%rbx), %xmm1
	movss	264(%rbx), %xmm0
	subss	4(%rcx), %xmm1
	subss	(%rcx), %xmm0
	mulss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	cmpnless	%xmm5, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm5, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 40(%rax)
.L7046:
	addq	$4, %rax
	addq	$8, %rcx
	incq	%rdx
	cmpq	%r8, %rax
	jne	.L7047
	movq	1020(%rbx), %rdx
	leaq	3076(%rbx), %rdi
	leaq	3068(%rbx), %rax
	leaq	1020(%rbx), %rsi
	movaps	%xmm6, %xmm3
	andq	$-8, %rdi
	movss	.LC20(%rip), %xmm2
	subq	%rdi, %rax
	movq	%rdx, 3068(%rbx)
	movq	3060(%rbx), %rdx
	subq	%rax, %rsi
	addl	$2048, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movq	%rdx, 5108(%rbx)
	xorl	%eax, %eax
	rep movsq
	.p2align 4,,7
.L7049:
	cmpb	$0, 289(%rbx,%rax)
	movaps	%xmm2, %xmm0
	je	.L7048
	movss	1020(%rbx,%rax,4), %xmm1
	movaps	%xmm3, %xmm0
	ucomiss	%xmm1, %xmm6
	ja	.L7048
	addss	%xmm4, %xmm1
	movaps	%xmm1, %xmm0
.L7048:
	movss	%xmm0, 1020(%rbx,%rax,4)
	incq	%rax
	cmpq	$512, %rax
	jne	.L7049
	movslq	11944(%rbx), %rax
	movaps	%xmm4, %xmm0
	movss	.LC28(%rip), %xmm7
	movl	$-2004318071, %edx
	movaps	%xmm7, %xmm5
	movl	$120, %r12d
	movq	%rax, %rcx
	leaq	(%rbx,%rax,4), %rax
	incl	%ecx
	subss	11464(%rax), %xmm0
	addss	11948(%rbx), %xmm0
	movss	%xmm0, 11948(%rbx)
	divss	.LC275(%rip), %xmm0
	movss	%xmm4, 11464(%rax)
	movl	%ecx, %eax
	movb	$0, 6060(%rbx)
	imull	%edx
	leal	(%rdx,%rcx), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$6, %eax
	subl	%edx, %eax
	imull	%r12d, %eax
	subl	%eax, %ecx
	cmpb	$0, 6076(%rbx)
	movl	6056(%rbx), %eax
	movl	%ecx, 11944(%rbx)
	movl	$0, 6056(%rbx)
	movl	%eax, 6064(%rbx)
	movl	6068(%rbx), %eax
	divss	%xmm0, %xmm5
	movss	%xmm5, 840(%rbx)
	jne	.L7051
	cmpl	%eax, 6072(%rbx)
	jne	.L7051
	testl	%eax, %eax
	je	.L7051
	movq	GImGui(%rip), %rax
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	movl	6068(%rbx), %eax
.L7051:
	movl	6104(%rbx), %edx
	movl	%eax, 6072(%rbx)
	movb	$0, 6076(%rbx)
	movb	$0, 6077(%rbx)
	testl	%edx, %edx
	je	.L7052
	cmpl	%eax, %edx
	je	.L7342
.L7052:
	movq	$0, 6096(%rbx)
	movl	$0, 6104(%rbx)
.L7066:
	movss	6128(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L7174
.L7064:
	subss	16(%rbx), %xmm0
	ucomiss	%xmm0, %xmm6
	movss	%xmm0, 6128(%rbx)
	jnb	.L7343
.L7065:
	movq	6096(%rbx), %rax
	testq	%rax, %rax
	je	.L7174
	testb	$16, 14(%rax)
	movq	%rax, 6040(%rbx)
	jne	.L7157
.L7158:
	movq	664(%rax), %rax
.L7073:
	movq	%rax, 6048(%rbx)
.L7071:
	movq	GImGui(%rip), %r10
	movl	6184(%r10), %ecx
	decl	%ecx
	js	.L7074
	movslq	%ecx, %r9
	movl	%ecx, %ecx
	movq	6192(%r10), %r8
	movq	%r9, %rdx
	salq	$5, %rdx
	leaq	-672(%rdx,%r9,8), %rdx
	subq	%rcx, %r9
	movq	%r9, %rcx
	salq	$5, %rcx
	addq	%r8, %rdx
	leaq	-712(%rcx,%r9,8), %rcx
	addq	%rcx, %r8
	.p2align 4,,7
.L7077:
	movq	680(%rdx), %rcx
	prefetcht0	(%rdx)
	testq	%rcx, %rcx
	je	.L7075
	testb	$4, 15(%rcx)
	jne	.L7076
.L7075:
	subq	$40, %rdx
	cmpq	%rdx, %r8
	jne	.L7077
.L7074:
	movl	$0x00000000, 6384(%rbx)
.L7081:
	movzbl	876(%rbx), %eax
	testb	%al, %al
	je	.L7083
	cmpq	$0, 6040(%rbx)
	je	.L7082
.L7084:
	movb	%al, 954(%rbx)
.L7083:
	movzbl	272(%rbx), %ecx
	movzbl	877(%rbx), %edx
	movl	%ecx, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	negl	%eax
	testb	%dl, %dl
	je	.L7085
	cmpq	$0, 6040(%rbx)
	je	.L7086
.L7087:
	movb	%dl, 955(%rbx)
.L7085:
	movzbl	273(%rbx), %edx
	orl	%edx, %ecx
	testb	%dl, %dl
	je	.L7088
	incl	%eax
	movl	$1, %eax
	je	.L7088
	movss	924(%rbx), %xmm0
	xorl	%eax, %eax
	ucomiss	928(%rbx), %xmm0
	seta	%al
.L7088:
	movzbl	878(%rbx), %edx
	testb	%dl, %dl
	je	.L7089
	cmpq	$0, 6040(%rbx)
	je	.L7090
.L7091:
	movb	%dl, 956(%rbx)
.L7089:
	movzbl	274(%rbx), %r11d
	testb	%r11b, %r11b
	je	.L7092
	cmpl	$-1, %eax
	je	.L7186
	movslq	%eax, %rdx
	movss	924(%rbx,%rdx,4), %xmm0
	movl	$2, %edx
	ucomiss	932(%rbx), %xmm0
	cmova	%edx, %eax
.L7092:
	movzbl	879(%rbx), %edx
	testb	%dl, %dl
	je	.L7093
	cmpq	$0, 6040(%rbx)
	je	.L7094
.L7095:
	movb	%dl, 957(%rbx)
.L7093:
	movzbl	275(%rbx), %r9d
	testb	%r9b, %r9b
	je	.L7096
	cmpl	$-1, %eax
	je	.L7188
	movslq	%eax, %rdx
	movss	924(%rbx,%rdx,4), %xmm0
	movl	$3, %edx
	ucomiss	936(%rbx), %xmm0
	cmova	%edx, %eax
.L7096:
	movzbl	880(%rbx), %edx
	testb	%dl, %dl
	je	.L7097
	cmpq	$0, 6040(%rbx)
	je	.L7344
.L7098:
	movb	%dl, 958(%rbx)
.L7097:
	movzbl	276(%rbx), %r8d
	testb	%r8b, %r8b
	je	.L7099
	cmpl	$-1, %eax
	movl	$4, %edx
	je	.L7176
	movslq	%eax, %rdx
	movl	$4, %eax
	movss	924(%rbx,%rdx,4), %xmm0
	ucomiss	940(%rbx), %xmm0
	cmova	%rax, %rdx
.L7176:
	cmpb	$0, 954(%rbx,%rdx)
	je	.L7345
.L7101:
	movl	11952(%rbx), %eax
	movl	$1, %esi
	cmpl	$-1, %eax
	je	.L7346
.L7161:
	testl	%eax, %eax
	movl	11956(%rbx), %eax
	movl	6068(%rbx), %edx
	setne	836(%rbx)
	cmpl	$-1, %eax
	je	.L7106
.L7359:
	testl	%eax, %eax
	setne	%al
.L7107:
	movb	%al, 837(%rbx)
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L7108
	cmpl	%edx, 6912(%rbx)
	sete	%al
.L7108:
	testb	%sil, %sil
	movb	%al, 838(%rbx)
	movl	$0, 6544(%rbx)
	movl	$-1, 11956(%rbx)
	movl	$-1, 11952(%rbx)
	movl	$0x3f800000, 11416(%rbx)
	movl	$0x3f800000, 11420(%rbx)
	jne	.L7109
	movq	$0, 6048(%rbx)
	movq	$0, 6040(%rbx)
.L7110:
	testl	%edx, %edx
	jne	.L7163
	movq	6032(%rbx), %rax
	testq	%rax, %rax
	je	.L7163
	cmpb	$0, 136(%rax)
	jne	.L7347
.L7163:
	movl	5976(%rbx), %eax
	testl	%eax, %eax
	je	.L7197
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.L7120
	.p2align 4,,7
.L7119:
	movq	5984(%rbx), %rdx
	incl	%esi
	movq	(%rdx,%rdi), %rdx
	addq	$8, %rdi
	cmpl	%eax, %esi
	movzbl	136(%rdx), %ecx
	movb	$0, 138(%rdx)
	movb	$0, 136(%rdx)
	movb	%cl, 137(%rdx)
	je	.L7348
.L7120:
	cmpl	%esi, %eax
	jg	.L7119
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movl	5976(%rbx), %eax
	jmp	.L7119
.L7340:
	movb	$1, -68(%rdx)
	movb	$0, 5(%rdx)
	movss	%xmm0, 20(%rax)
	movl	$0x00000000, (%rax)
	movb	$0, (%rdx)
	movss	5960(%rbx), %xmm0
	movaps	%xmm0, %xmm1
	movss	40(%rbx), %xmm5
	subss	-36(%rax), %xmm1
	ucomiss	%xmm1, %xmm5
	jbe	.L7349
	movss	268(%rbx), %xmm0
	movss	264(%rbx), %xmm1
	subss	4(%rcx), %xmm0
	subss	(%rcx), %xmm1
	movss	44(%rbx), %xmm5
	mulss	%xmm5, %xmm5
	mulss	%xmm0, %xmm0
	mulss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm5
	jbe	.L7043
	movb	$1, (%rdx)
.L7043:
	movl	$0xff7fffff, -36(%rax)
.L7045:
	movq	264(%rbx), %r9
	movq	%r9, (%rcx)
	movl	$0x00000000, 40(%rax)
	jmp	.L7046
	.p2align 4,,7
.L7039:
	movss	(%rax), %xmm0
	movb	$0, -68(%rdx)
	ucomiss	%xmm6, %xmm0
	jb	.L7350
	movb	$1, 5(%rdx)
	movss	%xmm0, 20(%rax)
	movl	$0xbf800000, (%rax)
	movb	$0, (%rdx)
	jmp	.L7046
	.p2align 4,,7
.L7349:
	movss	%xmm0, -36(%rax)
	jmp	.L7045
.L7348:
	movl	%eax, %edx
.L7118:
	movq	6032(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L7126
	cmpb	$0, 137(%rcx)
	jne	.L7126
	decl	%eax
	movl	%eax, %esi
	js	.L7126
	movslq	%eax, %rdi
	salq	$3, %rdi
	jmp	.L7164
	.p2align 4,,7
.L7122:
	movq	5984(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	cmpb	$0, 137(%rcx)
	je	.L7123
	cmpl	5976(%rbx), %esi
	jge	.L7351
.L7124:
	testb	$16, 14(%rcx)
	je	.L7352
.L7123:
	decl	%esi
	subq	$8, %rdi
	cmpl	$-1, %esi
	je	.L7126
	movl	5976(%rbx), %edx
.L7164:
	cmpl	%edx, %esi
	jl	.L7122
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L7122
.L7352:
	cmpl	5976(%rbx), %esi
	jl	.L7165
	leaq	.LC11(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$856, %r8d
	call	_assert
	movq	5984(%rbx), %rax
	movq	(%rax,%rdi), %rcx
.L7165:
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
.L7126:
	movl	6020(%rbx), %eax
	testl	%eax, %eax
	jns	.L7318
	leaq	6016(%rbx), %rcx
	xorl	%edx, %edx
	call	_ZN8ImVectorIP11ImGuiWindowE7reserveEi.part.51
.L7318:
	movl	6204(%rbx), %edx
	movl	$0, 6016(%rbx)
	testl	%edx, %edx
	jns	.L7128
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	incl	844(%rax)
	call	*232(%rax)
	movq	6208(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L7324
	movslq	6200(%rbx), %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	call	memcpy
	movq	6208(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L7133
	decl	844(%rax)
.L7133:
	call	*240(%rax)
	movq	%rsi, 6208(%rbx)
	movl	$0, 6204(%rbx)
.L7128:
	movq	GImGui(%rip), %r13
	movl	$0, 6200(%rbx)
	movl	6184(%r13), %edx
	movq	%r13, %rax
	testl	%edx, %edx
	je	.L7134
	cmpq	$0, 6032(%r13)
	je	.L7199
	testl	%edx, %edx
	jle	.L7134
	movq	6192(%r13), %rcx
	xorl	%edi, %edi
	xorl	%r14d, %r14d
	leaq	(%rcx,%rdi), %rbx
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L7353
	.p2align 4,,7
.L7138:
	movl	12(%rax), %eax
	testl	$33554432, %eax
	je	.L7354
.L7141:
	testl	$1048576, %eax
	movl	6184(%r13), %edx
	leal	1(%r14), %r12d
	jne	.L7143
	cmpl	%edx, %r14d
	jge	.L7139
	leal	1(%r14), %r12d
	movq	6192(%r13), %rcx
	movq	%rdi, %rsi
	movl	%r12d, %ebx
	jmp	.L7145
	.p2align 4,,7
.L7175:
	addq	$40, %rsi
	incl	%ebx
.L7145:
	movq	8(%rcx,%rsi), %rax
	leal	-1(%rbx), %r8d
	testq	%rax, %rax
	je	.L7146
	cmpl	%edx, %r8d
	jge	.L7355
.L7147:
	movq	664(%rax), %r8
	movq	6032(%r13), %rax
	cmpl	%edx, %ebx
	movq	664(%rax), %rax
	jge	.L7356
	cmpq	%rax, %r8
	jne	.L7175
.L7143:
	cmpl	%edx, %r12d
	movl	%r12d, %r14d
	jge	.L7139
	movq	6192(%r13), %rcx
.L7140:
	addq	$40, %rdi
	leaq	(%rcx,%rdi), %rbx
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.L7138
.L7353:
	incl	%r14d
	cmpl	6184(%r13), %r14d
	jl	.L7140
	.p2align 4,,7
.L7139:
	movq	GImGui(%rip), %rax
.L7134:
	leaq	.LC280(%rip), %rcx
	movl	$0x43c80000, 6224(%rax)
	movl	$0x43c80000, 6228(%rax)
	movl	$4, 6248(%rax)
	movss	.LC20(%rip), %xmm3
	movl	$0, 32(%rsp)
	movq	%rbp, %r8
	xorl	%edx, %edx
	movl	$0x00000000, 80(%rsp)
	movl	$0x00000000, 84(%rsp)
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
	.p2align 4,,7
.L7355:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	6192(%r13), %rcx
	movl	6184(%r13), %edx
	movq	8(%rcx,%rsi), %rax
	jmp	.L7147
	.p2align 4,,7
.L7146:
	cmpl	%edx, %ebx
	jl	.L7175
.L7319:
	movq	GImGui(%rip), %rax
.L7135:
	cmpl	%edx, %r14d
	jge	.L7134
	movl	6188(%r13), %ecx
	cmpl	%ecx, %r14d
	jle	.L7149
	testl	%ecx, %ecx
	movl	$8, %edx
	je	.L7150
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	addl	%ecx, %edx
.L7150:
	cmpl	%edx, %r14d
	jge	.L7202
	cmpl	%edx, %ecx
	jl	.L7357
.L7149:
	movl	%r14d, 6184(%r13)
	jmp	.L7134
	.p2align 4,,7
.L7354:
	leaq	.LC15(%rip), %rdx
	leaq	.LC278(%rip), %rcx
	movl	$3460, %r8d
	call	_assert
	movq	8(%rbx), %rax
	movl	12(%rax), %eax
	jmp	.L7141
	.p2align 4,,7
.L7356:
	cmpq	%rax, %r8
	je	.L7143
	jmp	.L7319
	.p2align 4,,7
.L7351:
	leaq	.LC11(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$856, %r8d
	call	_assert
	movq	5984(%rbx), %rax
	movq	(%rax,%rdi), %rcx
	jmp	.L7124
.L7076:
	movss	.LC37(%rip), %xmm0
	testq	%rax, %rax
	mulss	16(%rbx), %xmm0
	addss	6384(%rbx), %xmm0
	movaps	%xmm0, %xmm1
	cmpltss	%xmm7, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm7, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 6384(%rbx)
	je	.L7078
	cmpq	%rax, %rcx
	jne	.L7079
	jmp	.L7078
	.p2align 4,,7
.L7358:
	cmpq	%rcx, %rax
	.p2align 4,,5
	je	.L7078
.L7079:
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L7358
.L7078:
	testq	%rax, %rax
	jne	.L7081
	cmpb	$0, 876(%rbx)
	movq	$0, 6040(%rbx)
	movq	$0, 6048(%rbx)
	je	.L7083
.L7082:
	movl	6184(%rbx), %edi
	testl	%edi, %edi
	setne	%al
	jmp	.L7084
.L7350:
	movb	$0, 5(%rdx)
	movss	%xmm0, 20(%rax)
	movl	$0xbf800000, (%rax)
	movb	$0, (%rdx)
	jmp	.L7046
.L7109:
	movq	6040(%rbx), %rax
	testq	%rax, %rax
	je	.L7110
	movss	280(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jp	.L7216
	je	.L7110
.L7216:
	cmpb	$0, 139(%rax)
	jne	.L7110
	cmpb	$0, 285(%rbx)
	je	.L7112
	cmpb	$0, 156(%rbx)
	je	.L7110
	mulss	.LC46(%rip), %xmm0
	movss	648(%rax), %xmm2
	movss	.LC29(%rip), %xmm1
	addss	%xmm2, %xmm0
	ucomiss	%xmm0, %xmm1
	ja	.L7195
	movss	.LC262(%rip), %xmm3
	movaps	%xmm3, %xmm1
	cmpnltss	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm3, %xmm1
	orps	%xmm1, %xmm0
.L7113:
	movaps	%xmm0, %xmm5
	movss	%xmm0, 648(%rax)
	movss	268(%rbx), %xmm1
	divss	%xmm2, %xmm5
	movss	40(%rax), %xmm3
	movss	36(%rax), %xmm4
	movss	28(%rax), %xmm6
	movaps	%xmm5, %xmm2
	movss	32(%rax), %xmm5
	subss	%xmm2, %xmm7
	subss	%xmm5, %xmm1
	movaps	%xmm7, %xmm0
	mulss	%xmm4, %xmm7
	mulss	%xmm3, %xmm0
	mulss	%xmm0, %xmm1
	movss	264(%rbx), %xmm0
	subss	%xmm6, %xmm0
	divss	%xmm3, %xmm1
	mulss	%xmm7, %xmm0
	mulss	%xmm2, %xmm3
	addss	%xmm1, %xmm5
	divss	%xmm4, %xmm0
	addss	24(%rax), %xmm1
	movss	%xmm3, 40(%rax)
	movss	%xmm5, 32(%rax)
	movss	%xmm1, 24(%rax)
	mulss	%xmm2, %xmm4
	addss	%xmm0, %xmm6
	addss	20(%rax), %xmm0
	movss	%xmm4, 36(%rax)
	movss	%xmm6, 28(%rax)
	movss	%xmm0, 20(%rax)
	movss	44(%rax), %xmm0
	mulss	%xmm2, %xmm0
	mulss	48(%rax), %xmm2
	movss	%xmm0, 44(%rax)
	movss	%xmm2, 48(%rax)
	jmp	.L7110
.L7099:
	cmpl	$-1, %eax
	je	.L7101
	movslq	%eax, %rdx
	cmpb	$0, 954(%rbx,%rdx)
	jne	.L7101
	jmp	.L7345
.L7366:
	testb	$16, 14(%rax)
	je	.L7070
.L7157:
	movq	664(%rax), %rax
	movq	%rax, 6048(%rbx)
	jmp	.L7071
.L7345:
	movl	11952(%rbx), %eax
	xorl	%esi, %esi
	cmpl	$-1, %eax
	jne	.L7161
.L7104:
	movl	6068(%rbx), %edx
	movl	$1, %r8d
	testl	%edx, %edx
	jne	.L7105
	movl	6184(%rbx), %ecx
	testl	%ecx, %ecx
	setne	%r8b
.L7105:
	movl	11956(%rbx), %eax
	movb	%r8b, 836(%rbx)
	cmpl	$-1, %eax
	jne	.L7359
.L7106:
	testl	%edx, %edx
	setne	%al
	jmp	.L7107
.L6985:
	leaq	.LC15(%rip), %rdx
	leaq	.LC264(%rip), %rcx
	movl	$2134, %r8d
	call	_assert
	movq	144(%rbx), %rsi
	movl	48(%rsi), %eax
	testl	%eax, %eax
	jg	.L6988
.L7332:
	leaq	.LC15(%rip), %rdx
	leaq	.LC265(%rip), %rcx
	movl	$2135, %r8d
	call	_assert
	movq	144(%rbx), %rsi
	movl	48(%rsi), %eax
	testl	%eax, %eax
	jg	.L6988
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L6988
.L6991:
	movq	GImGui(%rip), %rax
	movl	$16, %ecx
	incl	844(%rax)
	call	*232(%rax)
.LEHE17:
	movq	%rax, 11448(%rbx)
	movq	%rax, %rsi
	movl	$0, 4(%rax)
	movl	$0, (%rax)
	movl	$8, %ecx
	movq	$0, 8(%rax)
	movq	GImGui(%rip), %rax
	incl	844(%rax)
.LEHB18:
	call	*232(%rax)
	movq	8(%rsi), %rdx
	movq	%rax, %rdi
	testq	%rdx, %rdx
	je	.L6993
	movslq	(%rsi), %r8
	movq	%rax, %rcx
	call	memcpy
	movq	8(%rsi), %rdx
	movq	GImGui(%rip), %rax
	testq	%rdx, %rdx
	je	.L6995
	decl	844(%rax)
.L6995:
	movq	%rdx, %rcx
	call	*240(%rax)
.LEHE18:
	movslq	(%rsi), %rax
	movl	$8, 4(%rsi)
	movq	%rdi, 8(%rsi)
	leal	1(%rax), %edx
	movl	%edx, (%rsi)
	movb	$0, (%rdi,%rax)
	movl	6112(%rbx), %eax
	testl	%eax, %eax
	jne	.L7360
.L6996:
	movq	24(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	movq	%rax, 48(%rsp)
	je	.L7177
	leaq	68(%rsp), %r8
	leaq	.LC269(%rip), %rdx
	movl	$1, %r9d
	leaq	80(%rsp), %rbp
.LEHB19:
	call	_Z18ImFileLoadToMemoryPKcS0_Pii
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	movq	GImGui(%rip), %rdi
	je	.L7003
	movslq	68(%rsp), %r10
	leaq	(%rax,%r10), %rdi
	cmpq	%rdi, %rax
	jnb	.L7361
	leaq	80(%rsp), %rbp
	leaq	76(%rsp), %r14
	leaq	72(%rsp), %r13
	movq	%rax, %r15
	xorl	%r12d, %r12d
	.p2align 4,,7
.L7019:
	cmpq	%r15, %rdi
	jbe	.L7178
	movzbl	(%r15), %edx
	movq	%r15, %rsi
	cmpb	$13, %dl
	je	.L7004
	cmpb	$10, %dl
	jne	.L7007
	jmp	.L7004
	.p2align 4,,7
.L7008:
	movzbl	(%rsi), %eax
	cmpb	$13, %al
	.p2align 4,,3
	je	.L7006
	cmpb	$10, %al
	.p2align 4,,4
	je	.L7006
.L7007:
	incq	%rsi
	cmpq	%rsi, %rdi
	jne	.L7008
	movq	%rdi, %rsi
.L7006:
	cmpb	$91, %dl
	jne	.L7004
	cmpq	%rsi, %r15
	jnb	.L7004
	cmpb	$93, -1(%rsi)
	je	.L7362
	.p2align 4,,7
.L7004:
	testq	%r12, %r12
	je	.L7010
	leaq	.LC271(%rip), %rdx
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%r15, %rcx
	call	sscanf
	cmpl	$2, %eax
	jne	.L7011
	movss	72(%rsp), %xmm0
	movss	%xmm0, 12(%r12)
	movss	76(%rsp), %xmm0
	movss	%xmm0, 16(%r12)
.L7010:
	leaq	1(%rsi), %r15
	cmpq	%r15, %rdi
	ja	.L7019
	movq	56(%rsp), %rcx
.L7018:
	movq	GImGui(%rip), %rax
	decl	844(%rax)
	call	*240(%rax)
	movq	GImGui(%rip), %rdi
.L7003:
	movq	160(%rdi), %rsi
	movb	$1, (%rbx)
	testq	%rsi, %rsi
	jne	.L7020
.L7335:
	movq	144(%rdi), %rsi
	movl	48(%rsi), %r13d
	testl	%r13d, %r13d
	jle	.L7363
.L7021:
	movq	56(%rsi), %rax
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	jne	.L7020
.L7022:
	leaq	.LC15(%rip), %rdx
	leaq	.LC110(%rip), %rcx
	movl	$4646, %r8d
	call	_assert
	movss	4(%rsi), %xmm0
	ucomiss	%xmm6, %xmm0
	ja	.L7024
.L7336:
	leaq	.LC15(%rip), %rdx
	leaq	.LC111(%rip), %rcx
	movl	$4647, %r8d
	call	_assert
	movss	4(%rsi), %xmm0
	jmp	.L7024
.L7338:
	movss	268(%rbx), %xmm1
	ucomiss	%xmm1, %xmm6
	ja	.L7364
.L7029:
	ucomiss	%xmm1, %xmm6
	jbe	.L7032
.L7038:
	movaps	%xmm6, %xmm1
	movaps	%xmm6, %xmm0
	jmp	.L7035
.L7339:
	ucomiss	%xmm3, %xmm6
	jbe	.L7037
	.p2align 4,,2
	jmp	.L7038
.L7342:
	movq	GImGui(%rip), %rax
	cmpl	6068(%rax), %edx
	je	.L7365
.L7053:
	movq	6096(%rbx), %rax
	testq	%rax, %rax
	je	.L7054
	cmpq	$0, 664(%rax)
	je	.L7054
.L7055:
	movq	664(%rax), %rax
	cmpl	%edx, 92(%rax)
	je	.L7056
	leaq	.LC15(%rip), %rdx
	leaq	.LC277(%rip), %rcx
	movl	$2225, %r8d
	call	_assert
.L7056:
	cmpb	$0, 272(%rbx)
	je	.L7057
	movq	6096(%rbx), %rcx
	movl	12(%rcx), %eax
	testb	$4, %al
	jne	.L7059
	movss	20(%rcx), %xmm0
	testb	$1, %ah
	addss	860(%rbx), %xmm0
	movss	%xmm0, 20(%rcx)
	movss	24(%rcx), %xmm0
	addss	864(%rbx), %xmm0
	movss	%xmm0, 24(%rcx)
	jne	.L7059
	ucomiss	860(%rbx), %xmm6
	jp	.L7061
	jne	.L7061
	ucomiss	864(%rbx), %xmm6
	jp	.L7061
	.p2align 4,,4
	je	.L7059
.L7061:
	movq	GImGui(%rip), %rax
	ucomiss	6128(%rax), %xmm6
	jb	.L7059
	movss	20(%rax), %xmm0
	movss	%xmm0, 6128(%rax)
.L7059:
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movss	6128(%rbx), %xmm0
	ucomiss	%xmm6, %xmm0
	jbe	.L7065
	jmp	.L7064
	.p2align 4,,7
.L7324:
	movq	GImGui(%rip), %rax
	jmp	.L7133
.L7186:
	movl	$2, %eax
	jmp	.L7092
.L7188:
	movl	$3, %eax
	jmp	.L7096
.L7347:
	movl	52(%r10), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L7163
	movq	6032(%rbx), %rax
	movl	$0, 708(%rax)
	jmp	.L7163
.L7112:
	movl	12(%rax), %ecx
	testb	$16, %cl
	jne	.L7110
	andl	$8388608, %ecx
	movss	.LC66(%rip), %xmm2
	je	.L7115
	movss	.LC35(%rip), %xmm2
.L7115:
	movss	648(%rax), %xmm3
	mulss	5948(%r10), %xmm3
	movss	100(%rax), %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	movaps	%xmm1, %xmm2
	addss	220(%rax), %xmm1
	subss	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movss	%xmm2, 100(%rax)
	subss	%xmm2, %xmm0
	movss	%xmm0, 220(%rax)
	jmp	.L7110
.L7094:
	movl	6184(%rbx), %r9d
	testl	%r9d, %r9d
	setne	%dl
	jmp	.L7095
.L7090:
	movl	6184(%rbx), %r11d
	testl	%r11d, %r11d
	setne	%dl
	jmp	.L7091
.L7344:
	movl	6184(%rbx), %r8d
	testl	%r8d, %r8d
	setne	%dl
	jmp	.L7098
.L7086:
	movl	6184(%rbx), %esi
	testl	%esi, %esi
	setne	%dl
	jmp	.L7087
.L7346:
	cmpq	$0, 6040(%rbx)
	setne	%al
	orl	%eax, %ecx
	orl	%ecx, %r11d
	orl	%r11d, %r9d
	orb	%r9b, %r8b
	je	.L7104
	movl	6068(%rbx), %edx
	jmp	.L7105
.L7331:
	leaq	.LC15(%rip), %rdx
	leaq	.LC263(%rip), %rcx
	movl	$2133, %r8d
	call	_assert
	jmp	.L6984
.L7334:
	leaq	.LC15(%rip), %rdx
	leaq	.LC267(%rip), %rcx
	movl	$2137, %r8d
	call	_assert
	jmp	.L6990
.L7343:
	movq	24(%rbx), %rcx
	call	_ZL21SaveIniSettingsToDiskPKc
	.p2align 4,,4
	jmp	.L7065
.L7182:
	movaps	%xmm6, %xmm0
	jmp	.L7025
.L7199:
	movq	%r13, %rax
	xorl	%r14d, %r14d
	.p2align 4,,2
	jmp	.L7135
.L7197:
	xorl	%edx, %edx
	jmp	.L7118
.L7202:
	movl	%r14d, %ebx
.L7151:
	movslq	%ebx, %rdx
	incl	844(%rax)
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	(%rcx,%rdx,8), %rcx
	call	*232(%rax)
	movq	6192(%r13), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	je	.L7152
	movslq	6184(%r13), %rax
	movq	%rax, %rcx
	salq	$5, %rcx
	leaq	(%rcx,%rax,8), %r8
	movq	%rsi, %rcx
	call	memcpy
	movq	6192(%r13), %rdx
	movq	GImGui(%rip), %rax
	testq	%rdx, %rdx
	je	.L7154
	decl	844(%rax)
.L7154:
	movq	%rdx, %rcx
	call	*240(%rax)
	movq	%rsi, 6192(%r13)
	movl	%ebx, 6188(%r13)
	movq	GImGui(%rip), %rax
	jmp	.L7149
.L7333:
	leaq	.LC15(%rip), %rdx
	leaq	.LC266(%rip), %rcx
	movl	$2136, %r8d
	call	_assert
	jmp	.L6989
.L7337:
	leaq	.LC15(%rip), %rdx
	leaq	.LC274(%rip), %rcx
	movl	$2151, %r8d
	call	_assert
	jmp	.L7026
.L7057:
	movq	GImGui(%rip), %rax
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	movq	$0, 6096(%rbx)
	movl	$0, 6104(%rbx)
	jmp	.L7066
.L7364:
	movss	.LC261(%rip), %xmm0
	movss	%xmm0, 264(%rbx)
	movss	%xmm0, 268(%rbx)
.L7031:
	movss	268(%rbx), %xmm1
	jmp	.L7029
.L7174:
	movq	264(%rbx), %rcx
	xorl	%edx, %edx
	call	_ZL17FindHoveredWindow6ImVec2b
	testq	%rax, %rax
	movq	%rax, 6040(%rbx)
	jne	.L7366
.L7070:
	movq	6096(%rbx), %rax
	testq	%rax, %rax
	jne	.L7158
	movq	264(%rbx), %rcx
	movl	$1, %edx
	call	_ZL17FindHoveredWindow6ImVec2b
	jmp	.L7073
.L7363:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	GImGui(%rip), %rdi
	jmp	.L7021
.L7195:
	movaps	%xmm1, %xmm0
	jmp	.L7113
.L7152:
	movq	GImGui(%rip), %rax
	jmp	.L7154
	.p2align 4,,7
.L7011:
	leaq	.LC272(%rip), %rdx
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%r15, %rcx
	call	sscanf
	cmpl	$2, %eax
	jne	.L7013
	movq	48(%rsp), %rax
	movss	76(%rsp), %xmm2
	movss	72(%rsp), %xmm3
	movss	5136(%rax), %xmm0
	movaps	%xmm0, %xmm1
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	5132(%rax), %xmm1
	movaps	%xmm1, %xmm2
	movss	%xmm0, 24(%r12)
	cmpnless	%xmm3, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm3, %xmm2
	orps	%xmm2, %xmm1
	movss	%xmm1, 20(%r12)
	jmp	.L7010
.L7013:
	leaq	.LC273(%rip), %rdx
	movq	%rbp, %r8
	movq	%r15, %rcx
	call	sscanf
	decl	%eax
	jne	.L7010
	movl	80(%rsp), %r15d
	testl	%r15d, %r15d
	setne	28(%r12)
	jmp	.L7010
.L7177:
	movq	%rax, %rdi
	leaq	80(%rsp), %rbp
	jmp	.L7003
.L7360:
	leaq	.LC15(%rip), %rdx
	leaq	.LC268(%rip), %rcx
	movl	$2145, %r8d
	call	_assert
	jmp	.L6996
.L7178:
	movq	%r15, %rsi
	jmp	.L7004
.L7365:
	movb	$1, 6076(%rax)
	jmp	.L7053
.L7362:
	movq	%rsi, %rax
	leaq	1(%r15), %r11
	leaq	.LC270(%rip), %r8
	subq	%r15, %rax
	movl	$64, %edx
	movq	%rbp, %rcx
	leal	-2(%rax), %r9d
	movq	%r11, 32(%rsp)
	call	_Z14ImFormatStringPciPKcz.constprop.166
	movq	%rbp, %rcx
	call	_ZL18FindWindowSettingsPKc
	testq	%rax, %rax
	movq	%rax, %r12
	jne	.L7010
	movq	%rbp, %rcx
	call	_ZL17AddWindowSettingsPKc
	movq	%rax, %r12
	jmp	.L7010
	.p2align 4,,7
.L7054:
	leaq	.LC15(%rip), %rdx
	leaq	.LC276(%rip), %rcx
	movl	$2224, %r8d
	call	_assert
.LEHE19:
	movq	6096(%rbx), %rax
	movl	6104(%rbx), %edx
	jmp	.L7055
.L7361:
	leaq	80(%rsp), %rbp
	movq	%rax, %rcx
	jmp	.L7018
.L6993:
	movq	GImGui(%rip), %rax
	jmp	.L6995
.L7341:
	movaps	%xmm3, %xmm0
	jmp	.L7042
.L7207:
	movq	8(%rsi), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L6999
	movq	GImGui(%rip), %rdx
	decl	844(%rdx)
	call	*240(%rdx)
.L6999:
	movq	%rbx, %rcx
.LEHB20:
	call	_Unwind_Resume
.LEHE20:
.L7357:
	movl	%edx, %ebx
	jmp	.L7151
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA399:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE399-.LLSDACSB399
.LLSDACSB399:
	.uleb128 .LEHB17-.LFB399
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB399
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L7207-.LFB399
	.uleb128 0
	.uleb128 .LEHB19-.LFB399
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB399
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE399:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC281:
	.ascii "##Tooltip\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12BeginTooltipEv
	.def	_ZN5ImGui12BeginTooltipEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12BeginTooltipEv
_ZN5ImGui12BeginTooltipEv:
.LFB467:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorps	%xmm0, %xmm0
	leaq	.LC281(%rip), %rcx
	leaq	48(%rsp), %r8
	movl	$16777543, 32(%rsp)
	xorl	%edx, %edx
	movss	.LC20(%rip), %xmm3
	movss	%xmm0, 48(%rsp)
	movss	%xmm0, 52(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	nop
	addq	$72, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC283:
	.ascii "g.CurrentWindowStack.Size == 1\0"
	.align 8
.LC284:
	.ascii "g.Windows.Size == g.WindowsSortBuffer.Size\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8EndFrameEv
	.def	_ZN5ImGui8EndFrameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8EndFrameEv
_ZN5ImGui8EndFrameEv:
.LFB415:
	pushq	%r12
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
	movq	GImGui(%rip), %rbx
	cmpb	$0, (%rbx)
	je	.L7419
	movl	5964(%rbx), %eax
	cmpl	%eax, 5968(%rbx)
	je	.L7420
.L7370:
	cmpb	$0, 10384(%rbx)
	jne	.L7421
.L7371:
	movq	248(%rbx), %rax
	testq	%rax, %rax
	je	.L7373
	movss	11420(%rbx), %xmm3
	movss	11416(%rbx), %xmm2
	movaps	%xmm3, %xmm0
	movaps	%xmm2, %xmm1
	subss	11428(%rbx), %xmm0
	subss	11424(%rbx), %xmm1
	mulss	%xmm0, %xmm0
	mulss	%xmm1, %xmm1
	addss	%xmm1, %xmm0
	ucomiss	.LC282(%rip), %xmm0
	ja	.L7374
.L7373:
	cmpl	$1, 6016(%rbx)
	je	.L7375
	leaq	.LC15(%rip), %rdx
	leaq	.LC283(%rip), %rcx
	movl	$2666, %r8d
	call	_assert
.L7375:
	movq	6008(%rbx), %rax
	testq	%rax, %rax
	je	.L7376
	cmpb	$0, 138(%rax)
	je	.L7422
.L7376:
	call	_ZN5ImGui3EndEv
	movl	6068(%rbx), %edx
	testl	%edx, %edx
	jne	.L7381
	movl	6056(%rbx), %eax
	testl	%eax, %eax
	je	.L7423
.L7381:
	movl	5996(%rbx), %eax
	leaq	5992(%rbx), %r12
	testl	%eax, %eax
	js	.L7396
.L7385:
	movl	5976(%rbx), %edi
	movl	$0, 5992(%rbx)
	cmpl	%eax, %edi
	jg	.L7424
.L7386:
	testl	%edi, %edi
	je	.L7400
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	jmp	.L7394
	.p2align 4,,7
.L7391:
	movq	5984(%rbx), %rax
	movq	(%rax,%rbp), %rdx
	cmpb	$0, 136(%rdx)
	je	.L7392
	testb	$16, 14(%rdx)
	jne	.L7393
.L7392:
	movq	%r12, %rcx
	call	_ZL23AddWindowToSortedBufferR8ImVectorIP11ImGuiWindowES1_
.L7393:
	movl	5976(%rbx), %edi
	incl	%esi
	addq	$8, %rbp
	cmpl	%esi, %edi
	je	.L7390
.L7394:
	cmpl	%esi, %edi
	jg	.L7391
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L7391
.L7400:
	xorl	%esi, %esi
	.p2align 4,,7
.L7390:
	movl	5992(%rbx), %eax
	cmpl	%eax, %edi
	je	.L7395
	leaq	.LC15(%rip), %rdx
	leaq	.LC284(%rip), %rcx
	movl	$2705, %r8d
	call	_assert
	movl	5992(%rbx), %eax
	movl	5976(%rbx), %esi
.L7395:
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
	movl	5964(%rbx), %eax
	movq	%rdx, 6000(%rbx)
	movq	$0, 826(%rbx)
	movw	$0, 834(%rbx)
	movl	%eax, 5968(%rbx)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L7378:
	cmpq	$0, 6048(%rbx)
	jne	.L7397
	movl	5996(%rbx), %eax
	leaq	5992(%rbx), %r12
	testl	%eax, %eax
	jns	.L7385
	.p2align 4,,7
.L7396:
	xorl	%edx, %edx
	movq	%r12, %rcx
	call	_ZN8ImVectorIP11ImGuiWindowE7reserveEi.part.51
	movl	5996(%rbx), %eax
	jmp	.L7385
	.p2align 4,,7
.L7422:
	movb	$0, 136(%rax)
	jmp	.L7376
	.p2align 4,,7
.L7374:
	cvttss2si	%xmm3, %edx
	cvttss2si	%xmm2, %ecx
	call	*%rax
	movq	11416(%rbx), %rax
	movq	%rax, 11424(%rbx)
	jmp	.L7373
	.p2align 4,,7
.L7423:
	cmpb	$0, 876(%rbx)
	je	.L7381
	movq	6032(%rbx), %rax
	testq	%rax, %rax
	je	.L7378
	cmpb	$0, 137(%rax)
	jne	.L7379
	cmpb	$0, 136(%rax)
	jne	.L7381
.L7379:
	cmpq	$0, 6048(%rbx)
	je	.L7425
.L7397:
	movq	6040(%rbx), %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movq	6040(%rbx), %rax
	testb	$4, 12(%rax)
	jne	.L7381
	movq	6048(%rbx), %rcx
	movq	%rax, 6096(%rbx)
	movq	GImGui(%rip), %rax
	movl	92(%rcx), %edx
	testl	%edx, %edx
	movl	%edx, 6104(%rbx)
	movl	%edx, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	je	.L7380
	movb	$1, 6076(%rax)
.L7380:
	movq	%rcx, 6088(%rax)
	jmp	.L7381
	.p2align 4,,7
.L7424:
	movq	GImGui(%rip), %rax
	movslq	%edi, %rcx
	salq	$3, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	6000(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L7387
	movslq	5992(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	6000(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L7389
	decl	844(%rax)
.L7389:
	call	*240(%rax)
	movl	%edi, 5996(%rbx)
	movq	%rsi, 6000(%rbx)
	movl	5976(%rbx), %edi
	jmp	.L7386
	.p2align 4,,7
.L7421:
	leaq	48(%rsp), %r8
	leaq	.LC281(%rip), %rcx
	xorl	%edx, %edx
	movss	.LC20(%rip), %xmm3
	movl	$16777543, 32(%rsp)
	movl	$0x00000000, 48(%rsp)
	movl	$0x00000000, 52(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	leaq	10384(%rbx), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	testb	$1, 15(%rax)
	je	.L7426
	call	_ZN5ImGui3EndEv
	jmp	.L7371
	.p2align 4,,7
.L7419:
	leaq	.LC15(%rip), %rdx
	leaq	.LC247(%rip), %rcx
	movl	$2647, %r8d
	call	_assert
	movl	5964(%rbx), %eax
	cmpl	%eax, 5968(%rbx)
	jne	.L7370
.L7420:
	leaq	.LC15(%rip), %rdx
	leaq	.LC248(%rip), %rcx
	movl	$2648, %r8d
	call	_assert
	jmp	.L7370
	.p2align 4,,7
.L7426:
	leaq	.LC15(%rip), %rdx
	leaq	.LC241(%rip), %rcx
	movl	$3409, %r8d
	call	_assert
	call	_ZN5ImGui3EndEv
	jmp	.L7371
.L7387:
	movq	GImGui(%rip), %rax
	jmp	.L7389
.L7425:
	movq	GImGui(%rip), %r9
	movl	6184(%r9), %edx
	decl	%edx
	js	.L7382
	movslq	%edx, %r8
	movl	%edx, %edx
	movq	6192(%r9), %rcx
	movq	%r8, %rax
	salq	$5, %rax
	leaq	-672(%rax,%r8,8), %rax
	subq	%rdx, %r8
	movq	%r8, %rdx
	salq	$5, %rdx
	addq	%rcx, %rax
	leaq	-712(%rdx,%r8,8), %rdx
	addq	%rdx, %rcx
	.p2align 4,,7
.L7384:
	movq	680(%rax), %rdx
	prefetcht0	(%rax)
	testq	%rdx, %rdx
	je	.L7383
	testb	$4, 15(%rdx)
	jne	.L7381
.L7383:
	subq	$40, %rax
	cmpq	%rax, %rcx
	jne	.L7384
.L7382:
	movq	$0, 6032(%r9)
	jmp	.L7381
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui6RenderEv
	.def	_ZN5ImGui6RenderEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui6RenderEv
_ZN5ImGui6RenderEv:
.LFB416:
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
	je	.L7479
.L7428:
	movl	5964(%rbx), %eax
	cmpl	%eax, 5968(%rbx)
	je	.L7429
	call	_ZN5ImGui8EndFrameEv
	movl	5964(%rbx), %eax
.L7429:
	xorps	%xmm6, %xmm6
	movss	5120(%rbx), %xmm0
	movl	%eax, 5972(%rbx)
	ucomiss	%xmm6, %xmm0
	jbe	.L7427
	leaq	6344(%rbx), %rsi
	leaq	6392(%rbx), %rbp
	movl	$0, 856(%rbx)
	movl	$0, 852(%rbx)
	movl	$0, 848(%rbx)
.L7436:
	movl	-4(%rsi), %r8d
	testl	%r8d, %r8d
	jns	.L7432
	movq	GImGui(%rip), %rax
	xorl	%ecx, %ecx
	incl	844(%rax)
	call	*232(%rax)
	movq	(%rsi), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.L7433
	movslq	-8(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	(%rsi), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L7435
	decl	844(%rax)
.L7435:
	call	*240(%rax)
	movq	%rdi, (%rsi)
	movl	$0, -4(%rsi)
	.p2align 4,,7
.L7432:
	movl	$0, -8(%rsi)
	addq	$16, %rsi
	cmpq	%rbp, %rsi
	jne	.L7436
	movl	5976(%rbx), %eax
	leaq	6336(%rbx), %r13
	leaq	6352(%rbx), %r12
	testl	%eax, %eax
	je	.L7438
	xorl	%edi, %edi
	xorl	%esi, %esi
	leaq	6368(%rbx), %r14
	jmp	.L7443
	.p2align 4,,7
.L7439:
	movq	5984(%rbx), %rax
	movq	(%rax,%rdi), %rdx
	cmpb	$0, 136(%rdx)
	je	.L7440
	movl	168(%rdx), %ecx
	testl	%ecx, %ecx
	jle	.L7480
.L7440:
	movl	5976(%rbx), %eax
	incl	%esi
	addq	$8, %rdi
	cmpl	%esi, %eax
	je	.L7438
.L7443:
	cmpl	%eax, %esi
	jl	.L7439
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L7439
	.p2align 4,,7
.L7480:
	movl	12(%rdx), %eax
	testl	$1048576, %eax
	jne	.L7440
	incl	856(%rbx)
	testl	$33554432, %eax
	jne	.L7481
	testl	$16777216, %eax
	je	.L7442
	movq	%r14, %rcx
	incl	%esi
	addq	$8, %rdi
	call	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow
	movl	5976(%rbx), %eax
	cmpl	%esi, %eax
	jne	.L7443
	.p2align 4,,7
.L7438:
	movl	6336(%rbx), %esi
	movl	6352(%rbx), %edi
	movl	6340(%rbx), %eax
	addl	%esi, %edi
	addl	6368(%rbx), %edi
	cmpl	%edi, %eax
	jge	.L7444
	testl	%eax, %eax
	movl	$8, %edx
	je	.L7445
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
.L7445:
	cmpl	%edi, %edx
	jle	.L7464
	cmpl	%edx, %eax
	jl	.L7482
.L7444:
	movl	%edi, 6336(%rbx)
	movl	(%r12), %eax
	testl	%eax, %eax
	je	.L7450
.L7489:
	movslq	6352(%rbx), %rdi
	salq	$3, %rdi
	testl	%eax, %eax
	jle	.L7451
.L7454:
	cmpl	6336(%rbx), %esi
	movq	8(%r12), %r12
	jge	.L7452
.L7453:
	movq	6344(%rbx), %rax
	movslq	%esi, %rdx
	movq	%rdi, %r8
	leaq	(%rax,%rdx,8), %rcx
	movq	%r12, %rdx
	call	memcpy
	addl	6352(%rbx), %esi
.L7450:
	movl	6368(%rbx), %eax
	testl	%eax, %eax
	jne	.L7483
	cmpb	$0, 284(%rbx)
	jne	.L7484
.L7458:
	movl	6424(%rbx), %eax
	testl	%eax, %eax
	jne	.L7485
.L7459:
	movl	6336(%rbx), %eax
	movb	$1, 6304(%rbx)
	testl	%eax, %eax
	jle	.L7486
	movl	%eax, 6320(%rbx)
	movl	848(%rbx), %eax
	movq	6344(%rbx), %rdx
	movl	%eax, 6324(%rbx)
	movl	852(%rbx), %eax
	movq	%rdx, 6312(%rbx)
	movl	%eax, 6328(%rbx)
	movq	200(%rbx), %rax
	testq	%rax, %rax
	je	.L7427
	leaq	6304(%rbx), %rcx
	call	*%rax
	nop
.L7427:
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
	.p2align 4,,7
.L7483:
	movslq	%eax, %rdi
	salq	$3, %rdi
	testl	%eax, %eax
	jle	.L7487
.L7456:
	cmpl	%esi, 6336(%rbx)
	movq	6376(%rbx), %r12
	jle	.L7488
.L7457:
	movq	6344(%rbx), %rax
	movslq	%esi, %rsi
	movq	%rdi, %r8
	movq	%r12, %rdx
	leaq	(%rax,%rsi,8), %rcx
	call	memcpy
	cmpb	$0, 284(%rbx)
	je	.L7458
.L7484:
	movslq	6544(%rbx), %rsi
	movl	$52, %edx
	movq	%rbp, %rcx
	movss	268(%rbx), %xmm0
	leaq	96(%rsp), %rdi
	movss	264(%rbx), %xmm1
	leaq	80(%rsp), %r15
	imulq	%rdx, %rsi
	leaq	104(%rsp), %rdx
	leaq	(%rbx,%rsi), %rax
	leaq	6592(%rbx,%rsi), %r14
	leaq	6576(%rbx,%rsi), %r12
	subss	6556(%rax), %xmm0
	subss	6552(%rax), %xmm1
	leaq	6544(%rbx,%rsi), %rax
	movss	16(%rax), %xmm8
	movss	20(%rax), %xmm7
	movq	144(%rbx), %rax
	movss	%xmm0, 68(%rsp)
	movq	(%rax), %rax
	movss	%xmm1, 64(%rsp)
	movq	%rax, 104(%rsp)
	call	_ZN10ImDrawList13PushTextureIDERKPv
	movss	.LC28(%rip), %xmm0
	movq	104(%rsp), %rdx
	addss	64(%rsp), %xmm0
	movss	68(%rsp), %xmm1
	addss	%xmm6, %xmm1
	movq	%r15, %r8
	movq	%rdi, %r9
	movq	%rbp, %rcx
	movl	$805306368, 48(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r12, 32(%rsp)
	movss	%xmm1, 84(%rsp)
	movaps	%xmm0, %xmm2
	movss	%xmm0, 80(%rsp)
	addss	%xmm8, %xmm2
	movss	%xmm2, 96(%rsp)
	movaps	%xmm1, %xmm2
	addss	%xmm7, %xmm2
	movss	%xmm2, 100(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	movss	.LC158(%rip), %xmm0
	movq	%r15, %r8
	addss	64(%rsp), %xmm0
	movq	104(%rsp), %rdx
	movq	%rdi, %r9
	addss	68(%rsp), %xmm6
	movq	%rbp, %rcx
	movl	$805306368, 48(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r12, 32(%rsp)
	leaq	64(%rsp), %r15
	movaps	%xmm0, %xmm1
	movss	%xmm0, 80(%rsp)
	movss	%xmm6, 84(%rsp)
	addss	%xmm8, %xmm1
	movss	%xmm1, 96(%rsp)
	movaps	%xmm6, %xmm1
	addss	%xmm7, %xmm1
	movss	%xmm1, 100(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	movss	68(%rsp), %xmm0
	movq	%rdi, %r9
	movss	64(%rsp), %xmm1
	addss	%xmm7, %xmm0
	addss	%xmm8, %xmm1
	movq	104(%rsp), %rdx
	movq	%r15, %r8
	movq	%rbp, %rcx
	movl	$-16777216, 48(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r12, 32(%rsp)
	movss	%xmm0, 100(%rsp)
	movss	%xmm1, 96(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	addss	68(%rsp), %xmm7
	leaq	6584(%rbx,%rsi), %rax
	movq	%rdi, %r9
	addss	64(%rsp), %xmm8
	movq	104(%rsp), %rdx
	movq	%r15, %r8
	movq	%rax, 40(%rsp)
	leaq	6568(%rbx,%rsi), %rax
	movq	%rbp, %rcx
	movl	$-1, 48(%rsp)
	movq	%rax, 32(%rsp)
	movss	%xmm7, 100(%rsp)
	movss	%xmm8, 96(%rsp)
	call	_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j
	movq	%rbp, %rcx
	call	_ZN10ImDrawList12PopTextureIDEv
	movl	6424(%rbx), %eax
	testl	%eax, %eax
	je	.L7459
.L7485:
	movq	%rbp, %rdx
	movq	%r13, %rcx
	call	_ZL23AddDrawListToRenderListR8ImVectorIP10ImDrawListES1_
	jmp	.L7459
	.p2align 4,,7
.L7433:
	movq	GImGui(%rip), %rax
	call	*240(%rax)
	movq	%rdi, (%rsi)
	movl	$0, -4(%rsi)
	jmp	.L7432
	.p2align 4,,7
.L7486:
	movl	%eax, 6320(%rbx)
	movl	848(%rbx), %eax
	movq	$0, 6312(%rbx)
	movl	%eax, 6324(%rbx)
	movl	852(%rbx), %eax
	movl	%eax, 6328(%rbx)
	jmp	.L7427
	.p2align 4,,7
.L7479:
	leaq	.LC15(%rip), %rdx
	leaq	.LC247(%rip), %rcx
	movl	$2718, %r8d
	call	_assert
	jmp	.L7428
	.p2align 4,,7
.L7464:
	movl	%edi, %r14d
.L7446:
	movq	GImGui(%rip), %rax
	movslq	%r14d, %rcx
	salq	$3, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	6344(%rbx), %rcx
	movq	%rax, %r15
	testq	%rcx, %rcx
	je	.L7447
	movslq	6336(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	6344(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L7449
	decl	844(%rax)
.L7449:
	call	*240(%rax)
	movl	%r14d, 6340(%rbx)
	movl	%edi, 6336(%rbx)
	movl	(%r12), %eax
	movq	%r15, 6344(%rbx)
	testl	%eax, %eax
	je	.L7450
	jmp	.L7489
	.p2align 4,,7
.L7442:
	movq	%r13, %rcx
	call	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow
	.p2align 4,,5
	jmp	.L7440
	.p2align 4,,7
.L7481:
	movq	%r12, %rcx
	call	_ZL21AddWindowToRenderListR8ImVectorIP10ImDrawListEP11ImGuiWindow
	.p2align 4,,5
	jmp	.L7440
.L7447:
	movq	GImGui(%rip), %rax
	jmp	.L7449
	.p2align 4,,7
.L7452:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L7453
	.p2align 4,,7
.L7488:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L7457
.L7487:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L7456
.L7451:
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L7454
.L7482:
	movl	%edx, %r14d
	jmp	.L7446
	.seh_endproc
	.section .rdata,"dr"
.LC285:
	.ascii "##menu_%d\0"
.LC286:
	.ascii "##popup_%08x\0"
	.text
	.p2align 4,,15
	.def	_ZL12BeginPopupExPKci;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL12BeginPopupExPKci
_ZL12BeginPopupExPKci:
.LFB478:
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
	movq	GImGui(%rip), %rsi
	movl	%edx, %edi
	movq	%rcx, %rdx
	movq	6008(%rsi), %rbx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	GImGui(%rip), %rdx
	movslq	6200(%rdx), %rcx
	cmpl	%ecx, 6184(%rdx)
	jle	.L7491
	movq	%rcx, %r8
	salq	$5, %r8
	leaq	(%r8,%rcx,8), %rcx
	addq	6192(%rdx), %rcx
	cmpl	(%rcx), %eax
	je	.L7503
.L7491:
	movl	$0, 6256(%rdx)
	movl	$0, 6252(%rdx)
	xorl	%eax, %eax
	movl	$0, 6248(%rdx)
	movl	$0, 6244(%rdx)
	movb	$0, 6297(%rdx)
	movb	$0, 6296(%rdx)
.L7498:
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L7503:
	xorps	%xmm1, %xmm1
	movl	%edi, %ebp
	movl	$2, %ecx
	movl	%eax, 60(%rsp)
	orl	$33554759, %ebp
	call	_ZN5ImGui12PushStyleVarEif
	andl	$134217728, %edi
	jne	.L7496
	movl	60(%rsp), %eax
	leaq	80(%rsp), %rdi
	leaq	.LC286(%rip), %r8
	movl	$20, %edx
	movq	%rdi, %rcx
	movl	%eax, %r9d
	call	_Z14ImFormatStringPciPKcz
.L7493:
	leaq	64(%rsp), %r8
	xorl	%edx, %edx
	movl	%ebp, 32(%rsp)
	movss	.LC20(%rip), %xmm3
	movq	%rdi, %rcx
	movl	$0x00000000, 64(%rsp)
	movl	$0x00000000, 68(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	testb	$-128, 12(%rbx)
	jne	.L7494
	movq	6008(%rsi), %rdx
	andl	$-129, 12(%rdx)
.L7494:
	testb	%al, %al
	jne	.L7498
	movb	%al, 60(%rsp)
	call	_ZN5ImGui8EndPopupEv
	movzbl	60(%rsp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L7496:
	leaq	80(%rsp), %rdi
	movl	6200(%rsi), %r9d
	leaq	.LC285(%rip), %r8
	movl	$20, %edx
	movq	%rdi, %rcx
	call	_Z14ImFormatStringPciPKcz
	jmp	.L7493
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10BeginPopupEPKc
	.def	_ZN5ImGui10BeginPopupEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10BeginPopupEPKc
_ZN5ImGui10BeginPopupEPKc:
.LFB479:
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movl	6200(%rax), %edx
	cmpl	%edx, 6184(%rax)
	jg	.L7509
	movl	$0, 6256(%rax)
	movl	$0, 6252(%rax)
	movl	$0, 6248(%rax)
	movl	$0, 6244(%rax)
	movb	$0, 6297(%rax)
	movb	$0, 6296(%rax)
	xorl	%eax, %eax
	ret
	.p2align 4,,7
.L7509:
	movl	$128, %edx
	jmp	_ZL12BeginPopupExPKci
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9BeginMenuEPKcb
	.def	_ZN5ImGui9BeginMenuEPKcb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9BeginMenuEPKcb
_ZN5ImGui9BeginMenuEPKcb:
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
	movq	%rcx, %rsi
	movl	%edx, %ebp
	movq	GImGui(%rip), %r13
	movq	6008(%r13), %rbx
	movzbl	140(%rbx), %r15d
	movb	$1, 138(%rbx)
	testb	%r15b, %r15b
	je	.L7511
.L7550:
	xorl	%r15d, %r15d
.L7607:
	movaps	128(%rsp), %xmm6
	movl	%r15d, %eax
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
	.p2align 4,,7
.L7511:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rsi, %rcx
	movl	%eax, %edi
	movl	%eax, 56(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movl	%eax, 44(%rsp)
	movq	6032(%r13), %rax
	movl	%edi, %ecx
	movss	44(%rsp), %xmm6
	movq	%rax, 48(%rsp)
	call	_ZL11IsPopupOpenj
	testb	$2, 15(%rbx)
	movl	%eax, %edi
	jne	.L7513
	movslq	6200(%r13), %rax
	cmpl	%eax, 6184(%r13)
	jle	.L7513
	movq	%rax, %rdx
	movq	%rbx, %rcx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rax
	addq	6192(%r13), %rax
	leaq	.LC108(%rip), %rdx
	movl	24(%rax), %r12d
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	cmpl	%eax, %r12d
	je	.L7618
	.p2align 4,,7
.L7513:
	xorl	%r14d, %r14d
.L7552:
	cmpl	$1, 304(%rbx)
	movss	192(%rbx), %xmm10
	movss	196(%rbx), %xmm7
	je	.L7619
	movss	.LC202(%rip), %xmm0
	xorps	%xmm2, %xmm2
	mulss	5944(%r13), %xmm0
	movaps	%xmm6, %xmm1
	leaq	552(%rbx), %rcx
	movaps	%xmm7, %xmm8
	xorps	%xmm6, %xmm6
	subss	5128(%r13), %xmm8
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm3
	call	_ZN18ImGuiSimpleColumns11DeclColumnsEfff
	movaps	%xmm0, %xmm11
	call	_ZN5ImGui21GetContentRegionAvailEv
	movl	%eax, 44(%rsp)
	testb	%bpl, %bpl
	movss	%xmm11, 112(%rsp)
	movd	44(%rsp), %xmm1
	movss	%xmm6, 116(%rsp)
	subss	%xmm11, %xmm1
	movaps	%xmm1, %xmm9
	cmpnless	%xmm6, %xmm9
	andps	%xmm1, %xmm9
	jne	.L7523
	leaq	112(%rsp), %r12
	movl	$105, %r8d
	movzbl	%dil, %edx
	movq	%rsi, %rcx
	movq	%r12, %r9
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	leaq	5264(%r13), %rdx
	xorl	%ecx, %ecx
	movb	%al, 44(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movss	576(%rbx), %xmm1
	addss	%xmm6, %xmm7
	addss	%xmm9, %xmm1
	movss	.LC55(%rip), %xmm9
	mulss	5944(%r13), %xmm9
	movss	.LC28(%rip), %xmm2
	xorl	%edx, %edx
	movss	%xmm7, 64(%rsp)
	movq	64(%rsp), %rax
	salq	$32, %rax
	addss	%xmm9, %xmm1
	movaps	%xmm10, %xmm9
	addss	%xmm10, %xmm1
	movss	%xmm1, 60(%rsp)
	movl	60(%rsp), %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	call	_ZN5ImGui13PopStyleColorEi.constprop.161
.L7611:
	xorl	%r10d, %r10d
.L7520:
	testb	%r14b, %r14b
	je	.L7525
	movq	48(%rsp), %rax
	movq	%rax, 6032(%r13)
.L7525:
	testl	$167772160, 12(%rbx)
	je	.L7526
	movq	6040(%r13), %r14
	xorl	%edx, %edx
	movl	$1, %ecx
	cmpq	%rbx, %r14
	je	.L7620
.L7527:
	cmpb	%dil, %r10b
	jbe	.L7541
	testb	%cl, %cl
	je	.L7541
.L7539:
	cmpb	%dl, %bpl
	.p2align 4,,3
	jbe	.L7621
.L7613:
	movl	$1, %ebp
	xorl	%edi, %edi
.L7558:
	orl	%ebp, %edi
	movl	6200(%r13), %eax
	cmpl	%eax, 6184(%r13)
	jg	.L7622
.L7554:
	xorl	%edx, %edx
	movq	%rsi, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
.L7549:
	testb	%dil, %dil
	je	.L7550
	movq	GImGui(%rip), %rax
	movq	%rsi, %rcx
	movss	%xmm9, 6216(%rax)
	movl	$1, 6244(%rax)
	movss	%xmm8, 6220(%rax)
	movl	12(%rbx), %eax
	andl	$167772160, %eax
	cmpl	$1, %eax
	sbbl	%edx, %edx
	andl	$-1048576, %edx
	addl	$135266432, %edx
	call	_ZL12BeginPopupExPKci
	movl	%eax, %r15d
	jmp	.L7607
	.p2align 4,,7
.L7619:
	testb	$4, 13(%rbx)
	subss	5160(%r13), %xmm7
	xorps	%xmm0, %xmm0
	je	.L7516
	movq	GImGui(%rip), %rax
	movss	648(%rbx), %xmm8
	mulss	5948(%rax), %xmm8
	movss	5160(%rax), %xmm1
	addss	%xmm1, %xmm1
	movaps	%xmm8, %xmm0
	addss	%xmm1, %xmm0
.L7516:
	addss	%xmm0, %xmm7
	movss	5168(%r13), %xmm0
	leaq	112(%rsp), %r12
	movaps	%xmm10, %xmm9
	movl	$7, %ecx
	movq	%r12, %rdx
	subss	84(%rbx), %xmm9
	movaps	%xmm7, %xmm8
	movss	.LC29(%rip), %xmm7
	mulss	%xmm7, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm0
	addss	%xmm10, %xmm0
	movss	%xmm0, 192(%rbx)
	movss	5172(%r13), %xmm0
	movss	5168(%r13), %xmm1
	addss	%xmm0, %xmm0
	addss	%xmm1, %xmm1
	movss	%xmm0, 116(%rsp)
	movss	%xmm1, 112(%rsp)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	cmpb	$1, %bpl
	movzbl	%dil, %edx
	movq	%r12, %r9
	sbbl	%eax, %eax
	movq	%rsi, %rcx
	movss	%xmm6, 112(%rsp)
	andl	$32, %eax
	movl	$0x00000000, 116(%rsp)
	leal	9(%rax), %r8d
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	movb	%al, 44(%rsp)
	call	_ZN5ImGui11PopStyleVarEi.constprop.160
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L7518
	movss	5168(%rdx), %xmm0
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L7518:
	mulss	5168(%r13), %xmm7
	testb	%bpl, %bpl
	cvttss2si	%xmm7, %eax
	cvtsi2ss	%eax, %xmm0
	addss	192(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	je	.L7611
.L7519:
	movl	56(%rsp), %edx
	leaq	252(%rbx), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	movl	%eax, %r10d
	jmp	.L7520
	.p2align 4,,7
.L7618:
	movq	%rbx, 6032(%r13)
	movl	$1, %r14d
	jmp	.L7552
	.p2align 4,,7
.L7542:
	cmpb	$0, 44(%rsp)
	jne	.L7544
.L7584:
	xorl	%edx, %edx
	testb	%r10b, %r10b
	je	.L7541
	testb	%r14b, %r14b
	je	.L7541
	testb	%dil, %dil
	je	.L7539
	.p2align 4,,7
.L7541:
	cmpb	%dl, %bpl
	ja	.L7549
	.p2align 4,,7
.L7543:
	movl	56(%rsp), %ecx
	call	_ZL11IsPopupOpenj
	testb	%al, %al
	je	.L7549
	xorl	%ebp, %ebp
.L7546:
	movq	GImGui(%rip), %rax
	movl	6200(%rax), %ecx
	call	_ZL17ClosePopupToLeveli
.L7553:
	cmpb	%dil, %bpl
	ja	.L7558
	orl	%ebp, %edi
	testb	%bpl, %bpl
	je	.L7549
	.p2align 4,,3
	jmp	.L7554
	.p2align 4,,7
.L7526:
	testb	%dil, %dil
	je	.L7542
	cmpb	$0, 44(%rsp)
	.p2align 4,,3
	je	.L7584
	testb	%r14b, %r14b
	jne	.L7571
.L7544:
	testb	%bpl, %bpl
	je	.L7623
	testb	%dil, %dil
	.p2align 4,,2
	jne	.L7624
	movl	$1, %ebp
	jmp	.L7558
	.p2align 4,,7
.L7523:
	leaq	112(%rsp), %r12
	movzbl	%dil, %edx
	movl	$73, %r8d
	movq	%rsi, %rcx
	movq	%r12, %r9
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	movss	576(%rbx), %xmm1
	addss	%xmm6, %xmm7
	addss	%xmm9, %xmm1
	movss	.LC55(%rip), %xmm9
	mulss	5944(%r13), %xmm9
	movb	%al, 44(%rsp)
	xorl	%edx, %edx
	movss	.LC28(%rip), %xmm2
	movss	%xmm7, 64(%rsp)
	movq	64(%rsp), %rax
	salq	$32, %rax
	addss	%xmm9, %xmm1
	movaps	%xmm10, %xmm9
	addss	%xmm10, %xmm1
	movss	%xmm1, 60(%rsp)
	movl	60(%rsp), %ecx
	orq	%rax, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	jmp	.L7519
	.p2align 4,,7
.L7571:
	xorl	%edi, %edi
	jmp	.L7543
.L7623:
	movl	56(%rsp), %ecx
	movl	$1, %ebp
	call	_ZL11IsPopupOpenj
	testb	%al, %al
	je	.L7553
	jmp	.L7546
	.p2align 4,,7
.L7622:
	xorl	%edx, %edx
	movq	%rsi, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
	.p2align 4,,3
	jmp	.L7607
	.p2align 4,,7
.L7620:
	movslq	6200(%r13), %rax
	cmpl	%eax, 6184(%r13)
	jle	.L7528
	movq	%rax, %rdx
	salq	$5, %rdx
	leaq	(%rdx,%rax,8), %rax
	addq	6192(%r13), %rax
	cmpq	16(%rax), %rbx
	je	.L7625
.L7528:
	xorl	%edx, %edx
	cmpb	%dil, %r10b
	movl	$1, %ecx
	jnb	.L7527
	xorl	%eax, %eax
.L7556:
	movl	6064(%r13), %r8d
	cmpl	%r8d, 56(%rsp)
	setne	%r9b
	testl	%r8d, %r8d
	setne	%dl
	andl	%r9d, %edx
	xorl	$1, %edx
	orl	%edx, %eax
	xorl	$1, %eax
	movl	%eax, %edx
	jmp	.L7527
.L7625:
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L7563
	movss	268(%r13), %xmm0
	movaps	%xmm0, %xmm2
	movss	264(%r13), %xmm3
	subss	860(%r13), %xmm3
	movss	28(%rax), %xmm7
	subss	864(%r13), %xmm2
	movss	28(%rbx), %xmm6
	ucomiss	%xmm6, %xmm7
	movss	32(%rax), %xmm1
	movss	40(%rax), %xmm5
	movss	36(%rax), %xmm4
	addss	%xmm1, %xmm5
	addss	%xmm7, %xmm4
	movss	%xmm3, 80(%rsp)
	movss	%xmm2, 84(%rsp)
	ja	.L7530
	movss	%xmm4, 96(%rsp)
	ja	.L7531
	movaps	%xmm3, %xmm0
	movss	%xmm4, 112(%rsp)
	subss	%xmm4, %xmm0
	movss	.LC81(%rip), %xmm4
	andps	%xmm4, %xmm0
	movss	.LC66(%rip), %xmm4
	mulss	.LC49(%rip), %xmm0
	ucomiss	%xmm0, %xmm4
	ja	.L7564
	movss	.LC287(%rip), %xmm10
	movaps	%xmm10, %xmm4
	cmpnltss	%xmm0, %xmm4
	andps	%xmm4, %xmm0
	andnps	%xmm10, %xmm4
	orps	%xmm4, %xmm0
.L7532:
	ucomiss	%xmm6, %xmm7
	ja	.L7612
	movss	.LC29(%rip), %xmm4
.L7533:
	subss	%xmm0, %xmm1
	leaq	264(%r13), %rcx
	leaq	80(%rsp), %rdx
	addss	%xmm4, %xmm3
	movss	.LC288(%rip), %xmm4
	addss	%xmm0, %xmm5
	leaq	96(%rsp), %r8
	movq	%r12, %r9
	subss	%xmm2, %xmm1
	movss	%xmm3, 80(%rsp)
	movaps	%xmm4, %xmm3
	cmpless	%xmm1, %xmm3
	andps	%xmm3, %xmm1
	andnps	%xmm4, %xmm3
	orps	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 100(%rsp)
	movaps	%xmm5, %xmm1
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	minss	.LC199(%rip), %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 116(%rsp)
	call	_Z19ImIsPointInTriangleRK6ImVec2S1_S1_S1_
	cmpb	44(%rsp), %al
	setbe	%cl
.L7529:
	xorl	%edx, %edx
	cmpb	%dil, %r10b
	jnb	.L7527
	cmpq	6040(%r13), %r14
	je	.L7556
	jmp	.L7527
	.p2align 4,,7
.L7530:
	movss	%xmm7, 96(%rsp)
	movaps	%xmm7, %xmm4
.L7531:
	movaps	%xmm3, %xmm0
	movss	%xmm7, 112(%rsp)
	subss	%xmm4, %xmm0
	movss	.LC81(%rip), %xmm4
	andps	%xmm4, %xmm0
	movss	.LC66(%rip), %xmm4
	mulss	.LC49(%rip), %xmm0
	ucomiss	%xmm0, %xmm4
	jbe	.L7626
	movaps	%xmm4, %xmm0
	movss	.LC100(%rip), %xmm4
	jmp	.L7533
	.p2align 4,,7
.L7564:
	movaps	%xmm4, %xmm0
	jmp	.L7532
	.p2align 4,,7
.L7626:
	ucomiss	.LC287(%rip), %xmm0
	jbe	.L7532
	movss	.LC287(%rip), %xmm0
.L7612:
	movss	.LC100(%rip), %xmm4
	jmp	.L7533
	.p2align 4,,7
.L7563:
	xorl	%eax, %eax
	jmp	.L7529
.L7621:
	movl	56(%rsp), %ecx
	call	_ZL11IsPopupOpenj
	testb	%al, %al
	je	.L7613
	xorl	%edi, %edi
	movl	$1, %ebp
	jmp	.L7546
.L7624:
	movl	$1, %edi
	jmp	.L7554
	.seh_endproc
	.section .rdata,"dr"
.LC289:
	.ascii "*Unknown item*\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii
	.def	_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii
_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii:
.LFB757:
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
	subq	$328, %rsp
	.seh_stackalloc	328
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
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rbp
	movq	GImGui(%rip), %r14
	movq	%r9, %r12
	movq	6008(%r14), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L7628
.L7632:
	xorl	%eax, %eax
.L7629:
	movaps	208(%rsp), %xmm6
	movaps	224(%rsp), %xmm7
	movaps	240(%rsp), %xmm8
	movaps	256(%rsp), %xmm9
	movaps	272(%rsp), %xmm10
	movaps	288(%rsp), %xmm11
	movaps	304(%rsp), %xmm12
	addq	$328, %rsp
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
.L7628:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movl	%eax, 108(%rsp)
	xorps	%xmm11, %xmm11
	call	_ZN5ImGui13CalcItemWidthEv
	movq	%rsi, %rcx
	movaps	%xmm0, %xmm8
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movss	5160(%r14), %xmm1
	movl	%eax, 64(%rsp)
	movaps	%xmm1, %xmm6
	shrq	$32, %rax
	movss	64(%rsp), %xmm9
	movl	%eax, 64(%rsp)
	addss	%xmm1, %xmm6
	movss	64(%rsp), %xmm7
	addss	192(%rbx), %xmm8
	movss	196(%rbx), %xmm10
	ucomiss	%xmm11, %xmm9
	movq	192(%rbx), %rax
	movaps	%xmm11, %xmm3
	addss	%xmm7, %xmm6
	movq	%rax, 160(%rsp)
	movss	%xmm8, 168(%rsp)
	addss	%xmm10, %xmm6
	movss	%xmm6, 172(%rsp)
	jbe	.L7630
	movss	5176(%r14), %xmm3
	addss	%xmm9, %xmm3
.L7630:
	movaps	%xmm6, %xmm2
	movq	160(%rsp), %rax
	leaq	192(%rsp), %r13
	addss	%xmm8, %xmm3
	addss	%xmm11, %xmm2
	movq	%r13, %rcx
	movq	%rax, 176(%rsp)
	movss	%xmm3, 184(%rsp)
	subss	176(%rsp), %xmm3
	movss	%xmm2, 188(%rsp)
	subss	180(%rsp), %xmm2
	movss	%xmm3, 192(%rsp)
	movss	%xmm2, 196(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	108(%rsp), %rdx
	leaq	176(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L7632
	movss	5156(%r14), %xmm0
	movl	108(%rsp), %r15d
	leaq	160(%rsp), %rcx
	addss	%xmm0, %xmm0
	xorl	%r8d, %r8d
	movl	%r15d, %edx
	addss	5944(%r14), %xmm0
	movaps	%xmm0, %xmm12
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	movl	%r15d, %ecx
	movb	%al, 64(%rsp)
	call	_ZL11IsPopupOpenj
	movaps	%xmm8, %xmm4
	movq	160(%rsp), %r11
	movl	$7, %ecx
	movl	%eax, %r15d
	movss	%xmm6, 204(%rsp)
	subss	%xmm12, %xmm4
	movq	%r11, 192(%rsp)
	movaps	%xmm4, %xmm12
	movss	%xmm4, 200(%rsp)
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	5164(%r14), %xmm0
	movl	%eax, %r8d
	movq	168(%rsp), %rdx
	movss	%xmm0, 32(%rsp)
	movl	$1, %r9d
	movq	%r11, %rcx
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	cmpb	$0, 64(%rsp)
	movss	5164(%r14), %xmm5
	jne	.L7669
	testb	%r15b, %r15b
	movl	$22, %ecx
	jne	.L7669
.L7633:
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	%xmm12, 72(%rsp)
	movl	72(%rsp), %r9d
	movl	%eax, %r8d
	movss	%xmm10, 72(%rsp)
	movl	72(%rsp), %ecx
	movss	%xmm5, 32(%rsp)
	movq	%rcx, %rdx
	movl	%r9d, %ecx
	movl	$1, %r9d
	salq	$32, %rdx
	orq	%rdx, %rcx
	movq	168(%rsp), %rdx
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	addss	5156(%r14), %xmm12
	movl	$1, %edx
	addss	5160(%r14), %xmm10
	movss	.LC28(%rip), %xmm2
	movss	%xmm12, 72(%rsp)
	movl	72(%rsp), %ecx
	movss	%xmm10, 80(%rsp)
	movq	80(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui22RenderCollapseTriangleE6ImVec2bf
	movl	(%rdi), %edx
	movl	%edx, %eax
	subl	$0, %eax
	js	.L7635
	cmpl	432(%rsp), %edx
	jl	.L7701
.L7635:
	ucomiss	%xmm11, %xmm9
	jbe	.L7637
	movss	164(%rsp), %xmm0
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addss	5160(%r14), %xmm0
	movss	5176(%r14), %xmm5
	addss	%xmm8, %xmm5
	movq	%rsi, %rdx
	movss	%xmm5, 72(%rsp)
	movl	72(%rsp), %ecx
	movss	%xmm0, 80(%rsp)
	movq	80(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
.L7637:
	xorl	%r15d, %r15d
	cmpb	$0, 64(%rsp)
	movl	108(%rsp), %ecx
	je	.L7640
	xorl	%r15d, %r15d
	cmpb	$0, 876(%r14)
	movq	GImGui(%rip), %r9
	movl	%ecx, 6056(%r9)
	movb	$0, 6060(%r9)
	jne	.L7702
.L7640:
	call	_ZL11IsPopupOpenj
	testb	%al, %al
	je	.L7632
	movl	440(%rsp), %edx
	movl	$7, %eax
	addss	5172(%r14), %xmm7
	movss	12(%r14), %xmm2
	movss	5236(%r14), %xmm1
	testl	%edx, %edx
	cmovns	440(%rsp), %eax
	movl	%eax, 440(%rsp)
	movl	432(%rsp), %eax
	cmpl	%eax, 440(%rsp)
	cmovle	440(%rsp), %eax
	cvtsi2ss	%eax, %xmm0
	mulss	%xmm0, %xmm7
	movss	.LC35(%rip), %xmm0
	mulss	5160(%r14), %xmm0
	addss	%xmm0, %xmm7
	movaps	%xmm7, %xmm0
	addss	%xmm6, %xmm0
	ucomiss	%xmm0, %xmm6
	jbe	.L7703
	movaps	%xmm6, %xmm0
.L7643:
	movss	164(%rsp), %xmm2
	movaps	%xmm7, %xmm4
	movaps	%xmm2, %xmm3
	subss	%xmm6, %xmm0
	subss	%xmm1, %xmm3
	minss	%xmm3, %xmm4
	ucomiss	%xmm0, %xmm4
	jbe	.L7647
	movaps	%xmm2, %xmm6
	subss	%xmm7, %xmm6
	ucomiss	%xmm6, %xmm1
	ja	.L7665
	ucomiss	%xmm2, %xmm6
	jbe	.L7700
	movaps	%xmm2, %xmm0
	movaps	%xmm2, %xmm6
	subss	%xmm2, %xmm0
	.p2align 4,,7
.L7647:
	movss	160(%rsp), %xmm1
	movq	GImGui(%rip), %rax
	leaq	5156(%r14), %rdx
	subss	%xmm1, %xmm8
	movl	$1, %ecx
	movss	%xmm1, 6216(%rax)
	movl	$1, 6244(%rax)
	movl	$1, 6248(%rax)
	movss	%xmm6, 6220(%rax)
	movss	%xmm8, 6224(%rax)
	movss	%xmm0, 6228(%rax)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movl	12(%rbx), %edx
	movq	%rsi, %rcx
	xorl	%esi, %esi
	andl	$128, %edx
	orl	$8388608, %edx
	call	_ZL12BeginPopupExPKci
	testb	%al, %al
	je	.L7651
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	je	.L7704
.L7652:
	movl	432(%rsp), %eax
	testl	%eax, %eax
	jle	.L7667
	movl	432(%rsp), %eax
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movss	.LC29(%rip), %xmm6
	decl	%eax
	incq	%rax
	movq	%rax, 64(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 72(%rsp)
	jmp	.L7658
	.p2align 4,,7
.L7705:
	movq	144(%rsp), %rcx
.L7655:
	movq	72(%rsp), %r8
	movzbl	%r13b, %edx
	movl	$0x00000000, 128(%rsp)
	movl	$0x00000000, 132(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.143
	testb	%al, %al
	je	.L7656
	movq	GImGui(%rip), %rax
	movl	$1, %esi
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	movl	%r14d, (%rdi)
.L7656:
	testb	%r15b, %r15b
	je	.L7657
	testb	%r13b, %r13b
	je	.L7657
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	movss	232(%rdx), %xmm0
	movb	$1, 138(%rdx)
	mulss	%xmm6, %xmm0
	movss	204(%rdx), %xmm1
	addss	%xmm0, %xmm1
	movss	5172(%rax), %xmm0
	mulss	%xmm11, %xmm0
	movss	%xmm6, 116(%rdx)
	addss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	subss	32(%rdx), %xmm0
	addss	100(%rdx), %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 108(%rdx)
.L7657:
	call	_ZN5ImGui5PopIDEv
	incq	%rbx
	cmpq	64(%rsp), %rbx
	je	.L7653
.L7658:
	movq	%rbx, %rcx
	movl	%ebx, %r14d
	call	_ZN5ImGui6PushIDEPKv
	cmpl	%ebx, (%rdi)
	movq	80(%rsp), %r8
	movl	%ebx, %edx
	movq	%r12, %rcx
	sete	%r13b
	call	*%rbp
	testb	%al, %al
	jne	.L7705
	leaq	.LC289(%rip), %rax
	movq	%rax, 144(%rsp)
	movq	%rax, %rcx
	jmp	.L7655
	.p2align 4,,7
.L7669:
	movl	$23, %ecx
	jmp	.L7633
	.p2align 4,,7
.L7703:
	subss	%xmm1, %xmm2
	minss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	jmp	.L7643
.L7667:
	xorl	%esi, %esi
	.p2align 4,,7
.L7653:
	call	_ZN5ImGui8EndPopupEv
.L7651:
	call	_ZN5ImGui11PopStyleVarEi.constprop.160
	movl	%esi, %eax
	jmp	.L7629
	.p2align 4,,7
.L7701:
	leaq	144(%rsp), %r8
	movq	%r12, %rcx
	call	*%rbp
	testb	%al, %al
	je	.L7635
	movl	$0x00000000, 128(%rsp)
	movl	$0x00000000, 132(%rsp)
	leaq	128(%rsp), %rax
	movss	164(%rsp), %xmm0
	movq	144(%rsp), %r8
	movss	160(%rsp), %xmm1
	addss	5160(%r14), %xmm0
	addss	5156(%r14), %xmm1
	leaq	8(%r13), %rdx
	leaq	112(%rsp), %rcx
	movq	$0, 48(%rsp)
	movq	%rax, 40(%rsp)
	xorl	%r9d, %r9d
	movq	$0, 32(%rsp)
	movss	%xmm0, 116(%rsp)
	movss	%xmm1, 112(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	jmp	.L7635
	.p2align 4,,7
.L7665:
	movaps	%xmm3, %xmm0
	movaps	%xmm1, %xmm6
	jmp	.L7647
	.p2align 4,,7
.L7702:
	movl	$0, 6068(%r9)
	movb	$0, 6078(%r9)
	movb	$1, 6077(%r9)
	movq	$0, 6088(%r9)
	call	_ZL11IsPopupOpenj
	testb	%al, %al
	je	.L7641
	movl	6184(%r9), %ecx
	decl	%ecx
	call	_ZL17ClosePopupToLeveli
	movl	108(%rsp), %ecx
	jmp	.L7640
	.p2align 4,,7
.L7704:
	leaq	144(%rsp), %rax
	movaps	%xmm11, %xmm1
	movl	$0x00000000, 144(%rsp)
	movl	$0x00000000, 148(%rsp)
	movq	%rax, %rcx
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	jmp	.L7652
	.p2align 4,,7
.L7700:
	subss	%xmm6, %xmm2
	movaps	%xmm2, %xmm0
	jmp	.L7647
	.p2align 4,,7
.L7641:
	movq	%rbx, %rcx
	movl	$1, %r15d
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movq	%rsi, %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui11OpenPopupExEPKcb
	movl	108(%rsp), %ecx
	jmp	.L7640
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5ComboEPKcPiPKS1_ii
	.def	_ZN5ImGui5ComboEPKcPiPKS1_ii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ComboEPKcPiPKS1_ii
_ZN5ImGui5ComboEPKcPiPKS1_ii:
.LFB755:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	96(%rsp), %eax
	movl	%r9d, 32(%rsp)
	movq	%r8, %r9
	leaq	_ZL17Items_ArrayGetterPviPPKc(%rip), %r8
	movl	%eax, 40(%rsp)
	call	_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui5ComboEPKcPiS1_i
	.def	_ZN5ImGui5ComboEPKcPiS1_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui5ComboEPKcPiS1_i
_ZN5ImGui5ComboEPKcPiS1_i:
.LFB756:
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
	je	.L7710
	movq	%r8, %rbx
	xorl	%esi, %esi
	.p2align 4,,7
.L7709:
	movq	%rbx, %rcx
	incl	%esi
	call	strlen
	leaq	1(%rbx,%rax), %rbx
	cmpb	$0, (%rbx)
	jne	.L7709
.L7708:
	leaq	_ZL24Items_SingleStringGetterPviPPKc(%rip), %r8
	movl	%r13d, 40(%rsp)
	movl	%esi, 32(%rsp)
	movq	%rdi, %r9
	movq	%r12, %rdx
	movq	%rbp, %rcx
	call	_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L7710:
	xorl	%esi, %esi
	jmp	.L7708
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui21BeginPopupContextItemEPKci
	.def	_ZN5ImGui21BeginPopupContextItemEPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21BeginPopupContextItemEPKci
_ZN5ImGui21BeginPopupContextItemEPKci:
.LFB482:
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
	jne	.L7721
.L7717:
	movl	6200(%rax), %ecx
	cmpl	%ecx, 6184(%rax)
	jg	.L7722
	movl	$0, 6256(%rax)
	movl	$0, 6252(%rax)
	movl	$0, 6248(%rax)
	movl	$0, 6244(%rax)
	movb	$0, 6297(%rax)
	movb	$0, 6296(%rax)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L7722:
	movl	$128, %edx
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZL12BeginPopupExPKci
	.p2align 4,,7
.L7721:
	xorl	%edx, %edx
	call	_ZN5ImGui14IsMouseClickedEib
	testb	%al, %al
	je	.L7723
	xorl	%edx, %edx
	movq	%rbx, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
	movq	GImGui(%rip), %rax
	jmp	.L7717
	.p2align 4,,7
.L7723:
	movq	GImGui(%rip), %rax
	jmp	.L7717
	.seh_endproc
	.section .rdata,"dr"
.LC290:
	.ascii "void_context_menu\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui21BeginPopupContextVoidEPKci
	.def	_ZN5ImGui21BeginPopupContextVoidEPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui21BeginPopupContextVoidEPKci
_ZN5ImGui21BeginPopupContextVoidEPKci:
.LFB484:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC290(%rip), %rax
	movq	%rcx, %rbx
	movl	%edx, %ecx
	testq	%rbx, %rbx
	cmove	%rax, %rbx
	movq	GImGui(%rip), %rax
	cmpq	$0, 6040(%rax)
	je	.L7735
.L7730:
	movl	6200(%rax), %edx
	cmpl	%edx, 6184(%rax)
	jg	.L7736
	movl	$0, 6256(%rax)
	movl	$0, 6252(%rax)
	movl	$0, 6248(%rax)
	movl	$0, 6244(%rax)
	movb	$0, 6297(%rax)
	movb	$0, 6296(%rax)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L7736:
	movl	$128, %edx
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZL12BeginPopupExPKci
	.p2align 4,,7
.L7735:
	xorl	%edx, %edx
	call	_ZN5ImGui14IsMouseClickedEib
	testb	%al, %al
	je	.L7737
	movl	$1, %edx
	movq	%rbx, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
	movq	GImGui(%rip), %rax
	jmp	.L7730
	.p2align 4,,7
.L7737:
	movq	GImGui(%rip), %rax
	jmp	.L7730
	.seh_endproc
	.section .rdata,"dr"
.LC291:
	.ascii "window_context_menu\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui23BeginPopupContextWindowEbPKci
	.def	_ZN5ImGui23BeginPopupContextWindowEbPKci;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui23BeginPopupContextWindowEbPKci
_ZN5ImGui23BeginPopupContextWindowEbPKci:
.LFB483:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	.LC291(%rip), %rax
	testq	%rdx, %rdx
	movq	%rdx, %rbx
	movl	%ecx, %esi
	cmove	%rax, %rbx
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rdx
	cmpq	%rdx, 6040(%rax)
	je	.L7754
.L7742:
	movl	6200(%rax), %esi
	cmpl	%esi, 6184(%rax)
	jg	.L7755
	movl	$0, 6256(%rax)
	movl	$0, 6252(%rax)
	movl	$0, 6248(%rax)
	movl	$0, 6244(%rax)
	movb	$0, 6297(%rax)
	movb	$0, 6296(%rax)
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L7755:
	movl	$128, %edx
	movq	%rbx, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZL12BeginPopupExPKci
	.p2align 4,,7
.L7754:
	xorl	%edx, %edx
	movl	%r8d, %ecx
	call	_ZN5ImGui14IsMouseClickedEib
	testb	%al, %al
	je	.L7752
	testb	%sil, %sil
	je	.L7756
.L7745:
	movl	$1, %edx
	movq	%rbx, %rcx
	call	_ZN5ImGui11OpenPopupExEPKcb
.L7752:
	movq	GImGui(%rip), %rax
	jmp	.L7742
	.p2align 4,,7
.L7756:
	movq	GImGui(%rip), %rax
	movl	6056(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L7742
	movl	6064(%rax), %edx
	testl	%edx, %edx
	jne	.L7742
	jmp	.L7745
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15BeginPopupModalEPKcPbi
	.def	_ZN5ImGui15BeginPopupModalEPKcPbi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15BeginPopupModalEPKcPbi
_ZN5ImGui15BeginPopupModalEPKcPbi:
.LFB480:
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
	movq	GImGui(%rip), %rax
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movl	%r8d, %edi
	movq	%rbx, %rdx
	movq	6008(%rax), %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movl	%eax, %ebp
	movq	GImGui(%rip), %rax
	movslq	6200(%rax), %rdx
	cmpl	%edx, 6184(%rax)
	jle	.L7758
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	(%rcx,%rdx,8), %rdx
	addq	6192(%rax), %rdx
	cmpl	(%rdx), %ebp
	je	.L7770
.L7758:
	movl	$0, 6256(%rax)
	movl	$0, 6252(%rax)
	xorl	%ebx, %ebx
	movl	$0, 6248(%rax)
	movl	$0, 6244(%rax)
	movb	$0, 6297(%rax)
	movb	$0, 6296(%rax)
.L7765:
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L7770:
	orl	$100663584, %edi
	leaq	48(%rsp), %r8
	movq	%rbx, %rcx
	movl	%edi, 32(%rsp)
	movss	.LC20(%rip), %xmm3
	movq	%rsi, %rdx
	movl	$0x00000000, 48(%rsp)
	movl	$0x00000000, 52(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	testb	%al, %al
	movl	%eax, %ebx
	je	.L7771
	testq	%rsi, %rsi
	je	.L7765
	movzbl	(%rsi), %ebx
	testb	%bl, %bl
	jne	.L7765
	call	_ZN5ImGui8EndPopupEv
	movl	%ebp, %ecx
	call	_ZL11IsPopupOpenj
	testb	%al, %al
	je	.L7765
	movq	GImGui(%rip), %rax
	movl	6184(%rax), %ecx
	decl	%ecx
	call	_ZL17ClosePopupToLeveli
	jmp	.L7765
	.p2align 4,,7
.L7771:
	call	_ZN5ImGui8EndPopupEv
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC292:
	.ascii "##MainMenuBar\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui16BeginMainMenuBarEv
	.def	_ZN5ImGui16BeginMainMenuBarEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui16BeginMainMenuBarEv
_ZN5ImGui16BeginMainMenuBarEv:
.LFB767:
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
	movss	5160(%rbx), %xmm0
	movslq	6152(%rbx), %rdx
	addss	%xmm0, %xmm0
	cmpl	6156(%rbx), %edx
	movl	$0x00000000, 6216(%rbx)
	movss	8(%rbx), %xmm1
	movl	$0x00000000, 6220(%rbx)
	movl	$1, 6244(%rbx)
	movss	%xmm1, 6224(%rbx)
	movl	$1, 6248(%rbx)
	movss	5140(%rbx), %xmm6
	addss	5948(%rbx), %xmm0
	movss	%xmm0, 6228(%rbx)
	je	.L7773
	movq	6160(%rbx), %rax
	leal	1(%rdx), %r8d
.L7774:
	movl	%r8d, 6152(%rbx)
	leaq	0(,%rdx,4), %r8
	salq	$4, %rdx
	leaq	48(%rsp), %rsi
	movl	$3, %ecx
	subq	%r8, %rdx
	addq	%rax, %rdx
	movss	%xmm6, 4(%rdx)
	movl	$2, (%rdx)
	movl	$0x00000000, 5140(%rbx)
	movq	%rsi, %rdx
	movl	$0x00000000, 48(%rsp)
	movl	$0x00000000, 52(%rsp)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	leaq	.LC292(%rip), %rcx
	xorl	%edx, %edx
	movl	$1295, 32(%rsp)
	movss	.LC20(%rip), %xmm3
	movq	%rsi, %r8
	movl	$0x00000000, 48(%rsp)
	movl	$0x00000000, 52(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	testb	%al, %al
	jne	.L7789
.L7780:
	call	_ZN5ImGui3EndEv
	.p2align 4,,6
	call	_ZN5ImGui11PopStyleVarEi.constprop.159
	nop
	movaps	64(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L7789:
	call	_ZN5ImGui12BeginMenuBarEv
	testb	%al, %al
	je	.L7780
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
	.p2align 4,,7
.L7773:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	je	.L7775
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L7775:
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %edi
	jl	.L7776
	movq	6160(%rbx), %rax
	jmp	.L7774
	.p2align 4,,7
.L7776:
	movslq	%eax, %rcx
	incl	844(%rbx)
	leaq	0(,%rcx,4), %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	call	*232(%rbx)
	movq	6160(%rbx), %rcx
	movq	%rax, %rsi
	testq	%rcx, %rcx
	je	.L7777
	movslq	6152(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	leaq	0(,%r8,4), %rax
	salq	$4, %r8
	subq	%rax, %r8
	call	memcpy
	movq	6160(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L7779
	decl	844(%rax)
.L7779:
	call	*240(%rax)
	movslq	6152(%rbx), %rdx
	movq	%rsi, 6160(%rbx)
	movq	%rsi, %rax
	movl	%edi, 6156(%rbx)
	leal	1(%rdx), %r8d
	jmp	.L7774
.L7777:
	movq	GImGui(%rip), %rax
	jmp	.L7779
	.seh_endproc
	.section .rdata,"dr"
.LC293:
	.ascii " ChildMenu\0"
.LC294:
	.ascii " ChildWindow\0"
.LC295:
	.ascii "NULL\0"
.LC296:
	.ascii "ImGui Metrics\0"
.LC297:
	.ascii "ImGui %s\0"
	.align 8
.LC299:
	.ascii "Application average %.3f ms/frame (%.1f FPS)\0"
	.align 8
.LC300:
	.ascii "%d vertices, %d indices (%d triangles)\0"
.LC301:
	.ascii "%d allocations\0"
	.align 8
.LC302:
	.ascii "Show clipping rectangles when hovering a ImDrawCmd\0"
.LC303:
	.ascii "Windows\0"
.LC304:
	.ascii "Active DrawLists (%d)\0"
.LC305:
	.ascii "Open Popups Stack (%d)\0"
.LC306:
	.ascii "Popups\0"
	.align 8
.LC307:
	.ascii "PopupID: %08x, Window: '%s'%s%s\0"
.LC308:
	.ascii "Basic state\0"
.LC309:
	.ascii "FocusedWindow: '%s'\0"
.LC310:
	.ascii "HoveredWindow: '%s'\0"
.LC311:
	.ascii "HoveredRootWindow: '%s'\0"
.LC312:
	.ascii "HoveredID: 0x%08X/0x%08X\0"
.LC313:
	.ascii "ActiveID: 0x%08X/0x%08X\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui17ShowMetricsWindowEPb
	.def	_ZN5ImGui17ShowMetricsWindowEPb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui17ShowMetricsWindowEPb
_ZN5ImGui17ShowMetricsWindowEPb:
.LFB5785:
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
	movss	.LC20(%rip), %xmm3
	movq	%rcx, %rdx
	leaq	64(%rsp), %r8
	leaq	.LC296(%rip), %rcx
	movl	$0, 32(%rsp)
	movl	$0x00000000, 64(%rsp)
	movl	$0x00000000, 68(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	testb	%al, %al
	jne	.L7852
.L7792:
	call	_ZN5ImGui3EndEv
	nop
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
.L7852:
	leaq	.LC97(%rip), %rdx
	leaq	.LC297(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movq	GImGui(%rip), %rax
	movss	.LC298(%rip), %xmm0
	leaq	.LC299(%rip), %rcx
	movss	840(%rax), %xmm2
	divss	%xmm2, %xmm0
	cvtss2sd	%xmm2, %xmm1
	movsd	%xmm1, 56(%rsp)
	movq	56(%rsp), %r8
	movsd	%xmm1, %xmm2
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 56(%rsp)
	movq	56(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui4TextEPKcz
	movq	GImGui(%rip), %rcx
	movl	$1431655766, %r9d
	movl	852(%rcx), %r8d
	movl	%r8d, %eax
	imull	%r9d
	movl	%r8d, %eax
	sarl	$31, %eax
	movl	%edx, %r9d
	movl	848(%rcx), %edx
	leaq	.LC300(%rip), %rcx
	subl	%eax, %r9d
	call	_ZN5ImGui4TextEPKcz
	movq	GImGui(%rip), %rax
	leaq	.LC301(%rip), %rcx
	movl	844(%rax), %edx
	call	_ZN5ImGui4TextEPKcz
	leaq	_ZZN5ImGui17ShowMetricsWindowEPbE15show_clip_rects(%rip), %rdx
	leaq	.LC302(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	call	_ZN5ImGui9SeparatorEv
	movq	GImGui(%rip), %rsi
	leaq	.LC303(%rip), %r8
	leaq	.LC231(%rip), %rdx
	movq	%r8, %rcx
	movl	5976(%rsi), %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	testb	%al, %al
	je	.L7793
	movl	5976(%rsi), %ecx
	testl	%ecx, %ecx
	jle	.L7794
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.L7795
	.p2align 4,,7
.L7797:
	incl	%r12d
	cmpl	%r12d, 5976(%rsi)
	jle	.L7794
.L7805:
	addq	$8, %r13
.L7795:
	movq	5984(%rsi), %rax
	movq	(%rax,%r13), %rbx
	movl	$1, %eax
	cmpb	$0, 136(%rbx)
	jne	.L7796
	movzbl	137(%rbx), %eax
.L7796:
	movq	%rbx, 40(%rsp)
	movl	%eax, 32(%rsp)
	leaq	.LC232(%rip), %r8
	movq	(%rbx), %r9
	leaq	.LC225(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN5ImGui8TreeNodeEPKvPKcz
	testb	%al, %al
	je	.L7797
	movq	656(%rbx), %rcx
	call	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs12NodeDrawListEP10ImDrawListPKc.constprop.142
	cvtss2sd	32(%rbx), %xmm1
	leaq	.LC226(%rip), %rcx
	cvtss2sd	28(%rbx), %xmm0
	movsd	%xmm1, 56(%rsp)
	movq	56(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 56(%rsp)
	movq	56(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui10BulletTextEPKcz
	cvtss2sd	52(%rbx), %xmm2
	leaq	.LC227(%rip), %rcx
	cvtss2sd	40(%rbx), %xmm1
	cvtss2sd	36(%rbx), %xmm0
	cvtss2sd	56(%rbx), %xmm4
	movsd	%xmm2, 56(%rsp)
	movq	56(%rsp), %r9
	movsd	%xmm2, %xmm3
	movsd	%xmm1, 56(%rsp)
	movq	56(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 56(%rsp)
	movq	56(%rsp), %rdx
	movsd	%xmm0, %xmm1
	movsd	%xmm4, 32(%rsp)
	call	_ZN5ImGui10BulletTextEPKcz
	cvtss2sd	100(%rbx), %xmm1
	leaq	.LC228(%rip), %rcx
	cvtss2sd	96(%rbx), %xmm0
	movsd	%xmm1, 56(%rsp)
	movq	56(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 56(%rsp)
	movq	56(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui10BulletTextEPKcz
	movq	664(%rbx), %rcx
	cmpq	%rcx, %rbx
	je	.L7798
	leaq	.LC229(%rip), %rdx
	call	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc
.L7798:
	movl	280(%rbx), %r9d
	testl	%r9d, %r9d
	jle	.L7800
	leaq	.LC230(%rip), %r8
	leaq	.LC231(%rip), %rdx
	movq	%r8, %rcx
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	testb	%al, %al
	je	.L7800
	movl	280(%rbx), %edx
	testl	%edx, %edx
	jle	.L7802
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	jmp	.L7803
	.p2align 4,,7
.L7850:
	addq	$8, %rbp
.L7803:
	movq	288(%rbx), %rax
	leaq	.LC232(%rip), %rdx
	incl	%edi
	movq	(%rax,%rbp), %rcx
	call	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs10NodeWindowEP11ImGuiWindowPKc
	cmpl	%edi, 280(%rbx)
	jg	.L7850
.L7802:
	call	_ZN5ImGui7TreePopEv
.L7800:
	movl	632(%rbx), %edx
	leaq	.LC233(%rip), %rcx
	incl	%r12d
	sall	$4, %edx
	call	_ZN5ImGui10BulletTextEPKcz
	call	_ZN5ImGui7TreePopEv
	cmpl	%r12d, 5976(%rsi)
	jg	.L7805
.L7794:
	call	_ZN5ImGui7TreePopEv
.L7793:
	movl	6336(%rsi), %r8d
	leaq	.LC304(%rip), %rdx
	leaq	.LC216(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	testb	%al, %al
	je	.L7806
	movl	6336(%rsi), %eax
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jle	.L7808
	.p2align 4,,7
.L7840:
	movq	6344(%rsi), %rax
	incl	%ebx
	movq	(%rax,%rdi), %rcx
	addq	$8, %rdi
	call	_ZZN5ImGui17ShowMetricsWindowEPbEN5Funcs12NodeDrawListEP10ImDrawListPKc.constprop.142
	cmpl	%ebx, 6336(%rsi)
	jg	.L7840
.L7808:
	call	_ZN5ImGui7TreePopEv
.L7806:
	movl	6184(%rsi), %r8d
	leaq	.LC305(%rip), %rdx
	leaq	.LC306(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	testb	%al, %al
	je	.L7810
	movl	6184(%rsi), %ecx
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	leaq	.LC293(%rip), %r12
	leaq	.LC91(%rip), %rdi
	leaq	.LC294(%rip), %rbp
	testl	%ecx, %ecx
	jg	.L7849
	jmp	.L7816
	.p2align 4,,7
.L7815:
	movq	%r15, 32(%rsp)
	movl	(%rax), %edx
	leaq	.LC307(%rip), %rcx
	movq	%r14, %r8
	incl	%ebx
	addq	$40, %r13
	call	_ZN5ImGui10BulletTextEPKcz
	movl	6184(%rsi), %ecx
	cmpl	%ebx, %ecx
	jle	.L7816
.L7849:
	movq	%r13, %rax
	addq	6192(%rsi), %rax
	movq	8(%rax), %rdx
	testq	%rdx, %rdx
	je	.L7823
	movl	12(%rdx), %r8d
	movq	%rdi, %r15
	movq	(%rdx), %r14
	movq	%rbp, %r9
	testl	$134217728, %r8d
	cmovne	%r12, %r15
	andl	$1048576, %r8d
	cmove	%rdi, %r9
.L7812:
	cmpl	%ecx, %ebx
	jl	.L7815
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movl	$856, %r8d
	movq	%r9, 56(%rsp)
	call	_assert
	movq	%r13, %rax
	movq	56(%rsp), %r9
	addq	6192(%rsi), %rax
	jmp	.L7815
	.p2align 4,,7
.L7816:
	call	_ZN5ImGui7TreePopEv
.L7810:
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rcx
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	jne	.L7792
	leaq	.LC308(%rip), %rdx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	leaq	.LC308(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%edx, %edx
	movl	%eax, %ecx
	call	_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_
	testb	%al, %al
	je	.L7792
	movq	6032(%rsi), %rax
	leaq	.LC295(%rip), %rdx
	testq	%rax, %rax
	je	.L7819
	movq	(%rax), %rdx
.L7819:
	leaq	.LC309(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movq	6040(%rsi), %rax
	leaq	.LC295(%rip), %rdx
	testq	%rax, %rax
	je	.L7820
	movq	(%rax), %rdx
.L7820:
	leaq	.LC310(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movq	6048(%rsi), %rax
	leaq	.LC295(%rip), %rdx
	testq	%rax, %rax
	je	.L7821
	movq	(%rax), %rdx
.L7821:
	leaq	.LC311(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movl	6056(%rsi), %edx
	movl	6064(%rsi), %r8d
	leaq	.LC312(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movl	6068(%rsi), %edx
	movl	6072(%rsi), %r8d
	leaq	.LC313(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui7TreePopEv
	jmp	.L7792
	.p2align 4,,7
.L7823:
	leaq	.LC91(%rip), %r9
	leaq	.LC295(%rip), %r14
	movq	%r9, %r15
	jmp	.L7812
	.seh_endproc
	.p2align 4,,15
	.def	_ZL12BeginChildExPKcjRK6ImVec2bi.constprop.150;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL12BeginChildExPKcjRK6ImVec2bi.constprop.150
_ZL12BeginChildExPKcjRK6ImVec2bi.constprop.150:
.LFB6188:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$336, %rsp
	.seh_stackalloc	336
	.seh_endprologue
	movq	GImGui(%rip), %rax
	movq	%rdx, %rdi
	movl	%ecx, %ebp
	movl	%r8d, %r12d
	movl	%r9d, %esi
	movq	6008(%rax), %rbx
	movb	$1, 138(%rbx)
	call	_ZN5ImGui21GetContentRegionAvailEv
	movss	4(%rdi), %xmm0
	cvttss2si	%xmm0, %edx
	xorps	%xmm2, %xmm2
	movss	(%rdi), %xmm1
	cvtsi2ss	%edx, %xmm0
	cvttss2si	%xmm1, %edx
	movss	%xmm0, 68(%rsp)
	cvtsi2ss	%edx, %xmm1
	movl	$1048835, %edx
	ucomiss	%xmm1, %xmm2
	movss	%xmm1, 64(%rsp)
	jnb	.L7873
	ucomiss	%xmm0, %xmm2
	jnb	.L7874
.L7859:
	movl	%edx, %eax
	leaq	80(%rsp), %rdi
	movl	%ebp, 32(%rsp)
	orb	$-128, %al
	movq	(%rbx), %r9
	testb	%r12b, %r12b
	cmovne	%eax, %edx
	leaq	.LC260(%rip), %r8
	movq	%rdi, %rcx
	orl	%edx, %esi
	movl	$256, %edx
	call	_Z14ImFormatStringPciPKcz
	leaq	64(%rsp), %r8
	xorl	%edx, %edx
	movl	%esi, 32(%rsp)
	movss	.LC20(%rip), %xmm3
	movq	%rdi, %rcx
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	testb	$-128, 12(%rbx)
	jne	.L7865
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rdx
	andl	$-129, 12(%rdx)
	movb	$1, 138(%rdx)
.L7865:
	addq	$336, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L7873:
	ucomiss	%xmm2, %xmm1
	jp	.L7867
	movl	$3145987, %edx
	jne	.L7867
.L7856:
	movss	.LC34(%rip), %xmm5
	movl	%eax, 60(%rsp)
	movaps	%xmm5, %xmm4
	movss	60(%rsp), %xmm3
	ucomiss	%xmm0, %xmm2
	cmpless	%xmm3, %xmm4
	andps	%xmm4, %xmm3
	andnps	%xmm5, %xmm4
	orps	%xmm4, %xmm3
	movss	.LC81(%rip), %xmm4
	andps	%xmm4, %xmm1
	subss	%xmm1, %xmm3
	movss	%xmm3, 64(%rsp)
	jb	.L7859
.L7874:
	ucomiss	%xmm2, %xmm0
	jp	.L7861
	movl	%edx, %ecx
	orl	$4194304, %ecx
	ucomiss	%xmm2, %xmm0
	cmove	%ecx, %edx
.L7861:
	movss	.LC34(%rip), %xmm3
	shrq	$32, %rax
	movl	%eax, 60(%rsp)
	movaps	%xmm3, %xmm2
	movss	60(%rsp), %xmm1
	cmpless	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm3, %xmm2
	orps	%xmm2, %xmm1
	movss	.LC81(%rip), %xmm2
	andps	%xmm2, %xmm0
	subss	%xmm0, %xmm1
	movss	%xmm1, 68(%rsp)
	jmp	.L7859
	.p2align 4,,7
.L7867:
	movl	$1048835, %edx
	jmp	.L7856
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui15BeginChildFrameEjRK6ImVec2i
	.def	_ZN5ImGui15BeginChildFrameEjRK6ImVec2i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15BeginChildFrameEjRK6ImVec2i
_ZN5ImGui15BeginChildFrameEjRK6ImVec2i:
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
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movq	%rdx, %rsi
	movl	%ecx, %ebx
	movl	$3, %ecx
	movq	GImGui(%rip), %r12
	movl	%r8d, %edi
	leaq	5360(%r12), %rdx
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movq	GImGui(%rip), %rbp
	movss	5164(%r12), %xmm6
	movslq	6152(%rbp), %rdx
	movss	5152(%rbp), %xmm7
	cmpl	6156(%rbp), %edx
	je	.L7876
	movq	6160(%rbp), %rax
	leal	1(%rdx), %r8d
.L7877:
	movl	%r8d, 6152(%rbp)
	leaq	0(,%rdx,4), %r8
	salq	$4, %rdx
	movl	$1, %ecx
	orl	$65540, %edi
	subq	%r8, %rdx
	addq	%rax, %rdx
	movss	%xmm7, 4(%rdx)
	movl	$4, (%rdx)
	leaq	5156(%r12), %rdx
	movss	%xmm6, 5152(%rbp)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movq	6008(%r12), %rax
	movl	%edi, %r9d
	movq	%rsi, %rdx
	movaps	32(%rsp), %xmm6
	movl	%ebx, %ecx
	movl	12(%rax), %r8d
	movaps	48(%rsp), %xmm7
	shrl	$7, %r8d
	andl	$1, %r8d
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	jmp	_ZL12BeginChildExPKcjRK6ImVec2bi.constprop.150
	.p2align 4,,7
.L7876:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	je	.L7878
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L7878:
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%eax, %edx
	movl	%eax, %r14d
	jl	.L7879
	movq	6160(%rbp), %rax
	jmp	.L7877
	.p2align 4,,7
.L7879:
	movslq	%eax, %rcx
	incl	844(%rbp)
	leaq	0(,%rcx,4), %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	call	*232(%rbp)
	movq	6160(%rbp), %rcx
	movq	%rax, %r13
	testq	%rcx, %rcx
	je	.L7880
	movslq	6152(%rbp), %r8
	movq	%rcx, %rdx
	movq	%r13, %rcx
	leaq	0(,%r8,4), %rax
	salq	$4, %r8
	subq	%rax, %r8
	call	memcpy
	movq	6160(%rbp), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L7882
	decl	844(%rax)
.L7882:
	call	*240(%rax)
	movslq	6152(%rbp), %rdx
	movq	%r13, 6160(%rbp)
	movq	%r13, %rax
	movl	%r14d, 6156(%rbp)
	leal	1(%rdx), %r8d
	jmp	.L7877
.L7880:
	movq	GImGui(%rip), %rax
	jmp	.L7882
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC314:
	.ascii "!((flags & ImGuiInputTextFlags_CallbackHistory) && (flags & ImGuiInputTextFlags_Multiline))\0"
	.align 8
.LC315:
	.ascii "!((flags & ImGuiInputTextFlags_CallbackCompletion) && (flags & ImGuiInputTextFlags_AllowTabInput))\0"
	.align 8
.LC316:
	.ascii "password_font->Glyphs.empty() && password_font->IndexXAdvance.empty() && password_font->IndexLookup.empty()\0"
.LC317:
	.ascii "callback != __null\0"
	.align 8
.LC318:
	.ascii "callback_data.Buf == edit_state.TempTextBuffer.Data\0"
	.align 8
.LC319:
	.ascii "callback_data.BufSize == edit_state.BufSizeA\0"
.LC320:
	.ascii "callback_data.Flags == flags\0"
	.align 8
.LC321:
	.ascii "callback_data.BufTextLen == (int)strlen(callback_data.Buf)\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	.def	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv:
.LFB739:
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
	subq	$504, %rsp
	.seh_stackalloc	504
	movaps	%xmm6, 336(%rsp)
	.seh_savexmm	%xmm6, 336
	movaps	%xmm7, 352(%rsp)
	.seh_savexmm	%xmm7, 352
	movaps	%xmm8, 368(%rsp)
	.seh_savexmm	%xmm8, 368
	movaps	%xmm9, 384(%rsp)
	.seh_savexmm	%xmm9, 384
	movaps	%xmm10, 400(%rsp)
	.seh_savexmm	%xmm10, 400
	movaps	%xmm11, 416(%rsp)
	.seh_savexmm	%xmm11, 416
	movaps	%xmm12, 432(%rsp)
	.seh_savexmm	%xmm12, 432
	movaps	%xmm13, 448(%rsp)
	.seh_savexmm	%xmm13, 448
	movaps	%xmm14, 464(%rsp)
	.seh_savexmm	%xmm14, 464
	movaps	%xmm15, 480(%rsp)
	.seh_savexmm	%xmm15, 480
	.seh_endprologue
	movq	%rdx, %r14
	movq	%r9, %rbp
	movq	GImGui(%rip), %rax
	movq	%rcx, 576(%rsp)
	movl	%r8d, 592(%rsp)
	movq	6008(%rax), %r12
	movzbl	140(%r12), %edi
	movb	$1, 138(%r12)
	testb	%dil, %dil
	jne	.L7896
	movl	608(%rsp), %eax
	andl	$1048704, %eax
	cmpl	$1048704, %eax
	je	.L8514
.L7888:
	movl	608(%rsp), %eax
	andl	$1088, %eax
	cmpl	$1088, %eax
	je	.L8515
.L7889:
	movl	608(%rsp), %esi
	movq	GImGui(%rip), %rbx
	andl	$1048576, %esi
	jne	.L8516
	movq	576(%rsp), %rdx
	movq	%r12, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	576(%rsp), %rcx
	movl	%eax, 188(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movl	%eax, 92(%rsp)
	shrq	$32, %rax
	movss	92(%rsp), %xmm9
	movl	%eax, 92(%rsp)
	movss	92(%rsp), %xmm0
.L8152:
	movss	5160(%rbx), %xmm6
	xorps	%xmm8, %xmm8
	addss	%xmm6, %xmm6
	addss	%xmm0, %xmm6
	call	_ZN5ImGui13CalcItemWidthEv
	movq	0(%rbp), %rcx
	movaps	%xmm0, %xmm1
	movaps	%xmm6, %xmm2
	call	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	movss	196(%r12), %xmm4
	movl	%eax, 92(%rsp)
	movss	192(%r12), %xmm5
	shrq	$32, %rax
	movss	92(%rsp), %xmm13
	movl	%eax, 92(%rsp)
	movaps	%xmm4, %xmm1
	movq	192(%r12), %rax
	movaps	%xmm5, %xmm2
	movss	92(%rsp), %xmm7
	movaps	%xmm8, %xmm0
	addss	%xmm7, %xmm1
	movq	%rax, 224(%rsp)
	addss	%xmm13, %xmm2
	ucomiss	%xmm8, %xmm9
	movss	%xmm1, 236(%rsp)
	movss	%xmm2, 232(%rsp)
	jbe	.L7891
	movss	5176(%rbx), %xmm0
	addss	%xmm9, %xmm0
.L7891:
	movaps	%xmm1, %xmm3
	movq	224(%rsp), %rax
	testl	%esi, %esi
	addss	%xmm2, %xmm0
	addss	%xmm8, %xmm3
	movq	%rax, 240(%rsp)
	movss	%xmm0, 248(%rsp)
	movss	%xmm3, 252(%rsp)
	je	.L7893
	subss	%xmm5, %xmm2
	leaq	272(%rsp), %rbp
	movl	188(%rsp), %ecx
	subss	%xmm4, %xmm1
	xorl	%r8d, %r8d
	movq	%rbp, %rdx
	movss	%xmm2, 272(%rsp)
	movss	%xmm1, 276(%rsp)
	call	_ZN5ImGui15BeginChildFrameEjRK6ImVec2i
	testb	%al, %al
	je	.L8517
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %r13
	subss	124(%r13), %xmm13
	movb	$1, 138(%r13)
.L7895:
	movl	608(%rsp), %eax
	andl	$32768, %eax
	movl	%eax, 128(%rsp)
	jne	.L8518
.L7897:
	xorl	%r8d, %r8d
	testl	$1088, 608(%rsp)
	movl	188(%rsp), %eax
	movq	%r12, %rcx
	sete	%r8b
	xorl	%edx, %edx
	cmpl	%eax, 6068(%rbx)
	sete	%dl
	call	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb
	testb	%al, %al
	movb	%al, 120(%rsp)
	movb	$0, 96(%rsp)
	je	.L7900
	movl	696(%r12), %eax
	cmpl	%eax, 688(%r12)
	sete	96(%rsp)
.L7900:
	movl	188(%rsp), %r15d
	leaq	224(%rsp), %rcx
	xorl	%r8d, %r8d
	movl	%r15d, %edx
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	movb	%al, 144(%rsp)
	je	.L7903
	movq	GImGui(%rip), %rax
	movl	%r15d, 6056(%rax)
	movb	$0, 6060(%rax)
	movzbl	876(%rbx), %eax
	movl	$1, 6544(%rbx)
	testb	%al, %al
	movb	%al, 132(%rsp)
	jne	.L8519
.L7903:
	movzbl	120(%rsp), %r8d
	movb	$0, 132(%rsp)
.L7902:
	xorl	%edx, %edx
	testl	%esi, %esi
	movl	6068(%rbx), %eax
	je	.L7905
	testl	%eax, %eax
	je	.L8520
.L7905:
	cmpl	%r15d, %eax
	je	.L7906
	movl	608(%rsp), %eax
	shrl	$4, %eax
	andl	$1, %eax
	testb	%dl, %dl
	movb	%al, 112(%rsp)
	jne	.L8275
	movl	608(%rsp), %eax
	andl	$16384, %eax
	testb	%r8b, %r8b
	movl	%eax, 92(%rsp)
	jne	.L8275
.L7924:
	movl	92(%rsp), %edx
	testl	%edx, %edx
	sete	96(%rsp)
	testl	%esi, %esi
	setne	%r12b
.L8482:
	movb	$0, 112(%rsp)
.L7991:
	movb	$0, 120(%rsp)
.L8039:
	testl	%esi, %esi
	je	.L8521
	movq	192(%r13), %rax
	movss	228(%rsp), %xmm0
	movss	224(%rsp), %xmm1
	movss	%xmm1, 256(%rsp)
	addss	%xmm13, %xmm1
	movss	%xmm0, 260(%rsp)
	movq	%rax, 192(%rsp)
	addss	%xmm7, %xmm0
	movl	188(%rsp), %eax
	cmpl	%eax, 6912(%rbx)
	movss	%xmm1, 264(%rsp)
	movss	%xmm0, 268(%rsp)
	jne	.L8041
	testb	%r12b, %r12b
	je	.L8041
	leaq	496(%r13), %rcx
	movl	6068(%rbx), %esi
	call	_ZN8ImVectorIjE4backEv
	movl	(%rax), %edx
	leaq	.LC160(%rip), %rcx
	call	_Z6ImHashPKvij.constprop.164
	cmpl	%eax, %esi
	je	.L8042
	movl	188(%rsp), %eax
.L8041:
	cmpl	6068(%rbx), %eax
	jne	.L8522
.L8042:
	movslq	6984(%rbx), %rax
	movq	6928(%rbx), %r8
	movss	10204(%rbx), %xmm0
	movslq	6988(%rbx), %r15
	addss	16(%rbx), %xmm0
	leaq	(%r8,%rax,2), %rcx
	movslq	6992(%rbx), %rax
	cmpl	%eax, %r15d
	movss	%xmm0, 10204(%rbx)
	movl	%eax, 132(%rsp)
	je	.L8043
	movzwl	(%r8), %edx
	cmovle	%r15, %rax
	leaq	(%r8,%rax,2), %r9
	movzbl	%r12b, %eax
	leal	2(%rax), %r10d
	testw	%dx, %dx
	je	.L8233
	movl	$-1, %r11d
.L8208:
	movq	%r8, %rax
	movl	$-1, %edi
	xorl	%esi, %esi
	jmp	.L8049
	.p2align 4,,7
.L8045:
	addq	$2, %rax
	movzwl	(%rax), %edx
	testw	%dx, %dx
	je	.L8048
.L8049:
	cmpw	$10, %dx
	jne	.L8045
	cmpl	$-1, %edi
	leal	1(%rsi), %edx
	je	.L8523
.L8046:
	cmpl	$-1, %r11d
	movl	%edx, %esi
	jne	.L8045
	cmpq	%rax, %r9
	ja	.L8045
	decl	%r10d
	movl	%edx, %r11d
	jne	.L8045
.L8048:
	cmpl	$-1, %edi
	leal	1(%rsi), %r10d
	je	.L8524
.L8050:
	cvtsi2ss	%edi, %xmm3
.L8051:
	cmpl	$-1, %r11d
	je	.L8525
.L8481:
	movss	.LC28(%rip), %xmm4
	movss	%xmm4, 144(%rsp)
.L8044:
	cmpq	%rcx, %r8
	jnb	.L8052
	cmpw	$10, -2(%rcx)
	je	.L8052
	movq	%rcx, %rax
	jmp	.L8055
	.p2align 4,,7
.L8056:
	cmpw	$10, -2(%rax)
	je	.L8054
.L8055:
	subq	$2, %rax
	cmpq	%rax, %r8
	jb	.L8056
.L8054:
	movq	GImGui(%rip), %rdx
	cmpq	%rax, %rcx
	movq	5936(%rdx), %rdi
	movss	5944(%rdx), %xmm2
	divss	(%rdi), %xmm2
	jbe	.L8238
	movaps	%xmm8, %xmm0
	movaps	%xmm8, %xmm10
	jmp	.L8060
	.p2align 4,,7
.L8061:
	cmpl	$13, %edx
	je	.L8064
	cmpl	32(%rdi), %edx
	jge	.L8065
	movq	40(%rdi), %rdx
	movss	(%rdx,%rsi,4), %xmm1
.L8066:
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm10
.L8064:
	cmpq	%rax, %rcx
	jbe	.L8059
.L8060:
	addq	$2, %rax
	movzwl	-2(%rax), %edx
	cmpl	$10, %edx
	movq	%rdx, %rsi
	jne	.L8061
	movaps	%xmm10, %xmm1
	cmpq	%rax, %rcx
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm10, %xmm1
	movaps	%xmm8, %xmm10
	orps	%xmm1, %xmm0
	ja	.L8060
.L8059:
	maxss	%xmm0, %xmm10
.L8057:
	movss	5944(%rbx), %xmm11
	testl	%r11d, %r11d
	mulss	%xmm11, %xmm3
	movss	%xmm3, 136(%rsp)
	js	.L8240
	cmpq	%r9, %r8
	jnb	.L8243
	cmpw	$10, -2(%r9)
	leaq	-2(%r9), %rax
	jne	.L8071
	jmp	.L8243
	.p2align 4,,7
.L8072:
	cmpw	$10, -2(%rax)
	leaq	-2(%rax), %rdx
	je	.L8070
	movq	%rdx, %rax
.L8071:
	cmpq	%rax, %r8
	jb	.L8072
.L8070:
	cmpq	%r9, %rax
	jnb	.L8243
	movaps	%xmm8, %xmm0
	movaps	%xmm8, %xmm14
	jmp	.L8074
	.p2align 4,,7
.L8075:
	cmpl	$13, %edx
	je	.L8078
	cmpl	32(%rdi), %edx
	jge	.L8079
	movq	40(%rdi), %rdx
	movss	(%rdx,%rcx,4), %xmm1
.L8080:
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm14
.L8078:
	addq	$2, %rax
	cmpq	%rax, %r9
	jbe	.L8526
.L8074:
	movzwl	(%rax), %edx
	cmpl	$10, %edx
	movq	%rdx, %rcx
	jne	.L8075
	movaps	%xmm14, %xmm1
	addq	$2, %rax
	cmpq	%rax, %r9
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm14, %xmm1
	movaps	%xmm8, %xmm14
	orps	%xmm1, %xmm0
	ja	.L8074
.L8526:
	maxss	%xmm0, %xmm14
.L8068:
	cvtsi2ss	%r11d, %xmm6
	mulss	%xmm11, %xmm6
.L8067:
	testb	%r12b, %r12b
	je	.L8245
	cvtsi2ss	%r10d, %xmm0
	cmpb	$0, 10208(%rbx)
	movss	%xmm13, 152(%rsp)
	mulss	%xmm11, %xmm0
	movss	%xmm0, 156(%rsp)
	je	.L8082
.L8537:
	testl	$4096, 608(%rsp)
	jne	.L8083
	movss	6980(%rbx), %xmm12
	movaps	%xmm10, %xmm0
	ucomiss	%xmm10, %xmm12
	movss	.LC60(%rip), %xmm1
	mulss	%xmm13, %xmm1
	jbe	.L8445
	subss	%xmm1, %xmm0
	movaps	%xmm8, %xmm12
	ucomiss	%xmm0, %xmm8
	jnb	.L8086
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm12
.L8086:
	movss	%xmm12, 6980(%rbx)
	jmp	.L8087
.L7893:
	subss	244(%rsp), %xmm3
	leaq	272(%rsp), %rbp
	subss	240(%rsp), %xmm0
	movss	5160(%rbx), %xmm1
	movq	%rbp, %rcx
	movss	%xmm3, 276(%rsp)
	movss	%xmm0, 272(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	leaq	188(%rsp), %rdx
	leaq	240(%rsp), %rcx
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	jne	.L8527
.L7896:
	xorl	%eax, %eax
.L8431:
	movaps	336(%rsp), %xmm6
	movaps	352(%rsp), %xmm7
	movaps	368(%rsp), %xmm8
	movaps	384(%rsp), %xmm9
	movaps	400(%rsp), %xmm10
	movaps	416(%rsp), %xmm11
	movaps	432(%rsp), %xmm12
	movaps	448(%rsp), %xmm13
	movaps	464(%rsp), %xmm14
	movaps	480(%rsp), %xmm15
	addq	$504, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L8516:
	call	_ZN5ImGui10BeginGroupEv
	movq	576(%rsp), %rdx
	movq	%r12, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	576(%rsp), %rcx
	movl	%eax, 188(%rsp)
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movl	%eax, 92(%rsp)
	movq	GImGui(%rip), %rax
	movss	.LC31(%rip), %xmm0
	movss	92(%rsp), %xmm9
	mulss	5944(%rax), %xmm0
	jmp	.L8152
	.p2align 4,,7
.L8065:
	movss	72(%rdi), %xmm1
	jmp	.L8066
	.p2align 4,,7
.L8523:
	cmpq	%rax, %rcx
	ja	.L8046
	decl	%r10d
	je	.L8047
	movl	%edx, %edi
	.p2align 4,,3
	jmp	.L8046
.L8521:
	movl	$7, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movss	5164(%rbx), %xmm0
	movq	232(%rsp), %rdx
	movq	224(%rsp), %rcx
	movss	%xmm0, 32(%rsp)
	movl	%eax, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui11RenderFrameE6ImVec2S0_jbf
	movaps	%xmm13, %xmm2
	movl	188(%rsp), %eax
	movss	224(%rsp), %xmm1
	cmpl	6068(%rbx), %eax
	addss	%xmm1, %xmm2
	movss	228(%rsp), %xmm0
	movss	%xmm1, 256(%rsp)
	addss	5156(%rbx), %xmm1
	movss	%xmm0, 260(%rsp)
	movss	%xmm2, 264(%rsp)
	movaps	%xmm7, %xmm2
	addss	%xmm0, %xmm2
	addss	5160(%rbx), %xmm0
	movss	%xmm1, 192(%rsp)
	movss	%xmm2, 268(%rsp)
	movss	%xmm0, 196(%rsp)
	je	.L8042
.L8522:
	testb	%r12b, %r12b
	je	.L8142
	xorl	%ecx, %ecx
	movq	%r14, %r8
	jmp	.L8143
	.p2align 4,,7
.L8528:
	cmpb	$10, %dl
	movq	%rax, %r8
	sete	%dl
	movzbl	%dl, %edx
	addl	%edx, %ecx
.L8143:
	movzbl	(%r8), %edx
	leaq	1(%r8), %rax
	testb	%dl, %dl
	jne	.L8528
	incl	%ecx
	movss	5944(%rbx), %xmm7
	cvtsi2ss	%ecx, %xmm0
	movq	%r8, %rsi
	movss	%xmm13, 152(%rsp)
	xorl	%edi, %edi
	mulss	%xmm7, %xmm0
	movss	%xmm0, 156(%rsp)
.L8144:
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	5936(%rbx), %rdx
	movq	656(%r13), %rcx
	leaq	192(%rsp), %r9
	movaps	%xmm7, %xmm2
	movq	%rdi, 64(%rsp)
	movl	$0x00000000, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%r14, 40(%rsp)
	movl	%eax, 32(%rsp)
	call	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
.L8141:
	testb	%r12b, %r12b
	jne	.L8529
.L8147:
	movl	128(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L8530
.L8148:
	cmpb	$0, 11432(%rbx)
	jne	.L8531
.L8149:
	ucomiss	%xmm8, %xmm9
	jbe	.L8150
	movss	232(%rsp), %xmm0
	movq	576(%rsp), %rdx
	movl	$1, %r9d
	addss	5176(%rbx), %xmm0
	xorl	%r8d, %r8d
	movss	%xmm0, 92(%rsp)
	movl	92(%rsp), %ecx
	movss	228(%rsp), %xmm0
	addss	5160(%rbx), %xmm0
	movss	%xmm0, 96(%rsp)
	movq	96(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
.L8150:
	testb	$32, 608(%rsp)
	movzbl	112(%rsp), %eax
	movzbl	120(%rsp), %esi
	cmove	%esi, %eax
	jmp	.L8431
.L8527:
	movq	%r12, %r13
	jmp	.L7895
.L8520:
	cmpl	6912(%rbx), %r15d
	jne	.L7905
	leaq	496(%r13), %rcx
	movb	%r8b, 92(%rsp)
	movl	6072(%rbx), %r15d
	call	_ZN8ImVectorIjE4backEv
	movl	(%rax), %edx
	leaq	.LC160(%rip), %rcx
	call	_Z6ImHashPKvij.constprop.164
	cmpl	%eax, %r15d
	movzbl	92(%rsp), %r8d
	movl	6068(%rbx), %eax
	sete	%dl
	movl	188(%rsp), %r15d
	jmp	.L7905
.L8519:
	movl	%eax, %r8d
	jmp	.L7902
.L8525:
	movl	%r10d, %r11d
	jmp	.L8481
.L8524:
	cvtsi2ss	%r10d, %xmm3
	jmp	.L8051
	.p2align 4,,7
.L8079:
	movss	72(%rdi), %xmm1
	jmp	.L8080
.L8275:
	movl	6972(%rbx), %eax
	movl	%eax, 92(%rsp)
	movl	592(%rsp), %eax
	leal	1(%rax), %r9d
	movl	6924(%rbx), %eax
	cmpl	%eax, %r9d
	jle	.L7909
	testl	%eax, %eax
	movl	$8, %r15d
	je	.L7910
	movl	%eax, %r15d
	shrl	$31, %r15d
	addl	%eax, %r15d
	sarl	%r15d
	addl	%eax, %r15d
.L7910:
	cmpl	%r15d, %r9d
	jge	.L8216
	cmpl	%r15d, %eax
	jl	.L7911
.L7909:
	leaq	6936(%rbx), %rcx
	movl	%r9d, 6920(%rbx)
	movl	%r9d, %edx
	call	_ZN8ImVectorIcE6resizeEi
	movslq	6936(%rbx), %r15
	testl	%r15d, %r15d
	jle	.L7915
	movq	6944(%rbx), %r9
	movq	%r15, %r8
	movq	%r14, %rdx
	movq	%r9, %rcx
	movq	%r9, 136(%rsp)
	call	strncpy
	movq	136(%rsp), %r9
	movb	$0, -1(%r9,%r15)
.L7915:
	movq	$0, 272(%rsp)
	movl	6920(%rbx), %edx
	movq	%rbp, %r9
	movq	6928(%rbx), %rcx
	movq	%r14, %r8
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.167
	movq	272(%rsp), %rdx
	movl	%eax, 6972(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	subq	%r14, %rdx
	movl	%edx, 6968(%rbx)
	movl	188(%rsp), %edx
	cmpl	%edx, 6912(%rbx)
	jne	.L7918
	cmpl	%eax, 92(%rsp)
	je	.L8532
.L7918:
	testl	%esi, %esi
	movl	%edx, 6912(%rbx)
	movl	$0x00000000, 6980(%rbx)
	sete	%al
	cmpb	$0, 96(%rsp)
	movw	$0, 10194(%rbx)
	movw	$0, 10198(%rbx)
	movw	$99, 10196(%rbx)
	movw	$999, 10200(%rbx)
	movl	$0, 6988(%rbx)
	movl	$0, 6992(%rbx)
	movl	$0, 6984(%rbx)
	movb	$0, 6999(%rbx)
	movl	$0x00000000, 7004(%rbx)
	movb	$0, 6997(%rbx)
	movb	$1, 6998(%rbx)
	movb	%al, 7000(%rbx)
	movb	$0, 6996(%rbx)
	je	.L8153
	movzbl	112(%rsp), %ecx
	testb	%al, %al
	movl	$1, %eax
	cmovne	%eax, %ecx
	movb	%cl, 112(%rsp)
.L8153:
	testl	$8192, 608(%rsp)
	je	.L7919
	movb	$1, 6996(%rbx)
.L7919:
	testl	%esi, %esi
	jne	.L7920
	movzbl	120(%rsp), %ecx
	cmpb	%cl, 96(%rsp)
	jb	.L8217
	cmpb	$0, 132(%rsp)
	je	.L7920
	movzbl	112(%rsp), %ecx
	cmpb	$0, 285(%rbx)
	movl	$1, %eax
	cmovne	%eax, %ecx
	movb	%cl, 112(%rsp)
.L7920:
	movl	%edx, %eax
.L8189:
	movq	GImGui(%rip), %rdx
	testl	%eax, %eax
	movl	%eax, 6068(%rdx)
	movb	$0, 6078(%rdx)
	movb	$1, 6077(%rdx)
	je	.L7921
	movb	$1, 6076(%rdx)
.L7921:
	movq	%r12, 6088(%rdx)
	movq	%r12, %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	6068(%rbx), %eax
	movl	188(%rsp), %r15d
.L7922:
	movl	608(%rsp), %ecx
	andl	$16384, %ecx
	cmpl	%r15d, %eax
	movl	%ecx, 92(%rsp)
	jne	.L7924
.L8210:
	movl	92(%rsp), %r15d
	testl	%r15d, %r15d
	je	.L7925
	cmpb	$0, 6077(%rbx)
	je	.L8533
.L7925:
	movl	592(%rsp), %eax
	movl	%eax, 6976(%rbx)
	movzbl	272(%rbx), %eax
	movl	%eax, %edx
	xorl	$1, %edx
	testl	%esi, %esi
	movb	%dl, 6078(%rbx)
	je	.L7926
	movss	268(%rbx), %xmm2
	subss	196(%r13), %xmm2
	subss	5160(%rbx), %xmm2
.L7927:
	cmpb	$0, 112(%rsp)
	leaq	6912(%rbx), %rcx
	movq	%rcx, 120(%rsp)
	jne	.L7928
	movzbl	192(%rbx), %edx
	cmpb	%dl, 144(%rsp)
	jbe	.L7929
	cmpb	$0, 944(%rbx)
	jne	.L7928
.L7930:
	movss	264(%rbx), %xmm1
	cmpb	$0, 876(%rbx)
	subss	224(%rsp), %xmm1
	movzbl	10209(%rbx), %edx
	subss	5156(%rbx), %xmm1
	addss	6980(%rbx), %xmm1
	je	.L7933
	testb	%dl, %dl
	je	.L8534
	testb	%al, %al
	jne	.L7938
.L7935:
	testb	%dl, %dl
	.p2align 4,,5
	je	.L7938
.L8191:
	movb	$0, 10209(%rbx)
.L7938:
	movzwl	802(%rbx), %eax
	testw	%ax, %ax
	je	.L7940
	cmpb	$0, 285(%rbx)
	jne	.L8535
.L7941:
	movl	92(%rsp), %r12d
	testl	%r12d, %r12d
	jne	.L7943
	leaq	6984(%rbx), %rcx
	leaq	804(%rbx), %r12
	leaq	836(%rbx), %r15
	movq	%rcx, 112(%rsp)
	jmp	.L7944
.L8433:
	addq	$2, %r12
	movzwl	-2(%r12), %eax
	testw	%ax, %ax
	je	.L7943
.L7944:
	movq	624(%rsp), %r9
	movq	616(%rsp), %r8
	movq	%rbp, %rcx
	movl	608(%rsp), %edx
	movl	%eax, 272(%rsp)
	call	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	je	.L7946
	movl	272(%rsp), %r8d
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
.L7946:
	cmpq	%r15, %r12
	jne	.L8433
.L7943:
	movq	$0, 802(%rbx)
	movq	$0, 810(%rbx)
	movq	$0, 818(%rbx)
	movq	$0, 826(%rbx)
	movw	$0, 834(%rbx)
.L7940:
	movzbl	286(%rbx), %eax
	movzbl	192(%rbx), %r15d
	cmpb	$1, %al
	sbbl	%r12d, %r12d
	andl	$-131072, %r12d
	addl	$196620, %r12d
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	andl	$-131072, %ecx
	addl	$196611, %ecx
	cmpb	$1, %al
	movl	%ecx, 160(%rsp)
	sbbl	%ecx, %ecx
	andl	$-131072, %ecx
	addl	$196610, %ecx
	cmpb	$1, %al
	sbbl	%r11d, %r11d
	movl	%ecx, 156(%rsp)
	andl	$-131072, %r11d
	addl	$196609, %r11d
	cmpb	$1, %al
	sbbl	%r8d, %r8d
	andl	$-131072, %r8d
	addl	$196621, %r8d
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	andl	$-131072, %ecx
	addl	$196617, %ecx
	cmpb	$1, %al
	movl	%ecx, 152(%rsp)
	sbbl	%ecx, %ecx
	andl	$-131072, %ecx
	addl	$196616, %ecx
	cmpb	$1, %al
	movl	%ecx, 148(%rsp)
	sbbl	%ecx, %ecx
	andl	$-131072, %ecx
	addl	$196613, %ecx
	cmpb	$1, %al
	movl	%ecx, 136(%rsp)
	sbbl	%ecx, %ecx
	andl	$-131072, %ecx
	addl	$196615, %ecx
	cmpb	$1, %al
	movl	%ecx, 132(%rsp)
	sbbl	%ecx, %ecx
	andl	$-131072, %ecx
	addl	$196612, %ecx
	cmpb	$1, %al
	movl	%ecx, 144(%rsp)
	sbbl	%ecx, %ecx
	andl	$-131072, %ecx
	addl	$196614, %ecx
	cmpb	$1, %al
	sbbl	%r9d, %r9d
	movl	%ecx, 96(%rsp)
	notl	%r9d
	andl	$131072, %r9d
	testb	%r15b, %r15b
	je	.L7949
	movzbl	288(%rbx), %r10d
	testb	%r10b, %r10b
	je	.L7950
	cmpb	$0, 285(%rbx)
	jne	.L7950
	cmpb	$0, 287(%rbx)
	jne	.L7950
	testb	%al, %al
	jne	.L7950
.L7959:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movb	%r10b, 112(%rsp)
	movl	56(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	144(%rsp), %r12d
	movzbl	112(%rsp), %r10d
	jne	.L7960
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movb	%r10b, 112(%rsp)
	movl	60(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movzbl	112(%rsp), %r10d
	je	.L8536
	movl	136(%rsp), %r8d
.L7962:
	leaq	6984(%rbx), %rdx
	jmp	.L8476
.L8245:
	cmpb	$0, 10208(%rbx)
	movss	%xmm8, 156(%rsp)
	movss	%xmm8, 152(%rsp)
	jne	.L8537
.L8082:
	cmpl	132(%rsp), %r15d
	movss	196(%rsp), %xmm5
	movss	6980(%rbx), %xmm12
	movss	%xmm5, 92(%rsp)
	je	.L8538
.L8094:
	cmpl	132(%rsp), %r15d
	jge	.L8539
	leaq	(%r8,%r15,2), %rsi
	movslq	132(%rsp), %r15
.L8188:
	testb	%r12b, %r12b
	leaq	(%r8,%r15,2), %rdi
	je	.L8540
	movl	$41, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movaps	%xmm14, %xmm1
	cmpq	%rsi, %rdi
	movss	192(%rsp), %xmm13
	movl	%eax, 148(%rsp)
	addss	%xmm13, %xmm1
	addss	92(%rsp), %xmm6
	subss	%xmm12, %xmm1
	jbe	.L8271
	movaps	%xmm11, %xmm2
	movss	268(%rsp), %xmm0
	addss	%xmm0, %xmm2
	ucomiss	%xmm2, %xmm6
	ja	.L8271
	movaps	%xmm13, %xmm15
	movss	%xmm8, 92(%rsp)
	movaps	%xmm8, %xmm14
.L8209:
	movss	.LC29(%rip), %xmm7
	leaq	8(%rbp), %r15
	movss	%xmm7, 132(%rsp)
	.p2align 4,,7
.L8102:
	movss	260(%rsp), %xmm5
	ucomiss	%xmm6, %xmm5
	jbe	.L8450
	cmpq	%rsi, %rdi
	jbe	.L8541
	cmpw	$10, (%rsi)
	leaq	2(%rsi), %rax
	jne	.L8109
	jmp	.L8250
	.p2align 4,,7
.L8110:
	addq	$2, %rax
	cmpw	$10, -2(%rax)
	je	.L8250
.L8109:
	cmpq	%rax, %rdi
	ja	.L8110
	movss	196(%rsp), %xmm7
	movss	%xmm7, 92(%rsp)
.L8097:
	leaq	256(%rsp), %r8
	testb	%r12b, %r12b
	movl	$0, %eax
	cmove	%r8, %rax
	movq	%rax, %rsi
.L8095:
	movslq	6968(%rbx), %r9
	xorl	%ecx, %ecx
	leaq	(%r9,%r14), %rdi
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movaps	%xmm15, %xmm2
	movq	5936(%rbx), %rdx
	movq	656(%r13), %rcx
	movss	92(%rsp), %xmm4
	subss	%xmm12, %xmm2
	movl	%eax, 32(%rsp)
	movq	%rsi, 64(%rsp)
	movl	$0x00000000, 56(%rsp)
	movq	%rdi, 48(%rsp)
	movq	%rbp, %r9
	movq	%r14, 40(%rsp)
	movss	%xmm4, 276(%rsp)
	movss	%xmm2, 272(%rsp)
	movaps	%xmm11, %xmm2
	call	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	movss	10204(%rbx), %xmm0
	movl	$1, %eax
	ucomiss	%xmm0, %xmm8
	jnb	.L8138
	movss	.LC202(%rip), %xmm1
	call	fmodf
	movss	.LC48(%rip), %xmm1
	ucomiss	%xmm0, %xmm1
	setnb	%al
.L8138:
	movss	136(%rsp), %xmm6
	addss	192(%rsp), %xmm10
	testb	%al, %al
	addss	196(%rsp), %xmm6
	movss	144(%rsp), %xmm1
	subss	%xmm12, %xmm10
	movaps	%xmm6, %xmm0
	movaps	%xmm6, %xmm5
	subss	5944(%rbx), %xmm0
	subss	.LC322(%rip), %xmm5
	movss	%xmm10, 272(%rsp)
	addss	%xmm10, %xmm1
	addss	132(%rsp), %xmm0
	movss	%xmm1, 280(%rsp)
	movss	%xmm5, 284(%rsp)
	movss	%xmm0, 276(%rsp)
	je	.L8139
	movss	268(%rsp), %xmm2
	ucomiss	%xmm0, %xmm2
	seta	%dl
	ucomiss	260(%rsp), %xmm5
	seta	%al
	andl	%edx, %eax
	ucomiss	256(%rsp), %xmm1
	seta	%dl
	testb	%dl, %al
	je	.L8139
	movss	264(%rsp), %xmm0
	ucomiss	%xmm10, %xmm0
	jbe	.L8139
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movq	656(%r13), %rcx
	leaq	208(%rsp), %r8
	movl	%eax, %r9d
	movl	$0x3f800000, 32(%rsp)
	movq	%rbp, %rdx
	movss	%xmm10, 208(%rsp)
	movss	%xmm5, 212(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
.L8139:
	cmpb	$0, 96(%rsp)
	je	.L8141
	subss	5944(%rbx), %xmm6
	testb	%r12b, %r12b
	subss	144(%rsp), %xmm10
	movss	%xmm6, 11420(%rbx)
	movss	%xmm10, 11416(%rbx)
	je	.L8147
.L8529:
	movss	156(%rsp), %xmm0
	movq	%rbp, %rcx
	addss	5944(%rbx), %xmm0
	movss	152(%rsp), %xmm1
	addss	%xmm8, %xmm1
	movss	%xmm0, 276(%rsp)
	movss	%xmm1, 272(%rsp)
	call	_ZN5ImGui5DummyERK6ImVec2
	call	_ZN5ImGui8EndChildEv
	call	_ZN5ImGui11PopStyleVarEi.constprop.159
	.p2align 4,,5
	call	_ZN5ImGui13PopStyleColorEi.constprop.161
	.p2align 4,,5
	call	_ZN5ImGui8EndGroupEv
	movl	128(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L8148
.L8530:
	call	_ZN5ImGui7PopFontEv
	jmp	.L8149
	.p2align 4,,7
.L8250:
	movq	%rax, %rsi
.L8107:
	movaps	%xmm15, %xmm1
	cmpq	%rsi, %rdi
	addss	%xmm11, %xmm6
	subss	%xmm12, %xmm1
	jbe	.L8542
	movss	268(%rsp), %xmm0
	movaps	%xmm0, %xmm2
	addss	%xmm11, %xmm2
	ucomiss	%xmm2, %xmm6
	jbe	.L8102
	movss	196(%rsp), %xmm7
	movss	%xmm7, 92(%rsp)
	jmp	.L8097
	.p2align 4,,7
.L8450:
	cmpq	%rsi, %rdi
	jbe	.L8251
	movzwl	(%rsi), %edx
	leaq	2(%rsi), %rax
	cmpl	$10, %edx
	movq	%rdx, %rcx
	je	.L8111
	movq	GImGui(%rip), %r9
	movaps	%xmm8, %xmm4
	movq	5936(%r9), %r8
	movss	5944(%r9), %xmm15
	movss	(%r8), %xmm7
.L8115:
	cmpl	$13, %edx
	je	.L8117
	cmpl	32(%r8), %edx
	jge	.L8118
	movq	40(%r8), %rdx
	movss	(%rdx,%rcx,4), %xmm2
.L8119:
	movaps	%xmm15, %xmm3
	divss	%xmm7, %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm4
.L8117:
	cmpq	%rax, %rdi
	jbe	.L8114
	addq	$2, %rax
	movzwl	-2(%rax), %edx
	cmpl	$10, %edx
	movq	%rdx, %rcx
	jne	.L8115
	ucomiss	%xmm4, %xmm8
	jnb	.L8111
	xorps	%xmm7, %xmm7
	ucomiss	%xmm4, %xmm7
	ja	.L8111
.L8268:
	ucomiss	%xmm4, %xmm8
	movq	%rax, %rsi
	jnb	.L8111
.L8120:
	movaps	%xmm14, %xmm2
	movss	92(%rsp), %xmm3
	addss	%xmm1, %xmm4
	movss	256(%rsp), %xmm7
	addss	%xmm8, %xmm1
	movss	264(%rsp), %xmm15
	subss	%xmm11, %xmm2
	addss	%xmm6, %xmm3
	movss	%xmm4, 280(%rsp)
	ucomiss	%xmm1, %xmm7
	addss	%xmm6, %xmm2
	movss	%xmm1, 272(%rsp)
	movss	%xmm3, 284(%rsp)
	movss	%xmm2, 276(%rsp)
	jbe	.L8124
	movss	%xmm7, 272(%rsp)
	movaps	%xmm7, %xmm1
.L8124:
	ucomiss	%xmm2, %xmm5
	jbe	.L8126
	movss	%xmm5, 276(%rsp)
	movaps	%xmm5, %xmm2
.L8126:
	ucomiss	%xmm15, %xmm4
	jbe	.L8128
	movss	%xmm15, 280(%rsp)
	movaps	%xmm15, %xmm4
.L8128:
	ucomiss	%xmm0, %xmm3
	jbe	.L8130
	movss	%xmm0, 284(%rsp)
	movaps	%xmm0, %xmm3
.L8130:
	ucomiss	%xmm5, %xmm3
	jbe	.L8132
	ucomiss	%xmm2, %xmm0
	jbe	.L8132
	ucomiss	%xmm7, %xmm4
	jbe	.L8132
	ucomiss	%xmm1, %xmm15
	jbe	.L8132
	movq	656(%r13), %rcx
	movl	148(%rsp), %r9d
	movq	%r15, %r8
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	movq	%rbp, %rdx
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	5944(%rbx), %xmm11
	movss	192(%rsp), %xmm13
.L8132:
	movaps	%xmm13, %xmm15
	jmp	.L8107
	.p2align 4,,7
.L8118:
	movss	72(%r8), %xmm2
	jmp	.L8119
.L8251:
	movq	%rsi, %rax
	.p2align 4,,7
.L8111:
	movq	5936(%rbx), %rdx
	cmpl	$32, 32(%rdx)
	jle	.L8122
	movq	40(%rdx), %rdx
	movss	128(%rdx), %xmm2
.L8123:
	mulss	132(%rsp), %xmm2
	movq	%rax, %rsi
	cvttss2si	%xmm2, %edx
	cvtsi2ss	%edx, %xmm4
	jmp	.L8120
.L8541:
	movss	196(%rsp), %xmm5
	movss	%xmm5, 92(%rsp)
	jmp	.L8097
.L8114:
	ucomiss	%xmm8, %xmm4
	ja	.L8268
	jmp	.L8111
	.p2align 4,,7
.L8518:
	movq	5936(%rbx), %rcx
	movl	$42, %edx
	leaq	10216(%rbx), %r15
	call	_ZNK6ImFont9FindGlyphEt
	movq	5936(%rbx), %rdx
	movss	(%rdx), %xmm0
	movq	8(%rdx), %rcx
	movss	%xmm0, 10216(%rbx)
	movss	4(%rdx), %xmm0
	movss	%xmm0, 10220(%rbx)
	movq	%rcx, 10224(%rbx)
	movss	96(%rdx), %xmm0
	movss	%xmm0, 10312(%rbx)
	movss	100(%rdx), %xmm0
	movq	88(%rdx), %rdx
	movss	%xmm0, 10316(%rbx)
	movq	%rax, 10280(%rbx)
	movss	4(%rax), %xmm0
	movl	10232(%rbx), %eax
	movq	%rdx, 10304(%rbx)
	movss	%xmm0, 10288(%rbx)
	testl	%eax, %eax
	jne	.L7898
	movl	10248(%rbx), %eax
	testl	%eax, %eax
	jne	.L7898
	movl	10264(%rbx), %eax
	testl	%eax, %eax
	jne	.L7898
	movq	%r15, %rcx
	call	_ZN5ImGui8PushFontEP6ImFont
	jmp	.L7897
.L7898:
	leaq	.LC15(%rip), %rdx
	leaq	.LC316(%rip), %rcx
	movl	$7729, %r8d
	call	_assert
	movq	%r15, %rcx
	call	_ZN5ImGui8PushFontEP6ImFont
	jmp	.L7897
.L7906:
	testb	%dl, %dl
	.p2align 4,,3
	jne	.L8263
	testb	%r8b, %r8b
	.p2align 4,,6
	je	.L8543
.L8263:
	movb	$0, 112(%rsp)
	jmp	.L8189
.L8540:
	movl	$41, %ecx
	call	_ZN5ImGui11GetColorU32Eif.constprop.162
	movaps	%xmm14, %xmm1
	cmpq	%rsi, %rdi
	movss	192(%rsp), %xmm13
	movl	%eax, 148(%rsp)
	addss	%xmm13, %xmm1
	addss	92(%rsp), %xmm6
	subss	%xmm12, %xmm1
	jbe	.L8272
	movaps	%xmm11, %xmm2
	movss	268(%rsp), %xmm0
	addss	%xmm0, %xmm2
	ucomiss	%xmm2, %xmm6
	ja	.L8272
	movss	.LC158(%rip), %xmm7
	movaps	%xmm13, %xmm15
	movss	%xmm7, 92(%rsp)
	movss	.LC20(%rip), %xmm14
	jmp	.L8209
.L8539:
	movslq	132(%rsp), %rax
	leaq	(%r8,%rax,2), %rsi
	jmp	.L8188
.L8122:
	movss	72(%rdx), %xmm2
	jmp	.L8123
.L8514:
	leaq	.LC15(%rip), %rdx
	leaq	.LC314(%rip), %rcx
	movl	$7678, %r8d
	call	_assert
	jmp	.L7888
.L8515:
	leaq	.LC15(%rip), %rdx
	leaq	.LC315(%rip), %rcx
	movl	$7679, %r8d
	call	_assert
	jmp	.L7889
.L8532:
	cmpl	%eax, 6984(%rbx)
	movl	%eax, %ecx
	cmovle	6984(%rbx), %ecx
	cmpl	%eax, 6988(%rbx)
	movl	%ecx, 6984(%rbx)
	movl	%eax, %ecx
	cmovle	6988(%rbx), %ecx
	cmpl	%eax, 6992(%rbx)
	cmovle	6992(%rbx), %eax
	movl	%ecx, 6988(%rbx)
	movl	%eax, 6992(%rbx)
	jmp	.L8153
.L8142:
	movss	5944(%rbx), %xmm7
	xorl	%esi, %esi
	movss	%xmm8, 156(%rsp)
	leaq	256(%rsp), %rdi
	movss	%xmm8, 152(%rsp)
	jmp	.L8144
.L8043:
	movzwl	(%r8), %edx
	movzbl	%r12b, %eax
	leal	1(%rax), %r10d
	testw	%dx, %dx
	je	.L8270
	xorl	%r9d, %r9d
	movl	$-999, %r11d
	jmp	.L8208
.L8240:
	movaps	%xmm8, %xmm6
	movaps	%xmm8, %xmm14
	jmp	.L8067
.L7928:
	movl	6972(%rbx), %edx
	movl	$0, 6988(%rbx)
	movb	$0, 6999(%rbx)
	movb	$1, 10209(%rbx)
	movl	%edx, 6992(%rbx)
	movl	%edx, 6984(%rbx)
.L7931:
	testb	%al, %al
	je	.L8191
	jmp	.L7938
.L7950:
	movzbl	287(%rbx), %eax
	cmpb	$0, 288(%rbx)
	movb	%al, 112(%rsp)
	jne	.L8544
.L7955:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r11d, 172(%rsp)
	movl	%r8d, 168(%rsp)
	movl	%r9d, 164(%rsp)
	movl	56(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	164(%rsp), %r9d
	movl	168(%rsp), %r8d
	movl	172(%rsp), %r11d
	jne	.L7956
.L7957:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r11d, 168(%rsp)
	movl	%r8d, 164(%rsp)
	movl	60(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	%eax, %r15d
	movl	164(%rsp), %r8d
	movl	168(%rsp), %r11d
	jne	.L8545
.L8195:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	64(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testl	%esi, %esi
	setne	%r12b
	andb	%r12b, %al
	movb	%al, 164(%rsp)
	je	.L8546
	movzbl	285(%rbx), %r12d
	testb	%r12b, %r12b
	je	.L8547
	movss	100(%r13), %xmm0
	movaps	%xmm8, %xmm1
	movaps	%xmm0, %xmm2
	movl	92(%rsp), %r11d
	addss	220(%r13), %xmm0
	movb	$0, 112(%rsp)
	subss	5944(%rbx), %xmm2
	testl	%r11d, %r11d
	sete	96(%rsp)
	cmpless	%xmm2, %xmm1
	andps	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm1, 100(%r13)
	movss	%xmm0, 220(%r13)
	jmp	.L8178
	.p2align 4,,7
.L8083:
	movaps	%xmm8, %xmm12
	movl	$0x00000000, 6980(%rbx)
.L8087:
	testb	%r12b, %r12b
	je	.L8089
	movss	136(%rsp), %xmm0
	subss	%xmm11, %xmm0
	movss	100(%r13), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L8548
	movss	136(%rsp), %xmm0
	movaps	%xmm1, %xmm2
	subss	%xmm7, %xmm0
	cmpless	%xmm0, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm1, %xmm2
	orps	%xmm2, %xmm0
.L8092:
	movaps	%xmm1, %xmm5
	cmpl	132(%rsp), %r15d
	movss	%xmm0, 100(%r13)
	subss	%xmm0, %xmm5
	addss	196(%r13), %xmm5
	movss	%xmm5, 196(%r13)
	movb	$0, 10208(%rbx)
	movss	%xmm5, 196(%rsp)
	movss	%xmm5, 92(%rsp)
	jne	.L8094
	movss	.LC29(%rip), %xmm7
	xorl	%esi, %esi
	movss	192(%rsp), %xmm15
	movss	%xmm7, 132(%rsp)
	jmp	.L8095
.L8089:
	cmpl	132(%rsp), %r15d
	movss	196(%rsp), %xmm5
	movb	$0, 10208(%rbx)
	movss	%xmm5, 92(%rsp)
	jne	.L8094
	movss	.LC29(%rip), %xmm7
	leaq	256(%rsp), %rsi
	movss	192(%rsp), %xmm15
	movss	%xmm7, 132(%rsp)
	jmp	.L8095
.L8531:
	leaq	192(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r14, %rdx
	call	_ZL15LogRenderedTextRK6ImVec2PKcS3_
	jmp	.L8149
.L7949:
	movzbl	285(%rbx), %edi
	testb	%dil, %dil
	movl	%edi, %edx
	je	.L7952
	cmpb	$0, 288(%rbx)
	jne	.L7952
	cmpb	$0, 287(%rbx)
	jne	.L7952
	testb	%al, %al
	jne	.L7952
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r8d, 112(%rsp)
	movl	56(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	112(%rsp), %r8d
	jne	.L7960
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r8d, 112(%rsp)
	movl	60(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	%eax, %r15d
	movl	112(%rsp), %r8d
	jne	.L7962
	movb	$1, 112(%rsp)
	jmp	.L8195
	.p2align 4,,7
.L7952:
	movq	GImGui(%rip), %rax
	movb	%dl, 112(%rsp)
	movl	$1, %edx
	movl	%r11d, 172(%rsp)
	movl	%r8d, 168(%rsp)
	movl	%r9d, 164(%rsp)
	movl	56(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	%eax, %edi
	movl	164(%rsp), %r9d
	movl	168(%rsp), %r8d
	movl	172(%rsp), %r11d
	je	.L7957
.L7956:
	orl	$65536, %r9d
	cmpb	$0, 112(%rsp)
	cmove	%r9d, %r12d
.L7960:
	leaq	6984(%rbx), %rdx
	movl	%r12d, %r8d
.L8476:
	movq	120(%rsp), %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movl	92(%rsp), %edi
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	movb	$0, 112(%rsp)
	testl	%edi, %edi
	sete	96(%rsp)
	testl	%esi, %esi
	setne	%r12b
.L8178:
	movl	92(%rsp), %r11d
	testl	%r11d, %r11d
	je	.L7987
.L7985:
	testl	$448, 608(%rsp)
	je	.L7991
.L8025:
	cmpq	$0, 616(%rsp)
	je	.L8549
.L8027:
	testb	$64, 608(%rsp)
	jne	.L8550
.L8028:
	testb	$-128, 608(%rsp)
	jne	.L8182
.L8206:
	testl	$256, 608(%rsp)
	je	.L8184
	movl	$19, %r8d
	movl	$256, %edx
.L8183:
	xorl	%eax, %eax
	movl	$7, %ecx
	movq	%rbp, %rdi
	rep stosq
	movl	608(%rsp), %eax
	movl	%r8d, 292(%rsp)
	movl	%edx, 272(%rsp)
	movl	92(%rsp), %r10d
	movl	%eax, 276(%rsp)
	movq	624(%rsp), %rax
	testl	%r10d, %r10d
	setne	288(%rsp)
	movq	%rax, 280(%rsp)
	movq	6960(%rbx), %rax
	movq	%rax, 296(%rsp)
	movl	6968(%rbx), %eax
	movq	6928(%rbx), %rdi
	movl	%eax, 304(%rsp)
	movl	6976(%rbx), %eax
	movq	%rdi, %rcx
	movl	%eax, 308(%rsp)
	movslq	6984(%rbx), %rax
	leaq	(%rdi,%rax,2), %rdx
	call	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	movl	%eax, 120(%rsp)
	movl	%eax, 316(%rsp)
	movq	%rdi, %rcx
	movslq	6988(%rbx), %rax
	leaq	(%rdi,%rax,2), %rdx
	call	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	movl	%eax, 320(%rsp)
	movl	%eax, %r15d
	movslq	6992(%rbx), %rax
	movq	%rdi, %rcx
	leaq	(%rdi,%rax,2), %rdx
	call	_Z27ImTextCountUtf8BytesFromStrPKtS0_
	movq	%rbp, %rcx
	movl	%eax, %edi
	movl	%eax, 324(%rsp)
	call	*616(%rsp)
	movq	6960(%rbx), %rax
	cmpq	%rax, 296(%rsp)
	je	.L8031
	leaq	.LC15(%rip), %rdx
	leaq	.LC318(%rip), %rcx
	movl	$8040, %r8d
	call	_assert
.L8031:
	movl	6976(%rbx), %eax
	cmpl	%eax, 308(%rsp)
	je	.L8032
	leaq	.LC15(%rip), %rdx
	leaq	.LC319(%rip), %rcx
	movl	$8041, %r8d
	call	_assert
.L8032:
	movl	276(%rsp), %eax
	cmpl	%eax, 608(%rsp)
	je	.L8033
	leaq	.LC15(%rip), %rdx
	leaq	.LC320(%rip), %rcx
	movl	$8042, %r8d
	call	_assert
.L8033:
	movslq	316(%rsp), %rax
	cmpl	%eax, 120(%rsp)
	je	.L8034
	movq	296(%rsp), %rcx
	leaq	(%rcx,%rax), %rdx
	call	_Z24ImTextCountCharsFromUtf8PKcS0_
	movl	%eax, 6984(%rbx)
.L8034:
	movslq	320(%rsp), %rax
	cmpl	%eax, %r15d
	je	.L8035
	movq	296(%rsp), %rcx
	leaq	(%rcx,%rax), %rdx
	call	_Z24ImTextCountCharsFromUtf8PKcS0_
	movl	%eax, 6988(%rbx)
.L8035:
	movslq	324(%rsp), %rax
	cmpl	%eax, %edi
	je	.L8036
	movq	296(%rsp), %rcx
	leaq	(%rcx,%rax), %rdx
	call	_Z24ImTextCountCharsFromUtf8PKcS0_
	movl	%eax, 6992(%rbx)
.L8036:
	cmpb	$0, 312(%rsp)
	je	.L8184
	movq	296(%rsp), %rdi
	movq	%rdi, %rcx
	call	strlen
	cmpl	%eax, 304(%rsp)
	je	.L8038
	leaq	.LC15(%rip), %rdx
	leaq	.LC321(%rip), %rcx
	movl	$8048, %r8d
	call	_assert
	movq	296(%rsp), %rdi
.L8038:
	movl	6920(%rbx), %edx
	movq	6928(%rbx), %rcx
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.167
	movl	%eax, 6972(%rbx)
	movl	304(%rsp), %eax
	movl	$0xbe99999a, 10204(%rbx)
	movl	%eax, 6968(%rbx)
.L8184:
	movl	92(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L7991
.L8480:
	movzbl	96(%rsp), %eax
	movq	6960(%rbx), %rdi
	movq	%r14, %rdx
	movq	%rdi, %rcx
	movb	%al, 132(%rsp)
	call	strcmp
	testl	%eax, %eax
	movb	$0, 120(%rsp)
	je	.L8024
	movl	592(%rsp), %r8d
	movb	$1, 120(%rsp)
	testl	%r8d, %r8d
	jle	.L8024
	movslq	592(%rsp), %r15
	movq	%rdi, %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	call	strncpy
	movb	$0, -1(%r14,%r15)
.L8024:
	movl	188(%rsp), %eax
	cmpl	%eax, 6068(%rbx)
	sete	%al
	andb	132(%rsp), %al
	movb	%al, 96(%rsp)
	je	.L8232
	movq	6960(%rbx), %r14
	jmp	.L8039
.L8517:
	movb	%al, 92(%rsp)
	call	_ZN5ImGui13EndChildFrameEv
	call	_ZN5ImGui8EndGroupEv
	movzbl	92(%rsp), %eax
	jmp	.L8431
.L7926:
	movss	.LC29(%rip), %xmm4
	mulss	5944(%rbx), %xmm4
	movaps	%xmm4, %xmm2
	jmp	.L7927
.L8216:
	movl	%r9d, %r15d
.L7911:
	movq	GImGui(%rip), %rax
	movslq	%r15d, %rcx
	movl	%r9d, 148(%rsp)
	addq	%rcx, %rcx
	incl	844(%rax)
	call	*232(%rax)
	movq	6928(%rbx), %rdx
	movq	%rax, 136(%rsp)
	movl	148(%rsp), %r9d
	testq	%rdx, %rdx
	je	.L7912
	movslq	6920(%rbx), %r8
	movq	%rax, %rcx
	addq	%r8, %r8
	call	memcpy
	movq	6928(%rbx), %rdx
	movq	GImGui(%rip), %rax
	movl	148(%rsp), %r9d
	testq	%rdx, %rdx
	je	.L7914
	decl	844(%rax)
.L7914:
	movl	%r9d, 148(%rsp)
	movq	%rdx, %rcx
	call	*240(%rax)
	movq	136(%rsp), %rax
	movl	%r15d, 6924(%rbx)
	movl	148(%rsp), %r9d
	movq	%rax, 6928(%rbx)
	jmp	.L7909
.L8217:
	movb	$1, 112(%rsp)
	jmp	.L7920
.L8445:
	subss	%xmm13, %xmm0
	ucomiss	%xmm12, %xmm0
	jb	.L8087
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm12
	movss	%xmm12, 6980(%rbx)
	jmp	.L8087
.L8548:
	movaps	%xmm0, %xmm2
	cmpnless	%xmm8, %xmm2
	andps	%xmm2, %xmm0
	jmp	.L8092
.L8535:
	cmpb	$0, 287(%rbx)
	jne	.L7941
	jmp	.L7943
.L7929:
	cmpb	$0, 144(%rsp)
	je	.L7930
	testb	%dl, %dl
	je	.L7930
	cmpb	$0, 944(%rbx)
	je	.L7930
	leaq	6984(%rbx), %r12
	leaq	6912(%rbx), %r15
	movl	$65548, %r8d
	movq	%r12, %rdx
	movq	%r15, %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	movl	$196621, %r8d
	movq	%r12, %rdx
	movq	%r15, %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
.L7932:
	cmpb	$0, 10209(%rbx)
	je	.L7938
	movzbl	272(%rbx), %eax
	jmp	.L7931
	.p2align 4,,7
.L8533:
	movl	592(%rsp), %eax
	leaq	6920(%rbx), %rcx
	leal	1(%rax), %edx
	call	_ZN8ImVectorItE6resizeEi
	movq	$0, 272(%rsp)
	movl	6920(%rbx), %edx
	movq	%rbp, %r9
	movq	6928(%rbx), %rcx
	movq	%r14, %r8
	call	_Z17ImTextStrFromUtf8PtiPKcS1_PS1_.constprop.167
	movq	272(%rsp), %rdx
	movl	%eax, 6972(%rbx)
	subq	%r14, %rdx
	cmpl	%eax, 6984(%rbx)
	movl	%edx, 6968(%rbx)
	movl	%eax, %edx
	cmovle	6984(%rbx), %edx
	cmpl	%eax, 6988(%rbx)
	movl	%edx, 6984(%rbx)
	movl	%eax, %edx
	cmovle	6988(%rbx), %edx
	cmpl	%eax, 6992(%rbx)
	cmovle	6992(%rbx), %eax
	movl	%edx, 6988(%rbx)
	movl	%eax, 6992(%rbx)
	jmp	.L7925
.L8544:
	movzbl	285(%rbx), %r10d
	testb	%r10b, %r10b
	jne	.L7955
	cmpb	$0, 112(%rsp)
	je	.L7959
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r8d, 164(%rsp)
	movl	56(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	164(%rsp), %r8d
	jne	.L7960
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	%r8d, 164(%rsp)
	xorl	%edi, %edi
	movl	60(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	%eax, %r15d
	movl	164(%rsp), %r8d
	je	.L8195
	jmp	.L7962
	.p2align 4,,7
.L7912:
	movq	GImGui(%rip), %rax
	jmp	.L7914
.L8243:
	movaps	%xmm8, %xmm14
	jmp	.L8068
.L8538:
	movss	.LC29(%rip), %xmm7
	movss	192(%rsp), %xmm15
	movss	%xmm7, 132(%rsp)
	jmp	.L8097
.L8052:
	movq	GImGui(%rip), %rax
	movaps	%xmm8, %xmm10
	movq	5936(%rax), %rdi
	movss	5944(%rax), %xmm2
	divss	(%rdi), %xmm2
	jmp	.L8057
.L7933:
	testb	%al, %al
	je	.L7935
	testb	%dl, %dl
	jne	.L7938
	ucomiss	860(%rbx), %xmm8
	jp	.L7937
	jne	.L7937
	ucomiss	864(%rbx), %xmm8
	jp	.L7937
	.p2align 4,,3
	je	.L7938
.L7937:
	leaq	6912(%rbx), %rcx
	call	_ZN8ImGuiStbL21stb_text_locate_coordEP18ImGuiTextEditStateff
	movl	6992(%rbx), %ecx
	cmpl	%ecx, 6988(%rbx)
	je	.L8551
.L7939:
	movl	%eax, 6992(%rbx)
	movl	%eax, 6984(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	movb	$1, 10208(%rbx)
	jmp	.L7932
.L8561:
	movq	624(%rsp), %r9
	movq	616(%rsp), %r8
	movq	%rbp, %rcx
	movl	608(%rsp), %edx
	movl	$10, 272(%rsp)
	call	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	je	.L7986
	movl	272(%rsp), %r8d
	movq	120(%rsp), %rcx
	leaq	6984(%rbx), %rdx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
.L7986:
	movb	$0, 112(%rsp)
.L7987:
	movl	6920(%rbx), %eax
	leaq	6952(%rbx), %rcx
	leal	0(,%rax,4), %edx
	call	_ZN8ImVectorIcE6resizeEi
	movl	6952(%rbx), %edx
	movq	6960(%rbx), %rcx
	xorl	%r9d, %r9d
	movq	6928(%rbx), %r8
	call	_Z15ImTextStrToUtf8PciPKtS1_
	testl	$448, 608(%rsp)
	jne	.L8025
	jmp	.L8480
.L8545:
	cmpb	$0, 112(%rsp)
	cmove	%r11d, %r8d
	jmp	.L7962
.L8047:
	leal	2(%rsi), %r10d
	movl	%edx, %edi
	jmp	.L8050
.L8546:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	68(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	andb	%r12b, %al
	movb	%al, 156(%rsp)
	jne	.L8158
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	80(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L8552
	cmpb	$0, 285(%rbx)
	movl	144(%rsp), %eax
	cmovne	96(%rsp), %eax
.L8477:
	movq	120(%rsp), %rcx
	leaq	6984(%rbx), %rdx
	movl	%eax, %r8d
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movl	92(%rsp), %ecx
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	movb	$0, 112(%rsp)
	testl	%ecx, %ecx
	sete	96(%rsp)
	jmp	.L8178
	.p2align 4,,7
.L8550:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	52(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L8028
	xorl	%r8d, %r8d
	movl	$64, %edx
	jmp	.L8183
.L8270:
	movss	.LC28(%rip), %xmm4
	movl	$1, %r10d
	movss	%xmm4, 144(%rsp)
	movaps	%xmm4, %xmm3
	xorl	%r9d, %r9d
	movl	$-999, %r11d
	jmp	.L8044
.L8272:
	movss	.LC29(%rip), %xmm7
	leaq	256(%rsp), %rsi
	movaps	%xmm13, %xmm15
	movss	%xmm7, 132(%rsp)
	jmp	.L8095
.L8547:
	testb	%r15b, %r15b
	movl	96(%rsp), %eax
	cmove	156(%rsp), %eax
	movq	120(%rsp), %rcx
	leaq	6984(%rbx), %rdx
	movl	%eax, %r8d
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movl	92(%rsp), %r10d
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	movzbl	164(%rsp), %r12d
	movb	$0, 112(%rsp)
	testl	%r10d, %r10d
	sete	96(%rsp)
	jmp	.L8178
.L8158:
	movzbl	285(%rbx), %r12d
	testb	%r12b, %r12b
	je	.L8553
	movq	GImGui(%rip), %rax
	movss	100(%r13), %xmm1
	movss	5944(%rbx), %xmm2
	movl	92(%rsp), %r9d
	addss	%xmm1, %xmm2
	movb	$0, 112(%rsp)
	movq	6008(%rax), %rax
	addss	220(%r13), %xmm1
	testl	%r9d, %r9d
	sete	96(%rsp)
	movss	56(%rax), %xmm0
	subss	48(%rax), %xmm0
	subss	128(%rax), %xmm0
	minss	%xmm0, %xmm2
	subss	%xmm2, %xmm1
	movss	%xmm2, 100(%r13)
	movss	%xmm1, 220(%r13)
	jmp	.L8178
	.p2align 4,,7
.L8549:
	leaq	.LC15(%rip), %rdx
	leaq	.LC317(%rip), %rcx
	movl	$7992, %r8d
	call	_assert
	jmp	.L8027
.L8534:
	leaq	6912(%rbx), %rcx
	call	_ZN8ImGuiStbL21stb_text_locate_coordEP18ImGuiTextEditStateff
	movb	$0, 6999(%rbx)
	movl	%eax, 6984(%rbx)
	movl	%eax, 6988(%rbx)
	movl	%eax, 6992(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	jmp	.L7932
.L8182:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	64(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L8554
	movl	$3, %r8d
	movl	$128, %edx
	jmp	.L8183
.L8554:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	68(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L8206
	movl	$4, %r8d
	movl	$128, %edx
	jmp	.L8183
.L8232:
	movzbl	132(%rsp), %eax
	movb	%al, 96(%rsp)
	jmp	.L8039
.L8536:
	movl	%r10d, %edi
	movb	$0, 112(%rsp)
	jmp	.L8195
.L8543:
	cmpb	$0, 876(%rbx)
	je	.L7923
	movq	GImGui(%rip), %rax
	movb	$0, 112(%rsp)
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	movl	6068(%rbx), %eax
	jmp	.L7922
.L8552:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	84(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L7972
	cmpb	$0, 285(%rbx)
	movl	136(%rsp), %eax
	cmovne	132(%rsp), %eax
	jmp	.L8477
.L7923:
	movl	608(%rsp), %eax
	movb	$0, 112(%rsp)
	andl	$16384, %eax
	movl	%eax, 92(%rsp)
	jmp	.L8210
.L7972:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	88(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	movl	92(%rsp), %edx
	testl	%edx, %edx
	sete	%r15b
	andb	%r15b, %al
	movb	%al, 96(%rsp)
	je	.L8555
	movl	148(%rsp), %r8d
	leaq	6984(%rbx), %rdx
.L8483:
	movq	120(%rsp), %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	movb	$0, 112(%rsp)
	jmp	.L8178
.L8233:
	movss	.LC28(%rip), %xmm4
	movl	$1, %r10d
	movss	%xmm4, 144(%rsp)
	movaps	%xmm4, %xmm3
	movl	$1, %r11d
	jmp	.L8044
.L8238:
	movaps	%xmm8, %xmm10
	jmp	.L8057
.L8555:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	92(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	andb	%r15b, %al
	movb	%al, 96(%rsp)
	je	.L8556
	movl	6992(%rbx), %eax
	cmpl	%eax, 6988(%rbx)
	je	.L8165
.L8474:
	leaq	6984(%rbx), %rdi
.L7977:
	movl	152(%rsp), %r8d
	movq	%rdi, %rdx
	jmp	.L8483
.L8542:
	movss	196(%rsp), %xmm4
	movss	%xmm4, 92(%rsp)
	jmp	.L8097
.L8271:
	movss	.LC29(%rip), %xmm7
	xorl	%esi, %esi
	movaps	%xmm13, %xmm15
	movss	%xmm7, 132(%rsp)
	jmp	.L8095
.L8551:
	movl	6984(%rbx), %edx
	movl	%edx, 6988(%rbx)
	jmp	.L7939
.L8553:
	testb	%r15b, %r15b
	movl	132(%rsp), %eax
	cmove	160(%rsp), %eax
	movq	120(%rsp), %rcx
	leaq	6984(%rbx), %rdx
	movl	%eax, %r8d
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movl	92(%rsp), %r8d
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	movzbl	156(%rsp), %r12d
	movb	$0, 112(%rsp)
	testl	%r8d, %r8d
	sete	96(%rsp)
	jmp	.L8178
.L8165:
	cmpb	$0, 112(%rsp)
	leaq	6984(%rbx), %rdi
	movl	$196620, %r8d
	jne	.L8473
	cmpb	$0, 192(%rbx)
	je	.L8474
	cmpb	$0, 288(%rbx)
	je	.L8474
	cmpb	$0, 287(%rbx)
	jne	.L8474
	cmpb	$0, 285(%rbx)
	leaq	6984(%rbx), %rdi
	jne	.L7977
	movl	$196612, %r8d
.L8473:
	movq	120(%rsp), %rcx
	movq	%rdi, %rdx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	jmp	.L7977
.L8556:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	96(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movb	%al, 96(%rsp)
	je	.L8557
	movl	608(%rsp), %eax
	andl	$2048, %eax
	testl	%esi, %esi
	je	.L7982
	testl	%eax, %eax
	je	.L7983
	cmpb	$0, 285(%rbx)
	jne	.L7984
.L7982:
	movq	GImGui(%rip), %rax
	movb	%r15b, 96(%rsp)
	movb	$1, 112(%rsp)
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	jmp	.L8178
.L8557:
	testl	$1024, 608(%rsp)
	jne	.L8558
.L7988:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	100(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movb	%al, 132(%rsp)
	jne	.L8168
	testb	%dil, %dil
	jne	.L8559
.L8479:
	movb	%r15b, 96(%rsp)
	movb	$0, 112(%rsp)
	jmp	.L8178
	.p2align 4,,7
.L8168:
	movl	92(%rsp), %r15d
	movq	GImGui(%rip), %rax
	testl	%r15d, %r15d
	movl	$0, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	movq	$0, 6088(%rax)
	jne	.L8482
	movl	592(%rsp), %edi
	testl	%edi, %edi
	jle	.L8227
	movslq	592(%rsp), %rdi
	movq	6944(%rbx), %rdx
	movq	%r14, %rcx
	movq	%rdi, %r8
	call	strncpy
	movb	$0, -1(%r14,%rdi)
	movb	$0, 112(%rsp)
	movb	$1, 120(%rsp)
	jmp	.L8024
.L8227:
	movb	$0, 112(%rsp)
	movb	$1, 120(%rsp)
	jmp	.L8024
.L8558:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	52(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L7988
	cmpb	$0, 285(%rbx)
	jne	.L7988
	cmpb	$0, 286(%rbx)
	jne	.L7988
	cmpb	%r15b, 287(%rbx)
	jnb	.L7988
	movq	624(%rsp), %r9
	movq	616(%rsp), %r8
	movq	%rbp, %rcx
	movl	608(%rsp), %edx
	movl	$9, 272(%rsp)
	call	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	je	.L8479
	movl	272(%rsp), %r8d
	movq	120(%rsp), %rcx
	leaq	6984(%rbx), %rdx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	jmp	.L8479
.L8559:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	124(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	andb	%r15b, %al
	movb	%al, 96(%rsp)
	je	.L8560
	leaq	6984(%rbx), %rdx
	movl	$65546, %r8d
.L8478:
	movq	120(%rsp), %rcx
	call	_ZN8ImGuiStbL16stb_textedit_keyEP18ImGuiTextEditStatePNS_17STB_TexteditStateEi
	movl	6984(%rbx), %eax
	movb	$1, 10208(%rbx)
	movl	$0xbe99999a, 10204(%rbx)
	movb	$0, 112(%rsp)
	movl	%eax, 6992(%rbx)
	movl	%eax, 6988(%rbx)
	jmp	.L8178
.L7983:
	cmpb	$0, 285(%rbx)
	jne	.L7982
.L7984:
	movl	92(%rsp), %eax
	testl	%eax, %eax
	je	.L8561
	movb	$0, 96(%rsp)
	movb	$0, 112(%rsp)
	jmp	.L7985
.L8560:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	120(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	andb	%r15b, %al
	movb	%al, 96(%rsp)
	je	.L8562
	leaq	6984(%rbx), %rdx
	movl	$65547, %r8d
	jmp	.L8478
.L8562:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	104(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L8563
	movl	6972(%rbx), %eax
	movl	$0, 6988(%rbx)
	movb	$0, 6999(%rbx)
	movb	$1, 10208(%rbx)
	movl	%eax, 6992(%rbx)
	movl	%eax, 6984(%rbx)
	jmp	.L8479
.L8563:
	movl	128(%rsp), %eax
	testl	%eax, %eax
	je	.L8564
.L8172:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	112(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	andb	%r15b, %al
	movb	%al, 96(%rsp)
	je	.L8479
	movq	GImGui(%rip), %rdi
	movl	$2, %ecx
	leaq	.LC91(%rip), %r15
	movq	208(%rdi), %rax
	testq	%rax, %rax
	je	.L8180
	movq	224(%rdi), %rcx
	call	*%rax
	testq	%rax, %rax
	movq	%rax, %r15
	movb	$0, 112(%rsp)
	je	.L8178
	movq	%rax, %rcx
	movq	GImGui(%rip), %rdi
	call	strlen
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
.L8180:
	incl	844(%rdi)
	call	*232(%rdi)
	xorl	%edi, %edi
	movq	%rax, 112(%rsp)
.L8007:
	cmpb	$0, (%r15)
	je	.L8008
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movq	%rbp, %rcx
	call	_Z18ImTextCharFromUtf8PjPKcS1_
	cltq
	addq	%rax, %r15
	movl	272(%rsp), %eax
	testl	%eax, %eax
	je	.L8008
	cmpl	$65535, %eax
	ja	.L8007
	movq	624(%rsp), %r9
	movq	616(%rsp), %r8
	movq	%rbp, %rcx
	movl	608(%rsp), %edx
	call	_ZL24InputTextFilterCharacterPjiPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	je	.L8007
	movl	272(%rsp), %edx
	movq	112(%rsp), %rcx
	movslq	%edi, %rax
	incl	%edi
	movw	%dx, (%rcx,%rax,2)
	jmp	.L8007
.L8564:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	116(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L7997
	testb	%r15b, %r15b
	je	.L7997
.L8000:
	testl	%esi, %esi
	.p2align 4,,4
	jne	.L8565
.L7998:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	116(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	movl	%eax, %edi
	je	.L8566
	movl	6988(%rbx), %eax
	movl	6992(%rbx), %edx
	cmpl	%edx, %eax
	je	.L8567
	cmpq	$0, 216(%rbx)
	je	.L8197
.L8196:
	cmpl	%edx, %eax
	movl	%edx, %ecx
	cmovle	%eax, %ecx
	cmovl	%edx, %eax
	movslq	%ecx, %rdx
	leaq	(%rdx,%rdx), %r10
.L8177:
	movl	%eax, %edx
	movq	%r10, 96(%rsp)
	movl	%eax, 112(%rsp)
	subl	%ecx, %edx
	leaq	6952(%rbx), %rcx
	leal	1(,%rdx,4), %edx
	call	_ZN8ImVectorIcE6resizeEi
	movslq	112(%rsp), %rax
	movq	6928(%rbx), %r8
	movq	96(%rsp), %r10
	movl	6952(%rbx), %edx
	movq	6960(%rbx), %rcx
	leaq	(%r8,%rax,2), %r9
	addq	%r10, %r8
	call	_Z15ImTextStrToUtf8PciPKtS1_
	movq	GImGui(%rip), %rcx
	movq	6960(%rbx), %rdx
	movq	216(%rcx), %rax
	testq	%rax, %rax
	je	.L8005
	movq	224(%rcx), %rcx
	call	*%rax
.L8005:
	testb	%dil, %dil
	je	.L8479
.L8197:
	movl	6988(%rbx), %eax
	movl	6992(%rbx), %ecx
.L8176:
	cmpl	%ecx, %eax
	movb	$1, 10208(%rbx)
	leaq	6984(%rbx), %rdx
	je	.L8479
	movq	120(%rsp), %rcx
	call	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
	movb	$0, 6999(%rbx)
	movb	%r15b, 96(%rsp)
	movb	$0, 112(%rsp)
	jmp	.L8178
.L8567:
	xorl	%eax, %eax
	cmpq	$0, 216(%rbx)
	movl	6972(%rbx), %ecx
	movl	$0, 6988(%rbx)
	movb	$0, 6999(%rbx)
	movl	%ecx, 6992(%rbx)
	movl	%ecx, 6984(%rbx)
	movl	%ecx, %edx
	je	.L8176
.L8175:
	cmpl	%edx, %eax
	jne	.L8196
	movl	6972(%rbx), %eax
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	jmp	.L8177
.L8566:
	cmpq	$0, 216(%rbx)
	je	.L8479
	movl	6988(%rbx), %eax
	movl	6992(%rbx), %edx
	jmp	.L8175
.L8565:
	movl	6992(%rbx), %eax
	cmpl	%eax, 6988(%rbx)
	jne	.L7998
	jmp	.L8172
.L7997:
	movq	GImGui(%rip), %rax
	movl	$1, %edx
	movl	108(%rax), %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	jne	.L8000
	jmp	.L8172
.L8008:
	movq	112(%rsp), %rcx
	movslq	%edi, %rax
	testl	%edi, %edi
	movw	$0, (%rcx,%rax,2)
	je	.L8012
	movl	6988(%rbx), %eax
	movl	6992(%rbx), %r8d
	leaq	6984(%rbx), %rdx
	movl	6972(%rbx), %ecx
	cmpl	%r8d, %eax
	je	.L8475
	cmpl	%eax, %ecx
	jge	.L8015
	cmpl	%r8d, %ecx
	movl	%ecx, 6988(%rbx)
	movl	%ecx, %eax
	jge	.L8016
.L8198:
	movl	%ecx, 6992(%rbx)
	movl	%ecx, %r8d
.L8016:
	cmpl	%r8d, %eax
	je	.L8568
.L8475:
	movl	6984(%rbx), %eax
.L8014:
	cmpl	%eax, %ecx
	jge	.L8018
	movl	%ecx, 6984(%rbx)
.L8018:
	movq	120(%rsp), %r15
	movq	%r15, %rcx
	call	_ZN8ImGuiStbL29stb_textedit_delete_selectionEP18ImGuiTextEditStatePNS_17STB_TexteditStateE
	movl	6984(%rbx), %edx
	movq	112(%rsp), %r8
	movl	%edi, %r9d
	movq	%r15, %rcx
	call	_ZN8ImGuiStbL24STB_TEXTEDIT_INSERTCHARSEP18ImGuiTextEditStateiPKti
	testb	%al, %al
	jne	.L8569
	movzwl	10194(%rbx), %eax
	testw	%ax, %ax
	je	.L8021
	decl	%eax
	movw	%ax, 10194(%rbx)
.L8021:
	movb	$1, 10208(%rbx)
.L8012:
	cmpq	$0, 112(%rsp)
	movq	GImGui(%rip), %rax
	je	.L8023
	decl	844(%rax)
.L8023:
	movq	112(%rsp), %rcx
	call	*240(%rax)
	movb	$0, 112(%rsp)
	jmp	.L8178
.L8568:
	movl	%eax, 6984(%rbx)
	jmp	.L8014
.L8569:
	leaq	7008(%rbx), %rcx
	xorl	%edx, %edx
	movl	6984(%rbx), %r15d
	call	_ZN8ImGuiStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi
	testq	%rax, %rax
	je	.L8020
	movl	%r15d, (%rax)
	movw	$0, 4(%rax)
	movw	%di, 6(%rax)
	movw	$-1, 8(%rax)
.L8020:
	addl	%edi, 6984(%rbx)
	movb	$0, 6999(%rbx)
	jmp	.L8021
.L8015:
	cmpl	%r8d, %ecx
	jl	.L8198
	jmp	.L8475
	.seh_endproc
	.section .rdata,"dr"
.LC323:
	.ascii "%.*d\0"
.LC324:
	.ascii "%.*f\0"
.LC325:
	.ascii "g.ActiveId == id\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji
	.def	_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji
_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji:
.LFB651:
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
	movq	GImGui(%rip), %rbx
	movq	%rdx, %r13
	movq	%r9, %r12
	movq	%rcx, %rsi
	movl	%r8d, %ebp
	movl	232(%rsp), %r9d
	movl	10328(%rbx), %edx
	movq	6008(%rbx), %rax
	testl	%edx, %edx
	movb	$1, 138(%rax)
	movl	%edx, 6068(%rbx)
	movb	$0, 6078(%rbx)
	movb	$1, 6077(%rbx)
	je	.L8571
	movb	$1, 6076(%rbx)
.L8571:
	movq	%rax, 6088(%rbx)
	movl	$0, 6056(%rbx)
	leaq	96(%rsp), %rdi
	movb	$0, 6060(%rbx)
	decl	688(%rax)
	decl	692(%rax)
	testl	%ebp, %ebp
	jne	.L8572
	testl	%r9d, %r9d
	js	.L8586
	movl	(%r12), %eax
	leaq	.LC323(%rip), %r8
	movl	$32, %edx
	movq	%rdi, %rcx
	movl	%eax, 32(%rsp)
	call	_Z14ImFormatStringPciPKcz
.L8574:
	movss	12(%rsi), %xmm0
	leaq	80(%rsp), %r9
	movss	8(%rsi), %xmm1
	subss	4(%rsi), %xmm0
	subss	(%rsi), %xmm1
	movq	%rdi, %rdx
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$17, 32(%rsp)
	movl	$32, %r8d
	movq	%r13, %rcx
	movss	%xmm0, 84(%rsp)
	movss	%xmm1, 80(%rsp)
	call	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	movl	10328(%rbx), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	jne	.L8576
	movl	6068(%rbx), %eax
	cmpl	224(%rsp), %eax
	je	.L8577
	leaq	.LC15(%rip), %rdx
	leaq	.LC325(%rip), %rcx
	movl	$6411, %r8d
	call	_assert
	movl	6068(%rbx), %eax
.L8577:
	movl	%eax, 10328(%rbx)
	movl	224(%rsp), %ecx
	movq	GImGui(%rip), %rax
	movl	%ecx, 6056(%rax)
	movb	$0, 6060(%rax)
.L8578:
	xorl	%eax, %eax
	testb	%sil, %sil
	je	.L8579
	movq	GImGui(%rip), %rax
	movq	%r12, %r9
	movl	%ebp, %r8d
	movq	%rdi, %rcx
	movq	6944(%rax), %rdx
	movq	$0, 32(%rsp)
	call	_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_
.L8579:
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L8572:
	cmpl	$1, %ebp
	jne	.L8574
	testl	%r9d, %r9d
	js	.L8587
	cvtss2sd	(%r12), %xmm2
	leaq	.LC324(%rip), %r8
	movl	$32, %edx
	movq	%rdi, %rcx
	movsd	%xmm2, 32(%rsp)
	call	_Z14ImFormatStringPciPKcz
	jmp	.L8574
	.p2align 4,,7
.L8576:
	cmpl	6068(%rbx), %edx
	je	.L8578
	movl	$0, 10328(%rbx)
	jmp	.L8578
	.p2align 4,,7
.L8586:
	movl	(%r12), %r9d
	leaq	.LC12(%rip), %r8
	movl	$32, %edx
	movq	%rdi, %rcx
	call	_Z14ImFormatStringPciPKcz
	jmp	.L8574
	.p2align 4,,7
.L8587:
	cvtss2sd	(%r12), %xmm0
	leaq	.LC13(%rip), %r8
	movl	$32, %edx
	movq	%rdi, %rcx
	movsd	%xmm0, 72(%rsp)
	movq	72(%rsp), %r9
	movsd	%xmm0, %xmm3
	call	_Z14ImFormatStringPciPKcz
	jmp	.L8574
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	.def	_ZN5ImGui11SliderFloatEPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11SliderFloatEPKcPfffS1_f
_ZN5ImGui11SliderFloatEPKcPfffS1_f:
.LFB656:
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
	movaps	%xmm6, 224(%rsp)
	.seh_savexmm	%xmm6, 224
	movaps	%xmm7, 240(%rsp)
	.seh_savexmm	%xmm7, 240
	movaps	%xmm8, 256(%rsp)
	.seh_savexmm	%xmm8, 256
	movaps	%xmm9, 272(%rsp)
	.seh_savexmm	%xmm9, 272
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movq	GImGui(%rip), %rsi
	movaps	%xmm2, %xmm8
	movaps	%xmm3, %xmm9
	movq	400(%rsp), %rdi
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L8627
.L8618:
	movaps	224(%rsp), %xmm6
	movaps	240(%rsp), %xmm7
	movaps	256(%rsp), %xmm8
	movaps	272(%rsp), %xmm9
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
.L8627:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movl	%eax, 108(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	movq	%rbp, %rcx
	movaps	%xmm0, %xmm6
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movss	5160(%rsi), %xmm1
	movl	%eax, 64(%rsp)
	addss	%xmm1, %xmm1
	shrq	$32, %rax
	addss	192(%rbx), %xmm6
	movss	64(%rsp), %xmm7
	movq	%rax, 64(%rsp)
	movq	192(%rbx), %rax
	addss	64(%rsp), %xmm1
	movq	%rax, 128(%rsp)
	movaps	%xmm6, %xmm0
	movss	%xmm6, 136(%rsp)
	xorps	%xmm6, %xmm6
	addss	196(%rbx), %xmm1
	ucomiss	%xmm6, %xmm7
	movaps	%xmm6, %xmm2
	movss	%xmm1, 140(%rsp)
	jbe	.L8590
	movss	5176(%rsi), %xmm2
	addss	%xmm7, %xmm2
.L8590:
	addss	%xmm2, %xmm0
	movq	128(%rsp), %rax
	leaq	108(%rsp), %rdx
	addss	%xmm6, %xmm1
	leaq	144(%rsp), %rcx
	movq	%rax, 144(%rsp)
	movss	%xmm0, 152(%rsp)
	movss	%xmm1, 156(%rsp)
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L8628
	movl	108(%rsp), %r15d
	leaq	128(%rsp), %r13
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	movl	%r15d, %edx
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	movl	%eax, %r14d
	je	.L8593
	movq	GImGui(%rip), %rax
	movl	%r15d, 6056(%rax)
	movb	$0, 6060(%rax)
.L8593:
	leaq	.LC172(%rip), %rax
	testq	%rdi, %rdi
	movl	$3, %edx
	cmove	%rax, %rdi
	movq	%rdi, %rcx
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
	xorl	%edx, %edx
	movl	%eax, %r15d
	movl	108(%rsp), %eax
	cmpl	%eax, 6068(%rsi)
	movl	$1, %r8d
	movq	%rbx, %rcx
	sete	%dl
	call	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb
	testb	%al, %al
	je	.L8629
	movl	108(%rsp), %edx
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movl	%edx, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	je	.L8625
	movb	$1, 6076(%rax)
.L8625:
	movq	%rbx, 6088(%rax)
	movq	%rbx, %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
.L8598:
	movl	108(%rsp), %eax
	movl	$0, 10328(%rsi)
.L8600:
	movl	%r15d, 40(%rsp)
	movl	%eax, 32(%rsp)
	movq	%r12, %r9
	movl	$1, %r8d
	movq	%rbp, %rdx
	movq	%r13, %rcx
	call	_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji
	jmp	.L8618
	.p2align 4,,7
.L8629:
	testb	%r14b, %r14b
	je	.L8596
	cmpb	$0, 876(%rsi)
	jne	.L8597
.L8596:
	movl	6068(%rsi), %eax
	cmpl	108(%rsp), %eax
	jne	.L8601
	cmpl	10328(%rsi), %eax
	je	.L8600
.L8601:
	movss	156(%rsp), %xmm0
	leaq	160(%rsp), %r14
	movss	152(%rsp), %xmm2
	subss	148(%rsp), %xmm0
	subss	144(%rsp), %xmm2
	movss	5160(%rsi), %xmm1
	movq	%r14, %rcx
	movss	%xmm0, 164(%rsp)
	movss	%xmm2, 160(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movss	408(%rsp), %xmm0
	movq	%r12, %r8
	movl	108(%rsp), %edx
	movss	%xmm0, 40(%rsp)
	movq	%r13, %rcx
	movaps	%xmm8, %xmm3
	movss	%xmm9, 32(%rsp)
	movl	$0, 56(%rsp)
	movl	%r15d, 48(%rsp)
	call	_ZN5ImGui14SliderBehaviorERK6ImRectjPffffii
	cvtss2sd	(%r12), %xmm0
	movq	%rdi, %r8
	movl	$64, %edx
	movq	%r14, %rcx
	movl	%eax, %ebx
	movsd	%xmm0, 64(%rsp)
	movq	64(%rsp), %r9
	movsd	%xmm0, %xmm3
	call	_Z14ImFormatStringPciPKcz.constprop.166
	leaq	112(%rsp), %rcx
	cltq
	leaq	8(%r13), %rdx
	leaq	(%r14,%rax), %r9
	movq	$0, 48(%rsp)
	movq	$0, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r14, %r8
	movq	%r13, %rcx
	movl	$0x3f000000, 112(%rsp)
	movl	$0x3f000000, 116(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	ucomiss	%xmm6, %xmm7
	movl	%ebx, %eax
	jbe	.L8618
	movss	136(%rsp), %xmm0
	movl	$1, %r9d
	xorl	%r8d, %r8d
	addss	5176(%rsi), %xmm0
	movq	%rbp, %rdx
	movss	%xmm0, 64(%rsp)
	movl	64(%rsp), %ecx
	movss	132(%rsp), %xmm0
	addss	5160(%rsi), %xmm0
	movss	%xmm0, 80(%rsp)
	movq	80(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	movl	%ebx, %eax
	jmp	.L8618
	.p2align 4,,7
.L8628:
	movss	156(%rsp), %xmm0
	leaq	160(%rsp), %rcx
	movss	152(%rsp), %xmm2
	subss	148(%rsp), %xmm0
	subss	144(%rsp), %xmm2
	movss	5160(%rsi), %xmm1
	movb	%al, 64(%rsp)
	movss	%xmm0, 164(%rsp)
	movss	%xmm2, 160(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movzbl	64(%rsp), %eax
	jmp	.L8618
	.p2align 4,,7
.L8597:
	movl	108(%rsp), %edx
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movl	%edx, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	je	.L8624
	movb	$1, 6076(%rax)
.L8624:
	movq	%rbx, 6088(%rax)
	movq	%rbx, %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	cmpb	$0, 285(%rsi)
	je	.L8596
	jmp	.L8598
	.seh_endproc
	.section .rdata,"dr"
.LC328:
	.ascii "%.0f deg\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui11SliderAngleEPKcPfff
	.def	_ZN5ImGui11SliderAngleEPKcPfff;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11SliderAngleEPKcPfff
_ZN5ImGui11SliderAngleEPKcPfff:
.LFB658:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	leaq	.LC328(%rip), %rax
	movq	%rdx, %rbx
	movss	(%rdx), %xmm0
	leaq	60(%rsp), %rdx
	movl	$0x3f800000, 40(%rsp)
	movss	.LC326(%rip), %xmm7
	movq	%rax, 32(%rsp)
	mulss	%xmm7, %xmm0
	movss	.LC327(%rip), %xmm6
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
.LFB659:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	112(%rsp), %rax
	cvtsi2ss	%r9d, %xmm3
	movq	%rdx, %rbx
	leaq	.LC173(%rip), %rdx
	cvtsi2ss	%r8d, %xmm2
	movl	$0x3f800000, 40(%rsp)
	cvtsi2ss	(%rbx), %xmm0
	testq	%rax, %rax
	cmove	%rdx, %rax
	leaq	60(%rsp), %rdx
	movq	%rax, 32(%rsp)
	movss	%xmm0, 60(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	movss	60(%rsp), %xmm0
	cvttss2si	%xmm0, %edx
	movl	%edx, (%rbx)
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC329:
	.ascii "##v\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui12SliderFloatNEPKcPfiffS1_f
	.def	_ZN5ImGui12SliderFloatNEPKcPfiffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SliderFloatNEPKcPfiffS1_f
_ZN5ImGui12SliderFloatNEPKcPfiffS1_f:
.LFB661:
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
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	movaps	%xmm9, 112(%rsp)
	.seh_savexmm	%xmm9, 112
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rcx, %r14
	movl	%r8d, %r13d
	movq	GImGui(%rip), %r12
	movaps	%xmm3, %xmm6
	movss	240(%rsp), %xmm7
	movq	248(%rsp), %r15
	movss	256(%rsp), %xmm8
	movq	6008(%r12), %rcx
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	je	.L8655
.L8634:
	movaps	64(%rsp), %xmm6
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
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L8655:
	movq	%rdx, 56(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%r13d, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.148
	testl	%r13d, %r13d
	jle	.L8647
	movq	56(%rsp), %rdx
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	xorps	%xmm9, %xmm9
	movq	%rdx, %rdi
	jmp	.L8640
	.p2align 4,,7
.L8639:
	decl	%eax
	incl	%esi
	addq	$4, %rdi
	movl	%eax, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	%esi, %r13d
	je	.L8635
.L8640:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	movss	%xmm8, 40(%rsp)
	movaps	%xmm7, %xmm3
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r15, 32(%rsp)
	movq	%rdi, %rdx
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	orl	%eax, %ebp
	movq	GImGui(%rip), %rax
	movss	5176(%r12), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L8636
	ucomiss	%xmm0, %xmm9
	ja	.L8656
.L8637:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L8636:
	movl	496(%rbx), %eax
	testl	%eax, %eax
	jg	.L8639
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %eax
	jmp	.L8639
	.p2align 4,,7
.L8656:
	movss	5168(%rax), %xmm0
	jmp	.L8637
.L8647:
	xorl	%ebp, %ebp
	.p2align 4,,7
.L8635:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r14
	je	.L8648
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L8643
	jmp	.L8641
	.p2align 4,,7
.L8644:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8641
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8641
.L8643:
	cmpb	$35, %al
	jne	.L8644
	cmpb	$35, 1(%rdx)
	jne	.L8644
	.p2align 4,,7
.L8641:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%ebp, %eax
	jmp	.L8634
.L8648:
	movq	%r14, %rdx
	.p2align 4,,3
	jmp	.L8641
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
	.def	_ZN5ImGui12SliderFloat2EPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
_ZN5ImGui12SliderFloat2EPKcPfffS1_f:
.LFB662:
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
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	movaps	%xmm9, 112(%rsp)
	.seh_savexmm	%xmm9, 112
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rcx, %r13
	movaps	%xmm2, %xmm6
	movq	GImGui(%rip), %r12
	movaps	%xmm3, %xmm7
	movq	224(%rsp), %r14
	movss	232(%rsp), %xmm8
	movq	6008(%r12), %rcx
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	je	.L8677
.L8658:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
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
.L8677:
	movq	%rdx, 56(%rsp)
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorps	%xmm9, %xmm9
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.147
	movq	56(%rsp), %rdx
	movq	%rdx, %rdi
	jmp	.L8663
	.p2align 4,,7
.L8662:
	decl	%ecx
	incl	%esi
	addq	$4, %rdi
	movl	%ecx, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$2, %esi
	je	.L8678
.L8663:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	movss	%xmm8, 40(%rsp)
	movaps	%xmm7, %xmm3
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r14, 32(%rsp)
	movq	%rdi, %rdx
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	orl	%eax, %ebp
	movq	GImGui(%rip), %rax
	movss	5176(%r12), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L8659
	ucomiss	%xmm0, %xmm9
	ja	.L8679
.L8660:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L8659:
	movl	496(%rbx), %ecx
	testl	%ecx, %ecx
	jg	.L8662
	leaq	.LC14(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %ecx
	jmp	.L8662
	.p2align 4,,7
.L8679:
	movss	5168(%rax), %xmm0
	jmp	.L8660
	.p2align 4,,7
.L8678:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r13
	je	.L8670
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L8666
	jmp	.L8664
	.p2align 4,,7
.L8667:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8664
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8664
.L8666:
	cmpb	$35, %al
	jne	.L8667
	cmpb	$35, 1(%rdx)
	jne	.L8667
	.p2align 4,,7
.L8664:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%ebp, %eax
	jmp	.L8658
.L8670:
	movq	%r13, %rdx
	.p2align 4,,3
	jmp	.L8664
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12SliderFloat3EPKcPfffS1_f
	.def	_ZN5ImGui12SliderFloat3EPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SliderFloat3EPKcPfffS1_f
_ZN5ImGui12SliderFloat3EPKcPfffS1_f:
.LFB663:
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
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	movaps	%xmm9, 112(%rsp)
	.seh_savexmm	%xmm9, 112
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rcx, %r13
	movaps	%xmm2, %xmm6
	movq	GImGui(%rip), %r12
	movaps	%xmm3, %xmm7
	movq	224(%rsp), %r14
	movss	232(%rsp), %xmm8
	movq	6008(%r12), %rcx
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	je	.L8700
.L8681:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
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
.L8700:
	movq	%rdx, 56(%rsp)
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorps	%xmm9, %xmm9
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.146
	movq	56(%rsp), %rdx
	movq	%rdx, %rdi
	jmp	.L8686
	.p2align 4,,7
.L8685:
	decl	%ecx
	incl	%esi
	addq	$4, %rdi
	movl	%ecx, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$3, %esi
	je	.L8701
.L8686:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	movss	%xmm8, 40(%rsp)
	movaps	%xmm7, %xmm3
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r14, 32(%rsp)
	movq	%rdi, %rdx
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	orl	%eax, %ebp
	movq	GImGui(%rip), %rax
	movss	5176(%r12), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L8682
	ucomiss	%xmm0, %xmm9
	ja	.L8702
.L8683:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L8682:
	movl	496(%rbx), %ecx
	testl	%ecx, %ecx
	jg	.L8685
	leaq	.LC14(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %ecx
	jmp	.L8685
	.p2align 4,,7
.L8702:
	movss	5168(%rax), %xmm0
	jmp	.L8683
	.p2align 4,,7
.L8701:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r13
	je	.L8693
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L8689
	jmp	.L8687
	.p2align 4,,7
.L8690:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8687
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8687
.L8689:
	cmpb	$35, %al
	jne	.L8690
	cmpb	$35, 1(%rdx)
	jne	.L8690
	.p2align 4,,7
.L8687:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%ebp, %eax
	jmp	.L8681
.L8693:
	movq	%r13, %rdx
	.p2align 4,,3
	jmp	.L8687
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui12SliderFloat4EPKcPfffS1_f
	.def	_ZN5ImGui12SliderFloat4EPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui12SliderFloat4EPKcPfffS1_f
_ZN5ImGui12SliderFloat4EPKcPfffS1_f:
.LFB664:
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
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	movaps	%xmm9, 112(%rsp)
	.seh_savexmm	%xmm9, 112
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rcx, %r13
	movaps	%xmm2, %xmm6
	movq	GImGui(%rip), %r12
	movaps	%xmm3, %xmm7
	movq	224(%rsp), %r14
	movss	232(%rsp), %xmm8
	movq	6008(%r12), %rcx
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	je	.L8723
.L8704:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
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
.L8723:
	movq	%rdx, 56(%rsp)
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorps	%xmm9, %xmm9
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.145
	movq	56(%rsp), %rdx
	movq	%rdx, %rdi
	jmp	.L8709
	.p2align 4,,7
.L8708:
	decl	%ecx
	incl	%esi
	addq	$4, %rdi
	movl	%ecx, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$4, %esi
	je	.L8724
.L8709:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	movss	%xmm8, 40(%rsp)
	movaps	%xmm7, %xmm3
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r14, 32(%rsp)
	movq	%rdi, %rdx
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	orl	%eax, %ebp
	movq	GImGui(%rip), %rax
	movss	5176(%r12), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L8705
	ucomiss	%xmm0, %xmm9
	ja	.L8725
.L8706:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L8705:
	movl	496(%rbx), %ecx
	testl	%ecx, %ecx
	jg	.L8708
	leaq	.LC14(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %ecx
	jmp	.L8708
	.p2align 4,,7
.L8725:
	movss	5168(%rax), %xmm0
	jmp	.L8706
	.p2align 4,,7
.L8724:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r13
	je	.L8716
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L8712
	jmp	.L8710
	.p2align 4,,7
.L8713:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8710
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8710
.L8712:
	cmpb	$35, %al
	jne	.L8713
	cmpb	$35, 1(%rdx)
	jne	.L8713
	.p2align 4,,7
.L8710:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%ebp, %eax
	jmp	.L8704
.L8716:
	movq	%r13, %rdx
	.p2align 4,,3
	jmp	.L8710
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SliderIntNEPKcPiiiiS1_
	.def	_ZN5ImGui10SliderIntNEPKcPiiiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SliderIntNEPKcPiiiiS1_
_ZN5ImGui10SliderIntNEPKcPiiiiS1_:
.LFB665:
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
	xorl	%eax, %eax
	movq	%rdx, %rdi
	movq	%rcx, %r15
	movl	%r8d, %ebx
	movq	GImGui(%rip), %r12
	movq	6008(%r12), %rdx
	cmpb	$0, 140(%rdx)
	movb	$1, 138(%rdx)
	je	.L8748
.L8727:
	movaps	80(%rsp), %xmm6
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
	.p2align 4,,7
.L8748:
	movl	%r9d, 56(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	movq	%r15, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%ebx, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.148
	testl	%ebx, %ebx
	jle	.L8740
	movl	56(%rsp), %r9d
	leal	-1(%rbx), %r13d
	cmpq	$0, 248(%rsp)
	leaq	.LC173(%rip), %rbp
	cvtsi2ss	240(%rsp), %xmm7
	cmovne	248(%rsp), %rbp
	leaq	76(%rsp), %r14
	incq	%r13
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	cvtsi2ss	%r9d, %xmm6
	xorps	%xmm8, %xmm8
	jmp	.L8733
	.p2align 4,,7
.L8732:
	decl	%edx
	incq	%rbx
	movl	%edx, 496(%rax)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	%r13, %rbx
	je	.L8728
.L8733:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	cvtsi2ss	(%rdi,%rbx,4), %xmm0
	movaps	%xmm7, %xmm3
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r14, %rdx
	movl	$0x3f800000, 40(%rsp)
	movq	%rbp, 32(%rsp)
	movss	%xmm0, 76(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	movss	76(%rsp), %xmm0
	orl	%eax, %esi
	cvttss2si	%xmm0, %edx
	movss	5176(%r12), %xmm0
	movl	%edx, (%rdi,%rbx,4)
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L8729
	ucomiss	%xmm0, %xmm8
	ja	.L8749
.L8730:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L8729:
	movl	496(%rax), %edx
	testl	%edx, %edx
	jg	.L8732
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	movq	%rax, 56(%rsp)
	call	_assert
	movq	56(%rsp), %rax
	movl	496(%rax), %edx
	jmp	.L8732
	.p2align 4,,7
.L8749:
	movss	5168(%rdx), %xmm0
	jmp	.L8730
.L8740:
	xorl	%esi, %esi
	.p2align 4,,7
.L8728:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r15
	je	.L8741
	movzbl	(%r15), %eax
	movq	%r15, %rdx
	testb	%al, %al
	jne	.L8736
	jmp	.L8734
	.p2align 4,,7
.L8737:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8734
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8734
.L8736:
	cmpb	$35, %al
	jne	.L8737
	cmpb	$35, 1(%rdx)
	jne	.L8737
	.p2align 4,,7
.L8734:
	movq	%r15, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%esi, %eax
	jmp	.L8727
.L8741:
	movq	%r15, %rdx
	.p2align 4,,3
	jmp	.L8734
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SliderInt3EPKcPiiiS1_
	.def	_ZN5ImGui10SliderInt3EPKcPiiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SliderInt3EPKcPiiiS1_
_ZN5ImGui10SliderInt3EPKcPiiiS1_:
.LFB667:
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
	xorl	%eax, %eax
	movq	%rdx, %rbp
	movq	%rcx, %r14
	movq	GImGui(%rip), %r13
	movq	6008(%r13), %rdx
	cmpb	$0, 140(%rdx)
	movb	$1, 138(%rdx)
	je	.L8770
.L8751:
	movaps	80(%rsp), %xmm6
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
	.p2align 4,,7
.L8770:
	movl	%r9d, 60(%rsp)
	movl	%r8d, 56(%rsp)
	leaq	.LC173(%rip), %r12
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	leaq	76(%rsp), %r15
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.146
	movl	60(%rsp), %r9d
	movl	56(%rsp), %r8d
	cmpq	$0, 240(%rsp)
	xorps	%xmm8, %xmm8
	cmovne	240(%rsp), %r12
	xorl	%esi, %esi
	xorl	%edi, %edi
	cvtsi2ss	%r9d, %xmm7
	cvtsi2ss	%r8d, %xmm6
	jmp	.L8756
	.p2align 4,,7
.L8755:
	decl	%eax
	incq	%rsi
	movl	%eax, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$3, %rsi
	je	.L8771
.L8756:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	cvtsi2ss	0(%rbp,%rsi,4), %xmm0
	movaps	%xmm7, %xmm3
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x3f800000, 40(%rsp)
	movq	%r12, 32(%rsp)
	movss	%xmm0, 76(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	movss	76(%rsp), %xmm0
	orl	%eax, %edi
	cvttss2si	%xmm0, %edx
	movq	GImGui(%rip), %rax
	movss	5176(%r13), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movl	%edx, 0(%rbp,%rsi,4)
	movb	$1, 138(%rbx)
	jne	.L8752
	ucomiss	%xmm0, %xmm8
	ja	.L8772
.L8753:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L8752:
	movl	496(%rbx), %eax
	testl	%eax, %eax
	jg	.L8755
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %eax
	jmp	.L8755
	.p2align 4,,7
.L8772:
	movss	5168(%rax), %xmm0
	jmp	.L8753
	.p2align 4,,7
.L8771:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r14
	je	.L8763
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L8759
	jmp	.L8757
	.p2align 4,,7
.L8760:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8757
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8757
.L8759:
	cmpb	$35, %al
	jne	.L8760
	cmpb	$35, 1(%rdx)
	jne	.L8760
	.p2align 4,,7
.L8757:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L8751
.L8763:
	movq	%r14, %rdx
	.p2align 4,,3
	jmp	.L8757
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SliderInt2EPKcPiiiS1_
	.def	_ZN5ImGui10SliderInt2EPKcPiiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SliderInt2EPKcPiiiS1_
_ZN5ImGui10SliderInt2EPKcPiiiS1_:
.LFB666:
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
	xorl	%eax, %eax
	movq	%rdx, %rbp
	movq	%rcx, %r14
	movq	GImGui(%rip), %r13
	movq	6008(%r13), %rdx
	cmpb	$0, 140(%rdx)
	movb	$1, 138(%rdx)
	je	.L8793
.L8774:
	movaps	80(%rsp), %xmm6
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
	.p2align 4,,7
.L8793:
	movl	%r9d, 60(%rsp)
	movl	%r8d, 56(%rsp)
	leaq	.LC173(%rip), %r12
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	leaq	76(%rsp), %r15
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.147
	movl	60(%rsp), %r9d
	movl	56(%rsp), %r8d
	cmpq	$0, 240(%rsp)
	xorps	%xmm8, %xmm8
	cmovne	240(%rsp), %r12
	xorl	%esi, %esi
	xorl	%edi, %edi
	cvtsi2ss	%r9d, %xmm7
	cvtsi2ss	%r8d, %xmm6
	jmp	.L8779
	.p2align 4,,7
.L8778:
	decl	%eax
	incq	%rsi
	movl	%eax, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$2, %rsi
	je	.L8794
.L8779:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	cvtsi2ss	0(%rbp,%rsi,4), %xmm0
	movaps	%xmm7, %xmm3
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x3f800000, 40(%rsp)
	movq	%r12, 32(%rsp)
	movss	%xmm0, 76(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	movss	76(%rsp), %xmm0
	orl	%eax, %edi
	cvttss2si	%xmm0, %edx
	movq	GImGui(%rip), %rax
	movss	5176(%r13), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movl	%edx, 0(%rbp,%rsi,4)
	movb	$1, 138(%rbx)
	jne	.L8775
	ucomiss	%xmm0, %xmm8
	ja	.L8795
.L8776:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L8775:
	movl	496(%rbx), %eax
	testl	%eax, %eax
	jg	.L8778
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %eax
	jmp	.L8778
	.p2align 4,,7
.L8795:
	movss	5168(%rax), %xmm0
	jmp	.L8776
	.p2align 4,,7
.L8794:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r14
	je	.L8786
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L8782
	jmp	.L8780
	.p2align 4,,7
.L8783:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8780
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8780
.L8782:
	cmpb	$35, %al
	jne	.L8783
	cmpb	$35, 1(%rdx)
	jne	.L8783
	.p2align 4,,7
.L8780:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L8774
.L8786:
	movq	%r14, %rdx
	.p2align 4,,3
	jmp	.L8780
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10SliderInt4EPKcPiiiS1_
	.def	_ZN5ImGui10SliderInt4EPKcPiiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10SliderInt4EPKcPiiiS1_
_ZN5ImGui10SliderInt4EPKcPiiiS1_:
.LFB668:
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
	xorl	%eax, %eax
	movq	%rdx, %rbp
	movq	%rcx, %r14
	movq	GImGui(%rip), %r13
	movq	6008(%r13), %rdx
	cmpb	$0, 140(%rdx)
	movb	$1, 138(%rdx)
	je	.L8816
.L8797:
	movaps	80(%rsp), %xmm6
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
	.p2align 4,,7
.L8816:
	movl	%r9d, 60(%rsp)
	movl	%r8d, 56(%rsp)
	leaq	.LC173(%rip), %r12
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	leaq	76(%rsp), %r15
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.145
	movl	60(%rsp), %r9d
	movl	56(%rsp), %r8d
	cmpq	$0, 240(%rsp)
	xorps	%xmm8, %xmm8
	cmovne	240(%rsp), %r12
	xorl	%esi, %esi
	xorl	%edi, %edi
	cvtsi2ss	%r9d, %xmm7
	cvtsi2ss	%r8d, %xmm6
	jmp	.L8802
	.p2align 4,,7
.L8801:
	decl	%eax
	incq	%rsi
	movl	%eax, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$4, %rsi
	je	.L8817
.L8802:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	cvtsi2ss	0(%rbp,%rsi,4), %xmm0
	movaps	%xmm7, %xmm3
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x3f800000, 40(%rsp)
	movq	%r12, 32(%rsp)
	movss	%xmm0, 76(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	movss	76(%rsp), %xmm0
	orl	%eax, %edi
	cvttss2si	%xmm0, %edx
	movq	GImGui(%rip), %rax
	movss	5176(%r13), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movl	%edx, 0(%rbp,%rsi,4)
	movb	$1, 138(%rbx)
	jne	.L8798
	ucomiss	%xmm0, %xmm8
	ja	.L8818
.L8799:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L8798:
	movl	496(%rbx), %eax
	testl	%eax, %eax
	jg	.L8801
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %eax
	jmp	.L8801
	.p2align 4,,7
.L8818:
	movss	5168(%rax), %xmm0
	jmp	.L8799
	.p2align 4,,7
.L8817:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r14
	je	.L8809
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L8805
	jmp	.L8803
	.p2align 4,,7
.L8806:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8803
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8803
.L8805:
	cmpb	$35, %al
	jne	.L8806
	cmpb	$35, 1(%rdx)
	jne	.L8806
	.p2align 4,,7
.L8803:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L8797
.L8809:
	movq	%r14, %rdx
	.p2align 4,,3
	jmp	.L8803
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9DragFloatEPKcPffffS1_f
	.def	_ZN5ImGui9DragFloatEPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9DragFloatEPKcPffffS1_f
_ZN5ImGui9DragFloatEPKcPffffS1_f:
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
	subq	$328, %rsp
	.seh_stackalloc	328
	movaps	%xmm6, 224(%rsp)
	.seh_savexmm	%xmm6, 224
	movaps	%xmm7, 240(%rsp)
	.seh_savexmm	%xmm7, 240
	movaps	%xmm8, 256(%rsp)
	.seh_savexmm	%xmm8, 256
	movaps	%xmm9, 272(%rsp)
	.seh_savexmm	%xmm9, 272
	movaps	%xmm10, 288(%rsp)
	.seh_savexmm	%xmm10, 288
	movaps	%xmm11, 304(%rsp)
	.seh_savexmm	%xmm11, 304
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movq	GImGui(%rip), %rsi
	movaps	%xmm2, %xmm9
	movaps	%xmm3, %xmm10
	movq	440(%rsp), %rdi
	movq	6008(%rsi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L8859
.L8849:
	movaps	224(%rsp), %xmm6
	movaps	240(%rsp), %xmm7
	movaps	256(%rsp), %xmm8
	movaps	272(%rsp), %xmm9
	movaps	288(%rsp), %xmm10
	movaps	304(%rsp), %xmm11
	addq	$328, %rsp
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
.L8859:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movl	%eax, 108(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	movq	%rbp, %rcx
	movaps	%xmm0, %xmm6
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movss	5160(%rsi), %xmm8
	movl	%eax, 64(%rsp)
	movaps	%xmm8, %xmm1
	shrq	$32, %rax
	addss	192(%rbx), %xmm6
	movss	64(%rsp), %xmm7
	addss	%xmm8, %xmm1
	movq	%rax, 64(%rsp)
	movq	192(%rbx), %rax
	movq	%rax, 128(%rsp)
	addss	64(%rsp), %xmm1
	movss	132(%rsp), %xmm11
	movaps	%xmm6, %xmm0
	movss	%xmm6, 136(%rsp)
	xorps	%xmm6, %xmm6
	ucomiss	%xmm6, %xmm7
	addss	196(%rbx), %xmm1
	movaps	%xmm6, %xmm2
	movss	%xmm1, 140(%rsp)
	jbe	.L8821
	movss	5176(%rsi), %xmm2
	addss	%xmm7, %xmm2
.L8821:
	addss	%xmm2, %xmm0
	movq	128(%rsp), %rax
	leaq	108(%rsp), %rdx
	addss	%xmm6, %xmm1
	leaq	144(%rsp), %rcx
	movq	%rax, 144(%rsp)
	movss	%xmm0, 152(%rsp)
	movss	%xmm1, 156(%rsp)
	call	_ZN5ImGui7ItemAddERK6ImRectPKj
	testb	%al, %al
	je	.L8860
	movl	108(%rsp), %r15d
	leaq	128(%rsp), %r13
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	movl	%r15d, %edx
	call	_ZN5ImGui9IsHoveredERK6ImRectjb
	testb	%al, %al
	movl	%eax, %r14d
	je	.L8824
	movq	GImGui(%rip), %rax
	movl	%r15d, 6056(%rax)
	movb	$0, 6060(%rax)
.L8824:
	leaq	.LC172(%rip), %rax
	testq	%rdi, %rdi
	movl	$3, %edx
	cmove	%rax, %rdi
	movq	%rdi, %rcx
	call	_ZN5ImGui20ParseFormatPrecisionEPKci
	xorl	%edx, %edx
	movl	%eax, %r15d
	movl	108(%rsp), %eax
	cmpl	%eax, 6068(%rsi)
	movl	$1, %r8d
	movq	%rbx, %rcx
	sete	%dl
	call	_ZN5ImGui21FocusableItemRegisterEP11ImGuiWindowbb
	testb	%al, %al
	je	.L8861
	movl	108(%rsp), %edx
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movl	%edx, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	je	.L8856
	movb	$1, 6076(%rax)
.L8856:
	movq	%rbx, 6088(%rax)
	movq	%rbx, %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
.L8829:
	movl	108(%rsp), %eax
	movl	$0, 10328(%rsi)
.L8831:
	movl	%r15d, 40(%rsp)
	movl	%eax, 32(%rsp)
	movq	%r12, %r9
	movl	$1, %r8d
	movq	%rbp, %rdx
	movq	%r13, %rcx
	call	_ZN5ImGui30InputScalarAsWidgetReplacementERK6ImRectPKc13ImGuiDataTypePvji
	jmp	.L8849
	.p2align 4,,7
.L8861:
	testb	%r14b, %r14b
	je	.L8827
	cmpb	$0, 876(%rsi)
	jne	.L8828
	cmpb	$0, 944(%rsi)
	jne	.L8828
.L8827:
	movl	6068(%rsi), %eax
	cmpl	108(%rsp), %eax
	jne	.L8832
	cmpl	10328(%rsi), %eax
	je	.L8831
.L8832:
	movss	156(%rsp), %xmm0
	leaq	160(%rsp), %r14
	movss	152(%rsp), %xmm2
	subss	148(%rsp), %xmm0
	subss	144(%rsp), %xmm2
	movss	5160(%rsi), %xmm1
	movq	%r14, %rcx
	movss	%xmm0, 164(%rsp)
	movss	%xmm2, 160(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movss	448(%rsp), %xmm0
	movq	%r12, %r8
	movss	%xmm0, 56(%rsp)
	movl	108(%rsp), %edx
	movq	%r13, %rcx
	movss	432(%rsp), %xmm0
	movl	%r15d, 48(%rsp)
	movss	%xmm0, 40(%rsp)
	movaps	%xmm9, %xmm3
	movss	%xmm10, 32(%rsp)
	call	_ZN5ImGui12DragBehaviorERK6ImRectjPffffif
	cvtss2sd	(%r12), %xmm0
	movq	%rdi, %r8
	movl	$64, %edx
	movq	%r14, %rcx
	movl	%eax, %ebx
	movsd	%xmm0, 64(%rsp)
	movq	64(%rsp), %r9
	movsd	%xmm0, %xmm3
	call	_Z14ImFormatStringPciPKcz.constprop.166
	leaq	112(%rsp), %rcx
	cltq
	leaq	8(%r13), %rdx
	leaq	(%r14,%rax), %r9
	movq	$0, 48(%rsp)
	movq	$0, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r14, %r8
	movq	%r13, %rcx
	movl	$0x3f000000, 112(%rsp)
	movl	$0x3f000000, 116(%rsp)
	call	_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect
	ucomiss	%xmm6, %xmm7
	movl	%ebx, %eax
	jbe	.L8849
	movss	136(%rsp), %xmm0
	addss	%xmm11, %xmm8
	movl	$1, %r9d
	addss	5176(%rsi), %xmm0
	xorl	%r8d, %r8d
	movq	%rbp, %rdx
	movss	%xmm8, 80(%rsp)
	movq	80(%rsp), %rax
	movss	%xmm0, 64(%rsp)
	movl	64(%rsp), %ecx
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	movl	%ebx, %eax
	jmp	.L8849
	.p2align 4,,7
.L8860:
	movss	156(%rsp), %xmm0
	leaq	160(%rsp), %rcx
	movss	152(%rsp), %xmm2
	subss	148(%rsp), %xmm0
	subss	144(%rsp), %xmm2
	movss	5160(%rsi), %xmm1
	movb	%al, 64(%rsp)
	movss	%xmm0, 164(%rsp)
	movss	%xmm2, 160(%rsp)
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
	movzbl	64(%rsp), %eax
	jmp	.L8849
	.p2align 4,,7
.L8828:
	movl	108(%rsp), %edx
	movq	GImGui(%rip), %rax
	testl	%edx, %edx
	movl	%edx, 6068(%rax)
	movb	$0, 6078(%rax)
	movb	$1, 6077(%rax)
	je	.L8855
	movb	$1, 6076(%rax)
.L8855:
	movq	%rbx, 6088(%rax)
	movq	%rbx, %rcx
	call	_ZN5ImGui11FocusWindowEP11ImGuiWindow
	cmpb	$0, 285(%rsi)
	jne	.L8829
	cmpb	$0, 944(%rsi)
	je	.L8827
	jmp	.L8829
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10DragFloatNEPKcPfifffS1_f
	.def	_ZN5ImGui10DragFloatNEPKcPfifffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10DragFloatNEPKcPfifffS1_f
_ZN5ImGui10DragFloatNEPKcPfifffS1_f:
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
	xorl	%eax, %eax
	movq	%rcx, %r14
	movl	%r8d, %r13d
	movq	GImGui(%rip), %r12
	movaps	%xmm3, %xmm6
	movss	272(%rsp), %xmm7
	movq	288(%rsp), %r15
	movss	280(%rsp), %xmm8
	movq	6008(%r12), %rcx
	movss	296(%rsp), %xmm9
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	je	.L8884
.L8863:
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
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,7
.L8884:
	movq	%rdx, 72(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%r13d, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.148
	testl	%r13d, %r13d
	jle	.L8876
	movq	72(%rsp), %rdx
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	xorps	%xmm10, %xmm10
	movq	%rdx, %rdi
	jmp	.L8869
	.p2align 4,,7
.L8868:
	decl	%eax
	incl	%esi
	addq	$4, %rdi
	movl	%eax, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	%esi, %r13d
	je	.L8864
.L8869:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	movss	%xmm9, 48(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm8, 32(%rsp)
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r15, 40(%rsp)
	movq	%rdi, %rdx
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	orl	%eax, %ebp
	movq	GImGui(%rip), %rax
	movss	5176(%r12), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L8865
	ucomiss	%xmm0, %xmm10
	ja	.L8885
.L8866:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L8865:
	movl	496(%rbx), %eax
	testl	%eax, %eax
	jg	.L8868
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %eax
	jmp	.L8868
	.p2align 4,,7
.L8885:
	movss	5168(%rax), %xmm0
	jmp	.L8866
.L8876:
	xorl	%ebp, %ebp
	.p2align 4,,7
.L8864:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r14
	je	.L8877
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L8872
	jmp	.L8870
	.p2align 4,,7
.L8873:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8870
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8870
.L8872:
	cmpb	$35, %al
	jne	.L8873
	cmpb	$35, 1(%rdx)
	jne	.L8873
	.p2align 4,,7
.L8870:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%ebp, %eax
	jmp	.L8863
.L8877:
	movq	%r14, %rdx
	.p2align 4,,3
	jmp	.L8870
	.seh_endproc
	.section .rdata,"dr"
.LC330:
	.ascii "##min\0"
.LC331:
	.ascii "##max\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_f
	.def	_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_f
_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_f:
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
	subq	$112, %rsp
	.seh_stackalloc	112
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rdx, %r12
	movq	%rcx, %rsi
	movq	%r8, %rbp
	movq	GImGui(%rip), %rdi
	movaps	%xmm3, %xmm7
	movss	192(%rsp), %xmm6
	movss	224(%rsp), %xmm8
	movq	6008(%rdi), %rdx
	cmpb	$0, 140(%rdx)
	movb	$1, 138(%rdx)
	je	.L8919
.L8915:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	movaps	96(%rsp), %xmm8
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,7
.L8919:
	call	_ZN5ImGui6PushIDEPKc
	call	_ZN5ImGui10BeginGroupEv
	.p2align 4,,5
	call	_ZL20PushMultiItemsWidthsif.constprop.147
	ucomiss	200(%rsp), %xmm6
	jnb	.L8920
	movss	200(%rsp), %xmm0
	minss	0(%rbp), %xmm0
	jnb	.L8890
	movq	208(%rsp), %rax
	movss	%xmm0, 32(%rsp)
	leaq	.LC330(%rip), %rcx
	movaps	%xmm6, %xmm3
	movss	%xmm8, 48(%rsp)
	movaps	%xmm7, %xmm2
	movq	%r12, %rdx
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movl	%eax, %ebx
	call	_ZN5ImGui12PopItemWidthEv
	movss	5176(%rdi), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	movq	216(%rsp), %rax
	testq	%rax, %rax
	je	.L8902
.L8892:
	ucomiss	200(%rsp), %xmm6
	jnb	.L8921
	movss	(%r12), %xmm3
	ucomiss	%xmm3, %xmm6
	movss	200(%rsp), %xmm0
	jb	.L8896
	movaps	%xmm6, %xmm3
.L8896:
	movss	%xmm0, 32(%rsp)
	movaps	%xmm7, %xmm2
	leaq	.LC331(%rip), %rcx
	movss	%xmm8, 48(%rsp)
	movq	%rbp, %rdx
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	orl	%eax, %ebx
	call	_ZN5ImGui12PopItemWidthEv
	movss	5176(%rdi), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	cmpq	$-1, %rsi
	je	.L8908
	movzbl	(%rsi), %ecx
	movq	%rsi, %rdx
	testb	%cl, %cl
	jne	.L8899
	jmp	.L8897
	.p2align 4,,7
.L8900:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8897
	movzbl	(%rdx), %ecx
	testb	%cl, %cl
	je	.L8897
.L8899:
	cmpb	$35, %cl
	jne	.L8900
	cmpb	$35, 1(%rdx)
	jne	.L8900
	.p2align 4,,7
.L8897:
	movq	%rsi, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	call	_ZN5ImGui5PopIDEv
	movl	%ebx, %eax
	.p2align 4,,3
	jmp	.L8915
	.p2align 4,,7
.L8920:
	movss	0(%rbp), %xmm0
.L8890:
	movq	208(%rsp), %rax
	movss	%xmm0, 32(%rsp)
	leaq	.LC330(%rip), %rcx
	movaps	%xmm7, %xmm2
	movss	%xmm8, 48(%rsp)
	movss	.LC70(%rip), %xmm3
	movq	%r12, %rdx
	movq	%rax, 40(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movl	%eax, %ebx
	call	_ZN5ImGui12PopItemWidthEv
	movss	5176(%rdi), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	movq	216(%rsp), %rax
	movss	.LC21(%rip), %xmm0
	testq	%rax, %rax
	je	.L8902
.L8893:
	movss	(%r12), %xmm3
	jmp	.L8896
	.p2align 4,,7
.L8902:
	movq	208(%rsp), %rax
	jmp	.L8892
.L8921:
	movss	.LC21(%rip), %xmm0
	jmp	.L8893
.L8908:
	movq	%rsi, %rdx
	jmp	.L8897
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7DragIntEPKcPifiiS1_
	.def	_ZN5ImGui7DragIntEPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7DragIntEPKcPifiiS1_
_ZN5ImGui7DragIntEPKcPifiiS1_:
.LFB676:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	136(%rsp), %rax
	movq	%rdx, %rbx
	cvtsi2ss	%r9d, %xmm3
	cvtsi2ss	(%rbx), %xmm0
	leaq	.LC173(%rip), %rdx
	movl	$0x3f800000, 48(%rsp)
	testq	%rax, %rax
	cmove	%rdx, %rax
	leaq	76(%rsp), %rdx
	movq	%rax, 40(%rsp)
	movss	%xmm0, 76(%rsp)
	cvtsi2ss	128(%rsp), %xmm0
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movss	76(%rsp), %xmm0
	cvttss2si	%xmm0, %edx
	movl	%edx, (%rbx)
	addq	$80, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8DragIntNEPKcPiifiiS1_
	.def	_ZN5ImGui8DragIntNEPKcPiifiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8DragIntNEPKcPiifiiS1_
_ZN5ImGui8DragIntNEPKcPiifiiS1_:
.LFB677:
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
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	movaps	%xmm8, 128(%rsp)
	.seh_savexmm	%xmm8, 128
	movaps	%xmm9, 144(%rsp)
	.seh_savexmm	%xmm9, 144
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rdx, %rdi
	movq	%rcx, %r15
	movl	%r8d, %ebx
	movq	GImGui(%rip), %r12
	movaps	%xmm3, %xmm6
	movq	6008(%r12), %rdx
	cmpb	$0, 140(%rdx)
	movb	$1, 138(%rdx)
	je	.L8946
.L8925:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	movaps	128(%rsp), %xmm8
	movaps	144(%rsp), %xmm9
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
	.p2align 4,,7
.L8946:
	call	_ZN5ImGui10BeginGroupEv
	movq	%r15, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%ebx, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.148
	testl	%ebx, %ebx
	jle	.L8938
	leal	-1(%rbx), %r13d
	cmpq	$0, 288(%rsp)
	leaq	.LC173(%rip), %rbp
	cvtsi2ss	272(%rsp), %xmm8
	cmovne	288(%rsp), %rbp
	leaq	92(%rsp), %r14
	incq	%r13
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	cvtsi2ss	280(%rsp), %xmm7
	xorps	%xmm9, %xmm9
	jmp	.L8931
	.p2align 4,,7
.L8930:
	decl	%edx
	incq	%rbx
	movl	%edx, 496(%rax)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	%r13, %rbx
	je	.L8926
.L8931:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	cvtsi2ss	(%rdi,%rbx,4), %xmm0
	movaps	%xmm8, %xmm3
	movss	%xmm7, 32(%rsp)
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r14, %rdx
	movl	$0x3f800000, 48(%rsp)
	movq	%rbp, 40(%rsp)
	movss	%xmm0, 92(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movss	92(%rsp), %xmm0
	orl	%eax, %esi
	cvttss2si	%xmm0, %edx
	movss	5176(%r12), %xmm0
	movl	%edx, (%rdi,%rbx,4)
	movq	GImGui(%rip), %rdx
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L8927
	ucomiss	%xmm0, %xmm9
	ja	.L8947
.L8928:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L8927:
	movl	496(%rax), %edx
	testl	%edx, %edx
	jg	.L8930
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	movq	%rax, 72(%rsp)
	call	_assert
	movq	72(%rsp), %rax
	movl	496(%rax), %edx
	jmp	.L8930
	.p2align 4,,7
.L8947:
	movss	5168(%rdx), %xmm0
	jmp	.L8928
.L8938:
	xorl	%esi, %esi
	.p2align 4,,7
.L8926:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r15
	je	.L8939
	movzbl	(%r15), %eax
	movq	%r15, %rdx
	testb	%al, %al
	jne	.L8934
	jmp	.L8932
	.p2align 4,,7
.L8935:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8932
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8932
.L8934:
	cmpb	$35, %al
	jne	.L8935
	cmpb	$35, 1(%rdx)
	jne	.L8935
	.p2align 4,,7
.L8932:
	movq	%r15, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%esi, %eax
	jmp	.L8925
.L8939:
	movq	%r15, %rdx
	.p2align 4,,3
	jmp	.L8932
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10DragFloat2EPKcPffffS1_f
	.def	_ZN5ImGui10DragFloat2EPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10DragFloat2EPKcPffffS1_f
_ZN5ImGui10DragFloat2EPKcPffffS1_f:
.LFB672:
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
	xorl	%eax, %eax
	movq	%rcx, %r13
	movaps	%xmm2, %xmm6
	movq	GImGui(%rip), %r12
	movaps	%xmm3, %xmm7
	movss	256(%rsp), %xmm8
	movq	264(%rsp), %r14
	movss	272(%rsp), %xmm9
	movq	6008(%r12), %rcx
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	je	.L8968
.L8949:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
	movaps	144(%rsp), %xmm10
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
.L8968:
	movq	%rdx, 72(%rsp)
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorps	%xmm10, %xmm10
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.147
	movq	72(%rsp), %rdx
	movq	%rdx, %rdi
	jmp	.L8954
	.p2align 4,,7
.L8953:
	decl	%ecx
	incl	%esi
	addq	$4, %rdi
	movl	%ecx, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$2, %esi
	je	.L8969
.L8954:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	movss	%xmm9, 48(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm8, 32(%rsp)
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r14, 40(%rsp)
	movq	%rdi, %rdx
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	orl	%eax, %ebp
	movq	GImGui(%rip), %rax
	movss	5176(%r12), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L8950
	ucomiss	%xmm0, %xmm10
	ja	.L8970
.L8951:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L8950:
	movl	496(%rbx), %ecx
	testl	%ecx, %ecx
	jg	.L8953
	leaq	.LC14(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %ecx
	jmp	.L8953
	.p2align 4,,7
.L8970:
	movss	5168(%rax), %xmm0
	jmp	.L8951
	.p2align 4,,7
.L8969:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r13
	je	.L8961
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L8957
	jmp	.L8955
	.p2align 4,,7
.L8958:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8955
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8955
.L8957:
	cmpb	$35, %al
	jne	.L8958
	cmpb	$35, 1(%rdx)
	jne	.L8958
	.p2align 4,,7
.L8955:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%ebp, %eax
	jmp	.L8949
.L8961:
	movq	%r13, %rdx
	.p2align 4,,3
	jmp	.L8955
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10DragFloat3EPKcPffffS1_f
	.def	_ZN5ImGui10DragFloat3EPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10DragFloat3EPKcPffffS1_f
_ZN5ImGui10DragFloat3EPKcPffffS1_f:
.LFB673:
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
	xorl	%eax, %eax
	movq	%rcx, %r13
	movaps	%xmm2, %xmm6
	movq	GImGui(%rip), %r12
	movaps	%xmm3, %xmm7
	movss	256(%rsp), %xmm8
	movq	264(%rsp), %r14
	movss	272(%rsp), %xmm9
	movq	6008(%r12), %rcx
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	je	.L8991
.L8972:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
	movaps	144(%rsp), %xmm10
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
.L8991:
	movq	%rdx, 72(%rsp)
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorps	%xmm10, %xmm10
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.146
	movq	72(%rsp), %rdx
	movq	%rdx, %rdi
	jmp	.L8977
	.p2align 4,,7
.L8976:
	decl	%ecx
	incl	%esi
	addq	$4, %rdi
	movl	%ecx, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$3, %esi
	je	.L8992
.L8977:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	movss	%xmm9, 48(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm8, 32(%rsp)
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r14, 40(%rsp)
	movq	%rdi, %rdx
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	orl	%eax, %ebp
	movq	GImGui(%rip), %rax
	movss	5176(%r12), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L8973
	ucomiss	%xmm0, %xmm10
	ja	.L8993
.L8974:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L8973:
	movl	496(%rbx), %ecx
	testl	%ecx, %ecx
	jg	.L8976
	leaq	.LC14(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %ecx
	jmp	.L8976
	.p2align 4,,7
.L8993:
	movss	5168(%rax), %xmm0
	jmp	.L8974
	.p2align 4,,7
.L8992:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r13
	je	.L8984
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L8980
	jmp	.L8978
	.p2align 4,,7
.L8981:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L8978
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L8978
.L8980:
	cmpb	$35, %al
	jne	.L8981
	cmpb	$35, 1(%rdx)
	jne	.L8981
	.p2align 4,,7
.L8978:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%ebp, %eax
	jmp	.L8972
.L8984:
	movq	%r13, %rdx
	.p2align 4,,3
	jmp	.L8978
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10DragFloat4EPKcPffffS1_f
	.def	_ZN5ImGui10DragFloat4EPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10DragFloat4EPKcPffffS1_f
_ZN5ImGui10DragFloat4EPKcPffffS1_f:
.LFB674:
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
	xorl	%eax, %eax
	movq	%rcx, %r13
	movaps	%xmm2, %xmm6
	movq	GImGui(%rip), %r12
	movaps	%xmm3, %xmm7
	movss	256(%rsp), %xmm8
	movq	264(%rsp), %r14
	movss	272(%rsp), %xmm9
	movq	6008(%r12), %rcx
	cmpb	$0, 140(%rcx)
	movb	$1, 138(%rcx)
	je	.L9014
.L8995:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	movaps	128(%rsp), %xmm9
	movaps	144(%rsp), %xmm10
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
.L9014:
	movq	%rdx, 72(%rsp)
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	call	_ZN5ImGui10BeginGroupEv
	movq	%r13, %rcx
	xorps	%xmm10, %xmm10
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.145
	movq	72(%rsp), %rdx
	movq	%rdx, %rdi
	jmp	.L9000
	.p2align 4,,7
.L8999:
	decl	%ecx
	incl	%esi
	addq	$4, %rdi
	movl	%ecx, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$4, %esi
	je	.L9015
.L9000:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	movss	%xmm9, 48(%rsp)
	movaps	%xmm7, %xmm3
	movss	%xmm8, 32(%rsp)
	movaps	%xmm6, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r14, 40(%rsp)
	movq	%rdi, %rdx
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	orl	%eax, %ebp
	movq	GImGui(%rip), %rax
	movss	5176(%r12), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	jne	.L8996
	ucomiss	%xmm0, %xmm10
	ja	.L9016
.L8997:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L8996:
	movl	496(%rbx), %ecx
	testl	%ecx, %ecx
	jg	.L8999
	leaq	.LC14(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %ecx
	jmp	.L8999
	.p2align 4,,7
.L9016:
	movss	5168(%rax), %xmm0
	jmp	.L8997
	.p2align 4,,7
.L9015:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r13
	je	.L9007
	movzbl	0(%r13), %eax
	movq	%r13, %rdx
	testb	%al, %al
	jne	.L9003
	jmp	.L9001
	.p2align 4,,7
.L9004:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9001
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9001
.L9003:
	cmpb	$35, %al
	jne	.L9004
	cmpb	$35, 1(%rdx)
	jne	.L9004
	.p2align 4,,7
.L9001:
	movq	%r13, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%ebp, %eax
	jmp	.L8995
.L9007:
	movq	%r13, %rdx
	.p2align 4,,3
	jmp	.L9001
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8DragInt3EPKcPifiiS1_
	.def	_ZN5ImGui8DragInt3EPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8DragInt3EPKcPifiiS1_
_ZN5ImGui8DragInt3EPKcPifiiS1_:
.LFB679:
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
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	movaps	%xmm8, 128(%rsp)
	.seh_savexmm	%xmm8, 128
	movaps	%xmm9, 144(%rsp)
	.seh_savexmm	%xmm9, 144
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rdx, %rbp
	movq	%rcx, %r14
	movq	GImGui(%rip), %r13
	movaps	%xmm2, %xmm7
	movq	6008(%r13), %rdx
	cmpb	$0, 140(%rdx)
	movb	$1, 138(%rdx)
	je	.L9037
.L9018:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	movaps	128(%rsp), %xmm8
	movaps	144(%rsp), %xmm9
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
	.p2align 4,,7
.L9037:
	movl	%r9d, 76(%rsp)
	leaq	.LC173(%rip), %r12
	leaq	92(%rsp), %r15
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	xorps	%xmm9, %xmm9
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.146
	movl	76(%rsp), %r9d
	cmpq	$0, 280(%rsp)
	cmovne	280(%rsp), %r12
	cvtsi2ss	272(%rsp), %xmm8
	xorl	%esi, %esi
	xorl	%edi, %edi
	cvtsi2ss	%r9d, %xmm6
	jmp	.L9023
	.p2align 4,,7
.L9022:
	decl	%eax
	incq	%rsi
	movl	%eax, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$3, %rsi
	je	.L9038
.L9023:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	cvtsi2ss	0(%rbp,%rsi,4), %xmm0
	movaps	%xmm6, %xmm3
	movss	%xmm8, 32(%rsp)
	movaps	%xmm7, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x3f800000, 48(%rsp)
	movq	%r12, 40(%rsp)
	movss	%xmm0, 92(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movss	92(%rsp), %xmm0
	orl	%eax, %edi
	cvttss2si	%xmm0, %edx
	movq	GImGui(%rip), %rax
	movss	5176(%r13), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movl	%edx, 0(%rbp,%rsi,4)
	movb	$1, 138(%rbx)
	jne	.L9019
	ucomiss	%xmm0, %xmm9
	ja	.L9039
.L9020:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L9019:
	movl	496(%rbx), %eax
	testl	%eax, %eax
	jg	.L9022
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %eax
	jmp	.L9022
	.p2align 4,,7
.L9039:
	movss	5168(%rax), %xmm0
	jmp	.L9020
	.p2align 4,,7
.L9038:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r14
	je	.L9030
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L9026
	jmp	.L9024
	.p2align 4,,7
.L9027:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9024
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9024
.L9026:
	cmpb	$35, %al
	jne	.L9027
	cmpb	$35, 1(%rdx)
	jne	.L9027
	.p2align 4,,7
.L9024:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9018
.L9030:
	movq	%r14, %rdx
	.p2align 4,,3
	jmp	.L9024
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8DragInt2EPKcPifiiS1_
	.def	_ZN5ImGui8DragInt2EPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8DragInt2EPKcPifiiS1_
_ZN5ImGui8DragInt2EPKcPifiiS1_:
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
	subq	$168, %rsp
	.seh_stackalloc	168
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	movaps	%xmm8, 128(%rsp)
	.seh_savexmm	%xmm8, 128
	movaps	%xmm9, 144(%rsp)
	.seh_savexmm	%xmm9, 144
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rdx, %rbp
	movq	%rcx, %r14
	movq	GImGui(%rip), %r13
	movaps	%xmm2, %xmm7
	movq	6008(%r13), %rdx
	cmpb	$0, 140(%rdx)
	movb	$1, 138(%rdx)
	je	.L9060
.L9041:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	movaps	128(%rsp), %xmm8
	movaps	144(%rsp), %xmm9
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
	.p2align 4,,7
.L9060:
	movl	%r9d, 76(%rsp)
	leaq	.LC173(%rip), %r12
	leaq	92(%rsp), %r15
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	xorps	%xmm9, %xmm9
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.147
	movl	76(%rsp), %r9d
	cmpq	$0, 280(%rsp)
	cmovne	280(%rsp), %r12
	cvtsi2ss	272(%rsp), %xmm8
	xorl	%esi, %esi
	xorl	%edi, %edi
	cvtsi2ss	%r9d, %xmm6
	jmp	.L9046
	.p2align 4,,7
.L9045:
	decl	%eax
	incq	%rsi
	movl	%eax, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$2, %rsi
	je	.L9061
.L9046:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	cvtsi2ss	0(%rbp,%rsi,4), %xmm0
	movaps	%xmm6, %xmm3
	movss	%xmm8, 32(%rsp)
	movaps	%xmm7, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x3f800000, 48(%rsp)
	movq	%r12, 40(%rsp)
	movss	%xmm0, 92(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movss	92(%rsp), %xmm0
	orl	%eax, %edi
	cvttss2si	%xmm0, %edx
	movq	GImGui(%rip), %rax
	movss	5176(%r13), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movl	%edx, 0(%rbp,%rsi,4)
	movb	$1, 138(%rbx)
	jne	.L9042
	ucomiss	%xmm0, %xmm9
	ja	.L9062
.L9043:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L9042:
	movl	496(%rbx), %eax
	testl	%eax, %eax
	jg	.L9045
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %eax
	jmp	.L9045
	.p2align 4,,7
.L9062:
	movss	5168(%rax), %xmm0
	jmp	.L9043
	.p2align 4,,7
.L9061:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r14
	je	.L9053
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L9049
	jmp	.L9047
	.p2align 4,,7
.L9050:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9047
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9047
.L9049:
	cmpb	$35, %al
	jne	.L9050
	cmpb	$35, 1(%rdx)
	jne	.L9050
	.p2align 4,,7
.L9047:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9041
.L9053:
	movq	%r14, %rdx
	.p2align 4,,3
	jmp	.L9047
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui8DragInt4EPKcPifiiS1_
	.def	_ZN5ImGui8DragInt4EPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8DragInt4EPKcPifiiS1_
_ZN5ImGui8DragInt4EPKcPifiiS1_:
.LFB680:
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
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	movaps	%xmm8, 128(%rsp)
	.seh_savexmm	%xmm8, 128
	movaps	%xmm9, 144(%rsp)
	.seh_savexmm	%xmm9, 144
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rdx, %rbp
	movq	%rcx, %r14
	movq	GImGui(%rip), %r13
	movaps	%xmm2, %xmm7
	movq	6008(%r13), %rdx
	cmpb	$0, 140(%rdx)
	movb	$1, 138(%rdx)
	je	.L9083
.L9064:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	movaps	128(%rsp), %xmm8
	movaps	144(%rsp), %xmm9
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
	.p2align 4,,7
.L9083:
	movl	%r9d, 76(%rsp)
	leaq	.LC173(%rip), %r12
	leaq	92(%rsp), %r15
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	xorps	%xmm9, %xmm9
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.145
	movl	76(%rsp), %r9d
	cmpq	$0, 280(%rsp)
	cmovne	280(%rsp), %r12
	cvtsi2ss	272(%rsp), %xmm8
	xorl	%esi, %esi
	xorl	%edi, %edi
	cvtsi2ss	%r9d, %xmm6
	jmp	.L9069
	.p2align 4,,7
.L9068:
	decl	%eax
	incq	%rsi
	movl	%eax, 496(%rbx)
	call	_ZN5ImGui12PopItemWidthEv
	cmpq	$4, %rsi
	je	.L9084
.L9069:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	cvtsi2ss	0(%rbp,%rsi,4), %xmm0
	movaps	%xmm6, %xmm3
	movss	%xmm8, 32(%rsp)
	movaps	%xmm7, %xmm2
	leaq	.LC329(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x3f800000, 48(%rsp)
	movq	%r12, 40(%rsp)
	movss	%xmm0, 92(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movss	92(%rsp), %xmm0
	orl	%eax, %edi
	cvttss2si	%xmm0, %edx
	movq	GImGui(%rip), %rax
	movss	5176(%r13), %xmm0
	movq	6008(%rax), %rbx
	cmpb	$0, 140(%rbx)
	movl	%edx, 0(%rbp,%rsi,4)
	movb	$1, 138(%rbx)
	jne	.L9065
	ucomiss	%xmm0, %xmm9
	ja	.L9085
.L9066:
	addss	200(%rbx), %xmm0
	movss	%xmm0, 192(%rbx)
	movss	204(%rbx), %xmm0
	movss	%xmm0, 196(%rbx)
	movss	232(%rbx), %xmm0
	movss	%xmm0, 224(%rbx)
	movss	236(%rbx), %xmm0
	movss	%xmm0, 228(%rbx)
.L9065:
	movl	496(%rbx), %eax
	testl	%eax, %eax
	jg	.L9068
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %eax
	jmp	.L9068
	.p2align 4,,7
.L9085:
	movss	5168(%rax), %xmm0
	jmp	.L9066
	.p2align 4,,7
.L9084:
	call	_ZN5ImGui5PopIDEv
	cmpq	$-1, %r14
	je	.L9076
	movzbl	(%r14), %eax
	movq	%r14, %rdx
	testb	%al, %al
	jne	.L9072
	jmp	.L9070
	.p2align 4,,7
.L9073:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9070
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9070
.L9072:
	cmpb	$35, %al
	jne	.L9073
	cmpb	$35, 1(%rdx)
	jne	.L9073
	.p2align 4,,7
.L9070:
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9064
.L9076:
	movq	%r14, %rdx
	.p2align 4,,3
	jmp	.L9070
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_
	.def	_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_
_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_:
.LFB681:
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
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rdx, %r12
	movq	%rcx, %rdi
	movq	%r8, %r13
	movq	GImGui(%rip), %rbp
	movaps	%xmm3, %xmm6
	movq	216(%rsp), %rsi
	movq	6008(%rbp), %rdx
	cmpb	$0, 140(%rdx)
	movb	$1, 138(%rdx)
	je	.L9113
.L9109:
	movaps	80(%rsp), %xmm6
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,7
.L9113:
	call	_ZN5ImGui6PushIDEPKc
	call	_ZN5ImGui10BeginGroupEv
	.p2align 4,,5
	call	_ZL20PushMultiItemsWidthsif.constprop.147
	movl	200(%rsp), %eax
	cmpl	%eax, 192(%rsp)
	jge	.L9114
	cvtsi2ss	192(%rsp), %xmm3
	cmpl	%eax, 0(%r13)
	movl	%eax, %edx
	cmovle	0(%r13), %edx
.L9089:
	cvtsi2ss	(%r12), %xmm0
	cmpq	$0, 208(%rsp)
	leaq	.LC173(%rip), %rax
	cmovne	208(%rsp), %rax
	leaq	76(%rsp), %r14
	leaq	.LC330(%rip), %rcx
	movaps	%xmm6, %xmm2
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movss	%xmm0, 76(%rsp)
	cvtsi2ss	%edx, %xmm0
	movq	%r14, %rdx
	movss	%xmm0, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movss	76(%rsp), %xmm1
	movl	%eax, %ebx
	cvttss2si	%xmm1, %eax
	movl	%eax, (%r12)
	call	_ZN5ImGui12PopItemWidthEv
	movss	5176(%rbp), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	testq	%rsi, %rsi
	movl	200(%rsp), %eax
	cmove	208(%rsp), %rsi
	cmpl	%eax, 192(%rsp)
	jge	.L9115
	cvtsi2ss	200(%rsp), %xmm0
	movl	192(%rsp), %eax
	cmpl	%eax, (%r12)
	cmovge	(%r12), %eax
.L9100:
	cvtsi2ss	%eax, %xmm3
	leaq	.LC173(%rip), %rdx
	testq	%rsi, %rsi
	cvtsi2ss	0(%r13), %xmm1
	movaps	%xmm6, %xmm2
	cmove	%rdx, %rsi
	leaq	.LC331(%rip), %rcx
	movss	%xmm0, 32(%rsp)
	movq	%r14, %rdx
	movl	$0x3f800000, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movss	%xmm1, 76(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movss	76(%rsp), %xmm0
	orl	%eax, %ebx
	cvttss2si	%xmm0, %edx
	movl	%edx, 0(%r13)
	call	_ZN5ImGui12PopItemWidthEv
	movss	5176(%rbp), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	cmpq	$-1, %rdi
	je	.L9105
	movzbl	(%rdi), %ecx
	movq	%rdi, %rdx
	testb	%cl, %cl
	jne	.L9097
	jmp	.L9095
	.p2align 4,,7
.L9098:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9095
	movzbl	(%rdx), %ecx
	testb	%cl, %cl
	je	.L9095
.L9097:
	cmpb	$35, %cl
	jne	.L9098
	cmpb	$35, 1(%rdx)
	jne	.L9098
	.p2align 4,,7
.L9095:
	movq	%rdi, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	call	_ZN5ImGui5PopIDEv
	movl	%ebx, %eax
	.p2align 4,,3
	jmp	.L9109
	.p2align 4,,7
.L9114:
	movl	0(%r13), %edx
	movss	.LC332(%rip), %xmm3
	jmp	.L9089
	.p2align 4,,7
.L9115:
	movl	(%r12), %eax
	movss	.LC333(%rip), %xmm0
	jmp	.L9100
.L9105:
	movq	%rdi, %rdx
	jmp	.L9095
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC334:
	.ascii "!(flags & ImGuiInputTextFlags_Multiline)\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	.def	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv:
.LFB740:
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
	je	.L9117
	leaq	.LC15(%rip), %rdx
	leaq	.LC334(%rip), %rcx
	movl	$8246, %r8d
	movl	%r9d, 76(%rsp)
	call	_assert
	movl	76(%rsp), %r9d
.L9117:
	movq	168(%rsp), %rax
	movl	%r9d, 32(%rsp)
	leaq	80(%rsp), %r9
	movl	%edi, %r8d
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	movl	$0x00000000, 80(%rsp)
	movl	$0x00000000, 84(%rsp)
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
.LFB741:
	.seh_endprologue
	movl	40(%rsp), %eax
	orl	$1048576, %eax
	movl	%eax, 40(%rsp)
	jmp	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	.seh_endproc
	.section .rdata,"dr"
.LC335:
	.ascii "-\0"
.LC336:
	.ascii "+\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	.def	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i:
.LFB742:
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
	movq	GImGui(%rip), %rbx
	xorl	%eax, %eax
	movl	320(%rsp), %edi
	movq	%rcx, %r12
	movl	%edx, %ebp
	movq	%r8, %r14
	movq	%r9, %r13
	movq	6008(%rbx), %rsi
	cmpb	$0, 140(%rsi)
	movb	$1, 138(%rsi)
	je	.L9168
.L9123:
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
.L9168:
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movq	%rax, 80(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	movq	%r12, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movss	5160(%rbx), %xmm0
	testq	%r13, %r13
	movss	5156(%rbx), %xmm2
	addss	%xmm0, %xmm0
	addss	%xmm2, %xmm2
	movss	5944(%rbx), %xmm1
	addss	%xmm1, %xmm0
	addss	%xmm2, %xmm1
	movss	%xmm0, 100(%rsp)
	movss	%xmm1, 96(%rsp)
	je	.L9124
	call	_ZN5ImGui13CalcItemWidthEv
	movss	96(%rsp), %xmm1
	addss	5176(%rbx), %xmm1
	movss	.LC28(%rip), %xmm2
	addss	%xmm1, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	call	_ZN5ImGui13PushItemWidthEf
.L9124:
	testl	%ebp, %ebp
	leaq	128(%rsp), %r15
	je	.L9169
	cmpl	$1, %ebp
	je	.L9170
.L9127:
	movl	%edi, %eax
	orl	$1, %eax
	testb	$2, %dil
	cmove	%eax, %edi
	movl	%edi, %eax
	orl	$16, %eax
	andl	$1048576, %edi
	je	.L9129
	leaq	.LC15(%rip), %rdx
	leaq	.LC334(%rip), %rcx
	movl	$8246, %r8d
	movl	%eax, 64(%rsp)
	call	_assert
	movl	64(%rsp), %eax
.L9129:
	leaq	112(%rsp), %r9
	leaq	.LC91(%rip), %rcx
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	%eax, 32(%rsp)
	movl	$64, %r8d
	movq	%r15, %rdx
	movl	$0x00000000, 112(%rsp)
	movl	$0x00000000, 116(%rsp)
	xorl	%edi, %edi
	call	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	jne	.L9171
.L9130:
	testq	%r13, %r13
	je	.L9131
	.p2align 4,,6
	call	_ZN5ImGui12PopItemWidthEv
	leaq	96(%rsp), %r15
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	leaq	.LC335(%rip), %rcx
	movl	$65, %r8d
	movq	%r15, %rdx
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	testb	%al, %al
	je	.L9132
	cmpb	$0, 285(%rbx)
	je	.L9148
	movq	304(%rsp), %rax
	testq	%rax, %rax
	je	.L9148
.L9133:
	testl	%ebp, %ebp
	jne	.L9135
	movl	(%rax), %eax
	subl	%eax, (%r14)
	movl	$1, %edi
.L9132:
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	leaq	.LC336(%rip), %rcx
	movl	$65, %r8d
	movq	%r15, %rdx
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	testb	%al, %al
	je	.L9131
	cmpb	$0, 285(%rbx)
	je	.L9149
	movq	304(%rsp), %rax
	testq	%rax, %rax
	je	.L9149
.L9136:
	testl	%ebp, %ebp
	jne	.L9138
	movl	(%rax), %eax
	addl	%eax, (%r14)
	movl	$1, %edi
	.p2align 4,,7
.L9131:
	call	_ZN5ImGui5PopIDEv
	movss	80(%rsp), %xmm0
	ucomiss	.LC9(%rip), %xmm0
	jbe	.L9139
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	movss	196(%rsi), %xmm0
	movl	192(%rsi), %ecx
	addss	5160(%rbx), %xmm0
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	movss	%xmm0, 64(%rsp)
	movq	64(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	leaq	80(%rsp), %rcx
	movss	5160(%rbx), %xmm1
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
.L9139:
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9123
	.p2align 4,,7
.L9171:
	movq	GImGui(%rip), %rax
	movq	%r14, %r9
	movl	%ebp, %r8d
	movq	%r15, %rcx
	movq	6944(%rax), %rdx
	movq	312(%rsp), %rax
	movq	%rax, 32(%rsp)
	call	_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_
	movl	%eax, %edi
	jmp	.L9130
	.p2align 4,,7
.L9169:
	movl	(%r14), %r9d
	movq	312(%rsp), %r8
	movl	$64, %edx
	movq	%r15, %rcx
	call	_Z14ImFormatStringPciPKcz.constprop.166
	jmp	.L9127
	.p2align 4,,7
.L9138:
	decl	%ebp
	movl	$1, %edi
	jne	.L9131
	movss	(%r14), %xmm0
	addss	(%rax), %xmm0
	movss	%xmm0, (%r14)
	jmp	.L9131
	.p2align 4,,7
.L9135:
	cmpl	$1, %ebp
	movl	$1, %edi
	jne	.L9132
	movss	(%r14), %xmm0
	subss	(%rax), %xmm0
	movss	%xmm0, (%r14)
	jmp	.L9132
	.p2align 4,,7
.L9170:
	cvtss2sd	(%r14), %xmm0
	movq	312(%rsp), %r8
	movl	$64, %edx
	movq	%r15, %rcx
	movsd	%xmm0, 64(%rsp)
	movq	64(%rsp), %r9
	movsd	%xmm0, %xmm3
	call	_Z14ImFormatStringPciPKcz.constprop.166
	jmp	.L9127
	.p2align 4,,7
.L9148:
	movq	%r13, %rax
	jmp	.L9133
	.p2align 4,,7
.L9149:
	movq	%r13, %rax
	.p2align 4,,5
	jmp	.L9136
	.seh_endproc
	.section .rdata,"dr"
.LC337:
	.ascii "%%.%df\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10InputFloatEPKcPfffii
	.def	_ZN5ImGui10InputFloatEPKcPfffii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10InputFloatEPKcPfffii
_ZN5ImGui10InputFloatEPKcPfffii:
.LFB743:
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
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movss	%xmm2, 128(%rsp)
	movss	%xmm3, 136(%rsp)
	testl	%r9d, %r9d
	js	.L9179
	leaq	64(%rsp), %rbx
	leaq	.LC337(%rip), %r8
	movl	$16, %edx
	movq	%rbx, %rcx
	call	_Z14ImFormatStringPciPKcz
	movss	136(%rsp), %xmm1
.L9174:
	xorps	%xmm0, %xmm0
	xorl	%r9d, %r9d
	leaq	136(%rsp), %rdx
	leaq	128(%rsp), %rax
	movq	%rbx, 40(%rsp)
	movq	%rdi, %r8
	movq	%rsi, %rcx
	ucomiss	%xmm0, %xmm1
	movss	128(%rsp), %xmm1
	cmovbe	%r9, %rdx
	ucomiss	%xmm0, %xmm1
	movq	%rdx, 32(%rsp)
	movl	$1, %edx
	cmova	%rax, %r9
	movl	152(%rsp), %eax
	movl	%eax, 48(%rsp)
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,7
.L9179:
	movw	$26149, 64(%rsp)
	movb	$0, 66(%rsp)
	leaq	64(%rsp), %rbx
	movaps	%xmm3, %xmm1
	jmp	.L9174
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11InputFloatNEPKcPfiii
	.def	_ZN5ImGui11InputFloatNEPKcPfiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11InputFloatNEPKcPfiii
_ZN5ImGui11InputFloatNEPKcPfiii:
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
	subq	$152, %rsp
	.seh_stackalloc	152
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	.seh_endprologue
	xorl	%eax, %eax
	movl	%r8d, %r14d
	movl	%r9d, %r12d
	movq	GImGui(%rip), %r13
	movq	%rcx, 224(%rsp)
	movq	6008(%r13), %r15
	cmpb	$0, 140(%r15)
	movb	$1, 138(%r15)
	je	.L9217
.L9181:
	movaps	128(%rsp), %xmm6
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
.L9217:
	movq	%rdx, 72(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	movq	224(%rsp), %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%r14d, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.148
	testl	%r14d, %r14d
	jle	.L9202
	movq	72(%rsp), %rdx
	leaq	108(%rsp), %rax
	movq	%r15, 88(%rsp)
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	leaq	112(%rsp), %rbp
	xorps	%xmm6, %xmm6
	movq	%rax, 72(%rsp)
	movq	%rdx, %rsi
	movl	256(%rsp), %r15d
	jmp	.L9193
	.p2align 4,,7
.L9183:
	leaq	.LC337(%rip), %r8
	movl	%r12d, %r9d
	movl	$16, %edx
	movq	%rbp, %rcx
	call	_Z14ImFormatStringPciPKcz
	movss	104(%rsp), %xmm0
	ucomiss	%xmm6, %xmm0
	movss	108(%rsp), %xmm0
	jbe	.L9214
	leaq	104(%rsp), %rax
.L9187:
	ucomiss	%xmm6, %xmm0
	movl	$0, %r9d
	cmova	72(%rsp), %r9
.L9184:
	leaq	.LC329(%rip), %rcx
	movl	$1, %edx
	movl	%r15d, 48(%rsp)
	movq	%rbp, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rsi, %r8
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%r13), %xmm0
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L9189
	ucomiss	%xmm0, %xmm6
	ja	.L9218
.L9190:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L9189:
	movl	496(%rax), %edx
	testl	%edx, %edx
	jle	.L9219
.L9192:
	decl	%edx
	incl	%ebx
	addq	$4, %rsi
	movl	%edx, 496(%rax)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	%ebx, %r14d
	je	.L9220
.L9193:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	testl	%r12d, %r12d
	movl	$0x00000000, 104(%rsp)
	movl	$0x00000000, 108(%rsp)
	jns	.L9183
	movw	$26149, 0(%rbp)
	movb	$0, 2(%rbp)
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	jmp	.L9184
	.p2align 4,,7
.L9219:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	movq	%rax, 80(%rsp)
	call	_assert
	movq	80(%rsp), %rax
	movl	496(%rax), %edx
	jmp	.L9192
	.p2align 4,,7
.L9218:
	movss	5168(%rdx), %xmm0
	jmp	.L9190
	.p2align 4,,7
.L9220:
	movq	88(%rsp), %r15
.L9182:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%r13), %xmm0
	cmpq	$-1, 224(%rsp)
	movaps	%xmm0, %xmm1
	movss	228(%r15), %xmm2
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 228(%r15)
	je	.L9204
	movq	224(%rsp), %rax
	movq	224(%rsp), %rdx
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9198
	jmp	.L9196
	.p2align 4,,7
.L9199:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9196
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9196
.L9198:
	cmpb	$35, %al
	jne	.L9199
	cmpb	$35, 1(%rdx)
	jne	.L9199
	.p2align 4,,7
.L9196:
	movq	224(%rsp), %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9181
.L9202:
	xorl	%edi, %edi
	.p2align 4,,4
	jmp	.L9182
.L9204:
	movq	224(%rsp), %rdx
	jmp	.L9196
.L9214:
	xorl	%eax, %eax
	jmp	.L9187
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11InputFloat3EPKcPfii
	.def	_ZN5ImGui11InputFloat3EPKcPfii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11InputFloat3EPKcPfii
_ZN5ImGui11InputFloat3EPKcPfii:
.LFB747:
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
	xorl	%eax, %eax
	movl	%r8d, %r12d
	movl	%r9d, %r14d
	movq	GImGui(%rip), %r13
	movq	%rcx, 208(%rsp)
	movq	6008(%r13), %r15
	cmpb	$0, 140(%r15)
	movb	$1, 138(%r15)
	je	.L9254
.L9222:
	movaps	112(%rsp), %xmm6
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
	.p2align 4,,7
.L9254:
	movq	%rdx, 64(%rsp)
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	call	_ZN5ImGui10BeginGroupEv
	movq	208(%rsp), %rcx
	xorps	%xmm6, %xmm6
	leaq	96(%rsp), %rbp
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.146
	movq	64(%rsp), %rdx
	leaq	92(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	%rdx, %rsi
	jmp	.L9233
	.p2align 4,,7
.L9223:
	leaq	.LC337(%rip), %r8
	movl	%r12d, %r9d
	movl	$16, %edx
	movq	%rbp, %rcx
	call	_Z14ImFormatStringPciPKcz
	movss	88(%rsp), %xmm0
	ucomiss	%xmm6, %xmm0
	movss	92(%rsp), %xmm0
	jbe	.L9253
	leaq	88(%rsp), %rax
.L9227:
	ucomiss	%xmm6, %xmm0
	movl	$0, %r9d
	cmova	64(%rsp), %r9
.L9224:
	leaq	.LC329(%rip), %rcx
	movl	$1, %edx
	movl	%r14d, 48(%rsp)
	movq	%rbp, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rsi, %r8
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%r13), %xmm0
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L9229
	ucomiss	%xmm0, %xmm6
	ja	.L9255
.L9230:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L9229:
	movl	496(%rax), %edx
	testl	%edx, %edx
	jle	.L9256
.L9232:
	decl	%edx
	incl	%ebx
	addq	$4, %rsi
	movl	%edx, 496(%rax)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$3, %ebx
	je	.L9257
.L9233:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	testl	%r12d, %r12d
	movl	$0x00000000, 88(%rsp)
	movl	$0x00000000, 92(%rsp)
	jns	.L9223
	movw	$26149, 0(%rbp)
	movb	$0, 2(%rbp)
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	jmp	.L9224
	.p2align 4,,7
.L9256:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	movq	%rax, 72(%rsp)
	call	_assert
	movq	72(%rsp), %rax
	movl	496(%rax), %edx
	jmp	.L9232
	.p2align 4,,7
.L9255:
	movss	5168(%rdx), %xmm0
	jmp	.L9230
	.p2align 4,,7
.L9257:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%r13), %xmm0
	cmpq	$-1, 208(%rsp)
	movaps	%xmm0, %xmm1
	movss	228(%r15), %xmm2
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 228(%r15)
	je	.L9243
	movq	208(%rsp), %rax
	movq	208(%rsp), %rdx
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9238
	jmp	.L9236
	.p2align 4,,7
.L9239:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9236
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9236
.L9238:
	cmpb	$35, %al
	jne	.L9239
	cmpb	$35, 1(%rdx)
	jne	.L9239
	.p2align 4,,7
.L9236:
	movq	208(%rsp), %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9222
.L9243:
	movq	208(%rsp), %rdx
	jmp	.L9236
.L9253:
	xorl	%eax, %eax
	jmp	.L9227
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11InputFloat2EPKcPfii
	.def	_ZN5ImGui11InputFloat2EPKcPfii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11InputFloat2EPKcPfii
_ZN5ImGui11InputFloat2EPKcPfii:
.LFB746:
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
	xorl	%eax, %eax
	movl	%r8d, %r12d
	movl	%r9d, %r14d
	movq	GImGui(%rip), %r13
	movq	%rcx, 208(%rsp)
	movq	6008(%r13), %r15
	cmpb	$0, 140(%r15)
	movb	$1, 138(%r15)
	je	.L9291
.L9259:
	movaps	112(%rsp), %xmm6
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
	.p2align 4,,7
.L9291:
	movq	%rdx, 64(%rsp)
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	call	_ZN5ImGui10BeginGroupEv
	movq	208(%rsp), %rcx
	xorps	%xmm6, %xmm6
	leaq	96(%rsp), %rbp
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.147
	movq	64(%rsp), %rdx
	leaq	92(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	%rdx, %rsi
	jmp	.L9270
	.p2align 4,,7
.L9260:
	leaq	.LC337(%rip), %r8
	movl	%r12d, %r9d
	movl	$16, %edx
	movq	%rbp, %rcx
	call	_Z14ImFormatStringPciPKcz
	movss	88(%rsp), %xmm0
	ucomiss	%xmm6, %xmm0
	movss	92(%rsp), %xmm0
	jbe	.L9290
	leaq	88(%rsp), %rax
.L9264:
	ucomiss	%xmm6, %xmm0
	movl	$0, %r9d
	cmova	64(%rsp), %r9
.L9261:
	leaq	.LC329(%rip), %rcx
	movl	$1, %edx
	movl	%r14d, 48(%rsp)
	movq	%rbp, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rsi, %r8
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%r13), %xmm0
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L9266
	ucomiss	%xmm0, %xmm6
	ja	.L9292
.L9267:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L9266:
	movl	496(%rax), %edx
	testl	%edx, %edx
	jle	.L9293
.L9269:
	decl	%edx
	incl	%ebx
	addq	$4, %rsi
	movl	%edx, 496(%rax)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$2, %ebx
	je	.L9294
.L9270:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	testl	%r12d, %r12d
	movl	$0x00000000, 88(%rsp)
	movl	$0x00000000, 92(%rsp)
	jns	.L9260
	movw	$26149, 0(%rbp)
	movb	$0, 2(%rbp)
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	jmp	.L9261
	.p2align 4,,7
.L9293:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	movq	%rax, 72(%rsp)
	call	_assert
	movq	72(%rsp), %rax
	movl	496(%rax), %edx
	jmp	.L9269
	.p2align 4,,7
.L9292:
	movss	5168(%rdx), %xmm0
	jmp	.L9267
	.p2align 4,,7
.L9294:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%r13), %xmm0
	cmpq	$-1, 208(%rsp)
	movaps	%xmm0, %xmm1
	movss	228(%r15), %xmm2
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 228(%r15)
	je	.L9280
	movq	208(%rsp), %rax
	movq	208(%rsp), %rdx
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9275
	jmp	.L9273
	.p2align 4,,7
.L9276:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9273
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9273
.L9275:
	cmpb	$35, %al
	jne	.L9276
	cmpb	$35, 1(%rdx)
	jne	.L9276
	.p2align 4,,7
.L9273:
	movq	208(%rsp), %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9259
.L9280:
	movq	208(%rsp), %rdx
	jmp	.L9273
.L9290:
	xorl	%eax, %eax
	jmp	.L9264
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui11InputFloat4EPKcPfii
	.def	_ZN5ImGui11InputFloat4EPKcPfii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui11InputFloat4EPKcPfii
_ZN5ImGui11InputFloat4EPKcPfii:
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
	subq	$136, %rsp
	.seh_stackalloc	136
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	.seh_endprologue
	xorl	%eax, %eax
	movl	%r8d, %r12d
	movl	%r9d, %r14d
	movq	GImGui(%rip), %r13
	movq	%rcx, 208(%rsp)
	movq	6008(%r13), %r15
	cmpb	$0, 140(%r15)
	movb	$1, 138(%r15)
	je	.L9328
.L9296:
	movaps	112(%rsp), %xmm6
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
	.p2align 4,,7
.L9328:
	movq	%rdx, 64(%rsp)
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	call	_ZN5ImGui10BeginGroupEv
	movq	208(%rsp), %rcx
	xorps	%xmm6, %xmm6
	leaq	96(%rsp), %rbp
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.145
	movq	64(%rsp), %rdx
	leaq	92(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	%rdx, %rsi
	jmp	.L9307
	.p2align 4,,7
.L9297:
	leaq	.LC337(%rip), %r8
	movl	%r12d, %r9d
	movl	$16, %edx
	movq	%rbp, %rcx
	call	_Z14ImFormatStringPciPKcz
	movss	88(%rsp), %xmm0
	ucomiss	%xmm6, %xmm0
	movss	92(%rsp), %xmm0
	jbe	.L9327
	leaq	88(%rsp), %rax
.L9301:
	ucomiss	%xmm6, %xmm0
	movl	$0, %r9d
	cmova	64(%rsp), %r9
.L9298:
	leaq	.LC329(%rip), %rcx
	movl	$1, %edx
	movl	%r14d, 48(%rsp)
	movq	%rbp, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rsi, %r8
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%r13), %xmm0
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L9303
	ucomiss	%xmm0, %xmm6
	ja	.L9329
.L9304:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L9303:
	movl	496(%rax), %edx
	testl	%edx, %edx
	jle	.L9330
.L9306:
	decl	%edx
	incl	%ebx
	addq	$4, %rsi
	movl	%edx, 496(%rax)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$4, %ebx
	je	.L9331
.L9307:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	testl	%r12d, %r12d
	movl	$0x00000000, 88(%rsp)
	movl	$0x00000000, 92(%rsp)
	jns	.L9297
	movw	$26149, 0(%rbp)
	movb	$0, 2(%rbp)
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	jmp	.L9298
	.p2align 4,,7
.L9330:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	movq	%rax, 72(%rsp)
	call	_assert
	movq	72(%rsp), %rax
	movl	496(%rax), %edx
	jmp	.L9306
	.p2align 4,,7
.L9329:
	movss	5168(%rdx), %xmm0
	jmp	.L9304
	.p2align 4,,7
.L9331:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%r13), %xmm0
	cmpq	$-1, 208(%rsp)
	movaps	%xmm0, %xmm1
	movss	228(%r15), %xmm2
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 228(%r15)
	je	.L9317
	movq	208(%rsp), %rax
	movq	208(%rsp), %rdx
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9312
	jmp	.L9310
	.p2align 4,,7
.L9313:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9310
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9310
.L9312:
	cmpb	$35, %al
	jne	.L9313
	cmpb	$35, 1(%rdx)
	jne	.L9313
	.p2align 4,,7
.L9310:
	movq	208(%rsp), %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9296
.L9317:
	movq	208(%rsp), %rdx
	jmp	.L9310
.L9327:
	xorl	%eax, %eax
	jmp	.L9301
	.seh_endproc
	.p2align 4,,15
	.def	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.123;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.123
_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.123:
.LFB6215:
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
	movq	GImGui(%rip), %rbx
	xorl	%eax, %eax
	movl	312(%rsp), %edi
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movq	%r8, %r13
	movq	%r9, %r14
	movq	6008(%rbx), %rsi
	cmpb	$0, 140(%rsi)
	movb	$1, 138(%rsi)
	je	.L9371
.L9333:
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
.L9371:
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movq	%rax, 80(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	movq	%r12, %rcx
	call	_ZN5ImGui6PushIDEPKc
	movss	5160(%rbx), %xmm0
	testq	%r13, %r13
	movss	5156(%rbx), %xmm2
	addss	%xmm0, %xmm0
	addss	%xmm2, %xmm2
	movss	5944(%rbx), %xmm1
	addss	%xmm1, %xmm0
	addss	%xmm2, %xmm1
	movss	%xmm0, 100(%rsp)
	movss	%xmm1, 96(%rsp)
	je	.L9334
	call	_ZN5ImGui13CalcItemWidthEv
	movss	96(%rsp), %xmm1
	addss	5176(%rbx), %xmm1
	movss	.LC28(%rip), %xmm2
	addss	%xmm1, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	call	_ZN5ImGui13PushItemWidthEf
.L9334:
	leaq	128(%rsp), %r15
	movl	0(%rbp), %r9d
	movq	304(%rsp), %r8
	movl	$64, %edx
	movq	%r15, %rcx
	call	_Z14ImFormatStringPciPKcz.constprop.166
	movl	%edi, %eax
	orl	$1, %eax
	testb	$2, %dil
	cmove	%eax, %edi
	movl	%edi, %eax
	orl	$16, %eax
	andl	$1048576, %edi
	je	.L9337
	leaq	.LC15(%rip), %rdx
	leaq	.LC334(%rip), %rcx
	movl	$8246, %r8d
	movl	%eax, 64(%rsp)
	call	_assert
	movl	64(%rsp), %eax
.L9337:
	leaq	112(%rsp), %r9
	leaq	.LC91(%rip), %rcx
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	%eax, 32(%rsp)
	movl	$64, %r8d
	movq	%r15, %rdx
	movl	$0x00000000, 112(%rsp)
	movl	$0x00000000, 116(%rsp)
	xorl	%edi, %edi
	call	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	jne	.L9372
.L9338:
	testq	%r13, %r13
	je	.L9339
	.p2align 4,,6
	call	_ZN5ImGui12PopItemWidthEv
	leaq	96(%rsp), %r15
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	leaq	.LC335(%rip), %rcx
	movl	$65, %r8d
	movq	%r15, %rdx
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	testb	%al, %al
	je	.L9340
	cmpb	$0, 285(%rbx)
	je	.L9352
	testq	%r14, %r14
	movq	%r14, %rax
	je	.L9352
.L9341:
	movl	(%rax), %eax
	subl	%eax, 0(%rbp)
	movl	$1, %edi
.L9340:
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	leaq	.LC336(%rip), %rcx
	movl	$65, %r8d
	movq	%r15, %rdx
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	testb	%al, %al
	je	.L9339
	cmpb	$0, 285(%rbx)
	je	.L9353
	testq	%r14, %r14
	je	.L9353
.L9343:
	movl	(%r14), %eax
	addl	%eax, 0(%rbp)
	movl	$1, %edi
.L9339:
	call	_ZN5ImGui5PopIDEv
	movss	80(%rsp), %xmm0
	ucomiss	.LC9(%rip), %xmm0
	jbe	.L9345
	movss	5176(%rbx), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	movss	196(%rsi), %xmm0
	movl	192(%rsi), %ecx
	addss	5160(%rbx), %xmm0
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	movss	%xmm0, 64(%rsp)
	movq	64(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	leaq	80(%rsp), %rcx
	movss	5160(%rbx), %xmm1
	call	_ZN5ImGui8ItemSizeERK6ImVec2f
.L9345:
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9333
	.p2align 4,,7
.L9372:
	movq	GImGui(%rip), %rax
	movq	%rbp, %r9
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movq	6944(%rax), %rdx
	movq	304(%rsp), %rax
	movq	%rax, 32(%rsp)
	call	_ZL23DataTypeApplyOpFromTextPKcS0_13ImGuiDataTypePvS0_
	movl	%eax, %edi
	jmp	.L9338
	.p2align 4,,7
.L9353:
	movq	%r13, %r14
	jmp	.L9343
	.p2align 4,,7
.L9352:
	movq	%r13, %rax
	jmp	.L9341
	.seh_endproc
	.section .rdata,"dr"
.LC338:
	.ascii "%08X\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui8InputIntEPKcPiiii
	.def	_ZN5ImGui8InputIntEPKcPiiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui8InputIntEPKcPiiii
_ZN5ImGui8InputIntEPKcPiiii:
.LFB744:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	96(%rsp), %r10d
	xorps	%xmm0, %xmm0
	cvtsi2ss	%r9d, %xmm1
	leaq	.LC12(%rip), %r11
	leaq	.LC338(%rip), %rax
	movl	%r9d, 88(%rsp)
	leaq	88(%rsp), %r9
	testb	$2, %r10b
	movl	%r8d, 80(%rsp)
	movl	%r10d, 40(%rsp)
	cmove	%r11, %rax
	xorl	%r11d, %r11d
	movq	%rax, 32(%rsp)
	ucomiss	%xmm0, %xmm1
	cvtsi2ss	%r8d, %xmm1
	leaq	80(%rsp), %r8
	cmovbe	%r11, %r9
	ucomiss	%xmm0, %xmm1
	cmovbe	%r11, %r8
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.123
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9InputIntNEPKcPiii
	.def	_ZN5ImGui9InputIntNEPKcPiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9InputIntNEPKcPiii
_ZN5ImGui9InputIntNEPKcPiii:
.LFB749:
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
	xorl	%eax, %eax
	movl	%r8d, %r12d
	movl	%r9d, %r13d
	movq	GImGui(%rip), %rbp
	movq	%rcx, 160(%rsp)
	movq	6008(%rbp), %r15
	cmpb	$0, 140(%r15)
	movb	$1, 138(%r15)
	je	.L9405
.L9381:
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
	.p2align 4,,7
.L9405:
	movq	%rdx, 56(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	movq	160(%rsp), %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	%r12d, %ecx
	call	_ZL20PushMultiItemsWidthsif.constprop.148
	testl	%r12d, %r12d
	jle	.L9396
	movq	56(%rsp), %rdx
	leaq	.LC12(%rip), %rax
	leaq	.LC338(%rip), %r14
	testb	$2, %r13b
	xorps	%xmm6, %xmm6
	cmove	%rax, %r14
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movq	%rdx, %rsi
	jmp	.L9387
	.p2align 4,,7
.L9386:
	decl	%edx
	incl	%ebx
	addq	$4, %rsi
	movl	%edx, 496(%rax)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	%ebx, %r12d
	je	.L9382
.L9387:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	leaq	.LC329(%rip), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rsi, %rdx
	movl	%r13d, 40(%rsp)
	movq	%r14, 32(%rsp)
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.123
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L9383
	ucomiss	%xmm0, %xmm6
	ja	.L9406
.L9384:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L9383:
	movl	496(%rax), %edx
	testl	%edx, %edx
	jg	.L9386
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	movq	%rax, 56(%rsp)
	call	_assert
	movq	56(%rsp), %rax
	movl	496(%rax), %edx
	jmp	.L9386
	.p2align 4,,7
.L9406:
	movss	5168(%rdx), %xmm0
	jmp	.L9384
.L9396:
	xorl	%edi, %edi
	.p2align 4,,7
.L9382:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rbp), %xmm0
	cmpq	$-1, 160(%rsp)
	movaps	%xmm0, %xmm1
	movss	228(%r15), %xmm2
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 228(%r15)
	je	.L9397
	movq	160(%rsp), %rax
	movq	160(%rsp), %rdx
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9392
	jmp	.L9390
	.p2align 4,,7
.L9393:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9390
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9390
.L9392:
	cmpb	$35, %al
	jne	.L9393
	cmpb	$35, 1(%rdx)
	jne	.L9393
	.p2align 4,,7
.L9390:
	movq	160(%rsp), %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9381
.L9397:
	movq	160(%rsp), %rdx
	jmp	.L9390
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9InputInt4EPKcPii
	.def	_ZN5ImGui9InputInt4EPKcPii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9InputInt4EPKcPii
_ZN5ImGui9InputInt4EPKcPii:
.LFB752:
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
	xorl	%eax, %eax
	movq	%rcx, %r15
	movl	%r8d, %r12d
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %r14
	cmpb	$0, 140(%r14)
	movb	$1, 138(%r14)
	je	.L9430
.L9408:
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
	.p2align 4,,7
.L9430:
	movq	%rdx, 56(%rsp)
	leaq	.LC338(%rip), %r13
	call	_ZN5ImGui10BeginGroupEv
	movq	%r15, %rcx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.145
	movq	56(%rsp), %rdx
	leaq	.LC12(%rip), %rax
	testb	$2, %r12b
	cmove	%rax, %r13
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	movq	%rdx, %rsi
	jmp	.L9413
	.p2align 4,,7
.L9412:
	decl	%edx
	incl	%ebx
	addq	$4, %rsi
	movl	%edx, 496(%rax)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$4, %ebx
	je	.L9431
.L9413:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	leaq	.LC329(%rip), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rsi, %rdx
	movl	%r12d, 40(%rsp)
	movq	%r13, 32(%rsp)
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.123
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L9409
	ucomiss	%xmm0, %xmm6
	ja	.L9432
.L9410:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L9409:
	movl	496(%rax), %edx
	testl	%edx, %edx
	jg	.L9412
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	movq	%rax, 56(%rsp)
	call	_assert
	movq	56(%rsp), %rax
	movl	496(%rax), %edx
	jmp	.L9412
	.p2align 4,,7
.L9432:
	movss	5168(%rdx), %xmm0
	jmp	.L9410
	.p2align 4,,7
.L9431:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rbp), %xmm0
	cmpq	$-1, %r15
	movaps	%xmm0, %xmm1
	movss	228(%r14), %xmm2
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 228(%r14)
	je	.L9422
	movzbl	(%r15), %eax
	movq	%r15, %rdx
	testb	%al, %al
	jne	.L9418
	jmp	.L9416
	.p2align 4,,7
.L9419:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9416
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9416
.L9418:
	cmpb	$35, %al
	jne	.L9419
	cmpb	$35, 1(%rdx)
	jne	.L9419
	.p2align 4,,7
.L9416:
	movq	%r15, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9408
.L9422:
	movq	%r15, %rdx
	.p2align 4,,3
	jmp	.L9416
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9InputInt3EPKcPii
	.def	_ZN5ImGui9InputInt3EPKcPii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9InputInt3EPKcPii
_ZN5ImGui9InputInt3EPKcPii:
.LFB751:
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
	xorl	%eax, %eax
	movq	%rcx, %r15
	movl	%r8d, %r12d
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %r14
	cmpb	$0, 140(%r14)
	movb	$1, 138(%r14)
	je	.L9456
.L9434:
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
	.p2align 4,,7
.L9456:
	movq	%rdx, 56(%rsp)
	leaq	.LC338(%rip), %r13
	call	_ZN5ImGui10BeginGroupEv
	movq	%r15, %rcx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.146
	movq	56(%rsp), %rdx
	leaq	.LC12(%rip), %rax
	testb	$2, %r12b
	cmove	%rax, %r13
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	movq	%rdx, %rsi
	jmp	.L9439
	.p2align 4,,7
.L9438:
	decl	%edx
	incl	%ebx
	addq	$4, %rsi
	movl	%edx, 496(%rax)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$3, %ebx
	je	.L9457
.L9439:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	leaq	.LC329(%rip), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rsi, %rdx
	movl	%r12d, 40(%rsp)
	movq	%r13, 32(%rsp)
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.123
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L9435
	ucomiss	%xmm0, %xmm6
	ja	.L9458
.L9436:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L9435:
	movl	496(%rax), %edx
	testl	%edx, %edx
	jg	.L9438
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	movq	%rax, 56(%rsp)
	call	_assert
	movq	56(%rsp), %rax
	movl	496(%rax), %edx
	jmp	.L9438
	.p2align 4,,7
.L9458:
	movss	5168(%rdx), %xmm0
	jmp	.L9436
	.p2align 4,,7
.L9457:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rbp), %xmm0
	cmpq	$-1, %r15
	movaps	%xmm0, %xmm1
	movss	228(%r14), %xmm2
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 228(%r14)
	je	.L9448
	movzbl	(%r15), %eax
	movq	%r15, %rdx
	testb	%al, %al
	jne	.L9444
	jmp	.L9442
	.p2align 4,,7
.L9445:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9442
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9442
.L9444:
	cmpb	$35, %al
	jne	.L9445
	cmpb	$35, 1(%rdx)
	jne	.L9445
	.p2align 4,,7
.L9442:
	movq	%r15, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9434
.L9448:
	movq	%r15, %rdx
	.p2align 4,,3
	jmp	.L9442
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui9InputInt2EPKcPii
	.def	_ZN5ImGui9InputInt2EPKcPii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui9InputInt2EPKcPii
_ZN5ImGui9InputInt2EPKcPii:
.LFB750:
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
	xorl	%eax, %eax
	movq	%rcx, %r15
	movl	%r8d, %r12d
	movq	GImGui(%rip), %rbp
	movq	6008(%rbp), %r14
	cmpb	$0, 140(%r14)
	movb	$1, 138(%r14)
	je	.L9482
.L9460:
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
	.p2align 4,,7
.L9482:
	movq	%rdx, 56(%rsp)
	leaq	.LC338(%rip), %r13
	call	_ZN5ImGui10BeginGroupEv
	movq	%r15, %rcx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui6PushIDEPKc
	call	_ZL20PushMultiItemsWidthsif.constprop.147
	movq	56(%rsp), %rdx
	leaq	.LC12(%rip), %rax
	testb	$2, %r12b
	cmove	%rax, %r13
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	movq	%rdx, %rsi
	jmp	.L9465
	.p2align 4,,7
.L9464:
	decl	%edx
	incl	%ebx
	addq	$4, %rsi
	movl	%edx, 496(%rax)
	call	_ZN5ImGui12PopItemWidthEv
	cmpl	$2, %ebx
	je	.L9483
.L9465:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	leaq	.LC329(%rip), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rsi, %rdx
	movl	%r12d, 40(%rsp)
	movq	%r13, 32(%rsp)
	call	_ZN5ImGui13InputScalarExEPKc13ImGuiDataTypePvS3_S3_S1_i.constprop.123
	movq	GImGui(%rip), %rdx
	orl	%eax, %edi
	movss	5176(%rbp), %xmm0
	movq	6008(%rdx), %rax
	cmpb	$0, 140(%rax)
	movb	$1, 138(%rax)
	jne	.L9461
	ucomiss	%xmm0, %xmm6
	ja	.L9484
.L9462:
	addss	200(%rax), %xmm0
	movss	%xmm0, 192(%rax)
	movss	204(%rax), %xmm0
	movss	%xmm0, 196(%rax)
	movss	232(%rax), %xmm0
	movss	%xmm0, 224(%rax)
	movss	236(%rax), %xmm0
	movss	%xmm0, 228(%rax)
.L9461:
	movl	496(%rax), %edx
	testl	%edx, %edx
	jg	.L9464
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	movq	%rax, 56(%rsp)
	call	_assert
	movq	56(%rsp), %rax
	movl	496(%rax), %edx
	jmp	.L9464
	.p2align 4,,7
.L9484:
	movss	5168(%rdx), %xmm0
	jmp	.L9462
	.p2align 4,,7
.L9483:
	call	_ZN5ImGui5PopIDEv
	movss	5160(%rbp), %xmm0
	cmpq	$-1, %r15
	movaps	%xmm0, %xmm1
	movss	228(%r14), %xmm2
	cmpnless	%xmm2, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	%xmm0, 228(%r14)
	je	.L9474
	movzbl	(%r15), %eax
	movq	%r15, %rdx
	testb	%al, %al
	jne	.L9470
	jmp	.L9468
	.p2align 4,,7
.L9471:
	incq	%rdx
	cmpq	$-1, %rdx
	je	.L9468
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L9468
.L9470:
	cmpb	$35, %al
	jne	.L9471
	cmpb	$35, 1(%rdx)
	jne	.L9471
	.p2align 4,,7
.L9468:
	movq	%r15, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9460
.L9474:
	movq	%r15, %rdx
	.p2align 4,,3
	jmp	.L9468
	.seh_endproc
	.section .rdata,"dr"
.LC339:
	.ascii "M:999\0"
.LC340:
	.ascii "##X\0"
.LC341:
	.ascii "##Y\0"
.LC342:
	.ascii "##Z\0"
.LC343:
	.ascii "##W\0"
.LC345:
	.ascii "#%02X%02X%02X%02X\0"
.LC346:
	.ascii "#%02X%02X%02X\0"
.LC347:
	.ascii "##Text\0"
.LC348:
	.ascii "%02X%02X%02X%02X\0"
.LC349:
	.ascii "%02X%02X%02X\0"
.LC350:
	.ascii "RGB\0"
.LC351:
	.ascii "HSV\0"
.LC352:
	.ascii "HEX\0"
.LC0:
	.ascii "%3.0f\0"
.LC1:
	.ascii "R:%3.0f\0"
.LC2:
	.ascii "G:%3.0f\0"
.LC3:
	.ascii "B:%3.0f\0"
.LC4:
	.ascii "A:%3.0f\0"
.LC5:
	.ascii "H:%3.0f\0"
.LC6:
	.ascii "S:%3.0f\0"
.LC7:
	.ascii "V:%3.0f\0"
	.data
	.align 32
.LC344:
	.quad	.LC0
	.quad	.LC0
	.quad	.LC0
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC4
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui10ColorEdit4EPKcPfb
	.def	_ZN5ImGui10ColorEdit4EPKcPfb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10ColorEdit4EPKcPfb
_ZN5ImGui10ColorEdit4EPKcPfb:
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
	subq	$408, %rsp
	.seh_stackalloc	408
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
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%r8d, %r15d
	movq	GImGui(%rip), %r12
	movq	6008(%r12), %rbp
	cmpb	$0, 140(%rbp)
	movb	$1, 138(%rbp)
	je	.L9610
.L9595:
	movaps	304(%rsp), %xmm6
	movaps	320(%rsp), %xmm7
	movaps	336(%rsp), %xmm8
	movaps	352(%rsp), %xmm9
	movaps	368(%rsp), %xmm10
	movaps	384(%rsp), %xmm11
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
	.p2align 4,,7
.L9610:
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movl	%eax, 112(%rsp)
	call	_ZN5ImGui13CalcItemWidthEv
	movl	400(%rbp), %r13d
	movss	5160(%r12), %xmm7
	addss	%xmm7, %xmm7
	movaps	%xmm0, %xmm8
	leal	2(%r13), %eax
	cmpl	$1, %eax
	addss	5944(%r12), %xmm7
	jbe	.L9611
.L9487:
	movlps	(%rbx), %xmm2
	cmpl	$1, %r13d
	movss	(%rbx), %xmm1
	xorps	%xmm6, %xmm6
	movhps	8(%rbx), %xmm2
	movss	4(%rbx), %xmm0
	movss	8(%rbx), %xmm4
	movss	12(%rbx), %xmm3
	movaps	%xmm2, 144(%rsp)
	je	.L9612
.L9488:
	movaps	%xmm6, %xmm11
	movaps	%xmm1, %xmm5
	cmpb	$1, %r15b
	movss	.LC29(%rip), %xmm10
	cmpless	%xmm1, %xmm11
	sbbl	%esi, %esi
	movaps	%xmm10, %xmm1
	addl	$3, %esi
	movss	.LC100(%rip), %xmm2
	cmpb	$1, %r15b
	andps	%xmm11, %xmm1
	andnps	%xmm2, %xmm11
	movss	.LC30(%rip), %xmm9
	mulss	%xmm9, %xmm5
	movaps	%xmm11, %xmm10
	orps	%xmm1, %xmm10
	movaps	%xmm10, %xmm1
	movaps	%xmm6, %xmm10
	addss	%xmm5, %xmm1
	movss	.LC29(%rip), %xmm5
	cmpless	%xmm0, %xmm10
	andps	%xmm10, %xmm5
	cvttss2si	%xmm1, %eax
	movaps	%xmm0, %xmm1
	movaps	%xmm5, %xmm0
	mulss	%xmm9, %xmm1
	movaps	%xmm10, %xmm5
	andnps	%xmm2, %xmm5
	orps	%xmm0, %xmm5
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm5
	movl	%eax, 160(%rsp)
	movaps	%xmm4, %xmm1
	mulss	%xmm9, %xmm1
	cvttss2si	%xmm5, %eax
	movaps	%xmm6, %xmm5
	cmpless	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	andps	%xmm5, %xmm0
	andnps	%xmm2, %xmm4
	orps	%xmm4, %xmm0
	movaps	%xmm6, %xmm4
	movl	%eax, 164(%rsp)
	addss	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	cmpless	%xmm3, %xmm4
	mulss	%xmm9, %xmm1
	movaps	%xmm4, %xmm3
	cvttss2si	%xmm0, %eax
	movss	.LC29(%rip), %xmm0
	andnps	%xmm2, %xmm3
	andps	%xmm4, %xmm0
	orps	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	movl	%eax, 168(%rsp)
	cvttss2si	%xmm0, %eax
	movl	%eax, 172(%rsp)
	sbbl	%eax, %eax
	addl	$4, %eax
	movl	%eax, 88(%rsp)
	call	_ZN5ImGui10BeginGroupEv
	movq	%r14, %rcx
	call	_ZN5ImGui6PushIDEPKc
	testl	%r13d, %r13d
	js	.L9562
	cmpl	$1, %r13d
	jle	.L9503
	cmpl	$2, %r13d
	jne	.L9562
	leaq	208(%rsp), %rax
	testb	%r15b, %r15b
	subss	%xmm7, %xmm8
	movq	%rax, %rcx
	movq	%rax, 96(%rsp)
	je	.L9514
	movl	172(%rsp), %eax
	movl	160(%rsp), %r9d
	leaq	.LC345(%rip), %r8
	movl	$64, %edx
	movl	%eax, 48(%rsp)
	movl	168(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	164(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	_Z14ImFormatStringPciPKcz.constprop.166
.L9515:
	movaps	%xmm8, %xmm0
	leaq	176(%rsp), %rsi
	xorl	%edi, %edi
	subss	5176(%r12), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	movq	96(%rsp), %rdx
	leaq	.LC347(%rip), %rcx
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$6, 32(%rsp)
	movq	%rsi, %r9
	movl	$64, %r8d
	movl	$0x00000000, 176(%rsp)
	movl	$0x00000000, 180(%rsp)
	call	_ZN5ImGui11InputTextExEPKcPciRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	je	.L9516
	movq	96(%rsp), %rcx
	movabsq	$38654706176, %rdx
	.p2align 4,,7
.L9518:
	movzbl	(%rcx), %eax
	cmpb	$35, %al
	jbe	.L9613
.L9517:
	testb	%r15b, %r15b
	movl	$0, 172(%rsp)
	movl	$0, 168(%rsp)
	movl	$0, 164(%rsp)
	movl	$0, 160(%rsp)
	leaq	160(%rsp), %r8
	je	.L9519
	leaq	12(%r8), %rax
	leaq	4(%r8), %r9
	leaq	.LC348(%rip), %rdx
	movl	$1, %edi
	movq	%rax, 40(%rsp)
	leaq	8(%r8), %rax
	movq	%rax, 32(%rsp)
	call	sscanf
.L9516:
	call	_ZN5ImGui12PopItemWidthEv
	jmp	.L9502
	.p2align 4,,7
.L9503:
	cvtsi2ss	%esi, %xmm1
	leaq	.LC339(%rip), %rcx
	movss	5176(%r12), %xmm0
	xorl	%r8d, %r8d
	addss	%xmm0, %xmm7
	movaps	%xmm0, %xmm2
	cvtsi2ss	88(%rsp), %xmm3
	xorl	%edx, %edx
	leaq	208(%rsp), %rdi
	movss	.LC28(%rip), %xmm10
	leaq	.LC344(%rip), %rsi
	subss	%xmm7, %xmm8
	movaps	%xmm8, %xmm7
	mulss	%xmm1, %xmm2
	subss	%xmm2, %xmm7
	movaps	%xmm7, %xmm2
	divss	%xmm3, %xmm2
	movss	.LC20(%rip), %xmm3
	cvttss2si	%xmm2, %eax
	cvtsi2ss	%eax, %xmm7
	movaps	%xmm7, %xmm2
	cmpnless	%xmm10, %xmm2
	andps	%xmm2, %xmm7
	andnps	%xmm10, %xmm2
	orps	%xmm2, %xmm7
	addss	%xmm7, %xmm0
	mulss	%xmm0, %xmm1
	subss	%xmm1, %xmm8
	cvttss2si	%xmm8, %eax
	cvtsi2ss	%eax, %xmm8
	movaps	%xmm8, %xmm0
	cmpnless	%xmm10, %xmm0
	andps	%xmm0, %xmm8
	andnps	%xmm10, %xmm0
	orps	%xmm0, %xmm8
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf
	movl	%eax, 96(%rsp)
	leaq	.LC340(%rip), %rax
	movl	$12, %ecx
	movss	96(%rsp), %xmm0
	movq	%rdi, 96(%rsp)
	movq	%rax, 176(%rsp)
	leaq	.LC341(%rip), %rax
	ucomiss	%xmm7, %xmm0
	movq	%rax, 184(%rsp)
	leaq	.LC342(%rip), %rax
	rep movsq
	movq	%rax, 192(%rsp)
	leaq	.LC343(%rip), %rax
	movq	96(%rsp), %rdi
	movq	%rax, 200(%rsp)
	jnb	.L9509
	leaq	64(%rdi), %rax
	leaq	32(%rdi), %rdx
	cmpl	$1, %r13d
	cmovne	%rdx, %rax
	movq	%rax, 96(%rsp)
.L9509:
	movaps	%xmm7, %xmm0
	xorps	%xmm7, %xmm7
	xorl	%edi, %edi
	leaq	176(%rsp), %rsi
	call	_ZN5ImGui13PushItemWidthEf
	leaq	128(%rsp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%r13d, 116(%rsp)
	movq	%rbp, 120(%rsp)
	movl	%ecx, %r13d
	movq	%r14, 480(%rsp)
	movq	%rbx, 488(%rsp)
	movq	%rdi, %r14
	movq	%rax, 104(%rsp)
	movl	88(%rsp), %edi
	movl	%edx, %ebx
	movl	%r15d, 88(%rsp)
	movaps	%xmm7, %xmm11
	movq	96(%rsp), %rbp
	movq	%rax, %r15
	jmp	.L9510
	.p2align 4,,7
.L9605:
	cvtsi2ss	160(%rsp,%r14), %xmm0
	movaps	%xmm7, %xmm3
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x437f0000, 32(%rsp)
	movss	%xmm0, 128(%rsp)
.L9606:
	movaps	%xmm10, %xmm2
	movq	%r15, %rdx
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	movss	128(%rsp), %xmm0
	orl	%eax, %ebx
	cvttss2si	%xmm0, %edx
	movss	5176(%r12), %xmm0
	movl	%edx, 160(%rsp,%r14)
	addq	$4, %r14
	call	_ZN5ImGui8SameLineEff.constprop.140
.L9510:
	incl	%r13d
	cmpl	%r13d, %edi
	je	.L9614
	movq	0(%rbp,%r14,2), %rax
	movq	(%rsi,%r14,2), %rcx
	testq	%rax, %rax
	jne	.L9605
	cvtsi2ss	160(%rsp,%r14), %xmm0
	leaq	.LC173(%rip), %rax
	movl	$0x3f800000, 48(%rsp)
	movl	$0x437f0000, 32(%rsp)
	movaps	%xmm11, %xmm3
	movq	%rax, 40(%rsp)
	movss	%xmm0, 128(%rsp)
	jmp	.L9606
	.p2align 4,,7
.L9613:
	btq	%rax, %rdx
	jnc	.L9517
	incq	%rcx
	jmp	.L9518
	.p2align 4,,7
.L9562:
	leaq	176(%rsp), %rsi
	xorl	%edi, %edi
.L9502:
	movss	5176(%r12), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	movss	8(%rbx), %xmm0
	xorl	%edx, %edx
	movss	4(%rbx), %xmm1
	movl	$1, %r8d
	movss	(%rbx), %xmm2
	movq	%rsi, %rcx
	movss	%xmm2, 176(%rsp)
	movl	$0x3f800000, 188(%rsp)
	movss	%xmm1, 180(%rsp)
	movss	%xmm0, 184(%rsp)
	call	_ZN5ImGui11ColorButtonERK6ImVec4bb
	testb	%al, %al
	jne	.L9615
.L9520:
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rax
	cmpb	$0, 268(%rax)
	je	.L9521
	movss	12(%rbx), %xmm3
	xorl	%r8d, %r8d
	ucomiss	%xmm3, %xmm6
	ja	.L9522
	ucomiss	.LC28(%rip), %xmm3
	movl	$255, %r8d
	jbe	.L9616
.L9522:
	movss	8(%rbx), %xmm2
	xorl	%ecx, %ecx
	ucomiss	%xmm2, %xmm6
	ja	.L9523
	ucomiss	.LC28(%rip), %xmm2
	movl	$255, %ecx
	jbe	.L9617
.L9523:
	movss	4(%rbx), %xmm1
	xorl	%edx, %edx
	ucomiss	%xmm1, %xmm6
	ja	.L9524
	ucomiss	.LC28(%rip), %xmm1
	movl	$255, %edx
	jbe	.L9618
.L9524:
	movss	(%rbx), %xmm0
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm6
	ja	.L9525
	ucomiss	.LC28(%rip), %xmm0
	movl	$255, %eax
	jbe	.L9619
.L9525:
	cvtss2sd	%xmm2, %xmm2
	movl	%r8d, 64(%rsp)
	movl	%edx, 48(%rsp)
	cvtss2sd	%xmm1, %xmm1
	movl	%ecx, 56(%rsp)
	leaq	.LC182(%rip), %rcx
	cvtss2sd	%xmm0, %xmm0
	movl	%eax, 40(%rsp)
	cvtss2sd	%xmm3, %xmm4
	movsd	%xmm2, %xmm3
	movsd	%xmm2, 88(%rsp)
	movq	88(%rsp), %r9
	movsd	%xmm1, %xmm2
	movsd	%xmm1, 88(%rsp)
	movq	88(%rsp), %r8
	movsd	%xmm0, %xmm1
	movsd	%xmm0, 88(%rsp)
	movq	88(%rsp), %rdx
	movsd	%xmm4, 32(%rsp)
	call	_ZN5ImGui10SetTooltipEPKcz
.L9521:
	cmpl	$-1, 400(%rbp)
	je	.L9620
.L9526:
	cmpq	$-1, %r14
	je	.L9528
	movzbl	(%r14), %eax
	testb	%al, %al
	je	.L9528
	movq	%r14, %rcx
	jmp	.L9531
	.p2align 4,,7
.L9532:
	incq	%rcx
	cmpq	$-1, %rcx
	je	.L9621
	movzbl	(%rcx), %eax
	testb	%al, %al
	je	.L9530
.L9531:
	cmpb	$35, %al
	jne	.L9532
	cmpb	$35, 1(%rcx)
	jne	.L9532
.L9530:
	cmpq	%rcx, %r14
	movq	%rcx, %rsi
	je	.L9528
.L9533:
	cmpl	$-1, 400(%rbp)
	je	.L9574
	movss	5176(%r12), %xmm0
.L9535:
	call	_ZN5ImGui8SameLineEff.constprop.140
	movq	%rsi, %rdx
	movq	%r14, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
.L9528:
	cvtdq2ps	160(%rsp), %xmm0
	divps	.LC353(%rip), %xmm0
	decl	%r13d
	movaps	%xmm0, 144(%rsp)
	je	.L9622
.L9536:
	testb	%dil, %dil
	je	.L9547
	movss	144(%rsp), %xmm0
	testb	%r15b, %r15b
	movss	%xmm0, (%rbx)
	movss	148(%rsp), %xmm0
	movss	%xmm0, 4(%rbx)
	movss	152(%rsp), %xmm0
	movss	%xmm0, 8(%rbx)
	je	.L9547
	movss	156(%rsp), %xmm0
	movss	%xmm0, 12(%rbx)
.L9547:
	call	_ZN5ImGui5PopIDEv
	call	_ZN5ImGui8EndGroupEv
	movl	%edi, %eax
	jmp	.L9595
	.p2align 4,,7
.L9621:
	movq	%rcx, %rsi
	jmp	.L9533
	.p2align 4,,7
.L9615:
	leal	1(%r13), %r8d
	movl	$1431655766, %edx
	leaq	10336(%r12), %rcx
	movl	%r8d, %eax
	imull	%edx
	movl	%r8d, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx,2), %eax
	movl	112(%rsp), %edx
	subl	%eax, %r8d
	call	_ZN12ImGuiStorage6SetIntEji
	jmp	.L9520
	.p2align 4,,7
.L9612:
	ucomiss	%xmm0, %xmm4
	ja	.L9555
	xorps	%xmm6, %xmm6
	movaps	%xmm4, %xmm2
	movaps	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	movss	.LC78(%rip), %xmm2
	movaps	%xmm6, %xmm5
.L9489:
	ucomiss	%xmm1, %xmm4
	ja	.L9490
	movaps	%xmm5, %xmm2
	movaps	%xmm4, %xmm5
	movaps	%xmm1, %xmm4
	movaps	%xmm5, %xmm1
.L9490:
	movaps	%xmm1, %xmm5
	movaps	%xmm4, %xmm9
	subss	%xmm0, %xmm1
	movss	%xmm4, 152(%rsp)
	minss	%xmm0, %xmm5
	movss	.LC37(%rip), %xmm0
	subss	%xmm5, %xmm9
	movss	.LC80(%rip), %xmm5
	mulss	%xmm9, %xmm0
	addss	%xmm5, %xmm0
	addss	%xmm4, %xmm5
	divss	%xmm0, %xmm1
	movaps	%xmm9, %xmm0
	divss	%xmm5, %xmm0
	addss	%xmm2, %xmm1
	movss	.LC81(%rip), %xmm2
	andps	%xmm2, %xmm1
	movss	%xmm0, 148(%rsp)
	movss	%xmm1, 144(%rsp)
	jmp	.L9488
	.p2align 4,,7
.L9622:
	movss	148(%rsp), %xmm8
	ucomiss	%xmm6, %xmm8
	movss	152(%rsp), %xmm7
	jp	.L9537
	jne	.L9537
	movss	%xmm7, 148(%rsp)
	movss	%xmm7, 144(%rsp)
	jmp	.L9536
	.p2align 4,,7
.L9574:
	movss	.LC20(%rip), %xmm0
	jmp	.L9535
	.p2align 4,,7
.L9514:
	movl	168(%rsp), %eax
	movl	160(%rsp), %r9d
	leaq	.LC346(%rip), %r8
	movl	$64, %edx
	movl	%eax, 40(%rsp)
	movl	164(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	_Z14ImFormatStringPciPKcz.constprop.166
	jmp	.L9515
.L9555:
	movss	.LC79(%rip), %xmm2
	movss	.LC20(%rip), %xmm5
	xorps	%xmm6, %xmm6
	jmp	.L9489
.L9620:
	movss	5176(%r12), %xmm0
	call	_ZN5ImGui8SameLineEff.constprop.140
	leaq	.LC350(%rip), %rax
	leaq	128(%rsp), %rdx
	movl	$64, %r8d
	movl	$0x00000000, 128(%rsp)
	movl	$0x00000000, 132(%rsp)
	movq	%rax, 208(%rsp)
	leaq	.LC351(%rip), %rax
	movq	%rax, 216(%rsp)
	leaq	.LC352(%rip), %rax
	movq	%rax, 224(%rsp)
	movslq	%r13d, %rax
	movq	208(%rsp,%rax,8), %rcx
	call	_ZN5ImGui8ButtonExEPKcRK6ImVec2i
	testb	%al, %al
	je	.L9526
	leal	1(%r13), %r8d
	movl	$1431655766, %edx
	leaq	10336(%r12), %rcx
	movl	%r8d, %eax
	imull	%edx
	movl	%r8d, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx,2), %eax
	movl	112(%rsp), %edx
	subl	%eax, %r8d
	call	_ZN12ImGuiStorage6SetIntEji
	jmp	.L9526
.L9611:
	movl	112(%rsp), %edx
	leaq	10336(%r12), %rcx
	xorl	%r8d, %r8d
	call	_ZNK12ImGuiStorage6GetIntEji
	movl	$1431655766, %edx
	movl	%eax, %ecx
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx,2), %eax
	subl	%eax, %ecx
	movl	%ecx, %r13d
	jmp	.L9487
.L9519:
	leaq	8(%r8), %rax
	leaq	4(%r8), %r9
	leaq	.LC349(%rip), %rdx
	movl	$1, %edi
	movq	%rax, 32(%rsp)
	call	sscanf
	jmp	.L9516
.L9619:
	mulss	%xmm0, %xmm9
	addss	.LC29(%rip), %xmm9
	cvttss2si	%xmm9, %eax
	jmp	.L9525
.L9618:
	movaps	%xmm1, %xmm0
	mulss	%xmm9, %xmm0
	addss	.LC29(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	jmp	.L9524
.L9617:
	movaps	%xmm2, %xmm0
	mulss	%xmm9, %xmm0
	addss	.LC29(%rip), %xmm0
	cvttss2si	%xmm0, %ecx
	jmp	.L9523
.L9616:
	movaps	%xmm3, %xmm0
	mulss	%xmm9, %xmm0
	addss	.LC29(%rip), %xmm0
	cvttss2si	%xmm0, %r8d
	jmp	.L9522
.L9537:
	movss	.LC28(%rip), %xmm1
	movss	144(%rsp), %xmm0
	call	fmodf
	movaps	%xmm0, %xmm1
	movaps	%xmm8, %xmm3
	divss	.LC82(%rip), %xmm1
	cvttss2si	%xmm1, %eax
	cvtsi2ss	%eax, %xmm0
	cmpl	$4, %eax
	subss	%xmm0, %xmm1
	movss	.LC28(%rip), %xmm0
	movaps	%xmm0, %xmm6
	movaps	%xmm0, %xmm2
	mulss	%xmm1, %xmm3
	subss	%xmm8, %xmm2
	subss	%xmm3, %xmm6
	mulss	%xmm7, %xmm2
	movaps	%xmm6, %xmm3
	movaps	%xmm0, %xmm6
	mulss	%xmm7, %xmm3
	subss	%xmm1, %xmm6
	mulss	%xmm6, %xmm8
	subss	%xmm8, %xmm0
	mulss	%xmm7, %xmm0
	ja	.L9539
	leaq	.L9541(%rip), %rdx
	movl	%eax, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rax, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L9541:
	.long	.L9540-.L9541
	.long	.L9542-.L9541
	.long	.L9543-.L9541
	.long	.L9544-.L9541
	.long	.L9545-.L9541
	.text
.L9544:
	movss	%xmm2, 144(%rsp)
	movss	%xmm3, 148(%rsp)
	jmp	.L9536
.L9543:
	movss	%xmm2, 144(%rsp)
	movss	%xmm7, 148(%rsp)
	movss	%xmm0, 152(%rsp)
	jmp	.L9536
.L9542:
	movss	%xmm3, 144(%rsp)
	movss	%xmm7, 148(%rsp)
	movss	%xmm2, 152(%rsp)
	jmp	.L9536
.L9540:
	movss	%xmm7, 144(%rsp)
	movss	%xmm0, 148(%rsp)
	movss	%xmm2, 152(%rsp)
	jmp	.L9536
.L9545:
	movss	%xmm0, 144(%rsp)
	movss	%xmm2, 148(%rsp)
	jmp	.L9536
.L9539:
	movss	%xmm7, 144(%rsp)
	movss	%xmm2, 148(%rsp)
	movss	%xmm3, 152(%rsp)
	jmp	.L9536
.L9614:
	movaps	%xmm8, %xmm0
	movq	%r14, %rdi
	movl	116(%rsp), %r13d
	movq	120(%rsp), %rbp
	movb	%bl, 116(%rsp)
	movq	480(%rsp), %r14
	movq	488(%rsp), %rbx
	movl	88(%rsp), %r15d
	call	_ZN5ImGui13PushItemWidthEf
	movq	96(%rsp), %rax
	movq	(%rsi,%rdi,2), %rcx
	movq	(%rax,%rdi,2), %rax
	testq	%rax, %rax
	je	.L9623
	cvtsi2ss	160(%rsp,%rdi), %xmm0
	movl	$0x3f800000, 48(%rsp)
	movss	%xmm0, 128(%rsp)
.L9607:
	xorps	%xmm3, %xmm3
	movq	104(%rsp), %rdx
	movq	%rax, 40(%rsp)
	movaps	%xmm10, %xmm2
	movl	$0x437f0000, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	cvttss2si	128(%rsp), %edx
	movl	%edx, 160(%rsp,%rdi)
	movzbl	116(%rsp), %edi
	orl	%eax, %edi
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui12PopItemWidthEv
	jmp	.L9502
.L9623:
	cvtsi2ss	160(%rsp,%rdi), %xmm0
	leaq	.LC173(%rip), %rax
	movl	$0x3f800000, 48(%rsp)
	movss	%xmm0, 128(%rsp)
	jmp	.L9607
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui10ColorEdit3EPKcPf
	.def	_ZN5ImGui10ColorEdit3EPKcPf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10ColorEdit3EPKcPf
_ZN5ImGui10ColorEdit3EPKcPf:
.LFB774:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	xorl	%r8d, %r8d
	movss	(%rdx), %xmm0
	movq	%rdx, %rbx
	movl	$0x3f800000, 44(%rsp)
	movss	%xmm0, 32(%rsp)
	movss	4(%rdx), %xmm0
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
	.globl	_ZN5ImGui10BeginChildEjRK6ImVec2bi
	.def	_ZN5ImGui10BeginChildEjRK6ImVec2bi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui10BeginChildEjRK6ImVec2bi
_ZN5ImGui10BeginChildEjRK6ImVec2bi:
.LFB487:
	.seh_endprologue
	movzbl	%r8b, %r8d
	jmp	_ZL12BeginChildExPKcjRK6ImVec2bi.constprop.150
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2
	.def	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2
_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2:
.LFB760:
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
	xorl	%eax, %eax
	movq	%rcx, %rbp
	movq	%rdx, %r13
	movq	GImGui(%rip), %rdi
	movq	6008(%rdi), %rbx
	cmpb	$0, 140(%rbx)
	movb	$1, 138(%rbx)
	je	.L9637
.L9627:
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
	ret
	.p2align 4,,7
.L9637:
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKcS1_.constprop.157
	movq	%rbp, %rcx
	movl	%eax, %r12d
	call	_ZN5ImGui12CalcTextSizeEPKcS1_bf.constprop.152
	movl	%eax, 44(%rsp)
	movq	%rax, %rsi
	movq	GImGui(%rip), %rax
	movss	44(%rsp), %xmm8
	shrq	$32, %rsi
	xorps	%xmm9, %xmm9
	movss	5944(%rax), %xmm6
	addss	5172(%rax), %xmm6
	mulss	.LC354(%rip), %xmm6
	addss	5172(%rdi), %xmm6
	call	_ZN5ImGui13CalcItemWidthEv
	movq	0(%r13), %rcx
	movaps	%xmm0, %xmm1
	movaps	%xmm6, %xmm2
	call	_ZN5ImGui12CalcItemSizeE6ImVec2ff
	movl	%esi, 44(%rsp)
	movq	%rax, %rsi
	movss	44(%rsp), %xmm1
	shrq	$32, %rsi
	movl	%esi, 44(%rsp)
	movaps	%xmm1, %xmm2
	movss	44(%rsp), %xmm0
	movl	%eax, 44(%rsp)
	cmpless	%xmm0, %xmm2
	movd	44(%rsp), %xmm6
	ucomiss	%xmm9, %xmm8
	andps	%xmm2, %xmm0
	andnps	%xmm1, %xmm2
	movss	196(%rbx), %xmm10
	movss	192(%rbx), %xmm11
	addss	%xmm11, %xmm6
	orps	%xmm2, %xmm0
	movaps	%xmm0, %xmm7
	addss	%xmm10, %xmm7
	jbe	.L9636
	addss	5176(%rdi), %xmm8
	movss	%xmm11, 252(%rbx)
	addss	%xmm7, %xmm9
	movss	%xmm10, 256(%rbx)
	movss	%xmm9, 264(%rbx)
	addss	%xmm6, %xmm8
	movss	%xmm8, 260(%rbx)
	call	_ZN5ImGui10BeginGroupEv
.L9631:
	movss	5176(%rdi), %xmm3
	movl	$1, %r9d
	movss	5160(%rdi), %xmm4
	addss	%xmm6, %xmm3
	addss	%xmm10, %xmm4
	xorl	%r8d, %r8d
	movq	%rbp, %rdx
	movss	%xmm3, 44(%rsp)
	movl	44(%rsp), %ecx
	movss	%xmm4, 48(%rsp)
	movq	48(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %rcx
	call	_ZN5ImGui10RenderTextE6ImVec2PKcS2_b
.L9632:
	movq	GImGui(%rip), %rbx
	subss	%xmm11, %xmm6
	movl	$3, %ecx
	subss	%xmm10, %xmm7
	leaq	5360(%rbx), %rdx
	movss	%xmm6, 64(%rsp)
	movss	%xmm7, 68(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movss	5164(%rbx), %xmm1
	movl	$4, %ecx
	call	_ZN5ImGui12PushStyleVarEif
	leaq	5156(%rbx), %rdx
	movl	$1, %ecx
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movq	6008(%rbx), %rax
	leaq	64(%rsp), %rdx
	movl	$65540, %r9d
	movl	%r12d, %ecx
	movl	12(%rax), %r8d
	shrl	$7, %r8d
	andl	$1, %r8d
	call	_ZL12BeginChildExPKcjRK6ImVec2bi.constprop.150
	movl	$1, %eax
	jmp	.L9627
	.p2align 4,,7
.L9636:
	movaps	%xmm6, %xmm0
	movss	%xmm11, 252(%rbx)
	movss	%xmm10, 256(%rbx)
	addss	%xmm9, %xmm0
	movss	%xmm0, 260(%rbx)
	movaps	%xmm7, %xmm0
	addss	%xmm9, %xmm0
	movss	%xmm0, 264(%rbx)
	call	_ZN5ImGui10BeginGroupEv
	ucomiss	%xmm9, %xmm8
	jbe	.L9632
	jmp	.L9631
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui13ListBoxHeaderEPKcii
	.def	_ZN5ImGui13ListBoxHeaderEPKcii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13ListBoxHeaderEPKcii
_ZN5ImGui13ListBoxHeaderEPKcii:
.LFB761:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	testl	%r8d, %r8d
	js	.L9639
	cvtsi2ss	%r8d, %xmm0
.L9640:
	cmpl	%edx, %r8d
	jl	.L9644
.L9642:
	xorps	%xmm1, %xmm1
	addss	%xmm0, %xmm1
.L9643:
	movq	GImGui(%rip), %rax
	leaq	32(%rsp), %rdx
	movl	$0x00000000, 32(%rsp)
	movss	5172(%rax), %xmm2
	movss	5944(%rax), %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 36(%rsp)
	call	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2
	addq	$56, %rsp
	ret
	.p2align 4,,7
.L9644:
	movss	.LC50(%rip), %xmm1
	addss	%xmm0, %xmm1
	jmp	.L9643
	.p2align 4,,7
.L9639:
	cmpl	$6, %edx
	jg	.L9645
	cvtsi2ss	%edx, %xmm0
	jmp	.L9642
	.p2align 4,,7
.L9645:
	movss	.LC355(%rip), %xmm0
	movl	$7, %r8d
	jmp	.L9640
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7ListBoxEPKcPiPKS1_ii
	.def	_ZN5ImGui7ListBoxEPKcPiPKS1_ii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7ListBoxEPKcPiPKS1_ii
_ZN5ImGui7ListBoxEPKcPiPKS1_ii:
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
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
	movl	224(%rsp), %eax
	movq	%rdx, %r14
	movq	%r8, %r15
	movl	%r9d, %ebx
	testl	%eax, %eax
	js	.L9647
	cvtsi2ss	%eax, %xmm0
.L9648:
	cmpl	%eax, %ebx
	jg	.L9680
.L9650:
	addss	.LC9(%rip), %xmm0
.L9651:
	movq	GImGui(%rip), %rax
	movl	$0x00000000, 80(%rsp)
	movss	5172(%rax), %xmm1
	movss	5944(%rax), %xmm2
	leaq	80(%rsp), %rax
	addss	%xmm1, %xmm2
	movq	%rax, %rdx
	movq	%rax, 56(%rsp)
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 84(%rsp)
.LEHB21:
	call	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2
.LEHE21:
	testb	%al, %al
	jne	.L9681
.L9674:
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
.L9680:
	addss	.LC50(%rip), %xmm0
	jmp	.L9651
.L9681:
	movq	GImGui(%rip), %rax
	movq	56(%rsp), %rcx
	movl	%ebx, %edx
	movss	5944(%rax), %xmm2
	addss	5172(%rax), %xmm2
	call	_ZN16ImGuiListClipper5BeginEif
	leaq	64(%rsp), %rax
	movb	$0, 47(%rsp)
	movq	%rax, 32(%rsp)
	.p2align 4,,7
.L9655:
	movq	56(%rsp), %rcx
.LEHB22:
	call	_ZN16ImGuiListClipper4StepEv
	testb	%al, %al
	je	.L9653
	movl	96(%rsp), %esi
	cmpl	100(%rsp), %esi
	jge	.L9655
	movslq	%esi, %rdi
	jmp	.L9666
	.p2align 4,,7
.L9683:
	movq	504(%rbx), %rcx
	leal	1(%rax), %edx
.L9657:
	movq	32(%rsp), %r8
	movl	%edx, 496(%rbx)
	movzbl	%bpl, %edx
	movl	%r13d, (%rcx,%rax,4)
	movq	%r12, %rcx
	movl	$0x00000000, 64(%rsp)
	movl	$0x00000000, 68(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2.constprop.143
	testb	%al, %al
	je	.L9663
	movl	%esi, (%r14)
	movb	$1, 47(%rsp)
.L9663:
	movq	GImGui(%rip), %rax
	movq	6008(%rax), %rbx
	movl	496(%rbx), %eax
	movb	$1, 138(%rbx)
	testl	%eax, %eax
	jle	.L9682
.L9664:
	decl	%eax
	incl	%esi
	incq	%rdi
	movl	%eax, 496(%rbx)
	cmpl	%esi, 100(%rsp)
	jle	.L9655
.L9666:
	movq	GImGui(%rip), %rax
	cmpl	%esi, (%r14)
	movq	%rdi, %rdx
	movq	(%r15,%rdi,8), %r12
	movq	6008(%rax), %rbx
	sete	%bpl
	movb	$1, 138(%rbx)
	movq	%rbx, %rcx
	call	_ZN11ImGuiWindow5GetIDEPKv
	movl	%eax, %r13d
	movslq	496(%rbx), %rax
	cmpl	500(%rbx), %eax
	jne	.L9683
	testl	%eax, %eax
	leal	1(%rax), %edx
	movl	$8, %ecx
	je	.L9658
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
.L9658:
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	cmpl	%ecx, %eax
	movl	%ecx, 40(%rsp)
	jl	.L9659
	movq	504(%rbx), %rcx
	jmp	.L9657
	.p2align 4,,7
.L9682:
	leaq	.LC10(%rip), %rdx
	leaq	.LC14(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	496(%rbx), %eax
	jmp	.L9664
	.p2align 4,,7
.L9659:
	movq	GImGui(%rip), %rax
	movslq	40(%rsp), %rcx
	incl	844(%rax)
	salq	$2, %rcx
	call	*232(%rax)
	movq	504(%rbx), %rcx
	movq	%rax, 48(%rsp)
	testq	%rcx, %rcx
	je	.L9660
	movslq	496(%rbx), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	504(%rbx), %rcx
	movq	GImGui(%rip), %rax
	testq	%rcx, %rcx
	je	.L9662
	decl	844(%rax)
.L9662:
	call	*240(%rax)
	movl	40(%rsp), %eax
	movq	48(%rsp), %rcx
	movl	%eax, 500(%rbx)
	movslq	496(%rbx), %rax
	movq	%rcx, 504(%rbx)
	leal	1(%rax), %edx
	jmp	.L9657
	.p2align 4,,7
.L9660:
	movq	GImGui(%rip), %rax
	jmp	.L9662
.L9653:
	call	_ZN5ImGui13ListBoxFooterEv
.LEHE22:
	cmpl	$-1, 88(%rsp)
	je	.L9667
	leaq	.LC10(%rip), %rdx
	leaq	.LC223(%rip), %rcx
	movl	$1103, %r8d
	call	_assert
.L9667:
	movzbl	47(%rsp), %eax
	jmp	.L9674
.L9647:
	cmpl	$6, %r9d
	jle	.L9649
	movss	.LC355(%rip), %xmm0
	movl	$7, %eax
	jmp	.L9648
.L9649:
	cvtsi2ss	%r9d, %xmm0
	jmp	.L9650
.L9671:
	cmpl	$-1, 88(%rsp)
	movq	%rax, %rbx
	je	.L9669
	leaq	.LC10(%rip), %rdx
	leaq	.LC223(%rip), %rcx
	movl	$1103, %r8d
	call	_assert
.L9669:
	movq	%rbx, %rcx
.LEHB23:
	call	_Unwind_Resume
	nop
.LEHE23:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA763:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE763-.LLSDACSB763
.LLSDACSB763:
	.uleb128 .LEHB21-.LFB763
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB763
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L9671-.LFB763
	.uleb128 0
	.uleb128 .LEHB23-.LFB763
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE763:
	.text
	.seh_endproc
	.p2align 4,,15
	.globl	_ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii
	.def	_ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii
_ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii:
.LFB764:
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
	movl	248(%rsp), %eax
	movl	240(%rsp), %ebx
	movq	%rdx, %r14
	movq	%r8, 224(%rsp)
	movq	%r9, 232(%rsp)
	testl	%eax, %eax
	js	.L9685
	cvtsi2ss	%eax, %xmm0
.L9686:
	cmpl	%eax, %ebx
	jg	.L9719
.L9688:
	addss	.LC9(%rip), %xmm0
.L9689:
	movq	GImGui(%rip), %rax
	movl	$0x00000000, 96(%rsp)
	movss	5172(%rax), %xmm1
	movss	5944(%rax), %xmm2
	leaq	96(%rsp), %rax
	addss	%xmm1, %xmm2
	movq	%rax, %rdx
	movq	%rax, 72(%rsp)
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 100(%rsp)
.LEHB24:
	call	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2
.LEHE24:
	testb	%al, %al
	jne	.L9720
.L9713:
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
.L9719:
	addss	.LC50(%rip), %xmm0
	jmp	.L9689
.L9720:
	movq	GImGui(%rip), %rax
	movq	72(%rsp), %rcx
	movl	%ebx, %edx
	movss	5944(%rax), %xmm2
	addss	5172(%rax), %xmm2
	call	_ZN16ImGuiListClipper5BeginEif
	leaq	88(%rsp), %rax
	movb	$0, 63(%rsp)
	movq	%rax, 40(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	.p2align 4,,7
.L9693:
	movq	72(%rsp), %rcx
.LEHB25:
	call	_ZN16ImGuiListClipper4StepEv
	testb	%al, %al
	je	.L9691
	movl	112(%rsp), %esi
	cmpl	116(%rsp), %esi
	jge	.L9693
	xorl	%r12d, %r12d
	movslq	%esi, %r15
	jmp	.L9705
	.p2align 4,,7
.L9722:
	movq	504(%rbx), %rcx
	leal	1(%rax), %edx
.L9696:
	movl	%edx, 496(%rbx)
	movq	48(%rsp), %r8
	movzbl	%dil, %edx
	movl	%r13d, (%rcx,%rax,4)
	movq	88(%rsp), %rcx
	movl	$0x00000000, 80(%rsp)
	movl	$0x00000000, 84(%rsp)
	testb	%al, %al
	je	.L9702
.L9702:
	nop