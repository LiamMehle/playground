#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define ISR_PRESCALER 10 // 1<<10 = 1024
#define CLOCK_RATE_DEFAULT 15998976
#define CLOCK_RATE_ACTUAL (CLOCK_RATE_DEFAULT >> get_clkpr())
#define COUNTER_VALUE (CLOCK_RATE_ACTUAL >> ISR_PRESCALER) // 1 Hz
#define set(var, i) ( var |=  1<<i )
#define clr(var, i) ( var &= ~1<<i )
// for later optimization
//void start(void) __attribute__ ((OS_main)) __attribute__ ((section (".init9"))) __attribute__ ((naked));

// special isr definition
ISR(TIMER1_COMPA_vect) { // works
	PORTB ^= 1<<5;
}

void set_clkpr(uint8_t prescaler) {
	/*
		the compiler is not aware of the constraints
		so I had to hold it's hand
		"The compiler knows best." does Not hold true here.

		avr is a RISC arch, so no writing directly to memory

		brief C <---> english translation:
		volatile - DON'T try to be clever
		register - prepare this for later, trust me
		const    - might as well
	*/
	// setting clock prescaler
	// setting one-time register variables here so an anonymous scope is welcome
	{
		// prepare prescaler in advance
		volatile register const uint8_t clk_prescaler = prescaler;
		CLKPR             = 1<<CLKPCE; // change enable
		// 4 cycles untill change enable expires
		*(uint8_t*)&CLKPR = clk_prescaler; // assignment is guaranteed to be compiled
		                                   // down to 1 asm instruction, likely 1 clock cycle
	}
}

uint8_t get_clkpr() {
	return CLKPR & 0x8;
}

void set_timer() {
	*((uint16_t*)&OCR1A) = (uint16_t) COUNTER_VALUE; // configure timer
	TCCR1A  = 0x00d;     // init
	TCCR1B  = 0x00d;



	clr(TCCR1A, WGM10);
	clr(TCCR1A, WGM11);
	set(TCCR1B, WGM12);  // CTC Mode -- compare to OCR1A
	set(TCCR1B, CS10);   // set prescaler to 1024
	set(TCCR1B, CS12); 

	// enable interrupt
	set(TIMSK1, OCIE1A);  // enable interrupt
	set(TIFR1, OCF1A);    // enable interrupt instead of flag
}


int main(void) {
	// set output pin
	set(DDRB, 1<<5);

	set_clkpr(8); // 2<<8 = 128

	set_timer();
	sei(); // enable interupts


	//set power-reduction register
	PRR = 0xff;       // disable all..
	clr(PRR, PRTIM1); // ..almost. need timer1 for isr

	// configure to power-down mode
	clr(SMCR, SM0);
	set(SMCR, SM1);
	clr(SMCR, SM2);
	set(SMCR, SE);
	while(1) {
		__asm__ volatile ("sleep\n");
	}
}