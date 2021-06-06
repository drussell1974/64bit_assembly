global _start:
section .data ; variables
    myByte db 89

section .text ; instructions
_start:
    mov rax, 89           ; OK immediate into the accumulator - 
    mov cx, ax            ; OK register to register
    mov r11, [myByte]     ; OK memory to register
    ; THESE ARE ILLEGAL
    ; mov cx, eax         ; it should be the same size
    ; mov myByte, r11     ; you cannot have memory to register 
    ; mov myByte, 92      ; you cannot have immediate to memory
    ; mov myByte, myInt   ; you cannot move memory to memory

; MOV src, dest
; DEBUG
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register rax
; rax            0x59                89
; (gdb) ni
; (gdb) info register cx
; cx             0x59                89
; (gdb) ni
; (gdb) info register r11
; r11            0x100000059         4294967385

 