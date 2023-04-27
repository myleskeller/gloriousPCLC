	.text
	.intel_syntax noprefix
	.file	"3u06p2n37zkvpj9l"
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he304cdf2316c41d9E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he304cdf2316c41d9E,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he304cdf2316c41d9E:
.Lfunc_begin0:
	.file	1 "/rustc/9eb3afe9ebe9c7d2b84b71002d44f4a0edac95e0/library/std/src/sys_common" "backtrace.rs"
	.loc	1 117 0
	.cfi_startproc
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 8], rdi
.Ltmp0:
	.loc	1 121 18 prologue_end
	call	_ZN4core3ops8function6FnOnce9call_once17h37aad2ac82fd44a2E
.Ltmp1:
	.file	2 "/rustc/9eb3afe9ebe9c7d2b84b71002d44f4a0edac95e0/library/core/src" "hint.rs"
	.loc	2 295 5
	#APP
	#NO_APP
.Ltmp2:
	.loc	1 127 2
	add	rsp, 40
	.cfi_def_cfa_offset 8
	ret
.Ltmp3:
.Lfunc_end0:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he304cdf2316c41d9E, .Lfunc_end0-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he304cdf2316c41d9E
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17hf0f0d86f81cb114eE,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17hf0f0d86f81cb114eE
	.globl	_ZN3std2rt10lang_start17hf0f0d86f81cb114eE
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17hf0f0d86f81cb114eE,@function
_ZN3std2rt10lang_start17hf0f0d86f81cb114eE:
.Lfunc_begin1:
	.file	3 "/rustc/9eb3afe9ebe9c7d2b84b71002d44f4a0edac95e0/library/std/src" "rt.rs"
	.loc	3 159 0
	.cfi_startproc
	sub	rsp, 56
	.cfi_def_cfa_offset 64
	mov	eax, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 24], rdx
	mov	qword ptr [rsp + 32], rcx
	mov	byte ptr [rsp + 47], al
.Ltmp4:
	.loc	3 166 10 prologue_end
	mov	qword ptr [rsp + 8], rdi
	.loc	3 165 17
	lea	rdi, [rsp + 8]
	lea	rsi, [rip + .L__unnamed_1]
	movzx	r8d, al
	call	qword ptr [rip + _ZN3std2rt19lang_start_internal17h794d1e8722b84ab9E@GOTPCREL]
	mov	qword ptr [rsp], rax
	.loc	3 165 12 is_stmt 0
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 48], rax
	.loc	3 172 2 is_stmt 1
	add	rsp, 56
	.cfi_def_cfa_offset 8
	ret
.Ltmp5:
.Lfunc_end1:
	.size	_ZN3std2rt10lang_start17hf0f0d86f81cb114eE, .Lfunc_end1-_ZN3std2rt10lang_start17hf0f0d86f81cb114eE
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h2cc189fd19c96a13E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h2cc189fd19c96a13E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h2cc189fd19c96a13E:
.Lfunc_begin2:
	.loc	3 166 0
	.cfi_startproc
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 8], rdi
.Ltmp6:
	.loc	3 166 77 prologue_end
	mov	rdi, qword ptr [rdi]
	.loc	3 166 18 is_stmt 0
	call	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he304cdf2316c41d9E
	call	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha97814c312775b23E
	mov	byte ptr [rsp + 7], al
.Ltmp7:
	.file	4 "/rustc/9eb3afe9ebe9c7d2b84b71002d44f4a0edac95e0/library/std/src" "process.rs"
	.loc	4 1820 9 is_stmt 1
	lea	rax, [rsp + 7]
	mov	qword ptr [rsp + 16], rax
.Ltmp8:
	.file	5 "/rustc/9eb3afe9ebe9c7d2b84b71002d44f4a0edac95e0/library/std/src/sys/unix/process" "process_common.rs"
	.loc	5 594 9
	movzx	eax, byte ptr [rsp + 7]
.Ltmp9:
	.loc	3 166 100
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
.Ltmp10:
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h2cc189fd19c96a13E, .Lfunc_end2-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h2cc189fd19c96a13E
	.cfi_endproc

	.section	.text._ZN4core3fmt9Arguments6new_v117h717fef1a43433fc4E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt9Arguments6new_v117h717fef1a43433fc4E,@function
_ZN4core3fmt9Arguments6new_v117h717fef1a43433fc4E:
.Lfunc_begin3:
	.file	6 "/rustc/9eb3afe9ebe9c7d2b84b71002d44f4a0edac95e0/library/core/src/fmt" "mod.rs"
	.loc	6 399 0
	.cfi_startproc
	sub	rsp, 168
	.cfi_def_cfa_offset 176
	mov	qword ptr [rsp + 16], r8
	mov	qword ptr [rsp + 24], rcx
	mov	qword ptr [rsp + 32], rdx
	mov	qword ptr [rsp + 40], rsi
	mov	qword ptr [rsp + 48], rdi
	mov	qword ptr [rsp + 56], rdi
	mov	qword ptr [rsp + 136], rsi
	mov	qword ptr [rsp + 144], rdx
	mov	qword ptr [rsp + 152], rcx
	mov	qword ptr [rsp + 160], r8
.Ltmp11:
	.loc	6 400 12 prologue_end
	cmp	rdx, r8
	jb	.LBB3_2
	.loc	6 0 12 is_stmt 0
	mov	rax, qword ptr [rsp + 32]
	mov	rcx, qword ptr [rsp + 16]
	.loc	6 400 56
	add	rcx, 1
	.loc	6 400 41
	cmp	rax, rcx
	seta	al
	.loc	6 400 12
	and	al, 1
	mov	byte ptr [rsp + 71], al
	jmp	.LBB3_3
.LBB3_2:
	mov	byte ptr [rsp + 71], 1
.LBB3_3:
	test	byte ptr [rsp + 71], 1
	jne	.LBB3_5
	.loc	6 0 12
	mov	rax, qword ptr [rsp + 56]
	mov	rcx, qword ptr [rsp + 48]
	mov	rdx, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 32]
	mov	r8, qword ptr [rsp + 40]
	.loc	6 403 34 is_stmt 1
	mov	qword ptr [rsp + 120], 0
	.loc	6 403 9 is_stmt 0
	mov	qword ptr [rcx + 16], r8
	mov	qword ptr [rcx + 24], rdi
	mov	r8, qword ptr [rsp + 120]
	mov	rdi, qword ptr [rsp + 128]
	mov	qword ptr [rcx], r8
	mov	qword ptr [rcx + 8], rdi
	mov	qword ptr [rcx + 32], rsi
	mov	qword ptr [rcx + 40], rdx
	.loc	6 404 6 is_stmt 1
	add	rsp, 168
	.cfi_def_cfa_offset 8
	ret
