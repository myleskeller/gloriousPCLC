.LC0:
        .string "stof"
.LC1:
        .string "%f"
k:
        .zero   4
patient:
        .long   1116431974
        .long   1058810102
        .long   1098802790
        .long   1160654378
        .long   1122972467
filename:
        .zero   520
data_str:
        .zero   24
data_flt:
        .zero   24
.LC2:
        .string ","
get_data():
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 72
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string() [complete object constructor]
        lea     rax, [rbp-64]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:filename
        call    std::basic_istream<char, std::char_traits<char> >& std::getline<char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
        jmp     .L34
.L38:
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const
        mov     esi, OFFSET FLAT:.LC2
        mov     rdi, rax
        call    strtok
        mov     QWORD PTR [rbp-24], rax
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    atof
        cvtsd2ss        xmm0, xmm0
        movss   DWORD PTR [rbp-68], xmm0
        mov     esi, OFFSET FLAT:.LC2
        mov     edi, 0
        call    strtok
        mov     QWORD PTR [rbp-24], rax
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    atof
        cvtsd2ss        xmm0, xmm0
        movss   DWORD PTR [rbp-72], xmm0
        movss   xmm0, DWORD PTR [rbp-68]
        pxor    xmm1, xmm1
        ucomiss xmm0, xmm1
        jp      .L41
        pxor    xmm1, xmm1
        ucomiss xmm0, xmm1
        je      .L34
.L41:
        movss   xmm0, DWORD PTR [rbp-72]
        pxor    xmm1, xmm1
        ucomiss xmm0, xmm1
        jp      .L42
        pxor    xmm1, xmm1
        ucomiss xmm0, xmm1
        je      .L34
.L42:
        lea     rdx, [rbp-72]
        lea     rax, [rbp-68]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::pair<std::__strip_reference_wrapper<std::decay<float&>::type>::__type, std::__strip_reference_wrapper<std::decay<float&>::type>::__type> std::make_pair<float&, float&>(float&, float&)
        movq    rax, xmm0
        mov     QWORD PTR [rbp-32], rax
        lea     rax, [rbp-32]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:data_str
        call    std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > >::push_back(std::pair<float, float>&&)
.L34:
        lea     rax, [rbp-64]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:filename
        call    std::basic_istream<char, std::char_traits<char> >& std::getline<char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
        mov     rdx, QWORD PTR [rax]
        sub     rdx, 24
        mov     rdx, QWORD PTR [rdx]
        add     rax, rdx
        mov     rdi, rax
        call    std::basic_ios<char, std::char_traits<char> >::operator bool() const
        test    al, al
        jne     .L38
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string() [complete object destructor]
        jmp     .L43
        mov     rbx, rax
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L43:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
convert_data():
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 152
        mov     QWORD PTR [rbp-24], OFFSET FLAT:data_str
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > >::begin()
        mov     QWORD PTR [rbp-144], rax
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > >::end()
        mov     QWORD PTR [rbp-152], rax
        jmp     .L45
.L46:
        lea     rax, [rbp-144]
        mov     rdi, rax
        call    __gnu_cxx::__normal_iterator<std::pair<float, float>*, std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > > >::operator*() const
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rbp-132], rax
        mov     edx, DWORD PTR [rbp-128]
        lea     rax, [rbp-112]
        movd    xmm0, edx
        mov     rdi, rax
        call    std::__cxx11::to_string(float)
        lea     rax, [rbp-112]
        mov     esi, 0
        mov     rdi, rax
        call    std::__cxx11::stof(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*)
        movd    eax, xmm0
        mov     DWORD PTR [rbp-116], eax
        mov     edx, DWORD PTR [rbp-132]
        lea     rax, [rbp-64]
        movd    xmm0, edx
        mov     rdi, rax
        call    std::__cxx11::to_string(float)
        lea     rax, [rbp-64]
        mov     esi, 0
        mov     rdi, rax
        call    std::__cxx11::stof(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*)
        movd    eax, xmm0
        mov     DWORD PTR [rbp-68], eax
        lea     rdx, [rbp-116]
        lea     rax, [rbp-68]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::pair<std::__strip_reference_wrapper<std::decay<float>::type>::__type, std::__strip_reference_wrapper<std::decay<float>::type>::__type> std::make_pair<float, float>(float&&, float&&)
        movq    rax, xmm0
        mov     QWORD PTR [rbp-124], rax
        lea     rax, [rbp-124]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:data_flt
        call    std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > >::push_back(std::pair<float, float>&&)
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string() [complete object destructor]
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string() [complete object destructor]
        lea     rax, [rbp-144]
        mov     rdi, rax
        call    __gnu_cxx::__normal_iterator<std::pair<float, float>*, std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > > >::operator++()
