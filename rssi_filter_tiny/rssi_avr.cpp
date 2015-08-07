#include <zzjduino.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>

//fuses
// lo 0xE2
// hi 0xDF
// ex 0xFF

/*           ___ ___
 RESET	B5  -|  o  |- VCC  
 ADC3	B3  -|atiny|- B2   SCK   ADC1
 ADC2	B4  -|45/85|- B1   MISO  OC0B  OC1A
		GND -|_____|- B0   MOSI  OC0A
 */
 
 /* 
             ___ ___
 RESET	B5  -|  o  |- VCC  
 VIN	B3  -|atiny|- B2   
     	B4  -|45/85|- B1   ALARM  
		GND -|_____|- B0   PWMOUT
 */

// .1uf ceramic cap deadbug'd on top of uC is VITAL. YOU MUST DO THIS. MUST MUST MUST

// decent-sized tantulum capacitor from VCC to ground - prevent random resets
// unnecessary if PSU is better than a 7805

#define ADCREF1_1V	(1 << REFS1)
// option to use bypass on port b0 w/ refs0
#define ADCREF2_56V (1 << REFS2) | (1 << REFS1)
#define ADCREFVCC	0

#define VIN_PIN 3
#define PWMOUT_PIN 0
#define ALARM_TONE_PIN 2
#define ALARM_PIN 1

//TinyDebugSerial Serial;

int minval = 1024;
int count = 0;
uint8_t data_i = 0;
int data[8];

// threshold for no signal
#define RSSI_NO_SIGNAL 180
#define RSSI_LOW_SIGNAL 120

uint8_t alarm = 0;
uint8_t alarm_c = 0;

uint8_t alarm_p = 0;
int alarm_p_c = 0;

SIGNAL(ADC_vect) {	
    int reading = ADCW;
	
	if (reading < minval) 
		minval = reading;
 
    if (alarm && ++alarm_c == 3) {
        alarm_c = 0;
        
        if (alarm == 1 || alarm_p) {
            if (bisset(PORTB,ALARM_TONE_PIN)) {
                bclr(PORTB,ALARM_TONE_PIN);
            } else
                bset(PORTB,ALARM_TONE_PIN);
        } 
        
        
        if (alarm == 2 && alarm_p_c++ == 1500) {
            alarm_p_c = 0;
            alarm_p = !alarm_p;
            PORTB &= ~(1 << ALARM_TONE_PIN);
        }
    }
    
    if (count++ == 200) { // should be equal to at least two periods of input, so sure to get a sample during RSSI
		data[data_i] = minval;
        data_i = (data_i + 1) & 7;
		
		int val = 0;
		for (int i = 0; i < 8; i++)
		    val += data[i];
        
        val = val / 8;
		
		if (val > RSSI_LOW_SIGNAL) { // low/no signal
			PORTB |= (1 << ALARM_PIN);
			alarm = 1;
			if (val < RSSI_NO_SIGNAL)
			    alarm = 2;
		} else {
		    alarm = 0;
		    PORTB &= ~(1 << ALARM_TONE_PIN);
		    PORTB &= ~(1 << ALARM_PIN);
		}
		
        OCR0A = 255 - min(val ,255);
        minval = 1024;
        count = 0;
    }
	
	wdt_reset();
}


static const uint8_t PROGMEM adc_mapping[] = {
	255, 255, 1, 3, 2, 0
}; // port pins to adc channels

int startRead(uint8_t pin) {
	uint8_t chan;
	
	if (pin >= sizeof(adc_mapping)) 
		return 0; // invalid/non-ADC pin
	 
	chan = pgm_read_byte(adc_mapping + pin);
	 
	if (chan == 255) 
		return 0; // not an ADC pin

	// set analog reference
	uint8_t aref = ADCREF2_56V;
	
	// set up ADC
	ADMUX = chan | aref; // adc channel & reference
	ADCSRA  = (1 << ADEN);	// ADC on
	ADCSRA |= (1 << ADATE); // free running
	ADCSRA |= (1 << ADIE);	// interrupt on
	ADCSRA |= (1 << ADPS2) | (1 <<  ADPS0); // /32 prescaler (250khz @ 8mhz)
	ADCSRB = 0;

	ADCSRA |= (1<<ADSC); // begin conversion
	// 13 cycles per sample, about 19khz sample rate
	
	return 1;
	//ADCSRA = 0;  // stop ADC
}

int main(void) {
	wdt_enable(WDTO_2S);
	
	DDRB |= 1 << ALARM_TONE_PIN;
	DDRB |= 1 << ALARM_PIN;
	DDRB |= 1 << PWMOUT_PIN;
	DDRB &= ~(1 << VIN_PIN);
	
	PORTB &= ~(1 << ALARM_PIN);
	PORTB &= ~(1 << ALARM_TONE_PIN);
	
	TCCR0A = (1 << COM0A1) | 0x3; // fast pwm
	TCCR0B = 1; // no prescaler
	TIMSK = 0;
	OCR0A = 0;
	DDRB |= 1<<0;

	startRead(3); // pin b3

	sei();
	
	while(true);
	
	return 0;
}
