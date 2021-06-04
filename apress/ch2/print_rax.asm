section .data
codes:
	db '0123456789ABCDEF'

section .text
global _start
_start:
	; number 1122... in hexadecimal format
	mov rax, 0x1122334455667788

	mov rdi, 1	; destination index in string manipulation | move 1 into destination index
	mov rdx, 1	; store data during input/output operations | move 1 into input/output datastore
	mov rcx, 64	; used for cycles | move 64 into index for cycles
	; each 4 bits should be output as one hexadecimal digit
	; Use shift and bitwise AND to isolate them
	; the result is the offset in 'codes' array
.loop:	; local label
	push rax	; push the accumulator to stack
	sub rcx, 4	; subtract the cycle | sub cycle from 4
	; cl is a register, smallest part of rcx
	; rax -- eax -- ax -- ah + al
	; rcx -- ecx -- cx -- ch + cl
	sar rax, cl	; arithmetic right-shift destination by k bits | right-shift smallest part of rcx by the accumulator 
	and rax, 0xf	; bitwise AND destination by source | bitwise AND the accumulator by hex 0xf
	
	lea rsi, [codes + rax]	; load the contents starting at (indirect addressing) into the source index
	mov rax, 1	; mov 1 into rax
	
	; syscall leaves rcx and r11 changed
	push rcx	; push cycle to stack
	syscall
	pop rcx		; pop the cycle from the stack

	pop rax		; pop the acculator from the stack
		
	test rcx, rcx	; is it zero
	jnz .loop	; jump to label, if not zero
	
	mov rax, 60 	; invoke exit system call | mov 60 into rax
	xor rdi, rdi	; exit code 0
	syscall
