	.file	"hw3_rt0.c"
	.code16gcc
	.text
	.globl	_start
	.type	_start, @function
_start:
.LFB0:
	.cfi_startproc
#APP
# 15 "hw3_rt0.c" 1
	             mov  $__END_STACK__ , %sp  
             call main                  
halt:                                   
             hlt                        
             jmp halt                   

# 0 "" 2
#NO_APP
	nop
	ud2
	.cfi_endproc
.LFE0:
	.size	_start, .-_start
	.ident	"GCC: (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
