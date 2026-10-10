	thumb_func_start sub_080B0288
sub_080B0288: @ 0x080B0288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe8
	mov sl, r0
	ldr r0, _080B040C
	mov r1, sl
	str r1, [r0, #0]
	movs r2, #0x81
	lsls r2, r2, #2
	add r2, sl
	str r2, [sp, #0xb8]
	ldr r1, _080B0410
	mov r0, sl
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0xb8]
	bl sub_08019F60
	mov r0, sl
	bl sub_0801A0A4
	ldr r1, _080B0414
	movs r4, #1
	negs r4, r4
	movs r5, #0
	str r5, [sp, #0]
	add r0, sp, #0x18
	movs r2, #5
	adds r3, r4, #0
	bl sub_08065158
	add r7, sp, #0x4c
	ldr r1, _080B0418
	str r5, [sp, #0]
	adds r0, r7, #0
	movs r2, #5
	adds r3, r4, #0
	bl sub_08065158
	add r6, sp, #0x80
	ldr r1, _080B041C
	str r5, [sp, #0]
	adds r0, r6, #0
	movs r2, #5
	adds r3, r4, #0
	bl sub_08065158
	ldr r3, [sp, #0xb8]
	movs r4, #6
	ldrsh r0, [r3, r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r0, #0xeb
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	mov r8, r2
	strh r1, [r0, #0]
	mov r0, sl
	adds r0, #0x5c
	strh r1, [r0, #0]
	movs r4, #4
	ldrsh r0, [r3, r4]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xea
	lsls r1, r1, #1
	add r1, sl
	strh r0, [r1, #0]
	mov r1, sl
	adds r1, #0x5e
	strh r0, [r1, #0]
	mov r0, sl
	strh r5, [r0, #0xc]
	movs r1, #0
	str r1, [sp, #0xc4]
	ldr r2, _080B0420
	str r2, [sp, #0xc8]
	movs r3, #0
	str r3, [sp, #0xd0]
	movs r4, #0
	str r4, [sp, #0xd4]
	ldr r0, _080B0424
	add r0, sl
	movs r4, #2
	strb r4, [r0, #0]
	movs r0, #0xff
	lsls r0, r0, #1
	add r0, sl
	strb r4, [r0, #0]
	movs r1, #0xb3
	ldr r5, [sp, #0xb8]
	strh r1, [r5, #0x28]
	movs r0, #0xb0
	lsls r0, r0, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	str r0, [sp, #0xc0]
	strh r4, [r5, #0x24]
	ldr r0, _080B0428
	add r0, sl
	mov r1, r8
	strb r1, [r0, #0]
	movs r0, #1
	mov r2, sl
	str r0, [r2, #0x50]
	movs r1, #0
	movs r3, #0x6c
	add r3, sl
	mov r8, r3
	adds r2, #0x6a
	str r2, [sp, #0xe4]
	mov r4, sl
	adds r4, #0x68
	str r4, [sp, #0xe0]
	movs r6, #0xa6
	lsls r6, r6, #1
	ldr r7, _080B042C
	movs r5, #0
_080B0388:
	movs r2, #0
	lsls r4, r1, #0x10
	asrs r0, r4, #0x10
	adds r3, r0, #0
	muls r3, r6, r3
_080B0392:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r3
	adds r0, r0, r7
	str r5, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _080B0392
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080B0388
	movs r0, #0
	mov r2, r8
	strh r0, [r2, #0]
	ldr r3, [sp, #0xe4]
	strh r0, [r3, #0]
	ldr r4, [sp, #0xe0]
	strh r0, [r4, #0]
	movs r6, #0
	bl sub_08098044
	bl sub_08097FE4
	bl sub_08097A4C
	mov r5, sl
	ldrb r0, [r5, #0]
	movs r3, #0xfe
	lsls r3, r3, #1
	add r3, sl
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldrh r1, [r5, #2]
	ldr r0, _080B0430
	add r0, sl
	strh r1, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	add r1, sl
	movs r0, #0xff
	strb r0, [r1, #0]
	movs r0, #0
	str r0, [sp, #0xdc]
	bl sub_08067C18
	b _080B0438
	.2byte 0x0000
_080B040C: .4byte gUnk_03000788
_080B0410: .4byte gUnk_084A84B0
_080B0414: .4byte 0x00050089
_080B0418: .4byte 0x00050087
_080B041C: .4byte 0x00050088
_080B0420: .4byte 0x0000FFFF
_080B0424: .4byte 0x000001FD
_080B0428: .4byte 0x0000022B
_080B042C: .4byte gUnk_03003DC4
_080B0430: .4byte 0x00000202
_080B0434:
	bl sub_080003F0
_080B0438:
	bl sub_08067C08
	cmp r0, #0
	beq _080B0434
	bl sub_08067BF8
	b _080B07DA
_080B0446:
	mov r1, sl
	ldrh r0, [r1, #0xc]
	cmp r0, #0xa
	bne _080B0458
	ldr r2, [sp, #0xd0]
	cmp r2, #0
	bne _080B0458
	movs r3, #8
	str r3, [sp, #0xd0]
_080B0458:
	bl sub_08058DB0
	cmp r0, #0
	beq _080B0462
	b _080B05C2
_080B0462:
	ldr r0, _080B0484
	ldr r0, [r0, #0]
	bl sub_0801C8F0
	ldr r0, _080B0488
	add r0, sl
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #4
	bls _080B0478
	b _080B05C2
_080B0478:
	lsls r0, r0, #2
	ldr r1, _080B048C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080B0484: .4byte gUnk_03000788
_080B0488: .4byte 0x000001FD
_080B048C: .4byte _080B0490
_080B0490:
	.4byte _080B04A4
_080B0494: .4byte _080B04CC
_080B0498: .4byte _080B04E2
_080B049C: .4byte _080B0544
_080B04A0: .4byte _080B0590
_080B04A4:
	movs r0, #0
	mov r4, sl
	strh r0, [r4, #0xc]
	bl sub_08067C08
	cmp r0, #0
	bne _080B04B4
	b _080B05C2
_080B04B4:
	movs r0, #0xff
	lsls r0, r0, #1
	add r0, sl
	ldrb r1, [r0, #0]
	ldr r0, _080B04C8
	add r0, sl
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _080B05C2
_080B04C8: .4byte 0x000001FD
_080B04CC:
	movs r5, #0
	str r5, [sp, #0xc4]
	bl sub_08056F78
	cmp r0, #0
	beq _080B05C2
	movs r1, #0xff
	lsls r1, r1, #1
	add r1, sl
	movs r0, #3
	b _080B057C
_080B04E2:
	movs r0, #1
	str r0, [sp, #0xc4]
	movs r4, #1
	mov r1, sl
	strh r0, [r1, #0xc]
	movs r0, #0
	bl sub_08096594
	movs r3, #0xfe
	lsls r3, r3, #1
	add r3, sl
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
	ldr r0, _080B053C
	adds r1, r1, r0
	movs r2, #0xa0
	lsls r2, r2, #1
	mov r0, sl
	movs r3, #0x1c
	bl sub_08097A74
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B05C2
	movs r0, #0xff
	lsls r0, r0, #1
	add r0, sl
	movs r1, #4
	strb r1, [r0, #0]
	ldr r0, _080B0540
	add r0, sl
	strb r4, [r0, #0]
	bl sub_08067C18
	b _080B05C2
	.2byte 0x0000
_080B053C: .4byte gUnk_03003CE0
_080B0540: .4byte 0x000001FD
_080B0544:
	movs r2, #2
	str r2, [sp, #0xc4]
	mov r3, sl
	strh r2, [r3, #0xc]
	ldr r4, [sp, #0xe4]
	ldrh r0, [r4, #0]
	cmp r0, #2
	bne _080B0562
	mov r5, r8
	ldrh r0, [r5, #0]
	cmp r0, #0
	bne _080B0562
	ldr r0, [sp, #0xc0]
	bl sub_08058CC4
_080B0562:
	mov r0, sl
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080B05C2
	mov r1, sl
	ldr r0, [r1, #0x50]
	adds r0, #1
	str r0, [r1, #0x50]
	movs r1, #0xff
	lsls r1, r1, #1
	add r1, sl
	movs r0, #5
_080B057C:
	strb r0, [r1, #0]
	ldr r1, _080B058C
	add r1, sl
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080B05C2
_080B058C: .4byte 0x000001FD
_080B0590:
	movs r2, #0
	str r2, [sp, #0xc4]
	mov r3, sl
	strh r2, [r3, #0xc]
	adds r1, r6, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r1, #0x3c
	bls _080B05C2
	movs r6, #0
	movs r0, #0
	bl sub_08097A38
	ldr r1, _080B05D4
	add r1, sl
	movs r0, #1
	strb r0, [r1, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	add r1, sl
	movs r0, #3
	strb r0, [r1, #0]
	bl sub_08067C18
_080B05C2:
	ldr r4, [sp, #0xc4]
	cmp r4, #1
	beq _080B05F2
	cmp r4, #1
	bgt _080B05D8
	cmp r4, #0
	beq _080B05E0
	b _080B0616
	.2byte 0x0000
_080B05D4: .4byte 0x000001FD
_080B05D8:
	ldr r5, [sp, #0xc4]
	cmp r5, #2
	beq _080B0606
	b _080B0616
_080B05E0:
	add r0, sp, #0x18
	mov r9, r0
	mov r1, sl
	ldrh r0, [r1, #8]
	ldr r2, [sp, #0xe0]
	strh r0, [r2, #0]
	movs r3, #1
	str r3, [sp, #0xcc]
	b _080B0616
_080B05F2:
	add r4, sp, #0x18
	mov r9, r4
	mov r5, sl
	ldrh r0, [r5, #8]
	adds r0, #8
	ldr r1, [sp, #0xe0]
	strh r0, [r1, #0]
	movs r2, #1
	str r2, [sp, #0xcc]
	b _080B0616
_080B0606:
	add r3, sp, #0x4c
	mov r9, r3
	mov r4, sl
	ldrh r0, [r4, #8]
	ldr r5, [sp, #0xe0]
	strh r0, [r5, #0]
	movs r0, #0
	str r0, [sp, #0xcc]
_080B0616:
	ldr r0, _080B0658
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r1, [sp, #0xc8]
	ldrh r3, [r0, #0]
	cmp r1, r3
	beq _080B0636
	ldrh r0, [r0, #0]
	str r0, [sp, #0xc8]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_080B0636:
	movs r0, #5
	mov r4, r9
	strb r0, [r4, #0x1c]
	ldr r1, [r4, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080B065C
	bl sub_08097FF8
	b _080B066C
_080B0658: .4byte gUnk_03000788
_080B065C:
	mov r5, sl
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	ldr r1, [r5, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080B066C:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B0690
	ldr r0, [sp, #0xe0]
	ldrh r1, [r0, #0]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #0]
	mov r0, r9
	ldr r2, [sp, #0xe4]
	mov r3, r8
	bl sub_08065370
	mov r1, sl
	adds r1, #0x6e
	strh r0, [r1, #0]
_080B0690:
	mov r3, sl
	ldr r0, [r3, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0xb4
	mov r5, sp
	adds r5, #0xb6
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, [sp, #0xd0]
	cmp r0, #0
	beq _080B0708
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xd0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080B0746
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B0746
	bl sub_0800CC98
	cmp r0, #0
	bne _080B0746
	bl sub_0800CD34
	cmp r0, #0
	bne _080B0746
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xe0]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0xe4]
	ldrh r3, [r4, #0]
	str r7, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080B0746
_080B0708:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B0746
	bl sub_0800CC98
	cmp r0, #0
	bne _080B0746
	bl sub_0800CD34
	cmp r0, #0
	bne _080B0746
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xe0]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0xe4]
	ldrh r3, [r4, #0]
	str r7, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B0746:
	mov r1, sl
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	beq _080B075E
	ldr r2, [sp, #0xbc]
	cmp r2, r0
	beq _080B075E
	str r0, [sp, #0xbc]
	movs r3, #0xa
	str r3, [sp, #0xd4]
	movs r4, #0
	str r4, [sp, #0xd8]
_080B075E:
	ldr r5, [sp, #0xd4]
	cmp r5, #0
	beq _080B07B0
	bl sub_0800CC98
	cmp r0, #0
	bne _080B078A
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B078A
	bl sub_0800CD34
	cmp r0, #0
	bne _080B078A
	ldr r0, [sp, #0xd8]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0xbc]
	bl sub_0801A120
_080B078A:
	movs r0, #2
	ldr r1, [sp, #0xd4]
	ands r0, r1
	cmp r0, #0
	beq _080B07A0
	ldr r2, [sp, #0xd8]
	lsls r0, r2, #0x10
	ldr r3, _080B07AC
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd8]
_080B07A0:
	ldr r0, [sp, #0xd4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	b _080B07BA
_080B07AC: .4byte 0xFFFF0000
_080B07B0:
	movs r4, #0
	str r4, [sp, #0xbc]
	ldr r5, [sp, #0xd4]
	mov r0, sl
	str r5, [r0, #0x4c]
_080B07BA:
	mov r0, sl
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B07CA
	movs r1, #1
	str r1, [sp, #0xdc]
_080B07CA:
	mov r0, sl
	bl sub_08020680
	bl sub_080003F0
	ldr r2, [sp, #0xdc]
	cmp r2, #0
	bne _080B07EC
_080B07DA:
	bl sub_0800CB78
	cmp r0, #0
	bne _080B07EC
	bl sub_08056E90
	cmp r0, #0
	bne _080B07EC
	b _080B0446
_080B07EC:
	bl sub_080020F4
	ldr r1, _080B093C
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	add r3, sp, #0x80
	mov r9, r3
	movs r1, #0
	movs r0, #5
	strb r0, [r3, #0x1c]
	ldr r2, _080B0940
	ldr r4, [r2, #0]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	movs r4, #0
	str r4, [sp, #0xd8]
	movs r5, #0xa
	str r5, [sp, #0xd4]
	adds r6, r2, #0
	add r0, sp, #0xb4
	mov r8, r0
_080B082E:
	bl sub_080020F4
	ldr r2, _080B093C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B08F6
	bl sub_0800CC98
	cmp r0, #0
	bne _080B08F6
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B08F6
	mov r3, r9
	ldr r1, [r3, #0xc]
	movs r0, #0x15
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
	lsrs r7, r0, #0x18
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r4, #1
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
	adds r4, #0xb6
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r5, r8
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, [sp, #0xd8]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0xbc]
	bl sub_0801A120
_080B08F6:
	movs r0, #2
	ldr r1, [sp, #0xd4]
	ands r0, r1
	cmp r0, #0
	beq _080B090C
	ldr r2, [sp, #0xd8]
	lsls r0, r2, #0x10
	ldr r3, _080B0944
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd8]
_080B090C:
	bl sub_080003F0
	ldr r0, [sp, #0xd4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	ldr r0, _080B0948
	ldr r4, [sp, #0xd4]
	cmp r4, r0
	bne _080B082E
	bl sub_080683CC
	ldr r4, _080B0940
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r0, _080B094C
	bl sub_08068330
	mov r8, r4
	b _080B0A18
	.2byte 0x0000
_080B093C: .4byte gUnk_03003CE0
_080B0940: .4byte gUnk_03000788
_080B0944: .4byte 0xFFFF0000
_080B0948: .4byte 0x0000FFFF
_080B094C: .4byte 0xDEADFACE
_080B0950:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r5, _080B0A30
	adds r1, r1, r5
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B0A14
	bl sub_0800CC98
	cmp r0, #0
	bne _080B0A14
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B0A14
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _080B0A14
	mov r0, r9
	ldr r1, [r0, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	mov r2, r8
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r5, r8
	ldr r3, [r5, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, r9
	bl sub_08065370
	ldr r1, [r5, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0xb4
	mov r5, sp
	adds r5, #0xb6
	str r6, [sp, #0]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r4, r8
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B0A14:
	bl sub_080003F0
_080B0A18:
	ldr r0, _080B0A34
	bl sub_080682B8
	cmp r0, #0
	beq _080B0950
	ldr r0, _080B0A34
	bl sub_08065E38
	ldr r6, _080B0A38
	add r0, sp, #0xb4
	mov r8, r0
	b _080B0AFE
_080B0A30: .4byte gUnk_03003D10
_080B0A34: .4byte 0xDEADFACE
_080B0A38: .4byte gUnk_03000788
_080B0A3C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r2, _080B0B4C
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B0AFA
	bl sub_0800CC98
	cmp r0, #0
	bne _080B0AFA
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B0AFA
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B0AFA
	mov r3, r9
	ldr r1, [r3, #0xc]
	movs r0, #0x15
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
	lsrs r7, r0, #0x18
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
	adds r4, #0xb6
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r5, r8
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B0AFA:
	bl sub_080003F0
_080B0AFE:
	bl sub_08058DB0
	cmp r0, #0
	bne _080B0A3C
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _080B0B50
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_0805A318
	cmp r0, #0
	beq _080B0B5C
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080B0B54
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080B0B58
	ldr r1, [r1, #0]
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r1, r1, r2
	b _080B0B7A
_080B0B4C: .4byte gUnk_03003D10
_080B0B50: .4byte gUnk_03003CE0
_080B0B54: .4byte 0x0014009B
_080B0B58: .4byte gUnk_03005CF4
_080B0B5C:
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080B0B84
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080B0B88
	ldr r1, [r1, #0]
	movs r3, #0xe4
	lsls r3, r3, #3
	adds r1, r1, r3
_080B0B7A:
	str r0, [r1, #0]
	ldr r6, _080B0B8C
	add r4, sp, #0xb4
	mov r8, r4
	b _080B0C54
_080B0B84: .4byte 0x00140095
_080B0B88: .4byte gUnk_03005CF4
_080B0B8C: .4byte gUnk_03000788
_080B0B90:
	bl sub_080020F4
	ldr r2, _080B0CD4
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
	bne _080B0C50
	bl sub_0800CC98
	cmp r0, #0
	bne _080B0C50
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B0C50
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B0C50
	mov r0, r9
	ldr r1, [r0, #0xc]
	movs r0, #0x15
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
	lsrs r7, r0, #0x18
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
	adds r4, #0xb6
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B0C50:
	bl sub_080003F0
_080B0C54:
	ldr r0, _080B0CD8
	ldr r0, [r0, #0]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	beq _080B0B90
	add r2, sp, #0x80
	mov r9, r2
	movs r1, #0
	movs r0, #5
	strb r0, [r2, #0x1c]
	ldr r2, _080B0CDC
	ldr r3, [r2, #0]
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0, #0]
	adds r0, #4
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	movs r6, #0x64
	mov r8, r2
_080B0C88:
	bl sub_080020F4
	ldr r2, _080B0CD4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B0D92
	bl sub_0800CC98
	cmp r0, #0
	bne _080B0D92
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B0D92
	bl sub_0800CD34
	cmp r0, #0
	bne _080B0D92
	cmp r6, #0x4f
	bhi _080B0D06
	cmp r6, #0x3b
	bhi _080B0CE0
	mov r3, r8
	ldr r0, [r3, #0]
	adds r0, #0x68
	movs r1, #0x12
	b _080B0D04
_080B0CD4: .4byte gUnk_03003CE0
_080B0CD8: .4byte gUnk_03005CF4
_080B0CDC: .4byte gUnk_03000788
_080B0CE0:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _080B0D06
	mov r4, r8
	ldr r2, [r4, #0]
	adds r1, r2, #0
	adds r1, #0x68
	ldrh r0, [r1, #0]
	cmp r0, #7
	bhi _080B0CFE
	adds r0, #1
	strh r0, [r1, #0]
	adds r1, r0, #0
	b _080B0D00
_080B0CFE:
	movs r1, #8
_080B0D00:
	adds r0, r2, #0
	adds r0, #0x68
_080B0D04:
	strh r1, [r0, #0]
_080B0D06:
	mov r5, r9
	ldr r1, [r5, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	mov r0, r8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, r8
	ldr r3, [r1, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
	mov r0, r9
	bl sub_08065370
	mov r2, r8
	ldr r1, [r2, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0xb4
	mov r5, sp
	adds r5, #0xb6
	movs r3, #0
	str r3, [sp, #0]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0xe0]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0xe4]
	ldrh r3, [r4, #0]
	str r7, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B0D92:
	bl sub_080003F0
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xff
	beq _080B0DA2
	b _080B0C88
_080B0DA2:
	ldr r4, _080B0F60
	ldr r3, [r4, #0]
	adds r1, r3, #0
	adds r1, #0x68
	movs r2, #0
	movs r0, #0x12
	strh r0, [r1, #0]
	adds r0, r3, #0
	adds r0, #0x6c
	strh r2, [r0, #0]
	subs r0, #2
	strh r2, [r0, #0]
	movs r6, #0
	mov r2, sl
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x18]
	movs r2, #1
	bl sub_08098088
	mov sl, r4
	add r3, sp, #0xb4
	mov r8, r3
_080B0DCE:
	bl sub_080020F4
	ldr r2, _080B0F64
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
	bne _080B0EAE
	bl sub_0800CC98
	cmp r0, #0
	bne _080B0EAE
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B0EAE
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B0EAE
	adds r1, r6, #1
	lsls r1, r1, #0x18
	movs r0, #0xf0
	lsls r0, r0, #0x14
	ands r0, r1
	lsrs r6, r0, #0x18
	movs r0, #0
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08009088
	mov r0, r9
	ldr r1, [r0, #0xc]
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	mov r2, sl
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r4, sl
	ldr r3, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
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
	mov r4, sp
	adds r4, #0xb6
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r4, [sp, #0xe0]
	ldrh r2, [r4, #0]
	ldr r4, [sp, #0xe4]
	ldrh r3, [r4, #0]
	str r7, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #0xc]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #0x10]
	ldr r4, [r5, #0]
	str r4, [sp, #0x14]
	bl sub_08007974
_080B0EAE:
	bl sub_080003F0
	bl sub_080980F0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B0DCE
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08009088
	bl sub_08098060
	bl sub_080020F4
	ldr r4, _080B0F64
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
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080B0F4C
	ldr r0, _080B0F60
	ldr r0, [r0, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080B0F4C
	ldr r0, _080B0F68
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xb8]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r0, #0x1d
	str r0, [sp, #0xd8]
	movs r5, #1
	negs r5, r5
_080B0F1C:
	ldr r0, _080B0F60
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0xd8]
	lsls r0, r1, #0x10
	ldr r2, _080B0F6C
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0xd8]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080B0F1C
	ldr r0, _080B0F68
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080B0F4C:
	bl sub_08056E24
	add sp, #0xe8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B0F60: .4byte gUnk_03000788
_080B0F64: .4byte gUnk_03003CE0
_080B0F68: .4byte gUnk_030034E0
_080B0F6C: .4byte 0xFFFF0000
	thumb_func_end sub_080B0288
