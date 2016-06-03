PATH=~/opt/cross/bin:$PATH
i686-elf-as src/boot.s -o boot.o &&
i686-elf-gcc -c src/kernel.c -o kernel.o -std=gnu99 -ffreestanding -O0 -Wall -Wextra -Wpedantic &&
i686-elf-gcc -T linker.ld -o bitos.bin -ffreestanding -O0 -nostdlib boot.o kernel.o -lgcc &&
qemu-system-i386 -kernel bitos.bin 
