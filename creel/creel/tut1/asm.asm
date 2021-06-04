global _start

section .text			; instructions
_start:
	mov rax, 123
	call SomeFunction
	ret
	
SomeFunction:
	mov rax, 123
	ret
	

; DEBUG
; nasm -felf64 asm.asm -o asm.o -g
; ld -o asm asm.o
; gdb asm
; disass _start
; disass SomeFunction
; run
; info registers