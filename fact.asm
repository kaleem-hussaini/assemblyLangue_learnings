; factorial of any number
[org 0x100]

xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx

mov ax,[num]
mov bx,[num]
mov cx,[num]
dec cx

factorial:

dec bx
mul bx
mov [result],ax

loop factorial


mov ax, 0x4c00
int 0x21

num:dw 4
result:dw 0