; CREATE A 32 BIT SHIFT ON A 32 BIT REGISTER
global _start
section .text
_start:
    mov edx, 16
    shr edx, 32 ; shift all the bits in a 32bit register (to wrap around)

; DEBUG
; nasm -felf64 32bit_shift.asm -o 32bit_shift.o
; ld shl.o -o bin/32bit_shift
; gdb bin/32bit_shift
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register edx
; edx            0x10                16
; (gdb) ni
; (gdb) info register edx
; edx            0x10                16 ; wraps around back to give 16