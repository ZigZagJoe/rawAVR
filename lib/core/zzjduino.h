#ifndef Arduino_h
#define Arduino_h

#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <inttypes.h>

#include <avr/pgmspace.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <util/delay.h>

// ZZJ stuff
// for chips with multiple SPI interfaces (ie. ATMega324pa)
#ifdef SPCR0
#ifndef SPCR
#define SPE SPE0
#define MSTR MSTR0
#define SPCR SPCR0
#define SPSR SPSR0
#define SPDR SPDR0
#define SPIF SPIF0
#define SPI2X SPI2X0
#define SPR1 SPR10
#define SPR0 SPR00
#endif
#endif

#define bv(BIT) (1 << BIT)

#define bset(X,BIT) (X |= bv(BIT))
#define bclr(X,BIT) (X &= ~bv(BIT))
#define bisset(X,BIT) (X & bv(BIT))

// some nasty code to support macros with variable number of arguments
// see http://efesx.com/2010/08/31/overloading-macros/

#define VA_NUM_ARGS(...) VA_NUM_ARGS_IMPL(__VA_ARGS__, 8,7,6,5,4,3,2,1)
#define VA_NUM_ARGS_IMPL(_1,_2,_3,_4,_5,_6,_7,_8,N,...) N

#define macro_dispatcher(func, ...) \
	macro_dispatcher_(func, VA_NUM_ARGS(__VA_ARGS__))

#define macro_dispatcher_(func, nargs) \
	macro_dispatcher__(func, nargs)

#define macro_dispatcher__(func, nargs) \
	func ## nargs


#define bits(...) macro_dispatcher(bits, __VA_ARGS__)(__VA_ARGS__)
#define bits1(a)					(bv(a))
#define bits2(a,b)					(bv(a) | bv(b))
#define bits3(a,b,c)				(bv(a) | bv(b) | bv(c))
#define bits4(a,b,c,d)				(bv(a) | bv(b) | bv(c) | bv(d))
#define bits5(a,b,c,d,e)			(bv(a) | bv(b) | bv(c) | bv(d) | bv(e))
#define bits6(a,b,c,d,e,f)			(bv(a) | bv(b) | bv(c) | bv(d) | bv(e)| bv(f))
#define bits7(a,b,c,d,e,f,g)		(bv(a) | bv(b) | bv(c) | bv(d) | bv(e)| bv(f) | bv(g))
#define bits8(a,b,c,d,e,f,g,h)		(bv(a) | bv(b) | bv(c) | bv(d) | bv(e)| bv(f) | bv(g) | bv(h))


//end ZZJ stuff

#include "binary.h"
#include "millis.h"

#ifdef __cplusplus
extern "C"{
#endif
	
#define PI 3.1415926535897932384626433832795
#define HALF_PI 1.5707963267948966192313216916398
#define TWO_PI 6.283185307179586476925286766559
#define DEG_TO_RAD 0.017453292519943295769236907684886
#define RAD_TO_DEG 57.295779513082320876798154814105
	
#define true 0x1
#define false 0x0

#define delay _delay_ms
#define delayMicroseconds _delay_us
	
// undefine stdlib's abs if encountered
#ifdef abs
#undef abs
#endif

#define min(a,b) ((a)<(b)?(a):(b))
#define max(a,b) ((a)>(b)?(a):(b))
#define abs(x) ((x)>0?(x):-(x))
#define constrain(amt,low,high) ((amt)<(low)?(low):((amt)>(high)?(high):(amt)))
#define round(x)     ((x)>=0?(long)((x)+0.5):(long)((x)-0.5))
#define radians(deg) ((deg)*DEG_TO_RAD)
#define degrees(rad) ((rad)*RAD_TO_DEG)
#define sq(x) ((x)*(x))

#define interrupts() sei()
#define noInterrupts() cli()

#define clockCyclesPerMicrosecond() ( F_CPU / 1000000L )
#define clockCyclesToMicroseconds(a) ( (a) / clockCyclesPerMicrosecond() )
#define microsecondsToClockCycles(a) ( (a) * clockCyclesPerMicrosecond() )

#define lowByte(w) ((uint8_t) ((w) & 0xff))
#define highByte(w) ((uint8_t) ((w) >> 8))

#define bitRead(value, bit) (((value) >> (bit)) & 0x01)
#define bitSet(value, bit) ((value) |= (1UL << (bit)))
#define bitClear(value, bit) ((value) &= ~(1UL << (bit)))
#define bitWrite(value, bit, bitvalue) (bitvalue ? bitSet(value, bit) : bitClear(value, bit))

#define bit(b) (1UL << (b))

typedef unsigned int word;
typedef uint8_t boolean;
typedef uint8_t byte;	
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;
	
#ifndef cbi
#define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
#define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif

#ifdef __cplusplus
} // extern "C"
#endif

#ifdef __cplusplus
#include "WCharacter.h"
#include "WString.h"
#include "HardwareSerial.h"

// WMath.cpp
uint16_t makeWord(uint16_t w);
uint16_t makeWord(byte h, byte l);
long random(long);
long random(long, long);
void randomSeed(unsigned int);
long map(long, long, long, long, long);

#define word(...) makeWord(__VA_ARGS__)


#endif

#endif
