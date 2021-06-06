global _start
section .text ; instructions
_start:
    mov eax, 00010011b     ; add b to the end for binary
    mov ecx, 10110010b
    xor eax, ecx

; DEBUG
; nasm -felf64 and.asm -o and.o
; ld and.o -o bin/and
; gdb bin/and
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register eax
; eax            0x13               19
; (gdb) ni
; (gdb) info register ecx
; ecx            0xb2                178
; (gdb) ni
; (gdb) info register eax
; 
; ... should return
;   00010011b (19)
;   10110010b (178)
; = 10100001b (161)

; 256  128 64 32 16 8 4 2 1
; 0     1  0  1  0  0 0 0 1 = 161