.L45:
        lea     rdx, [rbp-152]
        lea     rax, [rbp-144]
        mov     rsi, rdx
        mov     rdi, rax
        call    bool __gnu_cxx::operator!=<std::pair<float, float>*, std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > > >(__gnu_cxx::__normal_iterator<std::pair<float, float>*, std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > > > const&, __gnu_cxx::__normal_iterator<std::pair<float, float>*, std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > > > const&)
        test    al, al
        jne     .L46
        jmp     .L51
        mov     rbx, rax
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string() [complete object destructor]
        jmp     .L48
        mov     rbx, rax
.L48:
        lea     rax, [rbp-112]
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L51:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
get_insulin(float, float, PatientInfo):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        movss   DWORD PTR [rbp-20], xmm0
        movss   DWORD PTR [rbp-24], xmm1
        mov     DWORD PTR [rbp-4], 0
        movss   xmm2, DWORD PTR [rbp+24]
        movss   xmm0, DWORD PTR [rbp-20]
        movaps  xmm1, xmm0
        divss   xmm1, xmm2
        movss   xmm2, DWORD PTR [rbp+32]
        movss   xmm0, DWORD PTR [rbp-24]
        subss   xmm0, xmm2
        movss   xmm2, DWORD PTR [rbp+28]
        divss   xmm0, xmm2
        addss   xmm0, xmm1
        movss   DWORD PTR [rbp-8], xmm0
        movss   xmm0, DWORD PTR [rbp-24]
        comiss  xmm0, DWORD PTR .LC4[rip]
        ja      .L53
        movss   xmm0, DWORD PTR .LC5[rip]
        comiss  xmm0, DWORD PTR [rbp-24]
        jbe     .L58
.L53:
        mov     DWORD PTR [rbp-4], 1
        jmp     .L56
.L58:
        mov     ecx, DWORD PTR k[rip]
        movsx   rax, ecx
        imul    rax, rax, 1717986919
        shr     rax, 32
        mov     edx, eax
        sar     edx, 3
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        sal     eax, 2
        add     eax, edx
        sal     eax, 2
        sub     ecx, eax
        mov     edx, ecx
        test    edx, edx
        jne     .L56
        mov     eax, DWORD PTR [rbp-8]
        movd    xmm0, eax
        call    bit_flipping(float)
        movd    eax, xmm0
        mov     DWORD PTR [rbp-8], eax
.L56:
        lea     rdx, [rbp-4]
        lea     rax, [rbp-8]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::pair<std::__strip_reference_wrapper<std::decay<float&>::type>::__type, std::__strip_reference_wrapper<std::decay<int&>::type>::__type> std::make_pair<float&, int&>(float&, int&)
        leave
        ret
bit_flipping(float):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        movss   DWORD PTR [rbp-20], xmm0
        lea     rax, [rbp-20]
        mov     eax, DWORD PTR [rax]
        mov     edx, eax
        lea     rax, [rbp-8]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::bitset<32ul>::bitset(unsigned long long) [complete object constructor]
        lea     rax, [rbp-8]
        mov     esi, 3
        mov     rdi, rax
        call    std::bitset<32ul>::flip(unsigned long)
        pxor    xmm0, xmm0
        movss   DWORD PTR [rbp-12], xmm0
        mov     eax, DWORD PTR [rbp-8]
        mov     DWORD PTR [rbp-12], eax
        movss   xmm0, DWORD PTR [rbp-12]
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 56
        call    get_data()
        call    convert_data()
        mov     QWORD PTR [rbp-24], OFFSET FLAT:data_flt
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > >::begin()
        mov     QWORD PTR [rbp-40], rax
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > >::end()
        mov     QWORD PTR [rbp-48], rax
        jmp     .L62
