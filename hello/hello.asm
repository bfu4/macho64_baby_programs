
SECTION .data
	uwu:	db "uwu ^w^ <3", 0	; C strings need 0 byte at end

SECTION .text
	global		_main
	extern		_puts
	

	_main:				; make label available to linker
		push	rbx		; call stack must b aligned
		lea	rdi, [rel uwu]	; first arg is address of message
		call	_puts		; puts(hi)
		pop	rbx		; fix up stack before returning
		ret
