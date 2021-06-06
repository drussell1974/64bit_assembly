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
; nasm -felf64 function.asm -o function.o -g
; ld -o bin/function function.o
; gdb bin/function
; disass _start
; disass SomeFunction
; run
; info registers