; this assembly language program can count how many time a specific digit is repeated
; to do so you have to specify the digit in the showed line and also the length of array
; in the directed line , see the comments for lines

[org 0x100]

mov bx,0
mov dx,0
mov cx,6 ; set cx equals to the length of your array

iteration:
mov ax,[array+bx]
add bx,2
cmp ax,1   ; instead of 1 you have to specify your desired value
je counter

loop iteration

jmp exit

counter:
add dx,1
cmp cx,0
loopne iteration

exit:
mov ax,0x4c00
int 0x21

array: dw 1,2,1,3,1,4 ; this is your array