.L63:
        lea     rax, [rbp-40]
        mov     rdi, rax
        call    __gnu_cxx::__normal_iterator<std::pair<float, float>*, std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > > >::operator*() const
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rbp-32], rax
        mov     eax, DWORD PTR k[rip]
        add     eax, 1
        mov     DWORD PTR k[rip], eax
        movss   xmm0, DWORD PTR [rbp-28]
        mov     esi, DWORD PTR [rbp-32]
        sub     rsp, 8
        sub     rsp, 24
        mov     rcx, rsp
        mov     rax, QWORD PTR patient[rip]
        mov     rdx, QWORD PTR patient[rip+8]
        mov     QWORD PTR [rcx], rax
        mov     QWORD PTR [rcx+8], rdx
        mov     eax, DWORD PTR patient[rip+16]
        mov     DWORD PTR [rcx+16], eax
        movaps  xmm1, xmm0
        movd    xmm0, esi
        call    get_insulin(float, float, PatientInfo)
        add     rsp, 32
        mov     QWORD PTR [rbp-56], rax
        mov     esi, OFFSET FLAT:_ZSt5fixedRSt8ios_base
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::ios_base& (*)(std::ios_base&))
        mov     rbx, rax
        mov     edi, 2
        call    std::setprecision(int)
        mov     esi, eax
        mov     rdi, rbx
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setprecision)
        mov     rdx, rax
        mov     eax, DWORD PTR [rbp-56]
        movd    xmm0, eax
        mov     rdi, rdx
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(float)
        mov     esi, OFFSET FLAT:.LC2
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     rdx, rax
        mov     eax, DWORD PTR [rbp-52]
        mov     esi, eax
        mov     rdi, rdx
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        lea     rax, [rbp-40]
        mov     rdi, rax
        call    __gnu_cxx::__normal_iterator<std::pair<float, float>*, std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > > >::operator++()
.L62:
        lea     rdx, [rbp-48]
        lea     rax, [rbp-40]
        mov     rsi, rdx
        mov     rdi, rax
        call    bool __gnu_cxx::operator!=<std::pair<float, float>*, std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > > >(__gnu_cxx::__normal_iterator<std::pair<float, float>*, std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > > > const&, __gnu_cxx::__normal_iterator<std::pair<float, float>*, std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > > > const&)
        test    al, al
        jne     .L63
        mov     eax, 0
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC6:
        .string "bitset::flip"
.LC7:
        .string "%s: __position (which is %zu) >= _Nb (which is %zu)"
.LC8:
        .string "vector::_M_realloc_insert"
.LC9:
        .string "Patients/Patient10.csv"
__static_initialization_and_destruction_0(int, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     DWORD PTR [rbp-8], esi
        cmp     DWORD PTR [rbp-4], 1
        jne     .L235
        cmp     DWORD PTR [rbp-8], 65535
        jne     .L235
        mov     edi, OFFSET FLAT:_ZStL8__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:_ZStL8__ioinit
        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
        call    __cxa_atexit
        mov     edx, 8
        mov     esi, OFFSET FLAT:.LC9
        mov     edi, OFFSET FLAT:filename
        call    std::basic_ifstream<char, std::char_traits<char> >::basic_ifstream(char const*, std::_Ios_Openmode) [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:filename
        mov     edi, OFFSET FLAT:_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
        call    __cxa_atexit
        mov     edi, OFFSET FLAT:data_str
        call    std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > >::vector() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:data_str
        mov     edi, OFFSET FLAT:_ZNSt6vectorISt4pairIffESaIS1_EED1Ev
        call    __cxa_atexit
        mov     edi, OFFSET FLAT:data_flt
        call    std::vector<std::pair<float, float>, std::allocator<std::pair<float, float> > >::vector() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:data_flt
        mov     edi, OFFSET FLAT:_ZNSt6vectorISt4pairIffESaIS1_EED1Ev
        call    __cxa_atexit
.L235:
        nop
        leave
        ret
_GLOBAL__sub_I_k:
        push    rbp
        mov     rbp, rsp
        mov     esi, 65535
        mov     edi, 1
        call    __static_initialization_and_destruction_0(int, int)
        pop     rbp
        ret
.LC4:
        .long   1127481344
.LC5:
        .long   1116471296