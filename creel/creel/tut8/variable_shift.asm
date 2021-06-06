; SPECIFY A VALUE IN A VARIABLE TO SPECIFY HOW MANY TO SHIFT
global _start
section .text
_start:
    mov cl, 2   ; can ONLY use cl to specify shift. CHANGE THIS TO CL to AX and (dvariable_shift.asm:7: error: invalid combination of opcode and operands)
    mov edx, 16
    shr edx, cl

; DEBUG
; nasm -felf64 variable_shift.asm -o varialbe_shift.o
; ld shl.o -o bin/variable_shift
; gdb bin/32bit_shift
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register cl
; cl             0x2                 2
; (gdb) ni
; (gdb) info register edx
; edx            0x10                16
; (gdb) ni
; (gdb) info register edx
; edx            0x4                 4 ; shifts 16 two bits (as specified in the cl register right to divide by 4