global _start:
section .text ; instructions
_start:
    mov al, 255
    ; inc al          ; should cause an overflow, but the carry flag isn't set when using inc
    add al, 1       ; using 'add' should cause an overflow with the carry flag (likewise if dec use 'sub reg, 1')

; DEBUG
; nasm -felf64 inc.asm -o inc.o -g
; ld inc.o -o bin\inc
; gdb bin\inc
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register al
; al             0xff                -1
; (gdb) ni
; (gdb) info register al
; al             0x0                 0 ; overflow
; (gdb) info register eflags
; eflags         0x256               [ PF AF ZF IF ]

; ... with 'add al, 1' you get the carry flag
; eflags         0x257               [ CF PF AF ZF IF ]