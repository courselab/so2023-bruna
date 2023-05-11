	.file	"hw3_utils.c"
	.code16gcc
	.text
	.globl	puts
	.type	puts, @function
puts:
.LFB0:
	.cfi_startproc
#APP
# 10 "hw3_utils.c" 1
	       mov   %cx, %bx             
	mov   $0x0e, %ah           
	mov   $0x0, %si            
loop:	           	           
	mov   (%bx, %si), %al      
	cmp   $0x0, %al	           
	je    end                  
	int   $0x10	           
	add   $0x1, %si 	   
	jmp   loop	           
end:                              
        mov   %si, %ax            
        ret                       

# 0 "" 2
#NO_APP
	nop
	ud2
	.cfi_endproc
.LFE0:
	.size	puts, .-puts
	.ident	"GCC: (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
