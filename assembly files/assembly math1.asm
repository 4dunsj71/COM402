%include "io.inc"

section .data
open_message db 'My Maths example!', 0

section .text
    global CMAIN
CMAIN:
    mov ebp, esp                ;Set up a stack frame for the debugger
    PRINT_STRING open_message
    NEWLINE
    ;adding numbers to registers
    add ebx,-99 ; b=-99
    add ecx,17  ; c=17
    add edx,230 ; d=230
    
    ; a=(b+c)*7*(d-6)
    PRINT_DEC 4,ebx
    add ebx,ecx     ;(b+c)
    PRINT_DEC 4,ebx
    NEWLINE
    sub edx,6       ;(d-6)
    PRINT_DEC 4,edx
    NEWLINE
    imul ebx,7      ;(b+c)*7
    PRINT_DEC 4,ebx
    NEWLINE
    imul edx,7      ;(d-6)*7
    PRINT_DEC 4,edx
    NEWLINE
    imul ebx,edx    ;(a+c)*(d-6)
    PRINT_DEC 4,ebx
    NEWLINE
    add eax,ebx     ;a=function
    PRINT_DEC 4,eax
    NEWLINE
    
     
    
    xor eax, eax                
    ret