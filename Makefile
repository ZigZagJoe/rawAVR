### AVR executable Makefile stub for Posix

PROGRAMMER = -cusbtiny
#PROGRAMMER = -cstk500v1 -P/dev/tty.usbmodem34521

F_CPU 	= 20000000L
MCU	= atmega324pa

LIBS 	=  
INC	= 

LFUSE	=
HFUSE	=
EFUSE 	=

-include ../base.mk base.mk
