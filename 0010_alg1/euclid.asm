section .text

global euclidean
euclidean:
push	ebp
mov	ebp, esp
push	ebx
push	edx

mov	eax, 84
mov	ebx, 85

euclid_start:
mov	edx, 0
div	ebx

cmp	edx, 0
je	euclid_end

mov	eax, ebx
mov	ebx, edx

jmp	euclid_start

euclid_end:

mov	eax, ebx

pop	edx
pop	ebx
mov	esp, ebp
pop	ebp
ret
