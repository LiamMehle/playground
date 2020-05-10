
blink.hex:     file format ihex


Disassembly of section .sec1:

00000000 <.sec1>:
   0:	0c 94 34 00 	jmp	0x68	;  0x68
   4:	0c 94 3e 00 	jmp	0x7c	;  0x7c
   8:	0c 94 3e 00 	jmp	0x7c	;  0x7c
   c:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  10:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  14:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  18:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  1c:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  20:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  24:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  28:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  2c:	0c 94 40 00 	jmp	0x80	;  0x80
  30:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  34:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  38:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  3c:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  40:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  44:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  48:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  4c:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  50:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  54:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  58:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  5c:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  60:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  64:	0c 94 3e 00 	jmp	0x7c	;  0x7c
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61
  74:	0e 94 4d 00 	call	0x9a	;  0x9a
  78:	0c 94 6e 00 	jmp	0xdc	;  0xdc
  7c:	0c 94 00 00 	jmp	0	;  0x0
  80:	8f 93       	push	r24
  82:	8f b7       	in	r24, 0x3f	; 63
  84:	8f 93       	push	r24
  86:	9f 93       	push	r25
  88:	85 b1       	in	r24, 0x05	; 5
  8a:	90 e2       	ldi	r25, 0x20	; 32
  8c:	89 27       	eor	r24, r25
  8e:	85 b9       	out	0x05, r24	; 5
  90:	9f 91       	pop	r25
  92:	8f 91       	pop	r24
  94:	8f bf       	out	0x3f, r24	; 63
  96:	8f 91       	pop	r24
  98:	18 95       	reti
  9a:	80 e8       	ldi	r24, 0x80	; 128
  9c:	90 e0       	ldi	r25, 0x00	; 0
  9e:	28 e0       	ldi	r18, 0x08	; 8
  a0:	80 93 61 00 	sts	0x0061, r24	;  0x800061
  a4:	20 93 61 00 	sts	0x0061, r18	;  0x800061
  a8:	26 9a       	sbi	0x04, 6	; 4
  aa:	83 e0       	ldi	r24, 0x03	; 3
  ac:	90 e0       	ldi	r25, 0x00	; 0
  ae:	90 93 89 00 	sts	0x0089, r25	;  0x800089
  b2:	80 93 88 00 	sts	0x0088, r24	;  0x800088
  b6:	10 92 80 00 	sts	0x0080, r1	;  0x800080
  ba:	8d e0       	ldi	r24, 0x0D	; 13
  bc:	80 93 81 00 	sts	0x0081, r24	;  0x800081
  c0:	80 91 6f 00 	lds	r24, 0x006F	;  0x80006f
  c4:	82 60       	ori	r24, 0x02	; 2
  c6:	80 93 6f 00 	sts	0x006F, r24	;  0x80006f
  ca:	b1 9a       	sbi	0x16, 1	; 22
  cc:	87 ef       	ldi	r24, 0xF7	; 247
  ce:	80 93 64 00 	sts	0x0064, r24	;  0x800064
  d2:	81 e0       	ldi	r24, 0x01	; 1
  d4:	83 bf       	out	0x33, r24	; 51
  d6:	78 94       	sei
  d8:	88 95       	sleep
  da:	fe cf       	rjmp	.-4      	;  0xd8
  dc:	f8 94       	cli
  de:	ff cf       	rjmp	.-2      	;  0xde
