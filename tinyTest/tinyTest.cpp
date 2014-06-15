#include <stdlib.h>
#include <avr/io.h>
#include <util/delay.h>
#include <avr/sleep.h>

#define bv(BIT) (1 << BIT)
#define bset(X,BIT) (X |= bv(BIT))
#define bclr(X,BIT) (X &= ~bv(BIT))
#define bisset(X,BIT) (X & bv(BIT))

#define delay _delay_ms


//Sample data for reading/writing
volatile unsigned char value1=1;
volatile unsigned char value2=2;
volatile unsigned char value3=3;
volatile unsigned char value4=4;
const unsigned char svalue1=129;
const unsigned char svalue2=1;
const unsigned char svalue3=2;
const unsigned char svalue4=107;

unsigned char sram_check=0x12;
unsigned char flash_check=0x34;
unsigned char mul_check=0x56;
unsigned char flow_check=0x78;

char tmp[32];
unsigned char itteration=0;

unsigned char error_detected = 0;


void run_flow_test()
{
    for(int repeat=0;repeat<250;repeat++)//We are aiming at ~10 benches per second
    {
        //Program flow check
        //Magic loop which after 93 itterations yields same value
        for(unsigned char i=0;i<93;i++)
        {
            flow_check=(flow_check<<1) + (flow_check>>7) + 25;
            if(flow_check&8)
                flow_check^=4;
            else
                flow_check^=16;
            flow_check=flow_check ^ 192 + 1;
        }
    }
}

void run_mul_test()
{
    for(int repeat=0;repeat<350;repeat++)//We are aiming at ~10 benches per second
    {
        //Multiplication check
        for(unsigned char i=0;i<64;i++)
        {
            mul_check=mul_check*(mul_check-1);
            mul_check=mul_check*(mul_check+1)+2;
        }
    }
}

void run_flash_test()
{
    for(int repeat=0;repeat<1000;repeat++)//We are aiming at ~10 benches per second
    {
        //flash_check
        for(unsigned char i=0;i<16;i++)
        {
            flash_check=(flash_check ^ svalue1) + svalue2;
            flash_check=(flash_check<<((svalue3+flash_check)&7)) + (flash_check>>((svalue3+flash_check)&7)) + svalue4;
        }
    }
}

void run_sram_test()
{
    for(int repeat=0;repeat<10;repeat++)//We are aiming at ~10 benches per second
    {
        //SRAM check
        for(int i=0;i<2405;i++)
        {
            value1=(value1+value2+value3+value4+sram_check)&1;
            value2=(value2+value1+value3+value4+sram_check)&1+1;
            value3=(value3+value1+value2+value4+sram_check)&1+2;
            value4=(value4+value1+value2+value3+sram_check)&1+3;
            sram_check=(sram_check<<1)+(sram_check>>7)+value1+value2+value3+value4;
        }
    }
}

void detect_errors()
{
    //Detect type error for LED indication
    if(sram_check!=0x12)
        error_detected=1;
    if(flash_check!=0x34)
        error_detected=2;
    if(mul_check!=0x56)
        error_detected=3;
    if(flow_check!=0x78)
        error_detected=4;
    
    
    bset(DDRB,0);
    if(error_detected)
    {
        //Signalize detected error code by blinking led
        for(unsigned char i=0;i<error_detected;i++)
        {
            bset(PORTB,0);
            delay(200);
            bclr(PORTB,0);
            
            delay(400);
        }
        delay(1000);
    }
    else {
        (itteration&1) ? bset(PORTB,0) : bclr(PORTB,0);
    }
}

void reset_sleep() {
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    sleep_enable();
    asm("cli");
    sleep_cpu();
    
    // no coming back from this sleep!
    while(1);
}

int main (void) {

    bset(DDRB,0);
    _delay_ms(10);

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
    
    reset_sleep();


    /*/* itteration+=1;
     
     run_flow_test();
     run_mul_test();
     run_flash_test();
     run_sram_test();
     
     //  if(rand()%20==0)flow_check++; Error indication test
     detect_errors();
     
    PORTB = 255;
    _delay_ms(500);
    PORTB = 0;
    _delay_ms(500);
    /*if (bisset(PINB, 2))
     bset(PORTB, 0);
     else
     bclr(PORTB, 0);*/
}

