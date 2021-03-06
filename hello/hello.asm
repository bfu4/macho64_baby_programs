;----------------------------------------------;;--------------------------------------------;;
;		  hello world		       ;;		 the comment		     ;;
;		   nasm (x64)		       ;;		   section		     ;;
;----------------------------------------------;;--------------------------------------------;;
					       ;;					     ;;
SECTION .data				       ;;				   	     ;;
	uwu:	db "uwu ^w^ <3", 0	       ;;       + C strings need 0 byte at end	     ;;
					       ;;--------------------------------------------;;
SECTION .text				       ;;					     ;;
	global		_main		       ;;		  written in		     ;;
	extern		_puts		       ;;		    nano		     ;;
					       ;;					     ;;
					       ;;--------------------------------------------;;
	_main:				       ;;	+ make label available to linker     ;;
		push	rbx		       ;; 	  + call stack must b aligned        ;;
		lea	rdi, [rel uwu]	       ;;      + first arg is address of message     ;;
		call	_puts		       ;; 		+ puts(hi)		     ;;
		pop	rbx		       ;; 	+ fix up stack before returning      ;;
		ret			       ;;--------------------------------------------;;
					       ;;				  	     ;;
;--------------- end of code ------------------;;------------- end of comments --------------;;
