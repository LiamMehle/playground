
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
 2d3:	00 bd b7 5f ad 58    	add    BYTE PTR [rbp+0x58ad5fb7],bh
 2d9:	90                   	nop
 2da:	60                   	(bad)  
 2db:	ca df 96             	retf   0x96df
 2de:	5a                   	pop    rdx
 2df:	f2 05 f6 28 57 7e    	repnz add eax,0x7e5728f6
 2e5:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
 2e6:	6f                   	outs   dx,DWORD PTR ds:[rsi]
 2e7:	2b                   	.byte 0x2b

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
	...
 5c9:	16                   	(bad)  
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
 5e0:	60                   	(bad)  
 5e1:	10 00                	adc    BYTE PTR [rax],al
 5e3:	00 00                	add    BYTE PTR [rax],al
 5e5:	00 00                	add    BYTE PTR [rax],al
 5e7:	00 d0                	add    al,dl
 5e9:	3d 00 00 00 00       	cmp    eax,0x0
 5ee:	00 00                	add    BYTE PTR [rax],al
 5f0:	08 00                	or     BYTE PTR [rax],al
 5f2:	00 00                	add    BYTE PTR [rax],al
 5f4:	00 00                	add    BYTE PTR [rax],al
 5f6:	00 00                	add    BYTE PTR [rax],al
 5f8:	f0 14 00             	lock adc al,0x0
 5fb:	00 00                	add    BYTE PTR [rax],al
 5fd:	00 00                	add    BYTE PTR [rax],al
 5ff:	00 d8                	add    al,bl
 601:	3d 00 00 00 00       	cmp    eax,0x0
 606:	00 00                	add    BYTE PTR [rax],al
 608:	08 00                	or     BYTE PTR [rax],al
 60a:	00 00                	add    BYTE PTR [rax],al
 60c:	00 00                	add    BYTE PTR [rax],al
 60e:	00 00                	add    BYTE PTR [rax],al
 610:	b0 15                	mov    al,0x15
 612:	00 00                	add    BYTE PTR [rax],al
 614:	00 00                	add    BYTE PTR [rax],al
 616:	00 00                	add    BYTE PTR [rax],al
 618:	38 40 00             	cmp    BYTE PTR [rax+0x0],al
 61b:	00 00                	add    BYTE PTR [rax],al
 61d:	00 00                	add    BYTE PTR [rax],al
 61f:	00 08                	add    BYTE PTR [rax],cl
 621:	00 00                	add    BYTE PTR [rax],al
 623:	00 00                	add    BYTE PTR [rax],al
 625:	00 00                	add    BYTE PTR [rax],al
 627:	00 38                	add    BYTE PTR [rax],bh
 629:	40 00 00             	add    BYTE PTR [rax],al
 62c:	00 00                	add    BYTE PTR [rax],al
 62e:	00 00                	add    BYTE PTR [rax],al
 630:	d0 3f                	sar    BYTE PTR [rdi],1
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

0000000000001060 <_GLOBAL__sub_I_main>:
    1060:	50                   	push   rax
    1061:	48 8d 3d e1 2f 00 00 	lea    rdi,[rip+0x2fe1]        # 4049 <_ZStL8__ioinit>
    1068:	e8 e3 ff ff ff       	call   1050 <_ZNSt8ios_base4InitC1Ev@plt>
    106d:	48 8b 3d 84 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f84]        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1074:	48 8d 15 bd 2f 00 00 	lea    rdx,[rip+0x2fbd]        # 4038 <__dso_handle>
    107b:	48 8d 35 c7 2f 00 00 	lea    rsi,[rip+0x2fc7]        # 4049 <_ZStL8__ioinit>
    1082:	59                   	pop    rcx
    1083:	e9 a8 ff ff ff       	jmp    1030 <__cxa_atexit@plt>
    1088:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    108f:	00 

