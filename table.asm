[org 0x100]

mov ax,[var]
mov bx,0

table:

mul bx

mov [result+bx],ax
mov ax,[var]
inc bx

jmp table

mov ax,0x4c00
int 0x21

var: dw 5
result: dw 0