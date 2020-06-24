
./bin/main:     file format elf64-x86-64


Disassembly of section .interp:

00000000000002a8 <.interp>:
 2a8:	2f                   	(bad)  
 2a9:	6c                   	ins    BYTE PTR es:[rdi],dx
 2aa:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
 2b1:	2d 6c 69 6e 75       	sub    eax,0x756e696c
 2b6:	78 2d                	js     2e5 <_init-0xd1b>
 2b8:	78 38                	js     2f2 <_init-0xd0e>
 2ba:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
 2c0:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 2c1:	2e 32 00             	xor    al,BYTE PTR cs:[rax]

Disassembly of section .note.gnu.build-id:

00000000000002c4 <.note.gnu.build-id>:
 2c4:	04 00                	add    al,0x0
 2c6:	00 00                	add    BYTE PTR [rax],al
 2c8:	14 00                	adc    al,0x0
 2ca:	00 00                	add    BYTE PTR [rax],al
 2cc:	03 00                	add    eax,DWORD PTR [rax]
 2ce:	00 00                	add    BYTE PTR [rax],al
 2d0:	47                   	rex.RXB
 2d1:	4e 55                	rex.WRX push rbp
 2d3:	00 e8                	add    al,ch
 2d5:	38 5c 5c ee          	cmp    BYTE PTR [rsp+rbx*2-0x12],bl
 2d9:	32 2c d3             	xor    ch,BYTE PTR [rbx+rdx*8]
 2dc:	f6 89 34 94 d1 90 0a 	test   BYTE PTR [rcx-0x6f2e6bcc],0xa
 2e3:	f8                   	clc    
 2e4:	18 11                	sbb    BYTE PTR [rcx],dl
 2e6:	ea                   	(bad)  
 2e7:	64                   	fs

Disassembly of section .note.ABI-tag:

00000000000002e8 <.note.ABI-tag>:
 2e8:	04 00                	add    al,0x0
 2ea:	00 00                	add    BYTE PTR [rax],al
 2ec:	10 00                	adc    BYTE PTR [rax],al
 2ee:	00 00                	add    BYTE PTR [rax],al
 2f0:	01 00                	add    DWORD PTR [rax],eax
 2f2:	00 00                	add    BYTE PTR [rax],al
 2f4:	47                   	rex.RXB
 2f5:	4e 55                	rex.WRX push rbp
 2f7:	00 00                	add    BYTE PTR [rax],al
 2f9:	00 00                	add    BYTE PTR [rax],al
 2fb:	00 03                	add    BYTE PTR [rbx],al
 2fd:	00 00                	add    BYTE PTR [rax],al
 2ff:	00 02                	add    BYTE PTR [rdx],al
 301:	00 00                	add    BYTE PTR [rax],al
 303:	00 00                	add    BYTE PTR [rax],al
 305:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .gnu.hash:

0000000000000308 <.gnu.hash>:
 308:	01 00                	add    DWORD PTR [rax],eax
 30a:	00 00                	add    BYTE PTR [rax],al
 30c:	01 00                	add    DWORD PTR [rax],eax
 30e:	00 00                	add    BYTE PTR [rax],al
 310:	01 00                	add    DWORD PTR [rax],eax
	...

Disassembly of section .dynsym:

0000000000000328 <.dynsym>:
	...
 340:	c2 00 00             	ret    0x0
 343:	00 22                	add    BYTE PTR [rdx],ah
	...
 355:	00 00                	add    BYTE PTR [rax],al
 357:	00 b5 00 00 00 12    	add    BYTE PTR [rbp+0x12000000],dh
	...
 36d:	00 00                	add    BYTE PTR [rax],al
 36f:	00 a4 00 00 00 12 00 	add    BYTE PTR [rax+rax*1+0x120000],ah
	...
 386:	00 00                	add    BYTE PTR [rax],al
 388:	82                   	(bad)  
 389:	00 00                	add    BYTE PTR [rax],al
 38b:	00 12                	add    BYTE PTR [rdx],dl
	...
 39d:	00 00                	add    BYTE PTR [rax],al
 39f:	00 6d 00             	add    BYTE PTR [rbp+0x0],ch
 3a2:	00 00                	add    BYTE PTR [rax],al
 3a4:	12 00                	adc    al,BYTE PTR [rax]
	...
 3b6:	00 00                	add    BYTE PTR [rax],al
 3b8:	1f                   	(bad)  
 3b9:	00 00                	add    BYTE PTR [rax],al
 3bb:	00 20                	add    BYTE PTR [rax],ah
	...
 3cd:	00 00                	add    BYTE PTR [rax],al
 3cf:	00 d1                	add    cl,dl
 3d1:	00 00                	add    BYTE PTR [rax],al
 3d3:	00 12                	add    BYTE PTR [rdx],dl
	...
 3e5:	00 00                	add    BYTE PTR [rax],al
 3e7:	00 10                	add    BYTE PTR [rax],dl
 3e9:	00 00                	add    BYTE PTR [rax],al
 3eb:	00 20                	add    BYTE PTR [rax],ah
	...
 3fd:	00 00                	add    BYTE PTR [rax],al
 3ff:	00 3b                	add    BYTE PTR [rbx],bh
 401:	00 00                	add    BYTE PTR [rax],al
 403:	00 20                	add    BYTE PTR [rax],ah
	...
 415:	00 00                	add    BYTE PTR [rax],al
 417:	00 55 00             	add    BYTE PTR [rbp+0x0],dl
 41a:	00 00                	add    BYTE PTR [rax],al
 41c:	12 00                	adc    al,BYTE PTR [rax]
	...

Disassembly of section .dynstr:

0000000000000430 <.dynstr>:
 430:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
 434:	73 74                	jae    4aa <_init-0xb56>
 436:	64 63 2b             	movsxd ebp,DWORD PTR fs:[rbx]
 439:	2b 2e                	sub    ebp,DWORD PTR [rsi]
 43b:	73 6f                	jae    4ac <_init-0xb54>
 43d:	2e 36 00 5f 5f       	cs add BYTE PTR ss:[rdi+0x5f],bl
 442:	67 6d                	ins    DWORD PTR es:[edi],dx
 444:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 445:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 446:	5f                   	pop    rdi
 447:	73 74                	jae    4bd <_init-0xb43>
 449:	61                   	(bad)  
 44a:	72 74                	jb     4c0 <_init-0xb40>
 44c:	5f                   	pop    rdi
 44d:	5f                   	pop    rdi
 44e:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 451:	54                   	push   rsp
 452:	4d 5f                	rex.WRB pop r15
 454:	64 65 72 65          	fs gs jb 4bd <_init-0xb43>
 458:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 45f:	4d 
 460:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 462:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 463:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 464:	65 54                	gs push rsp
 466:	61                   	(bad)  
 467:	62                   	(bad)  
 468:	6c                   	ins    BYTE PTR es:[rdi],dx
 469:	65 00 5f 49          	add    BYTE PTR gs:[rdi+0x49],bl
 46d:	54                   	push   rsp
 46e:	4d 5f                	rex.WRB pop r15
 470:	72 65                	jb     4d7 <_init-0xb29>
 472:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 479:	4d 
 47a:	43 6c                	rex.XB ins BYTE PTR es:[rdi],dx
 47c:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 47d:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 47e:	65 54                	gs push rsp
 480:	61                   	(bad)  
 481:	62                   	(bad)  
 482:	6c                   	ins    BYTE PTR es:[rdi],dx
 483:	65 00 5f 5a          	add    BYTE PTR gs:[rdi+0x5a],bl
 487:	4e 53                	rex.WRX push rbx
 489:	74 38                	je     4c3 <_init-0xb3d>
 48b:	69 6f 73 5f 62 61 73 	imul   ebp,DWORD PTR [rdi+0x73],0x7361625f
 492:	65 34 49             	gs xor al,0x49
 495:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 496:	69 74 44 31 45 76 00 	imul   esi,DWORD PTR [rsp+rax*2+0x31],0x5f007645
 49d:	5f 
 49e:	5f                   	pop    rdi
 49f:	67 78 78             	addr32 js 51a <_init-0xae6>
 4a2:	5f                   	pop    rdi
 4a3:	70 65                	jo     50a <_init-0xaf6>
 4a5:	72 73                	jb     51a <_init-0xae6>
 4a7:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 4a8:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 4a9:	61                   	(bad)  
 4aa:	6c                   	ins    BYTE PTR es:[rdi],dx
 4ab:	69 74 79 5f 76 30 00 	imul   esi,DWORD PTR [rcx+rdi*2+0x5f],0x5f003076
 4b2:	5f 
 4b3:	5a                   	pop    rdx
 4b4:	4e 53                	rex.WRX push rbx
 4b6:	74 38                	je     4f0 <_init-0xb10>
 4b8:	69 6f 73 5f 62 61 73 	imul   ebp,DWORD PTR [rdi+0x73],0x7361625f
 4bf:	65 34 49             	gs xor al,0x49
 4c2:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 4c3:	69 74 43 31 45 76 00 	imul   esi,DWORD PTR [rbx+rax*2+0x31],0x6c007645
 4ca:	6c 
 4cb:	69 62 63 2e 73 6f 2e 	imul   esp,DWORD PTR [rdx+0x63],0x2e6f732e
 4d2:	36 00 5f 5f          	add    BYTE PTR ss:[rdi+0x5f],bl
 4d6:	73 74                	jae    54c <_init-0xab4>
 4d8:	61                   	(bad)  
 4d9:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
 4dc:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 4df:	5f                   	pop    rdi
 4e0:	66 61                	data16 (bad) 
 4e2:	69 6c 00 5f 5f 63 78 	imul   ebp,DWORD PTR [rax+rax*1+0x5f],0x6178635f
 4e9:	61 
 4ea:	5f                   	pop    rdi
 4eb:	61                   	(bad)  
 4ec:	74 65                	je     553 <_init-0xaad>
 4ee:	78 69                	js     559 <_init-0xaa7>
 4f0:	74 00                	je     4f2 <_init-0xb0e>
 4f2:	5f                   	pop    rdi
 4f3:	5f                   	pop    rdi
 4f4:	63 78 61             	movsxd edi,DWORD PTR [rax+0x61]
 4f7:	5f                   	pop    rdi
 4f8:	66 69 6e 61 6c 69    	imul   bp,WORD PTR [rsi+0x61],0x696c
 4fe:	7a 65                	jp     565 <_init-0xa9b>
 500:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 503:	6c                   	ins    BYTE PTR es:[rdi],dx
 504:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
 50b:	72 74                	jb     581 <_init-0xa7f>
 50d:	5f                   	pop    rdi
 50e:	6d                   	ins    DWORD PTR es:[rdi],dx
 50f:	61                   	(bad)  
 510:	69 6e 00 43 58 58 41 	imul   ebp,DWORD PTR [rsi+0x0],0x41585843
 517:	42                   	rex.X
 518:	49 5f                	rex.WB pop r15
 51a:	31 2e                	xor    DWORD PTR [rsi],ebp
 51c:	33 00                	xor    eax,DWORD PTR [rax]
 51e:	47                   	rex.RXB
 51f:	4c                   	rex.WR
 520:	49                   	rex.WB
 521:	42                   	rex.X
 522:	43 58                	rex.XB pop r8
 524:	58                   	pop    rax
 525:	5f                   	pop    rdi
 526:	33 2e                	xor    ebp,DWORD PTR [rsi]
 528:	34 00                	xor    al,0x0
 52a:	47                   	rex.RXB
 52b:	4c                   	rex.WR
 52c:	49                   	rex.WB
 52d:	42                   	rex.X
 52e:	43 5f                	rex.XB pop r15
 530:	32 2e                	xor    ch,BYTE PTR [rsi]
 532:	34 00                	xor    al,0x0
 534:	47                   	rex.RXB
 535:	4c                   	rex.WR
 536:	49                   	rex.WB
 537:	42                   	rex.X
 538:	43 5f                	rex.XB pop r15
 53a:	32 2e                	xor    ch,BYTE PTR [rsi]
 53c:	32 2e                	xor    ch,BYTE PTR [rsi]
 53e:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

