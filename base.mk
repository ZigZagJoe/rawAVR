# Common makefile base code, for executable C/C++ programs
#######################################################
# Standard Targets:
#
# all clean 
#
# Special targets:
#
# upload 	invokes avrdude with relevant options
# zip 		creates a back up zip file of current did
# fuses		writes fuses to avr chip if *FUSE vars are set
# listing	makes an asm output file for each source file
# open		opens source files (requires open command)
#######################################################
# Required variables:
#
# F_CPU = CPU speed (such as 8000000L)
# MCU	= MCU name (atmega324pa)
#
# Optional variables:
#
# LIBS 	= any additional libraries in form -lname
# INC	= addition library paths in form -I /additional/path
# PROGRAMMER = valid avrdude command line flags for programmer
# OPTIMIZE = one of 0,1,2,3,s (equiv to -O1,-O2 etc)
# LFUSE/HFUSE/EFUSE - for fuses target
#######################################################

ifndef F_CPU
	$(error F_CPU undefined)
endif

ifndef MCU
	$(error MCU undefined)
endif

ifndef BIN
	# Get directory name, to use as output filename.
  	BIN = $(notdir $(CURDIR))
endif

ifndef OPTIMIZE
       OPTIMIZE = s
endif

ifndef NO_CORELIB
       # core library & includes
       LIBS += -lcore -lm
       INC  += -I ../lib/core 
endif

# Program names

RM   	= rm -f
CPP  	= avr-g++
OBJCOPY = avr-objcopy

# Compiler and linker flags

CXXFLAGS += -c -g -O$(OPTIMIZE) -Wall -fno-exceptions -ffunction-sections -fdata-sections -mmcu=$(MCU) -DF_CPU=$(F_CPU) -MMD $(INC)
LSTFLAGS += -S -fverbose-asm
ADFLAGS += -v -v -p$(MCU) $(PROGRAMMER) -e -D

# used to condition the listing file
LST_COND = sed -i "" -e '/\.stab[s,n,d].*/d' -e '/\.LB[B,E][[:digit:]]\{1,4\}.*/d' -e '/\.LM[[:digit:]]\{1,4\}.*/d'

# path to where libraries are
LIBPATH = -L ../lib/bin/$(MCU)_$(F_CPU)

# List of source files
SRCS=$(wildcard *.cpp)
OBJS=$(SRCS:.cpp=.o)
LSTS=$(SRCS:.cpp=.s)

# need to clear default rules
.SUFFIXES:
.SUFFIXES: .cpp .o .s

DATE=$(shell date "+%m-%d-%y_%H-%M-%S")

####### TARGETS ########

all:	$(BIN)

listing: $(LSTS)

lib:
	cd ../lib/core && F_CPU=$(F_CPU) MCU=$(MCU) make clean all
	
upload: all
	avrdude $(ADFLAGS) -e -Uflash:w:$(BIN).hex:i

# fuses case: check that fuse variables are set, first...
fuses:

ifeq ($(strip $(LFUSE)),)
	@echo ERROR: LFUSE UNDEFINED/NULL

else ifeq ($(strip $(HFUSE)),)
	@echo ERROR: HFUSE UNDEFINED/NULL

else ifeq ($(strip $(EFUSE)),)
	@echo ERROR: EFUSE UNDEFINED/NULL

else
	avrdude $(ADFLAGS) -U lfuse:w:$(LFUSE):m -U hfuse:w:$(HFUSE):m -U efuse:w:$(EFUSE):m 

endif

# end fuses case

zip:	
	zip -vr ../$(BIN)-$(DATE).zip .

clean:
	$(RM) $(LSTS) $(OBJS) *.d ./$(BIN).hex ./$(BIN).elf ./$(BIN).eep

# Open source in default editor, on mac.
open:
	-open $(SRCS) 

$(BIN): clean $(OBJS)    
	$(CPP) -Os -Wl,--gc-sections -mmcu=$(MCU) -o $(BIN).elf $(OBJS) $(LIBPATH) $(LIBS)
#	$(OBJCOPY) -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 $(BIN).elf $(BIN).eep 
	$(OBJCOPY) -O ihex -R .eeprom $(BIN).elf $(BIN).hex 
	@echo
	@avr-size --format sysv $(BIN).hex | grep Total | sed "s/$$/ bytes/" | sed "s/Total/binary size:/"
	
.cpp.o:
	$(CPP) $(CXXFLAGS) -c -o $@ $<


.cpp.s:
	$(CPP) $(CXXFLAGS) $(LSTFLAGS) -c -o $@ $<
	$(LST_COND) $@
