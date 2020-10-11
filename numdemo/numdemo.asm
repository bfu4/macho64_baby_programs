;;----------------------------------------------;;------------------------------------------;;
;;	       playing with loops 	        ;;		  the comment		    ;;
;;		     in asm		        ;;		    section		    ;;
;;----------------------------------------------;;------------------------------------------;;
						;;					    ;;
SECTION .data					;;					    ;;
						;;   					    ;;
	nom:	db "nom nom! ^u^", 0		;;					    ;;
	yummy: 	db "that was yummy ^o^", 0	;;	       proudly written in	    ;;
						;;		      nano	 	    ;;
SECTION .text					;;					    ;;
						;;					    ;;
	global		_main			;;					    ;;
	extern		_puts			;;					    ;;
						;;					    ;;
	_main:					;;------------------------------------------;;
		mov	rbx, 5			;; putting rbx at 5			    ;;
		push	rbx			;; pushing stack			    ;;
						;;------------------------------------------;;
	_start:					;;------------------------------------------;;
		lea	rdi,[rel nom]		;;					    ;;
		call	_puts			;;					    ;;
		dec	rbx			;; decrease by 1			    ;;
		cmp	rbx,0			;; compare to 0				    ;;
		jne	_start			;; if not equal to 0, go back to _start	    ;;
						;;------------------------------------------;;
	_exit:					;;------------------------------------------;;
		pop	rbx			;; clean up stack			    ;;
		push	rbx			;;					    ;;
		lea	rdi,[rel yummy] 	;;					    ;;
		call	_puts			;;					    ;;
		pop	rbx			;;					    ;;
		ret				;; call kernel				    ;;
						;;------------------------------------------;;
;;-------------- end of code -------------------;; -----------  end of comments ----------- ;;
