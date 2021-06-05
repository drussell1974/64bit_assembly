global _start

section .text			; instructions
_start:
	mov ax, -1
	ret

; DEBUG
; nasm -felf64 asm.asm -o asm.o -g
; ld -o bin\asm asm.o
; gdb bin\asm
; (gdb) run
; (gdb) info registers $rax