.LBB3_5:
	.cfi_def_cfa_offset 176
	.loc	6 401 13
	lea	rsi, [rip + .L__unnamed_2]
	lea	rcx, [rip + .L__unnamed_3]
	xor	eax, eax
	mov	r8d, eax
	lea	rdi, [rsp + 72]
	mov	qword ptr [rsp + 8], rdi
	mov	edx, 1
	call	_ZN4core3fmt9Arguments6new_v117h717fef1a43433fc4E
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rip + .L__unnamed_4]
	mov	rax, qword ptr [rip + _ZN4core9panicking9panic_fmt17h87c8fa127debfca6E@GOTPCREL]
	call	rax
	ud2
.Ltmp12:
.Lfunc_end3:
	.size	_ZN4core3fmt9Arguments6new_v117h717fef1a43433fc4E, .Lfunc_end3-_ZN4core3fmt9Arguments6new_v117h717fef1a43433fc4E
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17haea2aad4c972e4d3E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17haea2aad4c972e4d3E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17haea2aad4c972e4d3E:
.Lfunc_begin4:
	.file	7 "/rustc/9eb3afe9ebe9c7d2b84b71002d44f4a0edac95e0/library/core/src/ops" "function.rs"
	.loc	7 250 0
	.cfi_startproc
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
.Ltmp13:
	.loc	7 250 5 prologue_end
	mov	rdi, qword ptr [rdi]
	call	_ZN4core3ops8function6FnOnce9call_once17hb0251e50aba963d0E
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
.Ltmp14:
.Lfunc_end4:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17haea2aad4c972e4d3E, .Lfunc_end4-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17haea2aad4c972e4d3E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h37aad2ac82fd44a2E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h37aad2ac82fd44a2E,@function
_ZN4core3ops8function6FnOnce9call_once17h37aad2ac82fd44a2E:
.Lfunc_begin5:
	.loc	7 250 0
	.cfi_startproc
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
.Ltmp15:
	.loc	7 250 5 prologue_end
	call	rdi
	add	rsp, 24
	.cfi_def_cfa_offset 8
	ret
.Ltmp16:
.Lfunc_end5:
	.size	_ZN4core3ops8function6FnOnce9call_once17h37aad2ac82fd44a2E, .Lfunc_end5-_ZN4core3ops8function6FnOnce9call_once17h37aad2ac82fd44a2E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hb0251e50aba963d0E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17hb0251e50aba963d0E,@function
_ZN4core3ops8function6FnOnce9call_once17hb0251e50aba963d0E:
.Lfunc_begin6:
	.loc	7 250 0
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 8], rdi
.Ltmp17:
	lea	rdi, [rsp + 8]
.Ltmp20:
	.loc	7 250 5 prologue_end
	call	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h2cc189fd19c96a13E
.Ltmp18:
	mov	dword ptr [rsp + 4], eax
	jmp	.LBB6_3
.LBB6_1:
	mov	rdi, qword ptr [rsp + 24]
	call	_Unwind_Resume@PLT
	ud2
.LBB6_2:
.Ltmp19:
	.loc	7 0 5 is_stmt 0
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rsp + 24], rcx
	mov	dword ptr [rsp + 32], eax
	jmp	.LBB6_1
.LBB6_3:
	mov	eax, dword ptr [rsp + 4]
	.loc	7 250 5
	add	rsp, 40
	.cfi_def_cfa_offset 8
	ret
.Ltmp21:
.Lfunc_end6:
	.size	_ZN4core3ops8function6FnOnce9call_once17hb0251e50aba963d0E, .Lfunc_end6-_ZN4core3ops8function6FnOnce9call_once17hb0251e50aba963d0E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17hb0251e50aba963d0E,"a",@progbits
	.p2align	2
GCC_except_table6:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp17-.Lfunc_begin6
	.uleb128 .Ltmp18-.Ltmp17
	.uleb128 .Ltmp19-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp18-.Lfunc_begin6
	.uleb128 .Lfunc_end6-.Ltmp18
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd5b92b63b7e6234E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd5b92b63b7e6234E,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd5b92b63b7e6234E:
.Lfunc_begin7:
	.file	8 "/rustc/9eb3afe9ebe9c7d2b84b71002d44f4a0edac95e0/library/core/src/ptr" "mod.rs"
	.loc	8 490 0 is_stmt 1
	.cfi_startproc
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
.Ltmp22:
	.loc	8 490 1 prologue_end
	pop	rax
	.cfi_def_cfa_offset 8
	ret
.Ltmp23:
.Lfunc_end7:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd5b92b63b7e6234E, .Lfunc_end7-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd5b92b63b7e6234E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha97814c312775b23E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha97814c312775b23E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha97814c312775b23E:
.Lfunc_begin8:
	.loc	4 2182 0
	.cfi_startproc
	push	rax
	.cfi_def_cfa_offset 16
.Ltmp24:
	.loc	4 2184 6 prologue_end
	xor	eax, eax
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Ltmp25:
.Lfunc_end8:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha97814c312775b23E, .Lfunc_end8-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha97814c312775b23E
	.cfi_endproc

	.section	.text._ZN10helloworld4main17ha99aacde1817b611E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN10helloworld4main17ha99aacde1817b611E,@function
_ZN10helloworld4main17ha99aacde1817b611E:
.Lfunc_begin9:
	.file	9 "/home/akarez/OneDrive/CIS4915/Code/gloriousPCLC/helloworld" "src/main.rs"
	.loc	9 1 0
	.cfi_startproc
	sub	rsp, 56
	.cfi_def_cfa_offset 64
.Ltmp26:
	.loc	9 2 5 prologue_end
	lea	rdi, [rsp + 8]
	lea	rsi, [rip + .L__unnamed_5]
	mov	edx, 1
	lea	rcx, [rip + .L__unnamed_3]
	xor	eax, eax
	mov	r8d, eax
	call	_ZN4core3fmt9Arguments6new_v117h717fef1a43433fc4E
	lea	rdi, [rsp + 8]
	call	qword ptr [rip + _ZN3std2io5stdio6_print17h29fdefa1eb13c306E@GOTPCREL]
	.loc	9 3 2
	add	rsp, 56
	.cfi_def_cfa_offset 8
	ret
