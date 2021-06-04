global _start:

section .data
message: db 'hello, world!', 10

section .text
_start:
	mov rax, 1		; the syscall number
	mov rdi, 1		; argument #1 in rdi, write the descriptor to
	mov rsi, message	; argument #2 in rsi, start string
	mov rdx, 14		; argument #3 in rdx, number of bytes
	syscall			; invoke a system call
