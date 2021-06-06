; CREATE A 64 BIT SHIFT ON A 64 BIT REGISTER
global _start
section .text
_start:
    call _SHR
    call _SAR

_SHR:
    XOR dx, dx
    mov dx, 32
    shr dx, 1 ; shift 1 bit 16
    shr dx, 1 ; shift 1 bit 8
    shr dx, 1 ; shift 1 bit 4
    shr dx, 1 ; shift 1 bit 2
    shr dx, 1 ; shift 1 bit 1
    shr dx, 1 ; shift 1 bit 0
    shr dx, 1 ; shift 1 bit 0

_SAR:
    XOR edx, edx
    mov edx, 32
    sar edx, 1 ; shift 1 bit 16
    sar edx, 1 ; shift 1 bit 8
    sar edx, 1 ; shift 1 bit 4
    sar edx, 1 ; shift 1 bit 2
    sar edx, 1 ; shift 1 bit 1
    sar edx, 1 ; shift 1 bit 0
    sar edx, 1 ; shift 1 bit 0

; DEBUG
; nasm -felf64 sar_vs_shr.asm -o sar_vs_shr.o
; ld shl.o -o bin/sar_vs_shr
; gdb bin/sar_vs_shr
; (gdb) break _SHR
; (gdb) run
; (gdb) ni
; (gdb) info register rdx
; rdx            0x20                32
; (gdb) ni
; (gdb) info register rdx
; rdx            0x10                -15 ; HUH? it also changed to sign by bringing in ZERO 

; (gdb) quit
; gdb bin/sar_vs_shr
; (gdb) break _SAR
; (gdb) run
; (gdb) ni
; (gdb) info register rax
; rax            0x20                32
; (gdb) ni
; (gdb) info register rax
; rax            0x10                16 