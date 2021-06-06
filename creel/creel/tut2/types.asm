global _start

section .text ; instructions
_start:
	; fill the register with 1s
	mov r11, -1 ; 64bit quad word -- gdb output is 0xffffffffffffffff  -1
	mov r11b, 5 ; 8bit byte -- gdb output is 0xffffffffffffff05  -251
	mov r11w, 17 ; 16bit word -- gdb output is 0xffffffffffff0011  -65519
	; NOTE: the above instructions fill with 1 until the 32bit instruction is run
	mov r11d, 1 ; 32bit double word -- gdb output is 0x1                 1
	ret

; DEBUG
; nasm -felf64 types.asm -o types.o -g
; ld -o bin\types types.o
; gdb bin\types
; (gdb) break _start
; (gdb) run
; (gdb) ni -- to skip the line that is the function call
; (gdb) info registers $r11
; (gdb) ni
; ^ repeat last two lines