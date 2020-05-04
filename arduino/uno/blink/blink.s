
blink.hex:     file format ihex


Disassembly of section .sec1:

00000000 <.sec1>:
   0:	3d 9a       	sbi	0x07, 5	; 7
   2:	2d 9a       	sbi	0x05, 5	; 5
   4:	2f ef       	ldi	r18, 0xFF	; 255
   6:	83 ef       	ldi	r24, 0xF3	; 243
   8:	91 e0       	ldi	r25, 0x01	; 1
   a:	21 50       	subi	r18, 0x01	; 1
   c:	80 40       	sbci	r24, 0x00	; 0
   e:	90 40       	sbci	r25, 0x00	; 0
  10:	e1 f7       	brne	.-8      	;  0xa
  12:	00 c0       	rjmp	.+0      	;  0x14
  14:	00 00       	nop
  16:	2d 98       	cbi	0x05, 5	; 5
  18:	2f ef       	ldi	r18, 0xFF	; 255
  1a:	83 ef       	ldi	r24, 0xF3	; 243
  1c:	91 e0       	ldi	r25, 0x01	; 1
  1e:	21 50       	subi	r18, 0x01	; 1
  20:	80 40       	sbci	r24, 0x00	; 0
  22:	90 40       	sbci	r25, 0x00	; 0
  24:	e1 f7       	brne	.-8      	;  0x1e
  26:	00 c0       	rjmp	.+0      	;  0x28
  28:	00 00       	nop
  2a:	eb cf       	rjmp	.-42     	;  0x2
  2c:	2f ef       	ldi	r18, 0xFF	; 255
  2e:	83 ef       	ldi	r24, 0xF3	; 243
  30:	91 e0       	ldi	r25, 0x01	; 1
  32:	21 50       	subi	r18, 0x01	; 1
  34:	80 40       	sbci	r24, 0x00	; 0
  36:	90 40       	sbci	r25, 0x00	; 0
  38:	e1 f7       	brne	.-8      	;  0x32
  3a:	00 c0       	rjmp	.+0      	;  0x3c
  3c:	00 00       	nop
  3e:	08 95       	ret
