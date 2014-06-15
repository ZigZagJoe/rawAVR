#include <avr/io.h>
#include <util/delay.h>

#define bset(X,BIT) (X |= _BV(BIT))
#define bclr(X,BIT) (X &= ~_BV(BIT))
#define bisset(X,BIT) (X & _BV(BIT))

void power_on() { // turn on output signal
    bset(DDRB, 2);
    TCCR0A = _BV(COM0A0) | _BV(WGM01);
    TIMSK0 = 0;
    TCNT0 = 0;
    OCR0A = 70;
    // output frequency of about 58 khz @ 8mhz clock
    TCCR0B = _BV(CS00);
}

void power_off() { // shut off output signal entirely
    bset(DDRB, 2);
    TCCR0B = 0;
    TCCR0A = 0;
    bclr(PORTB,0);
}

int main (void) {
        //TCCR0B = _BV(CS00); // no prescaler, timer running
    
    power_on();
    while(1);
    
    while(true) {
        power_on();
        
        _delay_ms(1000);
        power_off();
        _delay_ms(1000);
        
    
    }
}

