#define F_CPU CLOCK_RATE_ACTUAL

#define ISR_PRESCALER 10 // 1<<10 = 1024
#define CLK_PRESCALER 0x08
#define CLOCK_RATE_DEFAULT 15998976
#define CLOCK_RATE_ACTUAL (CLOCK_RATE_DEFAULT >> CLK_PRESCALER)
#define COUNTER_VALUE (CLOCK_RATE_ACTUAL >> ISR_PRESCALER)/20 // 1 Hz
#define set(var, i) ( var |=  1<<i )
#define clr(var, i) ( var &= ~1<<i )

//#define BAUD 9600

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
//#include <util/setbaud.h>
//#include <stddef.h>
//#include <stdio.h>
// for later optimization
//void start(void) __attribute__ ((OS_main)) __attribute__ ((section (".init9"))) __attribute__ ((naked));

#define loop_until_bit_set(reg, bit) while(!(reg & 1<<bit))


//__attribute__ ((hot))
//void uart_putchar(char c) {
//	loop_until_bit_set(UCSR0A, UDRE0); /* Wait until data register empty. */
//	UDR0 = c;
//}
//
//__attribute__ ((cold))
//char uart_getchar(void) {
//	loop_until_bit_set(UCSR0A, RXC0); /* Wait until data exists. */
//	return UDR0;
//}
//
//__attribute__ ((cold))
//void uart_init(void) {
//	UBRR0H = UBRRH_VALUE;
//	UBRR0L = UBRRL_VALUE;
//
//#ifdef USE_2X
//	UCSR0A |= _BV(U2X0);
//#else
//	UCSR0A &= ~(_BV(U2X0));
//#endif
//
//	UCSR0C = _BV(UCSZ01) | _BV(UCSZ00); /* 8-bit data */
//	UCSR0B = _BV(RXEN0) | _BV(TXEN0);   /* Enable RX and TX */
//}
//
//FILE uart_output = (int)FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);
//FILE uart_input  = (int)FDEV_SETUP_STREAM(NULL, uart_getchar, _FDEV_SETUP_READ);

// special isr definition
ISR(TIMER1_COMPA_vect) { // works
	PORTB ^= 1<<5;
}

int main(void) {
	// setting the clock
	__asm__ volatile (
		//"ldi r20, %0\n"  // destination address
		"sts %0, %1\n" // change enable
		"sts %0, %2\n" // set clock prescaler
		:: "n" (&CLKPR), "r" ((uint8_t)1<<CLKPCE), "r" ((uint8_t)CLK_PRESCALER) : "r20", "r21");


	set(DDRB, 1<<5);

	*((uint16_t*)&OCR1A) = (uint16_t) COUNTER_VALUE; // configure timer
	TCCR1A  = 0x00;     // init
	//TCCR1B  = 0x00;

	//clr(TCCR1A, WGM10);
	//clr(TCCR1A, WGM11);


	//WGM12  // CTC Mode -- compare to OCR1A
	//CS10   // set prescaler to 1024
	//CS12
	TCCR1B = 0x00 | _BV(WGM12) | _BV(CS10) | _BV(CS12);


	// enable interrupt
	set(TIMSK1, OCIE1A);  // enable interrupt
	set(TIFR1, OCF1A);    // enable interrupt instead of flag


	//set power-reduction register
	PRR = 0xff & ~_BV(PRTIM1); // disable all except timer1

	// configure to power-down mode
	//clr(SMCR, SM0);
	//set(SMCR, SM1);
	//clr(SMCR, SM2);
	//set(SMCR, SE);
	SMCR = 0X00 | _BV(SE);

	//for(int i = 0; i<50; i++) {
	//	PORTB ^= 1<<5;
	//	_delay_ms(200);
	//}
	sei(); // enable interupts

	while(1) {
		__asm__ volatile ("sleep\n");
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