.Ltmp27:
.Lfunc_end9:
	.size	_ZN10helloworld4main17ha99aacde1817b611E, .Lfunc_end9-_ZN10helloworld4main17ha99aacde1817b611E
	.cfi_endproc

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:
.Lfunc_begin10:
	.cfi_startproc
	push	rax
	.cfi_def_cfa_offset 16
	mov	rdx, rsi
	mov	rax, qword ptr [rip + __rustc_debug_gdb_scripts_section__@GOTPCREL]
	mov	al, byte ptr [rax]
	movsxd	rsi, edi
	lea	rdi, [rip + _ZN10helloworld4main17ha99aacde1817b611E]
	xor	ecx, ecx
	call	_ZN3std2rt10lang_start17hf0f0d86f81cb114eE
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end10:
	.size	main, .Lfunc_end10-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd5b92b63b7e6234E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17haea2aad4c972e4d3E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h2cc189fd19c96a13E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h2cc189fd19c96a13E
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_6,@object
	.section	.rodata..L__unnamed_6,"a",@progbits
.L__unnamed_6:
	.ascii	"invalid args"
	.size	.L__unnamed_6, 12

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3
.L__unnamed_2:
	.quad	.L__unnamed_6
	.asciz	"\f\000\000\000\000\000\000"
	.size	.L__unnamed_2, 16

	.type	.L__unnamed_3,@object
	.section	.rodata..L__unnamed_3,"a",@progbits
	.p2align	3
.L__unnamed_3:
	.size	.L__unnamed_3, 0

	.type	.L__unnamed_7,@object
	.section	.rodata..L__unnamed_7,"a",@progbits
.L__unnamed_7:
	.ascii	"/rustc/9eb3afe9ebe9c7d2b84b71002d44f4a0edac95e0/library/core/src/fmt/mod.rs"
	.size	.L__unnamed_7, 75

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3
.L__unnamed_4:
	.quad	.L__unnamed_7
	.asciz	"K\000\000\000\000\000\000\000\221\001\000\000\r\000\000"
	.size	.L__unnamed_4, 24

	.type	.L__unnamed_8,@object
	.section	.rodata..L__unnamed_8,"a",@progbits
.L__unnamed_8:
	.ascii	"Hello, world!\n"
	.size	.L__unnamed_8, 14

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3
.L__unnamed_5:
	.quad	.L__unnamed_8
	.asciz	"\016\000\000\000\000\000\000"
	.size	.L__unnamed_5, 16

	.type	__rustc_debug_gdb_scripts_section__,@object
	.section	.debug_gdb_scripts,"aMS",@progbits,1,unique,1
	.weak	__rustc_debug_gdb_scripts_section__