0000000000000540 <.gnu.version>:
 540:	00 00                	add    BYTE PTR [rax],al
 542:	02 00                	add    al,BYTE PTR [rax]
 544:	02 00                	add    al,BYTE PTR [rax]
 546:	03 00                	add    eax,DWORD PTR [rax]
 548:	04 00                	add    al,0x0
 54a:	05 00 00 00 02       	add    eax,0x2000000
 54f:	00 00                	add    BYTE PTR [rax],al
 551:	00 00                	add    BYTE PTR [rax],al
 553:	00 04 00             	add    BYTE PTR [rax+rax*1],al

Disassembly of section .gnu.version_r:

0000000000000558 <.gnu.version_r>:
 558:	01 00                	add    DWORD PTR [rax],eax
 55a:	02 00                	add    al,BYTE PTR [rax]
 55c:	01 00                	add    DWORD PTR [rax],eax
 55e:	00 00                	add    BYTE PTR [rax],al
 560:	10 00                	adc    BYTE PTR [rax],al
 562:	00 00                	add    BYTE PTR [rax],al
 564:	30 00                	xor    BYTE PTR [rax],al
 566:	00 00                	add    BYTE PTR [rax],al
 568:	d3 af 6b 05 00 00    	shr    DWORD PTR [rdi+0x56b],cl
 56e:	05 00 e3 00 00       	add    eax,0xe300
 573:	00 10                	add    BYTE PTR [rax],dl
 575:	00 00                	add    BYTE PTR [rax],al
 577:	00 74 29 92          	add    BYTE PTR [rcx+rbp*1-0x6e],dh
 57b:	08 00                	or     BYTE PTR [rax],al
 57d:	00 04 00             	add    BYTE PTR [rax+rax*1],al
 580:	ee                   	out    dx,al
 581:	00 00                	add    BYTE PTR [rax],al
 583:	00 00                	add    BYTE PTR [rax],al
 585:	00 00                	add    BYTE PTR [rax],al
 587:	00 01                	add    BYTE PTR [rcx],al
 589:	00 02                	add    BYTE PTR [rdx],al
 58b:	00 9a 00 00 00 10    	add    BYTE PTR [rdx+0x10000000],bl
 591:	00 00                	add    BYTE PTR [rax],al
 593:	00 00                	add    BYTE PTR [rax],al
 595:	00 00                	add    BYTE PTR [rax],al
 597:	00 14 69             	add    BYTE PTR [rcx+rbp*2],dl
 59a:	69 0d 00 00 03 00 fa 	imul   ecx,DWORD PTR [rip+0x30000],0xfa        # 305a4 <_end+0x2c554>
 5a1:	00 00 00 
 5a4:	10 00                	adc    BYTE PTR [rax],al
 5a6:	00 00                	add    BYTE PTR [rax],al
 5a8:	75 1a                	jne    5c4 <_init-0xa3c>
 5aa:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
 5b0:	04 01                	add    al,0x1
 5b2:	00 00                	add    BYTE PTR [rax],al
 5b4:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

00000000000005b8 <.rela.dyn>:
 5b8:	c0 3d 00 00 00 00 00 	sar    BYTE PTR [rip+0x0],0x0        # 5bf <_init-0xa41>
 5bf:	00 08                	add    BYTE PTR [rax],cl
 5c1:	00 00                	add    BYTE PTR [rax],al
 5c3:	00 00                	add    BYTE PTR [rax],al
 5c5:	00 00                	add    BYTE PTR [rax],al
 5c7:	00 40 14             	add    BYTE PTR [rax+0x14],al
 5ca:	00 00                	add    BYTE PTR [rax],al
 5cc:	00 00                	add    BYTE PTR [rax],al
 5ce:	00 00                	add    BYTE PTR [rax],al
 5d0:	c8 3d 00 00          	enter  0x3d,0x0
 5d4:	00 00                	add    BYTE PTR [rax],al
 5d6:	00 00                	add    BYTE PTR [rax],al
 5d8:	08 00                	or     BYTE PTR [rax],al
 5da:	00 00                	add    BYTE PTR [rax],al
 5dc:	00 00                	add    BYTE PTR [rax],al
 5de:	00 00                	add    BYTE PTR [rax],al
 5e0:	00 13                	add    BYTE PTR [rbx],dl
 5e2:	00 00                	add    BYTE PTR [rax],al
 5e4:	00 00                	add    BYTE PTR [rax],al
 5e6:	00 00                	add    BYTE PTR [rax],al
 5e8:	d0 3d 00 00 00 00    	sar    BYTE PTR [rip+0x0],1        # 5ee <_init-0xa12>
 5ee:	00 00                	add    BYTE PTR [rax],al
 5f0:	08 00                	or     BYTE PTR [rax],al
 5f2:	00 00                	add    BYTE PTR [rax],al
 5f4:	00 00                	add    BYTE PTR [rax],al
 5f6:	00 00                	add    BYTE PTR [rax],al
 5f8:	30 13                	xor    BYTE PTR [rbx],dl
 5fa:	00 00                	add    BYTE PTR [rax],al
 5fc:	00 00                	add    BYTE PTR [rax],al
 5fe:	00 00                	add    BYTE PTR [rax],al
 600:	d8 3d 00 00 00 00    	fdivr  DWORD PTR [rip+0x0]        # 606 <_init-0x9fa>
 606:	00 00                	add    BYTE PTR [rax],al
 608:	08 00                	or     BYTE PTR [rax],al
 60a:	00 00                	add    BYTE PTR [rax],al
 60c:	00 00                	add    BYTE PTR [rax],al
 60e:	00 00                	add    BYTE PTR [rax],al
 610:	f0 13 00             	lock adc eax,DWORD PTR [rax]
 613:	00 00                	add    BYTE PTR [rax],al
 615:	00 00                	add    BYTE PTR [rax],al
 617:	00 38                	add    BYTE PTR [rax],bh
 619:	40 00 00             	add    BYTE PTR [rax],al
 61c:	00 00                	add    BYTE PTR [rax],al
 61e:	00 00                	add    BYTE PTR [rax],al
 620:	08 00                	or     BYTE PTR [rax],al
 622:	00 00                	add    BYTE PTR [rax],al
 624:	00 00                	add    BYTE PTR [rax],al
 626:	00 00                	add    BYTE PTR [rax],al
 628:	38 40 00             	cmp    BYTE PTR [rax+0x0],al
 62b:	00 00                	add    BYTE PTR [rax],al
 62d:	00 00                	add    BYTE PTR [rax],al
 62f:	00 d0                	add    al,dl
 631:	3f                   	(bad)  
 632:	00 00                	add    BYTE PTR [rax],al
 634:	00 00                	add    BYTE PTR [rax],al
 636:	00 00                	add    BYTE PTR [rax],al
 638:	06                   	(bad)  
 639:	00 00                	add    BYTE PTR [rax],al
 63b:	00 01                	add    BYTE PTR [rcx],al
	...
 645:	00 00                	add    BYTE PTR [rax],al
 647:	00 d8                	add    al,bl
 649:	3f                   	(bad)  
 64a:	00 00                	add    BYTE PTR [rax],al
 64c:	00 00                	add    BYTE PTR [rax],al
 64e:	00 00                	add    BYTE PTR [rax],al
 650:	06                   	(bad)  
 651:	00 00                	add    BYTE PTR [rax],al
 653:	00 06                	add    BYTE PTR [rsi],al
	...
 65d:	00 00                	add    BYTE PTR [rax],al
 65f:	00 e0                	add    al,ah
 661:	3f                   	(bad)  
 662:	00 00                	add    BYTE PTR [rax],al
 664:	00 00                	add    BYTE PTR [rax],al
 666:	00 00                	add    BYTE PTR [rax],al
 668:	06                   	(bad)  
 669:	00 00                	add    BYTE PTR [rax],al
 66b:	00 07                	add    BYTE PTR [rdi],al
	...
 675:	00 00                	add    BYTE PTR [rax],al
 677:	00 e8                	add    al,ch
 679:	3f                   	(bad)  
 67a:	00 00                	add    BYTE PTR [rax],al
 67c:	00 00                	add    BYTE PTR [rax],al
 67e:	00 00                	add    BYTE PTR [rax],al
 680:	06                   	(bad)  
 681:	00 00                	add    BYTE PTR [rax],al
 683:	00 08                	add    BYTE PTR [rax],cl
	...
 68d:	00 00                	add    BYTE PTR [rax],al
 68f:	00 f0                	add    al,dh
 691:	3f                   	(bad)  
 692:	00 00                	add    BYTE PTR [rax],al
 694:	00 00                	add    BYTE PTR [rax],al
 696:	00 00                	add    BYTE PTR [rax],al
 698:	06                   	(bad)  
 699:	00 00                	add    BYTE PTR [rax],al
 69b:	00 09                	add    BYTE PTR [rcx],cl
	...
 6a5:	00 00                	add    BYTE PTR [rax],al
 6a7:	00 f8                	add    al,bh
 6a9:	3f                   	(bad)  
 6aa:	00 00                	add    BYTE PTR [rax],al
 6ac:	00 00                	add    BYTE PTR [rax],al
 6ae:	00 00                	add    BYTE PTR [rax],al
 6b0:	06                   	(bad)  
 6b1:	00 00                	add    BYTE PTR [rax],al
 6b3:	00 0a                	add    BYTE PTR [rdx],cl
	...
 6bd:	00 00                	add    BYTE PTR [rax],al
 6bf:	00 40 40             	add    BYTE PTR [rax+0x40],al
 6c2:	00 00                	add    BYTE PTR [rax],al
 6c4:	00 00                	add    BYTE PTR [rax],al
 6c6:	00 00                	add    BYTE PTR [rax],al
 6c8:	01 00                	add    DWORD PTR [rax],eax
 6ca:	00 00                	add    BYTE PTR [rax],al
 6cc:	05 00 00 00 00       	add    eax,0x0
 6d1:	00 00                	add    BYTE PTR [rax],al
 6d3:	00 00                	add    BYTE PTR [rax],al
 6d5:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.plt:

00000000000006d8 <.rela.plt>:
 6d8:	18 40 00             	sbb    BYTE PTR [rax+0x0],al
 6db:	00 00                	add    BYTE PTR [rax],al
 6dd:	00 00                	add    BYTE PTR [rax],al
 6df:	00 07                	add    BYTE PTR [rdi],al
 6e1:	00 00                	add    BYTE PTR [rax],al
 6e3:	00 02                	add    BYTE PTR [rdx],al
	...
 6ed:	00 00                	add    BYTE PTR [rax],al
 6ef:	00 20                	add    BYTE PTR [rax],ah
 6f1:	40 00 00             	add    BYTE PTR [rax],al
 6f4:	00 00                	add    BYTE PTR [rax],al
 6f6:	00 00                	add    BYTE PTR [rax],al
 6f8:	07                   	(bad)  
 6f9:	00 00                	add    BYTE PTR [rax],al
 6fb:	00 03                	add    BYTE PTR [rbx],al
	...
 705:	00 00                	add    BYTE PTR [rax],al
 707:	00 28                	add    BYTE PTR [rax],ch
 709:	40 00 00             	add    BYTE PTR [rax],al
 70c:	00 00                	add    BYTE PTR [rax],al
 70e:	00 00                	add    BYTE PTR [rax],al
 710:	07                   	(bad)  
 711:	00 00                	add    BYTE PTR [rax],al
 713:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <__cxa_atexit@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 4018 <__cxa_atexit@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

0000000000001040 <__stack_chk_fail@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 4020 <__stack_chk_fail@GLIBC_2.4>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

0000000000001050 <_ZNSt8ios_base4InitC1Ev@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 4028 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

Disassembly of section .text:

