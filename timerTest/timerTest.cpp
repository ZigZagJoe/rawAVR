#include <zzjduino.h>
 
#define LED 4



/*uint32_t readUint32(void* ptr, uint16_t index) {
	uint8_t *src =  (uint8_t*) ptr + index;
	uint32_t ret;
	uint8_t *dest = (uint8_t*) (&ret);
	
	dest[0] = src[3];
	dest[1] = src[2];
	dest[2] = src[1];
	dest[3] = src[0];
	
	return ret;
}*/

/*

uint32_t __attribute((naked)) readUint32(void* ptr, uint16_t index) {
	asm (
		 "add r22,r24"				"\n\t" // ptr += index
		 "adc r23,r25"				"\n\t"
		 "movw r30,r22"				"\n\t" // Z = ptr
		 "ldd r22, Z+3"				"\n\t" // return bswap(*((uint32_t*)ptr))
		 "ldd r23, Z+2"				"\n\t"
		 "ldd r24, Z+1"				"\n\t"
		 "ld r25, Z"				"\n\t"
		 "ret"						"\n\t"
		 :
		 :
		 :"r30", "r31"
		 );
}


uint16_t __attribute((naked)) readUint16(void* ptr, uint16_t index) {
	asm (
		 "add r22,r24"				"\n\t" // ptr += index
		 "adc r23,r25"				"\n\t"
		 "movw r30,r22"				"\n\t" // Z = ptr
		 "ldd r24,Z+1"				"\n\t" // return bswap(*((uint16_t*)ptr))
		 "ld r25,Z"					"\n\t"
		 "ret"						"\n\t"
		 :
		 :
		 :"r30", "r31"
		 );
}*/

/*

uint32_t fifo_read32(byte * buffer) {
	uint8_t buff[4];
	
	buff[0] = read(buffer);
	buff[1] = buffer[1];
	buff[2] = buffer[2];
	buff[3] = buffer[3];
	
	return *((uint32_t *)(&buff));
	
	/*uint32_t ret;
	uint8_t * ptr = (uint8_t*)&ret;
	ptr[0] = buffer[0];
	ptr[1] = buffer[1];
	ptr[2] = buffer[2];
	ptr[3] = buffer[3];
	return ret;
}

/*
// little endian read
inline uint16_t fifo_read16() {
	uint8_t buff[2];
	
	buff[0] = fifo_read();
	buff[1] = fifo_read();
	
	return *((uint16_t *)&buff);
}
*/
/*
uint16_t readUint16(void* ptr, uint16_t index) {
	uint8_t *src =  (uint8_t*) ptr + index;
	uint16_t ret;
	uint8_t *dest = (uint8_t*) (&ret);
	
	dest[0] = src[1];
	dest[1] = src[0];
	return ret;
}

inline uint16_t readuint16(byte * buffer, int pos) {
	uint16_t t = buffer[pos];
	return (t << 8) | buffer[pos+1];
}

inline uint32_t readuint32(byte * buffer, int pos) {
	uint32_t t = readuint16(buffer, pos);
	return (t << 16) | readuint16(buffer, pos+2);
}
*/

uint8_t fifo_read() {
	return random();
}

typedef union { // strict-aliasing compliance
	uint8_t b[4];
	uint32_t value;
} endianHelper32;

typedef union { // strict-aliasing compliance
	uint8_t b[2];
	uint16_t value;
} endianHelper16;

// little endian 32-bit read
 uint32_t fifo_read32() {
	endianHelper32 h;
	
	h.b[0] = fifo_read();
	h.b[1] = fifo_read();
	h.b[2] = fifo_read();
	h.b[3] = fifo_read();
	
	return h.value;
}

// little endian 16-bit read
 uint16_t fifo_read16() {
	endianHelper32 h;
	
	h.b[0] = fifo_read();
	h.b[1] = fifo_read();
	
	return h.value;
}

/*
 asm (
 "add r22,r24"				"\n\t"
 "adc r23,r25"				"\n\t"
 "movw r30,r22"				"\n\t"
 "ldd r22, %a0+3"			"\n\t"
 "ldd r23, %a0+2"			"\n\t"
 "ldd r24, %a0+1"			"\n\t"
 "ld r25, %a0"				"\n\t"
 "ret"
 :
 : "e" (ptr + index)
);
*/

/*uint16_t readUint16(void* ptr, uint16_t index) {
	asm (
		 "ldd r24, %a0+1"			"\n\t"
		 "ld r25, %a0"				"\n\t"
		 "ret"
		 :
		 : "e" (ptr + index)
		 );
}*/

/*
inline uint16_t readuint16(byte * buffer, int pos) {
	uint16_t t = buffer[pos];
	return (t << 8) | buffer[pos+1];
}

uint32_t readuint32(byte * buffer, int pos) {
	uint32_t t = readuint16(buffer, pos);
	return (t << 16) | readuint16(buffer, pos+2);
}
*/
int main(void) {
	//millis_start();
	
	// set up output port
	//PORTC = bv(LED);
	//DDRC = bv(LED);

	//sei();
	//Serial.begin(38400);
	
	//uint32_t a, b, start, end, diff;
	
	//uint8_t arr[] = { 1, 2, 3, 4, 5, 6, 7, 8 };
	
	//fifo_read32();
	//fifo_read16();
	
	/*uint32_t a = 3123;
	uint32_t b = 4324;
	uint32_t c;
	
	c = a + b;
	
	c -= b;
	
	c = c * a;*/
	
	
	double pie = 3.14141414;
	pie = pie * pie;
	pie = pie / pie;
	pie = pie + pie;
	pie = pie - pie;
	Serial.println(pie);
	/*
	Serial.println("Hello world!\n");
	Serial.print("Ind0: ");
	Serial.println(readUint32(arr,0), HEX);
	Serial.print("Ind1: ");
	Serial.println(readUint16(arr,4), HEX);
	Serial.println("                       \n");
	*/
	
	/*while(true) {
		//PORTC = 1 << LED;
		a = millis();
		//PORTC = 0;

		if (a < b) {
			Serial.println("!!!!! ERROR !!!!!");
			Serial.print("t-1: ");
			Serial.println(b);
			Serial.print("t: ");
			Serial.println(a);
		}
		
		b = a;
		
	}*/
	
	return 0;
}
