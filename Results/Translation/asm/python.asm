read_csv:                               # @read_csv
        push    rbp
        mov     rbp, rsp
        sub     rsp, 1072
        mov     qword ptr [rbp - 8], rdi
.LBB0_1:                                # =>This Loop Header: Depth=1
        lea     rdi, [rbp - 1040]
        mov     rdx, qword ptr [rbp - 8]
        mov     esi, 1024
        call    fgets
        cmp     rax, 0
        je      .LBB0_14
        mov     dword ptr [rbp - 1060], 0
        lea     rdi, [rbp - 1040]
        movabs  rsi, offset .L.str
        call    strtok
        mov     qword ptr [rbp - 1048], rax
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
        cmp     qword ptr [rbp - 1048], 0
        je      .LBB0_10
        cmp     dword ptr [rbp - 1060], 0
        jne     .LBB0_6
        mov     rdi, qword ptr [rbp - 1048]
        call    atof
        cvtsd2ss        xmm0, xmm0
        movss   dword ptr [rbp - 1056], xmm0
        jmp     .LBB0_9
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
        cmp     dword ptr [rbp - 1060], 1
        jne     .LBB0_8
        mov     rdi, qword ptr [rbp - 1048]
        call    atof
        cvtsd2ss        xmm0, xmm0
        movss   dword ptr [rbp - 1052], xmm0
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
        jmp     .LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
        mov     eax, dword ptr [rbp - 1060]
        add     eax, 1
        mov     dword ptr [rbp - 1060], eax
        xor     eax, eax
        mov     edi, eax
        movabs  rsi, offset .L.str
        call    strtok
        mov     qword ptr [rbp - 1048], rax
        jmp     .LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
        movss   xmm0, dword ptr [rbp - 1056]    # xmm0 = mem[0],zero,zero,zero
        xorps   xmm1, xmm1
        ucomiss xmm0, xmm1
        jne     .LBB0_11
        jp      .LBB0_11
        jmp     .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
        movss   xmm0, dword ptr [rbp - 1052]    # xmm0 = mem[0],zero,zero,zero
        xorps   xmm1, xmm1
        ucomiss xmm0, xmm1
        jne     .LBB0_12
        jp      .LBB0_12
        jmp     .LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
        mov     rdi, qword ptr [data_flt]
        mov     eax, dword ptr [num_data_flt]
        add     eax, 1
        movsxd  rsi, eax
        shl     rsi, 3
        call    realloc
        mov     qword ptr [data_flt], rax
        mov     rax, qword ptr [data_flt]
        mov     ecx, dword ptr [num_data_flt]
        mov     edx, ecx
        add     edx, 1
        mov     dword ptr [num_data_flt], edx
        movsxd  rcx, ecx
        mov     rdx, qword ptr [rbp - 1056]
        mov     qword ptr [rax + 8*rcx], rdx
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
        jmp     .LBB0_1
.LBB0_14:
        add     rsp, 1072
        pop     rbp
        ret
.LCPI1_0:
        .long   0x43340000                      # float 180
.LCPI1_1:
        .long   0x428c0000                      # float 70
get_insulin:                            # @get_insulin
        push    rbp
        mov     rbp, rsp
        lea     rax, [rbp + 16]
        mov     qword ptr [rbp - 32], rax       # 8-byte Spill
        movss   dword ptr [rbp - 4], xmm0
        movss   dword ptr [rbp - 8], xmm1
        mov     qword ptr [rbp - 16], rdi
        mov     qword ptr [rbp - 24], rsi
        movss   xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
        movss   xmm1, dword ptr [rip + .LCPI1_0] # xmm1 = mem[0],zero,zero,zero
        ucomiss xmm0, xmm1
        ja      .LBB1_2
        movss   xmm0, dword ptr [rip + .LCPI1_1] # xmm0 = mem[0],zero,zero,zero
        ucomiss xmm0, dword ptr [rbp - 8]
        jbe     .LBB1_3
.LBB1_2:
        mov     rax, qword ptr [rbp - 32]       # 8-byte Reload
        mov     rcx, qword ptr [rbp - 24]
        mov     dword ptr [rcx], 1
        movss   xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
        divss   xmm0, dword ptr [rax + 8]
        movss   xmm1, dword ptr [rbp - 8]       # xmm1 = mem[0],zero,zero,zero
        subss   xmm1, dword ptr [rax + 16]
        divss   xmm1, dword ptr [rax + 12]
        addss   xmm0, xmm1
        mov     rax, qword ptr [rbp - 16]
        movss   dword ptr [rax], xmm0
        jmp     .LBB1_4
