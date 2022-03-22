
section .text

global az_elet_ertelme
az_elet_ertelme:
push    ebp
mov     ebp, esp

mov     eax, 420000
mov     ax,  5312
mov     ah,  23
mov     al,  56

mov     esp, ebp
pop     ebp

ret
