	thumb_func_start sub_080A8164
sub_080A8164: @ 0x080A8164
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10c
	adds r7, r0, #0
	ldr r0, _080A81E8
	str r7, [r0, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0xb8]
	ldr r1, _080A81EC
	adds r0, r7, #0
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0xb8]
	bl sub_08019F60
	adds r0, r7, #0
	bl sub_0801A0A4
	ldr r0, _080A81F0
	str r0, [r7, #0x14]
	movs r0, #0xe6
	lsls r0, r0, #7
	str r0, [r7, #0x18]
	ldr r4, _080A81F4
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0, #0]
	ldr r2, _080A81F8
	adds r1, r7, r2
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080A81FC
	cmp r1, r0
	bne _080A8210
	ldr r4, _080A8200
	adds r5, r1, #0
_080A81C2:
	movs r0, #0xb
	strh r0, [r7, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _080A81D6
	bl sub_08056E90
	cmp r0, #0
	beq _080A8204
_080A81D6:
	movs r1, #1
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	bl _080A8F80
	.2byte 0x0000
_080A81E8: .4byte gUnk_0300041C
_080A81EC: .4byte gUnk_084A8EC0
_080A81F0: .4byte 0x00016B00
_080A81F4: .4byte gUnk_03000420
_080A81F8: .4byte 0x000002DA
_080A81FC: .4byte 0x0000FFFF
_080A8200: .4byte gUnk_030056FC
_080A8204:
	bl sub_080003F0
	ldr r0, _080A8368
	ldrh r0, [r0, #0]
	cmp r0, r5
	beq _080A81C2
_080A8210:
	ldr r1, _080A836C
	ldr r4, _080A8368
	ldrh r2, [r4, #0]
	movs r5, #1
	negs r5, r5
	movs r6, #1
	str r6, [sp, #0]
	add r0, sp, #0x10
	adds r3, r5, #0
	bl sub_08065158
	add r0, sp, #0x44
	ldr r1, _080A8370
	ldrh r2, [r4, #0]
	str r6, [sp, #0]
	adds r3, r5, #0
	bl sub_08065158
	add r0, sp, #0x78
	ldr r1, _080A8374
	ldrh r2, [r4, #0]
	str r6, [sp, #0]
	adds r3, r5, #0
	bl sub_08065158
	movs r3, #0x6c
	adds r3, r3, r7
	mov r8, r3
	movs r2, #0
	strh r2, [r3, #0]
	adds r5, r7, #0
	adds r5, #0x6a
	strh r2, [r5, #0]
	adds r4, r7, #0
	adds r4, #0x68
	strh r2, [r4, #0]
	ldr r0, [sp, #0xb8]
	movs r3, #6
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5c
	strh r0, [r1, #0]
	ldr r1, [sp, #0xb8]
	movs r3, #4
	ldrsh r0, [r1, r3]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xea
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	strh r2, [r7, #0xc]
	movs r0, #0
	str r0, [sp, #0xc8]
	ldr r1, _080A8378
	str r1, [sp, #0xcc]
	str r1, [sp, #0xd0]
	str r2, [sp, #0xd8]
	movs r3, #0
	str r3, [sp, #0xdc]
	ldr r1, _080A837C
	adds r0, r7, r1
	movs r1, #3
	strb r1, [r0, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0, #0]
	subs r1, #0x23
	movs r0, #0x30
	bl sub_0800BB80
	ldr r3, _080A8380
	adds r1, r7, r3
	movs r0, #0x20
	strb r0, [r1, #0]
	ldr r0, _080A8384
	adds r1, r7, r0
	movs r0, #0x18
	strb r0, [r1, #0]
	str r6, [r7, #0x50]
	movs r1, #0
	mov r2, r8
	str r2, [sp, #0x104]
	str r5, [sp, #0x100]
	mov sl, r4
	ldr r3, [sp, #0xb8]
	adds r3, #0xd6
	str r3, [sp, #0x108]
	movs r4, #0xa6
	lsls r4, r4, #1
	mov r8, r4
	ldr r6, _080A8388
	movs r5, #0
_080A82E2:
	movs r2, #0
	lsls r4, r1, #0x10
	asrs r0, r4, #0x10
	mov r3, r8
	muls r3, r0, r3
_080A82EC:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r3
	adds r0, r0, r6
	str r5, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _080A82EC
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080A82E2
	bl sub_08097FE4
	bl sub_08097A4C
	bl sub_080A9818
	movs r2, #0
	str r2, [sp, #0xf8]
	movs r3, #0
	str r3, [sp, #0xec]
	movs r4, #0
	str r4, [sp, #0xe0]
	movs r0, #0
	str r0, [sp, #0xf4]
	movs r1, #0
	str r1, [sp, #0xf0]
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
	ldr r3, _080A838C
	adds r0, r7, r3
	strh r1, [r0, #0]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r1, r7, r4
	movs r0, #0xff
	strb r0, [r1, #0]
	movs r0, #0
	str r0, [sp, #0xfc]
	bl sub_08067C18
	b _080A8394
	.2byte 0x0000
_080A8368: .4byte gUnk_03000420
_080A836C: .4byte 0x00050010
_080A8370: .4byte 0x00050011
_080A8374: .4byte 0x00050012
_080A8378: .4byte 0x0000FFFF
_080A837C: .4byte 0x000001FD
_080A8380: .4byte 0x0000022E
_080A8384: .4byte 0x0000022F
_080A8388: .4byte gUnk_03003DC4
_080A838C: .4byte 0x00000202
_080A8390:
	bl sub_080003F0
_080A8394:
	bl sub_08067C08
	cmp r0, #0
	beq _080A8390
	bl sub_08067BF8
	bl sub_0806849C
	b _080A89F2
_080A83A6:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _080A83B6
	ldr r1, [sp, #0xd8]
	cmp r1, #0
	bne _080A83B6
	movs r2, #8
	str r2, [sp, #0xd8]
_080A83B6:
	bl sub_08058DB0
	cmp r0, #0
	beq _080A83C0
	b _080A871A
_080A83C0:
	adds r0, r7, #0
	bl sub_0801C8F0
	ldr r3, _080A83E0
	adds r0, r7, r3
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #9
	bls _080A83D4
	b _080A871A
_080A83D4:
	lsls r0, r0, #2
	ldr r1, _080A83E4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080A83E0: .4byte 0x000001FD
_080A83E4: .4byte _080A83E8
_080A83E8:
	.4byte _080A8410
_080A83EC: .4byte _080A8438
_080A83F0: .4byte _080A845C
_080A83F4: .4byte _080A8480
_080A83F8: .4byte _080A86EC
_080A83FC: .4byte _080A855C
_080A8400: .4byte _080A857C
_080A8404: .4byte _080A85B4
_080A8408: .4byte _080A8638
_080A840C: .4byte _080A8694
_080A8410:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_08067C08
	cmp r0, #0
	bne _080A841E
	b _080A871A
_080A841E:
	movs r4, #0xff
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrb r1, [r0, #0]
	ldr r2, _080A8434
	adds r0, r7, r2
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _080A871A
	.2byte 0x0000
_080A8434: .4byte 0x000001FD
_080A8438:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_08068490
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	strb r0, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A8452
	b _080A871A
_080A8452:
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #9
	b _080A86D8
_080A845C:
	movs r1, #0
	str r1, [sp, #0xc8]
	bl sub_08056F78
	cmp r0, #0
	bne _080A846A
	b _080A871A
_080A846A:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #4
	strb r0, [r1, #0]
	ldr r3, _080A847C
	adds r1, r7, r3
	b _080A86DE
	.2byte 0x0000
_080A847C: .4byte 0x000001FD
_080A8480:
	movs r4, #1
	str r4, [sp, #0xc8]
	movs r5, #1
	strh r4, [r7, #0xc]
	movs r1, #0x8c
	lsls r1, r1, #7
	str r1, [sp, #0xbc]
	ldr r2, _080A84DC
	str r2, [sp, #0xc0]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	add r4, sp, #0xb0
	str r4, [sp, #0]
	ldr r2, [sp, #0xbc]
	ldr r3, [sp, #0xc0]
	bl sub_080979D8
	ldr r1, [r4, #0]
	asrs r1, r1, #2
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	ldr r1, [r4, #4]
	asrs r1, r1, #2
	ldr r0, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	movs r2, #0x10
	str r2, [sp, #0]
	ldr r2, [sp, #0xbc]
	ldr r3, [sp, #0xc0]
	bl sub_08097B6C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A84E0
	movs r3, #0
	str r3, [sp, #0xf0]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r0, r7, r4
	movs r1, #6
	strb r1, [r0, #0]
	b _080A854C
_080A84DC: .4byte 0x00010500
_080A84E0:
	ldr r0, [sp, #0xf8]
	ldr r2, [sp, #0xc8]
	ands r0, r2
	cmp r0, #0
	beq _080A8524
	ldr r0, [sp, #0xf8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xf8]
	movs r3, #0
	str r3, [sp, #0xf0]
	ldr r0, _080A851C
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x6c
	strh r3, [r0, #0]
	adds r1, #0x6a
	add r0, sp, #0xf0
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0xa
	strb r0, [r1, #0]
	ldr r3, _080A8520
	adds r0, r7, r3
	b _080A8550
	.2byte 0x0000
_080A851C: .4byte gUnk_0300041C
_080A8520: .4byte 0x000001FD
_080A8524:
	ldr r0, [sp, #0xf0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xf0]
	cmp r0, #0x1f
	beq _080A8534
	b _080A871A
_080A8534:
	ldr r0, [sp, #0xf8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xf8]
	movs r4, #0
	str r4, [sp, #0xf0]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #8
	strb r0, [r1, #0]
_080A854C:
	ldr r1, _080A8558
	adds r0, r7, r1
_080A8550:
	strb r5, [r0, #0]
	bl sub_08067C18
	b _080A871A
_080A8558: .4byte 0x000001FD
_080A855C:
	movs r2, #0
	str r2, [sp, #0xc8]
	strh r2, [r7, #0xc]
	ldr r0, _080A8578
	movs r1, #0xa
	movs r2, #4
	movs r3, #0xe
	bl sub_08097EB0
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #7
	b _080A86D8
_080A8578: .4byte gUnk_0851883C
_080A857C:
	movs r1, #0
	str r1, [sp, #0xc8]
	strh r1, [r7, #0xc]
	add r4, sp, #0xb0
	movs r0, #0
	adds r1, r4, #0
	bl sub_08097EF0
	cmp r0, #0
	beq _080A85A6
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #4
	strb r0, [r1, #0]
	ldr r0, _080A85B0
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
_080A85A6:
	ldr r0, [r4, #0]
	str r0, [r7, #0x14]
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	b _080A871A
_080A85B0: .4byte 0x000001FD
_080A85B4:
	movs r1, #0
	str r1, [sp, #0xc8]
	strh r1, [r7, #0xc]
	bl sub_08002204
	cmp r0, #1
	bne _080A860C
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _080A85DE
	negs r1, r1
_080A85DE:
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0, #0]
	ldrb r0, [r0, #0]
	bl sub_08068450
	adds r2, r0, #0
	cmp r2, #1
	bne _080A862C
	movs r4, #0xff
	lsls r4, r4, #1
	adds r0, r7, r4
	movs r1, #2
	strb r1, [r0, #0]
	ldr r1, _080A8608
	adds r0, r7, r1
	strb r2, [r0, #0]
	bl sub_08067C18
	b _080A862C
_080A8608: .4byte 0x000001FD
_080A860C:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0xff
	strb r0, [r1, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #2
	strb r0, [r1, #0]
	ldr r4, _080A8634
	adds r1, r7, r4
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
_080A862C:
	movs r0, #0xe3
	bl sub_0805865C
	b _080A871A
_080A8634: .4byte 0x000001FD
_080A8638:
	movs r0, #2
	str r0, [sp, #0xc8]
	strh r0, [r7, #0xc]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A865A
	movs r0, #1
	mov r3, sl
	strh r0, [r3, #0]
	movs r4, #1
	str r4, [sp, #0xf4]
	movs r0, #6
	str r0, [sp, #0xe4]
	b _080A8666
_080A865A:
	mov r1, sl
	strh r0, [r1, #0]
	movs r2, #2
	str r2, [sp, #0xf4]
	movs r3, #1
	str r3, [sp, #0xe4]
_080A8666:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A871A
	ldr r5, _080A8690
	ldr r0, [r5, #0]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0]
	bl sub_080A987C
	ldr r0, [r5, #0]
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #0]
	subs r4, #2
	adds r1, r7, r4
	movs r0, #4
	b _080A86D8
_080A8690: .4byte gUnk_0300041C
_080A8694:
	movs r1, #2
	str r1, [sp, #0xc8]
	movs r0, #0
	strh r1, [r7, #0xc]
	mov r3, sl
	strh r0, [r3, #0]
	movs r4, #1
	str r4, [sp, #0xf4]
	ldr r1, [sp, #0x100]
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _080A86BA
	ldr r2, [sp, #0x104]
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _080A86BA
	movs r0, #0xe5
	bl sub_0805865C
_080A86BA:
	ldr r3, [sp, #0x100]
	ldrh r0, [r3, #0]
	cmp r0, #0
	beq _080A86C6
	bl sub_080A9100
_080A86C6:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A871A
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #5
_080A86D8:
	strb r0, [r1, #0]
	ldr r0, _080A86E8
	adds r1, r7, r0
_080A86DE:
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080A871A
_080A86E8: .4byte 0x000001FD
_080A86EC:
	movs r1, #0
	str r1, [sp, #0xc8]
	strh r1, [r7, #0xc]
	ldr r0, [sp, #0xe0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe0]
	cmp r0, #0x3d
	bne _080A871A
	movs r3, #0
	str r3, [sp, #0xe0]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #4
	strb r0, [r1, #0]
	ldr r0, _080A8748
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
_080A871A:
	movs r0, #1
	strh r0, [r7, #8]
	ldr r0, _080A874C
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A8750
	ldr r2, _080A8748
	adds r0, r7, r2
	ldrb r0, [r0, #0]
	cmp r0, #7
	beq _080A8750
	bl sub_080A8F90
	bl sub_080A9680
	adds r0, r7, #0
	bl sub_0801A0A4
	b _080A8756
	.2byte 0x0000
_080A8748: .4byte 0x000001FD
_080A874C: .4byte gUnk_0300041C
_080A8750:
	adds r0, r7, #0
	bl sub_0801A0B0
_080A8756:
	ldr r3, [sp, #0xc8]
	cmp r3, #1
	beq _080A8784
	cmp r3, #1
	bgt _080A8766
	cmp r3, #0
	beq _080A876E
	b _080A879E
_080A8766:
	ldr r4, [sp, #0xc8]
	cmp r4, #2
	beq _080A879A
	b _080A879E
_080A876E:
	movs r0, #0
	str r0, [sp, #0xf4]
	add r1, sp, #0xc8
	ldrh r2, [r1, #0]
	mov r1, sl
	strh r2, [r1, #0]
	movs r2, #1
	str r2, [sp, #0xd4]
	movs r3, #2
	str r3, [sp, #0xe4]
	b _080A879E
_080A8784:
	movs r4, #0
	str r4, [sp, #0xf4]
	add r0, sp, #0xc8
	ldrh r1, [r0, #0]
	mov r0, sl
	strh r1, [r0, #0]
	movs r1, #1
	str r1, [sp, #0xd4]
	movs r2, #2
	str r2, [sp, #0xe4]
	b _080A879E
_080A879A:
	movs r3, #0
	str r3, [sp, #0xd4]
_080A879E:
	movs r0, #0x34
	ldr r4, [sp, #0xf4]
	muls r0, r4, r0
	mov r6, sp
	adds r6, r6, r0
	adds r6, #0x10
	ldr r0, _080A8804
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r1, [sp, #0xd0]
	ldrh r3, [r0, #0]
	cmp r1, r3
	bne _080A87C2
	ldr r4, [sp, #0xcc]
	ldr r1, [sp, #0xc8]
	cmp r4, r1
	beq _080A87D6
_080A87C2:
	ldrh r0, [r0, #0]
	str r0, [sp, #0xd0]
	ldr r3, [sp, #0xc8]
	str r3, [sp, #0xcc]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_080A87D6:
	ldr r1, _080A8808
	ldrh r0, [r1, #0]
	strb r0, [r6, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r4, [sp, #0x108]
	ldrh r2, [r4, #0]
	lsls r2, r2, #5
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A880C
	bl sub_08097FF8
	b _080A881A
	.2byte 0x0000
_080A8804: .4byte gUnk_0300041C
_080A8808: .4byte gUnk_03000420
_080A880C:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080A881A:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A8840
	mov r0, sl
	ldrh r1, [r0, #0]
	ldr r2, [sp, #0xd4]
	str r2, [sp, #0]
	adds r0, r6, #0
	ldr r2, [sp, #0x100]
	ldr r3, [sp, #0x104]
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_080A8840:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0xac
	mov r5, sp
	adds r5, #0xae
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	mov r8, r4
	ldr r3, [sp, #0xd8]
	cmp r3, #0
	beq _080A88BA
	adds r0, r3, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xd8]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A88FA
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A88FA
	bl sub_0800CC98
	cmp r0, #0
	bne _080A88FA
	bl sub_0800CD34
	cmp r0, #0
	bne _080A88FA
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sl
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x100]
	ldrh r3, [r4, #0]
	mov r4, r9
	str r4, [sp, #0]
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080A88FA
_080A88BA:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A88FA
	bl sub_0800CC98
	cmp r0, #0
	bne _080A88FA
	bl sub_0800CD34
	cmp r0, #0
	bne _080A88FA
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r4, sl
	ldrh r2, [r4, #0]
	ldr r4, [sp, #0x100]
	ldrh r3, [r4, #0]
	mov r4, r9
	str r4, [sp, #0]
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A88FA:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A8962
	bl sub_0800CC98
	cmp r0, #0
	bne _080A8962
	bl sub_0800CD34
	cmp r0, #0
	bne _080A8962
	ldr r1, _080A89C8
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	cmp r0, #7
	beq _080A8962
	ldr r0, [sp, #0xec]
	subs r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xec]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A8962
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r4, r9
	str r4, [sp, #0]
	adds r1, r6, #0
	adds r1, #0x1c
	str r1, [sp, #4]
	ldr r1, [r6, #8]
	str r1, [sp, #8]
	ldr r1, [r6, #0]
	str r1, [sp, #0xc]
	movs r1, #8
	ldr r2, [sp, #0xe4]
	movs r3, #0
	bl sub_08007870
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r1, #4
	str r1, [r0, #8]
	movs r4, #0
	ldrsh r1, [r5, r4]
	adds r1, #6
	str r1, [r0, #0xc]
_080A8962:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _080A8978
	ldr r1, [sp, #0xc4]
	cmp r1, r0
	beq _080A8978
	str r0, [sp, #0xc4]
	movs r2, #0xa
	str r2, [sp, #0xdc]
	movs r3, #0
	str r3, [sp, #0xe8]
_080A8978:
	ldr r4, [sp, #0xdc]
	cmp r4, #0
	beq _080A89D0
	bl sub_0800CC98
	cmp r0, #0
	bne _080A89A4
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A89A4
	bl sub_0800CD34
	cmp r0, #0
	bne _080A89A4
	ldr r0, [sp, #0xe8]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xc4]
	bl sub_0801A120
_080A89A4:
	movs r0, #2
	ldr r1, [sp, #0xdc]
	ands r0, r1
	cmp r0, #0
	beq _080A89BA
	ldr r2, [sp, #0xe8]
	lsls r0, r2, #0x10
	ldr r3, _080A89CC
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe8]
_080A89BA:
	ldr r0, [sp, #0xdc]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xdc]
	b _080A89D8
	.2byte 0x0000
_080A89C8: .4byte 0x000001FD
_080A89CC: .4byte 0xFFFF0000
_080A89D0:
	movs r4, #0
	str r4, [sp, #0xc4]
	ldr r0, [sp, #0xdc]
	str r0, [r7, #0x4c]
_080A89D8:
	adds r0, r7, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080A89E8
	movs r1, #1
	str r1, [sp, #0xfc]
_080A89E8:
	bl sub_080003F0
	ldr r2, [sp, #0xfc]
	cmp r2, #0
	bne _080A8A04
_080A89F2:
	bl sub_0800CB78
	cmp r0, #0
	bne _080A8A04
	bl sub_08056E90
	cmp r0, #0
	bne _080A8A04
	b _080A83A6
_080A8A04:
	ldr r0, _080A8B70
	movs r4, #0
	str r4, [r0, #0]
	bl sub_080020F4
	ldr r1, _080A8B74
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_080A9844
	add r6, sp, #0x10
	ldr r0, _080A8B78
	ldrh r0, [r0, #0]
	strb r0, [r6, #0x1c]
	ldr r1, _080A8B7C
	ldr r2, [r1, #0]
	adds r0, r2, #0
	adds r0, #0x6c
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	movs r3, #0
	str r3, [sp, #0xe8]
	movs r4, #0xa
	str r4, [sp, #0xdc]
	mov sl, r1
_080A8A4A:
	bl sub_080020F4
	ldr r2, _080A8B74
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
	bne _080A8B24
	bl sub_0800CC98
	cmp r0, #0
	bne _080A8B24
	bl sub_0800CD34
	mov r8, r0
	cmp r0, #0
	bne _080A8B24
	ldr r0, _080A8B78
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x108]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r1, [r6, #0xc]
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
	mov r9, r0
	ldr r3, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r6, #0
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
	add r4, sp, #0xac
	mov r5, sp
	adds r5, #0xae
	mov r2, r8
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r2, sl
	ldr r3, [r2, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r9
	str r4, [sp, #0]
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, [sp, #0xe8]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xc4]
	bl sub_0801A120
_080A8B24:
	movs r0, #2
	ldr r1, [sp, #0xdc]
	ands r0, r1
	cmp r0, #0
	beq _080A8B3A
	ldr r2, [sp, #0xe8]
	lsls r0, r2, #0x10
	ldr r3, _080A8B80
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe8]
_080A8B3A:
	bl sub_080003F0
	ldr r0, [sp, #0xdc]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xdc]
	ldr r0, _080A8B84
	ldr r4, [sp, #0xdc]
	cmp r4, r0
	beq _080A8B52
	b _080A8A4A
_080A8B52:
	bl sub_080683CC
	ldr r4, _080A8B7C
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r0, _080A8B88
	bl sub_08068330
	adds r7, r4, #0
	add r0, sp, #0xac
	mov r8, r0
	b _080A8C5C
	.2byte 0x0000
_080A8B70: .4byte gUnk_030056FC
_080A8B74: .4byte gUnk_03003CE0
_080A8B78: .4byte gUnk_03000420
_080A8B7C: .4byte gUnk_0300041C
_080A8B80: .4byte 0xFFFF0000
_080A8B84: .4byte 0x0000FFFF
_080A8B88: .4byte 0xDEADFACE
_080A8B8C:
	bl sub_080020F4
	ldr r2, _080A8C74
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
	bne _080A8C58
	bl sub_0800CC98
	cmp r0, #0
	bne _080A8C58
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A8C58
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080A8C58
	ldr r0, _080A8C78
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x108]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r3, [r7, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	adds r0, r6, #0
	bl sub_08065370
	ldr r1, [r7, #0]
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
	adds r4, #0xae
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r9
	str r4, [sp, #0]
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A8C58:
	bl sub_080003F0
_080A8C5C:
	ldr r0, _080A8C7C
	bl sub_080682B8
	cmp r0, #0
	beq _080A8B8C
	ldr r0, _080A8C7C
	bl sub_08065E38
	ldr r7, _080A8C80
	add r0, sp, #0xac
	mov r8, r0
	b _080A8D54
_080A8C74: .4byte gUnk_03003CE0
_080A8C78: .4byte gUnk_03000420
_080A8C7C: .4byte 0xDEADFACE
_080A8C80: .4byte gUnk_0300041C
_080A8C84:
	bl sub_080020F4
	ldr r2, _080A8DA4
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
	bne _080A8D50
	bl sub_0800CC98
	cmp r0, #0
	bne _080A8D50
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A8D50
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080A8D50
	ldr r0, _080A8DA8
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x108]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r3, [r7, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	adds r0, r6, #0
	bl sub_08065370
	ldr r1, [r7, #0]
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
	adds r4, #0xae
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r9
	str r4, [sp, #0]
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A8D50:
	bl sub_080003F0
_080A8D54:
	bl sub_08058DB0
	cmp r0, #0
	bne _080A8C84
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _080A8DA4
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
	ldr r0, _080A8DAC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080A8DB0
	ldr r1, [r1, #0]
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r1, r1, r2
	str r0, [r1, #0]
	ldr r7, _080A8DB4
	add r3, sp, #0xac
	mov r8, r3
	b _080A8E88
	.2byte 0x0000
_080A8DA4: .4byte gUnk_03003CE0
_080A8DA8: .4byte gUnk_03000420
_080A8DAC: .4byte 0x00140090
_080A8DB0: .4byte gUnk_03005CF4
_080A8DB4: .4byte gUnk_0300041C
_080A8DB8:
	bl sub_080020F4
	ldr r2, _080A8F54
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
	bne _080A8E84
	bl sub_0800CC98
	cmp r0, #0
	bne _080A8E84
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A8E84
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080A8E84
	ldr r0, _080A8F58
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x108]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r3, [r7, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	adds r0, r6, #0
	bl sub_08065370
	ldr r1, [r7, #0]
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
	adds r4, #0xae
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r9
	str r4, [sp, #0]
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A8E84:
	bl sub_080003F0
_080A8E88:
	ldr r0, _080A8F5C
	ldr r0, [r0, #0]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	beq _080A8DB8
	bl sub_080020F4
	ldr r4, _080A8F54
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
	ldr r7, _080A8F60
	ldr r0, [r7, #0]
	ldr r3, [sp, #0x108]
	ldrh r2, [r3, #0]
	ldr r1, _080A8F58
	ldrh r3, [r1, #0]
	adds r1, r6, #0
	bl sub_080970CC
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080A8F32
	ldr r0, [r7, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A8F32
	ldr r0, _080A8F64
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xb8]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r0, #0x1d
	str r0, [sp, #0xe8]
	movs r5, #1
	negs r5, r5
_080A8F02:
	ldr r0, _080A8F60
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0xe8]
	lsls r0, r1, #0x10
	ldr r2, _080A8F68
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0xe8]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080A8F02
	ldr r0, _080A8F64
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080A8F32:
	movs r4, #0x6f
	str r4, [sp, #0xe8]
	subs r4, #0x70
_080A8F38:
	bl sub_080003F0
	ldr r1, [sp, #0xe8]
	lsls r0, r1, #0x10
	ldr r2, _080A8F68
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0xe8]
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _080A8F38
	bl sub_08067C18
	b _080A8F70
_080A8F54: .4byte gUnk_03003CE0
_080A8F58: .4byte gUnk_03000420
_080A8F5C: .4byte gUnk_03005CF4
_080A8F60: .4byte gUnk_0300041C
_080A8F64: .4byte gUnk_030034E0
_080A8F68: .4byte 0xFFFF0000
_080A8F6C:
	bl sub_080003F0
_080A8F70:
	bl sub_08067C08
	cmp r0, #0
	beq _080A8F6C
	bl sub_08067BF8
	bl sub_08056E24
_080A8F80:
	add sp, #0x10c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080A8164
