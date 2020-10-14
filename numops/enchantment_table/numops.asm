;-------------------------------------------------------;;----------------------------------;;
;		 playing around with			;;	       the comment	    ;;
;		     numbers in asm		        ;;	         section	    ;;
;-------------------------------------------------------;;----------------------------------;;
default rel						;;				    ;;
SECTION .data						;;		proudly		    ;;
		hi: db "lulz", 0			;;	    written in nano	    ;;			
							;;				    ;;
							;;----------------------------------;;
SECTION .bss						;;	  + uninitialized	    ;;	
		sum: resb 1				;;	      variables		    ;;
							;;----------------------------------;;
SECTION .text						;;				    ;;
							;;				    ;;
		GLOBAL		_main			;;				    ;;
		EXTERN		_puts			;;				    ;;
							;;				    ;;
	_main:  					;;				    ;;
		push		rbx                     ;;----------------------------------;;
		mov		rax, 5			;;	  + store 5 in rax	    ;;
		mov		rdx, 6			;;	     + 6 in rdx		    ;;
		imul		rdx, rax		;;	     + multiply		    ;;
							;;				    ;;
		mov		[sum], rdx		;;    + mov val of rdx into sum     ;;
		lea		rdi, [sum]		;;	  + last eff addr	    ;;
		call		_puts			;; + why wont you print(see format) ;;
							;;----------------------------------;;
	tostr:						;;				    ;;
		pop		rbx			;;	this is where it all goes   ;;
		mov		rbx, 0xCCCCCCCD		;;               to shit	    ;;
		xor		rdi, rdi		;;  tried solution from : https:/   ;;
							;;  /codereview.stackexchange.com/  ;;
							;; questions/142842/integer-to-ascii;;
							;;  -algorithm-x86-assembly	    ;;
	loopy:						;; 	     and modified           ;;
		lea		rdi, [sum]		;;		for x64	  	    ;;
		mul		rbx			;;				    ;;
		shr		rdx, 3			;; 	   + shift rdx right 3      ;;
							;;				    ;;
		mov		rax, rdx		;;	+ mov rdx val into rax      ;;
		lea		rdx, [edx*4 + edx]	;;       + lea of edx*4 + edx	    ;;
		lea		rdx, [rdx*2 -  '0']	;;   + rdx *2 - '0' "to ascii" lol  ;;
		sub		[sum],edx		;;    + subtract edx from sum	    ;;
							;;     (mathematically, what?)	    ;;
		shl		rdi, 8			;;				    ;;
		or		rdi, rcx		;;      +  bitwise or (logic)       ;;
							;;				    ;;
		test		rdx, [sum]		;;		+ test		    ;;
		jnz		loopy			;;	  +  jump not zero	    ;;
							;;----------------------------------;;
	print:						;;				    ;;
		lea		rdi, [sum]		;;				    ;;
		call		_puts			;;				    ;;
							;;----------------------------------;;
	_fin:						;;				    ;;
		lea		rdi,[hi]		;;				    ;;
		call		_puts			;;				    ;;
		pop		rbx			;;	   + clean up stack	    ;;
		ret					;;	    + call kernel	    ;;
							;;				    ;;
							;;----------------------------------;;
;------------------   end of code   --------------------;;-------   end of comments  -------;;
