%include "io.inc"

section .data
open_message db 'Maths examples', 0

section .text
    global CMAIN
CMAIN:
    mov ebp, esp                ;Set up a stack frame for the debugger
    PRINT_STRING open_message
    NEWLINE
    
    mov eax,1
    mov ebx,20
    mov ecx,300
    mov edx,4000        
    
    add eax, ebx    
    PRINT_DEC 4,eax
    NEWLINE
    
    sub ebx, ecx
    PRINT_DEC 4,ebx
    NEWLINE

    inc ecx    
    PRINT_DEC 4,ecx
    NEWLINE
    
    dec edx
    PRINT_DEC 4,edx
    NEWLINE    
    
    imul eax,ebx
    PRINT_DEC 4,eax
    NEWLINE    
                
    xor eax, eax                
    ret