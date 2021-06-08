; SHIFT RIGHT DOUBLE PRECISION
global _start
section .text
_start:
    mov rbx, 254
    shrd rax, rbx, 12

; DEBUG
; rbx left-hand side and rax right-hand side
; nasm -felf64 rcl.asm -o rcl.o
; ld rcl.o -o bin/rcl
; gdb bin/rcl
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register rax
; p /t 0xfe0
; (gdb) info register rbx
; p /t 0xfe 
