
blink.hex:     file format ihex


Disassembly of section .sec1:

00000000 <.sec1>:
   0:	0c 94 34 00 	jmp	0x68	;  0x68
   4:	0c 94 46 00 	jmp	0x8c	;  0x8c
   8:	0c 94 46 00 	jmp	0x8c	;  0x8c
   c:	0c 94 46 00 	jmp	0x8c	;  0x8c
  10:	0c 94 46 00 	jmp	0x8c	;  0x8c
  14:	0c 94 46 00 	jmp	0x8c	;  0x8c
  18:	0c 94 46 00 	jmp	0x8c	;  0x8c
  1c:	0c 94 46 00 	jmp	0x8c	;  0x8c
  20:	0c 94 46 00 	jmp	0x8c	;  0x8c
  24:	0c 94 46 00 	jmp	0x8c	;  0x8c
  28:	0c 94 46 00 	jmp	0x8c	;  0x8c
  2c:	0c 94 48 00 	jmp	0x90	;  0x90
  30:	0c 94 46 00 	jmp	0x8c	;  0x8c
  34:	0c 94 46 00 	jmp	0x8c	;  0x8c
  38:	0c 94 46 00 	jmp	0x8c	;  0x8c
  3c:	0c 94 46 00 	jmp	0x8c	;  0x8c
  40:	0c 94 46 00 	jmp	0x8c	;  0x8c
  44:	0c 94 46 00 	jmp	0x8c	;  0x8c
  48:	0c 94 46 00 	jmp	0x8c	;  0x8c
  4c:	0c 94 46 00 	jmp	0x8c	;  0x8c
  50:	0c 94 46 00 	jmp	0x8c	;  0x8c
  54:	0c 94 46 00 	jmp	0x8c	;  0x8c
  58:	0c 94 46 00 	jmp	0x8c	;  0x8c
  5c:	0c 94 46 00 	jmp	0x8c	;  0x8c
  60:	0c 94 46 00 	jmp	0x8c	;  0x8c
  64:	0c 94 46 00 	jmp	0x8c	;  0x8c
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61
  74:	21 e0       	ldi	r18, 0x01	; 1
  76:	a0 e0       	ldi	r26, 0x00	; 0
  78:	b1 e0       	ldi	r27, 0x01	; 1
  7a:	01 c0       	rjmp	.+2      	;  0x7e
  7c:	1d 92       	st	X+, r1
  7e:	a1 30       	cpi	r26, 0x01	; 1
  80:	b2 07       	cpc	r27, r18
  82:	e1 f7       	brne	.-8      	;  0x7c
  84:	0e 94 1b 01 	call	0x236	;  0x236
  88:	0c 94 8a 01 	jmp	0x314	;  0x314
  8c:	0c 94 00 00 	jmp	0	;  0x0
  90:	8f 93       	push	r24
  92:	8f b7       	in	r24, 0x3f	; 63
  94:	8f 93       	push	r24
  96:	9f 93       	push	r25
  98:	85 b1       	in	r24, 0x05	; 5
  9a:	90 e2       	ldi	r25, 0x20	; 32
  9c:	89 27       	eor	r24, r25
  9e:	85 b9       	out	0x05, r24	; 5
  a0:	9f 91       	pop	r25
  a2:	8f 91       	pop	r24
  a4:	8f bf       	out	0x3f, r24	; 63
  a6:	8f 91       	pop	r24
  a8:	18 95       	reti
  aa:	20 91 00 01 	lds	r18, 0x0100	;  0x800100
  ae:	88 e0       	ldi	r24, 0x08	; 8
  b0:	9d e3       	ldi	r25, 0x3D	; 61
  b2:	a0 e0       	ldi	r26, 0x00	; 0
  b4:	b0 e0       	ldi	r27, 0x00	; 0
  b6:	04 c0       	rjmp	.+8      	;  0xc0
  b8:	b5 95       	asr	r27
  ba:	a7 95       	ror	r26
  bc:	97 95       	ror	r25
  be:	87 95       	ror	r24
  c0:	2a 95       	dec	r18
  c2:	d2 f7       	brpl	.-12     	;  0xb8
  c4:	64 e1       	ldi	r22, 0x14	; 20
  c6:	70 e0       	ldi	r23, 0x00	; 0
  c8:	0e 94 35 01 	call	0x26a	;  0x26a
  cc:	70 93 89 00 	sts	0x0089, r23	;  0x800089
  d0:	60 93 88 00 	sts	0x0088, r22	;  0x800088
  d4:	08 95       	ret
  d6:	cf 93       	push	r28
  d8:	df 93       	push	r29
  da:	00 d0       	rcall	.+0      	;  0xdc
  dc:	00 d0       	rcall	.+0      	;  0xde
  de:	0f 92       	push	r0
  e0:	cd b7       	in	r28, 0x3d	; 61
  e2:	de b7       	in	r29, 0x3e	; 62
  e4:	80 93 00 01 	sts	0x0100, r24	;  0x800100
  e8:	20 e8       	ldi	r18, 0x80	; 128
  ea:	30 e0       	ldi	r19, 0x00	; 0
  ec:	20 93 61 00 	sts	0x0061, r18	;  0x800061
  f0:	80 93 61 00 	sts	0x0061, r24	;  0x800061
  f4:	0e 94 55 00 	call	0xaa	;  0xaa
  f8:	10 92 c5 00 	sts	0x00C5, r1	;  0x8000c5
  fc:	20 91 00 01 	lds	r18, 0x0100	;  0x800100
 100:	2d 83       	std	Y+5, r18	; 0x05
 102:	80 e0       	ldi	r24, 0x00	; 0
 104:	90 e2       	ldi	r25, 0x20	; 32
 106:	a4 ef       	ldi	r26, 0xF4	; 244
 108:	b0 e0       	ldi	r27, 0x00	; 0
 10a:	9c 01       	movw	r18, r24
 10c:	ad 01       	movw	r20, r26
 10e:	0d 80       	ldd	r0, Y+5	; 0x05
 110:	04 c0       	rjmp	.+8      	;  0x11a
 112:	55 95       	asr	r21
 114:	47 95       	ror	r20
 116:	37 95       	ror	r19
 118:	27 95       	ror	r18
 11a:	0a 94       	dec	r0
 11c:	d2 f7       	brpl	.-12     	;  0x112
 11e:	ca 01       	movw	r24, r20
 120:	b9 01       	movw	r22, r18
 122:	20 e0       	ldi	r18, 0x00	; 0
 124:	30 e2       	ldi	r19, 0x20	; 32
 126:	4c e1       	ldi	r20, 0x1C	; 28
 128:	50 e0       	ldi	r21, 0x00	; 0
 12a:	0e 94 49 01 	call	0x292	;  0x292
 12e:	21 50       	subi	r18, 0x01	; 1
 130:	30 e0       	ldi	r19, 0x00	; 0
 132:	0d 80       	ldd	r0, Y+5	; 0x05
 134:	02 c0       	rjmp	.+4      	;  0x13a
 136:	22 0f       	add	r18, r18
 138:	33 1f       	adc	r19, r19
 13a:	0a 94       	dec	r0
 13c:	e2 f7       	brpl	.-8      	;  0x136
 13e:	20 93 c4 00 	sts	0x00C4, r18	;  0x8000c4
 142:	0f 90       	pop	r0
 144:	0f 90       	pop	r0
 146:	0f 90       	pop	r0
 148:	0f 90       	pop	r0
 14a:	0f 90       	pop	r0
 14c:	df 91       	pop	r29
 14e:	cf 91       	pop	r28
 150:	08 95       	ret
 152:	90 91 c0 00 	lds	r25, 0x00C0	;  0x8000c0
 156:	95 ff       	sbrs	r25, 5
 158:	fc cf       	rjmp	.-8      	;  0x152
 15a:	80 93 c6 00 	sts	0x00C6, r24	;  0x8000c6
 15e:	08 95       	ret
 160:	8f 92       	push	r8
 162:	9f 92       	push	r9
 164:	af 92       	push	r10
 166:	bf 92       	push	r11
 168:	cf 92       	push	r12
 16a:	df 92       	push	r13
 16c:	ef 92       	push	r14
 16e:	ff 92       	push	r15
 170:	cf 93       	push	r28
 172:	df 93       	push	r29
 174:	00 d0       	rcall	.+0      	;  0x176
 176:	00 d0       	rcall	.+0      	;  0x178
 178:	0f 92       	push	r0
 17a:	cd b7       	in	r28, 0x3d	; 61
 17c:	de b7       	in	r29, 0x3e	; 62
 17e:	80 91 00 01 	lds	r24, 0x0100	;  0x800100
 182:	8d 83       	std	Y+5, r24	; 0x05
 184:	c1 2c       	mov	r12, r1
 186:	80 e2       	ldi	r24, 0x20	; 32
 188:	d8 2e       	mov	r13, r24
 18a:	84 ef       	ldi	r24, 0xF4	; 244
 18c:	e8 2e       	mov	r14, r24
 18e:	f1 2c       	mov	r15, r1
 190:	d7 01       	movw	r26, r14
 192:	c6 01       	movw	r24, r12
 194:	0d 80       	ldd	r0, Y+5	; 0x05
 196:	04 c0       	rjmp	.+8      	;  0x1a0
 198:	b5 95       	asr	r27
 19a:	a7 95       	ror	r26
 19c:	97 95       	ror	r25
 19e:	87 95       	ror	r24
 1a0:	0a 94       	dec	r0
 1a2:	d2 f7       	brpl	.-12     	;  0x198
 1a4:	81 2c       	mov	r8, r1
 1a6:	20 e2       	ldi	r18, 0x20	; 32
 1a8:	92 2e       	mov	r9, r18
 1aa:	2c e1       	ldi	r18, 0x1C	; 28
 1ac:	a2 2e       	mov	r10, r18
 1ae:	b1 2c       	mov	r11, r1
 1b0:	bc 01       	movw	r22, r24
 1b2:	cd 01       	movw	r24, r26
 1b4:	a5 01       	movw	r20, r10
 1b6:	94 01       	movw	r18, r8
 1b8:	0e 94 49 01 	call	0x292	;  0x292
 1bc:	21 50       	subi	r18, 0x01	; 1
 1be:	31 09       	sbc	r19, r1
 1c0:	41 09       	sbc	r20, r1
 1c2:	51 09       	sbc	r21, r1
 1c4:	0d 80       	ldd	r0, Y+5	; 0x05
 1c6:	04 c0       	rjmp	.+8      	;  0x1d0
 1c8:	22 0f       	add	r18, r18
 1ca:	33 1f       	adc	r19, r19
 1cc:	44 1f       	adc	r20, r20
 1ce:	55 1f       	adc	r21, r21
 1d0:	0a 94       	dec	r0
 1d2:	d2 f7       	brpl	.-12     	;  0x1c8
 1d4:	83 2f       	mov	r24, r19
 1d6:	8f 70       	andi	r24, 0x0F	; 15
 1d8:	80 93 c5 00 	sts	0x00C5, r24	;  0x8000c5
 1dc:	90 91 00 01 	lds	r25, 0x0100	;  0x800100
 1e0:	9d 83       	std	Y+5, r25	; 0x05
 1e2:	d7 01       	movw	r26, r14
 1e4:	c6 01       	movw	r24, r12
 1e6:	0d 80       	ldd	r0, Y+5	; 0x05
 1e8:	04 c0       	rjmp	.+8      	;  0x1f2
 1ea:	b5 95       	asr	r27
 1ec:	a7 95       	ror	r26
 1ee:	97 95       	ror	r25
 1f0:	87 95       	ror	r24
 1f2:	0a 94       	dec	r0
 1f4:	d2 f7       	brpl	.-12     	;  0x1ea
 1f6:	bc 01       	movw	r22, r24
 1f8:	cd 01       	movw	r24, r26
 1fa:	a5 01       	movw	r20, r10
 1fc:	94 01       	movw	r18, r8
 1fe:	0e 94 49 01 	call	0x292	;  0x292
 202:	21 50       	subi	r18, 0x01	; 1
 204:	30 e0       	ldi	r19, 0x00	; 0
 206:	0d 80       	ldd	r0, Y+5	; 0x05
 208:	02 c0       	rjmp	.+4      	;  0x20e
 20a:	22 0f       	add	r18, r18
 20c:	33 1f       	adc	r19, r19
 20e:	0a 94       	dec	r0
 210:	e2 f7       	brpl	.-8      	;  0x20a
 212:	20 93 c4 00 	sts	0x00C4, r18	;  0x8000c4
 216:	0f 90       	pop	r0
 218:	0f 90       	pop	r0
 21a:	0f 90       	pop	r0
 21c:	0f 90       	pop	r0
 21e:	0f 90       	pop	r0
 220:	df 91       	pop	r29
 222:	cf 91       	pop	r28
 224:	ff 90       	pop	r15
 226:	ef 90       	pop	r14
 228:	df 90       	pop	r13
 22a:	cf 90       	pop	r12
 22c:	bf 90       	pop	r11
 22e:	af 90       	pop	r10
 230:	9f 90       	pop	r9
 232:	8f 90       	pop	r8
 234:	08 95       	ret
 236:	88 e0       	ldi	r24, 0x08	; 8
 238:	90 e0       	ldi	r25, 0x00	; 0
 23a:	0e 94 6b 00 	call	0xd6	;  0xd6
 23e:	f8 94       	cli
 240:	26 9a       	sbi	0x04, 6	; 4
 242:	10 92 80 00 	sts	0x0080, r1	;  0x800080
 246:	8d e0       	ldi	r24, 0x0D	; 13
 248:	80 93 81 00 	sts	0x0081, r24	;  0x800081
 24c:	80 91 6f 00 	lds	r24, 0x006F	;  0x80006f
 250:	82 60       	ori	r24, 0x02	; 2
 252:	80 93 6f 00 	sts	0x006F, r24	;  0x80006f
 256:	b1 9a       	sbi	0x16, 1	; 22
 258:	78 94       	sei
 25a:	85 ef       	ldi	r24, 0xF5	; 245
 25c:	80 93 64 00 	sts	0x0064, r24	;  0x800064
 260:	81 e0       	ldi	r24, 0x01	; 1
 262:	83 bf       	out	0x33, r24	; 51
 264:	0e 94 b0 00 	call	0x160	;  0x160
 268:	ff cf       	rjmp	.-2      	;  0x268
 26a:	aa 1b       	sub	r26, r26
 26c:	bb 1b       	sub	r27, r27
 26e:	51 e1       	ldi	r21, 0x11	; 17
 270:	07 c0       	rjmp	.+14     	;  0x280
 272:	aa 1f       	adc	r26, r26
 274:	bb 1f       	adc	r27, r27
 276:	a6 17       	cp	r26, r22
 278:	b7 07       	cpc	r27, r23
 27a:	10 f0       	brcs	.+4      	;  0x280
 27c:	a6 1b       	sub	r26, r22
 27e:	b7 0b       	sbc	r27, r23
 280:	88 1f       	adc	r24, r24
 282:	99 1f       	adc	r25, r25
 284:	5a 95       	dec	r21
 286:	a9 f7       	brne	.-22     	;  0x272
 288:	80 95       	com	r24
 28a:	90 95       	com	r25
 28c:	bc 01       	movw	r22, r24
 28e:	cd 01       	movw	r24, r26
 290:	08 95       	ret
 292:	05 2e       	mov	r0, r21
 294:	97 fb       	bst	r25, 7
 296:	1e f4       	brtc	.+6      	;  0x29e
 298:	00 94       	com	r0
 29a:	0e 94 60 01 	call	0x2c0	;  0x2c0
 29e:	57 fd       	sbrc	r21, 7
 2a0:	07 d0       	rcall	.+14     	;  0x2b0
 2a2:	0e 94 68 01 	call	0x2d0	;  0x2d0
 2a6:	07 fc       	sbrc	r0, 7
 2a8:	03 d0       	rcall	.+6      	;  0x2b0
 2aa:	4e f4       	brtc	.+18     	;  0x2be
 2ac:	0c 94 60 01 	jmp	0x2c0	;  0x2c0
 2b0:	50 95       	com	r21
 2b2:	40 95       	com	r20
 2b4:	30 95       	com	r19
 2b6:	21 95       	neg	r18
 2b8:	3f 4f       	sbci	r19, 0xFF	; 255
 2ba:	4f 4f       	sbci	r20, 0xFF	; 255
 2bc:	5f 4f       	sbci	r21, 0xFF	; 255
 2be:	08 95       	ret
 2c0:	90 95       	com	r25
 2c2:	80 95       	com	r24
 2c4:	70 95       	com	r23
 2c6:	61 95       	neg	r22
 2c8:	7f 4f       	sbci	r23, 0xFF	; 255
 2ca:	8f 4f       	sbci	r24, 0xFF	; 255
 2cc:	9f 4f       	sbci	r25, 0xFF	; 255
 2ce:	08 95       	ret
 2d0:	a1 e2       	ldi	r26, 0x21	; 33
 2d2:	1a 2e       	mov	r1, r26
 2d4:	aa 1b       	sub	r26, r26
 2d6:	bb 1b       	sub	r27, r27
 2d8:	fd 01       	movw	r30, r26
 2da:	0d c0       	rjmp	.+26     	;  0x2f6
 2dc:	aa 1f       	adc	r26, r26
 2de:	bb 1f       	adc	r27, r27
 2e0:	ee 1f       	adc	r30, r30
 2e2:	ff 1f       	adc	r31, r31
 2e4:	a2 17       	cp	r26, r18
 2e6:	b3 07       	cpc	r27, r19
 2e8:	e4 07       	cpc	r30, r20
 2ea:	f5 07       	cpc	r31, r21
 2ec:	20 f0       	brcs	.+8      	;  0x2f6
 2ee:	a2 1b       	sub	r26, r18
 2f0:	b3 0b       	sbc	r27, r19
 2f2:	e4 0b       	sbc	r30, r20
 2f4:	f5 0b       	sbc	r31, r21
 2f6:	66 1f       	adc	r22, r22
 2f8:	77 1f       	adc	r23, r23
 2fa:	88 1f       	adc	r24, r24
 2fc:	99 1f       	adc	r25, r25
 2fe:	1a 94       	dec	r1
 300:	69 f7       	brne	.-38     	;  0x2dc
 302:	60 95       	com	r22
 304:	70 95       	com	r23
 306:	80 95       	com	r24
 308:	90 95       	com	r25
 30a:	9b 01       	movw	r18, r22
 30c:	ac 01       	movw	r20, r24
 30e:	bd 01       	movw	r22, r26
 310:	cf 01       	movw	r24, r30
 312:	08 95       	ret
 314:	f8 94       	cli
 316:	ff cf       	rjmp	.-2      	;  0x316
