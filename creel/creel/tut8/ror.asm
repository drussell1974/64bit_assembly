; ROTATE RIGHT
global _start
section .text
_start:
    mov dx, 16 
    ror dx, 1   ; 16
    ror dx, 1   ; 8
    ror dx, 1   ; 4
    ror dx, 1   ; 2  
    ror dx, 1   ; 1
    ror dx, 1   ; -32768
    ror dx, 1   ; 16384
    ror dx, 1   ; 8192
    ror dx, 1   ; 4096
    ror dx, 1   ; 2048
    ror dx, 1   ; 1024
    ror dx, 1   ; 256
    ror dx, 1   ; 128
    ror dx, 1   ; 64
    ror dx, 1   ; 32
    ror dx, 1   ; 16

; DEBUG
; nasm -felf64 ror.asm -o ror.o
; ld ror.o -o bin/ror
; gdb bin/ror
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

