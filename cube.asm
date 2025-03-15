[org 0x100]

mov ax,1
mov bx,1

mov cx,5

cube:
mul bx
mul bx

mov [result],ax

inc bx

mov ax,bx

loop cube

mov ax,0x4c00
int 0x21

result:dw 0