0000000000001060 <main>:
    1060:	55                   	push   rbp
    1061:	41 ba 40 42 0f 00    	mov    r10d,0xf4240
    1067:	48 89 e5             	mov    rbp,rsp
    106a:	41 54                	push   r12
    106c:	49 bc 00 00 80 3f 00 	movabs r12,0x400000003f800000
    1073:	00 00 40 
    1076:	53                   	push   rbx
    1077:	48 bb 00 00 80 3f 00 	movabs rbx,0x3f8000003f800000
    107e:	00 80 3f 
    1081:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    1085:	48 81 ec 20 02 00 00 	sub    rsp,0x220
    108c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1093:	00 00 
    1095:	48 89 84 24 18 02 00 	mov    QWORD PTR [rsp+0x218],rax
    109c:	00 
    109d:	31 c0                	xor    eax,eax
    109f:	c5 7c 28 3d 79 0f 00 	vmovaps ymm15,YMMWORD PTR [rip+0xf79]        # 2020 <_IO_stdin_used+0x20>
    10a6:	00 
    10a7:	c5 7c 28 35 91 0f 00 	vmovaps ymm14,YMMWORD PTR [rip+0xf91]        # 2040 <_IO_stdin_used+0x40>
    10ae:	00 
    10af:	c5 7c 28 2d a9 0f 00 	vmovaps ymm13,YMMWORD PTR [rip+0xfa9]        # 2060 <_IO_stdin_used+0x60>
    10b6:	00 
    10b7:	c5 7c 28 25 c1 0f 00 	vmovaps ymm12,YMMWORD PTR [rip+0xfc1]        # 2080 <_IO_stdin_used+0x80>
    10be:	00 
    10bf:	c5 7c 28 1d d9 0f 00 	vmovaps ymm11,YMMWORD PTR [rip+0xfd9]        # 20a0 <_IO_stdin_used+0xa0>
    10c6:	00 
    10c7:	c5 7c 28 15 f1 0f 00 	vmovaps ymm10,YMMWORD PTR [rip+0xff1]        # 20c0 <_IO_stdin_used+0xc0>
    10ce:	00 
    10cf:	c5 7c 28 0d 09 10 00 	vmovaps ymm9,YMMWORD PTR [rip+0x1009]        # 20e0 <_IO_stdin_used+0xe0>
    10d6:	00 
    10d7:	c5 7c 28 05 21 10 00 	vmovaps ymm8,YMMWORD PTR [rip+0x1021]        # 2100 <_IO_stdin_used+0x100>
    10de:	00 
    10df:	c5 fc 28 3d 39 10 00 	vmovaps ymm7,YMMWORD PTR [rip+0x1039]        # 2120 <_IO_stdin_used+0x120>
    10e6:	00 
    10e7:	c5 fc 28 35 51 10 00 	vmovaps ymm6,YMMWORD PTR [rip+0x1051]        # 2140 <_IO_stdin_used+0x140>
    10ee:	00 
    10ef:	c5 fc 28 2d 69 10 00 	vmovaps ymm5,YMMWORD PTR [rip+0x1069]        # 2160 <_IO_stdin_used+0x160>
    10f6:	00 
    10f7:	c5 fc 28 25 81 10 00 	vmovaps ymm4,YMMWORD PTR [rip+0x1081]        # 2180 <_IO_stdin_used+0x180>
    10fe:	00 
    10ff:	c5 fc 28 1d 99 10 00 	vmovaps ymm3,YMMWORD PTR [rip+0x1099]        # 21a0 <_IO_stdin_used+0x1a0>
    1106:	00 
    1107:	c5 fc 28 15 b1 10 00 	vmovaps ymm2,YMMWORD PTR [rip+0x10b1]        # 21c0 <_IO_stdin_used+0x1c0>
    110e:	00 
    110f:	49 89 e1             	mov    r9,rsp
    1112:	c5 fc 28 05 c6 10 00 	vmovaps ymm0,YMMWORD PTR [rip+0x10c6]        # 21e0 <_IO_stdin_used+0x1e0>
    1119:	00 
    111a:	c5 fc 28 0d de 10 00 	vmovaps ymm1,YMMWORD PTR [rip+0x10de]        # 2200 <_IO_stdin_used+0x200>
    1121:	00 
    1122:	c5 7c 29 3c 24       	vmovaps YMMWORD PTR [rsp],ymm15
    1127:	c5 7c 29 74 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm14
    112d:	c5 7c 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm13
    1133:	c5 7c 29 64 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm12
    1139:	c5 7c 29 9c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm11
    1140:	00 00 
    1142:	c5 7c 29 94 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm10
    1149:	00 00 
    114b:	c5 7c 29 8c 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm9
    1152:	00 00 
    1154:	c5 7c 29 84 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm8
    115b:	00 00 
    115d:	c5 fc 29 bc 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm7
    1164:	00 00 
    1166:	c5 fc 29 b4 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm6
    116d:	00 00 
    116f:	c5 fc 29 ac 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm5
    1176:	00 00 
    1178:	c5 fc 29 a4 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm4
    117f:	00 00 
    1181:	c5 fc 29 9c 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm3
    1188:	00 00 
    118a:	c5 fc 29 94 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm2
    1191:	00 00 
    1193:	c5 fc 29 84 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm0
    119a:	00 00 
    119c:	c5 fc 29 8c 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm1
    11a3:	00 00 
    11a5:	4c 89 a4 24 00 02 00 	mov    QWORD PTR [rsp+0x200],r12
    11ac:	00 
    11ad:	48 89 9c 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rbx
    11b4:	00 
    11b5:	41 0f 18 09          	prefetcht0 BYTE PTR [r9]
    11b9:	41 0f 0d 09          	prefetchw BYTE PTR [r9]
    11bd:	31 d2                	xor    edx,edx
    11bf:	4c 89 c9             	mov    rcx,r9
    11c2:	4c 89 cf             	mov    rdi,r9
    11c5:	0f 1f 00             	nop    DWORD PTR [rax]
    11c8:	49 89 d0             	mov    r8,rdx
    11cb:	48 ff c2             	inc    rdx
    11ce:	48 89 c8             	mov    rax,rcx
    11d1:	48 89 d6             	mov    rsi,rdx
    11d4:	c4 a1 7a 10 44 80 2c 	vmovss xmm0,DWORD PTR [rax+r8*4+0x2c]
    11db:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
    11df:	c5 fa 5e 07          	vdivss xmm0,xmm0,DWORD PTR [rdi]
    11e3:	c5 f8 2f c1          	vcomiss xmm0,xmm1
    11e7:	0f 84 af 00 00 00    	je     129c <main+0x23c>
    11ed:	c5 fa 10 09          	vmovss xmm1,DWORD PTR [rcx]
    11f1:	c4 e2 79 ad 48 2c    	vfnmadd213ss xmm1,xmm0,DWORD PTR [rax+0x2c]
    11f7:	c5 fa 11 48 2c       	vmovss DWORD PTR [rax+0x2c],xmm1
    11fc:	c5 fa 10 49 04       	vmovss xmm1,DWORD PTR [rcx+0x4]
    1201:	c4 e2 79 ad 48 30    	vfnmadd213ss xmm1,xmm0,DWORD PTR [rax+0x30]
    1207:	c5 fa 11 48 30       	vmovss DWORD PTR [rax+0x30],xmm1
    120c:	c5 fa 10 49 08       	vmovss xmm1,DWORD PTR [rcx+0x8]
    1211:	c4 e2 79 ad 48 34    	vfnmadd213ss xmm1,xmm0,DWORD PTR [rax+0x34]
    1217:	c5 fa 11 48 34       	vmovss DWORD PTR [rax+0x34],xmm1
    121c:	c5 fa 10 49 0c       	vmovss xmm1,DWORD PTR [rcx+0xc]
    1221:	c4 e2 79 ad 48 38    	vfnmadd213ss xmm1,xmm0,DWORD PTR [rax+0x38]
    1227:	c5 fa 11 48 38       	vmovss DWORD PTR [rax+0x38],xmm1
    122c:	c5 fa 10 49 10       	vmovss xmm1,DWORD PTR [rcx+0x10]
    1231:	c4 e2 79 ad 48 3c    	vfnmadd213ss xmm1,xmm0,DWORD PTR [rax+0x3c]
    1237:	c5 fa 11 48 3c       	vmovss DWORD PTR [rax+0x3c],xmm1
    123c:	c5 fa 10 49 14       	vmovss xmm1,DWORD PTR [rcx+0x14]
    1241:	c4 e2 79 ad 48 40    	vfnmadd213ss xmm1,xmm0,DWORD PTR [rax+0x40]
    1247:	c5 fa 11 48 40       	vmovss DWORD PTR [rax+0x40],xmm1
    124c:	c5 fa 10 49 18       	vmovss xmm1,DWORD PTR [rcx+0x18]
    1251:	c4 e2 79 ad 48 44    	vfnmadd213ss xmm1,xmm0,DWORD PTR [rax+0x44]
    1257:	c5 fa 11 48 44       	vmovss DWORD PTR [rax+0x44],xmm1
    125c:	c5 fa 10 49 1c       	vmovss xmm1,DWORD PTR [rcx+0x1c]
    1261:	c4 e2 79 ad 48 48    	vfnmadd213ss xmm1,xmm0,DWORD PTR [rax+0x48]
    1267:	c5 fa 11 48 48       	vmovss DWORD PTR [rax+0x48],xmm1
    126c:	c5 fa 10 49 20       	vmovss xmm1,DWORD PTR [rcx+0x20]
    1271:	c4 e2 79 ad 48 4c    	vfnmadd213ss xmm1,xmm0,DWORD PTR [rax+0x4c]
    1277:	c5 fa 11 48 4c       	vmovss DWORD PTR [rax+0x4c],xmm1
    127c:	c5 fa 10 49 24       	vmovss xmm1,DWORD PTR [rcx+0x24]
    1281:	c4 e2 79 ad 48 50    	vfnmadd213ss xmm1,xmm0,DWORD PTR [rax+0x50]
    1287:	c5 fa 11 48 50       	vmovss DWORD PTR [rax+0x50],xmm1
    128c:	c5 fa 10 48 54       	vmovss xmm1,DWORD PTR [rax+0x54]
    1291:	c4 e2 71 9d 41 28    	vfnmadd132ss xmm0,xmm1,DWORD PTR [rcx+0x28]
    1297:	c5 fa 11 40 54       	vmovss DWORD PTR [rax+0x54],xmm0
    129c:	48 ff c6             	inc    rsi
    129f:	48 83 c0 2c          	add    rax,0x2c
    12a3:	48 83 fe 0c          	cmp    rsi,0xc
    12a7:	0f 85 27 ff ff ff    	jne    11d4 <main+0x174>
    12ad:	48 83 c1 2c          	add    rcx,0x2c
    12b1:	48 83 c7 30          	add    rdi,0x30
    12b5:	48 83 fa 0b          	cmp    rdx,0xb
    12b9:	0f 85 09 ff ff ff    	jne    11c8 <main+0x168>
    12bf:	41 ff ca             	dec    r10d
    12c2:	0f 85 4a fe ff ff    	jne    1112 <main+0xb2>
    12c8:	48 8b 84 24 18 02 00 	mov    rax,QWORD PTR [rsp+0x218]
    12cf:	00 
    12d0:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    12d7:	00 00 
    12d9:	75 0e                	jne    12e9 <main+0x289>
    12db:	31 c0                	xor    eax,eax
    12dd:	c5 f8 77             	vzeroupper 
    12e0:	48 8d 65 f0          	lea    rsp,[rbp-0x10]
    12e4:	5b                   	pop    rbx
    12e5:	41 5c                	pop    r12
    12e7:	5d                   	pop    rbp
    12e8:	c3                   	ret    
    12e9:	c5 f8 77             	vzeroupper 
    12ec:	e8 4f fd ff ff       	call   1040 <__stack_chk_fail@plt>
    12f1:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    12f8:	00 00 00 00 
    12fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001300 <_GLOBAL__sub_I_main>:
    1300:	48 83 ec 08          	sub    rsp,0x8
    1304:	48 8d 3d 3e 2d 00 00 	lea    rdi,[rip+0x2d3e]        # 4049 <_ZStL8__ioinit>
    130b:	e8 40 fd ff ff       	call   1050 <_ZNSt8ios_base4InitC1Ev@plt>
    1310:	48 8b 3d e1 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2ce1]        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1317:	48 8d 15 1a 2d 00 00 	lea    rdx,[rip+0x2d1a]        # 4038 <__dso_handle>
    131e:	48 8d 35 24 2d 00 00 	lea    rsi,[rip+0x2d24]        # 4049 <_ZStL8__ioinit>
    1325:	48 83 c4 08          	add    rsp,0x8
    1329:	e9 02 fd ff ff       	jmp    1030 <__cxa_atexit@plt>
    132e:	66 90                	xchg   ax,ax

