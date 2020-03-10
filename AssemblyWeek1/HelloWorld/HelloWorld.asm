%include "io.inc"

section .data
msg db 'Hello, world!', 0

section .text
    global CMAIN
CMAIN:
    mov ebp, esp                ;Set up a stack frame for the debugger
    PRINT_STRING msg
    NEWLINE
    xor eax, eax                ;Equivalent of mov eax,0 - but why do this?
    ret