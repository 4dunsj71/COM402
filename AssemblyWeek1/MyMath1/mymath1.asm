%include "io.inc"

section .data
open_message db 'My Maths example!', 0

section .text
    global CMAIN
CMAIN:
    mov ebp, esp                ;Set up a stack frame for the debugger
    PRINT_STRING open_message
    NEWLINE
    
    ; write your code here
                    
    xor eax, eax                
    ret