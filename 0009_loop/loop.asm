
section .data


section .text

global loopDemo1
loopDemo1:
push    ebp
mov     ebp, esp

mov     ecx, 10
mov     eax, 0

addNext1:

add     eax, ecx
sub     ecx, 1
jnz     addNext1


mov     esp, ebp
pop     ebp
ret

global loopDemo2
loopDemo2:
push    ebp
mov     ebp, esp

mov     ecx, 0
mov     eax, 0

addNext2:

add     eax, ecx 
loop    addNext2

mov     esp, ebp
pop     ebp
ret

global loopDemo3
loopDemo3:
push    ebp
mov     ebp, esp

mov     ecx, 0
mov     eax, 0

jcxz    end
addNext3:

add     eax, ecx 
loop    addNext2

end:

mov     esp, ebp
pop     ebp
ret