0000000000001330 <set_fast_math>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	0f ae 5c 24 fc       	stmxcsr DWORD PTR [rsp-0x4]
    1339:	81 4c 24 fc 40 80 00 	or     DWORD PTR [rsp-0x4],0x8040
    1340:	00 
    1341:	0f ae 54 24 fc       	ldmxcsr DWORD PTR [rsp-0x4]
    1346:	c3                   	ret    
    1347:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    134e:	00 00 

0000000000001350 <_start>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	31 ed                	xor    ebp,ebp
    1356:	49 89 d1             	mov    r9,rdx
    1359:	5e                   	pop    rsi
    135a:	48 89 e2             	mov    rdx,rsp
    135d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1361:	50                   	push   rax
    1362:	54                   	push   rsp
    1363:	4c 8d 05 56 01 00 00 	lea    r8,[rip+0x156]        # 14c0 <__libc_csu_fini>
    136a:	48 8d 0d df 00 00 00 	lea    rcx,[rip+0xdf]        # 1450 <__libc_csu_init>
    1371:	48 8d 3d e8 fc ff ff 	lea    rdi,[rip+0xfffffffffffffce8]        # 1060 <main>
    1378:	ff 15 62 2c 00 00    	call   QWORD PTR [rip+0x2c62]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    137e:	f4                   	hlt    
    137f:	90                   	nop

0000000000001380 <deregister_tm_clones>:
    1380:	48 8d 3d c1 2c 00 00 	lea    rdi,[rip+0x2cc1]        # 4048 <__TMC_END__>
    1387:	48 8d 05 ba 2c 00 00 	lea    rax,[rip+0x2cba]        # 4048 <__TMC_END__>
    138e:	48 39 f8             	cmp    rax,rdi
    1391:	74 15                	je     13a8 <deregister_tm_clones+0x28>
    1393:	48 8b 05 3e 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c3e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    139a:	48 85 c0             	test   rax,rax
    139d:	74 09                	je     13a8 <deregister_tm_clones+0x28>
    139f:	ff e0                	jmp    rax
    13a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    13a8:	c3                   	ret    
    13a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000013b0 <register_tm_clones>:
    13b0:	48 8d 3d 91 2c 00 00 	lea    rdi,[rip+0x2c91]        # 4048 <__TMC_END__>
    13b7:	48 8d 35 8a 2c 00 00 	lea    rsi,[rip+0x2c8a]        # 4048 <__TMC_END__>
    13be:	48 29 fe             	sub    rsi,rdi
    13c1:	48 89 f0             	mov    rax,rsi
    13c4:	48 c1 ee 3f          	shr    rsi,0x3f
    13c8:	48 c1 f8 03          	sar    rax,0x3
    13cc:	48 01 c6             	add    rsi,rax
    13cf:	48 d1 fe             	sar    rsi,1
    13d2:	74 14                	je     13e8 <register_tm_clones+0x38>
    13d4:	48 8b 05 15 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c15]        # 3ff0 <_ITM_registerTMCloneTable>
    13db:	48 85 c0             	test   rax,rax
    13de:	74 08                	je     13e8 <register_tm_clones+0x38>
    13e0:	ff e0                	jmp    rax
    13e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    13e8:	c3                   	ret    
    13e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000013f0 <__do_global_dtors_aux>:
    13f0:	f3 0f 1e fa          	endbr64 
    13f4:	80 3d 4d 2c 00 00 00 	cmp    BYTE PTR [rip+0x2c4d],0x0        # 4048 <__TMC_END__>
    13fb:	75 33                	jne    1430 <__do_global_dtors_aux+0x40>
    13fd:	55                   	push   rbp
    13fe:	48 83 3d ca 2b 00 00 	cmp    QWORD PTR [rip+0x2bca],0x0        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    1405:	00 
    1406:	48 89 e5             	mov    rbp,rsp
    1409:	74 0d                	je     1418 <__do_global_dtors_aux+0x28>
    140b:	48 8b 3d 26 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c26]        # 4038 <__dso_handle>
    1412:	ff 15 b8 2b 00 00    	call   QWORD PTR [rip+0x2bb8]        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    1418:	e8 63 ff ff ff       	call   1380 <deregister_tm_clones>
    141d:	c6 05 24 2c 00 00 01 	mov    BYTE PTR [rip+0x2c24],0x1        # 4048 <__TMC_END__>
    1424:	5d                   	pop    rbp
    1425:	c3                   	ret    
    1426:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    142d:	00 00 00 
    1430:	c3                   	ret    
    1431:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    1438:	00 00 00 00 
    143c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001440 <frame_dummy>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	e9 67 ff ff ff       	jmp    13b0 <register_tm_clones>
    1449:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001450 <__libc_csu_init>:
    1450:	f3 0f 1e fa          	endbr64 
    1454:	41 57                	push   r15
    1456:	4c 8d 3d 63 29 00 00 	lea    r15,[rip+0x2963]        # 3dc0 <__frame_dummy_init_array_entry>
    145d:	41 56                	push   r14
    145f:	49 89 d6             	mov    r14,rdx
    1462:	41 55                	push   r13
    1464:	49 89 f5             	mov    r13,rsi
    1467:	41 54                	push   r12
    1469:	41 89 fc             	mov    r12d,edi
    146c:	55                   	push   rbp
    146d:	48 8d 2d 64 29 00 00 	lea    rbp,[rip+0x2964]        # 3dd8 <__do_global_dtors_aux_fini_array_entry>
    1474:	53                   	push   rbx
    1475:	4c 29 fd             	sub    rbp,r15
    1478:	48 83 ec 08          	sub    rsp,0x8
    147c:	e8 7f fb ff ff       	call   1000 <_init>
    1481:	48 c1 fd 03          	sar    rbp,0x3
    1485:	74 1f                	je     14a6 <__libc_csu_init+0x56>
    1487:	31 db                	xor    ebx,ebx
    1489:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1490:	4c 89 f2             	mov    rdx,r14
    1493:	4c 89 ee             	mov    rsi,r13
    1496:	44 89 e7             	mov    edi,r12d
    1499:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    149d:	48 83 c3 01          	add    rbx,0x1
    14a1:	48 39 dd             	cmp    rbp,rbx
    14a4:	75 ea                	jne    1490 <__libc_csu_init+0x40>
    14a6:	48 83 c4 08          	add    rsp,0x8
    14aa:	5b                   	pop    rbx
    14ab:	5d                   	pop    rbp
    14ac:	41 5c                	pop    r12
    14ae:	41 5d                	pop    r13
    14b0:	41 5e                	pop    r14
    14b2:	41 5f                	pop    r15
    14b4:	c3                   	ret    
    14b5:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    14bc:	00 00 00 00 

00000000000014c0 <__libc_csu_fini>:
    14c0:	f3 0f 1e fa          	endbr64 
    14c4:	c3                   	ret    

Disassembly of section .fini:

