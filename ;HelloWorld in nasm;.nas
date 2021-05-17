;HelloWorld in nasm;
bits 64 ;

section .text
    global _start
    _start:
    mov rbx, 3          ;
    mov rax, 3          ;
    cmp rax, 4          ;
     jz HelloWorld2     ;


    HelloWorld:
    mov rax, 1          ; sys_write
    mov rdi, 1          ; sdout
    mov rsi, msg1       ; msg1
    mov rdx, length1    ; length1
    syscall             ; systemcall
      
    

    HelloWorld2:
    mov rax, 1          ; sys_write
    mov rdi, 1          ; sdout
    mov rsi, msg2       ; msg2
    mov rdx, length2    ; length2
    syscall             ; systemcall
    .end:
    mov rax, 60         ; sys_exit
    mov rdi, 0          ; return 0
    syscall             ; systemcall

section .data
    msg1 db 'HelloWorld! for NASM', 0x0A         ;
    length1 equ $ - msg1                          ;
    msg2 db 'HelloWorld! for NASM2', 0x0A        ;
    length2 equ $ -msg2                          ;