0000000000001090 <main>:
    1090:	55                   	push   rbp
    1091:	41 bb 40 42 0f 00    	mov    r11d,0xf4240
    1097:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
    109b:	48 89 e5             	mov    rbp,rsp
    109e:	41 54                	push   r12
    10a0:	49 bc 00 00 80 3f 00 	movabs r12,0x400000003f800000
    10a7:	00 00 40 
    10aa:	53                   	push   rbx
    10ab:	48 bb 00 00 80 3f 00 	movabs rbx,0x3f8000003f800000
    10b2:	00 80 3f 
    10b5:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
    10b9:	48 81 ec 20 02 00 00 	sub    rsp,0x220
    10c0:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    10c7:	00 00 
    10c9:	48 89 84 24 18 02 00 	mov    QWORD PTR [rsp+0x218],rax
    10d0:	00 
    10d1:	31 c0                	xor    eax,eax
    10d3:	c5 7c 28 3d 45 0f 00 	vmovaps ymm15,YMMWORD PTR [rip+0xf45]        # 2020 <_IO_stdin_used+0x20>
    10da:	00 
    10db:	c5 7c 28 35 5d 0f 00 	vmovaps ymm14,YMMWORD PTR [rip+0xf5d]        # 2040 <_IO_stdin_used+0x40>
    10e2:	00 
    10e3:	c5 7c 28 2d 75 0f 00 	vmovaps ymm13,YMMWORD PTR [rip+0xf75]        # 2060 <_IO_stdin_used+0x60>
    10ea:	00 
    10eb:	c5 7c 28 25 8d 0f 00 	vmovaps ymm12,YMMWORD PTR [rip+0xf8d]        # 2080 <_IO_stdin_used+0x80>
    10f2:	00 
    10f3:	c5 7c 28 1d a5 0f 00 	vmovaps ymm11,YMMWORD PTR [rip+0xfa5]        # 20a0 <_IO_stdin_used+0xa0>
    10fa:	00 
    10fb:	c5 7c 28 15 bd 0f 00 	vmovaps ymm10,YMMWORD PTR [rip+0xfbd]        # 20c0 <_IO_stdin_used+0xc0>
    1102:	00 
    1103:	c5 7c 28 0d d5 0f 00 	vmovaps ymm9,YMMWORD PTR [rip+0xfd5]        # 20e0 <_IO_stdin_used+0xe0>
    110a:	00 
    110b:	c5 7c 28 05 ed 0f 00 	vmovaps ymm8,YMMWORD PTR [rip+0xfed]        # 2100 <_IO_stdin_used+0x100>
    1112:	00 
    1113:	c5 fc 28 3d 05 10 00 	vmovaps ymm7,YMMWORD PTR [rip+0x1005]        # 2120 <_IO_stdin_used+0x120>
    111a:	00 
    111b:	c5 fc 28 35 1d 10 00 	vmovaps ymm6,YMMWORD PTR [rip+0x101d]        # 2140 <_IO_stdin_used+0x140>
    1122:	00 
    1123:	c5 fc 28 2d 35 10 00 	vmovaps ymm5,YMMWORD PTR [rip+0x1035]        # 2160 <_IO_stdin_used+0x160>
    112a:	00 
    112b:	c5 fc 28 25 4d 10 00 	vmovaps ymm4,YMMWORD PTR [rip+0x104d]        # 2180 <_IO_stdin_used+0x180>
    1132:	00 
    1133:	c5 fc 28 1d 65 10 00 	vmovaps ymm3,YMMWORD PTR [rip+0x1065]        # 21a0 <_IO_stdin_used+0x1a0>
    113a:	00 
    113b:	49 89 e2             	mov    r10,rsp
    113e:	c5 fc 28 05 7a 10 00 	vmovaps ymm0,YMMWORD PTR [rip+0x107a]        # 21c0 <_IO_stdin_used+0x1c0>
    1145:	00 
    1146:	c5 fc 28 15 92 10 00 	vmovaps ymm2,YMMWORD PTR [rip+0x1092]        # 21e0 <_IO_stdin_used+0x1e0>
    114d:	00 
    114e:	c5 fc 29 84 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm0
    1155:	00 00 
    1157:	c5 fc 28 05 a1 10 00 	vmovaps ymm0,YMMWORD PTR [rip+0x10a1]        # 2200 <_IO_stdin_used+0x200>
    115e:	00 
    115f:	c5 7c 29 3c 24       	vmovaps YMMWORD PTR [rsp],ymm15
    1164:	c5 7c 29 74 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm14
    116a:	c5 7c 29 6c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm13
    1170:	c5 7c 29 64 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm12
    1176:	c5 7c 29 9c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm11
    117d:	00 00 
    117f:	c5 7c 29 94 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm10
    1186:	00 00 
    1188:	c5 7c 29 8c 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm9
    118f:	00 00 
    1191:	c5 7c 29 84 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm8
    1198:	00 00 
    119a:	c5 fc 29 bc 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm7
    11a1:	00 00 
    11a3:	c5 fc 29 b4 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm6
    11aa:	00 00 
    11ac:	c5 fc 29 ac 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm5
    11b3:	00 00 
    11b5:	c5 fc 29 a4 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm4
    11bc:	00 00 
    11be:	c5 fc 29 9c 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm3
    11c5:	00 00 
    11c7:	c5 fc 29 94 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm2
    11ce:	00 00 
    11d0:	c5 fc 29 84 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm0
    11d7:	00 00 
    11d9:	4c 89 a4 24 00 02 00 	mov    QWORD PTR [rsp+0x200],r12
    11e0:	00 
    11e1:	48 89 9c 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rbx
    11e8:	00 
    11e9:	41 0f 18 0a          	prefetcht0 BYTE PTR [r10]
    11ed:	41 0f 0d 0a          	prefetchw BYTE PTR [r10]
    11f1:	45 31 c9             	xor    r9d,r9d
    11f4:	4c 89 d2             	mov    rdx,r10
    11f7:	4c 89 d7             	mov    rdi,r10
    11fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1200:	4d 89 c8             	mov    r8,r9
    1203:	49 ff c1             	inc    r9
    1206:	48 89 d0             	mov    rax,rdx
    1209:	4c 89 ce             	mov    rsi,r9
    120c:	40 f6 c6 01          	test   sil,0x1
    1210:	0f 84 ca 00 00 00    	je     12e0 <main+0x250>
    1216:	c4 a1 7a 10 54 80 2c 	vmovss xmm2,DWORD PTR [rax+r8*4+0x2c]
    121d:	c5 ea 5e 07          	vdivss xmm0,xmm2,DWORD PTR [rdi]
    1221:	c5 f8 2f c1          	vcomiss xmm0,xmm1
    1225:	0f 84 95 02 00 00    	je     14c0 <main+0x430>
    122b:	c5 fa 10 12          	vmovss xmm2,DWORD PTR [rdx]
    122f:	c4 e2 79 ad 50 2c    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x2c]
    1235:	c5 fa 11 50 2c       	vmovss DWORD PTR [rax+0x2c],xmm2
    123a:	c5 fa 10 52 04       	vmovss xmm2,DWORD PTR [rdx+0x4]
    123f:	c4 e2 79 ad 50 30    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x30]
    1245:	c5 fa 11 50 30       	vmovss DWORD PTR [rax+0x30],xmm2
    124a:	c5 fa 10 52 08       	vmovss xmm2,DWORD PTR [rdx+0x8]
    124f:	c4 e2 79 ad 50 34    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x34]
    1255:	c5 fa 11 50 34       	vmovss DWORD PTR [rax+0x34],xmm2
    125a:	c5 fa 10 52 0c       	vmovss xmm2,DWORD PTR [rdx+0xc]
    125f:	c4 e2 79 ad 50 38    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x38]
    1265:	c5 fa 11 50 38       	vmovss DWORD PTR [rax+0x38],xmm2
    126a:	c5 fa 10 52 10       	vmovss xmm2,DWORD PTR [rdx+0x10]
    126f:	c4 e2 79 ad 50 3c    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x3c]
    1275:	c5 fa 11 50 3c       	vmovss DWORD PTR [rax+0x3c],xmm2
    127a:	c5 fa 10 52 14       	vmovss xmm2,DWORD PTR [rdx+0x14]
    127f:	c4 e2 79 ad 50 40    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x40]
    1285:	c5 fa 11 50 40       	vmovss DWORD PTR [rax+0x40],xmm2
    128a:	c5 fa 10 52 18       	vmovss xmm2,DWORD PTR [rdx+0x18]
    128f:	c4 e2 79 ad 50 44    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x44]
    1295:	c5 fa 11 50 44       	vmovss DWORD PTR [rax+0x44],xmm2
    129a:	c5 fa 10 52 1c       	vmovss xmm2,DWORD PTR [rdx+0x1c]
    129f:	c4 e2 79 ad 50 48    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x48]
    12a5:	c5 fa 11 50 48       	vmovss DWORD PTR [rax+0x48],xmm2
    12aa:	c5 fa 10 52 20       	vmovss xmm2,DWORD PTR [rdx+0x20]
    12af:	c4 e2 79 ad 50 4c    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x4c]
    12b5:	c5 fa 11 50 4c       	vmovss DWORD PTR [rax+0x4c],xmm2
    12ba:	c5 fa 10 52 24       	vmovss xmm2,DWORD PTR [rdx+0x24]
    12bf:	c4 e2 79 ad 50 50    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x50]
    12c5:	c5 fa 11 50 50       	vmovss DWORD PTR [rax+0x50],xmm2
    12ca:	c5 fa 10 50 54       	vmovss xmm2,DWORD PTR [rax+0x54]
    12cf:	c4 e2 69 9d 42 28    	vfnmadd132ss xmm0,xmm2,DWORD PTR [rdx+0x28]
    12d5:	c5 fa 11 40 54       	vmovss DWORD PTR [rax+0x54],xmm0
    12da:	e9 93 01 00 00       	jmp    1472 <main+0x3e2>
    12df:	90                   	nop
    12e0:	c4 a1 7a 10 44 80 2c 	vmovss xmm0,DWORD PTR [rax+r8*4+0x2c]
    12e7:	c5 fa 5e 07          	vdivss xmm0,xmm0,DWORD PTR [rdi]
    12eb:	c5 f8 2f c1          	vcomiss xmm0,xmm1
    12ef:	0f 84 cb 01 00 00    	je     14c0 <main+0x430>
    12f5:	c5 fa 10 12          	vmovss xmm2,DWORD PTR [rdx]
    12f9:	c4 e2 79 ad 50 2c    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x2c]
    12ff:	c5 fa 11 50 2c       	vmovss DWORD PTR [rax+0x2c],xmm2
    1304:	c5 fa 10 52 04       	vmovss xmm2,DWORD PTR [rdx+0x4]
    1309:	c4 e2 79 ad 50 30    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x30]
    130f:	c5 fa 11 50 30       	vmovss DWORD PTR [rax+0x30],xmm2
    1314:	c5 fa 10 52 08       	vmovss xmm2,DWORD PTR [rdx+0x8]
    1319:	c4 e2 79 ad 50 34    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x34]
    131f:	c5 fa 11 50 34       	vmovss DWORD PTR [rax+0x34],xmm2
    1324:	c5 fa 10 52 0c       	vmovss xmm2,DWORD PTR [rdx+0xc]
    1329:	c4 e2 79 ad 50 38    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x38]
    132f:	c5 fa 11 50 38       	vmovss DWORD PTR [rax+0x38],xmm2
    1334:	c5 fa 10 52 10       	vmovss xmm2,DWORD PTR [rdx+0x10]
    1339:	c4 e2 79 ad 50 3c    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x3c]
    133f:	c5 fa 11 50 3c       	vmovss DWORD PTR [rax+0x3c],xmm2
    1344:	c5 fa 10 52 14       	vmovss xmm2,DWORD PTR [rdx+0x14]
    1349:	c4 e2 79 ad 50 40    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x40]
    134f:	c5 fa 11 50 40       	vmovss DWORD PTR [rax+0x40],xmm2
    1354:	c5 fa 10 52 18       	vmovss xmm2,DWORD PTR [rdx+0x18]
    1359:	c4 e2 79 ad 50 44    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x44]
    135f:	c5 fa 11 50 44       	vmovss DWORD PTR [rax+0x44],xmm2
    1364:	c5 fa 10 52 1c       	vmovss xmm2,DWORD PTR [rdx+0x1c]
    1369:	c4 e2 79 ad 50 48    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x48]
    136f:	c5 fa 11 50 48       	vmovss DWORD PTR [rax+0x48],xmm2
    1374:	c5 fa 10 52 20       	vmovss xmm2,DWORD PTR [rdx+0x20]
    1379:	c4 e2 79 ad 50 4c    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x4c]
    137f:	c5 fa 11 50 4c       	vmovss DWORD PTR [rax+0x4c],xmm2
    1384:	c5 fa 10 52 24       	vmovss xmm2,DWORD PTR [rdx+0x24]
    1389:	c4 e2 79 ad 50 50    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rax+0x50]
    138f:	c5 fa 11 50 50       	vmovss DWORD PTR [rax+0x50],xmm2
    1394:	c5 fa 10 50 54       	vmovss xmm2,DWORD PTR [rax+0x54]
    1399:	c4 e2 69 9d 42 28    	vfnmadd132ss xmm0,xmm2,DWORD PTR [rdx+0x28]
    139f:	c5 fa 11 40 54       	vmovss DWORD PTR [rax+0x54],xmm0
    13a4:	48 8d 48 2c          	lea    rcx,[rax+0x2c]
    13a8:	48 ff c6             	inc    rsi
    13ab:	48 89 c8             	mov    rax,rcx
    13ae:	c4 a1 7a 10 44 81 2c 	vmovss xmm0,DWORD PTR [rcx+r8*4+0x2c]
    13b5:	c5 fa 5e 07          	vdivss xmm0,xmm0,DWORD PTR [rdi]
    13b9:	c5 f8 2f c1          	vcomiss xmm0,xmm1
    13bd:	0f 84 fd 00 00 00    	je     14c0 <main+0x430>
    13c3:	c5 fa 10 12          	vmovss xmm2,DWORD PTR [rdx]
    13c7:	c4 e2 79 ad 51 2c    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rcx+0x2c]
    13cd:	c5 fa 11 51 2c       	vmovss DWORD PTR [rcx+0x2c],xmm2
    13d2:	c5 fa 10 52 04       	vmovss xmm2,DWORD PTR [rdx+0x4]
    13d7:	c4 e2 79 ad 51 30    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rcx+0x30]
    13dd:	c5 fa 11 51 30       	vmovss DWORD PTR [rcx+0x30],xmm2
    13e2:	c5 fa 10 52 08       	vmovss xmm2,DWORD PTR [rdx+0x8]
    13e7:	c4 e2 79 ad 51 34    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rcx+0x34]
    13ed:	c5 fa 11 51 34       	vmovss DWORD PTR [rcx+0x34],xmm2
    13f2:	c5 fa 10 52 0c       	vmovss xmm2,DWORD PTR [rdx+0xc]
    13f7:	c4 e2 79 ad 51 38    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rcx+0x38]
    13fd:	c5 fa 11 51 38       	vmovss DWORD PTR [rcx+0x38],xmm2
    1402:	c5 fa 10 52 10       	vmovss xmm2,DWORD PTR [rdx+0x10]
    1407:	c4 e2 79 ad 51 3c    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rcx+0x3c]
    140d:	c5 fa 11 51 3c       	vmovss DWORD PTR [rcx+0x3c],xmm2
    1412:	c5 fa 10 52 14       	vmovss xmm2,DWORD PTR [rdx+0x14]
    1417:	c4 e2 79 ad 51 40    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rcx+0x40]
    141d:	c5 fa 11 51 40       	vmovss DWORD PTR [rcx+0x40],xmm2
    1422:	c5 fa 10 52 18       	vmovss xmm2,DWORD PTR [rdx+0x18]
    1427:	c4 e2 79 ad 51 44    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rcx+0x44]
    142d:	c5 fa 11 51 44       	vmovss DWORD PTR [rcx+0x44],xmm2
    1432:	c5 fa 10 52 1c       	vmovss xmm2,DWORD PTR [rdx+0x1c]
    1437:	c4 e2 79 ad 51 48    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rcx+0x48]
    143d:	c5 fa 11 51 48       	vmovss DWORD PTR [rcx+0x48],xmm2
    1442:	c5 fa 10 52 20       	vmovss xmm2,DWORD PTR [rdx+0x20]
    1447:	c4 e2 79 ad 51 4c    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rcx+0x4c]
    144d:	c5 fa 11 51 4c       	vmovss DWORD PTR [rcx+0x4c],xmm2
    1452:	c5 fa 10 52 24       	vmovss xmm2,DWORD PTR [rdx+0x24]
    1457:	c4 e2 79 ad 51 50    	vfnmadd213ss xmm2,xmm0,DWORD PTR [rcx+0x50]
    145d:	c5 fa 11 51 50       	vmovss DWORD PTR [rcx+0x50],xmm2
    1462:	c5 fa 10 51 54       	vmovss xmm2,DWORD PTR [rcx+0x54]
    1467:	c4 e2 69 9d 42 28    	vfnmadd132ss xmm0,xmm2,DWORD PTR [rdx+0x28]
    146d:	c5 fa 11 41 54       	vmovss DWORD PTR [rcx+0x54],xmm0
    1472:	48 ff c6             	inc    rsi
    1475:	48 83 c0 2c          	add    rax,0x2c
    1479:	48 83 fe 0c          	cmp    rsi,0xc
    147d:	0f 85 5d fe ff ff    	jne    12e0 <main+0x250>
    1483:	48 83 c2 2c          	add    rdx,0x2c
    1487:	48 83 c7 30          	add    rdi,0x30
    148b:	49 83 f9 0b          	cmp    r9,0xb
    148f:	0f 85 6b fd ff ff    	jne    1200 <main+0x170>
    1495:	41 ff cb             	dec    r11d
    1498:	0f 85 a0 fc ff ff    	jne    113e <main+0xae>
    149e:	48 8b 84 24 18 02 00 	mov    rax,QWORD PTR [rsp+0x218]
    14a5:	00 
    14a6:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    14ad:	00 00 
    14af:	75 34                	jne    14e5 <main+0x455>
    14b1:	31 c0                	xor    eax,eax
    14b3:	c5 f8 77             	vzeroupper 
    14b6:	48 8d 65 f0          	lea    rsp,[rbp-0x10]
    14ba:	5b                   	pop    rbx
    14bb:	41 5c                	pop    r12
    14bd:	5d                   	pop    rbp
    14be:	c3                   	ret    
    14bf:	90                   	nop
    14c0:	48 ff c6             	inc    rsi
    14c3:	48 83 c0 2c          	add    rax,0x2c
    14c7:	48 83 fe 0c          	cmp    rsi,0xc
    14cb:	0f 85 3b fd ff ff    	jne    120c <main+0x17c>
    14d1:	48 83 c2 2c          	add    rdx,0x2c
    14d5:	48 83 c7 30          	add    rdi,0x30
    14d9:	49 83 f9 0b          	cmp    r9,0xb
    14dd:	0f 85 1d fd ff ff    	jne    1200 <main+0x170>
    14e3:	eb b0                	jmp    1495 <main+0x405>
    14e5:	c5 f8 77             	vzeroupper 
    14e8:	e8 53 fb ff ff       	call   1040 <__stack_chk_fail@plt>
    14ed:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000014f0 <set_fast_math>:
    14f0:	f3 0f 1e fa          	endbr64 
    14f4:	0f ae 5c 24 fc       	stmxcsr DWORD PTR [rsp-0x4]
    14f9:	81 4c 24 fc 40 80 00 	or     DWORD PTR [rsp-0x4],0x8040
    1500:	00 
    1501:	0f ae 54 24 fc       	ldmxcsr DWORD PTR [rsp-0x4]
    1506:	c3                   	ret    
    1507:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    150e:	00 00 

