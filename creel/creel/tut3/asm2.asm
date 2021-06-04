global _start
section .data ; variables
    myByte db 78
    myWord dw 78
    
section .text ; instructions
_start:
    mov r13, [myByte] ; myByte as a pointer
    ret

; DEBUG
; break _start
; run
; info register r11
; ni
; info register r12

; POINTER