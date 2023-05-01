	## Hello Word AT&T Assembly - hw2.S

	.code16

	.global _start  		# Usando default, muda na hora de chamar o linker ld (não precisa do begin)

_start:

	movb	$0xe, %ah

	movw	$0x0, %si
loop:
	movb	msg(%si), %al
	cmp	$0x0, %al
	je	halt			# se a palavra acacbar, vai para a próxima seção
	int	$0x10			# equivalente ao cd 00
	add	$0x1, %si		# tipo o i++ do C
	jmp	loop			# volta para o início dessa seção

halt:
	hlt
	jmp	halt

msg:

	.string	"Hello World!!"
	
	.fill 510 - (. - _start), 1, 0	# completar com 0, 512-(aa55)=510-(start=quantos derem na escrita da string)
	.word 0xaa55			# final do programa
