
section .data


section .text


global shiftDemo1
shiftDemo1:
push    ebp
mov     ebp, esp


mov     ax, -40
;sal     ax, 2
sal     ax, cl
shl     ax, 2
;sar     ax, 2
;shr     ax, 2

mov     esp, ebp
pop     ebp
ret

