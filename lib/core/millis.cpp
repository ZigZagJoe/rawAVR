#include <avr/interrupt.h>

#include "millis.h"

#ifdef TIM16B 
volatile uint16_t millis_ctr;

// spend the least amount of time in ISR as possible
ISR(TIMER1_COMPA_vect, ISR_NAKED) {
	asm volatile(
				 "push	r24"				"\n\t"
				 "in	r24, __SREG__"		"\n\t"
				 "push	r24"				"\n\t"
				 "push	r25"				"\n\t"		 
				 "lds r24,millis_ctr"		"\n\t"
				 "lds r25,millis_ctr+1"		"\n\t"
				 "adiw r24,1"				"\n\t"
				 "sts millis_ctr+1,r25"		"\n\t"
				 "sts millis_ctr,r24"		"\n\t"
				 "pop	r25"				"\n\t"
				 "pop	r24"				"\n\t"
				 "out	__SREG__, r24"		"\n\t"
				 "pop	r24"				"\n\t"
				 "reti"
				 );
}
#else
volatile uint32_t millis_ctr;

SIGNAL(TIMER0_COMPA_vect) {
	millis_ctr++;
}
#endif


#ifndef TIM16B
uint32_t millis() {
	uint32_t tmp;
	cli(); // can't read 16-bit atomically
	tmp = millis_ctr; // read ctr
	sei();
	return tmp;
}

#else

uint32_t millis() {
	uint32_t ms;
	uint16_t tmp;
	uint8_t h, l;
	cli(); // can't read 16-bit atomically
	tmp = millis_ctr; // read ctr
	l = TCNT1L; // and timer halves
	h = TCNT1H;	
	sei();
	
	ms = tmp; 
	ms = ms * MILLIS_MULT; // faster than shifts due to optimization
	
	tmp = h;
	tmp = (tmp << 8 | l); // recreate 16 bit timer value
	//tmp = (tmp << 5) / 625;
	tmp = MILLIS_CALC(tmp);
	// using the 8 bit halves & shifting those is actually slower - optimizing compiler ftw, i guess?
	//tmp += ms;
	
#if F_CPU == 20000000L
	if (l < 16) // shift division fix. only for 20mhz. otherwise downtick occurs - bad
		tmp += 1;
#endif
	
	return ms + tmp;
}
#endif

void millis_start() {
	millis_ctr = 0;
#ifdef TIM16B
	TCCR1A = 0;   
	TCCR1B = (1 << WGM02) | PRESCALER_BITS;  // CTC
	OCR1AH = MILLIS_INTER >> 8;
	OCR1AL = MILLIS_INTER & 0xFF;
	TIMSK1 = (1 << OCIE1A);        //Enable interrupt
#else
	TCCR0A = (1 << WGM01);   
	TCCR0B =  PRESCALER_BITS;  // CTC
	OCR0A = MILLIS_INTER;
	TIMSK = (1 << OCIE0A);        //Enable interrupt
#endif
}

void millis_stop() {
#ifdef TIM16B
	TIMSK1 = 0;
#else
	TIMSK = 0;
#endif
}