__rustc_debug_gdb_scripts_section__:
	.asciz	"\001gdb_load_rust_pretty_printers.py"
	.size	__rustc_debug_gdb_scripts_section__, 34

	.section	.debug_abbrev,"",@progbits
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.ascii	"\264B"
	.byte	25
	.byte	17
	.byte	1
	.byte	85
	.byte	23
	.byte	0
	.byte	0
	.byte	2
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	2
	.byte	24
	.byte	0
	.byte	0
	.byte	3
	.byte	19
	.byte	1
	.byte	29
	.byte	19
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	4
	.byte	13
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.ascii	"\210\001"
	.byte	15
	.byte	56
	.byte	11
	.byte	0
	.byte	0
	.byte	5
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	51
	.byte	6
	.byte	0
	.byte	0
	.byte	6
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	7
	.byte	57
	.byte	1
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	8
	.byte	19
	.byte	1
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	9
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	10
	.byte	52
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.ascii	"\210\001"
	.byte	15
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	11
	.byte	29
	.byte	1
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	88
	.byte	11
	.byte	89
	.byte	11
	.byte	87
	.byte	11
	.byte	0
	.byte	0
	.byte	12
	.byte	52
	.byte	0
	.byte	2
	.byte	24
	.byte	49
	.byte	19
	.byte	0
	.byte	0
	.byte	13
	.byte	29
	.byte	1
	.byte	49
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	88
	.byte	11
	.byte	89
	.byte	5
	.byte	87
	.byte	11
	.byte	0
	.byte	0
	.byte	14
	.byte	47
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	0
	.byte	0
	.byte	15
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	16
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	17
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	18
	.byte	52
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	19
	.byte	46
	.byte	1
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	20
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	21
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	22
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	23
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.ascii	"\210\001"
	.byte	15
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	24
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	25
	.byte	4
	.byte	1
	.byte	73
	.byte	19
	.byte	109
	.byte	25
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	26
	.byte	40
	.byte	0
	.byte	3
	.byte	14
	.byte	28
	.byte	15
	.byte	0
	.byte	0
	.byte	27
	.byte	51
	.byte	1
	.byte	21
	.byte	19
	.byte	0
	.byte	0
	.byte	28
	.byte	13
	.byte	0
	.byte	73
	.byte	19
	.ascii	"\210\001"
	.byte	15
	.byte	56
	.byte	11
	.byte	52
	.byte	25
	.byte	0
	.byte	0
	.byte	29
	.byte	25
	.byte	1
	.byte	22
	.byte	11
	.byte	0
	.byte	0
	.byte	30
	.byte	19
	.byte	0
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.ascii	"\210\001"
	.byte	15
	.byte	0
	.byte	0
	.byte	31
	.byte	46
	.byte	1
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	32
	.byte	11
	.byte	0
	.byte	0
	.byte	32
	.byte	25
	.byte	1
	.byte	0
	.byte	0
	.byte	33
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	34
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	0
	.byte	0
	.byte	35
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	36
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	51
	.byte	6
	.byte	0
	.byte	0
	.byte	37
	.byte	21
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	38
	.byte	5
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	39
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	40
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	34
	.byte	13
	.byte	55
	.byte	11
	.byte	0
	.byte	0
	.byte	41
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	42
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	106
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	28
	.long	.Linfo_string1
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	0
	.long	.Ldebug_ranges0
	.byte	2
	.long	.Linfo_string3
	.long	61
	.byte	9
	.byte	3
	.quad	.L__unnamed_1
	.byte	3
	.long	181
	.long	.Linfo_string19
	.byte	48
	.byte	8
	.byte	4
	.long	.Linfo_string4
	.long	139
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string7
	.long	159
	.byte	8
	.byte	8
	.byte	4
	.long	.Linfo_string9
	.long	159
	.byte	8
	.byte	16
	.byte	4
	.long	.Linfo_string10
	.long	139
	.byte	8
	.byte	24
	.byte	4
	.long	.Linfo_string11
	.long	139
	.byte	8
	.byte	32
	.byte	4
	.long	.Linfo_string12
	.long	139
	.byte	8
	.byte	40
	.byte	0
	.byte	5
	.long	152
	.long	.Linfo_string6
	.long	0
	.byte	6
	.long	.Linfo_string5
	.byte	7
	.byte	0
	.byte	6
	.long	.Linfo_string8
	.byte	7
	.byte	8
	.byte	7
	.long	.Linfo_string13
	.byte	7
	.long	.Linfo_string14
	.byte	7
	.long	.Linfo_string15
	.byte	8
	.long	.Linfo_string18
	.byte	8
	.byte	8
	.byte	4
	.long	.Linfo_string16
	.long	720
	.byte	8
	.byte	0
	.byte	0
	.byte	9
	.quad	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	87
	.long	.Linfo_string112
	.long	.Linfo_string113
	.byte	3
	.byte	166
	.long	1864
	.byte	10
	.byte	3
	.byte	145
	.byte	8
	.byte	6
	.long	.Linfo_string16
	.byte	1
	.byte	3
	.byte	160
	.long	720
	.byte	11
	.long	561
	.quad	.Ltmp7
	.long	.Ltmp9-.Ltmp7
	.byte	3
	.byte	166
	.byte	92
	.byte	12
	.byte	2
	.byte	145
	.byte	7
	.long	578
	.byte	13
	.long	683
	.quad	.Ltmp8
	.long	.Ltmp9-.Ltmp8
	.byte	4
	.short	1820
	.byte	16
	.byte	12
	.byte	2
	.byte	145
	.byte	16
	.long	700
	.byte	0
	.byte	0
	.byte	14
	.long	152
	.long	.Linfo_string30
	.byte	0
	.byte	0
	.byte	9
	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	87
	.long	.Linfo_string109
	.long	.Linfo_string110
	.byte	3
	.byte	159
	.long	2226
	.byte	15
	.byte	2
	.byte	145
	.byte	16
	.long	.Linfo_string16
	.byte	3
	.byte	160
	.long	720
	.byte	15
	.byte	2
	.byte	145
	.byte	24
	.long	.Linfo_string129
	.byte	3
	.byte	161
	.long	2226
	.byte	15
	.byte	2
	.byte	145
	.byte	32
	.long	.Linfo_string130
	.byte	3
	.byte	162
	.long	2233
	.byte	15
	.byte	2
	.byte	145
	.byte	47
	.long	.Linfo_string133
	.byte	3
	.byte	163
	.long	1857
	.byte	14
	.long	152
	.long	.Linfo_string30
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string34
	.byte	7
	.long	.Linfo_string35
	.byte	16
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	87
	.long	.Linfo_string107
	.long	.Linfo_string108
	.byte	1
	.byte	117
	.byte	15
	.byte	2
	.byte	145
	.byte	8
	.long	.Linfo_string128
	.byte	1
	.byte	117
	.long	720
	.byte	17
	.quad	.Ltmp1
	.long	.Ltmp2-.Ltmp1
	.byte	18
	.byte	2
	.byte	145
	.byte	0
	.long	.Linfo_string80
	.byte	1
	.byte	121
	.long	152
	.byte	11
	.long	1227
	.quad	.Ltmp1
	.long	.Ltmp2-.Ltmp1
	.byte	1
	.byte	124
	.byte	5
	.byte	12
	.byte	2
	.byte	145
	.byte	16
	.long	1249
	.byte	0
	.byte	0
	.byte	14
	.long	720
	.long	.Linfo_string106
	.byte	14
	.long	152
	.long	.Linfo_string30
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string36
	.byte	8
	.long	.Linfo_string41
	.byte	1
	.byte	1
	.byte	4
	.long	.Linfo_string37
	.long	665
	.byte	1
	.byte	0
	.byte	19
	.long	.Linfo_string42
	.long	.Linfo_string43
	.byte	4
	.short	1819
	.long	1864
	.byte	1
	.byte	20
	.long	.Linfo_string45
	.byte	4
	.short	1819
	.long	543
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string104
	.byte	21
	.quad	.Lfunc_begin8
	.long	.Lfunc_end8-.Lfunc_begin8
	.byte	1
	.byte	87
	.long	.Linfo_string125
	.long	.Linfo_string126
	.byte	4
	.short	2182
	.long	543
	.byte	22
	.byte	2
	.byte	145
	.byte	0
	.long	.Linfo_string45
	.byte	4
	.short	2182
	.long	152
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string38
	.byte	7
	.long	.Linfo_string39
	.byte	7
	.long	.Linfo_string36
	.byte	7
	.long	.Linfo_string40
	.byte	8
	.long	.Linfo_string41
	.byte	1
	.byte	1
	.byte	4
	.long	.Linfo_string37
	.long	1857
	.byte	1
	.byte	0
	.byte	19
	.long	.Linfo_string46
	.long	.Linfo_string47
	.byte	5
	.short	593
	.long	1864
	.byte	1
	.byte	23
	.long	.Linfo_string45
	.byte	1
	.byte	5
	.short	593
	.long	1871
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.long	733
	.long	.Linfo_string17
	.long	0
	.byte	24
	.byte	7
	.long	.Linfo_string20
	.byte	7
	.long	.Linfo_string21
	.byte	7
	.long	.Linfo_string14
	.byte	7
	.long	.Linfo_string22
	.byte	25
	.long	1857

	.long	.Linfo_string28
	.byte	1
	.byte	1
	.byte	26
	.long	.Linfo_string24
	.byte	0
	.byte	26
	.long	.Linfo_string25
	.byte	1
	.byte	26
	.long	.Linfo_string26
	.byte	2
	.byte	26
	.long	.Linfo_string27
	.byte	3
	.byte	0
	.byte	8
	.long	.Linfo_string70
	.byte	56
	.byte	8
	.byte	4
	.long	.Linfo_string57
	.long	159
	.byte	8
	.byte	48
	.byte	4
	.long	.Linfo_string58
	.long	820
	.byte	8
	.byte	0
	.byte	0
	.byte	8
	.long	.Linfo_string69
	.byte	48
	.byte	8
	.byte	4
	.long	.Linfo_string59
	.long	2008
	.byte	4
	.byte	36
	.byte	4
	.long	.Linfo_string9
	.long	754
	.byte	1
	.byte	40
	.byte	4
	.long	.Linfo_string61
	.long	2015
	.byte	4
	.byte	32
	.byte	4
	.long	.Linfo_string63
	.long	883
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string68
	.long	883
	.byte	8
	.byte	16
	.byte	0
	.byte	8
	.long	.Linfo_string67
	.byte	16
	.byte	8
	.byte	27
	.long	895
	.byte	28
	.long	1962
	.byte	8
	.byte	0

	.byte	29
	.byte	0
	.byte	4
	.long	.Linfo_string64
	.long	945
	.byte	8
	.byte	0
	.byte	0
	.byte	29
	.byte	1
	.byte	4
	.long	.Linfo_string65
	.long	964
	.byte	8
	.byte	0
	.byte	0
	.byte	29
	.byte	2
	.byte	4
	.long	.Linfo_string66
	.long	983
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.long	.Linfo_string64
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string37
	.long	159
	.byte	8
	.byte	8
	.byte	0
	.byte	8
	.long	.Linfo_string65
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string37
	.long	159
	.byte	8
	.byte	8
	.byte	0
	.byte	30
	.long	.Linfo_string66
	.byte	16
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.long	.Linfo_string99
	.byte	48
	.byte	8
	.byte	4
	.long	.Linfo_string49
	.long	1884
	.byte	8
	.byte	16
	.byte	4
	.long	.Linfo_string21
	.long	1268
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string74
	.long	2022
	.byte	8
	.byte	32
	.byte	21
	.quad	.Lfunc_begin3
	.long	.Lfunc_end3-.Lfunc_begin3
	.byte	1
	.byte	87
	.long	.Linfo_string114
	.long	.Linfo_string115
	.byte	6
	.short	399
	.long	993
	.byte	22
	.byte	3
	.byte	145
	.ascii	"\210\001"
	.long	.Linfo_string49
	.byte	6
	.short	399
	.long	1884
	.byte	22
	.byte	3
	.byte	145
	.ascii	"\230\001"
	.long	.Linfo_string74
	.byte	6
	.short	399
	.long	2022
	.byte	0
	.byte	0
	.byte	8
	.long	.Linfo_string97
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string75
	.long	2061
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string79
	.long	2074
	.byte	8
	.byte	8
	.byte	0
	.byte	7
	.long	.Linfo_string76
	.byte	30
	.long	.Linfo_string77
	.byte	0
	.byte	1
	.byte	0
	.byte	30
	.long	.Linfo_string82
	.byte	0
	.byte	1
	.byte	8
	.long	.Linfo_string94
	.byte	64
	.byte	8
	.byte	4
	.long	.Linfo_string61
	.long	2015
	.byte	4
	.byte	48
	.byte	4
	.long	.Linfo_string59
	.long	2008
	.byte	4
	.byte	52
	.byte	4
	.long	.Linfo_string9
	.long	754
	.byte	1
	.byte	56
	.byte	4
	.long	.Linfo_string68
	.long	1361
	.byte	8
	.byte	16
	.byte	4
	.long	.Linfo_string63
	.long	1361
	.byte	8
	.byte	32
	.byte	4
	.long	.Linfo_string87
	.long	2116
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string29
	.byte	31
	.long	.Linfo_string31
	.long	.Linfo_string32
	.byte	2
	.short	294
	.byte	1
	.byte	14
	.long	152
	.long	.Linfo_string30
	.byte	20
	.long	.Linfo_string33
	.byte	2
	.short	294
	.long	152
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string54
	.byte	8
	.long	.Linfo_string73
	.byte	16
	.byte	8
	.byte	27
	.long	1280
	.byte	28
	.long	1962
	.byte	8
	.byte	0

	.byte	29
	.byte	0
	.byte	4
	.long	.Linfo_string56
	.long	1315
	.byte	8
	.byte	0
	.byte	0
	.byte	32
	.byte	4
	.long	.Linfo_string72
	.long	1332
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.long	.Linfo_string56
	.byte	16
	.byte	8
	.byte	14
	.long	1969
	.long	.Linfo_string30
	.byte	0
	.byte	8
	.long	.Linfo_string72
	.byte	16
	.byte	8
	.byte	14
	.long	1969
	.long	.Linfo_string30
	.byte	4
	.long	.Linfo_string37
	.long	1969
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.long	.Linfo_string86
	.byte	16
	.byte	8
	.byte	27
	.long	1373
	.byte	28
	.long	1962
	.byte	8
	.byte	0

	.byte	29
	.byte	0
	.byte	4
	.long	.Linfo_string56
	.long	1409
	.byte	8
	.byte	0
	.byte	0
	.byte	29
	.byte	1
	.byte	4
	.long	.Linfo_string72
	.long	1426
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.long	.Linfo_string56
	.byte	16
	.byte	8
	.byte	14
	.long	159
	.long	.Linfo_string30
	.byte	0
	.byte	8
	.long	.Linfo_string72
	.byte	16
	.byte	8
	.byte	14
	.long	159
	.long	.Linfo_string30
	.byte	4
	.long	.Linfo_string37
	.long	159
	.byte	8
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string80
	.byte	8
	.long	.Linfo_string85
	.byte	1
	.byte	1
	.byte	27
	.long	1473
	.byte	28
	.long	1857
	.byte	1
	.byte	0

	.byte	29
	.byte	0
	.byte	4
	.long	.Linfo_string81
	.long	1509
	.byte	1
	.byte	0
	.byte	0
	.byte	29
	.byte	1
	.byte	4
	.long	.Linfo_string84
	.long	1546
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.long	.Linfo_string81
	.byte	1
	.byte	1
	.byte	14
	.long	152
	.long	.Linfo_string30
	.byte	14
	.long	1140
	.long	.Linfo_string83
	.byte	4
	.long	.Linfo_string37
	.long	152
	.byte	1
	.byte	1
	.byte	0
	.byte	8
	.long	.Linfo_string84
	.byte	1
	.byte	1
	.byte	14
	.long	152
	.long	.Linfo_string30
	.byte	14
	.long	1140
	.long	.Linfo_string83
	.byte	4
	.long	.Linfo_string37
	.long	1140
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string100
	.byte	7
	.long	.Linfo_string101
	.byte	7
	.long	.Linfo_string102
	.byte	9
	.quad	.Lfunc_begin4
	.long	.Lfunc_end4-.Lfunc_begin4
	.byte	1
	.byte	87
	.long	.Linfo_string118
	.long	.Linfo_string119
	.byte	7
	.byte	250
	.long	1864
	.byte	33
	.byte	2
	.byte	145
	.byte	16
	.byte	7
	.byte	250
	.long	2259
	.byte	33
	.byte	2
	.byte	145
	.byte	8
	.byte	7
	.byte	250
	.long	152
	.byte	14
	.long	181
	.long	.Linfo_string116
	.byte	14
	.long	152
	.long	.Linfo_string117
	.byte	0
	.byte	16
	.quad	.Lfunc_begin5
	.long	.Lfunc_end5-.Lfunc_begin5
	.byte	1
	.byte	87
	.long	.Linfo_string120
	.long	.Linfo_string121
	.byte	7
	.byte	250
	.byte	33
	.byte	2
	.byte	145
	.byte	16
	.byte	7
	.byte	250
	.long	720
	.byte	33
	.byte	2
	.byte	145
	.byte	8
	.byte	7
	.byte	250
	.long	152
	.byte	14
	.long	720
	.long	.Linfo_string116
	.byte	14
	.long	152
	.long	.Linfo_string117
	.byte	0
	.byte	9
	.quad	.Lfunc_begin6
	.long	.Lfunc_end6-.Lfunc_begin6
	.byte	1
	.byte	87
	.long	.Linfo_string122
	.long	.Linfo_string119
	.byte	7
	.byte	250
	.long	1864
	.byte	33
	.byte	2
	.byte	145
	.byte	8
	.byte	7
	.byte	250
	.long	181
	.byte	33
	.byte	2
	.byte	145
	.byte	16
	.byte	7
	.byte	250
	.long	152
	.byte	14
	.long	181
	.long	.Linfo_string116
	.byte	14
	.long	152
	.long	.Linfo_string117
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.long	.Linfo_string103
	.byte	34
	.quad	.Lfunc_begin7
	.long	.Lfunc_end7-.Lfunc_begin7
	.byte	1
	.byte	87
	.long	.Linfo_string123
	.long	.Linfo_string124
	.byte	8
	.short	490
	.byte	35
	.byte	2
	.byte	145
	.byte	0
	.byte	8
	.short	490
	.long	2259
	.byte	14
	.long	181
	.long	.Linfo_string30
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.long	.Linfo_string23
	.byte	7
	.byte	1
	.byte	6
	.long	.Linfo_string44
	.byte	5
	.byte	4
	.byte	5
	.long	665
	.long	.Linfo_string48
	.long	0
	.byte	8
	.long	.Linfo_string53
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string50
	.long	1914
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string51
	.long	159
	.byte	8
	.byte	8
	.byte	0
	.byte	36
	.long	1923
	.long	0
	.byte	8
	.long	.Linfo_string52
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string50
	.long	1953
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string51
	.long	159
	.byte	8
	.byte	8
	.byte	0
	.byte	36
	.long	1857
	.long	0
	.byte	6
	.long	.Linfo_string55
	.byte	7
	.byte	8
	.byte	8
	.long	.Linfo_string71
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string50
	.long	1999
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string51
	.long	159
	.byte	8
	.byte	8
	.byte	0
	.byte	36
	.long	790
	.long	0
	.byte	6
	.long	.Linfo_string60
	.byte	16
	.byte	4
	.byte	6
	.long	.Linfo_string62
	.byte	7
	.byte	4
	.byte	8
	.long	.Linfo_string98
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string50
	.long	2052
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string51
	.long	159
	.byte	8
	.byte	8
	.byte	0
	.byte	36
	.long	1097
	.long	0
	.byte	5
	.long	1132
	.long	.Linfo_string78
	.long	0
	.byte	5
	.long	2087
	.long	.Linfo_string96
	.long	0
	.byte	37
	.long	1461
	.byte	38
	.long	2061
	.byte	38
	.long	2103
	.byte	0
	.byte	5
	.long	1147
	.long	.Linfo_string95
	.long	0
	.byte	8
	.long	.Linfo_string93
	.byte	16
	.byte	8
	.byte	4
	.long	.Linfo_string88
	.long	2146
	.byte	8
	.byte	0
	.byte	4
	.long	.Linfo_string90
	.long	2162
	.byte	8
	.byte	8
	.byte	0
	.byte	36
	.long	2155
	.long	0
	.byte	30
	.long	.Linfo_string89
	.byte	0
	.byte	1
	.byte	5
	.long	2175
	.long	.Linfo_string92
	.long	0
	.byte	39
	.long	159
	.byte	40
	.long	2188
	.byte	0
	.byte	3
	.byte	0
	.byte	41
	.long	.Linfo_string91
	.byte	8
	.byte	7
	.byte	7
	.long	.Linfo_string105
	.byte	42
	.quad	.Lfunc_begin9
	.long	.Lfunc_end9-.Lfunc_begin9
	.byte	1
	.byte	87
	.long	.Linfo_string127
	.long	.Linfo_string16
	.byte	9
	.byte	1

	.byte	0
	.byte	6
	.long	.Linfo_string111
	.byte	5
	.byte	8
	.byte	5
	.long	2246
	.long	.Linfo_string132
	.long	0
	.byte	5
	.long	1857
	.long	.Linfo_string131
	.long	0
	.byte	5
	.long	181
	.long	.Linfo_string134
	.long	0
	.byte	0
