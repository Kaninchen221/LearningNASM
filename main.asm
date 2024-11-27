section .data
    message db "Hello, world!", 0Ah ; Message to print
    len equ $-message ; Length of the message

section .text
    global _start

..start:
    mov eax, 4 ; System call number for write
    mov ebx, 1 ; File descriptor (stdout)
    mov ecx, message ; Address of the message
    mov edx, len ; Length of the message
    int 0x21 ; System call

    mov eax, 1 ; System call number for exit
    int 0x21