

[org 0x100]

mov ax, 0

mov cx, 5

mov si, source_array 

mov di, destination_array

copy_loop:

lodsb ; source{si} --> al

stosb; al ---> destination{di}

loop copy_loop

mov ax,0x4c00
int 0x21

source_array: db 1, 2, 3, 4, 5

destination_array: db 0 