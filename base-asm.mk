# Common makefile base code, for executable ASM programs
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
# open		opens source files (requires open command)
#######################################################
# Required variable(s):
#
# MCU	= MCU name (atmega324pa)
#
# Optional variables:
#
# PROGRAMMER = valid avrdude command line flags for programmer
# LFUSE/HFUSE/EFUSE - for fuses target
#######################################################

ifndef BIN
	# Get directory name, to use as output filename.
  	BIN = $(notdir $(CURDIR))
endif

ifndef MCU
	$(error MCU undefined)
endif

# Program names

RM	= rm -f
AS	= avr-as
LD	= avr-ld
OBJCOPY = avr-objcopy

# Assembler and linker flags

ASFLAGS += -mmcu=$(MCU)
LDFLAGS += 
ADFLAGS += -v -v -p$(MCU) $(PROGRAMMER) -e -D 

# List of source files
SRCS=$(wildcard *.s)
OBJS=$(SRCS:.s=.o)

# need to clear default rules
.SUFFIXES:
.SUFFIXES: .o .s

DATE=$(shell date "+%m-%d-%y_%H-%M-%S")

####### TARGETS ########

all:	$(BIN)
	
upload: all
	avrdude $(ADFLAGS) -Uflash:w:$(BIN).hex:i

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
	$(RM) $(OBJS) ./$(BIN).hex ./$(BIN).elf

# Open source in default editor, on mac.
open:
	-open $(SRCS) 

$(BIN): clean $(OBJS)    
	$(LD) $(LDFLAGS) $(OBJS) -o $(BIN).elf
	$(OBJCOPY) -O ihex $(BIN).elf $(BIN).hex 
	@echo
	@avr-size --format sysv $(BIN).hex | grep Total | sed "s/$$/ bytes/" | sed "s/Total/binary size:/"
	
.s.o:
	$(AS) $(ASFLAGS) -o $@ $<
