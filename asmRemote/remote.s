; tiny ASM remote for tinyX5 running at 1mhz

/*
AVR opcodes used:

instruction      cycles desc
----------------------------
breq label       1/2    branch if zero flag set
brne label       1/2    branch if zero flag cleared. 2 cycles on branch taken
cbi  ioreg, bit  2      clear bit in io register
dec reg          1      decrements register (sets flags)
ldi  reg, imm    1      load immediate byte into a register r16-r31
rjmp label       2      short relative jump
sbi  ioreg, bit  2      set bit in io register
sbiw reg, 6imm   2      subtract 6 bit immediate value from register pair reg, reg+1
*/

.org 0x00

; IO port addresses
.equ DDRB, 0x17     ; PORTB data direction register
.equ PORTB, 0x18    ; PORTB output register

; output pin bit
.equ OUTBIT, 0      ; bit 0 is pin 5

    ; interrupt vectors are not required; we don't use them.
    ; normally first code would be rjmp to main code
    ; followed by a bunch of interrupt vectors (rjmp vectorLabel)

    ; DDRB.OUTBIT = 1 (output)
	sbi DDRB, OUTBIT

    ; pulseCnt = 8
	ldi r20, 8

    ; i = 16
    ldi r24, 16

loop:
    ; IR out = 1
	sbi PORTB, OUTBIT    ; 2

	 ; delay of 12 cycles
    ldi r25,lo8(4)       ; 1
	1: dec r25           ; 1
	brne 1b              ; 2/1

    ; IR = 0
	cbi PORTB, OUTBIT    ; 2

	 ; delay of 12 cycles
    ldi r25,lo8(4)       ; 1
	1: dec r25           ; 1
	brne 1b              ; 2/1

    ; i--; 
    ; sets Z to 1 if i == 0
	dec r24              ; 1
    ; loop if Z == 0 (i != 0)
    brne loop            ; 2/1

    ; loop takes a total of 31 cycles, producing a frequency of 32.26khz
    ; that is close enough for the camera to recognize it (expects 32.77khz)

	ldi r24,lo8(1832)    ; 1
    ldi r25,hi8(1832)    ; 1
    1: sbiw r24,1        ; 2
    brne 1b              ; 2/1

    ; delay of 7329 cycles for instant shot
    ; use 1339 (approx 5.36 ms) for a 2 second delay before shot

    ; pulseCnt--;
    dec r20

    ; if pulseCnt == 0; branch to end
    breq end

    ; have to reset i
    ; i = 16
    ldi r24, lo8(16)

    ; produce additional pulses
    rjmp loop

end: ; loop to the end of time
    rjmp end

