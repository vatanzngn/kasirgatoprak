
rx_test.riscv:     file format elf32-littleriscv


Disassembly of section .text.init:

80000000 <_start>:
80000000:	00000093          	li	ra,0
80000004:	00000113          	li	sp,0
80000008:	00000193          	li	gp,0
8000000c:	00000213          	li	tp,0
80000010:	00000293          	li	t0,0
80000014:	00000313          	li	t1,0
80000018:	00000393          	li	t2,0
8000001c:	00000413          	li	s0,0
80000020:	00000493          	li	s1,0
80000024:	00000513          	li	a0,0
80000028:	00000593          	li	a1,0
8000002c:	00000613          	li	a2,0
80000030:	00000693          	li	a3,0
80000034:	00000713          	li	a4,0
80000038:	00000793          	li	a5,0
8000003c:	00000813          	li	a6,0
80000040:	00000893          	li	a7,0
80000044:	00000913          	li	s2,0
80000048:	00000993          	li	s3,0
8000004c:	00000a13          	li	s4,0
80000050:	00000a93          	li	s5,0
80000054:	00000b13          	li	s6,0
80000058:	00000b93          	li	s7,0
8000005c:	00000c13          	li	s8,0
80000060:	00000c93          	li	s9,0
80000064:	00000d13          	li	s10,0
80000068:	00000d93          	li	s11,0
8000006c:	00000e13          	li	t3,0
80000070:	00000e93          	li	t4,0
80000074:	00000f13          	li	t5,0
80000078:	00000f93          	li	t6,0
8000007c:	0001e2b7          	lui	t0,0x1e
80000080:	3002a073          	csrs	mstatus,t0
80000084:	00100293          	li	t0,1
80000088:	01f29293          	slli	t0,t0,0x1f
8000008c:	0002ca63          	bltz	t0,800000a0 <_start+0xa0>
80000090:	00100513          	li	a0,1
80000094:	00003297          	auipc	t0,0x3
80000098:	fea2a623          	sw	a0,-20(t0) # 80003080 <tohost>
8000009c:	ff5ff06f          	j	80000090 <_start+0x90>
800000a0:	00000297          	auipc	t0,0x0
800000a4:	09028293          	addi	t0,t0,144 # 80000130 <_start+0x130>
800000a8:	30529073          	csrw	mtvec,t0
800000ac:	00301073          	fscsr	zero
800000b0:	f0000053          	fmv.w.x	ft0,zero
800000b4:	f00000d3          	fmv.w.x	ft1,zero
800000b8:	f0000153          	fmv.w.x	ft2,zero
800000bc:	f00001d3          	fmv.w.x	ft3,zero
800000c0:	f0000253          	fmv.w.x	ft4,zero
800000c4:	f00002d3          	fmv.w.x	ft5,zero
800000c8:	f0000353          	fmv.w.x	ft6,zero
800000cc:	f00003d3          	fmv.w.x	ft7,zero
800000d0:	f0000453          	fmv.w.x	fs0,zero
800000d4:	f00004d3          	fmv.w.x	fs1,zero
800000d8:	f0000553          	fmv.w.x	fa0,zero
800000dc:	f00005d3          	fmv.w.x	fa1,zero
800000e0:	f0000653          	fmv.w.x	fa2,zero
800000e4:	f00006d3          	fmv.w.x	fa3,zero
800000e8:	f0000753          	fmv.w.x	fa4,zero
800000ec:	f00007d3          	fmv.w.x	fa5,zero
800000f0:	f0000853          	fmv.w.x	fa6,zero
800000f4:	f00008d3          	fmv.w.x	fa7,zero
800000f8:	f0000953          	fmv.w.x	fs2,zero
800000fc:	f00009d3          	fmv.w.x	fs3,zero
80000100:	f0000a53          	fmv.w.x	fs4,zero
80000104:	f0000ad3          	fmv.w.x	fs5,zero
80000108:	f0000b53          	fmv.w.x	fs6,zero
8000010c:	f0000bd3          	fmv.w.x	fs7,zero
80000110:	f0000c53          	fmv.w.x	fs8,zero
80000114:	f0000cd3          	fmv.w.x	fs9,zero
80000118:	f0000d53          	fmv.w.x	fs10,zero
8000011c:	f0000dd3          	fmv.w.x	fs11,zero
80000120:	f0000e53          	fmv.w.x	ft8,zero
80000124:	f0000ed3          	fmv.w.x	ft9,zero
80000128:	f0000f53          	fmv.w.x	ft10,zero
8000012c:	f0000fd3          	fmv.w.x	ft11,zero
80000130:	00000297          	auipc	t0,0x0
80000134:	04028293          	addi	t0,t0,64 # 80000170 <trap_entry>
80000138:	30529073          	csrw	mtvec,t0
8000013c:	00003197          	auipc	gp,0x3
80000140:	78c18193          	addi	gp,gp,1932 # 800038c8 <__global_pointer$>
80000144:	87618213          	addi	tp,gp,-1930 # 8000313e <_end+0x3f>
80000148:	fc027213          	andi	tp,tp,-64
8000014c:	f1402573          	csrr	a0,mhartid
80000150:	00100593          	li	a1,1
80000154:	00b57063          	bgeu	a0,a1,80000154 <_start+0x154>
80000158:	80010137          	lui	sp,0x80010
8000015c:	00010513          	mv	a0,sp
80000160:	00010593          	mv	a1,sp
80000164:	00010613          	mv	a2,sp
80000168:	4d9020ef          	jal	80002e40 <main>

8000016c <spin>:
8000016c:	0000006f          	j	8000016c <spin>

80000170 <trap_entry>:
80000170:	ef010113          	addi	sp,sp,-272 # 8000fef0 <__global_pointer$+0xc628>
80000174:	00112223          	sw	ra,4(sp)
80000178:	00212423          	sw	sp,8(sp)
8000017c:	00312623          	sw	gp,12(sp)
80000180:	00412823          	sw	tp,16(sp)
80000184:	00512a23          	sw	t0,20(sp)
80000188:	00612c23          	sw	t1,24(sp)
8000018c:	00712e23          	sw	t2,28(sp)
80000190:	02812023          	sw	s0,32(sp)
80000194:	02912223          	sw	s1,36(sp)
80000198:	02a12423          	sw	a0,40(sp)
8000019c:	02b12623          	sw	a1,44(sp)
800001a0:	02c12823          	sw	a2,48(sp)
800001a4:	02d12a23          	sw	a3,52(sp)
800001a8:	02e12c23          	sw	a4,56(sp)
800001ac:	02f12e23          	sw	a5,60(sp)
800001b0:	05012023          	sw	a6,64(sp)
800001b4:	05112223          	sw	a7,68(sp)
800001b8:	05212423          	sw	s2,72(sp)
800001bc:	05312623          	sw	s3,76(sp)
800001c0:	05412823          	sw	s4,80(sp)
800001c4:	05512a23          	sw	s5,84(sp)
800001c8:	05612c23          	sw	s6,88(sp)
800001cc:	05712e23          	sw	s7,92(sp)
800001d0:	07812023          	sw	s8,96(sp)
800001d4:	07912223          	sw	s9,100(sp)
800001d8:	07a12423          	sw	s10,104(sp)
800001dc:	07b12623          	sw	s11,108(sp)
800001e0:	07c12823          	sw	t3,112(sp)
800001e4:	07d12a23          	sw	t4,116(sp)
800001e8:	07e12c23          	sw	t5,120(sp)
800001ec:	07f12e23          	sw	t6,124(sp)
800001f0:	34202573          	csrr	a0,mcause
800001f4:	341025f3          	csrr	a1,mepc
800001f8:	00010613          	mv	a2,sp
800001fc:	170000ef          	jal	8000036c <handle_trap>
80000200:	000022b7          	lui	t0,0x2
80000204:	80028293          	addi	t0,t0,-2048 # 1800 <_tbss_end+0x1800>
80000208:	3002a073          	csrs	mstatus,t0
8000020c:	00412083          	lw	ra,4(sp)
80000210:	00812103          	lw	sp,8(sp)
80000214:	00c12183          	lw	gp,12(sp)
80000218:	01012203          	lw	tp,16(sp)
8000021c:	01412283          	lw	t0,20(sp)
80000220:	01812303          	lw	t1,24(sp)
80000224:	01c12383          	lw	t2,28(sp)
80000228:	02012403          	lw	s0,32(sp)
8000022c:	02412483          	lw	s1,36(sp)
80000230:	02812503          	lw	a0,40(sp)
80000234:	02c12583          	lw	a1,44(sp)
80000238:	03012603          	lw	a2,48(sp)
8000023c:	03412683          	lw	a3,52(sp)
80000240:	03812703          	lw	a4,56(sp)
80000244:	03c12783          	lw	a5,60(sp)
80000248:	04012803          	lw	a6,64(sp)
8000024c:	04412883          	lw	a7,68(sp)
80000250:	04812903          	lw	s2,72(sp)
80000254:	04c12983          	lw	s3,76(sp)
80000258:	05012a03          	lw	s4,80(sp)
8000025c:	05412a83          	lw	s5,84(sp)
80000260:	05812b03          	lw	s6,88(sp)
80000264:	05c12b83          	lw	s7,92(sp)
80000268:	06012c03          	lw	s8,96(sp)
8000026c:	06412c83          	lw	s9,100(sp)
80000270:	06812d03          	lw	s10,104(sp)
80000274:	06c12d83          	lw	s11,108(sp)
80000278:	07012e03          	lw	t3,112(sp)
8000027c:	07412e83          	lw	t4,116(sp)
80000280:	07812f03          	lw	t5,120(sp)
80000284:	07c12f83          	lw	t6,124(sp)
80000288:	11010113          	addi	sp,sp,272
8000028c:	ee1ff06f          	j	8000016c <spin>

Disassembly of section .text:

80000290 <_putchar>:
80000290:	20000737          	lui	a4,0x20000
80000294:	00470713          	addi	a4,a4,4 # 20000004 <_tbss_end+0x20000004>
80000298:	00072783          	lw	a5,0(a4)
8000029c:	0017f793          	andi	a5,a5,1
800002a0:	fe079ce3          	bnez	a5,80000298 <_putchar+0x8>
800002a4:	200007b7          	lui	a5,0x20000
800002a8:	00a7a623          	sw	a0,12(a5) # 2000000c <_tbss_end+0x2000000c>
800002ac:	00008067          	ret

800002b0 <uart_aktiflestir>:
800002b0:	001c07b7          	lui	a5,0x1c0
800002b4:	20000637          	lui	a2,0x20000
800002b8:	00378793          	addi	a5,a5,3 # 1c0003 <_tbss_end+0x1c0003>
800002bc:	20000737          	lui	a4,0x20000
800002c0:	200006b7          	lui	a3,0x20000
800002c4:	00f62023          	sw	a5,0(a2) # 20000000 <_tbss_end+0x20000000>
800002c8:	00470713          	addi	a4,a4,4 # 20000004 <_tbss_end+0x20000004>
800002cc:	00868693          	addi	a3,a3,8 # 20000008 <_tbss_end+0x20000008>
800002d0:	06100613          	li	a2,97
800002d4:	00072783          	lw	a5,0(a4)
800002d8:	0087f793          	andi	a5,a5,8
800002dc:	fe079ce3          	bnez	a5,800002d4 <uart_aktiflestir+0x24>
800002e0:	0006a783          	lw	a5,0(a3)
800002e4:	0ff7f793          	zext.b	a5,a5
800002e8:	fec796e3          	bne	a5,a2,800002d4 <uart_aktiflestir+0x24>
800002ec:	00008067          	ret

800002f0 <uart_char_oku>:
800002f0:	20000737          	lui	a4,0x20000
800002f4:	00470713          	addi	a4,a4,4 # 20000004 <_tbss_end+0x20000004>
800002f8:	00072783          	lw	a5,0(a4)
800002fc:	0087f793          	andi	a5,a5,8
80000300:	fe079ce3          	bnez	a5,800002f8 <uart_char_oku+0x8>
80000304:	200007b7          	lui	a5,0x20000
80000308:	0087a503          	lw	a0,8(a5) # 20000008 <_tbss_end+0x20000008>
8000030c:	0ff57513          	zext.b	a0,a0
80000310:	00008067          	ret

80000314 <uart_char_yolla>:
80000314:	20000737          	lui	a4,0x20000
80000318:	00470713          	addi	a4,a4,4 # 20000004 <_tbss_end+0x20000004>
8000031c:	00072783          	lw	a5,0(a4)
80000320:	0017f793          	andi	a5,a5,1
80000324:	fe079ce3          	bnez	a5,8000031c <uart_char_yolla+0x8>
80000328:	200007b7          	lui	a5,0x20000
8000032c:	00a7a623          	sw	a0,12(a5) # 2000000c <_tbss_end+0x2000000c>
80000330:	00008067          	ret

80000334 <uart_str_yolla>:
80000334:	00054683          	lbu	a3,0(a0)
80000338:	02068863          	beqz	a3,80000368 <uart_str_yolla+0x34>
8000033c:	20000737          	lui	a4,0x20000
80000340:	20000637          	lui	a2,0x20000
80000344:	00470713          	addi	a4,a4,4 # 20000004 <_tbss_end+0x20000004>
80000348:	00c60613          	addi	a2,a2,12 # 2000000c <_tbss_end+0x2000000c>
8000034c:	00072783          	lw	a5,0(a4)
80000350:	0017f793          	andi	a5,a5,1
80000354:	fe079ce3          	bnez	a5,8000034c <uart_str_yolla+0x18>
80000358:	00d62023          	sw	a3,0(a2)
8000035c:	00154683          	lbu	a3,1(a0)
80000360:	00150513          	addi	a0,a0,1
80000364:	fe0694e3          	bnez	a3,8000034c <uart_str_yolla+0x18>
80000368:	00008067          	ret

8000036c <handle_trap>:
8000036c:	83018693          	addi	a3,gp,-2000 # 800030f8 <error_msg.0>
80000370:	0006c603          	lbu	a2,0(a3)
80000374:	02060863          	beqz	a2,800003a4 <handle_trap+0x38>
80000378:	20000737          	lui	a4,0x20000
8000037c:	200005b7          	lui	a1,0x20000
80000380:	00470713          	addi	a4,a4,4 # 20000004 <_tbss_end+0x20000004>
80000384:	00c58593          	addi	a1,a1,12 # 2000000c <_tbss_end+0x2000000c>
80000388:	00072783          	lw	a5,0(a4)
8000038c:	0017f793          	andi	a5,a5,1
80000390:	fe079ce3          	bnez	a5,80000388 <handle_trap+0x1c>
80000394:	00c5a023          	sw	a2,0(a1)
80000398:	0016c603          	lbu	a2,1(a3)
8000039c:	00168693          	addi	a3,a3,1
800003a0:	fe0614e3          	bnez	a2,80000388 <handle_trap+0x1c>
800003a4:	00008067          	ret

800003a8 <hpm_oku>:
800003a8:	00200793          	li	a5,2
800003ac:	02f50663          	beq	a0,a5,800003d8 <hpm_oku+0x30>
800003b0:	00a7ea63          	bltu	a5,a0,800003c4 <hpm_oku+0x1c>
800003b4:	02050863          	beqz	a0,800003e4 <hpm_oku+0x3c>
800003b8:	c84025f3          	csrr	a1,hpmcounter4h
800003bc:	c0402573          	csrr	a0,hpmcounter4
800003c0:	00008067          	ret
800003c4:	00300793          	li	a5,3
800003c8:	02f51463          	bne	a0,a5,800003f0 <hpm_oku+0x48>
800003cc:	c86025f3          	csrr	a1,hpmcounter6h
800003d0:	c0602573          	csrr	a0,hpmcounter6
800003d4:	00008067          	ret
800003d8:	c85025f3          	csrr	a1,hpmcounter5h
800003dc:	c0502573          	csrr	a0,hpmcounter5
800003e0:	00008067          	ret
800003e4:	c83025f3          	csrr	a1,hpmcounter3h
800003e8:	c0302573          	csrr	a0,hpmcounter3
800003ec:	00008067          	ret
800003f0:	00000513          	li	a0,0
800003f4:	00000593          	li	a1,0
800003f8:	00008067          	ret

800003fc <retired_oku>:
800003fc:	c0202573          	rdinstret	a0
80000400:	00008067          	ret

80000404 <_out_null>:
80000404:	00008067          	ret

80000408 <_out_char>:
80000408:	00051463          	bnez	a0,80000410 <_out_char+0x8>
8000040c:	00008067          	ret
80000410:	e81ff06f          	j	80000290 <_putchar>

80000414 <_out_rev.constprop.0>:
80000414:	fd010113          	addi	sp,sp,-48
80000418:	02812423          	sw	s0,40(sp)
8000041c:	01312e23          	sw	s3,28(sp)
80000420:	01412c23          	sw	s4,24(sp)
80000424:	01512a23          	sw	s5,20(sp)
80000428:	01612823          	sw	s6,16(sp)
8000042c:	01712623          	sw	s7,12(sp)
80000430:	01812423          	sw	s8,8(sp)
80000434:	02112623          	sw	ra,44(sp)
80000438:	00080c13          	mv	s8,a6
8000043c:	02912223          	sw	s1,36(sp)
80000440:	03212023          	sw	s2,32(sp)
80000444:	00387813          	andi	a6,a6,3
80000448:	00050993          	mv	s3,a0
8000044c:	00058a13          	mv	s4,a1
80000450:	00060a93          	mv	s5,a2
80000454:	00068b13          	mv	s6,a3
80000458:	00070413          	mv	s0,a4
8000045c:	00078b93          	mv	s7,a5
80000460:	0c081063          	bnez	a6,80000520 <_out_rev.constprop.0+0x10c>
80000464:	40e60933          	sub	s2,a2,a4
80000468:	00f90933          	add	s2,s2,a5
8000046c:	00060493          	mv	s1,a2
80000470:	0cf77063          	bgeu	a4,a5,80000530 <_out_rev.constprop.0+0x11c>
80000474:	00048613          	mv	a2,s1
80000478:	fff00693          	li	a3,-1
8000047c:	00148493          	addi	s1,s1,1
80000480:	000a0593          	mv	a1,s4
80000484:	02000513          	li	a0,32
80000488:	000980e7          	jalr	s3
8000048c:	ff2494e3          	bne	s1,s2,80000474 <_out_rev.constprop.0+0x60>
80000490:	04040e63          	beqz	s0,800004ec <_out_rev.constprop.0+0xd8>
80000494:	00890933          	add	s2,s2,s0
80000498:	40890633          	sub	a2,s2,s0
8000049c:	fff40413          	addi	s0,s0,-1
800004a0:	008b07b3          	add	a5,s6,s0
800004a4:	0007c503          	lbu	a0,0(a5)
800004a8:	fff00693          	li	a3,-1
800004ac:	000a0593          	mv	a1,s4
800004b0:	00090493          	mv	s1,s2
800004b4:	000980e7          	jalr	s3
800004b8:	fe0410e3          	bnez	s0,80000498 <_out_rev.constprop.0+0x84>
800004bc:	002c7c13          	andi	s8,s8,2
800004c0:	020c0663          	beqz	s8,800004ec <_out_rev.constprop.0+0xd8>
800004c4:	41548ab3          	sub	s5,s1,s5
800004c8:	037af263          	bgeu	s5,s7,800004ec <_out_rev.constprop.0+0xd8>
800004cc:	00048613          	mv	a2,s1
800004d0:	fff00693          	li	a3,-1
800004d4:	000a0593          	mv	a1,s4
800004d8:	02000513          	li	a0,32
800004dc:	001a8a93          	addi	s5,s5,1
800004e0:	00148493          	addi	s1,s1,1
800004e4:	000980e7          	jalr	s3
800004e8:	ff7ae2e3          	bltu	s5,s7,800004cc <_out_rev.constprop.0+0xb8>
800004ec:	02c12083          	lw	ra,44(sp)
800004f0:	02812403          	lw	s0,40(sp)
800004f4:	02012903          	lw	s2,32(sp)
800004f8:	01c12983          	lw	s3,28(sp)
800004fc:	01812a03          	lw	s4,24(sp)
80000500:	01412a83          	lw	s5,20(sp)
80000504:	01012b03          	lw	s6,16(sp)
80000508:	00c12b83          	lw	s7,12(sp)
8000050c:	00812c03          	lw	s8,8(sp)
80000510:	00048513          	mv	a0,s1
80000514:	02412483          	lw	s1,36(sp)
80000518:	03010113          	addi	sp,sp,48
8000051c:	00008067          	ret
80000520:	00060913          	mv	s2,a2
80000524:	00060493          	mv	s1,a2
80000528:	f60716e3          	bnez	a4,80000494 <_out_rev.constprop.0+0x80>
8000052c:	f91ff06f          	j	800004bc <_out_rev.constprop.0+0xa8>
80000530:	00060913          	mv	s2,a2
80000534:	f60710e3          	bnez	a4,80000494 <_out_rev.constprop.0+0x80>
80000538:	fb5ff06f          	j	800004ec <_out_rev.constprop.0+0xd8>

8000053c <_ntoa_long.constprop.0>:
8000053c:	fd010113          	addi	sp,sp,-48
80000540:	03012303          	lw	t1,48(sp)
80000544:	02112623          	sw	ra,44(sp)
80000548:	02812423          	sw	s0,40(sp)
8000054c:	02912223          	sw	s1,36(sp)
80000550:	03212023          	sw	s2,32(sp)
80000554:	00078e93          	mv	t4,a5
80000558:	00068e13          	mv	t3,a3
8000055c:	00070413          	mv	s0,a4
80000560:	00080093          	mv	ra,a6
80000564:	00088793          	mv	a5,a7
80000568:	40037493          	andi	s1,t1,1024
8000056c:	0a068e63          	beqz	a3,80000628 <_ntoa_long.constprop.0+0xec>
80000570:	01037913          	andi	s2,t1,16
80000574:	00030813          	mv	a6,t1
80000578:	06100293          	li	t0,97
8000057c:	48585713          	bexti	a4,a6,0x5
80000580:	12071863          	bnez	a4,800006b0 <_ntoa_long.constprop.0+0x174>
80000584:	00000713          	li	a4,0
80000588:	00010693          	mv	a3,sp
8000058c:	00900393          	li	t2,9
80000590:	ff628293          	addi	t0,t0,-10
80000594:	02000893          	li	a7,32
80000598:	00c0006f          	j	800005a4 <_ntoa_long.constprop.0+0x68>
8000059c:	03170c63          	beq	a4,a7,800005d4 <_ntoa_long.constprop.0+0x98>
800005a0:	00030e13          	mv	t3,t1
800005a4:	03de7f33          	remu	t5,t3,t4
800005a8:	0fff7313          	zext.b	t1,t5
800005ac:	03030f93          	addi	t6,t1,48
800005b0:	00530333          	add	t1,t1,t0
800005b4:	0ff37313          	zext.b	t1,t1
800005b8:	01e3e463          	bltu	t2,t5,800005c0 <_ntoa_long.constprop.0+0x84>
800005bc:	0ffff313          	zext.b	t1,t6
800005c0:	00170713          	addi	a4,a4,1
800005c4:	00e68f33          	add	t5,a3,a4
800005c8:	fe6f0fa3          	sb	t1,-1(t5)
800005cc:	03de5333          	divu	t1,t3,t4
800005d0:	fdde76e3          	bgeu	t3,t4,8000059c <_ntoa_long.constprop.0+0x60>
800005d4:	00287893          	andi	a7,a6,2
800005d8:	06088863          	beqz	a7,80000648 <_ntoa_long.constprop.0+0x10c>
800005dc:	10090a63          	beqz	s2,800006f0 <_ntoa_long.constprop.0+0x1b4>
800005e0:	0e049063          	bnez	s1,800006c0 <_ntoa_long.constprop.0+0x184>
800005e4:	0c071a63          	bnez	a4,800006b8 <_ntoa_long.constprop.0+0x17c>
800005e8:	01000713          	li	a4,16
800005ec:	2aee8863          	beq	t4,a4,8000089c <_ntoa_long.constprop.0+0x360>
800005f0:	00200713          	li	a4,2
800005f4:	2eee8e63          	beq	t4,a4,800008f0 <_ntoa_long.constprop.0+0x3b4>
800005f8:	03000713          	li	a4,48
800005fc:	00e10023          	sb	a4,0(sp)
80000600:	00100e13          	li	t3,1
80000604:	18041c63          	bnez	s0,8000079c <_ntoa_long.constprop.0+0x260>
80000608:	00487713          	andi	a4,a6,4
8000060c:	26070663          	beqz	a4,80000878 <_ntoa_long.constprop.0+0x33c>
80000610:	020e0713          	addi	a4,t3,32
80000614:	002708b3          	add	a7,a4,sp
80000618:	02b00313          	li	t1,43
8000061c:	001e0713          	addi	a4,t3,1
80000620:	fe688023          	sb	t1,-32(a7)
80000624:	0d40006f          	j	800006f8 <_ntoa_long.constprop.0+0x1bc>
80000628:	fef37813          	andi	a6,t1,-17
8000062c:	12048e63          	beqz	s1,80000768 <_ntoa_long.constprop.0+0x22c>
80000630:	00237713          	andi	a4,t1,2
80000634:	00010693          	mv	a3,sp
80000638:	fc0716e3          	bnez	a4,80000604 <_ntoa_long.constprop.0+0xc8>
8000063c:	00000913          	li	s2,0
80000640:	40000493          	li	s1,1024
80000644:	00010693          	mv	a3,sp
80000648:	0c079663          	bnez	a5,80000714 <_ntoa_long.constprop.0+0x1d8>
8000064c:	f81778e3          	bgeu	a4,ra,800005dc <_ntoa_long.constprop.0+0xa0>
80000650:	02000893          	li	a7,32
80000654:	00187f13          	andi	t5,a6,1
80000658:	2b170663          	beq	a4,a7,80000904 <_ntoa_long.constprop.0+0x3c8>
8000065c:	03000313          	li	t1,48
80000660:	02000e13          	li	t3,32
80000664:	0080006f          	j	8000066c <_ntoa_long.constprop.0+0x130>
80000668:	11c70463          	beq	a4,t3,80000770 <_ntoa_long.constprop.0+0x234>
8000066c:	00170713          	addi	a4,a4,1
80000670:	00e688b3          	add	a7,a3,a4
80000674:	fe688fa3          	sb	t1,-1(a7)
80000678:	fe1768e3          	bltu	a4,ra,80000668 <_ntoa_long.constprop.0+0x12c>
8000067c:	f60f00e3          	beqz	t5,800005dc <_ntoa_long.constprop.0+0xa0>
80000680:	f4f77ee3          	bgeu	a4,a5,800005dc <_ntoa_long.constprop.0+0xa0>
80000684:	02000893          	li	a7,32
80000688:	03000313          	li	t1,48
8000068c:	02000e13          	li	t3,32
80000690:	01171663          	bne	a4,a7,8000069c <_ntoa_long.constprop.0+0x160>
80000694:	2b00006f          	j	80000944 <_ntoa_long.constprop.0+0x408>
80000698:	1dc70463          	beq	a4,t3,80000860 <_ntoa_long.constprop.0+0x324>
8000069c:	00170713          	addi	a4,a4,1
800006a0:	00e688b3          	add	a7,a3,a4
800006a4:	fe688fa3          	sb	t1,-1(a7)
800006a8:	fef718e3          	bne	a4,a5,80000698 <_ntoa_long.constprop.0+0x15c>
800006ac:	f31ff06f          	j	800005dc <_ntoa_long.constprop.0+0xa0>
800006b0:	04100293          	li	t0,65
800006b4:	ed1ff06f          	j	80000584 <_ntoa_long.constprop.0+0x48>
800006b8:	18e08e63          	beq	ra,a4,80000854 <_ntoa_long.constprop.0+0x318>
800006bc:	18f70c63          	beq	a4,a5,80000854 <_ntoa_long.constprop.0+0x318>
800006c0:	01000893          	li	a7,16
800006c4:	151e8063          	beq	t4,a7,80000804 <_ntoa_long.constprop.0+0x2c8>
800006c8:	00200893          	li	a7,2
800006cc:	171e8063          	beq	t4,a7,8000082c <_ntoa_long.constprop.0+0x2f0>
800006d0:	02000893          	li	a7,32
800006d4:	03170263          	beq	a4,a7,800006f8 <_ntoa_long.constprop.0+0x1bc>
800006d8:	00070893          	mv	a7,a4
800006dc:	00170713          	addi	a4,a4,1
800006e0:	02088893          	addi	a7,a7,32
800006e4:	002888b3          	add	a7,a7,sp
800006e8:	03000313          	li	t1,48
800006ec:	fe688023          	sb	t1,-32(a7)
800006f0:	02000893          	li	a7,32
800006f4:	17171c63          	bne	a4,a7,8000086c <_ntoa_long.constprop.0+0x330>
800006f8:	d1dff0ef          	jal	80000414 <_out_rev.constprop.0>
800006fc:	02c12083          	lw	ra,44(sp)
80000700:	02812403          	lw	s0,40(sp)
80000704:	02412483          	lw	s1,36(sp)
80000708:	02012903          	lw	s2,32(sp)
8000070c:	03010113          	addi	sp,sp,48
80000710:	00008067          	ret
80000714:	00187f13          	andi	t5,a6,1
80000718:	0a0f0a63          	beqz	t5,800007cc <_ntoa_long.constprop.0+0x290>
8000071c:	12041863          	bnez	s0,8000084c <_ntoa_long.constprop.0+0x310>
80000720:	00c87893          	andi	a7,a6,12
80000724:	12089463          	bnez	a7,8000084c <_ntoa_long.constprop.0+0x310>
80000728:	f4177ce3          	bgeu	a4,ra,80000680 <_ntoa_long.constprop.0+0x144>
8000072c:	02000893          	li	a7,32
80000730:	f31716e3          	bne	a4,a7,8000065c <_ntoa_long.constprop.0+0x120>
80000734:	04f76263          	bltu	a4,a5,80000778 <_ntoa_long.constprop.0+0x23c>
80000738:	02000713          	li	a4,32
8000073c:	fa090ee3          	beqz	s2,800006f8 <_ntoa_long.constprop.0+0x1bc>
80000740:	20049a63          	bnez	s1,80000954 <_ntoa_long.constprop.0+0x418>
80000744:	00e08463          	beq	ra,a4,8000074c <_ntoa_long.constprop.0+0x210>
80000748:	f6e79ce3          	bne	a5,a4,800006c0 <_ntoa_long.constprop.0+0x184>
8000074c:	01f00893          	li	a7,31
80000750:	01000313          	li	t1,16
80000754:	1a6e8c63          	beq	t4,t1,8000090c <_ntoa_long.constprop.0+0x3d0>
80000758:	00200713          	li	a4,2
8000075c:	1cee8863          	beq	t4,a4,8000092c <_ntoa_long.constprop.0+0x3f0>
80000760:	00188713          	addi	a4,a7,1
80000764:	f7dff06f          	j	800006e0 <_ntoa_long.constprop.0+0x1a4>
80000768:	00000913          	li	s2,0
8000076c:	e0dff06f          	j	80000578 <_ntoa_long.constprop.0+0x3c>
80000770:	0e0f0863          	beqz	t5,80000860 <_ntoa_long.constprop.0+0x324>
80000774:	0ef77663          	bgeu	a4,a5,80000860 <_ntoa_long.constprop.0+0x324>
80000778:	f80900e3          	beqz	s2,800006f8 <_ntoa_long.constprop.0+0x1bc>
8000077c:	f40482e3          	beqz	s1,800006c0 <_ntoa_long.constprop.0+0x184>
80000780:	01000713          	li	a4,16
80000784:	00ee8863          	beq	t4,a4,80000794 <_ntoa_long.constprop.0+0x258>
80000788:	00200893          	li	a7,2
8000078c:	02000713          	li	a4,32
80000790:	f71e84e3          	beq	t4,a7,800006f8 <_ntoa_long.constprop.0+0x1bc>
80000794:	02000713          	li	a4,32
80000798:	f61ff06f          	j	800006f8 <_ntoa_long.constprop.0+0x1bc>
8000079c:	020e0713          	addi	a4,t3,32
800007a0:	002708b3          	add	a7,a4,sp
800007a4:	02d00313          	li	t1,45
800007a8:	001e0713          	addi	a4,t3,1
800007ac:	fe688023          	sb	t1,-32(a7)
800007b0:	c65ff0ef          	jal	80000414 <_out_rev.constprop.0>
800007b4:	02c12083          	lw	ra,44(sp)
800007b8:	02812403          	lw	s0,40(sp)
800007bc:	02412483          	lw	s1,36(sp)
800007c0:	02012903          	lw	s2,32(sp)
800007c4:	03010113          	addi	sp,sp,48
800007c8:	00008067          	ret
800007cc:	e01778e3          	bgeu	a4,ra,800005dc <_ntoa_long.constprop.0+0xa0>
800007d0:	02000893          	li	a7,32
800007d4:	e91714e3          	bne	a4,a7,8000065c <_ntoa_long.constprop.0+0x120>
800007d8:	fa090ee3          	beqz	s2,80000794 <_ntoa_long.constprop.0+0x258>
800007dc:	fa049ce3          	bnez	s1,80000794 <_ntoa_long.constprop.0+0x258>
800007e0:	02000713          	li	a4,32
800007e4:	18e08263          	beq	ra,a4,80000968 <_ntoa_long.constprop.0+0x42c>
800007e8:	18e78063          	beq	a5,a4,80000968 <_ntoa_long.constprop.0+0x42c>
800007ec:	01000713          	li	a4,16
800007f0:	faee82e3          	beq	t4,a4,80000794 <_ntoa_long.constprop.0+0x258>
800007f4:	00200713          	li	a4,2
800007f8:	f8ee8ee3          	beq	t4,a4,80000794 <_ntoa_long.constprop.0+0x258>
800007fc:	02000713          	li	a4,32
80000800:	ed1ff06f          	j	800006d0 <_ntoa_long.constprop.0+0x194>
80000804:	02087893          	andi	a7,a6,32
80000808:	0c089463          	bnez	a7,800008d0 <_ntoa_long.constprop.0+0x394>
8000080c:	02000893          	li	a7,32
80000810:	f91702e3          	beq	a4,a7,80000794 <_ntoa_long.constprop.0+0x258>
80000814:	02070893          	addi	a7,a4,32
80000818:	002888b3          	add	a7,a7,sp
8000081c:	07800313          	li	t1,120
80000820:	fe688023          	sb	t1,-32(a7)
80000824:	00170713          	addi	a4,a4,1
80000828:	ea9ff06f          	j	800006d0 <_ntoa_long.constprop.0+0x194>
8000082c:	02000893          	li	a7,32
80000830:	ed1704e3          	beq	a4,a7,800006f8 <_ntoa_long.constprop.0+0x1bc>
80000834:	02070893          	addi	a7,a4,32
80000838:	002888b3          	add	a7,a7,sp
8000083c:	06200313          	li	t1,98
80000840:	fe688023          	sb	t1,-32(a7)
80000844:	00170713          	addi	a4,a4,1
80000848:	e89ff06f          	j	800006d0 <_ntoa_long.constprop.0+0x194>
8000084c:	fff78793          	addi	a5,a5,-1
80000850:	ed9ff06f          	j	80000728 <_ntoa_long.constprop.0+0x1ec>
80000854:	fff70893          	addi	a7,a4,-1
80000858:	d80888e3          	beqz	a7,800005e8 <_ntoa_long.constprop.0+0xac>
8000085c:	ef5ff06f          	j	80000750 <_ntoa_long.constprop.0+0x214>
80000860:	02000713          	li	a4,32
80000864:	d6091ee3          	bnez	s2,800005e0 <_ntoa_long.constprop.0+0xa4>
80000868:	e91ff06f          	j	800006f8 <_ntoa_long.constprop.0+0x1bc>
8000086c:	00070e13          	mv	t3,a4
80000870:	d8040ce3          	beqz	s0,80000608 <_ntoa_long.constprop.0+0xcc>
80000874:	f29ff06f          	j	8000079c <_ntoa_long.constprop.0+0x260>
80000878:	00887893          	andi	a7,a6,8
8000087c:	000e0713          	mv	a4,t3
80000880:	e6088ce3          	beqz	a7,800006f8 <_ntoa_long.constprop.0+0x1bc>
80000884:	020e0893          	addi	a7,t3,32
80000888:	00288e33          	add	t3,a7,sp
8000088c:	02000893          	li	a7,32
80000890:	00170713          	addi	a4,a4,1
80000894:	ff1e0023          	sb	a7,-32(t3)
80000898:	e61ff06f          	j	800006f8 <_ntoa_long.constprop.0+0x1bc>
8000089c:	02087713          	andi	a4,a6,32
800008a0:	00071e63          	bnez	a4,800008bc <_ntoa_long.constprop.0+0x380>
800008a4:	00003737          	lui	a4,0x3
800008a8:	07870713          	addi	a4,a4,120 # 3078 <_tbss_end+0x3078>
800008ac:	00e11023          	sh	a4,0(sp)
800008b0:	00200e13          	li	t3,2
800008b4:	d4040ae3          	beqz	s0,80000608 <_ntoa_long.constprop.0+0xcc>
800008b8:	ee5ff06f          	j	8000079c <_ntoa_long.constprop.0+0x260>
800008bc:	00003737          	lui	a4,0x3
800008c0:	05870713          	addi	a4,a4,88 # 3058 <_tbss_end+0x3058>
800008c4:	00e11023          	sh	a4,0(sp)
800008c8:	00200e13          	li	t3,2
800008cc:	fe9ff06f          	j	800008b4 <_ntoa_long.constprop.0+0x378>
800008d0:	02000893          	li	a7,32
800008d4:	ed1700e3          	beq	a4,a7,80000794 <_ntoa_long.constprop.0+0x258>
800008d8:	02070893          	addi	a7,a4,32
800008dc:	002888b3          	add	a7,a7,sp
800008e0:	05800313          	li	t1,88
800008e4:	fe688023          	sb	t1,-32(a7)
800008e8:	00170713          	addi	a4,a4,1
800008ec:	de5ff06f          	j	800006d0 <_ntoa_long.constprop.0+0x194>
800008f0:	00003737          	lui	a4,0x3
800008f4:	06270713          	addi	a4,a4,98 # 3062 <_tbss_end+0x3062>
800008f8:	00e11023          	sh	a4,0(sp)
800008fc:	00200e13          	li	t3,2
80000900:	fb5ff06f          	j	800008b4 <_ntoa_long.constprop.0+0x378>
80000904:	e20f1ae3          	bnez	t5,80000738 <_ntoa_long.constprop.0+0x1fc>
80000908:	ed1ff06f          	j	800007d8 <_ntoa_long.constprop.0+0x29c>
8000090c:	ffe70313          	addi	t1,a4,-2
80000910:	02087893          	andi	a7,a6,32
80000914:	00668333          	add	t1,a3,t1
80000918:	00088e63          	beqz	a7,80000934 <_ntoa_long.constprop.0+0x3f8>
8000091c:	05800893          	li	a7,88
80000920:	fff70713          	addi	a4,a4,-1
80000924:	01130023          	sb	a7,0(t1)
80000928:	db1ff06f          	j	800006d8 <_ntoa_long.constprop.0+0x19c>
8000092c:	00088713          	mv	a4,a7
80000930:	f05ff06f          	j	80000834 <_ntoa_long.constprop.0+0x2f8>
80000934:	07800e13          	li	t3,120
80000938:	fff70893          	addi	a7,a4,-1
8000093c:	01c30023          	sb	t3,0(t1)
80000940:	da1ff06f          	j	800006e0 <_ntoa_long.constprop.0+0x1a4>
80000944:	da090ae3          	beqz	s2,800006f8 <_ntoa_long.constprop.0+0x1bc>
80000948:	e2049ce3          	bnez	s1,80000780 <_ntoa_long.constprop.0+0x244>
8000094c:	e0e080e3          	beq	ra,a4,8000074c <_ntoa_long.constprop.0+0x210>
80000950:	dee78ee3          	beq	a5,a4,8000074c <_ntoa_long.constprop.0+0x210>
80000954:	01000893          	li	a7,16
80000958:	e31e8ee3          	beq	t4,a7,80000794 <_ntoa_long.constprop.0+0x258>
8000095c:	00200893          	li	a7,2
80000960:	d71e98e3          	bne	t4,a7,800006d0 <_ntoa_long.constprop.0+0x194>
80000964:	d95ff06f          	j	800006f8 <_ntoa_long.constprop.0+0x1bc>
80000968:	02000713          	li	a4,32
8000096c:	01f00893          	li	a7,31
80000970:	de1ff06f          	j	80000750 <_ntoa_long.constprop.0+0x214>

80000974 <printf_>:
80000974:	f3010113          	addi	sp,sp,-208
80000978:	0a812423          	sw	s0,168(sp)
8000097c:	09a12023          	sw	s10,128(sp)
80000980:	0a112623          	sw	ra,172(sp)
80000984:	0a912223          	sw	s1,164(sp)
80000988:	09612823          	sw	s6,144(sp)
8000098c:	0ab12a23          	sw	a1,180(sp)
80000990:	0ac12c23          	sw	a2,184(sp)
80000994:	0ad12e23          	sw	a3,188(sp)
80000998:	0ce12023          	sw	a4,192(sp)
8000099c:	0cf12223          	sw	a5,196(sp)
800009a0:	0d012423          	sw	a6,200(sp)
800009a4:	0d112623          	sw	a7,204(sp)
800009a8:	00050413          	mv	s0,a0
800009ac:	00054503          	lbu	a0,0(a0)
800009b0:	0b410d13          	addi	s10,sp,180
800009b4:	05a12623          	sw	s10,76(sp)
800009b8:	000500e3          	beqz	a0,800011b8 <printf_+0x844>
800009bc:	00000493          	li	s1,0
800009c0:	09312e23          	sw	s3,156(sp)
800009c4:	09412c23          	sw	s4,152(sp)
800009c8:	09512a23          	sw	s5,148(sp)
800009cc:	09712623          	sw	s7,140(sp)
800009d0:	09812423          	sw	s8,136(sp)
800009d4:	09912223          	sw	s9,132(sp)
800009d8:	0b212023          	sw	s2,160(sp)
800009dc:	07b12e23          	sw	s11,124(sp)
800009e0:	04810b13          	addi	s6,sp,72
800009e4:	02500c13          	li	s8,37
800009e8:	01000a93          	li	s5,16
800009ec:	00002997          	auipc	s3,0x2
800009f0:	50c98993          	addi	s3,s3,1292 # 80002ef8 <main+0xb8>
800009f4:	00900b93          	li	s7,9
800009f8:	06c00c93          	li	s9,108
800009fc:	00048a13          	mv	s4,s1
80000a00:	0200006f          	j	80000a20 <printf_+0xac>
80000a04:	000a0613          	mv	a2,s4
80000a08:	fff00693          	li	a3,-1
80000a0c:	000b0593          	mv	a1,s6
80000a10:	001a0a13          	addi	s4,s4,1
80000a14:	9f5ff0ef          	jal	80000408 <_out_char>
80000a18:	00044503          	lbu	a0,0(s0)
80000a1c:	16050663          	beqz	a0,80000b88 <printf_+0x214>
80000a20:	00140413          	addi	s0,s0,1
80000a24:	ff8510e3          	bne	a0,s8,80000a04 <printf_+0x90>
80000a28:	00000913          	li	s2,0
80000a2c:	00044503          	lbu	a0,0(s0)
80000a30:	00140713          	addi	a4,s0,1
80000a34:	fe050793          	addi	a5,a0,-32
80000a38:	0ff7f793          	zext.b	a5,a5
80000a3c:	00faea63          	bltu	s5,a5,80000a50 <printf_+0xdc>
80000a40:	2137c7b3          	sh2add	a5,a5,s3
80000a44:	0007a783          	lw	a5,0(a5)
80000a48:	013787b3          	add	a5,a5,s3
80000a4c:	00078067          	jr	a5
80000a50:	fd050793          	addi	a5,a0,-48
80000a54:	0ff7f793          	zext.b	a5,a5
80000a58:	08fbf063          	bgeu	s7,a5,80000ad8 <printf_+0x164>
80000a5c:	02a00793          	li	a5,42
80000a60:	00000493          	li	s1,0
80000a64:	18f50863          	beq	a0,a5,80000bf4 <printf_+0x280>
80000a68:	02e00793          	li	a5,46
80000a6c:	00000d93          	li	s11,0
80000a70:	08f50e63          	beq	a0,a5,80000b0c <printf_+0x198>
80000a74:	00070793          	mv	a5,a4
80000a78:	0d950463          	beq	a0,s9,80000b40 <printf_+0x1cc>
80000a7c:	16ace463          	bltu	s9,a0,80000be4 <printf_+0x270>
80000a80:	06800713          	li	a4,104
80000a84:	4ce50063          	beq	a0,a4,80000f44 <printf_+0x5d0>
80000a88:	06a00713          	li	a4,106
80000a8c:	18e51263          	bne	a0,a4,80000c10 <printf_+0x29c>
80000a90:	00144503          	lbu	a0,1(s0)
80000a94:	20096913          	ori	s2,s2,512
80000a98:	0b40006f          	j	80000b4c <printf_+0x1d8>
80000a9c:	00196913          	ori	s2,s2,1
80000aa0:	00070413          	mv	s0,a4
80000aa4:	f89ff06f          	j	80000a2c <printf_+0xb8>
80000aa8:	00296913          	ori	s2,s2,2
80000aac:	00070413          	mv	s0,a4
80000ab0:	f7dff06f          	j	80000a2c <printf_+0xb8>
80000ab4:	00496913          	ori	s2,s2,4
80000ab8:	00070413          	mv	s0,a4
80000abc:	f71ff06f          	j	80000a2c <printf_+0xb8>
80000ac0:	01096913          	ori	s2,s2,16
80000ac4:	00070413          	mv	s0,a4
80000ac8:	f65ff06f          	j	80000a2c <printf_+0xb8>
80000acc:	00896913          	ori	s2,s2,8
80000ad0:	00070413          	mv	s0,a4
80000ad4:	f59ff06f          	j	80000a2c <printf_+0xb8>
80000ad8:	00000493          	li	s1,0
80000adc:	2094c4b3          	sh2add	s1,s1,s1
80000ae0:	20a4a4b3          	sh1add	s1,s1,a0
80000ae4:	00074503          	lbu	a0,0(a4)
80000ae8:	00070413          	mv	s0,a4
80000aec:	fd048493          	addi	s1,s1,-48
80000af0:	fd050793          	addi	a5,a0,-48
80000af4:	0ff7f793          	zext.b	a5,a5
80000af8:	00170713          	addi	a4,a4,1
80000afc:	fefbf0e3          	bgeu	s7,a5,80000adc <printf_+0x168>
80000b00:	02e00793          	li	a5,46
80000b04:	00000d93          	li	s11,0
80000b08:	f6f516e3          	bne	a0,a5,80000a74 <printf_+0x100>
80000b0c:	00144503          	lbu	a0,1(s0)
80000b10:	00900613          	li	a2,9
80000b14:	00070693          	mv	a3,a4
80000b18:	fd050793          	addi	a5,a0,-48
80000b1c:	0ff7f793          	zext.b	a5,a5
80000b20:	40096913          	ori	s2,s2,1024
80000b24:	4ef67063          	bgeu	a2,a5,80001004 <printf_+0x690>
80000b28:	02a00793          	li	a5,42
80000b2c:	58f50063          	beq	a0,a5,800010ac <printf_+0x738>
80000b30:	00070413          	mv	s0,a4
80000b34:	00170713          	addi	a4,a4,1
80000b38:	00070793          	mv	a5,a4
80000b3c:	f59510e3          	bne	a0,s9,80000a7c <printf_+0x108>
80000b40:	00144503          	lbu	a0,1(s0)
80000b44:	59950863          	beq	a0,s9,800010d4 <printf_+0x760>
80000b48:	10096913          	ori	s2,s2,256
80000b4c:	06600713          	li	a4,102
80000b50:	00178413          	addi	s0,a5,1
80000b54:	0ca76463          	bltu	a4,a0,80000c1c <printf_+0x2a8>
80000b58:	04500793          	li	a5,69
80000b5c:	3ca7f263          	bgeu	a5,a0,80000f20 <printf_+0x5ac>
80000b60:	fba50793          	addi	a5,a0,-70
80000b64:	0ff7f793          	zext.b	a5,a5
80000b68:	02000713          	li	a4,32
80000b6c:	e8f76ce3          	bltu	a4,a5,80000a04 <printf_+0x90>
80000b70:	00002717          	auipc	a4,0x2
80000b74:	3cc70713          	addi	a4,a4,972 # 80002f3c <main+0xfc>
80000b78:	20e7c7b3          	sh2add	a5,a5,a4
80000b7c:	0007a783          	lw	a5,0(a5)
80000b80:	00e787b3          	add	a5,a5,a4
80000b84:	00078067          	jr	a5
80000b88:	ffe00613          	li	a2,-2
80000b8c:	000a0493          	mv	s1,s4
80000b90:	0aca5633          	minu	a2,s4,a2
80000b94:	0a012903          	lw	s2,160(sp)
80000b98:	09c12983          	lw	s3,156(sp)
80000b9c:	09812a03          	lw	s4,152(sp)
80000ba0:	09412a83          	lw	s5,148(sp)
80000ba4:	08c12b83          	lw	s7,140(sp)
80000ba8:	08812c03          	lw	s8,136(sp)
80000bac:	08412c83          	lw	s9,132(sp)
80000bb0:	07c12d83          	lw	s11,124(sp)
80000bb4:	000b0593          	mv	a1,s6
80000bb8:	00000513          	li	a0,0
80000bbc:	fff00693          	li	a3,-1
80000bc0:	849ff0ef          	jal	80000408 <_out_char>
80000bc4:	0ac12083          	lw	ra,172(sp)
80000bc8:	0a812403          	lw	s0,168(sp)
80000bcc:	09012b03          	lw	s6,144(sp)
80000bd0:	08012d03          	lw	s10,128(sp)
80000bd4:	00048513          	mv	a0,s1
80000bd8:	0a412483          	lw	s1,164(sp)
80000bdc:	0d010113          	addi	sp,sp,208
80000be0:	00008067          	ret
80000be4:	07a00693          	li	a3,122
80000be8:	02d51863          	bne	a0,a3,80000c18 <printf_+0x2a4>
80000bec:	00144503          	lbu	a0,1(s0)
80000bf0:	f59ff06f          	j	80000b48 <printf_+0x1d4>
80000bf4:	000d2483          	lw	s1,0(s10)
80000bf8:	004d0d13          	addi	s10,s10,4
80000bfc:	0804c863          	bltz	s1,80000c8c <printf_+0x318>
80000c00:	00144503          	lbu	a0,1(s0)
80000c04:	00070413          	mv	s0,a4
80000c08:	00170713          	addi	a4,a4,1
80000c0c:	e5dff06f          	j	80000a68 <printf_+0xf4>
80000c10:	00040793          	mv	a5,s0
80000c14:	f39ff06f          	j	80000b4c <printf_+0x1d8>
80000c18:	00070413          	mv	s0,a4
80000c1c:	f9750713          	addi	a4,a0,-105
80000c20:	0ff77713          	zext.b	a4,a4
80000c24:	00f00793          	li	a5,15
80000c28:	dce7eee3          	bltu	a5,a4,80000a04 <printf_+0x90>
80000c2c:	000096b7          	lui	a3,0x9
80000c30:	04168693          	addi	a3,a3,65 # 9041 <_tbss_end+0x9041>
80000c34:	28e017b3          	bset	a5,zero,a4
80000c38:	00d7f6b3          	and	a3,a5,a3
80000c3c:	3e069c63          	bnez	a3,80001034 <printf_+0x6c0>
80000c40:	00a00793          	li	a5,10
80000c44:	30f70863          	beq	a4,a5,80000f54 <printf_+0x5e0>
80000c48:	00700793          	li	a5,7
80000c4c:	daf71ce3          	bne	a4,a5,80000a04 <printf_+0x90>
80000c50:	000d2683          	lw	a3,0(s10)
80000c54:	02196893          	ori	a7,s2,33
80000c58:	01112023          	sw	a7,0(sp)
80000c5c:	000a0613          	mv	a2,s4
80000c60:	00800893          	li	a7,8
80000c64:	000d8813          	mv	a6,s11
80000c68:	01000793          	li	a5,16
80000c6c:	00000713          	li	a4,0
80000c70:	000b0593          	mv	a1,s6
80000c74:	fffff517          	auipc	a0,0xfffff
80000c78:	79450513          	addi	a0,a0,1940 # 80000408 <_out_char>
80000c7c:	8c1ff0ef          	jal	8000053c <_ntoa_long.constprop.0>
80000c80:	004d0d13          	addi	s10,s10,4
80000c84:	00050a13          	mv	s4,a0
80000c88:	d91ff06f          	j	80000a18 <printf_+0xa4>
80000c8c:	00144503          	lbu	a0,1(s0)
80000c90:	00296913          	ori	s2,s2,2
80000c94:	00070413          	mv	s0,a4
80000c98:	409004b3          	neg	s1,s1
80000c9c:	00170713          	addi	a4,a4,1
80000ca0:	dc9ff06f          	j	80000a68 <printf_+0xf4>
80000ca4:	04600793          	li	a5,70
80000ca8:	00f51463          	bne	a0,a5,80000cb0 <printf_+0x33c>
80000cac:	02096913          	ori	s2,s2,32
80000cb0:	007d0d13          	addi	s10,s10,7
80000cb4:	ff8d7d13          	andi	s10,s10,-8
80000cb8:	004d2783          	lw	a5,4(s10)
80000cbc:	000d2703          	lw	a4,0(s10)
80000cc0:	008d0d13          	addi	s10,s10,8
80000cc4:	00078693          	mv	a3,a5
80000cc8:	00070613          	mv	a2,a4
80000ccc:	00070513          	mv	a0,a4
80000cd0:	00078593          	mv	a1,a5
80000cd4:	02f12023          	sw	a5,32(sp)
80000cd8:	00e12a23          	sw	a4,20(sp)
80000cdc:	215000ef          	jal	800016f0 <__eqdf2>
80000ce0:	60051a63          	bnez	a0,800012f4 <printf_+0x980>
80000ce4:	00002797          	auipc	a5,0x2
80000ce8:	3f478793          	addi	a5,a5,1012 # 800030d8 <fromhost+0x18>
80000cec:	0007a603          	lw	a2,0(a5)
80000cf0:	0047a683          	lw	a3,4(a5)
80000cf4:	01412503          	lw	a0,20(sp)
80000cf8:	02012583          	lw	a1,32(sp)
80000cfc:	3b1000ef          	jal	800018ac <__ledf2>
80000d00:	62054263          	bltz	a0,80001324 <printf_+0x9b0>
80000d04:	00002797          	auipc	a5,0x2
80000d08:	3dc78793          	addi	a5,a5,988 # 800030e0 <fromhost+0x20>
80000d0c:	0007a603          	lw	a2,0(a5)
80000d10:	0047a683          	lw	a3,4(a5)
80000d14:	01412503          	lw	a0,20(sp)
80000d18:	02012583          	lw	a1,32(sp)
80000d1c:	2ad000ef          	jal	800017c8 <__gedf2>
80000d20:	42a04e63          	bgtz	a0,8000115c <printf_+0x7e8>
80000d24:	00002797          	auipc	a5,0x2
80000d28:	3a478793          	addi	a5,a5,932 # 800030c8 <fromhost+0x8>
80000d2c:	0007a603          	lw	a2,0(a5)
80000d30:	0047a683          	lw	a3,4(a5)
80000d34:	01412503          	lw	a0,20(sp)
80000d38:	02012583          	lw	a1,32(sp)
80000d3c:	28d000ef          	jal	800017c8 <__gedf2>
80000d40:	5aa04663          	bgtz	a0,800012ec <printf_+0x978>
80000d44:	00002797          	auipc	a5,0x2
80000d48:	3a478793          	addi	a5,a5,932 # 800030e8 <fromhost+0x28>
80000d4c:	0007a603          	lw	a2,0(a5)
80000d50:	0047a683          	lw	a3,4(a5)
80000d54:	01412503          	lw	a0,20(sp)
80000d58:	02012583          	lw	a1,32(sp)
80000d5c:	351000ef          	jal	800018ac <__ledf2>
80000d60:	58054663          	bltz	a0,800012ec <printf_+0x978>
80000d64:	01412503          	lw	a0,20(sp)
80000d68:	02012583          	lw	a1,32(sp)
80000d6c:	00000613          	li	a2,0
80000d70:	00000693          	li	a3,0
80000d74:	339000ef          	jal	800018ac <__ledf2>
80000d78:	5e054063          	bltz	a0,80001358 <printf_+0x9e4>
80000d7c:	02012223          	sw	zero,36(sp)
80000d80:	40097713          	andi	a4,s2,1024
80000d84:	000714e3          	bnez	a4,8000158c <printf_+0xc18>
80000d88:	00002797          	auipc	a5,0x2
80000d8c:	34878793          	addi	a5,a5,840 # 800030d0 <fromhost+0x10>
80000d90:	0047a803          	lw	a6,4(a5)
80000d94:	0007a783          	lw	a5,0(a5)
80000d98:	00600e93          	li	t4,6
80000d9c:	01012e23          	sw	a6,28(sp)
80000da0:	00f12c23          	sw	a5,24(sp)
80000da4:	05010e13          	addi	t3,sp,80
80000da8:	02012583          	lw	a1,32(sp)
80000dac:	01412503          	lw	a0,20(sp)
80000db0:	03c12e23          	sw	t3,60(sp)
80000db4:	03d12c23          	sw	t4,56(sp)
80000db8:	02e12a23          	sw	a4,52(sp)
80000dbc:	5d1010ef          	jal	80002b8c <__fixdfsi>
80000dc0:	00050d93          	mv	s11,a0
80000dc4:	795010ef          	jal	80002d58 <__floatsidf>
80000dc8:	00050613          	mv	a2,a0
80000dcc:	00058693          	mv	a3,a1
80000dd0:	01412503          	lw	a0,20(sp)
80000dd4:	02012583          	lw	a1,32(sp)
80000dd8:	304010ef          	jal	800020dc <__subdf3>
80000ddc:	01812603          	lw	a2,24(sp)
80000de0:	01c12683          	lw	a3,28(sp)
80000de4:	3ad000ef          	jal	80001990 <__muldf3>
80000de8:	02b12623          	sw	a1,44(sp)
80000dec:	02a12823          	sw	a0,48(sp)
80000df0:	6a1010ef          	jal	80002c90 <__fixunsdfsi>
80000df4:	02a12423          	sw	a0,40(sp)
80000df8:	7e1010ef          	jal	80002dd8 <__floatunsidf>
80000dfc:	03012f03          	lw	t5,48(sp)
80000e00:	02c12783          	lw	a5,44(sp)
80000e04:	00050613          	mv	a2,a0
80000e08:	00058693          	mv	a3,a1
80000e0c:	000f0513          	mv	a0,t5
80000e10:	00078593          	mv	a1,a5
80000e14:	2c8010ef          	jal	800020dc <__subdf3>
80000e18:	00002797          	auipc	a5,0x2
80000e1c:	2d878793          	addi	a5,a5,728 # 800030f0 <fromhost+0x30>
80000e20:	0007a603          	lw	a2,0(a5)
80000e24:	0047a683          	lw	a3,4(a5)
80000e28:	02a12623          	sw	a0,44(sp)
80000e2c:	02b12823          	sw	a1,48(sp)
80000e30:	199000ef          	jal	800017c8 <__gedf2>
80000e34:	02812803          	lw	a6,40(sp)
80000e38:	03412703          	lw	a4,52(sp)
80000e3c:	03812e83          	lw	t4,56(sp)
80000e40:	03c12e03          	lw	t3,60(sp)
80000e44:	6ea05a63          	blez	a0,80001538 <printf_+0xbc4>
80000e48:	00180813          	addi	a6,a6,1
80000e4c:	00080513          	mv	a0,a6
80000e50:	03c12a23          	sw	t3,52(sp)
80000e54:	03d12823          	sw	t4,48(sp)
80000e58:	02e12623          	sw	a4,44(sp)
80000e5c:	03012423          	sw	a6,40(sp)
80000e60:	779010ef          	jal	80002dd8 <__floatunsidf>
80000e64:	01812603          	lw	a2,24(sp)
80000e68:	01c12683          	lw	a3,28(sp)
80000e6c:	15d000ef          	jal	800017c8 <__gedf2>
80000e70:	02812803          	lw	a6,40(sp)
80000e74:	02c12703          	lw	a4,44(sp)
80000e78:	03012e83          	lw	t4,48(sp)
80000e7c:	03412e03          	lw	t3,52(sp)
80000e80:	00054663          	bltz	a0,80000e8c <printf_+0x518>
80000e84:	001d8d93          	addi	s11,s11,1
80000e88:	00000813          	li	a6,0
80000e8c:	560e8863          	beqz	t4,800013fc <printf_+0xa88>
80000e90:	02000513          	li	a0,32
80000e94:	00a00613          	li	a2,10
80000e98:	00900f13          	li	t5,9
80000e9c:	68a70a63          	beq	a4,a0,80001530 <printf_+0xbbc>
80000ea0:	02c877b3          	remu	a5,a6,a2
80000ea4:	00170713          	addi	a4,a4,1
80000ea8:	00ee06b3          	add	a3,t3,a4
80000eac:	fffe8e93          	addi	t4,t4,-1
80000eb0:	03078793          	addi	a5,a5,48
80000eb4:	fef68fa3          	sb	a5,-1(a3)
80000eb8:	02c857b3          	divu	a5,a6,a2
80000ebc:	650f7463          	bgeu	t5,a6,80001504 <printf_+0xb90>
80000ec0:	00078813          	mv	a6,a5
80000ec4:	fd9ff06f          	j	80000e9c <printf_+0x528>
80000ec8:	004d0793          	addi	a5,s10,4
80000ecc:	00297893          	andi	a7,s2,2
80000ed0:	00f12a23          	sw	a5,20(sp)
80000ed4:	001a0913          	addi	s2,s4,1
80000ed8:	3a088663          	beqz	a7,80001284 <printf_+0x910>
80000edc:	000d4503          	lbu	a0,0(s10)
80000ee0:	000a0613          	mv	a2,s4
80000ee4:	fff00693          	li	a3,-1
80000ee8:	000b0593          	mv	a1,s6
80000eec:	d1cff0ef          	jal	80000408 <_out_char>
80000ef0:	00100793          	li	a5,1
80000ef4:	009a0a33          	add	s4,s4,s1
80000ef8:	4a97f663          	bgeu	a5,s1,800013a4 <printf_+0xa30>
80000efc:	00090613          	mv	a2,s2
80000f00:	fff00693          	li	a3,-1
80000f04:	00190913          	addi	s2,s2,1
80000f08:	000b0593          	mv	a1,s6
80000f0c:	02000513          	li	a0,32
80000f10:	cf8ff0ef          	jal	80000408 <_out_char>
80000f14:	ff4914e3          	bne	s2,s4,80000efc <printf_+0x588>
80000f18:	01412d03          	lw	s10,20(sp)
80000f1c:	afdff06f          	j	80000a18 <printf_+0xa4>
80000f20:	02500793          	li	a5,37
80000f24:	aef510e3          	bne	a0,a5,80000a04 <printf_+0x90>
80000f28:	000a0613          	mv	a2,s4
80000f2c:	fff00693          	li	a3,-1
80000f30:	000b0593          	mv	a1,s6
80000f34:	02500513          	li	a0,37
80000f38:	001a0a13          	addi	s4,s4,1
80000f3c:	cccff0ef          	jal	80000408 <_out_char>
80000f40:	ad9ff06f          	j	80000a18 <printf_+0xa4>
80000f44:	00144503          	lbu	a0,1(s0)
80000f48:	26e50063          	beq	a0,a4,800011a8 <printf_+0x834>
80000f4c:	08096913          	ori	s2,s2,128
80000f50:	bfdff06f          	j	80000b4c <printf_+0x1d8>
80000f54:	000d2583          	lw	a1,0(s10)
80000f58:	004d0793          	addi	a5,s10,4
80000f5c:	00f12a23          	sw	a5,20(sp)
80000f60:	0005c603          	lbu	a2,0(a1)
80000f64:	00060513          	mv	a0,a2
80000f68:	160d9063          	bnez	s11,800010c8 <printf_+0x754>
80000f6c:	ffe00793          	li	a5,-2
80000f70:	02060463          	beqz	a2,80000f98 <printf_+0x624>
80000f74:	00178793          	addi	a5,a5,1
80000f78:	00f586b3          	add	a3,a1,a5
80000f7c:	00058793          	mv	a5,a1
80000f80:	0080006f          	j	80000f88 <printf_+0x614>
80000f84:	00d78863          	beq	a5,a3,80000f94 <printf_+0x620>
80000f88:	0017c703          	lbu	a4,1(a5)
80000f8c:	00178793          	addi	a5,a5,1
80000f90:	fe071ae3          	bnez	a4,80000f84 <printf_+0x610>
80000f94:	40b786b3          	sub	a3,a5,a1
80000f98:	40097d13          	andi	s10,s2,1024
80000f9c:	000d0463          	beqz	s10,80000fa4 <printf_+0x630>
80000fa0:	0bb6d6b3          	minu	a3,a3,s11
80000fa4:	00297893          	andi	a7,s2,2
80000fa8:	26088a63          	beqz	a7,8000121c <printf_+0x8a8>
80000fac:	24060263          	beqz	a2,800011f0 <printf_+0x87c>
80000fb0:	000a0613          	mv	a2,s4
80000fb4:	00040913          	mv	s2,s0
80000fb8:	03112023          	sw	a7,32(sp)
80000fbc:	000a0413          	mv	s0,s4
80000fc0:	00d12c23          	sw	a3,24(sp)
80000fc4:	02912223          	sw	s1,36(sp)
80000fc8:	00058a13          	mv	s4,a1
80000fcc:	000d0863          	beqz	s10,80000fdc <printf_+0x668>
80000fd0:	fffd8793          	addi	a5,s11,-1
80000fd4:	200d8063          	beqz	s11,800011d4 <printf_+0x860>
80000fd8:	00078d93          	mv	s11,a5
80000fdc:	fff00693          	li	a3,-1
80000fe0:	000b0593          	mv	a1,s6
80000fe4:	00160493          	addi	s1,a2,1
80000fe8:	c20ff0ef          	jal	80000408 <_out_char>
80000fec:	40848733          	sub	a4,s1,s0
80000ff0:	00ea0733          	add	a4,s4,a4
80000ff4:	00074503          	lbu	a0,0(a4)
80000ff8:	18050663          	beqz	a0,80001184 <printf_+0x810>
80000ffc:	00048613          	mv	a2,s1
80001000:	fcdff06f          	j	80000fcc <printf_+0x658>
80001004:	00900713          	li	a4,9
80001008:	00168693          	addi	a3,a3,1
8000100c:	21bdcdb3          	sh2add	s11,s11,s11
80001010:	20adadb3          	sh1add	s11,s11,a0
80001014:	0006c503          	lbu	a0,0(a3)
80001018:	fd0d8d93          	addi	s11,s11,-48
8000101c:	fd050793          	addi	a5,a0,-48
80001020:	0ff7f793          	zext.b	a5,a5
80001024:	fef772e3          	bgeu	a4,a5,80001008 <printf_+0x694>
80001028:	00068413          	mv	s0,a3
8000102c:	00168713          	addi	a4,a3,1
80001030:	a45ff06f          	j	80000a74 <printf_+0x100>
80001034:	06f00793          	li	a5,111
80001038:	14f50263          	beq	a0,a5,8000117c <printf_+0x808>
8000103c:	28a7ec63          	bltu	a5,a0,800012d4 <printf_+0x960>
80001040:	06900713          	li	a4,105
80001044:	fef97793          	andi	a5,s2,-17
80001048:	36e51463          	bne	a0,a4,800013b0 <printf_+0xa3c>
8000104c:	40097713          	andi	a4,s2,1024
80001050:	00070663          	beqz	a4,8000105c <printf_+0x6e8>
80001054:	ffe97793          	andi	a5,s2,-2
80001058:	fef7f793          	andi	a5,a5,-17
8000105c:	2007f713          	andi	a4,a5,512
80001060:	9a071ce3          	bnez	a4,80000a18 <printf_+0xa4>
80001064:	1007f713          	andi	a4,a5,256
80001068:	004d0913          	addi	s2,s10,4
8000106c:	34071863          	bnez	a4,800013bc <printf_+0xa48>
80001070:	0407f713          	andi	a4,a5,64
80001074:	2c071c63          	bnez	a4,8000134c <printf_+0x9d8>
80001078:	0807f713          	andi	a4,a5,128
8000107c:	5e070863          	beqz	a4,8000166c <printf_+0xcf8>
80001080:	000d1703          	lh	a4,0(s10)
80001084:	40f75613          	srai	a2,a4,0xf
80001088:	00c746b3          	xor	a3,a4,a2
8000108c:	40c686b3          	sub	a3,a3,a2
80001090:	0806c6b3          	zext.h	a3,a3
80001094:	00f12023          	sw	a5,0(sp)
80001098:	00048893          	mv	a7,s1
8000109c:	000d8813          	mv	a6,s11
800010a0:	00a00793          	li	a5,10
800010a4:	01f75713          	srli	a4,a4,0x1f
800010a8:	0940006f          	j	8000113c <printf_+0x7c8>
800010ac:	000d2803          	lw	a6,0(s10)
800010b0:	00244503          	lbu	a0,2(s0)
800010b4:	00240413          	addi	s0,s0,2
800010b8:	004d0d13          	addi	s10,s10,4
800010bc:	00140713          	addi	a4,s0,1
800010c0:	0a086db3          	max	s11,a6,zero
800010c4:	9b1ff06f          	j	80000a74 <printf_+0x100>
800010c8:	ec0608e3          	beqz	a2,80000f98 <printf_+0x624>
800010cc:	fffd8793          	addi	a5,s11,-1
800010d0:	ea5ff06f          	j	80000f74 <printf_+0x600>
800010d4:	00244503          	lbu	a0,2(s0)
800010d8:	30096913          	ori	s2,s2,768
800010dc:	00240793          	addi	a5,s0,2
800010e0:	a6dff06f          	j	80000b4c <printf_+0x1d8>
800010e4:	05800793          	li	a5,88
800010e8:	0ef50063          	beq	a0,a5,800011c8 <printf_+0x854>
800010ec:	06200713          	li	a4,98
800010f0:	00200793          	li	a5,2
800010f4:	4ee51463          	bne	a0,a4,800015dc <printf_+0xc68>
800010f8:	ffb97713          	andi	a4,s2,-5
800010fc:	40097693          	andi	a3,s2,1024
80001100:	ff777713          	andi	a4,a4,-9
80001104:	00068463          	beqz	a3,8000110c <printf_+0x798>
80001108:	ff297713          	andi	a4,s2,-14
8000110c:	20077693          	andi	a3,a4,512
80001110:	900694e3          	bnez	a3,80000a18 <printf_+0xa4>
80001114:	10077693          	andi	a3,a4,256
80001118:	004d0913          	addi	s2,s10,4
8000111c:	26069263          	bnez	a3,80001380 <printf_+0xa0c>
80001120:	04077693          	andi	a3,a4,64
80001124:	4c068863          	beqz	a3,800015f4 <printf_+0xc80>
80001128:	000d4683          	lbu	a3,0(s10)
8000112c:	00e12023          	sw	a4,0(sp)
80001130:	00048893          	mv	a7,s1
80001134:	000d8813          	mv	a6,s11
80001138:	00000713          	li	a4,0
8000113c:	000a0613          	mv	a2,s4
80001140:	000b0593          	mv	a1,s6
80001144:	fffff517          	auipc	a0,0xfffff
80001148:	2c450513          	addi	a0,a0,708 # 80000408 <_out_char>
8000114c:	bf0ff0ef          	jal	8000053c <_ntoa_long.constprop.0>
80001150:	00050a13          	mv	s4,a0
80001154:	00090d13          	mv	s10,s2
80001158:	8c1ff06f          	j	80000a18 <printf_+0xa4>
8000115c:	00497793          	andi	a5,s2,4
80001160:	1c079e63          	bnez	a5,8000133c <printf_+0x9c8>
80001164:	00002697          	auipc	a3,0x2
80001168:	eb468693          	addi	a3,a3,-332 # 80003018 <pow10.0+0x58>
8000116c:	00300713          	li	a4,3
80001170:	00090813          	mv	a6,s2
80001174:	00048793          	mv	a5,s1
80001178:	1900006f          	j	80001308 <printf_+0x994>
8000117c:	00800793          	li	a5,8
80001180:	f79ff06f          	j	800010f8 <printf_+0x784>
80001184:	00090413          	mv	s0,s2
80001188:	02012883          	lw	a7,32(sp)
8000118c:	00048913          	mv	s2,s1
80001190:	01812683          	lw	a3,24(sp)
80001194:	02412483          	lw	s1,36(sp)
80001198:	04089a63          	bnez	a7,800011ec <printf_+0x878>
8000119c:	01412d03          	lw	s10,20(sp)
800011a0:	00090a13          	mv	s4,s2
800011a4:	875ff06f          	j	80000a18 <printf_+0xa4>
800011a8:	00244503          	lbu	a0,2(s0)
800011ac:	0c096913          	ori	s2,s2,192
800011b0:	00240793          	addi	a5,s0,2
800011b4:	999ff06f          	j	80000b4c <printf_+0x1d8>
800011b8:	00000613          	li	a2,0
800011bc:	00000493          	li	s1,0
800011c0:	04810b13          	addi	s6,sp,72
800011c4:	9f1ff06f          	j	80000bb4 <printf_+0x240>
800011c8:	02096913          	ori	s2,s2,32
800011cc:	01000793          	li	a5,16
800011d0:	f29ff06f          	j	800010f8 <printf_+0x784>
800011d4:	00090413          	mv	s0,s2
800011d8:	02012883          	lw	a7,32(sp)
800011dc:	01812683          	lw	a3,24(sp)
800011e0:	02412483          	lw	s1,36(sp)
800011e4:	00060913          	mv	s2,a2
800011e8:	fb1ff06f          	j	80001198 <printf_+0x824>
800011ec:	00090a13          	mv	s4,s2
800011f0:	0896f663          	bgeu	a3,s1,8000127c <printf_+0x908>
800011f4:	01448933          	add	s2,s1,s4
800011f8:	40d90933          	sub	s2,s2,a3
800011fc:	000a0613          	mv	a2,s4
80001200:	fff00693          	li	a3,-1
80001204:	001a0a13          	addi	s4,s4,1
80001208:	000b0593          	mv	a1,s6
8000120c:	02000513          	li	a0,32
80001210:	9f8ff0ef          	jal	80000408 <_out_char>
80001214:	ff2a14e3          	bne	s4,s2,800011fc <printf_+0x888>
80001218:	f85ff06f          	j	8000119c <printf_+0x828>
8000121c:	4896f663          	bgeu	a3,s1,800016a8 <printf_+0xd34>
80001220:	01448933          	add	s2,s1,s4
80001224:	00040793          	mv	a5,s0
80001228:	40d90933          	sub	s2,s2,a3
8000122c:	000a0413          	mv	s0,s4
80001230:	02b12023          	sw	a1,32(sp)
80001234:	01112c23          	sw	a7,24(sp)
80001238:	00078a13          	mv	s4,a5
8000123c:	00040613          	mv	a2,s0
80001240:	fff00693          	li	a3,-1
80001244:	00140413          	addi	s0,s0,1
80001248:	000b0593          	mv	a1,s6
8000124c:	02000513          	li	a0,32
80001250:	9b8ff0ef          	jal	80000408 <_out_char>
80001254:	ff2414e3          	bne	s0,s2,8000123c <printf_+0x8c8>
80001258:	02012583          	lw	a1,32(sp)
8000125c:	01812883          	lw	a7,24(sp)
80001260:	000a0793          	mv	a5,s4
80001264:	0005c603          	lbu	a2,0(a1)
80001268:	00040a13          	mv	s4,s0
8000126c:	00148693          	addi	a3,s1,1
80001270:	00078413          	mv	s0,a5
80001274:	00060513          	mv	a0,a2
80001278:	d2061ce3          	bnez	a2,80000fb0 <printf_+0x63c>
8000127c:	000a0913          	mv	s2,s4
80001280:	f1dff06f          	j	8000119c <printf_+0x828>
80001284:	00100793          	li	a5,1
80001288:	1097f463          	bgeu	a5,s1,80001390 <printf_+0xa1c>
8000128c:	fffa0913          	addi	s2,s4,-1
80001290:	00990933          	add	s2,s2,s1
80001294:	000a0d93          	mv	s11,s4
80001298:	000d8613          	mv	a2,s11
8000129c:	fff00693          	li	a3,-1
800012a0:	001d8d93          	addi	s11,s11,1
800012a4:	000b0593          	mv	a1,s6
800012a8:	02000513          	li	a0,32
800012ac:	95cff0ef          	jal	80000408 <_out_char>
800012b0:	ff2d94e3          	bne	s11,s2,80001298 <printf_+0x924>
800012b4:	000d4503          	lbu	a0,0(s10)
800012b8:	fff00693          	li	a3,-1
800012bc:	000d8613          	mv	a2,s11
800012c0:	000b0593          	mv	a1,s6
800012c4:	944ff0ef          	jal	80000408 <_out_char>
800012c8:	009a0a33          	add	s4,s4,s1
800012cc:	01412d03          	lw	s10,20(sp)
800012d0:	f48ff06f          	j	80000a18 <printf_+0xa4>
800012d4:	07800713          	li	a4,120
800012d8:	01000793          	li	a5,16
800012dc:	e0e50ee3          	beq	a0,a4,800010f8 <printf_+0x784>
800012e0:	fef97913          	andi	s2,s2,-17
800012e4:	00a00793          	li	a5,10
800012e8:	e11ff06f          	j	800010f8 <printf_+0x784>
800012ec:	00000a13          	li	s4,0
800012f0:	f28ff06f          	j	80000a18 <printf_+0xa4>
800012f4:	00090813          	mv	a6,s2
800012f8:	00048793          	mv	a5,s1
800012fc:	00300713          	li	a4,3
80001300:	00002697          	auipc	a3,0x2
80001304:	d1c68693          	addi	a3,a3,-740 # 8000301c <pow10.0+0x5c>
80001308:	000a0613          	mv	a2,s4
8000130c:	000b0593          	mv	a1,s6
80001310:	fffff517          	auipc	a0,0xfffff
80001314:	0f850513          	addi	a0,a0,248 # 80000408 <_out_char>
80001318:	8fcff0ef          	jal	80000414 <_out_rev.constprop.0>
8000131c:	00050a13          	mv	s4,a0
80001320:	ef8ff06f          	j	80000a18 <printf_+0xa4>
80001324:	00090813          	mv	a6,s2
80001328:	00048793          	mv	a5,s1
8000132c:	00400713          	li	a4,4
80001330:	00002697          	auipc	a3,0x2
80001334:	cf068693          	addi	a3,a3,-784 # 80003020 <pow10.0+0x60>
80001338:	fd1ff06f          	j	80001308 <printf_+0x994>
8000133c:	00002697          	auipc	a3,0x2
80001340:	cd468693          	addi	a3,a3,-812 # 80003010 <pow10.0+0x50>
80001344:	00400713          	li	a4,4
80001348:	e29ff06f          	j	80001170 <printf_+0x7fc>
8000134c:	000d4703          	lbu	a4,0(s10)
80001350:	00070693          	mv	a3,a4
80001354:	d41ff06f          	j	80001094 <printf_+0x720>
80001358:	01412603          	lw	a2,20(sp)
8000135c:	02012683          	lw	a3,32(sp)
80001360:	00000513          	li	a0,0
80001364:	00000593          	li	a1,0
80001368:	575000ef          	jal	800020dc <__subdf3>
8000136c:	00100793          	li	a5,1
80001370:	00a12a23          	sw	a0,20(sp)
80001374:	02b12023          	sw	a1,32(sp)
80001378:	02f12223          	sw	a5,36(sp)
8000137c:	a05ff06f          	j	80000d80 <printf_+0x40c>
80001380:	000d2683          	lw	a3,0(s10)
80001384:	00048893          	mv	a7,s1
80001388:	00e12023          	sw	a4,0(sp)
8000138c:	da9ff06f          	j	80001134 <printf_+0x7c0>
80001390:	000d4503          	lbu	a0,0(s10)
80001394:	fff00693          	li	a3,-1
80001398:	000a0613          	mv	a2,s4
8000139c:	000b0593          	mv	a1,s6
800013a0:	868ff0ef          	jal	80000408 <_out_char>
800013a4:	01412d03          	lw	s10,20(sp)
800013a8:	00090a13          	mv	s4,s2
800013ac:	e6cff06f          	j	80000a18 <printf_+0xa4>
800013b0:	00078913          	mv	s2,a5
800013b4:	00a00793          	li	a5,10
800013b8:	d41ff06f          	j	800010f8 <printf_+0x784>
800013bc:	000d2683          	lw	a3,0(s10)
800013c0:	000a0613          	mv	a2,s4
800013c4:	00f12023          	sw	a5,0(sp)
800013c8:	40d00e33          	neg	t3,a3
800013cc:	01f6d713          	srli	a4,a3,0x1f
800013d0:	00048893          	mv	a7,s1
800013d4:	000d8813          	mv	a6,s11
800013d8:	00a00793          	li	a5,10
800013dc:	000b0593          	mv	a1,s6
800013e0:	fffff517          	auipc	a0,0xfffff
800013e4:	02850513          	addi	a0,a0,40 # 80000408 <_out_char>
800013e8:	0bc6e6b3          	max	a3,a3,t3
800013ec:	950ff0ef          	jal	8000053c <_ntoa_long.constprop.0>
800013f0:	00050a13          	mv	s4,a0
800013f4:	00090d13          	mv	s10,s2
800013f8:	e20ff06f          	j	80000a18 <printf_+0xa4>
800013fc:	000d8513          	mv	a0,s11
80001400:	03c12423          	sw	t3,40(sp)
80001404:	00e12c23          	sw	a4,24(sp)
80001408:	151010ef          	jal	80002d58 <__floatsidf>
8000140c:	00050613          	mv	a2,a0
80001410:	00058693          	mv	a3,a1
80001414:	01412503          	lw	a0,20(sp)
80001418:	02012583          	lw	a1,32(sp)
8000141c:	4c1000ef          	jal	800020dc <__subdf3>
80001420:	00002797          	auipc	a5,0x2
80001424:	cd078793          	addi	a5,a5,-816 # 800030f0 <fromhost+0x30>
80001428:	0007a603          	lw	a2,0(a5)
8000142c:	0047a683          	lw	a3,4(a5)
80001430:	47c000ef          	jal	800018ac <__ledf2>
80001434:	01812703          	lw	a4,24(sp)
80001438:	02812e03          	lw	t3,40(sp)
8000143c:	00054663          	bltz	a0,80001448 <printf_+0xad4>
80001440:	001df693          	andi	a3,s11,1
80001444:	00dd8db3          	add	s11,s11,a3
80001448:	02000513          	li	a0,32
8000144c:	00a00613          	li	a2,10
80001450:	06a70263          	beq	a4,a0,800014b4 <printf_+0xb40>
80001454:	02cde7b3          	rem	a5,s11,a2
80001458:	00170713          	addi	a4,a4,1
8000145c:	00ee06b3          	add	a3,t3,a4
80001460:	02cdcdb3          	div	s11,s11,a2
80001464:	03078793          	addi	a5,a5,48
80001468:	fef68fa3          	sb	a5,-1(a3)
8000146c:	fe0d92e3          	bnez	s11,80001450 <printf_+0xadc>
80001470:	00397793          	andi	a5,s2,3
80001474:	00100693          	li	a3,1
80001478:	24d78263          	beq	a5,a3,800016bc <printf_+0xd48>
8000147c:	02000793          	li	a5,32
80001480:	02f70263          	beq	a4,a5,800014a4 <printf_+0xb30>
80001484:	02412783          	lw	a5,36(sp)
80001488:	1a078263          	beqz	a5,8000162c <printf_+0xcb8>
8000148c:	04070793          	addi	a5,a4,64
80001490:	03010693          	addi	a3,sp,48
80001494:	00d787b3          	add	a5,a5,a3
80001498:	02d00693          	li	a3,45
8000149c:	fed78023          	sb	a3,-32(a5)
800014a0:	00170713          	addi	a4,a4,1
800014a4:	00090813          	mv	a6,s2
800014a8:	00048793          	mv	a5,s1
800014ac:	000e0693          	mv	a3,t3
800014b0:	e59ff06f          	j	80001308 <printf_+0x994>
800014b4:	00397793          	andi	a5,s2,3
800014b8:	00100693          	li	a3,1
800014bc:	fed794e3          	bne	a5,a3,800014a4 <printf_+0xb30>
800014c0:	fe0482e3          	beqz	s1,800014a4 <printf_+0xb30>
800014c4:	02412783          	lw	a5,36(sp)
800014c8:	1e079463          	bnez	a5,800016b0 <printf_+0xd3c>
800014cc:	00c97793          	andi	a5,s2,12
800014d0:	1e079063          	bnez	a5,800016b0 <printf_+0xd3c>
800014d4:	14977863          	bgeu	a4,s1,80001624 <printf_+0xcb0>
800014d8:	02000793          	li	a5,32
800014dc:	03000693          	li	a3,48
800014e0:	02000613          	li	a2,32
800014e4:	00f70c63          	beq	a4,a5,800014fc <printf_+0xb88>
800014e8:	00170713          	addi	a4,a4,1
800014ec:	00ee07b3          	add	a5,t3,a4
800014f0:	fed78fa3          	sb	a3,-1(a5)
800014f4:	f8e484e3          	beq	s1,a4,8000147c <printf_+0xb08>
800014f8:	fec718e3          	bne	a4,a2,800014e8 <printf_+0xb74>
800014fc:	02000713          	li	a4,32
80001500:	fa5ff06f          	j	800014a4 <printf_+0xb30>
80001504:	02a70663          	beq	a4,a0,80001530 <printf_+0xbbc>
80001508:	00ee8533          	add	a0,t4,a4
8000150c:	03000593          	li	a1,48
80001510:	02000613          	li	a2,32
80001514:	000e9663          	bnez	t4,80001520 <printf_+0xbac>
80001518:	1380006f          	j	80001650 <printf_+0xcdc>
8000151c:	12e50a63          	beq	a0,a4,80001650 <printf_+0xcdc>
80001520:	00170713          	addi	a4,a4,1
80001524:	00ee07b3          	add	a5,t3,a4
80001528:	feb78fa3          	sb	a1,-1(a5)
8000152c:	fec718e3          	bne	a4,a2,8000151c <printf_+0xba8>
80001530:	02000713          	li	a4,32
80001534:	f15ff06f          	j	80001448 <printf_+0xad4>
80001538:	00002797          	auipc	a5,0x2
8000153c:	bb878793          	addi	a5,a5,-1096 # 800030f0 <fromhost+0x30>
80001540:	02c12503          	lw	a0,44(sp)
80001544:	03012583          	lw	a1,48(sp)
80001548:	0007a603          	lw	a2,0(a5)
8000154c:	0047a683          	lw	a3,4(a5)
80001550:	03c12c23          	sw	t3,56(sp)
80001554:	03012a23          	sw	a6,52(sp)
80001558:	03d12423          	sw	t4,40(sp)
8000155c:	00e12c23          	sw	a4,24(sp)
80001560:	34c000ef          	jal	800018ac <__ledf2>
80001564:	01812703          	lw	a4,24(sp)
80001568:	02812e83          	lw	t4,40(sp)
8000156c:	03412803          	lw	a6,52(sp)
80001570:	03812e03          	lw	t3,56(sp)
80001574:	90054ce3          	bltz	a0,80000e8c <printf_+0x518>
80001578:	00080663          	beqz	a6,80001584 <printf_+0xc10>
8000157c:	00187693          	andi	a3,a6,1
80001580:	900686e3          	beqz	a3,80000e8c <printf_+0x518>
80001584:	00180813          	addi	a6,a6,1
80001588:	905ff06f          	j	80000e8c <printf_+0x518>
8000158c:	00900793          	li	a5,9
80001590:	13b7fa63          	bgeu	a5,s11,800016c4 <printf_+0xd50>
80001594:	ff7d8713          	addi	a4,s11,-9
80001598:	00000793          	li	a5,0
8000159c:	05010e13          	addi	t3,sp,80
800015a0:	03000593          	li	a1,48
800015a4:	02000613          	li	a2,32
800015a8:	00178793          	addi	a5,a5,1
800015ac:	00fe06b3          	add	a3,t3,a5
800015b0:	feb68fa3          	sb	a1,-1(a3)
800015b4:	40fd8eb3          	sub	t4,s11,a5
800015b8:	04c78663          	beq	a5,a2,80001604 <printf_+0xc90>
800015bc:	fef716e3          	bne	a4,a5,800015a8 <printf_+0xc34>
800015c0:	00002797          	auipc	a5,0x2
800015c4:	b0878793          	addi	a5,a5,-1272 # 800030c8 <fromhost+0x8>
800015c8:	0047a803          	lw	a6,4(a5)
800015cc:	0007a783          	lw	a5,0(a5)
800015d0:	01012e23          	sw	a6,28(sp)
800015d4:	00f12c23          	sw	a5,24(sp)
800015d8:	fd0ff06f          	j	80000da8 <printf_+0x434>
800015dc:	ffe97793          	andi	a5,s2,-2
800015e0:	40097713          	andi	a4,s2,1024
800015e4:	fef7f793          	andi	a5,a5,-17
800015e8:	a6071ae3          	bnez	a4,8000105c <printf_+0x6e8>
800015ec:	fef97793          	andi	a5,s2,-17
800015f0:	a6dff06f          	j	8000105c <printf_+0x6e8>
800015f4:	08077693          	andi	a3,a4,128
800015f8:	08068263          	beqz	a3,8000167c <printf_+0xd08>
800015fc:	000d5683          	lhu	a3,0(s10)
80001600:	b2dff06f          	j	8000112c <printf_+0x7b8>
80001604:	00002797          	auipc	a5,0x2
80001608:	ac478793          	addi	a5,a5,-1340 # 800030c8 <fromhost+0x8>
8000160c:	0047a803          	lw	a6,4(a5)
80001610:	0007a783          	lw	a5,0(a5)
80001614:	02000713          	li	a4,32
80001618:	01012e23          	sw	a6,28(sp)
8000161c:	00f12c23          	sw	a5,24(sp)
80001620:	f88ff06f          	j	80000da8 <printf_+0x434>
80001624:	02000793          	li	a5,32
80001628:	e6f70ee3          	beq	a4,a5,800014a4 <printf_+0xb30>
8000162c:	00497793          	andi	a5,s2,4
80001630:	04078a63          	beqz	a5,80001684 <printf_+0xd10>
80001634:	04070793          	addi	a5,a4,64
80001638:	03010693          	addi	a3,sp,48
8000163c:	00d787b3          	add	a5,a5,a3
80001640:	02b00693          	li	a3,43
80001644:	fed78023          	sb	a3,-32(a5)
80001648:	00170713          	addi	a4,a4,1
8000164c:	e59ff06f          	j	800014a4 <printf_+0xb30>
80001650:	04070793          	addi	a5,a4,64
80001654:	03010693          	addi	a3,sp,48
80001658:	00d786b3          	add	a3,a5,a3
8000165c:	02e00613          	li	a2,46
80001660:	fec68023          	sb	a2,-32(a3)
80001664:	00170713          	addi	a4,a4,1
80001668:	de1ff06f          	j	80001448 <printf_+0xad4>
8000166c:	000d2703          	lw	a4,0(s10)
80001670:	40e006b3          	neg	a3,a4
80001674:	0ad766b3          	max	a3,a4,a3
80001678:	a1dff06f          	j	80001094 <printf_+0x720>
8000167c:	000d2683          	lw	a3,0(s10)
80001680:	aadff06f          	j	8000112c <printf_+0x7b8>
80001684:	00897793          	andi	a5,s2,8
80001688:	e0078ee3          	beqz	a5,800014a4 <printf_+0xb30>
8000168c:	04070793          	addi	a5,a4,64
80001690:	03010693          	addi	a3,sp,48
80001694:	00d787b3          	add	a5,a5,a3
80001698:	02000693          	li	a3,32
8000169c:	fed78023          	sb	a3,-32(a5)
800016a0:	00170713          	addi	a4,a4,1
800016a4:	e01ff06f          	j	800014a4 <printf_+0xb30>
800016a8:	00168693          	addi	a3,a3,1
800016ac:	bc9ff06f          	j	80001274 <printf_+0x900>
800016b0:	fff48493          	addi	s1,s1,-1
800016b4:	e29762e3          	bltu	a4,s1,800014d8 <printf_+0xb64>
800016b8:	dc5ff06f          	j	8000147c <printf_+0xb08>
800016bc:	dc0480e3          	beqz	s1,8000147c <printf_+0xb08>
800016c0:	e05ff06f          	j	800014c4 <printf_+0xb50>
800016c4:	00002797          	auipc	a5,0x2
800016c8:	8fc78793          	addi	a5,a5,-1796 # 80002fc0 <pow10.0>
800016cc:	20fde7b3          	sh3add	a5,s11,a5
800016d0:	0047a803          	lw	a6,4(a5)
800016d4:	0007a783          	lw	a5,0(a5)
800016d8:	000d8e93          	mv	t4,s11
800016dc:	01012e23          	sw	a6,28(sp)
800016e0:	00f12c23          	sw	a5,24(sp)
800016e4:	00000713          	li	a4,0
800016e8:	05010e13          	addi	t3,sp,80
800016ec:	ebcff06f          	j	80000da8 <printf_+0x434>

800016f0 <__eqdf2>:
800016f0:	00050893          	mv	a7,a0
800016f4:	002027f3          	frrm	a5
800016f8:	001007b7          	lui	a5,0x100
800016fc:	0145d813          	srli	a6,a1,0x14
80001700:	fff78793          	addi	a5,a5,-1 # fffff <_tbss_end+0xfffff>
80001704:	0146d313          	srli	t1,a3,0x14
80001708:	00050e13          	mv	t3,a0
8000170c:	7ff87813          	andi	a6,a6,2047
80001710:	7ff00513          	li	a0,2047
80001714:	00b7f733          	and	a4,a5,a1
80001718:	00060e93          	mv	t4,a2
8000171c:	00d7f7b3          	and	a5,a5,a3
80001720:	01f5d593          	srli	a1,a1,0x1f
80001724:	7ff37313          	andi	t1,t1,2047
80001728:	01f6d693          	srli	a3,a3,0x1f
8000172c:	00a81a63          	bne	a6,a0,80001740 <__eqdf2+0x50>
80001730:	01176533          	or	a0,a4,a7
80001734:	02051c63          	bnez	a0,8000176c <__eqdf2+0x7c>
80001738:	05031c63          	bne	t1,a6,80001790 <__eqdf2+0xa0>
8000173c:	0080006f          	j	80001744 <__eqdf2+0x54>
80001740:	04a31c63          	bne	t1,a0,80001798 <__eqdf2+0xa8>
80001744:	00c7e533          	or	a0,a5,a2
80001748:	04050863          	beqz	a0,80001798 <__eqdf2+0xa8>
8000174c:	7ff00693          	li	a3,2047
80001750:	02d81c63          	bne	a6,a3,80001788 <__eqdf2+0x98>
80001754:	011768b3          	or	a7,a4,a7
80001758:	02088263          	beqz	a7,8000177c <__eqdf2+0x8c>
8000175c:	000806b7          	lui	a3,0x80
80001760:	00d77e63          	bgeu	a4,a3,8000177c <__eqdf2+0x8c>
80001764:	00186073          	csrsi	fflags,16
80001768:	0280006f          	j	80001790 <__eqdf2+0xa0>
8000176c:	000806b7          	lui	a3,0x80
80001770:	fed76ae3          	bltu	a4,a3,80001764 <__eqdf2+0x74>
80001774:	00100513          	li	a0,1
80001778:	05031663          	bne	t1,a6,800017c4 <__eqdf2+0xd4>
8000177c:	00c7e633          	or	a2,a5,a2
80001780:	00100513          	li	a0,1
80001784:	04060063          	beqz	a2,800017c4 <__eqdf2+0xd4>
80001788:	00080737          	lui	a4,0x80
8000178c:	fce7ece3          	bltu	a5,a4,80001764 <__eqdf2+0x74>
80001790:	00100513          	li	a0,1
80001794:	00008067          	ret
80001798:	00100513          	li	a0,1
8000179c:	02681463          	bne	a6,t1,800017c4 <__eqdf2+0xd4>
800017a0:	02f71263          	bne	a4,a5,800017c4 <__eqdf2+0xd4>
800017a4:	03de1063          	bne	t3,t4,800017c4 <__eqdf2+0xd4>
800017a8:	00d58a63          	beq	a1,a3,800017bc <__eqdf2+0xcc>
800017ac:	00081c63          	bnez	a6,800017c4 <__eqdf2+0xd4>
800017b0:	01176733          	or	a4,a4,a7
800017b4:	00e03533          	snez	a0,a4
800017b8:	00008067          	ret
800017bc:	00000513          	li	a0,0
800017c0:	00008067          	ret
800017c4:	00008067          	ret

800017c8 <__gedf2>:
800017c8:	00050813          	mv	a6,a0
800017cc:	002027f3          	frrm	a5
800017d0:	00100737          	lui	a4,0x100
800017d4:	0146d793          	srli	a5,a3,0x14
800017d8:	0145d893          	srli	a7,a1,0x14
800017dc:	fff70713          	addi	a4,a4,-1 # fffff <_tbss_end+0xfffff>
800017e0:	00050e13          	mv	t3,a0
800017e4:	7ff8f893          	andi	a7,a7,2047
800017e8:	7ff7f513          	andi	a0,a5,2047
800017ec:	7ff00793          	li	a5,2047
800017f0:	00b77333          	and	t1,a4,a1
800017f4:	00060e93          	mv	t4,a2
800017f8:	00d77733          	and	a4,a4,a3
800017fc:	01f5d593          	srli	a1,a1,0x1f
80001800:	01f6d693          	srli	a3,a3,0x1f
80001804:	00f89663          	bne	a7,a5,80001810 <__gedf2+0x48>
80001808:	010367b3          	or	a5,t1,a6
8000180c:	06079c63          	bnez	a5,80001884 <__gedf2+0xbc>
80001810:	7ff00793          	li	a5,2047
80001814:	00f51663          	bne	a0,a5,80001820 <__gedf2+0x58>
80001818:	00c767b3          	or	a5,a4,a2
8000181c:	06079463          	bnez	a5,80001884 <__gedf2+0xbc>
80001820:	00000793          	li	a5,0
80001824:	00089663          	bnez	a7,80001830 <__gedf2+0x68>
80001828:	01036833          	or	a6,t1,a6
8000182c:	00183793          	seqz	a5,a6
80001830:	06051063          	bnez	a0,80001890 <__gedf2+0xc8>
80001834:	00c76633          	or	a2,a4,a2
80001838:	00078c63          	beqz	a5,80001850 <__gedf2+0x88>
8000183c:	02060063          	beqz	a2,8000185c <__gedf2+0x94>
80001840:	00100513          	li	a0,1
80001844:	00069c63          	bnez	a3,8000185c <__gedf2+0x94>
80001848:	fff00513          	li	a0,-1
8000184c:	00008067          	ret
80001850:	04061263          	bnez	a2,80001894 <__gedf2+0xcc>
80001854:	fff00513          	li	a0,-1
80001858:	04058663          	beqz	a1,800018a4 <__gedf2+0xdc>
8000185c:	00008067          	ret
80001860:	fea8c0e3          	blt	a7,a0,80001840 <__gedf2+0x78>
80001864:	fe6768e3          	bltu	a4,t1,80001854 <__gedf2+0x8c>
80001868:	00e31863          	bne	t1,a4,80001878 <__gedf2+0xb0>
8000186c:	ffcee4e3          	bltu	t4,t3,80001854 <__gedf2+0x8c>
80001870:	00000513          	li	a0,0
80001874:	ffde74e3          	bgeu	t3,t4,8000185c <__gedf2+0x94>
80001878:	00100513          	li	a0,1
8000187c:	fe0590e3          	bnez	a1,8000185c <__gedf2+0x94>
80001880:	fc9ff06f          	j	80001848 <__gedf2+0x80>
80001884:	00186073          	csrsi	fflags,16
80001888:	ffe00513          	li	a0,-2
8000188c:	00008067          	ret
80001890:	fa0798e3          	bnez	a5,80001840 <__gedf2+0x78>
80001894:	fcb690e3          	bne	a3,a1,80001854 <__gedf2+0x8c>
80001898:	fd1554e3          	bge	a0,a7,80001860 <__gedf2+0x98>
8000189c:	fff00513          	li	a0,-1
800018a0:	fa069ee3          	bnez	a3,8000185c <__gedf2+0x94>
800018a4:	00100513          	li	a0,1
800018a8:	00008067          	ret

800018ac <__ledf2>:
800018ac:	00050813          	mv	a6,a0
800018b0:	002027f3          	frrm	a5
800018b4:	00100737          	lui	a4,0x100
800018b8:	0146d793          	srli	a5,a3,0x14
800018bc:	0145d893          	srli	a7,a1,0x14
800018c0:	fff70713          	addi	a4,a4,-1 # fffff <_tbss_end+0xfffff>
800018c4:	00050e13          	mv	t3,a0
800018c8:	7ff8f893          	andi	a7,a7,2047
800018cc:	7ff7f513          	andi	a0,a5,2047
800018d0:	7ff00793          	li	a5,2047
800018d4:	00b77333          	and	t1,a4,a1
800018d8:	00060e93          	mv	t4,a2
800018dc:	00d77733          	and	a4,a4,a3
800018e0:	01f5d593          	srli	a1,a1,0x1f
800018e4:	01f6d693          	srli	a3,a3,0x1f
800018e8:	00f89663          	bne	a7,a5,800018f4 <__ledf2+0x48>
800018ec:	010367b3          	or	a5,t1,a6
800018f0:	06079c63          	bnez	a5,80001968 <__ledf2+0xbc>
800018f4:	7ff00793          	li	a5,2047
800018f8:	00f51663          	bne	a0,a5,80001904 <__ledf2+0x58>
800018fc:	00c767b3          	or	a5,a4,a2
80001900:	06079463          	bnez	a5,80001968 <__ledf2+0xbc>
80001904:	00000793          	li	a5,0
80001908:	00089663          	bnez	a7,80001914 <__ledf2+0x68>
8000190c:	01036833          	or	a6,t1,a6
80001910:	00183793          	seqz	a5,a6
80001914:	06051063          	bnez	a0,80001974 <__ledf2+0xc8>
80001918:	00c76633          	or	a2,a4,a2
8000191c:	00078c63          	beqz	a5,80001934 <__ledf2+0x88>
80001920:	02060063          	beqz	a2,80001940 <__ledf2+0x94>
80001924:	00100513          	li	a0,1
80001928:	00069c63          	bnez	a3,80001940 <__ledf2+0x94>
8000192c:	fff00513          	li	a0,-1
80001930:	00008067          	ret
80001934:	04061263          	bnez	a2,80001978 <__ledf2+0xcc>
80001938:	fff00513          	li	a0,-1
8000193c:	04058663          	beqz	a1,80001988 <__ledf2+0xdc>
80001940:	00008067          	ret
80001944:	fea8c0e3          	blt	a7,a0,80001924 <__ledf2+0x78>
80001948:	fe6768e3          	bltu	a4,t1,80001938 <__ledf2+0x8c>
8000194c:	00e31863          	bne	t1,a4,8000195c <__ledf2+0xb0>
80001950:	ffcee4e3          	bltu	t4,t3,80001938 <__ledf2+0x8c>
80001954:	00000513          	li	a0,0
80001958:	ffde74e3          	bgeu	t3,t4,80001940 <__ledf2+0x94>
8000195c:	00100513          	li	a0,1
80001960:	fe0590e3          	bnez	a1,80001940 <__ledf2+0x94>
80001964:	fc9ff06f          	j	8000192c <__ledf2+0x80>
80001968:	00186073          	csrsi	fflags,16
8000196c:	00200513          	li	a0,2
80001970:	00008067          	ret
80001974:	fa0798e3          	bnez	a5,80001924 <__ledf2+0x78>
80001978:	fcb690e3          	bne	a3,a1,80001938 <__ledf2+0x8c>
8000197c:	fd1554e3          	bge	a0,a7,80001944 <__ledf2+0x98>
80001980:	fff00513          	li	a0,-1
80001984:	fa069ee3          	bnez	a3,80001940 <__ledf2+0x94>
80001988:	00100513          	li	a0,1
8000198c:	00008067          	ret

80001990 <__muldf3>:
80001990:	fe010113          	addi	sp,sp,-32
80001994:	00812e23          	sw	s0,28(sp)
80001998:	00912c23          	sw	s1,24(sp)
8000199c:	01212a23          	sw	s2,20(sp)
800019a0:	01312823          	sw	s3,16(sp)
800019a4:	01412623          	sw	s4,12(sp)
800019a8:	00060f93          	mv	t6,a2
800019ac:	00202373          	frrm	t1
800019b0:	0145df13          	srli	t5,a1,0x14
800019b4:	00c59713          	slli	a4,a1,0xc
800019b8:	7fff7f13          	andi	t5,t5,2047
800019bc:	00c75713          	srli	a4,a4,0xc
800019c0:	01f5d613          	srli	a2,a1,0x1f
800019c4:	020f0a63          	beqz	t5,800019f8 <__muldf3+0x68>
800019c8:	7ff00793          	li	a5,2047
800019cc:	08ff0863          	beq	t5,a5,80001a5c <__muldf3+0xcc>
800019d0:	00371713          	slli	a4,a4,0x3
800019d4:	01d55793          	srli	a5,a0,0x1d
800019d8:	00e7e7b3          	or	a5,a5,a4
800019dc:	00800737          	lui	a4,0x800
800019e0:	00e7e733          	or	a4,a5,a4
800019e4:	00351893          	slli	a7,a0,0x3
800019e8:	c01f0f13          	addi	t5,t5,-1023
800019ec:	00000293          	li	t0,0
800019f0:	00000813          	li	a6,0
800019f4:	0880006f          	j	80001a7c <__muldf3+0xec>
800019f8:	00a768b3          	or	a7,a4,a0
800019fc:	2a088a63          	beqz	a7,80001cb0 <__muldf3+0x320>
80001a00:	02070e63          	beqz	a4,80001a3c <__muldf3+0xac>
80001a04:	60071593          	clz	a1,a4
80001a08:	ff558813          	addi	a6,a1,-11
80001a0c:	01d00793          	li	a5,29
80001a10:	ff858893          	addi	a7,a1,-8
80001a14:	410787b3          	sub	a5,a5,a6
80001a18:	01171733          	sll	a4,a4,a7
80001a1c:	00f557b3          	srl	a5,a0,a5
80001a20:	00e7e7b3          	or	a5,a5,a4
80001a24:	01151733          	sll	a4,a0,a7
80001a28:	c0d00f13          	li	t5,-1011
80001a2c:	00070893          	mv	a7,a4
80001a30:	40bf0f33          	sub	t5,t5,a1
80001a34:	00078713          	mv	a4,a5
80001a38:	fb5ff06f          	j	800019ec <__muldf3+0x5c>
80001a3c:	60051793          	clz	a5,a0
80001a40:	01c00893          	li	a7,28
80001a44:	01578813          	addi	a6,a5,21
80001a48:	02078593          	addi	a1,a5,32
80001a4c:	fd08d0e3          	bge	a7,a6,80001a0c <__muldf3+0x7c>
80001a50:	ff878793          	addi	a5,a5,-8
80001a54:	00f517b3          	sll	a5,a0,a5
80001a58:	fd1ff06f          	j	80001a28 <__muldf3+0x98>
80001a5c:	00a768b3          	or	a7,a4,a0
80001a60:	26088063          	beqz	a7,80001cc0 <__muldf3+0x330>
80001a64:	00080837          	lui	a6,0x80
80001a68:	01073833          	sltu	a6,a4,a6
80001a6c:	00481813          	slli	a6,a6,0x4
80001a70:	00050893          	mv	a7,a0
80001a74:	7ff00f13          	li	t5,2047
80001a78:	00300293          	li	t0,3
80001a7c:	0146de13          	srli	t3,a3,0x14
80001a80:	00c69513          	slli	a0,a3,0xc
80001a84:	7ffe7e13          	andi	t3,t3,2047
80001a88:	000f8793          	mv	a5,t6
80001a8c:	00c55513          	srli	a0,a0,0xc
80001a90:	01f6d693          	srli	a3,a3,0x1f
80001a94:	220e0e63          	beqz	t3,80001cd0 <__muldf3+0x340>
80001a98:	7ff00593          	li	a1,2047
80001a9c:	28be0c63          	beq	t3,a1,80001d34 <__muldf3+0x3a4>
80001aa0:	00351513          	slli	a0,a0,0x3
80001aa4:	01dfd793          	srli	a5,t6,0x1d
80001aa8:	00a7e7b3          	or	a5,a5,a0
80001aac:	00800537          	lui	a0,0x800
80001ab0:	00a7e533          	or	a0,a5,a0
80001ab4:	c01e0e13          	addi	t3,t3,-1023
80001ab8:	003f9793          	slli	a5,t6,0x3
80001abc:	00000593          	li	a1,0
80001ac0:	00229e93          	slli	t4,t0,0x2
80001ac4:	01cf0f33          	add	t5,t5,t3
80001ac8:	00beeeb3          	or	t4,t4,a1
80001acc:	00a00f93          	li	t6,10
80001ad0:	001f0e13          	addi	t3,t5,1
80001ad4:	33dfca63          	blt	t6,t4,80001e08 <__muldf3+0x478>
80001ad8:	00200f93          	li	t6,2
80001adc:	00d64633          	xor	a2,a2,a3
80001ae0:	2bdfc263          	blt	t6,t4,80001d84 <__muldf3+0x3f4>
80001ae4:	fffe8e93          	addi	t4,t4,-1
80001ae8:	00100693          	li	a3,1
80001aec:	2bd6fe63          	bgeu	a3,t4,80001da8 <__muldf3+0x418>
80001af0:	00010fb7          	lui	t6,0x10
80001af4:	ffff8693          	addi	a3,t6,-1 # ffff <_tbss_end+0xffff>
80001af8:	0108d293          	srli	t0,a7,0x10
80001afc:	0107d493          	srli	s1,a5,0x10
80001b00:	00d8f8b3          	and	a7,a7,a3
80001b04:	00d7f933          	and	s2,a5,a3
80001b08:	031907b3          	mul	a5,s2,a7
80001b0c:	03228433          	mul	s0,t0,s2
80001b10:	0107de93          	srli	t4,a5,0x10
80001b14:	031485b3          	mul	a1,s1,a7
80001b18:	008585b3          	add	a1,a1,s0
80001b1c:	00be8eb3          	add	t4,t4,a1
80001b20:	029283b3          	mul	t2,t0,s1
80001b24:	008ef463          	bgeu	t4,s0,80001b2c <__muldf3+0x19c>
80001b28:	01f383b3          	add	t2,t2,t6
80001b2c:	010ed593          	srli	a1,t4,0x10
80001b30:	00defeb3          	and	t4,t4,a3
80001b34:	00d7f7b3          	and	a5,a5,a3
80001b38:	01055413          	srli	s0,a0,0x10
80001b3c:	010e9e93          	slli	t4,t4,0x10
80001b40:	00d57533          	and	a0,a0,a3
80001b44:	00fe8eb3          	add	t4,t4,a5
80001b48:	02a88a33          	mul	s4,a7,a0
80001b4c:	02a287b3          	mul	a5,t0,a0
80001b50:	010a5693          	srli	a3,s4,0x10
80001b54:	031408b3          	mul	a7,s0,a7
80001b58:	00f888b3          	add	a7,a7,a5
80001b5c:	011686b3          	add	a3,a3,a7
80001b60:	028282b3          	mul	t0,t0,s0
80001b64:	00f6f663          	bgeu	a3,a5,80001b70 <__muldf3+0x1e0>
80001b68:	000107b7          	lui	a5,0x10
80001b6c:	00f282b3          	add	t0,t0,a5
80001b70:	000108b7          	lui	a7,0x10
80001b74:	fff88993          	addi	s3,a7,-1 # ffff <_tbss_end+0xffff>
80001b78:	0136f7b3          	and	a5,a3,s3
80001b7c:	0106df93          	srli	t6,a3,0x10
80001b80:	013a7a33          	and	s4,s4,s3
80001b84:	005f8fb3          	add	t6,t6,t0
80001b88:	013779b3          	and	s3,a4,s3
80001b8c:	01075293          	srli	t0,a4,0x10
80001b90:	01079793          	slli	a5,a5,0x10
80001b94:	032286b3          	mul	a3,t0,s2
80001b98:	014787b3          	add	a5,a5,s4
80001b9c:	00f585b3          	add	a1,a1,a5
80001ba0:	03390a33          	mul	s4,s2,s3
80001ba4:	02548933          	mul	s2,s1,t0
80001ba8:	010a5713          	srli	a4,s4,0x10
80001bac:	033484b3          	mul	s1,s1,s3
80001bb0:	00d484b3          	add	s1,s1,a3
80001bb4:	00970733          	add	a4,a4,s1
80001bb8:	00d77463          	bgeu	a4,a3,80001bc0 <__muldf3+0x230>
80001bbc:	01190933          	add	s2,s2,a7
80001bc0:	01075893          	srli	a7,a4,0x10
80001bc4:	012888b3          	add	a7,a7,s2
80001bc8:	00010937          	lui	s2,0x10
80001bcc:	fff90693          	addi	a3,s2,-1 # ffff <_tbss_end+0xffff>
80001bd0:	00d77733          	and	a4,a4,a3
80001bd4:	01071713          	slli	a4,a4,0x10
80001bd8:	00da7a33          	and	s4,s4,a3
80001bdc:	014704b3          	add	s1,a4,s4
80001be0:	02a98a33          	mul	s4,s3,a0
80001be4:	02a28533          	mul	a0,t0,a0
80001be8:	010a5713          	srli	a4,s4,0x10
80001bec:	025402b3          	mul	t0,s0,t0
80001bf0:	03340433          	mul	s0,s0,s3
80001bf4:	00a40433          	add	s0,s0,a0
80001bf8:	00870433          	add	s0,a4,s0
80001bfc:	00a47463          	bgeu	s0,a0,80001c04 <__muldf3+0x274>
80001c00:	012282b3          	add	t0,t0,s2
80001c04:	00d47733          	and	a4,s0,a3
80001c08:	00da7a33          	and	s4,s4,a3
80001c0c:	01071713          	slli	a4,a4,0x10
80001c10:	00b385b3          	add	a1,t2,a1
80001c14:	01470733          	add	a4,a4,s4
80001c18:	01f70fb3          	add	t6,a4,t6
80001c1c:	00f5b7b3          	sltu	a5,a1,a5
80001c20:	00ff87b3          	add	a5,t6,a5
80001c24:	00efb6b3          	sltu	a3,t6,a4
80001c28:	01f7bfb3          	sltu	t6,a5,t6
80001c2c:	01f6e6b3          	or	a3,a3,t6
80001c30:	00958fb3          	add	t6,a1,s1
80001c34:	011788b3          	add	a7,a5,a7
80001c38:	00bfb5b3          	sltu	a1,t6,a1
80001c3c:	00b885b3          	add	a1,a7,a1
80001c40:	01045713          	srli	a4,s0,0x10
80001c44:	00e686b3          	add	a3,a3,a4
80001c48:	00f8b733          	sltu	a4,a7,a5
80001c4c:	0115b8b3          	sltu	a7,a1,a7
80001c50:	01176733          	or	a4,a4,a7
80001c54:	00d70733          	add	a4,a4,a3
80001c58:	009f9793          	slli	a5,t6,0x9
80001c5c:	00570733          	add	a4,a4,t0
80001c60:	01d7e7b3          	or	a5,a5,t4
80001c64:	00971713          	slli	a4,a4,0x9
80001c68:	00f037b3          	snez	a5,a5
80001c6c:	017fdf93          	srli	t6,t6,0x17
80001c70:	0175d513          	srli	a0,a1,0x17
80001c74:	01f7e7b3          	or	a5,a5,t6
80001c78:	00959593          	slli	a1,a1,0x9
80001c7c:	00771693          	slli	a3,a4,0x7
80001c80:	00a76533          	or	a0,a4,a0
80001c84:	00b7e7b3          	or	a5,a5,a1
80001c88:	0206d063          	bgez	a3,80001ca8 <__muldf3+0x318>
80001c8c:	0017d713          	srli	a4,a5,0x1
80001c90:	0017f793          	andi	a5,a5,1
80001c94:	00f76733          	or	a4,a4,a5
80001c98:	01f51793          	slli	a5,a0,0x1f
80001c9c:	00f767b3          	or	a5,a4,a5
80001ca0:	00155513          	srli	a0,a0,0x1
80001ca4:	000e0f13          	mv	t5,t3
80001ca8:	000f0e13          	mv	t3,t5
80001cac:	1140006f          	j	80001dc0 <__muldf3+0x430>
80001cb0:	00000713          	li	a4,0
80001cb4:	00000f13          	li	t5,0
80001cb8:	00100293          	li	t0,1
80001cbc:	d35ff06f          	j	800019f0 <__muldf3+0x60>
80001cc0:	00000713          	li	a4,0
80001cc4:	7ff00f13          	li	t5,2047
80001cc8:	00200293          	li	t0,2
80001ccc:	d25ff06f          	j	800019f0 <__muldf3+0x60>
80001cd0:	01f567b3          	or	a5,a0,t6
80001cd4:	06078e63          	beqz	a5,80001d50 <__muldf3+0x3c0>
80001cd8:	02050e63          	beqz	a0,80001d14 <__muldf3+0x384>
80001cdc:	60051593          	clz	a1,a0
80001ce0:	ff558e13          	addi	t3,a1,-11
80001ce4:	01d00e93          	li	t4,29
80001ce8:	ff858793          	addi	a5,a1,-8
80001cec:	41ce8eb3          	sub	t4,t4,t3
80001cf0:	00f51533          	sll	a0,a0,a5
80001cf4:	01dfdeb3          	srl	t4,t6,t4
80001cf8:	00aeeeb3          	or	t4,t4,a0
80001cfc:	00ff9533          	sll	a0,t6,a5
80001d00:	c0d00e13          	li	t3,-1011
80001d04:	00050793          	mv	a5,a0
80001d08:	40be0e33          	sub	t3,t3,a1
80001d0c:	000e8513          	mv	a0,t4
80001d10:	dadff06f          	j	80001abc <__muldf3+0x12c>
80001d14:	600f9793          	clz	a5,t6
80001d18:	01c00e93          	li	t4,28
80001d1c:	01578e13          	addi	t3,a5,21 # 10015 <_tbss_end+0x10015>
80001d20:	02078593          	addi	a1,a5,32
80001d24:	fdced0e3          	bge	t4,t3,80001ce4 <__muldf3+0x354>
80001d28:	ff878793          	addi	a5,a5,-8
80001d2c:	00ff9eb3          	sll	t4,t6,a5
80001d30:	fd1ff06f          	j	80001d00 <__muldf3+0x370>
80001d34:	01f56fb3          	or	t6,a0,t6
80001d38:	020f8663          	beqz	t6,80001d64 <__muldf3+0x3d4>
80001d3c:	000805b7          	lui	a1,0x80
80001d40:	7ff00e13          	li	t3,2047
80001d44:	02b56a63          	bltu	a0,a1,80001d78 <__muldf3+0x3e8>
80001d48:	00300593          	li	a1,3
80001d4c:	d75ff06f          	j	80001ac0 <__muldf3+0x130>
80001d50:	00000513          	li	a0,0
80001d54:	00000793          	li	a5,0
80001d58:	00000e13          	li	t3,0
80001d5c:	00100593          	li	a1,1
80001d60:	d61ff06f          	j	80001ac0 <__muldf3+0x130>
80001d64:	00000513          	li	a0,0
80001d68:	00000793          	li	a5,0
80001d6c:	7ff00e13          	li	t3,2047
80001d70:	00200593          	li	a1,2
80001d74:	d4dff06f          	j	80001ac0 <__muldf3+0x130>
80001d78:	00300593          	li	a1,3
80001d7c:	01000813          	li	a6,16
80001d80:	d41ff06f          	j	80001ac0 <__muldf3+0x130>
80001d84:	00100f93          	li	t6,1
80001d88:	01df9eb3          	sll	t4,t6,t4
80001d8c:	530eff93          	andi	t6,t4,1328
80001d90:	080f9463          	bnez	t6,80001e18 <__muldf3+0x488>
80001d94:	240eff93          	andi	t6,t4,576
80001d98:	300f9863          	bnez	t6,800020a8 <__muldf3+0x718>
80001d9c:	088efe93          	andi	t4,t4,136
80001da0:	d40e88e3          	beqz	t4,80001af0 <__muldf3+0x160>
80001da4:	00068613          	mv	a2,a3
80001da8:	00200713          	li	a4,2
80001dac:	30e58a63          	beq	a1,a4,800020c0 <__muldf3+0x730>
80001db0:	00300713          	li	a4,3
80001db4:	2ee58c63          	beq	a1,a4,800020ac <__muldf3+0x71c>
80001db8:	00100713          	li	a4,1
80001dbc:	30e58a63          	beq	a1,a4,800020d0 <__muldf3+0x740>
80001dc0:	3ffe0593          	addi	a1,t3,1023
80001dc4:	12b05463          	blez	a1,80001eec <__muldf3+0x55c>
80001dc8:	0077f713          	andi	a4,a5,7
80001dcc:	06070663          	beqz	a4,80001e38 <__muldf3+0x4a8>
80001dd0:	00200713          	li	a4,2
80001dd4:	00186813          	ori	a6,a6,1
80001dd8:	04e30e63          	beq	t1,a4,80001e34 <__muldf3+0x4a4>
80001ddc:	00300713          	li	a4,3
80001de0:	04e30463          	beq	t1,a4,80001e28 <__muldf3+0x498>
80001de4:	04031a63          	bnez	t1,80001e38 <__muldf3+0x4a8>
80001de8:	00f7f713          	andi	a4,a5,15
80001dec:	00400693          	li	a3,4
80001df0:	04d70463          	beq	a4,a3,80001e38 <__muldf3+0x4a8>
80001df4:	00478713          	addi	a4,a5,4
80001df8:	00f736b3          	sltu	a3,a4,a5
80001dfc:	00d50533          	add	a0,a0,a3
80001e00:	00070793          	mv	a5,a4
80001e04:	0340006f          	j	80001e38 <__muldf3+0x4a8>
80001e08:	00f00f13          	li	t5,15
80001e0c:	2bee8063          	beq	t4,t5,800020ac <__muldf3+0x71c>
80001e10:	00b00f13          	li	t5,11
80001e14:	f9ee88e3          	beq	t4,t5,80001da4 <__muldf3+0x414>
80001e18:	00070513          	mv	a0,a4
80001e1c:	00088793          	mv	a5,a7
80001e20:	00028593          	mv	a1,t0
80001e24:	f85ff06f          	j	80001da8 <__muldf3+0x418>
80001e28:	00061863          	bnez	a2,80001e38 <__muldf3+0x4a8>
80001e2c:	00878713          	addi	a4,a5,8
80001e30:	fc9ff06f          	j	80001df8 <__muldf3+0x468>
80001e34:	fe061ce3          	bnez	a2,80001e2c <__muldf3+0x49c>
80001e38:	00751713          	slli	a4,a0,0x7
80001e3c:	00075a63          	bgez	a4,80001e50 <__muldf3+0x4c0>
80001e40:	ff000737          	lui	a4,0xff000
80001e44:	fff70713          	addi	a4,a4,-1 # feffffff <__global_pointer$+0x7effc737>
80001e48:	00e57533          	and	a0,a0,a4
80001e4c:	400e0593          	addi	a1,t3,1024
80001e50:	7fe00713          	li	a4,2046
80001e54:	04b74c63          	blt	a4,a1,80001eac <__muldf3+0x51c>
80001e58:	0037d713          	srli	a4,a5,0x3
80001e5c:	01d51793          	slli	a5,a0,0x1d
80001e60:	00e7e7b3          	or	a5,a5,a4
80001e64:	00355713          	srli	a4,a0,0x3
80001e68:	00c71713          	slli	a4,a4,0xc
80001e6c:	00c75713          	srli	a4,a4,0xc
80001e70:	01459593          	slli	a1,a1,0x14
80001e74:	00e5e5b3          	or	a1,a1,a4
80001e78:	01f61613          	slli	a2,a2,0x1f
80001e7c:	00c5e733          	or	a4,a1,a2
80001e80:	00078513          	mv	a0,a5
80001e84:	00070593          	mv	a1,a4
80001e88:	00080463          	beqz	a6,80001e90 <__muldf3+0x500>
80001e8c:	00182073          	csrs	fflags,a6
80001e90:	01c12403          	lw	s0,28(sp)
80001e94:	01812483          	lw	s1,24(sp)
80001e98:	01412903          	lw	s2,20(sp)
80001e9c:	01012983          	lw	s3,16(sp)
80001ea0:	00c12a03          	lw	s4,12(sp)
80001ea4:	02010113          	addi	sp,sp,32
80001ea8:	00008067          	ret
80001eac:	00200793          	li	a5,2
80001eb0:	02f30a63          	beq	t1,a5,80001ee4 <__muldf3+0x554>
80001eb4:	00300793          	li	a5,3
80001eb8:	00f30a63          	beq	t1,a5,80001ecc <__muldf3+0x53c>
80001ebc:	00031a63          	bnez	t1,80001ed0 <__muldf3+0x540>
80001ec0:	00000793          	li	a5,0
80001ec4:	7ff00593          	li	a1,2047
80001ec8:	0100006f          	j	80001ed8 <__muldf3+0x548>
80001ecc:	fe060ae3          	beqz	a2,80001ec0 <__muldf3+0x530>
80001ed0:	fff00793          	li	a5,-1
80001ed4:	7fe00593          	li	a1,2046
80001ed8:	00586813          	ori	a6,a6,5
80001edc:	00078713          	mv	a4,a5
80001ee0:	f89ff06f          	j	80001e68 <__muldf3+0x4d8>
80001ee4:	fc061ee3          	bnez	a2,80001ec0 <__muldf3+0x530>
80001ee8:	fe9ff06f          	j	80001ed0 <__muldf3+0x540>
80001eec:	00100893          	li	a7,1
80001ef0:	06059063          	bnez	a1,80001f50 <__muldf3+0x5c0>
80001ef4:	0077f693          	andi	a3,a5,7
80001ef8:	00050713          	mv	a4,a0
80001efc:	04068463          	beqz	a3,80001f44 <__muldf3+0x5b4>
80001f00:	00200693          	li	a3,2
80001f04:	00186813          	ori	a6,a6,1
80001f08:	02d30c63          	beq	t1,a3,80001f40 <__muldf3+0x5b0>
80001f0c:	00300693          	li	a3,3
80001f10:	02d30263          	beq	t1,a3,80001f34 <__muldf3+0x5a4>
80001f14:	02031863          	bnez	t1,80001f44 <__muldf3+0x5b4>
80001f18:	00f7f693          	andi	a3,a5,15
80001f1c:	00400893          	li	a7,4
80001f20:	03168263          	beq	a3,a7,80001f44 <__muldf3+0x5b4>
80001f24:	ffc7b713          	sltiu	a4,a5,-4
80001f28:	00173713          	seqz	a4,a4
80001f2c:	00a70733          	add	a4,a4,a0
80001f30:	0140006f          	j	80001f44 <__muldf3+0x5b4>
80001f34:	00061863          	bnez	a2,80001f44 <__muldf3+0x5b4>
80001f38:	ff87b713          	sltiu	a4,a5,-8
80001f3c:	fedff06f          	j	80001f28 <__muldf3+0x598>
80001f40:	fe061ce3          	bnez	a2,80001f38 <__muldf3+0x5a8>
80001f44:	01875893          	srli	a7,a4,0x18
80001f48:	0018c893          	xori	a7,a7,1
80001f4c:	0018f893          	andi	a7,a7,1
80001f50:	00100713          	li	a4,1
80001f54:	40b70733          	sub	a4,a4,a1
80001f58:	03800693          	li	a3,56
80001f5c:	0ee6ca63          	blt	a3,a4,80002050 <__muldf3+0x6c0>
80001f60:	01f00693          	li	a3,31
80001f64:	06e6c263          	blt	a3,a4,80001fc8 <__muldf3+0x638>
80001f68:	41ee0e13          	addi	t3,t3,1054
80001f6c:	00e7d5b3          	srl	a1,a5,a4
80001f70:	01c516b3          	sll	a3,a0,t3
80001f74:	01c79e33          	sll	t3,a5,t3
80001f78:	00b6e6b3          	or	a3,a3,a1
80001f7c:	01c03e33          	snez	t3,t3
80001f80:	01c6e7b3          	or	a5,a3,t3
80001f84:	00e55733          	srl	a4,a0,a4
80001f88:	0077f693          	andi	a3,a5,7
80001f8c:	08068063          	beqz	a3,8000200c <__muldf3+0x67c>
80001f90:	00200693          	li	a3,2
80001f94:	00186813          	ori	a6,a6,1
80001f98:	06d30863          	beq	t1,a3,80002008 <__muldf3+0x678>
80001f9c:	00300693          	li	a3,3
80001fa0:	04d30e63          	beq	t1,a3,80001ffc <__muldf3+0x66c>
80001fa4:	06031463          	bnez	t1,8000200c <__muldf3+0x67c>
80001fa8:	00f7f693          	andi	a3,a5,15
80001fac:	00400593          	li	a1,4
80001fb0:	04b68e63          	beq	a3,a1,8000200c <__muldf3+0x67c>
80001fb4:	00478693          	addi	a3,a5,4
80001fb8:	00f6b5b3          	sltu	a1,a3,a5
80001fbc:	00b70733          	add	a4,a4,a1
80001fc0:	00068793          	mv	a5,a3
80001fc4:	0480006f          	j	8000200c <__muldf3+0x67c>
80001fc8:	fe100693          	li	a3,-31
80001fcc:	40b686b3          	sub	a3,a3,a1
80001fd0:	02000e93          	li	t4,32
80001fd4:	00d556b3          	srl	a3,a0,a3
80001fd8:	00000593          	li	a1,0
80001fdc:	01d70663          	beq	a4,t4,80001fe8 <__muldf3+0x658>
80001fe0:	43ee0593          	addi	a1,t3,1086
80001fe4:	00b515b3          	sll	a1,a0,a1
80001fe8:	00f5e5b3          	or	a1,a1,a5
80001fec:	00b035b3          	snez	a1,a1
80001ff0:	00b6e7b3          	or	a5,a3,a1
80001ff4:	00000713          	li	a4,0
80001ff8:	f91ff06f          	j	80001f88 <__muldf3+0x5f8>
80001ffc:	00061863          	bnez	a2,8000200c <__muldf3+0x67c>
80002000:	00878693          	addi	a3,a5,8
80002004:	fb5ff06f          	j	80001fb8 <__muldf3+0x628>
80002008:	fe061ce3          	bnez	a2,80002000 <__muldf3+0x670>
8000200c:	00871693          	slli	a3,a4,0x8
80002010:	0206d463          	bgez	a3,80002038 <__muldf3+0x6a8>
80002014:	00186813          	ori	a6,a6,1
80002018:	00000713          	li	a4,0
8000201c:	00000793          	li	a5,0
80002020:	00100593          	li	a1,1
80002024:	e40882e3          	beqz	a7,80001e68 <__muldf3+0x4d8>
80002028:	00187693          	andi	a3,a6,1
8000202c:	00169693          	slli	a3,a3,0x1
80002030:	00d86833          	or	a6,a6,a3
80002034:	e35ff06f          	j	80001e68 <__muldf3+0x4d8>
80002038:	0037d693          	srli	a3,a5,0x3
8000203c:	01d71793          	slli	a5,a4,0x1d
80002040:	00d7e7b3          	or	a5,a5,a3
80002044:	00375713          	srli	a4,a4,0x3
80002048:	00000593          	li	a1,0
8000204c:	fd9ff06f          	j	80002024 <__muldf3+0x694>
80002050:	00a7e7b3          	or	a5,a5,a0
80002054:	02078463          	beqz	a5,8000207c <__muldf3+0x6ec>
80002058:	00200793          	li	a5,2
8000205c:	00186813          	ori	a6,a6,1
80002060:	02f30e63          	beq	t1,a5,8000209c <__muldf3+0x70c>
80002064:	00300793          	li	a5,3
80002068:	02f30263          	beq	t1,a5,8000208c <__muldf3+0x6fc>
8000206c:	00100793          	li	a5,1
80002070:	00031463          	bnez	t1,80002078 <__muldf3+0x6e8>
80002074:	00500793          	li	a5,5
80002078:	0037d793          	srli	a5,a5,0x3
8000207c:	00286813          	ori	a6,a6,2
80002080:	00000713          	li	a4,0
80002084:	00000593          	li	a1,0
80002088:	de1ff06f          	j	80001e68 <__muldf3+0x4d8>
8000208c:	00900793          	li	a5,9
80002090:	fe0604e3          	beqz	a2,80002078 <__muldf3+0x6e8>
80002094:	00100793          	li	a5,1
80002098:	fe1ff06f          	j	80002078 <__muldf3+0x6e8>
8000209c:	00900793          	li	a5,9
800020a0:	fc061ce3          	bnez	a2,80002078 <__muldf3+0x6e8>
800020a4:	ff1ff06f          	j	80002094 <__muldf3+0x704>
800020a8:	01000813          	li	a6,16
800020ac:	00080737          	lui	a4,0x80
800020b0:	00000793          	li	a5,0
800020b4:	7ff00593          	li	a1,2047
800020b8:	00000613          	li	a2,0
800020bc:	dadff06f          	j	80001e68 <__muldf3+0x4d8>
800020c0:	00000713          	li	a4,0
800020c4:	00000793          	li	a5,0
800020c8:	7ff00593          	li	a1,2047
800020cc:	d9dff06f          	j	80001e68 <__muldf3+0x4d8>
800020d0:	00000713          	li	a4,0
800020d4:	00000793          	li	a5,0
800020d8:	fadff06f          	j	80002084 <__muldf3+0x6f4>

800020dc <__subdf3>:
800020dc:	00202373          	frrm	t1
800020e0:	00100737          	lui	a4,0x100
800020e4:	fff70713          	addi	a4,a4,-1 # fffff <_tbss_end+0xfffff>
800020e8:	00b77833          	and	a6,a4,a1
800020ec:	00381813          	slli	a6,a6,0x3
800020f0:	00d77733          	and	a4,a4,a3
800020f4:	01d55e13          	srli	t3,a0,0x1d
800020f8:	0146d893          	srli	a7,a3,0x14
800020fc:	010e6e33          	or	t3,t3,a6
80002100:	00371813          	slli	a6,a4,0x3
80002104:	01d65713          	srli	a4,a2,0x1d
80002108:	0145d793          	srli	a5,a1,0x14
8000210c:	01076733          	or	a4,a4,a6
80002110:	7ff8f893          	andi	a7,a7,2047
80002114:	7ff00813          	li	a6,2047
80002118:	7ff7f793          	andi	a5,a5,2047
8000211c:	01f5d593          	srli	a1,a1,0x1f
80002120:	00351513          	slli	a0,a0,0x3
80002124:	01f6d693          	srli	a3,a3,0x1f
80002128:	00361613          	slli	a2,a2,0x3
8000212c:	01089663          	bne	a7,a6,80002138 <__subdf3+0x5c>
80002130:	00c76833          	or	a6,a4,a2
80002134:	00081463          	bnez	a6,8000213c <__subdf3+0x60>
80002138:	0016c693          	xori	a3,a3,1
8000213c:	41178833          	sub	a6,a5,a7
80002140:	3cb69663          	bne	a3,a1,8000250c <__subdf3+0x430>
80002144:	17005a63          	blez	a6,800022b8 <__subdf3+0x1dc>
80002148:	06089663          	bnez	a7,800021b4 <__subdf3+0xd8>
8000214c:	00c766b3          	or	a3,a4,a2
80002150:	00069c63          	bnez	a3,80002168 <__subdf3+0x8c>
80002154:	7ff00793          	li	a5,2047
80002158:	02f80c63          	beq	a6,a5,80002190 <__subdf3+0xb4>
8000215c:	000e0713          	mv	a4,t3
80002160:	00050613          	mv	a2,a0
80002164:	33c0006f          	j	800024a0 <__subdf3+0x3c4>
80002168:	fff80893          	addi	a7,a6,-1 # 7ffff <_tbss_end+0x7ffff>
8000216c:	00089e63          	bnez	a7,80002188 <__subdf3+0xac>
80002170:	00c50633          	add	a2,a0,a2
80002174:	00ee0733          	add	a4,t3,a4
80002178:	00a63533          	sltu	a0,a2,a0
8000217c:	00a70733          	add	a4,a4,a0
80002180:	00100813          	li	a6,1
80002184:	0b40006f          	j	80002238 <__subdf3+0x15c>
80002188:	7ff00693          	li	a3,2047
8000218c:	06d81063          	bne	a6,a3,800021ec <__subdf3+0x110>
80002190:	00ae6633          	or	a2,t3,a0
80002194:	16060ee3          	beqz	a2,80002b10 <__subdf3+0xa34>
80002198:	016e5793          	srli	a5,t3,0x16
8000219c:	0017c793          	xori	a5,a5,1
800021a0:	0017f793          	andi	a5,a5,1
800021a4:	00479793          	slli	a5,a5,0x4
800021a8:	000e0713          	mv	a4,t3
800021ac:	00050613          	mv	a2,a0
800021b0:	13c0006f          	j	800022ec <__subdf3+0x210>
800021b4:	7ff00693          	li	a3,2047
800021b8:	02d79463          	bne	a5,a3,800021e0 <__subdf3+0x104>
800021bc:	00ae6633          	or	a2,t3,a0
800021c0:	14060ce3          	beqz	a2,80002b18 <__subdf3+0xa3c>
800021c4:	016e5793          	srli	a5,t3,0x16
800021c8:	0017c793          	xori	a5,a5,1
800021cc:	0017f793          	andi	a5,a5,1
800021d0:	000e0713          	mv	a4,t3
800021d4:	00050613          	mv	a2,a0
800021d8:	7ff00813          	li	a6,2047
800021dc:	10c0006f          	j	800022e8 <__subdf3+0x20c>
800021e0:	008006b7          	lui	a3,0x800
800021e4:	00d76733          	or	a4,a4,a3
800021e8:	00080893          	mv	a7,a6
800021ec:	03800693          	li	a3,56
800021f0:	0b16ce63          	blt	a3,a7,800022ac <__subdf3+0x1d0>
800021f4:	01f00693          	li	a3,31
800021f8:	0916c063          	blt	a3,a7,80002278 <__subdf3+0x19c>
800021fc:	02000813          	li	a6,32
80002200:	41180833          	sub	a6,a6,a7
80002204:	010716b3          	sll	a3,a4,a6
80002208:	01165eb3          	srl	t4,a2,a7
8000220c:	01061833          	sll	a6,a2,a6
80002210:	01d6e6b3          	or	a3,a3,t4
80002214:	01003833          	snez	a6,a6
80002218:	0106e6b3          	or	a3,a3,a6
8000221c:	011758b3          	srl	a7,a4,a7
80002220:	00a68533          	add	a0,a3,a0
80002224:	01c888b3          	add	a7,a7,t3
80002228:	00d536b3          	sltu	a3,a0,a3
8000222c:	00050613          	mv	a2,a0
80002230:	00d88733          	add	a4,a7,a3
80002234:	00078813          	mv	a6,a5
80002238:	00871693          	slli	a3,a4,0x8
8000223c:	00000793          	li	a5,0
80002240:	0a06d663          	bgez	a3,800022ec <__subdf3+0x210>
80002244:	00180813          	addi	a6,a6,1
80002248:	7ff00693          	li	a3,2047
8000224c:	28d80863          	beq	a6,a3,800024dc <__subdf3+0x400>
80002250:	ff8006b7          	lui	a3,0xff800
80002254:	fff68693          	addi	a3,a3,-1 # ff7fffff <__global_pointer$+0x7f7fc737>
80002258:	00d776b3          	and	a3,a4,a3
8000225c:	00165713          	srli	a4,a2,0x1
80002260:	00167613          	andi	a2,a2,1
80002264:	00c76733          	or	a4,a4,a2
80002268:	01f69613          	slli	a2,a3,0x1f
8000226c:	00e66633          	or	a2,a2,a4
80002270:	0016d713          	srli	a4,a3,0x1
80002274:	0780006f          	j	800022ec <__subdf3+0x210>
80002278:	fe088693          	addi	a3,a7,-32
8000227c:	02000e93          	li	t4,32
80002280:	00d756b3          	srl	a3,a4,a3
80002284:	00000813          	li	a6,0
80002288:	01d88863          	beq	a7,t4,80002298 <__subdf3+0x1bc>
8000228c:	04000813          	li	a6,64
80002290:	41180833          	sub	a6,a6,a7
80002294:	01071833          	sll	a6,a4,a6
80002298:	00c86833          	or	a6,a6,a2
8000229c:	01003833          	snez	a6,a6
800022a0:	0106e6b3          	or	a3,a3,a6
800022a4:	00000893          	li	a7,0
800022a8:	f79ff06f          	j	80002220 <__subdf3+0x144>
800022ac:	00c766b3          	or	a3,a4,a2
800022b0:	00d036b3          	snez	a3,a3
800022b4:	ff1ff06f          	j	800022a4 <__subdf3+0x1c8>
800022b8:	10080c63          	beqz	a6,800023d0 <__subdf3+0x2f4>
800022bc:	40f88833          	sub	a6,a7,a5
800022c0:	08079c63          	bnez	a5,80002358 <__subdf3+0x27c>
800022c4:	00ae66b3          	or	a3,t3,a0
800022c8:	02069a63          	bnez	a3,800022fc <__subdf3+0x220>
800022cc:	7ff00693          	li	a3,2047
800022d0:	00d81e63          	bne	a6,a3,800022ec <__subdf3+0x210>
800022d4:	00c766b3          	or	a3,a4,a2
800022d8:	040684e3          	beqz	a3,80002b20 <__subdf3+0xa44>
800022dc:	01675793          	srli	a5,a4,0x16
800022e0:	0017c793          	xori	a5,a5,1
800022e4:	0017f793          	andi	a5,a5,1
800022e8:	00479793          	slli	a5,a5,0x4
800022ec:	00070e13          	mv	t3,a4
800022f0:	00060693          	mv	a3,a2
800022f4:	00000713          	li	a4,0
800022f8:	6b80006f          	j	800029b0 <__subdf3+0x8d4>
800022fc:	fff80693          	addi	a3,a6,-1
80002300:	e60688e3          	beqz	a3,80002170 <__subdf3+0x94>
80002304:	7ff00e93          	li	t4,2047
80002308:	fdd806e3          	beq	a6,t4,800022d4 <__subdf3+0x1f8>
8000230c:	03800793          	li	a5,56
80002310:	0ad7ca63          	blt	a5,a3,800023c4 <__subdf3+0x2e8>
80002314:	01f00793          	li	a5,31
80002318:	06d7cc63          	blt	a5,a3,80002390 <__subdf3+0x2b4>
8000231c:	02000813          	li	a6,32
80002320:	40d80833          	sub	a6,a6,a3
80002324:	010e17b3          	sll	a5,t3,a6
80002328:	00d55eb3          	srl	t4,a0,a3
8000232c:	01051833          	sll	a6,a0,a6
80002330:	01d7e7b3          	or	a5,a5,t4
80002334:	01003833          	snez	a6,a6
80002338:	0107e7b3          	or	a5,a5,a6
8000233c:	00de56b3          	srl	a3,t3,a3
80002340:	00c78633          	add	a2,a5,a2
80002344:	00e686b3          	add	a3,a3,a4
80002348:	00f637b3          	sltu	a5,a2,a5
8000234c:	00f68733          	add	a4,a3,a5
80002350:	00088813          	mv	a6,a7
80002354:	ee5ff06f          	j	80002238 <__subdf3+0x15c>
80002358:	7ff00793          	li	a5,2047
8000235c:	02f89263          	bne	a7,a5,80002380 <__subdf3+0x2a4>
80002360:	00c767b3          	or	a5,a4,a2
80002364:	78078e63          	beqz	a5,80002b00 <__subdf3+0xa24>
80002368:	01675793          	srli	a5,a4,0x16
8000236c:	0017c793          	xori	a5,a5,1
80002370:	0017f793          	andi	a5,a5,1
80002374:	00479793          	slli	a5,a5,0x4
80002378:	7ff00813          	li	a6,2047
8000237c:	f71ff06f          	j	800022ec <__subdf3+0x210>
80002380:	008007b7          	lui	a5,0x800
80002384:	00fe6e33          	or	t3,t3,a5
80002388:	00080693          	mv	a3,a6
8000238c:	f81ff06f          	j	8000230c <__subdf3+0x230>
80002390:	fe068793          	addi	a5,a3,-32
80002394:	02000e93          	li	t4,32
80002398:	00fe57b3          	srl	a5,t3,a5
8000239c:	00000813          	li	a6,0
800023a0:	01d68863          	beq	a3,t4,800023b0 <__subdf3+0x2d4>
800023a4:	04000813          	li	a6,64
800023a8:	40d80833          	sub	a6,a6,a3
800023ac:	010e1833          	sll	a6,t3,a6
800023b0:	00a86833          	or	a6,a6,a0
800023b4:	01003833          	snez	a6,a6
800023b8:	0107e7b3          	or	a5,a5,a6
800023bc:	00000693          	li	a3,0
800023c0:	f81ff06f          	j	80002340 <__subdf3+0x264>
800023c4:	00ae67b3          	or	a5,t3,a0
800023c8:	00f037b3          	snez	a5,a5
800023cc:	ff1ff06f          	j	800023bc <__subdf3+0x2e0>
800023d0:	00178813          	addi	a6,a5,1 # 800001 <_tbss_end+0x800001>
800023d4:	7fe87693          	andi	a3,a6,2046
800023d8:	0a069063          	bnez	a3,80002478 <__subdf3+0x39c>
800023dc:	00ae66b3          	or	a3,t3,a0
800023e0:	02079e63          	bnez	a5,8000241c <__subdf3+0x340>
800023e4:	76068463          	beqz	a3,80002b4c <__subdf3+0xa70>
800023e8:	00c766b3          	or	a3,a4,a2
800023ec:	76068863          	beqz	a3,80002b5c <__subdf3+0xa80>
800023f0:	00c50633          	add	a2,a0,a2
800023f4:	00ee0733          	add	a4,t3,a4
800023f8:	00a63533          	sltu	a0,a2,a0
800023fc:	00a70e33          	add	t3,a4,a0
80002400:	008e1713          	slli	a4,t3,0x8
80002404:	36075463          	bgez	a4,8000276c <__subdf3+0x690>
80002408:	ff800737          	lui	a4,0xff800
8000240c:	fff70713          	addi	a4,a4,-1 # ff7fffff <__global_pointer$+0x7f7fc737>
80002410:	00ee7733          	and	a4,t3,a4
80002414:	00100813          	li	a6,1
80002418:	ed5ff06f          	j	800022ec <__subdf3+0x210>
8000241c:	7ff00813          	li	a6,2047
80002420:	03079a63          	bne	a5,a6,80002454 <__subdf3+0x378>
80002424:	74068c63          	beqz	a3,80002b7c <__subdf3+0xaa0>
80002428:	016e5793          	srli	a5,t3,0x16
8000242c:	0017c793          	xori	a5,a5,1
80002430:	0017f793          	andi	a5,a5,1
80002434:	00479793          	slli	a5,a5,0x4
80002438:	03089663          	bne	a7,a6,80002464 <__subdf3+0x388>
8000243c:	00c76833          	or	a6,a4,a2
80002440:	00080e63          	beqz	a6,8000245c <__subdf3+0x380>
80002444:	00971813          	slli	a6,a4,0x9
80002448:	00084a63          	bltz	a6,8000245c <__subdf3+0x380>
8000244c:	01000793          	li	a5,16
80002450:	00c0006f          	j	8000245c <__subdf3+0x380>
80002454:	00000793          	li	a5,0
80002458:	ff0882e3          	beq	a7,a6,8000243c <__subdf3+0x360>
8000245c:	7ff00813          	li	a6,2047
80002460:	e80686e3          	beqz	a3,800022ec <__subdf3+0x210>
80002464:	00c76733          	or	a4,a4,a2
80002468:	3c071e63          	bnez	a4,80002844 <__subdf3+0x768>
8000246c:	000e0713          	mv	a4,t3
80002470:	00050613          	mv	a2,a0
80002474:	f05ff06f          	j	80002378 <__subdf3+0x29c>
80002478:	7ff00793          	li	a5,2047
8000247c:	02f80663          	beq	a6,a5,800024a8 <__subdf3+0x3cc>
80002480:	00c50633          	add	a2,a0,a2
80002484:	00a63533          	sltu	a0,a2,a0
80002488:	00ee0733          	add	a4,t3,a4
8000248c:	00a70733          	add	a4,a4,a0
80002490:	01f71793          	slli	a5,a4,0x1f
80002494:	00165613          	srli	a2,a2,0x1
80002498:	00c7e633          	or	a2,a5,a2
8000249c:	00175713          	srli	a4,a4,0x1
800024a0:	00000793          	li	a5,0
800024a4:	e49ff06f          	j	800022ec <__subdf3+0x210>
800024a8:	02030663          	beqz	t1,800024d4 <__subdf3+0x3f8>
800024ac:	00300793          	li	a5,3
800024b0:	00f31c63          	bne	t1,a5,800024c8 <__subdf3+0x3ec>
800024b4:	02058063          	beqz	a1,800024d4 <__subdf3+0x3f8>
800024b8:	fff00713          	li	a4,-1
800024bc:	fff00613          	li	a2,-1
800024c0:	7fe00813          	li	a6,2046
800024c4:	0300006f          	j	800024f4 <__subdf3+0x418>
800024c8:	00200793          	li	a5,2
800024cc:	fef316e3          	bne	t1,a5,800024b8 <__subdf3+0x3dc>
800024d0:	fe0584e3          	beqz	a1,800024b8 <__subdf3+0x3dc>
800024d4:	7ff00813          	li	a6,2047
800024d8:	0140006f          	j	800024ec <__subdf3+0x410>
800024dc:	00030863          	beqz	t1,800024ec <__subdf3+0x410>
800024e0:	00300793          	li	a5,3
800024e4:	00f31c63          	bne	t1,a5,800024fc <__subdf3+0x420>
800024e8:	fc0598e3          	bnez	a1,800024b8 <__subdf3+0x3dc>
800024ec:	00000713          	li	a4,0
800024f0:	00000613          	li	a2,0
800024f4:	00500793          	li	a5,5
800024f8:	df5ff06f          	j	800022ec <__subdf3+0x210>
800024fc:	00200793          	li	a5,2
80002500:	faf31ce3          	bne	t1,a5,800024b8 <__subdf3+0x3dc>
80002504:	fe0594e3          	bnez	a1,800024ec <__subdf3+0x410>
80002508:	fb1ff06f          	j	800024b8 <__subdf3+0x3dc>
8000250c:	0f005c63          	blez	a6,80002604 <__subdf3+0x528>
80002510:	08089e63          	bnez	a7,800025ac <__subdf3+0x4d0>
80002514:	00c766b3          	or	a3,a4,a2
80002518:	c2068ee3          	beqz	a3,80002154 <__subdf3+0x78>
8000251c:	fff80693          	addi	a3,a6,-1
80002520:	00069e63          	bnez	a3,8000253c <__subdf3+0x460>
80002524:	40c50633          	sub	a2,a0,a2
80002528:	40ee0733          	sub	a4,t3,a4
8000252c:	00c53533          	sltu	a0,a0,a2
80002530:	40a70733          	sub	a4,a4,a0
80002534:	00100813          	li	a6,1
80002538:	0540006f          	j	8000258c <__subdf3+0x4b0>
8000253c:	7ff00893          	li	a7,2047
80002540:	c51808e3          	beq	a6,a7,80002190 <__subdf3+0xb4>
80002544:	03800813          	li	a6,56
80002548:	0ad84863          	blt	a6,a3,800025f8 <__subdf3+0x51c>
8000254c:	01f00813          	li	a6,31
80002550:	06d84a63          	blt	a6,a3,800025c4 <__subdf3+0x4e8>
80002554:	02000893          	li	a7,32
80002558:	40d888b3          	sub	a7,a7,a3
8000255c:	00d65eb3          	srl	t4,a2,a3
80002560:	01171833          	sll	a6,a4,a7
80002564:	011618b3          	sll	a7,a2,a7
80002568:	01d86833          	or	a6,a6,t4
8000256c:	011038b3          	snez	a7,a7
80002570:	01186633          	or	a2,a6,a7
80002574:	00d756b3          	srl	a3,a4,a3
80002578:	40c50633          	sub	a2,a0,a2
8000257c:	40de06b3          	sub	a3,t3,a3
80002580:	00c53533          	sltu	a0,a0,a2
80002584:	40a68733          	sub	a4,a3,a0
80002588:	00078813          	mv	a6,a5
8000258c:	00871793          	slli	a5,a4,0x8
80002590:	f007d8e3          	bgez	a5,800024a0 <__subdf3+0x3c4>
80002594:	008008b7          	lui	a7,0x800
80002598:	fff88893          	addi	a7,a7,-1 # 7fffff <_tbss_end+0x7fffff>
8000259c:	011778b3          	and	a7,a4,a7
800025a0:	00060e93          	mv	t4,a2
800025a4:	00080793          	mv	a5,a6
800025a8:	2dc0006f          	j	80002884 <__subdf3+0x7a8>
800025ac:	7ff00693          	li	a3,2047
800025b0:	c0d786e3          	beq	a5,a3,800021bc <__subdf3+0xe0>
800025b4:	008006b7          	lui	a3,0x800
800025b8:	00d76733          	or	a4,a4,a3
800025bc:	00080693          	mv	a3,a6
800025c0:	f85ff06f          	j	80002544 <__subdf3+0x468>
800025c4:	fe068813          	addi	a6,a3,-32 # 7fffe0 <_tbss_end+0x7fffe0>
800025c8:	02000e93          	li	t4,32
800025cc:	01075833          	srl	a6,a4,a6
800025d0:	00000893          	li	a7,0
800025d4:	01d68863          	beq	a3,t4,800025e4 <__subdf3+0x508>
800025d8:	04000893          	li	a7,64
800025dc:	40d888b3          	sub	a7,a7,a3
800025e0:	011718b3          	sll	a7,a4,a7
800025e4:	00c8e8b3          	or	a7,a7,a2
800025e8:	011038b3          	snez	a7,a7
800025ec:	01186633          	or	a2,a6,a7
800025f0:	00000693          	li	a3,0
800025f4:	f85ff06f          	j	80002578 <__subdf3+0x49c>
800025f8:	00c76633          	or	a2,a4,a2
800025fc:	00c03633          	snez	a2,a2
80002600:	ff1ff06f          	j	800025f0 <__subdf3+0x514>
80002604:	12080c63          	beqz	a6,8000273c <__subdf3+0x660>
80002608:	40f88833          	sub	a6,a7,a5
8000260c:	06079463          	bnez	a5,80002674 <__subdf3+0x598>
80002610:	00ae65b3          	or	a1,t3,a0
80002614:	00059a63          	bnez	a1,80002628 <__subdf3+0x54c>
80002618:	7ff00513          	li	a0,2047
8000261c:	00068593          	mv	a1,a3
80002620:	cca816e3          	bne	a6,a0,800022ec <__subdf3+0x210>
80002624:	cb1ff06f          	j	800022d4 <__subdf3+0x1f8>
80002628:	fff80593          	addi	a1,a6,-1
8000262c:	02059063          	bnez	a1,8000264c <__subdf3+0x570>
80002630:	40a60533          	sub	a0,a2,a0
80002634:	00a637b3          	sltu	a5,a2,a0
80002638:	41c70733          	sub	a4,a4,t3
8000263c:	00050613          	mv	a2,a0
80002640:	40f70733          	sub	a4,a4,a5
80002644:	00068593          	mv	a1,a3
80002648:	eedff06f          	j	80002534 <__subdf3+0x458>
8000264c:	7ff00e93          	li	t4,2047
80002650:	05d81c63          	bne	a6,t4,800026a8 <__subdf3+0x5cc>
80002654:	00c765b3          	or	a1,a4,a2
80002658:	4c058a63          	beqz	a1,80002b2c <__subdf3+0xa50>
8000265c:	01675793          	srli	a5,a4,0x16
80002660:	0017c793          	xori	a5,a5,1
80002664:	0017f793          	andi	a5,a5,1
80002668:	00479793          	slli	a5,a5,0x4
8000266c:	00068593          	mv	a1,a3
80002670:	c7dff06f          	j	800022ec <__subdf3+0x210>
80002674:	7ff00793          	li	a5,2047
80002678:	02f89263          	bne	a7,a5,8000269c <__subdf3+0x5c0>
8000267c:	00c767b3          	or	a5,a4,a2
80002680:	4a078c63          	beqz	a5,80002b38 <__subdf3+0xa5c>
80002684:	01675793          	srli	a5,a4,0x16
80002688:	0017c793          	xori	a5,a5,1
8000268c:	0017f793          	andi	a5,a5,1
80002690:	00479793          	slli	a5,a5,0x4
80002694:	7ff00813          	li	a6,2047
80002698:	fd5ff06f          	j	8000266c <__subdf3+0x590>
8000269c:	008007b7          	lui	a5,0x800
800026a0:	00fe6e33          	or	t3,t3,a5
800026a4:	00080593          	mv	a1,a6
800026a8:	03800793          	li	a5,56
800026ac:	08b7c263          	blt	a5,a1,80002730 <__subdf3+0x654>
800026b0:	01f00793          	li	a5,31
800026b4:	04b7c463          	blt	a5,a1,800026fc <__subdf3+0x620>
800026b8:	02000813          	li	a6,32
800026bc:	40b80833          	sub	a6,a6,a1
800026c0:	010e17b3          	sll	a5,t3,a6
800026c4:	00b55eb3          	srl	t4,a0,a1
800026c8:	01051833          	sll	a6,a0,a6
800026cc:	01d7e7b3          	or	a5,a5,t4
800026d0:	01003833          	snez	a6,a6
800026d4:	0107e7b3          	or	a5,a5,a6
800026d8:	00be55b3          	srl	a1,t3,a1
800026dc:	40f607b3          	sub	a5,a2,a5
800026e0:	00f63533          	sltu	a0,a2,a5
800026e4:	40b705b3          	sub	a1,a4,a1
800026e8:	40a58733          	sub	a4,a1,a0
800026ec:	00078613          	mv	a2,a5
800026f0:	00088813          	mv	a6,a7
800026f4:	00068593          	mv	a1,a3
800026f8:	e95ff06f          	j	8000258c <__subdf3+0x4b0>
800026fc:	fe058793          	addi	a5,a1,-32 # 7ffe0 <_tbss_end+0x7ffe0>
80002700:	02000e93          	li	t4,32
80002704:	00fe57b3          	srl	a5,t3,a5
80002708:	00000813          	li	a6,0
8000270c:	01d58863          	beq	a1,t4,8000271c <__subdf3+0x640>
80002710:	04000813          	li	a6,64
80002714:	40b80833          	sub	a6,a6,a1
80002718:	010e1833          	sll	a6,t3,a6
8000271c:	00a86833          	or	a6,a6,a0
80002720:	01003833          	snez	a6,a6
80002724:	0107e7b3          	or	a5,a5,a6
80002728:	00000593          	li	a1,0
8000272c:	fb1ff06f          	j	800026dc <__subdf3+0x600>
80002730:	00ae67b3          	or	a5,t3,a0
80002734:	00f037b3          	snez	a5,a5
80002738:	ff1ff06f          	j	80002728 <__subdf3+0x64c>
8000273c:	00178813          	addi	a6,a5,1 # 800001 <_tbss_end+0x800001>
80002740:	7fe87813          	andi	a6,a6,2046
80002744:	10081863          	bnez	a6,80002854 <__subdf3+0x778>
80002748:	00c76833          	or	a6,a4,a2
8000274c:	00ae6eb3          	or	t4,t3,a0
80002750:	08079263          	bnez	a5,800027d4 <__subdf3+0x6f8>
80002754:	020e9863          	bnez	t4,80002784 <__subdf3+0x6a8>
80002758:	3e081e63          	bnez	a6,80002b54 <__subdf3+0xa78>
8000275c:	ffe30593          	addi	a1,t1,-2
80002760:	0015b593          	seqz	a1,a1
80002764:	00000e13          	li	t3,0
80002768:	00000613          	li	a2,0
8000276c:	00ce66b3          	or	a3,t3,a2
80002770:	1e069263          	bnez	a3,80002954 <__subdf3+0x878>
80002774:	00000e13          	li	t3,0
80002778:	00000813          	li	a6,0
8000277c:	00000793          	li	a5,0
80002780:	2c40006f          	j	80002a44 <__subdf3+0x968>
80002784:	3c080c63          	beqz	a6,80002b5c <__subdf3+0xa80>
80002788:	40c50833          	sub	a6,a0,a2
8000278c:	010538b3          	sltu	a7,a0,a6
80002790:	40ee07b3          	sub	a5,t3,a4
80002794:	411787b3          	sub	a5,a5,a7
80002798:	00879893          	slli	a7,a5,0x8
8000279c:	0208d063          	bgez	a7,800027bc <__subdf3+0x6e0>
800027a0:	40a60533          	sub	a0,a2,a0
800027a4:	00a637b3          	sltu	a5,a2,a0
800027a8:	41c70733          	sub	a4,a4,t3
800027ac:	00050613          	mv	a2,a0
800027b0:	40f70e33          	sub	t3,a4,a5
800027b4:	00068593          	mv	a1,a3
800027b8:	fb5ff06f          	j	8000276c <__subdf3+0x690>
800027bc:	00f86633          	or	a2,a6,a5
800027c0:	3a061263          	bnez	a2,80002b64 <__subdf3+0xa88>
800027c4:	ffe30593          	addi	a1,t1,-2
800027c8:	0015b593          	seqz	a1,a1
800027cc:	00000e13          	li	t3,0
800027d0:	f9dff06f          	j	8000276c <__subdf3+0x690>
800027d4:	7ff00f13          	li	t5,2047
800027d8:	03e79e63          	bne	a5,t5,80002814 <__subdf3+0x738>
800027dc:	380e8a63          	beqz	t4,80002b70 <__subdf3+0xa94>
800027e0:	016e5793          	srli	a5,t3,0x16
800027e4:	0017c793          	xori	a5,a5,1
800027e8:	0017f793          	andi	a5,a5,1
800027ec:	00479793          	slli	a5,a5,0x4
800027f0:	05e89863          	bne	a7,t5,80002840 <__subdf3+0x764>
800027f4:	02080463          	beqz	a6,8000281c <__subdf3+0x740>
800027f8:	00971893          	slli	a7,a4,0x9
800027fc:	0208c063          	bltz	a7,8000281c <__subdf3+0x740>
80002800:	00068593          	mv	a1,a3
80002804:	020e9263          	bnez	t4,80002828 <__subdf3+0x74c>
80002808:	7ff00813          	li	a6,2047
8000280c:	01000793          	li	a5,16
80002810:	addff06f          	j	800022ec <__subdf3+0x210>
80002814:	00000793          	li	a5,0
80002818:	fde88ee3          	beq	a7,t5,800027f4 <__subdf3+0x718>
8000281c:	020e9263          	bnez	t4,80002840 <__subdf3+0x764>
80002820:	00068593          	mv	a1,a3
80002824:	b4081ae3          	bnez	a6,80002378 <__subdf3+0x29c>
80002828:	00000593          	li	a1,0
8000282c:	00400737          	lui	a4,0x400
80002830:	00000613          	li	a2,0
80002834:	fd5ff06f          	j	80002808 <__subdf3+0x72c>
80002838:	00000793          	li	a5,0
8000283c:	fb9ff06f          	j	800027f4 <__subdf3+0x718>
80002840:	c20806e3          	beqz	a6,8000246c <__subdf3+0x390>
80002844:	00000593          	li	a1,0
80002848:	00400737          	lui	a4,0x400
8000284c:	00000613          	li	a2,0
80002850:	b29ff06f          	j	80002378 <__subdf3+0x29c>
80002854:	40c50833          	sub	a6,a0,a2
80002858:	01053f33          	sltu	t5,a0,a6
8000285c:	40ee08b3          	sub	a7,t3,a4
80002860:	41e888b3          	sub	a7,a7,t5
80002864:	00889f13          	slli	t5,a7,0x8
80002868:	00080e93          	mv	t4,a6
8000286c:	060f5c63          	bgez	t5,800028e4 <__subdf3+0x808>
80002870:	40a60eb3          	sub	t4,a2,a0
80002874:	41c708b3          	sub	a7,a4,t3
80002878:	01d63633          	sltu	a2,a2,t4
8000287c:	40c888b3          	sub	a7,a7,a2
80002880:	00068593          	mv	a1,a3
80002884:	06088663          	beqz	a7,800028f0 <__subdf3+0x814>
80002888:	60089813          	clz	a6,a7
8000288c:	ff880813          	addi	a6,a6,-8
80002890:	02000713          	li	a4,32
80002894:	41070733          	sub	a4,a4,a6
80002898:	010898b3          	sll	a7,a7,a6
8000289c:	00eed733          	srl	a4,t4,a4
800028a0:	01176733          	or	a4,a4,a7
800028a4:	010e98b3          	sll	a7,t4,a6
800028a8:	08f84a63          	blt	a6,a5,8000293c <__subdf3+0x860>
800028ac:	40f80833          	sub	a6,a6,a5
800028b0:	00180e13          	addi	t3,a6,1
800028b4:	01f00793          	li	a5,31
800028b8:	05c7ca63          	blt	a5,t3,8000290c <__subdf3+0x830>
800028bc:	02000793          	li	a5,32
800028c0:	41c787b3          	sub	a5,a5,t3
800028c4:	00f71633          	sll	a2,a4,a5
800028c8:	01c8d6b3          	srl	a3,a7,t3
800028cc:	00f897b3          	sll	a5,a7,a5
800028d0:	00d66633          	or	a2,a2,a3
800028d4:	00f037b3          	snez	a5,a5
800028d8:	00f66633          	or	a2,a2,a5
800028dc:	01c75e33          	srl	t3,a4,t3
800028e0:	e8dff06f          	j	8000276c <__subdf3+0x690>
800028e4:	01186633          	or	a2,a6,a7
800028e8:	f8061ee3          	bnez	a2,80002884 <__subdf3+0x7a8>
800028ec:	ed9ff06f          	j	800027c4 <__subdf3+0x6e8>
800028f0:	600e9713          	clz	a4,t4
800028f4:	01f00693          	li	a3,31
800028f8:	01870813          	addi	a6,a4,24 # 400018 <_tbss_end+0x400018>
800028fc:	f906dae3          	bge	a3,a6,80002890 <__subdf3+0x7b4>
80002900:	ff870713          	addi	a4,a4,-8
80002904:	00ee9733          	sll	a4,t4,a4
80002908:	fa1ff06f          	j	800028a8 <__subdf3+0x7cc>
8000290c:	fe180813          	addi	a6,a6,-31
80002910:	02000793          	li	a5,32
80002914:	01075833          	srl	a6,a4,a6
80002918:	00000613          	li	a2,0
8000291c:	00fe0863          	beq	t3,a5,8000292c <__subdf3+0x850>
80002920:	04000613          	li	a2,64
80002924:	41c60633          	sub	a2,a2,t3
80002928:	00c71633          	sll	a2,a4,a2
8000292c:	00c8e633          	or	a2,a7,a2
80002930:	00c03633          	snez	a2,a2
80002934:	00c86633          	or	a2,a6,a2
80002938:	e95ff06f          	j	800027cc <__subdf3+0x6f0>
8000293c:	41078833          	sub	a6,a5,a6
80002940:	ff8007b7          	lui	a5,0xff800
80002944:	fff78793          	addi	a5,a5,-1 # ff7fffff <__global_pointer$+0x7f7fc737>
80002948:	00f77733          	and	a4,a4,a5
8000294c:	00088613          	mv	a2,a7
80002950:	b51ff06f          	j	800024a0 <__subdf3+0x3c4>
80002954:	00161693          	slli	a3,a2,0x1
80002958:	01f65713          	srli	a4,a2,0x1f
8000295c:	0076f513          	andi	a0,a3,7
80002960:	00000793          	li	a5,0
80002964:	20ee2733          	sh1add	a4,t3,a4
80002968:	02050a63          	beqz	a0,8000299c <__subdf3+0x8c0>
8000296c:	00200793          	li	a5,2
80002970:	08f30c63          	beq	t1,a5,80002a08 <__subdf3+0x92c>
80002974:	00300793          	li	a5,3
80002978:	06f30a63          	beq	t1,a5,800029ec <__subdf3+0x910>
8000297c:	00100793          	li	a5,1
80002980:	00031e63          	bnez	t1,8000299c <__subdf3+0x8c0>
80002984:	00f6f513          	andi	a0,a3,15
80002988:	00400813          	li	a6,4
8000298c:	01050863          	beq	a0,a6,8000299c <__subdf3+0x8c0>
80002990:	ffc6b693          	sltiu	a3,a3,-4
80002994:	0016b693          	seqz	a3,a3
80002998:	00d70733          	add	a4,a4,a3
8000299c:	01875713          	srli	a4,a4,0x18
800029a0:	00174713          	xori	a4,a4,1
800029a4:	00177713          	andi	a4,a4,1
800029a8:	00060693          	mv	a3,a2
800029ac:	00000813          	li	a6,0
800029b0:	00767513          	andi	a0,a2,7
800029b4:	08050063          	beqz	a0,80002a34 <__subdf3+0x958>
800029b8:	00200513          	li	a0,2
800029bc:	0017e793          	ori	a5,a5,1
800029c0:	06a30863          	beq	t1,a0,80002a30 <__subdf3+0x954>
800029c4:	00300513          	li	a0,3
800029c8:	04a30e63          	beq	t1,a0,80002a24 <__subdf3+0x948>
800029cc:	06031463          	bnez	t1,80002a34 <__subdf3+0x958>
800029d0:	00f67513          	andi	a0,a2,15
800029d4:	00400893          	li	a7,4
800029d8:	05150e63          	beq	a0,a7,80002a34 <__subdf3+0x958>
800029dc:	00460693          	addi	a3,a2,4
800029e0:	00c6b633          	sltu	a2,a3,a2
800029e4:	00ce0e33          	add	t3,t3,a2
800029e8:	04c0006f          	j	80002a34 <__subdf3+0x958>
800029ec:	00058793          	mv	a5,a1
800029f0:	fa0596e3          	bnez	a1,8000299c <__subdf3+0x8c0>
800029f4:	ff86b693          	sltiu	a3,a3,-8
800029f8:	0016b693          	seqz	a3,a3
800029fc:	00d70733          	add	a4,a4,a3
80002a00:	00100793          	li	a5,1
80002a04:	f99ff06f          	j	8000299c <__subdf3+0x8c0>
80002a08:	00100793          	li	a5,1
80002a0c:	f80588e3          	beqz	a1,8000299c <__subdf3+0x8c0>
80002a10:	ff86b693          	sltiu	a3,a3,-8
80002a14:	0016b693          	seqz	a3,a3
80002a18:	00d70733          	add	a4,a4,a3
80002a1c:	00058793          	mv	a5,a1
80002a20:	f7dff06f          	j	8000299c <__subdf3+0x8c0>
80002a24:	00059863          	bnez	a1,80002a34 <__subdf3+0x958>
80002a28:	00860693          	addi	a3,a2,8
80002a2c:	fb5ff06f          	j	800029e0 <__subdf3+0x904>
80002a30:	fe059ce3          	bnez	a1,80002a28 <__subdf3+0x94c>
80002a34:	00070863          	beqz	a4,80002a44 <__subdf3+0x968>
80002a38:	0017f713          	andi	a4,a5,1
80002a3c:	00171713          	slli	a4,a4,0x1
80002a40:	00e7e7b3          	or	a5,a5,a4
80002a44:	008e1713          	slli	a4,t3,0x8
80002a48:	00075e63          	bgez	a4,80002a64 <__subdf3+0x988>
80002a4c:	00180813          	addi	a6,a6,1
80002a50:	7ff00713          	li	a4,2047
80002a54:	06e80a63          	beq	a6,a4,80002ac8 <__subdf3+0x9ec>
80002a58:	ff800737          	lui	a4,0xff800
80002a5c:	fff70713          	addi	a4,a4,-1 # ff7fffff <__global_pointer$+0x7f7fc737>
80002a60:	00ee7e33          	and	t3,t3,a4
80002a64:	0036d693          	srli	a3,a3,0x3
80002a68:	01de1713          	slli	a4,t3,0x1d
80002a6c:	00d76733          	or	a4,a4,a3
80002a70:	7ff00693          	li	a3,2047
80002a74:	003e5e13          	srli	t3,t3,0x3
80002a78:	00d81e63          	bne	a6,a3,80002a94 <__subdf3+0x9b8>
80002a7c:	01c76733          	or	a4,a4,t3
80002a80:	00000e13          	li	t3,0
80002a84:	00070863          	beqz	a4,80002a94 <__subdf3+0x9b8>
80002a88:	00080e37          	lui	t3,0x80
80002a8c:	00000713          	li	a4,0
80002a90:	00000593          	li	a1,0
80002a94:	7ff006b7          	lui	a3,0x7ff00
80002a98:	01481813          	slli	a6,a6,0x14
80002a9c:	00ce1e13          	slli	t3,t3,0xc
80002aa0:	00d87833          	and	a6,a6,a3
80002aa4:	00ce5e13          	srli	t3,t3,0xc
80002aa8:	01f59593          	slli	a1,a1,0x1f
80002aac:	01c86833          	or	a6,a6,t3
80002ab0:	00b866b3          	or	a3,a6,a1
80002ab4:	00070513          	mv	a0,a4
80002ab8:	00068593          	mv	a1,a3
80002abc:	0c078663          	beqz	a5,80002b88 <__subdf3+0xaac>
80002ac0:	0017a073          	csrs	fflags,a5
80002ac4:	00008067          	ret
80002ac8:	00000693          	li	a3,0
80002acc:	02030463          	beqz	t1,80002af4 <__subdf3+0xa18>
80002ad0:	00300713          	li	a4,3
80002ad4:	00e31a63          	bne	t1,a4,80002ae8 <__subdf3+0xa0c>
80002ad8:	00058e63          	beqz	a1,80002af4 <__subdf3+0xa18>
80002adc:	fff00693          	li	a3,-1
80002ae0:	7fe00813          	li	a6,2046
80002ae4:	0100006f          	j	80002af4 <__subdf3+0xa18>
80002ae8:	00200713          	li	a4,2
80002aec:	fee318e3          	bne	t1,a4,80002adc <__subdf3+0xa00>
80002af0:	fe0586e3          	beqz	a1,80002adc <__subdf3+0xa00>
80002af4:	0057e793          	ori	a5,a5,5
80002af8:	00068e13          	mv	t3,a3
80002afc:	f69ff06f          	j	80002a64 <__subdf3+0x988>
80002b00:	00000713          	li	a4,0
80002b04:	00000613          	li	a2,0
80002b08:	7ff00813          	li	a6,2047
80002b0c:	995ff06f          	j	800024a0 <__subdf3+0x3c4>
80002b10:	00000713          	li	a4,0
80002b14:	98dff06f          	j	800024a0 <__subdf3+0x3c4>
80002b18:	00000713          	li	a4,0
80002b1c:	fedff06f          	j	80002b08 <__subdf3+0xa2c>
80002b20:	00000713          	li	a4,0
80002b24:	00000613          	li	a2,0
80002b28:	fc4ff06f          	j	800022ec <__subdf3+0x210>
80002b2c:	00000713          	li	a4,0
80002b30:	00000613          	li	a2,0
80002b34:	b39ff06f          	j	8000266c <__subdf3+0x590>
80002b38:	00000713          	li	a4,0
80002b3c:	00000613          	li	a2,0
80002b40:	7ff00813          	li	a6,2047
80002b44:	00068593          	mv	a1,a3
80002b48:	959ff06f          	j	800024a0 <__subdf3+0x3c4>
80002b4c:	00070e13          	mv	t3,a4
80002b50:	c1dff06f          	j	8000276c <__subdf3+0x690>
80002b54:	00070e13          	mv	t3,a4
80002b58:	c5dff06f          	j	800027b4 <__subdf3+0x6d8>
80002b5c:	00050613          	mv	a2,a0
80002b60:	c0dff06f          	j	8000276c <__subdf3+0x690>
80002b64:	00078e13          	mv	t3,a5
80002b68:	00080613          	mv	a2,a6
80002b6c:	c01ff06f          	j	8000276c <__subdf3+0x690>
80002b70:	ccf884e3          	beq	a7,a5,80002838 <__subdf3+0x75c>
80002b74:	00000793          	li	a5,0
80002b78:	ca9ff06f          	j	80002820 <__subdf3+0x744>
80002b7c:	f8f896e3          	bne	a7,a5,80002b08 <__subdf3+0xa2c>
80002b80:	00000793          	li	a5,0
80002b84:	8b9ff06f          	j	8000243c <__subdf3+0x360>
80002b88:	00008067          	ret

80002b8c <__fixdfsi>:
80002b8c:	002027f3          	frrm	a5
80002b90:	00100737          	lui	a4,0x100
80002b94:	0145d693          	srli	a3,a1,0x14
80002b98:	fff70793          	addi	a5,a4,-1 # fffff <_tbss_end+0xfffff>
80002b9c:	7ff6f693          	andi	a3,a3,2047
80002ba0:	3fe00613          	li	a2,1022
80002ba4:	00b7f7b3          	and	a5,a5,a1
80002ba8:	01f5d593          	srli	a1,a1,0x1f
80002bac:	00d64a63          	blt	a2,a3,80002bc0 <__fixdfsi+0x34>
80002bb0:	0a069863          	bnez	a3,80002c60 <__fixdfsi+0xd4>
80002bb4:	00a7e533          	or	a0,a5,a0
80002bb8:	0a051463          	bnez	a0,80002c60 <__fixdfsi+0xd4>
80002bbc:	00008067          	ret
80002bc0:	41d00613          	li	a2,1053
80002bc4:	02d65863          	bge	a2,a3,80002bf4 <__fixdfsi+0x68>
80002bc8:	0a058263          	beqz	a1,80002c6c <__fixdfsi+0xe0>
80002bcc:	41e00713          	li	a4,1054
80002bd0:	0ae69663          	bne	a3,a4,80002c7c <__fixdfsi+0xf0>
80002bd4:	00b79793          	slli	a5,a5,0xb
80002bd8:	01555713          	srli	a4,a0,0x15
80002bdc:	00e7e7b3          	or	a5,a5,a4
80002be0:	08079e63          	bnez	a5,80002c7c <__fixdfsi+0xf0>
80002be4:	00b51513          	slli	a0,a0,0xb
80002be8:	08051e63          	bnez	a0,80002c84 <__fixdfsi+0xf8>
80002bec:	80000537          	lui	a0,0x80000
80002bf0:	00008067          	ret
80002bf4:	43300613          	li	a2,1075
80002bf8:	00e7e7b3          	or	a5,a5,a4
80002bfc:	40d60633          	sub	a2,a2,a3
80002c00:	01f00713          	li	a4,31
80002c04:	02c74863          	blt	a4,a2,80002c34 <__fixdfsi+0xa8>
80002c08:	bed68693          	addi	a3,a3,-1043 # 7feffbed <_tbss_end+0x7feffbed>
80002c0c:	00d51733          	sll	a4,a0,a3
80002c10:	00d797b3          	sll	a5,a5,a3
80002c14:	00c55533          	srl	a0,a0,a2
80002c18:	00e03733          	snez	a4,a4
80002c1c:	00a7e533          	or	a0,a5,a0
80002c20:	00058463          	beqz	a1,80002c28 <__fixdfsi+0x9c>
80002c24:	40a00533          	neg	a0,a0
80002c28:	00070463          	beqz	a4,80002c30 <__fixdfsi+0xa4>
80002c2c:	00172073          	csrs	fflags,a4
80002c30:	00008067          	ret
80002c34:	02000813          	li	a6,32
80002c38:	00000713          	li	a4,0
80002c3c:	01060663          	beq	a2,a6,80002c48 <__fixdfsi+0xbc>
80002c40:	c0d68713          	addi	a4,a3,-1011
80002c44:	00e79733          	sll	a4,a5,a4
80002c48:	41300613          	li	a2,1043
80002c4c:	00a76733          	or	a4,a4,a0
80002c50:	40d606b3          	sub	a3,a2,a3
80002c54:	00e03733          	snez	a4,a4
80002c58:	00d7d533          	srl	a0,a5,a3
80002c5c:	fc5ff06f          	j	80002c20 <__fixdfsi+0x94>
80002c60:	00000513          	li	a0,0
80002c64:	00100713          	li	a4,1
80002c68:	fc5ff06f          	j	80002c2c <__fixdfsi+0xa0>
80002c6c:	80000537          	lui	a0,0x80000
80002c70:	fff50513          	addi	a0,a0,-1 # 7fffffff <_tbss_end+0x7fffffff>
80002c74:	01000713          	li	a4,16
80002c78:	fb5ff06f          	j	80002c2c <__fixdfsi+0xa0>
80002c7c:	80000537          	lui	a0,0x80000
80002c80:	ff5ff06f          	j	80002c74 <__fixdfsi+0xe8>
80002c84:	00058713          	mv	a4,a1
80002c88:	80000537          	lui	a0,0x80000
80002c8c:	fa1ff06f          	j	80002c2c <__fixdfsi+0xa0>

80002c90 <__fixunsdfsi>:
80002c90:	00050693          	mv	a3,a0
80002c94:	002027f3          	frrm	a5
80002c98:	00100537          	lui	a0,0x100
80002c9c:	0145d713          	srli	a4,a1,0x14
80002ca0:	fff50793          	addi	a5,a0,-1 # fffff <_tbss_end+0xfffff>
80002ca4:	7ff77713          	andi	a4,a4,2047
80002ca8:	3fe00613          	li	a2,1022
80002cac:	00b7f7b3          	and	a5,a5,a1
80002cb0:	01f5d593          	srli	a1,a1,0x1f
80002cb4:	00e64a63          	blt	a2,a4,80002cc8 <__fixunsdfsi+0x38>
80002cb8:	08071863          	bnez	a4,80002d48 <__fixunsdfsi+0xb8>
80002cbc:	00d7e533          	or	a0,a5,a3
80002cc0:	08051463          	bnez	a0,80002d48 <__fixunsdfsi+0xb8>
80002cc4:	00008067          	ret
80002cc8:	0015c613          	xori	a2,a1,1
80002ccc:	41e60613          	addi	a2,a2,1054
80002cd0:	02c75c63          	bge	a4,a2,80002d08 <__fixunsdfsi+0x78>
80002cd4:	06059e63          	bnez	a1,80002d50 <__fixunsdfsi+0xc0>
80002cd8:	43300613          	li	a2,1075
80002cdc:	40e60633          	sub	a2,a2,a4
80002ce0:	01f00593          	li	a1,31
80002ce4:	00a7e7b3          	or	a5,a5,a0
80002ce8:	02c5c863          	blt	a1,a2,80002d18 <__fixunsdfsi+0x88>
80002cec:	bed70713          	addi	a4,a4,-1043
80002cf0:	00c6d633          	srl	a2,a3,a2
80002cf4:	00e797b3          	sll	a5,a5,a4
80002cf8:	00e696b3          	sll	a3,a3,a4
80002cfc:	00c7e533          	or	a0,a5,a2
80002d00:	04069063          	bnez	a3,80002d40 <__fixunsdfsi+0xb0>
80002d04:	00008067          	ret
80002d08:	fff58513          	addi	a0,a1,-1
80002d0c:	01000793          	li	a5,16
80002d10:	0017a073          	csrs	fflags,a5
80002d14:	00008067          	ret
80002d18:	02000513          	li	a0,32
80002d1c:	00000593          	li	a1,0
80002d20:	00a60663          	beq	a2,a0,80002d2c <__fixunsdfsi+0x9c>
80002d24:	c0d70593          	addi	a1,a4,-1011
80002d28:	00b795b3          	sll	a1,a5,a1
80002d2c:	41300613          	li	a2,1043
80002d30:	40e60733          	sub	a4,a2,a4
80002d34:	00d5e5b3          	or	a1,a1,a3
80002d38:	00e7d533          	srl	a0,a5,a4
80002d3c:	fc058ce3          	beqz	a1,80002d14 <__fixunsdfsi+0x84>
80002d40:	00100793          	li	a5,1
80002d44:	fcdff06f          	j	80002d10 <__fixunsdfsi+0x80>
80002d48:	00000513          	li	a0,0
80002d4c:	ff5ff06f          	j	80002d40 <__fixunsdfsi+0xb0>
80002d50:	00000513          	li	a0,0
80002d54:	fb9ff06f          	j	80002d0c <__fixunsdfsi+0x7c>

80002d58 <__floatsidf>:
80002d58:	06050a63          	beqz	a0,80002dcc <__floatsidf+0x74>
80002d5c:	40a00733          	neg	a4,a0
80002d60:	41e00613          	li	a2,1054
80002d64:	00a00793          	li	a5,10
80002d68:	0ae56733          	max	a4,a0,a4
80002d6c:	01f55593          	srli	a1,a0,0x1f
80002d70:	60071693          	clz	a3,a4
80002d74:	40d60633          	sub	a2,a2,a3
80002d78:	04d7c063          	blt	a5,a3,80002db8 <__floatsidf+0x60>
80002d7c:	00b00793          	li	a5,11
80002d80:	40d787b3          	sub	a5,a5,a3
80002d84:	01568693          	addi	a3,a3,21
80002d88:	00f757b3          	srl	a5,a4,a5
80002d8c:	00058513          	mv	a0,a1
80002d90:	00d71733          	sll	a4,a4,a3
80002d94:	00c79793          	slli	a5,a5,0xc
80002d98:	00c7d793          	srli	a5,a5,0xc
80002d9c:	01461613          	slli	a2,a2,0x14
80002da0:	00f66633          	or	a2,a2,a5
80002da4:	01f51513          	slli	a0,a0,0x1f
80002da8:	00a667b3          	or	a5,a2,a0
80002dac:	00078593          	mv	a1,a5
80002db0:	00070513          	mv	a0,a4
80002db4:	00008067          	ret
80002db8:	ff568693          	addi	a3,a3,-11
80002dbc:	00d717b3          	sll	a5,a4,a3
80002dc0:	00058513          	mv	a0,a1
80002dc4:	00000713          	li	a4,0
80002dc8:	fcdff06f          	j	80002d94 <__floatsidf+0x3c>
80002dcc:	00000613          	li	a2,0
80002dd0:	00000793          	li	a5,0
80002dd4:	ff1ff06f          	j	80002dc4 <__floatsidf+0x6c>

80002dd8 <__floatunsidf>:
80002dd8:	04050e63          	beqz	a0,80002e34 <__floatunsidf+0x5c>
80002ddc:	41e00693          	li	a3,1054
80002de0:	00a00793          	li	a5,10
80002de4:	60051713          	clz	a4,a0
80002de8:	40e686b3          	sub	a3,a3,a4
80002dec:	02e7cc63          	blt	a5,a4,80002e24 <__floatunsidf+0x4c>
80002df0:	00b00793          	li	a5,11
80002df4:	40e787b3          	sub	a5,a5,a4
80002df8:	01570713          	addi	a4,a4,21
80002dfc:	00f557b3          	srl	a5,a0,a5
80002e00:	00e51533          	sll	a0,a0,a4
80002e04:	00c79793          	slli	a5,a5,0xc
80002e08:	01469693          	slli	a3,a3,0x14
80002e0c:	00c7d793          	srli	a5,a5,0xc
80002e10:	00050613          	mv	a2,a0
80002e14:	00f6e733          	or	a4,a3,a5
80002e18:	00060513          	mv	a0,a2
80002e1c:	00070593          	mv	a1,a4
80002e20:	00008067          	ret
80002e24:	ff570713          	addi	a4,a4,-11
80002e28:	00e517b3          	sll	a5,a0,a4
80002e2c:	00000513          	li	a0,0
80002e30:	fd5ff06f          	j	80002e04 <__floatunsidf+0x2c>
80002e34:	00000793          	li	a5,0
80002e38:	00000693          	li	a3,0
80002e3c:	fc9ff06f          	j	80002e04 <__floatunsidf+0x2c>

Disassembly of section .text.startup:

80002e40 <main>:
80002e40:	f7010113          	addi	sp,sp,-144
80002e44:	08112623          	sw	ra,140(sp)
80002e48:	08812423          	sw	s0,136(sp)
80002e4c:	08912223          	sw	s1,132(sp)
80002e50:	09212023          	sw	s2,128(sp)
80002e54:	07312e23          	sw	s3,124(sp)
80002e58:	c58fd0ef          	jal	800002b0 <uart_aktiflestir>
80002e5c:	00000517          	auipc	a0,0x0
80002e60:	1cc50513          	addi	a0,a0,460 # 80003028 <pow10.0+0x68>
80002e64:	00c10993          	addi	s3,sp,12
80002e68:	b0dfd0ef          	jal	80000974 <printf_>
80002e6c:	00098413          	mv	s0,s3
80002e70:	01900493          	li	s1,25
80002e74:	00d00913          	li	s2,13
80002e78:	c78fd0ef          	jal	800002f0 <uart_char_oku>
80002e7c:	f9f50793          	addi	a5,a0,-97
80002e80:	0ff7f793          	zext.b	a5,a5
80002e84:	fe050713          	addi	a4,a0,-32
80002e88:	02f4e063          	bltu	s1,a5,80002ea8 <main+0x68>
80002e8c:	00e40023          	sb	a4,0(s0)
80002e90:	c60fd0ef          	jal	800002f0 <uart_char_oku>
80002e94:	f9f50793          	addi	a5,a0,-97
80002e98:	0ff7f793          	zext.b	a5,a5
80002e9c:	00140413          	addi	s0,s0,1
80002ea0:	fe050713          	addi	a4,a0,-32
80002ea4:	fef4f4e3          	bgeu	s1,a5,80002e8c <main+0x4c>
80002ea8:	00a40023          	sb	a0,0(s0)
80002eac:	01250663          	beq	a0,s2,80002eb8 <main+0x78>
80002eb0:	00140413          	addi	s0,s0,1
80002eb4:	fc5ff06f          	j	80002e78 <main+0x38>
80002eb8:	07040793          	addi	a5,s0,112
80002ebc:	00278433          	add	s0,a5,sp
80002ec0:	41340433          	sub	s0,s0,s3
80002ec4:	00098593          	mv	a1,s3
80002ec8:	00000517          	auipc	a0,0x0
80002ecc:	19450513          	addi	a0,a0,404 # 8000305c <pow10.0+0x9c>
80002ed0:	f8040ea3          	sb	zero,-99(s0)
80002ed4:	aa1fd0ef          	jal	80000974 <printf_>
80002ed8:	08c12083          	lw	ra,140(sp)
80002edc:	08812403          	lw	s0,136(sp)
80002ee0:	08412483          	lw	s1,132(sp)
80002ee4:	08012903          	lw	s2,128(sp)
80002ee8:	07c12983          	lw	s3,124(sp)
80002eec:	09010113          	addi	sp,sp,144
80002ef0:	00008067          	ret

Disassembly of section .rodata:

80002ef8 <pow10.0-0xc8>:
80002ef8:	dbd4                	.insn	2, 0xdbd4
80002efa:	ffff                	.insn	2, 0xffff
80002efc:	db58                	.insn	2, 0xdb58
80002efe:	ffff                	.insn	2, 0xffff
80002f00:	db58                	.insn	2, 0xdb58
80002f02:	ffff                	.insn	2, 0xffff
80002f04:	dbc8                	.insn	2, 0xdbc8
80002f06:	ffff                	.insn	2, 0xffff
80002f08:	db58                	.insn	2, 0xdb58
80002f0a:	ffff                	.insn	2, 0xffff
80002f0c:	db58                	.insn	2, 0xdb58
80002f0e:	ffff                	.insn	2, 0xffff
80002f10:	db58                	.insn	2, 0xdb58
80002f12:	ffff                	.insn	2, 0xffff
80002f14:	db58                	.insn	2, 0xdb58
80002f16:	ffff                	.insn	2, 0xffff
80002f18:	db58                	.insn	2, 0xdb58
80002f1a:	ffff                	.insn	2, 0xffff
80002f1c:	db58                	.insn	2, 0xdb58
80002f1e:	ffff                	.insn	2, 0xffff
80002f20:	db58                	.insn	2, 0xdb58
80002f22:	ffff                	.insn	2, 0xffff
80002f24:	dbbc                	.insn	2, 0xdbbc
80002f26:	ffff                	.insn	2, 0xffff
80002f28:	db58                	.insn	2, 0xdb58
80002f2a:	ffff                	.insn	2, 0xffff
80002f2c:	dbb0                	.insn	2, 0xdbb0
80002f2e:	ffff                	.insn	2, 0xffff
80002f30:	db58                	.insn	2, 0xdb58
80002f32:	ffff                	.insn	2, 0xffff
80002f34:	db58                	.insn	2, 0xdb58
80002f36:	ffff                	.insn	2, 0xffff
80002f38:	dba4                	.insn	2, 0xdba4
80002f3a:	ffff                	.insn	2, 0xffff
80002f3c:	dd68                	.insn	2, 0xdd68
80002f3e:	ffff                	.insn	2, 0xffff
80002f40:	dac8                	.insn	2, 0xdac8
80002f42:	ffff                	.insn	2, 0xffff
80002f44:	dac8                	.insn	2, 0xdac8
80002f46:	ffff                	.insn	2, 0xffff
80002f48:	dac8                	.insn	2, 0xdac8
80002f4a:	ffff                	.insn	2, 0xffff
80002f4c:	dac8                	.insn	2, 0xdac8
80002f4e:	ffff                	.insn	2, 0xffff
80002f50:	dac8                	.insn	2, 0xdac8
80002f52:	ffff                	.insn	2, 0xffff
80002f54:	dac8                	.insn	2, 0xdac8
80002f56:	ffff                	.insn	2, 0xffff
80002f58:	dac8                	.insn	2, 0xdac8
80002f5a:	ffff                	.insn	2, 0xffff
80002f5c:	dac8                	.insn	2, 0xdac8
80002f5e:	ffff                	.insn	2, 0xffff
80002f60:	dac8                	.insn	2, 0xdac8
80002f62:	ffff                	.insn	2, 0xffff
80002f64:	dac8                	.insn	2, 0xdac8
80002f66:	ffff                	.insn	2, 0xffff
80002f68:	dac8                	.insn	2, 0xdac8
80002f6a:	ffff                	.insn	2, 0xffff
80002f6c:	dac8                	.insn	2, 0xdac8
80002f6e:	ffff                	.insn	2, 0xffff
80002f70:	dac8                	.insn	2, 0xdac8
80002f72:	ffff                	.insn	2, 0xffff
80002f74:	dac8                	.insn	2, 0xdac8
80002f76:	ffff                	.insn	2, 0xffff
80002f78:	dac8                	.insn	2, 0xdac8
80002f7a:	ffff                	.insn	2, 0xffff
80002f7c:	dac8                	.insn	2, 0xdac8
80002f7e:	ffff                	.insn	2, 0xffff
80002f80:	dac8                	.insn	2, 0xdac8
80002f82:	ffff                	.insn	2, 0xffff
80002f84:	e1a8                	.insn	2, 0xe1a8
80002f86:	ffff                	.insn	2, 0xffff
80002f88:	dac8                	.insn	2, 0xdac8
80002f8a:	ffff                	.insn	2, 0xffff
80002f8c:	dac8                	.insn	2, 0xdac8
80002f8e:	ffff                	.insn	2, 0xffff
80002f90:	dac8                	.insn	2, 0xdac8
80002f92:	ffff                	.insn	2, 0xffff
80002f94:	dac8                	.insn	2, 0xdac8
80002f96:	ffff                	.insn	2, 0xffff
80002f98:	dac8                	.insn	2, 0xdac8
80002f9a:	ffff                	.insn	2, 0xffff
80002f9c:	dac8                	.insn	2, 0xdac8
80002f9e:	ffff                	.insn	2, 0xffff
80002fa0:	dac8                	.insn	2, 0xdac8
80002fa2:	ffff                	.insn	2, 0xffff
80002fa4:	dac8                	.insn	2, 0xdac8
80002fa6:	ffff                	.insn	2, 0xffff
80002fa8:	dac8                	.insn	2, 0xdac8
80002faa:	ffff                	.insn	2, 0xffff
80002fac:	e1a8                	.insn	2, 0xe1a8
80002fae:	ffff                	.insn	2, 0xffff
80002fb0:	df8c                	.insn	2, 0xdf8c
80002fb2:	ffff                	.insn	2, 0xffff
80002fb4:	e1a8                	.insn	2, 0xe1a8
80002fb6:	ffff                	.insn	2, 0xffff
80002fb8:	dac8                	.insn	2, 0xdac8
80002fba:	ffff                	.insn	2, 0xffff
80002fbc:	dd68                	.insn	2, 0xdd68
80002fbe:	ffff                	.insn	2, 0xffff

80002fc0 <pow10.0>:
80002fc0:	0000                	.insn	2, 0x
80002fc2:	0000                	.insn	2, 0x
80002fc4:	0000                	.insn	2, 0x
80002fc6:	3ff0                	.insn	2, 0x3ff0
80002fc8:	0000                	.insn	2, 0x
80002fca:	0000                	.insn	2, 0x
80002fcc:	0000                	.insn	2, 0x
80002fce:	4024                	.insn	2, 0x4024
80002fd0:	0000                	.insn	2, 0x
80002fd2:	0000                	.insn	2, 0x
80002fd4:	0000                	.insn	2, 0x
80002fd6:	4059                	.insn	2, 0x4059
80002fd8:	0000                	.insn	2, 0x
80002fda:	0000                	.insn	2, 0x
80002fdc:	4000                	.insn	2, 0x4000
80002fde:	0000408f          	.insn	4, 0x408f
80002fe2:	0000                	.insn	2, 0x
80002fe4:	8800                	.insn	2, 0x8800
80002fe6:	000040c3          	fmadd.s	ft1,ft0,ft0,ft0,rmm
80002fea:	0000                	.insn	2, 0x
80002fec:	6a00                	.insn	2, 0x6a00
80002fee:	40f8                	.insn	2, 0x40f8
80002ff0:	0000                	.insn	2, 0x
80002ff2:	0000                	.insn	2, 0x
80002ff4:	8480                	.insn	2, 0x8480
80002ff6:	412e                	.insn	2, 0x412e
80002ff8:	0000                	.insn	2, 0x
80002ffa:	0000                	.insn	2, 0x
80002ffc:	12d0                	.insn	2, 0x12d0
80002ffe:	00004163          	bltz	zero,80003000 <pow10.0+0x40>
80003002:	0000                	.insn	2, 0x
80003004:	d784                	.insn	2, 0xd784
80003006:	00004197          	auipc	gp,0x4
8000300a:	0000                	.insn	2, 0x
8000300c:	cd65                	.insn	2, 0xcd65
8000300e:	41cd                	.insn	2, 0x41cd

Disassembly of section .rodata.str1.4:

80003010 <.rodata.str1.4>:
80003010:	6e66                	.insn	2, 0x6e66
80003012:	2b69                	.insn	2, 0x2b69
80003014:	0000                	.insn	2, 0x
80003016:	0000                	.insn	2, 0x
80003018:	6e66                	.insn	2, 0x6e66
8000301a:	0069                	.insn	2, 0x0069
8000301c:	616e                	.insn	2, 0x616e
8000301e:	006e                	.insn	2, 0x006e
80003020:	6e66                	.insn	2, 0x6e66
80003022:	2d69                	.insn	2, 0x2d69
80003024:	0000                	.insn	2, 0x
80003026:	0000                	.insn	2, 0x
80003028:	6962                	.insn	2, 0x6962
8000302a:	2072                	.insn	2, 0x2072
8000302c:	6c796573          	csrrsi	a0,0x6c7,18
80003030:	7265                	.insn	2, 0x7265
80003032:	7920                	.insn	2, 0x7920
80003034:	7a61                	.insn	2, 0x7a61
80003036:	2021                	.insn	2, 0x2021
80003038:	7328                	.insn	2, 0x7328
8000303a:	6174                	.insn	2, 0x6174
8000303c:	65746b63          	bltu	s0,s7,80003692 <_end+0x593>
80003040:	6320                	.insn	2, 0x6320
80003042:	6c61                	.insn	2, 0x6c61
80003044:	7369                	.insn	2, 0x7369
80003046:	7969                	.insn	2, 0x7969
80003048:	3120726f          	jal	tp,8000a35a <__global_pointer$+0x6a92>
8000304c:	3030                	.insn	2, 0x3030
8000304e:	6b20                	.insn	2, 0x6b20
80003050:	7261                	.insn	2, 0x7261
80003052:	6b61                	.insn	2, 0x6b61
80003054:	6574                	.insn	2, 0x6574
80003056:	2972                	.insn	2, 0x2972
80003058:	000a                	.insn	2, 0x000a
8000305a:	0000                	.insn	2, 0x
8000305c:	7562                	.insn	2, 0x7562
8000305e:	7579                	.insn	2, 0x7579
80003060:	6168206b          	.insn	4, 0x6168206b
80003064:	6672                	.insn	2, 0x6672
80003066:	696c                	.insn	2, 0x696c
80003068:	6820                	.insn	2, 0x6820
8000306a:	6c61                	.insn	2, 0x6c61
8000306c:	3a69                	.insn	2, 0x3a69
8000306e:	2520                	.insn	2, 0x2520
80003070:	Address 0x80003070 is out of bounds.


Disassembly of section .tohost:

80003080 <tohost>:
	...

800030c0 <fromhost>:
	...

Disassembly of section .sdata:

800030c8 <_tbss_end+0x800030c8>:
800030c8:	0000                	.insn	2, 0x
800030ca:	0000                	.insn	2, 0x
800030cc:	cd65                	.insn	2, 0xcd65
800030ce:	41cd                	.insn	2, 0x41cd
800030d0:	0000                	.insn	2, 0x
800030d2:	0000                	.insn	2, 0x
800030d4:	8480                	.insn	2, 0x8480
800030d6:	412e                	.insn	2, 0x412e
800030d8:	ffff                	.insn	2, 0xffff
800030da:	ffff                	.insn	2, 0xffff
800030dc:	ffff                	.insn	2, 0xffff
800030de:	ffffffef          	jal	t6,800030dc <fromhost+0x1c>
800030e2:	ffff                	.insn	2, 0xffff
800030e4:	ffff                	.insn	2, 0xffff
800030e6:	00007fef          	jal	t6,8000a0e6 <__global_pointer$+0x681e>
800030ea:	0000                	.insn	2, 0x
800030ec:	cd65                	.insn	2, 0xcd65
800030ee:	c1cd                	.insn	2, 0xc1cd
800030f0:	0000                	.insn	2, 0x
800030f2:	0000                	.insn	2, 0x
800030f4:	0000                	.insn	2, 0x
800030f6:	3fe0                	.insn	2, 0x3fe0

800030f8 <error_msg.0>:
800030f8:	6148                	.insn	2, 0x6148
800030fa:	6174                	.insn	2, 0x6174
800030fc:	0a21                	.insn	2, 0x0a21
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	.insn	4, 0x3a434347
   4:	2820                	.insn	2, 0x2820
   6:	39386367          	.insn	4, 0x39386367
   a:	6431                	.insn	2, 0x6431
   c:	6438                	.insn	2, 0x6438
   e:	65333263          	.insn	4, 0x65333263
  12:	2029                	.insn	2, 0x2029
  14:	3331                	.insn	2, 0x3331
  16:	322e                	.insn	2, 0x322e
  18:	302e                	.insn	2, 0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	6f41                	.insn	2, 0x6f41
   2:	0000                	.insn	2, 0x
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	zero,a6,14 <_tbss_end+0x14>
   c:	0065                	.insn	2, 0x0065
   e:	0000                	.insn	2, 0x
  10:	1004                	.insn	2, 0x1004
  12:	7205                	.insn	2, 0x7205
  14:	3376                	.insn	2, 0x3376
  16:	6932                	.insn	2, 0x6932
  18:	7032                	.insn	2, 0x7032
  1a:	5f31                	.insn	2, 0x5f31
  1c:	326d                	.insn	2, 0x326d
  1e:	3070                	.insn	2, 0x3070
  20:	615f 7032 5f31      	.insn	6, 0x5f317032615f
  26:	3266                	.insn	2, 0x3266
  28:	3270                	.insn	2, 0x3270
  2a:	7a5f 6369 7273      	.insn	6, 0x727363697a5f
  30:	7032                	.insn	2, 0x7032
  32:	5f30                	.insn	2, 0x5f30
  34:	6d7a                	.insn	2, 0x6d7a
  36:	756d                	.insn	2, 0x756d
  38:	316c                	.insn	2, 0x316c
  3a:	3070                	.insn	2, 0x3070
  3c:	7a5f 6161 6f6d      	.insn	6, 0x6f6d61617a5f
  42:	7031                	.insn	2, 0x7031
  44:	5f30                	.insn	2, 0x5f30
  46:	617a                	.insn	2, 0x617a
  48:	726c                	.insn	2, 0x726c
  4a:	70316373          	csrrsi	t1,0x703,2
  4e:	5f30                	.insn	2, 0x5f30
  50:	627a                	.insn	2, 0x627a
  52:	3161                	.insn	2, 0x3161
  54:	3070                	.insn	2, 0x3070
  56:	7a5f 6262 7031      	.insn	6, 0x703162627a5f
  5c:	5f30                	.insn	2, 0x5f30
  5e:	627a                	.insn	2, 0x627a
  60:	30703163          	.insn	4, 0x30703163
  64:	7a5f 7362 7031      	.insn	6, 0x703173627a5f
  6a:	0030                	.insn	2, 0x0030
  6c:	0108                	.insn	2, 0x0108
  6e:	0b0a                	.insn	2, 0x0b0a

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	00000233          	add	tp,zero,zero
       4:	0005                	.insn	2, 0x0005
       6:	0401                	.insn	2, 0x0401
       8:	0000                	.insn	2, 0x
       a:	0000                	.insn	2, 0x
       c:	080c                	.insn	2, 0x080c
       e:	0000                	.insn	2, 0x
      10:	1d00                	.insn	2, 0x1d00
      12:	0000                	.insn	2, 0x
      14:	0000                	.insn	2, 0x
      16:	0026                	.insn	2, 0x0026
      18:	0000                	.insn	2, 0x
      1a:	16f0                	.insn	2, 0x16f0
      1c:	8000                	.insn	2, 0x8000
      1e:	00d8                	.insn	2, 0x00d8
      20:	0000                	.insn	2, 0x
      22:	0000                	.insn	2, 0x
      24:	0000                	.insn	2, 0x
      26:	0801                	.insn	2, 0x0801
      28:	3404                	.insn	2, 0x3404
      2a:	0001                	.insn	2, 0x0001
      2c:	0700                	.insn	2, 0x0700
      2e:	000000f3          	.insn	4, 0x00f3
      32:	5202                	.insn	2, 0x5202
      34:	390d                	.insn	2, 0x390d
      36:	0000                	.insn	2, 0x
      38:	0d00                	.insn	2, 0x0d00
      3a:	0504                	.insn	2, 0x0504
      3c:	6e69                	.insn	2, 0x6e69
      3e:	0074                	.insn	2, 0x0074
      40:	0101                	.insn	2, 0x0101
      42:	e706                	.insn	2, 0xe706
      44:	0000                	.insn	2, 0x
      46:	0100                	.insn	2, 0x0100
      48:	0508                	.insn	2, 0x0508
      4a:	0176                	.insn	2, 0x0176
      4c:	0000                	.insn	2, 0x
      4e:	0101                	.insn	2, 0x0101
      50:	e508                	.insn	2, 0xe508
      52:	0000                	.insn	2, 0x
      54:	0100                	.insn	2, 0x0100
      56:	0704                	.insn	2, 0x0704
      58:	0169                	.insn	2, 0x0169
      5a:	0000                	.insn	2, 0x
      5c:	0801                	.insn	2, 0x0801
      5e:	00015f07          	.insn	4, 0x00015f07
      62:	0100                	.insn	2, 0x0100
      64:	0702                	.insn	2, 0x0702
      66:	0106                	.insn	2, 0x0106
      68:	0000                	.insn	2, 0x
      6a:	0000de07          	.insn	4, 0xde07
      6e:	0300                	.insn	2, 0x0300
      70:	0f44                	.insn	2, 0x0f44
      72:	0026                	.insn	2, 0x0026
      74:	0000                	.insn	2, 0x
      76:	080e                	.insn	2, 0x080e
      78:	b2034b03          	lbu	s6,-1248(t1)
      7c:	0000                	.insn	2, 0x
      7e:	0400                	.insn	2, 0x0400
      80:	00d2                	.insn	2, 0x00d2
      82:	0000                	.insn	2, 0x
      84:	00005553          	fadd.s	fa0,ft0,ft0,unknown
      88:	2000                	.insn	2, 0x2000
      8a:	0400                	.insn	2, 0x0400
      8c:	00d8                	.insn	2, 0x00d8
      8e:	0000                	.insn	2, 0x
      90:	5554                	.insn	2, 0x5554
      92:	0000                	.insn	2, 0x
      94:	1400                	.insn	2, 0x1400
      96:	0f20                	.insn	2, 0x0f20
      98:	7865                	.insn	2, 0x7865
      9a:	0070                	.insn	2, 0x0070
      9c:	550e5503          	lhu	a0,1360(t3) # 80550 <_tbss_end+0x80550>
      a0:	0000                	.insn	2, 0x
      a2:	0b00                	.insn	2, 0x0b00
      a4:	0434                	.insn	2, 0x0434
      a6:	0101                	.insn	2, 0x0101
      a8:	0000                	.insn	2, 0x
      aa:	5556                	.insn	2, 0x5556
      ac:	0000                	.insn	2, 0x
      ae:	0100                	.insn	2, 0x0100
      b0:	8410003f 08000001 	.insn	8, 0x080000018410003f
      b8:	d8074803          	lbu	a6,-640(a4)
      bc:	0000                	.insn	2, 0x
      be:	1100                	.insn	2, 0x1100
      c0:	6c66                	.insn	2, 0x6c66
      c2:	0074                	.insn	2, 0x0074
      c4:	6a0a4a03          	lbu	s4,1696(s4)
      c8:	0000                	.insn	2, 0x
      ca:	1200                	.insn	2, 0x1200
      cc:	0190                	.insn	2, 0x0190
      ce:	0000                	.insn	2, 0x
      d0:	76055803          	lhu	a6,1888(a0)
      d4:	0000                	.insn	2, 0x
      d6:	0000                	.insn	2, 0x
      d8:	00000013          	nop
      dc:	0100                	.insn	2, 0x0100
      de:	0121                	.insn	2, 0x0121
      e0:	002d                	.insn	2, 0x002d
      e2:	0000                	.insn	2, 0x
      e4:	16f0                	.insn	2, 0x16f0
      e6:	8000                	.insn	2, 0x8000
      e8:	00d8                	.insn	2, 0x00d8
      ea:	0000                	.insn	2, 0x
      ec:	9c01                	.insn	2, 0x9c01
      ee:	0228                	.insn	2, 0x0228
      f0:	0000                	.insn	2, 0x
      f2:	6108                	.insn	2, 0x6108
      f4:	1100                	.insn	2, 0x1100
      f6:	006a                	.insn	2, 0x006a
      f8:	0000                	.insn	2, 0x
      fa:	000c                	.insn	2, 0x000c
      fc:	0000                	.insn	2, 0x
      fe:	6208                	.insn	2, 0x6208
     100:	1b00                	.insn	2, 0x1b00
     102:	006a                	.insn	2, 0x006a
     104:	0000                	.insn	2, 0x
     106:	0022                	.insn	2, 0x0022
     108:	0000                	.insn	2, 0x
     10a:	1e02                	.insn	2, 0x1e02
     10c:	0001                	.insn	2, 0x0001
     10e:	2300                	.insn	2, 0x2300
     110:	0039                	.insn	2, 0x0039
     112:	0000                	.insn	2, 0x
     114:	0066                	.insn	2, 0x0066
     116:	0000                	.insn	2, 0x
     118:	00019503          	lh	a0,0(gp) # 80007006 <__global_pointer$+0x373e>
     11c:	2300                	.insn	2, 0x2300
     11e:	0039                	.insn	2, 0x0039
     120:	0000                	.insn	2, 0x
     122:	4109                	.insn	2, 0x4109
     124:	635f 2400 0228      	.insn	6, 0x02282400635f
     12a:	0000                	.insn	2, 0x
     12c:	4105                	.insn	2, 0x4105
     12e:	735f 2400 0228      	.insn	6, 0x02282400735f
     134:	0000                	.insn	2, 0x
     136:	7b06                	.insn	2, 0x7b06
     138:	0800                	.insn	2, 0x0800
     13a:	059f1aff 00655f41 	.insn	12, 0x0002282400655f41059f1aff
     142:	00022824 
     146:	0100                	.insn	2, 0x0100
     148:	0260                	.insn	2, 0x0260
     14a:	0000013b          	.insn	4, 0x013b
     14e:	2f24                	.insn	2, 0x2f24
     150:	0002                	.insn	2, 0x0002
     152:	7c00                	.insn	2, 0x7c00
     154:	0000                	.insn	2, 0x
     156:	0200                	.insn	2, 0x0200
     158:	0119                	.insn	2, 0x0119
     15a:	0000                	.insn	2, 0x
     15c:	2f24                	.insn	2, 0x2f24
     15e:	0002                	.insn	2, 0x0002
     160:	a700                	.insn	2, 0xa700
     162:	0000                	.insn	2, 0x
     164:	0900                	.insn	2, 0x0900
     166:	5f42                	.insn	2, 0x5f42
     168:	28250063          	beq	a0,sp,3e8 <_tbss_end+0x3e8>
     16c:	0002                	.insn	2, 0x0002
     16e:	0a00                	.insn	2, 0x0a00
     170:	5f42                	.insn	2, 0x5f42
     172:	03250073          	.insn	4, 0x03250073
     176:	0228                	.insn	2, 0x0228
     178:	0000                	.insn	2, 0x
     17a:	00c1                	.insn	2, 0x00c1
     17c:	0000                	.insn	2, 0x
     17e:	4205                	.insn	2, 0x4205
     180:	655f 2500 0228      	.insn	6, 0x02282500655f
     186:	0000                	.insn	2, 0x
     188:	5601                	.insn	2, 0x5601
     18a:	5502                	.insn	2, 0x5502
     18c:	0001                	.insn	2, 0x0001
     18e:	2500                	.insn	2, 0x2500
     190:	0000022f          	.insn	4, 0x022f
     194:	000000e3          	beqz	zero,994 <_tbss_end+0x994>
     198:	5a14                	.insn	2, 0x5a14
     19a:	0001                	.insn	2, 0x0001
     19c:	0100                	.insn	2, 0x0100
     19e:	0325                	.insn	2, 0x0325
     1a0:	0000022f          	.insn	4, 0x022f
     1a4:	5f01                	.insn	2, 0x5f01
     1a6:	720a                	.insn	2, 0x720a
     1a8:	2600                	.insn	2, 0x2600
     1aa:	00002d0b          	.insn	4, 0x2d0b
     1ae:	0900                	.insn	2, 0x0900
     1b0:	0001                	.insn	2, 0x0001
     1b2:	0600                	.insn	2, 0x0600
     1b4:	000c                	.insn	2, 0x000c
     1b6:	0000                	.insn	2, 0x
     1b8:	000001c7          	fmsub.s	ft3,ft0,ft0,ft0,rne
     1bc:	00014003          	lbu	zero,0(sp)
     1c0:	2900                	.insn	2, 0x2900
     1c2:	00b2                	.insn	2, 0x00b2
     1c4:	0000                	.insn	2, 0x
     1c6:	0600                	.insn	2, 0x0600
     1c8:	0019                	.insn	2, 0x0019
     1ca:	0000                	.insn	2, 0x
     1cc:	000001db          	.insn	4, 0x01db
     1d0:	00014003          	lbu	zero,0(sp)
     1d4:	2a00                	.insn	2, 0x2a00
     1d6:	00b2                	.insn	2, 0x00b2
     1d8:	0000                	.insn	2, 0x
     1da:	0b00                	.insn	2, 0x0b00
     1dc:	000001eb          	.insn	4, 0x01eb
     1e0:	00012303          	lw	t1,0(sp)
     1e4:	2b00                	.insn	2, 0x2b00
     1e6:	0039                	.insn	2, 0x0039
     1e8:	0000                	.insn	2, 0x
     1ea:	0b00                	.insn	2, 0x0b00
     1ec:	000001fb          	.insn	4, 0x01fb
     1f0:	00012303          	lw	t1,0(sp)
     1f4:	2b00                	.insn	2, 0x2b00
     1f6:	0039                	.insn	2, 0x0039
     1f8:	0000                	.insn	2, 0x
     1fa:	0600                	.insn	2, 0x0600
     1fc:	00000023          	sb	zero,0(zero) # 0 <_tbss_end>
     200:	00000213          	li	tp,0
     204:	2302                	.insn	2, 0x2302
     206:	0001                	.insn	2, 0x0001
     208:	2b00                	.insn	2, 0x2b00
     20a:	0039                	.insn	2, 0x0039
     20c:	0000                	.insn	2, 0x
     20e:	0110                	.insn	2, 0x0110
     210:	0000                	.insn	2, 0x
     212:	1500                	.insn	2, 0x1500
     214:	0000002b          	.insn	4, 0x002b
     218:	2302                	.insn	2, 0x2302
     21a:	0001                	.insn	2, 0x0001
     21c:	2b00                	.insn	2, 0x2b00
     21e:	0039                	.insn	2, 0x0039
     220:	0000                	.insn	2, 0x
     222:	00000117          	auipc	sp,0x0
     226:	0000                	.insn	2, 0x
     228:	0401                	.insn	2, 0x0401
     22a:	7b05                	.insn	2, 0x7b05
     22c:	0001                	.insn	2, 0x0001
     22e:	0100                	.insn	2, 0x0100
     230:	0704                	.insn	2, 0x0704
     232:	0164                	.insn	2, 0x0164
     234:	0000                	.insn	2, 0x
     236:	2700                	.insn	2, 0x2700
     238:	0002                	.insn	2, 0x0002
     23a:	0500                	.insn	2, 0x0500
     23c:	0100                	.insn	2, 0x0100
     23e:	5104                	.insn	2, 0x5104
     240:	0001                	.insn	2, 0x0001
     242:	0c00                	.insn	2, 0x0c00
     244:	0008                	.insn	2, 0x0008
     246:	0000                	.insn	2, 0x
     248:	bc1d                	.insn	2, 0xbc1d
     24a:	0000                	.insn	2, 0x
     24c:	2600                	.insn	2, 0x2600
     24e:	0000                	.insn	2, 0x
     250:	c800                	.insn	2, 0xc800
     252:	e4800017          	auipc	zero,0xe4800
     256:	0000                	.insn	2, 0x
     258:	2700                	.insn	2, 0x2700
     25a:	01000003          	lb	zero,16(zero) # 10 <_tbss_end+0x10>
     25e:	0408                	.insn	2, 0x0408
     260:	0134                	.insn	2, 0x0134
     262:	0000                	.insn	2, 0x
     264:	f306                	.insn	2, 0xf306
     266:	0000                	.insn	2, 0x
     268:	0200                	.insn	2, 0x0200
     26a:	0d52                	.insn	2, 0x0d52
     26c:	0039                	.insn	2, 0x0039
     26e:	0000                	.insn	2, 0x
     270:	040d                	.insn	2, 0x040d
     272:	6905                	.insn	2, 0x6905
     274:	746e                	.insn	2, 0x746e
     276:	0100                	.insn	2, 0x0100
     278:	0601                	.insn	2, 0x0601
     27a:	000000e7          	jalr	zero # 0 <_tbss_end>
     27e:	0801                	.insn	2, 0x0801
     280:	7605                	.insn	2, 0x7605
     282:	0001                	.insn	2, 0x0001
     284:	0100                	.insn	2, 0x0100
     286:	0801                	.insn	2, 0x0801
     288:	00e5                	.insn	2, 0x00e5
     28a:	0000                	.insn	2, 0x
     28c:	0401                	.insn	2, 0x0401
     28e:	00016907          	.insn	4, 0x00016907
     292:	0100                	.insn	2, 0x0100
     294:	0708                	.insn	2, 0x0708
     296:	015f 0000 0201      	.insn	6, 0x02010000015f
     29c:	00010607          	.insn	4, 0x00010607
     2a0:	0600                	.insn	2, 0x0600
     2a2:	00de                	.insn	2, 0x00de
     2a4:	0000                	.insn	2, 0x
     2a6:	260f4403          	lbu	s0,608(t5)
     2aa:	0000                	.insn	2, 0x
     2ac:	0e00                	.insn	2, 0x0e00
     2ae:	0308                	.insn	2, 0x0308
     2b0:	00b2034b          	fnmsub.s	ft6,ft4,fa1,ft0,rne
     2b4:	0000                	.insn	2, 0x
     2b6:	d205                	.insn	2, 0xd205
     2b8:	0000                	.insn	2, 0x
     2ba:	5300                	.insn	2, 0x5300
     2bc:	0055                	.insn	2, 0x0055
     2be:	0000                	.insn	2, 0x
     2c0:	0020                	.insn	2, 0x0020
     2c2:	d805                	.insn	2, 0xd805
     2c4:	0000                	.insn	2, 0x
     2c6:	5400                	.insn	2, 0x5400
     2c8:	0055                	.insn	2, 0x0055
     2ca:	0000                	.insn	2, 0x
     2cc:	2014                	.insn	2, 0x2014
     2ce:	7078650f          	.insn	4, 0x7078650f
     2d2:	0300                	.insn	2, 0x0300
     2d4:	0e55                	.insn	2, 0x0e55
     2d6:	0055                	.insn	2, 0x0055
     2d8:	0000                	.insn	2, 0x
     2da:	0105340b          	.insn	4, 0x0105340b
     2de:	0001                	.insn	2, 0x0001
     2e0:	5600                	.insn	2, 0x5600
     2e2:	0055                	.insn	2, 0x0055
     2e4:	0000                	.insn	2, 0x
     2e6:	3f01                	.insn	2, 0x3f01
     2e8:	1000                	.insn	2, 0x1000
     2ea:	0184                	.insn	2, 0x0184
     2ec:	0000                	.insn	2, 0x
     2ee:	0308                	.insn	2, 0x0308
     2f0:	0748                	.insn	2, 0x0748
     2f2:	00d8                	.insn	2, 0x00d8
     2f4:	0000                	.insn	2, 0x
     2f6:	6611                	.insn	2, 0x6611
     2f8:	746c                	.insn	2, 0x746c
     2fa:	0300                	.insn	2, 0x0300
     2fc:	0a4a                	.insn	2, 0x0a4a
     2fe:	006a                	.insn	2, 0x006a
     300:	0000                	.insn	2, 0x
     302:	9012                	.insn	2, 0x9012
     304:	0001                	.insn	2, 0x0001
     306:	0300                	.insn	2, 0x0300
     308:	0558                	.insn	2, 0x0558
     30a:	0076                	.insn	2, 0x0076
     30c:	0000                	.insn	2, 0x
     30e:	1300                	.insn	2, 0x1300
     310:	019a                	.insn	2, 0x019a
     312:	0000                	.insn	2, 0x
     314:	2101                	.insn	2, 0x2101
     316:	2d01                	.insn	2, 0x2d01
     318:	0000                	.insn	2, 0x
     31a:	c800                	.insn	2, 0xc800
     31c:	e4800017          	auipc	zero,0xe4800
     320:	0000                	.insn	2, 0x
     322:	0100                	.insn	2, 0x0100
     324:	1c9c                	.insn	2, 0x1c9c
     326:	0002                	.insn	2, 0x0002
     328:	0700                	.insn	2, 0x0700
     32a:	0061                	.insn	2, 0x0061
     32c:	6a11                	.insn	2, 0x6a11
     32e:	0000                	.insn	2, 0x
     330:	2c00                	.insn	2, 0x2c00
     332:	0001                	.insn	2, 0x0001
     334:	0700                	.insn	2, 0x0700
     336:	0062                	.insn	2, 0x0062
     338:	00006a1b          	.insn	4, 0x6a1b
     33c:	4200                	.insn	2, 0x4200
     33e:	0001                	.insn	2, 0x0001
     340:	0200                	.insn	2, 0x0200
     342:	011e                	.insn	2, 0x011e
     344:	0000                	.insn	2, 0x
     346:	00003923          	.insn	4, 0x3923
     34a:	7000                	.insn	2, 0x7000
     34c:	0001                	.insn	2, 0x0001
     34e:	0300                	.insn	2, 0x0300
     350:	0195                	.insn	2, 0x0195
     352:	0000                	.insn	2, 0x
     354:	00003923          	.insn	4, 0x3923
     358:	0800                	.insn	2, 0x0800
     35a:	5f41                	.insn	2, 0x5f41
     35c:	1c240063          	beq	s0,sp,51c <_tbss_end+0x51c>
     360:	0002                	.insn	2, 0x0002
     362:	0400                	.insn	2, 0x0400
     364:	5f41                	.insn	2, 0x5f41
     366:	03240073          	.insn	4, 0x03240073
     36a:	021c                	.insn	2, 0x021c
     36c:	0000                	.insn	2, 0x
     36e:	7b06                	.insn	2, 0x7b06
     370:	0800                	.insn	2, 0x0800
     372:	049f1aff 00655f41 	.insn	12, 0x021c032400655f41049f1aff
     37a:	021c0324 
     37e:	0000                	.insn	2, 0x
     380:	6101                	.insn	2, 0x6101
     382:	3b02                	.insn	2, 0x3b02
     384:	0001                	.insn	2, 0x0001
     386:	2400                	.insn	2, 0x2400
     388:	00000223          	sb	zero,4(zero) # 4 <_tbss_end+0x4>
     38c:	0180                	.insn	2, 0x0180
     38e:	0000                	.insn	2, 0x
     390:	1909                	.insn	2, 0x1909
     392:	0001                	.insn	2, 0x0001
     394:	2400                	.insn	2, 0x2400
     396:	00000223          	sb	zero,4(zero) # 4 <_tbss_end+0x4>
     39a:	5601                	.insn	2, 0x5601
     39c:	4208                	.insn	2, 0x4208
     39e:	635f 2500 021c      	.insn	6, 0x021c2500635f
     3a4:	0000                	.insn	2, 0x
     3a6:	4204                	.insn	2, 0x4204
     3a8:	735f 2500 1c03      	.insn	6, 0x1c032500735f
     3ae:	0002                	.insn	2, 0x0002
     3b0:	0100                	.insn	2, 0x0100
     3b2:	145d                	.insn	2, 0x145d
     3b4:	5f42                	.insn	2, 0x5f42
     3b6:	0065                	.insn	2, 0x0065
     3b8:	2501                	.insn	2, 0x2501
     3ba:	00021c03          	lh	s8,0(tp) # 0 <_tbss_end>
     3be:	9f00                	.insn	2, 0x9f00
     3c0:	0001                	.insn	2, 0x0001
     3c2:	0200                	.insn	2, 0x0200
     3c4:	0155                	.insn	2, 0x0155
     3c6:	0000                	.insn	2, 0x
     3c8:	2325                	.insn	2, 0x2325
     3ca:	0002                	.insn	2, 0x0002
     3cc:	c100                	.insn	2, 0xc100
     3ce:	0001                	.insn	2, 0x0001
     3d0:	0900                	.insn	2, 0x0900
     3d2:	015a                	.insn	2, 0x015a
     3d4:	0000                	.insn	2, 0x
     3d6:	2325                	.insn	2, 0x2325
     3d8:	0002                	.insn	2, 0x0002
     3da:	0100                	.insn	2, 0x0100
     3dc:	045e                	.insn	2, 0x045e
     3de:	0072                	.insn	2, 0x0072
     3e0:	0b26                	.insn	2, 0x0b26
     3e2:	002d                	.insn	2, 0x002d
     3e4:	0000                	.insn	2, 0x
     3e6:	5a01                	.insn	2, 0x5a01
     3e8:	470a                	.insn	2, 0x470a
     3ea:	0000                	.insn	2, 0x
     3ec:	c500                	.insn	2, 0xc500
     3ee:	0001                	.insn	2, 0x0001
     3f0:	0300                	.insn	2, 0x0300
     3f2:	0140                	.insn	2, 0x0140
     3f4:	0000                	.insn	2, 0x
     3f6:	b229                	.insn	2, 0xb229
     3f8:	0000                	.insn	2, 0x
     3fa:	0000                	.insn	2, 0x
     3fc:	540a                	.insn	2, 0x540a
     3fe:	0000                	.insn	2, 0x
     400:	d900                	.insn	2, 0xd900
     402:	0001                	.insn	2, 0x0001
     404:	0300                	.insn	2, 0x0300
     406:	0140                	.insn	2, 0x0140
     408:	0000                	.insn	2, 0x
     40a:	b22a                	.insn	2, 0xb22a
     40c:	0000                	.insn	2, 0x
     40e:	0000                	.insn	2, 0x
     410:	0001e90b          	.insn	4, 0x0001e90b
     414:	0300                	.insn	2, 0x0300
     416:	00000123          	sb	zero,2(zero) # 2 <_tbss_end+0x2>
     41a:	0000392b          	.insn	4, 0x392b
     41e:	0000                	.insn	2, 0x
     420:	0001f90b          	.insn	4, 0x0001f90b
     424:	0300                	.insn	2, 0x0300
     426:	00000123          	sb	zero,2(zero) # 2 <_tbss_end+0x2>
     42a:	0000392b          	.insn	4, 0x392b
     42e:	0000                	.insn	2, 0x
     430:	6115                	.insn	2, 0x6115
     432:	0000                	.insn	2, 0x
     434:	0200                	.insn	2, 0x0200
     436:	01a2                	.insn	2, 0x01a2
     438:	0000                	.insn	2, 0x
     43a:	0000392b          	.insn	4, 0x392b
     43e:	db00                	.insn	2, 0xdb00
     440:	0001                	.insn	2, 0x0001
     442:	0200                	.insn	2, 0x0200
     444:	01b4                	.insn	2, 0x01b4
     446:	0000                	.insn	2, 0x
     448:	0000392b          	.insn	4, 0x392b
     44c:	e900                	.insn	2, 0xe900
     44e:	0001                	.insn	2, 0x0001
     450:	0000                	.insn	2, 0x
     452:	0100                	.insn	2, 0x0100
     454:	0504                	.insn	2, 0x0504
     456:	0000017b          	.insn	4, 0x017b
     45a:	0401                	.insn	2, 0x0401
     45c:	00016407          	.insn	4, 0x00016407
     460:	0000                	.insn	2, 0x
     462:	00000227          	.insn	4, 0x0227
     466:	0005                	.insn	2, 0x0005
     468:	0401                	.insn	2, 0x0401
     46a:	02a2                	.insn	2, 0x02a2
     46c:	0000                	.insn	2, 0x
     46e:	080c                	.insn	2, 0x080c
     470:	0000                	.insn	2, 0x
     472:	1d00                	.insn	2, 0x1d00
     474:	00e2                	.insn	2, 0x00e2
     476:	0000                	.insn	2, 0x
     478:	0026                	.insn	2, 0x0026
     47a:	0000                	.insn	2, 0x
     47c:	18ac                	.insn	2, 0x18ac
     47e:	8000                	.insn	2, 0x8000
     480:	00e4                	.insn	2, 0x00e4
     482:	0000                	.insn	2, 0x
     484:	06b0                	.insn	2, 0x06b0
     486:	0000                	.insn	2, 0x
     488:	0801                	.insn	2, 0x0801
     48a:	3404                	.insn	2, 0x3404
     48c:	0001                	.insn	2, 0x0001
     48e:	0600                	.insn	2, 0x0600
     490:	000000f3          	.insn	4, 0x00f3
     494:	5202                	.insn	2, 0x5202
     496:	390d                	.insn	2, 0x390d
     498:	0000                	.insn	2, 0x
     49a:	0d00                	.insn	2, 0x0d00
     49c:	0504                	.insn	2, 0x0504
     49e:	6e69                	.insn	2, 0x6e69
     4a0:	0074                	.insn	2, 0x0074
     4a2:	0101                	.insn	2, 0x0101
     4a4:	e706                	.insn	2, 0xe706
     4a6:	0000                	.insn	2, 0x
     4a8:	0100                	.insn	2, 0x0100
     4aa:	0508                	.insn	2, 0x0508
     4ac:	0176                	.insn	2, 0x0176
     4ae:	0000                	.insn	2, 0x
     4b0:	0101                	.insn	2, 0x0101
     4b2:	e508                	.insn	2, 0xe508
     4b4:	0000                	.insn	2, 0x
     4b6:	0100                	.insn	2, 0x0100
     4b8:	0704                	.insn	2, 0x0704
     4ba:	0169                	.insn	2, 0x0169
     4bc:	0000                	.insn	2, 0x
     4be:	0801                	.insn	2, 0x0801
     4c0:	00015f07          	.insn	4, 0x00015f07
     4c4:	0100                	.insn	2, 0x0100
     4c6:	0702                	.insn	2, 0x0702
     4c8:	0106                	.insn	2, 0x0106
     4ca:	0000                	.insn	2, 0x
     4cc:	de06                	.insn	2, 0xde06
     4ce:	0000                	.insn	2, 0x
     4d0:	0300                	.insn	2, 0x0300
     4d2:	0f44                	.insn	2, 0x0f44
     4d4:	0026                	.insn	2, 0x0026
     4d6:	0000                	.insn	2, 0x
     4d8:	080e                	.insn	2, 0x080e
     4da:	b2034b03          	lbu	s6,-1248(t1)
     4de:	0000                	.insn	2, 0x
     4e0:	0500                	.insn	2, 0x0500
     4e2:	00d2                	.insn	2, 0x00d2
     4e4:	0000                	.insn	2, 0x
     4e6:	00005553          	fadd.s	fa0,ft0,ft0,unknown
     4ea:	2000                	.insn	2, 0x2000
     4ec:	0500                	.insn	2, 0x0500
     4ee:	00d8                	.insn	2, 0x00d8
     4f0:	0000                	.insn	2, 0x
     4f2:	5554                	.insn	2, 0x5554
     4f4:	0000                	.insn	2, 0x
     4f6:	1400                	.insn	2, 0x1400
     4f8:	0f20                	.insn	2, 0x0f20
     4fa:	7865                	.insn	2, 0x7865
     4fc:	0070                	.insn	2, 0x0070
     4fe:	550e5503          	lhu	a0,1360(t3)
     502:	0000                	.insn	2, 0x
     504:	0b00                	.insn	2, 0x0b00
     506:	0534                	.insn	2, 0x0534
     508:	0101                	.insn	2, 0x0101
     50a:	0000                	.insn	2, 0x
     50c:	5556                	.insn	2, 0x5556
     50e:	0000                	.insn	2, 0x
     510:	0100                	.insn	2, 0x0100
     512:	8410003f 08000001 	.insn	8, 0x080000018410003f
     51a:	d8074803          	lbu	a6,-640(a4)
     51e:	0000                	.insn	2, 0x
     520:	1100                	.insn	2, 0x1100
     522:	6c66                	.insn	2, 0x6c66
     524:	0074                	.insn	2, 0x0074
     526:	6a0a4a03          	lbu	s4,1696(s4)
     52a:	0000                	.insn	2, 0x
     52c:	1200                	.insn	2, 0x1200
     52e:	0190                	.insn	2, 0x0190
     530:	0000                	.insn	2, 0x
     532:	76055803          	lhu	a6,1888(a0)
     536:	0000                	.insn	2, 0x
     538:	0000                	.insn	2, 0x
     53a:	0001c613          	xori	a2,gp,0
     53e:	0100                	.insn	2, 0x0100
     540:	0121                	.insn	2, 0x0121
     542:	002d                	.insn	2, 0x002d
     544:	0000                	.insn	2, 0x
     546:	18ac                	.insn	2, 0x18ac
     548:	8000                	.insn	2, 0x8000
     54a:	00e4                	.insn	2, 0x00e4
     54c:	0000                	.insn	2, 0x
     54e:	9c01                	.insn	2, 0x9c01
     550:	021c                	.insn	2, 0x021c
     552:	0000                	.insn	2, 0x
     554:	11006107          	.insn	4, 0x11006107
     558:	006a                	.insn	2, 0x006a
     55a:	0000                	.insn	2, 0x
     55c:	0218                	.insn	2, 0x0218
     55e:	0000                	.insn	2, 0x
     560:	1b006207          	.insn	4, 0x1b006207
     564:	006a                	.insn	2, 0x006a
     566:	0000                	.insn	2, 0x
     568:	022e                	.insn	2, 0x022e
     56a:	0000                	.insn	2, 0x
     56c:	1e02                	.insn	2, 0x1e02
     56e:	0001                	.insn	2, 0x0001
     570:	2300                	.insn	2, 0x2300
     572:	0039                	.insn	2, 0x0039
     574:	0000                	.insn	2, 0x
     576:	025c                	.insn	2, 0x025c
     578:	0000                	.insn	2, 0x
     57a:	00019503          	lh	a0,0(gp) # 800038c8 <__global_pointer$>
     57e:	2300                	.insn	2, 0x2300
     580:	0039                	.insn	2, 0x0039
     582:	0000                	.insn	2, 0x
     584:	4108                	.insn	2, 0x4108
     586:	635f 2400 021c      	.insn	6, 0x021c2400635f
     58c:	0000                	.insn	2, 0x
     58e:	4104                	.insn	2, 0x4104
     590:	735f 2400 1c03      	.insn	6, 0x1c032400735f
     596:	0002                	.insn	2, 0x0002
     598:	0600                	.insn	2, 0x0600
     59a:	ff08007b          	.insn	4, 0xff08007b
     59e:	9f1a                	.insn	2, 0x9f1a
     5a0:	4104                	.insn	2, 0x4104
     5a2:	655f 2400 1c03      	.insn	6, 0x1c032400655f
     5a8:	0002                	.insn	2, 0x0002
     5aa:	0100                	.insn	2, 0x0100
     5ac:	0261                	.insn	2, 0x0261
     5ae:	0000013b          	.insn	4, 0x013b
     5b2:	2324                	.insn	2, 0x2324
     5b4:	0002                	.insn	2, 0x0002
     5b6:	6c00                	.insn	2, 0x6c00
     5b8:	0002                	.insn	2, 0x0002
     5ba:	0900                	.insn	2, 0x0900
     5bc:	0119                	.insn	2, 0x0119
     5be:	0000                	.insn	2, 0x
     5c0:	2324                	.insn	2, 0x2324
     5c2:	0002                	.insn	2, 0x0002
     5c4:	0100                	.insn	2, 0x0100
     5c6:	0856                	.insn	2, 0x0856
     5c8:	5f42                	.insn	2, 0x5f42
     5ca:	1c250063          	beq	a0,sp,78a <_tbss_end+0x78a>
     5ce:	0002                	.insn	2, 0x0002
     5d0:	0400                	.insn	2, 0x0400
     5d2:	5f42                	.insn	2, 0x5f42
     5d4:	03250073          	.insn	4, 0x03250073
     5d8:	021c                	.insn	2, 0x021c
     5da:	0000                	.insn	2, 0x
     5dc:	5d01                	.insn	2, 0x5d01
     5de:	4214                	.insn	2, 0x4214
     5e0:	655f 0100 0325      	.insn	6, 0x03250100655f
     5e6:	021c                	.insn	2, 0x021c
     5e8:	0000                	.insn	2, 0x
     5ea:	0000028b          	.insn	4, 0x028b
     5ee:	5502                	.insn	2, 0x5502
     5f0:	0001                	.insn	2, 0x0001
     5f2:	2500                	.insn	2, 0x2500
     5f4:	00000223          	sb	zero,4(zero) # 4 <_tbss_end+0x4>
     5f8:	02ad                	.insn	2, 0x02ad
     5fa:	0000                	.insn	2, 0x
     5fc:	5a09                	.insn	2, 0x5a09
     5fe:	0001                	.insn	2, 0x0001
     600:	2500                	.insn	2, 0x2500
     602:	00000223          	sb	zero,4(zero) # 4 <_tbss_end+0x4>
     606:	5e01                	.insn	2, 0x5e01
     608:	7204                	.insn	2, 0x7204
     60a:	2600                	.insn	2, 0x2600
     60c:	00002d0b          	.insn	4, 0x2d0b
     610:	0100                	.insn	2, 0x0100
     612:	0a5a                	.insn	2, 0x0a5a
     614:	007c                	.insn	2, 0x007c
     616:	0000                	.insn	2, 0x
     618:	01c5                	.insn	2, 0x01c5
     61a:	0000                	.insn	2, 0x
     61c:	00014003          	lbu	zero,0(sp) # 222 <_tbss_end+0x222>
     620:	2900                	.insn	2, 0x2900
     622:	00b2                	.insn	2, 0x00b2
     624:	0000                	.insn	2, 0x
     626:	0a00                	.insn	2, 0x0a00
     628:	0089                	.insn	2, 0x0089
     62a:	0000                	.insn	2, 0x
     62c:	01d9                	.insn	2, 0x01d9
     62e:	0000                	.insn	2, 0x
     630:	00014003          	lbu	zero,0(sp)
     634:	2a00                	.insn	2, 0x2a00
     636:	00b2                	.insn	2, 0x00b2
     638:	0000                	.insn	2, 0x
     63a:	0b00                	.insn	2, 0x0b00
     63c:	01e9                	.insn	2, 0x01e9
     63e:	0000                	.insn	2, 0x
     640:	00012303          	lw	t1,0(sp)
     644:	2b00                	.insn	2, 0x2b00
     646:	0039                	.insn	2, 0x0039
     648:	0000                	.insn	2, 0x
     64a:	0b00                	.insn	2, 0x0b00
     64c:	01f9                	.insn	2, 0x01f9
     64e:	0000                	.insn	2, 0x
     650:	00012303          	lw	t1,0(sp)
     654:	2b00                	.insn	2, 0x2b00
     656:	0039                	.insn	2, 0x0039
     658:	0000                	.insn	2, 0x
     65a:	1500                	.insn	2, 0x1500
     65c:	0096                	.insn	2, 0x0096
     65e:	0000                	.insn	2, 0x
     660:	a202                	.insn	2, 0xa202
     662:	0001                	.insn	2, 0x0001
     664:	2b00                	.insn	2, 0x2b00
     666:	0039                	.insn	2, 0x0039
     668:	0000                	.insn	2, 0x
     66a:	000002c7          	fmsub.s	ft5,ft0,ft0,ft0,rne
     66e:	b402                	.insn	2, 0xb402
     670:	0001                	.insn	2, 0x0001
     672:	2b00                	.insn	2, 0x2b00
     674:	0039                	.insn	2, 0x0039
     676:	0000                	.insn	2, 0x
     678:	02d5                	.insn	2, 0x02d5
     67a:	0000                	.insn	2, 0x
     67c:	0000                	.insn	2, 0x
     67e:	0401                	.insn	2, 0x0401
     680:	7b05                	.insn	2, 0x7b05
     682:	0001                	.insn	2, 0x0001
     684:	0100                	.insn	2, 0x0100
     686:	0704                	.insn	2, 0x0704
     688:	0164                	.insn	2, 0x0164
     68a:	0000                	.insn	2, 0x
     68c:	af00                	.insn	2, 0xaf00
     68e:	0006                	.insn	2, 0x0006
     690:	0500                	.insn	2, 0x0500
     692:	0100                	.insn	2, 0x0100
     694:	f304                	.insn	2, 0xf304
     696:	0d000003          	lb	zero,208(zero) # d0 <_tbss_end+0xd0>
     69a:	0008                	.insn	2, 0x0008
     69c:	0000                	.insn	2, 0x
     69e:	081d                	.insn	2, 0x081d
     6a0:	0001                	.insn	2, 0x0001
     6a2:	2600                	.insn	2, 0x2600
     6a4:	0000                	.insn	2, 0x
     6a6:	9000                	.insn	2, 0x9000
     6a8:	0019                	.insn	2, 0x0019
     6aa:	4c80                	.insn	2, 0x4c80
     6ac:	39000007          	.insn	4, 0x39000007
     6b0:	000a                	.insn	2, 0x000a
     6b2:	0600                	.insn	2, 0x0600
     6b4:	0408                	.insn	2, 0x0408
     6b6:	0134                	.insn	2, 0x0134
     6b8:	0000                	.insn	2, 0x
     6ba:	040e                	.insn	2, 0x040e
     6bc:	6905                	.insn	2, 0x6905
     6be:	746e                	.insn	2, 0x746e
     6c0:	0600                	.insn	2, 0x0600
     6c2:	0601                	.insn	2, 0x0601
     6c4:	000000e7          	jalr	zero # 0 <_tbss_end>
     6c8:	0806                	.insn	2, 0x0806
     6ca:	7605                	.insn	2, 0x7605
     6cc:	0001                	.insn	2, 0x0001
     6ce:	0600                	.insn	2, 0x0600
     6d0:	0801                	.insn	2, 0x0801
     6d2:	00e5                	.insn	2, 0x00e5
     6d4:	0000                	.insn	2, 0x
     6d6:	0406                	.insn	2, 0x0406
     6d8:	00016907          	.insn	4, 0x00016907
     6dc:	0600                	.insn	2, 0x0600
     6de:	0708                	.insn	2, 0x0708
     6e0:	015f 0000 2b0f      	.insn	6, 0x2b0f0000015f
     6e6:	02000003          	lb	zero,32(zero) # 20 <_tbss_end+0x20>
     6ea:	014a                	.insn	2, 0x014a
     6ec:	6416                	.insn	2, 0x6416
     6ee:	0000                	.insn	2, 0x
     6f0:	0600                	.insn	2, 0x0600
     6f2:	0702                	.insn	2, 0x0702
     6f4:	0106                	.insn	2, 0x0106
     6f6:	0000                	.insn	2, 0x
     6f8:	de10                	.insn	2, 0xde10
     6fa:	0000                	.insn	2, 0x
     6fc:	0300                	.insn	2, 0x0300
     6fe:	0f44                	.insn	2, 0x0f44
     700:	0026                	.insn	2, 0x0026
     702:	0000                	.insn	2, 0x
     704:	0811                	.insn	2, 0x0811
     706:	b3034b03          	lbu	s6,-1232(t1)
     70a:	0000                	.insn	2, 0x
     70c:	0a00                	.insn	2, 0x0a00
     70e:	00d2                	.insn	2, 0x00d2
     710:	0000                	.insn	2, 0x
     712:	00004953          	fadd.s	fs2,ft0,ft0,rmm
     716:	2000                	.insn	2, 0x2000
     718:	0a00                	.insn	2, 0x0a00
     71a:	00d8                	.insn	2, 0x00d8
     71c:	0000                	.insn	2, 0x
     71e:	4954                	.insn	2, 0x4954
     720:	0000                	.insn	2, 0x
     722:	1400                	.insn	2, 0x1400
     724:	1220                	.insn	2, 0x1220
     726:	7865                	.insn	2, 0x7865
     728:	0070                	.insn	2, 0x0070
     72a:	490e5503          	lhu	a0,1168(t3)
     72e:	0000                	.insn	2, 0x
     730:	0b00                	.insn	2, 0x0b00
     732:	0a34                	.insn	2, 0x0a34
     734:	0101                	.insn	2, 0x0101
     736:	0000                	.insn	2, 0x
     738:	4956                	.insn	2, 0x4956
     73a:	0000                	.insn	2, 0x
     73c:	0100                	.insn	2, 0x0100
     73e:	8413003f 08000001 	.insn	8, 0x080000018413003f
     746:	d9074803          	lbu	a6,-624(a4)
     74a:	0000                	.insn	2, 0x
     74c:	1400                	.insn	2, 0x1400
     74e:	6c66                	.insn	2, 0x6c66
     750:	0074                	.insn	2, 0x0074
     752:	6b0a4a03          	lbu	s4,1712(s4)
     756:	0000                	.insn	2, 0x
     758:	1500                	.insn	2, 0x1500
     75a:	0190                	.insn	2, 0x0190
     75c:	0000                	.insn	2, 0x
     75e:	77055803          	lhu	a6,1904(a0)
     762:	0000                	.insn	2, 0x
     764:	0000                	.insn	2, 0x
     766:	3316                	.insn	2, 0x3316
     768:	01000003          	lb	zero,16(zero) # 10 <_tbss_end+0x10>
     76c:	0121                	.insn	2, 0x0121
     76e:	0000006b          	.insn	4, 0x006b
     772:	1990                	.insn	2, 0x1990
     774:	8000                	.insn	2, 0x8000
     776:	074c                	.insn	2, 0x074c
     778:	0000                	.insn	2, 0x
     77a:	9c01                	.insn	2, 0x9c01
     77c:	0698                	.insn	2, 0x0698
     77e:	0000                	.insn	2, 0x
     780:	1200610b          	.insn	4, 0x1200610b
     784:	0000006b          	.insn	4, 0x006b
     788:	0304                	.insn	2, 0x0304
     78a:	0000                	.insn	2, 0x
     78c:	1c00620b          	.insn	4, 0x1c00620b
     790:	0000006b          	.insn	4, 0x006b
     794:	0334                	.insn	2, 0x0334
     796:	0000                	.insn	2, 0x
     798:	1e01                	.insn	2, 0x1e01
     79a:	0001                	.insn	2, 0x0001
     79c:	2300                	.insn	2, 0x2300
     79e:	002d                	.insn	2, 0x002d
     7a0:	0000                	.insn	2, 0x
     7a2:	034a                	.insn	2, 0x034a
     7a4:	0000                	.insn	2, 0x
     7a6:	00019517          	auipc	a0,0x19
     7aa:	0100                	.insn	2, 0x0100
     7ac:	002d0323          	sb	sp,6(s10)
     7b0:	0000                	.insn	2, 0x
     7b2:	5601                	.insn	2, 0x5601
     7b4:	4104                	.insn	2, 0x4104
     7b6:	635f 2400 0698      	.insn	6, 0x06982400635f
     7bc:	0000                	.insn	2, 0x
     7be:	0388                	.insn	2, 0x0388
     7c0:	0000                	.insn	2, 0x
     7c2:	4104                	.insn	2, 0x4104
     7c4:	735f 2400 0698      	.insn	6, 0x06982400735f
     7ca:	0000                	.insn	2, 0x
     7cc:	000003bb          	.insn	4, 0x03bb
     7d0:	4104                	.insn	2, 0x4104
     7d2:	655f 2400 0698      	.insn	6, 0x06982400655f
     7d8:	0000                	.insn	2, 0x
     7da:	03df 0000 3b01      	.insn	6, 0x3b01000003df
     7e0:	0001                	.insn	2, 0x0001
     7e2:	2400                	.insn	2, 0x2400
     7e4:	069f 0000 0465      	.insn	6, 0x04650000069f
     7ea:	0000                	.insn	2, 0x
     7ec:	1901                	.insn	2, 0x1901
     7ee:	0001                	.insn	2, 0x0001
     7f0:	2400                	.insn	2, 0x2400
     7f2:	069f 0000 04b6      	.insn	6, 0x04b60000069f
     7f8:	0000                	.insn	2, 0x
     7fa:	4204                	.insn	2, 0x4204
     7fc:	635f 2500 0698      	.insn	6, 0x06982500635f
     802:	0000                	.insn	2, 0x
     804:	0000050f          	.insn	4, 0x050f
     808:	4204                	.insn	2, 0x4204
     80a:	735f 2500 0698      	.insn	6, 0x06982500735f
     810:	0000                	.insn	2, 0x
     812:	054c                	.insn	2, 0x054c
     814:	0000                	.insn	2, 0x
     816:	4204                	.insn	2, 0x4204
     818:	655f 2500 0698      	.insn	6, 0x06982500655f
     81e:	0000                	.insn	2, 0x
     820:	057d                	.insn	2, 0x057d
     822:	0000                	.insn	2, 0x
     824:	5501                	.insn	2, 0x5501
     826:	0001                	.insn	2, 0x0001
     828:	2500                	.insn	2, 0x2500
     82a:	069f 0000 05e8      	.insn	6, 0x05e80000069f
     830:	0000                	.insn	2, 0x
     832:	5a01                	.insn	2, 0x5a01
     834:	0001                	.insn	2, 0x0001
     836:	2500                	.insn	2, 0x2500
     838:	069f 0000 0686      	.insn	6, 0x06860000069f
     83e:	0000                	.insn	2, 0x
     840:	5204                	.insn	2, 0x5204
     842:	635f 2600 0698      	.insn	6, 0x06982600635f
     848:	0000                	.insn	2, 0x
     84a:	0722                	.insn	2, 0x0722
     84c:	0000                	.insn	2, 0x
     84e:	5204                	.insn	2, 0x5204
     850:	735f 2600 0698      	.insn	6, 0x06982600735f
     856:	0000                	.insn	2, 0x
     858:	0748                	.insn	2, 0x0748
     85a:	0000                	.insn	2, 0x
     85c:	5204                	.insn	2, 0x5204
     85e:	655f 2600 0698      	.insn	6, 0x06982600655f
     864:	0000                	.insn	2, 0x
     866:	0000076f          	jal	a4,866 <_tbss_end+0x866>
     86a:	5101                	.insn	2, 0x5101
     86c:	0002                	.insn	2, 0x0002
     86e:	2600                	.insn	2, 0x2600
     870:	069f 0000 081f      	.insn	6, 0x081f0000069f
     876:	0000                	.insn	2, 0x
     878:	ef01                	.insn	2, 0xef01
     87a:	26000003          	lb	zero,608(zero) # 260 <_tbss_end+0x260>
     87e:	069f 0000 0884      	.insn	6, 0x08840000069f
     884:	0000                	.insn	2, 0x
     886:	7205                	.insn	2, 0x7205
     888:	2700                	.insn	2, 0x2700
     88a:	6b0a                	.insn	2, 0x6b0a
     88c:	0000                	.insn	2, 0x
     88e:	0200                	.insn	2, 0x0200
     890:	00b1                	.insn	2, 0x00b1
     892:	0000                	.insn	2, 0x
     894:	0216                	.insn	2, 0x0216
     896:	0000                	.insn	2, 0x
     898:	00014003          	lbu	zero,0(sp)
     89c:	2a00                	.insn	2, 0x2a00
     89e:	000000b3          	add	ra,zero,zero
     8a2:	0200                	.insn	2, 0x0200
     8a4:	00c4                	.insn	2, 0x00c4
     8a6:	0000                	.insn	2, 0x
     8a8:	022e                	.insn	2, 0x022e
     8aa:	0000                	.insn	2, 0x
     8ac:	3601                	.insn	2, 0x3601
     8ae:	0002                	.insn	2, 0x0002
     8b0:	2a00                	.insn	2, 0x2a00
     8b2:	0698                	.insn	2, 0x0698
     8b4:	0000                	.insn	2, 0x
     8b6:	000008f3          	.insn	4, 0x08f3
     8ba:	0200                	.insn	2, 0x0200
     8bc:	00cc                	.insn	2, 0x00cc
     8be:	0000                	.insn	2, 0x
     8c0:	0242                	.insn	2, 0x0242
     8c2:	0000                	.insn	2, 0x
     8c4:	00014003          	lbu	zero,0(sp)
     8c8:	2b00                	.insn	2, 0x2b00
     8ca:	000000b3          	add	ra,zero,zero
     8ce:	0200                	.insn	2, 0x0200
     8d0:	00e6                	.insn	2, 0x00e6
     8d2:	0000                	.insn	2, 0x
     8d4:	025a                	.insn	2, 0x025a
     8d6:	0000                	.insn	2, 0x
     8d8:	3601                	.insn	2, 0x3601
     8da:	0002                	.insn	2, 0x0002
     8dc:	2b00                	.insn	2, 0x2b00
     8de:	0698                	.insn	2, 0x0698
     8e0:	0000                	.insn	2, 0x
     8e2:	090d                	.insn	2, 0x090d
     8e4:	0000                	.insn	2, 0x
     8e6:	0200                	.insn	2, 0x0200
     8e8:	00f1                	.insn	2, 0x00f1
     8ea:	0000                	.insn	2, 0x
     8ec:	052c                	.insn	2, 0x052c
     8ee:	0000                	.insn	2, 0x
     8f0:	00038703          	lb	a4,0(t2)
     8f4:	2c00                	.insn	2, 0x2c00
     8f6:	06a6                	.insn	2, 0x06a6
     8f8:	0000                	.insn	2, 0x
     8fa:	fc02                	.insn	2, 0xfc02
     8fc:	0000                	.insn	2, 0x
     8fe:	cf00                	.insn	2, 0xcf00
     900:	0004                	.insn	2, 0x0004
     902:	0100                	.insn	2, 0x0100
     904:	000003b7          	lui	t2,0x0
     908:	9f2c                	.insn	2, 0x9f2c
     90a:	0006                	.insn	2, 0x0006
     90c:	2a00                	.insn	2, 0x2a00
     90e:	0009                	.insn	2, 0x0009
     910:	0100                	.insn	2, 0x0100
     912:	000003d3          	fadd.s	ft7,ft0,ft0,rne
     916:	9f2c                	.insn	2, 0x9f2c
     918:	0006                	.insn	2, 0x0006
     91a:	3200                	.insn	2, 0x3200
     91c:	0009                	.insn	2, 0x0009
     91e:	0100                	.insn	2, 0x0100
     920:	033c                	.insn	2, 0x033c
     922:	0000                	.insn	2, 0x
     924:	9f2c                	.insn	2, 0x9f2c
     926:	0006                	.insn	2, 0x0006
     928:	3a00                	.insn	2, 0x3a00
     92a:	0009                	.insn	2, 0x0009
     92c:	0100                	.insn	2, 0x0100
     92e:	0358                	.insn	2, 0x0358
     930:	0000                	.insn	2, 0x
     932:	9f2c                	.insn	2, 0x9f2c
     934:	0006                	.insn	2, 0x0006
     936:	4200                	.insn	2, 0x4200
     938:	0009                	.insn	2, 0x0009
     93a:	0200                	.insn	2, 0x0200
     93c:	010c                	.insn	2, 0x010c
     93e:	0000                	.insn	2, 0x
     940:	0328                	.insn	2, 0x0328
     942:	0000                	.insn	2, 0x
     944:	9f01                	.insn	2, 0x9f01
     946:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     94a:	069f 0000 094a      	.insn	6, 0x094a0000069f
     950:	0000                	.insn	2, 0x
     952:	0401                	.insn	2, 0x0401
     954:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     958:	069f 0000 095e      	.insn	6, 0x095e0000069f
     95e:	0000                	.insn	2, 0x
     960:	3101                	.insn	2, 0x3101
     962:	0002                	.insn	2, 0x0002
     964:	2c00                	.insn	2, 0x2c00
     966:	069f 0000 09ca      	.insn	6, 0x09ca0000069f
     96c:	0000                	.insn	2, 0x
     96e:	0901                	.insn	2, 0x0901
     970:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     974:	069f 0000 09de      	.insn	6, 0x09de0000069f
     97a:	0000                	.insn	2, 0x
     97c:	0301                	.insn	2, 0x0301
     97e:	0002                	.insn	2, 0x0002
     980:	2c00                	.insn	2, 0x2c00
     982:	00000057          	.insn	4, 0x0057
     986:	09e6                	.insn	2, 0x09e6
     988:	0000                	.insn	2, 0x
     98a:	2601                	.insn	2, 0x2601
     98c:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     990:	00000057          	.insn	4, 0x0057
     994:	09ee                	.insn	2, 0x09ee
     996:	0000                	.insn	2, 0x
     998:	fe01                	.insn	2, 0xfe01
     99a:	0001                	.insn	2, 0x0001
     99c:	2c00                	.insn	2, 0x2c00
     99e:	00000057          	.insn	4, 0x0057
     9a2:	0a15                	.insn	2, 0x0a15
     9a4:	0000                	.insn	2, 0x
     9a6:	0e01                	.insn	2, 0x0e01
     9a8:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     9ac:	00000057          	.insn	4, 0x0057
     9b0:	0a1d                	.insn	2, 0x0a1d
     9b2:	0000                	.insn	2, 0x
     9b4:	0200                	.insn	2, 0x0200
     9b6:	00000117          	auipc	sp,0x0
     9ba:	039e                	.insn	2, 0x039e
     9bc:	0000                	.insn	2, 0x
     9be:	9f01                	.insn	2, 0x9f01
     9c0:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     9c4:	069f 0000 0a25      	.insn	6, 0x0a250000069f
     9ca:	0000                	.insn	2, 0x
     9cc:	0401                	.insn	2, 0x0401
     9ce:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     9d2:	069f 0000 0a2d      	.insn	6, 0x0a2d0000069f
     9d8:	0000                	.insn	2, 0x
     9da:	3101                	.insn	2, 0x3101
     9dc:	0002                	.insn	2, 0x0002
     9de:	2c00                	.insn	2, 0x2c00
     9e0:	069f 0000 0a48      	.insn	6, 0x0a480000069f
     9e6:	0000                	.insn	2, 0x
     9e8:	0901                	.insn	2, 0x0901
     9ea:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     9ee:	069f 0000 0a50      	.insn	6, 0x0a500000069f
     9f4:	0000                	.insn	2, 0x
     9f6:	00020303          	lb	t1,0(tp) # 0 <_tbss_end>
     9fa:	2c00                	.insn	2, 0x2c00
     9fc:	00000057          	.insn	4, 0x0057
     a00:	2601                	.insn	2, 0x2601
     a02:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     a06:	00000057          	.insn	4, 0x0057
     a0a:	0a58                	.insn	2, 0x0a58
     a0c:	0000                	.insn	2, 0x
     a0e:	fe01                	.insn	2, 0xfe01
     a10:	0001                	.insn	2, 0x0001
     a12:	2c00                	.insn	2, 0x2c00
     a14:	00000057          	.insn	4, 0x0057
     a18:	0a7e                	.insn	2, 0x0a7e
     a1a:	0000                	.insn	2, 0x
     a1c:	0e01                	.insn	2, 0x0e01
     a1e:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     a22:	00000057          	.insn	4, 0x0057
     a26:	0a86                	.insn	2, 0x0a86
     a28:	0000                	.insn	2, 0x
     a2a:	0200                	.insn	2, 0x0200
     a2c:	012c                	.insn	2, 0x012c
     a2e:	0000                	.insn	2, 0x
     a30:	0414                	.insn	2, 0x0414
     a32:	0000                	.insn	2, 0x
     a34:	9f01                	.insn	2, 0x9f01
     a36:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     a3a:	069f 0000 0a8e      	.insn	6, 0x0a8e0000069f
     a40:	0000                	.insn	2, 0x
     a42:	0401                	.insn	2, 0x0401
     a44:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     a48:	069f 0000 0a96      	.insn	6, 0x0a960000069f
     a4e:	0000                	.insn	2, 0x
     a50:	3101                	.insn	2, 0x3101
     a52:	0002                	.insn	2, 0x0002
     a54:	2c00                	.insn	2, 0x2c00
     a56:	069f 0000 0abf      	.insn	6, 0x0abf0000069f
     a5c:	0000                	.insn	2, 0x
     a5e:	0901                	.insn	2, 0x0901
     a60:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     a64:	069f 0000 0ac7      	.insn	6, 0x0ac70000069f
     a6a:	0000                	.insn	2, 0x
     a6c:	00020303          	lb	t1,0(tp) # 0 <_tbss_end>
     a70:	2c00                	.insn	2, 0x2c00
     a72:	00000057          	.insn	4, 0x0057
     a76:	2601                	.insn	2, 0x2601
     a78:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     a7c:	00000057          	.insn	4, 0x0057
     a80:	09ee                	.insn	2, 0x09ee
     a82:	0000                	.insn	2, 0x
     a84:	fe01                	.insn	2, 0xfe01
     a86:	0001                	.insn	2, 0x0001
     a88:	2c00                	.insn	2, 0x2c00
     a8a:	00000057          	.insn	4, 0x0057
     a8e:	00000acf          	fnmadd.s	fs5,ft0,ft0,ft0,rne
     a92:	0e01                	.insn	2, 0x0e01
     a94:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     a98:	00000057          	.insn	4, 0x0057
     a9c:	00000ad7          	.insn	4, 0x0ad7
     aa0:	0200                	.insn	2, 0x0200
     aa2:	013c                	.insn	2, 0x013c
     aa4:	0000                	.insn	2, 0x
     aa6:	048a                	.insn	2, 0x048a
     aa8:	0000                	.insn	2, 0x
     aaa:	9f01                	.insn	2, 0x9f01
     aac:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     ab0:	069f 0000 0adf      	.insn	6, 0x0adf0000069f
     ab6:	0000                	.insn	2, 0x
     ab8:	0401                	.insn	2, 0x0401
     aba:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     abe:	069f 0000 0ae7      	.insn	6, 0x0ae70000069f
     ac4:	0000                	.insn	2, 0x
     ac6:	3101                	.insn	2, 0x3101
     ac8:	0002                	.insn	2, 0x0002
     aca:	2c00                	.insn	2, 0x2c00
     acc:	069f 0000 0b02      	.insn	6, 0x0b020000069f
     ad2:	0000                	.insn	2, 0x
     ad4:	0901                	.insn	2, 0x0901
     ad6:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     ada:	069f 0000 0b0a      	.insn	6, 0x0b0a0000069f
     ae0:	0000                	.insn	2, 0x
     ae2:	00020303          	lb	t1,0(tp) # 0 <_tbss_end>
     ae6:	2c00                	.insn	2, 0x2c00
     ae8:	00000057          	.insn	4, 0x0057
     aec:	2601                	.insn	2, 0x2601
     aee:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     af2:	00000057          	.insn	4, 0x0057
     af6:	0a58                	.insn	2, 0x0a58
     af8:	0000                	.insn	2, 0x
     afa:	fe01                	.insn	2, 0xfe01
     afc:	0001                	.insn	2, 0x0001
     afe:	2c00                	.insn	2, 0x2c00
     b00:	00000057          	.insn	4, 0x0057
     b04:	0b12                	.insn	2, 0x0b12
     b06:	0000                	.insn	2, 0x
     b08:	0e01                	.insn	2, 0x0e01
     b0a:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     b0e:	00000057          	.insn	4, 0x0057
     b12:	0b1a                	.insn	2, 0x0b1a
     b14:	0000                	.insn	2, 0x
     b16:	0200                	.insn	2, 0x0200
     b18:	0151                	.insn	2, 0x0151
     b1a:	0000                	.insn	2, 0x
     b1c:	04b0                	.insn	2, 0x04b0
     b1e:	0000                	.insn	2, 0x
     b20:	a401                	.insn	2, 0xa401
     b22:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     b26:	069f 0000 0b22      	.insn	6, 0x0b220000069f
     b2c:	0000                	.insn	2, 0x
     b2e:	7401                	.insn	2, 0x7401
     b30:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     b34:	069f 0000 0b3a      	.insn	6, 0x0b3a0000069f
     b3a:	0000                	.insn	2, 0x
     b3c:	0700                	.insn	2, 0x0700
     b3e:	0166                	.insn	2, 0x0166
     b40:	0000                	.insn	2, 0x
     b42:	0003a403          	lw	s0,0(t2) # 0 <_tbss_end>
     b46:	2c00                	.insn	2, 0x2c00
     b48:	069f 0000 7401      	.insn	6, 0x74010000069f
     b4e:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     b52:	069f 0000 0b60      	.insn	6, 0x0b600000069f
     b58:	0000                	.insn	2, 0x
     b5a:	0000                	.insn	2, 0x
     b5c:	00017b07          	.insn	4, 0x00017b07
     b60:	0300                	.insn	2, 0x0300
     b62:	0208                	.insn	2, 0x0208
     b64:	0000                	.insn	2, 0x
     b66:	2d2c                	.insn	2, 0x2d2c
     b68:	0000                	.insn	2, 0x
     b6a:	0700                	.insn	2, 0x0700
     b6c:	0190                	.insn	2, 0x0190
     b6e:	0000                	.insn	2, 0x
     b70:	1301                	.insn	2, 0x1301
     b72:	2c000003          	lb	zero,704(zero) # 2c0 <_tbss_end+0x2c0>
     b76:	0698                	.insn	2, 0x0698
     b78:	0000                	.insn	2, 0x
     b7a:	0bb5                	.insn	2, 0x0bb5
     b7c:	0000                	.insn	2, 0x
     b7e:	5601                	.insn	2, 0x5601
     b80:	0002                	.insn	2, 0x0002
     b82:	2c00                	.insn	2, 0x2c00
     b84:	0698                	.insn	2, 0x0698
     b86:	0000                	.insn	2, 0x
     b88:	0bbe                	.insn	2, 0x0bbe
     b8a:	0000                	.insn	2, 0x
     b8c:	7d01                	.insn	2, 0x7d01
     b8e:	0002                	.insn	2, 0x0002
     b90:	2c00                	.insn	2, 0x2c00
     b92:	0698                	.insn	2, 0x0698
     b94:	0000                	.insn	2, 0x
     b96:	00000bc7          	fmsub.s	fs7,ft0,ft0,ft0,rne
     b9a:	6b01                	.insn	2, 0x6b01
     b9c:	0002                	.insn	2, 0x0002
     b9e:	2c00                	.insn	2, 0x2c00
     ba0:	0698                	.insn	2, 0x0698
     ba2:	0000                	.insn	2, 0x
     ba4:	0bd0                	.insn	2, 0x0bd0
     ba6:	0000                	.insn	2, 0x
     ba8:	c401                	.insn	2, 0xc401
     baa:	0002                	.insn	2, 0x0002
     bac:	2c00                	.insn	2, 0x2c00
     bae:	069f 0000 0bd9      	.insn	6, 0x0bd90000069f
     bb4:	0000                	.insn	2, 0x
     bb6:	0000                	.insn	2, 0x
     bb8:	0800                	.insn	2, 0x0800
     bba:	1df4                	.insn	2, 0x1df4
     bbc:	8000                	.insn	2, 0x8000
     bbe:	0008                	.insn	2, 0x0008
     bc0:	0000                	.insn	2, 0x
     bc2:	0545                	.insn	2, 0x0545
     bc4:	0000                	.insn	2, 0x
     bc6:	5f0c                	.insn	2, 0x5f0c
     bc8:	785f 9f00 0006      	.insn	6, 0x00069f00785f
     bce:	0100                	.insn	2, 0x0100
     bd0:	005f 5609 0005      	.insn	6, 0x00055609005f
     bd6:	0500                	.insn	2, 0x0500
     bd8:	5f5f 0078 032d      	.insn	6, 0x032d00785f5f
     bde:	069f 0000 0200      	.insn	6, 0x02000000069f
     be4:	01aa                	.insn	2, 0x01aa
     be6:	0000                	.insn	2, 0x
     be8:	056e                	.insn	2, 0x056e
     bea:	0000                	.insn	2, 0x
     bec:	5f04                	.insn	2, 0x5f04
     bee:	785f 2d00 069f      	.insn	6, 0x069f2d00785f
     bf4:	0000                	.insn	2, 0x
     bf6:	0bfd                	.insn	2, 0x0bfd
     bf8:	0000                	.insn	2, 0x
     bfa:	0200                	.insn	2, 0x0200
     bfc:	01b5                	.insn	2, 0x01b5
     bfe:	0000                	.insn	2, 0x
     c00:	00000683          	lb	a3,0(zero) # 0 <_tbss_end>
     c04:	a901                	.insn	2, 0xa901
     c06:	0002                	.insn	2, 0x0002
     c08:	2d00                	.insn	2, 0x2d00
     c0a:	002d                	.insn	2, 0x002d
     c0c:	0000                	.insn	2, 0x
     c0e:	0c05                	.insn	2, 0x0c05
     c10:	0000                	.insn	2, 0x
     c12:	f408                	.insn	2, 0xf408
     c14:	001e                	.insn	2, 0x001e
     c16:	5c80                	.insn	2, 0x5c80
     c18:	0000                	.insn	2, 0x
     c1a:	0800                	.insn	2, 0x0800
     c1c:	0006                	.insn	2, 0x0006
     c1e:	0300                	.insn	2, 0x0300
     c20:	02d6                	.insn	2, 0x02d6
     c22:	0000                	.insn	2, 0x
     c24:	982d                	.insn	2, 0x982d
     c26:	0006                	.insn	2, 0x0006
     c28:	0300                	.insn	2, 0x0300
     c2a:	0292                	.insn	2, 0x0292
     c2c:	0000                	.insn	2, 0x
     c2e:	982d                	.insn	2, 0x982d
     c30:	0006                	.insn	2, 0x0006
     c32:	0100                	.insn	2, 0x0100
     c34:	02ed                	.insn	2, 0x02ed
     c36:	0000                	.insn	2, 0x
     c38:	982d                	.insn	2, 0x982d
     c3a:	0006                	.insn	2, 0x0006
     c3c:	1c00                	.insn	2, 0x1c00
     c3e:	000c                	.insn	2, 0x000c
     c40:	0300                	.insn	2, 0x0300
     c42:	01ce                	.insn	2, 0x01ce
     c44:	0000                	.insn	2, 0x
     c46:	9f2d                	.insn	2, 0x9f2d
     c48:	0006                	.insn	2, 0x0006
     c4a:	0100                	.insn	2, 0x0100
     c4c:	01e6                	.insn	2, 0x01e6
     c4e:	0000                	.insn	2, 0x
     c50:	9f2d                	.insn	2, 0x9f2d
     c52:	0006                	.insn	2, 0x0006
     c54:	2500                	.insn	2, 0x2500
     c56:	000c                	.insn	2, 0x000c
     c58:	0800                	.insn	2, 0x0800
     c5a:	1f24                	.insn	2, 0x1f24
     c5c:	8000                	.insn	2, 0x8000
     c5e:	0004                	.insn	2, 0x0004
     c60:	0000                	.insn	2, 0x
     c62:	05e5                	.insn	2, 0x05e5
     c64:	0000                	.insn	2, 0x
     c66:	5f05                	.insn	2, 0x5f05
     c68:	785f 2d00 9f03      	.insn	6, 0x9f032d00785f
     c6e:	0006                	.insn	2, 0x0006
     c70:	0000                	.insn	2, 0x
     c72:	f609                	.insn	2, 0xf609
     c74:	0005                	.insn	2, 0x0005
     c76:	0500                	.insn	2, 0x0500
     c78:	5f5f 0078 032d      	.insn	6, 0x032d00785f5f
     c7e:	069f 0000 0700      	.insn	6, 0x07000000069f
     c84:	01c0                	.insn	2, 0x01c0
     c86:	0000                	.insn	2, 0x
     c88:	5f05                	.insn	2, 0x5f05
     c8a:	785f 2d00 9f03      	.insn	6, 0x9f032d00785f
     c90:	0006                	.insn	2, 0x0006
     c92:	0000                	.insn	2, 0x
     c94:	0800                	.insn	2, 0x0800
     c96:	1fb4                	.insn	2, 0x1fb4
     c98:	8000                	.insn	2, 0x8000
     c9a:	0008                	.insn	2, 0x0008
     c9c:	0000                	.insn	2, 0x
     c9e:	0621                	.insn	2, 0x0621
     ca0:	0000                	.insn	2, 0x
     ca2:	5f0c                	.insn	2, 0x5f0c
     ca4:	785f 9f00 0006      	.insn	6, 0x00069f00785f
     caa:	0100                	.insn	2, 0x0100
     cac:	005f 3209 0006      	.insn	6, 0x00063209005f
     cb2:	0500                	.insn	2, 0x0500
     cb4:	5f5f 0078 032d      	.insn	6, 0x032d00785f5f
     cba:	069f 0000 0200      	.insn	6, 0x02000000069f
     cc0:	000001cb          	fnmsub.s	ft3,ft0,ft0,ft0,rne
     cc4:	00000647          	fmsub.s	fa2,ft0,ft0,ft0,rne
     cc8:	5f05                	.insn	2, 0x5f05
     cca:	785f 2d00 9f03      	.insn	6, 0x9f032d00785f
     cd0:	0006                	.insn	2, 0x0006
     cd2:	0000                	.insn	2, 0x
     cd4:	7408                	.insn	2, 0x7408
     cd6:	0020                	.insn	2, 0x0020
     cd8:	0480                	.insn	2, 0x0480
     cda:	0000                	.insn	2, 0x
     cdc:	6000                	.insn	2, 0x6000
     cde:	0006                	.insn	2, 0x0006
     ce0:	0500                	.insn	2, 0x0500
     ce2:	5f5f 0078 032d      	.insn	6, 0x032d00785f5f
     ce8:	069f 0000 0900      	.insn	6, 0x09000000069f
     cee:	0671                	.insn	2, 0x0671
     cf0:	0000                	.insn	2, 0x
     cf2:	5f05                	.insn	2, 0x5f05
     cf4:	785f 2d00 9f03      	.insn	6, 0x9f032d00785f
     cfa:	0006                	.insn	2, 0x0006
     cfc:	0000                	.insn	2, 0x
     cfe:	0001d607          	.insn	4, 0x0001d607
     d02:	0500                	.insn	2, 0x0500
     d04:	5f5f 0078 032d      	.insn	6, 0x032d00785f5f
     d0a:	069f 0000 0000      	.insn	6, 0x069f
     d10:	6818                	.insn	2, 0x6818
     d12:	001e                	.insn	2, 0x001e
     d14:	2080                	.insn	2, 0x2080
     d16:	0000                	.insn	2, 0x
     d18:	0300                	.insn	2, 0x0300
     d1a:	021e                	.insn	2, 0x021e
     d1c:	0000                	.insn	2, 0x
     d1e:	b32d                	.insn	2, 0xb32d
     d20:	0000                	.insn	2, 0x
     d22:	0000                	.insn	2, 0x
     d24:	0600                	.insn	2, 0x0600
     d26:	0504                	.insn	2, 0x0504
     d28:	0000017b          	.insn	4, 0x017b
     d2c:	0406                	.insn	2, 0x0406
     d2e:	00016407          	.insn	4, 0x00016407
     d32:	1900                	.insn	2, 0x1900
     d34:	069f 0000 491a      	.insn	6, 0x491a0000069f
     d3a:	0000                	.insn	2, 0x
     d3c:	0300                	.insn	2, 0x0300
     d3e:	0000                	.insn	2, 0x
     d40:	0520                	.insn	2, 0x0520
     d42:	0000                	.insn	2, 0x
     d44:	0005                	.insn	2, 0x0005
     d46:	0401                	.insn	2, 0x0401
     d48:	0578                	.insn	2, 0x0578
     d4a:	0000                	.insn	2, 0x
     d4c:	0000080f          	.insn	4, 0x080f
     d50:	1d00                	.insn	2, 0x1d00
     d52:	0139                	.insn	2, 0x0139
     d54:	0000                	.insn	2, 0x
     d56:	0026                	.insn	2, 0x0026
     d58:	0000                	.insn	2, 0x
     d5a:	20dc                	.insn	2, 0x20dc
     d5c:	8000                	.insn	2, 0x8000
     d5e:	0ab0                	.insn	2, 0x0ab0
     d60:	0000                	.insn	2, 0x
     d62:	1c6c                	.insn	2, 0x1c6c
     d64:	0000                	.insn	2, 0x
     d66:	0804                	.insn	2, 0x0804
     d68:	3404                	.insn	2, 0x3404
     d6a:	0001                	.insn	2, 0x0001
     d6c:	1000                	.insn	2, 0x1000
     d6e:	0504                	.insn	2, 0x0504
     d70:	6e69                	.insn	2, 0x6e69
     d72:	0074                	.insn	2, 0x0074
     d74:	0104                	.insn	2, 0x0104
     d76:	e706                	.insn	2, 0xe706
     d78:	0000                	.insn	2, 0x
     d7a:	0400                	.insn	2, 0x0400
     d7c:	0508                	.insn	2, 0x0508
     d7e:	0176                	.insn	2, 0x0176
     d80:	0000                	.insn	2, 0x
     d82:	0104                	.insn	2, 0x0104
     d84:	e508                	.insn	2, 0xe508
     d86:	0000                	.insn	2, 0x
     d88:	0400                	.insn	2, 0x0400
     d8a:	0704                	.insn	2, 0x0704
     d8c:	0169                	.insn	2, 0x0169
     d8e:	0000                	.insn	2, 0x
     d90:	0804                	.insn	2, 0x0804
     d92:	00015f07          	.insn	4, 0x00015f07
     d96:	0400                	.insn	2, 0x0400
     d98:	0702                	.insn	2, 0x0702
     d9a:	0106                	.insn	2, 0x0106
     d9c:	0000                	.insn	2, 0x
     d9e:	de11                	.insn	2, 0xde11
     da0:	0000                	.insn	2, 0x
     da2:	0200                	.insn	2, 0x0200
     da4:	0f44                	.insn	2, 0x0f44
     da6:	0026                	.insn	2, 0x0026
     da8:	0000                	.insn	2, 0x
     daa:	0812                	.insn	2, 0x0812
     dac:	4b02                	.insn	2, 0x4b02
     dae:	0000a603          	lw	a2,0(ra)
     db2:	0900                	.insn	2, 0x0900
     db4:	00d2                	.insn	2, 0x00d2
     db6:	0000                	.insn	2, 0x
     db8:	00004953          	fadd.s	fs2,ft0,ft0,rmm
     dbc:	2000                	.insn	2, 0x2000
     dbe:	0900                	.insn	2, 0x0900
     dc0:	00d8                	.insn	2, 0x00d8
     dc2:	0000                	.insn	2, 0x
     dc4:	4954                	.insn	2, 0x4954
     dc6:	0000                	.insn	2, 0x
     dc8:	1400                	.insn	2, 0x1400
     dca:	1320                	.insn	2, 0x1320
     dcc:	7865                	.insn	2, 0x7865
     dce:	0070                	.insn	2, 0x0070
     dd0:	5502                	.insn	2, 0x5502
     dd2:	490e                	.insn	2, 0x490e
     dd4:	0000                	.insn	2, 0x
     dd6:	0b00                	.insn	2, 0x0b00
     dd8:	0934                	.insn	2, 0x0934
     dda:	0101                	.insn	2, 0x0101
     ddc:	0000                	.insn	2, 0x
     dde:	4956                	.insn	2, 0x4956
     de0:	0000                	.insn	2, 0x
     de2:	0100                	.insn	2, 0x0100
     de4:	8414003f 08000001 	.insn	8, 0x080000018414003f
     dec:	4802                	.insn	2, 0x4802
     dee:	0000cc07          	.insn	4, 0xcc07
     df2:	1500                	.insn	2, 0x1500
     df4:	6c66                	.insn	2, 0x6c66
     df6:	0074                	.insn	2, 0x0074
     df8:	4a02                	.insn	2, 0x4a02
     dfa:	5e0a                	.insn	2, 0x5e0a
     dfc:	0000                	.insn	2, 0x
     dfe:	1600                	.insn	2, 0x1600
     e00:	0190                	.insn	2, 0x0190
     e02:	0000                	.insn	2, 0x
     e04:	5802                	.insn	2, 0x5802
     e06:	6a05                	.insn	2, 0x6a05
     e08:	0000                	.insn	2, 0x
     e0a:	0000                	.insn	2, 0x
     e0c:	00043b17          	auipc	s6,0x43
     e10:	0100                	.insn	2, 0x0100
     e12:	0121                	.insn	2, 0x0121
     e14:	005e                	.insn	2, 0x005e
     e16:	0000                	.insn	2, 0x
     e18:	20dc                	.insn	2, 0x20dc
     e1a:	8000                	.insn	2, 0x8000
     e1c:	0ab0                	.insn	2, 0x0ab0
     e1e:	0000                	.insn	2, 0x
     e20:	9c01                	.insn	2, 0x9c01
     e22:	0515                	.insn	2, 0x0515
     e24:	0000                	.insn	2, 0x
     e26:	1200610b          	.insn	4, 0x1200610b
     e2a:	005e                	.insn	2, 0x005e
     e2c:	0000                	.insn	2, 0x
     e2e:	0c40                	.insn	2, 0x0c40
     e30:	0000                	.insn	2, 0x
     e32:	1c00620b          	.insn	4, 0x1c00620b
     e36:	005e                	.insn	2, 0x005e
     e38:	0000                	.insn	2, 0x
     e3a:	0c56                	.insn	2, 0x0c56
     e3c:	0000                	.insn	2, 0x
     e3e:	1e02                	.insn	2, 0x1e02
     e40:	0001                	.insn	2, 0x0001
     e42:	2300                	.insn	2, 0x2300
     e44:	002d                	.insn	2, 0x002d
     e46:	0000                	.insn	2, 0x
     e48:	0c6c                	.insn	2, 0x0c6c
     e4a:	0000                	.insn	2, 0x
     e4c:	9518                	.insn	2, 0x9518
     e4e:	0001                	.insn	2, 0x0001
     e50:	0100                	.insn	2, 0x0100
     e52:	002d0323          	sb	sp,6(s10)
     e56:	0000                	.insn	2, 0x
     e58:	5601                	.insn	2, 0x5601
     e5a:	4106                	.insn	2, 0x4106
     e5c:	635f 2400 1503      	.insn	6, 0x15032400635f
     e62:	0005                	.insn	2, 0x0005
     e64:	0100                	.insn	2, 0x0100
     e66:	5f41                	.insn	2, 0x5f41
     e68:	15240073          	.insn	4, 0x15240073
     e6c:	0005                	.insn	2, 0x0005
     e6e:	1d00                	.insn	2, 0x1d00
     e70:	000d                	.insn	2, 0x000d
     e72:	0100                	.insn	2, 0x0100
     e74:	5f41                	.insn	2, 0x5f41
     e76:	0065                	.insn	2, 0x0065
     e78:	1524                	.insn	2, 0x1524
     e7a:	0005                	.insn	2, 0x0005
     e7c:	9b00                	.insn	2, 0x9b00
     e7e:	000d                	.insn	2, 0x000d
     e80:	0200                	.insn	2, 0x0200
     e82:	0000013b          	.insn	4, 0x013b
     e86:	1c24                	.insn	2, 0x1c24
     e88:	0005                	.insn	2, 0x0005
     e8a:	6b00                	.insn	2, 0x6b00
     e8c:	000e                	.insn	2, 0x000e
     e8e:	0200                	.insn	2, 0x0200
     e90:	0119                	.insn	2, 0x0119
     e92:	0000                	.insn	2, 0x
     e94:	1c24                	.insn	2, 0x1c24
     e96:	0005                	.insn	2, 0x0005
     e98:	1300                	.insn	2, 0x1300
     e9a:	0600000f          	fence	or,unknown
     e9e:	5f42                	.insn	2, 0x5f42
     ea0:	03250063          	beq	a0,s2,ec0 <_tbss_end+0xec0>
     ea4:	0515                	.insn	2, 0x0515
     ea6:	0000                	.insn	2, 0x
     ea8:	4201                	.insn	2, 0x4201
     eaa:	735f 2500 0515      	.insn	6, 0x05152500735f
     eb0:	0000                	.insn	2, 0x
     eb2:	0fc9                	.insn	2, 0x0fc9
     eb4:	0000                	.insn	2, 0x
     eb6:	4201                	.insn	2, 0x4201
     eb8:	655f 2500 0515      	.insn	6, 0x05152500655f
     ebe:	0000                	.insn	2, 0x
     ec0:	1065                	.insn	2, 0x1065
     ec2:	0000                	.insn	2, 0x
     ec4:	5502                	.insn	2, 0x5502
     ec6:	0001                	.insn	2, 0x0001
     ec8:	2500                	.insn	2, 0x2500
     eca:	051c                	.insn	2, 0x051c
     ecc:	0000                	.insn	2, 0x
     ece:	10ea                	.insn	2, 0x10ea
     ed0:	0000                	.insn	2, 0x
     ed2:	5a02                	.insn	2, 0x5a02
     ed4:	0001                	.insn	2, 0x0001
     ed6:	2500                	.insn	2, 0x2500
     ed8:	051c                	.insn	2, 0x051c
     eda:	0000                	.insn	2, 0x
     edc:	11e6                	.insn	2, 0x11e6
     ede:	0000                	.insn	2, 0x
     ee0:	5206                	.insn	2, 0x5206
     ee2:	635f 2600 1503      	.insn	6, 0x15032600635f
     ee8:	0005                	.insn	2, 0x0005
     eea:	0100                	.insn	2, 0x0100
     eec:	5f52                	.insn	2, 0x5f52
     eee:	15260073          	.insn	4, 0x15260073
     ef2:	0005                	.insn	2, 0x0005
     ef4:	e900                	.insn	2, 0xe900
     ef6:	0012                	.insn	2, 0x0012
     ef8:	0100                	.insn	2, 0x0100
     efa:	5f52                	.insn	2, 0x5f52
     efc:	0065                	.insn	2, 0x0065
     efe:	1526                	.insn	2, 0x1526
     f00:	0005                	.insn	2, 0x0005
     f02:	6e00                	.insn	2, 0x6e00
     f04:	02000013          	li	zero,32
     f08:	0251                	.insn	2, 0x0251
     f0a:	0000                	.insn	2, 0x
     f0c:	1c26                	.insn	2, 0x1c26
     f0e:	0005                	.insn	2, 0x0005
     f10:	9e00                	.insn	2, 0x9e00
     f12:	0014                	.insn	2, 0x0014
     f14:	0200                	.insn	2, 0x0200
     f16:	000003ef          	jal	t2,f16 <_tbss_end+0xf16>
     f1a:	1c26                	.insn	2, 0x1c26
     f1c:	0005                	.insn	2, 0x0005
     f1e:	6c00                	.insn	2, 0x6c00
     f20:	0016                	.insn	2, 0x0016
     f22:	0600                	.insn	2, 0x0600
     f24:	0072                	.insn	2, 0x0072
     f26:	005e0a27          	.insn	4, 0x005e0a27
     f2a:	0000                	.insn	2, 0x
     f2c:	ed05                	.insn	2, 0xed05
     f2e:	0001                	.insn	2, 0x0001
     f30:	0000                	.insn	2, 0x
     f32:	0002                	.insn	2, 0x0002
     f34:	0800                	.insn	2, 0x0800
     f36:	0140                	.insn	2, 0x0140
     f38:	0000                	.insn	2, 0x
     f3a:	a62a                	.insn	2, 0xa62a
     f3c:	0000                	.insn	2, 0x
     f3e:	0000                	.insn	2, 0x
     f40:	f705                	.insn	2, 0xf705
     f42:	0001                	.insn	2, 0x0001
     f44:	1400                	.insn	2, 0x1400
     f46:	0002                	.insn	2, 0x0002
     f48:	0800                	.insn	2, 0x0800
     f4a:	0140                	.insn	2, 0x0140
     f4c:	0000                	.insn	2, 0x
     f4e:	0000a62b          	.insn	4, 0xa62b
     f52:	0000                	.insn	2, 0x
     f54:	0405                	.insn	2, 0x0405
     f56:	0002                	.insn	2, 0x0002
     f58:	e100                	.insn	2, 0xe100
     f5a:	0002                	.insn	2, 0x0002
     f5c:	0700                	.insn	2, 0x0700
     f5e:	04d4                	.insn	2, 0x04d4
     f60:	0000                	.insn	2, 0x
     f62:	21ec                	.insn	2, 0x21ec
     f64:	8000                	.insn	2, 0x8000
     f66:	0004d907          	.insn	4, 0x0004d907
     f6a:	0c00                	.insn	2, 0x0c00
     f6c:	07800023          	sb	s8,96(zero) # 60 <_tbss_end+0x60>
     f70:	04de                	.insn	2, 0x04de
     f72:	0000                	.insn	2, 0x
     f74:	2238                	.insn	2, 0x2238
     f76:	8000                	.insn	2, 0x8000
     f78:	f90c                	.insn	2, 0xf90c
     f7a:	02000003          	lb	zero,32(zero) # 20 <_tbss_end+0x20>
     f7e:	049f 0000 2d2c      	.insn	6, 0x2d2c0000049f
     f84:	0000                	.insn	2, 0x
     f86:	3f00                	.insn	2, 0x3f00
     f88:	0018                	.insn	2, 0x0018
     f8a:	0d00                	.insn	2, 0x0d00
     f8c:	025c                	.insn	2, 0x025c
     f8e:	0000                	.insn	2, 0x
     f90:	5f06                	.insn	2, 0x5f06
     f92:	785f 2c00 1c03      	.insn	6, 0x1c032c00785f
     f98:	0005                	.insn	2, 0x0005
     f9a:	0000                	.insn	2, 0x
     f9c:	00222003          	lw	zero,2(tp) # 2 <_tbss_end+0x2>
     fa0:	1480                	.insn	2, 0x1480
     fa2:	0000                	.insn	2, 0x
     fa4:	7800                	.insn	2, 0x7800
     fa6:	0002                	.insn	2, 0x0002
     fa8:	0100                	.insn	2, 0x0100
     faa:	5f5f 0078 1c2c      	.insn	6, 0x1c2c00785f5f
     fb0:	0005                	.insn	2, 0x0005
     fb2:	2400                	.insn	2, 0x2400
     fb4:	0019                	.insn	2, 0x0019
     fb6:	0000                	.insn	2, 0x
     fb8:	00217003          	.insn	4, 0x00217003
     fbc:	1080                	.insn	2, 0x1080
     fbe:	0000                	.insn	2, 0x
     fc0:	9400                	.insn	2, 0x9400
     fc2:	0002                	.insn	2, 0x0002
     fc4:	0100                	.insn	2, 0x0100
     fc6:	5f5f 0078 1c2c      	.insn	6, 0x1c2c00785f5f
     fcc:	0005                	.insn	2, 0x0005
     fce:	2c00                	.insn	2, 0x2c00
     fd0:	0019                	.insn	2, 0x0019
     fd2:	0000                	.insn	2, 0x
     fd4:	00234003          	lbu	zero,2(t1)
     fd8:	1080                	.insn	2, 0x1080
     fda:	0000                	.insn	2, 0x
     fdc:	b000                	.insn	2, 0xb000
     fde:	0002                	.insn	2, 0x0002
     fe0:	0100                	.insn	2, 0x0100
     fe2:	5f5f 0078 1c2c      	.insn	6, 0x1c2c00785f5f
     fe8:	0005                	.insn	2, 0x0005
     fea:	4000                	.insn	2, 0x4000
     fec:	0019                	.insn	2, 0x0019
     fee:	0000                	.insn	2, 0x
     ff0:	0023f003          	.insn	4, 0x0023f003
     ff4:	1080                	.insn	2, 0x1080
     ff6:	0000                	.insn	2, 0x
     ff8:	cc00                	.insn	2, 0xcc00
     ffa:	0002                	.insn	2, 0x0002
     ffc:	0100                	.insn	2, 0x0100
     ffe:	5f5f 0078 1c2c      	.insn	6, 0x1c2c00785f5f
    1004:	0005                	.insn	2, 0x0005
    1006:	5400                	.insn	2, 0x5400
    1008:	0019                	.insn	2, 0x0019
    100a:	0000                	.insn	2, 0x
    100c:	470a                	.insn	2, 0x470a
    100e:	0002                	.insn	2, 0x0002
    1010:	0100                	.insn	2, 0x0100
    1012:	5f5f 0078 1c2c      	.insn	6, 0x1c2c00785f5f
    1018:	0005                	.insn	2, 0x0005
    101a:	6800                	.insn	2, 0x6800
    101c:	0019                	.insn	2, 0x0019
    101e:	0000                	.insn	2, 0x
    1020:	0500                	.insn	2, 0x0500
    1022:	0252                	.insn	2, 0x0252
    1024:	0000                	.insn	2, 0x
    1026:	040e                	.insn	2, 0x040e
    1028:	0000                	.insn	2, 0x
    102a:	00041707          	.insn	4, 0x00041707
    102e:	4400                	.insn	2, 0x4400
    1030:	0025                	.insn	2, 0x0025
    1032:	0780                	.insn	2, 0x0780
    1034:	03f4                	.insn	2, 0x03f4
    1036:	0000                	.insn	2, 0x
    1038:	26a8                	.insn	2, 0x26a8
    103a:	8000                	.insn	2, 0x8000
    103c:	00041c07          	.insn	4, 0x00041c07
    1040:	8c00                	.insn	2, 0x8c00
    1042:	0025                	.insn	2, 0x0025
    1044:	0780                	.insn	2, 0x0780
    1046:	0436                	.insn	2, 0x0436
    1048:	0000                	.insn	2, 0x
    104a:	2884                	.insn	2, 0x2884
    104c:	8000                	.insn	2, 0x8000
    104e:	cb0c                	.insn	2, 0xcb0c
    1050:	0004                	.insn	2, 0x0004
    1052:	0200                	.insn	2, 0x0200
    1054:	049f 0000 2d2c      	.insn	6, 0x2d2c0000049f
    105a:	0000                	.insn	2, 0x
    105c:	9400                	.insn	2, 0x9400
    105e:	0019                	.insn	2, 0x0019
    1060:	0300                	.insn	2, 0x0300
    1062:	2524                	.insn	2, 0x2524
    1064:	8000                	.insn	2, 0x8000
    1066:	0010                	.insn	2, 0x0010
    1068:	0000                	.insn	2, 0x
    106a:	033d                	.insn	2, 0x033d
    106c:	0000                	.insn	2, 0x
    106e:	5f01                	.insn	2, 0x5f01
    1070:	785f 2c00 051c      	.insn	6, 0x051c2c00785f
    1076:	0000                	.insn	2, 0x
    1078:	00001a8f          	.insn	4, 0x1a8f
    107c:	0300                	.insn	2, 0x0300
    107e:	2578                	.insn	2, 0x2578
    1080:	8000                	.insn	2, 0x8000
    1082:	0010                	.insn	2, 0x0010
    1084:	0000                	.insn	2, 0x
    1086:	0359                	.insn	2, 0x0359
    1088:	0000                	.insn	2, 0x
    108a:	5f01                	.insn	2, 0x5f01
    108c:	785f 2c00 051c      	.insn	6, 0x051c2c00785f
    1092:	0000                	.insn	2, 0x
    1094:	00001aa3          	sh	zero,21(zero) # 15 <_tbss_end+0x15>
    1098:	0300                	.insn	2, 0x0300
    109a:	2630                	.insn	2, 0x2630
    109c:	8000                	.insn	2, 0x8000
    109e:	0014                	.insn	2, 0x0014
    10a0:	0000                	.insn	2, 0x
    10a2:	0375                	.insn	2, 0x0375
    10a4:	0000                	.insn	2, 0x
    10a6:	5f01                	.insn	2, 0x5f01
    10a8:	785f 2c00 051c      	.insn	6, 0x051c2c00785f
    10ae:	0000                	.insn	2, 0x
    10b0:	00001ab7          	lui	s5,0x1
    10b4:	0300                	.insn	2, 0x0300
    10b6:	26dc                	.insn	2, 0x26dc
    10b8:	8000                	.insn	2, 0x8000
    10ba:	0014                	.insn	2, 0x0014
    10bc:	0000                	.insn	2, 0x
    10be:	0391                	.insn	2, 0x0391
    10c0:	0000                	.insn	2, 0x
    10c2:	5f01                	.insn	2, 0x5f01
    10c4:	785f 2c00 051c      	.insn	6, 0x051c2c00785f
    10ca:	0000                	.insn	2, 0x
    10cc:	00001abf 02a30500 	.insn	8, 0x02a3050000001abf
    10d4:	0000                	.insn	2, 0x
    10d6:	03a9                	.insn	2, 0x03a9
    10d8:	0000                	.insn	2, 0x
    10da:	5f01                	.insn	2, 0x5f01
    10dc:	785f 2c00 051c      	.insn	6, 0x051c2c00785f
    10e2:	0000                	.insn	2, 0x
    10e4:	00001ac7          	fmsub.s	fs5,ft0,ft0,ft0,rtz
    10e8:	0300                	.insn	2, 0x0300
    10ea:	27a0                	.insn	2, 0x27a0
    10ec:	8000                	.insn	2, 0x8000
    10ee:	0014                	.insn	2, 0x0014
    10f0:	0000                	.insn	2, 0x
    10f2:	03c5                	.insn	2, 0x03c5
    10f4:	0000                	.insn	2, 0x
    10f6:	5f01                	.insn	2, 0x5f01
    10f8:	785f 2c00 051c      	.insn	6, 0x051c2c00785f
    10fe:	0000                	.insn	2, 0x
    1100:	1add                	.insn	2, 0x1add
    1102:	0000                	.insn	2, 0x
    1104:	0500                	.insn	2, 0x0500
    1106:	02ae                	.insn	2, 0x02ae
    1108:	0000                	.insn	2, 0x
    110a:	03dd                	.insn	2, 0x03dd
    110c:	0000                	.insn	2, 0x
    110e:	5f01                	.insn	2, 0x5f01
    1110:	785f 2c00 051c      	.insn	6, 0x051c2c00785f
    1116:	0000                	.insn	2, 0x
    1118:	1ae5                	.insn	2, 0x1ae5
    111a:	0000                	.insn	2, 0x
    111c:	0300                	.insn	2, 0x0300
    111e:	2870                	.insn	2, 0x2870
    1120:	8000                	.insn	2, 0x8000
    1122:	0010                	.insn	2, 0x0010
    1124:	0000                	.insn	2, 0x
    1126:	03f9                	.insn	2, 0x03f9
    1128:	0000                	.insn	2, 0x
    112a:	5f01                	.insn	2, 0x5f01
    112c:	785f 2c00 051c      	.insn	6, 0x051c2c00785f
    1132:	0000                	.insn	2, 0x
    1134:	1af4                	.insn	2, 0x1af4
    1136:	0000                	.insn	2, 0x
    1138:	0a00                	.insn	2, 0x0a00
    113a:	028e                	.insn	2, 0x028e
    113c:	0000                	.insn	2, 0x
    113e:	4402                	.insn	2, 0x4402
    1140:	0004                	.insn	2, 0x0004
    1142:	2c00                	.insn	2, 0x2c00
    1144:	002d                	.insn	2, 0x002d
    1146:	0000                	.insn	2, 0x
    1148:	1b08                	.insn	2, 0x1b08
    114a:	0000                	.insn	2, 0x
    114c:	0000                	.insn	2, 0x
    114e:	b905                	.insn	2, 0xb905
    1150:	0002                	.insn	2, 0x0002
    1152:	0000                	.insn	2, 0x
    1154:	0005                	.insn	2, 0x0005
    1156:	0200                	.insn	2, 0x0200
    1158:	045a                	.insn	2, 0x045a
    115a:	0000                	.insn	2, 0x
    115c:	2d2d                	.insn	2, 0x2d2d
    115e:	0000                	.insn	2, 0x
    1160:	3e00                	.insn	2, 0x3e00
    1162:	0500001b          	.insn	4, 0x0500001b
    1166:	02ce                	.insn	2, 0x02ce
    1168:	0000                	.insn	2, 0x
    116a:	04c1                	.insn	2, 0x04c1
    116c:	0000                	.insn	2, 0x
    116e:	b608                	.insn	2, 0xb608
    1170:	0004                	.insn	2, 0x0004
    1172:	2d00                	.insn	2, 0x2d00
    1174:	0515                	.insn	2, 0x0515
    1176:	0000                	.insn	2, 0x
    1178:	0202                	.insn	2, 0x0202
    117a:	0004                	.insn	2, 0x0004
    117c:	2d00                	.insn	2, 0x2d00
    117e:	0515                	.insn	2, 0x0515
    1180:	0000                	.insn	2, 0x
    1182:	1b5d                	.insn	2, 0x1b5d
    1184:	0000                	.insn	2, 0x
    1186:	2102                	.insn	2, 0x2102
    1188:	0004                	.insn	2, 0x0004
    118a:	2d00                	.insn	2, 0x2d00
    118c:	0515                	.insn	2, 0x0515
    118e:	0000                	.insn	2, 0x
    1190:	1b6c                	.insn	2, 0x1b6c
    1192:	0000                	.insn	2, 0x
    1194:	7302                	.insn	2, 0x7302
    1196:	0004                	.insn	2, 0x0004
    1198:	2d00                	.insn	2, 0x2d00
    119a:	051c                	.insn	2, 0x051c
    119c:	0000                	.insn	2, 0x
    119e:	1b7d                	.insn	2, 0x1b7d
    11a0:	0000                	.insn	2, 0x
    11a2:	8902                	.insn	2, 0x8902
    11a4:	0004                	.insn	2, 0x0004
    11a6:	2d00                	.insn	2, 0x2d00
    11a8:	051c                	.insn	2, 0x051c
    11aa:	0000                	.insn	2, 0x
    11ac:	1bd5                	.insn	2, 0x1bd5
    11ae:	0000                	.insn	2, 0x
    11b0:	00299003          	lh	zero,2(s3)
    11b4:	0c80                	.insn	2, 0x0c80
    11b6:	0000                	.insn	2, 0x
    11b8:	8c00                	.insn	2, 0x8c00
    11ba:	0004                	.insn	2, 0x0004
    11bc:	0100                	.insn	2, 0x0100
    11be:	5f5f 0078 1c2d      	.insn	6, 0x1c2d00785f5f
    11c4:	0005                	.insn	2, 0x0005
    11c6:	eb00                	.insn	2, 0xeb00
    11c8:	0000001b          	.insn	4, 0x001b
    11cc:	0029f403          	.insn	4, 0x0029f403
    11d0:	0c80                	.insn	2, 0x0c80
    11d2:	0000                	.insn	2, 0x
    11d4:	a800                	.insn	2, 0xa800
    11d6:	0004                	.insn	2, 0x0004
    11d8:	0100                	.insn	2, 0x0100
    11da:	5f5f 0078 1c2d      	.insn	6, 0x1c2d00785f5f
    11e0:	0005                	.insn	2, 0x0005
    11e2:	0200                	.insn	2, 0x0200
    11e4:	001c                	.insn	2, 0x001c
    11e6:	0000                	.insn	2, 0x
    11e8:	100e                	.insn	2, 0x100e
    11ea:	002a                	.insn	2, 0x002a
    11ec:	0c80                	.insn	2, 0x0c80
    11ee:	0000                	.insn	2, 0x
    11f0:	0100                	.insn	2, 0x0100
    11f2:	5f5f 0078 1c2d      	.insn	6, 0x1c2d00785f5f
    11f8:	0005                	.insn	2, 0x0005
    11fa:	1900                	.insn	2, 0x1900
    11fc:	001c                	.insn	2, 0x001c
    11fe:	0000                	.insn	2, 0x
    1200:	0300                	.insn	2, 0x0300
    1202:	29dc                	.insn	2, 0x29dc
    1204:	8000                	.insn	2, 0x8000
    1206:	0004                	.insn	2, 0x0004
    1208:	0000                	.insn	2, 0x
    120a:	04dd                	.insn	2, 0x04dd
    120c:	0000                	.insn	2, 0x
    120e:	5f19                	.insn	2, 0x5f19
    1210:	785f 0100 032d      	.insn	6, 0x032d0100785f
    1216:	051c                	.insn	2, 0x051c
    1218:	0000                	.insn	2, 0x
    121a:	5d01                	.insn	2, 0x5d01
    121c:	0d00                	.insn	2, 0x0d00
    121e:	04ee                	.insn	2, 0x04ee
    1220:	0000                	.insn	2, 0x
    1222:	5f06                	.insn	2, 0x5f06
    1224:	785f 2d00 1c03      	.insn	6, 0x1c032d00785f
    122a:	0005                	.insn	2, 0x0005
    122c:	0000                	.insn	2, 0x
    122e:	de0a                	.insn	2, 0xde0a
    1230:	0002                	.insn	2, 0x0002
    1232:	0600                	.insn	2, 0x0600
    1234:	5f5f 0078 032d      	.insn	6, 0x032d00785f5f
    123a:	051c                	.insn	2, 0x051c
    123c:	0000                	.insn	2, 0x
    123e:	0000                	.insn	2, 0x
    1240:	940e                	.insn	2, 0x940e
    1242:	002a                	.insn	2, 0x002a
    1244:	2880                	.insn	2, 0x2880
    1246:	0000                	.insn	2, 0x
    1248:	0800                	.insn	2, 0x0800
    124a:	021e                	.insn	2, 0x021e
    124c:	0000                	.insn	2, 0x
    124e:	a62d                	.insn	2, 0xa62d
    1250:	0000                	.insn	2, 0x
    1252:	0000                	.insn	2, 0x
    1254:	0400                	.insn	2, 0x0400
    1256:	0504                	.insn	2, 0x0504
    1258:	0000017b          	.insn	4, 0x017b
    125c:	0404                	.insn	2, 0x0404
    125e:	00016407          	.insn	4, 0x00016407
    1262:	0000                	.insn	2, 0x
    1264:	000001c7          	fmsub.s	ft3,ft0,ft0,ft0,rne
    1268:	0005                	.insn	2, 0x0005
    126a:	0401                	.insn	2, 0x0401
    126c:	06fd                	.insn	2, 0x06fd
    126e:	0000                	.insn	2, 0x
    1270:	0808                	.insn	2, 0x0808
    1272:	0000                	.insn	2, 0x
    1274:	1d00                	.insn	2, 0x1d00
    1276:	0160                	.insn	2, 0x0160
    1278:	0000                	.insn	2, 0x
    127a:	0026                	.insn	2, 0x0026
    127c:	0000                	.insn	2, 0x
    127e:	2b8c                	.insn	2, 0x2b8c
    1280:	8000                	.insn	2, 0x8000
    1282:	0104                	.insn	2, 0x0104
    1284:	0000                	.insn	2, 0x
    1286:	35ae                	.insn	2, 0x35ae
    1288:	0000                	.insn	2, 0x
    128a:	0801                	.insn	2, 0x0801
    128c:	3404                	.insn	2, 0x3404
    128e:	0001                	.insn	2, 0x0001
    1290:	0900                	.insn	2, 0x0900
    1292:	0504                	.insn	2, 0x0504
    1294:	6e69                	.insn	2, 0x6e69
    1296:	0074                	.insn	2, 0x0074
    1298:	0101                	.insn	2, 0x0101
    129a:	e706                	.insn	2, 0xe706
    129c:	0000                	.insn	2, 0x
    129e:	0400                	.insn	2, 0x0400
    12a0:	0501                	.insn	2, 0x0501
    12a2:	0000                	.insn	2, 0x
    12a4:	0144                	.insn	2, 0x0144
    12a6:	2d0d                	.insn	2, 0x2d0d
    12a8:	0000                	.insn	2, 0x
    12aa:	0100                	.insn	2, 0x0100
    12ac:	0508                	.insn	2, 0x0508
    12ae:	0176                	.insn	2, 0x0176
    12b0:	0000                	.insn	2, 0x
    12b2:	0101                	.insn	2, 0x0101
    12b4:	e508                	.insn	2, 0xe508
    12b6:	0000                	.insn	2, 0x
    12b8:	0400                	.insn	2, 0x0400
    12ba:	0500                	.insn	2, 0x0500
    12bc:	0000                	.insn	2, 0x
    12be:	61160147          	fmsub.s	ft2,fa2,fa7,fa2,rne
    12c2:	0000                	.insn	2, 0x
    12c4:	0100                	.insn	2, 0x0100
    12c6:	0704                	.insn	2, 0x0704
    12c8:	0169                	.insn	2, 0x0169
    12ca:	0000                	.insn	2, 0x
    12cc:	0801                	.insn	2, 0x0801
    12ce:	00015f07          	.insn	4, 0x00015f07
    12d2:	0100                	.insn	2, 0x0100
    12d4:	0702                	.insn	2, 0x0702
    12d6:	0106                	.insn	2, 0x0106
    12d8:	0000                	.insn	2, 0x
    12da:	de0a                	.insn	2, 0xde0a
    12dc:	0000                	.insn	2, 0x
    12de:	0300                	.insn	2, 0x0300
    12e0:	0f44                	.insn	2, 0x0f44
    12e2:	0026                	.insn	2, 0x0026
    12e4:	0000                	.insn	2, 0x
    12e6:	4b03080b          	.insn	4, 0x4b03080b
    12ea:	0000be03          	.insn	4, 0xbe03
    12ee:	0300                	.insn	2, 0x0300
    12f0:	00d2                	.insn	2, 0x00d2
    12f2:	0000                	.insn	2, 0x
    12f4:	00006153          	fadd.s	ft2,ft0,ft0,unknown
    12f8:	2000                	.insn	2, 0x2000
    12fa:	0300                	.insn	2, 0x0300
    12fc:	00d8                	.insn	2, 0x00d8
    12fe:	0000                	.insn	2, 0x
    1300:	6154                	.insn	2, 0x6154
    1302:	0000                	.insn	2, 0x
    1304:	1400                	.insn	2, 0x1400
    1306:	0c20                	.insn	2, 0x0c20
    1308:	7865                	.insn	2, 0x7865
    130a:	0070                	.insn	2, 0x0070
    130c:	610e5503          	lhu	a0,1552(t3)
    1310:	0000                	.insn	2, 0x
    1312:	0b00                	.insn	2, 0x0b00
    1314:	0334                	.insn	2, 0x0334
    1316:	0101                	.insn	2, 0x0101
    1318:	0000                	.insn	2, 0x
    131a:	6156                	.insn	2, 0x6156
    131c:	0000                	.insn	2, 0x
    131e:	0100                	.insn	2, 0x0100
    1320:	840d003f 08000001 	.insn	8, 0x08000001840d003f
    1328:	e4074803          	lbu	a6,-448(a4)
    132c:	0000                	.insn	2, 0x
    132e:	0e00                	.insn	2, 0x0e00
    1330:	6c66                	.insn	2, 0x6c66
    1332:	0074                	.insn	2, 0x0074
    1334:	760a4a03          	lbu	s4,1888(s4)
    1338:	0000                	.insn	2, 0x
    133a:	0f00                	.insn	2, 0x0f00
    133c:	0190                	.insn	2, 0x0190
    133e:	0000                	.insn	2, 0x
    1340:	82055803          	lhu	a6,-2016(a0) # 18fc6 <_tbss_end+0x18fc6>
    1344:	0000                	.insn	2, 0x
    1346:	0000                	.insn	2, 0x
    1348:	f610                	.insn	2, 0xf610
    134a:	0004                	.insn	2, 0x0004
    134c:	0100                	.insn	2, 0x0100
    134e:	0121                	.insn	2, 0x0121
    1350:	0000003b          	.insn	4, 0x003b
    1354:	2b8c                	.insn	2, 0x2b8c
    1356:	8000                	.insn	2, 0x8000
    1358:	0104                	.insn	2, 0x0104
    135a:	0000                	.insn	2, 0x
    135c:	9c01                	.insn	2, 0x9c01
    135e:	01bc                	.insn	2, 0x01bc
    1360:	0000                	.insn	2, 0x
    1362:	6111                	.insn	2, 0x6111
    1364:	0100                	.insn	2, 0x0100
    1366:	1321                	.insn	2, 0x1321
    1368:	0076                	.insn	2, 0x0076
    136a:	0000                	.insn	2, 0x
    136c:	1c3c                	.insn	2, 0x1c3c
    136e:	0000                	.insn	2, 0x
    1370:	1e02                	.insn	2, 0x1e02
    1372:	0001                	.insn	2, 0x0001
    1374:	2300                	.insn	2, 0x2300
    1376:	002d                	.insn	2, 0x002d
    1378:	0000                	.insn	2, 0x
    137a:	1cc4                	.insn	2, 0x1cc4
    137c:	0000                	.insn	2, 0x
    137e:	9505                	.insn	2, 0x9505
    1380:	0001                	.insn	2, 0x0001
    1382:	2300                	.insn	2, 0x2300
    1384:	002d                	.insn	2, 0x002d
    1386:	0000                	.insn	2, 0x
    1388:	4112                	.insn	2, 0x4112
    138a:	635f 0100 0324      	.insn	6, 0x03240100635f
    1390:	01bc                	.insn	2, 0x01bc
    1392:	0000                	.insn	2, 0x
    1394:	735f4113          	xori	sp,t5,1845
    1398:	0100                	.insn	2, 0x0100
    139a:	0324                	.insn	2, 0x0324
    139c:	01bc                	.insn	2, 0x01bc
    139e:	0000                	.insn	2, 0x
    13a0:	7b06                	.insn	2, 0x7b06
    13a2:	0800                	.insn	2, 0x0800
    13a4:	069f1aff 00655f41 	.insn	12, 0x01bc032400655f41069f1aff
    13ac:	01bc0324 
    13b0:	0000                	.insn	2, 0x
    13b2:	1cd4                	.insn	2, 0x1cd4
    13b4:	0000                	.insn	2, 0x
    13b6:	3b02                	.insn	2, 0x3b02
    13b8:	0001                	.insn	2, 0x0001
    13ba:	2400                	.insn	2, 0x2400
    13bc:	000001c3          	fmadd.s	ft3,ft0,ft0,ft0,rne
    13c0:	00001cf3          	csrrw	s9,ustatus,zero
    13c4:	1902                	.insn	2, 0x1902
    13c6:	0001                	.insn	2, 0x0001
    13c8:	2400                	.insn	2, 0x2400
    13ca:	000001c3          	fmadd.s	ft3,ft0,ft0,ft0,rne
    13ce:	00001d33          	sll	s10,zero,zero
    13d2:	7206                	.insn	2, 0x7206
    13d4:	2500                	.insn	2, 0x2500
    13d6:	0000550b          	.insn	4, 0x550b
    13da:	6b00                	.insn	2, 0x6b00
    13dc:	001d                	.insn	2, 0x001d
    13de:	0700                	.insn	2, 0x0700
    13e0:	02f5                	.insn	2, 0x02f5
    13e2:	0000                	.insn	2, 0x
    13e4:	0000018f          	.insn	4, 0x018f
    13e8:	4005                	.insn	2, 0x4005
    13ea:	0001                	.insn	2, 0x0001
    13ec:	2800                	.insn	2, 0x2800
    13ee:	00be                	.insn	2, 0x00be
    13f0:	0000                	.insn	2, 0x
    13f2:	0700                	.insn	2, 0x0700
    13f4:	02fc                	.insn	2, 0x02fc
    13f6:	0000                	.insn	2, 0x
    13f8:	000001a7          	.insn	4, 0x01a7
    13fc:	e302                	.insn	2, 0xe302
    13fe:	0004                	.insn	2, 0x0004
    1400:	2900                	.insn	2, 0x2900
    1402:	002d                	.insn	2, 0x002d
    1404:	0000                	.insn	2, 0x
    1406:	00001da3          	sh	zero,27(zero) # 1b <_tbss_end+0x1b>
    140a:	1400                	.insn	2, 0x1400
    140c:	0000030b          	.insn	4, 0x030b
    1410:	e302                	.insn	2, 0xe302
    1412:	0004                	.insn	2, 0x0004
    1414:	2900                	.insn	2, 0x2900
    1416:	002d                	.insn	2, 0x002d
    1418:	0000                	.insn	2, 0x
    141a:	1dcc                	.insn	2, 0x1dcc
    141c:	0000                	.insn	2, 0x
    141e:	0000                	.insn	2, 0x
    1420:	0401                	.insn	2, 0x0401
    1422:	7b05                	.insn	2, 0x7b05
    1424:	0001                	.insn	2, 0x0001
    1426:	0100                	.insn	2, 0x0100
    1428:	0704                	.insn	2, 0x0704
    142a:	0164                	.insn	2, 0x0164
    142c:	0000                	.insn	2, 0x
    142e:	b000                	.insn	2, 0xb000
    1430:	0001                	.insn	2, 0x0001
    1432:	0500                	.insn	2, 0x0500
    1434:	0100                	.insn	2, 0x0100
    1436:	4004                	.insn	2, 0x4004
    1438:	0008                	.insn	2, 0x0008
    143a:	0600                	.insn	2, 0x0600
    143c:	0008                	.insn	2, 0x0008
    143e:	0000                	.insn	2, 0x
    1440:	881d                	.insn	2, 0x881d
    1442:	0001                	.insn	2, 0x0001
    1444:	2600                	.insn	2, 0x2600
    1446:	0000                	.insn	2, 0x
    1448:	9000                	.insn	2, 0x9000
    144a:	002c                	.insn	2, 0x002c
    144c:	c880                	.insn	2, 0xc880
    144e:	0000                	.insn	2, 0x
    1450:	e300                	.insn	2, 0xe300
    1452:	0038                	.insn	2, 0x0038
    1454:	0100                	.insn	2, 0x0100
    1456:	0408                	.insn	2, 0x0408
    1458:	0134                	.insn	2, 0x0134
    145a:	0000                	.insn	2, 0x
    145c:	69050407          	.insn	4, 0x69050407
    1460:	746e                	.insn	2, 0x746e
    1462:	0100                	.insn	2, 0x0100
    1464:	0601                	.insn	2, 0x0601
    1466:	000000e7          	jalr	zero # 0 <_tbss_end>
    146a:	0801                	.insn	2, 0x0801
    146c:	7605                	.insn	2, 0x7605
    146e:	0001                	.insn	2, 0x0001
    1470:	0100                	.insn	2, 0x0100
    1472:	0801                	.insn	2, 0x0801
    1474:	00e5                	.insn	2, 0x00e5
    1476:	0000                	.insn	2, 0x
    1478:	0008                	.insn	2, 0x0008
    147a:	0005                	.insn	2, 0x0005
    147c:	0200                	.insn	2, 0x0200
    147e:	56160147          	.insn	4, 0x56160147
    1482:	0000                	.insn	2, 0x
    1484:	0100                	.insn	2, 0x0100
    1486:	0704                	.insn	2, 0x0704
    1488:	0169                	.insn	2, 0x0169
    148a:	0000                	.insn	2, 0x
    148c:	0801                	.insn	2, 0x0801
    148e:	00015f07          	.insn	4, 0x00015f07
    1492:	0100                	.insn	2, 0x0100
    1494:	0702                	.insn	2, 0x0702
    1496:	0106                	.insn	2, 0x0106
    1498:	0000                	.insn	2, 0x
    149a:	de09                	.insn	2, 0xde09
    149c:	0000                	.insn	2, 0x
    149e:	0300                	.insn	2, 0x0300
    14a0:	0f44                	.insn	2, 0x0f44
    14a2:	0026                	.insn	2, 0x0026
    14a4:	0000                	.insn	2, 0x
    14a6:	080a                	.insn	2, 0x080a
    14a8:	b3034b03          	lbu	s6,-1232(t1)
    14ac:	0000                	.insn	2, 0x
    14ae:	0300                	.insn	2, 0x0300
    14b0:	00d2                	.insn	2, 0x00d2
    14b2:	0000                	.insn	2, 0x
    14b4:	00005653          	fadd.s	fa2,ft0,ft0,unknown
    14b8:	2000                	.insn	2, 0x2000
    14ba:	0300                	.insn	2, 0x0300
    14bc:	00d8                	.insn	2, 0x00d8
    14be:	0000                	.insn	2, 0x
    14c0:	5654                	.insn	2, 0x5654
    14c2:	0000                	.insn	2, 0x
    14c4:	1400                	.insn	2, 0x1400
    14c6:	0b20                	.insn	2, 0x0b20
    14c8:	7865                	.insn	2, 0x7865
    14ca:	0070                	.insn	2, 0x0070
    14cc:	560e5503          	lhu	a0,1376(t3)
    14d0:	0000                	.insn	2, 0x
    14d2:	0b00                	.insn	2, 0x0b00
    14d4:	0334                	.insn	2, 0x0334
    14d6:	0101                	.insn	2, 0x0101
    14d8:	0000                	.insn	2, 0x
    14da:	5656                	.insn	2, 0x5656
    14dc:	0000                	.insn	2, 0x
    14de:	0100                	.insn	2, 0x0100
    14e0:	840c003f 08000001 	.insn	8, 0x08000001840c003f
    14e8:	d9074803          	lbu	a6,-624(a4)
    14ec:	0000                	.insn	2, 0x
    14ee:	0d00                	.insn	2, 0x0d00
    14f0:	6c66                	.insn	2, 0x6c66
    14f2:	0074                	.insn	2, 0x0074
    14f4:	6b0a4a03          	lbu	s4,1712(s4)
    14f8:	0000                	.insn	2, 0x
    14fa:	0e00                	.insn	2, 0x0e00
    14fc:	0190                	.insn	2, 0x0190
    14fe:	0000                	.insn	2, 0x
    1500:	77055803          	lhu	a6,1904(a0)
    1504:	0000                	.insn	2, 0x
    1506:	0000                	.insn	2, 0x
    1508:	0005080f          	.insn	4, 0x0005080f
    150c:	0100                	.insn	2, 0x0100
    150e:	0121                	.insn	2, 0x0121
    1510:	0049                	.insn	2, 0x0049
    1512:	0000                	.insn	2, 0x
    1514:	2c90                	.insn	2, 0x2c90
    1516:	8000                	.insn	2, 0x8000
    1518:	00c8                	.insn	2, 0x00c8
    151a:	0000                	.insn	2, 0x
    151c:	9c01                	.insn	2, 0x9c01
    151e:	01a5                	.insn	2, 0x01a5
    1520:	0000                	.insn	2, 0x
    1522:	6110                	.insn	2, 0x6110
    1524:	0100                	.insn	2, 0x0100
    1526:	1621                	.insn	2, 0x1621
    1528:	0000006b          	.insn	4, 0x006b
    152c:	1df6                	.insn	2, 0x1df6
    152e:	0000                	.insn	2, 0x
    1530:	1e02                	.insn	2, 0x1e02
    1532:	0001                	.insn	2, 0x0001
    1534:	2300                	.insn	2, 0x2300
    1536:	002d                	.insn	2, 0x002d
    1538:	0000                	.insn	2, 0x
    153a:	1e0c                	.insn	2, 0x1e0c
    153c:	0000                	.insn	2, 0x
    153e:	9504                	.insn	2, 0x9504
    1540:	0001                	.insn	2, 0x0001
    1542:	2300                	.insn	2, 0x2300
    1544:	002d                	.insn	2, 0x002d
    1546:	0000                	.insn	2, 0x
    1548:	4111                	.insn	2, 0x4111
    154a:	635f 0100 0324      	.insn	6, 0x03240100635f
    1550:	01a5                	.insn	2, 0x01a5
    1552:	0000                	.insn	2, 0x
    1554:	4105                	.insn	2, 0x4105
    1556:	735f 2400 a503      	.insn	6, 0xa5032400735f
    155c:	0001                	.insn	2, 0x0001
    155e:	1c00                	.insn	2, 0x1c00
    1560:	001e                	.insn	2, 0x001e
    1562:	0500                	.insn	2, 0x0500
    1564:	5f41                	.insn	2, 0x5f41
    1566:	0065                	.insn	2, 0x0065
    1568:	0324                	.insn	2, 0x0324
    156a:	01a5                	.insn	2, 0x01a5
    156c:	0000                	.insn	2, 0x
    156e:	1e3e                	.insn	2, 0x1e3e
    1570:	0000                	.insn	2, 0x
    1572:	3b02                	.insn	2, 0x3b02
    1574:	0001                	.insn	2, 0x0001
    1576:	2400                	.insn	2, 0x2400
    1578:	01ac                	.insn	2, 0x01ac
    157a:	0000                	.insn	2, 0x
    157c:	1e60                	.insn	2, 0x1e60
    157e:	0000                	.insn	2, 0x
    1580:	1902                	.insn	2, 0x1902
    1582:	0001                	.insn	2, 0x0001
    1584:	2400                	.insn	2, 0x2400
    1586:	01ac                	.insn	2, 0x01ac
    1588:	0000                	.insn	2, 0x
    158a:	00001e8b          	.insn	4, 0x1e8b
    158e:	7205                	.insn	2, 0x7205
    1590:	2500                	.insn	2, 0x2500
    1592:	0000490b          	.insn	4, 0x490b
    1596:	b300                	.insn	2, 0xb300
    1598:	001e                	.insn	2, 0x001e
    159a:	1200                	.insn	2, 0x1200
    159c:	0321                	.insn	2, 0x0321
    159e:	0000                	.insn	2, 0x
    15a0:	0180                	.insn	2, 0x0180
    15a2:	0000                	.insn	2, 0x
    15a4:	4004                	.insn	2, 0x4004
    15a6:	0001                	.insn	2, 0x0001
    15a8:	2800                	.insn	2, 0x2800
    15aa:	000000b3          	add	ra,zero,zero
    15ae:	1300                	.insn	2, 0x1300
    15b0:	0190                	.insn	2, 0x0190
    15b2:	0000                	.insn	2, 0x
    15b4:	e304                	.insn	2, 0xe304
    15b6:	0004                	.insn	2, 0x0004
    15b8:	2900                	.insn	2, 0x2900
    15ba:	002d                	.insn	2, 0x002d
    15bc:	0000                	.insn	2, 0x
    15be:	1400                	.insn	2, 0x1400
    15c0:	0328                	.insn	2, 0x0328
    15c2:	0000                	.insn	2, 0x
    15c4:	e302                	.insn	2, 0xe302
    15c6:	0004                	.insn	2, 0x0004
    15c8:	2900                	.insn	2, 0x2900
    15ca:	002d                	.insn	2, 0x002d
    15cc:	0000                	.insn	2, 0x
    15ce:	1ed4                	.insn	2, 0x1ed4
    15d0:	0000                	.insn	2, 0x
    15d2:	0000                	.insn	2, 0x
    15d4:	0401                	.insn	2, 0x0401
    15d6:	7b05                	.insn	2, 0x7b05
    15d8:	0001                	.insn	2, 0x0001
    15da:	0100                	.insn	2, 0x0100
    15dc:	0704                	.insn	2, 0x0704
    15de:	0164                	.insn	2, 0x0164
    15e0:	0000                	.insn	2, 0x
    15e2:	5600                	.insn	2, 0x5600
    15e4:	0002                	.insn	2, 0x0002
    15e6:	0500                	.insn	2, 0x0500
    15e8:	0100                	.insn	2, 0x0100
    15ea:	7804                	.insn	2, 0x7804
    15ec:	0009                	.insn	2, 0x0009
    15ee:	0b00                	.insn	2, 0x0b00
    15f0:	0008                	.insn	2, 0x0008
    15f2:	0000                	.insn	2, 0x
    15f4:	b31d                	.insn	2, 0xb31d
    15f6:	0001                	.insn	2, 0x0001
    15f8:	2600                	.insn	2, 0x2600
    15fa:	0000                	.insn	2, 0x
    15fc:	5800                	.insn	2, 0x5800
    15fe:	002d                	.insn	2, 0x002d
    1600:	8080                	.insn	2, 0x8080
    1602:	0000                	.insn	2, 0x
    1604:	a000                	.insn	2, 0xa000
    1606:	0100003b          	.insn	4, 0x0100003b
    160a:	0708                	.insn	2, 0x0708
    160c:	015f 0000 0401      	.insn	6, 0x04010000015f
    1612:	00016907          	.insn	4, 0x00016907
    1616:	0c00                	.insn	2, 0x0c00
    1618:	0504                	.insn	2, 0x0504
    161a:	6e69                	.insn	2, 0x6e69
    161c:	0074                	.insn	2, 0x0074
    161e:	0101                	.insn	2, 0x0101
    1620:	e706                	.insn	2, 0xe706
    1622:	0000                	.insn	2, 0x
    1624:	0800                	.insn	2, 0x0800
    1626:	0501                	.insn	2, 0x0501
    1628:	0000                	.insn	2, 0x
    162a:	0144                	.insn	2, 0x0144
    162c:	340d                	.insn	2, 0x340d
    162e:	0000                	.insn	2, 0x
    1630:	0100                	.insn	2, 0x0100
    1632:	0508                	.insn	2, 0x0508
    1634:	0176                	.insn	2, 0x0176
    1636:	0000                	.insn	2, 0x
    1638:	0101                	.insn	2, 0x0101
    163a:	e508                	.insn	2, 0xe508
    163c:	0000                	.insn	2, 0x
    163e:	0800                	.insn	2, 0x0800
    1640:	0500                	.insn	2, 0x0500
    1642:	0000                	.insn	2, 0x
    1644:	2d160147          	.insn	4, 0x2d160147
    1648:	0000                	.insn	2, 0x
    164a:	0100                	.insn	2, 0x0100
    164c:	0702                	.insn	2, 0x0702
    164e:	0106                	.insn	2, 0x0106
    1650:	0000                	.insn	2, 0x
    1652:	de0d                	.insn	2, 0xde0d
    1654:	0000                	.insn	2, 0x
    1656:	0300                	.insn	2, 0x0300
    1658:	0f44                	.insn	2, 0x0f44
    165a:	0000007b          	.insn	4, 0x007b
    165e:	0801                	.insn	2, 0x0801
    1660:	3404                	.insn	2, 0x3404
    1662:	0001                	.insn	2, 0x0001
    1664:	0e00                	.insn	2, 0x0e00
    1666:	0308                	.insn	2, 0x0308
    1668:	00be034b          	fnmsub.s	ft6,ft8,fa1,ft0,rne
    166c:	0000                	.insn	2, 0x
    166e:	d206                	.insn	2, 0xd206
    1670:	0000                	.insn	2, 0x
    1672:	5300                	.insn	2, 0x5300
    1674:	002d                	.insn	2, 0x002d
    1676:	0000                	.insn	2, 0x
    1678:	0020                	.insn	2, 0x0020
    167a:	d806                	.insn	2, 0xd806
    167c:	0000                	.insn	2, 0x
    167e:	5400                	.insn	2, 0x5400
    1680:	002d                	.insn	2, 0x002d
    1682:	0000                	.insn	2, 0x
    1684:	2014                	.insn	2, 0x2014
    1686:	7078650f          	.insn	4, 0x7078650f
    168a:	0300                	.insn	2, 0x0300
    168c:	0e55                	.insn	2, 0x0e55
    168e:	002d                	.insn	2, 0x002d
    1690:	0000                	.insn	2, 0x
    1692:	0106340b          	.insn	4, 0x0106340b
    1696:	0001                	.insn	2, 0x0001
    1698:	5600                	.insn	2, 0x5600
    169a:	002d                	.insn	2, 0x002d
    169c:	0000                	.insn	2, 0x
    169e:	3f01                	.insn	2, 0x3f01
    16a0:	1000                	.insn	2, 0x1000
    16a2:	0184                	.insn	2, 0x0184
    16a4:	0000                	.insn	2, 0x
    16a6:	0308                	.insn	2, 0x0308
    16a8:	0748                	.insn	2, 0x0748
    16aa:	00e4                	.insn	2, 0x00e4
    16ac:	0000                	.insn	2, 0x
    16ae:	6611                	.insn	2, 0x6611
    16b0:	746c                	.insn	2, 0x746c
    16b2:	0300                	.insn	2, 0x0300
    16b4:	0a4a                	.insn	2, 0x0a4a
    16b6:	0000006f          	j	16b6 <_tbss_end+0x16b6>
    16ba:	9012                	.insn	2, 0x9012
    16bc:	0001                	.insn	2, 0x0001
    16be:	0300                	.insn	2, 0x0300
    16c0:	0558                	.insn	2, 0x0558
    16c2:	0082                	.insn	2, 0x0082
    16c4:	0000                	.insn	2, 0x
    16c6:	1300                	.insn	2, 0x1300
    16c8:	0542                	.insn	2, 0x0542
    16ca:	0000                	.insn	2, 0x
    16cc:	2201                	.insn	2, 0x2201
    16ce:	6f01                	.insn	2, 0x6f01
    16d0:	0000                	.insn	2, 0x
    16d2:	5800                	.insn	2, 0x5800
    16d4:	002d                	.insn	2, 0x002d
    16d6:	8080                	.insn	2, 0x8080
    16d8:	0000                	.insn	2, 0x
    16da:	0100                	.insn	2, 0x0100
    16dc:	4b9c                	.insn	2, 0x4b9c
    16de:	0002                	.insn	2, 0x0002
    16e0:	1400                	.insn	2, 0x1400
    16e2:	0069                	.insn	2, 0x0069
    16e4:	2201                	.insn	2, 0x2201
    16e6:	4215                	.insn	2, 0x4215
    16e8:	0000                	.insn	2, 0x
    16ea:	0f00                	.insn	2, 0x0f00
    16ec:	001f 0200 5f41      	.insn	6, 0x5f410200001f
    16f2:	03240063          	beq	s0,s2,1712 <_tbss_end+0x1712>
    16f6:	0000024b          	fnmsub.s	ft4,ft0,ft0,ft0,rne
    16fa:	4109                	.insn	2, 0x4109
    16fc:	735f 4b00 0002      	.insn	6, 0x00024b00735f
    1702:	3c00                	.insn	2, 0x3c00
    1704:	001f 0900 5f41      	.insn	6, 0x5f410900001f
    170a:	0065                	.insn	2, 0x0065
    170c:	0000024b          	fnmsub.s	ft4,ft0,ft0,ft0,rne
    1710:	1f4c                	.insn	2, 0x1f4c
    1712:	0000                	.insn	2, 0x
    1714:	3b05                	.insn	2, 0x3b05
    1716:	0001                	.insn	2, 0x0001
    1718:	2400                	.insn	2, 0x2400
    171a:	0252                	.insn	2, 0x0252
    171c:	0000                	.insn	2, 0x
    171e:	00001f57          	.insn	4, 0x1f57
    1722:	1905                	.insn	2, 0x1905
    1724:	0001                	.insn	2, 0x0001
    1726:	2400                	.insn	2, 0x2400
    1728:	0252                	.insn	2, 0x0252
    172a:	0000                	.insn	2, 0x
    172c:	00001f63          	bnez	zero,174a <_tbss_end+0x174a>
    1730:	6102                	.insn	2, 0x6102
    1732:	2500                	.insn	2, 0x2500
    1734:	6f0a                	.insn	2, 0x6f0a
    1736:	0000                	.insn	2, 0x
    1738:	0a00                	.insn	2, 0x0a00
    173a:	033d                	.insn	2, 0x033d
    173c:	0000                	.insn	2, 0x
    173e:	0236                	.insn	2, 0x0236
    1740:	0000                	.insn	2, 0x
    1742:	1515                	.insn	2, 0x1515
    1744:	0005                	.insn	2, 0x0005
    1746:	0100                	.insn	2, 0x0100
    1748:	45160327          	.insn	4, 0x45160327
    174c:	05000003          	lb	zero,80(zero) # 50 <_tbss_end+0x50>
    1750:	0522                	.insn	2, 0x0522
    1752:	0000                	.insn	2, 0x
    1754:	00005c27          	.insn	4, 0x5c27
    1758:	7a00                	.insn	2, 0x7a00
    175a:	001f 0a00 034c      	.insn	6, 0x034c0a00001f
    1760:	0000                	.insn	2, 0x
    1762:	0192                	.insn	2, 0x0192
    1764:	0000                	.insn	2, 0x
    1766:	3205                	.insn	2, 0x3205
    1768:	0005                	.insn	2, 0x0005
    176a:	2700                	.insn	2, 0x2700
    176c:	0034                	.insn	2, 0x0034
    176e:	0000                	.insn	2, 0x
    1770:	1f8a                	.insn	2, 0x1f8a
    1772:	0000                	.insn	2, 0x
    1774:	0700                	.insn	2, 0x0700
    1776:	00045a03          	lhu	s4,0(s0)
    177a:	2700                	.insn	2, 0x2700
    177c:	0034                	.insn	2, 0x0034
    177e:	0000                	.insn	2, 0x
    1780:	0404                	.insn	2, 0x0404
    1782:	0002                	.insn	2, 0x0002
    1784:	0300                	.insn	2, 0x0300
    1786:	04b6                	.insn	2, 0x04b6
    1788:	0000                	.insn	2, 0x
    178a:	00024b27          	.insn	4, 0x00024b27
    178e:	0300                	.insn	2, 0x0300
    1790:	0402                	.insn	2, 0x0402
    1792:	0000                	.insn	2, 0x
    1794:	00024b27          	.insn	4, 0x00024b27
    1798:	0300                	.insn	2, 0x0300
    179a:	0421                	.insn	2, 0x0421
    179c:	0000                	.insn	2, 0x
    179e:	00024b27          	.insn	4, 0x00024b27
    17a2:	0300                	.insn	2, 0x0300
    17a4:	00000473          	.insn	4, 0x0473
    17a8:	00025227          	.insn	4, 0x00025227
    17ac:	0300                	.insn	2, 0x0300
    17ae:	0489                	.insn	2, 0x0489
    17b0:	0000                	.insn	2, 0x
    17b2:	00025227          	.insn	4, 0x00025227
    17b6:	0400                	.insn	2, 0x0400
    17b8:	01e5                	.insn	2, 0x01e5
    17ba:	0000                	.insn	2, 0x
    17bc:	5f02                	.insn	2, 0x5f02
    17be:	785f 2700 5203      	.insn	6, 0x52032700785f
    17c4:	0002                	.insn	2, 0x0002
    17c6:	0000                	.insn	2, 0x
    17c8:	f604                	.insn	2, 0xf604
    17ca:	0001                	.insn	2, 0x0001
    17cc:	0200                	.insn	2, 0x0200
    17ce:	5f5f 0078 0327      	.insn	6, 0x032700785f5f
    17d4:	0252                	.insn	2, 0x0252
    17d6:	0000                	.insn	2, 0x
    17d8:	0700                	.insn	2, 0x0700
    17da:	5f02                	.insn	2, 0x5f02
    17dc:	785f 2700 5203      	.insn	6, 0x52032700785f
    17e2:	0002                	.insn	2, 0x0002
    17e4:	0000                	.insn	2, 0x
    17e6:	0400                	.insn	2, 0x0400
    17e8:	0215                	.insn	2, 0x0215
    17ea:	0000                	.insn	2, 0x
    17ec:	5f02                	.insn	2, 0x5f02
    17ee:	785f 2700 5203      	.insn	6, 0x52032700785f
    17f4:	0002                	.insn	2, 0x0002
    17f6:	0000                	.insn	2, 0x
    17f8:	2604                	.insn	2, 0x2604
    17fa:	0002                	.insn	2, 0x0002
    17fc:	0200                	.insn	2, 0x0200
    17fe:	5f5f 0078 0327      	.insn	6, 0x032700785f5f
    1804:	0252                	.insn	2, 0x0252
    1806:	0000                	.insn	2, 0x
    1808:	0700                	.insn	2, 0x0700
    180a:	5f02                	.insn	2, 0x5f02
    180c:	785f 2700 5203      	.insn	6, 0x52032700785f
    1812:	0002                	.insn	2, 0x0002
    1814:	0000                	.insn	2, 0x
    1816:	0000                	.insn	2, 0x
    1818:	1700                	.insn	2, 0x1700
    181a:	2d94                	.insn	2, 0x2d94
    181c:	8000                	.insn	2, 0x8000
    181e:	0018                	.insn	2, 0x0018
    1820:	0000                	.insn	2, 0x
    1822:	00021e03          	lh	t3,0(tp) # 0 <_tbss_end>
    1826:	2800                	.insn	2, 0x2800
    1828:	00be                	.insn	2, 0x00be
    182a:	0000                	.insn	2, 0x
    182c:	0000                	.insn	2, 0x
    182e:	0401                	.insn	2, 0x0401
    1830:	7b05                	.insn	2, 0x7b05
    1832:	0001                	.insn	2, 0x0001
    1834:	0100                	.insn	2, 0x0100
    1836:	0704                	.insn	2, 0x0704
    1838:	0164                	.insn	2, 0x0164
    183a:	0000                	.insn	2, 0x
    183c:	4b00                	.insn	2, 0x4b00
    183e:	0002                	.insn	2, 0x0002
    1840:	0500                	.insn	2, 0x0500
    1842:	0100                	.insn	2, 0x0100
    1844:	cf04                	.insn	2, 0xcf04
    1846:	000a                	.insn	2, 0x000a
    1848:	0a00                	.insn	2, 0x0a00
    184a:	0008                	.insn	2, 0x0008
    184c:	0000                	.insn	2, 0x
    184e:	dd1d                	.insn	2, 0xdd1d
    1850:	0001                	.insn	2, 0x0001
    1852:	2600                	.insn	2, 0x2600
    1854:	0000                	.insn	2, 0x
    1856:	d800                	.insn	2, 0xd800
    1858:	002d                	.insn	2, 0x002d
    185a:	6880                	.insn	2, 0x6880
    185c:	0000                	.insn	2, 0x
    185e:	dd00                	.insn	2, 0xdd00
    1860:	003d                	.insn	2, 0x003d
    1862:	0100                	.insn	2, 0x0100
    1864:	0708                	.insn	2, 0x0708
    1866:	015f 0000 0401      	.insn	6, 0x04010000015f
    186c:	00016907          	.insn	4, 0x00016907
    1870:	0b00                	.insn	2, 0x0b00
    1872:	0504                	.insn	2, 0x0504
    1874:	6e69                	.insn	2, 0x6e69
    1876:	0074                	.insn	2, 0x0074
    1878:	0101                	.insn	2, 0x0101
    187a:	e706                	.insn	2, 0xe706
    187c:	0000                	.insn	2, 0x
    187e:	0100                	.insn	2, 0x0100
    1880:	0508                	.insn	2, 0x0508
    1882:	0176                	.insn	2, 0x0176
    1884:	0000                	.insn	2, 0x
    1886:	0101                	.insn	2, 0x0101
    1888:	e508                	.insn	2, 0xe508
    188a:	0000                	.insn	2, 0x
    188c:	0c00                	.insn	2, 0x0c00
    188e:	0500                	.insn	2, 0x0500
    1890:	0000                	.insn	2, 0x
    1892:	4702                	.insn	2, 0x4702
    1894:	1601                	.insn	2, 0x1601
    1896:	002d                	.insn	2, 0x002d
    1898:	0000                	.insn	2, 0x
    189a:	0201                	.insn	2, 0x0201
    189c:	00010607          	.insn	4, 0x00010607
    18a0:	0d00                	.insn	2, 0x0d00
    18a2:	00de                	.insn	2, 0x00de
    18a4:	0000                	.insn	2, 0x
    18a6:	700f4403          	lbu	s0,1792(t5)
    18aa:	0000                	.insn	2, 0x
    18ac:	0100                	.insn	2, 0x0100
    18ae:	0408                	.insn	2, 0x0408
    18b0:	0134                	.insn	2, 0x0134
    18b2:	0000                	.insn	2, 0x
    18b4:	080e                	.insn	2, 0x080e
    18b6:	b3034b03          	lbu	s6,-1232(t1)
    18ba:	0000                	.insn	2, 0x
    18bc:	0600                	.insn	2, 0x0600
    18be:	00d2                	.insn	2, 0x00d2
    18c0:	0000                	.insn	2, 0x
    18c2:	00002d53          	fadd.s	fs10,ft0,ft0,rdn
    18c6:	2000                	.insn	2, 0x2000
    18c8:	0600                	.insn	2, 0x0600
    18ca:	00d8                	.insn	2, 0x00d8
    18cc:	0000                	.insn	2, 0x
    18ce:	2d54                	.insn	2, 0x2d54
    18d0:	0000                	.insn	2, 0x
    18d2:	1400                	.insn	2, 0x1400
    18d4:	0f20                	.insn	2, 0x0f20
    18d6:	7865                	.insn	2, 0x7865
    18d8:	0070                	.insn	2, 0x0070
    18da:	2d0e5503          	lhu	a0,720(t3)
    18de:	0000                	.insn	2, 0x
    18e0:	0b00                	.insn	2, 0x0b00
    18e2:	0634                	.insn	2, 0x0634
    18e4:	0101                	.insn	2, 0x0101
    18e6:	0000                	.insn	2, 0x
    18e8:	2d56                	.insn	2, 0x2d56
    18ea:	0000                	.insn	2, 0x
    18ec:	0100                	.insn	2, 0x0100
    18ee:	8410003f 08000001 	.insn	8, 0x080000018410003f
    18f6:	d9074803          	lbu	a6,-624(a4)
    18fa:	0000                	.insn	2, 0x
    18fc:	1100                	.insn	2, 0x1100
    18fe:	6c66                	.insn	2, 0x6c66
    1900:	0074                	.insn	2, 0x0074
    1902:	640a4a03          	lbu	s4,1600(s4)
    1906:	0000                	.insn	2, 0x
    1908:	1200                	.insn	2, 0x1200
    190a:	0190                	.insn	2, 0x0190
    190c:	0000                	.insn	2, 0x
    190e:	77055803          	lhu	a6,1904(a0)
    1912:	0000                	.insn	2, 0x
    1914:	0000                	.insn	2, 0x
    1916:	00054e13          	xori	t3,a0,0
    191a:	0100                	.insn	2, 0x0100
    191c:	0122                	.insn	2, 0x0122
    191e:	0064                	.insn	2, 0x0064
    1920:	0000                	.insn	2, 0x
    1922:	2dd8                	.insn	2, 0x2dd8
    1924:	8000                	.insn	2, 0x8000
    1926:	0068                	.insn	2, 0x0068
    1928:	0000                	.insn	2, 0x
    192a:	9c01                	.insn	2, 0x9c01
    192c:	0240                	.insn	2, 0x0240
    192e:	0000                	.insn	2, 0x
    1930:	6914                	.insn	2, 0x6914
    1932:	0100                	.insn	2, 0x0100
    1934:	1822                	.insn	2, 0x1822
    1936:	0050                	.insn	2, 0x0050
    1938:	0000                	.insn	2, 0x
    193a:	00001faf          	.insn	4, 0x1faf
    193e:	4102                	.insn	2, 0x4102
    1940:	635f 2400 4003      	.insn	6, 0x40032400635f
    1946:	0002                	.insn	2, 0x0002
    1948:	0800                	.insn	2, 0x0800
    194a:	5f41                	.insn	2, 0x5f41
    194c:	02400073          	.insn	4, 0x02400073
    1950:	0000                	.insn	2, 0x
    1952:	00001fdb          	.insn	4, 0x1fdb
    1956:	4108                	.insn	2, 0x4108
    1958:	655f 4000 0002      	.insn	6, 0x00024000655f
    195e:	e200                	.insn	2, 0xe200
    1960:	001f 0500 013b      	.insn	6, 0x013b0500001f
    1966:	0000                	.insn	2, 0x
    1968:	4724                	.insn	2, 0x4724
    196a:	0002                	.insn	2, 0x0002
    196c:	ed00                	.insn	2, 0xed00
    196e:	001f 0500 0119      	.insn	6, 0x01190500001f
    1974:	0000                	.insn	2, 0x
    1976:	4724                	.insn	2, 0x4724
    1978:	0002                	.insn	2, 0x0002
    197a:	f900                	.insn	2, 0xf900
    197c:	001f 0200 0061      	.insn	6, 0x00610200001f
    1982:	0a25                	.insn	2, 0x0a25
    1984:	0064                	.insn	2, 0x0064
    1986:	0000                	.insn	2, 0x
    1988:	5f09                	.insn	2, 0x5f09
    198a:	2b000003          	lb	zero,688(zero) # 2b0 <_tbss_end+0x2b0>
    198e:	0002                	.insn	2, 0x0002
    1990:	1500                	.insn	2, 0x1500
    1992:	0515                	.insn	2, 0x0515
    1994:	0000                	.insn	2, 0x
    1996:	2701                	.insn	2, 0x2701
    1998:	03661603          	lh	a2,54(a2)
    199c:	0000                	.insn	2, 0x
    199e:	2205                	.insn	2, 0x2205
    19a0:	0005                	.insn	2, 0x0005
    19a2:	2700                	.insn	2, 0x2700
    19a4:	0050                	.insn	2, 0x0050
    19a6:	0000                	.insn	2, 0x
    19a8:	2010                	.insn	2, 0x2010
    19aa:	0000                	.insn	2, 0x
    19ac:	6d09                	.insn	2, 0x6d09
    19ae:	87000003          	lb	zero,-1936(zero) # fffff870 <__global_pointer$+0x7fffbfa8>
    19b2:	0001                	.insn	2, 0x0001
    19b4:	0500                	.insn	2, 0x0500
    19b6:	0532                	.insn	2, 0x0532
    19b8:	0000                	.insn	2, 0x
    19ba:	00003427          	.insn	4, 0x3427
    19be:	2900                	.insn	2, 0x2900
    19c0:	0020                	.insn	2, 0x0020
    19c2:	0000                	.insn	2, 0x
    19c4:	045a0307          	.insn	4, 0x045a0307
    19c8:	0000                	.insn	2, 0x
    19ca:	00003427          	.insn	4, 0x3427
    19ce:	0400                	.insn	2, 0x0400
    19d0:	01f9                	.insn	2, 0x01f9
    19d2:	0000                	.insn	2, 0x
    19d4:	0004b603          	.insn	4, 0x0004b603
    19d8:	2700                	.insn	2, 0x2700
    19da:	0240                	.insn	2, 0x0240
    19dc:	0000                	.insn	2, 0x
    19de:	00040203          	lb	tp,0(s0)
    19e2:	2700                	.insn	2, 0x2700
    19e4:	0240                	.insn	2, 0x0240
    19e6:	0000                	.insn	2, 0x
    19e8:	00042103          	lw	sp,0(s0)
    19ec:	2700                	.insn	2, 0x2700
    19ee:	0240                	.insn	2, 0x0240
    19f0:	0000                	.insn	2, 0x
    19f2:	00047303          	.insn	4, 0x00047303
    19f6:	2700                	.insn	2, 0x2700
    19f8:	00000247          	fmsub.s	ft4,ft0,ft0,ft0,rne
    19fc:	00048903          	lb	s2,0(s1)
    1a00:	2700                	.insn	2, 0x2700
    1a02:	00000247          	fmsub.s	ft4,ft0,ft0,ft0,rne
    1a06:	da04                	.insn	2, 0xda04
    1a08:	0001                	.insn	2, 0x0001
    1a0a:	0200                	.insn	2, 0x0200
    1a0c:	5f5f 0078 0327      	.insn	6, 0x032700785f5f
    1a12:	00000247          	fmsub.s	ft4,ft0,ft0,ft0,rne
    1a16:	0400                	.insn	2, 0x0400
    1a18:	000001eb          	.insn	4, 0x01eb
    1a1c:	5f02                	.insn	2, 0x5f02
    1a1e:	785f 2700 4703      	.insn	6, 0x47032700785f
    1a24:	0002                	.insn	2, 0x0002
    1a26:	0000                	.insn	2, 0x
    1a28:	5f5f0207          	.insn	4, 0x5f5f0207
    1a2c:	0078                	.insn	2, 0x0078
    1a2e:	02470327          	.insn	4, 0x02470327
    1a32:	0000                	.insn	2, 0x
    1a34:	0000                	.insn	2, 0x
    1a36:	0a04                	.insn	2, 0x0a04
    1a38:	0002                	.insn	2, 0x0002
    1a3a:	0200                	.insn	2, 0x0200
    1a3c:	5f5f 0078 0327      	.insn	6, 0x032700785f5f
    1a42:	00000247          	fmsub.s	ft4,ft0,ft0,ft0,rne
    1a46:	0400                	.insn	2, 0x0400
    1a48:	0000021b          	.insn	4, 0x021b
    1a4c:	5f02                	.insn	2, 0x5f02
    1a4e:	785f 2700 4703      	.insn	6, 0x47032700785f
    1a54:	0002                	.insn	2, 0x0002
    1a56:	0000                	.insn	2, 0x
    1a58:	5f5f0207          	.insn	4, 0x5f5f0207
    1a5c:	0078                	.insn	2, 0x0078
    1a5e:	02470327          	.insn	4, 0x02470327
    1a62:	0000                	.insn	2, 0x
    1a64:	0000                	.insn	2, 0x
    1a66:	0000                	.insn	2, 0x
    1a68:	002e0417          	auipc	s0,0x2e0
    1a6c:	1480                	.insn	2, 0x1480
    1a6e:	0000                	.insn	2, 0x
    1a70:	0300                	.insn	2, 0x0300
    1a72:	021e                	.insn	2, 0x021e
    1a74:	0000                	.insn	2, 0x
    1a76:	b328                	.insn	2, 0xb328
    1a78:	0000                	.insn	2, 0x
    1a7a:	0000                	.insn	2, 0x
    1a7c:	0100                	.insn	2, 0x0100
    1a7e:	0504                	.insn	2, 0x0504
    1a80:	0000017b          	.insn	4, 0x017b
    1a84:	0401                	.insn	2, 0x0401
    1a86:	00016407          	.insn	4, 0x00016407
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	2401                	.insn	2, 0x2401
   2:	0b00                	.insn	2, 0x0b00
   4:	030b3e0b          	.insn	4, 0x030b3e0b
   8:	000e                	.insn	2, 0x000e
   a:	0200                	.insn	2, 0x0200
   c:	0034                	.insn	2, 0x0034
   e:	213a0e03          	lb	t3,531(s4)
  12:	3b01                	.insn	2, 0x3b01
  14:	0321390b          	.insn	4, 0x0321390b
  18:	1349                	.insn	2, 0x1349
  1a:	1702                	.insn	2, 0x1702
  1c:	0000                	.insn	2, 0x
  1e:	03003403          	.insn	4, 0x03003403
  22:	3a0e                	.insn	2, 0x3a0e
  24:	0121                	.insn	2, 0x0121
  26:	21390b3b          	.insn	4, 0x21390b3b
  2a:	00134903          	lbu	s2,1(t1)
  2e:	0400                	.insn	2, 0x0400
  30:	000d                	.insn	2, 0x000d
  32:	213a0e03          	lb	t3,531(s4)
  36:	390b3b03          	.insn	4, 0x390b3b03
  3a:	0e21                	.insn	2, 0x0e21
  3c:	1349                	.insn	2, 0x1349
  3e:	0b0d                	.insn	2, 0x0b0d
  40:	00000b6b          	.insn	4, 0x0b6b
  44:	3405                	.insn	2, 0x3405
  46:	0300                	.insn	2, 0x0300
  48:	3a08                	.insn	2, 0x3a08
  4a:	0121                	.insn	2, 0x0121
  4c:	21390b3b          	.insn	4, 0x21390b3b
  50:	02134903          	lbu	s2,33(t1)
  54:	0018                	.insn	2, 0x0018
  56:	0600                	.insn	2, 0x0600
  58:	1755010b          	.insn	4, 0x1755010b
  5c:	1301                	.insn	2, 0x1301
  5e:	0000                	.insn	2, 0x
  60:	03001607          	.insn	4, 0x03001607
  64:	3a0e                	.insn	2, 0x3a0e
  66:	390b3b0b          	.insn	4, 0x390b3b0b
  6a:	0013490b          	.insn	4, 0x0013490b
  6e:	0800                	.insn	2, 0x0800
  70:	0005                	.insn	2, 0x0005
  72:	213a0803          	lb	a6,531(s4)
  76:	3b01                	.insn	2, 0x3b01
  78:	2121                	.insn	2, 0x2121
  7a:	0b39                	.insn	2, 0x0b39
  7c:	1349                	.insn	2, 0x1349
  7e:	1702                	.insn	2, 0x1702
  80:	0000                	.insn	2, 0x
  82:	3409                	.insn	2, 0x3409
  84:	0300                	.insn	2, 0x0300
  86:	3a08                	.insn	2, 0x3a08
  88:	0121                	.insn	2, 0x0121
  8a:	21390b3b          	.insn	4, 0x21390b3b
  8e:	00134903          	lbu	s2,1(t1)
  92:	0a00                	.insn	2, 0x0a00
  94:	0034                	.insn	2, 0x0034
  96:	213a0803          	lb	a6,531(s4)
  9a:	3b01                	.insn	2, 0x3b01
  9c:	490b390b          	.insn	4, 0x490b390b
  a0:	00170213          	addi	tp,a4,1
  a4:	0b00                	.insn	2, 0x0b00
  a6:	1301010b          	.insn	4, 0x1301010b
  aa:	0000                	.insn	2, 0x
  ac:	110c                	.insn	2, 0x110c
  ae:	2501                	.insn	2, 0x2501
  b0:	130e                	.insn	2, 0x130e
  b2:	1b1f030b          	.insn	4, 0x1b1f030b
  b6:	111f 1201 1006      	.insn	6, 0x10061201111f
  bc:	0d000017          	auipc	zero,0xd000
  c0:	0024                	.insn	2, 0x0024
  c2:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
  c6:	00000803          	lb	a6,0(zero) # 0 <_tbss_end>
  ca:	130e                	.insn	2, 0x130e
  cc:	0b01                	.insn	2, 0x0b01
  ce:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
  d2:	010b390b          	.insn	4, 0x010b390b
  d6:	0f000013          	li	zero,240
  da:	000d                	.insn	2, 0x000d
  dc:	0b3a0803          	lb	a6,179(s4)
  e0:	0b390b3b          	.insn	4, 0x0b390b3b
  e4:	1349                	.insn	2, 0x1349
  e6:	0b0d                	.insn	2, 0x0b0d
  e8:	00000b6b          	.insn	4, 0x0b6b
  ec:	1710                	.insn	2, 0x1710
  ee:	0301                	.insn	2, 0x0301
  f0:	0b0e                	.insn	2, 0x0b0e
  f2:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
  f6:	010b390b          	.insn	4, 0x010b390b
  fa:	11000013          	li	zero,272
  fe:	000d                	.insn	2, 0x000d
 100:	0b3a0803          	lb	a6,179(s4)
 104:	0b390b3b          	.insn	4, 0x0b390b3b
 108:	1349                	.insn	2, 0x1349
 10a:	0000                	.insn	2, 0x
 10c:	0d12                	.insn	2, 0x0d12
 10e:	0300                	.insn	2, 0x0300
 110:	3a0e                	.insn	2, 0x3a0e
 112:	390b3b0b          	.insn	4, 0x390b3b0b
 116:	0013490b          	.insn	4, 0x0013490b
 11a:	1300                	.insn	2, 0x1300
 11c:	012e                	.insn	2, 0x012e
 11e:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 126:	0b39                	.insn	2, 0x0b39
 128:	13491927          	.insn	4, 0x13491927
 12c:	0111                	.insn	2, 0x0111
 12e:	0612                	.insn	2, 0x0612
 130:	1840                	.insn	2, 0x1840
 132:	197a                	.insn	2, 0x197a
 134:	1301                	.insn	2, 0x1301
 136:	0000                	.insn	2, 0x
 138:	3414                	.insn	2, 0x3414
 13a:	0300                	.insn	2, 0x0300
 13c:	3a0e                	.insn	2, 0x3a0e
 13e:	390b3b0b          	.insn	4, 0x390b3b0b
 142:	0213490b          	.insn	4, 0x0213490b
 146:	0018                	.insn	2, 0x0018
 148:	1500                	.insn	2, 0x1500
 14a:	1755010b          	.insn	4, 0x1755010b
 14e:	0000                	.insn	2, 0x
 150:	0100                	.insn	2, 0x0100
 152:	0024                	.insn	2, 0x0024
 154:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 158:	00000e03          	lb	t3,0(zero) # 0 <_tbss_end>
 15c:	3402                	.insn	2, 0x3402
 15e:	0300                	.insn	2, 0x0300
 160:	3a0e                	.insn	2, 0x3a0e
 162:	0121                	.insn	2, 0x0121
 164:	21390b3b          	.insn	4, 0x21390b3b
 168:	02134903          	lbu	s2,33(t1)
 16c:	03000017          	auipc	zero,0x3000
 170:	0034                	.insn	2, 0x0034
 172:	213a0e03          	lb	t3,531(s4)
 176:	3b01                	.insn	2, 0x3b01
 178:	0321390b          	.insn	4, 0x0321390b
 17c:	1349                	.insn	2, 0x1349
 17e:	0000                	.insn	2, 0x
 180:	3404                	.insn	2, 0x3404
 182:	0300                	.insn	2, 0x0300
 184:	3a08                	.insn	2, 0x3a08
 186:	0121                	.insn	2, 0x0121
 188:	0b390b3b          	.insn	4, 0x0b390b3b
 18c:	1349                	.insn	2, 0x1349
 18e:	1802                	.insn	2, 0x1802
 190:	0000                	.insn	2, 0x
 192:	0d05                	.insn	2, 0x0d05
 194:	0300                	.insn	2, 0x0300
 196:	3a0e                	.insn	2, 0x3a0e
 198:	0321                	.insn	2, 0x0321
 19a:	21390b3b          	.insn	4, 0x21390b3b
 19e:	490e                	.insn	2, 0x490e
 1a0:	6b0b0d13          	addi	s10,s6,1712 # 444bc <_tbss_end+0x444bc>
 1a4:	0600000b          	.insn	4, 0x0600000b
 1a8:	0016                	.insn	2, 0x0016
 1aa:	0b3a0e03          	lb	t3,179(s4)
 1ae:	0b390b3b          	.insn	4, 0x0b390b3b
 1b2:	1349                	.insn	2, 0x1349
 1b4:	0000                	.insn	2, 0x
 1b6:	03000507          	.insn	4, 0x03000507
 1ba:	3a08                	.insn	2, 0x3a08
 1bc:	0121                	.insn	2, 0x0121
 1be:	3921213b          	.insn	4, 0x3921213b
 1c2:	0213490b          	.insn	4, 0x0213490b
 1c6:	08000017          	auipc	zero,0x8000
 1ca:	0034                	.insn	2, 0x0034
 1cc:	213a0803          	lb	a6,531(s4)
 1d0:	3b01                	.insn	2, 0x3b01
 1d2:	0321390b          	.insn	4, 0x0321390b
 1d6:	1349                	.insn	2, 0x1349
 1d8:	0000                	.insn	2, 0x
 1da:	3409                	.insn	2, 0x3409
 1dc:	0300                	.insn	2, 0x0300
 1de:	3a0e                	.insn	2, 0x3a0e
 1e0:	0121                	.insn	2, 0x0121
 1e2:	21390b3b          	.insn	4, 0x21390b3b
 1e6:	02134903          	lbu	s2,33(t1)
 1ea:	0018                	.insn	2, 0x0018
 1ec:	0a00                	.insn	2, 0x0a00
 1ee:	1755010b          	.insn	4, 0x1755010b
 1f2:	1301                	.insn	2, 0x1301
 1f4:	0000                	.insn	2, 0x
 1f6:	01010b0b          	.insn	4, 0x01010b0b
 1fa:	0c000013          	li	zero,192
 1fe:	0111                	.insn	2, 0x0111
 200:	0e25                	.insn	2, 0x0e25
 202:	1f030b13          	addi	s6,t1,496
 206:	01111f1b          	.insn	4, 0x01111f1b
 20a:	0612                	.insn	2, 0x0612
 20c:	1710                	.insn	2, 0x1710
 20e:	0000                	.insn	2, 0x
 210:	240d                	.insn	2, 0x240d
 212:	0b00                	.insn	2, 0x0b00
 214:	030b3e0b          	.insn	4, 0x030b3e0b
 218:	0008                	.insn	2, 0x0008
 21a:	0e00                	.insn	2, 0x0e00
 21c:	0b0b0113          	addi	sp,s6,176
 220:	0b3a                	.insn	2, 0x0b3a
 222:	0b390b3b          	.insn	4, 0x0b390b3b
 226:	1301                	.insn	2, 0x1301
 228:	0000                	.insn	2, 0x
 22a:	03000d0f          	.insn	4, 0x03000d0f
 22e:	3a08                	.insn	2, 0x3a08
 230:	390b3b0b          	.insn	4, 0x390b3b0b
 234:	0d13490b          	.insn	4, 0x0d13490b
 238:	000b6b0b          	.insn	4, 0x000b6b0b
 23c:	1000                	.insn	2, 0x1000
 23e:	0e030117          	auipc	sp,0xe030
 242:	0b3a0b0b          	.insn	4, 0x0b3a0b0b
 246:	0b390b3b          	.insn	4, 0x0b390b3b
 24a:	1301                	.insn	2, 0x1301
 24c:	0000                	.insn	2, 0x
 24e:	0d11                	.insn	2, 0x0d11
 250:	0300                	.insn	2, 0x0300
 252:	3a08                	.insn	2, 0x3a08
 254:	390b3b0b          	.insn	4, 0x390b3b0b
 258:	0013490b          	.insn	4, 0x0013490b
 25c:	1200                	.insn	2, 0x1200
 25e:	000d                	.insn	2, 0x000d
 260:	0b3a0e03          	lb	t3,179(s4)
 264:	0b390b3b          	.insn	4, 0x0b390b3b
 268:	1349                	.insn	2, 0x1349
 26a:	0000                	.insn	2, 0x
 26c:	3f012e13          	slti	t3,sp,1008
 270:	0319                	.insn	2, 0x0319
 272:	3a0e                	.insn	2, 0x3a0e
 274:	390b3b0b          	.insn	4, 0x390b3b0b
 278:	4919270b          	.insn	4, 0x4919270b
 27c:	12011113          	.insn	4, 0x12011113
 280:	4006                	.insn	2, 0x4006
 282:	7a18                	.insn	2, 0x7a18
 284:	0119                	.insn	2, 0x0119
 286:	14000013          	li	zero,320
 28a:	0034                	.insn	2, 0x0034
 28c:	0b3a0803          	lb	a6,179(s4)
 290:	0b390b3b          	.insn	4, 0x0b390b3b
 294:	1349                	.insn	2, 0x1349
 296:	1702                	.insn	2, 0x1702
 298:	0000                	.insn	2, 0x
 29a:	0b15                	.insn	2, 0x0b15
 29c:	5501                	.insn	2, 0x5501
 29e:	00000017          	auipc	zero,0x0
 2a2:	2401                	.insn	2, 0x2401
 2a4:	0b00                	.insn	2, 0x0b00
 2a6:	030b3e0b          	.insn	4, 0x030b3e0b
 2aa:	000e                	.insn	2, 0x000e
 2ac:	0200                	.insn	2, 0x0200
 2ae:	0034                	.insn	2, 0x0034
 2b0:	213a0e03          	lb	t3,531(s4)
 2b4:	3b01                	.insn	2, 0x3b01
 2b6:	0321390b          	.insn	4, 0x0321390b
 2ba:	1349                	.insn	2, 0x1349
 2bc:	1702                	.insn	2, 0x1702
 2be:	0000                	.insn	2, 0x
 2c0:	03003403          	.insn	4, 0x03003403
 2c4:	3a0e                	.insn	2, 0x3a0e
 2c6:	0121                	.insn	2, 0x0121
 2c8:	21390b3b          	.insn	4, 0x21390b3b
 2cc:	00134903          	lbu	s2,1(t1)
 2d0:	0400                	.insn	2, 0x0400
 2d2:	0034                	.insn	2, 0x0034
 2d4:	213a0803          	lb	a6,531(s4)
 2d8:	3b01                	.insn	2, 0x3b01
 2da:	490b390b          	.insn	4, 0x490b390b
 2de:	00180213          	addi	tp,a6,1
 2e2:	0500                	.insn	2, 0x0500
 2e4:	000d                	.insn	2, 0x000d
 2e6:	213a0e03          	lb	t3,531(s4)
 2ea:	390b3b03          	.insn	4, 0x390b3b03
 2ee:	0e21                	.insn	2, 0x0e21
 2f0:	1349                	.insn	2, 0x1349
 2f2:	0b0d                	.insn	2, 0x0b0d
 2f4:	00000b6b          	.insn	4, 0x0b6b
 2f8:	1606                	.insn	2, 0x1606
 2fa:	0300                	.insn	2, 0x0300
 2fc:	3a0e                	.insn	2, 0x3a0e
 2fe:	390b3b0b          	.insn	4, 0x390b3b0b
 302:	0013490b          	.insn	4, 0x0013490b
 306:	0700                	.insn	2, 0x0700
 308:	0005                	.insn	2, 0x0005
 30a:	213a0803          	lb	a6,531(s4)
 30e:	3b01                	.insn	2, 0x3b01
 310:	2121                	.insn	2, 0x2121
 312:	0b39                	.insn	2, 0x0b39
 314:	1349                	.insn	2, 0x1349
 316:	1702                	.insn	2, 0x1702
 318:	0000                	.insn	2, 0x
 31a:	3408                	.insn	2, 0x3408
 31c:	0300                	.insn	2, 0x0300
 31e:	3a08                	.insn	2, 0x3a08
 320:	0121                	.insn	2, 0x0121
 322:	21390b3b          	.insn	4, 0x21390b3b
 326:	00134903          	lbu	s2,1(t1)
 32a:	0900                	.insn	2, 0x0900
 32c:	0034                	.insn	2, 0x0034
 32e:	213a0e03          	lb	t3,531(s4)
 332:	3b01                	.insn	2, 0x3b01
 334:	0321390b          	.insn	4, 0x0321390b
 338:	1349                	.insn	2, 0x1349
 33a:	1802                	.insn	2, 0x1802
 33c:	0000                	.insn	2, 0x
 33e:	0b0a                	.insn	2, 0x0b0a
 340:	5501                	.insn	2, 0x5501
 342:	00130117          	auipc	sp,0x130
 346:	0b00                	.insn	2, 0x0b00
 348:	1301010b          	.insn	4, 0x1301010b
 34c:	0000                	.insn	2, 0x
 34e:	110c                	.insn	2, 0x110c
 350:	2501                	.insn	2, 0x2501
 352:	130e                	.insn	2, 0x130e
 354:	1b1f030b          	.insn	4, 0x1b1f030b
 358:	111f 1201 1006      	.insn	6, 0x10061201111f
 35e:	0d000017          	auipc	zero,0xd000
 362:	0024                	.insn	2, 0x0024
 364:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 368:	00000803          	lb	a6,0(zero) # 0 <_tbss_end>
 36c:	130e                	.insn	2, 0x130e
 36e:	0b01                	.insn	2, 0x0b01
 370:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 374:	010b390b          	.insn	4, 0x010b390b
 378:	0f000013          	li	zero,240
 37c:	000d                	.insn	2, 0x000d
 37e:	0b3a0803          	lb	a6,179(s4)
 382:	0b390b3b          	.insn	4, 0x0b390b3b
 386:	1349                	.insn	2, 0x1349
 388:	0b0d                	.insn	2, 0x0b0d
 38a:	00000b6b          	.insn	4, 0x0b6b
 38e:	1710                	.insn	2, 0x1710
 390:	0301                	.insn	2, 0x0301
 392:	0b0e                	.insn	2, 0x0b0e
 394:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 398:	010b390b          	.insn	4, 0x010b390b
 39c:	11000013          	li	zero,272
 3a0:	000d                	.insn	2, 0x000d
 3a2:	0b3a0803          	lb	a6,179(s4)
 3a6:	0b390b3b          	.insn	4, 0x0b390b3b
 3aa:	1349                	.insn	2, 0x1349
 3ac:	0000                	.insn	2, 0x
 3ae:	0d12                	.insn	2, 0x0d12
 3b0:	0300                	.insn	2, 0x0300
 3b2:	3a0e                	.insn	2, 0x3a0e
 3b4:	390b3b0b          	.insn	4, 0x390b3b0b
 3b8:	0013490b          	.insn	4, 0x0013490b
 3bc:	1300                	.insn	2, 0x1300
 3be:	012e                	.insn	2, 0x012e
 3c0:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 3c8:	0b39                	.insn	2, 0x0b39
 3ca:	13491927          	.insn	4, 0x13491927
 3ce:	0111                	.insn	2, 0x0111
 3d0:	0612                	.insn	2, 0x0612
 3d2:	1840                	.insn	2, 0x1840
 3d4:	197a                	.insn	2, 0x197a
 3d6:	1301                	.insn	2, 0x1301
 3d8:	0000                	.insn	2, 0x
 3da:	3414                	.insn	2, 0x3414
 3dc:	0300                	.insn	2, 0x0300
 3de:	3a08                	.insn	2, 0x3a08
 3e0:	390b3b0b          	.insn	4, 0x390b3b0b
 3e4:	0213490b          	.insn	4, 0x0213490b
 3e8:	15000017          	auipc	zero,0x15000
 3ec:	1755010b          	.insn	4, 0x1755010b
 3f0:	0000                	.insn	2, 0x
 3f2:	0100                	.insn	2, 0x0100
 3f4:	0034                	.insn	2, 0x0034
 3f6:	213a0e03          	lb	t3,531(s4)
 3fa:	3b01                	.insn	2, 0x3b01
 3fc:	0321390b          	.insn	4, 0x0321390b
 400:	1349                	.insn	2, 0x1349
 402:	1702                	.insn	2, 0x1702
 404:	0000                	.insn	2, 0x
 406:	0b02                	.insn	2, 0x0b02
 408:	5501                	.insn	2, 0x5501
 40a:	00130117          	auipc	sp,0x130
 40e:	0300                	.insn	2, 0x0300
 410:	0034                	.insn	2, 0x0034
 412:	213a0e03          	lb	t3,531(s4)
 416:	3b01                	.insn	2, 0x3b01
 418:	0321390b          	.insn	4, 0x0321390b
 41c:	1349                	.insn	2, 0x1349
 41e:	0000                	.insn	2, 0x
 420:	3404                	.insn	2, 0x3404
 422:	0300                	.insn	2, 0x0300
 424:	3a08                	.insn	2, 0x3a08
 426:	0121                	.insn	2, 0x0121
 428:	21390b3b          	.insn	4, 0x21390b3b
 42c:	02134903          	lbu	s2,33(t1)
 430:	05000017          	auipc	zero,0x5000
 434:	0034                	.insn	2, 0x0034
 436:	213a0803          	lb	a6,531(s4)
 43a:	3b01                	.insn	2, 0x3b01
 43c:	490b390b          	.insn	4, 0x490b390b
 440:	06000013          	li	zero,96
 444:	0024                	.insn	2, 0x0024
 446:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 44a:	00000e03          	lb	t3,0(zero) # 0 <_tbss_end>
 44e:	55010b07          	.insn	4, 0x55010b07
 452:	08000017          	auipc	zero,0x8000
 456:	0111010b          	.insn	4, 0x0111010b
 45a:	0612                	.insn	2, 0x0612
 45c:	1301                	.insn	2, 0x1301
 45e:	0000                	.insn	2, 0x
 460:	0b09                	.insn	2, 0x0b09
 462:	0101                	.insn	2, 0x0101
 464:	0a000013          	li	zero,160
 468:	000d                	.insn	2, 0x000d
 46a:	213a0e03          	lb	t3,531(s4)
 46e:	390b3b03          	.insn	4, 0x390b3b03
 472:	0e21                	.insn	2, 0x0e21
 474:	1349                	.insn	2, 0x1349
 476:	0b0d                	.insn	2, 0x0b0d
 478:	00000b6b          	.insn	4, 0x0b6b
 47c:	0300050b          	.insn	4, 0x0300050b
 480:	3a08                	.insn	2, 0x3a08
 482:	0121                	.insn	2, 0x0121
 484:	3921213b          	.insn	4, 0x3921213b
 488:	0213490b          	.insn	4, 0x0213490b
 48c:	0c000017          	auipc	zero,0xc000
 490:	0034                	.insn	2, 0x0034
 492:	213a0803          	lb	a6,531(s4)
 496:	3b01                	.insn	2, 0x3b01
 498:	2d21                	.insn	2, 0x2d21
 49a:	2139                	.insn	2, 0x2139
 49c:	02134903          	lbu	s2,33(t1)
 4a0:	0018                	.insn	2, 0x0018
 4a2:	0d00                	.insn	2, 0x0d00
 4a4:	0111                	.insn	2, 0x0111
 4a6:	0e25                	.insn	2, 0x0e25
 4a8:	1f030b13          	addi	s6,t1,496
 4ac:	01111f1b          	.insn	4, 0x01111f1b
 4b0:	0612                	.insn	2, 0x0612
 4b2:	1710                	.insn	2, 0x1710
 4b4:	0000                	.insn	2, 0x
 4b6:	240e                	.insn	2, 0x240e
 4b8:	0b00                	.insn	2, 0x0b00
 4ba:	030b3e0b          	.insn	4, 0x030b3e0b
 4be:	0008                	.insn	2, 0x0008
 4c0:	0f00                	.insn	2, 0x0f00
 4c2:	0016                	.insn	2, 0x0016
 4c4:	0b3a0e03          	lb	t3,179(s4)
 4c8:	0b39053b          	.insn	4, 0x0b39053b
 4cc:	1349                	.insn	2, 0x1349
 4ce:	0000                	.insn	2, 0x
 4d0:	1610                	.insn	2, 0x1610
 4d2:	0300                	.insn	2, 0x0300
 4d4:	3a0e                	.insn	2, 0x3a0e
 4d6:	390b3b0b          	.insn	4, 0x390b3b0b
 4da:	0013490b          	.insn	4, 0x0013490b
 4de:	1100                	.insn	2, 0x1100
 4e0:	0b0b0113          	addi	sp,s6,176
 4e4:	0b3a                	.insn	2, 0x0b3a
 4e6:	0b390b3b          	.insn	4, 0x0b390b3b
 4ea:	1301                	.insn	2, 0x1301
 4ec:	0000                	.insn	2, 0x
 4ee:	0d12                	.insn	2, 0x0d12
 4f0:	0300                	.insn	2, 0x0300
 4f2:	3a08                	.insn	2, 0x3a08
 4f4:	390b3b0b          	.insn	4, 0x390b3b0b
 4f8:	0d13490b          	.insn	4, 0x0d13490b
 4fc:	000b6b0b          	.insn	4, 0x000b6b0b
 500:	1300                	.insn	2, 0x1300
 502:	0e030117          	auipc	sp,0xe030
 506:	0b3a0b0b          	.insn	4, 0x0b3a0b0b
 50a:	0b390b3b          	.insn	4, 0x0b390b3b
 50e:	1301                	.insn	2, 0x1301
 510:	0000                	.insn	2, 0x
 512:	0d14                	.insn	2, 0x0d14
 514:	0300                	.insn	2, 0x0300
 516:	3a08                	.insn	2, 0x3a08
 518:	390b3b0b          	.insn	4, 0x390b3b0b
 51c:	0013490b          	.insn	4, 0x0013490b
 520:	1500                	.insn	2, 0x1500
 522:	000d                	.insn	2, 0x000d
 524:	0b3a0e03          	lb	t3,179(s4)
 528:	0b390b3b          	.insn	4, 0x0b390b3b
 52c:	1349                	.insn	2, 0x1349
 52e:	0000                	.insn	2, 0x
 530:	2e16                	.insn	2, 0x2e16
 532:	3f01                	.insn	2, 0x3f01
 534:	0319                	.insn	2, 0x0319
 536:	3a0e                	.insn	2, 0x3a0e
 538:	390b3b0b          	.insn	4, 0x390b3b0b
 53c:	4919270b          	.insn	4, 0x4919270b
 540:	12011113          	.insn	4, 0x12011113
 544:	4006                	.insn	2, 0x4006
 546:	7a18                	.insn	2, 0x7a18
 548:	0119                	.insn	2, 0x0119
 54a:	17000013          	li	zero,368
 54e:	0034                	.insn	2, 0x0034
 550:	0b3a0e03          	lb	t3,179(s4)
 554:	0b390b3b          	.insn	4, 0x0b390b3b
 558:	1349                	.insn	2, 0x1349
 55a:	1802                	.insn	2, 0x1802
 55c:	0000                	.insn	2, 0x
 55e:	0b18                	.insn	2, 0x0b18
 560:	1101                	.insn	2, 0x1101
 562:	1201                	.insn	2, 0x1201
 564:	0006                	.insn	2, 0x0006
 566:	1900                	.insn	2, 0x1900
 568:	0101                	.insn	2, 0x0101
 56a:	1349                	.insn	2, 0x1349
 56c:	0000                	.insn	2, 0x
 56e:	211a                	.insn	2, 0x211a
 570:	4900                	.insn	2, 0x4900
 572:	000b2f13          	slti	t5,s6,0
 576:	0000                	.insn	2, 0x
 578:	3401                	.insn	2, 0x3401
 57a:	0300                	.insn	2, 0x0300
 57c:	3a08                	.insn	2, 0x3a08
 57e:	0121                	.insn	2, 0x0121
 580:	21390b3b          	.insn	4, 0x21390b3b
 584:	02134903          	lbu	s2,33(t1)
 588:	02000017          	auipc	zero,0x2000
 58c:	0034                	.insn	2, 0x0034
 58e:	213a0e03          	lb	t3,531(s4)
 592:	3b01                	.insn	2, 0x3b01
 594:	0321390b          	.insn	4, 0x0321390b
 598:	1349                	.insn	2, 0x1349
 59a:	1702                	.insn	2, 0x1702
 59c:	0000                	.insn	2, 0x
 59e:	11010b03          	lb	s6,272(sp) # e030612 <_tbss_end+0xe030612>
 5a2:	1201                	.insn	2, 0x1201
 5a4:	0106                	.insn	2, 0x0106
 5a6:	04000013          	li	zero,64
 5aa:	0024                	.insn	2, 0x0024
 5ac:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 5b0:	00000e03          	lb	t3,0(zero) # 0 <_tbss_end>
 5b4:	0b05                	.insn	2, 0x0b05
 5b6:	5501                	.insn	2, 0x5501
 5b8:	00130117          	auipc	sp,0x130
 5bc:	0600                	.insn	2, 0x0600
 5be:	0034                	.insn	2, 0x0034
 5c0:	213a0803          	lb	a6,531(s4)
 5c4:	3b01                	.insn	2, 0x3b01
 5c6:	490b390b          	.insn	4, 0x490b390b
 5ca:	07000013          	li	zero,112
 5ce:	000a                	.insn	2, 0x000a
 5d0:	213a0e03          	lb	t3,531(s4)
 5d4:	3b01                	.insn	2, 0x3b01
 5d6:	2c21                	.insn	2, 0x2c21
 5d8:	2139                	.insn	2, 0x2139
 5da:	00011103          	lh	sp,0(sp) # 1305b8 <_tbss_end+0x1305b8>
 5de:	0800                	.insn	2, 0x0800
 5e0:	0034                	.insn	2, 0x0034
 5e2:	213a0e03          	lb	t3,531(s4)
 5e6:	3b01                	.insn	2, 0x3b01
 5e8:	0321390b          	.insn	4, 0x0321390b
 5ec:	1349                	.insn	2, 0x1349
 5ee:	0000                	.insn	2, 0x
 5f0:	0d09                	.insn	2, 0x0d09
 5f2:	0300                	.insn	2, 0x0300
 5f4:	3a0e                	.insn	2, 0x3a0e
 5f6:	0221                	.insn	2, 0x0221
 5f8:	21390b3b          	.insn	4, 0x21390b3b
 5fc:	490e                	.insn	2, 0x490e
 5fe:	6b0b0d13          	addi	s10,s6,1712
 602:	0a00000b          	.insn	4, 0x0a00000b
 606:	1755010b          	.insn	4, 0x1755010b
 60a:	0000                	.insn	2, 0x
 60c:	0300050b          	.insn	4, 0x0300050b
 610:	3a08                	.insn	2, 0x3a08
 612:	0121                	.insn	2, 0x0121
 614:	3921213b          	.insn	4, 0x3921213b
 618:	0213490b          	.insn	4, 0x0213490b
 61c:	0c000017          	auipc	zero,0xc000
 620:	000a                	.insn	2, 0x000a
 622:	213a0e03          	lb	t3,531(s4)
 626:	3b01                	.insn	2, 0x3b01
 628:	2c21                	.insn	2, 0x2c21
 62a:	2139                	.insn	2, 0x2139
 62c:	0d000003          	lb	zero,208(zero) # d0 <_tbss_end+0xd0>
 630:	1301010b          	.insn	4, 0x1301010b
 634:	0000                	.insn	2, 0x
 636:	0b0e                	.insn	2, 0x0b0e
 638:	1101                	.insn	2, 0x1101
 63a:	1201                	.insn	2, 0x1201
 63c:	0006                	.insn	2, 0x0006
 63e:	0f00                	.insn	2, 0x0f00
 640:	0111                	.insn	2, 0x0111
 642:	0e25                	.insn	2, 0x0e25
 644:	1f030b13          	addi	s6,t1,496
 648:	01111f1b          	.insn	4, 0x01111f1b
 64c:	0612                	.insn	2, 0x0612
 64e:	1710                	.insn	2, 0x1710
 650:	0000                	.insn	2, 0x
 652:	2410                	.insn	2, 0x2410
 654:	0b00                	.insn	2, 0x0b00
 656:	030b3e0b          	.insn	4, 0x030b3e0b
 65a:	0008                	.insn	2, 0x0008
 65c:	1100                	.insn	2, 0x1100
 65e:	0016                	.insn	2, 0x0016
 660:	0b3a0e03          	lb	t3,179(s4)
 664:	0b390b3b          	.insn	4, 0x0b390b3b
 668:	1349                	.insn	2, 0x1349
 66a:	0000                	.insn	2, 0x
 66c:	1312                	.insn	2, 0x1312
 66e:	0b01                	.insn	2, 0x0b01
 670:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 674:	010b390b          	.insn	4, 0x010b390b
 678:	13000013          	li	zero,304
 67c:	000d                	.insn	2, 0x000d
 67e:	0b3a0803          	lb	a6,179(s4)
 682:	0b390b3b          	.insn	4, 0x0b390b3b
 686:	1349                	.insn	2, 0x1349
 688:	0b0d                	.insn	2, 0x0b0d
 68a:	00000b6b          	.insn	4, 0x0b6b
 68e:	1714                	.insn	2, 0x1714
 690:	0301                	.insn	2, 0x0301
 692:	0b0e                	.insn	2, 0x0b0e
 694:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 698:	010b390b          	.insn	4, 0x010b390b
 69c:	15000013          	li	zero,336
 6a0:	000d                	.insn	2, 0x000d
 6a2:	0b3a0803          	lb	a6,179(s4)
 6a6:	0b390b3b          	.insn	4, 0x0b390b3b
 6aa:	1349                	.insn	2, 0x1349
 6ac:	0000                	.insn	2, 0x
 6ae:	0d16                	.insn	2, 0x0d16
 6b0:	0300                	.insn	2, 0x0300
 6b2:	3a0e                	.insn	2, 0x3a0e
 6b4:	390b3b0b          	.insn	4, 0x390b3b0b
 6b8:	0013490b          	.insn	4, 0x0013490b
 6bc:	1700                	.insn	2, 0x1700
 6be:	012e                	.insn	2, 0x012e
 6c0:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 6c8:	0b39                	.insn	2, 0x0b39
 6ca:	13491927          	.insn	4, 0x13491927
 6ce:	0111                	.insn	2, 0x0111
 6d0:	0612                	.insn	2, 0x0612
 6d2:	1840                	.insn	2, 0x1840
 6d4:	197a                	.insn	2, 0x197a
 6d6:	1301                	.insn	2, 0x1301
 6d8:	0000                	.insn	2, 0x
 6da:	3418                	.insn	2, 0x3418
 6dc:	0300                	.insn	2, 0x0300
 6de:	3a0e                	.insn	2, 0x3a0e
 6e0:	390b3b0b          	.insn	4, 0x390b3b0b
 6e4:	0213490b          	.insn	4, 0x0213490b
 6e8:	0018                	.insn	2, 0x0018
 6ea:	1900                	.insn	2, 0x1900
 6ec:	0034                	.insn	2, 0x0034
 6ee:	0b3a0803          	lb	a6,179(s4)
 6f2:	0b390b3b          	.insn	4, 0x0b390b3b
 6f6:	1349                	.insn	2, 0x1349
 6f8:	1802                	.insn	2, 0x1802
 6fa:	0000                	.insn	2, 0x
 6fc:	0100                	.insn	2, 0x0100
 6fe:	0024                	.insn	2, 0x0024
 700:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 704:	00000e03          	lb	t3,0(zero) # 0 <_tbss_end>
 708:	3402                	.insn	2, 0x3402
 70a:	0300                	.insn	2, 0x0300
 70c:	3a0e                	.insn	2, 0x3a0e
 70e:	0121                	.insn	2, 0x0121
 710:	21390b3b          	.insn	4, 0x21390b3b
 714:	02134903          	lbu	s2,33(t1)
 718:	03000017          	auipc	zero,0x3000
 71c:	000d                	.insn	2, 0x000d
 71e:	213a0e03          	lb	t3,531(s4)
 722:	390b3b03          	.insn	4, 0x390b3b03
 726:	0e21                	.insn	2, 0x0e21
 728:	1349                	.insn	2, 0x1349
 72a:	0b0d                	.insn	2, 0x0b0d
 72c:	00000b6b          	.insn	4, 0x0b6b
 730:	1604                	.insn	2, 0x1604
 732:	0300                	.insn	2, 0x0300
 734:	3a0e                	.insn	2, 0x3a0e
 736:	0221                	.insn	2, 0x0221
 738:	0b39053b          	.insn	4, 0x0b39053b
 73c:	1349                	.insn	2, 0x1349
 73e:	0000                	.insn	2, 0x
 740:	3405                	.insn	2, 0x3405
 742:	0300                	.insn	2, 0x0300
 744:	3a0e                	.insn	2, 0x3a0e
 746:	0121                	.insn	2, 0x0121
 748:	21390b3b          	.insn	4, 0x21390b3b
 74c:	00134903          	lbu	s2,1(t1)
 750:	0600                	.insn	2, 0x0600
 752:	0034                	.insn	2, 0x0034
 754:	213a0803          	lb	a6,531(s4)
 758:	3b01                	.insn	2, 0x3b01
 75a:	490b390b          	.insn	4, 0x490b390b
 75e:	00170213          	addi	tp,a4,1
 762:	0700                	.insn	2, 0x0700
 764:	1755010b          	.insn	4, 0x1755010b
 768:	1301                	.insn	2, 0x1301
 76a:	0000                	.insn	2, 0x
 76c:	1108                	.insn	2, 0x1108
 76e:	2501                	.insn	2, 0x2501
 770:	130e                	.insn	2, 0x130e
 772:	1b1f030b          	.insn	4, 0x1b1f030b
 776:	111f 1201 1006      	.insn	6, 0x10061201111f
 77c:	09000017          	auipc	zero,0x9000
 780:	0024                	.insn	2, 0x0024
 782:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 786:	00000803          	lb	a6,0(zero) # 0 <_tbss_end>
 78a:	160a                	.insn	2, 0x160a
 78c:	0300                	.insn	2, 0x0300
 78e:	3a0e                	.insn	2, 0x3a0e
 790:	390b3b0b          	.insn	4, 0x390b3b0b
 794:	0013490b          	.insn	4, 0x0013490b
 798:	0b00                	.insn	2, 0x0b00
 79a:	0b0b0113          	addi	sp,s6,176
 79e:	0b3a                	.insn	2, 0x0b3a
 7a0:	0b390b3b          	.insn	4, 0x0b390b3b
 7a4:	1301                	.insn	2, 0x1301
 7a6:	0000                	.insn	2, 0x
 7a8:	0d0c                	.insn	2, 0x0d0c
 7aa:	0300                	.insn	2, 0x0300
 7ac:	3a08                	.insn	2, 0x3a08
 7ae:	390b3b0b          	.insn	4, 0x390b3b0b
 7b2:	0d13490b          	.insn	4, 0x0d13490b
 7b6:	000b6b0b          	.insn	4, 0x000b6b0b
 7ba:	0d00                	.insn	2, 0x0d00
 7bc:	0e030117          	auipc	sp,0xe030
 7c0:	0b3a0b0b          	.insn	4, 0x0b3a0b0b
 7c4:	0b390b3b          	.insn	4, 0x0b390b3b
 7c8:	1301                	.insn	2, 0x1301
 7ca:	0000                	.insn	2, 0x
 7cc:	0d0e                	.insn	2, 0x0d0e
 7ce:	0300                	.insn	2, 0x0300
 7d0:	3a08                	.insn	2, 0x3a08
 7d2:	390b3b0b          	.insn	4, 0x390b3b0b
 7d6:	0013490b          	.insn	4, 0x0013490b
 7da:	0f00                	.insn	2, 0x0f00
 7dc:	000d                	.insn	2, 0x000d
 7de:	0b3a0e03          	lb	t3,179(s4)
 7e2:	0b390b3b          	.insn	4, 0x0b390b3b
 7e6:	1349                	.insn	2, 0x1349
 7e8:	0000                	.insn	2, 0x
 7ea:	2e10                	.insn	2, 0x2e10
 7ec:	3f01                	.insn	2, 0x3f01
 7ee:	0319                	.insn	2, 0x0319
 7f0:	3a0e                	.insn	2, 0x3a0e
 7f2:	390b3b0b          	.insn	4, 0x390b3b0b
 7f6:	4919270b          	.insn	4, 0x4919270b
 7fa:	12011113          	.insn	4, 0x12011113
 7fe:	4006                	.insn	2, 0x4006
 800:	7a18                	.insn	2, 0x7a18
 802:	0119                	.insn	2, 0x0119
 804:	11000013          	li	zero,272
 808:	0005                	.insn	2, 0x0005
 80a:	0b3a0803          	lb	a6,179(s4)
 80e:	0b390b3b          	.insn	4, 0x0b390b3b
 812:	1349                	.insn	2, 0x1349
 814:	1702                	.insn	2, 0x1702
 816:	0000                	.insn	2, 0x
 818:	3412                	.insn	2, 0x3412
 81a:	0300                	.insn	2, 0x0300
 81c:	3a08                	.insn	2, 0x3a08
 81e:	390b3b0b          	.insn	4, 0x390b3b0b
 822:	0013490b          	.insn	4, 0x0013490b
 826:	1300                	.insn	2, 0x1300
 828:	0034                	.insn	2, 0x0034
 82a:	0b3a0803          	lb	a6,179(s4)
 82e:	0b390b3b          	.insn	4, 0x0b390b3b
 832:	1349                	.insn	2, 0x1349
 834:	1802                	.insn	2, 0x1802
 836:	0000                	.insn	2, 0x
 838:	0b14                	.insn	2, 0x0b14
 83a:	5501                	.insn	2, 0x5501
 83c:	00000017          	auipc	zero,0x0
 840:	2401                	.insn	2, 0x2401
 842:	0b00                	.insn	2, 0x0b00
 844:	030b3e0b          	.insn	4, 0x030b3e0b
 848:	000e                	.insn	2, 0x000e
 84a:	0200                	.insn	2, 0x0200
 84c:	0034                	.insn	2, 0x0034
 84e:	213a0e03          	lb	t3,531(s4)
 852:	3b01                	.insn	2, 0x3b01
 854:	0321390b          	.insn	4, 0x0321390b
 858:	1349                	.insn	2, 0x1349
 85a:	1702                	.insn	2, 0x1702
 85c:	0000                	.insn	2, 0x
 85e:	03000d03          	lb	s10,48(zero) # 30 <_tbss_end+0x30>
 862:	3a0e                	.insn	2, 0x3a0e
 864:	0321                	.insn	2, 0x0321
 866:	21390b3b          	.insn	4, 0x21390b3b
 86a:	490e                	.insn	2, 0x490e
 86c:	6b0b0d13          	addi	s10,s6,1712
 870:	0400000b          	.insn	4, 0x0400000b
 874:	0034                	.insn	2, 0x0034
 876:	213a0e03          	lb	t3,531(s4)
 87a:	3b01                	.insn	2, 0x3b01
 87c:	0321390b          	.insn	4, 0x0321390b
 880:	1349                	.insn	2, 0x1349
 882:	0000                	.insn	2, 0x
 884:	3405                	.insn	2, 0x3405
 886:	0300                	.insn	2, 0x0300
 888:	3a08                	.insn	2, 0x3a08
 88a:	0121                	.insn	2, 0x0121
 88c:	0b390b3b          	.insn	4, 0x0b390b3b
 890:	1349                	.insn	2, 0x1349
 892:	1702                	.insn	2, 0x1702
 894:	0000                	.insn	2, 0x
 896:	1106                	.insn	2, 0x1106
 898:	2501                	.insn	2, 0x2501
 89a:	130e                	.insn	2, 0x130e
 89c:	1b1f030b          	.insn	4, 0x1b1f030b
 8a0:	111f 1201 1006      	.insn	6, 0x10061201111f
 8a6:	07000017          	auipc	zero,0x7000
 8aa:	0024                	.insn	2, 0x0024
 8ac:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 8b0:	00000803          	lb	a6,0(zero) # 0 <_tbss_end>
 8b4:	1608                	.insn	2, 0x1608
 8b6:	0300                	.insn	2, 0x0300
 8b8:	3a0e                	.insn	2, 0x3a0e
 8ba:	39053b0b          	.insn	4, 0x39053b0b
 8be:	0013490b          	.insn	4, 0x0013490b
 8c2:	0900                	.insn	2, 0x0900
 8c4:	0016                	.insn	2, 0x0016
 8c6:	0b3a0e03          	lb	t3,179(s4)
 8ca:	0b390b3b          	.insn	4, 0x0b390b3b
 8ce:	1349                	.insn	2, 0x1349
 8d0:	0000                	.insn	2, 0x
 8d2:	130a                	.insn	2, 0x130a
 8d4:	0b01                	.insn	2, 0x0b01
 8d6:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 8da:	010b390b          	.insn	4, 0x010b390b
 8de:	0b000013          	li	zero,176
 8e2:	000d                	.insn	2, 0x000d
 8e4:	0b3a0803          	lb	a6,179(s4)
 8e8:	0b390b3b          	.insn	4, 0x0b390b3b
 8ec:	1349                	.insn	2, 0x1349
 8ee:	0b0d                	.insn	2, 0x0b0d
 8f0:	00000b6b          	.insn	4, 0x0b6b
 8f4:	170c                	.insn	2, 0x170c
 8f6:	0301                	.insn	2, 0x0301
 8f8:	0b0e                	.insn	2, 0x0b0e
 8fa:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 8fe:	010b390b          	.insn	4, 0x010b390b
 902:	0d000013          	li	zero,208
 906:	000d                	.insn	2, 0x000d
 908:	0b3a0803          	lb	a6,179(s4)
 90c:	0b390b3b          	.insn	4, 0x0b390b3b
 910:	1349                	.insn	2, 0x1349
 912:	0000                	.insn	2, 0x
 914:	0d0e                	.insn	2, 0x0d0e
 916:	0300                	.insn	2, 0x0300
 918:	3a0e                	.insn	2, 0x3a0e
 91a:	390b3b0b          	.insn	4, 0x390b3b0b
 91e:	0013490b          	.insn	4, 0x0013490b
 922:	0f00                	.insn	2, 0x0f00
 924:	012e                	.insn	2, 0x012e
 926:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 92e:	0b39                	.insn	2, 0x0b39
 930:	13491927          	.insn	4, 0x13491927
 934:	0111                	.insn	2, 0x0111
 936:	0612                	.insn	2, 0x0612
 938:	1840                	.insn	2, 0x1840
 93a:	197a                	.insn	2, 0x197a
 93c:	1301                	.insn	2, 0x1301
 93e:	0000                	.insn	2, 0x
 940:	0510                	.insn	2, 0x0510
 942:	0300                	.insn	2, 0x0300
 944:	3a08                	.insn	2, 0x3a08
 946:	390b3b0b          	.insn	4, 0x390b3b0b
 94a:	0213490b          	.insn	4, 0x0213490b
 94e:	11000017          	auipc	zero,0x11000
 952:	0034                	.insn	2, 0x0034
 954:	0b3a0803          	lb	a6,179(s4)
 958:	0b390b3b          	.insn	4, 0x0b390b3b
 95c:	1349                	.insn	2, 0x1349
 95e:	0000                	.insn	2, 0x
 960:	0b12                	.insn	2, 0x0b12
 962:	5501                	.insn	2, 0x5501
 964:	00130117          	auipc	sp,0x130
 968:	1300                	.insn	2, 0x1300
 96a:	1301010b          	.insn	4, 0x1301010b
 96e:	0000                	.insn	2, 0x
 970:	0b14                	.insn	2, 0x0b14
 972:	5501                	.insn	2, 0x5501
 974:	00000017          	auipc	zero,0x0
 978:	2401                	.insn	2, 0x2401
 97a:	0b00                	.insn	2, 0x0b00
 97c:	030b3e0b          	.insn	4, 0x030b3e0b
 980:	000e                	.insn	2, 0x000e
 982:	0200                	.insn	2, 0x0200
 984:	0034                	.insn	2, 0x0034
 986:	213a0803          	lb	a6,531(s4)
 98a:	3b01                	.insn	2, 0x3b01
 98c:	490b390b          	.insn	4, 0x490b390b
 990:	03000013          	li	zero,48
 994:	0034                	.insn	2, 0x0034
 996:	213a0e03          	lb	t3,531(s4)
 99a:	3b01                	.insn	2, 0x3b01
 99c:	0321390b          	.insn	4, 0x0321390b
 9a0:	1349                	.insn	2, 0x1349
 9a2:	0000                	.insn	2, 0x
 9a4:	0b04                	.insn	2, 0x0b04
 9a6:	0101                	.insn	2, 0x0101
 9a8:	05000013          	li	zero,80
 9ac:	0034                	.insn	2, 0x0034
 9ae:	213a0e03          	lb	t3,531(s4)
 9b2:	3b01                	.insn	2, 0x3b01
 9b4:	0321390b          	.insn	4, 0x0321390b
 9b8:	1349                	.insn	2, 0x1349
 9ba:	1702                	.insn	2, 0x1702
 9bc:	0000                	.insn	2, 0x
 9be:	0d06                	.insn	2, 0x0d06
 9c0:	0300                	.insn	2, 0x0300
 9c2:	3a0e                	.insn	2, 0x3a0e
 9c4:	0321                	.insn	2, 0x0321
 9c6:	21390b3b          	.insn	4, 0x21390b3b
 9ca:	490e                	.insn	2, 0x490e
 9cc:	6b0b0d13          	addi	s10,s6,1712
 9d0:	0700000b          	.insn	4, 0x0700000b
 9d4:	0000010b          	.insn	4, 0x010b
 9d8:	1608                	.insn	2, 0x1608
 9da:	0300                	.insn	2, 0x0300
 9dc:	3a0e                	.insn	2, 0x3a0e
 9de:	0221                	.insn	2, 0x0221
 9e0:	0b39053b          	.insn	4, 0x0b39053b
 9e4:	1349                	.insn	2, 0x1349
 9e6:	0000                	.insn	2, 0x
 9e8:	3409                	.insn	2, 0x3409
 9ea:	0300                	.insn	2, 0x0300
 9ec:	3a08                	.insn	2, 0x3a08
 9ee:	0121                	.insn	2, 0x0121
 9f0:	3924213b          	.insn	4, 0x3924213b
 9f4:	0321                	.insn	2, 0x0321
 9f6:	1349                	.insn	2, 0x1349
 9f8:	1702                	.insn	2, 0x1702
 9fa:	0000                	.insn	2, 0x
 9fc:	0b0a                	.insn	2, 0x0b0a
 9fe:	5501                	.insn	2, 0x5501
 a00:	00130117          	auipc	sp,0x130
 a04:	0b00                	.insn	2, 0x0b00
 a06:	0111                	.insn	2, 0x0111
 a08:	0e25                	.insn	2, 0x0e25
 a0a:	1f030b13          	addi	s6,t1,496
 a0e:	01111f1b          	.insn	4, 0x01111f1b
 a12:	0612                	.insn	2, 0x0612
 a14:	1710                	.insn	2, 0x1710
 a16:	0000                	.insn	2, 0x
 a18:	240c                	.insn	2, 0x240c
 a1a:	0b00                	.insn	2, 0x0b00
 a1c:	030b3e0b          	.insn	4, 0x030b3e0b
 a20:	0008                	.insn	2, 0x0008
 a22:	0d00                	.insn	2, 0x0d00
 a24:	0016                	.insn	2, 0x0016
 a26:	0b3a0e03          	lb	t3,179(s4)
 a2a:	0b390b3b          	.insn	4, 0x0b390b3b
 a2e:	1349                	.insn	2, 0x1349
 a30:	0000                	.insn	2, 0x
 a32:	130e                	.insn	2, 0x130e
 a34:	0b01                	.insn	2, 0x0b01
 a36:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 a3a:	010b390b          	.insn	4, 0x010b390b
 a3e:	0f000013          	li	zero,240
 a42:	000d                	.insn	2, 0x000d
 a44:	0b3a0803          	lb	a6,179(s4)
 a48:	0b390b3b          	.insn	4, 0x0b390b3b
 a4c:	1349                	.insn	2, 0x1349
 a4e:	0b0d                	.insn	2, 0x0b0d
 a50:	00000b6b          	.insn	4, 0x0b6b
 a54:	1710                	.insn	2, 0x1710
 a56:	0301                	.insn	2, 0x0301
 a58:	0b0e                	.insn	2, 0x0b0e
 a5a:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 a5e:	010b390b          	.insn	4, 0x010b390b
 a62:	11000013          	li	zero,272
 a66:	000d                	.insn	2, 0x000d
 a68:	0b3a0803          	lb	a6,179(s4)
 a6c:	0b390b3b          	.insn	4, 0x0b390b3b
 a70:	1349                	.insn	2, 0x1349
 a72:	0000                	.insn	2, 0x
 a74:	0d12                	.insn	2, 0x0d12
 a76:	0300                	.insn	2, 0x0300
 a78:	3a0e                	.insn	2, 0x3a0e
 a7a:	390b3b0b          	.insn	4, 0x390b3b0b
 a7e:	0013490b          	.insn	4, 0x0013490b
 a82:	1300                	.insn	2, 0x1300
 a84:	012e                	.insn	2, 0x012e
 a86:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 a8e:	0b39                	.insn	2, 0x0b39
 a90:	13491927          	.insn	4, 0x13491927
 a94:	0111                	.insn	2, 0x0111
 a96:	0612                	.insn	2, 0x0612
 a98:	1840                	.insn	2, 0x1840
 a9a:	197a                	.insn	2, 0x197a
 a9c:	1301                	.insn	2, 0x1301
 a9e:	0000                	.insn	2, 0x
 aa0:	0514                	.insn	2, 0x0514
 aa2:	0300                	.insn	2, 0x0300
 aa4:	3a08                	.insn	2, 0x3a08
 aa6:	390b3b0b          	.insn	4, 0x390b3b0b
 aaa:	0213490b          	.insn	4, 0x0213490b
 aae:	15000017          	auipc	zero,0x15000
 ab2:	000a                	.insn	2, 0x000a
 ab4:	0b3a0e03          	lb	t3,179(s4)
 ab8:	0b390b3b          	.insn	4, 0x0b390b3b
 abc:	0000                	.insn	2, 0x
 abe:	0b16                	.insn	2, 0x0b16
 ac0:	5501                	.insn	2, 0x5501
 ac2:	17000017          	auipc	zero,0x17000
 ac6:	0111010b          	.insn	4, 0x0111010b
 aca:	0612                	.insn	2, 0x0612
 acc:	0000                	.insn	2, 0x
 ace:	0100                	.insn	2, 0x0100
 ad0:	0024                	.insn	2, 0x0024
 ad2:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 ad6:	00000e03          	lb	t3,0(zero) # 0 <_tbss_end>
 ada:	3402                	.insn	2, 0x3402
 adc:	0300                	.insn	2, 0x0300
 ade:	3a08                	.insn	2, 0x3a08
 ae0:	0121                	.insn	2, 0x0121
 ae2:	0b390b3b          	.insn	4, 0x0b390b3b
 ae6:	1349                	.insn	2, 0x1349
 ae8:	0000                	.insn	2, 0x
 aea:	03003403          	.insn	4, 0x03003403
 aee:	3a0e                	.insn	2, 0x3a0e
 af0:	0121                	.insn	2, 0x0121
 af2:	21390b3b          	.insn	4, 0x21390b3b
 af6:	00134903          	lbu	s2,1(t1)
 afa:	0400                	.insn	2, 0x0400
 afc:	1301010b          	.insn	4, 0x1301010b
 b00:	0000                	.insn	2, 0x
 b02:	3405                	.insn	2, 0x3405
 b04:	0300                	.insn	2, 0x0300
 b06:	3a0e                	.insn	2, 0x3a0e
 b08:	0121                	.insn	2, 0x0121
 b0a:	21390b3b          	.insn	4, 0x21390b3b
 b0e:	02134903          	lbu	s2,33(t1)
 b12:	06000017          	auipc	zero,0x6000
 b16:	000d                	.insn	2, 0x000d
 b18:	213a0e03          	lb	t3,531(s4)
 b1c:	390b3b03          	.insn	4, 0x390b3b03
 b20:	0e21                	.insn	2, 0x0e21
 b22:	1349                	.insn	2, 0x1349
 b24:	0b0d                	.insn	2, 0x0b0d
 b26:	00000b6b          	.insn	4, 0x0b6b
 b2a:	00010b07          	.insn	4, 0x00010b07
 b2e:	0800                	.insn	2, 0x0800
 b30:	0034                	.insn	2, 0x0034
 b32:	213a0803          	lb	a6,531(s4)
 b36:	3b01                	.insn	2, 0x3b01
 b38:	2421                	.insn	2, 0x2421
 b3a:	2139                	.insn	2, 0x2139
 b3c:	02134903          	lbu	s2,33(t1)
 b40:	09000017          	auipc	zero,0x9000
 b44:	1755010b          	.insn	4, 0x1755010b
 b48:	1301                	.insn	2, 0x1301
 b4a:	0000                	.insn	2, 0x
 b4c:	110a                	.insn	2, 0x110a
 b4e:	2501                	.insn	2, 0x2501
 b50:	130e                	.insn	2, 0x130e
 b52:	1b1f030b          	.insn	4, 0x1b1f030b
 b56:	111f 1201 1006      	.insn	6, 0x10061201111f
 b5c:	0b000017          	auipc	zero,0xb000
 b60:	0024                	.insn	2, 0x0024
 b62:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 b66:	00000803          	lb	a6,0(zero) # 0 <_tbss_end>
 b6a:	160c                	.insn	2, 0x160c
 b6c:	0300                	.insn	2, 0x0300
 b6e:	3a0e                	.insn	2, 0x3a0e
 b70:	39053b0b          	.insn	4, 0x39053b0b
 b74:	0013490b          	.insn	4, 0x0013490b
 b78:	0d00                	.insn	2, 0x0d00
 b7a:	0016                	.insn	2, 0x0016
 b7c:	0b3a0e03          	lb	t3,179(s4)
 b80:	0b390b3b          	.insn	4, 0x0b390b3b
 b84:	1349                	.insn	2, 0x1349
 b86:	0000                	.insn	2, 0x
 b88:	130e                	.insn	2, 0x130e
 b8a:	0b01                	.insn	2, 0x0b01
 b8c:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 b90:	010b390b          	.insn	4, 0x010b390b
 b94:	0f000013          	li	zero,240
 b98:	000d                	.insn	2, 0x000d
 b9a:	0b3a0803          	lb	a6,179(s4)
 b9e:	0b390b3b          	.insn	4, 0x0b390b3b
 ba2:	1349                	.insn	2, 0x1349
 ba4:	0b0d                	.insn	2, 0x0b0d
 ba6:	00000b6b          	.insn	4, 0x0b6b
 baa:	1710                	.insn	2, 0x1710
 bac:	0301                	.insn	2, 0x0301
 bae:	0b0e                	.insn	2, 0x0b0e
 bb0:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 bb4:	010b390b          	.insn	4, 0x010b390b
 bb8:	11000013          	li	zero,272
 bbc:	000d                	.insn	2, 0x000d
 bbe:	0b3a0803          	lb	a6,179(s4)
 bc2:	0b390b3b          	.insn	4, 0x0b390b3b
 bc6:	1349                	.insn	2, 0x1349
 bc8:	0000                	.insn	2, 0x
 bca:	0d12                	.insn	2, 0x0d12
 bcc:	0300                	.insn	2, 0x0300
 bce:	3a0e                	.insn	2, 0x3a0e
 bd0:	390b3b0b          	.insn	4, 0x390b3b0b
 bd4:	0013490b          	.insn	4, 0x0013490b
 bd8:	1300                	.insn	2, 0x1300
 bda:	012e                	.insn	2, 0x012e
 bdc:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 be4:	0b39                	.insn	2, 0x0b39
 be6:	13491927          	.insn	4, 0x13491927
 bea:	0111                	.insn	2, 0x0111
 bec:	0612                	.insn	2, 0x0612
 bee:	1840                	.insn	2, 0x1840
 bf0:	197a                	.insn	2, 0x197a
 bf2:	1301                	.insn	2, 0x1301
 bf4:	0000                	.insn	2, 0x
 bf6:	0514                	.insn	2, 0x0514
 bf8:	0300                	.insn	2, 0x0300
 bfa:	3a08                	.insn	2, 0x3a08
 bfc:	390b3b0b          	.insn	4, 0x390b3b0b
 c00:	0213490b          	.insn	4, 0x0213490b
 c04:	15000017          	auipc	zero,0x15000
 c08:	000a                	.insn	2, 0x000a
 c0a:	0b3a0e03          	lb	t3,179(s4)
 c0e:	0b390b3b          	.insn	4, 0x0b390b3b
 c12:	0000                	.insn	2, 0x
 c14:	0b16                	.insn	2, 0x0b16
 c16:	5501                	.insn	2, 0x5501
 c18:	17000017          	auipc	zero,0x17000
 c1c:	0111010b          	.insn	4, 0x0111010b
 c20:	0612                	.insn	2, 0x0612
 c22:	0000                	.insn	2, 0x
	...

Disassembly of section .debug_loclists:

00000000 <.debug_loclists>:
       0:	011c                	.insn	2, 0x011c
       2:	0000                	.insn	2, 0x
       4:	0005                	.insn	2, 0x0005
       6:	0004                	.insn	2, 0x0004
       8:	0000                	.insn	2, 0x
       a:	0000                	.insn	2, 0x
       c:	0004                	.insn	2, 0x0004
       e:	0624                	.insn	2, 0x0624
      10:	935a                	.insn	2, 0x935a
      12:	5b04                	.insn	2, 0x5b04
      14:	24040493          	addi	s1,s0,576 # 2e1ca8 <_tbss_end+0x2e1ca8>
      18:	01d8                	.insn	2, 0x01d8
      1a:	a306                	.insn	2, 0xa306
      1c:	260aa503          	lw	a0,608(s5) # 1260 <_tbss_end+0x1260>
      20:	009f 0004 0674      	.insn	6, 0x06740004009f
      26:	935c                	.insn	2, 0x935c
      28:	5d04                	.insn	2, 0x5d04
      2a:	74040493          	addi	s1,s0,1856
      2e:	067c                	.insn	2, 0x067c
      30:	0ca503a3          	sb	a0,199(a0)
      34:	9f26                	.insn	2, 0x9f26
      36:	7c04                	.insn	2, 0x7c04
      38:	0190                	.insn	2, 0x0190
      3a:	5c06                	.insn	2, 0x5c06
      3c:	935d0493          	addi	s1,s10,-1739
      40:	0404                	.insn	2, 0x0404
      42:	0190                	.insn	2, 0x0190
      44:	01a8                	.insn	2, 0x01a8
      46:	a306                	.insn	2, 0xa306
      48:	260ca503          	lw	a0,608(s9)
      4c:	049f 01a8 01d4      	.insn	6, 0x01d401a8049f
      52:	5c06                	.insn	2, 0x5c06
      54:	935d0493          	addi	s1,s10,-1739
      58:	0404                	.insn	2, 0x0404
      5a:	01d4                	.insn	2, 0x01d4
      5c:	01d8                	.insn	2, 0x01d8
      5e:	a306                	.insn	2, 0xa306
      60:	260ca503          	lw	a0,608(s9)
      64:	009f 0004 0274      	.insn	6, 0x02740004009f
      6a:	9f30                	.insn	2, 0x9f30
      6c:	7c04                	.insn	2, 0x7c04
      6e:	01a0                	.insn	2, 0x01a0
      70:	3002                	.insn	2, 0x3002
      72:	049f 01a8 01d8      	.insn	6, 0x01d801a8049f
      78:	3002                	.insn	2, 0x3002
      7a:	009f 1c04 0124      	.insn	6, 0x01241c04009f
      80:	045a                	.insn	2, 0x045a
      82:	6824                	.insn	2, 0x6824
      84:	6101                	.insn	2, 0x6101
      86:	6804                	.insn	2, 0x6804
      88:	017c                	.insn	2, 0x017c
      8a:	046c                	.insn	2, 0x046c
      8c:	8c7c                	.insn	2, 0x8c7c
      8e:	0101                	.insn	2, 0x0101
      90:	0461                	.insn	2, 0x0461
      92:	018c                	.insn	2, 0x018c
      94:	01a8                	.insn	2, 0x01a8
      96:	6c01                	.insn	2, 0x6c01
      98:	a804                	.insn	2, 0xa804
      9a:	d401                	.insn	2, 0xd401
      9c:	0101                	.insn	2, 0x0101
      9e:	0461                	.insn	2, 0x0461
      a0:	01d4                	.insn	2, 0x01d4
      a2:	01d8                	.insn	2, 0x01d8
      a4:	6c01                	.insn	2, 0x6c01
      a6:	0400                	.insn	2, 0x0400
      a8:	7428                	.insn	2, 0x7428
      aa:	5e01                	.insn	2, 0x5e01
      ac:	7c04                	.insn	2, 0x7c04
      ae:	019c                	.insn	2, 0x019c
      b0:	5e01                	.insn	2, 0x5e01
      b2:	a804                	.insn	2, 0xa804
      b4:	c401                	.insn	2, 0xc401
      b6:	0101                	.insn	2, 0x0101
      b8:	045e                	.insn	2, 0x045e
      ba:	01cc                	.insn	2, 0x01cc
      bc:	01d8                	.insn	2, 0x01d8
      be:	5e01                	.insn	2, 0x5e01
      c0:	0400                	.insn	2, 0x0400
      c2:	603c                	.insn	2, 0x603c
      c4:	7d06                	.insn	2, 0x7d06
      c6:	0800                	.insn	2, 0x0800
      c8:	049f1aff 0601807c 	.insn	12, 0xff08007d0601807c049f1aff
      d0:	ff08007d 
      d4:	9f1a                	.insn	2, 0x9f1a
      d6:	a804                	.insn	2, 0xa804
      d8:	d401                	.insn	2, 0xd401
      da:	0601                	.insn	2, 0x0601
      dc:	007d                	.insn	2, 0x007d
      de:	ff08                	.insn	2, 0xff08
      e0:	9f1a                	.insn	2, 0x9f1a
      e2:	0400                	.insn	2, 0x0400
      e4:	7434                	.insn	2, 0x7434
      e6:	5c01                	.insn	2, 0x5c01
      e8:	7404                	.insn	2, 0x7404
      ea:	017c                	.insn	2, 0x017c
      ec:	046d                	.insn	2, 0x046d
      ee:	907c                	.insn	2, 0x907c
      f0:	0101                	.insn	2, 0x0101
      f2:	045c                	.insn	2, 0x045c
      f4:	0190                	.insn	2, 0x0190
      f6:	01a8                	.insn	2, 0x01a8
      f8:	6d01                	.insn	2, 0x6d01
      fa:	a804                	.insn	2, 0xa804
      fc:	d401                	.insn	2, 0xd401
      fe:	0101                	.insn	2, 0x0101
     100:	045c                	.insn	2, 0x045c
     102:	01d4                	.insn	2, 0x01d4
     104:	01d8                	.insn	2, 0x01d8
     106:	6d01                	.insn	2, 0x6d01
     108:	0400                	.insn	2, 0x0400
     10a:	645c                	.insn	2, 0x645c
     10c:	3102                	.insn	2, 0x3102
     10e:	009f 5c04 0264      	.insn	6, 0x02645c04009f
     114:	9f30                	.insn	2, 0x9f30
     116:	0400                	.insn	2, 0x0400
     118:	0184                	.insn	2, 0x0184
     11a:	01a0                	.insn	2, 0x01a0
     11c:	3002                	.insn	2, 0x3002
     11e:	009f 00e8 0000      	.insn	6, 0x00e8009f
     124:	0005                	.insn	2, 0x0005
     126:	0004                	.insn	2, 0x0004
     128:	0000                	.insn	2, 0x
     12a:	0000                	.insn	2, 0x
     12c:	0004                	.insn	2, 0x0004
     12e:	0624                	.insn	2, 0x0624
     130:	935a                	.insn	2, 0x935a
     132:	5b04                	.insn	2, 0x5b04
     134:	24040493          	addi	s1,s0,576
     138:	01e4                	.insn	2, 0x01e4
     13a:	a306                	.insn	2, 0xa306
     13c:	260aa503          	lw	a0,608(s5)
     140:	009f 0004 0670      	.insn	6, 0x06700004009f
     146:	935c                	.insn	2, 0x935c
     148:	5d04                	.insn	2, 0x5d04
     14a:	70040493          	addi	s1,s0,1792
     14e:	01bc                	.insn	2, 0x01bc
     150:	a306                	.insn	2, 0xa306
     152:	260ca503          	lw	a0,608(s9)
     156:	049f 01bc 01cc      	.insn	6, 0x01cc01bc049f
     15c:	5c06                	.insn	2, 0x5c06
     15e:	935d0493          	addi	s1,s10,-1739
     162:	0404                	.insn	2, 0x0404
     164:	01cc                	.insn	2, 0x01cc
     166:	01e4                	.insn	2, 0x01e4
     168:	a306                	.insn	2, 0xa306
     16a:	260ca503          	lw	a0,608(s9)
     16e:	009f 0004 01bc      	.insn	6, 0x01bc0004009f
     174:	3002                	.insn	2, 0x3002
     176:	049f 01c8 01e4      	.insn	6, 0x01e401c8049f
     17c:	3002                	.insn	2, 0x3002
     17e:	009f 1c04 0124      	.insn	6, 0x01241c04009f
     184:	045a                	.insn	2, 0x045a
     186:	6424                	.insn	2, 0x6424
     188:	6001                	.insn	2, 0x6001
     18a:	6404                	.insn	2, 0x6404
     18c:	01bc                	.insn	2, 0x01bc
     18e:	6c01                	.insn	2, 0x6c01
     190:	bc04                	.insn	2, 0xbc04
     192:	c801                	.insn	2, 0xc801
     194:	0101                	.insn	2, 0x0101
     196:	0460                	.insn	2, 0x0460
     198:	01c8                	.insn	2, 0x01c8
     19a:	01e4                	.insn	2, 0x01e4
     19c:	6c01                	.insn	2, 0x6c01
     19e:	0400                	.insn	2, 0x0400
     1a0:	7c38                	.insn	2, 0x7c38
     1a2:	5a01                	.insn	2, 0x5a01
     1a4:	8804                	.insn	2, 0x8804
     1a6:	9001                	.insn	2, 0x9001
     1a8:	0101                	.insn	2, 0x0101
     1aa:	045a                	.insn	2, 0x045a
     1ac:	0198                	.insn	2, 0x0198
     1ae:	01ac                	.insn	2, 0x01ac
     1b0:	5a01                	.insn	2, 0x5a01
     1b2:	bc04                	.insn	2, 0xbc04
     1b4:	c401                	.insn	2, 0xc401
     1b6:	0101                	.insn	2, 0x0101
     1b8:	045a                	.insn	2, 0x045a
     1ba:	01c8                	.insn	2, 0x01c8
     1bc:	01d8                	.insn	2, 0x01d8
     1be:	5a01                	.insn	2, 0x5a01
     1c0:	0400                	.insn	2, 0x0400
     1c2:	7038                	.insn	2, 0x7038
     1c4:	5c01                	.insn	2, 0x5c01
     1c6:	7004                	.insn	2, 0x7004
     1c8:	01bc                	.insn	2, 0x01bc
     1ca:	6d01                	.insn	2, 0x6d01
     1cc:	bc04                	.insn	2, 0xbc04
     1ce:	cc01                	.insn	2, 0xcc01
     1d0:	0101                	.insn	2, 0x0101
     1d2:	045c                	.insn	2, 0x045c
     1d4:	01cc                	.insn	2, 0x01cc
     1d6:	01e4                	.insn	2, 0x01e4
     1d8:	6d01                	.insn	2, 0x6d01
     1da:	0400                	.insn	2, 0x0400
     1dc:	bc68                	.insn	2, 0xbc68
     1de:	0101                	.insn	2, 0x0101
     1e0:	045f 01c8 01e4      	.insn	6, 0x01e401c8045f
     1e6:	5f01                	.insn	2, 0x5f01
     1e8:	0400                	.insn	2, 0x0400
     1ea:	7870                	.insn	2, 0x7870
     1ec:	7c08                	.insn	2, 0x7c08
     1ee:	3000                	.insn	2, 0x3000
     1f0:	0829                	.insn	2, 0x0829
     1f2:	049f1aff 018c0188 	.insn	12, 0x30007c08018c0188049f1aff
     1fa:	30007c08 
     1fe:	0829                	.insn	2, 0x0829
     200:	049f1aff 01cc01c8 	.insn	12, 0x009f300201cc01c8049f1aff
     208:	009f3002 
     20c:	00e8                	.insn	2, 0x00e8
     20e:	0000                	.insn	2, 0x
     210:	0005                	.insn	2, 0x0005
     212:	0004                	.insn	2, 0x0004
     214:	0000                	.insn	2, 0x
     216:	0000                	.insn	2, 0x
     218:	0004                	.insn	2, 0x0004
     21a:	0624                	.insn	2, 0x0624
     21c:	935a                	.insn	2, 0x935a
     21e:	5b04                	.insn	2, 0x5b04
     220:	24040493          	addi	s1,s0,576
     224:	01e4                	.insn	2, 0x01e4
     226:	a306                	.insn	2, 0xa306
     228:	260aa503          	lw	a0,608(s5)
     22c:	009f 0004 0670      	.insn	6, 0x06700004009f
     232:	935c                	.insn	2, 0x935c
     234:	5d04                	.insn	2, 0x5d04
     236:	70040493          	addi	s1,s0,1792
     23a:	01bc                	.insn	2, 0x01bc
     23c:	a306                	.insn	2, 0xa306
     23e:	260ca503          	lw	a0,608(s9)
     242:	049f 01bc 01cc      	.insn	6, 0x01cc01bc049f
     248:	5c06                	.insn	2, 0x5c06
     24a:	935d0493          	addi	s1,s10,-1739
     24e:	0404                	.insn	2, 0x0404
     250:	01cc                	.insn	2, 0x01cc
     252:	01e4                	.insn	2, 0x01e4
     254:	a306                	.insn	2, 0xa306
     256:	260ca503          	lw	a0,608(s9)
     25a:	009f 0004 01bc      	.insn	6, 0x01bc0004009f
     260:	3002                	.insn	2, 0x3002
     262:	049f 01c8 01e4      	.insn	6, 0x01e401c8049f
     268:	3002                	.insn	2, 0x3002
     26a:	009f 1c04 0124      	.insn	6, 0x01241c04009f
     270:	045a                	.insn	2, 0x045a
     272:	6424                	.insn	2, 0x6424
     274:	6001                	.insn	2, 0x6001
     276:	6404                	.insn	2, 0x6404
     278:	01bc                	.insn	2, 0x01bc
     27a:	6c01                	.insn	2, 0x6c01
     27c:	bc04                	.insn	2, 0xbc04
     27e:	c801                	.insn	2, 0xc801
     280:	0101                	.insn	2, 0x0101
     282:	0460                	.insn	2, 0x0460
     284:	01c8                	.insn	2, 0x01c8
     286:	01e4                	.insn	2, 0x01e4
     288:	6c01                	.insn	2, 0x6c01
     28a:	0400                	.insn	2, 0x0400
     28c:	7c38                	.insn	2, 0x7c38
     28e:	5a01                	.insn	2, 0x5a01
     290:	8804                	.insn	2, 0x8804
     292:	9001                	.insn	2, 0x9001
     294:	0101                	.insn	2, 0x0101
     296:	045a                	.insn	2, 0x045a
     298:	0198                	.insn	2, 0x0198
     29a:	01ac                	.insn	2, 0x01ac
     29c:	5a01                	.insn	2, 0x5a01
     29e:	bc04                	.insn	2, 0xbc04
     2a0:	c401                	.insn	2, 0xc401
     2a2:	0101                	.insn	2, 0x0101
     2a4:	045a                	.insn	2, 0x045a
     2a6:	01c8                	.insn	2, 0x01c8
     2a8:	01d8                	.insn	2, 0x01d8
     2aa:	5a01                	.insn	2, 0x5a01
     2ac:	0400                	.insn	2, 0x0400
     2ae:	7038                	.insn	2, 0x7038
     2b0:	5c01                	.insn	2, 0x5c01
     2b2:	7004                	.insn	2, 0x7004
     2b4:	01bc                	.insn	2, 0x01bc
     2b6:	6d01                	.insn	2, 0x6d01
     2b8:	bc04                	.insn	2, 0xbc04
     2ba:	cc01                	.insn	2, 0xcc01
     2bc:	0101                	.insn	2, 0x0101
     2be:	045c                	.insn	2, 0x045c
     2c0:	01cc                	.insn	2, 0x01cc
     2c2:	01e4                	.insn	2, 0x01e4
     2c4:	6d01                	.insn	2, 0x6d01
     2c6:	0400                	.insn	2, 0x0400
     2c8:	bc68                	.insn	2, 0xbc68
     2ca:	0101                	.insn	2, 0x0101
     2cc:	045f 01c8 01e4      	.insn	6, 0x01e401c8045f
     2d2:	5f01                	.insn	2, 0x5f01
     2d4:	0400                	.insn	2, 0x0400
     2d6:	7870                	.insn	2, 0x7870
     2d8:	7c08                	.insn	2, 0x7c08
     2da:	3000                	.insn	2, 0x3000
     2dc:	0829                	.insn	2, 0x0829
     2de:	049f1aff 018c0188 	.insn	12, 0x30007c08018c0188049f1aff
     2e6:	30007c08 
     2ea:	0829                	.insn	2, 0x0829
     2ec:	049f1aff 01cc01c8 	.insn	12, 0x009f300201cc01c8049f1aff
     2f4:	009f3002 
     2f8:	0938                	.insn	2, 0x0938
     2fa:	0000                	.insn	2, 0x
     2fc:	0005                	.insn	2, 0x0005
     2fe:	0004                	.insn	2, 0x0004
     300:	0000                	.insn	2, 0x
     302:	0000                	.insn	2, 0x
     304:	0004                	.insn	2, 0x0004
     306:	01f4                	.insn	2, 0x01f4
     308:	5a06                	.insn	2, 0x5a06
     30a:	935b0493          	addi	s1,s6,-1739
     30e:	0404                	.insn	2, 0x0404
     310:	01f4                	.insn	2, 0x01f4
     312:	06a0                	.insn	2, 0x06a0
     314:	a306                	.insn	2, 0xa306
     316:	260aa503          	lw	a0,608(s5)
     31a:	049f 06a0 06c0      	.insn	6, 0x06c006a0049f
     320:	5a06                	.insn	2, 0x5a06
     322:	935b0493          	addi	s1,s6,-1739
     326:	0404                	.insn	2, 0x0404
     328:	06c0                	.insn	2, 0x06c0
     32a:	0ecc                	.insn	2, 0x0ecc
     32c:	a306                	.insn	2, 0xa306
     32e:	260aa503          	lw	a0,608(s5)
     332:	009f 0004 0634      	.insn	6, 0x06340004009f
     338:	935c                	.insn	2, 0x935c
     33a:	5d04                	.insn	2, 0x5d04
     33c:	34040493          	addi	s1,s0,832
     340:	0ecc                	.insn	2, 0x0ecc
     342:	a306                	.insn	2, 0xa306
     344:	260ca503          	lw	a0,608(s9)
     348:	009f 0004 01ec      	.insn	6, 0x01ec0004009f
     34e:	3002                	.insn	2, 0x3002
     350:	049f 01ec 06a0      	.insn	6, 0x06a001ec049f
     356:	6001                	.insn	2, 0x6001
     358:	a004                	.insn	2, 0xa004
     35a:	c006                	.insn	2, 0xc006
     35c:	0206                	.insn	2, 0x0206
     35e:	9f30                	.insn	2, 0x9f30
     360:	c004                	.insn	2, 0xc004
     362:	f006                	.insn	2, 0xf006
     364:	04600107          	.insn	4, 0x04600107
     368:	07f4                	.insn	2, 0x07f4
     36a:	0ac8                	.insn	2, 0x0ac8
     36c:	6001                	.insn	2, 0x6001
     36e:	c804                	.insn	2, 0xc804
     370:	cc0a                	.insn	2, 0xcc0a
     372:	050a                	.insn	2, 0x050a
     374:	0080                	.insn	2, 0x0080
     376:	2134                	.insn	2, 0x2134
     378:	049f 0acc 0da4      	.insn	6, 0x0da40acc049f
     37e:	6001                	.insn	2, 0x6001
     380:	a804                	.insn	2, 0xa804
     382:	cc0d                	.insn	2, 0xcc0d
     384:	010e                	.insn	2, 0x010e
     386:	0060                	.insn	2, 0x0060
     388:	5c04                	.insn	2, 0x5c04
     38a:	0260                	.insn	2, 0x0260
     38c:	9f30                	.insn	2, 0x9f30
     38e:	a404                	.insn	2, 0xa404
     390:	ac01                	.insn	2, 0xac01
     392:	0201                	.insn	2, 0x0201
     394:	9f30                	.insn	2, 0x9f30
     396:	d404                	.insn	2, 0xd404
     398:	ec01                	.insn	2, 0xec01
     39a:	0201                	.insn	2, 0x0201
     39c:	ec049f33          	.insn	4, 0xec049f33
     3a0:	ec01                	.insn	2, 0xec01
     3a2:	0102                	.insn	2, 0x0102
     3a4:	0455                	.insn	2, 0x0455
     3a6:	06c0                	.insn	2, 0x06c0
     3a8:	08b0                	.insn	2, 0x08b0
     3aa:	5501                	.insn	2, 0x5501
     3ac:	f804                	.insn	2, 0xf804
     3ae:	9808                	.insn	2, 0x9808
     3b0:	0109                	.insn	2, 0x0109
     3b2:	0455                	.insn	2, 0x0455
     3b4:	0e98                	.insn	2, 0x0e98
     3b6:	0ecc                	.insn	2, 0x0ecc
     3b8:	5501                	.insn	2, 0x5501
     3ba:	0400                	.insn	2, 0x0400
     3bc:	d034                	.insn	2, 0xd034
     3be:	0602                	.insn	2, 0x0602
     3c0:	007c                	.insn	2, 0x007c
     3c2:	ff08                	.insn	2, 0xff08
     3c4:	9f1a                	.insn	2, 0x9f1a
     3c6:	a004                	.insn	2, 0xa004
     3c8:	f406                	.insn	2, 0xf406
     3ca:	007c0607          	.insn	4, 0x007c0607
     3ce:	ff08                	.insn	2, 0xff08
     3d0:	9f1a                	.insn	2, 0x9f1a
     3d2:	f804                	.insn	2, 0xf804
     3d4:	8808                	.insn	2, 0x8808
     3d6:	0609                	.insn	2, 0x0609
     3d8:	007c                	.insn	2, 0x007c
     3da:	ff08                	.insn	2, 0xff08
     3dc:	9f1a                	.insn	2, 0x9f1a
     3de:	0400                	.insn	2, 0x0400
     3e0:	5c30                	.insn	2, 0x5c30
     3e2:	0a008e07          	.insn	4, 0x0a008e07
     3e6:	ffff                	.insn	2, 0xffff
     3e8:	9f1a                	.insn	2, 0x9f1a
     3ea:	5c04                	.insn	2, 0x5c04
     3ec:	0160                	.insn	2, 0x0160
     3ee:	046e                	.insn	2, 0x046e
     3f0:	9c68                	.insn	2, 0x9c68
     3f2:	0701                	.insn	2, 0x0701
     3f4:	008e                	.insn	2, 0x008e
     3f6:	ff0a                	.insn	2, 0xff0a
     3f8:	049f1aff 01ac01a4 	.insn	12, 0xac046e0101ac01a4049f1aff
     400:	ac046e01 
     404:	e801                	.insn	2, 0xe801
     406:	0701                	.insn	2, 0x0701
     408:	008e                	.insn	2, 0x008e
     40a:	ff0a                	.insn	2, 0xff0a
     40c:	049f1aff 01ec01e8 	.insn	12, 0x44007b0901ec01e8049f1aff
     414:	44007b09 
     418:	0a25                	.insn	2, 0x0a25
     41a:	07ff 9f1a ec04 b801 	.insn	10, 0x0102b801ec049f1a07ff
     422:	0102 
     424:	046e                	.insn	2, 0x046e
     426:	06a0                	.insn	2, 0x06a0
     428:	06a8                	.insn	2, 0x06a8
     42a:	0a008e07          	.insn	4, 0x0a008e07
     42e:	ffff                	.insn	2, 0xffff
     430:	9f1a                	.insn	2, 0x9f1a
     432:	a804                	.insn	2, 0xa804
     434:	b006                	.insn	2, 0xb006
     436:	0906                	.insn	2, 0x0906
     438:	2544007b          	.insn	4, 0x2544007b
     43c:	ff0a                	.insn	2, 0xff0a
     43e:	049f1a07          	.insn	4, 0x049f1a07
     442:	06b0                	.insn	2, 0x06b0
     444:	06b8                	.insn	2, 0x06b8
     446:	0a008e07          	.insn	4, 0x0a008e07
     44a:	ffff                	.insn	2, 0xffff
     44c:	9f1a                	.insn	2, 0x9f1a
     44e:	b804                	.insn	2, 0xb804
     450:	c006                	.insn	2, 0xc006
     452:	0906                	.insn	2, 0x0906
     454:	2544007b          	.insn	4, 0x2544007b
     458:	ff0a                	.insn	2, 0xff0a
     45a:	049f1a07          	.insn	4, 0x049f1a07
     45e:	06c0                	.insn	2, 0x06c0
     460:	07f4                	.insn	2, 0x07f4
     462:	6e01                	.insn	2, 0x6e01
     464:	0400                	.insn	2, 0x0400
     466:	5820                	.insn	2, 0x5820
     468:	5a01                	.insn	2, 0x5a01
     46a:	5804                	.insn	2, 0x5804
     46c:	015c                	.insn	2, 0x015c
     46e:	0461                	.insn	2, 0x0461
     470:	9868                	.insn	2, 0x9868
     472:	0101                	.insn	2, 0x0101
     474:	045a                	.insn	2, 0x045a
     476:	01a4                	.insn	2, 0x01a4
     478:	01ac                	.insn	2, 0x01ac
     47a:	5f01                	.insn	2, 0x5f01
     47c:	ac04                	.insn	2, 0xac04
     47e:	c801                	.insn	2, 0xc801
     480:	0101                	.insn	2, 0x0101
     482:	045a                	.insn	2, 0x045a
     484:	01c8                	.insn	2, 0x01c8
     486:	01cc                	.insn	2, 0x01cc
     488:	3002                	.insn	2, 0x3002
     48a:	049f 01cc 01ec      	.insn	6, 0x01ec01cc049f
     490:	5a01                	.insn	2, 0x5a01
     492:	ec04                	.insn	2, 0xec04
     494:	f401                	.insn	2, 0xf401
     496:	0102                	.insn	2, 0x0102
     498:	0461                	.insn	2, 0x0461
     49a:	06a0                	.insn	2, 0x06a0
     49c:	06c0                	.insn	2, 0x06c0
     49e:	5a01                	.insn	2, 0x5a01
     4a0:	c004                	.insn	2, 0xc004
     4a2:	b006                	.insn	2, 0xb006
     4a4:	0108                	.insn	2, 0x0108
     4a6:	0461                	.insn	2, 0x0461
     4a8:	08f8                	.insn	2, 0x08f8
     4aa:	0998                	.insn	2, 0x0998
     4ac:	6101                	.insn	2, 0x6101
     4ae:	9804                	.insn	2, 0x9804
     4b0:	cc0e                	.insn	2, 0xcc0e
     4b2:	010e                	.insn	2, 0x010e
     4b4:	0061                	.insn	2, 0x0061
     4b6:	3004                	.insn	2, 0x3004
     4b8:	0140                	.insn	2, 0x0140
     4ba:	045e                	.insn	2, 0x045e
     4bc:	4440                	.insn	2, 0x4440
     4be:	40007e07          	.insn	4, 0x40007e07
     4c2:	2440                	.insn	2, 0x2440
     4c4:	9f21                	.insn	2, 0x9f21
     4c6:	4404                	.insn	2, 0x4404
     4c8:	0b50                	.insn	2, 0x0b50
     4ca:	243c007b          	.insn	4, 0x243c007b
     4ce:	253c                	.insn	2, 0x253c
     4d0:	4040                	.insn	2, 0x4040
     4d2:	2124                	.insn	2, 0x2124
     4d4:	049f 5450 7f07      	.insn	6, 0x7f075450049f
     4da:	4200                	.insn	2, 0x4200
     4dc:	9f212443          	.insn	4, 0x9f212443
     4e0:	5404                	.insn	2, 0x5404
     4e2:	015c                	.insn	2, 0x015c
     4e4:	045e                	.insn	2, 0x045e
     4e6:	8c68                	.insn	2, 0x8c68
     4e8:	0101                	.insn	2, 0x0101
     4ea:	045e                	.insn	2, 0x045e
     4ec:	0194                	.insn	2, 0x0194
     4ee:	01ac                	.insn	2, 0x01ac
     4f0:	5f01                	.insn	2, 0x5f01
     4f2:	ac04                	.insn	2, 0xac04
     4f4:	c801                	.insn	2, 0xc801
     4f6:	0101                	.insn	2, 0x0101
     4f8:	045e                	.insn	2, 0x045e
     4fa:	01c8                	.insn	2, 0x01c8
     4fc:	01cc                	.insn	2, 0x01cc
     4fe:	5f01                	.insn	2, 0x5f01
     500:	cc04                	.insn	2, 0xcc04
     502:	ec01                	.insn	2, 0xec01
     504:	0101                	.insn	2, 0x0101
     506:	045e                	.insn	2, 0x045e
     508:	06a0                	.insn	2, 0x06a0
     50a:	06c0                	.insn	2, 0x06c0
     50c:	6101                	.insn	2, 0x6101
     50e:	0400                	.insn	2, 0x0400
     510:	02ac                	.insn	2, 0x02ac
     512:	02b0                	.insn	2, 0x02b0
     514:	3002                	.insn	2, 0x3002
     516:	049f 02b0 0388      	.insn	6, 0x038802b0049f
     51c:	5b01                	.insn	2, 0x5b01
     51e:	fc04                	.insn	2, 0xfc04
     520:	8406                	.insn	2, 0x8406
     522:	9f300207          	.insn	4, 0x9f300207
     526:	ac04                	.insn	2, 0xac04
     528:	0207c007          	.insn	4, 0x0207c007
     52c:	e8049f33          	.insn	4, 0xe8049f33
     530:	0207f407          	.insn	4, 0x0207f407
     534:	f4049f33          	.insn	4, 0xf4049f33
     538:	01089807          	.insn	4, 0x01089807
     53c:	08f8045b          	.insn	4, 0x08f8045b
     540:	0994                	.insn	2, 0x0994
     542:	5b01                	.insn	2, 0x5b01
     544:	9804                	.insn	2, 0x9804
     546:	9c0e                	.insn	2, 0x9c0e
     548:	010e                	.insn	2, 0x010e
     54a:	8404005b          	.insn	4, 0x8404005b
     54e:	dc02                	.insn	2, 0xdc02
     550:	0602                	.insn	2, 0x0602
     552:	007d                	.insn	2, 0x007d
     554:	ff08                	.insn	2, 0xff08
     556:	9f1a                	.insn	2, 0x9f1a
     558:	c004                	.insn	2, 0xc004
     55a:	9806                	.insn	2, 0x9806
     55c:	0608                	.insn	2, 0x0608
     55e:	007d                	.insn	2, 0x007d
     560:	ff08                	.insn	2, 0xff08
     562:	9f1a                	.insn	2, 0x9f1a
     564:	f804                	.insn	2, 0xf804
     566:	9808                	.insn	2, 0x9808
     568:	0609                	.insn	2, 0x0609
     56a:	007d                	.insn	2, 0x007d
     56c:	ff08                	.insn	2, 0xff08
     56e:	9f1a                	.insn	2, 0x9f1a
     570:	9804                	.insn	2, 0x9804
     572:	9c0e                	.insn	2, 0x9c0e
     574:	060e                	.insn	2, 0x060e
     576:	007d                	.insn	2, 0x007d
     578:	ff08                	.insn	2, 0xff08
     57a:	9f1a                	.insn	2, 0x9f1a
     57c:	0400                	.insn	2, 0x0400
     57e:	0280                	.insn	2, 0x0280
     580:	02a8                	.insn	2, 0x02a8
     582:	0a008c07          	.insn	4, 0x0a008c07
     586:	ffff                	.insn	2, 0xffff
     588:	9f1a                	.insn	2, 0x9f1a
     58a:	a804                	.insn	2, 0xa804
     58c:	ac02                	.insn	2, 0xac02
     58e:	0802                	.insn	2, 0x0802
     590:	ff8c                	.insn	2, 0xff8c
     592:	ffff0a07          	.insn	4, 0xffff0a07
     596:	9f1a                	.insn	2, 0x9f1a
     598:	ac04                	.insn	2, 0xac04
     59a:	c402                	.insn	2, 0xc402
     59c:	0102                	.insn	2, 0x0102
     59e:	046c                	.insn	2, 0x046c
     5a0:	06c0                	.insn	2, 0x06c0
     5a2:	06d4                	.insn	2, 0x06d4
     5a4:	0a008c07          	.insn	4, 0x0a008c07
     5a8:	ffff                	.insn	2, 0xffff
     5aa:	9f1a                	.insn	2, 0x9f1a
     5ac:	fc04                	.insn	2, 0xfc04
     5ae:	8406                	.insn	2, 0x8406
     5b0:	046c0107          	.insn	4, 0x046c0107
     5b4:	0784                	.insn	2, 0x0784
     5b6:	0790                	.insn	2, 0x0790
     5b8:	0a008c07          	.insn	4, 0x0a008c07
     5bc:	ffff                	.insn	2, 0xffff
     5be:	9f1a                	.insn	2, 0x9f1a
     5c0:	a404                	.insn	2, 0xa404
     5c2:	0707b407          	.insn	4, 0x0707b407
     5c6:	008c                	.insn	2, 0x008c
     5c8:	ff0a                	.insn	2, 0xff0a
     5ca:	049f1aff 07cc07c0 	.insn	12, 0x0a008c0707cc07c0049f1aff
     5d2:	0a008c07 
     5d6:	ffff                	.insn	2, 0xffff
     5d8:	9f1a                	.insn	2, 0x9f1a
     5da:	d404                	.insn	2, 0xd404
     5dc:	0707e007          	.insn	4, 0x0707e007
     5e0:	008c                	.insn	2, 0x008c
     5e2:	ff0a                	.insn	2, 0xff0a
     5e4:	009f1aff 9801fc04 	.insn	12, 0x045f01029801fc04009f1aff
     5ec:	045f0102 
     5f0:	0298                	.insn	2, 0x0298
     5f2:	02a4                	.insn	2, 0x02a4
     5f4:	6f01                	.insn	2, 0x6f01
     5f6:	a404                	.insn	2, 0xa404
     5f8:	ac02                	.insn	2, 0xac02
     5fa:	0502                	.insn	2, 0x0502
     5fc:	2433008f          	.insn	4, 0x2433008f
     600:	049f 05f4 05f8      	.insn	6, 0x05f805f4049f
     606:	7f06                	.insn	2, 0x7f06
     608:	7b00                	.insn	2, 0x7b00
     60a:	2100                	.insn	2, 0x2100
     60c:	049f 05f8 0684      	.insn	6, 0x068405f8049f
     612:	5f01                	.insn	2, 0x5f01
     614:	8c04                	.insn	2, 0x8c04
     616:	9006                	.insn	2, 0x9006
     618:	0606                	.insn	2, 0x0606
     61a:	007e                	.insn	2, 0x007e
     61c:	007f 9f21 9004 a006 	.insn	10, 0x0106a00690049f21007f
     624:	0106 
     626:	045f 06c0 06c4      	.insn	6, 0x06c406c0045f
     62c:	5f01                	.insn	2, 0x5f01
     62e:	c404                	.insn	2, 0xc404
     630:	f006                	.insn	2, 0xf006
     632:	0106                	.insn	2, 0x0106
     634:	06fc046f          	jal	s0,c0ea2 <_tbss_end+0xc0ea2>
     638:	0784                	.insn	2, 0x0784
     63a:	6d01                	.insn	2, 0x6d01
     63c:	8404                	.insn	2, 0x8404
     63e:	0107a007          	flw	ft0,16(a5)
     642:	07a0046f          	jal	s0,6bc <_tbss_end+0x6bc>
     646:	07a4                	.insn	2, 0x07a4
     648:	3002                	.insn	2, 0x3002
     64a:	049f 07a4 07c0      	.insn	6, 0x07c007a4049f
     650:	5f01                	.insn	2, 0x5f01
     652:	c004                	.insn	2, 0xc004
     654:	0107c407          	.insn	4, 0x0107c407
     658:	07c4046f          	jal	s0,406d4 <_tbss_end+0x406d4>
     65c:	07d4                	.insn	2, 0x07d4
     65e:	3002                	.insn	2, 0x3002
     660:	049f 07d4 07d8      	.insn	6, 0x07d807d4049f
     666:	5f01                	.insn	2, 0x5f01
     668:	d804                	.insn	2, 0xd804
     66a:	0207e807          	.insn	4, 0x0207e807
     66e:	9f30                	.insn	2, 0x9f30
     670:	e804                	.insn	2, 0xe804
     672:	0107f407          	.insn	4, 0x0107f407
     676:	045f 08ec 08f8      	.insn	6, 0x08f808ec045f
     67c:	5e01                	.insn	2, 0x5e01
     67e:	8c04                	.insn	2, 0x8c04
     680:	9809                	.insn	2, 0x9809
     682:	0109                	.insn	2, 0x0109
     684:	0061                	.insn	2, 0x0061
     686:	8004                	.insn	2, 0x8004
     688:	9002                	.insn	2, 0x9002
     68a:	0102                	.insn	2, 0x0102
     68c:	045a                	.insn	2, 0x045a
     68e:	0290                	.insn	2, 0x0290
     690:	0294                	.insn	2, 0x0294
     692:	40007a07          	.insn	4, 0x40007a07
     696:	2440                	.insn	2, 0x2440
     698:	9f21                	.insn	2, 0x9f21
     69a:	a004                	.insn	2, 0xa004
     69c:	a402                	.insn	2, 0xa402
     69e:	0702                	.insn	2, 0x0702
     6a0:	007f 4342 2124 049f 	.insn	10, 0x02a4049f21244342007f
     6a8:	02a4 
     6aa:	02ac                	.insn	2, 0x02ac
     6ac:	5a01                	.insn	2, 0x5a01
     6ae:	e404                	.insn	2, 0xe404
     6b0:	f405                	.insn	2, 0xf405
     6b2:	0605                	.insn	2, 0x0605
     6b4:	007e                	.insn	2, 0x007e
     6b6:	007a                	.insn	2, 0x007a
     6b8:	9f21                	.insn	2, 0x9f21
     6ba:	f404                	.insn	2, 0xf404
     6bc:	9005                	.insn	2, 0x9005
     6be:	0106                	.insn	2, 0x0106
     6c0:	045a                	.insn	2, 0x045a
     6c2:	0690                	.insn	2, 0x0690
     6c4:	0694                	.insn	2, 0x0694
     6c6:	7a05                	.insn	2, 0x7a05
     6c8:	3100                	.insn	2, 0x3100
     6ca:	9f25                	.insn	2, 0x9f25
     6cc:	9404                	.insn	2, 0x9404
     6ce:	a006                	.insn	2, 0xa006
     6d0:	0106                	.insn	2, 0x0106
     6d2:	045a                	.insn	2, 0x045a
     6d4:	06c0                	.insn	2, 0x06c0
     6d6:	06e4                	.insn	2, 0x06e4
     6d8:	5a01                	.insn	2, 0x5a01
     6da:	ec04                	.insn	2, 0xec04
     6dc:	8406                	.insn	2, 0x8406
     6de:	046d0107          	.insn	4, 0x046d0107
     6e2:	0784                	.insn	2, 0x0784
     6e4:	07a0                	.insn	2, 0x07a0
     6e6:	5a01                	.insn	2, 0x5a01
     6e8:	a004                	.insn	2, 0xa004
     6ea:	0107a407          	flw	fs0,16(a5)
     6ee:	046d                	.insn	2, 0x046d
     6f0:	07a4                	.insn	2, 0x07a4
     6f2:	07c0                	.insn	2, 0x07c0
     6f4:	5a01                	.insn	2, 0x5a01
     6f6:	c004                	.insn	2, 0xc004
     6f8:	0107c807          	.insn	4, 0x0107c807
     6fc:	045f 07d4 07e8      	.insn	6, 0x07e807d4045f
     702:	6f01                	.insn	2, 0x6f01
     704:	e804                	.insn	2, 0xe804
     706:	0107f407          	.insn	4, 0x0107f407
     70a:	045a                	.insn	2, 0x045a
     70c:	0988                	.insn	2, 0x0988
     70e:	0998                	.insn	2, 0x0998
     710:	5e01                	.insn	2, 0x5e01
     712:	b804                	.insn	2, 0xb804
     714:	bc09                	.insn	2, 0xbc09
     716:	0909                	.insn	2, 0x0909
     718:	007a                	.insn	2, 0x007a
     71a:	ff11                	.insn	2, 0xff11
     71c:	ffff                	.insn	2, 0xffff
     71e:	009f1a77          	.insn	4, 0x009f1a77
     722:	e004                	.insn	2, 0xe004
     724:	a002                	.insn	2, 0xa002
     726:	0206                	.insn	2, 0x0206
     728:	9f30                	.insn	2, 0x9f30
     72a:	9804                	.insn	2, 0x9804
     72c:	b008                	.insn	2, 0xb008
     72e:	0108                	.insn	2, 0x0108
     730:	0e9c045b          	.insn	4, 0x0e9c045b
     734:	0eb0                	.insn	2, 0x0eb0
     736:	3302                	.insn	2, 0x3302
     738:	049f 0eb0 0ebc      	.insn	6, 0x0ebc0eb0049f
     73e:	5b01                	.insn	2, 0x5b01
     740:	c004                	.insn	2, 0xc004
     742:	cc0e                	.insn	2, 0xcc0e
     744:	010e                	.insn	2, 0x010e
     746:	b004005b          	.insn	4, 0xb004005b
     74a:	d002                	.insn	2, 0xd002
     74c:	0902                	.insn	2, 0x0902
     74e:	007c                	.insn	2, 0x007c
     750:	007d                	.insn	2, 0x007d
     752:	1aff0827          	.insn	4, 0x1aff0827
     756:	049f 08f8 0988      	.insn	6, 0x098808f8049f
     75c:	7c09                	.insn	2, 0x7c09
     75e:	7d00                	.insn	2, 0x7d00
     760:	2700                	.insn	2, 0x2700
     762:	ff08                	.insn	2, 0xff08
     764:	9f1a                	.insn	2, 0x9f1a
     766:	9c04                	.insn	2, 0x9c04
     768:	b00e                	.insn	2, 0xb00e
     76a:	020e                	.insn	2, 0x020e
     76c:	9f30                	.insn	2, 0x9f30
     76e:	0400                	.insn	2, 0x0400
     770:	02c4                	.insn	2, 0x02c4
     772:	0698                	.insn	2, 0x0698
     774:	6c01                	.insn	2, 0x6c01
     776:	9804                	.insn	2, 0x9804
     778:	a006                	.insn	2, 0xa006
     77a:	0106                	.insn	2, 0x0106
     77c:	046e                	.insn	2, 0x046e
     77e:	07f4                	.insn	2, 0x07f4
     780:	08b4                	.insn	2, 0x08b4
     782:	6c01                	.insn	2, 0x6c01
     784:	b404                	.insn	2, 0xb404
     786:	f808                	.insn	2, 0xf808
     788:	0108                	.insn	2, 0x0108
     78a:	08f8045b          	.insn	4, 0x08f8045b
     78e:	0998                	.insn	2, 0x0998
     790:	6c01                	.insn	2, 0x6c01
     792:	9804                	.insn	2, 0x9804
     794:	bc09                	.insn	2, 0xbc09
     796:	0109                	.insn	2, 0x0109
     798:	09bc045b          	.insn	4, 0x09bc045b
     79c:	09c0                	.insn	2, 0x09c0
     79e:	8c04                	.insn	2, 0x8c04
     7a0:	0880                	.insn	2, 0x0880
     7a2:	049f 09c0 09d8      	.insn	6, 0x09d809c0049f
     7a8:	5b01                	.insn	2, 0x5b01
     7aa:	9c04                	.insn	2, 0x9c04
     7ac:	b40a                	.insn	2, 0xb40a
     7ae:	010a                	.insn	2, 0x010a
     7b0:	0ab4045b          	.insn	4, 0x0ab4045b
     7b4:	0abc                	.insn	2, 0x0abc
     7b6:	0a04                	.insn	2, 0x0a04
     7b8:	07ff 049f 0abc 0ac4 	.insn	10, 0x5b010ac40abc049f07ff
     7c0:	5b01 
     7c2:	c404                	.insn	2, 0xc404
     7c4:	c80a                	.insn	2, 0xc80a
     7c6:	040a                	.insn	2, 0x040a
     7c8:	fe0a                	.insn	2, 0xfe0a
     7ca:	d4049f07          	.insn	4, 0xd4049f07
     7ce:	c80a                	.insn	2, 0xc80a
     7d0:	045b010b          	.insn	4, 0x045b010b
     7d4:	0bc8                	.insn	2, 0x0bc8
     7d6:	0bf8                	.insn	2, 0x0bf8
     7d8:	5e01                	.insn	2, 0x5e01
     7da:	b804                	.insn	2, 0xb804
     7dc:	e80c                	.insn	2, 0xe80c
     7de:	010c                	.insn	2, 0x010c
     7e0:	045e                	.insn	2, 0x045e
     7e2:	0ce8                	.insn	2, 0x0ce8
     7e4:	0cec                	.insn	2, 0x0cec
     7e6:	fc020b07          	.insn	4, 0xfc020b07
     7ea:	008c                	.insn	2, 0x008c
     7ec:	9f1c                	.insn	2, 0x9f1c
     7ee:	8404                	.insn	2, 0x8404
     7f0:	940d                	.insn	2, 0x940d
     7f2:	020d                	.insn	2, 0x020d
     7f4:	9f31                	.insn	2, 0x9f31
     7f6:	a804                	.insn	2, 0xa804
     7f8:	f40d                	.insn	2, 0xf40d
     7fa:	020d                	.insn	2, 0x020d
     7fc:	9f30                	.insn	2, 0x9f30
     7fe:	fc04                	.insn	2, 0xfc04
     800:	980d                	.insn	2, 0x980d
     802:	020e                	.insn	2, 0x020e
     804:	9f30                	.insn	2, 0x9f30
     806:	9804                	.insn	2, 0x9804
     808:	9c0e                	.insn	2, 0x9c0e
     80a:	010e                	.insn	2, 0x010e
     80c:	046c                	.insn	2, 0x046c
     80e:	0e9c                	.insn	2, 0x0e9c
     810:	0eb0                	.insn	2, 0x0eb0
     812:	0a04                	.insn	2, 0x0a04
     814:	07ff 049f 0eb0 0ecc 	.insn	10, 0x6c010ecc0eb0049f07ff
     81c:	6c01 
     81e:	0400                	.insn	2, 0x0400
     820:	05f8                	.insn	2, 0x05f8
     822:	0684                	.insn	2, 0x0684
     824:	5f01                	.insn	2, 0x5f01
     826:	8c04                	.insn	2, 0x8c04
     828:	9006                	.insn	2, 0x9006
     82a:	0606                	.insn	2, 0x0606
     82c:	007e                	.insn	2, 0x007e
     82e:	007f 9f21 9004 a006 	.insn	10, 0x0106a00690049f21007f
     836:	0106 
     838:	045f 08ec 08f8      	.insn	6, 0x08f808ec045f
     83e:	5e01                	.insn	2, 0x5e01
     840:	f404                	.insn	2, 0xf404
     842:	010cb40b          	.insn	4, 0x010cb40b
     846:	045f 0ce4 0d84      	.insn	6, 0x0d840ce4045f
     84c:	5f01                	.insn	2, 0x5f01
     84e:	8404                	.insn	2, 0x8404
     850:	940d                	.insn	2, 0x940d
     852:	020d                	.insn	2, 0x020d
     854:	9f30                	.insn	2, 0x9f30
     856:	a804                	.insn	2, 0xa804
     858:	b00d                	.insn	2, 0xb00d
     85a:	010d                	.insn	2, 0x010d
     85c:	045f 0db4 0dc0      	.insn	6, 0x0dc00db4045f
     862:	5f01                	.insn	2, 0x5f01
     864:	c804                	.insn	2, 0xc804
     866:	e80d                	.insn	2, 0xe80d
     868:	020d                	.insn	2, 0x020d
     86a:	9f31                	.insn	2, 0x9f31
     86c:	e804                	.insn	2, 0xe804
     86e:	ec0d                	.insn	2, 0xec0d
     870:	010d                	.insn	2, 0x010d
     872:	045f 0dfc 0e98      	.insn	6, 0x0e980dfc045f
     878:	3102                	.insn	2, 0x3102
     87a:	049f 0e9c 0eb0      	.insn	6, 0x0eb00e9c049f
     880:	3002                	.insn	2, 0x3002
     882:	009f f804 9005      	.insn	6, 0x9005f804009f
     888:	0106                	.insn	2, 0x0106
     88a:	045a                	.insn	2, 0x045a
     88c:	0690                	.insn	2, 0x0690
     88e:	0694                	.insn	2, 0x0694
     890:	7a05                	.insn	2, 0x7a05
     892:	3100                	.insn	2, 0x3100
     894:	9f25                	.insn	2, 0x9f25
     896:	9404                	.insn	2, 0x9404
     898:	a006                	.insn	2, 0xa006
     89a:	0106                	.insn	2, 0x0106
     89c:	045a                	.insn	2, 0x045a
     89e:	09b8                	.insn	2, 0x09b8
     8a0:	09bc                	.insn	2, 0x09bc
     8a2:	7a09                	.insn	2, 0x7a09
     8a4:	1100                	.insn	2, 0x1100
     8a6:	ffff                	.insn	2, 0xffff
     8a8:	77ff                	.insn	2, 0x77ff
     8aa:	9f1a                	.insn	2, 0x9f1a
     8ac:	f804                	.insn	2, 0xf804
     8ae:	010cb00b          	.insn	4, 0x010cb00b
     8b2:	045e                	.insn	2, 0x045e
     8b4:	0cb4                	.insn	2, 0x0cb4
     8b6:	0cb8                	.insn	2, 0x0cb8
     8b8:	5e01                	.insn	2, 0x5e01
     8ba:	e404                	.insn	2, 0xe404
     8bc:	ec0c                	.insn	2, 0xec0c
     8be:	020c                	.insn	2, 0x020c
     8c0:	9f30                	.insn	2, 0x9f30
     8c2:	ec04                	.insn	2, 0xec04
     8c4:	840c                	.insn	2, 0x840c
     8c6:	010d                	.insn	2, 0x010d
     8c8:	045e                	.insn	2, 0x045e
     8ca:	0d84                	.insn	2, 0x0d84
     8cc:	0d94                	.insn	2, 0x0d94
     8ce:	3002                	.insn	2, 0x3002
     8d0:	049f 0da8 0dc0      	.insn	6, 0x0dc00da8049f
     8d6:	5e01                	.insn	2, 0x5e01
     8d8:	c804                	.insn	2, 0xc804
     8da:	f40d                	.insn	2, 0xf40d
     8dc:	020d                	.insn	2, 0x020d
     8de:	9f30                	.insn	2, 0x9f30
     8e0:	fc04                	.insn	2, 0xfc04
     8e2:	980d                	.insn	2, 0x980d
     8e4:	020e                	.insn	2, 0x020e
     8e6:	9f30                	.insn	2, 0x9f30
     8e8:	9c04                	.insn	2, 0x9c04
     8ea:	b00e                	.insn	2, 0xb00e
     8ec:	040e                	.insn	2, 0x040e
     8ee:	3f40                	.insn	2, 0x3f40
     8f0:	9f24                	.insn	2, 0x9f24
     8f2:	0400                	.insn	2, 0x0400
     8f4:	7c78                	.insn	2, 0x7c78
     8f6:	5b01                	.insn	2, 0x5b01
     8f8:	7c04                	.insn	2, 0x7c04
     8fa:	01ac                	.insn	2, 0x01ac
     8fc:	6001                	.insn	2, 0x6001
     8fe:	b004                	.insn	2, 0xb004
     900:	bc01                	.insn	2, 0xbc01
     902:	0101                	.insn	2, 0x0101
     904:	045f 01bc 01cc      	.insn	6, 0x01cc01bc045f
     90a:	6001                	.insn	2, 0x6001
     90c:	0400                	.insn	2, 0x0400
     90e:	06d0                	.insn	2, 0x06d0
     910:	06d4                	.insn	2, 0x06d4
     912:	5b01                	.insn	2, 0x5b01
     914:	d404                	.insn	2, 0xd404
     916:	f406                	.insn	2, 0xf406
     918:	0106                	.insn	2, 0x0106
     91a:	046c                	.insn	2, 0x046c
     91c:	0788                	.insn	2, 0x0788
     91e:	0794                	.insn	2, 0x0794
     920:	5f01                	.insn	2, 0x5f01
     922:	9404                	.insn	2, 0x9404
     924:	0107a407          	flw	fs0,16(a5)
     928:	006c                	.insn	2, 0x006c
     92a:	9004                	.insn	2, 0x9004
     92c:	9004                	.insn	2, 0x9004
     92e:	0105                	.insn	2, 0x0105
     930:	005f f804 8c03      	.insn	6, 0x8c03f804005f
     936:	0105                	.insn	2, 0x0105
     938:	d004006f          	j	fff40e38 <__global_pointer$+0x7ff3d570>
     93c:	a004                	.insn	2, 0xa004
     93e:	0106                	.insn	2, 0x0106
     940:	0059                	.insn	2, 0x0059
     942:	b804                	.insn	2, 0xb804
     944:	a804                	.insn	2, 0xa804
     946:	0105                	.insn	2, 0x0105
     948:	0061                	.insn	2, 0x0061
     94a:	fc04                	.insn	2, 0xfc04
     94c:	a802                	.insn	2, 0xa802
     94e:	045f0103          	lb	sp,69(t5)
     952:	03a8                	.insn	2, 0x03a8
     954:	03c8                	.insn	2, 0x03c8
     956:	8206                	.insn	2, 0x8206
     958:	8100                	.insn	2, 0x8100
     95a:	1e00                	.insn	2, 0x1e00
     95c:	009f fc04 8802      	.insn	6, 0x8802fc04009f
     962:	00790603          	lb	a2,7(s2)
     966:	0081                	.insn	2, 0x0081
     968:	9f1e                	.insn	2, 0x9f1e
     96a:	8804                	.insn	2, 0x8804
     96c:	01038c03          	lb	s8,16(t2)
     970:	038c045b          	.insn	4, 0x038c045b
     974:	0394                	.insn	2, 0x0394
     976:	7906                	.insn	2, 0x7906
     978:	8100                	.insn	2, 0x8100
     97a:	1e00                	.insn	2, 0x1e00
     97c:	049f 0394 03a4      	.insn	6, 0x03a40394049f
     982:	6d01                	.insn	2, 0x6d01
     984:	a404                	.insn	2, 0xa404
     986:	0e03a803          	lw	a6,224(t2)
     98a:	0079                	.insn	2, 0x0079
     98c:	0081                	.insn	2, 0x0081
     98e:	7f1e                	.insn	2, 0x7f1e
     990:	4000                	.insn	2, 0x4000
     992:	2225                	.insn	2, 0x2225
     994:	0078                	.insn	2, 0x0078
     996:	9f22                	.insn	2, 0x9f22
     998:	a804                	.insn	2, 0xa804
     99a:	1103ac03          	lw	s8,272(t2)
     99e:	0079                	.insn	2, 0x0079
     9a0:	0081                	.insn	2, 0x0081
     9a2:	821e                	.insn	2, 0x821e
     9a4:	8100                	.insn	2, 0x8100
     9a6:	1e00                	.insn	2, 0x1e00
     9a8:	2540                	.insn	2, 0x2540
     9aa:	7822                	.insn	2, 0x7822
     9ac:	2200                	.insn	2, 0x2200
     9ae:	049f 03ac 03c8      	.insn	6, 0x03c803ac049f
     9b4:	7914                	.insn	2, 0x7914
     9b6:	8100                	.insn	2, 0x8100
     9b8:	1e00                	.insn	2, 0x1e00
     9ba:	0075                	.insn	2, 0x0075
     9bc:	0082                	.insn	2, 0x0082
     9be:	221e                	.insn	2, 0x221e
     9c0:	0082                	.insn	2, 0x0082
     9c2:	0081                	.insn	2, 0x0081
     9c4:	401e                	.insn	2, 0x401e
     9c6:	2225                	.insn	2, 0x2225
     9c8:	009f 8004 ac03      	.insn	6, 0xac038004009f
     9ce:	04580103          	lb	sp,69(a6)
     9d2:	03ac                	.insn	2, 0x03ac
     9d4:	03d4                	.insn	2, 0x03d4
     9d6:	7506                	.insn	2, 0x7506
     9d8:	8200                	.insn	2, 0x8200
     9da:	1e00                	.insn	2, 0x1e00
     9dc:	009f 9404 a003      	.insn	6, 0xa0039404009f
     9e2:	0106                	.insn	2, 0x0106
     9e4:	e0040057          	.insn	4, 0xe0040057
     9e8:	f402                	.insn	2, 0xf402
     9ea:	0102                	.insn	2, 0x0102
     9ec:	0061                	.insn	2, 0x0061
     9ee:	f404                	.insn	2, 0xf404
     9f0:	f805                	.insn	2, 0xf805
     9f2:	0605                	.insn	2, 0x0605
     9f4:	007f 007b 9f21 f804 	.insn	10, 0x8405f8049f21007b007f
     9fc:	8405 
     9fe:	0106                	.insn	2, 0x0106
     a00:	045f 068c 0690      	.insn	6, 0x0690068c045f
     a06:	7e06                	.insn	2, 0x7e06
     a08:	7f00                	.insn	2, 0x7f00
     a0a:	2100                	.insn	2, 0x2100
     a0c:	049f 0690 06a0      	.insn	6, 0x06a00690049f
     a12:	5f01                	.insn	2, 0x5f01
     a14:	0400                	.insn	2, 0x0400
     a16:	02ec                	.insn	2, 0x02ec
     a18:	03d4                	.insn	2, 0x03d4
     a1a:	5501                	.insn	2, 0x5501
     a1c:	0400                	.insn	2, 0x0400
     a1e:	02f0                	.insn	2, 0x02f0
     a20:	04a0                	.insn	2, 0x04a0
     a22:	5901                	.insn	2, 0x5901
     a24:	0400                	.insn	2, 0x0400
     a26:	03bc                	.insn	2, 0x03bc
     a28:	03f4                	.insn	2, 0x03f4
     a2a:	6401                	.insn	2, 0x6401
     a2c:	0400                	.insn	2, 0x0400
     a2e:	03bc                	.insn	2, 0x03bc
     a30:	03c8                	.insn	2, 0x03c8
     a32:	7806                	.insn	2, 0x7806
     a34:	8100                	.insn	2, 0x8100
     a36:	1e00                	.insn	2, 0x1e00
     a38:	049f 03c8 03cc      	.insn	6, 0x03cc03c8049f
     a3e:	6101                	.insn	2, 0x6101
     a40:	d404                	.insn	2, 0xd404
     a42:	01048803          	lb	a6,16(s1)
     a46:	005d                	.insn	2, 0x005d
     a48:	c004                	.insn	2, 0xc004
     a4a:	0103dc03          	lhu	s8,16(t2)
     a4e:	005f d404 8003      	.insn	6, 0x8003d404005f
     a54:	0104                	.insn	2, 0x0104
     a56:	0055                	.insn	2, 0x0055
     a58:	e404                	.insn	2, 0xe404
     a5a:	f405                	.insn	2, 0xf405
     a5c:	0605                	.insn	2, 0x0605
     a5e:	007e                	.insn	2, 0x007e
     a60:	007a                	.insn	2, 0x007a
     a62:	9f21                	.insn	2, 0x9f21
     a64:	f404                	.insn	2, 0xf404
     a66:	9005                	.insn	2, 0x9005
     a68:	0106                	.insn	2, 0x0106
     a6a:	045a                	.insn	2, 0x045a
     a6c:	0690                	.insn	2, 0x0690
     a6e:	0694                	.insn	2, 0x0694
     a70:	7a05                	.insn	2, 0x7a05
     a72:	3100                	.insn	2, 0x3100
     a74:	9f25                	.insn	2, 0x9f25
     a76:	9404                	.insn	2, 0x9404
     a78:	a006                	.insn	2, 0xa006
     a7a:	0106                	.insn	2, 0x0106
     a7c:	005a                	.insn	2, 0x005a
     a7e:	b804                	.insn	2, 0xb804
     a80:	0103d403          	lhu	s0,16(t2)
     a84:	0055                	.insn	2, 0x0055
     a86:	b804                	.insn	2, 0xb804
     a88:	0104e403          	.insn	4, 0x0104e403
     a8c:	0058                	.insn	2, 0x0058
     a8e:	9404                	.insn	2, 0x9404
     a90:	cc04                	.insn	2, 0xcc04
     a92:	0104                	.insn	2, 0x0104
     a94:	0064                	.insn	2, 0x0064
     a96:	9404                	.insn	2, 0x9404
     a98:	a004                	.insn	2, 0xa004
     a9a:	0604                	.insn	2, 0x0604
     a9c:	0079                	.insn	2, 0x0079
     a9e:	9f1e0083          	lb	ra,-1551(t3)
     aa2:	a004                	.insn	2, 0xa004
     aa4:	a404                	.insn	2, 0xa404
     aa6:	0104                	.insn	2, 0x0104
     aa8:	0459                	.insn	2, 0x0459
     aaa:	04a8                	.insn	2, 0x04a8
     aac:	04c4                	.insn	2, 0x04c4
     aae:	5e01                	.insn	2, 0x5e01
     ab0:	c404                	.insn	2, 0xc404
     ab2:	cc04                	.insn	2, 0xcc04
     ab4:	0804                	.insn	2, 0x0804
     ab6:	0084                	.insn	2, 0x0084
     ab8:	2540                	.insn	2, 0x2540
     aba:	0079                	.insn	2, 0x0079
     abc:	9f22                	.insn	2, 0x9f22
     abe:	0400                	.insn	2, 0x0400
     ac0:	0494                	.insn	2, 0x0494
     ac2:	04c0                	.insn	2, 0x04c0
     ac4:	5d01                	.insn	2, 0x5d01
     ac6:	0400                	.insn	2, 0x0400
     ac8:	0498                	.insn	2, 0x0498
     aca:	04bc                	.insn	2, 0x04bc
     acc:	6201                	.insn	2, 0x6201
     ace:	0400                	.insn	2, 0x0400
     ad0:	0490                	.insn	2, 0x0490
     ad2:	04e0                	.insn	2, 0x04e0
     ad4:	5501                	.insn	2, 0x5501
     ad6:	0400                	.insn	2, 0x0400
     ad8:	0490                	.insn	2, 0x0490
     ada:	04a0                	.insn	2, 0x04a0
     adc:	5901                	.insn	2, 0x5901
     ade:	0400                	.insn	2, 0x0400
     ae0:	04d4                	.insn	2, 0x04d4
     ae2:	04fc                	.insn	2, 0x04fc
     ae4:	6401                	.insn	2, 0x6401
     ae6:	0400                	.insn	2, 0x0400
     ae8:	04d4                	.insn	2, 0x04d4
     aea:	04e4                	.insn	2, 0x04e4
     aec:	7806                	.insn	2, 0x7806
     aee:	8300                	.insn	2, 0x8300
     af0:	1e00                	.insn	2, 0x1e00
     af2:	049f 04e4 04e8      	.insn	6, 0x04e804e4049f
     af8:	5801                	.insn	2, 0x5801
     afa:	ec04                	.insn	2, 0xec04
     afc:	a004                	.insn	2, 0xa004
     afe:	0106                	.insn	2, 0x0106
     b00:	0058                	.insn	2, 0x0058
     b02:	d804                	.insn	2, 0xd804
     b04:	e404                	.insn	2, 0xe404
     b06:	0105                	.insn	2, 0x0105
     b08:	005a                	.insn	2, 0x005a
     b0a:	e004                	.insn	2, 0xe004
     b0c:	a004                	.insn	2, 0xa004
     b0e:	0106                	.insn	2, 0x0106
     b10:	0055                	.insn	2, 0x0055
     b12:	d004                	.insn	2, 0xd004
     b14:	e004                	.insn	2, 0xe004
     b16:	0104                	.insn	2, 0x0104
     b18:	0055                	.insn	2, 0x0055
     b1a:	d004                	.insn	2, 0xd004
     b1c:	e404                	.insn	2, 0xe404
     b1e:	0104                	.insn	2, 0x0104
     b20:	0058                	.insn	2, 0x0058
     b22:	8404                	.insn	2, 0x8404
     b24:	9005                	.insn	2, 0x9005
     b26:	1105                	.insn	2, 0x1105
     b28:	4b40007b          	.insn	4, 0x4b40007b
     b2c:	2224                	.insn	2, 0x2224
     b2e:	007f 4b40 2224 082d 	.insn	10, 0x1aff082d22244b40007f
     b36:	1aff 
     b38:	009f 8c04 9805      	.insn	6, 0x98058c04009f
     b3e:	1105                	.insn	2, 0x1105
     b40:	4b40008f          	.insn	4, 0x4b40008f
     b44:	2224                	.insn	2, 0x2224
     b46:	007e                	.insn	2, 0x007e
     b48:	4b40                	.insn	2, 0x4b40
     b4a:	2224                	.insn	2, 0x2224
     b4c:	082d                	.insn	2, 0x082d
     b4e:	049f1aff 05a00598 	.insn	12, 0x30007d0805a00598049f1aff
     b56:	30007d08 
     b5a:	082e                	.insn	2, 0x082e
     b5c:	009f1aff bc05b804 	.insn	12, 0x00811f05bc05b804009f1aff
     b64:	00811f05 
     b68:	4b40                	.insn	2, 0x4b40
     b6a:	2224                	.insn	2, 0x2224
     b6c:	007f 4b40 2224 7b2d 	.insn	10, 0x40007b2d22244b40007f
     b74:	4000 
     b76:	8122244b          	fnmsub.s	fs0,ft4,fs2,fa6,rdn
     b7a:	4000                	.insn	2, 0x4000
     b7c:	2d22244b          	.insn	4, 0x2d22244b
     b80:	0821                	.insn	2, 0x0821
     b82:	049f1aff 05c005bc 	.insn	12, 0x30007e1605c005bc049f1aff
     b8a:	30007e16 
     b8e:	7b2e                	.insn	2, 0x7b2e
     b90:	4000                	.insn	2, 0x4000
     b92:	8122244b          	fnmsub.s	fs0,ft4,fs2,fa6,rdn
     b96:	4000                	.insn	2, 0x4000
     b98:	2d22244b          	.insn	4, 0x2d22244b
     b9c:	0821                	.insn	2, 0x0821
     b9e:	049f1aff 05c405c0 	.insn	12, 0x30007e0d05c405c0049f1aff
     ba6:	30007e0d 
     baa:	812e                	.insn	2, 0x812e
     bac:	3000                	.insn	2, 0x3000
     bae:	212e                	.insn	2, 0x212e
     bb0:	ff08                	.insn	2, 0xff08
     bb2:	9f1a                	.insn	2, 0x9f1a
     bb4:	0400                	.insn	2, 0x0400
     bb6:	05b8                	.insn	2, 0x05b8
     bb8:	06a0                	.insn	2, 0x06a0
     bba:	3902                	.insn	2, 0x3902
     bbc:	009f b804 a005      	.insn	6, 0xa005b804009f
     bc2:	0206                	.insn	2, 0x0206
     bc4:	04009f47          	.insn	4, 0x04009f47
     bc8:	05b8                	.insn	2, 0x05b8
     bca:	06a0                	.insn	2, 0x06a0
     bcc:	3102                	.insn	2, 0x3102
     bce:	009f b804 f405      	.insn	6, 0xf405b804009f
     bd4:	0205                	.insn	2, 0x0205
     bd6:	9f31                	.insn	2, 0x9f31
     bd8:	0400                	.insn	2, 0x0400
     bda:	05b8                	.insn	2, 0x05b8
     bdc:	05d4                	.insn	2, 0x05d4
     bde:	8f08                	.insn	2, 0x8f08
     be0:	3900                	.insn	2, 0x3900
     be2:	8d24                	.insn	2, 0x8d24
     be4:	2100                	.insn	2, 0x2100
     be6:	049f 05d4 05dc      	.insn	6, 0x05dc05d4049f
     bec:	5f01                	.insn	2, 0x5f01
     bee:	dc04                	.insn	2, 0xdc04
     bf0:	e005                	.insn	2, 0xe005
     bf2:	0805                	.insn	2, 0x0805
     bf4:	2439008f          	.insn	4, 0x2439008f
     bf8:	008d                	.insn	2, 0x008d
     bfa:	9f21                	.insn	2, 0x9f21
     bfc:	0400                	.insn	2, 0x0400
     bfe:	08f4                	.insn	2, 0x08f4
     c00:	08f8                	.insn	2, 0x08f8
     c02:	5e01                	.insn	2, 0x5e01
     c04:	0400                	.insn	2, 0x0400
     c06:	0adc                	.insn	2, 0x0adc
     c08:	0bc0                	.insn	2, 0x0bc0
     c0a:	3102                	.insn	2, 0x3102
     c0c:	049f 0bc0 0df4      	.insn	6, 0x0df40bc0049f
     c12:	6101                	.insn	2, 0x6101
     c14:	fc04                	.insn	2, 0xfc04
     c16:	980d                	.insn	2, 0x980d
     c18:	010e                	.insn	2, 0x010e
     c1a:	0061                	.insn	2, 0x0061
     c1c:	e404                	.insn	2, 0xe404
     c1e:	c00a                	.insn	2, 0xc00a
     c20:	9f30020b          	.insn	4, 0x9f30020b
     c24:	0400                	.insn	2, 0x0400
     c26:	0ba0                	.insn	2, 0x0ba0
     c28:	0ba4                	.insn	2, 0x0ba4
     c2a:	5e01                	.insn	2, 0x5e01
     c2c:	b404                	.insn	2, 0xb404
     c2e:	010bc00b          	.insn	4, 0x010bc00b
     c32:	005e                	.insn	2, 0x005e
     c34:	0ff8                	.insn	2, 0x0ff8
     c36:	0000                	.insn	2, 0x
     c38:	0005                	.insn	2, 0x0005
     c3a:	0004                	.insn	2, 0x0004
     c3c:	0000                	.insn	2, 0x
     c3e:	0000                	.insn	2, 0x
     c40:	0004                	.insn	2, 0x0004
     c42:	0648                	.insn	2, 0x0648
     c44:	935a                	.insn	2, 0x935a
     c46:	5b04                	.insn	2, 0x5b04
     c48:	48040493          	addi	s1,s0,1152
     c4c:	15b0                	.insn	2, 0x15b0
     c4e:	a306                	.insn	2, 0xa306
     c50:	260aa503          	lw	a0,608(s5)
     c54:	009f 0004 0650      	.insn	6, 0x06500004009f
     c5a:	935c                	.insn	2, 0x935c
     c5c:	5d04                	.insn	2, 0x5d04
     c5e:	50040493          	addi	s1,s0,1280
     c62:	15b0                	.insn	2, 0x15b0
     c64:	a306                	.insn	2, 0xa306
     c66:	260ca503          	lw	a0,608(s9)
     c6a:	009f 0004 0490      	.insn	6, 0x04900004009f
     c70:	3002                	.insn	2, 0x3002
     c72:	049f 0490 04a0      	.insn	6, 0x04a00490049f
     c78:	5f01                	.insn	2, 0x5f01
     c7a:	a004                	.insn	2, 0xa004
     c7c:	9c04                	.insn	2, 0x9c04
     c7e:	0205                	.insn	2, 0x0205
     c80:	9f30                	.insn	2, 0x9f30
     c82:	a404                	.insn	2, 0xa404
     c84:	dc05                	.insn	2, 0xdc05
     c86:	0206                	.insn	2, 0x0206
     c88:	9f30                	.insn	2, 0x9f30
     c8a:	dc04                	.insn	2, 0xdc04
     c8c:	e006                	.insn	2, 0xe006
     c8e:	0106                	.insn	2, 0x0106
     c90:	045f 06f8 0780      	.insn	6, 0x078006f8045f
     c96:	3002                	.insn	2, 0x3002
     c98:	049f 0780 079c      	.insn	6, 0x079c0780049f
     c9e:	5f01                	.insn	2, 0x5f01
     ca0:	9c04                	.insn	2, 0x9c04
     ca2:	020e9407          	.insn	4, 0x020e9407
     ca6:	9f30                	.insn	2, 0x9f30
     ca8:	9404                	.insn	2, 0x9404
     caa:	980e                	.insn	2, 0x980e
     cac:	010e                	.insn	2, 0x010e
     cae:	045f 0ea4 0eac      	.insn	6, 0x0eac0ea4045f
     cb4:	4002                	.insn	2, 0x4002
     cb6:	049f 0eb8 0ec0      	.insn	6, 0x0ec00eb8049f
     cbc:	3002                	.insn	2, 0x3002
     cbe:	049f 0ec0 0ecc      	.insn	6, 0x0ecc0ec0049f
     cc4:	5f01                	.insn	2, 0x5f01
     cc6:	dc04                	.insn	2, 0xdc04
     cc8:	e40e                	.insn	2, 0xe40e
     cca:	020e                	.insn	2, 0x020e
     ccc:	9f30                	.insn	2, 0x9f30
     cce:	e404                	.insn	2, 0xe404
     cd0:	f80e                	.insn	2, 0xf80e
     cd2:	010e                	.insn	2, 0x010e
     cd4:	045f 0ef8 1190      	.insn	6, 0x11900ef8045f
     cda:	3002                	.insn	2, 0x3002
     cdc:	049f 1190 11c0      	.insn	6, 0x11c01190049f
     ce2:	3102                	.insn	2, 0x3102
     ce4:	049f 11c0 1290      	.insn	6, 0x129011c0049f
     cea:	5f01                	.insn	2, 0x5f01
     cec:	9004                	.insn	2, 0x9004
     cee:	c812                	.insn	2, 0xc812
     cf0:	0212                	.insn	2, 0x0212
     cf2:	9f31                	.insn	2, 0x9f31
     cf4:	c804                	.insn	2, 0xc804
     cf6:	9812                	.insn	2, 0x9812
     cf8:	0114                	.insn	2, 0x0114
     cfa:	045f 1498 149c      	.insn	6, 0x149c1498045f
     d00:	7f05                	.insn	2, 0x7f05
     d02:	3100                	.insn	2, 0x3100
     d04:	9f21                	.insn	2, 0x9f21
     d06:	9c04                	.insn	2, 0x9c04
     d08:	a414                	.insn	2, 0xa414
     d0a:	0114                	.insn	2, 0x0114
     d0c:	045f 14a4 15ac      	.insn	6, 0x15ac14a4045f
     d12:	3002                	.insn	2, 0x3002
     d14:	049f 15ac 15b0      	.insn	6, 0x15b015ac049f
     d1a:	5f01                	.insn	2, 0x5f01
     d1c:	0400                	.insn	2, 0x0400
     d1e:	f844                	.insn	2, 0xf844
     d20:	045b0103          	lb	sp,69(s6)
     d24:	04a0                	.insn	2, 0x04a0
     d26:	059c                	.insn	2, 0x059c
     d28:	5b01                	.insn	2, 0x5b01
     d2a:	a404                	.insn	2, 0xa404
     d2c:	c405                	.insn	2, 0xc405
     d2e:	045b0107          	.insn	4, 0x045b0107
     d32:	07cc                	.insn	2, 0x07cc
     d34:	08d8                	.insn	2, 0x08d8
     d36:	5b01                	.insn	2, 0x5b01
     d38:	e004                	.insn	2, 0xe004
     d3a:	b008                	.insn	2, 0xb008
     d3c:	0109                	.insn	2, 0x0109
     d3e:	09d0045b          	.insn	4, 0x09d0045b
     d42:	0ab8                	.insn	2, 0x0ab8
     d44:	5b01                	.insn	2, 0x5b01
     d46:	9804                	.insn	2, 0x9804
     d48:	010bcc0b          	.insn	4, 0x010bcc0b
     d4c:	0ce0045b          	.insn	4, 0x0ce0045b
     d50:	0d84                	.insn	2, 0x0d84
     d52:	5b01                	.insn	2, 0x5b01
     d54:	a804                	.insn	2, 0xa804
     d56:	dc0d                	.insn	2, 0xdc0d
     d58:	010d                	.insn	2, 0x010d
     d5a:	0de0045b          	.insn	4, 0x0de0045b
     d5e:	0dec                	.insn	2, 0x0dec
     d60:	5b01                	.insn	2, 0x5b01
     d62:	f804                	.insn	2, 0xf804
     d64:	a80d                	.insn	2, 0xa80d
     d66:	010e                	.insn	2, 0x010e
     d68:	0eb8045b          	.insn	4, 0x0eb8045b
     d6c:	0ec8                	.insn	2, 0x0ec8
     d6e:	5b01                	.insn	2, 0x5b01
     d70:	dc04                	.insn	2, 0xdc04
     d72:	ec0e                	.insn	2, 0xec0e
     d74:	010e                	.insn	2, 0x010e
     d76:	0ef8045b          	.insn	4, 0x0ef8045b
     d7a:	0fa8                	.insn	2, 0x0fa8
     d7c:	5b01                	.insn	2, 0x5b01
     d7e:	8804                	.insn	2, 0x8804
     d80:	9410                	.insn	2, 0x9410
     d82:	0110                	.insn	2, 0x0110
     d84:	14a4045b          	.insn	4, 0x14a4045b
     d88:	14c4                	.insn	2, 0x14c4
     d8a:	5b01                	.insn	2, 0x5b01
     d8c:	dc04                	.insn	2, 0xdc04
     d8e:	ec14                	.insn	2, 0xec14
     d90:	0114                	.insn	2, 0x0114
     d92:	14f0045b          	.insn	4, 0x14f0045b
     d96:	15ac                	.insn	2, 0x15ac
     d98:	5b01                	.insn	2, 0x5b01
     d9a:	0400                	.insn	2, 0x0400
     d9c:	7c40                	.insn	2, 0x7c40
     d9e:	5f01                	.insn	2, 0x5f01
     da0:	8c04                	.insn	2, 0x8c04
     da2:	b401                	.insn	2, 0xb401
     da4:	0101                	.insn	2, 0x0101
     da6:	045f 01d8 01ec      	.insn	6, 0x01ec01d8045f
     dac:	5f01                	.insn	2, 0x5f01
     dae:	8404                	.insn	2, 0x8404
     db0:	dc02                	.insn	2, 0xdc02
     db2:	0102                	.insn	2, 0x0102
     db4:	045f 039c 0484      	.insn	6, 0x0484039c045f
     dba:	5f01                	.insn	2, 0x5f01
     dbc:	a004                	.insn	2, 0xa004
     dbe:	b004                	.insn	2, 0xb004
     dc0:	0104                	.insn	2, 0x0104
     dc2:	045f 04fc 0580      	.insn	6, 0x058004fc045f
     dc8:	5f01                	.insn	2, 0x5f01
     dca:	f404                	.insn	2, 0xf404
     dcc:	d005                	.insn	2, 0xd005
     dce:	0106                	.insn	2, 0x0106
     dd0:	045f 06f8 06fc      	.insn	6, 0x06fc06f8045f
     dd6:	5f01                	.insn	2, 0x5f01
     dd8:	9c04                	.insn	2, 0x9c04
     dda:	0107a007          	flw	ft0,16(a5)
     dde:	045f 07a0 07c4      	.insn	6, 0x07c407a0045f
     de4:	9f7f8003          	lb	zero,-1545(t6)
     de8:	cc04                	.insn	2, 0xcc04
     dea:	0307dc07          	.insn	4, 0x0307dc07
     dee:	7f80                	.insn	2, 0x7f80
     df0:	049f 07ec 07fc      	.insn	6, 0x07fc07ec049f
     df6:	9f7f8003          	lb	zero,-1545(t6)
     dfa:	b004                	.insn	2, 0xb004
     dfc:	d808                	.insn	2, 0xd808
     dfe:	0108                	.insn	2, 0x0108
     e00:	045f 08e0 09b0      	.insn	6, 0x09b008e0045f
     e06:	5f01                	.insn	2, 0x5f01
     e08:	d004                	.insn	2, 0xd004
     e0a:	dc09                	.insn	2, 0xdc09
     e0c:	010a                	.insn	2, 0x010a
     e0e:	045f 0af0 0b84      	.insn	6, 0x0b840af0045f
     e14:	5f01                	.insn	2, 0x5f01
     e16:	9804                	.insn	2, 0x9804
     e18:	010b9c0b          	.insn	4, 0x010b9c0b
     e1c:	045f 0ce0 0d90      	.insn	6, 0x0d900ce0045f
     e22:	5f01                	.insn	2, 0x5f01
     e24:	a804                	.insn	2, 0xa804
     e26:	b80d                	.insn	2, 0xb80d
     e28:	010d                	.insn	2, 0x010d
     e2a:	045f 0df8 0e88      	.insn	6, 0x0e880df8045f
     e30:	5f01                	.insn	2, 0x5f01
     e32:	b804                	.insn	2, 0xb804
     e34:	bc0e                	.insn	2, 0xbc0e
     e36:	010e                	.insn	2, 0x010e
     e38:	045f 0edc 0ee0      	.insn	6, 0x0ee00edc045f
     e3e:	5f01                	.insn	2, 0x5f01
     e40:	f804                	.insn	2, 0xf804
     e42:	a80e                	.insn	2, 0xa80e
     e44:	045f010f          	.insn	4, 0x045f010f
     e48:	1088                	.insn	2, 0x1088
     e4a:	1094                	.insn	2, 0x1094
     e4c:	5f01                	.insn	2, 0x5f01
     e4e:	bc04                	.insn	2, 0xbc04
     e50:	dc14                	.insn	2, 0xdc14
     e52:	0114                	.insn	2, 0x0114
     e54:	045f 14f0 1588      	.insn	6, 0x158814f0045f
     e5a:	5f01                	.insn	2, 0x5f01
     e5c:	9404                	.insn	2, 0x9404
     e5e:	9c15                	.insn	2, 0x9c15
     e60:	0115                	.insn	2, 0x0115
     e62:	045f 15a0 15a8      	.insn	6, 0x15a815a0045f
     e68:	5f01                	.insn	2, 0x5f01
     e6a:	0400                	.insn	2, 0x0400
     e6c:	a004                	.insn	2, 0xa004
     e6e:	0101                	.insn	2, 0x0101
     e70:	045a                	.insn	2, 0x045a
     e72:	01ac                	.insn	2, 0x01ac
     e74:	02c8                	.insn	2, 0x02c8
     e76:	5a01                	.insn	2, 0x5a01
     e78:	9c04                	.insn	2, 0x9c04
     e7a:	0103f803          	.insn	4, 0x0103f803
     e7e:	045a                	.insn	2, 0x045a
     e80:	04a0                	.insn	2, 0x04a0
     e82:	04e0                	.insn	2, 0x04e0
     e84:	5a01                	.insn	2, 0x5a01
     e86:	e004                	.insn	2, 0xe004
     e88:	f004                	.insn	2, 0xf004
     e8a:	0104                	.insn	2, 0x0104
     e8c:	045f 04fc 05e0      	.insn	6, 0x05e004fc045f
     e92:	5a01                	.insn	2, 0x5a01
     e94:	e804                	.insn	2, 0xe804
     e96:	a005                	.insn	2, 0xa005
     e98:	0106                	.insn	2, 0x0106
     e9a:	045a                	.insn	2, 0x045a
     e9c:	06c0                	.insn	2, 0x06c0
     e9e:	07ac                	.insn	2, 0x07ac
     ea0:	5a01                	.insn	2, 0x5a01
     ea2:	cc04                	.insn	2, 0xcc04
     ea4:	0107dc07          	.insn	4, 0x0107dc07
     ea8:	045a                	.insn	2, 0x045a
     eaa:	07ec                	.insn	2, 0x07ec
     eac:	0880                	.insn	2, 0x0880
     eae:	5a01                	.insn	2, 0x5a01
     eb0:	b004                	.insn	2, 0xb004
     eb2:	d408                	.insn	2, 0xd408
     eb4:	0108                	.insn	2, 0x0108
     eb6:	045a                	.insn	2, 0x045a
     eb8:	08e0                	.insn	2, 0x08e0
     eba:	09a8                	.insn	2, 0x09a8
     ebc:	5a01                	.insn	2, 0x5a01
     ebe:	d004                	.insn	2, 0xd004
     ec0:	c009                	.insn	2, 0xc009
     ec2:	010a                	.insn	2, 0x010a
     ec4:	045a                	.insn	2, 0x045a
     ec6:	0acc                	.insn	2, 0x0acc
     ec8:	0ad8                	.insn	2, 0x0ad8
     eca:	5a01                	.insn	2, 0x5a01
     ecc:	f004                	.insn	2, 0xf004
     ece:	fc0a                	.insn	2, 0xfc0a
     ed0:	045a010b          	.insn	4, 0x045a010b
     ed4:	0bfc                	.insn	2, 0x0bfc
     ed6:	0c84                	.insn	2, 0x0c84
     ed8:	5f01                	.insn	2, 0x5f01
     eda:	a004                	.insn	2, 0xa004
     edc:	cc0c                	.insn	2, 0xcc0c
     ede:	010c                	.insn	2, 0x010c
     ee0:	045a                	.insn	2, 0x045a
     ee2:	0cd4                	.insn	2, 0x0cd4
     ee4:	0d90                	.insn	2, 0x0d90
     ee6:	5a01                	.insn	2, 0x5a01
     ee8:	a804                	.insn	2, 0xa804
     eea:	c80d                	.insn	2, 0xc80d
     eec:	010d                	.insn	2, 0x010d
     eee:	045a                	.insn	2, 0x045a
     ef0:	0de0                	.insn	2, 0x0de0
     ef2:	0df0                	.insn	2, 0x0df0
     ef4:	5a01                	.insn	2, 0x5a01
     ef6:	f804                	.insn	2, 0xf804
     ef8:	a80d                	.insn	2, 0xa80d
     efa:	045a010f          	.insn	4, 0x045a010f
     efe:	1088                	.insn	2, 0x1088
     f00:	1094                	.insn	2, 0x1094
     f02:	5a01                	.insn	2, 0x5a01
     f04:	a404                	.insn	2, 0xa404
     f06:	c414                	.insn	2, 0xc414
     f08:	0114                	.insn	2, 0x0114
     f0a:	045a                	.insn	2, 0x045a
     f0c:	14d0                	.insn	2, 0x14d0
     f0e:	15ac                	.insn	2, 0x15ac
     f10:	5a01                	.insn	2, 0x5a01
     f12:	0400                	.insn	2, 0x0400
     f14:	1410                	.insn	2, 0x1410
     f16:	6001                	.insn	2, 0x6001
     f18:	1404                	.insn	2, 0x1404
     f1a:	0618                	.insn	2, 0x0618
     f1c:	007e                	.insn	2, 0x007e
     f1e:	9f1a007b          	.insn	4, 0x9f1a007b
     f22:	1804                	.insn	2, 0x1804
     f24:	0944                	.insn	2, 0x0944
     f26:	ff0c007b          	.insn	4, 0xff0c007b
     f2a:	0fff 1a00 049f dc44 	.insn	10, 0x0102dc44049f1a000fff
     f32:	0102 
     f34:	046c                	.insn	2, 0x046c
     f36:	039c                	.insn	2, 0x039c
     f38:	0490                	.insn	2, 0x0490
     f3a:	6c01                	.insn	2, 0x6c01
     f3c:	a004                	.insn	2, 0xa004
     f3e:	e404                	.insn	2, 0xe404
     f40:	0104                	.insn	2, 0x0104
     f42:	046c                	.insn	2, 0x046c
     f44:	04e4                	.insn	2, 0x04e4
     f46:	04ec                	.insn	2, 0x04ec
     f48:	5d01                	.insn	2, 0x5d01
     f4a:	fc04                	.insn	2, 0xfc04
     f4c:	e004                	.insn	2, 0xe004
     f4e:	0105                	.insn	2, 0x0105
     f50:	046c                	.insn	2, 0x046c
     f52:	05e8                	.insn	2, 0x05e8
     f54:	06a4                	.insn	2, 0x06a4
     f56:	6c01                	.insn	2, 0x6c01
     f58:	c004                	.insn	2, 0xc004
     f5a:	c406                	.insn	2, 0xc406
     f5c:	046c0107          	.insn	4, 0x046c0107
     f60:	07cc                	.insn	2, 0x07cc
     f62:	07dc                	.insn	2, 0x07dc
     f64:	6c01                	.insn	2, 0x6c01
     f66:	ec04                	.insn	2, 0xec04
     f68:	01088007          	.insn	4, 0x01088007
     f6c:	046c                	.insn	2, 0x046c
     f6e:	08b0                	.insn	2, 0x08b0
     f70:	09b0                	.insn	2, 0x09b0
     f72:	6c01                	.insn	2, 0x6c01
     f74:	d004                	.insn	2, 0xd004
     f76:	8009                	.insn	2, 0x8009
     f78:	010c                	.insn	2, 0x010c
     f7a:	046c                	.insn	2, 0x046c
     f7c:	0c80                	.insn	2, 0x0c80
     f7e:	0c8c                	.insn	2, 0x0c8c
     f80:	5b01                	.insn	2, 0x5b01
     f82:	a004                	.insn	2, 0xa004
     f84:	cc0c                	.insn	2, 0xcc0c
     f86:	010c                	.insn	2, 0x010c
     f88:	046c                	.insn	2, 0x046c
     f8a:	0cd4                	.insn	2, 0x0cd4
     f8c:	0d8c                	.insn	2, 0x0d8c
     f8e:	6c01                	.insn	2, 0x6c01
     f90:	a804                	.insn	2, 0xa804
     f92:	d80d                	.insn	2, 0xd80d
     f94:	010d                	.insn	2, 0x010d
     f96:	046c                	.insn	2, 0x046c
     f98:	0de0                	.insn	2, 0x0de0
     f9a:	0df0                	.insn	2, 0x0df0
     f9c:	6c01                	.insn	2, 0x6c01
     f9e:	f804                	.insn	2, 0xf804
     fa0:	a80d                	.insn	2, 0xa80d
     fa2:	046c010f          	.insn	4, 0x046c010f
     fa6:	1088                	.insn	2, 0x1088
     fa8:	1094                	.insn	2, 0x1094
     faa:	6c01                	.insn	2, 0x6c01
     fac:	a404                	.insn	2, 0xa404
     fae:	f414                	.insn	2, 0xf414
     fb0:	0114                	.insn	2, 0x0114
     fb2:	046c                	.insn	2, 0x046c
     fb4:	14f8                	.insn	2, 0x14f8
     fb6:	14fc                	.insn	2, 0x14fc
     fb8:	6c01                	.insn	2, 0x6c01
     fba:	8004                	.insn	2, 0x8004
     fbc:	8c15                	.insn	2, 0x8c15
     fbe:	0115                	.insn	2, 0x0115
     fc0:	046c                	.insn	2, 0x046c
     fc2:	1594                	.insn	2, 0x1594
     fc4:	15ac                	.insn	2, 0x15ac
     fc6:	6c01                	.insn	2, 0x6c01
     fc8:	0400                	.insn	2, 0x0400
     fca:	604c                	.insn	2, 0x604c
     fcc:	7d06                	.insn	2, 0x7d06
     fce:	0800                	.insn	2, 0x0800
     fd0:	049f1aff 5d017460 	.insn	12, 0xdc01d8045d017460049f1aff
     fd8:	dc01d804 
     fdc:	0101                	.insn	2, 0x0101
     fde:	045d                	.insn	2, 0x045d
     fe0:	03dc                	.insn	2, 0x03dc
     fe2:	03ec                	.insn	2, 0x03ec
     fe4:	5d01                	.insn	2, 0x5d01
     fe6:	fc04                	.insn	2, 0xfc04
     fe8:	9c04                	.insn	2, 0x9c04
     fea:	0105                	.insn	2, 0x0105
     fec:	045d                	.insn	2, 0x045d
     fee:	05a4                	.insn	2, 0x05a4
     ff0:	05b0                	.insn	2, 0x05b0
     ff2:	5d01                	.insn	2, 0x5d01
     ff4:	f404                	.insn	2, 0xf404
     ff6:	fc05                	.insn	2, 0xfc05
     ff8:	0105                	.insn	2, 0x0105
     ffa:	045d                	.insn	2, 0x045d
     ffc:	08b0                	.insn	2, 0x08b0
     ffe:	08bc                	.insn	2, 0x08bc
    1000:	5d01                	.insn	2, 0x5d01
    1002:	d004                	.insn	2, 0xd004
    1004:	d409                	.insn	2, 0xd409
    1006:	0109                	.insn	2, 0x0109
    1008:	045d                	.insn	2, 0x045d
    100a:	0aa8                	.insn	2, 0x0aa8
    100c:	0ac8                	.insn	2, 0x0ac8
    100e:	5d01                	.insn	2, 0x5d01
    1010:	c804                	.insn	2, 0xc804
    1012:	cc0a                	.insn	2, 0xcc0a
    1014:	010a                	.insn	2, 0x010a
    1016:	0acc045b          	.insn	4, 0x0acc045b
    101a:	0d90                	.insn	2, 0x0d90
    101c:	5d01                	.insn	2, 0x5d01
    101e:	a804                	.insn	2, 0xa804
    1020:	f00d                	.insn	2, 0xf00d
    1022:	010d                	.insn	2, 0x010d
    1024:	045d                	.insn	2, 0x045d
    1026:	0df8                	.insn	2, 0x0df8
    1028:	0ecc                	.insn	2, 0x0ecc
    102a:	5d01                	.insn	2, 0x5d01
    102c:	cc04                	.insn	2, 0xcc04
    102e:	d00e                	.insn	2, 0xd00e
    1030:	010e                	.insn	2, 0x010e
    1032:	0ed0045b          	.insn	4, 0x0ed0045b
    1036:	0ee8                	.insn	2, 0x0ee8
    1038:	5d01                	.insn	2, 0x5d01
    103a:	f804                	.insn	2, 0xf804
    103c:	a80e                	.insn	2, 0xa80e
    103e:	045d010f          	.insn	4, 0x045d010f
    1042:	1088                	.insn	2, 0x1088
    1044:	1094                	.insn	2, 0x1094
    1046:	5d01                	.insn	2, 0x5d01
    1048:	a404                	.insn	2, 0xa404
    104a:	ac14                	.insn	2, 0xac14
    104c:	0114                	.insn	2, 0x0114
    104e:	045d                	.insn	2, 0x045d
    1050:	14d0                	.insn	2, 0x14d0
    1052:	14f0                	.insn	2, 0x14f0
    1054:	5d01                	.insn	2, 0x5d01
    1056:	f804                	.insn	2, 0xf804
    1058:	8014                	.insn	2, 0x8014
    105a:	0115                	.insn	2, 0x0115
    105c:	045d                	.insn	2, 0x045d
    105e:	1588                	.insn	2, 0x1588
    1060:	15a0                	.insn	2, 0x15a0
    1062:	5d01                	.insn	2, 0x5d01
    1064:	0400                	.insn	2, 0x0400
    1066:	9048                	.insn	2, 0x9048
    1068:	0101                	.insn	2, 0x0101
    106a:	0461                	.insn	2, 0x0461
    106c:	01d8                	.insn	2, 0x01d8
    106e:	0290                	.insn	2, 0x0290
    1070:	6101                	.insn	2, 0x6101
    1072:	dc04                	.insn	2, 0xdc04
    1074:	01049003          	lh	zero,16(s1)
    1078:	0461                	.insn	2, 0x0461
    107a:	04a0                	.insn	2, 0x04a0
    107c:	059c                	.insn	2, 0x059c
    107e:	6101                	.insn	2, 0x6101
    1080:	a404                	.insn	2, 0xa404
    1082:	9005                	.insn	2, 0x9005
    1084:	04610107          	.insn	4, 0x04610107
    1088:	079c                	.insn	2, 0x079c
    108a:	07c4                	.insn	2, 0x07c4
    108c:	6101                	.insn	2, 0x6101
    108e:	cc04                	.insn	2, 0xcc04
    1090:	0107dc07          	.insn	4, 0x0107dc07
    1094:	0461                	.insn	2, 0x0461
    1096:	07ec                	.insn	2, 0x07ec
    1098:	0880                	.insn	2, 0x0880
    109a:	6101                	.insn	2, 0x6101
    109c:	b004                	.insn	2, 0xb004
    109e:	e408                	.insn	2, 0xe408
    10a0:	0108                	.insn	2, 0x0108
    10a2:	0461                	.insn	2, 0x0461
    10a4:	09d0                	.insn	2, 0x09d0
    10a6:	09e8                	.insn	2, 0x09e8
    10a8:	6101                	.insn	2, 0x6101
    10aa:	a804                	.insn	2, 0xa804
    10ac:	900a                	.insn	2, 0x900a
    10ae:	010d                	.insn	2, 0x010d
    10b0:	0461                	.insn	2, 0x0461
    10b2:	0da8                	.insn	2, 0x0da8
    10b4:	0db4                	.insn	2, 0x0db4
    10b6:	6101                	.insn	2, 0x6101
    10b8:	f804                	.insn	2, 0xf804
    10ba:	a00d                	.insn	2, 0xa00d
    10bc:	010e                	.insn	2, 0x010e
    10be:	0461                	.insn	2, 0x0461
    10c0:	0eb8                	.insn	2, 0x0eb8
    10c2:	0ec0                	.insn	2, 0x0ec0
    10c4:	6101                	.insn	2, 0x6101
    10c6:	dc04                	.insn	2, 0xdc04
    10c8:	e40e                	.insn	2, 0xe40e
    10ca:	010e                	.insn	2, 0x010e
    10cc:	0461                	.insn	2, 0x0461
    10ce:	0ef8                	.insn	2, 0x0ef8
    10d0:	0f84                	.insn	2, 0x0f84
    10d2:	6101                	.insn	2, 0x6101
    10d4:	a404                	.insn	2, 0xa404
    10d6:	b414                	.insn	2, 0xb414
    10d8:	0114                	.insn	2, 0x0114
    10da:	0461                	.insn	2, 0x0461
    10dc:	14bc                	.insn	2, 0x14bc
    10de:	1588                	.insn	2, 0x1588
    10e0:	6101                	.insn	2, 0x6101
    10e2:	9404                	.insn	2, 0x9404
    10e4:	ac15                	.insn	2, 0xac15
    10e6:	0115                	.insn	2, 0x0115
    10e8:	0061                	.insn	2, 0x0061
    10ea:	4804                	.insn	2, 0x4804
    10ec:	0188                	.insn	2, 0x0188
    10ee:	5c01                	.insn	2, 0x5c01
    10f0:	8c04                	.insn	2, 0x8c04
    10f2:	9801                	.insn	2, 0x9801
    10f4:	0101                	.insn	2, 0x0101
    10f6:	045c                	.insn	2, 0x045c
    10f8:	01ac                	.insn	2, 0x01ac
    10fa:	01b8                	.insn	2, 0x01b8
    10fc:	5c01                	.insn	2, 0x5c01
    10fe:	d804                	.insn	2, 0xd804
    1100:	e401                	.insn	2, 0xe401
    1102:	0101                	.insn	2, 0x0101
    1104:	045c                	.insn	2, 0x045c
    1106:	0284                	.insn	2, 0x0284
    1108:	02c0                	.insn	2, 0x02c0
    110a:	5c01                	.insn	2, 0x5c01
    110c:	c004                	.insn	2, 0xc004
    110e:	d002                	.insn	2, 0xd002
    1110:	0102                	.insn	2, 0x0102
    1112:	045d                	.insn	2, 0x045d
    1114:	039c                	.insn	2, 0x039c
    1116:	03c8                	.insn	2, 0x03c8
    1118:	5c01                	.insn	2, 0x5c01
    111a:	d004                	.insn	2, 0xd004
    111c:	01048c03          	lb	s8,16(s1)
    1120:	045c                	.insn	2, 0x045c
    1122:	04a0                	.insn	2, 0x04a0
    1124:	04e8                	.insn	2, 0x04e8
    1126:	5c01                	.insn	2, 0x5c01
    1128:	fc04                	.insn	2, 0xfc04
    112a:	9c04                	.insn	2, 0x9c04
    112c:	0105                	.insn	2, 0x0105
    112e:	045c                	.insn	2, 0x045c
    1130:	05a4                	.insn	2, 0x05a4
    1132:	0698                	.insn	2, 0x0698
    1134:	5c01                	.insn	2, 0x5c01
    1136:	c004                	.insn	2, 0xc004
    1138:	9806                	.insn	2, 0x9806
    113a:	045c0107          	.insn	4, 0x045c0107
    113e:	079c                	.insn	2, 0x079c
    1140:	07a8                	.insn	2, 0x07a8
    1142:	5c01                	.insn	2, 0x5c01
    1144:	cc04                	.insn	2, 0xcc04
    1146:	0107dc07          	.insn	4, 0x0107dc07
    114a:	045c                	.insn	2, 0x045c
    114c:	07ec                	.insn	2, 0x07ec
    114e:	0880                	.insn	2, 0x0880
    1150:	5c01                	.insn	2, 0x5c01
    1152:	b004                	.insn	2, 0xb004
    1154:	cc08                	.insn	2, 0xcc08
    1156:	0108                	.insn	2, 0x0108
    1158:	045c                	.insn	2, 0x045c
    115a:	08e0                	.insn	2, 0x08e0
    115c:	09a0                	.insn	2, 0x09a0
    115e:	5c01                	.insn	2, 0x5c01
    1160:	d004                	.insn	2, 0xd004
    1162:	9409                	.insn	2, 0x9409
    1164:	010a                	.insn	2, 0x010a
    1166:	045c                	.insn	2, 0x045c
    1168:	0a9c                	.insn	2, 0x0a9c
    116a:	0aa0                	.insn	2, 0x0aa0
    116c:	5c01                	.insn	2, 0x5c01
    116e:	a804                	.insn	2, 0xa804
    1170:	e40a                	.insn	2, 0xe40a
    1172:	010a                	.insn	2, 0x010a
    1174:	045c                	.insn	2, 0x045c
    1176:	0af0                	.insn	2, 0x0af0
    1178:	0b90                	.insn	2, 0x0b90
    117a:	5c01                	.insn	2, 0x5c01
    117c:	9804                	.insn	2, 0x9804
    117e:	010c940b          	.insn	4, 0x010c940b
    1182:	045c                	.insn	2, 0x045c
    1184:	0ca0                	.insn	2, 0x0ca0
    1186:	0d90                	.insn	2, 0x0d90
    1188:	5c01                	.insn	2, 0x5c01
    118a:	a804                	.insn	2, 0xa804
    118c:	d40d                	.insn	2, 0xd40d
    118e:	010d                	.insn	2, 0x010d
    1190:	045c                	.insn	2, 0x045c
    1192:	0de0                	.insn	2, 0x0de0
    1194:	0de4                	.insn	2, 0x0de4
    1196:	5c01                	.insn	2, 0x5c01
    1198:	f804                	.insn	2, 0xf804
    119a:	ac0d                	.insn	2, 0xac0d
    119c:	010e                	.insn	2, 0x010e
    119e:	045c                	.insn	2, 0x045c
    11a0:	0eb8                	.insn	2, 0x0eb8
    11a2:	0ed8                	.insn	2, 0x0ed8
    11a4:	5c01                	.insn	2, 0x5c01
    11a6:	dc04                	.insn	2, 0xdc04
    11a8:	f40e                	.insn	2, 0xf40e
    11aa:	010e                	.insn	2, 0x010e
    11ac:	045c                	.insn	2, 0x045c
    11ae:	0ef8                	.insn	2, 0x0ef8
    11b0:	0fa0                	.insn	2, 0x0fa0
    11b2:	5c01                	.insn	2, 0x5c01
    11b4:	8804                	.insn	2, 0x8804
    11b6:	8c10                	.insn	2, 0x8c10
    11b8:	0110                	.insn	2, 0x0110
    11ba:	045c                	.insn	2, 0x045c
    11bc:	14a4                	.insn	2, 0x14a4
    11be:	14ac                	.insn	2, 0x14ac
    11c0:	5c01                	.insn	2, 0x5c01
    11c2:	c404                	.insn	2, 0xc404
    11c4:	cc14                	.insn	2, 0xcc14
    11c6:	0114                	.insn	2, 0x0114
    11c8:	045c                	.insn	2, 0x045c
    11ca:	14d0                	.insn	2, 0x14d0
    11cc:	14d8                	.insn	2, 0x14d8
    11ce:	5c01                	.insn	2, 0x5c01
    11d0:	dc04                	.insn	2, 0xdc04
    11d2:	e414                	.insn	2, 0xe414
    11d4:	0114                	.insn	2, 0x0114
    11d6:	045c                	.insn	2, 0x045c
    11d8:	14f0                	.insn	2, 0x14f0
    11da:	1584                	.insn	2, 0x1584
    11dc:	5c01                	.insn	2, 0x5c01
    11de:	9404                	.insn	2, 0x9404
    11e0:	ac15                	.insn	2, 0xac15
    11e2:	0115                	.insn	2, 0x0115
    11e4:	005c                	.insn	2, 0x005c
    11e6:	4c04                	.insn	2, 0x4c04
    11e8:	0184                	.insn	2, 0x0184
    11ea:	5e01                	.insn	2, 0x5e01
    11ec:	8c04                	.insn	2, 0x8c04
    11ee:	9c01                	.insn	2, 0x9c01
    11f0:	0101                	.insn	2, 0x0101
    11f2:	045e                	.insn	2, 0x045e
    11f4:	01ac                	.insn	2, 0x01ac
    11f6:	01d0                	.insn	2, 0x01d0
    11f8:	5e01                	.insn	2, 0x5e01
    11fa:	d804                	.insn	2, 0xd804
    11fc:	f801                	.insn	2, 0xf801
    11fe:	0101                	.insn	2, 0x0101
    1200:	045e                	.insn	2, 0x045e
    1202:	0284                	.insn	2, 0x0284
    1204:	02c4                	.insn	2, 0x02c4
    1206:	5e01                	.insn	2, 0x5e01
    1208:	c404                	.insn	2, 0xc404
    120a:	cc02                	.insn	2, 0xcc02
    120c:	0102                	.insn	2, 0x0102
    120e:	0461                	.insn	2, 0x0461
    1210:	039c                	.insn	2, 0x039c
    1212:	03c8                	.insn	2, 0x03c8
    1214:	5e01                	.insn	2, 0x5e01
    1216:	d004                	.insn	2, 0xd004
    1218:	01048c03          	lb	s8,16(s1)
    121c:	045e                	.insn	2, 0x045e
    121e:	04a0                	.insn	2, 0x04a0
    1220:	04f4                	.insn	2, 0x04f4
    1222:	5e01                	.insn	2, 0x5e01
    1224:	fc04                	.insn	2, 0xfc04
    1226:	9c04                	.insn	2, 0x9c04
    1228:	0105                	.insn	2, 0x0105
    122a:	045e                	.insn	2, 0x045e
    122c:	05a4                	.insn	2, 0x05a4
    122e:	069c                	.insn	2, 0x069c
    1230:	5e01                	.insn	2, 0x5e01
    1232:	c004                	.insn	2, 0xc004
    1234:	8c06                	.insn	2, 0x8c06
    1236:	045e0107          	.insn	4, 0x045e0107
    123a:	079c                	.insn	2, 0x079c
    123c:	07b0                	.insn	2, 0x07b0
    123e:	5e01                	.insn	2, 0x5e01
    1240:	cc04                	.insn	2, 0xcc04
    1242:	0107dc07          	.insn	4, 0x0107dc07
    1246:	045e                	.insn	2, 0x045e
    1248:	07ec                	.insn	2, 0x07ec
    124a:	0880                	.insn	2, 0x0880
    124c:	5e01                	.insn	2, 0x5e01
    124e:	b004                	.insn	2, 0xb004
    1250:	d008                	.insn	2, 0xd008
    1252:	0108                	.insn	2, 0x0108
    1254:	045e                	.insn	2, 0x045e
    1256:	08e0                	.insn	2, 0x08e0
    1258:	099c                	.insn	2, 0x099c
    125a:	5e01                	.insn	2, 0x5e01
    125c:	9c04                	.insn	2, 0x9c04
    125e:	a409                	.insn	2, 0xa409
    1260:	0109                	.insn	2, 0x0109
    1262:	045d                	.insn	2, 0x045d
    1264:	09d0                	.insn	2, 0x09d0
    1266:	0a94                	.insn	2, 0x0a94
    1268:	5e01                	.insn	2, 0x5e01
    126a:	9c04                	.insn	2, 0x9c04
    126c:	e00a                	.insn	2, 0xe00a
    126e:	010a                	.insn	2, 0x010a
    1270:	045e                	.insn	2, 0x045e
    1272:	0af0                	.insn	2, 0x0af0
    1274:	0b90                	.insn	2, 0x0b90
    1276:	5e01                	.insn	2, 0x5e01
    1278:	9804                	.insn	2, 0x9804
    127a:	010c900b          	.insn	4, 0x010c900b
    127e:	045e                	.insn	2, 0x045e
    1280:	0ca0                	.insn	2, 0x0ca0
    1282:	0d90                	.insn	2, 0x0d90
    1284:	5e01                	.insn	2, 0x5e01
    1286:	a804                	.insn	2, 0xa804
    1288:	d00d                	.insn	2, 0xd00d
    128a:	010d                	.insn	2, 0x010d
    128c:	045e                	.insn	2, 0x045e
    128e:	0de0                	.insn	2, 0x0de0
    1290:	0df0                	.insn	2, 0x0df0
    1292:	5e01                	.insn	2, 0x5e01
    1294:	f804                	.insn	2, 0xf804
    1296:	ac0d                	.insn	2, 0xac0d
    1298:	010e                	.insn	2, 0x010e
    129a:	045e                	.insn	2, 0x045e
    129c:	0eb8                	.insn	2, 0x0eb8
    129e:	0ed4                	.insn	2, 0x0ed4
    12a0:	5e01                	.insn	2, 0x5e01
    12a2:	dc04                	.insn	2, 0xdc04
    12a4:	e80e                	.insn	2, 0xe80e
    12a6:	010e                	.insn	2, 0x010e
    12a8:	045e                	.insn	2, 0x045e
    12aa:	0ef8                	.insn	2, 0x0ef8
    12ac:	0fa8                	.insn	2, 0x0fa8
    12ae:	5e01                	.insn	2, 0x5e01
    12b0:	8804                	.insn	2, 0x8804
    12b2:	9410                	.insn	2, 0x9410
    12b4:	0110                	.insn	2, 0x0110
    12b6:	045e                	.insn	2, 0x045e
    12b8:	14a4                	.insn	2, 0x14a4
    12ba:	14a8                	.insn	2, 0x14a8
    12bc:	5e01                	.insn	2, 0x5e01
    12be:	b404                	.insn	2, 0xb404
    12c0:	b814                	.insn	2, 0xb814
    12c2:	0114                	.insn	2, 0x0114
    12c4:	045e                	.insn	2, 0x045e
    12c6:	14bc                	.insn	2, 0x14bc
    12c8:	14c0                	.insn	2, 0x14c0
    12ca:	5e01                	.insn	2, 0x5e01
    12cc:	c404                	.insn	2, 0xc404
    12ce:	c814                	.insn	2, 0xc814
    12d0:	0114                	.insn	2, 0x0114
    12d2:	045e                	.insn	2, 0x045e
    12d4:	14d0                	.insn	2, 0x14d0
    12d6:	14d4                	.insn	2, 0x14d4
    12d8:	5e01                	.insn	2, 0x5e01
    12da:	dc04                	.insn	2, 0xdc04
    12dc:	e014                	.insn	2, 0xe014
    12de:	0114                	.insn	2, 0x0114
    12e0:	045e                	.insn	2, 0x045e
    12e2:	14f0                	.insn	2, 0x14f0
    12e4:	15ac                	.insn	2, 0x15ac
    12e6:	5e01                	.insn	2, 0x5e01
    12e8:	0400                	.insn	2, 0x0400
    12ea:	9c68                	.insn	2, 0x9c68
    12ec:	0105                	.insn	2, 0x0105
    12ee:	05a4045b          	.insn	4, 0x05a4045b
    12f2:	0790                	.insn	2, 0x0790
    12f4:	5b01                	.insn	2, 0x5b01
    12f6:	9c04                	.insn	2, 0x9c04
    12f8:	0108b007          	.insn	4, 0x0108b007
    12fc:	08b4045b          	.insn	4, 0x08b4045b
    1300:	0aa8                	.insn	2, 0x0aa8
    1302:	5b01                	.insn	2, 0x5b01
    1304:	b004                	.insn	2, 0xb004
    1306:	c80a                	.insn	2, 0xc80a
    1308:	010a                	.insn	2, 0x010a
    130a:	045d                	.insn	2, 0x045d
    130c:	0ac8                	.insn	2, 0x0ac8
    130e:	0acc                	.insn	2, 0x0acc
    1310:	5b01                	.insn	2, 0x5b01
    1312:	cc04                	.insn	2, 0xcc04
    1314:	e00a                	.insn	2, 0xe00a
    1316:	010c                	.insn	2, 0x010c
    1318:	045d                	.insn	2, 0x045d
    131a:	0d88                	.insn	2, 0x0d88
    131c:	0da8                	.insn	2, 0x0da8
    131e:	5b01                	.insn	2, 0x5b01
    1320:	bc04                	.insn	2, 0xbc04
    1322:	d80d                	.insn	2, 0xd80d
    1324:	010d                	.insn	2, 0x010d
    1326:	0de0045b          	.insn	4, 0x0de0045b
    132a:	0dec                	.insn	2, 0x0dec
    132c:	5b01                	.insn	2, 0x5b01
    132e:	f004                	.insn	2, 0xf004
    1330:	f80d                	.insn	2, 0xf80d
    1332:	010d                	.insn	2, 0x010d
    1334:	0f90045b          	.insn	4, 0x0f90045b
    1338:	0fa4                	.insn	2, 0x0fa4
    133a:	5b01                	.insn	2, 0x5b01
    133c:	a404                	.insn	2, 0xa404
    133e:	010fa80f          	.insn	4, 0x010fa80f
    1342:	045d                	.insn	2, 0x045d
    1344:	0fa8                	.insn	2, 0x0fa8
    1346:	13d0                	.insn	2, 0x13d0
    1348:	5b01                	.insn	2, 0x5b01
    134a:	ec04                	.insn	2, 0xec04
    134c:	0114d013          	srli	zero,s1,0x11
    1350:	14d0045b          	.insn	4, 0x14d0045b
    1354:	14f0                	.insn	2, 0x14f0
    1356:	5d01                	.insn	2, 0x5d01
    1358:	f004                	.insn	2, 0xf004
    135a:	f814                	.insn	2, 0xf814
    135c:	0114                	.insn	2, 0x0114
    135e:	1588045b          	.insn	4, 0x1588045b
    1362:	1594                	.insn	2, 0x1594
    1364:	5b01                	.insn	2, 0x5b01
    1366:	a004                	.insn	2, 0xa004
    1368:	ac15                	.insn	2, 0xac15
    136a:	0115                	.insn	2, 0x0115
    136c:	6c04005b          	.insn	4, 0x6c04005b
    1370:	017c                	.insn	2, 0x017c
    1372:	045f 018c 0194      	.insn	6, 0x0194018c045f
    1378:	5f01                	.insn	2, 0x5f01
    137a:	ac04                	.insn	2, 0xac04
    137c:	b401                	.insn	2, 0xb401
    137e:	0101                	.insn	2, 0x0101
    1380:	045f 01d8 01ec      	.insn	6, 0x01ec01d8045f
    1386:	5f01                	.insn	2, 0x5f01
    1388:	8404                	.insn	2, 0x8404
    138a:	dc02                	.insn	2, 0xdc02
    138c:	0102                	.insn	2, 0x0102
    138e:	045f 02dc 039c      	.insn	6, 0x039c02dc045f
    1394:	6001                	.insn	2, 0x6001
    1396:	9c04                	.insn	2, 0x9c04
    1398:	0103dc03          	lhu	s8,16(t2)
    139c:	045f 03e4 048c      	.insn	6, 0x048c03e4045f
    13a2:	6101                	.insn	2, 0x6101
    13a4:	9004                	.insn	2, 0x9004
    13a6:	a004                	.insn	2, 0xa004
    13a8:	0104                	.insn	2, 0x0104
    13aa:	0460                	.insn	2, 0x0460
    13ac:	04a0                	.insn	2, 0x04a0
    13ae:	059c                	.insn	2, 0x059c
    13b0:	6101                	.insn	2, 0x6101
    13b2:	a404                	.insn	2, 0xa404
    13b4:	f405                	.insn	2, 0xf405
    13b6:	0105                	.insn	2, 0x0105
    13b8:	0461                	.insn	2, 0x0461
    13ba:	0688                	.insn	2, 0x0688
    13bc:	06b8                	.insn	2, 0x06b8
    13be:	3002                	.insn	2, 0x3002
    13c0:	049f 06b8 06c0      	.insn	6, 0x06c006b8049f
    13c6:	3102                	.insn	2, 0x3102
    13c8:	049f 0780 079c      	.insn	6, 0x079c0780049f
    13ce:	0a04                	.insn	2, 0x0a04
    13d0:	07ff 049f 079c 07c4 	.insn	10, 0x600107c4079c049f07ff
    13d8:	6001 
    13da:	cc04                	.insn	2, 0xcc04
    13dc:	0107e807          	.insn	4, 0x0107e807
    13e0:	0460                	.insn	2, 0x0460
    13e2:	07ec                	.insn	2, 0x07ec
    13e4:	07fc                	.insn	2, 0x07fc
    13e6:	6001                	.insn	2, 0x6001
    13e8:	8004                	.insn	2, 0x8004
    13ea:	9008                	.insn	2, 0x9008
    13ec:	0108                	.insn	2, 0x0108
    13ee:	0460                	.insn	2, 0x0460
    13f0:	08a0                	.insn	2, 0x08a0
    13f2:	08b0                	.insn	2, 0x08b0
    13f4:	6001                	.insn	2, 0x6001
    13f6:	b404                	.insn	2, 0xb404
    13f8:	d808                	.insn	2, 0xd808
    13fa:	0108                	.insn	2, 0x0108
    13fc:	045f 08e0 09b0      	.insn	6, 0x09b008e0045f
    1402:	5f01                	.insn	2, 0x5f01
    1404:	b004                	.insn	2, 0xb004
    1406:	d009                	.insn	2, 0xd009
    1408:	0109                	.insn	2, 0x0109
    140a:	0460                	.insn	2, 0x0460
    140c:	09d0                	.insn	2, 0x09d0
    140e:	0aa8                	.insn	2, 0x0aa8
    1410:	5f01                	.insn	2, 0x5f01
    1412:	b004                	.insn	2, 0xb004
    1414:	e00a                	.insn	2, 0xe00a
    1416:	010c                	.insn	2, 0x010c
    1418:	0461                	.insn	2, 0x0461
    141a:	0cf8                	.insn	2, 0x0cf8
    141c:	0df0                	.insn	2, 0x0df0
    141e:	3002                	.insn	2, 0x3002
    1420:	049f 0ea4 0eb8      	.insn	6, 0x0eb80ea4049f
    1426:	0a04                	.insn	2, 0x0a04
    1428:	07ff 049f 0ec0 0edc 	.insn	10, 0x0a040edc0ec0049f07ff
    1430:	0a04 
    1432:	07ff 049f 0ee4 0ef8 	.insn	10, 0x0a040ef80ee4049f07ff
    143a:	0a04 
    143c:	07ff 049f 0ef8 0fdc 	.insn	10, 0x5f010fdc0ef8049f07ff
    1444:	5f01 
    1446:	8804                	.insn	2, 0x8804
    1448:	b010                	.insn	2, 0xb010
    144a:	0110                	.insn	2, 0x0110
    144c:	045f 10e0 10e4      	.insn	6, 0x10e410e0045f
    1452:	5f01                	.insn	2, 0x5f01
    1454:	e404                	.insn	2, 0xe404
    1456:	f810                	.insn	2, 0xf810
    1458:	0110                	.insn	2, 0x0110
    145a:	0460                	.insn	2, 0x0460
    145c:	10f8                	.insn	2, 0x10f8
    145e:	11d4                	.insn	2, 0x11d4
    1460:	3002                	.insn	2, 0x3002
    1462:	049f 1290 12c8      	.insn	6, 0x12c81290049f
    1468:	3002                	.insn	2, 0x3002
    146a:	049f 12f4 13c0      	.insn	6, 0x13c012f4049f
    1470:	6001                	.insn	2, 0x6001
    1472:	ec04                	.insn	2, 0xec04
    1474:	01148813          	addi	a6,s1,17
    1478:	0460                	.insn	2, 0x0460
    147a:	148c                	.insn	2, 0x148c
    147c:	14a4                	.insn	2, 0x14a4
    147e:	6001                	.insn	2, 0x6001
    1480:	a404                	.insn	2, 0xa404
    1482:	ac14                	.insn	2, 0xac14
    1484:	0114                	.insn	2, 0x0114
    1486:	0461                	.insn	2, 0x0461
    1488:	14bc                	.insn	2, 0x14bc
    148a:	14c4                	.insn	2, 0x14c4
    148c:	5f01                	.insn	2, 0x5f01
    148e:	c404                	.insn	2, 0xc404
    1490:	f014                	.insn	2, 0xf014
    1492:	0114                	.insn	2, 0x0114
    1494:	0461                	.insn	2, 0x0461
    1496:	14f0                	.insn	2, 0x14f0
    1498:	1594                	.insn	2, 0x1594
    149a:	3002                	.insn	2, 0x3002
    149c:	009f a404 ac01      	.insn	6, 0xac01a404009f
    14a2:	0101                	.insn	2, 0x0101
    14a4:	045c                	.insn	2, 0x045c
    14a6:	02d8                	.insn	2, 0x02d8
    14a8:	02dc                	.insn	2, 0x02dc
    14aa:	5a01                	.insn	2, 0x5a01
    14ac:	dc04                	.insn	2, 0xdc04
    14ae:	ec02                	.insn	2, 0xec02
    14b0:	0102                	.insn	2, 0x0102
    14b2:	045c                	.insn	2, 0x045c
    14b4:	02ec                	.insn	2, 0x02ec
    14b6:	0384                	.insn	2, 0x0384
    14b8:	7c15                	.insn	2, 0x7c15
    14ba:	3100                	.insn	2, 0x3100
    14bc:	7c1a                	.insn	2, 0x7c1a
    14be:	3100                	.insn	2, 0x3100
    14c0:	2125                	.insn	2, 0x2125
    14c2:	007e                	.insn	2, 0x007e
    14c4:	ff11                	.insn	2, 0xff11
    14c6:	ffff                	.insn	2, 0xffff
    14c8:	244f1a7b          	.insn	4, 0x244f1a7b
    14cc:	9f21                	.insn	2, 0x9f21
    14ce:	9004                	.insn	2, 0x9004
    14d0:	a004                	.insn	2, 0xa004
    14d2:	0104                	.insn	2, 0x0104
    14d4:	045c                	.insn	2, 0x045c
    14d6:	04f4                	.insn	2, 0x04f4
    14d8:	04fc                	.insn	2, 0x04fc
    14da:	5c01                	.insn	2, 0x5c01
    14dc:	a404                	.insn	2, 0xa404
    14de:	c006                	.insn	2, 0xc006
    14e0:	0106                	.insn	2, 0x0106
    14e2:	045c                	.insn	2, 0x045c
    14e4:	079c                	.insn	2, 0x079c
    14e6:	07a8                	.insn	2, 0x07a8
    14e8:	7a24                	.insn	2, 0x7a24
    14ea:	4000                	.insn	2, 0x4000
    14ec:	7a22244b          	.insn	4, 0x7a22244b
    14f0:	7c00                	.insn	2, 0x7c00
    14f2:	2200                	.insn	2, 0x2200
    14f4:	4b40                	.insn	2, 0x4b40
    14f6:	2224                	.insn	2, 0x2224
    14f8:	1aff082b          	.insn	4, 0x1aff082b
    14fc:	007e                	.insn	2, 0x007e
    14fe:	8c22                	.insn	2, 0x8c22
    1500:	2200                	.insn	2, 0x2200
    1502:	007a244f          	fnmadd.s	fs0,fs4,ft7,ft0,rdn
    1506:	007c                	.insn	2, 0x007c
    1508:	3122                	.insn	2, 0x3122
    150a:	2125                	.insn	2, 0x2125
    150c:	049f 07a8 07ac      	.insn	6, 0x07ac07a8049f
    1512:	7a1e                	.insn	2, 0x7a1e
    1514:	4000                	.insn	2, 0x4000
    1516:	7c22244b          	.insn	4, 0x7c22244b
    151a:	4000                	.insn	2, 0x4000
    151c:	2b22244b          	.insn	4, 0x2b22244b
    1520:	ff08                	.insn	2, 0xff08
    1522:	7e1a                	.insn	2, 0x7e1a
    1524:	2200                	.insn	2, 0x2200
    1526:	008c                	.insn	2, 0x008c
    1528:	4f22                	.insn	2, 0x4f22
    152a:	7c24                	.insn	2, 0x7c24
    152c:	3100                	.insn	2, 0x3100
    152e:	2125                	.insn	2, 0x2125
    1530:	049f 07cc 07dc      	.insn	6, 0x07dc07cc049f
    1536:	7a24                	.insn	2, 0x7a24
    1538:	4000                	.insn	2, 0x4000
    153a:	7a22244b          	.insn	4, 0x7a22244b
    153e:	7c00                	.insn	2, 0x7c00
    1540:	2200                	.insn	2, 0x2200
    1542:	4b40                	.insn	2, 0x4b40
    1544:	2224                	.insn	2, 0x2224
    1546:	1aff082b          	.insn	4, 0x1aff082b
    154a:	007e                	.insn	2, 0x007e
    154c:	8c22                	.insn	2, 0x8c22
    154e:	2200                	.insn	2, 0x2200
    1550:	007a244f          	fnmadd.s	fs0,fs4,ft7,ft0,rdn
    1554:	007c                	.insn	2, 0x007c
    1556:	3122                	.insn	2, 0x3122
    1558:	2125                	.insn	2, 0x2125
    155a:	049f 07ec 0880      	.insn	6, 0x088007ec049f
    1560:	7a24                	.insn	2, 0x7a24
    1562:	4000                	.insn	2, 0x4000
    1564:	7a22244b          	.insn	4, 0x7a22244b
    1568:	7c00                	.insn	2, 0x7c00
    156a:	2200                	.insn	2, 0x2200
    156c:	4b40                	.insn	2, 0x4b40
    156e:	2224                	.insn	2, 0x2224
    1570:	1aff082b          	.insn	4, 0x1aff082b
    1574:	007e                	.insn	2, 0x007e
    1576:	8c22                	.insn	2, 0x8c22
    1578:	2200                	.insn	2, 0x2200
    157a:	007a244f          	fnmadd.s	fs0,fs4,ft7,ft0,rdn
    157e:	007c                	.insn	2, 0x007c
    1580:	3122                	.insn	2, 0x3122
    1582:	2125                	.insn	2, 0x2125
    1584:	049f 0880 0890      	.insn	6, 0x08900880049f
    158a:	7c15                	.insn	2, 0x7c15
    158c:	3100                	.insn	2, 0x3100
    158e:	7c1a                	.insn	2, 0x7c1a
    1590:	3100                	.insn	2, 0x3100
    1592:	2125                	.insn	2, 0x2125
    1594:	007e                	.insn	2, 0x007e
    1596:	ff11                	.insn	2, 0xff11
    1598:	ffff                	.insn	2, 0xffff
    159a:	244f1a7b          	.insn	4, 0x244f1a7b
    159e:	9f21                	.insn	2, 0x9f21
    15a0:	a004                	.insn	2, 0xa004
    15a2:	b008                	.insn	2, 0xb008
    15a4:	1508                	.insn	2, 0x1508
    15a6:	007c                	.insn	2, 0x007c
    15a8:	1a31                	.insn	2, 0x1a31
    15aa:	007c                	.insn	2, 0x007c
    15ac:	2531                	.insn	2, 0x2531
    15ae:	7e21                	.insn	2, 0x7e21
    15b0:	1100                	.insn	2, 0x1100
    15b2:	ffff                	.insn	2, 0xffff
    15b4:	7bff                	.insn	2, 0x7bff
    15b6:	4f1a                	.insn	2, 0x4f1a
    15b8:	2124                	.insn	2, 0x2124
    15ba:	049f 09ac 09d0      	.insn	6, 0x09d009ac049f
    15c0:	5c01                	.insn	2, 0x5c01
    15c2:	e804                	.insn	2, 0xe804
    15c4:	f00a                	.insn	2, 0xf00a
    15c6:	010a                	.insn	2, 0x010a
    15c8:	045a                	.insn	2, 0x045a
    15ca:	0c94                	.insn	2, 0x0c94
    15cc:	0ca0                	.insn	2, 0x0ca0
    15ce:	5c01                	.insn	2, 0x5c01
    15d0:	fc04                	.insn	2, 0xfc04
    15d2:	a80c                	.insn	2, 0xa80c
    15d4:	010d                	.insn	2, 0x010d
    15d6:	045c                	.insn	2, 0x045c
    15d8:	0dbc                	.insn	2, 0x0dbc
    15da:	0dd8                	.insn	2, 0x0dd8
    15dc:	6001                	.insn	2, 0x6001
    15de:	e004                	.insn	2, 0xe004
    15e0:	f00d                	.insn	2, 0xf00d
    15e2:	010d                	.insn	2, 0x010d
    15e4:	0460                	.insn	2, 0x0460
    15e6:	0df0                	.insn	2, 0x0df0
    15e8:	0df8                	.insn	2, 0x0df8
    15ea:	5c01                	.insn	2, 0x5c01
    15ec:	9004                	.insn	2, 0x9004
    15ee:	010fa40f          	.insn	4, 0x010fa40f
    15f2:	0460                	.insn	2, 0x0460
    15f4:	0fa4                	.insn	2, 0x0fa4
    15f6:	0fcc                	.insn	2, 0x0fcc
    15f8:	6d01                	.insn	2, 0x6d01
    15fa:	cc04                	.insn	2, 0xcc04
    15fc:	0110800f          	.insn	4, 0x0110800f
    1600:	0461                	.insn	2, 0x0461
    1602:	1080                	.insn	2, 0x1080
    1604:	1088                	.insn	2, 0x1088
    1606:	5c01                	.insn	2, 0x5c01
    1608:	8804                	.insn	2, 0x8804
    160a:	9410                	.insn	2, 0x9410
    160c:	0110                	.insn	2, 0x0110
    160e:	0460                	.insn	2, 0x0460
    1610:	1094                	.insn	2, 0x1094
    1612:	10ac                	.insn	2, 0x10ac
    1614:	6d01                	.insn	2, 0x6d01
    1616:	ac04                	.insn	2, 0xac04
    1618:	b010                	.insn	2, 0xb010
    161a:	0210                	.insn	2, 0x0210
    161c:	9f30                	.insn	2, 0x9f30
    161e:	b004                	.insn	2, 0xb004
    1620:	f810                	.insn	2, 0xf810
    1622:	0110                	.insn	2, 0x0110
    1624:	0461                	.insn	2, 0x0461
    1626:	10f8                	.insn	2, 0x10f8
    1628:	1288                	.insn	2, 0x1288
    162a:	5c01                	.insn	2, 0x5c01
    162c:	9004                	.insn	2, 0x9004
    162e:	d812                	.insn	2, 0xd812
    1630:	0112                	.insn	2, 0x0112
    1632:	045c                	.insn	2, 0x045c
    1634:	12d8                	.insn	2, 0x12d8
    1636:	12e8                	.insn	2, 0x12e8
    1638:	5d01                	.insn	2, 0x5d01
    163a:	8804                	.insn	2, 0x8804
    163c:	01138c13          	addi	s8,t2,17
    1640:	045d                	.insn	2, 0x045d
    1642:	1394                	.insn	2, 0x1394
    1644:	13a4                	.insn	2, 0x13a4
    1646:	5e01                	.insn	2, 0x5e01
    1648:	b804                	.insn	2, 0xb804
    164a:	0113ec13          	ori	s8,t2,17
    164e:	045e                	.insn	2, 0x045e
    1650:	1498                	.insn	2, 0x1498
    1652:	14a4                	.insn	2, 0x14a4
    1654:	5d01                	.insn	2, 0x5d01
    1656:	f804                	.insn	2, 0xf804
    1658:	8014                	.insn	2, 0x8014
    165a:	0115                	.insn	2, 0x0115
    165c:	045c                	.insn	2, 0x045c
    165e:	1588                	.insn	2, 0x1588
    1660:	1594                	.insn	2, 0x1594
    1662:	6001                	.insn	2, 0x6001
    1664:	ac04                	.insn	2, 0xac04
    1666:	b015                	.insn	2, 0xb015
    1668:	0115                	.insn	2, 0x0115
    166a:	005a                	.insn	2, 0x005a
    166c:	a404                	.insn	2, 0xa404
    166e:	ac01                	.insn	2, 0xac01
    1670:	0101                	.insn	2, 0x0101
    1672:	045e                	.insn	2, 0x045e
    1674:	02d8                	.insn	2, 0x02d8
    1676:	02e8                	.insn	2, 0x02e8
    1678:	5e01                	.insn	2, 0x5e01
    167a:	e804                	.insn	2, 0xe804
    167c:	ec02                	.insn	2, 0xec02
    167e:	0902                	.insn	2, 0x0902
    1680:	007e                	.insn	2, 0x007e
    1682:	ff11                	.insn	2, 0xff11
    1684:	ffff                	.insn	2, 0xffff
    1686:	049f1a7b          	.insn	4, 0x049f1a7b
    168a:	02ec                	.insn	2, 0x02ec
    168c:	0384                	.insn	2, 0x0384
    168e:	11007e0b          	.insn	4, 0x11007e0b
    1692:	ffff                	.insn	2, 0xffff
    1694:	7bff                	.insn	2, 0x7bff
    1696:	311a                	.insn	2, 0x311a
    1698:	9f25                	.insn	2, 0x9f25
    169a:	9004                	.insn	2, 0x9004
    169c:	9c04                	.insn	2, 0x9c04
    169e:	0104                	.insn	2, 0x0104
    16a0:	045e                	.insn	2, 0x045e
    16a2:	049c                	.insn	2, 0x049c
    16a4:	04a0                	.insn	2, 0x04a0
    16a6:	6c01                	.insn	2, 0x6c01
    16a8:	f404                	.insn	2, 0xf404
    16aa:	fc04                	.insn	2, 0xfc04
    16ac:	0104                	.insn	2, 0x0104
    16ae:	045e                	.insn	2, 0x045e
    16b0:	06a4                	.insn	2, 0x06a4
    16b2:	06b8                	.insn	2, 0x06b8
    16b4:	6c01                	.insn	2, 0x6c01
    16b6:	b804                	.insn	2, 0xb804
    16b8:	c006                	.insn	2, 0xc006
    16ba:	0106                	.insn	2, 0x0106
    16bc:	045e                	.insn	2, 0x045e
    16be:	079c                	.insn	2, 0x079c
    16c0:	07a8                	.insn	2, 0x07a8
    16c2:	7a1c                	.insn	2, 0x7a1c
    16c4:	4000                	.insn	2, 0x4000
    16c6:	7a22244b          	.insn	4, 0x7a22244b
    16ca:	7c00                	.insn	2, 0x7c00
    16cc:	2200                	.insn	2, 0x2200
    16ce:	4b40                	.insn	2, 0x4b40
    16d0:	2224                	.insn	2, 0x2224
    16d2:	1aff082b          	.insn	4, 0x1aff082b
    16d6:	007e                	.insn	2, 0x007e
    16d8:	8c22                	.insn	2, 0x8c22
    16da:	2200                	.insn	2, 0x2200
    16dc:	2531                	.insn	2, 0x2531
    16de:	049f 07a8 07ac      	.insn	6, 0x07ac07a8049f
    16e4:	7a19                	.insn	2, 0x7a19
    16e6:	4000                	.insn	2, 0x4000
    16e8:	7c22244b          	.insn	4, 0x7c22244b
    16ec:	4000                	.insn	2, 0x4000
    16ee:	2b22244b          	.insn	4, 0x2b22244b
    16f2:	ff08                	.insn	2, 0xff08
    16f4:	7e1a                	.insn	2, 0x7e1a
    16f6:	2200                	.insn	2, 0x2200
    16f8:	008c                	.insn	2, 0x008c
    16fa:	3122                	.insn	2, 0x3122
    16fc:	9f25                	.insn	2, 0x9f25
    16fe:	cc04                	.insn	2, 0xcc04
    1700:	1c07dc07          	.insn	4, 0x1c07dc07
    1704:	007a                	.insn	2, 0x007a
    1706:	4b40                	.insn	2, 0x4b40
    1708:	2224                	.insn	2, 0x2224
    170a:	007a                	.insn	2, 0x007a
    170c:	007c                	.insn	2, 0x007c
    170e:	4022                	.insn	2, 0x4022
    1710:	2b22244b          	.insn	4, 0x2b22244b
    1714:	ff08                	.insn	2, 0xff08
    1716:	7e1a                	.insn	2, 0x7e1a
    1718:	2200                	.insn	2, 0x2200
    171a:	008c                	.insn	2, 0x008c
    171c:	3122                	.insn	2, 0x3122
    171e:	9f25                	.insn	2, 0x9f25
    1720:	ec04                	.insn	2, 0xec04
    1722:	1c088007          	.insn	4, 0x1c088007
    1726:	007a                	.insn	2, 0x007a
    1728:	4b40                	.insn	2, 0x4b40
    172a:	2224                	.insn	2, 0x2224
    172c:	007a                	.insn	2, 0x007a
    172e:	007c                	.insn	2, 0x007c
    1730:	4022                	.insn	2, 0x4022
    1732:	2b22244b          	.insn	4, 0x2b22244b
    1736:	ff08                	.insn	2, 0xff08
    1738:	7e1a                	.insn	2, 0x7e1a
    173a:	2200                	.insn	2, 0x2200
    173c:	008c                	.insn	2, 0x008c
    173e:	3122                	.insn	2, 0x3122
    1740:	9f25                	.insn	2, 0x9f25
    1742:	8004                	.insn	2, 0x8004
    1744:	9008                	.insn	2, 0x9008
    1746:	0b08                	.insn	2, 0x0b08
    1748:	007e                	.insn	2, 0x007e
    174a:	ff11                	.insn	2, 0xff11
    174c:	ffff                	.insn	2, 0xffff
    174e:	25311a7b          	.insn	4, 0x25311a7b
    1752:	049f 08a0 08b0      	.insn	6, 0x08b008a0049f
    1758:	11007e0b          	.insn	4, 0x11007e0b
    175c:	ffff                	.insn	2, 0xffff
    175e:	7bff                	.insn	2, 0x7bff
    1760:	311a                	.insn	2, 0x311a
    1762:	9f25                	.insn	2, 0x9f25
    1764:	d804                	.insn	2, 0xd804
    1766:	e008                	.insn	2, 0xe008
    1768:	0108                	.insn	2, 0x0108
    176a:	045e                	.insn	2, 0x045e
    176c:	09ac                	.insn	2, 0x09ac
    176e:	09c4                	.insn	2, 0x09c4
    1770:	5e01                	.insn	2, 0x5e01
    1772:	c404                	.insn	2, 0xc404
    1774:	d009                	.insn	2, 0xd009
    1776:	0109                	.insn	2, 0x0109
    1778:	0461                	.insn	2, 0x0461
    177a:	0ae8                	.insn	2, 0x0ae8
    177c:	0af0                	.insn	2, 0x0af0
    177e:	5e01                	.insn	2, 0x5e01
    1780:	9404                	.insn	2, 0x9404
    1782:	a00c                	.insn	2, 0xa00c
    1784:	010c                	.insn	2, 0x010c
    1786:	045e                	.insn	2, 0x045e
    1788:	0cfc                	.insn	2, 0x0cfc
    178a:	0d90                	.insn	2, 0x0d90
    178c:	5e01                	.insn	2, 0x5e01
    178e:	9004                	.insn	2, 0x9004
    1790:	9c0d                	.insn	2, 0x9c0d
    1792:	010d                	.insn	2, 0x010d
    1794:	046c                	.insn	2, 0x046c
    1796:	0dbc                	.insn	2, 0x0dbc
    1798:	0dcc                	.insn	2, 0x0dcc
    179a:	5f01                	.insn	2, 0x5f01
    179c:	d804                	.insn	2, 0xd804
    179e:	e00d                	.insn	2, 0xe00d
    17a0:	010d                	.insn	2, 0x010d
    17a2:	046c                	.insn	2, 0x046c
    17a4:	0de0                	.insn	2, 0x0de0
    17a6:	0de8                	.insn	2, 0x0de8
    17a8:	5f01                	.insn	2, 0x5f01
    17aa:	f004                	.insn	2, 0xf004
    17ac:	f80d                	.insn	2, 0xf80d
    17ae:	020d                	.insn	2, 0x020d
    17b0:	9f30                	.insn	2, 0x9f30
    17b2:	9004                	.insn	2, 0x9004
    17b4:	010f9c0f          	.insn	4, 0x010f9c0f
    17b8:	0461                	.insn	2, 0x0461
    17ba:	0f9c                	.insn	2, 0x0f9c
    17bc:	0fa4                	.insn	2, 0x0fa4
    17be:	8c14                	.insn	2, 0x8c14
    17c0:	7e00                	.insn	2, 0x7e00
    17c2:	1c00                	.insn	2, 0x1c00
    17c4:	007a                	.insn	2, 0x007a
    17c6:	4b40                	.insn	2, 0x4b40
    17c8:	2224                	.insn	2, 0x2224
    17ca:	0080                	.insn	2, 0x0080
    17cc:	4b40                	.insn	2, 0x4b40
    17ce:	2224                	.insn	2, 0x2224
    17d0:	1c2d                	.insn	2, 0x1c2d
    17d2:	049f 0fa4 0fc0      	.insn	6, 0x0fc00fa4049f
    17d8:	6101                	.insn	2, 0x6101
    17da:	c804                	.insn	2, 0xc804
    17dc:	0110840f          	.insn	4, 0x0110840f
    17e0:	045e                	.insn	2, 0x045e
    17e2:	1084                	.insn	2, 0x1084
    17e4:	1088                	.insn	2, 0x1088
    17e6:	6c01                	.insn	2, 0x6c01
    17e8:	8804                	.insn	2, 0x8804
    17ea:	ac10                	.insn	2, 0xac10
    17ec:	0110                	.insn	2, 0x0110
    17ee:	0461                	.insn	2, 0x0461
    17f0:	10ac                	.insn	2, 0x10ac
    17f2:	10f8                	.insn	2, 0x10f8
    17f4:	5e01                	.insn	2, 0x5e01
    17f6:	f804                	.insn	2, 0xf804
    17f8:	e810                	.insn	2, 0xe810
    17fa:	0112                	.insn	2, 0x0112
    17fc:	046c                	.insn	2, 0x046c
    17fe:	12f0                	.insn	2, 0x12f0
    1800:	1388                	.insn	2, 0x1388
    1802:	8c09                	.insn	2, 0x8c09
    1804:	1100                	.insn	2, 0x1100
    1806:	ffff                	.insn	2, 0xffff
    1808:	7bff                	.insn	2, 0x7bff
    180a:	9f1a                	.insn	2, 0x9f1a
    180c:	8804                	.insn	2, 0x8804
    180e:	0113a813          	slti	a6,t2,17
    1812:	046c                	.insn	2, 0x046c
    1814:	13b8                	.insn	2, 0x13b8
    1816:	13c4                	.insn	2, 0x13c4
    1818:	6c01                	.insn	2, 0x6c01
    181a:	ec04                	.insn	2, 0xec04
    181c:	09149813          	.insn	4, 0x09149813
    1820:	008c                	.insn	2, 0x008c
    1822:	ff11                	.insn	2, 0xff11
    1824:	ffff                	.insn	2, 0xffff
    1826:	049f1a7b          	.insn	4, 0x049f1a7b
    182a:	1498                	.insn	2, 0x1498
    182c:	14a4                	.insn	2, 0x14a4
    182e:	5d01                	.insn	2, 0x5d01
    1830:	f804                	.insn	2, 0xf804
    1832:	8014                	.insn	2, 0x8014
    1834:	0115                	.insn	2, 0x0115
    1836:	045e                	.insn	2, 0x045e
    1838:	1588                	.insn	2, 0x1588
    183a:	1594                	.insn	2, 0x1594
    183c:	5f01                	.insn	2, 0x5f01
    183e:	0400                	.insn	2, 0x0400
    1840:	7868                	.insn	2, 0x7868
    1842:	6001                	.insn	2, 0x6001
    1844:	8c04                	.insn	2, 0x8c04
    1846:	9001                	.insn	2, 0x9001
    1848:	0101                	.insn	2, 0x0101
    184a:	0460                	.insn	2, 0x0460
    184c:	0190                	.insn	2, 0x0190
    184e:	0194                	.insn	2, 0x0194
    1850:	6101                	.insn	2, 0x6101
    1852:	ac04                	.insn	2, 0xac04
    1854:	b401                	.insn	2, 0xb401
    1856:	0101                	.insn	2, 0x0101
    1858:	0461                	.insn	2, 0x0461
    185a:	01d8                	.insn	2, 0x01d8
    185c:	01e0                	.insn	2, 0x01e0
    185e:	6001                	.insn	2, 0x6001
    1860:	8404                	.insn	2, 0x8404
    1862:	9002                	.insn	2, 0x9002
    1864:	0102                	.insn	2, 0x0102
    1866:	0460                	.insn	2, 0x0460
    1868:	0290                	.insn	2, 0x0290
    186a:	02c4                	.insn	2, 0x02c4
    186c:	6101                	.insn	2, 0x6101
    186e:	9c04                	.insn	2, 0x9c04
    1870:	0103cc03          	lbu	s8,16(t2)
    1874:	0461                	.insn	2, 0x0461
    1876:	03d0                	.insn	2, 0x03d0
    1878:	03dc                	.insn	2, 0x03dc
    187a:	6101                	.insn	2, 0x6101
    187c:	dc04                	.insn	2, 0xdc04
    187e:	0603e403          	.insn	4, 0x0603e403
    1882:	007f 0081 9f1c e404 	.insn	10, 0xf803e4049f1c0081007f
    188a:	f803 
    188c:	04600103          	lb	sp,70(zero) # 46 <_tbss_end+0x46>
    1890:	04a0                	.insn	2, 0x04a0
    1892:	04a4                	.insn	2, 0x04a4
    1894:	6001                	.insn	2, 0x6001
    1896:	a404                	.insn	2, 0xa404
    1898:	e404                	.insn	2, 0xe404
    189a:	0104                	.insn	2, 0x0104
    189c:	045d                	.insn	2, 0x045d
    189e:	04fc                	.insn	2, 0x04fc
    18a0:	059c                	.insn	2, 0x059c
    18a2:	6001                	.insn	2, 0x6001
    18a4:	a404                	.insn	2, 0xa404
    18a6:	b405                	.insn	2, 0xb405
    18a8:	0105                	.insn	2, 0x0105
    18aa:	0460                	.insn	2, 0x0460
    18ac:	05b4                	.insn	2, 0x05b4
    18ae:	05e4                	.insn	2, 0x05e4
    18b0:	5d01                	.insn	2, 0x5d01
    18b2:	e804                	.insn	2, 0xe804
    18b4:	f405                	.insn	2, 0xf405
    18b6:	0105                	.insn	2, 0x0105
    18b8:	045d                	.insn	2, 0x045d
    18ba:	05f4                	.insn	2, 0x05f4
    18bc:	06d0                	.insn	2, 0x06d0
    18be:	7f06                	.insn	2, 0x7f06
    18c0:	8100                	.insn	2, 0x8100
    18c2:	1c00                	.insn	2, 0x1c00
    18c4:	049f 06f8 06fc      	.insn	6, 0x06fc06f8049f
    18ca:	7f06                	.insn	2, 0x7f06
    18cc:	8100                	.insn	2, 0x8100
    18ce:	1c00                	.insn	2, 0x1c00
    18d0:	049f 079c 07a0      	.insn	6, 0x07a0079c049f
    18d6:	7f06                	.insn	2, 0x7f06
    18d8:	8100                	.insn	2, 0x8100
    18da:	1c00                	.insn	2, 0x1c00
    18dc:	049f 07a0 07c4      	.insn	6, 0x07c407a0049f
    18e2:	20008107          	.insn	4, 0x20008107
    18e6:	0080                	.insn	2, 0x0080
    18e8:	9f22                	.insn	2, 0x9f22
    18ea:	cc04                	.insn	2, 0xcc04
    18ec:	0707dc07          	.insn	4, 0x0707dc07
    18f0:	0081                	.insn	2, 0x0081
    18f2:	8020                	.insn	2, 0x8020
    18f4:	2200                	.insn	2, 0x2200
    18f6:	049f 07ec 07fc      	.insn	6, 0x07fc07ec049f
    18fc:	20008107          	.insn	4, 0x20008107
    1900:	0080                	.insn	2, 0x0080
    1902:	9f22                	.insn	2, 0x9f22
    1904:	a404                	.insn	2, 0xa404
    1906:	ac14                	.insn	2, 0xac14
    1908:	0114                	.insn	2, 0x0114
    190a:	0460                	.insn	2, 0x0460
    190c:	14f0                	.insn	2, 0x14f0
    190e:	14f8                	.insn	2, 0x14f8
    1910:	7f06                	.insn	2, 0x7f06
    1912:	8100                	.insn	2, 0x8100
    1914:	1c00                	.insn	2, 0x1c00
    1916:	049f 15a0 15a8      	.insn	6, 0x15a815a0049f
    191c:	7f06                	.insn	2, 0x7f06
    191e:	8100                	.insn	2, 0x8100
    1920:	1c00                	.insn	2, 0x1c00
    1922:	009f d404 dc02      	.insn	6, 0xdc02d404009f
    1928:	0102                	.insn	2, 0x0102
    192a:	005a                	.insn	2, 0x005a
    192c:	9404                	.insn	2, 0x9404
    192e:	9801                	.insn	2, 0x9801
    1930:	0601                	.insn	2, 0x0601
    1932:	007a                	.insn	2, 0x007a
    1934:	007c                	.insn	2, 0x007c
    1936:	9f22                	.insn	2, 0x9f22
    1938:	9804                	.insn	2, 0x9804
    193a:	ac01                	.insn	2, 0xac01
    193c:	0101                	.insn	2, 0x0101
    193e:	005c                	.insn	2, 0x005c
    1940:	e404                	.insn	2, 0xe404
    1942:	e804                	.insn	2, 0xe804
    1944:	0604                	.insn	2, 0x0604
    1946:	007f 007c 9f22 e804 	.insn	10, 0xfc04e8049f22007c007f
    194e:	fc04 
    1950:	0104                	.insn	2, 0x0104
    1952:	005c                	.insn	2, 0x005c
    1954:	9404                	.insn	2, 0x9404
    1956:	9806                	.insn	2, 0x9806
    1958:	0606                	.insn	2, 0x0606
    195a:	007a                	.insn	2, 0x007a
    195c:	007c                	.insn	2, 0x007c
    195e:	9f22                	.insn	2, 0x9f22
    1960:	9804                	.insn	2, 0x9804
    1962:	c006                	.insn	2, 0xc006
    1964:	0106                	.insn	2, 0x0106
    1966:	005c                	.insn	2, 0x005c
    1968:	9c04                	.insn	2, 0x9c04
    196a:	0607a807          	flw	fa6,96(a5)
    196e:	007a                	.insn	2, 0x007a
    1970:	007c                	.insn	2, 0x007c
    1972:	9f22                	.insn	2, 0x9f22
    1974:	a804                	.insn	2, 0xa804
    1976:	0107bc07          	.insn	4, 0x0107bc07
    197a:	045c                	.insn	2, 0x045c
    197c:	07cc                	.insn	2, 0x07cc
    197e:	07dc                	.insn	2, 0x07dc
    1980:	7a06                	.insn	2, 0x7a06
    1982:	7c00                	.insn	2, 0x7c00
    1984:	2200                	.insn	2, 0x2200
    1986:	049f 07ec 0880      	.insn	6, 0x088007ec049f
    198c:	7a06                	.insn	2, 0x7a06
    198e:	7c00                	.insn	2, 0x7c00
    1990:	2200                	.insn	2, 0x2200
    1992:	009f b004 c408      	.insn	6, 0xc408b004009f
    1998:	0608                	.insn	2, 0x0608
    199a:	007f 0081 9f1c c404 	.insn	10, 0xd808c4049f1c0081007f
    19a2:	d808 
    19a4:	0108                	.insn	2, 0x0108
    19a6:	045d                	.insn	2, 0x045d
    19a8:	08e0                	.insn	2, 0x08e0
    19aa:	099c                	.insn	2, 0x099c
    19ac:	5d01                	.insn	2, 0x5d01
    19ae:	d004                	.insn	2, 0xd004
    19b0:	e809                	.insn	2, 0xe809
    19b2:	0609                	.insn	2, 0x0609
    19b4:	007f 0081 9f1c e804 	.insn	10, 0x9809e8049f1c0081007f
    19bc:	9809 
    19be:	010a                	.insn	2, 0x010a
    19c0:	045d                	.insn	2, 0x045d
    19c2:	0a9c                	.insn	2, 0x0a9c
    19c4:	0aa8                	.insn	2, 0x0aa8
    19c6:	5d01                	.insn	2, 0x5d01
    19c8:	a804                	.insn	2, 0xa804
    19ca:	b00a                	.insn	2, 0xb00a
    19cc:	060a                	.insn	2, 0x060a
    19ce:	007f 0081 9f1c b004 	.insn	10, 0xd00ab0049f1c0081007f
    19d6:	d00a 
    19d8:	010a                	.insn	2, 0x010a
    19da:	0460                	.insn	2, 0x0460
    19dc:	0ad0                	.insn	2, 0x0ad0
    19de:	0aec                	.insn	2, 0x0aec
    19e0:	5b01                	.insn	2, 0x5b01
    19e2:	ec04                	.insn	2, 0xec04
    19e4:	f00a                	.insn	2, 0xf00a
    19e6:	030a                	.insn	2, 0x030a
    19e8:	7f80                	.insn	2, 0x7f80
    19ea:	049f 0af0 0afc      	.insn	6, 0x0afc0af0049f
    19f0:	5b01                	.insn	2, 0x5b01
    19f2:	fc04                	.insn	2, 0xfc04
    19f4:	900a                	.insn	2, 0x900a
    19f6:	7f80030b          	.insn	4, 0x7f80030b
    19fa:	049f 0b98 0bbc      	.insn	6, 0x0bbc0b98049f
    1a00:	6001                	.insn	2, 0x6001
    1a02:	c004                	.insn	2, 0xc004
    1a04:	010bcc0b          	.insn	4, 0x010bcc0b
    1a08:	0460                	.insn	2, 0x0460
    1a0a:	0bcc                	.insn	2, 0x0bcc
    1a0c:	0c80                	.insn	2, 0x0c80
    1a0e:	5b01                	.insn	2, 0x5b01
    1a10:	a004                	.insn	2, 0xa004
    1a12:	d00c                	.insn	2, 0xd00c
    1a14:	010c                	.insn	2, 0x010c
    1a16:	0cd4045b          	.insn	4, 0x0cd4045b
    1a1a:	0ce0                	.insn	2, 0x0ce0
    1a1c:	5b01                	.insn	2, 0x5b01
    1a1e:	e004                	.insn	2, 0xe004
    1a20:	900c                	.insn	2, 0x900c
    1a22:	060d                	.insn	2, 0x060d
    1a24:	007f 0081 9f1c a804 	.insn	10, 0xb40da8049f1c0081007f
    1a2c:	b40d 
    1a2e:	060d                	.insn	2, 0x060d
    1a30:	007f 0081 9f1c f804 	.insn	10, 0x880df8049f1c0081007f
    1a38:	880d 
    1a3a:	060e                	.insn	2, 0x060e
    1a3c:	007f 0081 9f1c b804 	.insn	10, 0xbc0eb8049f1c0081007f
    1a44:	bc0e 
    1a46:	060e                	.insn	2, 0x060e
    1a48:	007f 0081 9f1c dc04 	.insn	10, 0xe00edc049f1c0081007f
    1a50:	e00e 
    1a52:	060e                	.insn	2, 0x060e
    1a54:	007f 0081 9f1c f804 	.insn	10, 0x840ef8049f1c0081007f
    1a5c:	840e 
    1a5e:	007f060f          	.insn	4, 0x007f060f
    1a62:	0081                	.insn	2, 0x0081
    1a64:	9f1c                	.insn	2, 0x9f1c
    1a66:	d004                	.insn	2, 0xd004
    1a68:	dc14                	.insn	2, 0xdc14
    1a6a:	0314                	.insn	2, 0x0314
    1a6c:	7f80                	.insn	2, 0x7f80
    1a6e:	049f 14dc 14e8      	.insn	6, 0x14e814dc049f
    1a74:	6001                	.insn	2, 0x6001
    1a76:	f804                	.insn	2, 0xf804
    1a78:	8014                	.insn	2, 0x8014
    1a7a:	0615                	.insn	2, 0x0615
    1a7c:	007f 0081 9f1c 9404 	.insn	10, 0x9c1594049f1c0081007f
    1a84:	9c15 
    1a86:	0615                	.insn	2, 0x0615
    1a88:	007f 0081 9f1c 0400 	.insn	10, 0x08c804009f1c0081007f
    1a90:	08c8 
    1a92:	08cc                	.insn	2, 0x08cc
    1a94:	7a06                	.insn	2, 0x7a06
    1a96:	7c00                	.insn	2, 0x7c00
    1a98:	1c00                	.insn	2, 0x1c00
    1a9a:	049f 08cc 08d8      	.insn	6, 0x08d808cc049f
    1aa0:	5c01                	.insn	2, 0x5c01
    1aa2:	0400                	.insn	2, 0x0400
    1aa4:	099c                	.insn	2, 0x099c
    1aa6:	09a0                	.insn	2, 0x09a0
    1aa8:	7a06                	.insn	2, 0x7a06
    1aaa:	7c00                	.insn	2, 0x7c00
    1aac:	1c00                	.insn	2, 0x1c00
    1aae:	049f 09a0 09b0      	.insn	6, 0x09b009a0049f
    1ab4:	5c01                	.insn	2, 0x5c01
    1ab6:	0400                	.insn	2, 0x0400
    1ab8:	0ae4                	.insn	2, 0x0ae4
    1aba:	0af0                	.insn	2, 0x0af0
    1abc:	5a01                	.insn	2, 0x5a01
    1abe:	0400                	.insn	2, 0x0400
    1ac0:	0c94                	.insn	2, 0x0c94
    1ac2:	0ca0                	.insn	2, 0x0ca0
    1ac4:	5c01                	.insn	2, 0x5c01
    1ac6:	0400                	.insn	2, 0x0400
    1ac8:	0db0                	.insn	2, 0x0db0
    1aca:	0dd8                	.insn	2, 0x0dd8
    1acc:	6001                	.insn	2, 0x6001
    1ace:	e004                	.insn	2, 0xe004
    1ad0:	e80d                	.insn	2, 0xe80d
    1ad2:	010d                	.insn	2, 0x010d
    1ad4:	0460                	.insn	2, 0x0460
    1ad6:	1588                	.insn	2, 0x1588
    1ad8:	1594                	.insn	2, 0x1594
    1ada:	6001                	.insn	2, 0x6001
    1adc:	0400                	.insn	2, 0x0400
    1ade:	0dd4                	.insn	2, 0x0dd4
    1ae0:	0dd8                	.insn	2, 0x0dd8
    1ae2:	5a01                	.insn	2, 0x5a01
    1ae4:	0400                	.insn	2, 0x0400
    1ae6:	0f90                	.insn	2, 0x0f90
    1ae8:	0fa8                	.insn	2, 0x0fa8
    1aea:	6001                	.insn	2, 0x6001
    1aec:	8804                	.insn	2, 0x8804
    1aee:	9410                	.insn	2, 0x9410
    1af0:	0110                	.insn	2, 0x0110
    1af2:	0060                	.insn	2, 0x0060
    1af4:	9404                	.insn	2, 0x9404
    1af6:	060f980f          	.insn	4, 0x060f980f
    1afa:	007c                	.insn	2, 0x007c
    1afc:	007a                	.insn	2, 0x007a
    1afe:	9f1c                	.insn	2, 0x9f1c
    1b00:	9804                	.insn	2, 0x9804
    1b02:	010fa80f          	.insn	4, 0x010fa80f
    1b06:	006d                	.insn	2, 0x006d
    1b08:	b004                	.insn	2, 0xb004
    1b0a:	010fd40f          	.insn	4, 0x010fd40f
    1b0e:	0460                	.insn	2, 0x0460
    1b10:	0fd8                	.insn	2, 0x0fd8
    1b12:	1084                	.insn	2, 0x1084
    1b14:	6c01                	.insn	2, 0x6c01
    1b16:	8404                	.insn	2, 0x8404
    1b18:	8810                	.insn	2, 0x8810
    1b1a:	0310                	.insn	2, 0x0310
    1b1c:	0180                	.insn	2, 0x0180
    1b1e:	049f 1098 10a0      	.insn	6, 0x10a01098049f
    1b24:	9f207e03          	.insn	4, 0x9f207e03
    1b28:	a004                	.insn	2, 0xa004
    1b2a:	b010                	.insn	2, 0xb010
    1b2c:	0110                	.insn	2, 0x0110
    1b2e:	0460                	.insn	2, 0x0460
    1b30:	10b0                	.insn	2, 0x10b0
    1b32:	10e0                	.insn	2, 0x10e0
    1b34:	6c01                	.insn	2, 0x6c01
    1b36:	e004                	.insn	2, 0xe004
    1b38:	e410                	.insn	2, 0xe410
    1b3a:	0110                	.insn	2, 0x0110
    1b3c:	0060                	.insn	2, 0x0060
    1b3e:	f804                	.insn	2, 0xf804
    1b40:	d410                	.insn	2, 0xd410
    1b42:	0211                	.insn	2, 0x0211
    1b44:	9f31                	.insn	2, 0x9f31
    1b46:	d404                	.insn	2, 0xd404
    1b48:	9011                	.insn	2, 0x9011
    1b4a:	0112                	.insn	2, 0x0112
    1b4c:	045e                	.insn	2, 0x045e
    1b4e:	1290                	.insn	2, 0x1290
    1b50:	12c8                	.insn	2, 0x12c8
    1b52:	3102                	.insn	2, 0x3102
    1b54:	049f 12c8 12e0      	.insn	6, 0x12e012c8049f
    1b5a:	5e01                	.insn	2, 0x5e01
    1b5c:	0400                	.insn	2, 0x0400
    1b5e:	10f8                	.insn	2, 0x10f8
    1b60:	11d4                	.insn	2, 0x11d4
    1b62:	5b01                	.insn	2, 0x5b01
    1b64:	9004                	.insn	2, 0x9004
    1b66:	c812                	.insn	2, 0xc812
    1b68:	0112                	.insn	2, 0x0112
    1b6a:	f804005b          	.insn	4, 0xf804005b
    1b6e:	d410                	.insn	2, 0xd410
    1b70:	0211                	.insn	2, 0x0211
    1b72:	9f30                	.insn	2, 0x9f30
    1b74:	9004                	.insn	2, 0x9004
    1b76:	c812                	.insn	2, 0xc812
    1b78:	0212                	.insn	2, 0x0212
    1b7a:	9f30                	.insn	2, 0x9f30
    1b7c:	0400                	.insn	2, 0x0400
    1b7e:	10f8                	.insn	2, 0x10f8
    1b80:	118c                	.insn	2, 0x118c
    1b82:	5c01                	.insn	2, 0x5c01
    1b84:	8c04                	.insn	2, 0x8c04
    1b86:	b811                	.insn	2, 0xb811
    1b88:	0111                	.insn	2, 0x0111
    1b8a:	045d                	.insn	2, 0x045d
    1b8c:	11b8                	.insn	2, 0x11b8
    1b8e:	11c0                	.insn	2, 0x11c0
    1b90:	7c05                	.insn	2, 0x7c05
    1b92:	3100                	.insn	2, 0x3100
    1b94:	9f24                	.insn	2, 0x9f24
    1b96:	9004                	.insn	2, 0x9004
    1b98:	9c12                	.insn	2, 0x9c12
    1b9a:	0112                	.insn	2, 0x0112
    1b9c:	045d                	.insn	2, 0x045d
    1b9e:	129c                	.insn	2, 0x129c
    1ba0:	12a4                	.insn	2, 0x12a4
    1ba2:	7c05                	.insn	2, 0x7c05
    1ba4:	3100                	.insn	2, 0x3100
    1ba6:	9f24                	.insn	2, 0x9f24
    1ba8:	a404                	.insn	2, 0xa404
    1baa:	ac12                	.insn	2, 0xac12
    1bac:	0712                	.insn	2, 0x0712
    1bae:	007c                	.insn	2, 0x007c
    1bb0:	2431                	.insn	2, 0x2431
    1bb2:	049f0823          	sb	s1,80(t5)
    1bb6:	12ac                	.insn	2, 0x12ac
    1bb8:	12b8                	.insn	2, 0x12b8
    1bba:	5d01                	.insn	2, 0x5d01
    1bbc:	b804                	.insn	2, 0xb804
    1bbe:	c012                	.insn	2, 0xc012
    1bc0:	0512                	.insn	2, 0x0512
    1bc2:	007c                	.insn	2, 0x007c
    1bc4:	2431                	.insn	2, 0x2431
    1bc6:	049f 12c0 12c8      	.insn	6, 0x12c812c0049f
    1bcc:	31007c07          	.insn	4, 0x31007c07
    1bd0:	2324                	.insn	2, 0x2324
    1bd2:	9f08                	.insn	2, 0x9f08
    1bd4:	0400                	.insn	2, 0x0400
    1bd6:	10f8                	.insn	2, 0x10f8
    1bd8:	118c                	.insn	2, 0x118c
    1bda:	6c01                	.insn	2, 0x6c01
    1bdc:	8c04                	.insn	2, 0x8c04
    1bde:	c411                	.insn	2, 0xc411
    1be0:	0111                	.insn	2, 0x0111
    1be2:	045e                	.insn	2, 0x045e
    1be4:	1290                	.insn	2, 0x1290
    1be6:	12c8                	.insn	2, 0x12c8
    1be8:	5e01                	.insn	2, 0x5e01
    1bea:	0400                	.insn	2, 0x0400
    1bec:	11b4                	.insn	2, 0x11b4
    1bee:	11b8                	.insn	2, 0x11b8
    1bf0:	9f047d03          	.insn	4, 0x9f047d03
    1bf4:	b804                	.insn	2, 0xb804
    1bf6:	c011                	.insn	2, 0xc011
    1bf8:	0711                	.insn	2, 0x0711
    1bfa:	007c                	.insn	2, 0x007c
    1bfc:	2431                	.insn	2, 0x2431
    1bfe:	009f0423          	sb	s1,8(t5)
    1c02:	9804                	.insn	2, 0x9804
    1c04:	9c12                	.insn	2, 0x9c12
    1c06:	0312                	.insn	2, 0x0312
    1c08:	087d                	.insn	2, 0x087d
    1c0a:	049f 129c 12ac      	.insn	6, 0x12ac129c049f
    1c10:	31007c07          	.insn	4, 0x31007c07
    1c14:	2324                	.insn	2, 0x2324
    1c16:	9f08                	.insn	2, 0x9f08
    1c18:	0400                	.insn	2, 0x0400
    1c1a:	12b4                	.insn	2, 0x12b4
    1c1c:	12b8                	.insn	2, 0x12b8
    1c1e:	9f087d03          	.insn	4, 0x9f087d03
    1c22:	b804                	.insn	2, 0xb804
    1c24:	c812                	.insn	2, 0xc812
    1c26:	0712                	.insn	2, 0x0712
    1c28:	007c                	.insn	2, 0x007c
    1c2a:	2431                	.insn	2, 0x2431
    1c2c:	009f0823          	sb	s1,16(t5)
    1c30:	01b6                	.insn	2, 0x01b6
    1c32:	0000                	.insn	2, 0x
    1c34:	0005                	.insn	2, 0x0005
    1c36:	0004                	.insn	2, 0x0004
    1c38:	0000                	.insn	2, 0x
    1c3a:	0000                	.insn	2, 0x
    1c3c:	0004                	.insn	2, 0x0004
    1c3e:	062c                	.insn	2, 0x062c
    1c40:	935a                	.insn	2, 0x935a
    1c42:	5b04                	.insn	2, 0x5b04
    1c44:	2c040493          	addi	s1,s0,704
    1c48:	0634                	.insn	2, 0x0634
    1c4a:	0aa503a3          	sb	a0,167(a0)
    1c4e:	9f26                	.insn	2, 0x9f26
    1c50:	3404                	.insn	2, 0x3404
    1c52:	065c                	.insn	2, 0x065c
    1c54:	935a                	.insn	2, 0x935a
    1c56:	5b04                	.insn	2, 0x5b04
    1c58:	5c040493          	addi	s1,s0,1472
    1c5c:	0668                	.insn	2, 0x0668
    1c5e:	0aa503a3          	sb	a0,167(a0)
    1c62:	9f26                	.insn	2, 0x9f26
    1c64:	6804                	.insn	2, 0x6804
    1c66:	018c                	.insn	2, 0x018c
    1c68:	5a06                	.insn	2, 0x5a06
    1c6a:	935b0493          	addi	s1,s6,-1739
    1c6e:	0404                	.insn	2, 0x0404
    1c70:	018c                	.insn	2, 0x018c
    1c72:	01a8                	.insn	2, 0x01a8
    1c74:	a306                	.insn	2, 0xa306
    1c76:	260aa503          	lw	a0,608(s5)
    1c7a:	049f 01a8 01d0      	.insn	6, 0x01d001a8049f
    1c80:	5a06                	.insn	2, 0x5a06
    1c82:	935b0493          	addi	s1,s6,-1739
    1c86:	0404                	.insn	2, 0x0404
    1c88:	01d0                	.insn	2, 0x01d0
    1c8a:	01e0                	.insn	2, 0x01e0
    1c8c:	a306                	.insn	2, 0xa306
    1c8e:	260aa503          	lw	a0,608(s5)
    1c92:	049f 01e0 01e4      	.insn	6, 0x01e401e0049f
    1c98:	5a06                	.insn	2, 0x5a06
    1c9a:	935b0493          	addi	s1,s6,-1739
    1c9e:	0404                	.insn	2, 0x0404
    1ca0:	01e4                	.insn	2, 0x01e4
    1ca2:	01f0                	.insn	2, 0x01f0
    1ca4:	a306                	.insn	2, 0xa306
    1ca6:	260aa503          	lw	a0,608(s5)
    1caa:	049f 01f0 01f4      	.insn	6, 0x01f401f0049f
    1cb0:	5a06                	.insn	2, 0x5a06
    1cb2:	935b0493          	addi	s1,s6,-1739
    1cb6:	0404                	.insn	2, 0x0404
    1cb8:	01f4                	.insn	2, 0x01f4
    1cba:	0284                	.insn	2, 0x0284
    1cbc:	a306                	.insn	2, 0xa306
    1cbe:	260aa503          	lw	a0,608(s5)
    1cc2:	009f 0004 01a0      	.insn	6, 0x01a00004009f
    1cc8:	3002                	.insn	2, 0x3002
    1cca:	049f 01a8 0284      	.insn	6, 0x028401a8049f
    1cd0:	3002                	.insn	2, 0x3002
    1cd2:	009f 1c04 0180      	.insn	6, 0x01801c04009f
    1cd8:	5d01                	.insn	2, 0x5d01
    1cda:	8004                	.insn	2, 0x8004
    1cdc:	9401                	.insn	2, 0x9401
    1cde:	0401                	.insn	2, 0x0401
    1ce0:	937d                	.insn	2, 0x937d
    1ce2:	9f08                	.insn	2, 0x9f08
    1ce4:	a804                	.insn	2, 0xa804
    1ce6:	c801                	.insn	2, 0xc801
    1ce8:	0101                	.insn	2, 0x0101
    1cea:	045d                	.insn	2, 0x045d
    1cec:	01d4                	.insn	2, 0x01d4
    1cee:	0284                	.insn	2, 0x0284
    1cf0:	5d01                	.insn	2, 0x5d01
    1cf2:	0400                	.insn	2, 0x0400
    1cf4:	2c04                	.insn	2, 0x2c04
    1cf6:	5a01                	.insn	2, 0x5a01
    1cf8:	3404                	.insn	2, 0x3404
    1cfa:	0148                	.insn	2, 0x0148
    1cfc:	045a                	.insn	2, 0x045a
    1cfe:	4c48                	.insn	2, 0x4c48
    1d00:	7f0a                	.insn	2, 0x7f0a
    1d02:	3b00                	.insn	2, 0x3b00
    1d04:	7a24                	.insn	2, 0x7a24
    1d06:	4500                	.insn	2, 0x4500
    1d08:	2125                	.insn	2, 0x2125
    1d0a:	049f 6854 5f01      	.insn	6, 0x5f016854049f
    1d10:	6804                	.insn	2, 0x6804
    1d12:	018c                	.insn	2, 0x018c
    1d14:	5a01                	.insn	2, 0x5a01
    1d16:	9404                	.insn	2, 0x9404
    1d18:	9c01                	.insn	2, 0x9c01
    1d1a:	0101                	.insn	2, 0x0101
    1d1c:	045a                	.insn	2, 0x045a
    1d1e:	01a8                	.insn	2, 0x01a8
    1d20:	01d4                	.insn	2, 0x01d4
    1d22:	5a01                	.insn	2, 0x5a01
    1d24:	e004                	.insn	2, 0xe004
    1d26:	e401                	.insn	2, 0xe401
    1d28:	0101                	.insn	2, 0x0101
    1d2a:	045a                	.insn	2, 0x045a
    1d2c:	01f8                	.insn	2, 0x01f8
    1d2e:	0284                	.insn	2, 0x0284
    1d30:	5f01                	.insn	2, 0x5f01
    1d32:	0400                	.insn	2, 0x0400
    1d34:	481c                	.insn	2, 0x481c
    1d36:	5f01                	.insn	2, 0x5f01
    1d38:	4804                	.insn	2, 0x4804
    1d3a:	0268                	.insn	2, 0x0268
    1d3c:	9f30                	.insn	2, 0x9f30
    1d3e:	6804                	.insn	2, 0x6804
    1d40:	0188                	.insn	2, 0x0188
    1d42:	5f01                	.insn	2, 0x5f01
    1d44:	9404                	.insn	2, 0x9404
    1d46:	a001                	.insn	2, 0xa001
    1d48:	0201                	.insn	2, 0x0201
    1d4a:	9f30                	.insn	2, 0x9f30
    1d4c:	a804                	.insn	2, 0xa804
    1d4e:	d001                	.insn	2, 0xd001
    1d50:	0101                	.insn	2, 0x0101
    1d52:	045f 01d0 01d4      	.insn	6, 0x01d401d0045f
    1d58:	3002                	.insn	2, 0x3002
    1d5a:	049f 01d4 01e8      	.insn	6, 0x01e801d4049f
    1d60:	5f01                	.insn	2, 0x5f01
    1d62:	f804                	.insn	2, 0xf804
    1d64:	8401                	.insn	2, 0x8401
    1d66:	0202                	.insn	2, 0x0202
    1d68:	9f30                	.insn	2, 0x9f30
    1d6a:	0400                	.insn	2, 0x0400
    1d6c:	3424                	.insn	2, 0x3424
    1d6e:	3002                	.insn	2, 0x3002
    1d70:	049f 683c 7b0c      	.insn	6, 0x7b0c683c049f
    1d76:	0800                	.insn	2, 0x0800
    1d78:	ff231aff 07ffffff 	.insn	12, 0x0194049f07ffffffff231aff
    1d80:	0194049f 
    1d84:	01a0                	.insn	2, 0x01a0
    1d86:	5a01                	.insn	2, 0x5a01
    1d88:	d404                	.insn	2, 0xd404
    1d8a:	e001                	.insn	2, 0xe001
    1d8c:	0201                	.insn	2, 0x0201
    1d8e:	9f30                	.insn	2, 0x9f30
    1d90:	e004                	.insn	2, 0xe004
    1d92:	8401                	.insn	2, 0x8401
    1d94:	0c02                	.insn	2, 0x0c02
    1d96:	ff08007b          	.insn	4, 0xff08007b
    1d9a:	231a                	.insn	2, 0x231a
    1d9c:	ffff                	.insn	2, 0xffff
    1d9e:	ffff                	.insn	2, 0xffff
    1da0:	04009f07          	.insn	4, 0x04009f07
    1da4:	5c48                	.insn	2, 0x5c48
    1da6:	7a0a                	.insn	2, 0x7a0a
    1da8:	3b00                	.insn	2, 0x3b00
    1daa:	3024                	.insn	2, 0x3024
    1dac:	082e                	.insn	2, 0x082e
    1dae:	049f1aff 7a08645c 	.insn	12, 0x082e30007a08645c049f1aff
    1db6:	082e3000 
    1dba:	049f1aff 028001f8 	.insn	12, 0x30007a08028001f8049f1aff
    1dc2:	30007a08 
    1dc6:	082e                	.insn	2, 0x082e
    1dc8:	009f1aff 01906804 	.insn	12, 0x049f300201906804009f1aff
    1dd0:	049f3002 
    1dd4:	0190                	.insn	2, 0x0190
    1dd6:	01a0                	.insn	2, 0x01a0
    1dd8:	5e01                	.insn	2, 0x5e01
    1dda:	a804                	.insn	2, 0xa804
    1ddc:	cc01                	.insn	2, 0xcc01
    1dde:	0201                	.insn	2, 0x0201
    1de0:	9f30                	.insn	2, 0x9f30
    1de2:	cc04                	.insn	2, 0xcc04
    1de4:	d401                	.insn	2, 0xd401
    1de6:	0101                	.insn	2, 0x0101
    1de8:	005e                	.insn	2, 0x005e
    1dea:	0115                	.insn	2, 0x0115
    1dec:	0000                	.insn	2, 0x
    1dee:	0005                	.insn	2, 0x0005
    1df0:	0004                	.insn	2, 0x0004
    1df2:	0000                	.insn	2, 0x
    1df4:	0000                	.insn	2, 0x
    1df6:	0004                	.insn	2, 0x0004
    1df8:	060c                	.insn	2, 0x060c
    1dfa:	935a                	.insn	2, 0x935a
    1dfc:	5b04                	.insn	2, 0x5b04
    1dfe:	0c040493          	addi	s1,s0,192
    1e02:	01c8                	.insn	2, 0x01c8
    1e04:	a306                	.insn	2, 0xa306
    1e06:	260aa503          	lw	a0,608(s5)
    1e0a:	009f 0004 0180      	.insn	6, 0x01800004009f
    1e10:	3002                	.insn	2, 0x3002
    1e12:	049f 0188 01c8      	.insn	6, 0x01c80188049f
    1e18:	3002                	.insn	2, 0x3002
    1e1a:	009f 2404 0654      	.insn	6, 0x06542404009f
    1e20:	ff08007b          	.insn	4, 0xff08007b
    1e24:	9f1a                	.insn	2, 0x9f1a
    1e26:	7804                	.insn	2, 0x7804
    1e28:	0180                	.insn	2, 0x0180
    1e2a:	7b06                	.insn	2, 0x7b06
    1e2c:	0800                	.insn	2, 0x0800
    1e2e:	049f1aff 01c801b8 	.insn	12, 0x08007b0601c801b8049f1aff
    1e36:	08007b06 
    1e3a:	009f1aff 01602004 	.insn	12, 0x7860045e01602004009f1aff
    1e42:	7860045e 
    1e46:	7e04                	.insn	2, 0x7e04
    1e48:	049f0893          	addi	a7,t5,73
    1e4c:	8078                	.insn	2, 0x8078
    1e4e:	0101                	.insn	2, 0x0101
    1e50:	045e                	.insn	2, 0x045e
    1e52:	0188                	.insn	2, 0x0188
    1e54:	01a4                	.insn	2, 0x01a4
    1e56:	5e01                	.insn	2, 0x5e01
    1e58:	b804                	.insn	2, 0xb804
    1e5a:	c801                	.insn	2, 0xc801
    1e5c:	0101                	.insn	2, 0x0101
    1e5e:	005e                	.insn	2, 0x005e
    1e60:	0804                	.insn	2, 0x0804
    1e62:	010c                	.insn	2, 0x010c
    1e64:	045a                	.insn	2, 0x045a
    1e66:	6c0c                	.insn	2, 0x6c0c
    1e68:	5d01                	.insn	2, 0x5d01
    1e6a:	7004                	.insn	2, 0x7004
    1e6c:	0178                	.insn	2, 0x0178
    1e6e:	045a                	.insn	2, 0x045a
    1e70:	8078                	.insn	2, 0x8078
    1e72:	0101                	.insn	2, 0x0101
    1e74:	045d                	.insn	2, 0x045d
    1e76:	0188                	.insn	2, 0x0188
    1e78:	01ac                	.insn	2, 0x01ac
    1e7a:	5d01                	.insn	2, 0x5d01
    1e7c:	ac04                	.insn	2, 0xac04
    1e7e:	b001                	.insn	2, 0xb001
    1e80:	0101                	.insn	2, 0x0101
    1e82:	045a                	.insn	2, 0x045a
    1e84:	01b8                	.insn	2, 0x01b8
    1e86:	01c8                	.insn	2, 0x01c8
    1e88:	5d01                	.insn	2, 0x5d01
    1e8a:	0400                	.insn	2, 0x0400
    1e8c:	6820                	.insn	2, 0x6820
    1e8e:	5f01                	.insn	2, 0x5f01
    1e90:	7004                	.insn	2, 0x7004
    1e92:	0278                	.insn	2, 0x0278
    1e94:	9f30                	.insn	2, 0x9f30
    1e96:	7804                	.insn	2, 0x7804
    1e98:	0180                	.insn	2, 0x0180
    1e9a:	5f01                	.insn	2, 0x5f01
    1e9c:	8804                	.insn	2, 0x8804
    1e9e:	ac01                	.insn	2, 0xac01
    1ea0:	0101                	.insn	2, 0x0101
    1ea2:	045f 01ac 01b0      	.insn	6, 0x01b001ac045f
    1ea8:	3002                	.insn	2, 0x3002
    1eaa:	049f 01b8 01c8      	.insn	6, 0x01c801b8049f
    1eb0:	5f01                	.insn	2, 0x5f01
    1eb2:	0400                	.insn	2, 0x0400
    1eb4:	3828                	.insn	2, 0x3828
    1eb6:	3002                	.insn	2, 0x3002
    1eb8:	049f 7870 5a01      	.insn	6, 0x5a017870049f
    1ebe:	7804                	.insn	2, 0x7804
    1ec0:	027c                	.insn	2, 0x027c
    1ec2:	9f30                	.insn	2, 0x9f30
    1ec4:	ac04                	.insn	2, 0xac04
    1ec6:	b001                	.insn	2, 0xb001
    1ec8:	0101                	.insn	2, 0x0101
    1eca:	045a                	.insn	2, 0x045a
    1ecc:	01b8                	.insn	2, 0x01b8
    1ece:	01c0                	.insn	2, 0x01c0
    1ed0:	3002                	.insn	2, 0x3002
    1ed2:	009f 4804 0260      	.insn	6, 0x02604804009f
    1ed8:	9f30                	.insn	2, 0x9f30
    1eda:	6004                	.insn	2, 0x6004
    1edc:	0b6c                	.insn	2, 0x0b6c
    1ede:	007d                	.insn	2, 0x007d
    1ee0:	007e                	.insn	2, 0x007e
    1ee2:	3024                	.insn	2, 0x3024
    1ee4:	082e                	.insn	2, 0x082e
    1ee6:	049f1aff 019c0188 	.insn	12, 0x049f3002019c0188049f1aff
    1eee:	049f3002 
    1ef2:	019c                	.insn	2, 0x019c
    1ef4:	01a8                	.insn	2, 0x01a8
    1ef6:	7d007b0b          	.insn	4, 0x7d007b0b
    1efa:	2100                	.insn	2, 0x2100
    1efc:	2e30                	.insn	2, 0x2e30
    1efe:	ff08                	.insn	2, 0xff08
    1f00:	9f1a                	.insn	2, 0x9f1a
    1f02:	9c00                	.insn	2, 0x9c00
    1f04:	0000                	.insn	2, 0x
    1f06:	0500                	.insn	2, 0x0500
    1f08:	0400                	.insn	2, 0x0400
    1f0a:	0000                	.insn	2, 0x
    1f0c:	0000                	.insn	2, 0x
    1f0e:	0400                	.insn	2, 0x0400
    1f10:	3800                	.insn	2, 0x3800
    1f12:	5a01                	.insn	2, 0x5a01
    1f14:	3804                	.insn	2, 0x3804
    1f16:	0a60                	.insn	2, 0x0a60
    1f18:	0aa503a3          	sb	a0,167(a0)
    1f1c:	a826                	.insn	2, 0xa826
    1f1e:	a82d                	.insn	2, 0xa82d
    1f20:	9f00                	.insn	2, 0x9f00
    1f22:	6004                	.insn	2, 0x6004
    1f24:	016c                	.insn	2, 0x016c
    1f26:	045a                	.insn	2, 0x045a
    1f28:	746c                	.insn	2, 0x746c
    1f2a:	a30a                	.insn	2, 0xa30a
    1f2c:	260aa503          	lw	a0,608(s5)
    1f30:	2da8                	.insn	2, 0x2da8
    1f32:	00a8                	.insn	2, 0x00a8
    1f34:	049f 8074 0101      	.insn	6, 0x01018074049f
    1f3a:	005a                	.insn	2, 0x005a
    1f3c:	1804                	.insn	2, 0x1804
    1f3e:	013c                	.insn	2, 0x013c
    1f40:	503c045b          	.insn	4, 0x503c045b
    1f44:	5a01                	.insn	2, 0x5a01
    1f46:	6004                	.insn	2, 0x6004
    1f48:	016c                	.insn	2, 0x016c
    1f4a:	2004005b          	.insn	4, 0x2004005b
    1f4e:	0148                	.insn	2, 0x0148
    1f50:	045c                	.insn	2, 0x045c
    1f52:	6c60                	.insn	2, 0x6c60
    1f54:	5c01                	.insn	2, 0x5c01
    1f56:	0400                	.insn	2, 0x0400
    1f58:	6820                	.insn	2, 0x6820
    1f5a:	5e01                	.insn	2, 0x5e01
    1f5c:	6804                	.insn	2, 0x6804
    1f5e:	026c                	.insn	2, 0x026c
    1f60:	9f30                	.insn	2, 0x9f30
    1f62:	0400                	.insn	2, 0x0400
    1f64:	3420                	.insn	2, 0x3420
    1f66:	3002                	.insn	2, 0x3002
    1f68:	049f 4034 5f01      	.insn	6, 0x5f014034049f
    1f6e:	6004                	.insn	2, 0x6004
    1f70:	0268                	.insn	2, 0x0268
    1f72:	9f30                	.insn	2, 0x9f30
    1f74:	6804                	.insn	2, 0x6804
    1f76:	016c                	.insn	2, 0x016c
    1f78:	005f 0404 0118      	.insn	6, 0x01180404005f
    1f7e:	045a                	.insn	2, 0x045a
    1f80:	3c18                	.insn	2, 0x3c18
    1f82:	5e01                	.insn	2, 0x5e01
    1f84:	6004                	.insn	2, 0x6004
    1f86:	016c                	.insn	2, 0x016c
    1f88:	005e                	.insn	2, 0x005e
    1f8a:	1c04                	.insn	2, 0x1c04
    1f8c:	0130                	.insn	2, 0x0130
    1f8e:	045d                	.insn	2, 0x045d
    1f90:	3c30                	.insn	2, 0x3c30
    1f92:	9f6b7d03          	.insn	4, 0x9f6b7d03
    1f96:	6004                	.insn	2, 0x6004
    1f98:	0164                	.insn	2, 0x0164
    1f9a:	045d                	.insn	2, 0x045d
    1f9c:	6c64                	.insn	2, 0x6c64
    1f9e:	9f0b7d03          	.insn	4, 0x9f0b7d03
    1fa2:	9b00                	.insn	2, 0x9b00
    1fa4:	0000                	.insn	2, 0x
    1fa6:	0500                	.insn	2, 0x0500
    1fa8:	0400                	.insn	2, 0x0400
    1faa:	0000                	.insn	2, 0x
    1fac:	0000                	.insn	2, 0x
    1fae:	0400                	.insn	2, 0x0400
    1fb0:	2c00                	.insn	2, 0x2c00
    1fb2:	5a01                	.insn	2, 0x5a01
    1fb4:	2c04                	.insn	2, 0x2c04
    1fb6:	0a4c                	.insn	2, 0x0a4c
    1fb8:	0aa503a3          	sb	a0,167(a0)
    1fbc:	a826                	.insn	2, 0xa826
    1fbe:	a82d                	.insn	2, 0xa82d
    1fc0:	9f00                	.insn	2, 0x9f00
    1fc2:	4c04                	.insn	2, 0x4c04
    1fc4:	0158                	.insn	2, 0x0158
    1fc6:	045a                	.insn	2, 0x045a
    1fc8:	5c58                	.insn	2, 0x5c58
    1fca:	a30a                	.insn	2, 0xa30a
    1fcc:	260aa503          	lw	a0,608(s5)
    1fd0:	2da8                	.insn	2, 0x2da8
    1fd2:	00a8                	.insn	2, 0x00a8
    1fd4:	049f 685c 5a01      	.insn	6, 0x5a01685c049f
    1fda:	0400                	.insn	2, 0x0400
    1fdc:	5c04                	.insn	2, 0x5c04
    1fde:	3002                	.insn	2, 0x3002
    1fe0:	009f 1404 0134      	.insn	6, 0x01341404009f
    1fe6:	045d                	.insn	2, 0x045d
    1fe8:	5c4c                	.insn	2, 0x5c4c
    1fea:	5d01                	.insn	2, 0x5d01
    1fec:	0400                	.insn	2, 0x0400
    1fee:	5414                	.insn	2, 0x5414
    1ff0:	5a01                	.insn	2, 0x5a01
    1ff2:	5404                	.insn	2, 0x5404
    1ff4:	025c                	.insn	2, 0x025c
    1ff6:	9f30                	.insn	2, 0x9f30
    1ff8:	0400                	.insn	2, 0x0400
    1ffa:	2814                	.insn	2, 0x2814
    1ffc:	3002                	.insn	2, 0x3002
    1ffe:	049f 3028 5f01      	.insn	6, 0x5f013028049f
    2004:	4c04                	.insn	2, 0x4c04
    2006:	0254                	.insn	2, 0x0254
    2008:	9f30                	.insn	2, 0x9f30
    200a:	5404                	.insn	2, 0x5404
    200c:	015c                	.insn	2, 0x015c
    200e:	005f 0404 012c      	.insn	6, 0x012c0404005f
    2014:	045a                	.insn	2, 0x045a
    2016:	584c                	.insn	2, 0x584c
    2018:	5a01                	.insn	2, 0x5a01
    201a:	5804                	.insn	2, 0x5804
    201c:	0a5c                	.insn	2, 0x0a5c
    201e:	0aa503a3          	sb	a0,167(a0)
    2022:	a826                	.insn	2, 0xa826
    2024:	a82d                	.insn	2, 0xa82d
    2026:	9f00                	.insn	2, 0x9f00
    2028:	0400                	.insn	2, 0x0400
    202a:	2410                	.insn	2, 0x2410
    202c:	5e01                	.insn	2, 0x5e01
    202e:	2404                	.insn	2, 0x2404
    2030:	032c                	.insn	2, 0x032c
    2032:	6b7e                	.insn	2, 0x6b7e
    2034:	049f 504c 5e01      	.insn	6, 0x5e01504c049f
    203a:	5004                	.insn	2, 0x5004
    203c:	035c                	.insn	2, 0x035c
    203e:	0b7e                	.insn	2, 0x0b7e
    2040:	Address 0x2040 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	001c                	.insn	2, 0x001c
   2:	0000                	.insn	2, 0x
   4:	0002                	.insn	2, 0x0002
   6:	0000                	.insn	2, 0x
   8:	0000                	.insn	2, 0x
   a:	0004                	.insn	2, 0x0004
   c:	0000                	.insn	2, 0x
   e:	0000                	.insn	2, 0x
  10:	16f0                	.insn	2, 0x16f0
  12:	8000                	.insn	2, 0x8000
  14:	00d8                	.insn	2, 0x00d8
	...
  1e:	0000                	.insn	2, 0x
  20:	001c                	.insn	2, 0x001c
  22:	0000                	.insn	2, 0x
  24:	0002                	.insn	2, 0x0002
  26:	00000237          	lui	tp,0x0
  2a:	0004                	.insn	2, 0x0004
  2c:	0000                	.insn	2, 0x
  2e:	0000                	.insn	2, 0x
  30:	17c8                	.insn	2, 0x17c8
  32:	8000                	.insn	2, 0x8000
  34:	00e4                	.insn	2, 0x00e4
	...
  3e:	0000                	.insn	2, 0x
  40:	001c                	.insn	2, 0x001c
  42:	0000                	.insn	2, 0x
  44:	0002                	.insn	2, 0x0002
  46:	0462                	.insn	2, 0x0462
  48:	0000                	.insn	2, 0x
  4a:	0004                	.insn	2, 0x0004
  4c:	0000                	.insn	2, 0x
  4e:	0000                	.insn	2, 0x
  50:	18ac                	.insn	2, 0x18ac
  52:	8000                	.insn	2, 0x8000
  54:	00e4                	.insn	2, 0x00e4
	...
  5e:	0000                	.insn	2, 0x
  60:	001c                	.insn	2, 0x001c
  62:	0000                	.insn	2, 0x
  64:	0002                	.insn	2, 0x0002
  66:	068d                	.insn	2, 0x068d
  68:	0000                	.insn	2, 0x
  6a:	0004                	.insn	2, 0x0004
  6c:	0000                	.insn	2, 0x
  6e:	0000                	.insn	2, 0x
  70:	1990                	.insn	2, 0x1990
  72:	8000                	.insn	2, 0x8000
  74:	074c                	.insn	2, 0x074c
	...
  7e:	0000                	.insn	2, 0x
  80:	001c                	.insn	2, 0x001c
  82:	0000                	.insn	2, 0x
  84:	0002                	.insn	2, 0x0002
  86:	0d40                	.insn	2, 0x0d40
  88:	0000                	.insn	2, 0x
  8a:	0004                	.insn	2, 0x0004
  8c:	0000                	.insn	2, 0x
  8e:	0000                	.insn	2, 0x
  90:	20dc                	.insn	2, 0x20dc
  92:	8000                	.insn	2, 0x8000
  94:	0ab0                	.insn	2, 0x0ab0
	...
  9e:	0000                	.insn	2, 0x
  a0:	001c                	.insn	2, 0x001c
  a2:	0000                	.insn	2, 0x
  a4:	0002                	.insn	2, 0x0002
  a6:	1264                	.insn	2, 0x1264
  a8:	0000                	.insn	2, 0x
  aa:	0004                	.insn	2, 0x0004
  ac:	0000                	.insn	2, 0x
  ae:	0000                	.insn	2, 0x
  b0:	2b8c                	.insn	2, 0x2b8c
  b2:	8000                	.insn	2, 0x8000
  b4:	0104                	.insn	2, 0x0104
	...
  be:	0000                	.insn	2, 0x
  c0:	001c                	.insn	2, 0x001c
  c2:	0000                	.insn	2, 0x
  c4:	0002                	.insn	2, 0x0002
  c6:	0000142f          	.insn	4, 0x142f
  ca:	0004                	.insn	2, 0x0004
  cc:	0000                	.insn	2, 0x
  ce:	0000                	.insn	2, 0x
  d0:	2c90                	.insn	2, 0x2c90
  d2:	8000                	.insn	2, 0x8000
  d4:	00c8                	.insn	2, 0x00c8
	...
  de:	0000                	.insn	2, 0x
  e0:	001c                	.insn	2, 0x001c
  e2:	0000                	.insn	2, 0x
  e4:	0002                	.insn	2, 0x0002
  e6:	000015e3          	bnez	zero,8f0 <_tbss_end+0x8f0>
  ea:	0004                	.insn	2, 0x0004
  ec:	0000                	.insn	2, 0x
  ee:	0000                	.insn	2, 0x
  f0:	2d58                	.insn	2, 0x2d58
  f2:	8000                	.insn	2, 0x8000
  f4:	0080                	.insn	2, 0x0080
	...
  fe:	0000                	.insn	2, 0x
 100:	001c                	.insn	2, 0x001c
 102:	0000                	.insn	2, 0x
 104:	0002                	.insn	2, 0x0002
 106:	183d                	.insn	2, 0x183d
 108:	0000                	.insn	2, 0x
 10a:	0004                	.insn	2, 0x0004
 10c:	0000                	.insn	2, 0x
 10e:	0000                	.insn	2, 0x
 110:	2dd8                	.insn	2, 0x2dd8
 112:	8000                	.insn	2, 0x8000
 114:	0068                	.insn	2, 0x0068
	...

Disassembly of section .debug_rnglists:

00000000 <.debug_rnglists>:
   0:	00000037          	lui	zero,0x0
   4:	0005                	.insn	2, 0x0005
   6:	0004                	.insn	2, 0x0004
   8:	0000                	.insn	2, 0x
   a:	0000                	.insn	2, 0x
   c:	0804                	.insn	2, 0x0804
   e:	0414                	.insn	2, 0x0414
  10:	201c                	.insn	2, 0x201c
  12:	2404                	.insn	2, 0x2404
  14:	042c                	.insn	2, 0x042c
  16:	3430                	.insn	2, 0x3430
  18:	0400                	.insn	2, 0x0400
  1a:	1c14                	.insn	2, 0x1c14
  1c:	2c04                	.insn	2, 0x2c04
  1e:	0430                	.insn	2, 0x0430
  20:	3c34                	.insn	2, 0x3c34
  22:	0400                	.insn	2, 0x0400
  24:	745c                	.insn	2, 0x745c
  26:	7c04                	.insn	2, 0x7c04
  28:	0184                	.insn	2, 0x0184
  2a:	0400                	.insn	2, 0x0400
  2c:	0184                	.insn	2, 0x0184
  2e:	0184                	.insn	2, 0x0184
  30:	8804                	.insn	2, 0x8804
  32:	9001                	.insn	2, 0x9001
  34:	0401                	.insn	2, 0x0401
  36:	0194                	.insn	2, 0x0194
  38:	01a0                	.insn	2, 0x01a0
  3a:	3100                	.insn	2, 0x3100
  3c:	0000                	.insn	2, 0x
  3e:	0500                	.insn	2, 0x0500
  40:	0400                	.insn	2, 0x0400
  42:	0000                	.insn	2, 0x
  44:	0000                	.insn	2, 0x
  46:	0400                	.insn	2, 0x0400
  48:	0c08                	.insn	2, 0x0c08
  4a:	1004                	.insn	2, 0x1004
  4c:	0420                	.insn	2, 0x0420
  4e:	3028                	.insn	2, 0x3028
  50:	3404                	.insn	2, 0x3404
  52:	0038                	.insn	2, 0x0038
  54:	0c04                	.insn	2, 0x0c04
  56:	0410                	.insn	2, 0x0410
  58:	2420                	.insn	2, 0x2420
  5a:	3004                	.insn	2, 0x3004
  5c:	0434                	.insn	2, 0x0434
  5e:	3c38                	.insn	2, 0x3c38
  60:	0400                	.insn	2, 0x0400
  62:	9458                	.insn	2, 0x9458
  64:	0401                	.insn	2, 0x0401
  66:	0198                	.insn	2, 0x0198
  68:	01bc                	.insn	2, 0x01bc
  6a:	c804                	.insn	2, 0xc804
  6c:	e401                	.insn	2, 0xe401
  6e:	0001                	.insn	2, 0x0001
  70:	0031                	.insn	2, 0x0031
  72:	0000                	.insn	2, 0x
  74:	0005                	.insn	2, 0x0005
  76:	0004                	.insn	2, 0x0004
  78:	0000                	.insn	2, 0x
  7a:	0000                	.insn	2, 0x
  7c:	0804                	.insn	2, 0x0804
  7e:	040c                	.insn	2, 0x040c
  80:	2010                	.insn	2, 0x2010
  82:	2804                	.insn	2, 0x2804
  84:	0430                	.insn	2, 0x0430
  86:	3834                	.insn	2, 0x3834
  88:	0400                	.insn	2, 0x0400
  8a:	100c                	.insn	2, 0x100c
  8c:	2004                	.insn	2, 0x2004
  8e:	0424                	.insn	2, 0x0424
  90:	3430                	.insn	2, 0x3430
  92:	3804                	.insn	2, 0x3804
  94:	003c                	.insn	2, 0x003c
  96:	5804                	.insn	2, 0x5804
  98:	0194                	.insn	2, 0x0194
  9a:	9804                	.insn	2, 0x9804
  9c:	bc01                	.insn	2, 0xbc01
  9e:	0401                	.insn	2, 0x0401
  a0:	01c8                	.insn	2, 0x01c8
  a2:	01e4                	.insn	2, 0x01e4
  a4:	3800                	.insn	2, 0x3800
  a6:	0001                	.insn	2, 0x0001
  a8:	0500                	.insn	2, 0x0500
  aa:	0400                	.insn	2, 0x0400
  ac:	0000                	.insn	2, 0x
  ae:	0000                	.insn	2, 0x
  b0:	0400                	.insn	2, 0x0400
  b2:	3420                	.insn	2, 0x3420
  b4:	e004                	.insn	2, 0xe004
  b6:	e801                	.insn	2, 0xe801
  b8:	0401                	.insn	2, 0x0401
  ba:	06a0                	.insn	2, 0x06a0
  bc:	06a8                	.insn	2, 0x06a8
  be:	b004                	.insn	2, 0xb004
  c0:	b806                	.insn	2, 0xb806
  c2:	0006                	.insn	2, 0x0006
  c4:	5c04                	.insn	2, 0x5c04
  c6:	0460                	.insn	2, 0x0460
  c8:	cc70                	.insn	2, 0xcc70
  ca:	0001                	.insn	2, 0x0001
  cc:	ec04                	.insn	2, 0xec04
  ce:	8401                	.insn	2, 0x8401
  d0:	0402                	.insn	2, 0x0402
  d2:	07b0                	.insn	2, 0x07b0
  d4:	07b4                	.insn	2, 0x07b4
  d6:	c004                	.insn	2, 0xc004
  d8:	0407cc07          	.insn	4, 0x0407cc07
  dc:	07d4                	.insn	2, 0x07d4
  de:	07e0                	.insn	2, 0x07e0
  e0:	9404                	.insn	2, 0x9404
  e2:	9808                	.insn	2, 0x9808
  e4:	0008                	.insn	2, 0x0008
  e6:	ac04                	.insn	2, 0xac04
  e8:	b002                	.insn	2, 0xb002
  ea:	0402                	.insn	2, 0x0402
  ec:	06c8                	.insn	2, 0x06c8
  ee:	07a4                	.insn	2, 0x07a4
  f0:	0400                	.insn	2, 0x0400
  f2:	02e0                	.insn	2, 0x02e0
  f4:	05ec                	.insn	2, 0x05ec
  f6:	f004                	.insn	2, 0xf004
  f8:	f805                	.insn	2, 0xf805
  fa:	0005                	.insn	2, 0x0005
  fc:	e004                	.insn	2, 0xe004
  fe:	b802                	.insn	2, 0xb802
 100:	0405                	.insn	2, 0x0405
 102:	05b8                	.insn	2, 0x05b8
 104:	05c8                	.insn	2, 0x05c8
 106:	cc04                	.insn	2, 0xcc04
 108:	d005                	.insn	2, 0xd005
 10a:	0005                	.insn	2, 0x0005
 10c:	e004                	.insn	2, 0xe004
 10e:	a802                	.insn	2, 0xa802
 110:	03ac0403          	lb	s0,58(s8)
 114:	03b8                	.insn	2, 0x03b8
 116:	0400                	.insn	2, 0x0400
 118:	03a8                	.insn	2, 0x03a8
 11a:	03ac                	.insn	2, 0x03ac
 11c:	b804                	.insn	2, 0xb804
 11e:	0403fc03          	.insn	4, 0x0403fc03
 122:	0480                	.insn	2, 0x0480
 124:	0484                	.insn	2, 0x0484
 126:	8804                	.insn	2, 0x8804
 128:	9004                	.insn	2, 0x9004
 12a:	0004                	.insn	2, 0x0004
 12c:	fc04                	.insn	2, 0xfc04
 12e:	04048003          	lb	zero,64(s1)
 132:	0484                	.insn	2, 0x0484
 134:	0488                	.insn	2, 0x0488
 136:	9004                	.insn	2, 0x9004
 138:	d004                	.insn	2, 0xd004
 13a:	0004                	.insn	2, 0x0004
 13c:	d004                	.insn	2, 0xd004
 13e:	f404                	.insn	2, 0xf404
 140:	0404                	.insn	2, 0x0404
 142:	04f4                	.insn	2, 0x04f4
 144:	0580                	.insn	2, 0x0580
 146:	8404                	.insn	2, 0x8404
 148:	8c05                	.insn	2, 0x8c05
 14a:	0405                	.insn	2, 0x0405
 14c:	05b0                	.insn	2, 0x05b0
 14e:	05b8                	.insn	2, 0x05b8
 150:	0400                	.insn	2, 0x0400
 152:	04f4                	.insn	2, 0x04f4
 154:	04f4                	.insn	2, 0x04f4
 156:	8004                	.insn	2, 0x8004
 158:	8405                	.insn	2, 0x8405
 15a:	0405                	.insn	2, 0x0405
 15c:	058c                	.insn	2, 0x058c
 15e:	05a8                	.insn	2, 0x05a8
 160:	b804                	.insn	2, 0xb804
 162:	b805                	.insn	2, 0xb805
 164:	0005                	.insn	2, 0x0005
 166:	a804                	.insn	2, 0xa804
 168:	b005                	.insn	2, 0xb005
 16a:	0405                	.insn	2, 0x0405
 16c:	05b8                	.insn	2, 0x05b8
 16e:	05b8                	.insn	2, 0x05b8
 170:	b804                	.insn	2, 0xb804
 172:	c805                	.insn	2, 0xc805
 174:	0405                	.insn	2, 0x0405
 176:	05cc                	.insn	2, 0x05cc
 178:	05d0                	.insn	2, 0x05d0
 17a:	0400                	.insn	2, 0x0400
 17c:	05b8                	.insn	2, 0x05b8
 17e:	05b8                	.insn	2, 0x05b8
 180:	c804                	.insn	2, 0xc804
 182:	cc05                	.insn	2, 0xcc05
 184:	0405                	.insn	2, 0x0405
 186:	05d0                	.insn	2, 0x05d0
 188:	05ec                	.insn	2, 0x05ec
 18a:	f004                	.insn	2, 0xf004
 18c:	f805                	.insn	2, 0xf805
 18e:	0005                	.insn	2, 0x0005
 190:	b804                	.insn	2, 0xb804
 192:	b805                	.insn	2, 0xb805
 194:	0405                	.insn	2, 0x0405
 196:	05c8                	.insn	2, 0x05c8
 198:	05cc                	.insn	2, 0x05cc
 19a:	d004                	.insn	2, 0xd004
 19c:	e405                	.insn	2, 0xe405
 19e:	0405                	.insn	2, 0x0405
 1a0:	05e8                	.insn	2, 0x05e8
 1a2:	05ec                	.insn	2, 0x05ec
 1a4:	f004                	.insn	2, 0xf004
 1a6:	f405                	.insn	2, 0xf405
 1a8:	0005                	.insn	2, 0x0005
 1aa:	ec04                	.insn	2, 0xec04
 1ac:	f808                	.insn	2, 0xf808
 1ae:	0408                	.insn	2, 0x0408
 1b0:	099c                	.insn	2, 0x099c
 1b2:	09a4                	.insn	2, 0x09a4
 1b4:	0400                	.insn	2, 0x0400
 1b6:	0adc                	.insn	2, 0x0adc
 1b8:	0df4                	.insn	2, 0x0df4
 1ba:	fc04                	.insn	2, 0xfc04
 1bc:	980d                	.insn	2, 0x980d
 1be:	000e                	.insn	2, 0x000e
 1c0:	9804                	.insn	2, 0x9804
 1c2:	040ba40b          	.insn	4, 0x040ba40b
 1c6:	0ba8                	.insn	2, 0x0ba8
 1c8:	0bb0                	.insn	2, 0x0bb0
 1ca:	0400                	.insn	2, 0x0400
 1cc:	0cac                	.insn	2, 0x0cac
 1ce:	0cb8                	.insn	2, 0x0cb8
 1d0:	f004                	.insn	2, 0xf004
 1d2:	f80c                	.insn	2, 0xf80c
 1d4:	000c                	.insn	2, 0x000c
 1d6:	fc04                	.insn	2, 0xfc04
 1d8:	800d                	.insn	2, 0x800d
 1da:	040e                	.insn	2, 0x040e
 1dc:	0e8c                	.insn	2, 0x0e8c
 1de:	0e90                	.insn	2, 0x0e90
 1e0:	0400                	.insn	2, 0x0400
 1e2:	0001                	.insn	2, 0x0001
 1e4:	0500                	.insn	2, 0x0500
 1e6:	0400                	.insn	2, 0x0400
 1e8:	0000                	.insn	2, 0x
 1ea:	0000                	.insn	2, 0x
 1ec:	0400                	.insn	2, 0x0400
 1ee:	1004                	.insn	2, 0x1004
 1f0:	2c04                	.insn	2, 0x2c04
 1f2:	0430                	.insn	2, 0x0430
 1f4:	443c                	.insn	2, 0x443c
 1f6:	0400                	.insn	2, 0x0400
 1f8:	1814                	.insn	2, 0x1814
 1fa:	1c04                	.insn	2, 0x1c04
 1fc:	0420                	.insn	2, 0x0420
 1fe:	3834                	.insn	2, 0x3834
 200:	4804                	.insn	2, 0x4804
 202:	004c                	.insn	2, 0x004c
 204:	6004                	.insn	2, 0x6004
 206:	0464                	.insn	2, 0x0464
 208:	7868                	.insn	2, 0x7868
 20a:	8c04                	.insn	2, 0x8c04
 20c:	b401                	.insn	2, 0xb401
 20e:	0401                	.insn	2, 0x0401
 210:	01d8                	.insn	2, 0x01d8
 212:	01e0                	.insn	2, 0x01e0
 214:	8404                	.insn	2, 0x8404
 216:	9002                	.insn	2, 0x9002
 218:	0404                	.insn	2, 0x0404
 21a:	04a0                	.insn	2, 0x04a0
 21c:	059c                	.insn	2, 0x059c
 21e:	a404                	.insn	2, 0xa404
 220:	8c05                	.insn	2, 0x8c05
 222:	0406                	.insn	2, 0x0406
 224:	0690                	.insn	2, 0x0690
 226:	0790                	.insn	2, 0x0790
 228:	9c04                	.insn	2, 0x9c04
 22a:	0407c407          	.insn	4, 0x0407c407
 22e:	07cc                	.insn	2, 0x07cc
 230:	08b0                	.insn	2, 0x08b0
 232:	f004                	.insn	2, 0xf004
 234:	f40c                	.insn	2, 0xf40c
 236:	040c                	.insn	2, 0x040c
 238:	14a4                	.insn	2, 0x14a4
 23a:	14b4                	.insn	2, 0x14b4
 23c:	f004                	.insn	2, 0xf004
 23e:	f814                	.insn	2, 0xf814
 240:	0414                	.insn	2, 0x0414
 242:	15a0                	.insn	2, 0x15a0
 244:	15ac                	.insn	2, 0x15ac
 246:	0400                	.insn	2, 0x0400
 248:	079c                	.insn	2, 0x079c
 24a:	079c                	.insn	2, 0x079c
 24c:	a804                	.insn	2, 0xa804
 24e:	0007b407          	.insn	4, 0x0007b407
 252:	7804                	.insn	2, 0x7804
 254:	018c                	.insn	2, 0x018c
 256:	b404                	.insn	2, 0xb404
 258:	d801                	.insn	2, 0xd801
 25a:	0401                	.insn	2, 0x0401
 25c:	01e0                	.insn	2, 0x01e0
 25e:	0284                	.insn	2, 0x0284
 260:	9004                	.insn	2, 0x9004
 262:	9004                	.insn	2, 0x9004
 264:	0404                	.insn	2, 0x0404
 266:	059c                	.insn	2, 0x059c
 268:	05a4                	.insn	2, 0x05a4
 26a:	9004                	.insn	2, 0x9004
 26c:	04079c07          	.insn	4, 0x04079c07
 270:	07c4                	.insn	2, 0x07c4
 272:	07cc                	.insn	2, 0x07cc
 274:	b004                	.insn	2, 0xb004
 276:	ec08                	.insn	2, 0xec08
 278:	040c                	.insn	2, 0x040c
 27a:	0cf4                	.insn	2, 0x0cf4
 27c:	0d90                	.insn	2, 0x0d90
 27e:	a804                	.insn	2, 0xa804
 280:	f80d                	.insn	2, 0xf80d
 282:	0410                	.insn	2, 0x0410
 284:	14b4                	.insn	2, 0x14b4
 286:	14f0                	.insn	2, 0x14f0
 288:	f804                	.insn	2, 0xf804
 28a:	9814                	.insn	2, 0x9814
 28c:	0015                	.insn	2, 0x0015
 28e:	b804                	.insn	2, 0xb804
 290:	d009                	.insn	2, 0xd009
 292:	0409                	.insn	2, 0x0409
 294:	0df0                	.insn	2, 0x0df0
 296:	0df8                	.insn	2, 0x0df8
 298:	a804                	.insn	2, 0xa804
 29a:	0410880f          	.insn	4, 0x0410880f
 29e:	1094                	.insn	2, 0x1094
 2a0:	10f8                	.insn	2, 0x10f8
 2a2:	0400                	.insn	2, 0x0400
 2a4:	0dac                	.insn	2, 0x0dac
 2a6:	0dbc                	.insn	2, 0x0dbc
 2a8:	8804                	.insn	2, 0x8804
 2aa:	9415                	.insn	2, 0x9415
 2ac:	0015                	.insn	2, 0x0015
 2ae:	f804                	.insn	2, 0xf804
 2b0:	880e                	.insn	2, 0x880e
 2b2:	0f8c040f          	.insn	4, 0x0f8c040f
 2b6:	0f90                	.insn	2, 0x0f90
 2b8:	0400                	.insn	2, 0x0400
 2ba:	0490                	.insn	2, 0x0490
 2bc:	04a0                	.insn	2, 0x04a0
 2be:	9004                	.insn	2, 0x9004
 2c0:	a80d                	.insn	2, 0xa80d
 2c2:	040d                	.insn	2, 0x040d
 2c4:	10f8                	.insn	2, 0x10f8
 2c6:	13b8                	.insn	2, 0x13b8
 2c8:	ec04                	.insn	2, 0xec04
 2ca:	0014a413          	slti	s0,s1,1
 2ce:	9004                	.insn	2, 0x9004
 2d0:	9804                	.insn	2, 0x9804
 2d2:	0404                	.insn	2, 0x0404
 2d4:	10f8                	.insn	2, 0x10f8
 2d6:	11d4                	.insn	2, 0x11d4
 2d8:	9004                	.insn	2, 0x9004
 2da:	c812                	.insn	2, 0xc812
 2dc:	0012                	.insn	2, 0x0012
 2de:	8404                	.insn	2, 0x8404
 2e0:	9012                	.insn	2, 0x9012
 2e2:	0412                	.insn	2, 0x0412
 2e4:	12cc                	.insn	2, 0x12cc
 2e6:	12d4                	.insn	2, 0x12d4
 2e8:	2800                	.insn	2, 0x2800
 2ea:	0000                	.insn	2, 0x
 2ec:	0500                	.insn	2, 0x0500
 2ee:	0400                	.insn	2, 0x0400
 2f0:	0000                	.insn	2, 0x
 2f2:	0000                	.insn	2, 0x
 2f4:	0400                	.insn	2, 0x0400
 2f6:	1404                	.insn	2, 0x1404
 2f8:	1804                	.insn	2, 0x1804
 2fa:	0020                	.insn	2, 0x0020
 2fc:	4804                	.insn	2, 0x4804
 2fe:	0448                	.insn	2, 0x0448
 300:	4848                	.insn	2, 0x4848
 302:	4804                	.insn	2, 0x4804
 304:	0460                	.insn	2, 0x0460
 306:	01f8                	.insn	2, 0x01f8
 308:	01fc                	.insn	2, 0x01fc
 30a:	0400                	.insn	2, 0x0400
 30c:	a068                	.insn	2, 0xa068
 30e:	0401                	.insn	2, 0x0401
 310:	01a8                	.insn	2, 0x01a8
 312:	01d4                	.insn	2, 0x01d4
 314:	1800                	.insn	2, 0x1800
 316:	0000                	.insn	2, 0x
 318:	0500                	.insn	2, 0x0500
 31a:	0400                	.insn	2, 0x0400
 31c:	0000                	.insn	2, 0x
 31e:	0000                	.insn	2, 0x
 320:	0400                	.insn	2, 0x0400
 322:	1808                	.insn	2, 0x1808
 324:	1c04                	.insn	2, 0x1c04
 326:	0024                	.insn	2, 0x0024
 328:	4804                	.insn	2, 0x4804
 32a:	0478                	.insn	2, 0x0478
 32c:	0188                	.insn	2, 0x0188
 32e:	01b8                	.insn	2, 0x01b8
 330:	1e00                	.insn	2, 0x1e00
 332:	0000                	.insn	2, 0x
 334:	0500                	.insn	2, 0x0500
 336:	0400                	.insn	2, 0x0400
 338:	0000                	.insn	2, 0x
 33a:	0000                	.insn	2, 0x
 33c:	0400                	.insn	2, 0x0400
 33e:	3c00                	.insn	2, 0x3c00
 340:	6004                	.insn	2, 0x6004
 342:	0180                	.insn	2, 0x0180
 344:	0400                	.insn	2, 0x0400
 346:	3c04                	.insn	2, 0x3c04
 348:	6004                	.insn	2, 0x6004
 34a:	006c                	.insn	2, 0x006c
 34c:	0804                	.insn	2, 0x0804
 34e:	040c                	.insn	2, 0x040c
 350:	2018                	.insn	2, 0x2018
 352:	1d00                	.insn	2, 0x1d00
 354:	0000                	.insn	2, 0x
 356:	0500                	.insn	2, 0x0500
 358:	0400                	.insn	2, 0x0400
 35a:	0000                	.insn	2, 0x
 35c:	0000                	.insn	2, 0x
 35e:	0400                	.insn	2, 0x0400
 360:	2c00                	.insn	2, 0x2c00
 362:	4c04                	.insn	2, 0x4c04
 364:	0068                	.insn	2, 0x0068
 366:	0404                	.insn	2, 0x0404
 368:	042c                	.insn	2, 0x042c
 36a:	5c4c                	.insn	2, 0x5c4c
 36c:	0400                	.insn	2, 0x0400
 36e:	0804                	.insn	2, 0x0804
 370:	0c04                	.insn	2, 0x0c04
 372:	0014                	.insn	2, 0x0014

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	00000323          	sb	zero,6(zero) # 6 <_tbss_end+0x6>
       4:	0005                	.insn	2, 0x0005
       6:	0004                	.insn	2, 0x0004
       8:	003c                	.insn	2, 0x003c
       a:	0000                	.insn	2, 0x
       c:	0101                	.insn	2, 0x0101
       e:	fb01                	.insn	2, 0xfb01
      10:	0d0e                	.insn	2, 0x0d0e
      12:	0100                	.insn	2, 0x0100
      14:	0101                	.insn	2, 0x0101
      16:	0001                	.insn	2, 0x0001
      18:	0000                	.insn	2, 0x
      1a:	0001                	.insn	2, 0x0001
      1c:	0100                	.insn	2, 0x0100
      1e:	0101                	.insn	2, 0x0101
      20:	031f 0026 0000      	.insn	6, 0x0026031f
      26:	0085                	.insn	2, 0x0085
      28:	0000                	.insn	2, 0x
      2a:	000000a3          	sb	zero,1(zero) # 1 <_tbss_end+0x1>
      2e:	0102                	.insn	2, 0x0102
      30:	021f 040f 001e      	.insn	6, 0x001e040f021f
      36:	0000                	.insn	2, 0x
      38:	1e01                	.insn	2, 0x1e01
      3a:	0000                	.insn	2, 0x
      3c:	0100                	.insn	2, 0x0100
      3e:	00a5                	.insn	2, 0x00a5
      40:	0000                	.insn	2, 0x
      42:	b302                	.insn	2, 0xb302
      44:	0000                	.insn	2, 0x
      46:	0100                	.insn	2, 0x0100
      48:	0105                	.insn	2, 0x0105
      4a:	0500                	.insn	2, 0x0500
      4c:	f002                	.insn	2, 0xf002
      4e:	0016                	.insn	2, 0x0016
      50:	0380                	.insn	2, 0x0380
      52:	0121                	.insn	2, 0x0121
      54:	0305                	.insn	2, 0x0305
      56:	00090103          	lb	sp,0(s2)
      5a:	0100                	.insn	2, 0x0100
      5c:	00090003          	lb	zero,0(s2)
      60:	0100                	.insn	2, 0x0100
      62:	0d05                	.insn	2, 0x0d05
      64:	00090003          	lb	zero,0(s2)
      68:	0100                	.insn	2, 0x0100
      6a:	0305                	.insn	2, 0x0305
      6c:	00090103          	lb	sp,0(s2)
      70:	0100                	.insn	2, 0x0100
      72:	00090003          	lb	zero,0(s2)
      76:	0100                	.insn	2, 0x0100
      78:	00090003          	lb	zero,0(s2)
      7c:	0100                	.insn	2, 0x0100
      7e:	00090003          	lb	zero,0(s2)
      82:	0100                	.insn	2, 0x0100
      84:	00090103          	lb	sp,0(s2)
      88:	0100                	.insn	2, 0x0100
      8a:	00090003          	lb	zero,0(s2)
      8e:	0100                	.insn	2, 0x0100
      90:	00090003          	lb	zero,0(s2)
      94:	0100                	.insn	2, 0x0100
      96:	00090003          	lb	zero,0(s2)
      9a:	0100                	.insn	2, 0x0100
      9c:	00090103          	lb	sp,0(s2)
      a0:	0100                	.insn	2, 0x0100
      a2:	00090203          	lb	tp,0(s2)
      a6:	0100                	.insn	2, 0x0100
      a8:	00090003          	lb	zero,0(s2)
      ac:	0100                	.insn	2, 0x0100
      ae:	0105                	.insn	2, 0x0105
      b0:	0306                	.insn	2, 0x0306
      b2:	097a                	.insn	2, 0x097a
      b4:	0000                	.insn	2, 0x
      b6:	0501                	.insn	2, 0x0501
      b8:	09060303          	lb	t1,144(a2)
      bc:	0004                	.insn	2, 0x0004
      be:	0601                	.insn	2, 0x0601
      c0:	04090003          	lb	zero,64(s2)
      c4:	0100                	.insn	2, 0x0100
      c6:	00090103          	lb	sp,0(s2)
      ca:	0100                	.insn	2, 0x0100
      cc:	00090003          	lb	zero,0(s2)
      d0:	0100                	.insn	2, 0x0100
      d2:	00090003          	lb	zero,0(s2)
      d6:	0100                	.insn	2, 0x0100
      d8:	00090003          	lb	zero,0(s2)
      dc:	0100                	.insn	2, 0x0100
      de:	0306                	.insn	2, 0x0306
      e0:	0901                	.insn	2, 0x0901
      e2:	000c                	.insn	2, 0x000c
      e4:	0601                	.insn	2, 0x0601
      e6:	08097f03          	.insn	4, 0x08097f03
      ea:	0100                	.insn	2, 0x0100
      ec:	0200                	.insn	2, 0x0200
      ee:	1304                	.insn	2, 0x1304
      f0:	0306                	.insn	2, 0x0306
      f2:	0902                	.insn	2, 0x0902
      f4:	0004                	.insn	2, 0x0004
      f6:	0301                	.insn	2, 0x0301
      f8:	097e                	.insn	2, 0x097e
      fa:	0004                	.insn	2, 0x0004
      fc:	0601                	.insn	2, 0x0601
      fe:	04090003          	lb	zero,64(s2)
     102:	0100                	.insn	2, 0x0100
     104:	00090003          	lb	zero,0(s2)
     108:	0100                	.insn	2, 0x0100
     10a:	0306                	.insn	2, 0x0306
     10c:	0901                	.insn	2, 0x0901
     10e:	0004                	.insn	2, 0x0004
     110:	0301                	.insn	2, 0x0301
     112:	097f 0004 0601 0003 	.insn	10, 0x0409000306010004097f
     11a:	0409 
     11c:	0100                	.insn	2, 0x0100
     11e:	00090103          	lb	sp,0(s2)
     122:	0100                	.insn	2, 0x0100
     124:	00090003          	lb	zero,0(s2)
     128:	0100                	.insn	2, 0x0100
     12a:	00090003          	lb	zero,0(s2)
     12e:	0100                	.insn	2, 0x0100
     130:	00090003          	lb	zero,0(s2)
     134:	0100                	.insn	2, 0x0100
     136:	00090003          	lb	zero,0(s2)
     13a:	0100                	.insn	2, 0x0100
     13c:	00090003          	lb	zero,0(s2)
     140:	0100                	.insn	2, 0x0100
     142:	04090003          	lb	zero,64(s2)
     146:	0100                	.insn	2, 0x0100
     148:	04090003          	lb	zero,64(s2)
     14c:	0100                	.insn	2, 0x0100
     14e:	00090103          	lb	sp,0(s2)
     152:	0100                	.insn	2, 0x0100
     154:	00090003          	lb	zero,0(s2)
     158:	0100                	.insn	2, 0x0100
     15a:	00090003          	lb	zero,0(s2)
     15e:	0100                	.insn	2, 0x0100
     160:	0200                	.insn	2, 0x0200
     162:	1304                	.insn	2, 0x1304
     164:	00090003          	lb	zero,0(s2)
     168:	0100                	.insn	2, 0x0100
     16a:	0200                	.insn	2, 0x0200
     16c:	1304                	.insn	2, 0x1304
     16e:	00090003          	lb	zero,0(s2)
     172:	0100                	.insn	2, 0x0100
     174:	0200                	.insn	2, 0x0200
     176:	1404                	.insn	2, 0x1404
     178:	0306                	.insn	2, 0x0306
     17a:	0900                	.insn	2, 0x0900
     17c:	0004                	.insn	2, 0x0004
     17e:	0001                	.insn	2, 0x0001
     180:	0402                	.insn	2, 0x0402
     182:	09000317          	auipc	t1,0x9000
     186:	0008                	.insn	2, 0x0008
     188:	0001                	.insn	2, 0x0001
     18a:	0402                	.insn	2, 0x0402
     18c:	0318                	.insn	2, 0x0318
     18e:	0900                	.insn	2, 0x0900
     190:	000c                	.insn	2, 0x000c
     192:	0001                	.insn	2, 0x0001
     194:	0402                	.insn	2, 0x0402
     196:	061a                	.insn	2, 0x061a
     198:	08090003          	lb	zero,128(s2)
     19c:	0100                	.insn	2, 0x0100
     19e:	0200                	.insn	2, 0x0200
     1a0:	1a04                	.insn	2, 0x1a04
     1a2:	00090003          	lb	zero,0(s2)
     1a6:	0100                	.insn	2, 0x0100
     1a8:	0200                	.insn	2, 0x0200
     1aa:	1a04                	.insn	2, 0x1a04
     1ac:	00090003          	lb	zero,0(s2)
     1b0:	0100                	.insn	2, 0x0100
     1b2:	0200                	.insn	2, 0x0200
     1b4:	1c04                	.insn	2, 0x1c04
     1b6:	00090003          	lb	zero,0(s2)
     1ba:	0100                	.insn	2, 0x0100
     1bc:	0200                	.insn	2, 0x0200
     1be:	1f04                	.insn	2, 0x1f04
     1c0:	00090003          	lb	zero,0(s2)
     1c4:	0100                	.insn	2, 0x0100
     1c6:	0200                	.insn	2, 0x0200
     1c8:	1f04                	.insn	2, 0x1f04
     1ca:	00090003          	lb	zero,0(s2)
     1ce:	0100                	.insn	2, 0x0100
     1d0:	0200                	.insn	2, 0x0200
     1d2:	1f04                	.insn	2, 0x1f04
     1d4:	00090003          	lb	zero,0(s2)
     1d8:	0100                	.insn	2, 0x0100
     1da:	0200                	.insn	2, 0x0200
     1dc:	3404                	.insn	2, 0x3404
     1de:	08090003          	lb	zero,128(s2)
     1e2:	0100                	.insn	2, 0x0100
     1e4:	0200                	.insn	2, 0x0200
     1e6:	3604                	.insn	2, 0x3604
     1e8:	0306                	.insn	2, 0x0306
     1ea:	0900                	.insn	2, 0x0900
     1ec:	0008                	.insn	2, 0x0008
     1ee:	0001                	.insn	2, 0x0001
     1f0:	0402                	.insn	2, 0x0402
     1f2:	0601                	.insn	2, 0x0601
     1f4:	08090103          	lb	sp,128(s2)
     1f8:	0100                	.insn	2, 0x0100
     1fa:	0200                	.insn	2, 0x0200
     1fc:	3604                	.insn	2, 0x3604
     1fe:	0306                	.insn	2, 0x0306
     200:	097f 0008 0001 0402 	.insn	10, 0x063c040200010008097f
     208:	063c 
     20a:	08090003          	lb	zero,128(s2)
     20e:	0100                	.insn	2, 0x0100
     210:	0200                	.insn	2, 0x0200
     212:	3c04                	.insn	2, 0x3c04
     214:	00090003          	lb	zero,0(s2)
     218:	0100                	.insn	2, 0x0100
     21a:	0200                	.insn	2, 0x0200
     21c:	1a04                	.insn	2, 0x1a04
     21e:	0306                	.insn	2, 0x0306
     220:	0900                	.insn	2, 0x0900
     222:	0000                	.insn	2, 0x
     224:	0001                	.insn	2, 0x0001
     226:	0402                	.insn	2, 0x0402
     228:	033c                	.insn	2, 0x033c
     22a:	0900                	.insn	2, 0x0900
     22c:	0004                	.insn	2, 0x0004
     22e:	0001                	.insn	2, 0x0001
     230:	0402                	.insn	2, 0x0402
     232:	063d                	.insn	2, 0x063d
     234:	04090003          	lb	zero,64(s2)
     238:	0100                	.insn	2, 0x0100
     23a:	0200                	.insn	2, 0x0200
     23c:	1a04                	.insn	2, 0x1a04
     23e:	0306                	.insn	2, 0x0306
     240:	0900                	.insn	2, 0x0900
     242:	0004                	.insn	2, 0x0004
     244:	0001                	.insn	2, 0x0001
     246:	0402                	.insn	2, 0x0402
     248:	033d                	.insn	2, 0x033d
     24a:	0900                	.insn	2, 0x0900
     24c:	0004                	.insn	2, 0x0004
     24e:	0001                	.insn	2, 0x0001
     250:	0402                	.insn	2, 0x0402
     252:	0900033f 00010004 	.insn	8, 0x000100040900033f
     25a:	0402                	.insn	2, 0x0402
     25c:	031a                	.insn	2, 0x031a
     25e:	0900                	.insn	2, 0x0900
     260:	0008                	.insn	2, 0x0008
     262:	0001                	.insn	2, 0x0001
     264:	0402                	.insn	2, 0x0402
     266:	0003061b          	.insn	4, 0x0003061b
     26a:	0809                	.insn	2, 0x0809
     26c:	0100                	.insn	2, 0x0100
     26e:	0200                	.insn	2, 0x0200
     270:	1b04                	.insn	2, 0x1b04
     272:	00090003          	lb	zero,0(s2)
     276:	0100                	.insn	2, 0x0100
     278:	0200                	.insn	2, 0x0200
     27a:	4704                	.insn	2, 0x4704
     27c:	00090003          	lb	zero,0(s2)
     280:	0100                	.insn	2, 0x0100
     282:	0200                	.insn	2, 0x0200
     284:	4704                	.insn	2, 0x4704
     286:	00090003          	lb	zero,0(s2)
     28a:	0100                	.insn	2, 0x0100
     28c:	0200                	.insn	2, 0x0200
     28e:	4b04                	.insn	2, 0x4b04
     290:	00090003          	lb	zero,0(s2)
     294:	0100                	.insn	2, 0x0100
     296:	0200                	.insn	2, 0x0200
     298:	4b04                	.insn	2, 0x4b04
     29a:	00090003          	lb	zero,0(s2)
     29e:	0100                	.insn	2, 0x0100
     2a0:	0200                	.insn	2, 0x0200
     2a2:	4b04                	.insn	2, 0x4b04
     2a4:	00090003          	lb	zero,0(s2)
     2a8:	0100                	.insn	2, 0x0100
     2aa:	0200                	.insn	2, 0x0200
     2ac:	4e04                	.insn	2, 0x4e04
     2ae:	00090003          	lb	zero,0(s2)
     2b2:	0100                	.insn	2, 0x0100
     2b4:	0200                	.insn	2, 0x0200
     2b6:	4e04                	.insn	2, 0x4e04
     2b8:	00090003          	lb	zero,0(s2)
     2bc:	0100                	.insn	2, 0x0100
     2be:	0200                	.insn	2, 0x0200
     2c0:	4e04                	.insn	2, 0x4e04
     2c2:	00090003          	lb	zero,0(s2)
     2c6:	0100                	.insn	2, 0x0100
     2c8:	0200                	.insn	2, 0x0200
     2ca:	1a04                	.insn	2, 0x1a04
     2cc:	0306                	.insn	2, 0x0306
     2ce:	0900                	.insn	2, 0x0900
     2d0:	0000                	.insn	2, 0x
     2d2:	0001                	.insn	2, 0x0001
     2d4:	0402                	.insn	2, 0x0402
     2d6:	034e                	.insn	2, 0x034e
     2d8:	0900                	.insn	2, 0x0900
     2da:	0004                	.insn	2, 0x0004
     2dc:	0001                	.insn	2, 0x0001
     2de:	0402                	.insn	2, 0x0402
     2e0:	0350                	.insn	2, 0x0350
     2e2:	0900                	.insn	2, 0x0900
     2e4:	0004                	.insn	2, 0x0004
     2e6:	0001                	.insn	2, 0x0001
     2e8:	0402                	.insn	2, 0x0402
     2ea:	0352                	.insn	2, 0x0352
     2ec:	0900                	.insn	2, 0x0900
     2ee:	0004                	.insn	2, 0x0004
     2f0:	0001                	.insn	2, 0x0001
     2f2:	0402                	.insn	2, 0x0402
     2f4:	0354                	.insn	2, 0x0354
     2f6:	0900                	.insn	2, 0x0900
     2f8:	0004                	.insn	2, 0x0004
     2fa:	0001                	.insn	2, 0x0001
     2fc:	0402                	.insn	2, 0x0402
     2fe:	0355                	.insn	2, 0x0355
     300:	0900                	.insn	2, 0x0900
     302:	0004                	.insn	2, 0x0004
     304:	0001                	.insn	2, 0x0001
     306:	0402                	.insn	2, 0x0402
     308:	0358                	.insn	2, 0x0358
     30a:	0900                	.insn	2, 0x0900
     30c:	0004                	.insn	2, 0x0004
     30e:	0001                	.insn	2, 0x0001
     310:	0402                	.insn	2, 0x0402
     312:	035a                	.insn	2, 0x035a
     314:	0900                	.insn	2, 0x0900
     316:	000c                	.insn	2, 0x000c
     318:	0501                	.insn	2, 0x0501
     31a:	0301                	.insn	2, 0x0301
     31c:	0904                	.insn	2, 0x0904
     31e:	0008                	.insn	2, 0x0008
     320:	0901                	.insn	2, 0x0901
     322:	0004                	.insn	2, 0x0004
     324:	0100                	.insn	2, 0x0100
     326:	8501                	.insn	2, 0x8501
     328:	05000003          	lb	zero,80(zero) # 50 <_tbss_end+0x50>
     32c:	0400                	.insn	2, 0x0400
     32e:	3c00                	.insn	2, 0x3c00
     330:	0000                	.insn	2, 0x
     332:	0100                	.insn	2, 0x0100
     334:	0101                	.insn	2, 0x0101
     336:	000d0efb          	.insn	4, 0x000d0efb
     33a:	0101                	.insn	2, 0x0101
     33c:	0101                	.insn	2, 0x0101
     33e:	0000                	.insn	2, 0x
     340:	0100                	.insn	2, 0x0100
     342:	0000                	.insn	2, 0x
     344:	0101                	.insn	2, 0x0101
     346:	1f01                	.insn	2, 0x1f01
     348:	00002603          	lw	a2,0(zero) # 0 <_tbss_end>
     34c:	8500                	.insn	2, 0x8500
     34e:	0000                	.insn	2, 0x
     350:	a300                	.insn	2, 0xa300
     352:	0000                	.insn	2, 0x
     354:	0200                	.insn	2, 0x0200
     356:	1f01                	.insn	2, 0x1f01
     358:	0f02                	.insn	2, 0x0f02
     35a:	da04                	.insn	2, 0xda04
     35c:	0000                	.insn	2, 0x
     35e:	0100                	.insn	2, 0x0100
     360:	00da                	.insn	2, 0x00da
     362:	0000                	.insn	2, 0x
     364:	a501                	.insn	2, 0xa501
     366:	0000                	.insn	2, 0x
     368:	0200                	.insn	2, 0x0200
     36a:	000000b3          	add	ra,zero,zero
     36e:	0501                	.insn	2, 0x0501
     370:	0001                	.insn	2, 0x0001
     372:	0205                	.insn	2, 0x0205
     374:	17c8                	.insn	2, 0x17c8
     376:	8000                	.insn	2, 0x8000
     378:	05012103          	lw	sp,80(sp) # 130a50 <_tbss_end+0x130a50>
     37c:	09010303          	lb	t1,144(sp)
     380:	0000                	.insn	2, 0x
     382:	0301                	.insn	2, 0x0301
     384:	0900                	.insn	2, 0x0900
     386:	0000                	.insn	2, 0x
     388:	0501                	.insn	2, 0x0501
     38a:	030d                	.insn	2, 0x030d
     38c:	0900                	.insn	2, 0x0900
     38e:	0000                	.insn	2, 0x
     390:	0501                	.insn	2, 0x0501
     392:	09010303          	lb	t1,144(sp)
     396:	0000                	.insn	2, 0x
     398:	0301                	.insn	2, 0x0301
     39a:	0900                	.insn	2, 0x0900
     39c:	0000                	.insn	2, 0x
     39e:	0301                	.insn	2, 0x0301
     3a0:	0900                	.insn	2, 0x0900
     3a2:	0000                	.insn	2, 0x
     3a4:	0301                	.insn	2, 0x0301
     3a6:	0900                	.insn	2, 0x0900
     3a8:	0000                	.insn	2, 0x
     3aa:	0301                	.insn	2, 0x0301
     3ac:	0901                	.insn	2, 0x0901
     3ae:	0000                	.insn	2, 0x
     3b0:	0301                	.insn	2, 0x0301
     3b2:	0900                	.insn	2, 0x0900
     3b4:	0000                	.insn	2, 0x
     3b6:	0301                	.insn	2, 0x0301
     3b8:	0900                	.insn	2, 0x0900
     3ba:	0000                	.insn	2, 0x
     3bc:	0301                	.insn	2, 0x0301
     3be:	0900                	.insn	2, 0x0900
     3c0:	0000                	.insn	2, 0x
     3c2:	0301                	.insn	2, 0x0301
     3c4:	0901                	.insn	2, 0x0901
     3c6:	0000                	.insn	2, 0x
     3c8:	0301                	.insn	2, 0x0301
     3ca:	0902                	.insn	2, 0x0902
     3cc:	0000                	.insn	2, 0x
     3ce:	0301                	.insn	2, 0x0301
     3d0:	0900                	.insn	2, 0x0900
     3d2:	0000                	.insn	2, 0x
     3d4:	0501                	.insn	2, 0x0501
     3d6:	0601                	.insn	2, 0x0601
     3d8:	00097a03          	.insn	4, 0x00097a03
     3dc:	0100                	.insn	2, 0x0100
     3de:	0305                	.insn	2, 0x0305
     3e0:	04090603          	lb	a2,64(s2)
     3e4:	0100                	.insn	2, 0x0100
     3e6:	0306                	.insn	2, 0x0306
     3e8:	0900                	.insn	2, 0x0900
     3ea:	0004                	.insn	2, 0x0004
     3ec:	0301                	.insn	2, 0x0301
     3ee:	0901                	.insn	2, 0x0901
     3f0:	0000                	.insn	2, 0x
     3f2:	0301                	.insn	2, 0x0301
     3f4:	0900                	.insn	2, 0x0900
     3f6:	0000                	.insn	2, 0x
     3f8:	0301                	.insn	2, 0x0301
     3fa:	0900                	.insn	2, 0x0900
     3fc:	0000                	.insn	2, 0x
     3fe:	0301                	.insn	2, 0x0301
     400:	0900                	.insn	2, 0x0900
     402:	0000                	.insn	2, 0x
     404:	0601                	.insn	2, 0x0601
     406:	04090103          	lb	sp,64(s2)
     40a:	0100                	.insn	2, 0x0100
     40c:	04097f03          	.insn	4, 0x04097f03
     410:	0100                	.insn	2, 0x0100
     412:	0306                	.insn	2, 0x0306
     414:	0900                	.insn	2, 0x0900
     416:	000c                	.insn	2, 0x000c
     418:	0601                	.insn	2, 0x0601
     41a:	04090103          	lb	sp,64(s2)
     41e:	0100                	.insn	2, 0x0100
     420:	0200                	.insn	2, 0x0200
     422:	1304                	.insn	2, 0x1304
     424:	04090103          	lb	sp,64(s2)
     428:	0100                	.insn	2, 0x0100
     42a:	04097e03          	.insn	4, 0x04097e03
     42e:	0100                	.insn	2, 0x0100
     430:	0306                	.insn	2, 0x0306
     432:	0900                	.insn	2, 0x0900
     434:	0004                	.insn	2, 0x0004
     436:	0301                	.insn	2, 0x0301
     438:	0900                	.insn	2, 0x0900
     43a:	0000                	.insn	2, 0x
     43c:	0601                	.insn	2, 0x0601
     43e:	04090103          	lb	sp,64(s2)
     442:	0100                	.insn	2, 0x0100
     444:	04097f03          	.insn	4, 0x04097f03
     448:	0100                	.insn	2, 0x0100
     44a:	0306                	.insn	2, 0x0306
     44c:	0900                	.insn	2, 0x0900
     44e:	0004                	.insn	2, 0x0004
     450:	0301                	.insn	2, 0x0301
     452:	0901                	.insn	2, 0x0901
     454:	0000                	.insn	2, 0x
     456:	0301                	.insn	2, 0x0301
     458:	0900                	.insn	2, 0x0900
     45a:	0000                	.insn	2, 0x
     45c:	0301                	.insn	2, 0x0301
     45e:	0900                	.insn	2, 0x0900
     460:	0000                	.insn	2, 0x
     462:	0301                	.insn	2, 0x0301
     464:	0900                	.insn	2, 0x0900
     466:	0000                	.insn	2, 0x
     468:	0301                	.insn	2, 0x0301
     46a:	0900                	.insn	2, 0x0900
     46c:	0000                	.insn	2, 0x
     46e:	0301                	.insn	2, 0x0301
     470:	0900                	.insn	2, 0x0900
     472:	0000                	.insn	2, 0x
     474:	0301                	.insn	2, 0x0301
     476:	0900                	.insn	2, 0x0900
     478:	0000                	.insn	2, 0x
     47a:	0301                	.insn	2, 0x0301
     47c:	0900                	.insn	2, 0x0900
     47e:	0004                	.insn	2, 0x0004
     480:	0301                	.insn	2, 0x0301
     482:	0901                	.insn	2, 0x0901
     484:	0000                	.insn	2, 0x
     486:	0301                	.insn	2, 0x0301
     488:	0900                	.insn	2, 0x0900
     48a:	0000                	.insn	2, 0x
     48c:	0301                	.insn	2, 0x0301
     48e:	0900                	.insn	2, 0x0900
     490:	0000                	.insn	2, 0x
     492:	0001                	.insn	2, 0x0001
     494:	0402                	.insn	2, 0x0402
     496:	09000313          	li	t1,144
     49a:	0000                	.insn	2, 0x
     49c:	0001                	.insn	2, 0x0001
     49e:	0402                	.insn	2, 0x0402
     4a0:	09000313          	li	t1,144
     4a4:	0000                	.insn	2, 0x
     4a6:	0001                	.insn	2, 0x0001
     4a8:	0402                	.insn	2, 0x0402
     4aa:	0614                	.insn	2, 0x0614
     4ac:	04090003          	lb	zero,64(s2)
     4b0:	0100                	.insn	2, 0x0100
     4b2:	0200                	.insn	2, 0x0200
     4b4:	1704                	.insn	2, 0x1704
     4b6:	08090003          	lb	zero,128(s2)
     4ba:	0100                	.insn	2, 0x0100
     4bc:	0200                	.insn	2, 0x0200
     4be:	1804                	.insn	2, 0x1804
     4c0:	08090003          	lb	zero,128(s2)
     4c4:	0100                	.insn	2, 0x0100
     4c6:	0200                	.insn	2, 0x0200
     4c8:	1b04                	.insn	2, 0x1b04
     4ca:	0306                	.insn	2, 0x0306
     4cc:	0900                	.insn	2, 0x0900
     4ce:	0008                	.insn	2, 0x0008
     4d0:	0001                	.insn	2, 0x0001
     4d2:	0402                	.insn	2, 0x0402
     4d4:	0900031b          	.insn	4, 0x0900031b
     4d8:	0000                	.insn	2, 0x
     4da:	0001                	.insn	2, 0x0001
     4dc:	0402                	.insn	2, 0x0402
     4de:	0900031b          	.insn	4, 0x0900031b
     4e2:	0000                	.insn	2, 0x
     4e4:	0001                	.insn	2, 0x0001
     4e6:	0402                	.insn	2, 0x0402
     4e8:	0900031b          	.insn	4, 0x0900031b
     4ec:	0000                	.insn	2, 0x
     4ee:	0001                	.insn	2, 0x0001
     4f0:	0402                	.insn	2, 0x0402
     4f2:	09000337          	lui	t1,0x9000
     4f6:	0000                	.insn	2, 0x
     4f8:	0001                	.insn	2, 0x0001
     4fa:	0402                	.insn	2, 0x0402
     4fc:	09000337          	lui	t1,0x9000
     500:	0000                	.insn	2, 0x
     502:	0001                	.insn	2, 0x0001
     504:	0402                	.insn	2, 0x0402
     506:	0900033b          	.insn	4, 0x0900033b
     50a:	0000                	.insn	2, 0x
     50c:	0001                	.insn	2, 0x0001
     50e:	0402                	.insn	2, 0x0402
     510:	0900033b          	.insn	4, 0x0900033b
     514:	0000                	.insn	2, 0x
     516:	0001                	.insn	2, 0x0001
     518:	0402                	.insn	2, 0x0402
     51a:	0900033b          	.insn	4, 0x0900033b
     51e:	0000                	.insn	2, 0x
     520:	0001                	.insn	2, 0x0001
     522:	0402                	.insn	2, 0x0402
     524:	033e                	.insn	2, 0x033e
     526:	0900                	.insn	2, 0x0900
     528:	0000                	.insn	2, 0x
     52a:	0001                	.insn	2, 0x0001
     52c:	0402                	.insn	2, 0x0402
     52e:	033e                	.insn	2, 0x033e
     530:	0900                	.insn	2, 0x0900
     532:	0000                	.insn	2, 0x
     534:	0001                	.insn	2, 0x0001
     536:	0402                	.insn	2, 0x0402
     538:	033e                	.insn	2, 0x033e
     53a:	0900                	.insn	2, 0x0900
     53c:	0000                	.insn	2, 0x
     53e:	0001                	.insn	2, 0x0001
     540:	0402                	.insn	2, 0x0402
     542:	0642                	.insn	2, 0x0642
     544:	00090003          	lb	zero,0(s2)
     548:	0100                	.insn	2, 0x0100
     54a:	0200                	.insn	2, 0x0200
     54c:	3e04                	.insn	2, 0x3e04
     54e:	04090003          	lb	zero,64(s2)
     552:	0100                	.insn	2, 0x0100
     554:	0200                	.insn	2, 0x0200
     556:	3f04                	.insn	2, 0x3f04
     558:	04090003          	lb	zero,64(s2)
     55c:	0100                	.insn	2, 0x0100
     55e:	0200                	.insn	2, 0x0200
     560:	4404                	.insn	2, 0x4404
     562:	0306                	.insn	2, 0x0306
     564:	0900                	.insn	2, 0x0900
     566:	0008                	.insn	2, 0x0008
     568:	0001                	.insn	2, 0x0001
     56a:	0402                	.insn	2, 0x0402
     56c:	0645                	.insn	2, 0x0645
     56e:	04090003          	lb	zero,64(s2)
     572:	0100                	.insn	2, 0x0100
     574:	0200                	.insn	2, 0x0200
     576:	4a04                	.insn	2, 0x4a04
     578:	0306                	.insn	2, 0x0306
     57a:	0900                	.insn	2, 0x0900
     57c:	0004                	.insn	2, 0x0004
     57e:	0001                	.insn	2, 0x0001
     580:	0402                	.insn	2, 0x0402
     582:	0003064b          	fnmsub.s	fa2,ft6,ft0,ft0,rne
     586:	0409                	.insn	2, 0x0409
     588:	0100                	.insn	2, 0x0100
     58a:	0200                	.insn	2, 0x0200
     58c:	6c04                	.insn	2, 0x6c04
     58e:	0306                	.insn	2, 0x0306
     590:	0900                	.insn	2, 0x0900
     592:	0004                	.insn	2, 0x0004
     594:	0001                	.insn	2, 0x0001
     596:	0402                	.insn	2, 0x0402
     598:	067a                	.insn	2, 0x067a
     59a:	00090003          	lb	zero,0(s2)
     59e:	0100                	.insn	2, 0x0100
     5a0:	0200                	.insn	2, 0x0200
     5a2:	6c04                	.insn	2, 0x6c04
     5a4:	04090003          	lb	zero,64(s2)
     5a8:	0100                	.insn	2, 0x0100
     5aa:	0300                	.insn	2, 0x0300
     5ac:	8504                	.insn	2, 0x8504
     5ae:	0301                	.insn	2, 0x0301
     5b0:	0900                	.insn	2, 0x0900
     5b2:	0004                	.insn	2, 0x0004
     5b4:	0001                	.insn	2, 0x0001
     5b6:	0402                	.insn	2, 0x0402
     5b8:	0651                	.insn	2, 0x0651
     5ba:	08090003          	lb	zero,128(s2)
     5be:	0100                	.insn	2, 0x0100
     5c0:	0200                	.insn	2, 0x0200
     5c2:	7704                	.insn	2, 0x7704
     5c4:	04090003          	lb	zero,64(s2)
     5c8:	0100                	.insn	2, 0x0100
     5ca:	0300                	.insn	2, 0x0300
     5cc:	8504                	.insn	2, 0x8504
     5ce:	0601                	.insn	2, 0x0601
     5d0:	00090003          	lb	zero,0(s2)
     5d4:	0100                	.insn	2, 0x0100
     5d6:	0200                	.insn	2, 0x0200
     5d8:	7704                	.insn	2, 0x7704
     5da:	04090003          	lb	zero,64(s2)
     5de:	0100                	.insn	2, 0x0100
     5e0:	0105                	.insn	2, 0x0105
     5e2:	04090403          	lb	s0,64(s2)
     5e6:	0100                	.insn	2, 0x0100
     5e8:	0305                	.insn	2, 0x0305
     5ea:	0200                	.insn	2, 0x0200
     5ec:	6604                	.insn	2, 0x6604
     5ee:	0306                	.insn	2, 0x0306
     5f0:	097c                	.insn	2, 0x097c
     5f2:	0004                	.insn	2, 0x0004
     5f4:	0001                	.insn	2, 0x0001
     5f6:	0402                	.insn	2, 0x0402
     5f8:	036d                	.insn	2, 0x036d
     5fa:	0900                	.insn	2, 0x0900
     5fc:	0004                	.insn	2, 0x0004
     5fe:	0001                	.insn	2, 0x0001
     600:	0402                	.insn	2, 0x0402
     602:	0674                	.insn	2, 0x0674
     604:	04090003          	lb	zero,64(s2)
     608:	0100                	.insn	2, 0x0100
     60a:	0200                	.insn	2, 0x0200
     60c:	7504                	.insn	2, 0x7504
     60e:	04090003          	lb	zero,64(s2)
     612:	0100                	.insn	2, 0x0100
     614:	0200                	.insn	2, 0x0200
     616:	7804                	.insn	2, 0x7804
     618:	0306                	.insn	2, 0x0306
     61a:	0900                	.insn	2, 0x0900
     61c:	0004                	.insn	2, 0x0004
     61e:	0001                	.insn	2, 0x0001
     620:	0402                	.insn	2, 0x0402
     622:	064d                	.insn	2, 0x064d
     624:	00090003          	lb	zero,0(s2)
     628:	0100                	.insn	2, 0x0100
     62a:	0300                	.insn	2, 0x0300
     62c:	8004                	.insn	2, 0x8004
     62e:	0301                	.insn	2, 0x0301
     630:	0900                	.insn	2, 0x0900
     632:	0004                	.insn	2, 0x0004
     634:	0001                	.insn	2, 0x0001
     636:	01820403          	lb	s0,24(tp) # 18 <_tbss_end+0x18>
     63a:	0306                	.insn	2, 0x0306
     63c:	0900                	.insn	2, 0x0900
     63e:	0004                	.insn	2, 0x0004
     640:	0001                	.insn	2, 0x0001
     642:	0402                	.insn	2, 0x0402
     644:	067a                	.insn	2, 0x067a
     646:	00090003          	lb	zero,0(s2)
     64a:	0100                	.insn	2, 0x0100
     64c:	0300                	.insn	2, 0x0300
     64e:	8204                	.insn	2, 0x8204
     650:	0301                	.insn	2, 0x0301
     652:	0900                	.insn	2, 0x0900
     654:	0004                	.insn	2, 0x0004
     656:	0001                	.insn	2, 0x0001
     658:	0402                	.insn	2, 0x0402
     65a:	0601                	.insn	2, 0x0601
     65c:	08090103          	lb	sp,128(s2)
     660:	0100                	.insn	2, 0x0100
     662:	0200                	.insn	2, 0x0200
     664:	4a04                	.insn	2, 0x4a04
     666:	0c097f03          	.insn	4, 0x0c097f03
     66a:	0100                	.insn	2, 0x0100
     66c:	0200                	.insn	2, 0x0200
     66e:	5804                	.insn	2, 0x5804
     670:	04090003          	lb	zero,64(s2)
     674:	0100                	.insn	2, 0x0100
     676:	0200                	.insn	2, 0x0200
     678:	5f04                	.insn	2, 0x5f04
     67a:	04090003          	lb	zero,64(s2)
     67e:	0100                	.insn	2, 0x0100
     680:	0200                	.insn	2, 0x0200
     682:	6504                	.insn	2, 0x6504
     684:	04090003          	lb	zero,64(s2)
     688:	0100                	.insn	2, 0x0100
     68a:	0300                	.insn	2, 0x0300
     68c:	8504                	.insn	2, 0x8504
     68e:	0601                	.insn	2, 0x0601
     690:	00090003          	lb	zero,0(s2)
     694:	0100                	.insn	2, 0x0100
     696:	0200                	.insn	2, 0x0200
     698:	6504                	.insn	2, 0x6504
     69a:	04090003          	lb	zero,64(s2)
     69e:	0100                	.insn	2, 0x0100
     6a0:	0200                	.insn	2, 0x0200
     6a2:	7a04                	.insn	2, 0x7a04
     6a4:	04090003          	lb	zero,64(s2)
     6a8:	0100                	.insn	2, 0x0100
     6aa:	0809                	.insn	2, 0x0809
     6ac:	0000                	.insn	2, 0x
     6ae:	0101                	.insn	2, 0x0101
     6b0:	0385                	.insn	2, 0x0385
     6b2:	0000                	.insn	2, 0x
     6b4:	0005                	.insn	2, 0x0005
     6b6:	0004                	.insn	2, 0x0004
     6b8:	003c                	.insn	2, 0x003c
     6ba:	0000                	.insn	2, 0x
     6bc:	0101                	.insn	2, 0x0101
     6be:	fb01                	.insn	2, 0xfb01
     6c0:	0d0e                	.insn	2, 0x0d0e
     6c2:	0100                	.insn	2, 0x0100
     6c4:	0101                	.insn	2, 0x0101
     6c6:	0001                	.insn	2, 0x0001
     6c8:	0000                	.insn	2, 0x
     6ca:	0001                	.insn	2, 0x0001
     6cc:	0100                	.insn	2, 0x0100
     6ce:	0101                	.insn	2, 0x0101
     6d0:	031f 0026 0000      	.insn	6, 0x0026031f
     6d6:	0085                	.insn	2, 0x0085
     6d8:	0000                	.insn	2, 0x
     6da:	000000a3          	sb	zero,1(zero) # 1 <_tbss_end+0x1>
     6de:	0102                	.insn	2, 0x0102
     6e0:	021f 040f 0100      	.insn	6, 0x0100040f021f
     6e6:	0000                	.insn	2, 0x
     6e8:	0001                	.insn	2, 0x0001
     6ea:	0001                	.insn	2, 0x0001
     6ec:	0100                	.insn	2, 0x0100
     6ee:	00a5                	.insn	2, 0x00a5
     6f0:	0000                	.insn	2, 0x
     6f2:	b302                	.insn	2, 0xb302
     6f4:	0000                	.insn	2, 0x
     6f6:	0100                	.insn	2, 0x0100
     6f8:	0105                	.insn	2, 0x0105
     6fa:	0500                	.insn	2, 0x0500
     6fc:	ac02                	.insn	2, 0xac02
     6fe:	0018                	.insn	2, 0x0018
     700:	0380                	.insn	2, 0x0380
     702:	0121                	.insn	2, 0x0121
     704:	0305                	.insn	2, 0x0305
     706:	00090103          	lb	sp,0(s2)
     70a:	0100                	.insn	2, 0x0100
     70c:	00090003          	lb	zero,0(s2)
     710:	0100                	.insn	2, 0x0100
     712:	0d05                	.insn	2, 0x0d05
     714:	00090003          	lb	zero,0(s2)
     718:	0100                	.insn	2, 0x0100
     71a:	0305                	.insn	2, 0x0305
     71c:	00090103          	lb	sp,0(s2)
     720:	0100                	.insn	2, 0x0100
     722:	00090003          	lb	zero,0(s2)
     726:	0100                	.insn	2, 0x0100
     728:	00090003          	lb	zero,0(s2)
     72c:	0100                	.insn	2, 0x0100
     72e:	00090003          	lb	zero,0(s2)
     732:	0100                	.insn	2, 0x0100
     734:	00090103          	lb	sp,0(s2)
     738:	0100                	.insn	2, 0x0100
     73a:	00090003          	lb	zero,0(s2)
     73e:	0100                	.insn	2, 0x0100
     740:	00090003          	lb	zero,0(s2)
     744:	0100                	.insn	2, 0x0100
     746:	00090003          	lb	zero,0(s2)
     74a:	0100                	.insn	2, 0x0100
     74c:	00090103          	lb	sp,0(s2)
     750:	0100                	.insn	2, 0x0100
     752:	00090203          	lb	tp,0(s2)
     756:	0100                	.insn	2, 0x0100
     758:	00090003          	lb	zero,0(s2)
     75c:	0100                	.insn	2, 0x0100
     75e:	0105                	.insn	2, 0x0105
     760:	0306                	.insn	2, 0x0306
     762:	097a                	.insn	2, 0x097a
     764:	0000                	.insn	2, 0x
     766:	0501                	.insn	2, 0x0501
     768:	09060303          	lb	t1,144(a2)
     76c:	0004                	.insn	2, 0x0004
     76e:	0601                	.insn	2, 0x0601
     770:	04090003          	lb	zero,64(s2)
     774:	0100                	.insn	2, 0x0100
     776:	00090103          	lb	sp,0(s2)
     77a:	0100                	.insn	2, 0x0100
     77c:	00090003          	lb	zero,0(s2)
     780:	0100                	.insn	2, 0x0100
     782:	00090003          	lb	zero,0(s2)
     786:	0100                	.insn	2, 0x0100
     788:	00090003          	lb	zero,0(s2)
     78c:	0100                	.insn	2, 0x0100
     78e:	0306                	.insn	2, 0x0306
     790:	0901                	.insn	2, 0x0901
     792:	0004                	.insn	2, 0x0004
     794:	0301                	.insn	2, 0x0301
     796:	097f 0004 0601 0003 	.insn	10, 0x0c09000306010004097f
     79e:	0c09 
     7a0:	0100                	.insn	2, 0x0100
     7a2:	0306                	.insn	2, 0x0306
     7a4:	0901                	.insn	2, 0x0901
     7a6:	0004                	.insn	2, 0x0004
     7a8:	0001                	.insn	2, 0x0001
     7aa:	0402                	.insn	2, 0x0402
     7ac:	09010313          	addi	t1,sp,144
     7b0:	0004                	.insn	2, 0x0004
     7b2:	0301                	.insn	2, 0x0301
     7b4:	097e                	.insn	2, 0x097e
     7b6:	0004                	.insn	2, 0x0004
     7b8:	0601                	.insn	2, 0x0601
     7ba:	04090003          	lb	zero,64(s2)
     7be:	0100                	.insn	2, 0x0100
     7c0:	00090003          	lb	zero,0(s2)
     7c4:	0100                	.insn	2, 0x0100
     7c6:	0306                	.insn	2, 0x0306
     7c8:	0901                	.insn	2, 0x0901
     7ca:	0004                	.insn	2, 0x0004
     7cc:	0301                	.insn	2, 0x0301
     7ce:	097f 0004 0601 0003 	.insn	10, 0x0409000306010004097f
     7d6:	0409 
     7d8:	0100                	.insn	2, 0x0100
     7da:	00090103          	lb	sp,0(s2)
     7de:	0100                	.insn	2, 0x0100
     7e0:	00090003          	lb	zero,0(s2)
     7e4:	0100                	.insn	2, 0x0100
     7e6:	00090003          	lb	zero,0(s2)
     7ea:	0100                	.insn	2, 0x0100
     7ec:	00090003          	lb	zero,0(s2)
     7f0:	0100                	.insn	2, 0x0100
     7f2:	00090003          	lb	zero,0(s2)
     7f6:	0100                	.insn	2, 0x0100
     7f8:	00090003          	lb	zero,0(s2)
     7fc:	0100                	.insn	2, 0x0100
     7fe:	00090003          	lb	zero,0(s2)
     802:	0100                	.insn	2, 0x0100
     804:	04090003          	lb	zero,64(s2)
     808:	0100                	.insn	2, 0x0100
     80a:	00090103          	lb	sp,0(s2)
     80e:	0100                	.insn	2, 0x0100
     810:	00090003          	lb	zero,0(s2)
     814:	0100                	.insn	2, 0x0100
     816:	00090003          	lb	zero,0(s2)
     81a:	0100                	.insn	2, 0x0100
     81c:	0200                	.insn	2, 0x0200
     81e:	1304                	.insn	2, 0x1304
     820:	00090003          	lb	zero,0(s2)
     824:	0100                	.insn	2, 0x0100
     826:	0200                	.insn	2, 0x0200
     828:	1304                	.insn	2, 0x1304
     82a:	00090003          	lb	zero,0(s2)
     82e:	0100                	.insn	2, 0x0100
     830:	0200                	.insn	2, 0x0200
     832:	1404                	.insn	2, 0x1404
     834:	0306                	.insn	2, 0x0306
     836:	0900                	.insn	2, 0x0900
     838:	0004                	.insn	2, 0x0004
     83a:	0001                	.insn	2, 0x0001
     83c:	0402                	.insn	2, 0x0402
     83e:	09000317          	auipc	t1,0x9000
     842:	0008                	.insn	2, 0x0008
     844:	0001                	.insn	2, 0x0001
     846:	0402                	.insn	2, 0x0402
     848:	0318                	.insn	2, 0x0318
     84a:	0900                	.insn	2, 0x0900
     84c:	0008                	.insn	2, 0x0008
     84e:	0001                	.insn	2, 0x0001
     850:	0402                	.insn	2, 0x0402
     852:	0003061b          	.insn	4, 0x0003061b
     856:	0809                	.insn	2, 0x0809
     858:	0100                	.insn	2, 0x0100
     85a:	0200                	.insn	2, 0x0200
     85c:	1b04                	.insn	2, 0x1b04
     85e:	00090003          	lb	zero,0(s2)
     862:	0100                	.insn	2, 0x0100
     864:	0200                	.insn	2, 0x0200
     866:	1b04                	.insn	2, 0x1b04
     868:	00090003          	lb	zero,0(s2)
     86c:	0100                	.insn	2, 0x0100
     86e:	0200                	.insn	2, 0x0200
     870:	1b04                	.insn	2, 0x1b04
     872:	00090003          	lb	zero,0(s2)
     876:	0100                	.insn	2, 0x0100
     878:	0200                	.insn	2, 0x0200
     87a:	3704                	.insn	2, 0x3704
     87c:	00090003          	lb	zero,0(s2)
     880:	0100                	.insn	2, 0x0100
     882:	0200                	.insn	2, 0x0200
     884:	3704                	.insn	2, 0x3704
     886:	00090003          	lb	zero,0(s2)
     88a:	0100                	.insn	2, 0x0100
     88c:	0200                	.insn	2, 0x0200
     88e:	3b04                	.insn	2, 0x3b04
     890:	00090003          	lb	zero,0(s2)
     894:	0100                	.insn	2, 0x0100
     896:	0200                	.insn	2, 0x0200
     898:	3b04                	.insn	2, 0x3b04
     89a:	00090003          	lb	zero,0(s2)
     89e:	0100                	.insn	2, 0x0100
     8a0:	0200                	.insn	2, 0x0200
     8a2:	3b04                	.insn	2, 0x3b04
     8a4:	00090003          	lb	zero,0(s2)
     8a8:	0100                	.insn	2, 0x0100
     8aa:	0200                	.insn	2, 0x0200
     8ac:	3e04                	.insn	2, 0x3e04
     8ae:	00090003          	lb	zero,0(s2)
     8b2:	0100                	.insn	2, 0x0100
     8b4:	0200                	.insn	2, 0x0200
     8b6:	3e04                	.insn	2, 0x3e04
     8b8:	00090003          	lb	zero,0(s2)
     8bc:	0100                	.insn	2, 0x0100
     8be:	0200                	.insn	2, 0x0200
     8c0:	3e04                	.insn	2, 0x3e04
     8c2:	00090003          	lb	zero,0(s2)
     8c6:	0100                	.insn	2, 0x0100
     8c8:	0200                	.insn	2, 0x0200
     8ca:	4204                	.insn	2, 0x4204
     8cc:	0306                	.insn	2, 0x0306
     8ce:	0900                	.insn	2, 0x0900
     8d0:	0000                	.insn	2, 0x
     8d2:	0001                	.insn	2, 0x0001
     8d4:	0402                	.insn	2, 0x0402
     8d6:	033e                	.insn	2, 0x033e
     8d8:	0900                	.insn	2, 0x0900
     8da:	0004                	.insn	2, 0x0004
     8dc:	0001                	.insn	2, 0x0001
     8de:	0402                	.insn	2, 0x0402
     8e0:	0900033f 00010004 	.insn	8, 0x000100040900033f
     8e8:	0402                	.insn	2, 0x0402
     8ea:	0644                	.insn	2, 0x0644
     8ec:	08090003          	lb	zero,128(s2)
     8f0:	0100                	.insn	2, 0x0100
     8f2:	0200                	.insn	2, 0x0200
     8f4:	4504                	.insn	2, 0x4504
     8f6:	0306                	.insn	2, 0x0306
     8f8:	0900                	.insn	2, 0x0900
     8fa:	0004                	.insn	2, 0x0004
     8fc:	0001                	.insn	2, 0x0001
     8fe:	0402                	.insn	2, 0x0402
     900:	064a                	.insn	2, 0x064a
     902:	04090003          	lb	zero,64(s2)
     906:	0100                	.insn	2, 0x0100
     908:	0200                	.insn	2, 0x0200
     90a:	4b04                	.insn	2, 0x4b04
     90c:	0306                	.insn	2, 0x0306
     90e:	0900                	.insn	2, 0x0900
     910:	0004                	.insn	2, 0x0004
     912:	0001                	.insn	2, 0x0001
     914:	0402                	.insn	2, 0x0402
     916:	066c                	.insn	2, 0x066c
     918:	04090003          	lb	zero,64(s2)
     91c:	0100                	.insn	2, 0x0100
     91e:	0200                	.insn	2, 0x0200
     920:	7a04                	.insn	2, 0x7a04
     922:	0306                	.insn	2, 0x0306
     924:	0900                	.insn	2, 0x0900
     926:	0000                	.insn	2, 0x
     928:	0001                	.insn	2, 0x0001
     92a:	0402                	.insn	2, 0x0402
     92c:	036c                	.insn	2, 0x036c
     92e:	0900                	.insn	2, 0x0900
     930:	0004                	.insn	2, 0x0004
     932:	0001                	.insn	2, 0x0001
     934:	01850403          	lb	s0,24(a0)
     938:	04090003          	lb	zero,64(s2)
     93c:	0100                	.insn	2, 0x0100
     93e:	0200                	.insn	2, 0x0200
     940:	5104                	.insn	2, 0x5104
     942:	0306                	.insn	2, 0x0306
     944:	0900                	.insn	2, 0x0900
     946:	0008                	.insn	2, 0x0008
     948:	0001                	.insn	2, 0x0001
     94a:	0402                	.insn	2, 0x0402
     94c:	09000377          	.insn	4, 0x09000377
     950:	0004                	.insn	2, 0x0004
     952:	0001                	.insn	2, 0x0001
     954:	01850403          	lb	s0,24(a0)
     958:	0306                	.insn	2, 0x0306
     95a:	0900                	.insn	2, 0x0900
     95c:	0000                	.insn	2, 0x
     95e:	0001                	.insn	2, 0x0001
     960:	0402                	.insn	2, 0x0402
     962:	09000377          	.insn	4, 0x09000377
     966:	0004                	.insn	2, 0x0004
     968:	0501                	.insn	2, 0x0501
     96a:	0301                	.insn	2, 0x0301
     96c:	0904                	.insn	2, 0x0904
     96e:	0004                	.insn	2, 0x0004
     970:	0501                	.insn	2, 0x0501
     972:	04020003          	lb	zero,64(tp) # 40 <_tbss_end+0x40>
     976:	0666                	.insn	2, 0x0666
     978:	04097c03          	.insn	4, 0x04097c03
     97c:	0100                	.insn	2, 0x0100
     97e:	0200                	.insn	2, 0x0200
     980:	6d04                	.insn	2, 0x6d04
     982:	04090003          	lb	zero,64(s2)
     986:	0100                	.insn	2, 0x0100
     988:	0200                	.insn	2, 0x0200
     98a:	7404                	.insn	2, 0x7404
     98c:	0306                	.insn	2, 0x0306
     98e:	0900                	.insn	2, 0x0900
     990:	0004                	.insn	2, 0x0004
     992:	0001                	.insn	2, 0x0001
     994:	0402                	.insn	2, 0x0402
     996:	0375                	.insn	2, 0x0375
     998:	0900                	.insn	2, 0x0900
     99a:	0004                	.insn	2, 0x0004
     99c:	0001                	.insn	2, 0x0001
     99e:	0402                	.insn	2, 0x0402
     9a0:	0678                	.insn	2, 0x0678
     9a2:	04090003          	lb	zero,64(s2)
     9a6:	0100                	.insn	2, 0x0100
     9a8:	0200                	.insn	2, 0x0200
     9aa:	4d04                	.insn	2, 0x4d04
     9ac:	0306                	.insn	2, 0x0306
     9ae:	0900                	.insn	2, 0x0900
     9b0:	0000                	.insn	2, 0x
     9b2:	0001                	.insn	2, 0x0001
     9b4:	01800403          	lb	s0,24(zero) # 18 <_tbss_end+0x18>
     9b8:	04090003          	lb	zero,64(s2)
     9bc:	0100                	.insn	2, 0x0100
     9be:	0300                	.insn	2, 0x0300
     9c0:	8204                	.insn	2, 0x8204
     9c2:	0601                	.insn	2, 0x0601
     9c4:	04090003          	lb	zero,64(s2)
     9c8:	0100                	.insn	2, 0x0100
     9ca:	0200                	.insn	2, 0x0200
     9cc:	7a04                	.insn	2, 0x7a04
     9ce:	0306                	.insn	2, 0x0306
     9d0:	0900                	.insn	2, 0x0900
     9d2:	0000                	.insn	2, 0x
     9d4:	0001                	.insn	2, 0x0001
     9d6:	01820403          	lb	s0,24(tp) # 18 <_tbss_end+0x18>
     9da:	04090003          	lb	zero,64(s2)
     9de:	0100                	.insn	2, 0x0100
     9e0:	0200                	.insn	2, 0x0200
     9e2:	0104                	.insn	2, 0x0104
     9e4:	0306                	.insn	2, 0x0306
     9e6:	0901                	.insn	2, 0x0901
     9e8:	0008                	.insn	2, 0x0008
     9ea:	0001                	.insn	2, 0x0001
     9ec:	0402                	.insn	2, 0x0402
     9ee:	034a                	.insn	2, 0x034a
     9f0:	097f 000c 0001 0402 	.insn	10, 0x035804020001000c097f
     9f8:	0358 
     9fa:	0900                	.insn	2, 0x0900
     9fc:	0004                	.insn	2, 0x0004
     9fe:	0001                	.insn	2, 0x0001
     a00:	0402                	.insn	2, 0x0402
     a02:	035f 0900 0004      	.insn	6, 0x00040900035f
     a08:	0001                	.insn	2, 0x0001
     a0a:	0402                	.insn	2, 0x0402
     a0c:	0365                	.insn	2, 0x0365
     a0e:	0900                	.insn	2, 0x0900
     a10:	0004                	.insn	2, 0x0004
     a12:	0001                	.insn	2, 0x0001
     a14:	01850403          	lb	s0,24(a0)
     a18:	0306                	.insn	2, 0x0306
     a1a:	0900                	.insn	2, 0x0900
     a1c:	0000                	.insn	2, 0x
     a1e:	0001                	.insn	2, 0x0001
     a20:	0402                	.insn	2, 0x0402
     a22:	0365                	.insn	2, 0x0365
     a24:	0900                	.insn	2, 0x0900
     a26:	0004                	.insn	2, 0x0004
     a28:	0001                	.insn	2, 0x0001
     a2a:	0402                	.insn	2, 0x0402
     a2c:	037a                	.insn	2, 0x037a
     a2e:	0900                	.insn	2, 0x0900
     a30:	0004                	.insn	2, 0x0004
     a32:	0901                	.insn	2, 0x0901
     a34:	0008                	.insn	2, 0x0008
     a36:	0100                	.insn	2, 0x0100
     a38:	2f01                	.insn	2, 0x2f01
     a3a:	0012                	.insn	2, 0x0012
     a3c:	0500                	.insn	2, 0x0500
     a3e:	0400                	.insn	2, 0x0400
     a40:	3800                	.insn	2, 0x3800
     a42:	0000                	.insn	2, 0x
     a44:	0100                	.insn	2, 0x0100
     a46:	0101                	.insn	2, 0x0101
     a48:	000d0efb          	.insn	4, 0x000d0efb
     a4c:	0101                	.insn	2, 0x0101
     a4e:	0101                	.insn	2, 0x0101
     a50:	0000                	.insn	2, 0x
     a52:	0100                	.insn	2, 0x0100
     a54:	0000                	.insn	2, 0x
     a56:	0101                	.insn	2, 0x0101
     a58:	1f01                	.insn	2, 0x1f01
     a5a:	2602                	.insn	2, 0x2602
     a5c:	0000                	.insn	2, 0x
     a5e:	8500                	.insn	2, 0x8500
     a60:	0000                	.insn	2, 0x
     a62:	0200                	.insn	2, 0x0200
     a64:	1f01                	.insn	2, 0x1f01
     a66:	0f02                	.insn	2, 0x0f02
     a68:	2604                	.insn	2, 0x2604
     a6a:	0001                	.insn	2, 0x0001
     a6c:	0100                	.insn	2, 0x0100
     a6e:	0126                	.insn	2, 0x0126
     a70:	0000                	.insn	2, 0x
     a72:	2f01                	.insn	2, 0x2f01
     a74:	0001                	.insn	2, 0x0001
     a76:	0100                	.insn	2, 0x0100
     a78:	000000b3          	add	ra,zero,zero
     a7c:	0501                	.insn	2, 0x0501
     a7e:	0001                	.insn	2, 0x0001
     a80:	0205                	.insn	2, 0x0205
     a82:	1990                	.insn	2, 0x1990
     a84:	8000                	.insn	2, 0x8000
     a86:	05012103          	lw	sp,80(sp)
     a8a:	09010303          	lb	t1,144(sp)
     a8e:	0000                	.insn	2, 0x
     a90:	0301                	.insn	2, 0x0301
     a92:	0900                	.insn	2, 0x0900
     a94:	0000                	.insn	2, 0x
     a96:	0501                	.insn	2, 0x0501
     a98:	030d                	.insn	2, 0x030d
     a9a:	0900                	.insn	2, 0x0900
     a9c:	0000                	.insn	2, 0x
     a9e:	0501                	.insn	2, 0x0501
     aa0:	09010303          	lb	t1,144(sp)
     aa4:	0000                	.insn	2, 0x
     aa6:	0301                	.insn	2, 0x0301
     aa8:	0900                	.insn	2, 0x0900
     aaa:	0000                	.insn	2, 0x
     aac:	0301                	.insn	2, 0x0301
     aae:	0900                	.insn	2, 0x0900
     ab0:	0000                	.insn	2, 0x
     ab2:	0301                	.insn	2, 0x0301
     ab4:	0900                	.insn	2, 0x0900
     ab6:	0000                	.insn	2, 0x
     ab8:	0301                	.insn	2, 0x0301
     aba:	0901                	.insn	2, 0x0901
     abc:	0000                	.insn	2, 0x
     abe:	0301                	.insn	2, 0x0301
     ac0:	0900                	.insn	2, 0x0900
     ac2:	0000                	.insn	2, 0x
     ac4:	0301                	.insn	2, 0x0301
     ac6:	0900                	.insn	2, 0x0900
     ac8:	0000                	.insn	2, 0x
     aca:	0301                	.insn	2, 0x0301
     acc:	0900                	.insn	2, 0x0900
     ace:	0000                	.insn	2, 0x
     ad0:	0301                	.insn	2, 0x0301
     ad2:	0901                	.insn	2, 0x0901
     ad4:	0000                	.insn	2, 0x
     ad6:	0301                	.insn	2, 0x0301
     ad8:	0900                	.insn	2, 0x0900
     ada:	0000                	.insn	2, 0x
     adc:	0301                	.insn	2, 0x0301
     ade:	0900                	.insn	2, 0x0900
     ae0:	0000                	.insn	2, 0x
     ae2:	0301                	.insn	2, 0x0301
     ae4:	0900                	.insn	2, 0x0900
     ae6:	0000                	.insn	2, 0x
     ae8:	0301                	.insn	2, 0x0301
     aea:	0901                	.insn	2, 0x0901
     aec:	0000                	.insn	2, 0x
     aee:	0301                	.insn	2, 0x0301
     af0:	0902                	.insn	2, 0x0902
     af2:	0000                	.insn	2, 0x
     af4:	0301                	.insn	2, 0x0301
     af6:	0900                	.insn	2, 0x0900
     af8:	0000                	.insn	2, 0x
     afa:	0501                	.insn	2, 0x0501
     afc:	0601                	.insn	2, 0x0601
     afe:	00097903          	.insn	4, 0x00097903
     b02:	0100                	.insn	2, 0x0100
     b04:	18090003          	lb	zero,384(s2)
     b08:	0100                	.insn	2, 0x0100
     b0a:	0305                	.insn	2, 0x0305
     b0c:	04090703          	lb	a4,64(s2)
     b10:	0100                	.insn	2, 0x0100
     b12:	0306                	.insn	2, 0x0306
     b14:	0900                	.insn	2, 0x0900
     b16:	0004                	.insn	2, 0x0004
     b18:	0301                	.insn	2, 0x0301
     b1a:	0901                	.insn	2, 0x0901
     b1c:	0000                	.insn	2, 0x
     b1e:	0301                	.insn	2, 0x0301
     b20:	0900                	.insn	2, 0x0900
     b22:	0000                	.insn	2, 0x
     b24:	0301                	.insn	2, 0x0301
     b26:	0900                	.insn	2, 0x0900
     b28:	0000                	.insn	2, 0x
     b2a:	0301                	.insn	2, 0x0301
     b2c:	0900                	.insn	2, 0x0900
     b2e:	0000                	.insn	2, 0x
     b30:	0301                	.insn	2, 0x0301
     b32:	0900                	.insn	2, 0x0900
     b34:	0000                	.insn	2, 0x
     b36:	0301                	.insn	2, 0x0301
     b38:	0900                	.insn	2, 0x0900
     b3a:	0000                	.insn	2, 0x
     b3c:	0301                	.insn	2, 0x0301
     b3e:	0900                	.insn	2, 0x0900
     b40:	0010                	.insn	2, 0x0010
     b42:	0301                	.insn	2, 0x0301
     b44:	0900                	.insn	2, 0x0900
     b46:	0000                	.insn	2, 0x
     b48:	0301                	.insn	2, 0x0301
     b4a:	0900                	.insn	2, 0x0900
     b4c:	0004                	.insn	2, 0x0004
     b4e:	0301                	.insn	2, 0x0301
     b50:	0900                	.insn	2, 0x0900
     b52:	0000                	.insn	2, 0x
     b54:	0301                	.insn	2, 0x0301
     b56:	0900                	.insn	2, 0x0900
     b58:	0000                	.insn	2, 0x
     b5a:	0001                	.insn	2, 0x0001
     b5c:	0402                	.insn	2, 0x0402
     b5e:	0301                	.insn	2, 0x0301
     b60:	0900                	.insn	2, 0x0900
     b62:	000c                	.insn	2, 0x000c
     b64:	0001                	.insn	2, 0x0001
     b66:	0402                	.insn	2, 0x0402
     b68:	0301                	.insn	2, 0x0301
     b6a:	0900                	.insn	2, 0x0900
     b6c:	0000                	.insn	2, 0x
     b6e:	0001                	.insn	2, 0x0001
     b70:	0402                	.insn	2, 0x0402
     b72:	0301                	.insn	2, 0x0301
     b74:	0900                	.insn	2, 0x0900
     b76:	0000                	.insn	2, 0x
     b78:	0001                	.insn	2, 0x0001
     b7a:	0402                	.insn	2, 0x0402
     b7c:	0305                	.insn	2, 0x0305
     b7e:	0900                	.insn	2, 0x0900
     b80:	0000                	.insn	2, 0x
     b82:	0001                	.insn	2, 0x0001
     b84:	0402                	.insn	2, 0x0402
     b86:	0305                	.insn	2, 0x0305
     b88:	0900                	.insn	2, 0x0900
     b8a:	0014                	.insn	2, 0x0014
     b8c:	0001                	.insn	2, 0x0001
     b8e:	0402                	.insn	2, 0x0402
     b90:	09000307          	.insn	4, 0x09000307
     b94:	0004                	.insn	2, 0x0004
     b96:	0001                	.insn	2, 0x0001
     b98:	0402                	.insn	2, 0x0402
     b9a:	09000307          	.insn	4, 0x09000307
     b9e:	0000                	.insn	2, 0x
     ba0:	0001                	.insn	2, 0x0001
     ba2:	0402                	.insn	2, 0x0402
     ba4:	09000307          	.insn	4, 0x09000307
     ba8:	0004                	.insn	2, 0x0004
     baa:	0001                	.insn	2, 0x0001
     bac:	0402                	.insn	2, 0x0402
     bae:	09000307          	.insn	4, 0x09000307
     bb2:	0000                	.insn	2, 0x
     bb4:	0001                	.insn	2, 0x0001
     bb6:	0402                	.insn	2, 0x0402
     bb8:	0629                	.insn	2, 0x0629
     bba:	00090003          	lb	zero,0(s2)
     bbe:	0100                	.insn	2, 0x0100
     bc0:	04097903          	.insn	4, 0x04097903
     bc4:	0100                	.insn	2, 0x0100
     bc6:	0200                	.insn	2, 0x0200
     bc8:	0204                	.insn	2, 0x0204
     bca:	0306                	.insn	2, 0x0306
     bcc:	00080907          	.insn	4, 0x00080907
     bd0:	0001                	.insn	2, 0x0001
     bd2:	0402                	.insn	2, 0x0402
     bd4:	030a                	.insn	2, 0x030a
     bd6:	0900                	.insn	2, 0x0900
     bd8:	0008                	.insn	2, 0x0008
     bda:	0001                	.insn	2, 0x0001
     bdc:	0402                	.insn	2, 0x0402
     bde:	030d                	.insn	2, 0x030d
     be0:	0900                	.insn	2, 0x0900
     be2:	0000                	.insn	2, 0x
     be4:	0001                	.insn	2, 0x0001
     be6:	0402                	.insn	2, 0x0402
     be8:	030d                	.insn	2, 0x030d
     bea:	0900                	.insn	2, 0x0900
     bec:	0000                	.insn	2, 0x
     bee:	0001                	.insn	2, 0x0001
     bf0:	0402                	.insn	2, 0x0402
     bf2:	030d                	.insn	2, 0x030d
     bf4:	0900                	.insn	2, 0x0900
     bf6:	0000                	.insn	2, 0x
     bf8:	0001                	.insn	2, 0x0001
     bfa:	0402                	.insn	2, 0x0402
     bfc:	0900030f          	.insn	4, 0x0900030f
     c00:	0004                	.insn	2, 0x0004
     c02:	0001                	.insn	2, 0x0001
     c04:	0402                	.insn	2, 0x0402
     c06:	0900030f          	.insn	4, 0x0900030f
     c0a:	0000                	.insn	2, 0x
     c0c:	0001                	.insn	2, 0x0001
     c0e:	0402                	.insn	2, 0x0402
     c10:	0900030f          	.insn	4, 0x0900030f
     c14:	0000                	.insn	2, 0x
     c16:	0001                	.insn	2, 0x0001
     c18:	0402                	.insn	2, 0x0402
     c1a:	0311                	.insn	2, 0x0311
     c1c:	0900                	.insn	2, 0x0900
     c1e:	0000                	.insn	2, 0x
     c20:	0001                	.insn	2, 0x0001
     c22:	0402                	.insn	2, 0x0402
     c24:	09000317          	auipc	t1,0x9000
     c28:	0004                	.insn	2, 0x0004
     c2a:	0001                	.insn	2, 0x0001
     c2c:	0402                	.insn	2, 0x0402
     c2e:	031f 0900 0000      	.insn	6, 0x0900031f
     c34:	0001                	.insn	2, 0x0001
     c36:	0402                	.insn	2, 0x0402
     c38:	031f 0900 0000      	.insn	6, 0x0900031f
     c3e:	0001                	.insn	2, 0x0001
     c40:	0402                	.insn	2, 0x0402
     c42:	031f 0900 0004      	.insn	6, 0x00040900031f
     c48:	0001                	.insn	2, 0x0001
     c4a:	0402                	.insn	2, 0x0402
     c4c:	0320                	.insn	2, 0x0320
     c4e:	0900                	.insn	2, 0x0900
     c50:	0000                	.insn	2, 0x
     c52:	0001                	.insn	2, 0x0001
     c54:	0402                	.insn	2, 0x0402
     c56:	0625                	.insn	2, 0x0625
     c58:	00090003          	lb	zero,0(s2)
     c5c:	0100                	.insn	2, 0x0100
     c5e:	0200                	.insn	2, 0x0200
     c60:	2004                	.insn	2, 0x2004
     c62:	04090003          	lb	zero,64(s2)
     c66:	0100                	.insn	2, 0x0100
     c68:	0200                	.insn	2, 0x0200
     c6a:	2504                	.insn	2, 0x2504
     c6c:	0306                	.insn	2, 0x0306
     c6e:	0900                	.insn	2, 0x0900
     c70:	0004                	.insn	2, 0x0004
     c72:	0001                	.insn	2, 0x0001
     c74:	0402                	.insn	2, 0x0402
     c76:	0325                	.insn	2, 0x0325
     c78:	0900                	.insn	2, 0x0900
     c7a:	0010                	.insn	2, 0x0010
     c7c:	0001                	.insn	2, 0x0001
     c7e:	0402                	.insn	2, 0x0402
     c80:	09000327          	.insn	4, 0x09000327
     c84:	0004                	.insn	2, 0x0004
     c86:	0001                	.insn	2, 0x0001
     c88:	0402                	.insn	2, 0x0402
     c8a:	0329                	.insn	2, 0x0329
     c8c:	0900                	.insn	2, 0x0900
     c8e:	0000                	.insn	2, 0x
     c90:	0001                	.insn	2, 0x0001
     c92:	0402                	.insn	2, 0x0402
     c94:	0329                	.insn	2, 0x0329
     c96:	0900                	.insn	2, 0x0900
     c98:	000c                	.insn	2, 0x000c
     c9a:	0001                	.insn	2, 0x0001
     c9c:	0402                	.insn	2, 0x0402
     c9e:	0329                	.insn	2, 0x0329
     ca0:	0900                	.insn	2, 0x0900
     ca2:	0000                	.insn	2, 0x
     ca4:	0001                	.insn	2, 0x0001
     ca6:	0402                	.insn	2, 0x0402
     ca8:	0310                	.insn	2, 0x0310
     caa:	0900                	.insn	2, 0x0900
     cac:	0008                	.insn	2, 0x0008
     cae:	0001                	.insn	2, 0x0001
     cb0:	0402                	.insn	2, 0x0402
     cb2:	0310                	.insn	2, 0x0310
     cb4:	0900                	.insn	2, 0x0900
     cb6:	0000                	.insn	2, 0x
     cb8:	0001                	.insn	2, 0x0001
     cba:	0402                	.insn	2, 0x0402
     cbc:	0310                	.insn	2, 0x0310
     cbe:	0900                	.insn	2, 0x0900
     cc0:	0000                	.insn	2, 0x
     cc2:	0001                	.insn	2, 0x0001
     cc4:	0402                	.insn	2, 0x0402
     cc6:	0318                	.insn	2, 0x0318
     cc8:	0900                	.insn	2, 0x0900
     cca:	0000                	.insn	2, 0x
     ccc:	0001                	.insn	2, 0x0001
     cce:	0402                	.insn	2, 0x0402
     cd0:	031e                	.insn	2, 0x031e
     cd2:	0900                	.insn	2, 0x0900
     cd4:	0004                	.insn	2, 0x0004
     cd6:	0001                	.insn	2, 0x0001
     cd8:	0402                	.insn	2, 0x0402
     cda:	031e                	.insn	2, 0x031e
     cdc:	0900                	.insn	2, 0x0900
     cde:	0000                	.insn	2, 0x
     ce0:	0001                	.insn	2, 0x0001
     ce2:	0402                	.insn	2, 0x0402
     ce4:	061f 0003 0009      	.insn	6, 0x00090003061f
     cea:	0100                	.insn	2, 0x0100
     cec:	0200                	.insn	2, 0x0200
     cee:	1e04                	.insn	2, 0x1e04
     cf0:	08090003          	lb	zero,128(s2)
     cf4:	0100                	.insn	2, 0x0100
     cf6:	0200                	.insn	2, 0x0200
     cf8:	1f04                	.insn	2, 0x1f04
     cfa:	0306                	.insn	2, 0x0306
     cfc:	0900                	.insn	2, 0x0900
     cfe:	0004                	.insn	2, 0x0004
     d00:	0001                	.insn	2, 0x0001
     d02:	0402                	.insn	2, 0x0402
     d04:	031f 0900 0000      	.insn	6, 0x0900031f
     d0a:	0001                	.insn	2, 0x0001
     d0c:	0402                	.insn	2, 0x0402
     d0e:	031f 0900 0000      	.insn	6, 0x0900031f
     d14:	0001                	.insn	2, 0x0001
     d16:	0402                	.insn	2, 0x0402
     d18:	0321                	.insn	2, 0x0321
     d1a:	0900                	.insn	2, 0x0900
     d1c:	0004                	.insn	2, 0x0004
     d1e:	0001                	.insn	2, 0x0001
     d20:	0402                	.insn	2, 0x0402
     d22:	0321                	.insn	2, 0x0321
     d24:	0900                	.insn	2, 0x0900
     d26:	0008                	.insn	2, 0x0008
     d28:	0001                	.insn	2, 0x0001
     d2a:	0402                	.insn	2, 0x0402
     d2c:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
     d30:	0004                	.insn	2, 0x0004
     d32:	0001                	.insn	2, 0x0001
     d34:	0402                	.insn	2, 0x0402
     d36:	032c                	.insn	2, 0x032c
     d38:	0900                	.insn	2, 0x0900
     d3a:	0008                	.insn	2, 0x0008
     d3c:	0001                	.insn	2, 0x0001
     d3e:	0402                	.insn	2, 0x0402
     d40:	032c                	.insn	2, 0x032c
     d42:	0900                	.insn	2, 0x0900
     d44:	0000                	.insn	2, 0x
     d46:	0601                	.insn	2, 0x0601
     d48:	0c090003          	lb	zero,192(s2)
     d4c:	0100                	.insn	2, 0x0100
     d4e:	0200                	.insn	2, 0x0200
     d50:	2c04                	.insn	2, 0x2c04
     d52:	08090003          	lb	zero,128(s2)
     d56:	0100                	.insn	2, 0x0100
     d58:	0200                	.insn	2, 0x0200
     d5a:	0804                	.insn	2, 0x0804
     d5c:	0306                	.insn	2, 0x0306
     d5e:	0900                	.insn	2, 0x0900
     d60:	0004                	.insn	2, 0x0004
     d62:	0001                	.insn	2, 0x0001
     d64:	0402                	.insn	2, 0x0402
     d66:	0308                	.insn	2, 0x0308
     d68:	0900                	.insn	2, 0x0900
     d6a:	0000                	.insn	2, 0x
     d6c:	0301                	.insn	2, 0x0301
     d6e:	0901                	.insn	2, 0x0901
     d70:	0000                	.insn	2, 0x
     d72:	0301                	.insn	2, 0x0301
     d74:	0900                	.insn	2, 0x0900
     d76:	0000                	.insn	2, 0x
     d78:	0301                	.insn	2, 0x0301
     d7a:	0900                	.insn	2, 0x0900
     d7c:	0000                	.insn	2, 0x
     d7e:	0301                	.insn	2, 0x0301
     d80:	0900                	.insn	2, 0x0900
     d82:	0000                	.insn	2, 0x
     d84:	0301                	.insn	2, 0x0301
     d86:	0900                	.insn	2, 0x0900
     d88:	0000                	.insn	2, 0x
     d8a:	0301                	.insn	2, 0x0301
     d8c:	0900                	.insn	2, 0x0900
     d8e:	0010                	.insn	2, 0x0010
     d90:	0301                	.insn	2, 0x0301
     d92:	0900                	.insn	2, 0x0900
     d94:	0004                	.insn	2, 0x0004
     d96:	0301                	.insn	2, 0x0301
     d98:	0900                	.insn	2, 0x0900
     d9a:	0000                	.insn	2, 0x
     d9c:	0301                	.insn	2, 0x0301
     d9e:	0900                	.insn	2, 0x0900
     da0:	0004                	.insn	2, 0x0004
     da2:	0301                	.insn	2, 0x0301
     da4:	0900                	.insn	2, 0x0900
     da6:	0000                	.insn	2, 0x
     da8:	0301                	.insn	2, 0x0301
     daa:	0900                	.insn	2, 0x0900
     dac:	0000                	.insn	2, 0x
     dae:	0001                	.insn	2, 0x0001
     db0:	0402                	.insn	2, 0x0402
     db2:	0301                	.insn	2, 0x0301
     db4:	0900                	.insn	2, 0x0900
     db6:	000c                	.insn	2, 0x000c
     db8:	0001                	.insn	2, 0x0001
     dba:	0402                	.insn	2, 0x0402
     dbc:	0301                	.insn	2, 0x0301
     dbe:	0900                	.insn	2, 0x0900
     dc0:	0000                	.insn	2, 0x
     dc2:	0001                	.insn	2, 0x0001
     dc4:	0402                	.insn	2, 0x0402
     dc6:	0301                	.insn	2, 0x0301
     dc8:	0900                	.insn	2, 0x0900
     dca:	0000                	.insn	2, 0x
     dcc:	0001                	.insn	2, 0x0001
     dce:	0402                	.insn	2, 0x0402
     dd0:	0305                	.insn	2, 0x0305
     dd2:	0900                	.insn	2, 0x0900
     dd4:	0000                	.insn	2, 0x
     dd6:	0001                	.insn	2, 0x0001
     dd8:	0402                	.insn	2, 0x0402
     dda:	0305                	.insn	2, 0x0305
     ddc:	0900                	.insn	2, 0x0900
     dde:	0014                	.insn	2, 0x0014
     de0:	0001                	.insn	2, 0x0001
     de2:	0402                	.insn	2, 0x0402
     de4:	00030607          	.insn	4, 0x00030607
     de8:	0009                	.insn	2, 0x0009
     dea:	0100                	.insn	2, 0x0100
     dec:	0200                	.insn	2, 0x0200
     dee:	0504                	.insn	2, 0x0504
     df0:	04090003          	lb	zero,64(s2)
     df4:	0100                	.insn	2, 0x0100
     df6:	0200                	.insn	2, 0x0200
     df8:	0704                	.insn	2, 0x0704
     dfa:	0306                	.insn	2, 0x0306
     dfc:	0900                	.insn	2, 0x0900
     dfe:	0004                	.insn	2, 0x0004
     e00:	0001                	.insn	2, 0x0001
     e02:	0402                	.insn	2, 0x0402
     e04:	09000307          	.insn	4, 0x09000307
     e08:	0000                	.insn	2, 0x
     e0a:	0001                	.insn	2, 0x0001
     e0c:	0402                	.insn	2, 0x0402
     e0e:	09000307          	.insn	4, 0x09000307
     e12:	0000                	.insn	2, 0x
     e14:	0001                	.insn	2, 0x0001
     e16:	0402                	.insn	2, 0x0402
     e18:	09000307          	.insn	4, 0x09000307
     e1c:	0000                	.insn	2, 0x
     e1e:	0001                	.insn	2, 0x0001
     e20:	0402                	.insn	2, 0x0402
     e22:	0629                	.insn	2, 0x0629
     e24:	00090003          	lb	zero,0(s2)
     e28:	0100                	.insn	2, 0x0100
     e2a:	0200                	.insn	2, 0x0200
     e2c:	0804                	.insn	2, 0x0804
     e2e:	0306                	.insn	2, 0x0306
     e30:	0900                	.insn	2, 0x0900
     e32:	0004                	.insn	2, 0x0004
     e34:	0001                	.insn	2, 0x0001
     e36:	0402                	.insn	2, 0x0402
     e38:	0308                	.insn	2, 0x0308
     e3a:	0900                	.insn	2, 0x0900
     e3c:	0000                	.insn	2, 0x
     e3e:	0301                	.insn	2, 0x0301
     e40:	0901                	.insn	2, 0x0901
     e42:	0000                	.insn	2, 0x
     e44:	0301                	.insn	2, 0x0301
     e46:	0900                	.insn	2, 0x0900
     e48:	0000                	.insn	2, 0x
     e4a:	0301                	.insn	2, 0x0301
     e4c:	0900                	.insn	2, 0x0900
     e4e:	0000                	.insn	2, 0x
     e50:	0301                	.insn	2, 0x0301
     e52:	0900                	.insn	2, 0x0900
     e54:	0014                	.insn	2, 0x0014
     e56:	0001                	.insn	2, 0x0001
     e58:	0402                	.insn	2, 0x0402
     e5a:	0302                	.insn	2, 0x0302
     e5c:	0900                	.insn	2, 0x0900
     e5e:	001c                	.insn	2, 0x001c
     e60:	0001                	.insn	2, 0x0001
     e62:	0402                	.insn	2, 0x0402
     e64:	0302                	.insn	2, 0x0302
     e66:	0900                	.insn	2, 0x0900
     e68:	0000                	.insn	2, 0x
     e6a:	0001                	.insn	2, 0x0001
     e6c:	0402                	.insn	2, 0x0402
     e6e:	0302                	.insn	2, 0x0302
     e70:	0900                	.insn	2, 0x0900
     e72:	0000                	.insn	2, 0x
     e74:	0001                	.insn	2, 0x0001
     e76:	0402                	.insn	2, 0x0402
     e78:	0302                	.insn	2, 0x0302
     e7a:	0900                	.insn	2, 0x0900
     e7c:	0000                	.insn	2, 0x
     e7e:	0001                	.insn	2, 0x0001
     e80:	0402                	.insn	2, 0x0402
     e82:	0302                	.insn	2, 0x0302
     e84:	0900                	.insn	2, 0x0900
     e86:	0000                	.insn	2, 0x
     e88:	0001                	.insn	2, 0x0001
     e8a:	0402                	.insn	2, 0x0402
     e8c:	0302                	.insn	2, 0x0302
     e8e:	0900                	.insn	2, 0x0900
     e90:	0000                	.insn	2, 0x
     e92:	0001                	.insn	2, 0x0001
     e94:	0402                	.insn	2, 0x0402
     e96:	0302                	.insn	2, 0x0302
     e98:	0900                	.insn	2, 0x0900
     e9a:	0000                	.insn	2, 0x
     e9c:	0001                	.insn	2, 0x0001
     e9e:	0402                	.insn	2, 0x0402
     ea0:	0302                	.insn	2, 0x0302
     ea2:	0900                	.insn	2, 0x0900
     ea4:	0000                	.insn	2, 0x
     ea6:	0001                	.insn	2, 0x0001
     ea8:	0402                	.insn	2, 0x0402
     eaa:	0302                	.insn	2, 0x0302
     eac:	0900                	.insn	2, 0x0900
     eae:	0000                	.insn	2, 0x
     eb0:	0001                	.insn	2, 0x0001
     eb2:	0402                	.insn	2, 0x0402
     eb4:	0302                	.insn	2, 0x0302
     eb6:	0900                	.insn	2, 0x0900
     eb8:	0000                	.insn	2, 0x
     eba:	0001                	.insn	2, 0x0001
     ebc:	0402                	.insn	2, 0x0402
     ebe:	0302                	.insn	2, 0x0302
     ec0:	0900                	.insn	2, 0x0900
     ec2:	0000                	.insn	2, 0x
     ec4:	0001                	.insn	2, 0x0001
     ec6:	0402                	.insn	2, 0x0402
     ec8:	0302                	.insn	2, 0x0302
     eca:	0900                	.insn	2, 0x0900
     ecc:	000c                	.insn	2, 0x000c
     ece:	0001                	.insn	2, 0x0001
     ed0:	0402                	.insn	2, 0x0402
     ed2:	0302                	.insn	2, 0x0302
     ed4:	0900                	.insn	2, 0x0900
     ed6:	0000                	.insn	2, 0x
     ed8:	0001                	.insn	2, 0x0001
     eda:	0402                	.insn	2, 0x0402
     edc:	0302                	.insn	2, 0x0302
     ede:	0900                	.insn	2, 0x0900
     ee0:	0004                	.insn	2, 0x0004
     ee2:	0001                	.insn	2, 0x0001
     ee4:	0402                	.insn	2, 0x0402
     ee6:	0302                	.insn	2, 0x0302
     ee8:	0900                	.insn	2, 0x0900
     eea:	000c                	.insn	2, 0x000c
     eec:	0001                	.insn	2, 0x0001
     eee:	0402                	.insn	2, 0x0402
     ef0:	0302                	.insn	2, 0x0302
     ef2:	0900                	.insn	2, 0x0900
     ef4:	0000                	.insn	2, 0x
     ef6:	0001                	.insn	2, 0x0001
     ef8:	0402                	.insn	2, 0x0402
     efa:	0302                	.insn	2, 0x0302
     efc:	0900                	.insn	2, 0x0900
     efe:	0004                	.insn	2, 0x0004
     f00:	0001                	.insn	2, 0x0001
     f02:	0402                	.insn	2, 0x0402
     f04:	0302                	.insn	2, 0x0302
     f06:	0900                	.insn	2, 0x0900
     f08:	0014                	.insn	2, 0x0014
     f0a:	0001                	.insn	2, 0x0001
     f0c:	0402                	.insn	2, 0x0402
     f0e:	0302                	.insn	2, 0x0302
     f10:	0900                	.insn	2, 0x0900
     f12:	0000                	.insn	2, 0x
     f14:	0001                	.insn	2, 0x0001
     f16:	0402                	.insn	2, 0x0402
     f18:	0302                	.insn	2, 0x0302
     f1a:	0900                	.insn	2, 0x0900
     f1c:	0000                	.insn	2, 0x
     f1e:	0001                	.insn	2, 0x0001
     f20:	0402                	.insn	2, 0x0402
     f22:	0309                	.insn	2, 0x0309
     f24:	0900                	.insn	2, 0x0900
     f26:	0004                	.insn	2, 0x0004
     f28:	0001                	.insn	2, 0x0001
     f2a:	0402                	.insn	2, 0x0402
     f2c:	0900030b          	.insn	4, 0x0900030b
     f30:	0004                	.insn	2, 0x0004
     f32:	0001                	.insn	2, 0x0001
     f34:	0402                	.insn	2, 0x0402
     f36:	0900030b          	.insn	4, 0x0900030b
     f3a:	0004                	.insn	2, 0x0004
     f3c:	0001                	.insn	2, 0x0001
     f3e:	0402                	.insn	2, 0x0402
     f40:	0900030b          	.insn	4, 0x0900030b
     f44:	0018                	.insn	2, 0x0018
     f46:	0001                	.insn	2, 0x0001
     f48:	0402                	.insn	2, 0x0402
     f4a:	0900030b          	.insn	4, 0x0900030b
     f4e:	0000                	.insn	2, 0x
     f50:	0001                	.insn	2, 0x0001
     f52:	0402                	.insn	2, 0x0402
     f54:	0900030b          	.insn	4, 0x0900030b
     f58:	0000                	.insn	2, 0x
     f5a:	0001                	.insn	2, 0x0001
     f5c:	0402                	.insn	2, 0x0402
     f5e:	0900030b          	.insn	4, 0x0900030b
     f62:	0000                	.insn	2, 0x
     f64:	0001                	.insn	2, 0x0001
     f66:	0402                	.insn	2, 0x0402
     f68:	0900030b          	.insn	4, 0x0900030b
     f6c:	0000                	.insn	2, 0x
     f6e:	0001                	.insn	2, 0x0001
     f70:	0402                	.insn	2, 0x0402
     f72:	0900030b          	.insn	4, 0x0900030b
     f76:	0000                	.insn	2, 0x
     f78:	0001                	.insn	2, 0x0001
     f7a:	0402                	.insn	2, 0x0402
     f7c:	0900030b          	.insn	4, 0x0900030b
     f80:	0000                	.insn	2, 0x
     f82:	0001                	.insn	2, 0x0001
     f84:	0402                	.insn	2, 0x0402
     f86:	0900030b          	.insn	4, 0x0900030b
     f8a:	0000                	.insn	2, 0x
     f8c:	0001                	.insn	2, 0x0001
     f8e:	0402                	.insn	2, 0x0402
     f90:	0900030b          	.insn	4, 0x0900030b
     f94:	0000                	.insn	2, 0x
     f96:	0001                	.insn	2, 0x0001
     f98:	0402                	.insn	2, 0x0402
     f9a:	0900030b          	.insn	4, 0x0900030b
     f9e:	0004                	.insn	2, 0x0004
     fa0:	0001                	.insn	2, 0x0001
     fa2:	0402                	.insn	2, 0x0402
     fa4:	0900030b          	.insn	4, 0x0900030b
     fa8:	0000                	.insn	2, 0x
     faa:	0001                	.insn	2, 0x0001
     fac:	0402                	.insn	2, 0x0402
     fae:	0900030b          	.insn	4, 0x0900030b
     fb2:	0004                	.insn	2, 0x0004
     fb4:	0001                	.insn	2, 0x0001
     fb6:	0402                	.insn	2, 0x0402
     fb8:	0900030b          	.insn	4, 0x0900030b
     fbc:	0014                	.insn	2, 0x0014
     fbe:	0001                	.insn	2, 0x0001
     fc0:	0402                	.insn	2, 0x0402
     fc2:	0900030b          	.insn	4, 0x0900030b
     fc6:	0000                	.insn	2, 0x
     fc8:	0001                	.insn	2, 0x0001
     fca:	0402                	.insn	2, 0x0402
     fcc:	0900030b          	.insn	4, 0x0900030b
     fd0:	0000                	.insn	2, 0x
     fd2:	0001                	.insn	2, 0x0001
     fd4:	0402                	.insn	2, 0x0402
     fd6:	030c                	.insn	2, 0x030c
     fd8:	0900                	.insn	2, 0x0900
     fda:	0004                	.insn	2, 0x0004
     fdc:	0001                	.insn	2, 0x0001
     fde:	0402                	.insn	2, 0x0402
     fe0:	030e                	.insn	2, 0x030e
     fe2:	0900                	.insn	2, 0x0900
     fe4:	0008                	.insn	2, 0x0008
     fe6:	0001                	.insn	2, 0x0001
     fe8:	0402                	.insn	2, 0x0402
     fea:	030e                	.insn	2, 0x030e
     fec:	0900                	.insn	2, 0x0900
     fee:	0018                	.insn	2, 0x0018
     ff0:	0001                	.insn	2, 0x0001
     ff2:	0402                	.insn	2, 0x0402
     ff4:	030e                	.insn	2, 0x030e
     ff6:	0900                	.insn	2, 0x0900
     ff8:	0018                	.insn	2, 0x0018
     ffa:	0001                	.insn	2, 0x0001
     ffc:	0402                	.insn	2, 0x0402
     ffe:	030e                	.insn	2, 0x030e
    1000:	0900                	.insn	2, 0x0900
    1002:	0000                	.insn	2, 0x
    1004:	0001                	.insn	2, 0x0001
    1006:	0402                	.insn	2, 0x0402
    1008:	030e                	.insn	2, 0x030e
    100a:	0900                	.insn	2, 0x0900
    100c:	0000                	.insn	2, 0x
    100e:	0001                	.insn	2, 0x0001
    1010:	0402                	.insn	2, 0x0402
    1012:	030e                	.insn	2, 0x030e
    1014:	0900                	.insn	2, 0x0900
    1016:	0000                	.insn	2, 0x
    1018:	0001                	.insn	2, 0x0001
    101a:	0402                	.insn	2, 0x0402
    101c:	030e                	.insn	2, 0x030e
    101e:	0900                	.insn	2, 0x0900
    1020:	0000                	.insn	2, 0x
    1022:	0001                	.insn	2, 0x0001
    1024:	0402                	.insn	2, 0x0402
    1026:	030e                	.insn	2, 0x030e
    1028:	0900                	.insn	2, 0x0900
    102a:	0000                	.insn	2, 0x
    102c:	0001                	.insn	2, 0x0001
    102e:	0402                	.insn	2, 0x0402
    1030:	030e                	.insn	2, 0x030e
    1032:	0900                	.insn	2, 0x0900
    1034:	0000                	.insn	2, 0x
    1036:	0001                	.insn	2, 0x0001
    1038:	0402                	.insn	2, 0x0402
    103a:	030e                	.insn	2, 0x030e
    103c:	0900                	.insn	2, 0x0900
    103e:	0000                	.insn	2, 0x
    1040:	0001                	.insn	2, 0x0001
    1042:	0402                	.insn	2, 0x0402
    1044:	030e                	.insn	2, 0x030e
    1046:	0900                	.insn	2, 0x0900
    1048:	0000                	.insn	2, 0x
    104a:	0001                	.insn	2, 0x0001
    104c:	0402                	.insn	2, 0x0402
    104e:	030e                	.insn	2, 0x030e
    1050:	0900                	.insn	2, 0x0900
    1052:	0004                	.insn	2, 0x0004
    1054:	0001                	.insn	2, 0x0001
    1056:	0402                	.insn	2, 0x0402
    1058:	030e                	.insn	2, 0x030e
    105a:	0900                	.insn	2, 0x0900
    105c:	0000                	.insn	2, 0x
    105e:	0001                	.insn	2, 0x0001
    1060:	0402                	.insn	2, 0x0402
    1062:	030e                	.insn	2, 0x030e
    1064:	0900                	.insn	2, 0x0900
    1066:	0000                	.insn	2, 0x
    1068:	0001                	.insn	2, 0x0001
    106a:	0402                	.insn	2, 0x0402
    106c:	030e                	.insn	2, 0x030e
    106e:	0900                	.insn	2, 0x0900
    1070:	0004                	.insn	2, 0x0004
    1072:	0001                	.insn	2, 0x0001
    1074:	0402                	.insn	2, 0x0402
    1076:	030e                	.insn	2, 0x030e
    1078:	0900                	.insn	2, 0x0900
    107a:	000c                	.insn	2, 0x000c
    107c:	0001                	.insn	2, 0x0001
    107e:	0402                	.insn	2, 0x0402
    1080:	030e                	.insn	2, 0x030e
    1082:	0900                	.insn	2, 0x0900
    1084:	0004                	.insn	2, 0x0004
    1086:	0001                	.insn	2, 0x0001
    1088:	0402                	.insn	2, 0x0402
    108a:	0900030f          	.insn	4, 0x0900030f
    108e:	0004                	.insn	2, 0x0004
    1090:	0001                	.insn	2, 0x0001
    1092:	0402                	.insn	2, 0x0402
    1094:	0311                	.insn	2, 0x0311
    1096:	0900                	.insn	2, 0x0900
    1098:	0004                	.insn	2, 0x0004
    109a:	0001                	.insn	2, 0x0001
    109c:	0402                	.insn	2, 0x0402
    109e:	0311                	.insn	2, 0x0311
    10a0:	0900                	.insn	2, 0x0900
    10a2:	0008                	.insn	2, 0x0008
    10a4:	0001                	.insn	2, 0x0001
    10a6:	0402                	.insn	2, 0x0402
    10a8:	0311                	.insn	2, 0x0311
    10aa:	0900                	.insn	2, 0x0900
    10ac:	0018                	.insn	2, 0x0018
    10ae:	0001                	.insn	2, 0x0001
    10b0:	0402                	.insn	2, 0x0402
    10b2:	0311                	.insn	2, 0x0311
    10b4:	0900                	.insn	2, 0x0900
    10b6:	0000                	.insn	2, 0x
    10b8:	0001                	.insn	2, 0x0001
    10ba:	0402                	.insn	2, 0x0402
    10bc:	0311                	.insn	2, 0x0311
    10be:	0900                	.insn	2, 0x0900
    10c0:	0000                	.insn	2, 0x
    10c2:	0001                	.insn	2, 0x0001
    10c4:	0402                	.insn	2, 0x0402
    10c6:	0311                	.insn	2, 0x0311
    10c8:	0900                	.insn	2, 0x0900
    10ca:	0000                	.insn	2, 0x
    10cc:	0001                	.insn	2, 0x0001
    10ce:	0402                	.insn	2, 0x0402
    10d0:	0311                	.insn	2, 0x0311
    10d2:	0900                	.insn	2, 0x0900
    10d4:	0000                	.insn	2, 0x
    10d6:	0001                	.insn	2, 0x0001
    10d8:	0402                	.insn	2, 0x0402
    10da:	0311                	.insn	2, 0x0311
    10dc:	0900                	.insn	2, 0x0900
    10de:	0000                	.insn	2, 0x
    10e0:	0001                	.insn	2, 0x0001
    10e2:	0402                	.insn	2, 0x0402
    10e4:	0311                	.insn	2, 0x0311
    10e6:	0900                	.insn	2, 0x0900
    10e8:	0000                	.insn	2, 0x
    10ea:	0001                	.insn	2, 0x0001
    10ec:	0402                	.insn	2, 0x0402
    10ee:	0311                	.insn	2, 0x0311
    10f0:	0900                	.insn	2, 0x0900
    10f2:	0000                	.insn	2, 0x
    10f4:	0001                	.insn	2, 0x0001
    10f6:	0402                	.insn	2, 0x0402
    10f8:	0311                	.insn	2, 0x0311
    10fa:	0900                	.insn	2, 0x0900
    10fc:	0000                	.insn	2, 0x
    10fe:	0001                	.insn	2, 0x0001
    1100:	0402                	.insn	2, 0x0402
    1102:	0311                	.insn	2, 0x0311
    1104:	0900                	.insn	2, 0x0900
    1106:	0004                	.insn	2, 0x0004
    1108:	0001                	.insn	2, 0x0001
    110a:	0402                	.insn	2, 0x0402
    110c:	0311                	.insn	2, 0x0311
    110e:	0900                	.insn	2, 0x0900
    1110:	0000                	.insn	2, 0x
    1112:	0001                	.insn	2, 0x0001
    1114:	0402                	.insn	2, 0x0402
    1116:	0311                	.insn	2, 0x0311
    1118:	0900                	.insn	2, 0x0900
    111a:	0004                	.insn	2, 0x0004
    111c:	0001                	.insn	2, 0x0001
    111e:	0402                	.insn	2, 0x0402
    1120:	0311                	.insn	2, 0x0311
    1122:	0900                	.insn	2, 0x0900
    1124:	0008                	.insn	2, 0x0008
    1126:	0001                	.insn	2, 0x0001
    1128:	0402                	.insn	2, 0x0402
    112a:	0311                	.insn	2, 0x0311
    112c:	0900                	.insn	2, 0x0900
    112e:	0008                	.insn	2, 0x0008
    1130:	0001                	.insn	2, 0x0001
    1132:	0402                	.insn	2, 0x0402
    1134:	0311                	.insn	2, 0x0311
    1136:	0900                	.insn	2, 0x0900
    1138:	0004                	.insn	2, 0x0004
    113a:	0001                	.insn	2, 0x0001
    113c:	0402                	.insn	2, 0x0402
    113e:	0312                	.insn	2, 0x0312
    1140:	0900                	.insn	2, 0x0900
    1142:	0004                	.insn	2, 0x0004
    1144:	0001                	.insn	2, 0x0001
    1146:	0402                	.insn	2, 0x0402
    1148:	0314                	.insn	2, 0x0314
    114a:	0900                	.insn	2, 0x0900
    114c:	0004                	.insn	2, 0x0004
    114e:	0001                	.insn	2, 0x0001
    1150:	0402                	.insn	2, 0x0402
    1152:	0314                	.insn	2, 0x0314
    1154:	0900                	.insn	2, 0x0900
    1156:	0000                	.insn	2, 0x
    1158:	0001                	.insn	2, 0x0001
    115a:	0402                	.insn	2, 0x0402
    115c:	0314                	.insn	2, 0x0314
    115e:	0900                	.insn	2, 0x0900
    1160:	0000                	.insn	2, 0x
    1162:	0001                	.insn	2, 0x0001
    1164:	0402                	.insn	2, 0x0402
    1166:	0314                	.insn	2, 0x0314
    1168:	0900                	.insn	2, 0x0900
    116a:	0000                	.insn	2, 0x
    116c:	0001                	.insn	2, 0x0001
    116e:	0402                	.insn	2, 0x0402
    1170:	0314                	.insn	2, 0x0314
    1172:	0900                	.insn	2, 0x0900
    1174:	0000                	.insn	2, 0x
    1176:	0001                	.insn	2, 0x0001
    1178:	0402                	.insn	2, 0x0402
    117a:	0314                	.insn	2, 0x0314
    117c:	0900                	.insn	2, 0x0900
    117e:	0000                	.insn	2, 0x
    1180:	0001                	.insn	2, 0x0001
    1182:	0402                	.insn	2, 0x0402
    1184:	0314                	.insn	2, 0x0314
    1186:	0900                	.insn	2, 0x0900
    1188:	0010                	.insn	2, 0x0010
    118a:	0001                	.insn	2, 0x0001
    118c:	0402                	.insn	2, 0x0402
    118e:	0314                	.insn	2, 0x0314
    1190:	0900                	.insn	2, 0x0900
    1192:	0000                	.insn	2, 0x
    1194:	0001                	.insn	2, 0x0001
    1196:	0402                	.insn	2, 0x0402
    1198:	0314                	.insn	2, 0x0314
    119a:	0900                	.insn	2, 0x0900
    119c:	0008                	.insn	2, 0x0008
    119e:	0001                	.insn	2, 0x0001
    11a0:	0402                	.insn	2, 0x0402
    11a2:	0314                	.insn	2, 0x0314
    11a4:	0900                	.insn	2, 0x0900
    11a6:	0000                	.insn	2, 0x
    11a8:	0001                	.insn	2, 0x0001
    11aa:	0402                	.insn	2, 0x0402
    11ac:	0314                	.insn	2, 0x0314
    11ae:	0900                	.insn	2, 0x0900
    11b0:	0008                	.insn	2, 0x0008
    11b2:	0001                	.insn	2, 0x0001
    11b4:	0402                	.insn	2, 0x0402
    11b6:	0314                	.insn	2, 0x0314
    11b8:	0900                	.insn	2, 0x0900
    11ba:	0024                	.insn	2, 0x0024
    11bc:	0001                	.insn	2, 0x0001
    11be:	0402                	.insn	2, 0x0402
    11c0:	0314                	.insn	2, 0x0314
    11c2:	0900                	.insn	2, 0x0900
    11c4:	0000                	.insn	2, 0x
    11c6:	0001                	.insn	2, 0x0001
    11c8:	0402                	.insn	2, 0x0402
    11ca:	0314                	.insn	2, 0x0314
    11cc:	0900                	.insn	2, 0x0900
    11ce:	0000                	.insn	2, 0x
    11d0:	0001                	.insn	2, 0x0001
    11d2:	0402                	.insn	2, 0x0402
    11d4:	0314                	.insn	2, 0x0314
    11d6:	0900                	.insn	2, 0x0900
    11d8:	0000                	.insn	2, 0x
    11da:	0001                	.insn	2, 0x0001
    11dc:	0402                	.insn	2, 0x0402
    11de:	0314                	.insn	2, 0x0314
    11e0:	0900                	.insn	2, 0x0900
    11e2:	0000                	.insn	2, 0x
    11e4:	0001                	.insn	2, 0x0001
    11e6:	0402                	.insn	2, 0x0402
    11e8:	0314                	.insn	2, 0x0314
    11ea:	0900                	.insn	2, 0x0900
    11ec:	0000                	.insn	2, 0x
    11ee:	0001                	.insn	2, 0x0001
    11f0:	0402                	.insn	2, 0x0402
    11f2:	0314                	.insn	2, 0x0314
    11f4:	0900                	.insn	2, 0x0900
    11f6:	0000                	.insn	2, 0x
    11f8:	0001                	.insn	2, 0x0001
    11fa:	0402                	.insn	2, 0x0402
    11fc:	0314                	.insn	2, 0x0314
    11fe:	0900                	.insn	2, 0x0900
    1200:	0000                	.insn	2, 0x
    1202:	0001                	.insn	2, 0x0001
    1204:	0402                	.insn	2, 0x0402
    1206:	0314                	.insn	2, 0x0314
    1208:	0900                	.insn	2, 0x0900
    120a:	0000                	.insn	2, 0x
    120c:	0001                	.insn	2, 0x0001
    120e:	0402                	.insn	2, 0x0402
    1210:	0314                	.insn	2, 0x0314
    1212:	0900                	.insn	2, 0x0900
    1214:	0000                	.insn	2, 0x
    1216:	0001                	.insn	2, 0x0001
    1218:	0402                	.insn	2, 0x0402
    121a:	0314                	.insn	2, 0x0314
    121c:	0900                	.insn	2, 0x0900
    121e:	0000                	.insn	2, 0x
    1220:	0001                	.insn	2, 0x0001
    1222:	0402                	.insn	2, 0x0402
    1224:	0314                	.insn	2, 0x0314
    1226:	0900                	.insn	2, 0x0900
    1228:	0000                	.insn	2, 0x
    122a:	0001                	.insn	2, 0x0001
    122c:	0402                	.insn	2, 0x0402
    122e:	0314                	.insn	2, 0x0314
    1230:	0900                	.insn	2, 0x0900
    1232:	0000                	.insn	2, 0x
    1234:	0001                	.insn	2, 0x0001
    1236:	0402                	.insn	2, 0x0402
    1238:	0314                	.insn	2, 0x0314
    123a:	0900                	.insn	2, 0x0900
    123c:	0000                	.insn	2, 0x
    123e:	0001                	.insn	2, 0x0001
    1240:	0402                	.insn	2, 0x0402
    1242:	0314                	.insn	2, 0x0314
    1244:	0900                	.insn	2, 0x0900
    1246:	0000                	.insn	2, 0x
    1248:	0001                	.insn	2, 0x0001
    124a:	0402                	.insn	2, 0x0402
    124c:	0314                	.insn	2, 0x0314
    124e:	0900                	.insn	2, 0x0900
    1250:	0000                	.insn	2, 0x
    1252:	0001                	.insn	2, 0x0001
    1254:	0402                	.insn	2, 0x0402
    1256:	0314                	.insn	2, 0x0314
    1258:	0900                	.insn	2, 0x0900
    125a:	0000                	.insn	2, 0x
    125c:	0001                	.insn	2, 0x0001
    125e:	0402                	.insn	2, 0x0402
    1260:	0314                	.insn	2, 0x0314
    1262:	0900                	.insn	2, 0x0900
    1264:	0000                	.insn	2, 0x
    1266:	0001                	.insn	2, 0x0001
    1268:	0402                	.insn	2, 0x0402
    126a:	0314                	.insn	2, 0x0314
    126c:	0900                	.insn	2, 0x0900
    126e:	0000                	.insn	2, 0x
    1270:	0001                	.insn	2, 0x0001
    1272:	0402                	.insn	2, 0x0402
    1274:	0314                	.insn	2, 0x0314
    1276:	0900                	.insn	2, 0x0900
    1278:	0000                	.insn	2, 0x
    127a:	0001                	.insn	2, 0x0001
    127c:	0402                	.insn	2, 0x0402
    127e:	0314                	.insn	2, 0x0314
    1280:	0900                	.insn	2, 0x0900
    1282:	0000                	.insn	2, 0x
    1284:	0001                	.insn	2, 0x0001
    1286:	0402                	.insn	2, 0x0402
    1288:	0314                	.insn	2, 0x0314
    128a:	0900                	.insn	2, 0x0900
    128c:	0000                	.insn	2, 0x
    128e:	0001                	.insn	2, 0x0001
    1290:	0402                	.insn	2, 0x0402
    1292:	0314                	.insn	2, 0x0314
    1294:	0900                	.insn	2, 0x0900
    1296:	0000                	.insn	2, 0x
    1298:	0001                	.insn	2, 0x0001
    129a:	0402                	.insn	2, 0x0402
    129c:	0315                	.insn	2, 0x0315
    129e:	0900                	.insn	2, 0x0900
    12a0:	0000                	.insn	2, 0x
    12a2:	0001                	.insn	2, 0x0001
    12a4:	0402                	.insn	2, 0x0402
    12a6:	09000317          	auipc	t1,0x9000
    12aa:	0000                	.insn	2, 0x
    12ac:	0001                	.insn	2, 0x0001
    12ae:	0402                	.insn	2, 0x0402
    12b0:	09000317          	auipc	t1,0x9000
    12b4:	0000                	.insn	2, 0x
    12b6:	0001                	.insn	2, 0x0001
    12b8:	0402                	.insn	2, 0x0402
    12ba:	0315                	.insn	2, 0x0315
    12bc:	0900                	.insn	2, 0x0900
    12be:	0000                	.insn	2, 0x
    12c0:	0001                	.insn	2, 0x0001
    12c2:	0402                	.insn	2, 0x0402
    12c4:	0318                	.insn	2, 0x0318
    12c6:	0900                	.insn	2, 0x0900
    12c8:	0000                	.insn	2, 0x
    12ca:	0001                	.insn	2, 0x0001
    12cc:	0402                	.insn	2, 0x0402
    12ce:	031a                	.insn	2, 0x031a
    12d0:	0900                	.insn	2, 0x0900
    12d2:	0000                	.insn	2, 0x
    12d4:	0001                	.insn	2, 0x0001
    12d6:	0402                	.insn	2, 0x0402
    12d8:	031a                	.insn	2, 0x031a
    12da:	0900                	.insn	2, 0x0900
    12dc:	0000                	.insn	2, 0x
    12de:	0001                	.insn	2, 0x0001
    12e0:	0402                	.insn	2, 0x0402
    12e2:	031e                	.insn	2, 0x031e
    12e4:	0900                	.insn	2, 0x0900
    12e6:	0000                	.insn	2, 0x
    12e8:	0001                	.insn	2, 0x0001
    12ea:	0402                	.insn	2, 0x0402
    12ec:	0320                	.insn	2, 0x0320
    12ee:	0900                	.insn	2, 0x0900
    12f0:	0000                	.insn	2, 0x
    12f2:	0001                	.insn	2, 0x0001
    12f4:	0402                	.insn	2, 0x0402
    12f6:	0320                	.insn	2, 0x0320
    12f8:	0900                	.insn	2, 0x0900
    12fa:	0000                	.insn	2, 0x
    12fc:	0001                	.insn	2, 0x0001
    12fe:	0402                	.insn	2, 0x0402
    1300:	031e                	.insn	2, 0x031e
    1302:	0900                	.insn	2, 0x0900
    1304:	0000                	.insn	2, 0x
    1306:	0001                	.insn	2, 0x0001
    1308:	0402                	.insn	2, 0x0402
    130a:	0320                	.insn	2, 0x0320
    130c:	0900                	.insn	2, 0x0900
    130e:	0000                	.insn	2, 0x
    1310:	0001                	.insn	2, 0x0001
    1312:	0402                	.insn	2, 0x0402
    1314:	0614                	.insn	2, 0x0614
    1316:	00090003          	lb	zero,0(s2)
    131a:	0100                	.insn	2, 0x0100
    131c:	0200                	.insn	2, 0x0200
    131e:	1a04                	.insn	2, 0x1a04
    1320:	10090003          	lb	zero,256(s2)
    1324:	0100                	.insn	2, 0x0100
    1326:	0200                	.insn	2, 0x0200
    1328:	1404                	.insn	2, 0x1404
    132a:	04090003          	lb	zero,64(s2)
    132e:	0100                	.insn	2, 0x0100
    1330:	0200                	.insn	2, 0x0200
    1332:	1a04                	.insn	2, 0x1a04
    1334:	04090003          	lb	zero,64(s2)
    1338:	0100                	.insn	2, 0x0100
    133a:	0200                	.insn	2, 0x0200
    133c:	2004                	.insn	2, 0x2004
    133e:	04090003          	lb	zero,64(s2)
    1342:	0100                	.insn	2, 0x0100
    1344:	0200                	.insn	2, 0x0200
    1346:	2504                	.insn	2, 0x2504
    1348:	04090003          	lb	zero,64(s2)
    134c:	0100                	.insn	2, 0x0100
    134e:	0200                	.insn	2, 0x0200
    1350:	2004                	.insn	2, 0x2004
    1352:	04090003          	lb	zero,64(s2)
    1356:	0100                	.insn	2, 0x0100
    1358:	0200                	.insn	2, 0x0200
    135a:	2504                	.insn	2, 0x2504
    135c:	08090003          	lb	zero,128(s2)
    1360:	0100                	.insn	2, 0x0100
    1362:	0200                	.insn	2, 0x0200
    1364:	2004                	.insn	2, 0x2004
    1366:	04090003          	lb	zero,64(s2)
    136a:	0100                	.insn	2, 0x0100
    136c:	0200                	.insn	2, 0x0200
    136e:	2504                	.insn	2, 0x2504
    1370:	04090003          	lb	zero,64(s2)
    1374:	0100                	.insn	2, 0x0100
    1376:	0200                	.insn	2, 0x0200
    1378:	2004                	.insn	2, 0x2004
    137a:	04090003          	lb	zero,64(s2)
    137e:	0100                	.insn	2, 0x0100
    1380:	0200                	.insn	2, 0x0200
    1382:	2004                	.insn	2, 0x2004
    1384:	0306                	.insn	2, 0x0306
    1386:	0900                	.insn	2, 0x0900
    1388:	0004                	.insn	2, 0x0004
    138a:	0001                	.insn	2, 0x0001
    138c:	0402                	.insn	2, 0x0402
    138e:	031e                	.insn	2, 0x031e
    1390:	0900                	.insn	2, 0x0900
    1392:	0000                	.insn	2, 0x
    1394:	0001                	.insn	2, 0x0001
    1396:	0402                	.insn	2, 0x0402
    1398:	0321                	.insn	2, 0x0321
    139a:	0900                	.insn	2, 0x0900
    139c:	0000                	.insn	2, 0x
    139e:	0001                	.insn	2, 0x0001
    13a0:	0402                	.insn	2, 0x0402
    13a2:	09000323          	sb	a6,134(zero) # 86 <_tbss_end+0x86>
    13a6:	0000                	.insn	2, 0x
    13a8:	0001                	.insn	2, 0x0001
    13aa:	0402                	.insn	2, 0x0402
    13ac:	0325                	.insn	2, 0x0325
    13ae:	0900                	.insn	2, 0x0900
    13b0:	0000                	.insn	2, 0x
    13b2:	0001                	.insn	2, 0x0001
    13b4:	0402                	.insn	2, 0x0402
    13b6:	0325                	.insn	2, 0x0325
    13b8:	0900                	.insn	2, 0x0900
    13ba:	0000                	.insn	2, 0x
    13bc:	0001                	.insn	2, 0x0001
    13be:	0402                	.insn	2, 0x0402
    13c0:	0325                	.insn	2, 0x0325
    13c2:	0900                	.insn	2, 0x0900
    13c4:	0000                	.insn	2, 0x
    13c6:	0001                	.insn	2, 0x0001
    13c8:	0402                	.insn	2, 0x0402
    13ca:	0325                	.insn	2, 0x0325
    13cc:	0900                	.insn	2, 0x0900
    13ce:	0004                	.insn	2, 0x0004
    13d0:	0001                	.insn	2, 0x0001
    13d2:	0402                	.insn	2, 0x0402
    13d4:	0325                	.insn	2, 0x0325
    13d6:	0900                	.insn	2, 0x0900
    13d8:	0000                	.insn	2, 0x
    13da:	0001                	.insn	2, 0x0001
    13dc:	0402                	.insn	2, 0x0402
    13de:	0325                	.insn	2, 0x0325
    13e0:	0900                	.insn	2, 0x0900
    13e2:	0000                	.insn	2, 0x
    13e4:	0001                	.insn	2, 0x0001
    13e6:	0402                	.insn	2, 0x0402
    13e8:	0325                	.insn	2, 0x0325
    13ea:	0900                	.insn	2, 0x0900
    13ec:	0000                	.insn	2, 0x
    13ee:	0001                	.insn	2, 0x0001
    13f0:	0402                	.insn	2, 0x0402
    13f2:	0325                	.insn	2, 0x0325
    13f4:	0900                	.insn	2, 0x0900
    13f6:	0000                	.insn	2, 0x
    13f8:	0001                	.insn	2, 0x0001
    13fa:	0402                	.insn	2, 0x0402
    13fc:	0326                	.insn	2, 0x0326
    13fe:	0900                	.insn	2, 0x0900
    1400:	0004                	.insn	2, 0x0004
    1402:	0001                	.insn	2, 0x0001
    1404:	0402                	.insn	2, 0x0402
    1406:	0326                	.insn	2, 0x0326
    1408:	0900                	.insn	2, 0x0900
    140a:	0000                	.insn	2, 0x
    140c:	0001                	.insn	2, 0x0001
    140e:	0402                	.insn	2, 0x0402
    1410:	0326                	.insn	2, 0x0326
    1412:	0900                	.insn	2, 0x0900
    1414:	0014                	.insn	2, 0x0014
    1416:	0601                	.insn	2, 0x0601
    1418:	04090003          	lb	zero,64(s2)
    141c:	0100                	.insn	2, 0x0100
    141e:	0200                	.insn	2, 0x0200
    1420:	2f04                	.insn	2, 0x2f04
    1422:	0306                	.insn	2, 0x0306
    1424:	0900                	.insn	2, 0x0900
    1426:	0004                	.insn	2, 0x0004
    1428:	0301                	.insn	2, 0x0301
    142a:	0901                	.insn	2, 0x0901
    142c:	0000                	.insn	2, 0x
    142e:	0301                	.insn	2, 0x0301
    1430:	0900                	.insn	2, 0x0900
    1432:	0000                	.insn	2, 0x
    1434:	0301                	.insn	2, 0x0301
    1436:	0900                	.insn	2, 0x0900
    1438:	0000                	.insn	2, 0x
    143a:	0001                	.insn	2, 0x0001
    143c:	0402                	.insn	2, 0x0402
    143e:	7f03062b          	.insn	4, 0x7f03062b
    1442:	0009                	.insn	2, 0x0009
    1444:	0100                	.insn	2, 0x0100
    1446:	08097e03          	.insn	4, 0x08097e03
    144a:	0100                	.insn	2, 0x0100
    144c:	0200                	.insn	2, 0x0200
    144e:	0904                	.insn	2, 0x0904
    1450:	08090003          	lb	zero,128(s2)
    1454:	0100                	.insn	2, 0x0100
    1456:	08090003          	lb	zero,128(s2)
    145a:	0100                	.insn	2, 0x0100
    145c:	0200                	.insn	2, 0x0200
    145e:	2b04                	.insn	2, 0x2b04
    1460:	08090003          	lb	zero,128(s2)
    1464:	0100                	.insn	2, 0x0100
    1466:	0200                	.insn	2, 0x0200
    1468:	0204                	.insn	2, 0x0204
    146a:	0306                	.insn	2, 0x0306
    146c:	0901                	.insn	2, 0x0901
    146e:	0008                	.insn	2, 0x0008
    1470:	0001                	.insn	2, 0x0001
    1472:	0402                	.insn	2, 0x0402
    1474:	030a                	.insn	2, 0x030a
    1476:	0900                	.insn	2, 0x0900
    1478:	0008                	.insn	2, 0x0008
    147a:	0001                	.insn	2, 0x0001
    147c:	0402                	.insn	2, 0x0402
    147e:	030d                	.insn	2, 0x030d
    1480:	0900                	.insn	2, 0x0900
    1482:	0000                	.insn	2, 0x
    1484:	0001                	.insn	2, 0x0001
    1486:	0402                	.insn	2, 0x0402
    1488:	030d                	.insn	2, 0x030d
    148a:	0900                	.insn	2, 0x0900
    148c:	0000                	.insn	2, 0x
    148e:	0001                	.insn	2, 0x0001
    1490:	0402                	.insn	2, 0x0402
    1492:	030d                	.insn	2, 0x030d
    1494:	0900                	.insn	2, 0x0900
    1496:	0000                	.insn	2, 0x
    1498:	0001                	.insn	2, 0x0001
    149a:	0402                	.insn	2, 0x0402
    149c:	0900030f          	.insn	4, 0x0900030f
    14a0:	0004                	.insn	2, 0x0004
    14a2:	0001                	.insn	2, 0x0001
    14a4:	0402                	.insn	2, 0x0402
    14a6:	0900030f          	.insn	4, 0x0900030f
    14aa:	0000                	.insn	2, 0x
    14ac:	0001                	.insn	2, 0x0001
    14ae:	0402                	.insn	2, 0x0402
    14b0:	0900030f          	.insn	4, 0x0900030f
    14b4:	0000                	.insn	2, 0x
    14b6:	0001                	.insn	2, 0x0001
    14b8:	0402                	.insn	2, 0x0402
    14ba:	0311                	.insn	2, 0x0311
    14bc:	0900                	.insn	2, 0x0900
    14be:	0000                	.insn	2, 0x
    14c0:	0001                	.insn	2, 0x0001
    14c2:	0402                	.insn	2, 0x0402
    14c4:	09000317          	auipc	t1,0x9000
    14c8:	0004                	.insn	2, 0x0004
    14ca:	0001                	.insn	2, 0x0001
    14cc:	0402                	.insn	2, 0x0402
    14ce:	031f 0900 0000      	.insn	6, 0x0900031f
    14d4:	0001                	.insn	2, 0x0001
    14d6:	0402                	.insn	2, 0x0402
    14d8:	031f 0900 0000      	.insn	6, 0x0900031f
    14de:	0001                	.insn	2, 0x0001
    14e0:	0402                	.insn	2, 0x0402
    14e2:	031f 0900 0004      	.insn	6, 0x00040900031f
    14e8:	0001                	.insn	2, 0x0001
    14ea:	0402                	.insn	2, 0x0402
    14ec:	0320                	.insn	2, 0x0320
    14ee:	0900                	.insn	2, 0x0900
    14f0:	0000                	.insn	2, 0x
    14f2:	0001                	.insn	2, 0x0001
    14f4:	0402                	.insn	2, 0x0402
    14f6:	0625                	.insn	2, 0x0625
    14f8:	00090003          	lb	zero,0(s2)
    14fc:	0100                	.insn	2, 0x0100
    14fe:	0200                	.insn	2, 0x0200
    1500:	2004                	.insn	2, 0x2004
    1502:	04090003          	lb	zero,64(s2)
    1506:	0100                	.insn	2, 0x0100
    1508:	0200                	.insn	2, 0x0200
    150a:	2504                	.insn	2, 0x2504
    150c:	0306                	.insn	2, 0x0306
    150e:	0900                	.insn	2, 0x0900
    1510:	0004                	.insn	2, 0x0004
    1512:	0001                	.insn	2, 0x0001
    1514:	0402                	.insn	2, 0x0402
    1516:	0325                	.insn	2, 0x0325
    1518:	0900                	.insn	2, 0x0900
    151a:	0010                	.insn	2, 0x0010
    151c:	0001                	.insn	2, 0x0001
    151e:	0402                	.insn	2, 0x0402
    1520:	09000327          	.insn	4, 0x09000327
    1524:	0004                	.insn	2, 0x0004
    1526:	0001                	.insn	2, 0x0001
    1528:	0402                	.insn	2, 0x0402
    152a:	0329                	.insn	2, 0x0329
    152c:	0900                	.insn	2, 0x0900
    152e:	0000                	.insn	2, 0x
    1530:	0001                	.insn	2, 0x0001
    1532:	0402                	.insn	2, 0x0402
    1534:	0329                	.insn	2, 0x0329
    1536:	0900                	.insn	2, 0x0900
    1538:	000c                	.insn	2, 0x000c
    153a:	0001                	.insn	2, 0x0001
    153c:	0402                	.insn	2, 0x0402
    153e:	0329                	.insn	2, 0x0329
    1540:	0900                	.insn	2, 0x0900
    1542:	0000                	.insn	2, 0x
    1544:	0001                	.insn	2, 0x0001
    1546:	0402                	.insn	2, 0x0402
    1548:	0310                	.insn	2, 0x0310
    154a:	0900                	.insn	2, 0x0900
    154c:	0008                	.insn	2, 0x0008
    154e:	0001                	.insn	2, 0x0001
    1550:	0402                	.insn	2, 0x0402
    1552:	0310                	.insn	2, 0x0310
    1554:	0900                	.insn	2, 0x0900
    1556:	0000                	.insn	2, 0x
    1558:	0001                	.insn	2, 0x0001
    155a:	0402                	.insn	2, 0x0402
    155c:	0310                	.insn	2, 0x0310
    155e:	0900                	.insn	2, 0x0900
    1560:	0000                	.insn	2, 0x
    1562:	0001                	.insn	2, 0x0001
    1564:	0402                	.insn	2, 0x0402
    1566:	0318                	.insn	2, 0x0318
    1568:	0900                	.insn	2, 0x0900
    156a:	0000                	.insn	2, 0x
    156c:	0001                	.insn	2, 0x0001
    156e:	0402                	.insn	2, 0x0402
    1570:	031e                	.insn	2, 0x031e
    1572:	0900                	.insn	2, 0x0900
    1574:	0004                	.insn	2, 0x0004
    1576:	0001                	.insn	2, 0x0001
    1578:	0402                	.insn	2, 0x0402
    157a:	031e                	.insn	2, 0x031e
    157c:	0900                	.insn	2, 0x0900
    157e:	0000                	.insn	2, 0x
    1580:	0001                	.insn	2, 0x0001
    1582:	0402                	.insn	2, 0x0402
    1584:	061f 0003 0009      	.insn	6, 0x00090003061f
    158a:	0100                	.insn	2, 0x0100
    158c:	0200                	.insn	2, 0x0200
    158e:	1e04                	.insn	2, 0x1e04
    1590:	08090003          	lb	zero,128(s2)
    1594:	0100                	.insn	2, 0x0100
    1596:	0200                	.insn	2, 0x0200
    1598:	1f04                	.insn	2, 0x1f04
    159a:	0306                	.insn	2, 0x0306
    159c:	0900                	.insn	2, 0x0900
    159e:	0004                	.insn	2, 0x0004
    15a0:	0001                	.insn	2, 0x0001
    15a2:	0402                	.insn	2, 0x0402
    15a4:	031f 0900 0000      	.insn	6, 0x0900031f
    15aa:	0001                	.insn	2, 0x0001
    15ac:	0402                	.insn	2, 0x0402
    15ae:	031f 0900 0000      	.insn	6, 0x0900031f
    15b4:	0001                	.insn	2, 0x0001
    15b6:	0402                	.insn	2, 0x0402
    15b8:	0321                	.insn	2, 0x0321
    15ba:	0900                	.insn	2, 0x0900
    15bc:	0004                	.insn	2, 0x0004
    15be:	0001                	.insn	2, 0x0001
    15c0:	0402                	.insn	2, 0x0402
    15c2:	0321                	.insn	2, 0x0321
    15c4:	0900                	.insn	2, 0x0900
    15c6:	0008                	.insn	2, 0x0008
    15c8:	0001                	.insn	2, 0x0001
    15ca:	0402                	.insn	2, 0x0402
    15cc:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    15d0:	0004                	.insn	2, 0x0004
    15d2:	0001                	.insn	2, 0x0001
    15d4:	0402                	.insn	2, 0x0402
    15d6:	032c                	.insn	2, 0x032c
    15d8:	0900                	.insn	2, 0x0900
    15da:	0008                	.insn	2, 0x0008
    15dc:	0001                	.insn	2, 0x0001
    15de:	0402                	.insn	2, 0x0402
    15e0:	032c                	.insn	2, 0x032c
    15e2:	0900                	.insn	2, 0x0900
    15e4:	0000                	.insn	2, 0x
    15e6:	0601                	.insn	2, 0x0601
    15e8:	04090003          	lb	zero,64(s2)
    15ec:	0100                	.insn	2, 0x0100
    15ee:	0200                	.insn	2, 0x0200
    15f0:	2c04                	.insn	2, 0x2c04
    15f2:	04090003          	lb	zero,64(s2)
    15f6:	0100                	.insn	2, 0x0100
    15f8:	0c090003          	lb	zero,192(s2)
    15fc:	0100                	.insn	2, 0x0100
    15fe:	0200                	.insn	2, 0x0200
    1600:	0904                	.insn	2, 0x0904
    1602:	0c090003          	lb	zero,192(s2)
    1606:	0100                	.insn	2, 0x0100
    1608:	08090003          	lb	zero,128(s2)
    160c:	0100                	.insn	2, 0x0100
    160e:	0200                	.insn	2, 0x0200
    1610:	2b04                	.insn	2, 0x2b04
    1612:	0c090003          	lb	zero,192(s2)
    1616:	0100                	.insn	2, 0x0100
    1618:	0200                	.insn	2, 0x0200
    161a:	2c04                	.insn	2, 0x2c04
    161c:	08090003          	lb	zero,128(s2)
    1620:	0100                	.insn	2, 0x0100
    1622:	0200                	.insn	2, 0x0200
    1624:	2e04                	.insn	2, 0x2e04
    1626:	04090003          	lb	zero,64(s2)
    162a:	0100                	.insn	2, 0x0100
    162c:	10090103          	lb	sp,256(s2)
    1630:	0100                	.insn	2, 0x0100
    1632:	18097f03          	.insn	4, 0x18097f03
    1636:	0100                	.insn	2, 0x0100
    1638:	0200                	.insn	2, 0x0200
    163a:	0404                	.insn	2, 0x0404
    163c:	0306                	.insn	2, 0x0306
    163e:	0901                	.insn	2, 0x0901
    1640:	0004                	.insn	2, 0x0004
    1642:	0001                	.insn	2, 0x0001
    1644:	0402                	.insn	2, 0x0402
    1646:	0900032f          	.insn	4, 0x0900032f
    164a:	0000                	.insn	2, 0x
    164c:	0301                	.insn	2, 0x0301
    164e:	0901                	.insn	2, 0x0901
    1650:	0000                	.insn	2, 0x
    1652:	0301                	.insn	2, 0x0301
    1654:	0900                	.insn	2, 0x0900
    1656:	0000                	.insn	2, 0x
    1658:	0301                	.insn	2, 0x0301
    165a:	0900                	.insn	2, 0x0900
    165c:	0000                	.insn	2, 0x
    165e:	0001                	.insn	2, 0x0001
    1660:	0402                	.insn	2, 0x0402
    1662:	0302                	.insn	2, 0x0302
    1664:	0900                	.insn	2, 0x0900
    1666:	0018                	.insn	2, 0x0018
    1668:	0001                	.insn	2, 0x0001
    166a:	0402                	.insn	2, 0x0402
    166c:	0302                	.insn	2, 0x0302
    166e:	0900                	.insn	2, 0x0900
    1670:	0004                	.insn	2, 0x0004
    1672:	0001                	.insn	2, 0x0001
    1674:	0402                	.insn	2, 0x0402
    1676:	0306                	.insn	2, 0x0306
    1678:	0900                	.insn	2, 0x0900
    167a:	0004                	.insn	2, 0x0004
    167c:	0001                	.insn	2, 0x0001
    167e:	0402                	.insn	2, 0x0402
    1680:	0306                	.insn	2, 0x0306
    1682:	0900                	.insn	2, 0x0900
    1684:	0000                	.insn	2, 0x
    1686:	0001                	.insn	2, 0x0001
    1688:	0402                	.insn	2, 0x0402
    168a:	0308                	.insn	2, 0x0308
    168c:	0900                	.insn	2, 0x0900
    168e:	0008                	.insn	2, 0x0008
    1690:	0001                	.insn	2, 0x0001
    1692:	0402                	.insn	2, 0x0402
    1694:	0308                	.insn	2, 0x0308
    1696:	0900                	.insn	2, 0x0900
    1698:	0008                	.insn	2, 0x0008
    169a:	0301                	.insn	2, 0x0301
    169c:	0900                	.insn	2, 0x0900
    169e:	0010                	.insn	2, 0x0010
    16a0:	0301                	.insn	2, 0x0301
    16a2:	0900                	.insn	2, 0x0900
    16a4:	0000                	.insn	2, 0x
    16a6:	0001                	.insn	2, 0x0001
    16a8:	0402                	.insn	2, 0x0402
    16aa:	030a                	.insn	2, 0x030a
    16ac:	0900                	.insn	2, 0x0900
    16ae:	000c                	.insn	2, 0x000c
    16b0:	0001                	.insn	2, 0x0001
    16b2:	0402                	.insn	2, 0x0402
    16b4:	030a                	.insn	2, 0x030a
    16b6:	0900                	.insn	2, 0x0900
    16b8:	0000                	.insn	2, 0x
    16ba:	0001                	.insn	2, 0x0001
    16bc:	0402                	.insn	2, 0x0402
    16be:	030a                	.insn	2, 0x030a
    16c0:	0900                	.insn	2, 0x0900
    16c2:	0000                	.insn	2, 0x
    16c4:	0001                	.insn	2, 0x0001
    16c6:	0402                	.insn	2, 0x0402
    16c8:	0615                	.insn	2, 0x0615
    16ca:	08090003          	lb	zero,128(s2)
    16ce:	0100                	.insn	2, 0x0100
    16d0:	0200                	.insn	2, 0x0200
    16d2:	1504                	.insn	2, 0x1504
    16d4:	0306                	.insn	2, 0x0306
    16d6:	0900                	.insn	2, 0x0900
    16d8:	0008                	.insn	2, 0x0008
    16da:	0001                	.insn	2, 0x0001
    16dc:	0402                	.insn	2, 0x0402
    16de:	0315                	.insn	2, 0x0315
    16e0:	0900                	.insn	2, 0x0900
    16e2:	0000                	.insn	2, 0x
    16e4:	0601                	.insn	2, 0x0601
    16e6:	04097f03          	.insn	4, 0x04097f03
    16ea:	0100                	.insn	2, 0x0100
    16ec:	0306                	.insn	2, 0x0306
    16ee:	0901                	.insn	2, 0x0901
    16f0:	0020                	.insn	2, 0x0020
    16f2:	0301                	.insn	2, 0x0301
    16f4:	0900                	.insn	2, 0x0900
    16f6:	0000                	.insn	2, 0x
    16f8:	0001                	.insn	2, 0x0001
    16fa:	0402                	.insn	2, 0x0402
    16fc:	0315                	.insn	2, 0x0315
    16fe:	0900                	.insn	2, 0x0900
    1700:	0004                	.insn	2, 0x0004
    1702:	0001                	.insn	2, 0x0001
    1704:	0402                	.insn	2, 0x0402
    1706:	0315                	.insn	2, 0x0315
    1708:	0900                	.insn	2, 0x0900
    170a:	0000                	.insn	2, 0x
    170c:	0001                	.insn	2, 0x0001
    170e:	0402                	.insn	2, 0x0402
    1710:	0315                	.insn	2, 0x0315
    1712:	0900                	.insn	2, 0x0900
    1714:	0000                	.insn	2, 0x
    1716:	0301                	.insn	2, 0x0301
    1718:	0900                	.insn	2, 0x0900
    171a:	0008                	.insn	2, 0x0008
    171c:	0301                	.insn	2, 0x0301
    171e:	0900                	.insn	2, 0x0900
    1720:	0000                	.insn	2, 0x
    1722:	0001                	.insn	2, 0x0001
    1724:	0402                	.insn	2, 0x0402
    1726:	0309                	.insn	2, 0x0309
    1728:	0900                	.insn	2, 0x0900
    172a:	0004                	.insn	2, 0x0004
    172c:	0001                	.insn	2, 0x0001
    172e:	0402                	.insn	2, 0x0402
    1730:	0309                	.insn	2, 0x0309
    1732:	0900                	.insn	2, 0x0900
    1734:	0000                	.insn	2, 0x
    1736:	0001                	.insn	2, 0x0001
    1738:	0402                	.insn	2, 0x0402
    173a:	0318                	.insn	2, 0x0318
    173c:	0900                	.insn	2, 0x0900
    173e:	0008                	.insn	2, 0x0008
    1740:	0001                	.insn	2, 0x0001
    1742:	0402                	.insn	2, 0x0402
    1744:	0318                	.insn	2, 0x0318
    1746:	0900                	.insn	2, 0x0900
    1748:	000c                	.insn	2, 0x000c
    174a:	0001                	.insn	2, 0x0001
    174c:	0402                	.insn	2, 0x0402
    174e:	031a                	.insn	2, 0x031a
    1750:	0900                	.insn	2, 0x0900
    1752:	0004                	.insn	2, 0x0004
    1754:	0001                	.insn	2, 0x0001
    1756:	0402                	.insn	2, 0x0402
    1758:	031a                	.insn	2, 0x031a
    175a:	0900                	.insn	2, 0x0900
    175c:	0000                	.insn	2, 0x
    175e:	0001                	.insn	2, 0x0001
    1760:	0402                	.insn	2, 0x0402
    1762:	031a                	.insn	2, 0x031a
    1764:	0900                	.insn	2, 0x0900
    1766:	0000                	.insn	2, 0x
    1768:	0001                	.insn	2, 0x0001
    176a:	0402                	.insn	2, 0x0402
    176c:	031a                	.insn	2, 0x031a
    176e:	0900                	.insn	2, 0x0900
    1770:	0000                	.insn	2, 0x
    1772:	0001                	.insn	2, 0x0001
    1774:	0402                	.insn	2, 0x0402
    1776:	09000377          	.insn	4, 0x09000377
    177a:	0018                	.insn	2, 0x0018
    177c:	0001                	.insn	2, 0x0001
    177e:	0402                	.insn	2, 0x0402
    1780:	09000377          	.insn	4, 0x09000377
    1784:	0000                	.insn	2, 0x
    1786:	0001                	.insn	2, 0x0001
    1788:	0402                	.insn	2, 0x0402
    178a:	09000377          	.insn	4, 0x09000377
    178e:	0000                	.insn	2, 0x
    1790:	0001                	.insn	2, 0x0001
    1792:	0402                	.insn	2, 0x0402
    1794:	09000377          	.insn	4, 0x09000377
    1798:	0000                	.insn	2, 0x
    179a:	0001                	.insn	2, 0x0001
    179c:	0402                	.insn	2, 0x0402
    179e:	09000377          	.insn	4, 0x09000377
    17a2:	0000                	.insn	2, 0x
    17a4:	0001                	.insn	2, 0x0001
    17a6:	0402                	.insn	2, 0x0402
    17a8:	09000377          	.insn	4, 0x09000377
    17ac:	0000                	.insn	2, 0x
    17ae:	0001                	.insn	2, 0x0001
    17b0:	0402                	.insn	2, 0x0402
    17b2:	09000377          	.insn	4, 0x09000377
    17b6:	0000                	.insn	2, 0x
    17b8:	0001                	.insn	2, 0x0001
    17ba:	0402                	.insn	2, 0x0402
    17bc:	09000377          	.insn	4, 0x09000377
    17c0:	0000                	.insn	2, 0x
    17c2:	0001                	.insn	2, 0x0001
    17c4:	0402                	.insn	2, 0x0402
    17c6:	09000377          	.insn	4, 0x09000377
    17ca:	0020                	.insn	2, 0x0020
    17cc:	0001                	.insn	2, 0x0001
    17ce:	0402                	.insn	2, 0x0402
    17d0:	09000377          	.insn	4, 0x09000377
    17d4:	0000                	.insn	2, 0x
    17d6:	0301                	.insn	2, 0x0301
    17d8:	0901                	.insn	2, 0x0901
    17da:	0000                	.insn	2, 0x
    17dc:	0301                	.insn	2, 0x0301
    17de:	0900                	.insn	2, 0x0900
    17e0:	0000                	.insn	2, 0x
    17e2:	0001                	.insn	2, 0x0001
    17e4:	0402                	.insn	2, 0x0402
    17e6:	0601                	.insn	2, 0x0601
    17e8:	00090003          	lb	zero,0(s2)
    17ec:	0100                	.insn	2, 0x0100
    17ee:	0200                	.insn	2, 0x0200
    17f0:	0104                	.insn	2, 0x0104
    17f2:	0306                	.insn	2, 0x0306
    17f4:	0900                	.insn	2, 0x0900
    17f6:	0004                	.insn	2, 0x0004
    17f8:	0001                	.insn	2, 0x0001
    17fa:	0402                	.insn	2, 0x0402
    17fc:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    1800:	0004                	.insn	2, 0x0004
    1802:	0301                	.insn	2, 0x0301
    1804:	0902                	.insn	2, 0x0902
    1806:	0000                	.insn	2, 0x
    1808:	0501                	.insn	2, 0x0501
    180a:	0601                	.insn	2, 0x0601
    180c:	00090103          	lb	sp,0(s2)
    1810:	0100                	.insn	2, 0x0100
    1812:	0305                	.insn	2, 0x0305
    1814:	0200                	.insn	2, 0x0200
    1816:	1b04                	.insn	2, 0x1b04
    1818:	0306                	.insn	2, 0x0306
    181a:	097c                	.insn	2, 0x097c
    181c:	001c                	.insn	2, 0x001c
    181e:	0001                	.insn	2, 0x0001
    1820:	0402                	.insn	2, 0x0402
    1822:	00030623          	sb	zero,12(t1) # 90014d0 <_tbss_end+0x90014d0>
    1826:	1409                	.insn	2, 0x1409
    1828:	0100                	.insn	2, 0x0100
    182a:	0306                	.insn	2, 0x0306
    182c:	0900                	.insn	2, 0x0900
    182e:	000c                	.insn	2, 0x000c
    1830:	0001                	.insn	2, 0x0001
    1832:	0402                	.insn	2, 0x0402
    1834:	0624                	.insn	2, 0x0624
    1836:	04090003          	lb	zero,64(s2)
    183a:	0100                	.insn	2, 0x0100
    183c:	0200                	.insn	2, 0x0200
    183e:	2604                	.insn	2, 0x2604
    1840:	0306                	.insn	2, 0x0306
    1842:	0900                	.insn	2, 0x0900
    1844:	0008                	.insn	2, 0x0008
    1846:	0001                	.insn	2, 0x0001
    1848:	0402                	.insn	2, 0x0402
    184a:	0326                	.insn	2, 0x0326
    184c:	0900                	.insn	2, 0x0900
    184e:	0000                	.insn	2, 0x
    1850:	0301                	.insn	2, 0x0301
    1852:	0900                	.insn	2, 0x0900
    1854:	000c                	.insn	2, 0x000c
    1856:	0001                	.insn	2, 0x0001
    1858:	0402                	.insn	2, 0x0402
    185a:	09000307          	.insn	4, 0x09000307
    185e:	0008                	.insn	2, 0x0008
    1860:	0001                	.insn	2, 0x0001
    1862:	0402                	.insn	2, 0x0402
    1864:	09000307          	.insn	4, 0x09000307
    1868:	0000                	.insn	2, 0x
    186a:	0001                	.insn	2, 0x0001
    186c:	0402                	.insn	2, 0x0402
    186e:	09000327          	.insn	4, 0x09000327
    1872:	0008                	.insn	2, 0x0008
    1874:	0001                	.insn	2, 0x0001
    1876:	0402                	.insn	2, 0x0402
    1878:	09000327          	.insn	4, 0x09000327
    187c:	0000                	.insn	2, 0x
    187e:	0001                	.insn	2, 0x0001
    1880:	0402                	.insn	2, 0x0402
    1882:	09000327          	.insn	4, 0x09000327
    1886:	0000                	.insn	2, 0x
    1888:	0001                	.insn	2, 0x0001
    188a:	0402                	.insn	2, 0x0402
    188c:	09000327          	.insn	4, 0x09000327
    1890:	0000                	.insn	2, 0x
    1892:	0001                	.insn	2, 0x0001
    1894:	0402                	.insn	2, 0x0402
    1896:	09000327          	.insn	4, 0x09000327
    189a:	0000                	.insn	2, 0x
    189c:	0001                	.insn	2, 0x0001
    189e:	0402                	.insn	2, 0x0402
    18a0:	09000327          	.insn	4, 0x09000327
    18a4:	0000                	.insn	2, 0x
    18a6:	0001                	.insn	2, 0x0001
    18a8:	0402                	.insn	2, 0x0402
    18aa:	09000327          	.insn	4, 0x09000327
    18ae:	0000                	.insn	2, 0x
    18b0:	0001                	.insn	2, 0x0001
    18b2:	0402                	.insn	2, 0x0402
    18b4:	09000327          	.insn	4, 0x09000327
    18b8:	0000                	.insn	2, 0x
    18ba:	0001                	.insn	2, 0x0001
    18bc:	0402                	.insn	2, 0x0402
    18be:	09000327          	.insn	4, 0x09000327
    18c2:	0000                	.insn	2, 0x
    18c4:	0001                	.insn	2, 0x0001
    18c6:	0402                	.insn	2, 0x0402
    18c8:	0329                	.insn	2, 0x0329
    18ca:	0900                	.insn	2, 0x0900
    18cc:	000c                	.insn	2, 0x000c
    18ce:	0001                	.insn	2, 0x0001
    18d0:	0402                	.insn	2, 0x0402
    18d2:	0329                	.insn	2, 0x0329
    18d4:	0900                	.insn	2, 0x0900
    18d6:	0008                	.insn	2, 0x0008
    18d8:	0301                	.insn	2, 0x0301
    18da:	0900                	.insn	2, 0x0900
    18dc:	0010                	.insn	2, 0x0010
    18de:	0301                	.insn	2, 0x0301
    18e0:	0900                	.insn	2, 0x0900
    18e2:	0000                	.insn	2, 0x
    18e4:	0001                	.insn	2, 0x0001
    18e6:	0402                	.insn	2, 0x0402
    18e8:	0900032b          	.insn	4, 0x0900032b
    18ec:	000c                	.insn	2, 0x000c
    18ee:	0001                	.insn	2, 0x0001
    18f0:	0402                	.insn	2, 0x0402
    18f2:	0900032b          	.insn	4, 0x0900032b
    18f6:	0000                	.insn	2, 0x
    18f8:	0001                	.insn	2, 0x0001
    18fa:	0402                	.insn	2, 0x0402
    18fc:	0900032b          	.insn	4, 0x0900032b
    1900:	0000                	.insn	2, 0x
    1902:	0001                	.insn	2, 0x0001
    1904:	0402                	.insn	2, 0x0402
    1906:	0900032b          	.insn	4, 0x0900032b
    190a:	0000                	.insn	2, 0x
    190c:	0001                	.insn	2, 0x0001
    190e:	0402                	.insn	2, 0x0402
    1910:	0636                	.insn	2, 0x0636
    1912:	04090003          	lb	zero,64(s2)
    1916:	0100                	.insn	2, 0x0100
    1918:	0200                	.insn	2, 0x0200
    191a:	3604                	.insn	2, 0x3604
    191c:	0306                	.insn	2, 0x0306
    191e:	0900                	.insn	2, 0x0900
    1920:	0008                	.insn	2, 0x0008
    1922:	0301                	.insn	2, 0x0301
    1924:	0900                	.insn	2, 0x0900
    1926:	0004                	.insn	2, 0x0004
    1928:	0301                	.insn	2, 0x0301
    192a:	0900                	.insn	2, 0x0900
    192c:	0000                	.insn	2, 0x
    192e:	0001                	.insn	2, 0x0001
    1930:	0402                	.insn	2, 0x0402
    1932:	0336                	.insn	2, 0x0336
    1934:	0900                	.insn	2, 0x0900
    1936:	0004                	.insn	2, 0x0004
    1938:	0001                	.insn	2, 0x0001
    193a:	0402                	.insn	2, 0x0402
    193c:	0336                	.insn	2, 0x0336
    193e:	0900                	.insn	2, 0x0900
    1940:	0000                	.insn	2, 0x
    1942:	0001                	.insn	2, 0x0001
    1944:	0402                	.insn	2, 0x0402
    1946:	0336                	.insn	2, 0x0336
    1948:	0900                	.insn	2, 0x0900
    194a:	0000                	.insn	2, 0x
    194c:	0001                	.insn	2, 0x0001
    194e:	0402                	.insn	2, 0x0402
    1950:	0336                	.insn	2, 0x0336
    1952:	0900                	.insn	2, 0x0900
    1954:	0000                	.insn	2, 0x
    1956:	0301                	.insn	2, 0x0301
    1958:	0900                	.insn	2, 0x0900
    195a:	0008                	.insn	2, 0x0008
    195c:	0301                	.insn	2, 0x0301
    195e:	0900                	.insn	2, 0x0900
    1960:	0000                	.insn	2, 0x
    1962:	0001                	.insn	2, 0x0001
    1964:	0402                	.insn	2, 0x0402
    1966:	032a                	.insn	2, 0x032a
    1968:	0900                	.insn	2, 0x0900
    196a:	0004                	.insn	2, 0x0004
    196c:	0001                	.insn	2, 0x0001
    196e:	0402                	.insn	2, 0x0402
    1970:	032a                	.insn	2, 0x032a
    1972:	0900                	.insn	2, 0x0900
    1974:	0000                	.insn	2, 0x
    1976:	0001                	.insn	2, 0x0001
    1978:	0402                	.insn	2, 0x0402
    197a:	0900033b          	.insn	4, 0x0900033b
    197e:	000c                	.insn	2, 0x000c
    1980:	0001                	.insn	2, 0x0001
    1982:	0402                	.insn	2, 0x0402
    1984:	0900033b          	.insn	4, 0x0900033b
    1988:	0008                	.insn	2, 0x0008
    198a:	0001                	.insn	2, 0x0001
    198c:	0402                	.insn	2, 0x0402
    198e:	033c                	.insn	2, 0x033c
    1990:	0900                	.insn	2, 0x0900
    1992:	0008                	.insn	2, 0x0008
    1994:	0001                	.insn	2, 0x0001
    1996:	0402                	.insn	2, 0x0402
    1998:	033e                	.insn	2, 0x033e
    199a:	0900                	.insn	2, 0x0900
    199c:	0008                	.insn	2, 0x0008
    199e:	0001                	.insn	2, 0x0001
    19a0:	0402                	.insn	2, 0x0402
    19a2:	00030643          	fmadd.s	fa2,ft6,ft0,ft0,rne
    19a6:	0c09                	.insn	2, 0x0c09
    19a8:	0100                	.insn	2, 0x0100
    19aa:	0200                	.insn	2, 0x0200
    19ac:	3e04                	.insn	2, 0x3e04
    19ae:	04090003          	lb	zero,64(s2)
    19b2:	0100                	.insn	2, 0x0100
    19b4:	0200                	.insn	2, 0x0200
    19b6:	4304                	.insn	2, 0x4304
    19b8:	04090003          	lb	zero,64(s2)
    19bc:	0100                	.insn	2, 0x0100
    19be:	0200                	.insn	2, 0x0200
    19c0:	4504                	.insn	2, 0x4504
    19c2:	04090003          	lb	zero,64(s2)
    19c6:	0100                	.insn	2, 0x0100
    19c8:	0200                	.insn	2, 0x0200
    19ca:	4504                	.insn	2, 0x4504
    19cc:	0306                	.insn	2, 0x0306
    19ce:	0900                	.insn	2, 0x0900
    19d0:	0004                	.insn	2, 0x0004
    19d2:	0001                	.insn	2, 0x0001
    19d4:	0402                	.insn	2, 0x0402
    19d6:	0900034b          	fnmsub.s	ft6,ft0,fa6,ft1,rne
    19da:	0004                	.insn	2, 0x0004
    19dc:	0001                	.insn	2, 0x0001
    19de:	0402                	.insn	2, 0x0402
    19e0:	0900034b          	fnmsub.s	ft6,ft0,fa6,ft1,rne
    19e4:	0000                	.insn	2, 0x
    19e6:	0001                	.insn	2, 0x0001
    19e8:	0402                	.insn	2, 0x0402
    19ea:	034c                	.insn	2, 0x034c
    19ec:	0900                	.insn	2, 0x0900
    19ee:	0008                	.insn	2, 0x0008
    19f0:	0001                	.insn	2, 0x0001
    19f2:	0402                	.insn	2, 0x0402
    19f4:	034c                	.insn	2, 0x034c
    19f6:	0900                	.insn	2, 0x0900
    19f8:	0008                	.insn	2, 0x0008
    19fa:	0301                	.insn	2, 0x0301
    19fc:	0900                	.insn	2, 0x0900
    19fe:	0010                	.insn	2, 0x0010
    1a00:	0301                	.insn	2, 0x0301
    1a02:	0900                	.insn	2, 0x0900
    1a04:	0000                	.insn	2, 0x
    1a06:	0001                	.insn	2, 0x0001
    1a08:	0402                	.insn	2, 0x0402
    1a0a:	034e                	.insn	2, 0x034e
    1a0c:	0900                	.insn	2, 0x0900
    1a0e:	000c                	.insn	2, 0x000c
    1a10:	0001                	.insn	2, 0x0001
    1a12:	0402                	.insn	2, 0x0402
    1a14:	034e                	.insn	2, 0x034e
    1a16:	0900                	.insn	2, 0x0900
    1a18:	0000                	.insn	2, 0x
    1a1a:	0001                	.insn	2, 0x0001
    1a1c:	0402                	.insn	2, 0x0402
    1a1e:	034e                	.insn	2, 0x034e
    1a20:	0900                	.insn	2, 0x0900
    1a22:	0000                	.insn	2, 0x
    1a24:	0001                	.insn	2, 0x0001
    1a26:	0402                	.insn	2, 0x0402
    1a28:	0659                	.insn	2, 0x0659
    1a2a:	08090003          	lb	zero,128(s2)
    1a2e:	0100                	.insn	2, 0x0100
    1a30:	0200                	.insn	2, 0x0200
    1a32:	5904                	.insn	2, 0x5904
    1a34:	0306                	.insn	2, 0x0306
    1a36:	0900                	.insn	2, 0x0900
    1a38:	0008                	.insn	2, 0x0008
    1a3a:	0001                	.insn	2, 0x0001
    1a3c:	0402                	.insn	2, 0x0402
    1a3e:	0359                	.insn	2, 0x0359
    1a40:	0900                	.insn	2, 0x0900
    1a42:	0000                	.insn	2, 0x
    1a44:	0001                	.insn	2, 0x0001
    1a46:	0402                	.insn	2, 0x0402
    1a48:	0900033f 00010004 	.insn	8, 0x000100040900033f
    1a50:	0402                	.insn	2, 0x0402
    1a52:	0648                	.insn	2, 0x0648
    1a54:	10090003          	lb	zero,256(s2)
    1a58:	0100                	.insn	2, 0x0100
    1a5a:	0200                	.insn	2, 0x0200
    1a5c:	3f04                	.insn	2, 0x3f04
    1a5e:	04090003          	lb	zero,64(s2)
    1a62:	0100                	.insn	2, 0x0100
    1a64:	0200                	.insn	2, 0x0200
    1a66:	4704                	.insn	2, 0x4704
    1a68:	04090003          	lb	zero,64(s2)
    1a6c:	0100                	.insn	2, 0x0100
    1a6e:	0200                	.insn	2, 0x0200
    1a70:	4a04                	.insn	2, 0x4a04
    1a72:	08090003          	lb	zero,128(s2)
    1a76:	0100                	.insn	2, 0x0100
    1a78:	0200                	.insn	2, 0x0200
    1a7a:	4a04                	.insn	2, 0x4a04
    1a7c:	0306                	.insn	2, 0x0306
    1a7e:	0900                	.insn	2, 0x0900
    1a80:	000c                	.insn	2, 0x000c
    1a82:	0301                	.insn	2, 0x0301
    1a84:	0900                	.insn	2, 0x0900
    1a86:	0008                	.insn	2, 0x0008
    1a88:	0301                	.insn	2, 0x0301
    1a8a:	0900                	.insn	2, 0x0900
    1a8c:	0000                	.insn	2, 0x
    1a8e:	0001                	.insn	2, 0x0001
    1a90:	0402                	.insn	2, 0x0402
    1a92:	0359                	.insn	2, 0x0359
    1a94:	0900                	.insn	2, 0x0900
    1a96:	0004                	.insn	2, 0x0004
    1a98:	0001                	.insn	2, 0x0001
    1a9a:	0402                	.insn	2, 0x0402
    1a9c:	0359                	.insn	2, 0x0359
    1a9e:	0900                	.insn	2, 0x0900
    1aa0:	0000                	.insn	2, 0x
    1aa2:	0001                	.insn	2, 0x0001
    1aa4:	0402                	.insn	2, 0x0402
    1aa6:	0359                	.insn	2, 0x0359
    1aa8:	0900                	.insn	2, 0x0900
    1aaa:	0000                	.insn	2, 0x
    1aac:	0301                	.insn	2, 0x0301
    1aae:	0900                	.insn	2, 0x0900
    1ab0:	0008                	.insn	2, 0x0008
    1ab2:	0301                	.insn	2, 0x0301
    1ab4:	0900                	.insn	2, 0x0900
    1ab6:	0000                	.insn	2, 0x
    1ab8:	0001                	.insn	2, 0x0001
    1aba:	0402                	.insn	2, 0x0402
    1abc:	034d                	.insn	2, 0x034d
    1abe:	0900                	.insn	2, 0x0900
    1ac0:	0004                	.insn	2, 0x0004
    1ac2:	0001                	.insn	2, 0x0001
    1ac4:	0402                	.insn	2, 0x0402
    1ac6:	034d                	.insn	2, 0x034d
    1ac8:	0900                	.insn	2, 0x0900
    1aca:	0000                	.insn	2, 0x
    1acc:	0001                	.insn	2, 0x0001
    1ace:	0402                	.insn	2, 0x0402
    1ad0:	035c                	.insn	2, 0x035c
    1ad2:	0900                	.insn	2, 0x0900
    1ad4:	0008                	.insn	2, 0x0008
    1ad6:	0001                	.insn	2, 0x0001
    1ad8:	0402                	.insn	2, 0x0402
    1ada:	035c                	.insn	2, 0x035c
    1adc:	0900                	.insn	2, 0x0900
    1ade:	0000                	.insn	2, 0x
    1ae0:	0001                	.insn	2, 0x0001
    1ae2:	0402                	.insn	2, 0x0402
    1ae4:	035c                	.insn	2, 0x035c
    1ae6:	0900                	.insn	2, 0x0900
    1ae8:	0000                	.insn	2, 0x
    1aea:	0001                	.insn	2, 0x0001
    1aec:	0402                	.insn	2, 0x0402
    1aee:	035f 0900 0010      	.insn	6, 0x00100900035f
    1af4:	0001                	.insn	2, 0x0001
    1af6:	0402                	.insn	2, 0x0402
    1af8:	0660                	.insn	2, 0x0660
    1afa:	04090003          	lb	zero,64(s2)
    1afe:	0100                	.insn	2, 0x0100
    1b00:	0200                	.insn	2, 0x0200
    1b02:	5d04                	.insn	2, 0x5d04
    1b04:	0306                	.insn	2, 0x0306
    1b06:	0900                	.insn	2, 0x0900
    1b08:	0010                	.insn	2, 0x0010
    1b0a:	0001                	.insn	2, 0x0001
    1b0c:	0402                	.insn	2, 0x0402
    1b0e:	035d                	.insn	2, 0x035d
    1b10:	0900                	.insn	2, 0x0900
    1b12:	0000                	.insn	2, 0x
    1b14:	0001                	.insn	2, 0x0001
    1b16:	0402                	.insn	2, 0x0402
    1b18:	035d                	.insn	2, 0x035d
    1b1a:	0900                	.insn	2, 0x0900
    1b1c:	0000                	.insn	2, 0x
    1b1e:	0001                	.insn	2, 0x0001
    1b20:	0402                	.insn	2, 0x0402
    1b22:	035d                	.insn	2, 0x035d
    1b24:	0900                	.insn	2, 0x0900
    1b26:	000c                	.insn	2, 0x000c
    1b28:	0001                	.insn	2, 0x0001
    1b2a:	0402                	.insn	2, 0x0402
    1b2c:	033d                	.insn	2, 0x033d
    1b2e:	0900                	.insn	2, 0x0900
    1b30:	000c                	.insn	2, 0x000c
    1b32:	0001                	.insn	2, 0x0001
    1b34:	0402                	.insn	2, 0x0402
    1b36:	033d                	.insn	2, 0x033d
    1b38:	0900                	.insn	2, 0x0900
    1b3a:	0000                	.insn	2, 0x
    1b3c:	0001                	.insn	2, 0x0001
    1b3e:	0402                	.insn	2, 0x0402
    1b40:	0362                	.insn	2, 0x0362
    1b42:	0900                	.insn	2, 0x0900
    1b44:	0008                	.insn	2, 0x0008
    1b46:	0001                	.insn	2, 0x0001
    1b48:	0402                	.insn	2, 0x0402
    1b4a:	0362                	.insn	2, 0x0362
    1b4c:	0900                	.insn	2, 0x0900
    1b4e:	0000                	.insn	2, 0x
    1b50:	0001                	.insn	2, 0x0001
    1b52:	0402                	.insn	2, 0x0402
    1b54:	0362                	.insn	2, 0x0362
    1b56:	0900                	.insn	2, 0x0900
    1b58:	0000                	.insn	2, 0x
    1b5a:	0001                	.insn	2, 0x0001
    1b5c:	0402                	.insn	2, 0x0402
    1b5e:	0364                	.insn	2, 0x0364
    1b60:	0900                	.insn	2, 0x0900
    1b62:	0000                	.insn	2, 0x
    1b64:	0001                	.insn	2, 0x0001
    1b66:	0402                	.insn	2, 0x0402
    1b68:	0364                	.insn	2, 0x0364
    1b6a:	0900                	.insn	2, 0x0900
    1b6c:	0008                	.insn	2, 0x0008
    1b6e:	0001                	.insn	2, 0x0001
    1b70:	0402                	.insn	2, 0x0402
    1b72:	0662                	.insn	2, 0x0662
    1b74:	0c090003          	lb	zero,192(s2)
    1b78:	0100                	.insn	2, 0x0100
    1b7a:	0200                	.insn	2, 0x0200
    1b7c:	6604                	.insn	2, 0x6604
    1b7e:	08090003          	lb	zero,128(s2)
    1b82:	0100                	.insn	2, 0x0100
    1b84:	0200                	.insn	2, 0x0200
    1b86:	6504                	.insn	2, 0x6504
    1b88:	0306                	.insn	2, 0x0306
    1b8a:	0900                	.insn	2, 0x0900
    1b8c:	0004                	.insn	2, 0x0004
    1b8e:	0001                	.insn	2, 0x0001
    1b90:	0402                	.insn	2, 0x0402
    1b92:	0365                	.insn	2, 0x0365
    1b94:	0900                	.insn	2, 0x0900
    1b96:	0000                	.insn	2, 0x
    1b98:	0001                	.insn	2, 0x0001
    1b9a:	0402                	.insn	2, 0x0402
    1b9c:	0374                	.insn	2, 0x0374
    1b9e:	0900                	.insn	2, 0x0900
    1ba0:	0004                	.insn	2, 0x0004
    1ba2:	0001                	.insn	2, 0x0001
    1ba4:	0402                	.insn	2, 0x0402
    1ba6:	00030603          	lb	a2,0(t1)
    1baa:	0809                	.insn	2, 0x0809
    1bac:	0100                	.insn	2, 0x0100
    1bae:	0306                	.insn	2, 0x0306
    1bb0:	0900                	.insn	2, 0x0900
    1bb2:	0008                	.insn	2, 0x0008
    1bb4:	0301                	.insn	2, 0x0301
    1bb6:	0900                	.insn	2, 0x0900
    1bb8:	0000                	.insn	2, 0x
    1bba:	0001                	.insn	2, 0x0001
    1bbc:	0402                	.insn	2, 0x0402
    1bbe:	0671                	.insn	2, 0x0671
    1bc0:	00090003          	lb	zero,0(s2)
    1bc4:	0100                	.insn	2, 0x0100
    1bc6:	04090003          	lb	zero,64(s2)
    1bca:	0100                	.insn	2, 0x0100
    1bcc:	0200                	.insn	2, 0x0200
    1bce:	6204                	.insn	2, 0x6204
    1bd0:	04090003          	lb	zero,64(s2)
    1bd4:	0100                	.insn	2, 0x0100
    1bd6:	0306                	.insn	2, 0x0306
    1bd8:	0900                	.insn	2, 0x0900
    1bda:	0008                	.insn	2, 0x0008
    1bdc:	0301                	.insn	2, 0x0301
    1bde:	0900                	.insn	2, 0x0900
    1be0:	0000                	.insn	2, 0x
    1be2:	0001                	.insn	2, 0x0001
    1be4:	0402                	.insn	2, 0x0402
    1be6:	0671                	.insn	2, 0x0671
    1be8:	00090003          	lb	zero,0(s2)
    1bec:	0100                	.insn	2, 0x0100
    1bee:	04090003          	lb	zero,64(s2)
    1bf2:	0100                	.insn	2, 0x0100
    1bf4:	08097f03          	.insn	4, 0x08097f03
    1bf8:	0100                	.insn	2, 0x0100
    1bfa:	0200                	.insn	2, 0x0200
    1bfc:	0504                	.insn	2, 0x0504
    1bfe:	0306                	.insn	2, 0x0306
    1c00:	0901                	.insn	2, 0x0901
    1c02:	0004                	.insn	2, 0x0004
    1c04:	0001                	.insn	2, 0x0001
    1c06:	0402                	.insn	2, 0x0402
    1c08:	0305                	.insn	2, 0x0305
    1c0a:	0900                	.insn	2, 0x0900
    1c0c:	0000                	.insn	2, 0x
    1c0e:	0001                	.insn	2, 0x0001
    1c10:	0402                	.insn	2, 0x0402
    1c12:	0378                	.insn	2, 0x0378
    1c14:	0900                	.insn	2, 0x0900
    1c16:	0000                	.insn	2, 0x
    1c18:	0001                	.insn	2, 0x0001
    1c1a:	0402                	.insn	2, 0x0402
    1c1c:	0378                	.insn	2, 0x0378
    1c1e:	0900                	.insn	2, 0x0900
    1c20:	0000                	.insn	2, 0x
    1c22:	0001                	.insn	2, 0x0001
    1c24:	0402                	.insn	2, 0x0402
    1c26:	037e                	.insn	2, 0x037e
    1c28:	0900                	.insn	2, 0x0900
    1c2a:	0000                	.insn	2, 0x
    1c2c:	0001                	.insn	2, 0x0001
    1c2e:	0402                	.insn	2, 0x0402
    1c30:	037e                	.insn	2, 0x037e
    1c32:	0900                	.insn	2, 0x0900
    1c34:	0000                	.insn	2, 0x
    1c36:	0001                	.insn	2, 0x0001
    1c38:	0402                	.insn	2, 0x0402
    1c3a:	0678                	.insn	2, 0x0678
    1c3c:	00090003          	lb	zero,0(s2)
    1c40:	0100                	.insn	2, 0x0100
    1c42:	0200                	.insn	2, 0x0200
    1c44:	0504                	.insn	2, 0x0504
    1c46:	08090003          	lb	zero,128(s2)
    1c4a:	0100                	.insn	2, 0x0100
    1c4c:	0200                	.insn	2, 0x0200
    1c4e:	7804                	.insn	2, 0x7804
    1c50:	04090003          	lb	zero,64(s2)
    1c54:	0100                	.insn	2, 0x0100
    1c56:	08090003          	lb	zero,128(s2)
    1c5a:	0100                	.insn	2, 0x0100
    1c5c:	0200                	.insn	2, 0x0200
    1c5e:	0304                	.insn	2, 0x0304
    1c60:	10090003          	lb	zero,256(s2)
    1c64:	0100                	.insn	2, 0x0100
    1c66:	0c09                	.insn	2, 0x0c09
    1c68:	0000                	.insn	2, 0x
    1c6a:	0101                	.insn	2, 0x0101
    1c6c:	193e                	.insn	2, 0x193e
    1c6e:	0000                	.insn	2, 0x
    1c70:	0005                	.insn	2, 0x0005
    1c72:	0004                	.insn	2, 0x0004
    1c74:	00000033          	add	zero,zero,zero
    1c78:	0101                	.insn	2, 0x0101
    1c7a:	fb01                	.insn	2, 0xfb01
    1c7c:	0d0e                	.insn	2, 0x0d0e
    1c7e:	0100                	.insn	2, 0x0100
    1c80:	0101                	.insn	2, 0x0101
    1c82:	0001                	.insn	2, 0x0001
    1c84:	0000                	.insn	2, 0x
    1c86:	0001                	.insn	2, 0x0001
    1c88:	0100                	.insn	2, 0x0100
    1c8a:	0101                	.insn	2, 0x0101
    1c8c:	021f 0026 0000      	.insn	6, 0x0026021f
    1c92:	0085                	.insn	2, 0x0085
    1c94:	0000                	.insn	2, 0x
    1c96:	0102                	.insn	2, 0x0102
    1c98:	021f 030f 0157      	.insn	6, 0x0157030f021f
    1c9e:	0000                	.insn	2, 0x
    1ca0:	5701                	.insn	2, 0x5701
    1ca2:	0001                	.insn	2, 0x0001
    1ca4:	0100                	.insn	2, 0x0100
    1ca6:	000000b3          	add	ra,zero,zero
    1caa:	0501                	.insn	2, 0x0501
    1cac:	0001                	.insn	2, 0x0001
    1cae:	0205                	.insn	2, 0x0205
    1cb0:	20dc                	.insn	2, 0x20dc
    1cb2:	8000                	.insn	2, 0x8000
    1cb4:	05012103          	lw	sp,80(sp)
    1cb8:	09010303          	lb	t1,144(sp)
    1cbc:	0000                	.insn	2, 0x
    1cbe:	0301                	.insn	2, 0x0301
    1cc0:	0900                	.insn	2, 0x0900
    1cc2:	0000                	.insn	2, 0x
    1cc4:	0501                	.insn	2, 0x0501
    1cc6:	030d                	.insn	2, 0x030d
    1cc8:	0900                	.insn	2, 0x0900
    1cca:	0000                	.insn	2, 0x
    1ccc:	0501                	.insn	2, 0x0501
    1cce:	09010303          	lb	t1,144(sp)
    1cd2:	0000                	.insn	2, 0x
    1cd4:	0301                	.insn	2, 0x0301
    1cd6:	0900                	.insn	2, 0x0900
    1cd8:	0000                	.insn	2, 0x
    1cda:	0301                	.insn	2, 0x0301
    1cdc:	0900                	.insn	2, 0x0900
    1cde:	0000                	.insn	2, 0x
    1ce0:	0301                	.insn	2, 0x0301
    1ce2:	0900                	.insn	2, 0x0900
    1ce4:	0000                	.insn	2, 0x
    1ce6:	0301                	.insn	2, 0x0301
    1ce8:	0901                	.insn	2, 0x0901
    1cea:	0000                	.insn	2, 0x
    1cec:	0301                	.insn	2, 0x0301
    1cee:	0900                	.insn	2, 0x0900
    1cf0:	0000                	.insn	2, 0x
    1cf2:	0301                	.insn	2, 0x0301
    1cf4:	0900                	.insn	2, 0x0900
    1cf6:	0000                	.insn	2, 0x
    1cf8:	0301                	.insn	2, 0x0301
    1cfa:	0900                	.insn	2, 0x0900
    1cfc:	0000                	.insn	2, 0x
    1cfe:	0301                	.insn	2, 0x0301
    1d00:	0901                	.insn	2, 0x0901
    1d02:	0000                	.insn	2, 0x
    1d04:	0301                	.insn	2, 0x0301
    1d06:	0900                	.insn	2, 0x0900
    1d08:	0000                	.insn	2, 0x
    1d0a:	0301                	.insn	2, 0x0301
    1d0c:	0900                	.insn	2, 0x0900
    1d0e:	0000                	.insn	2, 0x
    1d10:	0301                	.insn	2, 0x0301
    1d12:	0900                	.insn	2, 0x0900
    1d14:	0000                	.insn	2, 0x
    1d16:	0301                	.insn	2, 0x0301
    1d18:	0901                	.insn	2, 0x0901
    1d1a:	0000                	.insn	2, 0x
    1d1c:	0301                	.insn	2, 0x0301
    1d1e:	0902                	.insn	2, 0x0902
    1d20:	0000                	.insn	2, 0x
    1d22:	0301                	.insn	2, 0x0301
    1d24:	0900                	.insn	2, 0x0900
    1d26:	0000                	.insn	2, 0x
    1d28:	0301                	.insn	2, 0x0301
    1d2a:	0900                	.insn	2, 0x0900
    1d2c:	0004                	.insn	2, 0x0004
    1d2e:	0301                	.insn	2, 0x0301
    1d30:	0901                	.insn	2, 0x0901
    1d32:	0000                	.insn	2, 0x
    1d34:	0301                	.insn	2, 0x0301
    1d36:	0900                	.insn	2, 0x0900
    1d38:	0000                	.insn	2, 0x
    1d3a:	0301                	.insn	2, 0x0301
    1d3c:	0900                	.insn	2, 0x0900
    1d3e:	0000                	.insn	2, 0x
    1d40:	0301                	.insn	2, 0x0301
    1d42:	0900                	.insn	2, 0x0900
    1d44:	0000                	.insn	2, 0x
    1d46:	0301                	.insn	2, 0x0301
    1d48:	0900                	.insn	2, 0x0900
    1d4a:	0000                	.insn	2, 0x
    1d4c:	0301                	.insn	2, 0x0301
    1d4e:	0900                	.insn	2, 0x0900
    1d50:	0000                	.insn	2, 0x
    1d52:	0301                	.insn	2, 0x0301
    1d54:	0900                	.insn	2, 0x0900
    1d56:	000c                	.insn	2, 0x000c
    1d58:	0001                	.insn	2, 0x0001
    1d5a:	0402                	.insn	2, 0x0402
    1d5c:	0602                	.insn	2, 0x0602
    1d5e:	00090003          	lb	zero,0(s2)
    1d62:	0100                	.insn	2, 0x0100
    1d64:	04090103          	lb	sp,64(s2)
    1d68:	0100                	.insn	2, 0x0100
    1d6a:	0200                	.insn	2, 0x0200
    1d6c:	0204                	.insn	2, 0x0204
    1d6e:	04097f03          	.insn	4, 0x04097f03
    1d72:	0100                	.insn	2, 0x0100
    1d74:	04090103          	lb	sp,64(s2)
    1d78:	0100                	.insn	2, 0x0100
    1d7a:	0200                	.insn	2, 0x0200
    1d7c:	0204                	.insn	2, 0x0204
    1d7e:	04097f03          	.insn	4, 0x04097f03
    1d82:	0100                	.insn	2, 0x0100
    1d84:	0200                	.insn	2, 0x0200
    1d86:	0204                	.insn	2, 0x0204
    1d88:	04090103          	lb	sp,64(s2)
    1d8c:	0100                	.insn	2, 0x0100
    1d8e:	08097f03          	.insn	4, 0x08097f03
    1d92:	0100                	.insn	2, 0x0100
    1d94:	0200                	.insn	2, 0x0200
    1d96:	0204                	.insn	2, 0x0204
    1d98:	04090103          	lb	sp,64(s2)
    1d9c:	0100                	.insn	2, 0x0100
    1d9e:	04090003          	lb	zero,64(s2)
    1da2:	0100                	.insn	2, 0x0100
    1da4:	04090103          	lb	sp,64(s2)
    1da8:	0100                	.insn	2, 0x0100
    1daa:	04097e03          	.insn	4, 0x04097e03
    1dae:	0100                	.insn	2, 0x0100
    1db0:	0306                	.insn	2, 0x0306
    1db2:	0900                	.insn	2, 0x0900
    1db4:	0004                	.insn	2, 0x0004
    1db6:	0301                	.insn	2, 0x0301
    1db8:	0900                	.insn	2, 0x0900
    1dba:	0004                	.insn	2, 0x0004
    1dbc:	0301                	.insn	2, 0x0301
    1dbe:	0900                	.insn	2, 0x0900
    1dc0:	0000                	.insn	2, 0x
    1dc2:	0301                	.insn	2, 0x0301
    1dc4:	0900                	.insn	2, 0x0900
    1dc6:	0000                	.insn	2, 0x
    1dc8:	0001                	.insn	2, 0x0001
    1dca:	0402                	.insn	2, 0x0402
    1dcc:	0302                	.insn	2, 0x0302
    1dce:	0900                	.insn	2, 0x0900
    1dd0:	0000                	.insn	2, 0x
    1dd2:	0001                	.insn	2, 0x0001
    1dd4:	0402                	.insn	2, 0x0402
    1dd6:	0302                	.insn	2, 0x0302
    1dd8:	0900                	.insn	2, 0x0900
    1dda:	0000                	.insn	2, 0x
    1ddc:	0001                	.insn	2, 0x0001
    1dde:	0402                	.insn	2, 0x0402
    1de0:	0304                	.insn	2, 0x0304
    1de2:	0900                	.insn	2, 0x0900
    1de4:	0004                	.insn	2, 0x0004
    1de6:	0001                	.insn	2, 0x0001
    1de8:	0402                	.insn	2, 0x0402
    1dea:	0304                	.insn	2, 0x0304
    1dec:	0900                	.insn	2, 0x0900
    1dee:	0000                	.insn	2, 0x
    1df0:	0301                	.insn	2, 0x0301
    1df2:	0901                	.insn	2, 0x0901
    1df4:	0000                	.insn	2, 0x
    1df6:	0301                	.insn	2, 0x0301
    1df8:	0900                	.insn	2, 0x0900
    1dfa:	0000                	.insn	2, 0x
    1dfc:	0301                	.insn	2, 0x0301
    1dfe:	0900                	.insn	2, 0x0900
    1e00:	0000                	.insn	2, 0x
    1e02:	0301                	.insn	2, 0x0301
    1e04:	0900                	.insn	2, 0x0900
    1e06:	0000                	.insn	2, 0x
    1e08:	0301                	.insn	2, 0x0301
    1e0a:	0900                	.insn	2, 0x0900
    1e0c:	0000                	.insn	2, 0x
    1e0e:	0301                	.insn	2, 0x0301
    1e10:	0900                	.insn	2, 0x0900
    1e12:	0000                	.insn	2, 0x
    1e14:	0301                	.insn	2, 0x0301
    1e16:	0900                	.insn	2, 0x0900
    1e18:	0000                	.insn	2, 0x
    1e1a:	0301                	.insn	2, 0x0301
    1e1c:	0900                	.insn	2, 0x0900
    1e1e:	0000                	.insn	2, 0x
    1e20:	0301                	.insn	2, 0x0301
    1e22:	0900                	.insn	2, 0x0900
    1e24:	0004                	.insn	2, 0x0004
    1e26:	0301                	.insn	2, 0x0301
    1e28:	0900                	.insn	2, 0x0900
    1e2a:	0000                	.insn	2, 0x
    1e2c:	0301                	.insn	2, 0x0301
    1e2e:	0900                	.insn	2, 0x0900
    1e30:	0000                	.insn	2, 0x
    1e32:	0001                	.insn	2, 0x0001
    1e34:	0402                	.insn	2, 0x0402
    1e36:	0302                	.insn	2, 0x0302
    1e38:	0900                	.insn	2, 0x0900
    1e3a:	0000                	.insn	2, 0x
    1e3c:	0001                	.insn	2, 0x0001
    1e3e:	0402                	.insn	2, 0x0402
    1e40:	0302                	.insn	2, 0x0302
    1e42:	0900                	.insn	2, 0x0900
    1e44:	0000                	.insn	2, 0x
    1e46:	0001                	.insn	2, 0x0001
    1e48:	0402                	.insn	2, 0x0402
    1e4a:	0304                	.insn	2, 0x0304
    1e4c:	0900                	.insn	2, 0x0900
    1e4e:	0004                	.insn	2, 0x0004
    1e50:	0001                	.insn	2, 0x0001
    1e52:	0402                	.insn	2, 0x0402
    1e54:	0304                	.insn	2, 0x0304
    1e56:	0900                	.insn	2, 0x0900
    1e58:	0000                	.insn	2, 0x
    1e5a:	0301                	.insn	2, 0x0301
    1e5c:	0901                	.insn	2, 0x0901
    1e5e:	0000                	.insn	2, 0x
    1e60:	0301                	.insn	2, 0x0301
    1e62:	0900                	.insn	2, 0x0900
    1e64:	0000                	.insn	2, 0x
    1e66:	0001                	.insn	2, 0x0001
    1e68:	0402                	.insn	2, 0x0402
    1e6a:	0602                	.insn	2, 0x0602
    1e6c:	04090003          	lb	zero,64(s2)
    1e70:	0100                	.insn	2, 0x0100
    1e72:	0200                	.insn	2, 0x0200
    1e74:	0304                	.insn	2, 0x0304
    1e76:	0306                	.insn	2, 0x0306
    1e78:	0900                	.insn	2, 0x0900
    1e7a:	0008                	.insn	2, 0x0008
    1e7c:	0001                	.insn	2, 0x0001
    1e7e:	0402                	.insn	2, 0x0402
    1e80:	0305                	.insn	2, 0x0305
    1e82:	0900                	.insn	2, 0x0900
    1e84:	0004                	.insn	2, 0x0004
    1e86:	0001                	.insn	2, 0x0001
    1e88:	0402                	.insn	2, 0x0402
    1e8a:	0305                	.insn	2, 0x0305
    1e8c:	0900                	.insn	2, 0x0900
    1e8e:	0000                	.insn	2, 0x
    1e90:	0001                	.insn	2, 0x0001
    1e92:	0402                	.insn	2, 0x0402
    1e94:	0305                	.insn	2, 0x0305
    1e96:	0900                	.insn	2, 0x0900
    1e98:	0000                	.insn	2, 0x
    1e9a:	0001                	.insn	2, 0x0001
    1e9c:	0402                	.insn	2, 0x0402
    1e9e:	0308                	.insn	2, 0x0308
    1ea0:	0900                	.insn	2, 0x0900
    1ea2:	0000                	.insn	2, 0x
    1ea4:	0001                	.insn	2, 0x0001
    1ea6:	0402                	.insn	2, 0x0402
    1ea8:	0308                	.insn	2, 0x0308
    1eaa:	0900                	.insn	2, 0x0900
    1eac:	0000                	.insn	2, 0x
    1eae:	0001                	.insn	2, 0x0001
    1eb0:	0402                	.insn	2, 0x0402
    1eb2:	0308                	.insn	2, 0x0308
    1eb4:	0900                	.insn	2, 0x0900
    1eb6:	0000                	.insn	2, 0x
    1eb8:	0001                	.insn	2, 0x0001
    1eba:	0402                	.insn	2, 0x0402
    1ebc:	0900030b          	.insn	4, 0x0900030b
    1ec0:	0000                	.insn	2, 0x
    1ec2:	0001                	.insn	2, 0x0001
    1ec4:	0402                	.insn	2, 0x0402
    1ec6:	0900030b          	.insn	4, 0x0900030b
    1eca:	0000                	.insn	2, 0x
    1ecc:	0001                	.insn	2, 0x0001
    1ece:	0402                	.insn	2, 0x0402
    1ed0:	060c                	.insn	2, 0x060c
    1ed2:	00090003          	lb	zero,0(s2)
    1ed6:	0100                	.insn	2, 0x0100
    1ed8:	0200                	.insn	2, 0x0200
    1eda:	0b04                	.insn	2, 0x0b04
    1edc:	04090003          	lb	zero,64(s2)
    1ee0:	0100                	.insn	2, 0x0100
    1ee2:	0200                	.insn	2, 0x0200
    1ee4:	0c04                	.insn	2, 0x0c04
    1ee6:	0306                	.insn	2, 0x0306
    1ee8:	0900                	.insn	2, 0x0900
    1eea:	0004                	.insn	2, 0x0004
    1eec:	0001                	.insn	2, 0x0001
    1eee:	0402                	.insn	2, 0x0402
    1ef0:	030c                	.insn	2, 0x030c
    1ef2:	0900                	.insn	2, 0x0900
    1ef4:	0000                	.insn	2, 0x
    1ef6:	0001                	.insn	2, 0x0001
    1ef8:	0402                	.insn	2, 0x0402
    1efa:	030c                	.insn	2, 0x030c
    1efc:	0900                	.insn	2, 0x0900
    1efe:	0000                	.insn	2, 0x
    1f00:	0001                	.insn	2, 0x0001
    1f02:	0402                	.insn	2, 0x0402
    1f04:	030e                	.insn	2, 0x030e
    1f06:	0900                	.insn	2, 0x0900
    1f08:	0004                	.insn	2, 0x0004
    1f0a:	0001                	.insn	2, 0x0001
    1f0c:	0402                	.insn	2, 0x0402
    1f0e:	030e                	.insn	2, 0x030e
    1f10:	0900                	.insn	2, 0x0900
    1f12:	0000                	.insn	2, 0x
    1f14:	0001                	.insn	2, 0x0001
    1f16:	0402                	.insn	2, 0x0402
    1f18:	0310                	.insn	2, 0x0310
    1f1a:	0900                	.insn	2, 0x0900
    1f1c:	0004                	.insn	2, 0x0004
    1f1e:	0001                	.insn	2, 0x0001
    1f20:	01d10403          	lb	s0,29(sp)
    1f24:	08090003          	lb	zero,128(s2)
    1f28:	0100                	.insn	2, 0x0100
    1f2a:	0300                	.insn	2, 0x0300
    1f2c:	d104                	.insn	2, 0xd104
    1f2e:	0301                	.insn	2, 0x0301
    1f30:	0900                	.insn	2, 0x0900
    1f32:	0000                	.insn	2, 0x
    1f34:	0001                	.insn	2, 0x0001
    1f36:	01d90403          	lb	s0,29(s2)
    1f3a:	0306                	.insn	2, 0x0306
    1f3c:	0900                	.insn	2, 0x0900
    1f3e:	0008                	.insn	2, 0x0008
    1f40:	0001                	.insn	2, 0x0001
    1f42:	0402                	.insn	2, 0x0402
    1f44:	00030613          	mv	a2,t1
    1f48:	0c09                	.insn	2, 0x0c09
    1f4a:	0100                	.insn	2, 0x0100
    1f4c:	0200                	.insn	2, 0x0200
    1f4e:	1304                	.insn	2, 0x1304
    1f50:	00090003          	lb	zero,0(s2)
    1f54:	0100                	.insn	2, 0x0100
    1f56:	0200                	.insn	2, 0x0200
    1f58:	1304                	.insn	2, 0x1304
    1f5a:	04090003          	lb	zero,64(s2)
    1f5e:	0100                	.insn	2, 0x0100
    1f60:	0200                	.insn	2, 0x0200
    1f62:	5504                	.insn	2, 0x5504
    1f64:	04090003          	lb	zero,64(s2)
    1f68:	0100                	.insn	2, 0x0100
    1f6a:	0200                	.insn	2, 0x0200
    1f6c:	5504                	.insn	2, 0x5504
    1f6e:	00090003          	lb	zero,0(s2)
    1f72:	0100                	.insn	2, 0x0100
    1f74:	0200                	.insn	2, 0x0200
    1f76:	5504                	.insn	2, 0x5504
    1f78:	00090003          	lb	zero,0(s2)
    1f7c:	0100                	.insn	2, 0x0100
    1f7e:	0200                	.insn	2, 0x0200
    1f80:	5504                	.insn	2, 0x5504
    1f82:	00090003          	lb	zero,0(s2)
    1f86:	0100                	.insn	2, 0x0100
    1f88:	0200                	.insn	2, 0x0200
    1f8a:	5504                	.insn	2, 0x5504
    1f8c:	10090003          	lb	zero,256(s2)
    1f90:	0100                	.insn	2, 0x0100
    1f92:	0200                	.insn	2, 0x0200
    1f94:	5504                	.insn	2, 0x5504
    1f96:	00090003          	lb	zero,0(s2)
    1f9a:	0100                	.insn	2, 0x0100
    1f9c:	0200                	.insn	2, 0x0200
    1f9e:	5504                	.insn	2, 0x5504
    1fa0:	00090003          	lb	zero,0(s2)
    1fa4:	0100                	.insn	2, 0x0100
    1fa6:	0200                	.insn	2, 0x0200
    1fa8:	4704                	.insn	2, 0x4704
    1faa:	0306                	.insn	2, 0x0306
    1fac:	0900                	.insn	2, 0x0900
    1fae:	0000                	.insn	2, 0x
    1fb0:	0301                	.insn	2, 0x0301
    1fb2:	0900                	.insn	2, 0x0900
    1fb4:	0004                	.insn	2, 0x0004
    1fb6:	0001                	.insn	2, 0x0001
    1fb8:	0402                	.insn	2, 0x0402
    1fba:	061d                	.insn	2, 0x061d
    1fbc:	04090003          	lb	zero,64(s2)
    1fc0:	0100                	.insn	2, 0x0100
    1fc2:	0300                	.insn	2, 0x0300
    1fc4:	de04                	.insn	2, 0xde04
    1fc6:	0301                	.insn	2, 0x0301
    1fc8:	0900                	.insn	2, 0x0900
    1fca:	0008                	.insn	2, 0x0008
    1fcc:	0001                	.insn	2, 0x0001
    1fce:	01de0403          	lb	s0,29(t3)
    1fd2:	00090003          	lb	zero,0(s2)
    1fd6:	0100                	.insn	2, 0x0100
    1fd8:	0300                	.insn	2, 0x0300
    1fda:	e004                	.insn	2, 0xe004
    1fdc:	0601                	.insn	2, 0x0601
    1fde:	00090003          	lb	zero,0(s2)
    1fe2:	0100                	.insn	2, 0x0100
    1fe4:	0300                	.insn	2, 0x0300
    1fe6:	e204                	.insn	2, 0xe204
    1fe8:	0301                	.insn	2, 0x0301
    1fea:	0900                	.insn	2, 0x0900
    1fec:	0008                	.insn	2, 0x0008
    1fee:	0001                	.insn	2, 0x0001
    1ff0:	01e60403          	lb	s0,30(a2)
    1ff4:	10090003          	lb	zero,256(s2)
    1ff8:	0100                	.insn	2, 0x0100
    1ffa:	0200                	.insn	2, 0x0200
    1ffc:	1104                	.insn	2, 0x1104
    1ffe:	0306                	.insn	2, 0x0306
    2000:	0900                	.insn	2, 0x0900
    2002:	000c                	.insn	2, 0x000c
    2004:	0001                	.insn	2, 0x0001
    2006:	01e90403          	lb	s0,30(s2)
    200a:	08090003          	lb	zero,128(s2)
    200e:	0100                	.insn	2, 0x0100
    2010:	0300                	.insn	2, 0x0300
    2012:	e904                	.insn	2, 0xe904
    2014:	0301                	.insn	2, 0x0301
    2016:	0900                	.insn	2, 0x0900
    2018:	0000                	.insn	2, 0x
    201a:	0001                	.insn	2, 0x0001
    201c:	01eb0403          	lb	s0,30(s6)
    2020:	0306                	.insn	2, 0x0306
    2022:	0900                	.insn	2, 0x0900
    2024:	0000                	.insn	2, 0x
    2026:	0001                	.insn	2, 0x0001
    2028:	01ed0403          	lb	s0,30(s10)
    202c:	08090003          	lb	zero,128(s2)
    2030:	0100                	.insn	2, 0x0100
    2032:	0300                	.insn	2, 0x0300
    2034:	f104                	.insn	2, 0xf104
    2036:	0301                	.insn	2, 0x0301
    2038:	0900                	.insn	2, 0x0900
    203a:	000c                	.insn	2, 0x000c
    203c:	0001                	.insn	2, 0x0001
    203e:	01cd0403          	lb	s0,28(s10)
    2042:	08090003          	lb	zero,128(s2)
    2046:	0100                	.insn	2, 0x0100
    2048:	0200                	.insn	2, 0x0200
    204a:	2b04                	.insn	2, 0x2b04
    204c:	0306                	.insn	2, 0x0306
    204e:	0900                	.insn	2, 0x0900
    2050:	0008                	.insn	2, 0x0008
    2052:	0001                	.insn	2, 0x0001
    2054:	0402                	.insn	2, 0x0402
    2056:	060c                	.insn	2, 0x060c
    2058:	08090003          	lb	zero,128(s2)
    205c:	0100                	.insn	2, 0x0100
    205e:	0200                	.insn	2, 0x0200
    2060:	3404                	.insn	2, 0x3404
    2062:	0306                	.insn	2, 0x0306
    2064:	0900                	.insn	2, 0x0900
    2066:	0004                	.insn	2, 0x0004
    2068:	0001                	.insn	2, 0x0001
    206a:	0402                	.insn	2, 0x0402
    206c:	0335                	.insn	2, 0x0335
    206e:	0900                	.insn	2, 0x0900
    2070:	0008                	.insn	2, 0x0008
    2072:	0001                	.insn	2, 0x0001
    2074:	0402                	.insn	2, 0x0402
    2076:	09000337          	lui	t1,0x9000
    207a:	0008                	.insn	2, 0x0008
    207c:	0001                	.insn	2, 0x0001
    207e:	0402                	.insn	2, 0x0402
    2080:	063c                	.insn	2, 0x063c
    2082:	10090003          	lb	zero,256(s2)
    2086:	0100                	.insn	2, 0x0100
    2088:	0200                	.insn	2, 0x0200
    208a:	3704                	.insn	2, 0x3704
    208c:	04090003          	lb	zero,64(s2)
    2090:	0100                	.insn	2, 0x0100
    2092:	0200                	.insn	2, 0x0200
    2094:	3c04                	.insn	2, 0x3c04
    2096:	04090003          	lb	zero,64(s2)
    209a:	0100                	.insn	2, 0x0100
    209c:	0200                	.insn	2, 0x0200
    209e:	3e04                	.insn	2, 0x3e04
    20a0:	04090003          	lb	zero,64(s2)
    20a4:	0100                	.insn	2, 0x0100
    20a6:	0200                	.insn	2, 0x0200
    20a8:	3e04                	.insn	2, 0x3e04
    20aa:	0306                	.insn	2, 0x0306
    20ac:	0900                	.insn	2, 0x0900
    20ae:	0004                	.insn	2, 0x0004
    20b0:	0001                	.insn	2, 0x0001
    20b2:	0402                	.insn	2, 0x0402
    20b4:	0345                	.insn	2, 0x0345
    20b6:	0900                	.insn	2, 0x0900
    20b8:	0004                	.insn	2, 0x0004
    20ba:	0001                	.insn	2, 0x0001
    20bc:	0402                	.insn	2, 0x0402
    20be:	0345                	.insn	2, 0x0345
    20c0:	0900                	.insn	2, 0x0900
    20c2:	0000                	.insn	2, 0x
    20c4:	0001                	.insn	2, 0x0001
    20c6:	0402                	.insn	2, 0x0402
    20c8:	0345                	.insn	2, 0x0345
    20ca:	0900                	.insn	2, 0x0900
    20cc:	0000                	.insn	2, 0x
    20ce:	0001                	.insn	2, 0x0001
    20d0:	0402                	.insn	2, 0x0402
    20d2:	0345                	.insn	2, 0x0345
    20d4:	0900                	.insn	2, 0x0900
    20d6:	0010                	.insn	2, 0x0010
    20d8:	0001                	.insn	2, 0x0001
    20da:	0402                	.insn	2, 0x0402
    20dc:	0345                	.insn	2, 0x0345
    20de:	0900                	.insn	2, 0x0900
    20e0:	0004                	.insn	2, 0x0004
    20e2:	0001                	.insn	2, 0x0001
    20e4:	0402                	.insn	2, 0x0402
    20e6:	0345                	.insn	2, 0x0345
    20e8:	0900                	.insn	2, 0x0900
    20ea:	0000                	.insn	2, 0x
    20ec:	0001                	.insn	2, 0x0001
    20ee:	0402                	.insn	2, 0x0402
    20f0:	060e                	.insn	2, 0x060e
    20f2:	00090003          	lb	zero,0(s2)
    20f6:	0100                	.insn	2, 0x0100
    20f8:	0200                	.insn	2, 0x0200
    20fa:	7f04                	.insn	2, 0x7f04
    20fc:	0306                	.insn	2, 0x0306
    20fe:	0900                	.insn	2, 0x0900
    2100:	0004                	.insn	2, 0x0004
    2102:	0601                	.insn	2, 0x0601
    2104:	04090003          	lb	zero,64(s2)
    2108:	0100                	.insn	2, 0x0100
    210a:	0200                	.insn	2, 0x0200
    210c:	7f04                	.insn	2, 0x7f04
    210e:	04090003          	lb	zero,64(s2)
    2112:	0100                	.insn	2, 0x0100
    2114:	0300                	.insn	2, 0x0300
    2116:	bb04                	.insn	2, 0xbb04
    2118:	0601                	.insn	2, 0x0601
    211a:	04090003          	lb	zero,64(s2)
    211e:	0100                	.insn	2, 0x0100
    2120:	0300                	.insn	2, 0x0300
    2122:	bb04                	.insn	2, 0xbb04
    2124:	0301                	.insn	2, 0x0301
    2126:	0900                	.insn	2, 0x0900
    2128:	0000                	.insn	2, 0x
    212a:	0001                	.insn	2, 0x0001
    212c:	01bb0403          	lb	s0,27(s6)
    2130:	04090003          	lb	zero,64(s2)
    2134:	0100                	.insn	2, 0x0100
    2136:	0300                	.insn	2, 0x0300
    2138:	bb04                	.insn	2, 0xbb04
    213a:	0301                	.insn	2, 0x0301
    213c:	0900                	.insn	2, 0x0900
    213e:	0000                	.insn	2, 0x
    2140:	0001                	.insn	2, 0x0001
    2142:	01bb0403          	lb	s0,27(s6)
    2146:	00090003          	lb	zero,0(s2)
    214a:	0100                	.insn	2, 0x0100
    214c:	0300                	.insn	2, 0x0300
    214e:	bb04                	.insn	2, 0xbb04
    2150:	0301                	.insn	2, 0x0301
    2152:	0900                	.insn	2, 0x0900
    2154:	0000                	.insn	2, 0x
    2156:	0001                	.insn	2, 0x0001
    2158:	0402                	.insn	2, 0x0402
    215a:	0338                	.insn	2, 0x0338
    215c:	0900                	.insn	2, 0x0900
    215e:	0030                	.insn	2, 0x0030
    2160:	0001                	.insn	2, 0x0001
    2162:	0402                	.insn	2, 0x0402
    2164:	0640                	.insn	2, 0x0640
    2166:	0c090003          	lb	zero,192(s2)
    216a:	0100                	.insn	2, 0x0100
    216c:	0200                	.insn	2, 0x0200
    216e:	3804                	.insn	2, 0x3804
    2170:	04090003          	lb	zero,64(s2)
    2174:	0100                	.insn	2, 0x0100
    2176:	0200                	.insn	2, 0x0200
    2178:	3f04                	.insn	2, 0x3f04
    217a:	04090003          	lb	zero,64(s2)
    217e:	0100                	.insn	2, 0x0100
    2180:	0200                	.insn	2, 0x0200
    2182:	4204                	.insn	2, 0x4204
    2184:	0c090003          	lb	zero,192(s2)
    2188:	0100                	.insn	2, 0x0100
    218a:	0200                	.insn	2, 0x0200
    218c:	4204                	.insn	2, 0x4204
    218e:	0306                	.insn	2, 0x0306
    2190:	0900                	.insn	2, 0x0900
    2192:	000c                	.insn	2, 0x000c
    2194:	0001                	.insn	2, 0x0001
    2196:	0402                	.insn	2, 0x0402
    2198:	0336                	.insn	2, 0x0336
    219a:	0900                	.insn	2, 0x0900
    219c:	0008                	.insn	2, 0x0008
    219e:	0001                	.insn	2, 0x0001
    21a0:	0402                	.insn	2, 0x0402
    21a2:	0900030f          	.insn	4, 0x0900030f
    21a6:	000c                	.insn	2, 0x000c
    21a8:	0001                	.insn	2, 0x0001
    21aa:	0402                	.insn	2, 0x0402
    21ac:	09000347          	fmsub.s	ft6,ft0,fa6,ft1,rne
    21b0:	0004                	.insn	2, 0x0004
    21b2:	0001                	.insn	2, 0x0001
    21b4:	0402                	.insn	2, 0x0402
    21b6:	09000347          	fmsub.s	ft6,ft0,fa6,ft1,rne
    21ba:	0004                	.insn	2, 0x0004
    21bc:	0001                	.insn	2, 0x0001
    21be:	0402                	.insn	2, 0x0402
    21c0:	09000347          	fmsub.s	ft6,ft0,fa6,ft1,rne
    21c4:	0000                	.insn	2, 0x
    21c6:	0001                	.insn	2, 0x0001
    21c8:	0402                	.insn	2, 0x0402
    21ca:	0349                	.insn	2, 0x0349
    21cc:	0900                	.insn	2, 0x0900
    21ce:	0004                	.insn	2, 0x0004
    21d0:	0001                	.insn	2, 0x0001
    21d2:	0402                	.insn	2, 0x0402
    21d4:	0900034b          	fnmsub.s	ft6,ft0,fa6,ft1,rne
    21d8:	0008                	.insn	2, 0x0008
    21da:	0001                	.insn	2, 0x0001
    21dc:	0402                	.insn	2, 0x0402
    21de:	0900034b          	fnmsub.s	ft6,ft0,fa6,ft1,rne
    21e2:	0000                	.insn	2, 0x
    21e4:	0001                	.insn	2, 0x0001
    21e6:	0402                	.insn	2, 0x0402
    21e8:	064d                	.insn	2, 0x064d
    21ea:	08090003          	lb	zero,128(s2)
    21ee:	0100                	.insn	2, 0x0100
    21f0:	0200                	.insn	2, 0x0200
    21f2:	4f04                	.insn	2, 0x4f04
    21f4:	08090003          	lb	zero,128(s2)
    21f8:	0100                	.insn	2, 0x0100
    21fa:	0300                	.insn	2, 0x0300
    21fc:	aa04                	.insn	2, 0xaa04
    21fe:	00030603          	lb	a2,0(t1) # 9000000 <_tbss_end+0x9000000>
    2202:	1009                	.insn	2, 0x1009
    2204:	0100                	.insn	2, 0x0100
    2206:	0300                	.insn	2, 0x0300
    2208:	aa04                	.insn	2, 0xaa04
    220a:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    220e:	0000                	.insn	2, 0x
    2210:	0001                	.insn	2, 0x0001
    2212:	03aa0403          	lb	s0,58(s4)
    2216:	00090003          	lb	zero,0(s2)
    221a:	0100                	.insn	2, 0x0100
    221c:	00090103          	lb	sp,0(s2)
    2220:	0100                	.insn	2, 0x0100
    2222:	00090003          	lb	zero,0(s2)
    2226:	0100                	.insn	2, 0x0100
    2228:	00090003          	lb	zero,0(s2)
    222c:	0100                	.insn	2, 0x0100
    222e:	0200                	.insn	2, 0x0200
    2230:	0604                	.insn	2, 0x0604
    2232:	0306                	.insn	2, 0x0306
    2234:	0900                	.insn	2, 0x0900
    2236:	0008                	.insn	2, 0x0008
    2238:	0001                	.insn	2, 0x0001
    223a:	0402                	.insn	2, 0x0402
    223c:	064c                	.insn	2, 0x064c
    223e:	08097f03          	.insn	4, 0x08097f03
    2242:	0100                	.insn	2, 0x0100
    2244:	0200                	.insn	2, 0x0200
    2246:	4c04                	.insn	2, 0x4c04
    2248:	00090003          	lb	zero,0(s2)
    224c:	0100                	.insn	2, 0x0100
    224e:	0200                	.insn	2, 0x0200
    2250:	4c04                	.insn	2, 0x4c04
    2252:	04090003          	lb	zero,64(s2)
    2256:	0100                	.insn	2, 0x0100
    2258:	0200                	.insn	2, 0x0200
    225a:	5604                	.insn	2, 0x5604
    225c:	04090003          	lb	zero,64(s2)
    2260:	0100                	.insn	2, 0x0100
    2262:	0200                	.insn	2, 0x0200
    2264:	6d04                	.insn	2, 0x6d04
    2266:	08090003          	lb	zero,128(s2)
    226a:	0100                	.insn	2, 0x0100
    226c:	0200                	.insn	2, 0x0200
    226e:	6e04                	.insn	2, 0x6e04
    2270:	08090003          	lb	zero,128(s2)
    2274:	0100                	.insn	2, 0x0100
    2276:	0200                	.insn	2, 0x0200
    2278:	7004                	.insn	2, 0x7004
    227a:	08090003          	lb	zero,128(s2)
    227e:	0100                	.insn	2, 0x0100
    2280:	0200                	.insn	2, 0x0200
    2282:	7504                	.insn	2, 0x7504
    2284:	0306                	.insn	2, 0x0306
    2286:	0900                	.insn	2, 0x0900
    2288:	0010                	.insn	2, 0x0010
    228a:	0001                	.insn	2, 0x0001
    228c:	0402                	.insn	2, 0x0402
    228e:	0370                	.insn	2, 0x0370
    2290:	0900                	.insn	2, 0x0900
    2292:	0004                	.insn	2, 0x0004
    2294:	0001                	.insn	2, 0x0001
    2296:	0402                	.insn	2, 0x0402
    2298:	0375                	.insn	2, 0x0375
    229a:	0900                	.insn	2, 0x0900
    229c:	0004                	.insn	2, 0x0004
    229e:	0001                	.insn	2, 0x0001
    22a0:	0402                	.insn	2, 0x0402
    22a2:	09000377          	.insn	4, 0x09000377
    22a6:	0004                	.insn	2, 0x0004
    22a8:	0001                	.insn	2, 0x0001
    22aa:	0402                	.insn	2, 0x0402
    22ac:	00030677          	.insn	4, 0x00030677
    22b0:	0409                	.insn	2, 0x0409
    22b2:	0100                	.insn	2, 0x0100
    22b4:	0200                	.insn	2, 0x0200
    22b6:	7e04                	.insn	2, 0x7e04
    22b8:	04090003          	lb	zero,64(s2)
    22bc:	0100                	.insn	2, 0x0100
    22be:	0200                	.insn	2, 0x0200
    22c0:	7e04                	.insn	2, 0x7e04
    22c2:	00090003          	lb	zero,0(s2)
    22c6:	0100                	.insn	2, 0x0100
    22c8:	0200                	.insn	2, 0x0200
    22ca:	7e04                	.insn	2, 0x7e04
    22cc:	00090003          	lb	zero,0(s2)
    22d0:	0100                	.insn	2, 0x0100
    22d2:	0200                	.insn	2, 0x0200
    22d4:	7e04                	.insn	2, 0x7e04
    22d6:	00090003          	lb	zero,0(s2)
    22da:	0100                	.insn	2, 0x0100
    22dc:	0200                	.insn	2, 0x0200
    22de:	7e04                	.insn	2, 0x7e04
    22e0:	10090003          	lb	zero,256(s2)
    22e4:	0100                	.insn	2, 0x0100
    22e6:	0200                	.insn	2, 0x0200
    22e8:	7e04                	.insn	2, 0x7e04
    22ea:	00090003          	lb	zero,0(s2)
    22ee:	0100                	.insn	2, 0x0100
    22f0:	0200                	.insn	2, 0x0200
    22f2:	4704                	.insn	2, 0x4704
    22f4:	0306                	.insn	2, 0x0306
    22f6:	0900                	.insn	2, 0x0900
    22f8:	0000                	.insn	2, 0x
    22fa:	0001                	.insn	2, 0x0001
    22fc:	0402                	.insn	2, 0x0402
    22fe:	064a                	.insn	2, 0x064a
    2300:	08090003          	lb	zero,128(s2)
    2304:	0100                	.insn	2, 0x0100
    2306:	0200                	.insn	2, 0x0200
    2308:	6304                	.insn	2, 0x6304
    230a:	08090003          	lb	zero,128(s2)
    230e:	0100                	.insn	2, 0x0100
    2310:	0200                	.insn	2, 0x0200
    2312:	6304                	.insn	2, 0x6304
    2314:	00090003          	lb	zero,0(s2)
    2318:	0100                	.insn	2, 0x0100
    231a:	0200                	.insn	2, 0x0200
    231c:	6504                	.insn	2, 0x6504
    231e:	0306                	.insn	2, 0x0306
    2320:	0900                	.insn	2, 0x0900
    2322:	0000                	.insn	2, 0x
    2324:	0001                	.insn	2, 0x0001
    2326:	0402                	.insn	2, 0x0402
    2328:	09000367          	jalr	t1,144(zero) # 90 <_tbss_end+0x90>
    232c:	0008                	.insn	2, 0x0008
    232e:	0001                	.insn	2, 0x0001
    2330:	02e10403          	lb	s0,46(sp)
    2334:	10090003          	lb	zero,256(s2)
    2338:	0100                	.insn	2, 0x0100
    233a:	0200                	.insn	2, 0x0200
    233c:	6404                	.insn	2, 0x6404
    233e:	0306                	.insn	2, 0x0306
    2340:	0900                	.insn	2, 0x0900
    2342:	0008                	.insn	2, 0x0008
    2344:	0001                	.insn	2, 0x0001
    2346:	0402                	.insn	2, 0x0402
    2348:	00030647          	fmsub.s	fa2,ft6,ft0,ft0,rne
    234c:	0809                	.insn	2, 0x0809
    234e:	0100                	.insn	2, 0x0100
    2350:	0200                	.insn	2, 0x0200
    2352:	7104                	.insn	2, 0x7104
    2354:	0306                	.insn	2, 0x0306
    2356:	0900                	.insn	2, 0x0900
    2358:	0008                	.insn	2, 0x0008
    235a:	0001                	.insn	2, 0x0001
    235c:	0402                	.insn	2, 0x0402
    235e:	0679                	.insn	2, 0x0679
    2360:	0c090003          	lb	zero,192(s2)
    2364:	0100                	.insn	2, 0x0100
    2366:	0200                	.insn	2, 0x0200
    2368:	7104                	.insn	2, 0x7104
    236a:	04090003          	lb	zero,64(s2)
    236e:	0100                	.insn	2, 0x0100
    2370:	0200                	.insn	2, 0x0200
    2372:	7804                	.insn	2, 0x7804
    2374:	04090003          	lb	zero,64(s2)
    2378:	0100                	.insn	2, 0x0100
    237a:	0200                	.insn	2, 0x0200
    237c:	7b04                	.insn	2, 0x7b04
    237e:	0c090003          	lb	zero,192(s2)
    2382:	0100                	.insn	2, 0x0100
    2384:	0200                	.insn	2, 0x0200
    2386:	7b04                	.insn	2, 0x7b04
    2388:	0306                	.insn	2, 0x0306
    238a:	0900                	.insn	2, 0x0900
    238c:	000c                	.insn	2, 0x000c
    238e:	0001                	.insn	2, 0x0001
    2390:	0402                	.insn	2, 0x0402
    2392:	0900036f          	jal	t1,2422 <_tbss_end+0x2422>
    2396:	0008                	.insn	2, 0x0008
    2398:	0001                	.insn	2, 0x0001
    239a:	0402                	.insn	2, 0x0402
    239c:	0348                	.insn	2, 0x0348
    239e:	0900                	.insn	2, 0x0900
    23a0:	000c                	.insn	2, 0x000c
    23a2:	0001                	.insn	2, 0x0001
    23a4:	01800403          	lb	s0,24(zero) # 18 <_tbss_end+0x18>
    23a8:	0c090003          	lb	zero,192(s2)
    23ac:	0100                	.insn	2, 0x0100
    23ae:	0200                	.insn	2, 0x0200
    23b0:	1404                	.insn	2, 0x1404
    23b2:	0306                	.insn	2, 0x0306
    23b4:	0900                	.insn	2, 0x0900
    23b6:	0000                	.insn	2, 0x
    23b8:	0001                	.insn	2, 0x0001
    23ba:	01800403          	lb	s0,24(zero) # 18 <_tbss_end+0x18>
    23be:	04090003          	lb	zero,64(s2)
    23c2:	0100                	.insn	2, 0x0100
    23c4:	0300                	.insn	2, 0x0300
    23c6:	8204                	.insn	2, 0x8204
    23c8:	0601                	.insn	2, 0x0601
    23ca:	04090003          	lb	zero,64(s2)
    23ce:	0100                	.insn	2, 0x0100
    23d0:	0300                	.insn	2, 0x0300
    23d2:	8204                	.insn	2, 0x8204
    23d4:	0301                	.insn	2, 0x0301
    23d6:	0900                	.insn	2, 0x0900
    23d8:	0000                	.insn	2, 0x
    23da:	0001                	.insn	2, 0x0001
    23dc:	01850403          	lb	s0,24(a0)
    23e0:	04090003          	lb	zero,64(s2)
    23e4:	0100                	.insn	2, 0x0100
    23e6:	0200                	.insn	2, 0x0200
    23e8:	0204                	.insn	2, 0x0204
    23ea:	0306                	.insn	2, 0x0306
    23ec:	0900                	.insn	2, 0x0900
    23ee:	0000                	.insn	2, 0x
    23f0:	0001                	.insn	2, 0x0001
    23f2:	01850403          	lb	s0,24(a0)
    23f6:	04090003          	lb	zero,64(s2)
    23fa:	0100                	.insn	2, 0x0100
    23fc:	0300                	.insn	2, 0x0300
    23fe:	8b04                	.insn	2, 0x8b04
    2400:	0601                	.insn	2, 0x0601
    2402:	04090003          	lb	zero,64(s2)
    2406:	0100                	.insn	2, 0x0100
    2408:	0300                	.insn	2, 0x0300
    240a:	8b04                	.insn	2, 0x8b04
    240c:	0301                	.insn	2, 0x0301
    240e:	0900                	.insn	2, 0x0900
    2410:	0000                	.insn	2, 0x
    2412:	0001                	.insn	2, 0x0001
    2414:	018b0403          	lb	s0,24(s6)
    2418:	00090003          	lb	zero,0(s2)
    241c:	0100                	.insn	2, 0x0100
    241e:	0300                	.insn	2, 0x0300
    2420:	8b04                	.insn	2, 0x8b04
    2422:	0301                	.insn	2, 0x0301
    2424:	0900                	.insn	2, 0x0900
    2426:	0000                	.insn	2, 0x
    2428:	0001                	.insn	2, 0x0001
    242a:	018b0403          	lb	s0,24(s6)
    242e:	00090003          	lb	zero,0(s2)
    2432:	0100                	.insn	2, 0x0100
    2434:	0300                	.insn	2, 0x0300
    2436:	8b04                	.insn	2, 0x8b04
    2438:	0301                	.insn	2, 0x0301
    243a:	0900                	.insn	2, 0x0900
    243c:	0010                	.insn	2, 0x0010
    243e:	0001                	.insn	2, 0x0001
    2440:	018b0403          	lb	s0,24(s6)
    2444:	00090003          	lb	zero,0(s2)
    2448:	0100                	.insn	2, 0x0100
    244a:	0300                	.insn	2, 0x0300
    244c:	8b04                	.insn	2, 0x8b04
    244e:	0301                	.insn	2, 0x0301
    2450:	0900                	.insn	2, 0x0900
    2452:	0000                	.insn	2, 0x
    2454:	0001                	.insn	2, 0x0001
    2456:	018d0403          	lb	s0,24(s10)
    245a:	08090003          	lb	zero,128(s2)
    245e:	0100                	.insn	2, 0x0100
    2460:	0300                	.insn	2, 0x0300
    2462:	8d04                	.insn	2, 0x8d04
    2464:	0301                	.insn	2, 0x0301
    2466:	0900                	.insn	2, 0x0900
    2468:	000c                	.insn	2, 0x000c
    246a:	0001                	.insn	2, 0x0001
    246c:	01830403          	lb	s0,24(t1)
    2470:	08090003          	lb	zero,128(s2)
    2474:	0100                	.insn	2, 0x0100
    2476:	0300                	.insn	2, 0x0300
    2478:	8304                	.insn	2, 0x8304
    247a:	0301                	.insn	2, 0x0301
    247c:	0900                	.insn	2, 0x0900
    247e:	0000                	.insn	2, 0x
    2480:	0001                	.insn	2, 0x0001
    2482:	01910403          	lb	s0,25(sp)
    2486:	0306                	.insn	2, 0x0306
    2488:	0900                	.insn	2, 0x0900
    248a:	0008                	.insn	2, 0x0008
    248c:	0001                	.insn	2, 0x0001
    248e:	01930403          	lb	s0,25(t1)
    2492:	04090003          	lb	zero,64(s2)
    2496:	0100                	.insn	2, 0x0100
    2498:	0300                	.insn	2, 0x0300
    249a:	9704                	.insn	2, 0x9704
    249c:	0601                	.insn	2, 0x0601
    249e:	10090003          	lb	zero,256(s2)
    24a2:	0100                	.insn	2, 0x0100
    24a4:	0300                	.insn	2, 0x0300
    24a6:	9704                	.insn	2, 0x9704
    24a8:	0301                	.insn	2, 0x0301
    24aa:	0900                	.insn	2, 0x0900
    24ac:	0000                	.insn	2, 0x
    24ae:	0001                	.insn	2, 0x0001
    24b0:	01970403          	lb	s0,25(a4)
    24b4:	00090003          	lb	zero,0(s2)
    24b8:	0100                	.insn	2, 0x0100
    24ba:	0300                	.insn	2, 0x0300
    24bc:	9804                	.insn	2, 0x9804
    24be:	0601                	.insn	2, 0x0601
    24c0:	04090003          	lb	zero,64(s2)
    24c4:	0100                	.insn	2, 0x0100
    24c6:	0300                	.insn	2, 0x0300
    24c8:	9a04                	.insn	2, 0x9a04
    24ca:	0301                	.insn	2, 0x0301
    24cc:	0900                	.insn	2, 0x0900
    24ce:	0008                	.insn	2, 0x0008
    24d0:	0001                	.insn	2, 0x0001
    24d2:	019c0403          	lb	s0,25(s8)
    24d6:	08090003          	lb	zero,128(s2)
    24da:	0100                	.insn	2, 0x0100
    24dc:	0300                	.insn	2, 0x0300
    24de:	9704                	.insn	2, 0x9704
    24e0:	0601                	.insn	2, 0x0601
    24e2:	08090003          	lb	zero,128(s2)
    24e6:	0100                	.insn	2, 0x0100
    24e8:	0300                	.insn	2, 0x0300
    24ea:	9704                	.insn	2, 0x9704
    24ec:	0301                	.insn	2, 0x0301
    24ee:	0900                	.insn	2, 0x0900
    24f0:	0000                	.insn	2, 0x
    24f2:	0001                	.insn	2, 0x0001
    24f4:	01970403          	lb	s0,25(a4)
    24f8:	00090003          	lb	zero,0(s2)
    24fc:	0100                	.insn	2, 0x0100
    24fe:	0300                	.insn	2, 0x0300
    2500:	9e04                	.insn	2, 0x9e04
    2502:	0301                	.insn	2, 0x0301
    2504:	0900                	.insn	2, 0x0900
    2506:	0008                	.insn	2, 0x0008
    2508:	0001                	.insn	2, 0x0001
    250a:	019e0403          	lb	s0,25(t3)
    250e:	00090003          	lb	zero,0(s2)
    2512:	0100                	.insn	2, 0x0100
    2514:	0300                	.insn	2, 0x0300
    2516:	9e04                	.insn	2, 0x9e04
    2518:	0301                	.insn	2, 0x0301
    251a:	0900                	.insn	2, 0x0900
    251c:	0000                	.insn	2, 0x
    251e:	0001                	.insn	2, 0x0001
    2520:	01a00403          	lb	s0,26(zero) # 1a <_tbss_end+0x1a>
    2524:	08090003          	lb	zero,128(s2)
    2528:	0100                	.insn	2, 0x0100
    252a:	0300                	.insn	2, 0x0300
    252c:	ea04                	.insn	2, 0xea04
    252e:	0602                	.insn	2, 0x0602
    2530:	08090003          	lb	zero,128(s2)
    2534:	0100                	.insn	2, 0x0100
    2536:	0300                	.insn	2, 0x0300
    2538:	8104                	.insn	2, 0x8104
    253a:	0601                	.insn	2, 0x0601
    253c:	0c090003          	lb	zero,192(s2)
    2540:	0100                	.insn	2, 0x0100
    2542:	0300                	.insn	2, 0x0300
    2544:	8104                	.insn	2, 0x8104
    2546:	0301                	.insn	2, 0x0301
    2548:	0900                	.insn	2, 0x0900
    254a:	0000                	.insn	2, 0x
    254c:	0001                	.insn	2, 0x0001
    254e:	01810403          	lb	s0,24(sp)
    2552:	00090003          	lb	zero,0(s2)
    2556:	0100                	.insn	2, 0x0100
    2558:	0300                	.insn	2, 0x0300
    255a:	8104                	.insn	2, 0x8104
    255c:	0301                	.insn	2, 0x0301
    255e:	0900                	.insn	2, 0x0900
    2560:	0000                	.insn	2, 0x
    2562:	0001                	.insn	2, 0x0001
    2564:	01810403          	lb	s0,24(sp)
    2568:	00090003          	lb	zero,0(s2)
    256c:	0100                	.insn	2, 0x0100
    256e:	0300                	.insn	2, 0x0300
    2570:	8104                	.insn	2, 0x8104
    2572:	0301                	.insn	2, 0x0301
    2574:	0900                	.insn	2, 0x0900
    2576:	0000                	.insn	2, 0x
    2578:	0001                	.insn	2, 0x0001
    257a:	01810403          	lb	s0,24(sp)
    257e:	00090003          	lb	zero,0(s2)
    2582:	0100                	.insn	2, 0x0100
    2584:	0300                	.insn	2, 0x0300
    2586:	8104                	.insn	2, 0x8104
    2588:	0301                	.insn	2, 0x0301
    258a:	0900                	.insn	2, 0x0900
    258c:	0000                	.insn	2, 0x
    258e:	0001                	.insn	2, 0x0001
    2590:	01810403          	lb	s0,24(sp)
    2594:	00090003          	lb	zero,0(s2)
    2598:	0100                	.insn	2, 0x0100
    259a:	0300                	.insn	2, 0x0300
    259c:	8104                	.insn	2, 0x8104
    259e:	0301                	.insn	2, 0x0301
    25a0:	0900                	.insn	2, 0x0900
    25a2:	0000                	.insn	2, 0x
    25a4:	0001                	.insn	2, 0x0001
    25a6:	01810403          	lb	s0,24(sp)
    25aa:	00090003          	lb	zero,0(s2)
    25ae:	0100                	.insn	2, 0x0100
    25b0:	0300                	.insn	2, 0x0300
    25b2:	8b04                	.insn	2, 0x8b04
    25b4:	0602                	.insn	2, 0x0602
    25b6:	28090003          	lb	zero,640(s2)
    25ba:	0100                	.insn	2, 0x0100
    25bc:	0300                	.insn	2, 0x0300
    25be:	ab04                	.insn	2, 0xab04
    25c0:	0601                	.insn	2, 0x0601
    25c2:	08090003          	lb	zero,128(s2)
    25c6:	0100                	.insn	2, 0x0100
    25c8:	0300                	.insn	2, 0x0300
    25ca:	ab04                	.insn	2, 0xab04
    25cc:	0301                	.insn	2, 0x0301
    25ce:	0900                	.insn	2, 0x0900
    25d0:	0000                	.insn	2, 0x
    25d2:	0001                	.insn	2, 0x0001
    25d4:	01ae0403          	lb	s0,26(t3)
    25d8:	0306                	.insn	2, 0x0306
    25da:	0900                	.insn	2, 0x0900
    25dc:	0004                	.insn	2, 0x0004
    25de:	0001                	.insn	2, 0x0001
    25e0:	01af0403          	lb	s0,26(t5)
    25e4:	08090003          	lb	zero,128(s2)
    25e8:	0100                	.insn	2, 0x0100
    25ea:	0300                	.insn	2, 0x0300
    25ec:	b604                	.insn	2, 0xb604
    25ee:	0301                	.insn	2, 0x0301
    25f0:	0900                	.insn	2, 0x0900
    25f2:	0004                	.insn	2, 0x0004
    25f4:	0001                	.insn	2, 0x0001
    25f6:	01b20403          	lb	s0,27(tp) # 1b <_tbss_end+0x1b>
    25fa:	10090003          	lb	zero,256(s2)
    25fe:	0100                	.insn	2, 0x0100
    2600:	0300                	.insn	2, 0x0300
    2602:	b304                	.insn	2, 0xb304
    2604:	0301                	.insn	2, 0x0301
    2606:	0900                	.insn	2, 0x0900
    2608:	0008                	.insn	2, 0x0008
    260a:	0001                	.insn	2, 0x0001
    260c:	01b50403          	lb	s0,27(a0)
    2610:	04090003          	lb	zero,64(s2)
    2614:	0100                	.insn	2, 0x0100
    2616:	0300                	.insn	2, 0x0300
    2618:	bd04                	.insn	2, 0xbd04
    261a:	0601                	.insn	2, 0x0601
    261c:	08090003          	lb	zero,128(s2)
    2620:	0100                	.insn	2, 0x0100
    2622:	0300                	.insn	2, 0x0300
    2624:	bd04                	.insn	2, 0xbd04
    2626:	0301                	.insn	2, 0x0301
    2628:	0900                	.insn	2, 0x0900
    262a:	0000                	.insn	2, 0x
    262c:	0001                	.insn	2, 0x0001
    262e:	01c00403          	lb	s0,28(zero) # 1c <_tbss_end+0x1c>
    2632:	0306                	.insn	2, 0x0306
    2634:	0900                	.insn	2, 0x0900
    2636:	0004                	.insn	2, 0x0004
    2638:	0001                	.insn	2, 0x0001
    263a:	01c10403          	lb	s0,28(sp)
    263e:	08090003          	lb	zero,128(s2)
    2642:	0100                	.insn	2, 0x0100
    2644:	0300                	.insn	2, 0x0300
    2646:	b504                	.insn	2, 0xb504
    2648:	0301                	.insn	2, 0x0301
    264a:	0900                	.insn	2, 0x0900
    264c:	0004                	.insn	2, 0x0004
    264e:	0001                	.insn	2, 0x0001
    2650:	01b80403          	lb	s0,27(a6)
    2654:	08090003          	lb	zero,128(s2)
    2658:	0100                	.insn	2, 0x0100
    265a:	0300                	.insn	2, 0x0300
    265c:	c404                	.insn	2, 0xc404
    265e:	0301                	.insn	2, 0x0301
    2660:	0900                	.insn	2, 0x0900
    2662:	0008                	.insn	2, 0x0008
    2664:	0001                	.insn	2, 0x0001
    2666:	01c50403          	lb	s0,28(a0)
    266a:	08090003          	lb	zero,128(s2)
    266e:	0100                	.insn	2, 0x0100
    2670:	0200                	.insn	2, 0x0200
    2672:	0d04                	.insn	2, 0x0d04
    2674:	0306                	.insn	2, 0x0306
    2676:	0900                	.insn	2, 0x0900
    2678:	0008                	.insn	2, 0x0008
    267a:	0001                	.insn	2, 0x0001
    267c:	0402                	.insn	2, 0x0402
    267e:	030d                	.insn	2, 0x030d
    2680:	0900                	.insn	2, 0x0900
    2682:	0000                	.insn	2, 0x
    2684:	0001                	.insn	2, 0x0001
    2686:	01cd0403          	lb	s0,28(s10)
    268a:	04090003          	lb	zero,64(s2)
    268e:	0100                	.insn	2, 0x0100
    2690:	0300                	.insn	2, 0x0300
    2692:	cd04                	.insn	2, 0xcd04
    2694:	0301                	.insn	2, 0x0301
    2696:	0900                	.insn	2, 0x0900
    2698:	0000                	.insn	2, 0x
    269a:	0001                	.insn	2, 0x0001
    269c:	01cd0403          	lb	s0,28(s10)
    26a0:	00090003          	lb	zero,0(s2)
    26a4:	0100                	.insn	2, 0x0100
    26a6:	0300                	.insn	2, 0x0300
    26a8:	cf04                	.insn	2, 0xcf04
    26aa:	0301                	.insn	2, 0x0301
    26ac:	0900                	.insn	2, 0x0900
    26ae:	0004                	.insn	2, 0x0004
    26b0:	0001                	.insn	2, 0x0001
    26b2:	01d20403          	lb	s0,29(tp) # 1d <_tbss_end+0x1d>
    26b6:	08090003          	lb	zero,128(s2)
    26ba:	0100                	.insn	2, 0x0100
    26bc:	0300                	.insn	2, 0x0300
    26be:	d204                	.insn	2, 0xd204
    26c0:	0301                	.insn	2, 0x0301
    26c2:	0900                	.insn	2, 0x0900
    26c4:	0000                	.insn	2, 0x
    26c6:	0001                	.insn	2, 0x0001
    26c8:	01d20403          	lb	s0,29(tp) # 1d <_tbss_end+0x1d>
    26cc:	04090003          	lb	zero,64(s2)
    26d0:	0100                	.insn	2, 0x0100
    26d2:	0300                	.insn	2, 0x0300
    26d4:	db04                	.insn	2, 0xdb04
    26d6:	0301                	.insn	2, 0x0301
    26d8:	0900                	.insn	2, 0x0900
    26da:	0004                	.insn	2, 0x0004
    26dc:	0001                	.insn	2, 0x0001
    26de:	01db0403          	lb	s0,29(s6)
    26e2:	00090003          	lb	zero,0(s2)
    26e6:	0100                	.insn	2, 0x0100
    26e8:	0300                	.insn	2, 0x0300
    26ea:	db04                	.insn	2, 0xdb04
    26ec:	0301                	.insn	2, 0x0301
    26ee:	0900                	.insn	2, 0x0900
    26f0:	0000                	.insn	2, 0x
    26f2:	0001                	.insn	2, 0x0001
    26f4:	01db0403          	lb	s0,29(s6)
    26f8:	00090003          	lb	zero,0(s2)
    26fc:	0100                	.insn	2, 0x0100
    26fe:	0300                	.insn	2, 0x0300
    2700:	db04                	.insn	2, 0xdb04
    2702:	0301                	.insn	2, 0x0301
    2704:	0900                	.insn	2, 0x0900
    2706:	0010                	.insn	2, 0x0010
    2708:	0001                	.insn	2, 0x0001
    270a:	01db0403          	lb	s0,29(s6)
    270e:	00090003          	lb	zero,0(s2)
    2712:	0100                	.insn	2, 0x0100
    2714:	0300                	.insn	2, 0x0300
    2716:	db04                	.insn	2, 0xdb04
    2718:	0301                	.insn	2, 0x0301
    271a:	0900                	.insn	2, 0x0900
    271c:	0000                	.insn	2, 0x
    271e:	0001                	.insn	2, 0x0001
    2720:	02860403          	lb	s0,40(a2)
    2724:	0306                	.insn	2, 0x0306
    2726:	0900                	.insn	2, 0x0900
    2728:	0000                	.insn	2, 0x
    272a:	0301                	.insn	2, 0x0301
    272c:	0900                	.insn	2, 0x0900
    272e:	0004                	.insn	2, 0x0004
    2730:	0001                	.insn	2, 0x0001
    2732:	01dc0403          	lb	s0,29(s8)
    2736:	0306                	.insn	2, 0x0306
    2738:	0900                	.insn	2, 0x0900
    273a:	0004                	.insn	2, 0x0004
    273c:	0001                	.insn	2, 0x0001
    273e:	01f30403          	lb	s0,31(t1)
    2742:	08090003          	lb	zero,128(s2)
    2746:	0100                	.insn	2, 0x0100
    2748:	0300                	.insn	2, 0x0300
    274a:	f404                	.insn	2, 0xf404
    274c:	0301                	.insn	2, 0x0301
    274e:	0900                	.insn	2, 0x0900
    2750:	0008                	.insn	2, 0x0008
    2752:	0001                	.insn	2, 0x0001
    2754:	01f60403          	lb	s0,31(a2)
    2758:	08090003          	lb	zero,128(s2)
    275c:	0100                	.insn	2, 0x0100
    275e:	0300                	.insn	2, 0x0300
    2760:	fb04                	.insn	2, 0xfb04
    2762:	0601                	.insn	2, 0x0601
    2764:	10090003          	lb	zero,256(s2)
    2768:	0100                	.insn	2, 0x0100
    276a:	0300                	.insn	2, 0x0300
    276c:	f604                	.insn	2, 0xf604
    276e:	0301                	.insn	2, 0x0301
    2770:	0900                	.insn	2, 0x0900
    2772:	0004                	.insn	2, 0x0004
    2774:	0001                	.insn	2, 0x0001
    2776:	01fb0403          	lb	s0,31(s6)
    277a:	04090003          	lb	zero,64(s2)
    277e:	0100                	.insn	2, 0x0100
    2780:	0300                	.insn	2, 0x0300
    2782:	fd04                	.insn	2, 0xfd04
    2784:	0301                	.insn	2, 0x0301
    2786:	0900                	.insn	2, 0x0900
    2788:	0004                	.insn	2, 0x0004
    278a:	0001                	.insn	2, 0x0001
    278c:	01fd0403          	lb	s0,31(s10)
    2790:	0306                	.insn	2, 0x0306
    2792:	0900                	.insn	2, 0x0900
    2794:	0004                	.insn	2, 0x0004
    2796:	0001                	.insn	2, 0x0001
    2798:	02840403          	lb	s0,40(s0)
    279c:	04090003          	lb	zero,64(s2)
    27a0:	0100                	.insn	2, 0x0100
    27a2:	0300                	.insn	2, 0x0300
    27a4:	8404                	.insn	2, 0x8404
    27a6:	0302                	.insn	2, 0x0302
    27a8:	0900                	.insn	2, 0x0900
    27aa:	0000                	.insn	2, 0x
    27ac:	0001                	.insn	2, 0x0001
    27ae:	02840403          	lb	s0,40(s0)
    27b2:	00090003          	lb	zero,0(s2)
    27b6:	0100                	.insn	2, 0x0100
    27b8:	0300                	.insn	2, 0x0300
    27ba:	8404                	.insn	2, 0x8404
    27bc:	0302                	.insn	2, 0x0302
    27be:	0900                	.insn	2, 0x0900
    27c0:	0000                	.insn	2, 0x
    27c2:	0001                	.insn	2, 0x0001
    27c4:	02840403          	lb	s0,40(s0)
    27c8:	10090003          	lb	zero,256(s2)
    27cc:	0100                	.insn	2, 0x0100
    27ce:	0300                	.insn	2, 0x0300
    27d0:	8404                	.insn	2, 0x8404
    27d2:	0302                	.insn	2, 0x0302
    27d4:	0900                	.insn	2, 0x0900
    27d6:	0000                	.insn	2, 0x
    27d8:	0001                	.insn	2, 0x0001
    27da:	01cd0403          	lb	s0,28(s10)
    27de:	0306                	.insn	2, 0x0306
    27e0:	0900                	.insn	2, 0x0900
    27e2:	0000                	.insn	2, 0x
    27e4:	0001                	.insn	2, 0x0001
    27e6:	02be0403          	lb	s0,43(t3)
    27ea:	0306                	.insn	2, 0x0306
    27ec:	0900                	.insn	2, 0x0900
    27ee:	0004                	.insn	2, 0x0004
    27f0:	0001                	.insn	2, 0x0001
    27f2:	02fa0403          	lb	s0,47(s4)
    27f6:	08090003          	lb	zero,128(s2)
    27fa:	0100                	.insn	2, 0x0100
    27fc:	0300                	.insn	2, 0x0300
    27fe:	fa04                	.insn	2, 0xfa04
    2800:	0302                	.insn	2, 0x0302
    2802:	0900                	.insn	2, 0x0900
    2804:	0000                	.insn	2, 0x
    2806:	0001                	.insn	2, 0x0001
    2808:	01d00403          	lb	s0,29(zero) # 1d <_tbss_end+0x1d>
    280c:	18090003          	lb	zero,384(s2)
    2810:	0100                	.insn	2, 0x0100
    2812:	0300                	.insn	2, 0x0300
    2814:	ea04                	.insn	2, 0xea04
    2816:	0301                	.insn	2, 0x0301
    2818:	0900                	.insn	2, 0x0900
    281a:	0008                	.insn	2, 0x0008
    281c:	0001                	.insn	2, 0x0001
    281e:	0402                	.insn	2, 0x0402
    2820:	060d                	.insn	2, 0x060d
    2822:	08090003          	lb	zero,128(s2)
    2826:	0100                	.insn	2, 0x0100
    2828:	0300                	.insn	2, 0x0300
    282a:	f704                	.insn	2, 0xf704
    282c:	0601                	.insn	2, 0x0601
    282e:	08090003          	lb	zero,128(s2)
    2832:	0100                	.insn	2, 0x0100
    2834:	0300                	.insn	2, 0x0300
    2836:	ff04                	.insn	2, 0xff04
    2838:	0601                	.insn	2, 0x0601
    283a:	0c090003          	lb	zero,192(s2)
    283e:	0100                	.insn	2, 0x0100
    2840:	0300                	.insn	2, 0x0300
    2842:	f704                	.insn	2, 0xf704
    2844:	0301                	.insn	2, 0x0301
    2846:	0900                	.insn	2, 0x0900
    2848:	0004                	.insn	2, 0x0004
    284a:	0001                	.insn	2, 0x0001
    284c:	01fe0403          	lb	s0,31(t3)
    2850:	04090003          	lb	zero,64(s2)
    2854:	0100                	.insn	2, 0x0100
    2856:	0300                	.insn	2, 0x0300
    2858:	8104                	.insn	2, 0x8104
    285a:	0302                	.insn	2, 0x0302
    285c:	0900                	.insn	2, 0x0900
    285e:	000c                	.insn	2, 0x000c
    2860:	0001                	.insn	2, 0x0001
    2862:	02810403          	lb	s0,40(sp)
    2866:	0306                	.insn	2, 0x0306
    2868:	0900                	.insn	2, 0x0900
    286a:	000c                	.insn	2, 0x000c
    286c:	0001                	.insn	2, 0x0001
    286e:	01f50403          	lb	s0,31(a0)
    2872:	08090003          	lb	zero,128(s2)
    2876:	0100                	.insn	2, 0x0100
    2878:	0300                	.insn	2, 0x0300
    287a:	ce04                	.insn	2, 0xce04
    287c:	0301                	.insn	2, 0x0301
    287e:	0900                	.insn	2, 0x0900
    2880:	000c                	.insn	2, 0x000c
    2882:	0001                	.insn	2, 0x0001
    2884:	02860403          	lb	s0,40(a2)
    2888:	04090003          	lb	zero,64(s2)
    288c:	0100                	.insn	2, 0x0100
    288e:	0300                	.insn	2, 0x0300
    2890:	8604                	.insn	2, 0x8604
    2892:	0302                	.insn	2, 0x0302
    2894:	0900                	.insn	2, 0x0900
    2896:	0004                	.insn	2, 0x0004
    2898:	0001                	.insn	2, 0x0001
    289a:	02860403          	lb	s0,40(a2)
    289e:	00090003          	lb	zero,0(s2)
    28a2:	0100                	.insn	2, 0x0100
    28a4:	0300                	.insn	2, 0x0300
    28a6:	8604                	.insn	2, 0x8604
    28a8:	0302                	.insn	2, 0x0302
    28aa:	0900                	.insn	2, 0x0900
    28ac:	0000                	.insn	2, 0x
    28ae:	0001                	.insn	2, 0x0001
    28b0:	02880403          	lb	s0,40(a6)
    28b4:	04090003          	lb	zero,64(s2)
    28b8:	0100                	.insn	2, 0x0100
    28ba:	0300                	.insn	2, 0x0300
    28bc:	8a04                	.insn	2, 0x8a04
    28be:	0302                	.insn	2, 0x0302
    28c0:	0900                	.insn	2, 0x0900
    28c2:	0008                	.insn	2, 0x0008
    28c4:	0001                	.insn	2, 0x0001
    28c6:	028a0403          	lb	s0,40(s4)
    28ca:	00090003          	lb	zero,0(s2)
    28ce:	0100                	.insn	2, 0x0100
    28d0:	0300                	.insn	2, 0x0300
    28d2:	8604                	.insn	2, 0x8604
    28d4:	0602                	.insn	2, 0x0602
    28d6:	04090003          	lb	zero,64(s2)
    28da:	0100                	.insn	2, 0x0100
    28dc:	0300                	.insn	2, 0x0300
    28de:	8a04                	.insn	2, 0x8a04
    28e0:	0302                	.insn	2, 0x0302
    28e2:	0900                	.insn	2, 0x0900
    28e4:	0004                	.insn	2, 0x0004
    28e6:	0001                	.insn	2, 0x0001
    28e8:	028b0403          	lb	s0,40(s6)
    28ec:	0306                	.insn	2, 0x0306
    28ee:	0900                	.insn	2, 0x0900
    28f0:	0008                	.insn	2, 0x0008
    28f2:	0001                	.insn	2, 0x0001
    28f4:	028b0403          	lb	s0,40(s6)
    28f8:	00090003          	lb	zero,0(s2)
    28fc:	0100                	.insn	2, 0x0100
    28fe:	0300                	.insn	2, 0x0300
    2900:	8b04                	.insn	2, 0x8b04
    2902:	0302                	.insn	2, 0x0302
    2904:	0900                	.insn	2, 0x0900
    2906:	0004                	.insn	2, 0x0004
    2908:	0001                	.insn	2, 0x0001
    290a:	02940403          	lb	s0,41(s0)
    290e:	04090003          	lb	zero,64(s2)
    2912:	0100                	.insn	2, 0x0100
    2914:	0300                	.insn	2, 0x0300
    2916:	9404                	.insn	2, 0x9404
    2918:	0302                	.insn	2, 0x0302
    291a:	0900                	.insn	2, 0x0900
    291c:	0000                	.insn	2, 0x
    291e:	0001                	.insn	2, 0x0001
    2920:	02940403          	lb	s0,41(s0)
    2924:	00090003          	lb	zero,0(s2)
    2928:	0100                	.insn	2, 0x0100
    292a:	0300                	.insn	2, 0x0300
    292c:	9404                	.insn	2, 0x9404
    292e:	0302                	.insn	2, 0x0302
    2930:	0900                	.insn	2, 0x0900
    2932:	0010                	.insn	2, 0x0010
    2934:	0001                	.insn	2, 0x0001
    2936:	02940403          	lb	s0,41(s0)
    293a:	04090003          	lb	zero,64(s2)
    293e:	0100                	.insn	2, 0x0100
    2940:	0300                	.insn	2, 0x0300
    2942:	9404                	.insn	2, 0x9404
    2944:	0302                	.insn	2, 0x0302
    2946:	0900                	.insn	2, 0x0900
    2948:	0000                	.insn	2, 0x
    294a:	0001                	.insn	2, 0x0001
    294c:	02940403          	lb	s0,41(s0)
    2950:	00090003          	lb	zero,0(s2)
    2954:	0100                	.insn	2, 0x0100
    2956:	0300                	.insn	2, 0x0300
    2958:	8604                	.insn	2, 0x8604
    295a:	0602                	.insn	2, 0x0602
    295c:	00090003          	lb	zero,0(s2)
    2960:	0100                	.insn	2, 0x0100
    2962:	0300                	.insn	2, 0x0300
    2964:	9504                	.insn	2, 0x9504
    2966:	0602                	.insn	2, 0x0602
    2968:	08090003          	lb	zero,128(s2)
    296c:	0100                	.insn	2, 0x0100
    296e:	0300                	.insn	2, 0x0300
    2970:	9704                	.insn	2, 0x9704
    2972:	0302                	.insn	2, 0x0302
    2974:	0900                	.insn	2, 0x0900
    2976:	0008                	.insn	2, 0x0008
    2978:	0001                	.insn	2, 0x0001
    297a:	02970403          	lb	s0,41(a4)
    297e:	00090003          	lb	zero,0(s2)
    2982:	0100                	.insn	2, 0x0100
    2984:	0300                	.insn	2, 0x0300
    2986:	9904                	.insn	2, 0x9904
    2988:	0602                	.insn	2, 0x0602
    298a:	00090003          	lb	zero,0(s2)
    298e:	0100                	.insn	2, 0x0100
    2990:	0300                	.insn	2, 0x0300
    2992:	9b04                	.insn	2, 0x9b04
    2994:	0302                	.insn	2, 0x0302
    2996:	0900                	.insn	2, 0x0900
    2998:	0008                	.insn	2, 0x0008
    299a:	0001                	.insn	2, 0x0001
    299c:	02860403          	lb	s0,40(a2)
    29a0:	10090003          	lb	zero,256(s2)
    29a4:	0100                	.insn	2, 0x0100
    29a6:	0300                	.insn	2, 0x0300
    29a8:	8904                	.insn	2, 0x8904
    29aa:	0602                	.insn	2, 0x0602
    29ac:	08090003          	lb	zero,128(s2)
    29b0:	0100                	.insn	2, 0x0100
    29b2:	0300                	.insn	2, 0x0300
    29b4:	a204                	.insn	2, 0xa204
    29b6:	0302                	.insn	2, 0x0302
    29b8:	0900                	.insn	2, 0x0900
    29ba:	0008                	.insn	2, 0x0008
    29bc:	0001                	.insn	2, 0x0001
    29be:	02a20403          	lb	s0,42(tp) # 2a <_tbss_end+0x2a>
    29c2:	00090003          	lb	zero,0(s2)
    29c6:	0100                	.insn	2, 0x0100
    29c8:	0300                	.insn	2, 0x0300
    29ca:	a404                	.insn	2, 0xa404
    29cc:	0602                	.insn	2, 0x0602
    29ce:	00090003          	lb	zero,0(s2)
    29d2:	0100                	.insn	2, 0x0100
    29d4:	0300                	.insn	2, 0x0300
    29d6:	a604                	.insn	2, 0xa604
    29d8:	0302                	.insn	2, 0x0302
    29da:	0900                	.insn	2, 0x0900
    29dc:	0008                	.insn	2, 0x0008
    29de:	0001                	.insn	2, 0x0001
    29e0:	02860403          	lb	s0,40(a2)
    29e4:	10090003          	lb	zero,256(s2)
    29e8:	0100                	.insn	2, 0x0100
    29ea:	0300                	.insn	2, 0x0300
    29ec:	a304                	.insn	2, 0xa304
    29ee:	0602                	.insn	2, 0x0602
    29f0:	08090003          	lb	zero,128(s2)
    29f4:	0100                	.insn	2, 0x0100
    29f6:	0300                	.insn	2, 0x0300
    29f8:	8604                	.insn	2, 0x8604
    29fa:	0602                	.insn	2, 0x0602
    29fc:	08090003          	lb	zero,128(s2)
    2a00:	0100                	.insn	2, 0x0100
    2a02:	0300                	.insn	2, 0x0300
    2a04:	ac04                	.insn	2, 0xac04
    2a06:	0602                	.insn	2, 0x0602
    2a08:	04090003          	lb	zero,64(s2)
    2a0c:	0100                	.insn	2, 0x0100
    2a0e:	0300                	.insn	2, 0x0300
    2a10:	ad04                	.insn	2, 0xad04
    2a12:	0302                	.insn	2, 0x0302
    2a14:	0900                	.insn	2, 0x0900
    2a16:	0008                	.insn	2, 0x0008
    2a18:	0001                	.insn	2, 0x0001
    2a1a:	02af0403          	lb	s0,42(t5)
    2a1e:	08090003          	lb	zero,128(s2)
    2a22:	0100                	.insn	2, 0x0100
    2a24:	0300                	.insn	2, 0x0300
    2a26:	b404                	.insn	2, 0xb404
    2a28:	0602                	.insn	2, 0x0602
    2a2a:	10090003          	lb	zero,256(s2)
    2a2e:	0100                	.insn	2, 0x0100
    2a30:	0300                	.insn	2, 0x0300
    2a32:	af04                	.insn	2, 0xaf04
    2a34:	0302                	.insn	2, 0x0302
    2a36:	0900                	.insn	2, 0x0900
    2a38:	0004                	.insn	2, 0x0004
    2a3a:	0001                	.insn	2, 0x0001
    2a3c:	02b40403          	lb	s0,43(s0)
    2a40:	04090003          	lb	zero,64(s2)
    2a44:	0100                	.insn	2, 0x0100
    2a46:	0300                	.insn	2, 0x0300
    2a48:	b604                	.insn	2, 0xb604
    2a4a:	0302                	.insn	2, 0x0302
    2a4c:	0900                	.insn	2, 0x0900
    2a4e:	0004                	.insn	2, 0x0004
    2a50:	0001                	.insn	2, 0x0001
    2a52:	02b60403          	lb	s0,43(a2)
    2a56:	0306                	.insn	2, 0x0306
    2a58:	0900                	.insn	2, 0x0900
    2a5a:	0004                	.insn	2, 0x0004
    2a5c:	0001                	.insn	2, 0x0001
    2a5e:	02bd0403          	lb	s0,43(s10)
    2a62:	04090003          	lb	zero,64(s2)
    2a66:	0100                	.insn	2, 0x0100
    2a68:	0300                	.insn	2, 0x0300
    2a6a:	bd04                	.insn	2, 0xbd04
    2a6c:	0302                	.insn	2, 0x0302
    2a6e:	0900                	.insn	2, 0x0900
    2a70:	0000                	.insn	2, 0x
    2a72:	0001                	.insn	2, 0x0001
    2a74:	02bd0403          	lb	s0,43(s10)
    2a78:	00090003          	lb	zero,0(s2)
    2a7c:	0100                	.insn	2, 0x0100
    2a7e:	0300                	.insn	2, 0x0300
    2a80:	bd04                	.insn	2, 0xbd04
    2a82:	0302                	.insn	2, 0x0302
    2a84:	0900                	.insn	2, 0x0900
    2a86:	0014                	.insn	2, 0x0014
    2a88:	0001                	.insn	2, 0x0001
    2a8a:	02bd0403          	lb	s0,43(s10)
    2a8e:	00090003          	lb	zero,0(s2)
    2a92:	0100                	.insn	2, 0x0100
    2a94:	0300                	.insn	2, 0x0300
    2a96:	bd04                	.insn	2, 0xbd04
    2a98:	0302                	.insn	2, 0x0302
    2a9a:	0900                	.insn	2, 0x0900
    2a9c:	0000                	.insn	2, 0x
    2a9e:	0001                	.insn	2, 0x0001
    2aa0:	02860403          	lb	s0,40(a2)
    2aa4:	0306                	.insn	2, 0x0306
    2aa6:	0900                	.insn	2, 0x0900
    2aa8:	0000                	.insn	2, 0x
    2aaa:	0001                	.insn	2, 0x0001
    2aac:	02b00403          	lb	s0,43(zero) # 2b <_tbss_end+0x2b>
    2ab0:	0306                	.insn	2, 0x0306
    2ab2:	0900                	.insn	2, 0x0900
    2ab4:	000c                	.insn	2, 0x000c
    2ab6:	0001                	.insn	2, 0x0001
    2ab8:	02b80403          	lb	s0,43(a6)
    2abc:	0306                	.insn	2, 0x0306
    2abe:	0900                	.insn	2, 0x0900
    2ac0:	000c                	.insn	2, 0x000c
    2ac2:	0001                	.insn	2, 0x0001
    2ac4:	02b00403          	lb	s0,43(zero) # 2b <_tbss_end+0x2b>
    2ac8:	04090003          	lb	zero,64(s2)
    2acc:	0100                	.insn	2, 0x0100
    2ace:	0300                	.insn	2, 0x0300
    2ad0:	b704                	.insn	2, 0xb704
    2ad2:	0302                	.insn	2, 0x0302
    2ad4:	0900                	.insn	2, 0x0900
    2ad6:	0004                	.insn	2, 0x0004
    2ad8:	0001                	.insn	2, 0x0001
    2ada:	02ba0403          	lb	s0,43(s4)
    2ade:	0c090003          	lb	zero,192(s2)
    2ae2:	0100                	.insn	2, 0x0100
    2ae4:	0300                	.insn	2, 0x0300
    2ae6:	ba04                	.insn	2, 0xba04
    2ae8:	0602                	.insn	2, 0x0602
    2aea:	0c090003          	lb	zero,192(s2)
    2aee:	0100                	.insn	2, 0x0100
    2af0:	0300                	.insn	2, 0x0300
    2af2:	ae04                	.insn	2, 0xae04
    2af4:	0302                	.insn	2, 0x0302
    2af6:	0900                	.insn	2, 0x0900
    2af8:	0008                	.insn	2, 0x0008
    2afa:	0001                	.insn	2, 0x0001
    2afc:	02870403          	lb	s0,40(a4)
    2b00:	0c090003          	lb	zero,192(s2)
    2b04:	0100                	.insn	2, 0x0100
    2b06:	0300                	.insn	2, 0x0300
    2b08:	bf04                	.insn	2, 0xbf04
    2b0a:	0302                	.insn	2, 0x0302
    2b0c:	0900                	.insn	2, 0x0900
    2b0e:	000c                	.insn	2, 0x000c
    2b10:	0001                	.insn	2, 0x0001
    2b12:	0402                	.insn	2, 0x0402
    2b14:	0602                	.insn	2, 0x0602
    2b16:	00090003          	lb	zero,0(s2)
    2b1a:	0100                	.insn	2, 0x0100
    2b1c:	0200                	.insn	2, 0x0200
    2b1e:	1404                	.insn	2, 0x1404
    2b20:	04090003          	lb	zero,64(s2)
    2b24:	0100                	.insn	2, 0x0100
    2b26:	0300                	.insn	2, 0x0300
    2b28:	bf04                	.insn	2, 0xbf04
    2b2a:	0302                	.insn	2, 0x0302
    2b2c:	0900                	.insn	2, 0x0900
    2b2e:	0004                	.insn	2, 0x0004
    2b30:	0001                	.insn	2, 0x0001
    2b32:	02c10403          	lb	s0,44(sp)
    2b36:	0306                	.insn	2, 0x0306
    2b38:	0900                	.insn	2, 0x0900
    2b3a:	0004                	.insn	2, 0x0004
    2b3c:	0001                	.insn	2, 0x0001
    2b3e:	02c10403          	lb	s0,44(sp)
    2b42:	00090003          	lb	zero,0(s2)
    2b46:	0100                	.insn	2, 0x0100
    2b48:	0300                	.insn	2, 0x0300
    2b4a:	c304                	.insn	2, 0xc304
    2b4c:	0302                	.insn	2, 0x0302
    2b4e:	0900                	.insn	2, 0x0900
    2b50:	0004                	.insn	2, 0x0004
    2b52:	0001                	.insn	2, 0x0001
    2b54:	02c30403          	lb	s0,44(t1)
    2b58:	00090003          	lb	zero,0(s2)
    2b5c:	0100                	.insn	2, 0x0100
    2b5e:	0300                	.insn	2, 0x0300
    2b60:	c504                	.insn	2, 0xc504
    2b62:	0302                	.insn	2, 0x0302
    2b64:	0900                	.insn	2, 0x0900
    2b66:	0004                	.insn	2, 0x0004
    2b68:	0001                	.insn	2, 0x0001
    2b6a:	02c30403          	lb	s0,44(t1)
    2b6e:	0306                	.insn	2, 0x0306
    2b70:	0900                	.insn	2, 0x0900
    2b72:	0008                	.insn	2, 0x0008
    2b74:	0001                	.insn	2, 0x0001
    2b76:	03aa0403          	lb	s0,58(s4)
    2b7a:	0306                	.insn	2, 0x0306
    2b7c:	0900                	.insn	2, 0x0900
    2b7e:	0008                	.insn	2, 0x0008
    2b80:	0001                	.insn	2, 0x0001
    2b82:	03aa0403          	lb	s0,58(s4)
    2b86:	00090003          	lb	zero,0(s2)
    2b8a:	0100                	.insn	2, 0x0100
    2b8c:	0300                	.insn	2, 0x0300
    2b8e:	aa04                	.insn	2, 0xaa04
    2b90:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    2b94:	0000                	.insn	2, 0x
    2b96:	0301                	.insn	2, 0x0301
    2b98:	0901                	.insn	2, 0x0901
    2b9a:	0000                	.insn	2, 0x
    2b9c:	0301                	.insn	2, 0x0301
    2b9e:	0900                	.insn	2, 0x0900
    2ba0:	0000                	.insn	2, 0x
    2ba2:	0301                	.insn	2, 0x0301
    2ba4:	0900                	.insn	2, 0x0900
    2ba6:	0000                	.insn	2, 0x
    2ba8:	0001                	.insn	2, 0x0001
    2baa:	0402                	.insn	2, 0x0402
    2bac:	0601                	.insn	2, 0x0601
    2bae:	00090003          	lb	zero,0(s2)
    2bb2:	0100                	.insn	2, 0x0100
    2bb4:	0300                	.insn	2, 0x0300
    2bb6:	c404                	.insn	2, 0xc404
    2bb8:	0602                	.insn	2, 0x0602
    2bba:	18097f03          	.insn	4, 0x18097f03
    2bbe:	0100                	.insn	2, 0x0100
    2bc0:	0300                	.insn	2, 0x0300
    2bc2:	cb04                	.insn	2, 0xcb04
    2bc4:	0302                	.insn	2, 0x0302
    2bc6:	0900                	.insn	2, 0x0900
    2bc8:	0004                	.insn	2, 0x0004
    2bca:	0001                	.insn	2, 0x0001
    2bcc:	02cb0403          	lb	s0,44(s6)
    2bd0:	00090003          	lb	zero,0(s2)
    2bd4:	0100                	.insn	2, 0x0100
    2bd6:	0300                	.insn	2, 0x0300
    2bd8:	cb04                	.insn	2, 0xcb04
    2bda:	0302                	.insn	2, 0x0302
    2bdc:	0900                	.insn	2, 0x0900
    2bde:	0000                	.insn	2, 0x
    2be0:	0001                	.insn	2, 0x0001
    2be2:	02cb0403          	lb	s0,44(s6)
    2be6:	00090003          	lb	zero,0(s2)
    2bea:	0100                	.insn	2, 0x0100
    2bec:	0300                	.insn	2, 0x0300
    2bee:	cb04                	.insn	2, 0xcb04
    2bf0:	0302                	.insn	2, 0x0302
    2bf2:	0900                	.insn	2, 0x0900
    2bf4:	0004                	.insn	2, 0x0004
    2bf6:	0001                	.insn	2, 0x0001
    2bf8:	02cb0403          	lb	s0,44(s6)
    2bfc:	0c090003          	lb	zero,192(s2)
    2c00:	0100                	.insn	2, 0x0100
    2c02:	0300                	.insn	2, 0x0300
    2c04:	cb04                	.insn	2, 0xcb04
    2c06:	0302                	.insn	2, 0x0302
    2c08:	0900                	.insn	2, 0x0900
    2c0a:	0000                	.insn	2, 0x
    2c0c:	0001                	.insn	2, 0x0001
    2c0e:	02cb0403          	lb	s0,44(s6)
    2c12:	00090003          	lb	zero,0(s2)
    2c16:	0100                	.insn	2, 0x0100
    2c18:	0300                	.insn	2, 0x0300
    2c1a:	cb04                	.insn	2, 0xcb04
    2c1c:	0302                	.insn	2, 0x0302
    2c1e:	0900                	.insn	2, 0x0900
    2c20:	0000                	.insn	2, 0x
    2c22:	0001                	.insn	2, 0x0001
    2c24:	02cd0403          	lb	s0,44(s10)
    2c28:	08090003          	lb	zero,128(s2)
    2c2c:	0100                	.insn	2, 0x0100
    2c2e:	0300                	.insn	2, 0x0300
    2c30:	cd04                	.insn	2, 0xcd04
    2c32:	0302                	.insn	2, 0x0302
    2c34:	0900                	.insn	2, 0x0900
    2c36:	0000                	.insn	2, 0x
    2c38:	0001                	.insn	2, 0x0001
    2c3a:	02cd0403          	lb	s0,44(s10)
    2c3e:	00090003          	lb	zero,0(s2)
    2c42:	0100                	.insn	2, 0x0100
    2c44:	0300                	.insn	2, 0x0300
    2c46:	cd04                	.insn	2, 0xcd04
    2c48:	0302                	.insn	2, 0x0302
    2c4a:	0900                	.insn	2, 0x0900
    2c4c:	0010                	.insn	2, 0x0010
    2c4e:	0001                	.insn	2, 0x0001
    2c50:	02cd0403          	lb	s0,44(s10)
    2c54:	04090003          	lb	zero,64(s2)
    2c58:	0100                	.insn	2, 0x0100
    2c5a:	0300                	.insn	2, 0x0300
    2c5c:	cd04                	.insn	2, 0xcd04
    2c5e:	0302                	.insn	2, 0x0302
    2c60:	0900                	.insn	2, 0x0900
    2c62:	0000                	.insn	2, 0x
    2c64:	0001                	.insn	2, 0x0001
    2c66:	02cd0403          	lb	s0,44(s10)
    2c6a:	00090003          	lb	zero,0(s2)
    2c6e:	0100                	.insn	2, 0x0100
    2c70:	0300                	.insn	2, 0x0300
    2c72:	c604                	.insn	2, 0xc604
    2c74:	0602                	.insn	2, 0x0602
    2c76:	00090003          	lb	zero,0(s2)
    2c7a:	0100                	.insn	2, 0x0100
    2c7c:	0300                	.insn	2, 0x0300
    2c7e:	ce04                	.insn	2, 0xce04
    2c80:	0602                	.insn	2, 0x0602
    2c82:	08090003          	lb	zero,128(s2)
    2c86:	0100                	.insn	2, 0x0100
    2c88:	0300                	.insn	2, 0x0300
    2c8a:	f604                	.insn	2, 0xf604
    2c8c:	0302                	.insn	2, 0x0302
    2c8e:	0900                	.insn	2, 0x0900
    2c90:	0008                	.insn	2, 0x0008
    2c92:	0001                	.insn	2, 0x0001
    2c94:	02f60403          	lb	s0,47(a2)
    2c98:	00090003          	lb	zero,0(s2)
    2c9c:	0100                	.insn	2, 0x0100
    2c9e:	0300                	.insn	2, 0x0300
    2ca0:	f604                	.insn	2, 0xf604
    2ca2:	0302                	.insn	2, 0x0302
    2ca4:	0900                	.insn	2, 0x0900
    2ca6:	0008                	.insn	2, 0x0008
    2ca8:	0001                	.insn	2, 0x0001
    2caa:	03a60403          	lb	s0,58(a2)
    2cae:	00090003          	lb	zero,0(s2)
    2cb2:	0100                	.insn	2, 0x0100
    2cb4:	0300                	.insn	2, 0x0300
    2cb6:	c204                	.insn	2, 0xc204
    2cb8:	0302                	.insn	2, 0x0302
    2cba:	0900                	.insn	2, 0x0900
    2cbc:	0008                	.insn	2, 0x0008
    2cbe:	0001                	.insn	2, 0x0001
    2cc0:	02c20403          	lb	s0,44(tp) # 2c <_tbss_end+0x2c>
    2cc4:	00090003          	lb	zero,0(s2)
    2cc8:	0100                	.insn	2, 0x0100
    2cca:	0300                	.insn	2, 0x0300
    2ccc:	d404                	.insn	2, 0xd404
    2cce:	0602                	.insn	2, 0x0602
    2cd0:	08090003          	lb	zero,128(s2)
    2cd4:	0100                	.insn	2, 0x0100
    2cd6:	0300                	.insn	2, 0x0300
    2cd8:	d604                	.insn	2, 0xd604
    2cda:	0302                	.insn	2, 0x0302
    2cdc:	0900                	.insn	2, 0x0900
    2cde:	0004                	.insn	2, 0x0004
    2ce0:	0001                	.insn	2, 0x0001
    2ce2:	02da0403          	lb	s0,45(s4)
    2ce6:	0306                	.insn	2, 0x0306
    2ce8:	0900                	.insn	2, 0x0900
    2cea:	0010                	.insn	2, 0x0010
    2cec:	0001                	.insn	2, 0x0001
    2cee:	02da0403          	lb	s0,45(s4)
    2cf2:	00090003          	lb	zero,0(s2)
    2cf6:	0100                	.insn	2, 0x0100
    2cf8:	0300                	.insn	2, 0x0300
    2cfa:	da04                	.insn	2, 0xda04
    2cfc:	0302                	.insn	2, 0x0302
    2cfe:	0900                	.insn	2, 0x0900
    2d00:	0000                	.insn	2, 0x
    2d02:	0001                	.insn	2, 0x0001
    2d04:	02db0403          	lb	s0,45(s6)
    2d08:	0306                	.insn	2, 0x0306
    2d0a:	0900                	.insn	2, 0x0900
    2d0c:	0004                	.insn	2, 0x0004
    2d0e:	0001                	.insn	2, 0x0001
    2d10:	02dd0403          	lb	s0,45(s10)
    2d14:	04090003          	lb	zero,64(s2)
    2d18:	0100                	.insn	2, 0x0100
    2d1a:	0300                	.insn	2, 0x0300
    2d1c:	e104                	.insn	2, 0xe104
    2d1e:	0602                	.insn	2, 0x0602
    2d20:	08090003          	lb	zero,128(s2)
    2d24:	0100                	.insn	2, 0x0100
    2d26:	0300                	.insn	2, 0x0300
    2d28:	e104                	.insn	2, 0xe104
    2d2a:	0302                	.insn	2, 0x0302
    2d2c:	0900                	.insn	2, 0x0900
    2d2e:	0000                	.insn	2, 0x
    2d30:	0001                	.insn	2, 0x0001
    2d32:	02e10403          	lb	s0,46(sp)
    2d36:	00090003          	lb	zero,0(s2)
    2d3a:	0100                	.insn	2, 0x0100
    2d3c:	0300                	.insn	2, 0x0300
    2d3e:	e504                	.insn	2, 0xe504
    2d40:	0602                	.insn	2, 0x0602
    2d42:	00090003          	lb	zero,0(s2)
    2d46:	0100                	.insn	2, 0x0100
    2d48:	0300                	.insn	2, 0x0300
    2d4a:	e104                	.insn	2, 0xe104
    2d4c:	0302                	.insn	2, 0x0302
    2d4e:	0900                	.insn	2, 0x0900
    2d50:	0004                	.insn	2, 0x0004
    2d52:	0001                	.insn	2, 0x0001
    2d54:	02df0403          	lb	s0,45(t5)
    2d58:	08090003          	lb	zero,128(s2)
    2d5c:	0100                	.insn	2, 0x0100
    2d5e:	0300                	.insn	2, 0x0300
    2d60:	da04                	.insn	2, 0xda04
    2d62:	0602                	.insn	2, 0x0602
    2d64:	08090003          	lb	zero,128(s2)
    2d68:	0100                	.insn	2, 0x0100
    2d6a:	0300                	.insn	2, 0x0300
    2d6c:	da04                	.insn	2, 0xda04
    2d6e:	0302                	.insn	2, 0x0302
    2d70:	0900                	.insn	2, 0x0900
    2d72:	0000                	.insn	2, 0x
    2d74:	0001                	.insn	2, 0x0001
    2d76:	02da0403          	lb	s0,45(s4)
    2d7a:	00090003          	lb	zero,0(s2)
    2d7e:	0100                	.insn	2, 0x0100
    2d80:	0300                	.insn	2, 0x0300
    2d82:	e104                	.insn	2, 0xe104
    2d84:	0302                	.insn	2, 0x0302
    2d86:	0900                	.insn	2, 0x0900
    2d88:	0008                	.insn	2, 0x0008
    2d8a:	0001                	.insn	2, 0x0001
    2d8c:	02e10403          	lb	s0,46(sp)
    2d90:	00090003          	lb	zero,0(s2)
    2d94:	0100                	.insn	2, 0x0100
    2d96:	0300                	.insn	2, 0x0300
    2d98:	e104                	.insn	2, 0xe104
    2d9a:	0302                	.insn	2, 0x0302
    2d9c:	0900                	.insn	2, 0x0900
    2d9e:	0000                	.insn	2, 0x
    2da0:	0001                	.insn	2, 0x0001
    2da2:	02e20403          	lb	s0,46(tp) # 2e <_tbss_end+0x2e>
    2da6:	04090003          	lb	zero,64(s2)
    2daa:	0100                	.insn	2, 0x0100
    2dac:	0300                	.insn	2, 0x0300
    2dae:	e504                	.insn	2, 0xe504
    2db0:	0602                	.insn	2, 0x0602
    2db2:	00090003          	lb	zero,0(s2)
    2db6:	0100                	.insn	2, 0x0100
    2db8:	0300                	.insn	2, 0x0300
    2dba:	e204                	.insn	2, 0xe204
    2dbc:	0302                	.insn	2, 0x0302
    2dbe:	0900                	.insn	2, 0x0900
    2dc0:	0004                	.insn	2, 0x0004
    2dc2:	0001                	.insn	2, 0x0001
    2dc4:	02e40403          	lb	s0,46(s0)
    2dc8:	04090003          	lb	zero,64(s2)
    2dcc:	0100                	.insn	2, 0x0100
    2dce:	0300                	.insn	2, 0x0300
    2dd0:	e704                	.insn	2, 0xe704
    2dd2:	0302                	.insn	2, 0x0302
    2dd4:	0900                	.insn	2, 0x0900
    2dd6:	0004                	.insn	2, 0x0004
    2dd8:	0001                	.insn	2, 0x0001
    2dda:	02da0403          	lb	s0,45(s4)
    2dde:	0c090003          	lb	zero,192(s2)
    2de2:	0100                	.insn	2, 0x0100
    2de4:	0300                	.insn	2, 0x0300
    2de6:	e304                	.insn	2, 0xe304
    2de8:	0602                	.insn	2, 0x0602
    2dea:	08090003          	lb	zero,128(s2)
    2dee:	0100                	.insn	2, 0x0100
    2df0:	0300                	.insn	2, 0x0300
    2df2:	eb04                	.insn	2, 0xeb04
    2df4:	0602                	.insn	2, 0x0602
    2df6:	04090003          	lb	zero,64(s2)
    2dfa:	0100                	.insn	2, 0x0100
    2dfc:	0300                	.insn	2, 0x0300
    2dfe:	ee04                	.insn	2, 0xee04
    2e00:	0302                	.insn	2, 0x0302
    2e02:	0900                	.insn	2, 0x0900
    2e04:	0004                	.insn	2, 0x0004
    2e06:	0001                	.insn	2, 0x0001
    2e08:	02c00403          	lb	s0,44(zero) # 2c <_tbss_end+0x2c>
    2e0c:	0306                	.insn	2, 0x0306
    2e0e:	0900                	.insn	2, 0x0900
    2e10:	000c                	.insn	2, 0x000c
    2e12:	0001                	.insn	2, 0x0001
    2e14:	02c00403          	lb	s0,44(zero) # 2c <_tbss_end+0x2c>
    2e18:	00090003          	lb	zero,0(s2)
    2e1c:	0100                	.insn	2, 0x0100
    2e1e:	0300                	.insn	2, 0x0300
    2e20:	c004                	.insn	2, 0xc004
    2e22:	0302                	.insn	2, 0x0302
    2e24:	0900                	.insn	2, 0x0900
    2e26:	0000                	.insn	2, 0x
    2e28:	0001                	.insn	2, 0x0001
    2e2a:	02c00403          	lb	s0,44(zero) # 2c <_tbss_end+0x2c>
    2e2e:	00090003          	lb	zero,0(s2)
    2e32:	0100                	.insn	2, 0x0100
    2e34:	0300                	.insn	2, 0x0300
    2e36:	c004                	.insn	2, 0xc004
    2e38:	0302                	.insn	2, 0x0302
    2e3a:	0900                	.insn	2, 0x0900
    2e3c:	0018                	.insn	2, 0x0018
    2e3e:	0001                	.insn	2, 0x0001
    2e40:	02c00403          	lb	s0,44(zero) # 2c <_tbss_end+0x2c>
    2e44:	00090003          	lb	zero,0(s2)
    2e48:	0100                	.insn	2, 0x0100
    2e4a:	0300                	.insn	2, 0x0300
    2e4c:	c004                	.insn	2, 0xc004
    2e4e:	0302                	.insn	2, 0x0302
    2e50:	0900                	.insn	2, 0x0900
    2e52:	0000                	.insn	2, 0x
    2e54:	0001                	.insn	2, 0x0001
    2e56:	02c00403          	lb	s0,44(zero) # 2c <_tbss_end+0x2c>
    2e5a:	00090003          	lb	zero,0(s2)
    2e5e:	0100                	.insn	2, 0x0100
    2e60:	0300                	.insn	2, 0x0300
    2e62:	c004                	.insn	2, 0xc004
    2e64:	0302                	.insn	2, 0x0302
    2e66:	0900                	.insn	2, 0x0900
    2e68:	0000                	.insn	2, 0x
    2e6a:	0001                	.insn	2, 0x0001
    2e6c:	02f30403          	lb	s0,47(t1)
    2e70:	04090003          	lb	zero,64(s2)
    2e74:	0100                	.insn	2, 0x0100
    2e76:	0300                	.insn	2, 0x0300
    2e78:	f304                	.insn	2, 0xf304
    2e7a:	0302                	.insn	2, 0x0302
    2e7c:	0900                	.insn	2, 0x0900
    2e7e:	0000                	.insn	2, 0x
    2e80:	0001                	.insn	2, 0x0001
    2e82:	02f30403          	lb	s0,47(t1)
    2e86:	00090003          	lb	zero,0(s2)
    2e8a:	0100                	.insn	2, 0x0100
    2e8c:	0300                	.insn	2, 0x0300
    2e8e:	f304                	.insn	2, 0xf304
    2e90:	0302                	.insn	2, 0x0302
    2e92:	0900                	.insn	2, 0x0900
    2e94:	0000                	.insn	2, 0x
    2e96:	0001                	.insn	2, 0x0001
    2e98:	02f30403          	lb	s0,47(t1)
    2e9c:	10090003          	lb	zero,256(s2)
    2ea0:	0100                	.insn	2, 0x0100
    2ea2:	0300                	.insn	2, 0x0300
    2ea4:	f304                	.insn	2, 0xf304
    2ea6:	0302                	.insn	2, 0x0302
    2ea8:	0900                	.insn	2, 0x0900
    2eaa:	0000                	.insn	2, 0x
    2eac:	0001                	.insn	2, 0x0001
    2eae:	02f30403          	lb	s0,47(t1)
    2eb2:	00090003          	lb	zero,0(s2)
    2eb6:	0100                	.insn	2, 0x0100
    2eb8:	0300                	.insn	2, 0x0300
    2eba:	fc04                	.insn	2, 0xfc04
    2ebc:	0302                	.insn	2, 0x0302
    2ebe:	0900                	.insn	2, 0x0900
    2ec0:	0004                	.insn	2, 0x0004
    2ec2:	0001                	.insn	2, 0x0001
    2ec4:	02fc0403          	lb	s0,47(s8)
    2ec8:	00090003          	lb	zero,0(s2)
    2ecc:	0100                	.insn	2, 0x0100
    2ece:	0300                	.insn	2, 0x0300
    2ed0:	fd04                	.insn	2, 0xfd04
    2ed2:	0302                	.insn	2, 0x0302
    2ed4:	0900                	.insn	2, 0x0900
    2ed6:	0004                	.insn	2, 0x0004
    2ed8:	0001                	.insn	2, 0x0001
    2eda:	02fd0403          	lb	s0,47(s10)
    2ede:	00090003          	lb	zero,0(s2)
    2ee2:	0100                	.insn	2, 0x0100
    2ee4:	0300                	.insn	2, 0x0300
    2ee6:	fd04                	.insn	2, 0xfd04
    2ee8:	0302                	.insn	2, 0x0302
    2eea:	0900                	.insn	2, 0x0900
    2eec:	0000                	.insn	2, 0x
    2eee:	0001                	.insn	2, 0x0001
    2ef0:	02ff0403          	lb	s0,47(t5)
    2ef4:	00090003          	lb	zero,0(s2)
    2ef8:	0100                	.insn	2, 0x0100
    2efa:	0300                	.insn	2, 0x0300
    2efc:	8504                	.insn	2, 0x8504
    2efe:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    2f02:	0004                	.insn	2, 0x0004
    2f04:	0001                	.insn	2, 0x0001
    2f06:	038d0403          	lb	s0,56(s10)
    2f0a:	00090003          	lb	zero,0(s2)
    2f0e:	0100                	.insn	2, 0x0100
    2f10:	0300                	.insn	2, 0x0300
    2f12:	8d04                	.insn	2, 0x8d04
    2f14:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    2f18:	0000                	.insn	2, 0x
    2f1a:	0001                	.insn	2, 0x0001
    2f1c:	038d0403          	lb	s0,56(s10)
    2f20:	04090003          	lb	zero,64(s2)
    2f24:	0100                	.insn	2, 0x0100
    2f26:	0300                	.insn	2, 0x0300
    2f28:	8e04                	.insn	2, 0x8e04
    2f2a:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    2f2e:	0000                	.insn	2, 0x
    2f30:	0001                	.insn	2, 0x0001
    2f32:	03930403          	lb	s0,57(t1)
    2f36:	00090003          	lb	zero,0(s2)
    2f3a:	0100                	.insn	2, 0x0100
    2f3c:	0300                	.insn	2, 0x0300
    2f3e:	9304                	.insn	2, 0x9304
    2f40:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    2f44:	0014                	.insn	2, 0x0014
    2f46:	0001                	.insn	2, 0x0001
    2f48:	03970403          	lb	s0,57(a4)
    2f4c:	04090003          	lb	zero,64(s2)
    2f50:	0100                	.insn	2, 0x0100
    2f52:	0300                	.insn	2, 0x0300
    2f54:	9804                	.insn	2, 0x9804
    2f56:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    2f5a:	0004                	.insn	2, 0x0004
    2f5c:	0001                	.insn	2, 0x0001
    2f5e:	03980403          	lb	s0,57(a6)
    2f62:	08090003          	lb	zero,128(s2)
    2f66:	0100                	.insn	2, 0x0100
    2f68:	0300                	.insn	2, 0x0300
    2f6a:	9a04                	.insn	2, 0x9a04
    2f6c:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    2f70:	0008                	.insn	2, 0x0008
    2f72:	0001                	.insn	2, 0x0001
    2f74:	039f0403          	lb	s0,57(t5)
    2f78:	0306                	.insn	2, 0x0306
    2f7a:	0900                	.insn	2, 0x0900
    2f7c:	0010                	.insn	2, 0x0010
    2f7e:	0001                	.insn	2, 0x0001
    2f80:	039a0403          	lb	s0,57(s4)
    2f84:	04090003          	lb	zero,64(s2)
    2f88:	0100                	.insn	2, 0x0100
    2f8a:	0300                	.insn	2, 0x0300
    2f8c:	9f04                	.insn	2, 0x9f04
    2f8e:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    2f92:	0004                	.insn	2, 0x0004
    2f94:	0001                	.insn	2, 0x0001
    2f96:	03a10403          	lb	s0,58(sp)
    2f9a:	04090003          	lb	zero,64(s2)
    2f9e:	0100                	.insn	2, 0x0100
    2fa0:	0300                	.insn	2, 0x0300
    2fa2:	a104                	.insn	2, 0xa104
    2fa4:	00030603          	lb	a2,0(t1)
    2fa8:	0409                	.insn	2, 0x0409
    2faa:	0100                	.insn	2, 0x0100
    2fac:	0300                	.insn	2, 0x0300
    2fae:	f404                	.insn	2, 0xf404
    2fb0:	0302                	.insn	2, 0x0302
    2fb2:	0900                	.insn	2, 0x0900
    2fb4:	0008                	.insn	2, 0x0008
    2fb6:	0001                	.insn	2, 0x0001
    2fb8:	02fe0403          	lb	s0,47(t3)
    2fbc:	0c090003          	lb	zero,192(s2)
    2fc0:	0100                	.insn	2, 0x0100
    2fc2:	0300                	.insn	2, 0x0300
    2fc4:	fe04                	.insn	2, 0xfe04
    2fc6:	0302                	.insn	2, 0x0302
    2fc8:	0900                	.insn	2, 0x0900
    2fca:	0000                	.insn	2, 0x
    2fcc:	0001                	.insn	2, 0x0001
    2fce:	02fe0403          	lb	s0,47(t3)
    2fd2:	00090003          	lb	zero,0(s2)
    2fd6:	0100                	.insn	2, 0x0100
    2fd8:	0300                	.insn	2, 0x0300
    2fda:	8604                	.insn	2, 0x8604
    2fdc:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    2fe0:	0000                	.insn	2, 0x
    2fe2:	0001                	.insn	2, 0x0001
    2fe4:	038c0403          	lb	s0,56(s8)
    2fe8:	04090003          	lb	zero,64(s2)
    2fec:	0100                	.insn	2, 0x0100
    2fee:	0300                	.insn	2, 0x0300
    2ff0:	8c04                	.insn	2, 0x8c04
    2ff2:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    2ff6:	0000                	.insn	2, 0x
    2ff8:	0001                	.insn	2, 0x0001
    2ffa:	038d0403          	lb	s0,56(s10)
    2ffe:	00090003          	lb	zero,0(s2)
    3002:	0100                	.insn	2, 0x0100
    3004:	0300                	.insn	2, 0x0300
    3006:	8d04                	.insn	2, 0x8d04
    3008:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    300c:	0000                	.insn	2, 0x
    300e:	0001                	.insn	2, 0x0001
    3010:	038d0403          	lb	s0,56(s10)
    3014:	08090003          	lb	zero,128(s2)
    3018:	0100                	.insn	2, 0x0100
    301a:	0300                	.insn	2, 0x0300
    301c:	8f04                	.insn	2, 0x8f04
    301e:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    3022:	0004                	.insn	2, 0x0004
    3024:	0001                	.insn	2, 0x0001
    3026:	038f0403          	lb	s0,56(t5)
    302a:	08090003          	lb	zero,128(s2)
    302e:	0100                	.insn	2, 0x0100
    3030:	0300                	.insn	2, 0x0300
    3032:	9b04                	.insn	2, 0x9b04
    3034:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    3038:	0004                	.insn	2, 0x0004
    303a:	0001                	.insn	2, 0x0001
    303c:	03a40403          	lb	s0,58(s0)
    3040:	0306                	.insn	2, 0x0306
    3042:	0900                	.insn	2, 0x0900
    3044:	000c                	.insn	2, 0x000c
    3046:	0001                	.insn	2, 0x0001
    3048:	039b0403          	lb	s0,57(s6)
    304c:	04090003          	lb	zero,64(s2)
    3050:	0100                	.insn	2, 0x0100
    3052:	0300                	.insn	2, 0x0300
    3054:	a304                	.insn	2, 0xa304
    3056:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    305a:	0004                	.insn	2, 0x0004
    305c:	0001                	.insn	2, 0x0001
    305e:	03a60403          	lb	s0,58(a2)
    3062:	0c090003          	lb	zero,192(s2)
    3066:	0100                	.insn	2, 0x0100
    3068:	0300                	.insn	2, 0x0300
    306a:	9904                	.insn	2, 0x9904
    306c:	00030603          	lb	a2,0(t1)
    3070:	1009                	.insn	2, 0x1009
    3072:	0100                	.insn	2, 0x0100
    3074:	0300                	.insn	2, 0x0300
    3076:	9904                	.insn	2, 0x9904
    3078:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    307c:	0004                	.insn	2, 0x0004
    307e:	0001                	.insn	2, 0x0001
    3080:	0402                	.insn	2, 0x0402
    3082:	0306                	.insn	2, 0x0306
    3084:	0901                	.insn	2, 0x0901
    3086:	0014                	.insn	2, 0x0014
    3088:	0001                	.insn	2, 0x0001
    308a:	0402                	.insn	2, 0x0402
    308c:	09000307          	.insn	4, 0x09000307
    3090:	0000                	.insn	2, 0x
    3092:	0001                	.insn	2, 0x0001
    3094:	0402                	.insn	2, 0x0402
    3096:	09000307          	.insn	4, 0x09000307
    309a:	0000                	.insn	2, 0x
    309c:	0001                	.insn	2, 0x0001
    309e:	0402                	.insn	2, 0x0402
    30a0:	09000307          	.insn	4, 0x09000307
    30a4:	0000                	.insn	2, 0x
    30a6:	0001                	.insn	2, 0x0001
    30a8:	0402                	.insn	2, 0x0402
    30aa:	09000307          	.insn	4, 0x09000307
    30ae:	0000                	.insn	2, 0x
    30b0:	0001                	.insn	2, 0x0001
    30b2:	0402                	.insn	2, 0x0402
    30b4:	09000307          	.insn	4, 0x09000307
    30b8:	0000                	.insn	2, 0x
    30ba:	0001                	.insn	2, 0x0001
    30bc:	0402                	.insn	2, 0x0402
    30be:	09000307          	.insn	4, 0x09000307
    30c2:	0000                	.insn	2, 0x
    30c4:	0001                	.insn	2, 0x0001
    30c6:	0402                	.insn	2, 0x0402
    30c8:	09000307          	.insn	4, 0x09000307
    30cc:	0000                	.insn	2, 0x
    30ce:	0001                	.insn	2, 0x0001
    30d0:	0402                	.insn	2, 0x0402
    30d2:	09000307          	.insn	4, 0x09000307
    30d6:	0000                	.insn	2, 0x
    30d8:	0001                	.insn	2, 0x0001
    30da:	0402                	.insn	2, 0x0402
    30dc:	09000307          	.insn	4, 0x09000307
    30e0:	0000                	.insn	2, 0x
    30e2:	0001                	.insn	2, 0x0001
    30e4:	0402                	.insn	2, 0x0402
    30e6:	0309                	.insn	2, 0x0309
    30e8:	0900                	.insn	2, 0x0900
    30ea:	0000                	.insn	2, 0x
    30ec:	0001                	.insn	2, 0x0001
    30ee:	0402                	.insn	2, 0x0402
    30f0:	060c                	.insn	2, 0x060c
    30f2:	08090003          	lb	zero,128(s2)
    30f6:	0100                	.insn	2, 0x0100
    30f8:	0200                	.insn	2, 0x0200
    30fa:	0904                	.insn	2, 0x0904
    30fc:	08090003          	lb	zero,128(s2)
    3100:	0100                	.insn	2, 0x0100
    3102:	0200                	.insn	2, 0x0200
    3104:	0904                	.insn	2, 0x0904
    3106:	0306                	.insn	2, 0x0306
    3108:	0900                	.insn	2, 0x0900
    310a:	0004                	.insn	2, 0x0004
    310c:	0001                	.insn	2, 0x0001
    310e:	0402                	.insn	2, 0x0402
    3110:	030c                	.insn	2, 0x030c
    3112:	0900                	.insn	2, 0x0900
    3114:	0000                	.insn	2, 0x
    3116:	0001                	.insn	2, 0x0001
    3118:	0402                	.insn	2, 0x0402
    311a:	030c                	.insn	2, 0x030c
    311c:	0900                	.insn	2, 0x0900
    311e:	0000                	.insn	2, 0x
    3120:	0001                	.insn	2, 0x0001
    3122:	0402                	.insn	2, 0x0402
    3124:	030c                	.insn	2, 0x030c
    3126:	0900                	.insn	2, 0x0900
    3128:	0000                	.insn	2, 0x
    312a:	0001                	.insn	2, 0x0001
    312c:	0402                	.insn	2, 0x0402
    312e:	030d                	.insn	2, 0x030d
    3130:	0900                	.insn	2, 0x0900
    3132:	0004                	.insn	2, 0x0004
    3134:	0001                	.insn	2, 0x0001
    3136:	0402                	.insn	2, 0x0402
    3138:	030d                	.insn	2, 0x030d
    313a:	0900                	.insn	2, 0x0900
    313c:	0000                	.insn	2, 0x
    313e:	0001                	.insn	2, 0x0001
    3140:	0402                	.insn	2, 0x0402
    3142:	0310                	.insn	2, 0x0310
    3144:	0900                	.insn	2, 0x0900
    3146:	0018                	.insn	2, 0x0018
    3148:	0001                	.insn	2, 0x0001
    314a:	0402                	.insn	2, 0x0402
    314c:	0310                	.insn	2, 0x0310
    314e:	0900                	.insn	2, 0x0900
    3150:	0000                	.insn	2, 0x
    3152:	0001                	.insn	2, 0x0001
    3154:	0402                	.insn	2, 0x0402
    3156:	0314                	.insn	2, 0x0314
    3158:	0900                	.insn	2, 0x0900
    315a:	000c                	.insn	2, 0x000c
    315c:	0001                	.insn	2, 0x0001
    315e:	0402                	.insn	2, 0x0402
    3160:	0314                	.insn	2, 0x0314
    3162:	0900                	.insn	2, 0x0900
    3164:	0000                	.insn	2, 0x
    3166:	0001                	.insn	2, 0x0001
    3168:	0402                	.insn	2, 0x0402
    316a:	0314                	.insn	2, 0x0314
    316c:	0900                	.insn	2, 0x0900
    316e:	0000                	.insn	2, 0x
    3170:	0001                	.insn	2, 0x0001
    3172:	0402                	.insn	2, 0x0402
    3174:	0314                	.insn	2, 0x0314
    3176:	0900                	.insn	2, 0x0900
    3178:	0000                	.insn	2, 0x
    317a:	0001                	.insn	2, 0x0001
    317c:	0402                	.insn	2, 0x0402
    317e:	0314                	.insn	2, 0x0314
    3180:	0900                	.insn	2, 0x0900
    3182:	000c                	.insn	2, 0x000c
    3184:	0001                	.insn	2, 0x0001
    3186:	0402                	.insn	2, 0x0402
    3188:	09000317          	auipc	t1,0x9000
    318c:	0000                	.insn	2, 0x
    318e:	0001                	.insn	2, 0x0001
    3190:	0402                	.insn	2, 0x0402
    3192:	09000317          	auipc	t1,0x9000
    3196:	0000                	.insn	2, 0x
    3198:	0001                	.insn	2, 0x0001
    319a:	0402                	.insn	2, 0x0402
    319c:	0324                	.insn	2, 0x0324
    319e:	0900                	.insn	2, 0x0900
    31a0:	0014                	.insn	2, 0x0014
    31a2:	0001                	.insn	2, 0x0001
    31a4:	0402                	.insn	2, 0x0402
    31a6:	0324                	.insn	2, 0x0324
    31a8:	0900                	.insn	2, 0x0900
    31aa:	0000                	.insn	2, 0x
    31ac:	0001                	.insn	2, 0x0001
    31ae:	0402                	.insn	2, 0x0402
    31b0:	0325                	.insn	2, 0x0325
    31b2:	0900                	.insn	2, 0x0900
    31b4:	0008                	.insn	2, 0x0008
    31b6:	0001                	.insn	2, 0x0001
    31b8:	0402                	.insn	2, 0x0402
    31ba:	0325                	.insn	2, 0x0325
    31bc:	0900                	.insn	2, 0x0900
    31be:	0008                	.insn	2, 0x0008
    31c0:	0001                	.insn	2, 0x0001
    31c2:	0402                	.insn	2, 0x0402
    31c4:	0328                	.insn	2, 0x0328
    31c6:	0900                	.insn	2, 0x0900
    31c8:	0010                	.insn	2, 0x0010
    31ca:	0001                	.insn	2, 0x0001
    31cc:	0402                	.insn	2, 0x0402
    31ce:	0328                	.insn	2, 0x0328
    31d0:	0900                	.insn	2, 0x0900
    31d2:	0000                	.insn	2, 0x
    31d4:	0001                	.insn	2, 0x0001
    31d6:	0402                	.insn	2, 0x0402
    31d8:	032c                	.insn	2, 0x032c
    31da:	0900                	.insn	2, 0x0900
    31dc:	000c                	.insn	2, 0x000c
    31de:	0001                	.insn	2, 0x0001
    31e0:	0402                	.insn	2, 0x0402
    31e2:	032c                	.insn	2, 0x032c
    31e4:	0900                	.insn	2, 0x0900
    31e6:	0000                	.insn	2, 0x
    31e8:	0001                	.insn	2, 0x0001
    31ea:	0402                	.insn	2, 0x0402
    31ec:	032c                	.insn	2, 0x032c
    31ee:	0900                	.insn	2, 0x0900
    31f0:	0000                	.insn	2, 0x
    31f2:	0001                	.insn	2, 0x0001
    31f4:	0402                	.insn	2, 0x0402
    31f6:	09000337          	lui	t1,0x9000
    31fa:	0004                	.insn	2, 0x0004
    31fc:	0001                	.insn	2, 0x0001
    31fe:	0402                	.insn	2, 0x0402
    3200:	09000337          	lui	t1,0x9000
    3204:	0008                	.insn	2, 0x0008
    3206:	0001                	.insn	2, 0x0001
    3208:	0402                	.insn	2, 0x0402
    320a:	09000313          	li	t1,144
    320e:	0004                	.insn	2, 0x0004
    3210:	0001                	.insn	2, 0x0001
    3212:	0402                	.insn	2, 0x0402
    3214:	09000313          	li	t1,144
    3218:	0000                	.insn	2, 0x
    321a:	0001                	.insn	2, 0x0001
    321c:	0402                	.insn	2, 0x0402
    321e:	060d                	.insn	2, 0x060d
    3220:	00090003          	lb	zero,0(s2)
    3224:	0100                	.insn	2, 0x0100
    3226:	0200                	.insn	2, 0x0200
    3228:	1304                	.insn	2, 0x1304
    322a:	04090003          	lb	zero,64(s2)
    322e:	0100                	.insn	2, 0x0100
    3230:	0200                	.insn	2, 0x0200
    3232:	1a04                	.insn	2, 0x1a04
    3234:	0306                	.insn	2, 0x0306
    3236:	0900                	.insn	2, 0x0900
    3238:	0004                	.insn	2, 0x0004
    323a:	0001                	.insn	2, 0x0001
    323c:	0402                	.insn	2, 0x0402
    323e:	031a                	.insn	2, 0x031a
    3240:	0900                	.insn	2, 0x0900
    3242:	0000                	.insn	2, 0x
    3244:	0001                	.insn	2, 0x0001
    3246:	0402                	.insn	2, 0x0402
    3248:	031a                	.insn	2, 0x031a
    324a:	0900                	.insn	2, 0x0900
    324c:	0000                	.insn	2, 0x
    324e:	0001                	.insn	2, 0x0001
    3250:	0402                	.insn	2, 0x0402
    3252:	031a                	.insn	2, 0x031a
    3254:	0900                	.insn	2, 0x0900
    3256:	0000                	.insn	2, 0x
    3258:	0001                	.insn	2, 0x0001
    325a:	0402                	.insn	2, 0x0402
    325c:	031a                	.insn	2, 0x031a
    325e:	0900                	.insn	2, 0x0900
    3260:	000c                	.insn	2, 0x000c
    3262:	0001                	.insn	2, 0x0001
    3264:	0402                	.insn	2, 0x0402
    3266:	060d                	.insn	2, 0x060d
    3268:	00090003          	lb	zero,0(s2)
    326c:	0100                	.insn	2, 0x0100
    326e:	0200                	.insn	2, 0x0200
    3270:	1204                	.insn	2, 0x1204
    3272:	0306                	.insn	2, 0x0306
    3274:	0900                	.insn	2, 0x0900
    3276:	0008                	.insn	2, 0x0008
    3278:	0001                	.insn	2, 0x0001
    327a:	0402                	.insn	2, 0x0402
    327c:	0312                	.insn	2, 0x0312
    327e:	0900                	.insn	2, 0x0900
    3280:	0000                	.insn	2, 0x
    3282:	0001                	.insn	2, 0x0001
    3284:	0402                	.insn	2, 0x0402
    3286:	060d                	.insn	2, 0x060d
    3288:	00090003          	lb	zero,0(s2)
    328c:	0100                	.insn	2, 0x0100
    328e:	0200                	.insn	2, 0x0200
    3290:	1204                	.insn	2, 0x1204
    3292:	04090003          	lb	zero,64(s2)
    3296:	0100                	.insn	2, 0x0100
    3298:	0200                	.insn	2, 0x0200
    329a:	1f04                	.insn	2, 0x1f04
    329c:	0306                	.insn	2, 0x0306
    329e:	0900                	.insn	2, 0x0900
    32a0:	0004                	.insn	2, 0x0004
    32a2:	0001                	.insn	2, 0x0001
    32a4:	0402                	.insn	2, 0x0402
    32a6:	031f 0900 0000      	.insn	6, 0x0900031f
    32ac:	0001                	.insn	2, 0x0001
    32ae:	0402                	.insn	2, 0x0402
    32b0:	031f 0900 0000      	.insn	6, 0x0900031f
    32b6:	0001                	.insn	2, 0x0001
    32b8:	0402                	.insn	2, 0x0402
    32ba:	031f 0900 0000      	.insn	6, 0x0900031f
    32c0:	0001                	.insn	2, 0x0001
    32c2:	0402                	.insn	2, 0x0402
    32c4:	031f 0900 000c      	.insn	6, 0x000c0900031f
    32ca:	0001                	.insn	2, 0x0001
    32cc:	0402                	.insn	2, 0x0402
    32ce:	060d                	.insn	2, 0x060d
    32d0:	00090003          	lb	zero,0(s2)
    32d4:	0100                	.insn	2, 0x0100
    32d6:	0200                	.insn	2, 0x0200
    32d8:	2b04                	.insn	2, 0x2b04
    32da:	0306                	.insn	2, 0x0306
    32dc:	0900                	.insn	2, 0x0900
    32de:	0008                	.insn	2, 0x0008
    32e0:	0001                	.insn	2, 0x0001
    32e2:	0402                	.insn	2, 0x0402
    32e4:	0900032b          	.insn	4, 0x0900032b
    32e8:	0000                	.insn	2, 0x
    32ea:	0001                	.insn	2, 0x0001
    32ec:	0402                	.insn	2, 0x0402
    32ee:	09000337          	lui	t1,0x9000
    32f2:	0004                	.insn	2, 0x0004
    32f4:	0001                	.insn	2, 0x0001
    32f6:	0402                	.insn	2, 0x0402
    32f8:	09000337          	lui	t1,0x9000
    32fc:	0000                	.insn	2, 0x
    32fe:	0001                	.insn	2, 0x0001
    3300:	0402                	.insn	2, 0x0402
    3302:	09000337          	lui	t1,0x9000
    3306:	0000                	.insn	2, 0x
    3308:	0001                	.insn	2, 0x0001
    330a:	0402                	.insn	2, 0x0402
    330c:	032a                	.insn	2, 0x032a
    330e:	0900                	.insn	2, 0x0900
    3310:	0008                	.insn	2, 0x0008
    3312:	0001                	.insn	2, 0x0001
    3314:	0402                	.insn	2, 0x0402
    3316:	032a                	.insn	2, 0x032a
    3318:	0900                	.insn	2, 0x0900
    331a:	0000                	.insn	2, 0x
    331c:	0001                	.insn	2, 0x0001
    331e:	0402                	.insn	2, 0x0402
    3320:	0900032f          	.insn	4, 0x0900032f
    3324:	0004                	.insn	2, 0x0004
    3326:	0001                	.insn	2, 0x0001
    3328:	0402                	.insn	2, 0x0402
    332a:	0900032f          	.insn	4, 0x0900032f
    332e:	0000                	.insn	2, 0x
    3330:	0001                	.insn	2, 0x0001
    3332:	0402                	.insn	2, 0x0402
    3334:	033a                	.insn	2, 0x033a
    3336:	0900                	.insn	2, 0x0900
    3338:	0004                	.insn	2, 0x0004
    333a:	0001                	.insn	2, 0x0001
    333c:	0402                	.insn	2, 0x0402
    333e:	033e                	.insn	2, 0x033e
    3340:	0900                	.insn	2, 0x0900
    3342:	000c                	.insn	2, 0x000c
    3344:	0001                	.insn	2, 0x0001
    3346:	0402                	.insn	2, 0x0402
    3348:	0900033f 00010008 	.insn	8, 0x000100080900033f
    3350:	0402                	.insn	2, 0x0402
    3352:	0900033f 00010000 	.insn	8, 0x000100000900033f
    335a:	0402                	.insn	2, 0x0402
    335c:	0900033f 00010004 	.insn	8, 0x000100040900033f
    3364:	0402                	.insn	2, 0x0402
    3366:	0900034f          	fnmadd.s	ft6,ft0,fa6,ft1,rne
    336a:	0014                	.insn	2, 0x0014
    336c:	0001                	.insn	2, 0x0001
    336e:	0402                	.insn	2, 0x0402
    3370:	0900034f          	fnmadd.s	ft6,ft0,fa6,ft1,rne
    3374:	0000                	.insn	2, 0x
    3376:	0001                	.insn	2, 0x0001
    3378:	0402                	.insn	2, 0x0402
    337a:	0900034f          	fnmadd.s	ft6,ft0,fa6,ft1,rne
    337e:	0000                	.insn	2, 0x
    3380:	0001                	.insn	2, 0x0001
    3382:	0402                	.insn	2, 0x0402
    3384:	0900034f          	fnmadd.s	ft6,ft0,fa6,ft1,rne
    3388:	000c                	.insn	2, 0x000c
    338a:	0001                	.insn	2, 0x0001
    338c:	0402                	.insn	2, 0x0402
    338e:	0900034f          	fnmadd.s	ft6,ft0,fa6,ft1,rne
    3392:	0008                	.insn	2, 0x0008
    3394:	0001                	.insn	2, 0x0001
    3396:	0402                	.insn	2, 0x0402
    3398:	0650                	.insn	2, 0x0650
    339a:	04090003          	lb	zero,64(s2)
    339e:	0100                	.insn	2, 0x0100
    33a0:	0200                	.insn	2, 0x0200
    33a2:	4f04                	.insn	2, 0x4f04
    33a4:	04090003          	lb	zero,64(s2)
    33a8:	0100                	.insn	2, 0x0100
    33aa:	0200                	.insn	2, 0x0200
    33ac:	5004                	.insn	2, 0x5004
    33ae:	04090003          	lb	zero,64(s2)
    33b2:	0100                	.insn	2, 0x0100
    33b4:	0200                	.insn	2, 0x0200
    33b6:	5404                	.insn	2, 0x5404
    33b8:	04090003          	lb	zero,64(s2)
    33bc:	0100                	.insn	2, 0x0100
    33be:	0200                	.insn	2, 0x0200
    33c0:	5a04                	.insn	2, 0x5a04
    33c2:	0306                	.insn	2, 0x0306
    33c4:	0900                	.insn	2, 0x0900
    33c6:	000c                	.insn	2, 0x000c
    33c8:	0001                	.insn	2, 0x0001
    33ca:	0402                	.insn	2, 0x0402
    33cc:	035a                	.insn	2, 0x035a
    33ce:	0900                	.insn	2, 0x0900
    33d0:	0000                	.insn	2, 0x
    33d2:	0001                	.insn	2, 0x0001
    33d4:	0402                	.insn	2, 0x0402
    33d6:	035a                	.insn	2, 0x035a
    33d8:	0900                	.insn	2, 0x0900
    33da:	0000                	.insn	2, 0x
    33dc:	0001                	.insn	2, 0x0001
    33de:	0402                	.insn	2, 0x0402
    33e0:	035a                	.insn	2, 0x035a
    33e2:	0900                	.insn	2, 0x0900
    33e4:	0000                	.insn	2, 0x
    33e6:	0001                	.insn	2, 0x0001
    33e8:	0402                	.insn	2, 0x0402
    33ea:	035a                	.insn	2, 0x035a
    33ec:	0900                	.insn	2, 0x0900
    33ee:	0000                	.insn	2, 0x
    33f0:	0001                	.insn	2, 0x0001
    33f2:	0402                	.insn	2, 0x0402
    33f4:	035a                	.insn	2, 0x035a
    33f6:	0900                	.insn	2, 0x0900
    33f8:	0000                	.insn	2, 0x
    33fa:	0001                	.insn	2, 0x0001
    33fc:	0402                	.insn	2, 0x0402
    33fe:	035a                	.insn	2, 0x035a
    3400:	0900                	.insn	2, 0x0900
    3402:	0000                	.insn	2, 0x
    3404:	0001                	.insn	2, 0x0001
    3406:	0402                	.insn	2, 0x0402
    3408:	035a                	.insn	2, 0x035a
    340a:	0900                	.insn	2, 0x0900
    340c:	0000                	.insn	2, 0x
    340e:	0001                	.insn	2, 0x0001
    3410:	0402                	.insn	2, 0x0402
    3412:	035a                	.insn	2, 0x035a
    3414:	0900                	.insn	2, 0x0900
    3416:	0000                	.insn	2, 0x
    3418:	0001                	.insn	2, 0x0001
    341a:	0402                	.insn	2, 0x0402
    341c:	035a                	.insn	2, 0x035a
    341e:	0900                	.insn	2, 0x0900
    3420:	0028                	.insn	2, 0x0028
    3422:	0001                	.insn	2, 0x0001
    3424:	0402                	.insn	2, 0x0402
    3426:	035a                	.insn	2, 0x035a
    3428:	0900                	.insn	2, 0x0900
    342a:	0000                	.insn	2, 0x
    342c:	0301                	.insn	2, 0x0301
    342e:	0901                	.insn	2, 0x0901
    3430:	0000                	.insn	2, 0x
    3432:	0301                	.insn	2, 0x0301
    3434:	0900                	.insn	2, 0x0900
    3436:	0000                	.insn	2, 0x
    3438:	0001                	.insn	2, 0x0001
    343a:	0402                	.insn	2, 0x0402
    343c:	0601                	.insn	2, 0x0601
    343e:	00090003          	lb	zero,0(s2)
    3442:	0100                	.insn	2, 0x0100
    3444:	0200                	.insn	2, 0x0200
    3446:	0104                	.insn	2, 0x0104
    3448:	0306                	.insn	2, 0x0306
    344a:	0900                	.insn	2, 0x0900
    344c:	0004                	.insn	2, 0x0004
    344e:	0001                	.insn	2, 0x0001
    3450:	0402                	.insn	2, 0x0402
    3452:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    3456:	0004                	.insn	2, 0x0004
    3458:	0301                	.insn	2, 0x0301
    345a:	0902                	.insn	2, 0x0902
    345c:	0000                	.insn	2, 0x
    345e:	0501                	.insn	2, 0x0501
    3460:	060a                	.insn	2, 0x060a
    3462:	00090003          	lb	zero,0(s2)
    3466:	0100                	.insn	2, 0x0100
    3468:	0305                	.insn	2, 0x0305
    346a:	0200                	.insn	2, 0x0200
    346c:	4104                	.insn	2, 0x4104
    346e:	0306                	.insn	2, 0x0306
    3470:	097d                	.insn	2, 0x097d
    3472:	0004                	.insn	2, 0x0004
    3474:	0001                	.insn	2, 0x0001
    3476:	0402                	.insn	2, 0x0402
    3478:	0341                	.insn	2, 0x0341
    347a:	0900                	.insn	2, 0x0900
    347c:	0000                	.insn	2, 0x
    347e:	0001                	.insn	2, 0x0001
    3480:	0402                	.insn	2, 0x0402
    3482:	0003064b          	fnmsub.s	fa2,ft6,ft0,ft0,rne
    3486:	0009                	.insn	2, 0x0009
    3488:	0100                	.insn	2, 0x0100
    348a:	0200                	.insn	2, 0x0200
    348c:	4104                	.insn	2, 0x4104
    348e:	04090003          	lb	zero,64(s2)
    3492:	0100                	.insn	2, 0x0100
    3494:	0200                	.insn	2, 0x0200
    3496:	4404                	.insn	2, 0x4404
    3498:	04090003          	lb	zero,64(s2)
    349c:	0100                	.insn	2, 0x0100
    349e:	0200                	.insn	2, 0x0200
    34a0:	4504                	.insn	2, 0x4504
    34a2:	08090003          	lb	zero,128(s2)
    34a6:	0100                	.insn	2, 0x0100
    34a8:	0200                	.insn	2, 0x0200
    34aa:	4c04                	.insn	2, 0x4c04
    34ac:	04090003          	lb	zero,64(s2)
    34b0:	0100                	.insn	2, 0x0100
    34b2:	0200                	.insn	2, 0x0200
    34b4:	4804                	.insn	2, 0x4804
    34b6:	0c090003          	lb	zero,192(s2)
    34ba:	0100                	.insn	2, 0x0100
    34bc:	0200                	.insn	2, 0x0200
    34be:	4904                	.insn	2, 0x4904
    34c0:	08090003          	lb	zero,128(s2)
    34c4:	0100                	.insn	2, 0x0100
    34c6:	0200                	.insn	2, 0x0200
    34c8:	4e04                	.insn	2, 0x4e04
    34ca:	0306                	.insn	2, 0x0306
    34cc:	0900                	.insn	2, 0x0900
    34ce:	0004                	.insn	2, 0x0004
    34d0:	0001                	.insn	2, 0x0001
    34d2:	0402                	.insn	2, 0x0402
    34d4:	034e                	.insn	2, 0x034e
    34d6:	0900                	.insn	2, 0x0900
    34d8:	0000                	.insn	2, 0x
    34da:	0001                	.insn	2, 0x0001
    34dc:	0402                	.insn	2, 0x0402
    34de:	0660                	.insn	2, 0x0660
    34e0:	0c097f03          	.insn	4, 0x0c097f03
    34e4:	0100                	.insn	2, 0x0100
    34e6:	0300                	.insn	2, 0x0300
    34e8:	9e04                	.insn	2, 0x9e04
    34ea:	0301                	.insn	2, 0x0301
    34ec:	0900                	.insn	2, 0x0900
    34ee:	0008                	.insn	2, 0x0008
    34f0:	0001                	.insn	2, 0x0001
    34f2:	01e60403          	lb	s0,30(a2)
    34f6:	08090003          	lb	zero,128(s2)
    34fa:	0100                	.insn	2, 0x0100
    34fc:	0300                	.insn	2, 0x0300
    34fe:	f104                	.insn	2, 0xf104
    3500:	0301                	.insn	2, 0x0301
    3502:	0900                	.insn	2, 0x0900
    3504:	0008                	.insn	2, 0x0008
    3506:	0001                	.insn	2, 0x0001
    3508:	02920403          	lb	s0,41(tp) # 29 <_tbss_end+0x29>
    350c:	08090003          	lb	zero,128(s2)
    3510:	0100                	.insn	2, 0x0100
    3512:	0300                	.insn	2, 0x0300
    3514:	9f04                	.insn	2, 0x9f04
    3516:	0302                	.insn	2, 0x0302
    3518:	0900                	.insn	2, 0x0900
    351a:	000c                	.insn	2, 0x000c
    351c:	0001                	.insn	2, 0x0001
    351e:	02860403          	lb	s0,40(a2)
    3522:	14090003          	lb	zero,320(s2)
    3526:	0100                	.insn	2, 0x0100
    3528:	0300                	.insn	2, 0x0300
    352a:	8804                	.insn	2, 0x8804
    352c:	0301                	.insn	2, 0x0301
    352e:	0900                	.insn	2, 0x0900
    3530:	000c                	.insn	2, 0x000c
    3532:	0001                	.insn	2, 0x0001
    3534:	02c30403          	lb	s0,44(t1) # 900002c <_tbss_end+0x900002c>
    3538:	08090003          	lb	zero,128(s2)
    353c:	0100                	.insn	2, 0x0100
    353e:	0300                	.insn	2, 0x0300
    3540:	ca04                	.insn	2, 0xca04
    3542:	0302                	.insn	2, 0x0302
    3544:	0900                	.insn	2, 0x0900
    3546:	0008                	.insn	2, 0x0008
    3548:	0001                	.insn	2, 0x0001
    354a:	02cb0403          	lb	s0,44(s6)
    354e:	08090003          	lb	zero,128(s2)
    3552:	0100                	.insn	2, 0x0100
    3554:	0300                	.insn	2, 0x0300
    3556:	da04                	.insn	2, 0xda04
    3558:	0602                	.insn	2, 0x0602
    355a:	0c090003          	lb	zero,192(s2)
    355e:	0100                	.insn	2, 0x0100
    3560:	0300                	.insn	2, 0x0300
    3562:	da04                	.insn	2, 0xda04
    3564:	0302                	.insn	2, 0x0302
    3566:	0900                	.insn	2, 0x0900
    3568:	0000                	.insn	2, 0x
    356a:	0001                	.insn	2, 0x0001
    356c:	02da0403          	lb	s0,45(s4)
    3570:	00090003          	lb	zero,0(s2)
    3574:	0100                	.insn	2, 0x0100
    3576:	0306                	.insn	2, 0x0306
    3578:	00040977          	.insn	4, 0x00040977
    357c:	0001                	.insn	2, 0x0001
    357e:	01970403          	lb	s0,25(a4)
    3582:	0306                	.insn	2, 0x0306
    3584:	0909                	.insn	2, 0x0909
    3586:	0008                	.insn	2, 0x0008
    3588:	0001                	.insn	2, 0x0001
    358a:	01970403          	lb	s0,25(a4)
    358e:	00090003          	lb	zero,0(s2)
    3592:	0100                	.insn	2, 0x0100
    3594:	0300                	.insn	2, 0x0300
    3596:	9704                	.insn	2, 0x9704
    3598:	0301                	.insn	2, 0x0301
    359a:	0900                	.insn	2, 0x0900
    359c:	0000                	.insn	2, 0x
    359e:	0501                	.insn	2, 0x0501
    35a0:	0601                	.insn	2, 0x0601
    35a2:	0c090503          	lb	a0,192(s2)
    35a6:	0100                	.insn	2, 0x0100
    35a8:	0409                	.insn	2, 0x0409
    35aa:	0000                	.insn	2, 0x
    35ac:	0101                	.insn	2, 0x0101
    35ae:	0331                	.insn	2, 0x0331
    35b0:	0000                	.insn	2, 0x
    35b2:	0005                	.insn	2, 0x0005
    35b4:	0004                	.insn	2, 0x0004
    35b6:	0038                	.insn	2, 0x0038
    35b8:	0000                	.insn	2, 0x
    35ba:	0101                	.insn	2, 0x0101
    35bc:	fb01                	.insn	2, 0xfb01
    35be:	0d0e                	.insn	2, 0x0d0e
    35c0:	0100                	.insn	2, 0x0100
    35c2:	0101                	.insn	2, 0x0101
    35c4:	0001                	.insn	2, 0x0001
    35c6:	0000                	.insn	2, 0x
    35c8:	0001                	.insn	2, 0x0001
    35ca:	0100                	.insn	2, 0x0100
    35cc:	0101                	.insn	2, 0x0101
    35ce:	021f 0026 0000      	.insn	6, 0x0026021f
    35d4:	0085                	.insn	2, 0x0085
    35d6:	0000                	.insn	2, 0x
    35d8:	0102                	.insn	2, 0x0102
    35da:	021f 040f 017e      	.insn	6, 0x017e040f021f
    35e0:	0000                	.insn	2, 0x
    35e2:	7e01                	.insn	2, 0x7e01
    35e4:	0001                	.insn	2, 0x0001
    35e6:	0100                	.insn	2, 0x0100
    35e8:	0000012f          	.insn	4, 0x012f
    35ec:	b301                	.insn	2, 0xb301
    35ee:	0000                	.insn	2, 0x
    35f0:	0100                	.insn	2, 0x0100
    35f2:	0105                	.insn	2, 0x0105
    35f4:	0500                	.insn	2, 0x0500
    35f6:	8c02                	.insn	2, 0x8c02
    35f8:	0380002b          	.insn	4, 0x0380002b
    35fc:	0121                	.insn	2, 0x0121
    35fe:	0305                	.insn	2, 0x0305
    3600:	00090103          	lb	sp,0(s2)
    3604:	0100                	.insn	2, 0x0100
    3606:	00090003          	lb	zero,0(s2)
    360a:	0100                	.insn	2, 0x0100
    360c:	0d05                	.insn	2, 0x0d05
    360e:	00090003          	lb	zero,0(s2)
    3612:	0100                	.insn	2, 0x0100
    3614:	0305                	.insn	2, 0x0305
    3616:	00090103          	lb	sp,0(s2)
    361a:	0100                	.insn	2, 0x0100
    361c:	00090003          	lb	zero,0(s2)
    3620:	0100                	.insn	2, 0x0100
    3622:	00090003          	lb	zero,0(s2)
    3626:	0100                	.insn	2, 0x0100
    3628:	00090003          	lb	zero,0(s2)
    362c:	0100                	.insn	2, 0x0100
    362e:	00090103          	lb	sp,0(s2)
    3632:	0100                	.insn	2, 0x0100
    3634:	00090203          	lb	tp,0(s2)
    3638:	0100                	.insn	2, 0x0100
    363a:	00090003          	lb	zero,0(s2)
    363e:	0100                	.insn	2, 0x0100
    3640:	04090003          	lb	zero,64(s2)
    3644:	0100                	.insn	2, 0x0100
    3646:	00090103          	lb	sp,0(s2)
    364a:	0100                	.insn	2, 0x0100
    364c:	00090003          	lb	zero,0(s2)
    3650:	0100                	.insn	2, 0x0100
    3652:	00090003          	lb	zero,0(s2)
    3656:	0100                	.insn	2, 0x0100
    3658:	00090003          	lb	zero,0(s2)
    365c:	0100                	.insn	2, 0x0100
    365e:	00090003          	lb	zero,0(s2)
    3662:	0100                	.insn	2, 0x0100
    3664:	0306                	.insn	2, 0x0306
    3666:	0901                	.insn	2, 0x0901
    3668:	0010                	.insn	2, 0x0010
    366a:	0301                	.insn	2, 0x0301
    366c:	097f 0004 0601 0003 	.insn	10, 0x0409000306010004097f
    3674:	0409 
    3676:	0100                	.insn	2, 0x0100
    3678:	00090003          	lb	zero,0(s2)
    367c:	0100                	.insn	2, 0x0100
    367e:	04090003          	lb	zero,64(s2)
    3682:	0100                	.insn	2, 0x0100
    3684:	00090103          	lb	sp,0(s2)
    3688:	0100                	.insn	2, 0x0100
    368a:	00090003          	lb	zero,0(s2)
    368e:	0100                	.insn	2, 0x0100
    3690:	0200                	.insn	2, 0x0200
    3692:	0104                	.insn	2, 0x0104
    3694:	04090003          	lb	zero,64(s2)
    3698:	0100                	.insn	2, 0x0100
    369a:	0200                	.insn	2, 0x0200
    369c:	0104                	.insn	2, 0x0104
    369e:	00090003          	lb	zero,0(s2)
    36a2:	0100                	.insn	2, 0x0100
    36a4:	0200                	.insn	2, 0x0200
    36a6:	0304                	.insn	2, 0x0304
    36a8:	04090003          	lb	zero,64(s2)
    36ac:	0100                	.insn	2, 0x0100
    36ae:	0200                	.insn	2, 0x0200
    36b0:	0204                	.insn	2, 0x0204
    36b2:	0c090003          	lb	zero,192(s2)
    36b6:	0100                	.insn	2, 0x0100
    36b8:	0200                	.insn	2, 0x0200
    36ba:	0a04                	.insn	2, 0x0a04
    36bc:	00090003          	lb	zero,0(s2)
    36c0:	0100                	.insn	2, 0x0100
    36c2:	0200                	.insn	2, 0x0200
    36c4:	0c04                	.insn	2, 0x0c04
    36c6:	08090003          	lb	zero,128(s2)
    36ca:	0100                	.insn	2, 0x0100
    36cc:	0200                	.insn	2, 0x0200
    36ce:	0e04                	.insn	2, 0x0e04
    36d0:	00090003          	lb	zero,0(s2)
    36d4:	0100                	.insn	2, 0x0100
    36d6:	0200                	.insn	2, 0x0200
    36d8:	0e04                	.insn	2, 0x0e04
    36da:	00090003          	lb	zero,0(s2)
    36de:	0100                	.insn	2, 0x0100
    36e0:	0200                	.insn	2, 0x0200
    36e2:	0e04                	.insn	2, 0x0e04
    36e4:	00090003          	lb	zero,0(s2)
    36e8:	0100                	.insn	2, 0x0100
    36ea:	0200                	.insn	2, 0x0200
    36ec:	1304                	.insn	2, 0x1304
    36ee:	00090003          	lb	zero,0(s2)
    36f2:	0100                	.insn	2, 0x0100
    36f4:	0200                	.insn	2, 0x0200
    36f6:	1404                	.insn	2, 0x1404
    36f8:	0306                	.insn	2, 0x0306
    36fa:	0900                	.insn	2, 0x0900
    36fc:	0004                	.insn	2, 0x0004
    36fe:	0001                	.insn	2, 0x0001
    3700:	0402                	.insn	2, 0x0402
    3702:	0616                	.insn	2, 0x0616
    3704:	08090003          	lb	zero,128(s2)
    3708:	0100                	.insn	2, 0x0100
    370a:	0200                	.insn	2, 0x0200
    370c:	1604                	.insn	2, 0x1604
    370e:	00090003          	lb	zero,0(s2)
    3712:	0100                	.insn	2, 0x0100
    3714:	0200                	.insn	2, 0x0200
    3716:	1604                	.insn	2, 0x1604
    3718:	00090003          	lb	zero,0(s2)
    371c:	0100                	.insn	2, 0x0100
    371e:	0200                	.insn	2, 0x0200
    3720:	1604                	.insn	2, 0x1604
    3722:	00090003          	lb	zero,0(s2)
    3726:	0100                	.insn	2, 0x0100
    3728:	0200                	.insn	2, 0x0200
    372a:	1604                	.insn	2, 0x1604
    372c:	00090003          	lb	zero,0(s2)
    3730:	0100                	.insn	2, 0x0100
    3732:	0200                	.insn	2, 0x0200
    3734:	1604                	.insn	2, 0x1604
    3736:	00090003          	lb	zero,0(s2)
    373a:	0100                	.insn	2, 0x0100
    373c:	0200                	.insn	2, 0x0200
    373e:	1604                	.insn	2, 0x1604
    3740:	00090003          	lb	zero,0(s2)
    3744:	0100                	.insn	2, 0x0100
    3746:	0200                	.insn	2, 0x0200
    3748:	1604                	.insn	2, 0x1604
    374a:	00090003          	lb	zero,0(s2)
    374e:	0100                	.insn	2, 0x0100
    3750:	0200                	.insn	2, 0x0200
    3752:	1904                	.insn	2, 0x1904
    3754:	10090003          	lb	zero,256(s2)
    3758:	0100                	.insn	2, 0x0100
    375a:	0200                	.insn	2, 0x0200
    375c:	1604                	.insn	2, 0x1604
    375e:	0306                	.insn	2, 0x0306
    3760:	0900                	.insn	2, 0x0900
    3762:	0000                	.insn	2, 0x
    3764:	0001                	.insn	2, 0x0001
    3766:	0402                	.insn	2, 0x0402
    3768:	0319                	.insn	2, 0x0319
    376a:	0900                	.insn	2, 0x0900
    376c:	0004                	.insn	2, 0x0004
    376e:	0001                	.insn	2, 0x0001
    3770:	0402                	.insn	2, 0x0402
    3772:	030e                	.insn	2, 0x030e
    3774:	0900                	.insn	2, 0x0900
    3776:	0004                	.insn	2, 0x0004
    3778:	0001                	.insn	2, 0x0001
    377a:	0402                	.insn	2, 0x0402
    377c:	060d                	.insn	2, 0x060d
    377e:	08090003          	lb	zero,128(s2)
    3782:	0100                	.insn	2, 0x0100
    3784:	0200                	.insn	2, 0x0200
    3786:	0d04                	.insn	2, 0x0d04
    3788:	00090003          	lb	zero,0(s2)
    378c:	0100                	.insn	2, 0x0100
    378e:	0200                	.insn	2, 0x0200
    3790:	1c04                	.insn	2, 0x1c04
    3792:	0306                	.insn	2, 0x0306
    3794:	0900                	.insn	2, 0x0900
    3796:	0000                	.insn	2, 0x
    3798:	0001                	.insn	2, 0x0001
    379a:	0402                	.insn	2, 0x0402
    379c:	030d                	.insn	2, 0x030d
    379e:	0900                	.insn	2, 0x0900
    37a0:	0004                	.insn	2, 0x0004
    37a2:	0001                	.insn	2, 0x0001
    37a4:	0402                	.insn	2, 0x0402
    37a6:	060d                	.insn	2, 0x060d
    37a8:	04090003          	lb	zero,64(s2)
    37ac:	0100                	.insn	2, 0x0100
    37ae:	0200                	.insn	2, 0x0200
    37b0:	1c04                	.insn	2, 0x1c04
    37b2:	00090003          	lb	zero,0(s2)
    37b6:	0100                	.insn	2, 0x0100
    37b8:	0200                	.insn	2, 0x0200
    37ba:	1e04                	.insn	2, 0x1e04
    37bc:	0c090003          	lb	zero,192(s2)
    37c0:	0100                	.insn	2, 0x0100
    37c2:	0200                	.insn	2, 0x0200
    37c4:	2304                	.insn	2, 0x2304
    37c6:	0306                	.insn	2, 0x0306
    37c8:	0900                	.insn	2, 0x0900
    37ca:	0000                	.insn	2, 0x
    37cc:	0001                	.insn	2, 0x0001
    37ce:	0402                	.insn	2, 0x0402
    37d0:	0325                	.insn	2, 0x0325
    37d2:	0900                	.insn	2, 0x0900
    37d4:	0008                	.insn	2, 0x0008
    37d6:	0001                	.insn	2, 0x0001
    37d8:	0402                	.insn	2, 0x0402
    37da:	09000323          	sb	a6,134(zero) # 86 <_tbss_end+0x86>
    37de:	0008                	.insn	2, 0x0008
    37e0:	0001                	.insn	2, 0x0001
    37e2:	0402                	.insn	2, 0x0402
    37e4:	0625                	.insn	2, 0x0625
    37e6:	04090003          	lb	zero,64(s2)
    37ea:	0100                	.insn	2, 0x0100
    37ec:	0200                	.insn	2, 0x0200
    37ee:	2504                	.insn	2, 0x2504
    37f0:	04090003          	lb	zero,64(s2)
    37f4:	0100                	.insn	2, 0x0100
    37f6:	0200                	.insn	2, 0x0200
    37f8:	2b04                	.insn	2, 0x2b04
    37fa:	00090003          	lb	zero,0(s2)
    37fe:	0100                	.insn	2, 0x0100
    3800:	0200                	.insn	2, 0x0200
    3802:	2c04                	.insn	2, 0x2c04
    3804:	00090003          	lb	zero,0(s2)
    3808:	0100                	.insn	2, 0x0100
    380a:	0200                	.insn	2, 0x0200
    380c:	2d04                	.insn	2, 0x2d04
    380e:	04090003          	lb	zero,64(s2)
    3812:	0100                	.insn	2, 0x0100
    3814:	0200                	.insn	2, 0x0200
    3816:	2f04                	.insn	2, 0x2f04
    3818:	04090003          	lb	zero,64(s2)
    381c:	0100                	.insn	2, 0x0100
    381e:	0200                	.insn	2, 0x0200
    3820:	3804                	.insn	2, 0x3804
    3822:	00090003          	lb	zero,0(s2)
    3826:	0100                	.insn	2, 0x0100
    3828:	0200                	.insn	2, 0x0200
    382a:	0104                	.insn	2, 0x0104
    382c:	04090103          	lb	sp,64(s2)
    3830:	0100                	.insn	2, 0x0100
    3832:	0200                	.insn	2, 0x0200
    3834:	0304                	.insn	2, 0x0304
    3836:	04090003          	lb	zero,64(s2)
    383a:	0100                	.insn	2, 0x0100
    383c:	00090203          	lb	tp,0(s2)
    3840:	0100                	.insn	2, 0x0100
    3842:	0105                	.insn	2, 0x0105
    3844:	0306                	.insn	2, 0x0306
    3846:	0901                	.insn	2, 0x0901
    3848:	0000                	.insn	2, 0x
    384a:	0501                	.insn	2, 0x0501
    384c:	04020003          	lb	zero,64(tp) # 40 <_tbss_end+0x40>
    3850:	061f 7c03 0409      	.insn	6, 0x04097c03061f
    3856:	0100                	.insn	2, 0x0100
    3858:	0200                	.insn	2, 0x0200
    385a:	2804                	.insn	2, 0x2804
    385c:	0306                	.insn	2, 0x0306
    385e:	0900                	.insn	2, 0x0900
    3860:	0004                	.insn	2, 0x0004
    3862:	0001                	.insn	2, 0x0001
    3864:	0402                	.insn	2, 0x0402
    3866:	031f 0900 0004      	.insn	6, 0x00040900031f
    386c:	0001                	.insn	2, 0x0001
    386e:	0402                	.insn	2, 0x0402
    3870:	09000327          	.insn	4, 0x09000327
    3874:	0004                	.insn	2, 0x0004
    3876:	0001                	.insn	2, 0x0001
    3878:	0402                	.insn	2, 0x0402
    387a:	032a                	.insn	2, 0x032a
    387c:	0900                	.insn	2, 0x0900
    387e:	0008                	.insn	2, 0x0008
    3880:	0001                	.insn	2, 0x0001
    3882:	0402                	.insn	2, 0x0402
    3884:	062a                	.insn	2, 0x062a
    3886:	10090003          	lb	zero,256(s2)
    388a:	0100                	.insn	2, 0x0100
    388c:	0200                	.insn	2, 0x0200
    388e:	2a04                	.insn	2, 0x2a04
    3890:	04090003          	lb	zero,64(s2)
    3894:	0100                	.insn	2, 0x0100
    3896:	0200                	.insn	2, 0x0200
    3898:	0104                	.insn	2, 0x0104
    389a:	0306                	.insn	2, 0x0306
    389c:	0900                	.insn	2, 0x0900
    389e:	0004                	.insn	2, 0x0004
    38a0:	0001                	.insn	2, 0x0001
    38a2:	0402                	.insn	2, 0x0402
    38a4:	0304                	.insn	2, 0x0304
    38a6:	0900                	.insn	2, 0x0900
    38a8:	0004                	.insn	2, 0x0004
    38aa:	0001                	.insn	2, 0x0001
    38ac:	0402                	.insn	2, 0x0402
    38ae:	030e                	.insn	2, 0x030e
    38b0:	0900                	.insn	2, 0x0900
    38b2:	0008                	.insn	2, 0x0008
    38b4:	0001                	.insn	2, 0x0001
    38b6:	0402                	.insn	2, 0x0402
    38b8:	09000317          	auipc	t1,0x9000
    38bc:	0008                	.insn	2, 0x0008
    38be:	0001                	.insn	2, 0x0001
    38c0:	0402                	.insn	2, 0x0402
    38c2:	030e                	.insn	2, 0x030e
    38c4:	0900                	.insn	2, 0x0900
    38c6:	0008                	.insn	2, 0x0008
    38c8:	0001                	.insn	2, 0x0001
    38ca:	0402                	.insn	2, 0x0402
    38cc:	031a                	.insn	2, 0x031a
    38ce:	0900                	.insn	2, 0x0900
    38d0:	0008                	.insn	2, 0x0008
    38d2:	0001                	.insn	2, 0x0001
    38d4:	0402                	.insn	2, 0x0402
    38d6:	030e                	.insn	2, 0x030e
    38d8:	0900                	.insn	2, 0x0900
    38da:	0004                	.insn	2, 0x0004
    38dc:	0901                	.insn	2, 0x0901
    38de:	0008                	.insn	2, 0x0008
    38e0:	0100                	.insn	2, 0x0100
    38e2:	b901                	.insn	2, 0xb901
    38e4:	0002                	.insn	2, 0x0002
    38e6:	0500                	.insn	2, 0x0500
    38e8:	0400                	.insn	2, 0x0400
    38ea:	3800                	.insn	2, 0x3800
    38ec:	0000                	.insn	2, 0x
    38ee:	0100                	.insn	2, 0x0100
    38f0:	0101                	.insn	2, 0x0101
    38f2:	000d0efb          	.insn	4, 0x000d0efb
    38f6:	0101                	.insn	2, 0x0101
    38f8:	0101                	.insn	2, 0x0101
    38fa:	0000                	.insn	2, 0x
    38fc:	0100                	.insn	2, 0x0100
    38fe:	0000                	.insn	2, 0x
    3900:	0101                	.insn	2, 0x0101
    3902:	1f01                	.insn	2, 0x1f01
    3904:	2602                	.insn	2, 0x2602
    3906:	0000                	.insn	2, 0x
    3908:	8500                	.insn	2, 0x8500
    390a:	0000                	.insn	2, 0x
    390c:	0200                	.insn	2, 0x0200
    390e:	1f01                	.insn	2, 0x1f01
    3910:	0f02                	.insn	2, 0x0f02
    3912:	a604                	.insn	2, 0xa604
    3914:	0001                	.insn	2, 0x0001
    3916:	0100                	.insn	2, 0x0100
    3918:	01a6                	.insn	2, 0x01a6
    391a:	0000                	.insn	2, 0x
    391c:	2f01                	.insn	2, 0x2f01
    391e:	0001                	.insn	2, 0x0001
    3920:	0100                	.insn	2, 0x0100
    3922:	000000b3          	add	ra,zero,zero
    3926:	0501                	.insn	2, 0x0501
    3928:	0001                	.insn	2, 0x0001
    392a:	0205                	.insn	2, 0x0205
    392c:	2c90                	.insn	2, 0x2c90
    392e:	8000                	.insn	2, 0x8000
    3930:	05012103          	lw	sp,80(sp)
    3934:	09010303          	lb	t1,144(sp)
    3938:	0000                	.insn	2, 0x
    393a:	0301                	.insn	2, 0x0301
    393c:	0900                	.insn	2, 0x0900
    393e:	0000                	.insn	2, 0x
    3940:	0501                	.insn	2, 0x0501
    3942:	030d                	.insn	2, 0x030d
    3944:	0900                	.insn	2, 0x0900
    3946:	0000                	.insn	2, 0x
    3948:	0501                	.insn	2, 0x0501
    394a:	09010303          	lb	t1,144(sp)
    394e:	0000                	.insn	2, 0x
    3950:	0301                	.insn	2, 0x0301
    3952:	0900                	.insn	2, 0x0900
    3954:	0000                	.insn	2, 0x
    3956:	0301                	.insn	2, 0x0301
    3958:	0900                	.insn	2, 0x0900
    395a:	0000                	.insn	2, 0x
    395c:	0301                	.insn	2, 0x0301
    395e:	0900                	.insn	2, 0x0900
    3960:	0000                	.insn	2, 0x
    3962:	0301                	.insn	2, 0x0301
    3964:	0901                	.insn	2, 0x0901
    3966:	0000                	.insn	2, 0x
    3968:	0301                	.insn	2, 0x0301
    396a:	0902                	.insn	2, 0x0902
    396c:	0000                	.insn	2, 0x
    396e:	0301                	.insn	2, 0x0301
    3970:	0900                	.insn	2, 0x0900
    3972:	0000                	.insn	2, 0x
    3974:	0501                	.insn	2, 0x0501
    3976:	0601                	.insn	2, 0x0601
    3978:	00097b03          	.insn	4, 0x00097b03
    397c:	0100                	.insn	2, 0x0100
    397e:	0305                	.insn	2, 0x0305
    3980:	04090503          	lb	a0,64(s2)
    3984:	0100                	.insn	2, 0x0100
    3986:	0306                	.insn	2, 0x0306
    3988:	0900                	.insn	2, 0x0900
    398a:	0004                	.insn	2, 0x0004
    398c:	0301                	.insn	2, 0x0301
    398e:	0901                	.insn	2, 0x0901
    3990:	0000                	.insn	2, 0x
    3992:	0301                	.insn	2, 0x0301
    3994:	0900                	.insn	2, 0x0900
    3996:	0000                	.insn	2, 0x
    3998:	0301                	.insn	2, 0x0301
    399a:	0900                	.insn	2, 0x0900
    399c:	0000                	.insn	2, 0x
    399e:	0301                	.insn	2, 0x0301
    39a0:	0900                	.insn	2, 0x0900
    39a2:	0000                	.insn	2, 0x
    39a4:	0301                	.insn	2, 0x0301
    39a6:	0900                	.insn	2, 0x0900
    39a8:	0000                	.insn	2, 0x
    39aa:	0601                	.insn	2, 0x0601
    39ac:	10090103          	lb	sp,256(s2)
    39b0:	0100                	.insn	2, 0x0100
    39b2:	04097f03          	.insn	4, 0x04097f03
    39b6:	0100                	.insn	2, 0x0100
    39b8:	0306                	.insn	2, 0x0306
    39ba:	0900                	.insn	2, 0x0900
    39bc:	0004                	.insn	2, 0x0004
    39be:	0301                	.insn	2, 0x0301
    39c0:	0900                	.insn	2, 0x0900
    39c2:	0000                	.insn	2, 0x
    39c4:	0301                	.insn	2, 0x0301
    39c6:	0900                	.insn	2, 0x0900
    39c8:	0004                	.insn	2, 0x0004
    39ca:	0301                	.insn	2, 0x0301
    39cc:	0901                	.insn	2, 0x0901
    39ce:	0000                	.insn	2, 0x
    39d0:	0301                	.insn	2, 0x0301
    39d2:	0900                	.insn	2, 0x0900
    39d4:	0000                	.insn	2, 0x
    39d6:	0001                	.insn	2, 0x0001
    39d8:	0402                	.insn	2, 0x0402
    39da:	0301                	.insn	2, 0x0301
    39dc:	0900                	.insn	2, 0x0900
    39de:	0004                	.insn	2, 0x0004
    39e0:	0001                	.insn	2, 0x0001
    39e2:	0402                	.insn	2, 0x0402
    39e4:	0301                	.insn	2, 0x0301
    39e6:	0900                	.insn	2, 0x0900
    39e8:	0000                	.insn	2, 0x
    39ea:	0001                	.insn	2, 0x0001
    39ec:	0402                	.insn	2, 0x0402
    39ee:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    39f2:	0004                	.insn	2, 0x0004
    39f4:	0001                	.insn	2, 0x0001
    39f6:	0402                	.insn	2, 0x0402
    39f8:	0302                	.insn	2, 0x0302
    39fa:	0900                	.insn	2, 0x0900
    39fc:	000c                	.insn	2, 0x000c
    39fe:	0001                	.insn	2, 0x0001
    3a00:	0402                	.insn	2, 0x0402
    3a02:	030a                	.insn	2, 0x030a
    3a04:	0900                	.insn	2, 0x0900
    3a06:	0000                	.insn	2, 0x
    3a08:	0001                	.insn	2, 0x0001
    3a0a:	0402                	.insn	2, 0x0402
    3a0c:	0003060f          	.insn	4, 0x0003060f
    3a10:	0009                	.insn	2, 0x0009
    3a12:	0100                	.insn	2, 0x0100
    3a14:	0200                	.insn	2, 0x0200
    3a16:	1104                	.insn	2, 0x1104
    3a18:	0c090003          	lb	zero,192(s2)
    3a1c:	0100                	.insn	2, 0x0100
    3a1e:	0200                	.insn	2, 0x0200
    3a20:	1304                	.insn	2, 0x1304
    3a22:	0306                	.insn	2, 0x0306
    3a24:	0900                	.insn	2, 0x0900
    3a26:	0004                	.insn	2, 0x0004
    3a28:	0001                	.insn	2, 0x0001
    3a2a:	0402                	.insn	2, 0x0402
    3a2c:	09000313          	li	t1,144
    3a30:	0000                	.insn	2, 0x
    3a32:	0001                	.insn	2, 0x0001
    3a34:	0402                	.insn	2, 0x0402
    3a36:	0620                	.insn	2, 0x0620
    3a38:	00090003          	lb	zero,0(s2)
    3a3c:	0100                	.insn	2, 0x0100
    3a3e:	0200                	.insn	2, 0x0200
    3a40:	1304                	.insn	2, 0x1304
    3a42:	0c090003          	lb	zero,192(s2)
    3a46:	0100                	.insn	2, 0x0100
    3a48:	0200                	.insn	2, 0x0200
    3a4a:	1304                	.insn	2, 0x1304
    3a4c:	0306                	.insn	2, 0x0306
    3a4e:	0900                	.insn	2, 0x0900
    3a50:	0004                	.insn	2, 0x0004
    3a52:	0001                	.insn	2, 0x0001
    3a54:	0402                	.insn	2, 0x0402
    3a56:	0320                	.insn	2, 0x0320
    3a58:	0900                	.insn	2, 0x0900
    3a5a:	0000                	.insn	2, 0x
    3a5c:	0001                	.insn	2, 0x0001
    3a5e:	0402                	.insn	2, 0x0402
    3a60:	0322                	.insn	2, 0x0322
    3a62:	0900                	.insn	2, 0x0900
    3a64:	0004                	.insn	2, 0x0004
    3a66:	0001                	.insn	2, 0x0001
    3a68:	0402                	.insn	2, 0x0402
    3a6a:	00030627          	.insn	4, 0x00030627
    3a6e:	0009                	.insn	2, 0x0009
    3a70:	0100                	.insn	2, 0x0100
    3a72:	0200                	.insn	2, 0x0200
    3a74:	2904                	.insn	2, 0x2904
    3a76:	0306                	.insn	2, 0x0306
    3a78:	0900                	.insn	2, 0x0900
    3a7a:	0004                	.insn	2, 0x0004
    3a7c:	0001                	.insn	2, 0x0001
    3a7e:	0402                	.insn	2, 0x0402
    3a80:	00030627          	.insn	4, 0x00030627
    3a84:	0809                	.insn	2, 0x0809
    3a86:	0100                	.insn	2, 0x0100
    3a88:	0200                	.insn	2, 0x0200
    3a8a:	2904                	.insn	2, 0x2904
    3a8c:	04090003          	lb	zero,64(s2)
    3a90:	0100                	.insn	2, 0x0100
    3a92:	0200                	.insn	2, 0x0200
    3a94:	2904                	.insn	2, 0x2904
    3a96:	0306                	.insn	2, 0x0306
    3a98:	0900                	.insn	2, 0x0900
    3a9a:	0004                	.insn	2, 0x0004
    3a9c:	0001                	.insn	2, 0x0001
    3a9e:	0402                	.insn	2, 0x0402
    3aa0:	0900032f          	.insn	4, 0x0900032f
    3aa4:	0000                	.insn	2, 0x
    3aa6:	0001                	.insn	2, 0x0001
    3aa8:	0402                	.insn	2, 0x0402
    3aaa:	0330                	.insn	2, 0x0330
    3aac:	0900                	.insn	2, 0x0900
    3aae:	0000                	.insn	2, 0x
    3ab0:	0001                	.insn	2, 0x0001
    3ab2:	0402                	.insn	2, 0x0402
    3ab4:	09000333          	.insn	4, 0x09000333
    3ab8:	0000                	.insn	2, 0x
    3aba:	0001                	.insn	2, 0x0001
    3abc:	0402                	.insn	2, 0x0402
    3abe:	033c                	.insn	2, 0x033c
    3ac0:	0900                	.insn	2, 0x0900
    3ac2:	0000                	.insn	2, 0x
    3ac4:	0001                	.insn	2, 0x0001
    3ac6:	0402                	.insn	2, 0x0402
    3ac8:	0312                	.insn	2, 0x0312
    3aca:	0900                	.insn	2, 0x0900
    3acc:	0008                	.insn	2, 0x0008
    3ace:	0001                	.insn	2, 0x0001
    3ad0:	0402                	.insn	2, 0x0402
    3ad2:	0315                	.insn	2, 0x0315
    3ad4:	0900                	.insn	2, 0x0900
    3ad6:	0000                	.insn	2, 0x
    3ad8:	0001                	.insn	2, 0x0001
    3ada:	0402                	.insn	2, 0x0402
    3adc:	0315                	.insn	2, 0x0315
    3ade:	0900                	.insn	2, 0x0900
    3ae0:	0000                	.insn	2, 0x
    3ae2:	0001                	.insn	2, 0x0001
    3ae4:	0402                	.insn	2, 0x0402
    3ae6:	0003061b          	.insn	4, 0x0003061b
    3aea:	0409                	.insn	2, 0x0409
    3aec:	0100                	.insn	2, 0x0100
    3aee:	0200                	.insn	2, 0x0200
    3af0:	0104                	.insn	2, 0x0104
    3af2:	0306                	.insn	2, 0x0306
    3af4:	0901                	.insn	2, 0x0901
    3af6:	0004                	.insn	2, 0x0004
    3af8:	0001                	.insn	2, 0x0001
    3afa:	0402                	.insn	2, 0x0402
    3afc:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    3b00:	0004                	.insn	2, 0x0004
    3b02:	0301                	.insn	2, 0x0301
    3b04:	0902                	.insn	2, 0x0902
    3b06:	0000                	.insn	2, 0x
    3b08:	0501                	.insn	2, 0x0501
    3b0a:	0601                	.insn	2, 0x0601
    3b0c:	00090103          	lb	sp,0(s2)
    3b10:	0100                	.insn	2, 0x0100
    3b12:	0305                	.insn	2, 0x0305
    3b14:	0200                	.insn	2, 0x0200
    3b16:	2304                	.insn	2, 0x2304
    3b18:	0306                	.insn	2, 0x0306
    3b1a:	097c                	.insn	2, 0x097c
    3b1c:	0004                	.insn	2, 0x0004
    3b1e:	0001                	.insn	2, 0x0001
    3b20:	0402                	.insn	2, 0x0402
    3b22:	062c                	.insn	2, 0x062c
    3b24:	04090003          	lb	zero,64(s2)
    3b28:	0100                	.insn	2, 0x0100
    3b2a:	0200                	.insn	2, 0x0200
    3b2c:	2304                	.insn	2, 0x2304
    3b2e:	04090003          	lb	zero,64(s2)
    3b32:	0100                	.insn	2, 0x0100
    3b34:	0200                	.insn	2, 0x0200
    3b36:	2b04                	.insn	2, 0x2b04
    3b38:	04090003          	lb	zero,64(s2)
    3b3c:	0100                	.insn	2, 0x0100
    3b3e:	0200                	.insn	2, 0x0200
    3b40:	2e04                	.insn	2, 0x2e04
    3b42:	0306                	.insn	2, 0x0306
    3b44:	0900                	.insn	2, 0x0900
    3b46:	0008                	.insn	2, 0x0008
    3b48:	0001                	.insn	2, 0x0001
    3b4a:	0402                	.insn	2, 0x0402
    3b4c:	032e                	.insn	2, 0x032e
    3b4e:	0900                	.insn	2, 0x0900
    3b50:	0010                	.insn	2, 0x0010
    3b52:	0001                	.insn	2, 0x0001
    3b54:	0402                	.insn	2, 0x0402
    3b56:	0900032f          	.insn	4, 0x0900032f
    3b5a:	0000                	.insn	2, 0x
    3b5c:	0001                	.insn	2, 0x0001
    3b5e:	0402                	.insn	2, 0x0402
    3b60:	0330                	.insn	2, 0x0330
    3b62:	0900                	.insn	2, 0x0900
    3b64:	0000                	.insn	2, 0x
    3b66:	0001                	.insn	2, 0x0001
    3b68:	0402                	.insn	2, 0x0402
    3b6a:	09000333          	.insn	4, 0x09000333
    3b6e:	0000                	.insn	2, 0x
    3b70:	0001                	.insn	2, 0x0001
    3b72:	0402                	.insn	2, 0x0402
    3b74:	033c                	.insn	2, 0x033c
    3b76:	0900                	.insn	2, 0x0900
    3b78:	0000                	.insn	2, 0x
    3b7a:	0001                	.insn	2, 0x0001
    3b7c:	0402                	.insn	2, 0x0402
    3b7e:	063d                	.insn	2, 0x063d
    3b80:	04090003          	lb	zero,64(s2)
    3b84:	0100                	.insn	2, 0x0100
    3b86:	0200                	.insn	2, 0x0200
    3b88:	0104                	.insn	2, 0x0104
    3b8a:	08090003          	lb	zero,128(s2)
    3b8e:	0100                	.insn	2, 0x0100
    3b90:	0200                	.insn	2, 0x0200
    3b92:	1504                	.insn	2, 0x1504
    3b94:	08090003          	lb	zero,128(s2)
    3b98:	0100                	.insn	2, 0x0100
    3b9a:	0809                	.insn	2, 0x0809
    3b9c:	0000                	.insn	2, 0x
    3b9e:	0101                	.insn	2, 0x0101
    3ba0:	0239                	.insn	2, 0x0239
    3ba2:	0000                	.insn	2, 0x
    3ba4:	0005                	.insn	2, 0x0005
    3ba6:	0004                	.insn	2, 0x0004
    3ba8:	0038                	.insn	2, 0x0038
    3baa:	0000                	.insn	2, 0x
    3bac:	0101                	.insn	2, 0x0101
    3bae:	fb01                	.insn	2, 0xfb01
    3bb0:	0d0e                	.insn	2, 0x0d0e
    3bb2:	0100                	.insn	2, 0x0100
    3bb4:	0101                	.insn	2, 0x0101
    3bb6:	0001                	.insn	2, 0x0001
    3bb8:	0000                	.insn	2, 0x
    3bba:	0001                	.insn	2, 0x0001
    3bbc:	0100                	.insn	2, 0x0100
    3bbe:	0101                	.insn	2, 0x0101
    3bc0:	021f 0026 0000      	.insn	6, 0x0026021f
    3bc6:	0085                	.insn	2, 0x0085
    3bc8:	0000                	.insn	2, 0x
    3bca:	0102                	.insn	2, 0x0102
    3bcc:	021f 040f 01d1      	.insn	6, 0x01d1040f021f
    3bd2:	0000                	.insn	2, 0x
    3bd4:	d101                	.insn	2, 0xd101
    3bd6:	0001                	.insn	2, 0x0001
    3bd8:	0100                	.insn	2, 0x0100
    3bda:	0000012f          	.insn	4, 0x012f
    3bde:	b301                	.insn	2, 0xb301
    3be0:	0000                	.insn	2, 0x
    3be2:	0100                	.insn	2, 0x0100
    3be4:	0105                	.insn	2, 0x0105
    3be6:	0500                	.insn	2, 0x0500
    3be8:	5802                	.insn	2, 0x5802
    3bea:	002d                	.insn	2, 0x002d
    3bec:	0380                	.insn	2, 0x0380
    3bee:	0122                	.insn	2, 0x0122
    3bf0:	0305                	.insn	2, 0x0305
    3bf2:	00090103          	lb	sp,0(s2)
    3bf6:	0100                	.insn	2, 0x0100
    3bf8:	00090003          	lb	zero,0(s2)
    3bfc:	0100                	.insn	2, 0x0100
    3bfe:	00090003          	lb	zero,0(s2)
    3c02:	0100                	.insn	2, 0x0100
    3c04:	00090003          	lb	zero,0(s2)
    3c08:	0100                	.insn	2, 0x0100
    3c0a:	00090103          	lb	sp,0(s2)
    3c0e:	0100                	.insn	2, 0x0100
    3c10:	00090203          	lb	tp,0(s2)
    3c14:	0100                	.insn	2, 0x0100
    3c16:	00090003          	lb	zero,0(s2)
    3c1a:	0100                	.insn	2, 0x0100
    3c1c:	0200                	.insn	2, 0x0200
    3c1e:	0104                	.insn	2, 0x0104
    3c20:	04090003          	lb	zero,64(s2)
    3c24:	0100                	.insn	2, 0x0100
    3c26:	0200                	.insn	2, 0x0200
    3c28:	0104                	.insn	2, 0x0104
    3c2a:	00090003          	lb	zero,0(s2)
    3c2e:	0100                	.insn	2, 0x0100
    3c30:	0200                	.insn	2, 0x0200
    3c32:	0304                	.insn	2, 0x0304
    3c34:	0306                	.insn	2, 0x0306
    3c36:	0900                	.insn	2, 0x0900
    3c38:	0000                	.insn	2, 0x
    3c3a:	0001                	.insn	2, 0x0001
    3c3c:	0402                	.insn	2, 0x0402
    3c3e:	030c                	.insn	2, 0x030c
    3c40:	0900                	.insn	2, 0x0900
    3c42:	0004                	.insn	2, 0x0004
    3c44:	0001                	.insn	2, 0x0001
    3c46:	0402                	.insn	2, 0x0402
    3c48:	0316                	.insn	2, 0x0316
    3c4a:	0900                	.insn	2, 0x0900
    3c4c:	0004                	.insn	2, 0x0004
    3c4e:	0001                	.insn	2, 0x0001
    3c50:	0402                	.insn	2, 0x0402
    3c52:	09000303          	lb	t1,144(zero) # 90 <_tbss_end+0x90>
    3c56:	0004                	.insn	2, 0x0004
    3c58:	0001                	.insn	2, 0x0001
    3c5a:	0402                	.insn	2, 0x0402
    3c5c:	0301                	.insn	2, 0x0301
    3c5e:	0900                	.insn	2, 0x0900
    3c60:	0004                	.insn	2, 0x0004
    3c62:	0001                	.insn	2, 0x0001
    3c64:	0402                	.insn	2, 0x0402
    3c66:	0605                	.insn	2, 0x0605
    3c68:	04090003          	lb	zero,64(s2)
    3c6c:	0100                	.insn	2, 0x0100
    3c6e:	0200                	.insn	2, 0x0200
    3c70:	0504                	.insn	2, 0x0504
    3c72:	00090003          	lb	zero,0(s2)
    3c76:	0100                	.insn	2, 0x0100
    3c78:	0200                	.insn	2, 0x0200
    3c7a:	0504                	.insn	2, 0x0504
    3c7c:	00090003          	lb	zero,0(s2)
    3c80:	0100                	.insn	2, 0x0100
    3c82:	0200                	.insn	2, 0x0200
    3c84:	0504                	.insn	2, 0x0504
    3c86:	00090003          	lb	zero,0(s2)
    3c8a:	0100                	.insn	2, 0x0100
    3c8c:	0200                	.insn	2, 0x0200
    3c8e:	0504                	.insn	2, 0x0504
    3c90:	00090003          	lb	zero,0(s2)
    3c94:	0100                	.insn	2, 0x0100
    3c96:	0200                	.insn	2, 0x0200
    3c98:	0504                	.insn	2, 0x0504
    3c9a:	00090003          	lb	zero,0(s2)
    3c9e:	0100                	.insn	2, 0x0100
    3ca0:	0200                	.insn	2, 0x0200
    3ca2:	0604                	.insn	2, 0x0604
    3ca4:	00090003          	lb	zero,0(s2)
    3ca8:	0100                	.insn	2, 0x0100
    3caa:	0200                	.insn	2, 0x0200
    3cac:	0c04                	.insn	2, 0x0c04
    3cae:	04090003          	lb	zero,64(s2)
    3cb2:	0100                	.insn	2, 0x0100
    3cb4:	0200                	.insn	2, 0x0200
    3cb6:	0c04                	.insn	2, 0x0c04
    3cb8:	00090003          	lb	zero,0(s2)
    3cbc:	0100                	.insn	2, 0x0100
    3cbe:	0200                	.insn	2, 0x0200
    3cc0:	0c04                	.insn	2, 0x0c04
    3cc2:	04090003          	lb	zero,64(s2)
    3cc6:	0100                	.insn	2, 0x0100
    3cc8:	0200                	.insn	2, 0x0200
    3cca:	0e04                	.insn	2, 0x0e04
    3ccc:	00090003          	lb	zero,0(s2)
    3cd0:	0100                	.insn	2, 0x0100
    3cd2:	0200                	.insn	2, 0x0200
    3cd4:	1404                	.insn	2, 0x1404
    3cd6:	00090003          	lb	zero,0(s2)
    3cda:	0100                	.insn	2, 0x0100
    3cdc:	0200                	.insn	2, 0x0200
    3cde:	1404                	.insn	2, 0x1404
    3ce0:	00090003          	lb	zero,0(s2)
    3ce4:	0100                	.insn	2, 0x0100
    3ce6:	0200                	.insn	2, 0x0200
    3ce8:	1404                	.insn	2, 0x1404
    3cea:	00090003          	lb	zero,0(s2)
    3cee:	0100                	.insn	2, 0x0100
    3cf0:	0200                	.insn	2, 0x0200
    3cf2:	1404                	.insn	2, 0x1404
    3cf4:	00090003          	lb	zero,0(s2)
    3cf8:	0100                	.insn	2, 0x0100
    3cfa:	0200                	.insn	2, 0x0200
    3cfc:	1404                	.insn	2, 0x1404
    3cfe:	00090003          	lb	zero,0(s2)
    3d02:	0100                	.insn	2, 0x0100
    3d04:	0200                	.insn	2, 0x0200
    3d06:	1604                	.insn	2, 0x1604
    3d08:	00090003          	lb	zero,0(s2)
    3d0c:	0100                	.insn	2, 0x0100
    3d0e:	0200                	.insn	2, 0x0200
    3d10:	1704                	.insn	2, 0x1704
    3d12:	04090003          	lb	zero,64(s2)
    3d16:	0100                	.insn	2, 0x0100
    3d18:	0200                	.insn	2, 0x0200
    3d1a:	1c04                	.insn	2, 0x1c04
    3d1c:	00090003          	lb	zero,0(s2)
    3d20:	0100                	.insn	2, 0x0100
    3d22:	0200                	.insn	2, 0x0200
    3d24:	1704                	.insn	2, 0x1704
    3d26:	0306                	.insn	2, 0x0306
    3d28:	0900                	.insn	2, 0x0900
    3d2a:	0008                	.insn	2, 0x0008
    3d2c:	0001                	.insn	2, 0x0001
    3d2e:	0402                	.insn	2, 0x0402
    3d30:	031c                	.insn	2, 0x031c
    3d32:	0900                	.insn	2, 0x0900
    3d34:	0004                	.insn	2, 0x0004
    3d36:	0001                	.insn	2, 0x0001
    3d38:	0402                	.insn	2, 0x0402
    3d3a:	061c                	.insn	2, 0x061c
    3d3c:	04090003          	lb	zero,64(s2)
    3d40:	0100                	.insn	2, 0x0100
    3d42:	0200                	.insn	2, 0x0200
    3d44:	0104                	.insn	2, 0x0104
    3d46:	0306                	.insn	2, 0x0306
    3d48:	0900                	.insn	2, 0x0900
    3d4a:	0000                	.insn	2, 0x
    3d4c:	0001                	.insn	2, 0x0001
    3d4e:	0402                	.insn	2, 0x0402
    3d50:	031c                	.insn	2, 0x031c
    3d52:	0900                	.insn	2, 0x0900
    3d54:	0004                	.insn	2, 0x0004
    3d56:	0001                	.insn	2, 0x0001
    3d58:	0402                	.insn	2, 0x0402
    3d5a:	061e                	.insn	2, 0x061e
    3d5c:	04090003          	lb	zero,64(s2)
    3d60:	0100                	.insn	2, 0x0100
    3d62:	0200                	.insn	2, 0x0200
    3d64:	7e04                	.insn	2, 0x7e04
    3d66:	00090003          	lb	zero,0(s2)
    3d6a:	0100                	.insn	2, 0x0100
    3d6c:	00090103          	lb	sp,0(s2)
    3d70:	0100                	.insn	2, 0x0100
    3d72:	00090003          	lb	zero,0(s2)
    3d76:	0100                	.insn	2, 0x0100
    3d78:	00090003          	lb	zero,0(s2)
    3d7c:	0100                	.insn	2, 0x0100
    3d7e:	00090003          	lb	zero,0(s2)
    3d82:	0100                	.insn	2, 0x0100
    3d84:	00090003          	lb	zero,0(s2)
    3d88:	0100                	.insn	2, 0x0100
    3d8a:	00090003          	lb	zero,0(s2)
    3d8e:	0100                	.insn	2, 0x0100
    3d90:	00090003          	lb	zero,0(s2)
    3d94:	0100                	.insn	2, 0x0100
    3d96:	18090003          	lb	zero,384(s2)
    3d9a:	0100                	.insn	2, 0x0100
    3d9c:	00090203          	lb	tp,0(s2)
    3da0:	0100                	.insn	2, 0x0100
    3da2:	0105                	.insn	2, 0x0105
    3da4:	0306                	.insn	2, 0x0306
    3da6:	0901                	.insn	2, 0x0901
    3da8:	0000                	.insn	2, 0x
    3daa:	0501                	.insn	2, 0x0501
    3dac:	04020003          	lb	zero,64(tp) # 40 <_tbss_end+0x40>
    3db0:	0618                	.insn	2, 0x0618
    3db2:	0c097c03          	.insn	4, 0x0c097c03
    3db6:	0100                	.insn	2, 0x0100
    3db8:	0200                	.insn	2, 0x0200
    3dba:	1804                	.insn	2, 0x1804
    3dbc:	08090003          	lb	zero,128(s2)
    3dc0:	0100                	.insn	2, 0x0100
    3dc2:	0200                	.insn	2, 0x0200
    3dc4:	0104                	.insn	2, 0x0104
    3dc6:	0306                	.insn	2, 0x0306
    3dc8:	0900                	.insn	2, 0x0900
    3dca:	0000                	.insn	2, 0x
    3dcc:	0001                	.insn	2, 0x0001
    3dce:	0402                	.insn	2, 0x0402
    3dd0:	0302                	.insn	2, 0x0302
    3dd2:	0900                	.insn	2, 0x0900
    3dd4:	0004                	.insn	2, 0x0004
    3dd6:	0901                	.insn	2, 0x0901
    3dd8:	0014                	.insn	2, 0x0014
    3dda:	0100                	.insn	2, 0x0100
    3ddc:	0501                	.insn	2, 0x0501
    3dde:	0002                	.insn	2, 0x0002
    3de0:	0500                	.insn	2, 0x0500
    3de2:	0400                	.insn	2, 0x0400
    3de4:	3800                	.insn	2, 0x3800
    3de6:	0000                	.insn	2, 0x
    3de8:	0100                	.insn	2, 0x0100
    3dea:	0101                	.insn	2, 0x0101
    3dec:	000d0efb          	.insn	4, 0x000d0efb
    3df0:	0101                	.insn	2, 0x0101
    3df2:	0101                	.insn	2, 0x0101
    3df4:	0000                	.insn	2, 0x
    3df6:	0100                	.insn	2, 0x0100
    3df8:	0000                	.insn	2, 0x
    3dfa:	0101                	.insn	2, 0x0101
    3dfc:	1f01                	.insn	2, 0x1f01
    3dfe:	2602                	.insn	2, 0x2602
    3e00:	0000                	.insn	2, 0x
    3e02:	8500                	.insn	2, 0x8500
    3e04:	0000                	.insn	2, 0x
    3e06:	0200                	.insn	2, 0x0200
    3e08:	1f01                	.insn	2, 0x1f01
    3e0a:	0f02                	.insn	2, 0x0f02
    3e0c:	fb04                	.insn	2, 0xfb04
    3e0e:	0001                	.insn	2, 0x0001
    3e10:	0100                	.insn	2, 0x0100
    3e12:	000001fb          	.insn	4, 0x01fb
    3e16:	2f01                	.insn	2, 0x2f01
    3e18:	0001                	.insn	2, 0x0001
    3e1a:	0100                	.insn	2, 0x0100
    3e1c:	000000b3          	add	ra,zero,zero
    3e20:	0501                	.insn	2, 0x0501
    3e22:	0001                	.insn	2, 0x0001
    3e24:	0205                	.insn	2, 0x0205
    3e26:	2dd8                	.insn	2, 0x2dd8
    3e28:	8000                	.insn	2, 0x8000
    3e2a:	05012203          	lw	tp,80(sp)
    3e2e:	09010303          	lb	t1,144(sp)
    3e32:	0000                	.insn	2, 0x
    3e34:	0301                	.insn	2, 0x0301
    3e36:	0900                	.insn	2, 0x0900
    3e38:	0000                	.insn	2, 0x
    3e3a:	0301                	.insn	2, 0x0301
    3e3c:	0900                	.insn	2, 0x0900
    3e3e:	0000                	.insn	2, 0x
    3e40:	0301                	.insn	2, 0x0301
    3e42:	0900                	.insn	2, 0x0900
    3e44:	0000                	.insn	2, 0x
    3e46:	0301                	.insn	2, 0x0301
    3e48:	0901                	.insn	2, 0x0901
    3e4a:	0000                	.insn	2, 0x
    3e4c:	0301                	.insn	2, 0x0301
    3e4e:	0902                	.insn	2, 0x0902
    3e50:	0000                	.insn	2, 0x
    3e52:	0301                	.insn	2, 0x0301
    3e54:	0900                	.insn	2, 0x0900
    3e56:	0000                	.insn	2, 0x
    3e58:	0001                	.insn	2, 0x0001
    3e5a:	0402                	.insn	2, 0x0402
    3e5c:	0301                	.insn	2, 0x0301
    3e5e:	0900                	.insn	2, 0x0900
    3e60:	0004                	.insn	2, 0x0004
    3e62:	0001                	.insn	2, 0x0001
    3e64:	0402                	.insn	2, 0x0402
    3e66:	0301                	.insn	2, 0x0301
    3e68:	0900                	.insn	2, 0x0900
    3e6a:	0000                	.insn	2, 0x
    3e6c:	0001                	.insn	2, 0x0001
    3e6e:	0402                	.insn	2, 0x0402
    3e70:	0305                	.insn	2, 0x0305
    3e72:	0900                	.insn	2, 0x0900
    3e74:	0000                	.insn	2, 0x
    3e76:	0001                	.insn	2, 0x0001
    3e78:	0402                	.insn	2, 0x0402
    3e7a:	0305                	.insn	2, 0x0305
    3e7c:	0900                	.insn	2, 0x0900
    3e7e:	0000                	.insn	2, 0x
    3e80:	0001                	.insn	2, 0x0001
    3e82:	0402                	.insn	2, 0x0402
    3e84:	0305                	.insn	2, 0x0305
    3e86:	0900                	.insn	2, 0x0900
    3e88:	0000                	.insn	2, 0x
    3e8a:	0001                	.insn	2, 0x0001
    3e8c:	0402                	.insn	2, 0x0402
    3e8e:	0305                	.insn	2, 0x0305
    3e90:	0900                	.insn	2, 0x0900
    3e92:	0000                	.insn	2, 0x
    3e94:	0001                	.insn	2, 0x0001
    3e96:	0402                	.insn	2, 0x0402
    3e98:	0305                	.insn	2, 0x0305
    3e9a:	0900                	.insn	2, 0x0900
    3e9c:	0000                	.insn	2, 0x
    3e9e:	0001                	.insn	2, 0x0001
    3ea0:	0402                	.insn	2, 0x0402
    3ea2:	0305                	.insn	2, 0x0305
    3ea4:	0900                	.insn	2, 0x0900
    3ea6:	0000                	.insn	2, 0x
    3ea8:	0001                	.insn	2, 0x0001
    3eaa:	0402                	.insn	2, 0x0402
    3eac:	0306                	.insn	2, 0x0306
    3eae:	0900                	.insn	2, 0x0900
    3eb0:	0000                	.insn	2, 0x
    3eb2:	0001                	.insn	2, 0x0001
    3eb4:	0402                	.insn	2, 0x0402
    3eb6:	060c                	.insn	2, 0x060c
    3eb8:	00090003          	lb	zero,0(s2)
    3ebc:	0100                	.insn	2, 0x0100
    3ebe:	0200                	.insn	2, 0x0200
    3ec0:	1604                	.insn	2, 0x1604
    3ec2:	04090003          	lb	zero,64(s2)
    3ec6:	0100                	.insn	2, 0x0100
    3ec8:	0200                	.insn	2, 0x0200
    3eca:	0604                	.insn	2, 0x0604
    3ecc:	04090003          	lb	zero,64(s2)
    3ed0:	0100                	.insn	2, 0x0100
    3ed2:	0200                	.insn	2, 0x0200
    3ed4:	0c04                	.insn	2, 0x0c04
    3ed6:	0306                	.insn	2, 0x0306
    3ed8:	0900                	.insn	2, 0x0900
    3eda:	0004                	.insn	2, 0x0004
    3edc:	0001                	.insn	2, 0x0001
    3ede:	0402                	.insn	2, 0x0402
    3ee0:	030c                	.insn	2, 0x030c
    3ee2:	0900                	.insn	2, 0x0900
    3ee4:	0000                	.insn	2, 0x
    3ee6:	0001                	.insn	2, 0x0001
    3ee8:	0402                	.insn	2, 0x0402
    3eea:	030c                	.insn	2, 0x030c
    3eec:	0900                	.insn	2, 0x0900
    3eee:	0004                	.insn	2, 0x0004
    3ef0:	0001                	.insn	2, 0x0001
    3ef2:	0402                	.insn	2, 0x0402
    3ef4:	030e                	.insn	2, 0x030e
    3ef6:	0900                	.insn	2, 0x0900
    3ef8:	0000                	.insn	2, 0x
    3efa:	0001                	.insn	2, 0x0001
    3efc:	0402                	.insn	2, 0x0402
    3efe:	0314                	.insn	2, 0x0314
    3f00:	0900                	.insn	2, 0x0900
    3f02:	0000                	.insn	2, 0x
    3f04:	0001                	.insn	2, 0x0001
    3f06:	0402                	.insn	2, 0x0402
    3f08:	0314                	.insn	2, 0x0314
    3f0a:	0900                	.insn	2, 0x0900
    3f0c:	0000                	.insn	2, 0x
    3f0e:	0001                	.insn	2, 0x0001
    3f10:	0402                	.insn	2, 0x0402
    3f12:	0314                	.insn	2, 0x0314
    3f14:	0900                	.insn	2, 0x0900
    3f16:	0000                	.insn	2, 0x
    3f18:	0001                	.insn	2, 0x0001
    3f1a:	0402                	.insn	2, 0x0402
    3f1c:	0314                	.insn	2, 0x0314
    3f1e:	0900                	.insn	2, 0x0900
    3f20:	0000                	.insn	2, 0x
    3f22:	0001                	.insn	2, 0x0001
    3f24:	0402                	.insn	2, 0x0402
    3f26:	0314                	.insn	2, 0x0314
    3f28:	0900                	.insn	2, 0x0900
    3f2a:	0000                	.insn	2, 0x
    3f2c:	0001                	.insn	2, 0x0001
    3f2e:	0402                	.insn	2, 0x0402
    3f30:	0316                	.insn	2, 0x0316
    3f32:	0900                	.insn	2, 0x0900
    3f34:	0000                	.insn	2, 0x
    3f36:	0001                	.insn	2, 0x0001
    3f38:	0402                	.insn	2, 0x0402
    3f3a:	09000317          	auipc	t1,0x9000
    3f3e:	0004                	.insn	2, 0x0004
    3f40:	0001                	.insn	2, 0x0001
    3f42:	0402                	.insn	2, 0x0402
    3f44:	031c                	.insn	2, 0x031c
    3f46:	0900                	.insn	2, 0x0900
    3f48:	0000                	.insn	2, 0x
    3f4a:	0001                	.insn	2, 0x0001
    3f4c:	0402                	.insn	2, 0x0402
    3f4e:	00030617          	auipc	a2,0x30
    3f52:	0809                	.insn	2, 0x0809
    3f54:	0100                	.insn	2, 0x0100
    3f56:	0200                	.insn	2, 0x0200
    3f58:	1c04                	.insn	2, 0x1c04
    3f5a:	04090003          	lb	zero,64(s2)
    3f5e:	0100                	.insn	2, 0x0100
    3f60:	0200                	.insn	2, 0x0200
    3f62:	1c04                	.insn	2, 0x1c04
    3f64:	0306                	.insn	2, 0x0306
    3f66:	0900                	.insn	2, 0x0900
    3f68:	0004                	.insn	2, 0x0004
    3f6a:	0001                	.insn	2, 0x0001
    3f6c:	0402                	.insn	2, 0x0402
    3f6e:	031e                	.insn	2, 0x031e
    3f70:	0900                	.insn	2, 0x0900
    3f72:	0004                	.insn	2, 0x0004
    3f74:	0001                	.insn	2, 0x0001
    3f76:	0402                	.insn	2, 0x0402
    3f78:	037e                	.insn	2, 0x037e
    3f7a:	0900                	.insn	2, 0x0900
    3f7c:	0000                	.insn	2, 0x
    3f7e:	0301                	.insn	2, 0x0301
    3f80:	0901                	.insn	2, 0x0901
    3f82:	0000                	.insn	2, 0x
    3f84:	0301                	.insn	2, 0x0301
    3f86:	0900                	.insn	2, 0x0900
    3f88:	0000                	.insn	2, 0x
    3f8a:	0301                	.insn	2, 0x0301
    3f8c:	0900                	.insn	2, 0x0900
    3f8e:	0000                	.insn	2, 0x
    3f90:	0301                	.insn	2, 0x0301
    3f92:	0900                	.insn	2, 0x0900
    3f94:	0000                	.insn	2, 0x
    3f96:	0301                	.insn	2, 0x0301
    3f98:	0900                	.insn	2, 0x0900
    3f9a:	0000                	.insn	2, 0x
    3f9c:	0301                	.insn	2, 0x0301
    3f9e:	0900                	.insn	2, 0x0900
    3fa0:	0000                	.insn	2, 0x
    3fa2:	0301                	.insn	2, 0x0301
    3fa4:	0900                	.insn	2, 0x0900
    3fa6:	0000                	.insn	2, 0x
    3fa8:	0301                	.insn	2, 0x0301
    3faa:	0900                	.insn	2, 0x0900
    3fac:	0014                	.insn	2, 0x0014
    3fae:	0301                	.insn	2, 0x0301
    3fb0:	0902                	.insn	2, 0x0902
    3fb2:	0000                	.insn	2, 0x
    3fb4:	0501                	.insn	2, 0x0501
    3fb6:	0601                	.insn	2, 0x0601
    3fb8:	00090103          	lb	sp,0(s2)
    3fbc:	0100                	.insn	2, 0x0100
    3fbe:	0305                	.insn	2, 0x0305
    3fc0:	0200                	.insn	2, 0x0200
    3fc2:	1804                	.insn	2, 0x1804
    3fc4:	0306                	.insn	2, 0x0306
    3fc6:	097c                	.insn	2, 0x097c
    3fc8:	000c                	.insn	2, 0x000c
    3fca:	0001                	.insn	2, 0x0001
    3fcc:	0402                	.insn	2, 0x0402
    3fce:	0318                	.insn	2, 0x0318
    3fd0:	0900                	.insn	2, 0x0900
    3fd2:	0008                	.insn	2, 0x0008
    3fd4:	0001                	.insn	2, 0x0001
    3fd6:	0402                	.insn	2, 0x0402
    3fd8:	0602                	.insn	2, 0x0602
    3fda:	08090003          	lb	zero,128(s2)
    3fde:	0100                	.insn	2, 0x0100
    3fe0:	0c09                	.insn	2, 0x0c09
    3fe2:	0000                	.insn	2, 0x
    3fe4:	0101                	.insn	2, 0x0101

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	5f5f 7165 6664      	.insn	6, 0x666471655f5f
   6:	0032                	.insn	2, 0x0032
   8:	20554e47          	fmsub.s	ft8,fa0,ft5,ft4,rmm
   c:	20373143          	fmadd.s	ft2,fa4,ft3,ft4,rup
  10:	3331                	.insn	2, 0x3331
  12:	322e                	.insn	2, 0x322e
  14:	302e                	.insn	2, 0x302e
  16:	2d20                	.insn	2, 0x2d20
  18:	636d                	.insn	2, 0x636d
  1a:	6f6d                	.insn	2, 0x6f6d
  1c:	6564                	.insn	2, 0x6564
  1e:	3d6c                	.insn	2, 0x3d6c
  20:	656d                	.insn	2, 0x656d
  22:	6c64                	.insn	2, 0x6c64
  24:	2d20776f          	jal	a4,72f6 <_tbss_end+0x72f6>
  28:	636d                	.insn	2, 0x636d
  2a:	6f6d                	.insn	2, 0x6f6d
  2c:	6564                	.insn	2, 0x6564
  2e:	3d6c                	.insn	2, 0x3d6c
  30:	656d                	.insn	2, 0x656d
  32:	6c64                	.insn	2, 0x6c64
  34:	2d20776f          	jal	a4,7306 <_tbss_end+0x7306>
  38:	746d                	.insn	2, 0x746d
  3a:	6e75                	.insn	2, 0x6e75
  3c:	3d65                	.insn	2, 0x3d65
  3e:	6f72                	.insn	2, 0x6f72
  40:	74656b63          	bltu	a0,t1,796 <_tbss_end+0x796>
  44:	2d20                	.insn	2, 0x2d20
  46:	616d                	.insn	2, 0x616d
  48:	6962                	.insn	2, 0x6962
  4a:	693d                	.insn	2, 0x693d
  4c:	706c                	.insn	2, 0x706c
  4e:	20663233          	.insn	4, 0x20663233
  52:	6d2d                	.insn	2, 0x6d2d
  54:	7369                	.insn	2, 0x7369
  56:	2d61                	.insn	2, 0x2d61
  58:	63657073          	csrci	0x636,10
  5c:	323d                	.insn	2, 0x323d
  5e:	3130                	.insn	2, 0x3130
  60:	3139                	.insn	2, 0x3139
  62:	3132                	.insn	2, 0x3132
  64:	6d2d2033          	.insn	4, 0x6d2d2033
  68:	7261                	.insn	2, 0x7261
  6a:	723d6863          	bltu	s10,gp,79a <_tbss_end+0x79a>
  6e:	3376                	.insn	2, 0x3376
  70:	6932                	.insn	2, 0x6932
  72:	616d                	.insn	2, 0x616d
  74:	5f66                	.insn	2, 0x5f66
  76:	697a                	.insn	2, 0x697a
  78:	5f727363          	bgeu	tp,s7,65e <_tbss_end+0x65e>
  7c:	627a                	.insn	2, 0x627a
  7e:	5f61                	.insn	2, 0x5f61
  80:	627a                	.insn	2, 0x627a
  82:	5f62                	.insn	2, 0x5f62
  84:	627a                	.insn	2, 0x627a
  86:	672d2063          	.insn	4, 0x672d2063
  8a:	2d20                	.insn	2, 0x2d20
  8c:	2d20734f          	.insn	4, 0x2d20734f
  90:	2d20324f          	.insn	4, 0x2d20324f
  94:	2d20734f          	.insn	4, 0x2d20734f
  98:	6266                	.insn	2, 0x6266
  9a:	6975                	.insn	2, 0x6975
  9c:	646c                	.insn	2, 0x646c
  9e:	6e69                	.insn	2, 0x6e69
  a0:	696c2d67          	.insn	4, 0x696c2d67
  a4:	6762                	.insn	2, 0x6762
  a6:	2d206363          	bltu	zero,s2,36c <_tbss_end+0x36c>
  aa:	6e66                	.insn	2, 0x6e66
  ac:	74732d6f          	jal	s10,32ff2 <_tbss_end+0x32ff2>
  b0:	6361                	.insn	2, 0x6361
  b2:	72702d6b          	.insn	4, 0x72702d6b
  b6:	6365746f          	jal	s0,576ec <_tbss_end+0x576ec>
  ba:	6f74                	.insn	2, 0x6f74
  bc:	2072                	.insn	2, 0x2072
  be:	662d                	.insn	2, 0x662d
  c0:	6976                	.insn	2, 0x6976
  c2:	69626973          	csrrsi	s2,0x696,4
  c6:	696c                	.insn	2, 0x696c
  c8:	7974                	.insn	2, 0x7974
  ca:	683d                	.insn	2, 0x683d
  cc:	6469                	.insn	2, 0x6469
  ce:	6564                	.insn	2, 0x6564
  d0:	006e                	.insn	2, 0x006e
  d2:	7266                	.insn	2, 0x7266
  d4:	6361                	.insn	2, 0x6361
  d6:	0030                	.insn	2, 0x0030
  d8:	7266                	.insn	2, 0x7266
  da:	6361                	.insn	2, 0x6361
  dc:	0031                	.insn	2, 0x0031
  de:	4644                	.insn	2, 0x4644
  e0:	7974                	.insn	2, 0x7974
  e2:	6570                	.insn	2, 0x6570
  e4:	7500                	.insn	2, 0x7500
  e6:	736e                	.insn	2, 0x736e
  e8:	6769                	.insn	2, 0x6769
  ea:	656e                	.insn	2, 0x656e
  ec:	2064                	.insn	2, 0x2064
  ee:	72616863          	bltu	sp,t1,81e <_tbss_end+0x81e>
  f2:	5f00                	.insn	2, 0x5f00
  f4:	675f 6363 435f      	.insn	6, 0x435f6363675f
  fa:	504d                	.insn	2, 0x504d
  fc:	7974                	.insn	2, 0x7974
  fe:	6570                	.insn	2, 0x6570
 100:	7300                	.insn	2, 0x7300
 102:	6769                	.insn	2, 0x6769
 104:	006e                	.insn	2, 0x006e
 106:	726f6873          	csrrsi	a6,mhpmevent6h,30
 10a:	2074                	.insn	2, 0x2074
 10c:	6e75                	.insn	2, 0x6e75
 10e:	6e676973          	csrrsi	s2,0x6e6,14
 112:	6465                	.insn	2, 0x6465
 114:	6920                	.insn	2, 0x6920
 116:	746e                	.insn	2, 0x746e
 118:	4100                	.insn	2, 0x4100
 11a:	665f 0031 665f      	.insn	6, 0x665f0031665f
 120:	7865                	.insn	2, 0x7865
 122:	5f00                	.insn	2, 0x5f00
 124:	5046                	.insn	2, 0x5046
 126:	495f 5353 4749      	.insn	6, 0x47495353495f
 12c:	414e                	.insn	2, 0x414e
 12e:	5f4e                	.insn	2, 0x5f4e
 130:	6572                	.insn	2, 0x6572
 132:	0074                	.insn	2, 0x0074
 134:	6f64                	.insn	2, 0x6f64
 136:	6275                	.insn	2, 0x6275
 138:	656c                	.insn	2, 0x656c
 13a:	4100                	.insn	2, 0x4100
 13c:	665f 0030 465f      	.insn	6, 0x465f0030665f
 142:	5f50                	.insn	2, 0x5f50
 144:	4e55                	.insn	2, 0x4e55
 146:	4150                	.insn	2, 0x4150
 148:	525f4b43          	.insn	4, 0x525f4b43
 14c:	5741                	.insn	2, 0x5741
 14e:	325f 665f 6f6c      	.insn	6, 0x6f6c665f325f
 154:	4200                	.insn	2, 0x4200
 156:	665f 0030 5f42      	.insn	6, 0x5f420030665f
 15c:	3166                	.insn	2, 0x3166
 15e:	6c00                	.insn	2, 0x6c00
 160:	20676e6f          	jal	t3,76366 <_tbss_end+0x76366>
 164:	6f6c                	.insn	2, 0x6f6c
 166:	676e                	.insn	2, 0x676e
 168:	7520                	.insn	2, 0x7520
 16a:	736e                	.insn	2, 0x736e
 16c:	6769                	.insn	2, 0x6769
 16e:	656e                	.insn	2, 0x656e
 170:	2064                	.insn	2, 0x2064
 172:	6e69                	.insn	2, 0x6e69
 174:	0074                	.insn	2, 0x0074
 176:	6f6c                	.insn	2, 0x6f6c
 178:	676e                	.insn	2, 0x676e
 17a:	6c20                	.insn	2, 0x6c20
 17c:	20676e6f          	jal	t3,76382 <_tbss_end+0x76382>
 180:	6e69                	.insn	2, 0x6e69
 182:	0074                	.insn	2, 0x0074
 184:	465f 5f50 4e55      	.insn	6, 0x4e555f50465f
 18a:	4f49                	.insn	2, 0x4f49
 18c:	5f4e                	.insn	2, 0x5f4e
 18e:	0044                	.insn	2, 0x0044
 190:	6962                	.insn	2, 0x6962
 192:	7374                	.insn	2, 0x7374
 194:	5f00                	.insn	2, 0x5f00
 196:	7266                	.insn	2, 0x7266
 198:	006d                	.insn	2, 0x006d
 19a:	5f5f 6567 6664      	.insn	6, 0x666465675f5f
 1a0:	0032                	.insn	2, 0x0032
 1a2:	465f 5f50 4d43      	.insn	6, 0x4d435f50465f
 1a8:	5f50                	.insn	2, 0x5f50
 1aa:	7369                	.insn	2, 0x7369
 1ac:	7a5f 7265 5f6f      	.insn	6, 0x5f6f72657a5f
 1b2:	0078                	.insn	2, 0x0078
 1b4:	465f 5f50 4d43      	.insn	6, 0x4d435f50465f
 1ba:	5f50                	.insn	2, 0x5f50
 1bc:	7369                	.insn	2, 0x7369
 1be:	7a5f 7265 5f6f      	.insn	6, 0x5f6f72657a5f
 1c4:	0079                	.insn	2, 0x0079
 1c6:	5f5f 656c 6664      	.insn	6, 0x6664656c5f5f
 1cc:	0032                	.insn	2, 0x0032
 1ce:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 1d4:	435f4b43          	.insn	4, 0x435f4b43
 1d8:	4e41                	.insn	2, 0x4e41
 1da:	43494e4f          	.insn	4, 0x43494e4f
 1de:	4c41                	.insn	2, 0x4c41
 1e0:	545f 665f 0030      	.insn	6, 0x0030665f545f
 1e6:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 1ec:	435f4b43          	.insn	4, 0x435f4b43
 1f0:	4e41                	.insn	2, 0x4e41
 1f2:	43494e4f          	.insn	4, 0x43494e4f
 1f6:	4c41                	.insn	2, 0x4c41
 1f8:	545f 665f 0031      	.insn	6, 0x0031665f545f
 1fe:	5f5f 6875 5f00      	.insn	6, 0x5f0068755f5f
 204:	755f 006c 465f      	.insn	6, 0x465f006c755f
 20a:	5f50                	.insn	2, 0x5f50
 20c:	5246                	.insn	2, 0x5246
 20e:	4341                	.insn	2, 0x4341
 210:	535f 5352 345f      	.insn	6, 0x345f5352535f
 216:	735f 6974 6b63      	.insn	6, 0x6b636974735f
 21c:	0079                	.insn	2, 0x0079
 21e:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 224:	525f4b43          	.insn	4, 0x525f4b43
 228:	5741                	.insn	2, 0x5741
 22a:	325f 665f 6f6c      	.insn	6, 0x6f6c665f325f
 230:	5f00                	.insn	2, 0x5f00
 232:	785f 0032 465f      	.insn	6, 0x465f0032785f
 238:	5f50                	.insn	2, 0x5f50
 23a:	4e55                	.insn	2, 0x4e55
 23c:	4150                	.insn	2, 0x4150
 23e:	435f4b43          	.insn	4, 0x435f4b43
 242:	4e41                	.insn	2, 0x4e41
 244:	43494e4f          	.insn	4, 0x43494e4f
 248:	4c41                	.insn	2, 0x4c41
 24a:	735f 6968 7466      	.insn	6, 0x74666968735f
 250:	5200                	.insn	2, 0x5200
 252:	665f 0030 465f      	.insn	6, 0x465f0030665f
 258:	5f50                	.insn	2, 0x5f50
 25a:	5246                	.insn	2, 0x5246
 25c:	4341                	.insn	2, 0x4341
 25e:	535f 5352 5f54      	.insn	6, 0x5f545352535f
 264:	5f34                	.insn	2, 0x5f34
 266:	6f64                	.insn	2, 0x6f64
 268:	5f006e77          	.insn	4, 0x5f006e77
 26c:	5046                	.insn	2, 0x5046
 26e:	465f 4152 5f43      	.insn	6, 0x5f434152465f
 274:	54535253          	.insn	4, 0x54535253
 278:	345f 695f 5f00      	.insn	6, 0x5f00695f345f
 27e:	5046                	.insn	2, 0x5046
 280:	465f 4152 5f43      	.insn	6, 0x5f434152465f
 286:	54535253          	.insn	4, 0x54535253
 28a:	345f 735f 696b      	.insn	6, 0x696b735f345f
 290:	0070                	.insn	2, 0x0070
 292:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 298:	435f4b43          	.insn	4, 0x435f4b43
 29c:	4e41                	.insn	2, 0x4e41
 29e:	43494e4f          	.insn	4, 0x43494e4f
 2a2:	4c41                	.insn	2, 0x4c41
 2a4:	545f 735f 5f00      	.insn	6, 0x5f00735f545f
 2aa:	5046                	.insn	2, 0x5046
 2ac:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 2b2:	4f4e4143          	.insn	4, 0x4f4e4143
 2b6:	494e                	.insn	2, 0x494e
 2b8:	5f4c4143          	.insn	4, 0x5f4c4143
 2bc:	7369                	.insn	2, 0x7369
 2be:	745f 6e69 0079      	.insn	6, 0x00796e69745f
 2c4:	465f 5f50 5246      	.insn	6, 0x52465f50465f
 2ca:	4341                	.insn	2, 0x4341
 2cc:	535f 5352 5f54      	.insn	6, 0x5f545352535f
 2d2:	5f34                	.insn	2, 0x5f34
 2d4:	465f0073          	.insn	4, 0x465f0073
 2d8:	5f50                	.insn	2, 0x5f50
 2da:	4150                	.insn	2, 0x4150
 2dc:	435f4b43          	.insn	4, 0x435f4b43
 2e0:	4e41                	.insn	2, 0x4e41
 2e2:	43494e4f          	.insn	4, 0x43494e4f
 2e6:	4c41                	.insn	2, 0x4c41
 2e8:	545f 635f 5f00      	.insn	6, 0x5f00635f545f
 2ee:	5046                	.insn	2, 0x5046
 2f0:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 2f6:	4f4e4143          	.insn	4, 0x4f4e4143
 2fa:	494e                	.insn	2, 0x494e
 2fc:	5f4c4143          	.insn	4, 0x5f4c4143
 300:	5f54                	.insn	2, 0x5f54
 302:	0065                	.insn	2, 0x0065
 304:	5f5f 3178 5f00      	.insn	6, 0x5f0031785f5f
 30a:	785f 0033 5f5f      	.insn	6, 0x5f5f0033785f
 310:	6876                	.insn	2, 0x6876
 312:	5f00                	.insn	2, 0x5f00
 314:	5046                	.insn	2, 0x5046
 316:	465f 4152 5f43      	.insn	6, 0x5f434152465f
 31c:	54535253          	.insn	4, 0x54535253
 320:	345f 755f 0070      	.insn	6, 0x0070755f345f
 326:	5f5f 6c76 5500      	.insn	6, 0x55006c765f5f
 32c:	5748                	.insn	2, 0x5748
 32e:	7974                	.insn	2, 0x7974
 330:	6570                	.insn	2, 0x6570
 332:	5f00                	.insn	2, 0x5f00
 334:	6d5f 6c75 6664      	.insn	6, 0x66646c756d5f
 33a:	465f0033          	.insn	4, 0x465f0033
 33e:	5f50                	.insn	2, 0x5f50
 340:	554d                	.insn	2, 0x554d
 342:	5f4c                	.insn	2, 0x5f4c
 344:	454d                	.insn	2, 0x454d
 346:	5441                	.insn	2, 0x5441
 348:	445f 5f57 5f32      	.insn	6, 0x5f325f57445f
 34e:	65646977          	.insn	4, 0x65646977
 352:	635f 665f 0030      	.insn	6, 0x0030665f635f
 358:	465f 5f50 554d      	.insn	6, 0x554d5f50465f
 35e:	5f4c                	.insn	2, 0x5f4c
 360:	454d                	.insn	2, 0x454d
 362:	5441                	.insn	2, 0x5441
 364:	445f 5f57 5f32      	.insn	6, 0x5f325f57445f
 36a:	65646977          	.insn	4, 0x65646977
 36e:	635f 665f 0031      	.insn	6, 0x0031665f635f
 374:	5f5f 5046 465f      	.insn	6, 0x465f50465f5f
 37a:	4152                	.insn	2, 0x4152
 37c:	44415f43          	.insn	4, 0x44415f43
 380:	5f44                	.insn	2, 0x5f44
 382:	32635f33          	.insn	4, 0x32635f33
 386:	5f00                	.insn	2, 0x5f00
 388:	5046                	.insn	2, 0x5046
 38a:	4d5f 4c55 4d5f      	.insn	6, 0x4d5f4c554d5f
 390:	4145                	.insn	2, 0x4145
 392:	5f54                	.insn	2, 0x5f54
 394:	5f32                	.insn	2, 0x5f32
 396:	65646977          	.insn	4, 0x65646977
 39a:	7a5f 665f 5f00      	.insn	6, 0x5f00665f7a5f
 3a0:	785f 0030 5f5f      	.insn	6, 0x5f5f0030785f
 3a6:	5046                	.insn	2, 0x5046
 3a8:	465f 4152 5f43      	.insn	6, 0x5f434152465f
 3ae:	4441                	.insn	2, 0x4441
 3b0:	5f44                	.insn	2, 0x5f44
 3b2:	31635f33          	.insn	4, 0x31635f33
 3b6:	5f00                	.insn	2, 0x5f00
 3b8:	5046                	.insn	2, 0x5046
 3ba:	4d5f 4c55 4d5f      	.insn	6, 0x4d5f4c554d5f
 3c0:	4145                	.insn	2, 0x4145
 3c2:	5f54                	.insn	2, 0x5f54
 3c4:	5744                	.insn	2, 0x5744
 3c6:	325f 775f 6469      	.insn	6, 0x6469775f325f
 3cc:	5f65                	.insn	2, 0x5f65
 3ce:	5f62                	.insn	2, 0x5f62
 3d0:	3066                	.insn	2, 0x3066
 3d2:	5f00                	.insn	2, 0x5f00
 3d4:	5046                	.insn	2, 0x5046
 3d6:	4d5f 4c55 4d5f      	.insn	6, 0x4d5f4c554d5f
 3dc:	4145                	.insn	2, 0x4145
 3de:	5f54                	.insn	2, 0x5f54
 3e0:	5744                	.insn	2, 0x5744
 3e2:	325f 775f 6469      	.insn	6, 0x6469775f325f
 3e8:	5f65                	.insn	2, 0x5f65
 3ea:	5f62                	.insn	2, 0x5f62
 3ec:	3166                	.insn	2, 0x3166
 3ee:	5200                	.insn	2, 0x5200
 3f0:	665f 0031 7573      	.insn	6, 0x75730031665f
 3f6:	3262                	.insn	2, 0x3262
 3f8:	6100                	.insn	2, 0x6100
 3fa:	6464                	.insn	2, 0x6464
 3fc:	645f 6e6f 0065      	.insn	6, 0x00656e6f645f
 402:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 408:	535f4b43          	.insn	4, 0x535f4b43
 40c:	4d45                	.insn	2, 0x4d45
 40e:	5249                	.insn	2, 0x5249
 410:	5741                	.insn	2, 0x5741
 412:	545f 735f 7300      	.insn	6, 0x7300735f545f
 418:	6275                	.insn	2, 0x6275
 41a:	0031                	.insn	2, 0x0031
 41c:	33627573          	csrrci	a0,mhpmevent22,4
 420:	5f00                	.insn	2, 0x5f00
 422:	5046                	.insn	2, 0x5046
 424:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 42a:	494d4553          	.insn	4, 0x494d4553
 42e:	4152                	.insn	2, 0x4152
 430:	5f545f57          	.insn	4, 0x5f545f57
 434:	0065                	.insn	2, 0x0065
 436:	6f6e                	.insn	2, 0x6f6e
 438:	6d72                	.insn	2, 0x6d72
 43a:	5f00                	.insn	2, 0x5f00
 43c:	735f 6275 6664      	.insn	6, 0x66646275735f
 442:	465f0033          	.insn	4, 0x465f0033
 446:	5f50                	.insn	2, 0x5f50
 448:	4441                	.insn	2, 0x4441
 44a:	5f44                	.insn	2, 0x5f44
 44c:	4e49                	.insn	2, 0x4e49
 44e:	4554                	.insn	2, 0x4554
 450:	4e52                	.insn	2, 0x4e52
 452:	4c41                	.insn	2, 0x4c41
 454:	645f 6669 0066      	.insn	6, 0x00666669645f
 45a:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 460:	535f4b43          	.insn	4, 0x535f4b43
 464:	4d45                	.insn	2, 0x4d45
 466:	5249                	.insn	2, 0x5249
 468:	5741                	.insn	2, 0x5741
 46a:	695f 5f73 6974      	.insn	6, 0x69745f73695f
 470:	796e                	.insn	2, 0x796e
 472:	5f00                	.insn	2, 0x5f00
 474:	5046                	.insn	2, 0x5046
 476:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 47c:	494d4553          	.insn	4, 0x494d4553
 480:	4152                	.insn	2, 0x4152
 482:	5f545f57          	.insn	4, 0x5f545f57
 486:	3066                	.insn	2, 0x3066
 488:	5f00                	.insn	2, 0x5f00
 48a:	5046                	.insn	2, 0x5046
 48c:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 492:	494d4553          	.insn	4, 0x494d4553
 496:	4152                	.insn	2, 0x4152
 498:	5f545f57          	.insn	4, 0x5f545f57
 49c:	3166                	.insn	2, 0x3166
 49e:	5f00                	.insn	2, 0x5f00
 4a0:	5046                	.insn	2, 0x5046
 4a2:	415f 4444 495f      	.insn	6, 0x495f4444415f
 4a8:	544e                	.insn	2, 0x544e
 4aa:	5245                	.insn	2, 0x5245
 4ac:	414e                	.insn	2, 0x414e
 4ae:	5f4c                	.insn	2, 0x5f4c
 4b0:	6465                	.insn	2, 0x6465
 4b2:	6669                	.insn	2, 0x6669
 4b4:	0066                	.insn	2, 0x0066
 4b6:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 4bc:	535f4b43          	.insn	4, 0x535f4b43
 4c0:	4d45                	.insn	2, 0x4d45
 4c2:	5249                	.insn	2, 0x5249
 4c4:	5741                	.insn	2, 0x5741
 4c6:	545f 635f 7300      	.insn	6, 0x7300635f545f
 4cc:	6275                	.insn	2, 0x6275
 4ce:	645f 6e6f 0065      	.insn	6, 0x00656e6f645f
 4d4:	6461                	.insn	2, 0x6461
 4d6:	3164                	.insn	2, 0x3164
 4d8:	6100                	.insn	2, 0x6100
 4da:	6464                	.insn	2, 0x6464
 4dc:	0032                	.insn	2, 0x0032
 4de:	6461                	.insn	2, 0x6461
 4e0:	3364                	.insn	2, 0x3364
 4e2:	5f00                	.insn	2, 0x5f00
 4e4:	5046                	.insn	2, 0x5046
 4e6:	545f 5f4f 4e49      	.insn	6, 0x4e495f4f545f
 4ec:	5f54                	.insn	2, 0x5f54
 4ee:	6e69                	.insn	2, 0x6e69
 4f0:	7865                	.insn	2, 0x7865
 4f2:	6361                	.insn	2, 0x6361
 4f4:	0074                	.insn	2, 0x0074
 4f6:	5f5f 6966 6478      	.insn	6, 0x647869665f5f
 4fc:	7366                	.insn	2, 0x7366
 4fe:	0069                	.insn	2, 0x0069
 500:	5355                	.insn	2, 0x5355
 502:	7449                	.insn	2, 0x7449
 504:	7079                	.insn	2, 0x7079
 506:	0065                	.insn	2, 0x0065
 508:	5f5f 6966 7578      	.insn	6, 0x757869665f5f
 50e:	736e                	.insn	2, 0x736e
 510:	6664                	.insn	2, 0x6664
 512:	70006973          	csrrsi	s2,0x700,0
 516:	6361                	.insn	2, 0x6361
 518:	65735f6b          	.insn	4, 0x65735f6b
 51c:	696d                	.insn	2, 0x696d
 51e:	6172                	.insn	2, 0x6172
 520:	465f0077          	.insn	4, 0x465f0077
 524:	5f50                	.insn	2, 0x5f50
 526:	5246                	.insn	2, 0x5246
 528:	495f4d4f          	fnmadd.s	fs10,ft10,fs5,fs1,rmm
 52c:	544e                	.insn	2, 0x544e
 52e:	755f 0072 465f      	.insn	6, 0x465f0072755f
 534:	5f50                	.insn	2, 0x5f50
 536:	5246                	.insn	2, 0x5246
 538:	495f4d4f          	fnmadd.s	fs10,ft10,fs5,fs1,rmm
 53c:	544e                	.insn	2, 0x544e
 53e:	6c5f 007a 5f5f      	.insn	6, 0x5f5f007a6c5f
 544:	6c66                	.insn	2, 0x6c66
 546:	7374616f          	jal	sp,4747c <_tbss_end+0x4747c>
 54a:	6469                	.insn	2, 0x6469
 54c:	0066                	.insn	2, 0x0066
 54e:	5f5f 6c66 616f      	.insn	6, 0x616f6c665f5f
 554:	7574                	.insn	2, 0x7574
 556:	736e                	.insn	2, 0x736e
 558:	6469                	.insn	2, 0x6469
 55a:	0066                	.insn	2, 0x0066

Disassembly of section .debug_line_str:

00000000 <.debug_line_str>:
   0:	2e2e                	.insn	2, 0x2e2e
   2:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
   6:	2e2e                	.insn	2, 0x2e2e
   8:	672f2e2f          	amoand.w.aqrl	t3,s2,(t5)
   c:	6c2f6363          	bltu	t5,sp,6d2 <_tbss_end+0x6d2>
  10:	6269                	.insn	2, 0x6269
  12:	2f636367          	.insn	4, 0x2f636367
  16:	74666f73          	csrrsi	t5,0x746,12
  1a:	662d                	.insn	2, 0x662d
  1c:	2f70                	.insn	2, 0x2f70
  1e:	7165                	.insn	2, 0x7165
  20:	6664                	.insn	2, 0x6664
  22:	2e32                	.insn	2, 0x2e32
  24:	682f0063          	beq	t5,sp,6a4 <_tbss_end+0x6a4>
  28:	2f656d6f          	jal	s10,5631e <_tbss_end+0x5631e>
  2c:	6162                	.insn	2, 0x6162
  2e:	75726573          	csrrsi	a0,0x757,4
  32:	77656e2f          	.insn	4, 0x77656e2f
  36:	665f 6972 6373      	.insn	6, 0x63736972665f
  3c:	2f76                	.insn	2, 0x2f76
  3e:	6972                	.insn	2, 0x6972
  40:	2d766373          	csrrsi	t1,0x2d7,12
  44:	2d756e67          	.insn	4, 0x2d756e67
  48:	6f74                	.insn	2, 0x6f74
  4a:	68636c6f          	jal	s8,366d0 <_tbss_end+0x366d0>
  4e:	6961                	.insn	2, 0x6961
  50:	2f6e                	.insn	2, 0x2f6e
  52:	7562                	.insn	2, 0x7562
  54:	6c69                	.insn	2, 0x6c69
  56:	2d64                	.insn	2, 0x2d64
  58:	2d636367          	.insn	4, 0x2d636367
  5c:	656e                	.insn	2, 0x656e
  5e:	62696c77          	.insn	4, 0x62696c77
  62:	732d                	.insn	2, 0x732d
  64:	6174                	.insn	2, 0x6174
  66:	2f326567          	.insn	4, 0x2f326567
  6a:	6972                	.insn	2, 0x6972
  6c:	33766373          	csrrsi	t1,mhpmevent23,12
  70:	2d32                	.insn	2, 0x2d32
  72:	6e75                	.insn	2, 0x6e75
  74:	776f6e6b          	.insn	4, 0x776f6e6b
  78:	2d6e                	.insn	2, 0x2d6e
  7a:	6c65                	.insn	2, 0x6c65
  7c:	2f66                	.insn	2, 0x2f66
  7e:	696c                	.insn	2, 0x696c
  80:	6762                	.insn	2, 0x6762
  82:	2e006363          	bltu	zero,zero,368 <_tbss_end+0x368>
  86:	2f2e                	.insn	2, 0x2f2e
  88:	2e2e                	.insn	2, 0x2e2e
  8a:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  8e:	2f2e                	.insn	2, 0x2f2e
  90:	2f636367          	.insn	4, 0x2f636367
  94:	696c                	.insn	2, 0x696c
  96:	6762                	.insn	2, 0x6762
  98:	732f6363          	bltu	t5,s2,7be <_tbss_end+0x7be>
  9c:	2d74666f          	jal	a2,46b72 <_tbss_end+0x46b72>
  a0:	7066                	.insn	2, 0x7066
  a2:	2e00                	.insn	2, 0x2e00
  a4:	7300                	.insn	2, 0x7300
  a6:	7066                	.insn	2, 0x7066
  a8:	6d2d                	.insn	2, 0x6d2d
  aa:	6361                	.insn	2, 0x6361
  ac:	6968                	.insn	2, 0x6968
  ae:	656e                	.insn	2, 0x656e
  b0:	682e                	.insn	2, 0x682e
  b2:	6400                	.insn	2, 0x6400
  b4:	6c62756f          	jal	a0,2777a <_tbss_end+0x2777a>
  b8:	2e65                	.insn	2, 0x2e65
  ba:	0068                	.insn	2, 0x0068
  bc:	2e2e                	.insn	2, 0x2e2e
  be:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  c2:	2e2e                	.insn	2, 0x2e2e
  c4:	672f2e2f          	amoand.w.aqrl	t3,s2,(t5)
  c8:	6c2f6363          	bltu	t5,sp,78e <_tbss_end+0x78e>
  cc:	6269                	.insn	2, 0x6269
  ce:	2f636367          	.insn	4, 0x2f636367
  d2:	74666f73          	csrrsi	t5,0x746,12
  d6:	662d                	.insn	2, 0x662d
  d8:	2f70                	.insn	2, 0x2f70
  da:	66646567          	.insn	4, 0x66646567
  de:	2e32                	.insn	2, 0x2e32
  e0:	2e2e0063          	beq	t3,sp,3c0 <_tbss_end+0x3c0>
  e4:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  e8:	2e2e                	.insn	2, 0x2e2e
  ea:	672f2e2f          	amoand.w.aqrl	t3,s2,(t5)
  ee:	6c2f6363          	bltu	t5,sp,7b4 <_tbss_end+0x7b4>
  f2:	6269                	.insn	2, 0x6269
  f4:	2f636367          	.insn	4, 0x2f636367
  f8:	74666f73          	csrrsi	t5,0x746,12
  fc:	662d                	.insn	2, 0x662d
  fe:	2f70                	.insn	2, 0x2f70
 100:	656c                	.insn	2, 0x656c
 102:	6664                	.insn	2, 0x6664
 104:	2e32                	.insn	2, 0x2e32
 106:	2e2e0063          	beq	t3,sp,3e6 <_tbss_end+0x3e6>
 10a:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 10e:	2e2e                	.insn	2, 0x2e2e
 110:	672f2e2f          	amoand.w.aqrl	t3,s2,(t5)
 114:	6c2f6363          	bltu	t5,sp,7da <_tbss_end+0x7da>
 118:	6269                	.insn	2, 0x6269
 11a:	2f636367          	.insn	4, 0x2f636367
 11e:	74666f73          	csrrsi	t5,0x746,12
 122:	662d                	.insn	2, 0x662d
 124:	2f70                	.insn	2, 0x2f70
 126:	756d                	.insn	2, 0x756d
 128:	646c                	.insn	2, 0x646c
 12a:	3366                	.insn	2, 0x3366
 12c:	632e                	.insn	2, 0x632e
 12e:	7300                	.insn	2, 0x7300
 130:	2d74666f          	jal	a2,46c06 <_tbss_end+0x46c06>
 134:	7066                	.insn	2, 0x7066
 136:	682e                	.insn	2, 0x682e
 138:	2e00                	.insn	2, 0x2e00
 13a:	2f2e                	.insn	2, 0x2f2e
 13c:	2e2e                	.insn	2, 0x2e2e
 13e:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 142:	2f2e                	.insn	2, 0x2f2e
 144:	2f636367          	.insn	4, 0x2f636367
 148:	696c                	.insn	2, 0x696c
 14a:	6762                	.insn	2, 0x6762
 14c:	732f6363          	bltu	t5,s2,872 <_tbss_end+0x872>
 150:	2d74666f          	jal	a2,46c26 <_tbss_end+0x46c26>
 154:	7066                	.insn	2, 0x7066
 156:	6275732f          	.insn	4, 0x6275732f
 15a:	6664                	.insn	2, 0x6664
 15c:	00632e33          	slt	t3,t1,t1
 160:	2e2e                	.insn	2, 0x2e2e
 162:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 166:	2e2e                	.insn	2, 0x2e2e
 168:	672f2e2f          	amoand.w.aqrl	t3,s2,(t5)
 16c:	6c2f6363          	bltu	t5,sp,832 <_tbss_end+0x832>
 170:	6269                	.insn	2, 0x6269
 172:	2f636367          	.insn	4, 0x2f636367
 176:	74666f73          	csrrsi	t5,0x746,12
 17a:	662d                	.insn	2, 0x662d
 17c:	2f70                	.insn	2, 0x2f70
 17e:	6966                	.insn	2, 0x6966
 180:	6478                	.insn	2, 0x6478
 182:	7366                	.insn	2, 0x7366
 184:	2e69                	.insn	2, 0x2e69
 186:	2e2e0063          	beq	t3,sp,466 <_tbss_end+0x466>
 18a:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 18e:	2e2e                	.insn	2, 0x2e2e
 190:	672f2e2f          	amoand.w.aqrl	t3,s2,(t5)
 194:	6c2f6363          	bltu	t5,sp,85a <_tbss_end+0x85a>
 198:	6269                	.insn	2, 0x6269
 19a:	2f636367          	.insn	4, 0x2f636367
 19e:	74666f73          	csrrsi	t5,0x746,12
 1a2:	662d                	.insn	2, 0x662d
 1a4:	2f70                	.insn	2, 0x2f70
 1a6:	6966                	.insn	2, 0x6966
 1a8:	7578                	.insn	2, 0x7578
 1aa:	736e                	.insn	2, 0x736e
 1ac:	6664                	.insn	2, 0x6664
 1ae:	632e6973          	csrrsi	s2,0x632,28
 1b2:	2e00                	.insn	2, 0x2e00
 1b4:	2f2e                	.insn	2, 0x2f2e
 1b6:	2e2e                	.insn	2, 0x2e2e
 1b8:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 1bc:	2f2e                	.insn	2, 0x2f2e
 1be:	2f636367          	.insn	4, 0x2f636367
 1c2:	696c                	.insn	2, 0x696c
 1c4:	6762                	.insn	2, 0x6762
 1c6:	732f6363          	bltu	t5,s2,8ec <_tbss_end+0x8ec>
 1ca:	2d74666f          	jal	a2,46ca0 <_tbss_end+0x46ca0>
 1ce:	7066                	.insn	2, 0x7066
 1d0:	6f6c662f          	.insn	4, 0x6f6c662f
 1d4:	7461                	.insn	2, 0x7461
 1d6:	66646973          	csrrsi	s2,0x666,8
 1da:	632e                	.insn	2, 0x632e
 1dc:	2e00                	.insn	2, 0x2e00
 1de:	2f2e                	.insn	2, 0x2f2e
 1e0:	2e2e                	.insn	2, 0x2e2e
 1e2:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 1e6:	2f2e                	.insn	2, 0x2f2e
 1e8:	2f636367          	.insn	4, 0x2f636367
 1ec:	696c                	.insn	2, 0x696c
 1ee:	6762                	.insn	2, 0x6762
 1f0:	732f6363          	bltu	t5,s2,916 <_tbss_end+0x916>
 1f4:	2d74666f          	jal	a2,46cca <_tbss_end+0x46cca>
 1f8:	7066                	.insn	2, 0x7066
 1fa:	6f6c662f          	.insn	4, 0x6f6c662f
 1fe:	7461                	.insn	2, 0x7461
 200:	6e75                	.insn	2, 0x6e75
 202:	66646973          	csrrsi	s2,0x666,8
 206:	632e                	.insn	2, 0x632e
	...

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	000c                	.insn	2, 0x000c
   2:	0000                	.insn	2, 0x
   4:	ffff                	.insn	2, 0xffff
   6:	ffff                	.insn	2, 0xffff
   8:	7c010003          	lb	zero,1984(sp)
   c:	0c01                	.insn	2, 0x0c01
   e:	0002                	.insn	2, 0x0002
  10:	000c                	.insn	2, 0x000c
  12:	0000                	.insn	2, 0x
  14:	0000                	.insn	2, 0x
  16:	0000                	.insn	2, 0x
  18:	16f0                	.insn	2, 0x16f0
  1a:	8000                	.insn	2, 0x8000
  1c:	00d8                	.insn	2, 0x00d8
  1e:	0000                	.insn	2, 0x
  20:	000c                	.insn	2, 0x000c
  22:	0000                	.insn	2, 0x
  24:	ffff                	.insn	2, 0xffff
  26:	ffff                	.insn	2, 0xffff
  28:	7c010003          	lb	zero,1984(sp)
  2c:	0c01                	.insn	2, 0x0c01
  2e:	0002                	.insn	2, 0x0002
  30:	000c                	.insn	2, 0x000c
  32:	0000                	.insn	2, 0x
  34:	0020                	.insn	2, 0x0020
  36:	0000                	.insn	2, 0x
  38:	17c8                	.insn	2, 0x17c8
  3a:	8000                	.insn	2, 0x8000
  3c:	00e4                	.insn	2, 0x00e4
  3e:	0000                	.insn	2, 0x
  40:	000c                	.insn	2, 0x000c
  42:	0000                	.insn	2, 0x
  44:	ffff                	.insn	2, 0xffff
  46:	ffff                	.insn	2, 0xffff
  48:	7c010003          	lb	zero,1984(sp)
  4c:	0c01                	.insn	2, 0x0c01
  4e:	0002                	.insn	2, 0x0002
  50:	000c                	.insn	2, 0x000c
  52:	0000                	.insn	2, 0x
  54:	0040                	.insn	2, 0x0040
  56:	0000                	.insn	2, 0x
  58:	18ac                	.insn	2, 0x18ac
  5a:	8000                	.insn	2, 0x8000
  5c:	00e4                	.insn	2, 0x00e4
  5e:	0000                	.insn	2, 0x
  60:	000c                	.insn	2, 0x000c
  62:	0000                	.insn	2, 0x
  64:	ffff                	.insn	2, 0xffff
  66:	ffff                	.insn	2, 0xffff
  68:	7c010003          	lb	zero,1984(sp)
  6c:	0c01                	.insn	2, 0x0c01
  6e:	0002                	.insn	2, 0x0002
  70:	002c                	.insn	2, 0x002c
  72:	0000                	.insn	2, 0x
  74:	0060                	.insn	2, 0x0060
  76:	0000                	.insn	2, 0x
  78:	1990                	.insn	2, 0x1990
  7a:	8000                	.insn	2, 0x8000
  7c:	074c                	.insn	2, 0x074c
  7e:	0000                	.insn	2, 0x
  80:	0e44                	.insn	2, 0x0e44
  82:	5420                	.insn	2, 0x5420
  84:	0188                	.insn	2, 0x0188
  86:	0289                	.insn	2, 0x0289
  88:	0392                	.insn	2, 0x0392
  8a:	05940493          	addi	s1,s0,89
  8e:	0a04ec03          	.insn	4, 0x0a04ec03
  92:	44c8                	.insn	2, 0x44c8
  94:	44c9                	.insn	2, 0x44c9
  96:	44d2                	.insn	2, 0x44d2
  98:	44d444d3          	.insn	4, 0x44d444d3
  9c:	000e                	.insn	2, 0x000e
  9e:	0b44                	.insn	2, 0x0b44
  a0:	000c                	.insn	2, 0x000c
  a2:	0000                	.insn	2, 0x
  a4:	ffff                	.insn	2, 0xffff
  a6:	ffff                	.insn	2, 0xffff
  a8:	7c010003          	lb	zero,1984(sp)
  ac:	0c01                	.insn	2, 0x0c01
  ae:	0002                	.insn	2, 0x0002
  b0:	000c                	.insn	2, 0x000c
  b2:	0000                	.insn	2, 0x
  b4:	00a0                	.insn	2, 0x00a0
  b6:	0000                	.insn	2, 0x
  b8:	20dc                	.insn	2, 0x20dc
  ba:	8000                	.insn	2, 0x8000
  bc:	0ab0                	.insn	2, 0x0ab0
  be:	0000                	.insn	2, 0x
  c0:	000c                	.insn	2, 0x000c
  c2:	0000                	.insn	2, 0x
  c4:	ffff                	.insn	2, 0xffff
  c6:	ffff                	.insn	2, 0xffff
  c8:	7c010003          	lb	zero,1984(sp)
  cc:	0c01                	.insn	2, 0x0c01
  ce:	0002                	.insn	2, 0x0002
  d0:	000c                	.insn	2, 0x000c
  d2:	0000                	.insn	2, 0x
  d4:	00c0                	.insn	2, 0x00c0
  d6:	0000                	.insn	2, 0x
  d8:	2b8c                	.insn	2, 0x2b8c
  da:	8000                	.insn	2, 0x8000
  dc:	0104                	.insn	2, 0x0104
  de:	0000                	.insn	2, 0x
  e0:	000c                	.insn	2, 0x000c
  e2:	0000                	.insn	2, 0x
  e4:	ffff                	.insn	2, 0xffff
  e6:	ffff                	.insn	2, 0xffff
  e8:	7c010003          	lb	zero,1984(sp)
  ec:	0c01                	.insn	2, 0x0c01
  ee:	0002                	.insn	2, 0x0002
  f0:	000c                	.insn	2, 0x000c
  f2:	0000                	.insn	2, 0x
  f4:	00e0                	.insn	2, 0x00e0
  f6:	0000                	.insn	2, 0x
  f8:	2c90                	.insn	2, 0x2c90
  fa:	8000                	.insn	2, 0x8000
  fc:	00c8                	.insn	2, 0x00c8
  fe:	0000                	.insn	2, 0x
 100:	000c                	.insn	2, 0x000c
 102:	0000                	.insn	2, 0x
 104:	ffff                	.insn	2, 0xffff
 106:	ffff                	.insn	2, 0xffff
 108:	7c010003          	lb	zero,1984(sp)
 10c:	0c01                	.insn	2, 0x0c01
 10e:	0002                	.insn	2, 0x0002
 110:	000c                	.insn	2, 0x000c
 112:	0000                	.insn	2, 0x
 114:	0100                	.insn	2, 0x0100
 116:	0000                	.insn	2, 0x
 118:	2d58                	.insn	2, 0x2d58
 11a:	8000                	.insn	2, 0x8000
 11c:	0080                	.insn	2, 0x0080
 11e:	0000                	.insn	2, 0x
 120:	000c                	.insn	2, 0x000c
 122:	0000                	.insn	2, 0x
 124:	ffff                	.insn	2, 0xffff
 126:	ffff                	.insn	2, 0xffff
 128:	7c010003          	lb	zero,1984(sp)
 12c:	0c01                	.insn	2, 0x0c01
 12e:	0002                	.insn	2, 0x0002
 130:	000c                	.insn	2, 0x000c
 132:	0000                	.insn	2, 0x
 134:	0120                	.insn	2, 0x0120
 136:	0000                	.insn	2, 0x
 138:	2dd8                	.insn	2, 0x2dd8
 13a:	8000                	.insn	2, 0x8000
 13c:	0068                	.insn	2, 0x0068
	...
