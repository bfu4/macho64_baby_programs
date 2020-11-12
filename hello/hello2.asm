;-------------------------------------------------------;
;		      hello world			;
;		   without an extern			;
;-------------------------------------------------------;

default rel

SECTION .data
	msg:	db "UwU ^u^ ^o^", 10
	len:	equ $-msg

SECTION .text
	global		_main

	_main:
		mov	rax, 0x02000004
		mov	rdi, 1
		mov	rsi, msg
		mov	rdx, len
		syscall

		mov	rax, 0x02000001
		xor	rdi, rdi
		syscall
