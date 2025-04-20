[org 0x100]


mov ax,0
mov dx,0
mov si,0 ; to control the outer loop 

outer:

mov cx,6 ; to iterate the inner loop for swaping if any
mov bx,0 ; for addressing memory addresses
mov di,0 ; check the swaping status 0=no , 1=yes

inner: 


mov ax,[arr+bx]
mov dx,[arr+bx+2]

cmp dx,ax  ; Need Swaping or Not
jc swaping
jmp no_swaping

no_swaping:
add bx,2



loop inner
jmp outing

swaping:
mov di,1
mov [arr+bx],dx
mov [arr+bx+2],ax
add bx,2


loop inner

outing:
cmp di,0
je exit

inc si
cmp si,5

jne outer

exit:

mov ax,0x4c00
int 0x21

arr:dw 1,2,1,3,2,1,3

