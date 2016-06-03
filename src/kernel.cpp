#include <stddef.h>
#include <stdint.h>
#if defined(__linux__)
#error "You are not using a cross-compiler, you will most certainly run into trouble"
#endif
#if !defined(__i386__)
#error "This tutorial needs to be compiled with a ix86-elf compiler"
#endif

extern "C" void kernel_main(){
	int c=2;
	char*p=(char*)0xb8000;
	while(true){
		for(int k=0;k<7;k++){
			int i=256;
			int a=0;
			while(i--){*p++=a++;*p++=c;}
			c++;
		}
	}
}
