PATH=~/opt/cross/bin:$PATH
i686-elf-g++ -std=c++17 src/boot.s src/kernel.cpp -o bitos.img -T linker.ld -fno-exceptions -fno-rtti -ffreestanding -O0 -nostdlib -lgcc &&
qemu-system-i386 -kernel bitos.img