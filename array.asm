[org 0x100]

; store sequencd like 0,1,2,3,... in a memory location like an array 

mov ax,1
mov bx,2

array:

mov [result+bx],ax
inc ax
add bx,2

jmp array

mov ax,0x4c00
int 0x21

result: dw 0