#define F_CPU CLOCK_RATE_ACTUAL

#define ISR_PRESCALER 10 // 1<<10 = 1024
#define CLOCK_RATE_DEFAULT 15998976
#include <stdint.h>
uint8_t clk_prescaler;
#define CLOCK_RATE_ACTUAL (CLOCK_RATE_DEFAULT >> clk_prescaler)
#define COUNTER_VALUE (CLOCK_RATE_ACTUAL >> ISR_PRESCALER)/20 // 1 Hz
#define set(var, i) ( var |=  1<<i )
#define clr(var, i) ( var &= ~1<<i )

#define BAUD_MAX    1000000
#define BAUD_TARGET 115200
#define BAUD_CALC (F_CPU/(16*BAUD_TARGET)-1)

//#define BAUD 9600

#include <avr/io.h>
//#include <util/delay.h>
#include <avr/interrupt.h>
//#include <util/setbaud.h>
//#include <stddef.h>
//#include <stdio.h>
// for later optimization
//void start(void) __attribute__ ((OS_main)) __attribute__ ((section (".init9"))) __attribute__ ((naked));

#define loop_until_bit_set(reg, bit) while(!(reg & 1<<bit))


ISR(TIMER1_COMPA_vect) { // works
	PORTB ^= 1<<5;
}

// to correct errors non-destructively
template<class T = uint16_t>
void update_timer_value() { 
	*((T*)&OCR1A) = (T) COUNTER_VALUE;
}
__attribute__ ((hot))
void set_clock_prescaler(int new_prescaler) {
	clk_prescaler = new_prescaler;
	__asm__ volatile (
		"sts %0, %1\n" // change enable
		"sts %0, %2\n" // set clock prescaler
		:: "n" (&CLKPR), "r" ((uint8_t)1<<CLKPCE), "r" ((uint8_t)new_prescaler) : "r20", "r21");
	update_timer_value(); // update timer value
	// update serial baud
	UBRR0H = (uint8_t) (BAUD_CALC << clk_prescaler) >> 8;
	UBRR0L = (uint8_t)  BAUD_CALC << clk_prescaler;
}

__attribute__ ((cold))
__attribute__ ((unused))
void usart_init() {
	UCSR0A = 0x00;
	UCSR0B = 0x00 | _BV(UCSZ00) | _BV(UDRIE0) | _BV(TXEN0) | _BV(RXEN0); // empty interrupt, tx enable
	UCSR0C = 0x00 | _BV(UCSZ01) | _BV(UCSZ00); // 8 bit char frames
	
	// clock reduction calc
	UBRR0H = (uint8_t) 0x0f & ((BAUD_CALC << clk_prescaler) >> 8);
	UBRR0L = (uint8_t)          BAUD_CALC << clk_prescaler;

}

__attribute__ ((hot))
__attribute__ ((unused))
inline int transmit_complete(char c) {
	return UCSR0A & TXC0;
}

__attribute__ ((hot))
__attribute__ ((unused))
void put_char(char c) {
	while( !(UCSR0A & _BV(UDRE0)) ); // wait for data register to be empty
	UDR0 = c;
	return;
}

int main(void) {
	// setting the clock (also updates timer1 value for blink)
	set_clock_prescaler(8);

	cli(); // start blinking when set up


	// -------- < timer setup > ------------
	// enable pin
	set(DDRB, 1<<5);

	// configure timer
	// (timer value has been set and will be updated on set_clock_prescaler() call)
	//WGM12  // CTC Mode -- compare to OCR1A
	//CSxx   // set prescaler to 1>>10 = x1024
	TCCR1A = 0x00;     // init
	TCCR1B = 0x00 | _BV(WGM12) | _BV(CS10) | _BV(CS12);


	// enable interrupt
	set(TIMSK1, OCIE1A);  // enable interrupt
	set(TIFR1, OCF1A);    // enable interrupt instead of flag
	// -------- < end timer setup > --------

	// timer is set up, so blinking can commence.
	sei(); // enable interupts

	// set power-reduction register
	// disable all except timer1 and usb
	PRR = 0xff & ~(_BV(PRTIM1) | _BV(PRUSART0));

	// configure to power-down mode
	// anything other than idle disables timer1 and that would disable the blinking
	// technically timer 2 can be used for the interrupt and set in async mode
	// to work around this technicall limitation
	
	SMCR = 0x00 | _BV(SE); // idle
	// __asm__("sleep"); is now useful to wait until next led update
	

	// non-blink code goes here
	// enable serial
	// write "blink $state" on update

	usart_init();




	while(1) {
		//__asm__ volatile ("sleep\n");
		//put_char('c');
	}
}


// dead code disposal (in case of reuse)

/* only relevant in pwm mode
	clr(TCCR1A, COM1A1); // do not touch clear OCR1A on compare match
	clr(TCCR1A, COM1A0);
	clr(TCCR1B, COM1B1); // or OCR1B
	clr(TCCR1B, COM1B0);

	clr(TCCR1B, WGM13);// irrelevant


*/