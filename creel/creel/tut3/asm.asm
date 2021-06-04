global _start
section .data ; variables
    myByte db 78
    myWord dw 78
    
section .text ; instructions
_start:
    mov r11, myByte
    mov r12, myWord
    ret

; DEBUG
; break _start
; run
; info register r11
; ni
; info register r12

; Integers: byte, word, dword, qword 
; There are commands for unsigned: DIV and MUL and signed: IDIV and IMUL, but same for ADD and SUB)
; Byte: 0 to 255 when unsigned, -2^2 to 2^7-1 when signed
; Word: 0 to 65,535 when unsigned, -2^15 to 2^15-1 when signed
; DWord: 0 to 2^32 when unsigned, -2^31 to 2^31-1 when signed
; QWord: 0 to 2^64 when unsigned, cal to 2^63-1 when signed

; Floating point: real4, real8, real10 ()
; Real4: 32bits wide (single precision); 1 sign bit, 8 bit exponent, 23bit mantissa
; Real8: 64bits wide (double precision); 1 sign bit, 11 bit exponent, 52bit mantissa
; Real10: 80bits (extended precision)  wide; 1 sign bit, 11 bit exponent, 52bit mantissa

; SIMD Pointers: xmmword ymmword, zmmword
; xmmword: 128bit, 16 bytes, 8 words, 4 dwords or 2 qwords
; ymmword: 256bit, 32 bytes, 16 words, 8 dwords or 4 qwords
; ymmword: 512bit, 64 bytes, 32 words, 16 dwords or 8 qwords (new)