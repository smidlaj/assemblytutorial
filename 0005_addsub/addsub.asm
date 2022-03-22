
section .data

a: db  10
b: db   5
c: db  250
d: db   -5
e: db  246  ;ugyanaz a bitminta, mint a -10

numA: dq    105005204496
numB: dq    342434252356

section .text

global addLong
addLong:
push    ebp
mov     ebp, esp

mov     eax, [numA]
mov     edx, [numA+4]
add     eax, [numB]
adc     edx, [numB+4]

mov     esp, ebp
pop     ebp
ret

global addDemo
addDemo:
push    ebp
mov     ebp, esp

mov     al, [a]
add     al, [b]
add     al, [c]
add     al, [d]
add     al, [e]

mov     al, 16
add     al, [e]

mov     al, 127
add     al, 1

mov     al, -50
add     al, -110
 
mov     esp, ebp
pop     ebp
ret
