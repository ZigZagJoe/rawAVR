#ifndef FASTMILLIS_H
#define FASTMILLIS_H

#ifndef TCNT1H
//#warning No 16-bit timer
#if F_CPU == 8000000L

#define MILLIS_INTER 125
// prescaler of 64
#define PRESCALER_BITS (1 << CS01) | (1 << CS00)

#else
#error Unsupported
#endif

#else

#define TIM16B

#include "zzjduino.h"

// Point of library:
// Least amount of time spent in ISR possible, at a cost of slower millis() calls

// MILLIS_CALC shift add/subtract division: 
// 4x faster than integral division (major error)
// 50x faster than floating point divison (+ no FP lib required)
// Low values have increased error due to lack of bits,
// but it is acceptable for these purposes

// Maximum value: UINT_MAX * MILLIS_MULT milliseconds

#if F_CPU == 20000000L

// Maximum time: 2.5 days

// value to count to (and reset when reached). Should be integral # of MS
#define MILLIS_INTER 65000 
// number of milliseconds represented by one compare match (interrupt frequency)
#define MILLIS_MULT 3328
// approximation of x / (F_CPU/1000/TIM1_PRESCALER)
#define MILLIS_CALC(x) ((x >> 4) - (x >> 7) - (x >> 8) + (x >> 11) - (x >> 13) + (x >> 14))
// prescaler of 1024
#define PRESCALER_BITS (1 << CS02) | (1 << CS00)

#elif F_CPU == 16000000L
#warning untested FastMillis configuration!

// Maximum time: 3.18 days

// value to count to (and reset when reached). Should be integral # of MS
#define MILLIS_INTER 65500
// number of milliseconds represented by one compare match
#define MILLIS_MULT 4192
// approximation of x / (F_CPU/1000/TIM1_PRESCALER)
#define MILLIS_CALC(x) ((x >> 4) + (x >> 9) - (x >> 11) + (x >> 14))
// prescaler of 1024
#define PRESCALER_BITS (1 << CS02) | (1 << CS00)

#elif F_CPU == 8000000L
#warning untested FastMillis configuration!

// Maximum time: 6.36 days

// NOTE: tens-place of millis will be rather squirrely.
// Change prescaler to 256 (and modify constants accordingly) if need be.
// MILLIS_MULT of ~ 2.1 seconds will result

// value to count to (and reset when reached). Should be integral # of MS
#define MILLIS_INTER 65500
// number of milliseconds represented by one compare match
#define MILLIS_MULT 8384
// approximation of x / (F_CPU/1000/TIM1_PRESCALER)
#define MILLIS_CALC(x) ((x >> 3) + (x >> 8) - (x >> 10) + (x >> 14))
// prescaler of 1024
#define PRESCALER_BITS (1 << CS02) | (1 << CS00)

/*
 // settings for /256 prescaler, untested
 #define MILLIS_INTER 65500
 #define MILLIS_MULT 2096
 #define MILLIS_CALC(x) ((x >> 5) + (x >> 10) - (x >> 12) + 1)
 #define PRESCALER_BITS (1 << CS02)
 */

#else
#error FastMillis is not configured to run at this clock speed
#endif

#endif

uint32_t millis();
void millis_start();
void millis_stop();

#endif