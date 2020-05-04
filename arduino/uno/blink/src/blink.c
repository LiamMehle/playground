#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define BLINK_MS 40

void start(void) __attribute__ ((OS_main)) __attribute__ ((section (".init9"))) __attribute__ ((naked));

void delay(void) {
	_delay_ms(BLINK_MS);
}
void start(void) {
	DDRC  |= 1<<5;
	top:
	PORTB |= _BV(5);
	delay();
	PORTB &= ~_BV(5);
	delay();
	goto top;

}