0000000000001510 <_start>:
    1510:	f3 0f 1e fa          	endbr64 
    1514:	31 ed                	xor    ebp,ebp
    1516:	49 89 d1             	mov    r9,rdx
    1519:	5e                   	pop    rsi
    151a:	48 89 e2             	mov    rdx,rsp
    151d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1521:	50                   	push   rax
    1522:	54                   	push   rsp
    1523:	4c 8d 05 56 01 00 00 	lea    r8,[rip+0x156]        # 1680 <__libc_csu_fini>
    152a:	48 8d 0d df 00 00 00 	lea    rcx,[rip+0xdf]        # 1610 <__libc_csu_init>
    1531:	48 8d 3d 58 fb ff ff 	lea    rdi,[rip+0xfffffffffffffb58]        # 1090 <main>
    1538:	ff 15 a2 2a 00 00    	call   QWORD PTR [rip+0x2aa2]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    153e:	f4                   	hlt    
    153f:	90                   	nop

0000000000001540 <deregister_tm_clones>:
    1540:	48 8d 3d 01 2b 00 00 	lea    rdi,[rip+0x2b01]        # 4048 <__TMC_END__>
    1547:	48 8d 05 fa 2a 00 00 	lea    rax,[rip+0x2afa]        # 4048 <__TMC_END__>
    154e:	48 39 f8             	cmp    rax,rdi
    1551:	74 15                	je     1568 <deregister_tm_clones+0x28>
    1553:	48 8b 05 7e 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a7e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    155a:	48 85 c0             	test   rax,rax
    155d:	74 09                	je     1568 <deregister_tm_clones+0x28>
    155f:	ff e0                	jmp    rax
    1561:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1568:	c3                   	ret    
    1569:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001570 <register_tm_clones>:
    1570:	48 8d 3d d1 2a 00 00 	lea    rdi,[rip+0x2ad1]        # 4048 <__TMC_END__>
    1577:	48 8d 35 ca 2a 00 00 	lea    rsi,[rip+0x2aca]        # 4048 <__TMC_END__>
    157e:	48 29 fe             	sub    rsi,rdi
    1581:	48 89 f0             	mov    rax,rsi
    1584:	48 c1 ee 3f          	shr    rsi,0x3f
    1588:	48 c1 f8 03          	sar    rax,0x3
    158c:	48 01 c6             	add    rsi,rax
    158f:	48 d1 fe             	sar    rsi,1
    1592:	74 14                	je     15a8 <register_tm_clones+0x38>
    1594:	48 8b 05 55 2a 00 00 	mov    rax,QWORD PTR [rip+0x2a55]        # 3ff0 <_ITM_registerTMCloneTable>
    159b:	48 85 c0             	test   rax,rax
    159e:	74 08                	je     15a8 <register_tm_clones+0x38>
    15a0:	ff e0                	jmp    rax
    15a2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    15a8:	c3                   	ret    
    15a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000015b0 <__do_global_dtors_aux>:
    15b0:	f3 0f 1e fa          	endbr64 
    15b4:	80 3d 8d 2a 00 00 00 	cmp    BYTE PTR [rip+0x2a8d],0x0        # 4048 <__TMC_END__>
    15bb:	75 33                	jne    15f0 <__do_global_dtors_aux+0x40>
    15bd:	55                   	push   rbp
    15be:	48 83 3d 0a 2a 00 00 	cmp    QWORD PTR [rip+0x2a0a],0x0        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    15c5:	00 
    15c6:	48 89 e5             	mov    rbp,rsp
    15c9:	74 0d                	je     15d8 <__do_global_dtors_aux+0x28>
    15cb:	48 8b 3d 66 2a 00 00 	mov    rdi,QWORD PTR [rip+0x2a66]        # 4038 <__dso_handle>
    15d2:	ff 15 f8 29 00 00    	call   QWORD PTR [rip+0x29f8]        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    15d8:	e8 63 ff ff ff       	call   1540 <deregister_tm_clones>
    15dd:	c6 05 64 2a 00 00 01 	mov    BYTE PTR [rip+0x2a64],0x1        # 4048 <__TMC_END__>
    15e4:	5d                   	pop    rbp
    15e5:	c3                   	ret    
    15e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    15ed:	00 00 00 
    15f0:	c3                   	ret    
    15f1:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    15f8:	00 00 00 00 
    15fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001600 <frame_dummy>:
    1600:	f3 0f 1e fa          	endbr64 
    1604:	e9 67 ff ff ff       	jmp    1570 <register_tm_clones>
    1609:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001610 <__libc_csu_init>:
    1610:	f3 0f 1e fa          	endbr64 
    1614:	41 57                	push   r15
    1616:	4c 8d 3d a3 27 00 00 	lea    r15,[rip+0x27a3]        # 3dc0 <__frame_dummy_init_array_entry>
    161d:	41 56                	push   r14
    161f:	49 89 d6             	mov    r14,rdx
    1622:	41 55                	push   r13
    1624:	49 89 f5             	mov    r13,rsi
    1627:	41 54                	push   r12
    1629:	41 89 fc             	mov    r12d,edi
    162c:	55                   	push   rbp
    162d:	48 8d 2d a4 27 00 00 	lea    rbp,[rip+0x27a4]        # 3dd8 <__do_global_dtors_aux_fini_array_entry>
    1634:	53                   	push   rbx
    1635:	4c 29 fd             	sub    rbp,r15
    1638:	48 83 ec 08          	sub    rsp,0x8
    163c:	e8 bf f9 ff ff       	call   1000 <_init>
    1641:	48 c1 fd 03          	sar    rbp,0x3
    1645:	74 1f                	je     1666 <__libc_csu_init+0x56>
    1647:	31 db                	xor    ebx,ebx
    1649:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1650:	4c 89 f2             	mov    rdx,r14
    1653:	4c 89 ee             	mov    rsi,r13
    1656:	44 89 e7             	mov    edi,r12d
    1659:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    165d:	48 83 c3 01          	add    rbx,0x1
    1661:	48 39 dd             	cmp    rbp,rbx
    1664:	75 ea                	jne    1650 <__libc_csu_init+0x40>
    1666:	48 83 c4 08          	add    rsp,0x8
    166a:	5b                   	pop    rbx
    166b:	5d                   	pop    rbp
    166c:	41 5c                	pop    r12
    166e:	41 5d                	pop    r13
    1670:	41 5e                	pop    r14
    1672:	41 5f                	pop    r15
    1674:	c3                   	ret    
    1675:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    167c:	00 00 00 00 

