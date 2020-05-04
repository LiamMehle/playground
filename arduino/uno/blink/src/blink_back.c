#include <avr/io.h>
//#include <util/delay.h>

#define BLINK_MS 500

#define DELAY for(unsigned long long i = 0; i < 50000; i++)


#ifndef OPT
int main() {
	DDRB = 1<<(13-8);
	PORTB = 0xff;
	while(1) {
		DELAY;
		PORTB = 0;//1<<(13-8);
		DELAY;
		PORTB = 0xff;
	}
	return 0;
}
#endif

#ifdef OPT
int main() {
	// ugly hack-looking C long-winded explanation of the definition of
	// what I need: access to the 8-bits containing the pin LED mode and state
	register int8_t* const restrict pin_mode  = (int8_t* const restrict) &((int8_t*)&DDRB) [1];
	register int8_t* const restrict pin_state = (int8_t* const restrict) &((int8_t*)&PORTB)[1];
	// definitions for on and off (faster than xor-ing)
	register const int8_t on  = 1<<(13-8-4);
	register const int8_t off = 0;
	*pin_mode  = on; // led pin on
	// blink
	while(1) {
		*pin_state = on;
		_delay_ms(BLINK_MS);
		*pin_state = off;
		_delay_ms(BLINK_MS);
	}
}
#endif
