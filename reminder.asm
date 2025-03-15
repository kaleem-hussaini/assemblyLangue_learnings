[org 0x100]

mov ax,[num1]
mov bx,[num2]

div bx

mov ax,0x4c00
int 0x21

num1:dw 15
num2:dw 10