.Ldebug_info_end0:
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
.Lsec_end0:
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he304cdf2316c41d9E,"ax",@progbits
.Lsec_end1:
	.section	.text._ZN3std2rt10lang_start17hf0f0d86f81cb114eE,"ax",@progbits
.Lsec_end2:
	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h2cc189fd19c96a13E","ax",@progbits
.Lsec_end3:
	.section	.text._ZN4core3fmt9Arguments6new_v117h717fef1a43433fc4E,"ax",@progbits
.Lsec_end4:
	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17haea2aad4c972e4d3E","ax",@progbits
.Lsec_end5:
	.section	.text._ZN4core3ops8function6FnOnce9call_once17h37aad2ac82fd44a2E,"ax",@progbits
.Lsec_end6:
	.section	.text._ZN4core3ops8function6FnOnce9call_once17hb0251e50aba963d0E,"ax",@progbits
.Lsec_end7:
	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd5b92b63b7e6234E","ax",@progbits
.Lsec_end8:
	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha97814c312775b23E","ax",@progbits
.Lsec_end9:
	.section	.text._ZN10helloworld4main17ha99aacde1817b611E,"ax",@progbits
.Lsec_end10:
	.section	.debug_aranges,"",@progbits
	.long	204
	.short	2
	.long	.Lcu_begin0
	.byte	8
	.byte	0
	.zero	4,255
	.quad	.L__unnamed_1
	.quad	.Lsec_end0-.L__unnamed_1
	.quad	.Lfunc_begin0
	.quad	.Lsec_end1-.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lsec_end2-.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Lsec_end3-.Lfunc_begin2
	.quad	.Lfunc_begin3
	.quad	.Lsec_end4-.Lfunc_begin3
	.quad	.Lfunc_begin4
	.quad	.Lsec_end5-.Lfunc_begin4
	.quad	.Lfunc_begin5
	.quad	.Lsec_end6-.Lfunc_begin5
	.quad	.Lfunc_begin6
	.quad	.Lsec_end7-.Lfunc_begin6
	.quad	.Lfunc_begin7
	.quad	.Lsec_end8-.Lfunc_begin7
	.quad	.Lfunc_begin8
	.quad	.Lsec_end9-.Lfunc_begin8
	.quad	.Lfunc_begin9
	.quad	.Lsec_end10-.Lfunc_begin9
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_end1
	.quad	.Lfunc_begin2
	.quad	.Lfunc_end2
	.quad	.Lfunc_begin3
	.quad	.Lfunc_end3
	.quad	.Lfunc_begin4
	.quad	.Lfunc_end4
	.quad	.Lfunc_begin5
	.quad	.Lfunc_end5
	.quad	.Lfunc_begin6
	.quad	.Lfunc_end6
	.quad	.Lfunc_begin7
	.quad	.Lfunc_end7
	.quad	.Lfunc_begin8
	.quad	.Lfunc_end8
	.quad	.Lfunc_begin9
	.quad	.Lfunc_end9
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang LLVM (rustc version 1.68.2 (9eb3afe9e 2023-03-27) (Arch Linux rust 1:1.68.2-1))"
.Linfo_string1:
	.asciz	"src/main.rs/@/3u06p2n37zkvpj9l"
