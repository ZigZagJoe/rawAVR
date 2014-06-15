#include <zzjduino.h>
#include <TinyDebugSerial.h>

#define ADC_INC_2_56V_LM34 0.25024437927f
#define ADC_INC_2_56V 0.00250244379f

#define tempCal -2
#define voltsCal  -0.05

enum { TIMEOUT, DELTAV, DELTAT,TEMPMAX,OUTOFRANGE, TRICKLE_ONLY };


#define LED 1
#define RELAY 0

#define VIN 2
#define TMPIN 4
#define SEROUT 3

TinyDebugSerial Serial;

/*
			 ___ ___
 RESET	B5  -|  o  |- VCC  
 ADC3	B3  -|atiny|- B2   SCK   ADC1
 ADC2	B4  -|45/85|- B1   MISO
	    GND -|_____|- B0   MOSI
*/

static const uint8_t PROGMEM adc_mapping[] = {
	0, 0, 1, 3, 2, 0
}; // port pins to adc channels

#define ADCREF1_1V (1 << REFS1)
#define ADCREF2_56V (1 << REFS2)| (1 << REFS1)

int analogRead(uint8_t pin) {
	uint8_t low, high, chan;
	
	if (pin >= sizeof(adc_mapping)) return 0;
	chan = pgm_read_byte(adc_mapping + pin);
	
	ADCSRB = 0;
	ADMUX = chan | ADCREF2_56V; // adc channel & reference
	DIDR0 = 1 << pin; // disable diginal input from said pin
	
	ADCSRA |= (1<<ADSC); // begin conversion
	while (ADCSRA & (1<<ADSC)) ; // wait for completion
	low = ADCL; // read values
	high = ADCH;
	DIDR0 = 0; // re-enable digital input
	return (high << 8) | low;
}


int main(void) {
	Serial.begin(38400);
	
	// enable ADC
	ADCSRA = (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1); // /64 prescaler
	
	bset(DDRB, LED);
	bset(DDRB, RELAY);
	
	millis_start();
	sei();
	
/*
	uint32_t a, b, start, end, diff;
		
	bool v = 0;
	
	while(true) {
		b = millis();
		
		while (millis() - b < 1000) ;
		
		//Serial.println(millis());
		
		Serial.write((byte)0);
		int ar = analogRead(4);
		
		Serial.println(ar);

		if (v) 
			bset(PORTB, LED);
		else 
			bclr(PORTB, LED);

		v = !v;
		
	}
	*/
	return 0;
}
