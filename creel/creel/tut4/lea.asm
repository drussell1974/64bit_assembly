global _start:
section .data ; variables
    myvar db 91

section .text ; instructions
_start:
    mov r11, myvar     ; moves the data to r11
    lea r11, myvar     ; moves the pointer
    ; mov [r11], myvar   ;   
    
; MOV src, dest
; DEBUG
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register r11
; (gdb) ni
; (gdb) info register r11
; (gdb) ni
; (gdb) info register r11
; r11            0x100000059         4294967385
 