.Linfo_string2:
	.asciz	"/home/akarez/OneDrive/CIS4915/Code/gloriousPCLC/helloworld"
.Linfo_string3:
	.asciz	"<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable}"
.Linfo_string4:
	.asciz	"drop_in_place"
.Linfo_string5:
	.asciz	"()"
.Linfo_string6:
	.asciz	"*const ()"
.Linfo_string7:
	.asciz	"size"
.Linfo_string8:
	.asciz	"usize"
.Linfo_string9:
	.asciz	"align"
.Linfo_string10:
	.asciz	"__method3"
.Linfo_string11:
	.asciz	"__method4"
.Linfo_string12:
	.asciz	"__method5"
.Linfo_string13:
	.asciz	"std"
.Linfo_string14:
	.asciz	"rt"
.Linfo_string15:
	.asciz	"lang_start"
.Linfo_string16:
	.asciz	"main"
.Linfo_string17:
	.asciz	"fn()"
.Linfo_string18:
	.asciz	"{closure_env#0}<()>"
.Linfo_string19:
	.asciz	"<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable_type}"
.Linfo_string20:
	.asciz	"core"
.Linfo_string21:
	.asciz	"fmt"
.Linfo_string22:
	.asciz	"v1"
.Linfo_string23:
	.asciz	"u8"
