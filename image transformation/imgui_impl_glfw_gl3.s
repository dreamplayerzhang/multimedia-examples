	.file	"imgui_impl_glfw_gl3.cpp"
	.text
	.p2align 4,,15
	.globl	_Z37ImGui_ImplGlfwGL3_MouseButtonCallbackP10GLFWwindowiii
	.def	_Z37ImGui_ImplGlfwGL3_MouseButtonCallbackP10GLFWwindowiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z37ImGui_ImplGlfwGL3_MouseButtonCallbackP10GLFWwindowiii
_Z37ImGui_ImplGlfwGL3_MouseButtonCallbackP10GLFWwindowiii:
.LFB5485:
	.seh_endprologue
	decl	%r8d
	jne	.L1
	cmpl	$2, %edx
	ja	.L1
	leaq	_ZL14g_MousePressed(%rip), %rax
	movslq	%edx, %rdx
	movb	$1, (%rax,%rdx)
.L1:
	rep ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z32ImGui_ImplGlfwGL3_ScrollCallbackP10GLFWwindowdd
	.def	_Z32ImGui_ImplGlfwGL3_ScrollCallbackP10GLFWwindowdd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z32ImGui_ImplGlfwGL3_ScrollCallbackP10GLFWwindowdd
_Z32ImGui_ImplGlfwGL3_ScrollCallbackP10GLFWwindowdd:
.LFB5486:
	.seh_endprologue
	cvtsd2ss	%xmm2, %xmm2
	addss	_ZL12g_MouseWheel(%rip), %xmm2
	movss	%xmm2, _ZL12g_MouseWheel(%rip)
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z29ImGui_ImplGlfwGL3_KeyCallbackP10GLFWwindowiiii
	.def	_Z29ImGui_ImplGlfwGL3_KeyCallbackP10GLFWwindowiiii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z29ImGui_ImplGlfwGL3_KeyCallbackP10GLFWwindowiiii
_Z29ImGui_ImplGlfwGL3_KeyCallbackP10GLFWwindowiiii:
.LFB5487:
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
	je	.L18
	testl	%esi, %esi
	jne	.L13
	movb	$0, 281(%rax,%rbx)
.L13:
	movzbl	622(%rax), %edx
	testb	%dl, %dl
	jne	.L14
	movzbl	626(%rax), %edx
.L14:
	movb	%dl, 277(%rax)
	movzbl	621(%rax), %edx
	testb	%dl, %dl
	jne	.L15
	movzbl	625(%rax), %edx
.L15:
	movb	%dl, 278(%rax)
	movzbl	623(%rax), %edx
	testb	%dl, %dl
	jne	.L16
	movzbl	627(%rax), %edx
.L16:
	movb	%dl, 279(%rax)
	movzbl	624(%rax), %edx
	testb	%dl, %dl
	jne	.L17
	movzbl	628(%rax), %edx
