;##########################################
;#		prints a		  #
;#	  very	 cute	kitty		  #
;##########################################

SECTION .data

; string vars (?) for ascii kitty
	uwu:	db "      |\      _,,,---,,_", 0
	uwu2:	db "ZZZzz /,`.-'`'    -.  ;-;;,_", 0
	uwu3:	db "     |,4-  ) )-,_. ,\ (  `'-'", 0
	uwu4:	db "    '---''(_/--'  `-'\_) ", 0

SECTION .text
	global		_main
	extern		_puts

	_main:
		push	rbx		; push stack
		call	_meow		; call defined method meoww
		pop	rbx		; clean up stack
		ret			; return
	
	_meow:
		push	rbx		;
		lea	rdi, [rel uwu]  ; arg addr to uwu
		call	_puts		; call puts to print
		lea	rdi, [rel uwu2] ; next arg
		call	_puts		; print
		lea	rdi, [rel uwu3]	; 
		call	_puts		; 
		lea	rdi, [rel uwu4] ; 
		call	_puts		; 
		pop	rbx		; clean up stack
		ret			; return
