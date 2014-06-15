### AVR library makefile

INC =  -I . -I ../core

####### VARIABLES #######

# Library output name

ifndef F_CPU
 F_CPU = 20000000L
endif

ifndef MCU
 MCU = atmega324pa
endif

ifndef LIB
 LIB = $(notdir $(CURDIR))
endif

OPATH = ../bin/$(MCU)_$(F_CPU)
BIN = $(OPATH)/lib$(LIB).a

# Program names

RM   = rm -f
CPP  = avr-g++
AR   = avr-ar

# Compiler and linker flags

CXXFLAGS = -c -g -Os -Wall -fno-exceptions -ffunction-sections -fdata-sections -mmcu=$(MCU) -DF_CPU=$(F_CPU) -MMD $(INC)
ARFLAGS  = -ar rcs $(BIN)

# List of source files

SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o) md5_asm.o

DATE=$(shell date "+%m-%d-%y_%H-%M-%S")
	
.SUFFIXES:
.SUFFIXES: .c .o

####### TARGETS ########

all:	$(BIN)

clean:
	$(RM) $(OBJS) ./$(BIN) *.d

zip:	
	zip -vr ../$(LIB)-$(DATE).zip .

# Open source in default editor, on mac.
open:
	-open $(SRCS) 

$(BIN): $(OBJS)    
	@mkdir -p $(OPATH)
	$(AR) $(ARFLAGS) $(OBJS)
	
.c.o:
	$(CPP) $(CXXFLAGS) -c -o $@ $<
	
md5_asm.o:
	$(CPP) $(CXXFLAGS) -c -o md5_asm.o md5.S
	


