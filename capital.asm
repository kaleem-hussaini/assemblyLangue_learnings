; this program will convert capital letters to small letters and also store the string length in cx register

[org 0x100]

mov si,letters_big
mov di,letters_small

mov cx,0 ; store the length of the string

conversion:
lodsb
cmp al,0 ; if the string ends then it will exit conversion and terminate the program
je exit
inc cx

add al,32
stosb

jmp conversion

exit:
mov ax,0x4c00
int 0x21

letters_big: db "ABCDEF",0

letters_small: db 0