00000000000014c8 <_fini>:
    14c8:	f3 0f 1e fa          	endbr64 
    14cc:	48 83 ec 08          	sub    rsp,0x8
    14d0:	48 83 c4 08          	add    rsp,0x8
    14d4:	c3                   	ret    

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    DWORD PTR [rax],eax
    2002:	02 00                	add    al,BYTE PTR [rax]
	...
    2020:	00 00                	add    BYTE PTR [rax],al
    2022:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    2025:	00 80 3f 00 00 00    	add    BYTE PTR [rax+0x3f],al
    202b:	40 00 00             	add    BYTE PTR [rax],al
    202e:	40                   	rex
    202f:	40 00 00             	add    BYTE PTR [rax],al
    2032:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    2035:	00 80 3f 00 00 00    	add    BYTE PTR [rax+0x3f],al
    203b:	40 00 00             	add    BYTE PTR [rax],al
    203e:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    2041:	00 80 3f 00 00 00    	add    BYTE PTR [rax+0x3f],al
    2047:	40 00 00             	add    BYTE PTR [rax],al
    204a:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    204d:	00 80 40 00 00 00    	add    BYTE PTR [rax+0x40],al
    2053:	00 00                	add    BYTE PTR [rax],al
    2055:	00 80 40 00 00 00    	add    BYTE PTR [rax+0x40],al
    205b:	40 00 00             	add    BYTE PTR [rax],al
    205e:	80 40 00 00          	add    BYTE PTR [rax+0x0],0x0
    2062:	a0 41 00 00 60 41 00 	movabs al,ds:0xc000004160000041
    2069:	00 c0 
    206b:	41 00 00             	add    BYTE PTR [r8],al
    206e:	00 00                	add    BYTE PTR [rax],al
    2070:	00 00                	add    BYTE PTR [rax],al
    2072:	80 40 00 00          	add    BYTE PTR [rax+0x0],0x0
    2076:	00 00                	add    BYTE PTR [rax],al
    2078:	00 00                	add    BYTE PTR [rax],al
    207a:	00 40 00             	add    BYTE PTR [rax+0x0],al
    207d:	00 40 c0             	add    BYTE PTR [rax-0x40],al
    2080:	00 00                	add    BYTE PTR [rax],al
    2082:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    2085:	00 80 bf 00 00 00    	add    BYTE PTR [rax+0xbf],al
    208b:	40 00 00             	add    BYTE PTR [rax],al
    208e:	40 c0 00 00          	rex rol BYTE PTR [rax],0x0
    2092:	f8                   	clc    
    2093:	41 00 00             	add    BYTE PTR [r8],al
    2096:	90                   	nop
    2097:	42 00 00             	rex.X add BYTE PTR [rax],al
    209a:	40 c0 00 00          	rex rol BYTE PTR [rax],0x0
    209e:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    20a1:	00 40 c0             	add    BYTE PTR [rax-0x40],al
    20a4:	00 00                	add    BYTE PTR [rax],al
    20a6:	00 40 00             	add    BYTE PTR [rax+0x0],al
    20a9:	00 40 c0             	add    BYTE PTR [rax-0x40],al
    20ac:	00 00                	add    BYTE PTR [rax],al
    20ae:	80 40 00 00          	add    BYTE PTR [rax+0x0],0x0
    20b2:	00 40 00             	add    BYTE PTR [rax+0x0],al
    20b5:	00 8a 42 00 00 48    	add    BYTE PTR [rdx+0x48000042],cl
    20bb:	c2 00 00             	ret    0x0
    20be:	30 42 00             	xor    BYTE PTR [rdx+0x0],al
    20c1:	00 00                	add    BYTE PTR [rax],al
    20c3:	40 00 00             	add    BYTE PTR [rax],al
    20c6:	40 c0 00 00          	rex rol BYTE PTR [rax],0x0
    20ca:	80 40 00 00          	add    BYTE PTR [rax+0x0],0x0
    20ce:	2c 42                	sub    al,0x42
    20d0:	00 00                	add    BYTE PTR [rax],al
    20d2:	00 c0                	add    al,al
    20d4:	00 00                	add    BYTE PTR [rax],al
    20d6:	30 41 00             	xor    BYTE PTR [rcx+0x0],al
    20d9:	00 40 c0             	add    BYTE PTR [rax-0x40],al
    20dc:	00 00                	add    BYTE PTR [rax],al
    20de:	80 40 00 00          	add    BYTE PTR [rax+0x0],0x0
    20e2:	00 c0                	add    al,al
    20e4:	00 00                	add    BYTE PTR [rax],al
    20e6:	30 41 00             	xor    BYTE PTR [rcx+0x0],al
    20e9:	00 40 c0             	add    BYTE PTR [rax-0x40],al
    20ec:	00 00                	add    BYTE PTR [rax],al
    20ee:	00 c0                	add    al,al
    20f0:	00 c0                	add    al,al
    20f2:	63 44 00 00          	movsxd eax,DWORD PTR [rax+rax*1+0x0]
    20f6:	40 c0 00 00          	rex rol BYTE PTR [rax],0x0
    20fa:	30 41 00             	xor    BYTE PTR [rcx+0x0],al
    20fd:	00 a0 40 00 00 e0    	add    BYTE PTR [rax-0x1fffffc0],ah
    2103:	40 00 00             	add    BYTE PTR [rax],al
    2106:	10 41 00             	adc    BYTE PTR [rcx+0x0],al
    2109:	00 40 40             	add    BYTE PTR [rax+0x40],al
    210c:	00 00                	add    BYTE PTR [rax],al
    210e:	a0 40 00 00 e0 40 00 	movabs al,ds:0x10000040e0000040
    2115:	00 10 
    2117:	41 00 00             	add    BYTE PTR [r8],al
    211a:	a0 40 00 00 e0 40 00 	movabs al,ds:0x10000040e0000040
    2121:	00 10 
    2123:	41 00 00             	add    BYTE PTR [r8],al
    2126:	c2 42 00             	ret    0x42
    2129:	00 40 40             	add    BYTE PTR [rax+0x40],al
    212c:	00 00                	add    BYTE PTR [rax],al
    212e:	80 c0 00             	add    al,0x0
    2131:	00 00                	add    BYTE PTR [rax],al
    2133:	40 00 00             	add    BYTE PTR [rax],al
    2136:	80 40 00 00          	add    BYTE PTR [rax+0x0],0x0
    213a:	40                   	rex
    213b:	40 00 00             	add    BYTE PTR [rax],al
    213e:	80 c0 00             	add    al,0x0
    2141:	00 00                	add    BYTE PTR [rax],al
    2143:	40 00 00             	add    BYTE PTR [rax],al
    2146:	40                   	rex
    2147:	40 00 00             	add    BYTE PTR [rax],al
    214a:	80 c0 00             	add    al,0x0
    214d:	00 00                	add    BYTE PTR [rax],al
    214f:	40 00 00             	add    BYTE PTR [rax],al
    2152:	a8 42                	test   al,0x42
    2154:	00 00                	add    BYTE PTR [rax],al
    2156:	c0 40 00 00          	rol    BYTE PTR [rax+0x0],0x0
    215a:	a0 c0 00 00 c0 c0 00 	movabs al,ds:0x800000c0c00000c0
    2161:	00 80 
    2163:	bf 00 00 60 42       	mov    edi,0x42600000
    2168:	00 00                	add    BYTE PTR [rax],al
    216a:	a0 c0 00 00 c0 c0 00 	movabs al,ds:0x840000c0c00000c0
    2171:	00 84 
    2173:	42 00 00             	rex.X add BYTE PTR [rax],al
    2176:	a0 c0 00 00 ac 42 00 	movabs al,ds:0xaa000042ac0000c0
    217d:	00 aa 
    217f:	42 00 00             	rex.X add BYTE PTR [rax],al
    2182:	8a 42 00             	mov    al,BYTE PTR [rdx+0x0]
    2185:	00 e0                	add    al,ah
    2187:	c0 00 00             	rol    BYTE PTR [rax],0x0
    218a:	80 c0 00             	add    al,0x0
    218d:	00 c0                	add    al,al
    218f:	40 00 00             	add    BYTE PTR [rax],al
    2192:	a0 41 00 00 e0 c0 00 	movabs al,ds:0x800000c0e0000041
    2199:	00 80 
    219b:	c0 00 00             	rol    BYTE PTR [rax],0x0
    219e:	8a 42 00             	mov    al,BYTE PTR [rdx+0x0]
    21a1:	00 e0                	add    al,ah
    21a3:	c0 00 00             	rol    BYTE PTR [rax],0x0
    21a6:	80 c0 00             	add    al,0x0
    21a9:	00 e0                	add    al,ah
    21ab:	c0 00 00             	rol    BYTE PTR [rax],0x0
    21ae:	c0 c0 00             	rol    al,0x0
    21b1:	00 80 40 00 00 00    	add    BYTE PTR [rax+0x40],al
    21b7:	41 00 00             	add    BYTE PTR [r8],al
    21ba:	e0 c0                	loopne 217c <_IO_stdin_used+0x17c>
    21bc:	00 00                	add    BYTE PTR [rax],al
    21be:	c0 c0 00             	rol    al,0x0
    21c1:	00 80 40 00 00 00    	add    BYTE PTR [rax+0x40],al
    21c7:	41 00 00             	add    BYTE PTR [r8],al
    21ca:	c0 c0 00             	rol    al,0x0
    21cd:	00 80 40 00 00 00    	add    BYTE PTR [rax+0x40],al
    21d3:	41 00 00             	add    BYTE PTR [r8],al
    21d6:	80 40 00 00          	add    BYTE PTR [rax+0x0],0x0
    21da:	10 c1                	adc    cl,al
    21dc:	00 00                	add    BYTE PTR [rax],al
    21de:	20 c1                	and    cl,al
    21e0:	00 00                	add    BYTE PTR [rax],al
    21e2:	10 c1                	adc    cl,al
    21e4:	00 00                	add    BYTE PTR [rax],al
    21e6:	10 c1                	adc    cl,al
    21e8:	00 00                	add    BYTE PTR [rax],al
    21ea:	10 c1                	adc    cl,al
    21ec:	00 00                	add    BYTE PTR [rax],al
    21ee:	20 c1                	and    cl,al
    21f0:	00 00                	add    BYTE PTR [rax],al
    21f2:	10 c1                	adc    cl,al
    21f4:	00 00                	add    BYTE PTR [rax],al
    21f6:	10 c1                	adc    cl,al
    21f8:	00 00                	add    BYTE PTR [rax],al
    21fa:	20 c1                	and    cl,al
    21fc:	00 00                	add    BYTE PTR [rax],al
    21fe:	10 c1                	adc    cl,al
    2200:	00 00                	add    BYTE PTR [rax],al
    2202:	20 c1                	and    cl,al
    2204:	00 00                	add    BYTE PTR [rax],al
    2206:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    2209:	00 00                	add    BYTE PTR [rax],al
    220b:	40 00 00             	add    BYTE PTR [rax],al
    220e:	40                   	rex
    220f:	40 00 00             	add    BYTE PTR [rax],al
    2212:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    2215:	00 80 3f 00 00 00    	add    BYTE PTR [rax+0x3f],al
    221b:	40 00 00             	add    BYTE PTR [rax],al
    221e:	80                   	.byte 0x80
    221f:	3f                   	(bad)  

Disassembly of section .eh_frame_hdr:

0000000000002220 <__GNU_EH_FRAME_HDR>:
    2220:	01 1b                	add    DWORD PTR [rbx],ebx
    2222:	03 3b                	add    edi,DWORD PTR [rbx]
    2224:	44 00 00             	add    BYTE PTR [rax],r8b
    2227:	00 07                	add    BYTE PTR [rdi],al
    2229:	00 00                	add    BYTE PTR [rax],al
    222b:	00 00                	add    BYTE PTR [rax],al
    222d:	ee                   	out    dx,al
    222e:	ff                   	(bad)  
    222f:	ff                   	(bad)  
    2230:	78 00                	js     2232 <__GNU_EH_FRAME_HDR+0x12>
    2232:	00 00                	add    BYTE PTR [rax],al
    2234:	40 ee                	out    dx,al
    2236:	ff                   	(bad)  
    2237:	ff                   	(bad)  
    2238:	bc 00 00 00 e0       	mov    esp,0xe0000000
    223d:	f0 ff                	lock (bad) 
    223f:	ff e4                	jmp    rsp
    2241:	00 00                	add    BYTE PTR [rax],al
    2243:	00 10                	add    BYTE PTR [rax],dl
    2245:	f1                   	icebp  
    2246:	ff                   	(bad)  
    2247:	ff 60 01             	jmp    QWORD PTR [rax+0x1]
    224a:	00 00                	add    BYTE PTR [rax],al
    224c:	30 f1                	xor    cl,dh
    224e:	ff                   	(bad)  
    224f:	ff 60 00             	jmp    QWORD PTR [rax+0x0]
    2252:	00 00                	add    BYTE PTR [rax],al
    2254:	30 f2                	xor    dl,dh
    2256:	ff                   	(bad)  
    2257:	ff 00                	inc    DWORD PTR [rax]
    2259:	01 00                	add    DWORD PTR [rax],eax
    225b:	00 a0 f2 ff ff 48    	add    BYTE PTR [rax+0x48fffff2],ah
    2261:	01 00                	add    DWORD PTR [rax],eax
	...

Disassembly of section .eh_frame:

0000000000002268 <__FRAME_END__-0x12c>:
    2268:	14 00                	adc    al,0x0
    226a:	00 00                	add    BYTE PTR [rax],al
    226c:	00 00                	add    BYTE PTR [rax],al
    226e:	00 00                	add    BYTE PTR [rax],al
    2270:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
    2273:	00 01                	add    BYTE PTR [rcx],al
    2275:	78 10                	js     2287 <__GNU_EH_FRAME_HDR+0x67>
    2277:	01 1b                	add    DWORD PTR [rbx],ebx
    2279:	0c 07                	or     al,0x7
    227b:	08 90 01 00 00 14    	or     BYTE PTR [rax+0x14000001],dl
    2281:	00 00                	add    BYTE PTR [rax],al
    2283:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    2286:	00 00                	add    BYTE PTR [rax],al
    2288:	c8 f0 ff ff          	enter  0xfff0,0xff
    228c:	2f                   	(bad)  
    228d:	00 00                	add    BYTE PTR [rax],al
    228f:	00 00                	add    BYTE PTR [rax],al
    2291:	44 07                	rex.R (bad) 
    2293:	10 00                	adc    BYTE PTR [rax],al
    2295:	00 00                	add    BYTE PTR [rax],al
    2297:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
    229a:	00 00                	add    BYTE PTR [rax],al
    229c:	34 00                	xor    al,0x0
    229e:	00 00                	add    BYTE PTR [rax],al
    22a0:	80 ed ff             	sub    ch,0xff
    22a3:	ff 40 00             	inc    DWORD PTR [rax+0x0]
    22a6:	00 00                	add    BYTE PTR [rax],al
    22a8:	00 0e                	add    BYTE PTR [rsi],cl
    22aa:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
    22ad:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
    22b0:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
    22b3:	80 00 3f             	add    BYTE PTR [rax],0x3f
    22b6:	1a 3b                	sbb    bh,BYTE PTR [rbx]
    22b8:	2a 33                	sub    dh,BYTE PTR [rbx]
    22ba:	24 22                	and    al,0x22
    22bc:	00 00                	add    BYTE PTR [rax],al
    22be:	00 00                	add    BYTE PTR [rax],al
    22c0:	18 00                	sbb    BYTE PTR [rax],al
    22c2:	00 00                	add    BYTE PTR [rax],al
    22c4:	00 00                	add    BYTE PTR [rax],al
    22c6:	00 00                	add    BYTE PTR [rax],al
    22c8:	01 7a 50             	add    DWORD PTR [rdx+0x50],edi
    22cb:	52                   	push   rdx
    22cc:	00 01                	add    BYTE PTR [rcx],al
    22ce:	78 10                	js     22e0 <__GNU_EH_FRAME_HDR+0xc0>
    22d0:	06                   	(bad)  
    22d1:	9b                   	fwait
    22d2:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    22d3:	1d 00 00 1b 0c       	sbb    eax,0xc1b0000
    22d8:	07                   	(bad)  
    22d9:	08 90 01 24 00 00    	or     BYTE PTR [rax+0x2401],dl
    22df:	00 20                	add    BYTE PTR [rax],ah
    22e1:	00 00                	add    BYTE PTR [rax],al
    22e3:	00 7c ed ff          	add    BYTE PTR [rbp+rbp*8-0x1],bh
    22e7:	ff 91 02 00 00 00    	call   QWORD PTR [rcx+0x2]
    22ed:	41 0e                	rex.B (bad) 
    22ef:	10 86 02 49 0d 06    	adc    BYTE PTR [rsi+0x60d4902],al
    22f5:	42 8c 03             	rex.X mov WORD PTR [rbx],es
    22f8:	4b 83 04 03 71       	add    QWORD PTR [r11+r8*1],0x71
    22fd:	02 0a                	add    cl,BYTE PTR [rdx]
    22ff:	0c 07                	or     al,0x7
    2301:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    2304:	18 00                	sbb    BYTE PTR [rax],al
    2306:	00 00                	add    BYTE PTR [rax],al
    2308:	a0 00 00 00 f4 ef ff 	movabs al,ds:0x2effffeff4000000
    230f:	ff 2e 
    2311:	00 00                	add    BYTE PTR [rax],al
    2313:	00 00                	add    BYTE PTR [rax],al
    2315:	44 0e                	rex.R (bad) 
    2317:	10 65 0e             	adc    BYTE PTR [rbp+0xe],ah
    231a:	08 00                	or     BYTE PTR [rax],al
    231c:	00 00                	add    BYTE PTR [rax],al
    231e:	00 00                	add    BYTE PTR [rax],al
    2320:	44 00 00             	add    BYTE PTR [rax],r8b
    2323:	00 bc 00 00 00 28 f1 	add    BYTE PTR [rax+rax*1-0xed80000],bh
    232a:	ff                   	(bad)  
    232b:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
    232e:	00 00                	add    BYTE PTR [rax],al
    2330:	00 46 0e             	add    BYTE PTR [rsi+0xe],al
    2333:	10 8f 02 49 0e 18    	adc    BYTE PTR [rdi+0x180e4902],cl
    2339:	8e 03                	mov    es,WORD PTR [rbx]
    233b:	45 0e                	rex.RB (bad) 
    233d:	20 8d 04 45 0e 28    	and    BYTE PTR [rbp+0x280e4504],cl
    2343:	8c 05 44 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e44],es        # ffffffff8630318d <_end+0xffffffff862ff13d>
    2349:	06                   	(bad)  
    234a:	48 0e                	rex.W (bad) 
    234c:	38 83 07 47 0e 40    	cmp    BYTE PTR [rbx+0x400e4707],al
    2352:	6e                   	outs   dx,BYTE PTR ds:[rsi]
    2353:	0e                   	(bad)  
    2354:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
    2357:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
    235a:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
    235d:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
    2360:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
    2363:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
    2366:	08 00                	or     BYTE PTR [rax],al
    2368:	14 00                	adc    al,0x0
    236a:	00 00                	add    BYTE PTR [rax],al
    236c:	04 01                	add    al,0x1
    236e:	00 00                	add    BYTE PTR [rax],al
    2370:	50                   	push   rax
    2371:	f1                   	icebp  
    2372:	ff                   	(bad)  
    2373:	ff 05 00 00 00 00    	inc    DWORD PTR [rip+0x0]        # 2379 <__GNU_EH_FRAME_HDR+0x159>
    2379:	00 00                	add    BYTE PTR [rax],al
    237b:	00 00                	add    BYTE PTR [rax],al
    237d:	00 00                	add    BYTE PTR [rax],al
    237f:	00 10                	add    BYTE PTR [rax],dl
    2381:	00 00                	add    BYTE PTR [rax],al
    2383:	00 1c 01             	add    BYTE PTR [rcx+rax*1],bl
    2386:	00 00                	add    BYTE PTR [rax],al
    2388:	a8 ef                	test   al,0xef
    238a:	ff                   	(bad)  
    238b:	ff 17                	call   QWORD PTR [rdi]
    238d:	00 00                	add    BYTE PTR [rax],al
    238f:	00 00                	add    BYTE PTR [rax],al
    2391:	00 00                	add    BYTE PTR [rax],al
	...