.L17:
	movb	%dl, 280(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,7
.L18:
	movb	$1, 281(%rax,%rbx)
	jmp	.L13
	.seh_endproc
	.p2align 4,,15
	.globl	_Z33ImGui_ImplGlfwGL3_RenderDrawListsP10ImDrawData
	.def	_Z33ImGui_ImplGlfwGL3_RenderDrawListsP10ImDrawData;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z33ImGui_ImplGlfwGL3_RenderDrawListsP10ImDrawData
_Z33ImGui_ImplGlfwGL3_RenderDrawListsP10ImDrawData:
.LFB5482:
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
	cvttss2si	%xmm0, %eax
	testl	%ebx, %ebx
	movl	%eax, %edi
	movl	%eax, 40(%rsp)
	je	.L19
	testl	%eax, %eax
	jne	.L43
.L19:
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
.L43:
	leaq	160(%rsi), %rdx
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
	xorl	%ecx, %ecx
	leaq	128(%rsp), %rdi
	call	glViewport
	movss	.LC2(%rip), %xmm0
	movss	.LC3(%rip), %xmm2
	movaps	%xmm0, %xmm1
	xorl	%eax, %eax
	movl	$8, %ecx
	divss	(%rsi), %xmm1
	rep stosq
	movq	__imp___glewUseProgram(%rip), %rax
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	$0xbf800000, 168(%rsp)
	movl	$0xbf800000, 176(%rsp)
	movl	$0x3f800000, 180(%rsp)
	movl	$0x3f800000, 188(%rsp)
	movss	%xmm1, 128(%rsp)
	movss	4(%rsi), %xmm1
	xorps	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 148(%rsp)
	call	*(%rax)
	movq	__imp___glewUniform1i(%rip), %rax
	xorl	%edx, %edx
	movl	_ZL19g_AttribLocationTex(%rip), %ecx
	call	*(%rax)
	movq	__imp___glewUniformMatrix4fv(%rip), %rax
	xorl	%r8d, %r8d
	movl	$1, %edx
	leaq	128(%rsp), %r9
	movl	_ZL23g_AttribLocationProjMtx(%rip), %ecx
	call	*(%rax)
	movq	__imp___glewBindVertexArray(%rip), %rax
	movl	_ZL11g_VaoHandle(%rip), %ecx
	call	*(%rax)
	movl	16(%r13), %edx
	testl	%edx, %edx
	jle	.L44
	movq	__imp___glewBindBuffer(%rip), %rax
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	movq	%rax, 32(%rsp)
	.p2align 4,,7
.L26:
	movq	8(%r13), %rax
	movq	32(%rsp), %rbx
	movl	$34962, %ecx
	movl	_ZL11g_VboHandle(%rip), %edx
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	movq	(%rax,%r12), %rsi
	call	*(%rbx)
	movl	$35040, %r9d
	movl	$34962, %ecx
	movslq	32(%rsi), %rax
	movq	40(%rsi), %r8
	movq	%rax, %rdx
	salq	$4, %rdx
	leaq	(%rdx,%rax,4), %rdx
	movq	__imp___glewBufferData(%rip), %rax
	call	*(%rax)
	movl	_ZL16g_ElementsHandle(%rip), %edx
	movl	$34963, %ecx
	call	*(%rbx)
	movslq	16(%rsi), %rdx
	movq	__imp___glewBufferData(%rip), %rax
	movl	$35040, %r9d
	movq	24(%rsi), %r8
	movl	$34963, %ecx
	addq	%rdx, %rdx
	call	*(%rax)
	movl	(%rsi), %eax
	testl	%eax, %eax
	jg	.L39
	jmp	.L29
	.p2align 4,,7
.L45:
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	*%rax
.L28:
	movl	(%rbx), %eax
	incl	%r15d
	addq	$48, %r14
	cmpl	%r15d, (%rsi)
	leaq	0(%rbp,%rax,2), %rbp
	jle	.L29
.L39:
	movq	%r14, %rbx
	addq	8(%rsi), %rbx
	movq	32(%rbx), %rax
	testq	%rax, %rax
	jne	.L45
	movl	24(%rbx), %edx
	movl	$3553, %ecx
	call	glBindTexture
	cvtsi2ss	40(%rsp), %xmm0
	movss	16(%rbx), %xmm3
	movaps	%xmm3, %xmm4
	movss	4(%rbx), %xmm2
	movss	12(%rbx), %xmm1
	subss	8(%rbx), %xmm4
	cvttss2si	%xmm2, %ecx
	subss	%xmm2, %xmm1
	subss	%xmm3, %xmm0
	cvttss2si	%xmm1, %r8d
	cvttss2si	%xmm0, %edx
	cvttss2si	%xmm4, %r9d
	call	glScissor
	movl	(%rbx), %edx
	movq	%rbp, %r9
	movl	$5123, %r8d
	movl	$4, %ecx
	call	glDrawElements
	jmp	.L28
	.p2align 4,,7
.L29:
	incl	%edi
	addq	$8, %r12
	cmpl	%edi, 16(%r13)
	jg	.L26
.L25:
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
	movl	60(%rsp), %edx
	movl	$34962, %ecx
	call	*(%rdi)
	movl	64(%rsp), %edx
	movl	$34963, %ecx
	call	*(%rdi)
	movq	__imp___glewBlendEquationSeparate(%rip), %rax
	movl	92(%rsp), %edx
	movl	88(%rsp), %ecx
	call	*(%rax)
	movq	__imp___glewBlendFuncSeparate(%rip), %rax
	movl	84(%rsp), %r9d
	movl	80(%rsp), %r8d
	movl	76(%rsp), %edx
	movl	72(%rsp), %ecx
	call	*(%rax)
	cmpb	$0, 44(%rsp)
	jne	.L22
	movl	$3042, %ecx
	call	glDisable
	cmpb	$0, 45(%rsp)
	movl	$2884, %ecx
	je	.L32
.L46:
	call	glEnable
	cmpb	$0, 46(%rsp)
	movl	$2929, %ecx
	je	.L34
.L47:
	call	glEnable
	cmpb	$0, 47(%rsp)
	movl	$3089, %ecx
	je	.L36
.L48:
	call	glEnable
.L37:
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
	jmp	.L19
.L22:
	movl	$3042, %ecx
	call	glEnable
	cmpb	$0, 45(%rsp)
	movl	$2884, %ecx
	jne	.L46
.L32:
	call	glDisable
	cmpb	$0, 46(%rsp)
	movl	$2929, %ecx
	jne	.L47
.L34:
	call	glDisable
	cmpb	$0, 47(%rsp)
	movl	$3089, %ecx
	jne	.L48
.L36:
	call	glDisable
	jmp	.L37
.L44:
	movq	__imp___glewBindBuffer(%rip), %rax
	movq	%rax, 32(%rsp)
	jmp	.L25
	.seh_endproc
	.p2align 4,,15
	.globl	_Z30ImGui_ImplGlfwGL3_CharCallbackP10GLFWwindowj
	.def	_Z30ImGui_ImplGlfwGL3_CharCallbackP10GLFWwindowj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z30ImGui_ImplGlfwGL3_CharCallbackP10GLFWwindowj
_Z30ImGui_ImplGlfwGL3_CharCallbackP10GLFWwindowj:
.LFB5488:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%edx, %ebx
	call	_ZN5ImGui5GetIOEv
	leal	-1(%rbx), %edx
	cmpl	$65534, %edx
	jbe	.L51
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L51:
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
.LFB5483:
	.seh_endprologue
	jmp	glfwGetClipboardString
	.seh_endproc
	.p2align 4,,15
	.def	_ZL34ImGui_ImplGlfwGL3_SetClipboardTextPvPKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL34ImGui_ImplGlfwGL3_SetClipboardTextPvPKc
_ZL34ImGui_ImplGlfwGL3_SetClipboardTextPvPKc:
.LFB5484:
	.seh_endprologue
	jmp	glfwSetClipboardString
	.seh_endproc
	.p2align 4,,15
	.globl	_Z36ImGui_ImplGlfwGL3_CreateFontsTexturev
	.def	_Z36ImGui_ImplGlfwGL3_CreateFontsTexturev;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z36ImGui_ImplGlfwGL3_CreateFontsTexturev
_Z36ImGui_ImplGlfwGL3_CreateFontsTexturev:
.LFB5489:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	call	_ZN5ImGui5GetIOEv
	movq	136(%rax), %rcx
	leaq	96(%rsp), %r9
	leaq	92(%rsp), %r8
	leaq	104(%rsp), %rdx
	movq	$0, 32(%rsp)
	movq	%rax, %rbx
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
	movl	92(%rsp), %r9d
	movl	$6408, %r8d
	xorl	%edx, %edx
	movl	$5121, 56(%rsp)
	movl	$6408, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$3553, %ecx
	movq	%rax, 64(%rsp)
	movl	96(%rsp), %eax
	movl	%eax, 32(%rsp)
	call	glTexImage2D
	movq	136(%rbx), %rax
	movl	_ZL13g_FontTexture(%rip), %ebx
	movl	$3553, %ecx
	movl	100(%rsp), %edx
	movq	%rbx, (%rax)
	call	glBindTexture
	movl	$1, %eax
	addq	$112, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "#version 330\12uniform mat4 ProjMtx;\12in vec2 Position;\12in vec2 UV;\12in vec4 Color;\12out vec2 Frag_UV;\12out vec4 Frag_Color;\12void main()\12{\12\11Frag_UV = UV;\12\11Frag_Color = Color;\12\11gl_Position = ProjMtx * vec4(Position.xy,0,1);\12}\12\0"
	.align 8
.LC5:
	.ascii "#version 330\12uniform sampler2D Texture;\12in vec2 Frag_UV;\12in vec4 Frag_Color;\12out vec4 Out_Color;\12void main()\12{\12\11Out_Color = Frag_Color * texture( Texture, Frag_UV.st);\12}\12\0"
.LC6:
	.ascii "Texture\0"
.LC7:
	.ascii "ProjMtx\0"
.LC8:
	.ascii "Position\0"
.LC9:
	.ascii "UV\0"
.LC10:
	.ascii "Color\0"
	.text
	.p2align 4,,15
	.globl	_Z37ImGui_ImplGlfwGL3_CreateDeviceObjectsv
	.def	_Z37ImGui_ImplGlfwGL3_CreateDeviceObjectsv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z37ImGui_ImplGlfwGL3_CreateDeviceObjectsv
_Z37ImGui_ImplGlfwGL3_CreateDeviceObjectsv:
.LFB5490:
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
	leaq	.LC4(%rip), %rax
	movq	%rax, 64(%rsp)
	leaq	.LC5(%rip), %rax
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
	movq	__imp___glewShaderSource(%rip), %rbx
	movl	%eax, _ZL12g_FragHandle(%rip)
	xorl	%r9d, %r9d
	leaq	64(%rsp), %r8
	movl	$1, %edx
	movl	_ZL12g_VertHandle(%rip), %ecx
	call	*(%rbx)
	xorl	%r9d, %r9d
	leaq	72(%rsp), %r8
	movl	$1, %edx
	movl	_ZL12g_FragHandle(%rip), %ecx
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
	leaq	.LC6(%rip), %rdx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	call	*(%rbx)
	leaq	.LC7(%rip), %rdx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	%eax, _ZL19g_AttribLocationTex(%rip)
	call	*(%rbx)
	movq	__imp___glewGetAttribLocation(%rip), %rbx
	leaq	.LC8(%rip), %rdx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	%eax, _ZL23g_AttribLocationProjMtx(%rip)
	call	*(%rbx)
	leaq	.LC9(%rip), %rdx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	%eax, _ZL24g_AttribLocationPosition(%rip)
	call	*(%rbx)
	leaq	.LC10(%rip), %rdx
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	%eax, _ZL18g_AttribLocationUV(%rip)
	call	*(%rbx)
	movq	__imp___glewGenBuffers(%rip), %rbx
	movl	%eax, _ZL21g_AttribLocationColor(%rip)
	leaq	_ZL11g_VboHandle(%rip), %rdx
	movl	$1, %ecx
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
	movl	_ZL11g_VboHandle(%rip), %edx
	movl	$34962, %ecx
	call	*(%rdi)
	movq	__imp___glewEnableVertexAttribArray(%rip), %rbx
	movl	_ZL24g_AttribLocationPosition(%rip), %ecx
	call	*(%rbx)
	movl	_ZL18g_AttribLocationUV(%rip), %ecx
	call	*(%rbx)
	movl	_ZL21g_AttribLocationColor(%rip), %ecx
	call	*(%rbx)
	movq	__imp___glewVertexAttribPointer(%rip), %rbx
	xorl	%r9d, %r9d
	movq	$0, 40(%rsp)
	movl	$20, 32(%rsp)
	movl	$5126, %r8d
	movl	$2, %edx
	movl	_ZL24g_AttribLocationPosition(%rip), %ecx
	call	*(%rbx)
	xorl	%r9d, %r9d
	movq	$8, 40(%rsp)
	movl	$20, 32(%rsp)
	movl	$5126, %r8d
	movl	$2, %edx
	movl	_ZL18g_AttribLocationUV(%rip), %ecx
	call	*(%rbx)
	movl	$1, %r9d
	movl	$5121, %r8d
	movl	$4, %edx
	movl	_ZL21g_AttribLocationColor(%rip), %ecx
	movq	$16, 40(%rsp)
	movl	$20, 32(%rsp)
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
.LFB5491:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	_ZL11g_VaoHandle(%rip), %r8d
	testl	%r8d, %r8d
	jne	.L83
.L57:
	movl	_ZL11g_VboHandle(%rip), %ecx
	testl	%ecx, %ecx
	jne	.L84
.L58:
	movl	_ZL16g_ElementsHandle(%rip), %edx
	testl	%edx, %edx
	jne	.L85
.L59:
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	$0, _ZL16g_ElementsHandle(%rip)
	movl	$0, _ZL11g_VboHandle(%rip)
	movl	$0, _ZL11g_VaoHandle(%rip)
	testl	%ecx, %ecx
	je	.L60
	movl	_ZL12g_VertHandle(%rip), %edx
	testl	%edx, %edx
	jne	.L86
	movl	$0, _ZL12g_VertHandle(%rip)
.L70:
	movl	_ZL12g_FragHandle(%rip), %edx
	testl	%edx, %edx
	jne	.L87
	movl	$0, _ZL12g_FragHandle(%rip)
.L71:
	movq	__imp___glewDeleteProgram(%rip), %rax
	call	*(%rax)
	jmp	.L68
	.p2align 4,,7
.L86:
	movq	__imp___glewDetachShader(%rip), %rax
	call	*(%rax)
.L60:
	movl	_ZL12g_VertHandle(%rip), %ecx
	testl	%ecx, %ecx
	jne	.L88
.L81:
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	$0, _ZL12g_VertHandle(%rip)
	testl	%ecx, %ecx
	jne	.L70
.L64:
	movl	_ZL12g_FragHandle(%rip), %ecx
	testl	%ecx, %ecx
	jne	.L89
.L82:
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	$0, _ZL12g_FragHandle(%rip)
	testl	%ecx, %ecx
	jne	.L71
.L68:
	movl	_ZL13g_FontTexture(%rip), %eax
	movl	$0, _ZL14g_ShaderHandle(%rip)
	testl	%eax, %eax
	je	.L56
	leaq	_ZL13g_FontTexture(%rip), %rdx
	movl	$1, %ecx
	call	glDeleteTextures
	call	_ZN5ImGui5GetIOEv
	movq	136(%rax), %rax
	movq	$0, (%rax)
	movl	$0, _ZL13g_FontTexture(%rip)
.L56:
	addq	$40, %rsp
	ret
	.p2align 4,,7
.L89:
	movq	__imp___glewDeleteShader(%rip), %rax
	call	*(%rax)
	jmp	.L82
	.p2align 4,,7
.L88:
	movq	__imp___glewDeleteShader(%rip), %rax
	call	*(%rax)
	.p2align 4,,3
	jmp	.L81
	.p2align 4,,7
.L85:
	movq	__imp___glewDeleteBuffers(%rip), %rax
	leaq	_ZL16g_ElementsHandle(%rip), %rdx
	movl	$1, %ecx
	call	*(%rax)
	jmp	.L59
	.p2align 4,,7
.L84:
	movq	__imp___glewDeleteBuffers(%rip), %rax
	leaq	_ZL11g_VboHandle(%rip), %rdx
	movl	$1, %ecx
	call	*(%rax)
	jmp	.L58
	.p2align 4,,7
.L83:
	movq	__imp___glewDeleteVertexArrays(%rip), %rax
	leaq	_ZL11g_VaoHandle(%rip), %rdx
	movl	$1, %ecx
	call	*(%rax)
	jmp	.L57
	.p2align 4,,7
.L87:
	movq	__imp___glewDetachShader(%rip), %rax
	call	*(%rax)
	.p2align 4,,3
	jmp	.L64
	.seh_endproc
	.p2align 4,,15
	.globl	_Z22ImGui_ImplGlfwGL3_InitP10GLFWwindowb
	.def	_Z22ImGui_ImplGlfwGL3_InitP10GLFWwindowb;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z22ImGui_ImplGlfwGL3_InitP10GLFWwindowb
_Z22ImGui_ImplGlfwGL3_InitP10GLFWwindowb:
.LFB5492:
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
	movq	%rax, %rbx
	movl	$258, 44(%rax)
	movl	$263, 48(%rax)
	movl	$262, 52(%rax)
	movl	$265, 56(%rax)
	movl	$264, 60(%rax)
	movl	$266, 64(%rax)
	movl	$267, 68(%rax)
	movl	$268, 72(%rax)
	movl	$269, 76(%rax)
	movl	$261, 80(%rax)
	movl	$259, 84(%rax)
	movl	$257, 88(%rax)
	movl	$256, 92(%rax)
	movl	$65, 96(%rax)
	movl	$67, 100(%rax)
	movl	$86, 104(%rax)
	movl	$88, 108(%rax)
	movl	$89, 112(%rax)
	movl	$90, 116(%rax)
	leaq	_Z33ImGui_ImplGlfwGL3_RenderDrawListsP10ImDrawData(%rip), %rax
	movq	_ZL8g_Window(%rip), %rcx
	movq	%rax, 192(%rbx)
	leaq	_ZL34ImGui_ImplGlfwGL3_SetClipboardTextPvPKc(%rip), %rax
	movq	%rcx, 216(%rbx)
	movq	%rax, 208(%rbx)
	leaq	_ZL34ImGui_ImplGlfwGL3_GetClipboardTextPv(%rip), %rax
	movq	%rax, 200(%rbx)
	call	glfwGetWin32Window
	testb	%dil, %dil
	movq	%rax, 248(%rbx)
	je	.L91
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
.L91:
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
.LFB5493:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	_ZL11g_VaoHandle(%rip), %r8d
	testl	%r8d, %r8d
	jne	.L119
.L93:
	movl	_ZL11g_VboHandle(%rip), %ecx
	testl	%ecx, %ecx
	jne	.L120
.L94:
	movl	_ZL16g_ElementsHandle(%rip), %edx
	testl	%edx, %edx
	jne	.L121
.L95:
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	$0, _ZL16g_ElementsHandle(%rip)
	movl	$0, _ZL11g_VboHandle(%rip)
	movl	$0, _ZL11g_VaoHandle(%rip)
	testl	%ecx, %ecx
	je	.L96
	movl	_ZL12g_VertHandle(%rip), %edx
	testl	%edx, %edx
	jne	.L122
	movl	$0, _ZL12g_VertHandle(%rip)
.L106:
	movl	_ZL12g_FragHandle(%rip), %edx
	testl	%edx, %edx
	jne	.L123
	movl	$0, _ZL12g_FragHandle(%rip)
.L107:
	movq	__imp___glewDeleteProgram(%rip), %rax
	call	*(%rax)
	jmp	.L104
	.p2align 4,,7
.L122:
	movq	__imp___glewDetachShader(%rip), %rax
	call	*(%rax)
.L96:
	movl	_ZL12g_VertHandle(%rip), %ecx
	testl	%ecx, %ecx
	jne	.L124
.L117:
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	$0, _ZL12g_VertHandle(%rip)
	testl	%ecx, %ecx
	jne	.L106
.L100:
	movl	_ZL12g_FragHandle(%rip), %ecx
	testl	%ecx, %ecx
	jne	.L125
.L118:
	movl	_ZL14g_ShaderHandle(%rip), %ecx
	movl	$0, _ZL12g_FragHandle(%rip)
	testl	%ecx, %ecx
	jne	.L107
.L104:
	movl	_ZL13g_FontTexture(%rip), %eax
	movl	$0, _ZL14g_ShaderHandle(%rip)
	testl	%eax, %eax
	je	.L105
	leaq	_ZL13g_FontTexture(%rip), %rdx
	movl	$1, %ecx
	call	glDeleteTextures
	call	_ZN5ImGui5GetIOEv
	movq	136(%rax), %rax
	movq	$0, (%rax)
	movl	$0, _ZL13g_FontTexture(%rip)
.L105:
	addq	$40, %rsp
	jmp	_ZN5ImGui8ShutdownEv
	.p2align 4,,7
.L125:
	movq	__imp___glewDeleteShader(%rip), %rax
	call	*(%rax)
	jmp	.L118
	.p2align 4,,7
.L124:
	movq	__imp___glewDeleteShader(%rip), %rax
	call	*(%rax)
	.p2align 4,,3
	jmp	.L117
	.p2align 4,,7
.L121:
	movq	__imp___glewDeleteBuffers(%rip), %rax
	leaq	_ZL16g_ElementsHandle(%rip), %rdx
	movl	$1, %ecx
	call	*(%rax)
	jmp	.L95
	.p2align 4,,7
.L120:
	movq	__imp___glewDeleteBuffers(%rip), %rax
	leaq	_ZL11g_VboHandle(%rip), %rdx
	movl	$1, %ecx
	call	*(%rax)
	jmp	.L94
	.p2align 4,,7
.L119:
	movq	__imp___glewDeleteVertexArrays(%rip), %rax
	leaq	_ZL11g_VaoHandle(%rip), %rdx
	movl	$1, %ecx
	call	*(%rax)
	jmp	.L93
	.p2align 4,,7
.L123:
	movq	__imp___glewDetachShader(%rip), %rax
	call	*(%rax)
	.p2align 4,,3
	jmp	.L100
	.seh_endproc
	.p2align 4,,15
	.globl	_Z26ImGui_ImplGlfwGL3_NewFramev
	.def	_Z26ImGui_ImplGlfwGL3_NewFramev;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z26ImGui_ImplGlfwGL3_NewFramev
_Z26ImGui_ImplGlfwGL3_NewFramev:
.LFB5494:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	_ZL13g_FontTexture(%rip), %eax
	testl	%eax, %eax
	je	.L144
.L127:
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
	movl	32(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm1
	testl	%edx, %edx
	cvtsi2ss	%eax, %xmm2
	movss	%xmm1, 4(%rbx)
	movss	%xmm2, (%rbx)
	jle	.L128
	cvtsi2ss	44(%rsp), %xmm0
	divss	%xmm1, %xmm0
.L128:
	testl	%eax, %eax
	xorps	%xmm1, %xmm1
	jle	.L129
	cvtsi2ss	40(%rsp), %xmm1
	divss	%xmm2, %xmm1
.L129:
	movss	%xmm1, 160(%rbx)
	movss	%xmm0, 164(%rbx)
	call	glfwGetTime
	movlpd	_ZL6g_Time(%rip), %xmm1
	ucomisd	.LC13(%rip), %xmm1
	jbe	.L143
	movsd	%xmm0, %xmm3
	subsd	%xmm1, %xmm3
	cvtsd2ss	%xmm3, %xmm1
.L130:
	movq	_ZL8g_Window(%rip), %rcx
	movss	%xmm1, 8(%rbx)
	movl	$131073, %edx
	movsd	%xmm0, _ZL6g_Time(%rip)
	call	glfwGetWindowAttrib
	testl	%eax, %eax
	jne	.L145
	movzbl	_ZL14g_MousePressed(%rip), %eax
	movl	$0xbf800000, 256(%rbx)
	movl	$0xbf800000, 260(%rbx)
	testb	%al, %al
	je	.L146
.L134:
	movb	%al, 264(%rbx)
	movzbl	1+_ZL14g_MousePressed(%rip), %eax
	movb	$0, _ZL14g_MousePressed(%rip)
	testb	%al, %al
	je	.L147
.L135:
	movb	%al, 265(%rbx)
	movzbl	2+_ZL14g_MousePressed(%rip), %eax
	movb	$0, 1+_ZL14g_MousePressed(%rip)
	testb	%al, %al
	je	.L148
.L136:
	cmpb	$1, 276(%rbx)
	movss	_ZL12g_MouseWheel(%rip), %xmm0
	movb	%al, 266(%rbx)
	movq	_ZL8g_Window(%rip), %rcx
	movss	%xmm0, 272(%rbx)
	movl	$208897, %edx
	movb	$0, 2+_ZL14g_MousePressed(%rip)
	movl	$0x00000000, _ZL12g_MouseWheel(%rip)
	sbbl	%eax, %eax
	leal	212994(%rax), %r8d
	call	glfwSetInputMode
	call	_ZN5ImGui8NewFrameEv
	nop
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L144:
	call	_Z37ImGui_ImplGlfwGL3_CreateDeviceObjectsv
	.p2align 4,,3
	jmp	.L127
	.p2align 4,,7
.L145:
	movq	_ZL8g_Window(%rip), %rcx
	leaq	48(%rsp), %rdx
	leaq	56(%rsp), %r8
	call	glfwGetCursorPos
	cvtsd2ss	56(%rsp), %xmm0
	cvtsd2ss	48(%rsp), %xmm4
	movzbl	_ZL14g_MousePressed(%rip), %eax
	movss	%xmm4, 256(%rbx)
	movss	%xmm0, 260(%rbx)
	testb	%al, %al
	jne	.L134
.L146:
	movq	_ZL8g_Window(%rip), %rcx
	xorl	%edx, %edx
	call	glfwGetMouseButton
	testl	%eax, %eax
	setne	%al
	jmp	.L134
	.p2align 4,,7
.L148:
	movq	_ZL8g_Window(%rip), %rcx
	movl	$2, %edx
	call	glfwGetMouseButton
	testl	%eax, %eax
	setne	%al
	jmp	.L136
	.p2align 4,,7
.L147:
	movq	_ZL8g_Window(%rip), %rcx
	movl	$1, %edx
	call	glfwGetMouseButton
	testl	%eax, %eax
	setne	%al
	jmp	.L135
	.p2align 4,,7
.L143:
	movss	.LC12(%rip), %xmm1
	jmp	.L130
	.seh_endproc
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
	.section .rdata,"dr"
	.align 4
.LC2:
	.long	1073741824
	.align 16
.LC3:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC12:
	.long	1015580809
	.align 8
.LC13:
	.long	0
	.long	0
	.ident	"GCC: (GNU) 5.3.0"
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
