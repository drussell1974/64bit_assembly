; SHIFT LEFT
global _start
section .text
_start:
    mov rdx, 16
    shl rdx, 1

; DEBUG
; nasm -felf64 shl.asm -o shl.o
; ld shl.o -o bin/shl
; gdb bin/shl
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register rdx
; rdx            0x10                16
; (gdb) ni
; (gdb) info register rdx
; rdx            0x20                32 ; shift 1 bit from 16 (010000b) to the left (multiply by 2) to give 32 (100000b)
; 