#include <stdlib.h>
#include <inttypes.h>
#include <avr/io.h>
#include <avr/sleep.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "delayMicroseconds.h"

#define bv(BIT) (1 << BIT)
#define bset(X,BIT) (X |= bv(BIT))
#define bclr(X,BIT) (X &= ~bv(BIT))
#define bisset(X,BIT) (X & bv(BIT))

#define delay _delay_ms

typedef uint8_t byte;

////////////////////////////////////////////

/*
             ___ ___
 RESET	B5  -|  o  |- VCC
 ADC3	B3  -|atiny|- B2   SCK   ADC1
 ADC2	B4  -|45/85|- B1   MISO
        GND -|_____|- B0   MOSI
 
*/

// lazy arduino-like reads, writes, pinmode
// pins numbered by port number, see pinout above

#define OUTPUT 1
#define INPUT 0

#define ADCREF1_1V	(1 << REFS1)
#define ADCREF2_56V (1 << REFS2) | (1 << REFS1)
#define ADCREFVCC	0

static const uint8_t PROGMEM adc_mapping[] = {
	255, 255, 1, 3, 2, 0
}; // port pins to adc channels

uint8_t aref = ADCREFVCC;

#define min(X,Y) (((X) < (Y)) ? (X) : (Y))
#define max(X,Y) (((X) > (Y)) ? (X) : (Y))


#define AVG_SAMPLES 10
// number of samples to take and average out

volatile uint16_t adc_v;
volatile uint8_t adc_done;   // can be read atomically, unlike counter.

SIGNAL(ADC_vect) {
    adc_v = ADCW;
	ADCSRA = 0;  // stop ADC
    adc_done = 1;
}

// massively oversampling, because accuracy is king re: voltage readings
int avgRead(uint8_t pin) {
	uint8_t chan;
	
	if (pin >= sizeof(adc_mapping))
		return 0; // invalid/non-ADC pin
    
	chan = pgm_read_byte(adc_mapping + pin);
    
	if (chan == 255)
		return 0; // not an ADC pin
	
	// set up ADC
	ADMUX = chan | aref; // adc channel & reference
	ADCSRA  = (1 << ADEN);	// ADC on
	ADCSRA |= (1 << ADATE); // free running
	ADCSRA |= (1 << ADIE);	// interrupt on
	ADCSRA |= (1 << ADPS2); // 16 prescaler (500khz @ 8mhz)
	ADCSRB = 0;
	
	adc_done = 0;
	
	ADCSRA |= (1<<ADSC); // begin conversion
	while (!adc_done) ; // wait for completion
    
	return adc_v;
}

inline bool digitalRead(byte pin) {
    return bisset(PINB, pin);
}

inline void digitalWrite(const byte pin, const byte val) {
    val ? bset(PORTB, pin) : bclr(PORTB, pin);
}

inline void pinMode(const byte pin, const byte mode) {
    mode ? bset(DDRB, pin) : bclr(DDRB, pin);
}


#define OUT 0
#define IN_POT 3


int main(void) {
    _delay_ms(10); // debounce

    sei();
    
	pinMode(OUT, OUTPUT);
   // pinMode(IN_POT, INPUT);
    
    volatile int16_t v;
    
    
    while(true) {
        
        v = avgRead(IN_POT);
        if (v > 450 && v < 550) {
            _delay_ms(10);
            continue;
        }
        
        digitalWrite(OUT, 1);
        if (v < 450) {
            delayMicroseconds(1100 + (v>>1));
        } else {
            /*v -= 500;
            v = v >> 2;
            delayMicroseconds(1750 + v);*/
            delayMicroseconds(1400 + (v>>1));
        }
        digitalWrite(OUT,0);
        _delay_ms(10);
        
        
    }
    
    return 0;
}
