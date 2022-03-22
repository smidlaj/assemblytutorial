
section .bss

global cpuName
cpuName:    resb 49

section .text

global maxExtFunct
maxExtFunct:
push    ebp
mov     ebp, esp

push    ebx
push    ecx
push    edx

mov     eax, 0x80000000
cpuid   ; eax tarolja majd a legnagyobb elerheto kiterjesztett fuggvenyt

pop     edx
pop     ecx
pop     ebx

mov     esp, ebp
pop     ebp

ret


global getCPUName
getCPUName:
push    ebp
mov     ebp, esp

push    eax
push    ebx
push    ecx
push    edx


mov     eax, 0x80000002
cpuid
mov     [cpuName], eax
mov     [cpuName+4], ebx
mov     [cpuName+8], ecx
mov     [cpuName+12], edx

mov     eax, 0x80000003
cpuid
mov     [cpuName+16], eax
mov     [cpuName+20], ebx
mov     [cpuName+24], ecx
mov     [cpuName+28], edx

mov     eax, 0x80000004
cpuid
mov     [cpuName+32], eax
mov     [cpuName+36], ebx
mov     [cpuName+40], ecx
mov     [cpuName+44], edx

mov     BYTE[cpuName+48], 0 ; illik 0-val lezarni a stringet

pop     edx
pop     ecx
pop     ebx
pop     eax

mov     esp, ebp
pop     ebp
ret
