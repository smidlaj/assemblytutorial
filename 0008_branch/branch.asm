
section .data


section .text

global demo
demo:
push    ebp
mov     ebp, esp

mov     eax, 4
add     eax, 5
mov     ebx, eax

mov     esp, ebp
pop     ebp
ret

global branchDemo1
branchDemo1:
push    ebp
mov     ebp, esp

mov     eax, 1
jmp     cimke
mov     eax, 2
cimke:

mov     esp, ebp
pop     ebp
ret

global branchDemo2
branchDemo2:
push    ebp
mov     ebp, esp

mov     eax, 1
sub     eax, 1
jz      cimke2  
mov     eax, 2
cimke2:

mov     esp, ebp
pop     ebp
ret

global branchDemo3
branchDemo3:
push    ebp
mov     ebp, esp

mov     eax, 1
test     1, eax
jnae      cimke3  
mov     eax, 2
cimke3:

mov     esp, ebp
pop     ebp
ret
