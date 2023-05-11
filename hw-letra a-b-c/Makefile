hw3.s : %.s : %.c stdio.h 
	gcc -m16 -O0 -I. -Wall -fno-pic -fcf-protection=none  --freestanding -S $< -o $@

hw3_utils.s  : %.s : %.c 
	gcc -m16 -O0 -I. -Wall -fno-pic  -fcf-protection=none --freestanding -S $< -o $@

hw3_rt0.s  : %.s : %.c 
	gcc -m16 -O0 -I. -Wall -fno-pic  -fcf-protection=none -S $< -o $@

hw3.o hw3_utils.o  hw3_rt0.o : %.o : %.s
	as --32 $*.s -o $@

ifeq (,$(ALT))

hw3.bin: %.bin :  %.o %_utils.o %.ld | %_rt0.o
	ld -melf_i386 -T $*.ld --orphan-handling=discard  $< -o $@
else

hw3.bin: %.bin :  %.o %_utils.o %.ld | %_rt0.o
	gcc -m16 -nostdlib -ffreestanding -T hw3.ld hw3.o -o hw3
endif