.LBB1_3:
        mov     rax, qword ptr [rbp - 32]       # 8-byte Reload
        mov     rcx, qword ptr [rbp - 24]
        mov     dword ptr [rcx], 0
        movss   xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
        divss   xmm0, dword ptr [rax + 8]
        movss   xmm1, dword ptr [rbp - 8]       # xmm1 = mem[0],zero,zero,zero
        subss   xmm1, dword ptr [rax + 16]
        divss   xmm1, dword ptr [rax + 12]
        addss   xmm0, xmm1
        mov     rax, qword ptr [rbp - 16]
        movss   dword ptr [rax], xmm0
.LBB1_4:
        pop     rbp
        ret
bit_flipping:                           # @bit_flipping
        push    rbp
        mov     rbp, rsp
        movss   dword ptr [rbp - 4], xmm0
        lea     rax, [rbp - 4]
        mov     qword ptr [rbp - 16], rax
        mov     rax, qword ptr [rbp - 16]
        mov     eax, dword ptr [rax]
        mov     dword ptr [rbp - 8], eax
        mov     eax, dword ptr [rbp - 8]
        and     eax, 64
        mov     dword ptr [rbp - 8], eax
        mov     eax, dword ptr [rbp - 8]
        mov     dword ptr [rbp - 20], eax
        movss   xmm0, dword ptr [rbp - 20]      # xmm0 = mem[0],zero,zero,zero
        pop     rbp
        ret
main:                                   # @main
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     dword ptr [rbp - 4], 0
        movabs  rdi, offset .L.str.1
        movabs  rsi, offset .L.str.2
        call    fopen
        mov     qword ptr [rbp - 16], rax
        mov     rdi, qword ptr [rbp - 16]
        call    read_csv
        mov     dword ptr [rbp - 20], 0
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
        mov     eax, dword ptr [rbp - 20]
        cmp     eax, dword ptr [num_data_flt]
        jge     .LBB3_6
        mov     rax, qword ptr [data_flt]
        movsxd  rcx, dword ptr [rbp - 20]
        movss   xmm0, dword ptr [rax + 8*rcx]   # xmm0 = mem[0],zero,zero,zero
        movss   dword ptr [rbp - 24], xmm0
        mov     rax, qword ptr [data_flt]
        movsxd  rcx, dword ptr [rbp - 20]
        movss   xmm0, dword ptr [rax + 8*rcx + 4] # xmm0 = mem[0],zero,zero,zero
        movss   dword ptr [rbp - 28], xmm0
        movss   xmm0, dword ptr [rbp - 24]      # xmm0 = mem[0],zero,zero,zero
        movss   xmm1, dword ptr [rbp - 28]      # xmm1 = mem[0],zero,zero,zero
        movabs  rax, offset patient
        lea     rdi, [rbp - 32]
        lea     rsi, [rbp - 36]
        mov     rcx, qword ptr [rax]
        mov     qword ptr [rsp], rcx
        mov     rcx, qword ptr [rax + 8]
        mov     qword ptr [rsp + 8], rcx
        mov     eax, dword ptr [rax + 16]
        mov     dword ptr [rsp + 16], eax
        call    get_insulin
        mov     eax, dword ptr [rbp - 20]
        mov     ecx, 20
        cdq
        idiv    ecx
        cmp     edx, 0
        jne     .LBB3_4
        movss   xmm0, dword ptr [rbp - 32]      # xmm0 = mem[0],zero,zero,zero
        call    bit_flipping
        movss   dword ptr [rbp - 32], xmm0
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
        jmp     .LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
        mov     eax, dword ptr [rbp - 20]
        add     eax, 1
        mov     dword ptr [rbp - 20], eax
        jmp     .LBB3_1
.LBB3_6:
        mov     eax, dword ptr [rbp - 4]
        add     rsp, 64
        pop     rbp
        ret
k:
        .long   0                               # 0x0

patient:
        .long   0x428b6666                      # float 69.6999969
        .long   0x3f1c28f6                      # float 0.610000014
        .long   0x417e6666                      # float 15.8999996
        .long   0x452e2e2a                      # float 2786.88525
        .long   0x42ef3333                      # float 119.599998

data_flt:
        .quad   0

num_data_flt:
        .long   0                               # 0x0

.L.str:
        .asciz  ","

.L.str.1:
        .asciz  "Patients/Patient10.csv"

.L.str.2:
        .asciz  "r"