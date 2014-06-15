#include <zzjduino.h>
#include <TinyDebugSerial.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>

// @@@@@@@@@@@ CONFIGURATION @@@@@@@@@@@
// # cells * 0.05 (mV)
// total drop from max voltage
#define DELTAV_LIMIT 0.030

// farenheight; around .7c
#define DELTAT_LIMIT 1.25

// farenheight
#define TEMP_LIMIT 110

// in seconds
#define TIME_LIMIT (3*60)

// #### ATTiny charger by ZZJ ##
// For charging NiMH battery packs, 4+ cells

// Charge termination methods:
// Delta-V, Delta-T, Max temperature, Timeout, Error

// Designed for an attiny85
// 7k/8k used

// Attiny45 may be able to work, with major reductions in code:
// Pare down end-of-charge code
// Jettison all strings, possibly remove debug serial entirely,
// or use a byte-oriented bit bang lib rather than *duino streams

// ######### INTERFACE #########

// slow blinking: detach battery
// fast blinking: attach battery
// solid on: charging

// slow blinking, with gaps: 
//    charge complete; trickle charging
//    # of blinks is charge termination reason 
//    1 deltaV, 2 deltaT, 3 temp max, 4 timeout, 5 error

// not blinking: charge finished, battery removed, reset required

// ######### HARDWARE ##########

// outputs (by port bit; a value of 3 is B3, which is physical pin 2)
#define LED		1
#define RELAY	0
#define SEROUT	3

// (analog) inputs
#define VIN		2
#define TMPIN	4

/*           ___ ___
 RESET	B5  -|  o  |- VCC  
 ADC3	B3  -|atiny|- B2   SCK   ADC1
 ADC2	B4  -|45/85|- B1   MISO
		GND -|_____|- B0   MOSI
 */

// Connections: 
// VCC/GND, duh
// B0, to relay, switching PSU <> battery
// B1, to LED + 1-2kohm resistor
// B2, from voltage divider
// B3, to serial RX of a TTL serial port (optional)
// B4, from LM34

// .1uf ceramic cap deadbug'd on top of uC is VITAL. YOU MUST DO THIS. MUST MUST MUST

// decent-sized tantulum capacitor from VCC to ground - prevent random resets
// unneccisary if PSU is better than a 7805

// Relay: Only use relays that will draw less than 10ma. If you would draw more,
// Either chain relays (lol) or use a mosfet. The latter being the prefered choice.
// Whatever way you go, draw as little current as possible, it causes skew in readings

/* Note: program assumes LM34, which measures in farenheight. 
 Celcius sensor lm35 is OK, but aref of 1.1v should be used instead (more accuracy)
 and divider calculated appropriately.
 
 Voltage divider should be calculated so max voltage /OUT/ is somewhat
 above the maximum voltage that would ever be encountered.
 
 http://www.raltron.com/cust/tools/voltage_divider.asp
 ^ handy calculator. 
 Set VIN to max theoretical input+1
 Set VOUT to analog reference (2.56v or 1.1v)
 Massage resistor values until you come up with a handy combination.
 Use no less than ~5k for either value.
 
 To get the ADC increment: (Aref / 1023) * ((R1 + R2) / R2)
 
 I used 39k / 10k, with analog reference of 2.56v
*/

#define ADC_INC_2_56V		0.00250244379
// for testing only - AREF [2.56] / 1023

#define ADC_INC_2_56V_LM34	0.25024437927
// * 100
// LM3x sensors output temperature in millivolts
// 76.4f (given LM34) = .764v

#define ADC_INC_2_56V_VOLTS 0.01220191593
// * 4.876f
// magic number for voltage divider - CHANGE ME

#define ADCREF1_1V	(1 << REFS1)
#define ADCREF2_56V (1 << REFS2) | (1 << REFS1)
#define ADCREFVCC	0

enum { DELTAV = 1, DELTAT, TEMPMAX, TIMEOUT, OUTOFRANGE };

inline float tempAvgRead();
inline float voltsAvgRead();


static const uint8_t PROGMEM adc_mapping[] = {
	255, 255, 1, 3, 2, 0
}; // port pins to adc channels


TinyDebugSerial Serial;
uint8_t aref = ADCREFVCC;

volatile uint32_t adc_accum; 
volatile uint16_t adc_cnt;
volatile uint8_t adc_done;   // can be read atomically, unlike counter.

#define AVG_SAMPLES 10000
// number of samples to take and average out

SIGNAL(ADC_vect) {	
	if (adc_cnt == AVG_SAMPLES) {
		ADCSRA = 0;  // stop ADC
		adc_done = 1;
	}
	
	if (adc_cnt > 0) // discard first result
		adc_accum += ADCW;
	
	++adc_cnt;	
}

// massively oversampling, because accuracy is king re: voltage readings
float avgRead(uint8_t pin) {
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
	
	adc_accum = 0;
	adc_cnt = 0;
	adc_done = 0;
	
	ADCSRA |= (1<<ADSC); // begin conversion
	while (!adc_done) ; // wait for completion

	return ((float)adc_accum) / AVG_SAMPLES;
}