0000000000002394 <__FRAME_END__>:
    2394:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000003dc0 <__frame_dummy_init_array_entry>:
    3dc0:	40 14 00             	adc    al,0x0
    3dc3:	00 00                	add    BYTE PTR [rax],al
    3dc5:	00 00                	add    BYTE PTR [rax],al
    3dc7:	00 00                	add    BYTE PTR [rax],al
    3dc9:	13 00                	adc    eax,DWORD PTR [rax]
    3dcb:	00 00                	add    BYTE PTR [rax],al
    3dcd:	00 00                	add    BYTE PTR [rax],al
    3dcf:	00 30                	add    BYTE PTR [rax],dh
    3dd1:	13 00                	adc    eax,DWORD PTR [rax]
    3dd3:	00 00                	add    BYTE PTR [rax],al
    3dd5:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000003dd8 <__do_global_dtors_aux_fini_array_entry>:
    3dd8:	f0 13 00             	lock adc eax,DWORD PTR [rax]
    3ddb:	00 00                	add    BYTE PTR [rax],al
    3ddd:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000003de0 <_DYNAMIC>:
    3de0:	01 00                	add    DWORD PTR [rax],eax
    3de2:	00 00                	add    BYTE PTR [rax],al
    3de4:	00 00                	add    BYTE PTR [rax],al
    3de6:	00 00                	add    BYTE PTR [rax],al
    3de8:	01 00                	add    DWORD PTR [rax],eax
    3dea:	00 00                	add    BYTE PTR [rax],al
    3dec:	00 00                	add    BYTE PTR [rax],al
    3dee:	00 00                	add    BYTE PTR [rax],al
    3df0:	01 00                	add    DWORD PTR [rax],eax
    3df2:	00 00                	add    BYTE PTR [rax],al
    3df4:	00 00                	add    BYTE PTR [rax],al
    3df6:	00 00                	add    BYTE PTR [rax],al
    3df8:	9a                   	(bad)  
    3df9:	00 00                	add    BYTE PTR [rax],al
    3dfb:	00 00                	add    BYTE PTR [rax],al
    3dfd:	00 00                	add    BYTE PTR [rax],al
    3dff:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
    3e02:	00 00                	add    BYTE PTR [rax],al
    3e04:	00 00                	add    BYTE PTR [rax],al
    3e06:	00 00                	add    BYTE PTR [rax],al
    3e08:	00 10                	add    BYTE PTR [rax],dl
    3e0a:	00 00                	add    BYTE PTR [rax],al
    3e0c:	00 00                	add    BYTE PTR [rax],al
    3e0e:	00 00                	add    BYTE PTR [rax],al
    3e10:	0d 00 00 00 00       	or     eax,0x0
    3e15:	00 00                	add    BYTE PTR [rax],al
    3e17:	00 c8                	add    al,cl
    3e19:	14 00                	adc    al,0x0
    3e1b:	00 00                	add    BYTE PTR [rax],al
    3e1d:	00 00                	add    BYTE PTR [rax],al
    3e1f:	00 19                	add    BYTE PTR [rcx],bl
    3e21:	00 00                	add    BYTE PTR [rax],al
    3e23:	00 00                	add    BYTE PTR [rax],al
    3e25:	00 00                	add    BYTE PTR [rax],al
    3e27:	00 c0                	add    al,al
    3e29:	3d 00 00 00 00       	cmp    eax,0x0
    3e2e:	00 00                	add    BYTE PTR [rax],al
    3e30:	1b 00                	sbb    eax,DWORD PTR [rax]
    3e32:	00 00                	add    BYTE PTR [rax],al
    3e34:	00 00                	add    BYTE PTR [rax],al
    3e36:	00 00                	add    BYTE PTR [rax],al
    3e38:	18 00                	sbb    BYTE PTR [rax],al
    3e3a:	00 00                	add    BYTE PTR [rax],al
    3e3c:	00 00                	add    BYTE PTR [rax],al
    3e3e:	00 00                	add    BYTE PTR [rax],al
    3e40:	1a 00                	sbb    al,BYTE PTR [rax]
    3e42:	00 00                	add    BYTE PTR [rax],al
    3e44:	00 00                	add    BYTE PTR [rax],al
    3e46:	00 00                	add    BYTE PTR [rax],al
    3e48:	d8 3d 00 00 00 00    	fdivr  DWORD PTR [rip+0x0]        # 3e4e <_DYNAMIC+0x6e>
    3e4e:	00 00                	add    BYTE PTR [rax],al
    3e50:	1c 00                	sbb    al,0x0
    3e52:	00 00                	add    BYTE PTR [rax],al
    3e54:	00 00                	add    BYTE PTR [rax],al
    3e56:	00 00                	add    BYTE PTR [rax],al
    3e58:	08 00                	or     BYTE PTR [rax],al
    3e5a:	00 00                	add    BYTE PTR [rax],al
    3e5c:	00 00                	add    BYTE PTR [rax],al
    3e5e:	00 00                	add    BYTE PTR [rax],al
    3e60:	f5                   	cmc    
    3e61:	fe                   	(bad)  
    3e62:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3e65:	00 00                	add    BYTE PTR [rax],al
    3e67:	00 08                	add    BYTE PTR [rax],cl
    3e69:	03 00                	add    eax,DWORD PTR [rax]
    3e6b:	00 00                	add    BYTE PTR [rax],al
    3e6d:	00 00                	add    BYTE PTR [rax],al
    3e6f:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 3e75 <_DYNAMIC+0x95>
    3e75:	00 00                	add    BYTE PTR [rax],al
    3e77:	00 30                	add    BYTE PTR [rax],dh
    3e79:	04 00                	add    al,0x0
    3e7b:	00 00                	add    BYTE PTR [rax],al
    3e7d:	00 00                	add    BYTE PTR [rax],al
    3e7f:	00 06                	add    BYTE PTR [rsi],al
    3e81:	00 00                	add    BYTE PTR [rax],al
    3e83:	00 00                	add    BYTE PTR [rax],al
    3e85:	00 00                	add    BYTE PTR [rax],al
    3e87:	00 28                	add    BYTE PTR [rax],ch
    3e89:	03 00                	add    eax,DWORD PTR [rax]
    3e8b:	00 00                	add    BYTE PTR [rax],al
    3e8d:	00 00                	add    BYTE PTR [rax],al
    3e8f:	00 0a                	add    BYTE PTR [rdx],cl
    3e91:	00 00                	add    BYTE PTR [rax],al
    3e93:	00 00                	add    BYTE PTR [rax],al
    3e95:	00 00                	add    BYTE PTR [rax],al
    3e97:	00 10                	add    BYTE PTR [rax],dl
    3e99:	01 00                	add    DWORD PTR [rax],eax
    3e9b:	00 00                	add    BYTE PTR [rax],al
    3e9d:	00 00                	add    BYTE PTR [rax],al
    3e9f:	00 0b                	add    BYTE PTR [rbx],cl
    3ea1:	00 00                	add    BYTE PTR [rax],al
    3ea3:	00 00                	add    BYTE PTR [rax],al
    3ea5:	00 00                	add    BYTE PTR [rax],al
    3ea7:	00 18                	add    BYTE PTR [rax],bl
    3ea9:	00 00                	add    BYTE PTR [rax],al
    3eab:	00 00                	add    BYTE PTR [rax],al
    3ead:	00 00                	add    BYTE PTR [rax],al
    3eaf:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 3eb5 <_DYNAMIC+0xd5>
	...
    3ebd:	00 00                	add    BYTE PTR [rax],al
    3ebf:	00 03                	add    BYTE PTR [rbx],al
	...
    3ec9:	40 00 00             	add    BYTE PTR [rax],al
    3ecc:	00 00                	add    BYTE PTR [rax],al
    3ece:	00 00                	add    BYTE PTR [rax],al
    3ed0:	02 00                	add    al,BYTE PTR [rax]
    3ed2:	00 00                	add    BYTE PTR [rax],al
    3ed4:	00 00                	add    BYTE PTR [rax],al
    3ed6:	00 00                	add    BYTE PTR [rax],al
    3ed8:	48 00 00             	rex.W add BYTE PTR [rax],al
    3edb:	00 00                	add    BYTE PTR [rax],al
    3edd:	00 00                	add    BYTE PTR [rax],al
    3edf:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
    3ee2:	00 00                	add    BYTE PTR [rax],al
    3ee4:	00 00                	add    BYTE PTR [rax],al
    3ee6:	00 00                	add    BYTE PTR [rax],al
    3ee8:	07                   	(bad)  
    3ee9:	00 00                	add    BYTE PTR [rax],al
    3eeb:	00 00                	add    BYTE PTR [rax],al
    3eed:	00 00                	add    BYTE PTR [rax],al
    3eef:	00 17                	add    BYTE PTR [rdi],dl
    3ef1:	00 00                	add    BYTE PTR [rax],al
    3ef3:	00 00                	add    BYTE PTR [rax],al
    3ef5:	00 00                	add    BYTE PTR [rax],al
    3ef7:	00 d8                	add    al,bl
    3ef9:	06                   	(bad)  
    3efa:	00 00                	add    BYTE PTR [rax],al
    3efc:	00 00                	add    BYTE PTR [rax],al
    3efe:	00 00                	add    BYTE PTR [rax],al
    3f00:	07                   	(bad)  
    3f01:	00 00                	add    BYTE PTR [rax],al
    3f03:	00 00                	add    BYTE PTR [rax],al
    3f05:	00 00                	add    BYTE PTR [rax],al
    3f07:	00 b8 05 00 00 00    	add    BYTE PTR [rax+0x5],bh
    3f0d:	00 00                	add    BYTE PTR [rax],al
    3f0f:	00 08                	add    BYTE PTR [rax],cl
    3f11:	00 00                	add    BYTE PTR [rax],al
    3f13:	00 00                	add    BYTE PTR [rax],al
    3f15:	00 00                	add    BYTE PTR [rax],al
    3f17:	00 20                	add    BYTE PTR [rax],ah
    3f19:	01 00                	add    DWORD PTR [rax],eax
    3f1b:	00 00                	add    BYTE PTR [rax],al
    3f1d:	00 00                	add    BYTE PTR [rax],al
    3f1f:	00 09                	add    BYTE PTR [rcx],cl
    3f21:	00 00                	add    BYTE PTR [rax],al
    3f23:	00 00                	add    BYTE PTR [rax],al
    3f25:	00 00                	add    BYTE PTR [rax],al
    3f27:	00 18                	add    BYTE PTR [rax],bl
    3f29:	00 00                	add    BYTE PTR [rax],al
    3f2b:	00 00                	add    BYTE PTR [rax],al
    3f2d:	00 00                	add    BYTE PTR [rax],al
    3f2f:	00 fb                	add    bl,bh
    3f31:	ff                   	(bad)  
    3f32:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f35:	00 00                	add    BYTE PTR [rax],al
    3f37:	00 00                	add    BYTE PTR [rax],al
    3f39:	00 00                	add    BYTE PTR [rax],al
    3f3b:	08 00                	or     BYTE PTR [rax],al
    3f3d:	00 00                	add    BYTE PTR [rax],al
    3f3f:	00 fe                	add    dh,bh
    3f41:	ff                   	(bad)  
    3f42:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f45:	00 00                	add    BYTE PTR [rax],al
    3f47:	00 58 05             	add    BYTE PTR [rax+0x5],bl
    3f4a:	00 00                	add    BYTE PTR [rax],al
    3f4c:	00 00                	add    BYTE PTR [rax],al
    3f4e:	00 00                	add    BYTE PTR [rax],al
    3f50:	ff                   	(bad)  
    3f51:	ff                   	(bad)  
    3f52:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f55:	00 00                	add    BYTE PTR [rax],al
    3f57:	00 02                	add    BYTE PTR [rdx],al
    3f59:	00 00                	add    BYTE PTR [rax],al
    3f5b:	00 00                	add    BYTE PTR [rax],al
    3f5d:	00 00                	add    BYTE PTR [rax],al
    3f5f:	00 f0                	add    al,dh
    3f61:	ff                   	(bad)  
    3f62:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f65:	00 00                	add    BYTE PTR [rax],al
    3f67:	00 40 05             	add    BYTE PTR [rax+0x5],al
    3f6a:	00 00                	add    BYTE PTR [rax],al
    3f6c:	00 00                	add    BYTE PTR [rax],al
    3f6e:	00 00                	add    BYTE PTR [rax],al
    3f70:	f9                   	stc    
    3f71:	ff                   	(bad)  
    3f72:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f75:	00 00                	add    BYTE PTR [rax],al
    3f77:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 3f7d <_DYNAMIC+0x19d>
	...

