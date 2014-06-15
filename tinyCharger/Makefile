### AVR executable Makefile stub for Posix

PROGRAMMER = -cusbtiny
#PROGRAMMER = -cstk500v1 -P/dev/tty.usbmodem34521
#NO_CORELIB = true

F_CPU 	= 8000000L
MCU	= attiny85

LIBS 	= -lTinyDebugSerial
INC	= -I ../lib/TinyDebugSerial

LFUSE	= 0xE2
HFUSE	= 0xD7
EFUSE 	= 0xFF

include ../base.mk

