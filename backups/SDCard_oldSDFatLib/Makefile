### AVR executable Makefile stub for Posix

PORT 	= tty.usbmodem80981
F_CPU 	= 20000000L
MCU	= atmega324pa

LIBS 	= -lSDFatLib 
INC	= -I ../lib/SDFatLib

LFUSE	=
HFUSE	=
EFUSE 	=

include ../base.mk

libs: lib
	cd ../lib/SDFatLib && make clean all
