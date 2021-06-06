section .code ; instructions

signed_problem_with_64bit_immediate:
    ADD RCX, 2147483648     

; DEBUG
; nasm -felf64 signed.asm -o signed.o
; ... results in an error
; signed.asm:10: warning: signed dword immediate exceeds bounds [-w+number-overflow]
; signed.asm:10: warning: dword data exceeds bounds [-w+number-overflow]

; ... however to solve the problem put the value into a register using mov

solution_to_signed_problem_with_64bit_immediate:
    mov RAX, 2147483648     
    ADD RCX, RAX

; DEBUG

; nasm -felf64 signed.asm -o signed.o
; ld signed.o -o bin/signed
; bin/signed
