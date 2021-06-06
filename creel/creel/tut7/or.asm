global _start
section .text ; instructions
_start:
    mov eax, 100010011b     ; add b to the end for binary
    mov ecx, 010110010b
    or eax, ecx

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
; (gdb) info register ecx
; ecx            0xb2                178
; (gdb) ni
; (gdb) info register eax
; eax            0x1b3                435
; ... should return
;   100010011b (275)
;   010110010b (178)
; = 110110011b (435)

; 512   256(179)   128(51)  64  32(19)  16(3)  8   4  2(1) 1(0)
;  0     1          1       0   1       1      0   0  1    1
; 256 + 128 + 32 + 16 + 2 + 1 = 435