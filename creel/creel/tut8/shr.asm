; SHIFT RIGHT
global _start
section .text
_start:
    mov rdx, 16
    shr rdx, 1

; DEBUG
; nasm -felf64 shr.asm -o shr.o
; ld shr.o -o bin/shr
; gdb bin/shr
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register rdx
; rdx            0x10                16
; (gdb) ni
; (gdb) info register rdx
; rdx            0x8                 8 ; shift 1 bit from 16 (010000b) to the right (divide by 2) to give 8 (001000b)
; 