Disassembly of section .got:

0000000000003fd0 <.got>:
	...

Disassembly of section .got.plt:

0000000000004000 <_GLOBAL_OFFSET_TABLE_>:
    4000:	e0 3d                	loopne 403f <__dso_handle+0x7>
	...
    4016:	00 00                	add    BYTE PTR [rax],al
    4018:	36 10 00             	adc    BYTE PTR ss:[rax],al
    401b:	00 00                	add    BYTE PTR [rax],al
    401d:	00 00                	add    BYTE PTR [rax],al
    401f:	00 46 10             	add    BYTE PTR [rsi+0x10],al
    4022:	00 00                	add    BYTE PTR [rax],al
    4024:	00 00                	add    BYTE PTR [rax],al
    4026:	00 00                	add    BYTE PTR [rax],al
    4028:	56                   	push   rsi
    4029:	10 00                	adc    BYTE PTR [rax],al
    402b:	00 00                	add    BYTE PTR [rax],al
    402d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .data:

0000000000004030 <__data_start>:
	...

0000000000004038 <__dso_handle>:
    4038:	38 40 00             	cmp    BYTE PTR [rax+0x0],al
    403b:	00 00                	add    BYTE PTR [rax],al
    403d:	00 00                	add    BYTE PTR [rax],al
	...

0000000000004040 <DW.ref.__gxx_personality_v0>:
	...

Disassembly of section .bss:

0000000000004048 <completed.0>:
	...

