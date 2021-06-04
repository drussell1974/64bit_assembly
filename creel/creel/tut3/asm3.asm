global _start
section .data ; variables
    myByte db 78
    
section .text ; instructions
_start:
    mov r13, [myByte]
    db  45, 78, 19, 13  ; machine code for sub (see disassembler below)
    ret

; (gdb) disass _start
; Dump of assembler code for function _start:
;   0x0000000000401000 <+0>:     mov    0x402000,%r13
;   0x0000000000401008 <+8>:     sub    $0xc30d134e,%eax
; End of assembler dump
