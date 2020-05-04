#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define PRESCLER 10 // 1<<10 = 1024
#define CLOCKRATE 15998976
#define COUNTER_VALUE (CLOCKRATE >> PRESCALER)

void start(void) __attribute__ ((OS_main)) __attribute__ ((section (".init9"))) __attribute__ ((naked));

ISR(TIMER1_COMPA_vect) {
	PORTB ^=_BV(5);
}
void start(void) {
	DDRC  |= 1<<5;
	OCR1A  = COUNTER_VALUE;
	TCCR1A = 0x00;              // init
	TCCR1B = 0x00;              // init
	TCCR1B |= (1 << WGM12);     // CTC Mode -- compare to OCR1A
	TCCR1B |= (1 << CS10) | (1<<CS12); // set prescaler to 1024

	// enable interrupt
	TIMSK1 |= (1 << OCIE1A);
	sei(); // enable interupts

	main_loop:
		// do stuff here
	goto main_loop;
}
