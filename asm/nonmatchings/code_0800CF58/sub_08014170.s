	thumb_func_start sub_08014170
sub_08014170: @ 0x08014170
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xfc
	mov r8, r0
	ldr r1, _08014210
	movs r5, #0x80
	lsls r5, r5, #0x18
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #8
	movs r2, #0
	adds r3, r5, #0
	bl sub_08065158
	add r6, sp, #0x3c
	ldr r1, _08014214
	str r4, [sp, #0]
	adds r0, r6, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_08065158
	ldr r0, _08014218
	bl sub_08007290
	str r0, [sp, #0xb4]
	ldr r0, _0801421C
	ldr r0, [r0, #0]
	ldr r1, _08014220
	adds r0, r0, r1
	bl sub_08007290
	adds r4, r0, #0
	bl sub_080653CC
	movs r0, #0xa0
	bl sub_08001494
	str r0, [sp, #0xa8]
	movs r0, #0xa0
	bl sub_08001494
	str r0, [sp, #0xac]
	movs r0, #0x60
	bl sub_08001494
	str r0, [sp, #0xb0]
	adds r0, r4, #0
	adds r0, #0x60
	ldr r1, [sp, #0xa8]
	movs r2, #0x28
	bl CpuFastSet
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r1, [sp, #0xac]
	movs r2, #0x28
	bl CpuFastSet
	movs r3, #0x98
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r1, [sp, #0xb0]
	movs r2, #0x18
	bl CpuFastSet
	movs r4, #0
	str r4, [sp, #0xbc]
	ldr r0, _08014224
	str r0, [sp, #0xc4]
	str r0, [sp, #0xc0]
	str r0, [sp, #0xd0]
	str r0, [sp, #0xcc]
	bl _08014AF0
	.2byte 0x0000
_08014210: .4byte 0x00050061
_08014214: .4byte 0x00050060
_08014218: .4byte 0x40000002
_0801421C: .4byte gUnk_03003470
_08014220: .4byte 0x10010003
_08014224: .4byte 0x0000FFFF
_08014228:
	mov r1, r8
	adds r1, #0xc4
	str r1, [sp, #0xe4]
	mov r2, r8
	adds r2, #0x62
	str r2, [sp, #0xf8]
	mov r3, r8
	adds r3, #0xc2
	str r3, [sp, #0xe0]
	mov r4, r8
	adds r4, #0x60
	str r4, [sp, #0xf4]
	mov r6, r8
	adds r6, #0xc6
	str r6, [sp, #0xe8]
	ldr r0, [sp, #0xc8]
	lsls r0, r0, #0x10
	str r0, [sp, #0xec]
	ldr r1, [sp, #0xd4]
	lsls r1, r1, #0x10
	str r1, [sp, #0xf0]
	adds r2, #0x17
	str r2, [sp, #0xd8]
	mov r3, sp
	adds r3, #0xa4
	str r3, [sp, #0xdc]
	b _0801426C
_0801425E:
	ldr r4, _08014290
	str r4, [sp, #0xc4]
	str r4, [sp, #0xc0]
	str r4, [sp, #0xd0]
	str r4, [sp, #0xcc]
	bl sub_080003F0
_0801426C:
	bl sub_0800CD8C
	cmp r0, #0
	bne _0801427C
	bl sub_0800CFB8
	cmp r0, #0
	beq _080142AA
_0801427C:
	bl sub_0800CB78
	cmp r0, #0
	bne _080142AA
	bl sub_0800CD00
	cmp r0, #0
	beq _0801425E
	b _080142AA
	.2byte 0x0000
_08014290: .4byte 0x0000FFFF
_08014294:
	ldr r6, _0801434C
	str r6, [sp, #0xc4]
	str r6, [sp, #0xc0]
	str r6, [sp, #0xd0]
	str r6, [sp, #0xcc]
	movs r0, #0
	movs r1, #2
	bl sub_0801A664
	bl sub_080003F0
_080142AA:
	bl sub_0800CD34
	cmp r0, #0
	bne _08014294
	bl sub_0800CDF8
	cmp r0, #0
	bne _08014294
	ldr r1, [sp, #0xc0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0xe4]
	movs r4, #0
	ldrsh r2, [r3, r4]
	eors r0, r2
	negs r1, r0
	orrs r1, r0
	lsrs r5, r1, #0x1f
	ldr r6, [sp, #0xcc]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xf8]
	ldrh r3, [r1, #0]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	beq _080142E2
	movs r5, #1
_080142E2:
	ldr r6, [sp, #0xc4]
	lsls r6, r6, #0x10
	mov r9, r6
	ldr r0, [sp, #0xd0]
	lsls r0, r0, #0x10
	mov sl, r0
	cmp r5, #0
	bne _080142F4
	b _08014476
_080142F4:
	cmp r2, r1
	ble _08014300
	ldr r1, [sp, #0xe4]
	strh r3, [r1, #0]
	ldrh r2, [r1, #0]
	str r2, [sp, #0xc0]
_08014300:
	ldr r3, [sp, #0xc0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0xf8]
	movs r6, #0
	ldrsh r1, [r4, r6]
	ldrh r2, [r4, #0]
	cmp r0, r1
	ble _08014314
	str r2, [sp, #0xc0]
_08014314:
	str r2, [sp, #0xcc]
	ldr r1, [sp, #0xc0]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _08014374
	ldr r3, [sp, #0xe4]
	ldrh r2, [r3, #0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bge _08014350
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x10
	asrs r3, r2, #0x10
	cmp r3, #1
	ble _08014342
	lsrs r0, r2, #0x1f
	adds r0, r3, r0
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
_08014342:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _0801436C
	.2byte 0x0000
_0801434C: .4byte 0x0000FFFF
_08014350:
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x10
	asrs r3, r2, #0x10
	cmp r3, #1
	ble _08014366
	lsrs r0, r2, #0x1f
	adds r0, r3, r0
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
_08014366:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
_0801436C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc0]
	b _0801437A
_08014374:
	ldr r6, [sp, #0xe4]
	ldrh r6, [r6, #0]
	str r6, [sp, #0xc0]
_0801437A:
	ldr r0, [sp, #0xe4]
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r2, [sp, #0xc0]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r3, [sp, #0xf8]
	movs r6, #0
	ldrsh r1, [r3, r6]
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r4, #0
	ble _080143A4
	cmp r3, #0
	bne _080143A4
	movs r3, #1
_080143A4:
	movs r5, #0
	lsrs r0, r3, #3
	ldr r1, [sp, #0xc4]
	lsls r1, r1, #0x10
	mov r9, r1
	ldr r2, [sp, #0xd0]
	lsls r2, r2, #0x10
	mov sl, r2
	cmp r5, r0
	bhs _080143D4
	ldr r1, _08014640
	adds r2, r0, #0
_080143BC:
	lsls r0, r5, #5
	ldr r4, [sp, #0xa8]
	adds r0, r0, r4
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r2
	blo _080143BC
_080143D4:
	movs r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0801444E
	add r4, sp, #0x78
	str r0, [r4, #8]
	movs r0, #4
	str r0, [r4, #4]
	add r2, sp, #0x84
	ldr r0, _08014644
	str r0, [r2, #4]
	movs r1, #0
	str r1, [sp, #0x78]
	str r1, [sp, #0x84]
	add r0, sp, #0x90
	str r1, [r0, #0]
	movs r6, #0
	ldr r0, [r4, #8]
	lsls r7, r5, #5
	adds r5, #1
	adds r1, r2, #0
	cmp r6, r0
	bhs _08014426
	mov ip, r1
_08014404:
	adds r3, r4, #0
	lsls r2, r6, #2
	ldr r1, [r4, #4]
	lsls r1, r2
	ldr r0, [sp, #0x78]
	orrs r0, r1
	str r0, [sp, #0x78]
	mov r1, ip
	ldr r0, [r1, #4]
	lsls r0, r2
	str r0, [sp, #0x84]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [r3, #8]
	cmp r6, r0
	blo _08014404
_08014426:
	ldr r3, [sp, #0xa8]
	adds r2, r7, r3
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #0x14]
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_0801444E:
	cmp r5, #4
	bhi _0801446C
	ldr r1, _08014648
_08014454:
	lsls r0, r5, #5
	ldr r4, [sp, #0xa8]
	adds r0, r0, r4
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08014454
_0801446C:
	ldr r1, _0801464C
	ldr r0, [sp, #0xa8]
	movs r2, #0xa0
	bl sub_08001348
_08014476:
	mov r6, r9
	asrs r0, r6, #0x10
	ldr r1, [sp, #0xe0]
	movs r3, #0
	ldrsh r2, [r1, r3]
	eors r0, r2
	negs r1, r0
	orrs r1, r0
	lsrs r5, r1, #0x1f
	mov r4, sl
	asrs r0, r4, #0x10
	ldr r6, [sp, #0xf4]
	ldrh r3, [r6, #0]
	movs r4, #0
	ldrsh r1, [r6, r4]
	cmp r0, r1
	beq _0801449A
	movs r5, #1
_0801449A:
	cmp r5, #0
	beq _0801459C
	cmp r2, r1
	ble _080144A6
	ldr r6, [sp, #0xe0]
	strh r3, [r6, #0]
_080144A6:
	ldr r1, [sp, #0xe0]
	ldrh r0, [r1, #0]
	str r0, [sp, #0xc4]
	ldr r2, [sp, #0xf4]
	ldrh r2, [r2, #0]
	str r2, [sp, #0xd0]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r3, [sp, #0xc4]
	cmp r4, #0
	bgt _080144BE
	movs r3, #0
_080144BE:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r3, [sp, #0xf4]
	movs r6, #0
	ldrsh r1, [r3, r6]
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r4, #0
	ble _080144DC
	cmp r3, #0
	bne _080144DC
	movs r3, #1
_080144DC:
	movs r5, #0
	lsrs r0, r3, #3
	cmp r5, r0
	bhs _08014500
	ldr r1, _08014650
	adds r2, r0, #0
_080144E8:
	lsls r0, r5, #5
	ldr r4, [sp, #0xac]
	adds r0, r0, r4
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r2
	blo _080144E8
_08014500:
	movs r0, #7
	ands r0, r3
	cmp r0, #0
	beq _08014574
	add r4, sp, #0x78
	str r0, [r4, #8]
	movs r0, #0xa
	str r0, [r4, #4]
	add r1, sp, #0x84
	ldr r0, _08014644
	str r0, [r1, #4]
	movs r0, #0
	str r0, [sp, #0x78]
	str r0, [sp, #0x84]
	movs r6, #0
	ldr r0, [r4, #8]
	lsls r7, r5, #5
	adds r5, #1
	cmp r6, r0
	bhs _0801454C
	mov ip, r1
_0801452A:
	adds r3, r4, #0
	lsls r2, r6, #2
	ldr r1, [r4, #4]
	lsls r1, r2
	ldr r0, [sp, #0x78]
	orrs r0, r1
	str r0, [sp, #0x78]
	mov r1, ip
	ldr r0, [r1, #4]
	lsls r0, r2
	str r0, [sp, #0x84]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [r3, #8]
	cmp r6, r0
	blo _0801452A
_0801454C:
	ldr r3, [sp, #0xac]
	adds r2, r7, r3
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #0x14]
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_08014574:
	cmp r5, #4
	bhi _08014592
	ldr r1, _08014648
_0801457A:
	lsls r0, r5, #5
	ldr r4, [sp, #0xac]
	adds r0, r0, r4
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0801457A
_08014592:
	ldr r1, _08014654
	ldr r0, [sp, #0xac]
	movs r2, #0xa0
	bl sub_08001348
_0801459C:
	ldr r6, [sp, #0xec]
	asrs r1, r6, #0x10
	ldr r2, [sp, #0xe8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r5, r0, #0x1f
	ldr r0, _08014658
	ldr r0, [r0, #0]
	movs r4, #0x99
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r6, r0, #0
	ldr r0, [sp, #0xf0]
	asrs r2, r0, #0x10
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r3, [sp, #0xd8]
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, [r0, #0]
	adds r1, r0, r1
	cmp r2, r1
	beq _080145DE
	movs r5, #1
_080145DE:
	ldr r4, [sp, #0xe8]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, r1
	blo _0801466C
	ldr r1, [sp, #0xb8]
	subs r1, #8
	lsls r1, r1, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
	lsls r0, r0, #4
	ldr r3, [sp, #0xb8]
	subs r0, r0, r3
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r3, #0x1f
	ands r0, r3
	movs r1, #0x20
	negs r1, r1
	ldr r4, [sp, #0xdc]
	ldr r2, [r4, #0]
	ands r2, r1
	add r4, sp, #0xa4
	orrs r2, r0
	ldr r1, [sp, #0xb8]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ands r0, r3
	lsls r0, r0, #5
	ldr r1, _0801465C
	ands r2, r1
	orrs r2, r0
	ldr r0, _08014660
	ands r2, r0
	str r2, [r4, #0]
	ldr r0, _08014664
	ldrh r1, [r4, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r1, [r0, #0]
	bl sub_08000B38
	b _080146AE
_08014640: .4byte 0x44444444
_08014644: .4byte 0x33333330
_08014648: .4byte 0x33333333
_0801464C: .4byte 0x06008060
_08014650: .4byte 0xAAAAAAAA
_08014654: .4byte 0x06008160
_08014658: .4byte gUnk_030034E0
_0801465C: .4byte 0xFFFFFC1F
_08014660: .4byte 0xFFFF83FF
_08014664: .4byte gUnk_03001F40
_08014668:
	adds r0, r4, #0
	b _08014862
_0801466C:
	ldr r3, [sp, #0xdc]
	ldrb r0, [r3, #0]
	movs r1, #0x20
	negs r1, r1
	ands r1, r0
	movs r0, #0xf
	orrs r1, r0
	ldr r2, _08014870
	add r3, sp, #0xa4
	ldr r0, [r3, #0]
	ands r0, r2
	orrs r0, r1
	str r0, [r3, #0]
	ldrh r1, [r3, #0]
	movs r4, #0xf8
	lsls r4, r4, #2
	adds r2, r4, #0
	orrs r2, r1
	ldr r1, _08014874
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #0]
	ldrb r1, [r3, #1]
	movs r0, #0x7d
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #1]
	ldr r0, _08014878
	ldrh r1, [r3, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r1, [r0, #0]
_080146AE:
	cmp r5, #0
	bne _080146B4
	b _080147C2
_080146B4:
	ldr r4, [sp, #0xe8]
	movs r0, #0
	ldrsh r3, [r4, r0]
	adds r2, r6, #0
	adds r2, #0xa0
	ldr r4, [sp, #0xd8]
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r2, #0]
	adds r0, r0, r1
	cmp r3, r0
	bls _080146D0
	ldr r6, [sp, #0xe8]
	strh r0, [r6, #0]
_080146D0:
	ldr r1, [sp, #0xe8]
	ldrh r0, [r1, #0]
	str r0, [sp, #0xc8]
	ldr r1, [r2, #0]
	ldr r2, [sp, #0xd8]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	ldr r3, [sp, #0xc8]
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bgt _080146F2
	movs r3, #0
_080146F2:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r4, #0
	ble _0801470A
	cmp r3, #0
	bne _0801470A
	movs r3, #1
_0801470A:
	movs r5, #0
	lsrs r0, r3, #3
	cmp r5, r0
	bhs _08014730
	movs r1, #1
	negs r1, r1
	adds r2, r0, #0
_08014718:
	lsls r0, r5, #5
	ldr r4, [sp, #0xb0]
	adds r0, r0, r4
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r2
	blo _08014718
_08014730:
	movs r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080147A4
	add r4, sp, #0x78
	str r0, [r4, #8]
	movs r0, #0xf
	str r0, [r4, #4]
	add r1, sp, #0x84
	ldr r0, _0801487C
	str r0, [r1, #4]
	movs r0, #0
	str r0, [sp, #0x78]
	str r0, [sp, #0x84]
	movs r6, #0
	ldr r0, [r4, #8]
	lsls r7, r5, #5
	adds r5, #1
	cmp r6, r0
	bhs _0801477C
	mov ip, r1
_0801475A:
	adds r3, r4, #0
	lsls r2, r6, #2
	ldr r1, [r4, #4]
	lsls r1, r2
	ldr r0, [sp, #0x78]
	orrs r0, r1
	str r0, [sp, #0x78]
	mov r1, ip
	ldr r0, [r1, #4]
	lsls r0, r2
	str r0, [sp, #0x84]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [r3, #8]
	cmp r6, r0
	blo _0801475A
_0801477C:
	ldr r3, [sp, #0xb0]
	adds r2, r7, r3
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #0xc]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x84]
	orrs r0, r1
	str r0, [r2, #0x14]
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080147A4:
	cmp r5, #2
	bhi _080147C2
	ldr r1, _08014880
_080147AA:
	lsls r0, r5, #5
	ldr r4, [sp, #0xb0]
	adds r0, r0, r4
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #2
	bls _080147AA
_080147C2:
	ldr r1, _08014884
	ldr r0, [sp, #0xb0]
	movs r2, #0x60
	bl sub_08001348
	bl sub_0800CC98
	adds r3, r0, #0
	cmp r3, #0
	beq _080147D8
	b _08014A08
_080147D8:
	mov r6, r8
	ldrh r1, [r6, #0x20]
	subs r0, r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080147E8
	b _08014936
_080147E8:
	mov r0, r8
	adds r0, #0x8c
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r1, r8
	adds r1, #0x90
	ldr r1, [r1, #0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x9c
	mov r5, sp
	adds r5, #0x9e
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldrh r0, [r6, #0x10]
	mov r9, r4
	mov sl, r5
	cmp r0, #9
	beq _08014892
	bl sub_0801D34C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, r8
	adds r0, #0x6c
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r4, #7
	ldr r0, _08014888
	lsls r6, r1, #1
	adds r3, r0, #0
	adds r3, #0xe
	ldr r7, [sp, #0xe0]
_0801483C:
	ldrh r0, [r3, #0]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0801484A
	movs r2, #0
_0801484A:
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08014858
	b _08014668
_08014858:
	subs r3, #2
	subs r4, #1
	cmp r4, #0
	bge _0801483C
	movs r0, #0
_08014862:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r5, r6
	bls _0801488C
	mov r1, r8
	ldrh r0, [r1, #0x26]
	b _080148B0
_08014870: .4byte 0xFFFFFF00
_08014874: .4byte 0xFFFF0000
_08014878: .4byte gUnk_03001F40
_0801487C: .4byte 0x33333330
_08014880: .4byte 0x33333333
_08014884: .4byte 0x06008260
_08014888: .4byte gUnk_0847ACE8
_0801488C:
	mov r2, r8
	ldrh r0, [r2, #0x26]
	b _080148B2
_08014892:
	bl sub_0801D34C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_0801DEB8
	bl sub_08079FD0
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r5, r6
	bls _080148BA
	mov r3, r8
	ldrh r0, [r3, #0x26]
_080148B0:
	adds r5, r6, #0
_080148B2:
	adds r1, r0, #0
	cmp r5, r1
	bls _080148C6
	b _0801490E
_080148BA:
	mov r4, r8
	ldrh r0, [r4, #0x26]
	adds r1, r0, #0
	cmp r5, r1
	bls _080148C6
	movs r5, #0
_080148C6:
	cmp r5, #0
	beq _0801490E
	cmp r1, #0xf
	bls _080148D0
	b _08014A08
_080148D0:
	mov r6, r8
	ldrh r0, [r6, #0x20]
	cmp r0, #5
	bne _080148DA
	b _08014A08
_080148DA:
	adds r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0xa0
	mov r3, sp
	adds r3, #0xa2
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #8
	adds r2, r4, #0
	bl sub_08065370
	mov r0, r9
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, sl
	movs r6, #0
	ldrsh r2, [r3, r6]
	subs r2, #0x20
	mov r0, r8
	ldrh r3, [r0, #0x26]
	adds r3, #6
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldrh r0, [r4, #0]
	b _0801492C
_0801490E:
	mov r1, r8
	ldrh r0, [r1, #0x20]
	cmp r0, #5
	beq _08014A08
	mov r2, r9
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, sl
	movs r6, #0
	ldrsh r2, [r4, r6]
	subs r2, #0x20
	mov r0, r8
	ldrh r3, [r0, #0x26]
	ldrh r0, [r0, #0x24]
	lsrs r0, r0, #1
_0801492C:
	str r0, [sp, #0]
	add r0, sp, #8
	bl sub_08065230
	b _08014A08
_08014936:
	subs r0, r1, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08014A08
	mov r0, r8
	adds r0, #0x8c
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r1, r8
	adds r1, #0x90
	ldr r1, [r1, #0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x9c
	mov r6, sp
	adds r6, #0x9e
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	mov r0, r8
	adds r0, #0x67
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080149B0
	mov r1, r8
	ldrh r0, [r1, #0x26]
	lsls r4, r0, #0x10
	lsrs r0, r4, #0x10
	cmp r0, #0x10
	bls _08014998
	add r4, sp, #0xa0
	mov r3, sp
	adds r3, #0xa2
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x3c
	movs r1, #7
	adds r2, r4, #0
	bl sub_08065370
	movs r2, #0
	ldrsh r1, [r5, r2]
	b _080149D6
_08014998:
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r3, #0
	ldrsh r2, [r6, r3]
	subs r2, #0x20
	lsrs r0, r4, #0x11
	str r0, [sp, #0]
	add r0, sp, #0x3c
	movs r3, #0
	bl sub_08065230
	b _08014A08
_080149B0:
	mov r4, r8
	ldrh r0, [r4, #0x26]
	cmp r0, #7
	bls _080149EA
	ldrh r0, [r4, #0x20]
	cmp r0, #8
	beq _08014A08
	add r4, sp, #0xa0
	mov r3, sp
	adds r3, #0xa2
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x3c
	movs r1, #7
	adds r2, r4, #0
	bl sub_08065370
	movs r0, #0
	ldrsh r1, [r5, r0]
_080149D6:
	movs r3, #0
	ldrsh r2, [r6, r3]
	subs r2, #0x20
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	add r0, sp, #0x3c
	movs r3, #7
	bl sub_08065230
	b _08014A08
_080149EA:
	mov r4, r8
	ldrh r0, [r4, #0x20]
	cmp r0, #8
	beq _08014A08
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r3, #0
	ldrsh r2, [r6, r3]
	subs r2, #0x20
	ldrh r0, [r4, #0x26]
	str r0, [sp, #0]
	add r0, sp, #0x3c
	movs r3, #0
	bl sub_08065230
_08014A08:
	mov r4, r8
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014AEC
	ldr r0, [sp, #0xb4]
	adds r0, #4
	ldr r4, _08014A50
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuFastSet
	bl sub_0800CC98
	cmp r0, #0
	bne _08014A76
	mov r6, r8
	ldr r0, [r6, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08014A58
	ldr r0, [sp, #0xbc]
	cmp r0, #0x27
	bhi _08014A58
	ldr r0, _08014A54
	strh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x30]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x34]
	b _08014A64
	.2byte 0x0000
_08014A50: .4byte gUnk_03005740
_08014A54: .4byte 0x0000F017
_08014A58:
	ldr r1, _08014ADC
	movs r0, #0
	strh r0, [r1, #0x34]
	strh r0, [r1, #0x32]
	strh r0, [r1, #0x30]
	strh r0, [r1, #0x2e]
_08014A64:
	ldr r0, [sp, #0xbc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xbc]
	cmp r0, #0x3c
	bls _08014A76
	movs r1, #0
	str r1, [sp, #0xbc]
_08014A76:
	movs r0, #0
	movs r1, #2
	bl sub_0801A664
	ldr r3, [sp, #0xf8]
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r0, #6
	movs r1, #1
	movs r3, #0
	bl sub_0805FB7C
	ldr r6, [sp, #0xe4]
	movs r0, #0
	ldrsh r2, [r6, r0]
	movs r0, #2
	movs r1, #1
	movs r3, #0
	bl sub_0805FB7C
	ldr r1, [sp, #0xf4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xe
	movs r1, #1
	movs r3, #0
	bl sub_0805FB7C
	ldr r3, [sp, #0xe0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	beq _08014AE0
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xa
	movs r1, #1
	movs r3, #0
	bl sub_0805FB7C
	b _08014AEC
_08014ADC: .4byte gUnk_03005740
_08014AE0:
	movs r0, #0xa
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0805FB7C
_08014AEC:
	bl sub_080003F0
_08014AF0:
	bl sub_0800CB78
	cmp r0, #0
	bne _08014B04
	bl sub_0800CD00
	cmp r0, #0
	bne _08014B04
	bl _08014228
_08014B04:
	ldr r0, [sp, #0xa8]
	bl sub_08001538
	ldr r0, [sp, #0xac]
	bl sub_08001538
	ldr r0, [sp, #0xb0]
	bl sub_08001538
	add sp, #0xfc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08014170
