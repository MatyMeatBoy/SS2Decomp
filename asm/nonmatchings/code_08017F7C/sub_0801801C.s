	thumb_func_start sub_0801801C
sub_0801801C: @ 0x0801801C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x168
	adds r7, r0, #0
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x118]
	ldrh r1, [r7, #0xc]
	str r1, [sp, #0x10c]
	ldr r5, _0801804C
	movs r2, #0xb6
	lsls r2, r2, #2
	adds r2, r7, r2
	str r2, [sp, #0x160]
	ldr r3, _08018050
	adds r3, r7, r3
	str r3, [sp, #0x164]
	ldr r4, _08018054
	b _08018092
	.2byte 0x0000
_0801804C: .4byte 0x0000FFFF
_08018050: .4byte 0x000002DA
_08018054: .4byte gUnk_030056FC
_08018058:
	movs r0, #0xb
	strh r0, [r7, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _0801806C
	bl sub_08056E90
	cmp r0, #0
	beq _0801808E
_0801806C:
	movs r1, #1
	ldrh r0, [r7, #0]
	lsls r1, r0
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r0, [r0, #0]
	adds r1, r7, #0
	adds r1, #0x84
	ldrb r1, [r1, #0]
	movs r2, #1
	bl sub_080571A4
	bl _08019BCE
_0801808E:
	bl sub_080003F0
_08018092:
	ldr r0, [sp, #0x118]
	adds r0, #0xd4
	ldrh r0, [r0, #0]
	ldr r1, [sp, #0x118]
	adds r1, #0xd6
	ldrh r1, [r1, #0]
	bl sub_08016E04
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x114]
	cmp r0, r5
	beq _08018058
	movs r5, #0
	add r1, sp, #0x10c
	ldrh r1, [r1, #0]
	strh r1, [r7, #0xc]
	ldr r2, _08018168
	str r2, [sp, #0x10c]
	add r3, sp, #0xbc
	mov r9, r3
	ldr r1, _0801816C
	movs r4, #1
	negs r4, r4
	str r5, [sp, #0]
	mov r0, r9
	movs r2, #0
	adds r3, r4, #0
	bl sub_08065158
	add r0, sp, #0x54
	mov r8, r0
	ldr r1, _08018170
	str r5, [sp, #0]
	movs r2, #0
	adds r3, r4, #0
	bl sub_08065158
	add r1, sp, #0x88
	mov sl, r1
	ldr r1, _08018174
	str r5, [sp, #0]
	mov r0, sl
	movs r2, #0
	adds r3, r4, #0
	bl sub_08065158
	bl sub_0800CCCC
	cmp r0, #0
	bne _0801810A
	bl sub_0800CC98
	cmp r0, #0
	bne _0801810A
	ldr r1, [sp, #0x60]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0801810A:
	movs r2, #0
	movs r1, #7
	add r3, sp, #0x70
	strb r1, [r3, #0]
	movs r0, #8
	movs r4, #0x71
	add r4, sp
	strb r0, [r4, #0]
	add r3, sp, #0xa4
	strb r1, [r3, #0]
	movs r4, #0xa5
	add r4, sp
	strb r0, [r4, #0]
	ldrh r0, [r7, #8]
	adds r5, r7, #0
	adds r5, #0x68
	movs r6, #0
	strh r0, [r5, #0]
	adds r4, r7, #0
	adds r4, #0x6c
	strh r2, [r4, #0]
	adds r3, r7, #0
	adds r3, #0x6a
	strh r2, [r3, #0]
	ldr r0, _08018168
	str r0, [sp, #0x108]
	adds r1, r7, #0
	adds r1, #0x64
	movs r0, #0x1e
	strh r0, [r1, #0]
	adds r0, r7, #0
	adds r0, #0x66
	strh r2, [r0, #0]
	ldrh r2, [r7, #0xc]
	str r5, [sp, #0x14c]
	str r4, [sp, #0x154]
	str r3, [sp, #0x150]
	str r1, [sp, #0x144]
	str r0, [sp, #0x148]
	cmp r2, #0xe
	beq _0801817E
	cmp r2, #0xe
	bgt _08018178
	cmp r2, #0
	beq _080181AA
	b _080181B8
	.2byte 0x0000
_08018168: .4byte 0x0000FFFF
_0801816C: .4byte 0x00050010
_08018170: .4byte 0x0005008C
_08018174: .4byte 0x0005008B
_08018178:
	cmp r2, #0xf
	beq _0801818C
	b _080181B8
_0801817E:
	movs r1, #1
	str r1, [sp, #0x11c]
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r6, [r0, #0]
	b _080181B8
_0801818C:
	movs r3, #0
	str r3, [sp, #0x11c]
	movs r4, #0xee
	lsls r4, r4, #1
	adds r0, r7, r4
	strb r6, [r0, #0]
	b _080181B8
_0801819A:
	movs r0, #1
	orrs r0, r1
	movs r1, #0
	orrs r0, r1
	ldr r2, [sp, #0x15c]
	strh r0, [r2, #0]
	bl _080199E8
_080181AA:
	movs r3, #0
	str r3, [sp, #0x11c]
	movs r4, #0xee
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #2
	strb r0, [r1, #0]
_080181B8:
	ldr r1, _080182C4
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	cmp r0, #7
	bgt _080181D0
	cmp r0, #4
	blt _080181D0
	movs r2, #0xee
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1, #0]
_080181D0:
	ldr r3, _080182C8
	str r3, [sp, #0x120]
	adds r4, r7, #0
	adds r4, #0x74
	str r4, [sp, #0x130]
	movs r1, #0
	movs r0, #1
	strh r0, [r4, #0]
	adds r0, r7, #0
	adds r0, #0x44
	strh r1, [r0, #0]
	strh r1, [r7, #6]
	strh r1, [r7, #4]
	adds r2, r7, #0
	adds r2, #0x42
	strh r1, [r2, #0]
	strh r1, [r0, #0]
	mov r0, sp
	adds r0, #0xf6
	str r0, [sp, #0x138]
	strh r1, [r0, #0]
	add r2, sp, #0xf4
	strh r1, [r2, #0]
	movs r3, #0x60
	adds r3, r3, r7
	mov r9, r3
	ldr r0, _080182CC
	strh r0, [r3, #0]
	str r1, [r7, #0x4c]
	movs r4, #0
	str r4, [sp, #0x104]
	adds r0, r7, #0
	adds r0, #0x4a
	strh r4, [r0, #0]
	ldr r2, [sp, #0x120]
	str r2, [r7, #0x54]
	movs r3, #1
	str r3, [sp, #0x12c]
	movs r4, #0xfa
	add r4, sp
	add r0, sp, #0x104
	ldrh r0, [r0, #0]
	strh r0, [r4, #0]
	mov r1, sp
	adds r1, #0xf8
	str r1, [sp, #0x13c]
	add r2, sp, #0x104
	ldrh r2, [r2, #0]
	strh r2, [r1, #0]
	add r5, sp, #0xfc
	ldr r3, [sp, #0x104]
	str r3, [r5, #0]
	bl sub_08002164
	adds r4, r0, #0
	ldr r0, [sp, #0x118]
	movs r2, #6
	ldrsh r1, [r0, r2]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	str r0, [sp, #0x134]
	ldr r3, _080182D0
	adds r0, r0, r3
	ldr r0, [r0, #0]
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_080B956C
	ldr r1, [sp, #0x118]
	strh r0, [r1, #6]
	ldr r2, [sp, #0x130]
	str r2, [sp, #0x158]
	mov r3, r9
	str r3, [sp, #0x140]
	cmp r4, #1
	bls _08018286
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r1, #2
	ldr r0, _080182D0
	adds r0, #4
	ldr r2, [sp, #0x134]
	adds r0, r2, r0
	ldr r0, [r0, #0]
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_080B956C
	ldr r3, [sp, #0x118]
	strh r0, [r3, #0]
_08018286:
	ldr r4, [sp, #0x118]
	movs r0, #6
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r2, #0xeb
	lsls r2, r2, #1
	adds r1, r7, r2
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5c
	strh r0, [r1, #0]
	movs r3, #4
	ldrsh r0, [r4, r3]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r4, #0xea
	lsls r4, r4, #1
	adds r1, r7, r4
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	movs r0, #1
	str r0, [sp, #0x124]
	adds r1, #0x1c
	str r1, [sp, #0x15c]
	bl _080199C4
_080182C4: .4byte 0x00000226
_080182C8: .4byte 0x0000FFFF
_080182CC: .4byte 0x0000FFC4
_080182D0: .4byte gUnk_0848FA0C
_080182D4:
	ldr r2, [sp, #0x158]
	ldrh r0, [r2, #0]
	adds r0, #1
	strh r0, [r2, #0]
	bl sub_0800CB9C
	cmp r0, #0
	beq _08018308
	bl sub_08002204
	cmp r0, #0
	beq _08018308
	ldr r3, [sp, #0x140]
	ldrh r0, [r3, #0]
	adds r1, r0, #1
	strh r1, [r3, #0]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _08018308
	ldrh r0, [r7, #0]
	bl sub_080663A4
	ldr r0, [sp, #0x140]
	strh r4, [r0, #0]
_08018308:
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0, #0]
	ldr r0, _0801835C
	cmp r1, r0
	bne _0801832E
	adds r0, r7, #0
	bl sub_08020680
	ldr r2, [sp, #0x158]
	ldrh r0, [r2, #0]
	ldr r3, [sp, #0x118]
	ldrh r3, [r3, #0x20]
	cmp r0, r3
	bls _0801832E
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
_0801832E:
	bl sub_08065AE8
	adds r4, r0, #0
	cmp r4, #0
	bne _08018360
	adds r0, r7, #0
	bl sub_0801C8F0
	adds r0, r7, #0
	bl sub_08016F28
	adds r0, r7, #0
	adds r0, #0x62
	ldrh r0, [r0, #0]
	subs r0, #9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08018366
	strh r4, [r7, #4]
	strh r4, [r7, #6]
	b _08018366
	.2byte 0x0000
_0801835C: .4byte 0x0000FFFF
_08018360:
	movs r0, #0
	strh r0, [r7, #4]
	strh r0, [r7, #6]
_08018366:
	ldrh r0, [r7, #0xc]
	adds r5, r7, #0
	adds r5, #0x7c
	movs r4, #0x6e
	adds r4, r4, r7
	mov r9, r4
	cmp r0, #0xf
	bls _08018378
	b _080186BE
_08018378:
	lsls r0, r0, #2
	ldr r1, _08018384
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08018384: .4byte _08018388
_08018388:
	.4byte _080183C8
_0801838C: .4byte _080184B8
_08018390: .4byte _080185B4
_08018394: .4byte _080186BE
_08018398: .4byte _080186BE
_0801839C: .4byte _080186BE
_080183A0: .4byte _080186BE
_080183A4: .4byte _080186BE
_080183A8: .4byte _080186BE
_080183AC: .4byte _080185E4
_080183B0: .4byte _08018616
_080183B4: .4byte _0801867C
_080183B8: .4byte _080186BE
_080183BC: .4byte _080186BE
_080183C0: .4byte _080186BE
_080183C4: .4byte _0801868E
_080183C8:
	movs r2, #0
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080183D8
	movs r2, #5
	b _080183E2
_080183D8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080183E2
	movs r2, #1
_080183E2:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080183FE
	cmp r2, #5
	bne _080183F2
	movs r2, #4
	b _08018418
_080183F2:
	cmp r2, #1
	bne _080183FA
	movs r2, #2
	b _08018418
_080183FA:
	movs r2, #3
	b _08018418
_080183FE:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08018418
	cmp r2, #5
	bne _0801840E
	movs r2, #6
	b _08018418
_0801840E:
	cmp r2, #1
	bne _08018416
	movs r2, #8
	b _08018418
_08018416:
	movs r2, #7
_08018418:
	ldr r1, _08018468
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	cmp r0, #0xe
	bne _08018438
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r0, [r0, #0]
	cmp r0, #2
	bne _08018438
	ldr r4, [sp, #0x118]
	ldrh r0, [r4, #0x20]
	adds r0, #1
	ldr r1, [sp, #0x158]
	strh r0, [r1, #0]
_08018438:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801846C
	ldr r3, [sp, #0x158]
	ldrh r0, [r3, #0]
	ldr r4, [sp, #0x118]
	ldrh r4, [r4, #0x20]
	cmp r0, r4
	bls _0801846C
	movs r1, #0
	movs r0, #2
	strh r0, [r7, #0xc]
	ldr r0, [sp, #0x154]
	strh r1, [r0, #0]
	ldr r2, [sp, #0x150]
	strh r1, [r2, #0]
	adds r5, r7, #0
	adds r5, #0x7c
	movs r3, #0x6e
	adds r3, r3, r7
	mov r9, r3
	b _080186BE
_08018468: .4byte 0x000001FD
_0801846C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801849C
	ldr r4, [sp, #0x158]
	ldrh r0, [r4, #0]
	ldr r1, [sp, #0x118]
	ldrh r1, [r1, #0x20]
	cmp r0, r1
	bls _0801849C
	cmp r2, #0
	beq _08018488
	subs r0, r2, #1
	b _0801848A
_08018488:
	ldrh r0, [r7, #8]
_0801848A:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #9
	strh r0, [r7, #0xc]
	ldr r2, [sp, #0x154]
	strh r1, [r2, #0]
	ldr r3, [sp, #0x150]
	strh r1, [r3, #0]
	b _08018682
_0801849C:
	cmp r2, #0
	beq _080184B0
	movs r0, #1
	strh r0, [r7, #0xc]
	adds r5, r7, #0
	adds r5, #0x7c
	movs r0, #0x6e
	adds r0, r0, r7
	mov r9, r0
	b _080186BE
_080184B0:
	add r0, sp, #0xfc
	bl sub_08015DC0
	b _0801856C
_080184B8:
	movs r2, #0
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080184C8
	movs r2, #5
	b _080184D2
_080184C8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080184D2
	movs r2, #1
_080184D2:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080184EE
	cmp r2, #5
	bne _080184E2
	movs r2, #4
	b _08018508
_080184E2:
	cmp r2, #1
	bne _080184EA
	movs r2, #2
	b _08018508
_080184EA:
	movs r2, #3
	b _08018508
_080184EE:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08018508
	cmp r2, #5
	bne _080184FE
	movs r2, #6
	b _08018508
_080184FE:
	cmp r2, #1
	bne _08018506
	movs r2, #8
	b _08018508
_08018506:
	movs r2, #7
_08018508:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801853E
	ldr r3, [sp, #0x158]
	ldrh r0, [r3, #0]
	ldr r4, [sp, #0x118]
	ldrh r4, [r4, #0x20]
	cmp r0, r4
	bls _0801853E
	cmp r2, #0
	beq _08018526
	subs r0, r2, #1
	b _08018528
_08018526:
	ldrh r0, [r7, #8]
_08018528:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #2
	strh r0, [r7, #0xc]
	ldr r0, [sp, #0x154]
	strh r1, [r0, #0]
	ldr r2, [sp, #0x150]
	strh r1, [r2, #0]
	ldr r3, [sp, #0x158]
	strh r1, [r3, #0]
	b _08018682
_0801853E:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08018578
	ldr r1, [sp, #0x158]
	ldrh r0, [r1, #0]
	ldr r3, [sp, #0x118]
	ldrh r3, [r3, #0x20]
	cmp r0, r3
	bls _08018578
	cmp r2, #0
	beq _0801855A
	subs r0, r2, #1
	b _0801855C
_0801855A:
	ldrh r0, [r7, #8]
_0801855C:
	movs r1, #0
	strh r0, [r7, #8]
	movs r0, #9
	strh r0, [r7, #0xc]
	ldr r4, [sp, #0x154]
	strh r1, [r4, #0]
	ldr r0, [sp, #0x150]
	strh r1, [r0, #0]
_0801856C:
	adds r5, r7, #0
	adds r5, #0x7c
	movs r1, #0x6e
	adds r1, r1, r7
	mov r9, r1
	b _080186BE
_08018578:
	cmp r2, #0
	bne _0801858A
	strh r2, [r7, #0xc]
	adds r5, r7, #0
	adds r5, #0x7c
	movs r2, #0x6e
	adds r2, r2, r7
	mov r9, r2
	b _080186BE
_0801858A:
	subs r0, r2, #1
	strh r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0x7c
	ldrh r1, [r0, #0]
	adds r5, r0, #0
	movs r3, #0x6e
	adds r3, r3, r7
	mov r9, r3
	cmp r1, #0
	beq _080185A2
	b _080186C4
_080185A2:
	ldr r4, [sp, #0x118]
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r2, [sp, #0x100]
	asrs r1, r2
	add r0, sp, #0xfc
	bl sub_08015DE0
	b _080186BE
_080185B4:
	add r0, sp, #0xfc
	bl sub_08015DC0
	ldr r3, [sp, #0x14c]
	ldrh r0, [r3, #0]
	adds r5, r7, #0
	adds r5, #0x7c
	movs r4, #0x6e
	adds r4, r4, r7
	mov r9, r4
	ldr r1, [sp, #0x108]
	cmp r0, r1
	bne _080186BE
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _080186BE
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	movs r0, #0
	strh r0, [r7, #0xc]
	ldr r2, [sp, #0x158]
	strh r0, [r2, #0]
	b _080186BE
_080185E4:
	add r0, sp, #0xfc
	bl sub_08015DC0
	ldr r3, [sp, #0x14c]
	ldrh r0, [r3, #0]
	adds r5, r7, #0
	adds r5, #0x7c
	movs r4, #0x6e
	adds r4, r4, r7
	mov r9, r4
	ldr r1, [sp, #0x108]
	cmp r0, r1
	bne _080186BE
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _080186BE
	ldr r2, [sp, #0x10c]
	ldrh r3, [r7, #0xc]
	cmp r2, r3
	bne _080186BE
	movs r0, #0
	strh r0, [r7, #0xc]
	ldr r4, [sp, #0x158]
	strh r0, [r4, #0]
	b _080186BE
_08018616:
	add r0, sp, #0xfc
	bl sub_08015DC0
	ldr r1, [sp, #0x14c]
	ldrh r0, [r1, #0]
	adds r5, r7, #0
	adds r5, #0x7c
	movs r2, #0x6e
	adds r2, r2, r7
	mov r9, r2
	ldr r3, [sp, #0x108]
	cmp r0, r3
	bne _080186BE
	ldrh r0, [r2, #0]
	cmp r0, #0
	beq _080186BE
	ldr r4, [sp, #0x10c]
	ldrh r0, [r7, #0xc]
	cmp r4, r0
	bne _080186BE
	movs r2, #0xee
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r4, #0
	movs r0, #2
	strb r0, [r1, #0]
	adds r0, r7, #0
	bl sub_08019CE8
	ldr r3, [sp, #0x148]
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801865E
	strh r4, [r7, #0xc]
	b _080186BE
_0801865E:
	ldr r0, [sp, #0x15c]
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08018674
	ldr r1, [sp, #0x144]
	strh r4, [r1, #0]
	ldr r2, [sp, #0x148]
	strh r4, [r2, #0]
	b _080186BE
_08018674:
	movs r0, #0x1e
	ldr r3, [sp, #0x144]
	strh r0, [r3, #0]
	b _080186BE
_0801867C:
	add r0, sp, #0xfc
	bl sub_08015DC0
_08018682:
	adds r5, r7, #0
	adds r5, #0x7c
	movs r4, #0x6e
	adds r4, r4, r7
	mov r9, r4
	b _080186BE
_0801868E:
	ldr r1, [sp, #0x14c]
	ldrh r0, [r1, #0]
	adds r5, r7, #0
	adds r5, #0x7c
	movs r2, #0x6e
	adds r2, r2, r7
	mov r9, r2
	ldr r3, [sp, #0x108]
	cmp r0, r3
	bne _080186BE
	ldrh r0, [r2, #0]
	cmp r0, #0
	beq _080186BE
	ldr r4, [sp, #0x10c]
	ldrh r0, [r7, #0xc]
	cmp r4, r0
	bne _080186BE
	movs r0, #0
	strh r0, [r7, #0xc]
	movs r2, #0xee
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #2
	strb r0, [r1, #0]
_080186BE:
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq _08018730
_080186C4:
	adds r4, r7, #0
	adds r4, #0x80
	movs r3, #0
	ldrsh r0, [r4, r3]
	adds r1, r7, #0
	adds r1, #0x14
	adds r2, r7, #0
	adds r2, #0x7e
	ldrh r2, [r2, #0]
	movs r3, #0
	str r3, [sp, #0]
	bl sub_08013E90
	ldrh r0, [r5, #0]
	subs r0, #1
	strh r0, [r5, #0]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08018714
	adds r2, r7, #0
	adds r2, #0x82
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _08018720
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r5, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0801870C
	movs r0, #4
	strh r0, [r5, #0]
_0801870C:
	strh r3, [r2, #0]
	movs r0, #0x80
	lsls r0, r0, #2
	b _0801872E
_08018714:
	adds r0, r7, #0
	adds r0, #0x82
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08018730
_08018720:
	ldrh r0, [r4, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0]
	cmp r0, #0x3f
	bgt _08018730
	movs r0, #0x40
_0801872E:
	strh r0, [r4, #0]
_08018730:
	ldr r0, [sp, #0xfc]
	cmp r0, #0
	beq _08018756
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	str r0, [r7, #0x1c]
	str r1, [r7, #0x20]
	ldr r3, [sp, #0x118]
	movs r4, #8
	ldrsh r0, [r3, r4]
	ldr r1, [sp, #0x100]
	asrs r0, r1
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r7, #8]
	movs r3, #0
	str r3, [sp, #0]
	bl sub_08013E90
_08018756:
	bl sub_0800CD8C
	cmp r0, #0
	bne _08018764
	adds r0, r7, #0
	bl sub_08017C6C
_08018764:
	ldrh r2, [r7, #0xc]
	add r6, sp, #0x20
	cmp r2, #0xf
	bls _08018770
	bl _08019214
_08018770:
	lsls r0, r2, #2
	ldr r1, _0801877C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0801877C: .4byte _08018780
_08018780:
	.4byte _080187C0
_08018784: .4byte _08018810
_08018788: .4byte _08018864
_0801878C: .4byte _08019214
_08018790: .4byte _08019214
_08018794: .4byte _08019214
_08018798: .4byte _08019214
_0801879C: .4byte _08019214
_080187A0: .4byte _08019214
_080187A4: .4byte _080188D4
_080187A8: .4byte _08018F90
_080187AC: .4byte _08019010
_080187B0: .4byte _080190E8
_080187B4: .4byte _08019214
_080187B8: .4byte _0801917E
_080187BC: .4byte _080191CC
_080187C0:
	add r6, sp, #0x20
	ldr r2, [sp, #0x10c]
	ldrh r3, [r7, #0xc]
	cmp r2, r3
	beq _080187F2
	cmp r2, #1
	beq _080187F2
	cmp r2, #0xa
	beq _080187F2
	ldr r2, _08018808
	ldr r4, [sp, #0x160]
	ldrh r0, [r4, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r6, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
_080187F2:
	ldrh r0, [r7, #0xc]
	str r0, [sp, #0x10c]
	ldr r1, _0801880C
	str r1, [sp, #0x108]
	ldrh r0, [r7, #8]
	ldr r2, [sp, #0x14c]
	strh r0, [r2, #0]
	movs r3, #1
	str r3, [sp, #0x110]
	bl _08019214
_08018808: .4byte gUnk_08479140
_0801880C: .4byte 0x0000FFFF
_08018810:
	add r6, sp, #0x20
	ldr r4, [sp, #0x10c]
	ldrh r0, [r7, #0xc]
	cmp r4, r0
	beq _08018842
	cmp r4, #0
	beq _08018842
	cmp r4, #0xa
	beq _08018842
	ldr r2, _0801885C
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r6, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
_08018842:
	ldrh r2, [r7, #0xc]
	str r2, [sp, #0x10c]
	ldr r3, _08018860
	str r3, [sp, #0x108]
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r4, [sp, #0x14c]
	strh r0, [r4, #0]
	movs r0, #1
	str r0, [sp, #0x110]
	bl _08019214
	.2byte 0x0000
_0801885C: .4byte gUnk_08479140
_08018860: .4byte 0x0000FFFF
_08018864:
	ldr r1, [sp, #0x14c]
	ldrh r0, [r1, #0]
	ldr r2, [sp, #0x108]
	cmp r0, r2
	bne _08018878
	add r6, sp, #0x20
	ldr r3, [sp, #0x10c]
	ldrh r4, [r7, #0xc]
	cmp r3, r4
	beq _080188C2
_08018878:
	add r5, sp, #0x20
	ldr r2, _080188CC
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	adds r0, r5, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	ldr r2, [sp, #0x158]
	strh r4, [r2, #0]
	ldrh r3, [r7, #0xc]
	str r3, [sp, #0x10c]
	ldrh r0, [r7, #8]
	ldr r4, [sp, #0x14c]
	strh r0, [r4, #0]
	ldr r1, _080188D0
	adds r0, r7, r1
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	adds r6, r5, #0
	ldr r2, [sp, #0x14c]
	ldrh r2, [r2, #0]
	str r2, [sp, #0x108]
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
_080188C2:
	adds r0, r7, #0
	bl sub_08020680
	bl _080190DC
_080188CC: .4byte gUnk_08479140
_080188D0: .4byte 0x00000201
_080188D4:
	ldr r4, [sp, #0x14c]
	ldrh r0, [r4, #0]
	ldr r1, [sp, #0x108]
	cmp r0, r1
	bne _080188EC
	add r6, sp, #0x20
	ldr r3, [sp, #0x10c]
	ldrh r4, [r7, #0xc]
	cmp r3, r4
	bne _080188EC
	bl _080190DC
_080188EC:
	str r2, [sp, #0x10c]
	ldr r1, [sp, #0x118]
	adds r1, #0x26
	ldrh r0, [r7, #8]
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	ldr r1, [sp, #0x14c]
	strh r0, [r1, #0]
	ldr r2, _08018918
	adds r0, r7, r2
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801891C
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r0, [r0, #0]
	lsrs r0, r0, #4
	adds r2, r0, #4
	b _08018926
_08018918: .4byte 0x00000201
_0801891C:
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrb r0, [r0, #0]
	lsrs r2, r0, #4
_08018926:
	ldr r1, _08018940
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	subs r0, #0x12
	add r6, sp, #0x20
	cmp r0, #0x60
	bls _08018936
	b _08018F76
_08018936:
	lsls r0, r0, #2
	ldr r1, _08018944
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08018940: .4byte 0x000001FD
_08018944: .4byte _08018948
_08018948:
	.4byte _08018ACC
_0801894C: .4byte _08018B00
_08018950: .4byte _08018B34
_08018954: .4byte _08018B68
_08018958: .4byte _08018F76
_0801895C: .4byte _08018F76
_08018960: .4byte _08018F76
_08018964: .4byte _08018F76
_08018968: .4byte _08018F76
_0801896C: .4byte _08018F76
_08018970: .4byte _08018F76
_08018974: .4byte _08018F76
_08018978: .4byte _08018F76
_0801897C: .4byte _08018B9C
_08018980: .4byte _08018B9C
_08018984: .4byte _08018B9C
_08018988: .4byte _08018B9C
_0801898C: .4byte _08018B9C
_08018990: .4byte _08018B9C
_08018994: .4byte _08018B9C
_08018998: .4byte _08018BF0
_0801899C: .4byte _08018BF0
_080189A0: .4byte _08018BF0
_080189A4: .4byte _08018BF0
_080189A8: .4byte _08018BF0
_080189AC: .4byte _08018BF0
_080189B0: .4byte _08018BF0
_080189B4: .4byte _08018C44
_080189B8: .4byte _08018C44
_080189BC: .4byte _08018C44
_080189C0: .4byte _08018C44
_080189C4: .4byte _08018C44
_080189C8: .4byte _08018C44
_080189CC: .4byte _08018C44
_080189D0: .4byte _08018C90
_080189D4: .4byte _08018C90
_080189D8: .4byte _08018C90
_080189DC: .4byte _08018C90
_080189E0: .4byte _08018C90
_080189E4: .4byte _08018C90
_080189E8: .4byte _08018C90
_080189EC: .4byte _08018CE4
_080189F0: .4byte _08018CE4
_080189F4: .4byte _08018CE4
_080189F8: .4byte _08018CE4
_080189FC: .4byte _08018CE4
_08018A00: .4byte _08018CE4
_08018A04: .4byte _08018CE4
_08018A08: .4byte _08018D38
_08018A0C: .4byte _08018D38
_08018A10: .4byte _08018D38
_08018A14: .4byte _08018D38
_08018A18: .4byte _08018D38
_08018A1C: .4byte _08018D38
_08018A20: .4byte _08018D38
_08018A24: .4byte _08018D8C
_08018A28: .4byte _08018D8C
_08018A2C: .4byte _08018D8C
_08018A30: .4byte _08018D8C
_08018A34: .4byte _08018D8C
_08018A38: .4byte _08018D8C
_08018A3C: .4byte _08018D8C
_08018A40: .4byte _08018DE0
_08018A44: .4byte _08018DE0
_08018A48: .4byte _08018DE0
_08018A4C: .4byte _08018DE0
_08018A50: .4byte _08018DE0
_08018A54: .4byte _08018DE0
_08018A58: .4byte _08018DE0
_08018A5C: .4byte _08018E34
_08018A60: .4byte _08018E34
_08018A64: .4byte _08018E34
_08018A68: .4byte _08018E34
_08018A6C: .4byte _08018E34
_08018A70: .4byte _08018E34
_08018A74: .4byte _08018E34
_08018A78: .4byte _08018E88
_08018A7C: .4byte _08018E88
_08018A80: .4byte _08018E88
_08018A84: .4byte _08018E88
_08018A88: .4byte _08018E88
_08018A8C: .4byte _08018E88
_08018A90: .4byte _08018E88
_08018A94: .4byte _08018EDC
_08018A98: .4byte _08018EDC
_08018A9C: .4byte _08018EDC
_08018AA0: .4byte _08018EDC
_08018AA4: .4byte _08018EDC
_08018AA8: .4byte _08018EDC
_08018AAC: .4byte _08018EDC
_08018AB0: .4byte _08018F30
_08018AB4: .4byte _08018F30
_08018AB8: .4byte _08018F30
_08018ABC: .4byte _08018F30
_08018AC0: .4byte _08018F30
_08018AC4: .4byte _08018F30
_08018AC8: .4byte _08018F30
_08018ACC:
	ldrh r0, [r7, #0]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_08077D04
	add r4, sp, #0x20
	ldr r2, _08018AFC
	ldr r3, [sp, #0x160]
	ldrh r0, [r3, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
_08018AFC: .4byte gUnk_08479140
_08018B00:
	ldrh r0, [r7, #0]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_0807854C
	add r4, sp, #0x20
	ldr r2, _08018B30
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
_08018B30: .4byte gUnk_08479140
_08018B34:
	ldrh r0, [r7, #0]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_08078B24
	add r4, sp, #0x20
	ldr r2, _08018B64
	ldr r3, [sp, #0x160]
	ldrh r0, [r3, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
_08018B64: .4byte gUnk_08479140
_08018B68:
	ldrh r0, [r7, #0]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_08078B24
	add r4, sp, #0x20
	ldr r2, _08018B98
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
_08018B98: .4byte gUnk_08479140
_08018B9C:
	ldr r3, _08018BE4
	adds r1, r7, r3
	ldr r4, _08018BE8
	adds r0, r4, #0
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #1
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018BEC
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
	.2byte 0x0000
_08018BE4: .4byte 0x000001FD
_08018BE8: .4byte 0x0000FFE2
_08018BEC: .4byte gUnk_08479140
_08018BF0:
	ldr r3, _08018C38
	adds r1, r7, r3
	ldr r4, _08018C3C
	adds r0, r4, #0
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #2
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018C40
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
	.2byte 0x0000
_08018C38: .4byte 0x000001FD
_08018C3C: .4byte 0x0000FFDB
_08018C40: .4byte gUnk_08479140
_08018C44:
	ldr r3, _08018C88
	adds r0, r7, r3
	ldrb r0, [r0, #0]
	subs r0, #0x2d
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #3
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018C8C
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
	.2byte 0x0000
_08018C88: .4byte 0x000001FD
_08018C8C: .4byte gUnk_08479140
_08018C90:
	ldr r3, _08018CD8
	adds r1, r7, r3
	ldr r4, _08018CDC
	adds r0, r4, #0
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #4
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018CE0
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
	.2byte 0x0000
_08018CD8: .4byte 0x000001FD
_08018CDC: .4byte 0x0000FFCD
_08018CE0: .4byte gUnk_08479140
_08018CE4:
	ldr r3, _08018D2C
	adds r1, r7, r3
	ldr r4, _08018D30
	adds r0, r4, #0
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #5
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018D34
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
	.2byte 0x0000
_08018D2C: .4byte 0x000001FD
_08018D30: .4byte 0x0000FFC6
_08018D34: .4byte gUnk_08479140
_08018D38:
	ldr r3, _08018D80
	adds r1, r7, r3
	ldr r4, _08018D84
	adds r0, r4, #0
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #8
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018D88
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
	.2byte 0x0000
_08018D80: .4byte 0x000001FD
_08018D84: .4byte 0x0000FFBF
_08018D88: .4byte gUnk_08479140
_08018D8C:
	ldr r3, _08018DD4
	adds r1, r7, r3
	ldr r4, _08018DD8
	adds r0, r4, #0
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #0xb
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018DDC
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
	.2byte 0x0000
_08018DD4: .4byte 0x000001FD
_08018DD8: .4byte 0x0000FFB8
_08018DDC: .4byte gUnk_08479140
_08018DE0:
	ldr r3, _08018E28
	adds r1, r7, r3
	ldr r4, _08018E2C
	adds r0, r4, #0
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #0xd
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018E30
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
	.2byte 0x0000
_08018E28: .4byte 0x000001FD
_08018E2C: .4byte 0x0000FFB1
_08018E30: .4byte gUnk_08479140
_08018E34:
	ldr r3, _08018E7C
	adds r1, r7, r3
	ldr r4, _08018E80
	adds r0, r4, #0
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #0xe
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018E84
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
	.2byte 0x0000
_08018E7C: .4byte 0x000001FD
_08018E80: .4byte 0x0000FFAA
_08018E84: .4byte gUnk_08479140
_08018E88:
	ldr r3, _08018ED0
	adds r1, r7, r3
	ldr r4, _08018ED4
	adds r0, r4, #0
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #0xf
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018ED8
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
	.2byte 0x0000
_08018ED0: .4byte 0x000001FD
_08018ED4: .4byte 0x0000FFA3
_08018ED8: .4byte gUnk_08479140
_08018EDC:
	ldr r3, _08018F24
	adds r1, r7, r3
	ldr r4, _08018F28
	adds r0, r4, #0
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #0x11
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018F2C
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	b _08018F74
	.2byte 0x0000
_08018F24: .4byte 0x000001FD
_08018F28: .4byte 0x0000FF9C
_08018F2C: .4byte gUnk_08479140
_08018F30:
	ldr r3, _08018F84
	adds r1, r7, r3
	ldr r4, _08018F88
	adds r0, r4, #0
	ldrb r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp, #0]
	movs r1, #0x12
	bl sub_0807386C
	add r4, sp, #0x20
	ldr r2, _08018F8C
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
_08018F74:
	adds r6, r4, #0
_08018F76:
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	ldr r2, [sp, #0x14c]
	ldrh r2, [r2, #0]
	b _080190DA
	.2byte 0x0000
_08018F84: .4byte 0x000001FD
_08018F88: .4byte 0x0000FF95
_08018F8C: .4byte gUnk_08479140
_08018F90:
	ldr r4, [sp, #0x14c]
	ldrh r0, [r4, #0]
	ldr r1, [sp, #0x108]
	cmp r0, r1
	bne _08018FA4
	add r6, sp, #0x20
	ldr r2, [sp, #0x10c]
	ldrh r3, [r7, #0xc]
	cmp r2, r3
	beq _08019004
_08018FA4:
	add r6, sp, #0x20
	ldr r4, [sp, #0x10c]
	ldrh r0, [r7, #0xc]
	cmp r4, r0
	beq _08018FD6
	cmp r4, #0
	beq _08018FD6
	cmp r4, #1
	beq _08018FD6
	ldr r2, _0801900C
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r6, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
_08018FD6:
	ldr r2, [sp, #0x10c]
	cmp r2, #2
	beq _08018FE0
	cmp r2, #9
	bne _08018FE6
_08018FE0:
	movs r0, #0
	ldr r3, [sp, #0x158]
	strh r0, [r3, #0]
_08018FE6:
	ldrh r4, [r7, #0xc]
	str r4, [sp, #0x10c]
	movs r0, #0
	ldr r1, [sp, #0x154]
	strh r0, [r1, #0]
	ldr r2, [sp, #0x150]
	strh r0, [r2, #0]
	movs r0, #0x10
	ldr r3, [sp, #0x14c]
	strh r0, [r3, #0]
	ldrh r0, [r7, #8]
	adds r0, #0x10
	strh r0, [r3, #0]
	ldrh r4, [r3, #0]
	str r4, [sp, #0x108]
_08019004:
	movs r0, #0
	str r0, [sp, #0x110]
	b _08019214
	.2byte 0x0000
_0801900C: .4byte gUnk_08479140
_08019010:
	ldr r1, [sp, #0x144]
	ldrh r0, [r1, #0]
	cmp r0, #0x1e
	bne _08019084
	add r6, sp, #0x20
	ldr r2, [sp, #0x10c]
	ldrh r3, [r7, #0xc]
	cmp r2, r3
	beq _0801904E
	cmp r2, #0
	beq _0801904E
	cmp r2, #0xa
	beq _0801904E
	cmp r2, #1
	beq _0801904E
	ldr r2, _08019080
	ldr r4, [sp, #0x160]
	ldrh r0, [r4, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r6, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
_0801904E:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08019064
	bl sub_0800CD34
	cmp r0, #0
	bne _08019064
	movs r0, #0x3f
	bl sub_0805865C
_08019064:
	ldr r0, [sp, #0x15c]
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080190DC
	ldr r0, [sp, #0x118]
	adds r0, #0x46
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r7, #0
	adds r0, #0x88
	strh r1, [r0, #0]
	b _080190DC
_08019080: .4byte gUnk_08479140
_08019084:
	ldr r1, [sp, #0x14c]
	ldrh r0, [r1, #0]
	ldr r2, [sp, #0x108]
	cmp r0, r2
	bne _08019098
	add r6, sp, #0x20
	ldr r3, [sp, #0x10c]
	ldrh r4, [r7, #0xc]
	cmp r3, r4
	beq _080190DC
_08019098:
	ldr r0, [sp, #0x15c]
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	add r6, sp, #0x20
	cmp r0, #0
	beq _080190DC
	ldr r2, _080190E4
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	adds r0, r6, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	ldrh r2, [r7, #0xc]
	str r2, [sp, #0x10c]
	ldr r3, [sp, #0x154]
	strh r4, [r3, #0]
	ldr r0, [sp, #0x150]
	strh r4, [r0, #0]
	movs r0, #0x19
	ldr r1, [sp, #0x14c]
	strh r0, [r1, #0]
	movs r2, #0x19
_080190DA:
	str r2, [sp, #0x108]
_080190DC:
	movs r3, #0
	str r3, [sp, #0x110]
	b _08019214
	.2byte 0x0000
_080190E4: .4byte gUnk_08479140
_080190E8:
	ldrh r0, [r7, #0xe]
	cmp r0, #6
	beq _0801916C
	cmp r0, #6
	bgt _080190FA
	cmp r0, #5
	beq _08019120
	add r6, sp, #0x20
	b _08019214
_080190FA:
	add r6, sp, #0x20
	cmp r0, #8
	beq _08019102
	b _08019214
_08019102:
	ldr r1, [r7, #0x30]
	cmp r1, #0
	beq _08019110
	ldr r0, [r7, #0x34]
	bl sub_08057328
	b _08019118
_08019110:
	ldr r0, [r7, #0x3c]
	ldr r1, [r7, #0x38]
	bl sub_08057390
_08019118:
	movs r0, #0
	strh r0, [r7, #0xc]
	add r6, sp, #0x20
	b _08019214
_08019120:
	add r4, sp, #0x20
	ldr r2, _08019168
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	adds r1, r7, #0
	adds r1, #0x70
	ldrh r0, [r7, #8]
	ldrh r1, [r1, #0]
	adds r0, r0, r1
	ldr r2, [sp, #0x14c]
	strh r0, [r2, #0]
	ldrh r3, [r2, #0]
	str r3, [sp, #0x108]
	ldrh r0, [r7, #0xc]
	str r0, [sp, #0x10c]
	adds r0, r7, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	str r0, [sp, #0x110]
	movs r0, #6
	strh r0, [r7, #0xe]
	adds r6, r4, #0
	b _08019214
_08019168: .4byte gUnk_08479140
_0801916C:
	adds r1, r7, #0
	adds r1, #0x70
	ldrh r0, [r7, #8]
	ldrh r1, [r1, #0]
	adds r0, r0, r1
	ldr r1, [sp, #0x14c]
	strh r0, [r1, #0]
	add r6, sp, #0x20
	b _08019214
_0801917E:
	add r4, sp, #0x20
	ldr r2, _080191C8
	ldr r3, [sp, #0x160]
	ldrh r0, [r3, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	ldr r0, [sp, #0x144]
	ldrh r1, [r0, #0]
	adds r6, r4, #0
	cmp r1, #0
	beq _080191B4
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08019214
_080191B4:
	movs r2, #0xee
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #2
	strb r0, [r1, #0]
	strh r5, [r7, #0xc]
	movs r3, #0
	str r3, [sp, #0x11c]
	b _08019214
	.2byte 0x0000
_080191C8: .4byte gUnk_08479140
_080191CC:
	add r4, sp, #0x20
	ldr r2, _0801924C
	ldr r1, [sp, #0x160]
	ldrh r0, [r1, #0]
	adds r0, #0xa
	movs r1, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	ldr r2, [sp, #0x114]
	bl sub_08065158
	ldr r2, [sp, #0x14c]
	ldrh r0, [r2, #0]
	adds r6, r4, #0
	ldr r3, [sp, #0x108]
	cmp r0, r3
	bne _08019202
	ldr r4, [sp, #0x10c]
	ldrh r0, [r7, #0xc]
	cmp r4, r0
	beq _08019210
_08019202:
	movs r0, #0x18
	ldr r1, [sp, #0x14c]
	strh r0, [r1, #0]
	movs r2, #0x18
	str r2, [sp, #0x108]
	ldrh r3, [r7, #0xc]
	str r3, [sp, #0x10c]
_08019210:
	movs r4, #0
	str r4, [sp, #0x110]
_08019214:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xb
	bne _08019254
	ldr r0, [sp, #0x15c]
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08019254
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08019250
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _08019268
	movs r1, #3
	mov r8, r1
	b _08019268
	.2byte 0x0000
_0801924C: .4byte gUnk_08479140
_08019250: .4byte gUnk_03003170
_08019254:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08019268:
	bl sub_0800CC88
	cmp r0, #0
	beq _08019276
	ldr r0, _08019350
	ldrb r0, [r0, #0]
	mov r8, r0
_08019276:
	movs r2, #0
	mov sl, r2
	add r3, sp, #0x114
	ldrb r3, [r3, #0]
	strb r3, [r6, #0x1c]
	add r4, sp, #0x114
	ldrb r4, [r4, #0]
	strb r4, [r6, #0x1d]
	add r0, sp, #0x114
	ldrb r0, [r0, #0]
	strb r0, [r6, #0x1e]
	add r1, sp, #0x114
	ldrb r1, [r1, #0]
	strb r1, [r6, #0x1f]
	ldr r2, [sp, #0x14c]
	ldrh r1, [r2, #0]
	ldr r3, [sp, #0x110]
	str r3, [sp, #0]
	adds r0, r6, #0
	ldr r2, [sp, #0x150]
	ldr r3, [sp, #0x154]
	bl sub_08065370
	mov r4, r9
	strh r0, [r4, #0]
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0xf0
	mov r5, sp
	adds r5, #0xf2
	movs r2, #0x30
	str r2, [sp, #0]
	mov r2, sl
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	adds r0, r7, #0
	bl sub_08017EC8
	mov r9, r4
	mov sl, r5
	cmp r0, #0
	bne _080192E8
	ldr r3, [sp, #0x15c]
	ldrh r1, [r3, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080192E8
	bl _0801819A
_080192E8:
	ldr r4, [sp, #0x148]
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _08019358
	ldr r0, [sp, #0x144]
	ldrh r1, [r0, #0]
	ldr r2, _08019354
	adds r0, r1, r2
	ldr r3, [sp, #0x144]
	strh r0, [r3, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019344
	bl sub_0800CC98
	cmp r0, #0
	bne _08019344
	bl sub_0800CCCC
	cmp r0, #0
	bne _08019344
	bl sub_0800CD34
	cmp r0, #0
	bne _08019344
	mov r4, r9
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x14c]
	ldrh r2, [r4, #0]
	ldr r4, [sp, #0x150]
	ldrh r3, [r4, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08007870
_08019344:
	ldr r1, [sp, #0x144]
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0801934E
	b _080199E8
_0801934E:
	b _080197FC
_08019350: .4byte gUnk_030034A8
_08019354: .4byte 0x0000FFFF
_08019358:
	ldr r2, [sp, #0x11c]
	cmp r2, #0
	beq _080193C0
	ldr r3, [sp, #0x144]
	ldrh r1, [r3, #0]
	ldr r4, _080193BC
	adds r0, r1, r4
	strh r0, [r3, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019372
	b _080197FC
_08019372:
	bl sub_0800CC98
	cmp r0, #0
	beq _0801937C
	b _080197FC
_0801937C:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08019386
	b _080197FC
_08019386:
	bl sub_0800CD34
	cmp r0, #0
	beq _08019390
	b _080197FC
_08019390:
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r3, [sp, #0x14c]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x150]
	ldrh r3, [r4, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080197FC
	.2byte 0x0000
_080193BC: .4byte 0x0000FFFF
_080193C0:
	bl sub_0800CC98
	cmp r0, #0
	beq _080193CA
	b _080197FC
_080193CA:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080193D4
	b _080197FC
_080193D4:
	bl sub_0800CD34
	cmp r0, #0
	beq _080193DE
	b _080197FC
_080193DE:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080193EA
	movs r2, #0
	b _080193F0
_080193EA:
	adds r0, r7, #0
	adds r0, #0x62
	ldrh r2, [r0, #0]
_080193F0:
	lsls r0, r2, #0x10
	ldr r1, _08019408
	adds r0, r0, r1
	asrs r0, r0, #0x10
	cmp r0, #9
	bls _080193FE
	b _080197C8
_080193FE:
	lsls r0, r0, #2
	ldr r1, _0801940C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08019408: .4byte 0xFFFC0000
_0801940C: .4byte _08019410
_08019410:
	.4byte _080196F8
_08019414: .4byte _080197C8
_08019418: .4byte _080197C8
_0801941C: .4byte _08019540
_08019420: .4byte _08019438
_08019424: .4byte _080194BC
_08019428: .4byte _080195BC
_0801942C: .4byte _080197C8
_08019430: .4byte _08019686
_08019434: .4byte _08019748
_08019438:
	mov r2, r9
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r4, sl
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [sp, #0x14c]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x150]
	ldrh r3, [r4, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08007870
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x54
	movs r1, #0
	add r2, sp, #0xf4
	mov r3, sp
	adds r3, #0xf6
	bl sub_08065370
	ldr r0, _080194B8
	ldr r0, [r0, #0]
	ands r0, r4
	ldrh r1, [r7, #0]
	ands r4, r1
	cmp r0, r4
	beq _08019482
	b _080197FC
_08019482:
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r2, [sp, #0x118]
	adds r2, #0x44
	ldrb r2, [r2, #0]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	add r2, sp, #0xf4
	ldrh r3, [r2, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r2, [sp, #0x5c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
	b _080197FC
	.2byte 0x0000
_080194B8: .4byte gUnk_03002344
_080194BC:
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r3, [sp, #0x14c]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x150]
	ldrh r3, [r4, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08007870
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x54
	movs r1, #0xa
	add r2, sp, #0xf4
	mov r3, sp
	adds r3, #0xf6
	bl sub_08065370
	ldr r0, _0801953C
	ldr r0, [r0, #0]
	ands r0, r4
	ldrh r1, [r7, #0]
	ands r4, r1
	cmp r0, r4
	beq _08019506
	b _080197FC
_08019506:
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r2, [sp, #0x118]
	adds r2, #0x44
	ldrb r2, [r2, #0]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	add r2, sp, #0xf4
	ldrh r3, [r2, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r2, [sp, #0x5c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0xa
	bl sub_08007870
	b _080197FC
	.2byte 0x0000
_0801953C: .4byte gUnk_03002344
_08019540:
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r3, [sp, #0x14c]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x150]
	ldrh r3, [r4, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08007870
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x54
	movs r1, #0xf
	add r2, sp, #0xf4
	mov r3, sp
	adds r3, #0xf6
	bl sub_08065370
	ldr r0, _080195B8
	ldr r0, [r0, #0]
	ands r0, r4
	ldrh r1, [r7, #0]
	ands r4, r1
	cmp r0, r4
	beq _0801958A
	b _080197FC
_0801958A:
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r2, [sp, #0x118]
	adds r2, #0x44
	ldrb r2, [r2, #0]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	add r2, sp, #0xf4
	ldrh r3, [r2, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r2, [sp, #0x5c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	b _0801967C
	.2byte 0x0000
_080195B8: .4byte gUnk_03002344
_080195BC:
	ldr r0, [sp, #0x118]
	adds r0, #0x45
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08019614
	cmp r0, #1
	bgt _080195D4
	cmp r0, #0
	beq _080195DA
	b _080197FC
_080195D4:
	cmp r0, #2
	beq _0801964C
	b _080197FC
_080195DA:
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x54
	movs r1, #9
	add r2, sp, #0xf4
	mov r3, sp
	adds r3, #0xf6
	bl sub_08065370
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	add r2, sp, #0xf4
	ldrh r3, [r2, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r2, [sp, #0x5c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #9
	bl sub_08007870
	b _080197FC
_08019614:
	str r0, [sp, #0]
	add r0, sp, #0x88
	movs r1, #0xe
	add r2, sp, #0xf4
	mov r3, sp
	adds r3, #0xf6
	bl sub_08065370
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	add r2, sp, #0xf4
	ldrh r3, [r2, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r2, [sp, #0x90]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
	str r2, [sp, #0xc]
	movs r2, #0xe
	bl sub_08007870
	b _080197FC
_0801964C:
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x88
	movs r1, #0xf
	add r2, sp, #0xf4
	mov r3, sp
	adds r3, #0xf6
	bl sub_08065370
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	add r2, sp, #0xf4
	ldrh r3, [r2, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r2, sp, #0xa4
	str r2, [sp, #4]
	ldr r2, [sp, #0x90]
	str r2, [sp, #8]
	ldr r2, [sp, #0x88]
_0801967C:
	str r2, [sp, #0xc]
	movs r2, #0xf
	bl sub_08007870
	b _080197FC
_08019686:
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r3, [sp, #0x14c]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x150]
	ldrh r3, [r4, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08007870
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x54
	movs r1, #0xc
	add r2, sp, #0xf4
	mov r3, sp
	adds r3, #0xf6
	bl sub_08065370
	cmp r0, #0
	beq _080196C6
	b _080197FC
_080196C6:
	ldr r0, _080196F4
	ldr r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	ldrh r2, [r7, #0]
	ands r0, r2
	cmp r1, r0
	beq _080196D8
	b _080197FC
_080196D8:
	mov r0, r9
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r2, [r3, r4]
	add r3, sp, #0xf4
	ldrh r0, [r3, #0]
	str r0, [sp, #0]
	add r0, sp, #0x54
	movs r3, #0xc
	bl sub_08065230
	b _080197FC
_080196F4: .4byte gUnk_03002344
_080196F8:
	bl sub_0800CC98
	cmp r0, #0
	beq _08019702
	b _080197FC
_08019702:
	str r0, [sp, #0]
	add r0, sp, #0x54
	movs r1, #0xb
	add r2, sp, #0xf4
	mov r3, sp
	adds r3, #0xf6
	bl sub_08065370
	cmp r0, #0
	bne _080197FC
	ldr r0, _08019744
	ldr r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	ldrh r2, [r7, #0]
	ands r0, r2
	cmp r1, r0
	bne _080197FC
	mov r4, r9
	movs r0, #0
	ldrsh r1, [r4, r0]
	mov r3, sl
	movs r4, #0
	ldrsh r2, [r3, r4]
	add r3, sp, #0xf4
	ldrh r0, [r3, #0]
	str r0, [sp, #0]
	add r0, sp, #0x54
	movs r3, #0xb
	bl sub_08065230
	b _080197FC
	.2byte 0x0000
_08019744: .4byte gUnk_03002344
_08019748:
	mov r4, r9
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x14c]
	ldrh r2, [r4, #0]
	ldr r4, [sp, #0x150]
	ldrh r3, [r4, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08007870
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x54
	movs r1, #0xd
	add r2, sp, #0xf4
	mov r3, sp
	adds r3, #0xf6
	bl sub_08065370
	ldr r0, _080197C4
	ldr r0, [r0, #0]
	ands r0, r4
	ldrh r1, [r7, #0]
	ands r4, r1
	cmp r0, r4
	bne _080197FC
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sl
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r2, [sp, #0x118]
	adds r2, #0x44
	ldrb r2, [r2, #0]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	add r2, sp, #0xf4
	ldrh r3, [r2, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r2, sp, #0x70
	str r2, [sp, #4]
	ldr r2, [sp, #0x5c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x54]
	str r2, [sp, #0xc]
	movs r2, #0xd
	bl sub_08007870
	b _080197FC
_080197C4: .4byte gUnk_03002344
_080197C8:
	movs r0, #0
	movs r1, #0xf6
	add r1, sp
	strh r0, [r1, #0]
	add r2, sp, #0xf4
	strh r0, [r2, #0]
	mov r3, r9
	movs r4, #0
	ldrsh r0, [r3, r4]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x14c]
	ldrh r2, [r4, #0]
	ldr r4, [sp, #0x150]
	ldrh r3, [r4, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x3c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0xc]
	bl sub_08007870
_080197FC:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _08019840
	ldr r1, [sp, #0x104]
	cmp r1, r0
	beq _08019840
	adds r0, r7, #0
	bl sub_08019CE8
	movs r2, #0
	ldr r3, [sp, #0x148]
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08019834
	ldr r4, [sp, #0x15c]
	ldrh r1, [r4, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801982E
	ldr r0, [sp, #0x144]
	strh r2, [r0, #0]
	strh r2, [r3, #0]
	b _08019834
_0801982E:
	movs r0, #0x1e
	ldr r1, [sp, #0x144]
	strh r0, [r1, #0]
_08019834:
	ldr r2, [r7, #0x4c]
	str r2, [sp, #0x104]
	movs r3, #0xa
	str r3, [sp, #0x120]
	movs r4, #0
	str r4, [sp, #0x128]
_08019840:
	ldr r0, [sp, #0x120]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x120]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r1, r0
	cmp r1, #0
	bne _080198D4
	ldr r0, [sp, #0x104]
	cmp r0, #0
	bne _08019864
	ldr r1, _08019860
	str r1, [sp, #0x120]
	b _080198DE
_08019860: .4byte 0x0000FFFF
_08019864:
	bl sub_0800CC98
	cmp r0, #0
	bne _080198B6
	bl sub_0800CCCC
	cmp r0, #0
	bne _080198B6
	bl sub_0800CD34
	cmp r0, #0
	bne _080198B6
	bl sub_0800CB9C
	cmp r0, #0
	beq _080198A8
	ldr r0, _080198A4
	ldr r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	ldrh r2, [r7, #0]
	ands r0, r2
	cmp r1, r0
	bne _080198B6
	ldr r3, [sp, #0x128]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x104]
	bl sub_0801A120
	b _080198B6
_080198A4: .4byte gUnk_03002344
_080198A8:
	ldr r4, [sp, #0x128]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x104]
	bl sub_0801A120
_080198B6:
	movs r0, #1
	ldr r1, [sp, #0x120]
	ands r0, r1
	cmp r0, #0
	beq _080198DE
	ldr r2, [sp, #0x128]
	lsls r0, r2, #0x10
	ldr r3, _080198D0
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x128]
	b _080198DE
	.2byte 0x0000
_080198D0: .4byte 0xFFFF0000
_080198D4:
	ldr r4, _08019924
	str r4, [sp, #0x120]
	movs r0, #0
	str r0, [sp, #0x104]
	str r0, [r7, #0x4c]
_080198DE:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0801992C
	bl sub_0800CC98
	cmp r0, #0
	bne _0801992C
	ldr r1, _08019928
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	cmp r0, #7
	bgt _08019902
	cmp r0, #4
	blt _08019902
	add r2, sp, #0x114
	ldrb r2, [r2, #0]
	strb r2, [r6, #0x1d]
_08019902:
	ldr r3, [sp, #0x124]
	cmp r3, #0
	beq _08019930
	ldr r0, [sp, #0x114]
	adds r0, #0x10
	ldr r4, [sp, #0x164]
	ldrh r2, [r4, #0]
	lsls r2, r2, #5
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	movs r0, #0
	str r0, [sp, #0x124]
	b _08019930
	.2byte 0x0000
_08019924: .4byte 0x0000FFFF
_08019928: .4byte 0x00000226
_0801992C:
	movs r1, #1
	str r1, [sp, #0x124]
_08019930:
	adds r0, r7, #0
	adds r0, #0x88
	ldrh r1, [r0, #0]
	mov r8, r0
	cmp r1, #0
	beq _080199C0
	ldr r2, [sp, #0x12c]
	cmp r2, #0
	beq _08019968
	ldr r3, [sp, #0x15c]
	ldrh r1, [r3, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019964
	bl sub_0800CCCC
	cmp r0, #0
	bne _08019964
	bl sub_0800CD34
	cmp r0, #0
	bne _08019964
	movs r0, #0x9e
	bl sub_0805865C
_08019964:
	movs r4, #0
	str r4, [sp, #0x12c]
_08019968:
	add r0, sp, #0xbc
	mov r5, r8
	ldrh r1, [r5, #0]
	add r6, sp, #0xf8
	movs r4, #0
	str r4, [sp, #0]
	adds r2, r6, #0
	mov r3, sp
	adds r3, #0xfa
	bl sub_08065370
	cmp r0, #0
	beq _08019992
	strh r4, [r5, #0]
	strh r4, [r6, #0]
	movs r0, #0xfa
	add r0, sp
	strh r4, [r0, #0]
	movs r1, #1
	str r1, [sp, #0x12c]
	b _080199C0
_08019992:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080199C0
	bl sub_0800CC98
	cmp r0, #0
	bne _080199C0
	mov r2, r9
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, sl
	movs r0, #0
	ldrsh r2, [r4, r0]
	subs r2, #0x20
	mov r4, r8
	ldrh r3, [r4, #0]
	add r4, sp, #0xf8
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	add r0, sp, #0xbc
	bl sub_08065230
_080199C0:
	bl sub_080003F0
_080199C4:
	bl sub_0800CB78
	cmp r0, #0
	bne _080199E8
	ldr r0, [sp, #0x15c]
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080199DA
	b _08019B76
_080199DA:
	bl sub_08056E90
	adds r4, r0, #0
	cmp r4, #0
	bne _080199E8
	bl _080182D4
_080199E8:
	ldr r2, [sp, #0x15c]
	ldrh r1, [r2, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080199F6
	b _08019B76
_080199F6:
	bl sub_08056E90
	cmp r0, #0
	beq _08019A00
	b _08019B76
_08019A00:
	b _08019A06
_08019A02:
	bl sub_080003F0
_08019A06:
	ldrh r0, [r7, #2]
	bl sub_08067CA8
	cmp r0, #0
	bne _08019A18
	bl sub_08056E90
	cmp r0, #0
	beq _08019A02
_08019A18:
	ldr r3, [sp, #0x15c]
	ldrh r1, [r3, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019A36
	bl sub_08056E24
	b _08019A2E
_08019A2A:
	bl sub_080003F0
_08019A2E:
	bl sub_08068558
	cmp r0, #0
	beq _08019A2A
_08019A36:
	bl sub_08002204
	cmp r0, #0
	beq _08019AB8
	ldr r0, _08019A6C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	adds r4, r7, #0
	adds r4, #0x86
	adds r5, r7, #0
	adds r5, #0x84
	cmp r0, #0xb
	beq _08019AAE
	cmp r0, #0xd
	beq _08019AAE
	adds r0, r7, #0
	add r1, sp, #0x10
	bl sub_0805C620
	cmp r0, #0
	beq _08019AAE
	bl sub_0800CCCC
	cmp r0, #0
	beq _08019A98
	b _08019A74
	.2byte 0x0000
_08019A6C: .4byte gUnk_03005CF4
_08019A70:
	bl sub_080003F0
_08019A74:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	ldr r2, _08019A90
	ldrh r2, [r2, #0x2c]
	add r3, sp, #0x10
	bl sub_08066520
	cmp r0, #0
	bne _08019AAE
	bl sub_08056E90
	cmp r0, #0
	beq _08019A70
	b _08019AAE
_08019A90: .4byte gUnk_03003CE0
_08019A94:
	bl sub_080003F0
_08019A98:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	add r2, sp, #0x10
	bl sub_08066490
	cmp r0, #0
	bne _08019AAE
	bl sub_08056E90
	cmp r0, #0
	beq _08019A94
_08019AAE:
	ldrb r0, [r4, #0]
	ldrb r1, [r5, #0]
	movs r2, #3
	bl sub_080571A4
_08019AB8:
	ldr r0, _08019B10
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0xb
	beq _08019B76
	bl sub_080020F4
	ldr r5, _08019B14
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08019B76
	bl sub_080020F4
	adds r1, r7, #0
	adds r1, #0x5a
	ldrh r1, [r1, #0]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08019B76
	ldr r0, _08019B18
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x118]
	bl sub_0801E46C
	adds r5, r0, #0
	movs r4, #0x1e
	str r4, [sp, #0x128]
	subs r4, #0x1f
	b _08019B20
	.2byte 0x0000
_08019B10: .4byte gUnk_03005CF4
_08019B14: .4byte gUnk_03003CE0
_08019B18: .4byte gUnk_030034E0
_08019B1C:
	bl sub_080003F0
_08019B20:
	ldr r1, [sp, #0x128]
	lsls r0, r1, #0x10
	ldr r2, _08019BE0
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x128]
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _08019B48
	ldr r0, [r7, #0x18]
	subs r0, #0x20
	str r0, [r7, #0x18]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0806171C
	bl sub_08056E90
	cmp r0, #0
	beq _08019B1C
_08019B48:
	ldr r4, _08019BE4
	ldr r0, [r4, #0]
	adds r1, r5, #0
	bl sub_0801E4CC
	ldr r0, [r4, #0]
	movs r4, #0x9d
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08019B76
	ldr r4, _08019BE8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r1, r1, r4
	adds r1, #0xc6
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
_08019B76:
	ldr r1, _08019BEC
	adds r0, r7, r1
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019B8C
	ldr r0, _08019BF0
	ldr r1, [r0, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
_08019B8C:
	ldr r2, [sp, #0x15c]
	ldrh r1, [r2, #0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08019BAC
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r0, [r0, #0]
	adds r1, r7, #0
	adds r1, #0x84
	ldrb r1, [r1, #0]
	movs r2, #1
	bl sub_080571A4
_08019BAC:
	ldrh r0, [r7, #2]
	bl sub_08067E60
	ldr r0, [r7, #0x14]
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x18]
	str r0, [r7, #0x20]
	ldr r2, _08019BF4
	adds r1, r4, #0
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	ldr r0, [sp, #0x114]
	bl sub_08016ECC
_08019BCE:
	add sp, #0x168
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08019BE0: .4byte 0xFFFF0000
_08019BE4: .4byte gUnk_030034E0
_08019BE8: .4byte gUnk_03003CE0
_08019BEC: .4byte 0x00000201
_08019BF0: .4byte gUnk_03005CF4
_08019BF4: .4byte gUnk_030056FC
	thumb_func_end sub_0801801C
