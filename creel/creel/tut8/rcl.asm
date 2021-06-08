; ROTATE LEFT WITH CARRY FLAG
global _start
section .text
_start:
    mov dx, 16 
    rcl dx, 1   ; 32
    rcl dx, 1   ; 64
    rcl dx, 1   ; 128
    rcl dx, 1   ; 256  
    rcl dx, 1   ; 512
    rcl dx, 1   ; 1024
    rcl dx, 1   ; 2048
    rcl dx, 1   ; 4096
    rcl dx, 1   ; 8192
    rcl dx, 1   ; 16384
    rcl dx, 1   ; -32768
    rcl dx, 1   ; 1
    rcl dx, 1   ; 2
    rcl dx, 1   ; 4
    rcl dx, 1   ; 8
    rcl dx, 1   ; 16

; DEBUG
; nasm -felf64 rcl.asm -o rcl.o
; ld rcl.o -o bin/rcl
; gdb bin/rcl
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

