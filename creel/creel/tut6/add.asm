global _start
section .text ; instructions
_start:
    mov rax, 5
    mov rcx, 12

    add rax, rcx

    ret

; DEBUG
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register rax
; (gdb) p /t 0x5