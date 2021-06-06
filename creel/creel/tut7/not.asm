global _start
section .text ; instructions
_start:
    mov eax, 100010011b     ; add b to the end for binary
    not eax

; DEBUG
; nasm -felf64 and.asm -o and.o
; ld and.o -o bin/and
; gdb bin/and
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register eax
; eax            0x113               275
; (gdb) ni
; (gdb) info register eax
; eax            0xfffffeec          -276
; ... should return
;   100010011b (275)
;   011101100b ()

; 256 128 64 32 16 8 4 2 1
;  0   1  1  1  0  1 1 0 0
