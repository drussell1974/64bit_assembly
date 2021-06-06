global _start

section .text			; instructions
_start:
	mov ax, -1
	ret

; DEBUG
; nasm -felf64 16bit.asm -o 16bit.o -g
; ld -o bin\16bit 16bit.o
; gdb bin\16bit
; (gdb) run
; (gdb) info registers $rax