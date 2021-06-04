global _start

section .data			; variables
message: db 'hello, world!', 10

section .text			; instructions
_start:
	mov rax, 1 		; system call number should be stored in the rax (a kind of accumulator)
	mov rdi, 1 		; argument #1 is rid where to write (destination index in string manipulation commands)
	mov rsi, message 	; argument #2 is rsi where the string starts (source index in string manipulation commands)
	mov rdx, 14 		; argument #3 is rdx the number of bytes (store data during input/output)