int main(void) {
	wdt_enable(WDTO_2S);
	
	// enable TinyDebugSerial and say hi
	Serial.begin(38400);
	Serial.print("** Charger initializing **");
	
	// set analog reference
	aref = ADCREF2_56V;
	
	// make sure lines will not go high
	bclr(DDRB, LED);
	bclr(DDRB, RELAY);
	
	// enable ouputs
	bset(DDRB, LED);
	bset(DDRB, RELAY);
	
	// set up analog inputs (disconnect digital buffers)
	bset(DIDR0, TMPIN); 
	bset(DIDR0, VIN);
	
	sei();
	
	// variables
	uint8_t i = 0;
	float readingOldT, readingNewT, readingNewV;
	float deltaT, deltaV, vPeak = 0;
	
	// use this loop + serial port to verify output values when building
	/*while(true) {
		bset(PORTB, LED);
		Serial.print(tempAvgRead(), 5);
		Serial.print(' ');
		bclr(PORTB, LED);
		Serial.println(voltsAvgRead(),5 );
	}*/
	
	// wait for battery disconnection, so if a reset happens
	// we will not begin charging until user acknowledges (unplugs battery)
	if (voltsAvgRead() > 4) {
		Serial.print(F("** Waiting for battery disconnection **"));
		
		while (voltsAvgRead() > 4) {
			if (i)
				bset(PORTB, LED);
			else 
				bclr(PORTB, LED);
			i = !i;
			delay(1000);
			wdt_reset();
		}
	}
	
	// wait for a battery to be connected
	Serial.print(F("** Waiting for battery connection **"));
	
	while (voltsAvgRead() < 4) {
		if (i)
			bset(PORTB, LED);
		else 
			bclr(PORTB, LED);
		i = !i;
		delay(50);
		wdt_reset();
	}
	
	Serial.print(F("** Charging **"));
	
	// start timing
	millis_start();
	
	// begin charging
	bset(PORTB, RELAY);
	bset(PORTB, LED);
	 
	readingOldT = tempAvgRead();

	uint8_t done = 0;
	
	while (!done) {
		for (i = 0; i < 60; i++) {
			delay(471); // For 8mhz and 10k samples per avg reading. YOU WILL WANT TO CHANGE THIS IF YOU CHANGE THOSE PARAMETERS.
			
			// NO BLINKING! it causes ADC noise.
			
			readingNewT = tempAvgRead();
			readingNewV = voltsAvgRead();
			
			Serial.print(millis() / 1000);
			Serial.print(',');
			Serial.print(readingNewT,4);
			Serial.print(',');
			Serial.print(readingNewV,4);
			Serial.print('\n');
			
			wdt_reset();
		}
		
		if (readingNewV > vPeak)
			vPeak = readingNewV;
		
		deltaT = readingNewT - readingOldT;
		deltaV = vPeak - readingNewV;
		
		Serial.print(F("Minute "));
		Serial.print((millis()/1000/60));
		Serial.print(F(": dT "));
		Serial.print(deltaT); 
		Serial.print(F(", dV "));
		Serial.println(deltaV, 4); 
		
		// sanity checks
		if (readingNewT < 40 || readingNewV < 5.4 || readingNewV > 10 || readingNewT > 200)
			done = OUTOFRANGE;
        
		// timeout
		if ((millis()/1000/60) > TIME_LIMIT) 
			done = TIMEOUT;
        
		// max temp
		if (readingNewT > TEMP_LIMIT)
			done = TEMPMAX;
		
		// deltaT   
		if (deltaT > DELTAT_LIMIT) // 0.7 deg C
			done = DELTAT;
		
		// deltaV
		if (deltaV > DELTAV_LIMIT)
			done = DELTAV;
        
		readingOldT = readingNewT;
		
		wdt_reset();
	}
	
	// charging completed 
	
	bclr(PORTB, RELAY);
	bclr(PORTB, LED);
	
	delay(1000);
	
	uint8_t end = millis() / 1000 / 60;
	
	millis_stop();
	
	// for status code
	i = 0;
	int c = 0;
	
	while(true) {
		wdt_reset();
		
		i = !i;
		
		if (i) { // blink out the reason charge terminated
			if (c < done) 
				bset(PORTB, LED);
			c++;
		}
		
		Serial.print(F("** TERMINATED AT "));
		Serial.print(end);
		Serial.print(F(" MINUTES: "));
		
		switch (done) {
			case TIMEOUT: Serial.print(F("3-hour timeout")); break;
			case TEMPMAX: Serial.print(F("high temperature")); break;
			case OUTOFRANGE: Serial.print(F("sensor out of range")); break;
			case DELTAT: Serial.print(F("temperature delta")); break;
			case DELTAV: Serial.print(F("voltage delta")); break; 
		} 
		
		Serial.println(F(" **"));
		Serial.print(tempAvgRead(),5);
		Serial.print(F(" F, "));
		Serial.print(voltsAvgRead(),5);
		Serial.println(F(" V"));
		
		delay(100); // For 8mhz and 10k samples per avg reading. YOU WILL NEED TO CHANGE THIS IF YOU CHANGE THOSE PARAMETERS.
		// duty cycle should work out to 1/10 for relay. 
		// given a 1.7 amp PSU and 4.2ah battery pack, this works out to be a trickle charge at about .04 C
		
		while (voltsAvgRead() < 6) ; // hang, no battery present or it's bad
		
		bset(PORTB, RELAY);
		delay(100);
		bclr(PORTB, RELAY);
		bclr(PORTB, LED);
		
		if (c == 10) {
			c = 0;
			i = 0;
		}
	}
	
	return 0;
}


inline float tempAvgRead() {
	return (avgRead(TMPIN) * ADC_INC_2_56V_LM34);
}

inline float voltsAvgRead() {
	return (avgRead(VIN) * ADC_INC_2_56V_VOLTS); 
}


