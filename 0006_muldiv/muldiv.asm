
section .data


section .text


global mulDemo1
mulDemo1:
push    ebp
mov     ebp, esp

; ax = al * ah
mov     al, 10
mov     ah, 2
mul     ah

 
mov     esp, ebp
pop     ebp
ret

global mulDemo2
mulDemo2:
push    ebp
mov     ebp, esp

; ax = al * ah
mov     al, 10
mov     ah, -2
;mul     ah
imul     ah
;imul    al, ax
 
mov     esp, ebp
pop     ebp
ret


global divDemo
divDemo:
push    ebp
mov     ebp, esp

push    ebx         ; elmentem, mert a bl-t modositani fogjuk

mov     eax, 0

; al = ax / bl
; ah = ax % bl
mov     ax, 200     ; irjatok at mondjuk 1000-re, vicces lesz :)
mov     bl, 3
div     bl

; a megfelelo helyrol vedd le a kommentet, attol fuggoen, hogy 
; a hanyadost, vagy a maradekot akarod visszaadni!

; adjuk vissza a hanyadost
;mov     ah, 0
; csak a maradekot:
mov     al, ah
mov     ah, 0
 
pop     ebx

mov     esp, ebp
pop     ebp
ret
