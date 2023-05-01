[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-718a45dd9cf7e7f842a935f5ebbe5719a5e09af4491e668f4dbf3b35d5cca122.svg)](https://classroom.github.com/online_ide?assignment_repo_id=10891068&assignment_repo_type=AssignmentRepo)
# Part1: bare-metal-hw
> :construction: Projeto em construção :construction:

***Pasta 'hw-letra a-b-c'*** <br/>
**a)** Implement your own version of the hello world program in machine code. <br/>
Arquivo: hw.hex <br/>
De .hex para .bin: xxd -r -p hw.hex hw.bin	# Criou o arquivo: hw.bin <br/>
Executar: make hw.bin/run			# ou com: qemu-system-i386 -drive format=raw,file=hw.bin -net none <br/>
Resultado tem que ser: *Hello World!*

**b)** Implement your own version of the hello world program in AT&T assembly.<br/>
Arquivo: hw2.S <br/>
De .S para .o (objeto): as --32 hw2.S -o hw2.o <br/>
Chamando o linker: ld -melf_i386 --oformat=binary -Ttext=0x7c00 hw2.o -o hw2.bin	# Criou o arquivo: hw2.bin <br/>
Executar: make hw2.bin/run <br/>
Resultado tem que ser: *Hello World!!*

**c)** Implement your own version of the hello world program in C.<br/>
Arquivo: Era para ser hw3.c, porém não consegui fazer os outros passos do makefile com outro nome. Arquivos ficaram com o nome eg-08. <br/>
make eg-08.bin <br/>
Executar: qemu-system-i386 -drive format=raw,file=eg-08.bin -net none <br/>
Resultado tem que ser: *Hello World!!!*