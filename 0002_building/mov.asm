
section .text

global az_elet_ertelme
az_elet_ertelme:
push    ebp
mov     ebp, esp

mov     eax, 42

mov     esp, ebp
pop     ebp

ret
