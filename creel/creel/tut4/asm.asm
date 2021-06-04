global _start:
section .data ; variables
    myByte db 90
    myInt dw 91

section .text ; instructions
_start:
    mov rax, 89         ; immediate into the accumulator
    mov cx, ax          ; register to register
    mov cx, eax         ; but this is illegal as it should be the same size
    mov myByte, r11     ; memory to register 
    mov r11, myByte     ; register to memory
    mov myByte, 92      ; immediate to memory
    mov myByte, myInt   ; but this is illegal as you cannot move memory to memory

; MOV src, dest
; DEBUG
; break _start
; run
; info register rax
; ni
; info register cx
; ni -- illegal
; info register myByte
; ni
; info register myByte
; ni
; info register myByte



 