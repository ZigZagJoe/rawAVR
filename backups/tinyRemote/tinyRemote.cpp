#include <stdlib.h>
#include <avr/io.h>
#include <util/delay.h>
#include <avr/sleep.h>

#define bv(BIT) (1 << BIT)
#define bset(X,BIT) (X |= bv(BIT))
#define bclr(X,BIT) (X &= ~bv(BIT))
#define bisset(X,BIT) (X & bv(BIT))

int main (void) {

    _delay_ms(10); // debounce
    bset(DDRB,0);
    
    for (int i = 0; i < 16; i++ ) {
        bset(PORTB,0);
        _delay_us(15);
        bclr(PORTB,0);
        _delay_us(15);
    }
    
    _delay_us(7600);
    
    for (int i = 0; i < 16; i++ ) {
        bset(PORTB,0);
        _delay_us(15);
        bclr(PORTB,0);
        _delay_us(15);
    }
    
    // this actully saves too much power! the bypass capacitor can power it for quite a while and as a result you can only shoot once per 20s+
   /* set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    sleep_enable();
    asm("cli");
    sleep_cpu();*/
    
    while(1);
}