0000000000004049 <_ZStL8__ioinit>:
    4049:	00 00                	add    BYTE PTR [rax],al
    404b:	00 00                	add    BYTE PTR [rax],al
    404d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 47 4e             	sub    BYTE PTR [rdi+0x4e],al
   8:	55                   	push   rbp
   9:	29 20                	sub    DWORD PTR [rax],esp
   b:	31 30                	xor    DWORD PTR [rax],esi
   d:	2e 31 2e             	xor    DWORD PTR cs:[rsi],ebp
  10:	30 00                	xor    BYTE PTR [rax],al

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    al,0x0
   2:	00 00                	add    BYTE PTR [rax],al
   4:	02 00                	add    al,BYTE PTR [rax]
   6:	00 00                	add    BYTE PTR [rax],al
   8:	00 00                	add    BYTE PTR [rax],al
   a:	08 00                	or     BYTE PTR [rax],al
   c:	00 00                	add    BYTE PTR [rax],al
   e:	00 00                	add    BYTE PTR [rax],al
  10:	30 13                	xor    BYTE PTR [rbx],dl
  12:	00 00                	add    BYTE PTR [rax],al
  14:	00 00                	add    BYTE PTR [rax],al
  16:	00 00                	add    BYTE PTR [rax],al
  18:	17                   	(bad)  
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	60                   	(bad)  
   1:	00 00                	add    BYTE PTR [rax],al
   3:	00 04 00             	add    BYTE PTR [rax+rax*1],al
   6:	00 00                	add    BYTE PTR [rax],al
   8:	00 00                	add    BYTE PTR [rax],al
   a:	08 01                	or     BYTE PTR [rcx],al
   c:	89 00                	mov    DWORD PTR [rax],eax
   e:	00 00                	add    BYTE PTR [rax],al
  10:	0c 13                	or     al,0x13
  12:	00 00                	add    BYTE PTR [rax],al
  14:	00 47 00             	add    BYTE PTR [rdi+0x0],al
	...
  27:	00 00                	add    BYTE PTR [rax],al
  29:	02 7b 00             	add    bh,BYTE PTR [rbx+0x0]
  2c:	00 00                	add    BYTE PTR [rax],al
  2e:	01 53 01             	add    DWORD PTR [rbx+0x1],edx
  31:	30 13                	xor    BYTE PTR [rbx],dl
  33:	00 00                	add    BYTE PTR [rax],al
  35:	00 00                	add    BYTE PTR [rax],al
  37:	00 00                	add    BYTE PTR [rax],al
  39:	17                   	(bad)  
  3a:	00 00                	add    BYTE PTR [rax],al
  3c:	00 00                	add    BYTE PTR [rax],al
  3e:	00 00                	add    BYTE PTR [rax],al
  40:	00 01                	add    BYTE PTR [rcx],al
  42:	9c                   	pushf  
  43:	5c                   	pop    rsp
  44:	00 00                	add    BYTE PTR [rax],al
  46:	00 03                	add    BYTE PTR [rbx],al
  48:	00 00                	add    BYTE PTR [rax],al
  4a:	00 00                	add    BYTE PTR [rax],al
  4c:	01 5e 10             	add    DWORD PTR [rsi+0x10],ebx
  4f:	5c                   	pop    rsp
  50:	00 00                	add    BYTE PTR [rax],al
  52:	00 06                	add    BYTE PTR [rsi],al
	...
  5c:	04 04                	add    al,0x4
  5e:	07                   	(bad)  
  5f:	06                   	(bad)  
  60:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    DWORD PTR [rcx],edx
   2:	01 25 0e 13 0b 03    	add    DWORD PTR [rip+0x30b130e],esp        # 30b1316 <_end+0x30ad2c6>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    ecx,DWORD PTR [rsi]
   b:	55                   	push   rbp
   c:	17                   	(bad)  
   d:	11 01                	adc    DWORD PTR [rcx],eax
   f:	10 17                	adc    BYTE PTR [rdi],dl
  11:	00 00                	add    BYTE PTR [rax],al
  13:	02 2e                	add    ch,BYTE PTR [rsi]
  15:	01 03                	add    DWORD PTR [rbx],eax
  17:	0e                   	(bad)  
  18:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  1a:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  1c:	39 0b                	cmp    DWORD PTR [rbx],ecx
  1e:	27                   	(bad)  
  1f:	19 11                	sbb    DWORD PTR [rcx],edx
  21:	01 12                	add    DWORD PTR [rdx],edx
  23:	07                   	(bad)  
  24:	40 18 97 42 19 01 13 	sbb    BYTE PTR [rdi+0x13011942],dl
  2b:	00 00                	add    BYTE PTR [rax],al
  2d:	03 34 00             	add    esi,DWORD PTR [rax+rax*1]
  30:	03 0e                	add    ecx,DWORD PTR [rsi]
  32:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  34:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  36:	39 0b                	cmp    DWORD PTR [rbx],ecx
  38:	49 13 02             	adc    rax,QWORD PTR [r10]
  3b:	17                   	(bad)  
  3c:	b7 42                	mov    bh,0x42
  3e:	17                   	(bad)  
  3f:	00 00                	add    BYTE PTR [rax],al
  41:	04 24                	add    al,0x24
  43:	00 0b                	add    BYTE PTR [rbx],cl
  45:	0b 3e                	or     edi,DWORD PTR [rsi]
  47:	0b 03                	or     eax,DWORD PTR [rbx]
  49:	0e                   	(bad)  
  4a:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	79 00                	jns    2 <_init-0xffe>
   2:	00 00                	add    BYTE PTR [rax],al
   4:	03 00                	add    eax,DWORD PTR [rax]
   6:	4a 00 00             	rex.WX add BYTE PTR [rax],al
   9:	00 01                	add    BYTE PTR [rcx],al
   b:	01 fb                	add    ebx,edi
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     eax,0x1010100
  13:	01 00                	add    DWORD PTR [rax],eax
  15:	00 00                	add    BYTE PTR [rax],al
  17:	01 00                	add    DWORD PTR [rax],eax
  19:	00 01                	add    BYTE PTR [rcx],al
  1b:	2f                   	(bad)  
  1c:	62                   	(bad)  
  1d:	75 69                	jne    88 <_init-0xf78>
  1f:	6c                   	ins    BYTE PTR es:[rdi],dx
  20:	64 2f                	fs (bad) 
  22:	67 63 63 2f          	movsxd esp,DWORD PTR [ebx+0x2f]
  26:	73 72                	jae    9a <_init-0xf66>
  28:	63 2f                	movsxd ebp,DWORD PTR [rdi]
  2a:	67 63 63 2f          	movsxd esp,DWORD PTR [ebx+0x2f]
  2e:	6c                   	ins    BYTE PTR es:[rdi],dx
  2f:	69 62 67 63 63 2f 63 	imul   esp,DWORD PTR [rdx+0x67],0x632f6363
  36:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  37:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  38:	66 69 67 2f 69 33    	imul   sp,WORD PTR [rdi+0x2f],0x3369
  3e:	38 36                	cmp    BYTE PTR [rsi],dh
  40:	00 00                	add    BYTE PTR [rax],al
  42:	63 72 74             	movsxd esi,DWORD PTR [rdx+0x74]
  45:	66 61                	data16 (bad) 
  47:	73 74                	jae    bd <_init-0xf43>
  49:	6d                   	ins    DWORD PTR es:[rdi],dx
  4a:	61                   	(bad)  
  4b:	74 68                	je     b5 <_init-0xf4b>
  4d:	2e 63 00             	movsxd eax,DWORD PTR cs:[rax]
  50:	01 00                	add    DWORD PTR [rax],eax
  52:	00 00                	add    BYTE PTR [rax],al
  54:	05 01 00 09 02       	add    eax,0x2090001
  59:	30 13                	xor    BYTE PTR [rbx],dl
  5b:	00 00                	add    BYTE PTR [rax],al
  5d:	00 00                	add    BYTE PTR [rax],al
  5f:	00 00                	add    BYTE PTR [rax],al
  61:	03 d3                	add    edx,ebx
  63:	00 01                	add    BYTE PTR [rcx],al
  65:	05 03 03 0a 4a       	add    eax,0x4a0a0303
  6a:	05 18 06 01 05       	add    eax,0x5010618
  6f:	03 06                	add    eax,DWORD PTR [rsi]
  71:	59                   	pop    rcx
  72:	13 06                	adc    eax,DWORD PTR [rsi]
  74:	82                   	(bad)  
  75:	05 01 5a 02 01       	add    eax,0x1025a01
  7a:	00 01                	add    BYTE PTR [rcx],al
  7c:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6d                   	ins    DWORD PTR es:[rdi],dx
   1:	78 63                	js     66 <_init-0xf9a>
   3:	73 72                	jae    77 <_init-0xf89>
   5:	00 75 6e             	add    BYTE PTR [rbp+0x6e],dh
   8:	73 69                	jae    73 <_init-0xf8d>
   a:	67 6e                	outs   dx,BYTE PTR ds:[esi]
   c:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
  11:	74 00                	je     13 <_init-0xfed>
  13:	2f                   	(bad)  
  14:	62                   	(bad)  
  15:	75 69                	jne    80 <_init-0xf80>
  17:	6c                   	ins    BYTE PTR es:[rdi],dx
  18:	64 2f                	fs (bad) 
  1a:	67 63 63 2f          	movsxd esp,DWORD PTR [ebx+0x2f]
  1e:	73 72                	jae    92 <_init-0xf6e>
  20:	63 2f                	movsxd ebp,DWORD PTR [rdi]
  22:	67 63 63 2f          	movsxd esp,DWORD PTR [ebx+0x2f]
  26:	6c                   	ins    BYTE PTR es:[rdi],dx
  27:	69 62 67 63 63 2f 63 	imul   esp,DWORD PTR [rdx+0x67],0x632f6363
  2e:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  2f:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  30:	66 69 67 2f 69 33    	imul   sp,WORD PTR [rdi+0x2f],0x3369
  36:	38 36                	cmp    BYTE PTR [rsi],dh
  38:	2f                   	(bad)  
  39:	63 72 74             	movsxd esi,DWORD PTR [rdx+0x74]
  3c:	66 61                	data16 (bad) 
  3e:	73 74                	jae    b4 <_init-0xf4c>
  40:	6d                   	ins    DWORD PTR es:[rdi],dx
  41:	61                   	(bad)  
  42:	74 68                	je     ac <_init-0xf54>
  44:	2e 63 00             	movsxd eax,DWORD PTR cs:[rax]
  47:	2f                   	(bad)  
  48:	62                   	(bad)  
  49:	75 69                	jne    b4 <_init-0xf4c>
  4b:	6c                   	ins    BYTE PTR es:[rdi],dx
  4c:	64 2f                	fs (bad) 
  4e:	67 63 63 2f          	movsxd esp,DWORD PTR [ebx+0x2f]
  52:	73 72                	jae    c6 <_init-0xf3a>
  54:	63 2f                	movsxd ebp,DWORD PTR [rdi]
  56:	67 63 63 2d          	movsxd esp,DWORD PTR [ebx+0x2d]
  5a:	62                   	(bad)  
  5b:	75 69                	jne    c6 <_init-0xf3a>
  5d:	6c                   	ins    BYTE PTR es:[rdi],dx
  5e:	64 2f                	fs (bad) 
  60:	78 38                	js     9a <_init-0xf66>
  62:	36 5f                	ss pop rdi
  64:	36 34 2d             	ss xor al,0x2d
  67:	70 63                	jo     cc <_init-0xf34>
  69:	2d 6c 69 6e 75       	sub    eax,0x756e696c
  6e:	78 2d                	js     9d <_init-0xf63>
  70:	67 6e                	outs   dx,BYTE PTR ds:[esi]
  72:	75 2f                	jne    a3 <_init-0xf5d>
  74:	6c                   	ins    BYTE PTR es:[rdi],dx
  75:	69 62 67 63 63 00 73 	imul   esp,DWORD PTR [rdx+0x67],0x73006363
  7c:	65 74 5f             	gs je  de <_init-0xf22>
  7f:	66 61                	data16 (bad) 
  81:	73 74                	jae    f7 <_init-0xf09>
  83:	5f                   	pop    rdi
  84:	6d                   	ins    DWORD PTR es:[rdi],dx
  85:	61                   	(bad)  
  86:	74 68                	je     f0 <_init-0xf10>
  88:	00 47 4e             	add    BYTE PTR [rdi+0x4e],al
  8b:	55                   	push   rbp
  8c:	20 43 31             	and    BYTE PTR [rbx+0x31],al
  8f:	37                   	(bad)  
  90:	20 31                	and    BYTE PTR [rcx],dh
  92:	30 2e                	xor    BYTE PTR [rsi],ch
  94:	31 2e                	xor    DWORD PTR [rsi],ebp
  96:	30 20                	xor    BYTE PTR [rax],ah
  98:	2d 6d 61 72 63       	sub    eax,0x6372616d
  9d:	68 3d 78 38 36       	push   0x3638783d
  a2:	2d 36 34 20 2d       	sub    eax,0x2d203436
  a7:	6d                   	ins    DWORD PTR es:[rdi],dx
  a8:	74 75                	je     11f <_init-0xee1>
  aa:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  ab:	65 3d 67 65 6e 65    	gs cmp eax,0x656e6567
  b1:	72 69                	jb     11c <_init-0xee4>
  b3:	63 20                	movsxd esp,DWORD PTR [rax]
  b5:	2d 6d 6c 6f 6e       	sub    eax,0x6e6f6c6d
  ba:	67 2d 64 6f 75 62    	addr32 sub eax,0x62756f64
  c0:	6c                   	ins    BYTE PTR es:[rdi],dx
  c1:	65 2d 38 30 20 2d    	gs sub eax,0x2d203038
  c7:	6d                   	ins    DWORD PTR es:[rdi],dx
  c8:	73 68                	jae    132 <_init-0xece>
  ca:	73 74                	jae    140 <_init-0xec0>
  cc:	6b 20 2d             	imul   esp,DWORD PTR [rax],0x2d
  cf:	67 20 2d 67 20 2d 67 	and    BYTE PTR [eip+0x672d2067],ch        # 672d213d <_end+0x672ce0ed>
  d6:	20 2d 4f 32 20 2d    	and    BYTE PTR [rip+0x2d20324f],ch        # 2d20332b <_end+0x2d1ff2db>
  dc:	4f 32 20             	rex.WRXB xor r12b,BYTE PTR [r8]
  df:	2d 4f 32 20 2d       	sub    eax,0x2d20324f
  e4:	66 6e                	data16 outs dx,BYTE PTR ds:[rsi]
  e6:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  e7:	2d 70 6c 74 20       	sub    eax,0x20746c70
  ec:	2d 66 63 66 2d       	sub    eax,0x2d666366
  f1:	70 72                	jo     165 <_init-0xe9b>
  f3:	6f                   	outs   dx,DWORD PTR ds:[rsi]
  f4:	74 65                	je     15b <_init-0xea5>
  f6:	63 74 69 6f          	movsxd esi,DWORD PTR [rcx+rbp*2+0x6f]
  fa:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  fb:	3d 66 75 6c 6c       	cmp    eax,0x6c6c7566
 100:	20 2d 66 62 75 69    	and    BYTE PTR [rip+0x69756266],ch        # 6975636c <_end+0x6975231c>
 106:	6c                   	ins    BYTE PTR es:[rdi],dx
 107:	64 69 6e 67 2d 6c 69 	imul   ebp,DWORD PTR fs:[rsi+0x67],0x62696c2d
 10e:	62 
 10f:	67 63 63 20          	movsxd esp,DWORD PTR [ebx+0x20]
 113:	2d 66 6e 6f 2d       	sub    eax,0x2d6f6e66
 118:	73 74                	jae    18e <_init-0xe72>
 11a:	61                   	(bad)  
 11b:	63 6b 2d             	movsxd ebp,DWORD PTR [rbx+0x2d]
 11e:	70 72                	jo     192 <_init-0xe6e>
 120:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 121:	74 65                	je     188 <_init-0xe78>
 123:	63 74 6f 72          	movsxd esi,DWORD PTR [rdi+rbp*2+0x72]
 127:	20 2d 66 70 69 63    	and    BYTE PTR [rip+0x63697066],ch        # 63697193 <_end+0x63693143>
 12d:	20 2d 66 63 66 2d    	and    BYTE PTR [rip+0x2d666366],ch        # 2d666499 <_end+0x2d662449>
 133:	70 72                	jo     1a7 <_init-0xe59>
 135:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 136:	74 65                	je     19d <_init-0xe63>
 138:	63 74 69 6f          	movsxd esi,DWORD PTR [rcx+rbp*2+0x6f]
 13c:	6e                   	outs   dx,BYTE PTR ds:[rsi]
 13d:	3d 66 75 6c 6c       	cmp    eax,0x6c6c7566
	...

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
   0:	00 01                	add    BYTE PTR [rcx],al
   2:	01 00                	add    DWORD PTR [rax],eax
   4:	00 00                	add    BYTE PTR [rax],al
   6:	39 13                	cmp    DWORD PTR [rbx],edx
   8:	00 00                	add    BYTE PTR [rax],al
   a:	00 00                	add    BYTE PTR [rax],al
   c:	00 00                	add    BYTE PTR [rax],al
   e:	39 13                	cmp    DWORD PTR [rbx],edx
  10:	00 00                	add    BYTE PTR [rax],al
  12:	00 00                	add    BYTE PTR [rax],al
  14:	00 00                	add    BYTE PTR [rax],al
  16:	02 00                	add    al,BYTE PTR [rax]
  18:	91                   	xchg   ecx,eax
  19:	74 39                	je     54 <_init-0xfac>
  1b:	13 00                	adc    eax,DWORD PTR [rax]
  1d:	00 00                	add    BYTE PTR [rax],al
  1f:	00 00                	add    BYTE PTR [rax],al
  21:	00 41 13             	add    BYTE PTR [rcx+0x13],al
  24:	00 00                	add    BYTE PTR [rax],al
  26:	00 00                	add    BYTE PTR [rax],al
  28:	00 00                	add    BYTE PTR [rax],al
  2a:	09 00                	or     DWORD PTR [rax],eax
  2c:	91                   	xchg   ecx,eax
  2d:	74 94                	je     ffffffffffffffc3 <_end+0xffffffffffffbf73>
  2f:	04 0a                	add    al,0xa
  31:	40 80 21 9f          	rex and BYTE PTR [rcx],0x9f
  35:	41 13 00             	adc    eax,DWORD PTR [r8]
  38:	00 00                	add    BYTE PTR [rax],al
  3a:	00 00                	add    BYTE PTR [rax],al
  3c:	00 47 13             	add    BYTE PTR [rdi+0x13],al
  3f:	00 00                	add    BYTE PTR [rax],al
  41:	00 00                	add    BYTE PTR [rax],al
  43:	00 00                	add    BYTE PTR [rax],al
  45:	02 00                	add    al,BYTE PTR [rax]
  47:	91                   	xchg   ecx,eax
  48:	74 00                	je     4a <_init-0xfb6>
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	30 13                	xor    BYTE PTR [rbx],dl
   2:	00 00                	add    BYTE PTR [rax],al
   4:	00 00                	add    BYTE PTR [rax],al
   6:	00 00                	add    BYTE PTR [rax],al
   8:	47 13 00             	rex.RXB adc r8d,DWORD PTR [r8]
	...