0000000000001680 <__libc_csu_fini>:
    1680:	f3 0f 1e fa          	endbr64 
    1684:	c3                   	ret    

Disassembly of section .fini:

0000000000001688 <_fini>:
    1688:	f3 0f 1e fa          	endbr64 
    168c:	48 83 ec 08          	sub    rsp,0x8
    1690:	48 83 c4 08          	add    rsp,0x8
    1694:	c3                   	ret    

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
    2237:	ff a0 00 00 00 70    	jmp    QWORD PTR [rax+0x70000000]
    223d:	ee                   	out    dx,al
    223e:	ff                   	(bad)  
    223f:	ff d4                	call   rsp
    2241:	00 00                	add    BYTE PTR [rax],al
    2243:	00 d0                	add    al,dl
    2245:	f2 ff                	repnz (bad) 
    2247:	ff 60 01             	jmp    QWORD PTR [rax+0x1]
    224a:	00 00                	add    BYTE PTR [rax],al
    224c:	f0 f2 ff             	lock repnz (bad) 
    224f:	ff 60 00             	jmp    QWORD PTR [rax+0x0]
    2252:	00 00                	add    BYTE PTR [rax],al
    2254:	f0 f3 ff             	lock repz (bad) 
    2257:	ff 00                	inc    DWORD PTR [rax]
    2259:	01 00                	add    DWORD PTR [rax],eax
    225b:	00 60 f4             	add    BYTE PTR [rax-0xc],ah
    225e:	ff                   	(bad)  
    225f:	ff 48 01             	dec    DWORD PTR [rax+0x1]
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
    2288:	88 f2                	mov    dl,dh
    228a:	ff                   	(bad)  
    228b:	ff 2f                	jmp    FWORD PTR [rdi]
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
    22c0:	14 00                	adc    al,0x0
    22c2:	00 00                	add    BYTE PTR [rax],al
    22c4:	5c                   	pop    rsp
    22c5:	00 00                	add    BYTE PTR [rax],al
    22c7:	00 98 ed ff ff 28    	add    BYTE PTR [rax+0x28ffffed],bl
    22cd:	00 00                	add    BYTE PTR [rax],al
    22cf:	00 00                	add    BYTE PTR [rax],al
    22d1:	41 0e                	rex.B (bad) 
    22d3:	10 62 0e             	adc    BYTE PTR [rdx+0xe],ah
    22d6:	08 00                	or     BYTE PTR [rax],al
    22d8:	18 00                	sbb    BYTE PTR [rax],al
    22da:	00 00                	add    BYTE PTR [rax],al
    22dc:	00 00                	add    BYTE PTR [rax],al
    22de:	00 00                	add    BYTE PTR [rax],al
    22e0:	01 7a 50             	add    DWORD PTR [rdx+0x50],edi
    22e3:	52                   	push   rdx
    22e4:	00 01                	add    BYTE PTR [rcx],al
    22e6:	78 10                	js     22f8 <__GNU_EH_FRAME_HDR+0xd8>
    22e8:	06                   	(bad)  
    22e9:	9b                   	fwait
    22ea:	56                   	push   rsi
    22eb:	1d 00 00 1b 0c       	sbb    eax,0xc1b0000
    22f0:	07                   	(bad)  
    22f1:	08 90 01 28 00 00    	or     BYTE PTR [rax+0x2801],dl
    22f7:	00 20                	add    BYTE PTR [rax],ah
    22f9:	00 00                	add    BYTE PTR [rax],al
    22fb:	00 94 ed ff ff 5d 04 	add    BYTE PTR [rbp+rbp*8+0x45dffff],dl
    2302:	00 00                	add    BYTE PTR [rax],al
    2304:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
    2307:	10 86 02 4d 0d 06    	adc    BYTE PTR [rsi+0x60d4d02],al
    230d:	42 8c 03             	rex.X mov WORD PTR [rbx],es
    2310:	4b 83 04 03 13       	add    QWORD PTR [r11+r8*1],0x13
    2315:	04 0a                	add    al,0xa
    2317:	0c 07                	or     al,0x7
    2319:	08 42 0b             	or     BYTE PTR [rdx+0xb],al
    231c:	00 00                	add    BYTE PTR [rax],al
    231e:	00 00                	add    BYTE PTR [rax],al
    2320:	44 00 00             	add    BYTE PTR [rax],r8b
    2323:	00 bc 00 00 00 e8 f2 	add    BYTE PTR [rax+rax*1-0xd180000],bh
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
    2370:	10 f3                	adc    bl,dh
    2372:	ff                   	(bad)  
    2373:	ff 05 00 00 00 00    	inc    DWORD PTR [rip+0x0]        # 2379 <__GNU_EH_FRAME_HDR+0x159>
    2379:	00 00                	add    BYTE PTR [rax],al
    237b:	00 00                	add    BYTE PTR [rax],al
    237d:	00 00                	add    BYTE PTR [rax],al
    237f:	00 10                	add    BYTE PTR [rax],dl
    2381:	00 00                	add    BYTE PTR [rax],al
    2383:	00 1c 01             	add    BYTE PTR [rcx+rax*1],bl
    2386:	00 00                	add    BYTE PTR [rax],al
    2388:	68 f1 ff ff 17       	push   0x17fffff1
    238d:	00 00                	add    BYTE PTR [rax],al
    238f:	00 00                	add    BYTE PTR [rax],al
    2391:	00 00                	add    BYTE PTR [rax],al
	...

