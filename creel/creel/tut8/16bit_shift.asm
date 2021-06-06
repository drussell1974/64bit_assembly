; CREATE A 16 BIT SHIFT ON A 16 BIT REGISTER
global _start
section .text
_start:
    mov dx, 16
    shr dx, 16 ; shift all the bits in a 32bit register (to wrap around)

; DEBUG
; nasm -felf64 16bit_shift.asm -o 16bit_shift.o
; ld shl.o -o bin/16bit_shift
; gdb bin/16bit_shift
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register dx
; dx            0x10                16
; (gdb) ni
; (gdb) info register dx
; dx            0x0                 0 ; unlike 64 and 32 registers the shift does not warp around