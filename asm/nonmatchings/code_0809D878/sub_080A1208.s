	thumb_func_start sub_080A1208
sub_080A1208: @ 0x080A1208
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	adds r7, r0, #0
	ldr r0, _080A1280
	str r7, [r0, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x7c]
	ldr r1, _080A1284
	adds r0, r7, #0
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0x7c]
	bl sub_08019F60
	adds r0, r7, #0
	bl sub_0801A0A4
	ldr r4, _080A1288
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0, #0]
	ldr r2, _080A128C
	adds r1, r7, r2
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080A1290
	cmp r1, r0
	bne _080A12A4
	ldr r4, _080A1294
	adds r5, r1, #0
_080A125C:
	movs r0, #0xb
	strh r0, [r7, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _080A1270
	bl sub_08056E90
	cmp r0, #0
	beq _080A1298
_080A1270:
	movs r1, #1
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	bl _080A1D98
_080A1280: .4byte gUnk_03000348
_080A1284: .4byte gUnk_084A5CA8
_080A1288: .4byte gUnk_0300034C
_080A128C: .4byte 0x000002DA
_080A1290: .4byte 0x0000FFFF
_080A1294: .4byte gUnk_030056FC
_080A1298:
	bl sub_080003F0
	ldr r0, _080A13B8
	ldrh r0, [r0, #0]
	cmp r0, r5
	beq _080A125C
_080A12A4:
	ldr r1, _080A13BC
	ldr r4, _080A13B8
	ldrh r2, [r4, #0]
	movs r5, #1
	negs r5, r5
	movs r6, #1
	str r6, [sp, #0]
	add r0, sp, #0x10
	adds r3, r5, #0
	bl sub_08065158
	add r3, sp, #0x44
	mov r8, r3
	ldr r1, _080A13C0
	ldrh r2, [r4, #0]
	str r6, [sp, #0]
	mov r0, r8
	adds r3, r5, #0
	bl sub_08065158
	movs r4, #0x6c
	adds r4, r4, r7
	mov sl, r4
	movs r2, #0
	strh r2, [r4, #0]
	adds r4, r7, #0
	adds r4, #0x6a
	strh r2, [r4, #0]
	adds r3, r7, #0
	adds r3, #0x68
	strh r2, [r3, #0]
	ldr r5, [sp, #0x7c]
	movs r0, #6
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r5, #0xeb
	lsls r5, r5, #1
	adds r1, r7, r5
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5c
	strh r0, [r1, #0]
	ldr r1, [sp, #0x7c]
	movs r5, #4
	ldrsh r0, [r1, r5]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r5, #0xea
	lsls r5, r5, #1
	adds r1, r7, r5
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	strh r2, [r7, #0xc]
	movs r0, #0
	str r0, [sp, #0x84]
	ldr r1, _080A13C4
	str r1, [sp, #0x88]
	str r2, [sp, #0x90]
	movs r5, #0
	str r5, [sp, #0x94]
	ldr r1, _080A13C8
	adds r0, r7, r1
	movs r1, #2
	strb r1, [r0, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0, #0]
	str r6, [r7, #0x50]
	movs r1, #0
	mov r5, sl
	str r5, [sp, #0xac]
	str r4, [sp, #0xa8]
	mov sl, r3
	ldr r6, [sp, #0x7c]
	adds r6, #0xd6
	str r6, [sp, #0xa4]
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r8, r0
	ldr r5, _080A13CC
	movs r6, #0
_080A1352:
	movs r2, #0
	lsls r4, r1, #0x10
	asrs r0, r4, #0x10
	mov r3, r8
	muls r3, r0, r3
_080A135C:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r3
	adds r0, r0, r5
	str r6, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _080A135C
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080A1352
	bl sub_08097FE4
	bl sub_08097A4C
	bl sub_080A26D0
	ldrb r0, [r7, #0]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r7, r2
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldrh r1, [r7, #2]
	ldr r3, _080A13D0
	adds r0, r7, r3
	strh r1, [r0, #0]
	movs r5, #0
	bl sub_08067C18
	b _080A13D8
	.2byte 0x0000
_080A13B8: .4byte gUnk_0300034C
_080A13BC: .4byte 0x0005000B
_080A13C0: .4byte 0x0005000C
_080A13C4: .4byte 0x0000FFFF
_080A13C8: .4byte 0x000001FD
_080A13CC: .4byte gUnk_03003DC4
_080A13D0: .4byte 0x00000202
_080A13D4:
	bl sub_080003F0
_080A13D8:
	bl sub_08067C08
	cmp r0, #0
	beq _080A13D4
	bl sub_08067BF8
	b _080A1802
_080A13E6:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _080A13F6
	ldr r4, [sp, #0x90]
	cmp r4, #0
	bne _080A13F6
	movs r6, #8
	str r6, [sp, #0x90]
_080A13F6:
	bl sub_08058DB0
	cmp r0, #0
	beq _080A1400
	b _080A15EE
_080A1400:
	adds r0, r7, #0
	bl sub_0801C8F0
	ldr r1, _080A1420
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #5
	bls _080A1414
	b _080A15EE
_080A1414:
	lsls r0, r0, #2
	ldr r1, _080A1424
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080A1420: .4byte 0x000001FD
_080A1424: .4byte _080A1428
_080A1428:
	.4byte _080A1440
_080A142C: .4byte _080A1468
_080A1430: .4byte _080A149C
_080A1434: .4byte _080A1534
_080A1438: .4byte _080A15EE
_080A143C: .4byte _080A15C0
_080A1440:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_08067C08
	cmp r0, #0
	bne _080A144E
	b _080A15EE
_080A144E:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrb r1, [r0, #0]
	ldr r3, _080A1464
	adds r0, r7, r3
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _080A15EE
	.2byte 0x0000
_080A1464: .4byte 0x000001FD
_080A1468:
	movs r4, #0
	str r4, [sp, #0x84]
	bl sub_08056F78
	cmp r0, #0
	bne _080A1476
	b _080A15EE
_080A1476:
	movs r6, #0
	str r6, [sp, #0x98]
	movs r2, #1
	movs r0, #1
	strh r0, [r7, #0xc]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #3
	strb r0, [r1, #0]
	ldr r1, _080A1498
	adds r0, r7, r1
	strb r2, [r0, #0]
	bl sub_08067C18
	b _080A15EE
	.2byte 0x0000
_080A1498: .4byte 0x000001FD
_080A149C:
	movs r2, #1
	str r2, [sp, #0x84]
	movs r4, #1
	strh r2, [r7, #0xc]
	movs r0, #0
	bl sub_08096594
	movs r6, #0xfe
	lsls r6, r6, #1
	adds r3, r7, r6
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _080A1508
	adds r1, r1, r0
	adds r0, r7, #0
	movs r2, #0xc0
	movs r3, #0x28
	bl sub_08097A74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A1510
	ldr r1, [sp, #0x98]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x98]
	cmp r1, #0xb4
	bhi _080A14EA
	b _080A15EE
_080A14EA:
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #4
	strb r1, [r0, #0]
	ldr r2, _080A150C
	adds r0, r7, r2
	strb r4, [r0, #0]
	bl sub_08067C18
	movs r0, #0
	bl sub_08097A38
	b _080A15B4
	.2byte 0x0000
_080A1508: .4byte gUnk_03003CE0
_080A150C: .4byte 0x000001FD
_080A1510:
	movs r6, #0xff
	lsls r6, r6, #1
	adds r0, r7, r6
	movs r1, #4
	strb r1, [r0, #0]
	ldr r1, _080A1530
	adds r0, r7, r1
	strb r4, [r0, #0]
	bl sub_08067C18
	movs r0, #0
	bl sub_08097A38
	movs r2, #0
	str r2, [sp, #0x9c]
	b _080A15EE
_080A1530: .4byte 0x000001FD
_080A1534:
	movs r3, #2
	str r3, [sp, #0x84]
	strh r3, [r7, #0xc]
	ldr r6, [sp, #0x9c]
	cmp r6, #0
	bne _080A1590
	bl sub_080A1DA8
	bl sub_0800CE30
	movs r4, #0
	cmp r0, #1
	bne _080A1550
	movs r4, #1
_080A1550:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080A2720
	adds r0, r4, #0
	movs r1, #1
	bl sub_080A2720
	adds r0, r4, #0
	movs r1, #2
	bl sub_080A2720
	adds r0, r4, #0
	movs r1, #3
	bl sub_080A2720
	adds r0, r4, #0
	movs r1, #4
	bl sub_080A2720
	adds r0, r4, #0
	movs r1, #5
	bl sub_080A2720
	adds r0, r4, #0
	movs r1, #6
	bl sub_080A2720
	adds r0, r4, #0
	movs r1, #7
	bl sub_080A2720
_080A1590:
	ldr r1, [sp, #0x9c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	cmp r1, #0x5a
	bls _080A15EE
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #6
	strb r0, [r1, #0]
	ldr r2, _080A15BC
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
_080A15B4:
	movs r3, #0
	str r3, [sp, #0x9c]
	b _080A15EE
	.2byte 0x0000
_080A15BC: .4byte 0x000001FD
_080A15C0:
	movs r4, #0
	str r4, [sp, #0x84]
	strh r4, [r7, #0xc]
	ldr r1, [sp, #0x9c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	cmp r1, #0x78
	bls _080A15EE
	movs r0, #0
	str r0, [sp, #0x98]
	ldr r2, _080A1600
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #3
	strb r0, [r1, #0]
	bl sub_08067C18
_080A15EE:
	ldr r4, [sp, #0x84]
	cmp r4, #1
	beq _080A161A
	cmp r4, #1
	bgt _080A1604
	cmp r4, #0
	beq _080A160C
	b _080A163A
	.2byte 0x0000
_080A1600: .4byte 0x000001FD
_080A1604:
	ldr r6, [sp, #0x84]
	cmp r6, #2
	beq _080A162C
	b _080A163A
_080A160C:
	add r0, sp, #0x10
	mov r9, r0
	ldrh r0, [r7, #8]
	mov r1, sl
	strh r0, [r1, #0]
	movs r2, #1
	b _080A1638
_080A161A:
	add r3, sp, #0x10
	mov r9, r3
	ldrh r0, [r7, #8]
	adds r0, #8
	mov r4, sl
	strh r0, [r4, #0]
	movs r6, #1
	str r6, [sp, #0x8c]
	b _080A163A
_080A162C:
	add r0, sp, #0x44
	mov r9, r0
	ldrh r0, [r7, #8]
	mov r1, sl
	strh r0, [r1, #0]
	movs r2, #0
_080A1638:
	str r2, [sp, #0x8c]
_080A163A:
	ldr r0, _080A1688
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r3, [sp, #0x88]
	ldrh r4, [r0, #0]
	cmp r3, r4
	beq _080A165A
	ldrh r0, [r0, #0]
	str r0, [sp, #0x88]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_080A165A:
	ldr r1, _080A168C
	ldrh r0, [r1, #0]
	mov r6, r9
	strb r0, [r6, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r1, [sp, #0xa4]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A1690
	bl sub_08097FF8
	b _080A169E
_080A1688: .4byte gUnk_03000348
_080A168C: .4byte gUnk_0300034C
_080A1690:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080A169E:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A16C4
	mov r2, sl
	ldrh r1, [r2, #0]
	ldr r3, [sp, #0x8c]
	str r3, [sp, #0]
	mov r0, r9
	ldr r2, [sp, #0xa8]
	ldr r3, [sp, #0xac]
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_080A16C4:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x90]
	cmp r0, #0
	beq _080A173C
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x90]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A177C
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A177C
	bl sub_0800CC98
	cmp r0, #0
	bne _080A177C
	bl sub_0800CD34
	cmp r0, #0
	bne _080A177C
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	mov r3, sl
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0xa8]
	ldrh r3, [r4, #0]
	mov r6, r8
	str r6, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r6, r9
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080A177C
_080A173C:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A177C
	bl sub_0800CC98
	cmp r0, #0
	bne _080A177C
	bl sub_0800CD34
	cmp r0, #0
	bne _080A177C
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	mov r3, sl
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0xa8]
	ldrh r3, [r4, #0]
	mov r6, r8
	str r6, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r6, r9
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A177C:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _080A1792
	ldr r1, [sp, #0x80]
	cmp r1, r0
	beq _080A1792
	str r0, [sp, #0x80]
	movs r2, #0xa
	str r2, [sp, #0x94]
	movs r3, #0
	str r3, [sp, #0xa0]
_080A1792:
	ldr r4, [sp, #0x94]
	cmp r4, #0
	beq _080A17E4
	bl sub_0800CC98
	cmp r0, #0
	bne _080A17BE
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A17BE
	bl sub_0800CD34
	cmp r0, #0
	bne _080A17BE
	ldr r6, [sp, #0xa0]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x80]
	bl sub_0801A120
_080A17BE:
	movs r0, #2
	ldr r1, [sp, #0x94]
	ands r0, r1
	cmp r0, #0
	beq _080A17D4
	ldr r2, [sp, #0xa0]
	lsls r0, r2, #0x10
	ldr r3, _080A17E0
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
_080A17D4:
	ldr r0, [sp, #0x94]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
	b _080A17EC
_080A17E0: .4byte 0xFFFF0000
_080A17E4:
	movs r4, #0
	str r4, [sp, #0x80]
	ldr r6, [sp, #0x94]
	str r6, [r7, #0x4c]
_080A17EC:
	adds r0, r7, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080A17FA
	movs r5, #1
_080A17FA:
	bl sub_080003F0
	cmp r5, #0
	bne _080A1814
_080A1802:
	bl sub_0800CB78
	cmp r0, #0
	bne _080A1814
	bl sub_08056E90
	cmp r0, #0
	bne _080A1814
	b _080A13E6
_080A1814:
	ldr r0, _080A1984
	movs r4, #0
	str r4, [r0, #0]
	bl sub_080020F4
	ldr r1, _080A1988
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_080A1F88
	add r0, sp, #0x10
	mov r9, r0
	ldr r0, _080A198C
	ldrh r0, [r0, #0]
	mov r1, r9
	strb r0, [r1, #0x1c]
	ldr r1, _080A1990
	ldr r2, [r1, #0]
	adds r0, r2, #0
	adds r0, #0x6c
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	movs r2, #0
	str r2, [sp, #0xa0]
	movs r3, #0xa
	str r3, [sp, #0x94]
	mov sl, r1
_080A185E:
	bl sub_080020F4
	ldr r2, _080A1988
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A193A
	bl sub_0800CC98
	cmp r0, #0
	bne _080A193A
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _080A193A
	ldr r0, _080A198C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r5, [sp, #0xa4]
	ldrh r2, [r5, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r4, sl
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r5, #1
	str r5, [sp, #0]
	mov r0, r9
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	str r6, [sp, #0]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r6, #0
	ldrsh r0, [r4, r6]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r4, sl
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r5, r8
	str r5, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r6, r9
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, [sp, #0xa0]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x80]
	bl sub_0801A120
_080A193A:
	movs r0, #2
	ldr r1, [sp, #0x94]
	ands r0, r1
	cmp r0, #0
	beq _080A1950
	ldr r2, [sp, #0xa0]
	lsls r0, r2, #0x10
	ldr r3, _080A1994
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
_080A1950:
	bl sub_080003F0
	ldr r0, [sp, #0x94]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
	ldr r0, _080A1998
	ldr r4, [sp, #0x94]
	cmp r4, r0
	beq _080A1968
	b _080A185E
_080A1968:
	bl sub_080683CC
	ldr r4, _080A1990
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r0, _080A199C
	bl sub_08068330
	adds r6, r4, #0
	add r7, sp, #0x78
	b _080A1A72
	.2byte 0x0000
_080A1984: .4byte gUnk_030056FC
_080A1988: .4byte gUnk_03003CE0
_080A198C: .4byte gUnk_0300034C
_080A1990: .4byte gUnk_03000348
_080A1994: .4byte 0xFFFF0000
_080A1998: .4byte 0x0000FFFF
_080A199C: .4byte 0xDEADFACE
_080A19A0:
	bl sub_080020F4
	ldr r2, _080A1A88
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A1A6E
	bl sub_0800CC98
	cmp r0, #0
	bne _080A1A6E
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A1A6E
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080A1A6E
	ldr r0, _080A1A8C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0xa4]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, r9
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x7a
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r5, #0
	ldrsh r0, [r7, r5]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A1A6E:
	bl sub_080003F0
_080A1A72:
	ldr r0, _080A1A90
	bl sub_080682B8
	cmp r0, #0
	beq _080A19A0
	ldr r0, _080A1A90
	bl sub_08065E38
	ldr r6, _080A1A94
	add r7, sp, #0x78
	b _080A1B6A
_080A1A88: .4byte gUnk_03003CE0
_080A1A8C: .4byte gUnk_0300034C
_080A1A90: .4byte 0xDEADFACE
_080A1A94: .4byte gUnk_03000348
_080A1A98:
	bl sub_080020F4
	ldr r2, _080A1BB8
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A1B66
	bl sub_0800CC98
	cmp r0, #0
	bne _080A1B66
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A1B66
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080A1B66
	ldr r0, _080A1BBC
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0xa4]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, r9
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x7a
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r5, #0
	ldrsh r0, [r7, r5]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A1B66:
	bl sub_080003F0
_080A1B6A:
	bl sub_08058DB0
	cmp r0, #0
	bne _080A1A98
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _080A1BB8
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080A1BC0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080A1BC4
	ldr r1, [r1, #0]
	movs r6, #0xe4
	lsls r6, r6, #3
	adds r1, r1, r6
	str r0, [r1, #0]
	ldr r6, _080A1BC8
	add r7, sp, #0x78
	b _080A1C9E
	.2byte 0x0000
_080A1BB8: .4byte gUnk_03003CE0
_080A1BBC: .4byte gUnk_0300034C
_080A1BC0: .4byte 0x00140061
_080A1BC4: .4byte gUnk_03005CF4
_080A1BC8: .4byte gUnk_03000348
_080A1BCC:
	bl sub_080020F4
	ldr r2, _080A1D6C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A1C9A
	bl sub_0800CC98
	cmp r0, #0
	bne _080A1C9A
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A1C9A
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080A1C9A
	ldr r0, _080A1D70
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0xa4]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, r9
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x7a
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r5, #0
	ldrsh r0, [r7, r5]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A1C9A:
	bl sub_080003F0
_080A1C9E:
	ldr r0, _080A1D74
	ldr r0, [r0, #0]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	beq _080A1BCC
	bl sub_080020F4
	ldr r4, _080A1D6C
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	movs r0, #0xd
	bl sub_08058688
	ldr r6, _080A1D78
	ldr r0, [r6, #0]
	ldr r3, [sp, #0xa4]
	ldrh r2, [r3, #0]
	ldr r1, _080A1D70
	ldrh r3, [r1, #0]
	mov r1, r9
	bl sub_080970CC
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080A1D46
	ldr r0, [r6, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A1D46
	ldr r0, _080A1D7C
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x7c]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r5, #0x1d
	str r5, [sp, #0xa0]
	subs r5, #0x1e
_080A1D16:
	ldr r0, _080A1D78
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r6, [sp, #0xa0]
	lsls r0, r6, #0x10
	ldr r1, _080A1D80
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0xa0]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080A1D16
	ldr r0, _080A1D7C
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080A1D46:
	movs r3, #0x6f
	str r3, [sp, #0xa0]
	movs r4, #1
	negs r4, r4
_080A1D4E:
	bl sub_080003F0
	ldr r5, [sp, #0xa0]
	lsls r0, r5, #0x10
	ldr r6, _080A1D80
	adds r0, r0, r6
	lsrs r1, r0, #0x10
	str r1, [sp, #0xa0]
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _080A1D4E
	bl sub_08067C18
	b _080A1D88
	.2byte 0x0000
_080A1D6C: .4byte gUnk_03003CE0
_080A1D70: .4byte gUnk_0300034C
_080A1D74: .4byte gUnk_03005CF4
_080A1D78: .4byte gUnk_03000348
_080A1D7C: .4byte gUnk_030034E0
_080A1D80: .4byte 0xFFFF0000
_080A1D84:
	bl sub_080003F0
_080A1D88:
	bl sub_08067C08
	cmp r0, #0
	beq _080A1D84
	bl sub_08067BF8
	bl sub_08056E24
_080A1D98:
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080A1208
