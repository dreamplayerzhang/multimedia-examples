	.file	"imgui_demo.cpp"
	.text
	.p2align 4,,15
	.def	_ZZN5ImGui14ShowTestWindowEPbEN5Funcs3SawEPvi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZN5ImGui14ShowTestWindowEPbEN5Funcs3SawEPvi
_ZZN5ImGui14ShowTestWindowEPbEN5Funcs3SawEPvi:
.LFB183:
	.seh_endprologue
	andl	$1, %edx
	jne	.L3
	xorps	%xmm0, %xmm0
	ret
	.p2align 4,,7
.L3:
	movss	.LC22(%rip), %xmm0
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints6SquareEP31ImGuiSizeConstraintCallbackData;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints6SquareEP31ImGuiSizeConstraintCallbackData
_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints6SquareEP31ImGuiSizeConstraintCallbackData:
.LFB191:
	.seh_endprologue
	movss	24(%rcx), %xmm1
	movss	28(%rcx), %xmm0
	ucomiss	%xmm0, %xmm1
	jnb	.L7
	movaps	%xmm0, %xmm1
	movss	%xmm0, 28(%rcx)
	movss	%xmm1, 24(%rcx)
	ret
	.p2align 4,,7
.L7:
	movaps	%xmm1, %xmm0
	movss	%xmm1, 24(%rcx)
	movss	%xmm0, 28(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints4StepEP31ImGuiSizeConstraintCallbackData;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints4StepEP31ImGuiSizeConstraintCallbackData
_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints4StepEP31ImGuiSizeConstraintCallbackData:
.LFB192:
	.seh_endprologue
	movss	.LC24(%rip), %xmm1
	cvtsi2ss	(%rcx), %xmm2
	movss	28(%rcx), %xmm0
	movss	24(%rcx), %xmm3
	divss	%xmm2, %xmm0
	divss	%xmm2, %xmm3
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	cvtsi2ss	%eax, %xmm0
	addss	%xmm3, %xmm1
	cvttss2si	%xmm1, %eax
	mulss	%xmm2, %xmm0
	movss	%xmm0, 28(%rcx)
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm2, %xmm1
	movss	%xmm1, 24(%rcx)
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_ZZN5ImGui14ShowTestWindowEPbEN5Funcs3SinEPvi;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZN5ImGui14ShowTestWindowEPbEN5Funcs3SinEPvi
_ZZN5ImGui14ShowTestWindowEPbEN5Funcs3SinEPvi:
.LFB182:
	.seh_endprologue
	cvtsi2ss	%edx, %xmm0
	mulss	.LC25(%rip), %xmm0
	jmp	sinf
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB184:
	.seh_endprologue
	movq	264+_ZZN5ImGui14ShowTestWindowEPbE6filter(%rip), %rcx
	testq	%rcx, %rcx
	je	.L10
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,7
.L10:
	rep ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA184:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE184-.LLSDACSB184
.LLSDACSB184:
.LLSDACSE184:
	.text
	.seh_endproc
	.section	.text$__tcf_3,"x"
	.p2align 4,,15
	.def	__tcf_3;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_3
__tcf_3:
.LFB209:
	.seh_endprologue
	movq	264+_ZZN17ExampleAppConsole4DrawEPKcPbE6filter(%rip), %rcx
	testq	%rcx, %rcx
	je	.L12
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,7
.L12:
	rep ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA209:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE209-.LLSDACSB209
.LLSDACSB209:
.LLSDACSE209:
	.section	.text$__tcf_3,"x"
	.seh_endproc
	.text
	.p2align 4,,15
	.def	__tcf_1;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_1
__tcf_1:
.LFB186:
	.seh_endprologue
	movq	264+_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE6filter(%rip), %rcx
	testq	%rcx, %rcx
	je	.L14
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,7
.L14:
	rep ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA186:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE186-.LLSDACSB186
.LLSDACSB186:
.LLSDACSE186:
	.text
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_6;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_6
__tcf_6:
.LFB233:
	.seh_endprologue
	movq	8+_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rcx
	testq	%rcx, %rcx
	je	.L16
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,7
.L16:
	rep ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA233:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE233-.LLSDACSB233
.LLSDACSB233:
.LLSDACSE233:
	.text
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_2;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_2
__tcf_2:
.LFB196:
	.seh_endprologue
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rcx
	testq	%rcx, %rcx
	je	.L18
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,7
.L18:
	rep ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA196:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE196-.LLSDACSB196
.LLSDACSB196:
.LLSDACSE196:
	.text
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_5;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_5
__tcf_5:
.LFB228:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	304+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	testq	%rcx, %rcx
	je	.L21
	call	_ZN5ImGui7MemFreeEPv
.L21:
	movq	280+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	testq	%rcx, %rcx
	je	.L22
	call	_ZN5ImGui7MemFreeEPv
.L22:
	movq	8+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	testq	%rcx, %rcx
	je	.L20
	addq	$40, %rsp
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,7
.L20:
	addq	$40, %rsp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA228:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE228-.LLSDACSB228
.LLSDACSB228:
.LLSDACSE228:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC26:
	.ascii "imgui\0"
	.text
	.p2align 4,,15
	.def	_ZZN5ImGui14ShowTestWindowEPbEN11TextFilters18FilterImGuiLettersEP25ImGuiTextEditCallbackData;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZN5ImGui14ShowTestWindowEPbEN11TextFilters18FilterImGuiLettersEP25ImGuiTextEditCallbackData
_ZZN5ImGui14ShowTestWindowEPbEN11TextFilters18FilterImGuiLettersEP25ImGuiTextEditCallbackData:
.LFB181:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	18(%rcx), %edx
	movl	$1, %eax
	cmpw	$255, %dx
	ja	.L31
	leaq	.LC26(%rip), %rcx
	movsbl	%dl, %edx
	call	strchr
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
.L31:
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC27:
	.ascii "(dummy menu)\0"
.LC28:
	.ascii "New\0"
.LC29:
	.ascii "Ctrl+O\0"
.LC30:
	.ascii "Open\0"
.LC31:
	.ascii "Open Recent\0"
.LC32:
	.ascii "fish_hat.c\0"
.LC33:
	.ascii "fish_hat.inl\0"
.LC34:
	.ascii "fish_hat.h\0"
.LC35:
	.ascii "More..\0"
.LC36:
	.ascii "Hello\0"
.LC37:
	.ascii "Sailor\0"
.LC38:
	.ascii "Recurse..\0"
.LC39:
	.ascii "Ctrl+S\0"
.LC40:
	.ascii "Save\0"
.LC41:
	.ascii "Save As..\0"
.LC42:
	.ascii "Options\0"
.LC43:
	.ascii "\0"
.LC44:
	.ascii "Enabled\0"
.LC46:
	.ascii "child\0"
.LC47:
	.ascii "Scrolling Text %d\0"
.LC48:
	.ascii "Value\0"
.LC49:
	.ascii "%.3f\0"
.LC50:
	.ascii "Input\0"
.LC51:
	.ascii "Yes\0No\0Maybe\0\0\0"
.LC52:
	.ascii "Combo\0"
.LC53:
	.ascii "Colors\0"
.LC54:
	.ascii "Disabled\0"
	.align 8
.LC55:
	.ascii "C:/libraries/include/imgui/imgui_demo.cpp\0"
.LC56:
	.ascii "0\0"
.LC57:
	.ascii "Checked\0"
.LC58:
	.ascii "Alt+F4\0"
.LC59:
	.ascii "Quit\0"
	.text
	.p2align 4,,15
	.def	_ZL19ShowExampleMenuFilev;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL19ShowExampleMenuFilev
_ZL19ShowExampleMenuFilev:
.LFB188:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC27(%rip), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC28(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC29(%rip), %rdx
	leaq	.LC30(%rip), %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC31(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	jne	.L62
.L34:
	leaq	.LC39(%rip), %rdx
	leaq	.LC40(%rip), %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC41(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC42(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	jne	.L63
.L37:
	leaq	.LC53(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	je	.L39
	xorl	%ebx, %ebx
	.p2align 4,,7
.L40:
	movl	%ebx, %ecx
	incl	%ebx
	call	_ZN5ImGui15GetStyleColNameEi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$1, %r9d
	movq	%rax, %rcx
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	cmpl	$43, %ebx
	jne	.L40
	call	_ZN5ImGui7EndMenuEv
.L39:
	leaq	.LC54(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	je	.L41
	leaq	.LC55(%rip), %rdx
	leaq	.LC56(%rip), %rcx
	movl	$1890, %r8d
	call	_assert
.L41:
	leaq	.LC57(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	movl	$1, %r8d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC58(%rip), %rdx
	leaq	.LC59(%rip), %rcx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	nop
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,7
.L63:
	leaq	_ZZL19ShowExampleMenuFilevE7enabled(%rip), %r8
	leaq	.LC43(%rip), %rdx
	leaq	.LC44(%rip), %rcx
	movl	$1, %r9d
	xorl	%ebx, %ebx
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	48(%rsp), %rdx
	leaq	.LC46(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$1, %r8d
	movl	$0x00000000, 48(%rsp)
	movl	$0x42700000, 52(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	.p2align 4,,7
.L38:
	leaq	.LC47(%rip), %rcx
	movl	%ebx, %edx
	incl	%ebx
	call	_ZN5ImGui4TextEPKcz
	cmpl	$10, %ebx
	jne	.L38
	call	_ZN5ImGui8EndChildEv
	movss	.LC22(%rip), %xmm3
	leaq	.LC49(%rip), %rax
	xorps	%xmm2, %xmm2
	movss	%xmm3, 40(%rsp)
	leaq	_ZZL19ShowExampleMenuFilevE1f(%rip), %rdx
	leaq	.LC48(%rip), %rcx
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	xorps	%xmm3, %xmm3
	leaq	_ZZL19ShowExampleMenuFilevE1f(%rip), %rdx
	leaq	.LC50(%rip), %rcx
	movss	.LC25(%rip), %xmm2
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	call	_ZN5ImGui10InputFloatEPKcPfffii
	leaq	.LC51(%rip), %r8
	leaq	_ZZL19ShowExampleMenuFilevE1n(%rip), %rdx
	leaq	.LC52(%rip), %rcx
	movl	$-1, %r9d
	call	_ZN5ImGui5ComboEPKcPiS1_i
	call	_ZN5ImGui7EndMenuEv
	jmp	.L37
	.p2align 4,,7
.L62:
	leaq	.LC32(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC33(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC34(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC35(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	jne	.L64
.L35:
	call	_ZN5ImGui7EndMenuEv
	.p2align 4,,6
	jmp	.L34
.L64:
	leaq	.LC36(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC37(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC38(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	jne	.L65
.L36:
	call	_ZN5ImGui7EndMenuEv
	.p2align 4,,6
	jmp	.L35
.L65:
	.p2align 4,,8
	call	_ZL19ShowExampleMenuFilev
	.p2align 4,,8
	call	_ZN5ImGui7EndMenuEv
	.p2align 4,,5
	jmp	.L36
	.seh_endproc
	.p2align 4,,15
	.def	__tcf_4;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_4
__tcf_4:
.LFB214:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	256+_ZZL21ShowExampleAppConsolePbE7console(%rip), %edx
	testl	%edx, %edx
	jle	.L67
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	.L68
	.p2align 4,,7
.L82:
	addq	$8, %rsi
.L68:
	movq	264+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rax
	incl	%ebx
	movq	(%rax,%rsi), %rcx
	call	free
	cmpl	%ebx, 256+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	jg	.L82
.L67:
	movq	264+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rcx
	testq	%rcx, %rcx
	je	.L70
	movl	$0, 260+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	$0, 256+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 264+_ZZL21ShowExampleAppConsolePbE7console(%rip)
.L70:
	movl	280+_ZZL21ShowExampleAppConsolePbE7console(%rip), %eax
	movb	$1, 272+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	testl	%eax, %eax
	jle	.L72
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	.L73
	.p2align 4,,7
.L83:
	addq	$8, %rsi
.L73:
	movq	288+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rax
	incl	%ebx
	movq	(%rax,%rsi), %rcx
	call	free
	cmpl	%ebx, 280+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	jg	.L83
.L72:
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rcx
	testq	%rcx, %rcx
	je	.L75
	call	_ZN5ImGui7MemFreeEPv
.L75:
	movq	288+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rcx
	testq	%rcx, %rcx
	je	.L77
	call	_ZN5ImGui7MemFreeEPv
.L77:
	movq	264+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rcx
	testq	%rcx, %rcx
	je	.L66
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZN5ImGui7MemFreeEPv
	.p2align 4,,7
.L66:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA214:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE214-.LLSDACSB214
.LLSDACSB214:
.LLSDACSE214:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC60:
	.ascii "%s_%u\0"
.LC61:
	.ascii "Object\0"
.LC62:
	.ascii "my sailor is rich\0"
.LC63:
	.ascii "Child\0"
.LC64:
	.ascii "Field_%d\0"
.LC66:
	.ascii "##value\0"
	.text
	.p2align 4,,15
	.def	_ZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKci;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKci
_ZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKci:
.LFB231:
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
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movaps	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	movaps	%xmm8, 176(%rsp)
	.seh_savexmm	%xmm8, 176
	movaps	%xmm9, 192(%rsp)
	.seh_savexmm	%xmm9, 192
	.seh_endprologue
	movq	%rcx, %rsi
	movl	%edx, %ecx
	movl	%edx, %ebx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	%ebx, %r9d
	movq	%rsi, %r8
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %ebx
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%bl, %bl
	je	.L85
	xorps	%xmm7, %xmm7
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %rdi
	xorl	%ebx, %ebx
	movaps	%xmm7, %xmm8
	jmp	.L114
	.p2align 4,,7
.L112:
	leaq	.LC49(%rip), %rax
	movss	%xmm6, 32(%rsp)
	leaq	.LC66(%rip), %rcx
	movaps	%xmm6, %xmm3
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rdi, %rdx
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L113:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L111:
	incl	%ebx
	addq	$4, %rdi
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %ebx
	je	.L135
.L114:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %ebx
	jle	.L136
	leaq	112(%rsp), %rsi
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%ebx, %r8d
	movq	%rsi, %rcx
	call	sprintf
	call	_ZN5ImGui6BulletEv
	leaq	96(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rsi, %rcx
	movss	%xmm6, 96(%rsp)
	movss	%xmm6, 100(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %ebx
	jle	.L112
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%rdi, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L113
	.p2align 4,,7
.L135:
	call	_ZN5ImGui7TreePopEv
.L85:
	.p2align 4,,8
	call	_ZN5ImGui5PopIDEv
	nop
	movaps	144(%rsp), %xmm6
	movaps	160(%rsp), %xmm7
	movaps	176(%rsp), %xmm8
	movaps	192(%rsp), %xmm9
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
.L136:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %esi
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%sil, %sil
	je	.L87
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %r15
	xorl	%esi, %esi
	movl	%ebx, 88(%rsp)
	movq	%rdi, 72(%rsp)
	jmp	.L110
	.p2align 4,,7
.L108:
	leaq	.LC49(%rip), %rax
	movss	%xmm6, 32(%rsp)
	leaq	.LC66(%rip), %rcx
	movaps	%xmm6, %xmm3
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r15, %rdx
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L109:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L107:
	incl	%esi
	addq	$4, %r15
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %esi
	je	.L137
.L110:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %esi
	jle	.L138
	leaq	112(%rsp), %rbx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%esi, %r8d
	movq	%rbx, %rcx
	call	sprintf
	call	_ZN5ImGui6BulletEv
	leaq	96(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rcx
	movss	%xmm6, 96(%rsp)
	movss	%xmm6, 100(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %esi
	jle	.L108
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%r15, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L109
	.p2align 4,,7
.L137:
	movl	88(%rsp), %ebx
	movq	72(%rsp), %rdi
	call	_ZN5ImGui7TreePopEv
.L87:
	call	_ZN5ImGui5PopIDEv
	jmp	.L111
	.p2align 4,,7
.L138:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %ebx
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%bl, %bl
	je	.L89
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %r14
	xorl	%ebx, %ebx
	movq	%r15, 80(%rsp)
	xorps	%xmm6, %xmm6
	movl	%esi, 92(%rsp)
	jmp	.L106
	.p2align 4,,7
.L104:
	leaq	.LC49(%rip), %rax
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movl	$0x00000000, 32(%rsp)
	movq	%rax, 40(%rsp)
	movss	.LC67(%rip), %xmm2
	movq	%r14, %rdx
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L105:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L103:
	incl	%ebx
	addq	$4, %r14
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %ebx
	je	.L139
.L106:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %ebx
	jle	.L140
	leaq	112(%rsp), %rsi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%ebx, %r8d
	movq	%rsi, %rcx
	call	sprintf
	call	_ZN5ImGui6BulletEv
	leaq	96(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rsi, %rcx
	movss	%xmm6, 96(%rsp)
	movss	%xmm6, 100(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %ebx
	jle	.L104
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%r14, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L105
	.p2align 4,,7
.L139:
	movq	80(%rsp), %r15
	movl	92(%rsp), %esi
	call	_ZN5ImGui7TreePopEv
.L89:
	call	_ZN5ImGui5PopIDEv
	jmp	.L107
	.p2align 4,,7
.L140:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %esi
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%sil, %sil
	je	.L91
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %rbp
	xorl	%esi, %esi
	leaq	112(%rsp), %r12
	leaq	96(%rsp), %r15
	movss	.LC65(%rip), %xmm9
	jmp	.L102
	.p2align 4,,7
.L100:
	leaq	.LC49(%rip), %rax
	movaps	%xmm7, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movl	$0x00000000, 32(%rsp)
	movq	%rax, 40(%rsp)
	movss	.LC67(%rip), %xmm2
	movq	%rbp, %rdx
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L101:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L99:
	incl	%esi
	addq	$4, %rbp
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %esi
	je	.L141
.L102:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %esi
	jle	.L142
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%esi, %r8d
	movq	%r12, %rcx
	call	sprintf
	call	_ZN5ImGui6BulletEv
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r15, %r9
	movq	%r12, %rcx
	movss	%xmm7, 96(%rsp)
	movss	%xmm7, 100(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movaps	%xmm9, %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %esi
	jle	.L100
	movaps	%xmm7, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%rbp, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L101
	.p2align 4,,7
.L141:
	call	_ZN5ImGui7TreePopEv
.L91:
	.p2align 4,,8
	call	_ZN5ImGui5PopIDEv
	.p2align 4,,5
	jmp	.L103
	.p2align 4,,7
.L142:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %edi
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%dil, %dil
	je	.L93
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %r13
	xorl	%edi, %edi
	jmp	.L98
	.p2align 4,,7
.L96:
	leaq	.LC49(%rip), %rax
	movaps	%xmm8, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movl	$0x00000000, 32(%rsp)
	movq	%rax, 40(%rsp)
	movss	.LC67(%rip), %xmm2
	movq	%r13, %rdx
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L97:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L95:
	incl	%edi
	addq	$4, %r13
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %edi
	je	.L143
.L98:
	movl	%edi, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %edi
	jle	.L144
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%edi, %r8d
	movq	%r12, %rcx
	call	sprintf
	call	_ZN5ImGui6BulletEv
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r15, %r9
	movq	%r12, %rcx
	movss	%xmm8, 96(%rsp)
	movss	%xmm8, 100(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %edi
	jle	.L96
	movaps	%xmm8, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%r13, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L97
	.p2align 4,,7
.L143:
	call	_ZN5ImGui7TreePopEv
.L93:
	.p2align 4,,8
	call	_ZN5ImGui5PopIDEv
	.p2align 4,,5
	jmp	.L99
	.p2align 4,,7
.L144:
	leaq	.LC63(%rip), %rcx
	movl	$424242, %edx
	call	_ZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKci
	jmp	.L95
	.seh_endproc
	.section	.text$snprintf,"x"
	.linkonce discard
	.p2align 4,,15
	.globl	snprintf
	.def	snprintf;	.scl	2;	.type	32;	.endef
	.seh_proc	snprintf
snprintf:
.LFB166:
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
	.section .rdata,"dr"
	.align 8
.LC68:
	.ascii "Double-click on title bar to collapse window.\0"
	.align 8
.LC69:
	.ascii "Click and drag on lower right corner to resize window.\0"
	.align 8
.LC70:
	.ascii "Click and drag on any empty space to move window.\0"
.LC71:
	.ascii "Mouse Wheel to scroll.\0"
	.align 8
.LC72:
	.ascii "CTRL+Mouse Wheel to zoom window contents.\0"
	.align 8
.LC73:
	.ascii "TAB/SHIFT+TAB to cycle through keyboard editable fields.\0"
	.align 8
.LC74:
	.ascii "CTRL+Click on a slider or drag box to input text.\0"
	.align 8
.LC75:
	.ascii "While editing text:\12- Hold SHIFT or use mouse to select text\12- CTRL+Left/Right to word jump\12- CTRL+A or double-click to select all\12- CTRL+X,CTRL+C,CTRL+V clipboard\12- CTRL+Z,CTRL+Y undo/redo\12- ESCAPE to revert\12- You can apply arithmetic operators +,*,/ on numerical values.\12  Use +- to subtract.\12\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui13ShowUserGuideEv
	.def	_ZN5ImGui13ShowUserGuideEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui13ShowUserGuideEv
_ZN5ImGui13ShowUserGuideEv:
.LFB179:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	.LC68(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC69(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC70(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC71(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	call	_ZN5ImGui5GetIOEv
	cmpb	$0, 148(%rax)
	je	.L147
	leaq	.LC72(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
.L147:
	leaq	.LC73(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC74(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC75(%rip), %rcx
	addq	$40, %rsp
	jmp	_ZN5ImGui10BulletTextEPKcz
	.seh_endproc
	.section .rdata,"dr"
.LC76:
	.ascii "glyphs\0"
.LC77:
	.ascii "glyph\0"
.LC78:
	.ascii "Revert Style\0"
.LC79:
	.ascii "Save Style\0"
.LC81:
	.ascii "Rendering\0"
.LC82:
	.ascii "Anti-aliased lines\0"
.LC83:
	.ascii "Anti-aliased shapes\0"
.LC85:
	.ascii "Curve Tessellation Tolerance\0"
.LC89:
	.ascii "Global Alpha\0"
.LC90:
	.ascii "%.2f\0"
.LC93:
	.ascii "Settings\0"
.LC94:
	.ascii "WindowPadding\0"
.LC95:
	.ascii "%.0f\0"
.LC97:
	.ascii "WindowRounding\0"
.LC99:
	.ascii "ChildWindowRounding\0"
.LC100:
	.ascii "FramePadding\0"
.LC101:
	.ascii "FrameRounding\0"
.LC102:
	.ascii "ItemSpacing\0"
.LC103:
	.ascii "ItemInnerSpacing\0"
.LC104:
	.ascii "TouchExtraPadding\0"
.LC106:
	.ascii "IndentSpacing\0"
.LC108:
	.ascii "ScrollbarSize\0"
.LC109:
	.ascii "ScrollbarRounding\0"
.LC110:
	.ascii "GrabMinSize\0"
.LC111:
	.ascii "GrabRounding\0"
.LC112:
	.ascii "Alignment\0"
.LC113:
	.ascii "WindowTitleAlign\0"
.LC114:
	.ascii "ButtonTextAlign\0"
.LC115:
	.ascii "(?)\0"
	.align 8
.LC117:
	.ascii "Alignment applies when a button is larger than its text content.\0"
.LC118:
	.ascii "Copy Colors\0"
	.align 8
.LC119:
	.ascii "ImGuiStyle& style = ImGui::GetStyle();\15\12\0"
	.align 8
.LC120:
	.ascii "style.Colors[ImGuiCol_%s]%*s= ImVec4(%.2ff, %.2ff, %.2ff, %.2ff);\15\12\0"
.LC122:
	.ascii "To Clipboard\0To TTY\0\0"
.LC123:
	.ascii "##output_type\0"
.LC124:
	.ascii "Only Modified Fields\0"
.LC125:
	.ascii "RGB\0"
.LC126:
	.ascii "HSV\0"
.LC127:
	.ascii "HEX\0"
.LC128:
	.ascii "Filter colors\0"
.LC131:
	.ascii "#colors\0"
.LC133:
	.ascii "Revert\0"
.LC134:
	.ascii "Fonts (%d)\0"
.LC135:
	.ascii "Fonts\0"
	.align 8
.LC136:
	.ascii "Tip: Load fonts with io.Fonts->AddFontFromFileTTF()\12before calling io.Fonts->GetTex* functions.\0"
.LC137:
	.ascii "Atlas texture (%dx%d pixels)\0"
.LC138:
	.ascii "Atlas texture\0"
.LC140:
	.ascii "this window scale\0"
.LC141:
	.ascii "%.1f\0"
.LC143:
	.ascii "global scale\0"
	.align 8
.LC144:
	.ascii "Font %d: '%s', %.2f px, %d glyphs\0"
.LC145:
	.ascii "Set as default\0"
	.align 8
.LC146:
	.ascii "The quick brown fox jumps over the lazy dog\0"
.LC147:
	.ascii "Details\0"
.LC148:
	.ascii "Font scale\0"
	.align 8
.LC149:
	.ascii "Note than the default embedded font is NOT meant to be scaled.\12\12Font are currently rendered into bitmaps at a given size at the time of building the atlas. You may oversample them to get some flexibility with scaling. You can also render at multiple sizes and select which one to use at runtime.\12\12(Glimmer of hope: the atlas system should hopefully be rewritten in the future to make scaling more natural and automatic.)\0"
	.align 8
.LC150:
	.ascii "Ascent: %f, Descent: %f, Height: %f\0"
.LC151:
	.ascii "Fallback character: '%c' (%d)\0"
	.align 8
.LC152:
	.ascii "Texture surface: %d pixels (approx) ~ %dx%d\0"
.LC153:
	.ascii "Glyphs (%d)\0"
.LC154:
	.ascii "Glyphs\0"
	.align 8
.LC155:
	.ascii "Input %d: '%s', Oversample: (%d,%d), PixelSnapH: %d\0"
.LC156:
	.ascii "U+%04X..U+%04X (%d %s)\0"
.LC157:
	.ascii "Codepoint: U+%04X\0"
.LC158:
	.ascii "XAdvance+1: %.1f\0"
.LC159:
	.ascii "Pos: (%.2f,%.2f)->(%.2f,%.2f)\0"
.LC160:
	.ascii "UV: (%.3f,%.3f)->(%.3f,%.3f)\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle
	.def	_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle
_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle:
.LFB185:
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
	subq	$1128, %rsp
	.seh_stackalloc	1128
	movaps	%xmm6, 1024(%rsp)
	.seh_savexmm	%xmm6, 1024
	movaps	%xmm7, 1040(%rsp)
	.seh_savexmm	%xmm7, 1040
	movaps	%xmm8, 1056(%rsp)
	.seh_savexmm	%xmm8, 1056
	movaps	%xmm9, 1072(%rsp)
	.seh_savexmm	%xmm9, 1072
	movaps	%xmm10, 1088(%rsp)
	.seh_savexmm	%xmm10, 1088
	movaps	%xmm11, 1104(%rsp)
	.seh_savexmm	%xmm11, 1104
	.seh_endprologue
	leaq	208(%rsp), %rbx
	movq	%rcx, %rbp
	leaq	192(%rsp), %r13
.LEHB0:
	call	_ZN5ImGui8GetStyleEv
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movq	%rax, 88(%rsp)
	call	_ZN10ImGuiStyleC1Ev
	leaq	.LC78(%rip), %rcx
	movq	%r13, %rdx
	movl	$0x00000000, 192(%rsp)
	movl	$0x00000000, 196(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	je	.L149
	testq	%rbp, %rbp
	movq	%rbx, %rsi
	cmovne	%rbp, %rsi
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	808(%rsi), %rax
	movq	%rax, 808(%rdi)
	movq	%rdi, %rax
	addq	$8, %rdi
	andq	$-8, %rdi
	subq	%rdi, %rax
	leal	816(%rax), %ecx
	subq	%rax, %rsi
	shrl	$3, %ecx
	rep movsq
.L149:
	testq	%rbp, %rbp
	je	.L152
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC79(%rip), %rcx
	movq	%r13, %rdx
	movl	$0x00000000, 192(%rsp)
	movl	$0x00000000, 196(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	je	.L152
	movq	88(%rsp), %rsi
	leaq	8(%rbp), %rdi
	andq	$-8, %rdi
	movq	(%rsi), %rax
	movq	%rax, 0(%rbp)
	movq	808(%rsi), %rax
	movq	%rax, 808(%rbp)
	movq	%rbp, %rax
	subq	%rdi, %rax
	leal	816(%rax), %ecx
	subq	%rax, %rsi
	shrl	$3, %ecx
	rep movsq
.L152:
	call	_ZN5ImGui14GetWindowWidthEv
	mulss	.LC80(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	.LC81(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L296
.L154:
	leaq	.LC93(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L297
.L157:
	leaq	.LC53(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	je	.L159
	leaq	.LC118(%rip), %rcx
	movq	%r13, %rdx
	movl	$0x00000000, 192(%rsp)
	movl	$0x00000000, 196(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	je	.L160
	movl	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE11output_dest(%rip), %edx
	movl	$-1, %ecx
	testl	%edx, %edx
	jne	.L161
	call	_ZN5ImGui14LogToClipboardEi
.L162:
	leaq	.LC119(%rip), %rcx
	call	_ZN5ImGui7LogTextEPKcz
	movq	88(%rsp), %rax
	testq	%rbp, %rbp
	leaq	128(%rax), %r15
	je	.L298
	leaq	128(%rbp), %rdi
	xorl	%esi, %esi
	movl	$22, %r14d
.L171:
	movl	%esi, %ecx
	call	_ZN5ImGui15GetStyleColNameEi
	cmpb	$0, _ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE20output_only_modified(%rip)
	movq	%rax, %r12
	je	.L169
	movl	$16, %r8d
	movq	%rdi, %rdx
	movq	%r15, %rcx
	call	memcmp
	testl	%eax, %eax
	je	.L170
.L169:
	movq	%r12, %rcx
	prefetcht0	60(%r15)
	call	strlen
	cvtss2sd	12(%r15), %xmm4
	movl	%r14d, %r8d
	leaq	.LC43(%rip), %r9
	leaq	.LC120(%rip), %rcx
	subl	%eax, %r8d
	movq	%r12, %rdx
	movsd	%xmm4, 56(%rsp)
	cvtss2sd	8(%r15), %xmm5
	movsd	%xmm5, 48(%rsp)
	cvtss2sd	4(%r15), %xmm4
	movsd	%xmm4, 40(%rsp)
	cvtss2sd	(%r15), %xmm5
	movsd	%xmm5, 32(%rsp)
	call	_ZN5ImGui7LogTextEPKcz
.L170:
	incl	%esi
	addq	$16, %r15
	addq	$16, %rdi
	cmpl	$43, %esi
	jne	.L171
.L167:
	call	_ZN5ImGui9LogFinishEv
.L160:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	movss	.LC121(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	.LC122(%rip), %r8
	leaq	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE11output_dest(%rip), %rdx
	leaq	.LC123(%rip), %rcx
	movl	$-1, %r9d
	call	_ZN5ImGui5ComboEPKcPiS1_i
	call	_ZN5ImGui12PopItemWidthEv
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE20output_only_modified(%rip), %rdx
	leaq	.LC124(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	leaq	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE9edit_mode(%rip), %rdx
	leaq	.LC125(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui11RadioButtonEPKcPii
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE9edit_mode(%rip), %rdx
	leaq	.LC126(%rip), %rcx
	movl	$1, %r8d
	call	_ZN5ImGui11RadioButtonEPKcPii
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE9edit_mode(%rip), %rdx
	leaq	.LC127(%rip), %rcx
	movl	$2, %r8d
	call	_ZN5ImGui11RadioButtonEPKcPii
	cmpb	$0, _ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE6filter(%rip)
	jne	.L173
	leaq	_ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE6filter(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	jne	.L299
.L173:
	leaq	.LC128(%rip), %rdx
	leaq	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE6filter(%rip), %rcx
	leaq	128(%rbx), %r12
	movss	.LC129(%rip), %xmm2
	leaq	128(%rbp), %rdi
	call	_ZN15ImGuiTextFilter4DrawEPKcf
	leaq	.LC131(%rip), %rcx
	movl	$16384, %r9d
	movl	$1, %r8d
	movq	%r13, %rdx
	movl	$0x00000000, 192(%rsp)
	movl	$0x43960000, 196(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	movss	.LC132(%rip), %xmm0
	xorl	%ebx, %ebx
	call	_ZN5ImGui13PushItemWidthEf
	movl	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE9edit_mode(%rip), %ecx
	call	_ZN5ImGui13ColorEditModeEi
	movq	88(%rsp), %rax
	movss	.LC65(%rip), %xmm6
	leaq	128(%rax), %rsi
	jmp	.L184
	.p2align 4,,7
.L175:
	incl	%ebx
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$16, %r12
	cmpl	$43, %ebx
	je	.L300
.L184:
	movl	%ebx, %ecx
	call	_ZN5ImGui15GetStyleColNameEi
	leaq	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE6filter(%rip), %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	movq	%rax, %r14
	call	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_
	testb	%al, %al
	je	.L175
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	movl	$1, %r8d
	movq	%rsi, %rdx
	movq	%r14, %rcx
	call	_ZN5ImGui10ColorEdit4EPKcPfb
	testq	%rbp, %rbp
	movq	%rdi, %rdx
	movl	$16, %r8d
	cmove	%r12, %rdx
	movq	%rsi, %rcx
	call	memcmp
	testl	%eax, %eax
	jne	.L301
.L179:
	call	_ZN5ImGui5PopIDEv
	.p2align 4,,6
	jmp	.L175
.L300:
	.p2align 4,,8
	call	_ZN5ImGui12PopItemWidthEv
	.p2align 4,,8
	call	_ZN5ImGui8EndChildEv
	.p2align 4,,5
	call	_ZN5ImGui7TreePopEv
.L159:
	.p2align 4,,5
	call	_ZN5ImGui5GetIOEv
	movq	136(%rax), %rax
	leaq	.LC134(%rip), %rdx
	leaq	.LC135(%rip), %rcx
	movl	48(%rax), %r8d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	testb	%al, %al
	jne	.L302
.L185:
	call	_ZN5ImGui12PopItemWidthEv
	nop
	movaps	1024(%rsp), %xmm6
	movaps	1040(%rsp), %xmm7
	movaps	1056(%rsp), %xmm8
	movaps	1072(%rsp), %xmm9
	movaps	1088(%rsp), %xmm10
	movaps	1104(%rsp), %xmm11
	addq	$1128, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L297:
	movq	88(%rsp), %rdi
	movss	.LC22(%rip), %xmm6
	leaq	.LC95(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	.LC94(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	leaq	4(%rdi), %rdx
	movss	.LC96(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	20(%rdi), %rdx
	leaq	.LC97(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movss	.LC98(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	32(%rdi), %rdx
	leaq	.LC99(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movss	.LC98(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	36(%rdi), %rdx
	leaq	.LC100(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movss	.LC96(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	44(%rdi), %rdx
	leaq	.LC101(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movss	.LC98(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	48(%rdi), %rdx
	leaq	.LC102(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movss	.LC96(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	56(%rdi), %rdx
	leaq	.LC103(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movss	.LC96(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	64(%rdi), %rdx
	leaq	.LC104(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movss	.LC105(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	72(%rdi), %rdx
	leaq	.LC106(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movss	.LC107(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	leaq	80(%rdi), %rdx
	leaq	.LC108(%rip), %rcx
	movaps	%xmm6, %xmm2
	movss	%xmm6, 40(%rsp)
	movss	.LC96(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	84(%rdi), %rdx
	leaq	.LC109(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movss	.LC98(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	leaq	88(%rdi), %rdx
	leaq	.LC110(%rip), %rcx
	movaps	%xmm6, %xmm2
	movss	%xmm6, 40(%rsp)
	movss	.LC96(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	xorps	%xmm2, %xmm2
	leaq	.LC95(%rip), %rax
	leaq	92(%rdi), %rdx
	leaq	.LC111(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movss	.LC98(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	leaq	.LC112(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC90(%rip), %rax
	xorps	%xmm2, %xmm2
	leaq	24(%rdi), %rdx
	movaps	%xmm6, %xmm3
	leaq	.LC113(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
	xorps	%xmm2, %xmm2
	leaq	.LC90(%rip), %rax
	leaq	96(%rdi), %rdx
	movaps	%xmm6, %xmm3
	leaq	.LC114(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L303
.L158:
	.p2align 4,,6
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,6
	jmp	.L157
.L302:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L304
.L186:
	.p2align 4,,6
	call	_ZN5ImGui5GetIOEv
	movq	136(%rax), %rax
	leaq	.LC137(%rip), %rdx
	leaq	.LC138(%rip), %rcx
	movl	28(%rax), %r9d
	movl	24(%rax), %r8d
	movq	%rax, 96(%rsp)
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	testb	%al, %al
	jne	.L305
.L187:
	movss	.LC84(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	movq	96(%rsp), %rax
	movq	$0, 112(%rsp)
	movl	$0, 108(%rsp)
	movl	48(%rax), %eax
	testl	%eax, %eax
	jle	.L210
	movss	.LC22(%rip), %xmm10
	leaq	176(%rsp), %r15
	movss	.LC98(%rip), %xmm11
	jmp	.L292
.L190:
	movq	%rbx, %rcx
	call	_ZN5ImGui8PushFontEP6ImFont
	leaq	.LC146(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui7PopFontEv
	leaq	.LC147(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L306
.L191:
	call	_ZN5ImGui7TreePopEv
	movq	96(%rsp), %rbx
	incl	108(%rsp)
	movl	108(%rsp), %eax
	incq	112(%rsp)
	cmpl	%eax, 48(%rbx)
	jle	.L210
.L292:
	movq	96(%rsp), %rax
	movq	112(%rsp), %rdi
	leaq	.LC144(%rip), %rcx
	movq	56(%rax), %rax
	movq	(%rax,%rdi,8), %rbx
	cvtss2sd	(%rbx), %xmm0
	movq	80(%rbx), %rax
	movl	16(%rbx), %edx
	testq	%rax, %rax
	leaq	65(%rax), %r8
	leaq	.LC43(%rip), %rax
	movsd	%xmm0, 72(%rsp)
	movl	%edx, 32(%rsp)
	movq	72(%rsp), %r9
	movl	108(%rsp), %edx
	movsd	%xmm0, %xmm3
	cmove	%rax, %r8
	call	_ZN5ImGui10BulletTextEPKcz
	movq	%rdi, %rcx
	call	_ZN5ImGui8TreePushEPKv
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC145(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	testb	%al, %al
	je	.L190
	call	_ZN5ImGui5GetIOEv
	movq	%rbx, 152(%rax)
	jmp	.L190
.L306:
	leaq	.LC141(%rip), %rax
	leaq	4(%rbx), %rdx
	leaq	.LC148(%rip), %rcx
	movss	.LC142(%rip), %xmm3
	movl	$0x3f800000, 48(%rsp)
	movss	.LC92(%rip), %xmm2
	movq	%rax, 40(%rsp)
	movl	$0x40000000, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	je	.L192
	.p2align 4,,6
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC149(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
.L192:
	movss	96(%rbx), %xmm0
	leaq	.LC150(%rip), %rcx
	movaps	%xmm0, %xmm2
	cvtss2sd	%xmm0, %xmm0
	movss	100(%rbx), %xmm1
	subss	%xmm1, %xmm2
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm2
	movsd	%xmm2, 72(%rsp)
	movq	72(%rsp), %r9
	movsd	%xmm2, %xmm3
	movsd	%xmm1, 72(%rsp)
	movq	72(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 72(%rsp)
	movq	72(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui4TextEPKcz
	movzwl	76(%rbx), %edx
	leaq	.LC151(%rip), %rcx
	movl	%edx, %r8d
	call	_ZN5ImGui4TextEPKcz
	cvtsi2ss	104(%rbx), %xmm0
	sqrtss	%xmm0, %xmm6
	ucomiss	%xmm6, %xmm6
	jp	.L307
.L193:
	sqrtss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm1
	jp	.L308
.L195:
	cvttss2si	%xmm6, %r9d
	movl	104(%rbx), %edx
	leaq	.LC152(%rip), %rcx
	cvttss2si	%xmm1, %r8d
	xorl	%edi, %edi
	xorl	%esi, %esi
	call	_ZN5ImGui4TextEPKcz
	cmpw	$0, 78(%rbx)
	jle	.L200
.L290:
	movq	%rdi, %rax
	addq	80(%rbx), %rax
	leaq	.LC155(%rip), %rcx
	addq	$112, %rdi
	movzbl	32(%rax), %edx
	movl	24(%rax), %r9d
	leaq	65(%rax), %r8
	movl	%edx, 40(%rsp)
	movl	28(%rax), %edx
	movl	%edx, 32(%rsp)
	movl	%esi, %edx
	incl	%esi
	call	_ZN5ImGui10BulletTextEPKcz
	movswl	78(%rbx), %eax
	cmpl	%esi, %eax
	jg	.L290
.L200:
	movl	16(%rbx), %r8d
	leaq	.LC153(%rip), %rdx
	leaq	.LC154(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	testb	%al, %al
	je	.L199
	movq	64(%rbx), %rax
	movq	$0, 80(%rsp)
	movq	$0, 64(%rbx)
	movl	$256, 104(%rsp)
	movq	%rax, 120(%rsp)
	movq	80(%rsp), %rax
	.p2align 4,,7
.L209:
	movzwl	104(%rsp), %edi
	movl	%eax, %ebp
	movl	%eax, %r12d
	xorl	%esi, %esi
	.p2align 4,,7
.L202:
	movzwl	%r12w, %edx
	movq	%rbx, %rcx
	call	_ZNK6ImFont9FindGlyphEt
	testq	%rax, %rax
	setne	%al
	incl	%r12d
	movzbl	%al, %eax
	addl	%eax, %esi
	cmpw	%di, %r12w
	jne	.L202
	testl	%esi, %esi
	je	.L213
	leaq	.LC76(%rip), %rdx
	leaq	.LC77(%rip), %rax
	cmpl	$1, %esi
	movq	80(%rsp), %rcx
	movl	%esi, 32(%rsp)
	movl	%ebp, %r8d
	cmovne	%rdx, %rax
	leaq	.LC156(%rip), %rdx
	movq	%rax, 40(%rsp)
	movl	104(%rsp), %eax
	leal	-1(%rax), %r9d
	call	_ZN5ImGui8TreeNodeEPKvPKcz
	testb	%al, %al
	je	.L213
	movq	88(%rsp), %rax
	movss	(%rbx), %xmm6
	xorl	%esi, %esi
	movss	52(%rax), %xmm7
	call	_ZN5ImGui18GetCursorScreenPosEv
	movq	%rax, %rbp
	call	_ZN5ImGui17GetWindowDrawListEv
	movq	%rax, %r12
	movq	%rbp, %rax
	addss	%xmm6, %xmm7
	shrq	$32, %rax
	movl	80(%rsp), %edi
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %xmm9
	movl	%ebp, 72(%rsp)
	movd	72(%rsp), %xmm8
	jmp	.L208
	.p2align 4,,7
.L206:
	movq	%r13, %r8
	movl	$1694498815, %r9d
	movq	%r15, %rdx
	movq	%r12, %rcx
	movl	$0x3f800000, 48(%rsp)
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movaps	%xmm10, %xmm1
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif
	movq	176(%rsp), %r9
	movaps	%xmm6, %xmm2
	movl	%eax, 32(%rsp)
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movl	%r14d, 40(%rsp)
	call	_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt
	movl	$1, %r8d
	movq	%r13, %rdx
	movq	%r15, %rcx
	call	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b
	testb	%al, %al
	je	.L216
	call	_ZN5ImGui12BeginTooltipEv
	leaq	.LC157(%rip), %rcx
	movl	%edi, %edx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui9SeparatorEv
	cvtss2sd	4(%rbp), %xmm0
	leaq	.LC158(%rip), %rcx
	movsd	%xmm0, 72(%rsp)
	movq	72(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui4TextEPKcz
	cvtss2sd	16(%rbp), %xmm2
	leaq	.LC159(%rip), %rcx
	cvtss2sd	12(%rbp), %xmm1
	cvtss2sd	8(%rbp), %xmm0
	cvtss2sd	20(%rbp), %xmm4
	movsd	%xmm2, 72(%rsp)
	movq	72(%rsp), %r9
	movsd	%xmm2, %xmm3
	movsd	%xmm1, 72(%rsp)
	movq	72(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 72(%rsp)
	movq	72(%rsp), %rdx
	movsd	%xmm0, %xmm1
	movsd	%xmm4, 32(%rsp)
	call	_ZN5ImGui4TextEPKcz
	cvtss2sd	32(%rbp), %xmm2
	leaq	.LC160(%rip), %rcx
	cvtss2sd	28(%rbp), %xmm1
	cvtss2sd	24(%rbp), %xmm0
	cvtss2sd	36(%rbp), %xmm5
	movsd	%xmm2, 72(%rsp)
	movq	72(%rsp), %r9
	movsd	%xmm2, %xmm3
	movsd	%xmm1, 72(%rsp)
	movq	72(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 72(%rsp)
	movq	72(%rsp), %rdx
	movsd	%xmm0, %xmm1
	movsd	%xmm5, 32(%rsp)
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10EndTooltipEv
.L216:
	incl	%esi
	incl	%edi
	cmpl	$256, %esi
	je	.L309
.L208:
	movl	%esi, %eax
	movzwl	%di, %r14d
	movq	%rbx, %rcx
	sarl	$4, %eax
	movl	%r14d, %edx
	cvtsi2ss	%eax, %xmm0
	movl	%esi, %eax
	andl	$15, %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm7, %xmm0
	mulss	%xmm7, %xmm1
	addss	%xmm9, %xmm0
	addss	%xmm8, %xmm1
	movss	%xmm0, 180(%rsp)
	addss	%xmm6, %xmm0
	movss	%xmm1, 176(%rsp)
	addss	%xmm6, %xmm1
	movss	%xmm0, 196(%rsp)
	movss	%xmm1, 192(%rsp)
	call	_ZNK6ImFont9FindGlyphEt
	testq	%rax, %rax
	movq	%rax, %rbp
	jne	.L206
	movl	$855638015, %r9d
	movq	%r13, %r8
	movq	%r15, %rdx
	movq	%r12, %rcx
	movl	$0x3f800000, 48(%rsp)
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	incl	%esi
	incl	%edi
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movaps	%xmm10, %xmm1
	xorl	%ecx, %ecx
	call	_ZN5ImGui11GetColorU32Eif
	movq	176(%rsp), %r9
	movaps	%xmm6, %xmm2
	movl	%r14d, 40(%rsp)
	movl	%eax, 32(%rsp)
	movq	%r12, %rdx
	movq	%rbx, %rcx
	call	_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt
	cmpl	$256, %esi
	jne	.L208
.L309:
	mulss	%xmm11, %xmm7
	movq	%r13, %rcx
	movss	%xmm7, 192(%rsp)
	movss	%xmm7, 196(%rsp)
	call	_ZN5ImGui5DummyERK6ImVec2
	call	_ZN5ImGui7TreePopEv
.L213:
	addq	$256, 80(%rsp)
	addl	$256, 104(%rsp)
	movq	80(%rsp), %rax
	cmpq	$65536, %rax
	jne	.L209
	movq	120(%rsp), %rax
	movq	%rax, 64(%rbx)
	call	_ZN5ImGui7TreePopEv
.L199:
	call	_ZN5ImGui7TreePopEv
	jmp	.L191
.L210:
	leaq	.LC141(%rip), %rax
	leaq	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE12window_scale(%rip), %rdx
	leaq	.LC140(%rip), %rcx
	movss	.LC142(%rip), %xmm3
	movl	$0x3f800000, 48(%rsp)
	movss	.LC92(%rip), %xmm2
	movq	%rax, 40(%rsp)
	movl	$0x40000000, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	call	_ZN5ImGui5GetIOEv
	leaq	144(%rax), %rdx
	leaq	.LC141(%rip), %rax
	leaq	.LC143(%rip), %rcx
	movss	.LC142(%rip), %xmm3
	movl	$0x3f800000, 48(%rsp)
	movss	.LC92(%rip), %xmm2
	movq	%rax, 40(%rsp)
	movl	$0x40000000, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	call	_ZN5ImGui12PopItemWidthEv
	movss	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE12window_scale(%rip), %xmm0
	call	_ZN5ImGui18SetWindowFontScaleEf
	call	_ZN5ImGui7TreePopEv
	jmp	.L185
.L296:
	movq	88(%rsp), %rdi
	leaq	.LC82(%rip), %rcx
	leaq	120(%rdi), %rdx
	call	_ZN5ImGui8CheckboxEPKcPb
	leaq	121(%rdi), %rdx
	leaq	.LC83(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movss	.LC84(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	124(%rdi), %rdx
	leaq	.LC85(%rip), %rcx
	movl	$0x40000000, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0x7f7fffff, 32(%rsp)
	movss	.LC25(%rip), %xmm3
	movss	.LC88(%rip), %xmm2
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	xorps	%xmm0, %xmm0
	ucomiss	124(%rdi), %xmm0
	ja	.L310
.L155:
	movq	88(%rsp), %rdx
	leaq	.LC90(%rip), %rax
	leaq	.LC89(%rip), %rcx
	movss	.LC91(%rip), %xmm3
	movl	$0x3f800000, 48(%rsp)
	movss	.LC92(%rip), %xmm2
	movq	%rax, 40(%rsp)
	movl	$0x3f800000, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L154
.L301:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC133(%rip), %rcx
	movq	%r13, %rdx
	movl	$0x00000000, 192(%rsp)
	movl	$0x00000000, 196(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	je	.L180
	testq	%rbp, %rbp
	movq	%rdi, %rax
	cmove	%r12, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rdx, 8(%rsi)
	movq	%rax, (%rsi)
.L180:
	testq	%rbp, %rbp
	je	.L179
	xorps	%xmm0, %xmm0
	movaps	%xmm6, %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC40(%rip), %rcx
	movq	%r13, %rdx
	movl	$0x00000000, 192(%rsp)
	movl	$0x00000000, 196(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	je	.L179
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	prefetcht0	32(%rsi)
	prefetcht0	32(%rdi)
	movq	%rax, (%rdi)
	movq	%rdx, 8(%rdi)
	jmp	.L179
.L298:
	leaq	128(%rbx), %rdi
	xorl	%esi, %esi
	movl	$22, %r14d
.L168:
	movl	%esi, %ecx
	call	_ZN5ImGui15GetStyleColNameEi
	cmpb	$0, _ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE20output_only_modified(%rip)
	movq	%rax, %r12
	je	.L166
	movl	$16, %r8d
	movq	%rdi, %rdx
	movq	%r15, %rcx
	call	memcmp
	testl	%eax, %eax
	je	.L165
.L166:
	movq	%r12, %rcx
	prefetcht0	60(%r15)
	call	strlen
	cvtss2sd	12(%r15), %xmm4
	movl	%r14d, %r8d
	leaq	.LC43(%rip), %r9
	leaq	.LC120(%rip), %rcx
	subl	%eax, %r8d
	movq	%r12, %rdx
	movsd	%xmm4, 56(%rsp)
	cvtss2sd	8(%r15), %xmm5
	movsd	%xmm5, 48(%rsp)
	cvtss2sd	4(%r15), %xmm4
	movsd	%xmm4, 40(%rsp)
	cvtss2sd	(%r15), %xmm5
	movsd	%xmm5, 32(%rsp)
	call	_ZN5ImGui7LogTextEPKcz
.LEHE0:
.L165:
	incl	%esi
	addq	$16, %r15
	addq	$16, %rdi
	cmpl	$43, %esi
	jne	.L168
	jmp	.L167
.L299:
	leaq	.LC43(%rip), %rdx
	leaq	_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE6filter(%rip), %rcx
.LEHB1:
	call	_ZN15ImGuiTextFilterC1EPKc
.LEHE1:
	leaq	_ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE6filter(%rip), %rcx
	call	__cxa_guard_release
	leaq	__tcf_1(%rip), %rcx
	call	atexit
	jmp	.L173
.L310:
	movq	88(%rsp), %rax
	movl	$0x3dcccccd, 124(%rax)
	jmp	.L155
.L220:
	leaq	_ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE6filter(%rip), %rcx
	movq	%rax, %rbx
	call	__cxa_guard_abort
	movq	%rbx, %rcx
.LEHB2:
	call	_Unwind_Resume
.L308:
	call	sqrtf
	movaps	%xmm0, %xmm1
	jmp	.L195
.L307:
	.p2align 4,,5
	call	sqrtf
	movaps	%xmm0, %xmm6
	cvtsi2ss	104(%rbx), %xmm0
	jmp	.L193
.L305:
	movq	96(%rsp), %rbx
	leaq	176(%rsp), %rax
	leaq	128(%rsp), %rdx
	leaq	160(%rsp), %r9
	leaq	144(%rsp), %r8
	movl	$0x3f800000, 192(%rsp)
	movl	$0x3f800000, 196(%rsp)
	movl	$0x3f800000, 200(%rsp)
	cvtsi2ss	28(%rbx), %xmm0
	movl	$0x3f008081, 204(%rsp)
	cvtsi2ss	24(%rbx), %xmm1
	movq	%rax, 32(%rsp)
	movq	%r13, 40(%rsp)
	movq	(%rbx), %rcx
	movl	$0x3f800000, 176(%rsp)
	movl	$0x3f800000, 180(%rsp)
	movl	$0x3f800000, 184(%rsp)
	movl	$0x3f800000, 188(%rsp)
	movl	$0x3f800000, 160(%rsp)
	movl	$0x3f800000, 164(%rsp)
	movss	%xmm0, 132(%rsp)
	movl	$0x00000000, 144(%rsp)
	movl	$0x00000000, 148(%rsp)
	movss	%xmm1, 128(%rsp)
	call	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
	call	_ZN5ImGui7TreePopEv
	jmp	.L187
.L304:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC136(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L186
.L303:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC117(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L158
.L161:
	.p2align 4,,8
	call	_ZN5ImGui8LogToTTYEi
.LEHE2:
	.p2align 4,,8
	jmp	.L162
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA185:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE185-.LLSDACSB185
.LLSDACSB185:
	.uleb128 .LEHB0-.LFB185
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB185
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L220-.LFB185
	.uleb128 0
	.uleb128 .LEHB2-.LFB185
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE185:
	.text
	.seh_endproc
	.section	.text$_ZN17ExampleAppConsole6AddLogEPKcz,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN17ExampleAppConsole6AddLogEPKcz
	.def	_ZN17ExampleAppConsole6AddLogEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17ExampleAppConsole6AddLogEPKcz
_ZN17ExampleAppConsole6AddLogEPKcz:
.LFB207:
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
	leaq	48(%rsp), %rdi
	movq	%r9, 1144(%rsp)
	leaq	1136(%rsp), %r9
	movq	%r8, 1136(%rsp)
	movq	%rcx, %rsi
	movq	%rdx, %r8
	movq	%rdi, %rcx
	movl	$1024, %edx
	movq	%r9, 40(%rsp)
	call	__ms_vsnprintf
	movb	$0, 1071(%rsp)
	movq	%rdi, %r8
.L312:
	movl	(%r8), %edx
	addq	$4, %r8
	leal	-16843009(%rdx), %eax
	notl	%edx
	andl	%edx, %eax
	andl	$-2139062144, %eax
	je	.L312
	movl	%eax, %edx
	shrl	$16, %edx
	testl	$32896, %eax
	cmove	%edx, %eax
	leaq	2(%r8), %rdx
	movl	%eax, %ebx
	cmove	%rdx, %r8
	addb	%al, %bl
	sbbq	$3, %r8
	subq	%rdi, %r8
	leaq	1(%r8), %rbx
	movq	%rbx, %rcx
	call	malloc
	movq	%rdi, %rdx
	movq	%rbx, %r8
	movq	%rax, %rcx
	call	memcpy
	movslq	256(%rsi), %rdx
	movq	%rax, %rdi
	cmpl	260(%rsi), %edx
	je	.L314
	movq	264(%rsi), %rax
	leal	1(%rdx), %r8d
.L315:
	movl	%r8d, 256(%rsi)
	movq	%rdi, (%rax,%rdx,8)
	movb	$1, 272(%rsi)
	addq	$1080, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,7
.L314:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	jne	.L326
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %ebx
	jg	.L317
.L327:
	movq	264(%rsi), %rax
	jmp	.L315
	.p2align 4,,7
.L326:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %ebx
	jle	.L327
.L317:
	movslq	%eax, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	264(%rsi), %rcx
	movq	%rax, %rbp
	testq	%rcx, %rcx
	je	.L318
	movslq	256(%rsi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	264(%rsi), %rcx
.L318:
	call	_ZN5ImGui7MemFreeEPv
	movslq	256(%rsi), %rdx
	movq	%rbp, 264(%rsi)
	movq	%rbp, %rax
	movl	%ebx, 260(%rsi)
	leal	1(%rdx), %r8d
	jmp	.L315
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC161:
	.ascii "C:/libraries/include/imgui/imgui.h\0"
.LC162:
	.ascii "i < Size\0"
.LC163:
	.ascii "No match for \"%.*s\"!\12\0"
.LC164:
	.ascii " \0"
.LC165:
	.ascii "Possible matches:\12\0"
.LC166:
	.ascii "- %s\12\0"
.LC167:
	.ascii "%s\0"
	.section	.text$_ZN17ExampleAppConsole20TextEditCallbackStubEP25ImGuiTextEditCallbackData,"x"
	.linkonce discard
	.p2align 4,,15
	.globl	_ZN17ExampleAppConsole20TextEditCallbackStubEP25ImGuiTextEditCallbackData
	.def	_ZN17ExampleAppConsole20TextEditCallbackStubEP25ImGuiTextEditCallbackData;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17ExampleAppConsole20TextEditCallbackStubEP25ImGuiTextEditCallbackData
_ZN17ExampleAppConsole20TextEditCallbackStubEP25ImGuiTextEditCallbackData:
.LFB211:
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
	movq	8(%rcx), %rax
	movq	%rcx, 192(%rsp)
	movq	%rax, 64(%rsp)
	movl	(%rcx), %eax
	cmpl	$64, %eax
	je	.L330
	addl	$-128, %eax
	jne	.L399
	movl	20(%rcx), %edx
	movq	64(%rsp), %rax
	cmpl	$3, %edx
	movl	296(%rax), %eax
	je	.L420
	cmpl	$4, %edx
	jne	.L399
	cmpl	$-1, %eax
	je	.L399
	movq	64(%rsp), %rdx
	leal	1(%rax), %ebx
	cmpl	280(%rdx), %ebx
	movl	%ebx, 296(%rdx)
	jge	.L421
.L370:
	cmpl	%ebx, %eax
	je	.L399
	testl	%ebx, %ebx
	js	.L375
.L372:
	movq	64(%rsp), %rax
	cmpl	280(%rax), %ebx
	jge	.L422
.L376:
	movq	288(%rax), %rax
	movslq	%ebx, %rbx
	movq	(%rax,%rbx,8), %r9
.L374:
	movq	192(%rsp), %rax
	leaq	.LC167(%rip), %r8
	movslq	36(%rax), %rdx
	movq	24(%rax), %rcx
.LEHB3:
	call	snprintf
.LEHE3:
	movq	192(%rsp), %rdx
	movl	%eax, 32(%rdx)
	movl	%eax, 52(%rdx)
	movl	%eax, 48(%rdx)
	movl	%eax, 44(%rdx)
	movb	$1, 40(%rdx)
.L399:
	xorl	%eax, %eax
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
.L330:
	movslq	44(%rcx), %r8
	movq	24(%rcx), %rax
	movq	%rax, 80(%rsp)
	movq	%r8, %r9
	addq	%rax, %r8
	cmpq	%r8, %rax
	jnb	.L423
	movzbl	-1(%r8), %eax
	cmpb	$59, %al
	ja	.L386
	movabsq	$576478348784435712, %rdx
	btq	%rax, %rdx
	movq	%r8, %rax
	jc	.L424
.L334:
	movabsq	$576478348784435712, %rcx
	.p2align 4,,7
.L336:
	decq	%rax
	cmpq	%rax, 80(%rsp)
	je	.L425
	movzbl	-1(%rax), %edx
	cmpb	$59, %dl
	ja	.L336
	btq	%rdx, %rcx
	jnc	.L336
	movl	%r8d, %edx
	movq	%rax, 104(%rsp)
	movq	%rax, 80(%rsp)
	subl	%eax, %edx
	movl	%edx, 88(%rsp)
.L333:
	movq	64(%rsp), %rax
	movl	304(%rax), %eax
	testl	%eax, %eax
	movl	%eax, 40(%rsp)
	jle	.L387
	movl	88(%rsp), %eax
	xorl	%r14d, %r14d
	movl	$0, 32(%rsp)
	movl	$0, 92(%rsp)
	xorl	%r13d, %r13d
	movq	__imp_toupper(%rip), %rsi
	decl	%eax
	incq	%rax
	movq	%rax, 96(%rsp)
	jmp	.L340
	.p2align 4,,7
.L342:
	leal	1(%r14), %eax
	cmpl	40(%rsp), %eax
	jge	.L426
.L348:
	incq	%r14
.L340:
	movq	64(%rsp), %rdx
	leaq	0(,%r14,8), %rax
	movl	88(%rsp), %ecx
	movl	%r14d, 52(%rsp)
	movq	%rax, 72(%rsp)
	addq	312(%rdx), %rax
	testl	%ecx, %ecx
	movq	%rax, 56(%rsp)
	movq	(%rax), %rbx
	jle	.L341
	movq	96(%rsp), %rax
	movq	80(%rsp), %r15
	leaq	(%rbx,%rax), %rbp
	.p2align 4,,7
.L380:
	movsbl	(%r15), %ecx
	call	*%rsi
	movsbl	(%rbx), %ecx
	movl	%eax, %r12d
	movl	%ecx, %edi
	call	*%rsi
	cmpl	%eax, %r12d
	jne	.L342
	testb	%dil, %dil
	jne	.L343
.L341:
	movl	40(%rsp), %edx
	cmpl	%edx, 52(%rsp)
	jl	.L390
.L428:
	leaq	.LC161(%rip), %rdx
	leaq	.LC162(%rip), %rcx
	movl	$856, %r8d
.LEHB4:
	call	_assert
	movq	64(%rsp), %rax
	movq	72(%rsp), %rbx
	addq	312(%rax), %rbx
	movl	32(%rsp), %eax
	cmpl	%eax, 92(%rsp)
	je	.L344
	.p2align 4,,7
.L429:
	incl	%eax
.L345:
	movslq	32(%rsp), %rdx
	movq	(%rbx), %rcx
	movl	%eax, 32(%rsp)
	leal	1(%r14), %eax
	movq	%rcx, 0(%r13,%rdx,8)
	movq	64(%rsp), %rdx
	movl	304(%rdx), %edx
	movl	%edx, 40(%rsp)
	cmpl	40(%rsp), %eax
	jl	.L348
.L426:
	movl	32(%rsp), %edx
	testl	%edx, %edx
	je	.L339
	cmpl	$1, 32(%rsp)
	je	.L351
	movslq	88(%rsp), %r12
	movq	__imp_toupper(%rip), %r15
	movl	%r12d, %r14d
	.p2align 4,,7
.L352:
	movl	32(%rsp), %eax
	testl	%eax, %eax
	jle	.L360
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	movq	%r13, 40(%rsp)
	testl	%ebx, %ebx
	movq	%r13, %rdi
	movl	$1, %esi
	jne	.L355
	.p2align 4,,7
.L427:
	movq	0(%r13), %rax
	movsbl	(%rax,%r12), %ecx
	call	*%r15
	movl	%eax, %ebp
.L356:
	cmpl	32(%rsp), %esi
	jge	.L360
	incl	%ebx
	incl	%esi
	addq	$8, %rdi
	testl	%ebx, %ebx
	je	.L427
.L355:
	testl	%ebp, %ebp
	je	.L357
	cmpl	%ebx, 32(%rsp)
	jle	.L358
.L359:
	movq	(%rdi), %rax
	movsbl	(%rax,%r12), %ecx
	call	*__imp_toupper(%rip)
	cmpl	%ebp, %eax
	je	.L356
.L357:
	testl	%r14d, %r14d
	jle	.L382
	movq	192(%rsp), %rax
	movq	104(%rsp), %rdx
	movl	88(%rsp), %r8d
	subq	24(%rax), %rdx
	movq	%rax, %rcx
	call	_ZN25ImGuiTextEditCallbackData11DeleteCharsEii
.LEHE4:
	movq	192(%rsp), %rax
	movq	0(%r13), %r8
	movslq	%r14d, %r14
	movl	44(%rax), %edx
	leaq	(%r8,%r14), %r9
	movq	%rax, %rcx
.LEHB5:
	call	_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_
.LEHE5:
	.p2align 4,,7
.L382:
	movq	64(%rsp), %rcx
	leaq	.LC165(%rip), %rdx
.LEHB6:
	call	_ZN17ExampleAppConsole6AddLogEPKcz
	xorl	%ebx, %ebx
	jmp	.L362
	.p2align 4,,7
.L366:
	jl	.L365
	leaq	.LC161(%rip), %rdx
	leaq	.LC162(%rip), %rcx
	movl	$856, %r8d
	call	_assert
.L365:
	addq	$8, 40(%rsp)
.L362:
	movq	40(%rsp), %rax
	movq	64(%rsp), %rcx
	leaq	.LC166(%rip), %rdx
	movq	(%rax), %r8
	call	_ZN17ExampleAppConsole6AddLogEPKcz
.LEHE6:
	incl	%ebx
	cmpl	32(%rsp), %ebx
	jne	.L366
.L350:
	testq	%r13, %r13
	je	.L399
.L353:
	movq	%r13, %rcx
	call	_ZN5ImGui7MemFreeEPv
	.p2align 4,,2
	jmp	.L399
.L386:
	movq	%r8, %rax
	.p2align 4,,2
	jmp	.L334
	.p2align 4,,7
.L343:
	incq	%rbx
	incq	%r15
	cmpq	%rbp, %rbx
	jne	.L380
	movl	40(%rsp), %edx
	cmpl	%edx, 52(%rsp)
	jge	.L428
.L390:
	movl	32(%rsp), %eax
	cmpl	%eax, 92(%rsp)
	movq	56(%rsp), %rbx
	jne	.L429
.L344:
	movl	92(%rsp), %eax
	movl	$8, %edi
	testl	%eax, %eax
	leal	1(%rax), %ebp
	je	.L346
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	addl	%eax, %edi
.L346:
	cmpl	%edi, %ebp
	movl	%ebp, %eax
	cmovge	%ebp, %edi
	cmpl	92(%rsp), %edi
	jle	.L345
	movslq	%edi, %rcx
	salq	$3, %rcx
.LEHB7:
	call	_ZN5ImGui8MemAllocEy
	testq	%r13, %r13
	movq	%rax, %r12
	je	.L347
	movslq	32(%rsp), %r8
	movq	%r13, %rdx
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
.L347:
	movq	%r13, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movl	%ebp, %eax
	movq	%r12, %r13
	movl	%edi, 92(%rsp)
	jmp	.L345
	.p2align 4,,7
.L358:
	leaq	.LC161(%rip), %rdx
	leaq	.LC162(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	jmp	.L359
	.p2align 4,,7
.L360:
	incl	%r14d
	incq	%r12
	jmp	.L352
.L425:
	movq	80(%rsp), %rax
	movl	%r9d, 88(%rsp)
	movq	%rax, 104(%rsp)
	jmp	.L333
.L420:
	cmpl	$-1, %eax
	je	.L430
	testl	%eax, %eax
	jle	.L399
	leal	-1(%rax), %ebx
	movq	64(%rsp), %rax
	movl	%ebx, 296(%rax)
	jmp	.L372
.L387:
	xorl	%r13d, %r13d
.L339:
	movq	80(%rsp), %r9
	movl	88(%rsp), %r8d
	leaq	.LC163(%rip), %rdx
	movq	64(%rsp), %rcx
	call	_ZN17ExampleAppConsole6AddLogEPKcz
.LEHE7:
	jmp	.L350
.L421:
	movl	$-1, 296(%rdx)
.L375:
	leaq	.LC43(%rip), %r9
	jmp	.L374
.L422:
	leaq	.LC161(%rip), %rdx
	leaq	.LC162(%rip), %rcx
	movl	$856, %r8d
.LEHB8:
	call	_assert
.LEHE8:
	movq	64(%rsp), %rax
	jmp	.L376
.L430:
	movq	64(%rsp), %rdx
	movl	280(%rdx), %esi
	leal	-1(%rsi), %ebx
	movl	%esi, 32(%rsp)
	movl	%ebx, 296(%rdx)
	jmp	.L370
.L351:
	movq	192(%rsp), %rax
	movq	104(%rsp), %rdx
	movl	88(%rsp), %r8d
	subq	24(%rax), %rdx
	movq	%rax, %rcx
.LEHB9:
	call	_ZN25ImGuiTextEditCallbackData11DeleteCharsEii
.LEHE9:
	movq	192(%rsp), %rax
	movq	0(%r13), %r8
	xorl	%r9d, %r9d
	movl	44(%rax), %edx
	movq	%rax, %rcx
.LEHB10:
	call	_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_
	movq	192(%rsp), %rax
	leaq	.LC164(%rip), %r8
	xorl	%r9d, %r9d
	movl	44(%rax), %edx
	movq	%rax, %rcx
	call	_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_
.LEHE10:
	jmp	.L353
.L424:
	movq	%r8, 104(%rsp)
	movq	%r8, 80(%rsp)
	movl	$0, 88(%rsp)
	jmp	.L333
.L423:
	movq	%r8, 104(%rsp)
	movq	%r8, 80(%rsp)
	movl	$0, 88(%rsp)
	jmp	.L333
.L391:
	testq	%r13, %r13
	je	.L378
.L379:
	movq	%r13, %rcx
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui7MemFreeEPv
	movq	32(%rsp), %rax
.L378:
	movq	%rax, %rcx
.LEHB11:
	call	_Unwind_Resume
.LEHE11:
.L392:
	jmp	.L379
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA211:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE211-.LLSDACSB211
.LLSDACSB211:
	.uleb128 .LEHB3-.LFB211
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB211
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L391-.LFB211
	.uleb128 0
	.uleb128 .LEHB5-.LFB211
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L392-.LFB211
	.uleb128 0
	.uleb128 .LEHB6-.LFB211
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L391-.LFB211
	.uleb128 0
	.uleb128 .LEHB7-.LFB211
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L391-.LFB211
	.uleb128 0
	.uleb128 .LEHB8-.LFB211
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB211
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L391-.LFB211
	.uleb128 0
	.uleb128 .LEHB10-.LFB211
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L392-.LFB211
	.uleb128 0
	.uleb128 .LEHB11-.LFB211
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE211:
	.section	.text$_ZN17ExampleAppConsole20TextEditCallbackStubEP25ImGuiTextEditCallbackData,"x"
	.linkonce discard
	.seh_endproc
	.section .rdata,"dr"
.LC168:
	.ascii "CLEAR\0"
.LC169:
	.ascii "HELP\0"
.LC170:
	.ascii "HISTORY\0"
	.align 8
.LC173:
	.ascii "This example implements a console with basic coloring, completion and history. A more elaborate implementation may want to store entries along with extra data such as timestamp, emitter, etc.\0"
	.align 8
.LC174:
	.ascii "Enter 'HELP' for help, press TAB to use text completion.\0"
.LC175:
	.ascii "Add Dummy Text\0"
.LC176:
	.ascii "%d some text\0"
.LC177:
	.ascii "some more text\0"
	.align 8
.LC178:
	.ascii "display very important message here!\0"
.LC179:
	.ascii "Add Dummy Error\0"
.LC180:
	.ascii "[error] something went wrong\0"
.LC181:
	.ascii "Clear\0"
.LC182:
	.ascii "Scroll to bottom\0"
	.align 8
.LC183:
	.ascii "Filter (\"incl,-excl\") (\"error\")\0"
.LC186:
	.ascii "ScrollingRegion\0"
.LC188:
	.ascii "[error]\0"
.LC190:
	.ascii "# \0"
.LC193:
	.ascii "# %s\12\0"
.LC194:
	.ascii "it >= Data && it < Data+Size\0"
.LC195:
	.ascii "Commands:\0"
.LC196:
	.ascii "- %s\0"
.LC197:
	.ascii "%3d: %s\12\0"
.LC198:
	.ascii "Unknown command: '%s'\12\0"
	.section	.text$_ZN17ExampleAppConsole4DrawEPKcPb,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN17ExampleAppConsole4DrawEPKcPb
	.def	_ZN17ExampleAppConsole4DrawEPKcPb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17ExampleAppConsole4DrawEPKcPb
_ZN17ExampleAppConsole4DrawEPKcPb:
.LFB208:
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
	leaq	64(%rsp), %r14
	movq	%r8, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rbx
	movl	$4, %edx
	movl	$0x44020000, 64(%rsp)
	movq	%r14, %rcx
	movl	$0x44160000, 68(%rsp)
.LEHB12:
	call	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
	xorl	%r8d, %r8d
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZN5ImGui5BeginEPKcPbi
	testb	%al, %al
	je	.L514
	leaq	.LC173(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC174(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC175(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	testb	%al, %al
	jne	.L582
.L433:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC179(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	testb	%al, %al
	jne	.L583
.L434:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC181(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	testb	%al, %al
	jne	.L584
.L435:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC182(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	testb	%al, %al
	je	.L441
	movb	$1, 272(%rbx)
.L441:
	call	_ZN5ImGui9SeparatorEv
	movq	%r14, %rdx
	movl	$5, %ecx
	movl	$0x00000000, 64(%rsp)
	movl	$0x00000000, 68(%rsp)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	cmpb	$0, _ZGVZN17ExampleAppConsole4DrawEPKcPbE6filter(%rip)
	jne	.L443
	leaq	_ZGVZN17ExampleAppConsole4DrawEPKcPbE6filter(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	jne	.L585
.L443:
	leaq	.LC183(%rip), %rdx
	leaq	_ZZN17ExampleAppConsole4DrawEPKcPbE6filter(%rip), %rcx
	movss	.LC184(%rip), %xmm2
	call	_ZN15ImGuiTextFilter4DrawEPKcf
	movl	$1, %ecx
	call	_ZN5ImGui11PopStyleVarEi
	call	_ZN5ImGui9SeparatorEv
	call	_ZN5ImGui29GetItemsLineHeightWithSpacingEv
	movss	.LC185(%rip), %xmm1
	leaq	.LC186(%rip), %rcx
	xorl	%r8d, %r8d
	movl	$2048, %r9d
	movq	%r14, %rdx
	movl	$0x00000000, 64(%rsp)
	xorps	%xmm1, %xmm0
	movss	%xmm0, 68(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$1, %ecx
	call	_ZN5ImGui23BeginPopupContextWindowEbPKci
	testb	%al, %al
	jne	.L586
.L445:
	movl	$7, %ecx
	movq	%r14, %rdx
	movl	$0x40800000, 64(%rsp)
	movl	$0x3f800000, 68(%rsp)
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movl	256(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.L459
	.p2align 4,,7
.L553:
	movq	264(%rbx), %rax
	leaq	_ZZN17ExampleAppConsole4DrawEPKcPbE6filter(%rip), %rcx
	xorl	%r8d, %r8d
	movq	(%rax,%r12), %r13
	movq	%r13, %rdx
	call	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_
	testb	%al, %al
	je	.L458
	leaq	.LC188(%rip), %rdx
	movq	%r13, %rcx
	movl	$0x3f800000, 64(%rsp)
	movl	$0x3f800000, 68(%rsp)
	movl	$0x3f800000, 72(%rsp)
	movl	$0x3f800000, 76(%rsp)
	call	strstr
	testq	%rax, %rax
	je	.L456
	movl	$0x3ecccccd, 68(%rsp)
	movl	$0x3ecccccd, 72(%rsp)
.L457:
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movq	%r13, %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	movl	$1, %ecx
	call	_ZN5ImGui13PopStyleColorEi
.L458:
	incl	%ebp
	addq	$8, %r12
	cmpl	%ebp, 256(%rbx)
	jg	.L553
.L459:
	cmpb	$0, 272(%rbx)
	jne	.L587
.L454:
	movl	$1, %ecx
	movb	$0, 272(%rbx)
	call	_ZN5ImGui11PopStyleVarEi
	call	_ZN5ImGui8EndChildEv
	call	_ZN5ImGui9SeparatorEv
	leaq	_ZN17ExampleAppConsole20TextEditCallbackStubEP25ImGuiTextEditCallbackData(%rip), %rax
	leaq	.LC50(%rip), %rcx
	movq	%rbx, 40(%rsp)
	movl	$224, %r9d
	movl	$256, %r8d
	movq	%rbx, %rdx
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	testb	%al, %al
	je	.L461
	movq	%rbx, %rcx
	call	strlen
	addq	%rbx, %rax
	cmpq	%rax, %rbx
	jb	.L465
	jmp	.L462
	.p2align 4,,7
.L589:
	decq	%rax
	cmpq	%rax, %rbx
	je	.L588
.L465:
	cmpb	$32, -1(%rax)
	je	.L589
.L462:
	movb	$0, (%rax)
	cmpb	$0, (%rbx)
	jne	.L590
.L467:
	movb	$0, (%rbx)
.L461:
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	je	.L591
.L499:
	movl	$-1, %ecx
	call	_ZN5ImGui20SetKeyboardFocusHereEi
.L514:
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
.L456:
	leaq	.LC190(%rip), %rdi
	movl	$2, %ecx
	movq	%r13, %rsi
	repz cmpsb
	jne	.L457
	movl	$0x3f47ae14, 68(%rsp)
	movl	$0x3f147ae1, 72(%rsp)
	jmp	.L457
	.p2align 4,,7
.L587:
	movss	.LC24(%rip), %xmm0
	call	_ZN5ImGui13SetScrollHereEf
	jmp	.L454
	.p2align 4,,7
.L591:
	call	_ZN5ImGui29IsRootWindowOrAnyChildFocusedEv
	testb	%al, %al
	.p2align 4,,6
	je	.L514
	.p2align 4,,6
	call	_ZN5ImGui15IsAnyItemActiveEv
	testb	%al, %al
	.p2align 4,,4
	jne	.L514
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	_ZN5ImGui14IsMouseClickedEib
	testb	%al, %al
	jne	.L514
	.p2align 4,,2
	jmp	.L499
	.p2align 4,,7
.L582:
	movl	256(%rbx), %r8d
	leaq	.LC176(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN17ExampleAppConsole6AddLogEPKcz
	leaq	.LC177(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN17ExampleAppConsole6AddLogEPKcz
	leaq	.LC178(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN17ExampleAppConsole6AddLogEPKcz
	jmp	.L433
	.p2align 4,,7
.L583:
	leaq	.LC180(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN17ExampleAppConsole6AddLogEPKcz
	jmp	.L434
	.p2align 4,,7
.L584:
	movl	256(%rbx), %r9d
	testl	%r9d, %r9d
	jle	.L436
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.L437
	.p2align 4,,7
.L572:
	addq	$8, %rdi
.L437:
	movq	264(%rbx), %rax
	incl	%esi
	movq	(%rax,%rdi), %rcx
	call	free
	cmpl	%esi, 256(%rbx)
	jg	.L572
.L436:
	movq	264(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L439
	movl	$0, 260(%rbx)
	movl	$0, 256(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 264(%rbx)
.L439:
	movb	$1, 272(%rbx)
	jmp	.L435
	.p2align 4,,7
.L586:
	leaq	.LC181(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r14, %r9
	movl	$0x00000000, 64(%rsp)
	movl	$0x00000000, 68(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	testb	%al, %al
	jne	.L592
.L446:
	call	_ZN5ImGui8EndPopupEv
.LEHE12:
	.p2align 4,,6
	jmp	.L445
.L585:
	leaq	.LC43(%rip), %rdx
	leaq	_ZZN17ExampleAppConsole4DrawEPKcPbE6filter(%rip), %rcx
.LEHB13:
	call	_ZN15ImGuiTextFilterC1EPKc
.LEHE13:
	leaq	_ZGVZN17ExampleAppConsole4DrawEPKcPbE6filter(%rip), %rcx
	call	__cxa_guard_release
	leaq	__tcf_3(%rip), %rcx
	call	atexit
	jmp	.L443
	.p2align 4,,7
.L588:
	movq	%rbx, %rax
	jmp	.L462
.L590:
	leaq	.LC193(%rip), %rdx
	movq	%rbx, %r8
	movq	%rbx, %rcx
.LEHB14:
	call	_ZN17ExampleAppConsole6AddLogEPKcz
	movl	280(%rbx), %eax
	movl	$-1, 296(%rbx)
	movq	__imp_toupper(%rip), %rbp
	movl	%eax, %r12d
	movl	%eax, 52(%rsp)
	decl	%r12d
	js	.L468
	movq	__imp_toupper(%rip), %rbp
	movslq	%r12d, %r13
	salq	$3, %r13
	.p2align 4,,7
.L476:
	cmpl	52(%rsp), %r12d
	jge	.L593
.L469:
	movq	288(%rbx), %rax
	movq	%rbx, %rdi
	movq	(%rax,%r13), %rax
	movq	%rax, 56(%rsp)
	movq	%rax, %rsi
	jmp	.L502
	.p2align 4,,7
.L594:
	testb	%r15b, %r15b
	je	.L472
	incq	%rsi
	incq	%rdi
.L502:
	movsbl	(%rdi), %ecx
	call	*%rbp
	movsbl	(%rsi), %ecx
	movl	%eax, %r14d
	movl	%ecx, %r15d
	call	*%rbp
	cmpl	%eax, %r14d
	je	.L594
.L472:
	cmpl	%eax, %r14d
	je	.L595
	decl	%r12d
	subq	$8, %r13
	cmpl	$-1, %r12d
	jne	.L476
.L468:
	movq	%rbx, %rcx
	call	strlen
	leaq	1(%rax), %rsi
	movq	%rsi, %rcx
	call	malloc
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	memcpy
	movl	284(%rbx), %edx
	movl	52(%rsp), %esi
	movq	%rax, %rdi
	cmpl	%esi, %edx
	je	.L477
	movq	288(%rbx), %rax
	leal	1(%rsi), %r13d
.L478:
	movslq	52(%rsp), %rdx
	movl	%r13d, 280(%rbx)
	leaq	.LC168(%rip), %rsi
	movq	%rdi, (%rax,%rdx,8)
	movq	%rbx, %rdi
	jmp	.L505
	.p2align 4,,7
.L596:
	testb	%r15b, %r15b
	je	.L484
	incq	%rdi
	incq	%rsi
.L505:
	movsbl	(%rsi), %ecx
	call	*%rbp
	movsbl	(%rdi), %ecx
	movl	%eax, %r12d
	movl	%ecx, %r15d
	call	*%rbp
	cmpl	%eax, %r12d
	je	.L596
.L484:
	cmpl	%eax, %r12d
	je	.L506
	movq	%rbx, %rdi
	leaq	.LC169(%rip), %rsi
	jmp	.L507
	.p2align 4,,7
.L597:
	cmpl	%eax, %r15d
	jne	.L489
	incq	%rdi
	incq	%rsi
.L507:
	movsbl	(%rsi), %ecx
	call	*%rbp
	movsbl	(%rdi), %ecx
	movl	%eax, %r15d
	movl	%ecx, %r12d
	call	*%rbp
	testb	%r12b, %r12b
	jne	.L597
.L489:
	cmpl	%eax, %r15d
	movq	%rbx, %rdi
	leaq	.LC170(%rip), %rsi
	jne	.L511
	leaq	.LC195(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZN17ExampleAppConsole6AddLogEPKcz
	movl	304(%rbx), %edx
	testl	%edx, %edx
	jle	.L467
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.L491
	.p2align 4,,7
.L575:
	addq	$8, %rdi
.L491:
	movq	312(%rbx), %rax
	leaq	.LC196(%rip), %rdx
	movq	%rbx, %rcx
	incl	%esi
	movq	(%rax,%rdi), %r8
	call	_ZN17ExampleAppConsole6AddLogEPKcz
	cmpl	%esi, 304(%rbx)
	jg	.L575
	jmp	.L467
	.p2align 4,,7
.L598:
	cmpl	%eax, %r15d
	jne	.L495
	incq	%rdi
	incq	%rsi
.L511:
	movsbl	(%rsi), %ecx
	call	*%rbp
	movsbl	(%rdi), %ecx
	movl	%eax, %r15d
	movl	%ecx, %r12d
	call	*%rbp
	testb	%r12b, %r12b
	jne	.L598
.L495:
	cmpl	%eax, %r15d
	jne	.L599
	movl	52(%rsp), %r14d
	movl	$0, %esi
	subl	$9, %r14d
	cmpl	$10, %r13d
	cmovge	%r14d, %esi
	cmpl	%r13d, %esi
	jge	.L467
	movslq	%esi, %rdi
	salq	$3, %rdi
	jmp	.L497
	.p2align 4,,7
.L576:
	addq	$8, %rdi
.L497:
	movq	288(%rbx), %rax
	leaq	.LC197(%rip), %rdx
	movl	%esi, %r8d
	movq	%rbx, %rcx
	incl	%esi
	movq	(%rax,%rdi), %r9
	call	_ZN17ExampleAppConsole6AddLogEPKcz
	cmpl	%esi, 280(%rbx)
	jg	.L576
	jmp	.L467
	.p2align 4,,7
.L506:
	movl	256(%rbx), %eax
	testl	%eax, %eax
	jle	.L508
	xorl	%edi, %edi
	xorl	%esi, %esi
.L509:
	movq	264(%rbx), %rax
	incl	%esi
	movq	(%rax,%rdi), %rcx
	call	free
	cmpl	%esi, 256(%rbx)
	jle	.L508
	addq	$8, %rdi
	jmp	.L509
	.p2align 4,,7
.L593:
	leaq	.LC161(%rip), %rdx
	leaq	.LC162(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movl	280(%rbx), %eax
	movl	%eax, 52(%rsp)
	jmp	.L469
.L508:
	movq	264(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L486
	movl	$0, 260(%rbx)
	movl	$0, 256(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 264(%rbx)
.L486:
	movb	$1, 272(%rbx)
	jmp	.L467
.L592:
	movl	256(%rbx), %r8d
	testl	%r8d, %r8d
	jle	.L447
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.L448
	.p2align 4,,7
.L573:
	addq	$8, %rdi
.L448:
	movq	264(%rbx), %rax
	incl	%esi
	movq	(%rax,%rdi), %rcx
	call	free
	cmpl	%esi, 256(%rbx)
	jg	.L573
.L447:
	movq	264(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L450
	movl	$0, 260(%rbx)
	movl	$0, 256(%rbx)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 264(%rbx)
.L450:
	movb	$1, 272(%rbx)
	jmp	.L446
	.p2align 4,,7
.L595:
	cmpl	52(%rsp), %r12d
	movq	56(%rsp), %rcx
	jge	.L600
.L473:
	call	free
	movq	288(%rbx), %rax
	addq	%rax, %r13
	jc	.L474
	movslq	280(%rbx), %rdx
	leaq	(%rax,%rdx,8), %rcx
	cmpq	%rcx, %r13
	jb	.L475
.L474:
	leaq	.LC161(%rip), %rdx
	leaq	.LC194(%rip), %rcx
	movl	$887, %r8d
	call	_assert
	movslq	280(%rbx), %rdx
	movq	288(%rbx), %rax
.L475:
	movq	%r13, %rcx
	leaq	-1(%rdx), %r8
	subq	%rax, %rcx
	sarq	$3, %rcx
	subq	%rcx, %r8
	leaq	8(%rax,%rcx,8), %rdx
	movq	%r13, %rcx
	salq	$3, %r8
	call	memmove
	movl	280(%rbx), %eax
	decl	%eax
	movl	%eax, 52(%rsp)
	movl	%eax, 280(%rbx)
	jmp	.L468
.L477:
	testl	%esi, %esi
	leal	1(%rsi), %r13d
	movl	$8, %eax
	je	.L479
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	%esi, %eax
.L479:
	cmpl	%eax, %r13d
	cmovge	%r13d, %eax
	cmpl	%eax, %edx
	movl	%eax, %esi
	jl	.L480
	movq	288(%rbx), %rax
	movl	%edx, 52(%rsp)
	jmp	.L478
.L600:
	leaq	.LC162(%rip), %rcx
	leaq	.LC161(%rip), %rdx
	movl	$856, %r8d
	call	_assert
	movq	288(%rbx), %rax
	movq	(%rax,%r13), %rcx
	jmp	.L473
.L480:
	movslq	%eax, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	288(%rbx), %rdx
	movq	%rax, %r12
	testq	%rdx, %rdx
	je	.L481
	movslq	280(%rbx), %r8
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	288(%rbx), %rdx
.L481:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movl	280(%rbx), %eax
	movq	%r12, 288(%rbx)
	movl	%esi, 284(%rbx)
	movl	%eax, 52(%rsp)
	leal	1(%rax), %r13d
	movq	%r12, %rax
	jmp	.L478
.L599:
	leaq	.LC198(%rip), %rdx
	movq	%rbx, %r8
	movq	%rbx, %rcx
	call	_ZN17ExampleAppConsole6AddLogEPKcz
	jmp	.L467
.L518:
	leaq	_ZGVZN17ExampleAppConsole4DrawEPKcPbE6filter(%rip), %rcx
	movq	%rax, %rbx
	call	__cxa_guard_abort
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE14:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA208:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE208-.LLSDACSB208
.LLSDACSB208:
	.uleb128 .LEHB12-.LFB208
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB208
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L518-.LFB208
	.uleb128 0
	.uleb128 .LEHB14-.LFB208
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE208:
	.section	.text$_ZN17ExampleAppConsole4DrawEPKcPb,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN13ExampleAppLog6AddLogEPKcz,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN13ExampleAppLog6AddLogEPKcz
	.def	_ZN13ExampleAppLog6AddLogEPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13ExampleAppLog6AddLogEPKcz
_ZN13ExampleAppLog6AddLogEPKcz:
.LFB216:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
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
	movq	%r8, 128(%rsp)
	movq	%r9, 136(%rsp)
	leaq	128(%rsp), %r8
	movl	(%rcx), %eax
	movq	%rcx, %rdi
	movq	%r8, 40(%rsp)
	leal	-1(%rax), %ebx
	call	_ZN15ImGuiTextBuffer7appendvEPKcPc
	movl	(%rdi), %eax
	movslq	%ebx, %rsi
	leal	-1(%rax), %ebp
	cmpl	%ebp, %ebx
	jl	.L614
	jmp	.L609
	.p2align 4,,7
.L603:
	incl	%ebx
	incq	%rsi
	cmpl	%ebp, %ebx
	je	.L609
.L614:
	movq	8(%rdi), %rax
	cmpb	$10, (%rax,%rsi)
	jne	.L603
	movslq	296(%rdi), %rdx
	cmpl	300(%rdi), %edx
	je	.L604
	movq	304(%rdi), %rax
	leal	1(%rdx), %r8d
.L605:
	movl	%r8d, 296(%rdi)
	movl	%ebx, (%rax,%rdx,4)
	incl	%ebx
	incq	%rsi
	cmpl	%ebp, %ebx
	jne	.L614
.L609:
	movb	$1, 312(%rdi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,7
.L604:
	testl	%edx, %edx
	leal	1(%rdx), %r8d
	movl	$8, %eax
	je	.L606
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
.L606:
	cmpl	%eax, %r8d
	cmovge	%r8d, %eax
	cmpl	%edx, %eax
	movl	%eax, %r12d
	jg	.L607
	movq	304(%rdi), %rax
	jmp	.L605
	.p2align 4,,7
.L607:
	movslq	%eax, %rcx
	salq	$2, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	304(%rdi), %rcx
	movq	%rax, %r13
	testq	%rcx, %rcx
	je	.L608
	movslq	296(%rdi), %r8
	movq	%rcx, %rdx
	movq	%rax, %rcx
	salq	$2, %r8
	call	memcpy
	movq	304(%rdi), %rcx
.L608:
	call	_ZN5ImGui7MemFreeEPv
	movslq	296(%rdi), %rdx
	movq	%r13, 304(%rdi)
	movq	%r13, %rax
	movl	%r12d, 300(%rdi)
	leal	1(%rdx), %r8d
	jmp	.L605
	.seh_endproc
	.section .rdata,"dr"
.LC202:
	.ascii "25%\0"
.LC203:
	.ascii "Top\0"
.LC204:
	.ascii "Center\0"
.LC205:
	.ascii "Bottom\0"
.LC206:
	.ascii "75%\0"
.LC207:
	.ascii "Fizz\0"
.LC208:
	.ascii "FizzBuzz\0"
.LC209:
	.ascii "Buzz\0"
.LC210:
	.ascii "<None>\0"
.LC211:
	.ascii "SUPER \0"
.LC212:
	.ascii "ALT \0"
.LC213:
	.ascii "SHIFT \0"
.LC214:
	.ascii "CTRL \0"
.LC215:
	.ascii "true\0"
.LC216:
	.ascii "false\0"
.LC217:
	.ascii "File\0"
.LC218:
	.ascii "Edit\0"
.LC219:
	.ascii "CTRL+Z\0"
.LC220:
	.ascii "Undo\0"
.LC221:
	.ascii "CTRL+Y\0"
.LC222:
	.ascii "Redo\0"
.LC223:
	.ascii "CTRL+X\0"
.LC224:
	.ascii "Cut\0"
.LC225:
	.ascii "CTRL+C\0"
.LC226:
	.ascii "Copy\0"
.LC227:
	.ascii "CTRL+V\0"
.LC228:
	.ascii "Paste\0"
.LC229:
	.ascii "CLASSIFY\0"
.LC230:
	.ascii "Welcome to ImGui!\0"
.LC231:
	.ascii "Example: Console\0"
.LC232:
	.ascii "system\0"
.LC233:
	.ascii "info\0"
.LC234:
	.ascii "warning\0"
.LC235:
	.ascii "error\0"
.LC236:
	.ascii "fatal\0"
.LC237:
	.ascii "notice\0"
.LC238:
	.ascii "log\0"
	.align 8
.LC239:
	.ascii "[%s] Hello, time is %.1f, rand() %d\12\0"
.LC242:
	.ascii "Example: Log\0"
.LC243:
	.ascii "Filter\0"
.LC245:
	.ascii "scrolling\0"
.LC246:
	.ascii "Size > 0\0"
.LC248:
	.ascii "Example: Layout\0"
.LC249:
	.ascii "Close\0"
.LC251:
	.ascii "left pane\0"
.LC252:
	.ascii "MyObject %d\0"
.LC253:
	.ascii "item view\0"
.LC254:
	.ascii "MyObject: %d\0"
	.align 8
.LC255:
	.ascii "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \0"
.LC256:
	.ascii "buttons\0"
.LC258:
	.ascii "Example: Property editor\0"
	.align 8
.LC259:
	.ascii "This example shows how you may implement a property editor using two columns.\12All objects/fields data are dummies here.\12Remember that in many simple cases, you can use ImGui::SameLine(xxx) to position\12your cursor horizontally instead of using the Columns() API.\0"
.LC260:
	.ascii "Example: Long text display\0"
	.align 8
.LC261:
	.ascii "Printing unusually long amount of text.\0"
	.align 8
.LC262:
	.ascii "Single call to TextUnformatted()\0Multiple calls to Text(), clipped manually\0Multiple calls to Text(), not clipped\0\0"
.LC263:
	.ascii "Test type\0"
	.align 8
.LC264:
	.ascii "Buffer contents: %d lines, %d bytes\0"
.LC265:
	.ascii "Add 1000 lines\0"
	.align 8
.LC266:
	.ascii "%i The quick brown fox jumps over the lazy dog\12\0"
.LC267:
	.ascii "Log\0"
	.align 8
.LC268:
	.ascii "%i The quick brown fox jumps over the lazy dog\0"
.LC269:
	.ascii "ItemsCount == -1\0"
.LC270:
	.ascii "Example: Auto-resizing window\0"
	.align 8
.LC271:
	.ascii "Window will resize every-frame to the size of its content.\12Note that you probably don't want to query the window size to\12output your content because that would create a feedback loop.\0"
.LC272:
	.ascii "Number of lines\0"
.LC273:
	.ascii "%*sThis is line %d\0"
.LC274:
	.ascii "Example: Constrained Resize\0"
.LC275:
	.ascii "Resize vertical only\0"
.LC276:
	.ascii "Resize horizontal only\0"
.LC277:
	.ascii "Width > 100, Height > 100\0"
.LC278:
	.ascii "Width 300-400\0"
.LC279:
	.ascii "Custom: Always Square\0"
.LC280:
	.ascii "Custom: Fixed Steps (100)\0"
.LC281:
	.ascii "Constraint\0"
.LC282:
	.ascii "200x200\0"
.LC283:
	.ascii "500x500\0"
.LC284:
	.ascii "800x200\0"
	.align 8
.LC286:
	.ascii "Hello, sailor! Making this line long enough for the example.\0"
.LC287:
	.ascii "Example: Fixed Overlay\0"
	.align 8
.LC288:
	.ascii "Simple overlay\12on the top-left side of the screen.\0"
.LC289:
	.ascii "Mouse Position: (%.1f,%.1f)\0"
	.align 8
.LC290:
	.ascii "Same title as another window##1\0"
	.align 8
.LC291:
	.ascii "This is window 1.\12My title is the same as window 2, but my identifier is unique.\0"
	.align 8
.LC292:
	.ascii "Same title as another window##2\0"
	.align 8
.LC293:
	.ascii "This is window 2.\12My title is the same as window 1, but my identifier is unique.\0"
	.align 8
.LC295:
	.ascii "Animated title %c %d###AnimatedTitle\0"
	.align 8
.LC296:
	.ascii "This window has a changing title.\0"
.LC299:
	.ascii "Example: Custom rendering\0"
.LC300:
	.ascii "Primitives\0"
.LC301:
	.ascii "Size\0"
.LC303:
	.ascii "Color\0"
.LC307:
	.ascii "Canvas example\0"
	.align 8
.LC308:
	.ascii "Left-click and drag to add lines,\12Right-click to undo\0"
.LC313:
	.ascii "canvas\0"
.LC314:
	.ascii "Style Editor\0"
.LC315:
	.ascii "About ImGui\0"
.LC316:
	.ascii "dear imgui, %s\0"
	.align 8
.LC317:
	.ascii "By Omar Cornut and all github contributors.\0"
	.align 8
.LC318:
	.ascii "ImGui is licensed under the MIT License, see LICENSE for more information.\0"
.LC321:
	.ascii "ImGui Demo\0"
.LC323:
	.ascii "Dear ImGui says hello.\0"
.LC324:
	.ascii "Menu\0"
.LC325:
	.ascii "Examples\0"
.LC326:
	.ascii "Main menu bar\0"
.LC327:
	.ascii "Console\0"
.LC328:
	.ascii "Simple layout\0"
.LC329:
	.ascii "Property editor\0"
.LC330:
	.ascii "Long text display\0"
.LC331:
	.ascii "Auto-resizing window\0"
.LC332:
	.ascii "Constrained-resizing window\0"
.LC333:
	.ascii "Simple overlay\0"
.LC334:
	.ascii "Manipulating window title\0"
.LC335:
	.ascii "Custom rendering\0"
.LC336:
	.ascii "Help\0"
.LC337:
	.ascii "Metrics\0"
	.align 8
.LC338:
	.ascii "This window is being created by the ShowTestWindow() function. Please refer to the code for programming reference.\12\12User Guide:\0"
.LC339:
	.ascii "Window options\0"
.LC340:
	.ascii "No titlebar\0"
.LC341:
	.ascii "No border\0"
.LC342:
	.ascii "No resize\0"
.LC343:
	.ascii "No move\0"
.LC344:
	.ascii "No scrollbar\0"
.LC345:
	.ascii "No collapse\0"
.LC346:
	.ascii "No menu\0"
.LC347:
	.ascii "Style\0"
.LC348:
	.ascii "Logging\0"
	.align 8
.LC349:
	.ascii "The logging API redirects all text output so you can easily capture the content of a window or a block. Tree nodes can be automatically expanded. You can also call ImGui::LogText() to output directly to the log without a visual output.\0"
.LC350:
	.ascii "Widgets\0"
.LC351:
	.ascii "Trees\0"
.LC352:
	.ascii "Basic trees\0"
.LC353:
	.ascii "Child %d\0"
.LC354:
	.ascii "blah blah\0"
.LC355:
	.ascii "print\0"
.LC356:
	.ascii "Child %d pressed\0"
	.align 8
.LC357:
	.ascii "Advanced, with Selectable nodes\0"
	.align 8
.LC358:
	.ascii "This is a more standard looking tree with selectable nodes.\12Click to select, CTRL+Click to toggle, click on arrows or double-click to open.\0"
	.align 8
.LC359:
	.ascii "Align label with current X position)\0"
.LC360:
	.ascii "Hello!\0"
.LC361:
	.ascii "Selectable Node %d\0"
.LC362:
	.ascii "Blah blah\12Blah Blah\0"
.LC363:
	.ascii "Selectable Leaf %d\0"
.LC364:
	.ascii "Collapsing Headers\0"
.LC365:
	.ascii "Header\0"
.LC366:
	.ascii "Header with a close button\0"
.LC367:
	.ascii "Enable extra group\0"
.LC368:
	.ascii "Some content %d\0"
.LC369:
	.ascii "More content %d\0"
.LC370:
	.ascii "Bullets\0"
.LC371:
	.ascii "Bullet point 1\0"
	.align 8
.LC372:
	.ascii "Bullet point 2\12On multiple lines\0"
.LC373:
	.ascii "Bullet point 3 (two calls)\0"
.LC374:
	.ascii "Button\0"
.LC375:
	.ascii "Colored Text\0"
.LC376:
	.ascii "Pink\0"
.LC377:
	.ascii "Yellow\0"
.LC378:
	.ascii "Word Wrapping\0"
	.align 8
.LC379:
	.ascii "This text should automatically wrap on the edge of the window. The current implementation for text wrapping follows simple rules suitable for English and possibly other languages.\0"
.LC380:
	.ascii "Wrap width\0"
.LC382:
	.ascii "Test paragraph 1:\0"
	.align 8
.LC383:
	.ascii "The lazy dog is a good dog. This paragraph is made to fit within %.0f pixels. Testing a 1 character word. The quick brown fox jumps over the lazy dog.\0"
.LC384:
	.ascii "Test paragraph 2:\0"
	.align 8
.LC385:
	.ascii "aaaaaaaa bbbbbbbb, c cccccccc,dddddddd. d eeeeeeee   ffffffff. gggggggg!hhhhhhhh\0"
.LC386:
	.ascii "UTF-8 Text\0"
	.align 8
.LC387:
	.ascii "CJK text will only appears if the font was loaded with the appropriate CJK character ranges. Call io.Font->LoadFromFileTTF() manually to load extra character ranges.\0"
	.align 8
.LC388:
	.ascii "Hiragana: \343\201\213\343\201\215\343\201\217\343\201\221\343\201\223 (kakikukeko)\0"
.LC389:
	.ascii "Kanjis: \346\227\245\346\234\254\350\252\236 (nihongo)\0"
.LC390:
	.ascii "UTF-8 input\0"
.LC391:
	.ascii "Images\0"
	.align 8
.LC392:
	.ascii "Below we are displaying the font texture (which is the only texture we have access to in this demo). Use the 'ImTextureID' type as storage to pass pointers or identifier to your own texture data. Hover the texture for a zoomed view!\0"
.LC393:
	.ascii "%.0fx%.0f\0"
.LC395:
	.ascii "Min: (%.2f, %.2f)\0"
.LC396:
	.ascii "Max: (%.2f, %.2f)\0"
	.align 8
.LC398:
	.ascii "And now some textured buttons..\0"
.LC399:
	.ascii "Pressed %d times.\0"
.LC400:
	.ascii "Selectables\0"
.LC401:
	.ascii "Basic\0"
.LC402:
	.ascii "1. I am selectable\0"
.LC403:
	.ascii "2. I am selectable\0"
.LC404:
	.ascii "3. I am not selectable\0"
.LC405:
	.ascii "4. I am selectable\0"
.LC406:
	.ascii "5. I am double clickable\0"
	.align 8
.LC407:
	.ascii "Rendering more text into the same block\0"
.LC408:
	.ascii "main.c\0"
.LC409:
	.ascii " 2,345 bytes\0"
.LC410:
	.ascii "Hello.cpp\0"
.LC411:
	.ascii "12,345 bytes\0"
.LC412:
	.ascii "Hello.h\0"
.LC413:
	.ascii "In columns\0"
.LC414:
	.ascii "Item %d\0"
.LC415:
	.ascii "Grid\0"
.LC416:
	.ascii "Filtered Text Input\0"
.LC417:
	.ascii "default\0"
.LC418:
	.ascii "decimal\0"
.LC419:
	.ascii "hexadecimal\0"
.LC420:
	.ascii "uppercase\0"
.LC421:
	.ascii "no blank\0"
.LC422:
	.ascii "\"imgui\" letters\0"
.LC423:
	.ascii "Password input\0"
.LC424:
	.ascii "password\0"
	.align 8
.LC425:
	.ascii "Display all characters as '*'.\12Disable clipboard cut and copy.\12Disable logging.\12\0"
.LC426:
	.ascii "password (clear)\0"
.LC427:
	.ascii "Multi-line Text Input\0"
.LC428:
	.ascii "Read-only\0"
.LC429:
	.ascii "##source\0"
.LC430:
	.ascii "Clicked\0"
.LC431:
	.ascii "Thanks for clicking me!\0"
.LC432:
	.ascii "checkbox\0"
.LC433:
	.ascii "radio a\0"
.LC434:
	.ascii "radio b\0"
.LC435:
	.ascii "radio c\0"
.LC440:
	.ascii "Click\0"
.LC441:
	.ascii "Hover over me\0"
.LC442:
	.ascii "I am a tooltip\0"
.LC443:
	.ascii "- or me\0"
.LC444:
	.ascii "I am a fancy tooltip\0"
.LC445:
	.ascii "Curve\0"
.LC446:
	.ascii "label\0"
.LC447:
	.ascii "aaaa\0bbbb\0cccc\0dddd\0eeee\0\0\0"
.LC448:
	.ascii "combo\0"
.LC450:
	.ascii "combo scroll\0"
.LC451:
	.ascii "input text\0"
	.align 8
.LC452:
	.ascii "Hold SHIFT or use mouse to select text.\12CTRL+Left/Right to word jump.\12CTRL+A or double-click to select all.\12CTRL+X,CTRL+C,CTRL+V clipboard.\12CTRL+Z,CTRL+Y undo/redo.\12ESCAPE to revert.\12\0"
.LC453:
	.ascii "input int\0"
	.align 8
.LC454:
	.ascii "You can apply arithmetic operators +,*,/ on numerical values.\12  e.g. [ 100 ], input '*2', result becomes [ 200 ]\12Use +- to subtract.\12\0"
.LC455:
	.ascii "input float\0"
.LC456:
	.ascii "input float3\0"
.LC457:
	.ascii "drag int\0"
	.align 8
.LC458:
	.ascii "Click and drag to edit value.\12Hold SHIFT/ALT for faster/slower edit.\12Double-click or CTRL+click to input value.\0"
.LC459:
	.ascii "drag int 0..100\0"
.LC460:
	.ascii "%.0f%%\0"
.LC461:
	.ascii "drag float\0"
.LC462:
	.ascii "drag small float\0"
.LC463:
	.ascii "%.06f ns\0"
.LC465:
	.ascii "slider int\0"
.LC466:
	.ascii "CTRL+click to input value.\0"
.LC467:
	.ascii "slider float\0"
.LC468:
	.ascii "ratio = %.3f\0"
.LC469:
	.ascii "slider log float\0"
.LC470:
	.ascii "%.4f\0"
.LC472:
	.ascii "slider angle\0"
.LC475:
	.ascii "color 1\0"
	.align 8
.LC476:
	.ascii "Click on the colored square to change edit mode.\12CTRL+click on individual component to input value.\12\0"
.LC477:
	.ascii "color 2\0"
.LC479:
	.ascii "listbox\12(single select)\0"
.LC480:
	.ascii "Range Widgets\0"
.LC481:
	.ascii "range\0"
.LC482:
	.ascii "Max: %.1f %%\0"
.LC483:
	.ascii "Min: %.1f %%\0"
.LC485:
	.ascii "range int (no bounds)\0"
.LC486:
	.ascii "Max: %.0f units\0"
.LC487:
	.ascii "Min: %.0f units\0"
.LC489:
	.ascii "Multi-component Widgets\0"
.LC490:
	.ascii "input float2\0"
.LC491:
	.ascii "drag float2\0"
.LC492:
	.ascii "slider float2\0"
.LC493:
	.ascii "drag int2\0"
.LC494:
	.ascii "input int2\0"
.LC495:
	.ascii "slider int2\0"
.LC496:
	.ascii "drag float3\0"
.LC497:
	.ascii "slider float3\0"
.LC498:
	.ascii "drag int3\0"
.LC499:
	.ascii "input int3\0"
.LC500:
	.ascii "slider int3\0"
.LC501:
	.ascii "input float4\0"
.LC502:
	.ascii "drag float4\0"
.LC503:
	.ascii "slider float4\0"
.LC504:
	.ascii "input int4\0"
.LC505:
	.ascii "drag int4\0"
.LC506:
	.ascii "slider int4\0"
.LC507:
	.ascii "Vertical Sliders\0"
.LC510:
	.ascii "##int\0"
.LC511:
	.ascii "set1\0"
.LC513:
	.ascii "##v\0"
.LC514:
	.ascii "set2\0"
.LC516:
	.ascii "set3\0"
.LC518:
	.ascii "%.2f\12sec\0"
.LC519:
	.ascii "Graphs widgets\0"
.LC520:
	.ascii "Animate\0"
.LC521:
	.ascii "Frame Times\0"
.LC524:
	.ascii "Lines\0"
.LC525:
	.ascii "avg 0.0\0"
.LC526:
	.ascii "Histogram\0"
.LC527:
	.ascii "Sin\0Saw\0\0"
.LC528:
	.ascii "func\0"
.LC529:
	.ascii "Sample count\0"
.LC530:
	.ascii "Progress Bar\0"
.LC532:
	.ascii "%d/%d\0"
.LC533:
	.ascii "Layout\0"
.LC534:
	.ascii "Child regions\0"
.LC535:
	.ascii "Without border\0"
.LC536:
	.ascii "Goto\0"
.LC537:
	.ascii "##Line\0"
.LC538:
	.ascii "Sub1\0"
.LC539:
	.ascii "%04d: scrollable region\0"
.LC540:
	.ascii "Sub2\0"
.LC541:
	.ascii "With border\0"
.LC542:
	.ascii "%08x\0"
.LC543:
	.ascii "Widgets Width\0"
.LC544:
	.ascii "PushItemWidth(100)\0"
.LC545:
	.ascii "Fixed width.\0"
.LC546:
	.ascii "float##1\0"
	.align 8
.LC547:
	.ascii "PushItemWidth(GetWindowWidth() * 0.5f)\0"
.LC548:
	.ascii "Half of window width.\0"
.LC549:
	.ascii "float##2\0"
	.align 8
.LC550:
	.ascii "PushItemWidth(GetContentRegionAvailWidth() * 0.5f)\0"
	.align 8
.LC551:
	.ascii "Half of available width.\12(~ right-cursor_pos)\12(works within a column set)\0"
.LC552:
	.ascii "float##3\0"
.LC553:
	.ascii "PushItemWidth(-100)\0"
.LC554:
	.ascii "Align to right edge minus 100\0"
.LC555:
	.ascii "float##4\0"
.LC556:
	.ascii "PushItemWidth(-1)\0"
.LC557:
	.ascii "Align to right edge\0"
.LC558:
	.ascii "float##5\0"
.LC559:
	.ascii "Basic Horizontal Layout\0"
	.align 8
.LC560:
	.ascii "(Use ImGui::SameLine() to keep adding items to the right of the preceding item)\0"
.LC561:
	.ascii "Two items: Hello\0"
.LC562:
	.ascii "More spacing: Hello\0"
.LC563:
	.ascii "Normal buttons\0"
.LC13:
	.ascii "Banana\0"
.LC12:
	.ascii "Apple\0"
.LC564:
	.ascii "Corniflower\0"
.LC565:
	.ascii "Small buttons\0"
.LC566:
	.ascii "Like this one\0"
.LC567:
	.ascii "can fit within a text block.\0"
.LC568:
	.ascii "Aligned\0"
.LC569:
	.ascii "x=150\0"
.LC570:
	.ascii "x=300\0"
.LC571:
	.ascii "My\0"
.LC572:
	.ascii "Tailor\0"
.LC573:
	.ascii "Is\0"
.LC574:
	.ascii "Rich\0"
.LC0:
	.ascii "AAAA\0"
.LC1:
	.ascii "BBBB\0"
.LC2:
	.ascii "CCCC\0"
.LC3:
	.ascii "DDDD\0"
.LC575:
	.ascii "X\0"
.LC576:
	.ascii "Y\0"
.LC577:
	.ascii "Z\0"
.LC578:
	.ascii "Lists:\0"
.LC579:
	.ascii "A\0"
.LC580:
	.ascii "B\0"
.LC581:
	.ascii "Groups\0"
	.align 8
.LC582:
	.ascii "(Using ImGui::BeginGroup()/EndGroup() to layout items. BeginGroup() basically locks the horizontal position. EndGroup() bundles the whole group so that you can use functions such as IsItemHovered() on it.)\0"
.LC583:
	.ascii "AAA\0"
.LC584:
	.ascii "BBB\0"
.LC585:
	.ascii "CCC\0"
.LC586:
	.ascii "DDD\0"
.LC587:
	.ascii "Group hovered\0"
.LC588:
	.ascii "EEE\0"
.LC589:
	.ascii "##values\0"
.LC590:
	.ascii "ACTION\0"
.LC591:
	.ascii "REACTION\0"
.LC592:
	.ascii "LEVERAGE\12BUZZWORD\0"
.LC593:
	.ascii "List\0"
.LC594:
	.ascii "Selected\0"
.LC595:
	.ascii "Not Selected\0"
.LC596:
	.ascii "Text Baseline Alignment\0"
	.align 8
.LC597:
	.ascii "(This is testing the vertical alignment that occurs on text to keep it at the same baseline as widgets. Lines only composed of text or \"small\" widgets fit in less vertical spaces than lines with normal widgets)\0"
.LC598:
	.ascii "One\12Two\12Three\0"
.LC599:
	.ascii "Hello\12World\0"
.LC600:
	.ascii "HOP##1\0"
.LC601:
	.ascii "HOP##2\0"
.LC602:
	.ascii "TEST##1\0"
.LC603:
	.ascii "TEST\0"
.LC604:
	.ascii "TEST##2\0"
.LC605:
	.ascii "Text aligned to Widget\0"
.LC606:
	.ascii "Widget##1\0"
.LC607:
	.ascii "Widget\0"
.LC608:
	.ascii "Widget##2\0"
.LC609:
	.ascii "Button##1\0"
.LC610:
	.ascii "Node##1\0"
.LC611:
	.ascii "Item %d..\0"
.LC612:
	.ascii "Node##2\0"
.LC613:
	.ascii "Button##2\0"
.LC614:
	.ascii "Button##3\0"
.LC615:
	.ascii "Bullet text\0"
.LC616:
	.ascii "Node\0"
.LC617:
	.ascii "Button##4\0"
.LC618:
	.ascii "Scrolling\0"
	.align 8
.LC619:
	.ascii "(Use SetScrollHere() or SetScrollFromPosY() to scroll to a given position.)\0"
.LC620:
	.ascii "Track\0"
.LC622:
	.ascii "##line\0"
.LC623:
	.ascii "Line %.0f\0"
.LC624:
	.ascii "Scroll To\0"
.LC625:
	.ascii "##pos_y\0"
.LC626:
	.ascii "y = %.0f px\0"
.LC628:
	.ascii "Line %d\0"
.LC629:
	.ascii "Horizontal Scrolling\0"
	.align 8
.LC630:
	.ascii "Horizontal scrolling for a window has to be enabled explicitly via the ImGuiWindowFlags_HorizontalScrollbar flag.\0"
	.align 8
.LC631:
	.ascii "You may want to explicitly specify content width by calling SetNextWindowContentWidth() before Begin().\0"
.LC632:
	.ascii "<<\0"
.LC633:
	.ascii "%d\0"
.LC636:
	.ascii "Scroll from code\0"
.LC637:
	.ascii ">>\0"
.LC638:
	.ascii "Clipping\0"
	.align 8
.LC639:
	.ascii "On a per-widget basis we are occasionally clipping text CPU-side if it won't fit in its frame. Otherwise we are doing coarser clipping + passing a scissor rectangle to the renderer. The system is designed to try minimizing both execution and CPU/GPU rendering cost.\0"
.LC640:
	.ascii "size\0"
.LC641:
	.ascii "(Click and drag)\0"
.LC642:
	.ascii "##dummy\0"
.LC645:
	.ascii "Line 1 hello\12Line 2 clip me!\0"
.LC646:
	.ascii "Popups & Modal windows\0"
.LC647:
	.ascii "Popups\0"
	.align 8
.LC648:
	.ascii "When a popup is active, it inhibits interacting with windows that are behind the popup. Clicking outside the popup closes it.\0"
.LC649:
	.ascii "Bream\0"
.LC650:
	.ascii "Haddock\0"
.LC651:
	.ascii "Mackerel\0"
.LC652:
	.ascii "Pollock\0"
.LC653:
	.ascii "Tilefish\0"
.LC654:
	.ascii "Select..\0"
.LC655:
	.ascii "select\0"
.LC656:
	.ascii "Aquarium\0"
.LC657:
	.ascii "Toggle..\0"
.LC658:
	.ascii "toggle\0"
.LC659:
	.ascii "Sub-menu\0"
.LC660:
	.ascii "Click me\0"
.LC661:
	.ascii "Tooltip here\0"
.LC662:
	.ascii "I am a tooltip over a popup\0"
.LC663:
	.ascii "Stacked Popup\0"
.LC664:
	.ascii "another popup\0"
.LC665:
	.ascii "Popup Menu..\0"
.LC666:
	.ascii "FilePopup\0"
	.align 8
.LC667:
	.ascii "Below we are testing adding menu items to a regular window. It's rather unusual but should work!\0"
.LC668:
	.ascii "foo\0"
.LC669:
	.ascii "CTRL+M\0"
.LC670:
	.ascii "Menu item\0"
.LC671:
	.ascii "Menu inside a regular window\0"
.LC672:
	.ascii "Context menus\0"
	.align 8
.LC673:
	.ascii "Value = %.3f (<-- right-click here)\0"
.LC674:
	.ascii "item context menu\0"
.LC675:
	.ascii "Set to zero\0"
.LC676:
	.ascii "Set to PI\0"
.LC678:
	.ascii "color context menu\0"
.LC679:
	.ascii "Edit color\0"
.LC680:
	.ascii "##edit\0"
.LC681:
	.ascii "(<-- right-click here)\0"
.LC682:
	.ascii "Modals\0"
	.align 8
.LC683:
	.ascii "Modal windows are like popups but the user cannot close them by clicking outside the window.\0"
.LC684:
	.ascii "Delete..\0"
.LC685:
	.ascii "Delete?\0"
	.align 8
.LC686:
	.ascii "All those beautiful files will be deleted.\12This operation cannot be undone!\12\12\0"
.LC687:
	.ascii "Don't ask me next time\0"
.LC688:
	.ascii "OK\0"
.LC689:
	.ascii "Cancel\0"
.LC690:
	.ascii "Stacked modals..\0"
.LC691:
	.ascii "Stacked 1\0"
.LC692:
	.ascii "Hello from Stacked The First\0"
.LC693:
	.ascii "Another one..\0"
.LC694:
	.ascii "Stacked 2\0"
.LC695:
	.ascii "Hello from Stacked The Second\0"
.LC696:
	.ascii "Columns\0"
.LC697:
	.ascii "Without border:\0"
.LC698:
	.ascii "mycolumns3\0"
.LC699:
	.ascii "With border:\0"
.LC700:
	.ascii "mycolumns\0"
.LC701:
	.ascii "ID\0"
.LC702:
	.ascii "Name\0"
.LC703:
	.ascii "Path\0"
.LC704:
	.ascii "Flags\0"
.LC705:
	.ascii "One\0"
.LC706:
	.ascii "Two\0"
.LC707:
	.ascii "Three\0"
.LC708:
	.ascii "/path/one\0"
.LC709:
	.ascii "/path/two\0"
.LC710:
	.ascii "/path/three\0"
.LC711:
	.ascii "%04d\0"
.LC712:
	.ascii "....\0"
.LC713:
	.ascii "Mixed items\0"
.LC714:
	.ascii "mixed\0"
.LC715:
	.ascii "ImGui\0"
.LC716:
	.ascii "red\0"
.LC717:
	.ascii "An extra line here.\0"
.LC718:
	.ascii "blue\0"
.LC719:
	.ascii "Category A\0"
.LC720:
	.ascii "Blah blah blah\0"
.LC721:
	.ascii "Category B\0"
.LC722:
	.ascii "Category C\0"
.LC723:
	.ascii "Word-wrapping\0"
.LC724:
	.ascii "word-wrapping\0"
	.align 8
.LC725:
	.ascii "The quick brown fox jumps over the lazy dog.\0"
.LC726:
	.ascii "Hello Left\0"
.LC727:
	.ascii "Hello Right\0"
.LC728:
	.ascii "Borders\0"
.LC729:
	.ascii "horizontal\0"
.LC730:
	.ascii "vertical\0"
.LC731:
	.ascii "%c%c%c\0"
.LC732:
	.ascii "Tree within single cell\0"
	.align 8
.LC733:
	.ascii "NB: Tree node must be poped before ending the cell.\12There's no storage of state per-cell.\0"
.LC734:
	.ascii "tree items\0"
.LC735:
	.ascii "Bonjour\0"
.LC736:
	.ascii "Marin\0"
.LC737:
	.ascii "Filtering\0"
	.align 8
.LC738:
	.ascii "Filter usage:\12  \"\"         display all lines\12  \"xxx\"      display lines containing \"xxx\"\12  \"xxx,yyy\"  display lines containing \"xxx\" or \"yyy\"\12  \"-xxx\"     hide lines containing \"xxx\"\0"
.LC739:
	.ascii "Filter (inc,-exc)\0"
.LC740:
	.ascii "aaa1.c\0"
.LC741:
	.ascii "bbb1.c\0"
.LC742:
	.ascii "ccc1.c\0"
.LC743:
	.ascii "aaa2.cpp\0"
.LC744:
	.ascii "bbb2.cpp\0"
.LC745:
	.ascii "ccc2.cpp\0"
.LC746:
	.ascii "abc.h\0"
.LC747:
	.ascii "hello, world\0"
.LC748:
	.ascii "Keyboard, Mouse & Focus\0"
.LC749:
	.ascii "Tabbing\0"
	.align 8
.LC750:
	.ascii "Use TAB/SHIFT+TAB to cycle through keyboard editable fields.\0"
.LC751:
	.ascii "1\0"
.LC752:
	.ascii "2\0"
.LC753:
	.ascii "3\0"
.LC754:
	.ascii "4 (tab skip)\0"
.LC755:
	.ascii "5\0"
.LC756:
	.ascii "Focus from code\0"
.LC757:
	.ascii "Focus on 1\0"
.LC758:
	.ascii "Focus on 2\0"
.LC759:
	.ascii "Focus on 3\0"
.LC760:
	.ascii "3 (tab skip)\0"
.LC761:
	.ascii "Item with focus: %d\0"
.LC762:
	.ascii "Item with focus: <none>\0"
	.align 8
.LC763:
	.ascii "Cursor & selection are preserved when refocusing last used item in code.\0"
.LC764:
	.ascii "Dragging\0"
	.align 8
.LC765:
	.ascii "You can use ImGui::GetMouseDragDelta(0) to query for the dragged amount on any widget.\0"
.LC766:
	.ascii "Drag Me\0"
	.align 8
.LC768:
	.ascii "Raw (%.1f, %.1f), WithLockThresold (%.1f, %.1f), MouseDelta (%.1f, %.1f)\0"
.LC769:
	.ascii "Keyboard & Mouse State\0"
.LC770:
	.ascii "MousePos: (%g, %g)\0"
.LC771:
	.ascii "Mouse down:\0"
.LC772:
	.ascii "b%d (%.02f secs)\0"
.LC773:
	.ascii "Mouse clicked:\0"
.LC774:
	.ascii "b%d\0"
.LC775:
	.ascii "Mouse dbl-clicked:\0"
.LC776:
	.ascii "Mouse released:\0"
.LC777:
	.ascii "MouseWheel: %.1f\0"
.LC778:
	.ascii "Keys down:\0"
.LC779:
	.ascii "%d (%.02f secs)\0"
.LC780:
	.ascii "Keys pressed:\0"
.LC781:
	.ascii "Keys release:\0"
.LC782:
	.ascii "KeyMods: %s%s%s%s\0"
.LC783:
	.ascii "WantCaptureMouse: %s\0"
.LC784:
	.ascii "WantCaptureKeyboard: %s\0"
.LC785:
	.ascii "WantTextInput: %s\0"
	.align 8
.LC786:
	.ascii "Hovering me sets the\12keyboard capture flag\0"
	.align 8
.LC787:
	.ascii "Holding me clears the\12the keyboard capture flag\0"
.LC788:
	.ascii "Mouse cursors\0"
	.align 8
.LC789:
	.ascii "Your application can render a different mouse cursor based on what ImGui::GetMouseCursor() returns. You can also set io.MouseDrawCursor to ask ImGui to render the cursor for you in software.\0"
.LC790:
	.ascii "io.MouseDrawCursor\0"
.LC791:
	.ascii "Hover to see mouse cursors:\0"
.LC792:
	.ascii "Mouse cursor %d\0"
.LC4:
	.ascii "EEEE\0"
.LC5:
	.ascii "FFFF\0"
.LC6:
	.ascii "GGGG\0"
.LC7:
	.ascii "HHHH\0"
.LC8:
	.ascii "IIII\0"
.LC9:
	.ascii "JJJJ\0"
.LC10:
	.ascii "KKKK\0"
	.data
	.align 32
.LC449:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.section .rdata,"dr"
.LC14:
	.ascii "Cherry\0"
.LC15:
	.ascii "Kiwi\0"
.LC16:
	.ascii "Mango\0"
.LC17:
	.ascii "Orange\0"
.LC18:
	.ascii "Pineapple\0"
.LC19:
	.ascii "Strawberry\0"
.LC20:
	.ascii "Watermelon\0"
	.data
	.align 32
.LC478:
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.section .rdata,"dr"
.LC294:
	.ascii "|/-\\\0"
	.text
	.p2align 4,,15
	.globl	_ZN5ImGui14ShowTestWindowEPb
	.def	_ZN5ImGui14ShowTestWindowEPb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5ImGui14ShowTestWindowEPb
_ZN5ImGui14ShowTestWindowEPb:
.LFB180:
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
	subq	$648, %rsp
	.seh_stackalloc	648
	movaps	%xmm6, 496(%rsp)
	.seh_savexmm	%xmm6, 496
	movaps	%xmm7, 512(%rsp)
	.seh_savexmm	%xmm7, 512
	movaps	%xmm8, 528(%rsp)
	.seh_savexmm	%xmm8, 528
	movaps	%xmm9, 544(%rsp)
	.seh_savexmm	%xmm9, 544
	movaps	%xmm10, 560(%rsp)
	.seh_savexmm	%xmm10, 560
	movaps	%xmm11, 576(%rsp)
	.seh_savexmm	%xmm11, 576
	movaps	%xmm12, 592(%rsp)
	.seh_savexmm	%xmm12, 592
	movaps	%xmm13, 608(%rsp)
	.seh_savexmm	%xmm13, 608
	movaps	%xmm14, 624(%rsp)
	.seh_savexmm	%xmm14, 624
	.seh_endprologue
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE22show_app_main_menu_bar(%rip)
	movq	%rcx, 720(%rsp)
	jne	.L1869
.L620:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE16show_app_console(%rip)
	jne	.L1870
.L624:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE12show_app_log(%rip)
	leaq	368(%rsp), %r15
	jne	.L1871
.L644:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE15show_app_layout(%rip)
	jne	.L1872
.L674:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE24show_app_property_editor(%rip)
	jne	.L1873
.L681:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE18show_app_long_text(%rip)
	jne	.L1874
.L745:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE20show_app_auto_resize(%rip)
	jne	.L1875
.L777:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE27show_app_constrained_resize(%rip)
	jne	.L1876
.L783:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE22show_app_fixed_overlay(%rip)
	jne	.L1877
.L795:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE34show_app_manipulating_window_title(%rip)
	jne	.L1878
.L797:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE25show_app_custom_rendering(%rip)
	jne	.L1879
.L798:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE16show_app_metrics(%rip)
	jne	.L1880
.L844:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE21show_app_style_editor(%rip)
	jne	.L1881
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE14show_app_about(%rip)
	jne	.L1882
.L846:
	movzbl	_ZZN5ImGui14ShowTestWindowEPbE11no_titlebar(%rip), %ebx
	movl	$4, %edx
	movq	%r15, %rcx
	movl	$0x44098000, 368(%rsp)
	movl	$0x442a0000, 372(%rsp)
	movl	%ebx, %eax
	orb	$-128, %al
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE9no_border(%rip)
	cmove	%eax, %ebx
	movl	%ebx, %eax
	orl	$2, %eax
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE9no_resize(%rip)
	cmovne	%eax, %ebx
	movl	%ebx, %eax
	orl	$4, %eax
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE7no_move(%rip)
	cmovne	%eax, %ebx
	movl	%ebx, %eax
	orl	$8, %eax
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE12no_scrollbar(%rip)
	cmovne	%eax, %ebx
	movl	%ebx, %eax
	orl	$32, %eax
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE11no_collapse(%rip)
	cmovne	%eax, %ebx
	movl	%ebx, %eax
	orb	$4, %ah
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE7no_menu(%rip)
	cmove	%eax, %ebx
.LEHB15:
	call	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
	movq	720(%rsp), %rdx
	leaq	.LC321(%rip), %rcx
	movl	%ebx, %r8d
	call	_ZN5ImGui5BeginEPKcPbi
	testb	%al, %al
	je	.L1087
	movss	.LC322(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	.LC323(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui12BeginMenuBarEv
	testb	%al, %al
	jne	.L1883
.L854:
	.p2align 4,,6
	call	_ZN5ImGui7SpacingEv
	leaq	.LC336(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	jne	.L1884
.L858:
	leaq	.LC339(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	jne	.L1885
.L861:
	leaq	.LC350(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	je	.L864
	leaq	.LC351(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1886
.L865:
	leaq	.LC364(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1887
.L880:
	leaq	.LC370(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1888
.L887:
	leaq	.LC375(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1889
.L888:
	leaq	.LC378(%rip), %rcx
	leaq	288(%rsp), %rbp
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1890
.L889:
	leaq	.LC386(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1891
.L890:
	leaq	.LC391(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1842
	xorps	%xmm6, %xmm6
	leaq	256(%rsp), %rbx
.L891:
	leaq	.LC400(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1892
.L898:
	leaq	.LC416(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1893
.L916:
	leaq	.LC427(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1894
.L918:
	leaq	.LC374(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L920
	movzbl	_ZZN5ImGui14ShowTestWindowEPbE1a(%rip), %eax
.L921:
	testb	%al, %al
	jne	.L1895
.L922:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5check(%rip), %rdx
	leaq	.LC432(%rip), %rcx
	xorl	%esi, %esi
	call	_ZN5ImGui8CheckboxEPKcPb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE1e(%rip), %rdx
	leaq	.LC433(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui11RadioButtonEPKcPii
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui14ShowTestWindowEPbE1e(%rip), %rdx
	leaq	.LC434(%rip), %rcx
	movl	$1, %r8d
	call	_ZN5ImGui11RadioButtonEPKcPii
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui14ShowTestWindowEPbE1e(%rip), %rdx
	leaq	.LC435(%rip), %rcx
	movl	$2, %r8d
	call	_ZN5ImGui11RadioButtonEPKcPii
	movss	.LC437(%rip), %xmm9
	movss	.LC436(%rip), %xmm8
	movaps	%xmm9, %xmm11
	movss	.LC438(%rip), %xmm10
	jmp	.L923
	.p2align 4,,7
.L924:
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
.L923:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	cvtsi2ss	%esi, %xmm7
	movq	%rbx, %r9
	movaps	%xmm9, %xmm2
	movq	%r15, 40(%rsp)
	movaps	%xmm11, %xmm1
	movq	%rbp, 32(%rsp)
	incl	%esi
	divss	%xmm8, %xmm7
	movaps	%xmm7, %xmm0
	call	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	movss	256(%rsp), %xmm1
	movq	%r15, %rdx
	movss	368(%rsp), %xmm0
	movl	$22, %ecx
	movss	%xmm1, 368(%rsp)
	movl	$0x3f800000, 380(%rsp)
	movss	288(%rsp), %xmm1
	movss	%xmm1, 372(%rsp)
	movss	%xmm0, 376(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movaps	%xmm10, %xmm2
	movq	%rbx, %r9
	movaps	%xmm7, %xmm0
	movq	%r15, 40(%rsp)
	movss	.LC438(%rip), %xmm1
	movq	%rbp, 32(%rsp)
	call	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	movss	256(%rsp), %xmm1
	movq	%r15, %rdx
	movss	368(%rsp), %xmm0
	movl	$23, %ecx
	movss	%xmm1, 368(%rsp)
	movl	$0x3f800000, 380(%rsp)
	movss	288(%rsp), %xmm1
	movss	%xmm1, 372(%rsp)
	movss	%xmm0, 376(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movss	.LC439(%rip), %xmm2
	movq	%rbx, %r9
	movaps	%xmm2, %xmm1
	movq	%r15, 40(%rsp)
	movaps	%xmm7, %xmm0
	movq	%rbp, 32(%rsp)
	call	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	movss	256(%rsp), %xmm1
	movq	%r15, %rdx
	movss	368(%rsp), %xmm0
	movl	$24, %ecx
	movss	%xmm1, 368(%rsp)
	movl	$0x3f800000, 380(%rsp)
	movss	288(%rsp), %xmm1
	movss	%xmm1, 372(%rsp)
	movss	%xmm0, 376(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	leaq	.LC440(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movl	$3, %ecx
	call	_ZN5ImGui13PopStyleColorEi
	call	_ZN5ImGui5PopIDEv
	cmpl	$7, %esi
	jne	.L924
	leaq	.LC441(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L1896
.L925:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC443(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L1897
.L926:
	.p2align 4,,6
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC48(%rip), %rdx
	leaq	.LC446(%rip), %rcx
	movq	%r15, %rdi
	leaq	.LC449(%rip), %rsi
	leaq	368(%rsp), %r15
	call	_ZN5ImGui9LabelTextEPKcS1_z
	leaq	.LC447(%rip), %r8
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4item(%rip), %rdx
	leaq	.LC448(%rip), %rcx
	movl	$-1, %r9d
	call	_ZN5ImGui5ComboEPKcPiS1_i
	movl	$11, %ecx
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5item2(%rip), %rdx
	movl	$11, %r9d
	rep movsq
	leaq	.LC450(%rip), %rcx
	movq	%r15, %r8
	movl	$-1, 32(%rsp)
	call	_ZN5ImGui5ComboEPKcPiPKS1_ii
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4str0(%rip), %rdx
	leaq	.LC451(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$128, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L1898
.L927:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2i0(%rip), %rdx
	leaq	.LC453(%rip), %rcx
	movl	$100, %r9d
	movl	$1, %r8d
	movl	$0, 32(%rsp)
	call	_ZN5ImGui8InputIntEPKcPiiii
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L1899
.L928:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2f0(%rip), %rdx
	leaq	.LC455(%rip), %rcx
	movl	$0, 40(%rsp)
	movss	.LC22(%rip), %xmm3
	movl	$-1, 32(%rsp)
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui10InputFloatEPKcPfffii
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4a(%rip), %rdx
	leaq	.LC456(%rip), %rcx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	call	_ZN5ImGui11InputFloat3EPKcPfii
	leaq	.LC95(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2i1(%rip), %rdx
	leaq	.LC457(%rip), %rcx
	xorl	%r9d, %r9d
	movss	.LC22(%rip), %xmm2
	movq	%rax, 40(%rsp)
	movl	$0, 32(%rsp)
	call	_ZN5ImGui7DragIntEPKcPifiiS1_
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L1900
.L929:
	leaq	.LC460(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2i2(%rip), %rdx
	leaq	.LC459(%rip), %rcx
	xorl	%r9d, %r9d
	movss	.LC22(%rip), %xmm2
	movq	%rax, 40(%rsp)
	movl	$100, 32(%rsp)
	call	_ZN5ImGui7DragIntEPKcPifiiS1_
	leaq	.LC49(%rip), %rax
	movaps	%xmm6, %xmm3
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2f1(%rip), %rdx
	leaq	.LC461(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movss	.LC92(%rip), %xmm2
	movq	%rax, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	leaq	.LC463(%rip), %rax
	movaps	%xmm6, %xmm3
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2f2(%rip), %rdx
	leaq	.LC462(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movss	.LC464(%rip), %xmm2
	movq	%rax, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	leaq	.LC95(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2i1_0(%rip), %rdx
	leaq	.LC465(%rip), %rcx
	movl	$3, %r9d
	movl	$-1, %r8d
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui9SliderIntEPKcPiiiS1_
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L1901
.L930:
	movss	.LC22(%rip), %xmm7
	leaq	.LC468(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2f1_0(%rip), %rdx
	xorps	%xmm2, %xmm2
	leaq	.LC467(%rip), %rcx
	movaps	%xmm7, %xmm3
	movss	%xmm7, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	leaq	.LC470(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2f2_0(%rip), %rdx
	leaq	.LC469(%rip), %rcx
	movss	.LC105(%rip), %xmm3
	movl	$0x40400000, 40(%rsp)
	movss	.LC471(%rip), %xmm2
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5angle(%rip), %rdx
	leaq	.LC472(%rip), %rcx
	movss	.LC473(%rip), %xmm3
	movss	.LC474(%rip), %xmm2
	call	_ZN5ImGui11SliderAngleEPKcPfff
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4col1(%rip), %rdx
	leaq	.LC475(%rip), %rcx
	call	_ZN5ImGui10ColorEdit3EPKcPf
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L1902
.L931:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4col2(%rip), %rdx
	leaq	.LC477(%rip), %rcx
	movl	$1, %r8d
	leaq	.LC478(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZN5ImGui10ColorEdit4EPKcPfb
	movl	$9, %ecx
	leaq	288(%rsp), %r8
	leaq	_ZZN5ImGui14ShowTestWindowEPbE20listbox_item_current(%rip), %rdx
	rep movsq
	leaq	.LC479(%rip), %rcx
	movl	$9, %r9d
	movl	$4, 32(%rsp)
	call	_ZN5ImGui7ListBoxEPKcPiPKS1_ii
	leaq	.LC480(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1903
.L932:
	leaq	.LC489(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1904
.L933:
	leaq	.LC507(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1905
.L864:
	leaq	.LC519(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	je	.L945
	leaq	_ZZN5ImGui14ShowTestWindowEPbE7animate(%rip), %rdx
	leaq	.LC520(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3arr_0(%rip), %rdx
	leaq	.LC521(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$4, 64(%rsp)
	movq	$0, 56(%rsp)
	movl	$7, %r8d
	movl	$0x7f7fffff, 48(%rsp)
	movl	$0x7f7fffff, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE7animate(%rip)
	je	.L946
	cmpb	$0, _ZGVZN5ImGui14ShowTestWindowEPbE12refresh_time(%rip)
	je	.L1906
.L948:
	movss	.LC522(%rip), %xmm8
	movl	$-1240768329, %ebx
	movss	.LC25(%rip), %xmm9
	jmp	.L951
	.p2align 4,,7
.L1907:
	movl	_ZZN5ImGui14ShowTestWindowEPbE13values_offset(%rip), %esi
	movss	_ZZN5ImGui14ShowTestWindowEPbE5phase(%rip), %xmm6
	movaps	%xmm6, %xmm0
	call	cosf
	leal	1(%rsi), %ecx
	leaq	_ZZN5ImGui14ShowTestWindowEPbE6values_0(%rip), %rax
	movslq	%esi, %rdx
	movl	$90, %r8d
	movss	%xmm7, _ZZN5ImGui14ShowTestWindowEPbE12refresh_time(%rip)
	movss	%xmm0, (%rax,%rdx,4)
	movl	%ecx, %eax
	imull	%ebx
	movl	%ecx, %eax
	sarl	$31, %eax
	addl	%ecx, %edx
	sarl	$6, %edx
	subl	%eax, %edx
	imull	%r8d, %edx
	subl	%edx, %ecx
	cvtsi2ss	%ecx, %xmm0
	movl	%ecx, _ZZN5ImGui14ShowTestWindowEPbE13values_offset(%rip)
	mulss	%xmm9, %xmm0
	addss	%xmm0, %xmm6
	movss	%xmm6, _ZZN5ImGui14ShowTestWindowEPbE5phase(%rip)
.L951:
	call	_ZN5ImGui7GetTimeEv
	movss	_ZZN5ImGui14ShowTestWindowEPbE12refresh_time(%rip), %xmm7
	addss	%xmm8, %xmm7
	ucomiss	%xmm7, %xmm0
	ja	.L1907
.L946:
	leaq	.LC525(%rip), %rax
	movss	.LC65(%rip), %xmm7
	movl	_ZZN5ImGui14ShowTestWindowEPbE13values_offset(%rip), %r9d
	xorps	%xmm6, %xmm6
	movabsq	$4800837202776948736, %rsi
	leaq	_ZZN5ImGui14ShowTestWindowEPbE6values_0(%rip), %rdx
	leaq	.LC524(%rip), %rcx
	movss	%xmm7, 40(%rsp)
	movq	%rax, 32(%rsp)
	movl	$90, %r8d
	movl	$4, 64(%rsp)
	movq	%rsi, 56(%rsp)
	leaq	_ZZN5ImGui14ShowTestWindowEPbEN5Funcs3SinEPvi(%rip), %rbx
	movl	$0x3f800000, 48(%rsp)
	call	_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3arr_0(%rip), %rdx
	leaq	.LC526(%rip), %rcx
	movss	%xmm6, 40(%rsp)
	xorl	%r9d, %r9d
	movl	$7, %r8d
	movl	$4, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movl	$0x3f800000, 48(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i
	call	_ZN5ImGui9SeparatorEv
	movss	.LC84(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	.LC527(%rip), %r8
	leaq	_ZZN5ImGui14ShowTestWindowEPbE9func_type(%rip), %rdx
	leaq	.LC528(%rip), %rcx
	movl	$-1, %r9d
	call	_ZN5ImGui5ComboEPKcPiS1_i
	call	_ZN5ImGui12PopItemWidthEv
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC95(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE13display_count(%rip), %rdx
	leaq	.LC529(%rip), %rcx
	movl	$400, %r9d
	movl	$1, %r8d
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui9SliderIntEPKcPiiiS1_
	movl	_ZZN5ImGui14ShowTestWindowEPbE9func_type(%rip), %eax
	movl	_ZZN5ImGui14ShowTestWindowEPbE13display_count(%rip), %r9d
	leaq	.LC524(%rip), %rcx
	movss	%xmm7, 48(%rsp)
	movq	%rsi, 64(%rsp)
	movl	$0x3f800000, 56(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	testl	%eax, %eax
	leaq	_ZZN5ImGui14ShowTestWindowEPbEN5Funcs3SawEPvi(%rip), %rax
	cmovne	%rax, %rbx
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	call	_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2
	movl	_ZZN5ImGui14ShowTestWindowEPbE13display_count(%rip), %r9d
	leaq	.LC526(%rip), %rcx
	movss	%xmm7, 48(%rsp)
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rsi, 64(%rsp)
	movl	$0x3f800000, 56(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	call	_ZN5ImGui13PlotHistogramEPKcPFfPviES2_iiS1_ff6ImVec2
	call	_ZN5ImGui9SeparatorEv
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE7animate(%rip)
	jne	.L953
	movss	_ZZN5ImGui14ShowTestWindowEPbE8progress(%rip), %xmm0
.L954:
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui11ProgressBarEfRK6ImVec2PKc
	call	_ZN5ImGui8GetStyleEv
	movaps	%xmm6, %xmm0
	movss	56(%rax), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC530(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movss	_ZZN5ImGui14ShowTestWindowEPbE8progress(%rip), %xmm0
	xorl	%r8d, %r8d
	ucomiss	%xmm0, %xmm6
	ja	.L958
	ucomiss	.LC22(%rip), %xmm0
	movl	$1753, %r8d
	jbe	.L1908
.L958:
	leaq	.LC532(%rip), %rdx
	leaq	288(%rsp), %rbp
	movl	$1753, %r9d
	movq	%r15, %rcx
	call	sprintf
	movq	%r15, %r8
	movq	%rbp, %rdx
	movl	$0x00000000, 288(%rsp)
	movss	_ZZN5ImGui14ShowTestWindowEPbE8progress(%rip), %xmm0
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui11ProgressBarEfRK6ImVec2PKc
.L945:
	leaq	.LC533(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	jne	.L1909
.L960:
	leaq	.LC646(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	jne	.L1910
.L1022:
	leaq	.LC696(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	jne	.L1911
.L1062:
	leaq	.LC737(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	je	.L1080
	cmpb	$0, _ZGVZN5ImGui14ShowTestWindowEPbE6filter(%rip)
	jne	.L1082
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE6filter(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	jne	.L1912
.L1082:
	leaq	.LC738(%rip), %rcx
	movq	%r15, %rbx
	leaq	64(%r15), %rdi
	call	_ZN5ImGui4TextEPKcz
	xorps	%xmm2, %xmm2
	leaq	.LC739(%rip), %rdx
	leaq	_ZZN5ImGui14ShowTestWindowEPbE6filter(%rip), %rcx
	call	_ZN15ImGuiTextFilter4DrawEPKcf
	leaq	.LC740(%rip), %rax
	movq	%rax, 368(%rsp)
	leaq	.LC741(%rip), %rax
	movq	%rax, 376(%rsp)
	leaq	.LC742(%rip), %rax
	movq	%rax, 384(%rsp)
	leaq	.LC743(%rip), %rax
	movq	%rax, 392(%rsp)
	leaq	.LC744(%rip), %rax
	movq	%rax, 400(%rsp)
	leaq	.LC745(%rip), %rax
	movq	%rax, 408(%rsp)
	leaq	.LC746(%rip), %rax
	movq	%rax, 416(%rsp)
	leaq	.LC747(%rip), %rax
	movq	%rax, 424(%rsp)
	jmp	.L1085
	.p2align 4,,7
.L1084:
	addq	$8, %rbx
	cmpq	%rdi, %rbx
	je	.L1080
.L1085:
	movq	(%rbx), %rsi
	leaq	_ZZN5ImGui14ShowTestWindowEPbE6filter(%rip), %rcx
	xorl	%r8d, %r8d
	movq	%rsi, %rdx
	call	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_
	testb	%al, %al
	je	.L1084
	leaq	.LC167(%rip), %rcx
	movq	%rsi, %rdx
	addq	$8, %rbx
	call	_ZN5ImGui10BulletTextEPKcz
	cmpq	%rdi, %rbx
	jne	.L1085
.L1080:
	leaq	.LC748(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	jne	.L1913
.L1087:
	call	_ZN5ImGui3EndEv
	nop
	movaps	496(%rsp), %xmm6
	movaps	512(%rsp), %xmm7
	movaps	528(%rsp), %xmm8
	movaps	544(%rsp), %xmm9
	movaps	560(%rsp), %xmm10
	movaps	576(%rsp), %xmm11
	movaps	592(%rsp), %xmm12
	movaps	608(%rsp), %xmm13
	movaps	624(%rsp), %xmm14
	addq	$648, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L1881:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE21show_app_style_editor(%rip), %rdx
	leaq	.LC314(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui5BeginEPKcPbi
	xorl	%ecx, %ecx
	call	_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle
	call	_ZN5ImGui3EndEv
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE14show_app_about(%rip)
	je	.L846
.L1882:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE14show_app_about(%rip), %rdx
	leaq	.LC315(%rip), %rcx
	movl	$64, %r8d
	call	_ZN5ImGui5BeginEPKcPbi
	call	_ZN5ImGui10GetVersionEv
	leaq	.LC316(%rip), %rcx
	movq	%rax, %rdx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC317(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC318(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui3EndEv
	jmp	.L846
.L1880:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE16show_app_metrics(%rip), %rcx
	call	_ZN5ImGui17ShowMetricsWindowEPb
	jmp	.L844
.L1879:
	movl	$4, %edx
	movq	%r15, %rcx
	movl	$0x43af0000, 368(%rsp)
	movl	$0x440c0000, 372(%rsp)
	call	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
	leaq	_ZZN5ImGui14ShowTestWindowEPbE25show_app_custom_rendering(%rip), %rdx
	leaq	.LC299(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui5BeginEPKcPbi
	testb	%al, %al
	je	.L836
	call	_ZN5ImGui17GetWindowDrawListEv
	leaq	.LC300(%rip), %rcx
	movq	%rax, %rdi
	call	_ZN5ImGui4TextEPKcz
	cmpb	$0, _ZGVZL29ShowExampleAppCustomRenderingPbE3col(%rip)
	jne	.L801
	leaq	_ZGVZL29ShowExampleAppCustomRenderingPbE3col(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	jne	.L1914
.L801:
	leaq	.LC95(%rip), %rax
	leaq	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %rdx
	leaq	.LC301(%rip), %rcx
	movss	.LC91(%rip), %xmm2
	movl	$0x3f800000, 48(%rsp)
	movss	.LC86(%rip), %xmm3
	movq	%rax, 40(%rsp)
	movl	$0x42900000, 32(%rsp)
	leaq	288(%rsp), %rbp
	leaq	240(%rsp), %rsi
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	leaq	_ZZL29ShowExampleAppCustomRenderingPbE3col(%rip), %rdx
	leaq	.LC303(%rip), %rcx
	xorl	%r13d, %r13d
	movq	%rdi, %r14
	call	_ZN5ImGui10ColorEdit3EPKcPf
	call	_ZN5ImGui18GetCursorScreenPosEv
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE3col(%rip), %rdx
	movl	%eax, 80(%rsp)
	movq	%rax, %rbx
	movq	_ZZL29ShowExampleAppCustomRenderingPbE3col(%rip), %rax
	shrq	$32, %rbx
	movq	%r15, %rcx
	movss	80(%rsp), %xmm7
	movq	%rdx, 376(%rsp)
	movq	%rax, 368(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movq	%rbx, 80(%rsp)
	movss	.LC187(%rip), %xmm11
	movss	80(%rsp), %xmm14
	addss	%xmm11, %xmm7
	addss	%xmm11, %xmm14
	leaq	256(%rsp), %rbx
	movl	%eax, %r12d
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm2
	movss	.LC24(%rip), %xmm10
	movss	.LC304(%rip), %xmm8
	movss	.LC142(%rip), %xmm13
	movss	.LC305(%rip), %xmm12
.L804:
	testl	%r13d, %r13d
	je	.L1915
	movaps	%xmm11, %xmm9
.L803:
	mulss	%xmm10, %xmm2
	movaps	%xmm7, %xmm0
	movss	%xmm9, 40(%rsp)
	movl	%r12d, %r9d
	movq	%r15, %rdx
	movq	%r14, %rcx
	movl	$20, 32(%rsp)
	incl	%r13d
	addss	%xmm2, %xmm0
	movss	%xmm0, 368(%rsp)
	movaps	%xmm2, %xmm0
	addss	%xmm14, %xmm0
	movss	%xmm0, 372(%rsp)
	call	_ZN10ImDrawList9AddCircleERK6ImVec2fjif
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm0
	movl	%r12d, %r9d
	movaps	%xmm0, %xmm6
	movss	%xmm9, 48(%rsp)
	movaps	%xmm0, %xmm1
	movq	%rbp, %r8
	addss	%xmm8, %xmm6
	movq	%r15, %rdx
	movq	%r14, %rcx
	addss	%xmm14, %xmm0
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	movss	%xmm14, 372(%rsp)
	addss	%xmm7, %xmm6
	movss	%xmm0, 292(%rsp)
	addss	%xmm6, %xmm1
	movss	%xmm6, 368(%rsp)
	movss	%xmm1, 288(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm1
	movl	%r12d, %r9d
	movaps	%xmm1, %xmm0
	movss	%xmm9, 48(%rsp)
	movq	%rbp, %r8
	movq	%r15, %rdx
	movq	%r14, %rcx
	addss	%xmm8, %xmm0
	movl	$-1, 40(%rsp)
	movss	%xmm14, 372(%rsp)
	movl	$0x41200000, 32(%rsp)
	addss	%xmm0, %xmm6
	movaps	%xmm1, %xmm0
	addss	%xmm14, %xmm1
	addss	%xmm6, %xmm0
	movss	%xmm6, 368(%rsp)
	movss	%xmm1, 292(%rsp)
	movss	%xmm0, 288(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm0
	movq	%rbx, %r9
	movaps	%xmm0, %xmm1
	movss	%xmm9, 40(%rsp)
	movaps	%xmm0, %xmm2
	movq	%rbp, %r8
	addss	%xmm8, %xmm1
	movq	%r15, %rdx
	movq	%r14, %rcx
	movl	%r12d, 32(%rsp)
	movss	%xmm14, 372(%rsp)
	addss	%xmm1, %xmm6
	movaps	%xmm0, %xmm1
	mulss	%xmm10, %xmm0
	addss	%xmm14, %xmm1
	addss	%xmm6, %xmm2
	movss	%xmm6, 256(%rsp)
	addss	%xmm6, %xmm0
	subss	%xmm10, %xmm1
	movss	%xmm2, 288(%rsp)
	movss	%xmm0, 368(%rsp)
	movss	%xmm1, 260(%rsp)
	movss	%xmm1, 292(%rsp)
	call	_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm1
	movl	%r12d, %r9d
	movaps	%xmm1, %xmm0
	movss	%xmm9, 32(%rsp)
	movq	%rbp, %r8
	movq	%r15, %rdx
	movq	%r14, %rcx
	addss	%xmm8, %xmm0
	movss	%xmm14, 292(%rsp)
	movss	%xmm14, 372(%rsp)
	addss	%xmm0, %xmm6
	addss	%xmm6, %xmm1
	movss	%xmm6, 368(%rsp)
	movss	%xmm1, 288(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm1
	movl	%r12d, %r9d
	movaps	%xmm1, %xmm0
	movss	%xmm9, 32(%rsp)
	movq	%rbp, %r8
	movq	%r15, %rdx
	movq	%r14, %rcx
	addss	%xmm8, %xmm0
	movss	%xmm14, 372(%rsp)
	addss	%xmm0, %xmm6
	movaps	%xmm1, %xmm0
	addss	%xmm14, %xmm1
	addss	%xmm6, %xmm0
	movss	%xmm6, 368(%rsp)
	movss	%xmm1, 292(%rsp)
	movss	%xmm0, 288(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm1
	movl	%r12d, %r9d
	movaps	%xmm1, %xmm0
	movss	%xmm9, 32(%rsp)
	addss	%xmm14, %xmm1
	movq	%rbp, %r8
	movq	%r15, %rdx
	addss	%xmm8, %xmm0
	movq	%r14, %rcx
	movss	%xmm14, 372(%rsp)
	movss	%xmm1, 292(%rsp)
	addss	%xmm0, %xmm6
	movss	%xmm6, 288(%rsp)
	movss	%xmm6, 368(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	addss	%xmm8, %xmm6
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm1
	movaps	%xmm1, %xmm3
	movss	%xmm9, 48(%rsp)
	movaps	%xmm1, %xmm2
	movl	$0, 56(%rsp)
	addss	%xmm14, %xmm3
	movl	%r12d, 40(%rsp)
	movq	%rbx, %r9
	movaps	%xmm6, %xmm4
	mulss	%xmm13, %xmm2
	movq	%rsi, 32(%rsp)
	movq	%rbp, %r8
	movq	%r15, %rdx
	addss	%xmm1, %xmm4
	mulss	%xmm12, %xmm1
	movq	%r14, %rcx
	movss	%xmm3, 244(%rsp)
	subss	%xmm2, %xmm3
	movss	%xmm14, 372(%rsp)
	addss	%xmm14, %xmm2
	movss	%xmm6, 368(%rsp)
	movss	%xmm4, 240(%rsp)
	subss	%xmm1, %xmm4
	addss	%xmm6, %xmm1
	movss	%xmm3, 260(%rsp)
	movss	%xmm2, 292(%rsp)
	movss	%xmm4, 256(%rsp)
	movss	%xmm1, 288(%rsp)
	call	_ZN10ImDrawList14AddBezierCurveERK6ImVec2S2_S2_S2_jfi
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm2
	cmpl	$2, %r13d
	movaps	%xmm2, %xmm0
	addss	%xmm8, %xmm0
	addss	%xmm0, %xmm14
	jne	.L804
	mulss	%xmm10, %xmm2
	movaps	%xmm7, %xmm0
	movl	%r12d, %r9d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movl	$32, 32(%rsp)
	movq	%r14, %rdi
	leaq	208(%rsp), %r13
	addss	%xmm2, %xmm0
	movss	%xmm0, 368(%rsp)
	movaps	%xmm14, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 372(%rsp)
	call	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm0
	movl	%r12d, %r9d
	movaps	%xmm0, %xmm6
	movq	%r14, %rcx
	movaps	%xmm0, %xmm1
	movq	%rbp, %r8
	addss	%xmm8, %xmm6
	movq	%r15, %rdx
	movl	$-1, 40(%rsp)
	addss	%xmm14, %xmm0
	movl	$0x00000000, 32(%rsp)
	movss	%xmm14, 372(%rsp)
	addss	%xmm6, %xmm7
	movss	%xmm0, 292(%rsp)
	addss	%xmm7, %xmm1
	movss	%xmm7, 368(%rsp)
	movss	%xmm1, 288(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm0
	movl	%r12d, %r9d
	movaps	%xmm0, %xmm6
	movq	%r14, %rcx
	movaps	%xmm0, %xmm1
	movq	%rbp, %r8
	addss	%xmm8, %xmm6
	movq	%r15, %rdx
	movl	$-1, 40(%rsp)
	addss	%xmm14, %xmm0
	movl	$0x41200000, 32(%rsp)
	movss	%xmm14, 372(%rsp)
	addss	%xmm6, %xmm7
	movss	%xmm0, 292(%rsp)
	addss	%xmm7, %xmm1
	movss	%xmm7, 368(%rsp)
	movss	%xmm1, 288(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm0
	movq	%rbx, %r9
	movaps	%xmm0, %xmm6
	movq	%rbp, %r8
	movaps	%xmm14, %xmm1
	movq	%r15, %rdx
	addss	%xmm8, %xmm6
	movaps	%xmm0, %xmm2
	addss	%xmm0, %xmm1
	mulss	%xmm10, %xmm0
	movq	%r14, %rcx
	movl	%r12d, 32(%rsp)
	movss	%xmm14, 372(%rsp)
	leaq	224(%rsp), %r12
	addss	%xmm7, %xmm6
	subss	%xmm10, %xmm1
	addss	%xmm6, %xmm2
	movss	%xmm6, 256(%rsp)
	addss	%xmm6, %xmm0
	movss	%xmm1, 260(%rsp)
	movss	%xmm1, 292(%rsp)
	movss	%xmm2, 288(%rsp)
	movss	%xmm0, 368(%rsp)
	call	_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm0
	movq	%rsi, %rcx
	addss	%xmm8, %xmm0
	movl	$0x00000000, 248(%rsp)
	movl	$0x00000000, 240(%rsp)
	movl	$0x3f800000, 244(%rsp)
	movl	$0x3f800000, 252(%rsp)
	addss	%xmm0, %xmm6
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movq	%rbx, %rcx
	movl	%eax, 96(%rsp)
	movl	$0x00000000, 264(%rsp)
	movl	$0x3f800000, 256(%rsp)
	movl	$0x3f800000, 260(%rsp)
	movl	$0x3f800000, 268(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movq	%rbp, %rcx
	movl	%eax, 80(%rsp)
	movl	$0x00000000, 296(%rsp)
	movl	$0x00000000, 292(%rsp)
	movl	$0x3f800000, 288(%rsp)
	movl	$0x3f800000, 300(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movq	%r15, %rcx
	movl	%eax, %r14d
	movl	$0x00000000, 376(%rsp)
	movl	$0x00000000, 372(%rsp)
	movl	$0x00000000, 368(%rsp)
	movl	$0x3f800000, 380(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movaps	%xmm6, %xmm1
	movl	96(%rsp), %edx
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm0
	movl	80(%rsp), %r8d
	addss	%xmm0, %xmm1
	movl	%eax, %r9d
	movq	%rdi, %rcx
	addss	%xmm14, %xmm0
	movl	%edx, 48(%rsp)
	movl	%r14d, 32(%rsp)
	movq	%r12, %rdx
	movl	%r8d, 40(%rsp)
	movq	%r13, %r8
	movss	%xmm6, 224(%rsp)
	movss	%xmm1, 208(%rsp)
	movss	%xmm0, 212(%rsp)
	movss	%xmm14, 228(%rsp)
	call	_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj
	movss	_ZZL29ShowExampleAppCustomRenderingPbE2sz(%rip), %xmm0
	movq	%r15, %rcx
	addss	%xmm8, %xmm0
	mulss	%xmm0, %xmm8
	mulss	.LC306(%rip), %xmm0
	movss	%xmm8, 368(%rsp)
	movss	%xmm0, 372(%rsp)
	call	_ZN5ImGui5DummyERK6ImVec2
	call	_ZN5ImGui9SeparatorEv
	cmpb	$0, _ZGVZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	je	.L1916
.L806:
	leaq	.LC307(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC181(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	je	.L808
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rcx
	testq	%rcx, %rcx
	je	.L808
	movl	$0, 4+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	movl	$0, _ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
.L808:
	cmpl	$1, _ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	jle	.L810
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC220(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L1917
.L810:
	leaq	.LC308(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui18GetCursorScreenPosEv
	movq	%rax, 192(%rsp)
	call	_ZN5ImGui21GetContentRegionAvailEv
	movss	.LC309(%rip), %xmm0
	movq	%rax, 208(%rsp)
	ucomiss	208(%rsp), %xmm0
	jbe	.L814
	movss	%xmm0, 208(%rsp)
.L814:
	ucomiss	212(%rsp), %xmm0
	jbe	.L816
	movl	$0x42480000, 212(%rsp)
.L816:
	movq	%rsi, %rcx
	movl	$0x3e48c8ca, 240(%rsp)
	movl	$0x3e48c8ca, 244(%rsp)
	movl	$0x3e70f0f2, 248(%rsp)
	movl	$0x3f800000, 252(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movq	%rbx, %rcx
	movl	%eax, 80(%rsp)
	movl	$0x3e70f0f2, 256(%rsp)
	movl	$0x3e70f0f2, 260(%rsp)
	movl	$0x3e8c8c8d, 264(%rsp)
	leaq	192(%rsp), %rbx
	movl	$0x3f800000, 268(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movq	%rbp, %rcx
	movl	%eax, %r14d
	movl	$0x3e48c8ca, 288(%rsp)
	movl	$0x3e48c8ca, 292(%rsp)
	movl	$0x3e70f0f2, 296(%rsp)
	movl	$0x3f800000, 300(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movq	%r15, %rcx
	movl	%eax, %esi
	movl	$0x3e48c8ca, 368(%rsp)
	movl	$0x3e48c8ca, 372(%rsp)
	movl	$0x3e48c8ca, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	196(%rsp), %xmm0
	movl	80(%rsp), %edx
	movss	192(%rsp), %xmm1
	addss	212(%rsp), %xmm0
	addss	208(%rsp), %xmm1
	movq	%r12, %r8
	movl	%eax, %r9d
	movl	%edx, 48(%rsp)
	movq	%rdi, %rcx
	movq	%rbx, %rdx
	movl	%r14d, 40(%rsp)
	movl	%esi, 32(%rsp)
	xorl	%r12d, %r12d
	movss	%xmm0, 228(%rsp)
	movss	%xmm1, 224(%rsp)
	call	_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj
	movq	%r15, %rcx
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	movl	$0x3f800000, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	196(%rsp), %xmm0
	movl	%eax, %r9d
	movss	192(%rsp), %xmm1
	addss	212(%rsp), %xmm0
	addss	208(%rsp), %xmm1
	movq	%rbp, %r8
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movl	$0x3f800000, 48(%rsp)
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	movss	%xmm0, 292(%rsp)
	movss	%xmm1, 288(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	leaq	.LC313(%rip), %rcx
	movq	%r13, %rdx
	call	_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2
	call	_ZN5ImGui5GetIOEv
	movss	260(%rax), %xmm0
	movaps	%xmm0, %xmm6
	subss	196(%rsp), %xmm6
	call	_ZN5ImGui5GetIOEv
	cmpb	$0, _ZZL29ShowExampleAppCustomRenderingPbE11adding_line(%rip)
	movss	256(%rax), %xmm0
	movaps	%xmm0, %xmm7
	subss	192(%rsp), %xmm7
	jne	.L1918
.L818:
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	je	.L824
	cmpb	$0, _ZZL29ShowExampleAppCustomRenderingPbE11adding_line(%rip)
	je	.L1919
.L1132:
	xorl	%edx, %edx
	movl	$1, %ecx
	call	_ZN5ImGui14IsMouseClickedEib
	testb	%al, %al
	jne	.L1920
.L824:
	movss	192(%rsp), %xmm0
	movq	192(%rsp), %rdx
	xorl	%r9d, %r9d
	addss	208(%rsp), %xmm0
	movq	%rdi, %rcx
	movss	%xmm0, 80(%rsp)
	movl	80(%rsp), %r8d
	movss	196(%rsp), %xmm0
	addss	212(%rsp), %xmm0
	movss	%xmm0, 96(%rsp)
	movq	96(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %r8
	call	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %ecx
	cmpl	$1, %ecx
	jle	.L841
.L834:
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movq	%rdi, %r13
	jmp	.L842
	.p2align 4,,7
.L837:
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rax
	movss	192(%rsp), %xmm7
	leaq	8(%rax,%rsi), %rdx
	movss	4(%rdx), %xmm8
	addss	%xmm6, %xmm8
.L838:
	addss	(%rdx), %xmm7
	cmpl	%ecx, %ebx
	movss	%xmm8, 292(%rsp)
	movss	%xmm7, 288(%rsp)
	jge	.L1921
	addq	%rsi, %rax
	movss	192(%rsp), %xmm7
	addss	4(%rax), %xmm6
.L840:
	addss	(%rax), %xmm7
	movq	%r13, %rcx
	movl	$0x40000000, 32(%rsp)
	movl	$-16711681, %r9d
	movq	%rbp, %r8
	movq	%r15, %rdx
	movss	%xmm6, 372(%rsp)
	addl	$2, %ebx
	addq	$16, %rsi
	movss	%xmm7, 368(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %ecx
	leal	-1(%rcx), %eax
	cmpl	%ebx, %eax
	jle	.L1922
.L842:
	leal	1(%rbx), %edi
	movss	196(%rsp), %xmm6
	cmpl	%ecx, %edi
	jl	.L837
	leaq	.LC161(%rip), %rdx
	leaq	.LC162(%rip), %rcx
	movl	$856, %r8d
	leaq	8(%rsi), %r14
	call	_assert
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rax
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %ecx
	movss	192(%rsp), %xmm7
	leaq	(%rax,%r14), %rdx
	cmpl	%ecx, %edi
	addss	4(%rdx), %xmm6
	movaps	%xmm6, %xmm8
	jl	.L1159
	leaq	.LC161(%rip), %rdx
	leaq	.LC162(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rax
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %ecx
	movss	196(%rsp), %xmm6
	leaq	(%rax,%r14), %rdx
	jmp	.L838
.L1922:
	movq	%r13, %rdi
.L841:
	movq	%rdi, %rcx
	call	_ZN10ImDrawList11PopClipRectEv
	testb	%r12b, %r12b
	je	.L836
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %eax
	testl	%eax, %eax
	jle	.L1923
.L843:
	decl	%eax
	movl	%eax, _ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
.L836:
	call	_ZN5ImGui3EndEv
	jmp	.L798
.L1878:
	movq	%r15, %rcx
	movl	$4, %edx
	movl	$0x42c80000, 368(%rsp)
	movl	$0x42c80000, 372(%rsp)
	leaq	288(%rsp), %rbp
	call	_ZN5ImGui16SetNextWindowPosERK6ImVec2i
	leaq	.LC290(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	_ZN5ImGui5BeginEPKcPbi
	leaq	.LC291(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui3EndEv
	movq	%r15, %rcx
	movl	$4, %edx
	movl	$0x42c80000, 368(%rsp)
	movl	$0x43480000, 372(%rsp)
	call	_ZN5ImGui16SetNextWindowPosERK6ImVec2i
	leaq	.LC292(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	_ZN5ImGui5BeginEPKcPbi
	leaq	.LC293(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui3EndEv
	call	rand
	movl	%eax, %ebx
	call	_ZN5ImGui7GetTimeEv
	mulss	.LC187(%rip), %xmm0
	leaq	.LC294(%rip), %rax
	movl	%ebx, %r9d
	movq	%r15, %rcx
	cvttss2si	%xmm0, %edx
	andl	$3, %edx
	movsbl	(%rax,%rdx), %r8d
	leaq	.LC295(%rip), %rdx
	call	sprintf
	movq	%rbp, %rcx
	movl	$4, %edx
	movl	$0x42c80000, 288(%rsp)
	movl	$0x43960000, 292(%rsp)
	call	_ZN5ImGui16SetNextWindowPosERK6ImVec2i
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r15, %rcx
	call	_ZN5ImGui5BeginEPKcPbi
	leaq	.LC296(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui3EndEv
	jmp	.L797
.L1877:
	xorl	%edx, %edx
	movq	%r15, %rcx
	movl	$0x41200000, 368(%rsp)
	movl	$0x41200000, 372(%rsp)
	call	_ZN5ImGui16SetNextWindowPosERK6ImVec2i
	leaq	_ZZN5ImGui14ShowTestWindowEPbE22show_app_fixed_overlay(%rip), %rdx
	leaq	.LC287(%rip), %rcx
	movl	$263, 32(%rsp)
	movss	.LC142(%rip), %xmm3
	movq	%r15, %r8
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi
	testb	%al, %al
	je	.L1857
	leaq	.LC288(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui9SeparatorEv
	call	_ZN5ImGui5GetIOEv
	cvtss2sd	260(%rax), %xmm6
	call	_ZN5ImGui5GetIOEv
	cvtss2sd	256(%rax), %xmm0
	leaq	.LC289(%rip), %rcx
	movsd	%xmm6, 80(%rsp)
	movq	80(%rsp), %r8
	movsd	%xmm6, %xmm2
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui4TextEPKcz
.L1857:
	call	_ZN5ImGui3EndEv
	jmp	.L795
.L1876:
	movl	_ZZL31ShowExampleAppConstrainedResizePbE4type(%rip), %eax
	testl	%eax, %eax
	je	.L1924
.L784:
	cmpl	$1, %eax
	je	.L1925
.L785:
	cmpl	$2, %eax
	je	.L1926
.L786:
	cmpl	$3, %eax
	.p2align 4,,2
	je	.L1927
.L787:
	cmpl	$4, %eax
	.p2align 4,,2
	je	.L1928
.L788:
	cmpl	$5, %eax
	.p2align 4,,2
	je	.L1929
.L789:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE27show_app_constrained_resize(%rip), %rdx
	leaq	.LC274(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui5BeginEPKcPbi
	testb	%al, %al
	jne	.L1930
	call	_ZN5ImGui3EndEv
	.p2align 4,,6
	jmp	.L783
.L1869:
	.p2align 4,,8
	call	_ZN5ImGui16BeginMainMenuBarEv
	testb	%al, %al
	.p2align 4,,6
	je	.L620
	leaq	.LC217(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	jne	.L1931
.L622:
	leaq	.LC218(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	jne	.L1932
.L623:
	call	_ZN5ImGui14EndMainMenuBarEv
.LEHE15:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE16show_app_console(%rip)
	je	.L624
.L1870:
	cmpb	$0, _ZGVZL21ShowExampleAppConsolePbE7console(%rip)
	jne	.L626
	leaq	_ZGVZL21ShowExampleAppConsolePbE7console(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L626
	leaq	_ZZL21ShowExampleAppConsolePbE7console(%rip), %rdx
	movl	$32, %ecx
	xorl	%eax, %eax
	movl	$0, 260+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	$0, 256+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movq	%rdx, %rdi
	movq	$0, 264+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	$0, 284+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	rep stosq
	movl	$64, %ecx
	movl	$0, 280+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movq	$0, 288+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	$0, 308+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	$0, 304+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movq	$0, 312+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movb	$1, 272+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	$-1, 296+_ZZL21ShowExampleAppConsolePbE7console(%rip)
.LEHB16:
	call	_ZN5ImGui8MemAllocEy
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	je	.L628
	movslq	304+_ZZL21ShowExampleAppConsolePbE7console(%rip), %r8
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rdx
.L628:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movslq	304+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rax
	leaq	.LC169(%rip), %rdi
	movq	%rsi, 312+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	$8, 308+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	leal	1(%rax), %edx
	movq	%rax, %rbx
	cmpl	$8, %edx
	movl	%edx, 304+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movq	%rdi, (%rsi,%rax,8)
	je	.L629
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rsi
	movl	$8, %ebx
.L630:
	leal	1(%rdx), %eax
	leaq	.LC170(%rip), %rdi
	movslq	%edx, %rcx
	cmpl	%ebx, %eax
	movl	%eax, 304+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movq	%rdi, (%rsi,%rcx,8)
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rsi
	je	.L1933
.L632:
	leal	1(%rax), %ecx
	leaq	.LC168(%rip), %rdi
	movslq	%eax, %rdx
	cmpl	%ebx, %ecx
	movl	%ecx, 304+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movq	%rdi, (%rsi,%rdx,8)
	je	.L1934
.L1854:
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rsi
.L635:
	leal	1(%rcx), %eax
	movslq	%ecx, %rcx
	leaq	.LC230(%rip), %rdx
	movl	%eax, 304+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	leaq	.LC229(%rip), %rax
	movq	%rax, (%rsi,%rcx,8)
	leaq	_ZZL21ShowExampleAppConsolePbE7console(%rip), %rcx
	call	_ZN17ExampleAppConsole6AddLogEPKcz
.LEHE16:
	leaq	_ZGVZL21ShowExampleAppConsolePbE7console(%rip), %rcx
	call	__cxa_guard_release
	leaq	__tcf_4(%rip), %rcx
	call	atexit
.L626:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE16show_app_console(%rip), %r8
	leaq	.LC231(%rip), %rdx
	leaq	_ZZL21ShowExampleAppConsolePbE7console(%rip), %rcx
.LEHB17:
	call	_ZN17ExampleAppConsole4DrawEPKcPb
	jmp	.L624
.L1871:
	cmpb	$0, _ZGVZL17ShowExampleAppLogPbE3log(%rip)
	jne	.L651
	leaq	_ZGVZL17ShowExampleAppLogPbE3log(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	jne	.L1935
.L651:
	call	_ZN5ImGui7GetTimeEv
	movaps	%xmm0, %xmm6
	subss	_ZZL17ShowExampleAppLogPbE9last_time(%rip), %xmm0
	ucomiss	.LC142(%rip), %xmm0
	jnb	.L1936
.L654:
	leaq	368(%rsp), %r15
	movl	$4, %edx
	movl	$0x43fa0000, 368(%rsp)
	movl	$0x43c80000, 372(%rsp)
	movq	%r15, %rcx
	call	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
	leaq	_ZZN5ImGui14ShowTestWindowEPbE12show_app_log(%rip), %rdx
	leaq	.LC242(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui5BeginEPKcPbi
	leaq	.LC181(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L1937
.L657:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui8SameLineEff
	leaq	.LC226(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movl	%eax, %ebx
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC243(%rip), %rdx
	leaq	16+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	movss	.LC244(%rip), %xmm2
	call	_ZN15ImGuiTextFilter4DrawEPKcf
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC245(%rip), %rcx
	xorl	%r8d, %r8d
	movl	$2048, %r9d
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	testb	%bl, %bl
	jne	.L1938
.L664:
	movl	272+_ZZL17ShowExampleAppLogPbE3log(%rip), %esi
	testl	%esi, %esi
	je	.L665
	movl	_ZZL17ShowExampleAppLogPbE3log(%rip), %ebx
	testl	%ebx, %ebx
	jle	.L1939
.L666:
	movq	8+_ZZL17ShowExampleAppLogPbE3log(%rip), %rbp
	testq	%rbp, %rbp
	je	.L1140
	xorl	%esi, %esi
	cmpl	%esi, 296+_ZZL17ShowExampleAppLogPbE3log(%rip)
	movq	%rbp, %rdi
	jle	.L668
.L1940:
	movq	304+_ZZL17ShowExampleAppLogPbE3log(%rip), %rax
	leaq	16+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	movq	%rdi, %rdx
	movslq	(%rax,%rsi,4), %rbx
	addq	%rbp, %rbx
	movq	%rbx, %r8
	call	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_
	testb	%al, %al
	jne	.L1130
.L669:
	testq	%rbx, %rbx
	je	.L1140
	cmpb	$0, 1(%rbx)
	.p2align 4,,2
	je	.L1140
	movq	%rbx, %rdi
	incq	%rsi
	incq	%rdi
	je	.L1140
	cmpl	%esi, 296+_ZZL17ShowExampleAppLogPbE3log(%rip)
	jg	.L1940
.L668:
	leaq	16+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	xorl	%r8d, %r8d
	movq	%rdi, %rdx
	call	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_
	testb	%al, %al
	je	.L1140
	xorl	%ebx, %ebx
.L1130:
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	jmp	.L669
.L1875:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE20show_app_auto_resize(%rip), %rdx
	leaq	.LC270(%rip), %rcx
	movl	$64, %r8d
	call	_ZN5ImGui5BeginEPKcPbi
	testb	%al, %al
	je	.L780
	leaq	.LC271(%rip), %rcx
	xorl	%ebx, %ebx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC95(%rip), %rax
	leaq	_ZZL24ShowExampleAppAutoResizePbE5lines(%rip), %rdx
	leaq	.LC272(%rip), %rcx
	movl	$20, %r9d
	movl	$1, %r8d
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui9SliderIntEPKcPiiiS1_
	movl	_ZZL24ShowExampleAppAutoResizePbE5lines(%rip), %r9d
	testl	%r9d, %r9d
	jle	.L780
	.p2align 4,,7
.L1838:
	leal	0(,%rbx,4), %edx
	leaq	.LC43(%rip), %r8
	leaq	.LC273(%rip), %rcx
	movl	%ebx, %r9d
	incl	%ebx
	call	_ZN5ImGui4TextEPKcz
	cmpl	%ebx, _ZZL24ShowExampleAppAutoResizePbE5lines(%rip)
	jg	.L1838
.L780:
	call	_ZN5ImGui3EndEv
	jmp	.L777
.L1874:
	movl	$4, %edx
	movq	%r15, %rcx
	movl	$0x44020000, 368(%rsp)
	movl	$0x44160000, 372(%rsp)
	call	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
	leaq	_ZZN5ImGui14ShowTestWindowEPbE18show_app_long_text(%rip), %rdx
	leaq	.LC260(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui5BeginEPKcPbi
	testb	%al, %al
	je	.L1856
	cmpb	$0, _ZGVZL22ShowExampleAppLongTextPbE3log(%rip)
	jne	.L749
	leaq	_ZGVZL22ShowExampleAppLongTextPbE3log(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	jne	.L1941
.L749:
	leaq	.LC261(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC262(%rip), %r8
	leaq	_ZZL22ShowExampleAppLongTextPbE9test_type(%rip), %rdx
	leaq	.LC263(%rip), %rcx
	movl	$-1, %r9d
	call	_ZN5ImGui5ComboEPKcPiS1_i
	movl	_ZZL22ShowExampleAppLongTextPbE3log(%rip), %eax
	movl	_ZZL22ShowExampleAppLongTextPbE5lines(%rip), %edx
	leaq	.LC264(%rip), %rcx
	leal	-1(%rax), %r8d
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC181(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L1942
.L752:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC265(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	je	.L758
	xorl	%ebx, %ebx
	.p2align 4,,7
.L759:
	movl	_ZZL22ShowExampleAppLongTextPbE5lines(%rip), %r8d
	leaq	.LC266(%rip), %rdx
	leaq	_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rcx
	addl	%ebx, %r8d
	incl	%ebx
	call	_ZN15ImGuiTextBuffer6appendEPKcz
	cmpl	$1000, %ebx
	jne	.L759
	addl	$1000, _ZZL22ShowExampleAppLongTextPbE5lines(%rip)
.L758:
	leaq	.LC267(%rip), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	movl	_ZZL22ShowExampleAppLongTextPbE9test_type(%rip), %eax
	cmpl	$1, %eax
	je	.L761
	cmpl	$2, %eax
	je	.L762
	testl	%eax, %eax
	je	.L1943
.L760:
	.p2align 4,,6
	call	_ZN5ImGui8EndChildEv
.L1856:
	.p2align 4,,6
	call	_ZN5ImGui3EndEv
	.p2align 4,,5
	jmp	.L745
.L1873:
	movss	.LC116(%rip), %xmm6
	movl	$4, %edx
	movq	%r15, %rcx
	movl	$0x43d70000, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
	leaq	_ZZN5ImGui14ShowTestWindowEPbE24show_app_property_editor(%rip), %rdx
	leaq	.LC258(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui5BeginEPKcPbi
	testb	%al, %al
	je	.L1855
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	je	.L683
	.p2align 4,,6
	call	_ZN5ImGui12BeginTooltipEv
	movaps	%xmm6, %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC259(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
.L683:
	xorps	%xmm7, %xmm7
	movq	%r15, %rdx
	movl	$5, %ecx
	movl	$0x40000000, 368(%rsp)
	movl	$0x40000000, 372(%rsp)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movaps	%xmm7, %xmm8
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	$2, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	movl	$0, 80(%rsp)
.L744:
	movl	80(%rsp), %edi
	movl	%edi, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC61(%rip), %r8
	leaq	.LC60(%rip), %rdx
	movl	%edi, %r9d
	movq	%r8, %rcx
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %ebx
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%bl, %bl
	je	.L684
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %r13
	xorl	%r14d, %r14d
	movq	%r15, %r12
	movl	%r14d, %r15d
	movq	%r13, %r14
	jmp	.L743
	.p2align 4,,7
.L741:
	leaq	.LC49(%rip), %rax
	movss	%xmm6, 32(%rsp)
	leaq	.LC66(%rip), %rcx
	movaps	%xmm6, %xmm3
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r14, %rdx
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L742:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L740:
	incl	%r15d
	addq	$4, %r14
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %r15d
	je	.L1944
.L743:
	movl	%r15d, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %r15d
	jle	.L1945
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%r15d, %r8d
	movq	%r12, %rcx
	xorps	%xmm6, %xmm6
	call	sprintf
	call	_ZN5ImGui6BulletEv
	leaq	288(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r12, %rcx
	movss	%xmm6, 288(%rsp)
	movss	%xmm6, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %r15d
	jle	.L741
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%r14, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L742
.L1944:
	movq	%r12, %r15
	call	_ZN5ImGui7TreePopEv
.L684:
	.p2align 4,,5
	call	_ZN5ImGui5PopIDEv
	incl	80(%rsp)
	movl	80(%rsp), %eax
	cmpl	$3, %eax
	jne	.L744
	movl	$1, %ecx
	movl	$1, %r8d
	xorl	%edx, %edx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	movl	$1, %ecx
	call	_ZN5ImGui11PopStyleVarEi
.L1855:
	call	_ZN5ImGui3EndEv
	jmp	.L681
.L1872:
	movl	$4, %edx
	movq	%r15, %rcx
	movl	$0x43fa0000, 368(%rsp)
	movl	$0x43dc0000, 372(%rsp)
	call	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i
	leaq	_ZZN5ImGui14ShowTestWindowEPbE15show_app_layout(%rip), %rdx
	leaq	.LC248(%rip), %rcx
	movl	$1024, %r8d
	call	_ZN5ImGui5BeginEPKcPbi
	testb	%al, %al
	jne	.L1946
	call	_ZN5ImGui3EndEv
	.p2align 4,,6
	jmp	.L674
.L1913:
	leaq	.LC749(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1947
.L1088:
	leaq	.LC756(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1948
.L1089:
	leaq	.LC764(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1949
.L1097:
	leaq	.LC769(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1950
.L1099:
	leaq	.LC788(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	je	.L1087
	leaq	.LC789(%rip), %rcx
	xorl	%ebx, %ebx
	leaq	288(%rsp), %rbp
	call	_ZN5ImGui11TextWrappedEPKcz
	call	_ZN5ImGui5GetIOEv
	leaq	.LC790(%rip), %rcx
	leaq	276(%rax), %rdx
	call	_ZN5ImGui8CheckboxEPKcPb
	leaq	.LC791(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1127
.L1126:
	incl	%ebx
	cmpl	$7, %ebx
	je	.L1951
.L1127:
	leaq	.LC792(%rip), %rdx
	movl	%ebx, %r8d
	movq	%r15, %rcx
	call	sprintf
	call	_ZN5ImGui6BulletEv
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbp, %r9
	movq	%r15, %rcx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	je	.L1126
	movl	%ebx, %ecx
	call	_ZN5ImGui14SetMouseCursorEi
	.p2align 4,,4
	jmp	.L1126
.L1911:
	leaq	.LC401(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1952
.L1063:
	leaq	.LC713(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1953
.L1067:
	leaq	.LC723(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1954
.L1071:
	leaq	.LC728(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1955
.L1072:
	leaq	.LC732(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	xorps	%xmm0, %xmm0
	movl	%eax, %ebx
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	je	.L1076
	.p2align 4,,6
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC733(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
.L1076:
	testb	%bl, %bl
	.p2align 4,,3
	je	.L1062
	leaq	.LC734(%rip), %rdx
	movl	$1, %r8d
	movl	$2, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC36(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1956
.L1078:
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC735(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1957
.L1079:
	call	_ZN5ImGui10NextColumnEv
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	$1, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L1062
.L1884:
	leaq	.LC338(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC68(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC69(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC70(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC71(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	call	_ZN5ImGui5GetIOEv
	cmpb	$0, 148(%rax)
	je	.L859
	leaq	.LC72(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
.L859:
	leaq	.LC73(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC74(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC75(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	jmp	.L858
.L1885:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE11no_titlebar(%rip), %rdx
	leaq	.LC340(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movss	.LC65(%rip), %xmm1
	movss	.LC250(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui14ShowTestWindowEPbE9no_border(%rip), %rdx
	leaq	.LC341(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movss	.LC65(%rip), %xmm1
	movss	.LC130(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui14ShowTestWindowEPbE9no_resize(%rip), %rdx
	leaq	.LC342(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE7no_move(%rip), %rdx
	leaq	.LC343(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movss	.LC65(%rip), %xmm1
	movss	.LC250(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui14ShowTestWindowEPbE12no_scrollbar(%rip), %rdx
	leaq	.LC344(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movss	.LC65(%rip), %xmm1
	movss	.LC130(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui14ShowTestWindowEPbE11no_collapse(%rip), %rdx
	leaq	.LC345(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE7no_menu(%rip), %rdx
	leaq	.LC346(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	leaq	.LC347(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1958
.L862:
	leaq	.LC348(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	je	.L861
	leaq	.LC349(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	call	_ZN5ImGui10LogButtonsEv
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L861
.L1910:
	leaq	.LC647(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1959
.L1023:
	leaq	.LC672(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1960
.L1041:
	leaq	.LC682(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	je	.L1022
	leaq	.LC683(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC684(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L1961
.L1051:
	leaq	.LC685(%rip), %rcx
	xorl	%edx, %edx
	movl	$64, %r8d
	call	_ZN5ImGui15BeginPopupModalEPKcPbi
	testb	%al, %al
	jne	.L1962
.L1052:
	leaq	.LC690(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L1963
.L1055:
	leaq	.LC691(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	_ZN5ImGui15BeginPopupModalEPKcPbi
	testb	%al, %al
	jne	.L1964
.L1056:
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,6
	jmp	.L1022
.L1883:
	leaq	.LC324(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	jne	.L1965
.L855:
	leaq	.LC325(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	jne	.L1966
.L856:
	leaq	.LC336(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	jne	.L1967
.L857:
	call	_ZN5ImGui10EndMenuBarEv
	.p2align 4,,6
	jmp	.L854
.L1909:
	leaq	.LC534(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1968
.L961:
	leaq	.LC543(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1969
.L971:
	leaq	.LC559(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1970
.L977:
	leaq	.LC581(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1971
.L981:
	leaq	.LC596(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1972
.L983:
	leaq	.LC618(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1973
.L988:
	leaq	.LC629(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1974
.L997:
	leaq	.LC638(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	je	.L960
	cmpb	$0, _ZGVZN5ImGui14ShowTestWindowEPbE4size(%rip)
	je	.L1975
.L1014:
	cmpb	$0, _ZGVZN5ImGui14ShowTestWindowEPbE6offset(%rip)
	je	.L1976
.L1017:
	leaq	.LC639(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	xorps	%xmm3, %xmm3
	leaq	.LC95(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4size(%rip), %rdx
	leaq	.LC640(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movss	.LC24(%rip), %xmm2
	movq	%rax, 40(%rsp)
	movl	$0x43480000, 32(%rsp)
	call	_ZN5ImGui10DragFloat2EPKcPffffS1_f
	leaq	.LC641(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	call	_ZN5ImGui18GetCursorScreenPosEv
	movq	%rax, 240(%rsp)
	movss	4+_ZZN5ImGui14ShowTestWindowEPbE4size(%rip), %xmm2
	movss	244(%rsp), %xmm0
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4size(%rip), %rdx
	movss	240(%rsp), %xmm1
	addss	%xmm0, %xmm2
	movss	_ZZN5ImGui14ShowTestWindowEPbE4size(%rip), %xmm3
	leaq	.LC642(%rip), %rcx
	addss	%xmm1, %xmm3
	movss	%xmm1, 288(%rsp)
	movss	%xmm0, 292(%rsp)
	movss	%xmm2, 300(%rsp)
	movss	%xmm3, 296(%rsp)
	call	_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2
	call	_ZN5ImGui12IsItemActiveEv
	testb	%al, %al
	jne	.L1977
.L1138:
	movq	%r15, %rcx
	movl	$0x3eb4b4b5, 368(%rsp)
	movl	$0x3eb4b4b5, 372(%rsp)
	movl	$0x3ef0f0f2, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	leaq	256(%rsp), %rbx
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	244(%rsp), %xmm0
	leaq	240(%rsp), %rsi
	movss	240(%rsp), %xmm1
	addss	4+_ZZN5ImGui14ShowTestWindowEPbE4size(%rip), %xmm0
	addss	_ZZN5ImGui14ShowTestWindowEPbE4size(%rip), %xmm1
	movl	%eax, %edi
	leaq	288(%rsp), %rbp
	movss	%xmm0, 260(%rsp)
	movss	%xmm1, 256(%rsp)
	call	_ZN5ImGui17GetWindowDrawListEv
	movl	%edi, %r9d
	movq	%rbx, %r8
	movq	%rsi, %rdx
	movq	%rax, %rcx
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movq	%r15, %rcx
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	movl	$0x3f800000, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	244(%rsp), %xmm0
	movl	%eax, %edi
	movss	240(%rsp), %xmm1
	addss	4+_ZZN5ImGui14ShowTestWindowEPbE6offset(%rip), %xmm0
	addss	_ZZN5ImGui14ShowTestWindowEPbE6offset(%rip), %xmm1
	movss	%xmm0, 260(%rsp)
	movss	%xmm1, 256(%rsp)
	call	_ZN5ImGui11GetFontSizeEv
	movaps	%xmm0, %xmm6
	call	_ZN5ImGui7GetFontEv
	movq	%rax, %rsi
	call	_ZN5ImGui17GetWindowDrawListEv
	movaps	%xmm6, %xmm2
	leaq	.LC645(%rip), %rcx
	movq	%rbx, %r9
	movq	%rsi, %rdx
	movq	%rbp, 64(%rsp)
	addss	%xmm6, %xmm2
	movq	%rcx, 40(%rsp)
	movl	$0x00000000, 56(%rsp)
	movq	%rax, %rcx
	movq	$0, 48(%rsp)
	movl	%edi, 32(%rsp)
	call	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	call	_ZN5ImGui7TreePopEv
	jmp	.L960
.L1890:
	leaq	.LC379(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	call	_ZN5ImGui7SpacingEv
	leaq	.LC95(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE10wrap_width(%rip), %rdx
	leaq	.LC380(%rip), %rcx
	movss	.LC172(%rip), %xmm3
	movl	$0x3f800000, 40(%rsp)
	movss	.LC381(%rip), %xmm2
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	leaq	.LC382(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui18GetCursorScreenPosEv
	movl	%eax, 80(%rsp)
	shrq	$32, %rax
	movss	80(%rsp), %xmm7
	movl	%eax, 80(%rsp)
	movss	80(%rsp), %xmm6
	call	_ZN5ImGui17GetTextLineHeightEv
	addss	_ZZN5ImGui14ShowTestWindowEPbE10wrap_width(%rip), %xmm7
	movss	.LC105(%rip), %xmm8
	addss	%xmm6, %xmm0
	movss	%xmm6, 292(%rsp)
	movss	%xmm0, 372(%rsp)
	movaps	%xmm7, %xmm2
	movss	%xmm7, 288(%rsp)
	addss	%xmm8, %xmm2
	movss	%xmm2, 368(%rsp)
	call	_ZN5ImGui17GetWindowDrawListEv
	movq	%r15, %r8
	movl	$-65281, %r9d
	movq	%rbp, %rdx
	movq	%rax, %rcx
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	call	_ZN5ImGui12GetCursorPosEv
	movl	%eax, 80(%rsp)
	movd	80(%rsp), %xmm0
	addss	_ZZN5ImGui14ShowTestWindowEPbE10wrap_width(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	cvtss2sd	_ZZN5ImGui14ShowTestWindowEPbE10wrap_width(%rip), %xmm0
	leaq	.LC383(%rip), %rcx
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui14GetItemRectMaxEv
	movq	%rax, 368(%rsp)
	call	_ZN5ImGui14GetItemRectMinEv
	movq	%rax, 288(%rsp)
	call	_ZN5ImGui17GetWindowDrawListEv
	movq	%r15, %r8
	movq	%rbp, %rdx
	movl	$-16711681, %r9d
	movq	%rax, %rcx
	movl	$0x3f800000, 48(%rsp)
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	call	_ZN5ImGui14PopTextWrapPosEv
	leaq	.LC384(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui18GetCursorScreenPosEv
	movl	%eax, 80(%rsp)
	shrq	$32, %rax
	movss	80(%rsp), %xmm7
	movl	%eax, 80(%rsp)
	movss	80(%rsp), %xmm6
	call	_ZN5ImGui17GetTextLineHeightEv
	addss	_ZZN5ImGui14ShowTestWindowEPbE10wrap_width(%rip), %xmm7
	movss	%xmm6, 292(%rsp)
	addss	%xmm6, %xmm0
	movss	%xmm0, 372(%rsp)
	addss	%xmm7, %xmm8
	movss	%xmm7, 288(%rsp)
	movss	%xmm8, 368(%rsp)
	call	_ZN5ImGui17GetWindowDrawListEv
	movq	%r15, %r8
	movq	%rbp, %rdx
	movl	$-65281, %r9d
	movq	%rax, %rcx
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	call	_ZN5ImGui12GetCursorPosEv
	movl	%eax, 80(%rsp)
	movd	80(%rsp), %xmm0
	addss	_ZZN5ImGui14ShowTestWindowEPbE10wrap_width(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC385(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui14GetItemRectMaxEv
	movq	%rax, 368(%rsp)
	call	_ZN5ImGui14GetItemRectMinEv
	movq	%rax, 288(%rsp)
	call	_ZN5ImGui17GetWindowDrawListEv
	movl	$-16711681, %r9d
	movq	%r15, %r8
	movq	%rbp, %rdx
	movq	%rax, %rcx
	movl	$0x3f800000, 48(%rsp)
	movl	$-1, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L889
.L665:
	movl	_ZZL17ShowExampleAppLogPbE3log(%rip), %r11d
	testl	%r11d, %r11d
	jle	.L1978
.L672:
	movq	8+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	.p2align 4,,7
.L1140:
	cmpb	$0, 312+_ZZL17ShowExampleAppLogPbE3log(%rip)
	je	.L673
	movss	.LC22(%rip), %xmm0
	call	_ZN5ImGui13SetScrollHereEf
.L673:
	movb	$0, 312+_ZZL17ShowExampleAppLogPbE3log(%rip)
	call	_ZN5ImGui8EndChildEv
	call	_ZN5ImGui3EndEv
	jmp	.L644
.L1902:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC476(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L931
.L1901:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC466(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L930
.L1900:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC458(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L929
.L1899:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC454(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L928
.L1898:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC452(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L927
.L1936:
	leaq	.LC232(%rip), %rax
	movq	%rax, 368(%rsp)
	leaq	.LC233(%rip), %rax
	movq	%rax, 376(%rsp)
	leaq	.LC234(%rip), %rax
	movq	%rax, 384(%rsp)
	leaq	.LC235(%rip), %rax
	movq	%rax, 392(%rsp)
	leaq	.LC236(%rip), %rax
	movq	%rax, 400(%rsp)
	leaq	.LC237(%rip), %rax
	movq	%rax, 408(%rsp)
	leaq	.LC238(%rip), %rax
	movq	%rax, 416(%rsp)
	call	rand
	movl	%eax, %ebx
	call	rand
	movl	$-1840700269, %edx
	movl	%eax, %ecx
	cvtss2sd	%xmm6, %xmm0
	imull	%edx
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %r9
	movsd	%xmm0, %xmm3
	leal	(%rdx,%rcx), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$2, %eax
	subl	%edx, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	subl	%edx, %ecx
	leaq	.LC239(%rip), %rdx
	movslq	%ecx, %rax
	leaq	_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	movq	368(%rsp,%rax,8), %r8
	movl	%ebx, 32(%rsp)
	call	_ZN13ExampleAppLog6AddLogEPKcz
	movss	%xmm6, _ZZL17ShowExampleAppLogPbE9last_time(%rip)
	jmp	.L654
.L1946:
	call	_ZN5ImGui12BeginMenuBarEv
	testb	%al, %al
	jne	.L1979
.L676:
	leaq	.LC251(%rip), %rcx
	leaq	288(%rsp), %rbp
	xorl	%r9d, %r9d
	movl	$1, %r8d
	movq	%r15, %rdx
	xorl	%ebx, %ebx
	movl	$0x43160000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	.p2align 4,,7
.L680:
	leaq	.LC252(%rip), %rdx
	movl	%ebx, %r8d
	movq	%r15, %rcx
	call	sprintf
	xorl	%edx, %edx
	cmpl	%ebx, _ZZL20ShowExampleAppLayoutPbE8selected(%rip)
	movq	%rbp, %r9
	movq	%r15, %rcx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	sete	%dl
	xorl	%r8d, %r8d
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	testb	%al, %al
	je	.L679
	movl	%ebx, _ZZL20ShowExampleAppLayoutPbE8selected(%rip)
.L679:
	incl	%ebx
	cmpl	$100, %ebx
	jne	.L680
	call	_ZN5ImGui8EndChildEv
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui8SameLineEff
	call	_ZN5ImGui10BeginGroupEv
	call	_ZN5ImGui29GetItemsLineHeightWithSpacingEv
	movss	.LC185(%rip), %xmm1
	leaq	.LC253(%rip), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	xorps	%xmm1, %xmm0
	movss	%xmm0, 372(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	movl	_ZZL20ShowExampleAppLayoutPbE8selected(%rip), %edx
	leaq	.LC254(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC255(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	call	_ZN5ImGui8EndChildEv
	leaq	.LC256(%rip), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	leaq	.LC133(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC40(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	call	_ZN5ImGui8EndChildEv
	call	_ZN5ImGui8EndGroupEv
	.p2align 4,,5
	call	_ZN5ImGui3EndEv
	.p2align 4,,5
	jmp	.L674
.L1930:
	leaq	.LC275(%rip), %rax
	leaq	_ZZL31ShowExampleAppConstrainedResizePbE4type(%rip), %rdx
	leaq	.LC281(%rip), %rcx
	movl	$6, %r9d
	movq	%r15, %r8
	movl	$-1, 32(%rsp)
	movq	%rax, 368(%rsp)
	leaq	.LC276(%rip), %rax
	leaq	288(%rsp), %rbp
	movq	%rax, 376(%rsp)
	leaq	.LC277(%rip), %rax
	movq	%rax, 384(%rsp)
	leaq	.LC278(%rip), %rax
	movq	%rax, 392(%rsp)
	leaq	.LC279(%rip), %rax
	movq	%rax, 400(%rsp)
	leaq	.LC280(%rip), %rax
	movq	%rax, 408(%rsp)
	call	_ZN5ImGui5ComboEPKcPiPKS1_ii
	leaq	.LC282(%rip), %rcx
	movq	%rbp, %rdx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L1980
.L791:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC283(%rip), %rcx
	movq	%rbp, %rdx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L1981
.L792:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC284(%rip), %rcx
	movq	%rbp, %rdx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L1982
.L793:
	movl	$10, %ebx
	.p2align 4,,7
.L794:
	leaq	.LC286(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	decl	%ebx
	jne	.L794
	call	_ZN5ImGui3EndEv
	.p2align 4,,6
	jmp	.L783
.L1905:
	xorps	%xmm0, %xmm0
	leaq	_ZZN5ImGui14ShowTestWindowEPbE6values(%rip), %r13
	xorl	%edi, %edi
	leaq	240(%rsp), %rsi
	leaq	224(%rsp), %r12
	movq	%r13, %rbp
	call	_ZN5ImGui8UnindentEf
	movq	%rbx, %rdx
	movl	$7, %ecx
	movl	$0x40800000, 256(%rsp)
	movl	$0x40800000, 260(%rsp)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	leaq	.LC95(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE9int_value(%rip), %r8
	leaq	.LC510(%rip), %rcx
	xorl	%r9d, %r9d
	movq	%rbx, %rdx
	movl	$5, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x41900000, 256(%rsp)
	movl	$0x43200000, 260(%rsp)
	call	_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC511(%rip), %rcx
	call	_ZN5ImGui6PushIDEPKc
	movss	.LC24(%rip), %xmm7
	movaps	%xmm7, %xmm9
	jmp	.L935
	.p2align 4,,7
.L936:
	cvtss2sd	0(%rbp), %xmm0
	leaq	.LC49(%rip), %rcx
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui10SetTooltipEPKcz
.L937:
	movl	$4, %ecx
	incl	%edi
	call	_ZN5ImGui13PopStyleColorEi
	call	_ZN5ImGui5PopIDEv
	cmpl	$7, %edi
	je	.L1983
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	addq	$4, %rbp
	call	_ZN5ImGui8SameLineEff
.L935:
	movl	%edi, %ecx
	call	_ZN5ImGui6PushIDEi
	cvtsi2ss	%edi, %xmm6
	movq	%r12, %r9
	movaps	%xmm7, %xmm2
	movq	%rbx, 40(%rsp)
	movaps	%xmm9, %xmm1
	movq	%rsi, 32(%rsp)
	divss	%xmm8, %xmm6
	movaps	%xmm6, %xmm0
	call	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	movss	224(%rsp), %xmm1
	movq	%rbx, %rdx
	movss	256(%rsp), %xmm0
	movl	$7, %ecx
	movss	%xmm1, 256(%rsp)
	movl	$0x3f800000, 268(%rsp)
	movss	240(%rsp), %xmm1
	movss	%xmm1, 260(%rsp)
	movss	%xmm0, 264(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movaps	%xmm6, %xmm0
	movq	%r12, %r9
	movss	.LC24(%rip), %xmm2
	movq	%rbx, 40(%rsp)
	movss	.LC437(%rip), %xmm1
	movq	%rsi, 32(%rsp)
	call	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	movss	224(%rsp), %xmm1
	movq	%rbx, %rdx
	movss	256(%rsp), %xmm0
	movl	$8, %ecx
	movss	%xmm1, 256(%rsp)
	movl	$0x3f800000, 268(%rsp)
	movss	240(%rsp), %xmm1
	movss	%xmm1, 260(%rsp)
	movss	%xmm0, 264(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movaps	%xmm6, %xmm0
	movq	%r12, %r9
	movss	.LC24(%rip), %xmm2
	movq	%rbx, 40(%rsp)
	movss	.LC438(%rip), %xmm1
	movq	%rsi, 32(%rsp)
	call	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	movss	224(%rsp), %xmm1
	movq	%rbx, %rdx
	movss	256(%rsp), %xmm0
	movl	$9, %ecx
	movss	%xmm1, 256(%rsp)
	movl	$0x3f800000, 268(%rsp)
	movss	240(%rsp), %xmm1
	movss	%xmm1, 260(%rsp)
	movss	%xmm0, 264(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movss	.LC512(%rip), %xmm2
	movq	%r12, %r9
	movaps	%xmm2, %xmm1
	movq	%rbx, 40(%rsp)
	movaps	%xmm6, %xmm0
	movq	%rsi, 32(%rsp)
	call	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	movss	224(%rsp), %xmm1
	movq	%rbx, %rdx
	movss	256(%rsp), %xmm0
	movl	$20, %ecx
	movss	%xmm1, 256(%rsp)
	movl	$0x3f800000, 268(%rsp)
	movss	240(%rsp), %xmm1
	movss	%xmm1, 260(%rsp)
	movss	%xmm0, 264(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	leaq	.LC43(%rip), %rax
	xorps	%xmm3, %xmm3
	leaq	.LC513(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x3f800000, 32(%rsp)
	movl	$0x41900000, 256(%rsp)
	movl	$0x43200000, 260(%rsp)
	call	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f
	call	_ZN5ImGui12IsItemActiveEv
	testb	%al, %al
	jne	.L936
	.p2align 4,,6
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	.p2align 4,,4
	jne	.L936
	.p2align 4,,6
	jmp	.L937
.L1942:
	movq	8+_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rcx
	testq	%rcx, %rcx
	je	.L753
	movl	$0, 4+_ZZL22ShowExampleAppLongTextPbE3log(%rip)
	movl	$0, _ZZL22ShowExampleAppLongTextPbE3log(%rip)
	call	_ZN5ImGui7MemFreeEPv
.LEHE17:
	movq	$0, 8+_ZZL22ShowExampleAppLongTextPbE3log(%rip)
.L753:
	movslq	_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rax
	xorl	%esi, %esi
	cmpl	4+_ZZL22ShowExampleAppLongTextPbE3log(%rip), %eax
	leal	1(%rax), %edx
	je	.L1984
.L755:
	movl	%edx, _ZZL22ShowExampleAppLongTextPbE3log(%rip)
	movl	$0, _ZZL22ShowExampleAppLongTextPbE5lines(%rip)
	movb	$0, (%rsi,%rax)
	jmp	.L752
.L1912:
	leaq	.LC43(%rip), %rdx
	leaq	_ZZN5ImGui14ShowTestWindowEPbE6filter(%rip), %rcx
.LEHB18:
	call	_ZN15ImGuiTextFilterC1EPKc
.LEHE18:
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE6filter(%rip), %rcx
	call	__cxa_guard_release
	leaq	__tcf_0(%rip), %rcx
	call	atexit
	jmp	.L1082
.L1906:
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE12refresh_time(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L948
.LEHB19:
	call	_ZN5ImGui7GetTimeEv
.LEHE19:
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE12refresh_time(%rip), %rcx
	movss	%xmm0, _ZZN5ImGui14ShowTestWindowEPbE12refresh_time(%rip)
	call	__cxa_guard_release
	jmp	.L948
.L1908:
	mulss	.LC531(%rip), %xmm0
	cvttss2si	%xmm0, %r8d
	jmp	.L958
.L761:
	movq	%r15, %rdx
	movl	$7, %ecx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
.LEHB20:
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movl	_ZZL22ShowExampleAppLongTextPbE5lines(%rip), %edx
	movss	.LC65(%rip), %xmm2
	movq	%r15, %rcx
	call	_ZN16ImGuiListClipper5BeginEif
.LEHE20:
	.p2align 4,,7
.L768:
	movq	%r15, %rcx
.LEHB21:
	call	_ZN16ImGuiListClipper4StepEv
	testb	%al, %al
	je	.L766
	movl	384(%rsp), %ebx
	cmpl	388(%rsp), %ebx
	jge	.L768
	.p2align 4,,7
.L1836:
	leaq	.LC268(%rip), %rcx
	movl	%ebx, %edx
	call	_ZN5ImGui4TextEPKcz
.LEHE21:
	incl	%ebx
	cmpl	%ebx, 388(%rsp)
	jg	.L1836
	jmp	.L768
	.p2align 4,,7
.L1921:
	leaq	.LC161(%rip), %rdx
	leaq	.LC162(%rip), %rcx
	movl	$856, %r8d
.LEHB22:
	call	_assert
	movq	%rsi, %rax
	addq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rax
	cmpl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %ebx
	movss	192(%rsp), %xmm7
	addss	4(%rax), %xmm6
	jl	.L840
	leaq	.LC161(%rip), %rdx
	leaq	.LC162(%rip), %rcx
	movl	$856, %r8d
	call	_assert
	movq	%rsi, %rax
	addq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rax
	jmp	.L840
.L1945:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %ebx
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%bl, %bl
	je	.L686
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %rbp
	xorl	%r13d, %r13d
	movl	%r15d, 96(%rsp)
	movq	%r14, 112(%rsp)
	movl	%r13d, %r14d
	movq	%r12, %r13
	movq	%rbp, %r15
	jmp	.L739
	.p2align 4,,7
.L737:
	leaq	.LC49(%rip), %rax
	movss	%xmm6, 32(%rsp)
	leaq	.LC66(%rip), %rcx
	movaps	%xmm6, %xmm3
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r15, %rdx
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L738:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L736:
	incl	%r14d
	addq	$4, %r15
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %r14d
	je	.L1985
.L739:
	movl	%r14d, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %r14d
	jle	.L1986
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%r14d, %r8d
	movq	%r13, %rcx
	xorps	%xmm6, %xmm6
	call	sprintf
	call	_ZN5ImGui6BulletEv
	leaq	288(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r13, %rcx
	movss	%xmm6, 288(%rsp)
	movss	%xmm6, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %r14d
	jle	.L737
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%r15, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L738
.L1985:
	movl	96(%rsp), %r15d
	movq	112(%rsp), %r14
	movq	%r13, %r12
	call	_ZN5ImGui7TreePopEv
.L686:
	call	_ZN5ImGui5PopIDEv
	jmp	.L740
.L1986:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %ebx
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%bl, %bl
	je	.L688
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %rdi
	xorl	%r12d, %r12d
	movl	%r14d, 128(%rsp)
	movq	%r15, 120(%rsp)
	movl	%r12d, %r14d
	movq	%r13, %r12
	movq	%rdi, %r15
	jmp	.L735
	.p2align 4,,7
.L733:
	leaq	.LC49(%rip), %rax
	movss	%xmm6, 32(%rsp)
	leaq	.LC66(%rip), %rcx
	movaps	%xmm6, %xmm3
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r15, %rdx
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L734:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L732:
	incl	%r14d
	addq	$4, %r15
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %r14d
	je	.L1987
.L735:
	movl	%r14d, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %r14d
	jle	.L1988
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%r14d, %r8d
	movq	%r12, %rcx
	xorps	%xmm6, %xmm6
	call	sprintf
	call	_ZN5ImGui6BulletEv
	leaq	288(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r12, %rcx
	movss	%xmm6, 288(%rsp)
	movss	%xmm6, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %r14d
	jle	.L733
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%r15, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L734
.L1987:
	movl	128(%rsp), %r14d
	movq	120(%rsp), %r15
	movq	%r12, %r13
	call	_ZN5ImGui7TreePopEv
.L688:
	call	_ZN5ImGui5PopIDEv
	jmp	.L736
.L1988:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %ebx
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%bl, %bl
	je	.L690
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %rbp
	xorl	%r13d, %r13d
	movq	%r15, 136(%rsp)
	movl	%r14d, 132(%rsp)
	movl	%r13d, %r15d
	movq	%r12, %r13
	movq	%rbp, %r12
	jmp	.L731
.L729:
	leaq	.LC49(%rip), %rax
	movss	%xmm6, 32(%rsp)
	leaq	.LC66(%rip), %rcx
	movaps	%xmm6, %xmm3
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r12, %rdx
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L730:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L728:
	incl	%r15d
	addq	$4, %r12
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %r15d
	je	.L1989
.L731:
	movl	%r15d, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %r15d
	jle	.L1990
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%r15d, %r8d
	movq	%r13, %rcx
	xorps	%xmm6, %xmm6
	call	sprintf
	call	_ZN5ImGui6BulletEv
	leaq	288(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r13, %rcx
	movss	%xmm6, 288(%rsp)
	movss	%xmm6, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %r15d
	jle	.L729
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%r12, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L730
.L1989:
	movl	132(%rsp), %r14d
	movq	136(%rsp), %r15
	movq	%r13, %r12
	call	_ZN5ImGui7TreePopEv
.L690:
	call	_ZN5ImGui5PopIDEv
	jmp	.L732
.L1903:
	xorps	%xmm0, %xmm0
	.p2align 4,,5
	call	_ZN5ImGui8UnindentEf
	leaq	.LC482(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3end(%rip), %r8
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5begin(%rip), %rdx
	leaq	.LC481(%rip), %rcx
	movl	$0x3f800000, 64(%rsp)
	movl	$0x42c80000, 40(%rsp)
	movq	%rax, 56(%rsp)
	leaq	.LC483(%rip), %rax
	movl	$0x00000000, 32(%rsp)
	movss	.LC484(%rip), %xmm3
	movq	%rax, 48(%rsp)
	call	_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_f
	leaq	.LC486(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5end_i(%rip), %r8
	leaq	_ZZN5ImGui14ShowTestWindowEPbE7begin_i(%rip), %rdx
	leaq	.LC485(%rip), %rcx
	movss	.LC488(%rip), %xmm3
	movq	%rax, 56(%rsp)
	leaq	.LC487(%rip), %rax
	movl	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movq	%rax, 48(%rsp)
	call	_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_
	movaps	%xmm6, %xmm0
	call	_ZN5ImGui6IndentEf
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,2
	jmp	.L932
.L1888:
	leaq	.LC371(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	leaq	.LC372(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	call	_ZN5ImGui6BulletEv
	leaq	.LC373(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui6BulletEv
	leaq	.LC374(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	call	_ZN5ImGui7TreePopEv
	jmp	.L887
.L1887:
	leaq	.LC365(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	jne	.L881
.L884:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE14closable_group(%rip), %rdx
	leaq	.LC366(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui16CollapsingHeaderEPKcPbi
	testb	%al, %al
	je	.L883
	xorl	%ebx, %ebx
.L886:
	leaq	.LC369(%rip), %rcx
	movl	%ebx, %edx
	incl	%ebx
	call	_ZN5ImGui4TextEPKcz
	cmpl	$5, %ebx
	jne	.L886
.L883:
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L880
.L1897:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	leaq	.LC444(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3arr(%rip), %rdx
	leaq	.LC445(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$7, %r8d
	movl	$4, 64(%rsp)
	movq	$0, 56(%rsp)
	movl	$0x7f7fffff, 48(%rsp)
	movl	$0x7f7fffff, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i
	call	_ZN5ImGui10EndTooltipEv
	jmp	.L926
.L1896:
	leaq	.LC442(%rip), %rcx
	call	_ZN5ImGui10SetTooltipEPKcz
	jmp	.L925
.L1895:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC431(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L922
.L920:
	leaq	.LC430(%rip), %rcx
	call	puts
	movzbl	_ZZN5ImGui14ShowTestWindowEPbE1a(%rip), %eax
	xorl	$1, %eax
	movb	%al, _ZZN5ImGui14ShowTestWindowEPbE1a(%rip)
	jmp	.L921
.L1894:
	movq	%r15, %rdx
	movl	$5, %ecx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE9read_only(%rip), %rdx
	leaq	.LC428(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movl	$1, %ecx
	call	_ZN5ImGui11PopStyleVarEi
	cmpb	$1, _ZZN5ImGui14ShowTestWindowEPbE9read_only(%rip)
	sbbl	%esi, %esi
	call	_ZN5ImGui17GetTextLineHeightEv
	mulss	.LC98(%rip), %xmm0
	andl	$-16384, %esi
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4text(%rip), %rdx
	addl	$17408, %esi
	leaq	.LC429(%rip), %rcx
	movq	%r15, %r9
	movl	$16384, %r8d
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	%esi, 32(%rsp)
	movl	$0xbf800000, 368(%rsp)
	movss	%xmm0, 372(%rsp)
	call	_ZN5ImGui18InputTextMultilineEPKcPcyRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv
	call	_ZN5ImGui7TreePopEv
	jmp	.L918
.L1893:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4buf1(%rip), %rdx
	leaq	.LC417(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$64, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4buf2(%rip), %rdx
	leaq	.LC418(%rip), %rcx
	movl	$1, %r9d
	movl	$64, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4buf3(%rip), %rdx
	leaq	.LC419(%rip), %rcx
	movl	$6, %r9d
	movl	$64, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4buf4(%rip), %rdx
	leaq	.LC420(%rip), %rcx
	movl	$4, %r9d
	movl	$64, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4buf5(%rip), %rdx
	leaq	.LC421(%rip), %rcx
	movl	$8, %r9d
	movl	$64, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	leaq	_ZZN5ImGui14ShowTestWindowEPbEN11TextFilters18FilterImGuiLettersEP25ImGuiTextEditCallbackData(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4buf6(%rip), %rdx
	leaq	.LC422(%rip), %rcx
	movl	$512, %r9d
	movl	$64, %r8d
	movq	$0, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	leaq	.LC423(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	_ZZN5ImGui14ShowTestWindowEPbE7bufpass(%rip), %rdx
	leaq	.LC424(%rip), %rcx
	movl	$32776, %r9d
	movl	$64, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	je	.L917
	.p2align 4,,6
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC425(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
.L917:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE7bufpass(%rip), %rdx
	leaq	.LC426(%rip), %rcx
	movl	$8, %r9d
	movl	$64, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	call	_ZN5ImGui7TreePopEv
	jmp	.L916
.L1892:
	leaq	.LC401(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1991
.L899:
	leaq	.LC407(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1992
.L903:
	leaq	.LC413(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L1993
.L904:
	leaq	.LC415(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	je	.L906
	leaq	_ZZN5ImGui14ShowTestWindowEPbE8selected_2(%rip), %rdi
	movl	$1, %r12d
	movss	.LC65(%rip), %xmm8
	xorps	%xmm7, %xmm7
	movq	%rdi, %r13
	jmp	.L915
.L1996:
	andl	$3, %esi
.L908:
	cmpl	$3, %esi
	jne	.L1994
.L914:
	incl	%r12d
	incq	%r13
	call	_ZN5ImGui5PopIDEv
	cmpl	$17, %r12d
	je	.L1995
.L915:
	leal	-1(%r12), %esi
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	leaq	.LC37(%rip), %rcx
	xorl	%r8d, %r8d
	movq	%r15, %r9
	movq	%r13, %rdx
	movl	$0x42480000, 368(%rsp)
	movl	$0x42480000, 372(%rsp)
	call	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
	testb	%al, %al
	je	.L1996
	movl	%esi, %eax
	sarl	$2, %eax
	andl	$3, %esi
	je	.L911
	xorb	$1, -1(%r13)
	cmpl	$3, %esi
	jne	.L911
.L910:
	testl	%eax, %eax
	je	.L913
	xorb	$1, -4(%r13)
	cmpl	$3, %eax
	je	.L908
.L913:
	xorb	$1, 4(%r13)
	cmpl	$3, %esi
	je	.L914
.L1994:
	movaps	%xmm8, %xmm1
	movaps	%xmm7, %xmm0
	call	_ZN5ImGui8SameLineEff
	jmp	.L914
.L1995:
	call	_ZN5ImGui7TreePopEv
.L906:
	.p2align 4,,8
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L898
.L1842:
	leaq	.LC392(%rip), %rcx
	xorps	%xmm6, %xmm6
	leaq	256(%rsp), %rbx
	leaq	240(%rsp), %rsi
	leaq	224(%rsp), %r12
	call	_ZN5ImGui11TextWrappedEPKcz
	call	_ZN5ImGui18GetCursorScreenPosEv
	movq	%rax, %rdi
	call	_ZN5ImGui5GetIOEv
	movq	136(%rax), %rax
	cvtsi2ss	24(%rax), %xmm8
	call	_ZN5ImGui5GetIOEv
	movq	136(%rax), %rax
	cvtsi2ss	28(%rax), %xmm9
	call	_ZN5ImGui5GetIOEv
	movq	136(%rax), %rax
	cvtss2sd	%xmm8, %xmm0
	leaq	.LC393(%rip), %rcx
	movq	(%rax), %r13
	cvtss2sd	%xmm9, %xmm1
	movsd	%xmm1, 80(%rsp)
	movq	80(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui4TextEPKcz
	movq	%rbx, %r9
	movq	%rsi, %r8
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, 40(%rsp)
	movq	%rbp, 32(%rsp)
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	movss	%xmm6, 240(%rsp)
	movl	$0x3f800000, 376(%rsp)
	movl	$0x3f008081, 380(%rsp)
	movss	%xmm6, 244(%rsp)
	movl	$0x3f800000, 288(%rsp)
	movss	%xmm8, 224(%rsp)
	movl	$0x3f800000, 292(%rsp)
	movss	%xmm9, 228(%rsp)
	movl	$0x3f800000, 296(%rsp)
	movl	$0x3f800000, 300(%rsp)
	movl	$0x3f800000, 256(%rsp)
	movl	$0x3f800000, 260(%rsp)
	call	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	movss	.LC394(%rip), %xmm7
	jne	.L1997
.L892:
	leaq	.LC398(%rip), %rcx
	xorl	%edi, %edi
	call	_ZN5ImGui11TextWrappedEPKcz
	movss	.LC65(%rip), %xmm10
	.p2align 4,,7
.L897:
	movl	%edi, %ecx
	call	_ZN5ImGui6PushIDEi
	movaps	%xmm7, %xmm0
	leal	-1(%rdi), %eax
	movq	%r15, 48(%rsp)
	movq	%rbp, 40(%rsp)
	movq	%rbx, %r9
	divss	%xmm8, %xmm0
	movl	%eax, 32(%rsp)
	movq	%rsi, %r8
	movq	%r12, %rdx
	movq	%r13, %rcx
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	movl	$0x3f800000, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	movl	$0x00000000, 296(%rsp)
	movl	$0x3f800000, 300(%rsp)
	movl	$0x00000000, 240(%rsp)
	movl	$0x00000000, 244(%rsp)
	movl	$0x42000000, 224(%rsp)
	movl	$0x42000000, 228(%rsp)
	movss	%xmm0, 256(%rsp)
	movaps	%xmm7, %xmm0
	divss	%xmm9, %xmm0
	movss	%xmm0, 260(%rsp)
	call	_ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_
	testb	%al, %al
	je	.L896
	incl	_ZZN5ImGui14ShowTestWindowEPbE13pressed_count(%rip)
.L896:
	call	_ZN5ImGui5PopIDEv
	xorps	%xmm0, %xmm0
	incl	%edi
	movaps	%xmm10, %xmm1
	call	_ZN5ImGui8SameLineEff
	cmpl	$8, %edi
	jne	.L897
	call	_ZN5ImGui7NewLineEv
	movl	_ZZN5ImGui14ShowTestWindowEPbE13pressed_count(%rip), %edx
	leaq	.LC399(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui7TreePopEv
	jmp	.L891
.L1891:
	leaq	.LC387(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC388(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC389(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3buf(%rip), %rdx
	leaq	.LC390(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$32, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	call	_ZN5ImGui7TreePopEv
	jmp	.L890
.L1889:
	leaq	.LC376(%rip), %rdx
	movq	%r15, %rcx
	movl	$0x3f800000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	movl	$0x3f800000, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	call	_ZN5ImGui11TextColoredERK6ImVec4PKcz
	leaq	.LC377(%rip), %rdx
	movq	%r15, %rcx
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	movl	$0x00000000, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	call	_ZN5ImGui11TextColoredERK6ImVec4PKcz
	leaq	.LC54(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui7TreePopEv
	jmp	.L888
.L1983:
	.p2align 4,,8
	call	_ZN5ImGui5PopIDEv
	xorps	%xmm0, %xmm0
	leaq	_ZZN5ImGui14ShowTestWindowEPbE7values2(%rip), %rbp
	movss	.LC65(%rip), %xmm1
	movl	$3, %r12d
	xorps	%xmm6, %xmm6
	xorl	%r14d, %r14d
	call	_ZN5ImGui8SameLineEff
	leaq	.LC514(%rip), %rcx
	call	_ZN5ImGui6PushIDEPKc
	movl	$0x41900000, 240(%rsp)
	movl	$0x424aaaab, 244(%rsp)
	movss	.LC65(%rip), %xmm7
	.p2align 4,,7
.L938:
	leal	-3(%r12), %edi
	call	_ZN5ImGui10BeginGroupEv
.L940:
	movl	%edi, %ecx
	call	_ZN5ImGui6PushIDEi
	leaq	.LC43(%rip), %rax
	movaps	%xmm6, %xmm3
	leaq	.LC513(%rip), %rcx
	movq	%rbp, %r8
	movq	%rsi, %rdx
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x3f800000, 32(%rsp)
	call	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f
	call	_ZN5ImGui12IsItemActiveEv
	testb	%al, %al
	je	.L1998
.L939:
	cvtss2sd	0(%rbp), %xmm0
	leaq	.LC49(%rip), %rcx
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui10SetTooltipEPKcz
.L1135:
	incl	%edi
	call	_ZN5ImGui5PopIDEv
	cmpl	%edi, %r12d
	jne	.L940
	incl	%r14d
	call	_ZN5ImGui8EndGroupEv
	cmpl	$4, %r14d
	je	.L1999
	xorps	%xmm0, %xmm0
	movaps	%xmm7, %xmm1
	addl	$3, %r12d
	addq	$4, %rbp
	call	_ZN5ImGui8SameLineEff
	jmp	.L938
.L1998:
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	.p2align 4,,6
	jne	.L939
	.p2align 4,,6
	jmp	.L1135
.L1999:
	.p2align 4,,9
	call	_ZN5ImGui5PopIDEv
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	movss	.LC65(%rip), %xmm1
	movl	$1, %edi
	call	_ZN5ImGui8SameLineEff
	leaq	.LC516(%rip), %rcx
	call	_ZN5ImGui6PushIDEPKc
	testl	%esi, %esi
	movss	.LC65(%rip), %xmm6
	je	.L943
.L2001:
	xorps	%xmm0, %xmm0
	movaps	%xmm6, %xmm1
	call	_ZN5ImGui8SameLineEff
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	movss	.LC517(%rip), %xmm1
	movl	$10, %ecx
	call	_ZN5ImGui12PushStyleVarEif
	xorps	%xmm3, %xmm3
	leaq	.LC518(%rip), %rax
	leaq	.LC513(%rip), %rcx
	movq	%r13, %r8
	movq	%rbx, %rdx
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x3f800000, 32(%rsp)
	movl	$0x42200000, 256(%rsp)
	movl	$0x43200000, 260(%rsp)
	call	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f
	movl	$1, %ecx
	call	_ZN5ImGui11PopStyleVarEi
	call	_ZN5ImGui5PopIDEv
	cmpl	$4, %edi
	je	.L2000
.L944:
	incl	%esi
	incl	%edi
	addq	$4, %r13
	testl	%esi, %esi
	jne	.L2001
.L943:
	xorl	%ecx, %ecx
	call	_ZN5ImGui6PushIDEi
	movss	.LC517(%rip), %xmm1
	movl	$10, %ecx
	call	_ZN5ImGui12PushStyleVarEif
	xorps	%xmm3, %xmm3
	leaq	.LC518(%rip), %rax
	leaq	.LC513(%rip), %rcx
	movq	%r13, %r8
	movq	%rbx, %rdx
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x3f800000, 32(%rsp)
	movl	$0x42200000, 256(%rsp)
	movl	$0x43200000, 260(%rsp)
	call	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f
	movl	$1, %ecx
	call	_ZN5ImGui11PopStyleVarEi
	call	_ZN5ImGui5PopIDEv
	jmp	.L944
	.p2align 4,,7
.L1886:
	leaq	.LC352(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	je	.L866
	xorl	%ebx, %ebx
.L869:
	leaq	.LC353(%rip), %rdx
	movl	%ebx, %r8d
	movq	%rbx, %rcx
	call	_ZN5ImGui8TreeNodeEPKvPKcz
	testb	%al, %al
	jne	.L2002
.L867:
	incq	%rbx
	cmpq	$5, %rbx
	jne	.L869
	call	_ZN5ImGui7TreePopEv
.L866:
	leaq	.LC357(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	jne	.L2003
.L870:
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,6
	jmp	.L865
.L1904:
	xorps	%xmm0, %xmm0
	.p2align 4,,5
	call	_ZN5ImGui8UnindentEf
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4f(%rip), %rdx
	leaq	.LC490(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$-1, %r8d
	call	_ZN5ImGui11InputFloat2EPKcPfii
	leaq	.LC49(%rip), %rax
	xorps	%xmm3, %xmm3
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4f(%rip), %rdx
	leaq	.LC491(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x3f800000, 32(%rsp)
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui10DragFloat2EPKcPffffS1_f
	leaq	.LC49(%rip), %rax
	xorps	%xmm2, %xmm2
	movaps	%xmm7, %xmm3
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4f(%rip), %rdx
	leaq	.LC492(%rip), %rcx
	movl	$0x3f800000, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui12SliderFloat2EPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	movaps	%xmm7, %xmm2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4i(%rip), %rdx
	leaq	.LC493(%rip), %rcx
	xorl	%r9d, %r9d
	movq	%rax, 40(%rsp)
	movl	$255, 32(%rsp)
	call	_ZN5ImGui8DragInt2EPKcPifiiS1_
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4i(%rip), %rdx
	leaq	.LC494(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui9InputInt2EPKcPii
	leaq	.LC95(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4i(%rip), %rdx
	leaq	.LC495(%rip), %rcx
	xorl	%r8d, %r8d
	movl	$255, %r9d
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui10SliderInt2EPKcPiiiS1_
	call	_ZN5ImGui7SpacingEv
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4f(%rip), %rdx
	leaq	.LC456(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$-1, %r8d
	call	_ZN5ImGui11InputFloat3EPKcPfii
	leaq	.LC49(%rip), %rax
	xorps	%xmm3, %xmm3
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4f(%rip), %rdx
	leaq	.LC496(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x3f800000, 32(%rsp)
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui10DragFloat3EPKcPffffS1_f
	leaq	.LC49(%rip), %rax
	xorps	%xmm2, %xmm2
	movaps	%xmm7, %xmm3
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4f(%rip), %rdx
	leaq	.LC497(%rip), %rcx
	movl	$0x3f800000, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui12SliderFloat3EPKcPfffS1_f
	leaq	.LC95(%rip), %rax
	movaps	%xmm7, %xmm2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4i(%rip), %rdx
	leaq	.LC498(%rip), %rcx
	xorl	%r9d, %r9d
	movq	%rax, 40(%rsp)
	movl	$255, 32(%rsp)
	call	_ZN5ImGui8DragInt3EPKcPifiiS1_
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4i(%rip), %rdx
	leaq	.LC499(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui9InputInt3EPKcPii
	leaq	.LC95(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4i(%rip), %rdx
	leaq	.LC500(%rip), %rcx
	xorl	%r8d, %r8d
	movl	$255, %r9d
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui10SliderInt3EPKcPiiiS1_
	call	_ZN5ImGui7SpacingEv
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4f(%rip), %rdx
	leaq	.LC501(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$-1, %r8d
	call	_ZN5ImGui11InputFloat4EPKcPfii
	leaq	.LC49(%rip), %rax
	xorps	%xmm3, %xmm3
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4f(%rip), %rdx
	leaq	.LC502(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x3f800000, 32(%rsp)
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui10DragFloat4EPKcPffffS1_f
	xorps	%xmm2, %xmm2
	leaq	.LC49(%rip), %rax
	movaps	%xmm7, %xmm3
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4f(%rip), %rdx
	leaq	.LC503(%rip), %rcx
	movl	$0x3f800000, 40(%rsp)
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui12SliderFloat4EPKcPfffS1_f
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4i(%rip), %rdx
	leaq	.LC504(%rip), %rcx
	xorl	%r8d, %r8d
	call	_ZN5ImGui9InputInt4EPKcPii
	leaq	.LC95(%rip), %rax
	movaps	%xmm7, %xmm2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4i(%rip), %rdx
	leaq	.LC505(%rip), %rcx
	xorl	%r9d, %r9d
	movq	%rax, 40(%rsp)
	movl	$255, 32(%rsp)
	call	_ZN5ImGui8DragInt4EPKcPifiiS1_
	leaq	.LC95(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5vec4i(%rip), %rdx
	leaq	.LC506(%rip), %rcx
	movl	$255, %r9d
	xorl	%r8d, %r8d
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui10SliderInt4EPKcPiiiS1_
	xorps	%xmm0, %xmm0
	call	_ZN5ImGui6IndentEf
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,2
	jmp	.L933
.L953:
	movss	.LC189(%rip), %xmm0
	movss	_ZZN5ImGui14ShowTestWindowEPbE12progress_dir(%rip), %xmm7
	mulss	%xmm0, %xmm7
	call	_ZN5ImGui5GetIOEv
	movss	_ZZN5ImGui14ShowTestWindowEPbE8progress(%rip), %xmm0
	mulss	8(%rax), %xmm7
	addss	%xmm7, %xmm0
	ucomiss	.LC201(%rip), %xmm0
	jnb	.L2004
	movss	.LC200(%rip), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L2005
	movss	.LC185(%rip), %xmm2
	movss	_ZZN5ImGui14ShowTestWindowEPbE12progress_dir(%rip), %xmm0
	movss	%xmm1, _ZZN5ImGui14ShowTestWindowEPbE8progress(%rip)
	xorps	%xmm2, %xmm0
	movss	%xmm0, _ZZN5ImGui14ShowTestWindowEPbE12progress_dir(%rip)
	movaps	%xmm1, %xmm0
	jmp	.L954
.L2000:
	call	_ZN5ImGui5PopIDEv
	movl	$1, %ecx
	call	_ZN5ImGui11PopStyleVarEi
	xorps	%xmm0, %xmm0
	call	_ZN5ImGui6IndentEf
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,2
	jmp	.L864
.L1938:
	movl	$-1, %ecx
	call	_ZN5ImGui14LogToClipboardEi
	.p2align 4,,3
	jmp	.L664
.L1937:
	movq	8+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	testq	%rcx, %rcx
	je	.L658
	movl	$0, 4+_ZZL17ShowExampleAppLogPbE3log(%rip)
	movl	$0, _ZZL17ShowExampleAppLogPbE3log(%rip)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 8+_ZZL17ShowExampleAppLogPbE3log(%rip)
.L658:
	movslq	_ZZL17ShowExampleAppLogPbE3log(%rip), %rax
	xorl	%edx, %edx
	cmpl	4+_ZZL17ShowExampleAppLogPbE3log(%rip), %eax
	leal	1(%rax), %ecx
	je	.L2006
.L660:
	movl	%ecx, _ZZL17ShowExampleAppLogPbE3log(%rip)
	movb	$0, (%rdx,%rax)
	movq	304+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	testq	%rcx, %rcx
	je	.L657
	movl	$0, 300+_ZZL17ShowExampleAppLogPbE3log(%rip)
	movl	$0, 296+_ZZL17ShowExampleAppLogPbE3log(%rip)
	call	_ZN5ImGui7MemFreeEPv
	movq	$0, 304+_ZZL17ShowExampleAppLogPbE3log(%rip)
	jmp	.L657
.L1924:
	leaq	288(%rsp), %rbp
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movl	$0xbf800000, 288(%rsp)
	movl	$0x7f7fffff, 292(%rsp)
	movq	%rbp, %rdx
	movl	$0xbf800000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP31ImGuiSizeConstraintCallbackDataEPv
	movl	_ZZL31ShowExampleAppConstrainedResizePbE4type(%rip), %eax
	jmp	.L784
.L1990:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %ebx
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%bl, %bl
	je	.L692
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %rdi
	movl	%r15d, 152(%rsp)
	xorl	%r14d, %r14d
	movq	%r12, 144(%rsp)
	movq	%rdi, %r15
	jmp	.L727
.L725:
	leaq	.LC49(%rip), %rax
	movss	%xmm6, 32(%rsp)
	leaq	.LC66(%rip), %rcx
	movaps	%xmm6, %xmm3
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r15, %rdx
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L726:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L724:
	incl	%r14d
	addq	$4, %r15
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %r14d
	je	.L2007
.L727:
	movl	%r14d, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %r14d
	jle	.L2008
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%r14d, %r8d
	movq	%r13, %rcx
	xorps	%xmm6, %xmm6
	call	sprintf
	call	_ZN5ImGui6BulletEv
	leaq	288(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r13, %rcx
	movss	%xmm6, 288(%rsp)
	movss	%xmm6, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %r14d
	jle	.L725
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%r15, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L726
.L2007:
	movl	152(%rsp), %r15d
	movq	144(%rsp), %r12
	call	_ZN5ImGui7TreePopEv
.L692:
	call	_ZN5ImGui5PopIDEv
	jmp	.L728
.L1943:
	movslq	_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rax
	testl	%eax, %eax
	jle	.L2009
	movq	8+_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rcx
	leaq	-1(%rcx,%rax), %rbx
.L765:
	movq	%rbx, %rdx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	jmp	.L760
.L762:
	movq	%r15, %rdx
	movl	$7, %ecx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	xorl	%ebx, %ebx
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	movl	_ZZL22ShowExampleAppLongTextPbE5lines(%rip), %r10d
	testl	%r10d, %r10d
	jle	.L773
	.p2align 4,,7
.L1837:
	leaq	.LC268(%rip), %rcx
	movl	%ebx, %edx
	incl	%ebx
	call	_ZN5ImGui4TextEPKcz
	cmpl	%ebx, _ZZL22ShowExampleAppLongTextPbE5lines(%rip)
	jg	.L1837
.L773:
	movl	$1, %ecx
	call	_ZN5ImGui11PopStyleVarEi
.LEHE22:
	jmp	.L760
.L766:
	movl	$1, %ecx
.LEHB23:
	call	_ZN5ImGui11PopStyleVarEi
.LEHE23:
	cmpl	$-1, 376(%rsp)
	je	.L760
	leaq	.LC161(%rip), %rdx
	leaq	.LC269(%rip), %rcx
	movl	$1103, %r8d
	call	_assert
	jmp	.L760
.L2008:
	movl	$424242, %ecx
.LEHB24:
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %ebx
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%bl, %bl
	je	.L694
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %rbp
	movq	%r15, 160(%rsp)
	xorl	%edi, %edi
	movl	%r14d, 156(%rsp)
	movq	%rbp, %r15
	jmp	.L723
.L721:
	leaq	.LC49(%rip), %rax
	movss	%xmm6, 32(%rsp)
	leaq	.LC66(%rip), %rcx
	movaps	%xmm6, %xmm3
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r15, %rdx
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L722:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L720:
	incl	%edi
	addq	$4, %r15
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %edi
	je	.L2010
.L723:
	movl	%edi, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %edi
	jle	.L2011
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%edi, %r8d
	movq	%r13, %rcx
	xorps	%xmm6, %xmm6
	call	sprintf
	call	_ZN5ImGui6BulletEv
	leaq	288(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r13, %rcx
	movss	%xmm6, 288(%rsp)
	movss	%xmm6, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %edi
	jle	.L721
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%r15, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L722
.L2010:
	movl	156(%rsp), %r14d
	movq	160(%rsp), %r15
	call	_ZN5ImGui7TreePopEv
.L694:
	call	_ZN5ImGui5PopIDEv
	jmp	.L724
.L1960:
	cvtss2sd	_ZZN5ImGui14ShowTestWindowEPbE5value(%rip), %xmm0
	leaq	.LC673(%rip), %rcx
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC674(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui21BeginPopupContextItemEPKci
	testb	%al, %al
	jne	.L2012
.L1042:
	cmpb	$0, _ZGVZN5ImGui14ShowTestWindowEPbE5color(%rip)
	je	.L2013
.L1046:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5color(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r8d
	call	_ZN5ImGui11ColorButtonERK6ImVec4bb
	leaq	.LC678(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui21BeginPopupContextItemEPKci
	testb	%al, %al
	jne	.L2014
.L1048:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC681(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui7TreePopEv
	jmp	.L1041
.L1959:
	leaq	.LC648(%rip), %rcx
	leaq	288(%rsp), %rbp
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC649(%rip), %rax
	leaq	.LC654(%rip), %rcx
	movq	%rbp, %rdx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	movq	%rax, 368(%rsp)
	leaq	.LC650(%rip), %rax
	movq	%rax, 376(%rsp)
	leaq	.LC651(%rip), %rax
	movq	%rax, 384(%rsp)
	leaq	.LC652(%rip), %rax
	movq	%rax, 392(%rsp)
	leaq	.LC653(%rip), %rax
	movq	%rax, 400(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L2015
.L1024:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	movslq	_ZZN5ImGui14ShowTestWindowEPbE13selected_fish(%rip), %rax
	leaq	.LC210(%rip), %rcx
	cmpl	$-1, %eax
	je	.L1025
	movq	368(%rsp,%rax,8), %rcx
.L1025:
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC655(%rip), %rcx
	call	_ZN5ImGui10BeginPopupEPKc
	testb	%al, %al
	jne	.L2016
.L1026:
	leaq	.LC657(%rip), %rcx
	movq	%rbp, %rdx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L2017
.L1029:
	leaq	.LC658(%rip), %rcx
	call	_ZN5ImGui10BeginPopupEPKc
	testb	%al, %al
	je	.L1030
	leaq	_ZZN5ImGui14ShowTestWindowEPbE7toggles(%rip), %rsi
	xorl	%ebx, %ebx
.L1031:
	movq	(%r15,%rbx,8), %rcx
	leaq	(%rsi,%rbx), %r8
	leaq	.LC43(%rip), %rdx
	movl	$1, %r9d
	incq	%rbx
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	cmpq	$5, %rbx
	jne	.L1031
	leaq	.LC659(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	je	.L1032
	leaq	.LC660(%rip), %rcx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	call	_ZN5ImGui7EndMenuEv
.L1032:
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC661(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	je	.L1033
	leaq	.LC662(%rip), %rcx
	call	_ZN5ImGui10SetTooltipEPKcz
.L1033:
	leaq	.LC663(%rip), %rcx
	movq	%rbp, %rdx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	je	.L1034
	leaq	.LC664(%rip), %rcx
	call	_ZN5ImGui9OpenPopupEPKc
.L1034:
	leaq	.LC664(%rip), %rcx
	call	_ZN5ImGui10BeginPopupEPKc
	testb	%al, %al
	je	.L1035
	xorl	%ebx, %ebx
.L1036:
	movq	(%r15,%rbx,8), %rcx
	leaq	(%rsi,%rbx), %r8
	leaq	.LC43(%rip), %rdx
	movl	$1, %r9d
	incq	%rbx
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	cmpq	$5, %rbx
	jne	.L1036
	leaq	.LC659(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	je	.L1037
	leaq	.LC660(%rip), %rcx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	call	_ZN5ImGui7EndMenuEv
.L1037:
	call	_ZN5ImGui8EndPopupEv
.L1035:
	.p2align 4,,5
	call	_ZN5ImGui8EndPopupEv
.L1030:
	leaq	.LC665(%rip), %rcx
	movq	%rbp, %rdx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L2018
.L1038:
	leaq	.LC666(%rip), %rcx
	call	_ZN5ImGui10BeginPopupEPKc
	testb	%al, %al
	jne	.L2019
.L1039:
	call	_ZN5ImGui7SpacingEv
	leaq	.LC667(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC668(%rip), %rcx
	call	_ZN5ImGui6PushIDEPKc
	leaq	.LC669(%rip), %rdx
	leaq	.LC670(%rip), %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC671(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	jne	.L2020
.L1040:
	call	_ZN5ImGui5PopIDEv
	.p2align 4,,6
	call	_ZN5ImGui9SeparatorEv
	.p2align 4,,5
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L1023
.L1950:
	.p2align 4,,8
	call	_ZN5ImGui5GetIOEv
	cvtss2sd	260(%rax), %xmm1
	leaq	.LC770(%rip), %rcx
	movq	%rax, %rsi
	cvtss2sd	256(%rax), %xmm0
	xorps	%xmm6, %xmm6
	xorl	%ebx, %ebx
	movsd	%xmm1, 80(%rsp)
	movq	80(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC771(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movss	.LC65(%rip), %xmm7
.L1102:
	movss	952(%rsi,%rbx,4), %xmm0
	ucomiss	%xmm6, %xmm0
	jb	.L1100
	movaps	%xmm6, %xmm0
	movaps	%xmm7, %xmm1
	call	_ZN5ImGui8SameLineEff
	cvtss2sd	952(%rsi,%rbx,4), %xmm0
	leaq	.LC772(%rip), %rcx
	movl	%ebx, %edx
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %r8
	movsd	%xmm0, %xmm2
	call	_ZN5ImGui4TextEPKcz
.L1100:
	incq	%rbx
	cmpq	$5, %rbx
	jne	.L1102
	leaq	.LC773(%rip), %rcx
	xorl	%ebx, %ebx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1104
.L1103:
	incl	%ebx
	cmpl	$5, %ebx
	je	.L2021
.L1104:
	xorl	%edx, %edx
	movl	%ebx, %ecx
	call	_ZN5ImGui14IsMouseClickedEib
	testb	%al, %al
	je	.L1103
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC774(%rip), %rcx
	movl	%ebx, %edx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1103
.L1948:
	xorps	%xmm6, %xmm6
	leaq	.LC757(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movl	%eax, %ebx
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC758(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movl	%eax, %edi
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC759(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%bl, %bl
	movl	%eax, %esi
	jne	.L2022
.L1090:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3buf_1(%rip), %rdx
	leaq	.LC751(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$128, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	call	_ZN5ImGui12IsItemActiveEv
	testb	%dil, %dil
	movzbl	%al, %ebx
	jne	.L2023
.L1091:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3buf_1(%rip), %rdx
	leaq	.LC752(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$128, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	call	_ZN5ImGui12IsItemActiveEv
	testb	%al, %al
	movl	$2, %eax
	cmovne	%eax, %ebx
	xorl	%ecx, %ecx
	call	_ZN5ImGui22PushAllowKeyboardFocusEb
	testb	%sil, %sil
	jne	.L2024
.L1093:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3buf_1(%rip), %rdx
	leaq	.LC760(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$128, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	call	_ZN5ImGui12IsItemActiveEv
	testb	%al, %al
	jne	.L1094
	.p2align 4,,6
	call	_ZN5ImGui21PopAllowKeyboardFocusEv
	testl	%ebx, %ebx
	.p2align 4,,4
	jne	.L1139
	leaq	.LC762(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
.L1096:
	leaq	.LC763(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	call	_ZN5ImGui7TreePopEv
	jmp	.L1089
.L1947:
	leaq	.LC750(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3buf_0(%rip), %rdx
	leaq	.LC751(%rip), %rcx
	xorl	%r9d, %r9d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$32, %r8d
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3buf_0(%rip), %rdx
	leaq	.LC752(%rip), %rcx
	xorl	%r9d, %r9d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$32, %r8d
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3buf_0(%rip), %rdx
	leaq	.LC753(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$32, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	xorl	%ecx, %ecx
	call	_ZN5ImGui22PushAllowKeyboardFocusEb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3buf_0(%rip), %rdx
	leaq	.LC754(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$32, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	call	_ZN5ImGui21PopAllowKeyboardFocusEv
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3buf_0(%rip), %rdx
	leaq	.LC755(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$32, %r8d
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	call	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv
	call	_ZN5ImGui7TreePopEv
	jmp	.L1088
.L1949:
	leaq	.LC765(%rip), %rcx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC766(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	call	_ZN5ImGui12IsItemActiveEv
	testb	%al, %al
	jne	.L2025
.L1098:
	.p2align 4,,6
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,6
	jmp	.L1097
.L2021:
	leaq	.LC775(%rip), %rcx
	xorl	%ebx, %ebx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1106
.L1105:
	incl	%ebx
	cmpl	$5, %ebx
	je	.L2026
.L1106:
	movl	%ebx, %ecx
	call	_ZN5ImGui20IsMouseDoubleClickedEi
	testb	%al, %al
	je	.L1105
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC774(%rip), %rcx
	movl	%ebx, %edx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1105
.L2026:
	leaq	.LC776(%rip), %rcx
	xorl	%ebx, %ebx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1108
.L1107:
	incl	%ebx
	cmpl	$5, %ebx
	je	.L2027
.L1108:
	movl	%ebx, %ecx
	call	_ZN5ImGui15IsMouseReleasedEi
	testb	%al, %al
	je	.L1107
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC774(%rip), %rcx
	movl	%ebx, %edx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1107
.L2027:
	cvtss2sd	272(%rsi), %xmm0
	leaq	.LC777(%rip), %rcx
	xorl	%ebx, %ebx
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC778(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movss	.LC65(%rip), %xmm7
	.p2align 4,,7
.L1111:
	movss	1012(%rsi,%rbx,4), %xmm0
	ucomiss	%xmm6, %xmm0
	jb	.L1109
	movaps	%xmm6, %xmm0
	movaps	%xmm7, %xmm1
	call	_ZN5ImGui8SameLineEff
	cvtss2sd	1012(%rsi,%rbx,4), %xmm0
	leaq	.LC779(%rip), %rcx
	movl	%ebx, %edx
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %r8
	movsd	%xmm0, %xmm2
	call	_ZN5ImGui4TextEPKcz
.L1109:
	incq	%rbx
	cmpq	$512, %rbx
	jne	.L1111
	leaq	.LC780(%rip), %rcx
	xorl	%ebx, %ebx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui4TextEPKcz
	movss	.LC65(%rip), %xmm7
	jmp	.L1113
	.p2align 4,,7
.L1112:
	incl	%ebx
	cmpl	$512, %ebx
	je	.L2028
.L1113:
	movl	$1, %edx
	movl	%ebx, %ecx
	call	_ZN5ImGui12IsKeyPressedEib
	testb	%al, %al
	je	.L1112
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC633(%rip), %rcx
	movl	%ebx, %edx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1112
.L2028:
	leaq	.LC781(%rip), %rcx
	xorl	%ebx, %ebx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui4TextEPKcz
	movss	.LC65(%rip), %xmm7
	jmp	.L1115
	.p2align 4,,7
.L1114:
	incl	%ebx
	cmpl	$512, %ebx
	je	.L2029
.L1115:
	movl	%ebx, %ecx
	call	_ZN5ImGui13IsKeyReleasedEi
	testb	%al, %al
	je	.L1114
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC633(%rip), %rcx
	movl	%ebx, %edx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1114
.L2029:
	cmpb	$0, 280(%rsi)
	leaq	.LC43(%rip), %rax
	leaq	.LC211(%rip), %rcx
	leaq	.LC212(%rip), %r9
	leaq	.LC213(%rip), %r8
	leaq	.LC214(%rip), %rdx
	leaq	.LC215(%rip), %rdi
	leaq	.LC216(%rip), %rbx
	cmove	%rax, %rcx
	cmpb	$0, 279(%rsi)
	cmove	%rax, %r9
	cmpb	$0, 278(%rsi)
	cmove	%rax, %r8
	cmpb	$0, 277(%rsi)
	movq	%rcx, 32(%rsp)
	leaq	.LC782(%rip), %rcx
	cmove	%rax, %rdx
	call	_ZN5ImGui4TextEPKcz
	cmpb	$0, 828(%rsi)
	movq	%rdi, %rdx
	leaq	.LC783(%rip), %rcx
	cmove	%rbx, %rdx
	call	_ZN5ImGui4TextEPKcz
	cmpb	$0, 829(%rsi)
	movq	%rdi, %rdx
	leaq	.LC784(%rip), %rcx
	cmove	%rbx, %rdx
	call	_ZN5ImGui4TextEPKcz
	cmpb	$0, 830(%rsi)
	leaq	.LC785(%rip), %rcx
	cmove	%rbx, %rdi
	movq	%rdi, %rdx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC786(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L2030
.L1123:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC787(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	call	_ZN5ImGui12IsItemActiveEv
	testb	%al, %al
	jne	.L2031
.L1124:
	.p2align 4,,6
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,6
	jmp	.L1099
.L1951:
	.p2align 4,,8
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,8
	jmp	.L1087
.L1958:
	xorl	%ecx, %ecx
	.p2align 4,,6
	call	_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle
	.p2align 4,,6
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,3
	jmp	.L862
.L1918:
	movslq	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rax
	cmpl	4+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %eax
	je	.L819
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rsi
	leal	1(%rax), %edx
.L820:
	leaq	(%rsi,%rax,8), %rax
	movl	%edx, _ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	movl	$1, %r12d
	movss	%xmm7, (%rax)
	movss	%xmm6, 4(%rax)
	call	_ZN5ImGui5GetIOEv
	cmpb	$0, 264(%rax)
	jne	.L818
	movb	$0, _ZZL29ShowExampleAppCustomRenderingPbE11adding_line(%rip)
	xorl	%r12d, %r12d
	jmp	.L818
.L1974:
	call	_ZN5ImGui6BulletEv
	leaq	.LC630(%rip), %rcx
	xorl	%ebp, %ebp
	call	_ZN5ImGui11TextWrappedEPKcz
	call	_ZN5ImGui6BulletEv
	leaq	.LC631(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC95(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5lines(%rip), %rdx
	leaq	.LC524(%rip), %rcx
	movl	$15, %r9d
	movl	$1, %r8d
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui9SliderIntEPKcPiiiS1_
	movss	.LC306(%rip), %xmm1
	movl	$6, %ecx
	call	_ZN5ImGui12PushStyleVarEif
	movq	%r15, %rdx
	movl	$5, %ecx
	movl	$0x40000000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	call	_ZN5ImGui29GetItemsLineHeightWithSpacingEv
	mulss	.LC436(%rip), %xmm0
	leaq	.LC245(%rip), %rcx
	movl	$2048, %r9d
	movl	$1, %r8d
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	addss	.LC107(%rip), %xmm0
	movss	%xmm0, 372(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	movl	_ZZN5ImGui14ShowTestWindowEPbE5lines(%rip), %eax
	movl	$10, 96(%rsp)
	movl	$10, 80(%rsp)
	testl	%eax, %eax
	jle	.L1007
	xorps	%xmm10, %xmm10
	leaq	256(%rsp), %rdi
	movss	.LC634(%rip), %xmm9
	movss	.LC96(%rip), %xmm8
	movss	.LC517(%rip), %xmm7
	movss	.LC65(%rip), %xmm11
	.p2align 4,,7
.L1845:
	testb	$1, %bpl
	movl	80(%rsp), %r12d
	cmove	96(%rsp), %r12d
	testl	%r12d, %r12d
	jle	.L1003
	leaq	288(%rsp), %rax
	leaq	240(%rsp), %rbx
	xorl	%r13d, %r13d
	imull	$1000, %ebp, %esi
	movq	%rax, 112(%rsp)
	.p2align 4,,7
.L1006:
	testl	%r13d, %r13d
	je	.L1004
	movaps	%xmm11, %xmm1
	movaps	%xmm10, %xmm0
	leaq	.LC208(%rip), %r14
	call	_ZN5ImGui8SameLineEff
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	movl	%r13d, %eax
	movl	$-2004318071, %edx
	movl	%r13d, %ecx
	imull	%edx
	sarl	$31, %ecx
	addl	%r13d, %edx
	sarl	$3, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	cmpl	%eax, %r13d
	je	.L1005
	movl	%r13d, %eax
	movl	$1431655766, %edx
	leaq	.LC207(%rip), %r14
	imull	%edx
	subl	%ecx, %edx
	leal	(%rdx,%rdx,2), %eax
	cmpl	%eax, %r13d
	je	.L1005
	movl	%r13d, %eax
	movl	$1717986919, %edx
	leaq	.LC209(%rip), %r14
	imull	%edx
	sarl	%edx
	subl	%ecx, %edx
	leal	(%rdx,%rdx,4), %eax
	cmpl	%eax, %r13d
	jne	.L2032
	.p2align 4,,7
.L1005:
	cvtsi2ss	%r13d, %xmm6
	movq	%rbx, %r9
	movq	%r15, 40(%rsp)
	movss	.LC437(%rip), %xmm2
	movq	%rdi, 32(%rsp)
	movaps	%xmm2, %xmm1
	incl	%esi
	mulss	%xmm9, %xmm6
	movaps	%xmm6, %xmm0
	call	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	movss	240(%rsp), %xmm1
	movq	%r15, %rdx
	movss	368(%rsp), %xmm0
	movl	$22, %ecx
	movss	%xmm1, 368(%rsp)
	movl	$0x3f800000, 380(%rsp)
	movss	256(%rsp), %xmm1
	movss	%xmm1, 372(%rsp)
	movss	%xmm0, 376(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movss	.LC438(%rip), %xmm2
	movq	%rbx, %r9
	movaps	%xmm2, %xmm1
	movq	%r15, 40(%rsp)
	movaps	%xmm6, %xmm0
	movq	%rdi, 32(%rsp)
	call	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	movss	240(%rsp), %xmm1
	movq	%r15, %rdx
	movss	368(%rsp), %xmm0
	movl	$23, %ecx
	movss	%xmm1, 368(%rsp)
	movl	$0x3f800000, 380(%rsp)
	movss	256(%rsp), %xmm1
	movss	%xmm1, 372(%rsp)
	movss	%xmm0, 376(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	movss	.LC439(%rip), %xmm2
	movq	%rbx, %r9
	movaps	%xmm2, %xmm1
	movq	%r15, 40(%rsp)
	movaps	%xmm6, %xmm0
	movq	%rdi, 32(%rsp)
	call	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_
	movss	240(%rsp), %xmm1
	movq	%r15, %rdx
	movss	368(%rsp), %xmm0
	movl	$24, %ecx
	movss	%xmm1, 368(%rsp)
	movl	$0x3f800000, 380(%rsp)
	movss	256(%rsp), %xmm1
	movss	%xmm1, 372(%rsp)
	movss	%xmm0, 376(%rsp)
	call	_ZN5ImGui14PushStyleColorEiRK6ImVec4
	leal	0(%r13,%rbp), %eax
	incl	%r13d
	cvtsi2ss	%eax, %xmm0
	call	sinf
	mulss	%xmm8, %xmm0
	movq	%r15, %rdx
	movq	%r14, %rcx
	movl	$0x00000000, 372(%rsp)
	addss	%xmm7, %xmm0
	movss	%xmm0, 368(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movl	$3, %ecx
	call	_ZN5ImGui13PopStyleColorEi
	call	_ZN5ImGui5PopIDEv
	cmpl	%r13d, %r12d
	jne	.L1006
	movl	_ZZN5ImGui14ShowTestWindowEPbE5lines(%rip), %eax
.L1003:
	incl	%ebp
	addl	$9, 80(%rsp)
	addl	$3, 96(%rsp)
	cmpl	%eax, %ebp
	jl	.L1845
.L1007:
	call	_ZN5ImGui8EndChildEv
	movl	$2, %ecx
	call	_ZN5ImGui11PopStyleVarEi
	leaq	.LC632(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	call	_ZN5ImGui12IsItemActiveEv
	testb	%al, %al
	jne	.L2033
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC636(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC637(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	call	_ZN5ImGui12IsItemActiveEv
	testb	%al, %al
	movss	.LC635(%rip), %xmm7
	jne	.L1136
.L1011:
	call	_ZN5ImGui7TreePopEv
	jmp	.L997
.L1973:
	leaq	.LC619(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5track(%rip), %rdx
	leaq	.LC620(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movss	.LC84(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	movss	.LC65(%rip), %xmm1
	movss	.LC621(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC623(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE10track_line(%rip), %rdx
	leaq	.LC622(%rip), %rcx
	xorl	%r9d, %r9d
	movss	.LC484(%rip), %xmm2
	movq	%rax, 40(%rsp)
	movl	$99, 32(%rsp)
	call	_ZN5ImGui7DragIntEPKcPifiiS1_
	leaq	.LC624(%rip), %rcx
	movq	%r15, %rdx
	orb	%al, _ZZN5ImGui14ShowTestWindowEPbE5track(%rip)
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movss	.LC65(%rip), %xmm1
	movl	%eax, %ebp
	movss	.LC621(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC626(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE12scroll_to_px(%rip), %rdx
	leaq	.LC625(%rip), %rcx
	xorl	%r9d, %r9d
	movss	.LC22(%rip), %xmm2
	movq	%rax, 40(%rsp)
	movl	$9999, 32(%rsp)
	call	_ZN5ImGui7DragIntEPKcPifiiS1_
	orl	%eax, %ebp
	call	_ZN5ImGui12PopItemWidthEv
	testb	%bpl, %bpl
	jne	.L2034
.L989:
	movss	.LC484(%rip), %xmm8
	xorl	%edi, %edi
	movaps	%xmm8, %xmm6
	movss	.LC627(%rip), %xmm7
.L996:
	testq	%rdi, %rdi
	movl	%edi, %esi
	je	.L990
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	call	_ZN5ImGui10BeginGroupEv
	cmpl	$1, %edi
	je	.L1169
	cmpl	$2, %edi
	.p2align 4,,2
	je	.L1170
	leaq	.LC206(%rip), %rdx
	leaq	.LC205(%rip), %rax
	cmpl	$3, %edi
	cmovne	%rax, %rdx
.L991:
	leaq	.LC167(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui14GetWindowWidthEv
	mulss	%xmm7, %xmm0
	movq	%rdi, %rcx
	movl	$0x43480000, 372(%rsp)
	movss	%xmm0, 368(%rsp)
	call	_ZN5ImGui5GetIDEPKv
	xorl	%r9d, %r9d
	movl	$1, %r8d
	movq	%r15, %rdx
	movl	%eax, %ecx
	call	_ZN5ImGui10BeginChildEjRK6ImVec2bi
	testb	%bpl, %bpl
	jne	.L2035
.L992:
	xorl	%ebx, %ebx
	jmp	.L995
	.p2align 4,,7
.L993:
	leaq	.LC628(%rip), %rcx
	movl	%ebx, %edx
	incl	%ebx
	call	_ZN5ImGui4TextEPKcz
	cmpl	$100, %ebx
	je	.L2036
.L995:
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE5track(%rip)
	je	.L993
	cmpl	%ebx, _ZZN5ImGui14ShowTestWindowEPbE10track_line(%rip)
	jne	.L993
	leaq	.LC628(%rip), %rdx
	movl	%ebx, %r8d
	movq	%r15, %rcx
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	incl	%ebx
	movl	$0x00000000, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	call	_ZN5ImGui11TextColoredERK6ImVec4PKcz
	cvtsi2ss	%esi, %xmm0
	mulss	%xmm6, %xmm0
	call	_ZN5ImGui13SetScrollHereEf
	cmpl	$100, %ebx
	jne	.L995
.L2036:
	incq	%rdi
	call	_ZN5ImGui8EndChildEv
	call	_ZN5ImGui8EndGroupEv
	cmpq	$5, %rdi
	jne	.L996
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,4
	jmp	.L988
.L2035:
	.p2align 4,,8
	call	_ZN5ImGui17GetCursorStartPosEv
	cvtsi2ss	%esi, %xmm1
	shrq	$32, %rax
	cvtsi2ss	_ZZN5ImGui14ShowTestWindowEPbE12scroll_to_px(%rip), %xmm0
	movq	%rax, 80(%rsp)
	addss	80(%rsp), %xmm0
	mulss	%xmm8, %xmm1
	call	_ZN5ImGui17SetScrollFromPosYEff
	jmp	.L992
.L1972:
	leaq	.LC597(%rip), %rcx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC598(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC599(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC13(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC13(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC599(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC598(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC600(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC13(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC599(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC13(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC601(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC599(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC13(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC602(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC603(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC604(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC605(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC606(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC607(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC608(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	call	_ZN5ImGui8GetStyleEv
	leaq	.LC609(%rip), %rcx
	movss	56(%rax), %xmm7
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC610(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	testb	%al, %al
	je	.L984
	xorl	%ebx, %ebx
.L985:
	leaq	.LC611(%rip), %rcx
	movl	%ebx, %edx
	incl	%ebx
	call	_ZN5ImGui10BulletTextEPKcz
	cmpl	$6, %ebx
	jne	.L985
	call	_ZN5ImGui7TreePopEv
.L984:
	.p2align 4,,5
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC612(%rip), %rcx
	call	_ZN5ImGui8TreeNodeEPKc
	xorps	%xmm0, %xmm0
	movl	%eax, %ebx
	movaps	%xmm7, %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC613(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%bl, %bl
	je	.L986
	xorl	%ebx, %ebx
.L987:
	leaq	.LC611(%rip), %rcx
	movl	%ebx, %edx
	incl	%ebx
	call	_ZN5ImGui10BulletTextEPKcz
	cmpl	$6, %ebx
	jne	.L987
	call	_ZN5ImGui7TreePopEv
.L986:
	leaq	.LC614(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC615(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC616(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC617(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	call	_ZN5ImGui7TreePopEv
	jmp	.L983
.L1971:
	leaq	.LC582(%rip), %rcx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui11TextWrappedEPKcz
	call	_ZN5ImGui10BeginGroupEv
	call	_ZN5ImGui10BeginGroupEv
	leaq	.LC583(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC584(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	call	_ZN5ImGui10BeginGroupEv
	leaq	.LC585(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	leaq	.LC586(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	call	_ZN5ImGui8EndGroupEv
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	.p2align 4,,3
	jne	.L2037
.L982:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	leaq	288(%rsp), %rbp
	leaq	256(%rsp), %rbx
	call	_ZN5ImGui8SameLineEff
	leaq	.LC588(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	call	_ZN5ImGui8EndGroupEv
	call	_ZN5ImGui15GetItemRectSizeEv
	leaq	.LC589(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$5, %r8d
	movss	.LC24(%rip), %xmm7
	movq	%r15, %rdx
	movq	%rax, 56(%rsp)
	movl	$4, 64(%rsp)
	movss	%xmm7, 368(%rsp)
	movl	$0x3f800000, 48(%rsp)
	movl	$0x00000000, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 256(%rsp)
	movl	$0x3e4ccccd, 372(%rsp)
	movl	$0x3f4ccccd, 376(%rsp)
	movl	$0x3f19999a, 380(%rsp)
	movl	$0x3e800000, 384(%rsp)
	call	_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i
	movss	256(%rsp), %xmm8
	movss	260(%rsp), %xmm9
	call	_ZN5ImGui8GetStyleEv
	movaps	%xmm8, %xmm0
	leaq	.LC590(%rip), %rcx
	movq	%rbp, %rdx
	subss	48(%rax), %xmm0
	movss	%xmm9, 292(%rsp)
	mulss	%xmm7, %xmm0
	movss	%xmm0, 288(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	movss	256(%rsp), %xmm8
	movss	260(%rsp), %xmm9
	call	_ZN5ImGui8GetStyleEv
	movaps	%xmm8, %xmm0
	leaq	.LC591(%rip), %rcx
	movq	%rbp, %rdx
	subss	48(%rax), %xmm0
	movss	%xmm9, 292(%rsp)
	mulss	%xmm0, %xmm7
	movss	%xmm7, 288(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	call	_ZN5ImGui8EndGroupEv
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC592(%rip), %rcx
	movq	%rbx, %rdx
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC593(%rip), %rcx
	movq	%rbx, %rdx
	call	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2
	leaq	.LC594(%rip), %rcx
	movq	%rbp, %r9
	xorl	%r8d, %r8d
	movl	$1, %edx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	leaq	.LC595(%rip), %rcx
	movq	%rbp, %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui13ListBoxFooterEv
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L981
.L1970:
	leaq	.LC560(%rip), %rcx
	xorps	%xmm6, %xmm6
	movl	$1, %edi
	leaq	_ZZN5ImGui14ShowTestWindowEPbE9selection(%rip), %rsi
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC561(%rip), %rcx
	movl	%edi, %ebp
	call	_ZN5ImGui4TextEPKcz
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC37(%rip), %rdx
	movq	%r15, %rcx
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	movss	%xmm6, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	call	_ZN5ImGui11TextColoredERK6ImVec4PKcz
	leaq	.LC562(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC96(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC37(%rip), %rdx
	movq	%r15, %rcx
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	movss	%xmm6, 376(%rsp)
	movl	$0x3f800000, 380(%rsp)
	call	_ZN5ImGui11TextColoredERK6ImVec4PKcz
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC563(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC13(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC12(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC564(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	leaq	.LC565(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC566(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC567(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC568(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movss	.LC65(%rip), %xmm1
	movss	.LC250(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC569(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movss	.LC65(%rip), %xmm1
	movss	.LC130(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC570(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC568(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movss	.LC65(%rip), %xmm1
	movss	.LC250(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC569(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	movss	.LC65(%rip), %xmm1
	movss	.LC130(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC570(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2c1(%rip), %rdx
	leaq	.LC571(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2c2(%rip), %rdx
	leaq	.LC572(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movaps	%xmm6, %xmm0
	xorl	%ebx, %ebx
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2c3(%rip), %rdx
	leaq	.LC573(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2c4(%rip), %rdx
	leaq	.LC574(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movss	.LC523(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	.LC0(%rip), %rax
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4item_0(%rip), %rdx
	leaq	.LC52(%rip), %rcx
	movl	$4, %r9d
	movq	%r15, %r8
	movl	$-1, 32(%rsp)
	movq	%rax, 368(%rsp)
	leaq	.LC1(%rip), %rax
	movq	%rax, 376(%rsp)
	leaq	.LC2(%rip), %rax
	movq	%rax, 384(%rsp)
	leaq	.LC3(%rip), %rax
	movq	%rax, 392(%rsp)
	call	_ZN5ImGui5ComboEPKcPiPKS1_ii
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC49(%rip), %rax
	movaps	%xmm6, %xmm2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2f0_0(%rip), %rdx
	leaq	.LC575(%rip), %rcx
	movl	$0x3f800000, 40(%rsp)
	movss	.LC488(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC49(%rip), %rax
	movaps	%xmm6, %xmm2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2f1_1(%rip), %rdx
	leaq	.LC576(%rip), %rcx
	movl	$0x3f800000, 40(%rsp)
	movss	.LC488(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC49(%rip), %rax
	movaps	%xmm6, %xmm2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE2f2_1(%rip), %rdx
	leaq	.LC577(%rip), %rcx
	movl	$0x3f800000, 40(%rsp)
	movss	.LC488(%rip), %xmm3
	movq	%rax, 32(%rsp)
	call	_ZN5ImGui11SliderFloatEPKcPfffS1_f
	call	_ZN5ImGui12PopItemWidthEv
	movss	.LC523(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	.LC578(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	testl	%ebx, %ebx
	movss	.LC65(%rip), %xmm7
	je	.L979
.L2039:
	movaps	%xmm7, %xmm1
	movaps	%xmm6, %xmm0
	call	_ZN5ImGui8SameLineEff
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	leaq	.LC43(%rip), %rcx
	movl	$4, %r9d
	movq	%r15, %r8
	movq	%rsi, %rdx
	movl	$-1, 32(%rsp)
	call	_ZN5ImGui7ListBoxEPKcPiPKS1_ii
	call	_ZN5ImGui5PopIDEv
	cmpl	$4, %ebp
	je	.L2038
.L980:
	incl	%ebx
	incl	%ebp
	addq	$4, %rsi
	testl	%ebx, %ebx
	jne	.L2039
.L979:
	xorl	%ecx, %ecx
	call	_ZN5ImGui6PushIDEi
	leaq	.LC43(%rip), %rcx
	movl	$4, %r9d
	movq	%r15, %r8
	movq	%rsi, %rdx
	movl	$-1, 32(%rsp)
	call	_ZN5ImGui7ListBoxEPKcPiPKS1_ii
	call	_ZN5ImGui5PopIDEv
	jmp	.L980
	.p2align 4,,7
.L1969:
	leaq	.LC544(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L2040
.L972:
	xorps	%xmm6, %xmm6
	movss	.LC84(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	movss	.LC22(%rip), %xmm7
	leaq	.LC49(%rip), %rax
	movaps	%xmm6, %xmm3
	leaq	_ZZN5ImGui14ShowTestWindowEPbE1f(%rip), %rdx
	movaps	%xmm7, %xmm2
	leaq	.LC546(%rip), %rcx
	movss	%xmm7, 48(%rsp)
	movq	%rax, 40(%rsp)
	movss	%xmm6, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	call	_ZN5ImGui12PopItemWidthEv
	leaq	.LC547(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L2041
.L973:
	.p2align 4,,6
	call	_ZN5ImGui14GetWindowWidthEv
	movss	.LC24(%rip), %xmm10
	mulss	%xmm10, %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	.LC49(%rip), %rax
	movaps	%xmm6, %xmm3
	movaps	%xmm7, %xmm2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE1f(%rip), %rdx
	leaq	.LC549(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	call	_ZN5ImGui12PopItemWidthEv
	leaq	.LC550(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L2042
.L974:
	.p2align 4,,6
	call	_ZN5ImGui26GetContentRegionAvailWidthEv
	mulss	%xmm10, %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	.LC49(%rip), %rax
	movaps	%xmm6, %xmm3
	movaps	%xmm7, %xmm2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE1f(%rip), %rdx
	leaq	.LC552(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	call	_ZN5ImGui12PopItemWidthEv
	leaq	.LC553(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L2043
.L975:
	movss	.LC244(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	.LC49(%rip), %rax
	movaps	%xmm6, %xmm3
	movaps	%xmm7, %xmm2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE1f(%rip), %rdx
	leaq	.LC555(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	call	_ZN5ImGui12PopItemWidthEv
	leaq	.LC556(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	jne	.L2044
.L976:
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	.LC49(%rip), %rax
	movaps	%xmm6, %xmm3
	movaps	%xmm7, %xmm2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE1f(%rip), %rdx
	leaq	.LC558(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0x00000000, 32(%rsp)
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L971
.L1968:
	leaq	.LC535(%rip), %rcx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC536(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm0
	movl	%eax, %ebx
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	movss	.LC84(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	leaq	_ZZN5ImGui14ShowTestWindowEPbE4line(%rip), %rdx
	leaq	.LC537(%rip), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$32, 32(%rsp)
	call	_ZN5ImGui8InputIntEPKcPiiii
	orl	%eax, %ebx
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui27GetWindowContentRegionWidthEv
	movss	.LC24(%rip), %xmm6
	leaq	.LC538(%rip), %rcx
	mulss	%xmm6, %xmm0
	xorl	%r8d, %r8d
	movl	$2048, %r9d
	movq	%r15, %rdx
	movl	$0x43960000, 372(%rsp)
	movss	%xmm0, 368(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	testb	%bl, %bl
	movl	$0, %ebx
	jne	.L967
	.p2align 4,,7
.L964:
	leaq	.LC539(%rip), %rcx
	movl	%ebx, %edx
	incl	%ebx
	call	_ZN5ImGui4TextEPKcz
	cmpl	$100, %ebx
	jne	.L964
.L963:
	call	_ZN5ImGui8EndChildEv
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	movss	.LC65(%rip), %xmm1
	movl	$1, %ebx
	leaq	288(%rsp), %rbp
	call	_ZN5ImGui8SameLineEff
	movss	.LC488(%rip), %xmm1
	movl	$4, %ecx
	call	_ZN5ImGui12PushStyleVarEif
	leaq	.LC540(%rip), %rcx
	xorl	%r9d, %r9d
	movl	$1, %r8d
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x43960000, 372(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	leaq	.LC541(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	$2, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	jmp	.L968
	.p2align 4,,7
.L970:
	incl	%ebx
	addl	$5731, %esi
.L968:
	cmpl	$51, %ebx
	je	.L2045
	leaq	.LC542(%rip), %rdx
	movl	%esi, %r8d
	movq	%r15, %rcx
	call	sprintf
	movq	%rbp, %rdx
	movq	%r15, %rcx
	movl	$0xbf800000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	cmpl	$100, %ebx
	jne	.L970
	call	_ZN5ImGui8EndChildEv
	movl	$1, %ecx
	call	_ZN5ImGui11PopStyleVarEi
	call	_ZN5ImGui7TreePopEv
	jmp	.L961
.L2047:
	movaps	%xmm6, %xmm0
	.p2align 4,,5
	call	_ZN5ImGui13SetScrollHereEf
	.p2align 4,,7
.L965:
	incl	%ebx
	cmpl	$100, %ebx
	je	.L2046
.L967:
	leaq	.LC539(%rip), %rcx
	movl	%ebx, %edx
	call	_ZN5ImGui4TextEPKcz
	cmpl	%ebx, _ZZN5ImGui14ShowTestWindowEPbE4line(%rip)
	jne	.L965
	jmp	.L2047
.L2038:
	leaq	288(%rsp), %rbp
	call	_ZN5ImGui12PopItemWidthEv
	leaq	.LC579(%rip), %rcx
	movq	%rbp, %rdx
	movl	$0x41f00000, 288(%rsp)
	movl	$0x41f00000, 292(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	movq	%rbp, %rcx
	call	_ZN5ImGui5DummyERK6ImVec2
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC580(%rip), %rcx
	movq	%rbp, %rdx
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	call	_ZN5ImGui7TreePopEv
	jmp	.L977
.L1955:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE9h_borders(%rip), %rdx
	leaq	.LC729(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	_ZZN5ImGui14ShowTestWindowEPbE9v_borders(%rip), %rdx
	leaq	.LC730(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movzbl	_ZZN5ImGui14ShowTestWindowEPbE9v_borders(%rip), %r8d
	xorl	%edx, %edx
	movl	$4, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE9h_borders(%rip)
	jne	.L2048
.L1073:
	movl	$97, %ebx
	.p2align 4,,7
.L1074:
	leaq	.LC731(%rip), %rcx
	movl	%ebx, %r9d
	movl	%ebx, %r8d
	movl	%ebx, %edx
	incl	%ebx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	cmpl	$105, %ebx
	jne	.L1074
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$1, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE9h_borders(%rip)
	jne	.L2049
.L1075:
	call	_ZN5ImGui7TreePopEv
	jmp	.L1072
.L1954:
	leaq	.LC724(%rip), %rdx
	movl	$1, %r8d
	movl	$2, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC725(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC726(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC725(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	leaq	.LC727(%rip), %rcx
	call	_ZN5ImGui11TextWrappedEPKcz
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	$1, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L1071
.L1953:
	leaq	.LC714(%rip), %rdx
	movl	$1, %r8d
	movl	$3, %ecx
	xorps	%xmm6, %xmm6
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC36(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC13(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC715(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC12(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm3
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3foo(%rip), %rdx
	leaq	.LC716(%rip), %rcx
	movss	.LC634(%rip), %xmm2
	movl	$0, 40(%rsp)
	movl	$3, 32(%rsp)
	call	_ZN5ImGui10InputFloatEPKcPfffii
	leaq	.LC717(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC37(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC564(%rip), %rcx
	movq	%r15, %rdx
	movss	%xmm6, 368(%rsp)
	movss	%xmm6, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	movaps	%xmm6, %xmm3
	leaq	_ZZN5ImGui14ShowTestWindowEPbE3bar(%rip), %rdx
	leaq	.LC718(%rip), %rcx
	movss	.LC634(%rip), %xmm2
	movl	$0, 40(%rsp)
	movl	$3, 32(%rsp)
	call	_ZN5ImGui10InputFloatEPKcPfffii
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC719(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	jne	.L2050
.L1068:
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC721(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	jne	.L2051
.L1069:
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC722(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui16CollapsingHeaderEPKci
	testb	%al, %al
	jne	.L2052
.L1070:
	call	_ZN5ImGui10NextColumnEv
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	$1, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L1067
.L1952:
	leaq	.LC697(%rip), %rcx
	leaq	288(%rsp), %rbp
	xorl	%ebx, %ebx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC698(%rip), %rdx
	xorl	%r8d, %r8d
	movl	$3, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	.p2align 4,,7
.L1064:
	leaq	.LC414(%rip), %rdx
	movl	%ebx, %r8d
	movq	%r15, %rcx
	incl	%ebx
	call	sprintf
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbp, %r9
	movq	%r15, %rcx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	cmpl	$14, %ebx
	jne	.L1064
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	$1, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC699(%rip), %rcx
	xorl	%edi, %edi
	leaq	256(%rsp), %rbx
	leaq	240(%rsp), %rsi
	movq	%rdi, %r12
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC700(%rip), %rdx
	movl	$1, %r8d
	movl	$4, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC701(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC702(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC703(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC704(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC705(%rip), %rax
	movq	%rax, 256(%rsp)
	leaq	.LC706(%rip), %rax
	movq	%rax, 264(%rsp)
	leaq	.LC707(%rip), %rax
	movq	%rax, 272(%rsp)
	leaq	.LC708(%rip), %rax
	movq	%rax, 288(%rsp)
	leaq	.LC709(%rip), %rax
	movq	%rax, 296(%rsp)
	leaq	.LC710(%rip), %rax
	movq	%rax, 304(%rsp)
.L1066:
	leaq	.LC711(%rip), %rdx
	movl	%r12d, %r8d
	movq	%r15, %rcx
	call	sprintf
	xorl	%edx, %edx
	cmpl	%r12d, _ZZN5ImGui14ShowTestWindowEPbE8selected_3(%rip)
	movq	%rsi, %r9
	movl	$2, %r8d
	movq	%r15, %rcx
	movl	$0x00000000, 240(%rsp)
	movl	$0x00000000, 244(%rsp)
	sete	%dl
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	testb	%al, %al
	je	.L1065
	movl	%r12d, _ZZN5ImGui14ShowTestWindowEPbE8selected_3(%rip)
.L1065:
	call	_ZN5ImGui10NextColumnEv
	movq	(%rbx,%r12,8), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	movq	0(%rbp,%r12,8), %rcx
	incq	%r12
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC712(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	cmpq	$3, %r12
	jne	.L1066
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	$1, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui9SeparatorEv
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L1063
.L1916:
	leaq	_ZGVZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L806
	leaq	_ZGVZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rcx
	movl	$0, 4+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	movl	$0, _ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	movq	$0, 8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	call	__cxa_guard_release
	leaq	__tcf_2(%rip), %rcx
	call	atexit
	jmp	.L806
.L1967:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE16show_app_metrics(%rip), %r8
	leaq	.LC337(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE21show_app_style_editor(%rip), %r8
	leaq	.LC314(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE14show_app_about(%rip), %r8
	leaq	.LC315(%rip), %rcx
	movl	$1, %r9d
	xorl	%edx, %edx
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	call	_ZN5ImGui7EndMenuEv
	jmp	.L857
.L1966:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE22show_app_main_menu_bar(%rip), %r8
	leaq	.LC326(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE16show_app_console(%rip), %r8
	leaq	.LC327(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE12show_app_log(%rip), %r8
	leaq	.LC267(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE15show_app_layout(%rip), %r8
	leaq	.LC328(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE24show_app_property_editor(%rip), %r8
	leaq	.LC329(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE18show_app_long_text(%rip), %r8
	leaq	.LC330(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE20show_app_auto_resize(%rip), %r8
	leaq	.LC331(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE27show_app_constrained_resize(%rip), %r8
	leaq	.LC332(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE22show_app_fixed_overlay(%rip), %r8
	leaq	.LC333(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE34show_app_manipulating_window_title(%rip), %r8
	leaq	.LC334(%rip), %rcx
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	leaq	_ZZN5ImGui14ShowTestWindowEPbE25show_app_custom_rendering(%rip), %r8
	leaq	.LC335(%rip), %rcx
	movl	$1, %r9d
	xorl	%edx, %edx
	call	_ZN5ImGui8MenuItemEPKcS1_Pbb
	call	_ZN5ImGui7EndMenuEv
	jmp	.L856
.L1965:
	.p2align 4,,8
	call	_ZL19ShowExampleMenuFilev
	.p2align 4,,8
	call	_ZN5ImGui7EndMenuEv
	.p2align 4,,5
	jmp	.L855
.L2004:
	movss	.LC185(%rip), %xmm2
	movss	_ZZN5ImGui14ShowTestWindowEPbE12progress_dir(%rip), %xmm1
	movss	.LC201(%rip), %xmm0
	xorps	%xmm2, %xmm1
	movss	%xmm0, _ZZN5ImGui14ShowTestWindowEPbE8progress(%rip)
	movss	%xmm1, _ZZN5ImGui14ShowTestWindowEPbE12progress_dir(%rip)
	jmp	.L954
.L1920:
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %eax
	testl	%eax, %eax
	je	.L824
	testl	%eax, %eax
	movb	$0, _ZZL29ShowExampleAppCustomRenderingPbE11adding_line(%rip)
	jle	.L2053
.L1133:
	decl	%eax
	testl	%eax, %eax
	movl	%eax, _ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	jle	.L2054
.L832:
	movss	208(%rsp), %xmm0
	decl	%eax
	movq	192(%rsp), %rdx
	addss	192(%rsp), %xmm0
	movl	%eax, _ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	xorl	%r9d, %r9d
	movq	%rdi, %rcx
	movss	%xmm0, 80(%rsp)
	movl	80(%rsp), %r8d
	movss	212(%rsp), %xmm0
	addss	196(%rsp), %xmm0
	movss	%xmm0, 96(%rsp)
	movq	96(%rsp), %rax
	salq	$32, %rax
	orq	%rax, %r8
	call	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b
.LEHE24:
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %ecx
	cmpl	$1, %ecx
	jle	.L833
	xorl	%r12d, %r12d
	jmp	.L834
.L1917:
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %eax
	testl	%eax, %eax
	jle	.L2055
.L812:
	decl	%eax
	testl	%eax, %eax
	movl	%eax, _ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	jle	.L2056
.L813:
	decl	%eax
	movl	%eax, _ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	jmp	.L810
.L1935:
	movl	$8, %ecx
	movl	$0, 4+_ZZL17ShowExampleAppLogPbE3log(%rip)
	movl	$0, _ZZL17ShowExampleAppLogPbE3log(%rip)
	movq	$0, 8+_ZZL17ShowExampleAppLogPbE3log(%rip)
.LEHB25:
	call	_ZN5ImGui8MemAllocEy
	movq	8+_ZZL17ShowExampleAppLogPbE3log(%rip), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	je	.L646
	movslq	_ZZL17ShowExampleAppLogPbE3log(%rip), %r8
	movq	%rax, %rcx
	call	memcpy
	movq	8+_ZZL17ShowExampleAppLogPbE3log(%rip), %rdx
.L646:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
.LEHE25:
	movslq	_ZZL17ShowExampleAppLogPbE3log(%rip), %rax
	leaq	16+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	movq	%rbx, 8+_ZZL17ShowExampleAppLogPbE3log(%rip)
	movl	$8, 4+_ZZL17ShowExampleAppLogPbE3log(%rip)
	leal	1(%rax), %edx
	movl	%edx, _ZZL17ShowExampleAppLogPbE3log(%rip)
	leaq	.LC43(%rip), %rdx
	movb	$0, (%rbx,%rax)
.LEHB26:
	call	_ZN15ImGuiTextFilterC1EPKc
.LEHE26:
	leaq	_ZGVZL17ShowExampleAppLogPbE3log(%rip), %rcx
	movl	$0, 300+_ZZL17ShowExampleAppLogPbE3log(%rip)
	movl	$0, 296+_ZZL17ShowExampleAppLogPbE3log(%rip)
	movq	$0, 304+_ZZL17ShowExampleAppLogPbE3log(%rip)
	call	__cxa_guard_release
	leaq	__tcf_5(%rip), %rcx
	call	atexit
	jmp	.L651
.L1941:
	movl	$8, %ecx
	movl	$0, 4+_ZZL22ShowExampleAppLongTextPbE3log(%rip)
	movl	$0, _ZZL22ShowExampleAppLongTextPbE3log(%rip)
	movq	$0, 8+_ZZL22ShowExampleAppLongTextPbE3log(%rip)
.LEHB27:
	call	_ZN5ImGui8MemAllocEy
	movq	8+_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rdx
	movq	%rax, %rbx
	testq	%rdx, %rdx
	je	.L748
	movslq	_ZZL22ShowExampleAppLongTextPbE3log(%rip), %r8
	movq	%rax, %rcx
	call	memcpy
	movq	8+_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rdx
.L748:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
.LEHE27:
	movslq	_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rax
	leaq	_ZGVZL22ShowExampleAppLongTextPbE3log(%rip), %rcx
	movq	%rbx, 8+_ZZL22ShowExampleAppLongTextPbE3log(%rip)
	movl	$8, 4+_ZZL22ShowExampleAppLongTextPbE3log(%rip)
	leal	1(%rax), %edx
	movl	%edx, _ZZL22ShowExampleAppLongTextPbE3log(%rip)
	movb	$0, (%rbx,%rax)
	call	__cxa_guard_release
	leaq	__tcf_6(%rip), %rcx
	call	atexit
	jmp	.L749
.L1094:
	movl	$3, %ebx
.LEHB28:
	call	_ZN5ImGui21PopAllowKeyboardFocusEv
.L1139:
	leaq	.LC761(%rip), %rcx
	movl	%ebx, %edx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1096
.L1984:
	testl	%eax, %eax
	movl	$8, %ebx
	je	.L756
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	addl	%eax, %ebx
.L756:
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	xorl	%esi, %esi
	cmpl	%ebx, %eax
	jge	.L755
	movslq	%ebx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8+_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	je	.L757
	movslq	_ZZL22ShowExampleAppLongTextPbE3log(%rip), %r8
	movq	%rax, %rcx
	call	memcpy
	movq	8+_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rdx
.L757:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movslq	_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rax
	movq	%rsi, 8+_ZZL22ShowExampleAppLongTextPbE3log(%rip)
	movl	%ebx, 4+_ZZL22ShowExampleAppLongTextPbE3log(%rip)
	leal	1(%rax), %edx
	jmp	.L755
.L2034:
	movb	$0, _ZZN5ImGui14ShowTestWindowEPbE5track(%rip)
	jmp	.L989
.L819:
	testl	%eax, %eax
	leal	1(%rax), %edx
	movl	$8, %ebx
	je	.L821
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	addl	%eax, %ebx
.L821:
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%ebx, %eax
	jl	.L822
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rsi
	jmp	.L820
.L2044:
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC557(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L976
.L2041:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC548(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L973
.L2040:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC545(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L972
.L2043:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC554(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L975
.L2042:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC551(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
	.p2align 4,,5
	jmp	.L974
.L2017:
	leaq	.LC658(%rip), %rcx
	call	_ZN5ImGui9OpenPopupEPKc
	jmp	.L1029
.L2022:
	xorl	%ecx, %ecx
	call	_ZN5ImGui20SetKeyboardFocusHereEi
	.p2align 4,,6
	jmp	.L1090
.L2020:
	.p2align 4,,6
	call	_ZL19ShowExampleMenuFilev
	.p2align 4,,8
	call	_ZN5ImGui7EndMenuEv
	.p2align 4,,5
	jmp	.L1040
.L2019:
	.p2align 4,,8
	call	_ZL19ShowExampleMenuFilev
	.p2align 4,,8
	call	_ZN5ImGui8EndPopupEv
	.p2align 4,,5
	jmp	.L1039
.L2018:
	leaq	.LC666(%rip), %rcx
	call	_ZN5ImGui9OpenPopupEPKc
	jmp	.L1038
.L2016:
	leaq	.LC656(%rip), %rcx
	xorl	%ebx, %ebx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui9SeparatorEv
.L1028:
	movq	(%r15,%rbx,8), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbp, %r9
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	testb	%al, %al
	je	.L1027
	movl	%ebx, _ZZN5ImGui14ShowTestWindowEPbE13selected_fish(%rip)
.L1027:
	incq	%rbx
	cmpq	$5, %rbx
	jne	.L1028
	call	_ZN5ImGui8EndPopupEv
	jmp	.L1026
.L2033:
	.p2align 4,,8
	call	_ZN5ImGui5GetIOEv
	movss	.LC185(%rip), %xmm6
	movss	8(%rax), %xmm0
	movss	.LC65(%rip), %xmm1
	xorps	%xmm0, %xmm6
	movss	.LC635(%rip), %xmm7
	xorps	%xmm0, %xmm0
	mulss	%xmm7, %xmm6
	call	_ZN5ImGui8SameLineEff
	leaq	.LC636(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC637(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	call	_ZN5ImGui12IsItemActiveEv
	testb	%al, %al
	jne	.L1136
.L1009:
	ucomiss	.LC23(%rip), %xmm6
	jp	.L1010
	je	.L1011
.L1010:
	leaq	.LC245(%rip), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi
	call	_ZN5ImGui10GetScrollXEv
	addss	%xmm6, %xmm0
	call	_ZN5ImGui10SetScrollXEf
	call	_ZN5ImGui3EndEv
	jmp	.L1011
.L2015:
	leaq	.LC655(%rip), %rcx
	call	_ZN5ImGui9OpenPopupEPKc
	jmp	.L1024
.L2014:
	leaq	.LC679(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	_ZZN5ImGui14ShowTestWindowEPbE5color(%rip), %rdx
	leaq	.LC680(%rip), %rcx
	call	_ZN5ImGui10ColorEdit3EPKcPf
	leaq	.LC249(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L2057
.L1049:
	call	_ZN5ImGui8EndPopupEv
	.p2align 4,,6
	jmp	.L1048
.L2013:
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE5color(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L1046
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE5color(%rip), %rcx
	movl	$0x3f4ccccd, _ZZN5ImGui14ShowTestWindowEPbE5color(%rip)
	movl	$0x3f000000, 4+_ZZN5ImGui14ShowTestWindowEPbE5color(%rip)
	movl	$0x3f800000, 8+_ZZN5ImGui14ShowTestWindowEPbE5color(%rip)
	movl	$0x3f800000, 12+_ZZN5ImGui14ShowTestWindowEPbE5color(%rip)
	call	__cxa_guard_release
	jmp	.L1046
.L2012:
	leaq	.LC675(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r15, %r9
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	testb	%al, %al
	je	.L1043
	movl	$0x00000000, _ZZN5ImGui14ShowTestWindowEPbE5value(%rip)
.L1043:
	leaq	.LC676(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r15, %r9
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	testb	%al, %al
	je	.L1044
	movl	$0x40490e56, _ZZN5ImGui14ShowTestWindowEPbE5value(%rip)
.L1044:
	call	_ZN5ImGui8EndPopupEv
	jmp	.L1042
.L2031:
	xorl	%ecx, %ecx
	call	_ZN5ImGui22CaptureKeyboardFromAppEb
	.p2align 4,,6
	jmp	.L1124
.L1957:
	leaq	.LC736(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	call	_ZN5ImGui7TreePopEv
	jmp	.L1079
.L1964:
	leaq	.LC692(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC693(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L2058
.L1057:
	leaq	.LC694(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	_ZN5ImGui15BeginPopupModalEPKcPbi
	testb	%al, %al
	jne	.L2059
.L1058:
	leaq	.LC249(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L2060
.L1060:
	call	_ZN5ImGui8EndPopupEv
	.p2align 4,,6
	jmp	.L1056
.L1963:
	leaq	.LC691(%rip), %rcx
	call	_ZN5ImGui9OpenPopupEPKc
	jmp	.L1055
.L1962:
	leaq	.LC686(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui9SeparatorEv
	movq	%r15, %rdx
	movl	$5, %ecx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui12PushStyleVarEiRK6ImVec2
	leaq	_ZZN5ImGui14ShowTestWindowEPbE21dont_ask_me_next_time(%rip), %rdx
	leaq	.LC687(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	movl	$1, %ecx
	call	_ZN5ImGui11PopStyleVarEi
	leaq	.LC688(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x42f00000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L2061
.L1053:
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC689(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x42f00000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L2062
.L1054:
	call	_ZN5ImGui8EndPopupEv
	.p2align 4,,6
	jmp	.L1052
.L1956:
	leaq	.LC37(%rip), %rcx
	call	_ZN5ImGui10BulletTextEPKcz
	call	_ZN5ImGui7TreePopEv
	jmp	.L1078
.L2024:
	xorl	%ecx, %ecx
	.p2align 4,,6
	call	_ZN5ImGui20SetKeyboardFocusHereEi
	.p2align 4,,6
	jmp	.L1093
.L2023:
	xorl	%ecx, %ecx
	call	_ZN5ImGui20SetKeyboardFocusHereEi
	.p2align 4,,6
	jmp	.L1091
.L2030:
	movl	$1, %ecx
	call	_ZN5ImGui22CaptureKeyboardFromAppEb
	.p2align 4,,3
	jmp	.L1123
.L2025:
	call	_ZN5ImGui17GetWindowDrawListEv
	movq	%rax, %rcx
	movq	%rax, %rbx
	leaq	288(%rsp), %rbp
	call	_ZN10ImDrawList22PushClipRectFullScreenEv
	call	_ZN5ImGui8GetStyleEv
	movq	488(%rax), %rdx
	movq	480(%rax), %rax
	movq	%r15, %rcx
	movq	%rdx, 376(%rsp)
	movq	%rax, 368(%rsp)
	call	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, %edi
	call	_ZN5ImGui5GetIOEv
	movq	%rax, %rsi
	call	_ZN5ImGui5GetIOEv
	leaq	256(%rax), %rcx
	movss	.LC767(%rip), %xmm2
	movl	$1, %edx
	call	_ZN5ImGui24CalcItemRectClosestPointERK6ImVec2bf
	leaq	256(%rsi), %r8
	movl	%edi, %r9d
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movl	$0x40800000, 32(%rsp)
	movq	%rax, 288(%rsp)
	call	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf
	movq	%rbx, %rcx
	call	_ZN10ImDrawList11PopClipRectEv
	movaps	%xmm6, %xmm1
	xorl	%ecx, %ecx
	call	_ZN5ImGui17GetMouseDragDeltaEif
	xorl	%ecx, %ecx
	movss	.LC65(%rip), %xmm1
	movq	%rax, %rbx
	call	_ZN5ImGui17GetMouseDragDeltaEif
	movq	%rax, %rsi
	call	_ZN5ImGui5GetIOEv
	movaps	%xmm6, %xmm0
	movss	.LC65(%rip), %xmm1
	movss	852(%rax), %xmm7
	movss	856(%rax), %xmm8
	call	_ZN5ImGui8SameLineEff
	movq	%rbx, %rax
	movl	%esi, 80(%rsp)
	cvtss2sd	%xmm8, %xmm5
	shrq	$32, %rax
	movd	80(%rsp), %xmm2
	shrq	$32, %rsi
	movq	%rax, 80(%rsp)
	movsd	%xmm5, 48(%rsp)
	leaq	.LC768(%rip), %rcx
	cvtss2sd	80(%rsp), %xmm1
	movl	%ebx, 80(%rsp)
	cvtss2sd	%xmm7, %xmm5
	movd	80(%rsp), %xmm0
	movq	%rsi, 80(%rsp)
	movsd	%xmm5, 40(%rsp)
	cvtss2sd	80(%rsp), %xmm5
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm2, 80(%rsp)
	movq	80(%rsp), %r9
	movsd	%xmm2, %xmm3
	movsd	%xmm1, 80(%rsp)
	movq	80(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rdx
	movsd	%xmm0, %xmm1
	movsd	%xmm5, 32(%rsp)
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1098
.L2037:
	leaq	.LC587(%rip), %rcx
	call	_ZN5ImGui10SetTooltipEPKcz
	jmp	.L982
.L1961:
	leaq	.LC685(%rip), %rcx
	call	_ZN5ImGui9OpenPopupEPKc
	jmp	.L1051
.L2052:
	leaq	.LC720(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1070
.L2051:
	leaq	.LC720(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1069
.L2050:
	leaq	.LC720(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	jmp	.L1068
.L2049:
	call	_ZN5ImGui9SeparatorEv
	.p2align 4,,8
	jmp	.L1075
.L2048:
	.p2align 4,,8
	call	_ZN5ImGui9SeparatorEv
	.p2align 4,,8
	jmp	.L1073
	.p2align 4,,7
.L2032:
	movq	112(%rsp), %r14
	leaq	.LC633(%rip), %rdx
	movl	%r13d, %r8d
	movq	%r14, %rcx
	call	sprintf
	jmp	.L1005
.L911:
	xorb	$1, 1(%r13)
	jmp	.L910
.L2002:
	leaq	.LC354(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	xorps	%xmm0, %xmm0
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui8SameLineEff
	leaq	.LC355(%rip), %rcx
	call	_ZN5ImGui11SmallButtonEPKc
	testb	%al, %al
	jne	.L2063
.L868:
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,6
	jmp	.L867
.L1914:
	leaq	_ZGVZL29ShowExampleAppCustomRenderingPbE3col(%rip), %rcx
	movl	$0x3f800000, _ZZL29ShowExampleAppCustomRenderingPbE3col(%rip)
	movl	$0x3f800000, 4+_ZZL29ShowExampleAppCustomRenderingPbE3col(%rip)
	movl	$0x3ecccccd, 8+_ZZL29ShowExampleAppCustomRenderingPbE3col(%rip)
	movl	$0x3f800000, 12+_ZZL29ShowExampleAppCustomRenderingPbE3col(%rip)
	call	__cxa_guard_release
	jmp	.L801
.L1928:
	leaq	288(%rsp), %rbp
	leaq	_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints6SquareEP31ImGuiSizeConstraintCallbackData(%rip), %r8
	xorl	%r9d, %r9d
	movq	%r15, %rcx
	movl	$0x7f7fffff, 288(%rsp)
	movl	$0x7f7fffff, 292(%rsp)
	movq	%rbp, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP31ImGuiSizeConstraintCallbackDataEPv
	movl	_ZZL31ShowExampleAppConstrainedResizePbE4type(%rip), %eax
	jmp	.L788
.L1929:
	leaq	288(%rsp), %rbp
	leaq	_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints4StepEP31ImGuiSizeConstraintCallbackData(%rip), %r8
	movl	$100, %r9d
	movq	%r15, %rcx
	movl	$0x7f7fffff, 288(%rsp)
	movl	$0x7f7fffff, 292(%rsp)
	movq	%rbp, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP31ImGuiSizeConstraintCallbackDataEPv
	jmp	.L789
.L1926:
	leaq	288(%rsp), %rbp
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movl	$0x7f7fffff, 288(%rsp)
	movl	$0x7f7fffff, 292(%rsp)
	movq	%rbp, %rdx
	movl	$0x42c80000, 368(%rsp)
	movl	$0x42c80000, 372(%rsp)
	call	_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP31ImGuiSizeConstraintCallbackDataEPv
	movl	_ZZL31ShowExampleAppConstrainedResizePbE4type(%rip), %eax
	jmp	.L786
.L1927:
	leaq	288(%rsp), %rbp
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movl	$0x43c80000, 288(%rsp)
	movl	$0x7f7fffff, 292(%rsp)
	movq	%rbp, %rdx
	movl	$0x43960000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP31ImGuiSizeConstraintCallbackDataEPv
	movl	_ZZL31ShowExampleAppConstrainedResizePbE4type(%rip), %eax
	jmp	.L787
.L1925:
	leaq	288(%rsp), %rbp
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	movl	$0x7f7fffff, 288(%rsp)
	movl	$0xbf800000, 292(%rsp)
	movq	%rbp, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0xbf800000, 372(%rsp)
	call	_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP31ImGuiSizeConstraintCallbackDataEPv
	movl	_ZZL31ShowExampleAppConstrainedResizePbE4type(%rip), %eax
	jmp	.L785
.L1982:
	xorl	%edx, %edx
	movq	%rbp, %rcx
	movl	$0x44480000, 288(%rsp)
	movl	$0x43480000, 292(%rsp)
	call	_ZN5ImGui13SetWindowSizeERK6ImVec2i
	jmp	.L793
.L1981:
	xorl	%edx, %edx
	movq	%rbp, %rcx
	movl	$0x43fa0000, 288(%rsp)
	movl	$0x43fa0000, 292(%rsp)
	call	_ZN5ImGui13SetWindowSizeERK6ImVec2i
	jmp	.L792
.L1980:
	xorl	%edx, %edx
	movq	%rbp, %rcx
	movl	$0x43480000, 288(%rsp)
	movl	$0x43480000, 292(%rsp)
	call	_ZN5ImGui13SetWindowSizeERK6ImVec2i
	jmp	.L791
.L1932:
	leaq	.LC219(%rip), %rdx
	leaq	.LC220(%rip), %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC221(%rip), %rdx
	leaq	.LC222(%rip), %rcx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	call	_ZN5ImGui9SeparatorEv
	leaq	.LC223(%rip), %rdx
	leaq	.LC224(%rip), %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC225(%rip), %rdx
	leaq	.LC226(%rip), %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	leaq	.LC227(%rip), %rdx
	leaq	.LC228(%rip), %rcx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	call	_ZN5ImGui7EndMenuEv
	jmp	.L623
.L2006:
	testl	%eax, %eax
	movl	$8, %ebx
	je	.L661
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	addl	%eax, %ebx
.L661:
	cmpl	%ebx, %ecx
	cmovge	%ecx, %ebx
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	jge	.L660
	movslq	%ebx, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8+_ZZL17ShowExampleAppLogPbE3log(%rip), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	je	.L662
	movslq	_ZZL17ShowExampleAppLogPbE3log(%rip), %r8
	movq	%rax, %rcx
	call	memcpy
	movq	8+_ZZL17ShowExampleAppLogPbE3log(%rip), %rdx
.L662:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movslq	_ZZL17ShowExampleAppLogPbE3log(%rip), %rax
	movq	%rsi, 8+_ZZL17ShowExampleAppLogPbE3log(%rip)
	movq	%rsi, %rdx
	movl	%ebx, 4+_ZZL17ShowExampleAppLogPbE3log(%rip)
	leal	1(%rax), %ecx
	jmp	.L660
.L2011:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %ebx
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%bl, %bl
	je	.L696
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %r12
	movq	%r15, 168(%rsp)
	xorl	%r14d, %r14d
	movl	%edi, 176(%rsp)
	movq	%r12, %r15
	jmp	.L719
.L717:
	leaq	.LC49(%rip), %rax
	movss	%xmm6, 32(%rsp)
	leaq	.LC66(%rip), %rcx
	movaps	%xmm6, %xmm3
	movl	$0x3f800000, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	%r15, %rdx
	movss	.LC67(%rip), %xmm2
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L718:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L716:
	incl	%r14d
	addq	$4, %r15
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %r14d
	je	.L2064
.L719:
	movl	%r14d, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %r14d
	jle	.L2065
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%r14d, %r8d
	movq	%r13, %rcx
	xorps	%xmm6, %xmm6
	call	sprintf
	call	_ZN5ImGui6BulletEv
	leaq	288(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r13, %rcx
	movss	%xmm6, 288(%rsp)
	movss	%xmm6, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %r14d
	jle	.L717
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%r15, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L718
.L2064:
	movl	176(%rsp), %edi
	movq	168(%rsp), %r15
	call	_ZN5ImGui7TreePopEv
.L696:
	call	_ZN5ImGui5PopIDEv
	jmp	.L720
.L1931:
	.p2align 4,,8
	call	_ZL19ShowExampleMenuFilev
	.p2align 4,,8
	call	_ZN5ImGui7EndMenuEv
	.p2align 4,,5
	jmp	.L622
.L1979:
	leaq	.LC217(%rip), %rcx
	movl	$1, %edx
	call	_ZN5ImGui9BeginMenuEPKcb
	testb	%al, %al
	jne	.L2066
.L677:
	call	_ZN5ImGui10EndMenuBarEv
	.p2align 4,,6
	jmp	.L676
.L1975:
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE4size(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L1014
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE4size(%rip), %rcx
	movl	$0x42c80000, _ZZN5ImGui14ShowTestWindowEPbE4size(%rip)
	movl	$0x42c80000, 4+_ZZN5ImGui14ShowTestWindowEPbE4size(%rip)
	call	__cxa_guard_release
	jmp	.L1014
.L881:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE14closable_group(%rip), %rdx
	leaq	.LC367(%rip), %rcx
	xorl	%ebx, %ebx
	call	_ZN5ImGui8CheckboxEPKcPb
.L885:
	leaq	.LC368(%rip), %rcx
	movl	%ebx, %edx
	incl	%ebx
	call	_ZN5ImGui4TextEPKcz
	cmpl	$5, %ebx
	jne	.L885
	jmp	.L884
.L1919:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	_ZN5ImGui14IsMouseClickedEib
	testb	%al, %al
	.p2align 4,,2
	je	.L1132
	movslq	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rax
	cmpl	4+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %eax
	je	.L1131
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rsi
	leal	1(%rax), %edx
.L829:
	leaq	(%rsi,%rax,8), %rax
	movl	%edx, _ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	movb	$1, _ZZL29ShowExampleAppCustomRenderingPbE11adding_line(%rip)
	movss	%xmm7, (%rax)
	movss	%xmm6, 4(%rax)
	jmp	.L1132
.L1992:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE8selected_0(%rip), %rdx
	leaq	.LC408(%rip), %rcx
	movq	%r15, %r9
	xorl	%r8d, %r8d
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
	movss	.LC65(%rip), %xmm1
	movss	.LC130(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC409(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	1+_ZZN5ImGui14ShowTestWindowEPbE8selected_0(%rip), %rdx
	leaq	.LC410(%rip), %rcx
	movq	%r15, %r9
	xorl	%r8d, %r8d
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
	movss	.LC65(%rip), %xmm1
	movss	.LC130(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC411(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	2+_ZZN5ImGui14ShowTestWindowEPbE8selected_0(%rip), %rdx
	leaq	.LC412(%rip), %rcx
	movq	%r15, %r9
	xorl	%r8d, %r8d
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
	movss	.LC65(%rip), %xmm1
	movss	.LC130(%rip), %xmm0
	call	_ZN5ImGui8SameLineEff
	leaq	.LC409(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui7TreePopEv
	jmp	.L903
.L1991:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE8selected(%rip), %rdx
	leaq	.LC402(%rip), %rcx
	xorl	%r8d, %r8d
	movq	%r15, %r9
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
	leaq	1+_ZZN5ImGui14ShowTestWindowEPbE8selected(%rip), %rdx
	leaq	.LC403(%rip), %rcx
	xorl	%r8d, %r8d
	movq	%r15, %r9
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
	leaq	.LC404(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	2+_ZZN5ImGui14ShowTestWindowEPbE8selected(%rip), %rdx
	leaq	.LC405(%rip), %rcx
	xorl	%r8d, %r8d
	movq	%r15, %r9
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
	movzbl	3+_ZZN5ImGui14ShowTestWindowEPbE8selected(%rip), %edx
	leaq	.LC406(%rip), %rcx
	movq	%r15, %r9
	movl	$4, %r8d
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	testb	%al, %al
	jne	.L2067
.L901:
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,6
	jmp	.L899
.L1977:
	xorl	%ecx, %ecx
	movss	.LC65(%rip), %xmm1
	call	_ZN5ImGui15IsMouseDraggingEif
	testb	%al, %al
	je	.L1138
	call	_ZN5ImGui5GetIOEv
	movss	852(%rax), %xmm0
	addss	_ZZN5ImGui14ShowTestWindowEPbE6offset(%rip), %xmm0
	movss	%xmm0, _ZZN5ImGui14ShowTestWindowEPbE6offset(%rip)
	call	_ZN5ImGui5GetIOEv
	movss	856(%rax), %xmm0
	addss	4+_ZZN5ImGui14ShowTestWindowEPbE6offset(%rip), %xmm0
	movss	%xmm0, 4+_ZZN5ImGui14ShowTestWindowEPbE6offset(%rip)
	jmp	.L1138
.L2046:
	cmpl	$99, _ZZN5ImGui14ShowTestWindowEPbE4line(%rip)
	jle	.L963
	movss	.LC24(%rip), %xmm0
	call	_ZN5ImGui13SetScrollHereEf
	jmp	.L963
.L1993:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE8selected_1(%rip), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%esi, %esi
	movq	%rdi, %r12
	call	_ZN5ImGui7ColumnsEiPKcb
	.p2align 4,,7
.L905:
	leaq	.LC414(%rip), %rdx
	movl	%esi, %r8d
	movq	%r15, %rcx
	incl	%esi
	call	sprintf
	xorl	%r8d, %r8d
	movq	%r12, %rdx
	movq	%rbp, %r9
	movq	%r15, %rcx
	movl	$0x00000000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	incq	%r12
	call	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	cmpl	$16, %esi
	jne	.L905
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	$1, %ecx
	call	_ZN5ImGui7ColumnsEiPKcb
	call	_ZN5ImGui7TreePopEv
	jmp	.L904
.L2003:
	leaq	.LC115(%rip), %rcx
	call	_ZN5ImGui12TextDisabledEPKcz
	call	_ZN5ImGui13IsItemHoveredEv
	testb	%al, %al
	je	.L871
	.p2align 4,,6
	call	_ZN5ImGui12BeginTooltipEv
	movss	.LC116(%rip), %xmm0
	call	_ZN5ImGui15PushTextWrapPosEf
	leaq	.LC358(%rip), %rcx
	xorl	%edx, %edx
	call	_ZN5ImGui15TextUnformattedEPKcS1_
	call	_ZN5ImGui14PopTextWrapPosEv
	call	_ZN5ImGui10EndTooltipEv
.L871:
	leaq	_ZZN5ImGui14ShowTestWindowEPbE35align_label_with_current_x_position(%rip), %rdx
	leaq	.LC359(%rip), %rcx
	call	_ZN5ImGui8CheckboxEPKcPb
	leaq	.LC360(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE35align_label_with_current_x_position(%rip)
	je	.L872
	call	_ZN5ImGui25GetTreeNodeToLabelSpacingEv
	call	_ZN5ImGui8UnindentEf
.L872:
	.p2align 4,,5
	call	_ZN5ImGui11GetFontSizeEv
	movss	.LC306(%rip), %xmm1
	movl	$9, %ecx
	mulss	%xmm0, %xmm1
	xorl	%ebx, %ebx
	movl	$-1, %esi
	call	_ZN5ImGui12PushStyleVarEif
	jmp	.L876
.L2070:
	leaq	.LC361(%rip), %r8
	orb	$-64, %dl
	movl	%ebx, %r9d
	movq	%rbx, %rcx
	call	_ZN5ImGui10TreeNodeExEPKviPKcz
	xorl	%ecx, %ecx
	movl	%eax, %edi
	call	_ZN5ImGui13IsItemClickedEi
	testb	%al, %al
	cmovne	%ebx, %esi
	testb	%dil, %dil
	jne	.L2068
.L875:
	incq	%rbx
	cmpq	$6, %rbx
	je	.L2069
.L876:
	movl	_ZZN5ImGui14ShowTestWindowEPbE14selection_mask(%rip), %edx
	movl	%ebx, %ecx
	sarl	%cl, %edx
	andl	$1, %edx
	cmpq	$2, %rbx
	jbe	.L2070
	leaq	.LC363(%rip), %r8
	orl	$456, %edx
	movl	%ebx, %r9d
	movq	%rbx, %rcx
	call	_ZN5ImGui10TreeNodeExEPKviPKcz
	xorl	%ecx, %ecx
	call	_ZN5ImGui13IsItemClickedEi
	testb	%al, %al
	cmovne	%ebx, %esi
	jmp	.L875
.L2069:
	cmpl	$-1, %esi
	je	.L877
	call	_ZN5ImGui5GetIOEv
	cmpb	$0, 277(%rax)
	movl	%esi, %ecx
	movl	$1, %eax
	je	.L878
	sall	%cl, %eax
	xorl	%eax, _ZZN5ImGui14ShowTestWindowEPbE14selection_mask(%rip)
.L877:
	movl	$1, %ecx
	call	_ZN5ImGui11PopStyleVarEi
	cmpb	$0, _ZZN5ImGui14ShowTestWindowEPbE35align_label_with_current_x_position(%rip)
	je	.L879
	call	_ZN5ImGui25GetTreeNodeToLabelSpacingEv
	call	_ZN5ImGui6IndentEf
.L879:
	.p2align 4,,5
	call	_ZN5ImGui7TreePopEv
	.p2align 4,,5
	jmp	.L870
.L2068:
	leaq	.LC362(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui7TreePopEv
	jmp	.L875
.L1997:
	.p2align 4,,8
	call	_ZN5ImGui12BeginTooltipEv
	.p2align 4,,8
	call	_ZN5ImGui11GetMousePosEv
	movl	%eax, 80(%rsp)
	movss	.LC98(%rip), %xmm12
	movd	80(%rsp), %xmm0
	movl	%edi, 80(%rsp)
	movd	80(%rsp), %xmm1
	movaps	%xmm6, %xmm11
	subss	%xmm1, %xmm0
	subss	%xmm12, %xmm0
	ucomiss	%xmm0, %xmm6
	ja	.L893
	movaps	%xmm8, %xmm11
	subss	%xmm7, %xmm11
	minss	%xmm0, %xmm11
.L893:
	call	_ZN5ImGui11GetMousePosEv
	shrq	$32, %rax
	shrq	$32, %rdi
	movq	%rax, 80(%rsp)
	movq	%rdi, 96(%rsp)
	movss	80(%rsp), %xmm10
	subss	96(%rsp), %xmm10
	subss	%xmm12, %xmm10
	ucomiss	%xmm10, %xmm6
	ja	.L1164
	movaps	%xmm9, %xmm1
	subss	%xmm7, %xmm1
	ucomiss	%xmm1, %xmm10
	jbe	.L2071
	cvtss2sd	%xmm1, %xmm0
	movaps	%xmm1, %xmm10
.L894:
	cvtss2sd	%xmm11, %xmm3
	movsd	%xmm0, %xmm2
	leaq	.LC395(%rip), %rcx
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %r8
	movsd	%xmm3, 80(%rsp)
	movq	80(%rsp), %rdx
	movsd	%xmm3, %xmm1
	movaps	%xmm10, %xmm12
	movaps	%xmm11, %xmm13
	call	_ZN5ImGui4TextEPKcz
	addss	%xmm7, %xmm12
	leaq	.LC396(%rip), %rcx
	addss	%xmm7, %xmm13
	cvtss2sd	%xmm12, %xmm1
	cvtss2sd	%xmm13, %xmm0
	movsd	%xmm1, 80(%rsp)
	movq	80(%rsp), %r8
	movsd	%xmm1, %xmm2
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rdx
	movsd	%xmm0, %xmm1
	call	_ZN5ImGui4TextEPKcz
	divss	%xmm8, %xmm11
	movq	%rsi, %r9
	movq	%r12, %r8
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%r15, 40(%rsp)
	movq	%rbp, 32(%rsp)
	movl	$0x3f800000, 368(%rsp)
	movl	$0x3f800000, 372(%rsp)
	movl	$0x3f800000, 376(%rsp)
	movl	$0x3f008081, 380(%rsp)
	movl	$0x3f800000, 288(%rsp)
	movl	$0x3f800000, 292(%rsp)
	movl	$0x3f800000, 296(%rsp)
	movl	$0x3f800000, 300(%rsp)
	movl	$0x43000000, 256(%rsp)
	movl	$0x43000000, 260(%rsp)
	divss	%xmm9, %xmm10
	movss	%xmm11, 224(%rsp)
	divss	%xmm8, %xmm13
	movss	%xmm10, 228(%rsp)
	divss	%xmm9, %xmm12
	movss	%xmm13, 240(%rsp)
	movss	%xmm12, 244(%rsp)
	call	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_
	call	_ZN5ImGui10EndTooltipEv
.LEHE28:
	jmp	.L892
.L1934:
	addl	$2, %eax
	testl	%ebx, %ebx
	movl	$8, %edx
	je	.L636
	movl	%ebx, %edx
	shrl	$31, %edx
	addl	%ebx, %edx
	sarl	%edx
	addl	%ebx, %edx
.L636:
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	cmpl	%edx, %ecx
	movl	%edx, %ebx
	jge	.L1854
	movslq	%edx, %rcx
	salq	$3, %rcx
.LEHB29:
	call	_ZN5ImGui8MemAllocEy
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	je	.L638
	movslq	304+_ZZL21ShowExampleAppConsolePbE7console(%rip), %r8
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rdx
.L638:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movq	%rsi, 312+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	%ebx, 308+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	304+_ZZL21ShowExampleAppConsolePbE7console(%rip), %ecx
	jmp	.L635
.L1933:
	movl	%ebx, %ecx
	addl	$2, %edx
	sarl	%ecx
	addl	%ecx, %ebx
	cmpl	%edx, %ebx
	cmovl	%edx, %ebx
	cmpl	%ebx, %eax
	jl	.L2072
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rsi
	movl	%eax, %ebx
	jmp	.L632
.L629:
	addl	$2, %ebx
	movl	$12, %eax
	cmpl	$12, %ebx
	cmovl	%eax, %ebx
	movslq	%ebx, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	je	.L631
	movslq	304+_ZZL21ShowExampleAppConsolePbE7console(%rip), %r8
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rdx
.L631:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
.LEHE29:
	movq	%rsi, 312+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	%ebx, 308+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	304+_ZZL21ShowExampleAppConsolePbE7console(%rip), %edx
	jmp	.L630
.L1976:
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE6offset(%rip), %rcx
	call	__cxa_guard_acquire
	testl	%eax, %eax
	je	.L1017
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE6offset(%rip), %rcx
	movl	$0x42480000, _ZZN5ImGui14ShowTestWindowEPbE6offset(%rip)
	movl	$0x41a00000, 4+_ZZN5ImGui14ShowTestWindowEPbE6offset(%rip)
	call	__cxa_guard_release
	jmp	.L1017
.L1939:
	leaq	.LC161(%rip), %rdx
	leaq	.LC246(%rip), %rcx
	movl	$865, %r8d
.LEHB30:
	call	_assert
	jmp	.L666
.L1978:
	leaq	.LC161(%rip), %rdx
	leaq	.LC246(%rip), %rcx
	movl	$865, %r8d
	call	_assert
	jmp	.L672
.L2063:
	leaq	.LC356(%rip), %rcx
	movl	%ebx, %edx
	call	printf
	jmp	.L868
.L2065:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %ebx
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%bl, %bl
	je	.L698
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %rbp
	xorl	%ebx, %ebx
	movl	%r14d, 180(%rsp)
	xorps	%xmm6, %xmm6
	movq	%r15, 184(%rsp)
	jmp	.L715
.L713:
	leaq	.LC49(%rip), %rax
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movl	$0x00000000, 32(%rsp)
	movq	%rax, 40(%rsp)
	movss	.LC67(%rip), %xmm2
	movq	%rbp, %rdx
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L714:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L712:
	incl	%ebx
	addq	$4, %rbp
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %ebx
	je	.L2073
.L715:
	movl	%ebx, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %ebx
	jle	.L2074
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%ebx, %r8d
	movq	%r13, %rcx
	call	sprintf
	call	_ZN5ImGui6BulletEv
	leaq	288(%rsp), %r9
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r13, %rcx
	movss	%xmm6, 288(%rsp)
	movss	%xmm6, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %ebx
	jle	.L713
	movaps	%xmm6, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%rbp, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L714
.L2073:
	movl	180(%rsp), %r14d
	movq	184(%rsp), %r15
	call	_ZN5ImGui7TreePopEv
.L698:
	call	_ZN5ImGui5PopIDEv
	jmp	.L716
.L1136:
	.p2align 4,,8
	call	_ZN5ImGui5GetIOEv
	mulss	8(%rax), %xmm7
	movaps	%xmm7, %xmm6
	jmp	.L1009
.L2071:
	cvtss2sd	%xmm10, %xmm0
	jmp	.L894
.L2074:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %esi
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%sil, %sil
	je	.L700
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %r15
	xorl	%esi, %esi
	leaq	288(%rsp), %r14
	movss	.LC65(%rip), %xmm9
	movl	%ebx, %edi
	jmp	.L711
.L709:
	leaq	.LC49(%rip), %rax
	movaps	%xmm7, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movl	$0x00000000, 32(%rsp)
	movq	%rax, 40(%rsp)
	movss	.LC67(%rip), %xmm2
	movq	%r15, %rdx
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L710:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L708:
	incl	%esi
	addq	$4, %r15
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %esi
	je	.L2075
.L711:
	movl	%esi, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %esi
	jle	.L2076
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%esi, %r8d
	movq	%r13, %rcx
	call	sprintf
	call	_ZN5ImGui6BulletEv
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r14, %r9
	movq	%r13, %rcx
	movss	%xmm7, 288(%rsp)
	movss	%xmm7, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movss	.LC65(%rip), %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %esi
	jle	.L709
	movaps	%xmm7, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%r15, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L710
.L2075:
	movl	%edi, %ebx
	call	_ZN5ImGui7TreePopEv
.L700:
	.p2align 4,,6
	call	_ZN5ImGui5PopIDEv
	.p2align 4,,3
	jmp	.L712
.L1923:
	leaq	.LC161(%rip), %rdx
	leaq	.LC246(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %eax
	jmp	.L843
.L1164:
	xorpd	%xmm0, %xmm0
	movaps	%xmm6, %xmm10
	jmp	.L894
.L2076:
	movl	$424242, %ecx
	call	_ZN5ImGui6PushIDEi
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC63(%rip), %r8
	leaq	.LC60(%rip), %rdx
	leaq	.LC61(%rip), %rcx
	movl	$424242, %r9d
	call	_ZN5ImGui8TreeNodeEPKcS1_z
	movl	%eax, %ebx
	call	_ZN5ImGui10NextColumnEv
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC62(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	call	_ZN5ImGui10NextColumnEv
	testb	%bl, %bl
	je	.L702
	leaq	_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members(%rip), %rbx
	xorl	%r12d, %r12d
	jmp	.L707
.L705:
	leaq	.LC49(%rip), %rax
	movaps	%xmm8, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0x3f800000, 48(%rsp)
	movl	$0x00000000, 32(%rsp)
	movq	%rax, 40(%rsp)
	movss	.LC67(%rip), %xmm2
	movq	%rbx, %rdx
	call	_ZN5ImGui9DragFloatEPKcPffffS1_f
.L706:
	call	_ZN5ImGui12PopItemWidthEv
	call	_ZN5ImGui10NextColumnEv
.L704:
	incl	%r12d
	addq	$4, %rbx
	call	_ZN5ImGui5PopIDEv
	cmpl	$8, %r12d
	je	.L2077
.L707:
	movl	%r12d, %ecx
	call	_ZN5ImGui6PushIDEi
	cmpl	$1, %r12d
	jle	.L2078
	call	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv
	leaq	.LC64(%rip), %rdx
	movl	%r12d, %r8d
	movq	%r13, %rcx
	call	sprintf
	call	_ZN5ImGui6BulletEv
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%r14, %r9
	movq	%r13, %rcx
	movss	%xmm8, 288(%rsp)
	movss	%xmm8, 292(%rsp)
	call	_ZN5ImGui10SelectableEPKcbiRK6ImVec2
	call	_ZN5ImGui10NextColumnEv
	movaps	%xmm9, %xmm0
	call	_ZN5ImGui13PushItemWidthEf
	cmpl	$4, %r12d
	jle	.L705
	movaps	%xmm8, %xmm3
	leaq	.LC66(%rip), %rcx
	movl	$0, 40(%rsp)
	movl	$-1, 32(%rsp)
	movss	.LC22(%rip), %xmm2
	movq	%rbx, %rdx
	call	_ZN5ImGui10InputFloatEPKcPfffii
	jmp	.L706
.L2077:
	call	_ZN5ImGui7TreePopEv
.L702:
	.p2align 4,,8
	call	_ZN5ImGui5PopIDEv
	.p2align 4,,5
	jmp	.L708
.L878:
	sall	%cl, %eax
	movl	%eax, _ZZN5ImGui14ShowTestWindowEPbE14selection_mask(%rip)
	jmp	.L877
.L822:
	movslq	%ebx, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	je	.L823
	movslq	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %r8
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rdx
.L823:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
	movslq	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rax
	movq	%rsi, 8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	movl	%ebx, 4+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	leal	1(%rax), %edx
	jmp	.L820
.L1131:
	testl	%eax, %eax
	leal	1(%rax), %edx
	movl	$8, %ebx
	je	.L827
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	addl	%eax, %ebx
.L827:
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	cmpl	%ebx, %eax
	jl	.L828
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rsi
	jmp	.L829
.L2066:
	leaq	.LC249(%rip), %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$1, %r9d
	call	_ZN5ImGui8MenuItemEPKcS1_bb
	testb	%al, %al
	je	.L678
	movb	$0, _ZZN5ImGui14ShowTestWindowEPbE15show_app_layout(%rip)
.L678:
	call	_ZN5ImGui7EndMenuEv
.LEHE30:
	jmp	.L677
.L2072:
	movslq	%ebx, %rcx
	salq	$3, %rcx
.LEHB31:
	call	_ZN5ImGui8MemAllocEy
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	je	.L633
	movslq	304+_ZZL21ShowExampleAppConsolePbE7console(%rip), %r8
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rdx
.L633:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
.LEHE31:
	movq	%rsi, 312+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	%ebx, 308+_ZZL21ShowExampleAppConsolePbE7console(%rip)
	movl	304+_ZZL21ShowExampleAppConsolePbE7console(%rip), %eax
	jmp	.L632
.L2067:
	xorl	%ecx, %ecx
.LEHB32:
	call	_ZN5ImGui20IsMouseDoubleClickedEi
	testb	%al, %al
	je	.L901
	xorb	$1, 3+_ZZN5ImGui14ShowTestWindowEPbE8selected(%rip)
	jmp	.L901
.L2009:
	leaq	.LC161(%rip), %rdx
	leaq	.LC246(%rip), %rcx
	movl	$867, %r8d
	call	_assert
	movslq	_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rdx
	movq	8+_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rcx
	testl	%edx, %edx
	leaq	-1(%rcx,%rdx), %rbx
	jg	.L765
	leaq	.LC246(%rip), %rcx
	leaq	.LC161(%rip), %rdx
	movl	$865, %r8d
	call	_assert
	movq	8+_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rcx
	jmp	.L765
.L2056:
	leaq	.LC161(%rip), %rdx
	leaq	.LC246(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %eax
	jmp	.L813
.L2055:
	leaq	.LC161(%rip), %rdx
	leaq	.LC246(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %eax
	jmp	.L812
.L2057:
	call	_ZN5ImGui17CloseCurrentPopupEv
	jmp	.L1049
.L2054:
	leaq	.LC161(%rip), %rdx
	leaq	.LC246(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %eax
	jmp	.L832
.L2053:
	leaq	.LC161(%rip), %rdx
	leaq	.LC246(%rip), %rcx
	movl	$885, %r8d
	call	_assert
	movl	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %eax
	jmp	.L1133
.L2062:
	call	_ZN5ImGui17CloseCurrentPopupEv
	jmp	.L1054
.L2061:
	.p2align 4,,8
	call	_ZN5ImGui17CloseCurrentPopupEv
	.p2align 4,,8
	jmp	.L1053
.L2059:
	leaq	.LC695(%rip), %rcx
	call	_ZN5ImGui4TextEPKcz
	leaq	.LC249(%rip), %rcx
	movq	%r15, %rdx
	movl	$0x00000000, 368(%rsp)
	movl	$0x00000000, 372(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
	testb	%al, %al
	jne	.L2079
.L1059:
	call	_ZN5ImGui8EndPopupEv
	.p2align 4,,6
	jmp	.L1058
.L2058:
	leaq	.LC694(%rip), %rcx
	call	_ZN5ImGui9OpenPopupEPKc
	jmp	.L1057
.L2060:
	call	_ZN5ImGui17CloseCurrentPopupEv
	.p2align 4,,8
	jmp	.L1060
.L833:
	movq	%rdi, %rcx
	.p2align 4,,5
	call	_ZN10ImDrawList11PopClipRectEv
	.p2align 4,,5
	jmp	.L836
.L2078:
	leaq	.LC63(%rip), %rcx
	movl	$424242, %edx
	call	_ZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKci
	jmp	.L704
.L1004:
	movl	%esi, %ecx
	leaq	.LC208(%rip), %r14
	call	_ZN5ImGui6PushIDEi
	jmp	.L1005
.L828:
	movslq	%ebx, %rcx
	salq	$3, %rcx
	call	_ZN5ImGui8MemAllocEy
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	je	.L830
	movslq	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %r8
	movq	%rax, %rcx
	salq	$3, %r8
	call	memcpy
	movq	8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rdx
.L830:
	movq	%rdx, %rcx
	call	_ZN5ImGui7MemFreeEPv
.LEHE32:
	movslq	_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip), %rax
	movq	%rsi, 8+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	movl	%ebx, 4+_ZZL29ShowExampleAppCustomRenderingPbE6points(%rip)
	leal	1(%rax), %edx
	jmp	.L829
.L1192:
	movq	8+_ZZL22ShowExampleAppLongTextPbE3log(%rip), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L751
	call	_ZN5ImGui7MemFreeEPv
.L751:
	leaq	_ZGVZL22ShowExampleAppLongTextPbE3log(%rip), %rcx
	call	__cxa_guard_abort
	movq	%rbx, %rcx
.LEHB33:
	call	_Unwind_Resume
.L1159:
	movss	196(%rsp), %xmm6
	jmp	.L838
.L1915:
	movss	.LC22(%rip), %xmm9
	jmp	.L803
.L2079:
	call	_ZN5ImGui17CloseCurrentPopupEv
.LEHE33:
	jmp	.L1059
.L1190:
	movq	8+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L650
	call	_ZN5ImGui7MemFreeEPv
.L650:
	leaq	_ZGVZL17ShowExampleAppLogPbE3log(%rip), %rcx
	call	__cxa_guard_abort
	movq	%rbx, %rcx
.LEHB34:
	call	_Unwind_Resume
.L1187:
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE6filter(%rip), %rcx
	movq	%rax, %rbx
	call	__cxa_guard_abort
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L990:
	call	_ZN5ImGui10BeginGroupEv
.LEHE34:
	leaq	.LC203(%rip), %rdx
	jmp	.L991
.L1188:
	movq	312+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L641
	call	_ZN5ImGui7MemFreeEPv
.L641:
	movq	288+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rcx
	testq	%rcx, %rcx
	je	.L642
	call	_ZN5ImGui7MemFreeEPv
.L642:
	movq	264+_ZZL21ShowExampleAppConsolePbE7console(%rip), %rcx
	testq	%rcx, %rcx
	je	.L643
	call	_ZN5ImGui7MemFreeEPv
.L643:
	leaq	_ZGVZL21ShowExampleAppConsolePbE7console(%rip), %rcx
	call	__cxa_guard_abort
	movq	%rbx, %rcx
.LEHB35:
	call	_Unwind_Resume
.L2045:
	call	_ZN5ImGui10NextColumnEv
	leaq	.LC542(%rip), %rdx
	movq	%r15, %rcx
	movl	%esi, %r8d
	call	sprintf
	movq	%rbp, %rdx
	movq	%r15, %rcx
	movl	$0xbf800000, 288(%rsp)
	movl	$0x00000000, 292(%rsp)
	call	_ZN5ImGui6ButtonEPKcRK6ImVec2
.LEHE35:
	jmp	.L970
.L1170:
	leaq	.LC204(%rip), %rdx
	jmp	.L991
.L1169:
	leaq	.LC202(%rip), %rdx
	jmp	.L991
.L1189:
	movq	8+_ZZL17ShowExampleAppLogPbE3log(%rip), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L650
	call	_ZN5ImGui7MemFreeEPv
	jmp	.L650
.L1191:
	cmpl	$-1, 376(%rsp)
	movq	%rax, %rbx
	je	.L1858
	leaq	.LC161(%rip), %rdx
	leaq	.LC269(%rip), %rcx
	movl	$1103, %r8d
	call	_assert
.L1858:
	movq	%rbx, %rcx
.LEHB36:
	call	_Unwind_Resume
.LEHE36:
.L2005:
	movss	%xmm0, _ZZN5ImGui14ShowTestWindowEPbE8progress(%rip)
	jmp	.L954
.L1186:
	leaq	_ZGVZN5ImGui14ShowTestWindowEPbE12refresh_time(%rip), %rcx
	movq	%rax, %rbx
	call	__cxa_guard_abort
	jmp	.L1858
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA180:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE180-.LLSDACSB180
.LLSDACSB180:
	.uleb128 .LEHB15-.LFB180
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB180
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L1188-.LFB180
	.uleb128 0
	.uleb128 .LEHB17-.LFB180
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB180
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L1187-.LFB180
	.uleb128 0
	.uleb128 .LEHB19-.LFB180
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L1186-.LFB180
	.uleb128 0
	.uleb128 .LEHB20-.LFB180
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB180
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L1191-.LFB180
	.uleb128 0
	.uleb128 .LEHB22-.LFB180
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB180
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L1191-.LFB180
	.uleb128 0
	.uleb128 .LEHB24-.LFB180
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB180
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L1190-.LFB180
	.uleb128 0
	.uleb128 .LEHB26-.LFB180
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L1189-.LFB180
	.uleb128 0
	.uleb128 .LEHB27-.LFB180
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L1192-.LFB180
	.uleb128 0
	.uleb128 .LEHB28-.LFB180
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB180
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L1188-.LFB180
	.uleb128 0
	.uleb128 .LEHB30-.LFB180
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB180
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L1188-.LFB180
	.uleb128 0
	.uleb128 .LEHB32-.LFB180
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB180
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB180
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB180
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB180
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE180:
	.text
	.seh_endproc
	.data
	.align 4
_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE12window_scale:
	.long	1065353216
.lcomm _ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE6filter,280,32
.lcomm _ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE9edit_mode,4,4
.lcomm _ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE20output_only_modified,1,1
.lcomm _ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE11output_dest,4,4
.lcomm _ZZL19ShowExampleMenuFilevE1n,4,4
	.align 4
_ZZL19ShowExampleMenuFilevE1f:
	.long	1056964608
_ZZL19ShowExampleMenuFilevE7enabled:
	.byte	1
.lcomm _ZZL29ShowExampleAppCustomRenderingPbE11adding_line,1,1
.lcomm _ZZL29ShowExampleAppCustomRenderingPbE6points,16,16
	.align 4
_ZZL29ShowExampleAppCustomRenderingPbE2sz:
	.long	1108344832
.lcomm _ZZL29ShowExampleAppCustomRenderingPbE3col,16,16
.lcomm _ZZL31ShowExampleAppConstrainedResizePbE4type,4,4
	.align 4
_ZZL24ShowExampleAppAutoResizePbE5lines:
	.long	10
.lcomm _ZZL22ShowExampleAppLongTextPbE5lines,4,4
.lcomm _ZZL22ShowExampleAppLongTextPbE9test_type,4,4
.lcomm _ZZL22ShowExampleAppLongTextPbE3log,16,16
.lcomm _ZZL20ShowExampleAppLayoutPbE8selected,4,4
	.align 4
_ZZL17ShowExampleAppLogPbE9last_time:
	.long	-1082130432
.lcomm _ZZL17ShowExampleAppLogPbE3log,320,32
.lcomm _ZZL21ShowExampleAppConsolePbE7console,320,32
	.align 32
_ZZN5ImGui14ShowTestWindowEPbE3buf_1:
	.ascii "click on a button to set focus\0"
	.space 97
	.align 32
_ZZN5ImGui14ShowTestWindowEPbE3buf_0:
	.ascii "dummy\0"
	.space 26
.lcomm _ZZN5ImGui14ShowTestWindowEPbE6filter,280,32
_ZZN5ImGui14ShowTestWindowEPbE9v_borders:
	.byte	1
_ZZN5ImGui14ShowTestWindowEPbE9h_borders:
	.byte	1
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE3bar:
	.long	1065353216
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE3foo:
	.long	1065353216
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE8selected_3:
	.long	-1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE21dont_ask_me_next_time,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE5color,16,16
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE5value:
	.long	1056964608
_ZZN5ImGui14ShowTestWindowEPbE7toggles:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE13selected_fish:
	.long	-1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE6offset,8,8
.lcomm _ZZN5ImGui14ShowTestWindowEPbE4size,8,8
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE5lines:
	.long	7
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE12scroll_to_px:
	.long	200
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE10track_line:
	.long	50
_ZZN5ImGui14ShowTestWindowEPbE5track:
	.byte	1
	.align 16
_ZZN5ImGui14ShowTestWindowEPbE9selection:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE2f2_1:
	.long	1077936128
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE2f1_1:
	.long	1073741824
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE2f0_0:
	.long	1065353216
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE4item_0:
	.long	-1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE2c4,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE2c3,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE2c2,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE2c1,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE1f,4,4
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE4line:
	.long	50
.lcomm _ZZN5ImGui14ShowTestWindowEPbE8progress,4,4
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE12progress_dir:
	.long	1065353216
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE13display_count:
	.long	70
.lcomm _ZZN5ImGui14ShowTestWindowEPbE9func_type,4,4
.lcomm _ZZN5ImGui14ShowTestWindowEPbE6values_0,360,32
.lcomm _ZZN5ImGui14ShowTestWindowEPbE5phase,4,4
.lcomm _ZZN5ImGui14ShowTestWindowEPbE13values_offset,4,4
.lcomm _ZZN5ImGui14ShowTestWindowEPbE12refresh_time,4,4
	.align 16
_ZZN5ImGui14ShowTestWindowEPbE3arr_0:
	.long	1058642330
	.long	1036831949
	.long	1065353216
	.long	1056964608
	.long	1064011039
	.long	1036831949
	.long	1045220557
_ZZN5ImGui14ShowTestWindowEPbE7animate:
	.byte	1
	.align 16
_ZZN5ImGui14ShowTestWindowEPbE7values2:
	.long	1045220557
	.long	1061997773
	.long	1053609165
	.long	1048576000
	.align 16
_ZZN5ImGui14ShowTestWindowEPbE6values:
	.long	0
	.long	1058642330
	.long	1051931443
	.long	1063675494
	.long	1060320051
	.long	1045220557
	.long	0
.lcomm _ZZN5ImGui14ShowTestWindowEPbE9int_value,4,4
	.align 16
_ZZN5ImGui14ShowTestWindowEPbE5vec4i:
	.long	1
	.long	5
	.long	100
	.long	255
	.align 16
_ZZN5ImGui14ShowTestWindowEPbE5vec4f:
	.long	1036831949
	.long	1045220557
	.long	1050253722
	.long	1054951342
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE5end_i:
	.long	1000
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE7begin_i:
	.long	100
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE3end:
	.long	1119092736
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE5begin:
	.long	1092616192
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE20listbox_item_current:
	.long	1
	.align 16
_ZZN5ImGui14ShowTestWindowEPbE4col2:
	.long	1053609165
	.long	1060320051
	.long	0
	.long	1056964608
	.align 8
_ZZN5ImGui14ShowTestWindowEPbE4col1:
	.long	1065353216
	.long	0
	.long	1045220557
.lcomm _ZZN5ImGui14ShowTestWindowEPbE5angle,4,4
.lcomm _ZZN5ImGui14ShowTestWindowEPbE2f2_0,4,4
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE2f1_0:
	.long	1039918957
.lcomm _ZZN5ImGui14ShowTestWindowEPbE2i1_0,4,4
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE2f2:
	.long	1004243884
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE2f1:
	.long	1065353216
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE2i2:
	.long	42
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE2i1:
	.long	50
	.align 16
_ZZN5ImGui14ShowTestWindowEPbE5vec4a:
	.long	1036831949
	.long	1045220557
	.long	1050253722
	.long	1054951342
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE2f0:
	.long	981668463
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE2i0:
	.long	123
	.align 32
_ZZN5ImGui14ShowTestWindowEPbE4str0:
	.ascii "Hello, world!\0"
	.space 114
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE5item2:
	.long	-1
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE4item:
	.long	1
	.align 16
_ZZN5ImGui14ShowTestWindowEPbE3arr:
	.long	1058642330
	.long	1036831949
	.long	1065353216
	.long	1056964608
	.long	1064011039
	.long	1036831949
	.long	1045220557
.lcomm _ZZN5ImGui14ShowTestWindowEPbE1e,4,4
_ZZN5ImGui14ShowTestWindowEPbE5check:
	.byte	1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE1a,1,1
	.align 32
_ZZN5ImGui14ShowTestWindowEPbE4text:
	.ascii "/*\12 The Pentium F00F bug, shorthand for F0 0F C7 C8,\12 the hexadecimal encoding of one offending instruction,\12 more formally, the invalid operand with locked CMPXCHG8B\12 instruction bug, is a design flaw in the majority of\12 Intel Pentium, Pentium MMX, and Pentium OverDrive\12 processors (all in the P5 microarchitecture).\12*/\12\12label:\12\11lock cmpxchg8b eax\12\0"
	.space 16033
.lcomm _ZZN5ImGui14ShowTestWindowEPbE9read_only,1,1
	.align 32
_ZZN5ImGui14ShowTestWindowEPbE7bufpass:
	.ascii "password123\0"
	.space 52
.lcomm _ZZN5ImGui14ShowTestWindowEPbE4buf6,64,32
.lcomm _ZZN5ImGui14ShowTestWindowEPbE4buf5,64,32
.lcomm _ZZN5ImGui14ShowTestWindowEPbE4buf4,64,32
.lcomm _ZZN5ImGui14ShowTestWindowEPbE4buf3,64,32
.lcomm _ZZN5ImGui14ShowTestWindowEPbE4buf2,64,32
.lcomm _ZZN5ImGui14ShowTestWindowEPbE4buf1,64,32
	.align 16
_ZZN5ImGui14ShowTestWindowEPbE8selected_2:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE8selected_1,16,16
.lcomm _ZZN5ImGui14ShowTestWindowEPbE8selected_0,3,1
_ZZN5ImGui14ShowTestWindowEPbE8selected:
	.byte	0
	.byte	1
	.byte	0
	.byte	0
.lcomm _ZZN5ImGui14ShowTestWindowEPbE13pressed_count,4,4
	.align 32
_ZZN5ImGui14ShowTestWindowEPbE3buf:
	.ascii "\346\227\245\346\234\254\350\252\236\0"
	.space 22
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE10wrap_width:
	.long	1128792064
_ZZN5ImGui14ShowTestWindowEPbE14closable_group:
	.byte	1
	.align 4
_ZZN5ImGui14ShowTestWindowEPbE14selection_mask:
	.long	4
.lcomm _ZZN5ImGui14ShowTestWindowEPbE35align_label_with_current_x_position,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE7no_menu,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE11no_collapse,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE12no_scrollbar,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE7no_move,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE9no_resize,1,1
_ZZN5ImGui14ShowTestWindowEPbE9no_border:
	.byte	1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE11no_titlebar,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE14show_app_about,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE21show_app_style_editor,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE16show_app_metrics,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE25show_app_custom_rendering,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE34show_app_manipulating_window_title,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE22show_app_fixed_overlay,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE27show_app_constrained_resize,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE20show_app_auto_resize,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE18show_app_long_text,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE24show_app_property_editor,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE15show_app_layout,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE12show_app_log,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE16show_app_console,1,1
.lcomm _ZZN5ImGui14ShowTestWindowEPbE22show_app_main_menu_bar,1,1
.lcomm _ZGVZL22ShowExampleAppLongTextPbE3log,8,8
	.align 32
_ZZZL28ShowExampleAppPropertyEditorPbEN5funcs15ShowDummyObjectEPKciE13dummy_members:
	.long	0
	.long	0
	.long	1065353216
	.long	1078530041
	.long	1120403456
	.long	1148829696
	.space 8
.lcomm _ZGVZL17ShowExampleAppLogPbE3log,8,8
.lcomm _ZGVZL21ShowExampleAppConsolePbE7console,8,8
	.globl	_ZGVZN17ExampleAppConsole4DrawEPKcPbE6filter
	.section	.data$_ZGVZN17ExampleAppConsole4DrawEPKcPbE6filter,"w"
	.linkonce same_size
	.align 8
_ZGVZN17ExampleAppConsole4DrawEPKcPbE6filter:
	.space 8
	.globl	_ZZN17ExampleAppConsole4DrawEPKcPbE6filter
	.section	.data$_ZZN17ExampleAppConsole4DrawEPKcPbE6filter,"w"
	.linkonce same_size
	.align 32
_ZZN17ExampleAppConsole4DrawEPKcPbE6filter:
	.space 280
.lcomm _ZGVZL29ShowExampleAppCustomRenderingPbE6points,8,8
.lcomm _ZGVZL29ShowExampleAppCustomRenderingPbE3col,8,8
.lcomm _ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE6filter,8,8
.lcomm _ZGVZN5ImGui14ShowTestWindowEPbE6filter,8,8
.lcomm _ZGVZN5ImGui14ShowTestWindowEPbE5color,8,8
.lcomm _ZGVZN5ImGui14ShowTestWindowEPbE6offset,8,8
.lcomm _ZGVZN5ImGui14ShowTestWindowEPbE4size,8,8
.lcomm _ZGVZN5ImGui14ShowTestWindowEPbE12refresh_time,8,8
	.section .rdata,"dr"
	.align 4
.LC22:
	.long	1065353216
	.align 4
.LC23:
	.long	0
	.align 4
.LC24:
	.long	1056964608
	.align 4
.LC25:
	.long	1036831949
	.align 4
.LC65:
	.long	-1082130432
	.align 4
.LC67:
	.long	1008981770
	.align 4
.LC80:
	.long	1057803469
	.align 4
.LC84:
	.long	1120403456
	.align 4
.LC86:
	.long	1073741824
	.align 4
.LC88:
	.long	1017370378
	.align 4
.LC91:
	.long	1045220557
	.align 4
.LC92:
	.long	1000593162
	.align 4
.LC96:
	.long	1101004800
	.align 4
.LC98:
	.long	1098907648
	.align 4
.LC105:
	.long	1092616192
	.align 4
.LC107:
	.long	1106247680
	.align 4
.LC116:
	.long	1138819072
	.align 4
.LC121:
	.long	1123024896
	.align 4
.LC129:
	.long	1128792064
	.align 4
.LC130:
	.long	1133903872
	.align 4
.LC132:
	.long	-1021313024
	.align 4
.LC142:
	.long	1050253722
	.align 4
.LC172:
	.long	1142292480
	.align 4
.LC184:
	.long	1127481344
	.align 16
.LC185:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC187:
	.long	1082130432
	.align 4
.LC189:
	.long	1053609165
	.align 4
.LC200:
	.long	-1110651699
	.align 4
.LC201:
	.long	1066192077
	.align 4
.LC244:
	.long	-1027080192
	.align 4
.LC250:
	.long	1125515264
	.align 4
.LC304:
	.long	1090519040
	.align 4
.LC305:
	.long	1067869798
	.align 4
.LC306:
	.long	1077936128
	.align 4
.LC309:
	.long	1112014848
	.align 4
.LC322:
	.long	-1022623744
	.align 4
.LC381:
	.long	-1046478848
	.align 4
.LC394:
	.long	1107296256
	.align 4
.LC436:
	.long	1088421888
	.align 4
.LC437:
	.long	1058642330
	.align 4
.LC438:
	.long	1060320051
	.align 4
.LC439:
	.long	1061997773
	.align 4
.LC464:
	.long	953267991
	.align 4
.LC471:
	.long	-1054867456
	.align 4
.LC473:
	.long	1135869952
	.align 4
.LC474:
	.long	-1011613696
	.align 4
.LC484:
	.long	1048576000
	.align 4
.LC488:
	.long	1084227584
	.align 4
.LC512:
	.long	1063675494
	.align 4
.LC517:
	.long	1109393408
	.align 4
.LC522:
	.long	1015580809
	.align 4
.LC523:
	.long	1117782016
	.align 4
.LC531:
	.long	1155211264
	.align 4
.LC621:
	.long	1124204544
	.align 4
.LC627:
	.long	1043207291
	.align 4
.LC634:
	.long	1028443341
	.align 4
.LC635:
	.long	1148846080
	.align 4
.LC767:
	.long	-1073741824
	.ident	"GCC: (GNU) 5.3.0"
	.def	sinf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7MemFreeEPv;	.scl	2;	.type	32;	.endef
	.def	strchr;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8MenuItemEPKcS1_bb;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9BeginMenuEPKcb;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9SeparatorEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui15GetStyleColNameEi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7EndMenuEv;	.scl	2;	.type	32;	.endef
	.def	_assert;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8MenuItemEPKcS1_Pbb;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10BeginChildEPKcRK6ImVec2bi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui4TextEPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8EndChildEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11SliderFloatEPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10InputFloatEPKcPfffii;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5ComboEPKcPiS1_i;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui6PushIDEi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui29AlignFirstTextHeightToWidgetsEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8TreeNodeEPKcS1_z;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10NextColumnEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9DragFloatEPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12PopItemWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5PopIDEv;	.scl	2;	.type	32;	.endef
	.def	sprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui6BulletEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10SelectableEPKcbiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13PushItemWidthEf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7TreePopEv;	.scl	2;	.type	32;	.endef
	.def	__ms_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10BulletTextEPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5GetIOEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8GetStyleEv;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImGuiStyleC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui6ButtonEPKcRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8SameLineEff;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui14GetWindowWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8TreeNodeEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui14LogToClipboardEi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7LogTextEPKcz;	.scl	2;	.type	32;	.endef
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9LogFinishEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8CheckboxEPKcPb;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11RadioButtonEPKcPii;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_acquire;	.scl	2;	.type	32;	.endef
	.def	_ZN15ImGuiTextFilter4DrawEPKcf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13ColorEditModeEi;	.scl	2;	.type	32;	.endef
	.def	_ZNK15ImGuiTextFilter10PassFilterEPKcS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10ColorEdit4EPKcPfb;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12SliderFloat2EPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12TextDisabledEPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13IsItemHoveredEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8PushFontEP6ImFont;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7PopFontEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8TreePushEPKv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11SmallButtonEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12BeginTooltipEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui15PushTextWrapPosEf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui15TextUnformattedEPKcS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui14PopTextWrapPosEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10EndTooltipEv;	.scl	2;	.type	32;	.endef
	.def	_ZNK6ImFont9FindGlyphEt;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8TreeNodeEPKvPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui18GetCursorScreenPosEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui17GetWindowDrawListEv;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11GetColorU32Eif;	.scl	2;	.type	32;	.endef
	.def	_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5DummyERK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui18SetWindowFontScaleEf;	.scl	2;	.type	32;	.endef
	.def	_ZN15ImGuiTextFilterC1EPKc;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_release;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.def	__cxa_guard_abort;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	sqrtf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8LogToTTYEi;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8MemAllocEy;	.scl	2;	.type	32;	.endef
	.def	_ZN25ImGuiTextEditCallbackData11DeleteCharsEii;	.scl	2;	.type	32;	.endef
	.def	_ZN25ImGuiTextEditCallbackData11InsertCharsEiPKcS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui17SetNextWindowSizeERK6ImVec2i;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5BeginEPKcPbi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11TextWrappedEPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12PushStyleVarEiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11PopStyleVarEi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui29GetItemsLineHeightWithSpacingEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui23BeginPopupContextWindowEbPKci;	.scl	2;	.type	32;	.endef
	.def	strstr;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui14PushStyleColorEiRK6ImVec4;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13PopStyleColorEi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9InputTextEPKcPcyiPFiP25ImGuiTextEditCallbackDataEPv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui20SetKeyboardFocusHereEi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui3EndEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13SetScrollHereEf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui29IsRootWindowOrAnyChildFocusedEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui15IsAnyItemActiveEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui14IsMouseClickedEib;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8EndPopupEv;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZN15ImGuiTextBuffer7appendvEPKcPc;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12BeginMenuBarEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7SpacingEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui16CollapsingHeaderEPKci;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9LabelTextEPKcS1_z;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5ComboEPKcPiPKS1_ii;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8InputIntEPKcPiiii;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11InputFloat3EPKcPfii;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7DragIntEPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9SliderIntEPKcPiiiS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11SliderAngleEPKcPfff;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10ColorEdit3EPKcPf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7ListBoxEPKcPiPKS1_ii;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i;	.scl	2;	.type	32;	.endef
	.def	cosf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7GetTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13PlotHistogramEPKcPFfPviES2_iiS1_ff6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11ProgressBarEfRK6ImVec2PKc;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10GetVersionEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui17ShowMetricsWindowEPb;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList9AddCircleERK6ImVec2fjif;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList7AddLineERK6ImVec2S2_jf;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList14AddBezierCurveERK6ImVec2S2_S2_S2_jfi;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui21GetContentRegionAvailEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList12PushClipRectE6ImVec2S0_b;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList11PopClipRectEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui16SetNextWindowPosERK6ImVec2i;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5BeginEPKcPbRK6ImVec2fi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui16BeginMainMenuBarEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui14EndMainMenuBarEv;	.scl	2;	.type	32;	.endef
	.def	_ZN15ImGuiTextBuffer6appendEPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7ColumnsEiPKcb;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui14SetMouseCursorEi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10LogButtonsEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui15BeginPopupModalEPKcPbi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10EndMenuBarEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10DragFloat2EPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12IsItemActiveEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11GetFontSizeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7GetFontEv;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui17GetTextLineHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12GetCursorPosEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui14GetItemRectMaxEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui14GetItemRectMinEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10BeginGroupEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8EndGroupEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8UnindentEf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui6PushIDEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10SetTooltipEPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN16ImGuiListClipper5BeginEif;	.scl	2;	.type	32;	.endef
	.def	_ZN16ImGuiListClipper4StepEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui6IndentEf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui16CollapsingHeaderEPKcPbi;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui18InputTextMultilineEPKcPcyRK6ImVec2iPFiP25ImGuiTextEditCallbackDataEPv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10SelectableEPKcPbiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui7NewLineEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11TextColoredERK6ImVec4PKcz;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12PushStyleVarEif;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11InputFloat2EPKcPfii;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8DragInt2EPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9InputInt2EPKcPii;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10SliderInt2EPKcPiiiS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10DragFloat3EPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12SliderFloat3EPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8DragInt3EPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9InputInt3EPKcPii;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10SliderInt3EPKcPiiiS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11InputFloat4EPKcPfii;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10DragFloat4EPKcPffffS1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12SliderFloat4EPKcPfffS1_f;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9InputInt4EPKcPii;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui8DragInt4EPKcPifiiS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10SliderInt4EPKcPiiiS1_;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP31ImGuiSizeConstraintCallbackDataEPv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui21BeginPopupContextItemEPKci;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11ColorButtonERK6ImVec4bb;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10BeginPopupEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui9OpenPopupEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui22PushAllowKeyboardFocusEb;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui21PopAllowKeyboardFocusEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui20IsMouseDoubleClickedEi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui15IsMouseReleasedEi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui12IsKeyPressedEib;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13IsKeyReleasedEi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui5GetIDEPKv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10BeginChildEjRK6ImVec2bi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui17GetCursorStartPosEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui17SetScrollFromPosYEff;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui15GetItemRectSizeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13ListBoxHeaderEPKcRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13ListBoxFooterEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui26GetContentRegionAvailWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui27GetWindowContentRegionWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10GetScrollXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10SetScrollXEf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui22CaptureKeyboardFromAppEb;	.scl	2;	.type	32;	.endef
	.def	_ZN10ImDrawList22PushClipRectFullScreenEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui24CalcItemRectClosestPointERK6ImVec2bf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui17GetMouseDragDeltaEif;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13SetWindowSizeERK6ImVec2i;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui15IsMouseDraggingEif;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui25GetTreeNodeToLabelSpacingEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui10TreeNodeExEPKviPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui13IsItemClickedEi;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui11GetMousePosEv;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	_ZN5ImGui17CloseCurrentPopupEv;	.scl	2;	.type	32;	.endef
