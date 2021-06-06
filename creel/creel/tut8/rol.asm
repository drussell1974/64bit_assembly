; ROTATE LEFT
global _start
section .text
_start:
    mov dx, 16 
    rol dx, 1   ; 32
    rol dx, 1   ; 64
    rol dx, 1   ; 128
    rol dx, 1   ; 256  
    rol dx, 1   ; 512
    rol dx, 1   ; 1024
    rol dx, 1   ; 2048
    rol dx, 1   ; 4096
    rol dx, 1   ; 8192
    rol dx, 1   ; 16384
    rol dx, 1   ; -32768
    rol dx, 1   ; 1
    rol dx, 1   ; 2
    rol dx, 1   ; 4
    rol dx, 1   ; 8
    rol dx, 1   ; 16

; DEBUG
; nasm -felf64 shl.asm -o shl.o
; ld shl.o -o bin/shl
; gdb bin/shl
; (gdb) break _start
; (gdb) run
; (gdb) ni
; (gdb) info register rdx
; 
; (gdb) ni ; shift once
; (gdb) info register rdx
; 
; (gdb) ni ; shift twice
; (gdb) info register rdx
;
; (gdb) ni ; shift third
; (gdb) info register rdx
; 
; (gdb) ni ; shift fourth
; (gdb) info register rdx
; 
; (gdb) ni ; shift fifth
; (gdb) info register rdx
; 
; (gdb) ni ; shift sixth
; (gdb) info register rdx
; 
; (gdb) ni ; shift seventh
; (gdb) info register rdx
; 
; (gdb) ni ; shift eighth
; (gdb) info register rdx
; 