.Linfo_string24:
	.asciz	"Left"
.Linfo_string25:
	.asciz	"Right"
.Linfo_string26:
	.asciz	"Center"
.Linfo_string27:
	.asciz	"Unknown"
.Linfo_string28:
	.asciz	"Alignment"
.Linfo_string29:
	.asciz	"hint"
.Linfo_string30:
	.asciz	"T"
.Linfo_string31:
	.asciz	"_ZN4core4hint9black_box17h633531df9f194d3dE"
.Linfo_string32:
	.asciz	"black_box<()>"
.Linfo_string33:
	.asciz	"dummy"
.Linfo_string34:
	.asciz	"sys_common"
.Linfo_string35:
	.asciz	"backtrace"
.Linfo_string36:
	.asciz	"process"
.Linfo_string37:
	.asciz	"__0"
.Linfo_string38:
	.asciz	"sys"
.Linfo_string39:
	.asciz	"unix"
.Linfo_string40:
	.asciz	"process_common"
.Linfo_string41:
	.asciz	"ExitCode"
.Linfo_string42:
	.asciz	"_ZN3std7process8ExitCode6to_i3217hc23702644cf70306E"
.Linfo_string43:
	.asciz	"to_i32"
.Linfo_string44:
	.asciz	"i32"
.Linfo_string45:
	.asciz	"self"
.Linfo_string46:
	.asciz	"_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h7ab180a579ed12d2E"
.Linfo_string47:
	.asciz	"as_i32"
.Linfo_string48:
	.asciz	"&std::sys::unix::process::process_common::ExitCode"
.Linfo_string49:
	.asciz	"pieces"
.Linfo_string50:
	.asciz	"data_ptr"
.Linfo_string51:
	.asciz	"length"
.Linfo_string52:
	.asciz	"&str"
.Linfo_string53:
	.asciz	"&[&str]"
.Linfo_string54:
	.asciz	"option"
.Linfo_string55:
	.asciz	"u64"
.Linfo_string56:
	.asciz	"None"
.Linfo_string57:
	.asciz	"position"
.Linfo_string58:
	.asciz	"format"
.Linfo_string59:
	.asciz	"fill"
.Linfo_string60:
	.asciz	"char"
.Linfo_string61:
	.asciz	"flags"
.Linfo_string62:
	.asciz	"u32"
.Linfo_string63:
	.asciz	"precision"
.Linfo_string64:
	.asciz	"Is"
.Linfo_string65:
	.asciz	"Param"
.Linfo_string66:
	.asciz	"Implied"
.Linfo_string67:
	.asciz	"Count"
.Linfo_string68:
	.asciz	"width"
.Linfo_string69:
	.asciz	"FormatSpec"
.Linfo_string70:
	.asciz	"Argument"
.Linfo_string71:
	.asciz	"&[core::fmt::rt::v1::Argument]"
.Linfo_string72:
	.asciz	"Some"
.Linfo_string73:
	.asciz	"Option<&[core::fmt::rt::v1::Argument]>"
.Linfo_string74:
	.asciz	"args"
.Linfo_string75:
	.asciz	"value"
.Linfo_string76:
	.asciz	"{extern#0}"
.Linfo_string77:
	.asciz	"Opaque"
.Linfo_string78:
	.asciz	"&core::fmt::{extern#0}::Opaque"
.Linfo_string79:
	.asciz	"formatter"
.Linfo_string80:
	.asciz	"result"
.Linfo_string81:
	.asciz	"Ok"
.Linfo_string82:
	.asciz	"Error"
.Linfo_string83:
	.asciz	"E"
.Linfo_string84:
	.asciz	"Err"
.Linfo_string85:
	.asciz	"Result<(), core::fmt::Error>"
.Linfo_string86:
	.asciz	"Option<usize>"
.Linfo_string87:
	.asciz	"buf"
.Linfo_string88:
	.asciz	"pointer"
.Linfo_string89:
	.asciz	"dyn core::fmt::Write"
.Linfo_string90:
	.asciz	"vtable"
.Linfo_string91:
	.asciz	"__ARRAY_SIZE_TYPE__"
.Linfo_string92:
	.asciz	"&[usize; 3]"
.Linfo_string93:
	.asciz	"&mut dyn core::fmt::Write"
.Linfo_string94:
	.asciz	"Formatter"
.Linfo_string95:
	.asciz	"&mut core::fmt::Formatter"
.Linfo_string96:
	.asciz	"fn(&core::fmt::{extern#0}::Opaque, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>"
.Linfo_string97:
	.asciz	"ArgumentV1"
.Linfo_string98:
	.asciz	"&[core::fmt::ArgumentV1]"
.Linfo_string99:
	.asciz	"Arguments"
.Linfo_string100:
	.asciz	"ops"
.Linfo_string101:
	.asciz	"function"
.Linfo_string102:
	.asciz	"FnOnce"
.Linfo_string103:
	.asciz	"ptr"
.Linfo_string104:
	.asciz	"{impl#53}"
.Linfo_string105:
	.asciz	"helloworld"
.Linfo_string106:
	.asciz	"F"
.Linfo_string107:
	.asciz	"_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he304cdf2316c41d9E"
