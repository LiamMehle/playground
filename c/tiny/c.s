
ret0:     file format elf64-x86-64


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

Disassembly of section .text:

0000000000001020 <_start>:
    1020:	f3 0f 1e fa          	endbr64 
    1024:	31 ed                	xor    ebp,ebp
    1026:	49 89 d1             	mov    r9,rdx
    1029:	5e                   	pop    rsi
    102a:	48 89 e2             	mov    rdx,rsp
    102d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1031:	50                   	push   rax
    1032:	54                   	push   rsp
    1033:	4c 8d 05 66 01 00 00 	lea    r8,[rip+0x166]        # 11a0 <__libc_csu_fini>
    103a:	48 8d 0d ef 00 00 00 	lea    rcx,[rip+0xef]        # 1130 <__libc_csu_init>
    1041:	48 8d 3d d8 00 00 00 	lea    rdi,[rip+0xd8]        # 1120 <main>
    1048:	ff 15 92 2f 00 00    	call   QWORD PTR [rip+0x2f92]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    104e:	f4                   	hlt    
    104f:	90                   	nop

0000000000001050 <deregister_tm_clones>:
    1050:	48 8d 3d d1 2f 00 00 	lea    rdi,[rip+0x2fd1]        # 4028 <__TMC_END__>
    1057:	48 8d 05 ca 2f 00 00 	lea    rax,[rip+0x2fca]        # 4028 <__TMC_END__>
    105e:	48 39 f8             	cmp    rax,rdi
    1061:	74 15                	je     1078 <deregister_tm_clones+0x28>
    1063:	48 8b 05 6e 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f6e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    106a:	48 85 c0             	test   rax,rax
    106d:	74 09                	je     1078 <deregister_tm_clones+0x28>
    106f:	ff e0                	jmp    rax
    1071:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1078:	c3                   	ret    
    1079:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001080 <register_tm_clones>:
    1080:	48 8d 3d a1 2f 00 00 	lea    rdi,[rip+0x2fa1]        # 4028 <__TMC_END__>
    1087:	48 8d 35 9a 2f 00 00 	lea    rsi,[rip+0x2f9a]        # 4028 <__TMC_END__>
    108e:	48 29 fe             	sub    rsi,rdi
    1091:	48 89 f0             	mov    rax,rsi
    1094:	48 c1 ee 3f          	shr    rsi,0x3f
    1098:	48 c1 f8 03          	sar    rax,0x3
    109c:	48 01 c6             	add    rsi,rax
    109f:	48 d1 fe             	sar    rsi,1
    10a2:	74 14                	je     10b8 <register_tm_clones+0x38>
    10a4:	48 8b 05 45 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f45]        # 3ff0 <_ITM_registerTMCloneTable>
    10ab:	48 85 c0             	test   rax,rax
    10ae:	74 08                	je     10b8 <register_tm_clones+0x38>
    10b0:	ff e0                	jmp    rax
    10b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010c0 <__do_global_dtors_aux>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	80 3d 5d 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f5d],0x0        # 4028 <__TMC_END__>
    10cb:	75 33                	jne    1100 <__do_global_dtors_aux+0x40>
    10cd:	55                   	push   rbp
    10ce:	48 83 3d 22 2f 00 00 	cmp    QWORD PTR [rip+0x2f22],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10d5:	00 
    10d6:	48 89 e5             	mov    rbp,rsp
    10d9:	74 0d                	je     10e8 <__do_global_dtors_aux+0x28>
    10db:	48 8b 3d 3e 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f3e]        # 4020 <__dso_handle>
    10e2:	ff 15 10 2f 00 00    	call   QWORD PTR [rip+0x2f10]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10e8:	e8 63 ff ff ff       	call   1050 <deregister_tm_clones>
    10ed:	c6 05 34 2f 00 00 01 	mov    BYTE PTR [rip+0x2f34],0x1        # 4028 <__TMC_END__>
    10f4:	5d                   	pop    rbp
    10f5:	c3                   	ret    
    10f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    10fd:	00 00 00 
    1100:	c3                   	ret    
    1101:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    1108:	00 00 00 00 
    110c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001110 <frame_dummy>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	e9 67 ff ff ff       	jmp    1080 <register_tm_clones>
    1119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001120 <main>:
    1120:	55                   	push   rbp
    1121:	48 89 e5             	mov    rbp,rsp
    1124:	31 c0                	xor    eax,eax
    1126:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    112d:	5d                   	pop    rbp
    112e:	c3                   	ret    
    112f:	90                   	nop

0000000000001130 <__libc_csu_init>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	41 57                	push   r15
    1136:	4c 8d 3d db 2c 00 00 	lea    r15,[rip+0x2cdb]        # 3e18 <__frame_dummy_init_array_entry>
    113d:	41 56                	push   r14
    113f:	49 89 d6             	mov    r14,rdx
    1142:	41 55                	push   r13
    1144:	49 89 f5             	mov    r13,rsi
    1147:	41 54                	push   r12
    1149:	41 89 fc             	mov    r12d,edi
    114c:	55                   	push   rbp
    114d:	48 8d 2d cc 2c 00 00 	lea    rbp,[rip+0x2ccc]        # 3e20 <__do_global_dtors_aux_fini_array_entry>
    1154:	53                   	push   rbx
    1155:	4c 29 fd             	sub    rbp,r15
    1158:	48 83 ec 08          	sub    rsp,0x8
    115c:	e8 9f fe ff ff       	call   1000 <_init>
    1161:	48 c1 fd 03          	sar    rbp,0x3
    1165:	74 1f                	je     1186 <__libc_csu_init+0x56>
    1167:	31 db                	xor    ebx,ebx
    1169:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1170:	4c 89 f2             	mov    rdx,r14
    1173:	4c 89 ee             	mov    rsi,r13
    1176:	44 89 e7             	mov    edi,r12d
    1179:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    117d:	48 83 c3 01          	add    rbx,0x1
    1181:	48 39 dd             	cmp    rbp,rbx
    1184:	75 ea                	jne    1170 <__libc_csu_init+0x40>
    1186:	48 83 c4 08          	add    rsp,0x8
    118a:	5b                   	pop    rbx
    118b:	5d                   	pop    rbp
    118c:	41 5c                	pop    r12
    118e:	41 5d                	pop    r13
    1190:	41 5e                	pop    r14
    1192:	41 5f                	pop    r15
    1194:	c3                   	ret    
    1195:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    119c:	00 00 00 00 

00000000000011a0 <__libc_csu_fini>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	c3                   	ret    

Disassembly of section .fini:

00000000000011a8 <_fini>:
    11a8:	f3 0f 1e fa          	endbr64 
    11ac:	48 83 ec 08          	sub    rsp,0x8
    11b0:	48 83 c4 08          	add    rsp,0x8
    11b4:	c3                   	ret    
