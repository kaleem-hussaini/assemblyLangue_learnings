; code for inversing a string using si and si, concept presented by Afaan Shah!

[org 0x100]

mov si,string
add si,3
mov di,reverse
mov cx,4



reversing:

lodsb
sub si,2
stosb


loop reversing

mov ax,0x4c00
int 0x21

string:db "ABCD"
reverse:db 0