.Linfo_string108:
	.asciz	"__rust_begin_short_backtrace<fn(), ()>"
.Linfo_string109:
	.asciz	"_ZN3std2rt10lang_start17hf0f0d86f81cb114eE"
.Linfo_string110:
	.asciz	"lang_start<()>"
.Linfo_string111:
	.asciz	"isize"
.Linfo_string112:
	.asciz	"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h2cc189fd19c96a13E"
.Linfo_string113:
	.asciz	"{closure#0}<()>"
.Linfo_string114:
	.asciz	"_ZN4core3fmt9Arguments6new_v117h717fef1a43433fc4E"
.Linfo_string115:
	.asciz	"new_v1"
.Linfo_string116:
	.asciz	"Self"
.Linfo_string117:
	.asciz	"Args"
.Linfo_string118:
	.asciz	"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17haea2aad4c972e4d3E"
.Linfo_string119:
	.asciz	"call_once<std::rt::lang_start::{closure_env#0}<()>, ()>"
.Linfo_string120:
	.asciz	"_ZN4core3ops8function6FnOnce9call_once17h37aad2ac82fd44a2E"
.Linfo_string121:
	.asciz	"call_once<fn(), ()>"
.Linfo_string122:
	.asciz	"_ZN4core3ops8function6FnOnce9call_once17hb0251e50aba963d0E"
.Linfo_string123:
	.asciz	"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hdd5b92b63b7e6234E"
.Linfo_string124:
	.asciz	"drop_in_place<std::rt::lang_start::{closure_env#0}<()>>"
.Linfo_string125:
	.asciz	"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17ha97814c312775b23E"
.Linfo_string126:
	.asciz	"report"
.Linfo_string127:
	.asciz	"_ZN10helloworld4main17ha99aacde1817b611E"
.Linfo_string128:
	.asciz	"f"
.Linfo_string129:
	.asciz	"argc"
.Linfo_string130:
	.asciz	"argv"
.Linfo_string131:
	.asciz	"*const u8"
.Linfo_string132:
	.asciz	"*const *const u8"
.Linfo_string133:
	.asciz	"sigpipe"
.Linfo_string134:
	.asciz	"*mut std::rt::lang_start::{closure_env#0}<()>"
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.short	2
	.long	.Lcu_begin0
	.long	2273
	.long	416
	.asciz	"backtrace"
	.long	1456
	.asciz	"result"
	.long	650
	.asciz	"unix"
	.long	655
	.asciz	"process"
	.long	1590
	.asciz	"function"
	.long	734
	.asciz	"core"
	.long	166
	.asciz	"std"
	.long	765
	.asciz	"Left"
	.long	176
	.asciz	"lang_start"
	.long	783
	.asciz	"Unknown"
	.long	561
	.asciz	"to_i32"
	.long	1585
	.asciz	"ops"
	.long	592
	.asciz	"{impl#53}"
	.long	1803
	.asciz	"ptr"
	.long	1263
	.asciz	"option"
	.long	597
	.asciz	"report"
	.long	771
	.asciz	"Right"
	.long	1808
	.asciz	"drop_in_place<std::rt::lang_start::{closure_env#0}<()>>"
	.long	777
	.asciz	"Center"
	.long	1127
	.asciz	"{extern#0}"
	.long	683
	.asciz	"as_i32"
	.long	2200
	.asciz	"main"
	.long	744
	.asciz	"rt"
	.long	739
	.asciz	"fmt"
	.long	749
	.asciz	"v1"
	.long	411
	.asciz	"sys_common"
	.long	42
	.asciz	"<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable}"
	.long	660
	.asciz	"process_common"
	.long	1732
	.asciz	"call_once<std::rt::lang_start::{closure_env#0}<()>, ()>"
	.long	1227
	.asciz	"black_box<()>"
	.long	1033
	.asciz	"new_v1"
	.long	1222
	.asciz	"hint"
	.long	200
	.asciz	"{closure#0}<()>"
	.long	1595
	.asciz	"FnOnce"
	.long	421
	.asciz	"__rust_begin_short_backtrace<fn(), ()>"
	.long	315
	.asciz	"lang_start<()>"
	.long	2195
	.asciz	"helloworld"
	.long	1668
	.asciz	"call_once<fn(), ()>"
	.long	645
	.asciz	"sys"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0
.LpubTypes_start0:
	.short	2
	.long	.Lcu_begin0
	.long	2273
	.long	2022
	.asciz	"&[core::fmt::ArgumentV1]"
	.long	2226
	.asciz	"isize"
	.long	2103
	.asciz	"&mut core::fmt::Formatter"
	.long	2074
	.asciz	"fn(&core::fmt::{extern#0}::Opaque, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>"
	.long	1132
	.asciz	"Opaque"
	.long	1857
	.asciz	"u8"
	.long	2233
	.asciz	"*const *const u8"
	.long	159
	.asciz	"usize"
	.long	152
	.asciz	"()"
	.long	820
	.asciz	"FormatSpec"
	.long	1147
	.asciz	"Formatter"
	.long	2259
	.asciz	"*mut std::rt::lang_start::{closure_env#0}<()>"
	.long	2162
	.asciz	"&[usize; 3]"
	.long	1884
	.asciz	"&[&str]"
	.long	2008
	.asciz	"char"
	.long	1962
	.asciz	"u64"
	.long	754
	.asciz	"Alignment"
	.long	1268
	.asciz	"Option<&[core::fmt::rt::v1::Argument]>"
	.long	139
	.asciz	"*const ()"
	.long	790
	.asciz	"Argument"
	.long	1361
	.asciz	"Option<usize>"
	.long	720
	.asciz	"fn()"
	.long	2246
	.asciz	"*const u8"
	.long	883
	.asciz	"Count"
	.long	1097
	.asciz	"ArgumentV1"
	.long	1140
	.asciz	"Error"
	.long	61
	.asciz	"<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable_type}"
	.long	2116
	.asciz	"&mut dyn core::fmt::Write"
	.long	1864
	.asciz	"i32"
	.long	1969
	.asciz	"&[core::fmt::rt::v1::Argument]"
	.long	2155
	.asciz	"dyn core::fmt::Write"
	.long	1871
	.asciz	"&std::sys::unix::process::process_common::ExitCode"
	.long	665
	.asciz	"ExitCode"
	.long	993
	.asciz	"Arguments"
	.long	1461
	.asciz	"Result<(), core::fmt::Error>"
	.long	2015
	.asciz	"u32"
	.long	181
	.asciz	"{closure_env#0}<()>"
	.long	2061
	.asciz	"&core::fmt::{extern#0}::Opaque"
	.long	1923
	.asciz	"&str"
	.long	0
.LpubTypes_end0:
	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
