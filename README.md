[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-718a45dd9cf7e7f842a935f5ebbe5719a5e09af4491e668f4dbf3b35d5cca122.svg)](https://classroom.github.com/online_ide?assignment_repo_id=10891068&assignment_repo_type=AssignmentRepo)
# Part1: bare-metal-hw
> :construction: Projeto em construção :construction:

***Pasta 'hw-letra a-b-c'*** <br/>
**a)** Implement your own version of the hello world program in machine code. <br/>
Arquivos: hw.hex, hw.bin <br/>
De .hex para .bin: xxd -r -p hw.hex hw.bin	# Criou o arquivo: hw.bin <br/>
Executar: make hw.bin/run			# ou com: qemu-system-i386 -drive format=raw,file=hw.bin -net none <br/>
Resultado tem que ser: *Hello World!*

**b)** Implement your own version of the hello world program in AT&T assembly.<br/>
Arquivos: hw2.S, hw2.o, hw2.bin <br/>
De .S para .o (objeto): as --32 hw2.S -o hw2.o <br/>
Chamando o linker: ld -melf_i386 --oformat=binary -Ttext=0x7c00 hw2.o -o hw2.bin	# Criou o arquivo: hw2.bin <br/>
Executar: make hw2.bin/run <br/>
Resultado tem que ser: *Hello World!!*

**c)** Implement your own version of the hello world program in C.<br/>
Arquivos: hw3.c, hw3.s, hw3.o, hw3.ld, hw3.bin, hw3_utils.c, hw3_util.o, hw3_utils.s, hw3_rt0.c, hw3_rt0.o, hw3_rt0.s, stdio.h <br/>
make hw3.bin <br/>
Executar: qemu-system-i386 -drive format=raw,file=hw3.bin -net none <br/>
Resultado tem que ser: *Hello World!!!*