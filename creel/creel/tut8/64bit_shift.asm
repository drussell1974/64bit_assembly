; CREATE A 64 BIT SHIFT ON A 64 BIT REGISTER
global _start
section .text
_start:
    mov rdx, 16
    shr rdx, 64 ; shift all the bits in a 64bit register (to wrap around)

; DEBUG
; nasm -felf64 64bit_shift.asm -o 64bit_shift.o
; ld shl.o -o bin/64bit_shift
; gdb bin/64bit_shift
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register rdx
; rdx            0x10                16
; (gdb) ni
; (gdb) info register rdx
; rdx            0x10                16  ; wraps around to give 16