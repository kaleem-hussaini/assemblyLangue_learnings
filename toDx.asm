org 0x100              ; Starting point for the program (COM file entry)

xor ax, ax             ; Clear AX (AX = 0)
xor dx, dx             ; Clear DX (DX = 0)

mov ax, 65535          ; Load AX with 65535 (0xFFFF)
mov bx, 2            ; Load BX with 23 (0x17)

mul bx             ; AX = AX + BX (AX = 65535 + 23 = 65558)
                       ; Result: AX = 0x0016, DX = 0x1 (carry)

; Now AX has the lower 16 bits of the result (65558 & 0xFFFF = 22), and DX has the upper 16 bits (overflow = 1)

mov ax, 0x4C00         ; DOS exit function (0x4C00) to terminate the program
int 0x21               ; Call DOS interrupt to exit