0000000000002394 <__FRAME_END__>:
    2394:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000003dc0 <__frame_dummy_init_array_entry>:
    3dc0:	00 16                	add    BYTE PTR [rsi],dl
    3dc2:	00 00                	add    BYTE PTR [rax],al
    3dc4:	00 00                	add    BYTE PTR [rax],al
    3dc6:	00 00                	add    BYTE PTR [rax],al
    3dc8:	60                   	(bad)  
    3dc9:	10 00                	adc    BYTE PTR [rax],al
    3dcb:	00 00                	add    BYTE PTR [rax],al
    3dcd:	00 00                	add    BYTE PTR [rax],al
    3dcf:	00 f0                	add    al,dh
    3dd1:	14 00                	adc    al,0x0
    3dd3:	00 00                	add    BYTE PTR [rax],al
    3dd5:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000003dd8 <__do_global_dtors_aux_fini_array_entry>:
    3dd8:	b0 15                	mov    al,0x15
    3dda:	00 00                	add    BYTE PTR [rax],al
    3ddc:	00 00                	add    BYTE PTR [rax],al
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
    3e17:	00 88 16 00 00 00    	add    BYTE PTR [rax+0x16],cl
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
  10:	f0 14 00             	lock adc al,0x0
  13:	00 00                	add    BYTE PTR [rax],al
  15:	00 00                	add    BYTE PTR [rax],al
  17:	00 17                	add    BYTE PTR [rdi],dl
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
  31:	f0 14 00             	lock adc al,0x0
  34:	00 00                	add    BYTE PTR [rax],al
  36:	00 00                	add    BYTE PTR [rax],al
  38:	00 17                	add    BYTE PTR [rdi],dl
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
  59:	f0 14 00             	lock adc al,0x0
  5c:	00 00                	add    BYTE PTR [rax],al
  5e:	00 00                	add    BYTE PTR [rax],al
  60:	00 03                	add    BYTE PTR [rbx],al
  62:	d3 00                	rol    DWORD PTR [rax],cl
  64:	01 05 03 03 0a 4a    	add    DWORD PTR [rip+0x4a0a0303],eax        # 4a0a036d <_end+0x4a09c31d>
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
   6:	f9                   	stc    
   7:	14 00                	adc    al,0x0
   9:	00 00                	add    BYTE PTR [rax],al
   b:	00 00                	add    BYTE PTR [rax],al
   d:	00 f9                	add    cl,bh
   f:	14 00                	adc    al,0x0
  11:	00 00                	add    BYTE PTR [rax],al
  13:	00 00                	add    BYTE PTR [rax],al
  15:	00 02                	add    BYTE PTR [rdx],al
  17:	00 91 74 f9 14 00    	add    BYTE PTR [rcx+0x14f974],dl
  1d:	00 00                	add    BYTE PTR [rax],al
  1f:	00 00                	add    BYTE PTR [rax],al
  21:	00 01                	add    BYTE PTR [rcx],al
  23:	15 00 00 00 00       	adc    eax,0x0
  28:	00 00                	add    BYTE PTR [rax],al
  2a:	09 00                	or     DWORD PTR [rax],eax
  2c:	91                   	xchg   ecx,eax
  2d:	74 94                	je     ffffffffffffffc3 <_end+0xffffffffffffbf73>
  2f:	04 0a                	add    al,0xa
  31:	40 80 21 9f          	rex and BYTE PTR [rcx],0x9f
  35:	01 15 00 00 00 00    	add    DWORD PTR [rip+0x0],edx        # 3b <_init-0xfc5>
  3b:	00 00                	add    BYTE PTR [rax],al
  3d:	07                   	(bad)  
  3e:	15 00 00 00 00       	adc    eax,0x0
  43:	00 00                	add    BYTE PTR [rax],al
  45:	02 00                	add    al,BYTE PTR [rax]
  47:	91                   	xchg   ecx,eax
  48:	74 00                	je     4a <_init-0xfb6>
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	f0 14 00             	lock adc al,0x0
   3:	00 00                	add    BYTE PTR [rax],al
   5:	00 00                	add    BYTE PTR [rax],al
   7:	00 07                	add    BYTE PTR [rdi],al
   9:	15 00 00 00 00       	adc    eax,0x0
	...
