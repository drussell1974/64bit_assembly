global _start
section .data ; variables
    myByte db 78
    myWord dw 78
    
section .text ; instructions
_start:
    mov r13, [myByte] ; myByte as a pointer
    ret

; DEBUG
; (gdb) break _start
; (gdb) run
; (gdb) info register r11
; (gdb) ni
; (gdb) info register r12
; POINTER